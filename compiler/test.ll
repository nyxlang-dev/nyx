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
@.str121 = private unnamed_addr constant [1 x i8] c"\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [16 x i8] c" NYX_LIB_SELF=\22\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [2 x i8] c" \00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [2 x i8] c"=\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [22 x i8] c" ./nyx_bootstrap ) > \00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [36 x i8] c" 2>&1 || { rc=$?; nyx_pista $rc >> \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [13 x i8] c"; exit 1; }\0a\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [15 x i8] c"trap 'rm -rf \22\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [27 x i8] c"\22; exit 130' INT TERM HUP\0a\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [42 x i8] c"SRC=\22$(mktemp /tmp/nyx_test_src_XXXXXX)\22\0a\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [2 x i8] c"/\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [2 x i8] c" \00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [4 x i8] c" > \00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [1 x i8] c"\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [3 x i8] c" (\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [3 x i8] c" (\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [1 x i8] c"\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [9 x i8] c"version \00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [1 x i8] c"\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [1 x i8] c"\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [1 x i8] c"\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [1 x i8] c"\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [2 x i8] c"0\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [1 x i8] c"\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [3 x i8] c"  \00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [4 x i8] c"   \00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c":\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c";\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [1 x i8] c"\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [2 x i8] c"[\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c"]\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [2 x i8] c",\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [2 x i8] c"1\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [4 x i8] c"src\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [1 x i8] c"\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [1 x i8] c"\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [1 x i8] c"\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [2 x i8] c"/\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c"1\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [2 x i8] c"/\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [1 x i8] c"\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [2 x i8] c"1\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [6 x i8] c"async\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [5 x i8] c"main\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [3 x i8] c"no\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [3 x i8] c"si\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [1 x i8] c"\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [2 x i8] c"0\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [3 x i8] c"si\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [2 x i8] c"1\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [5 x i8] c"    \00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [2 x i8] c":\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [2 x i8] c" \00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [2 x i8] c",\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [3 x i8] c"  \00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [3 x i8] c": \00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [2 x i8] c"/\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [3 x i8] c" (\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [5 x i8] c"    \00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [2 x i8] c"/\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [66 x i8] c"\22 2>/dev/null && sha256sum nyx_bootstrap 2>/dev/null | cut -c1-12\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [74 x i8] c"\22 2>/dev/null && cat std/*.nx runtime/*.c runtime/*.h 2>/dev/null | cksum\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [18 x i8] c"  compiler: nyx v\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [17 x i8] c" (nyx_bootstrap \00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [2 x i8] c")\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [1 x i8] c"\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [2 x i8] c" \00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [2 x i8] c"-\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [1 x i8] c"\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [1 x i8] c"\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [1 x i8] c"\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [1 x i8] c"\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [1 x i8] c"\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [1 x i8] c"\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [1 x i8] c"\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [1 x i8] c"\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [2 x i8] c"/\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [1 x i8] c"\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [1 x i8] c"\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [1 x i8] c"\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [1 x i8] c"\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [33 x i8] c"mktemp /tmp/nyx_test_libs_XXXXXX\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [1 x i8] c"\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [1 x i8] c"\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [1 x i8] c"\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [48 x i8] c"  ⚠ EL TOOLCHAIN CAMBIÓ DURANTE LA CORRIDA (\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [2 x i8] c")\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [31 x i8] c"    compilador: nyx_bootstrap \00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [53 x i8] c"    compilador igual; cambió la stdlib o el runtime\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [71 x i8] c"    Algunos archivos se probaron con una versión y otros con la otra:\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [69 x i8] c"    este resultado no sirve para integrar. Vuelve a correr la suite.\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str412.c = internal global %nyx_string* null
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
  %1392 = load %nyx_string*, %nyx_string** %1317
  %1393 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %1394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1393, i64 0)
  %1395 = call i1 @nyx_string_equals(%nyx_string* %1392, %nyx_string* %1394)
  %1396 = xor i1 %1395, true
  br i1 %1396, label %then321, label %else322
then321:
  %1397 = load %nyx_string*, %nyx_string** %1320
  %1398 = getelementptr [16 x i8], [16 x i8]* @.str122, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1398, i64 15)
  %1400 = call %nyx_string* @nyx_string_concat(%nyx_string* %1397, %nyx_string* %1399)
  %1401 = load %nyx_string*, %nyx_string** %1317
  %1402 = call %nyx_string* @nyx_string_concat(%nyx_string* %1400, %nyx_string* %1401)
  %1403 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1403, i64 1)
  %1405 = call %nyx_string* @nyx_string_concat(%nyx_string* %1402, %nyx_string* %1404)
  store %nyx_string* %1405, %nyx_string** %1320
  br label %merge323
else322:
  br label %merge323
merge323:
  %1406 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1407 = load %nyx_string*, %nyx_string** %1406
  %1408 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1409 = load %nyx_string*, %nyx_string** %1408
  %1410 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1410, i64 1)
  %1412 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1409, %nyx_string* %1411)
  %1413 = alloca { i64, i8* }*
  store { i64, i8* }* %1412, { i64, i8* }** %1413
  %1414 = alloca i64
  store i64 0, i64* %1414
  %1415 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %1416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1415, i64 1)
  %1417 = alloca %nyx_string*
  store %nyx_string* %1416, %nyx_string** %1417
  %1418 = getelementptr [2 x i8], [2 x i8]* @.str126, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1418, i64 1)
  %1420 = alloca %nyx_string*
  store %nyx_string* %1419, %nyx_string** %1420
  %1421 = getelementptr [3 x i8], [3 x i8]* @.str127, i32 0, i32 0
  %1422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1421, i64 2)
  %1423 = alloca %nyx_string*
  store %nyx_string* %1422, %nyx_string** %1423
  %1424 = call i8* @llvm.stacksave()
  br label %while_cond324
while_cond324:
  %1425 = load i64, i64* %1414
  %1426 = load { i64, i8* }*, { i64, i8* }** %1413
  %1427 = call i64 @nyx_array_length({ i64, i8* }* %1426)
  %1428 = icmp slt i64 %1425, %1427
  br i1 %1428, label %while_body325, label %while_end326
while_body325:
  call void @llvm.stackrestore(i8* %1424)
  %1429 = load { i64, i8* }*, { i64, i8* }** %1413
  %1430 = load i64, i64* %1414
  %1431 = call i64 @nyx_array_get_checked({ i64, i8* }* %1429, i64 %1430, i64 2)
  %1432 = inttoptr i64 %1431 to %nyx_string*
  %1433 = alloca %nyx_string*
  store %nyx_string* %1432, %nyx_string** %1433
  %1434 = load %nyx_string*, %nyx_string** %1433
  %1435 = load %nyx_string*, %nyx_string** %1417
  %1436 = call i64 @nyx_string_index_of(%nyx_string* %1434, %nyx_string* %1435)
  %1437 = alloca i64
  store i64 %1436, i64* %1437
  %1438 = load i64, i64* %1437
  %1439 = icmp sgt i64 %1438, 0
  br i1 %1439, label %then327, label %else328
then327:
  %1440 = load %nyx_string*, %nyx_string** %1433
  %1441 = load i64, i64* %1437
  %1442 = call %nyx_string* @nyx_string_substring(%nyx_string* %1440, i64 0, i64 %1441)
  %1443 = alloca %nyx_string*
  store %nyx_string* %1442, %nyx_string** %1443
  %1444 = load %nyx_string*, %nyx_string** %1443
  %1445 = load %nyx_string*, %nyx_string** %1317
  %1446 = call i1 @nyx_string_equals(%nyx_string* %1444, %nyx_string* %1445)
  %1447 = xor i1 %1446, true
  br i1 %1447, label %then330, label %else331
then330:
  %1448 = load %nyx_string*, %nyx_string** %1323
  %1449 = load %nyx_string*, %nyx_string** %1420
  %1450 = call %nyx_string* @nyx_string_concat(%nyx_string* %1448, %nyx_string* %1449)
  %1451 = load %nyx_string*, %nyx_string** %1433
  %1452 = load i64, i64* %1437
  %1453 = add i64 %1452, 1
  %1454 = load %nyx_string*, %nyx_string** %1433
  %1455 = call i64 @nyx_string_byte_length(%nyx_string* %1454)
  %1456 = call %nyx_string* @nyx_string_substring(%nyx_string* %1451, i64 %1453, i64 %1455)
  %1457 = call %nyx_string* @nyx_string_concat(%nyx_string* %1450, %nyx_string* %1456)
  %1458 = load %nyx_string*, %nyx_string** %1423
  %1459 = call %nyx_string* @nyx_string_concat(%nyx_string* %1457, %nyx_string* %1458)
  store %nyx_string* %1459, %nyx_string** %1323
  br label %merge332
else331:
  br label %merge332
merge332:
  br label %merge329
else328:
  br label %merge329
merge329:
  %1460 = load i64, i64* %1414
  %1461 = add i64 %1460, 1
  store i64 %1461, i64* %1414
  br label %while_cond324
while_end326:
  br label %merge306
else305:
  br label %merge306
merge306:
  %1462 = getelementptr [55 x i8], [55 x i8]* @.str128, i32 0, i32 0
  %1463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1462, i64 54)
  %1464 = load %nyx_string*, %nyx_string** %1142
  %1465 = call %nyx_string* @nyx_string_concat(%nyx_string* %1463, %nyx_string* %1464)
  %1466 = getelementptr [37 x i8], [37 x i8]* @.str129, i32 0, i32 0
  %1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1466, i64 36)
  %1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %1465, %nyx_string* %1467)
  %1469 = load %nyx_string*, %nyx_string** %file.ptr
  %1470 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1469)
  %1471 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1471, i64 1)
  %1473 = call %nyx_string* @nyx_string_concat(%nyx_string* %1470, %nyx_string* %1472)
  %1474 = load %nyx_string*, %nyx_string** %1270
  %1475 = call %nyx_string* @nyx_string_concat(%nyx_string* %1473, %nyx_string* %1474)
  %1476 = load %nyx_string*, %nyx_string** %1320
  %1477 = call %nyx_string* @nyx_string_concat(%nyx_string* %1475, %nyx_string* %1476)
  %1478 = getelementptr [22 x i8], [22 x i8]* @.str131, i32 0, i32 0
  %1479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1478, i64 21)
  %1480 = call %nyx_string* @nyx_string_concat(%nyx_string* %1477, %nyx_string* %1479)
  %1481 = load %nyx_string*, %nyx_string** %1157
  %1482 = call %nyx_string* @nyx_string_concat(%nyx_string* %1480, %nyx_string* %1481)
  %1483 = getelementptr [36 x i8], [36 x i8]* @.str132, i32 0, i32 0
  %1484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1483, i64 35)
  %1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %1482, %nyx_string* %1484)
  %1486 = load %nyx_string*, %nyx_string** %1157
  %1487 = call %nyx_string* @nyx_string_concat(%nyx_string* %1485, %nyx_string* %1486)
  %1488 = getelementptr [13 x i8], [13 x i8]* @.str133, i32 0, i32 0
  %1489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1488, i64 12)
  %1490 = call %nyx_string* @nyx_string_concat(%nyx_string* %1487, %nyx_string* %1489)
  %1491 = alloca %nyx_string*
  store %nyx_string* %1490, %nyx_string** %1491
  %1492 = load %nyx_string*, %nyx_string** %1224
  %1493 = load %nyx_string*, %nyx_string** %1491
  %1494 = call %nyx_string* @nyx_string_concat(%nyx_string* %1492, %nyx_string* %1493)
  %1495 = alloca %nyx_string*
  store %nyx_string* %1494, %nyx_string** %1495
  %1496 = getelementptr [15 x i8], [15 x i8]* @.str134, i32 0, i32 0
  %1497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1496, i64 14)
  %1498 = load %nyx_string*, %nyx_string** %1152
  %1499 = call %nyx_string* @nyx_string_concat(%nyx_string* %1497, %nyx_string* %1498)
  %1500 = getelementptr [27 x i8], [27 x i8]* @.str135, i32 0, i32 0
  %1501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1500, i64 26)
  %1502 = call %nyx_string* @nyx_string_concat(%nyx_string* %1499, %nyx_string* %1501)
  %1503 = alloca %nyx_string*
  store %nyx_string* %1502, %nyx_string** %1503
  %1504 = load %nyx_string*, %nyx_string** %1314
  %1505 = load %nyx_string*, %nyx_string** %1503
  %1506 = call %nyx_string* @nyx_string_concat(%nyx_string* %1504, %nyx_string* %1505)
  %1507 = getelementptr [42 x i8], [42 x i8]* @.str136, i32 0, i32 0
  %1508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1507, i64 41)
  %1509 = call %nyx_string* @nyx_string_concat(%nyx_string* %1506, %nyx_string* %1508)
  %1510 = getelementptr [17 x i8], [17 x i8]* @.str137, i32 0, i32 0
  %1511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1510, i64 16)
  %1512 = call %nyx_string* @nyx_string_concat(%nyx_string* %1509, %nyx_string* %1511)
  %1513 = getelementptr [31 x i8], [31 x i8]* @.str138, i32 0, i32 0
  %1514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1513, i64 30)
  %1515 = call %nyx_string* @nyx_string_concat(%nyx_string* %1512, %nyx_string* %1514)
  %1516 = getelementptr [17 x i8], [17 x i8]* @.str139, i32 0, i32 0
  %1517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1516, i64 16)
  %1518 = call %nyx_string* @nyx_string_concat(%nyx_string* %1515, %nyx_string* %1517)
  %1519 = getelementptr [5 x i8], [5 x i8]* @.str140, i32 0, i32 0
  %1520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1519, i64 4)
  %1521 = call %nyx_string* @nyx_string_concat(%nyx_string* %1518, %nyx_string* %1520)
  %1522 = load %nyx_string*, %nyx_string** %1142
  %1523 = call %nyx_string* @nyx_string_concat(%nyx_string* %1521, %nyx_string* %1522)
  %1524 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1524, i64 1)
  %1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %1523, %nyx_string* %1525)
  %1527 = load %nyx_string*, %nyx_string** %file.ptr
  %1528 = call %nyx_string* @nyx_string_concat(%nyx_string* %1526, %nyx_string* %1527)
  %1529 = getelementptr [12 x i8], [12 x i8]* @.str142, i32 0, i32 0
  %1530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1529, i64 11)
  %1531 = call %nyx_string* @nyx_string_concat(%nyx_string* %1528, %nyx_string* %1530)
  %1532 = getelementptr [5 x i8], [5 x i8]* @.str143, i32 0, i32 0
  %1533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1532, i64 4)
  %1534 = call %nyx_string* @nyx_string_concat(%nyx_string* %1531, %nyx_string* %1533)
  %1535 = load %nyx_string*, %nyx_string** %1120
  %1536 = call %nyx_string* @nyx_string_concat(%nyx_string* %1534, %nyx_string* %1535)
  %1537 = getelementptr [3 x i8], [3 x i8]* @.str144, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1537, i64 2)
  %1539 = call %nyx_string* @nyx_string_concat(%nyx_string* %1536, %nyx_string* %1538)
  %1540 = getelementptr [51 x i8], [51 x i8]* @.str145, i32 0, i32 0
  %1541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1540, i64 50)
  %1542 = call %nyx_string* @nyx_string_concat(%nyx_string* %1539, %nyx_string* %1541)
  %1543 = load %nyx_string*, %nyx_string** %1120
  %1544 = call %nyx_string* @nyx_string_concat(%nyx_string* %1542, %nyx_string* %1543)
  %1545 = getelementptr [35 x i8], [35 x i8]* @.str146, i32 0, i32 0
  %1546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1545, i64 34)
  %1547 = call %nyx_string* @nyx_string_concat(%nyx_string* %1544, %nyx_string* %1546)
  %1548 = load %nyx_string*, %nyx_string** %1495
  %1549 = call %nyx_string* @nyx_string_concat(%nyx_string* %1547, %nyx_string* %1548)
  %1550 = getelementptr [7 x i8], [7 x i8]* @.str147, i32 0, i32 0
  %1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1550, i64 6)
  %1552 = call %nyx_string* @nyx_string_concat(%nyx_string* %1549, %nyx_string* %1551)
  %1553 = load %nyx_string*, %nyx_string** %1165
  %1554 = call %nyx_string* @nyx_string_concat(%nyx_string* %1552, %nyx_string* %1553)
  %1555 = load %nyx_string*, %nyx_string** %1273
  %1556 = call %nyx_string* @nyx_string_concat(%nyx_string* %1554, %nyx_string* %1555)
  %1557 = getelementptr [40 x i8], [40 x i8]* @.str148, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1557, i64 39)
  %1559 = call %nyx_string* @nyx_string_concat(%nyx_string* %1556, %nyx_string* %1558)
  %1560 = load %nyx_string*, %nyx_string** %1323
  %1561 = call %nyx_string* @nyx_string_concat(%nyx_string* %1559, %nyx_string* %1560)
  %1562 = load %nyx_string*, %nyx_string** %1193
  %1563 = call %nyx_string* @nyx_string_concat(%nyx_string* %1561, %nyx_string* %1562)
  %1564 = getelementptr [44 x i8], [44 x i8]* @.str149, i32 0, i32 0
  %1565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1564, i64 43)
  %1566 = call %nyx_string* @nyx_string_concat(%nyx_string* %1563, %nyx_string* %1565)
  %1567 = getelementptr [4 x i8], [4 x i8]* @.str150, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1567, i64 3)
  %1569 = call %nyx_string* @nyx_string_concat(%nyx_string* %1566, %nyx_string* %1568)
  %1570 = load %nyx_string*, %nyx_string** %1162
  %1571 = call %nyx_string* @nyx_string_concat(%nyx_string* %1569, %nyx_string* %1570)
  %1572 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %1573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1572, i64 5)
  %1574 = call %nyx_string* @nyx_string_concat(%nyx_string* %1571, %nyx_string* %1573)
  %1575 = load %nyx_string*, %nyx_string** %1157
  %1576 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1575)
  %1577 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %1578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1577, i64 1)
  %1579 = call %nyx_string* @nyx_string_concat(%nyx_string* %1576, %nyx_string* %1578)
  %1580 = getelementptr [57 x i8], [57 x i8]* @.str153, i32 0, i32 0
  %1581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1580, i64 56)
  %1582 = call %nyx_string* @nyx_string_concat(%nyx_string* %1579, %nyx_string* %1581)
  %1583 = load %nyx_string*, %nyx_string** %1276
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1582, %nyx_string* %1583)
  %1585 = getelementptr [9 x i8], [9 x i8]* @.str154, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1585, i64 8)
  %1587 = call %nyx_string* @nyx_string_concat(%nyx_string* %1584, %nyx_string* %1586)
  %1588 = load %nyx_string*, %nyx_string** %1146
  %1589 = call %nyx_string* @nyx_string_concat(%nyx_string* %1587, %nyx_string* %1588)
  %1590 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1590, i64 1)
  %1592 = call %nyx_string* @nyx_string_concat(%nyx_string* %1589, %nyx_string* %1591)
  %1593 = load %nyx_string*, %nyx_string** %1162
  %1594 = call %nyx_string* @nyx_string_concat(%nyx_string* %1592, %nyx_string* %1593)
  %1595 = getelementptr [4 x i8], [4 x i8]* @.str156, i32 0, i32 0
  %1596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1595, i64 3)
  %1597 = call %nyx_string* @nyx_string_concat(%nyx_string* %1594, %nyx_string* %1596)
  %1598 = load %nyx_string*, %nyx_string** %1157
  %1599 = call %nyx_string* @nyx_string_concat(%nyx_string* %1597, %nyx_string* %1598)
  %1600 = getelementptr [7 x i8], [7 x i8]* @.str157, i32 0, i32 0
  %1601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1600, i64 6)
  %1602 = call %nyx_string* @nyx_string_concat(%nyx_string* %1599, %nyx_string* %1601)
  %1603 = getelementptr [14 x i8], [14 x i8]* @.str158, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1603, i64 13)
  %1605 = call %nyx_string* @nyx_string_concat(%nyx_string* %1602, %nyx_string* %1604)
  %1606 = getelementptr [7 x i8], [7 x i8]* @.str159, i32 0, i32 0
  %1607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1606, i64 6)
  %1608 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1607)
  %1609 = load %nyx_string*, %nyx_string** %1162
  %1610 = call %nyx_string* @nyx_string_concat(%nyx_string* %1608, %nyx_string* %1609)
  %1611 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1611, i64 1)
  %1613 = call %nyx_string* @nyx_string_concat(%nyx_string* %1610, %nyx_string* %1612)
  %1614 = getelementptr [17 x i8], [17 x i8]* @.str161, i32 0, i32 0
  %1615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1614, i64 16)
  %1616 = call %nyx_string* @nyx_string_concat(%nyx_string* %1613, %nyx_string* %1615)
  %1617 = alloca %nyx_string*
  store %nyx_string* %1616, %nyx_string** %1617
  %1618 = load %nyx_string*, %nyx_string** %1152
  %1619 = getelementptr [8 x i8], [8 x i8]* @.str162, i32 0, i32 0
  %1620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1619, i64 7)
  %1621 = call %nyx_string* @nyx_string_concat(%nyx_string* %1618, %nyx_string* %1620)
  %1622 = alloca %nyx_string*
  store %nyx_string* %1621, %nyx_string** %1622
  %1623 = load %nyx_string*, %nyx_string** %1622
  %1624 = load %nyx_string*, %nyx_string** %1617
  %1625 = call i8* @nyx_string_to_cstr(%nyx_string* %1623)
  %1626 = call i1 @nyx_write_file_safe(i8* %1625, %nyx_string* %1624)
  %1627 = getelementptr [6 x i8], [6 x i8]* @.str163, i32 0, i32 0
  %1628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1627, i64 5)
  %1629 = load %nyx_string*, %nyx_string** %1622
  %1630 = call %nyx_string* @nyx_string_concat(%nyx_string* %1628, %nyx_string* %1629)
  %1631 = call i8* @nyx_string_to_cstr(%nyx_string* %1630)
  %1632 = call i64 @nyx_exec_code(i8* %1631)
  %1633 = alloca i64
  store i64 %1632, i64* %1633
  %1634 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %1635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1634, i64 0)
  %1636 = alloca %nyx_string*
  store %nyx_string* %1635, %nyx_string** %1636
  %1637 = load %nyx_string*, %nyx_string** %1157
  %1638 = call i8* @nyx_string_to_cstr(%nyx_string* %1637)
  %1639 = call i1 @nyx_file_exists(i8* %1638)
  br i1 %1639, label %then333, label %else334
then333:
  %1640 = load %nyx_string*, %nyx_string** %1157
  %1641 = call i8* @nyx_string_to_cstr(%nyx_string* %1640)
  %1642 = call %nyx_string* @nyx_read_file(i8* %1641)
  store %nyx_string* %1642, %nyx_string** %1636
  br label %merge335
else334:
  br label %merge335
merge335:
  %1643 = getelementptr [8 x i8], [8 x i8]* @.str165, i32 0, i32 0
  %1644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1643, i64 7)
  %1645 = load %nyx_string*, %nyx_string** %1152
  %1646 = call %nyx_string* @nyx_string_concat(%nyx_string* %1644, %nyx_string* %1645)
  %1647 = call i8* @nyx_string_to_cstr(%nyx_string* %1646)
  %1648 = call %nyx_string* @nyx_exec(i8* %1647)
  %1649 = alloca i64
  store i64 0, i64* %1649
  %1650 = alloca i64
  store i64 0, i64* %1650
  %1651 = load %nyx_string*, %nyx_string** %1636
  %1652 = getelementptr [2 x i8], [2 x i8]* @.str166, i32 0, i32 0
  %1653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1652, i64 1)
  %1654 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1651, %nyx_string* %1653)
  %1655 = alloca { i64, i8* }*
  store { i64, i8* }* %1654, { i64, i8* }** %1655
  %1656 = alloca i64
  store i64 0, i64* %1656
  %1657 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1657, i64 5)
  %1659 = alloca %nyx_string*
  store %nyx_string* %1658, %nyx_string** %1659
  %1660 = getelementptr [6 x i8], [6 x i8]* @.str168, i32 0, i32 0
  %1661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1660, i64 5)
  %1662 = alloca %nyx_string*
  store %nyx_string* %1661, %nyx_string** %1662
  %1663 = call i8* @llvm.stacksave()
  br label %while_cond336
while_cond336:
  %1664 = load i64, i64* %1656
  %1665 = load { i64, i8* }*, { i64, i8* }** %1655
  %1666 = call i64 @nyx_array_length({ i64, i8* }* %1665)
  %1667 = icmp slt i64 %1664, %1666
  br i1 %1667, label %while_body337, label %while_end338
while_body337:
  call void @llvm.stackrestore(i8* %1663)
  %1668 = load { i64, i8* }*, { i64, i8* }** %1655
  %1669 = load i64, i64* %1656
  %1670 = call i64 @nyx_array_get_checked({ i64, i8* }* %1668, i64 %1669, i64 2)
  %1671 = inttoptr i64 %1670 to %nyx_string*
  %1672 = alloca %nyx_string*
  store %nyx_string* %1671, %nyx_string** %1672
  %1673 = load %nyx_string*, %nyx_string** %1672
  %1674 = load %nyx_string*, %nyx_string** %1659
  %1675 = call i1 @nyx_string_contains(%nyx_string* %1673, %nyx_string* %1674)
  br i1 %1675, label %then339, label %else340
