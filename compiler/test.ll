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
@.str122 = private unnamed_addr constant [2 x i8] c",\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [2 x i8] c",\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [2 x i8] c",\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [2 x i8] c",\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [16 x i8] c" NYX_LIB_SELF=\22\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [2 x i8] c" \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [2 x i8] c"=\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [22 x i8] c" ./nyx_bootstrap ) > \00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [36 x i8] c" 2>&1 || { rc=$?; nyx_pista $rc >> \00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [13 x i8] c"; exit 1; }\0a\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [15 x i8] c"trap 'rm -rf \22\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [27 x i8] c"\22; exit 130' INT TERM HUP\0a\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [42 x i8] c"SRC=\22$(mktemp /tmp/nyx_test_src_XXXXXX)\22\0a\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [2 x i8] c"/\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [2 x i8] c" \00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [4 x i8] c" > \00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [1 x i8] c"\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [3 x i8] c" (\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [3 x i8] c" (\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [1 x i8] c"\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [9 x i8] c"version \00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [1 x i8] c"\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [1 x i8] c"\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [1 x i8] c"\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [1 x i8] c"\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [2 x i8] c"0\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [1 x i8] c"\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [3 x i8] c"  \00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [4 x i8] c"   \00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [2 x i8] c":\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c";\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [1 x i8] c"\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [2 x i8] c"[\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [2 x i8] c"]\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [2 x i8] c",\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [2 x i8] c"1\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [4 x i8] c"src\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [1 x i8] c"\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [1 x i8] c"\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [1 x i8] c"\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c"/\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"1\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [2 x i8] c"/\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [1 x i8] c"\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [2 x i8] c"1\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [6 x i8] c"async\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [5 x i8] c"main\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [3 x i8] c"no\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [3 x i8] c"si\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [1 x i8] c"\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [2 x i8] c"0\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [3 x i8] c"si\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [2 x i8] c"1\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [5 x i8] c"    \00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [2 x i8] c":\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [2 x i8] c" \00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [2 x i8] c",\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [3 x i8] c"  \00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [3 x i8] c": \00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [2 x i8] c"/\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [3 x i8] c" (\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [5 x i8] c"    \00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [2 x i8] c"/\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [66 x i8] c"\22 2>/dev/null && sha256sum nyx_bootstrap 2>/dev/null | cut -c1-12\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [74 x i8] c"\22 2>/dev/null && cat std/*.nx runtime/*.c runtime/*.h 2>/dev/null | cksum\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [18 x i8] c"  compiler: nyx v\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [17 x i8] c" (nyx_bootstrap \00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [2 x i8] c")\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [1 x i8] c"\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [2 x i8] c" \00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [2 x i8] c"-\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [1 x i8] c"\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [1 x i8] c"\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [1 x i8] c"\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [1 x i8] c"\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [1 x i8] c"\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [1 x i8] c"\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [1 x i8] c"\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [1 x i8] c"\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [2 x i8] c"/\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [1 x i8] c"\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [1 x i8] c"\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [1 x i8] c"\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [1 x i8] c"\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [33 x i8] c"mktemp /tmp/nyx_test_libs_XXXXXX\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [1 x i8] c"\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [1 x i8] c"\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [1 x i8] c"\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [48 x i8] c"  ⚠ EL TOOLCHAIN CAMBIÓ DURANTE LA CORRIDA (\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [2 x i8] c")\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [31 x i8] c"    compilador: nyx_bootstrap \00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [53 x i8] c"    compilador igual; cambió la stdlib o el runtime\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [71 x i8] c"    Algunos archivos se probaron con una versión y otros con la otra:\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [69 x i8] c"    este resultado no sirve para integrar. Vuelve a correr la suite.\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str416.c = internal global %nyx_string* null
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
  %1392 = alloca i1
  store i1 false, i1* %1392
  %1393 = load %nyx_string*, %nyx_string** %1317
  %1394 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1394, i64 0)
  %1396 = call i1 @nyx_string_equals(%nyx_string* %1393, %nyx_string* %1395)
  %1397 = xor i1 %1396, true
  br i1 %1397, label %sc_and_rhs321, label %sc_and_end322
sc_and_rhs321:
  %1398 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1398, i64 1)
  %1400 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1401 = load %nyx_string*, %nyx_string** %1400
  %1402 = call %nyx_string* @nyx_string_concat(%nyx_string* %1399, %nyx_string* %1401)
  %1403 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1403, i64 1)
  %1405 = call %nyx_string* @nyx_string_concat(%nyx_string* %1402, %nyx_string* %1404)
  %1406 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1406, i64 1)
  %1408 = load %nyx_string*, %nyx_string** %1317
  %1409 = call %nyx_string* @nyx_string_concat(%nyx_string* %1407, %nyx_string* %1408)
  %1410 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1410, i64 1)
  %1412 = call %nyx_string* @nyx_string_concat(%nyx_string* %1409, %nyx_string* %1411)
  %1413 = call i1 @nyx_string_contains(%nyx_string* %1405, %nyx_string* %1412)
  store i1 %1413, i1* %1392
  br label %sc_and_end322
sc_and_end322:
  %1414 = load i1, i1* %1392
  br i1 %1414, label %then323, label %else324
then323:
  %1415 = load %nyx_string*, %nyx_string** %1320
  %1416 = getelementptr [16 x i8], [16 x i8]* @.str126, i32 0, i32 0
  %1417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1416, i64 15)
  %1418 = call %nyx_string* @nyx_string_concat(%nyx_string* %1415, %nyx_string* %1417)
  %1419 = load %nyx_string*, %nyx_string** %1317
  %1420 = call %nyx_string* @nyx_string_concat(%nyx_string* %1418, %nyx_string* %1419)
  %1421 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %1422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1421, i64 1)
  %1423 = call %nyx_string* @nyx_string_concat(%nyx_string* %1420, %nyx_string* %1422)
  store %nyx_string* %1423, %nyx_string** %1320
  br label %merge325
else324:
  br label %merge325
merge325:
  %1424 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1425 = load %nyx_string*, %nyx_string** %1424
  %1426 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1427 = load %nyx_string*, %nyx_string** %1426
  %1428 = getelementptr [2 x i8], [2 x i8]* @.str128, i32 0, i32 0
  %1429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1428, i64 1)
  %1430 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1427, %nyx_string* %1429)
  %1431 = alloca { i64, i8* }*
  store { i64, i8* }* %1430, { i64, i8* }** %1431
  %1432 = alloca i64
  store i64 0, i64* %1432
  %1433 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1433, i64 1)
  %1435 = alloca %nyx_string*
  store %nyx_string* %1434, %nyx_string** %1435
  %1436 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1436, i64 1)
  %1438 = alloca %nyx_string*
  store %nyx_string* %1437, %nyx_string** %1438
  %1439 = getelementptr [3 x i8], [3 x i8]* @.str131, i32 0, i32 0
  %1440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1439, i64 2)
  %1441 = alloca %nyx_string*
  store %nyx_string* %1440, %nyx_string** %1441
  %1442 = call i8* @llvm.stacksave()
  br label %while_cond326
while_cond326:
  %1443 = load i64, i64* %1432
  %1444 = load { i64, i8* }*, { i64, i8* }** %1431
  %1445 = call i64 @nyx_array_length({ i64, i8* }* %1444)
  %1446 = icmp slt i64 %1443, %1445
  br i1 %1446, label %while_body327, label %while_end328
while_body327:
  call void @llvm.stackrestore(i8* %1442)
  %1447 = load { i64, i8* }*, { i64, i8* }** %1431
  %1448 = load i64, i64* %1432
  %1449 = call i64 @nyx_array_get_checked({ i64, i8* }* %1447, i64 %1448, i64 2)
  %1450 = inttoptr i64 %1449 to %nyx_string*
  %1451 = alloca %nyx_string*
  store %nyx_string* %1450, %nyx_string** %1451
  %1452 = load %nyx_string*, %nyx_string** %1451
  %1453 = load %nyx_string*, %nyx_string** %1435
  %1454 = call i64 @nyx_string_index_of(%nyx_string* %1452, %nyx_string* %1453)
  %1455 = alloca i64
  store i64 %1454, i64* %1455
  %1456 = load i64, i64* %1455
  %1457 = icmp sgt i64 %1456, 0
  br i1 %1457, label %then329, label %else330
then329:
  %1458 = load %nyx_string*, %nyx_string** %1451
  %1459 = load i64, i64* %1455
  %1460 = call %nyx_string* @nyx_string_substring(%nyx_string* %1458, i64 0, i64 %1459)
  %1461 = alloca %nyx_string*
  store %nyx_string* %1460, %nyx_string** %1461
  %1462 = load %nyx_string*, %nyx_string** %1461
  %1463 = load %nyx_string*, %nyx_string** %1317
  %1464 = call i1 @nyx_string_equals(%nyx_string* %1462, %nyx_string* %1463)
  %1465 = xor i1 %1464, true
  br i1 %1465, label %then332, label %else333
then332:
  %1466 = load %nyx_string*, %nyx_string** %1323
  %1467 = load %nyx_string*, %nyx_string** %1438
  %1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %1466, %nyx_string* %1467)
  %1469 = load %nyx_string*, %nyx_string** %1451
  %1470 = load i64, i64* %1455
  %1471 = add i64 %1470, 1
  %1472 = load %nyx_string*, %nyx_string** %1451
  %1473 = call i64 @nyx_string_byte_length(%nyx_string* %1472)
  %1474 = call %nyx_string* @nyx_string_substring(%nyx_string* %1469, i64 %1471, i64 %1473)
  %1475 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1474)
  %1476 = load %nyx_string*, %nyx_string** %1441
  %1477 = call %nyx_string* @nyx_string_concat(%nyx_string* %1475, %nyx_string* %1476)
  store %nyx_string* %1477, %nyx_string** %1323
  br label %merge334
else333:
  br label %merge334
merge334:
  br label %merge331
else330:
  br label %merge331
merge331:
  %1478 = load i64, i64* %1432
  %1479 = add i64 %1478, 1
  store i64 %1479, i64* %1432
  br label %while_cond326
while_end328:
  br label %merge306
else305:
  br label %merge306
merge306:
  %1480 = getelementptr [55 x i8], [55 x i8]* @.str132, i32 0, i32 0
  %1481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1480, i64 54)
  %1482 = load %nyx_string*, %nyx_string** %1142
  %1483 = call %nyx_string* @nyx_string_concat(%nyx_string* %1481, %nyx_string* %1482)
  %1484 = getelementptr [37 x i8], [37 x i8]* @.str133, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1484, i64 36)
  %1486 = call %nyx_string* @nyx_string_concat(%nyx_string* %1483, %nyx_string* %1485)
  %1487 = load %nyx_string*, %nyx_string** %file.ptr
  %1488 = call %nyx_string* @nyx_string_concat(%nyx_string* %1486, %nyx_string* %1487)
  %1489 = getelementptr [2 x i8], [2 x i8]* @.str134, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1489, i64 1)
  %1491 = call %nyx_string* @nyx_string_concat(%nyx_string* %1488, %nyx_string* %1490)
  %1492 = load %nyx_string*, %nyx_string** %1270
  %1493 = call %nyx_string* @nyx_string_concat(%nyx_string* %1491, %nyx_string* %1492)
  %1494 = load %nyx_string*, %nyx_string** %1320
  %1495 = call %nyx_string* @nyx_string_concat(%nyx_string* %1493, %nyx_string* %1494)
  %1496 = getelementptr [22 x i8], [22 x i8]* @.str135, i32 0, i32 0
  %1497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1496, i64 21)
  %1498 = call %nyx_string* @nyx_string_concat(%nyx_string* %1495, %nyx_string* %1497)
  %1499 = load %nyx_string*, %nyx_string** %1157
  %1500 = call %nyx_string* @nyx_string_concat(%nyx_string* %1498, %nyx_string* %1499)
  %1501 = getelementptr [36 x i8], [36 x i8]* @.str136, i32 0, i32 0
  %1502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1501, i64 35)
  %1503 = call %nyx_string* @nyx_string_concat(%nyx_string* %1500, %nyx_string* %1502)
  %1504 = load %nyx_string*, %nyx_string** %1157
  %1505 = call %nyx_string* @nyx_string_concat(%nyx_string* %1503, %nyx_string* %1504)
  %1506 = getelementptr [13 x i8], [13 x i8]* @.str137, i32 0, i32 0
  %1507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1506, i64 12)
  %1508 = call %nyx_string* @nyx_string_concat(%nyx_string* %1505, %nyx_string* %1507)
  %1509 = alloca %nyx_string*
  store %nyx_string* %1508, %nyx_string** %1509
  %1510 = load %nyx_string*, %nyx_string** %1224
  %1511 = load %nyx_string*, %nyx_string** %1509
  %1512 = call %nyx_string* @nyx_string_concat(%nyx_string* %1510, %nyx_string* %1511)
  %1513 = alloca %nyx_string*
  store %nyx_string* %1512, %nyx_string** %1513
  %1514 = getelementptr [15 x i8], [15 x i8]* @.str138, i32 0, i32 0
  %1515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1514, i64 14)
  %1516 = load %nyx_string*, %nyx_string** %1152
  %1517 = call %nyx_string* @nyx_string_concat(%nyx_string* %1515, %nyx_string* %1516)
  %1518 = getelementptr [27 x i8], [27 x i8]* @.str139, i32 0, i32 0
  %1519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1518, i64 26)
  %1520 = call %nyx_string* @nyx_string_concat(%nyx_string* %1517, %nyx_string* %1519)
  %1521 = alloca %nyx_string*
  store %nyx_string* %1520, %nyx_string** %1521
  %1522 = load %nyx_string*, %nyx_string** %1314
  %1523 = load %nyx_string*, %nyx_string** %1521
  %1524 = call %nyx_string* @nyx_string_concat(%nyx_string* %1522, %nyx_string* %1523)
  %1525 = getelementptr [42 x i8], [42 x i8]* @.str140, i32 0, i32 0
  %1526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1525, i64 41)
  %1527 = call %nyx_string* @nyx_string_concat(%nyx_string* %1524, %nyx_string* %1526)
  %1528 = getelementptr [17 x i8], [17 x i8]* @.str141, i32 0, i32 0
  %1529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1528, i64 16)
  %1530 = call %nyx_string* @nyx_string_concat(%nyx_string* %1527, %nyx_string* %1529)
  %1531 = getelementptr [31 x i8], [31 x i8]* @.str142, i32 0, i32 0
  %1532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1531, i64 30)
  %1533 = call %nyx_string* @nyx_string_concat(%nyx_string* %1530, %nyx_string* %1532)
  %1534 = getelementptr [17 x i8], [17 x i8]* @.str143, i32 0, i32 0
  %1535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1534, i64 16)
  %1536 = call %nyx_string* @nyx_string_concat(%nyx_string* %1533, %nyx_string* %1535)
  %1537 = getelementptr [5 x i8], [5 x i8]* @.str144, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1537, i64 4)
  %1539 = call %nyx_string* @nyx_string_concat(%nyx_string* %1536, %nyx_string* %1538)
  %1540 = load %nyx_string*, %nyx_string** %1142
  %1541 = call %nyx_string* @nyx_string_concat(%nyx_string* %1539, %nyx_string* %1540)
  %1542 = getelementptr [2 x i8], [2 x i8]* @.str145, i32 0, i32 0
  %1543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1542, i64 1)
  %1544 = call %nyx_string* @nyx_string_concat(%nyx_string* %1541, %nyx_string* %1543)
  %1545 = load %nyx_string*, %nyx_string** %file.ptr
  %1546 = call %nyx_string* @nyx_string_concat(%nyx_string* %1544, %nyx_string* %1545)
  %1547 = getelementptr [12 x i8], [12 x i8]* @.str146, i32 0, i32 0
  %1548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1547, i64 11)
  %1549 = call %nyx_string* @nyx_string_concat(%nyx_string* %1546, %nyx_string* %1548)
  %1550 = getelementptr [5 x i8], [5 x i8]* @.str147, i32 0, i32 0
  %1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1550, i64 4)
  %1552 = call %nyx_string* @nyx_string_concat(%nyx_string* %1549, %nyx_string* %1551)
  %1553 = load %nyx_string*, %nyx_string** %1120
  %1554 = call %nyx_string* @nyx_string_concat(%nyx_string* %1552, %nyx_string* %1553)
  %1555 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %1556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1555, i64 2)
  %1557 = call %nyx_string* @nyx_string_concat(%nyx_string* %1554, %nyx_string* %1556)
  %1558 = getelementptr [51 x i8], [51 x i8]* @.str149, i32 0, i32 0
  %1559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1558, i64 50)
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1557, %nyx_string* %1559)
  %1561 = load %nyx_string*, %nyx_string** %1120
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1560, %nyx_string* %1561)
  %1563 = getelementptr [35 x i8], [35 x i8]* @.str150, i32 0, i32 0
  %1564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1563, i64 34)
  %1565 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1564)
  %1566 = load %nyx_string*, %nyx_string** %1513
  %1567 = call %nyx_string* @nyx_string_concat(%nyx_string* %1565, %nyx_string* %1566)
  %1568 = getelementptr [7 x i8], [7 x i8]* @.str151, i32 0, i32 0
  %1569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1568, i64 6)
  %1570 = call %nyx_string* @nyx_string_concat(%nyx_string* %1567, %nyx_string* %1569)
  %1571 = load %nyx_string*, %nyx_string** %1165
  %1572 = call %nyx_string* @nyx_string_concat(%nyx_string* %1570, %nyx_string* %1571)
  %1573 = load %nyx_string*, %nyx_string** %1273
  %1574 = call %nyx_string* @nyx_string_concat(%nyx_string* %1572, %nyx_string* %1573)
  %1575 = getelementptr [40 x i8], [40 x i8]* @.str152, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1575, i64 39)
  %1577 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1576)
  %1578 = load %nyx_string*, %nyx_string** %1323
  %1579 = call %nyx_string* @nyx_string_concat(%nyx_string* %1577, %nyx_string* %1578)
  %1580 = load %nyx_string*, %nyx_string** %1193
  %1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %1579, %nyx_string* %1580)
  %1582 = getelementptr [44 x i8], [44 x i8]* @.str153, i32 0, i32 0
  %1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1582, i64 43)
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1581, %nyx_string* %1583)
  %1585 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1585, i64 3)
  %1587 = call %nyx_string* @nyx_string_concat(%nyx_string* %1584, %nyx_string* %1586)
  %1588 = load %nyx_string*, %nyx_string** %1162
  %1589 = call %nyx_string* @nyx_string_concat(%nyx_string* %1587, %nyx_string* %1588)
  %1590 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1590, i64 5)
  %1592 = call %nyx_string* @nyx_string_concat(%nyx_string* %1589, %nyx_string* %1591)
  %1593 = load %nyx_string*, %nyx_string** %1157
  %1594 = call %nyx_string* @nyx_string_concat(%nyx_string* %1592, %nyx_string* %1593)
  %1595 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1595, i64 1)
  %1597 = call %nyx_string* @nyx_string_concat(%nyx_string* %1594, %nyx_string* %1596)
  %1598 = getelementptr [57 x i8], [57 x i8]* @.str157, i32 0, i32 0
  %1599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1598, i64 56)
  %1600 = call %nyx_string* @nyx_string_concat(%nyx_string* %1597, %nyx_string* %1599)
  %1601 = load %nyx_string*, %nyx_string** %1276
  %1602 = call %nyx_string* @nyx_string_concat(%nyx_string* %1600, %nyx_string* %1601)
  %1603 = getelementptr [9 x i8], [9 x i8]* @.str158, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1603, i64 8)
  %1605 = call %nyx_string* @nyx_string_concat(%nyx_string* %1602, %nyx_string* %1604)
  %1606 = load %nyx_string*, %nyx_string** %1146
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1606)
  %1608 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %1609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1608, i64 1)
  %1610 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1609)
  %1611 = load %nyx_string*, %nyx_string** %1162
  %1612 = call %nyx_string* @nyx_string_concat(%nyx_string* %1610, %nyx_string* %1611)
  %1613 = getelementptr [4 x i8], [4 x i8]* @.str160, i32 0, i32 0
  %1614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1613, i64 3)
  %1615 = call %nyx_string* @nyx_string_concat(%nyx_string* %1612, %nyx_string* %1614)
  %1616 = load %nyx_string*, %nyx_string** %1157
  %1617 = call %nyx_string* @nyx_string_concat(%nyx_string* %1615, %nyx_string* %1616)
  %1618 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1618, i64 6)
  %1620 = call %nyx_string* @nyx_string_concat(%nyx_string* %1617, %nyx_string* %1619)
  %1621 = getelementptr [14 x i8], [14 x i8]* @.str162, i32 0, i32 0
  %1622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1621, i64 13)
  %1623 = call %nyx_string* @nyx_string_concat(%nyx_string* %1620, %nyx_string* %1622)
  %1624 = getelementptr [7 x i8], [7 x i8]* @.str163, i32 0, i32 0
  %1625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1624, i64 6)
  %1626 = call %nyx_string* @nyx_string_concat(%nyx_string* %1623, %nyx_string* %1625)
  %1627 = load %nyx_string*, %nyx_string** %1162
  %1628 = call %nyx_string* @nyx_string_concat(%nyx_string* %1626, %nyx_string* %1627)
  %1629 = getelementptr [2 x i8], [2 x i8]* @.str164, i32 0, i32 0
  %1630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1629, i64 1)
  %1631 = call %nyx_string* @nyx_string_concat(%nyx_string* %1628, %nyx_string* %1630)
  %1632 = getelementptr [17 x i8], [17 x i8]* @.str165, i32 0, i32 0
  %1633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1632, i64 16)
  %1634 = call %nyx_string* @nyx_string_concat(%nyx_string* %1631, %nyx_string* %1633)
  %1635 = alloca %nyx_string*
  store %nyx_string* %1634, %nyx_string** %1635
  %1636 = load %nyx_string*, %nyx_string** %1152
  %1637 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1637, i64 7)
  %1639 = call %nyx_string* @nyx_string_concat(%nyx_string* %1636, %nyx_string* %1638)
  %1640 = alloca %nyx_string*
  store %nyx_string* %1639, %nyx_string** %1640
  %1641 = load %nyx_string*, %nyx_string** %1640
  %1642 = load %nyx_string*, %nyx_string** %1635
  %1643 = call i8* @nyx_string_to_cstr(%nyx_string* %1641)
  %1644 = call i1 @nyx_write_file_safe(i8* %1643, %nyx_string* %1642)
  %1645 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1645, i64 5)
  %1647 = load %nyx_string*, %nyx_string** %1640
  %1648 = call %nyx_string* @nyx_string_concat(%nyx_string* %1646, %nyx_string* %1647)
  %1649 = call i8* @nyx_string_to_cstr(%nyx_string* %1648)
  %1650 = call i64 @nyx_exec_code(i8* %1649)
  %1651 = alloca i64
  store i64 %1650, i64* %1651
  %1652 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %1653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1652, i64 0)
  %1654 = alloca %nyx_string*
  store %nyx_string* %1653, %nyx_string** %1654
  %1655 = load %nyx_string*, %nyx_string** %1157
  %1656 = call i8* @nyx_string_to_cstr(%nyx_string* %1655)
  %1657 = call i1 @nyx_file_exists(i8* %1656)
  br i1 %1657, label %then335, label %else336
then335:
  %1658 = load %nyx_string*, %nyx_string** %1157
  %1659 = call i8* @nyx_string_to_cstr(%nyx_string* %1658)
  %1660 = call %nyx_string* @nyx_read_file(i8* %1659)
  store %nyx_string* %1660, %nyx_string** %1654
  br label %merge337
else336:
  br label %merge337
merge337:
  %1661 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1661, i64 7)
  %1663 = load %nyx_string*, %nyx_string** %1152
  %1664 = call %nyx_string* @nyx_string_concat(%nyx_string* %1662, %nyx_string* %1663)
  %1665 = call i8* @nyx_string_to_cstr(%nyx_string* %1664)
  %1666 = call %nyx_string* @nyx_exec(i8* %1665)
  %1667 = alloca i64
  store i64 0, i64* %1667
  %1668 = alloca i64
  store i64 0, i64* %1668
  %1669 = load %nyx_string*, %nyx_string** %1654
  %1670 = getelementptr [2 x i8], [2 x i8]* @.str170, i32 0, i32 0
  %1671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1670, i64 1)
  %1672 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1669, %nyx_string* %1671)
  %1673 = alloca { i64, i8* }*
  store { i64, i8* }* %1672, { i64, i8* }** %1673
  %1674 = alloca i64
  store i64 0, i64* %1674
  %1675 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %1676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1675, i64 5)
  %1677 = alloca %nyx_string*
  store %nyx_string* %1676, %nyx_string** %1677
  %1678 = getelementptr [6 x i8], [6 x i8]* @.str172, i32 0, i32 0
  %1679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1678, i64 5)
  %1680 = alloca %nyx_string*
  store %nyx_string* %1679, %nyx_string** %1680
  %1681 = call i8* @llvm.stacksave()
  br label %while_cond338
