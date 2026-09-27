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
  %595 = ptrtoint %nyx_string* %594 to i64
  %596 = call i8* @nyx_string_to_cstr(%nyx_string* %593)
  %597 = inttoptr i64 %595 to %nyx_string*
  %598 = call i1 @nyx_write_file_safe(i8* %596, %nyx_string* %597)
  ret i64 0
}

define i8* @map_new(
) {
  %599 = call i8* @nyx_map_new(i32 0)
  ret i8* %599
}

define i64 @map_put(
i8* %m.param, %nyx_string* %k.param, i64 %v.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %600 = load i8*, i8** %m.ptr
  %601 = load %nyx_string*, %nyx_string** %k.ptr
  %602 = load i64, i64* %v.ptr
  %603 = call i8* @nyx_string_to_cstr(%nyx_string* %601)
  call void @nyx_map_insert_int(i8* %600, i8* %603, i64 %602)
  ret i64 0
}

define i64 @map_get_int(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %604 = load i8*, i8** %m.ptr
  %605 = load %nyx_string*, %nyx_string** %k.ptr
  %606 = call i8* @nyx_string_to_cstr(%nyx_string* %605)
  %607 = call i64 @nyx_map_get_int(i8* %604, i8* %606)
  ret i64 %607
}

define i1 @map_has(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %608 = load i8*, i8** %m.ptr
  %609 = load %nyx_string*, %nyx_string** %k.ptr
  %610 = call i8* @nyx_string_to_cstr(%nyx_string* %609)
  %611 = call i1 @nyx_map_contains_str(i8* %608, i8* %610)
  ret i1 %611
}

define internal i64 @map_size(
i8* %m.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %612 = load i8*, i8** %m.ptr
  %613 = call i64 @nyx_map_length(i8* %612)
  ret i64 %613
}

define %Error @err_new(
i64 %code.param, %nyx_string* %kind.param, %nyx_string* %msg.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %614 = getelementptr %Error, %Error* null, i32 1
  %615 = ptrtoint %Error* %614 to i64
  %616 = call i8* @GC_malloc(i64 %615)
  %617 = bitcast i8* %616 to %Error*
  %618 = load i64, i64* %code.ptr
  %619 = getelementptr %Error, %Error* %617, i32 0, i32 0
  store i64 %618, i64* %619
  %620 = load %nyx_string*, %nyx_string** %kind.ptr
  %621 = getelementptr %Error, %Error* %617, i32 0, i32 1
  store %nyx_string* %620, %nyx_string** %621
  %622 = load %nyx_string*, %nyx_string** %msg.ptr
  %623 = getelementptr %Error, %Error* %617, i32 0, i32 2
  store %nyx_string* %622, %nyx_string** %623
  %624 = load %Error, %Error* %617
  ret %Error %624
}

define %nyx_string* @errno_to_kind(
i64 %code.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %625 = load i64, i64* %code.ptr
  %626 = icmp eq i64 %625, 2
  br i1 %626, label %then178, label %else179
then178:
  %627 = getelementptr [10 x i8], [10 x i8]* @.str2, i32 0, i32 0
  %628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %627, i64 9)
  ret %nyx_string* %628
else179:
  br label %merge180
merge180:
  %629 = load i64, i64* %code.ptr
  %630 = icmp eq i64 %629, 13
  br i1 %630, label %then181, label %else182
then181:
  %631 = getelementptr [11 x i8], [11 x i8]* @.str3, i32 0, i32 0
  %632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %631, i64 10)
  ret %nyx_string* %632
else182:
  br label %merge183
merge183:
  %633 = load i64, i64* %code.ptr
  %634 = icmp eq i64 %633, 12
  br i1 %634, label %then184, label %else185
then184:
  %635 = getelementptr [4 x i8], [4 x i8]* @.str4, i32 0, i32 0
  %636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %635, i64 3)
  ret %nyx_string* %636
else185:
  br label %merge186
merge186:
  %637 = load i64, i64* %code.ptr
  %638 = icmp eq i64 %637, 22
  br i1 %638, label %then187, label %else188
then187:
  %639 = getelementptr [8 x i8], [8 x i8]* @.str5, i32 0, i32 0
  %640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %639, i64 7)
  ret %nyx_string* %640
else188:
  br label %merge189
merge189:
  %641 = load i64, i64* %code.ptr
  %642 = icmp eq i64 %641, 110
  br i1 %642, label %then190, label %else191
then190:
  %643 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %643, i64 7)
  ret %nyx_string* %644
else191:
  br label %merge192
merge192:
  %645 = load i64, i64* %code.ptr
  %646 = icmp eq i64 %645, 111
  br i1 %646, label %then193, label %else194
then193:
  %647 = getelementptr [11 x i8], [11 x i8]* @.str7, i32 0, i32 0
  %648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %647, i64 10)
  ret %nyx_string* %648
else194:
  br label %merge195
merge195:
  %649 = load i64, i64* %code.ptr
  %650 = icmp eq i64 %649, 98
  br i1 %650, label %then196, label %else197
then196:
  %651 = getelementptr [7 x i8], [7 x i8]* @.str8, i32 0, i32 0
  %652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %651, i64 6)
  ret %nyx_string* %652
else197:
  br label %merge198
merge198:
  %653 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %653, i64 2)
  ret %nyx_string* %654
}

define %nyx_string* @error_to_string(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %655 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %656 = load %nyx_string*, %nyx_string** %655
  %657 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %657, i64 2)
  %659 = call %nyx_string* @nyx_string_concat(%nyx_string* %656, %nyx_string* %658)
  %660 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 2
  %661 = load %nyx_string*, %nyx_string** %660
  %662 = call %nyx_string* @nyx_string_concat(%nyx_string* %659, %nyx_string* %661)
  %663 = getelementptr [8 x i8], [8 x i8]* @.str11, i32 0, i32 0
  %664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %663, i64 7)
  %665 = call %nyx_string* @nyx_string_concat(%nyx_string* %662, %nyx_string* %664)
  %666 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 0
  %667 = load i64, i64* %666
  %668 = call %nyx_string* @nyx_string_from_int(i64 %667)
  %669 = call %nyx_string* @nyx_string_concat(%nyx_string* %665, %nyx_string* %668)
  %670 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %670, i64 1)
  %672 = call %nyx_string* @nyx_string_concat(%nyx_string* %669, %nyx_string* %671)
  ret %nyx_string* %672
}

define i1 @is_eof(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %673 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %674 = load %nyx_string*, %nyx_string** %673
  %675 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %675, i64 3)
  %677 = call i1 @nyx_string_equals(%nyx_string* %674, %nyx_string* %676)
  ret i1 %677
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %678 = load %nyx_string*, %nyx_string** %line.ptr
  %679 = call %nyx_string* @nyx_string_trim(%nyx_string* %678)
  %680 = alloca %nyx_string*
  store %nyx_string* %679, %nyx_string** %680
  %681 = sub i64 0, 1
  %682 = alloca i64
  store i64 %681, i64* %682
  %683 = alloca i64
  store i64 0, i64* %683
  %684 = call i8* @llvm.stacksave()
  br label %while_cond199
while_cond199:
  %685 = load i64, i64* %683
  %686 = load %nyx_string*, %nyx_string** %680
  %687 = call i64 @nyx_string_byte_length(%nyx_string* %686)
  %688 = icmp slt i64 %685, %687
  br i1 %688, label %while_body200, label %while_end201
while_body200:
  call void @llvm.stackrestore(i8* %684)
  %689 = load %nyx_string*, %nyx_string** %680
  %690 = load i64, i64* %683
  %691 = call i8 @nyx_string_char_at(%nyx_string* %689, i64 %690)
  %692 = zext i8 %691 to i64
  %693 = icmp eq i64 %692, 61
  br i1 %693, label %then202, label %else203
then202:
  %694 = load i64, i64* %683
  store i64 %694, i64* %682
  %695 = load %nyx_string*, %nyx_string** %680
  %696 = call i64 @nyx_string_byte_length(%nyx_string* %695)
  store i64 %696, i64* %683
  br label %merge204
else203:
  %697 = load i64, i64* %683
  %698 = add i64 %697, 1
  store i64 %698, i64* %683
  br label %merge204
merge204:
  br label %while_cond199
while_end201:
  %699 = load i64, i64* %682
  %700 = icmp slt i64 %699, 0
  br i1 %700, label %then205, label %else206
then205:
  %701 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %701, i64 0)
  ret %nyx_string* %702
else206:
  br label %merge207
merge207:
  %703 = load %nyx_string*, %nyx_string** %680
  %704 = load i64, i64* %682
  %705 = add i64 %704, 1
  %706 = load %nyx_string*, %nyx_string** %680
  %707 = call i64 @nyx_string_byte_length(%nyx_string* %706)
  %708 = call %nyx_string* @nyx_string_substring(%nyx_string* %703, i64 %705, i64 %707)
  %709 = call %nyx_string* @nyx_string_trim(%nyx_string* %708)
  %710 = alloca %nyx_string*
  store %nyx_string* %709, %nyx_string** %710
  %711 = alloca i1
  store i1 false, i1* %711
  %712 = load %nyx_string*, %nyx_string** %710
  %713 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %713, i64 1)
  %715 = call i1 @nyx_string_starts_with(%nyx_string* %712, %nyx_string* %714)
  br i1 %715, label %sc_and_rhs208, label %sc_and_end209
sc_and_rhs208:
  %716 = load %nyx_string*, %nyx_string** %710
  %717 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %717, i64 1)
  %719 = call i1 @nyx_string_ends_with(%nyx_string* %716, %nyx_string* %718)
  store i1 %719, i1* %711
  br label %sc_and_end209
sc_and_end209:
  %720 = load i1, i1* %711
  br i1 %720, label %then210, label %else211
then210:
  %721 = load %nyx_string*, %nyx_string** %710
  %722 = load %nyx_string*, %nyx_string** %710
  %723 = call i64 @nyx_string_byte_length(%nyx_string* %722)
  %724 = sub i64 %723, 1
  %725 = call %nyx_string* @nyx_string_substring(%nyx_string* %721, i64 1, i64 %724)
  ret %nyx_string* %725
else211:
  br label %merge212
merge212:
  %726 = load %nyx_string*, %nyx_string** %710
  ret %nyx_string* %726
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %727 = load %nyx_string*, %nyx_string** %line.ptr
  %728 = call %nyx_string* @nyx_string_trim(%nyx_string* %727)
  %729 = alloca %nyx_string*
  store %nyx_string* %728, %nyx_string** %729
  %730 = sub i64 0, 1
  %731 = alloca i64
  store i64 %730, i64* %731
  %732 = alloca i64
  store i64 0, i64* %732
  %733 = call i8* @llvm.stacksave()
  br label %while_cond213
while_cond213:
  %734 = load i64, i64* %732
  %735 = load %nyx_string*, %nyx_string** %729
  %736 = call i64 @nyx_string_byte_length(%nyx_string* %735)
  %737 = icmp slt i64 %734, %736
  br i1 %737, label %while_body214, label %while_end215
while_body214:
  call void @llvm.stackrestore(i8* %733)
  %738 = load %nyx_string*, %nyx_string** %729
  %739 = load i64, i64* %732
  %740 = call i8 @nyx_string_char_at(%nyx_string* %738, i64 %739)
  %741 = zext i8 %740 to i64
  %742 = icmp eq i64 %741, 61
  br i1 %742, label %then216, label %else217
then216:
  %743 = load i64, i64* %732
  store i64 %743, i64* %731
  %744 = load %nyx_string*, %nyx_string** %729
  %745 = call i64 @nyx_string_byte_length(%nyx_string* %744)
  store i64 %745, i64* %732
  br label %merge218
else217:
  %746 = load i64, i64* %732
  %747 = add i64 %746, 1
  store i64 %747, i64* %732
  br label %merge218
merge218:
  br label %while_cond213
while_end215:
  %748 = load i64, i64* %731
  %749 = icmp slt i64 %748, 0
  br i1 %749, label %then219, label %else220
then219:
  %750 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %750, i64 0)
  ret %nyx_string* %751
else220:
  br label %merge221
merge221:
  %752 = load %nyx_string*, %nyx_string** %729
  %753 = load i64, i64* %731
  %754 = call %nyx_string* @nyx_string_substring(%nyx_string* %752, i64 0, i64 %753)
  %755 = call %nyx_string* @nyx_string_trim(%nyx_string* %754)
  ret %nyx_string* %755
}

define internal %TestConfig @load_test_config(
) {
  %756 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %757 = ptrtoint %TestConfig* %756 to i64
  %758 = call i8* @GC_malloc(i64 %757)
  %759 = bitcast i8* %758 to %TestConfig*
  %760 = getelementptr [6 x i8], [6 x i8]* @.str18, i32 0, i32 0
  %761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %760, i64 5)
  %762 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 0
  store %nyx_string* %761, %nyx_string** %762
  %763 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 1
  store i64 30, i64* %763
  %764 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %764, i64 0)
  %766 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 2
  store %nyx_string* %765, %nyx_string** %766
  %767 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 3
  store i1 0, i1* %767
  %768 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %768, i64 0)
  %770 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 4
  store %nyx_string* %769, %nyx_string** %770
  %771 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 5
  store i1 0, i1* %771
  %772 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 6
  store i1 0, i1* %772
  %773 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 7
  store i1 0, i1* %773
  %774 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %774, i64 0)
  %776 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 8
  store %nyx_string* %775, %nyx_string** %776
  %777 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %777, i64 0)
  %779 = getelementptr %TestConfig, %TestConfig* %759, i32 0, i32 9
  store %nyx_string* %778, %nyx_string** %779
  %780 = load %TestConfig, %TestConfig* %759
  %781 = alloca %TestConfig
  store %TestConfig %780, %TestConfig* %781
  %782 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %782, i64 8)
  %784 = call i8* @nyx_string_to_cstr(%nyx_string* %783)
  %785 = call i1 @nyx_file_exists(i8* %784)
  %786 = xor i1 %785, true
  br i1 %786, label %then222, label %else223
then222:
  %787 = load %TestConfig, %TestConfig* %781
  ret %TestConfig %787
else223:
  br label %merge224
merge224:
  %788 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %788, i64 8)
  %790 = call i8* @nyx_string_to_cstr(%nyx_string* %789)
  %791 = call %nyx_string* @nyx_read_file(i8* %790)
  %792 = alloca %nyx_string*
  store %nyx_string* %791, %nyx_string** %792
  %793 = load %nyx_string*, %nyx_string** %792
  %794 = getelementptr [2 x i8], [2 x i8]* @.str25, i32 0, i32 0
  %795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %794, i64 1)
  %796 = call { i64, i8* }* @nyx_string_split(%nyx_string* %793, %nyx_string* %795)
  %797 = alloca { i64, i8* }*
  store { i64, i8* }* %796, { i64, i8* }** %797
  %798 = alloca i1
  store i1 0, i1* %798
  %799 = alloca i1
  store i1 0, i1* %799
  %800 = alloca i64
  store i64 0, i64* %800
  %801 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %801, i64 6)
  %803 = alloca %nyx_string*
  store %nyx_string* %802, %nyx_string** %803
  %804 = getelementptr [2 x i8], [2 x i8]* @.str27, i32 0, i32 0
  %805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %804, i64 1)
  %806 = alloca %nyx_string*
  store %nyx_string* %805, %nyx_string** %806
  %807 = getelementptr [6 x i8], [6 x i8]* @.str28, i32 0, i32 0
  %808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %807, i64 5)
  %809 = alloca %nyx_string*
  store %nyx_string* %808, %nyx_string** %809
  %810 = getelementptr [8 x i8], [8 x i8]* @.str29, i32 0, i32 0
  %811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %810, i64 7)
  %812 = alloca %nyx_string*
  store %nyx_string* %811, %nyx_string** %812
  %813 = getelementptr [2 x i8], [2 x i8]* @.str30, i32 0, i32 0
  %814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %813, i64 1)
  %815 = alloca %nyx_string*
  store %nyx_string* %814, %nyx_string** %815
  %816 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %816, i64 0)
  %818 = alloca %nyx_string*
  store %nyx_string* %817, %nyx_string** %818
  %819 = getelementptr [2 x i8], [2 x i8]* @.str32, i32 0, i32 0
  %820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %819, i64 1)
  %821 = alloca %nyx_string*
  store %nyx_string* %820, %nyx_string** %821
  %822 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %822, i64 1)
  %824 = alloca %nyx_string*
  store %nyx_string* %823, %nyx_string** %824
  %825 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %825, i64 1)
  %827 = alloca %nyx_string*
  store %nyx_string* %826, %nyx_string** %827
  %828 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %828, i64 3)
  %830 = alloca %nyx_string*
  store %nyx_string* %829, %nyx_string** %830
  %831 = getelementptr [8 x i8], [8 x i8]* @.str36, i32 0, i32 0
  %832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %831, i64 7)
  %833 = alloca %nyx_string*
  store %nyx_string* %832, %nyx_string** %833
  %834 = call i8* @llvm.stacksave()
  br label %while_cond225
while_cond225:
  %835 = load i64, i64* %800
  %836 = load { i64, i8* }*, { i64, i8* }** %797
  %837 = call i64 @nyx_array_length({ i64, i8* }* %836)
  %838 = icmp slt i64 %835, %837
  br i1 %838, label %while_body226, label %while_end227
while_body226:
  call void @llvm.stackrestore(i8* %834)
  %839 = load { i64, i8* }*, { i64, i8* }** %797
  %840 = load i64, i64* %800
  %841 = call i64 @nyx_array_get_checked({ i64, i8* }* %839, i64 %840, i64 2)
  %842 = inttoptr i64 %841 to %nyx_string*
  %843 = alloca %nyx_string*
  store %nyx_string* %842, %nyx_string** %843
  %844 = load %nyx_string*, %nyx_string** %843
  %845 = call %nyx_string* @nyx_string_trim(%nyx_string* %844)
  %846 = alloca %nyx_string*
  store %nyx_string* %845, %nyx_string** %846
  %847 = load %nyx_string*, %nyx_string** %846
  %848 = load %nyx_string*, %nyx_string** %803
  %849 = call i1 @nyx_string_equals(%nyx_string* %847, %nyx_string* %848)
  br i1 %849, label %then228, label %else229
then228:
  store i1 1, i1* %798
  br label %merge230
else229:
  %850 = load %nyx_string*, %nyx_string** %846
  %851 = load %nyx_string*, %nyx_string** %806
  %852 = call i1 @nyx_string_starts_with(%nyx_string* %850, %nyx_string* %851)
  br i1 %852, label %then231, label %else232
then231:
  store i1 0, i1* %798
  %853 = load %nyx_string*, %nyx_string** %846
  %854 = load %nyx_string*, %nyx_string** %809
  %855 = call i1 @nyx_string_equals(%nyx_string* %853, %nyx_string* %854)
  store i1 %855, i1* %799
  br label %merge233
else232:
  %856 = alloca i1
  store i1 false, i1* %856
  %857 = load i1, i1* %799
  br i1 %857, label %sc_and_rhs234, label %sc_and_end235
sc_and_rhs234:
  %858 = load %nyx_string*, %nyx_string** %846
  %859 = call %nyx_string* @parse_toml_key(%nyx_string* %858)
  %860 = load %nyx_string*, %nyx_string** %812
  %861 = call i1 @nyx_string_equals(%nyx_string* %859, %nyx_string* %860)
  store i1 %861, i1* %856
  br label %sc_and_end235
sc_and_end235:
  %862 = load i1, i1* %856
  br i1 %862, label %then236, label %else237
then236:
  %863 = load %nyx_string*, %nyx_string** %846
  %864 = load %nyx_string*, %nyx_string** %846
  %865 = load %nyx_string*, %nyx_string** %815
  %866 = call i64 @nyx_string_index_of(%nyx_string* %864, %nyx_string* %865)
  %867 = add i64 %866, 1
  %868 = load %nyx_string*, %nyx_string** %846
  %869 = call i64 @nyx_string_byte_length(%nyx_string* %868)
  %870 = call %nyx_string* @nyx_string_substring(%nyx_string* %863, i64 %867, i64 %869)
  %871 = call %nyx_string* @nyx_string_trim(%nyx_string* %870)
  %872 = alloca %nyx_string*
  store %nyx_string* %871, %nyx_string** %872
  %873 = load %nyx_string*, %nyx_string** %872
  %874 = load %nyx_string*, %nyx_string** %806
  %875 = load %nyx_string*, %nyx_string** %818
  %876 = call %nyx_string* @nyx_string_replace(%nyx_string* %873, %nyx_string* %874, %nyx_string* %875)
  %877 = load %nyx_string*, %nyx_string** %821
  %878 = load %nyx_string*, %nyx_string** %818
  %879 = call %nyx_string* @nyx_string_replace(%nyx_string* %876, %nyx_string* %877, %nyx_string* %878)
  %880 = load %nyx_string*, %nyx_string** %824
  %881 = load %nyx_string*, %nyx_string** %818
  %882 = call %nyx_string* @nyx_string_replace(%nyx_string* %879, %nyx_string* %880, %nyx_string* %881)
  %883 = load %nyx_string*, %nyx_string** %827
  %884 = load %nyx_string*, %nyx_string** %818
  %885 = call %nyx_string* @nyx_string_replace(%nyx_string* %882, %nyx_string* %883, %nyx_string* %884)
  store %nyx_string* %885, %nyx_string** %872
  %886 = load %nyx_string*, %nyx_string** %872
  %887 = getelementptr %TestConfig, %TestConfig* %781, i32 0, i32 8
  store %nyx_string* %886, %nyx_string** %887
  br label %merge238
else237:
  %888 = load i1, i1* %798
  br i1 %888, label %then239, label %else240
then239:
  %889 = load %nyx_string*, %nyx_string** %846
  %890 = call %nyx_string* @parse_toml_key(%nyx_string* %889)
  %891 = alloca %nyx_string*
  store %nyx_string* %890, %nyx_string** %891
  %892 = load %nyx_string*, %nyx_string** %846
  %893 = call %nyx_string* @parse_toml_value(%nyx_string* %892)
  %894 = alloca %nyx_string*
  store %nyx_string* %893, %nyx_string** %894
  %895 = load %nyx_string*, %nyx_string** %891
  %896 = load %nyx_string*, %nyx_string** %830
  %897 = call i1 @nyx_string_equals(%nyx_string* %895, %nyx_string* %896)
  br i1 %897, label %then242, label %else243
then242:
  %898 = load %nyx_string*, %nyx_string** %894
  %899 = getelementptr %TestConfig, %TestConfig* %781, i32 0, i32 0
  store %nyx_string* %898, %nyx_string** %899
  br label %merge244
else243:
  br label %merge244
merge244:
  %900 = load %nyx_string*, %nyx_string** %891
  %901 = load %nyx_string*, %nyx_string** %833
  %902 = call i1 @nyx_string_equals(%nyx_string* %900, %nyx_string* %901)
  br i1 %902, label %then245, label %else246
then245:
  %903 = load %nyx_string*, %nyx_string** %894
  %904 = call i64 @nyx_string_to_int(%nyx_string* %903)
  %905 = getelementptr %TestConfig, %TestConfig* %781, i32 0, i32 1
  store i64 %904, i64* %905
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
  %906 = load i64, i64* %800
  %907 = add i64 %906, 1
  store i64 %907, i64* %800
  br label %while_cond225
while_end227:
  %908 = load %TestConfig, %TestConfig* %781
  ret %TestConfig %908
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %909 = call { i64, i8* }* @nyx_array_new_ptr()
  %910 = alloca { i64, i8* }*
  store { i64, i8* }* %909, { i64, i8* }** %910
  %911 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %912 = load %nyx_string*, %nyx_string** %911
  %913 = call i8* @nyx_string_to_cstr(%nyx_string* %912)
  %914 = call i1 @nyx_file_exists(i8* %913)
  br i1 %914, label %then248, label %else249
then248:
  %915 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %916 = load %nyx_string*, %nyx_string** %915
  %917 = call i8* @nyx_string_to_cstr(%nyx_string* %916)
  %918 = call { i64, i8* }* @nyx_readdir(i8* %917)
  %919 = alloca { i64, i8* }*
  store { i64, i8* }* %918, { i64, i8* }** %919
  %920 = alloca i64
  store i64 0, i64* %920
  %921 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %921, i64 3)
  %923 = alloca %nyx_string*
  store %nyx_string* %922, %nyx_string** %923
  %924 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %924, i64 1)
  %926 = alloca %nyx_string*
  store %nyx_string* %925, %nyx_string** %926
  %927 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %927, i64 0)
  %929 = alloca %nyx_string*
  store %nyx_string* %928, %nyx_string** %929
  %930 = call i8* @llvm.stacksave()
  br label %while_cond251
while_cond251:
  %931 = load i64, i64* %920
  %932 = load { i64, i8* }*, { i64, i8* }** %919
  %933 = call i64 @nyx_array_length({ i64, i8* }* %932)
  %934 = icmp slt i64 %931, %933
  br i1 %934, label %while_body252, label %while_end253
while_body252:
  call void @llvm.stackrestore(i8* %930)
  %935 = load { i64, i8* }*, { i64, i8* }** %919
  %936 = load i64, i64* %920
  %937 = call i64 @nyx_array_get_checked({ i64, i8* }* %935, i64 %936, i64 2)
  %938 = inttoptr i64 %937 to %nyx_string*
  %939 = alloca %nyx_string*
  store %nyx_string* %938, %nyx_string** %939
  %940 = load %nyx_string*, %nyx_string** %939
  %941 = load %nyx_string*, %nyx_string** %923
  %942 = call i1 @nyx_string_ends_with(%nyx_string* %940, %nyx_string* %941)
  br i1 %942, label %then254, label %else255
then254:
  %943 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %944 = load %nyx_string*, %nyx_string** %943
  %945 = load %nyx_string*, %nyx_string** %926
  %946 = call %nyx_string* @nyx_string_concat(%nyx_string* %944, %nyx_string* %945)
  %947 = load %nyx_string*, %nyx_string** %939
  %948 = call %nyx_string* @nyx_string_concat(%nyx_string* %946, %nyx_string* %947)
  %949 = alloca %nyx_string*
  store %nyx_string* %948, %nyx_string** %949
  %950 = alloca i1
  store i1 true, i1* %950
  %951 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %952 = load %nyx_string*, %nyx_string** %951
  %953 = load %nyx_string*, %nyx_string** %929
  %954 = call i1 @nyx_string_equals(%nyx_string* %952, %nyx_string* %953)
  br i1 %954, label %sc_or_end258, label %sc_or_rhs257
sc_or_rhs257:
  %955 = load %nyx_string*, %nyx_string** %939
  %956 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %957 = load %nyx_string*, %nyx_string** %956
  %958 = call i1 @nyx_string_contains(%nyx_string* %955, %nyx_string* %957)
  store i1 %958, i1* %950
  br label %sc_or_end258
sc_or_end258:
  %959 = load i1, i1* %950
  br i1 %959, label %then259, label %else260
then259:
  %960 = load { i64, i8* }*, { i64, i8* }** %910
  %961 = load %nyx_string*, %nyx_string** %949
  %962 = ptrtoint %nyx_string* %961 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %960, i64 %962, i64 2)
  br label %merge261
else260:
  br label %merge261
merge261:
  br label %merge256
else255:
  br label %merge256
merge256:
  %963 = load i64, i64* %920
  %964 = add i64 %963, 1
  store i64 %964, i64* %920
  br label %while_cond251
while_end253:
  br label %merge250
else249:
  br label %merge250
merge250:
  %965 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %965, i64 3)
  %967 = call i8* @nyx_string_to_cstr(%nyx_string* %966)
  %968 = call i1 @nyx_file_exists(i8* %967)
  br i1 %968, label %then262, label %else263
then262:
  %969 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %969, i64 3)
  %971 = call i8* @nyx_string_to_cstr(%nyx_string* %970)
  %972 = call { i64, i8* }* @nyx_readdir(i8* %971)
  %973 = alloca { i64, i8* }*
  store { i64, i8* }* %972, { i64, i8* }** %973
  %974 = alloca i64
  store i64 0, i64* %974
  %975 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %975, i64 8)
  %977 = alloca %nyx_string*
  store %nyx_string* %976, %nyx_string** %977
  %978 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %978, i64 4)
  %980 = alloca %nyx_string*
  store %nyx_string* %979, %nyx_string** %980
  %981 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %981, i64 0)
  %983 = alloca %nyx_string*
  store %nyx_string* %982, %nyx_string** %983
  %984 = call i8* @llvm.stacksave()
  br label %while_cond265
while_cond265:
  %985 = load i64, i64* %974
  %986 = load { i64, i8* }*, { i64, i8* }** %973
  %987 = call i64 @nyx_array_length({ i64, i8* }* %986)
  %988 = icmp slt i64 %985, %987
  br i1 %988, label %while_body266, label %while_end267
while_body266:
  call void @llvm.stackrestore(i8* %984)
  %989 = load { i64, i8* }*, { i64, i8* }** %973
  %990 = load i64, i64* %974
  %991 = call i64 @nyx_array_get_checked({ i64, i8* }* %989, i64 %990, i64 2)
  %992 = inttoptr i64 %991 to %nyx_string*
  %993 = alloca %nyx_string*
  store %nyx_string* %992, %nyx_string** %993
  %994 = load %nyx_string*, %nyx_string** %993
  %995 = load %nyx_string*, %nyx_string** %977
  %996 = call i1 @nyx_string_ends_with(%nyx_string* %994, %nyx_string* %995)
  br i1 %996, label %then268, label %else269
then268:
  %997 = load %nyx_string*, %nyx_string** %980
  %998 = load %nyx_string*, %nyx_string** %993
  %999 = call %nyx_string* @nyx_string_concat(%nyx_string* %997, %nyx_string* %998)
  %1000 = alloca %nyx_string*
  store %nyx_string* %999, %nyx_string** %1000
  %1001 = alloca i1
  store i1 true, i1* %1001
  %1002 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1003 = load %nyx_string*, %nyx_string** %1002
  %1004 = load %nyx_string*, %nyx_string** %983
  %1005 = call i1 @nyx_string_equals(%nyx_string* %1003, %nyx_string* %1004)
  br i1 %1005, label %sc_or_end272, label %sc_or_rhs271
sc_or_rhs271:
  %1006 = load %nyx_string*, %nyx_string** %993
  %1007 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1008 = load %nyx_string*, %nyx_string** %1007
  %1009 = call i1 @nyx_string_contains(%nyx_string* %1006, %nyx_string* %1008)
  store i1 %1009, i1* %1001
  br label %sc_or_end272
sc_or_end272:
  %1010 = load i1, i1* %1001
  br i1 %1010, label %then273, label %else274
then273:
  %1011 = load { i64, i8* }*, { i64, i8* }** %910
  %1012 = load %nyx_string*, %nyx_string** %1000
  %1013 = ptrtoint %nyx_string* %1012 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1011, i64 %1013, i64 2)
  br label %merge275
else274:
  br label %merge275
merge275:
  br label %merge270
else269:
  br label %merge270
merge270:
  %1014 = load i64, i64* %974
  %1015 = add i64 %1014, 1
  store i64 %1015, i64* %974
  br label %while_cond265
while_end267:
  br label %merge264
else263:
  br label %merge264
merge264:
  %1016 = load { i64, i8* }*, { i64, i8* }** %910
  %1017 = call { i64, i8* }* @sort_str({ i64, i8* }* %1016)
  ret { i64, i8* }* %1017
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1018 = load %nyx_string*, %nyx_string** %path.ptr
  %1019 = call i8* @nyx_string_to_cstr(%nyx_string* %1018)
  %1020 = call %nyx_string* @nyx_read_file(i8* %1019)
  %1021 = alloca %nyx_string*
  store %nyx_string* %1020, %nyx_string** %1021
  %1022 = load %nyx_string*, %nyx_string** %1021
  %1023 = getelementptr [7 x i8], [7 x i8]* @.str45, i32 0, i32 0
  %1024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1023, i64 6)
  %1025 = call i1 @nyx_string_contains(%nyx_string* %1022, %nyx_string* %1024)
  ret i1 %1025
}