then339:
  %1676 = load i64, i64* %1649
  %1677 = add i64 %1676, 1
  store i64 %1677, i64* %1649
  br label %merge341
else340:
  %1678 = load %nyx_string*, %nyx_string** %1672
  %1679 = load %nyx_string*, %nyx_string** %1662
  %1680 = call i1 @nyx_string_contains(%nyx_string* %1678, %nyx_string* %1679)
  br i1 %1680, label %then342, label %else343
then342:
  %1681 = load i64, i64* %1650
  %1682 = add i64 %1681, 1
  store i64 %1682, i64* %1650
  br label %merge344
else343:
  br label %merge344
merge344:
  br label %merge341
merge341:
  %1683 = load i64, i64* %1656
  %1684 = add i64 %1683, 1
  store i64 %1684, i64* %1656
  br label %while_cond336
while_end338:
  %1685 = getelementptr %TestResult, %TestResult* null, i32 1
  %1686 = ptrtoint %TestResult* %1685 to i64
  %1687 = call i8* @GC_malloc(i64 %1686)
  %1688 = bitcast i8* %1687 to %TestResult*
  %1689 = load %nyx_string*, %nyx_string** %file.ptr
  %1690 = getelementptr %TestResult, %TestResult* %1688, i32 0, i32 0
  store %nyx_string* %1689, %nyx_string** %1690
  %1691 = load i64, i64* %1649
  %1692 = getelementptr %TestResult, %TestResult* %1688, i32 0, i32 1
  store i64 %1691, i64* %1692
  %1693 = load i64, i64* %1650
  %1694 = getelementptr %TestResult, %TestResult* %1688, i32 0, i32 2
  store i64 %1693, i64* %1694
  %1695 = load %nyx_string*, %nyx_string** %1636
  %1696 = getelementptr %TestResult, %TestResult* %1688, i32 0, i32 3
  store %nyx_string* %1695, %nyx_string** %1696
  %1697 = alloca i1
  store i1 false, i1* %1697
  %1698 = load i64, i64* %1633
  %1699 = icmp eq i64 %1698, 0
  br i1 %1699, label %sc_and_rhs345, label %sc_and_end346
sc_and_rhs345:
  %1700 = load i64, i64* %1650
  %1701 = icmp eq i64 %1700, 0
  store i1 %1701, i1* %1697
  br label %sc_and_end346
sc_and_end346:
  %1702 = load i1, i1* %1697
  %1703 = getelementptr %TestResult, %TestResult* %1688, i32 0, i32 4
  store i1 %1702, i1* %1703
  %1704 = load %TestResult, %TestResult* %1688
  ret %TestResult %1704
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1705 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1706 = load i1, i1* %1705
  br i1 %1706, label %then347, label %else348
then347:
  %1707 = getelementptr [9 x i8], [9 x i8]* @.str169, i32 0, i32 0
  %1708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1707, i64 8)
  %1709 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1710 = load %nyx_string*, %nyx_string** %1709
  %1711 = call %nyx_string* @nyx_string_concat(%nyx_string* %1708, %nyx_string* %1710)
  %1712 = getelementptr [3 x i8], [3 x i8]* @.str170, i32 0, i32 0
  %1713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1712, i64 2)
  %1714 = call %nyx_string* @nyx_string_concat(%nyx_string* %1711, %nyx_string* %1713)
  %1715 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1716 = load i64, i64* %1715
  %1717 = call %nyx_string* @nyx_string_from_int(i64 %1716)
  %1718 = call %nyx_string* @nyx_string_concat(%nyx_string* %1714, %nyx_string* %1717)
  %1719 = getelementptr [8 x i8], [8 x i8]* @.str171, i32 0, i32 0
  %1720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1719, i64 7)
  %1721 = call %nyx_string* @nyx_string_concat(%nyx_string* %1718, %nyx_string* %1720)
  %1722 = call i8* @nyx_string_to_cstr(%nyx_string* %1721)
  call void @nyx_print_string(i8* %1722)
  %1723 = load i1, i1* %verbose.ptr
  br i1 %1723, label %then350, label %else351
then350:
  %1724 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1725 = load %nyx_string*, %nyx_string** %1724
  %1726 = call i8* @nyx_string_to_cstr(%nyx_string* %1725)
  call void @nyx_print_string(i8* %1726)
  br label %merge352
else351:
  br label %merge352
merge352:
  br label %merge349
else348:
  %1727 = getelementptr [9 x i8], [9 x i8]* @.str172, i32 0, i32 0
  %1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1727, i64 8)
  %1729 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1730 = load %nyx_string*, %nyx_string** %1729
  %1731 = call %nyx_string* @nyx_string_concat(%nyx_string* %1728, %nyx_string* %1730)
  %1732 = getelementptr [3 x i8], [3 x i8]* @.str173, i32 0, i32 0
  %1733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1732, i64 2)
  %1734 = call %nyx_string* @nyx_string_concat(%nyx_string* %1731, %nyx_string* %1733)
  %1735 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1736 = load i64, i64* %1735
  %1737 = call %nyx_string* @nyx_string_from_int(i64 %1736)
  %1738 = call %nyx_string* @nyx_string_concat(%nyx_string* %1734, %nyx_string* %1737)
  %1739 = getelementptr [10 x i8], [10 x i8]* @.str174, i32 0, i32 0
  %1740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1739, i64 9)
  %1741 = call %nyx_string* @nyx_string_concat(%nyx_string* %1738, %nyx_string* %1740)
  %1742 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1743 = load i64, i64* %1742
  %1744 = call %nyx_string* @nyx_string_from_int(i64 %1743)
  %1745 = call %nyx_string* @nyx_string_concat(%nyx_string* %1741, %nyx_string* %1744)
  %1746 = getelementptr [9 x i8], [9 x i8]* @.str175, i32 0, i32 0
  %1747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1746, i64 8)
  %1748 = call %nyx_string* @nyx_string_concat(%nyx_string* %1745, %nyx_string* %1747)
  %1749 = call i8* @nyx_string_to_cstr(%nyx_string* %1748)
  call void @nyx_print_string(i8* %1749)
  %1750 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1751 = load %nyx_string*, %nyx_string** %1750
  %1752 = call i8* @nyx_string_to_cstr(%nyx_string* %1751)
  call void @nyx_print_string(i8* %1752)
  br label %merge349
merge349:
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
  %1753 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %1754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1753, i64 0)
  %1755 = call i8* @nyx_string_to_cstr(%nyx_string* %1754)
  call void @nyx_print_string(i8* %1755)
  %1756 = getelementptr [36 x i8], [36 x i8]* @.str177, i32 0, i32 0
  %1757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1756, i64 35)
  %1758 = call i8* @nyx_string_to_cstr(%nyx_string* %1757)
  call void @nyx_print_string(i8* %1758)
  %1759 = alloca i64
  store i64 0, i64* %1759
  %1760 = alloca i64
  store i64 0, i64* %1760
  %1761 = alloca i64
  store i64 0, i64* %1761
  %1762 = call i8* @llvm.stacksave()
  br label %while_cond353
while_cond353:
  %1763 = load i64, i64* %1761
  %1764 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1765 = call i64 @nyx_array_length({ i64, i8* }* %1764)
  %1766 = icmp slt i64 %1763, %1765
  br i1 %1766, label %while_body354, label %while_end355
while_body354:
  call void @llvm.stackrestore(i8* %1762)
  %1767 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1768 = load i64, i64* %1761
  %1769 = call i64 @nyx_array_get({ i64, i8* }* %1767, i64 %1768)
  %1770 = inttoptr i64 %1769 to %TestResult*
  %1771 = load %TestResult, %TestResult* %1770
  %1772 = alloca %TestResult
  store %TestResult %1771, %TestResult* %1772
  %1773 = getelementptr %TestResult, %TestResult* %1772, i32 0, i32 4
  %1774 = load i1, i1* %1773
  br i1 %1774, label %then356, label %else357
then356:
  %1775 = load i64, i64* %1759
  %1776 = add i64 %1775, 1
  store i64 %1776, i64* %1759
  br label %merge358
else357:
  %1777 = load i64, i64* %1760
  %1778 = add i64 %1777, 1
  store i64 %1778, i64* %1760
  br label %merge358
merge358:
  %1779 = load i64, i64* %1761
  %1780 = add i64 %1779, 1
  store i64 %1780, i64* %1761
  br label %while_cond353
while_end355:
  %1781 = getelementptr [11 x i8], [11 x i8]* @.str178, i32 0, i32 0
  %1782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1781, i64 10)
  %1783 = load i64, i64* %1759
  %1784 = call %nyx_string* @nyx_string_from_int(i64 %1783)
  %1785 = call %nyx_string* @nyx_string_concat(%nyx_string* %1782, %nyx_string* %1784)
  %1786 = getelementptr [10 x i8], [10 x i8]* @.str179, i32 0, i32 0
  %1787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1786, i64 9)
  %1788 = call %nyx_string* @nyx_string_concat(%nyx_string* %1785, %nyx_string* %1787)
  %1789 = load i64, i64* %1760
  %1790 = call %nyx_string* @nyx_string_from_int(i64 %1789)
  %1791 = call %nyx_string* @nyx_string_concat(%nyx_string* %1788, %nyx_string* %1790)
  %1792 = getelementptr [10 x i8], [10 x i8]* @.str180, i32 0, i32 0
  %1793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1792, i64 9)
  %1794 = call %nyx_string* @nyx_string_concat(%nyx_string* %1791, %nyx_string* %1793)
  %1795 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1796 = call i64 @nyx_array_length({ i64, i8* }* %1795)
  %1797 = call %nyx_string* @nyx_string_from_int(i64 %1796)
  %1798 = call %nyx_string* @nyx_string_concat(%nyx_string* %1794, %nyx_string* %1797)
  %1799 = getelementptr [8 x i8], [8 x i8]* @.str181, i32 0, i32 0
  %1800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1799, i64 7)
  %1801 = call %nyx_string* @nyx_string_concat(%nyx_string* %1798, %nyx_string* %1800)
  %1802 = call i8* @nyx_string_to_cstr(%nyx_string* %1801)
  call void @nyx_print_string(i8* %1802)
  %1803 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1803, i64 10)
  %1805 = load i64, i64* %total_passed.ptr
  %1806 = call %nyx_string* @nyx_string_from_int(i64 %1805)
  %1807 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1806)
  %1808 = getelementptr [10 x i8], [10 x i8]* @.str183, i32 0, i32 0
  %1809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1808, i64 9)
  %1810 = call %nyx_string* @nyx_string_concat(%nyx_string* %1807, %nyx_string* %1809)
  %1811 = load i64, i64* %total_failed.ptr
  %1812 = call %nyx_string* @nyx_string_from_int(i64 %1811)
  %1813 = call %nyx_string* @nyx_string_concat(%nyx_string* %1810, %nyx_string* %1812)
  %1814 = getelementptr [10 x i8], [10 x i8]* @.str184, i32 0, i32 0
  %1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1814, i64 9)
  %1816 = call %nyx_string* @nyx_string_concat(%nyx_string* %1813, %nyx_string* %1815)
  %1817 = load i64, i64* %total_passed.ptr
  %1818 = load i64, i64* %total_failed.ptr
  %1819 = add i64 %1817, %1818
  %1820 = call %nyx_string* @nyx_string_from_int(i64 %1819)
  %1821 = call %nyx_string* @nyx_string_concat(%nyx_string* %1816, %nyx_string* %1820)
  %1822 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1822, i64 7)
  %1824 = call %nyx_string* @nyx_string_concat(%nyx_string* %1821, %nyx_string* %1823)
  %1825 = call i8* @nyx_string_to_cstr(%nyx_string* %1824)
  call void @nyx_print_string(i8* %1825)
  %1826 = alloca i1
  store i1 false, i1* %1826
  %1827 = load i64, i64* %total_failed.ptr
  %1828 = icmp eq i64 %1827, 0
  br i1 %1828, label %sc_and_rhs359, label %sc_and_end360
sc_and_rhs359:
  %1829 = load i64, i64* %1760
  %1830 = icmp eq i64 %1829, 0
  store i1 %1830, i1* %1826
  br label %sc_and_end360
sc_and_end360:
  %1831 = load i1, i1* %1826
  br i1 %1831, label %then361, label %else362
then361:
  %1832 = getelementptr [27 x i8], [27 x i8]* @.str186, i32 0, i32 0
  %1833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1832, i64 26)
  %1834 = call i8* @nyx_string_to_cstr(%nyx_string* %1833)
  call void @nyx_print_string(i8* %1834)
  br label %merge363
else362:
  %1835 = getelementptr [28 x i8], [28 x i8]* @.str187, i32 0, i32 0
  %1836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1835, i64 27)
  %1837 = call i8* @nyx_string_to_cstr(%nyx_string* %1836)
  call void @nyx_print_string(i8* %1837)
  br label %merge363
merge363:
  %1838 = getelementptr [36 x i8], [36 x i8]* @.str188, i32 0, i32 0
  %1839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1838, i64 35)
  %1840 = call i8* @nyx_string_to_cstr(%nyx_string* %1839)
  call void @nyx_print_string(i8* %1840)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1841 = getelementptr [28 x i8], [28 x i8]* @.str189, i32 0, i32 0
  %1842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1841, i64 27)
  %1843 = call i8* @nyx_string_to_cstr(%nyx_string* %1842)
  %1844 = call %nyx_string* @nyx_exec(i8* %1843)
  %1845 = alloca %nyx_string*
  store %nyx_string* %1844, %nyx_string** %1845
  %1846 = load %nyx_string*, %nyx_string** %1845
  %1847 = getelementptr [9 x i8], [9 x i8]* @.str190, i32 0, i32 0
  %1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1847, i64 8)
  %1849 = call i64 @nyx_string_index_of(%nyx_string* %1846, %nyx_string* %1848)
  %1850 = alloca i64
  store i64 %1849, i64* %1850
  %1851 = load i64, i64* %1850
  %1852 = icmp slt i64 %1851, 0
  br i1 %1852, label %then364, label %else365
then364:
  %1853 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %1854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1853, i64 0)
  ret %nyx_string* %1854
else365:
  br label %merge366
merge366:
  %1855 = load i64, i64* %1850
  %1856 = add i64 %1855, 8
  %1857 = alloca i64
  store i64 %1856, i64* %1857
  %1858 = getelementptr [1 x i8], [1 x i8]* @.str192, i32 0, i32 0
  %1859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1858, i64 0)
  %1860 = alloca %nyx_string*
  store %nyx_string* %1859, %nyx_string** %1860
  %1861 = call i8* @llvm.stacksave()
  br label %while_cond367
while_cond367:
  %1862 = load i64, i64* %1857
  %1863 = load %nyx_string*, %nyx_string** %1845
  %1864 = call i64 @nyx_string_byte_length(%nyx_string* %1863)
  %1865 = icmp slt i64 %1862, %1864
  br i1 %1865, label %while_body368, label %while_end369
while_body368:
  call void @llvm.stackrestore(i8* %1861)
  %1866 = load %nyx_string*, %nyx_string** %1845
  %1867 = load i64, i64* %1857
  %1868 = call i8 @nyx_string_char_at(%nyx_string* %1866, i64 %1867)
  %1869 = zext i8 %1868 to i64
  %1870 = alloca i64
  store i64 %1869, i64* %1870
  %1871 = alloca i1
  store i1 false, i1* %1871
  %1872 = load i64, i64* %1870
  %1873 = icmp sge i64 %1872, 48
  br i1 %1873, label %sc_and_rhs370, label %sc_and_end371
sc_and_rhs370:
  %1874 = load i64, i64* %1870
  %1875 = icmp sle i64 %1874, 57
  store i1 %1875, i1* %1871
  br label %sc_and_end371
sc_and_end371:
  %1876 = load i1, i1* %1871
  br i1 %1876, label %then372, label %else373
then372:
  %1877 = load %nyx_string*, %nyx_string** %1860
  %1878 = load %nyx_string*, %nyx_string** %1845
  %1879 = load i64, i64* %1857
  %1880 = load i64, i64* %1857
  %1881 = add i64 %1880, 1
  %1882 = call %nyx_string* @nyx_string_substring(%nyx_string* %1878, i64 %1879, i64 %1881)
  %1883 = call %nyx_string* @nyx_string_concat(%nyx_string* %1877, %nyx_string* %1882)
  store %nyx_string* %1883, %nyx_string** %1860
  %1884 = load i64, i64* %1857
  %1885 = add i64 %1884, 1
  store i64 %1885, i64* %1857
  br label %merge374
else373:
  %1886 = load %nyx_string*, %nyx_string** %1845
  %1887 = call i64 @nyx_string_byte_length(%nyx_string* %1886)
  store i64 %1887, i64* %1857
  br label %merge374
merge374:
  br label %while_cond367
while_end369:
  %1888 = load %nyx_string*, %nyx_string** %1860
  ret %nyx_string* %1888
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1889 = getelementptr [10 x i8], [10 x i8]* @.str193, i32 0, i32 0
  %1890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1889, i64 9)
  %1891 = load %nyx_string*, %nyx_string** %path.ptr
  %1892 = call %nyx_string* @nyx_string_concat(%nyx_string* %1890, %nyx_string* %1891)
  %1893 = getelementptr [2 x i8], [2 x i8]* @.str194, i32 0, i32 0
  %1894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1893, i64 1)
  %1895 = call %nyx_string* @nyx_string_concat(%nyx_string* %1892, %nyx_string* %1894)
  %1896 = call i8* @nyx_string_to_cstr(%nyx_string* %1895)
  %1897 = call i64 @nyx_exec_code(i8* %1896)
  %1898 = icmp eq i64 %1897, 0
  ret i1 %1898
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1899 = call %nyx_string* @cov_clang_major()
  %1900 = alloca %nyx_string*
  store %nyx_string* %1899, %nyx_string** %1900
  %1901 = load %nyx_string*, %nyx_string** %1900
  %1902 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1902, i64 0)
  %1904 = call i1 @nyx_string_equals(%nyx_string* %1901, %nyx_string* %1903)
  %1905 = xor i1 %1904, true
  br i1 %1905, label %then375, label %else376
then375:
  %1906 = getelementptr [26 x i8], [26 x i8]* @.str196, i32 0, i32 0
  %1907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1906, i64 25)
  %1908 = load %nyx_string*, %nyx_string** %1900
  %1909 = call %nyx_string* @nyx_string_concat(%nyx_string* %1907, %nyx_string* %1908)
  %1910 = getelementptr [13 x i8], [13 x i8]* @.str197, i32 0, i32 0
  %1911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1910, i64 12)
  %1912 = call %nyx_string* @nyx_string_concat(%nyx_string* %1909, %nyx_string* %1911)
  %1913 = call i8* @nyx_string_to_cstr(%nyx_string* %1912)
  %1914 = call %nyx_string* @nyx_exec(i8* %1913)
  %1915 = call %nyx_string* @nyx_string_trim(%nyx_string* %1914)
  %1916 = alloca %nyx_string*
  store %nyx_string* %1915, %nyx_string** %1916
  %1917 = load %nyx_string*, %nyx_string** %1916
  %1918 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %1919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1918, i64 0)
  %1920 = call i1 @nyx_string_equals(%nyx_string* %1917, %nyx_string* %1919)
  %1921 = xor i1 %1920, true
  br i1 %1921, label %then378, label %else379
then378:
  %1922 = load %nyx_string*, %nyx_string** %1916
  ret %nyx_string* %1922
else379:
  br label %merge380
merge380:
  br label %merge377
else376:
  br label %merge377
merge377:
  %1923 = getelementptr [37 x i8], [37 x i8]* @.str199, i32 0, i32 0
  %1924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1923, i64 36)
  %1925 = call i8* @nyx_string_to_cstr(%nyx_string* %1924)
  %1926 = call %nyx_string* @nyx_exec(i8* %1925)
  %1927 = call %nyx_string* @nyx_string_trim(%nyx_string* %1926)
  ret %nyx_string* %1927
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1928 = call { i64, i8* }* @nyx_array_new_ptr()
  %1929 = alloca { i64, i8* }*
  store { i64, i8* }* %1928, { i64, i8* }** %1929
  %1930 = alloca i64
  store i64 0, i64* %1930
  %1931 = alloca i64
  store i64 0, i64* %1931
  %1932 = call i8* @llvm.stacksave()
  br label %while_cond381
while_cond381:
  %1933 = load i64, i64* %1931
  %1934 = load %nyx_string*, %nyx_string** %line.ptr
  %1935 = call i64 @nyx_string_byte_length(%nyx_string* %1934)
  %1936 = icmp slt i64 %1933, %1935
  br i1 %1936, label %while_body382, label %while_end383
while_body382:
  call void @llvm.stackrestore(i8* %1932)
  %1937 = load %nyx_string*, %nyx_string** %line.ptr
  %1938 = load i64, i64* %1931
  %1939 = call i8 @nyx_string_char_at(%nyx_string* %1937, i64 %1938)
  %1940 = zext i8 %1939 to i64
  %1941 = icmp eq i64 %1940, 9
  br i1 %1941, label %then384, label %else385
then384:
  %1942 = load { i64, i8* }*, { i64, i8* }** %1929
  %1943 = load %nyx_string*, %nyx_string** %line.ptr
  %1944 = load i64, i64* %1930
  %1945 = load i64, i64* %1931
  %1946 = call %nyx_string* @nyx_string_substring(%nyx_string* %1943, i64 %1944, i64 %1945)
  %1947 = ptrtoint %nyx_string* %1946 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1942, i64 %1947, i64 2)
  %1948 = load i64, i64* %1931
  %1949 = add i64 %1948, 1
  store i64 %1949, i64* %1930
  br label %merge386
else385:
  br label %merge386
merge386:
  %1950 = load i64, i64* %1931
  %1951 = add i64 %1950, 1
  store i64 %1951, i64* %1931
  br label %while_cond381
while_end383:
  %1952 = load { i64, i8* }*, { i64, i8* }** %1929
  %1953 = load %nyx_string*, %nyx_string** %line.ptr
  %1954 = load i64, i64* %1930
  %1955 = load %nyx_string*, %nyx_string** %line.ptr
  %1956 = call i64 @nyx_string_byte_length(%nyx_string* %1955)
  %1957 = call %nyx_string* @nyx_string_substring(%nyx_string* %1953, i64 %1954, i64 %1956)
  %1958 = ptrtoint %nyx_string* %1957 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1952, i64 %1958, i64 2)
  %1959 = load { i64, i8* }*, { i64, i8* }** %1929
  ret { i64, i8* }* %1959
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1960 = load i64, i64* %n.ptr
  %1961 = call %nyx_string* @nyx_string_from_int(i64 %1960)
  %1962 = alloca %nyx_string*
  store %nyx_string* %1961, %nyx_string** %1962
  %1963 = getelementptr [2 x i8], [2 x i8]* @.str200, i32 0, i32 0
  %1964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1963, i64 1)
  %1965 = alloca %nyx_string*
  store %nyx_string* %1964, %nyx_string** %1965
  %1966 = call i8* @llvm.stacksave()
  br label %while_cond387
while_cond387:
  %1967 = load %nyx_string*, %nyx_string** %1962
  %1968 = call i64 @nyx_string_byte_length(%nyx_string* %1967)
  %1969 = icmp slt i64 %1968, 9
  br i1 %1969, label %while_body388, label %while_end389
while_body388:
  call void @llvm.stackrestore(i8* %1966)
  %1970 = load %nyx_string*, %nyx_string** %1965
  %1971 = load %nyx_string*, %nyx_string** %1962
  %1972 = call %nyx_string* @nyx_string_concat(%nyx_string* %1970, %nyx_string* %1971)
  store %nyx_string* %1972, %nyx_string** %1962
  br label %while_cond387
while_end389:
  %1973 = load %nyx_string*, %nyx_string** %1962
  ret %nyx_string* %1973
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1974 = call i8* @nyx_map_new(i32 0)
  %1975 = alloca i8*
  store i8* %1974, i8** %1975
  %1976 = load %nyx_string*, %nyx_string** %show.ptr
  %1977 = getelementptr [2 x i8], [2 x i8]* @.str201, i32 0, i32 0
  %1978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1977, i64 1)
  %1979 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1976, %nyx_string* %1978)
  %1980 = alloca { i64, i8* }*
  store { i64, i8* }* %1979, { i64, i8* }** %1980
  %1981 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %1982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1981, i64 0)
  %1983 = alloca %nyx_string*
  store %nyx_string* %1982, %nyx_string** %1983
  %1984 = alloca i64
  store i64 0, i64* %1984
  %1985 = getelementptr [3 x i8], [3 x i8]* @.str203, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1985, i64 2)
  %1987 = alloca %nyx_string*
  store %nyx_string* %1986, %nyx_string** %1987
  %1988 = getelementptr [4 x i8], [4 x i8]* @.str204, i32 0, i32 0
  %1989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1988, i64 3)
  %1990 = alloca %nyx_string*
  store %nyx_string* %1989, %nyx_string** %1990
  %1991 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %1992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1991, i64 1)
  %1993 = alloca %nyx_string*
  store %nyx_string* %1992, %nyx_string** %1993
  %1994 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %1995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1994, i64 1)
  %1996 = alloca %nyx_string*
  store %nyx_string* %1995, %nyx_string** %1996
  %1997 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %1998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1997, i64 0)
  %1999 = alloca %nyx_string*
  store %nyx_string* %1998, %nyx_string** %1999
  %2000 = getelementptr [14 x i8], [14 x i8]* @.str208, i32 0, i32 0
  %2001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2000, i64 13)
  %2002 = alloca %nyx_string*
  store %nyx_string* %2001, %nyx_string** %2002
  %2003 = getelementptr [2 x i8], [2 x i8]* @.str209, i32 0, i32 0
  %2004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2003, i64 1)
  %2005 = alloca %nyx_string*
  store %nyx_string* %2004, %nyx_string** %2005
  %2006 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2006, i64 1)
  %2008 = alloca %nyx_string*
  store %nyx_string* %2007, %nyx_string** %2008
  %2009 = getelementptr [2 x i8], [2 x i8]* @.str211, i32 0, i32 0
  %2010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2009, i64 1)
  %2011 = alloca %nyx_string*
  store %nyx_string* %2010, %nyx_string** %2011
  %2012 = getelementptr [2 x i8], [2 x i8]* @.str212, i32 0, i32 0
  %2013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2012, i64 1)
  %2014 = alloca %nyx_string*
  store %nyx_string* %2013, %nyx_string** %2014
  %2015 = call i8* @llvm.stacksave()
  br label %while_cond390