while_cond338:
  %1682 = load i64, i64* %1674
  %1683 = load { i64, i8* }*, { i64, i8* }** %1673
  %1684 = call i64 @nyx_array_length({ i64, i8* }* %1683)
  %1685 = icmp slt i64 %1682, %1684
  br i1 %1685, label %while_body339, label %while_end340
while_body339:
  call void @llvm.stackrestore(i8* %1681)
  %1686 = load { i64, i8* }*, { i64, i8* }** %1673
  %1687 = load i64, i64* %1674
  %1688 = call i64 @nyx_array_get_checked({ i64, i8* }* %1686, i64 %1687, i64 2)
  %1689 = inttoptr i64 %1688 to %nyx_string*
  %1690 = alloca %nyx_string*
  store %nyx_string* %1689, %nyx_string** %1690
  %1691 = load %nyx_string*, %nyx_string** %1690
  %1692 = load %nyx_string*, %nyx_string** %1677
  %1693 = call i1 @nyx_string_contains(%nyx_string* %1691, %nyx_string* %1692)
  br i1 %1693, label %then341, label %else342
then341:
  %1694 = load i64, i64* %1667
  %1695 = add i64 %1694, 1
  store i64 %1695, i64* %1667
  br label %merge343
else342:
  %1696 = load %nyx_string*, %nyx_string** %1690
  %1697 = load %nyx_string*, %nyx_string** %1680
  %1698 = call i1 @nyx_string_contains(%nyx_string* %1696, %nyx_string* %1697)
  br i1 %1698, label %then344, label %else345
then344:
  %1699 = load i64, i64* %1668
  %1700 = add i64 %1699, 1
  store i64 %1700, i64* %1668
  br label %merge346
else345:
  br label %merge346
merge346:
  br label %merge343
merge343:
  %1701 = load i64, i64* %1674
  %1702 = add i64 %1701, 1
  store i64 %1702, i64* %1674
  br label %while_cond338
while_end340:
  %1703 = getelementptr %TestResult, %TestResult* null, i32 1
  %1704 = ptrtoint %TestResult* %1703 to i64
  %1705 = call i8* @GC_malloc(i64 %1704)
  %1706 = bitcast i8* %1705 to %TestResult*
  %1707 = load %nyx_string*, %nyx_string** %file.ptr
  %1708 = getelementptr %TestResult, %TestResult* %1706, i32 0, i32 0
  store %nyx_string* %1707, %nyx_string** %1708
  %1709 = load i64, i64* %1667
  %1710 = getelementptr %TestResult, %TestResult* %1706, i32 0, i32 1
  store i64 %1709, i64* %1710
  %1711 = load i64, i64* %1668
  %1712 = getelementptr %TestResult, %TestResult* %1706, i32 0, i32 2
  store i64 %1711, i64* %1712
  %1713 = load %nyx_string*, %nyx_string** %1654
  %1714 = getelementptr %TestResult, %TestResult* %1706, i32 0, i32 3
  store %nyx_string* %1713, %nyx_string** %1714
  %1715 = alloca i1
  store i1 false, i1* %1715
  %1716 = load i64, i64* %1651
  %1717 = icmp eq i64 %1716, 0
  br i1 %1717, label %sc_and_rhs347, label %sc_and_end348
sc_and_rhs347:
  %1718 = load i64, i64* %1668
  %1719 = icmp eq i64 %1718, 0
  store i1 %1719, i1* %1715
  br label %sc_and_end348
sc_and_end348:
  %1720 = load i1, i1* %1715
  %1721 = getelementptr %TestResult, %TestResult* %1706, i32 0, i32 4
  store i1 %1720, i1* %1721
  %1722 = load %TestResult, %TestResult* %1706
  ret %TestResult %1722
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1723 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1724 = load i1, i1* %1723
  br i1 %1724, label %then349, label %else350
then349:
  %1725 = getelementptr [9 x i8], [9 x i8]* @.str173, i32 0, i32 0
  %1726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1725, i64 8)
  %1727 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1728 = load %nyx_string*, %nyx_string** %1727
  %1729 = call %nyx_string* @nyx_string_concat(%nyx_string* %1726, %nyx_string* %1728)
  %1730 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1730, i64 2)
  %1732 = call %nyx_string* @nyx_string_concat(%nyx_string* %1729, %nyx_string* %1731)
  %1733 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1734 = load i64, i64* %1733
  %1735 = call %nyx_string* @nyx_string_from_int(i64 %1734)
  %1736 = call %nyx_string* @nyx_string_concat(%nyx_string* %1732, %nyx_string* %1735)
  %1737 = getelementptr [8 x i8], [8 x i8]* @.str175, i32 0, i32 0
  %1738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1737, i64 7)
  %1739 = call %nyx_string* @nyx_string_concat(%nyx_string* %1736, %nyx_string* %1738)
  %1740 = call i8* @nyx_string_to_cstr(%nyx_string* %1739)
  call void @nyx_print_string(i8* %1740)
  %1741 = load i1, i1* %verbose.ptr
  br i1 %1741, label %then352, label %else353
then352:
  %1742 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1743 = load %nyx_string*, %nyx_string** %1742
  %1744 = call i8* @nyx_string_to_cstr(%nyx_string* %1743)
  call void @nyx_print_string(i8* %1744)
  br label %merge354
else353:
  br label %merge354
merge354:
  br label %merge351
else350:
  %1745 = getelementptr [9 x i8], [9 x i8]* @.str176, i32 0, i32 0
  %1746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1745, i64 8)
  %1747 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1748 = load %nyx_string*, %nyx_string** %1747
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1746, %nyx_string* %1748)
  %1750 = getelementptr [3 x i8], [3 x i8]* @.str177, i32 0, i32 0
  %1751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1750, i64 2)
  %1752 = call %nyx_string* @nyx_string_concat(%nyx_string* %1749, %nyx_string* %1751)
  %1753 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1754 = load i64, i64* %1753
  %1755 = call %nyx_string* @nyx_string_from_int(i64 %1754)
  %1756 = call %nyx_string* @nyx_string_concat(%nyx_string* %1752, %nyx_string* %1755)
  %1757 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %1758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1757, i64 9)
  %1759 = call %nyx_string* @nyx_string_concat(%nyx_string* %1756, %nyx_string* %1758)
  %1760 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1761 = load i64, i64* %1760
  %1762 = call %nyx_string* @nyx_string_from_int(i64 %1761)
  %1763 = call %nyx_string* @nyx_string_concat(%nyx_string* %1759, %nyx_string* %1762)
  %1764 = getelementptr [9 x i8], [9 x i8]* @.str179, i32 0, i32 0
  %1765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1764, i64 8)
  %1766 = call %nyx_string* @nyx_string_concat(%nyx_string* %1763, %nyx_string* %1765)
  %1767 = call i8* @nyx_string_to_cstr(%nyx_string* %1766)
  call void @nyx_print_string(i8* %1767)
  %1768 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1769 = load %nyx_string*, %nyx_string** %1768
  %1770 = call i8* @nyx_string_to_cstr(%nyx_string* %1769)
  call void @nyx_print_string(i8* %1770)
  br label %merge351
merge351:
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
  %1771 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %1772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1771, i64 0)
  %1773 = call i8* @nyx_string_to_cstr(%nyx_string* %1772)
  call void @nyx_print_string(i8* %1773)
  %1774 = getelementptr [36 x i8], [36 x i8]* @.str181, i32 0, i32 0
  %1775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1774, i64 35)
  %1776 = call i8* @nyx_string_to_cstr(%nyx_string* %1775)
  call void @nyx_print_string(i8* %1776)
  %1777 = alloca i64
  store i64 0, i64* %1777
  %1778 = alloca i64
  store i64 0, i64* %1778
  %1779 = alloca i64
  store i64 0, i64* %1779
  %1780 = call i8* @llvm.stacksave()
  br label %while_cond355
while_cond355:
  %1781 = load i64, i64* %1779
  %1782 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1783 = call i64 @nyx_array_length({ i64, i8* }* %1782)
  %1784 = icmp slt i64 %1781, %1783
  br i1 %1784, label %while_body356, label %while_end357
while_body356:
  call void @llvm.stackrestore(i8* %1780)
  %1785 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1786 = load i64, i64* %1779
  %1787 = call i64 @nyx_array_get({ i64, i8* }* %1785, i64 %1786)
  %1788 = inttoptr i64 %1787 to %TestResult*
  %1789 = load %TestResult, %TestResult* %1788
  %1790 = alloca %TestResult
  store %TestResult %1789, %TestResult* %1790
  %1791 = getelementptr %TestResult, %TestResult* %1790, i32 0, i32 4
  %1792 = load i1, i1* %1791
  br i1 %1792, label %then358, label %else359
then358:
  %1793 = load i64, i64* %1777
  %1794 = add i64 %1793, 1
  store i64 %1794, i64* %1777
  br label %merge360
else359:
  %1795 = load i64, i64* %1778
  %1796 = add i64 %1795, 1
  store i64 %1796, i64* %1778
  br label %merge360
merge360:
  %1797 = load i64, i64* %1779
  %1798 = add i64 %1797, 1
  store i64 %1798, i64* %1779
  br label %while_cond355
while_end357:
  %1799 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1799, i64 10)
  %1801 = load i64, i64* %1777
  %1802 = call %nyx_string* @nyx_string_from_int(i64 %1801)
  %1803 = call %nyx_string* @nyx_string_concat(%nyx_string* %1800, %nyx_string* %1802)
  %1804 = getelementptr [10 x i8], [10 x i8]* @.str183, i32 0, i32 0
  %1805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1804, i64 9)
  %1806 = call %nyx_string* @nyx_string_concat(%nyx_string* %1803, %nyx_string* %1805)
  %1807 = load i64, i64* %1778
  %1808 = call %nyx_string* @nyx_string_from_int(i64 %1807)
  %1809 = call %nyx_string* @nyx_string_concat(%nyx_string* %1806, %nyx_string* %1808)
  %1810 = getelementptr [10 x i8], [10 x i8]* @.str184, i32 0, i32 0
  %1811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1810, i64 9)
  %1812 = call %nyx_string* @nyx_string_concat(%nyx_string* %1809, %nyx_string* %1811)
  %1813 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1814 = call i64 @nyx_array_length({ i64, i8* }* %1813)
  %1815 = call %nyx_string* @nyx_string_from_int(i64 %1814)
  %1816 = call %nyx_string* @nyx_string_concat(%nyx_string* %1812, %nyx_string* %1815)
  %1817 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1817, i64 7)
  %1819 = call %nyx_string* @nyx_string_concat(%nyx_string* %1816, %nyx_string* %1818)
  %1820 = call i8* @nyx_string_to_cstr(%nyx_string* %1819)
  call void @nyx_print_string(i8* %1820)
  %1821 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1821, i64 10)
  %1823 = load i64, i64* %total_passed.ptr
  %1824 = call %nyx_string* @nyx_string_from_int(i64 %1823)
  %1825 = call %nyx_string* @nyx_string_concat(%nyx_string* %1822, %nyx_string* %1824)
  %1826 = getelementptr [10 x i8], [10 x i8]* @.str187, i32 0, i32 0
  %1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1826, i64 9)
  %1828 = call %nyx_string* @nyx_string_concat(%nyx_string* %1825, %nyx_string* %1827)
  %1829 = load i64, i64* %total_failed.ptr
  %1830 = call %nyx_string* @nyx_string_from_int(i64 %1829)
  %1831 = call %nyx_string* @nyx_string_concat(%nyx_string* %1828, %nyx_string* %1830)
  %1832 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %1833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1832, i64 9)
  %1834 = call %nyx_string* @nyx_string_concat(%nyx_string* %1831, %nyx_string* %1833)
  %1835 = load i64, i64* %total_passed.ptr
  %1836 = load i64, i64* %total_failed.ptr
  %1837 = add i64 %1835, %1836
  %1838 = call %nyx_string* @nyx_string_from_int(i64 %1837)
  %1839 = call %nyx_string* @nyx_string_concat(%nyx_string* %1834, %nyx_string* %1838)
  %1840 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %1841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1840, i64 7)
  %1842 = call %nyx_string* @nyx_string_concat(%nyx_string* %1839, %nyx_string* %1841)
  %1843 = call i8* @nyx_string_to_cstr(%nyx_string* %1842)
  call void @nyx_print_string(i8* %1843)
  %1844 = alloca i1
  store i1 false, i1* %1844
  %1845 = load i64, i64* %total_failed.ptr
  %1846 = icmp eq i64 %1845, 0
  br i1 %1846, label %sc_and_rhs361, label %sc_and_end362
sc_and_rhs361:
  %1847 = load i64, i64* %1778
  %1848 = icmp eq i64 %1847, 0
  store i1 %1848, i1* %1844
  br label %sc_and_end362
sc_and_end362:
  %1849 = load i1, i1* %1844
  br i1 %1849, label %then363, label %else364
then363:
  %1850 = getelementptr [27 x i8], [27 x i8]* @.str190, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1850, i64 26)
  %1852 = call i8* @nyx_string_to_cstr(%nyx_string* %1851)
  call void @nyx_print_string(i8* %1852)
  br label %merge365
else364:
  %1853 = getelementptr [28 x i8], [28 x i8]* @.str191, i32 0, i32 0
  %1854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1853, i64 27)
  %1855 = call i8* @nyx_string_to_cstr(%nyx_string* %1854)
  call void @nyx_print_string(i8* %1855)
  br label %merge365
merge365:
  %1856 = getelementptr [36 x i8], [36 x i8]* @.str192, i32 0, i32 0
  %1857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1856, i64 35)
  %1858 = call i8* @nyx_string_to_cstr(%nyx_string* %1857)
  call void @nyx_print_string(i8* %1858)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1859 = getelementptr [28 x i8], [28 x i8]* @.str193, i32 0, i32 0
  %1860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1859, i64 27)
  %1861 = call i8* @nyx_string_to_cstr(%nyx_string* %1860)
  %1862 = call %nyx_string* @nyx_exec(i8* %1861)
  %1863 = alloca %nyx_string*
  store %nyx_string* %1862, %nyx_string** %1863
  %1864 = load %nyx_string*, %nyx_string** %1863
  %1865 = getelementptr [9 x i8], [9 x i8]* @.str194, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1865, i64 8)
  %1867 = call i64 @nyx_string_index_of(%nyx_string* %1864, %nyx_string* %1866)
  %1868 = alloca i64
  store i64 %1867, i64* %1868
  %1869 = load i64, i64* %1868
  %1870 = icmp slt i64 %1869, 0
  br i1 %1870, label %then366, label %else367
then366:
  %1871 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1871, i64 0)
  ret %nyx_string* %1872
else367:
  br label %merge368
merge368:
  %1873 = load i64, i64* %1868
  %1874 = add i64 %1873, 8
  %1875 = alloca i64
  store i64 %1874, i64* %1875
  %1876 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %1877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1876, i64 0)
  %1878 = alloca %nyx_string*
  store %nyx_string* %1877, %nyx_string** %1878
  %1879 = call i8* @llvm.stacksave()
  br label %while_cond369
while_cond369:
  %1880 = load i64, i64* %1875
  %1881 = load %nyx_string*, %nyx_string** %1863
  %1882 = call i64 @nyx_string_byte_length(%nyx_string* %1881)
  %1883 = icmp slt i64 %1880, %1882
  br i1 %1883, label %while_body370, label %while_end371
while_body370:
  call void @llvm.stackrestore(i8* %1879)
  %1884 = load %nyx_string*, %nyx_string** %1863
  %1885 = load i64, i64* %1875
  %1886 = call i8 @nyx_string_char_at(%nyx_string* %1884, i64 %1885)
  %1887 = zext i8 %1886 to i64
  %1888 = alloca i64
  store i64 %1887, i64* %1888
  %1889 = alloca i1
  store i1 false, i1* %1889
  %1890 = load i64, i64* %1888
  %1891 = icmp sge i64 %1890, 48
  br i1 %1891, label %sc_and_rhs372, label %sc_and_end373
sc_and_rhs372:
  %1892 = load i64, i64* %1888
  %1893 = icmp sle i64 %1892, 57
  store i1 %1893, i1* %1889
  br label %sc_and_end373
sc_and_end373:
  %1894 = load i1, i1* %1889
  br i1 %1894, label %then374, label %else375
then374:
  %1895 = load %nyx_string*, %nyx_string** %1878
  %1896 = load %nyx_string*, %nyx_string** %1863
  %1897 = load i64, i64* %1875
  %1898 = load i64, i64* %1875
  %1899 = add i64 %1898, 1
  %1900 = call %nyx_string* @nyx_string_substring(%nyx_string* %1896, i64 %1897, i64 %1899)
  %1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %1895, %nyx_string* %1900)
  store %nyx_string* %1901, %nyx_string** %1878
  %1902 = load i64, i64* %1875
  %1903 = add i64 %1902, 1
  store i64 %1903, i64* %1875
  br label %merge376
else375:
  %1904 = load %nyx_string*, %nyx_string** %1863
  %1905 = call i64 @nyx_string_byte_length(%nyx_string* %1904)
  store i64 %1905, i64* %1875
  br label %merge376
merge376:
  br label %while_cond369
while_end371:
  %1906 = load %nyx_string*, %nyx_string** %1878
  ret %nyx_string* %1906
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1907 = getelementptr [10 x i8], [10 x i8]* @.str197, i32 0, i32 0
  %1908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1907, i64 9)
  %1909 = load %nyx_string*, %nyx_string** %path.ptr
  %1910 = call %nyx_string* @nyx_string_concat(%nyx_string* %1908, %nyx_string* %1909)
  %1911 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %1912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1911, i64 1)
  %1913 = call %nyx_string* @nyx_string_concat(%nyx_string* %1910, %nyx_string* %1912)
  %1914 = call i8* @nyx_string_to_cstr(%nyx_string* %1913)
  %1915 = call i64 @nyx_exec_code(i8* %1914)
  %1916 = icmp eq i64 %1915, 0
  ret i1 %1916
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1917 = call %nyx_string* @cov_clang_major()
  %1918 = alloca %nyx_string*
  store %nyx_string* %1917, %nyx_string** %1918
  %1919 = load %nyx_string*, %nyx_string** %1918
  %1920 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %1921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1920, i64 0)
  %1922 = call i1 @nyx_string_equals(%nyx_string* %1919, %nyx_string* %1921)
  %1923 = xor i1 %1922, true
  br i1 %1923, label %then377, label %else378
then377:
  %1924 = getelementptr [26 x i8], [26 x i8]* @.str200, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1924, i64 25)
  %1926 = load %nyx_string*, %nyx_string** %1918
  %1927 = call %nyx_string* @nyx_string_concat(%nyx_string* %1925, %nyx_string* %1926)
  %1928 = getelementptr [13 x i8], [13 x i8]* @.str201, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1928, i64 12)
  %1930 = call %nyx_string* @nyx_string_concat(%nyx_string* %1927, %nyx_string* %1929)
  %1931 = call i8* @nyx_string_to_cstr(%nyx_string* %1930)
  %1932 = call %nyx_string* @nyx_exec(i8* %1931)
  %1933 = call %nyx_string* @nyx_string_trim(%nyx_string* %1932)
  %1934 = alloca %nyx_string*
  store %nyx_string* %1933, %nyx_string** %1934
  %1935 = load %nyx_string*, %nyx_string** %1934
  %1936 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1936, i64 0)
  %1938 = call i1 @nyx_string_equals(%nyx_string* %1935, %nyx_string* %1937)
  %1939 = xor i1 %1938, true
  br i1 %1939, label %then380, label %else381
then380:
  %1940 = load %nyx_string*, %nyx_string** %1934
  ret %nyx_string* %1940
else381:
  br label %merge382
merge382:
  br label %merge379
else378:
  br label %merge379
merge379:
  %1941 = getelementptr [37 x i8], [37 x i8]* @.str203, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1941, i64 36)
  %1943 = call i8* @nyx_string_to_cstr(%nyx_string* %1942)
  %1944 = call %nyx_string* @nyx_exec(i8* %1943)
  %1945 = call %nyx_string* @nyx_string_trim(%nyx_string* %1944)
  ret %nyx_string* %1945
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1946 = call { i64, i8* }* @nyx_array_new_ptr()
  %1947 = alloca { i64, i8* }*
  store { i64, i8* }* %1946, { i64, i8* }** %1947
  %1948 = alloca i64
  store i64 0, i64* %1948
  %1949 = alloca i64
  store i64 0, i64* %1949
  %1950 = call i8* @llvm.stacksave()
  br label %while_cond383
while_cond383:
  %1951 = load i64, i64* %1949
  %1952 = load %nyx_string*, %nyx_string** %line.ptr
  %1953 = call i64 @nyx_string_byte_length(%nyx_string* %1952)
  %1954 = icmp slt i64 %1951, %1953
  br i1 %1954, label %while_body384, label %while_end385
while_body384:
  call void @llvm.stackrestore(i8* %1950)
  %1955 = load %nyx_string*, %nyx_string** %line.ptr
  %1956 = load i64, i64* %1949
  %1957 = call i8 @nyx_string_char_at(%nyx_string* %1955, i64 %1956)
  %1958 = zext i8 %1957 to i64
  %1959 = icmp eq i64 %1958, 9
  br i1 %1959, label %then386, label %else387
then386:
  %1960 = load { i64, i8* }*, { i64, i8* }** %1947
  %1961 = load %nyx_string*, %nyx_string** %line.ptr
  %1962 = load i64, i64* %1948
  %1963 = load i64, i64* %1949
  %1964 = call %nyx_string* @nyx_string_substring(%nyx_string* %1961, i64 %1962, i64 %1963)
  %1965 = ptrtoint %nyx_string* %1964 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1960, i64 %1965, i64 2)
  %1966 = load i64, i64* %1949
  %1967 = add i64 %1966, 1
  store i64 %1967, i64* %1948
  br label %merge388
else387:
  br label %merge388
merge388:
  %1968 = load i64, i64* %1949
  %1969 = add i64 %1968, 1
  store i64 %1969, i64* %1949
  br label %while_cond383
while_end385:
  %1970 = load { i64, i8* }*, { i64, i8* }** %1947
  %1971 = load %nyx_string*, %nyx_string** %line.ptr
  %1972 = load i64, i64* %1948
  %1973 = load %nyx_string*, %nyx_string** %line.ptr
  %1974 = call i64 @nyx_string_byte_length(%nyx_string* %1973)
  %1975 = call %nyx_string* @nyx_string_substring(%nyx_string* %1971, i64 %1972, i64 %1974)
  %1976 = ptrtoint %nyx_string* %1975 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1970, i64 %1976, i64 2)
  %1977 = load { i64, i8* }*, { i64, i8* }** %1947
  ret { i64, i8* }* %1977
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1978 = load i64, i64* %n.ptr
  %1979 = call %nyx_string* @nyx_string_from_int(i64 %1978)
  %1980 = alloca %nyx_string*
  store %nyx_string* %1979, %nyx_string** %1980
  %1981 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %1982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1981, i64 1)
  %1983 = alloca %nyx_string*
  store %nyx_string* %1982, %nyx_string** %1983
  %1984 = call i8* @llvm.stacksave()
  br label %while_cond389
while_cond389:
  %1985 = load %nyx_string*, %nyx_string** %1980
  %1986 = call i64 @nyx_string_byte_length(%nyx_string* %1985)
  %1987 = icmp slt i64 %1986, 9
  br i1 %1987, label %while_body390, label %while_end391
while_body390:
  call void @llvm.stackrestore(i8* %1984)
  %1988 = load %nyx_string*, %nyx_string** %1983
  %1989 = load %nyx_string*, %nyx_string** %1980
  %1990 = call %nyx_string* @nyx_string_concat(%nyx_string* %1988, %nyx_string* %1989)
  store %nyx_string* %1990, %nyx_string** %1980
  br label %while_cond389