define internal %nyx_string* @lib_modulo_de(
%nyx_string* %file.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %1026 = load %nyx_string*, %nyx_string** %file.ptr
  %1027 = alloca %nyx_string*
  store %nyx_string* %1026, %nyx_string** %1027
  %1028 = load %nyx_string*, %nyx_string** %1027
  %1029 = getelementptr [3 x i8], [3 x i8]* @.str46, i32 0, i32 0
  %1030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1029, i64 2)
  %1031 = call i1 @nyx_string_starts_with(%nyx_string* %1028, %nyx_string* %1030)
  br i1 %1031, label %then276, label %else277
then276:
  %1032 = load %nyx_string*, %nyx_string** %1027
  %1033 = load %nyx_string*, %nyx_string** %1027
  %1034 = call i64 @nyx_string_byte_length(%nyx_string* %1033)
  %1035 = call %nyx_string* @nyx_string_substring(%nyx_string* %1032, i64 2, i64 %1034)
  store %nyx_string* %1035, %nyx_string** %1027
  br label %merge278
else277:
  br label %merge278
merge278:
  %1036 = load %nyx_string*, %nyx_string** %1027
  %1037 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %1038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1037, i64 3)
  %1039 = call i1 @nyx_string_ends_with(%nyx_string* %1036, %nyx_string* %1038)
  br i1 %1039, label %then279, label %else280
then279:
  %1040 = load %nyx_string*, %nyx_string** %1027
  %1041 = load %nyx_string*, %nyx_string** %1027
  %1042 = call i64 @nyx_string_byte_length(%nyx_string* %1041)
  %1043 = sub i64 %1042, 3
  %1044 = call %nyx_string* @nyx_string_substring(%nyx_string* %1040, i64 0, i64 %1043)
  store %nyx_string* %1044, %nyx_string** %1027
  br label %merge281
else280:
  br label %merge281
merge281:
  %1045 = load %nyx_string*, %nyx_string** %1027
  ret %nyx_string* %1045
}

define internal %nyx_string* @rt_cache_sh(
) {
  %1046 = getelementptr [17 x i8], [17 x i8]* @.str48, i32 0, i32 0
  %1047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1046, i64 16)
  %1048 = alloca %nyx_string*
  store %nyx_string* %1047, %nyx_string** %1048
  %1049 = load %nyx_string*, %nyx_string** %1048
  %1050 = getelementptr [41 x i8], [41 x i8]* @.str49, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1050, i64 40)
  %1052 = call %nyx_string* @nyx_string_concat(%nyx_string* %1049, %nyx_string* %1051)
  store %nyx_string* %1052, %nyx_string** %1048
  %1053 = load %nyx_string*, %nyx_string** %1048
  %1054 = getelementptr [24 x i8], [24 x i8]* @.str50, i32 0, i32 0
  %1055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1054, i64 23)
  %1056 = call %nyx_string* @nyx_string_concat(%nyx_string* %1053, %nyx_string* %1055)
  store %nyx_string* %1056, %nyx_string** %1048
  %1057 = load %nyx_string*, %nyx_string** %1048
  %1058 = getelementptr [92 x i8], [92 x i8]* @.str51, i32 0, i32 0
  %1059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1058, i64 91)
  %1060 = call %nyx_string* @nyx_string_concat(%nyx_string* %1057, %nyx_string* %1059)
  store %nyx_string* %1060, %nyx_string** %1048
  %1061 = load %nyx_string*, %nyx_string** %1048
  %1062 = getelementptr [177 x i8], [177 x i8]* @.str52, i32 0, i32 0
  %1063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1062, i64 176)
  %1064 = call %nyx_string* @nyx_string_concat(%nyx_string* %1061, %nyx_string* %1063)
  store %nyx_string* %1064, %nyx_string** %1048
  %1065 = load %nyx_string*, %nyx_string** %1048
  %1066 = getelementptr [35 x i8], [35 x i8]* @.str53, i32 0, i32 0
  %1067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1066, i64 34)
  %1068 = call %nyx_string* @nyx_string_concat(%nyx_string* %1065, %nyx_string* %1067)
  store %nyx_string* %1068, %nyx_string** %1048
  %1069 = load %nyx_string*, %nyx_string** %1048
  %1070 = getelementptr [83 x i8], [83 x i8]* @.str54, i32 0, i32 0
  %1071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1070, i64 82)
  %1072 = call %nyx_string* @nyx_string_concat(%nyx_string* %1069, %nyx_string* %1071)
  store %nyx_string* %1072, %nyx_string** %1048
  %1073 = load %nyx_string*, %nyx_string** %1048
  %1074 = getelementptr [49 x i8], [49 x i8]* @.str55, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1074, i64 48)
  %1076 = call %nyx_string* @nyx_string_concat(%nyx_string* %1073, %nyx_string* %1075)
  store %nyx_string* %1076, %nyx_string** %1048
  %1077 = load %nyx_string*, %nyx_string** %1048
  %1078 = getelementptr [89 x i8], [89 x i8]* @.str56, i32 0, i32 0
  %1079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1078, i64 88)
  %1080 = call %nyx_string* @nyx_string_concat(%nyx_string* %1077, %nyx_string* %1079)
  store %nyx_string* %1080, %nyx_string** %1048
  %1081 = load %nyx_string*, %nyx_string** %1048
  %1082 = getelementptr [68 x i8], [68 x i8]* @.str57, i32 0, i32 0
  %1083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1082, i64 67)
  %1084 = call %nyx_string* @nyx_string_concat(%nyx_string* %1081, %nyx_string* %1083)
  store %nyx_string* %1084, %nyx_string** %1048
  %1085 = load %nyx_string*, %nyx_string** %1048
  %1086 = getelementptr [15 x i8], [15 x i8]* @.str58, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1086, i64 14)
  %1088 = call %nyx_string* @nyx_string_concat(%nyx_string* %1085, %nyx_string* %1087)
  store %nyx_string* %1088, %nyx_string** %1048
  %1089 = load %nyx_string*, %nyx_string** %1048
  %1090 = getelementptr [114 x i8], [114 x i8]* @.str59, i32 0, i32 0
  %1091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1090, i64 113)
  %1092 = call %nyx_string* @nyx_string_concat(%nyx_string* %1089, %nyx_string* %1091)
  store %nyx_string* %1092, %nyx_string** %1048
  %1093 = load %nyx_string*, %nyx_string** %1048
  %1094 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %1095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1094, i64 7)
  %1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %1093, %nyx_string* %1095)
  store %nyx_string* %1096, %nyx_string** %1048
  %1097 = load %nyx_string*, %nyx_string** %1048
  %1098 = getelementptr [138 x i8], [138 x i8]* @.str61, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1098, i64 137)
  %1100 = call %nyx_string* @nyx_string_concat(%nyx_string* %1097, %nyx_string* %1099)
  store %nyx_string* %1100, %nyx_string** %1048
  %1101 = load %nyx_string*, %nyx_string** %1048
  %1102 = getelementptr [43 x i8], [43 x i8]* @.str62, i32 0, i32 0
  %1103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1102, i64 42)
  %1104 = call %nyx_string* @nyx_string_concat(%nyx_string* %1101, %nyx_string* %1103)
  store %nyx_string* %1104, %nyx_string** %1048
  %1105 = load %nyx_string*, %nyx_string** %1048
  %1106 = getelementptr [6 x i8], [6 x i8]* @.str63, i32 0, i32 0
  %1107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1106, i64 5)
  %1108 = call %nyx_string* @nyx_string_concat(%nyx_string* %1105, %nyx_string* %1107)
  store %nyx_string* %1108, %nyx_string** %1048
  %1109 = load %nyx_string*, %nyx_string** %1048
  %1110 = getelementptr [27 x i8], [27 x i8]* @.str64, i32 0, i32 0
  %1111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1110, i64 26)
  %1112 = call %nyx_string* @nyx_string_concat(%nyx_string* %1109, %nyx_string* %1111)
  store %nyx_string* %1112, %nyx_string** %1048
  %1113 = load %nyx_string*, %nyx_string** %1048
  %1114 = getelementptr [3 x i8], [3 x i8]* @.str65, i32 0, i32 0
  %1115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1114, i64 2)
  %1116 = call %nyx_string* @nyx_string_concat(%nyx_string* %1113, %nyx_string* %1115)
  store %nyx_string* %1116, %nyx_string** %1048
  %1117 = load %nyx_string*, %nyx_string** %1048
  ret %nyx_string* %1117
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
  %1118 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1118, i64 8)
  %1120 = call i8* @nyx_string_to_cstr(%nyx_string* %1119)
  %1121 = call %nyx_string* @nyx_getenv(i8* %1120)
  %1122 = alloca %nyx_string*
  store %nyx_string* %1121, %nyx_string** %1122
  %1123 = load %nyx_string*, %nyx_string** %1122
  %1124 = getelementptr [1 x i8], [1 x i8]* @.str67, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1124, i64 0)
  %1126 = call i1 @nyx_string_equals(%nyx_string* %1123, %nyx_string* %1125)
  br i1 %1126, label %then282, label %else283
then282:
  %1127 = getelementptr %TestResult, %TestResult* null, i32 1
  %1128 = ptrtoint %TestResult* %1127 to i64
  %1129 = call i8* @GC_malloc(i64 %1128)
  %1130 = bitcast i8* %1129 to %TestResult*
  %1131 = load %nyx_string*, %nyx_string** %file.ptr
  %1132 = getelementptr %TestResult, %TestResult* %1130, i32 0, i32 0
  store %nyx_string* %1131, %nyx_string** %1132
  %1133 = getelementptr %TestResult, %TestResult* %1130, i32 0, i32 1
  store i64 0, i64* %1133
  %1134 = getelementptr %TestResult, %TestResult* %1130, i32 0, i32 2
  store i64 0, i64* %1134
  %1135 = getelementptr [24 x i8], [24 x i8]* @.str68, i32 0, i32 0
  %1136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1135, i64 23)
  %1137 = getelementptr %TestResult, %TestResult* %1130, i32 0, i32 3
  store %nyx_string* %1136, %nyx_string** %1137
  %1138 = getelementptr %TestResult, %TestResult* %1130, i32 0, i32 4
  store i1 0, i1* %1138
  %1139 = load %TestResult, %TestResult* %1130
  ret %TestResult %1139
else283:
  br label %merge284
merge284:
  %1140 = getelementptr [4 x i8], [4 x i8]* @.str69, i32 0, i32 0
  %1141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1140, i64 3)
  %1142 = call i8* @nyx_string_to_cstr(%nyx_string* %1141)
  %1143 = call %nyx_string* @nyx_getenv(i8* %1142)
  %1144 = alloca %nyx_string*
  store %nyx_string* %1143, %nyx_string** %1144
  %1145 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1146 = load i64, i64* %1145
  %1147 = call %nyx_string* @nyx_string_from_int(i64 %1146)
  %1148 = alloca %nyx_string*
  store %nyx_string* %1147, %nyx_string** %1148
  %1149 = getelementptr [31 x i8], [31 x i8]* @.str70, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1149, i64 30)
  %1151 = call i8* @nyx_string_to_cstr(%nyx_string* %1150)
  %1152 = call %nyx_string* @nyx_exec(i8* %1151)
  %1153 = call %nyx_string* @nyx_string_trim(%nyx_string* %1152)
  %1154 = alloca %nyx_string*
  store %nyx_string* %1153, %nyx_string** %1154
  %1155 = load %nyx_string*, %nyx_string** %1154
  %1156 = getelementptr [9 x i8], [9 x i8]* @.str71, i32 0, i32 0
  %1157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1156, i64 8)
  %1158 = call %nyx_string* @nyx_string_concat(%nyx_string* %1155, %nyx_string* %1157)
  %1159 = alloca %nyx_string*
  store %nyx_string* %1158, %nyx_string** %1159
  %1160 = load %nyx_string*, %nyx_string** %1154
  %1161 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1161, i64 4)
  %1163 = call %nyx_string* @nyx_string_concat(%nyx_string* %1160, %nyx_string* %1162)
  %1164 = alloca %nyx_string*
  store %nyx_string* %1163, %nyx_string** %1164
  %1165 = getelementptr [1 x i8], [1 x i8]* @.str73, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1165, i64 0)
  %1167 = alloca %nyx_string*
  store %nyx_string* %1166, %nyx_string** %1167
  %1168 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1169 = load i1, i1* %1168
  br i1 %1169, label %then285, label %else286
then285:
  %1170 = getelementptr [5 x i8], [5 x i8]* @.str74, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1170, i64 4)
  store %nyx_string* %1171, %nyx_string** %1167
  br label %merge287
else286:
  br label %merge287
merge287:
  %1172 = getelementptr [62 x i8], [62 x i8]* @.str75, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1172, i64 61)
  %1174 = getelementptr [54 x i8], [54 x i8]* @.str76, i32 0, i32 0
  %1175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1174, i64 53)
  %1176 = call %nyx_string* @nyx_string_concat(%nyx_string* %1173, %nyx_string* %1175)
  %1177 = getelementptr [48 x i8], [48 x i8]* @.str77, i32 0, i32 0
  %1178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1177, i64 47)
  %1179 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1178)
  %1180 = getelementptr [47 x i8], [47 x i8]* @.str78, i32 0, i32 0
  %1181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1180, i64 46)
  %1182 = call %nyx_string* @nyx_string_concat(%nyx_string* %1179, %nyx_string* %1181)
  %1183 = getelementptr [67 x i8], [67 x i8]* @.str79, i32 0, i32 0
  %1184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1183, i64 66)
  %1185 = call %nyx_string* @nyx_string_concat(%nyx_string* %1182, %nyx_string* %1184)
  %1186 = getelementptr [51 x i8], [51 x i8]* @.str80, i32 0, i32 0
  %1187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1186, i64 50)
  %1188 = call %nyx_string* @nyx_string_concat(%nyx_string* %1185, %nyx_string* %1187)
  %1189 = getelementptr [91 x i8], [91 x i8]* @.str81, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1189, i64 90)
  %1191 = call %nyx_string* @nyx_string_concat(%nyx_string* %1188, %nyx_string* %1190)
  %1192 = getelementptr [23 x i8], [23 x i8]* @.str82, i32 0, i32 0
  %1193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1192, i64 22)
  %1194 = call %nyx_string* @nyx_string_concat(%nyx_string* %1191, %nyx_string* %1193)
  %1195 = alloca %nyx_string*
  store %nyx_string* %1194, %nyx_string** %1195
  %1196 = getelementptr [15 x i8], [15 x i8]* @.str83, i32 0, i32 0
  %1197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1196, i64 14)
  %1198 = call i8* @nyx_string_to_cstr(%nyx_string* %1197)
  %1199 = call %nyx_string* @nyx_getenv(i8* %1198)
  %1200 = alloca %nyx_string*
  store %nyx_string* %1199, %nyx_string** %1200
  %1201 = alloca i1
  store i1 false, i1* %1201
  %1202 = load %nyx_string*, %nyx_string** %1200
  %1203 = getelementptr [1 x i8], [1 x i8]* @.str84, i32 0, i32 0
  %1204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1203, i64 0)
  %1205 = call i1 @nyx_string_equals(%nyx_string* %1202, %nyx_string* %1204)
  %1206 = xor i1 %1205, true
  br i1 %1206, label %sc_and_rhs288, label %sc_and_end289
sc_and_rhs288:
  %1207 = load %nyx_string*, %nyx_string** %1200
  %1208 = getelementptr [2 x i8], [2 x i8]* @.str85, i32 0, i32 0
  %1209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1208, i64 1)
  %1210 = call i1 @nyx_string_starts_with(%nyx_string* %1207, %nyx_string* %1209)
  %1211 = xor i1 %1210, true
  store i1 %1211, i1* %1201
  br label %sc_and_end289
sc_and_end289:
  %1212 = load i1, i1* %1201
  br i1 %1212, label %then290, label %else291
then290:
  %1213 = load %nyx_string*, %nyx_string** %1144
  %1214 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %1215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1214, i64 1)
  %1216 = call %nyx_string* @nyx_string_concat(%nyx_string* %1213, %nyx_string* %1215)
  %1217 = load %nyx_string*, %nyx_string** %1200
  %1218 = call %nyx_string* @nyx_string_concat(%nyx_string* %1216, %nyx_string* %1217)
  store %nyx_string* %1218, %nyx_string** %1200
  br label %merge292
else291:
  br label %merge292
merge292:
  %1219 = getelementptr [8 x i8], [8 x i8]* @.str87, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1219, i64 7)
  %1221 = load %nyx_string*, %nyx_string** %1195
  %1222 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1221)
  %1223 = getelementptr [3 x i8], [3 x i8]* @.str88, i32 0, i32 0
  %1224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1223, i64 2)
  %1225 = call %nyx_string* @nyx_string_concat(%nyx_string* %1222, %nyx_string* %1224)
  %1226 = alloca %nyx_string*
  store %nyx_string* %1225, %nyx_string** %1226
  %1227 = alloca i1
  store i1 false, i1* %1227
  %1228 = load %nyx_string*, %nyx_string** %1200
  %1229 = getelementptr [1 x i8], [1 x i8]* @.str89, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1229, i64 0)
  %1231 = call i1 @nyx_string_equals(%nyx_string* %1228, %nyx_string* %1230)
  %1232 = xor i1 %1231, true
  br i1 %1232, label %sc_and_rhs293, label %sc_and_end294
sc_and_rhs293:
  %1233 = load %nyx_string*, %nyx_string** %1200
  %1234 = call i8* @nyx_string_to_cstr(%nyx_string* %1233)
  %1235 = call i1 @nyx_file_exists(i8* %1234)
  store i1 %1235, i1* %1227
  br label %sc_and_end294
sc_and_end294:
  %1236 = load i1, i1* %1227
  br i1 %1236, label %then295, label %else296
then295:
  %1237 = getelementptr [9 x i8], [9 x i8]* @.str90, i32 0, i32 0
  %1238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1237, i64 8)
  %1239 = load %nyx_string*, %nyx_string** %1200
  %1240 = call %nyx_string* @nyx_string_concat(%nyx_string* %1238, %nyx_string* %1239)
  %1241 = getelementptr [4 x i8], [4 x i8]* @.str91, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1241, i64 3)
  %1243 = call %nyx_string* @nyx_string_concat(%nyx_string* %1240, %nyx_string* %1242)
  store %nyx_string* %1243, %nyx_string** %1226
  br label %merge297
else296:
  %1244 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1245 = getelementptr [1 x i8], [1 x i8]* @.str92, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1245, i64 0)
  %1247 = call i1 @nyx_string_equals(%nyx_string* %1244, %nyx_string* %1246)
  br i1 %1247, label %then298, label %else299
then298:
  %1248 = call %nyx_string* @rt_cache_sh()
  %1249 = load %nyx_string*, %nyx_string** %1226
  %1250 = call %nyx_string* @nyx_string_concat(%nyx_string* %1248, %nyx_string* %1249)
  %1251 = getelementptr [17 x i8], [17 x i8]* @.str93, i32 0, i32 0
  %1252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1251, i64 16)
  %1253 = call %nyx_string* @nyx_string_concat(%nyx_string* %1250, %nyx_string* %1252)
  %1254 = load %nyx_string*, %nyx_string** %1167
  %1255 = call %nyx_string* @nyx_string_trim(%nyx_string* %1254)
  %1256 = call %nyx_string* @nyx_string_concat(%nyx_string* %1253, %nyx_string* %1255)
  %1257 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1257, i64 2)
  %1259 = call %nyx_string* @nyx_string_concat(%nyx_string* %1256, %nyx_string* %1258)
  %1260 = load %nyx_string*, %nyx_string** %1195
  %1261 = call %nyx_string* @nyx_string_concat(%nyx_string* %1259, %nyx_string* %1260)
  %1262 = getelementptr [31 x i8], [31 x i8]* @.str95, i32 0, i32 0
  %1263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1262, i64 30)
  %1264 = call %nyx_string* @nyx_string_concat(%nyx_string* %1261, %nyx_string* %1263)
  store %nyx_string* %1264, %nyx_string** %1226
  br label %merge300
else299:
  br label %merge300
merge300:
  br label %merge297
merge297:
  %1265 = getelementptr [3 x i8], [3 x i8]* @.str96, i32 0, i32 0
  %1266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1265, i64 2)
  %1267 = getelementptr [13 x i8], [13 x i8]* @.str97, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1267, i64 12)
  %1269 = call %nyx_string* @nyx_string_concat(%nyx_string* %1266, %nyx_string* %1268)
  store %nyx_string* %1269, %nyx_string** %1195
  %1270 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1270, i64 0)
  %1272 = alloca %nyx_string*
  store %nyx_string* %1271, %nyx_string** %1272
  %1273 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1273, i64 0)
  %1275 = alloca %nyx_string*
  store %nyx_string* %1274, %nyx_string** %1275
  %1276 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1276, i64 0)
  %1278 = alloca %nyx_string*
  store %nyx_string* %1277, %nyx_string** %1278
  %1279 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1280 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1280, i64 0)
  %1282 = call i1 @nyx_string_equals(%nyx_string* %1279, %nyx_string* %1281)
  %1283 = xor i1 %1282, true
  br i1 %1283, label %then301, label %else302
then301:
  %1284 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1285 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %1286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1285, i64 1)
  %1287 = call %nyx_string* @nyx_string_concat(%nyx_string* %1284, %nyx_string* %1286)
  %1288 = load i64, i64* %cov_idx.ptr
  %1289 = call %nyx_string* @nyx_string_from_int(i64 %1288)
  %1290 = call %nyx_string* @nyx_string_concat(%nyx_string* %1287, %nyx_string* %1289)
  %1291 = alloca %nyx_string*
  store %nyx_string* %1290, %nyx_string** %1291
  %1292 = getelementptr [20 x i8], [20 x i8]* @.str103, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1292, i64 19)
  %1294 = load %nyx_string*, %nyx_string** %1291
  %1295 = call %nyx_string* @nyx_string_concat(%nyx_string* %1293, %nyx_string* %1294)
  %1296 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1296, i64 5)
  %1298 = call %nyx_string* @nyx_string_concat(%nyx_string* %1295, %nyx_string* %1297)
  store %nyx_string* %1298, %nyx_string** %1272
  %1299 = getelementptr [62 x i8], [62 x i8]* @.str105, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1299, i64 61)
  store %nyx_string* %1300, %nyx_string** %1275
  %1301 = getelementptr [20 x i8], [20 x i8]* @.str106, i32 0, i32 0
  %1302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1301, i64 19)
  %1303 = load %nyx_string*, %nyx_string** %1291
  %1304 = call %nyx_string* @nyx_string_concat(%nyx_string* %1302, %nyx_string* %1303)
  %1305 = getelementptr [11 x i8], [11 x i8]* @.str107, i32 0, i32 0
  %1306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1305, i64 10)
  %1307 = call %nyx_string* @nyx_string_concat(%nyx_string* %1304, %nyx_string* %1306)
  store %nyx_string* %1307, %nyx_string** %1278
  br label %merge303
else302:
  br label %merge303
merge303:
  %1308 = getelementptr [20 x i8], [20 x i8]* @.str108, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1308, i64 19)
  %1310 = getelementptr [180 x i8], [180 x i8]* @.str109, i32 0, i32 0
  %1311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1310, i64 179)
  %1312 = call %nyx_string* @nyx_string_concat(%nyx_string* %1309, %nyx_string* %1311)
  %1313 = getelementptr [322 x i8], [322 x i8]* @.str110, i32 0, i32 0
  %1314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1313, i64 321)
  %1315 = call %nyx_string* @nyx_string_concat(%nyx_string* %1312, %nyx_string* %1314)
  %1316 = alloca %nyx_string*
  store %nyx_string* %1315, %nyx_string** %1316
  %1317 = load %nyx_string*, %nyx_string** %file.ptr
  %1318 = call %nyx_string* @lib_modulo_de(%nyx_string* %1317)
  %1319 = alloca %nyx_string*
  store %nyx_string* %1318, %nyx_string** %1319
  %1320 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1320, i64 0)
  %1322 = alloca %nyx_string*
  store %nyx_string* %1321, %nyx_string** %1322
  %1323 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1323, i64 0)
  %1325 = alloca %nyx_string*
  store %nyx_string* %1324, %nyx_string** %1325
  %1326 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1327 = load %nyx_string*, %nyx_string** %1326
  %1328 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1328, i64 0)
  %1330 = call i1 @nyx_string_equals(%nyx_string* %1327, %nyx_string* %1329)
  %1331 = xor i1 %1330, true
  br i1 %1331, label %then304, label %else305
then304:
  %1332 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1333 = load %nyx_string*, %nyx_string** %1332
  %1334 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1335 = load %nyx_string*, %nyx_string** %1334
  %1336 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %1337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1336, i64 1)
  %1338 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1335, %nyx_string* %1337)
  %1339 = alloca { i64, i8* }*
  store { i64, i8* }* %1338, { i64, i8* }** %1339
  %1340 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %1341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1340, i64 0)
  %1342 = alloca %nyx_string*
  store %nyx_string* %1341, %nyx_string** %1342
  %1343 = alloca i64
  store i64 0, i64* %1343
  %1344 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1344, i64 0)
  %1346 = alloca %nyx_string*
  store %nyx_string* %1345, %nyx_string** %1346
  %1347 = getelementptr [2 x i8], [2 x i8]* @.str117, i32 0, i32 0
  %1348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1347, i64 1)
  %1349 = alloca %nyx_string*
  store %nyx_string* %1348, %nyx_string** %1349
  %1350 = call i8* @llvm.stacksave()
  br label %while_cond307
while_cond307:
  %1351 = load i64, i64* %1343
  %1352 = load { i64, i8* }*, { i64, i8* }** %1339
  %1353 = call i64 @nyx_array_length({ i64, i8* }* %1352)
  %1354 = icmp slt i64 %1351, %1353
  br i1 %1354, label %while_body308, label %while_end309
while_body308:
  call void @llvm.stackrestore(i8* %1350)
  %1355 = load { i64, i8* }*, { i64, i8* }** %1339
  %1356 = load i64, i64* %1343
  %1357 = call i64 @nyx_array_get_checked({ i64, i8* }* %1355, i64 %1356, i64 2)
  %1358 = inttoptr i64 %1357 to %nyx_string*
  %1359 = alloca %nyx_string*
  store %nyx_string* %1358, %nyx_string** %1359
  %1360 = alloca i1
  store i1 false, i1* %1360
  %1361 = load %nyx_string*, %nyx_string** %1359
  %1362 = load %nyx_string*, %nyx_string** %1346
  %1363 = call i1 @nyx_string_equals(%nyx_string* %1361, %nyx_string* %1362)
  %1364 = xor i1 %1363, true
  br i1 %1364, label %sc_and_rhs310, label %sc_and_end311
sc_and_rhs310:
  %1365 = load %nyx_string*, %nyx_string** %1359
  %1366 = load %nyx_string*, %nyx_string** %1319
  %1367 = call i1 @nyx_string_equals(%nyx_string* %1365, %nyx_string* %1366)
  %1368 = xor i1 %1367, true
  store i1 %1368, i1* %1360
  br label %sc_and_end311
sc_and_end311:
  %1369 = load i1, i1* %1360
  br i1 %1369, label %then312, label %else313
then312:
  %1370 = load %nyx_string*, %nyx_string** %1342
  %1371 = load %nyx_string*, %nyx_string** %1346
  %1372 = call i1 @nyx_string_equals(%nyx_string* %1370, %nyx_string* %1371)
  %1373 = xor i1 %1372, true
  br i1 %1373, label %then315, label %else316
then315:
  %1374 = load %nyx_string*, %nyx_string** %1342
  %1375 = load %nyx_string*, %nyx_string** %1349
  %1376 = call %nyx_string* @nyx_string_concat(%nyx_string* %1374, %nyx_string* %1375)
  store %nyx_string* %1376, %nyx_string** %1342
  br label %merge317
else316:
  br label %merge317
merge317:
  %1377 = load %nyx_string*, %nyx_string** %1342
  %1378 = load %nyx_string*, %nyx_string** %1359
  %1379 = call %nyx_string* @nyx_string_concat(%nyx_string* %1377, %nyx_string* %1378)
  store %nyx_string* %1379, %nyx_string** %1342
  br label %merge314
else313:
  br label %merge314
merge314:
  %1380 = load i64, i64* %1343
  %1381 = add i64 %1380, 1
  store i64 %1381, i64* %1343
  br label %while_cond307
while_end309:
  %1382 = load %nyx_string*, %nyx_string** %1342
  %1383 = getelementptr [1 x i8], [1 x i8]* @.str118, i32 0, i32 0
  %1384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1383, i64 0)
  %1385 = call i1 @nyx_string_equals(%nyx_string* %1382, %nyx_string* %1384)
  %1386 = xor i1 %1385, true
  br i1 %1386, label %then318, label %else319
then318:
  %1387 = getelementptr [19 x i8], [19 x i8]* @.str119, i32 0, i32 0
  %1388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1387, i64 18)
  %1389 = load %nyx_string*, %nyx_string** %1342
  %1390 = call %nyx_string* @nyx_string_concat(%nyx_string* %1388, %nyx_string* %1389)
  %1391 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %1392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1391, i64 1)
  %1393 = call %nyx_string* @nyx_string_concat(%nyx_string* %1390, %nyx_string* %1392)
  store %nyx_string* %1393, %nyx_string** %1322
  br label %merge320
else319:
  br label %merge320
merge320:
  %1394 = alloca i1
  store i1 false, i1* %1394
  %1395 = load %nyx_string*, %nyx_string** %1319
  %1396 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %1397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1396, i64 0)
  %1398 = call i1 @nyx_string_equals(%nyx_string* %1395, %nyx_string* %1397)
  %1399 = xor i1 %1398, true
  br i1 %1399, label %sc_and_rhs321, label %sc_and_end322
sc_and_rhs321:
  %1400 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1400, i64 1)
  %1402 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1403 = load %nyx_string*, %nyx_string** %1402
  %1404 = call %nyx_string* @nyx_string_concat(%nyx_string* %1401, %nyx_string* %1403)
  %1405 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1405, i64 1)
  %1407 = call %nyx_string* @nyx_string_concat(%nyx_string* %1404, %nyx_string* %1406)
  %1408 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1408, i64 1)
  %1410 = load %nyx_string*, %nyx_string** %1319
  %1411 = call %nyx_string* @nyx_string_concat(%nyx_string* %1409, %nyx_string* %1410)
  %1412 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %1413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1412, i64 1)
  %1414 = call %nyx_string* @nyx_string_concat(%nyx_string* %1411, %nyx_string* %1413)
  %1415 = call i1 @nyx_string_contains(%nyx_string* %1407, %nyx_string* %1414)
  store i1 %1415, i1* %1394
  br label %sc_and_end322
sc_and_end322:
  %1416 = load i1, i1* %1394
  br i1 %1416, label %then323, label %else324
then323:
  %1417 = load %nyx_string*, %nyx_string** %1322
  %1418 = getelementptr [16 x i8], [16 x i8]* @.str126, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1418, i64 15)
  %1420 = call %nyx_string* @nyx_string_concat(%nyx_string* %1417, %nyx_string* %1419)
  %1421 = load %nyx_string*, %nyx_string** %1319
  %1422 = call %nyx_string* @nyx_string_concat(%nyx_string* %1420, %nyx_string* %1421)
  %1423 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %1424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1423, i64 1)
  %1425 = call %nyx_string* @nyx_string_concat(%nyx_string* %1422, %nyx_string* %1424)
  store %nyx_string* %1425, %nyx_string** %1322
  br label %merge325
else324:
  br label %merge325
merge325:
  %1426 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1427 = load %nyx_string*, %nyx_string** %1426
  %1428 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1429 = load %nyx_string*, %nyx_string** %1428
  %1430 = getelementptr [2 x i8], [2 x i8]* @.str128, i32 0, i32 0
  %1431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1430, i64 1)
  %1432 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1429, %nyx_string* %1431)
  %1433 = alloca { i64, i8* }*
  store { i64, i8* }* %1432, { i64, i8* }** %1433
  %1434 = alloca i64
  store i64 0, i64* %1434
  %1435 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1435, i64 1)
  %1437 = alloca %nyx_string*
  store %nyx_string* %1436, %nyx_string** %1437
  %1438 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1438, i64 1)
  %1440 = alloca %nyx_string*
  store %nyx_string* %1439, %nyx_string** %1440
  %1441 = getelementptr [3 x i8], [3 x i8]* @.str131, i32 0, i32 0
  %1442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1441, i64 2)
  %1443 = alloca %nyx_string*
  store %nyx_string* %1442, %nyx_string** %1443
  %1444 = call i8* @llvm.stacksave()
  br label %while_cond326