while_cond390:
  %2016 = load i64, i64* %1984
  %2017 = load { i64, i8* }*, { i64, i8* }** %1980
  %2018 = call i64 @nyx_array_length({ i64, i8* }* %2017)
  %2019 = icmp slt i64 %2016, %2018
  br i1 %2019, label %while_body391, label %while_end392
while_body391:
  call void @llvm.stackrestore(i8* %2015)
  %2020 = load { i64, i8* }*, { i64, i8* }** %1980
  %2021 = load i64, i64* %1984
  %2022 = call i64 @nyx_array_get_checked({ i64, i8* }* %2020, i64 %2021, i64 2)
  %2023 = inttoptr i64 %2022 to %nyx_string*
  %2024 = alloca %nyx_string*
  store %nyx_string* %2023, %nyx_string** %2024
  %2025 = alloca i1
  store i1 false, i1* %2025
  %2026 = alloca i1
  store i1 false, i1* %2026
  %2027 = load %nyx_string*, %nyx_string** %2024
  %2028 = load %nyx_string*, %nyx_string** %1987
  %2029 = call i1 @nyx_string_starts_with(%nyx_string* %2027, %nyx_string* %2028)
  br i1 %2029, label %sc_and_rhs393, label %sc_and_end394
sc_and_rhs393:
  %2030 = load %nyx_string*, %nyx_string** %2024
  %2031 = load %nyx_string*, %nyx_string** %1990
  %2032 = call i1 @nyx_string_starts_with(%nyx_string* %2030, %nyx_string* %2031)
  %2033 = xor i1 %2032, true
  store i1 %2033, i1* %2026
  br label %sc_and_end394
sc_and_end394:
  %2034 = load i1, i1* %2026
  br i1 %2034, label %sc_and_rhs395, label %sc_and_end396
sc_and_rhs395:
  %2035 = load %nyx_string*, %nyx_string** %2024
  %2036 = load %nyx_string*, %nyx_string** %1993
  %2037 = call i1 @nyx_string_ends_with(%nyx_string* %2035, %nyx_string* %2036)
  store i1 %2037, i1* %2025
  br label %sc_and_end396
sc_and_end396:
  %2038 = load i1, i1* %2025
  br i1 %2038, label %then397, label %else398
then397:
  %2039 = load %nyx_string*, %nyx_string** %2024
  %2040 = load %nyx_string*, %nyx_string** %2024
  %2041 = call i64 @nyx_string_byte_length(%nyx_string* %2040)
  %2042 = sub i64 %2041, 1
  %2043 = call %nyx_string* @nyx_string_substring(%nyx_string* %2039, i64 2, i64 %2042)
  %2044 = alloca %nyx_string*
  store %nyx_string* %2043, %nyx_string** %2044
  %2045 = load %nyx_string*, %nyx_string** %2044
  %2046 = load %nyx_string*, %nyx_string** %1996
  %2047 = call i64 @nyx_string_index_of(%nyx_string* %2045, %nyx_string* %2046)
  %2048 = alloca i64
  store i64 %2047, i64* %2048
  %2049 = load i64, i64* %2048
  %2050 = icmp sge i64 %2049, 0
  br i1 %2050, label %then400, label %else401
then400:
  %2051 = load %nyx_string*, %nyx_string** %2044
  %2052 = load i64, i64* %2048
  %2053 = add i64 %2052, 1
  %2054 = load %nyx_string*, %nyx_string** %2044
  %2055 = call i64 @nyx_string_byte_length(%nyx_string* %2054)
  %2056 = call %nyx_string* @nyx_string_substring(%nyx_string* %2051, i64 %2053, i64 %2055)
  store %nyx_string* %2056, %nyx_string** %2044
  br label %merge402
else401:
  br label %merge402
merge402:
  %2057 = load %nyx_string*, %nyx_string** %2044
  store %nyx_string* %2057, %nyx_string** %1983
  br label %merge399
else398:
  %2058 = alloca i1
  store i1 false, i1* %2058
  %2059 = load %nyx_string*, %nyx_string** %1983
  %2060 = load %nyx_string*, %nyx_string** %1999
  %2061 = call i1 @nyx_string_equals(%nyx_string* %2059, %nyx_string* %2060)
  %2062 = xor i1 %2061, true
  br i1 %2062, label %sc_and_rhs403, label %sc_and_end404
sc_and_rhs403:
  %2063 = load %nyx_string*, %nyx_string** %2024
  %2064 = load %nyx_string*, %nyx_string** %2002
  %2065 = call i1 @nyx_string_contains(%nyx_string* %2063, %nyx_string* %2064)
  store i1 %2065, i1* %2058
  br label %sc_and_end404
sc_and_end404:
  %2066 = load i1, i1* %2058
  br i1 %2066, label %then405, label %else406
then405:
  %2067 = load %nyx_string*, %nyx_string** %2024
  %2068 = load %nyx_string*, %nyx_string** %2005
  %2069 = call i64 @nyx_string_index_of(%nyx_string* %2067, %nyx_string* %2068)
  %2070 = alloca i64
  store i64 %2069, i64* %2070
  %2071 = load %nyx_string*, %nyx_string** %2024
  %2072 = load %nyx_string*, %nyx_string** %2008
  %2073 = call i64 @nyx_string_index_of(%nyx_string* %2071, %nyx_string* %2072)
  %2074 = alloca i64
  store i64 %2073, i64* %2074
  %2075 = alloca i1
  store i1 false, i1* %2075
  %2076 = load i64, i64* %2070
  %2077 = icmp sge i64 %2076, 0
  br i1 %2077, label %sc_and_rhs408, label %sc_and_end409
sc_and_rhs408:
  %2078 = load i64, i64* %2074
  %2079 = load i64, i64* %2070
  %2080 = icmp sgt i64 %2078, %2079
  store i1 %2080, i1* %2075
  br label %sc_and_end409
sc_and_end409:
  %2081 = load i1, i1* %2075
  br i1 %2081, label %then410, label %else411
then410:
  %2082 = load %nyx_string*, %nyx_string** %2024
  %2083 = load i64, i64* %2070
  %2084 = add i64 %2083, 1
  %2085 = load i64, i64* %2074
  %2086 = call %nyx_string* @nyx_string_substring(%nyx_string* %2082, i64 %2084, i64 %2085)
  %2087 = load %nyx_string*, %nyx_string** %2011
  %2088 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2086, %nyx_string* %2087)
  %2089 = alloca { i64, i8* }*
  store { i64, i8* }* %2088, { i64, i8* }** %2089
  %2090 = alloca i64
  store i64 0, i64* %2090
  %2091 = call i8* @llvm.stacksave()
  br label %while_cond413
while_cond413:
  %2092 = load i64, i64* %2090
  %2093 = load { i64, i8* }*, { i64, i8* }** %2089
  %2094 = call i64 @nyx_array_length({ i64, i8* }* %2093)
  %2095 = icmp slt i64 %2092, %2094
  br i1 %2095, label %while_body414, label %while_end415
while_body414:
  call void @llvm.stackrestore(i8* %2091)
  %2096 = load { i64, i8* }*, { i64, i8* }** %2089
  %2097 = load i64, i64* %2090
  %2098 = call i64 @nyx_array_get_checked({ i64, i8* }* %2096, i64 %2097, i64 2)
  %2099 = inttoptr i64 %2098 to %nyx_string*
  %2100 = alloca %nyx_string*
  store %nyx_string* %2099, %nyx_string** %2100
  %2101 = load %nyx_string*, %nyx_string** %2100
  %2102 = call %nyx_string* @nyx_string_trim(%nyx_string* %2101)
  %2103 = call i64 @nyx_string_to_int(%nyx_string* %2102)
  %2104 = icmp sgt i64 %2103, 0
  br i1 %2104, label %then416, label %else417
then416:
  %2105 = load i8*, i8** %1975
  %2106 = load %nyx_string*, %nyx_string** %1983
  %2107 = load %nyx_string*, %nyx_string** %2014
  %2108 = call i8* @nyx_string_to_cstr(%nyx_string* %2106)
  %2109 = call i8* @nyx_string_to_cstr(%nyx_string* %2107)
  call void @nyx_map_insert_str(i8* %2105, i8* %2108, i8* %2109)
  br label %merge418
else417:
  br label %merge418
merge418:
  %2110 = load i64, i64* %2090
  %2111 = add i64 %2110, 1
  store i64 %2111, i64* %2090
  br label %while_cond413
while_end415:
  br label %merge412
else411:
  br label %merge412
merge412:
  br label %merge407
else406:
  br label %merge407
merge407:
  br label %merge399
merge399:
  %2112 = load i64, i64* %1984
  %2113 = add i64 %2112, 1
  store i64 %2113, i64* %1984
  br label %while_cond390
while_end392:
  %2114 = load i8*, i8** %1975
  ret i8* %2114
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2115 = call { i64, i8* }* @nyx_array_new_ptr()
  %2116 = alloca { i64, i8* }*
  store { i64, i8* }* %2115, { i64, i8* }** %2116
  %2117 = getelementptr [4 x i8], [4 x i8]* @.str213, i32 0, i32 0
  %2118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2117, i64 3)
  %2119 = call i8* @nyx_string_to_cstr(%nyx_string* %2118)
  %2120 = call i1 @nyx_file_exists(i8* %2119)
  %2121 = xor i1 %2120, true
  br i1 %2121, label %then419, label %else420
then419:
  %2122 = load { i64, i8* }*, { i64, i8* }** %2116
  ret { i64, i8* }* %2122
else420:
  br label %merge421
merge421:
  %2123 = getelementptr [50 x i8], [50 x i8]* @.str214, i32 0, i32 0
  %2124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2123, i64 49)
  %2125 = call i8* @nyx_string_to_cstr(%nyx_string* %2124)
  %2126 = call %nyx_string* @nyx_exec(i8* %2125)
  %2127 = alloca %nyx_string*
  store %nyx_string* %2126, %nyx_string** %2127
  %2128 = load %nyx_string*, %nyx_string** %2127
  %2129 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2129, i64 1)
  %2131 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2128, %nyx_string* %2130)
  %2132 = alloca { i64, i8* }*
  store { i64, i8* }* %2131, { i64, i8* }** %2132
  %2133 = alloca i64
  store i64 0, i64* %2133
  %2134 = getelementptr [4 x i8], [4 x i8]* @.str216, i32 0, i32 0
  %2135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2134, i64 3)
  %2136 = alloca %nyx_string*
  store %nyx_string* %2135, %nyx_string** %2136
  %2137 = getelementptr [9 x i8], [9 x i8]* @.str217, i32 0, i32 0
  %2138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2137, i64 8)
  %2139 = alloca %nyx_string*
  store %nyx_string* %2138, %nyx_string** %2139
  %2140 = call i8* @llvm.stacksave()
  br label %while_cond422
while_cond422:
  %2141 = load i64, i64* %2133
  %2142 = load { i64, i8* }*, { i64, i8* }** %2132
  %2143 = call i64 @nyx_array_length({ i64, i8* }* %2142)
  %2144 = icmp slt i64 %2141, %2143
  br i1 %2144, label %while_body423, label %while_end424
while_body423:
  call void @llvm.stackrestore(i8* %2140)
  %2145 = load { i64, i8* }*, { i64, i8* }** %2132
  %2146 = load i64, i64* %2133
  %2147 = call i64 @nyx_array_get_checked({ i64, i8* }* %2145, i64 %2146, i64 2)
  %2148 = inttoptr i64 %2147 to %nyx_string*
  %2149 = alloca %nyx_string*
  store %nyx_string* %2148, %nyx_string** %2149
  %2150 = load %nyx_string*, %nyx_string** %2149
  %2151 = call %nyx_string* @nyx_string_trim(%nyx_string* %2150)
  %2152 = alloca %nyx_string*
  store %nyx_string* %2151, %nyx_string** %2152
  %2153 = alloca i1
  store i1 false, i1* %2153
  %2154 = load %nyx_string*, %nyx_string** %2152
  %2155 = load %nyx_string*, %nyx_string** %2136
  %2156 = call i1 @nyx_string_ends_with(%nyx_string* %2154, %nyx_string* %2155)
  br i1 %2156, label %sc_and_rhs425, label %sc_and_end426
sc_and_rhs425:
  %2157 = load %nyx_string*, %nyx_string** %2152
  %2158 = load %nyx_string*, %nyx_string** %2139
  %2159 = call i1 @nyx_string_ends_with(%nyx_string* %2157, %nyx_string* %2158)
  %2160 = xor i1 %2159, true
  store i1 %2160, i1* %2153
  br label %sc_and_end426
sc_and_end426:
  %2161 = load i1, i1* %2153
  br i1 %2161, label %then427, label %else428
then427:
  %2162 = load { i64, i8* }*, { i64, i8* }** %2116
  %2163 = load %nyx_string*, %nyx_string** %2152
  %2164 = load %nyx_string*, %nyx_string** %2152
  %2165 = call i64 @nyx_string_byte_length(%nyx_string* %2164)
  %2166 = sub i64 %2165, 3
  %2167 = call %nyx_string* @nyx_string_substring(%nyx_string* %2163, i64 0, i64 %2166)
  %2168 = ptrtoint %nyx_string* %2167 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2162, i64 %2168, i64 2)
  br label %merge429
else428:
  br label %merge429
merge429:
  %2169 = load i64, i64* %2133
  %2170 = add i64 %2169, 1
  store i64 %2170, i64* %2133
  br label %while_cond422
while_end424:
  %2171 = load { i64, i8* }*, { i64, i8* }** %2116
  ret { i64, i8* }* %2171
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
  %2172 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %2173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2172, i64 0)
  %2174 = alloca %nyx_string*
  store %nyx_string* %2173, %nyx_string** %2174
  %2175 = alloca i64
  store i64 0, i64* %2175
  %2176 = getelementptr [9 x i8], [9 x i8]* @.str219, i32 0, i32 0
  %2177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2176, i64 8)
  %2178 = alloca %nyx_string*
  store %nyx_string* %2177, %nyx_string** %2178
  %2179 = getelementptr [3 x i8], [3 x i8]* @.str220, i32 0, i32 0
  %2180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2179, i64 2)
  %2181 = alloca %nyx_string*
  store %nyx_string* %2180, %nyx_string** %2181
  %2182 = call i8* @llvm.stacksave()
  br label %while_cond430
while_cond430:
  %2183 = load i64, i64* %2175
  %2184 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2185 = call i64 @nyx_array_length({ i64, i8* }* %2184)
  %2186 = icmp slt i64 %2183, %2185
  br i1 %2186, label %while_body431, label %while_end432
while_body431:
  call void @llvm.stackrestore(i8* %2182)
  %2187 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2188 = load i64, i64* %2175
  %2189 = call i64 @nyx_array_get_checked({ i64, i8* }* %2187, i64 %2188, i64 2)
  %2190 = inttoptr i64 %2189 to %nyx_string*
  %2191 = alloca %nyx_string*
  store %nyx_string* %2190, %nyx_string** %2191
  %2192 = load %nyx_string*, %nyx_string** %2174
  %2193 = load %nyx_string*, %nyx_string** %2178
  %2194 = call %nyx_string* @nyx_string_concat(%nyx_string* %2192, %nyx_string* %2193)
  %2195 = load %nyx_string*, %nyx_string** %2191
  %2196 = call %nyx_string* @nyx_string_concat(%nyx_string* %2194, %nyx_string* %2195)
  %2197 = load %nyx_string*, %nyx_string** %2181
  %2198 = call %nyx_string* @nyx_string_concat(%nyx_string* %2196, %nyx_string* %2197)
  store %nyx_string* %2198, %nyx_string** %2174
  %2199 = load i64, i64* %2175
  %2200 = add i64 %2199, 1
  store i64 %2200, i64* %2175
  br label %while_cond430
while_end432:
  %2201 = load %nyx_string*, %nyx_string** %2174
  %2202 = getelementptr [36 x i8], [36 x i8]* @.str221, i32 0, i32 0
  %2203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2202, i64 35)
  %2204 = call %nyx_string* @nyx_string_concat(%nyx_string* %2201, %nyx_string* %2203)
  store %nyx_string* %2204, %nyx_string** %2174
  %2205 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2206 = getelementptr [13 x i8], [13 x i8]* @.str222, i32 0, i32 0
  %2207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2206, i64 12)
  %2208 = call %nyx_string* @nyx_string_concat(%nyx_string* %2205, %nyx_string* %2207)
  %2209 = load %nyx_string*, %nyx_string** %2174
  %2210 = call i8* @nyx_string_to_cstr(%nyx_string* %2208)
  %2211 = call i1 @nyx_write_file_safe(i8* %2210, %nyx_string* %2209)
  %2212 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2213 = getelementptr [14 x i8], [14 x i8]* @.str223, i32 0, i32 0
  %2214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2213, i64 13)
  %2215 = call %nyx_string* @nyx_string_concat(%nyx_string* %2212, %nyx_string* %2214)
  %2216 = alloca %nyx_string*
  store %nyx_string* %2215, %nyx_string** %2216
  %2217 = getelementptr [13 x i8], [13 x i8]* @.str224, i32 0, i32 0
  %2218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2217, i64 12)
  %2219 = getelementptr [8 x i8], [8 x i8]* @.str225, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2219, i64 7)
  %2221 = call %nyx_string* @nyx_string_concat(%nyx_string* %2218, %nyx_string* %2220)
  %2222 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2223 = call %nyx_string* @nyx_string_concat(%nyx_string* %2221, %nyx_string* %2222)
  %2224 = getelementptr [19 x i8], [19 x i8]* @.str226, i32 0, i32 0
  %2225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2224, i64 18)
  %2226 = call %nyx_string* @nyx_string_concat(%nyx_string* %2223, %nyx_string* %2225)
  %2227 = getelementptr [5 x i8], [5 x i8]* @.str227, i32 0, i32 0
  %2228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2227, i64 4)
  %2229 = call %nyx_string* @nyx_string_concat(%nyx_string* %2226, %nyx_string* %2228)
  %2230 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2231 = call %nyx_string* @nyx_string_concat(%nyx_string* %2229, %nyx_string* %2230)
  %2232 = getelementptr [24 x i8], [24 x i8]* @.str228, i32 0, i32 0
  %2233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2232, i64 23)
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2231, %nyx_string* %2233)
  %2235 = getelementptr [5 x i8], [5 x i8]* @.str229, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2235, i64 4)
  %2237 = call %nyx_string* @nyx_string_concat(%nyx_string* %2234, %nyx_string* %2236)
  %2238 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2239 = call %nyx_string* @nyx_string_concat(%nyx_string* %2237, %nyx_string* %2238)
  %2240 = getelementptr [3 x i8], [3 x i8]* @.str230, i32 0, i32 0
  %2241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2240, i64 2)
  %2242 = call %nyx_string* @nyx_string_concat(%nyx_string* %2239, %nyx_string* %2241)
  %2243 = getelementptr [137 x i8], [137 x i8]* @.str231, i32 0, i32 0
  %2244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2243, i64 136)
  %2245 = call %nyx_string* @nyx_string_concat(%nyx_string* %2242, %nyx_string* %2244)
  %2246 = getelementptr [43 x i8], [43 x i8]* @.str232, i32 0, i32 0
  %2247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2246, i64 42)
  %2248 = call %nyx_string* @nyx_string_concat(%nyx_string* %2245, %nyx_string* %2247)
  %2249 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2250 = call %nyx_string* @nyx_string_concat(%nyx_string* %2248, %nyx_string* %2249)
  %2251 = getelementptr [38 x i8], [38 x i8]* @.str233, i32 0, i32 0
  %2252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2251, i64 37)
  %2253 = call %nyx_string* @nyx_string_concat(%nyx_string* %2250, %nyx_string* %2252)
  %2254 = load %nyx_string*, %nyx_string** %2216
  %2255 = call %nyx_string* @nyx_string_concat(%nyx_string* %2253, %nyx_string* %2254)
  %2256 = getelementptr [24 x i8], [24 x i8]* @.str234, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2256, i64 23)
  %2258 = call %nyx_string* @nyx_string_concat(%nyx_string* %2255, %nyx_string* %2257)
  %2259 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2260 = call %nyx_string* @nyx_string_concat(%nyx_string* %2258, %nyx_string* %2259)
  %2261 = getelementptr [21 x i8], [21 x i8]* @.str235, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2261, i64 20)
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2260, %nyx_string* %2262)
  %2264 = getelementptr [7 x i8], [7 x i8]* @.str236, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2264, i64 6)
  %2266 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2265)
  %2267 = getelementptr [17 x i8], [17 x i8]* @.str237, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2267, i64 16)
  %2269 = call %nyx_string* @nyx_string_concat(%nyx_string* %2266, %nyx_string* %2268)
  %2270 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2271 = call %nyx_string* @nyx_string_concat(%nyx_string* %2269, %nyx_string* %2270)
  %2272 = getelementptr [19 x i8], [19 x i8]* @.str238, i32 0, i32 0
  %2273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2272, i64 18)
  %2274 = call %nyx_string* @nyx_string_concat(%nyx_string* %2271, %nyx_string* %2273)
  %2275 = getelementptr [10 x i8], [10 x i8]* @.str239, i32 0, i32 0
  %2276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2275, i64 9)
  %2277 = call %nyx_string* @nyx_string_concat(%nyx_string* %2274, %nyx_string* %2276)
  %2278 = alloca %nyx_string*
  store %nyx_string* %2277, %nyx_string** %2278
  %2279 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2280 = getelementptr [13 x i8], [13 x i8]* @.str240, i32 0, i32 0
  %2281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2280, i64 12)
  %2282 = call %nyx_string* @nyx_string_concat(%nyx_string* %2279, %nyx_string* %2281)
  %2283 = load %nyx_string*, %nyx_string** %2278
  %2284 = call i8* @nyx_string_to_cstr(%nyx_string* %2282)
  %2285 = call i1 @nyx_write_file_safe(i8* %2284, %nyx_string* %2283)
  %2286 = getelementptr [7 x i8], [7 x i8]* @.str241, i32 0, i32 0
  %2287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2286, i64 6)
  %2288 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2289 = call %nyx_string* @nyx_string_concat(%nyx_string* %2287, %nyx_string* %2288)
  %2290 = getelementptr [14 x i8], [14 x i8]* @.str242, i32 0, i32 0
  %2291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2290, i64 13)
  %2292 = call %nyx_string* @nyx_string_concat(%nyx_string* %2289, %nyx_string* %2291)
  %2293 = call i8* @nyx_string_to_cstr(%nyx_string* %2292)
  %2294 = call i64 @nyx_exec_code(i8* %2293)
  %2295 = load %nyx_string*, %nyx_string** %2216
  ret %nyx_string* %2295
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
  %2296 = getelementptr [9 x i8], [9 x i8]* @.str243, i32 0, i32 0
  %2297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2296, i64 8)
  %2298 = call i8* @nyx_string_to_cstr(%nyx_string* %2297)
  %2299 = call %nyx_string* @nyx_getenv(i8* %2298)
  %2300 = alloca %nyx_string*
  store %nyx_string* %2299, %nyx_string** %2300
  %2301 = getelementptr [4 x i8], [4 x i8]* @.str244, i32 0, i32 0
  %2302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2301, i64 3)
  %2303 = call i8* @nyx_string_to_cstr(%nyx_string* %2302)
  %2304 = call %nyx_string* @nyx_getenv(i8* %2303)
  %2305 = alloca %nyx_string*
  store %nyx_string* %2304, %nyx_string** %2305
  %2306 = getelementptr [1 x i8], [1 x i8]* @.str245, i32 0, i32 0
  %2307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2306, i64 0)
  %2308 = call i8* @nyx_string_to_cstr(%nyx_string* %2307)
  call void @nyx_print_string(i8* %2308)
  %2309 = getelementptr [36 x i8], [36 x i8]* @.str246, i32 0, i32 0
  %2310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2309, i64 35)
  %2311 = call i8* @nyx_string_to_cstr(%nyx_string* %2310)
  call void @nyx_print_string(i8* %2311)
  %2312 = getelementptr [1 x i8], [1 x i8]* @.str247, i32 0, i32 0
  %2313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2312, i64 0)
  %2314 = alloca %nyx_string*
  store %nyx_string* %2313, %nyx_string** %2314
  %2315 = alloca i64
  store i64 0, i64* %2315
  %2316 = call i8* @nyx_map_new(i32 0)
  %2317 = alloca i8*
  store i8* %2316, i8** %2317
  %2318 = call { i64, i8* }* @nyx_array_new_ptr()
  %2319 = alloca { i64, i8* }*
  store { i64, i8* }* %2318, { i64, i8* }** %2319
  %2320 = alloca i64
  store i64 0, i64* %2320
  %2321 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %2322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2321, i64 1)
  %2323 = alloca %nyx_string*
  store %nyx_string* %2322, %nyx_string** %2323
  %2324 = getelementptr [9 x i8], [9 x i8]* @.str249, i32 0, i32 0
  %2325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2324, i64 8)
  %2326 = alloca %nyx_string*
  store %nyx_string* %2325, %nyx_string** %2326
  %2327 = getelementptr [3 x i8], [3 x i8]* @.str250, i32 0, i32 0
  %2328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2327, i64 2)
  %2329 = alloca %nyx_string*
  store %nyx_string* %2328, %nyx_string** %2329
  %2330 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2330, i64 1)
  %2332 = alloca %nyx_string*
  store %nyx_string* %2331, %nyx_string** %2332
  %2333 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2333, i64 1)
  %2335 = alloca %nyx_string*
  store %nyx_string* %2334, %nyx_string** %2335
  %2336 = call i8* @llvm.stacksave()
  br label %while_cond433