while_end391:
  %1991 = load %nyx_string*, %nyx_string** %1980
  ret %nyx_string* %1991
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1992 = call i8* @nyx_map_new(i32 0)
  %1993 = alloca i8*
  store i8* %1992, i8** %1993
  %1994 = load %nyx_string*, %nyx_string** %show.ptr
  %1995 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1995, i64 1)
  %1997 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1994, %nyx_string* %1996)
  %1998 = alloca { i64, i8* }*
  store { i64, i8* }* %1997, { i64, i8* }** %1998
  %1999 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %2000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1999, i64 0)
  %2001 = alloca %nyx_string*
  store %nyx_string* %2000, %nyx_string** %2001
  %2002 = alloca i64
  store i64 0, i64* %2002
  %2003 = getelementptr [3 x i8], [3 x i8]* @.str207, i32 0, i32 0
  %2004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2003, i64 2)
  %2005 = alloca %nyx_string*
  store %nyx_string* %2004, %nyx_string** %2005
  %2006 = getelementptr [4 x i8], [4 x i8]* @.str208, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2006, i64 3)
  %2008 = alloca %nyx_string*
  store %nyx_string* %2007, %nyx_string** %2008
  %2009 = getelementptr [2 x i8], [2 x i8]* @.str209, i32 0, i32 0
  %2010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2009, i64 1)
  %2011 = alloca %nyx_string*
  store %nyx_string* %2010, %nyx_string** %2011
  %2012 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2012, i64 1)
  %2014 = alloca %nyx_string*
  store %nyx_string* %2013, %nyx_string** %2014
  %2015 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2015, i64 0)
  %2017 = alloca %nyx_string*
  store %nyx_string* %2016, %nyx_string** %2017
  %2018 = getelementptr [14 x i8], [14 x i8]* @.str212, i32 0, i32 0
  %2019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2018, i64 13)
  %2020 = alloca %nyx_string*
  store %nyx_string* %2019, %nyx_string** %2020
  %2021 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2021, i64 1)
  %2023 = alloca %nyx_string*
  store %nyx_string* %2022, %nyx_string** %2023
  %2024 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2024, i64 1)
  %2026 = alloca %nyx_string*
  store %nyx_string* %2025, %nyx_string** %2026
  %2027 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2027, i64 1)
  %2029 = alloca %nyx_string*
  store %nyx_string* %2028, %nyx_string** %2029
  %2030 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2030, i64 1)
  %2032 = alloca %nyx_string*
  store %nyx_string* %2031, %nyx_string** %2032
  %2033 = call i8* @llvm.stacksave()
  br label %while_cond392
while_cond392:
  %2034 = load i64, i64* %2002
  %2035 = load { i64, i8* }*, { i64, i8* }** %1998
  %2036 = call i64 @nyx_array_length({ i64, i8* }* %2035)
  %2037 = icmp slt i64 %2034, %2036
  br i1 %2037, label %while_body393, label %while_end394
while_body393:
  call void @llvm.stackrestore(i8* %2033)
  %2038 = load { i64, i8* }*, { i64, i8* }** %1998
  %2039 = load i64, i64* %2002
  %2040 = call i64 @nyx_array_get_checked({ i64, i8* }* %2038, i64 %2039, i64 2)
  %2041 = inttoptr i64 %2040 to %nyx_string*
  %2042 = alloca %nyx_string*
  store %nyx_string* %2041, %nyx_string** %2042
  %2043 = alloca i1
  store i1 false, i1* %2043
  %2044 = alloca i1
  store i1 false, i1* %2044
  %2045 = load %nyx_string*, %nyx_string** %2042
  %2046 = load %nyx_string*, %nyx_string** %2005
  %2047 = call i1 @nyx_string_starts_with(%nyx_string* %2045, %nyx_string* %2046)
  br i1 %2047, label %sc_and_rhs395, label %sc_and_end396
sc_and_rhs395:
  %2048 = load %nyx_string*, %nyx_string** %2042
  %2049 = load %nyx_string*, %nyx_string** %2008
  %2050 = call i1 @nyx_string_starts_with(%nyx_string* %2048, %nyx_string* %2049)
  %2051 = xor i1 %2050, true
  store i1 %2051, i1* %2044
  br label %sc_and_end396
sc_and_end396:
  %2052 = load i1, i1* %2044
  br i1 %2052, label %sc_and_rhs397, label %sc_and_end398
sc_and_rhs397:
  %2053 = load %nyx_string*, %nyx_string** %2042
  %2054 = load %nyx_string*, %nyx_string** %2011
  %2055 = call i1 @nyx_string_ends_with(%nyx_string* %2053, %nyx_string* %2054)
  store i1 %2055, i1* %2043
  br label %sc_and_end398
sc_and_end398:
  %2056 = load i1, i1* %2043
  br i1 %2056, label %then399, label %else400
then399:
  %2057 = load %nyx_string*, %nyx_string** %2042
  %2058 = load %nyx_string*, %nyx_string** %2042
  %2059 = call i64 @nyx_string_byte_length(%nyx_string* %2058)
  %2060 = sub i64 %2059, 1
  %2061 = call %nyx_string* @nyx_string_substring(%nyx_string* %2057, i64 2, i64 %2060)
  %2062 = alloca %nyx_string*
  store %nyx_string* %2061, %nyx_string** %2062
  %2063 = load %nyx_string*, %nyx_string** %2062
  %2064 = load %nyx_string*, %nyx_string** %2014
  %2065 = call i64 @nyx_string_index_of(%nyx_string* %2063, %nyx_string* %2064)
  %2066 = alloca i64
  store i64 %2065, i64* %2066
  %2067 = load i64, i64* %2066
  %2068 = icmp sge i64 %2067, 0
  br i1 %2068, label %then402, label %else403
then402:
  %2069 = load %nyx_string*, %nyx_string** %2062
  %2070 = load i64, i64* %2066
  %2071 = add i64 %2070, 1
  %2072 = load %nyx_string*, %nyx_string** %2062
  %2073 = call i64 @nyx_string_byte_length(%nyx_string* %2072)
  %2074 = call %nyx_string* @nyx_string_substring(%nyx_string* %2069, i64 %2071, i64 %2073)
  store %nyx_string* %2074, %nyx_string** %2062
  br label %merge404
else403:
  br label %merge404
merge404:
  %2075 = load %nyx_string*, %nyx_string** %2062
  store %nyx_string* %2075, %nyx_string** %2001
  br label %merge401
else400:
  %2076 = alloca i1
  store i1 false, i1* %2076
  %2077 = load %nyx_string*, %nyx_string** %2001
  %2078 = load %nyx_string*, %nyx_string** %2017
  %2079 = call i1 @nyx_string_equals(%nyx_string* %2077, %nyx_string* %2078)
  %2080 = xor i1 %2079, true
  br i1 %2080, label %sc_and_rhs405, label %sc_and_end406
sc_and_rhs405:
  %2081 = load %nyx_string*, %nyx_string** %2042
  %2082 = load %nyx_string*, %nyx_string** %2020
  %2083 = call i1 @nyx_string_contains(%nyx_string* %2081, %nyx_string* %2082)
  store i1 %2083, i1* %2076
  br label %sc_and_end406
sc_and_end406:
  %2084 = load i1, i1* %2076
  br i1 %2084, label %then407, label %else408
then407:
  %2085 = load %nyx_string*, %nyx_string** %2042
  %2086 = load %nyx_string*, %nyx_string** %2023
  %2087 = call i64 @nyx_string_index_of(%nyx_string* %2085, %nyx_string* %2086)
  %2088 = alloca i64
  store i64 %2087, i64* %2088
  %2089 = load %nyx_string*, %nyx_string** %2042
  %2090 = load %nyx_string*, %nyx_string** %2026
  %2091 = call i64 @nyx_string_index_of(%nyx_string* %2089, %nyx_string* %2090)
  %2092 = alloca i64
  store i64 %2091, i64* %2092
  %2093 = alloca i1
  store i1 false, i1* %2093
  %2094 = load i64, i64* %2088
  %2095 = icmp sge i64 %2094, 0
  br i1 %2095, label %sc_and_rhs410, label %sc_and_end411
sc_and_rhs410:
  %2096 = load i64, i64* %2092
  %2097 = load i64, i64* %2088
  %2098 = icmp sgt i64 %2096, %2097
  store i1 %2098, i1* %2093
  br label %sc_and_end411
sc_and_end411:
  %2099 = load i1, i1* %2093
  br i1 %2099, label %then412, label %else413
then412:
  %2100 = load %nyx_string*, %nyx_string** %2042
  %2101 = load i64, i64* %2088
  %2102 = add i64 %2101, 1
  %2103 = load i64, i64* %2092
  %2104 = call %nyx_string* @nyx_string_substring(%nyx_string* %2100, i64 %2102, i64 %2103)
  %2105 = load %nyx_string*, %nyx_string** %2029
  %2106 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2104, %nyx_string* %2105)
  %2107 = alloca { i64, i8* }*
  store { i64, i8* }* %2106, { i64, i8* }** %2107
  %2108 = alloca i64
  store i64 0, i64* %2108
  %2109 = call i8* @llvm.stacksave()
  br label %while_cond415
while_cond415:
  %2110 = load i64, i64* %2108
  %2111 = load { i64, i8* }*, { i64, i8* }** %2107
  %2112 = call i64 @nyx_array_length({ i64, i8* }* %2111)
  %2113 = icmp slt i64 %2110, %2112
  br i1 %2113, label %while_body416, label %while_end417
while_body416:
  call void @llvm.stackrestore(i8* %2109)
  %2114 = load { i64, i8* }*, { i64, i8* }** %2107
  %2115 = load i64, i64* %2108
  %2116 = call i64 @nyx_array_get_checked({ i64, i8* }* %2114, i64 %2115, i64 2)
  %2117 = inttoptr i64 %2116 to %nyx_string*
  %2118 = alloca %nyx_string*
  store %nyx_string* %2117, %nyx_string** %2118
  %2119 = load %nyx_string*, %nyx_string** %2118
  %2120 = call %nyx_string* @nyx_string_trim(%nyx_string* %2119)
  %2121 = call i64 @nyx_string_to_int(%nyx_string* %2120)
  %2122 = icmp sgt i64 %2121, 0
  br i1 %2122, label %then418, label %else419
then418:
  %2123 = load i8*, i8** %1993
  %2124 = load %nyx_string*, %nyx_string** %2001
  %2125 = load %nyx_string*, %nyx_string** %2032
  %2126 = call i8* @nyx_string_to_cstr(%nyx_string* %2124)
  %2127 = call i8* @nyx_string_to_cstr(%nyx_string* %2125)
  call void @nyx_map_insert_str(i8* %2123, i8* %2126, i8* %2127)
  br label %merge420
else419:
  br label %merge420
merge420:
  %2128 = load i64, i64* %2108
  %2129 = add i64 %2128, 1
  store i64 %2129, i64* %2108
  br label %while_cond415
while_end417:
  br label %merge414
else413:
  br label %merge414
merge414:
  br label %merge409
else408:
  br label %merge409
merge409:
  br label %merge401
merge401:
  %2130 = load i64, i64* %2002
  %2131 = add i64 %2130, 1
  store i64 %2131, i64* %2002
  br label %while_cond392
while_end394:
  %2132 = load i8*, i8** %1993
  ret i8* %2132
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2133 = call { i64, i8* }* @nyx_array_new_ptr()
  %2134 = alloca { i64, i8* }*
  store { i64, i8* }* %2133, { i64, i8* }** %2134
  %2135 = getelementptr [4 x i8], [4 x i8]* @.str217, i32 0, i32 0
  %2136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2135, i64 3)
  %2137 = call i8* @nyx_string_to_cstr(%nyx_string* %2136)
  %2138 = call i1 @nyx_file_exists(i8* %2137)
  %2139 = xor i1 %2138, true
  br i1 %2139, label %then421, label %else422
then421:
  %2140 = load { i64, i8* }*, { i64, i8* }** %2134
  ret { i64, i8* }* %2140
else422:
  br label %merge423
merge423:
  %2141 = getelementptr [50 x i8], [50 x i8]* @.str218, i32 0, i32 0
  %2142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2141, i64 49)
  %2143 = call i8* @nyx_string_to_cstr(%nyx_string* %2142)
  %2144 = call %nyx_string* @nyx_exec(i8* %2143)
  %2145 = alloca %nyx_string*
  store %nyx_string* %2144, %nyx_string** %2145
  %2146 = load %nyx_string*, %nyx_string** %2145
  %2147 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2147, i64 1)
  %2149 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2146, %nyx_string* %2148)
  %2150 = alloca { i64, i8* }*
  store { i64, i8* }* %2149, { i64, i8* }** %2150
  %2151 = alloca i64
  store i64 0, i64* %2151
  %2152 = getelementptr [4 x i8], [4 x i8]* @.str220, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2152, i64 3)
  %2154 = alloca %nyx_string*
  store %nyx_string* %2153, %nyx_string** %2154
  %2155 = getelementptr [9 x i8], [9 x i8]* @.str221, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2155, i64 8)
  %2157 = alloca %nyx_string*
  store %nyx_string* %2156, %nyx_string** %2157
  %2158 = call i8* @llvm.stacksave()
  br label %while_cond424
while_cond424:
  %2159 = load i64, i64* %2151
  %2160 = load { i64, i8* }*, { i64, i8* }** %2150
  %2161 = call i64 @nyx_array_length({ i64, i8* }* %2160)
  %2162 = icmp slt i64 %2159, %2161
  br i1 %2162, label %while_body425, label %while_end426
while_body425:
  call void @llvm.stackrestore(i8* %2158)
  %2163 = load { i64, i8* }*, { i64, i8* }** %2150
  %2164 = load i64, i64* %2151
  %2165 = call i64 @nyx_array_get_checked({ i64, i8* }* %2163, i64 %2164, i64 2)
  %2166 = inttoptr i64 %2165 to %nyx_string*
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = load %nyx_string*, %nyx_string** %2167
  %2169 = call %nyx_string* @nyx_string_trim(%nyx_string* %2168)
  %2170 = alloca %nyx_string*
  store %nyx_string* %2169, %nyx_string** %2170
  %2171 = alloca i1
  store i1 false, i1* %2171
  %2172 = load %nyx_string*, %nyx_string** %2170
  %2173 = load %nyx_string*, %nyx_string** %2154
  %2174 = call i1 @nyx_string_ends_with(%nyx_string* %2172, %nyx_string* %2173)
  br i1 %2174, label %sc_and_rhs427, label %sc_and_end428
sc_and_rhs427:
  %2175 = load %nyx_string*, %nyx_string** %2170
  %2176 = load %nyx_string*, %nyx_string** %2157
  %2177 = call i1 @nyx_string_ends_with(%nyx_string* %2175, %nyx_string* %2176)
  %2178 = xor i1 %2177, true
  store i1 %2178, i1* %2171
  br label %sc_and_end428
sc_and_end428:
  %2179 = load i1, i1* %2171
  br i1 %2179, label %then429, label %else430
then429:
  %2180 = load { i64, i8* }*, { i64, i8* }** %2134
  %2181 = load %nyx_string*, %nyx_string** %2170
  %2182 = load %nyx_string*, %nyx_string** %2170
  %2183 = call i64 @nyx_string_byte_length(%nyx_string* %2182)
  %2184 = sub i64 %2183, 3
  %2185 = call %nyx_string* @nyx_string_substring(%nyx_string* %2181, i64 0, i64 %2184)
  %2186 = ptrtoint %nyx_string* %2185 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2180, i64 %2186, i64 2)
  br label %merge431
else430:
  br label %merge431
merge431:
  %2187 = load i64, i64* %2151
  %2188 = add i64 %2187, 1
  store i64 %2188, i64* %2151
  br label %while_cond424
while_end426:
  %2189 = load { i64, i8* }*, { i64, i8* }** %2134
  ret { i64, i8* }* %2189
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
  %2190 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %2191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2190, i64 0)
  %2192 = alloca %nyx_string*
  store %nyx_string* %2191, %nyx_string** %2192
  %2193 = alloca i64
  store i64 0, i64* %2193
  %2194 = getelementptr [9 x i8], [9 x i8]* @.str223, i32 0, i32 0
  %2195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2194, i64 8)
  %2196 = alloca %nyx_string*
  store %nyx_string* %2195, %nyx_string** %2196
  %2197 = getelementptr [3 x i8], [3 x i8]* @.str224, i32 0, i32 0
  %2198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2197, i64 2)
  %2199 = alloca %nyx_string*
  store %nyx_string* %2198, %nyx_string** %2199
  %2200 = call i8* @llvm.stacksave()
  br label %while_cond432
while_cond432:
  %2201 = load i64, i64* %2193
  %2202 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2203 = call i64 @nyx_array_length({ i64, i8* }* %2202)
  %2204 = icmp slt i64 %2201, %2203
  br i1 %2204, label %while_body433, label %while_end434
while_body433:
  call void @llvm.stackrestore(i8* %2200)
  %2205 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2206 = load i64, i64* %2193
  %2207 = call i64 @nyx_array_get_checked({ i64, i8* }* %2205, i64 %2206, i64 2)
  %2208 = inttoptr i64 %2207 to %nyx_string*
  %2209 = alloca %nyx_string*
  store %nyx_string* %2208, %nyx_string** %2209
  %2210 = load %nyx_string*, %nyx_string** %2192
  %2211 = load %nyx_string*, %nyx_string** %2196
  %2212 = call %nyx_string* @nyx_string_concat(%nyx_string* %2210, %nyx_string* %2211)
  %2213 = load %nyx_string*, %nyx_string** %2209
  %2214 = call %nyx_string* @nyx_string_concat(%nyx_string* %2212, %nyx_string* %2213)
  %2215 = load %nyx_string*, %nyx_string** %2199
  %2216 = call %nyx_string* @nyx_string_concat(%nyx_string* %2214, %nyx_string* %2215)
  store %nyx_string* %2216, %nyx_string** %2192
  %2217 = load i64, i64* %2193
  %2218 = add i64 %2217, 1
  store i64 %2218, i64* %2193
  br label %while_cond432
while_end434:
  %2219 = load %nyx_string*, %nyx_string** %2192
  %2220 = getelementptr [36 x i8], [36 x i8]* @.str225, i32 0, i32 0
  %2221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2220, i64 35)
  %2222 = call %nyx_string* @nyx_string_concat(%nyx_string* %2219, %nyx_string* %2221)
  store %nyx_string* %2222, %nyx_string** %2192
  %2223 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2224 = getelementptr [13 x i8], [13 x i8]* @.str226, i32 0, i32 0
  %2225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2224, i64 12)
  %2226 = call %nyx_string* @nyx_string_concat(%nyx_string* %2223, %nyx_string* %2225)
  %2227 = load %nyx_string*, %nyx_string** %2192
  %2228 = call i8* @nyx_string_to_cstr(%nyx_string* %2226)
  %2229 = call i1 @nyx_write_file_safe(i8* %2228, %nyx_string* %2227)
  %2230 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2231 = getelementptr [14 x i8], [14 x i8]* @.str227, i32 0, i32 0
  %2232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2231, i64 13)
  %2233 = call %nyx_string* @nyx_string_concat(%nyx_string* %2230, %nyx_string* %2232)
  %2234 = alloca %nyx_string*
  store %nyx_string* %2233, %nyx_string** %2234
  %2235 = getelementptr [13 x i8], [13 x i8]* @.str228, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2235, i64 12)
  %2237 = getelementptr [8 x i8], [8 x i8]* @.str229, i32 0, i32 0
  %2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2237, i64 7)
  %2239 = call %nyx_string* @nyx_string_concat(%nyx_string* %2236, %nyx_string* %2238)
  %2240 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2241 = call %nyx_string* @nyx_string_concat(%nyx_string* %2239, %nyx_string* %2240)
  %2242 = getelementptr [19 x i8], [19 x i8]* @.str230, i32 0, i32 0
  %2243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2242, i64 18)
  %2244 = call %nyx_string* @nyx_string_concat(%nyx_string* %2241, %nyx_string* %2243)
  %2245 = getelementptr [5 x i8], [5 x i8]* @.str231, i32 0, i32 0
  %2246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2245, i64 4)
  %2247 = call %nyx_string* @nyx_string_concat(%nyx_string* %2244, %nyx_string* %2246)
  %2248 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2249 = call %nyx_string* @nyx_string_concat(%nyx_string* %2247, %nyx_string* %2248)
  %2250 = getelementptr [24 x i8], [24 x i8]* @.str232, i32 0, i32 0
  %2251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2250, i64 23)
  %2252 = call %nyx_string* @nyx_string_concat(%nyx_string* %2249, %nyx_string* %2251)
  %2253 = getelementptr [5 x i8], [5 x i8]* @.str233, i32 0, i32 0
  %2254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2253, i64 4)
  %2255 = call %nyx_string* @nyx_string_concat(%nyx_string* %2252, %nyx_string* %2254)
  %2256 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2257 = call %nyx_string* @nyx_string_concat(%nyx_string* %2255, %nyx_string* %2256)
  %2258 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %2259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2258, i64 2)
  %2260 = call %nyx_string* @nyx_string_concat(%nyx_string* %2257, %nyx_string* %2259)
  %2261 = getelementptr [137 x i8], [137 x i8]* @.str235, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2261, i64 136)
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2260, %nyx_string* %2262)
  %2264 = getelementptr [43 x i8], [43 x i8]* @.str236, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2264, i64 42)
  %2266 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2265)
  %2267 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2268 = call %nyx_string* @nyx_string_concat(%nyx_string* %2266, %nyx_string* %2267)
  %2269 = getelementptr [38 x i8], [38 x i8]* @.str237, i32 0, i32 0
  %2270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2269, i64 37)
  %2271 = call %nyx_string* @nyx_string_concat(%nyx_string* %2268, %nyx_string* %2270)
  %2272 = load %nyx_string*, %nyx_string** %2234
  %2273 = call %nyx_string* @nyx_string_concat(%nyx_string* %2271, %nyx_string* %2272)
  %2274 = getelementptr [24 x i8], [24 x i8]* @.str238, i32 0, i32 0
  %2275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2274, i64 23)
  %2276 = call %nyx_string* @nyx_string_concat(%nyx_string* %2273, %nyx_string* %2275)
  %2277 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2278 = call %nyx_string* @nyx_string_concat(%nyx_string* %2276, %nyx_string* %2277)
  %2279 = getelementptr [21 x i8], [21 x i8]* @.str239, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2279, i64 20)
  %2281 = call %nyx_string* @nyx_string_concat(%nyx_string* %2278, %nyx_string* %2280)
  %2282 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %2283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2282, i64 6)
  %2284 = call %nyx_string* @nyx_string_concat(%nyx_string* %2281, %nyx_string* %2283)
  %2285 = getelementptr [17 x i8], [17 x i8]* @.str241, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2285, i64 16)
  %2287 = call %nyx_string* @nyx_string_concat(%nyx_string* %2284, %nyx_string* %2286)
  %2288 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2289 = call %nyx_string* @nyx_string_concat(%nyx_string* %2287, %nyx_string* %2288)
  %2290 = getelementptr [19 x i8], [19 x i8]* @.str242, i32 0, i32 0
  %2291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2290, i64 18)
  %2292 = call %nyx_string* @nyx_string_concat(%nyx_string* %2289, %nyx_string* %2291)
  %2293 = getelementptr [10 x i8], [10 x i8]* @.str243, i32 0, i32 0
  %2294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2293, i64 9)
  %2295 = call %nyx_string* @nyx_string_concat(%nyx_string* %2292, %nyx_string* %2294)
  %2296 = alloca %nyx_string*
  store %nyx_string* %2295, %nyx_string** %2296
  %2297 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2298 = getelementptr [13 x i8], [13 x i8]* @.str244, i32 0, i32 0
  %2299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2298, i64 12)
  %2300 = call %nyx_string* @nyx_string_concat(%nyx_string* %2297, %nyx_string* %2299)
  %2301 = load %nyx_string*, %nyx_string** %2296
  %2302 = call i8* @nyx_string_to_cstr(%nyx_string* %2300)
  %2303 = call i1 @nyx_write_file_safe(i8* %2302, %nyx_string* %2301)
  %2304 = getelementptr [7 x i8], [7 x i8]* @.str245, i32 0, i32 0
  %2305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2304, i64 6)
  %2306 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2307 = call %nyx_string* @nyx_string_concat(%nyx_string* %2305, %nyx_string* %2306)
  %2308 = getelementptr [14 x i8], [14 x i8]* @.str246, i32 0, i32 0
  %2309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2308, i64 13)
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2307, %nyx_string* %2309)
  %2311 = call i8* @nyx_string_to_cstr(%nyx_string* %2310)
  %2312 = call i64 @nyx_exec_code(i8* %2311)
  %2313 = load %nyx_string*, %nyx_string** %2234
  ret %nyx_string* %2313
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
  %2314 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2314, i64 8)
  %2316 = call i8* @nyx_string_to_cstr(%nyx_string* %2315)
  %2317 = call %nyx_string* @nyx_getenv(i8* %2316)
  %2318 = alloca %nyx_string*
  store %nyx_string* %2317, %nyx_string** %2318
  %2319 = getelementptr [4 x i8], [4 x i8]* @.str248, i32 0, i32 0
  %2320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2319, i64 3)
  %2321 = call i8* @nyx_string_to_cstr(%nyx_string* %2320)
  %2322 = call %nyx_string* @nyx_getenv(i8* %2321)
  %2323 = alloca %nyx_string*
  store %nyx_string* %2322, %nyx_string** %2323
  %2324 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %2325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2324, i64 0)
  %2326 = call i8* @nyx_string_to_cstr(%nyx_string* %2325)
  call void @nyx_print_string(i8* %2326)
  %2327 = getelementptr [36 x i8], [36 x i8]* @.str250, i32 0, i32 0
  %2328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2327, i64 35)
  %2329 = call i8* @nyx_string_to_cstr(%nyx_string* %2328)
  call void @nyx_print_string(i8* %2329)
  %2330 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2330, i64 0)
  %2332 = alloca %nyx_string*
  store %nyx_string* %2331, %nyx_string** %2332
  %2333 = alloca i64
  store i64 0, i64* %2333
  %2334 = call i8* @nyx_map_new(i32 0)
  %2335 = alloca i8*
  store i8* %2334, i8** %2335
  %2336 = call { i64, i8* }* @nyx_array_new_ptr()
  %2337 = alloca { i64, i8* }*
  store { i64, i8* }* %2336, { i64, i8* }** %2337
  %2338 = alloca i64
  store i64 0, i64* %2338
  %2339 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2339, i64 1)
  %2341 = alloca %nyx_string*
  store %nyx_string* %2340, %nyx_string** %2341
  %2342 = getelementptr [9 x i8], [9 x i8]* @.str253, i32 0, i32 0
  %2343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2342, i64 8)
  %2344 = alloca %nyx_string*
  store %nyx_string* %2343, %nyx_string** %2344
  %2345 = getelementptr [3 x i8], [3 x i8]* @.str254, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2345, i64 2)
  %2347 = alloca %nyx_string*
  store %nyx_string* %2346, %nyx_string** %2347
  %2348 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2348, i64 1)
  %2350 = alloca %nyx_string*
  store %nyx_string* %2349, %nyx_string** %2350
  %2351 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2351, i64 1)
  %2353 = alloca %nyx_string*
  store %nyx_string* %2352, %nyx_string** %2353
  %2354 = call i8* @llvm.stacksave()
  br label %while_cond435