while_cond326:
  %1445 = load i64, i64* %1434
  %1446 = load { i64, i8* }*, { i64, i8* }** %1433
  %1447 = call i64 @nyx_array_length({ i64, i8* }* %1446)
  %1448 = icmp slt i64 %1445, %1447
  br i1 %1448, label %while_body327, label %while_end328
while_body327:
  call void @llvm.stackrestore(i8* %1444)
  %1449 = load { i64, i8* }*, { i64, i8* }** %1433
  %1450 = load i64, i64* %1434
  %1451 = call i64 @nyx_array_get_checked({ i64, i8* }* %1449, i64 %1450, i64 2)
  %1452 = inttoptr i64 %1451 to %nyx_string*
  %1453 = alloca %nyx_string*
  store %nyx_string* %1452, %nyx_string** %1453
  %1454 = load %nyx_string*, %nyx_string** %1453
  %1455 = load %nyx_string*, %nyx_string** %1437
  %1456 = call i64 @nyx_string_index_of(%nyx_string* %1454, %nyx_string* %1455)
  %1457 = alloca i64
  store i64 %1456, i64* %1457
  %1458 = load i64, i64* %1457
  %1459 = icmp sgt i64 %1458, 0
  br i1 %1459, label %then329, label %else330
then329:
  %1460 = load %nyx_string*, %nyx_string** %1453
  %1461 = load i64, i64* %1457
  %1462 = call %nyx_string* @nyx_string_substring(%nyx_string* %1460, i64 0, i64 %1461)
  %1463 = alloca %nyx_string*
  store %nyx_string* %1462, %nyx_string** %1463
  %1464 = load %nyx_string*, %nyx_string** %1463
  %1465 = load %nyx_string*, %nyx_string** %1319
  %1466 = call i1 @nyx_string_equals(%nyx_string* %1464, %nyx_string* %1465)
  %1467 = xor i1 %1466, true
  br i1 %1467, label %then332, label %else333
then332:
  %1468 = load %nyx_string*, %nyx_string** %1325
  %1469 = load %nyx_string*, %nyx_string** %1440
  %1470 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1469)
  %1471 = load %nyx_string*, %nyx_string** %1453
  %1472 = load i64, i64* %1457
  %1473 = add i64 %1472, 1
  %1474 = load %nyx_string*, %nyx_string** %1453
  %1475 = call i64 @nyx_string_byte_length(%nyx_string* %1474)
  %1476 = call %nyx_string* @nyx_string_substring(%nyx_string* %1471, i64 %1473, i64 %1475)
  %1477 = call %nyx_string* @nyx_string_concat(%nyx_string* %1470, %nyx_string* %1476)
  %1478 = load %nyx_string*, %nyx_string** %1443
  %1479 = call %nyx_string* @nyx_string_concat(%nyx_string* %1477, %nyx_string* %1478)
  store %nyx_string* %1479, %nyx_string** %1325
  br label %merge334
else333:
  br label %merge334
merge334:
  br label %merge331
else330:
  br label %merge331
merge331:
  %1480 = load i64, i64* %1434
  %1481 = add i64 %1480, 1
  store i64 %1481, i64* %1434
  br label %while_cond326
while_end328:
  br label %merge306
else305:
  br label %merge306
merge306:
  %1482 = getelementptr [55 x i8], [55 x i8]* @.str132, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1482, i64 54)
  %1484 = load %nyx_string*, %nyx_string** %1144
  %1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %1483, %nyx_string* %1484)
  %1486 = getelementptr [37 x i8], [37 x i8]* @.str133, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1486, i64 36)
  %1488 = call %nyx_string* @nyx_string_concat(%nyx_string* %1485, %nyx_string* %1487)
  %1489 = load %nyx_string*, %nyx_string** %file.ptr
  %1490 = call %nyx_string* @nyx_string_concat(%nyx_string* %1488, %nyx_string* %1489)
  %1491 = getelementptr [2 x i8], [2 x i8]* @.str134, i32 0, i32 0
  %1492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1491, i64 1)
  %1493 = call %nyx_string* @nyx_string_concat(%nyx_string* %1490, %nyx_string* %1492)
  %1494 = load %nyx_string*, %nyx_string** %1272
  %1495 = call %nyx_string* @nyx_string_concat(%nyx_string* %1493, %nyx_string* %1494)
  %1496 = load %nyx_string*, %nyx_string** %1322
  %1497 = call %nyx_string* @nyx_string_concat(%nyx_string* %1495, %nyx_string* %1496)
  %1498 = getelementptr [22 x i8], [22 x i8]* @.str135, i32 0, i32 0
  %1499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1498, i64 21)
  %1500 = call %nyx_string* @nyx_string_concat(%nyx_string* %1497, %nyx_string* %1499)
  %1501 = load %nyx_string*, %nyx_string** %1159
  %1502 = call %nyx_string* @nyx_string_concat(%nyx_string* %1500, %nyx_string* %1501)
  %1503 = getelementptr [36 x i8], [36 x i8]* @.str136, i32 0, i32 0
  %1504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1503, i64 35)
  %1505 = call %nyx_string* @nyx_string_concat(%nyx_string* %1502, %nyx_string* %1504)
  %1506 = load %nyx_string*, %nyx_string** %1159
  %1507 = call %nyx_string* @nyx_string_concat(%nyx_string* %1505, %nyx_string* %1506)
  %1508 = getelementptr [13 x i8], [13 x i8]* @.str137, i32 0, i32 0
  %1509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1508, i64 12)
  %1510 = call %nyx_string* @nyx_string_concat(%nyx_string* %1507, %nyx_string* %1509)
  %1511 = alloca %nyx_string*
  store %nyx_string* %1510, %nyx_string** %1511
  %1512 = load %nyx_string*, %nyx_string** %1226
  %1513 = load %nyx_string*, %nyx_string** %1511
  %1514 = call %nyx_string* @nyx_string_concat(%nyx_string* %1512, %nyx_string* %1513)
  %1515 = alloca %nyx_string*
  store %nyx_string* %1514, %nyx_string** %1515
  %1516 = getelementptr [15 x i8], [15 x i8]* @.str138, i32 0, i32 0
  %1517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1516, i64 14)
  %1518 = load %nyx_string*, %nyx_string** %1154
  %1519 = call %nyx_string* @nyx_string_concat(%nyx_string* %1517, %nyx_string* %1518)
  %1520 = getelementptr [27 x i8], [27 x i8]* @.str139, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1520, i64 26)
  %1522 = call %nyx_string* @nyx_string_concat(%nyx_string* %1519, %nyx_string* %1521)
  %1523 = alloca %nyx_string*
  store %nyx_string* %1522, %nyx_string** %1523
  %1524 = load %nyx_string*, %nyx_string** %1316
  %1525 = load %nyx_string*, %nyx_string** %1523
  %1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %1524, %nyx_string* %1525)
  %1527 = getelementptr [42 x i8], [42 x i8]* @.str140, i32 0, i32 0
  %1528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1527, i64 41)
  %1529 = call %nyx_string* @nyx_string_concat(%nyx_string* %1526, %nyx_string* %1528)
  %1530 = getelementptr [17 x i8], [17 x i8]* @.str141, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1530, i64 16)
  %1532 = call %nyx_string* @nyx_string_concat(%nyx_string* %1529, %nyx_string* %1531)
  %1533 = getelementptr [31 x i8], [31 x i8]* @.str142, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1533, i64 30)
  %1535 = call %nyx_string* @nyx_string_concat(%nyx_string* %1532, %nyx_string* %1534)
  %1536 = getelementptr [17 x i8], [17 x i8]* @.str143, i32 0, i32 0
  %1537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1536, i64 16)
  %1538 = call %nyx_string* @nyx_string_concat(%nyx_string* %1535, %nyx_string* %1537)
  %1539 = getelementptr [5 x i8], [5 x i8]* @.str144, i32 0, i32 0
  %1540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1539, i64 4)
  %1541 = call %nyx_string* @nyx_string_concat(%nyx_string* %1538, %nyx_string* %1540)
  %1542 = load %nyx_string*, %nyx_string** %1144
  %1543 = call %nyx_string* @nyx_string_concat(%nyx_string* %1541, %nyx_string* %1542)
  %1544 = getelementptr [2 x i8], [2 x i8]* @.str145, i32 0, i32 0
  %1545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1544, i64 1)
  %1546 = call %nyx_string* @nyx_string_concat(%nyx_string* %1543, %nyx_string* %1545)
  %1547 = load %nyx_string*, %nyx_string** %file.ptr
  %1548 = call %nyx_string* @nyx_string_concat(%nyx_string* %1546, %nyx_string* %1547)
  %1549 = getelementptr [12 x i8], [12 x i8]* @.str146, i32 0, i32 0
  %1550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1549, i64 11)
  %1551 = call %nyx_string* @nyx_string_concat(%nyx_string* %1548, %nyx_string* %1550)
  %1552 = getelementptr [5 x i8], [5 x i8]* @.str147, i32 0, i32 0
  %1553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1552, i64 4)
  %1554 = call %nyx_string* @nyx_string_concat(%nyx_string* %1551, %nyx_string* %1553)
  %1555 = load %nyx_string*, %nyx_string** %1122
  %1556 = call %nyx_string* @nyx_string_concat(%nyx_string* %1554, %nyx_string* %1555)
  %1557 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1557, i64 2)
  %1559 = call %nyx_string* @nyx_string_concat(%nyx_string* %1556, %nyx_string* %1558)
  %1560 = getelementptr [51 x i8], [51 x i8]* @.str149, i32 0, i32 0
  %1561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1560, i64 50)
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1559, %nyx_string* %1561)
  %1563 = load %nyx_string*, %nyx_string** %1122
  %1564 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1563)
  %1565 = getelementptr [35 x i8], [35 x i8]* @.str150, i32 0, i32 0
  %1566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1565, i64 34)
  %1567 = call %nyx_string* @nyx_string_concat(%nyx_string* %1564, %nyx_string* %1566)
  %1568 = load %nyx_string*, %nyx_string** %1515
  %1569 = call %nyx_string* @nyx_string_concat(%nyx_string* %1567, %nyx_string* %1568)
  %1570 = getelementptr [7 x i8], [7 x i8]* @.str151, i32 0, i32 0
  %1571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1570, i64 6)
  %1572 = call %nyx_string* @nyx_string_concat(%nyx_string* %1569, %nyx_string* %1571)
  %1573 = load %nyx_string*, %nyx_string** %1167
  %1574 = call %nyx_string* @nyx_string_concat(%nyx_string* %1572, %nyx_string* %1573)
  %1575 = load %nyx_string*, %nyx_string** %1275
  %1576 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1575)
  %1577 = getelementptr [40 x i8], [40 x i8]* @.str152, i32 0, i32 0
  %1578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1577, i64 39)
  %1579 = call %nyx_string* @nyx_string_concat(%nyx_string* %1576, %nyx_string* %1578)
  %1580 = load %nyx_string*, %nyx_string** %1325
  %1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %1579, %nyx_string* %1580)
  %1582 = load %nyx_string*, %nyx_string** %1195
  %1583 = call %nyx_string* @nyx_string_concat(%nyx_string* %1581, %nyx_string* %1582)
  %1584 = getelementptr [44 x i8], [44 x i8]* @.str153, i32 0, i32 0
  %1585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1584, i64 43)
  %1586 = call %nyx_string* @nyx_string_concat(%nyx_string* %1583, %nyx_string* %1585)
  %1587 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1587, i64 3)
  %1589 = call %nyx_string* @nyx_string_concat(%nyx_string* %1586, %nyx_string* %1588)
  %1590 = load %nyx_string*, %nyx_string** %1164
  %1591 = call %nyx_string* @nyx_string_concat(%nyx_string* %1589, %nyx_string* %1590)
  %1592 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1592, i64 5)
  %1594 = call %nyx_string* @nyx_string_concat(%nyx_string* %1591, %nyx_string* %1593)
  %1595 = load %nyx_string*, %nyx_string** %1159
  %1596 = call %nyx_string* @nyx_string_concat(%nyx_string* %1594, %nyx_string* %1595)
  %1597 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1597, i64 1)
  %1599 = call %nyx_string* @nyx_string_concat(%nyx_string* %1596, %nyx_string* %1598)
  %1600 = getelementptr [57 x i8], [57 x i8]* @.str157, i32 0, i32 0
  %1601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1600, i64 56)
  %1602 = call %nyx_string* @nyx_string_concat(%nyx_string* %1599, %nyx_string* %1601)
  %1603 = load %nyx_string*, %nyx_string** %1278
  %1604 = call %nyx_string* @nyx_string_concat(%nyx_string* %1602, %nyx_string* %1603)
  %1605 = getelementptr [9 x i8], [9 x i8]* @.str158, i32 0, i32 0
  %1606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1605, i64 8)
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1604, %nyx_string* %1606)
  %1608 = load %nyx_string*, %nyx_string** %1148
  %1609 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1608)
  %1610 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %1611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1610, i64 1)
  %1612 = call %nyx_string* @nyx_string_concat(%nyx_string* %1609, %nyx_string* %1611)
  %1613 = load %nyx_string*, %nyx_string** %1164
  %1614 = call %nyx_string* @nyx_string_concat(%nyx_string* %1612, %nyx_string* %1613)
  %1615 = getelementptr [4 x i8], [4 x i8]* @.str160, i32 0, i32 0
  %1616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1615, i64 3)
  %1617 = call %nyx_string* @nyx_string_concat(%nyx_string* %1614, %nyx_string* %1616)
  %1618 = load %nyx_string*, %nyx_string** %1159
  %1619 = call %nyx_string* @nyx_string_concat(%nyx_string* %1617, %nyx_string* %1618)
  %1620 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1620, i64 6)
  %1622 = call %nyx_string* @nyx_string_concat(%nyx_string* %1619, %nyx_string* %1621)
  %1623 = getelementptr [14 x i8], [14 x i8]* @.str162, i32 0, i32 0
  %1624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1623, i64 13)
  %1625 = call %nyx_string* @nyx_string_concat(%nyx_string* %1622, %nyx_string* %1624)
  %1626 = getelementptr [7 x i8], [7 x i8]* @.str163, i32 0, i32 0
  %1627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1626, i64 6)
  %1628 = call %nyx_string* @nyx_string_concat(%nyx_string* %1625, %nyx_string* %1627)
  %1629 = load %nyx_string*, %nyx_string** %1164
  %1630 = call %nyx_string* @nyx_string_concat(%nyx_string* %1628, %nyx_string* %1629)
  %1631 = getelementptr [2 x i8], [2 x i8]* @.str164, i32 0, i32 0
  %1632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1631, i64 1)
  %1633 = call %nyx_string* @nyx_string_concat(%nyx_string* %1630, %nyx_string* %1632)
  %1634 = getelementptr [17 x i8], [17 x i8]* @.str165, i32 0, i32 0
  %1635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1634, i64 16)
  %1636 = call %nyx_string* @nyx_string_concat(%nyx_string* %1633, %nyx_string* %1635)
  %1637 = alloca %nyx_string*
  store %nyx_string* %1636, %nyx_string** %1637
  %1638 = load %nyx_string*, %nyx_string** %1154
  %1639 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1639, i64 7)
  %1641 = call %nyx_string* @nyx_string_concat(%nyx_string* %1638, %nyx_string* %1640)
  %1642 = alloca %nyx_string*
  store %nyx_string* %1641, %nyx_string** %1642
  %1643 = load %nyx_string*, %nyx_string** %1642
  %1644 = load %nyx_string*, %nyx_string** %1637
  %1645 = ptrtoint %nyx_string* %1644 to i64
  %1646 = call i8* @nyx_string_to_cstr(%nyx_string* %1643)
  %1647 = inttoptr i64 %1645 to %nyx_string*
  %1648 = call i1 @nyx_write_file_safe(i8* %1646, %nyx_string* %1647)
  %1649 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1649, i64 5)
  %1651 = load %nyx_string*, %nyx_string** %1642
  %1652 = call %nyx_string* @nyx_string_concat(%nyx_string* %1650, %nyx_string* %1651)
  %1653 = call i8* @nyx_string_to_cstr(%nyx_string* %1652)
  %1654 = call i64 @nyx_exec_code(i8* %1653)
  %1655 = alloca i64
  store i64 %1654, i64* %1655
  %1656 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %1657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1656, i64 0)
  %1658 = alloca %nyx_string*
  store %nyx_string* %1657, %nyx_string** %1658
  %1659 = load %nyx_string*, %nyx_string** %1159
  %1660 = call i8* @nyx_string_to_cstr(%nyx_string* %1659)
  %1661 = call i1 @nyx_file_exists(i8* %1660)
  br i1 %1661, label %then335, label %else336
then335:
  %1662 = load %nyx_string*, %nyx_string** %1159
  %1663 = call i8* @nyx_string_to_cstr(%nyx_string* %1662)
  %1664 = call %nyx_string* @nyx_read_file(i8* %1663)
  store %nyx_string* %1664, %nyx_string** %1658
  br label %merge337
else336:
  br label %merge337
merge337:
  %1665 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1665, i64 7)
  %1667 = load %nyx_string*, %nyx_string** %1154
  %1668 = call %nyx_string* @nyx_string_concat(%nyx_string* %1666, %nyx_string* %1667)
  %1669 = call i8* @nyx_string_to_cstr(%nyx_string* %1668)
  %1670 = call %nyx_string* @nyx_exec(i8* %1669)
  %1671 = alloca i64
  store i64 0, i64* %1671
  %1672 = alloca i64
  store i64 0, i64* %1672
  %1673 = load %nyx_string*, %nyx_string** %1658
  %1674 = getelementptr [2 x i8], [2 x i8]* @.str170, i32 0, i32 0
  %1675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1674, i64 1)
  %1676 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1673, %nyx_string* %1675)
  %1677 = alloca { i64, i8* }*
  store { i64, i8* }* %1676, { i64, i8* }** %1677
  %1678 = alloca i64
  store i64 0, i64* %1678
  %1679 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %1680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1679, i64 5)
  %1681 = alloca %nyx_string*
  store %nyx_string* %1680, %nyx_string** %1681
  %1682 = getelementptr [6 x i8], [6 x i8]* @.str172, i32 0, i32 0
  %1683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1682, i64 5)
  %1684 = alloca %nyx_string*
  store %nyx_string* %1683, %nyx_string** %1684
  %1685 = call i8* @llvm.stacksave()
  br label %while_cond338
while_cond338:
  %1686 = load i64, i64* %1678
  %1687 = load { i64, i8* }*, { i64, i8* }** %1677
  %1688 = call i64 @nyx_array_length({ i64, i8* }* %1687)
  %1689 = icmp slt i64 %1686, %1688
  br i1 %1689, label %while_body339, label %while_end340
while_body339:
  call void @llvm.stackrestore(i8* %1685)
  %1690 = load { i64, i8* }*, { i64, i8* }** %1677
  %1691 = load i64, i64* %1678
  %1692 = call i64 @nyx_array_get_checked({ i64, i8* }* %1690, i64 %1691, i64 2)
  %1693 = inttoptr i64 %1692 to %nyx_string*
  %1694 = alloca %nyx_string*
  store %nyx_string* %1693, %nyx_string** %1694
  %1695 = load %nyx_string*, %nyx_string** %1694
  %1696 = load %nyx_string*, %nyx_string** %1681
  %1697 = call i1 @nyx_string_contains(%nyx_string* %1695, %nyx_string* %1696)
  br i1 %1697, label %then341, label %else342
then341:
  %1698 = load i64, i64* %1671
  %1699 = add i64 %1698, 1
  store i64 %1699, i64* %1671
  br label %merge343
else342:
  %1700 = load %nyx_string*, %nyx_string** %1694
  %1701 = load %nyx_string*, %nyx_string** %1684
  %1702 = call i1 @nyx_string_contains(%nyx_string* %1700, %nyx_string* %1701)
  br i1 %1702, label %then344, label %else345
then344:
  %1703 = load i64, i64* %1672
  %1704 = add i64 %1703, 1
  store i64 %1704, i64* %1672
  br label %merge346
else345:
  br label %merge346
merge346:
  br label %merge343
merge343:
  %1705 = load i64, i64* %1678
  %1706 = add i64 %1705, 1
  store i64 %1706, i64* %1678
  br label %while_cond338
while_end340:
  %1707 = getelementptr %TestResult, %TestResult* null, i32 1
  %1708 = ptrtoint %TestResult* %1707 to i64
  %1709 = call i8* @GC_malloc(i64 %1708)
  %1710 = bitcast i8* %1709 to %TestResult*
  %1711 = load %nyx_string*, %nyx_string** %file.ptr
  %1712 = getelementptr %TestResult, %TestResult* %1710, i32 0, i32 0
  store %nyx_string* %1711, %nyx_string** %1712
  %1713 = load i64, i64* %1671
  %1714 = getelementptr %TestResult, %TestResult* %1710, i32 0, i32 1
  store i64 %1713, i64* %1714
  %1715 = load i64, i64* %1672
  %1716 = getelementptr %TestResult, %TestResult* %1710, i32 0, i32 2
  store i64 %1715, i64* %1716
  %1717 = load %nyx_string*, %nyx_string** %1658
  %1718 = getelementptr %TestResult, %TestResult* %1710, i32 0, i32 3
  store %nyx_string* %1717, %nyx_string** %1718
  %1719 = alloca i1
  store i1 false, i1* %1719
  %1720 = load i64, i64* %1655
  %1721 = icmp eq i64 %1720, 0
  br i1 %1721, label %sc_and_rhs347, label %sc_and_end348
sc_and_rhs347:
  %1722 = load i64, i64* %1672
  %1723 = icmp eq i64 %1722, 0
  store i1 %1723, i1* %1719
  br label %sc_and_end348
sc_and_end348:
  %1724 = load i1, i1* %1719
  %1725 = getelementptr %TestResult, %TestResult* %1710, i32 0, i32 4
  store i1 %1724, i1* %1725
  %1726 = load %TestResult, %TestResult* %1710
  ret %TestResult %1726
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1727 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1728 = load i1, i1* %1727
  br i1 %1728, label %then349, label %else350
then349:
  %1729 = getelementptr [9 x i8], [9 x i8]* @.str173, i32 0, i32 0
  %1730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1729, i64 8)
  %1731 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1732 = load %nyx_string*, %nyx_string** %1731
  %1733 = call %nyx_string* @nyx_string_concat(%nyx_string* %1730, %nyx_string* %1732)
  %1734 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1734, i64 2)
  %1736 = call %nyx_string* @nyx_string_concat(%nyx_string* %1733, %nyx_string* %1735)
  %1737 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1738 = load i64, i64* %1737
  %1739 = call %nyx_string* @nyx_string_from_int(i64 %1738)
  %1740 = call %nyx_string* @nyx_string_concat(%nyx_string* %1736, %nyx_string* %1739)
  %1741 = getelementptr [8 x i8], [8 x i8]* @.str175, i32 0, i32 0
  %1742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1741, i64 7)
  %1743 = call %nyx_string* @nyx_string_concat(%nyx_string* %1740, %nyx_string* %1742)
  %1744 = call i8* @nyx_string_to_cstr(%nyx_string* %1743)
  call void @nyx_print_string(i8* %1744)
  %1745 = load i1, i1* %verbose.ptr
  br i1 %1745, label %then352, label %else353
then352:
  %1746 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1747 = load %nyx_string*, %nyx_string** %1746
  %1748 = call i8* @nyx_string_to_cstr(%nyx_string* %1747)
  call void @nyx_print_string(i8* %1748)
  br label %merge354
else353:
  br label %merge354
merge354:
  br label %merge351
else350:
  %1749 = getelementptr [9 x i8], [9 x i8]* @.str176, i32 0, i32 0
  %1750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1749, i64 8)
  %1751 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1752 = load %nyx_string*, %nyx_string** %1751
  %1753 = call %nyx_string* @nyx_string_concat(%nyx_string* %1750, %nyx_string* %1752)
  %1754 = getelementptr [3 x i8], [3 x i8]* @.str177, i32 0, i32 0
  %1755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1754, i64 2)
  %1756 = call %nyx_string* @nyx_string_concat(%nyx_string* %1753, %nyx_string* %1755)
  %1757 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1758 = load i64, i64* %1757
  %1759 = call %nyx_string* @nyx_string_from_int(i64 %1758)
  %1760 = call %nyx_string* @nyx_string_concat(%nyx_string* %1756, %nyx_string* %1759)
  %1761 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %1762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1761, i64 9)
  %1763 = call %nyx_string* @nyx_string_concat(%nyx_string* %1760, %nyx_string* %1762)
  %1764 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1765 = load i64, i64* %1764
  %1766 = call %nyx_string* @nyx_string_from_int(i64 %1765)
  %1767 = call %nyx_string* @nyx_string_concat(%nyx_string* %1763, %nyx_string* %1766)
  %1768 = getelementptr [9 x i8], [9 x i8]* @.str179, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1768, i64 8)
  %1770 = call %nyx_string* @nyx_string_concat(%nyx_string* %1767, %nyx_string* %1769)
  %1771 = call i8* @nyx_string_to_cstr(%nyx_string* %1770)
  call void @nyx_print_string(i8* %1771)
  %1772 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1773 = load %nyx_string*, %nyx_string** %1772
  %1774 = call i8* @nyx_string_to_cstr(%nyx_string* %1773)
  call void @nyx_print_string(i8* %1774)
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
  %1775 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %1776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1775, i64 0)
  %1777 = call i8* @nyx_string_to_cstr(%nyx_string* %1776)
  call void @nyx_print_string(i8* %1777)
  %1778 = getelementptr [36 x i8], [36 x i8]* @.str181, i32 0, i32 0
  %1779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1778, i64 35)
  %1780 = call i8* @nyx_string_to_cstr(%nyx_string* %1779)
  call void @nyx_print_string(i8* %1780)
  %1781 = alloca i64
  store i64 0, i64* %1781
  %1782 = alloca i64
  store i64 0, i64* %1782
  %1783 = alloca i64
  store i64 0, i64* %1783
  %1784 = call i8* @llvm.stacksave()
  br label %while_cond355
while_cond355:
  %1785 = load i64, i64* %1783
  %1786 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1787 = call i64 @nyx_array_length({ i64, i8* }* %1786)
  %1788 = icmp slt i64 %1785, %1787
  br i1 %1788, label %while_body356, label %while_end357
while_body356:
  call void @llvm.stackrestore(i8* %1784)
  %1789 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1790 = load i64, i64* %1783
  %1791 = call i64 @nyx_array_get({ i64, i8* }* %1789, i64 %1790)
  %1792 = inttoptr i64 %1791 to %TestResult*
  %1793 = load %TestResult, %TestResult* %1792
  %1794 = alloca %TestResult
  store %TestResult %1793, %TestResult* %1794
  %1795 = getelementptr %TestResult, %TestResult* %1794, i32 0, i32 4
  %1796 = load i1, i1* %1795
  br i1 %1796, label %then358, label %else359
then358:
  %1797 = load i64, i64* %1781
  %1798 = add i64 %1797, 1
  store i64 %1798, i64* %1781
  br label %merge360
else359:
  %1799 = load i64, i64* %1782
  %1800 = add i64 %1799, 1
  store i64 %1800, i64* %1782
  br label %merge360
merge360:
  %1801 = load i64, i64* %1783
  %1802 = add i64 %1801, 1
  store i64 %1802, i64* %1783
  br label %while_cond355
while_end357:
  %1803 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1803, i64 10)
  %1805 = load i64, i64* %1781
  %1806 = call %nyx_string* @nyx_string_from_int(i64 %1805)
  %1807 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1806)
  %1808 = getelementptr [10 x i8], [10 x i8]* @.str183, i32 0, i32 0
  %1809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1808, i64 9)
  %1810 = call %nyx_string* @nyx_string_concat(%nyx_string* %1807, %nyx_string* %1809)
  %1811 = load i64, i64* %1782
  %1812 = call %nyx_string* @nyx_string_from_int(i64 %1811)
  %1813 = call %nyx_string* @nyx_string_concat(%nyx_string* %1810, %nyx_string* %1812)
  %1814 = getelementptr [10 x i8], [10 x i8]* @.str184, i32 0, i32 0
  %1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1814, i64 9)
  %1816 = call %nyx_string* @nyx_string_concat(%nyx_string* %1813, %nyx_string* %1815)
  %1817 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1818 = call i64 @nyx_array_length({ i64, i8* }* %1817)
  %1819 = call %nyx_string* @nyx_string_from_int(i64 %1818)
  %1820 = call %nyx_string* @nyx_string_concat(%nyx_string* %1816, %nyx_string* %1819)
  %1821 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1821, i64 7)
  %1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %1820, %nyx_string* %1822)
  %1824 = call i8* @nyx_string_to_cstr(%nyx_string* %1823)
  call void @nyx_print_string(i8* %1824)
  %1825 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %1826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1825, i64 10)
  %1827 = load i64, i64* %total_passed.ptr
  %1828 = call %nyx_string* @nyx_string_from_int(i64 %1827)
  %1829 = call %nyx_string* @nyx_string_concat(%nyx_string* %1826, %nyx_string* %1828)
  %1830 = getelementptr [10 x i8], [10 x i8]* @.str187, i32 0, i32 0
  %1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1830, i64 9)
  %1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %1829, %nyx_string* %1831)
  %1833 = load i64, i64* %total_failed.ptr
  %1834 = call %nyx_string* @nyx_string_from_int(i64 %1833)
  %1835 = call %nyx_string* @nyx_string_concat(%nyx_string* %1832, %nyx_string* %1834)
  %1836 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %1837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1836, i64 9)
  %1838 = call %nyx_string* @nyx_string_concat(%nyx_string* %1835, %nyx_string* %1837)
  %1839 = load i64, i64* %total_passed.ptr
  %1840 = load i64, i64* %total_failed.ptr
  %1841 = add i64 %1839, %1840
  %1842 = call %nyx_string* @nyx_string_from_int(i64 %1841)
  %1843 = call %nyx_string* @nyx_string_concat(%nyx_string* %1838, %nyx_string* %1842)
  %1844 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1844, i64 7)
  %1846 = call %nyx_string* @nyx_string_concat(%nyx_string* %1843, %nyx_string* %1845)
  %1847 = call i8* @nyx_string_to_cstr(%nyx_string* %1846)
  call void @nyx_print_string(i8* %1847)
  %1848 = alloca i1
  store i1 false, i1* %1848
  %1849 = load i64, i64* %total_failed.ptr
  %1850 = icmp eq i64 %1849, 0
  br i1 %1850, label %sc_and_rhs361, label %sc_and_end362
sc_and_rhs361:
  %1851 = load i64, i64* %1782
  %1852 = icmp eq i64 %1851, 0
  store i1 %1852, i1* %1848
  br label %sc_and_end362
sc_and_end362:
  %1853 = load i1, i1* %1848
  br i1 %1853, label %then363, label %else364
then363:
  %1854 = getelementptr [27 x i8], [27 x i8]* @.str190, i32 0, i32 0
  %1855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1854, i64 26)
  %1856 = call i8* @nyx_string_to_cstr(%nyx_string* %1855)
  call void @nyx_print_string(i8* %1856)
  br label %merge365
else364:
  %1857 = getelementptr [28 x i8], [28 x i8]* @.str191, i32 0, i32 0
  %1858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1857, i64 27)
  %1859 = call i8* @nyx_string_to_cstr(%nyx_string* %1858)
  call void @nyx_print_string(i8* %1859)
  br label %merge365
merge365:
  %1860 = getelementptr [36 x i8], [36 x i8]* @.str192, i32 0, i32 0
  %1861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1860, i64 35)
  %1862 = call i8* @nyx_string_to_cstr(%nyx_string* %1861)
  call void @nyx_print_string(i8* %1862)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1863 = getelementptr [28 x i8], [28 x i8]* @.str193, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1863, i64 27)
  %1865 = call i8* @nyx_string_to_cstr(%nyx_string* %1864)
  %1866 = call %nyx_string* @nyx_exec(i8* %1865)
  %1867 = alloca %nyx_string*
  store %nyx_string* %1866, %nyx_string** %1867
  %1868 = load %nyx_string*, %nyx_string** %1867
  %1869 = getelementptr [9 x i8], [9 x i8]* @.str194, i32 0, i32 0
  %1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1869, i64 8)
  %1871 = call i64 @nyx_string_index_of(%nyx_string* %1868, %nyx_string* %1870)
  %1872 = alloca i64
  store i64 %1871, i64* %1872
  %1873 = load i64, i64* %1872
  %1874 = icmp slt i64 %1873, 0
  br i1 %1874, label %then366, label %else367