while_cond433:
  %2337 = load i64, i64* %2320
  %2338 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2339 = call i64 @nyx_array_length({ i64, i8* }* %2338)
  %2340 = icmp slt i64 %2337, %2339
  br i1 %2340, label %while_body434, label %while_end435
while_body434:
  call void @llvm.stackrestore(i8* %2336)
  %2341 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2342 = load i64, i64* %2320
  %2343 = call i64 @nyx_array_get_checked({ i64, i8* }* %2341, i64 %2342, i64 2)
  %2344 = inttoptr i64 %2343 to %nyx_string*
  %2345 = alloca %nyx_string*
  store %nyx_string* %2344, %nyx_string** %2345
  %2346 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2347 = load i64, i64* %2320
  %2348 = call i64 @nyx_array_get_checked({ i64, i8* }* %2346, i64 %2347, i64 2)
  %2349 = inttoptr i64 %2348 to %nyx_string*
  %2350 = alloca %nyx_string*
  store %nyx_string* %2349, %nyx_string** %2350
  %2351 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2352 = load %nyx_string*, %nyx_string** %2323
  %2353 = call %nyx_string* @nyx_string_concat(%nyx_string* %2351, %nyx_string* %2352)
  %2354 = load %nyx_string*, %nyx_string** %2345
  %2355 = call %nyx_string* @nyx_string_concat(%nyx_string* %2353, %nyx_string* %2354)
  %2356 = load %nyx_string*, %nyx_string** %2326
  %2357 = call %nyx_string* @nyx_string_concat(%nyx_string* %2355, %nyx_string* %2356)
  %2358 = alloca %nyx_string*
  store %nyx_string* %2357, %nyx_string** %2358
  %2359 = load %nyx_string*, %nyx_string** %2358
  %2360 = call i1 @cov_profraw_valid(%nyx_string* %2359)
  br i1 %2360, label %then436, label %else437
then436:
  %2361 = load %nyx_string*, %nyx_string** %2314
  %2362 = load %nyx_string*, %nyx_string** %2329
  %2363 = call %nyx_string* @nyx_string_concat(%nyx_string* %2361, %nyx_string* %2362)
  %2364 = load %nyx_string*, %nyx_string** %2358
  %2365 = call %nyx_string* @nyx_string_concat(%nyx_string* %2363, %nyx_string* %2364)
  %2366 = load %nyx_string*, %nyx_string** %2332
  %2367 = call %nyx_string* @nyx_string_concat(%nyx_string* %2365, %nyx_string* %2366)
  store %nyx_string* %2367, %nyx_string** %2314
  %2368 = load i64, i64* %2315
  %2369 = add i64 %2368, 1
  store i64 %2369, i64* %2315
  %2370 = load i8*, i8** %2317
  %2371 = load %nyx_string*, %nyx_string** %2345
  %2372 = load %nyx_string*, %nyx_string** %2335
  %2373 = call i8* @nyx_string_to_cstr(%nyx_string* %2371)
  %2374 = call i8* @nyx_string_to_cstr(%nyx_string* %2372)
  call void @nyx_map_insert_str(i8* %2370, i8* %2373, i8* %2374)
  br label %merge438
else437:
  %2375 = load { i64, i8* }*, { i64, i8* }** %2319
  %2376 = load %nyx_string*, %nyx_string** %2350
  %2377 = ptrtoint %nyx_string* %2376 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2375, i64 %2377, i64 2)
  br label %merge438
merge438:
  %2378 = load i64, i64* %2320
  %2379 = add i64 %2378, 1
  store i64 %2379, i64* %2320
  br label %while_cond433
while_end435:
  %2380 = call i8* @nyx_map_new(i32 0)
  %2381 = alloca i8*
  store i8* %2380, i8** %2381
  %2382 = load i64, i64* %2315
  %2383 = icmp sgt i64 %2382, 0
  br i1 %2383, label %then439, label %else440
then439:
  %2384 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2385 = getelementptr [17 x i8], [17 x i8]* @.str253, i32 0, i32 0
  %2386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2385, i64 16)
  %2387 = call %nyx_string* @nyx_string_concat(%nyx_string* %2384, %nyx_string* %2386)
  %2388 = alloca %nyx_string*
  store %nyx_string* %2387, %nyx_string** %2388
  %2389 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2390 = getelementptr [12 x i8], [12 x i8]* @.str254, i32 0, i32 0
  %2391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2390, i64 11)
  %2392 = call %nyx_string* @nyx_string_concat(%nyx_string* %2389, %nyx_string* %2391)
  %2393 = load %nyx_string*, %nyx_string** %2388
  %2394 = call %nyx_string* @nyx_string_concat(%nyx_string* %2392, %nyx_string* %2393)
  %2395 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2395, i64 1)
  %2397 = call %nyx_string* @nyx_string_concat(%nyx_string* %2394, %nyx_string* %2396)
  %2398 = load %nyx_string*, %nyx_string** %2314
  %2399 = call %nyx_string* @nyx_string_concat(%nyx_string* %2397, %nyx_string* %2398)
  %2400 = getelementptr [5 x i8], [5 x i8]* @.str256, i32 0, i32 0
  %2401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2400, i64 4)
  %2402 = call %nyx_string* @nyx_string_concat(%nyx_string* %2399, %nyx_string* %2401)
  %2403 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2404 = call %nyx_string* @nyx_string_concat(%nyx_string* %2402, %nyx_string* %2403)
  %2405 = getelementptr [17 x i8], [17 x i8]* @.str257, i32 0, i32 0
  %2406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2405, i64 16)
  %2407 = call %nyx_string* @nyx_string_concat(%nyx_string* %2404, %nyx_string* %2406)
  %2408 = call i8* @nyx_string_to_cstr(%nyx_string* %2407)
  %2409 = call i64 @nyx_exec_code(i8* %2408)
  %2410 = alloca i64
  store i64 %2409, i64* %2410
  %2411 = load i64, i64* %2410
  %2412 = icmp ne i64 %2411, 0
  br i1 %2412, label %then442, label %else443
then442:
  %2413 = getelementptr [36 x i8], [36 x i8]* @.str258, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2413, i64 35)
  %2415 = call i8* @nyx_string_to_cstr(%nyx_string* %2414)
  call void @nyx_print_string(i8* %2415)
  %2416 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2417 = getelementptr [11 x i8], [11 x i8]* @.str259, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2417, i64 10)
  %2419 = call %nyx_string* @nyx_string_concat(%nyx_string* %2416, %nyx_string* %2418)
  %2420 = call i8* @nyx_string_to_cstr(%nyx_string* %2419)
  %2421 = call %nyx_string* @nyx_read_file(i8* %2420)
  %2422 = call i8* @nyx_string_to_cstr(%nyx_string* %2421)
  call void @nyx_print_string(i8* %2422)
  ret i64 1
else443:
  br label %merge444
merge444:
  %2423 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2424 = getelementptr [33 x i8], [33 x i8]* @.str260, i32 0, i32 0
  %2425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2424, i64 32)
  %2426 = call %nyx_string* @nyx_string_concat(%nyx_string* %2423, %nyx_string* %2425)
  %2427 = load %nyx_string*, %nyx_string** %2388
  %2428 = call %nyx_string* @nyx_string_concat(%nyx_string* %2426, %nyx_string* %2427)
  %2429 = getelementptr [6 x i8], [6 x i8]* @.str261, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2429, i64 5)
  %2431 = call %nyx_string* @nyx_string_concat(%nyx_string* %2428, %nyx_string* %2430)
  %2432 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2433 = call %nyx_string* @nyx_string_concat(%nyx_string* %2431, %nyx_string* %2432)
  %2434 = getelementptr [16 x i8], [16 x i8]* @.str262, i32 0, i32 0
  %2435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2434, i64 15)
  %2436 = call %nyx_string* @nyx_string_concat(%nyx_string* %2433, %nyx_string* %2435)
  %2437 = call i8* @nyx_string_to_cstr(%nyx_string* %2436)
  %2438 = call i64 @nyx_exec_code(i8* %2437)
  %2439 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2440 = getelementptr [10 x i8], [10 x i8]* @.str263, i32 0, i32 0
  %2441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2440, i64 9)
  %2442 = call %nyx_string* @nyx_string_concat(%nyx_string* %2439, %nyx_string* %2441)
  %2443 = call i8* @nyx_string_to_cstr(%nyx_string* %2442)
  %2444 = call %nyx_string* @nyx_read_file(i8* %2443)
  %2445 = call i8* @cov_called_from_show(%nyx_string* %2444)
  store i8* %2445, i8** %2381
  br label %merge441
else440:
  br label %merge441
merge441:
  %2446 = call i8* @nyx_map_new(i32 0)
  %2447 = alloca i8*
  store i8* %2446, i8** %2447
  %2448 = call i8* @nyx_map_new(i32 0)
  %2449 = alloca i8*
  store i8* %2448, i8** %2449
  %2450 = call i8* @nyx_map_new(i32 0)
  %2451 = alloca i8*
  store i8* %2450, i8** %2451
  %2452 = call i8* @nyx_map_new(i32 0)
  %2453 = alloca i8*
  store i8* %2452, i8** %2453
  store i64 0, i64* %2320
  %2454 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %2455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2454, i64 1)
  %2456 = alloca %nyx_string*
  store %nyx_string* %2455, %nyx_string** %2456
  %2457 = getelementptr [5 x i8], [5 x i8]* @.str265, i32 0, i32 0
  %2458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2457, i64 4)
  %2459 = alloca %nyx_string*
  store %nyx_string* %2458, %nyx_string** %2459
  %2460 = getelementptr [2 x i8], [2 x i8]* @.str266, i32 0, i32 0
  %2461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2460, i64 1)
  %2462 = alloca %nyx_string*
  store %nyx_string* %2461, %nyx_string** %2462
  %2463 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %2464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2463, i64 0)
  %2465 = alloca %nyx_string*
  store %nyx_string* %2464, %nyx_string** %2465
  %2466 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %2467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2466, i64 1)
  %2468 = alloca %nyx_string*
  store %nyx_string* %2467, %nyx_string** %2468
  %2469 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2469, i64 4)
  %2471 = alloca %nyx_string*
  store %nyx_string* %2470, %nyx_string** %2471
  %2472 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %2473 = load i64, i64* %2320
  %2474 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2475 = call i64 @nyx_array_length({ i64, i8* }* %2474)
  %2476 = icmp slt i64 %2473, %2475
  br i1 %2476, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %2472)
  %2477 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2478 = load i64, i64* %2320
  %2479 = call i64 @nyx_array_get_checked({ i64, i8* }* %2477, i64 %2478, i64 2)
  %2480 = inttoptr i64 %2479 to %nyx_string*
  %2481 = alloca %nyx_string*
  store %nyx_string* %2480, %nyx_string** %2481
  %2482 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2483 = load %nyx_string*, %nyx_string** %2456
  %2484 = call %nyx_string* @nyx_string_concat(%nyx_string* %2482, %nyx_string* %2483)
  %2485 = load %nyx_string*, %nyx_string** %2481
  %2486 = call %nyx_string* @nyx_string_concat(%nyx_string* %2484, %nyx_string* %2485)
  %2487 = load %nyx_string*, %nyx_string** %2459
  %2488 = call %nyx_string* @nyx_string_concat(%nyx_string* %2486, %nyx_string* %2487)
  %2489 = alloca %nyx_string*
  store %nyx_string* %2488, %nyx_string** %2489
  %2490 = load %nyx_string*, %nyx_string** %2489
  %2491 = call i8* @nyx_string_to_cstr(%nyx_string* %2490)
  %2492 = call i1 @nyx_file_exists(i8* %2491)
  br i1 %2492, label %then448, label %else449
then448:
  %2493 = load %nyx_string*, %nyx_string** %2489
  %2494 = call i8* @nyx_string_to_cstr(%nyx_string* %2493)
  %2495 = call %nyx_string* @nyx_read_file(i8* %2494)
  %2496 = load %nyx_string*, %nyx_string** %2462
  %2497 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2495, %nyx_string* %2496)
  %2498 = alloca { i64, i8* }*
  store { i64, i8* }* %2497, { i64, i8* }** %2498
  %2499 = alloca i64
  store i64 0, i64* %2499
  %2500 = call i8* @llvm.stacksave()
  br label %while_cond451
while_cond451:
  %2501 = load i64, i64* %2499
  %2502 = load { i64, i8* }*, { i64, i8* }** %2498
  %2503 = call i64 @nyx_array_length({ i64, i8* }* %2502)
  %2504 = icmp slt i64 %2501, %2503
  br i1 %2504, label %while_body452, label %while_end453
while_body452:
  call void @llvm.stackrestore(i8* %2500)
  %2505 = load { i64, i8* }*, { i64, i8* }** %2498
  %2506 = load i64, i64* %2499
  %2507 = call i64 @nyx_array_get_checked({ i64, i8* }* %2505, i64 %2506, i64 2)
  %2508 = inttoptr i64 %2507 to %nyx_string*
  %2509 = alloca %nyx_string*
  store %nyx_string* %2508, %nyx_string** %2509
  %2510 = load %nyx_string*, %nyx_string** %2509
  %2511 = call { i64, i8* }* @cov_fields(%nyx_string* %2510)
  %2512 = alloca { i64, i8* }*
  store { i64, i8* }* %2511, { i64, i8* }** %2512
  %2513 = load { i64, i8* }*, { i64, i8* }** %2512
  %2514 = call i64 @nyx_array_length({ i64, i8* }* %2513)
  %2515 = icmp sge i64 %2514, 5
  br i1 %2515, label %then454, label %else455
then454:
  %2516 = load { i64, i8* }*, { i64, i8* }** %2512
  %2517 = call i64 @nyx_array_get_checked({ i64, i8* }* %2516, i64 0, i64 2)
  %2518 = inttoptr i64 %2517 to %nyx_string*
  %2519 = alloca %nyx_string*
  store %nyx_string* %2518, %nyx_string** %2519
  %2520 = load { i64, i8* }*, { i64, i8* }** %2512
  %2521 = call i64 @nyx_array_get_checked({ i64, i8* }* %2520, i64 1, i64 2)
  %2522 = inttoptr i64 %2521 to %nyx_string*
  %2523 = alloca %nyx_string*
  store %nyx_string* %2522, %nyx_string** %2523
  %2524 = load { i64, i8* }*, { i64, i8* }** %2512
  %2525 = call i64 @nyx_array_get_checked({ i64, i8* }* %2524, i64 3, i64 2)
  %2526 = inttoptr i64 %2525 to %nyx_string*
  %2527 = alloca %nyx_string*
  store %nyx_string* %2526, %nyx_string** %2527
  %2528 = load { i64, i8* }*, { i64, i8* }** %2512
  %2529 = call i64 @nyx_array_get_checked({ i64, i8* }* %2528, i64 4, i64 2)
  %2530 = inttoptr i64 %2529 to %nyx_string*
  %2531 = alloca %nyx_string*
  store %nyx_string* %2530, %nyx_string** %2531
  %2532 = load %nyx_string*, %nyx_string** %2523
  %2533 = load %nyx_string*, %nyx_string** %2465
  %2534 = call i1 @nyx_string_equals(%nyx_string* %2532, %nyx_string* %2533)
  %2535 = xor i1 %2534, true
  br i1 %2535, label %then457, label %else458
then457:
  %2536 = load i8*, i8** %2453
  %2537 = load %nyx_string*, %nyx_string** %2523
  %2538 = load %nyx_string*, %nyx_string** %2468
  %2539 = call i8* @nyx_string_to_cstr(%nyx_string* %2537)
  %2540 = call i8* @nyx_string_to_cstr(%nyx_string* %2538)
  call void @nyx_map_insert_str(i8* %2536, i8* %2539, i8* %2540)
  br label %merge459
else458:
  br label %merge459
merge459:
  %2541 = load i8*, i8** %2317
  %2542 = load %nyx_string*, %nyx_string** %2481
  %2543 = call i8* @nyx_string_to_cstr(%nyx_string* %2542)
  %2544 = call i1 @nyx_map_contains_str(i8* %2541, i8* %2543)
  br i1 %2544, label %then460, label %else461
then460:
  %2545 = load i8*, i8** %2447
  %2546 = load %nyx_string*, %nyx_string** %2519
  %2547 = load %nyx_string*, %nyx_string** %2468
  %2548 = call i8* @nyx_string_to_cstr(%nyx_string* %2546)
  %2549 = call i8* @nyx_string_to_cstr(%nyx_string* %2547)
  call void @nyx_map_insert_str(i8* %2545, i8* %2548, i8* %2549)
  %2550 = alloca i1
  store i1 false, i1* %2550
  %2551 = load %nyx_string*, %nyx_string** %2531
  %2552 = load %nyx_string*, %nyx_string** %2471
  %2553 = call i1 @nyx_string_equals(%nyx_string* %2551, %nyx_string* %2552)
  br i1 %2553, label %sc_and_rhs463, label %sc_and_end464
sc_and_rhs463:
  %2554 = load i8*, i8** %2381
  %2555 = load %nyx_string*, %nyx_string** %2519
  %2556 = call i8* @nyx_string_to_cstr(%nyx_string* %2555)
  %2557 = call i1 @nyx_map_contains_str(i8* %2554, i8* %2556)
  store i1 %2557, i1* %2550
  br label %sc_and_end464
sc_and_end464:
  %2558 = load i1, i1* %2550
  br i1 %2558, label %then465, label %else466
then465:
  %2559 = load i8*, i8** %2451
  %2560 = load %nyx_string*, %nyx_string** %2527
  %2561 = load %nyx_string*, %nyx_string** %2468
  %2562 = call i8* @nyx_string_to_cstr(%nyx_string* %2560)
  %2563 = call i8* @nyx_string_to_cstr(%nyx_string* %2561)
  call void @nyx_map_insert_str(i8* %2559, i8* %2562, i8* %2563)
  br label %merge467
else466:
  br label %merge467
merge467:
  br label %merge462
else461:
  %2564 = load i8*, i8** %2449
  %2565 = load %nyx_string*, %nyx_string** %2519
  %2566 = load %nyx_string*, %nyx_string** %2468
  %2567 = call i8* @nyx_string_to_cstr(%nyx_string* %2565)
  %2568 = call i8* @nyx_string_to_cstr(%nyx_string* %2566)
  call void @nyx_map_insert_str(i8* %2564, i8* %2567, i8* %2568)
  br label %merge462
merge462:
  br label %merge456
else455:
  br label %merge456
merge456:
  %2569 = load i64, i64* %2499
  %2570 = add i64 %2569, 1
  store i64 %2570, i64* %2499
  br label %while_cond451
while_end453:
  br label %merge450
else449:
  br label %merge450
merge450:
  %2571 = load i64, i64* %2320
  %2572 = add i64 %2571, 1
  store i64 %2572, i64* %2320
  br label %while_cond445
while_end447:
  %2573 = call { i64, i8* }* @cov_src_modules()
  %2574 = alloca { i64, i8* }*
  store { i64, i8* }* %2573, { i64, i8* }** %2574
  %2575 = load { i64, i8* }*, { i64, i8* }** %2574
  %2576 = call i64 @nyx_array_length({ i64, i8* }* %2575)
  %2577 = icmp eq i64 %2576, 0
  br i1 %2577, label %then468, label %else469
then468:
  %2578 = getelementptr [27 x i8], [27 x i8]* @.str270, i32 0, i32 0
  %2579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2578, i64 26)
  %2580 = call i8* @nyx_string_to_cstr(%nyx_string* %2579)
  call void @nyx_print_string(i8* %2580)
  ret i64 0
else469:
  br label %merge470
merge470:
  %2581 = load %nyx_string*, %nyx_string** %2300
  %2582 = load %nyx_string*, %nyx_string** %2305
  %2583 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2584 = load { i64, i8* }*, { i64, i8* }** %2574
  %2585 = call %nyx_string* @cov_universe(%nyx_string* %2581, %nyx_string* %2582, %nyx_string* %2583, { i64, i8* }* %2584)
  %2586 = alloca %nyx_string*
  store %nyx_string* %2585, %nyx_string** %2586
  %2587 = load %nyx_string*, %nyx_string** %2586
  %2588 = call i8* @nyx_string_to_cstr(%nyx_string* %2587)
  %2589 = call i1 @nyx_file_exists(i8* %2588)
  %2590 = xor i1 %2589, true
  br i1 %2590, label %then471, label %else472
then471:
  %2591 = getelementptr [68 x i8], [68 x i8]* @.str271, i32 0, i32 0
  %2592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2591, i64 67)
  %2593 = call i8* @nyx_string_to_cstr(%nyx_string* %2592)
  call void @nyx_print_string(i8* %2593)
  %2594 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2595 = getelementptr [14 x i8], [14 x i8]* @.str272, i32 0, i32 0
  %2596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2595, i64 13)
  %2597 = call %nyx_string* @nyx_string_concat(%nyx_string* %2594, %nyx_string* %2596)
  %2598 = call i8* @nyx_string_to_cstr(%nyx_string* %2597)
  %2599 = call i1 @nyx_file_exists(i8* %2598)
  br i1 %2599, label %then474, label %else475
then474:
  %2600 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2601 = getelementptr [14 x i8], [14 x i8]* @.str273, i32 0, i32 0
  %2602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2601, i64 13)
  %2603 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2602)
  %2604 = call i8* @nyx_string_to_cstr(%nyx_string* %2603)
  %2605 = call %nyx_string* @nyx_read_file(i8* %2604)
  %2606 = call i8* @nyx_string_to_cstr(%nyx_string* %2605)
  call void @nyx_print_string(i8* %2606)
  br label %merge476
else475:
  br label %merge476
merge476:
  ret i64 1
else472:
  br label %merge473
merge473:
  %2607 = load %nyx_string*, %nyx_string** %2586
  %2608 = call i8* @nyx_string_to_cstr(%nyx_string* %2607)
  %2609 = call %nyx_string* @nyx_read_file(i8* %2608)
  %2610 = getelementptr [2 x i8], [2 x i8]* @.str274, i32 0, i32 0
  %2611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2610, i64 1)
  %2612 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2609, %nyx_string* %2611)
  %2613 = alloca { i64, i8* }*
  store { i64, i8* }* %2612, { i64, i8* }** %2613
  %2614 = call { i64, i8* }* @nyx_array_new_ptr()
  %2615 = alloca { i64, i8* }*
  store { i64, i8* }* %2614, { i64, i8* }** %2615
  %2616 = alloca i64
  store i64 0, i64* %2616
  %2617 = getelementptr [3 x i8], [3 x i8]* @.str275, i32 0, i32 0
  %2618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2617, i64 2)
  %2619 = alloca %nyx_string*
  store %nyx_string* %2618, %nyx_string** %2619
  %2620 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2620, i64 6)
  %2622 = alloca %nyx_string*
  store %nyx_string* %2621, %nyx_string** %2622
  %2623 = getelementptr [6 x i8], [6 x i8]* @.str277, i32 0, i32 0
  %2624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2623, i64 5)
  %2625 = alloca %nyx_string*
  store %nyx_string* %2624, %nyx_string** %2625
  %2626 = getelementptr [9 x i8], [9 x i8]* @.str278, i32 0, i32 0
  %2627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2626, i64 8)
  %2628 = alloca %nyx_string*
  store %nyx_string* %2627, %nyx_string** %2628
  %2629 = getelementptr [5 x i8], [5 x i8]* @.str279, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2629, i64 4)
  %2631 = alloca %nyx_string*
  store %nyx_string* %2630, %nyx_string** %2631
  %2632 = getelementptr [5 x i8], [5 x i8]* @.str280, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2632, i64 4)
  %2634 = alloca %nyx_string*
  store %nyx_string* %2633, %nyx_string** %2634
  %2635 = getelementptr [3 x i8], [3 x i8]* @.str281, i32 0, i32 0
  %2636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2635, i64 2)
  %2637 = alloca %nyx_string*
  store %nyx_string* %2636, %nyx_string** %2637
  %2638 = getelementptr [3 x i8], [3 x i8]* @.str282, i32 0, i32 0
  %2639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2638, i64 2)
  %2640 = alloca %nyx_string*
  store %nyx_string* %2639, %nyx_string** %2640
  %2641 = getelementptr [10 x i8], [10 x i8]* @.str283, i32 0, i32 0
  %2642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2641, i64 9)
  %2643 = alloca %nyx_string*
  store %nyx_string* %2642, %nyx_string** %2643
  %2644 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2644, i64 4)
  %2646 = alloca %nyx_string*
  store %nyx_string* %2645, %nyx_string** %2646
  %2647 = getelementptr [2 x i8], [2 x i8]* @.str285, i32 0, i32 0
  %2648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2647, i64 1)
  %2649 = alloca %nyx_string*
  store %nyx_string* %2648, %nyx_string** %2649
  %2650 = call i8* @llvm.stacksave()
  br label %while_cond477