while_cond435:
  %2355 = load i64, i64* %2338
  %2356 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2357 = call i64 @nyx_array_length({ i64, i8* }* %2356)
  %2358 = icmp slt i64 %2355, %2357
  br i1 %2358, label %while_body436, label %while_end437
while_body436:
  call void @llvm.stackrestore(i8* %2354)
  %2359 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2360 = load i64, i64* %2338
  %2361 = call i64 @nyx_array_get_checked({ i64, i8* }* %2359, i64 %2360, i64 2)
  %2362 = inttoptr i64 %2361 to %nyx_string*
  %2363 = alloca %nyx_string*
  store %nyx_string* %2362, %nyx_string** %2363
  %2364 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2365 = load i64, i64* %2338
  %2366 = call i64 @nyx_array_get_checked({ i64, i8* }* %2364, i64 %2365, i64 2)
  %2367 = inttoptr i64 %2366 to %nyx_string*
  %2368 = alloca %nyx_string*
  store %nyx_string* %2367, %nyx_string** %2368
  %2369 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2370 = load %nyx_string*, %nyx_string** %2341
  %2371 = call %nyx_string* @nyx_string_concat(%nyx_string* %2369, %nyx_string* %2370)
  %2372 = load %nyx_string*, %nyx_string** %2363
  %2373 = call %nyx_string* @nyx_string_concat(%nyx_string* %2371, %nyx_string* %2372)
  %2374 = load %nyx_string*, %nyx_string** %2344
  %2375 = call %nyx_string* @nyx_string_concat(%nyx_string* %2373, %nyx_string* %2374)
  %2376 = alloca %nyx_string*
  store %nyx_string* %2375, %nyx_string** %2376
  %2377 = load %nyx_string*, %nyx_string** %2376
  %2378 = call i1 @cov_profraw_valid(%nyx_string* %2377)
  br i1 %2378, label %then438, label %else439
then438:
  %2379 = load %nyx_string*, %nyx_string** %2332
  %2380 = load %nyx_string*, %nyx_string** %2347
  %2381 = call %nyx_string* @nyx_string_concat(%nyx_string* %2379, %nyx_string* %2380)
  %2382 = load %nyx_string*, %nyx_string** %2376
  %2383 = call %nyx_string* @nyx_string_concat(%nyx_string* %2381, %nyx_string* %2382)
  %2384 = load %nyx_string*, %nyx_string** %2350
  %2385 = call %nyx_string* @nyx_string_concat(%nyx_string* %2383, %nyx_string* %2384)
  store %nyx_string* %2385, %nyx_string** %2332
  %2386 = load i64, i64* %2333
  %2387 = add i64 %2386, 1
  store i64 %2387, i64* %2333
  %2388 = load i8*, i8** %2335
  %2389 = load %nyx_string*, %nyx_string** %2363
  %2390 = load %nyx_string*, %nyx_string** %2353
  %2391 = call i8* @nyx_string_to_cstr(%nyx_string* %2389)
  %2392 = call i8* @nyx_string_to_cstr(%nyx_string* %2390)
  call void @nyx_map_insert_str(i8* %2388, i8* %2391, i8* %2392)
  br label %merge440
else439:
  %2393 = load { i64, i8* }*, { i64, i8* }** %2337
  %2394 = load %nyx_string*, %nyx_string** %2368
  %2395 = ptrtoint %nyx_string* %2394 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2393, i64 %2395, i64 2)
  br label %merge440
merge440:
  %2396 = load i64, i64* %2338
  %2397 = add i64 %2396, 1
  store i64 %2397, i64* %2338
  br label %while_cond435
while_end437:
  %2398 = call i8* @nyx_map_new(i32 0)
  %2399 = alloca i8*
  store i8* %2398, i8** %2399
  %2400 = load i64, i64* %2333
  %2401 = icmp sgt i64 %2400, 0
  br i1 %2401, label %then441, label %else442
then441:
  %2402 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2403 = getelementptr [17 x i8], [17 x i8]* @.str257, i32 0, i32 0
  %2404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2403, i64 16)
  %2405 = call %nyx_string* @nyx_string_concat(%nyx_string* %2402, %nyx_string* %2404)
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2408 = getelementptr [12 x i8], [12 x i8]* @.str258, i32 0, i32 0
  %2409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2408, i64 11)
  %2410 = call %nyx_string* @nyx_string_concat(%nyx_string* %2407, %nyx_string* %2409)
  %2411 = load %nyx_string*, %nyx_string** %2406
  %2412 = call %nyx_string* @nyx_string_concat(%nyx_string* %2410, %nyx_string* %2411)
  %2413 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2413, i64 1)
  %2415 = call %nyx_string* @nyx_string_concat(%nyx_string* %2412, %nyx_string* %2414)
  %2416 = load %nyx_string*, %nyx_string** %2332
  %2417 = call %nyx_string* @nyx_string_concat(%nyx_string* %2415, %nyx_string* %2416)
  %2418 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2418, i64 4)
  %2420 = call %nyx_string* @nyx_string_concat(%nyx_string* %2417, %nyx_string* %2419)
  %2421 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2422 = call %nyx_string* @nyx_string_concat(%nyx_string* %2420, %nyx_string* %2421)
  %2423 = getelementptr [17 x i8], [17 x i8]* @.str261, i32 0, i32 0
  %2424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2423, i64 16)
  %2425 = call %nyx_string* @nyx_string_concat(%nyx_string* %2422, %nyx_string* %2424)
  %2426 = call i8* @nyx_string_to_cstr(%nyx_string* %2425)
  %2427 = call i64 @nyx_exec_code(i8* %2426)
  %2428 = alloca i64
  store i64 %2427, i64* %2428
  %2429 = load i64, i64* %2428
  %2430 = icmp ne i64 %2429, 0
  br i1 %2430, label %then444, label %else445
then444:
  %2431 = getelementptr [36 x i8], [36 x i8]* @.str262, i32 0, i32 0
  %2432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2431, i64 35)
  %2433 = call i8* @nyx_string_to_cstr(%nyx_string* %2432)
  call void @nyx_print_string(i8* %2433)
  %2434 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2435 = getelementptr [11 x i8], [11 x i8]* @.str263, i32 0, i32 0
  %2436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2435, i64 10)
  %2437 = call %nyx_string* @nyx_string_concat(%nyx_string* %2434, %nyx_string* %2436)
  %2438 = call i8* @nyx_string_to_cstr(%nyx_string* %2437)
  %2439 = call %nyx_string* @nyx_read_file(i8* %2438)
  %2440 = call i8* @nyx_string_to_cstr(%nyx_string* %2439)
  call void @nyx_print_string(i8* %2440)
  ret i64 1
else445:
  br label %merge446
merge446:
  %2441 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2442 = getelementptr [33 x i8], [33 x i8]* @.str264, i32 0, i32 0
  %2443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2442, i64 32)
  %2444 = call %nyx_string* @nyx_string_concat(%nyx_string* %2441, %nyx_string* %2443)
  %2445 = load %nyx_string*, %nyx_string** %2406
  %2446 = call %nyx_string* @nyx_string_concat(%nyx_string* %2444, %nyx_string* %2445)
  %2447 = getelementptr [6 x i8], [6 x i8]* @.str265, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2447, i64 5)
  %2449 = call %nyx_string* @nyx_string_concat(%nyx_string* %2446, %nyx_string* %2448)
  %2450 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2451 = call %nyx_string* @nyx_string_concat(%nyx_string* %2449, %nyx_string* %2450)
  %2452 = getelementptr [16 x i8], [16 x i8]* @.str266, i32 0, i32 0
  %2453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2452, i64 15)
  %2454 = call %nyx_string* @nyx_string_concat(%nyx_string* %2451, %nyx_string* %2453)
  %2455 = call i8* @nyx_string_to_cstr(%nyx_string* %2454)
  %2456 = call i64 @nyx_exec_code(i8* %2455)
  %2457 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2458 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %2459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2458, i64 9)
  %2460 = call %nyx_string* @nyx_string_concat(%nyx_string* %2457, %nyx_string* %2459)
  %2461 = call i8* @nyx_string_to_cstr(%nyx_string* %2460)
  %2462 = call %nyx_string* @nyx_read_file(i8* %2461)
  %2463 = call i8* @cov_called_from_show(%nyx_string* %2462)
  store i8* %2463, i8** %2399
  br label %merge443
else442:
  br label %merge443
merge443:
  %2464 = call i8* @nyx_map_new(i32 0)
  %2465 = alloca i8*
  store i8* %2464, i8** %2465
  %2466 = call i8* @nyx_map_new(i32 0)
  %2467 = alloca i8*
  store i8* %2466, i8** %2467
  %2468 = call i8* @nyx_map_new(i32 0)
  %2469 = alloca i8*
  store i8* %2468, i8** %2469
  %2470 = call i8* @nyx_map_new(i32 0)
  %2471 = alloca i8*
  store i8* %2470, i8** %2471
  store i64 0, i64* %2338
  %2472 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %2473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2472, i64 1)
  %2474 = alloca %nyx_string*
  store %nyx_string* %2473, %nyx_string** %2474
  %2475 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2475, i64 4)
  %2477 = alloca %nyx_string*
  store %nyx_string* %2476, %nyx_string** %2477
  %2478 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2478, i64 1)
  %2480 = alloca %nyx_string*
  store %nyx_string* %2479, %nyx_string** %2480
  %2481 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %2482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2481, i64 0)
  %2483 = alloca %nyx_string*
  store %nyx_string* %2482, %nyx_string** %2483
  %2484 = getelementptr [2 x i8], [2 x i8]* @.str272, i32 0, i32 0
  %2485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2484, i64 1)
  %2486 = alloca %nyx_string*
  store %nyx_string* %2485, %nyx_string** %2486
  %2487 = getelementptr [5 x i8], [5 x i8]* @.str273, i32 0, i32 0
  %2488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2487, i64 4)
  %2489 = alloca %nyx_string*
  store %nyx_string* %2488, %nyx_string** %2489
  %2490 = call i8* @llvm.stacksave()
  br label %while_cond447
while_cond447:
  %2491 = load i64, i64* %2338
  %2492 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2493 = call i64 @nyx_array_length({ i64, i8* }* %2492)
  %2494 = icmp slt i64 %2491, %2493
  br i1 %2494, label %while_body448, label %while_end449
while_body448:
  call void @llvm.stackrestore(i8* %2490)
  %2495 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2496 = load i64, i64* %2338
  %2497 = call i64 @nyx_array_get_checked({ i64, i8* }* %2495, i64 %2496, i64 2)
  %2498 = inttoptr i64 %2497 to %nyx_string*
  %2499 = alloca %nyx_string*
  store %nyx_string* %2498, %nyx_string** %2499
  %2500 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2501 = load %nyx_string*, %nyx_string** %2474
  %2502 = call %nyx_string* @nyx_string_concat(%nyx_string* %2500, %nyx_string* %2501)
  %2503 = load %nyx_string*, %nyx_string** %2499
  %2504 = call %nyx_string* @nyx_string_concat(%nyx_string* %2502, %nyx_string* %2503)
  %2505 = load %nyx_string*, %nyx_string** %2477
  %2506 = call %nyx_string* @nyx_string_concat(%nyx_string* %2504, %nyx_string* %2505)
  %2507 = alloca %nyx_string*
  store %nyx_string* %2506, %nyx_string** %2507
  %2508 = load %nyx_string*, %nyx_string** %2507
  %2509 = call i8* @nyx_string_to_cstr(%nyx_string* %2508)
  %2510 = call i1 @nyx_file_exists(i8* %2509)
  br i1 %2510, label %then450, label %else451
then450:
  %2511 = load %nyx_string*, %nyx_string** %2507
  %2512 = call i8* @nyx_string_to_cstr(%nyx_string* %2511)
  %2513 = call %nyx_string* @nyx_read_file(i8* %2512)
  %2514 = load %nyx_string*, %nyx_string** %2480
  %2515 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2513, %nyx_string* %2514)
  %2516 = alloca { i64, i8* }*
  store { i64, i8* }* %2515, { i64, i8* }** %2516
  %2517 = alloca i64
  store i64 0, i64* %2517
  %2518 = call i8* @llvm.stacksave()
  br label %while_cond453
while_cond453:
  %2519 = load i64, i64* %2517
  %2520 = load { i64, i8* }*, { i64, i8* }** %2516
  %2521 = call i64 @nyx_array_length({ i64, i8* }* %2520)
  %2522 = icmp slt i64 %2519, %2521
  br i1 %2522, label %while_body454, label %while_end455
while_body454:
  call void @llvm.stackrestore(i8* %2518)
  %2523 = load { i64, i8* }*, { i64, i8* }** %2516
  %2524 = load i64, i64* %2517
  %2525 = call i64 @nyx_array_get_checked({ i64, i8* }* %2523, i64 %2524, i64 2)
  %2526 = inttoptr i64 %2525 to %nyx_string*
  %2527 = alloca %nyx_string*
  store %nyx_string* %2526, %nyx_string** %2527
  %2528 = load %nyx_string*, %nyx_string** %2527
  %2529 = call { i64, i8* }* @cov_fields(%nyx_string* %2528)
  %2530 = alloca { i64, i8* }*
  store { i64, i8* }* %2529, { i64, i8* }** %2530
  %2531 = load { i64, i8* }*, { i64, i8* }** %2530
  %2532 = call i64 @nyx_array_length({ i64, i8* }* %2531)
  %2533 = icmp sge i64 %2532, 5
  br i1 %2533, label %then456, label %else457
then456:
  %2534 = load { i64, i8* }*, { i64, i8* }** %2530
  %2535 = call i64 @nyx_array_get_checked({ i64, i8* }* %2534, i64 0, i64 2)
  %2536 = inttoptr i64 %2535 to %nyx_string*
  %2537 = alloca %nyx_string*
  store %nyx_string* %2536, %nyx_string** %2537
  %2538 = load { i64, i8* }*, { i64, i8* }** %2530
  %2539 = call i64 @nyx_array_get_checked({ i64, i8* }* %2538, i64 1, i64 2)
  %2540 = inttoptr i64 %2539 to %nyx_string*
  %2541 = alloca %nyx_string*
  store %nyx_string* %2540, %nyx_string** %2541
  %2542 = load { i64, i8* }*, { i64, i8* }** %2530
  %2543 = call i64 @nyx_array_get_checked({ i64, i8* }* %2542, i64 3, i64 2)
  %2544 = inttoptr i64 %2543 to %nyx_string*
  %2545 = alloca %nyx_string*
  store %nyx_string* %2544, %nyx_string** %2545
  %2546 = load { i64, i8* }*, { i64, i8* }** %2530
  %2547 = call i64 @nyx_array_get_checked({ i64, i8* }* %2546, i64 4, i64 2)
  %2548 = inttoptr i64 %2547 to %nyx_string*
  %2549 = alloca %nyx_string*
  store %nyx_string* %2548, %nyx_string** %2549
  %2550 = load %nyx_string*, %nyx_string** %2541
  %2551 = load %nyx_string*, %nyx_string** %2483
  %2552 = call i1 @nyx_string_equals(%nyx_string* %2550, %nyx_string* %2551)
  %2553 = xor i1 %2552, true
  br i1 %2553, label %then459, label %else460
then459:
  %2554 = load i8*, i8** %2471
  %2555 = load %nyx_string*, %nyx_string** %2541
  %2556 = load %nyx_string*, %nyx_string** %2486
  %2557 = call i8* @nyx_string_to_cstr(%nyx_string* %2555)
  %2558 = call i8* @nyx_string_to_cstr(%nyx_string* %2556)
  call void @nyx_map_insert_str(i8* %2554, i8* %2557, i8* %2558)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2559 = load i8*, i8** %2335
  %2560 = load %nyx_string*, %nyx_string** %2499
  %2561 = call i8* @nyx_string_to_cstr(%nyx_string* %2560)
  %2562 = call i1 @nyx_map_contains_str(i8* %2559, i8* %2561)
  br i1 %2562, label %then462, label %else463
then462:
  %2563 = load i8*, i8** %2465
  %2564 = load %nyx_string*, %nyx_string** %2537
  %2565 = load %nyx_string*, %nyx_string** %2486
  %2566 = call i8* @nyx_string_to_cstr(%nyx_string* %2564)
  %2567 = call i8* @nyx_string_to_cstr(%nyx_string* %2565)
  call void @nyx_map_insert_str(i8* %2563, i8* %2566, i8* %2567)
  %2568 = alloca i1
  store i1 false, i1* %2568
  %2569 = load %nyx_string*, %nyx_string** %2549
  %2570 = load %nyx_string*, %nyx_string** %2489
  %2571 = call i1 @nyx_string_equals(%nyx_string* %2569, %nyx_string* %2570)
  br i1 %2571, label %sc_and_rhs465, label %sc_and_end466
sc_and_rhs465:
  %2572 = load i8*, i8** %2399
  %2573 = load %nyx_string*, %nyx_string** %2537
  %2574 = call i8* @nyx_string_to_cstr(%nyx_string* %2573)
  %2575 = call i1 @nyx_map_contains_str(i8* %2572, i8* %2574)
  store i1 %2575, i1* %2568
  br label %sc_and_end466
sc_and_end466:
  %2576 = load i1, i1* %2568
  br i1 %2576, label %then467, label %else468
then467:
  %2577 = load i8*, i8** %2469
  %2578 = load %nyx_string*, %nyx_string** %2545
  %2579 = load %nyx_string*, %nyx_string** %2486
  %2580 = call i8* @nyx_string_to_cstr(%nyx_string* %2578)
  %2581 = call i8* @nyx_string_to_cstr(%nyx_string* %2579)
  call void @nyx_map_insert_str(i8* %2577, i8* %2580, i8* %2581)
  br label %merge469
else468:
  br label %merge469
merge469:
  br label %merge464
else463:
  %2582 = load i8*, i8** %2467
  %2583 = load %nyx_string*, %nyx_string** %2537
  %2584 = load %nyx_string*, %nyx_string** %2486
  %2585 = call i8* @nyx_string_to_cstr(%nyx_string* %2583)
  %2586 = call i8* @nyx_string_to_cstr(%nyx_string* %2584)
  call void @nyx_map_insert_str(i8* %2582, i8* %2585, i8* %2586)
  br label %merge464
merge464:
  br label %merge458
else457:
  br label %merge458
merge458:
  %2587 = load i64, i64* %2517
  %2588 = add i64 %2587, 1
  store i64 %2588, i64* %2517
  br label %while_cond453
while_end455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2589 = load i64, i64* %2338
  %2590 = add i64 %2589, 1
  store i64 %2590, i64* %2338
  br label %while_cond447
while_end449:
  %2591 = call { i64, i8* }* @cov_src_modules()
  %2592 = alloca { i64, i8* }*
  store { i64, i8* }* %2591, { i64, i8* }** %2592
  %2593 = load { i64, i8* }*, { i64, i8* }** %2592
  %2594 = call i64 @nyx_array_length({ i64, i8* }* %2593)
  %2595 = icmp eq i64 %2594, 0
  br i1 %2595, label %then470, label %else471
then470:
  %2596 = getelementptr [27 x i8], [27 x i8]* @.str274, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2596, i64 26)
  %2598 = call i8* @nyx_string_to_cstr(%nyx_string* %2597)
  call void @nyx_print_string(i8* %2598)
  ret i64 0
else471:
  br label %merge472
merge472:
  %2599 = load %nyx_string*, %nyx_string** %2318
  %2600 = load %nyx_string*, %nyx_string** %2323
  %2601 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2602 = load { i64, i8* }*, { i64, i8* }** %2592
  %2603 = call %nyx_string* @cov_universe(%nyx_string* %2599, %nyx_string* %2600, %nyx_string* %2601, { i64, i8* }* %2602)
  %2604 = alloca %nyx_string*
  store %nyx_string* %2603, %nyx_string** %2604
  %2605 = load %nyx_string*, %nyx_string** %2604
  %2606 = call i8* @nyx_string_to_cstr(%nyx_string* %2605)
  %2607 = call i1 @nyx_file_exists(i8* %2606)
  %2608 = xor i1 %2607, true
  br i1 %2608, label %then473, label %else474
then473:
  %2609 = getelementptr [68 x i8], [68 x i8]* @.str275, i32 0, i32 0
  %2610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2609, i64 67)
  %2611 = call i8* @nyx_string_to_cstr(%nyx_string* %2610)
  call void @nyx_print_string(i8* %2611)
  %2612 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2613 = getelementptr [14 x i8], [14 x i8]* @.str276, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2613, i64 13)
  %2615 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2614)
  %2616 = call i8* @nyx_string_to_cstr(%nyx_string* %2615)
  %2617 = call i1 @nyx_file_exists(i8* %2616)
  br i1 %2617, label %then476, label %else477
then476:
  %2618 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2619 = getelementptr [14 x i8], [14 x i8]* @.str277, i32 0, i32 0
  %2620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2619, i64 13)
  %2621 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2620)
  %2622 = call i8* @nyx_string_to_cstr(%nyx_string* %2621)
  %2623 = call %nyx_string* @nyx_read_file(i8* %2622)
  %2624 = call i8* @nyx_string_to_cstr(%nyx_string* %2623)
  call void @nyx_print_string(i8* %2624)
  br label %merge478
else477:
  br label %merge478
merge478:
  ret i64 1
else474:
  br label %merge475
merge475:
  %2625 = load %nyx_string*, %nyx_string** %2604
  %2626 = call i8* @nyx_string_to_cstr(%nyx_string* %2625)
  %2627 = call %nyx_string* @nyx_read_file(i8* %2626)
  %2628 = getelementptr [2 x i8], [2 x i8]* @.str278, i32 0, i32 0
  %2629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2628, i64 1)
  %2630 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2627, %nyx_string* %2629)
  %2631 = alloca { i64, i8* }*
  store { i64, i8* }* %2630, { i64, i8* }** %2631
  %2632 = call { i64, i8* }* @nyx_array_new_ptr()
  %2633 = alloca { i64, i8* }*
  store { i64, i8* }* %2632, { i64, i8* }** %2633
  %2634 = alloca i64
  store i64 0, i64* %2634
  %2635 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %2636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2635, i64 2)
  %2637 = alloca %nyx_string*
  store %nyx_string* %2636, %nyx_string** %2637
  %2638 = getelementptr [7 x i8], [7 x i8]* @.str280, i32 0, i32 0
  %2639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2638, i64 6)
  %2640 = alloca %nyx_string*
  store %nyx_string* %2639, %nyx_string** %2640
  %2641 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2641, i64 5)
  %2643 = alloca %nyx_string*
  store %nyx_string* %2642, %nyx_string** %2643
  %2644 = getelementptr [9 x i8], [9 x i8]* @.str282, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2644, i64 8)
  %2646 = alloca %nyx_string*
  store %nyx_string* %2645, %nyx_string** %2646
  %2647 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2647, i64 4)
  %2649 = alloca %nyx_string*
  store %nyx_string* %2648, %nyx_string** %2649
  %2650 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2650, i64 4)
  %2652 = alloca %nyx_string*
  store %nyx_string* %2651, %nyx_string** %2652
  %2653 = getelementptr [3 x i8], [3 x i8]* @.str285, i32 0, i32 0
  %2654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2653, i64 2)
  %2655 = alloca %nyx_string*
  store %nyx_string* %2654, %nyx_string** %2655
  %2656 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2656, i64 2)
  %2658 = alloca %nyx_string*
  store %nyx_string* %2657, %nyx_string** %2658
  %2659 = getelementptr [10 x i8], [10 x i8]* @.str287, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2659, i64 9)
  %2661 = alloca %nyx_string*
  store %nyx_string* %2660, %nyx_string** %2661
  %2662 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %2663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2662, i64 4)
  %2664 = alloca %nyx_string*
  store %nyx_string* %2663, %nyx_string** %2664
  %2665 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2665, i64 1)
  %2667 = alloca %nyx_string*
  store %nyx_string* %2666, %nyx_string** %2667
  %2668 = call i8* @llvm.stacksave()
  br label %while_cond479