then366:
  %1875 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1875, i64 0)
  ret %nyx_string* %1876
else367:
  br label %merge368
merge368:
  %1877 = load i64, i64* %1872
  %1878 = add i64 %1877, 8
  %1879 = alloca i64
  store i64 %1878, i64* %1879
  %1880 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1880, i64 0)
  %1882 = alloca %nyx_string*
  store %nyx_string* %1881, %nyx_string** %1882
  %1883 = call i8* @llvm.stacksave()
  br label %while_cond369
while_cond369:
  %1884 = load i64, i64* %1879
  %1885 = load %nyx_string*, %nyx_string** %1867
  %1886 = call i64 @nyx_string_byte_length(%nyx_string* %1885)
  %1887 = icmp slt i64 %1884, %1886
  br i1 %1887, label %while_body370, label %while_end371
while_body370:
  call void @llvm.stackrestore(i8* %1883)
  %1888 = load %nyx_string*, %nyx_string** %1867
  %1889 = load i64, i64* %1879
  %1890 = call i8 @nyx_string_char_at(%nyx_string* %1888, i64 %1889)
  %1891 = zext i8 %1890 to i64
  %1892 = alloca i64
  store i64 %1891, i64* %1892
  %1893 = alloca i1
  store i1 false, i1* %1893
  %1894 = load i64, i64* %1892
  %1895 = icmp sge i64 %1894, 48
  br i1 %1895, label %sc_and_rhs372, label %sc_and_end373
sc_and_rhs372:
  %1896 = load i64, i64* %1892
  %1897 = icmp sle i64 %1896, 57
  store i1 %1897, i1* %1893
  br label %sc_and_end373
sc_and_end373:
  %1898 = load i1, i1* %1893
  br i1 %1898, label %then374, label %else375
then374:
  %1899 = load %nyx_string*, %nyx_string** %1882
  %1900 = load %nyx_string*, %nyx_string** %1867
  %1901 = load i64, i64* %1879
  %1902 = load i64, i64* %1879
  %1903 = add i64 %1902, 1
  %1904 = call %nyx_string* @nyx_string_substring(%nyx_string* %1900, i64 %1901, i64 %1903)
  %1905 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1904)
  store %nyx_string* %1905, %nyx_string** %1882
  %1906 = load i64, i64* %1879
  %1907 = add i64 %1906, 1
  store i64 %1907, i64* %1879
  br label %merge376
else375:
  %1908 = load %nyx_string*, %nyx_string** %1867
  %1909 = call i64 @nyx_string_byte_length(%nyx_string* %1908)
  store i64 %1909, i64* %1879
  br label %merge376
merge376:
  br label %while_cond369
while_end371:
  %1910 = load %nyx_string*, %nyx_string** %1882
  ret %nyx_string* %1910
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1911 = getelementptr [10 x i8], [10 x i8]* @.str197, i32 0, i32 0
  %1912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1911, i64 9)
  %1913 = load %nyx_string*, %nyx_string** %path.ptr
  %1914 = call %nyx_string* @nyx_string_concat(%nyx_string* %1912, %nyx_string* %1913)
  %1915 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %1916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1915, i64 1)
  %1917 = call %nyx_string* @nyx_string_concat(%nyx_string* %1914, %nyx_string* %1916)
  %1918 = call i8* @nyx_string_to_cstr(%nyx_string* %1917)
  %1919 = call i64 @nyx_exec_code(i8* %1918)
  %1920 = icmp eq i64 %1919, 0
  ret i1 %1920
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1921 = call %nyx_string* @cov_clang_major()
  %1922 = alloca %nyx_string*
  store %nyx_string* %1921, %nyx_string** %1922
  %1923 = load %nyx_string*, %nyx_string** %1922
  %1924 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1924, i64 0)
  %1926 = call i1 @nyx_string_equals(%nyx_string* %1923, %nyx_string* %1925)
  %1927 = xor i1 %1926, true
  br i1 %1927, label %then377, label %else378
then377:
  %1928 = getelementptr [26 x i8], [26 x i8]* @.str200, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1928, i64 25)
  %1930 = load %nyx_string*, %nyx_string** %1922
  %1931 = call %nyx_string* @nyx_string_concat(%nyx_string* %1929, %nyx_string* %1930)
  %1932 = getelementptr [13 x i8], [13 x i8]* @.str201, i32 0, i32 0
  %1933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1932, i64 12)
  %1934 = call %nyx_string* @nyx_string_concat(%nyx_string* %1931, %nyx_string* %1933)
  %1935 = call i8* @nyx_string_to_cstr(%nyx_string* %1934)
  %1936 = call %nyx_string* @nyx_exec(i8* %1935)
  %1937 = call %nyx_string* @nyx_string_trim(%nyx_string* %1936)
  %1938 = alloca %nyx_string*
  store %nyx_string* %1937, %nyx_string** %1938
  %1939 = load %nyx_string*, %nyx_string** %1938
  %1940 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %1941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1940, i64 0)
  %1942 = call i1 @nyx_string_equals(%nyx_string* %1939, %nyx_string* %1941)
  %1943 = xor i1 %1942, true
  br i1 %1943, label %then380, label %else381
then380:
  %1944 = load %nyx_string*, %nyx_string** %1938
  ret %nyx_string* %1944
else381:
  br label %merge382
merge382:
  br label %merge379
else378:
  br label %merge379
merge379:
  %1945 = getelementptr [37 x i8], [37 x i8]* @.str203, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1945, i64 36)
  %1947 = call i8* @nyx_string_to_cstr(%nyx_string* %1946)
  %1948 = call %nyx_string* @nyx_exec(i8* %1947)
  %1949 = call %nyx_string* @nyx_string_trim(%nyx_string* %1948)
  ret %nyx_string* %1949
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1950 = call { i64, i8* }* @nyx_array_new_ptr()
  %1951 = alloca { i64, i8* }*
  store { i64, i8* }* %1950, { i64, i8* }** %1951
  %1952 = alloca i64
  store i64 0, i64* %1952
  %1953 = alloca i64
  store i64 0, i64* %1953
  %1954 = call i8* @llvm.stacksave()
  br label %while_cond383
while_cond383:
  %1955 = load i64, i64* %1953
  %1956 = load %nyx_string*, %nyx_string** %line.ptr
  %1957 = call i64 @nyx_string_byte_length(%nyx_string* %1956)
  %1958 = icmp slt i64 %1955, %1957
  br i1 %1958, label %while_body384, label %while_end385
while_body384:
  call void @llvm.stackrestore(i8* %1954)
  %1959 = load %nyx_string*, %nyx_string** %line.ptr
  %1960 = load i64, i64* %1953
  %1961 = call i8 @nyx_string_char_at(%nyx_string* %1959, i64 %1960)
  %1962 = zext i8 %1961 to i64
  %1963 = icmp eq i64 %1962, 9
  br i1 %1963, label %then386, label %else387
then386:
  %1964 = load { i64, i8* }*, { i64, i8* }** %1951
  %1965 = load %nyx_string*, %nyx_string** %line.ptr
  %1966 = load i64, i64* %1952
  %1967 = load i64, i64* %1953
  %1968 = call %nyx_string* @nyx_string_substring(%nyx_string* %1965, i64 %1966, i64 %1967)
  %1969 = ptrtoint %nyx_string* %1968 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1964, i64 %1969, i64 2)
  %1970 = load i64, i64* %1953
  %1971 = add i64 %1970, 1
  store i64 %1971, i64* %1952
  br label %merge388
else387:
  br label %merge388
merge388:
  %1972 = load i64, i64* %1953
  %1973 = add i64 %1972, 1
  store i64 %1973, i64* %1953
  br label %while_cond383
while_end385:
  %1974 = load { i64, i8* }*, { i64, i8* }** %1951
  %1975 = load %nyx_string*, %nyx_string** %line.ptr
  %1976 = load i64, i64* %1952
  %1977 = load %nyx_string*, %nyx_string** %line.ptr
  %1978 = call i64 @nyx_string_byte_length(%nyx_string* %1977)
  %1979 = call %nyx_string* @nyx_string_substring(%nyx_string* %1975, i64 %1976, i64 %1978)
  %1980 = ptrtoint %nyx_string* %1979 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1974, i64 %1980, i64 2)
  %1981 = load { i64, i8* }*, { i64, i8* }** %1951
  ret { i64, i8* }* %1981
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1982 = load i64, i64* %n.ptr
  %1983 = call %nyx_string* @nyx_string_from_int(i64 %1982)
  %1984 = alloca %nyx_string*
  store %nyx_string* %1983, %nyx_string** %1984
  %1985 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1985, i64 1)
  %1987 = alloca %nyx_string*
  store %nyx_string* %1986, %nyx_string** %1987
  %1988 = call i8* @llvm.stacksave()
  br label %while_cond389
while_cond389:
  %1989 = load %nyx_string*, %nyx_string** %1984
  %1990 = call i64 @nyx_string_byte_length(%nyx_string* %1989)
  %1991 = icmp slt i64 %1990, 9
  br i1 %1991, label %while_body390, label %while_end391
while_body390:
  call void @llvm.stackrestore(i8* %1988)
  %1992 = load %nyx_string*, %nyx_string** %1987
  %1993 = load %nyx_string*, %nyx_string** %1984
  %1994 = call %nyx_string* @nyx_string_concat(%nyx_string* %1992, %nyx_string* %1993)
  store %nyx_string* %1994, %nyx_string** %1984
  br label %while_cond389
while_end391:
  %1995 = load %nyx_string*, %nyx_string** %1984
  ret %nyx_string* %1995
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1996 = call i8* @nyx_map_new(i32 0)
  %1997 = alloca i8*
  store i8* %1996, i8** %1997
  %1998 = load %nyx_string*, %nyx_string** %show.ptr
  %1999 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %2000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1999, i64 1)
  %2001 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1998, %nyx_string* %2000)
  %2002 = alloca { i64, i8* }*
  store { i64, i8* }* %2001, { i64, i8* }** %2002
  %2003 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %2004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2003, i64 0)
  %2005 = alloca %nyx_string*
  store %nyx_string* %2004, %nyx_string** %2005
  %2006 = alloca i64
  store i64 0, i64* %2006
  %2007 = getelementptr [3 x i8], [3 x i8]* @.str207, i32 0, i32 0
  %2008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2007, i64 2)
  %2009 = alloca %nyx_string*
  store %nyx_string* %2008, %nyx_string** %2009
  %2010 = getelementptr [4 x i8], [4 x i8]* @.str208, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2010, i64 3)
  %2012 = alloca %nyx_string*
  store %nyx_string* %2011, %nyx_string** %2012
  %2013 = getelementptr [2 x i8], [2 x i8]* @.str209, i32 0, i32 0
  %2014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2013, i64 1)
  %2015 = alloca %nyx_string*
  store %nyx_string* %2014, %nyx_string** %2015
  %2016 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2016, i64 1)
  %2018 = alloca %nyx_string*
  store %nyx_string* %2017, %nyx_string** %2018
  %2019 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2019, i64 0)
  %2021 = alloca %nyx_string*
  store %nyx_string* %2020, %nyx_string** %2021
  %2022 = getelementptr [14 x i8], [14 x i8]* @.str212, i32 0, i32 0
  %2023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2022, i64 13)
  %2024 = alloca %nyx_string*
  store %nyx_string* %2023, %nyx_string** %2024
  %2025 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2025, i64 1)
  %2027 = alloca %nyx_string*
  store %nyx_string* %2026, %nyx_string** %2027
  %2028 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2028, i64 1)
  %2030 = alloca %nyx_string*
  store %nyx_string* %2029, %nyx_string** %2030
  %2031 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2031, i64 1)
  %2033 = alloca %nyx_string*
  store %nyx_string* %2032, %nyx_string** %2033
  %2034 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2034, i64 1)
  %2036 = alloca %nyx_string*
  store %nyx_string* %2035, %nyx_string** %2036
  %2037 = call i8* @llvm.stacksave()
  br label %while_cond392
while_cond392:
  %2038 = load i64, i64* %2006
  %2039 = load { i64, i8* }*, { i64, i8* }** %2002
  %2040 = call i64 @nyx_array_length({ i64, i8* }* %2039)
  %2041 = icmp slt i64 %2038, %2040
  br i1 %2041, label %while_body393, label %while_end394
while_body393:
  call void @llvm.stackrestore(i8* %2037)
  %2042 = load { i64, i8* }*, { i64, i8* }** %2002
  %2043 = load i64, i64* %2006
  %2044 = call i64 @nyx_array_get_checked({ i64, i8* }* %2042, i64 %2043, i64 2)
  %2045 = inttoptr i64 %2044 to %nyx_string*
  %2046 = alloca %nyx_string*
  store %nyx_string* %2045, %nyx_string** %2046
  %2047 = alloca i1
  store i1 false, i1* %2047
  %2048 = alloca i1
  store i1 false, i1* %2048
  %2049 = load %nyx_string*, %nyx_string** %2046
  %2050 = load %nyx_string*, %nyx_string** %2009
  %2051 = call i1 @nyx_string_starts_with(%nyx_string* %2049, %nyx_string* %2050)
  br i1 %2051, label %sc_and_rhs395, label %sc_and_end396
sc_and_rhs395:
  %2052 = load %nyx_string*, %nyx_string** %2046
  %2053 = load %nyx_string*, %nyx_string** %2012
  %2054 = call i1 @nyx_string_starts_with(%nyx_string* %2052, %nyx_string* %2053)
  %2055 = xor i1 %2054, true
  store i1 %2055, i1* %2048
  br label %sc_and_end396
sc_and_end396:
  %2056 = load i1, i1* %2048
  br i1 %2056, label %sc_and_rhs397, label %sc_and_end398
sc_and_rhs397:
  %2057 = load %nyx_string*, %nyx_string** %2046
  %2058 = load %nyx_string*, %nyx_string** %2015
  %2059 = call i1 @nyx_string_ends_with(%nyx_string* %2057, %nyx_string* %2058)
  store i1 %2059, i1* %2047
  br label %sc_and_end398
sc_and_end398:
  %2060 = load i1, i1* %2047
  br i1 %2060, label %then399, label %else400
then399:
  %2061 = load %nyx_string*, %nyx_string** %2046
  %2062 = load %nyx_string*, %nyx_string** %2046
  %2063 = call i64 @nyx_string_byte_length(%nyx_string* %2062)
  %2064 = sub i64 %2063, 1
  %2065 = call %nyx_string* @nyx_string_substring(%nyx_string* %2061, i64 2, i64 %2064)
  %2066 = alloca %nyx_string*
  store %nyx_string* %2065, %nyx_string** %2066
  %2067 = load %nyx_string*, %nyx_string** %2066
  %2068 = load %nyx_string*, %nyx_string** %2018
  %2069 = call i64 @nyx_string_index_of(%nyx_string* %2067, %nyx_string* %2068)
  %2070 = alloca i64
  store i64 %2069, i64* %2070
  %2071 = load i64, i64* %2070
  %2072 = icmp sge i64 %2071, 0
  br i1 %2072, label %then402, label %else403
then402:
  %2073 = load %nyx_string*, %nyx_string** %2066
  %2074 = load i64, i64* %2070
  %2075 = add i64 %2074, 1
  %2076 = load %nyx_string*, %nyx_string** %2066
  %2077 = call i64 @nyx_string_byte_length(%nyx_string* %2076)
  %2078 = call %nyx_string* @nyx_string_substring(%nyx_string* %2073, i64 %2075, i64 %2077)
  store %nyx_string* %2078, %nyx_string** %2066
  br label %merge404
else403:
  br label %merge404
merge404:
  %2079 = load %nyx_string*, %nyx_string** %2066
  store %nyx_string* %2079, %nyx_string** %2005
  br label %merge401
else400:
  %2080 = alloca i1
  store i1 false, i1* %2080
  %2081 = load %nyx_string*, %nyx_string** %2005
  %2082 = load %nyx_string*, %nyx_string** %2021
  %2083 = call i1 @nyx_string_equals(%nyx_string* %2081, %nyx_string* %2082)
  %2084 = xor i1 %2083, true
  br i1 %2084, label %sc_and_rhs405, label %sc_and_end406
sc_and_rhs405:
  %2085 = load %nyx_string*, %nyx_string** %2046
  %2086 = load %nyx_string*, %nyx_string** %2024
  %2087 = call i1 @nyx_string_contains(%nyx_string* %2085, %nyx_string* %2086)
  store i1 %2087, i1* %2080
  br label %sc_and_end406
sc_and_end406:
  %2088 = load i1, i1* %2080
  br i1 %2088, label %then407, label %else408
then407:
  %2089 = load %nyx_string*, %nyx_string** %2046
  %2090 = load %nyx_string*, %nyx_string** %2027
  %2091 = call i64 @nyx_string_index_of(%nyx_string* %2089, %nyx_string* %2090)
  %2092 = alloca i64
  store i64 %2091, i64* %2092
  %2093 = load %nyx_string*, %nyx_string** %2046
  %2094 = load %nyx_string*, %nyx_string** %2030
  %2095 = call i64 @nyx_string_index_of(%nyx_string* %2093, %nyx_string* %2094)
  %2096 = alloca i64
  store i64 %2095, i64* %2096
  %2097 = alloca i1
  store i1 false, i1* %2097
  %2098 = load i64, i64* %2092
  %2099 = icmp sge i64 %2098, 0
  br i1 %2099, label %sc_and_rhs410, label %sc_and_end411
sc_and_rhs410:
  %2100 = load i64, i64* %2096
  %2101 = load i64, i64* %2092
  %2102 = icmp sgt i64 %2100, %2101
  store i1 %2102, i1* %2097
  br label %sc_and_end411
sc_and_end411:
  %2103 = load i1, i1* %2097
  br i1 %2103, label %then412, label %else413
then412:
  %2104 = load %nyx_string*, %nyx_string** %2046
  %2105 = load i64, i64* %2092
  %2106 = add i64 %2105, 1
  %2107 = load i64, i64* %2096
  %2108 = call %nyx_string* @nyx_string_substring(%nyx_string* %2104, i64 %2106, i64 %2107)
  %2109 = load %nyx_string*, %nyx_string** %2033
  %2110 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2108, %nyx_string* %2109)
  %2111 = alloca { i64, i8* }*
  store { i64, i8* }* %2110, { i64, i8* }** %2111
  %2112 = alloca i64
  store i64 0, i64* %2112
  %2113 = call i8* @llvm.stacksave()
  br label %while_cond415
while_cond415:
  %2114 = load i64, i64* %2112
  %2115 = load { i64, i8* }*, { i64, i8* }** %2111
  %2116 = call i64 @nyx_array_length({ i64, i8* }* %2115)
  %2117 = icmp slt i64 %2114, %2116
  br i1 %2117, label %while_body416, label %while_end417
while_body416:
  call void @llvm.stackrestore(i8* %2113)
  %2118 = load { i64, i8* }*, { i64, i8* }** %2111
  %2119 = load i64, i64* %2112
  %2120 = call i64 @nyx_array_get_checked({ i64, i8* }* %2118, i64 %2119, i64 2)
  %2121 = inttoptr i64 %2120 to %nyx_string*
  %2122 = alloca %nyx_string*
  store %nyx_string* %2121, %nyx_string** %2122
  %2123 = load %nyx_string*, %nyx_string** %2122
  %2124 = call %nyx_string* @nyx_string_trim(%nyx_string* %2123)
  %2125 = call i64 @nyx_string_to_int(%nyx_string* %2124)
  %2126 = icmp sgt i64 %2125, 0
  br i1 %2126, label %then418, label %else419
then418:
  %2127 = load i8*, i8** %1997
  %2128 = load %nyx_string*, %nyx_string** %2005
  %2129 = load %nyx_string*, %nyx_string** %2036
  %2130 = call i8* @nyx_string_to_cstr(%nyx_string* %2128)
  %2131 = call i8* @nyx_string_to_cstr(%nyx_string* %2129)
  call void @nyx_map_insert_str(i8* %2127, i8* %2130, i8* %2131)
  br label %merge420
else419:
  br label %merge420
merge420:
  %2132 = load i64, i64* %2112
  %2133 = add i64 %2132, 1
  store i64 %2133, i64* %2112
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
  %2134 = load i64, i64* %2006
  %2135 = add i64 %2134, 1
  store i64 %2135, i64* %2006
  br label %while_cond392
while_end394:
  %2136 = load i8*, i8** %1997
  ret i8* %2136
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2137 = call { i64, i8* }* @nyx_array_new_ptr()
  %2138 = alloca { i64, i8* }*
  store { i64, i8* }* %2137, { i64, i8* }** %2138
  %2139 = getelementptr [4 x i8], [4 x i8]* @.str217, i32 0, i32 0
  %2140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2139, i64 3)
  %2141 = call i8* @nyx_string_to_cstr(%nyx_string* %2140)
  %2142 = call i1 @nyx_file_exists(i8* %2141)
  %2143 = xor i1 %2142, true
  br i1 %2143, label %then421, label %else422
then421:
  %2144 = load { i64, i8* }*, { i64, i8* }** %2138
  ret { i64, i8* }* %2144
else422:
  br label %merge423
merge423:
  %2145 = getelementptr [50 x i8], [50 x i8]* @.str218, i32 0, i32 0
  %2146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2145, i64 49)
  %2147 = call i8* @nyx_string_to_cstr(%nyx_string* %2146)
  %2148 = call %nyx_string* @nyx_exec(i8* %2147)
  %2149 = alloca %nyx_string*
  store %nyx_string* %2148, %nyx_string** %2149
  %2150 = load %nyx_string*, %nyx_string** %2149
  %2151 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %2152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2151, i64 1)
  %2153 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2150, %nyx_string* %2152)
  %2154 = alloca { i64, i8* }*
  store { i64, i8* }* %2153, { i64, i8* }** %2154
  %2155 = alloca i64
  store i64 0, i64* %2155
  %2156 = getelementptr [4 x i8], [4 x i8]* @.str220, i32 0, i32 0
  %2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2156, i64 3)
  %2158 = alloca %nyx_string*
  store %nyx_string* %2157, %nyx_string** %2158
  %2159 = getelementptr [9 x i8], [9 x i8]* @.str221, i32 0, i32 0
  %2160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2159, i64 8)
  %2161 = alloca %nyx_string*
  store %nyx_string* %2160, %nyx_string** %2161
  %2162 = call i8* @llvm.stacksave()
  br label %while_cond424
while_cond424:
  %2163 = load i64, i64* %2155
  %2164 = load { i64, i8* }*, { i64, i8* }** %2154
  %2165 = call i64 @nyx_array_length({ i64, i8* }* %2164)
  %2166 = icmp slt i64 %2163, %2165
  br i1 %2166, label %while_body425, label %while_end426
while_body425:
  call void @llvm.stackrestore(i8* %2162)
  %2167 = load { i64, i8* }*, { i64, i8* }** %2154
  %2168 = load i64, i64* %2155
  %2169 = call i64 @nyx_array_get_checked({ i64, i8* }* %2167, i64 %2168, i64 2)
  %2170 = inttoptr i64 %2169 to %nyx_string*
  %2171 = alloca %nyx_string*
  store %nyx_string* %2170, %nyx_string** %2171
  %2172 = load %nyx_string*, %nyx_string** %2171
  %2173 = call %nyx_string* @nyx_string_trim(%nyx_string* %2172)
  %2174 = alloca %nyx_string*
  store %nyx_string* %2173, %nyx_string** %2174
  %2175 = alloca i1
  store i1 false, i1* %2175
  %2176 = load %nyx_string*, %nyx_string** %2174
  %2177 = load %nyx_string*, %nyx_string** %2158
  %2178 = call i1 @nyx_string_ends_with(%nyx_string* %2176, %nyx_string* %2177)
  br i1 %2178, label %sc_and_rhs427, label %sc_and_end428
sc_and_rhs427:
  %2179 = load %nyx_string*, %nyx_string** %2174
  %2180 = load %nyx_string*, %nyx_string** %2161
  %2181 = call i1 @nyx_string_ends_with(%nyx_string* %2179, %nyx_string* %2180)
  %2182 = xor i1 %2181, true
  store i1 %2182, i1* %2175
  br label %sc_and_end428
sc_and_end428:
  %2183 = load i1, i1* %2175
  br i1 %2183, label %then429, label %else430
then429:
  %2184 = load { i64, i8* }*, { i64, i8* }** %2138
  %2185 = load %nyx_string*, %nyx_string** %2174
  %2186 = load %nyx_string*, %nyx_string** %2174
  %2187 = call i64 @nyx_string_byte_length(%nyx_string* %2186)
  %2188 = sub i64 %2187, 3
  %2189 = call %nyx_string* @nyx_string_substring(%nyx_string* %2185, i64 0, i64 %2188)
  %2190 = ptrtoint %nyx_string* %2189 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2184, i64 %2190, i64 2)
  br label %merge431
else430:
  br label %merge431
merge431:
  %2191 = load i64, i64* %2155
  %2192 = add i64 %2191, 1
  store i64 %2192, i64* %2155
  br label %while_cond424
while_end426:
  %2193 = load { i64, i8* }*, { i64, i8* }** %2138
  ret { i64, i8* }* %2193
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
  %2194 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %2195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2194, i64 0)
  %2196 = alloca %nyx_string*
  store %nyx_string* %2195, %nyx_string** %2196
  %2197 = alloca i64
  store i64 0, i64* %2197
  %2198 = getelementptr [9 x i8], [9 x i8]* @.str223, i32 0, i32 0
  %2199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2198, i64 8)
  %2200 = alloca %nyx_string*
  store %nyx_string* %2199, %nyx_string** %2200
  %2201 = getelementptr [3 x i8], [3 x i8]* @.str224, i32 0, i32 0
  %2202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2201, i64 2)
  %2203 = alloca %nyx_string*
  store %nyx_string* %2202, %nyx_string** %2203
  %2204 = call i8* @llvm.stacksave()
  br label %while_cond432
while_cond432:
  %2205 = load i64, i64* %2197
  %2206 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2207 = call i64 @nyx_array_length({ i64, i8* }* %2206)
  %2208 = icmp slt i64 %2205, %2207
  br i1 %2208, label %while_body433, label %while_end434
while_body433:
  call void @llvm.stackrestore(i8* %2204)
  %2209 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2210 = load i64, i64* %2197
  %2211 = call i64 @nyx_array_get_checked({ i64, i8* }* %2209, i64 %2210, i64 2)
  %2212 = inttoptr i64 %2211 to %nyx_string*
  %2213 = alloca %nyx_string*
  store %nyx_string* %2212, %nyx_string** %2213
  %2214 = load %nyx_string*, %nyx_string** %2196
  %2215 = load %nyx_string*, %nyx_string** %2200
  %2216 = call %nyx_string* @nyx_string_concat(%nyx_string* %2214, %nyx_string* %2215)
  %2217 = load %nyx_string*, %nyx_string** %2213
  %2218 = call %nyx_string* @nyx_string_concat(%nyx_string* %2216, %nyx_string* %2217)
  %2219 = load %nyx_string*, %nyx_string** %2203
  %2220 = call %nyx_string* @nyx_string_concat(%nyx_string* %2218, %nyx_string* %2219)
  store %nyx_string* %2220, %nyx_string** %2196
  %2221 = load i64, i64* %2197
  %2222 = add i64 %2221, 1
  store i64 %2222, i64* %2197
  br label %while_cond432