while_cond477:
  %2651 = load i64, i64* %2616
  %2652 = load { i64, i8* }*, { i64, i8* }** %2613
  %2653 = call i64 @nyx_array_length({ i64, i8* }* %2652)
  %2654 = icmp slt i64 %2651, %2653
  br i1 %2654, label %while_body478, label %while_end479
while_body478:
  call void @llvm.stackrestore(i8* %2650)
  %2655 = load { i64, i8* }*, { i64, i8* }** %2613
  %2656 = load i64, i64* %2616
  %2657 = call i64 @nyx_array_get_checked({ i64, i8* }* %2655, i64 %2656, i64 2)
  %2658 = inttoptr i64 %2657 to %nyx_string*
  %2659 = alloca %nyx_string*
  store %nyx_string* %2658, %nyx_string** %2659
  %2660 = load %nyx_string*, %nyx_string** %2659
  %2661 = call { i64, i8* }* @cov_fields(%nyx_string* %2660)
  %2662 = alloca { i64, i8* }*
  store { i64, i8* }* %2661, { i64, i8* }** %2662
  %2663 = load { i64, i8* }*, { i64, i8* }** %2662
  %2664 = call i64 @nyx_array_length({ i64, i8* }* %2663)
  %2665 = icmp sge i64 %2664, 5
  br i1 %2665, label %then480, label %else481
then480:
  %2666 = load { i64, i8* }*, { i64, i8* }** %2662
  %2667 = call i64 @nyx_array_get_checked({ i64, i8* }* %2666, i64 0, i64 2)
  %2668 = inttoptr i64 %2667 to %nyx_string*
  %2669 = alloca %nyx_string*
  store %nyx_string* %2668, %nyx_string** %2669
  %2670 = load { i64, i8* }*, { i64, i8* }** %2662
  %2671 = call i64 @nyx_array_get_checked({ i64, i8* }* %2670, i64 1, i64 2)
  %2672 = inttoptr i64 %2671 to %nyx_string*
  %2673 = alloca %nyx_string*
  store %nyx_string* %2672, %nyx_string** %2673
  %2674 = load { i64, i8* }*, { i64, i8* }** %2662
  %2675 = call i64 @nyx_array_get_checked({ i64, i8* }* %2674, i64 2, i64 2)
  %2676 = inttoptr i64 %2675 to %nyx_string*
  %2677 = alloca %nyx_string*
  store %nyx_string* %2676, %nyx_string** %2677
  %2678 = load { i64, i8* }*, { i64, i8* }** %2662
  %2679 = call i64 @nyx_array_get_checked({ i64, i8* }* %2678, i64 3, i64 2)
  %2680 = inttoptr i64 %2679 to %nyx_string*
  %2681 = alloca %nyx_string*
  store %nyx_string* %2680, %nyx_string** %2681
  %2682 = load { i64, i8* }*, { i64, i8* }** %2662
  %2683 = call i64 @nyx_array_get_checked({ i64, i8* }* %2682, i64 4, i64 2)
  %2684 = inttoptr i64 %2683 to %nyx_string*
  %2685 = alloca %nyx_string*
  store %nyx_string* %2684, %nyx_string** %2685
  %2686 = alloca i1
  store i1 true, i1* %2686
  %2687 = alloca i1
  store i1 true, i1* %2687
  %2688 = alloca i1
  store i1 true, i1* %2688
  %2689 = load %nyx_string*, %nyx_string** %2685
  %2690 = load %nyx_string*, %nyx_string** %2619
  %2691 = call i1 @nyx_string_equals(%nyx_string* %2689, %nyx_string* %2690)
  br i1 %2691, label %sc_or_end484, label %sc_or_rhs483
sc_or_rhs483:
  %2692 = load %nyx_string*, %nyx_string** %2685
  %2693 = load %nyx_string*, %nyx_string** %2622
  %2694 = call i1 @nyx_string_equals(%nyx_string* %2692, %nyx_string* %2693)
  store i1 %2694, i1* %2688
  br label %sc_or_end484
sc_or_end484:
  %2695 = load i1, i1* %2688
  br i1 %2695, label %sc_or_end486, label %sc_or_rhs485
sc_or_rhs485:
  %2696 = load %nyx_string*, %nyx_string** %2685
  %2697 = load %nyx_string*, %nyx_string** %2625
  %2698 = call i1 @nyx_string_equals(%nyx_string* %2696, %nyx_string* %2697)
  store i1 %2698, i1* %2687
  br label %sc_or_end486
sc_or_end486:
  %2699 = load i1, i1* %2687
  br i1 %2699, label %sc_or_end488, label %sc_or_rhs487
sc_or_rhs487:
  %2700 = load %nyx_string*, %nyx_string** %2685
  %2701 = load %nyx_string*, %nyx_string** %2628
  %2702 = call i1 @nyx_string_equals(%nyx_string* %2700, %nyx_string* %2701)
  store i1 %2702, i1* %2686
  br label %sc_or_end488
sc_or_end488:
  %2703 = load i1, i1* %2686
  %2704 = alloca i1
  store i1 %2703, i1* %2704
  %2705 = alloca i1
  store i1 false, i1* %2705
  %2706 = alloca i1
  store i1 false, i1* %2706
  %2707 = load i1, i1* %2704
  br i1 %2707, label %sc_and_rhs489, label %sc_and_end490
sc_and_rhs489:
  %2708 = load %nyx_string*, %nyx_string** %2673
  %2709 = load %nyx_string*, %nyx_string** %2631
  %2710 = call i1 @nyx_string_starts_with(%nyx_string* %2708, %nyx_string* %2709)
  store i1 %2710, i1* %2706
  br label %sc_and_end490
sc_and_end490:
  %2711 = load i1, i1* %2706
  br i1 %2711, label %sc_and_rhs491, label %sc_and_end492
sc_and_rhs491:
  %2712 = load %nyx_string*, %nyx_string** %2681
  %2713 = load %nyx_string*, %nyx_string** %2634
  %2714 = call i1 @nyx_string_equals(%nyx_string* %2712, %nyx_string* %2713)
  %2715 = xor i1 %2714, true
  store i1 %2715, i1* %2705
  br label %sc_and_end492
sc_and_end492:
  %2716 = load i1, i1* %2705
  br i1 %2716, label %then493, label %else494
then493:
  %2717 = load i8*, i8** %2381
  %2718 = load %nyx_string*, %nyx_string** %2669
  %2719 = call i8* @nyx_string_to_cstr(%nyx_string* %2718)
  %2720 = call i1 @nyx_map_contains_str(i8* %2717, i8* %2719)
  %2721 = alloca i1
  store i1 %2720, i1* %2721
  %2722 = load %nyx_string*, %nyx_string** %2685
  %2723 = load %nyx_string*, %nyx_string** %2628
  %2724 = call i1 @nyx_string_equals(%nyx_string* %2722, %nyx_string* %2723)
  br i1 %2724, label %then496, label %else497
then496:
  %2725 = load i8*, i8** %2451
  %2726 = load %nyx_string*, %nyx_string** %2669
  %2727 = call i8* @nyx_string_to_cstr(%nyx_string* %2726)
  %2728 = call i1 @nyx_map_contains_str(i8* %2725, i8* %2727)
  store i1 %2728, i1* %2721
  br label %merge498
else497:
  br label %merge498
merge498:
  %2729 = load %nyx_string*, %nyx_string** %2637
  %2730 = alloca %nyx_string*
  store %nyx_string* %2729, %nyx_string** %2730
  %2731 = load i1, i1* %2721
  br i1 %2731, label %then499, label %else500
then499:
  %2732 = load %nyx_string*, %nyx_string** %2640
  store %nyx_string* %2732, %nyx_string** %2730
  br label %merge501
else500:
  %2733 = alloca i1
  store i1 false, i1* %2733
  %2734 = load i8*, i8** %2447
  %2735 = load %nyx_string*, %nyx_string** %2669
  %2736 = call i8* @nyx_string_to_cstr(%nyx_string* %2735)
  %2737 = call i1 @nyx_map_contains_str(i8* %2734, i8* %2736)
  %2738 = xor i1 %2737, true
  br i1 %2738, label %sc_and_rhs502, label %sc_and_end503
sc_and_rhs502:
  %2739 = load i8*, i8** %2449
  %2740 = load %nyx_string*, %nyx_string** %2669
  %2741 = call i8* @nyx_string_to_cstr(%nyx_string* %2740)
  %2742 = call i1 @nyx_map_contains_str(i8* %2739, i8* %2741)
  store i1 %2742, i1* %2733
  br label %sc_and_end503
sc_and_end503:
  %2743 = load i1, i1* %2733
  br i1 %2743, label %then504, label %else505
then504:
  %2744 = load %nyx_string*, %nyx_string** %2643
  store %nyx_string* %2744, %nyx_string** %2730
  br label %merge506
else505:
  br label %merge506
merge506:
  br label %merge501
merge501:
  %2745 = load { i64, i8* }*, { i64, i8* }** %2615
  %2746 = load %nyx_string*, %nyx_string** %2673
  %2747 = load %nyx_string*, %nyx_string** %2646
  %2748 = call %nyx_string* @nyx_string_concat(%nyx_string* %2746, %nyx_string* %2747)
  %2749 = load %nyx_string*, %nyx_string** %2677
  %2750 = call i64 @nyx_string_to_int(%nyx_string* %2749)
  %2751 = call %nyx_string* @cov_pad(i64 %2750)
  %2752 = call %nyx_string* @nyx_string_concat(%nyx_string* %2748, %nyx_string* %2751)
  %2753 = load %nyx_string*, %nyx_string** %2649
  %2754 = call %nyx_string* @nyx_string_concat(%nyx_string* %2752, %nyx_string* %2753)
  %2755 = load %nyx_string*, %nyx_string** %2681
  %2756 = call %nyx_string* @nyx_string_concat(%nyx_string* %2754, %nyx_string* %2755)
  %2757 = load %nyx_string*, %nyx_string** %2649
  %2758 = call %nyx_string* @nyx_string_concat(%nyx_string* %2756, %nyx_string* %2757)
  %2759 = load %nyx_string*, %nyx_string** %2730
  %2760 = call %nyx_string* @nyx_string_concat(%nyx_string* %2758, %nyx_string* %2759)
  %2761 = load %nyx_string*, %nyx_string** %2649
  %2762 = call %nyx_string* @nyx_string_concat(%nyx_string* %2760, %nyx_string* %2761)
  %2763 = load %nyx_string*, %nyx_string** %2673
  %2764 = call %nyx_string* @nyx_string_concat(%nyx_string* %2762, %nyx_string* %2763)
  %2765 = ptrtoint %nyx_string* %2764 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2745, i64 %2765, i64 2)
  br label %merge495
else494:
  br label %merge495
merge495:
  br label %merge482
else481:
  br label %merge482
merge482:
  %2766 = load i64, i64* %2616
  %2767 = add i64 %2766, 1
  store i64 %2767, i64* %2616
  br label %while_cond477
while_end479:
  %2768 = load { i64, i8* }*, { i64, i8* }** %2615
  %2769 = call { i64, i8* }* @sort_str({ i64, i8* }* %2768)
  %2770 = alloca { i64, i8* }*
  store { i64, i8* }* %2769, { i64, i8* }** %2770
  %2771 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %2772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2771, i64 0)
  %2773 = alloca %nyx_string*
  store %nyx_string* %2772, %nyx_string** %2773
  %2774 = alloca i64
  store i64 0, i64* %2774
  %2775 = alloca i64
  store i64 0, i64* %2775
  %2776 = alloca i64
  store i64 0, i64* %2776
  %2777 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2777, i64 0)
  %2779 = alloca %nyx_string*
  store %nyx_string* %2778, %nyx_string** %2779
  %2780 = getelementptr [10 x i8], [10 x i8]* @.str288, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2780, i64 9)
  %2782 = alloca %nyx_string*
  store %nyx_string* %2781, %nyx_string** %2782
  %2783 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2783, i64 1)
  %2785 = alloca %nyx_string*
  store %nyx_string* %2784, %nyx_string** %2785
  %2786 = getelementptr [3 x i8], [3 x i8]* @.str290, i32 0, i32 0
  %2787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2786, i64 2)
  %2788 = alloca %nyx_string*
  store %nyx_string* %2787, %nyx_string** %2788
  %2789 = getelementptr [2 x i8], [2 x i8]* @.str291, i32 0, i32 0
  %2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2789, i64 1)
  %2791 = alloca %nyx_string*
  store %nyx_string* %2790, %nyx_string** %2791
  %2792 = getelementptr [5 x i8], [5 x i8]* @.str292, i32 0, i32 0
  %2793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2792, i64 4)
  %2794 = alloca %nyx_string*
  store %nyx_string* %2793, %nyx_string** %2794
  %2795 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2795, i64 1)
  %2797 = alloca %nyx_string*
  store %nyx_string* %2796, %nyx_string** %2797
  %2798 = getelementptr [2 x i8], [2 x i8]* @.str294, i32 0, i32 0
  %2799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2798, i64 1)
  %2800 = alloca %nyx_string*
  store %nyx_string* %2799, %nyx_string** %2800
  %2801 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2801, i64 3)
  %2803 = alloca %nyx_string*
  store %nyx_string* %2802, %nyx_string** %2803
  %2804 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2804, i64 1)
  %2806 = alloca %nyx_string*
  store %nyx_string* %2805, %nyx_string** %2806
  %2807 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2807, i64 1)
  %2809 = alloca %nyx_string*
  store %nyx_string* %2808, %nyx_string** %2809
  %2810 = getelementptr [6 x i8], [6 x i8]* @.str298, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2810, i64 5)
  %2812 = alloca %nyx_string*
  store %nyx_string* %2811, %nyx_string** %2812
  %2813 = getelementptr [3 x i8], [3 x i8]* @.str299, i32 0, i32 0
  %2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2813, i64 2)
  %2815 = alloca %nyx_string*
  store %nyx_string* %2814, %nyx_string** %2815
  %2816 = getelementptr [3 x i8], [3 x i8]* @.str300, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2816, i64 2)
  %2818 = alloca %nyx_string*
  store %nyx_string* %2817, %nyx_string** %2818
  %2819 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2819, i64 1)
  %2821 = alloca %nyx_string*
  store %nyx_string* %2820, %nyx_string** %2821
  %2822 = getelementptr [10 x i8], [10 x i8]* @.str302, i32 0, i32 0
  %2823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2822, i64 9)
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = getelementptr [29 x i8], [29 x i8]* @.str303, i32 0, i32 0
  %2826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2825, i64 28)
  %2827 = alloca %nyx_string*
  store %nyx_string* %2826, %nyx_string** %2827
  %2828 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %2829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2828, i64 2)
  %2830 = alloca %nyx_string*
  store %nyx_string* %2829, %nyx_string** %2830
  %2831 = getelementptr [38 x i8], [38 x i8]* @.str305, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2831, i64 37)
  %2833 = alloca %nyx_string*
  store %nyx_string* %2832, %nyx_string** %2833
  %2834 = getelementptr [4 x i8], [4 x i8]* @.str306, i32 0, i32 0
  %2835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2834, i64 3)
  %2836 = alloca %nyx_string*
  store %nyx_string* %2835, %nyx_string** %2836
  %2837 = getelementptr [5 x i8], [5 x i8]* @.str307, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2837, i64 4)
  %2839 = alloca %nyx_string*
  store %nyx_string* %2838, %nyx_string** %2839
  %2840 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %2841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2840, i64 5)
  %2842 = alloca %nyx_string*
  store %nyx_string* %2841, %nyx_string** %2842
  %2843 = getelementptr [16 x i8], [16 x i8]* @.str309, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2843, i64 15)
  %2845 = alloca %nyx_string*
  store %nyx_string* %2844, %nyx_string** %2845
  %2846 = call i8* @llvm.stacksave()
  br label %while_cond507
while_cond507:
  %2847 = load i64, i64* %2776
  %2848 = load { i64, i8* }*, { i64, i8* }** %2770
  %2849 = call i64 @nyx_array_length({ i64, i8* }* %2848)
  %2850 = icmp slt i64 %2847, %2849
  br i1 %2850, label %while_body508, label %while_end509
while_body508:
  call void @llvm.stackrestore(i8* %2846)
  %2851 = load { i64, i8* }*, { i64, i8* }** %2770
  %2852 = load i64, i64* %2776
  %2853 = call i64 @nyx_array_get_checked({ i64, i8* }* %2851, i64 %2852, i64 2)
  %2854 = inttoptr i64 %2853 to %nyx_string*
  %2855 = alloca %nyx_string*
  store %nyx_string* %2854, %nyx_string** %2855
  %2856 = load %nyx_string*, %nyx_string** %2855
  %2857 = call { i64, i8* }* @cov_fields(%nyx_string* %2856)
  %2858 = alloca { i64, i8* }*
  store { i64, i8* }* %2857, { i64, i8* }** %2858
  %2859 = load { i64, i8* }*, { i64, i8* }** %2858
  %2860 = call i64 @nyx_array_get_checked({ i64, i8* }* %2859, i64 0, i64 2)
  %2861 = inttoptr i64 %2860 to %nyx_string*
  %2862 = alloca %nyx_string*
  store %nyx_string* %2861, %nyx_string** %2862
  %2863 = load { i64, i8* }*, { i64, i8* }** %2858
  %2864 = call i64 @nyx_array_get_checked({ i64, i8* }* %2863, i64 4, i64 2)
  %2865 = inttoptr i64 %2864 to %nyx_string*
  %2866 = alloca %nyx_string*
  store %nyx_string* %2865, %nyx_string** %2866
  %2867 = alloca i64
  store i64 0, i64* %2867
  %2868 = alloca i64
  store i64 0, i64* %2868
  %2869 = alloca i64
  store i64 0, i64* %2869
  %2870 = call { i64, i8* }* @nyx_array_new_ptr()
  %2871 = alloca { i64, i8* }*
  store { i64, i8* }* %2870, { i64, i8* }** %2871
  %2872 = load %nyx_string*, %nyx_string** %2779
  %2873 = alloca %nyx_string*
  store %nyx_string* %2872, %nyx_string** %2873
  %2874 = load %nyx_string*, %nyx_string** %2779
  %2875 = alloca %nyx_string*
  store %nyx_string* %2874, %nyx_string** %2875
  %2876 = load i64, i64* %2776
  %2877 = alloca i64
  store i64 %2876, i64* %2877
  %2878 = alloca i1
  store i1 1, i1* %2878
  %2879 = call i8* @llvm.stacksave()
  br label %while_cond510
while_cond510:
  %2880 = alloca i1
  store i1 false, i1* %2880
  %2881 = load i64, i64* %2877
  %2882 = load { i64, i8* }*, { i64, i8* }** %2770
  %2883 = call i64 @nyx_array_length({ i64, i8* }* %2882)
  %2884 = icmp slt i64 %2881, %2883
  br i1 %2884, label %sc_and_rhs513, label %sc_and_end514
sc_and_rhs513:
  %2885 = load i1, i1* %2878
  store i1 %2885, i1* %2880
  br label %sc_and_end514
sc_and_end514:
  %2886 = load i1, i1* %2880
  br i1 %2886, label %while_body511, label %while_end512
while_body511:
  call void @llvm.stackrestore(i8* %2879)
  %2887 = load { i64, i8* }*, { i64, i8* }** %2770
  %2888 = load i64, i64* %2877
  %2889 = call i64 @nyx_array_get_checked({ i64, i8* }* %2887, i64 %2888, i64 2)
  %2890 = inttoptr i64 %2889 to %nyx_string*
  %2891 = alloca %nyx_string*
  store %nyx_string* %2890, %nyx_string** %2891
  %2892 = load %nyx_string*, %nyx_string** %2891
  %2893 = call { i64, i8* }* @cov_fields(%nyx_string* %2892)
  %2894 = alloca { i64, i8* }*
  store { i64, i8* }* %2893, { i64, i8* }** %2894
  %2895 = load { i64, i8* }*, { i64, i8* }** %2894
  %2896 = call i64 @nyx_array_get_checked({ i64, i8* }* %2895, i64 0, i64 2)
  %2897 = inttoptr i64 %2896 to %nyx_string*
  %2898 = alloca %nyx_string*
  store %nyx_string* %2897, %nyx_string** %2898
  %2899 = load %nyx_string*, %nyx_string** %2898
  %2900 = load %nyx_string*, %nyx_string** %2862
  %2901 = call i1 @nyx_string_equals(%nyx_string* %2899, %nyx_string* %2900)
  %2902 = xor i1 %2901, true
  br i1 %2902, label %then515, label %else516
then515:
  store i1 0, i1* %2878
  br label %merge517
else516:
  %2903 = load { i64, i8* }*, { i64, i8* }** %2894
  %2904 = call i64 @nyx_array_get({ i64, i8* }* %2903, i64 1)
  %2905 = inttoptr i64 %2904 to %nyx_string*
  %2906 = call i64 @nyx_string_to_int(%nyx_string* %2905)
  %2907 = alloca i64
  store i64 %2906, i64* %2907
  %2908 = load { i64, i8* }*, { i64, i8* }** %2894
  %2909 = call i64 @nyx_array_get_checked({ i64, i8* }* %2908, i64 2, i64 2)
  %2910 = inttoptr i64 %2909 to %nyx_string*
  %2911 = alloca %nyx_string*
  store %nyx_string* %2910, %nyx_string** %2911
  %2912 = load { i64, i8* }*, { i64, i8* }** %2894
  %2913 = call i64 @nyx_array_get_checked({ i64, i8* }* %2912, i64 3, i64 2)
  %2914 = inttoptr i64 %2913 to %nyx_string*
  %2915 = alloca %nyx_string*
  store %nyx_string* %2914, %nyx_string** %2915
  %2916 = load %nyx_string*, %nyx_string** %2915
  %2917 = load %nyx_string*, %nyx_string** %2782
  %2918 = call i1 @nyx_string_equals(%nyx_string* %2916, %nyx_string* %2917)
  br i1 %2918, label %then518, label %else519
then518:
  %2919 = load i64, i64* %2869
  %2920 = add i64 %2919, 1
  store i64 %2920, i64* %2869
  br label %merge520
else519:
  %2921 = load i64, i64* %2868
  %2922 = add i64 %2921, 1
  store i64 %2922, i64* %2868
  %2923 = load %nyx_string*, %nyx_string** %2785
  %2924 = alloca %nyx_string*
  store %nyx_string* %2923, %nyx_string** %2924
  %2925 = load %nyx_string*, %nyx_string** %2915
  %2926 = load %nyx_string*, %nyx_string** %2788
  %2927 = call i1 @nyx_string_equals(%nyx_string* %2925, %nyx_string* %2926)
  br i1 %2927, label %then521, label %else522
then521:
  %2928 = load i64, i64* %2867
  %2929 = add i64 %2928, 1
  store i64 %2929, i64* %2867
  %2930 = load %nyx_string*, %nyx_string** %2791
  store %nyx_string* %2930, %nyx_string** %2924
  br label %merge523
else522:
  %2931 = load { i64, i8* }*, { i64, i8* }** %2871
  %2932 = load %nyx_string*, %nyx_string** %2794
  %2933 = load %nyx_string*, %nyx_string** %2862
  %2934 = call %nyx_string* @nyx_string_concat(%nyx_string* %2932, %nyx_string* %2933)
  %2935 = load %nyx_string*, %nyx_string** %2797
  %2936 = call %nyx_string* @nyx_string_concat(%nyx_string* %2934, %nyx_string* %2935)
  %2937 = load i64, i64* %2907
  %2938 = call %nyx_string* @nyx_string_from_int(i64 %2937)
  %2939 = call %nyx_string* @nyx_string_concat(%nyx_string* %2936, %nyx_string* %2938)
  %2940 = load %nyx_string*, %nyx_string** %2800
  %2941 = call %nyx_string* @nyx_string_concat(%nyx_string* %2939, %nyx_string* %2940)
  %2942 = load %nyx_string*, %nyx_string** %2911
  %2943 = call %nyx_string* @nyx_string_concat(%nyx_string* %2941, %nyx_string* %2942)
  %2944 = ptrtoint %nyx_string* %2943 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2931, i64 %2944, i64 2)
  br label %merge523