while_cond479:
  %2669 = load i64, i64* %2634
  %2670 = load { i64, i8* }*, { i64, i8* }** %2631
  %2671 = call i64 @nyx_array_length({ i64, i8* }* %2670)
  %2672 = icmp slt i64 %2669, %2671
  br i1 %2672, label %while_body480, label %while_end481
while_body480:
  call void @llvm.stackrestore(i8* %2668)
  %2673 = load { i64, i8* }*, { i64, i8* }** %2631
  %2674 = load i64, i64* %2634
  %2675 = call i64 @nyx_array_get_checked({ i64, i8* }* %2673, i64 %2674, i64 2)
  %2676 = inttoptr i64 %2675 to %nyx_string*
  %2677 = alloca %nyx_string*
  store %nyx_string* %2676, %nyx_string** %2677
  %2678 = load %nyx_string*, %nyx_string** %2677
  %2679 = call { i64, i8* }* @cov_fields(%nyx_string* %2678)
  %2680 = alloca { i64, i8* }*
  store { i64, i8* }* %2679, { i64, i8* }** %2680
  %2681 = load { i64, i8* }*, { i64, i8* }** %2680
  %2682 = call i64 @nyx_array_length({ i64, i8* }* %2681)
  %2683 = icmp sge i64 %2682, 5
  br i1 %2683, label %then482, label %else483
then482:
  %2684 = load { i64, i8* }*, { i64, i8* }** %2680
  %2685 = call i64 @nyx_array_get_checked({ i64, i8* }* %2684, i64 0, i64 2)
  %2686 = inttoptr i64 %2685 to %nyx_string*
  %2687 = alloca %nyx_string*
  store %nyx_string* %2686, %nyx_string** %2687
  %2688 = load { i64, i8* }*, { i64, i8* }** %2680
  %2689 = call i64 @nyx_array_get_checked({ i64, i8* }* %2688, i64 1, i64 2)
  %2690 = inttoptr i64 %2689 to %nyx_string*
  %2691 = alloca %nyx_string*
  store %nyx_string* %2690, %nyx_string** %2691
  %2692 = load { i64, i8* }*, { i64, i8* }** %2680
  %2693 = call i64 @nyx_array_get_checked({ i64, i8* }* %2692, i64 2, i64 2)
  %2694 = inttoptr i64 %2693 to %nyx_string*
  %2695 = alloca %nyx_string*
  store %nyx_string* %2694, %nyx_string** %2695
  %2696 = load { i64, i8* }*, { i64, i8* }** %2680
  %2697 = call i64 @nyx_array_get_checked({ i64, i8* }* %2696, i64 3, i64 2)
  %2698 = inttoptr i64 %2697 to %nyx_string*
  %2699 = alloca %nyx_string*
  store %nyx_string* %2698, %nyx_string** %2699
  %2700 = load { i64, i8* }*, { i64, i8* }** %2680
  %2701 = call i64 @nyx_array_get_checked({ i64, i8* }* %2700, i64 4, i64 2)
  %2702 = inttoptr i64 %2701 to %nyx_string*
  %2703 = alloca %nyx_string*
  store %nyx_string* %2702, %nyx_string** %2703
  %2704 = alloca i1
  store i1 true, i1* %2704
  %2705 = alloca i1
  store i1 true, i1* %2705
  %2706 = alloca i1
  store i1 true, i1* %2706
  %2707 = load %nyx_string*, %nyx_string** %2703
  %2708 = load %nyx_string*, %nyx_string** %2637
  %2709 = call i1 @nyx_string_equals(%nyx_string* %2707, %nyx_string* %2708)
  br i1 %2709, label %sc_or_end486, label %sc_or_rhs485
sc_or_rhs485:
  %2710 = load %nyx_string*, %nyx_string** %2703
  %2711 = load %nyx_string*, %nyx_string** %2640
  %2712 = call i1 @nyx_string_equals(%nyx_string* %2710, %nyx_string* %2711)
  store i1 %2712, i1* %2706
  br label %sc_or_end486
sc_or_end486:
  %2713 = load i1, i1* %2706
  br i1 %2713, label %sc_or_end488, label %sc_or_rhs487
sc_or_rhs487:
  %2714 = load %nyx_string*, %nyx_string** %2703
  %2715 = load %nyx_string*, %nyx_string** %2643
  %2716 = call i1 @nyx_string_equals(%nyx_string* %2714, %nyx_string* %2715)
  store i1 %2716, i1* %2705
  br label %sc_or_end488
sc_or_end488:
  %2717 = load i1, i1* %2705
  br i1 %2717, label %sc_or_end490, label %sc_or_rhs489
sc_or_rhs489:
  %2718 = load %nyx_string*, %nyx_string** %2703
  %2719 = load %nyx_string*, %nyx_string** %2646
  %2720 = call i1 @nyx_string_equals(%nyx_string* %2718, %nyx_string* %2719)
  store i1 %2720, i1* %2704
  br label %sc_or_end490
sc_or_end490:
  %2721 = load i1, i1* %2704
  %2722 = alloca i1
  store i1 %2721, i1* %2722
  %2723 = alloca i1
  store i1 false, i1* %2723
  %2724 = alloca i1
  store i1 false, i1* %2724
  %2725 = load i1, i1* %2722
  br i1 %2725, label %sc_and_rhs491, label %sc_and_end492
sc_and_rhs491:
  %2726 = load %nyx_string*, %nyx_string** %2691
  %2727 = load %nyx_string*, %nyx_string** %2649
  %2728 = call i1 @nyx_string_starts_with(%nyx_string* %2726, %nyx_string* %2727)
  store i1 %2728, i1* %2724
  br label %sc_and_end492
sc_and_end492:
  %2729 = load i1, i1* %2724
  br i1 %2729, label %sc_and_rhs493, label %sc_and_end494
sc_and_rhs493:
  %2730 = load %nyx_string*, %nyx_string** %2699
  %2731 = load %nyx_string*, %nyx_string** %2652
  %2732 = call i1 @nyx_string_equals(%nyx_string* %2730, %nyx_string* %2731)
  %2733 = xor i1 %2732, true
  store i1 %2733, i1* %2723
  br label %sc_and_end494
sc_and_end494:
  %2734 = load i1, i1* %2723
  br i1 %2734, label %then495, label %else496
then495:
  %2735 = load i8*, i8** %2399
  %2736 = load %nyx_string*, %nyx_string** %2687
  %2737 = call i8* @nyx_string_to_cstr(%nyx_string* %2736)
  %2738 = call i1 @nyx_map_contains_str(i8* %2735, i8* %2737)
  %2739 = alloca i1
  store i1 %2738, i1* %2739
  %2740 = load %nyx_string*, %nyx_string** %2703
  %2741 = load %nyx_string*, %nyx_string** %2646
  %2742 = call i1 @nyx_string_equals(%nyx_string* %2740, %nyx_string* %2741)
  br i1 %2742, label %then498, label %else499
then498:
  %2743 = load i8*, i8** %2469
  %2744 = load %nyx_string*, %nyx_string** %2687
  %2745 = call i8* @nyx_string_to_cstr(%nyx_string* %2744)
  %2746 = call i1 @nyx_map_contains_str(i8* %2743, i8* %2745)
  store i1 %2746, i1* %2739
  br label %merge500
else499:
  br label %merge500
merge500:
  %2747 = load %nyx_string*, %nyx_string** %2655
  %2748 = alloca %nyx_string*
  store %nyx_string* %2747, %nyx_string** %2748
  %2749 = load i1, i1* %2739
  br i1 %2749, label %then501, label %else502
then501:
  %2750 = load %nyx_string*, %nyx_string** %2658
  store %nyx_string* %2750, %nyx_string** %2748
  br label %merge503
else502:
  %2751 = alloca i1
  store i1 false, i1* %2751
  %2752 = load i8*, i8** %2465
  %2753 = load %nyx_string*, %nyx_string** %2687
  %2754 = call i8* @nyx_string_to_cstr(%nyx_string* %2753)
  %2755 = call i1 @nyx_map_contains_str(i8* %2752, i8* %2754)
  %2756 = xor i1 %2755, true
  br i1 %2756, label %sc_and_rhs504, label %sc_and_end505
sc_and_rhs504:
  %2757 = load i8*, i8** %2467
  %2758 = load %nyx_string*, %nyx_string** %2687
  %2759 = call i8* @nyx_string_to_cstr(%nyx_string* %2758)
  %2760 = call i1 @nyx_map_contains_str(i8* %2757, i8* %2759)
  store i1 %2760, i1* %2751
  br label %sc_and_end505
sc_and_end505:
  %2761 = load i1, i1* %2751
  br i1 %2761, label %then506, label %else507
then506:
  %2762 = load %nyx_string*, %nyx_string** %2661
  store %nyx_string* %2762, %nyx_string** %2748
  br label %merge508
else507:
  br label %merge508
merge508:
  br label %merge503
merge503:
  %2763 = load { i64, i8* }*, { i64, i8* }** %2633
  %2764 = load %nyx_string*, %nyx_string** %2691
  %2765 = load %nyx_string*, %nyx_string** %2664
  %2766 = call %nyx_string* @nyx_string_concat(%nyx_string* %2764, %nyx_string* %2765)
  %2767 = load %nyx_string*, %nyx_string** %2695
  %2768 = call i64 @nyx_string_to_int(%nyx_string* %2767)
  %2769 = call %nyx_string* @cov_pad(i64 %2768)
  %2770 = call %nyx_string* @nyx_string_concat(%nyx_string* %2766, %nyx_string* %2769)
  %2771 = load %nyx_string*, %nyx_string** %2667
  %2772 = call %nyx_string* @nyx_string_concat(%nyx_string* %2770, %nyx_string* %2771)
  %2773 = load %nyx_string*, %nyx_string** %2699
  %2774 = call %nyx_string* @nyx_string_concat(%nyx_string* %2772, %nyx_string* %2773)
  %2775 = load %nyx_string*, %nyx_string** %2667
  %2776 = call %nyx_string* @nyx_string_concat(%nyx_string* %2774, %nyx_string* %2775)
  %2777 = load %nyx_string*, %nyx_string** %2748
  %2778 = call %nyx_string* @nyx_string_concat(%nyx_string* %2776, %nyx_string* %2777)
  %2779 = load %nyx_string*, %nyx_string** %2667
  %2780 = call %nyx_string* @nyx_string_concat(%nyx_string* %2778, %nyx_string* %2779)
  %2781 = load %nyx_string*, %nyx_string** %2691
  %2782 = call %nyx_string* @nyx_string_concat(%nyx_string* %2780, %nyx_string* %2781)
  %2783 = ptrtoint %nyx_string* %2782 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2763, i64 %2783, i64 2)
  br label %merge497
else496:
  br label %merge497
merge497:
  br label %merge484
else483:
  br label %merge484
merge484:
  %2784 = load i64, i64* %2634
  %2785 = add i64 %2784, 1
  store i64 %2785, i64* %2634
  br label %while_cond479
while_end481:
  %2786 = load { i64, i8* }*, { i64, i8* }** %2633
  %2787 = call { i64, i8* }* @sort_str({ i64, i8* }* %2786)
  %2788 = alloca { i64, i8* }*
  store { i64, i8* }* %2787, { i64, i8* }** %2788
  %2789 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2789, i64 0)
  %2791 = alloca %nyx_string*
  store %nyx_string* %2790, %nyx_string** %2791
  %2792 = alloca i64
  store i64 0, i64* %2792
  %2793 = alloca i64
  store i64 0, i64* %2793
  %2794 = alloca i64
  store i64 0, i64* %2794
  %2795 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2795, i64 0)
  %2797 = alloca %nyx_string*
  store %nyx_string* %2796, %nyx_string** %2797
  %2798 = getelementptr [10 x i8], [10 x i8]* @.str292, i32 0, i32 0
  %2799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2798, i64 9)
  %2800 = alloca %nyx_string*
  store %nyx_string* %2799, %nyx_string** %2800
  %2801 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2801, i64 1)
  %2803 = alloca %nyx_string*
  store %nyx_string* %2802, %nyx_string** %2803
  %2804 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2804, i64 2)
  %2806 = alloca %nyx_string*
  store %nyx_string* %2805, %nyx_string** %2806
  %2807 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2807, i64 1)
  %2809 = alloca %nyx_string*
  store %nyx_string* %2808, %nyx_string** %2809
  %2810 = getelementptr [5 x i8], [5 x i8]* @.str296, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2810, i64 4)
  %2812 = alloca %nyx_string*
  store %nyx_string* %2811, %nyx_string** %2812
  %2813 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2813, i64 1)
  %2815 = alloca %nyx_string*
  store %nyx_string* %2814, %nyx_string** %2815
  %2816 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2816, i64 1)
  %2818 = alloca %nyx_string*
  store %nyx_string* %2817, %nyx_string** %2818
  %2819 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2819, i64 3)
  %2821 = alloca %nyx_string*
  store %nyx_string* %2820, %nyx_string** %2821
  %2822 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %2823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2822, i64 1)
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2825, i64 1)
  %2827 = alloca %nyx_string*
  store %nyx_string* %2826, %nyx_string** %2827
  %2828 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %2829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2828, i64 5)
  %2830 = alloca %nyx_string*
  store %nyx_string* %2829, %nyx_string** %2830
  %2831 = getelementptr [3 x i8], [3 x i8]* @.str303, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2831, i64 2)
  %2833 = alloca %nyx_string*
  store %nyx_string* %2832, %nyx_string** %2833
  %2834 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %2835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2834, i64 2)
  %2836 = alloca %nyx_string*
  store %nyx_string* %2835, %nyx_string** %2836
  %2837 = getelementptr [2 x i8], [2 x i8]* @.str305, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2837, i64 1)
  %2839 = alloca %nyx_string*
  store %nyx_string* %2838, %nyx_string** %2839
  %2840 = getelementptr [10 x i8], [10 x i8]* @.str306, i32 0, i32 0
  %2841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2840, i64 9)
  %2842 = alloca %nyx_string*
  store %nyx_string* %2841, %nyx_string** %2842
  %2843 = getelementptr [29 x i8], [29 x i8]* @.str307, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2843, i64 28)
  %2845 = alloca %nyx_string*
  store %nyx_string* %2844, %nyx_string** %2845
  %2846 = getelementptr [3 x i8], [3 x i8]* @.str308, i32 0, i32 0
  %2847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2846, i64 2)
  %2848 = alloca %nyx_string*
  store %nyx_string* %2847, %nyx_string** %2848
  %2849 = getelementptr [38 x i8], [38 x i8]* @.str309, i32 0, i32 0
  %2850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2849, i64 37)
  %2851 = alloca %nyx_string*
  store %nyx_string* %2850, %nyx_string** %2851
  %2852 = getelementptr [4 x i8], [4 x i8]* @.str310, i32 0, i32 0
  %2853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2852, i64 3)
  %2854 = alloca %nyx_string*
  store %nyx_string* %2853, %nyx_string** %2854
  %2855 = getelementptr [5 x i8], [5 x i8]* @.str311, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2855, i64 4)
  %2857 = alloca %nyx_string*
  store %nyx_string* %2856, %nyx_string** %2857
  %2858 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %2859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2858, i64 5)
  %2860 = alloca %nyx_string*
  store %nyx_string* %2859, %nyx_string** %2860
  %2861 = getelementptr [16 x i8], [16 x i8]* @.str313, i32 0, i32 0
  %2862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2861, i64 15)
  %2863 = alloca %nyx_string*
  store %nyx_string* %2862, %nyx_string** %2863
  %2864 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2865 = load i64, i64* %2794
  %2866 = load { i64, i8* }*, { i64, i8* }** %2788
  %2867 = call i64 @nyx_array_length({ i64, i8* }* %2866)
  %2868 = icmp slt i64 %2865, %2867
  br i1 %2868, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2864)
  %2869 = load { i64, i8* }*, { i64, i8* }** %2788
  %2870 = load i64, i64* %2794
  %2871 = call i64 @nyx_array_get_checked({ i64, i8* }* %2869, i64 %2870, i64 2)
  %2872 = inttoptr i64 %2871 to %nyx_string*
  %2873 = alloca %nyx_string*
  store %nyx_string* %2872, %nyx_string** %2873
  %2874 = load %nyx_string*, %nyx_string** %2873
  %2875 = call { i64, i8* }* @cov_fields(%nyx_string* %2874)
  %2876 = alloca { i64, i8* }*
  store { i64, i8* }* %2875, { i64, i8* }** %2876
  %2877 = load { i64, i8* }*, { i64, i8* }** %2876
  %2878 = call i64 @nyx_array_get_checked({ i64, i8* }* %2877, i64 0, i64 2)
  %2879 = inttoptr i64 %2878 to %nyx_string*
  %2880 = alloca %nyx_string*
  store %nyx_string* %2879, %nyx_string** %2880
  %2881 = load { i64, i8* }*, { i64, i8* }** %2876
  %2882 = call i64 @nyx_array_get_checked({ i64, i8* }* %2881, i64 4, i64 2)
  %2883 = inttoptr i64 %2882 to %nyx_string*
  %2884 = alloca %nyx_string*
  store %nyx_string* %2883, %nyx_string** %2884
  %2885 = alloca i64
  store i64 0, i64* %2885
  %2886 = alloca i64
  store i64 0, i64* %2886
  %2887 = alloca i64
  store i64 0, i64* %2887
  %2888 = call { i64, i8* }* @nyx_array_new_ptr()
  %2889 = alloca { i64, i8* }*
  store { i64, i8* }* %2888, { i64, i8* }** %2889
  %2890 = load %nyx_string*, %nyx_string** %2797
  %2891 = alloca %nyx_string*
  store %nyx_string* %2890, %nyx_string** %2891
  %2892 = load %nyx_string*, %nyx_string** %2797
  %2893 = alloca %nyx_string*
  store %nyx_string* %2892, %nyx_string** %2893
  %2894 = load i64, i64* %2794
  %2895 = alloca i64
  store i64 %2894, i64* %2895
  %2896 = alloca i1
  store i1 1, i1* %2896
  %2897 = call i8* @llvm.stacksave()
  br label %while_cond512
while_cond512:
  %2898 = alloca i1
  store i1 false, i1* %2898
  %2899 = load i64, i64* %2895
  %2900 = load { i64, i8* }*, { i64, i8* }** %2788
  %2901 = call i64 @nyx_array_length({ i64, i8* }* %2900)
  %2902 = icmp slt i64 %2899, %2901
  br i1 %2902, label %sc_and_rhs515, label %sc_and_end516
sc_and_rhs515:
  %2903 = load i1, i1* %2896
  store i1 %2903, i1* %2898
  br label %sc_and_end516
sc_and_end516:
  %2904 = load i1, i1* %2898
  br i1 %2904, label %while_body513, label %while_end514
while_body513:
  call void @llvm.stackrestore(i8* %2897)
  %2905 = load { i64, i8* }*, { i64, i8* }** %2788
  %2906 = load i64, i64* %2895
  %2907 = call i64 @nyx_array_get_checked({ i64, i8* }* %2905, i64 %2906, i64 2)
  %2908 = inttoptr i64 %2907 to %nyx_string*
  %2909 = alloca %nyx_string*
  store %nyx_string* %2908, %nyx_string** %2909
  %2910 = load %nyx_string*, %nyx_string** %2909
  %2911 = call { i64, i8* }* @cov_fields(%nyx_string* %2910)
  %2912 = alloca { i64, i8* }*
  store { i64, i8* }* %2911, { i64, i8* }** %2912
  %2913 = load { i64, i8* }*, { i64, i8* }** %2912
  %2914 = call i64 @nyx_array_get_checked({ i64, i8* }* %2913, i64 0, i64 2)
  %2915 = inttoptr i64 %2914 to %nyx_string*
  %2916 = alloca %nyx_string*
  store %nyx_string* %2915, %nyx_string** %2916
  %2917 = load %nyx_string*, %nyx_string** %2916
  %2918 = load %nyx_string*, %nyx_string** %2880
  %2919 = call i1 @nyx_string_equals(%nyx_string* %2917, %nyx_string* %2918)
  %2920 = xor i1 %2919, true
  br i1 %2920, label %then517, label %else518
then517:
  store i1 0, i1* %2896
  br label %merge519
else518:
  %2921 = load { i64, i8* }*, { i64, i8* }** %2912
  %2922 = call i64 @nyx_array_get({ i64, i8* }* %2921, i64 1)
  %2923 = inttoptr i64 %2922 to %nyx_string*
  %2924 = call i64 @nyx_string_to_int(%nyx_string* %2923)
  %2925 = alloca i64
  store i64 %2924, i64* %2925
  %2926 = load { i64, i8* }*, { i64, i8* }** %2912
  %2927 = call i64 @nyx_array_get_checked({ i64, i8* }* %2926, i64 2, i64 2)
  %2928 = inttoptr i64 %2927 to %nyx_string*
  %2929 = alloca %nyx_string*
  store %nyx_string* %2928, %nyx_string** %2929
  %2930 = load { i64, i8* }*, { i64, i8* }** %2912
  %2931 = call i64 @nyx_array_get_checked({ i64, i8* }* %2930, i64 3, i64 2)
  %2932 = inttoptr i64 %2931 to %nyx_string*
  %2933 = alloca %nyx_string*
  store %nyx_string* %2932, %nyx_string** %2933
  %2934 = load %nyx_string*, %nyx_string** %2933
  %2935 = load %nyx_string*, %nyx_string** %2800
  %2936 = call i1 @nyx_string_equals(%nyx_string* %2934, %nyx_string* %2935)
  br i1 %2936, label %then520, label %else521
then520:
  %2937 = load i64, i64* %2887
  %2938 = add i64 %2937, 1
  store i64 %2938, i64* %2887
  br label %merge522
else521:
  %2939 = load i64, i64* %2886
  %2940 = add i64 %2939, 1
  store i64 %2940, i64* %2886
  %2941 = load %nyx_string*, %nyx_string** %2803
  %2942 = alloca %nyx_string*
  store %nyx_string* %2941, %nyx_string** %2942
  %2943 = load %nyx_string*, %nyx_string** %2933
  %2944 = load %nyx_string*, %nyx_string** %2806
  %2945 = call i1 @nyx_string_equals(%nyx_string* %2943, %nyx_string* %2944)
  br i1 %2945, label %then523, label %else524
then523:
  %2946 = load i64, i64* %2885
  %2947 = add i64 %2946, 1
  store i64 %2947, i64* %2885
  %2948 = load %nyx_string*, %nyx_string** %2809
  store %nyx_string* %2948, %nyx_string** %2942
  br label %merge525
else524:
  %2949 = load { i64, i8* }*, { i64, i8* }** %2889
  %2950 = load %nyx_string*, %nyx_string** %2812
  %2951 = load %nyx_string*, %nyx_string** %2880
  %2952 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2951)
  %2953 = load %nyx_string*, %nyx_string** %2815
  %2954 = call %nyx_string* @nyx_string_concat(%nyx_string* %2952, %nyx_string* %2953)
  %2955 = load i64, i64* %2925
  %2956 = call %nyx_string* @nyx_string_from_int(i64 %2955)
  %2957 = call %nyx_string* @nyx_string_concat(%nyx_string* %2954, %nyx_string* %2956)
  %2958 = load %nyx_string*, %nyx_string** %2818
  %2959 = call %nyx_string* @nyx_string_concat(%nyx_string* %2957, %nyx_string* %2958)
  %2960 = load %nyx_string*, %nyx_string** %2929
  %2961 = call %nyx_string* @nyx_string_concat(%nyx_string* %2959, %nyx_string* %2960)
  %2962 = ptrtoint %nyx_string* %2961 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2949, i64 %2962, i64 2)
  br label %merge525
merge525:
  %2963 = load %nyx_string*, %nyx_string** %2891
  %2964 = load %nyx_string*, %nyx_string** %2821
  %2965 = call %nyx_string* @nyx_string_concat(%nyx_string* %2963, %nyx_string* %2964)
  %2966 = load i64, i64* %2925
  %2967 = call %nyx_string* @nyx_string_from_int(i64 %2966)
  %2968 = call %nyx_string* @nyx_string_concat(%nyx_string* %2965, %nyx_string* %2967)
  %2969 = load %nyx_string*, %nyx_string** %2824
  %2970 = call %nyx_string* @nyx_string_concat(%nyx_string* %2968, %nyx_string* %2969)
  %2971 = load %nyx_string*, %nyx_string** %2929
  %2972 = call %nyx_string* @nyx_string_concat(%nyx_string* %2970, %nyx_string* %2971)
  %2973 = load %nyx_string*, %nyx_string** %2827
  %2974 = call %nyx_string* @nyx_string_concat(%nyx_string* %2972, %nyx_string* %2973)
  store %nyx_string* %2974, %nyx_string** %2891
  %2975 = load %nyx_string*, %nyx_string** %2893
  %2976 = load %nyx_string*, %nyx_string** %2830
  %2977 = call %nyx_string* @nyx_string_concat(%nyx_string* %2975, %nyx_string* %2976)
  %2978 = load %nyx_string*, %nyx_string** %2942
  %2979 = call %nyx_string* @nyx_string_concat(%nyx_string* %2977, %nyx_string* %2978)
  %2980 = load %nyx_string*, %nyx_string** %2824
  %2981 = call %nyx_string* @nyx_string_concat(%nyx_string* %2979, %nyx_string* %2980)
  %2982 = load %nyx_string*, %nyx_string** %2929
  %2983 = call %nyx_string* @nyx_string_concat(%nyx_string* %2981, %nyx_string* %2982)
  %2984 = load %nyx_string*, %nyx_string** %2827
  %2985 = call %nyx_string* @nyx_string_concat(%nyx_string* %2983, %nyx_string* %2984)
  store %nyx_string* %2985, %nyx_string** %2893
  br label %merge522