while_end434:
  %2223 = load %nyx_string*, %nyx_string** %2196
  %2224 = getelementptr [36 x i8], [36 x i8]* @.str225, i32 0, i32 0
  %2225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2224, i64 35)
  %2226 = call %nyx_string* @nyx_string_concat(%nyx_string* %2223, %nyx_string* %2225)
  store %nyx_string* %2226, %nyx_string** %2196
  %2227 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2228 = getelementptr [13 x i8], [13 x i8]* @.str226, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2228, i64 12)
  %2230 = call %nyx_string* @nyx_string_concat(%nyx_string* %2227, %nyx_string* %2229)
  %2231 = load %nyx_string*, %nyx_string** %2196
  %2232 = ptrtoint %nyx_string* %2231 to i64
  %2233 = call i8* @nyx_string_to_cstr(%nyx_string* %2230)
  %2234 = inttoptr i64 %2232 to %nyx_string*
  %2235 = call i1 @nyx_write_file_safe(i8* %2233, %nyx_string* %2234)
  %2236 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2237 = getelementptr [14 x i8], [14 x i8]* @.str227, i32 0, i32 0
  %2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2237, i64 13)
  %2239 = call %nyx_string* @nyx_string_concat(%nyx_string* %2236, %nyx_string* %2238)
  %2240 = alloca %nyx_string*
  store %nyx_string* %2239, %nyx_string** %2240
  %2241 = getelementptr [13 x i8], [13 x i8]* @.str228, i32 0, i32 0
  %2242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2241, i64 12)
  %2243 = getelementptr [8 x i8], [8 x i8]* @.str229, i32 0, i32 0
  %2244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2243, i64 7)
  %2245 = call %nyx_string* @nyx_string_concat(%nyx_string* %2242, %nyx_string* %2244)
  %2246 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2247 = call %nyx_string* @nyx_string_concat(%nyx_string* %2245, %nyx_string* %2246)
  %2248 = getelementptr [19 x i8], [19 x i8]* @.str230, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2248, i64 18)
  %2250 = call %nyx_string* @nyx_string_concat(%nyx_string* %2247, %nyx_string* %2249)
  %2251 = getelementptr [5 x i8], [5 x i8]* @.str231, i32 0, i32 0
  %2252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2251, i64 4)
  %2253 = call %nyx_string* @nyx_string_concat(%nyx_string* %2250, %nyx_string* %2252)
  %2254 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2255 = call %nyx_string* @nyx_string_concat(%nyx_string* %2253, %nyx_string* %2254)
  %2256 = getelementptr [24 x i8], [24 x i8]* @.str232, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2256, i64 23)
  %2258 = call %nyx_string* @nyx_string_concat(%nyx_string* %2255, %nyx_string* %2257)
  %2259 = getelementptr [5 x i8], [5 x i8]* @.str233, i32 0, i32 0
  %2260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2259, i64 4)
  %2261 = call %nyx_string* @nyx_string_concat(%nyx_string* %2258, %nyx_string* %2260)
  %2262 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2261, %nyx_string* %2262)
  %2264 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2264, i64 2)
  %2266 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2265)
  %2267 = getelementptr [137 x i8], [137 x i8]* @.str235, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2267, i64 136)
  %2269 = call %nyx_string* @nyx_string_concat(%nyx_string* %2266, %nyx_string* %2268)
  %2270 = getelementptr [43 x i8], [43 x i8]* @.str236, i32 0, i32 0
  %2271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2270, i64 42)
  %2272 = call %nyx_string* @nyx_string_concat(%nyx_string* %2269, %nyx_string* %2271)
  %2273 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2274 = call %nyx_string* @nyx_string_concat(%nyx_string* %2272, %nyx_string* %2273)
  %2275 = getelementptr [38 x i8], [38 x i8]* @.str237, i32 0, i32 0
  %2276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2275, i64 37)
  %2277 = call %nyx_string* @nyx_string_concat(%nyx_string* %2274, %nyx_string* %2276)
  %2278 = load %nyx_string*, %nyx_string** %2240
  %2279 = call %nyx_string* @nyx_string_concat(%nyx_string* %2277, %nyx_string* %2278)
  %2280 = getelementptr [24 x i8], [24 x i8]* @.str238, i32 0, i32 0
  %2281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2280, i64 23)
  %2282 = call %nyx_string* @nyx_string_concat(%nyx_string* %2279, %nyx_string* %2281)
  %2283 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2284 = call %nyx_string* @nyx_string_concat(%nyx_string* %2282, %nyx_string* %2283)
  %2285 = getelementptr [21 x i8], [21 x i8]* @.str239, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2285, i64 20)
  %2287 = call %nyx_string* @nyx_string_concat(%nyx_string* %2284, %nyx_string* %2286)
  %2288 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %2289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2288, i64 6)
  %2290 = call %nyx_string* @nyx_string_concat(%nyx_string* %2287, %nyx_string* %2289)
  %2291 = getelementptr [17 x i8], [17 x i8]* @.str241, i32 0, i32 0
  %2292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2291, i64 16)
  %2293 = call %nyx_string* @nyx_string_concat(%nyx_string* %2290, %nyx_string* %2292)
  %2294 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2295 = call %nyx_string* @nyx_string_concat(%nyx_string* %2293, %nyx_string* %2294)
  %2296 = getelementptr [19 x i8], [19 x i8]* @.str242, i32 0, i32 0
  %2297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2296, i64 18)
  %2298 = call %nyx_string* @nyx_string_concat(%nyx_string* %2295, %nyx_string* %2297)
  %2299 = getelementptr [10 x i8], [10 x i8]* @.str243, i32 0, i32 0
  %2300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2299, i64 9)
  %2301 = call %nyx_string* @nyx_string_concat(%nyx_string* %2298, %nyx_string* %2300)
  %2302 = alloca %nyx_string*
  store %nyx_string* %2301, %nyx_string** %2302
  %2303 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2304 = getelementptr [13 x i8], [13 x i8]* @.str244, i32 0, i32 0
  %2305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2304, i64 12)
  %2306 = call %nyx_string* @nyx_string_concat(%nyx_string* %2303, %nyx_string* %2305)
  %2307 = load %nyx_string*, %nyx_string** %2302
  %2308 = ptrtoint %nyx_string* %2307 to i64
  %2309 = call i8* @nyx_string_to_cstr(%nyx_string* %2306)
  %2310 = inttoptr i64 %2308 to %nyx_string*
  %2311 = call i1 @nyx_write_file_safe(i8* %2309, %nyx_string* %2310)
  %2312 = getelementptr [7 x i8], [7 x i8]* @.str245, i32 0, i32 0
  %2313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2312, i64 6)
  %2314 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2315 = call %nyx_string* @nyx_string_concat(%nyx_string* %2313, %nyx_string* %2314)
  %2316 = getelementptr [14 x i8], [14 x i8]* @.str246, i32 0, i32 0
  %2317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2316, i64 13)
  %2318 = call %nyx_string* @nyx_string_concat(%nyx_string* %2315, %nyx_string* %2317)
  %2319 = call i8* @nyx_string_to_cstr(%nyx_string* %2318)
  %2320 = call i64 @nyx_exec_code(i8* %2319)
  %2321 = load %nyx_string*, %nyx_string** %2240
  ret %nyx_string* %2321
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
  %2322 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2322, i64 8)
  %2324 = call i8* @nyx_string_to_cstr(%nyx_string* %2323)
  %2325 = call %nyx_string* @nyx_getenv(i8* %2324)
  %2326 = alloca %nyx_string*
  store %nyx_string* %2325, %nyx_string** %2326
  %2327 = getelementptr [4 x i8], [4 x i8]* @.str248, i32 0, i32 0
  %2328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2327, i64 3)
  %2329 = call i8* @nyx_string_to_cstr(%nyx_string* %2328)
  %2330 = call %nyx_string* @nyx_getenv(i8* %2329)
  %2331 = alloca %nyx_string*
  store %nyx_string* %2330, %nyx_string** %2331
  %2332 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %2333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2332, i64 0)
  %2334 = call i8* @nyx_string_to_cstr(%nyx_string* %2333)
  call void @nyx_print_string(i8* %2334)
  %2335 = getelementptr [36 x i8], [36 x i8]* @.str250, i32 0, i32 0
  %2336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2335, i64 35)
  %2337 = call i8* @nyx_string_to_cstr(%nyx_string* %2336)
  call void @nyx_print_string(i8* %2337)
  %2338 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2338, i64 0)
  %2340 = alloca %nyx_string*
  store %nyx_string* %2339, %nyx_string** %2340
  %2341 = alloca i64
  store i64 0, i64* %2341
  %2342 = call i8* @nyx_map_new(i32 0)
  %2343 = alloca i8*
  store i8* %2342, i8** %2343
  %2344 = call { i64, i8* }* @nyx_array_new_ptr()
  %2345 = alloca { i64, i8* }*
  store { i64, i8* }* %2344, { i64, i8* }** %2345
  %2346 = alloca i64
  store i64 0, i64* %2346
  %2347 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2347, i64 1)
  %2349 = alloca %nyx_string*
  store %nyx_string* %2348, %nyx_string** %2349
  %2350 = getelementptr [9 x i8], [9 x i8]* @.str253, i32 0, i32 0
  %2351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2350, i64 8)
  %2352 = alloca %nyx_string*
  store %nyx_string* %2351, %nyx_string** %2352
  %2353 = getelementptr [3 x i8], [3 x i8]* @.str254, i32 0, i32 0
  %2354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2353, i64 2)
  %2355 = alloca %nyx_string*
  store %nyx_string* %2354, %nyx_string** %2355
  %2356 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2356, i64 1)
  %2358 = alloca %nyx_string*
  store %nyx_string* %2357, %nyx_string** %2358
  %2359 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2359, i64 1)
  %2361 = alloca %nyx_string*
  store %nyx_string* %2360, %nyx_string** %2361
  %2362 = call i8* @llvm.stacksave()
  br label %while_cond435
while_cond435:
  %2363 = load i64, i64* %2346
  %2364 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2365 = call i64 @nyx_array_length({ i64, i8* }* %2364)
  %2366 = icmp slt i64 %2363, %2365
  br i1 %2366, label %while_body436, label %while_end437
while_body436:
  call void @llvm.stackrestore(i8* %2362)
  %2367 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2368 = load i64, i64* %2346
  %2369 = call i64 @nyx_array_get_checked({ i64, i8* }* %2367, i64 %2368, i64 2)
  %2370 = inttoptr i64 %2369 to %nyx_string*
  %2371 = alloca %nyx_string*
  store %nyx_string* %2370, %nyx_string** %2371
  %2372 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2373 = load i64, i64* %2346
  %2374 = call i64 @nyx_array_get_checked({ i64, i8* }* %2372, i64 %2373, i64 2)
  %2375 = inttoptr i64 %2374 to %nyx_string*
  %2376 = alloca %nyx_string*
  store %nyx_string* %2375, %nyx_string** %2376
  %2377 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2378 = load %nyx_string*, %nyx_string** %2349
  %2379 = call %nyx_string* @nyx_string_concat(%nyx_string* %2377, %nyx_string* %2378)
  %2380 = load %nyx_string*, %nyx_string** %2371
  %2381 = call %nyx_string* @nyx_string_concat(%nyx_string* %2379, %nyx_string* %2380)
  %2382 = load %nyx_string*, %nyx_string** %2352
  %2383 = call %nyx_string* @nyx_string_concat(%nyx_string* %2381, %nyx_string* %2382)
  %2384 = alloca %nyx_string*
  store %nyx_string* %2383, %nyx_string** %2384
  %2385 = load %nyx_string*, %nyx_string** %2384
  %2386 = call i1 @cov_profraw_valid(%nyx_string* %2385)
  br i1 %2386, label %then438, label %else439
then438:
  %2387 = load %nyx_string*, %nyx_string** %2340
  %2388 = load %nyx_string*, %nyx_string** %2355
  %2389 = call %nyx_string* @nyx_string_concat(%nyx_string* %2387, %nyx_string* %2388)
  %2390 = load %nyx_string*, %nyx_string** %2384
  %2391 = call %nyx_string* @nyx_string_concat(%nyx_string* %2389, %nyx_string* %2390)
  %2392 = load %nyx_string*, %nyx_string** %2358
  %2393 = call %nyx_string* @nyx_string_concat(%nyx_string* %2391, %nyx_string* %2392)
  store %nyx_string* %2393, %nyx_string** %2340
  %2394 = load i64, i64* %2341
  %2395 = add i64 %2394, 1
  store i64 %2395, i64* %2341
  %2396 = load i8*, i8** %2343
  %2397 = load %nyx_string*, %nyx_string** %2371
  %2398 = load %nyx_string*, %nyx_string** %2361
  %2399 = call i8* @nyx_string_to_cstr(%nyx_string* %2397)
  %2400 = call i8* @nyx_string_to_cstr(%nyx_string* %2398)
  call void @nyx_map_insert_str(i8* %2396, i8* %2399, i8* %2400)
  br label %merge440
else439:
  %2401 = load { i64, i8* }*, { i64, i8* }** %2345
  %2402 = load %nyx_string*, %nyx_string** %2376
  %2403 = ptrtoint %nyx_string* %2402 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2401, i64 %2403, i64 2)
  br label %merge440
merge440:
  %2404 = load i64, i64* %2346
  %2405 = add i64 %2404, 1
  store i64 %2405, i64* %2346
  br label %while_cond435
while_end437:
  %2406 = call i8* @nyx_map_new(i32 0)
  %2407 = alloca i8*
  store i8* %2406, i8** %2407
  %2408 = load i64, i64* %2341
  %2409 = icmp sgt i64 %2408, 0
  br i1 %2409, label %then441, label %else442
then441:
  %2410 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2411 = getelementptr [17 x i8], [17 x i8]* @.str257, i32 0, i32 0
  %2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2411, i64 16)
  %2413 = call %nyx_string* @nyx_string_concat(%nyx_string* %2410, %nyx_string* %2412)
  %2414 = alloca %nyx_string*
  store %nyx_string* %2413, %nyx_string** %2414
  %2415 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2416 = getelementptr [12 x i8], [12 x i8]* @.str258, i32 0, i32 0
  %2417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2416, i64 11)
  %2418 = call %nyx_string* @nyx_string_concat(%nyx_string* %2415, %nyx_string* %2417)
  %2419 = load %nyx_string*, %nyx_string** %2414
  %2420 = call %nyx_string* @nyx_string_concat(%nyx_string* %2418, %nyx_string* %2419)
  %2421 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2421, i64 1)
  %2423 = call %nyx_string* @nyx_string_concat(%nyx_string* %2420, %nyx_string* %2422)
  %2424 = load %nyx_string*, %nyx_string** %2340
  %2425 = call %nyx_string* @nyx_string_concat(%nyx_string* %2423, %nyx_string* %2424)
  %2426 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %2427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2426, i64 4)
  %2428 = call %nyx_string* @nyx_string_concat(%nyx_string* %2425, %nyx_string* %2427)
  %2429 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2430 = call %nyx_string* @nyx_string_concat(%nyx_string* %2428, %nyx_string* %2429)
  %2431 = getelementptr [17 x i8], [17 x i8]* @.str261, i32 0, i32 0
  %2432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2431, i64 16)
  %2433 = call %nyx_string* @nyx_string_concat(%nyx_string* %2430, %nyx_string* %2432)
  %2434 = call i8* @nyx_string_to_cstr(%nyx_string* %2433)
  %2435 = call i64 @nyx_exec_code(i8* %2434)
  %2436 = alloca i64
  store i64 %2435, i64* %2436
  %2437 = load i64, i64* %2436
  %2438 = icmp ne i64 %2437, 0
  br i1 %2438, label %then444, label %else445
then444:
  %2439 = getelementptr [36 x i8], [36 x i8]* @.str262, i32 0, i32 0
  %2440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2439, i64 35)
  %2441 = call i8* @nyx_string_to_cstr(%nyx_string* %2440)
  call void @nyx_print_string(i8* %2441)
  %2442 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2443 = getelementptr [11 x i8], [11 x i8]* @.str263, i32 0, i32 0
  %2444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2443, i64 10)
  %2445 = call %nyx_string* @nyx_string_concat(%nyx_string* %2442, %nyx_string* %2444)
  %2446 = call i8* @nyx_string_to_cstr(%nyx_string* %2445)
  %2447 = call %nyx_string* @nyx_read_file(i8* %2446)
  %2448 = call i8* @nyx_string_to_cstr(%nyx_string* %2447)
  call void @nyx_print_string(i8* %2448)
  ret i64 1
else445:
  br label %merge446
merge446:
  %2449 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2450 = getelementptr [33 x i8], [33 x i8]* @.str264, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2450, i64 32)
  %2452 = call %nyx_string* @nyx_string_concat(%nyx_string* %2449, %nyx_string* %2451)
  %2453 = load %nyx_string*, %nyx_string** %2414
  %2454 = call %nyx_string* @nyx_string_concat(%nyx_string* %2452, %nyx_string* %2453)
  %2455 = getelementptr [6 x i8], [6 x i8]* @.str265, i32 0, i32 0
  %2456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2455, i64 5)
  %2457 = call %nyx_string* @nyx_string_concat(%nyx_string* %2454, %nyx_string* %2456)
  %2458 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2459 = call %nyx_string* @nyx_string_concat(%nyx_string* %2457, %nyx_string* %2458)
  %2460 = getelementptr [16 x i8], [16 x i8]* @.str266, i32 0, i32 0
  %2461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2460, i64 15)
  %2462 = call %nyx_string* @nyx_string_concat(%nyx_string* %2459, %nyx_string* %2461)
  %2463 = call i8* @nyx_string_to_cstr(%nyx_string* %2462)
  %2464 = call i64 @nyx_exec_code(i8* %2463)
  %2465 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2466 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %2467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2466, i64 9)
  %2468 = call %nyx_string* @nyx_string_concat(%nyx_string* %2465, %nyx_string* %2467)
  %2469 = call i8* @nyx_string_to_cstr(%nyx_string* %2468)
  %2470 = call %nyx_string* @nyx_read_file(i8* %2469)
  %2471 = call i8* @cov_called_from_show(%nyx_string* %2470)
  store i8* %2471, i8** %2407
  br label %merge443
else442:
  br label %merge443
merge443:
  %2472 = call i8* @nyx_map_new(i32 0)
  %2473 = alloca i8*
  store i8* %2472, i8** %2473
  %2474 = call i8* @nyx_map_new(i32 0)
  %2475 = alloca i8*
  store i8* %2474, i8** %2475
  %2476 = call i8* @nyx_map_new(i32 0)
  %2477 = alloca i8*
  store i8* %2476, i8** %2477
  %2478 = call i8* @nyx_map_new(i32 0)
  %2479 = alloca i8*
  store i8* %2478, i8** %2479
  store i64 0, i64* %2346
  %2480 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %2481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2480, i64 1)
  %2482 = alloca %nyx_string*
  store %nyx_string* %2481, %nyx_string** %2482
  %2483 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2483, i64 4)
  %2485 = alloca %nyx_string*
  store %nyx_string* %2484, %nyx_string** %2485
  %2486 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2486, i64 1)
  %2488 = alloca %nyx_string*
  store %nyx_string* %2487, %nyx_string** %2488
  %2489 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %2490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2489, i64 0)
  %2491 = alloca %nyx_string*
  store %nyx_string* %2490, %nyx_string** %2491
  %2492 = getelementptr [2 x i8], [2 x i8]* @.str272, i32 0, i32 0
  %2493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2492, i64 1)
  %2494 = alloca %nyx_string*
  store %nyx_string* %2493, %nyx_string** %2494
  %2495 = getelementptr [5 x i8], [5 x i8]* @.str273, i32 0, i32 0
  %2496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2495, i64 4)
  %2497 = alloca %nyx_string*
  store %nyx_string* %2496, %nyx_string** %2497
  %2498 = call i8* @llvm.stacksave()
  br label %while_cond447
while_cond447:
  %2499 = load i64, i64* %2346
  %2500 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2501 = call i64 @nyx_array_length({ i64, i8* }* %2500)
  %2502 = icmp slt i64 %2499, %2501
  br i1 %2502, label %while_body448, label %while_end449
while_body448:
  call void @llvm.stackrestore(i8* %2498)
  %2503 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2504 = load i64, i64* %2346
  %2505 = call i64 @nyx_array_get_checked({ i64, i8* }* %2503, i64 %2504, i64 2)
  %2506 = inttoptr i64 %2505 to %nyx_string*
  %2507 = alloca %nyx_string*
  store %nyx_string* %2506, %nyx_string** %2507
  %2508 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2509 = load %nyx_string*, %nyx_string** %2482
  %2510 = call %nyx_string* @nyx_string_concat(%nyx_string* %2508, %nyx_string* %2509)
  %2511 = load %nyx_string*, %nyx_string** %2507
  %2512 = call %nyx_string* @nyx_string_concat(%nyx_string* %2510, %nyx_string* %2511)
  %2513 = load %nyx_string*, %nyx_string** %2485
  %2514 = call %nyx_string* @nyx_string_concat(%nyx_string* %2512, %nyx_string* %2513)
  %2515 = alloca %nyx_string*
  store %nyx_string* %2514, %nyx_string** %2515
  %2516 = load %nyx_string*, %nyx_string** %2515
  %2517 = call i8* @nyx_string_to_cstr(%nyx_string* %2516)
  %2518 = call i1 @nyx_file_exists(i8* %2517)
  br i1 %2518, label %then450, label %else451
then450:
  %2519 = load %nyx_string*, %nyx_string** %2515
  %2520 = call i8* @nyx_string_to_cstr(%nyx_string* %2519)
  %2521 = call %nyx_string* @nyx_read_file(i8* %2520)
  %2522 = load %nyx_string*, %nyx_string** %2488
  %2523 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2521, %nyx_string* %2522)
  %2524 = alloca { i64, i8* }*
  store { i64, i8* }* %2523, { i64, i8* }** %2524
  %2525 = alloca i64
  store i64 0, i64* %2525
  %2526 = call i8* @llvm.stacksave()
  br label %while_cond453
while_cond453:
  %2527 = load i64, i64* %2525
  %2528 = load { i64, i8* }*, { i64, i8* }** %2524
  %2529 = call i64 @nyx_array_length({ i64, i8* }* %2528)
  %2530 = icmp slt i64 %2527, %2529
  br i1 %2530, label %while_body454, label %while_end455
while_body454:
  call void @llvm.stackrestore(i8* %2526)
  %2531 = load { i64, i8* }*, { i64, i8* }** %2524
  %2532 = load i64, i64* %2525
  %2533 = call i64 @nyx_array_get_checked({ i64, i8* }* %2531, i64 %2532, i64 2)
  %2534 = inttoptr i64 %2533 to %nyx_string*
  %2535 = alloca %nyx_string*
  store %nyx_string* %2534, %nyx_string** %2535
  %2536 = load %nyx_string*, %nyx_string** %2535
  %2537 = call { i64, i8* }* @cov_fields(%nyx_string* %2536)
  %2538 = alloca { i64, i8* }*
  store { i64, i8* }* %2537, { i64, i8* }** %2538
  %2539 = load { i64, i8* }*, { i64, i8* }** %2538
  %2540 = call i64 @nyx_array_length({ i64, i8* }* %2539)
  %2541 = icmp sge i64 %2540, 5
  br i1 %2541, label %then456, label %else457
then456:
  %2542 = load { i64, i8* }*, { i64, i8* }** %2538
  %2543 = call i64 @nyx_array_get_checked({ i64, i8* }* %2542, i64 0, i64 2)
  %2544 = inttoptr i64 %2543 to %nyx_string*
  %2545 = alloca %nyx_string*
  store %nyx_string* %2544, %nyx_string** %2545
  %2546 = load { i64, i8* }*, { i64, i8* }** %2538
  %2547 = call i64 @nyx_array_get_checked({ i64, i8* }* %2546, i64 1, i64 2)
  %2548 = inttoptr i64 %2547 to %nyx_string*
  %2549 = alloca %nyx_string*
  store %nyx_string* %2548, %nyx_string** %2549
  %2550 = load { i64, i8* }*, { i64, i8* }** %2538
  %2551 = call i64 @nyx_array_get_checked({ i64, i8* }* %2550, i64 3, i64 2)
  %2552 = inttoptr i64 %2551 to %nyx_string*
  %2553 = alloca %nyx_string*
  store %nyx_string* %2552, %nyx_string** %2553
  %2554 = load { i64, i8* }*, { i64, i8* }** %2538
  %2555 = call i64 @nyx_array_get_checked({ i64, i8* }* %2554, i64 4, i64 2)
  %2556 = inttoptr i64 %2555 to %nyx_string*
  %2557 = alloca %nyx_string*
  store %nyx_string* %2556, %nyx_string** %2557
  %2558 = load %nyx_string*, %nyx_string** %2549
  %2559 = load %nyx_string*, %nyx_string** %2491
  %2560 = call i1 @nyx_string_equals(%nyx_string* %2558, %nyx_string* %2559)
  %2561 = xor i1 %2560, true
  br i1 %2561, label %then459, label %else460
then459:
  %2562 = load i8*, i8** %2479
  %2563 = load %nyx_string*, %nyx_string** %2549
  %2564 = load %nyx_string*, %nyx_string** %2494
  %2565 = call i8* @nyx_string_to_cstr(%nyx_string* %2563)
  %2566 = call i8* @nyx_string_to_cstr(%nyx_string* %2564)
  call void @nyx_map_insert_str(i8* %2562, i8* %2565, i8* %2566)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2567 = load i8*, i8** %2343
  %2568 = load %nyx_string*, %nyx_string** %2507
  %2569 = call i8* @nyx_string_to_cstr(%nyx_string* %2568)
  %2570 = call i1 @nyx_map_contains_str(i8* %2567, i8* %2569)
  br i1 %2570, label %then462, label %else463
then462:
  %2571 = load i8*, i8** %2473
  %2572 = load %nyx_string*, %nyx_string** %2545
  %2573 = load %nyx_string*, %nyx_string** %2494
  %2574 = call i8* @nyx_string_to_cstr(%nyx_string* %2572)
  %2575 = call i8* @nyx_string_to_cstr(%nyx_string* %2573)
  call void @nyx_map_insert_str(i8* %2571, i8* %2574, i8* %2575)
  %2576 = alloca i1
  store i1 false, i1* %2576
  %2577 = load %nyx_string*, %nyx_string** %2557
  %2578 = load %nyx_string*, %nyx_string** %2497
  %2579 = call i1 @nyx_string_equals(%nyx_string* %2577, %nyx_string* %2578)
  br i1 %2579, label %sc_and_rhs465, label %sc_and_end466
sc_and_rhs465:
  %2580 = load i8*, i8** %2407
  %2581 = load %nyx_string*, %nyx_string** %2545
  %2582 = call i8* @nyx_string_to_cstr(%nyx_string* %2581)
  %2583 = call i1 @nyx_map_contains_str(i8* %2580, i8* %2582)
  store i1 %2583, i1* %2576
  br label %sc_and_end466
sc_and_end466:
  %2584 = load i1, i1* %2576
  br i1 %2584, label %then467, label %else468
then467:
  %2585 = load i8*, i8** %2477
  %2586 = load %nyx_string*, %nyx_string** %2553
  %2587 = load %nyx_string*, %nyx_string** %2494
  %2588 = call i8* @nyx_string_to_cstr(%nyx_string* %2586)
  %2589 = call i8* @nyx_string_to_cstr(%nyx_string* %2587)
  call void @nyx_map_insert_str(i8* %2585, i8* %2588, i8* %2589)
  br label %merge469
else468:
  br label %merge469
merge469:
  br label %merge464
else463:
  %2590 = load i8*, i8** %2475
  %2591 = load %nyx_string*, %nyx_string** %2545
  %2592 = load %nyx_string*, %nyx_string** %2494
  %2593 = call i8* @nyx_string_to_cstr(%nyx_string* %2591)
  %2594 = call i8* @nyx_string_to_cstr(%nyx_string* %2592)
  call void @nyx_map_insert_str(i8* %2590, i8* %2593, i8* %2594)
  br label %merge464
merge464:
  br label %merge458
else457:
  br label %merge458
merge458:
  %2595 = load i64, i64* %2525
  %2596 = add i64 %2595, 1
  store i64 %2596, i64* %2525
  br label %while_cond453
while_end455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2597 = load i64, i64* %2346
  %2598 = add i64 %2597, 1
  store i64 %2598, i64* %2346
  br label %while_cond447
while_end449:
  %2599 = call { i64, i8* }* @cov_src_modules()
  %2600 = alloca { i64, i8* }*
  store { i64, i8* }* %2599, { i64, i8* }** %2600
  %2601 = load { i64, i8* }*, { i64, i8* }** %2600
  %2602 = call i64 @nyx_array_length({ i64, i8* }* %2601)
  %2603 = icmp eq i64 %2602, 0
  br i1 %2603, label %then470, label %else471
then470:
  %2604 = getelementptr [27 x i8], [27 x i8]* @.str274, i32 0, i32 0
  %2605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2604, i64 26)
  %2606 = call i8* @nyx_string_to_cstr(%nyx_string* %2605)
  call void @nyx_print_string(i8* %2606)
  ret i64 0
else471:
  br label %merge472
merge472:
  %2607 = load %nyx_string*, %nyx_string** %2326
  %2608 = load %nyx_string*, %nyx_string** %2331
  %2609 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2610 = load { i64, i8* }*, { i64, i8* }** %2600
  %2611 = call %nyx_string* @cov_universe(%nyx_string* %2607, %nyx_string* %2608, %nyx_string* %2609, { i64, i8* }* %2610)
  %2612 = alloca %nyx_string*
  store %nyx_string* %2611, %nyx_string** %2612
  %2613 = load %nyx_string*, %nyx_string** %2612
  %2614 = call i8* @nyx_string_to_cstr(%nyx_string* %2613)
  %2615 = call i1 @nyx_file_exists(i8* %2614)
  %2616 = xor i1 %2615, true
  br i1 %2616, label %then473, label %else474
then473:
  %2617 = getelementptr [68 x i8], [68 x i8]* @.str275, i32 0, i32 0
  %2618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2617, i64 67)
  %2619 = call i8* @nyx_string_to_cstr(%nyx_string* %2618)
  call void @nyx_print_string(i8* %2619)
  %2620 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2621 = getelementptr [14 x i8], [14 x i8]* @.str276, i32 0, i32 0
  %2622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2621, i64 13)
  %2623 = call %nyx_string* @nyx_string_concat(%nyx_string* %2620, %nyx_string* %2622)
  %2624 = call i8* @nyx_string_to_cstr(%nyx_string* %2623)
  %2625 = call i1 @nyx_file_exists(i8* %2624)
  br i1 %2625, label %then476, label %else477
then476:
  %2626 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2627 = getelementptr [14 x i8], [14 x i8]* @.str277, i32 0, i32 0
  %2628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2627, i64 13)
  %2629 = call %nyx_string* @nyx_string_concat(%nyx_string* %2626, %nyx_string* %2628)
  %2630 = call i8* @nyx_string_to_cstr(%nyx_string* %2629)
  %2631 = call %nyx_string* @nyx_read_file(i8* %2630)
  %2632 = call i8* @nyx_string_to_cstr(%nyx_string* %2631)
  call void @nyx_print_string(i8* %2632)
  br label %merge478
else477:
  br label %merge478
merge478:
  ret i64 1
else474:
  br label %merge475
merge475:
  %2633 = load %nyx_string*, %nyx_string** %2612
  %2634 = call i8* @nyx_string_to_cstr(%nyx_string* %2633)
  %2635 = call %nyx_string* @nyx_read_file(i8* %2634)
  %2636 = getelementptr [2 x i8], [2 x i8]* @.str278, i32 0, i32 0
  %2637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2636, i64 1)
  %2638 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2635, %nyx_string* %2637)
  %2639 = alloca { i64, i8* }*
  store { i64, i8* }* %2638, { i64, i8* }** %2639
  %2640 = call { i64, i8* }* @nyx_array_new_ptr()
  %2641 = alloca { i64, i8* }*
  store { i64, i8* }* %2640, { i64, i8* }** %2641
  %2642 = alloca i64
  store i64 0, i64* %2642
  %2643 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %2644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2643, i64 2)
  %2645 = alloca %nyx_string*
  store %nyx_string* %2644, %nyx_string** %2645
  %2646 = getelementptr [7 x i8], [7 x i8]* @.str280, i32 0, i32 0
  %2647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2646, i64 6)
  %2648 = alloca %nyx_string*
  store %nyx_string* %2647, %nyx_string** %2648
  %2649 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2649, i64 5)
  %2651 = alloca %nyx_string*
  store %nyx_string* %2650, %nyx_string** %2651
  %2652 = getelementptr [9 x i8], [9 x i8]* @.str282, i32 0, i32 0
  %2653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2652, i64 8)
  %2654 = alloca %nyx_string*
  store %nyx_string* %2653, %nyx_string** %2654
  %2655 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2655, i64 4)
  %2657 = alloca %nyx_string*
  store %nyx_string* %2656, %nyx_string** %2657
  %2658 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2658, i64 4)
  %2660 = alloca %nyx_string*
  store %nyx_string* %2659, %nyx_string** %2660
  %2661 = getelementptr [3 x i8], [3 x i8]* @.str285, i32 0, i32 0
  %2662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2661, i64 2)
  %2663 = alloca %nyx_string*
  store %nyx_string* %2662, %nyx_string** %2663
  %2664 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2664, i64 2)
  %2666 = alloca %nyx_string*
  store %nyx_string* %2665, %nyx_string** %2666
  %2667 = getelementptr [10 x i8], [10 x i8]* @.str287, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2667, i64 9)
  %2669 = alloca %nyx_string*
  store %nyx_string* %2668, %nyx_string** %2669
  %2670 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %2671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2670, i64 4)
  %2672 = alloca %nyx_string*
  store %nyx_string* %2671, %nyx_string** %2672
  %2673 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2673, i64 1)
  %2675 = alloca %nyx_string*
  store %nyx_string* %2674, %nyx_string** %2675
  %2676 = call i8* @llvm.stacksave()
  br label %while_cond479
while_cond479:
  %2677 = load i64, i64* %2642
  %2678 = load { i64, i8* }*, { i64, i8* }** %2639
  %2679 = call i64 @nyx_array_length({ i64, i8* }* %2678)
  %2680 = icmp slt i64 %2677, %2679
  br i1 %2680, label %while_body480, label %while_end481
while_body480:
  call void @llvm.stackrestore(i8* %2676)
  %2681 = load { i64, i8* }*, { i64, i8* }** %2639
  %2682 = load i64, i64* %2642
  %2683 = call i64 @nyx_array_get_checked({ i64, i8* }* %2681, i64 %2682, i64 2)
  %2684 = inttoptr i64 %2683 to %nyx_string*
  %2685 = alloca %nyx_string*
  store %nyx_string* %2684, %nyx_string** %2685
  %2686 = load %nyx_string*, %nyx_string** %2685
  %2687 = call { i64, i8* }* @cov_fields(%nyx_string* %2686)
  %2688 = alloca { i64, i8* }*
  store { i64, i8* }* %2687, { i64, i8* }** %2688
  %2689 = load { i64, i8* }*, { i64, i8* }** %2688
  %2690 = call i64 @nyx_array_length({ i64, i8* }* %2689)
  %2691 = icmp sge i64 %2690, 5
  br i1 %2691, label %then482, label %else483
then482:
  %2692 = load { i64, i8* }*, { i64, i8* }** %2688
  %2693 = call i64 @nyx_array_get_checked({ i64, i8* }* %2692, i64 0, i64 2)
  %2694 = inttoptr i64 %2693 to %nyx_string*
  %2695 = alloca %nyx_string*
  store %nyx_string* %2694, %nyx_string** %2695
  %2696 = load { i64, i8* }*, { i64, i8* }** %2688
  %2697 = call i64 @nyx_array_get_checked({ i64, i8* }* %2696, i64 1, i64 2)
  %2698 = inttoptr i64 %2697 to %nyx_string*
  %2699 = alloca %nyx_string*
  store %nyx_string* %2698, %nyx_string** %2699
  %2700 = load { i64, i8* }*, { i64, i8* }** %2688
  %2701 = call i64 @nyx_array_get_checked({ i64, i8* }* %2700, i64 2, i64 2)
  %2702 = inttoptr i64 %2701 to %nyx_string*
  %2703 = alloca %nyx_string*
  store %nyx_string* %2702, %nyx_string** %2703
  %2704 = load { i64, i8* }*, { i64, i8* }** %2688
  %2705 = call i64 @nyx_array_get_checked({ i64, i8* }* %2704, i64 3, i64 2)
  %2706 = inttoptr i64 %2705 to %nyx_string*
  %2707 = alloca %nyx_string*
  store %nyx_string* %2706, %nyx_string** %2707
  %2708 = load { i64, i8* }*, { i64, i8* }** %2688
  %2709 = call i64 @nyx_array_get_checked({ i64, i8* }* %2708, i64 4, i64 2)
  %2710 = inttoptr i64 %2709 to %nyx_string*
  %2711 = alloca %nyx_string*
  store %nyx_string* %2710, %nyx_string** %2711
  %2712 = alloca i1
  store i1 true, i1* %2712
  %2713 = alloca i1
  store i1 true, i1* %2713
  %2714 = alloca i1
  store i1 true, i1* %2714
  %2715 = load %nyx_string*, %nyx_string** %2711
  %2716 = load %nyx_string*, %nyx_string** %2645
  %2717 = call i1 @nyx_string_equals(%nyx_string* %2715, %nyx_string* %2716)
  br i1 %2717, label %sc_or_end486, label %sc_or_rhs485