merge523:
  %2945 = load %nyx_string*, %nyx_string** %2873
  %2946 = load %nyx_string*, %nyx_string** %2803
  %2947 = call %nyx_string* @nyx_string_concat(%nyx_string* %2945, %nyx_string* %2946)
  %2948 = load i64, i64* %2907
  %2949 = call %nyx_string* @nyx_string_from_int(i64 %2948)
  %2950 = call %nyx_string* @nyx_string_concat(%nyx_string* %2947, %nyx_string* %2949)
  %2951 = load %nyx_string*, %nyx_string** %2806
  %2952 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2951)
  %2953 = load %nyx_string*, %nyx_string** %2911
  %2954 = call %nyx_string* @nyx_string_concat(%nyx_string* %2952, %nyx_string* %2953)
  %2955 = load %nyx_string*, %nyx_string** %2809
  %2956 = call %nyx_string* @nyx_string_concat(%nyx_string* %2954, %nyx_string* %2955)
  store %nyx_string* %2956, %nyx_string** %2873
  %2957 = load %nyx_string*, %nyx_string** %2875
  %2958 = load %nyx_string*, %nyx_string** %2812
  %2959 = call %nyx_string* @nyx_string_concat(%nyx_string* %2957, %nyx_string* %2958)
  %2960 = load %nyx_string*, %nyx_string** %2924
  %2961 = call %nyx_string* @nyx_string_concat(%nyx_string* %2959, %nyx_string* %2960)
  %2962 = load %nyx_string*, %nyx_string** %2806
  %2963 = call %nyx_string* @nyx_string_concat(%nyx_string* %2961, %nyx_string* %2962)
  %2964 = load %nyx_string*, %nyx_string** %2911
  %2965 = call %nyx_string* @nyx_string_concat(%nyx_string* %2963, %nyx_string* %2964)
  %2966 = load %nyx_string*, %nyx_string** %2809
  %2967 = call %nyx_string* @nyx_string_concat(%nyx_string* %2965, %nyx_string* %2966)
  store %nyx_string* %2967, %nyx_string** %2875
  br label %merge520
merge520:
  %2968 = load i64, i64* %2877
  %2969 = add i64 %2968, 1
  store i64 %2969, i64* %2877
  br label %merge517
merge517:
  br label %while_cond510
while_end512:
  %2970 = load %nyx_string*, %nyx_string** %2815
  %2971 = load %nyx_string*, %nyx_string** %2862
  %2972 = call %nyx_string* @nyx_string_concat(%nyx_string* %2970, %nyx_string* %2971)
  %2973 = load %nyx_string*, %nyx_string** %2818
  %2974 = call %nyx_string* @nyx_string_concat(%nyx_string* %2972, %nyx_string* %2973)
  %2975 = load i64, i64* %2867
  %2976 = call %nyx_string* @nyx_string_from_int(i64 %2975)
  %2977 = call %nyx_string* @nyx_string_concat(%nyx_string* %2974, %nyx_string* %2976)
  %2978 = load %nyx_string*, %nyx_string** %2821
  %2979 = call %nyx_string* @nyx_string_concat(%nyx_string* %2977, %nyx_string* %2978)
  %2980 = load i64, i64* %2868
  %2981 = call %nyx_string* @nyx_string_from_int(i64 %2980)
  %2982 = call %nyx_string* @nyx_string_concat(%nyx_string* %2979, %nyx_string* %2981)
  %2983 = load %nyx_string*, %nyx_string** %2824
  %2984 = call %nyx_string* @nyx_string_concat(%nyx_string* %2982, %nyx_string* %2983)
  %2985 = alloca %nyx_string*
  store %nyx_string* %2984, %nyx_string** %2985
  %2986 = load i8*, i8** %2453
  %2987 = load %nyx_string*, %nyx_string** %2866
  %2988 = call i8* @nyx_string_to_cstr(%nyx_string* %2987)
  %2989 = call i1 @nyx_map_contains_str(i8* %2986, i8* %2988)
  %2990 = xor i1 %2989, true
  br i1 %2990, label %then524, label %else525
then524:
  %2991 = load %nyx_string*, %nyx_string** %2985
  %2992 = load %nyx_string*, %nyx_string** %2827
  %2993 = call %nyx_string* @nyx_string_concat(%nyx_string* %2991, %nyx_string* %2992)
  store %nyx_string* %2993, %nyx_string** %2985
  br label %merge526
else525:
  br label %merge526
merge526:
  %2994 = load i64, i64* %2869
  %2995 = icmp sgt i64 %2994, 0
  br i1 %2995, label %then527, label %else528
then527:
  %2996 = load %nyx_string*, %nyx_string** %2985
  %2997 = load %nyx_string*, %nyx_string** %2830
  %2998 = call %nyx_string* @nyx_string_concat(%nyx_string* %2996, %nyx_string* %2997)
  %2999 = load i64, i64* %2869
  %3000 = call %nyx_string* @nyx_string_from_int(i64 %2999)
  %3001 = call %nyx_string* @nyx_string_concat(%nyx_string* %2998, %nyx_string* %3000)
  %3002 = load %nyx_string*, %nyx_string** %2833
  %3003 = call %nyx_string* @nyx_string_concat(%nyx_string* %3001, %nyx_string* %3002)
  store %nyx_string* %3003, %nyx_string** %2985
  br label %merge529
else528:
  br label %merge529
merge529:
  %3004 = load %nyx_string*, %nyx_string** %2985
  %3005 = call i8* @nyx_string_to_cstr(%nyx_string* %3004)
  call void @nyx_print_string(i8* %3005)
  %3006 = alloca i64
  store i64 0, i64* %3006
  %3007 = call i8* @llvm.stacksave()
  br label %while_cond530
while_cond530:
  %3008 = load i64, i64* %3006
  %3009 = load { i64, i8* }*, { i64, i8* }** %2871
  %3010 = call i64 @nyx_array_length({ i64, i8* }* %3009)
  %3011 = icmp slt i64 %3008, %3010
  br i1 %3011, label %while_body531, label %while_end532
while_body531:
  call void @llvm.stackrestore(i8* %3007)
  %3012 = load { i64, i8* }*, { i64, i8* }** %2871
  %3013 = load i64, i64* %3006
  %3014 = call i64 @nyx_array_get_checked({ i64, i8* }* %3012, i64 %3013, i64 2)
  %3015 = inttoptr i64 %3014 to %nyx_string*
  %3016 = alloca %nyx_string*
  store %nyx_string* %3015, %nyx_string** %3016
  %3017 = load %nyx_string*, %nyx_string** %3016
  %3018 = call i8* @nyx_string_to_cstr(%nyx_string* %3017)
  call void @nyx_print_string(i8* %3018)
  %3019 = load i64, i64* %3006
  %3020 = add i64 %3019, 1
  store i64 %3020, i64* %3006
  br label %while_cond530
while_end532:
  %3021 = load i64, i64* %2774
  %3022 = load i64, i64* %2867
  %3023 = add i64 %3021, %3022
  store i64 %3023, i64* %2774
  %3024 = load i64, i64* %2775
  %3025 = load i64, i64* %2868
  %3026 = add i64 %3024, %3025
  store i64 %3026, i64* %2775
  %3027 = load %nyx_string*, %nyx_string** %2773
  %3028 = load %nyx_string*, %nyx_string** %2836
  %3029 = call %nyx_string* @nyx_string_concat(%nyx_string* %3027, %nyx_string* %3028)
  %3030 = load %nyx_string*, %nyx_string** %2862
  %3031 = call %nyx_string* @nyx_string_concat(%nyx_string* %3029, %nyx_string* %3030)
  %3032 = load %nyx_string*, %nyx_string** %2809
  %3033 = call %nyx_string* @nyx_string_concat(%nyx_string* %3031, %nyx_string* %3032)
  %3034 = load %nyx_string*, %nyx_string** %2873
  %3035 = call %nyx_string* @nyx_string_concat(%nyx_string* %3033, %nyx_string* %3034)
  %3036 = load %nyx_string*, %nyx_string** %2875
  %3037 = call %nyx_string* @nyx_string_concat(%nyx_string* %3035, %nyx_string* %3036)
  %3038 = load %nyx_string*, %nyx_string** %2839
  %3039 = call %nyx_string* @nyx_string_concat(%nyx_string* %3037, %nyx_string* %3038)
  %3040 = load i64, i64* %2868
  %3041 = call %nyx_string* @nyx_string_from_int(i64 %3040)
  %3042 = call %nyx_string* @nyx_string_concat(%nyx_string* %3039, %nyx_string* %3041)
  %3043 = load %nyx_string*, %nyx_string** %2842
  %3044 = call %nyx_string* @nyx_string_concat(%nyx_string* %3042, %nyx_string* %3043)
  %3045 = load i64, i64* %2867
  %3046 = call %nyx_string* @nyx_string_from_int(i64 %3045)
  %3047 = call %nyx_string* @nyx_string_concat(%nyx_string* %3044, %nyx_string* %3046)
  %3048 = load %nyx_string*, %nyx_string** %2845
  %3049 = call %nyx_string* @nyx_string_concat(%nyx_string* %3047, %nyx_string* %3048)
  store %nyx_string* %3049, %nyx_string** %2773
  %3050 = load i64, i64* %2877
  store i64 %3050, i64* %2776
  br label %while_cond507
while_end509:
  %3051 = load { i64, i8* }*, { i64, i8* }** %2319
  %3052 = call i64 @nyx_array_length({ i64, i8* }* %3051)
  %3053 = icmp sgt i64 %3052, 0
  br i1 %3053, label %then533, label %else534
then533:
  %3054 = getelementptr [70 x i8], [70 x i8]* @.str310, i32 0, i32 0
  %3055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3054, i64 69)
  %3056 = call i8* @nyx_string_to_cstr(%nyx_string* %3055)
  call void @nyx_print_string(i8* %3056)
  %3057 = alloca i64
  store i64 0, i64* %3057
  %3058 = getelementptr [5 x i8], [5 x i8]* @.str311, i32 0, i32 0
  %3059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3058, i64 4)
  %3060 = alloca %nyx_string*
  store %nyx_string* %3059, %nyx_string** %3060
  %3061 = call i8* @llvm.stacksave()
  br label %while_cond536
while_cond536:
  %3062 = load i64, i64* %3057
  %3063 = load { i64, i8* }*, { i64, i8* }** %2319
  %3064 = call i64 @nyx_array_length({ i64, i8* }* %3063)
  %3065 = icmp slt i64 %3062, %3064
  br i1 %3065, label %while_body537, label %while_end538
while_body537:
  call void @llvm.stackrestore(i8* %3061)
  %3066 = load { i64, i8* }*, { i64, i8* }** %2319
  %3067 = load i64, i64* %3057
  %3068 = call i64 @nyx_array_get_checked({ i64, i8* }* %3066, i64 %3067, i64 2)
  %3069 = inttoptr i64 %3068 to %nyx_string*
  %3070 = alloca %nyx_string*
  store %nyx_string* %3069, %nyx_string** %3070
  %3071 = load %nyx_string*, %nyx_string** %3060
  %3072 = load %nyx_string*, %nyx_string** %3070
  %3073 = call %nyx_string* @nyx_string_concat(%nyx_string* %3071, %nyx_string* %3072)
  %3074 = call i8* @nyx_string_to_cstr(%nyx_string* %3073)
  call void @nyx_print_string(i8* %3074)
  %3075 = load i64, i64* %3057
  %3076 = add i64 %3075, 1
  store i64 %3076, i64* %3057
  br label %while_cond536
while_end538:
  br label %merge535
else534:
  br label %merge535
merge535:
  %3077 = getelementptr [10 x i8], [10 x i8]* @.str312, i32 0, i32 0
  %3078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3077, i64 9)
  %3079 = load i64, i64* %2774
  %3080 = call %nyx_string* @nyx_string_from_int(i64 %3079)
  %3081 = call %nyx_string* @nyx_string_concat(%nyx_string* %3078, %nyx_string* %3080)
  %3082 = getelementptr [2 x i8], [2 x i8]* @.str313, i32 0, i32 0
  %3083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3082, i64 1)
  %3084 = call %nyx_string* @nyx_string_concat(%nyx_string* %3081, %nyx_string* %3083)
  %3085 = load i64, i64* %2775
  %3086 = call %nyx_string* @nyx_string_from_int(i64 %3085)
  %3087 = call %nyx_string* @nyx_string_concat(%nyx_string* %3084, %nyx_string* %3086)
  %3088 = getelementptr [20 x i8], [20 x i8]* @.str314, i32 0, i32 0
  %3089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3088, i64 19)
  %3090 = call %nyx_string* @nyx_string_concat(%nyx_string* %3087, %nyx_string* %3089)
  %3091 = call i8* @nyx_string_to_cstr(%nyx_string* %3090)
  call void @nyx_print_string(i8* %3091)
  %3092 = load i1, i1* %want_lcov.ptr
  br i1 %3092, label %then539, label %else540
then539:
  %3093 = getelementptr [11 x i8], [11 x i8]* @.str315, i32 0, i32 0
  %3094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3093, i64 10)
  %3095 = load %nyx_string*, %nyx_string** %2305
  %3096 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3095)
  %3097 = getelementptr [9 x i8], [9 x i8]* @.str316, i32 0, i32 0
  %3098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3097, i64 8)
  %3099 = call %nyx_string* @nyx_string_concat(%nyx_string* %3096, %nyx_string* %3098)
  %3100 = call i8* @nyx_string_to_cstr(%nyx_string* %3099)
  %3101 = call i64 @nyx_exec_code(i8* %3100)
  %3102 = load %nyx_string*, %nyx_string** %2305
  %3103 = getelementptr [22 x i8], [22 x i8]* @.str317, i32 0, i32 0
  %3104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3103, i64 21)
  %3105 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3104)
  %3106 = load %nyx_string*, %nyx_string** %2773
  %3107 = call i8* @nyx_string_to_cstr(%nyx_string* %3105)
  %3108 = call i1 @nyx_write_file_safe(i8* %3107, %nyx_string* %3106)
  %3109 = getelementptr [29 x i8], [29 x i8]* @.str318, i32 0, i32 0
  %3110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3109, i64 28)
  %3111 = call i8* @nyx_string_to_cstr(%nyx_string* %3110)
  call void @nyx_print_string(i8* %3111)
  br label %merge541
else540:
  br label %merge541
merge541:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3112 = getelementptr [115 x i8], [115 x i8]* @.str319, i32 0, i32 0
  %3113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3112, i64 114)
  %3114 = call i8* @nyx_string_to_cstr(%nyx_string* %3113)
  call void @nyx_print_string(i8* %3114)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3115 = getelementptr [5 x i8], [5 x i8]* @.str320, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3115, i64 4)
  %3117 = load %nyx_string*, %nyx_string** %nh.ptr
  %3118 = call %nyx_string* @nyx_string_concat(%nyx_string* %3116, %nyx_string* %3117)
  %3119 = getelementptr [66 x i8], [66 x i8]* @.str321, i32 0, i32 0
  %3120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3119, i64 65)
  %3121 = call %nyx_string* @nyx_string_concat(%nyx_string* %3118, %nyx_string* %3120)
  %3122 = call i8* @nyx_string_to_cstr(%nyx_string* %3121)
  %3123 = call %nyx_string* @nyx_exec(i8* %3122)
  %3124 = call %nyx_string* @nyx_string_trim(%nyx_string* %3123)
  ret %nyx_string* %3124
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3125 = getelementptr [5 x i8], [5 x i8]* @.str322, i32 0, i32 0
  %3126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3125, i64 4)
  %3127 = load %nyx_string*, %nyx_string** %nh.ptr
  %3128 = call %nyx_string* @nyx_string_concat(%nyx_string* %3126, %nyx_string* %3127)
  %3129 = getelementptr [74 x i8], [74 x i8]* @.str323, i32 0, i32 0
  %3130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3129, i64 73)
  %3131 = call %nyx_string* @nyx_string_concat(%nyx_string* %3128, %nyx_string* %3130)
  %3132 = call i8* @nyx_string_to_cstr(%nyx_string* %3131)
  %3133 = call %nyx_string* @nyx_exec(i8* %3132)
  %3134 = call %nyx_string* @nyx_string_trim(%nyx_string* %3133)
  ret %nyx_string* %3134
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3135 = getelementptr [24 x i8], [24 x i8]* @.str324, i32 0, i32 0
  %3136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3135, i64 23)
  %3137 = call i8* @nyx_string_to_cstr(%nyx_string* %3136)
  call void @nyx_print_string(i8* %3137)
  %3138 = getelementptr [9 x i8], [9 x i8]* @.str325, i32 0, i32 0
  %3139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3138, i64 8)
  %3140 = call i8* @nyx_string_to_cstr(%nyx_string* %3139)
  %3141 = call %nyx_string* @nyx_getenv(i8* %3140)
  %3142 = alloca %nyx_string*
  store %nyx_string* %3141, %nyx_string** %3142
  %3143 = load %nyx_string*, %nyx_string** %3142
  %3144 = getelementptr [9 x i8], [9 x i8]* @.str326, i32 0, i32 0
  %3145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3144, i64 8)
  %3146 = call %nyx_string* @nyx_string_concat(%nyx_string* %3143, %nyx_string* %3145)
  %3147 = call i8* @nyx_string_to_cstr(%nyx_string* %3146)
  %3148 = call %nyx_string* @nyx_read_file(i8* %3147)
  %3149 = call %nyx_string* @nyx_string_trim(%nyx_string* %3148)
  %3150 = alloca %nyx_string*
  store %nyx_string* %3149, %nyx_string** %3150
  %3151 = load %nyx_string*, %nyx_string** %3142
  %3152 = call %nyx_string* @huella_compilador(%nyx_string* %3151)
  %3153 = alloca %nyx_string*
  store %nyx_string* %3152, %nyx_string** %3153
  %3154 = load %nyx_string*, %nyx_string** %3142
  %3155 = call %nyx_string* @huella_resto(%nyx_string* %3154)
  %3156 = alloca %nyx_string*
  store %nyx_string* %3155, %nyx_string** %3156
  %3157 = getelementptr [18 x i8], [18 x i8]* @.str327, i32 0, i32 0
  %3158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3157, i64 17)
  %3159 = load %nyx_string*, %nyx_string** %3150
  %3160 = call %nyx_string* @nyx_string_concat(%nyx_string* %3158, %nyx_string* %3159)
  %3161 = getelementptr [17 x i8], [17 x i8]* @.str328, i32 0, i32 0
  %3162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3161, i64 16)
  %3163 = call %nyx_string* @nyx_string_concat(%nyx_string* %3160, %nyx_string* %3162)
  %3164 = load %nyx_string*, %nyx_string** %3153
  %3165 = call %nyx_string* @nyx_string_concat(%nyx_string* %3163, %nyx_string* %3164)
  %3166 = getelementptr [2 x i8], [2 x i8]* @.str329, i32 0, i32 0
  %3167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3166, i64 1)
  %3168 = call %nyx_string* @nyx_string_concat(%nyx_string* %3165, %nyx_string* %3167)
  %3169 = call i8* @nyx_string_to_cstr(%nyx_string* %3168)
  call void @nyx_print_string(i8* %3169)
  %3170 = call %TestConfig @load_test_config()
  %3171 = alloca %TestConfig
  store %TestConfig %3170, %TestConfig* %3171
  %3172 = call { i64, i8* }* @nyx_get_args()
  %3173 = alloca { i64, i8* }*
  store { i64, i8* }* %3172, { i64, i8* }** %3173
  %3174 = getelementptr [1 x i8], [1 x i8]* @.str330, i32 0, i32 0
  %3175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3174, i64 0)
  %3176 = alloca %nyx_string*
  store %nyx_string* %3175, %nyx_string** %3176
  %3177 = alloca i64
  store i64 1, i64* %3177
  %3178 = getelementptr [9 x i8], [9 x i8]* @.str331, i32 0, i32 0
  %3179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3178, i64 8)
  %3180 = alloca %nyx_string*
  store %nyx_string* %3179, %nyx_string** %3180
  %3181 = getelementptr [10 x i8], [10 x i8]* @.str332, i32 0, i32 0
  %3182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3181, i64 9)
  %3183 = alloca %nyx_string*
  store %nyx_string* %3182, %nyx_string** %3183
  %3184 = getelementptr [3 x i8], [3 x i8]* @.str333, i32 0, i32 0
  %3185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3184, i64 2)
  %3186 = alloca %nyx_string*
  store %nyx_string* %3185, %nyx_string** %3186
  %3187 = getelementptr [10 x i8], [10 x i8]* @.str334, i32 0, i32 0
  %3188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3187, i64 9)
  %3189 = alloca %nyx_string*
  store %nyx_string* %3188, %nyx_string** %3189
  %3190 = getelementptr [10 x i8], [10 x i8]* @.str335, i32 0, i32 0
  %3191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3190, i64 9)
  %3192 = alloca %nyx_string*
  store %nyx_string* %3191, %nyx_string** %3192
  %3193 = getelementptr [11 x i8], [11 x i8]* @.str336, i32 0, i32 0
  %3194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3193, i64 10)
  %3195 = alloca %nyx_string*
  store %nyx_string* %3194, %nyx_string** %3195
  %3196 = getelementptr [16 x i8], [16 x i8]* @.str337, i32 0, i32 0
  %3197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3196, i64 15)
  %3198 = alloca %nyx_string*
  store %nyx_string* %3197, %nyx_string** %3198
  %3199 = getelementptr [8 x i8], [8 x i8]* @.str338, i32 0, i32 0
  %3200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3199, i64 7)
  %3201 = alloca %nyx_string*
  store %nyx_string* %3200, %nyx_string** %3201
  %3202 = getelementptr [12 x i8], [12 x i8]* @.str339, i32 0, i32 0
  %3203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3202, i64 11)
  %3204 = alloca %nyx_string*
  store %nyx_string* %3203, %nyx_string** %3204
  %3205 = getelementptr [24 x i8], [24 x i8]* @.str340, i32 0, i32 0
  %3206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3205, i64 23)
  %3207 = alloca %nyx_string*
  store %nyx_string* %3206, %nyx_string** %3207
  %3208 = getelementptr [106 x i8], [106 x i8]* @.str341, i32 0, i32 0
  %3209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3208, i64 105)
  %3210 = alloca %nyx_string*
  store %nyx_string* %3209, %nyx_string** %3210
  %3211 = getelementptr [9 x i8], [9 x i8]* @.str342, i32 0, i32 0
  %3212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3211, i64 8)
  %3213 = alloca %nyx_string*
  store %nyx_string* %3212, %nyx_string** %3213
  %3214 = getelementptr [10 x i8], [10 x i8]* @.str343, i32 0, i32 0
  %3215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3214, i64 9)
  %3216 = alloca %nyx_string*
  store %nyx_string* %3215, %nyx_string** %3216
  %3217 = getelementptr [2 x i8], [2 x i8]* @.str344, i32 0, i32 0
  %3218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3217, i64 1)
  %3219 = alloca %nyx_string*
  store %nyx_string* %3218, %nyx_string** %3219
  %3220 = getelementptr [4 x i8], [4 x i8]* @.str345, i32 0, i32 0
  %3221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3220, i64 3)
  %3222 = alloca %nyx_string*
  store %nyx_string* %3221, %nyx_string** %3222
  %3223 = getelementptr [2 x i8], [2 x i8]* @.str346, i32 0, i32 0
  %3224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3223, i64 1)
  %3225 = alloca %nyx_string*
  store %nyx_string* %3224, %nyx_string** %3225
  %3226 = call i8* @llvm.stacksave()
  br label %while_cond542
while_cond542:
  %3227 = load i64, i64* %3177
  %3228 = load { i64, i8* }*, { i64, i8* }** %3173
  %3229 = call i64 @nyx_array_length({ i64, i8* }* %3228)
  %3230 = icmp slt i64 %3227, %3229
  br i1 %3230, label %while_body543, label %while_end544
while_body543:
  call void @llvm.stackrestore(i8* %3226)
  %3231 = load { i64, i8* }*, { i64, i8* }** %3173
  %3232 = load i64, i64* %3177
  %3233 = call i64 @nyx_array_get_checked({ i64, i8* }* %3231, i64 %3232, i64 2)
  %3234 = inttoptr i64 %3233 to %nyx_string*
  %3235 = alloca %nyx_string*
  store %nyx_string* %3234, %nyx_string** %3235
  %3236 = alloca i1
  store i1 false, i1* %3236
  %3237 = load %nyx_string*, %nyx_string** %3235
  %3238 = load %nyx_string*, %nyx_string** %3180
  %3239 = call i1 @nyx_string_equals(%nyx_string* %3237, %nyx_string* %3238)
  br i1 %3239, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %3240 = load i64, i64* %3177
  %3241 = add i64 %3240, 1
  %3242 = load { i64, i8* }*, { i64, i8* }** %3173
  %3243 = call i64 @nyx_array_length({ i64, i8* }* %3242)
  %3244 = icmp slt i64 %3241, %3243
  store i1 %3244, i1* %3236
  br label %sc_and_end546
sc_and_end546:
  %3245 = load i1, i1* %3236
  br i1 %3245, label %then547, label %else548
then547:
  %3246 = load i64, i64* %3177
  %3247 = add i64 %3246, 1
  store i64 %3247, i64* %3177
  %3248 = load { i64, i8* }*, { i64, i8* }** %3173
  %3249 = load i64, i64* %3177
  %3250 = call i64 @nyx_array_get_checked({ i64, i8* }* %3248, i64 %3249, i64 2)
  %3251 = inttoptr i64 %3250 to %nyx_string*
  %3252 = alloca %nyx_string*
  store %nyx_string* %3251, %nyx_string** %3252
  %3253 = load %nyx_string*, %nyx_string** %3252
  %3254 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 2
  store %nyx_string* %3253, %nyx_string** %3254
  br label %merge549
else548:
  %3255 = alloca i1
  store i1 true, i1* %3255
  %3256 = load %nyx_string*, %nyx_string** %3235
  %3257 = load %nyx_string*, %nyx_string** %3183
  %3258 = call i1 @nyx_string_equals(%nyx_string* %3256, %nyx_string* %3257)
  br i1 %3258, label %sc_or_end551, label %sc_or_rhs550