merge522:
  %2986 = load i64, i64* %2895
  %2987 = add i64 %2986, 1
  store i64 %2987, i64* %2895
  br label %merge519
merge519:
  br label %while_cond512
while_end514:
  %2988 = load %nyx_string*, %nyx_string** %2833
  %2989 = load %nyx_string*, %nyx_string** %2880
  %2990 = call %nyx_string* @nyx_string_concat(%nyx_string* %2988, %nyx_string* %2989)
  %2991 = load %nyx_string*, %nyx_string** %2836
  %2992 = call %nyx_string* @nyx_string_concat(%nyx_string* %2990, %nyx_string* %2991)
  %2993 = load i64, i64* %2885
  %2994 = call %nyx_string* @nyx_string_from_int(i64 %2993)
  %2995 = call %nyx_string* @nyx_string_concat(%nyx_string* %2992, %nyx_string* %2994)
  %2996 = load %nyx_string*, %nyx_string** %2839
  %2997 = call %nyx_string* @nyx_string_concat(%nyx_string* %2995, %nyx_string* %2996)
  %2998 = load i64, i64* %2886
  %2999 = call %nyx_string* @nyx_string_from_int(i64 %2998)
  %3000 = call %nyx_string* @nyx_string_concat(%nyx_string* %2997, %nyx_string* %2999)
  %3001 = load %nyx_string*, %nyx_string** %2842
  %3002 = call %nyx_string* @nyx_string_concat(%nyx_string* %3000, %nyx_string* %3001)
  %3003 = alloca %nyx_string*
  store %nyx_string* %3002, %nyx_string** %3003
  %3004 = load i8*, i8** %2471
  %3005 = load %nyx_string*, %nyx_string** %2884
  %3006 = call i8* @nyx_string_to_cstr(%nyx_string* %3005)
  %3007 = call i1 @nyx_map_contains_str(i8* %3004, i8* %3006)
  %3008 = xor i1 %3007, true
  br i1 %3008, label %then526, label %else527
then526:
  %3009 = load %nyx_string*, %nyx_string** %3003
  %3010 = load %nyx_string*, %nyx_string** %2845
  %3011 = call %nyx_string* @nyx_string_concat(%nyx_string* %3009, %nyx_string* %3010)
  store %nyx_string* %3011, %nyx_string** %3003
  br label %merge528
else527:
  br label %merge528
merge528:
  %3012 = load i64, i64* %2887
  %3013 = icmp sgt i64 %3012, 0
  br i1 %3013, label %then529, label %else530
then529:
  %3014 = load %nyx_string*, %nyx_string** %3003
  %3015 = load %nyx_string*, %nyx_string** %2848
  %3016 = call %nyx_string* @nyx_string_concat(%nyx_string* %3014, %nyx_string* %3015)
  %3017 = load i64, i64* %2887
  %3018 = call %nyx_string* @nyx_string_from_int(i64 %3017)
  %3019 = call %nyx_string* @nyx_string_concat(%nyx_string* %3016, %nyx_string* %3018)
  %3020 = load %nyx_string*, %nyx_string** %2851
  %3021 = call %nyx_string* @nyx_string_concat(%nyx_string* %3019, %nyx_string* %3020)
  store %nyx_string* %3021, %nyx_string** %3003
  br label %merge531
else530:
  br label %merge531
merge531:
  %3022 = load %nyx_string*, %nyx_string** %3003
  %3023 = call i8* @nyx_string_to_cstr(%nyx_string* %3022)
  call void @nyx_print_string(i8* %3023)
  %3024 = alloca i64
  store i64 0, i64* %3024
  %3025 = call i8* @llvm.stacksave()
  br label %while_cond532
while_cond532:
  %3026 = load i64, i64* %3024
  %3027 = load { i64, i8* }*, { i64, i8* }** %2889
  %3028 = call i64 @nyx_array_length({ i64, i8* }* %3027)
  %3029 = icmp slt i64 %3026, %3028
  br i1 %3029, label %while_body533, label %while_end534
while_body533:
  call void @llvm.stackrestore(i8* %3025)
  %3030 = load { i64, i8* }*, { i64, i8* }** %2889
  %3031 = load i64, i64* %3024
  %3032 = call i64 @nyx_array_get_checked({ i64, i8* }* %3030, i64 %3031, i64 2)
  %3033 = inttoptr i64 %3032 to %nyx_string*
  %3034 = alloca %nyx_string*
  store %nyx_string* %3033, %nyx_string** %3034
  %3035 = load %nyx_string*, %nyx_string** %3034
  %3036 = call i8* @nyx_string_to_cstr(%nyx_string* %3035)
  call void @nyx_print_string(i8* %3036)
  %3037 = load i64, i64* %3024
  %3038 = add i64 %3037, 1
  store i64 %3038, i64* %3024
  br label %while_cond532
while_end534:
  %3039 = load i64, i64* %2792
  %3040 = load i64, i64* %2885
  %3041 = add i64 %3039, %3040
  store i64 %3041, i64* %2792
  %3042 = load i64, i64* %2793
  %3043 = load i64, i64* %2886
  %3044 = add i64 %3042, %3043
  store i64 %3044, i64* %2793
  %3045 = load %nyx_string*, %nyx_string** %2791
  %3046 = load %nyx_string*, %nyx_string** %2854
  %3047 = call %nyx_string* @nyx_string_concat(%nyx_string* %3045, %nyx_string* %3046)
  %3048 = load %nyx_string*, %nyx_string** %2880
  %3049 = call %nyx_string* @nyx_string_concat(%nyx_string* %3047, %nyx_string* %3048)
  %3050 = load %nyx_string*, %nyx_string** %2827
  %3051 = call %nyx_string* @nyx_string_concat(%nyx_string* %3049, %nyx_string* %3050)
  %3052 = load %nyx_string*, %nyx_string** %2891
  %3053 = call %nyx_string* @nyx_string_concat(%nyx_string* %3051, %nyx_string* %3052)
  %3054 = load %nyx_string*, %nyx_string** %2893
  %3055 = call %nyx_string* @nyx_string_concat(%nyx_string* %3053, %nyx_string* %3054)
  %3056 = load %nyx_string*, %nyx_string** %2857
  %3057 = call %nyx_string* @nyx_string_concat(%nyx_string* %3055, %nyx_string* %3056)
  %3058 = load i64, i64* %2886
  %3059 = call %nyx_string* @nyx_string_from_int(i64 %3058)
  %3060 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3059)
  %3061 = load %nyx_string*, %nyx_string** %2860
  %3062 = call %nyx_string* @nyx_string_concat(%nyx_string* %3060, %nyx_string* %3061)
  %3063 = load i64, i64* %2885
  %3064 = call %nyx_string* @nyx_string_from_int(i64 %3063)
  %3065 = call %nyx_string* @nyx_string_concat(%nyx_string* %3062, %nyx_string* %3064)
  %3066 = load %nyx_string*, %nyx_string** %2863
  %3067 = call %nyx_string* @nyx_string_concat(%nyx_string* %3065, %nyx_string* %3066)
  store %nyx_string* %3067, %nyx_string** %2791
  %3068 = load i64, i64* %2895
  store i64 %3068, i64* %2794
  br label %while_cond509
while_end511:
  %3069 = load { i64, i8* }*, { i64, i8* }** %2337
  %3070 = call i64 @nyx_array_length({ i64, i8* }* %3069)
  %3071 = icmp sgt i64 %3070, 0
  br i1 %3071, label %then535, label %else536
then535:
  %3072 = getelementptr [70 x i8], [70 x i8]* @.str314, i32 0, i32 0
  %3073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3072, i64 69)
  %3074 = call i8* @nyx_string_to_cstr(%nyx_string* %3073)
  call void @nyx_print_string(i8* %3074)
  %3075 = alloca i64
  store i64 0, i64* %3075
  %3076 = getelementptr [5 x i8], [5 x i8]* @.str315, i32 0, i32 0
  %3077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3076, i64 4)
  %3078 = alloca %nyx_string*
  store %nyx_string* %3077, %nyx_string** %3078
  %3079 = call i8* @llvm.stacksave()
  br label %while_cond538
while_cond538:
  %3080 = load i64, i64* %3075
  %3081 = load { i64, i8* }*, { i64, i8* }** %2337
  %3082 = call i64 @nyx_array_length({ i64, i8* }* %3081)
  %3083 = icmp slt i64 %3080, %3082
  br i1 %3083, label %while_body539, label %while_end540
while_body539:
  call void @llvm.stackrestore(i8* %3079)
  %3084 = load { i64, i8* }*, { i64, i8* }** %2337
  %3085 = load i64, i64* %3075
  %3086 = call i64 @nyx_array_get_checked({ i64, i8* }* %3084, i64 %3085, i64 2)
  %3087 = inttoptr i64 %3086 to %nyx_string*
  %3088 = alloca %nyx_string*
  store %nyx_string* %3087, %nyx_string** %3088
  %3089 = load %nyx_string*, %nyx_string** %3078
  %3090 = load %nyx_string*, %nyx_string** %3088
  %3091 = call %nyx_string* @nyx_string_concat(%nyx_string* %3089, %nyx_string* %3090)
  %3092 = call i8* @nyx_string_to_cstr(%nyx_string* %3091)
  call void @nyx_print_string(i8* %3092)
  %3093 = load i64, i64* %3075
  %3094 = add i64 %3093, 1
  store i64 %3094, i64* %3075
  br label %while_cond538
while_end540:
  br label %merge537
else536:
  br label %merge537
merge537:
  %3095 = getelementptr [10 x i8], [10 x i8]* @.str316, i32 0, i32 0
  %3096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3095, i64 9)
  %3097 = load i64, i64* %2792
  %3098 = call %nyx_string* @nyx_string_from_int(i64 %3097)
  %3099 = call %nyx_string* @nyx_string_concat(%nyx_string* %3096, %nyx_string* %3098)
  %3100 = getelementptr [2 x i8], [2 x i8]* @.str317, i32 0, i32 0
  %3101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3100, i64 1)
  %3102 = call %nyx_string* @nyx_string_concat(%nyx_string* %3099, %nyx_string* %3101)
  %3103 = load i64, i64* %2793
  %3104 = call %nyx_string* @nyx_string_from_int(i64 %3103)
  %3105 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3104)
  %3106 = getelementptr [20 x i8], [20 x i8]* @.str318, i32 0, i32 0
  %3107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3106, i64 19)
  %3108 = call %nyx_string* @nyx_string_concat(%nyx_string* %3105, %nyx_string* %3107)
  %3109 = call i8* @nyx_string_to_cstr(%nyx_string* %3108)
  call void @nyx_print_string(i8* %3109)
  %3110 = load i1, i1* %want_lcov.ptr
  br i1 %3110, label %then541, label %else542
then541:
  %3111 = getelementptr [11 x i8], [11 x i8]* @.str319, i32 0, i32 0
  %3112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3111, i64 10)
  %3113 = load %nyx_string*, %nyx_string** %2323
  %3114 = call %nyx_string* @nyx_string_concat(%nyx_string* %3112, %nyx_string* %3113)
  %3115 = getelementptr [9 x i8], [9 x i8]* @.str320, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3115, i64 8)
  %3117 = call %nyx_string* @nyx_string_concat(%nyx_string* %3114, %nyx_string* %3116)
  %3118 = call i8* @nyx_string_to_cstr(%nyx_string* %3117)
  %3119 = call i64 @nyx_exec_code(i8* %3118)
  %3120 = load %nyx_string*, %nyx_string** %2323
  %3121 = getelementptr [22 x i8], [22 x i8]* @.str321, i32 0, i32 0
  %3122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3121, i64 21)
  %3123 = call %nyx_string* @nyx_string_concat(%nyx_string* %3120, %nyx_string* %3122)
  %3124 = load %nyx_string*, %nyx_string** %2791
  %3125 = call i8* @nyx_string_to_cstr(%nyx_string* %3123)
  %3126 = call i1 @nyx_write_file_safe(i8* %3125, %nyx_string* %3124)
  %3127 = getelementptr [29 x i8], [29 x i8]* @.str322, i32 0, i32 0
  %3128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3127, i64 28)
  %3129 = call i8* @nyx_string_to_cstr(%nyx_string* %3128)
  call void @nyx_print_string(i8* %3129)
  br label %merge543
else542:
  br label %merge543
merge543:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3130 = getelementptr [115 x i8], [115 x i8]* @.str323, i32 0, i32 0
  %3131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3130, i64 114)
  %3132 = call i8* @nyx_string_to_cstr(%nyx_string* %3131)
  call void @nyx_print_string(i8* %3132)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3133 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %3134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3133, i64 4)
  %3135 = load %nyx_string*, %nyx_string** %nh.ptr
  %3136 = call %nyx_string* @nyx_string_concat(%nyx_string* %3134, %nyx_string* %3135)
  %3137 = getelementptr [66 x i8], [66 x i8]* @.str325, i32 0, i32 0
  %3138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3137, i64 65)
  %3139 = call %nyx_string* @nyx_string_concat(%nyx_string* %3136, %nyx_string* %3138)
  %3140 = call i8* @nyx_string_to_cstr(%nyx_string* %3139)
  %3141 = call %nyx_string* @nyx_exec(i8* %3140)
  %3142 = call %nyx_string* @nyx_string_trim(%nyx_string* %3141)
  ret %nyx_string* %3142
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3143 = getelementptr [5 x i8], [5 x i8]* @.str326, i32 0, i32 0
  %3144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3143, i64 4)
  %3145 = load %nyx_string*, %nyx_string** %nh.ptr
  %3146 = call %nyx_string* @nyx_string_concat(%nyx_string* %3144, %nyx_string* %3145)
  %3147 = getelementptr [74 x i8], [74 x i8]* @.str327, i32 0, i32 0
  %3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3147, i64 73)
  %3149 = call %nyx_string* @nyx_string_concat(%nyx_string* %3146, %nyx_string* %3148)
  %3150 = call i8* @nyx_string_to_cstr(%nyx_string* %3149)
  %3151 = call %nyx_string* @nyx_exec(i8* %3150)
  %3152 = call %nyx_string* @nyx_string_trim(%nyx_string* %3151)
  ret %nyx_string* %3152
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3153 = getelementptr [24 x i8], [24 x i8]* @.str328, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3153, i64 23)
  %3155 = call i8* @nyx_string_to_cstr(%nyx_string* %3154)
  call void @nyx_print_string(i8* %3155)
  %3156 = getelementptr [9 x i8], [9 x i8]* @.str329, i32 0, i32 0
  %3157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3156, i64 8)
  %3158 = call i8* @nyx_string_to_cstr(%nyx_string* %3157)
  %3159 = call %nyx_string* @nyx_getenv(i8* %3158)
  %3160 = alloca %nyx_string*
  store %nyx_string* %3159, %nyx_string** %3160
  %3161 = load %nyx_string*, %nyx_string** %3160
  %3162 = getelementptr [9 x i8], [9 x i8]* @.str330, i32 0, i32 0
  %3163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3162, i64 8)
  %3164 = call %nyx_string* @nyx_string_concat(%nyx_string* %3161, %nyx_string* %3163)
  %3165 = call i8* @nyx_string_to_cstr(%nyx_string* %3164)
  %3166 = call %nyx_string* @nyx_read_file(i8* %3165)
  %3167 = call %nyx_string* @nyx_string_trim(%nyx_string* %3166)
  %3168 = alloca %nyx_string*
  store %nyx_string* %3167, %nyx_string** %3168
  %3169 = load %nyx_string*, %nyx_string** %3160
  %3170 = call %nyx_string* @huella_compilador(%nyx_string* %3169)
  %3171 = alloca %nyx_string*
  store %nyx_string* %3170, %nyx_string** %3171
  %3172 = load %nyx_string*, %nyx_string** %3160
  %3173 = call %nyx_string* @huella_resto(%nyx_string* %3172)
  %3174 = alloca %nyx_string*
  store %nyx_string* %3173, %nyx_string** %3174
  %3175 = getelementptr [18 x i8], [18 x i8]* @.str331, i32 0, i32 0
  %3176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3175, i64 17)
  %3177 = load %nyx_string*, %nyx_string** %3168
  %3178 = call %nyx_string* @nyx_string_concat(%nyx_string* %3176, %nyx_string* %3177)
  %3179 = getelementptr [17 x i8], [17 x i8]* @.str332, i32 0, i32 0
  %3180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3179, i64 16)
  %3181 = call %nyx_string* @nyx_string_concat(%nyx_string* %3178, %nyx_string* %3180)
  %3182 = load %nyx_string*, %nyx_string** %3171
  %3183 = call %nyx_string* @nyx_string_concat(%nyx_string* %3181, %nyx_string* %3182)
  %3184 = getelementptr [2 x i8], [2 x i8]* @.str333, i32 0, i32 0
  %3185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3184, i64 1)
  %3186 = call %nyx_string* @nyx_string_concat(%nyx_string* %3183, %nyx_string* %3185)
  %3187 = call i8* @nyx_string_to_cstr(%nyx_string* %3186)
  call void @nyx_print_string(i8* %3187)
  %3188 = call %TestConfig @load_test_config()
  %3189 = alloca %TestConfig
  store %TestConfig %3188, %TestConfig* %3189
  %3190 = call { i64, i8* }* @nyx_get_args()
  %3191 = alloca { i64, i8* }*
  store { i64, i8* }* %3190, { i64, i8* }** %3191
  %3192 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %3193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3192, i64 0)
  %3194 = alloca %nyx_string*
  store %nyx_string* %3193, %nyx_string** %3194
  %3195 = alloca i64
  store i64 1, i64* %3195
  %3196 = getelementptr [9 x i8], [9 x i8]* @.str335, i32 0, i32 0
  %3197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3196, i64 8)
  %3198 = alloca %nyx_string*
  store %nyx_string* %3197, %nyx_string** %3198
  %3199 = getelementptr [10 x i8], [10 x i8]* @.str336, i32 0, i32 0
  %3200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3199, i64 9)
  %3201 = alloca %nyx_string*
  store %nyx_string* %3200, %nyx_string** %3201
  %3202 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %3203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3202, i64 2)
  %3204 = alloca %nyx_string*
  store %nyx_string* %3203, %nyx_string** %3204
  %3205 = getelementptr [10 x i8], [10 x i8]* @.str338, i32 0, i32 0
  %3206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3205, i64 9)
  %3207 = alloca %nyx_string*
  store %nyx_string* %3206, %nyx_string** %3207
  %3208 = getelementptr [10 x i8], [10 x i8]* @.str339, i32 0, i32 0
  %3209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3208, i64 9)
  %3210 = alloca %nyx_string*
  store %nyx_string* %3209, %nyx_string** %3210
  %3211 = getelementptr [11 x i8], [11 x i8]* @.str340, i32 0, i32 0
  %3212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3211, i64 10)
  %3213 = alloca %nyx_string*
  store %nyx_string* %3212, %nyx_string** %3213
  %3214 = getelementptr [16 x i8], [16 x i8]* @.str341, i32 0, i32 0
  %3215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3214, i64 15)
  %3216 = alloca %nyx_string*
  store %nyx_string* %3215, %nyx_string** %3216
  %3217 = getelementptr [8 x i8], [8 x i8]* @.str342, i32 0, i32 0
  %3218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3217, i64 7)
  %3219 = alloca %nyx_string*
  store %nyx_string* %3218, %nyx_string** %3219
  %3220 = getelementptr [12 x i8], [12 x i8]* @.str343, i32 0, i32 0
  %3221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3220, i64 11)
  %3222 = alloca %nyx_string*
  store %nyx_string* %3221, %nyx_string** %3222
  %3223 = getelementptr [24 x i8], [24 x i8]* @.str344, i32 0, i32 0
  %3224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3223, i64 23)
  %3225 = alloca %nyx_string*
  store %nyx_string* %3224, %nyx_string** %3225
  %3226 = getelementptr [106 x i8], [106 x i8]* @.str345, i32 0, i32 0
  %3227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3226, i64 105)
  %3228 = alloca %nyx_string*
  store %nyx_string* %3227, %nyx_string** %3228
  %3229 = getelementptr [9 x i8], [9 x i8]* @.str346, i32 0, i32 0
  %3230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3229, i64 8)
  %3231 = alloca %nyx_string*
  store %nyx_string* %3230, %nyx_string** %3231
  %3232 = getelementptr [10 x i8], [10 x i8]* @.str347, i32 0, i32 0
  %3233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3232, i64 9)
  %3234 = alloca %nyx_string*
  store %nyx_string* %3233, %nyx_string** %3234
  %3235 = getelementptr [2 x i8], [2 x i8]* @.str348, i32 0, i32 0
  %3236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3235, i64 1)
  %3237 = alloca %nyx_string*
  store %nyx_string* %3236, %nyx_string** %3237
  %3238 = getelementptr [4 x i8], [4 x i8]* @.str349, i32 0, i32 0
  %3239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3238, i64 3)
  %3240 = alloca %nyx_string*
  store %nyx_string* %3239, %nyx_string** %3240
  %3241 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %3242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3241, i64 1)
  %3243 = alloca %nyx_string*
  store %nyx_string* %3242, %nyx_string** %3243
  %3244 = call i8* @llvm.stacksave()
  br label %while_cond544
while_cond544:
  %3245 = load i64, i64* %3195
  %3246 = load { i64, i8* }*, { i64, i8* }** %3191
  %3247 = call i64 @nyx_array_length({ i64, i8* }* %3246)
  %3248 = icmp slt i64 %3245, %3247
  br i1 %3248, label %while_body545, label %while_end546
while_body545:
  call void @llvm.stackrestore(i8* %3244)
  %3249 = load { i64, i8* }*, { i64, i8* }** %3191
  %3250 = load i64, i64* %3195
  %3251 = call i64 @nyx_array_get_checked({ i64, i8* }* %3249, i64 %3250, i64 2)
  %3252 = inttoptr i64 %3251 to %nyx_string*
  %3253 = alloca %nyx_string*
  store %nyx_string* %3252, %nyx_string** %3253
  %3254 = alloca i1
  store i1 false, i1* %3254
  %3255 = load %nyx_string*, %nyx_string** %3253
  %3256 = load %nyx_string*, %nyx_string** %3198
  %3257 = call i1 @nyx_string_equals(%nyx_string* %3255, %nyx_string* %3256)
  br i1 %3257, label %sc_and_rhs547, label %sc_and_end548
sc_and_rhs547:
  %3258 = load i64, i64* %3195
  %3259 = add i64 %3258, 1
  %3260 = load { i64, i8* }*, { i64, i8* }** %3191
  %3261 = call i64 @nyx_array_length({ i64, i8* }* %3260)
  %3262 = icmp slt i64 %3259, %3261
  store i1 %3262, i1* %3254
  br label %sc_and_end548
sc_and_end548:
  %3263 = load i1, i1* %3254
  br i1 %3263, label %then549, label %else550
then549:
  %3264 = load i64, i64* %3195
  %3265 = add i64 %3264, 1
  store i64 %3265, i64* %3195
  %3266 = load { i64, i8* }*, { i64, i8* }** %3191
  %3267 = load i64, i64* %3195
  %3268 = call i64 @nyx_array_get_checked({ i64, i8* }* %3266, i64 %3267, i64 2)
  %3269 = inttoptr i64 %3268 to %nyx_string*
  %3270 = alloca %nyx_string*
  store %nyx_string* %3269, %nyx_string** %3270
  %3271 = load %nyx_string*, %nyx_string** %3270
  %3272 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 2
  store %nyx_string* %3271, %nyx_string** %3272
  br label %merge551
else550:
  %3273 = alloca i1
  store i1 true, i1* %3273
  %3274 = load %nyx_string*, %nyx_string** %3253
  %3275 = load %nyx_string*, %nyx_string** %3201
  %3276 = call i1 @nyx_string_equals(%nyx_string* %3274, %nyx_string* %3275)
  br i1 %3276, label %sc_or_end553, label %sc_or_rhs552
sc_or_rhs552:
  %3277 = load %nyx_string*, %nyx_string** %3253
  %3278 = load %nyx_string*, %nyx_string** %3204
  %3279 = call i1 @nyx_string_equals(%nyx_string* %3277, %nyx_string* %3278)
  store i1 %3279, i1* %3273
  br label %sc_or_end553