sc_or_rhs485:
  %2718 = load %nyx_string*, %nyx_string** %2711
  %2719 = load %nyx_string*, %nyx_string** %2648
  %2720 = call i1 @nyx_string_equals(%nyx_string* %2718, %nyx_string* %2719)
  store i1 %2720, i1* %2714
  br label %sc_or_end486
sc_or_end486:
  %2721 = load i1, i1* %2714
  br i1 %2721, label %sc_or_end488, label %sc_or_rhs487
sc_or_rhs487:
  %2722 = load %nyx_string*, %nyx_string** %2711
  %2723 = load %nyx_string*, %nyx_string** %2651
  %2724 = call i1 @nyx_string_equals(%nyx_string* %2722, %nyx_string* %2723)
  store i1 %2724, i1* %2713
  br label %sc_or_end488
sc_or_end488:
  %2725 = load i1, i1* %2713
  br i1 %2725, label %sc_or_end490, label %sc_or_rhs489
sc_or_rhs489:
  %2726 = load %nyx_string*, %nyx_string** %2711
  %2727 = load %nyx_string*, %nyx_string** %2654
  %2728 = call i1 @nyx_string_equals(%nyx_string* %2726, %nyx_string* %2727)
  store i1 %2728, i1* %2712
  br label %sc_or_end490
sc_or_end490:
  %2729 = load i1, i1* %2712
  %2730 = alloca i1
  store i1 %2729, i1* %2730
  %2731 = alloca i1
  store i1 false, i1* %2731
  %2732 = alloca i1
  store i1 false, i1* %2732
  %2733 = load i1, i1* %2730
  br i1 %2733, label %sc_and_rhs491, label %sc_and_end492
sc_and_rhs491:
  %2734 = load %nyx_string*, %nyx_string** %2699
  %2735 = load %nyx_string*, %nyx_string** %2657
  %2736 = call i1 @nyx_string_starts_with(%nyx_string* %2734, %nyx_string* %2735)
  store i1 %2736, i1* %2732
  br label %sc_and_end492
sc_and_end492:
  %2737 = load i1, i1* %2732
  br i1 %2737, label %sc_and_rhs493, label %sc_and_end494
sc_and_rhs493:
  %2738 = load %nyx_string*, %nyx_string** %2707
  %2739 = load %nyx_string*, %nyx_string** %2660
  %2740 = call i1 @nyx_string_equals(%nyx_string* %2738, %nyx_string* %2739)
  %2741 = xor i1 %2740, true
  store i1 %2741, i1* %2731
  br label %sc_and_end494
sc_and_end494:
  %2742 = load i1, i1* %2731
  br i1 %2742, label %then495, label %else496
then495:
  %2743 = load i8*, i8** %2407
  %2744 = load %nyx_string*, %nyx_string** %2695
  %2745 = call i8* @nyx_string_to_cstr(%nyx_string* %2744)
  %2746 = call i1 @nyx_map_contains_str(i8* %2743, i8* %2745)
  %2747 = alloca i1
  store i1 %2746, i1* %2747
  %2748 = load %nyx_string*, %nyx_string** %2711
  %2749 = load %nyx_string*, %nyx_string** %2654
  %2750 = call i1 @nyx_string_equals(%nyx_string* %2748, %nyx_string* %2749)
  br i1 %2750, label %then498, label %else499
then498:
  %2751 = load i8*, i8** %2477
  %2752 = load %nyx_string*, %nyx_string** %2695
  %2753 = call i8* @nyx_string_to_cstr(%nyx_string* %2752)
  %2754 = call i1 @nyx_map_contains_str(i8* %2751, i8* %2753)
  store i1 %2754, i1* %2747
  br label %merge500
else499:
  br label %merge500
merge500:
  %2755 = load %nyx_string*, %nyx_string** %2663
  %2756 = alloca %nyx_string*
  store %nyx_string* %2755, %nyx_string** %2756
  %2757 = load i1, i1* %2747
  br i1 %2757, label %then501, label %else502
then501:
  %2758 = load %nyx_string*, %nyx_string** %2666
  store %nyx_string* %2758, %nyx_string** %2756
  br label %merge503
else502:
  %2759 = alloca i1
  store i1 false, i1* %2759
  %2760 = load i8*, i8** %2473
  %2761 = load %nyx_string*, %nyx_string** %2695
  %2762 = call i8* @nyx_string_to_cstr(%nyx_string* %2761)
  %2763 = call i1 @nyx_map_contains_str(i8* %2760, i8* %2762)
  %2764 = xor i1 %2763, true
  br i1 %2764, label %sc_and_rhs504, label %sc_and_end505
sc_and_rhs504:
  %2765 = load i8*, i8** %2475
  %2766 = load %nyx_string*, %nyx_string** %2695
  %2767 = call i8* @nyx_string_to_cstr(%nyx_string* %2766)
  %2768 = call i1 @nyx_map_contains_str(i8* %2765, i8* %2767)
  store i1 %2768, i1* %2759
  br label %sc_and_end505
sc_and_end505:
  %2769 = load i1, i1* %2759
  br i1 %2769, label %then506, label %else507
then506:
  %2770 = load %nyx_string*, %nyx_string** %2669
  store %nyx_string* %2770, %nyx_string** %2756
  br label %merge508
else507:
  br label %merge508
merge508:
  br label %merge503
merge503:
  %2771 = load { i64, i8* }*, { i64, i8* }** %2641
  %2772 = load %nyx_string*, %nyx_string** %2699
  %2773 = load %nyx_string*, %nyx_string** %2672
  %2774 = call %nyx_string* @nyx_string_concat(%nyx_string* %2772, %nyx_string* %2773)
  %2775 = load %nyx_string*, %nyx_string** %2703
  %2776 = call i64 @nyx_string_to_int(%nyx_string* %2775)
  %2777 = call %nyx_string* @cov_pad(i64 %2776)
  %2778 = call %nyx_string* @nyx_string_concat(%nyx_string* %2774, %nyx_string* %2777)
  %2779 = load %nyx_string*, %nyx_string** %2675
  %2780 = call %nyx_string* @nyx_string_concat(%nyx_string* %2778, %nyx_string* %2779)
  %2781 = load %nyx_string*, %nyx_string** %2707
  %2782 = call %nyx_string* @nyx_string_concat(%nyx_string* %2780, %nyx_string* %2781)
  %2783 = load %nyx_string*, %nyx_string** %2675
  %2784 = call %nyx_string* @nyx_string_concat(%nyx_string* %2782, %nyx_string* %2783)
  %2785 = load %nyx_string*, %nyx_string** %2756
  %2786 = call %nyx_string* @nyx_string_concat(%nyx_string* %2784, %nyx_string* %2785)
  %2787 = load %nyx_string*, %nyx_string** %2675
  %2788 = call %nyx_string* @nyx_string_concat(%nyx_string* %2786, %nyx_string* %2787)
  %2789 = load %nyx_string*, %nyx_string** %2699
  %2790 = call %nyx_string* @nyx_string_concat(%nyx_string* %2788, %nyx_string* %2789)
  %2791 = ptrtoint %nyx_string* %2790 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2771, i64 %2791, i64 2)
  br label %merge497
else496:
  br label %merge497
merge497:
  br label %merge484
else483:
  br label %merge484
merge484:
  %2792 = load i64, i64* %2642
  %2793 = add i64 %2792, 1
  store i64 %2793, i64* %2642
  br label %while_cond479
while_end481:
  %2794 = load { i64, i8* }*, { i64, i8* }** %2641
  %2795 = call { i64, i8* }* @sort_str({ i64, i8* }* %2794)
  %2796 = alloca { i64, i8* }*
  store { i64, i8* }* %2795, { i64, i8* }** %2796
  %2797 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %2798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2797, i64 0)
  %2799 = alloca %nyx_string*
  store %nyx_string* %2798, %nyx_string** %2799
  %2800 = alloca i64
  store i64 0, i64* %2800
  %2801 = alloca i64
  store i64 0, i64* %2801
  %2802 = alloca i64
  store i64 0, i64* %2802
  %2803 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %2804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2803, i64 0)
  %2805 = alloca %nyx_string*
  store %nyx_string* %2804, %nyx_string** %2805
  %2806 = getelementptr [10 x i8], [10 x i8]* @.str292, i32 0, i32 0
  %2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2806, i64 9)
  %2808 = alloca %nyx_string*
  store %nyx_string* %2807, %nyx_string** %2808
  %2809 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2809, i64 1)
  %2811 = alloca %nyx_string*
  store %nyx_string* %2810, %nyx_string** %2811
  %2812 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %2813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2812, i64 2)
  %2814 = alloca %nyx_string*
  store %nyx_string* %2813, %nyx_string** %2814
  %2815 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2815, i64 1)
  %2817 = alloca %nyx_string*
  store %nyx_string* %2816, %nyx_string** %2817
  %2818 = getelementptr [5 x i8], [5 x i8]* @.str296, i32 0, i32 0
  %2819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2818, i64 4)
  %2820 = alloca %nyx_string*
  store %nyx_string* %2819, %nyx_string** %2820
  %2821 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %2822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2821, i64 1)
  %2823 = alloca %nyx_string*
  store %nyx_string* %2822, %nyx_string** %2823
  %2824 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %2825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2824, i64 1)
  %2826 = alloca %nyx_string*
  store %nyx_string* %2825, %nyx_string** %2826
  %2827 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %2828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2827, i64 3)
  %2829 = alloca %nyx_string*
  store %nyx_string* %2828, %nyx_string** %2829
  %2830 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %2831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2830, i64 1)
  %2832 = alloca %nyx_string*
  store %nyx_string* %2831, %nyx_string** %2832
  %2833 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2833, i64 1)
  %2835 = alloca %nyx_string*
  store %nyx_string* %2834, %nyx_string** %2835
  %2836 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %2837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2836, i64 5)
  %2838 = alloca %nyx_string*
  store %nyx_string* %2837, %nyx_string** %2838
  %2839 = getelementptr [3 x i8], [3 x i8]* @.str303, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2839, i64 2)
  %2841 = alloca %nyx_string*
  store %nyx_string* %2840, %nyx_string** %2841
  %2842 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %2843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2842, i64 2)
  %2844 = alloca %nyx_string*
  store %nyx_string* %2843, %nyx_string** %2844
  %2845 = getelementptr [2 x i8], [2 x i8]* @.str305, i32 0, i32 0
  %2846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2845, i64 1)
  %2847 = alloca %nyx_string*
  store %nyx_string* %2846, %nyx_string** %2847
  %2848 = getelementptr [10 x i8], [10 x i8]* @.str306, i32 0, i32 0
  %2849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2848, i64 9)
  %2850 = alloca %nyx_string*
  store %nyx_string* %2849, %nyx_string** %2850
  %2851 = getelementptr [29 x i8], [29 x i8]* @.str307, i32 0, i32 0
  %2852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2851, i64 28)
  %2853 = alloca %nyx_string*
  store %nyx_string* %2852, %nyx_string** %2853
  %2854 = getelementptr [3 x i8], [3 x i8]* @.str308, i32 0, i32 0
  %2855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2854, i64 2)
  %2856 = alloca %nyx_string*
  store %nyx_string* %2855, %nyx_string** %2856
  %2857 = getelementptr [38 x i8], [38 x i8]* @.str309, i32 0, i32 0
  %2858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2857, i64 37)
  %2859 = alloca %nyx_string*
  store %nyx_string* %2858, %nyx_string** %2859
  %2860 = getelementptr [4 x i8], [4 x i8]* @.str310, i32 0, i32 0
  %2861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2860, i64 3)
  %2862 = alloca %nyx_string*
  store %nyx_string* %2861, %nyx_string** %2862
  %2863 = getelementptr [5 x i8], [5 x i8]* @.str311, i32 0, i32 0
  %2864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2863, i64 4)
  %2865 = alloca %nyx_string*
  store %nyx_string* %2864, %nyx_string** %2865
  %2866 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %2867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2866, i64 5)
  %2868 = alloca %nyx_string*
  store %nyx_string* %2867, %nyx_string** %2868
  %2869 = getelementptr [16 x i8], [16 x i8]* @.str313, i32 0, i32 0
  %2870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2869, i64 15)
  %2871 = alloca %nyx_string*
  store %nyx_string* %2870, %nyx_string** %2871
  %2872 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2873 = load i64, i64* %2802
  %2874 = load { i64, i8* }*, { i64, i8* }** %2796
  %2875 = call i64 @nyx_array_length({ i64, i8* }* %2874)
  %2876 = icmp slt i64 %2873, %2875
  br i1 %2876, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2872)
  %2877 = load { i64, i8* }*, { i64, i8* }** %2796
  %2878 = load i64, i64* %2802
  %2879 = call i64 @nyx_array_get_checked({ i64, i8* }* %2877, i64 %2878, i64 2)
  %2880 = inttoptr i64 %2879 to %nyx_string*
  %2881 = alloca %nyx_string*
  store %nyx_string* %2880, %nyx_string** %2881
  %2882 = load %nyx_string*, %nyx_string** %2881
  %2883 = call { i64, i8* }* @cov_fields(%nyx_string* %2882)
  %2884 = alloca { i64, i8* }*
  store { i64, i8* }* %2883, { i64, i8* }** %2884
  %2885 = load { i64, i8* }*, { i64, i8* }** %2884
  %2886 = call i64 @nyx_array_get_checked({ i64, i8* }* %2885, i64 0, i64 2)
  %2887 = inttoptr i64 %2886 to %nyx_string*
  %2888 = alloca %nyx_string*
  store %nyx_string* %2887, %nyx_string** %2888
  %2889 = load { i64, i8* }*, { i64, i8* }** %2884
  %2890 = call i64 @nyx_array_get_checked({ i64, i8* }* %2889, i64 4, i64 2)
  %2891 = inttoptr i64 %2890 to %nyx_string*
  %2892 = alloca %nyx_string*
  store %nyx_string* %2891, %nyx_string** %2892
  %2893 = alloca i64
  store i64 0, i64* %2893
  %2894 = alloca i64
  store i64 0, i64* %2894
  %2895 = alloca i64
  store i64 0, i64* %2895
  %2896 = call { i64, i8* }* @nyx_array_new_ptr()
  %2897 = alloca { i64, i8* }*
  store { i64, i8* }* %2896, { i64, i8* }** %2897
  %2898 = load %nyx_string*, %nyx_string** %2805
  %2899 = alloca %nyx_string*
  store %nyx_string* %2898, %nyx_string** %2899
  %2900 = load %nyx_string*, %nyx_string** %2805
  %2901 = alloca %nyx_string*
  store %nyx_string* %2900, %nyx_string** %2901
  %2902 = load i64, i64* %2802
  %2903 = alloca i64
  store i64 %2902, i64* %2903
  %2904 = alloca i1
  store i1 1, i1* %2904
  %2905 = call i8* @llvm.stacksave()
  br label %while_cond512
while_cond512:
  %2906 = alloca i1
  store i1 false, i1* %2906
  %2907 = load i64, i64* %2903
  %2908 = load { i64, i8* }*, { i64, i8* }** %2796
  %2909 = call i64 @nyx_array_length({ i64, i8* }* %2908)
  %2910 = icmp slt i64 %2907, %2909
  br i1 %2910, label %sc_and_rhs515, label %sc_and_end516
sc_and_rhs515:
  %2911 = load i1, i1* %2904
  store i1 %2911, i1* %2906
  br label %sc_and_end516
sc_and_end516:
  %2912 = load i1, i1* %2906
  br i1 %2912, label %while_body513, label %while_end514
while_body513:
  call void @llvm.stackrestore(i8* %2905)
  %2913 = load { i64, i8* }*, { i64, i8* }** %2796
  %2914 = load i64, i64* %2903
  %2915 = call i64 @nyx_array_get_checked({ i64, i8* }* %2913, i64 %2914, i64 2)
  %2916 = inttoptr i64 %2915 to %nyx_string*
  %2917 = alloca %nyx_string*
  store %nyx_string* %2916, %nyx_string** %2917
  %2918 = load %nyx_string*, %nyx_string** %2917
  %2919 = call { i64, i8* }* @cov_fields(%nyx_string* %2918)
  %2920 = alloca { i64, i8* }*
  store { i64, i8* }* %2919, { i64, i8* }** %2920
  %2921 = load { i64, i8* }*, { i64, i8* }** %2920
  %2922 = call i64 @nyx_array_get_checked({ i64, i8* }* %2921, i64 0, i64 2)
  %2923 = inttoptr i64 %2922 to %nyx_string*
  %2924 = alloca %nyx_string*
  store %nyx_string* %2923, %nyx_string** %2924
  %2925 = load %nyx_string*, %nyx_string** %2924
  %2926 = load %nyx_string*, %nyx_string** %2888
  %2927 = call i1 @nyx_string_equals(%nyx_string* %2925, %nyx_string* %2926)
  %2928 = xor i1 %2927, true
  br i1 %2928, label %then517, label %else518
then517:
  store i1 0, i1* %2904
  br label %merge519
else518:
  %2929 = load { i64, i8* }*, { i64, i8* }** %2920
  %2930 = call i64 @nyx_array_get({ i64, i8* }* %2929, i64 1)
  %2931 = inttoptr i64 %2930 to %nyx_string*
  %2932 = call i64 @nyx_string_to_int(%nyx_string* %2931)
  %2933 = alloca i64
  store i64 %2932, i64* %2933
  %2934 = load { i64, i8* }*, { i64, i8* }** %2920
  %2935 = call i64 @nyx_array_get_checked({ i64, i8* }* %2934, i64 2, i64 2)
  %2936 = inttoptr i64 %2935 to %nyx_string*
  %2937 = alloca %nyx_string*
  store %nyx_string* %2936, %nyx_string** %2937
  %2938 = load { i64, i8* }*, { i64, i8* }** %2920
  %2939 = call i64 @nyx_array_get_checked({ i64, i8* }* %2938, i64 3, i64 2)
  %2940 = inttoptr i64 %2939 to %nyx_string*
  %2941 = alloca %nyx_string*
  store %nyx_string* %2940, %nyx_string** %2941
  %2942 = load %nyx_string*, %nyx_string** %2941
  %2943 = load %nyx_string*, %nyx_string** %2808
  %2944 = call i1 @nyx_string_equals(%nyx_string* %2942, %nyx_string* %2943)
  br i1 %2944, label %then520, label %else521
then520:
  %2945 = load i64, i64* %2895
  %2946 = add i64 %2945, 1
  store i64 %2946, i64* %2895
  br label %merge522
else521:
  %2947 = load i64, i64* %2894
  %2948 = add i64 %2947, 1
  store i64 %2948, i64* %2894
  %2949 = load %nyx_string*, %nyx_string** %2811
  %2950 = alloca %nyx_string*
  store %nyx_string* %2949, %nyx_string** %2950
  %2951 = load %nyx_string*, %nyx_string** %2941
  %2952 = load %nyx_string*, %nyx_string** %2814
  %2953 = call i1 @nyx_string_equals(%nyx_string* %2951, %nyx_string* %2952)
  br i1 %2953, label %then523, label %else524
then523:
  %2954 = load i64, i64* %2893
  %2955 = add i64 %2954, 1
  store i64 %2955, i64* %2893
  %2956 = load %nyx_string*, %nyx_string** %2817
  store %nyx_string* %2956, %nyx_string** %2950
  br label %merge525
else524:
  %2957 = load { i64, i8* }*, { i64, i8* }** %2897
  %2958 = load %nyx_string*, %nyx_string** %2820
  %2959 = load %nyx_string*, %nyx_string** %2888
  %2960 = call %nyx_string* @nyx_string_concat(%nyx_string* %2958, %nyx_string* %2959)
  %2961 = load %nyx_string*, %nyx_string** %2823
  %2962 = call %nyx_string* @nyx_string_concat(%nyx_string* %2960, %nyx_string* %2961)
  %2963 = load i64, i64* %2933
  %2964 = call %nyx_string* @nyx_string_from_int(i64 %2963)
  %2965 = call %nyx_string* @nyx_string_concat(%nyx_string* %2962, %nyx_string* %2964)
  %2966 = load %nyx_string*, %nyx_string** %2826
  %2967 = call %nyx_string* @nyx_string_concat(%nyx_string* %2965, %nyx_string* %2966)
  %2968 = load %nyx_string*, %nyx_string** %2937
  %2969 = call %nyx_string* @nyx_string_concat(%nyx_string* %2967, %nyx_string* %2968)
  %2970 = ptrtoint %nyx_string* %2969 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2957, i64 %2970, i64 2)
  br label %merge525
merge525:
  %2971 = load %nyx_string*, %nyx_string** %2899
  %2972 = load %nyx_string*, %nyx_string** %2829
  %2973 = call %nyx_string* @nyx_string_concat(%nyx_string* %2971, %nyx_string* %2972)
  %2974 = load i64, i64* %2933
  %2975 = call %nyx_string* @nyx_string_from_int(i64 %2974)
  %2976 = call %nyx_string* @nyx_string_concat(%nyx_string* %2973, %nyx_string* %2975)
  %2977 = load %nyx_string*, %nyx_string** %2832
  %2978 = call %nyx_string* @nyx_string_concat(%nyx_string* %2976, %nyx_string* %2977)
  %2979 = load %nyx_string*, %nyx_string** %2937
  %2980 = call %nyx_string* @nyx_string_concat(%nyx_string* %2978, %nyx_string* %2979)
  %2981 = load %nyx_string*, %nyx_string** %2835
  %2982 = call %nyx_string* @nyx_string_concat(%nyx_string* %2980, %nyx_string* %2981)
  store %nyx_string* %2982, %nyx_string** %2899
  %2983 = load %nyx_string*, %nyx_string** %2901
  %2984 = load %nyx_string*, %nyx_string** %2838
  %2985 = call %nyx_string* @nyx_string_concat(%nyx_string* %2983, %nyx_string* %2984)
  %2986 = load %nyx_string*, %nyx_string** %2950
  %2987 = call %nyx_string* @nyx_string_concat(%nyx_string* %2985, %nyx_string* %2986)
  %2988 = load %nyx_string*, %nyx_string** %2832
  %2989 = call %nyx_string* @nyx_string_concat(%nyx_string* %2987, %nyx_string* %2988)
  %2990 = load %nyx_string*, %nyx_string** %2937
  %2991 = call %nyx_string* @nyx_string_concat(%nyx_string* %2989, %nyx_string* %2990)
  %2992 = load %nyx_string*, %nyx_string** %2835
  %2993 = call %nyx_string* @nyx_string_concat(%nyx_string* %2991, %nyx_string* %2992)
  store %nyx_string* %2993, %nyx_string** %2901
  br label %merge522
merge522:
  %2994 = load i64, i64* %2903
  %2995 = add i64 %2994, 1
  store i64 %2995, i64* %2903
  br label %merge519
merge519:
  br label %while_cond512
while_end514:
  %2996 = load %nyx_string*, %nyx_string** %2841
  %2997 = load %nyx_string*, %nyx_string** %2888
  %2998 = call %nyx_string* @nyx_string_concat(%nyx_string* %2996, %nyx_string* %2997)
  %2999 = load %nyx_string*, %nyx_string** %2844
  %3000 = call %nyx_string* @nyx_string_concat(%nyx_string* %2998, %nyx_string* %2999)
  %3001 = load i64, i64* %2893
  %3002 = call %nyx_string* @nyx_string_from_int(i64 %3001)
  %3003 = call %nyx_string* @nyx_string_concat(%nyx_string* %3000, %nyx_string* %3002)
  %3004 = load %nyx_string*, %nyx_string** %2847
  %3005 = call %nyx_string* @nyx_string_concat(%nyx_string* %3003, %nyx_string* %3004)
  %3006 = load i64, i64* %2894
  %3007 = call %nyx_string* @nyx_string_from_int(i64 %3006)
  %3008 = call %nyx_string* @nyx_string_concat(%nyx_string* %3005, %nyx_string* %3007)
  %3009 = load %nyx_string*, %nyx_string** %2850
  %3010 = call %nyx_string* @nyx_string_concat(%nyx_string* %3008, %nyx_string* %3009)
  %3011 = alloca %nyx_string*
  store %nyx_string* %3010, %nyx_string** %3011
  %3012 = load i8*, i8** %2479
  %3013 = load %nyx_string*, %nyx_string** %2892
  %3014 = call i8* @nyx_string_to_cstr(%nyx_string* %3013)
  %3015 = call i1 @nyx_map_contains_str(i8* %3012, i8* %3014)
  %3016 = xor i1 %3015, true
  br i1 %3016, label %then526, label %else527
then526:
  %3017 = load %nyx_string*, %nyx_string** %3011
  %3018 = load %nyx_string*, %nyx_string** %2853
  %3019 = call %nyx_string* @nyx_string_concat(%nyx_string* %3017, %nyx_string* %3018)
  store %nyx_string* %3019, %nyx_string** %3011
  br label %merge528
else527:
  br label %merge528
merge528:
  %3020 = load i64, i64* %2895
  %3021 = icmp sgt i64 %3020, 0
  br i1 %3021, label %then529, label %else530
then529:
  %3022 = load %nyx_string*, %nyx_string** %3011
  %3023 = load %nyx_string*, %nyx_string** %2856
  %3024 = call %nyx_string* @nyx_string_concat(%nyx_string* %3022, %nyx_string* %3023)
  %3025 = load i64, i64* %2895
  %3026 = call %nyx_string* @nyx_string_from_int(i64 %3025)
  %3027 = call %nyx_string* @nyx_string_concat(%nyx_string* %3024, %nyx_string* %3026)
  %3028 = load %nyx_string*, %nyx_string** %2859
  %3029 = call %nyx_string* @nyx_string_concat(%nyx_string* %3027, %nyx_string* %3028)
  store %nyx_string* %3029, %nyx_string** %3011
  br label %merge531
else530:
  br label %merge531
merge531:
  %3030 = load %nyx_string*, %nyx_string** %3011
  %3031 = call i8* @nyx_string_to_cstr(%nyx_string* %3030)
  call void @nyx_print_string(i8* %3031)
  %3032 = alloca i64
  store i64 0, i64* %3032
  %3033 = call i8* @llvm.stacksave()
  br label %while_cond532
while_cond532:
  %3034 = load i64, i64* %3032
  %3035 = load { i64, i8* }*, { i64, i8* }** %2897
  %3036 = call i64 @nyx_array_length({ i64, i8* }* %3035)
  %3037 = icmp slt i64 %3034, %3036
  br i1 %3037, label %while_body533, label %while_end534
while_body533:
  call void @llvm.stackrestore(i8* %3033)
  %3038 = load { i64, i8* }*, { i64, i8* }** %2897
  %3039 = load i64, i64* %3032
  %3040 = call i64 @nyx_array_get_checked({ i64, i8* }* %3038, i64 %3039, i64 2)
  %3041 = inttoptr i64 %3040 to %nyx_string*
  %3042 = alloca %nyx_string*
  store %nyx_string* %3041, %nyx_string** %3042
  %3043 = load %nyx_string*, %nyx_string** %3042
  %3044 = call i8* @nyx_string_to_cstr(%nyx_string* %3043)
  call void @nyx_print_string(i8* %3044)
  %3045 = load i64, i64* %3032
  %3046 = add i64 %3045, 1
  store i64 %3046, i64* %3032
  br label %while_cond532
while_end534:
  %3047 = load i64, i64* %2800
  %3048 = load i64, i64* %2893
  %3049 = add i64 %3047, %3048
  store i64 %3049, i64* %2800
  %3050 = load i64, i64* %2801
  %3051 = load i64, i64* %2894
  %3052 = add i64 %3050, %3051
  store i64 %3052, i64* %2801
  %3053 = load %nyx_string*, %nyx_string** %2799
  %3054 = load %nyx_string*, %nyx_string** %2862
  %3055 = call %nyx_string* @nyx_string_concat(%nyx_string* %3053, %nyx_string* %3054)
  %3056 = load %nyx_string*, %nyx_string** %2888
  %3057 = call %nyx_string* @nyx_string_concat(%nyx_string* %3055, %nyx_string* %3056)
  %3058 = load %nyx_string*, %nyx_string** %2835
  %3059 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3058)
  %3060 = load %nyx_string*, %nyx_string** %2899
  %3061 = call %nyx_string* @nyx_string_concat(%nyx_string* %3059, %nyx_string* %3060)
  %3062 = load %nyx_string*, %nyx_string** %2901
  %3063 = call %nyx_string* @nyx_string_concat(%nyx_string* %3061, %nyx_string* %3062)
  %3064 = load %nyx_string*, %nyx_string** %2865
  %3065 = call %nyx_string* @nyx_string_concat(%nyx_string* %3063, %nyx_string* %3064)
  %3066 = load i64, i64* %2894
  %3067 = call %nyx_string* @nyx_string_from_int(i64 %3066)
  %3068 = call %nyx_string* @nyx_string_concat(%nyx_string* %3065, %nyx_string* %3067)
  %3069 = load %nyx_string*, %nyx_string** %2868
  %3070 = call %nyx_string* @nyx_string_concat(%nyx_string* %3068, %nyx_string* %3069)
  %3071 = load i64, i64* %2893
  %3072 = call %nyx_string* @nyx_string_from_int(i64 %3071)
  %3073 = call %nyx_string* @nyx_string_concat(%nyx_string* %3070, %nyx_string* %3072)
  %3074 = load %nyx_string*, %nyx_string** %2871
  %3075 = call %nyx_string* @nyx_string_concat(%nyx_string* %3073, %nyx_string* %3074)
  store %nyx_string* %3075, %nyx_string** %2799
  %3076 = load i64, i64* %2903
  store i64 %3076, i64* %2802
  br label %while_cond509
while_end511:
  %3077 = load { i64, i8* }*, { i64, i8* }** %2345
  %3078 = call i64 @nyx_array_length({ i64, i8* }* %3077)
  %3079 = icmp sgt i64 %3078, 0
  br i1 %3079, label %then535, label %else536
then535:
  %3080 = getelementptr [70 x i8], [70 x i8]* @.str314, i32 0, i32 0
  %3081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3080, i64 69)
  %3082 = call i8* @nyx_string_to_cstr(%nyx_string* %3081)
  call void @nyx_print_string(i8* %3082)
  %3083 = alloca i64
  store i64 0, i64* %3083
  %3084 = getelementptr [5 x i8], [5 x i8]* @.str315, i32 0, i32 0
  %3085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3084, i64 4)
  %3086 = alloca %nyx_string*
  store %nyx_string* %3085, %nyx_string** %3086
  %3087 = call i8* @llvm.stacksave()
  br label %while_cond538
while_cond538:
  %3088 = load i64, i64* %3083
  %3089 = load { i64, i8* }*, { i64, i8* }** %2345
  %3090 = call i64 @nyx_array_length({ i64, i8* }* %3089)
  %3091 = icmp slt i64 %3088, %3090
  br i1 %3091, label %while_body539, label %while_end540
while_body539:
  call void @llvm.stackrestore(i8* %3087)
  %3092 = load { i64, i8* }*, { i64, i8* }** %2345
  %3093 = load i64, i64* %3083
  %3094 = call i64 @nyx_array_get_checked({ i64, i8* }* %3092, i64 %3093, i64 2)
  %3095 = inttoptr i64 %3094 to %nyx_string*
  %3096 = alloca %nyx_string*
  store %nyx_string* %3095, %nyx_string** %3096
  %3097 = load %nyx_string*, %nyx_string** %3086
  %3098 = load %nyx_string*, %nyx_string** %3096
  %3099 = call %nyx_string* @nyx_string_concat(%nyx_string* %3097, %nyx_string* %3098)
  %3100 = call i8* @nyx_string_to_cstr(%nyx_string* %3099)
  call void @nyx_print_string(i8* %3100)
  %3101 = load i64, i64* %3083
  %3102 = add i64 %3101, 1
  store i64 %3102, i64* %3083
  br label %while_cond538