sc_or_rhs550:
  %3259 = load %nyx_string*, %nyx_string** %3235
  %3260 = load %nyx_string*, %nyx_string** %3186
  %3261 = call i1 @nyx_string_equals(%nyx_string* %3259, %nyx_string* %3260)
  store i1 %3261, i1* %3255
  br label %sc_or_end551
sc_or_end551:
  %3262 = load i1, i1* %3255
  br i1 %3262, label %then552, label %else553
then552:
  %3263 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 3
  store i1 1, i1* %3263
  br label %merge554
else553:
  %3264 = alloca i1
  store i1 false, i1* %3264
  %3265 = load %nyx_string*, %nyx_string** %3235
  %3266 = load %nyx_string*, %nyx_string** %3189
  %3267 = call i1 @nyx_string_equals(%nyx_string* %3265, %nyx_string* %3266)
  br i1 %3267, label %sc_and_rhs555, label %sc_and_end556
sc_and_rhs555:
  %3268 = load i64, i64* %3177
  %3269 = add i64 %3268, 1
  %3270 = load { i64, i8* }*, { i64, i8* }** %3173
  %3271 = call i64 @nyx_array_length({ i64, i8* }* %3270)
  %3272 = icmp slt i64 %3269, %3271
  store i1 %3272, i1* %3264
  br label %sc_and_end556
sc_and_end556:
  %3273 = load i1, i1* %3264
  br i1 %3273, label %then557, label %else558
then557:
  %3274 = load i64, i64* %3177
  %3275 = add i64 %3274, 1
  store i64 %3275, i64* %3177
  %3276 = load { i64, i8* }*, { i64, i8* }** %3173
  %3277 = load i64, i64* %3177
  %3278 = call i64 @nyx_array_get_checked({ i64, i8* }* %3276, i64 %3277, i64 2)
  %3279 = inttoptr i64 %3278 to %nyx_string*
  %3280 = alloca %nyx_string*
  store %nyx_string* %3279, %nyx_string** %3280
  %3281 = load %nyx_string*, %nyx_string** %3280
  %3282 = call i64 @nyx_string_to_int(%nyx_string* %3281)
  %3283 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 1
  store i64 %3282, i64* %3283
  br label %merge559
else558:
  %3284 = load %nyx_string*, %nyx_string** %3235
  %3285 = load %nyx_string*, %nyx_string** %3192
  %3286 = call i1 @nyx_string_equals(%nyx_string* %3284, %nyx_string* %3285)
  br i1 %3286, label %then560, label %else561
then560:
  %3287 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 7
  store i1 1, i1* %3287
  br label %merge562
else561:
  %3288 = load %nyx_string*, %nyx_string** %3235
  %3289 = load %nyx_string*, %nyx_string** %3195
  %3290 = call i1 @nyx_string_equals(%nyx_string* %3288, %nyx_string* %3289)
  br i1 %3290, label %then563, label %else564
then563:
  %3291 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 5
  store i1 1, i1* %3291
  br label %merge565
else564:
  %3292 = load %nyx_string*, %nyx_string** %3235
  %3293 = load %nyx_string*, %nyx_string** %3198
  %3294 = call i1 @nyx_string_equals(%nyx_string* %3292, %nyx_string* %3293)
  br i1 %3294, label %then566, label %else567
then566:
  %3295 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 5
  store i1 1, i1* %3295
  %3296 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 6
  store i1 1, i1* %3296
  br label %merge568
else567:
  %3297 = alloca i1
  store i1 true, i1* %3297
  %3298 = load %nyx_string*, %nyx_string** %3235
  %3299 = load %nyx_string*, %nyx_string** %3201
  %3300 = call i1 @nyx_string_equals(%nyx_string* %3298, %nyx_string* %3299)
  br i1 %3300, label %sc_or_end570, label %sc_or_rhs569
sc_or_rhs569:
  %3301 = load %nyx_string*, %nyx_string** %3235
  %3302 = load %nyx_string*, %nyx_string** %3204
  %3303 = call i1 @nyx_string_starts_with(%nyx_string* %3301, %nyx_string* %3302)
  store i1 %3303, i1* %3297
  br label %sc_or_end570
sc_or_end570:
  %3304 = load i1, i1* %3297
  br i1 %3304, label %then571, label %else572
then571:
  %3305 = load %nyx_string*, %nyx_string** %3207
  %3306 = load %nyx_string*, %nyx_string** %3235
  %3307 = call %nyx_string* @nyx_string_concat(%nyx_string* %3305, %nyx_string* %3306)
  %3308 = call i8* @nyx_string_to_cstr(%nyx_string* %3307)
  call void @nyx_print_string(i8* %3308)
  %3309 = load %nyx_string*, %nyx_string** %3210
  %3310 = call i8* @nyx_string_to_cstr(%nyx_string* %3309)
  call void @nyx_print_string(i8* %3310)
  %3311 = call i64 @print_valid_options()
  ret i64 1
else572:
  %3312 = alloca i1
  store i1 true, i1* %3312
  %3313 = load %nyx_string*, %nyx_string** %3235
  %3314 = load %nyx_string*, %nyx_string** %3213
  %3315 = call i1 @nyx_string_equals(%nyx_string* %3313, %nyx_string* %3314)
  br i1 %3315, label %sc_or_end575, label %sc_or_rhs574
sc_or_rhs574:
  %3316 = load %nyx_string*, %nyx_string** %3235
  %3317 = load %nyx_string*, %nyx_string** %3216
  %3318 = call i1 @nyx_string_starts_with(%nyx_string* %3316, %nyx_string* %3317)
  store i1 %3318, i1* %3312
  br label %sc_or_end575
sc_or_end575:
  %3319 = load i1, i1* %3312
  br i1 %3319, label %then576, label %else577
then576:
  %3320 = load %nyx_string*, %nyx_string** %3235
  store %nyx_string* %3320, %nyx_string** %3176
  %3321 = alloca i1
  store i1 false, i1* %3321
  %3322 = load %nyx_string*, %nyx_string** %3235
  %3323 = load %nyx_string*, %nyx_string** %3213
  %3324 = call i1 @nyx_string_equals(%nyx_string* %3322, %nyx_string* %3323)
  br i1 %3324, label %sc_and_rhs579, label %sc_and_end580
sc_and_rhs579:
  %3325 = load i64, i64* %3177
  %3326 = add i64 %3325, 1
  %3327 = load { i64, i8* }*, { i64, i8* }** %3173
  %3328 = call i64 @nyx_array_length({ i64, i8* }* %3327)
  %3329 = icmp slt i64 %3326, %3328
  store i1 %3329, i1* %3321
  br label %sc_and_end580
sc_and_end580:
  %3330 = load i1, i1* %3321
  br i1 %3330, label %then581, label %else582
then581:
  %3331 = load i64, i64* %3177
  %3332 = add i64 %3331, 1
  store i64 %3332, i64* %3177
  %3333 = load { i64, i8* }*, { i64, i8* }** %3173
  %3334 = load i64, i64* %3177
  %3335 = call i64 @nyx_array_get_checked({ i64, i8* }* %3333, i64 %3334, i64 2)
  %3336 = inttoptr i64 %3335 to %nyx_string*
  %3337 = alloca %nyx_string*
  store %nyx_string* %3336, %nyx_string** %3337
  %3338 = load %nyx_string*, %nyx_string** %3235
  %3339 = load %nyx_string*, %nyx_string** %3219
  %3340 = call %nyx_string* @nyx_string_concat(%nyx_string* %3338, %nyx_string* %3339)
  %3341 = load %nyx_string*, %nyx_string** %3337
  %3342 = call %nyx_string* @nyx_string_concat(%nyx_string* %3340, %nyx_string* %3341)
  store %nyx_string* %3342, %nyx_string** %3176
  br label %merge583
else582:
  br label %merge583
merge583:
  br label %merge578
else577:
  %3343 = alloca i1
  store i1 true, i1* %3343
  %3344 = load %nyx_string*, %nyx_string** %3235
  %3345 = load %nyx_string*, %nyx_string** %3180
  %3346 = call i1 @nyx_string_equals(%nyx_string* %3344, %nyx_string* %3345)
  br i1 %3346, label %sc_or_end585, label %sc_or_rhs584
sc_or_rhs584:
  %3347 = load %nyx_string*, %nyx_string** %3235
  %3348 = load %nyx_string*, %nyx_string** %3189
  %3349 = call i1 @nyx_string_equals(%nyx_string* %3347, %nyx_string* %3348)
  store i1 %3349, i1* %3343
  br label %sc_or_end585
sc_or_end585:
  %3350 = load i1, i1* %3343
  br i1 %3350, label %then586, label %else587
then586:
  br label %merge588
else587:
  %3351 = load %nyx_string*, %nyx_string** %3235
  %3352 = load %nyx_string*, %nyx_string** %3222
  %3353 = call i1 @nyx_string_ends_with(%nyx_string* %3351, %nyx_string* %3352)
  br i1 %3353, label %then589, label %else590
then589:
  %3354 = load %nyx_string*, %nyx_string** %3235
  %3355 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 4
  store %nyx_string* %3354, %nyx_string** %3355
  br label %merge591
else590:
  %3356 = load %nyx_string*, %nyx_string** %3235
  %3357 = load %nyx_string*, %nyx_string** %3225
  %3358 = call i1 @nyx_string_starts_with(%nyx_string* %3356, %nyx_string* %3357)
  br i1 %3358, label %then592, label %else593
then592:
  %3359 = load %nyx_string*, %nyx_string** %3207
  %3360 = load %nyx_string*, %nyx_string** %3235
  %3361 = call %nyx_string* @nyx_string_concat(%nyx_string* %3359, %nyx_string* %3360)
  %3362 = call i8* @nyx_string_to_cstr(%nyx_string* %3361)
  call void @nyx_print_string(i8* %3362)
  %3363 = call i64 @print_valid_options()
  ret i64 1
else593:
  br label %merge594
merge594:
  br label %merge591
merge591:
  br label %merge588
merge588:
  br label %merge578
merge578:
  br label %merge573
merge573:
  br label %merge568
merge568:
  br label %merge565
merge565:
  br label %merge562
merge562:
  br label %merge559
merge559:
  br label %merge554
merge554:
  br label %merge549
merge549:
  %3364 = load i64, i64* %3177
  %3365 = add i64 %3364, 1
  store i64 %3365, i64* %3177
  br label %while_cond542
while_end544:
  %3366 = load %nyx_string*, %nyx_string** %3176
  %3367 = getelementptr [1 x i8], [1 x i8]* @.str347, i32 0, i32 0
  %3368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3367, i64 0)
  %3369 = call i1 @nyx_string_equals(%nyx_string* %3366, %nyx_string* %3368)
  %3370 = xor i1 %3369, true
  br i1 %3370, label %then595, label %else596
then595:
  %3371 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 5
  %3372 = load i1, i1* %3371
  br i1 %3372, label %then598, label %else599
then598:
  %3373 = getelementptr [47 x i8], [47 x i8]* @.str348, i32 0, i32 0
  %3374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3373, i64 46)
  %3375 = load %nyx_string*, %nyx_string** %3176
  %3376 = call %nyx_string* @nyx_string_concat(%nyx_string* %3374, %nyx_string* %3375)
  %3377 = getelementptr [58 x i8], [58 x i8]* @.str349, i32 0, i32 0
  %3378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3377, i64 57)
  %3379 = call %nyx_string* @nyx_string_concat(%nyx_string* %3376, %nyx_string* %3378)
  %3380 = call i8* @nyx_string_to_cstr(%nyx_string* %3379)
  call void @nyx_print_string(i8* %3380)
  br label %merge600
else599:
  %3381 = getelementptr [24 x i8], [24 x i8]* @.str350, i32 0, i32 0
  %3382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3381, i64 23)
  %3383 = load %nyx_string*, %nyx_string** %3176
  %3384 = call %nyx_string* @nyx_string_concat(%nyx_string* %3382, %nyx_string* %3383)
  %3385 = call i8* @nyx_string_to_cstr(%nyx_string* %3384)
  call void @nyx_print_string(i8* %3385)
  br label %merge600
merge600:
  %3386 = call i64 @print_valid_options()
  ret i64 1
else596:
  br label %merge597
merge597:
  %3387 = getelementptr [1 x i8], [1 x i8]* @.str351, i32 0, i32 0
  %3388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3387, i64 0)
  %3389 = alloca %nyx_string*
  store %nyx_string* %3388, %nyx_string** %3389
  %3390 = getelementptr [1 x i8], [1 x i8]* @.str352, i32 0, i32 0
  %3391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3390, i64 0)
  %3392 = alloca %nyx_string*
  store %nyx_string* %3391, %nyx_string** %3392
  %3393 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 5
  %3394 = load i1, i1* %3393
  br i1 %3394, label %then601, label %else602
then601:
  %3395 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3395, %nyx_string** %3389
  %3396 = load %nyx_string*, %nyx_string** %3389
  %3397 = getelementptr [1 x i8], [1 x i8]* @.str353, i32 0, i32 0
  %3398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3397, i64 0)
  %3399 = call i1 @nyx_string_equals(%nyx_string* %3396, %nyx_string* %3398)
  br i1 %3399, label %then604, label %else605
then604:
  %3400 = call %nyx_string* @cov_clang_major()
  %3401 = alloca %nyx_string*
  store %nyx_string* %3400, %nyx_string** %3401
  %3402 = getelementptr [5 x i8], [5 x i8]* @.str354, i32 0, i32 0
  %3403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3402, i64 4)
  %3404 = alloca %nyx_string*
  store %nyx_string* %3403, %nyx_string** %3404
  %3405 = load %nyx_string*, %nyx_string** %3401
  %3406 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %3407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3406, i64 0)
  %3408 = call i1 @nyx_string_equals(%nyx_string* %3405, %nyx_string* %3407)
  %3409 = xor i1 %3408, true
  br i1 %3409, label %then607, label %else608
then607:
  %3410 = getelementptr [6 x i8], [6 x i8]* @.str356, i32 0, i32 0
  %3411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3410, i64 5)
  %3412 = load %nyx_string*, %nyx_string** %3401
  %3413 = call %nyx_string* @nyx_string_concat(%nyx_string* %3411, %nyx_string* %3412)
  store %nyx_string* %3413, %nyx_string** %3404
  br label %merge609
else608:
  br label %merge609
merge609:
  %3414 = getelementptr [101 x i8], [101 x i8]* @.str357, i32 0, i32 0
  %3415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3414, i64 100)
  %3416 = call i8* @nyx_string_to_cstr(%nyx_string* %3415)
  call void @nyx_print_string(i8* %3416)
  %3417 = getelementptr [35 x i8], [35 x i8]* @.str358, i32 0, i32 0
  %3418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3417, i64 34)
  %3419 = load %nyx_string*, %nyx_string** %3404
  %3420 = call %nyx_string* @nyx_string_concat(%nyx_string* %3418, %nyx_string* %3419)
  %3421 = call i8* @nyx_string_to_cstr(%nyx_string* %3420)
  call void @nyx_print_string(i8* %3421)
  %3422 = getelementptr [82 x i8], [82 x i8]* @.str359, i32 0, i32 0
  %3423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3422, i64 81)
  %3424 = call i8* @nyx_string_to_cstr(%nyx_string* %3423)
  call void @nyx_print_string(i8* %3424)
  %3425 = getelementptr [82 x i8], [82 x i8]* @.str360, i32 0, i32 0
  %3426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3425, i64 81)
  %3427 = call i8* @nyx_string_to_cstr(%nyx_string* %3426)
  call void @nyx_print_string(i8* %3427)
  ret i64 1
else605:
  br label %merge606
merge606:
  %3428 = getelementptr [30 x i8], [30 x i8]* @.str361, i32 0, i32 0
  %3429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3428, i64 29)
  %3430 = call i8* @nyx_string_to_cstr(%nyx_string* %3429)
  %3431 = call %nyx_string* @nyx_exec(i8* %3430)
  %3432 = call %nyx_string* @nyx_string_trim(%nyx_string* %3431)
  store %nyx_string* %3432, %nyx_string** %3392
  %3433 = load %nyx_string*, %nyx_string** %3392
  %3434 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %3435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3434, i64 0)
  %3436 = call i1 @nyx_string_equals(%nyx_string* %3433, %nyx_string* %3435)
  br i1 %3436, label %then610, label %else611
then610:
  %3437 = getelementptr [55 x i8], [55 x i8]* @.str363, i32 0, i32 0
  %3438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3437, i64 54)
  %3439 = call i8* @nyx_string_to_cstr(%nyx_string* %3438)
  call void @nyx_print_string(i8* %3439)
  ret i64 1
else611:
  br label %merge612
merge612:
  br label %merge603
else602:
  br label %merge603
merge603:
  %3440 = call { i64, i8* }* @nyx_array_new_ptr()
  %3441 = alloca { i64, i8* }*
  store { i64, i8* }* %3440, { i64, i8* }** %3441
  %3442 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 4
  %3443 = load %nyx_string*, %nyx_string** %3442
  %3444 = getelementptr [1 x i8], [1 x i8]* @.str364, i32 0, i32 0
  %3445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3444, i64 0)
  %3446 = call i1 @nyx_string_equals(%nyx_string* %3443, %nyx_string* %3445)
  %3447 = xor i1 %3446, true
  br i1 %3447, label %then613, label %else614
then613:
  %3448 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 4
  %3449 = load %nyx_string*, %nyx_string** %3448
  %3450 = call i8* @nyx_string_to_cstr(%nyx_string* %3449)
  %3451 = call i1 @nyx_file_exists(i8* %3450)
  %3452 = xor i1 %3451, true
  br i1 %3452, label %then616, label %else617
then616:
  %3453 = getelementptr [24 x i8], [24 x i8]* @.str365, i32 0, i32 0
  %3454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3453, i64 23)
  %3455 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 4
  %3456 = load %nyx_string*, %nyx_string** %3455
  %3457 = call %nyx_string* @nyx_string_concat(%nyx_string* %3454, %nyx_string* %3456)
  %3458 = call i8* @nyx_string_to_cstr(%nyx_string* %3457)
  call void @nyx_print_string(i8* %3458)
  ret i64 1
else617:
  br label %merge618
merge618:
  %3459 = load { i64, i8* }*, { i64, i8* }** %3441
  %3460 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 4
  %3461 = load %nyx_string*, %nyx_string** %3460
  %3462 = ptrtoint %nyx_string* %3461 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3459, i64 %3462, i64 2)
  br label %merge615
else614:
  %3463 = load %TestConfig, %TestConfig* %3171
  %3464 = call { i64, i8* }* @discover_tests(%TestConfig %3463)
  store { i64, i8* }* %3464, { i64, i8* }** %3441
  br label %merge615
merge615:
  %3465 = load { i64, i8* }*, { i64, i8* }** %3441
  %3466 = call i64 @nyx_array_length({ i64, i8* }* %3465)
  %3467 = icmp eq i64 %3466, 0
  br i1 %3467, label %then619, label %else620
then619:
  %3468 = getelementptr [23 x i8], [23 x i8]* @.str366, i32 0, i32 0
  %3469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3468, i64 22)
  %3470 = call i8* @nyx_string_to_cstr(%nyx_string* %3469)
  call void @nyx_print_string(i8* %3470)
  %3471 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 2
  %3472 = load %nyx_string*, %nyx_string** %3471
  %3473 = getelementptr [1 x i8], [1 x i8]* @.str367, i32 0, i32 0
  %3474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3473, i64 0)
  %3475 = call i1 @nyx_string_equals(%nyx_string* %3472, %nyx_string* %3474)
  %3476 = xor i1 %3475, true
  br i1 %3476, label %then622, label %else623
then622:
  %3477 = getelementptr [12 x i8], [12 x i8]* @.str368, i32 0, i32 0
  %3478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3477, i64 11)
  %3479 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 2
  %3480 = load %nyx_string*, %nyx_string** %3479
  %3481 = call %nyx_string* @nyx_string_concat(%nyx_string* %3478, %nyx_string* %3480)
  %3482 = getelementptr [2 x i8], [2 x i8]* @.str369, i32 0, i32 0
  %3483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3482, i64 1)
  %3484 = call %nyx_string* @nyx_string_concat(%nyx_string* %3481, %nyx_string* %3483)
  %3485 = call i8* @nyx_string_to_cstr(%nyx_string* %3484)
  call void @nyx_print_string(i8* %3485)
  br label %merge624
else623:
  br label %merge624
merge624:
  %3486 = getelementptr [14 x i8], [14 x i8]* @.str370, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3486, i64 13)
  %3488 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 0
  %3489 = load %nyx_string*, %nyx_string** %3488
  %3490 = call %nyx_string* @nyx_string_concat(%nyx_string* %3487, %nyx_string* %3489)
  %3491 = getelementptr [2 x i8], [2 x i8]* @.str371, i32 0, i32 0
  %3492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3491, i64 1)
  %3493 = call %nyx_string* @nyx_string_concat(%nyx_string* %3490, %nyx_string* %3492)
  %3494 = call i8* @nyx_string_to_cstr(%nyx_string* %3493)
  call void @nyx_print_string(i8* %3494)
  ret i64 0
else620:
  br label %merge621
merge621:
  %3495 = getelementptr [9 x i8], [9 x i8]* @.str372, i32 0, i32 0
  %3496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3495, i64 8)
  %3497 = load { i64, i8* }*, { i64, i8* }** %3441
  %3498 = call i64 @nyx_array_length({ i64, i8* }* %3497)
  %3499 = call %nyx_string* @nyx_string_from_int(i64 %3498)
  %3500 = call %nyx_string* @nyx_string_concat(%nyx_string* %3496, %nyx_string* %3499)
  %3501 = getelementptr [14 x i8], [14 x i8]* @.str373, i32 0, i32 0
  %3502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3501, i64 13)
  %3503 = call %nyx_string* @nyx_string_concat(%nyx_string* %3500, %nyx_string* %3502)
  %3504 = call i8* @nyx_string_to_cstr(%nyx_string* %3503)
  call void @nyx_print_string(i8* %3504)
  %3505 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 2
  %3506 = load %nyx_string*, %nyx_string** %3505
  %3507 = getelementptr [1 x i8], [1 x i8]* @.str374, i32 0, i32 0
  %3508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3507, i64 0)
  %3509 = call i1 @nyx_string_equals(%nyx_string* %3506, %nyx_string* %3508)
  %3510 = xor i1 %3509, true
  br i1 %3510, label %then625, label %else626
then625:
  %3511 = getelementptr [12 x i8], [12 x i8]* @.str375, i32 0, i32 0
  %3512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3511, i64 11)
  %3513 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 2
  %3514 = load %nyx_string*, %nyx_string** %3513
  %3515 = call %nyx_string* @nyx_string_concat(%nyx_string* %3512, %nyx_string* %3514)
  %3516 = getelementptr [2 x i8], [2 x i8]* @.str376, i32 0, i32 0
  %3517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3516, i64 1)
  %3518 = call %nyx_string* @nyx_string_concat(%nyx_string* %3515, %nyx_string* %3517)
  %3519 = call i8* @nyx_string_to_cstr(%nyx_string* %3518)
  call void @nyx_print_string(i8* %3519)
  br label %merge627
else626:
  br label %merge627
merge627:
  %3520 = getelementptr [1 x i8], [1 x i8]* @.str377, i32 0, i32 0
  %3521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3520, i64 0)
  %3522 = call i8* @nyx_string_to_cstr(%nyx_string* %3521)
  call void @nyx_print_string(i8* %3522)
  %3523 = alloca i1
  store i1 false, i1* %3523
  %3524 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 8
  %3525 = load %nyx_string*, %nyx_string** %3524
  %3526 = getelementptr [1 x i8], [1 x i8]* @.str378, i32 0, i32 0
  %3527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3526, i64 0)
  %3528 = call i1 @nyx_string_equals(%nyx_string* %3525, %nyx_string* %3527)
  %3529 = xor i1 %3528, true
  br i1 %3529, label %sc_and_rhs628, label %sc_and_end629
sc_and_rhs628:
  %3530 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 5
  %3531 = load i1, i1* %3530
  %3532 = xor i1 %3531, true
  store i1 %3532, i1* %3523
  br label %sc_and_end629
sc_and_end629:
  %3533 = load i1, i1* %3523
  br i1 %3533, label %then630, label %else631
then630:
  %3534 = getelementptr [9 x i8], [9 x i8]* @.str379, i32 0, i32 0
  %3535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3534, i64 8)
  %3536 = call i8* @nyx_string_to_cstr(%nyx_string* %3535)
  %3537 = call %nyx_string* @nyx_getenv(i8* %3536)
  %3538 = alloca %nyx_string*
  store %nyx_string* %3537, %nyx_string** %3538
  %3539 = load %nyx_string*, %nyx_string** %3538
  %3540 = getelementptr [11 x i8], [11 x i8]* @.str380, i32 0, i32 0
  %3541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3540, i64 10)
  %3542 = call %nyx_string* @nyx_string_concat(%nyx_string* %3539, %nyx_string* %3541)
  %3543 = alloca %nyx_string*
  store %nyx_string* %3542, %nyx_string** %3543
  %3544 = load %nyx_string*, %nyx_string** %3543
  %3545 = call i8* @nyx_string_to_cstr(%nyx_string* %3544)
  %3546 = call i1 @nyx_file_exists(i8* %3545)
  %3547 = xor i1 %3546, true
  br i1 %3547, label %then633, label %else634