sc_or_end553:
  %3280 = load i1, i1* %3273
  br i1 %3280, label %then554, label %else555
then554:
  %3281 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 3
  store i1 1, i1* %3281
  br label %merge556
else555:
  %3282 = alloca i1
  store i1 false, i1* %3282
  %3283 = load %nyx_string*, %nyx_string** %3253
  %3284 = load %nyx_string*, %nyx_string** %3207
  %3285 = call i1 @nyx_string_equals(%nyx_string* %3283, %nyx_string* %3284)
  br i1 %3285, label %sc_and_rhs557, label %sc_and_end558
sc_and_rhs557:
  %3286 = load i64, i64* %3195
  %3287 = add i64 %3286, 1
  %3288 = load { i64, i8* }*, { i64, i8* }** %3191
  %3289 = call i64 @nyx_array_length({ i64, i8* }* %3288)
  %3290 = icmp slt i64 %3287, %3289
  store i1 %3290, i1* %3282
  br label %sc_and_end558
sc_and_end558:
  %3291 = load i1, i1* %3282
  br i1 %3291, label %then559, label %else560
then559:
  %3292 = load i64, i64* %3195
  %3293 = add i64 %3292, 1
  store i64 %3293, i64* %3195
  %3294 = load { i64, i8* }*, { i64, i8* }** %3191
  %3295 = load i64, i64* %3195
  %3296 = call i64 @nyx_array_get_checked({ i64, i8* }* %3294, i64 %3295, i64 2)
  %3297 = inttoptr i64 %3296 to %nyx_string*
  %3298 = alloca %nyx_string*
  store %nyx_string* %3297, %nyx_string** %3298
  %3299 = load %nyx_string*, %nyx_string** %3298
  %3300 = call i64 @nyx_string_to_int(%nyx_string* %3299)
  %3301 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 1
  store i64 %3300, i64* %3301
  br label %merge561
else560:
  %3302 = load %nyx_string*, %nyx_string** %3253
  %3303 = load %nyx_string*, %nyx_string** %3210
  %3304 = call i1 @nyx_string_equals(%nyx_string* %3302, %nyx_string* %3303)
  br i1 %3304, label %then562, label %else563
then562:
  %3305 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 7
  store i1 1, i1* %3305
  br label %merge564
else563:
  %3306 = load %nyx_string*, %nyx_string** %3253
  %3307 = load %nyx_string*, %nyx_string** %3213
  %3308 = call i1 @nyx_string_equals(%nyx_string* %3306, %nyx_string* %3307)
  br i1 %3308, label %then565, label %else566
then565:
  %3309 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 5
  store i1 1, i1* %3309
  br label %merge567
else566:
  %3310 = load %nyx_string*, %nyx_string** %3253
  %3311 = load %nyx_string*, %nyx_string** %3216
  %3312 = call i1 @nyx_string_equals(%nyx_string* %3310, %nyx_string* %3311)
  br i1 %3312, label %then568, label %else569
then568:
  %3313 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 5
  store i1 1, i1* %3313
  %3314 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 6
  store i1 1, i1* %3314
  br label %merge570
else569:
  %3315 = alloca i1
  store i1 true, i1* %3315
  %3316 = load %nyx_string*, %nyx_string** %3253
  %3317 = load %nyx_string*, %nyx_string** %3219
  %3318 = call i1 @nyx_string_equals(%nyx_string* %3316, %nyx_string* %3317)
  br i1 %3318, label %sc_or_end572, label %sc_or_rhs571
sc_or_rhs571:
  %3319 = load %nyx_string*, %nyx_string** %3253
  %3320 = load %nyx_string*, %nyx_string** %3222
  %3321 = call i1 @nyx_string_starts_with(%nyx_string* %3319, %nyx_string* %3320)
  store i1 %3321, i1* %3315
  br label %sc_or_end572
sc_or_end572:
  %3322 = load i1, i1* %3315
  br i1 %3322, label %then573, label %else574
then573:
  %3323 = load %nyx_string*, %nyx_string** %3225
  %3324 = load %nyx_string*, %nyx_string** %3253
  %3325 = call %nyx_string* @nyx_string_concat(%nyx_string* %3323, %nyx_string* %3324)
  %3326 = call i8* @nyx_string_to_cstr(%nyx_string* %3325)
  call void @nyx_print_string(i8* %3326)
  %3327 = load %nyx_string*, %nyx_string** %3228
  %3328 = call i8* @nyx_string_to_cstr(%nyx_string* %3327)
  call void @nyx_print_string(i8* %3328)
  %3329 = call i64 @print_valid_options()
  ret i64 1
else574:
  %3330 = alloca i1
  store i1 true, i1* %3330
  %3331 = load %nyx_string*, %nyx_string** %3253
  %3332 = load %nyx_string*, %nyx_string** %3231
  %3333 = call i1 @nyx_string_equals(%nyx_string* %3331, %nyx_string* %3332)
  br i1 %3333, label %sc_or_end577, label %sc_or_rhs576
sc_or_rhs576:
  %3334 = load %nyx_string*, %nyx_string** %3253
  %3335 = load %nyx_string*, %nyx_string** %3234
  %3336 = call i1 @nyx_string_starts_with(%nyx_string* %3334, %nyx_string* %3335)
  store i1 %3336, i1* %3330
  br label %sc_or_end577
sc_or_end577:
  %3337 = load i1, i1* %3330
  br i1 %3337, label %then578, label %else579
then578:
  %3338 = load %nyx_string*, %nyx_string** %3253
  store %nyx_string* %3338, %nyx_string** %3194
  %3339 = alloca i1
  store i1 false, i1* %3339
  %3340 = load %nyx_string*, %nyx_string** %3253
  %3341 = load %nyx_string*, %nyx_string** %3231
  %3342 = call i1 @nyx_string_equals(%nyx_string* %3340, %nyx_string* %3341)
  br i1 %3342, label %sc_and_rhs581, label %sc_and_end582
sc_and_rhs581:
  %3343 = load i64, i64* %3195
  %3344 = add i64 %3343, 1
  %3345 = load { i64, i8* }*, { i64, i8* }** %3191
  %3346 = call i64 @nyx_array_length({ i64, i8* }* %3345)
  %3347 = icmp slt i64 %3344, %3346
  store i1 %3347, i1* %3339
  br label %sc_and_end582
sc_and_end582:
  %3348 = load i1, i1* %3339
  br i1 %3348, label %then583, label %else584
then583:
  %3349 = load i64, i64* %3195
  %3350 = add i64 %3349, 1
  store i64 %3350, i64* %3195
  %3351 = load { i64, i8* }*, { i64, i8* }** %3191
  %3352 = load i64, i64* %3195
  %3353 = call i64 @nyx_array_get_checked({ i64, i8* }* %3351, i64 %3352, i64 2)
  %3354 = inttoptr i64 %3353 to %nyx_string*
  %3355 = alloca %nyx_string*
  store %nyx_string* %3354, %nyx_string** %3355
  %3356 = load %nyx_string*, %nyx_string** %3253
  %3357 = load %nyx_string*, %nyx_string** %3237
  %3358 = call %nyx_string* @nyx_string_concat(%nyx_string* %3356, %nyx_string* %3357)
  %3359 = load %nyx_string*, %nyx_string** %3355
  %3360 = call %nyx_string* @nyx_string_concat(%nyx_string* %3358, %nyx_string* %3359)
  store %nyx_string* %3360, %nyx_string** %3194
  br label %merge585
else584:
  br label %merge585
merge585:
  br label %merge580
else579:
  %3361 = alloca i1
  store i1 true, i1* %3361
  %3362 = load %nyx_string*, %nyx_string** %3253
  %3363 = load %nyx_string*, %nyx_string** %3198
  %3364 = call i1 @nyx_string_equals(%nyx_string* %3362, %nyx_string* %3363)
  br i1 %3364, label %sc_or_end587, label %sc_or_rhs586
sc_or_rhs586:
  %3365 = load %nyx_string*, %nyx_string** %3253
  %3366 = load %nyx_string*, %nyx_string** %3207
  %3367 = call i1 @nyx_string_equals(%nyx_string* %3365, %nyx_string* %3366)
  store i1 %3367, i1* %3361
  br label %sc_or_end587
sc_or_end587:
  %3368 = load i1, i1* %3361
  br i1 %3368, label %then588, label %else589
then588:
  br label %merge590
else589:
  %3369 = load %nyx_string*, %nyx_string** %3253
  %3370 = load %nyx_string*, %nyx_string** %3240
  %3371 = call i1 @nyx_string_ends_with(%nyx_string* %3369, %nyx_string* %3370)
  br i1 %3371, label %then591, label %else592
then591:
  %3372 = load %nyx_string*, %nyx_string** %3253
  %3373 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 4
  store %nyx_string* %3372, %nyx_string** %3373
  br label %merge593
else592:
  %3374 = load %nyx_string*, %nyx_string** %3253
  %3375 = load %nyx_string*, %nyx_string** %3243
  %3376 = call i1 @nyx_string_starts_with(%nyx_string* %3374, %nyx_string* %3375)
  br i1 %3376, label %then594, label %else595
then594:
  %3377 = load %nyx_string*, %nyx_string** %3225
  %3378 = load %nyx_string*, %nyx_string** %3253
  %3379 = call %nyx_string* @nyx_string_concat(%nyx_string* %3377, %nyx_string* %3378)
  %3380 = call i8* @nyx_string_to_cstr(%nyx_string* %3379)
  call void @nyx_print_string(i8* %3380)
  %3381 = call i64 @print_valid_options()
  ret i64 1
else595:
  br label %merge596
merge596:
  br label %merge593
merge593:
  br label %merge590
merge590:
  br label %merge580
merge580:
  br label %merge575
merge575:
  br label %merge570
merge570:
  br label %merge567
merge567:
  br label %merge564
merge564:
  br label %merge561
merge561:
  br label %merge556
merge556:
  br label %merge551
merge551:
  %3382 = load i64, i64* %3195
  %3383 = add i64 %3382, 1
  store i64 %3383, i64* %3195
  br label %while_cond544
while_end546:
  %3384 = load %nyx_string*, %nyx_string** %3194
  %3385 = getelementptr [1 x i8], [1 x i8]* @.str351, i32 0, i32 0
  %3386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3385, i64 0)
  %3387 = call i1 @nyx_string_equals(%nyx_string* %3384, %nyx_string* %3386)
  %3388 = xor i1 %3387, true
  br i1 %3388, label %then597, label %else598
then597:
  %3389 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 5
  %3390 = load i1, i1* %3389
  br i1 %3390, label %then600, label %else601
then600:
  %3391 = getelementptr [47 x i8], [47 x i8]* @.str352, i32 0, i32 0
  %3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3391, i64 46)
  %3393 = load %nyx_string*, %nyx_string** %3194
  %3394 = call %nyx_string* @nyx_string_concat(%nyx_string* %3392, %nyx_string* %3393)
  %3395 = getelementptr [58 x i8], [58 x i8]* @.str353, i32 0, i32 0
  %3396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3395, i64 57)
  %3397 = call %nyx_string* @nyx_string_concat(%nyx_string* %3394, %nyx_string* %3396)
  %3398 = call i8* @nyx_string_to_cstr(%nyx_string* %3397)
  call void @nyx_print_string(i8* %3398)
  br label %merge602
else601:
  %3399 = getelementptr [24 x i8], [24 x i8]* @.str354, i32 0, i32 0
  %3400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3399, i64 23)
  %3401 = load %nyx_string*, %nyx_string** %3194
  %3402 = call %nyx_string* @nyx_string_concat(%nyx_string* %3400, %nyx_string* %3401)
  %3403 = call i8* @nyx_string_to_cstr(%nyx_string* %3402)
  call void @nyx_print_string(i8* %3403)
  br label %merge602
merge602:
  %3404 = call i64 @print_valid_options()
  ret i64 1
else598:
  br label %merge599
merge599:
  %3405 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %3406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3405, i64 0)
  %3407 = alloca %nyx_string*
  store %nyx_string* %3406, %nyx_string** %3407
  %3408 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %3409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3408, i64 0)
  %3410 = alloca %nyx_string*
  store %nyx_string* %3409, %nyx_string** %3410
  %3411 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 5
  %3412 = load i1, i1* %3411
  br i1 %3412, label %then603, label %else604
then603:
  %3413 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3413, %nyx_string** %3407
  %3414 = load %nyx_string*, %nyx_string** %3407
  %3415 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %3416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3415, i64 0)
  %3417 = call i1 @nyx_string_equals(%nyx_string* %3414, %nyx_string* %3416)
  br i1 %3417, label %then606, label %else607
then606:
  %3418 = call %nyx_string* @cov_clang_major()
  %3419 = alloca %nyx_string*
  store %nyx_string* %3418, %nyx_string** %3419
  %3420 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %3421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3420, i64 4)
  %3422 = alloca %nyx_string*
  store %nyx_string* %3421, %nyx_string** %3422
  %3423 = load %nyx_string*, %nyx_string** %3419
  %3424 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %3425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3424, i64 0)
  %3426 = call i1 @nyx_string_equals(%nyx_string* %3423, %nyx_string* %3425)
  %3427 = xor i1 %3426, true
  br i1 %3427, label %then609, label %else610
then609:
  %3428 = getelementptr [6 x i8], [6 x i8]* @.str360, i32 0, i32 0
  %3429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3428, i64 5)
  %3430 = load %nyx_string*, %nyx_string** %3419
  %3431 = call %nyx_string* @nyx_string_concat(%nyx_string* %3429, %nyx_string* %3430)
  store %nyx_string* %3431, %nyx_string** %3422
  br label %merge611
else610:
  br label %merge611
merge611:
  %3432 = getelementptr [101 x i8], [101 x i8]* @.str361, i32 0, i32 0
  %3433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3432, i64 100)
  %3434 = call i8* @nyx_string_to_cstr(%nyx_string* %3433)
  call void @nyx_print_string(i8* %3434)
  %3435 = getelementptr [35 x i8], [35 x i8]* @.str362, i32 0, i32 0
  %3436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3435, i64 34)
  %3437 = load %nyx_string*, %nyx_string** %3422
  %3438 = call %nyx_string* @nyx_string_concat(%nyx_string* %3436, %nyx_string* %3437)
  %3439 = call i8* @nyx_string_to_cstr(%nyx_string* %3438)
  call void @nyx_print_string(i8* %3439)
  %3440 = getelementptr [82 x i8], [82 x i8]* @.str363, i32 0, i32 0
  %3441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3440, i64 81)
  %3442 = call i8* @nyx_string_to_cstr(%nyx_string* %3441)
  call void @nyx_print_string(i8* %3442)
  %3443 = getelementptr [82 x i8], [82 x i8]* @.str364, i32 0, i32 0
  %3444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3443, i64 81)
  %3445 = call i8* @nyx_string_to_cstr(%nyx_string* %3444)
  call void @nyx_print_string(i8* %3445)
  ret i64 1
else607:
  br label %merge608
merge608:
  %3446 = getelementptr [30 x i8], [30 x i8]* @.str365, i32 0, i32 0
  %3447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3446, i64 29)
  %3448 = call i8* @nyx_string_to_cstr(%nyx_string* %3447)
  %3449 = call %nyx_string* @nyx_exec(i8* %3448)
  %3450 = call %nyx_string* @nyx_string_trim(%nyx_string* %3449)
  store %nyx_string* %3450, %nyx_string** %3410
  %3451 = load %nyx_string*, %nyx_string** %3410
  %3452 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3452, i64 0)
  %3454 = call i1 @nyx_string_equals(%nyx_string* %3451, %nyx_string* %3453)
  br i1 %3454, label %then612, label %else613
then612:
  %3455 = getelementptr [55 x i8], [55 x i8]* @.str367, i32 0, i32 0
  %3456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3455, i64 54)
  %3457 = call i8* @nyx_string_to_cstr(%nyx_string* %3456)
  call void @nyx_print_string(i8* %3457)
  ret i64 1
else613:
  br label %merge614
merge614:
  br label %merge605
else604:
  br label %merge605
merge605:
  %3458 = call { i64, i8* }* @nyx_array_new_ptr()
  %3459 = alloca { i64, i8* }*
  store { i64, i8* }* %3458, { i64, i8* }** %3459
  %3460 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 4
  %3461 = load %nyx_string*, %nyx_string** %3460
  %3462 = getelementptr [1 x i8], [1 x i8]* @.str368, i32 0, i32 0
  %3463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3462, i64 0)
  %3464 = call i1 @nyx_string_equals(%nyx_string* %3461, %nyx_string* %3463)
  %3465 = xor i1 %3464, true
  br i1 %3465, label %then615, label %else616
then615:
  %3466 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 4
  %3467 = load %nyx_string*, %nyx_string** %3466
  %3468 = call i8* @nyx_string_to_cstr(%nyx_string* %3467)
  %3469 = call i1 @nyx_file_exists(i8* %3468)
  %3470 = xor i1 %3469, true
  br i1 %3470, label %then618, label %else619
then618:
  %3471 = getelementptr [24 x i8], [24 x i8]* @.str369, i32 0, i32 0
  %3472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3471, i64 23)
  %3473 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 4
  %3474 = load %nyx_string*, %nyx_string** %3473
  %3475 = call %nyx_string* @nyx_string_concat(%nyx_string* %3472, %nyx_string* %3474)
  %3476 = call i8* @nyx_string_to_cstr(%nyx_string* %3475)
  call void @nyx_print_string(i8* %3476)
  ret i64 1
else619:
  br label %merge620
merge620:
  %3477 = load { i64, i8* }*, { i64, i8* }** %3459
  %3478 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 4
  %3479 = load %nyx_string*, %nyx_string** %3478
  %3480 = ptrtoint %nyx_string* %3479 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3477, i64 %3480, i64 2)
  br label %merge617
else616:
  %3481 = load %TestConfig, %TestConfig* %3189
  %3482 = call { i64, i8* }* @discover_tests(%TestConfig %3481)
  store { i64, i8* }* %3482, { i64, i8* }** %3459
  br label %merge617
merge617:
  %3483 = load { i64, i8* }*, { i64, i8* }** %3459
  %3484 = call i64 @nyx_array_length({ i64, i8* }* %3483)
  %3485 = icmp eq i64 %3484, 0
  br i1 %3485, label %then621, label %else622
then621:
  %3486 = getelementptr [23 x i8], [23 x i8]* @.str370, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3486, i64 22)
  %3488 = call i8* @nyx_string_to_cstr(%nyx_string* %3487)
  call void @nyx_print_string(i8* %3488)
  %3489 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 2
  %3490 = load %nyx_string*, %nyx_string** %3489
  %3491 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %3492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3491, i64 0)
  %3493 = call i1 @nyx_string_equals(%nyx_string* %3490, %nyx_string* %3492)
  %3494 = xor i1 %3493, true
  br i1 %3494, label %then624, label %else625
then624:
  %3495 = getelementptr [12 x i8], [12 x i8]* @.str372, i32 0, i32 0
  %3496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3495, i64 11)
  %3497 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 2
  %3498 = load %nyx_string*, %nyx_string** %3497
  %3499 = call %nyx_string* @nyx_string_concat(%nyx_string* %3496, %nyx_string* %3498)
  %3500 = getelementptr [2 x i8], [2 x i8]* @.str373, i32 0, i32 0
  %3501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3500, i64 1)
  %3502 = call %nyx_string* @nyx_string_concat(%nyx_string* %3499, %nyx_string* %3501)
  %3503 = call i8* @nyx_string_to_cstr(%nyx_string* %3502)
  call void @nyx_print_string(i8* %3503)
  br label %merge626
else625:
  br label %merge626
merge626:
  %3504 = getelementptr [14 x i8], [14 x i8]* @.str374, i32 0, i32 0
  %3505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3504, i64 13)
  %3506 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 0
  %3507 = load %nyx_string*, %nyx_string** %3506
  %3508 = call %nyx_string* @nyx_string_concat(%nyx_string* %3505, %nyx_string* %3507)
  %3509 = getelementptr [2 x i8], [2 x i8]* @.str375, i32 0, i32 0
  %3510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3509, i64 1)
  %3511 = call %nyx_string* @nyx_string_concat(%nyx_string* %3508, %nyx_string* %3510)
  %3512 = call i8* @nyx_string_to_cstr(%nyx_string* %3511)
  call void @nyx_print_string(i8* %3512)
  ret i64 0
else622:
  br label %merge623
merge623:
  %3513 = getelementptr [9 x i8], [9 x i8]* @.str376, i32 0, i32 0
  %3514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3513, i64 8)
  %3515 = load { i64, i8* }*, { i64, i8* }** %3459
  %3516 = call i64 @nyx_array_length({ i64, i8* }* %3515)
  %3517 = call %nyx_string* @nyx_string_from_int(i64 %3516)
  %3518 = call %nyx_string* @nyx_string_concat(%nyx_string* %3514, %nyx_string* %3517)
  %3519 = getelementptr [14 x i8], [14 x i8]* @.str377, i32 0, i32 0
  %3520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3519, i64 13)
  %3521 = call %nyx_string* @nyx_string_concat(%nyx_string* %3518, %nyx_string* %3520)
  %3522 = call i8* @nyx_string_to_cstr(%nyx_string* %3521)
  call void @nyx_print_string(i8* %3522)
  %3523 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 2
  %3524 = load %nyx_string*, %nyx_string** %3523
  %3525 = getelementptr [1 x i8], [1 x i8]* @.str378, i32 0, i32 0
  %3526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3525, i64 0)
  %3527 = call i1 @nyx_string_equals(%nyx_string* %3524, %nyx_string* %3526)
  %3528 = xor i1 %3527, true
  br i1 %3528, label %then627, label %else628
then627:
  %3529 = getelementptr [12 x i8], [12 x i8]* @.str379, i32 0, i32 0
  %3530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3529, i64 11)
  %3531 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 2
  %3532 = load %nyx_string*, %nyx_string** %3531
  %3533 = call %nyx_string* @nyx_string_concat(%nyx_string* %3530, %nyx_string* %3532)
  %3534 = getelementptr [2 x i8], [2 x i8]* @.str380, i32 0, i32 0
  %3535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3534, i64 1)
  %3536 = call %nyx_string* @nyx_string_concat(%nyx_string* %3533, %nyx_string* %3535)
  %3537 = call i8* @nyx_string_to_cstr(%nyx_string* %3536)
  call void @nyx_print_string(i8* %3537)
  br label %merge629
else628:
  br label %merge629
merge629:
  %3538 = getelementptr [1 x i8], [1 x i8]* @.str381, i32 0, i32 0
  %3539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3538, i64 0)
  %3540 = call i8* @nyx_string_to_cstr(%nyx_string* %3539)
  call void @nyx_print_string(i8* %3540)
  %3541 = alloca i1
  store i1 false, i1* %3541
  %3542 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 8
  %3543 = load %nyx_string*, %nyx_string** %3542
  %3544 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %3545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3544, i64 0)
  %3546 = call i1 @nyx_string_equals(%nyx_string* %3543, %nyx_string* %3545)
  %3547 = xor i1 %3546, true
  br i1 %3547, label %sc_and_rhs630, label %sc_and_end631
sc_and_rhs630:
  %3548 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 5
  %3549 = load i1, i1* %3548
  %3550 = xor i1 %3549, true
  store i1 %3550, i1* %3541
  br label %sc_and_end631
sc_and_end631:
  %3551 = load i1, i1* %3541
  br i1 %3551, label %then632, label %else633
then632:
  %3552 = getelementptr [9 x i8], [9 x i8]* @.str383, i32 0, i32 0
  %3553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3552, i64 8)
  %3554 = call i8* @nyx_string_to_cstr(%nyx_string* %3553)
  %3555 = call %nyx_string* @nyx_getenv(i8* %3554)
  %3556 = alloca %nyx_string*
  store %nyx_string* %3555, %nyx_string** %3556
  %3557 = load %nyx_string*, %nyx_string** %3556
  %3558 = getelementptr [11 x i8], [11 x i8]* @.str384, i32 0, i32 0
  %3559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3558, i64 10)
  %3560 = call %nyx_string* @nyx_string_concat(%nyx_string* %3557, %nyx_string* %3559)
  %3561 = alloca %nyx_string*
  store %nyx_string* %3560, %nyx_string** %3561
  %3562 = load %nyx_string*, %nyx_string** %3561
  %3563 = call i8* @nyx_string_to_cstr(%nyx_string* %3562)
  %3564 = call i1 @nyx_file_exists(i8* %3563)
  %3565 = xor i1 %3564, true
  br i1 %3565, label %then635, label %else636
then635:
  %3566 = load %nyx_string*, %nyx_string** %3556
  %3567 = getelementptr [15 x i8], [15 x i8]* @.str385, i32 0, i32 0
  %3568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3567, i64 14)
  %3569 = call %nyx_string* @nyx_string_concat(%nyx_string* %3566, %nyx_string* %3568)
  store %nyx_string* %3569, %nyx_string** %3561
  br label %merge637