while_end540:
  br label %merge537
else536:
  br label %merge537
merge537:
  %3103 = getelementptr [10 x i8], [10 x i8]* @.str316, i32 0, i32 0
  %3104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3103, i64 9)
  %3105 = load i64, i64* %2800
  %3106 = call %nyx_string* @nyx_string_from_int(i64 %3105)
  %3107 = call %nyx_string* @nyx_string_concat(%nyx_string* %3104, %nyx_string* %3106)
  %3108 = getelementptr [2 x i8], [2 x i8]* @.str317, i32 0, i32 0
  %3109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3108, i64 1)
  %3110 = call %nyx_string* @nyx_string_concat(%nyx_string* %3107, %nyx_string* %3109)
  %3111 = load i64, i64* %2801
  %3112 = call %nyx_string* @nyx_string_from_int(i64 %3111)
  %3113 = call %nyx_string* @nyx_string_concat(%nyx_string* %3110, %nyx_string* %3112)
  %3114 = getelementptr [20 x i8], [20 x i8]* @.str318, i32 0, i32 0
  %3115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3114, i64 19)
  %3116 = call %nyx_string* @nyx_string_concat(%nyx_string* %3113, %nyx_string* %3115)
  %3117 = call i8* @nyx_string_to_cstr(%nyx_string* %3116)
  call void @nyx_print_string(i8* %3117)
  %3118 = load i1, i1* %want_lcov.ptr
  br i1 %3118, label %then541, label %else542
then541:
  %3119 = getelementptr [11 x i8], [11 x i8]* @.str319, i32 0, i32 0
  %3120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3119, i64 10)
  %3121 = load %nyx_string*, %nyx_string** %2331
  %3122 = call %nyx_string* @nyx_string_concat(%nyx_string* %3120, %nyx_string* %3121)
  %3123 = getelementptr [9 x i8], [9 x i8]* @.str320, i32 0, i32 0
  %3124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3123, i64 8)
  %3125 = call %nyx_string* @nyx_string_concat(%nyx_string* %3122, %nyx_string* %3124)
  %3126 = call i8* @nyx_string_to_cstr(%nyx_string* %3125)
  %3127 = call i64 @nyx_exec_code(i8* %3126)
  %3128 = load %nyx_string*, %nyx_string** %2331
  %3129 = getelementptr [22 x i8], [22 x i8]* @.str321, i32 0, i32 0
  %3130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3129, i64 21)
  %3131 = call %nyx_string* @nyx_string_concat(%nyx_string* %3128, %nyx_string* %3130)
  %3132 = load %nyx_string*, %nyx_string** %2799
  %3133 = ptrtoint %nyx_string* %3132 to i64
  %3134 = call i8* @nyx_string_to_cstr(%nyx_string* %3131)
  %3135 = inttoptr i64 %3133 to %nyx_string*
  %3136 = call i1 @nyx_write_file_safe(i8* %3134, %nyx_string* %3135)
  %3137 = getelementptr [29 x i8], [29 x i8]* @.str322, i32 0, i32 0
  %3138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3137, i64 28)
  %3139 = call i8* @nyx_string_to_cstr(%nyx_string* %3138)
  call void @nyx_print_string(i8* %3139)
  br label %merge543
else542:
  br label %merge543
merge543:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3140 = getelementptr [115 x i8], [115 x i8]* @.str323, i32 0, i32 0
  %3141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3140, i64 114)
  %3142 = call i8* @nyx_string_to_cstr(%nyx_string* %3141)
  call void @nyx_print_string(i8* %3142)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3143 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %3144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3143, i64 4)
  %3145 = load %nyx_string*, %nyx_string** %nh.ptr
  %3146 = call %nyx_string* @nyx_string_concat(%nyx_string* %3144, %nyx_string* %3145)
  %3147 = getelementptr [66 x i8], [66 x i8]* @.str325, i32 0, i32 0
  %3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3147, i64 65)
  %3149 = call %nyx_string* @nyx_string_concat(%nyx_string* %3146, %nyx_string* %3148)
  %3150 = call i8* @nyx_string_to_cstr(%nyx_string* %3149)
  %3151 = call %nyx_string* @nyx_exec(i8* %3150)
  %3152 = call %nyx_string* @nyx_string_trim(%nyx_string* %3151)
  ret %nyx_string* %3152
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3153 = getelementptr [5 x i8], [5 x i8]* @.str326, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3153, i64 4)
  %3155 = load %nyx_string*, %nyx_string** %nh.ptr
  %3156 = call %nyx_string* @nyx_string_concat(%nyx_string* %3154, %nyx_string* %3155)
  %3157 = getelementptr [74 x i8], [74 x i8]* @.str327, i32 0, i32 0
  %3158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3157, i64 73)
  %3159 = call %nyx_string* @nyx_string_concat(%nyx_string* %3156, %nyx_string* %3158)
  %3160 = call i8* @nyx_string_to_cstr(%nyx_string* %3159)
  %3161 = call %nyx_string* @nyx_exec(i8* %3160)
  %3162 = call %nyx_string* @nyx_string_trim(%nyx_string* %3161)
  ret %nyx_string* %3162
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3163 = getelementptr [24 x i8], [24 x i8]* @.str328, i32 0, i32 0
  %3164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3163, i64 23)
  %3165 = call i8* @nyx_string_to_cstr(%nyx_string* %3164)
  call void @nyx_print_string(i8* %3165)
  %3166 = getelementptr [9 x i8], [9 x i8]* @.str329, i32 0, i32 0
  %3167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3166, i64 8)
  %3168 = call i8* @nyx_string_to_cstr(%nyx_string* %3167)
  %3169 = call %nyx_string* @nyx_getenv(i8* %3168)
  %3170 = alloca %nyx_string*
  store %nyx_string* %3169, %nyx_string** %3170
  %3171 = load %nyx_string*, %nyx_string** %3170
  %3172 = getelementptr [9 x i8], [9 x i8]* @.str330, i32 0, i32 0
  %3173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3172, i64 8)
  %3174 = call %nyx_string* @nyx_string_concat(%nyx_string* %3171, %nyx_string* %3173)
  %3175 = call i8* @nyx_string_to_cstr(%nyx_string* %3174)
  %3176 = call %nyx_string* @nyx_read_file(i8* %3175)
  %3177 = call %nyx_string* @nyx_string_trim(%nyx_string* %3176)
  %3178 = alloca %nyx_string*
  store %nyx_string* %3177, %nyx_string** %3178
  %3179 = load %nyx_string*, %nyx_string** %3170
  %3180 = call %nyx_string* @huella_compilador(%nyx_string* %3179)
  %3181 = alloca %nyx_string*
  store %nyx_string* %3180, %nyx_string** %3181
  %3182 = load %nyx_string*, %nyx_string** %3170
  %3183 = call %nyx_string* @huella_resto(%nyx_string* %3182)
  %3184 = alloca %nyx_string*
  store %nyx_string* %3183, %nyx_string** %3184
  %3185 = getelementptr [18 x i8], [18 x i8]* @.str331, i32 0, i32 0
  %3186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3185, i64 17)
  %3187 = load %nyx_string*, %nyx_string** %3178
  %3188 = call %nyx_string* @nyx_string_concat(%nyx_string* %3186, %nyx_string* %3187)
  %3189 = getelementptr [17 x i8], [17 x i8]* @.str332, i32 0, i32 0
  %3190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3189, i64 16)
  %3191 = call %nyx_string* @nyx_string_concat(%nyx_string* %3188, %nyx_string* %3190)
  %3192 = load %nyx_string*, %nyx_string** %3181
  %3193 = call %nyx_string* @nyx_string_concat(%nyx_string* %3191, %nyx_string* %3192)
  %3194 = getelementptr [2 x i8], [2 x i8]* @.str333, i32 0, i32 0
  %3195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3194, i64 1)
  %3196 = call %nyx_string* @nyx_string_concat(%nyx_string* %3193, %nyx_string* %3195)
  %3197 = call i8* @nyx_string_to_cstr(%nyx_string* %3196)
  call void @nyx_print_string(i8* %3197)
  %3198 = call %TestConfig @load_test_config()
  %3199 = alloca %TestConfig
  store %TestConfig %3198, %TestConfig* %3199
  %3200 = call { i64, i8* }* @nyx_get_args()
  %3201 = alloca { i64, i8* }*
  store { i64, i8* }* %3200, { i64, i8* }** %3201
  %3202 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %3203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3202, i64 0)
  %3204 = alloca %nyx_string*
  store %nyx_string* %3203, %nyx_string** %3204
  %3205 = alloca i64
  store i64 1, i64* %3205
  %3206 = getelementptr [9 x i8], [9 x i8]* @.str335, i32 0, i32 0
  %3207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3206, i64 8)
  %3208 = alloca %nyx_string*
  store %nyx_string* %3207, %nyx_string** %3208
  %3209 = getelementptr [10 x i8], [10 x i8]* @.str336, i32 0, i32 0
  %3210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3209, i64 9)
  %3211 = alloca %nyx_string*
  store %nyx_string* %3210, %nyx_string** %3211
  %3212 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %3213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3212, i64 2)
  %3214 = alloca %nyx_string*
  store %nyx_string* %3213, %nyx_string** %3214
  %3215 = getelementptr [10 x i8], [10 x i8]* @.str338, i32 0, i32 0
  %3216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3215, i64 9)
  %3217 = alloca %nyx_string*
  store %nyx_string* %3216, %nyx_string** %3217
  %3218 = getelementptr [10 x i8], [10 x i8]* @.str339, i32 0, i32 0
  %3219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3218, i64 9)
  %3220 = alloca %nyx_string*
  store %nyx_string* %3219, %nyx_string** %3220
  %3221 = getelementptr [11 x i8], [11 x i8]* @.str340, i32 0, i32 0
  %3222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3221, i64 10)
  %3223 = alloca %nyx_string*
  store %nyx_string* %3222, %nyx_string** %3223
  %3224 = getelementptr [16 x i8], [16 x i8]* @.str341, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3224, i64 15)
  %3226 = alloca %nyx_string*
  store %nyx_string* %3225, %nyx_string** %3226
  %3227 = getelementptr [8 x i8], [8 x i8]* @.str342, i32 0, i32 0
  %3228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3227, i64 7)
  %3229 = alloca %nyx_string*
  store %nyx_string* %3228, %nyx_string** %3229
  %3230 = getelementptr [12 x i8], [12 x i8]* @.str343, i32 0, i32 0
  %3231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3230, i64 11)
  %3232 = alloca %nyx_string*
  store %nyx_string* %3231, %nyx_string** %3232
  %3233 = getelementptr [24 x i8], [24 x i8]* @.str344, i32 0, i32 0
  %3234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3233, i64 23)
  %3235 = alloca %nyx_string*
  store %nyx_string* %3234, %nyx_string** %3235
  %3236 = getelementptr [106 x i8], [106 x i8]* @.str345, i32 0, i32 0
  %3237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3236, i64 105)
  %3238 = alloca %nyx_string*
  store %nyx_string* %3237, %nyx_string** %3238
  %3239 = getelementptr [9 x i8], [9 x i8]* @.str346, i32 0, i32 0
  %3240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3239, i64 8)
  %3241 = alloca %nyx_string*
  store %nyx_string* %3240, %nyx_string** %3241
  %3242 = getelementptr [10 x i8], [10 x i8]* @.str347, i32 0, i32 0
  %3243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3242, i64 9)
  %3244 = alloca %nyx_string*
  store %nyx_string* %3243, %nyx_string** %3244
  %3245 = getelementptr [2 x i8], [2 x i8]* @.str348, i32 0, i32 0
  %3246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3245, i64 1)
  %3247 = alloca %nyx_string*
  store %nyx_string* %3246, %nyx_string** %3247
  %3248 = getelementptr [4 x i8], [4 x i8]* @.str349, i32 0, i32 0
  %3249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3248, i64 3)
  %3250 = alloca %nyx_string*
  store %nyx_string* %3249, %nyx_string** %3250
  %3251 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %3252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3251, i64 1)
  %3253 = alloca %nyx_string*
  store %nyx_string* %3252, %nyx_string** %3253
  %3254 = call i8* @llvm.stacksave()
  br label %while_cond544
while_cond544:
  %3255 = load i64, i64* %3205
  %3256 = load { i64, i8* }*, { i64, i8* }** %3201
  %3257 = call i64 @nyx_array_length({ i64, i8* }* %3256)
  %3258 = icmp slt i64 %3255, %3257
  br i1 %3258, label %while_body545, label %while_end546
while_body545:
  call void @llvm.stackrestore(i8* %3254)
  %3259 = load { i64, i8* }*, { i64, i8* }** %3201
  %3260 = load i64, i64* %3205
  %3261 = call i64 @nyx_array_get_checked({ i64, i8* }* %3259, i64 %3260, i64 2)
  %3262 = inttoptr i64 %3261 to %nyx_string*
  %3263 = alloca %nyx_string*
  store %nyx_string* %3262, %nyx_string** %3263
  %3264 = alloca i1
  store i1 false, i1* %3264
  %3265 = load %nyx_string*, %nyx_string** %3263
  %3266 = load %nyx_string*, %nyx_string** %3208
  %3267 = call i1 @nyx_string_equals(%nyx_string* %3265, %nyx_string* %3266)
  br i1 %3267, label %sc_and_rhs547, label %sc_and_end548
sc_and_rhs547:
  %3268 = load i64, i64* %3205
  %3269 = add i64 %3268, 1
  %3270 = load { i64, i8* }*, { i64, i8* }** %3201
  %3271 = call i64 @nyx_array_length({ i64, i8* }* %3270)
  %3272 = icmp slt i64 %3269, %3271
  store i1 %3272, i1* %3264
  br label %sc_and_end548
sc_and_end548:
  %3273 = load i1, i1* %3264
  br i1 %3273, label %then549, label %else550
then549:
  %3274 = load i64, i64* %3205
  %3275 = add i64 %3274, 1
  store i64 %3275, i64* %3205
  %3276 = load { i64, i8* }*, { i64, i8* }** %3201
  %3277 = load i64, i64* %3205
  %3278 = call i64 @nyx_array_get_checked({ i64, i8* }* %3276, i64 %3277, i64 2)
  %3279 = inttoptr i64 %3278 to %nyx_string*
  %3280 = alloca %nyx_string*
  store %nyx_string* %3279, %nyx_string** %3280
  %3281 = load %nyx_string*, %nyx_string** %3280
  %3282 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 2
  store %nyx_string* %3281, %nyx_string** %3282
  br label %merge551
else550:
  %3283 = alloca i1
  store i1 true, i1* %3283
  %3284 = load %nyx_string*, %nyx_string** %3263
  %3285 = load %nyx_string*, %nyx_string** %3211
  %3286 = call i1 @nyx_string_equals(%nyx_string* %3284, %nyx_string* %3285)
  br i1 %3286, label %sc_or_end553, label %sc_or_rhs552
sc_or_rhs552:
  %3287 = load %nyx_string*, %nyx_string** %3263
  %3288 = load %nyx_string*, %nyx_string** %3214
  %3289 = call i1 @nyx_string_equals(%nyx_string* %3287, %nyx_string* %3288)
  store i1 %3289, i1* %3283
  br label %sc_or_end553
sc_or_end553:
  %3290 = load i1, i1* %3283
  br i1 %3290, label %then554, label %else555
then554:
  %3291 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 3
  store i1 1, i1* %3291
  br label %merge556
else555:
  %3292 = alloca i1
  store i1 false, i1* %3292
  %3293 = load %nyx_string*, %nyx_string** %3263
  %3294 = load %nyx_string*, %nyx_string** %3217
  %3295 = call i1 @nyx_string_equals(%nyx_string* %3293, %nyx_string* %3294)
  br i1 %3295, label %sc_and_rhs557, label %sc_and_end558
sc_and_rhs557:
  %3296 = load i64, i64* %3205
  %3297 = add i64 %3296, 1
  %3298 = load { i64, i8* }*, { i64, i8* }** %3201
  %3299 = call i64 @nyx_array_length({ i64, i8* }* %3298)
  %3300 = icmp slt i64 %3297, %3299
  store i1 %3300, i1* %3292
  br label %sc_and_end558
sc_and_end558:
  %3301 = load i1, i1* %3292
  br i1 %3301, label %then559, label %else560
then559:
  %3302 = load i64, i64* %3205
  %3303 = add i64 %3302, 1
  store i64 %3303, i64* %3205
  %3304 = load { i64, i8* }*, { i64, i8* }** %3201
  %3305 = load i64, i64* %3205
  %3306 = call i64 @nyx_array_get_checked({ i64, i8* }* %3304, i64 %3305, i64 2)
  %3307 = inttoptr i64 %3306 to %nyx_string*
  %3308 = alloca %nyx_string*
  store %nyx_string* %3307, %nyx_string** %3308
  %3309 = load %nyx_string*, %nyx_string** %3308
  %3310 = call i64 @nyx_string_to_int(%nyx_string* %3309)
  %3311 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 1
  store i64 %3310, i64* %3311
  br label %merge561
else560:
  %3312 = load %nyx_string*, %nyx_string** %3263
  %3313 = load %nyx_string*, %nyx_string** %3220
  %3314 = call i1 @nyx_string_equals(%nyx_string* %3312, %nyx_string* %3313)
  br i1 %3314, label %then562, label %else563
then562:
  %3315 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 7
  store i1 1, i1* %3315
  br label %merge564
else563:
  %3316 = load %nyx_string*, %nyx_string** %3263
  %3317 = load %nyx_string*, %nyx_string** %3223
  %3318 = call i1 @nyx_string_equals(%nyx_string* %3316, %nyx_string* %3317)
  br i1 %3318, label %then565, label %else566
then565:
  %3319 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 5
  store i1 1, i1* %3319
  br label %merge567
else566:
  %3320 = load %nyx_string*, %nyx_string** %3263
  %3321 = load %nyx_string*, %nyx_string** %3226
  %3322 = call i1 @nyx_string_equals(%nyx_string* %3320, %nyx_string* %3321)
  br i1 %3322, label %then568, label %else569
then568:
  %3323 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 5
  store i1 1, i1* %3323
  %3324 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 6
  store i1 1, i1* %3324
  br label %merge570
else569:
  %3325 = alloca i1
  store i1 true, i1* %3325
  %3326 = load %nyx_string*, %nyx_string** %3263
  %3327 = load %nyx_string*, %nyx_string** %3229
  %3328 = call i1 @nyx_string_equals(%nyx_string* %3326, %nyx_string* %3327)
  br i1 %3328, label %sc_or_end572, label %sc_or_rhs571
sc_or_rhs571:
  %3329 = load %nyx_string*, %nyx_string** %3263
  %3330 = load %nyx_string*, %nyx_string** %3232
  %3331 = call i1 @nyx_string_starts_with(%nyx_string* %3329, %nyx_string* %3330)
  store i1 %3331, i1* %3325
  br label %sc_or_end572
sc_or_end572:
  %3332 = load i1, i1* %3325
  br i1 %3332, label %then573, label %else574
then573:
  %3333 = load %nyx_string*, %nyx_string** %3235
  %3334 = load %nyx_string*, %nyx_string** %3263
  %3335 = call %nyx_string* @nyx_string_concat(%nyx_string* %3333, %nyx_string* %3334)
  %3336 = call i8* @nyx_string_to_cstr(%nyx_string* %3335)
  call void @nyx_print_string(i8* %3336)
  %3337 = load %nyx_string*, %nyx_string** %3238
  %3338 = call i8* @nyx_string_to_cstr(%nyx_string* %3337)
  call void @nyx_print_string(i8* %3338)
  %3339 = call i64 @print_valid_options()
  ret i64 1
else574:
  %3340 = alloca i1
  store i1 true, i1* %3340
  %3341 = load %nyx_string*, %nyx_string** %3263
  %3342 = load %nyx_string*, %nyx_string** %3241
  %3343 = call i1 @nyx_string_equals(%nyx_string* %3341, %nyx_string* %3342)
  br i1 %3343, label %sc_or_end577, label %sc_or_rhs576
sc_or_rhs576:
  %3344 = load %nyx_string*, %nyx_string** %3263
  %3345 = load %nyx_string*, %nyx_string** %3244
  %3346 = call i1 @nyx_string_starts_with(%nyx_string* %3344, %nyx_string* %3345)
  store i1 %3346, i1* %3340
  br label %sc_or_end577
sc_or_end577:
  %3347 = load i1, i1* %3340
  br i1 %3347, label %then578, label %else579
then578:
  %3348 = load %nyx_string*, %nyx_string** %3263
  store %nyx_string* %3348, %nyx_string** %3204
  %3349 = alloca i1
  store i1 false, i1* %3349
  %3350 = load %nyx_string*, %nyx_string** %3263
  %3351 = load %nyx_string*, %nyx_string** %3241
  %3352 = call i1 @nyx_string_equals(%nyx_string* %3350, %nyx_string* %3351)
  br i1 %3352, label %sc_and_rhs581, label %sc_and_end582
sc_and_rhs581:
  %3353 = load i64, i64* %3205
  %3354 = add i64 %3353, 1
  %3355 = load { i64, i8* }*, { i64, i8* }** %3201
  %3356 = call i64 @nyx_array_length({ i64, i8* }* %3355)
  %3357 = icmp slt i64 %3354, %3356
  store i1 %3357, i1* %3349
  br label %sc_and_end582
sc_and_end582:
  %3358 = load i1, i1* %3349
  br i1 %3358, label %then583, label %else584
then583:
  %3359 = load i64, i64* %3205
  %3360 = add i64 %3359, 1
  store i64 %3360, i64* %3205
  %3361 = load { i64, i8* }*, { i64, i8* }** %3201
  %3362 = load i64, i64* %3205
  %3363 = call i64 @nyx_array_get_checked({ i64, i8* }* %3361, i64 %3362, i64 2)
  %3364 = inttoptr i64 %3363 to %nyx_string*
  %3365 = alloca %nyx_string*
  store %nyx_string* %3364, %nyx_string** %3365
  %3366 = load %nyx_string*, %nyx_string** %3263
  %3367 = load %nyx_string*, %nyx_string** %3247
  %3368 = call %nyx_string* @nyx_string_concat(%nyx_string* %3366, %nyx_string* %3367)
  %3369 = load %nyx_string*, %nyx_string** %3365
  %3370 = call %nyx_string* @nyx_string_concat(%nyx_string* %3368, %nyx_string* %3369)
  store %nyx_string* %3370, %nyx_string** %3204
  br label %merge585
else584:
  br label %merge585
merge585:
  br label %merge580
else579:
  %3371 = alloca i1
  store i1 true, i1* %3371
  %3372 = load %nyx_string*, %nyx_string** %3263
  %3373 = load %nyx_string*, %nyx_string** %3208
  %3374 = call i1 @nyx_string_equals(%nyx_string* %3372, %nyx_string* %3373)
  br i1 %3374, label %sc_or_end587, label %sc_or_rhs586
sc_or_rhs586:
  %3375 = load %nyx_string*, %nyx_string** %3263
  %3376 = load %nyx_string*, %nyx_string** %3217
  %3377 = call i1 @nyx_string_equals(%nyx_string* %3375, %nyx_string* %3376)
  store i1 %3377, i1* %3371
  br label %sc_or_end587
sc_or_end587:
  %3378 = load i1, i1* %3371
  br i1 %3378, label %then588, label %else589
then588:
  br label %merge590
else589:
  %3379 = load %nyx_string*, %nyx_string** %3263
  %3380 = load %nyx_string*, %nyx_string** %3250
  %3381 = call i1 @nyx_string_ends_with(%nyx_string* %3379, %nyx_string* %3380)
  br i1 %3381, label %then591, label %else592
then591:
  %3382 = load %nyx_string*, %nyx_string** %3263
  %3383 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 4
  store %nyx_string* %3382, %nyx_string** %3383
  br label %merge593
else592:
  %3384 = load %nyx_string*, %nyx_string** %3263
  %3385 = load %nyx_string*, %nyx_string** %3253
  %3386 = call i1 @nyx_string_starts_with(%nyx_string* %3384, %nyx_string* %3385)
  br i1 %3386, label %then594, label %else595
then594:
  %3387 = load %nyx_string*, %nyx_string** %3235
  %3388 = load %nyx_string*, %nyx_string** %3263
  %3389 = call %nyx_string* @nyx_string_concat(%nyx_string* %3387, %nyx_string* %3388)
  %3390 = call i8* @nyx_string_to_cstr(%nyx_string* %3389)
  call void @nyx_print_string(i8* %3390)
  %3391 = call i64 @print_valid_options()
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
  %3392 = load i64, i64* %3205
  %3393 = add i64 %3392, 1
  store i64 %3393, i64* %3205
  br label %while_cond544
while_end546:
  %3394 = load %nyx_string*, %nyx_string** %3204
  %3395 = getelementptr [1 x i8], [1 x i8]* @.str351, i32 0, i32 0
  %3396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3395, i64 0)
  %3397 = call i1 @nyx_string_equals(%nyx_string* %3394, %nyx_string* %3396)
  %3398 = xor i1 %3397, true
  br i1 %3398, label %then597, label %else598
then597:
  %3399 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 5
  %3400 = load i1, i1* %3399
  br i1 %3400, label %then600, label %else601
then600:
  %3401 = getelementptr [47 x i8], [47 x i8]* @.str352, i32 0, i32 0
  %3402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3401, i64 46)
  %3403 = load %nyx_string*, %nyx_string** %3204
  %3404 = call %nyx_string* @nyx_string_concat(%nyx_string* %3402, %nyx_string* %3403)
  %3405 = getelementptr [58 x i8], [58 x i8]* @.str353, i32 0, i32 0
  %3406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3405, i64 57)
  %3407 = call %nyx_string* @nyx_string_concat(%nyx_string* %3404, %nyx_string* %3406)
  %3408 = call i8* @nyx_string_to_cstr(%nyx_string* %3407)
  call void @nyx_print_string(i8* %3408)
  br label %merge602
else601:
  %3409 = getelementptr [24 x i8], [24 x i8]* @.str354, i32 0, i32 0
  %3410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3409, i64 23)
  %3411 = load %nyx_string*, %nyx_string** %3204
  %3412 = call %nyx_string* @nyx_string_concat(%nyx_string* %3410, %nyx_string* %3411)
  %3413 = call i8* @nyx_string_to_cstr(%nyx_string* %3412)
  call void @nyx_print_string(i8* %3413)
  br label %merge602
merge602:
  %3414 = call i64 @print_valid_options()
  ret i64 1
else598:
  br label %merge599
merge599:
  %3415 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %3416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3415, i64 0)
  %3417 = alloca %nyx_string*
  store %nyx_string* %3416, %nyx_string** %3417
  %3418 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %3419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3418, i64 0)
  %3420 = alloca %nyx_string*
  store %nyx_string* %3419, %nyx_string** %3420
  %3421 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 5
  %3422 = load i1, i1* %3421
  br i1 %3422, label %then603, label %else604
then603:
  %3423 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3423, %nyx_string** %3417
  %3424 = load %nyx_string*, %nyx_string** %3417
  %3425 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %3426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3425, i64 0)
  %3427 = call i1 @nyx_string_equals(%nyx_string* %3424, %nyx_string* %3426)
  br i1 %3427, label %then606, label %else607
then606:
  %3428 = call %nyx_string* @cov_clang_major()
  %3429 = alloca %nyx_string*
  store %nyx_string* %3428, %nyx_string** %3429
  %3430 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %3431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3430, i64 4)
  %3432 = alloca %nyx_string*
  store %nyx_string* %3431, %nyx_string** %3432
  %3433 = load %nyx_string*, %nyx_string** %3429
  %3434 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %3435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3434, i64 0)
  %3436 = call i1 @nyx_string_equals(%nyx_string* %3433, %nyx_string* %3435)
  %3437 = xor i1 %3436, true
  br i1 %3437, label %then609, label %else610
then609:
  %3438 = getelementptr [6 x i8], [6 x i8]* @.str360, i32 0, i32 0
  %3439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3438, i64 5)
  %3440 = load %nyx_string*, %nyx_string** %3429
  %3441 = call %nyx_string* @nyx_string_concat(%nyx_string* %3439, %nyx_string* %3440)
  store %nyx_string* %3441, %nyx_string** %3432
  br label %merge611
else610:
  br label %merge611
merge611:
  %3442 = getelementptr [101 x i8], [101 x i8]* @.str361, i32 0, i32 0
  %3443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3442, i64 100)
  %3444 = call i8* @nyx_string_to_cstr(%nyx_string* %3443)
  call void @nyx_print_string(i8* %3444)
  %3445 = getelementptr [35 x i8], [35 x i8]* @.str362, i32 0, i32 0
  %3446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3445, i64 34)
  %3447 = load %nyx_string*, %nyx_string** %3432
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3446, %nyx_string* %3447)
  %3449 = call i8* @nyx_string_to_cstr(%nyx_string* %3448)
  call void @nyx_print_string(i8* %3449)
  %3450 = getelementptr [82 x i8], [82 x i8]* @.str363, i32 0, i32 0
  %3451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3450, i64 81)
  %3452 = call i8* @nyx_string_to_cstr(%nyx_string* %3451)
  call void @nyx_print_string(i8* %3452)
  %3453 = getelementptr [82 x i8], [82 x i8]* @.str364, i32 0, i32 0
  %3454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3453, i64 81)
  %3455 = call i8* @nyx_string_to_cstr(%nyx_string* %3454)
  call void @nyx_print_string(i8* %3455)
  ret i64 1
else607:
  br label %merge608
merge608:
  %3456 = getelementptr [30 x i8], [30 x i8]* @.str365, i32 0, i32 0
  %3457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3456, i64 29)
  %3458 = call i8* @nyx_string_to_cstr(%nyx_string* %3457)
  %3459 = call %nyx_string* @nyx_exec(i8* %3458)
  %3460 = call %nyx_string* @nyx_string_trim(%nyx_string* %3459)
  store %nyx_string* %3460, %nyx_string** %3420
  %3461 = load %nyx_string*, %nyx_string** %3420
  %3462 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %3463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3462, i64 0)
  %3464 = call i1 @nyx_string_equals(%nyx_string* %3461, %nyx_string* %3463)
  br i1 %3464, label %then612, label %else613
then612:
  %3465 = getelementptr [55 x i8], [55 x i8]* @.str367, i32 0, i32 0
  %3466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3465, i64 54)
  %3467 = call i8* @nyx_string_to_cstr(%nyx_string* %3466)
  call void @nyx_print_string(i8* %3467)
  ret i64 1
else613:
  br label %merge614
merge614:
  br label %merge605
else604:
  br label %merge605
merge605:
  %3468 = call { i64, i8* }* @nyx_array_new_ptr()
  %3469 = alloca { i64, i8* }*
  store { i64, i8* }* %3468, { i64, i8* }** %3469
  %3470 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 4
  %3471 = load %nyx_string*, %nyx_string** %3470
  %3472 = getelementptr [1 x i8], [1 x i8]* @.str368, i32 0, i32 0
  %3473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3472, i64 0)
  %3474 = call i1 @nyx_string_equals(%nyx_string* %3471, %nyx_string* %3473)
  %3475 = xor i1 %3474, true
  br i1 %3475, label %then615, label %else616
then615:
  %3476 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 4
  %3477 = load %nyx_string*, %nyx_string** %3476
  %3478 = call i8* @nyx_string_to_cstr(%nyx_string* %3477)
  %3479 = call i1 @nyx_file_exists(i8* %3478)
  %3480 = xor i1 %3479, true
  br i1 %3480, label %then618, label %else619
then618:
  %3481 = getelementptr [24 x i8], [24 x i8]* @.str369, i32 0, i32 0
  %3482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3481, i64 23)
  %3483 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 4
  %3484 = load %nyx_string*, %nyx_string** %3483
  %3485 = call %nyx_string* @nyx_string_concat(%nyx_string* %3482, %nyx_string* %3484)
  %3486 = call i8* @nyx_string_to_cstr(%nyx_string* %3485)
  call void @nyx_print_string(i8* %3486)
  ret i64 1
else619:
  br label %merge620
