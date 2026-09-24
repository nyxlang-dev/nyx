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
@.str48 = private unnamed_addr constant [17 x i8] c"nyx_rt_auto() {\0a\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [41 x i8] c"  [ -n \22$NYX_NO_RT_CACHE\22 ] && return 1\0a\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [24 x i8] c"  local fl=\22$1\22; shift\0a\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [92 x i8] c"  local base=\22$XDG_CACHE_HOME\22; [ -n \22$base\22 ] || base=\22$HOME/.cache\22; base=\22$base/nyx/rt\22\0a\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [177 x i8] c"  local key; key=$( { printf '%s\5cn' \22$fl\22 \22$*\22; clang --version 2>/dev/null | head -1; cat \22$@\22 runtime/*.h runtime/os/*.h 2>/dev/null; } | sha256sum | cut -c1-16) || return 1\0a\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [35 x i8] c"  local a=\22$base/$key/libnyxrt.a\22\0a\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [83 x i8] c"  if [ -f \22$a\22 ]; then touch \22$base/$key\22 2>/dev/null; RT_AUTO=\22$a\22; return 0; fi\0a\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [49 x i8] c"  mkdir -p \22$base/$key\22 2>/dev/null || return 1\0a\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [89 x i8] c"  find \22$base\22 -mindepth 1 -maxdepth 1 -type d -mtime +14 -exec rm -rf {} + 2>/dev/null\0a\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [68 x i8] c"  local tmp; tmp=$(mktemp -d \22$base/$key/.tmp.XXXXXX\22) || return 1\0a\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [15 x i8] c"  local f n=0\0a\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [114 x i8] c"  for f in \22$@\22; do n=$((n+1)); clang $fl -Wno-deprecated-declarations -c \22$f\22 -o \22$tmp/$n.o\22 2>/dev/null & done\0a\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [8 x i8] c"  wait\0a\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [138 x i8] c"  if [ \22$(ls \22$tmp\22 | grep -c '\5c.o$')\22 = \22$n\22 ] && ar rcs \22$tmp/libnyxrt.a\22 \22$tmp\22/*.o 2>/dev/null && mv -f \22$tmp/libnyxrt.a\22 \22$a\22; then\0a\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [43 x i8] c"    rm -rf \22$tmp\22; RT_AUTO=\22$a\22; return 0\0a\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [6 x i8] c"  fi\0a\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [27 x i8] c"  rm -rf \22$tmp\22; return 1\0a\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [1 x i8] c"\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [31 x i8] c"mktemp -d /tmp/nyx_test_XXXXXX\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [9 x i8] c"/out.txt\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [5 x i8] c"/bin\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [1 x i8] c"\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [5 x i8] c"-O2 \00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [1 x i8] c"\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [2 x i8] c"/\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [2 x i8] c"/\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [1 x i8] c"\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [1 x i8] c"\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [17 x i8] c"if nyx_rt_auto \22\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [31 x i8] c"; then RT_IN=(\22$RT_AUTO\22); fi\0a\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [3 x i8] c"\22$\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [13 x i8] c"{RT_IN[@]}\22 \00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [1 x i8] c"\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [1 x i8] c"\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [1 x i8] c"\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [1 x i8] c"\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [2 x i8] c"/\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [20 x i8] c" NYX_COVERAGE_MAP=\22\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [6 x i8] c".tsv\22\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [62 x i8] c"-fprofile-generate -Xclang -mllvm -Xclang -disable-preinline \00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [20 x i8] c"LLVM_PROFILE_FILE=\22\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [11 x i8] c".profraw\22 \00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [322 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22; return 0; }\0a\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [1 x i8] c"\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [1 x i8] c"\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [1 x i8] c"\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [2 x i8] c",\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [1 x i8] c"\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [1 x i8] c"\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [2 x i8] c",\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [1 x i8] c"\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [19 x i8] c" NYX_LIB_MODULES=\22\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [2 x i8] c" \00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c"=\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [22 x i8] c" ./nyx_bootstrap ) > \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [36 x i8] c" 2>&1 || { rc=$?; nyx_pista $rc >> \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [13 x i8] c"; exit 1; }\0a\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [42 x i8] c"SRC=\22$(mktemp /tmp/nyx_test_src_XXXXXX)\22\0a\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [2 x i8] c"/\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [2 x i8] c" \00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [4 x i8] c" > \00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [1 x i8] c"\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [3 x i8] c" (\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [3 x i8] c" (\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [1 x i8] c"\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [9 x i8] c"version \00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [1 x i8] c"\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [1 x i8] c"\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [1 x i8] c"\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [1 x i8] c"\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [2 x i8] c"0\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [1 x i8] c"\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [3 x i8] c"  \00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [4 x i8] c"   \00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [2 x i8] c":\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [2 x i8] c";\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [1 x i8] c"\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [2 x i8] c"[\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"]\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c",\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [2 x i8] c"1\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [4 x i8] c"src\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [1 x i8] c"\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [1 x i8] c"\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [1 x i8] c"\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [2 x i8] c"/\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [2 x i8] c"1\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"/\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [1 x i8] c"\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [2 x i8] c"1\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [6 x i8] c"async\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [5 x i8] c"main\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [3 x i8] c"no\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [3 x i8] c"si\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [1 x i8] c"\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [1 x i8] c"\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [2 x i8] c"0\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [3 x i8] c"si\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [2 x i8] c"1\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [5 x i8] c"    \00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [2 x i8] c":\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [2 x i8] c" \00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [2 x i8] c",\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [3 x i8] c"  \00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [3 x i8] c": \00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [2 x i8] c"/\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [3 x i8] c" (\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [5 x i8] c"    \00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [2 x i8] c"/\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [66 x i8] c"\22 2>/dev/null && sha256sum nyx_bootstrap 2>/dev/null | cut -c1-12\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [74 x i8] c"\22 2>/dev/null && cat std/*.nx runtime/*.c runtime/*.h 2>/dev/null | cksum\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [18 x i8] c"  compiler: nyx v\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [17 x i8] c" (nyx_bootstrap \00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [2 x i8] c")\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [1 x i8] c"\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [2 x i8] c" \00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [2 x i8] c"-\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [1 x i8] c"\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [1 x i8] c"\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [1 x i8] c"\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [1 x i8] c"\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [1 x i8] c"\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [1 x i8] c"\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [1 x i8] c"\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [1 x i8] c"\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [2 x i8] c"/\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [1 x i8] c"\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [1 x i8] c"\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [1 x i8] c"\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [1 x i8] c"\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [33 x i8] c"mktemp /tmp/nyx_test_libs_XXXXXX\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [1 x i8] c"\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [1 x i8] c"\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [1 x i8] c"\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [48 x i8] c"  ⚠ EL TOOLCHAIN CAMBIÓ DURANTE LA CORRIDA (\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [2 x i8] c")\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [31 x i8] c"    compilador: nyx_bootstrap \00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [53 x i8] c"    compilador igual; cambió la stdlib o el runtime\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [71 x i8] c"    Algunos archivos se probaron con una versión y otros con la otra:\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [69 x i8] c"    este resultado no sirve para integrar. Vuelve a correr la suite.\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str407.c = internal global %nyx_string* null
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

define internal %nyx_string* @rt_cache_sh(
) {
  %1044 = getelementptr [17 x i8], [17 x i8]* @.str48, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1044, i64 16)
  %1046 = alloca %nyx_string*
  store %nyx_string* %1045, %nyx_string** %1046
  %1047 = load %nyx_string*, %nyx_string** %1046
  %1048 = getelementptr [41 x i8], [41 x i8]* @.str49, i32 0, i32 0
  %1049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1048, i64 40)
  %1050 = call %nyx_string* @nyx_string_concat(%nyx_string* %1047, %nyx_string* %1049)
  store %nyx_string* %1050, %nyx_string** %1046
  %1051 = load %nyx_string*, %nyx_string** %1046
  %1052 = getelementptr [24 x i8], [24 x i8]* @.str50, i32 0, i32 0
  %1053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1052, i64 23)
  %1054 = call %nyx_string* @nyx_string_concat(%nyx_string* %1051, %nyx_string* %1053)
  store %nyx_string* %1054, %nyx_string** %1046
  %1055 = load %nyx_string*, %nyx_string** %1046
  %1056 = getelementptr [92 x i8], [92 x i8]* @.str51, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1056, i64 91)
  %1058 = call %nyx_string* @nyx_string_concat(%nyx_string* %1055, %nyx_string* %1057)
  store %nyx_string* %1058, %nyx_string** %1046
  %1059 = load %nyx_string*, %nyx_string** %1046
  %1060 = getelementptr [177 x i8], [177 x i8]* @.str52, i32 0, i32 0
  %1061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1060, i64 176)
  %1062 = call %nyx_string* @nyx_string_concat(%nyx_string* %1059, %nyx_string* %1061)
  store %nyx_string* %1062, %nyx_string** %1046
  %1063 = load %nyx_string*, %nyx_string** %1046
  %1064 = getelementptr [35 x i8], [35 x i8]* @.str53, i32 0, i32 0
  %1065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1064, i64 34)
  %1066 = call %nyx_string* @nyx_string_concat(%nyx_string* %1063, %nyx_string* %1065)
  store %nyx_string* %1066, %nyx_string** %1046
  %1067 = load %nyx_string*, %nyx_string** %1046
  %1068 = getelementptr [83 x i8], [83 x i8]* @.str54, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1068, i64 82)
  %1070 = call %nyx_string* @nyx_string_concat(%nyx_string* %1067, %nyx_string* %1069)
  store %nyx_string* %1070, %nyx_string** %1046
  %1071 = load %nyx_string*, %nyx_string** %1046
  %1072 = getelementptr [49 x i8], [49 x i8]* @.str55, i32 0, i32 0
  %1073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1072, i64 48)
  %1074 = call %nyx_string* @nyx_string_concat(%nyx_string* %1071, %nyx_string* %1073)
  store %nyx_string* %1074, %nyx_string** %1046
  %1075 = load %nyx_string*, %nyx_string** %1046
  %1076 = getelementptr [89 x i8], [89 x i8]* @.str56, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1076, i64 88)
  %1078 = call %nyx_string* @nyx_string_concat(%nyx_string* %1075, %nyx_string* %1077)
  store %nyx_string* %1078, %nyx_string** %1046
  %1079 = load %nyx_string*, %nyx_string** %1046
  %1080 = getelementptr [68 x i8], [68 x i8]* @.str57, i32 0, i32 0
  %1081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1080, i64 67)
  %1082 = call %nyx_string* @nyx_string_concat(%nyx_string* %1079, %nyx_string* %1081)
  store %nyx_string* %1082, %nyx_string** %1046
  %1083 = load %nyx_string*, %nyx_string** %1046
  %1084 = getelementptr [15 x i8], [15 x i8]* @.str58, i32 0, i32 0
  %1085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1084, i64 14)
  %1086 = call %nyx_string* @nyx_string_concat(%nyx_string* %1083, %nyx_string* %1085)
  store %nyx_string* %1086, %nyx_string** %1046
  %1087 = load %nyx_string*, %nyx_string** %1046
  %1088 = getelementptr [114 x i8], [114 x i8]* @.str59, i32 0, i32 0
  %1089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1088, i64 113)
  %1090 = call %nyx_string* @nyx_string_concat(%nyx_string* %1087, %nyx_string* %1089)
  store %nyx_string* %1090, %nyx_string** %1046
  %1091 = load %nyx_string*, %nyx_string** %1046
  %1092 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1092, i64 7)
  %1094 = call %nyx_string* @nyx_string_concat(%nyx_string* %1091, %nyx_string* %1093)
  store %nyx_string* %1094, %nyx_string** %1046
  %1095 = load %nyx_string*, %nyx_string** %1046
  %1096 = getelementptr [138 x i8], [138 x i8]* @.str61, i32 0, i32 0
  %1097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1096, i64 137)
  %1098 = call %nyx_string* @nyx_string_concat(%nyx_string* %1095, %nyx_string* %1097)
  store %nyx_string* %1098, %nyx_string** %1046
  %1099 = load %nyx_string*, %nyx_string** %1046
  %1100 = getelementptr [43 x i8], [43 x i8]* @.str62, i32 0, i32 0
  %1101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1100, i64 42)
  %1102 = call %nyx_string* @nyx_string_concat(%nyx_string* %1099, %nyx_string* %1101)
  store %nyx_string* %1102, %nyx_string** %1046
  %1103 = load %nyx_string*, %nyx_string** %1046
  %1104 = getelementptr [6 x i8], [6 x i8]* @.str63, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1104, i64 5)
  %1106 = call %nyx_string* @nyx_string_concat(%nyx_string* %1103, %nyx_string* %1105)
  store %nyx_string* %1106, %nyx_string** %1046
  %1107 = load %nyx_string*, %nyx_string** %1046
  %1108 = getelementptr [27 x i8], [27 x i8]* @.str64, i32 0, i32 0
  %1109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1108, i64 26)
  %1110 = call %nyx_string* @nyx_string_concat(%nyx_string* %1107, %nyx_string* %1109)
  store %nyx_string* %1110, %nyx_string** %1046
  %1111 = load %nyx_string*, %nyx_string** %1046
  %1112 = getelementptr [3 x i8], [3 x i8]* @.str65, i32 0, i32 0
  %1113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1112, i64 2)
  %1114 = call %nyx_string* @nyx_string_concat(%nyx_string* %1111, %nyx_string* %1113)
  store %nyx_string* %1114, %nyx_string** %1046
  %1115 = load %nyx_string*, %nyx_string** %1046
  ret %nyx_string* %1115
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
  %1116 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1116, i64 8)
  %1118 = call i8* @nyx_string_to_cstr(%nyx_string* %1117)
  %1119 = call %nyx_string* @nyx_getenv(i8* %1118)
  %1120 = alloca %nyx_string*
  store %nyx_string* %1119, %nyx_string** %1120
  %1121 = load %nyx_string*, %nyx_string** %1120
  %1122 = getelementptr [1 x i8], [1 x i8]* @.str67, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1122, i64 0)
  %1124 = call i1 @nyx_string_equals(%nyx_string* %1121, %nyx_string* %1123)
  br i1 %1124, label %then282, label %else283
then282:
  %1125 = getelementptr %TestResult, %TestResult* null, i32 1
  %1126 = ptrtoint %TestResult* %1125 to i64
  %1127 = call i8* @GC_malloc(i64 %1126)
  %1128 = bitcast i8* %1127 to %TestResult*
  %1129 = load %nyx_string*, %nyx_string** %file.ptr
  %1130 = getelementptr %TestResult, %TestResult* %1128, i32 0, i32 0
  store %nyx_string* %1129, %nyx_string** %1130
  %1131 = getelementptr %TestResult, %TestResult* %1128, i32 0, i32 1
  store i64 0, i64* %1131
  %1132 = getelementptr %TestResult, %TestResult* %1128, i32 0, i32 2
  store i64 0, i64* %1132
  %1133 = getelementptr [24 x i8], [24 x i8]* @.str68, i32 0, i32 0
  %1134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1133, i64 23)
  %1135 = getelementptr %TestResult, %TestResult* %1128, i32 0, i32 3
  store %nyx_string* %1134, %nyx_string** %1135
  %1136 = getelementptr %TestResult, %TestResult* %1128, i32 0, i32 4
  store i1 0, i1* %1136
  %1137 = load %TestResult, %TestResult* %1128
  ret %TestResult %1137
else283:
  br label %merge284
merge284:
  %1138 = getelementptr [4 x i8], [4 x i8]* @.str69, i32 0, i32 0
  %1139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1138, i64 3)
  %1140 = call i8* @nyx_string_to_cstr(%nyx_string* %1139)
  %1141 = call %nyx_string* @nyx_getenv(i8* %1140)
  %1142 = alloca %nyx_string*
  store %nyx_string* %1141, %nyx_string** %1142
  %1143 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1144 = load i64, i64* %1143
  %1145 = call %nyx_string* @nyx_string_from_int(i64 %1144)
  %1146 = alloca %nyx_string*
  store %nyx_string* %1145, %nyx_string** %1146
  %1147 = getelementptr [31 x i8], [31 x i8]* @.str70, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1147, i64 30)
  %1149 = call i8* @nyx_string_to_cstr(%nyx_string* %1148)
  %1150 = call %nyx_string* @nyx_exec(i8* %1149)
  %1151 = call %nyx_string* @nyx_string_trim(%nyx_string* %1150)
  %1152 = alloca %nyx_string*
  store %nyx_string* %1151, %nyx_string** %1152
  %1153 = load %nyx_string*, %nyx_string** %1152
  %1154 = getelementptr [9 x i8], [9 x i8]* @.str71, i32 0, i32 0
  %1155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1154, i64 8)
  %1156 = call %nyx_string* @nyx_string_concat(%nyx_string* %1153, %nyx_string* %1155)
  %1157 = alloca %nyx_string*
  store %nyx_string* %1156, %nyx_string** %1157
  %1158 = load %nyx_string*, %nyx_string** %1152
  %1159 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %1160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1159, i64 4)
  %1161 = call %nyx_string* @nyx_string_concat(%nyx_string* %1158, %nyx_string* %1160)
  %1162 = alloca %nyx_string*
  store %nyx_string* %1161, %nyx_string** %1162
  %1163 = getelementptr [1 x i8], [1 x i8]* @.str73, i32 0, i32 0
  %1164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1163, i64 0)
  %1165 = alloca %nyx_string*
  store %nyx_string* %1164, %nyx_string** %1165
  %1166 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1167 = load i1, i1* %1166
  br i1 %1167, label %then285, label %else286
then285:
  %1168 = getelementptr [5 x i8], [5 x i8]* @.str74, i32 0, i32 0
  %1169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1168, i64 4)
  store %nyx_string* %1169, %nyx_string** %1165
  br label %merge287
else286:
  br label %merge287
merge287:
  %1170 = getelementptr [62 x i8], [62 x i8]* @.str75, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1170, i64 61)
  %1172 = getelementptr [54 x i8], [54 x i8]* @.str76, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1172, i64 53)
  %1174 = call %nyx_string* @nyx_string_concat(%nyx_string* %1171, %nyx_string* %1173)
  %1175 = getelementptr [48 x i8], [48 x i8]* @.str77, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1175, i64 47)
  %1177 = call %nyx_string* @nyx_string_concat(%nyx_string* %1174, %nyx_string* %1176)
  %1178 = getelementptr [47 x i8], [47 x i8]* @.str78, i32 0, i32 0
  %1179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1178, i64 46)
  %1180 = call %nyx_string* @nyx_string_concat(%nyx_string* %1177, %nyx_string* %1179)
  %1181 = getelementptr [67 x i8], [67 x i8]* @.str79, i32 0, i32 0
  %1182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1181, i64 66)
  %1183 = call %nyx_string* @nyx_string_concat(%nyx_string* %1180, %nyx_string* %1182)
  %1184 = getelementptr [51 x i8], [51 x i8]* @.str80, i32 0, i32 0
  %1185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1184, i64 50)
  %1186 = call %nyx_string* @nyx_string_concat(%nyx_string* %1183, %nyx_string* %1185)
  %1187 = getelementptr [91 x i8], [91 x i8]* @.str81, i32 0, i32 0
  %1188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1187, i64 90)
  %1189 = call %nyx_string* @nyx_string_concat(%nyx_string* %1186, %nyx_string* %1188)
  %1190 = getelementptr [23 x i8], [23 x i8]* @.str82, i32 0, i32 0
  %1191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1190, i64 22)
  %1192 = call %nyx_string* @nyx_string_concat(%nyx_string* %1189, %nyx_string* %1191)
  %1193 = alloca %nyx_string*
  store %nyx_string* %1192, %nyx_string** %1193
  %1194 = getelementptr [15 x i8], [15 x i8]* @.str83, i32 0, i32 0
  %1195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1194, i64 14)
  %1196 = call i8* @nyx_string_to_cstr(%nyx_string* %1195)
  %1197 = call %nyx_string* @nyx_getenv(i8* %1196)
  %1198 = alloca %nyx_string*
  store %nyx_string* %1197, %nyx_string** %1198
  %1199 = alloca i1
  store i1 false, i1* %1199
  %1200 = load %nyx_string*, %nyx_string** %1198
  %1201 = getelementptr [1 x i8], [1 x i8]* @.str84, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1201, i64 0)
  %1203 = call i1 @nyx_string_equals(%nyx_string* %1200, %nyx_string* %1202)
  %1204 = xor i1 %1203, true
  br i1 %1204, label %sc_and_rhs288, label %sc_and_end289
sc_and_rhs288:
  %1205 = load %nyx_string*, %nyx_string** %1198
  %1206 = getelementptr [2 x i8], [2 x i8]* @.str85, i32 0, i32 0
  %1207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1206, i64 1)
  %1208 = call i1 @nyx_string_starts_with(%nyx_string* %1205, %nyx_string* %1207)
  %1209 = xor i1 %1208, true
  store i1 %1209, i1* %1199
  br label %sc_and_end289
sc_and_end289:
  %1210 = load i1, i1* %1199
  br i1 %1210, label %then290, label %else291
then290:
  %1211 = load %nyx_string*, %nyx_string** %1142
  %1212 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %1213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1212, i64 1)
  %1214 = call %nyx_string* @nyx_string_concat(%nyx_string* %1211, %nyx_string* %1213)
  %1215 = load %nyx_string*, %nyx_string** %1198
  %1216 = call %nyx_string* @nyx_string_concat(%nyx_string* %1214, %nyx_string* %1215)
  store %nyx_string* %1216, %nyx_string** %1198
  br label %merge292
else291:
  br label %merge292
merge292:
  %1217 = getelementptr [8 x i8], [8 x i8]* @.str87, i32 0, i32 0
  %1218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1217, i64 7)
  %1219 = load %nyx_string*, %nyx_string** %1193
  %1220 = call %nyx_string* @nyx_string_concat(%nyx_string* %1218, %nyx_string* %1219)
  %1221 = getelementptr [3 x i8], [3 x i8]* @.str88, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1221, i64 2)
  %1223 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1222)
  %1224 = alloca %nyx_string*
  store %nyx_string* %1223, %nyx_string** %1224
  %1225 = alloca i1
  store i1 false, i1* %1225
  %1226 = load %nyx_string*, %nyx_string** %1198
  %1227 = getelementptr [1 x i8], [1 x i8]* @.str89, i32 0, i32 0
  %1228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1227, i64 0)
  %1229 = call i1 @nyx_string_equals(%nyx_string* %1226, %nyx_string* %1228)
  %1230 = xor i1 %1229, true
  br i1 %1230, label %sc_and_rhs293, label %sc_and_end294
sc_and_rhs293:
  %1231 = load %nyx_string*, %nyx_string** %1198
  %1232 = call i8* @nyx_string_to_cstr(%nyx_string* %1231)
  %1233 = call i1 @nyx_file_exists(i8* %1232)
  store i1 %1233, i1* %1225
  br label %sc_and_end294
sc_and_end294:
  %1234 = load i1, i1* %1225
  br i1 %1234, label %then295, label %else296
then295:
  %1235 = getelementptr [9 x i8], [9 x i8]* @.str90, i32 0, i32 0
  %1236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1235, i64 8)
  %1237 = load %nyx_string*, %nyx_string** %1198
  %1238 = call %nyx_string* @nyx_string_concat(%nyx_string* %1236, %nyx_string* %1237)
  %1239 = getelementptr [4 x i8], [4 x i8]* @.str91, i32 0, i32 0
  %1240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1239, i64 3)
  %1241 = call %nyx_string* @nyx_string_concat(%nyx_string* %1238, %nyx_string* %1240)
  store %nyx_string* %1241, %nyx_string** %1224
  br label %merge297
else296:
  %1242 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1243 = getelementptr [1 x i8], [1 x i8]* @.str92, i32 0, i32 0
  %1244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1243, i64 0)
  %1245 = call i1 @nyx_string_equals(%nyx_string* %1242, %nyx_string* %1244)
  br i1 %1245, label %then298, label %else299
then298:
  %1246 = call %nyx_string* @rt_cache_sh()
  %1247 = load %nyx_string*, %nyx_string** %1224
  %1248 = call %nyx_string* @nyx_string_concat(%nyx_string* %1246, %nyx_string* %1247)
  %1249 = getelementptr [17 x i8], [17 x i8]* @.str93, i32 0, i32 0
  %1250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1249, i64 16)
  %1251 = call %nyx_string* @nyx_string_concat(%nyx_string* %1248, %nyx_string* %1250)
  %1252 = load %nyx_string*, %nyx_string** %1165
  %1253 = call %nyx_string* @nyx_string_trim(%nyx_string* %1252)
  %1254 = call %nyx_string* @nyx_string_concat(%nyx_string* %1251, %nyx_string* %1253)
  %1255 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %1256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1255, i64 2)
  %1257 = call %nyx_string* @nyx_string_concat(%nyx_string* %1254, %nyx_string* %1256)
  %1258 = load %nyx_string*, %nyx_string** %1193
  %1259 = call %nyx_string* @nyx_string_concat(%nyx_string* %1257, %nyx_string* %1258)
  %1260 = getelementptr [31 x i8], [31 x i8]* @.str95, i32 0, i32 0
  %1261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1260, i64 30)
  %1262 = call %nyx_string* @nyx_string_concat(%nyx_string* %1259, %nyx_string* %1261)
  store %nyx_string* %1262, %nyx_string** %1224
  br label %merge300
else299:
  br label %merge300
merge300:
  br label %merge297
merge297:
  %1263 = getelementptr [3 x i8], [3 x i8]* @.str96, i32 0, i32 0
  %1264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1263, i64 2)
  %1265 = getelementptr [13 x i8], [13 x i8]* @.str97, i32 0, i32 0
  %1266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1265, i64 12)
  %1267 = call %nyx_string* @nyx_string_concat(%nyx_string* %1264, %nyx_string* %1266)
  store %nyx_string* %1267, %nyx_string** %1193
  %1268 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1268, i64 0)
  %1270 = alloca %nyx_string*
  store %nyx_string* %1269, %nyx_string** %1270
  %1271 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1271, i64 0)
  %1273 = alloca %nyx_string*
  store %nyx_string* %1272, %nyx_string** %1273
  %1274 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1274, i64 0)
  %1276 = alloca %nyx_string*
  store %nyx_string* %1275, %nyx_string** %1276
  %1277 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1278 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1278, i64 0)
  %1280 = call i1 @nyx_string_equals(%nyx_string* %1277, %nyx_string* %1279)
  %1281 = xor i1 %1280, true
  br i1 %1281, label %then301, label %else302
then301:
  %1282 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1283 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %1284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1283, i64 1)
  %1285 = call %nyx_string* @nyx_string_concat(%nyx_string* %1282, %nyx_string* %1284)
  %1286 = load i64, i64* %cov_idx.ptr
  %1287 = call %nyx_string* @nyx_string_from_int(i64 %1286)
  %1288 = call %nyx_string* @nyx_string_concat(%nyx_string* %1285, %nyx_string* %1287)
  %1289 = alloca %nyx_string*
  store %nyx_string* %1288, %nyx_string** %1289
  %1290 = getelementptr [20 x i8], [20 x i8]* @.str103, i32 0, i32 0
  %1291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1290, i64 19)
  %1292 = load %nyx_string*, %nyx_string** %1289
  %1293 = call %nyx_string* @nyx_string_concat(%nyx_string* %1291, %nyx_string* %1292)
  %1294 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1294, i64 5)
  %1296 = call %nyx_string* @nyx_string_concat(%nyx_string* %1293, %nyx_string* %1295)
  store %nyx_string* %1296, %nyx_string** %1270
  %1297 = getelementptr [62 x i8], [62 x i8]* @.str105, i32 0, i32 0
  %1298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1297, i64 61)
  store %nyx_string* %1298, %nyx_string** %1273
  %1299 = getelementptr [20 x i8], [20 x i8]* @.str106, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1299, i64 19)
  %1301 = load %nyx_string*, %nyx_string** %1289
  %1302 = call %nyx_string* @nyx_string_concat(%nyx_string* %1300, %nyx_string* %1301)
  %1303 = getelementptr [11 x i8], [11 x i8]* @.str107, i32 0, i32 0
  %1304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1303, i64 10)
  %1305 = call %nyx_string* @nyx_string_concat(%nyx_string* %1302, %nyx_string* %1304)
  store %nyx_string* %1305, %nyx_string** %1276
  br label %merge303
else302:
  br label %merge303
merge303:
  %1306 = getelementptr [20 x i8], [20 x i8]* @.str108, i32 0, i32 0
  %1307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1306, i64 19)
  %1308 = getelementptr [180 x i8], [180 x i8]* @.str109, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1308, i64 179)
  %1310 = call %nyx_string* @nyx_string_concat(%nyx_string* %1307, %nyx_string* %1309)
  %1311 = getelementptr [322 x i8], [322 x i8]* @.str110, i32 0, i32 0
  %1312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1311, i64 321)
  %1313 = call %nyx_string* @nyx_string_concat(%nyx_string* %1310, %nyx_string* %1312)
  %1314 = alloca %nyx_string*
  store %nyx_string* %1313, %nyx_string** %1314
  %1315 = load %nyx_string*, %nyx_string** %file.ptr
  %1316 = call %nyx_string* @lib_modulo_de(%nyx_string* %1315)
  %1317 = alloca %nyx_string*
  store %nyx_string* %1316, %nyx_string** %1317
  %1318 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1318, i64 0)
  %1320 = alloca %nyx_string*
  store %nyx_string* %1319, %nyx_string** %1320
  %1321 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1321, i64 0)
  %1323 = alloca %nyx_string*
  store %nyx_string* %1322, %nyx_string** %1323
  %1324 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1325 = load %nyx_string*, %nyx_string** %1324
  %1326 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1326, i64 0)
  %1328 = call i1 @nyx_string_equals(%nyx_string* %1325, %nyx_string* %1327)
  %1329 = xor i1 %1328, true
  br i1 %1329, label %then304, label %else305
then304:
  %1330 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1331 = load %nyx_string*, %nyx_string** %1330
  %1332 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1333 = load %nyx_string*, %nyx_string** %1332
  %1334 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %1335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1334, i64 1)
  %1336 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1333, %nyx_string* %1335)
  %1337 = alloca { i64, i8* }*
  store { i64, i8* }* %1336, { i64, i8* }** %1337
  %1338 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %1339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1338, i64 0)
  %1340 = alloca %nyx_string*
  store %nyx_string* %1339, %nyx_string** %1340
  %1341 = alloca i64
  store i64 0, i64* %1341
  %1342 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1342, i64 0)
  %1344 = alloca %nyx_string*
  store %nyx_string* %1343, %nyx_string** %1344
  %1345 = getelementptr [2 x i8], [2 x i8]* @.str117, i32 0, i32 0
  %1346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1345, i64 1)
  %1347 = alloca %nyx_string*
  store %nyx_string* %1346, %nyx_string** %1347
  %1348 = call i8* @llvm.stacksave()
  br label %while_cond307
while_cond307:
  %1349 = load i64, i64* %1341
  %1350 = load { i64, i8* }*, { i64, i8* }** %1337
  %1351 = call i64 @nyx_array_length({ i64, i8* }* %1350)
  %1352 = icmp slt i64 %1349, %1351
  br i1 %1352, label %while_body308, label %while_end309
while_body308:
  call void @llvm.stackrestore(i8* %1348)
  %1353 = load { i64, i8* }*, { i64, i8* }** %1337
  %1354 = load i64, i64* %1341
  %1355 = call i64 @nyx_array_get_checked({ i64, i8* }* %1353, i64 %1354, i64 2)
  %1356 = inttoptr i64 %1355 to %nyx_string*
  %1357 = alloca %nyx_string*
  store %nyx_string* %1356, %nyx_string** %1357
  %1358 = alloca i1
  store i1 false, i1* %1358
  %1359 = load %nyx_string*, %nyx_string** %1357
  %1360 = load %nyx_string*, %nyx_string** %1344
  %1361 = call i1 @nyx_string_equals(%nyx_string* %1359, %nyx_string* %1360)
  %1362 = xor i1 %1361, true
  br i1 %1362, label %sc_and_rhs310, label %sc_and_end311
sc_and_rhs310:
  %1363 = load %nyx_string*, %nyx_string** %1357
  %1364 = load %nyx_string*, %nyx_string** %1317
  %1365 = call i1 @nyx_string_equals(%nyx_string* %1363, %nyx_string* %1364)
  %1366 = xor i1 %1365, true
  store i1 %1366, i1* %1358
  br label %sc_and_end311
sc_and_end311:
  %1367 = load i1, i1* %1358
  br i1 %1367, label %then312, label %else313
then312:
  %1368 = load %nyx_string*, %nyx_string** %1340
  %1369 = load %nyx_string*, %nyx_string** %1344
  %1370 = call i1 @nyx_string_equals(%nyx_string* %1368, %nyx_string* %1369)
  %1371 = xor i1 %1370, true
  br i1 %1371, label %then315, label %else316
then315:
  %1372 = load %nyx_string*, %nyx_string** %1340
  %1373 = load %nyx_string*, %nyx_string** %1347
  %1374 = call %nyx_string* @nyx_string_concat(%nyx_string* %1372, %nyx_string* %1373)
  store %nyx_string* %1374, %nyx_string** %1340
  br label %merge317
else316:
  br label %merge317
merge317:
  %1375 = load %nyx_string*, %nyx_string** %1340
  %1376 = load %nyx_string*, %nyx_string** %1357
  %1377 = call %nyx_string* @nyx_string_concat(%nyx_string* %1375, %nyx_string* %1376)
  store %nyx_string* %1377, %nyx_string** %1340
  br label %merge314
else313:
  br label %merge314
merge314:
  %1378 = load i64, i64* %1341
  %1379 = add i64 %1378, 1
  store i64 %1379, i64* %1341
  br label %while_cond307
while_end309:
  %1380 = load %nyx_string*, %nyx_string** %1340
  %1381 = getelementptr [1 x i8], [1 x i8]* @.str118, i32 0, i32 0
  %1382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1381, i64 0)
  %1383 = call i1 @nyx_string_equals(%nyx_string* %1380, %nyx_string* %1382)
  %1384 = xor i1 %1383, true
  br i1 %1384, label %then318, label %else319
then318:
  %1385 = getelementptr [19 x i8], [19 x i8]* @.str119, i32 0, i32 0
  %1386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1385, i64 18)
  %1387 = load %nyx_string*, %nyx_string** %1340
  %1388 = call %nyx_string* @nyx_string_concat(%nyx_string* %1386, %nyx_string* %1387)
  %1389 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1389, i64 1)
  %1391 = call %nyx_string* @nyx_string_concat(%nyx_string* %1388, %nyx_string* %1390)
  store %nyx_string* %1391, %nyx_string** %1320
  br label %merge320
else319:
  br label %merge320
merge320:
  %1392 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1393 = load %nyx_string*, %nyx_string** %1392
  %1394 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1395 = load %nyx_string*, %nyx_string** %1394
  %1396 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %1397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1396, i64 1)
  %1398 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1395, %nyx_string* %1397)
  %1399 = alloca { i64, i8* }*
  store { i64, i8* }* %1398, { i64, i8* }** %1399
  %1400 = alloca i64
  store i64 0, i64* %1400
  %1401 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1401, i64 1)
  %1403 = alloca %nyx_string*
  store %nyx_string* %1402, %nyx_string** %1403
  %1404 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1404, i64 1)
  %1406 = alloca %nyx_string*
  store %nyx_string* %1405, %nyx_string** %1406
  %1407 = getelementptr [3 x i8], [3 x i8]* @.str124, i32 0, i32 0
  %1408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1407, i64 2)
  %1409 = alloca %nyx_string*
  store %nyx_string* %1408, %nyx_string** %1409
  %1410 = call i8* @llvm.stacksave()
  br label %while_cond321
while_cond321:
  %1411 = load i64, i64* %1400
  %1412 = load { i64, i8* }*, { i64, i8* }** %1399
  %1413 = call i64 @nyx_array_length({ i64, i8* }* %1412)
  %1414 = icmp slt i64 %1411, %1413
  br i1 %1414, label %while_body322, label %while_end323
while_body322:
  call void @llvm.stackrestore(i8* %1410)
  %1415 = load { i64, i8* }*, { i64, i8* }** %1399
  %1416 = load i64, i64* %1400
  %1417 = call i64 @nyx_array_get_checked({ i64, i8* }* %1415, i64 %1416, i64 2)
  %1418 = inttoptr i64 %1417 to %nyx_string*
  %1419 = alloca %nyx_string*
  store %nyx_string* %1418, %nyx_string** %1419
  %1420 = load %nyx_string*, %nyx_string** %1419
  %1421 = load %nyx_string*, %nyx_string** %1403
  %1422 = call i64 @nyx_string_index_of(%nyx_string* %1420, %nyx_string* %1421)
  %1423 = alloca i64
  store i64 %1422, i64* %1423
  %1424 = load i64, i64* %1423
  %1425 = icmp sgt i64 %1424, 0
  br i1 %1425, label %then324, label %else325
then324:
  %1426 = load %nyx_string*, %nyx_string** %1419
  %1427 = load i64, i64* %1423
  %1428 = call %nyx_string* @nyx_string_substring(%nyx_string* %1426, i64 0, i64 %1427)
  %1429 = alloca %nyx_string*
  store %nyx_string* %1428, %nyx_string** %1429
  %1430 = load %nyx_string*, %nyx_string** %1429
  %1431 = load %nyx_string*, %nyx_string** %1317
  %1432 = call i1 @nyx_string_equals(%nyx_string* %1430, %nyx_string* %1431)
  %1433 = xor i1 %1432, true
  br i1 %1433, label %then327, label %else328
then327:
  %1434 = load %nyx_string*, %nyx_string** %1323
  %1435 = load %nyx_string*, %nyx_string** %1406
  %1436 = call %nyx_string* @nyx_string_concat(%nyx_string* %1434, %nyx_string* %1435)
  %1437 = load %nyx_string*, %nyx_string** %1419
  %1438 = load i64, i64* %1423
  %1439 = add i64 %1438, 1
  %1440 = load %nyx_string*, %nyx_string** %1419
  %1441 = call i64 @nyx_string_byte_length(%nyx_string* %1440)
  %1442 = call %nyx_string* @nyx_string_substring(%nyx_string* %1437, i64 %1439, i64 %1441)
  %1443 = call %nyx_string* @nyx_string_concat(%nyx_string* %1436, %nyx_string* %1442)
  %1444 = load %nyx_string*, %nyx_string** %1409
  %1445 = call %nyx_string* @nyx_string_concat(%nyx_string* %1443, %nyx_string* %1444)
  store %nyx_string* %1445, %nyx_string** %1323
  br label %merge329
else328:
  br label %merge329
merge329:
  br label %merge326
else325:
  br label %merge326
merge326:
  %1446 = load i64, i64* %1400
  %1447 = add i64 %1446, 1
  store i64 %1447, i64* %1400
  br label %while_cond321
while_end323:
  br label %merge306
else305:
  br label %merge306
merge306:
  %1448 = getelementptr [55 x i8], [55 x i8]* @.str125, i32 0, i32 0
  %1449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1448, i64 54)
  %1450 = load %nyx_string*, %nyx_string** %1142
  %1451 = call %nyx_string* @nyx_string_concat(%nyx_string* %1449, %nyx_string* %1450)
  %1452 = getelementptr [37 x i8], [37 x i8]* @.str126, i32 0, i32 0
  %1453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1452, i64 36)
  %1454 = call %nyx_string* @nyx_string_concat(%nyx_string* %1451, %nyx_string* %1453)
  %1455 = load %nyx_string*, %nyx_string** %file.ptr
  %1456 = call %nyx_string* @nyx_string_concat(%nyx_string* %1454, %nyx_string* %1455)
  %1457 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1457, i64 1)
  %1459 = call %nyx_string* @nyx_string_concat(%nyx_string* %1456, %nyx_string* %1458)
  %1460 = load %nyx_string*, %nyx_string** %1270
  %1461 = call %nyx_string* @nyx_string_concat(%nyx_string* %1459, %nyx_string* %1460)
  %1462 = load %nyx_string*, %nyx_string** %1320
  %1463 = call %nyx_string* @nyx_string_concat(%nyx_string* %1461, %nyx_string* %1462)
  %1464 = getelementptr [22 x i8], [22 x i8]* @.str128, i32 0, i32 0
  %1465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1464, i64 21)
  %1466 = call %nyx_string* @nyx_string_concat(%nyx_string* %1463, %nyx_string* %1465)
  %1467 = load %nyx_string*, %nyx_string** %1157
  %1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %1466, %nyx_string* %1467)
  %1469 = getelementptr [36 x i8], [36 x i8]* @.str129, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1469, i64 35)
  %1471 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1470)
  %1472 = load %nyx_string*, %nyx_string** %1157
  %1473 = call %nyx_string* @nyx_string_concat(%nyx_string* %1471, %nyx_string* %1472)
  %1474 = getelementptr [13 x i8], [13 x i8]* @.str130, i32 0, i32 0
  %1475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1474, i64 12)
  %1476 = call %nyx_string* @nyx_string_concat(%nyx_string* %1473, %nyx_string* %1475)
  %1477 = alloca %nyx_string*
  store %nyx_string* %1476, %nyx_string** %1477
  %1478 = load %nyx_string*, %nyx_string** %1224
  %1479 = load %nyx_string*, %nyx_string** %1477
  %1480 = call %nyx_string* @nyx_string_concat(%nyx_string* %1478, %nyx_string* %1479)
  %1481 = alloca %nyx_string*
  store %nyx_string* %1480, %nyx_string** %1481
  %1482 = load %nyx_string*, %nyx_string** %1314
  %1483 = getelementptr [42 x i8], [42 x i8]* @.str131, i32 0, i32 0
  %1484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1483, i64 41)
  %1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %1482, %nyx_string* %1484)
  %1486 = getelementptr [17 x i8], [17 x i8]* @.str132, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1486, i64 16)
  %1488 = call %nyx_string* @nyx_string_concat(%nyx_string* %1485, %nyx_string* %1487)
  %1489 = getelementptr [31 x i8], [31 x i8]* @.str133, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1489, i64 30)
  %1491 = call %nyx_string* @nyx_string_concat(%nyx_string* %1488, %nyx_string* %1490)
  %1492 = getelementptr [17 x i8], [17 x i8]* @.str134, i32 0, i32 0
  %1493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1492, i64 16)
  %1494 = call %nyx_string* @nyx_string_concat(%nyx_string* %1491, %nyx_string* %1493)
  %1495 = getelementptr [5 x i8], [5 x i8]* @.str135, i32 0, i32 0
  %1496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1495, i64 4)
  %1497 = call %nyx_string* @nyx_string_concat(%nyx_string* %1494, %nyx_string* %1496)
  %1498 = load %nyx_string*, %nyx_string** %1142
  %1499 = call %nyx_string* @nyx_string_concat(%nyx_string* %1497, %nyx_string* %1498)
  %1500 = getelementptr [2 x i8], [2 x i8]* @.str136, i32 0, i32 0
  %1501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1500, i64 1)
  %1502 = call %nyx_string* @nyx_string_concat(%nyx_string* %1499, %nyx_string* %1501)
  %1503 = load %nyx_string*, %nyx_string** %file.ptr
  %1504 = call %nyx_string* @nyx_string_concat(%nyx_string* %1502, %nyx_string* %1503)
  %1505 = getelementptr [12 x i8], [12 x i8]* @.str137, i32 0, i32 0
  %1506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1505, i64 11)
  %1507 = call %nyx_string* @nyx_string_concat(%nyx_string* %1504, %nyx_string* %1506)
  %1508 = getelementptr [5 x i8], [5 x i8]* @.str138, i32 0, i32 0
  %1509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1508, i64 4)
  %1510 = call %nyx_string* @nyx_string_concat(%nyx_string* %1507, %nyx_string* %1509)
  %1511 = load %nyx_string*, %nyx_string** %1120
  %1512 = call %nyx_string* @nyx_string_concat(%nyx_string* %1510, %nyx_string* %1511)
  %1513 = getelementptr [3 x i8], [3 x i8]* @.str139, i32 0, i32 0
  %1514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1513, i64 2)
  %1515 = call %nyx_string* @nyx_string_concat(%nyx_string* %1512, %nyx_string* %1514)
  %1516 = getelementptr [51 x i8], [51 x i8]* @.str140, i32 0, i32 0
  %1517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1516, i64 50)
  %1518 = call %nyx_string* @nyx_string_concat(%nyx_string* %1515, %nyx_string* %1517)
  %1519 = load %nyx_string*, %nyx_string** %1120
  %1520 = call %nyx_string* @nyx_string_concat(%nyx_string* %1518, %nyx_string* %1519)
  %1521 = getelementptr [35 x i8], [35 x i8]* @.str141, i32 0, i32 0
  %1522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1521, i64 34)
  %1523 = call %nyx_string* @nyx_string_concat(%nyx_string* %1520, %nyx_string* %1522)
  %1524 = load %nyx_string*, %nyx_string** %1481
  %1525 = call %nyx_string* @nyx_string_concat(%nyx_string* %1523, %nyx_string* %1524)
  %1526 = getelementptr [7 x i8], [7 x i8]* @.str142, i32 0, i32 0
  %1527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1526, i64 6)
  %1528 = call %nyx_string* @nyx_string_concat(%nyx_string* %1525, %nyx_string* %1527)
  %1529 = load %nyx_string*, %nyx_string** %1165
  %1530 = call %nyx_string* @nyx_string_concat(%nyx_string* %1528, %nyx_string* %1529)
  %1531 = load %nyx_string*, %nyx_string** %1273
  %1532 = call %nyx_string* @nyx_string_concat(%nyx_string* %1530, %nyx_string* %1531)
  %1533 = getelementptr [40 x i8], [40 x i8]* @.str143, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1533, i64 39)
  %1535 = call %nyx_string* @nyx_string_concat(%nyx_string* %1532, %nyx_string* %1534)
  %1536 = load %nyx_string*, %nyx_string** %1323
  %1537 = call %nyx_string* @nyx_string_concat(%nyx_string* %1535, %nyx_string* %1536)
  %1538 = load %nyx_string*, %nyx_string** %1193
  %1539 = call %nyx_string* @nyx_string_concat(%nyx_string* %1537, %nyx_string* %1538)
  %1540 = getelementptr [44 x i8], [44 x i8]* @.str144, i32 0, i32 0
  %1541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1540, i64 43)
  %1542 = call %nyx_string* @nyx_string_concat(%nyx_string* %1539, %nyx_string* %1541)
  %1543 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %1544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1543, i64 3)
  %1545 = call %nyx_string* @nyx_string_concat(%nyx_string* %1542, %nyx_string* %1544)
  %1546 = load %nyx_string*, %nyx_string** %1162
  %1547 = call %nyx_string* @nyx_string_concat(%nyx_string* %1545, %nyx_string* %1546)
  %1548 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %1549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1548, i64 5)
  %1550 = call %nyx_string* @nyx_string_concat(%nyx_string* %1547, %nyx_string* %1549)
  %1551 = load %nyx_string*, %nyx_string** %1157
  %1552 = call %nyx_string* @nyx_string_concat(%nyx_string* %1550, %nyx_string* %1551)
  %1553 = getelementptr [2 x i8], [2 x i8]* @.str147, i32 0, i32 0
  %1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1553, i64 1)
  %1555 = call %nyx_string* @nyx_string_concat(%nyx_string* %1552, %nyx_string* %1554)
  %1556 = getelementptr [57 x i8], [57 x i8]* @.str148, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1556, i64 56)
  %1558 = call %nyx_string* @nyx_string_concat(%nyx_string* %1555, %nyx_string* %1557)
  %1559 = load %nyx_string*, %nyx_string** %1276
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1558, %nyx_string* %1559)
  %1561 = getelementptr [9 x i8], [9 x i8]* @.str149, i32 0, i32 0
  %1562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1561, i64 8)
  %1563 = call %nyx_string* @nyx_string_concat(%nyx_string* %1560, %nyx_string* %1562)
  %1564 = load %nyx_string*, %nyx_string** %1146
  %1565 = call %nyx_string* @nyx_string_concat(%nyx_string* %1563, %nyx_string* %1564)
  %1566 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %1567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1566, i64 1)
  %1568 = call %nyx_string* @nyx_string_concat(%nyx_string* %1565, %nyx_string* %1567)
  %1569 = load %nyx_string*, %nyx_string** %1162
  %1570 = call %nyx_string* @nyx_string_concat(%nyx_string* %1568, %nyx_string* %1569)
  %1571 = getelementptr [4 x i8], [4 x i8]* @.str151, i32 0, i32 0
  %1572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1571, i64 3)
  %1573 = call %nyx_string* @nyx_string_concat(%nyx_string* %1570, %nyx_string* %1572)
  %1574 = load %nyx_string*, %nyx_string** %1157
  %1575 = call %nyx_string* @nyx_string_concat(%nyx_string* %1573, %nyx_string* %1574)
  %1576 = getelementptr [7 x i8], [7 x i8]* @.str152, i32 0, i32 0
  %1577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1576, i64 6)
  %1578 = call %nyx_string* @nyx_string_concat(%nyx_string* %1575, %nyx_string* %1577)
  %1579 = getelementptr [14 x i8], [14 x i8]* @.str153, i32 0, i32 0
  %1580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1579, i64 13)
  %1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %1578, %nyx_string* %1580)
  %1582 = getelementptr [7 x i8], [7 x i8]* @.str154, i32 0, i32 0
  %1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1582, i64 6)
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1581, %nyx_string* %1583)
  %1585 = load %nyx_string*, %nyx_string** %1162
  %1586 = call %nyx_string* @nyx_string_concat(%nyx_string* %1584, %nyx_string* %1585)
  %1587 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %1588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1587, i64 1)
  %1589 = call %nyx_string* @nyx_string_concat(%nyx_string* %1586, %nyx_string* %1588)
  %1590 = getelementptr [17 x i8], [17 x i8]* @.str156, i32 0, i32 0
  %1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1590, i64 16)
  %1592 = call %nyx_string* @nyx_string_concat(%nyx_string* %1589, %nyx_string* %1591)
  %1593 = alloca %nyx_string*
  store %nyx_string* %1592, %nyx_string** %1593
  %1594 = load %nyx_string*, %nyx_string** %1152
  %1595 = getelementptr [8 x i8], [8 x i8]* @.str157, i32 0, i32 0
  %1596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1595, i64 7)
  %1597 = call %nyx_string* @nyx_string_concat(%nyx_string* %1594, %nyx_string* %1596)
  %1598 = alloca %nyx_string*
  store %nyx_string* %1597, %nyx_string** %1598
  %1599 = load %nyx_string*, %nyx_string** %1598
  %1600 = load %nyx_string*, %nyx_string** %1593
  %1601 = call i8* @nyx_string_to_cstr(%nyx_string* %1599)
  %1602 = call i1 @nyx_write_file_safe(i8* %1601, %nyx_string* %1600)
  %1603 = getelementptr [6 x i8], [6 x i8]* @.str158, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1603, i64 5)
  %1605 = load %nyx_string*, %nyx_string** %1598
  %1606 = call %nyx_string* @nyx_string_concat(%nyx_string* %1604, %nyx_string* %1605)
  %1607 = call i8* @nyx_string_to_cstr(%nyx_string* %1606)
  %1608 = call i64 @nyx_exec_code(i8* %1607)
  %1609 = alloca i64
  store i64 %1608, i64* %1609
  %1610 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %1611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1610, i64 0)
  %1612 = alloca %nyx_string*
  store %nyx_string* %1611, %nyx_string** %1612
  %1613 = load %nyx_string*, %nyx_string** %1157
  %1614 = call i8* @nyx_string_to_cstr(%nyx_string* %1613)
  %1615 = call i1 @nyx_file_exists(i8* %1614)
  br i1 %1615, label %then330, label %else331
then330:
  %1616 = load %nyx_string*, %nyx_string** %1157
  %1617 = call i8* @nyx_string_to_cstr(%nyx_string* %1616)
  %1618 = call %nyx_string* @nyx_read_file(i8* %1617)
  store %nyx_string* %1618, %nyx_string** %1612
  br label %merge332
else331:
  br label %merge332
merge332:
  %1619 = getelementptr [8 x i8], [8 x i8]* @.str160, i32 0, i32 0
  %1620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1619, i64 7)
  %1621 = load %nyx_string*, %nyx_string** %1152
  %1622 = call %nyx_string* @nyx_string_concat(%nyx_string* %1620, %nyx_string* %1621)
  %1623 = call i8* @nyx_string_to_cstr(%nyx_string* %1622)
  %1624 = call %nyx_string* @nyx_exec(i8* %1623)
  %1625 = alloca i64
  store i64 0, i64* %1625
  %1626 = alloca i64
  store i64 0, i64* %1626
  %1627 = load %nyx_string*, %nyx_string** %1612
  %1628 = getelementptr [2 x i8], [2 x i8]* @.str161, i32 0, i32 0
  %1629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1628, i64 1)
  %1630 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1627, %nyx_string* %1629)
  %1631 = alloca { i64, i8* }*
  store { i64, i8* }* %1630, { i64, i8* }** %1631
  %1632 = alloca i64
  store i64 0, i64* %1632
  %1633 = getelementptr [6 x i8], [6 x i8]* @.str162, i32 0, i32 0
  %1634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1633, i64 5)
  %1635 = alloca %nyx_string*
  store %nyx_string* %1634, %nyx_string** %1635
  %1636 = getelementptr [6 x i8], [6 x i8]* @.str163, i32 0, i32 0
  %1637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1636, i64 5)
  %1638 = alloca %nyx_string*
  store %nyx_string* %1637, %nyx_string** %1638
  %1639 = call i8* @llvm.stacksave()
  br label %while_cond333
while_cond333:
  %1640 = load i64, i64* %1632
  %1641 = load { i64, i8* }*, { i64, i8* }** %1631
  %1642 = call i64 @nyx_array_length({ i64, i8* }* %1641)
  %1643 = icmp slt i64 %1640, %1642
  br i1 %1643, label %while_body334, label %while_end335
while_body334:
  call void @llvm.stackrestore(i8* %1639)
  %1644 = load { i64, i8* }*, { i64, i8* }** %1631
  %1645 = load i64, i64* %1632
  %1646 = call i64 @nyx_array_get_checked({ i64, i8* }* %1644, i64 %1645, i64 2)
  %1647 = inttoptr i64 %1646 to %nyx_string*
  %1648 = alloca %nyx_string*
  store %nyx_string* %1647, %nyx_string** %1648
  %1649 = load %nyx_string*, %nyx_string** %1648
  %1650 = load %nyx_string*, %nyx_string** %1635
  %1651 = call i1 @nyx_string_contains(%nyx_string* %1649, %nyx_string* %1650)
  br i1 %1651, label %then336, label %else337
then336:
  %1652 = load i64, i64* %1625
  %1653 = add i64 %1652, 1
  store i64 %1653, i64* %1625
  br label %merge338
else337:
  %1654 = load %nyx_string*, %nyx_string** %1648
  %1655 = load %nyx_string*, %nyx_string** %1638
  %1656 = call i1 @nyx_string_contains(%nyx_string* %1654, %nyx_string* %1655)
  br i1 %1656, label %then339, label %else340
then339:
  %1657 = load i64, i64* %1626
  %1658 = add i64 %1657, 1
  store i64 %1658, i64* %1626
  br label %merge341
else340:
  br label %merge341
merge341:
  br label %merge338
merge338:
  %1659 = load i64, i64* %1632
  %1660 = add i64 %1659, 1
  store i64 %1660, i64* %1632
  br label %while_cond333
while_end335:
  %1661 = getelementptr %TestResult, %TestResult* null, i32 1
  %1662 = ptrtoint %TestResult* %1661 to i64
  %1663 = call i8* @GC_malloc(i64 %1662)
  %1664 = bitcast i8* %1663 to %TestResult*
  %1665 = load %nyx_string*, %nyx_string** %file.ptr
  %1666 = getelementptr %TestResult, %TestResult* %1664, i32 0, i32 0
  store %nyx_string* %1665, %nyx_string** %1666
  %1667 = load i64, i64* %1625
  %1668 = getelementptr %TestResult, %TestResult* %1664, i32 0, i32 1
  store i64 %1667, i64* %1668
  %1669 = load i64, i64* %1626
  %1670 = getelementptr %TestResult, %TestResult* %1664, i32 0, i32 2
  store i64 %1669, i64* %1670
  %1671 = load %nyx_string*, %nyx_string** %1612
  %1672 = getelementptr %TestResult, %TestResult* %1664, i32 0, i32 3
  store %nyx_string* %1671, %nyx_string** %1672
  %1673 = alloca i1
  store i1 false, i1* %1673
  %1674 = load i64, i64* %1609
  %1675 = icmp eq i64 %1674, 0
  br i1 %1675, label %sc_and_rhs342, label %sc_and_end343
sc_and_rhs342:
  %1676 = load i64, i64* %1626
  %1677 = icmp eq i64 %1676, 0
  store i1 %1677, i1* %1673
  br label %sc_and_end343
sc_and_end343:
  %1678 = load i1, i1* %1673
  %1679 = getelementptr %TestResult, %TestResult* %1664, i32 0, i32 4
  store i1 %1678, i1* %1679
  %1680 = load %TestResult, %TestResult* %1664
  ret %TestResult %1680
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1681 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1682 = load i1, i1* %1681
  br i1 %1682, label %then344, label %else345
then344:
  %1683 = getelementptr [9 x i8], [9 x i8]* @.str164, i32 0, i32 0
  %1684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1683, i64 8)
  %1685 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1686 = load %nyx_string*, %nyx_string** %1685
  %1687 = call %nyx_string* @nyx_string_concat(%nyx_string* %1684, %nyx_string* %1686)
  %1688 = getelementptr [3 x i8], [3 x i8]* @.str165, i32 0, i32 0
  %1689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1688, i64 2)
  %1690 = call %nyx_string* @nyx_string_concat(%nyx_string* %1687, %nyx_string* %1689)
  %1691 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1692 = load i64, i64* %1691
  %1693 = call %nyx_string* @nyx_string_from_int(i64 %1692)
  %1694 = call %nyx_string* @nyx_string_concat(%nyx_string* %1690, %nyx_string* %1693)
  %1695 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1695, i64 7)
  %1697 = call %nyx_string* @nyx_string_concat(%nyx_string* %1694, %nyx_string* %1696)
  %1698 = call i8* @nyx_string_to_cstr(%nyx_string* %1697)
  call void @nyx_print_string(i8* %1698)
  %1699 = load i1, i1* %verbose.ptr
  br i1 %1699, label %then347, label %else348
then347:
  %1700 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1701 = load %nyx_string*, %nyx_string** %1700
  %1702 = call i8* @nyx_string_to_cstr(%nyx_string* %1701)
  call void @nyx_print_string(i8* %1702)
  br label %merge349
else348:
  br label %merge349
merge349:
  br label %merge346
else345:
  %1703 = getelementptr [9 x i8], [9 x i8]* @.str167, i32 0, i32 0
  %1704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1703, i64 8)
  %1705 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1706 = load %nyx_string*, %nyx_string** %1705
  %1707 = call %nyx_string* @nyx_string_concat(%nyx_string* %1704, %nyx_string* %1706)
  %1708 = getelementptr [3 x i8], [3 x i8]* @.str168, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1708, i64 2)
  %1710 = call %nyx_string* @nyx_string_concat(%nyx_string* %1707, %nyx_string* %1709)
  %1711 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1712 = load i64, i64* %1711
  %1713 = call %nyx_string* @nyx_string_from_int(i64 %1712)
  %1714 = call %nyx_string* @nyx_string_concat(%nyx_string* %1710, %nyx_string* %1713)
  %1715 = getelementptr [10 x i8], [10 x i8]* @.str169, i32 0, i32 0
  %1716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1715, i64 9)
  %1717 = call %nyx_string* @nyx_string_concat(%nyx_string* %1714, %nyx_string* %1716)
  %1718 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1719 = load i64, i64* %1718
  %1720 = call %nyx_string* @nyx_string_from_int(i64 %1719)
  %1721 = call %nyx_string* @nyx_string_concat(%nyx_string* %1717, %nyx_string* %1720)
  %1722 = getelementptr [9 x i8], [9 x i8]* @.str170, i32 0, i32 0
  %1723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1722, i64 8)
  %1724 = call %nyx_string* @nyx_string_concat(%nyx_string* %1721, %nyx_string* %1723)
  %1725 = call i8* @nyx_string_to_cstr(%nyx_string* %1724)
  call void @nyx_print_string(i8* %1725)
  %1726 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1727 = load %nyx_string*, %nyx_string** %1726
  %1728 = call i8* @nyx_string_to_cstr(%nyx_string* %1727)
  call void @nyx_print_string(i8* %1728)
  br label %merge346
merge346:
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
  %1729 = getelementptr [1 x i8], [1 x i8]* @.str171, i32 0, i32 0
  %1730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1729, i64 0)
  %1731 = call i8* @nyx_string_to_cstr(%nyx_string* %1730)
  call void @nyx_print_string(i8* %1731)
  %1732 = getelementptr [36 x i8], [36 x i8]* @.str172, i32 0, i32 0
  %1733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1732, i64 35)
  %1734 = call i8* @nyx_string_to_cstr(%nyx_string* %1733)
  call void @nyx_print_string(i8* %1734)
  %1735 = alloca i64
  store i64 0, i64* %1735
  %1736 = alloca i64
  store i64 0, i64* %1736
  %1737 = alloca i64
  store i64 0, i64* %1737
  %1738 = call i8* @llvm.stacksave()
  br label %while_cond350
while_cond350:
  %1739 = load i64, i64* %1737
  %1740 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1741 = call i64 @nyx_array_length({ i64, i8* }* %1740)
  %1742 = icmp slt i64 %1739, %1741
  br i1 %1742, label %while_body351, label %while_end352
while_body351:
  call void @llvm.stackrestore(i8* %1738)
  %1743 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1744 = load i64, i64* %1737
  %1745 = call i64 @nyx_array_get({ i64, i8* }* %1743, i64 %1744)
  %1746 = inttoptr i64 %1745 to %TestResult*
  %1747 = load %TestResult, %TestResult* %1746
  %1748 = alloca %TestResult
  store %TestResult %1747, %TestResult* %1748
  %1749 = getelementptr %TestResult, %TestResult* %1748, i32 0, i32 4
  %1750 = load i1, i1* %1749
  br i1 %1750, label %then353, label %else354
then353:
  %1751 = load i64, i64* %1735
  %1752 = add i64 %1751, 1
  store i64 %1752, i64* %1735
  br label %merge355
else354:
  %1753 = load i64, i64* %1736
  %1754 = add i64 %1753, 1
  store i64 %1754, i64* %1736
  br label %merge355
merge355:
  %1755 = load i64, i64* %1737
  %1756 = add i64 %1755, 1
  store i64 %1756, i64* %1737
  br label %while_cond350
while_end352:
  %1757 = getelementptr [11 x i8], [11 x i8]* @.str173, i32 0, i32 0
  %1758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1757, i64 10)
  %1759 = load i64, i64* %1735
  %1760 = call %nyx_string* @nyx_string_from_int(i64 %1759)
  %1761 = call %nyx_string* @nyx_string_concat(%nyx_string* %1758, %nyx_string* %1760)
  %1762 = getelementptr [10 x i8], [10 x i8]* @.str174, i32 0, i32 0
  %1763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1762, i64 9)
  %1764 = call %nyx_string* @nyx_string_concat(%nyx_string* %1761, %nyx_string* %1763)
  %1765 = load i64, i64* %1736
  %1766 = call %nyx_string* @nyx_string_from_int(i64 %1765)
  %1767 = call %nyx_string* @nyx_string_concat(%nyx_string* %1764, %nyx_string* %1766)
  %1768 = getelementptr [10 x i8], [10 x i8]* @.str175, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1768, i64 9)
  %1770 = call %nyx_string* @nyx_string_concat(%nyx_string* %1767, %nyx_string* %1769)
  %1771 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1772 = call i64 @nyx_array_length({ i64, i8* }* %1771)
  %1773 = call %nyx_string* @nyx_string_from_int(i64 %1772)
  %1774 = call %nyx_string* @nyx_string_concat(%nyx_string* %1770, %nyx_string* %1773)
  %1775 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %1776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1775, i64 7)
  %1777 = call %nyx_string* @nyx_string_concat(%nyx_string* %1774, %nyx_string* %1776)
  %1778 = call i8* @nyx_string_to_cstr(%nyx_string* %1777)
  call void @nyx_print_string(i8* %1778)
  %1779 = getelementptr [11 x i8], [11 x i8]* @.str177, i32 0, i32 0
  %1780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1779, i64 10)
  %1781 = load i64, i64* %total_passed.ptr
  %1782 = call %nyx_string* @nyx_string_from_int(i64 %1781)
  %1783 = call %nyx_string* @nyx_string_concat(%nyx_string* %1780, %nyx_string* %1782)
  %1784 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1784, i64 9)
  %1786 = call %nyx_string* @nyx_string_concat(%nyx_string* %1783, %nyx_string* %1785)
  %1787 = load i64, i64* %total_failed.ptr
  %1788 = call %nyx_string* @nyx_string_from_int(i64 %1787)
  %1789 = call %nyx_string* @nyx_string_concat(%nyx_string* %1786, %nyx_string* %1788)
  %1790 = getelementptr [10 x i8], [10 x i8]* @.str179, i32 0, i32 0
  %1791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1790, i64 9)
  %1792 = call %nyx_string* @nyx_string_concat(%nyx_string* %1789, %nyx_string* %1791)
  %1793 = load i64, i64* %total_passed.ptr
  %1794 = load i64, i64* %total_failed.ptr
  %1795 = add i64 %1793, %1794
  %1796 = call %nyx_string* @nyx_string_from_int(i64 %1795)
  %1797 = call %nyx_string* @nyx_string_concat(%nyx_string* %1792, %nyx_string* %1796)
  %1798 = getelementptr [8 x i8], [8 x i8]* @.str180, i32 0, i32 0
  %1799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1798, i64 7)
  %1800 = call %nyx_string* @nyx_string_concat(%nyx_string* %1797, %nyx_string* %1799)
  %1801 = call i8* @nyx_string_to_cstr(%nyx_string* %1800)
  call void @nyx_print_string(i8* %1801)
  %1802 = alloca i1
  store i1 false, i1* %1802
  %1803 = load i64, i64* %total_failed.ptr
  %1804 = icmp eq i64 %1803, 0
  br i1 %1804, label %sc_and_rhs356, label %sc_and_end357
sc_and_rhs356:
  %1805 = load i64, i64* %1736
  %1806 = icmp eq i64 %1805, 0
  store i1 %1806, i1* %1802
  br label %sc_and_end357
sc_and_end357:
  %1807 = load i1, i1* %1802
  br i1 %1807, label %then358, label %else359
then358:
  %1808 = getelementptr [27 x i8], [27 x i8]* @.str181, i32 0, i32 0
  %1809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1808, i64 26)
  %1810 = call i8* @nyx_string_to_cstr(%nyx_string* %1809)
  call void @nyx_print_string(i8* %1810)
  br label %merge360
else359:
  %1811 = getelementptr [28 x i8], [28 x i8]* @.str182, i32 0, i32 0
  %1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1811, i64 27)
  %1813 = call i8* @nyx_string_to_cstr(%nyx_string* %1812)
  call void @nyx_print_string(i8* %1813)
  br label %merge360
merge360:
  %1814 = getelementptr [36 x i8], [36 x i8]* @.str183, i32 0, i32 0
  %1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1814, i64 35)
  %1816 = call i8* @nyx_string_to_cstr(%nyx_string* %1815)
  call void @nyx_print_string(i8* %1816)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1817 = getelementptr [28 x i8], [28 x i8]* @.str184, i32 0, i32 0
  %1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1817, i64 27)
  %1819 = call i8* @nyx_string_to_cstr(%nyx_string* %1818)
  %1820 = call %nyx_string* @nyx_exec(i8* %1819)
  %1821 = alloca %nyx_string*
  store %nyx_string* %1820, %nyx_string** %1821
  %1822 = load %nyx_string*, %nyx_string** %1821
  %1823 = getelementptr [9 x i8], [9 x i8]* @.str185, i32 0, i32 0
  %1824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1823, i64 8)
  %1825 = call i64 @nyx_string_index_of(%nyx_string* %1822, %nyx_string* %1824)
  %1826 = alloca i64
  store i64 %1825, i64* %1826
  %1827 = load i64, i64* %1826
  %1828 = icmp slt i64 %1827, 0
  br i1 %1828, label %then361, label %else362
then361:
  %1829 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %1830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1829, i64 0)
  ret %nyx_string* %1830
else362:
  br label %merge363
merge363:
  %1831 = load i64, i64* %1826
  %1832 = add i64 %1831, 8
  %1833 = alloca i64
  store i64 %1832, i64* %1833
  %1834 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1834, i64 0)
  %1836 = alloca %nyx_string*
  store %nyx_string* %1835, %nyx_string** %1836
  %1837 = call i8* @llvm.stacksave()
  br label %while_cond364
while_cond364:
  %1838 = load i64, i64* %1833
  %1839 = load %nyx_string*, %nyx_string** %1821
  %1840 = call i64 @nyx_string_byte_length(%nyx_string* %1839)
  %1841 = icmp slt i64 %1838, %1840
  br i1 %1841, label %while_body365, label %while_end366
while_body365:
  call void @llvm.stackrestore(i8* %1837)
  %1842 = load %nyx_string*, %nyx_string** %1821
  %1843 = load i64, i64* %1833
  %1844 = call i8 @nyx_string_char_at(%nyx_string* %1842, i64 %1843)
  %1845 = zext i8 %1844 to i64
  %1846 = alloca i64
  store i64 %1845, i64* %1846
  %1847 = alloca i1
  store i1 false, i1* %1847
  %1848 = load i64, i64* %1846
  %1849 = icmp sge i64 %1848, 48
  br i1 %1849, label %sc_and_rhs367, label %sc_and_end368
sc_and_rhs367:
  %1850 = load i64, i64* %1846
  %1851 = icmp sle i64 %1850, 57
  store i1 %1851, i1* %1847
  br label %sc_and_end368
sc_and_end368:
  %1852 = load i1, i1* %1847
  br i1 %1852, label %then369, label %else370
then369:
  %1853 = load %nyx_string*, %nyx_string** %1836
  %1854 = load %nyx_string*, %nyx_string** %1821
  %1855 = load i64, i64* %1833
  %1856 = load i64, i64* %1833
  %1857 = add i64 %1856, 1
  %1858 = call %nyx_string* @nyx_string_substring(%nyx_string* %1854, i64 %1855, i64 %1857)
  %1859 = call %nyx_string* @nyx_string_concat(%nyx_string* %1853, %nyx_string* %1858)
  store %nyx_string* %1859, %nyx_string** %1836
  %1860 = load i64, i64* %1833
  %1861 = add i64 %1860, 1
  store i64 %1861, i64* %1833
  br label %merge371
else370:
  %1862 = load %nyx_string*, %nyx_string** %1821
  %1863 = call i64 @nyx_string_byte_length(%nyx_string* %1862)
  store i64 %1863, i64* %1833
  br label %merge371
merge371:
  br label %while_cond364
while_end366:
  %1864 = load %nyx_string*, %nyx_string** %1836
  ret %nyx_string* %1864
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1865 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1865, i64 9)
  %1867 = load %nyx_string*, %nyx_string** %path.ptr
  %1868 = call %nyx_string* @nyx_string_concat(%nyx_string* %1866, %nyx_string* %1867)
  %1869 = getelementptr [2 x i8], [2 x i8]* @.str189, i32 0, i32 0
  %1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1869, i64 1)
  %1871 = call %nyx_string* @nyx_string_concat(%nyx_string* %1868, %nyx_string* %1870)
  %1872 = call i8* @nyx_string_to_cstr(%nyx_string* %1871)
  %1873 = call i64 @nyx_exec_code(i8* %1872)
  %1874 = icmp eq i64 %1873, 0
  ret i1 %1874
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1875 = call %nyx_string* @cov_clang_major()
  %1876 = alloca %nyx_string*
  store %nyx_string* %1875, %nyx_string** %1876
  %1877 = load %nyx_string*, %nyx_string** %1876
  %1878 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %1879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1878, i64 0)
  %1880 = call i1 @nyx_string_equals(%nyx_string* %1877, %nyx_string* %1879)
  %1881 = xor i1 %1880, true
  br i1 %1881, label %then372, label %else373
then372:
  %1882 = getelementptr [26 x i8], [26 x i8]* @.str191, i32 0, i32 0
  %1883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1882, i64 25)
  %1884 = load %nyx_string*, %nyx_string** %1876
  %1885 = call %nyx_string* @nyx_string_concat(%nyx_string* %1883, %nyx_string* %1884)
  %1886 = getelementptr [13 x i8], [13 x i8]* @.str192, i32 0, i32 0
  %1887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1886, i64 12)
  %1888 = call %nyx_string* @nyx_string_concat(%nyx_string* %1885, %nyx_string* %1887)
  %1889 = call i8* @nyx_string_to_cstr(%nyx_string* %1888)
  %1890 = call %nyx_string* @nyx_exec(i8* %1889)
  %1891 = call %nyx_string* @nyx_string_trim(%nyx_string* %1890)
  %1892 = alloca %nyx_string*
  store %nyx_string* %1891, %nyx_string** %1892
  %1893 = load %nyx_string*, %nyx_string** %1892
  %1894 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %1895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1894, i64 0)
  %1896 = call i1 @nyx_string_equals(%nyx_string* %1893, %nyx_string* %1895)
  %1897 = xor i1 %1896, true
  br i1 %1897, label %then375, label %else376
then375:
  %1898 = load %nyx_string*, %nyx_string** %1892
  ret %nyx_string* %1898
else376:
  br label %merge377
merge377:
  br label %merge374
else373:
  br label %merge374
merge374:
  %1899 = getelementptr [37 x i8], [37 x i8]* @.str194, i32 0, i32 0
  %1900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1899, i64 36)
  %1901 = call i8* @nyx_string_to_cstr(%nyx_string* %1900)
  %1902 = call %nyx_string* @nyx_exec(i8* %1901)
  %1903 = call %nyx_string* @nyx_string_trim(%nyx_string* %1902)
  ret %nyx_string* %1903
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1904 = call { i64, i8* }* @nyx_array_new_ptr()
  %1905 = alloca { i64, i8* }*
  store { i64, i8* }* %1904, { i64, i8* }** %1905
  %1906 = alloca i64
  store i64 0, i64* %1906
  %1907 = alloca i64
  store i64 0, i64* %1907
  %1908 = call i8* @llvm.stacksave()
  br label %while_cond378
while_cond378:
  %1909 = load i64, i64* %1907
  %1910 = load %nyx_string*, %nyx_string** %line.ptr
  %1911 = call i64 @nyx_string_byte_length(%nyx_string* %1910)
  %1912 = icmp slt i64 %1909, %1911
  br i1 %1912, label %while_body379, label %while_end380
while_body379:
  call void @llvm.stackrestore(i8* %1908)
  %1913 = load %nyx_string*, %nyx_string** %line.ptr
  %1914 = load i64, i64* %1907
  %1915 = call i8 @nyx_string_char_at(%nyx_string* %1913, i64 %1914)
  %1916 = zext i8 %1915 to i64
  %1917 = icmp eq i64 %1916, 9
  br i1 %1917, label %then381, label %else382
then381:
  %1918 = load { i64, i8* }*, { i64, i8* }** %1905
  %1919 = load %nyx_string*, %nyx_string** %line.ptr
  %1920 = load i64, i64* %1906
  %1921 = load i64, i64* %1907
  %1922 = call %nyx_string* @nyx_string_substring(%nyx_string* %1919, i64 %1920, i64 %1921)
  %1923 = ptrtoint %nyx_string* %1922 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1918, i64 %1923, i64 2)
  %1924 = load i64, i64* %1907
  %1925 = add i64 %1924, 1
  store i64 %1925, i64* %1906
  br label %merge383
else382:
  br label %merge383
merge383:
  %1926 = load i64, i64* %1907
  %1927 = add i64 %1926, 1
  store i64 %1927, i64* %1907
  br label %while_cond378
while_end380:
  %1928 = load { i64, i8* }*, { i64, i8* }** %1905
  %1929 = load %nyx_string*, %nyx_string** %line.ptr
  %1930 = load i64, i64* %1906
  %1931 = load %nyx_string*, %nyx_string** %line.ptr
  %1932 = call i64 @nyx_string_byte_length(%nyx_string* %1931)
  %1933 = call %nyx_string* @nyx_string_substring(%nyx_string* %1929, i64 %1930, i64 %1932)
  %1934 = ptrtoint %nyx_string* %1933 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1928, i64 %1934, i64 2)
  %1935 = load { i64, i8* }*, { i64, i8* }** %1905
  ret { i64, i8* }* %1935
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1936 = load i64, i64* %n.ptr
  %1937 = call %nyx_string* @nyx_string_from_int(i64 %1936)
  %1938 = alloca %nyx_string*
  store %nyx_string* %1937, %nyx_string** %1938
  %1939 = getelementptr [2 x i8], [2 x i8]* @.str195, i32 0, i32 0
  %1940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1939, i64 1)
  %1941 = alloca %nyx_string*
  store %nyx_string* %1940, %nyx_string** %1941
  %1942 = call i8* @llvm.stacksave()
  br label %while_cond384
while_cond384:
  %1943 = load %nyx_string*, %nyx_string** %1938
  %1944 = call i64 @nyx_string_byte_length(%nyx_string* %1943)
  %1945 = icmp slt i64 %1944, 9
  br i1 %1945, label %while_body385, label %while_end386
while_body385:
  call void @llvm.stackrestore(i8* %1942)
  %1946 = load %nyx_string*, %nyx_string** %1941
  %1947 = load %nyx_string*, %nyx_string** %1938
  %1948 = call %nyx_string* @nyx_string_concat(%nyx_string* %1946, %nyx_string* %1947)
  store %nyx_string* %1948, %nyx_string** %1938
  br label %while_cond384
while_end386:
  %1949 = load %nyx_string*, %nyx_string** %1938
  ret %nyx_string* %1949
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1950 = call i8* @nyx_map_new(i32 0)
  %1951 = alloca i8*
  store i8* %1950, i8** %1951
  %1952 = load %nyx_string*, %nyx_string** %show.ptr
  %1953 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %1954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1953, i64 1)
  %1955 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1952, %nyx_string* %1954)
  %1956 = alloca { i64, i8* }*
  store { i64, i8* }* %1955, { i64, i8* }** %1956
  %1957 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1957, i64 0)
  %1959 = alloca %nyx_string*
  store %nyx_string* %1958, %nyx_string** %1959
  %1960 = alloca i64
  store i64 0, i64* %1960
  %1961 = getelementptr [3 x i8], [3 x i8]* @.str198, i32 0, i32 0
  %1962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1961, i64 2)
  %1963 = alloca %nyx_string*
  store %nyx_string* %1962, %nyx_string** %1963
  %1964 = getelementptr [4 x i8], [4 x i8]* @.str199, i32 0, i32 0
  %1965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1964, i64 3)
  %1966 = alloca %nyx_string*
  store %nyx_string* %1965, %nyx_string** %1966
  %1967 = getelementptr [2 x i8], [2 x i8]* @.str200, i32 0, i32 0
  %1968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1967, i64 1)
  %1969 = alloca %nyx_string*
  store %nyx_string* %1968, %nyx_string** %1969
  %1970 = getelementptr [2 x i8], [2 x i8]* @.str201, i32 0, i32 0
  %1971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1970, i64 1)
  %1972 = alloca %nyx_string*
  store %nyx_string* %1971, %nyx_string** %1972
  %1973 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %1974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1973, i64 0)
  %1975 = alloca %nyx_string*
  store %nyx_string* %1974, %nyx_string** %1975
  %1976 = getelementptr [14 x i8], [14 x i8]* @.str203, i32 0, i32 0
  %1977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1976, i64 13)
  %1978 = alloca %nyx_string*
  store %nyx_string* %1977, %nyx_string** %1978
  %1979 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %1980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1979, i64 1)
  %1981 = alloca %nyx_string*
  store %nyx_string* %1980, %nyx_string** %1981
  %1982 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %1983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1982, i64 1)
  %1984 = alloca %nyx_string*
  store %nyx_string* %1983, %nyx_string** %1984
  %1985 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1985, i64 1)
  %1987 = alloca %nyx_string*
  store %nyx_string* %1986, %nyx_string** %1987
  %1988 = getelementptr [2 x i8], [2 x i8]* @.str207, i32 0, i32 0
  %1989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1988, i64 1)
  %1990 = alloca %nyx_string*
  store %nyx_string* %1989, %nyx_string** %1990
  %1991 = call i8* @llvm.stacksave()
  br label %while_cond387
while_cond387:
  %1992 = load i64, i64* %1960
  %1993 = load { i64, i8* }*, { i64, i8* }** %1956
  %1994 = call i64 @nyx_array_length({ i64, i8* }* %1993)
  %1995 = icmp slt i64 %1992, %1994
  br i1 %1995, label %while_body388, label %while_end389
while_body388:
  call void @llvm.stackrestore(i8* %1991)
  %1996 = load { i64, i8* }*, { i64, i8* }** %1956
  %1997 = load i64, i64* %1960
  %1998 = call i64 @nyx_array_get_checked({ i64, i8* }* %1996, i64 %1997, i64 2)
  %1999 = inttoptr i64 %1998 to %nyx_string*
  %2000 = alloca %nyx_string*
  store %nyx_string* %1999, %nyx_string** %2000
  %2001 = alloca i1
  store i1 false, i1* %2001
  %2002 = alloca i1
  store i1 false, i1* %2002
  %2003 = load %nyx_string*, %nyx_string** %2000
  %2004 = load %nyx_string*, %nyx_string** %1963
  %2005 = call i1 @nyx_string_starts_with(%nyx_string* %2003, %nyx_string* %2004)
  br i1 %2005, label %sc_and_rhs390, label %sc_and_end391
sc_and_rhs390:
  %2006 = load %nyx_string*, %nyx_string** %2000
  %2007 = load %nyx_string*, %nyx_string** %1966
  %2008 = call i1 @nyx_string_starts_with(%nyx_string* %2006, %nyx_string* %2007)
  %2009 = xor i1 %2008, true
  store i1 %2009, i1* %2002
  br label %sc_and_end391
sc_and_end391:
  %2010 = load i1, i1* %2002
  br i1 %2010, label %sc_and_rhs392, label %sc_and_end393
sc_and_rhs392:
  %2011 = load %nyx_string*, %nyx_string** %2000
  %2012 = load %nyx_string*, %nyx_string** %1969
  %2013 = call i1 @nyx_string_ends_with(%nyx_string* %2011, %nyx_string* %2012)
  store i1 %2013, i1* %2001
  br label %sc_and_end393
sc_and_end393:
  %2014 = load i1, i1* %2001
  br i1 %2014, label %then394, label %else395
then394:
  %2015 = load %nyx_string*, %nyx_string** %2000
  %2016 = load %nyx_string*, %nyx_string** %2000
  %2017 = call i64 @nyx_string_byte_length(%nyx_string* %2016)
  %2018 = sub i64 %2017, 1
  %2019 = call %nyx_string* @nyx_string_substring(%nyx_string* %2015, i64 2, i64 %2018)
  %2020 = alloca %nyx_string*
  store %nyx_string* %2019, %nyx_string** %2020
  %2021 = load %nyx_string*, %nyx_string** %2020
  %2022 = load %nyx_string*, %nyx_string** %1972
  %2023 = call i64 @nyx_string_index_of(%nyx_string* %2021, %nyx_string* %2022)
  %2024 = alloca i64
  store i64 %2023, i64* %2024
  %2025 = load i64, i64* %2024
  %2026 = icmp sge i64 %2025, 0
  br i1 %2026, label %then397, label %else398
then397:
  %2027 = load %nyx_string*, %nyx_string** %2020
  %2028 = load i64, i64* %2024
  %2029 = add i64 %2028, 1
  %2030 = load %nyx_string*, %nyx_string** %2020
  %2031 = call i64 @nyx_string_byte_length(%nyx_string* %2030)
  %2032 = call %nyx_string* @nyx_string_substring(%nyx_string* %2027, i64 %2029, i64 %2031)
  store %nyx_string* %2032, %nyx_string** %2020
  br label %merge399
else398:
  br label %merge399
merge399:
  %2033 = load %nyx_string*, %nyx_string** %2020
  store %nyx_string* %2033, %nyx_string** %1959
  br label %merge396
else395:
  %2034 = alloca i1
  store i1 false, i1* %2034
  %2035 = load %nyx_string*, %nyx_string** %1959
  %2036 = load %nyx_string*, %nyx_string** %1975
  %2037 = call i1 @nyx_string_equals(%nyx_string* %2035, %nyx_string* %2036)
  %2038 = xor i1 %2037, true
  br i1 %2038, label %sc_and_rhs400, label %sc_and_end401
sc_and_rhs400:
  %2039 = load %nyx_string*, %nyx_string** %2000
  %2040 = load %nyx_string*, %nyx_string** %1978
  %2041 = call i1 @nyx_string_contains(%nyx_string* %2039, %nyx_string* %2040)
  store i1 %2041, i1* %2034
  br label %sc_and_end401
sc_and_end401:
  %2042 = load i1, i1* %2034
  br i1 %2042, label %then402, label %else403
then402:
  %2043 = load %nyx_string*, %nyx_string** %2000
  %2044 = load %nyx_string*, %nyx_string** %1981
  %2045 = call i64 @nyx_string_index_of(%nyx_string* %2043, %nyx_string* %2044)
  %2046 = alloca i64
  store i64 %2045, i64* %2046
  %2047 = load %nyx_string*, %nyx_string** %2000
  %2048 = load %nyx_string*, %nyx_string** %1984
  %2049 = call i64 @nyx_string_index_of(%nyx_string* %2047, %nyx_string* %2048)
  %2050 = alloca i64
  store i64 %2049, i64* %2050
  %2051 = alloca i1
  store i1 false, i1* %2051
  %2052 = load i64, i64* %2046
  %2053 = icmp sge i64 %2052, 0
  br i1 %2053, label %sc_and_rhs405, label %sc_and_end406
sc_and_rhs405:
  %2054 = load i64, i64* %2050
  %2055 = load i64, i64* %2046
  %2056 = icmp sgt i64 %2054, %2055
  store i1 %2056, i1* %2051
  br label %sc_and_end406
sc_and_end406:
  %2057 = load i1, i1* %2051
  br i1 %2057, label %then407, label %else408
then407:
  %2058 = load %nyx_string*, %nyx_string** %2000
  %2059 = load i64, i64* %2046
  %2060 = add i64 %2059, 1
  %2061 = load i64, i64* %2050
  %2062 = call %nyx_string* @nyx_string_substring(%nyx_string* %2058, i64 %2060, i64 %2061)
  %2063 = load %nyx_string*, %nyx_string** %1987
  %2064 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2062, %nyx_string* %2063)
  %2065 = alloca { i64, i8* }*
  store { i64, i8* }* %2064, { i64, i8* }** %2065
  %2066 = alloca i64
  store i64 0, i64* %2066
  %2067 = call i8* @llvm.stacksave()
  br label %while_cond410
while_cond410:
  %2068 = load i64, i64* %2066
  %2069 = load { i64, i8* }*, { i64, i8* }** %2065
  %2070 = call i64 @nyx_array_length({ i64, i8* }* %2069)
  %2071 = icmp slt i64 %2068, %2070
  br i1 %2071, label %while_body411, label %while_end412
while_body411:
  call void @llvm.stackrestore(i8* %2067)
  %2072 = load { i64, i8* }*, { i64, i8* }** %2065
  %2073 = load i64, i64* %2066
  %2074 = call i64 @nyx_array_get_checked({ i64, i8* }* %2072, i64 %2073, i64 2)
  %2075 = inttoptr i64 %2074 to %nyx_string*
  %2076 = alloca %nyx_string*
  store %nyx_string* %2075, %nyx_string** %2076
  %2077 = load %nyx_string*, %nyx_string** %2076
  %2078 = call %nyx_string* @nyx_string_trim(%nyx_string* %2077)
  %2079 = call i64 @nyx_string_to_int(%nyx_string* %2078)
  %2080 = icmp sgt i64 %2079, 0
  br i1 %2080, label %then413, label %else414
then413:
  %2081 = load i8*, i8** %1951
  %2082 = load %nyx_string*, %nyx_string** %1959
  %2083 = load %nyx_string*, %nyx_string** %1990
  %2084 = call i8* @nyx_string_to_cstr(%nyx_string* %2082)
  %2085 = call i8* @nyx_string_to_cstr(%nyx_string* %2083)
  call void @nyx_map_insert_str(i8* %2081, i8* %2084, i8* %2085)
  br label %merge415
else414:
  br label %merge415
merge415:
  %2086 = load i64, i64* %2066
  %2087 = add i64 %2086, 1
  store i64 %2087, i64* %2066
  br label %while_cond410
while_end412:
  br label %merge409
else408:
  br label %merge409
merge409:
  br label %merge404
else403:
  br label %merge404
merge404:
  br label %merge396
merge396:
  %2088 = load i64, i64* %1960
  %2089 = add i64 %2088, 1
  store i64 %2089, i64* %1960
  br label %while_cond387
while_end389:
  %2090 = load i8*, i8** %1951
  ret i8* %2090
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2091 = call { i64, i8* }* @nyx_array_new_ptr()
  %2092 = alloca { i64, i8* }*
  store { i64, i8* }* %2091, { i64, i8* }** %2092
  %2093 = getelementptr [4 x i8], [4 x i8]* @.str208, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2093, i64 3)
  %2095 = call i8* @nyx_string_to_cstr(%nyx_string* %2094)
  %2096 = call i1 @nyx_file_exists(i8* %2095)
  %2097 = xor i1 %2096, true
  br i1 %2097, label %then416, label %else417
then416:
  %2098 = load { i64, i8* }*, { i64, i8* }** %2092
  ret { i64, i8* }* %2098
else417:
  br label %merge418
merge418:
  %2099 = getelementptr [50 x i8], [50 x i8]* @.str209, i32 0, i32 0
  %2100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2099, i64 49)
  %2101 = call i8* @nyx_string_to_cstr(%nyx_string* %2100)
  %2102 = call %nyx_string* @nyx_exec(i8* %2101)
  %2103 = alloca %nyx_string*
  store %nyx_string* %2102, %nyx_string** %2103
  %2104 = load %nyx_string*, %nyx_string** %2103
  %2105 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2105, i64 1)
  %2107 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2104, %nyx_string* %2106)
  %2108 = alloca { i64, i8* }*
  store { i64, i8* }* %2107, { i64, i8* }** %2108
  %2109 = alloca i64
  store i64 0, i64* %2109
  %2110 = getelementptr [4 x i8], [4 x i8]* @.str211, i32 0, i32 0
  %2111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2110, i64 3)
  %2112 = alloca %nyx_string*
  store %nyx_string* %2111, %nyx_string** %2112
  %2113 = getelementptr [9 x i8], [9 x i8]* @.str212, i32 0, i32 0
  %2114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2113, i64 8)
  %2115 = alloca %nyx_string*
  store %nyx_string* %2114, %nyx_string** %2115
  %2116 = call i8* @llvm.stacksave()
  br label %while_cond419
while_cond419:
  %2117 = load i64, i64* %2109
  %2118 = load { i64, i8* }*, { i64, i8* }** %2108
  %2119 = call i64 @nyx_array_length({ i64, i8* }* %2118)
  %2120 = icmp slt i64 %2117, %2119
  br i1 %2120, label %while_body420, label %while_end421
while_body420:
  call void @llvm.stackrestore(i8* %2116)
  %2121 = load { i64, i8* }*, { i64, i8* }** %2108
  %2122 = load i64, i64* %2109
  %2123 = call i64 @nyx_array_get_checked({ i64, i8* }* %2121, i64 %2122, i64 2)
  %2124 = inttoptr i64 %2123 to %nyx_string*
  %2125 = alloca %nyx_string*
  store %nyx_string* %2124, %nyx_string** %2125
  %2126 = load %nyx_string*, %nyx_string** %2125
  %2127 = call %nyx_string* @nyx_string_trim(%nyx_string* %2126)
  %2128 = alloca %nyx_string*
  store %nyx_string* %2127, %nyx_string** %2128
  %2129 = alloca i1
  store i1 false, i1* %2129
  %2130 = load %nyx_string*, %nyx_string** %2128
  %2131 = load %nyx_string*, %nyx_string** %2112
  %2132 = call i1 @nyx_string_ends_with(%nyx_string* %2130, %nyx_string* %2131)
  br i1 %2132, label %sc_and_rhs422, label %sc_and_end423
sc_and_rhs422:
  %2133 = load %nyx_string*, %nyx_string** %2128
  %2134 = load %nyx_string*, %nyx_string** %2115
  %2135 = call i1 @nyx_string_ends_with(%nyx_string* %2133, %nyx_string* %2134)
  %2136 = xor i1 %2135, true
  store i1 %2136, i1* %2129
  br label %sc_and_end423
sc_and_end423:
  %2137 = load i1, i1* %2129
  br i1 %2137, label %then424, label %else425
then424:
  %2138 = load { i64, i8* }*, { i64, i8* }** %2092
  %2139 = load %nyx_string*, %nyx_string** %2128
  %2140 = load %nyx_string*, %nyx_string** %2128
  %2141 = call i64 @nyx_string_byte_length(%nyx_string* %2140)
  %2142 = sub i64 %2141, 3
  %2143 = call %nyx_string* @nyx_string_substring(%nyx_string* %2139, i64 0, i64 %2142)
  %2144 = ptrtoint %nyx_string* %2143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2138, i64 %2144, i64 2)
  br label %merge426
else425:
  br label %merge426
merge426:
  %2145 = load i64, i64* %2109
  %2146 = add i64 %2145, 1
  store i64 %2146, i64* %2109
  br label %while_cond419
while_end421:
  %2147 = load { i64, i8* }*, { i64, i8* }** %2092
  ret { i64, i8* }* %2147
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
  %2148 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %2149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2148, i64 0)
  %2150 = alloca %nyx_string*
  store %nyx_string* %2149, %nyx_string** %2150
  %2151 = alloca i64
  store i64 0, i64* %2151
  %2152 = getelementptr [9 x i8], [9 x i8]* @.str214, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2152, i64 8)
  %2154 = alloca %nyx_string*
  store %nyx_string* %2153, %nyx_string** %2154
  %2155 = getelementptr [3 x i8], [3 x i8]* @.str215, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2155, i64 2)
  %2157 = alloca %nyx_string*
  store %nyx_string* %2156, %nyx_string** %2157
  %2158 = call i8* @llvm.stacksave()
  br label %while_cond427
while_cond427:
  %2159 = load i64, i64* %2151
  %2160 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2161 = call i64 @nyx_array_length({ i64, i8* }* %2160)
  %2162 = icmp slt i64 %2159, %2161
  br i1 %2162, label %while_body428, label %while_end429
while_body428:
  call void @llvm.stackrestore(i8* %2158)
  %2163 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2164 = load i64, i64* %2151
  %2165 = call i64 @nyx_array_get_checked({ i64, i8* }* %2163, i64 %2164, i64 2)
  %2166 = inttoptr i64 %2165 to %nyx_string*
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = load %nyx_string*, %nyx_string** %2150
  %2169 = load %nyx_string*, %nyx_string** %2154
  %2170 = call %nyx_string* @nyx_string_concat(%nyx_string* %2168, %nyx_string* %2169)
  %2171 = load %nyx_string*, %nyx_string** %2167
  %2172 = call %nyx_string* @nyx_string_concat(%nyx_string* %2170, %nyx_string* %2171)
  %2173 = load %nyx_string*, %nyx_string** %2157
  %2174 = call %nyx_string* @nyx_string_concat(%nyx_string* %2172, %nyx_string* %2173)
  store %nyx_string* %2174, %nyx_string** %2150
  %2175 = load i64, i64* %2151
  %2176 = add i64 %2175, 1
  store i64 %2176, i64* %2151
  br label %while_cond427
while_end429:
  %2177 = load %nyx_string*, %nyx_string** %2150
  %2178 = getelementptr [36 x i8], [36 x i8]* @.str216, i32 0, i32 0
  %2179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2178, i64 35)
  %2180 = call %nyx_string* @nyx_string_concat(%nyx_string* %2177, %nyx_string* %2179)
  store %nyx_string* %2180, %nyx_string** %2150
  %2181 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2182 = getelementptr [13 x i8], [13 x i8]* @.str217, i32 0, i32 0
  %2183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2182, i64 12)
  %2184 = call %nyx_string* @nyx_string_concat(%nyx_string* %2181, %nyx_string* %2183)
  %2185 = load %nyx_string*, %nyx_string** %2150
  %2186 = call i8* @nyx_string_to_cstr(%nyx_string* %2184)
  %2187 = call i1 @nyx_write_file_safe(i8* %2186, %nyx_string* %2185)
  %2188 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2189 = getelementptr [14 x i8], [14 x i8]* @.str218, i32 0, i32 0
  %2190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2189, i64 13)
  %2191 = call %nyx_string* @nyx_string_concat(%nyx_string* %2188, %nyx_string* %2190)
  %2192 = alloca %nyx_string*
  store %nyx_string* %2191, %nyx_string** %2192
  %2193 = getelementptr [13 x i8], [13 x i8]* @.str219, i32 0, i32 0
  %2194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2193, i64 12)
  %2195 = getelementptr [8 x i8], [8 x i8]* @.str220, i32 0, i32 0
  %2196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2195, i64 7)
  %2197 = call %nyx_string* @nyx_string_concat(%nyx_string* %2194, %nyx_string* %2196)
  %2198 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2199 = call %nyx_string* @nyx_string_concat(%nyx_string* %2197, %nyx_string* %2198)
  %2200 = getelementptr [19 x i8], [19 x i8]* @.str221, i32 0, i32 0
  %2201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2200, i64 18)
  %2202 = call %nyx_string* @nyx_string_concat(%nyx_string* %2199, %nyx_string* %2201)
  %2203 = getelementptr [5 x i8], [5 x i8]* @.str222, i32 0, i32 0
  %2204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2203, i64 4)
  %2205 = call %nyx_string* @nyx_string_concat(%nyx_string* %2202, %nyx_string* %2204)
  %2206 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2207 = call %nyx_string* @nyx_string_concat(%nyx_string* %2205, %nyx_string* %2206)
  %2208 = getelementptr [24 x i8], [24 x i8]* @.str223, i32 0, i32 0
  %2209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2208, i64 23)
  %2210 = call %nyx_string* @nyx_string_concat(%nyx_string* %2207, %nyx_string* %2209)
  %2211 = getelementptr [5 x i8], [5 x i8]* @.str224, i32 0, i32 0
  %2212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2211, i64 4)
  %2213 = call %nyx_string* @nyx_string_concat(%nyx_string* %2210, %nyx_string* %2212)
  %2214 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2215 = call %nyx_string* @nyx_string_concat(%nyx_string* %2213, %nyx_string* %2214)
  %2216 = getelementptr [3 x i8], [3 x i8]* @.str225, i32 0, i32 0
  %2217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2216, i64 2)
  %2218 = call %nyx_string* @nyx_string_concat(%nyx_string* %2215, %nyx_string* %2217)
  %2219 = getelementptr [137 x i8], [137 x i8]* @.str226, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2219, i64 136)
  %2221 = call %nyx_string* @nyx_string_concat(%nyx_string* %2218, %nyx_string* %2220)
  %2222 = getelementptr [43 x i8], [43 x i8]* @.str227, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2222, i64 42)
  %2224 = call %nyx_string* @nyx_string_concat(%nyx_string* %2221, %nyx_string* %2223)
  %2225 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2226 = call %nyx_string* @nyx_string_concat(%nyx_string* %2224, %nyx_string* %2225)
  %2227 = getelementptr [38 x i8], [38 x i8]* @.str228, i32 0, i32 0
  %2228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2227, i64 37)
  %2229 = call %nyx_string* @nyx_string_concat(%nyx_string* %2226, %nyx_string* %2228)
  %2230 = load %nyx_string*, %nyx_string** %2192
  %2231 = call %nyx_string* @nyx_string_concat(%nyx_string* %2229, %nyx_string* %2230)
  %2232 = getelementptr [24 x i8], [24 x i8]* @.str229, i32 0, i32 0
  %2233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2232, i64 23)
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2231, %nyx_string* %2233)
  %2235 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2236 = call %nyx_string* @nyx_string_concat(%nyx_string* %2234, %nyx_string* %2235)
  %2237 = getelementptr [21 x i8], [21 x i8]* @.str230, i32 0, i32 0
  %2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2237, i64 20)
  %2239 = call %nyx_string* @nyx_string_concat(%nyx_string* %2236, %nyx_string* %2238)
  %2240 = getelementptr [7 x i8], [7 x i8]* @.str231, i32 0, i32 0
  %2241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2240, i64 6)
  %2242 = call %nyx_string* @nyx_string_concat(%nyx_string* %2239, %nyx_string* %2241)
  %2243 = getelementptr [17 x i8], [17 x i8]* @.str232, i32 0, i32 0
  %2244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2243, i64 16)
  %2245 = call %nyx_string* @nyx_string_concat(%nyx_string* %2242, %nyx_string* %2244)
  %2246 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2247 = call %nyx_string* @nyx_string_concat(%nyx_string* %2245, %nyx_string* %2246)
  %2248 = getelementptr [19 x i8], [19 x i8]* @.str233, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2248, i64 18)
  %2250 = call %nyx_string* @nyx_string_concat(%nyx_string* %2247, %nyx_string* %2249)
  %2251 = getelementptr [10 x i8], [10 x i8]* @.str234, i32 0, i32 0
  %2252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2251, i64 9)
  %2253 = call %nyx_string* @nyx_string_concat(%nyx_string* %2250, %nyx_string* %2252)
  %2254 = alloca %nyx_string*
  store %nyx_string* %2253, %nyx_string** %2254
  %2255 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2256 = getelementptr [13 x i8], [13 x i8]* @.str235, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2256, i64 12)
  %2258 = call %nyx_string* @nyx_string_concat(%nyx_string* %2255, %nyx_string* %2257)
  %2259 = load %nyx_string*, %nyx_string** %2254
  %2260 = call i8* @nyx_string_to_cstr(%nyx_string* %2258)
  %2261 = call i1 @nyx_write_file_safe(i8* %2260, %nyx_string* %2259)
  %2262 = getelementptr [7 x i8], [7 x i8]* @.str236, i32 0, i32 0
  %2263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2262, i64 6)
  %2264 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2265 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2264)
  %2266 = getelementptr [14 x i8], [14 x i8]* @.str237, i32 0, i32 0
  %2267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2266, i64 13)
  %2268 = call %nyx_string* @nyx_string_concat(%nyx_string* %2265, %nyx_string* %2267)
  %2269 = call i8* @nyx_string_to_cstr(%nyx_string* %2268)
  %2270 = call i64 @nyx_exec_code(i8* %2269)
  %2271 = load %nyx_string*, %nyx_string** %2192
  ret %nyx_string* %2271
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
  %2272 = getelementptr [9 x i8], [9 x i8]* @.str238, i32 0, i32 0
  %2273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2272, i64 8)
  %2274 = call i8* @nyx_string_to_cstr(%nyx_string* %2273)
  %2275 = call %nyx_string* @nyx_getenv(i8* %2274)
  %2276 = alloca %nyx_string*
  store %nyx_string* %2275, %nyx_string** %2276
  %2277 = getelementptr [4 x i8], [4 x i8]* @.str239, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2277, i64 3)
  %2279 = call i8* @nyx_string_to_cstr(%nyx_string* %2278)
  %2280 = call %nyx_string* @nyx_getenv(i8* %2279)
  %2281 = alloca %nyx_string*
  store %nyx_string* %2280, %nyx_string** %2281
  %2282 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %2283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2282, i64 0)
  %2284 = call i8* @nyx_string_to_cstr(%nyx_string* %2283)
  call void @nyx_print_string(i8* %2284)
  %2285 = getelementptr [36 x i8], [36 x i8]* @.str241, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2285, i64 35)
  %2287 = call i8* @nyx_string_to_cstr(%nyx_string* %2286)
  call void @nyx_print_string(i8* %2287)
  %2288 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %2289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2288, i64 0)
  %2290 = alloca %nyx_string*
  store %nyx_string* %2289, %nyx_string** %2290
  %2291 = alloca i64
  store i64 0, i64* %2291
  %2292 = call i8* @nyx_map_new(i32 0)
  %2293 = alloca i8*
  store i8* %2292, i8** %2293
  %2294 = call { i64, i8* }* @nyx_array_new_ptr()
  %2295 = alloca { i64, i8* }*
  store { i64, i8* }* %2294, { i64, i8* }** %2295
  %2296 = alloca i64
  store i64 0, i64* %2296
  %2297 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %2298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2297, i64 1)
  %2299 = alloca %nyx_string*
  store %nyx_string* %2298, %nyx_string** %2299
  %2300 = getelementptr [9 x i8], [9 x i8]* @.str244, i32 0, i32 0
  %2301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2300, i64 8)
  %2302 = alloca %nyx_string*
  store %nyx_string* %2301, %nyx_string** %2302
  %2303 = getelementptr [3 x i8], [3 x i8]* @.str245, i32 0, i32 0
  %2304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2303, i64 2)
  %2305 = alloca %nyx_string*
  store %nyx_string* %2304, %nyx_string** %2305
  %2306 = getelementptr [2 x i8], [2 x i8]* @.str246, i32 0, i32 0
  %2307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2306, i64 1)
  %2308 = alloca %nyx_string*
  store %nyx_string* %2307, %nyx_string** %2308
  %2309 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %2310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2309, i64 1)
  %2311 = alloca %nyx_string*
  store %nyx_string* %2310, %nyx_string** %2311
  %2312 = call i8* @llvm.stacksave()
  br label %while_cond430
while_cond430:
  %2313 = load i64, i64* %2296
  %2314 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2315 = call i64 @nyx_array_length({ i64, i8* }* %2314)
  %2316 = icmp slt i64 %2313, %2315
  br i1 %2316, label %while_body431, label %while_end432
while_body431:
  call void @llvm.stackrestore(i8* %2312)
  %2317 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2318 = load i64, i64* %2296
  %2319 = call i64 @nyx_array_get_checked({ i64, i8* }* %2317, i64 %2318, i64 2)
  %2320 = inttoptr i64 %2319 to %nyx_string*
  %2321 = alloca %nyx_string*
  store %nyx_string* %2320, %nyx_string** %2321
  %2322 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2323 = load i64, i64* %2296
  %2324 = call i64 @nyx_array_get_checked({ i64, i8* }* %2322, i64 %2323, i64 2)
  %2325 = inttoptr i64 %2324 to %nyx_string*
  %2326 = alloca %nyx_string*
  store %nyx_string* %2325, %nyx_string** %2326
  %2327 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2328 = load %nyx_string*, %nyx_string** %2299
  %2329 = call %nyx_string* @nyx_string_concat(%nyx_string* %2327, %nyx_string* %2328)
  %2330 = load %nyx_string*, %nyx_string** %2321
  %2331 = call %nyx_string* @nyx_string_concat(%nyx_string* %2329, %nyx_string* %2330)
  %2332 = load %nyx_string*, %nyx_string** %2302
  %2333 = call %nyx_string* @nyx_string_concat(%nyx_string* %2331, %nyx_string* %2332)
  %2334 = alloca %nyx_string*
  store %nyx_string* %2333, %nyx_string** %2334
  %2335 = load %nyx_string*, %nyx_string** %2334
  %2336 = call i1 @cov_profraw_valid(%nyx_string* %2335)
  br i1 %2336, label %then433, label %else434
then433:
  %2337 = load %nyx_string*, %nyx_string** %2290
  %2338 = load %nyx_string*, %nyx_string** %2305
  %2339 = call %nyx_string* @nyx_string_concat(%nyx_string* %2337, %nyx_string* %2338)
  %2340 = load %nyx_string*, %nyx_string** %2334
  %2341 = call %nyx_string* @nyx_string_concat(%nyx_string* %2339, %nyx_string* %2340)
  %2342 = load %nyx_string*, %nyx_string** %2308
  %2343 = call %nyx_string* @nyx_string_concat(%nyx_string* %2341, %nyx_string* %2342)
  store %nyx_string* %2343, %nyx_string** %2290
  %2344 = load i64, i64* %2291
  %2345 = add i64 %2344, 1
  store i64 %2345, i64* %2291
  %2346 = load i8*, i8** %2293
  %2347 = load %nyx_string*, %nyx_string** %2321
  %2348 = load %nyx_string*, %nyx_string** %2311
  %2349 = call i8* @nyx_string_to_cstr(%nyx_string* %2347)
  %2350 = call i8* @nyx_string_to_cstr(%nyx_string* %2348)
  call void @nyx_map_insert_str(i8* %2346, i8* %2349, i8* %2350)
  br label %merge435
else434:
  %2351 = load { i64, i8* }*, { i64, i8* }** %2295
  %2352 = load %nyx_string*, %nyx_string** %2326
  %2353 = ptrtoint %nyx_string* %2352 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2351, i64 %2353, i64 2)
  br label %merge435
merge435:
  %2354 = load i64, i64* %2296
  %2355 = add i64 %2354, 1
  store i64 %2355, i64* %2296
  br label %while_cond430
while_end432:
  %2356 = call i8* @nyx_map_new(i32 0)
  %2357 = alloca i8*
  store i8* %2356, i8** %2357
  %2358 = load i64, i64* %2291
  %2359 = icmp sgt i64 %2358, 0
  br i1 %2359, label %then436, label %else437
then436:
  %2360 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2361 = getelementptr [17 x i8], [17 x i8]* @.str248, i32 0, i32 0
  %2362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2361, i64 16)
  %2363 = call %nyx_string* @nyx_string_concat(%nyx_string* %2360, %nyx_string* %2362)
  %2364 = alloca %nyx_string*
  store %nyx_string* %2363, %nyx_string** %2364
  %2365 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2366 = getelementptr [12 x i8], [12 x i8]* @.str249, i32 0, i32 0
  %2367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2366, i64 11)
  %2368 = call %nyx_string* @nyx_string_concat(%nyx_string* %2365, %nyx_string* %2367)
  %2369 = load %nyx_string*, %nyx_string** %2364
  %2370 = call %nyx_string* @nyx_string_concat(%nyx_string* %2368, %nyx_string* %2369)
  %2371 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2371, i64 1)
  %2373 = call %nyx_string* @nyx_string_concat(%nyx_string* %2370, %nyx_string* %2372)
  %2374 = load %nyx_string*, %nyx_string** %2290
  %2375 = call %nyx_string* @nyx_string_concat(%nyx_string* %2373, %nyx_string* %2374)
  %2376 = getelementptr [5 x i8], [5 x i8]* @.str251, i32 0, i32 0
  %2377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2376, i64 4)
  %2378 = call %nyx_string* @nyx_string_concat(%nyx_string* %2375, %nyx_string* %2377)
  %2379 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2380 = call %nyx_string* @nyx_string_concat(%nyx_string* %2378, %nyx_string* %2379)
  %2381 = getelementptr [17 x i8], [17 x i8]* @.str252, i32 0, i32 0
  %2382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2381, i64 16)
  %2383 = call %nyx_string* @nyx_string_concat(%nyx_string* %2380, %nyx_string* %2382)
  %2384 = call i8* @nyx_string_to_cstr(%nyx_string* %2383)
  %2385 = call i64 @nyx_exec_code(i8* %2384)
  %2386 = alloca i64
  store i64 %2385, i64* %2386
  %2387 = load i64, i64* %2386
  %2388 = icmp ne i64 %2387, 0
  br i1 %2388, label %then439, label %else440
then439:
  %2389 = getelementptr [36 x i8], [36 x i8]* @.str253, i32 0, i32 0
  %2390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2389, i64 35)
  %2391 = call i8* @nyx_string_to_cstr(%nyx_string* %2390)
  call void @nyx_print_string(i8* %2391)
  %2392 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2393 = getelementptr [11 x i8], [11 x i8]* @.str254, i32 0, i32 0
  %2394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2393, i64 10)
  %2395 = call %nyx_string* @nyx_string_concat(%nyx_string* %2392, %nyx_string* %2394)
  %2396 = call i8* @nyx_string_to_cstr(%nyx_string* %2395)
  %2397 = call %nyx_string* @nyx_read_file(i8* %2396)
  %2398 = call i8* @nyx_string_to_cstr(%nyx_string* %2397)
  call void @nyx_print_string(i8* %2398)
  ret i64 1
else440:
  br label %merge441
merge441:
  %2399 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2400 = getelementptr [33 x i8], [33 x i8]* @.str255, i32 0, i32 0
  %2401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2400, i64 32)
  %2402 = call %nyx_string* @nyx_string_concat(%nyx_string* %2399, %nyx_string* %2401)
  %2403 = load %nyx_string*, %nyx_string** %2364
  %2404 = call %nyx_string* @nyx_string_concat(%nyx_string* %2402, %nyx_string* %2403)
  %2405 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %2406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2405, i64 5)
  %2407 = call %nyx_string* @nyx_string_concat(%nyx_string* %2404, %nyx_string* %2406)
  %2408 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2409 = call %nyx_string* @nyx_string_concat(%nyx_string* %2407, %nyx_string* %2408)
  %2410 = getelementptr [16 x i8], [16 x i8]* @.str257, i32 0, i32 0
  %2411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2410, i64 15)
  %2412 = call %nyx_string* @nyx_string_concat(%nyx_string* %2409, %nyx_string* %2411)
  %2413 = call i8* @nyx_string_to_cstr(%nyx_string* %2412)
  %2414 = call i64 @nyx_exec_code(i8* %2413)
  %2415 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2416 = getelementptr [10 x i8], [10 x i8]* @.str258, i32 0, i32 0
  %2417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2416, i64 9)
  %2418 = call %nyx_string* @nyx_string_concat(%nyx_string* %2415, %nyx_string* %2417)
  %2419 = call i8* @nyx_string_to_cstr(%nyx_string* %2418)
  %2420 = call %nyx_string* @nyx_read_file(i8* %2419)
  %2421 = call i8* @cov_called_from_show(%nyx_string* %2420)
  store i8* %2421, i8** %2357
  br label %merge438
else437:
  br label %merge438
merge438:
  %2422 = call i8* @nyx_map_new(i32 0)
  %2423 = alloca i8*
  store i8* %2422, i8** %2423
  %2424 = call i8* @nyx_map_new(i32 0)
  %2425 = alloca i8*
  store i8* %2424, i8** %2425
  %2426 = call i8* @nyx_map_new(i32 0)
  %2427 = alloca i8*
  store i8* %2426, i8** %2427
  %2428 = call i8* @nyx_map_new(i32 0)
  %2429 = alloca i8*
  store i8* %2428, i8** %2429
  store i64 0, i64* %2296
  %2430 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2430, i64 1)
  %2432 = alloca %nyx_string*
  store %nyx_string* %2431, %nyx_string** %2432
  %2433 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2433, i64 4)
  %2435 = alloca %nyx_string*
  store %nyx_string* %2434, %nyx_string** %2435
  %2436 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %2437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2436, i64 1)
  %2438 = alloca %nyx_string*
  store %nyx_string* %2437, %nyx_string** %2438
  %2439 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %2440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2439, i64 0)
  %2441 = alloca %nyx_string*
  store %nyx_string* %2440, %nyx_string** %2441
  %2442 = getelementptr [2 x i8], [2 x i8]* @.str263, i32 0, i32 0
  %2443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2442, i64 1)
  %2444 = alloca %nyx_string*
  store %nyx_string* %2443, %nyx_string** %2444
  %2445 = getelementptr [5 x i8], [5 x i8]* @.str264, i32 0, i32 0
  %2446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2445, i64 4)
  %2447 = alloca %nyx_string*
  store %nyx_string* %2446, %nyx_string** %2447
  %2448 = call i8* @llvm.stacksave()
  br label %while_cond442
while_cond442:
  %2449 = load i64, i64* %2296
  %2450 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2451 = call i64 @nyx_array_length({ i64, i8* }* %2450)
  %2452 = icmp slt i64 %2449, %2451
  br i1 %2452, label %while_body443, label %while_end444
while_body443:
  call void @llvm.stackrestore(i8* %2448)
  %2453 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2454 = load i64, i64* %2296
  %2455 = call i64 @nyx_array_get_checked({ i64, i8* }* %2453, i64 %2454, i64 2)
  %2456 = inttoptr i64 %2455 to %nyx_string*
  %2457 = alloca %nyx_string*
  store %nyx_string* %2456, %nyx_string** %2457
  %2458 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2459 = load %nyx_string*, %nyx_string** %2432
  %2460 = call %nyx_string* @nyx_string_concat(%nyx_string* %2458, %nyx_string* %2459)
  %2461 = load %nyx_string*, %nyx_string** %2457
  %2462 = call %nyx_string* @nyx_string_concat(%nyx_string* %2460, %nyx_string* %2461)
  %2463 = load %nyx_string*, %nyx_string** %2435
  %2464 = call %nyx_string* @nyx_string_concat(%nyx_string* %2462, %nyx_string* %2463)
  %2465 = alloca %nyx_string*
  store %nyx_string* %2464, %nyx_string** %2465
  %2466 = load %nyx_string*, %nyx_string** %2465
  %2467 = call i8* @nyx_string_to_cstr(%nyx_string* %2466)
  %2468 = call i1 @nyx_file_exists(i8* %2467)
  br i1 %2468, label %then445, label %else446
then445:
  %2469 = load %nyx_string*, %nyx_string** %2465
  %2470 = call i8* @nyx_string_to_cstr(%nyx_string* %2469)
  %2471 = call %nyx_string* @nyx_read_file(i8* %2470)
  %2472 = load %nyx_string*, %nyx_string** %2438
  %2473 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2471, %nyx_string* %2472)
  %2474 = alloca { i64, i8* }*
  store { i64, i8* }* %2473, { i64, i8* }** %2474
  %2475 = alloca i64
  store i64 0, i64* %2475
  %2476 = call i8* @llvm.stacksave()
  br label %while_cond448
while_cond448:
  %2477 = load i64, i64* %2475
  %2478 = load { i64, i8* }*, { i64, i8* }** %2474
  %2479 = call i64 @nyx_array_length({ i64, i8* }* %2478)
  %2480 = icmp slt i64 %2477, %2479
  br i1 %2480, label %while_body449, label %while_end450
while_body449:
  call void @llvm.stackrestore(i8* %2476)
  %2481 = load { i64, i8* }*, { i64, i8* }** %2474
  %2482 = load i64, i64* %2475
  %2483 = call i64 @nyx_array_get_checked({ i64, i8* }* %2481, i64 %2482, i64 2)
  %2484 = inttoptr i64 %2483 to %nyx_string*
  %2485 = alloca %nyx_string*
  store %nyx_string* %2484, %nyx_string** %2485
  %2486 = load %nyx_string*, %nyx_string** %2485
  %2487 = call { i64, i8* }* @cov_fields(%nyx_string* %2486)
  %2488 = alloca { i64, i8* }*
  store { i64, i8* }* %2487, { i64, i8* }** %2488
  %2489 = load { i64, i8* }*, { i64, i8* }** %2488
  %2490 = call i64 @nyx_array_length({ i64, i8* }* %2489)
  %2491 = icmp sge i64 %2490, 5
  br i1 %2491, label %then451, label %else452
then451:
  %2492 = load { i64, i8* }*, { i64, i8* }** %2488
  %2493 = call i64 @nyx_array_get_checked({ i64, i8* }* %2492, i64 0, i64 2)
  %2494 = inttoptr i64 %2493 to %nyx_string*
  %2495 = alloca %nyx_string*
  store %nyx_string* %2494, %nyx_string** %2495
  %2496 = load { i64, i8* }*, { i64, i8* }** %2488
  %2497 = call i64 @nyx_array_get_checked({ i64, i8* }* %2496, i64 1, i64 2)
  %2498 = inttoptr i64 %2497 to %nyx_string*
  %2499 = alloca %nyx_string*
  store %nyx_string* %2498, %nyx_string** %2499
  %2500 = load { i64, i8* }*, { i64, i8* }** %2488
  %2501 = call i64 @nyx_array_get_checked({ i64, i8* }* %2500, i64 3, i64 2)
  %2502 = inttoptr i64 %2501 to %nyx_string*
  %2503 = alloca %nyx_string*
  store %nyx_string* %2502, %nyx_string** %2503
  %2504 = load { i64, i8* }*, { i64, i8* }** %2488
  %2505 = call i64 @nyx_array_get_checked({ i64, i8* }* %2504, i64 4, i64 2)
  %2506 = inttoptr i64 %2505 to %nyx_string*
  %2507 = alloca %nyx_string*
  store %nyx_string* %2506, %nyx_string** %2507
  %2508 = load %nyx_string*, %nyx_string** %2499
  %2509 = load %nyx_string*, %nyx_string** %2441
  %2510 = call i1 @nyx_string_equals(%nyx_string* %2508, %nyx_string* %2509)
  %2511 = xor i1 %2510, true
  br i1 %2511, label %then454, label %else455
then454:
  %2512 = load i8*, i8** %2429
  %2513 = load %nyx_string*, %nyx_string** %2499
  %2514 = load %nyx_string*, %nyx_string** %2444
  %2515 = call i8* @nyx_string_to_cstr(%nyx_string* %2513)
  %2516 = call i8* @nyx_string_to_cstr(%nyx_string* %2514)
  call void @nyx_map_insert_str(i8* %2512, i8* %2515, i8* %2516)
  br label %merge456
else455:
  br label %merge456
merge456:
  %2517 = load i8*, i8** %2293
  %2518 = load %nyx_string*, %nyx_string** %2457
  %2519 = call i8* @nyx_string_to_cstr(%nyx_string* %2518)
  %2520 = call i1 @nyx_map_contains_str(i8* %2517, i8* %2519)
  br i1 %2520, label %then457, label %else458
then457:
  %2521 = load i8*, i8** %2423
  %2522 = load %nyx_string*, %nyx_string** %2495
  %2523 = load %nyx_string*, %nyx_string** %2444
  %2524 = call i8* @nyx_string_to_cstr(%nyx_string* %2522)
  %2525 = call i8* @nyx_string_to_cstr(%nyx_string* %2523)
  call void @nyx_map_insert_str(i8* %2521, i8* %2524, i8* %2525)
  %2526 = alloca i1
  store i1 false, i1* %2526
  %2527 = load %nyx_string*, %nyx_string** %2507
  %2528 = load %nyx_string*, %nyx_string** %2447
  %2529 = call i1 @nyx_string_equals(%nyx_string* %2527, %nyx_string* %2528)
  br i1 %2529, label %sc_and_rhs460, label %sc_and_end461
sc_and_rhs460:
  %2530 = load i8*, i8** %2357
  %2531 = load %nyx_string*, %nyx_string** %2495
  %2532 = call i8* @nyx_string_to_cstr(%nyx_string* %2531)
  %2533 = call i1 @nyx_map_contains_str(i8* %2530, i8* %2532)
  store i1 %2533, i1* %2526
  br label %sc_and_end461
sc_and_end461:
  %2534 = load i1, i1* %2526
  br i1 %2534, label %then462, label %else463
then462:
  %2535 = load i8*, i8** %2427
  %2536 = load %nyx_string*, %nyx_string** %2503
  %2537 = load %nyx_string*, %nyx_string** %2444
  %2538 = call i8* @nyx_string_to_cstr(%nyx_string* %2536)
  %2539 = call i8* @nyx_string_to_cstr(%nyx_string* %2537)
  call void @nyx_map_insert_str(i8* %2535, i8* %2538, i8* %2539)
  br label %merge464
else463:
  br label %merge464
merge464:
  br label %merge459
else458:
  %2540 = load i8*, i8** %2425
  %2541 = load %nyx_string*, %nyx_string** %2495
  %2542 = load %nyx_string*, %nyx_string** %2444
  %2543 = call i8* @nyx_string_to_cstr(%nyx_string* %2541)
  %2544 = call i8* @nyx_string_to_cstr(%nyx_string* %2542)
  call void @nyx_map_insert_str(i8* %2540, i8* %2543, i8* %2544)
  br label %merge459
merge459:
  br label %merge453
else452:
  br label %merge453
merge453:
  %2545 = load i64, i64* %2475
  %2546 = add i64 %2545, 1
  store i64 %2546, i64* %2475
  br label %while_cond448
while_end450:
  br label %merge447
else446:
  br label %merge447
merge447:
  %2547 = load i64, i64* %2296
  %2548 = add i64 %2547, 1
  store i64 %2548, i64* %2296
  br label %while_cond442
while_end444:
  %2549 = call { i64, i8* }* @cov_src_modules()
  %2550 = alloca { i64, i8* }*
  store { i64, i8* }* %2549, { i64, i8* }** %2550
  %2551 = load { i64, i8* }*, { i64, i8* }** %2550
  %2552 = call i64 @nyx_array_length({ i64, i8* }* %2551)
  %2553 = icmp eq i64 %2552, 0
  br i1 %2553, label %then465, label %else466
then465:
  %2554 = getelementptr [27 x i8], [27 x i8]* @.str265, i32 0, i32 0
  %2555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2554, i64 26)
  %2556 = call i8* @nyx_string_to_cstr(%nyx_string* %2555)
  call void @nyx_print_string(i8* %2556)
  ret i64 0
else466:
  br label %merge467
merge467:
  %2557 = load %nyx_string*, %nyx_string** %2276
  %2558 = load %nyx_string*, %nyx_string** %2281
  %2559 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2560 = load { i64, i8* }*, { i64, i8* }** %2550
  %2561 = call %nyx_string* @cov_universe(%nyx_string* %2557, %nyx_string* %2558, %nyx_string* %2559, { i64, i8* }* %2560)
  %2562 = alloca %nyx_string*
  store %nyx_string* %2561, %nyx_string** %2562
  %2563 = load %nyx_string*, %nyx_string** %2562
  %2564 = call i8* @nyx_string_to_cstr(%nyx_string* %2563)
  %2565 = call i1 @nyx_file_exists(i8* %2564)
  %2566 = xor i1 %2565, true
  br i1 %2566, label %then468, label %else469
then468:
  %2567 = getelementptr [68 x i8], [68 x i8]* @.str266, i32 0, i32 0
  %2568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2567, i64 67)
  %2569 = call i8* @nyx_string_to_cstr(%nyx_string* %2568)
  call void @nyx_print_string(i8* %2569)
  %2570 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2571 = getelementptr [14 x i8], [14 x i8]* @.str267, i32 0, i32 0
  %2572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2571, i64 13)
  %2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %2570, %nyx_string* %2572)
  %2574 = call i8* @nyx_string_to_cstr(%nyx_string* %2573)
  %2575 = call i1 @nyx_file_exists(i8* %2574)
  br i1 %2575, label %then471, label %else472
then471:
  %2576 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2577 = getelementptr [14 x i8], [14 x i8]* @.str268, i32 0, i32 0
  %2578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2577, i64 13)
  %2579 = call %nyx_string* @nyx_string_concat(%nyx_string* %2576, %nyx_string* %2578)
  %2580 = call i8* @nyx_string_to_cstr(%nyx_string* %2579)
  %2581 = call %nyx_string* @nyx_read_file(i8* %2580)
  %2582 = call i8* @nyx_string_to_cstr(%nyx_string* %2581)
  call void @nyx_print_string(i8* %2582)
  br label %merge473
else472:
  br label %merge473
merge473:
  ret i64 1
else469:
  br label %merge470
merge470:
  %2583 = load %nyx_string*, %nyx_string** %2562
  %2584 = call i8* @nyx_string_to_cstr(%nyx_string* %2583)
  %2585 = call %nyx_string* @nyx_read_file(i8* %2584)
  %2586 = getelementptr [2 x i8], [2 x i8]* @.str269, i32 0, i32 0
  %2587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2586, i64 1)
  %2588 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2585, %nyx_string* %2587)
  %2589 = alloca { i64, i8* }*
  store { i64, i8* }* %2588, { i64, i8* }** %2589
  %2590 = call { i64, i8* }* @nyx_array_new_ptr()
  %2591 = alloca { i64, i8* }*
  store { i64, i8* }* %2590, { i64, i8* }** %2591
  %2592 = alloca i64
  store i64 0, i64* %2592
  %2593 = getelementptr [3 x i8], [3 x i8]* @.str270, i32 0, i32 0
  %2594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2593, i64 2)
  %2595 = alloca %nyx_string*
  store %nyx_string* %2594, %nyx_string** %2595
  %2596 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2596, i64 6)
  %2598 = alloca %nyx_string*
  store %nyx_string* %2597, %nyx_string** %2598
  %2599 = getelementptr [6 x i8], [6 x i8]* @.str272, i32 0, i32 0
  %2600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2599, i64 5)
  %2601 = alloca %nyx_string*
  store %nyx_string* %2600, %nyx_string** %2601
  %2602 = getelementptr [9 x i8], [9 x i8]* @.str273, i32 0, i32 0
  %2603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2602, i64 8)
  %2604 = alloca %nyx_string*
  store %nyx_string* %2603, %nyx_string** %2604
  %2605 = getelementptr [5 x i8], [5 x i8]* @.str274, i32 0, i32 0
  %2606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2605, i64 4)
  %2607 = alloca %nyx_string*
  store %nyx_string* %2606, %nyx_string** %2607
  %2608 = getelementptr [5 x i8], [5 x i8]* @.str275, i32 0, i32 0
  %2609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2608, i64 4)
  %2610 = alloca %nyx_string*
  store %nyx_string* %2609, %nyx_string** %2610
  %2611 = getelementptr [3 x i8], [3 x i8]* @.str276, i32 0, i32 0
  %2612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2611, i64 2)
  %2613 = alloca %nyx_string*
  store %nyx_string* %2612, %nyx_string** %2613
  %2614 = getelementptr [3 x i8], [3 x i8]* @.str277, i32 0, i32 0
  %2615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2614, i64 2)
  %2616 = alloca %nyx_string*
  store %nyx_string* %2615, %nyx_string** %2616
  %2617 = getelementptr [10 x i8], [10 x i8]* @.str278, i32 0, i32 0
  %2618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2617, i64 9)
  %2619 = alloca %nyx_string*
  store %nyx_string* %2618, %nyx_string** %2619
  %2620 = getelementptr [5 x i8], [5 x i8]* @.str279, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2620, i64 4)
  %2622 = alloca %nyx_string*
  store %nyx_string* %2621, %nyx_string** %2622
  %2623 = getelementptr [2 x i8], [2 x i8]* @.str280, i32 0, i32 0
  %2624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2623, i64 1)
  %2625 = alloca %nyx_string*
  store %nyx_string* %2624, %nyx_string** %2625
  %2626 = call i8* @llvm.stacksave()
  br label %while_cond474
while_cond474:
  %2627 = load i64, i64* %2592
  %2628 = load { i64, i8* }*, { i64, i8* }** %2589
  %2629 = call i64 @nyx_array_length({ i64, i8* }* %2628)
  %2630 = icmp slt i64 %2627, %2629
  br i1 %2630, label %while_body475, label %while_end476
while_body475:
  call void @llvm.stackrestore(i8* %2626)
  %2631 = load { i64, i8* }*, { i64, i8* }** %2589
  %2632 = load i64, i64* %2592
  %2633 = call i64 @nyx_array_get_checked({ i64, i8* }* %2631, i64 %2632, i64 2)
  %2634 = inttoptr i64 %2633 to %nyx_string*
  %2635 = alloca %nyx_string*
  store %nyx_string* %2634, %nyx_string** %2635
  %2636 = load %nyx_string*, %nyx_string** %2635
  %2637 = call { i64, i8* }* @cov_fields(%nyx_string* %2636)
  %2638 = alloca { i64, i8* }*
  store { i64, i8* }* %2637, { i64, i8* }** %2638
  %2639 = load { i64, i8* }*, { i64, i8* }** %2638
  %2640 = call i64 @nyx_array_length({ i64, i8* }* %2639)
  %2641 = icmp sge i64 %2640, 5
  br i1 %2641, label %then477, label %else478
then477:
  %2642 = load { i64, i8* }*, { i64, i8* }** %2638
  %2643 = call i64 @nyx_array_get_checked({ i64, i8* }* %2642, i64 0, i64 2)
  %2644 = inttoptr i64 %2643 to %nyx_string*
  %2645 = alloca %nyx_string*
  store %nyx_string* %2644, %nyx_string** %2645
  %2646 = load { i64, i8* }*, { i64, i8* }** %2638
  %2647 = call i64 @nyx_array_get_checked({ i64, i8* }* %2646, i64 1, i64 2)
  %2648 = inttoptr i64 %2647 to %nyx_string*
  %2649 = alloca %nyx_string*
  store %nyx_string* %2648, %nyx_string** %2649
  %2650 = load { i64, i8* }*, { i64, i8* }** %2638
  %2651 = call i64 @nyx_array_get_checked({ i64, i8* }* %2650, i64 2, i64 2)
  %2652 = inttoptr i64 %2651 to %nyx_string*
  %2653 = alloca %nyx_string*
  store %nyx_string* %2652, %nyx_string** %2653
  %2654 = load { i64, i8* }*, { i64, i8* }** %2638
  %2655 = call i64 @nyx_array_get_checked({ i64, i8* }* %2654, i64 3, i64 2)
  %2656 = inttoptr i64 %2655 to %nyx_string*
  %2657 = alloca %nyx_string*
  store %nyx_string* %2656, %nyx_string** %2657
  %2658 = load { i64, i8* }*, { i64, i8* }** %2638
  %2659 = call i64 @nyx_array_get_checked({ i64, i8* }* %2658, i64 4, i64 2)
  %2660 = inttoptr i64 %2659 to %nyx_string*
  %2661 = alloca %nyx_string*
  store %nyx_string* %2660, %nyx_string** %2661
  %2662 = alloca i1
  store i1 true, i1* %2662
  %2663 = alloca i1
  store i1 true, i1* %2663
  %2664 = alloca i1
  store i1 true, i1* %2664
  %2665 = load %nyx_string*, %nyx_string** %2661
  %2666 = load %nyx_string*, %nyx_string** %2595
  %2667 = call i1 @nyx_string_equals(%nyx_string* %2665, %nyx_string* %2666)
  br i1 %2667, label %sc_or_end481, label %sc_or_rhs480
sc_or_rhs480:
  %2668 = load %nyx_string*, %nyx_string** %2661
  %2669 = load %nyx_string*, %nyx_string** %2598
  %2670 = call i1 @nyx_string_equals(%nyx_string* %2668, %nyx_string* %2669)
  store i1 %2670, i1* %2664
  br label %sc_or_end481
sc_or_end481:
  %2671 = load i1, i1* %2664
  br i1 %2671, label %sc_or_end483, label %sc_or_rhs482
sc_or_rhs482:
  %2672 = load %nyx_string*, %nyx_string** %2661
  %2673 = load %nyx_string*, %nyx_string** %2601
  %2674 = call i1 @nyx_string_equals(%nyx_string* %2672, %nyx_string* %2673)
  store i1 %2674, i1* %2663
  br label %sc_or_end483
sc_or_end483:
  %2675 = load i1, i1* %2663
  br i1 %2675, label %sc_or_end485, label %sc_or_rhs484
sc_or_rhs484:
  %2676 = load %nyx_string*, %nyx_string** %2661
  %2677 = load %nyx_string*, %nyx_string** %2604
  %2678 = call i1 @nyx_string_equals(%nyx_string* %2676, %nyx_string* %2677)
  store i1 %2678, i1* %2662
  br label %sc_or_end485
sc_or_end485:
  %2679 = load i1, i1* %2662
  %2680 = alloca i1
  store i1 %2679, i1* %2680
  %2681 = alloca i1
  store i1 false, i1* %2681
  %2682 = alloca i1
  store i1 false, i1* %2682
  %2683 = load i1, i1* %2680
  br i1 %2683, label %sc_and_rhs486, label %sc_and_end487
sc_and_rhs486:
  %2684 = load %nyx_string*, %nyx_string** %2649
  %2685 = load %nyx_string*, %nyx_string** %2607
  %2686 = call i1 @nyx_string_starts_with(%nyx_string* %2684, %nyx_string* %2685)
  store i1 %2686, i1* %2682
  br label %sc_and_end487
sc_and_end487:
  %2687 = load i1, i1* %2682
  br i1 %2687, label %sc_and_rhs488, label %sc_and_end489
sc_and_rhs488:
  %2688 = load %nyx_string*, %nyx_string** %2657
  %2689 = load %nyx_string*, %nyx_string** %2610
  %2690 = call i1 @nyx_string_equals(%nyx_string* %2688, %nyx_string* %2689)
  %2691 = xor i1 %2690, true
  store i1 %2691, i1* %2681
  br label %sc_and_end489
sc_and_end489:
  %2692 = load i1, i1* %2681
  br i1 %2692, label %then490, label %else491
then490:
  %2693 = load i8*, i8** %2357
  %2694 = load %nyx_string*, %nyx_string** %2645
  %2695 = call i8* @nyx_string_to_cstr(%nyx_string* %2694)
  %2696 = call i1 @nyx_map_contains_str(i8* %2693, i8* %2695)
  %2697 = alloca i1
  store i1 %2696, i1* %2697
  %2698 = load %nyx_string*, %nyx_string** %2661
  %2699 = load %nyx_string*, %nyx_string** %2604
  %2700 = call i1 @nyx_string_equals(%nyx_string* %2698, %nyx_string* %2699)
  br i1 %2700, label %then493, label %else494
then493:
  %2701 = load i8*, i8** %2427
  %2702 = load %nyx_string*, %nyx_string** %2645
  %2703 = call i8* @nyx_string_to_cstr(%nyx_string* %2702)
  %2704 = call i1 @nyx_map_contains_str(i8* %2701, i8* %2703)
  store i1 %2704, i1* %2697
  br label %merge495
else494:
  br label %merge495
merge495:
  %2705 = load %nyx_string*, %nyx_string** %2613
  %2706 = alloca %nyx_string*
  store %nyx_string* %2705, %nyx_string** %2706
  %2707 = load i1, i1* %2697
  br i1 %2707, label %then496, label %else497
then496:
  %2708 = load %nyx_string*, %nyx_string** %2616
  store %nyx_string* %2708, %nyx_string** %2706
  br label %merge498
else497:
  %2709 = alloca i1
  store i1 false, i1* %2709
  %2710 = load i8*, i8** %2423
  %2711 = load %nyx_string*, %nyx_string** %2645
  %2712 = call i8* @nyx_string_to_cstr(%nyx_string* %2711)
  %2713 = call i1 @nyx_map_contains_str(i8* %2710, i8* %2712)
  %2714 = xor i1 %2713, true
  br i1 %2714, label %sc_and_rhs499, label %sc_and_end500
sc_and_rhs499:
  %2715 = load i8*, i8** %2425
  %2716 = load %nyx_string*, %nyx_string** %2645
  %2717 = call i8* @nyx_string_to_cstr(%nyx_string* %2716)
  %2718 = call i1 @nyx_map_contains_str(i8* %2715, i8* %2717)
  store i1 %2718, i1* %2709
  br label %sc_and_end500
sc_and_end500:
  %2719 = load i1, i1* %2709
  br i1 %2719, label %then501, label %else502
then501:
  %2720 = load %nyx_string*, %nyx_string** %2619
  store %nyx_string* %2720, %nyx_string** %2706
  br label %merge503
else502:
  br label %merge503
merge503:
  br label %merge498
merge498:
  %2721 = load { i64, i8* }*, { i64, i8* }** %2591
  %2722 = load %nyx_string*, %nyx_string** %2649
  %2723 = load %nyx_string*, %nyx_string** %2622
  %2724 = call %nyx_string* @nyx_string_concat(%nyx_string* %2722, %nyx_string* %2723)
  %2725 = load %nyx_string*, %nyx_string** %2653
  %2726 = call i64 @nyx_string_to_int(%nyx_string* %2725)
  %2727 = call %nyx_string* @cov_pad(i64 %2726)
  %2728 = call %nyx_string* @nyx_string_concat(%nyx_string* %2724, %nyx_string* %2727)
  %2729 = load %nyx_string*, %nyx_string** %2625
  %2730 = call %nyx_string* @nyx_string_concat(%nyx_string* %2728, %nyx_string* %2729)
  %2731 = load %nyx_string*, %nyx_string** %2657
  %2732 = call %nyx_string* @nyx_string_concat(%nyx_string* %2730, %nyx_string* %2731)
  %2733 = load %nyx_string*, %nyx_string** %2625
  %2734 = call %nyx_string* @nyx_string_concat(%nyx_string* %2732, %nyx_string* %2733)
  %2735 = load %nyx_string*, %nyx_string** %2706
  %2736 = call %nyx_string* @nyx_string_concat(%nyx_string* %2734, %nyx_string* %2735)
  %2737 = load %nyx_string*, %nyx_string** %2625
  %2738 = call %nyx_string* @nyx_string_concat(%nyx_string* %2736, %nyx_string* %2737)
  %2739 = load %nyx_string*, %nyx_string** %2649
  %2740 = call %nyx_string* @nyx_string_concat(%nyx_string* %2738, %nyx_string* %2739)
  %2741 = ptrtoint %nyx_string* %2740 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2721, i64 %2741, i64 2)
  br label %merge492
else491:
  br label %merge492
merge492:
  br label %merge479
else478:
  br label %merge479
merge479:
  %2742 = load i64, i64* %2592
  %2743 = add i64 %2742, 1
  store i64 %2743, i64* %2592
  br label %while_cond474
while_end476:
  %2744 = load { i64, i8* }*, { i64, i8* }** %2591
  %2745 = call { i64, i8* }* @sort_str({ i64, i8* }* %2744)
  %2746 = alloca { i64, i8* }*
  store { i64, i8* }* %2745, { i64, i8* }** %2746
  %2747 = getelementptr [1 x i8], [1 x i8]* @.str281, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2747, i64 0)
  %2749 = alloca %nyx_string*
  store %nyx_string* %2748, %nyx_string** %2749
  %2750 = alloca i64
  store i64 0, i64* %2750
  %2751 = alloca i64
  store i64 0, i64* %2751
  %2752 = alloca i64
  store i64 0, i64* %2752
  %2753 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %2754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2753, i64 0)
  %2755 = alloca %nyx_string*
  store %nyx_string* %2754, %nyx_string** %2755
  %2756 = getelementptr [10 x i8], [10 x i8]* @.str283, i32 0, i32 0
  %2757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2756, i64 9)
  %2758 = alloca %nyx_string*
  store %nyx_string* %2757, %nyx_string** %2758
  %2759 = getelementptr [2 x i8], [2 x i8]* @.str284, i32 0, i32 0
  %2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2759, i64 1)
  %2761 = alloca %nyx_string*
  store %nyx_string* %2760, %nyx_string** %2761
  %2762 = getelementptr [3 x i8], [3 x i8]* @.str285, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2762, i64 2)
  %2764 = alloca %nyx_string*
  store %nyx_string* %2763, %nyx_string** %2764
  %2765 = getelementptr [2 x i8], [2 x i8]* @.str286, i32 0, i32 0
  %2766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2765, i64 1)
  %2767 = alloca %nyx_string*
  store %nyx_string* %2766, %nyx_string** %2767
  %2768 = getelementptr [5 x i8], [5 x i8]* @.str287, i32 0, i32 0
  %2769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2768, i64 4)
  %2770 = alloca %nyx_string*
  store %nyx_string* %2769, %nyx_string** %2770
  %2771 = getelementptr [2 x i8], [2 x i8]* @.str288, i32 0, i32 0
  %2772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2771, i64 1)
  %2773 = alloca %nyx_string*
  store %nyx_string* %2772, %nyx_string** %2773
  %2774 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2774, i64 1)
  %2776 = alloca %nyx_string*
  store %nyx_string* %2775, %nyx_string** %2776
  %2777 = getelementptr [4 x i8], [4 x i8]* @.str290, i32 0, i32 0
  %2778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2777, i64 3)
  %2779 = alloca %nyx_string*
  store %nyx_string* %2778, %nyx_string** %2779
  %2780 = getelementptr [2 x i8], [2 x i8]* @.str291, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2780, i64 1)
  %2782 = alloca %nyx_string*
  store %nyx_string* %2781, %nyx_string** %2782
  %2783 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %2784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2783, i64 1)
  %2785 = alloca %nyx_string*
  store %nyx_string* %2784, %nyx_string** %2785
  %2786 = getelementptr [6 x i8], [6 x i8]* @.str293, i32 0, i32 0
  %2787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2786, i64 5)
  %2788 = alloca %nyx_string*
  store %nyx_string* %2787, %nyx_string** %2788
  %2789 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2789, i64 2)
  %2791 = alloca %nyx_string*
  store %nyx_string* %2790, %nyx_string** %2791
  %2792 = getelementptr [3 x i8], [3 x i8]* @.str295, i32 0, i32 0
  %2793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2792, i64 2)
  %2794 = alloca %nyx_string*
  store %nyx_string* %2793, %nyx_string** %2794
  %2795 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2795, i64 1)
  %2797 = alloca %nyx_string*
  store %nyx_string* %2796, %nyx_string** %2797
  %2798 = getelementptr [10 x i8], [10 x i8]* @.str297, i32 0, i32 0
  %2799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2798, i64 9)
  %2800 = alloca %nyx_string*
  store %nyx_string* %2799, %nyx_string** %2800
  %2801 = getelementptr [29 x i8], [29 x i8]* @.str298, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2801, i64 28)
  %2803 = alloca %nyx_string*
  store %nyx_string* %2802, %nyx_string** %2803
  %2804 = getelementptr [3 x i8], [3 x i8]* @.str299, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2804, i64 2)
  %2806 = alloca %nyx_string*
  store %nyx_string* %2805, %nyx_string** %2806
  %2807 = getelementptr [38 x i8], [38 x i8]* @.str300, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2807, i64 37)
  %2809 = alloca %nyx_string*
  store %nyx_string* %2808, %nyx_string** %2809
  %2810 = getelementptr [4 x i8], [4 x i8]* @.str301, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2810, i64 3)
  %2812 = alloca %nyx_string*
  store %nyx_string* %2811, %nyx_string** %2812
  %2813 = getelementptr [5 x i8], [5 x i8]* @.str302, i32 0, i32 0
  %2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2813, i64 4)
  %2815 = alloca %nyx_string*
  store %nyx_string* %2814, %nyx_string** %2815
  %2816 = getelementptr [6 x i8], [6 x i8]* @.str303, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2816, i64 5)
  %2818 = alloca %nyx_string*
  store %nyx_string* %2817, %nyx_string** %2818
  %2819 = getelementptr [16 x i8], [16 x i8]* @.str304, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2819, i64 15)
  %2821 = alloca %nyx_string*
  store %nyx_string* %2820, %nyx_string** %2821
  %2822 = call i8* @llvm.stacksave()
  br label %while_cond504
while_cond504:
  %2823 = load i64, i64* %2752
  %2824 = load { i64, i8* }*, { i64, i8* }** %2746
  %2825 = call i64 @nyx_array_length({ i64, i8* }* %2824)
  %2826 = icmp slt i64 %2823, %2825
  br i1 %2826, label %while_body505, label %while_end506
while_body505:
  call void @llvm.stackrestore(i8* %2822)
  %2827 = load { i64, i8* }*, { i64, i8* }** %2746
  %2828 = load i64, i64* %2752
  %2829 = call i64 @nyx_array_get_checked({ i64, i8* }* %2827, i64 %2828, i64 2)
  %2830 = inttoptr i64 %2829 to %nyx_string*
  %2831 = alloca %nyx_string*
  store %nyx_string* %2830, %nyx_string** %2831
  %2832 = load %nyx_string*, %nyx_string** %2831
  %2833 = call { i64, i8* }* @cov_fields(%nyx_string* %2832)
  %2834 = alloca { i64, i8* }*
  store { i64, i8* }* %2833, { i64, i8* }** %2834
  %2835 = load { i64, i8* }*, { i64, i8* }** %2834
  %2836 = call i64 @nyx_array_get_checked({ i64, i8* }* %2835, i64 0, i64 2)
  %2837 = inttoptr i64 %2836 to %nyx_string*
  %2838 = alloca %nyx_string*
  store %nyx_string* %2837, %nyx_string** %2838
  %2839 = load { i64, i8* }*, { i64, i8* }** %2834
  %2840 = call i64 @nyx_array_get_checked({ i64, i8* }* %2839, i64 4, i64 2)
  %2841 = inttoptr i64 %2840 to %nyx_string*
  %2842 = alloca %nyx_string*
  store %nyx_string* %2841, %nyx_string** %2842
  %2843 = alloca i64
  store i64 0, i64* %2843
  %2844 = alloca i64
  store i64 0, i64* %2844
  %2845 = alloca i64
  store i64 0, i64* %2845
  %2846 = call { i64, i8* }* @nyx_array_new_ptr()
  %2847 = alloca { i64, i8* }*
  store { i64, i8* }* %2846, { i64, i8* }** %2847
  %2848 = load %nyx_string*, %nyx_string** %2755
  %2849 = alloca %nyx_string*
  store %nyx_string* %2848, %nyx_string** %2849
  %2850 = load %nyx_string*, %nyx_string** %2755
  %2851 = alloca %nyx_string*
  store %nyx_string* %2850, %nyx_string** %2851
  %2852 = load i64, i64* %2752
  %2853 = alloca i64
  store i64 %2852, i64* %2853
  %2854 = alloca i1
  store i1 1, i1* %2854
  %2855 = call i8* @llvm.stacksave()
  br label %while_cond507
while_cond507:
  %2856 = alloca i1
  store i1 false, i1* %2856
  %2857 = load i64, i64* %2853
  %2858 = load { i64, i8* }*, { i64, i8* }** %2746
  %2859 = call i64 @nyx_array_length({ i64, i8* }* %2858)
  %2860 = icmp slt i64 %2857, %2859
  br i1 %2860, label %sc_and_rhs510, label %sc_and_end511
sc_and_rhs510:
  %2861 = load i1, i1* %2854
  store i1 %2861, i1* %2856
  br label %sc_and_end511
sc_and_end511:
  %2862 = load i1, i1* %2856
  br i1 %2862, label %while_body508, label %while_end509
while_body508:
  call void @llvm.stackrestore(i8* %2855)
  %2863 = load { i64, i8* }*, { i64, i8* }** %2746
  %2864 = load i64, i64* %2853
  %2865 = call i64 @nyx_array_get_checked({ i64, i8* }* %2863, i64 %2864, i64 2)
  %2866 = inttoptr i64 %2865 to %nyx_string*
  %2867 = alloca %nyx_string*
  store %nyx_string* %2866, %nyx_string** %2867
  %2868 = load %nyx_string*, %nyx_string** %2867
  %2869 = call { i64, i8* }* @cov_fields(%nyx_string* %2868)
  %2870 = alloca { i64, i8* }*
  store { i64, i8* }* %2869, { i64, i8* }** %2870
  %2871 = load { i64, i8* }*, { i64, i8* }** %2870
  %2872 = call i64 @nyx_array_get_checked({ i64, i8* }* %2871, i64 0, i64 2)
  %2873 = inttoptr i64 %2872 to %nyx_string*
  %2874 = alloca %nyx_string*
  store %nyx_string* %2873, %nyx_string** %2874
  %2875 = load %nyx_string*, %nyx_string** %2874
  %2876 = load %nyx_string*, %nyx_string** %2838
  %2877 = call i1 @nyx_string_equals(%nyx_string* %2875, %nyx_string* %2876)
  %2878 = xor i1 %2877, true
  br i1 %2878, label %then512, label %else513
then512:
  store i1 0, i1* %2854
  br label %merge514
else513:
  %2879 = load { i64, i8* }*, { i64, i8* }** %2870
  %2880 = call i64 @nyx_array_get({ i64, i8* }* %2879, i64 1)
  %2881 = inttoptr i64 %2880 to %nyx_string*
  %2882 = call i64 @nyx_string_to_int(%nyx_string* %2881)
  %2883 = alloca i64
  store i64 %2882, i64* %2883
  %2884 = load { i64, i8* }*, { i64, i8* }** %2870
  %2885 = call i64 @nyx_array_get_checked({ i64, i8* }* %2884, i64 2, i64 2)
  %2886 = inttoptr i64 %2885 to %nyx_string*
  %2887 = alloca %nyx_string*
  store %nyx_string* %2886, %nyx_string** %2887
  %2888 = load { i64, i8* }*, { i64, i8* }** %2870
  %2889 = call i64 @nyx_array_get_checked({ i64, i8* }* %2888, i64 3, i64 2)
  %2890 = inttoptr i64 %2889 to %nyx_string*
  %2891 = alloca %nyx_string*
  store %nyx_string* %2890, %nyx_string** %2891
  %2892 = load %nyx_string*, %nyx_string** %2891
  %2893 = load %nyx_string*, %nyx_string** %2758
  %2894 = call i1 @nyx_string_equals(%nyx_string* %2892, %nyx_string* %2893)
  br i1 %2894, label %then515, label %else516
then515:
  %2895 = load i64, i64* %2845
  %2896 = add i64 %2895, 1
  store i64 %2896, i64* %2845
  br label %merge517
else516:
  %2897 = load i64, i64* %2844
  %2898 = add i64 %2897, 1
  store i64 %2898, i64* %2844
  %2899 = load %nyx_string*, %nyx_string** %2761
  %2900 = alloca %nyx_string*
  store %nyx_string* %2899, %nyx_string** %2900
  %2901 = load %nyx_string*, %nyx_string** %2891
  %2902 = load %nyx_string*, %nyx_string** %2764
  %2903 = call i1 @nyx_string_equals(%nyx_string* %2901, %nyx_string* %2902)
  br i1 %2903, label %then518, label %else519
then518:
  %2904 = load i64, i64* %2843
  %2905 = add i64 %2904, 1
  store i64 %2905, i64* %2843
  %2906 = load %nyx_string*, %nyx_string** %2767
  store %nyx_string* %2906, %nyx_string** %2900
  br label %merge520
else519:
  %2907 = load { i64, i8* }*, { i64, i8* }** %2847
  %2908 = load %nyx_string*, %nyx_string** %2770
  %2909 = load %nyx_string*, %nyx_string** %2838
  %2910 = call %nyx_string* @nyx_string_concat(%nyx_string* %2908, %nyx_string* %2909)
  %2911 = load %nyx_string*, %nyx_string** %2773
  %2912 = call %nyx_string* @nyx_string_concat(%nyx_string* %2910, %nyx_string* %2911)
  %2913 = load i64, i64* %2883
  %2914 = call %nyx_string* @nyx_string_from_int(i64 %2913)
  %2915 = call %nyx_string* @nyx_string_concat(%nyx_string* %2912, %nyx_string* %2914)
  %2916 = load %nyx_string*, %nyx_string** %2776
  %2917 = call %nyx_string* @nyx_string_concat(%nyx_string* %2915, %nyx_string* %2916)
  %2918 = load %nyx_string*, %nyx_string** %2887
  %2919 = call %nyx_string* @nyx_string_concat(%nyx_string* %2917, %nyx_string* %2918)
  %2920 = ptrtoint %nyx_string* %2919 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2907, i64 %2920, i64 2)
  br label %merge520
merge520:
  %2921 = load %nyx_string*, %nyx_string** %2849
  %2922 = load %nyx_string*, %nyx_string** %2779
  %2923 = call %nyx_string* @nyx_string_concat(%nyx_string* %2921, %nyx_string* %2922)
  %2924 = load i64, i64* %2883
  %2925 = call %nyx_string* @nyx_string_from_int(i64 %2924)
  %2926 = call %nyx_string* @nyx_string_concat(%nyx_string* %2923, %nyx_string* %2925)
  %2927 = load %nyx_string*, %nyx_string** %2782
  %2928 = call %nyx_string* @nyx_string_concat(%nyx_string* %2926, %nyx_string* %2927)
  %2929 = load %nyx_string*, %nyx_string** %2887
  %2930 = call %nyx_string* @nyx_string_concat(%nyx_string* %2928, %nyx_string* %2929)
  %2931 = load %nyx_string*, %nyx_string** %2785
  %2932 = call %nyx_string* @nyx_string_concat(%nyx_string* %2930, %nyx_string* %2931)
  store %nyx_string* %2932, %nyx_string** %2849
  %2933 = load %nyx_string*, %nyx_string** %2851
  %2934 = load %nyx_string*, %nyx_string** %2788
  %2935 = call %nyx_string* @nyx_string_concat(%nyx_string* %2933, %nyx_string* %2934)
  %2936 = load %nyx_string*, %nyx_string** %2900
  %2937 = call %nyx_string* @nyx_string_concat(%nyx_string* %2935, %nyx_string* %2936)
  %2938 = load %nyx_string*, %nyx_string** %2782
  %2939 = call %nyx_string* @nyx_string_concat(%nyx_string* %2937, %nyx_string* %2938)
  %2940 = load %nyx_string*, %nyx_string** %2887
  %2941 = call %nyx_string* @nyx_string_concat(%nyx_string* %2939, %nyx_string* %2940)
  %2942 = load %nyx_string*, %nyx_string** %2785
  %2943 = call %nyx_string* @nyx_string_concat(%nyx_string* %2941, %nyx_string* %2942)
  store %nyx_string* %2943, %nyx_string** %2851
  br label %merge517
merge517:
  %2944 = load i64, i64* %2853
  %2945 = add i64 %2944, 1
  store i64 %2945, i64* %2853
  br label %merge514
merge514:
  br label %while_cond507
while_end509:
  %2946 = load %nyx_string*, %nyx_string** %2791
  %2947 = load %nyx_string*, %nyx_string** %2838
  %2948 = call %nyx_string* @nyx_string_concat(%nyx_string* %2946, %nyx_string* %2947)
  %2949 = load %nyx_string*, %nyx_string** %2794
  %2950 = call %nyx_string* @nyx_string_concat(%nyx_string* %2948, %nyx_string* %2949)
  %2951 = load i64, i64* %2843
  %2952 = call %nyx_string* @nyx_string_from_int(i64 %2951)
  %2953 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2952)
  %2954 = load %nyx_string*, %nyx_string** %2797
  %2955 = call %nyx_string* @nyx_string_concat(%nyx_string* %2953, %nyx_string* %2954)
  %2956 = load i64, i64* %2844
  %2957 = call %nyx_string* @nyx_string_from_int(i64 %2956)
  %2958 = call %nyx_string* @nyx_string_concat(%nyx_string* %2955, %nyx_string* %2957)
  %2959 = load %nyx_string*, %nyx_string** %2800
  %2960 = call %nyx_string* @nyx_string_concat(%nyx_string* %2958, %nyx_string* %2959)
  %2961 = alloca %nyx_string*
  store %nyx_string* %2960, %nyx_string** %2961
  %2962 = load i8*, i8** %2429
  %2963 = load %nyx_string*, %nyx_string** %2842
  %2964 = call i8* @nyx_string_to_cstr(%nyx_string* %2963)
  %2965 = call i1 @nyx_map_contains_str(i8* %2962, i8* %2964)
  %2966 = xor i1 %2965, true
  br i1 %2966, label %then521, label %else522
then521:
  %2967 = load %nyx_string*, %nyx_string** %2961
  %2968 = load %nyx_string*, %nyx_string** %2803
  %2969 = call %nyx_string* @nyx_string_concat(%nyx_string* %2967, %nyx_string* %2968)
  store %nyx_string* %2969, %nyx_string** %2961
  br label %merge523
else522:
  br label %merge523
merge523:
  %2970 = load i64, i64* %2845
  %2971 = icmp sgt i64 %2970, 0
  br i1 %2971, label %then524, label %else525
then524:
  %2972 = load %nyx_string*, %nyx_string** %2961
  %2973 = load %nyx_string*, %nyx_string** %2806
  %2974 = call %nyx_string* @nyx_string_concat(%nyx_string* %2972, %nyx_string* %2973)
  %2975 = load i64, i64* %2845
  %2976 = call %nyx_string* @nyx_string_from_int(i64 %2975)
  %2977 = call %nyx_string* @nyx_string_concat(%nyx_string* %2974, %nyx_string* %2976)
  %2978 = load %nyx_string*, %nyx_string** %2809
  %2979 = call %nyx_string* @nyx_string_concat(%nyx_string* %2977, %nyx_string* %2978)
  store %nyx_string* %2979, %nyx_string** %2961
  br label %merge526
else525:
  br label %merge526
merge526:
  %2980 = load %nyx_string*, %nyx_string** %2961
  %2981 = call i8* @nyx_string_to_cstr(%nyx_string* %2980)
  call void @nyx_print_string(i8* %2981)
  %2982 = alloca i64
  store i64 0, i64* %2982
  %2983 = call i8* @llvm.stacksave()
  br label %while_cond527
while_cond527:
  %2984 = load i64, i64* %2982
  %2985 = load { i64, i8* }*, { i64, i8* }** %2847
  %2986 = call i64 @nyx_array_length({ i64, i8* }* %2985)
  %2987 = icmp slt i64 %2984, %2986
  br i1 %2987, label %while_body528, label %while_end529
while_body528:
  call void @llvm.stackrestore(i8* %2983)
  %2988 = load { i64, i8* }*, { i64, i8* }** %2847
  %2989 = load i64, i64* %2982
  %2990 = call i64 @nyx_array_get_checked({ i64, i8* }* %2988, i64 %2989, i64 2)
  %2991 = inttoptr i64 %2990 to %nyx_string*
  %2992 = alloca %nyx_string*
  store %nyx_string* %2991, %nyx_string** %2992
  %2993 = load %nyx_string*, %nyx_string** %2992
  %2994 = call i8* @nyx_string_to_cstr(%nyx_string* %2993)
  call void @nyx_print_string(i8* %2994)
  %2995 = load i64, i64* %2982
  %2996 = add i64 %2995, 1
  store i64 %2996, i64* %2982
  br label %while_cond527
while_end529:
  %2997 = load i64, i64* %2750
  %2998 = load i64, i64* %2843
  %2999 = add i64 %2997, %2998
  store i64 %2999, i64* %2750
  %3000 = load i64, i64* %2751
  %3001 = load i64, i64* %2844
  %3002 = add i64 %3000, %3001
  store i64 %3002, i64* %2751
  %3003 = load %nyx_string*, %nyx_string** %2749
  %3004 = load %nyx_string*, %nyx_string** %2812
  %3005 = call %nyx_string* @nyx_string_concat(%nyx_string* %3003, %nyx_string* %3004)
  %3006 = load %nyx_string*, %nyx_string** %2838
  %3007 = call %nyx_string* @nyx_string_concat(%nyx_string* %3005, %nyx_string* %3006)
  %3008 = load %nyx_string*, %nyx_string** %2785
  %3009 = call %nyx_string* @nyx_string_concat(%nyx_string* %3007, %nyx_string* %3008)
  %3010 = load %nyx_string*, %nyx_string** %2849
  %3011 = call %nyx_string* @nyx_string_concat(%nyx_string* %3009, %nyx_string* %3010)
  %3012 = load %nyx_string*, %nyx_string** %2851
  %3013 = call %nyx_string* @nyx_string_concat(%nyx_string* %3011, %nyx_string* %3012)
  %3014 = load %nyx_string*, %nyx_string** %2815
  %3015 = call %nyx_string* @nyx_string_concat(%nyx_string* %3013, %nyx_string* %3014)
  %3016 = load i64, i64* %2844
  %3017 = call %nyx_string* @nyx_string_from_int(i64 %3016)
  %3018 = call %nyx_string* @nyx_string_concat(%nyx_string* %3015, %nyx_string* %3017)
  %3019 = load %nyx_string*, %nyx_string** %2818
  %3020 = call %nyx_string* @nyx_string_concat(%nyx_string* %3018, %nyx_string* %3019)
  %3021 = load i64, i64* %2843
  %3022 = call %nyx_string* @nyx_string_from_int(i64 %3021)
  %3023 = call %nyx_string* @nyx_string_concat(%nyx_string* %3020, %nyx_string* %3022)
  %3024 = load %nyx_string*, %nyx_string** %2821
  %3025 = call %nyx_string* @nyx_string_concat(%nyx_string* %3023, %nyx_string* %3024)
  store %nyx_string* %3025, %nyx_string** %2749
  %3026 = load i64, i64* %2853
  store i64 %3026, i64* %2752
  br label %while_cond504
while_end506:
  %3027 = load { i64, i8* }*, { i64, i8* }** %2295
  %3028 = call i64 @nyx_array_length({ i64, i8* }* %3027)
  %3029 = icmp sgt i64 %3028, 0
  br i1 %3029, label %then530, label %else531
then530:
  %3030 = getelementptr [70 x i8], [70 x i8]* @.str305, i32 0, i32 0
  %3031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3030, i64 69)
  %3032 = call i8* @nyx_string_to_cstr(%nyx_string* %3031)
  call void @nyx_print_string(i8* %3032)
  %3033 = alloca i64
  store i64 0, i64* %3033
  %3034 = getelementptr [5 x i8], [5 x i8]* @.str306, i32 0, i32 0
  %3035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3034, i64 4)
  %3036 = alloca %nyx_string*
  store %nyx_string* %3035, %nyx_string** %3036
  %3037 = call i8* @llvm.stacksave()
  br label %while_cond533
while_cond533:
  %3038 = load i64, i64* %3033
  %3039 = load { i64, i8* }*, { i64, i8* }** %2295
  %3040 = call i64 @nyx_array_length({ i64, i8* }* %3039)
  %3041 = icmp slt i64 %3038, %3040
  br i1 %3041, label %while_body534, label %while_end535
while_body534:
  call void @llvm.stackrestore(i8* %3037)
  %3042 = load { i64, i8* }*, { i64, i8* }** %2295
  %3043 = load i64, i64* %3033
  %3044 = call i64 @nyx_array_get_checked({ i64, i8* }* %3042, i64 %3043, i64 2)
  %3045 = inttoptr i64 %3044 to %nyx_string*
  %3046 = alloca %nyx_string*
  store %nyx_string* %3045, %nyx_string** %3046
  %3047 = load %nyx_string*, %nyx_string** %3036
  %3048 = load %nyx_string*, %nyx_string** %3046
  %3049 = call %nyx_string* @nyx_string_concat(%nyx_string* %3047, %nyx_string* %3048)
  %3050 = call i8* @nyx_string_to_cstr(%nyx_string* %3049)
  call void @nyx_print_string(i8* %3050)
  %3051 = load i64, i64* %3033
  %3052 = add i64 %3051, 1
  store i64 %3052, i64* %3033
  br label %while_cond533
while_end535:
  br label %merge532
else531:
  br label %merge532
merge532:
  %3053 = getelementptr [10 x i8], [10 x i8]* @.str307, i32 0, i32 0
  %3054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3053, i64 9)
  %3055 = load i64, i64* %2750
  %3056 = call %nyx_string* @nyx_string_from_int(i64 %3055)
  %3057 = call %nyx_string* @nyx_string_concat(%nyx_string* %3054, %nyx_string* %3056)
  %3058 = getelementptr [2 x i8], [2 x i8]* @.str308, i32 0, i32 0
  %3059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3058, i64 1)
  %3060 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3059)
  %3061 = load i64, i64* %2751
  %3062 = call %nyx_string* @nyx_string_from_int(i64 %3061)
  %3063 = call %nyx_string* @nyx_string_concat(%nyx_string* %3060, %nyx_string* %3062)
  %3064 = getelementptr [20 x i8], [20 x i8]* @.str309, i32 0, i32 0
  %3065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3064, i64 19)
  %3066 = call %nyx_string* @nyx_string_concat(%nyx_string* %3063, %nyx_string* %3065)
  %3067 = call i8* @nyx_string_to_cstr(%nyx_string* %3066)
  call void @nyx_print_string(i8* %3067)
  %3068 = load i1, i1* %want_lcov.ptr
  br i1 %3068, label %then536, label %else537
then536:
  %3069 = getelementptr [11 x i8], [11 x i8]* @.str310, i32 0, i32 0
  %3070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3069, i64 10)
  %3071 = load %nyx_string*, %nyx_string** %2281
  %3072 = call %nyx_string* @nyx_string_concat(%nyx_string* %3070, %nyx_string* %3071)
  %3073 = getelementptr [9 x i8], [9 x i8]* @.str311, i32 0, i32 0
  %3074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3073, i64 8)
  %3075 = call %nyx_string* @nyx_string_concat(%nyx_string* %3072, %nyx_string* %3074)
  %3076 = call i8* @nyx_string_to_cstr(%nyx_string* %3075)
  %3077 = call i64 @nyx_exec_code(i8* %3076)
  %3078 = load %nyx_string*, %nyx_string** %2281
  %3079 = getelementptr [22 x i8], [22 x i8]* @.str312, i32 0, i32 0
  %3080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3079, i64 21)
  %3081 = call %nyx_string* @nyx_string_concat(%nyx_string* %3078, %nyx_string* %3080)
  %3082 = load %nyx_string*, %nyx_string** %2749
  %3083 = call i8* @nyx_string_to_cstr(%nyx_string* %3081)
  %3084 = call i1 @nyx_write_file_safe(i8* %3083, %nyx_string* %3082)
  %3085 = getelementptr [29 x i8], [29 x i8]* @.str313, i32 0, i32 0
  %3086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3085, i64 28)
  %3087 = call i8* @nyx_string_to_cstr(%nyx_string* %3086)
  call void @nyx_print_string(i8* %3087)
  br label %merge538
else537:
  br label %merge538
merge538:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3088 = getelementptr [115 x i8], [115 x i8]* @.str314, i32 0, i32 0
  %3089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3088, i64 114)
  %3090 = call i8* @nyx_string_to_cstr(%nyx_string* %3089)
  call void @nyx_print_string(i8* %3090)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3091 = getelementptr [5 x i8], [5 x i8]* @.str315, i32 0, i32 0
  %3092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3091, i64 4)
  %3093 = load %nyx_string*, %nyx_string** %nh.ptr
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3092, %nyx_string* %3093)
  %3095 = getelementptr [66 x i8], [66 x i8]* @.str316, i32 0, i32 0
  %3096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3095, i64 65)
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3096)
  %3098 = call i8* @nyx_string_to_cstr(%nyx_string* %3097)
  %3099 = call %nyx_string* @nyx_exec(i8* %3098)
  %3100 = call %nyx_string* @nyx_string_trim(%nyx_string* %3099)
  ret %nyx_string* %3100
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3101 = getelementptr [5 x i8], [5 x i8]* @.str317, i32 0, i32 0
  %3102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3101, i64 4)
  %3103 = load %nyx_string*, %nyx_string** %nh.ptr
  %3104 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3103)
  %3105 = getelementptr [74 x i8], [74 x i8]* @.str318, i32 0, i32 0
  %3106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3105, i64 73)
  %3107 = call %nyx_string* @nyx_string_concat(%nyx_string* %3104, %nyx_string* %3106)
  %3108 = call i8* @nyx_string_to_cstr(%nyx_string* %3107)
  %3109 = call %nyx_string* @nyx_exec(i8* %3108)
  %3110 = call %nyx_string* @nyx_string_trim(%nyx_string* %3109)
  ret %nyx_string* %3110
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3111 = getelementptr [24 x i8], [24 x i8]* @.str319, i32 0, i32 0
  %3112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3111, i64 23)
  %3113 = call i8* @nyx_string_to_cstr(%nyx_string* %3112)
  call void @nyx_print_string(i8* %3113)
  %3114 = getelementptr [9 x i8], [9 x i8]* @.str320, i32 0, i32 0
  %3115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3114, i64 8)
  %3116 = call i8* @nyx_string_to_cstr(%nyx_string* %3115)
  %3117 = call %nyx_string* @nyx_getenv(i8* %3116)
  %3118 = alloca %nyx_string*
  store %nyx_string* %3117, %nyx_string** %3118
  %3119 = load %nyx_string*, %nyx_string** %3118
  %3120 = getelementptr [9 x i8], [9 x i8]* @.str321, i32 0, i32 0
  %3121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3120, i64 8)
  %3122 = call %nyx_string* @nyx_string_concat(%nyx_string* %3119, %nyx_string* %3121)
  %3123 = call i8* @nyx_string_to_cstr(%nyx_string* %3122)
  %3124 = call %nyx_string* @nyx_read_file(i8* %3123)
  %3125 = call %nyx_string* @nyx_string_trim(%nyx_string* %3124)
  %3126 = alloca %nyx_string*
  store %nyx_string* %3125, %nyx_string** %3126
  %3127 = load %nyx_string*, %nyx_string** %3118
  %3128 = call %nyx_string* @huella_compilador(%nyx_string* %3127)
  %3129 = alloca %nyx_string*
  store %nyx_string* %3128, %nyx_string** %3129
  %3130 = load %nyx_string*, %nyx_string** %3118
  %3131 = call %nyx_string* @huella_resto(%nyx_string* %3130)
  %3132 = alloca %nyx_string*
  store %nyx_string* %3131, %nyx_string** %3132
  %3133 = getelementptr [18 x i8], [18 x i8]* @.str322, i32 0, i32 0
  %3134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3133, i64 17)
  %3135 = load %nyx_string*, %nyx_string** %3126
  %3136 = call %nyx_string* @nyx_string_concat(%nyx_string* %3134, %nyx_string* %3135)
  %3137 = getelementptr [17 x i8], [17 x i8]* @.str323, i32 0, i32 0
  %3138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3137, i64 16)
  %3139 = call %nyx_string* @nyx_string_concat(%nyx_string* %3136, %nyx_string* %3138)
  %3140 = load %nyx_string*, %nyx_string** %3129
  %3141 = call %nyx_string* @nyx_string_concat(%nyx_string* %3139, %nyx_string* %3140)
  %3142 = getelementptr [2 x i8], [2 x i8]* @.str324, i32 0, i32 0
  %3143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3142, i64 1)
  %3144 = call %nyx_string* @nyx_string_concat(%nyx_string* %3141, %nyx_string* %3143)
  %3145 = call i8* @nyx_string_to_cstr(%nyx_string* %3144)
  call void @nyx_print_string(i8* %3145)
  %3146 = call %TestConfig @load_test_config()
  %3147 = alloca %TestConfig
  store %TestConfig %3146, %TestConfig* %3147
  %3148 = call { i64, i8* }* @nyx_get_args()
  %3149 = alloca { i64, i8* }*
  store { i64, i8* }* %3148, { i64, i8* }** %3149
  %3150 = getelementptr [1 x i8], [1 x i8]* @.str325, i32 0, i32 0
  %3151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3150, i64 0)
  %3152 = alloca %nyx_string*
  store %nyx_string* %3151, %nyx_string** %3152
  %3153 = alloca i64
  store i64 1, i64* %3153
  %3154 = getelementptr [9 x i8], [9 x i8]* @.str326, i32 0, i32 0
  %3155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3154, i64 8)
  %3156 = alloca %nyx_string*
  store %nyx_string* %3155, %nyx_string** %3156
  %3157 = getelementptr [10 x i8], [10 x i8]* @.str327, i32 0, i32 0
  %3158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3157, i64 9)
  %3159 = alloca %nyx_string*
  store %nyx_string* %3158, %nyx_string** %3159
  %3160 = getelementptr [3 x i8], [3 x i8]* @.str328, i32 0, i32 0
  %3161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3160, i64 2)
  %3162 = alloca %nyx_string*
  store %nyx_string* %3161, %nyx_string** %3162
  %3163 = getelementptr [10 x i8], [10 x i8]* @.str329, i32 0, i32 0
  %3164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3163, i64 9)
  %3165 = alloca %nyx_string*
  store %nyx_string* %3164, %nyx_string** %3165
  %3166 = getelementptr [10 x i8], [10 x i8]* @.str330, i32 0, i32 0
  %3167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3166, i64 9)
  %3168 = alloca %nyx_string*
  store %nyx_string* %3167, %nyx_string** %3168
  %3169 = getelementptr [11 x i8], [11 x i8]* @.str331, i32 0, i32 0
  %3170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3169, i64 10)
  %3171 = alloca %nyx_string*
  store %nyx_string* %3170, %nyx_string** %3171
  %3172 = getelementptr [16 x i8], [16 x i8]* @.str332, i32 0, i32 0
  %3173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3172, i64 15)
  %3174 = alloca %nyx_string*
  store %nyx_string* %3173, %nyx_string** %3174
  %3175 = getelementptr [8 x i8], [8 x i8]* @.str333, i32 0, i32 0
  %3176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3175, i64 7)
  %3177 = alloca %nyx_string*
  store %nyx_string* %3176, %nyx_string** %3177
  %3178 = getelementptr [12 x i8], [12 x i8]* @.str334, i32 0, i32 0
  %3179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3178, i64 11)
  %3180 = alloca %nyx_string*
  store %nyx_string* %3179, %nyx_string** %3180
  %3181 = getelementptr [24 x i8], [24 x i8]* @.str335, i32 0, i32 0
  %3182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3181, i64 23)
  %3183 = alloca %nyx_string*
  store %nyx_string* %3182, %nyx_string** %3183
  %3184 = getelementptr [106 x i8], [106 x i8]* @.str336, i32 0, i32 0
  %3185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3184, i64 105)
  %3186 = alloca %nyx_string*
  store %nyx_string* %3185, %nyx_string** %3186
  %3187 = getelementptr [9 x i8], [9 x i8]* @.str337, i32 0, i32 0
  %3188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3187, i64 8)
  %3189 = alloca %nyx_string*
  store %nyx_string* %3188, %nyx_string** %3189
  %3190 = getelementptr [10 x i8], [10 x i8]* @.str338, i32 0, i32 0
  %3191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3190, i64 9)
  %3192 = alloca %nyx_string*
  store %nyx_string* %3191, %nyx_string** %3192
  %3193 = getelementptr [2 x i8], [2 x i8]* @.str339, i32 0, i32 0
  %3194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3193, i64 1)
  %3195 = alloca %nyx_string*
  store %nyx_string* %3194, %nyx_string** %3195
  %3196 = getelementptr [4 x i8], [4 x i8]* @.str340, i32 0, i32 0
  %3197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3196, i64 3)
  %3198 = alloca %nyx_string*
  store %nyx_string* %3197, %nyx_string** %3198
  %3199 = getelementptr [2 x i8], [2 x i8]* @.str341, i32 0, i32 0
  %3200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3199, i64 1)
  %3201 = alloca %nyx_string*
  store %nyx_string* %3200, %nyx_string** %3201
  %3202 = call i8* @llvm.stacksave()
  br label %while_cond539
while_cond539:
  %3203 = load i64, i64* %3153
  %3204 = load { i64, i8* }*, { i64, i8* }** %3149
  %3205 = call i64 @nyx_array_length({ i64, i8* }* %3204)
  %3206 = icmp slt i64 %3203, %3205
  br i1 %3206, label %while_body540, label %while_end541
while_body540:
  call void @llvm.stackrestore(i8* %3202)
  %3207 = load { i64, i8* }*, { i64, i8* }** %3149
  %3208 = load i64, i64* %3153
  %3209 = call i64 @nyx_array_get_checked({ i64, i8* }* %3207, i64 %3208, i64 2)
  %3210 = inttoptr i64 %3209 to %nyx_string*
  %3211 = alloca %nyx_string*
  store %nyx_string* %3210, %nyx_string** %3211
  %3212 = alloca i1
  store i1 false, i1* %3212
  %3213 = load %nyx_string*, %nyx_string** %3211
  %3214 = load %nyx_string*, %nyx_string** %3156
  %3215 = call i1 @nyx_string_equals(%nyx_string* %3213, %nyx_string* %3214)
  br i1 %3215, label %sc_and_rhs542, label %sc_and_end543
sc_and_rhs542:
  %3216 = load i64, i64* %3153
  %3217 = add i64 %3216, 1
  %3218 = load { i64, i8* }*, { i64, i8* }** %3149
  %3219 = call i64 @nyx_array_length({ i64, i8* }* %3218)
  %3220 = icmp slt i64 %3217, %3219
  store i1 %3220, i1* %3212
  br label %sc_and_end543
sc_and_end543:
  %3221 = load i1, i1* %3212
  br i1 %3221, label %then544, label %else545
then544:
  %3222 = load i64, i64* %3153
  %3223 = add i64 %3222, 1
  store i64 %3223, i64* %3153
  %3224 = load { i64, i8* }*, { i64, i8* }** %3149
  %3225 = load i64, i64* %3153
  %3226 = call i64 @nyx_array_get_checked({ i64, i8* }* %3224, i64 %3225, i64 2)
  %3227 = inttoptr i64 %3226 to %nyx_string*
  %3228 = alloca %nyx_string*
  store %nyx_string* %3227, %nyx_string** %3228
  %3229 = load %nyx_string*, %nyx_string** %3228
  %3230 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 2
  store %nyx_string* %3229, %nyx_string** %3230
  br label %merge546
else545:
  %3231 = alloca i1
  store i1 true, i1* %3231
  %3232 = load %nyx_string*, %nyx_string** %3211
  %3233 = load %nyx_string*, %nyx_string** %3159
  %3234 = call i1 @nyx_string_equals(%nyx_string* %3232, %nyx_string* %3233)
  br i1 %3234, label %sc_or_end548, label %sc_or_rhs547
sc_or_rhs547:
  %3235 = load %nyx_string*, %nyx_string** %3211
  %3236 = load %nyx_string*, %nyx_string** %3162
  %3237 = call i1 @nyx_string_equals(%nyx_string* %3235, %nyx_string* %3236)
  store i1 %3237, i1* %3231
  br label %sc_or_end548
sc_or_end548:
  %3238 = load i1, i1* %3231
  br i1 %3238, label %then549, label %else550
then549:
  %3239 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 3
  store i1 1, i1* %3239
  br label %merge551
else550:
  %3240 = alloca i1
  store i1 false, i1* %3240
  %3241 = load %nyx_string*, %nyx_string** %3211
  %3242 = load %nyx_string*, %nyx_string** %3165
  %3243 = call i1 @nyx_string_equals(%nyx_string* %3241, %nyx_string* %3242)
  br i1 %3243, label %sc_and_rhs552, label %sc_and_end553
sc_and_rhs552:
  %3244 = load i64, i64* %3153
  %3245 = add i64 %3244, 1
  %3246 = load { i64, i8* }*, { i64, i8* }** %3149
  %3247 = call i64 @nyx_array_length({ i64, i8* }* %3246)
  %3248 = icmp slt i64 %3245, %3247
  store i1 %3248, i1* %3240
  br label %sc_and_end553
sc_and_end553:
  %3249 = load i1, i1* %3240
  br i1 %3249, label %then554, label %else555
then554:
  %3250 = load i64, i64* %3153
  %3251 = add i64 %3250, 1
  store i64 %3251, i64* %3153
  %3252 = load { i64, i8* }*, { i64, i8* }** %3149
  %3253 = load i64, i64* %3153
  %3254 = call i64 @nyx_array_get_checked({ i64, i8* }* %3252, i64 %3253, i64 2)
  %3255 = inttoptr i64 %3254 to %nyx_string*
  %3256 = alloca %nyx_string*
  store %nyx_string* %3255, %nyx_string** %3256
  %3257 = load %nyx_string*, %nyx_string** %3256
  %3258 = call i64 @nyx_string_to_int(%nyx_string* %3257)
  %3259 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 1
  store i64 %3258, i64* %3259
  br label %merge556
else555:
  %3260 = load %nyx_string*, %nyx_string** %3211
  %3261 = load %nyx_string*, %nyx_string** %3168
  %3262 = call i1 @nyx_string_equals(%nyx_string* %3260, %nyx_string* %3261)
  br i1 %3262, label %then557, label %else558
then557:
  %3263 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 7
  store i1 1, i1* %3263
  br label %merge559
else558:
  %3264 = load %nyx_string*, %nyx_string** %3211
  %3265 = load %nyx_string*, %nyx_string** %3171
  %3266 = call i1 @nyx_string_equals(%nyx_string* %3264, %nyx_string* %3265)
  br i1 %3266, label %then560, label %else561
then560:
  %3267 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 5
  store i1 1, i1* %3267
  br label %merge562
else561:
  %3268 = load %nyx_string*, %nyx_string** %3211
  %3269 = load %nyx_string*, %nyx_string** %3174
  %3270 = call i1 @nyx_string_equals(%nyx_string* %3268, %nyx_string* %3269)
  br i1 %3270, label %then563, label %else564
then563:
  %3271 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 5
  store i1 1, i1* %3271
  %3272 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 6
  store i1 1, i1* %3272
  br label %merge565
else564:
  %3273 = alloca i1
  store i1 true, i1* %3273
  %3274 = load %nyx_string*, %nyx_string** %3211
  %3275 = load %nyx_string*, %nyx_string** %3177
  %3276 = call i1 @nyx_string_equals(%nyx_string* %3274, %nyx_string* %3275)
  br i1 %3276, label %sc_or_end567, label %sc_or_rhs566
sc_or_rhs566:
  %3277 = load %nyx_string*, %nyx_string** %3211
  %3278 = load %nyx_string*, %nyx_string** %3180
  %3279 = call i1 @nyx_string_starts_with(%nyx_string* %3277, %nyx_string* %3278)
  store i1 %3279, i1* %3273
  br label %sc_or_end567
sc_or_end567:
  %3280 = load i1, i1* %3273
  br i1 %3280, label %then568, label %else569
then568:
  %3281 = load %nyx_string*, %nyx_string** %3183
  %3282 = load %nyx_string*, %nyx_string** %3211
  %3283 = call %nyx_string* @nyx_string_concat(%nyx_string* %3281, %nyx_string* %3282)
  %3284 = call i8* @nyx_string_to_cstr(%nyx_string* %3283)
  call void @nyx_print_string(i8* %3284)
  %3285 = load %nyx_string*, %nyx_string** %3186
  %3286 = call i8* @nyx_string_to_cstr(%nyx_string* %3285)
  call void @nyx_print_string(i8* %3286)
  %3287 = call i64 @print_valid_options()
  ret i64 1
else569:
  %3288 = alloca i1
  store i1 true, i1* %3288
  %3289 = load %nyx_string*, %nyx_string** %3211
  %3290 = load %nyx_string*, %nyx_string** %3189
  %3291 = call i1 @nyx_string_equals(%nyx_string* %3289, %nyx_string* %3290)
  br i1 %3291, label %sc_or_end572, label %sc_or_rhs571
sc_or_rhs571:
  %3292 = load %nyx_string*, %nyx_string** %3211
  %3293 = load %nyx_string*, %nyx_string** %3192
  %3294 = call i1 @nyx_string_starts_with(%nyx_string* %3292, %nyx_string* %3293)
  store i1 %3294, i1* %3288
  br label %sc_or_end572
sc_or_end572:
  %3295 = load i1, i1* %3288
  br i1 %3295, label %then573, label %else574
then573:
  %3296 = load %nyx_string*, %nyx_string** %3211
  store %nyx_string* %3296, %nyx_string** %3152
  %3297 = alloca i1
  store i1 false, i1* %3297
  %3298 = load %nyx_string*, %nyx_string** %3211
  %3299 = load %nyx_string*, %nyx_string** %3189
  %3300 = call i1 @nyx_string_equals(%nyx_string* %3298, %nyx_string* %3299)
  br i1 %3300, label %sc_and_rhs576, label %sc_and_end577
sc_and_rhs576:
  %3301 = load i64, i64* %3153
  %3302 = add i64 %3301, 1
  %3303 = load { i64, i8* }*, { i64, i8* }** %3149
  %3304 = call i64 @nyx_array_length({ i64, i8* }* %3303)
  %3305 = icmp slt i64 %3302, %3304
  store i1 %3305, i1* %3297
  br label %sc_and_end577
sc_and_end577:
  %3306 = load i1, i1* %3297
  br i1 %3306, label %then578, label %else579
then578:
  %3307 = load i64, i64* %3153
  %3308 = add i64 %3307, 1
  store i64 %3308, i64* %3153
  %3309 = load { i64, i8* }*, { i64, i8* }** %3149
  %3310 = load i64, i64* %3153
  %3311 = call i64 @nyx_array_get_checked({ i64, i8* }* %3309, i64 %3310, i64 2)
  %3312 = inttoptr i64 %3311 to %nyx_string*
  %3313 = alloca %nyx_string*
  store %nyx_string* %3312, %nyx_string** %3313
  %3314 = load %nyx_string*, %nyx_string** %3211
  %3315 = load %nyx_string*, %nyx_string** %3195
  %3316 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3315)
  %3317 = load %nyx_string*, %nyx_string** %3313
  %3318 = call %nyx_string* @nyx_string_concat(%nyx_string* %3316, %nyx_string* %3317)
  store %nyx_string* %3318, %nyx_string** %3152
  br label %merge580
else579:
  br label %merge580
merge580:
  br label %merge575
else574:
  %3319 = alloca i1
  store i1 true, i1* %3319
  %3320 = load %nyx_string*, %nyx_string** %3211
  %3321 = load %nyx_string*, %nyx_string** %3156
  %3322 = call i1 @nyx_string_equals(%nyx_string* %3320, %nyx_string* %3321)
  br i1 %3322, label %sc_or_end582, label %sc_or_rhs581
sc_or_rhs581:
  %3323 = load %nyx_string*, %nyx_string** %3211
  %3324 = load %nyx_string*, %nyx_string** %3165
  %3325 = call i1 @nyx_string_equals(%nyx_string* %3323, %nyx_string* %3324)
  store i1 %3325, i1* %3319
  br label %sc_or_end582
sc_or_end582:
  %3326 = load i1, i1* %3319
  br i1 %3326, label %then583, label %else584
then583:
  br label %merge585
else584:
  %3327 = load %nyx_string*, %nyx_string** %3211
  %3328 = load %nyx_string*, %nyx_string** %3198
  %3329 = call i1 @nyx_string_ends_with(%nyx_string* %3327, %nyx_string* %3328)
  br i1 %3329, label %then586, label %else587
then586:
  %3330 = load %nyx_string*, %nyx_string** %3211
  %3331 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 4
  store %nyx_string* %3330, %nyx_string** %3331
  br label %merge588
else587:
  %3332 = load %nyx_string*, %nyx_string** %3211
  %3333 = load %nyx_string*, %nyx_string** %3201
  %3334 = call i1 @nyx_string_starts_with(%nyx_string* %3332, %nyx_string* %3333)
  br i1 %3334, label %then589, label %else590
then589:
  %3335 = load %nyx_string*, %nyx_string** %3183
  %3336 = load %nyx_string*, %nyx_string** %3211
  %3337 = call %nyx_string* @nyx_string_concat(%nyx_string* %3335, %nyx_string* %3336)
  %3338 = call i8* @nyx_string_to_cstr(%nyx_string* %3337)
  call void @nyx_print_string(i8* %3338)
  %3339 = call i64 @print_valid_options()
  ret i64 1
else590:
  br label %merge591
merge591:
  br label %merge588
merge588:
  br label %merge585
merge585:
  br label %merge575
merge575:
  br label %merge570
merge570:
  br label %merge565
merge565:
  br label %merge562
merge562:
  br label %merge559
merge559:
  br label %merge556
merge556:
  br label %merge551
merge551:
  br label %merge546
merge546:
  %3340 = load i64, i64* %3153
  %3341 = add i64 %3340, 1
  store i64 %3341, i64* %3153
  br label %while_cond539
while_end541:
  %3342 = load %nyx_string*, %nyx_string** %3152
  %3343 = getelementptr [1 x i8], [1 x i8]* @.str342, i32 0, i32 0
  %3344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3343, i64 0)
  %3345 = call i1 @nyx_string_equals(%nyx_string* %3342, %nyx_string* %3344)
  %3346 = xor i1 %3345, true
  br i1 %3346, label %then592, label %else593
then592:
  %3347 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 5
  %3348 = load i1, i1* %3347
  br i1 %3348, label %then595, label %else596
then595:
  %3349 = getelementptr [47 x i8], [47 x i8]* @.str343, i32 0, i32 0
  %3350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3349, i64 46)
  %3351 = load %nyx_string*, %nyx_string** %3152
  %3352 = call %nyx_string* @nyx_string_concat(%nyx_string* %3350, %nyx_string* %3351)
  %3353 = getelementptr [58 x i8], [58 x i8]* @.str344, i32 0, i32 0
  %3354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3353, i64 57)
  %3355 = call %nyx_string* @nyx_string_concat(%nyx_string* %3352, %nyx_string* %3354)
  %3356 = call i8* @nyx_string_to_cstr(%nyx_string* %3355)
  call void @nyx_print_string(i8* %3356)
  br label %merge597
else596:
  %3357 = getelementptr [24 x i8], [24 x i8]* @.str345, i32 0, i32 0
  %3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3357, i64 23)
  %3359 = load %nyx_string*, %nyx_string** %3152
  %3360 = call %nyx_string* @nyx_string_concat(%nyx_string* %3358, %nyx_string* %3359)
  %3361 = call i8* @nyx_string_to_cstr(%nyx_string* %3360)
  call void @nyx_print_string(i8* %3361)
  br label %merge597
merge597:
  %3362 = call i64 @print_valid_options()
  ret i64 1
else593:
  br label %merge594
merge594:
  %3363 = getelementptr [1 x i8], [1 x i8]* @.str346, i32 0, i32 0
  %3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3363, i64 0)
  %3365 = alloca %nyx_string*
  store %nyx_string* %3364, %nyx_string** %3365
  %3366 = getelementptr [1 x i8], [1 x i8]* @.str347, i32 0, i32 0
  %3367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3366, i64 0)
  %3368 = alloca %nyx_string*
  store %nyx_string* %3367, %nyx_string** %3368
  %3369 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 5
  %3370 = load i1, i1* %3369
  br i1 %3370, label %then598, label %else599
then598:
  %3371 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3371, %nyx_string** %3365
  %3372 = load %nyx_string*, %nyx_string** %3365
  %3373 = getelementptr [1 x i8], [1 x i8]* @.str348, i32 0, i32 0
  %3374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3373, i64 0)
  %3375 = call i1 @nyx_string_equals(%nyx_string* %3372, %nyx_string* %3374)
  br i1 %3375, label %then601, label %else602
then601:
  %3376 = call %nyx_string* @cov_clang_major()
  %3377 = alloca %nyx_string*
  store %nyx_string* %3376, %nyx_string** %3377
  %3378 = getelementptr [5 x i8], [5 x i8]* @.str349, i32 0, i32 0
  %3379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3378, i64 4)
  %3380 = alloca %nyx_string*
  store %nyx_string* %3379, %nyx_string** %3380
  %3381 = load %nyx_string*, %nyx_string** %3377
  %3382 = getelementptr [1 x i8], [1 x i8]* @.str350, i32 0, i32 0
  %3383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3382, i64 0)
  %3384 = call i1 @nyx_string_equals(%nyx_string* %3381, %nyx_string* %3383)
  %3385 = xor i1 %3384, true
  br i1 %3385, label %then604, label %else605
then604:
  %3386 = getelementptr [6 x i8], [6 x i8]* @.str351, i32 0, i32 0
  %3387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3386, i64 5)
  %3388 = load %nyx_string*, %nyx_string** %3377
  %3389 = call %nyx_string* @nyx_string_concat(%nyx_string* %3387, %nyx_string* %3388)
  store %nyx_string* %3389, %nyx_string** %3380
  br label %merge606
else605:
  br label %merge606
merge606:
  %3390 = getelementptr [101 x i8], [101 x i8]* @.str352, i32 0, i32 0
  %3391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3390, i64 100)
  %3392 = call i8* @nyx_string_to_cstr(%nyx_string* %3391)
  call void @nyx_print_string(i8* %3392)
  %3393 = getelementptr [35 x i8], [35 x i8]* @.str353, i32 0, i32 0
  %3394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3393, i64 34)
  %3395 = load %nyx_string*, %nyx_string** %3380
  %3396 = call %nyx_string* @nyx_string_concat(%nyx_string* %3394, %nyx_string* %3395)
  %3397 = call i8* @nyx_string_to_cstr(%nyx_string* %3396)
  call void @nyx_print_string(i8* %3397)
  %3398 = getelementptr [82 x i8], [82 x i8]* @.str354, i32 0, i32 0
  %3399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3398, i64 81)
  %3400 = call i8* @nyx_string_to_cstr(%nyx_string* %3399)
  call void @nyx_print_string(i8* %3400)
  %3401 = getelementptr [82 x i8], [82 x i8]* @.str355, i32 0, i32 0
  %3402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3401, i64 81)
  %3403 = call i8* @nyx_string_to_cstr(%nyx_string* %3402)
  call void @nyx_print_string(i8* %3403)
  ret i64 1
else602:
  br label %merge603
merge603:
  %3404 = getelementptr [30 x i8], [30 x i8]* @.str356, i32 0, i32 0
  %3405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3404, i64 29)
  %3406 = call i8* @nyx_string_to_cstr(%nyx_string* %3405)
  %3407 = call %nyx_string* @nyx_exec(i8* %3406)
  %3408 = call %nyx_string* @nyx_string_trim(%nyx_string* %3407)
  store %nyx_string* %3408, %nyx_string** %3368
  %3409 = load %nyx_string*, %nyx_string** %3368
  %3410 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %3411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3410, i64 0)
  %3412 = call i1 @nyx_string_equals(%nyx_string* %3409, %nyx_string* %3411)
  br i1 %3412, label %then607, label %else608
then607:
  %3413 = getelementptr [55 x i8], [55 x i8]* @.str358, i32 0, i32 0
  %3414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3413, i64 54)
  %3415 = call i8* @nyx_string_to_cstr(%nyx_string* %3414)
  call void @nyx_print_string(i8* %3415)
  ret i64 1
else608:
  br label %merge609
merge609:
  br label %merge600
else599:
  br label %merge600
merge600:
  %3416 = call { i64, i8* }* @nyx_array_new_ptr()
  %3417 = alloca { i64, i8* }*
  store { i64, i8* }* %3416, { i64, i8* }** %3417
  %3418 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 4
  %3419 = load %nyx_string*, %nyx_string** %3418
  %3420 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %3421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3420, i64 0)
  %3422 = call i1 @nyx_string_equals(%nyx_string* %3419, %nyx_string* %3421)
  %3423 = xor i1 %3422, true
  br i1 %3423, label %then610, label %else611
then610:
  %3424 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 4
  %3425 = load %nyx_string*, %nyx_string** %3424
  %3426 = call i8* @nyx_string_to_cstr(%nyx_string* %3425)
  %3427 = call i1 @nyx_file_exists(i8* %3426)
  %3428 = xor i1 %3427, true
  br i1 %3428, label %then613, label %else614
then613:
  %3429 = getelementptr [24 x i8], [24 x i8]* @.str360, i32 0, i32 0
  %3430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3429, i64 23)
  %3431 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 4
  %3432 = load %nyx_string*, %nyx_string** %3431
  %3433 = call %nyx_string* @nyx_string_concat(%nyx_string* %3430, %nyx_string* %3432)
  %3434 = call i8* @nyx_string_to_cstr(%nyx_string* %3433)
  call void @nyx_print_string(i8* %3434)
  ret i64 1
else614:
  br label %merge615
merge615:
  %3435 = load { i64, i8* }*, { i64, i8* }** %3417
  %3436 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 4
  %3437 = load %nyx_string*, %nyx_string** %3436
  %3438 = ptrtoint %nyx_string* %3437 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3435, i64 %3438, i64 2)
  br label %merge612
else611:
  %3439 = load %TestConfig, %TestConfig* %3147
  %3440 = call { i64, i8* }* @discover_tests(%TestConfig %3439)
  store { i64, i8* }* %3440, { i64, i8* }** %3417
  br label %merge612
merge612:
  %3441 = load { i64, i8* }*, { i64, i8* }** %3417
  %3442 = call i64 @nyx_array_length({ i64, i8* }* %3441)
  %3443 = icmp eq i64 %3442, 0
  br i1 %3443, label %then616, label %else617
then616:
  %3444 = getelementptr [23 x i8], [23 x i8]* @.str361, i32 0, i32 0
  %3445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3444, i64 22)
  %3446 = call i8* @nyx_string_to_cstr(%nyx_string* %3445)
  call void @nyx_print_string(i8* %3446)
  %3447 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 2
  %3448 = load %nyx_string*, %nyx_string** %3447
  %3449 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %3450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3449, i64 0)
  %3451 = call i1 @nyx_string_equals(%nyx_string* %3448, %nyx_string* %3450)
  %3452 = xor i1 %3451, true
  br i1 %3452, label %then619, label %else620
then619:
  %3453 = getelementptr [12 x i8], [12 x i8]* @.str363, i32 0, i32 0
  %3454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3453, i64 11)
  %3455 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 2
  %3456 = load %nyx_string*, %nyx_string** %3455
  %3457 = call %nyx_string* @nyx_string_concat(%nyx_string* %3454, %nyx_string* %3456)
  %3458 = getelementptr [2 x i8], [2 x i8]* @.str364, i32 0, i32 0
  %3459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3458, i64 1)
  %3460 = call %nyx_string* @nyx_string_concat(%nyx_string* %3457, %nyx_string* %3459)
  %3461 = call i8* @nyx_string_to_cstr(%nyx_string* %3460)
  call void @nyx_print_string(i8* %3461)
  br label %merge621
else620:
  br label %merge621
merge621:
  %3462 = getelementptr [14 x i8], [14 x i8]* @.str365, i32 0, i32 0
  %3463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3462, i64 13)
  %3464 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 0
  %3465 = load %nyx_string*, %nyx_string** %3464
  %3466 = call %nyx_string* @nyx_string_concat(%nyx_string* %3463, %nyx_string* %3465)
  %3467 = getelementptr [2 x i8], [2 x i8]* @.str366, i32 0, i32 0
  %3468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3467, i64 1)
  %3469 = call %nyx_string* @nyx_string_concat(%nyx_string* %3466, %nyx_string* %3468)
  %3470 = call i8* @nyx_string_to_cstr(%nyx_string* %3469)
  call void @nyx_print_string(i8* %3470)
  ret i64 0
else617:
  br label %merge618
merge618:
  %3471 = getelementptr [9 x i8], [9 x i8]* @.str367, i32 0, i32 0
  %3472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3471, i64 8)
  %3473 = load { i64, i8* }*, { i64, i8* }** %3417
  %3474 = call i64 @nyx_array_length({ i64, i8* }* %3473)
  %3475 = call %nyx_string* @nyx_string_from_int(i64 %3474)
  %3476 = call %nyx_string* @nyx_string_concat(%nyx_string* %3472, %nyx_string* %3475)
  %3477 = getelementptr [14 x i8], [14 x i8]* @.str368, i32 0, i32 0
  %3478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3477, i64 13)
  %3479 = call %nyx_string* @nyx_string_concat(%nyx_string* %3476, %nyx_string* %3478)
  %3480 = call i8* @nyx_string_to_cstr(%nyx_string* %3479)
  call void @nyx_print_string(i8* %3480)
  %3481 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 2
  %3482 = load %nyx_string*, %nyx_string** %3481
  %3483 = getelementptr [1 x i8], [1 x i8]* @.str369, i32 0, i32 0
  %3484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3483, i64 0)
  %3485 = call i1 @nyx_string_equals(%nyx_string* %3482, %nyx_string* %3484)
  %3486 = xor i1 %3485, true
  br i1 %3486, label %then622, label %else623
then622:
  %3487 = getelementptr [12 x i8], [12 x i8]* @.str370, i32 0, i32 0
  %3488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3487, i64 11)
  %3489 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 2
  %3490 = load %nyx_string*, %nyx_string** %3489
  %3491 = call %nyx_string* @nyx_string_concat(%nyx_string* %3488, %nyx_string* %3490)
  %3492 = getelementptr [2 x i8], [2 x i8]* @.str371, i32 0, i32 0
  %3493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3492, i64 1)
  %3494 = call %nyx_string* @nyx_string_concat(%nyx_string* %3491, %nyx_string* %3493)
  %3495 = call i8* @nyx_string_to_cstr(%nyx_string* %3494)
  call void @nyx_print_string(i8* %3495)
  br label %merge624
else623:
  br label %merge624
merge624:
  %3496 = getelementptr [1 x i8], [1 x i8]* @.str372, i32 0, i32 0
  %3497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3496, i64 0)
  %3498 = call i8* @nyx_string_to_cstr(%nyx_string* %3497)
  call void @nyx_print_string(i8* %3498)
  %3499 = alloca i1
  store i1 false, i1* %3499
  %3500 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 8
  %3501 = load %nyx_string*, %nyx_string** %3500
  %3502 = getelementptr [1 x i8], [1 x i8]* @.str373, i32 0, i32 0
  %3503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3502, i64 0)
  %3504 = call i1 @nyx_string_equals(%nyx_string* %3501, %nyx_string* %3503)
  %3505 = xor i1 %3504, true
  br i1 %3505, label %sc_and_rhs625, label %sc_and_end626
sc_and_rhs625:
  %3506 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 5
  %3507 = load i1, i1* %3506
  %3508 = xor i1 %3507, true
  store i1 %3508, i1* %3499
  br label %sc_and_end626
sc_and_end626:
  %3509 = load i1, i1* %3499
  br i1 %3509, label %then627, label %else628
then627:
  %3510 = getelementptr [9 x i8], [9 x i8]* @.str374, i32 0, i32 0
  %3511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3510, i64 8)
  %3512 = call i8* @nyx_string_to_cstr(%nyx_string* %3511)
  %3513 = call %nyx_string* @nyx_getenv(i8* %3512)
  %3514 = alloca %nyx_string*
  store %nyx_string* %3513, %nyx_string** %3514
  %3515 = load %nyx_string*, %nyx_string** %3514
  %3516 = getelementptr [11 x i8], [11 x i8]* @.str375, i32 0, i32 0
  %3517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3516, i64 10)
  %3518 = call %nyx_string* @nyx_string_concat(%nyx_string* %3515, %nyx_string* %3517)
  %3519 = alloca %nyx_string*
  store %nyx_string* %3518, %nyx_string** %3519
  %3520 = load %nyx_string*, %nyx_string** %3519
  %3521 = call i8* @nyx_string_to_cstr(%nyx_string* %3520)
  %3522 = call i1 @nyx_file_exists(i8* %3521)
  %3523 = xor i1 %3522, true
  br i1 %3523, label %then630, label %else631
then630:
  %3524 = load %nyx_string*, %nyx_string** %3514
  %3525 = getelementptr [15 x i8], [15 x i8]* @.str376, i32 0, i32 0
  %3526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3525, i64 14)
  %3527 = call %nyx_string* @nyx_string_concat(%nyx_string* %3524, %nyx_string* %3526)
  store %nyx_string* %3527, %nyx_string** %3519
  br label %merge632
else631:
  br label %merge632
merge632:
  %3528 = getelementptr [1 x i8], [1 x i8]* @.str377, i32 0, i32 0
  %3529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3528, i64 0)
  %3530 = alloca %nyx_string*
  store %nyx_string* %3529, %nyx_string** %3530
  %3531 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 7
  %3532 = load i1, i1* %3531
  br i1 %3532, label %then633, label %else634
then633:
  %3533 = getelementptr [11 x i8], [11 x i8]* @.str378, i32 0, i32 0
  %3534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3533, i64 10)
  store %nyx_string* %3534, %nyx_string** %3530
  br label %merge635
else634:
  br label %merge635
merge635:
  %3535 = getelementptr [33 x i8], [33 x i8]* @.str379, i32 0, i32 0
  %3536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3535, i64 32)
  %3537 = call i8* @nyx_string_to_cstr(%nyx_string* %3536)
  %3538 = call %nyx_string* @nyx_exec(i8* %3537)
  %3539 = call %nyx_string* @nyx_string_trim(%nyx_string* %3538)
  %3540 = alloca %nyx_string*
  store %nyx_string* %3539, %nyx_string** %3540
  %3541 = getelementptr [2 x i8], [2 x i8]* @.str380, i32 0, i32 0
  %3542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3541, i64 1)
  %3543 = load %nyx_string*, %nyx_string** %3519
  %3544 = call %nyx_string* @nyx_string_concat(%nyx_string* %3542, %nyx_string* %3543)
  %3545 = getelementptr [7 x i8], [7 x i8]* @.str381, i32 0, i32 0
  %3546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3545, i64 6)
  %3547 = call %nyx_string* @nyx_string_concat(%nyx_string* %3544, %nyx_string* %3546)
  %3548 = load %nyx_string*, %nyx_string** %3530
  %3549 = call %nyx_string* @nyx_string_concat(%nyx_string* %3547, %nyx_string* %3548)
  %3550 = getelementptr [5 x i8], [5 x i8]* @.str382, i32 0, i32 0
  %3551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3550, i64 4)
  %3552 = call %nyx_string* @nyx_string_concat(%nyx_string* %3549, %nyx_string* %3551)
  %3553 = load %nyx_string*, %nyx_string** %3540
  %3554 = call %nyx_string* @nyx_string_concat(%nyx_string* %3552, %nyx_string* %3553)
  %3555 = getelementptr [7 x i8], [7 x i8]* @.str383, i32 0, i32 0
  %3556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3555, i64 6)
  %3557 = call %nyx_string* @nyx_string_concat(%nyx_string* %3554, %nyx_string* %3556)
  %3558 = call i8* @nyx_string_to_cstr(%nyx_string* %3557)
  %3559 = call i64 @nyx_exec_code(i8* %3558)
  %3560 = alloca i64
  store i64 %3559, i64* %3560
  %3561 = load %nyx_string*, %nyx_string** %3540
  %3562 = call i8* @nyx_string_to_cstr(%nyx_string* %3561)
  %3563 = call %nyx_string* @nyx_read_file(i8* %3562)
  %3564 = alloca %nyx_string*
  store %nyx_string* %3563, %nyx_string** %3564
  %3565 = getelementptr [8 x i8], [8 x i8]* @.str384, i32 0, i32 0
  %3566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3565, i64 7)
  %3567 = load %nyx_string*, %nyx_string** %3540
  %3568 = call %nyx_string* @nyx_string_concat(%nyx_string* %3566, %nyx_string* %3567)
  %3569 = getelementptr [2 x i8], [2 x i8]* @.str385, i32 0, i32 0
  %3570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3569, i64 1)
  %3571 = call %nyx_string* @nyx_string_concat(%nyx_string* %3568, %nyx_string* %3570)
  %3572 = call i8* @nyx_string_to_cstr(%nyx_string* %3571)
  %3573 = call i64 @nyx_exec_code(i8* %3572)
  %3574 = load i64, i64* %3560
  %3575 = icmp ne i64 %3574, 0
  br i1 %3575, label %then636, label %else637
then636:
  %3576 = getelementptr [65 x i8], [65 x i8]* @.str386, i32 0, i32 0
  %3577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3576, i64 64)
  %3578 = call i8* @nyx_string_to_cstr(%nyx_string* %3577)
  call void @nyx_print_string(i8* %3578)
  %3579 = load %nyx_string*, %nyx_string** %3564
  %3580 = call i8* @nyx_string_to_cstr(%nyx_string* %3579)
  call void @nyx_print_string(i8* %3580)
  ret i64 1
else637:
  br label %merge638
merge638:
  %3581 = load %nyx_string*, %nyx_string** %3564
  %3582 = getelementptr [2 x i8], [2 x i8]* @.str387, i32 0, i32 0
  %3583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3582, i64 1)
  %3584 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3581, %nyx_string* %3583)
  %3585 = alloca { i64, i8* }*
  store { i64, i8* }* %3584, { i64, i8* }** %3585
  %3586 = alloca i64
  store i64 0, i64* %3586
  %3587 = alloca i64
  store i64 0, i64* %3587
  %3588 = alloca i64
  store i64 0, i64* %3588
  %3589 = getelementptr [13 x i8], [13 x i8]* @.str388, i32 0, i32 0
  %3590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3589, i64 12)
  %3591 = alloca %nyx_string*
  store %nyx_string* %3590, %nyx_string** %3591
  %3592 = getelementptr [6 x i8], [6 x i8]* @.str389, i32 0, i32 0
  %3593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3592, i64 5)
  %3594 = alloca %nyx_string*
  store %nyx_string* %3593, %nyx_string** %3594
  %3595 = getelementptr [8 x i8], [8 x i8]* @.str390, i32 0, i32 0
  %3596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3595, i64 7)
  %3597 = alloca %nyx_string*
  store %nyx_string* %3596, %nyx_string** %3597
  %3598 = getelementptr [4 x i8], [4 x i8]* @.str391, i32 0, i32 0
  %3599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3598, i64 3)
  %3600 = alloca %nyx_string*
  store %nyx_string* %3599, %nyx_string** %3600
  %3601 = call i8* @llvm.stacksave()
  br label %while_cond639
while_cond639:
  %3602 = load i64, i64* %3586
  %3603 = load { i64, i8* }*, { i64, i8* }** %3585
  %3604 = call i64 @nyx_array_length({ i64, i8* }* %3603)
  %3605 = icmp slt i64 %3602, %3604
  br i1 %3605, label %while_body640, label %while_end641
while_body640:
  call void @llvm.stackrestore(i8* %3601)
  %3606 = load { i64, i8* }*, { i64, i8* }** %3585
  %3607 = load i64, i64* %3586
  %3608 = call i64 @nyx_array_get_checked({ i64, i8* }* %3606, i64 %3607, i64 2)
  %3609 = inttoptr i64 %3608 to %nyx_string*
  %3610 = alloca %nyx_string*
  store %nyx_string* %3609, %nyx_string** %3610
  %3611 = load %nyx_string*, %nyx_string** %3610
  %3612 = load %nyx_string*, %nyx_string** %3591
  %3613 = call i1 @nyx_string_starts_with(%nyx_string* %3611, %nyx_string* %3612)
  br i1 %3613, label %then642, label %else643
then642:
  %3614 = load %nyx_string*, %nyx_string** %3610
  %3615 = load %nyx_string*, %nyx_string** %3610
  %3616 = call i64 @nyx_string_byte_length(%nyx_string* %3615)
  %3617 = call %nyx_string* @nyx_string_substring(%nyx_string* %3614, i64 12, i64 %3616)
  %3618 = call %nyx_string* @nyx_string_trim(%nyx_string* %3617)
  %3619 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 9
  store %nyx_string* %3618, %nyx_string** %3619
  br label %merge644
else643:
  br label %merge644
merge644:
  %3620 = load %nyx_string*, %nyx_string** %3610
  %3621 = load %nyx_string*, %nyx_string** %3594
  %3622 = call i1 @nyx_string_contains(%nyx_string* %3620, %nyx_string* %3621)
  br i1 %3622, label %then645, label %else646
then645:
  %3623 = load i64, i64* %3587
  %3624 = add i64 %3623, 1
  store i64 %3624, i64* %3587
  br label %merge647
else646:
  br label %merge647
merge647:
  %3625 = load %nyx_string*, %nyx_string** %3610
  %3626 = load %nyx_string*, %nyx_string** %3597
  %3627 = call i1 @nyx_string_contains(%nyx_string* %3625, %nyx_string* %3626)
  br i1 %3627, label %then648, label %else649
then648:
  %3628 = load i64, i64* %3588
  %3629 = add i64 %3628, 1
  store i64 %3629, i64* %3588
  br label %merge650
else649:
  br label %merge650
merge650:
  %3630 = load %nyx_string*, %nyx_string** %3610
  %3631 = load %nyx_string*, %nyx_string** %3600
  %3632 = call i1 @nyx_string_contains(%nyx_string* %3630, %nyx_string* %3631)
  br i1 %3632, label %then651, label %else652
then651:
  %3633 = load %nyx_string*, %nyx_string** %3610
  %3634 = call i8* @nyx_string_to_cstr(%nyx_string* %3633)
  call void @nyx_print_string(i8* %3634)
  br label %merge653
else652:
  br label %merge653
merge653:
  %3635 = load i64, i64* %3586
  %3636 = add i64 %3635, 1
  store i64 %3636, i64* %3586
  br label %while_cond639
while_end641:
  %3637 = getelementptr [18 x i8], [18 x i8]* @.str392, i32 0, i32 0
  %3638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3637, i64 17)
  %3639 = load i64, i64* %3587
  %3640 = call %nyx_string* @nyx_string_from_int(i64 %3639)
  %3641 = call %nyx_string* @nyx_string_concat(%nyx_string* %3638, %nyx_string* %3640)
  %3642 = getelementptr [16 x i8], [16 x i8]* @.str393, i32 0, i32 0
  %3643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3642, i64 15)
  %3644 = call %nyx_string* @nyx_string_concat(%nyx_string* %3641, %nyx_string* %3643)
  %3645 = load i64, i64* %3588
  %3646 = call %nyx_string* @nyx_string_from_int(i64 %3645)
  %3647 = call %nyx_string* @nyx_string_concat(%nyx_string* %3644, %nyx_string* %3646)
  %3648 = getelementptr [16 x i8], [16 x i8]* @.str394, i32 0, i32 0
  %3649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3648, i64 15)
  %3650 = call %nyx_string* @nyx_string_concat(%nyx_string* %3647, %nyx_string* %3649)
  %3651 = call i8* @nyx_string_to_cstr(%nyx_string* %3650)
  call void @nyx_print_string(i8* %3651)
  %3652 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %3653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3652, i64 0)
  %3654 = call i8* @nyx_string_to_cstr(%nyx_string* %3653)
  call void @nyx_print_string(i8* %3654)
  br label %merge629
else628:
  br label %merge629
merge629:
  %3655 = call { i64, i8* }* @nyx_array_new_ptr()
  %3656 = alloca { i64, i8* }*
  store { i64, i8* }* %3655, { i64, i8* }** %3656
  %3657 = call { i64, i8* }* @nyx_array_new_ptr()
  %3658 = alloca { i64, i8* }*
  store { i64, i8* }* %3657, { i64, i8* }** %3658
  %3659 = call { i64, i8* }* @nyx_array_new_ptr()
  %3660 = alloca { i64, i8* }*
  store { i64, i8* }* %3659, { i64, i8* }** %3660
  %3661 = alloca i64
  store i64 0, i64* %3661
  %3662 = alloca i64
  store i64 0, i64* %3662
  %3663 = alloca i64
  store i64 0, i64* %3663
  %3664 = call i8* @llvm.stacksave()
  br label %while_cond654
while_cond654:
  %3665 = load i64, i64* %3663
  %3666 = load { i64, i8* }*, { i64, i8* }** %3417
  %3667 = call i64 @nyx_array_length({ i64, i8* }* %3666)
  %3668 = icmp slt i64 %3665, %3667
  br i1 %3668, label %while_body655, label %while_end656
while_body655:
  call void @llvm.stackrestore(i8* %3664)
  %3669 = load { i64, i8* }*, { i64, i8* }** %3417
  %3670 = load i64, i64* %3663
  %3671 = call i64 @nyx_array_get_checked({ i64, i8* }* %3669, i64 %3670, i64 2)
  %3672 = inttoptr i64 %3671 to %nyx_string*
  %3673 = alloca %nyx_string*
  store %nyx_string* %3672, %nyx_string** %3673
  %3674 = load %nyx_string*, %nyx_string** %3673
  %3675 = call i1 @file_has_test_blocks(%nyx_string* %3674)
  %3676 = xor i1 %3675, true
  br i1 %3676, label %then657, label %else658
then657:
  %3677 = load i64, i64* %3663
  %3678 = add i64 %3677, 1
  store i64 %3678, i64* %3663
  br label %merge659
else658:
  %3679 = load %nyx_string*, %nyx_string** %3673
  %3680 = load %TestConfig, %TestConfig* %3147
  %3681 = load %nyx_string*, %nyx_string** %3368
  %3682 = load i64, i64* %3663
  %3683 = call %TestResult @compile_and_run(%nyx_string* %3679, %TestConfig %3680, %nyx_string* %3681, i64 %3682)
  %3684 = alloca %TestResult
  store %TestResult %3683, %TestResult* %3684
  %3685 = load { i64, i8* }*, { i64, i8* }** %3656
  %3686 = load %TestResult, %TestResult* %3684
  %3687 = getelementptr %TestResult, %TestResult* null, i32 1
  %3688 = ptrtoint %TestResult* %3687 to i64
  %3689 = call i8* @GC_malloc(i64 %3688)
  %3690 = bitcast i8* %3689 to %TestResult*
  store %TestResult %3686, %TestResult* %3690
  %3691 = ptrtoint %TestResult* %3690 to i64
  call void @nyx_array_push({ i64, i8* }* %3685, i64 %3691)
  %3692 = load { i64, i8* }*, { i64, i8* }** %3658
  %3693 = load %nyx_string*, %nyx_string** %3673
  %3694 = ptrtoint %nyx_string* %3693 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3692, i64 %3694, i64 2)
  %3695 = load { i64, i8* }*, { i64, i8* }** %3660
  %3696 = load i64, i64* %3663
  %3697 = call %nyx_string* @nyx_string_from_int(i64 %3696)
  %3698 = ptrtoint %nyx_string* %3697 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3695, i64 %3698, i64 2)
  %3699 = load i64, i64* %3661
  %3700 = getelementptr %TestResult, %TestResult* %3684, i32 0, i32 1
  %3701 = load i64, i64* %3700
  %3702 = add i64 %3699, %3701
  store i64 %3702, i64* %3661
  %3703 = load i64, i64* %3662
  %3704 = getelementptr %TestResult, %TestResult* %3684, i32 0, i32 2
  %3705 = load i64, i64* %3704
  %3706 = add i64 %3703, %3705
  store i64 %3706, i64* %3662
  %3707 = load %TestResult, %TestResult* %3684
  %3708 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 3
  %3709 = load i1, i1* %3708
  %3710 = call i64 @print_result(%TestResult %3707, i1 %3709)
  %3711 = load i64, i64* %3663
  %3712 = add i64 %3711, 1
  store i64 %3712, i64* %3663
  br label %merge659
merge659:
  br label %while_cond654
while_end656:
  %3713 = load { i64, i8* }*, { i64, i8* }** %3656
  %3714 = call i64 @nyx_array_length({ i64, i8* }* %3713)
  %3715 = icmp eq i64 %3714, 0
  br i1 %3715, label %then660, label %else661
then660:
  %3716 = getelementptr [35 x i8], [35 x i8]* @.str396, i32 0, i32 0
  %3717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3716, i64 34)
  %3718 = call i8* @nyx_string_to_cstr(%nyx_string* %3717)
  call void @nyx_print_string(i8* %3718)
  %3719 = load %nyx_string*, %nyx_string** %3368
  %3720 = getelementptr [1 x i8], [1 x i8]* @.str397, i32 0, i32 0
  %3721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3720, i64 0)
  %3722 = call i1 @nyx_string_equals(%nyx_string* %3719, %nyx_string* %3721)
  %3723 = xor i1 %3722, true
  br i1 %3723, label %then663, label %else664
then663:
  %3724 = getelementptr [8 x i8], [8 x i8]* @.str398, i32 0, i32 0
  %3725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3724, i64 7)
  %3726 = load %nyx_string*, %nyx_string** %3368
  %3727 = call %nyx_string* @nyx_string_concat(%nyx_string* %3725, %nyx_string* %3726)
  %3728 = call i8* @nyx_string_to_cstr(%nyx_string* %3727)
  %3729 = call %nyx_string* @nyx_exec(i8* %3728)
  br label %merge665
else664:
  br label %merge665
merge665:
  ret i64 0
else661:
  br label %merge662
merge662:
  %3730 = load { i64, i8* }*, { i64, i8* }** %3656
  %3731 = load i64, i64* %3661
  %3732 = load i64, i64* %3662
  %3733 = call i64 @print_summary({ i64, i8* }* %3730, i64 %3731, i64 %3732)
  %3734 = load %nyx_string*, %nyx_string** %3118
  %3735 = call %nyx_string* @huella_compilador(%nyx_string* %3734)
  %3736 = alloca %nyx_string*
  store %nyx_string* %3735, %nyx_string** %3736
  %3737 = load %nyx_string*, %nyx_string** %3118
  %3738 = call %nyx_string* @huella_resto(%nyx_string* %3737)
  %3739 = alloca %nyx_string*
  store %nyx_string* %3738, %nyx_string** %3739
  %3740 = alloca i1
  store i1 true, i1* %3740
  %3741 = load %nyx_string*, %nyx_string** %3736
  %3742 = load %nyx_string*, %nyx_string** %3129
  %3743 = call i1 @nyx_string_equals(%nyx_string* %3741, %nyx_string* %3742)
  %3744 = xor i1 %3743, true
  br i1 %3744, label %sc_or_end667, label %sc_or_rhs666
sc_or_rhs666:
  %3745 = load %nyx_string*, %nyx_string** %3739
  %3746 = load %nyx_string*, %nyx_string** %3132
  %3747 = call i1 @nyx_string_equals(%nyx_string* %3745, %nyx_string* %3746)
  %3748 = xor i1 %3747, true
  store i1 %3748, i1* %3740
  br label %sc_or_end667
sc_or_end667:
  %3749 = load i1, i1* %3740
  br i1 %3749, label %then668, label %else669
then668:
  %3750 = getelementptr [1 x i8], [1 x i8]* @.str399, i32 0, i32 0
  %3751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3750, i64 0)
  %3752 = call i8* @nyx_string_to_cstr(%nyx_string* %3751)
  call void @nyx_print_string(i8* %3752)
  %3753 = getelementptr [48 x i8], [48 x i8]* @.str400, i32 0, i32 0
  %3754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3753, i64 47)
  %3755 = load %nyx_string*, %nyx_string** %3118
  %3756 = call %nyx_string* @nyx_string_concat(%nyx_string* %3754, %nyx_string* %3755)
  %3757 = getelementptr [2 x i8], [2 x i8]* @.str401, i32 0, i32 0
  %3758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3757, i64 1)
  %3759 = call %nyx_string* @nyx_string_concat(%nyx_string* %3756, %nyx_string* %3758)
  %3760 = call i8* @nyx_string_to_cstr(%nyx_string* %3759)
  call void @nyx_print_string(i8* %3760)
  %3761 = load %nyx_string*, %nyx_string** %3736
  %3762 = load %nyx_string*, %nyx_string** %3129
  %3763 = call i1 @nyx_string_equals(%nyx_string* %3761, %nyx_string* %3762)
  %3764 = xor i1 %3763, true
  br i1 %3764, label %then671, label %else672
then671:
  %3765 = getelementptr [31 x i8], [31 x i8]* @.str402, i32 0, i32 0
  %3766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3765, i64 30)
  %3767 = load %nyx_string*, %nyx_string** %3129
  %3768 = call %nyx_string* @nyx_string_concat(%nyx_string* %3766, %nyx_string* %3767)
  %3769 = getelementptr [5 x i8], [5 x i8]* @.str403, i32 0, i32 0
  %3770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3769, i64 4)
  %3771 = call %nyx_string* @nyx_string_concat(%nyx_string* %3768, %nyx_string* %3770)
  %3772 = load %nyx_string*, %nyx_string** %3736
  %3773 = call %nyx_string* @nyx_string_concat(%nyx_string* %3771, %nyx_string* %3772)
  %3774 = call i8* @nyx_string_to_cstr(%nyx_string* %3773)
  call void @nyx_print_string(i8* %3774)
  br label %merge673
else672:
  %3775 = getelementptr [53 x i8], [53 x i8]* @.str404, i32 0, i32 0
  %3776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3775, i64 52)
  %3777 = call i8* @nyx_string_to_cstr(%nyx_string* %3776)
  call void @nyx_print_string(i8* %3777)
  br label %merge673
merge673:
  %3778 = getelementptr [71 x i8], [71 x i8]* @.str405, i32 0, i32 0
  %3779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3778, i64 70)
  %3780 = call i8* @nyx_string_to_cstr(%nyx_string* %3779)
  call void @nyx_print_string(i8* %3780)
  %3781 = getelementptr [69 x i8], [69 x i8]* @.str406, i32 0, i32 0
  %3782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3781, i64 68)
  %3783 = call i8* @nyx_string_to_cstr(%nyx_string* %3782)
  call void @nyx_print_string(i8* %3783)
  br label %merge670
else669:
  br label %merge670
merge670:
  %3784 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 5
  %3785 = load i1, i1* %3784
  br i1 %3785, label %then674, label %else675
then674:
  %3786 = load %nyx_string*, %nyx_string** %3368
  %3787 = load { i64, i8* }*, { i64, i8* }** %3658
  %3788 = load { i64, i8* }*, { i64, i8* }** %3660
  %3789 = load %nyx_string*, %nyx_string** %3365
  %3790 = getelementptr %TestConfig, %TestConfig* %3147, i32 0, i32 6
  %3791 = load i1, i1* %3790
  %3792 = call i64 @cov_report(%nyx_string* %3786, { i64, i8* }* %3787, { i64, i8* }* %3788, %nyx_string* %3789, i1 %3791)
  %3793 = getelementptr [8 x i8], [8 x i8]* @.str407, i32 0, i32 0
  %3794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3793, i64 7)
  %3795 = load %nyx_string*, %nyx_string** %3368
  %3796 = call %nyx_string* @nyx_string_concat(%nyx_string* %3794, %nyx_string* %3795)
  %3797 = call i8* @nyx_string_to_cstr(%nyx_string* %3796)
  %3798 = call %nyx_string* @nyx_exec(i8* %3797)
  br label %merge676
else675:
  br label %merge676
merge676:
  %3799 = alloca i64
  store i64 0, i64* %3799
  %3800 = alloca i64
  store i64 0, i64* %3800
  %3801 = call i8* @llvm.stacksave()
  br label %while_cond677
while_cond677:
  %3802 = load i64, i64* %3800
  %3803 = load { i64, i8* }*, { i64, i8* }** %3656
  %3804 = call i64 @nyx_array_length({ i64, i8* }* %3803)
  %3805 = icmp slt i64 %3802, %3804
  br i1 %3805, label %while_body678, label %while_end679
while_body678:
  call void @llvm.stackrestore(i8* %3801)
  %3806 = load { i64, i8* }*, { i64, i8* }** %3656
  %3807 = load i64, i64* %3800
  %3808 = call i64 @nyx_array_get({ i64, i8* }* %3806, i64 %3807)
  %3809 = inttoptr i64 %3808 to %TestResult*
  %3810 = load %TestResult, %TestResult* %3809
  %3811 = alloca %TestResult
  store %TestResult %3810, %TestResult* %3811
  %3812 = getelementptr %TestResult, %TestResult* %3811, i32 0, i32 4
  %3813 = load i1, i1* %3812
  %3814 = xor i1 %3813, true
  br i1 %3814, label %then680, label %else681
then680:
  %3815 = load i64, i64* %3799
  %3816 = add i64 %3815, 1
  store i64 %3816, i64* %3799
  br label %merge682
else681:
  br label %merge682
merge682:
  %3817 = load i64, i64* %3800
  %3818 = add i64 %3817, 1
  store i64 %3818, i64* %3800
  br label %while_cond677
while_end679:
  %3819 = alloca i1
  store i1 true, i1* %3819
  %3820 = load i64, i64* %3662
  %3821 = icmp sgt i64 %3820, 0
  br i1 %3821, label %sc_or_end684, label %sc_or_rhs683
sc_or_rhs683:
  %3822 = load i64, i64* %3799
  %3823 = icmp sgt i64 %3822, 0
  store i1 %3823, i1* %3819
  br label %sc_or_end684
sc_or_end684:
  %3824 = load i1, i1* %3819
  br i1 %3824, label %then685, label %else686
then685:
  ret i64 1
else686:
  br label %merge687
merge687:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %3825 = sub i64 0, 9223372036854775808
  store i64 %3825, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