else636:
  br label %merge637
merge637:
  %3570 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %3571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3570, i64 0)
  %3572 = alloca %nyx_string*
  store %nyx_string* %3571, %nyx_string** %3572
  %3573 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 7
  %3574 = load i1, i1* %3573
  br i1 %3574, label %then638, label %else639
then638:
  %3575 = getelementptr [11 x i8], [11 x i8]* @.str387, i32 0, i32 0
  %3576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3575, i64 10)
  store %nyx_string* %3576, %nyx_string** %3572
  br label %merge640
else639:
  br label %merge640
merge640:
  %3577 = getelementptr [33 x i8], [33 x i8]* @.str388, i32 0, i32 0
  %3578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3577, i64 32)
  %3579 = call i8* @nyx_string_to_cstr(%nyx_string* %3578)
  %3580 = call %nyx_string* @nyx_exec(i8* %3579)
  %3581 = call %nyx_string* @nyx_string_trim(%nyx_string* %3580)
  %3582 = alloca %nyx_string*
  store %nyx_string* %3581, %nyx_string** %3582
  %3583 = getelementptr [2 x i8], [2 x i8]* @.str389, i32 0, i32 0
  %3584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3583, i64 1)
  %3585 = load %nyx_string*, %nyx_string** %3561
  %3586 = call %nyx_string* @nyx_string_concat(%nyx_string* %3584, %nyx_string* %3585)
  %3587 = getelementptr [7 x i8], [7 x i8]* @.str390, i32 0, i32 0
  %3588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3587, i64 6)
  %3589 = call %nyx_string* @nyx_string_concat(%nyx_string* %3586, %nyx_string* %3588)
  %3590 = load %nyx_string*, %nyx_string** %3572
  %3591 = call %nyx_string* @nyx_string_concat(%nyx_string* %3589, %nyx_string* %3590)
  %3592 = getelementptr [5 x i8], [5 x i8]* @.str391, i32 0, i32 0
  %3593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3592, i64 4)
  %3594 = call %nyx_string* @nyx_string_concat(%nyx_string* %3591, %nyx_string* %3593)
  %3595 = load %nyx_string*, %nyx_string** %3582
  %3596 = call %nyx_string* @nyx_string_concat(%nyx_string* %3594, %nyx_string* %3595)
  %3597 = getelementptr [7 x i8], [7 x i8]* @.str392, i32 0, i32 0
  %3598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3597, i64 6)
  %3599 = call %nyx_string* @nyx_string_concat(%nyx_string* %3596, %nyx_string* %3598)
  %3600 = call i8* @nyx_string_to_cstr(%nyx_string* %3599)
  %3601 = call i64 @nyx_exec_code(i8* %3600)
  %3602 = alloca i64
  store i64 %3601, i64* %3602
  %3603 = load %nyx_string*, %nyx_string** %3582
  %3604 = call i8* @nyx_string_to_cstr(%nyx_string* %3603)
  %3605 = call %nyx_string* @nyx_read_file(i8* %3604)
  %3606 = alloca %nyx_string*
  store %nyx_string* %3605, %nyx_string** %3606
  %3607 = getelementptr [8 x i8], [8 x i8]* @.str393, i32 0, i32 0
  %3608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3607, i64 7)
  %3609 = load %nyx_string*, %nyx_string** %3582
  %3610 = call %nyx_string* @nyx_string_concat(%nyx_string* %3608, %nyx_string* %3609)
  %3611 = getelementptr [2 x i8], [2 x i8]* @.str394, i32 0, i32 0
  %3612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3611, i64 1)
  %3613 = call %nyx_string* @nyx_string_concat(%nyx_string* %3610, %nyx_string* %3612)
  %3614 = call i8* @nyx_string_to_cstr(%nyx_string* %3613)
  %3615 = call i64 @nyx_exec_code(i8* %3614)
  %3616 = load i64, i64* %3602
  %3617 = icmp ne i64 %3616, 0
  br i1 %3617, label %then641, label %else642
then641:
  %3618 = getelementptr [65 x i8], [65 x i8]* @.str395, i32 0, i32 0
  %3619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3618, i64 64)
  %3620 = call i8* @nyx_string_to_cstr(%nyx_string* %3619)
  call void @nyx_print_string(i8* %3620)
  %3621 = load %nyx_string*, %nyx_string** %3606
  %3622 = call i8* @nyx_string_to_cstr(%nyx_string* %3621)
  call void @nyx_print_string(i8* %3622)
  ret i64 1
else642:
  br label %merge643
merge643:
  %3623 = load %nyx_string*, %nyx_string** %3606
  %3624 = getelementptr [2 x i8], [2 x i8]* @.str396, i32 0, i32 0
  %3625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3624, i64 1)
  %3626 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3623, %nyx_string* %3625)
  %3627 = alloca { i64, i8* }*
  store { i64, i8* }* %3626, { i64, i8* }** %3627
  %3628 = alloca i64
  store i64 0, i64* %3628
  %3629 = alloca i64
  store i64 0, i64* %3629
  %3630 = alloca i64
  store i64 0, i64* %3630
  %3631 = getelementptr [13 x i8], [13 x i8]* @.str397, i32 0, i32 0
  %3632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3631, i64 12)
  %3633 = alloca %nyx_string*
  store %nyx_string* %3632, %nyx_string** %3633
  %3634 = getelementptr [6 x i8], [6 x i8]* @.str398, i32 0, i32 0
  %3635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3634, i64 5)
  %3636 = alloca %nyx_string*
  store %nyx_string* %3635, %nyx_string** %3636
  %3637 = getelementptr [8 x i8], [8 x i8]* @.str399, i32 0, i32 0
  %3638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3637, i64 7)
  %3639 = alloca %nyx_string*
  store %nyx_string* %3638, %nyx_string** %3639
  %3640 = getelementptr [4 x i8], [4 x i8]* @.str400, i32 0, i32 0
  %3641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3640, i64 3)
  %3642 = alloca %nyx_string*
  store %nyx_string* %3641, %nyx_string** %3642
  %3643 = call i8* @llvm.stacksave()
  br label %while_cond644
while_cond644:
  %3644 = load i64, i64* %3628
  %3645 = load { i64, i8* }*, { i64, i8* }** %3627
  %3646 = call i64 @nyx_array_length({ i64, i8* }* %3645)
  %3647 = icmp slt i64 %3644, %3646
  br i1 %3647, label %while_body645, label %while_end646
while_body645:
  call void @llvm.stackrestore(i8* %3643)
  %3648 = load { i64, i8* }*, { i64, i8* }** %3627
  %3649 = load i64, i64* %3628
  %3650 = call i64 @nyx_array_get_checked({ i64, i8* }* %3648, i64 %3649, i64 2)
  %3651 = inttoptr i64 %3650 to %nyx_string*
  %3652 = alloca %nyx_string*
  store %nyx_string* %3651, %nyx_string** %3652
  %3653 = load %nyx_string*, %nyx_string** %3652
  %3654 = load %nyx_string*, %nyx_string** %3633
  %3655 = call i1 @nyx_string_starts_with(%nyx_string* %3653, %nyx_string* %3654)
  br i1 %3655, label %then647, label %else648
then647:
  %3656 = load %nyx_string*, %nyx_string** %3652
  %3657 = load %nyx_string*, %nyx_string** %3652
  %3658 = call i64 @nyx_string_byte_length(%nyx_string* %3657)
  %3659 = call %nyx_string* @nyx_string_substring(%nyx_string* %3656, i64 12, i64 %3658)
  %3660 = call %nyx_string* @nyx_string_trim(%nyx_string* %3659)
  %3661 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 9
  store %nyx_string* %3660, %nyx_string** %3661
  br label %merge649
else648:
  br label %merge649
merge649:
  %3662 = load %nyx_string*, %nyx_string** %3652
  %3663 = load %nyx_string*, %nyx_string** %3636
  %3664 = call i1 @nyx_string_contains(%nyx_string* %3662, %nyx_string* %3663)
  br i1 %3664, label %then650, label %else651
then650:
  %3665 = load i64, i64* %3629
  %3666 = add i64 %3665, 1
  store i64 %3666, i64* %3629
  br label %merge652
else651:
  br label %merge652
merge652:
  %3667 = load %nyx_string*, %nyx_string** %3652
  %3668 = load %nyx_string*, %nyx_string** %3639
  %3669 = call i1 @nyx_string_contains(%nyx_string* %3667, %nyx_string* %3668)
  br i1 %3669, label %then653, label %else654
then653:
  %3670 = load i64, i64* %3630
  %3671 = add i64 %3670, 1
  store i64 %3671, i64* %3630
  br label %merge655
else654:
  br label %merge655
merge655:
  %3672 = load %nyx_string*, %nyx_string** %3652
  %3673 = load %nyx_string*, %nyx_string** %3642
  %3674 = call i1 @nyx_string_contains(%nyx_string* %3672, %nyx_string* %3673)
  br i1 %3674, label %then656, label %else657
then656:
  %3675 = load %nyx_string*, %nyx_string** %3652
  %3676 = call i8* @nyx_string_to_cstr(%nyx_string* %3675)
  call void @nyx_print_string(i8* %3676)
  br label %merge658
else657:
  br label %merge658
merge658:
  %3677 = load i64, i64* %3628
  %3678 = add i64 %3677, 1
  store i64 %3678, i64* %3628
  br label %while_cond644
while_end646:
  %3679 = getelementptr [18 x i8], [18 x i8]* @.str401, i32 0, i32 0
  %3680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3679, i64 17)
  %3681 = load i64, i64* %3629
  %3682 = call %nyx_string* @nyx_string_from_int(i64 %3681)
  %3683 = call %nyx_string* @nyx_string_concat(%nyx_string* %3680, %nyx_string* %3682)
  %3684 = getelementptr [16 x i8], [16 x i8]* @.str402, i32 0, i32 0
  %3685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3684, i64 15)
  %3686 = call %nyx_string* @nyx_string_concat(%nyx_string* %3683, %nyx_string* %3685)
  %3687 = load i64, i64* %3630
  %3688 = call %nyx_string* @nyx_string_from_int(i64 %3687)
  %3689 = call %nyx_string* @nyx_string_concat(%nyx_string* %3686, %nyx_string* %3688)
  %3690 = getelementptr [16 x i8], [16 x i8]* @.str403, i32 0, i32 0
  %3691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3690, i64 15)
  %3692 = call %nyx_string* @nyx_string_concat(%nyx_string* %3689, %nyx_string* %3691)
  %3693 = call i8* @nyx_string_to_cstr(%nyx_string* %3692)
  call void @nyx_print_string(i8* %3693)
  %3694 = getelementptr [1 x i8], [1 x i8]* @.str404, i32 0, i32 0
  %3695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3694, i64 0)
  %3696 = call i8* @nyx_string_to_cstr(%nyx_string* %3695)
  call void @nyx_print_string(i8* %3696)
  br label %merge634
else633:
  br label %merge634
merge634:
  %3697 = call { i64, i8* }* @nyx_array_new_ptr()
  %3698 = alloca { i64, i8* }*
  store { i64, i8* }* %3697, { i64, i8* }** %3698
  %3699 = call { i64, i8* }* @nyx_array_new_ptr()
  %3700 = alloca { i64, i8* }*
  store { i64, i8* }* %3699, { i64, i8* }** %3700
  %3701 = call { i64, i8* }* @nyx_array_new_ptr()
  %3702 = alloca { i64, i8* }*
  store { i64, i8* }* %3701, { i64, i8* }** %3702
  %3703 = alloca i64
  store i64 0, i64* %3703
  %3704 = alloca i64
  store i64 0, i64* %3704
  %3705 = alloca i64
  store i64 0, i64* %3705
  %3706 = call i8* @llvm.stacksave()
  br label %while_cond659
while_cond659:
  %3707 = load i64, i64* %3705
  %3708 = load { i64, i8* }*, { i64, i8* }** %3459
  %3709 = call i64 @nyx_array_length({ i64, i8* }* %3708)
  %3710 = icmp slt i64 %3707, %3709
  br i1 %3710, label %while_body660, label %while_end661
while_body660:
  call void @llvm.stackrestore(i8* %3706)
  %3711 = load { i64, i8* }*, { i64, i8* }** %3459
  %3712 = load i64, i64* %3705
  %3713 = call i64 @nyx_array_get_checked({ i64, i8* }* %3711, i64 %3712, i64 2)
  %3714 = inttoptr i64 %3713 to %nyx_string*
  %3715 = alloca %nyx_string*
  store %nyx_string* %3714, %nyx_string** %3715
  %3716 = load %nyx_string*, %nyx_string** %3715
  %3717 = call i1 @file_has_test_blocks(%nyx_string* %3716)
  %3718 = xor i1 %3717, true
  br i1 %3718, label %then662, label %else663
then662:
  %3719 = load i64, i64* %3705
  %3720 = add i64 %3719, 1
  store i64 %3720, i64* %3705
  br label %merge664
else663:
  %3721 = load %nyx_string*, %nyx_string** %3715
  %3722 = load %TestConfig, %TestConfig* %3189
  %3723 = load %nyx_string*, %nyx_string** %3410
  %3724 = load i64, i64* %3705
  %3725 = call %TestResult @compile_and_run(%nyx_string* %3721, %TestConfig %3722, %nyx_string* %3723, i64 %3724)
  %3726 = alloca %TestResult
  store %TestResult %3725, %TestResult* %3726
  %3727 = load { i64, i8* }*, { i64, i8* }** %3698
  %3728 = load %TestResult, %TestResult* %3726
  %3729 = getelementptr %TestResult, %TestResult* null, i32 1
  %3730 = ptrtoint %TestResult* %3729 to i64
  %3731 = call i8* @GC_malloc(i64 %3730)
  %3732 = bitcast i8* %3731 to %TestResult*
  store %TestResult %3728, %TestResult* %3732
  %3733 = ptrtoint %TestResult* %3732 to i64
  call void @nyx_array_push({ i64, i8* }* %3727, i64 %3733)
  %3734 = load { i64, i8* }*, { i64, i8* }** %3700
  %3735 = load %nyx_string*, %nyx_string** %3715
  %3736 = ptrtoint %nyx_string* %3735 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3734, i64 %3736, i64 2)
  %3737 = load { i64, i8* }*, { i64, i8* }** %3702
  %3738 = load i64, i64* %3705
  %3739 = call %nyx_string* @nyx_string_from_int(i64 %3738)
  %3740 = ptrtoint %nyx_string* %3739 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3737, i64 %3740, i64 2)
  %3741 = load i64, i64* %3703
  %3742 = getelementptr %TestResult, %TestResult* %3726, i32 0, i32 1
  %3743 = load i64, i64* %3742
  %3744 = add i64 %3741, %3743
  store i64 %3744, i64* %3703
  %3745 = load i64, i64* %3704
  %3746 = getelementptr %TestResult, %TestResult* %3726, i32 0, i32 2
  %3747 = load i64, i64* %3746
  %3748 = add i64 %3745, %3747
  store i64 %3748, i64* %3704
  %3749 = load %TestResult, %TestResult* %3726
  %3750 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 3
  %3751 = load i1, i1* %3750
  %3752 = call i64 @print_result(%TestResult %3749, i1 %3751)
  %3753 = load i64, i64* %3705
  %3754 = add i64 %3753, 1
  store i64 %3754, i64* %3705
  br label %merge664
merge664:
  br label %while_cond659
while_end661:
  %3755 = load { i64, i8* }*, { i64, i8* }** %3698
  %3756 = call i64 @nyx_array_length({ i64, i8* }* %3755)
  %3757 = icmp eq i64 %3756, 0
  br i1 %3757, label %then665, label %else666
then665:
  %3758 = getelementptr [35 x i8], [35 x i8]* @.str405, i32 0, i32 0
  %3759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3758, i64 34)
  %3760 = call i8* @nyx_string_to_cstr(%nyx_string* %3759)
  call void @nyx_print_string(i8* %3760)
  %3761 = load %nyx_string*, %nyx_string** %3410
  %3762 = getelementptr [1 x i8], [1 x i8]* @.str406, i32 0, i32 0
  %3763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3762, i64 0)
  %3764 = call i1 @nyx_string_equals(%nyx_string* %3761, %nyx_string* %3763)
  %3765 = xor i1 %3764, true
  br i1 %3765, label %then668, label %else669
then668:
  %3766 = getelementptr [8 x i8], [8 x i8]* @.str407, i32 0, i32 0
  %3767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3766, i64 7)
  %3768 = load %nyx_string*, %nyx_string** %3410
  %3769 = call %nyx_string* @nyx_string_concat(%nyx_string* %3767, %nyx_string* %3768)
  %3770 = call i8* @nyx_string_to_cstr(%nyx_string* %3769)
  %3771 = call %nyx_string* @nyx_exec(i8* %3770)
  br label %merge670
else669:
  br label %merge670
merge670:
  ret i64 0
else666:
  br label %merge667
merge667:
  %3772 = load { i64, i8* }*, { i64, i8* }** %3698
  %3773 = load i64, i64* %3703
  %3774 = load i64, i64* %3704
  %3775 = call i64 @print_summary({ i64, i8* }* %3772, i64 %3773, i64 %3774)
  %3776 = load %nyx_string*, %nyx_string** %3160
  %3777 = call %nyx_string* @huella_compilador(%nyx_string* %3776)
  %3778 = alloca %nyx_string*
  store %nyx_string* %3777, %nyx_string** %3778
  %3779 = load %nyx_string*, %nyx_string** %3160
  %3780 = call %nyx_string* @huella_resto(%nyx_string* %3779)
  %3781 = alloca %nyx_string*
  store %nyx_string* %3780, %nyx_string** %3781
  %3782 = alloca i1
  store i1 true, i1* %3782
  %3783 = load %nyx_string*, %nyx_string** %3778
  %3784 = load %nyx_string*, %nyx_string** %3171
  %3785 = call i1 @nyx_string_equals(%nyx_string* %3783, %nyx_string* %3784)
  %3786 = xor i1 %3785, true
  br i1 %3786, label %sc_or_end672, label %sc_or_rhs671
sc_or_rhs671:
  %3787 = load %nyx_string*, %nyx_string** %3781
  %3788 = load %nyx_string*, %nyx_string** %3174
  %3789 = call i1 @nyx_string_equals(%nyx_string* %3787, %nyx_string* %3788)
  %3790 = xor i1 %3789, true
  store i1 %3790, i1* %3782
  br label %sc_or_end672
sc_or_end672:
  %3791 = load i1, i1* %3782
  br i1 %3791, label %then673, label %else674
then673:
  %3792 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %3793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3792, i64 0)
  %3794 = call i8* @nyx_string_to_cstr(%nyx_string* %3793)
  call void @nyx_print_string(i8* %3794)
  %3795 = getelementptr [48 x i8], [48 x i8]* @.str409, i32 0, i32 0
  %3796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3795, i64 47)
  %3797 = load %nyx_string*, %nyx_string** %3160
  %3798 = call %nyx_string* @nyx_string_concat(%nyx_string* %3796, %nyx_string* %3797)
  %3799 = getelementptr [2 x i8], [2 x i8]* @.str410, i32 0, i32 0
  %3800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3799, i64 1)
  %3801 = call %nyx_string* @nyx_string_concat(%nyx_string* %3798, %nyx_string* %3800)
  %3802 = call i8* @nyx_string_to_cstr(%nyx_string* %3801)
  call void @nyx_print_string(i8* %3802)
  %3803 = load %nyx_string*, %nyx_string** %3778
  %3804 = load %nyx_string*, %nyx_string** %3171
  %3805 = call i1 @nyx_string_equals(%nyx_string* %3803, %nyx_string* %3804)
  %3806 = xor i1 %3805, true
  br i1 %3806, label %then676, label %else677
then676:
  %3807 = getelementptr [31 x i8], [31 x i8]* @.str411, i32 0, i32 0
  %3808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3807, i64 30)
  %3809 = load %nyx_string*, %nyx_string** %3171
  %3810 = call %nyx_string* @nyx_string_concat(%nyx_string* %3808, %nyx_string* %3809)
  %3811 = getelementptr [5 x i8], [5 x i8]* @.str412, i32 0, i32 0
  %3812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3811, i64 4)
  %3813 = call %nyx_string* @nyx_string_concat(%nyx_string* %3810, %nyx_string* %3812)
  %3814 = load %nyx_string*, %nyx_string** %3778
  %3815 = call %nyx_string* @nyx_string_concat(%nyx_string* %3813, %nyx_string* %3814)
  %3816 = call i8* @nyx_string_to_cstr(%nyx_string* %3815)
  call void @nyx_print_string(i8* %3816)
  br label %merge678
else677:
  %3817 = getelementptr [53 x i8], [53 x i8]* @.str413, i32 0, i32 0
  %3818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3817, i64 52)
  %3819 = call i8* @nyx_string_to_cstr(%nyx_string* %3818)
  call void @nyx_print_string(i8* %3819)
  br label %merge678
merge678:
  %3820 = getelementptr [71 x i8], [71 x i8]* @.str414, i32 0, i32 0
  %3821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3820, i64 70)
  %3822 = call i8* @nyx_string_to_cstr(%nyx_string* %3821)
  call void @nyx_print_string(i8* %3822)
  %3823 = getelementptr [69 x i8], [69 x i8]* @.str415, i32 0, i32 0
  %3824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3823, i64 68)
  %3825 = call i8* @nyx_string_to_cstr(%nyx_string* %3824)
  call void @nyx_print_string(i8* %3825)
  br label %merge675
else674:
  br label %merge675
merge675:
  %3826 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 5
  %3827 = load i1, i1* %3826
  br i1 %3827, label %then679, label %else680
then679:
  %3828 = load %nyx_string*, %nyx_string** %3410
  %3829 = load { i64, i8* }*, { i64, i8* }** %3700
  %3830 = load { i64, i8* }*, { i64, i8* }** %3702
  %3831 = load %nyx_string*, %nyx_string** %3407
  %3832 = getelementptr %TestConfig, %TestConfig* %3189, i32 0, i32 6
  %3833 = load i1, i1* %3832
  %3834 = call i64 @cov_report(%nyx_string* %3828, { i64, i8* }* %3829, { i64, i8* }* %3830, %nyx_string* %3831, i1 %3833)
  %3835 = getelementptr [8 x i8], [8 x i8]* @.str416, i32 0, i32 0
  %3836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3835, i64 7)
  %3837 = load %nyx_string*, %nyx_string** %3410
  %3838 = call %nyx_string* @nyx_string_concat(%nyx_string* %3836, %nyx_string* %3837)
  %3839 = call i8* @nyx_string_to_cstr(%nyx_string* %3838)
  %3840 = call %nyx_string* @nyx_exec(i8* %3839)
  br label %merge681
else680:
  br label %merge681
merge681:
  %3841 = alloca i64
  store i64 0, i64* %3841
  %3842 = alloca i64
  store i64 0, i64* %3842
  %3843 = call i8* @llvm.stacksave()
  br label %while_cond682
while_cond682:
  %3844 = load i64, i64* %3842
  %3845 = load { i64, i8* }*, { i64, i8* }** %3698
  %3846 = call i64 @nyx_array_length({ i64, i8* }* %3845)
  %3847 = icmp slt i64 %3844, %3846
  br i1 %3847, label %while_body683, label %while_end684
while_body683:
  call void @llvm.stackrestore(i8* %3843)
  %3848 = load { i64, i8* }*, { i64, i8* }** %3698
  %3849 = load i64, i64* %3842
  %3850 = call i64 @nyx_array_get({ i64, i8* }* %3848, i64 %3849)
  %3851 = inttoptr i64 %3850 to %TestResult*
  %3852 = load %TestResult, %TestResult* %3851
  %3853 = alloca %TestResult
  store %TestResult %3852, %TestResult* %3853
  %3854 = getelementptr %TestResult, %TestResult* %3853, i32 0, i32 4
  %3855 = load i1, i1* %3854
  %3856 = xor i1 %3855, true
  br i1 %3856, label %then685, label %else686
then685:
  %3857 = load i64, i64* %3841
  %3858 = add i64 %3857, 1
  store i64 %3858, i64* %3841
  br label %merge687
else686:
  br label %merge687
merge687:
  %3859 = load i64, i64* %3842
  %3860 = add i64 %3859, 1
  store i64 %3860, i64* %3842
  br label %while_cond682
while_end684:
  %3861 = alloca i1
  store i1 true, i1* %3861
  %3862 = load i64, i64* %3704
  %3863 = icmp sgt i64 %3862, 0
  br i1 %3863, label %sc_or_end689, label %sc_or_rhs688
sc_or_rhs688:
  %3864 = load i64, i64* %3841
  %3865 = icmp sgt i64 %3864, 0
  store i1 %3865, i1* %3861
  br label %sc_or_end689
sc_or_end689:
  %3866 = load i1, i1* %3861
  br i1 %3866, label %then690, label %else691
then690:
  ret i64 1
else691:
  br label %merge692
merge692:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %3867 = sub i64 0, 9223372036854775808
  store i64 %3867, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