merge620:
  %3487 = load { i64, i8* }*, { i64, i8* }** %3469
  %3488 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 4
  %3489 = load %nyx_string*, %nyx_string** %3488
  %3490 = ptrtoint %nyx_string* %3489 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3487, i64 %3490, i64 2)
  br label %merge617
else616:
  %3491 = load %TestConfig, %TestConfig* %3199
  %3492 = call { i64, i8* }* @discover_tests(%TestConfig %3491)
  store { i64, i8* }* %3492, { i64, i8* }** %3469
  br label %merge617
merge617:
  %3493 = load { i64, i8* }*, { i64, i8* }** %3469
  %3494 = call i64 @nyx_array_length({ i64, i8* }* %3493)
  %3495 = icmp eq i64 %3494, 0
  br i1 %3495, label %then621, label %else622
then621:
  %3496 = getelementptr [23 x i8], [23 x i8]* @.str370, i32 0, i32 0
  %3497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3496, i64 22)
  %3498 = call i8* @nyx_string_to_cstr(%nyx_string* %3497)
  call void @nyx_print_string(i8* %3498)
  %3499 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 2
  %3500 = load %nyx_string*, %nyx_string** %3499
  %3501 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %3502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3501, i64 0)
  %3503 = call i1 @nyx_string_equals(%nyx_string* %3500, %nyx_string* %3502)
  %3504 = xor i1 %3503, true
  br i1 %3504, label %then624, label %else625
then624:
  %3505 = getelementptr [12 x i8], [12 x i8]* @.str372, i32 0, i32 0
  %3506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3505, i64 11)
  %3507 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 2
  %3508 = load %nyx_string*, %nyx_string** %3507
  %3509 = call %nyx_string* @nyx_string_concat(%nyx_string* %3506, %nyx_string* %3508)
  %3510 = getelementptr [2 x i8], [2 x i8]* @.str373, i32 0, i32 0
  %3511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3510, i64 1)
  %3512 = call %nyx_string* @nyx_string_concat(%nyx_string* %3509, %nyx_string* %3511)
  %3513 = call i8* @nyx_string_to_cstr(%nyx_string* %3512)
  call void @nyx_print_string(i8* %3513)
  br label %merge626
else625:
  br label %merge626
merge626:
  %3514 = getelementptr [14 x i8], [14 x i8]* @.str374, i32 0, i32 0
  %3515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3514, i64 13)
  %3516 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 0
  %3517 = load %nyx_string*, %nyx_string** %3516
  %3518 = call %nyx_string* @nyx_string_concat(%nyx_string* %3515, %nyx_string* %3517)
  %3519 = getelementptr [2 x i8], [2 x i8]* @.str375, i32 0, i32 0
  %3520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3519, i64 1)
  %3521 = call %nyx_string* @nyx_string_concat(%nyx_string* %3518, %nyx_string* %3520)
  %3522 = call i8* @nyx_string_to_cstr(%nyx_string* %3521)
  call void @nyx_print_string(i8* %3522)
  ret i64 0
else622:
  br label %merge623
merge623:
  %3523 = getelementptr [9 x i8], [9 x i8]* @.str376, i32 0, i32 0
  %3524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3523, i64 8)
  %3525 = load { i64, i8* }*, { i64, i8* }** %3469
  %3526 = call i64 @nyx_array_length({ i64, i8* }* %3525)
  %3527 = call %nyx_string* @nyx_string_from_int(i64 %3526)
  %3528 = call %nyx_string* @nyx_string_concat(%nyx_string* %3524, %nyx_string* %3527)
  %3529 = getelementptr [14 x i8], [14 x i8]* @.str377, i32 0, i32 0
  %3530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3529, i64 13)
  %3531 = call %nyx_string* @nyx_string_concat(%nyx_string* %3528, %nyx_string* %3530)
  %3532 = call i8* @nyx_string_to_cstr(%nyx_string* %3531)
  call void @nyx_print_string(i8* %3532)
  %3533 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 2
  %3534 = load %nyx_string*, %nyx_string** %3533
  %3535 = getelementptr [1 x i8], [1 x i8]* @.str378, i32 0, i32 0
  %3536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3535, i64 0)
  %3537 = call i1 @nyx_string_equals(%nyx_string* %3534, %nyx_string* %3536)
  %3538 = xor i1 %3537, true
  br i1 %3538, label %then627, label %else628
then627:
  %3539 = getelementptr [12 x i8], [12 x i8]* @.str379, i32 0, i32 0
  %3540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3539, i64 11)
  %3541 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 2
  %3542 = load %nyx_string*, %nyx_string** %3541
  %3543 = call %nyx_string* @nyx_string_concat(%nyx_string* %3540, %nyx_string* %3542)
  %3544 = getelementptr [2 x i8], [2 x i8]* @.str380, i32 0, i32 0
  %3545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3544, i64 1)
  %3546 = call %nyx_string* @nyx_string_concat(%nyx_string* %3543, %nyx_string* %3545)
  %3547 = call i8* @nyx_string_to_cstr(%nyx_string* %3546)
  call void @nyx_print_string(i8* %3547)
  br label %merge629
else628:
  br label %merge629
merge629:
  %3548 = getelementptr [1 x i8], [1 x i8]* @.str381, i32 0, i32 0
  %3549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3548, i64 0)
  %3550 = call i8* @nyx_string_to_cstr(%nyx_string* %3549)
  call void @nyx_print_string(i8* %3550)
  %3551 = alloca i1
  store i1 false, i1* %3551
  %3552 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 8
  %3553 = load %nyx_string*, %nyx_string** %3552
  %3554 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %3555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3554, i64 0)
  %3556 = call i1 @nyx_string_equals(%nyx_string* %3553, %nyx_string* %3555)
  %3557 = xor i1 %3556, true
  br i1 %3557, label %sc_and_rhs630, label %sc_and_end631
sc_and_rhs630:
  %3558 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 5
  %3559 = load i1, i1* %3558
  %3560 = xor i1 %3559, true
  store i1 %3560, i1* %3551
  br label %sc_and_end631
sc_and_end631:
  %3561 = load i1, i1* %3551
  br i1 %3561, label %then632, label %else633
then632:
  %3562 = getelementptr [9 x i8], [9 x i8]* @.str383, i32 0, i32 0
  %3563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3562, i64 8)
  %3564 = call i8* @nyx_string_to_cstr(%nyx_string* %3563)
  %3565 = call %nyx_string* @nyx_getenv(i8* %3564)
  %3566 = alloca %nyx_string*
  store %nyx_string* %3565, %nyx_string** %3566
  %3567 = load %nyx_string*, %nyx_string** %3566
  %3568 = getelementptr [11 x i8], [11 x i8]* @.str384, i32 0, i32 0
  %3569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3568, i64 10)
  %3570 = call %nyx_string* @nyx_string_concat(%nyx_string* %3567, %nyx_string* %3569)
  %3571 = alloca %nyx_string*
  store %nyx_string* %3570, %nyx_string** %3571
  %3572 = load %nyx_string*, %nyx_string** %3571
  %3573 = call i8* @nyx_string_to_cstr(%nyx_string* %3572)
  %3574 = call i1 @nyx_file_exists(i8* %3573)
  %3575 = xor i1 %3574, true
  br i1 %3575, label %then635, label %else636
then635:
  %3576 = load %nyx_string*, %nyx_string** %3566
  %3577 = getelementptr [15 x i8], [15 x i8]* @.str385, i32 0, i32 0
  %3578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3577, i64 14)
  %3579 = call %nyx_string* @nyx_string_concat(%nyx_string* %3576, %nyx_string* %3578)
  store %nyx_string* %3579, %nyx_string** %3571
  br label %merge637
else636:
  br label %merge637
merge637:
  %3580 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %3581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3580, i64 0)
  %3582 = alloca %nyx_string*
  store %nyx_string* %3581, %nyx_string** %3582
  %3583 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 7
  %3584 = load i1, i1* %3583
  br i1 %3584, label %then638, label %else639
then638:
  %3585 = getelementptr [11 x i8], [11 x i8]* @.str387, i32 0, i32 0
  %3586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3585, i64 10)
  store %nyx_string* %3586, %nyx_string** %3582
  br label %merge640
else639:
  br label %merge640
merge640:
  %3587 = getelementptr [33 x i8], [33 x i8]* @.str388, i32 0, i32 0
  %3588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3587, i64 32)
  %3589 = call i8* @nyx_string_to_cstr(%nyx_string* %3588)
  %3590 = call %nyx_string* @nyx_exec(i8* %3589)
  %3591 = call %nyx_string* @nyx_string_trim(%nyx_string* %3590)
  %3592 = alloca %nyx_string*
  store %nyx_string* %3591, %nyx_string** %3592
  %3593 = getelementptr [2 x i8], [2 x i8]* @.str389, i32 0, i32 0
  %3594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3593, i64 1)
  %3595 = load %nyx_string*, %nyx_string** %3571
  %3596 = call %nyx_string* @nyx_string_concat(%nyx_string* %3594, %nyx_string* %3595)
  %3597 = getelementptr [7 x i8], [7 x i8]* @.str390, i32 0, i32 0
  %3598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3597, i64 6)
  %3599 = call %nyx_string* @nyx_string_concat(%nyx_string* %3596, %nyx_string* %3598)
  %3600 = load %nyx_string*, %nyx_string** %3582
  %3601 = call %nyx_string* @nyx_string_concat(%nyx_string* %3599, %nyx_string* %3600)
  %3602 = getelementptr [5 x i8], [5 x i8]* @.str391, i32 0, i32 0
  %3603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3602, i64 4)
  %3604 = call %nyx_string* @nyx_string_concat(%nyx_string* %3601, %nyx_string* %3603)
  %3605 = load %nyx_string*, %nyx_string** %3592
  %3606 = call %nyx_string* @nyx_string_concat(%nyx_string* %3604, %nyx_string* %3605)
  %3607 = getelementptr [7 x i8], [7 x i8]* @.str392, i32 0, i32 0
  %3608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3607, i64 6)
  %3609 = call %nyx_string* @nyx_string_concat(%nyx_string* %3606, %nyx_string* %3608)
  %3610 = call i8* @nyx_string_to_cstr(%nyx_string* %3609)
  %3611 = call i64 @nyx_exec_code(i8* %3610)
  %3612 = alloca i64
  store i64 %3611, i64* %3612
  %3613 = load %nyx_string*, %nyx_string** %3592
  %3614 = call i8* @nyx_string_to_cstr(%nyx_string* %3613)
  %3615 = call %nyx_string* @nyx_read_file(i8* %3614)
  %3616 = alloca %nyx_string*
  store %nyx_string* %3615, %nyx_string** %3616
  %3617 = getelementptr [8 x i8], [8 x i8]* @.str393, i32 0, i32 0
  %3618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3617, i64 7)
  %3619 = load %nyx_string*, %nyx_string** %3592
  %3620 = call %nyx_string* @nyx_string_concat(%nyx_string* %3618, %nyx_string* %3619)
  %3621 = getelementptr [2 x i8], [2 x i8]* @.str394, i32 0, i32 0
  %3622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3621, i64 1)
  %3623 = call %nyx_string* @nyx_string_concat(%nyx_string* %3620, %nyx_string* %3622)
  %3624 = call i8* @nyx_string_to_cstr(%nyx_string* %3623)
  %3625 = call i64 @nyx_exec_code(i8* %3624)
  %3626 = load i64, i64* %3612
  %3627 = icmp ne i64 %3626, 0
  br i1 %3627, label %then641, label %else642
then641:
  %3628 = getelementptr [65 x i8], [65 x i8]* @.str395, i32 0, i32 0
  %3629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3628, i64 64)
  %3630 = call i8* @nyx_string_to_cstr(%nyx_string* %3629)
  call void @nyx_print_string(i8* %3630)
  %3631 = load %nyx_string*, %nyx_string** %3616
  %3632 = call i8* @nyx_string_to_cstr(%nyx_string* %3631)
  call void @nyx_print_string(i8* %3632)
  ret i64 1
else642:
  br label %merge643
merge643:
  %3633 = load %nyx_string*, %nyx_string** %3616
  %3634 = getelementptr [2 x i8], [2 x i8]* @.str396, i32 0, i32 0
  %3635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3634, i64 1)
  %3636 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3633, %nyx_string* %3635)
  %3637 = alloca { i64, i8* }*
  store { i64, i8* }* %3636, { i64, i8* }** %3637
  %3638 = alloca i64
  store i64 0, i64* %3638
  %3639 = alloca i64
  store i64 0, i64* %3639
  %3640 = alloca i64
  store i64 0, i64* %3640
  %3641 = getelementptr [13 x i8], [13 x i8]* @.str397, i32 0, i32 0
  %3642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3641, i64 12)
  %3643 = alloca %nyx_string*
  store %nyx_string* %3642, %nyx_string** %3643
  %3644 = getelementptr [6 x i8], [6 x i8]* @.str398, i32 0, i32 0
  %3645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3644, i64 5)
  %3646 = alloca %nyx_string*
  store %nyx_string* %3645, %nyx_string** %3646
  %3647 = getelementptr [8 x i8], [8 x i8]* @.str399, i32 0, i32 0
  %3648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3647, i64 7)
  %3649 = alloca %nyx_string*
  store %nyx_string* %3648, %nyx_string** %3649
  %3650 = getelementptr [4 x i8], [4 x i8]* @.str400, i32 0, i32 0
  %3651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3650, i64 3)
  %3652 = alloca %nyx_string*
  store %nyx_string* %3651, %nyx_string** %3652
  %3653 = call i8* @llvm.stacksave()
  br label %while_cond644
while_cond644:
  %3654 = load i64, i64* %3638
  %3655 = load { i64, i8* }*, { i64, i8* }** %3637
  %3656 = call i64 @nyx_array_length({ i64, i8* }* %3655)
  %3657 = icmp slt i64 %3654, %3656
  br i1 %3657, label %while_body645, label %while_end646
while_body645:
  call void @llvm.stackrestore(i8* %3653)
  %3658 = load { i64, i8* }*, { i64, i8* }** %3637
  %3659 = load i64, i64* %3638
  %3660 = call i64 @nyx_array_get_checked({ i64, i8* }* %3658, i64 %3659, i64 2)
  %3661 = inttoptr i64 %3660 to %nyx_string*
  %3662 = alloca %nyx_string*
  store %nyx_string* %3661, %nyx_string** %3662
  %3663 = load %nyx_string*, %nyx_string** %3662
  %3664 = load %nyx_string*, %nyx_string** %3643
  %3665 = call i1 @nyx_string_starts_with(%nyx_string* %3663, %nyx_string* %3664)
  br i1 %3665, label %then647, label %else648
then647:
  %3666 = load %nyx_string*, %nyx_string** %3662
  %3667 = load %nyx_string*, %nyx_string** %3662
  %3668 = call i64 @nyx_string_byte_length(%nyx_string* %3667)
  %3669 = call %nyx_string* @nyx_string_substring(%nyx_string* %3666, i64 12, i64 %3668)
  %3670 = call %nyx_string* @nyx_string_trim(%nyx_string* %3669)
  %3671 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 9
  store %nyx_string* %3670, %nyx_string** %3671
  br label %merge649
else648:
  br label %merge649
merge649:
  %3672 = load %nyx_string*, %nyx_string** %3662
  %3673 = load %nyx_string*, %nyx_string** %3646
  %3674 = call i1 @nyx_string_contains(%nyx_string* %3672, %nyx_string* %3673)
  br i1 %3674, label %then650, label %else651
then650:
  %3675 = load i64, i64* %3639
  %3676 = add i64 %3675, 1
  store i64 %3676, i64* %3639
  br label %merge652
else651:
  br label %merge652
merge652:
  %3677 = load %nyx_string*, %nyx_string** %3662
  %3678 = load %nyx_string*, %nyx_string** %3649
  %3679 = call i1 @nyx_string_contains(%nyx_string* %3677, %nyx_string* %3678)
  br i1 %3679, label %then653, label %else654
then653:
  %3680 = load i64, i64* %3640
  %3681 = add i64 %3680, 1
  store i64 %3681, i64* %3640
  br label %merge655
else654:
  br label %merge655
merge655:
  %3682 = load %nyx_string*, %nyx_string** %3662
  %3683 = load %nyx_string*, %nyx_string** %3652
  %3684 = call i1 @nyx_string_contains(%nyx_string* %3682, %nyx_string* %3683)
  br i1 %3684, label %then656, label %else657
then656:
  %3685 = load %nyx_string*, %nyx_string** %3662
  %3686 = call i8* @nyx_string_to_cstr(%nyx_string* %3685)
  call void @nyx_print_string(i8* %3686)
  br label %merge658
else657:
  br label %merge658
merge658:
  %3687 = load i64, i64* %3638
  %3688 = add i64 %3687, 1
  store i64 %3688, i64* %3638
  br label %while_cond644
while_end646:
  %3689 = getelementptr [18 x i8], [18 x i8]* @.str401, i32 0, i32 0
  %3690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3689, i64 17)
  %3691 = load i64, i64* %3639
  %3692 = call %nyx_string* @nyx_string_from_int(i64 %3691)
  %3693 = call %nyx_string* @nyx_string_concat(%nyx_string* %3690, %nyx_string* %3692)
  %3694 = getelementptr [16 x i8], [16 x i8]* @.str402, i32 0, i32 0
  %3695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3694, i64 15)
  %3696 = call %nyx_string* @nyx_string_concat(%nyx_string* %3693, %nyx_string* %3695)
  %3697 = load i64, i64* %3640
  %3698 = call %nyx_string* @nyx_string_from_int(i64 %3697)
  %3699 = call %nyx_string* @nyx_string_concat(%nyx_string* %3696, %nyx_string* %3698)
  %3700 = getelementptr [16 x i8], [16 x i8]* @.str403, i32 0, i32 0
  %3701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3700, i64 15)
  %3702 = call %nyx_string* @nyx_string_concat(%nyx_string* %3699, %nyx_string* %3701)
  %3703 = call i8* @nyx_string_to_cstr(%nyx_string* %3702)
  call void @nyx_print_string(i8* %3703)
  %3704 = getelementptr [1 x i8], [1 x i8]* @.str404, i32 0, i32 0
  %3705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3704, i64 0)
  %3706 = call i8* @nyx_string_to_cstr(%nyx_string* %3705)
  call void @nyx_print_string(i8* %3706)
  br label %merge634
else633:
  br label %merge634
merge634:
  %3707 = call { i64, i8* }* @nyx_array_new_ptr()
  %3708 = alloca { i64, i8* }*
  store { i64, i8* }* %3707, { i64, i8* }** %3708
  %3709 = call { i64, i8* }* @nyx_array_new_ptr()
  %3710 = alloca { i64, i8* }*
  store { i64, i8* }* %3709, { i64, i8* }** %3710
  %3711 = call { i64, i8* }* @nyx_array_new_ptr()
  %3712 = alloca { i64, i8* }*
  store { i64, i8* }* %3711, { i64, i8* }** %3712
  %3713 = alloca i64
  store i64 0, i64* %3713
  %3714 = alloca i64
  store i64 0, i64* %3714
  %3715 = alloca i64
  store i64 0, i64* %3715
  %3716 = call i8* @llvm.stacksave()
  br label %while_cond659
while_cond659:
  %3717 = load i64, i64* %3715
  %3718 = load { i64, i8* }*, { i64, i8* }** %3469
  %3719 = call i64 @nyx_array_length({ i64, i8* }* %3718)
  %3720 = icmp slt i64 %3717, %3719
  br i1 %3720, label %while_body660, label %while_end661
while_body660:
  call void @llvm.stackrestore(i8* %3716)
  %3721 = load { i64, i8* }*, { i64, i8* }** %3469
  %3722 = load i64, i64* %3715
  %3723 = call i64 @nyx_array_get_checked({ i64, i8* }* %3721, i64 %3722, i64 2)
  %3724 = inttoptr i64 %3723 to %nyx_string*
  %3725 = alloca %nyx_string*
  store %nyx_string* %3724, %nyx_string** %3725
  %3726 = load %nyx_string*, %nyx_string** %3725
  %3727 = call i1 @file_has_test_blocks(%nyx_string* %3726)
  %3728 = xor i1 %3727, true
  br i1 %3728, label %then662, label %else663
then662:
  %3729 = load i64, i64* %3715
  %3730 = add i64 %3729, 1
  store i64 %3730, i64* %3715
  br label %merge664
else663:
  %3731 = load %nyx_string*, %nyx_string** %3725
  %3732 = load %TestConfig, %TestConfig* %3199
  %3733 = load %nyx_string*, %nyx_string** %3420
  %3734 = load i64, i64* %3715
  %3735 = call %TestResult @compile_and_run(%nyx_string* %3731, %TestConfig %3732, %nyx_string* %3733, i64 %3734)
  %3736 = alloca %TestResult
  store %TestResult %3735, %TestResult* %3736
  %3737 = load { i64, i8* }*, { i64, i8* }** %3708
  %3738 = load %TestResult, %TestResult* %3736
  %3739 = getelementptr %TestResult, %TestResult* null, i32 1
  %3740 = ptrtoint %TestResult* %3739 to i64
  %3741 = call i8* @GC_malloc(i64 %3740)
  %3742 = bitcast i8* %3741 to %TestResult*
  store %TestResult %3738, %TestResult* %3742
  %3743 = ptrtoint %TestResult* %3742 to i64
  call void @nyx_array_push({ i64, i8* }* %3737, i64 %3743)
  %3744 = load { i64, i8* }*, { i64, i8* }** %3710
  %3745 = load %nyx_string*, %nyx_string** %3725
  %3746 = ptrtoint %nyx_string* %3745 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3744, i64 %3746, i64 2)
  %3747 = load { i64, i8* }*, { i64, i8* }** %3712
  %3748 = load i64, i64* %3715
  %3749 = call %nyx_string* @nyx_string_from_int(i64 %3748)
  %3750 = ptrtoint %nyx_string* %3749 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3747, i64 %3750, i64 2)
  %3751 = load i64, i64* %3713
  %3752 = getelementptr %TestResult, %TestResult* %3736, i32 0, i32 1
  %3753 = load i64, i64* %3752
  %3754 = add i64 %3751, %3753
  store i64 %3754, i64* %3713
  %3755 = load i64, i64* %3714
  %3756 = getelementptr %TestResult, %TestResult* %3736, i32 0, i32 2
  %3757 = load i64, i64* %3756
  %3758 = add i64 %3755, %3757
  store i64 %3758, i64* %3714
  %3759 = load %TestResult, %TestResult* %3736
  %3760 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 3
  %3761 = load i1, i1* %3760
  %3762 = call i64 @print_result(%TestResult %3759, i1 %3761)
  %3763 = load i64, i64* %3715
  %3764 = add i64 %3763, 1
  store i64 %3764, i64* %3715
  br label %merge664
merge664:
  br label %while_cond659
while_end661:
  %3765 = load { i64, i8* }*, { i64, i8* }** %3708
  %3766 = call i64 @nyx_array_length({ i64, i8* }* %3765)
  %3767 = icmp eq i64 %3766, 0
  br i1 %3767, label %then665, label %else666
then665:
  %3768 = getelementptr [35 x i8], [35 x i8]* @.str405, i32 0, i32 0
  %3769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3768, i64 34)
  %3770 = call i8* @nyx_string_to_cstr(%nyx_string* %3769)
  call void @nyx_print_string(i8* %3770)
  %3771 = load %nyx_string*, %nyx_string** %3420
  %3772 = getelementptr [1 x i8], [1 x i8]* @.str406, i32 0, i32 0
  %3773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3772, i64 0)
  %3774 = call i1 @nyx_string_equals(%nyx_string* %3771, %nyx_string* %3773)
  %3775 = xor i1 %3774, true
  br i1 %3775, label %then668, label %else669
then668:
  %3776 = getelementptr [8 x i8], [8 x i8]* @.str407, i32 0, i32 0
  %3777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3776, i64 7)
  %3778 = load %nyx_string*, %nyx_string** %3420
  %3779 = call %nyx_string* @nyx_string_concat(%nyx_string* %3777, %nyx_string* %3778)
  %3780 = call i8* @nyx_string_to_cstr(%nyx_string* %3779)
  %3781 = call %nyx_string* @nyx_exec(i8* %3780)
  br label %merge670
else669:
  br label %merge670
merge670:
  ret i64 0
else666:
  br label %merge667
merge667:
  %3782 = load { i64, i8* }*, { i64, i8* }** %3708
  %3783 = load i64, i64* %3713
  %3784 = load i64, i64* %3714
  %3785 = call i64 @print_summary({ i64, i8* }* %3782, i64 %3783, i64 %3784)
  %3786 = load %nyx_string*, %nyx_string** %3170
  %3787 = call %nyx_string* @huella_compilador(%nyx_string* %3786)
  %3788 = alloca %nyx_string*
  store %nyx_string* %3787, %nyx_string** %3788
  %3789 = load %nyx_string*, %nyx_string** %3170
  %3790 = call %nyx_string* @huella_resto(%nyx_string* %3789)
  %3791 = alloca %nyx_string*
  store %nyx_string* %3790, %nyx_string** %3791
  %3792 = alloca i1
  store i1 true, i1* %3792
  %3793 = load %nyx_string*, %nyx_string** %3788
  %3794 = load %nyx_string*, %nyx_string** %3181
  %3795 = call i1 @nyx_string_equals(%nyx_string* %3793, %nyx_string* %3794)
  %3796 = xor i1 %3795, true
  br i1 %3796, label %sc_or_end672, label %sc_or_rhs671
sc_or_rhs671:
  %3797 = load %nyx_string*, %nyx_string** %3791
  %3798 = load %nyx_string*, %nyx_string** %3184
  %3799 = call i1 @nyx_string_equals(%nyx_string* %3797, %nyx_string* %3798)
  %3800 = xor i1 %3799, true
  store i1 %3800, i1* %3792
  br label %sc_or_end672
sc_or_end672:
  %3801 = load i1, i1* %3792
  br i1 %3801, label %then673, label %else674
then673:
  %3802 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %3803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3802, i64 0)
  %3804 = call i8* @nyx_string_to_cstr(%nyx_string* %3803)
  call void @nyx_print_string(i8* %3804)
  %3805 = getelementptr [48 x i8], [48 x i8]* @.str409, i32 0, i32 0
  %3806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3805, i64 47)
  %3807 = load %nyx_string*, %nyx_string** %3170
  %3808 = call %nyx_string* @nyx_string_concat(%nyx_string* %3806, %nyx_string* %3807)
  %3809 = getelementptr [2 x i8], [2 x i8]* @.str410, i32 0, i32 0
  %3810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3809, i64 1)
  %3811 = call %nyx_string* @nyx_string_concat(%nyx_string* %3808, %nyx_string* %3810)
  %3812 = call i8* @nyx_string_to_cstr(%nyx_string* %3811)
  call void @nyx_print_string(i8* %3812)
  %3813 = load %nyx_string*, %nyx_string** %3788
  %3814 = load %nyx_string*, %nyx_string** %3181
  %3815 = call i1 @nyx_string_equals(%nyx_string* %3813, %nyx_string* %3814)
  %3816 = xor i1 %3815, true
  br i1 %3816, label %then676, label %else677
then676:
  %3817 = getelementptr [31 x i8], [31 x i8]* @.str411, i32 0, i32 0
  %3818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3817, i64 30)
  %3819 = load %nyx_string*, %nyx_string** %3181
  %3820 = call %nyx_string* @nyx_string_concat(%nyx_string* %3818, %nyx_string* %3819)
  %3821 = getelementptr [5 x i8], [5 x i8]* @.str412, i32 0, i32 0
  %3822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3821, i64 4)
  %3823 = call %nyx_string* @nyx_string_concat(%nyx_string* %3820, %nyx_string* %3822)
  %3824 = load %nyx_string*, %nyx_string** %3788
  %3825 = call %nyx_string* @nyx_string_concat(%nyx_string* %3823, %nyx_string* %3824)
  %3826 = call i8* @nyx_string_to_cstr(%nyx_string* %3825)
  call void @nyx_print_string(i8* %3826)
  br label %merge678
else677:
  %3827 = getelementptr [53 x i8], [53 x i8]* @.str413, i32 0, i32 0
  %3828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3827, i64 52)
  %3829 = call i8* @nyx_string_to_cstr(%nyx_string* %3828)
  call void @nyx_print_string(i8* %3829)
  br label %merge678
merge678:
  %3830 = getelementptr [71 x i8], [71 x i8]* @.str414, i32 0, i32 0
  %3831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3830, i64 70)
  %3832 = call i8* @nyx_string_to_cstr(%nyx_string* %3831)
  call void @nyx_print_string(i8* %3832)
  %3833 = getelementptr [69 x i8], [69 x i8]* @.str415, i32 0, i32 0
  %3834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3833, i64 68)
  %3835 = call i8* @nyx_string_to_cstr(%nyx_string* %3834)
  call void @nyx_print_string(i8* %3835)
  br label %merge675
else674:
  br label %merge675
merge675:
  %3836 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 5
  %3837 = load i1, i1* %3836
  br i1 %3837, label %then679, label %else680
then679:
  %3838 = load %nyx_string*, %nyx_string** %3420
  %3839 = load { i64, i8* }*, { i64, i8* }** %3710
  %3840 = load { i64, i8* }*, { i64, i8* }** %3712
  %3841 = load %nyx_string*, %nyx_string** %3417
  %3842 = getelementptr %TestConfig, %TestConfig* %3199, i32 0, i32 6
  %3843 = load i1, i1* %3842
  %3844 = call i64 @cov_report(%nyx_string* %3838, { i64, i8* }* %3839, { i64, i8* }* %3840, %nyx_string* %3841, i1 %3843)
  %3845 = getelementptr [8 x i8], [8 x i8]* @.str416, i32 0, i32 0
  %3846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3845, i64 7)
  %3847 = load %nyx_string*, %nyx_string** %3420
  %3848 = call %nyx_string* @nyx_string_concat(%nyx_string* %3846, %nyx_string* %3847)
  %3849 = call i8* @nyx_string_to_cstr(%nyx_string* %3848)
  %3850 = call %nyx_string* @nyx_exec(i8* %3849)
  br label %merge681
else680:
  br label %merge681
merge681:
  %3851 = alloca i64
  store i64 0, i64* %3851
  %3852 = alloca i64
  store i64 0, i64* %3852
  %3853 = call i8* @llvm.stacksave()
  br label %while_cond682
while_cond682:
  %3854 = load i64, i64* %3852
  %3855 = load { i64, i8* }*, { i64, i8* }** %3708
  %3856 = call i64 @nyx_array_length({ i64, i8* }* %3855)
  %3857 = icmp slt i64 %3854, %3856
  br i1 %3857, label %while_body683, label %while_end684
while_body683:
  call void @llvm.stackrestore(i8* %3853)
  %3858 = load { i64, i8* }*, { i64, i8* }** %3708
  %3859 = load i64, i64* %3852
  %3860 = call i64 @nyx_array_get({ i64, i8* }* %3858, i64 %3859)
  %3861 = inttoptr i64 %3860 to %TestResult*
  %3862 = load %TestResult, %TestResult* %3861
  %3863 = alloca %TestResult
  store %TestResult %3862, %TestResult* %3863
  %3864 = getelementptr %TestResult, %TestResult* %3863, i32 0, i32 4
  %3865 = load i1, i1* %3864
  %3866 = xor i1 %3865, true
  br i1 %3866, label %then685, label %else686
then685:
  %3867 = load i64, i64* %3851
  %3868 = add i64 %3867, 1
  store i64 %3868, i64* %3851
  br label %merge687
else686:
  br label %merge687
merge687:
  %3869 = load i64, i64* %3852
  %3870 = add i64 %3869, 1
  store i64 %3870, i64* %3852
  br label %while_cond682
while_end684:
  %3871 = alloca i1
  store i1 true, i1* %3871
  %3872 = load i64, i64* %3714
  %3873 = icmp sgt i64 %3872, 0
  br i1 %3873, label %sc_or_end689, label %sc_or_rhs688
sc_or_rhs688:
  %3874 = load i64, i64* %3851
  %3875 = icmp sgt i64 %3874, 0
  store i1 %3875, i1* %3871
  br label %sc_or_end689
sc_or_end689:
  %3876 = load i1, i1* %3871
  br i1 %3876, label %then690, label %else691
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
  %3877 = sub i64 0, 9223372036854775808
  store i64 %3877, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