then633:
  %3548 = load %nyx_string*, %nyx_string** %3538
  %3549 = getelementptr [15 x i8], [15 x i8]* @.str381, i32 0, i32 0
  %3550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3549, i64 14)
  %3551 = call %nyx_string* @nyx_string_concat(%nyx_string* %3548, %nyx_string* %3550)
  store %nyx_string* %3551, %nyx_string** %3543
  br label %merge635
else634:
  br label %merge635
merge635:
  %3552 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %3553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3552, i64 0)
  %3554 = alloca %nyx_string*
  store %nyx_string* %3553, %nyx_string** %3554
  %3555 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 7
  %3556 = load i1, i1* %3555
  br i1 %3556, label %then636, label %else637
then636:
  %3557 = getelementptr [11 x i8], [11 x i8]* @.str383, i32 0, i32 0
  %3558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3557, i64 10)
  store %nyx_string* %3558, %nyx_string** %3554
  br label %merge638
else637:
  br label %merge638
merge638:
  %3559 = getelementptr [33 x i8], [33 x i8]* @.str384, i32 0, i32 0
  %3560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3559, i64 32)
  %3561 = call i8* @nyx_string_to_cstr(%nyx_string* %3560)
  %3562 = call %nyx_string* @nyx_exec(i8* %3561)
  %3563 = call %nyx_string* @nyx_string_trim(%nyx_string* %3562)
  %3564 = alloca %nyx_string*
  store %nyx_string* %3563, %nyx_string** %3564
  %3565 = getelementptr [2 x i8], [2 x i8]* @.str385, i32 0, i32 0
  %3566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3565, i64 1)
  %3567 = load %nyx_string*, %nyx_string** %3543
  %3568 = call %nyx_string* @nyx_string_concat(%nyx_string* %3566, %nyx_string* %3567)
  %3569 = getelementptr [7 x i8], [7 x i8]* @.str386, i32 0, i32 0
  %3570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3569, i64 6)
  %3571 = call %nyx_string* @nyx_string_concat(%nyx_string* %3568, %nyx_string* %3570)
  %3572 = load %nyx_string*, %nyx_string** %3554
  %3573 = call %nyx_string* @nyx_string_concat(%nyx_string* %3571, %nyx_string* %3572)
  %3574 = getelementptr [5 x i8], [5 x i8]* @.str387, i32 0, i32 0
  %3575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3574, i64 4)
  %3576 = call %nyx_string* @nyx_string_concat(%nyx_string* %3573, %nyx_string* %3575)
  %3577 = load %nyx_string*, %nyx_string** %3564
  %3578 = call %nyx_string* @nyx_string_concat(%nyx_string* %3576, %nyx_string* %3577)
  %3579 = getelementptr [7 x i8], [7 x i8]* @.str388, i32 0, i32 0
  %3580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3579, i64 6)
  %3581 = call %nyx_string* @nyx_string_concat(%nyx_string* %3578, %nyx_string* %3580)
  %3582 = call i8* @nyx_string_to_cstr(%nyx_string* %3581)
  %3583 = call i64 @nyx_exec_code(i8* %3582)
  %3584 = alloca i64
  store i64 %3583, i64* %3584
  %3585 = load %nyx_string*, %nyx_string** %3564
  %3586 = call i8* @nyx_string_to_cstr(%nyx_string* %3585)
  %3587 = call %nyx_string* @nyx_read_file(i8* %3586)
  %3588 = alloca %nyx_string*
  store %nyx_string* %3587, %nyx_string** %3588
  %3589 = getelementptr [8 x i8], [8 x i8]* @.str389, i32 0, i32 0
  %3590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3589, i64 7)
  %3591 = load %nyx_string*, %nyx_string** %3564
  %3592 = call %nyx_string* @nyx_string_concat(%nyx_string* %3590, %nyx_string* %3591)
  %3593 = getelementptr [2 x i8], [2 x i8]* @.str390, i32 0, i32 0
  %3594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3593, i64 1)
  %3595 = call %nyx_string* @nyx_string_concat(%nyx_string* %3592, %nyx_string* %3594)
  %3596 = call i8* @nyx_string_to_cstr(%nyx_string* %3595)
  %3597 = call i64 @nyx_exec_code(i8* %3596)
  %3598 = load i64, i64* %3584
  %3599 = icmp ne i64 %3598, 0
  br i1 %3599, label %then639, label %else640
then639:
  %3600 = getelementptr [65 x i8], [65 x i8]* @.str391, i32 0, i32 0
  %3601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3600, i64 64)
  %3602 = call i8* @nyx_string_to_cstr(%nyx_string* %3601)
  call void @nyx_print_string(i8* %3602)
  %3603 = load %nyx_string*, %nyx_string** %3588
  %3604 = call i8* @nyx_string_to_cstr(%nyx_string* %3603)
  call void @nyx_print_string(i8* %3604)
  ret i64 1
else640:
  br label %merge641
merge641:
  %3605 = load %nyx_string*, %nyx_string** %3588
  %3606 = getelementptr [2 x i8], [2 x i8]* @.str392, i32 0, i32 0
  %3607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3606, i64 1)
  %3608 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3605, %nyx_string* %3607)
  %3609 = alloca { i64, i8* }*
  store { i64, i8* }* %3608, { i64, i8* }** %3609
  %3610 = alloca i64
  store i64 0, i64* %3610
  %3611 = alloca i64
  store i64 0, i64* %3611
  %3612 = alloca i64
  store i64 0, i64* %3612
  %3613 = getelementptr [13 x i8], [13 x i8]* @.str393, i32 0, i32 0
  %3614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3613, i64 12)
  %3615 = alloca %nyx_string*
  store %nyx_string* %3614, %nyx_string** %3615
  %3616 = getelementptr [6 x i8], [6 x i8]* @.str394, i32 0, i32 0
  %3617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3616, i64 5)
  %3618 = alloca %nyx_string*
  store %nyx_string* %3617, %nyx_string** %3618
  %3619 = getelementptr [8 x i8], [8 x i8]* @.str395, i32 0, i32 0
  %3620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3619, i64 7)
  %3621 = alloca %nyx_string*
  store %nyx_string* %3620, %nyx_string** %3621
  %3622 = getelementptr [4 x i8], [4 x i8]* @.str396, i32 0, i32 0
  %3623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3622, i64 3)
  %3624 = alloca %nyx_string*
  store %nyx_string* %3623, %nyx_string** %3624
  %3625 = call i8* @llvm.stacksave()
  br label %while_cond642
while_cond642:
  %3626 = load i64, i64* %3610
  %3627 = load { i64, i8* }*, { i64, i8* }** %3609
  %3628 = call i64 @nyx_array_length({ i64, i8* }* %3627)
  %3629 = icmp slt i64 %3626, %3628
  br i1 %3629, label %while_body643, label %while_end644
while_body643:
  call void @llvm.stackrestore(i8* %3625)
  %3630 = load { i64, i8* }*, { i64, i8* }** %3609
  %3631 = load i64, i64* %3610
  %3632 = call i64 @nyx_array_get_checked({ i64, i8* }* %3630, i64 %3631, i64 2)
  %3633 = inttoptr i64 %3632 to %nyx_string*
  %3634 = alloca %nyx_string*
  store %nyx_string* %3633, %nyx_string** %3634
  %3635 = load %nyx_string*, %nyx_string** %3634
  %3636 = load %nyx_string*, %nyx_string** %3615
  %3637 = call i1 @nyx_string_starts_with(%nyx_string* %3635, %nyx_string* %3636)
  br i1 %3637, label %then645, label %else646
then645:
  %3638 = load %nyx_string*, %nyx_string** %3634
  %3639 = load %nyx_string*, %nyx_string** %3634
  %3640 = call i64 @nyx_string_byte_length(%nyx_string* %3639)
  %3641 = call %nyx_string* @nyx_string_substring(%nyx_string* %3638, i64 12, i64 %3640)
  %3642 = call %nyx_string* @nyx_string_trim(%nyx_string* %3641)
  %3643 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 9
  store %nyx_string* %3642, %nyx_string** %3643
  br label %merge647
else646:
  br label %merge647
merge647:
  %3644 = load %nyx_string*, %nyx_string** %3634
  %3645 = load %nyx_string*, %nyx_string** %3618
  %3646 = call i1 @nyx_string_contains(%nyx_string* %3644, %nyx_string* %3645)
  br i1 %3646, label %then648, label %else649
then648:
  %3647 = load i64, i64* %3611
  %3648 = add i64 %3647, 1
  store i64 %3648, i64* %3611
  br label %merge650
else649:
  br label %merge650
merge650:
  %3649 = load %nyx_string*, %nyx_string** %3634
  %3650 = load %nyx_string*, %nyx_string** %3621
  %3651 = call i1 @nyx_string_contains(%nyx_string* %3649, %nyx_string* %3650)
  br i1 %3651, label %then651, label %else652
then651:
  %3652 = load i64, i64* %3612
  %3653 = add i64 %3652, 1
  store i64 %3653, i64* %3612
  br label %merge653
else652:
  br label %merge653
merge653:
  %3654 = load %nyx_string*, %nyx_string** %3634
  %3655 = load %nyx_string*, %nyx_string** %3624
  %3656 = call i1 @nyx_string_contains(%nyx_string* %3654, %nyx_string* %3655)
  br i1 %3656, label %then654, label %else655
then654:
  %3657 = load %nyx_string*, %nyx_string** %3634
  %3658 = call i8* @nyx_string_to_cstr(%nyx_string* %3657)
  call void @nyx_print_string(i8* %3658)
  br label %merge656
else655:
  br label %merge656
merge656:
  %3659 = load i64, i64* %3610
  %3660 = add i64 %3659, 1
  store i64 %3660, i64* %3610
  br label %while_cond642
while_end644:
  %3661 = getelementptr [18 x i8], [18 x i8]* @.str397, i32 0, i32 0
  %3662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3661, i64 17)
  %3663 = load i64, i64* %3611
  %3664 = call %nyx_string* @nyx_string_from_int(i64 %3663)
  %3665 = call %nyx_string* @nyx_string_concat(%nyx_string* %3662, %nyx_string* %3664)
  %3666 = getelementptr [16 x i8], [16 x i8]* @.str398, i32 0, i32 0
  %3667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3666, i64 15)
  %3668 = call %nyx_string* @nyx_string_concat(%nyx_string* %3665, %nyx_string* %3667)
  %3669 = load i64, i64* %3612
  %3670 = call %nyx_string* @nyx_string_from_int(i64 %3669)
  %3671 = call %nyx_string* @nyx_string_concat(%nyx_string* %3668, %nyx_string* %3670)
  %3672 = getelementptr [16 x i8], [16 x i8]* @.str399, i32 0, i32 0
  %3673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3672, i64 15)
  %3674 = call %nyx_string* @nyx_string_concat(%nyx_string* %3671, %nyx_string* %3673)
  %3675 = call i8* @nyx_string_to_cstr(%nyx_string* %3674)
  call void @nyx_print_string(i8* %3675)
  %3676 = getelementptr [1 x i8], [1 x i8]* @.str400, i32 0, i32 0
  %3677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3676, i64 0)
  %3678 = call i8* @nyx_string_to_cstr(%nyx_string* %3677)
  call void @nyx_print_string(i8* %3678)
  br label %merge632
else631:
  br label %merge632
merge632:
  %3679 = call { i64, i8* }* @nyx_array_new_ptr()
  %3680 = alloca { i64, i8* }*
  store { i64, i8* }* %3679, { i64, i8* }** %3680
  %3681 = call { i64, i8* }* @nyx_array_new_ptr()
  %3682 = alloca { i64, i8* }*
  store { i64, i8* }* %3681, { i64, i8* }** %3682
  %3683 = call { i64, i8* }* @nyx_array_new_ptr()
  %3684 = alloca { i64, i8* }*
  store { i64, i8* }* %3683, { i64, i8* }** %3684
  %3685 = alloca i64
  store i64 0, i64* %3685
  %3686 = alloca i64
  store i64 0, i64* %3686
  %3687 = alloca i64
  store i64 0, i64* %3687
  %3688 = call i8* @llvm.stacksave()
  br label %while_cond657
while_cond657:
  %3689 = load i64, i64* %3687
  %3690 = load { i64, i8* }*, { i64, i8* }** %3441
  %3691 = call i64 @nyx_array_length({ i64, i8* }* %3690)
  %3692 = icmp slt i64 %3689, %3691
  br i1 %3692, label %while_body658, label %while_end659
while_body658:
  call void @llvm.stackrestore(i8* %3688)
  %3693 = load { i64, i8* }*, { i64, i8* }** %3441
  %3694 = load i64, i64* %3687
  %3695 = call i64 @nyx_array_get_checked({ i64, i8* }* %3693, i64 %3694, i64 2)
  %3696 = inttoptr i64 %3695 to %nyx_string*
  %3697 = alloca %nyx_string*
  store %nyx_string* %3696, %nyx_string** %3697
  %3698 = load %nyx_string*, %nyx_string** %3697
  %3699 = call i1 @file_has_test_blocks(%nyx_string* %3698)
  %3700 = xor i1 %3699, true
  br i1 %3700, label %then660, label %else661
then660:
  %3701 = load i64, i64* %3687
  %3702 = add i64 %3701, 1
  store i64 %3702, i64* %3687
  br label %merge662
else661:
  %3703 = load %nyx_string*, %nyx_string** %3697
  %3704 = load %TestConfig, %TestConfig* %3171
  %3705 = load %nyx_string*, %nyx_string** %3392
  %3706 = load i64, i64* %3687
  %3707 = call %TestResult @compile_and_run(%nyx_string* %3703, %TestConfig %3704, %nyx_string* %3705, i64 %3706)
  %3708 = alloca %TestResult
  store %TestResult %3707, %TestResult* %3708
  %3709 = load { i64, i8* }*, { i64, i8* }** %3680
  %3710 = load %TestResult, %TestResult* %3708
  %3711 = getelementptr %TestResult, %TestResult* null, i32 1
  %3712 = ptrtoint %TestResult* %3711 to i64
  %3713 = call i8* @GC_malloc(i64 %3712)
  %3714 = bitcast i8* %3713 to %TestResult*
  store %TestResult %3710, %TestResult* %3714
  %3715 = ptrtoint %TestResult* %3714 to i64
  call void @nyx_array_push({ i64, i8* }* %3709, i64 %3715)
  %3716 = load { i64, i8* }*, { i64, i8* }** %3682
  %3717 = load %nyx_string*, %nyx_string** %3697
  %3718 = ptrtoint %nyx_string* %3717 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3716, i64 %3718, i64 2)
  %3719 = load { i64, i8* }*, { i64, i8* }** %3684
  %3720 = load i64, i64* %3687
  %3721 = call %nyx_string* @nyx_string_from_int(i64 %3720)
  %3722 = ptrtoint %nyx_string* %3721 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3719, i64 %3722, i64 2)
  %3723 = load i64, i64* %3685
  %3724 = getelementptr %TestResult, %TestResult* %3708, i32 0, i32 1
  %3725 = load i64, i64* %3724
  %3726 = add i64 %3723, %3725
  store i64 %3726, i64* %3685
  %3727 = load i64, i64* %3686
  %3728 = getelementptr %TestResult, %TestResult* %3708, i32 0, i32 2
  %3729 = load i64, i64* %3728
  %3730 = add i64 %3727, %3729
  store i64 %3730, i64* %3686
  %3731 = load %TestResult, %TestResult* %3708
  %3732 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 3
  %3733 = load i1, i1* %3732
  %3734 = call i64 @print_result(%TestResult %3731, i1 %3733)
  %3735 = load i64, i64* %3687
  %3736 = add i64 %3735, 1
  store i64 %3736, i64* %3687
  br label %merge662
merge662:
  br label %while_cond657
while_end659:
  %3737 = load { i64, i8* }*, { i64, i8* }** %3680
  %3738 = call i64 @nyx_array_length({ i64, i8* }* %3737)
  %3739 = icmp eq i64 %3738, 0
  br i1 %3739, label %then663, label %else664
then663:
  %3740 = getelementptr [35 x i8], [35 x i8]* @.str401, i32 0, i32 0
  %3741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3740, i64 34)
  %3742 = call i8* @nyx_string_to_cstr(%nyx_string* %3741)
  call void @nyx_print_string(i8* %3742)
  %3743 = load %nyx_string*, %nyx_string** %3392
  %3744 = getelementptr [1 x i8], [1 x i8]* @.str402, i32 0, i32 0
  %3745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3744, i64 0)
  %3746 = call i1 @nyx_string_equals(%nyx_string* %3743, %nyx_string* %3745)
  %3747 = xor i1 %3746, true
  br i1 %3747, label %then666, label %else667
then666:
  %3748 = getelementptr [8 x i8], [8 x i8]* @.str403, i32 0, i32 0
  %3749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3748, i64 7)
  %3750 = load %nyx_string*, %nyx_string** %3392
  %3751 = call %nyx_string* @nyx_string_concat(%nyx_string* %3749, %nyx_string* %3750)
  %3752 = call i8* @nyx_string_to_cstr(%nyx_string* %3751)
  %3753 = call %nyx_string* @nyx_exec(i8* %3752)
  br label %merge668
else667:
  br label %merge668
merge668:
  ret i64 0
else664:
  br label %merge665
merge665:
  %3754 = load { i64, i8* }*, { i64, i8* }** %3680
  %3755 = load i64, i64* %3685
  %3756 = load i64, i64* %3686
  %3757 = call i64 @print_summary({ i64, i8* }* %3754, i64 %3755, i64 %3756)
  %3758 = load %nyx_string*, %nyx_string** %3142
  %3759 = call %nyx_string* @huella_compilador(%nyx_string* %3758)
  %3760 = alloca %nyx_string*
  store %nyx_string* %3759, %nyx_string** %3760
  %3761 = load %nyx_string*, %nyx_string** %3142
  %3762 = call %nyx_string* @huella_resto(%nyx_string* %3761)
  %3763 = alloca %nyx_string*
  store %nyx_string* %3762, %nyx_string** %3763
  %3764 = alloca i1
  store i1 true, i1* %3764
  %3765 = load %nyx_string*, %nyx_string** %3760
  %3766 = load %nyx_string*, %nyx_string** %3153
  %3767 = call i1 @nyx_string_equals(%nyx_string* %3765, %nyx_string* %3766)
  %3768 = xor i1 %3767, true
  br i1 %3768, label %sc_or_end670, label %sc_or_rhs669
sc_or_rhs669:
  %3769 = load %nyx_string*, %nyx_string** %3763
  %3770 = load %nyx_string*, %nyx_string** %3156
  %3771 = call i1 @nyx_string_equals(%nyx_string* %3769, %nyx_string* %3770)
  %3772 = xor i1 %3771, true
  store i1 %3772, i1* %3764
  br label %sc_or_end670
sc_or_end670:
  %3773 = load i1, i1* %3764
  br i1 %3773, label %then671, label %else672
then671:
  %3774 = getelementptr [1 x i8], [1 x i8]* @.str404, i32 0, i32 0
  %3775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3774, i64 0)
  %3776 = call i8* @nyx_string_to_cstr(%nyx_string* %3775)
  call void @nyx_print_string(i8* %3776)
  %3777 = getelementptr [48 x i8], [48 x i8]* @.str405, i32 0, i32 0
  %3778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3777, i64 47)
  %3779 = load %nyx_string*, %nyx_string** %3142
  %3780 = call %nyx_string* @nyx_string_concat(%nyx_string* %3778, %nyx_string* %3779)
  %3781 = getelementptr [2 x i8], [2 x i8]* @.str406, i32 0, i32 0
  %3782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3781, i64 1)
  %3783 = call %nyx_string* @nyx_string_concat(%nyx_string* %3780, %nyx_string* %3782)
  %3784 = call i8* @nyx_string_to_cstr(%nyx_string* %3783)
  call void @nyx_print_string(i8* %3784)
  %3785 = load %nyx_string*, %nyx_string** %3760
  %3786 = load %nyx_string*, %nyx_string** %3153
  %3787 = call i1 @nyx_string_equals(%nyx_string* %3785, %nyx_string* %3786)
  %3788 = xor i1 %3787, true
  br i1 %3788, label %then674, label %else675
then674:
  %3789 = getelementptr [31 x i8], [31 x i8]* @.str407, i32 0, i32 0
  %3790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3789, i64 30)
  %3791 = load %nyx_string*, %nyx_string** %3153
  %3792 = call %nyx_string* @nyx_string_concat(%nyx_string* %3790, %nyx_string* %3791)
  %3793 = getelementptr [5 x i8], [5 x i8]* @.str408, i32 0, i32 0
  %3794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3793, i64 4)
  %3795 = call %nyx_string* @nyx_string_concat(%nyx_string* %3792, %nyx_string* %3794)
  %3796 = load %nyx_string*, %nyx_string** %3760
  %3797 = call %nyx_string* @nyx_string_concat(%nyx_string* %3795, %nyx_string* %3796)
  %3798 = call i8* @nyx_string_to_cstr(%nyx_string* %3797)
  call void @nyx_print_string(i8* %3798)
  br label %merge676
else675:
  %3799 = getelementptr [53 x i8], [53 x i8]* @.str409, i32 0, i32 0
  %3800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3799, i64 52)
  %3801 = call i8* @nyx_string_to_cstr(%nyx_string* %3800)
  call void @nyx_print_string(i8* %3801)
  br label %merge676
merge676:
  %3802 = getelementptr [71 x i8], [71 x i8]* @.str410, i32 0, i32 0
  %3803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3802, i64 70)
  %3804 = call i8* @nyx_string_to_cstr(%nyx_string* %3803)
  call void @nyx_print_string(i8* %3804)
  %3805 = getelementptr [69 x i8], [69 x i8]* @.str411, i32 0, i32 0
  %3806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3805, i64 68)
  %3807 = call i8* @nyx_string_to_cstr(%nyx_string* %3806)
  call void @nyx_print_string(i8* %3807)
  br label %merge673
else672:
  br label %merge673
merge673:
  %3808 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 5
  %3809 = load i1, i1* %3808
  br i1 %3809, label %then677, label %else678
then677:
  %3810 = load %nyx_string*, %nyx_string** %3392
  %3811 = load { i64, i8* }*, { i64, i8* }** %3682
  %3812 = load { i64, i8* }*, { i64, i8* }** %3684
  %3813 = load %nyx_string*, %nyx_string** %3389
  %3814 = getelementptr %TestConfig, %TestConfig* %3171, i32 0, i32 6
  %3815 = load i1, i1* %3814
  %3816 = call i64 @cov_report(%nyx_string* %3810, { i64, i8* }* %3811, { i64, i8* }* %3812, %nyx_string* %3813, i1 %3815)
  %3817 = getelementptr [8 x i8], [8 x i8]* @.str412, i32 0, i32 0
  %3818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3817, i64 7)
  %3819 = load %nyx_string*, %nyx_string** %3392
  %3820 = call %nyx_string* @nyx_string_concat(%nyx_string* %3818, %nyx_string* %3819)
  %3821 = call i8* @nyx_string_to_cstr(%nyx_string* %3820)
  %3822 = call %nyx_string* @nyx_exec(i8* %3821)
  br label %merge679
else678:
  br label %merge679
merge679:
  %3823 = alloca i64
  store i64 0, i64* %3823
  %3824 = alloca i64
  store i64 0, i64* %3824
  %3825 = call i8* @llvm.stacksave()
  br label %while_cond680
while_cond680:
  %3826 = load i64, i64* %3824
  %3827 = load { i64, i8* }*, { i64, i8* }** %3680
  %3828 = call i64 @nyx_array_length({ i64, i8* }* %3827)
  %3829 = icmp slt i64 %3826, %3828
  br i1 %3829, label %while_body681, label %while_end682
while_body681:
  call void @llvm.stackrestore(i8* %3825)
  %3830 = load { i64, i8* }*, { i64, i8* }** %3680
  %3831 = load i64, i64* %3824
  %3832 = call i64 @nyx_array_get({ i64, i8* }* %3830, i64 %3831)
  %3833 = inttoptr i64 %3832 to %TestResult*
  %3834 = load %TestResult, %TestResult* %3833
  %3835 = alloca %TestResult
  store %TestResult %3834, %TestResult* %3835
  %3836 = getelementptr %TestResult, %TestResult* %3835, i32 0, i32 4
  %3837 = load i1, i1* %3836
  %3838 = xor i1 %3837, true
  br i1 %3838, label %then683, label %else684
then683:
  %3839 = load i64, i64* %3823
  %3840 = add i64 %3839, 1
  store i64 %3840, i64* %3823
  br label %merge685
else684:
  br label %merge685
merge685:
  %3841 = load i64, i64* %3824
  %3842 = add i64 %3841, 1
  store i64 %3842, i64* %3824
  br label %while_cond680
while_end682:
  %3843 = alloca i1
  store i1 true, i1* %3843
  %3844 = load i64, i64* %3686
  %3845 = icmp sgt i64 %3844, 0
  br i1 %3845, label %sc_or_end687, label %sc_or_rhs686
sc_or_rhs686:
  %3846 = load i64, i64* %3823
  %3847 = icmp sgt i64 %3846, 0
  store i1 %3847, i1* %3843
  br label %sc_or_end687
sc_or_end687:
  %3848 = load i1, i1* %3843
  br i1 %3848, label %then688, label %else689
then688:
  ret i64 1
else689:
  br label %merge690
merge690:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %3849 = sub i64 0, 9223372036854775808
  store i64 %3849, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

