source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Error = type { i64, %nyx_string*, %nyx_string*, %nyx_string* }

%TestConfig = type { %nyx_string*, i64, %nyx_string*, i1, %nyx_string*, i1, i1, i1, %nyx_string*, %nyx_string* }

%TestResult = type { %nyx_string*, i64, i64, %nyx_string*, i1 }

@.str0 = private unnamed_addr constant [32 x i8] c"mul_div_round: division by zero\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [36 x i8] c"mul_div_round: result overflows int\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [10 x i8] c"not_found\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [11 x i8] c"permission\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [4 x i8] c"oom\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [8 x i8] c"invalid\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [8 x i8] c"timeout\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [11 x i8] c"connection\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [7 x i8] c"in_use\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [3 x i8] c"io\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [3 x i8] c": \00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [8 x i8] c" (code \00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [2 x i8] c")\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [4 x i8] c"eof\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [1 x i8] c"\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [6 x i8] c"tests\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [1 x i8] c"\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [1 x i8] c"\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [7 x i8] c"[test]\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [2 x i8] c"[\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [6 x i8] c"[lib]\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [8 x i8] c"modules\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [2 x i8] c"=\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [1 x i8] c"\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c"]\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [2 x i8] c" \00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [4 x i8] c"dir\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [8 x i8] c"timeout\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [2 x i8] c"/\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [1 x i8] c"\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [4 x i8] c"src\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [4 x i8] c"src\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [1 x i8] c"\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [7 x i8] c"test \22\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [3 x i8] c"./\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [17 x i8] c"nyx_rt_auto() {\0a\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [41 x i8] c"  [ -n \22$NYX_NO_RT_CACHE\22 ] && return 1\0a\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [24 x i8] c"  local fl=\22$1\22; shift\0a\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [92 x i8] c"  local base=\22$XDG_CACHE_HOME\22; [ -n \22$base\22 ] || base=\22$HOME/.cache\22; base=\22$base/nyx/rt\22\0a\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [177 x i8] c"  local key; key=$( { printf '%s\5cn' \22$fl\22 \22$*\22; clang --version 2>/dev/null | head -1; cat \22$@\22 runtime/*.h runtime/os/*.h 2>/dev/null; } | sha256sum | cut -c1-16) || return 1\0a\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [35 x i8] c"  local a=\22$base/$key/libnyxrt.a\22\0a\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [83 x i8] c"  if [ -f \22$a\22 ]; then touch \22$base/$key\22 2>/dev/null; RT_AUTO=\22$a\22; return 0; fi\0a\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [49 x i8] c"  mkdir -p \22$base/$key\22 2>/dev/null || return 1\0a\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [89 x i8] c"  find \22$base\22 -mindepth 1 -maxdepth 1 -type d -mtime +14 -exec rm -rf {} + 2>/dev/null\0a\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [68 x i8] c"  local tmp; tmp=$(mktemp -d \22$base/$key/.tmp.XXXXXX\22) || return 1\0a\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [15 x i8] c"  local f n=0\0a\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [49 x i8] c"  local par; par=$(nproc 2>/dev/null || echo 4)\0a\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [196 x i8] c"  for f in \22$@\22; do n=$((n+1)); while [ \22$(jobs -rp | wc -l)\22 -ge \22$par\22 ]; do wait -n 2>/dev/null || true; done; clang $fl -Wno-deprecated-declarations -c \22$f\22 -o \22$tmp/$n.o\22 2>/dev/null & done\0a\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [8 x i8] c"  wait\0a\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [138 x i8] c"  if [ \22$(ls \22$tmp\22 | grep -c '\5c.o$')\22 = \22$n\22 ] && ar rcs \22$tmp/libnyxrt.a\22 \22$tmp\22/*.o 2>/dev/null && mv -f \22$tmp/libnyxrt.a\22 \22$a\22; then\0a\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [43 x i8] c"    rm -rf \22$tmp\22; RT_AUTO=\22$a\22; return 0\0a\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [6 x i8] c"  fi\0a\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [27 x i8] c"  rm -rf \22$tmp\22; return 1\0a\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [1 x i8] c"\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [31 x i8] c"mktemp -d /tmp/nyx_test_XXXXXX\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [9 x i8] c"/out.txt\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [5 x i8] c"/bin\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [1 x i8] c"\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [5 x i8] c"-O2 \00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [105 x i8] c"runtime/msgpack.c runtime/csv.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [1 x i8] c"\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [2 x i8] c"/\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [2 x i8] c"/\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [1 x i8] c"\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [1 x i8] c"\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [22 x i8] c"if nyx_rt_auto \22-O2\22 \00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [31 x i8] c"; then RT_IN=(\22$RT_AUTO\22); fi\0a\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [3 x i8] c"\22$\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [13 x i8] c"{RT_IN[@]}\22 \00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [1 x i8] c"\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [1 x i8] c"\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [1 x i8] c"\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [1 x i8] c"\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [2 x i8] c"/\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [20 x i8] c" NYX_COVERAGE_MAP=\22\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [6 x i8] c".tsv\22\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [62 x i8] c"-fprofile-generate -Xclang -mllvm -Xclang -disable-preinline \00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [20 x i8] c"LLVM_PROFILE_FILE=\22\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [11 x i8] c".profraw\22 \00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [322 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22; return 0; }\0a\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [1 x i8] c"\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [1 x i8] c"\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [1 x i8] c"\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [2 x i8] c",\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [1 x i8] c"\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [1 x i8] c"\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [2 x i8] c",\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [1 x i8] c"\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [19 x i8] c" NYX_LIB_MODULES=\22\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [1 x i8] c"\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [2 x i8] c",\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [2 x i8] c",\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [2 x i8] c",\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [2 x i8] c",\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [16 x i8] c" NYX_LIB_SELF=\22\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [2 x i8] c" \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [2 x i8] c"=\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [22 x i8] c" ./nyx_bootstrap ) > \00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [36 x i8] c" 2>&1 || { rc=$?; nyx_pista $rc >> \00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [13 x i8] c"; exit 1; }\0a\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [15 x i8] c"trap 'rm -rf \22\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [27 x i8] c"\22; exit 130' INT TERM HUP\0a\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [42 x i8] c"SRC=\22$(mktemp /tmp/nyx_test_src_XXXXXX)\22\0a\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [2 x i8] c"/\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [2 x i8] c" \00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [4 x i8] c" > \00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [1 x i8] c"\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [3 x i8] c" (\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [3 x i8] c" (\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [1 x i8] c"\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [9 x i8] c"version \00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [1 x i8] c"\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [1 x i8] c"\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [1 x i8] c"\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [1 x i8] c"\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"0\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [1 x i8] c"\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [3 x i8] c"  \00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [4 x i8] c"   \00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c":\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [2 x i8] c";\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [1 x i8] c"\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [2 x i8] c"[\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [2 x i8] c"]\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [2 x i8] c",\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [2 x i8] c"1\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [4 x i8] c"src\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [1 x i8] c"\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [1 x i8] c"\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [1 x i8] c"\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"/\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [2 x i8] c"1\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [2 x i8] c"/\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [1 x i8] c"\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [2 x i8] c"1\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [6 x i8] c"async\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [5 x i8] c"main\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [3 x i8] c"no\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [3 x i8] c"si\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [1 x i8] c"\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [1 x i8] c"\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [2 x i8] c"0\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [3 x i8] c"si\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [2 x i8] c"1\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [5 x i8] c"    \00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [2 x i8] c":\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [2 x i8] c" \00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [2 x i8] c",\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [3 x i8] c"  \00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [3 x i8] c": \00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [2 x i8] c"/\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [3 x i8] c" (\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [5 x i8] c"    \00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [2 x i8] c"/\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [66 x i8] c"\22 2>/dev/null && sha256sum nyx_bootstrap 2>/dev/null | cut -c1-12\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [74 x i8] c"\22 2>/dev/null && cat std/*.nx runtime/*.c runtime/*.h 2>/dev/null | cksum\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [18 x i8] c"  compiler: nyx v\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [17 x i8] c" (nyx_bootstrap \00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [2 x i8] c")\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [2 x i8] c" \00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [2 x i8] c"-\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [1 x i8] c"\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [1 x i8] c"\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [1 x i8] c"\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [1 x i8] c"\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [1 x i8] c"\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [1 x i8] c"\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [1 x i8] c"\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [1 x i8] c"\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [2 x i8] c"/\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [1 x i8] c"\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [1 x i8] c"\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [1 x i8] c"\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [1 x i8] c"\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [33 x i8] c"mktemp /tmp/nyx_test_libs_XXXXXX\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [1 x i8] c"\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [1 x i8] c"\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [1 x i8] c"\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [48 x i8] c"  ⚠ EL TOOLCHAIN CAMBIÓ DURANTE LA CORRIDA (\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [2 x i8] c")\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [31 x i8] c"    compilador: nyx_bootstrap \00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [53 x i8] c"    compilador igual; cambió la stdlib o el runtime\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [71 x i8] c"    Algunos archivos se probaron con una versión y otros con la otra:\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [69 x i8] c"    este resultado no sirve para integrar. Vuelve a correr la suite.\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str417.c = internal global %nyx_string* null
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
declare i64 @nyx_task_cancelled()
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
declare i64 @nyx_string_to_int_range(%nyx_string*, i64, i64, i64)
declare double @nyx_string_to_float_range(%nyx_string*, i64, i64, double)
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
  %316 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %314, i64 %315)
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
  %336 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %334, i64 %335)
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
  %399 = call i8* @GC_malloc(i64 16)
  %400 = bitcast i8* %399 to { i8*, i8* }*
  %401 = bitcast i64 (...)* @__sort_sin_cmp to i8*
  %402 = getelementptr { i8*, i8* }, { i8*, i8* }* %400, i32 0, i32 0
  store i8* %401, i8** %402
  %403 = getelementptr { i8*, i8* }, { i8*, i8* }* %400, i32 0, i32 1
  store i8* null, i8** %403
  %404 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %398, i64 0, i8* %399)
  ret { i64, i8* }* %404
}

define { i64, i8* }* @sort_by(
{ i64, i8* }* %arr.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %405 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %406 = load i8*, i8** %cmp.ptr
  %407 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %405, i64 2, i8* %406)
  ret { i64, i8* }* %407
}

define i64 @str_compare(
%nyx_string* %a.param, %nyx_string* %b.param) {
  %a.ptr = alloca %nyx_string*
  store %nyx_string* %a.param, %nyx_string** %a.ptr
  %b.ptr = alloca %nyx_string*
  store %nyx_string* %b.param, %nyx_string** %b.ptr
  %408 = load %nyx_string*, %nyx_string** %a.ptr
  %409 = call i64 @nyx_string_byte_length(%nyx_string* %408)
  %410 = alloca i64
  store i64 %409, i64* %410
  %411 = load %nyx_string*, %nyx_string** %b.ptr
  %412 = call i64 @nyx_string_byte_length(%nyx_string* %411)
  %413 = alloca i64
  store i64 %412, i64* %413
  %414 = load i64, i64* %410
  %415 = alloca i64
  store i64 %414, i64* %415
  %416 = load i64, i64* %413
  %417 = load i64, i64* %415
  %418 = icmp slt i64 %416, %417
  br i1 %418, label %then120, label %else121
then120:
  %419 = load i64, i64* %413
  store i64 %419, i64* %415
  br label %merge122
else121:
  br label %merge122
merge122:
  %420 = alloca i64
  store i64 0, i64* %420
  %421 = call i8* @llvm.stacksave()
  br label %while_cond123
while_cond123:
  %422 = load i64, i64* %420
  %423 = load i64, i64* %415
  %424 = icmp slt i64 %422, %423
  br i1 %424, label %while_body124, label %while_end125
while_body124:
  call void @llvm.stackrestore(i8* %421)
  %425 = load %nyx_string*, %nyx_string** %a.ptr
  %426 = load i64, i64* %420
  %427 = call i8 @nyx_string_char_at(%nyx_string* %425, i64 %426)
  %428 = zext i8 %427 to i64
  %429 = alloca i64
  store i64 %428, i64* %429
  %430 = load %nyx_string*, %nyx_string** %b.ptr
  %431 = load i64, i64* %420
  %432 = call i8 @nyx_string_char_at(%nyx_string* %430, i64 %431)
  %433 = zext i8 %432 to i64
  %434 = alloca i64
  store i64 %433, i64* %434
  %435 = load i64, i64* %429
  %436 = load i64, i64* %434
  %437 = icmp slt i64 %435, %436
  br i1 %437, label %then126, label %else127
then126:
  %438 = sub i64 0, 1
  ret i64 %438
else127:
  br label %merge128
merge128:
  %439 = load i64, i64* %429
  %440 = load i64, i64* %434
  %441 = icmp sgt i64 %439, %440
  br i1 %441, label %then129, label %else130
then129:
  ret i64 1
else130:
  br label %merge131
merge131:
  %442 = load i64, i64* %420
  %443 = add i64 %442, 1
  store i64 %443, i64* %420
  br label %while_cond123
while_end125:
  %444 = load i64, i64* %410
  %445 = load i64, i64* %413
  %446 = icmp slt i64 %444, %445
  br i1 %446, label %then132, label %else133
then132:
  %447 = sub i64 0, 1
  ret i64 %447
else133:
  br label %merge134
merge134:
  %448 = load i64, i64* %410
  %449 = load i64, i64* %413
  %450 = icmp sgt i64 %448, %449
  br i1 %450, label %then135, label %else136
then135:
  ret i64 1
else136:
  br label %merge137
merge137:
  ret i64 0
}

define internal i64 @__sort_cmp(
{ i64, i8* }* %x.param, i64 %i.param, { i64, i8* }* %y.param, i64 %j.param, i64 %modo.param, i8* %cmp.param) {
  %x.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %x.param, { i64, i8* }** %x.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %y.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %y.param, { i64, i8* }** %y.ptr
  %j.ptr = alloca i64
  store i64 %j.param, i64* %j.ptr
  %modo.ptr = alloca i64
  store i64 %modo.param, i64* %modo.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %451 = load i64, i64* %modo.ptr
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %then138, label %else139
then138:
  %453 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %454 = load i64, i64* %i.ptr
  %455 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %453, i64 %454)
  %456 = alloca i64
  store i64 %455, i64* %456
  %457 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %458 = load i64, i64* %j.ptr
  %459 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %457, i64 %458)
  %460 = alloca i64
  store i64 %459, i64* %460
  %461 = load i64, i64* %456
  %462 = load i64, i64* %460
  %463 = icmp slt i64 %461, %462
  br i1 %463, label %then141, label %else142
then141:
  %464 = sub i64 0, 1
  ret i64 %464
else142:
  br label %merge143
merge143:
  %465 = load i64, i64* %456
  %466 = load i64, i64* %460
  %467 = icmp sgt i64 %465, %466
  br i1 %467, label %then144, label %else145
then144:
  ret i64 1
else145:
  br label %merge146
merge146:
  ret i64 0
else139:
  br label %merge140
merge140:
  %468 = load i64, i64* %modo.ptr
  %469 = icmp eq i64 %468, 1
  br i1 %469, label %then147, label %else148
then147:
  %470 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %471 = load i64, i64* %i.ptr
  %472 = call i64 @nyx_array_get_checked({ i64, i8* }* %470, i64 %471, i64 2)
  %473 = inttoptr i64 %472 to %nyx_string*
  %474 = alloca %nyx_string*
  store %nyx_string* %473, %nyx_string** %474
  %475 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %476 = load i64, i64* %j.ptr
  %477 = call i64 @nyx_array_get_checked({ i64, i8* }* %475, i64 %476, i64 2)
  %478 = inttoptr i64 %477 to %nyx_string*
  %479 = alloca %nyx_string*
  store %nyx_string* %478, %nyx_string** %479
  %480 = load %nyx_string*, %nyx_string** %474
  %481 = load %nyx_string*, %nyx_string** %479
  %482 = call i64 @str_compare(%nyx_string* %480, %nyx_string* %481)
  ret i64 %482
else148:
  br label %merge149
merge149:
  %483 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %484 = load i64, i64* %i.ptr
  %485 = call i64 @nyx_array_get({ i64, i8* }* %483, i64 %484)
  %486 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %487 = load i64, i64* %j.ptr
  %488 = call i64 @nyx_array_get({ i64, i8* }* %486, i64 %487)
  %489 = load i8*, i8** %cmp.ptr
  %490 = bitcast i8* %489 to { i8*, i8* }*
  %491 = getelementptr { i8*, i8* }, { i8*, i8* }* %490, i32 0, i32 0
  %492 = load i8*, i8** %491
  %493 = getelementptr { i8*, i8* }, { i8*, i8* }* %490, i32 0, i32 1
  %494 = load i8*, i8** %493
  %495 = icmp ne i8* %494, null
  br i1 %495, label %cl_env150, label %cl_noenv151
cl_env150:
  %496 = bitcast i8* %492 to i64 (i8*, i64, i64)*
  %497 = call i64 %496(i8* %494, i64 %485, i64 %488)
  br label %cl_merge152
cl_noenv151:
  %498 = bitcast i8* %492 to i64 (i64, i64)*
  %499 = call i64 %498(i64 %485, i64 %488)
  br label %cl_merge152
cl_merge152:
  %500 = phi i64 [%497, %cl_env150], [%499, %cl_noenv151]
  ret i64 %500
}

define internal { i64, i8* }* @__sort_merge(
{ i64, i8* }* %arr.param, i64 %modo.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %modo.ptr = alloca i64
  store i64 %modo.param, i64* %modo.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %501 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %502 = call i64 @nyx_array_length({ i64, i8* }* %501)
  %503 = alloca i64
  store i64 %502, i64* %503
  %504 = load i64, i64* %503
  %505 = icmp sle i64 %504, 1
  br i1 %505, label %then153, label %else154
then153:
  %506 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %506
else154:
  br label %merge155
merge155:
  %507 = alloca i64
  store i64 32, i64* %507
  %508 = alloca i64
  store i64 0, i64* %508
  %509 = call i8* @llvm.stacksave()
  br label %while_cond156
while_cond156:
  %510 = load i64, i64* %508
  %511 = load i64, i64* %503
  %512 = icmp slt i64 %510, %511
  br i1 %512, label %while_body157, label %while_end158
while_body157:
  call void @llvm.stackrestore(i8* %509)
  %513 = load i64, i64* %508
  %514 = load i64, i64* %507
  %515 = add i64 %513, %514
  %516 = alloca i64
  store i64 %515, i64* %516
  %517 = load i64, i64* %516
  %518 = load i64, i64* %503
  %519 = icmp sgt i64 %517, %518
  br i1 %519, label %then159, label %else160
then159:
  %520 = load i64, i64* %503
  store i64 %520, i64* %516
  br label %merge161
else160:
  br label %merge161
merge161:
  %521 = load i64, i64* %508
  %522 = add i64 %521, 1
  %523 = alloca i64
  store i64 %522, i64* %523
  %524 = call i8* @llvm.stacksave()
  br label %while_cond162
while_cond162:
  %525 = load i64, i64* %523
  %526 = load i64, i64* %516
  %527 = icmp slt i64 %525, %526
  br i1 %527, label %while_body163, label %while_end164
while_body163:
  call void @llvm.stackrestore(i8* %524)
  %528 = load i64, i64* %523
  %529 = alloca i64
  store i64 %528, i64* %529
  %530 = call i8* @llvm.stacksave()
  br label %while_cond165
while_cond165:
  %531 = alloca i1
  store i1 false, i1* %531
  %532 = load i64, i64* %529
  %533 = load i64, i64* %508
  %534 = icmp sgt i64 %532, %533
  br i1 %534, label %sc_and_rhs168, label %sc_and_end169
sc_and_rhs168:
  %535 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %536 = load i64, i64* %529
  %537 = sub i64 %536, 1
  %538 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %539 = load i64, i64* %529
  %540 = load i64, i64* %modo.ptr
  %541 = load i8*, i8** %cmp.ptr
  %542 = call i64 @__sort_cmp({ i64, i8* }* %535, i64 %537, { i64, i8* }* %538, i64 %539, i64 %540, i8* %541)
  %543 = icmp sgt i64 %542, 0
  store i1 %543, i1* %531
  br label %sc_and_end169
sc_and_end169:
  %544 = load i1, i1* %531
  br i1 %544, label %while_body166, label %while_end167
while_body166:
  call void @llvm.stackrestore(i8* %530)
  %545 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %546 = load i64, i64* %529
  %547 = sub i64 %546, 1
  %548 = call i64 @nyx_array_get({ i64, i8* }* %545, i64 %547)
  %549 = alloca i64
  store i64 %548, i64* %549
  %550 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %551 = load i64, i64* %529
  %552 = sub i64 %551, 1
  %553 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %554 = load i64, i64* %529
  %555 = call i64 @nyx_array_get({ i64, i8* }* %553, i64 %554)
  call void @nyx_array_set({ i64, i8* }* %550, i64 %552, i64 %555)
  %556 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %557 = load i64, i64* %529
  %558 = load i64, i64* %549
  call void @nyx_array_set({ i64, i8* }* %556, i64 %557, i64 %558)
  %559 = load i64, i64* %529
  %560 = sub i64 %559, 1
  store i64 %560, i64* %529
  br label %while_cond165
while_end167:
  %561 = load i64, i64* %523
  %562 = add i64 %561, 1
  store i64 %562, i64* %523
  br label %while_cond162
while_end164:
  %563 = load i64, i64* %516
  store i64 %563, i64* %508
  br label %while_cond156
while_end158:
  %564 = load i64, i64* %503
  %565 = load i64, i64* %507
  %566 = icmp sle i64 %564, %565
  br i1 %566, label %then170, label %else171
then170:
  %567 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %567
else171:
  br label %merge172
merge172:
  %568 = call { i64, i8* }* @nyx_array_new_ptr()
  %569 = alloca { i64, i8* }*
  store { i64, i8* }* %568, { i64, i8* }** %569
  %570 = alloca i64
  store i64 0, i64* %570
  %571 = call i8* @llvm.stacksave()
  br label %while_cond173
while_cond173:
  %572 = load i64, i64* %570
  %573 = load i64, i64* %503
  %574 = icmp slt i64 %572, %573
  br i1 %574, label %while_body174, label %while_end175
while_body174:
  call void @llvm.stackrestore(i8* %571)
  %575 = load { i64, i8* }*, { i64, i8* }** %569
  %576 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %577 = load i64, i64* %570
  %578 = call i64 @nyx_array_get({ i64, i8* }* %576, i64 %577)
  %579 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %580 = load i64, i64* %570
  %581 = call i64 @nyx_array_get_tag({ i64, i8* }* %579, i64 %580)
  call void @nyx_array_push_tagged({ i64, i8* }* %575, i64 %578, i64 %581)
  %582 = load i64, i64* %570
  %583 = add i64 %582, 1
  store i64 %583, i64* %570
  br label %while_cond173
while_end175:
  %584 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %585 = alloca { i64, i8* }*
  store { i64, i8* }* %584, { i64, i8* }** %585
  %586 = load { i64, i8* }*, { i64, i8* }** %569
  %587 = alloca { i64, i8* }*
  store { i64, i8* }* %586, { i64, i8* }** %587
  %588 = alloca i1
  store i1 1, i1* %588
  %589 = load i64, i64* %507
  %590 = alloca i64
  store i64 %589, i64* %590
  %591 = call i8* @llvm.stacksave()
  br label %while_cond176
while_cond176:
  %592 = load i64, i64* %590
  %593 = load i64, i64* %503
  %594 = icmp slt i64 %592, %593
  br i1 %594, label %while_body177, label %while_end178
while_body177:
  call void @llvm.stackrestore(i8* %591)
  %595 = alloca i64
  store i64 0, i64* %595
  %596 = call i8* @llvm.stacksave()
  br label %while_cond179
while_cond179:
  %597 = load i64, i64* %595
  %598 = load i64, i64* %503
  %599 = icmp slt i64 %597, %598
  br i1 %599, label %while_body180, label %while_end181
while_body180:
  call void @llvm.stackrestore(i8* %596)
  %600 = load i64, i64* %595
  %601 = load i64, i64* %590
  %602 = add i64 %600, %601
  %603 = alloca i64
  store i64 %602, i64* %603
  %604 = load i64, i64* %603
  %605 = load i64, i64* %503
  %606 = icmp sgt i64 %604, %605
  br i1 %606, label %then182, label %else183
then182:
  %607 = load i64, i64* %503
  store i64 %607, i64* %603
  br label %merge184
else183:
  br label %merge184
merge184:
  %608 = load i64, i64* %595
  %609 = load i64, i64* %590
  %610 = mul i64 2, %609
  %611 = add i64 %608, %610
  %612 = alloca i64
  store i64 %611, i64* %612
  %613 = load i64, i64* %612
  %614 = load i64, i64* %503
  %615 = icmp sgt i64 %613, %614
  br i1 %615, label %then185, label %else186
then185:
  %616 = load i64, i64* %503
  store i64 %616, i64* %612
  br label %merge187
else186:
  br label %merge187
merge187:
  %617 = load i64, i64* %595
  %618 = alloca i64
  store i64 %617, i64* %618
  %619 = load i64, i64* %603
  %620 = alloca i64
  store i64 %619, i64* %620
  %621 = load i64, i64* %595
  %622 = alloca i64
  store i64 %621, i64* %622
  %623 = call i8* @llvm.stacksave()
  br label %while_cond188
while_cond188:
  %624 = alloca i1
  store i1 false, i1* %624
  %625 = load i64, i64* %618
  %626 = load i64, i64* %603
  %627 = icmp slt i64 %625, %626
  br i1 %627, label %sc_and_rhs191, label %sc_and_end192
sc_and_rhs191:
  %628 = load i64, i64* %620
  %629 = load i64, i64* %612
  %630 = icmp slt i64 %628, %629
  store i1 %630, i1* %624
  br label %sc_and_end192
sc_and_end192:
  %631 = load i1, i1* %624
  br i1 %631, label %while_body189, label %while_end190
while_body189:
  call void @llvm.stackrestore(i8* %623)
  %632 = load { i64, i8* }*, { i64, i8* }** %585
  %633 = load i64, i64* %618
  %634 = load { i64, i8* }*, { i64, i8* }** %585
  %635 = load i64, i64* %620
  %636 = load i64, i64* %modo.ptr
  %637 = load i8*, i8** %cmp.ptr
  %638 = call i64 @__sort_cmp({ i64, i8* }* %632, i64 %633, { i64, i8* }* %634, i64 %635, i64 %636, i8* %637)
  %639 = icmp sle i64 %638, 0
  br i1 %639, label %then193, label %else194
then193:
  %640 = load { i64, i8* }*, { i64, i8* }** %587
  %641 = load i64, i64* %622
  %642 = load { i64, i8* }*, { i64, i8* }** %585
  %643 = load i64, i64* %618
  %644 = call i64 @nyx_array_get({ i64, i8* }* %642, i64 %643)
  call void @nyx_array_set({ i64, i8* }* %640, i64 %641, i64 %644)
  %645 = load i64, i64* %618
  %646 = add i64 %645, 1
  store i64 %646, i64* %618
  br label %merge195
else194:
  %647 = load { i64, i8* }*, { i64, i8* }** %587
  %648 = load i64, i64* %622
  %649 = load { i64, i8* }*, { i64, i8* }** %585
  %650 = load i64, i64* %620
  %651 = call i64 @nyx_array_get({ i64, i8* }* %649, i64 %650)
  call void @nyx_array_set({ i64, i8* }* %647, i64 %648, i64 %651)
  %652 = load i64, i64* %620
  %653 = add i64 %652, 1
  store i64 %653, i64* %620
  br label %merge195
merge195:
  %654 = load i64, i64* %622
  %655 = add i64 %654, 1
  store i64 %655, i64* %622
  br label %while_cond188
while_end190:
  %656 = call i8* @llvm.stacksave()
  br label %while_cond196
while_cond196:
  %657 = load i64, i64* %618
  %658 = load i64, i64* %603
  %659 = icmp slt i64 %657, %658
  br i1 %659, label %while_body197, label %while_end198
while_body197:
  call void @llvm.stackrestore(i8* %656)
  %660 = load { i64, i8* }*, { i64, i8* }** %587
  %661 = load i64, i64* %622
  %662 = load { i64, i8* }*, { i64, i8* }** %585
  %663 = load i64, i64* %618
  %664 = call i64 @nyx_array_get({ i64, i8* }* %662, i64 %663)
  call void @nyx_array_set({ i64, i8* }* %660, i64 %661, i64 %664)
  %665 = load i64, i64* %618
  %666 = add i64 %665, 1
  store i64 %666, i64* %618
  %667 = load i64, i64* %622
  %668 = add i64 %667, 1
  store i64 %668, i64* %622
  br label %while_cond196
while_end198:
  %669 = call i8* @llvm.stacksave()
  br label %while_cond199
while_cond199:
  %670 = load i64, i64* %620
  %671 = load i64, i64* %612
  %672 = icmp slt i64 %670, %671
  br i1 %672, label %while_body200, label %while_end201
while_body200:
  call void @llvm.stackrestore(i8* %669)
  %673 = load { i64, i8* }*, { i64, i8* }** %587
  %674 = load i64, i64* %622
  %675 = load { i64, i8* }*, { i64, i8* }** %585
  %676 = load i64, i64* %620
  %677 = call i64 @nyx_array_get({ i64, i8* }* %675, i64 %676)
  call void @nyx_array_set({ i64, i8* }* %673, i64 %674, i64 %677)
  %678 = load i64, i64* %620
  %679 = add i64 %678, 1
  store i64 %679, i64* %620
  %680 = load i64, i64* %622
  %681 = add i64 %680, 1
  store i64 %681, i64* %622
  br label %while_cond199
while_end201:
  %682 = load i64, i64* %612
  store i64 %682, i64* %595
  br label %while_cond179
while_end181:
  %683 = load { i64, i8* }*, { i64, i8* }** %585
  %684 = alloca { i64, i8* }*
  store { i64, i8* }* %683, { i64, i8* }** %684
  %685 = load { i64, i8* }*, { i64, i8* }** %587
  store { i64, i8* }* %685, { i64, i8* }** %585
  %686 = load { i64, i8* }*, { i64, i8* }** %684
  store { i64, i8* }* %686, { i64, i8* }** %587
  %687 = load i1, i1* %588
  %688 = xor i1 %687, true
  store i1 %688, i1* %588
  %689 = load i64, i64* %590
  %690 = mul i64 %689, 2
  store i64 %690, i64* %590
  br label %while_cond176
while_end178:
  %691 = load i1, i1* %588
  %692 = xor i1 %691, true
  br i1 %692, label %then202, label %else203
then202:
  %693 = alloca i64
  store i64 0, i64* %693
  %694 = call i8* @llvm.stacksave()
  br label %while_cond205
while_cond205:
  %695 = load i64, i64* %693
  %696 = load i64, i64* %503
  %697 = icmp slt i64 %695, %696
  br i1 %697, label %while_body206, label %while_end207
while_body206:
  call void @llvm.stackrestore(i8* %694)
  %698 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %699 = load i64, i64* %693
  %700 = load { i64, i8* }*, { i64, i8* }** %585
  %701 = load i64, i64* %693
  %702 = call i64 @nyx_array_get({ i64, i8* }* %700, i64 %701)
  call void @nyx_array_set({ i64, i8* }* %698, i64 %699, i64 %702)
  %703 = load i64, i64* %693
  %704 = add i64 %703, 1
  store i64 %704, i64* %693
  br label %while_cond205
while_end207:
  br label %merge204
else203:
  br label %merge204
merge204:
  %705 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %705
}

define internal i64 @__sort_sin_cmp(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  ret i64 0
}

define { i64, i8* }* @sort_str(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %706 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %707 = call i8* @GC_malloc(i64 16)
  %708 = bitcast i8* %707 to { i8*, i8* }*
  %709 = bitcast i64 (...)* @__sort_sin_cmp to i8*
  %710 = getelementptr { i8*, i8* }, { i8*, i8* }* %708, i32 0, i32 0
  store i8* %709, i8** %710
  %711 = getelementptr { i8*, i8* }, { i8*, i8* }* %708, i32 0, i32 1
  store i8* null, i8** %711
  %712 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %706, i64 1, i8* %707)
  ret { i64, i8* }* %712
}

define %nyx_string* @read_text(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %713 = load %nyx_string*, %nyx_string** %path.ptr
  %714 = call i8* @nyx_string_to_cstr(%nyx_string* %713)
  %715 = call %nyx_string* @nyx_read_file(i8* %714)
  ret %nyx_string* %715
}

define i64 @write_text(
%nyx_string* %path.param, %nyx_string* %content.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %716 = load %nyx_string*, %nyx_string** %path.ptr
  %717 = load %nyx_string*, %nyx_string** %content.ptr
  %718 = ptrtoint %nyx_string* %717 to i64
  %719 = call i8* @nyx_string_to_cstr(%nyx_string* %716)
  %720 = inttoptr i64 %718 to %nyx_string*
  %721 = call i1 @nyx_write_file_safe(i8* %719, %nyx_string* %720)
  ret i64 0
}

define i8* @map_new(
) {
  %722 = call i8* @nyx_map_new(i32 0)
  ret i8* %722
}

define i64 @map_put(
i8* %m.param, %nyx_string* %k.param, i64 %v.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %723 = load i8*, i8** %m.ptr
  %724 = load %nyx_string*, %nyx_string** %k.ptr
  %725 = load i64, i64* %v.ptr
  %726 = call i8* @nyx_string_to_cstr(%nyx_string* %724)
  call void @nyx_map_insert_int(i8* %723, i8* %726, i64 %725)
  ret i64 0
}

define i64 @map_get_int(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %727 = load i8*, i8** %m.ptr
  %728 = load %nyx_string*, %nyx_string** %k.ptr
  %729 = call i8* @nyx_string_to_cstr(%nyx_string* %728)
  %730 = call i64 @nyx_map_get_int(i8* %727, i8* %729)
  ret i64 %730
}

define i1 @map_has(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %731 = load i8*, i8** %m.ptr
  %732 = load %nyx_string*, %nyx_string** %k.ptr
  %733 = call i8* @nyx_string_to_cstr(%nyx_string* %732)
  %734 = call i1 @nyx_map_contains_str(i8* %731, i8* %733)
  ret i1 %734
}

define internal i64 @map_size(
i8* %m.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %735 = load i8*, i8** %m.ptr
  %736 = call i64 @nyx_map_length(i8* %735)
  ret i64 %736
}

define %Error @err_new(
i64 %code.param, %nyx_string* %kind.param, %nyx_string* %msg.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %737 = getelementptr %Error, %Error* null, i32 1
  %738 = ptrtoint %Error* %737 to i64
  %739 = call i8* @GC_malloc(i64 %738)
  %740 = bitcast i8* %739 to %Error*
  %741 = load i64, i64* %code.ptr
  %742 = getelementptr %Error, %Error* %740, i32 0, i32 0
  store i64 %741, i64* %742
  %743 = load %nyx_string*, %nyx_string** %kind.ptr
  %744 = getelementptr %Error, %Error* %740, i32 0, i32 1
  store %nyx_string* %743, %nyx_string** %744
  %745 = load %nyx_string*, %nyx_string** %msg.ptr
  %746 = getelementptr %Error, %Error* %740, i32 0, i32 2
  store %nyx_string* %745, %nyx_string** %746
  %747 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %747, i64 0)
  %749 = getelementptr %Error, %Error* %740, i32 0, i32 3
  store %nyx_string* %748, %nyx_string** %749
  %750 = load %Error, %Error* %740
  ret %Error %750
}

define %Error @err_stage(
i64 %code.param, %nyx_string* %kind.param, %nyx_string* %msg.param, %nyx_string* %stage.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %stage.ptr = alloca %nyx_string*
  store %nyx_string* %stage.param, %nyx_string** %stage.ptr
  %751 = getelementptr %Error, %Error* null, i32 1
  %752 = ptrtoint %Error* %751 to i64
  %753 = call i8* @GC_malloc(i64 %752)
  %754 = bitcast i8* %753 to %Error*
  %755 = load i64, i64* %code.ptr
  %756 = getelementptr %Error, %Error* %754, i32 0, i32 0
  store i64 %755, i64* %756
  %757 = load %nyx_string*, %nyx_string** %kind.ptr
  %758 = getelementptr %Error, %Error* %754, i32 0, i32 1
  store %nyx_string* %757, %nyx_string** %758
  %759 = load %nyx_string*, %nyx_string** %msg.ptr
  %760 = getelementptr %Error, %Error* %754, i32 0, i32 2
  store %nyx_string* %759, %nyx_string** %760
  %761 = load %nyx_string*, %nyx_string** %stage.ptr
  %762 = getelementptr %Error, %Error* %754, i32 0, i32 3
  store %nyx_string* %761, %nyx_string** %762
  %763 = load %Error, %Error* %754
  ret %Error %763
}

define %nyx_string* @errno_to_kind(
i64 %code.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %764 = load i64, i64* %code.ptr
  %765 = icmp eq i64 %764, 2
  br i1 %765, label %then208, label %else209
then208:
  %766 = getelementptr [10 x i8], [10 x i8]* @.str3, i32 0, i32 0
  %767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %766, i64 9)
  ret %nyx_string* %767
else209:
  br label %merge210
merge210:
  %768 = load i64, i64* %code.ptr
  %769 = icmp eq i64 %768, 13
  br i1 %769, label %then211, label %else212
then211:
  %770 = getelementptr [11 x i8], [11 x i8]* @.str4, i32 0, i32 0
  %771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %770, i64 10)
  ret %nyx_string* %771
else212:
  br label %merge213
merge213:
  %772 = load i64, i64* %code.ptr
  %773 = icmp eq i64 %772, 12
  br i1 %773, label %then214, label %else215
then214:
  %774 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %774, i64 3)
  ret %nyx_string* %775
else215:
  br label %merge216
merge216:
  %776 = load i64, i64* %code.ptr
  %777 = icmp eq i64 %776, 22
  br i1 %777, label %then217, label %else218
then217:
  %778 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %778, i64 7)
  ret %nyx_string* %779
else218:
  br label %merge219
merge219:
  %780 = load i64, i64* %code.ptr
  %781 = icmp eq i64 %780, 110
  br i1 %781, label %then220, label %else221
then220:
  %782 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %782, i64 7)
  ret %nyx_string* %783
else221:
  br label %merge222
merge222:
  %784 = load i64, i64* %code.ptr
  %785 = icmp eq i64 %784, 111
  br i1 %785, label %then223, label %else224
then223:
  %786 = getelementptr [11 x i8], [11 x i8]* @.str8, i32 0, i32 0
  %787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %786, i64 10)
  ret %nyx_string* %787
else224:
  br label %merge225
merge225:
  %788 = load i64, i64* %code.ptr
  %789 = icmp eq i64 %788, 98
  br i1 %789, label %then226, label %else227
then226:
  %790 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %790, i64 6)
  ret %nyx_string* %791
else227:
  br label %merge228
merge228:
  %792 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %792, i64 2)
  ret %nyx_string* %793
}

define %nyx_string* @error_to_string(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %794 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %795 = load %nyx_string*, %nyx_string** %794
  %796 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %796, i64 2)
  %798 = call %nyx_string* @nyx_string_concat(%nyx_string* %795, %nyx_string* %797)
  %799 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 2
  %800 = load %nyx_string*, %nyx_string** %799
  %801 = call %nyx_string* @nyx_string_concat(%nyx_string* %798, %nyx_string* %800)
  %802 = getelementptr [8 x i8], [8 x i8]* @.str12, i32 0, i32 0
  %803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %802, i64 7)
  %804 = call %nyx_string* @nyx_string_concat(%nyx_string* %801, %nyx_string* %803)
  %805 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 0
  %806 = load i64, i64* %805
  %807 = call %nyx_string* @nyx_string_from_int(i64 %806)
  %808 = call %nyx_string* @nyx_string_concat(%nyx_string* %804, %nyx_string* %807)
  %809 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %809, i64 1)
  %811 = call %nyx_string* @nyx_string_concat(%nyx_string* %808, %nyx_string* %810)
  ret %nyx_string* %811
}

define i1 @is_eof(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %812 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %813 = load %nyx_string*, %nyx_string** %812
  %814 = getelementptr [4 x i8], [4 x i8]* @.str14, i32 0, i32 0
  %815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %814, i64 3)
  %816 = call i1 @nyx_string_equals(%nyx_string* %813, %nyx_string* %815)
  ret i1 %816
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %817 = load %nyx_string*, %nyx_string** %line.ptr
  %818 = call %nyx_string* @nyx_string_trim(%nyx_string* %817)
  %819 = alloca %nyx_string*
  store %nyx_string* %818, %nyx_string** %819
  %820 = sub i64 0, 1
  %821 = alloca i64
  store i64 %820, i64* %821
  %822 = alloca i64
  store i64 0, i64* %822
  %823 = call i8* @llvm.stacksave()
  br label %while_cond229
while_cond229:
  %824 = load i64, i64* %822
  %825 = load %nyx_string*, %nyx_string** %819
  %826 = call i64 @nyx_string_byte_length(%nyx_string* %825)
  %827 = icmp slt i64 %824, %826
  br i1 %827, label %while_body230, label %while_end231
while_body230:
  call void @llvm.stackrestore(i8* %823)
  %828 = load %nyx_string*, %nyx_string** %819
  %829 = load i64, i64* %822
  %830 = call i8 @nyx_string_char_at(%nyx_string* %828, i64 %829)
  %831 = zext i8 %830 to i64
  %832 = icmp eq i64 %831, 61
  br i1 %832, label %then232, label %else233
then232:
  %833 = load i64, i64* %822
  store i64 %833, i64* %821
  %834 = load %nyx_string*, %nyx_string** %819
  %835 = call i64 @nyx_string_byte_length(%nyx_string* %834)
  store i64 %835, i64* %822
  br label %merge234
else233:
  %836 = load i64, i64* %822
  %837 = add i64 %836, 1
  store i64 %837, i64* %822
  br label %merge234
merge234:
  br label %while_cond229
while_end231:
  %838 = load i64, i64* %821
  %839 = icmp slt i64 %838, 0
  br i1 %839, label %then235, label %else236
then235:
  %840 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %840, i64 0)
  ret %nyx_string* %841
else236:
  br label %merge237
merge237:
  %842 = load %nyx_string*, %nyx_string** %819
  %843 = load i64, i64* %821
  %844 = add i64 %843, 1
  %845 = load %nyx_string*, %nyx_string** %819
  %846 = call i64 @nyx_string_byte_length(%nyx_string* %845)
  %847 = call %nyx_string* @nyx_string_substring(%nyx_string* %842, i64 %844, i64 %846)
  %848 = call %nyx_string* @nyx_string_trim(%nyx_string* %847)
  %849 = alloca %nyx_string*
  store %nyx_string* %848, %nyx_string** %849
  %850 = alloca i1
  store i1 false, i1* %850
  %851 = load %nyx_string*, %nyx_string** %849
  %852 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %852, i64 1)
  %854 = call i1 @nyx_string_starts_with(%nyx_string* %851, %nyx_string* %853)
  br i1 %854, label %sc_and_rhs238, label %sc_and_end239
sc_and_rhs238:
  %855 = load %nyx_string*, %nyx_string** %849
  %856 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %856, i64 1)
  %858 = call i1 @nyx_string_ends_with(%nyx_string* %855, %nyx_string* %857)
  store i1 %858, i1* %850
  br label %sc_and_end239
sc_and_end239:
  %859 = load i1, i1* %850
  br i1 %859, label %then240, label %else241
then240:
  %860 = load %nyx_string*, %nyx_string** %849
  %861 = load %nyx_string*, %nyx_string** %849
  %862 = call i64 @nyx_string_byte_length(%nyx_string* %861)
  %863 = sub i64 %862, 1
  %864 = call %nyx_string* @nyx_string_substring(%nyx_string* %860, i64 1, i64 %863)
  ret %nyx_string* %864
else241:
  br label %merge242
merge242:
  %865 = load %nyx_string*, %nyx_string** %849
  ret %nyx_string* %865
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %866 = load %nyx_string*, %nyx_string** %line.ptr
  %867 = call %nyx_string* @nyx_string_trim(%nyx_string* %866)
  %868 = alloca %nyx_string*
  store %nyx_string* %867, %nyx_string** %868
  %869 = sub i64 0, 1
  %870 = alloca i64
  store i64 %869, i64* %870
  %871 = alloca i64
  store i64 0, i64* %871
  %872 = call i8* @llvm.stacksave()
  br label %while_cond243
while_cond243:
  %873 = load i64, i64* %871
  %874 = load %nyx_string*, %nyx_string** %868
  %875 = call i64 @nyx_string_byte_length(%nyx_string* %874)
  %876 = icmp slt i64 %873, %875
  br i1 %876, label %while_body244, label %while_end245
while_body244:
  call void @llvm.stackrestore(i8* %872)
  %877 = load %nyx_string*, %nyx_string** %868
  %878 = load i64, i64* %871
  %879 = call i8 @nyx_string_char_at(%nyx_string* %877, i64 %878)
  %880 = zext i8 %879 to i64
  %881 = icmp eq i64 %880, 61
  br i1 %881, label %then246, label %else247
then246:
  %882 = load i64, i64* %871
  store i64 %882, i64* %870
  %883 = load %nyx_string*, %nyx_string** %868
  %884 = call i64 @nyx_string_byte_length(%nyx_string* %883)
  store i64 %884, i64* %871
  br label %merge248
else247:
  %885 = load i64, i64* %871
  %886 = add i64 %885, 1
  store i64 %886, i64* %871
  br label %merge248
merge248:
  br label %while_cond243
while_end245:
  %887 = load i64, i64* %870
  %888 = icmp slt i64 %887, 0
  br i1 %888, label %then249, label %else250
then249:
  %889 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %889, i64 0)
  ret %nyx_string* %890
else250:
  br label %merge251
merge251:
  %891 = load %nyx_string*, %nyx_string** %868
  %892 = load i64, i64* %870
  %893 = call %nyx_string* @nyx_string_substring(%nyx_string* %891, i64 0, i64 %892)
  %894 = call %nyx_string* @nyx_string_trim(%nyx_string* %893)
  ret %nyx_string* %894
}

define internal %TestConfig @load_test_config(
) {
  %895 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %896 = ptrtoint %TestConfig* %895 to i64
  %897 = call i8* @GC_malloc(i64 %896)
  %898 = bitcast i8* %897 to %TestConfig*
  %899 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %899, i64 5)
  %901 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 0
  store %nyx_string* %900, %nyx_string** %901
  %902 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 1
  store i64 30, i64* %902
  %903 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %903, i64 0)
  %905 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 2
  store %nyx_string* %904, %nyx_string** %905
  %906 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 3
  store i1 0, i1* %906
  %907 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %907, i64 0)
  %909 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 4
  store %nyx_string* %908, %nyx_string** %909
  %910 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 5
  store i1 0, i1* %910
  %911 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 6
  store i1 0, i1* %911
  %912 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 7
  store i1 0, i1* %912
  %913 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %913, i64 0)
  %915 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 8
  store %nyx_string* %914, %nyx_string** %915
  %916 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %916, i64 0)
  %918 = getelementptr %TestConfig, %TestConfig* %898, i32 0, i32 9
  store %nyx_string* %917, %nyx_string** %918
  %919 = load %TestConfig, %TestConfig* %898
  %920 = alloca %TestConfig
  store %TestConfig %919, %TestConfig* %920
  %921 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %921, i64 8)
  %923 = call i8* @nyx_string_to_cstr(%nyx_string* %922)
  %924 = call i1 @nyx_file_exists(i8* %923)
  %925 = xor i1 %924, true
  br i1 %925, label %then252, label %else253
then252:
  %926 = load %TestConfig, %TestConfig* %920
  ret %TestConfig %926
else253:
  br label %merge254
merge254:
  %927 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %927, i64 8)
  %929 = call i8* @nyx_string_to_cstr(%nyx_string* %928)
  %930 = call %nyx_string* @nyx_read_file(i8* %929)
  %931 = alloca %nyx_string*
  store %nyx_string* %930, %nyx_string** %931
  %932 = load %nyx_string*, %nyx_string** %931
  %933 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %933, i64 1)
  %935 = call { i64, i8* }* @nyx_string_split(%nyx_string* %932, %nyx_string* %934)
  %936 = alloca { i64, i8* }*
  store { i64, i8* }* %935, { i64, i8* }** %936
  %937 = alloca i1
  store i1 0, i1* %937
  %938 = alloca i1
  store i1 0, i1* %938
  %939 = alloca i64
  store i64 0, i64* %939
  %940 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %940, i64 6)
  %942 = alloca %nyx_string*
  store %nyx_string* %941, %nyx_string** %942
  %943 = getelementptr [2 x i8], [2 x i8]* @.str28, i32 0, i32 0
  %944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %943, i64 1)
  %945 = alloca %nyx_string*
  store %nyx_string* %944, %nyx_string** %945
  %946 = getelementptr [6 x i8], [6 x i8]* @.str29, i32 0, i32 0
  %947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %946, i64 5)
  %948 = alloca %nyx_string*
  store %nyx_string* %947, %nyx_string** %948
  %949 = getelementptr [8 x i8], [8 x i8]* @.str30, i32 0, i32 0
  %950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %949, i64 7)
  %951 = alloca %nyx_string*
  store %nyx_string* %950, %nyx_string** %951
  %952 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %952, i64 1)
  %954 = alloca %nyx_string*
  store %nyx_string* %953, %nyx_string** %954
  %955 = getelementptr [1 x i8], [1 x i8]* @.str32, i32 0, i32 0
  %956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %955, i64 0)
  %957 = alloca %nyx_string*
  store %nyx_string* %956, %nyx_string** %957
  %958 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %958, i64 1)
  %960 = alloca %nyx_string*
  store %nyx_string* %959, %nyx_string** %960
  %961 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %961, i64 1)
  %963 = alloca %nyx_string*
  store %nyx_string* %962, %nyx_string** %963
  %964 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %964, i64 1)
  %966 = alloca %nyx_string*
  store %nyx_string* %965, %nyx_string** %966
  %967 = getelementptr [4 x i8], [4 x i8]* @.str36, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %967, i64 3)
  %969 = alloca %nyx_string*
  store %nyx_string* %968, %nyx_string** %969
  %970 = getelementptr [8 x i8], [8 x i8]* @.str37, i32 0, i32 0
  %971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %970, i64 7)
  %972 = alloca %nyx_string*
  store %nyx_string* %971, %nyx_string** %972
  %973 = call i8* @llvm.stacksave()
  br label %while_cond255
while_cond255:
  %974 = load i64, i64* %939
  %975 = load { i64, i8* }*, { i64, i8* }** %936
  %976 = call i64 @nyx_array_length({ i64, i8* }* %975)
  %977 = icmp slt i64 %974, %976
  br i1 %977, label %while_body256, label %while_end257
while_body256:
  call void @llvm.stackrestore(i8* %973)
  %978 = load { i64, i8* }*, { i64, i8* }** %936
  %979 = load i64, i64* %939
  %980 = call i64 @nyx_array_get_checked({ i64, i8* }* %978, i64 %979, i64 2)
  %981 = inttoptr i64 %980 to %nyx_string*
  %982 = alloca %nyx_string*
  store %nyx_string* %981, %nyx_string** %982
  %983 = load %nyx_string*, %nyx_string** %982
  %984 = call %nyx_string* @nyx_string_trim(%nyx_string* %983)
  %985 = alloca %nyx_string*
  store %nyx_string* %984, %nyx_string** %985
  %986 = load %nyx_string*, %nyx_string** %985
  %987 = load %nyx_string*, %nyx_string** %942
  %988 = call i1 @nyx_string_equals(%nyx_string* %986, %nyx_string* %987)
  br i1 %988, label %then258, label %else259
then258:
  store i1 1, i1* %937
  br label %merge260
else259:
  %989 = load %nyx_string*, %nyx_string** %985
  %990 = load %nyx_string*, %nyx_string** %945
  %991 = call i1 @nyx_string_starts_with(%nyx_string* %989, %nyx_string* %990)
  br i1 %991, label %then261, label %else262
then261:
  store i1 0, i1* %937
  %992 = load %nyx_string*, %nyx_string** %985
  %993 = load %nyx_string*, %nyx_string** %948
  %994 = call i1 @nyx_string_equals(%nyx_string* %992, %nyx_string* %993)
  store i1 %994, i1* %938
  br label %merge263
else262:
  %995 = alloca i1
  store i1 false, i1* %995
  %996 = load i1, i1* %938
  br i1 %996, label %sc_and_rhs264, label %sc_and_end265
sc_and_rhs264:
  %997 = load %nyx_string*, %nyx_string** %985
  %998 = call %nyx_string* @parse_toml_key(%nyx_string* %997)
  %999 = load %nyx_string*, %nyx_string** %951
  %1000 = call i1 @nyx_string_equals(%nyx_string* %998, %nyx_string* %999)
  store i1 %1000, i1* %995
  br label %sc_and_end265
sc_and_end265:
  %1001 = load i1, i1* %995
  br i1 %1001, label %then266, label %else267
then266:
  %1002 = load %nyx_string*, %nyx_string** %985
  %1003 = load %nyx_string*, %nyx_string** %985
  %1004 = load %nyx_string*, %nyx_string** %954
  %1005 = call i64 @nyx_string_index_of(%nyx_string* %1003, %nyx_string* %1004)
  %1006 = add i64 %1005, 1
  %1007 = load %nyx_string*, %nyx_string** %985
  %1008 = call i64 @nyx_string_byte_length(%nyx_string* %1007)
  %1009 = call %nyx_string* @nyx_string_substring(%nyx_string* %1002, i64 %1006, i64 %1008)
  %1010 = call %nyx_string* @nyx_string_trim(%nyx_string* %1009)
  %1011 = alloca %nyx_string*
  store %nyx_string* %1010, %nyx_string** %1011
  %1012 = load %nyx_string*, %nyx_string** %1011
  %1013 = load %nyx_string*, %nyx_string** %945
  %1014 = load %nyx_string*, %nyx_string** %957
  %1015 = call %nyx_string* @nyx_string_replace(%nyx_string* %1012, %nyx_string* %1013, %nyx_string* %1014)
  %1016 = load %nyx_string*, %nyx_string** %960
  %1017 = load %nyx_string*, %nyx_string** %957
  %1018 = call %nyx_string* @nyx_string_replace(%nyx_string* %1015, %nyx_string* %1016, %nyx_string* %1017)
  %1019 = load %nyx_string*, %nyx_string** %963
  %1020 = load %nyx_string*, %nyx_string** %957
  %1021 = call %nyx_string* @nyx_string_replace(%nyx_string* %1018, %nyx_string* %1019, %nyx_string* %1020)
  %1022 = load %nyx_string*, %nyx_string** %966
  %1023 = load %nyx_string*, %nyx_string** %957
  %1024 = call %nyx_string* @nyx_string_replace(%nyx_string* %1021, %nyx_string* %1022, %nyx_string* %1023)
  store %nyx_string* %1024, %nyx_string** %1011
  %1025 = load %nyx_string*, %nyx_string** %1011
  %1026 = getelementptr %TestConfig, %TestConfig* %920, i32 0, i32 8
  store %nyx_string* %1025, %nyx_string** %1026
  br label %merge268
else267:
  %1027 = load i1, i1* %937
  br i1 %1027, label %then269, label %else270
then269:
  %1028 = load %nyx_string*, %nyx_string** %985
  %1029 = call %nyx_string* @parse_toml_key(%nyx_string* %1028)
  %1030 = alloca %nyx_string*
  store %nyx_string* %1029, %nyx_string** %1030
  %1031 = load %nyx_string*, %nyx_string** %985
  %1032 = call %nyx_string* @parse_toml_value(%nyx_string* %1031)
  %1033 = alloca %nyx_string*
  store %nyx_string* %1032, %nyx_string** %1033
  %1034 = load %nyx_string*, %nyx_string** %1030
  %1035 = load %nyx_string*, %nyx_string** %969
  %1036 = call i1 @nyx_string_equals(%nyx_string* %1034, %nyx_string* %1035)
  br i1 %1036, label %then272, label %else273
then272:
  %1037 = load %nyx_string*, %nyx_string** %1033
  %1038 = getelementptr %TestConfig, %TestConfig* %920, i32 0, i32 0
  store %nyx_string* %1037, %nyx_string** %1038
  br label %merge274
else273:
  br label %merge274
merge274:
  %1039 = load %nyx_string*, %nyx_string** %1030
  %1040 = load %nyx_string*, %nyx_string** %972
  %1041 = call i1 @nyx_string_equals(%nyx_string* %1039, %nyx_string* %1040)
  br i1 %1041, label %then275, label %else276
then275:
  %1042 = load %nyx_string*, %nyx_string** %1033
  %1043 = call i64 @nyx_string_to_int(%nyx_string* %1042)
  %1044 = getelementptr %TestConfig, %TestConfig* %920, i32 0, i32 1
  store i64 %1043, i64* %1044
  br label %merge277
else276:
  br label %merge277
merge277:
  br label %merge271
else270:
  br label %merge271
merge271:
  br label %merge268
merge268:
  br label %merge263
merge263:
  br label %merge260
merge260:
  %1045 = load i64, i64* %939
  %1046 = add i64 %1045, 1
  store i64 %1046, i64* %939
  br label %while_cond255
while_end257:
  %1047 = load %TestConfig, %TestConfig* %920
  ret %TestConfig %1047
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %1048 = call { i64, i8* }* @nyx_array_new_ptr()
  %1049 = alloca { i64, i8* }*
  store { i64, i8* }* %1048, { i64, i8* }** %1049
  %1050 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1051 = load %nyx_string*, %nyx_string** %1050
  %1052 = call i8* @nyx_string_to_cstr(%nyx_string* %1051)
  %1053 = call i1 @nyx_file_exists(i8* %1052)
  br i1 %1053, label %then278, label %else279
then278:
  %1054 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1055 = load %nyx_string*, %nyx_string** %1054
  %1056 = call i8* @nyx_string_to_cstr(%nyx_string* %1055)
  %1057 = call { i64, i8* }* @nyx_readdir(i8* %1056)
  %1058 = alloca { i64, i8* }*
  store { i64, i8* }* %1057, { i64, i8* }** %1058
  %1059 = alloca i64
  store i64 0, i64* %1059
  %1060 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %1061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %1060, i64 3)
  %1062 = alloca %nyx_string*
  store %nyx_string* %1061, %nyx_string** %1062
  %1063 = getelementptr [2 x i8], [2 x i8]* @.str39, i32 0, i32 0
  %1064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %1063, i64 1)
  %1065 = alloca %nyx_string*
  store %nyx_string* %1064, %nyx_string** %1065
  %1066 = getelementptr [1 x i8], [1 x i8]* @.str40, i32 0, i32 0
  %1067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %1066, i64 0)
  %1068 = alloca %nyx_string*
  store %nyx_string* %1067, %nyx_string** %1068
  %1069 = call i8* @llvm.stacksave()
  br label %while_cond281
while_cond281:
  %1070 = load i64, i64* %1059
  %1071 = load { i64, i8* }*, { i64, i8* }** %1058
  %1072 = call i64 @nyx_array_length({ i64, i8* }* %1071)
  %1073 = icmp slt i64 %1070, %1072
  br i1 %1073, label %while_body282, label %while_end283
while_body282:
  call void @llvm.stackrestore(i8* %1069)
  %1074 = load { i64, i8* }*, { i64, i8* }** %1058
  %1075 = load i64, i64* %1059
  %1076 = call i64 @nyx_array_get_checked({ i64, i8* }* %1074, i64 %1075, i64 2)
  %1077 = inttoptr i64 %1076 to %nyx_string*
  %1078 = alloca %nyx_string*
  store %nyx_string* %1077, %nyx_string** %1078
  %1079 = load %nyx_string*, %nyx_string** %1078
  %1080 = load %nyx_string*, %nyx_string** %1062
  %1081 = call i1 @nyx_string_ends_with(%nyx_string* %1079, %nyx_string* %1080)
  br i1 %1081, label %then284, label %else285
then284:
  %1082 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1083 = load %nyx_string*, %nyx_string** %1082
  %1084 = load %nyx_string*, %nyx_string** %1065
  %1085 = call %nyx_string* @nyx_string_concat(%nyx_string* %1083, %nyx_string* %1084)
  %1086 = load %nyx_string*, %nyx_string** %1078
  %1087 = call %nyx_string* @nyx_string_concat(%nyx_string* %1085, %nyx_string* %1086)
  %1088 = alloca %nyx_string*
  store %nyx_string* %1087, %nyx_string** %1088
  %1089 = alloca i1
  store i1 true, i1* %1089
  %1090 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1091 = load %nyx_string*, %nyx_string** %1090
  %1092 = load %nyx_string*, %nyx_string** %1068
  %1093 = call i1 @nyx_string_equals(%nyx_string* %1091, %nyx_string* %1092)
  br i1 %1093, label %sc_or_end288, label %sc_or_rhs287
sc_or_rhs287:
  %1094 = load %nyx_string*, %nyx_string** %1078
  %1095 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1096 = load %nyx_string*, %nyx_string** %1095
  %1097 = call i1 @nyx_string_contains(%nyx_string* %1094, %nyx_string* %1096)
  store i1 %1097, i1* %1089
  br label %sc_or_end288
sc_or_end288:
  %1098 = load i1, i1* %1089
  br i1 %1098, label %then289, label %else290
then289:
  %1099 = load { i64, i8* }*, { i64, i8* }** %1049
  %1100 = load %nyx_string*, %nyx_string** %1088
  %1101 = ptrtoint %nyx_string* %1100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1099, i64 %1101, i64 2)
  br label %merge291
else290:
  br label %merge291
merge291:
  br label %merge286
else285:
  br label %merge286
merge286:
  %1102 = load i64, i64* %1059
  %1103 = add i64 %1102, 1
  store i64 %1103, i64* %1059
  br label %while_cond281
while_end283:
  br label %merge280
else279:
  br label %merge280
merge280:
  %1104 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %1104, i64 3)
  %1106 = call i8* @nyx_string_to_cstr(%nyx_string* %1105)
  %1107 = call i1 @nyx_file_exists(i8* %1106)
  br i1 %1107, label %then292, label %else293
then292:
  %1108 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %1109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %1108, i64 3)
  %1110 = call i8* @nyx_string_to_cstr(%nyx_string* %1109)
  %1111 = call { i64, i8* }* @nyx_readdir(i8* %1110)
  %1112 = alloca { i64, i8* }*
  store { i64, i8* }* %1111, { i64, i8* }** %1112
  %1113 = alloca i64
  store i64 0, i64* %1113
  %1114 = getelementptr [9 x i8], [9 x i8]* @.str43, i32 0, i32 0
  %1115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %1114, i64 8)
  %1116 = alloca %nyx_string*
  store %nyx_string* %1115, %nyx_string** %1116
  %1117 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %1118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %1117, i64 4)
  %1119 = alloca %nyx_string*
  store %nyx_string* %1118, %nyx_string** %1119
  %1120 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %1121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1120, i64 0)
  %1122 = alloca %nyx_string*
  store %nyx_string* %1121, %nyx_string** %1122
  %1123 = call i8* @llvm.stacksave()
  br label %while_cond295
while_cond295:
  %1124 = load i64, i64* %1113
  %1125 = load { i64, i8* }*, { i64, i8* }** %1112
  %1126 = call i64 @nyx_array_length({ i64, i8* }* %1125)
  %1127 = icmp slt i64 %1124, %1126
  br i1 %1127, label %while_body296, label %while_end297
while_body296:
  call void @llvm.stackrestore(i8* %1123)
  %1128 = load { i64, i8* }*, { i64, i8* }** %1112
  %1129 = load i64, i64* %1113
  %1130 = call i64 @nyx_array_get_checked({ i64, i8* }* %1128, i64 %1129, i64 2)
  %1131 = inttoptr i64 %1130 to %nyx_string*
  %1132 = alloca %nyx_string*
  store %nyx_string* %1131, %nyx_string** %1132
  %1133 = load %nyx_string*, %nyx_string** %1132
  %1134 = load %nyx_string*, %nyx_string** %1116
  %1135 = call i1 @nyx_string_ends_with(%nyx_string* %1133, %nyx_string* %1134)
  br i1 %1135, label %then298, label %else299
then298:
  %1136 = load %nyx_string*, %nyx_string** %1119
  %1137 = load %nyx_string*, %nyx_string** %1132
  %1138 = call %nyx_string* @nyx_string_concat(%nyx_string* %1136, %nyx_string* %1137)
  %1139 = alloca %nyx_string*
  store %nyx_string* %1138, %nyx_string** %1139
  %1140 = alloca i1
  store i1 true, i1* %1140
  %1141 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1142 = load %nyx_string*, %nyx_string** %1141
  %1143 = load %nyx_string*, %nyx_string** %1122
  %1144 = call i1 @nyx_string_equals(%nyx_string* %1142, %nyx_string* %1143)
  br i1 %1144, label %sc_or_end302, label %sc_or_rhs301
sc_or_rhs301:
  %1145 = load %nyx_string*, %nyx_string** %1132
  %1146 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1147 = load %nyx_string*, %nyx_string** %1146
  %1148 = call i1 @nyx_string_contains(%nyx_string* %1145, %nyx_string* %1147)
  store i1 %1148, i1* %1140
  br label %sc_or_end302
sc_or_end302:
  %1149 = load i1, i1* %1140
  br i1 %1149, label %then303, label %else304
then303:
  %1150 = load { i64, i8* }*, { i64, i8* }** %1049
  %1151 = load %nyx_string*, %nyx_string** %1139
  %1152 = ptrtoint %nyx_string* %1151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1150, i64 %1152, i64 2)
  br label %merge305
else304:
  br label %merge305
merge305:
  br label %merge300
else299:
  br label %merge300
merge300:
  %1153 = load i64, i64* %1113
  %1154 = add i64 %1153, 1
  store i64 %1154, i64* %1113
  br label %while_cond295
while_end297:
  br label %merge294
else293:
  br label %merge294
merge294:
  %1155 = load { i64, i8* }*, { i64, i8* }** %1049
  %1156 = call { i64, i8* }* @sort_str({ i64, i8* }* %1155)
  ret { i64, i8* }* %1156
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1157 = load %nyx_string*, %nyx_string** %path.ptr
  %1158 = call i8* @nyx_string_to_cstr(%nyx_string* %1157)
  %1159 = call %nyx_string* @nyx_read_file(i8* %1158)
  %1160 = alloca %nyx_string*
  store %nyx_string* %1159, %nyx_string** %1160
  %1161 = load %nyx_string*, %nyx_string** %1160
  %1162 = getelementptr [7 x i8], [7 x i8]* @.str46, i32 0, i32 0
  %1163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1162, i64 6)
  %1164 = call i1 @nyx_string_contains(%nyx_string* %1161, %nyx_string* %1163)
  ret i1 %1164
}

define internal %nyx_string* @lib_modulo_de(
%nyx_string* %file.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %1165 = load %nyx_string*, %nyx_string** %file.ptr
  %1166 = alloca %nyx_string*
  store %nyx_string* %1165, %nyx_string** %1166
  %1167 = load %nyx_string*, %nyx_string** %1166
  %1168 = getelementptr [3 x i8], [3 x i8]* @.str47, i32 0, i32 0
  %1169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1168, i64 2)
  %1170 = call i1 @nyx_string_starts_with(%nyx_string* %1167, %nyx_string* %1169)
  br i1 %1170, label %then306, label %else307
then306:
  %1171 = load %nyx_string*, %nyx_string** %1166
  %1172 = load %nyx_string*, %nyx_string** %1166
  %1173 = call i64 @nyx_string_byte_length(%nyx_string* %1172)
  %1174 = call %nyx_string* @nyx_string_substring(%nyx_string* %1171, i64 2, i64 %1173)
  store %nyx_string* %1174, %nyx_string** %1166
  br label %merge308
else307:
  br label %merge308
merge308:
  %1175 = load %nyx_string*, %nyx_string** %1166
  %1176 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1176, i64 3)
  %1178 = call i1 @nyx_string_ends_with(%nyx_string* %1175, %nyx_string* %1177)
  br i1 %1178, label %then309, label %else310
then309:
  %1179 = load %nyx_string*, %nyx_string** %1166
  %1180 = load %nyx_string*, %nyx_string** %1166
  %1181 = call i64 @nyx_string_byte_length(%nyx_string* %1180)
  %1182 = sub i64 %1181, 3
  %1183 = call %nyx_string* @nyx_string_substring(%nyx_string* %1179, i64 0, i64 %1182)
  store %nyx_string* %1183, %nyx_string** %1166
  br label %merge311
else310:
  br label %merge311
merge311:
  %1184 = load %nyx_string*, %nyx_string** %1166
  ret %nyx_string* %1184
}

define internal %nyx_string* @rt_cache_sh(
) {
  %1185 = getelementptr [17 x i8], [17 x i8]* @.str49, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1185, i64 16)
  %1187 = alloca %nyx_string*
  store %nyx_string* %1186, %nyx_string** %1187
  %1188 = load %nyx_string*, %nyx_string** %1187
  %1189 = getelementptr [41 x i8], [41 x i8]* @.str50, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1189, i64 40)
  %1191 = call %nyx_string* @nyx_string_concat(%nyx_string* %1188, %nyx_string* %1190)
  store %nyx_string* %1191, %nyx_string** %1187
  %1192 = load %nyx_string*, %nyx_string** %1187
  %1193 = getelementptr [24 x i8], [24 x i8]* @.str51, i32 0, i32 0
  %1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1193, i64 23)
  %1195 = call %nyx_string* @nyx_string_concat(%nyx_string* %1192, %nyx_string* %1194)
  store %nyx_string* %1195, %nyx_string** %1187
  %1196 = load %nyx_string*, %nyx_string** %1187
  %1197 = getelementptr [92 x i8], [92 x i8]* @.str52, i32 0, i32 0
  %1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1197, i64 91)
  %1199 = call %nyx_string* @nyx_string_concat(%nyx_string* %1196, %nyx_string* %1198)
  store %nyx_string* %1199, %nyx_string** %1187
  %1200 = load %nyx_string*, %nyx_string** %1187
  %1201 = getelementptr [177 x i8], [177 x i8]* @.str53, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1201, i64 176)
  %1203 = call %nyx_string* @nyx_string_concat(%nyx_string* %1200, %nyx_string* %1202)
  store %nyx_string* %1203, %nyx_string** %1187
  %1204 = load %nyx_string*, %nyx_string** %1187
  %1205 = getelementptr [35 x i8], [35 x i8]* @.str54, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1205, i64 34)
  %1207 = call %nyx_string* @nyx_string_concat(%nyx_string* %1204, %nyx_string* %1206)
  store %nyx_string* %1207, %nyx_string** %1187
  %1208 = load %nyx_string*, %nyx_string** %1187
  %1209 = getelementptr [83 x i8], [83 x i8]* @.str55, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1209, i64 82)
  %1211 = call %nyx_string* @nyx_string_concat(%nyx_string* %1208, %nyx_string* %1210)
  store %nyx_string* %1211, %nyx_string** %1187
  %1212 = load %nyx_string*, %nyx_string** %1187
  %1213 = getelementptr [49 x i8], [49 x i8]* @.str56, i32 0, i32 0
  %1214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1213, i64 48)
  %1215 = call %nyx_string* @nyx_string_concat(%nyx_string* %1212, %nyx_string* %1214)
  store %nyx_string* %1215, %nyx_string** %1187
  %1216 = load %nyx_string*, %nyx_string** %1187
  %1217 = getelementptr [89 x i8], [89 x i8]* @.str57, i32 0, i32 0
  %1218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1217, i64 88)
  %1219 = call %nyx_string* @nyx_string_concat(%nyx_string* %1216, %nyx_string* %1218)
  store %nyx_string* %1219, %nyx_string** %1187
  %1220 = load %nyx_string*, %nyx_string** %1187
  %1221 = getelementptr [68 x i8], [68 x i8]* @.str58, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1221, i64 67)
  %1223 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1222)
  store %nyx_string* %1223, %nyx_string** %1187
  %1224 = load %nyx_string*, %nyx_string** %1187
  %1225 = getelementptr [15 x i8], [15 x i8]* @.str59, i32 0, i32 0
  %1226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1225, i64 14)
  %1227 = call %nyx_string* @nyx_string_concat(%nyx_string* %1224, %nyx_string* %1226)
  store %nyx_string* %1227, %nyx_string** %1187
  %1228 = load %nyx_string*, %nyx_string** %1187
  %1229 = getelementptr [49 x i8], [49 x i8]* @.str60, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1229, i64 48)
  %1231 = call %nyx_string* @nyx_string_concat(%nyx_string* %1228, %nyx_string* %1230)
  store %nyx_string* %1231, %nyx_string** %1187
  %1232 = load %nyx_string*, %nyx_string** %1187
  %1233 = getelementptr [196 x i8], [196 x i8]* @.str61, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1233, i64 195)
  %1235 = call %nyx_string* @nyx_string_concat(%nyx_string* %1232, %nyx_string* %1234)
  store %nyx_string* %1235, %nyx_string** %1187
  %1236 = load %nyx_string*, %nyx_string** %1187
  %1237 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %1238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1237, i64 7)
  %1239 = call %nyx_string* @nyx_string_concat(%nyx_string* %1236, %nyx_string* %1238)
  store %nyx_string* %1239, %nyx_string** %1187
  %1240 = load %nyx_string*, %nyx_string** %1187
  %1241 = getelementptr [138 x i8], [138 x i8]* @.str63, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1241, i64 137)
  %1243 = call %nyx_string* @nyx_string_concat(%nyx_string* %1240, %nyx_string* %1242)
  store %nyx_string* %1243, %nyx_string** %1187
  %1244 = load %nyx_string*, %nyx_string** %1187
  %1245 = getelementptr [43 x i8], [43 x i8]* @.str64, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1245, i64 42)
  %1247 = call %nyx_string* @nyx_string_concat(%nyx_string* %1244, %nyx_string* %1246)
  store %nyx_string* %1247, %nyx_string** %1187
  %1248 = load %nyx_string*, %nyx_string** %1187
  %1249 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %1250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1249, i64 5)
  %1251 = call %nyx_string* @nyx_string_concat(%nyx_string* %1248, %nyx_string* %1250)
  store %nyx_string* %1251, %nyx_string** %1187
  %1252 = load %nyx_string*, %nyx_string** %1187
  %1253 = getelementptr [27 x i8], [27 x i8]* @.str66, i32 0, i32 0
  %1254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1253, i64 26)
  %1255 = call %nyx_string* @nyx_string_concat(%nyx_string* %1252, %nyx_string* %1254)
  store %nyx_string* %1255, %nyx_string** %1187
  %1256 = load %nyx_string*, %nyx_string** %1187
  %1257 = getelementptr [3 x i8], [3 x i8]* @.str67, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1257, i64 2)
  %1259 = call %nyx_string* @nyx_string_concat(%nyx_string* %1256, %nyx_string* %1258)
  store %nyx_string* %1259, %nyx_string** %1187
  %1260 = load %nyx_string*, %nyx_string** %1187
  ret %nyx_string* %1260
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
  %1261 = getelementptr [9 x i8], [9 x i8]* @.str68, i32 0, i32 0
  %1262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1261, i64 8)
  %1263 = call i8* @nyx_string_to_cstr(%nyx_string* %1262)
  %1264 = call %nyx_string* @nyx_getenv(i8* %1263)
  %1265 = alloca %nyx_string*
  store %nyx_string* %1264, %nyx_string** %1265
  %1266 = load %nyx_string*, %nyx_string** %1265
  %1267 = getelementptr [1 x i8], [1 x i8]* @.str69, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1267, i64 0)
  %1269 = call i1 @nyx_string_equals(%nyx_string* %1266, %nyx_string* %1268)
  br i1 %1269, label %then312, label %else313
then312:
  %1270 = getelementptr %TestResult, %TestResult* null, i32 1
  %1271 = ptrtoint %TestResult* %1270 to i64
  %1272 = call i8* @GC_malloc(i64 %1271)
  %1273 = bitcast i8* %1272 to %TestResult*
  %1274 = load %nyx_string*, %nyx_string** %file.ptr
  %1275 = getelementptr %TestResult, %TestResult* %1273, i32 0, i32 0
  store %nyx_string* %1274, %nyx_string** %1275
  %1276 = getelementptr %TestResult, %TestResult* %1273, i32 0, i32 1
  store i64 0, i64* %1276
  %1277 = getelementptr %TestResult, %TestResult* %1273, i32 0, i32 2
  store i64 0, i64* %1277
  %1278 = getelementptr [24 x i8], [24 x i8]* @.str70, i32 0, i32 0
  %1279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1278, i64 23)
  %1280 = getelementptr %TestResult, %TestResult* %1273, i32 0, i32 3
  store %nyx_string* %1279, %nyx_string** %1280
  %1281 = getelementptr %TestResult, %TestResult* %1273, i32 0, i32 4
  store i1 0, i1* %1281
  %1282 = load %TestResult, %TestResult* %1273
  ret %TestResult %1282
else313:
  br label %merge314
merge314:
  %1283 = getelementptr [4 x i8], [4 x i8]* @.str71, i32 0, i32 0
  %1284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1283, i64 3)
  %1285 = call i8* @nyx_string_to_cstr(%nyx_string* %1284)
  %1286 = call %nyx_string* @nyx_getenv(i8* %1285)
  %1287 = alloca %nyx_string*
  store %nyx_string* %1286, %nyx_string** %1287
  %1288 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1289 = load i64, i64* %1288
  %1290 = call %nyx_string* @nyx_string_from_int(i64 %1289)
  %1291 = alloca %nyx_string*
  store %nyx_string* %1290, %nyx_string** %1291
  %1292 = getelementptr [31 x i8], [31 x i8]* @.str72, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1292, i64 30)
  %1294 = call i8* @nyx_string_to_cstr(%nyx_string* %1293)
  %1295 = call %nyx_string* @nyx_exec(i8* %1294)
  %1296 = call %nyx_string* @nyx_string_trim(%nyx_string* %1295)
  %1297 = alloca %nyx_string*
  store %nyx_string* %1296, %nyx_string** %1297
  %1298 = load %nyx_string*, %nyx_string** %1297
  %1299 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1299, i64 8)
  %1301 = call %nyx_string* @nyx_string_concat(%nyx_string* %1298, %nyx_string* %1300)
  %1302 = alloca %nyx_string*
  store %nyx_string* %1301, %nyx_string** %1302
  %1303 = load %nyx_string*, %nyx_string** %1297
  %1304 = getelementptr [5 x i8], [5 x i8]* @.str74, i32 0, i32 0
  %1305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1304, i64 4)
  %1306 = call %nyx_string* @nyx_string_concat(%nyx_string* %1303, %nyx_string* %1305)
  %1307 = alloca %nyx_string*
  store %nyx_string* %1306, %nyx_string** %1307
  %1308 = getelementptr [1 x i8], [1 x i8]* @.str75, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1308, i64 0)
  %1310 = alloca %nyx_string*
  store %nyx_string* %1309, %nyx_string** %1310
  %1311 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1312 = load i1, i1* %1311
  br i1 %1312, label %then315, label %else316
then315:
  %1313 = getelementptr [5 x i8], [5 x i8]* @.str76, i32 0, i32 0
  %1314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1313, i64 4)
  store %nyx_string* %1314, %nyx_string** %1310
  br label %merge317
else316:
  br label %merge317
merge317:
  %1315 = getelementptr [62 x i8], [62 x i8]* @.str77, i32 0, i32 0
  %1316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1315, i64 61)
  %1317 = getelementptr [54 x i8], [54 x i8]* @.str78, i32 0, i32 0
  %1318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1317, i64 53)
  %1319 = call %nyx_string* @nyx_string_concat(%nyx_string* %1316, %nyx_string* %1318)
  %1320 = getelementptr [48 x i8], [48 x i8]* @.str79, i32 0, i32 0
  %1321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1320, i64 47)
  %1322 = call %nyx_string* @nyx_string_concat(%nyx_string* %1319, %nyx_string* %1321)
  %1323 = getelementptr [47 x i8], [47 x i8]* @.str80, i32 0, i32 0
  %1324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1323, i64 46)
  %1325 = call %nyx_string* @nyx_string_concat(%nyx_string* %1322, %nyx_string* %1324)
  %1326 = getelementptr [67 x i8], [67 x i8]* @.str81, i32 0, i32 0
  %1327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1326, i64 66)
  %1328 = call %nyx_string* @nyx_string_concat(%nyx_string* %1325, %nyx_string* %1327)
  %1329 = getelementptr [51 x i8], [51 x i8]* @.str82, i32 0, i32 0
  %1330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1329, i64 50)
  %1331 = call %nyx_string* @nyx_string_concat(%nyx_string* %1328, %nyx_string* %1330)
  %1332 = getelementptr [105 x i8], [105 x i8]* @.str83, i32 0, i32 0
  %1333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1332, i64 104)
  %1334 = call %nyx_string* @nyx_string_concat(%nyx_string* %1331, %nyx_string* %1333)
  %1335 = getelementptr [23 x i8], [23 x i8]* @.str84, i32 0, i32 0
  %1336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1335, i64 22)
  %1337 = call %nyx_string* @nyx_string_concat(%nyx_string* %1334, %nyx_string* %1336)
  %1338 = alloca %nyx_string*
  store %nyx_string* %1337, %nyx_string** %1338
  %1339 = getelementptr [15 x i8], [15 x i8]* @.str85, i32 0, i32 0
  %1340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1339, i64 14)
  %1341 = call i8* @nyx_string_to_cstr(%nyx_string* %1340)
  %1342 = call %nyx_string* @nyx_getenv(i8* %1341)
  %1343 = alloca %nyx_string*
  store %nyx_string* %1342, %nyx_string** %1343
  %1344 = alloca i1
  store i1 false, i1* %1344
  %1345 = load %nyx_string*, %nyx_string** %1343
  %1346 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1346, i64 0)
  %1348 = call i1 @nyx_string_equals(%nyx_string* %1345, %nyx_string* %1347)
  %1349 = xor i1 %1348, true
  br i1 %1349, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1350 = load %nyx_string*, %nyx_string** %1343
  %1351 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %1352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1351, i64 1)
  %1353 = call i1 @nyx_string_starts_with(%nyx_string* %1350, %nyx_string* %1352)
  %1354 = xor i1 %1353, true
  store i1 %1354, i1* %1344
  br label %sc_and_end319
sc_and_end319:
  %1355 = load i1, i1* %1344
  br i1 %1355, label %then320, label %else321
then320:
  %1356 = load %nyx_string*, %nyx_string** %1287
  %1357 = getelementptr [2 x i8], [2 x i8]* @.str88, i32 0, i32 0
  %1358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1357, i64 1)
  %1359 = call %nyx_string* @nyx_string_concat(%nyx_string* %1356, %nyx_string* %1358)
  %1360 = load %nyx_string*, %nyx_string** %1343
  %1361 = call %nyx_string* @nyx_string_concat(%nyx_string* %1359, %nyx_string* %1360)
  store %nyx_string* %1361, %nyx_string** %1343
  br label %merge322
else321:
  br label %merge322
merge322:
  %1362 = getelementptr [8 x i8], [8 x i8]* @.str89, i32 0, i32 0
  %1363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1362, i64 7)
  %1364 = load %nyx_string*, %nyx_string** %1338
  %1365 = call %nyx_string* @nyx_string_concat(%nyx_string* %1363, %nyx_string* %1364)
  %1366 = getelementptr [3 x i8], [3 x i8]* @.str90, i32 0, i32 0
  %1367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1366, i64 2)
  %1368 = call %nyx_string* @nyx_string_concat(%nyx_string* %1365, %nyx_string* %1367)
  %1369 = alloca %nyx_string*
  store %nyx_string* %1368, %nyx_string** %1369
  %1370 = alloca i1
  store i1 false, i1* %1370
  %1371 = load %nyx_string*, %nyx_string** %1343
  %1372 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %1373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1372, i64 0)
  %1374 = call i1 @nyx_string_equals(%nyx_string* %1371, %nyx_string* %1373)
  %1375 = xor i1 %1374, true
  br i1 %1375, label %sc_and_rhs323, label %sc_and_end324
sc_and_rhs323:
  %1376 = load %nyx_string*, %nyx_string** %1343
  %1377 = call i8* @nyx_string_to_cstr(%nyx_string* %1376)
  %1378 = call i1 @nyx_file_exists(i8* %1377)
  store i1 %1378, i1* %1370
  br label %sc_and_end324
sc_and_end324:
  %1379 = load i1, i1* %1370
  br i1 %1379, label %then325, label %else326
then325:
  %1380 = getelementptr [9 x i8], [9 x i8]* @.str92, i32 0, i32 0
  %1381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1380, i64 8)
  %1382 = load %nyx_string*, %nyx_string** %1343
  %1383 = call %nyx_string* @nyx_string_concat(%nyx_string* %1381, %nyx_string* %1382)
  %1384 = getelementptr [4 x i8], [4 x i8]* @.str93, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1384, i64 3)
  %1386 = call %nyx_string* @nyx_string_concat(%nyx_string* %1383, %nyx_string* %1385)
  store %nyx_string* %1386, %nyx_string** %1369
  br label %merge327
else326:
  %1387 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1388 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %1389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1388, i64 0)
  %1390 = call i1 @nyx_string_equals(%nyx_string* %1387, %nyx_string* %1389)
  br i1 %1390, label %then328, label %else329
then328:
  %1391 = call %nyx_string* @rt_cache_sh()
  %1392 = load %nyx_string*, %nyx_string** %1369
  %1393 = call %nyx_string* @nyx_string_concat(%nyx_string* %1391, %nyx_string* %1392)
  %1394 = getelementptr [22 x i8], [22 x i8]* @.str95, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1394, i64 21)
  %1396 = call %nyx_string* @nyx_string_concat(%nyx_string* %1393, %nyx_string* %1395)
  %1397 = load %nyx_string*, %nyx_string** %1338
  %1398 = call %nyx_string* @nyx_string_concat(%nyx_string* %1396, %nyx_string* %1397)
  %1399 = getelementptr [31 x i8], [31 x i8]* @.str96, i32 0, i32 0
  %1400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1399, i64 30)
  %1401 = call %nyx_string* @nyx_string_concat(%nyx_string* %1398, %nyx_string* %1400)
  store %nyx_string* %1401, %nyx_string** %1369
  br label %merge330
else329:
  br label %merge330
merge330:
  br label %merge327
merge327:
  %1402 = getelementptr [3 x i8], [3 x i8]* @.str97, i32 0, i32 0
  %1403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1402, i64 2)
  %1404 = getelementptr [13 x i8], [13 x i8]* @.str98, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1404, i64 12)
  %1406 = call %nyx_string* @nyx_string_concat(%nyx_string* %1403, %nyx_string* %1405)
  store %nyx_string* %1406, %nyx_string** %1338
  %1407 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1407, i64 0)
  %1409 = alloca %nyx_string*
  store %nyx_string* %1408, %nyx_string** %1409
  %1410 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1410, i64 0)
  %1412 = alloca %nyx_string*
  store %nyx_string* %1411, %nyx_string** %1412
  %1413 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1413, i64 0)
  %1415 = alloca %nyx_string*
  store %nyx_string* %1414, %nyx_string** %1415
  %1416 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1417 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1417, i64 0)
  %1419 = call i1 @nyx_string_equals(%nyx_string* %1416, %nyx_string* %1418)
  %1420 = xor i1 %1419, true
  br i1 %1420, label %then331, label %else332
then331:
  %1421 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1422 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1422, i64 1)
  %1424 = call %nyx_string* @nyx_string_concat(%nyx_string* %1421, %nyx_string* %1423)
  %1425 = load i64, i64* %cov_idx.ptr
  %1426 = call %nyx_string* @nyx_string_from_int(i64 %1425)
  %1427 = call %nyx_string* @nyx_string_concat(%nyx_string* %1424, %nyx_string* %1426)
  %1428 = alloca %nyx_string*
  store %nyx_string* %1427, %nyx_string** %1428
  %1429 = getelementptr [20 x i8], [20 x i8]* @.str104, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1429, i64 19)
  %1431 = load %nyx_string*, %nyx_string** %1428
  %1432 = call %nyx_string* @nyx_string_concat(%nyx_string* %1430, %nyx_string* %1431)
  %1433 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %1434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1433, i64 5)
  %1435 = call %nyx_string* @nyx_string_concat(%nyx_string* %1432, %nyx_string* %1434)
  store %nyx_string* %1435, %nyx_string** %1409
  %1436 = getelementptr [62 x i8], [62 x i8]* @.str106, i32 0, i32 0
  %1437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1436, i64 61)
  store %nyx_string* %1437, %nyx_string** %1412
  %1438 = getelementptr [20 x i8], [20 x i8]* @.str107, i32 0, i32 0
  %1439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1438, i64 19)
  %1440 = load %nyx_string*, %nyx_string** %1428
  %1441 = call %nyx_string* @nyx_string_concat(%nyx_string* %1439, %nyx_string* %1440)
  %1442 = getelementptr [11 x i8], [11 x i8]* @.str108, i32 0, i32 0
  %1443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1442, i64 10)
  %1444 = call %nyx_string* @nyx_string_concat(%nyx_string* %1441, %nyx_string* %1443)
  store %nyx_string* %1444, %nyx_string** %1415
  br label %merge333
else332:
  br label %merge333
merge333:
  %1445 = getelementptr [20 x i8], [20 x i8]* @.str109, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1445, i64 19)
  %1447 = getelementptr [180 x i8], [180 x i8]* @.str110, i32 0, i32 0
  %1448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1447, i64 179)
  %1449 = call %nyx_string* @nyx_string_concat(%nyx_string* %1446, %nyx_string* %1448)
  %1450 = getelementptr [322 x i8], [322 x i8]* @.str111, i32 0, i32 0
  %1451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1450, i64 321)
  %1452 = call %nyx_string* @nyx_string_concat(%nyx_string* %1449, %nyx_string* %1451)
  %1453 = alloca %nyx_string*
  store %nyx_string* %1452, %nyx_string** %1453
  %1454 = load %nyx_string*, %nyx_string** %file.ptr
  %1455 = call %nyx_string* @lib_modulo_de(%nyx_string* %1454)
  %1456 = alloca %nyx_string*
  store %nyx_string* %1455, %nyx_string** %1456
  %1457 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1457, i64 0)
  %1459 = alloca %nyx_string*
  store %nyx_string* %1458, %nyx_string** %1459
  %1460 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1460, i64 0)
  %1462 = alloca %nyx_string*
  store %nyx_string* %1461, %nyx_string** %1462
  %1463 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1464 = load %nyx_string*, %nyx_string** %1463
  %1465 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1465, i64 0)
  %1467 = call i1 @nyx_string_equals(%nyx_string* %1464, %nyx_string* %1466)
  %1468 = xor i1 %1467, true
  br i1 %1468, label %then334, label %else335
then334:
  %1469 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1470 = load %nyx_string*, %nyx_string** %1469
  %1471 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1472 = load %nyx_string*, %nyx_string** %1471
  %1473 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %1474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1473, i64 1)
  %1475 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1472, %nyx_string* %1474)
  %1476 = alloca { i64, i8* }*
  store { i64, i8* }* %1475, { i64, i8* }** %1476
  %1477 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1477, i64 0)
  %1479 = alloca %nyx_string*
  store %nyx_string* %1478, %nyx_string** %1479
  %1480 = alloca i64
  store i64 0, i64* %1480
  %1481 = getelementptr [1 x i8], [1 x i8]* @.str117, i32 0, i32 0
  %1482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1481, i64 0)
  %1483 = alloca %nyx_string*
  store %nyx_string* %1482, %nyx_string** %1483
  %1484 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1484, i64 1)
  %1486 = alloca %nyx_string*
  store %nyx_string* %1485, %nyx_string** %1486
  %1487 = call i8* @llvm.stacksave()
  br label %while_cond337
while_cond337:
  %1488 = load i64, i64* %1480
  %1489 = load { i64, i8* }*, { i64, i8* }** %1476
  %1490 = call i64 @nyx_array_length({ i64, i8* }* %1489)
  %1491 = icmp slt i64 %1488, %1490
  br i1 %1491, label %while_body338, label %while_end339
while_body338:
  call void @llvm.stackrestore(i8* %1487)
  %1492 = load { i64, i8* }*, { i64, i8* }** %1476
  %1493 = load i64, i64* %1480
  %1494 = call i64 @nyx_array_get_checked({ i64, i8* }* %1492, i64 %1493, i64 2)
  %1495 = inttoptr i64 %1494 to %nyx_string*
  %1496 = alloca %nyx_string*
  store %nyx_string* %1495, %nyx_string** %1496
  %1497 = alloca i1
  store i1 false, i1* %1497
  %1498 = load %nyx_string*, %nyx_string** %1496
  %1499 = load %nyx_string*, %nyx_string** %1483
  %1500 = call i1 @nyx_string_equals(%nyx_string* %1498, %nyx_string* %1499)
  %1501 = xor i1 %1500, true
  br i1 %1501, label %sc_and_rhs340, label %sc_and_end341
sc_and_rhs340:
  %1502 = load %nyx_string*, %nyx_string** %1496
  %1503 = load %nyx_string*, %nyx_string** %1456
  %1504 = call i1 @nyx_string_equals(%nyx_string* %1502, %nyx_string* %1503)
  %1505 = xor i1 %1504, true
  store i1 %1505, i1* %1497
  br label %sc_and_end341
sc_and_end341:
  %1506 = load i1, i1* %1497
  br i1 %1506, label %then342, label %else343
then342:
  %1507 = load %nyx_string*, %nyx_string** %1479
  %1508 = load %nyx_string*, %nyx_string** %1483
  %1509 = call i1 @nyx_string_equals(%nyx_string* %1507, %nyx_string* %1508)
  %1510 = xor i1 %1509, true
  br i1 %1510, label %then345, label %else346
then345:
  %1511 = load %nyx_string*, %nyx_string** %1479
  %1512 = load %nyx_string*, %nyx_string** %1486
  %1513 = call %nyx_string* @nyx_string_concat(%nyx_string* %1511, %nyx_string* %1512)
  store %nyx_string* %1513, %nyx_string** %1479
  br label %merge347
else346:
  br label %merge347
merge347:
  %1514 = load %nyx_string*, %nyx_string** %1479
  %1515 = load %nyx_string*, %nyx_string** %1496
  %1516 = call %nyx_string* @nyx_string_concat(%nyx_string* %1514, %nyx_string* %1515)
  store %nyx_string* %1516, %nyx_string** %1479
  br label %merge344
else343:
  br label %merge344
merge344:
  %1517 = load i64, i64* %1480
  %1518 = add i64 %1517, 1
  store i64 %1518, i64* %1480
  br label %while_cond337
while_end339:
  %1519 = load %nyx_string*, %nyx_string** %1479
  %1520 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1520, i64 0)
  %1522 = call i1 @nyx_string_equals(%nyx_string* %1519, %nyx_string* %1521)
  %1523 = xor i1 %1522, true
  br i1 %1523, label %then348, label %else349
then348:
  %1524 = getelementptr [19 x i8], [19 x i8]* @.str120, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1524, i64 18)
  %1526 = load %nyx_string*, %nyx_string** %1479
  %1527 = call %nyx_string* @nyx_string_concat(%nyx_string* %1525, %nyx_string* %1526)
  %1528 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %1529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1528, i64 1)
  %1530 = call %nyx_string* @nyx_string_concat(%nyx_string* %1527, %nyx_string* %1529)
  store %nyx_string* %1530, %nyx_string** %1459
  br label %merge350
else349:
  br label %merge350
merge350:
  %1531 = alloca i1
  store i1 false, i1* %1531
  %1532 = load %nyx_string*, %nyx_string** %1456
  %1533 = getelementptr [1 x i8], [1 x i8]* @.str122, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1533, i64 0)
  %1535 = call i1 @nyx_string_equals(%nyx_string* %1532, %nyx_string* %1534)
  %1536 = xor i1 %1535, true
  br i1 %1536, label %sc_and_rhs351, label %sc_and_end352
sc_and_rhs351:
  %1537 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1537, i64 1)
  %1539 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1540 = load %nyx_string*, %nyx_string** %1539
  %1541 = call %nyx_string* @nyx_string_concat(%nyx_string* %1538, %nyx_string* %1540)
  %1542 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1542, i64 1)
  %1544 = call %nyx_string* @nyx_string_concat(%nyx_string* %1541, %nyx_string* %1543)
  %1545 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %1546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1545, i64 1)
  %1547 = load %nyx_string*, %nyx_string** %1456
  %1548 = call %nyx_string* @nyx_string_concat(%nyx_string* %1546, %nyx_string* %1547)
  %1549 = getelementptr [2 x i8], [2 x i8]* @.str126, i32 0, i32 0
  %1550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1549, i64 1)
  %1551 = call %nyx_string* @nyx_string_concat(%nyx_string* %1548, %nyx_string* %1550)
  %1552 = call i1 @nyx_string_contains(%nyx_string* %1544, %nyx_string* %1551)
  store i1 %1552, i1* %1531
  br label %sc_and_end352
sc_and_end352:
  %1553 = load i1, i1* %1531
  br i1 %1553, label %then353, label %else354
then353:
  %1554 = load %nyx_string*, %nyx_string** %1459
  %1555 = getelementptr [16 x i8], [16 x i8]* @.str127, i32 0, i32 0
  %1556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1555, i64 15)
  %1557 = call %nyx_string* @nyx_string_concat(%nyx_string* %1554, %nyx_string* %1556)
  %1558 = load %nyx_string*, %nyx_string** %1456
  %1559 = call %nyx_string* @nyx_string_concat(%nyx_string* %1557, %nyx_string* %1558)
  %1560 = getelementptr [2 x i8], [2 x i8]* @.str128, i32 0, i32 0
  %1561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1560, i64 1)
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1559, %nyx_string* %1561)
  store %nyx_string* %1562, %nyx_string** %1459
  br label %merge355
else354:
  br label %merge355
merge355:
  %1563 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1564 = load %nyx_string*, %nyx_string** %1563
  %1565 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1566 = load %nyx_string*, %nyx_string** %1565
  %1567 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1567, i64 1)
  %1569 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1566, %nyx_string* %1568)
  %1570 = alloca { i64, i8* }*
  store { i64, i8* }* %1569, { i64, i8* }** %1570
  %1571 = alloca i64
  store i64 0, i64* %1571
  %1572 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1572, i64 1)
  %1574 = alloca %nyx_string*
  store %nyx_string* %1573, %nyx_string** %1574
  %1575 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1575, i64 1)
  %1577 = alloca %nyx_string*
  store %nyx_string* %1576, %nyx_string** %1577
  %1578 = getelementptr [3 x i8], [3 x i8]* @.str132, i32 0, i32 0
  %1579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1578, i64 2)
  %1580 = alloca %nyx_string*
  store %nyx_string* %1579, %nyx_string** %1580
  %1581 = call i8* @llvm.stacksave()
  br label %while_cond356
while_cond356:
  %1582 = load i64, i64* %1571
  %1583 = load { i64, i8* }*, { i64, i8* }** %1570
  %1584 = call i64 @nyx_array_length({ i64, i8* }* %1583)
  %1585 = icmp slt i64 %1582, %1584
  br i1 %1585, label %while_body357, label %while_end358
while_body357:
  call void @llvm.stackrestore(i8* %1581)
  %1586 = load { i64, i8* }*, { i64, i8* }** %1570
  %1587 = load i64, i64* %1571
  %1588 = call i64 @nyx_array_get_checked({ i64, i8* }* %1586, i64 %1587, i64 2)
  %1589 = inttoptr i64 %1588 to %nyx_string*
  %1590 = alloca %nyx_string*
  store %nyx_string* %1589, %nyx_string** %1590
  %1591 = load %nyx_string*, %nyx_string** %1590
  %1592 = load %nyx_string*, %nyx_string** %1574
  %1593 = call i64 @nyx_string_index_of(%nyx_string* %1591, %nyx_string* %1592)
  %1594 = alloca i64
  store i64 %1593, i64* %1594
  %1595 = load i64, i64* %1594
  %1596 = icmp sgt i64 %1595, 0
  br i1 %1596, label %then359, label %else360
then359:
  %1597 = load %nyx_string*, %nyx_string** %1590
  %1598 = load i64, i64* %1594
  %1599 = call %nyx_string* @nyx_string_substring(%nyx_string* %1597, i64 0, i64 %1598)
  %1600 = alloca %nyx_string*
  store %nyx_string* %1599, %nyx_string** %1600
  %1601 = load %nyx_string*, %nyx_string** %1600
  %1602 = load %nyx_string*, %nyx_string** %1456
  %1603 = call i1 @nyx_string_equals(%nyx_string* %1601, %nyx_string* %1602)
  %1604 = xor i1 %1603, true
  br i1 %1604, label %then362, label %else363
then362:
  %1605 = load %nyx_string*, %nyx_string** %1462
  %1606 = load %nyx_string*, %nyx_string** %1577
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1606)
  %1608 = load %nyx_string*, %nyx_string** %1590
  %1609 = load i64, i64* %1594
  %1610 = add i64 %1609, 1
  %1611 = load %nyx_string*, %nyx_string** %1590
  %1612 = call i64 @nyx_string_byte_length(%nyx_string* %1611)
  %1613 = call %nyx_string* @nyx_string_substring(%nyx_string* %1608, i64 %1610, i64 %1612)
  %1614 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1613)
  %1615 = load %nyx_string*, %nyx_string** %1580
  %1616 = call %nyx_string* @nyx_string_concat(%nyx_string* %1614, %nyx_string* %1615)
  store %nyx_string* %1616, %nyx_string** %1462
  br label %merge364
else363:
  br label %merge364
merge364:
  br label %merge361
else360:
  br label %merge361
merge361:
  %1617 = load i64, i64* %1571
  %1618 = add i64 %1617, 1
  store i64 %1618, i64* %1571
  br label %while_cond356
while_end358:
  br label %merge336
else335:
  br label %merge336
merge336:
  %1619 = getelementptr [55 x i8], [55 x i8]* @.str133, i32 0, i32 0
  %1620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1619, i64 54)
  %1621 = load %nyx_string*, %nyx_string** %1287
  %1622 = call %nyx_string* @nyx_string_concat(%nyx_string* %1620, %nyx_string* %1621)
  %1623 = getelementptr [37 x i8], [37 x i8]* @.str134, i32 0, i32 0
  %1624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1623, i64 36)
  %1625 = call %nyx_string* @nyx_string_concat(%nyx_string* %1622, %nyx_string* %1624)
  %1626 = load %nyx_string*, %nyx_string** %file.ptr
  %1627 = call %nyx_string* @nyx_string_concat(%nyx_string* %1625, %nyx_string* %1626)
  %1628 = getelementptr [2 x i8], [2 x i8]* @.str135, i32 0, i32 0
  %1629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1628, i64 1)
  %1630 = call %nyx_string* @nyx_string_concat(%nyx_string* %1627, %nyx_string* %1629)
  %1631 = load %nyx_string*, %nyx_string** %1409
  %1632 = call %nyx_string* @nyx_string_concat(%nyx_string* %1630, %nyx_string* %1631)
  %1633 = load %nyx_string*, %nyx_string** %1459
  %1634 = call %nyx_string* @nyx_string_concat(%nyx_string* %1632, %nyx_string* %1633)
  %1635 = getelementptr [22 x i8], [22 x i8]* @.str136, i32 0, i32 0
  %1636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1635, i64 21)
  %1637 = call %nyx_string* @nyx_string_concat(%nyx_string* %1634, %nyx_string* %1636)
  %1638 = load %nyx_string*, %nyx_string** %1302
  %1639 = call %nyx_string* @nyx_string_concat(%nyx_string* %1637, %nyx_string* %1638)
  %1640 = getelementptr [36 x i8], [36 x i8]* @.str137, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1640, i64 35)
  %1642 = call %nyx_string* @nyx_string_concat(%nyx_string* %1639, %nyx_string* %1641)
  %1643 = load %nyx_string*, %nyx_string** %1302
  %1644 = call %nyx_string* @nyx_string_concat(%nyx_string* %1642, %nyx_string* %1643)
  %1645 = getelementptr [13 x i8], [13 x i8]* @.str138, i32 0, i32 0
  %1646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1645, i64 12)
  %1647 = call %nyx_string* @nyx_string_concat(%nyx_string* %1644, %nyx_string* %1646)
  %1648 = alloca %nyx_string*
  store %nyx_string* %1647, %nyx_string** %1648
  %1649 = load %nyx_string*, %nyx_string** %1369
  %1650 = load %nyx_string*, %nyx_string** %1648
  %1651 = call %nyx_string* @nyx_string_concat(%nyx_string* %1649, %nyx_string* %1650)
  %1652 = alloca %nyx_string*
  store %nyx_string* %1651, %nyx_string** %1652
  %1653 = getelementptr [15 x i8], [15 x i8]* @.str139, i32 0, i32 0
  %1654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1653, i64 14)
  %1655 = load %nyx_string*, %nyx_string** %1297
  %1656 = call %nyx_string* @nyx_string_concat(%nyx_string* %1654, %nyx_string* %1655)
  %1657 = getelementptr [27 x i8], [27 x i8]* @.str140, i32 0, i32 0
  %1658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1657, i64 26)
  %1659 = call %nyx_string* @nyx_string_concat(%nyx_string* %1656, %nyx_string* %1658)
  %1660 = alloca %nyx_string*
  store %nyx_string* %1659, %nyx_string** %1660
  %1661 = load %nyx_string*, %nyx_string** %1453
  %1662 = load %nyx_string*, %nyx_string** %1660
  %1663 = call %nyx_string* @nyx_string_concat(%nyx_string* %1661, %nyx_string* %1662)
  %1664 = getelementptr [42 x i8], [42 x i8]* @.str141, i32 0, i32 0
  %1665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1664, i64 41)
  %1666 = call %nyx_string* @nyx_string_concat(%nyx_string* %1663, %nyx_string* %1665)
  %1667 = getelementptr [17 x i8], [17 x i8]* @.str142, i32 0, i32 0
  %1668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1667, i64 16)
  %1669 = call %nyx_string* @nyx_string_concat(%nyx_string* %1666, %nyx_string* %1668)
  %1670 = getelementptr [31 x i8], [31 x i8]* @.str143, i32 0, i32 0
  %1671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1670, i64 30)
  %1672 = call %nyx_string* @nyx_string_concat(%nyx_string* %1669, %nyx_string* %1671)
  %1673 = getelementptr [17 x i8], [17 x i8]* @.str144, i32 0, i32 0
  %1674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1673, i64 16)
  %1675 = call %nyx_string* @nyx_string_concat(%nyx_string* %1672, %nyx_string* %1674)
  %1676 = getelementptr [5 x i8], [5 x i8]* @.str145, i32 0, i32 0
  %1677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1676, i64 4)
  %1678 = call %nyx_string* @nyx_string_concat(%nyx_string* %1675, %nyx_string* %1677)
  %1679 = load %nyx_string*, %nyx_string** %1287
  %1680 = call %nyx_string* @nyx_string_concat(%nyx_string* %1678, %nyx_string* %1679)
  %1681 = getelementptr [2 x i8], [2 x i8]* @.str146, i32 0, i32 0
  %1682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1681, i64 1)
  %1683 = call %nyx_string* @nyx_string_concat(%nyx_string* %1680, %nyx_string* %1682)
  %1684 = load %nyx_string*, %nyx_string** %file.ptr
  %1685 = call %nyx_string* @nyx_string_concat(%nyx_string* %1683, %nyx_string* %1684)
  %1686 = getelementptr [12 x i8], [12 x i8]* @.str147, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1686, i64 11)
  %1688 = call %nyx_string* @nyx_string_concat(%nyx_string* %1685, %nyx_string* %1687)
  %1689 = getelementptr [5 x i8], [5 x i8]* @.str148, i32 0, i32 0
  %1690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1689, i64 4)
  %1691 = call %nyx_string* @nyx_string_concat(%nyx_string* %1688, %nyx_string* %1690)
  %1692 = load %nyx_string*, %nyx_string** %1265
  %1693 = call %nyx_string* @nyx_string_concat(%nyx_string* %1691, %nyx_string* %1692)
  %1694 = getelementptr [3 x i8], [3 x i8]* @.str149, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1694, i64 2)
  %1696 = call %nyx_string* @nyx_string_concat(%nyx_string* %1693, %nyx_string* %1695)
  %1697 = getelementptr [51 x i8], [51 x i8]* @.str150, i32 0, i32 0
  %1698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1697, i64 50)
  %1699 = call %nyx_string* @nyx_string_concat(%nyx_string* %1696, %nyx_string* %1698)
  %1700 = load %nyx_string*, %nyx_string** %1265
  %1701 = call %nyx_string* @nyx_string_concat(%nyx_string* %1699, %nyx_string* %1700)
  %1702 = getelementptr [35 x i8], [35 x i8]* @.str151, i32 0, i32 0
  %1703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1702, i64 34)
  %1704 = call %nyx_string* @nyx_string_concat(%nyx_string* %1701, %nyx_string* %1703)
  %1705 = load %nyx_string*, %nyx_string** %1652
  %1706 = call %nyx_string* @nyx_string_concat(%nyx_string* %1704, %nyx_string* %1705)
  %1707 = getelementptr [7 x i8], [7 x i8]* @.str152, i32 0, i32 0
  %1708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1707, i64 6)
  %1709 = call %nyx_string* @nyx_string_concat(%nyx_string* %1706, %nyx_string* %1708)
  %1710 = load %nyx_string*, %nyx_string** %1310
  %1711 = call %nyx_string* @nyx_string_concat(%nyx_string* %1709, %nyx_string* %1710)
  %1712 = load %nyx_string*, %nyx_string** %1412
  %1713 = call %nyx_string* @nyx_string_concat(%nyx_string* %1711, %nyx_string* %1712)
  %1714 = getelementptr [40 x i8], [40 x i8]* @.str153, i32 0, i32 0
  %1715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1714, i64 39)
  %1716 = call %nyx_string* @nyx_string_concat(%nyx_string* %1713, %nyx_string* %1715)
  %1717 = load %nyx_string*, %nyx_string** %1462
  %1718 = call %nyx_string* @nyx_string_concat(%nyx_string* %1716, %nyx_string* %1717)
  %1719 = load %nyx_string*, %nyx_string** %1338
  %1720 = call %nyx_string* @nyx_string_concat(%nyx_string* %1718, %nyx_string* %1719)
  %1721 = getelementptr [44 x i8], [44 x i8]* @.str154, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1721, i64 43)
  %1723 = call %nyx_string* @nyx_string_concat(%nyx_string* %1720, %nyx_string* %1722)
  %1724 = getelementptr [4 x i8], [4 x i8]* @.str155, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1724, i64 3)
  %1726 = call %nyx_string* @nyx_string_concat(%nyx_string* %1723, %nyx_string* %1725)
  %1727 = load %nyx_string*, %nyx_string** %1307
  %1728 = call %nyx_string* @nyx_string_concat(%nyx_string* %1726, %nyx_string* %1727)
  %1729 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %1730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1729, i64 5)
  %1731 = call %nyx_string* @nyx_string_concat(%nyx_string* %1728, %nyx_string* %1730)
  %1732 = load %nyx_string*, %nyx_string** %1302
  %1733 = call %nyx_string* @nyx_string_concat(%nyx_string* %1731, %nyx_string* %1732)
  %1734 = getelementptr [2 x i8], [2 x i8]* @.str157, i32 0, i32 0
  %1735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1734, i64 1)
  %1736 = call %nyx_string* @nyx_string_concat(%nyx_string* %1733, %nyx_string* %1735)
  %1737 = getelementptr [57 x i8], [57 x i8]* @.str158, i32 0, i32 0
  %1738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1737, i64 56)
  %1739 = call %nyx_string* @nyx_string_concat(%nyx_string* %1736, %nyx_string* %1738)
  %1740 = load %nyx_string*, %nyx_string** %1415
  %1741 = call %nyx_string* @nyx_string_concat(%nyx_string* %1739, %nyx_string* %1740)
  %1742 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1742, i64 8)
  %1744 = call %nyx_string* @nyx_string_concat(%nyx_string* %1741, %nyx_string* %1743)
  %1745 = load %nyx_string*, %nyx_string** %1291
  %1746 = call %nyx_string* @nyx_string_concat(%nyx_string* %1744, %nyx_string* %1745)
  %1747 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1747, i64 1)
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1746, %nyx_string* %1748)
  %1750 = load %nyx_string*, %nyx_string** %1307
  %1751 = call %nyx_string* @nyx_string_concat(%nyx_string* %1749, %nyx_string* %1750)
  %1752 = getelementptr [4 x i8], [4 x i8]* @.str161, i32 0, i32 0
  %1753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1752, i64 3)
  %1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %1751, %nyx_string* %1753)
  %1755 = load %nyx_string*, %nyx_string** %1302
  %1756 = call %nyx_string* @nyx_string_concat(%nyx_string* %1754, %nyx_string* %1755)
  %1757 = getelementptr [7 x i8], [7 x i8]* @.str162, i32 0, i32 0
  %1758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1757, i64 6)
  %1759 = call %nyx_string* @nyx_string_concat(%nyx_string* %1756, %nyx_string* %1758)
  %1760 = getelementptr [14 x i8], [14 x i8]* @.str163, i32 0, i32 0
  %1761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1760, i64 13)
  %1762 = call %nyx_string* @nyx_string_concat(%nyx_string* %1759, %nyx_string* %1761)
  %1763 = getelementptr [7 x i8], [7 x i8]* @.str164, i32 0, i32 0
  %1764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1763, i64 6)
  %1765 = call %nyx_string* @nyx_string_concat(%nyx_string* %1762, %nyx_string* %1764)
  %1766 = load %nyx_string*, %nyx_string** %1307
  %1767 = call %nyx_string* @nyx_string_concat(%nyx_string* %1765, %nyx_string* %1766)
  %1768 = getelementptr [2 x i8], [2 x i8]* @.str165, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1768, i64 1)
  %1770 = call %nyx_string* @nyx_string_concat(%nyx_string* %1767, %nyx_string* %1769)
  %1771 = getelementptr [17 x i8], [17 x i8]* @.str166, i32 0, i32 0
  %1772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1771, i64 16)
  %1773 = call %nyx_string* @nyx_string_concat(%nyx_string* %1770, %nyx_string* %1772)
  %1774 = alloca %nyx_string*
  store %nyx_string* %1773, %nyx_string** %1774
  %1775 = load %nyx_string*, %nyx_string** %1297
  %1776 = getelementptr [8 x i8], [8 x i8]* @.str167, i32 0, i32 0
  %1777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1776, i64 7)
  %1778 = call %nyx_string* @nyx_string_concat(%nyx_string* %1775, %nyx_string* %1777)
  %1779 = alloca %nyx_string*
  store %nyx_string* %1778, %nyx_string** %1779
  %1780 = load %nyx_string*, %nyx_string** %1779
  %1781 = load %nyx_string*, %nyx_string** %1774
  %1782 = ptrtoint %nyx_string* %1781 to i64
  %1783 = call i8* @nyx_string_to_cstr(%nyx_string* %1780)
  %1784 = inttoptr i64 %1782 to %nyx_string*
  %1785 = call i1 @nyx_write_file_safe(i8* %1783, %nyx_string* %1784)
  %1786 = getelementptr [6 x i8], [6 x i8]* @.str168, i32 0, i32 0
  %1787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1786, i64 5)
  %1788 = load %nyx_string*, %nyx_string** %1779
  %1789 = call %nyx_string* @nyx_string_concat(%nyx_string* %1787, %nyx_string* %1788)
  %1790 = call i8* @nyx_string_to_cstr(%nyx_string* %1789)
  %1791 = call i64 @nyx_exec_code(i8* %1790)
  %1792 = alloca i64
  store i64 %1791, i64* %1792
  %1793 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1793, i64 0)
  %1795 = alloca %nyx_string*
  store %nyx_string* %1794, %nyx_string** %1795
  %1796 = load %nyx_string*, %nyx_string** %1302
  %1797 = call i8* @nyx_string_to_cstr(%nyx_string* %1796)
  %1798 = call i1 @nyx_file_exists(i8* %1797)
  br i1 %1798, label %then365, label %else366
then365:
  %1799 = load %nyx_string*, %nyx_string** %1302
  %1800 = call i8* @nyx_string_to_cstr(%nyx_string* %1799)
  %1801 = call %nyx_string* @nyx_read_file(i8* %1800)
  store %nyx_string* %1801, %nyx_string** %1795
  br label %merge367
else366:
  br label %merge367
merge367:
  %1802 = getelementptr [8 x i8], [8 x i8]* @.str170, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1802, i64 7)
  %1804 = load %nyx_string*, %nyx_string** %1297
  %1805 = call %nyx_string* @nyx_string_concat(%nyx_string* %1803, %nyx_string* %1804)
  %1806 = call i8* @nyx_string_to_cstr(%nyx_string* %1805)
  %1807 = call %nyx_string* @nyx_exec(i8* %1806)
  %1808 = alloca i64
  store i64 0, i64* %1808
  %1809 = alloca i64
  store i64 0, i64* %1809
  %1810 = load %nyx_string*, %nyx_string** %1795
  %1811 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1811, i64 1)
  %1813 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1810, %nyx_string* %1812)
  %1814 = alloca { i64, i8* }*
  store { i64, i8* }* %1813, { i64, i8* }** %1814
  %1815 = alloca i64
  store i64 0, i64* %1815
  %1816 = getelementptr [6 x i8], [6 x i8]* @.str172, i32 0, i32 0
  %1817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1816, i64 5)
  %1818 = alloca %nyx_string*
  store %nyx_string* %1817, %nyx_string** %1818
  %1819 = getelementptr [6 x i8], [6 x i8]* @.str173, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1819, i64 5)
  %1821 = alloca %nyx_string*
  store %nyx_string* %1820, %nyx_string** %1821
  %1822 = call i8* @llvm.stacksave()
  br label %while_cond368
while_cond368:
  %1823 = load i64, i64* %1815
  %1824 = load { i64, i8* }*, { i64, i8* }** %1814
  %1825 = call i64 @nyx_array_length({ i64, i8* }* %1824)
  %1826 = icmp slt i64 %1823, %1825
  br i1 %1826, label %while_body369, label %while_end370
while_body369:
  call void @llvm.stackrestore(i8* %1822)
  %1827 = load { i64, i8* }*, { i64, i8* }** %1814
  %1828 = load i64, i64* %1815
  %1829 = call i64 @nyx_array_get_checked({ i64, i8* }* %1827, i64 %1828, i64 2)
  %1830 = inttoptr i64 %1829 to %nyx_string*
  %1831 = alloca %nyx_string*
  store %nyx_string* %1830, %nyx_string** %1831
  %1832 = load %nyx_string*, %nyx_string** %1831
  %1833 = load %nyx_string*, %nyx_string** %1818
  %1834 = call i1 @nyx_string_contains(%nyx_string* %1832, %nyx_string* %1833)
  br i1 %1834, label %then371, label %else372
then371:
  %1835 = load i64, i64* %1808
  %1836 = add i64 %1835, 1
  store i64 %1836, i64* %1808
  br label %merge373
else372:
  %1837 = load %nyx_string*, %nyx_string** %1831
  %1838 = load %nyx_string*, %nyx_string** %1821
  %1839 = call i1 @nyx_string_contains(%nyx_string* %1837, %nyx_string* %1838)
  br i1 %1839, label %then374, label %else375
then374:
  %1840 = load i64, i64* %1809
  %1841 = add i64 %1840, 1
  store i64 %1841, i64* %1809
  br label %merge376
else375:
  br label %merge376
merge376:
  br label %merge373
merge373:
  %1842 = load i64, i64* %1815
  %1843 = add i64 %1842, 1
  store i64 %1843, i64* %1815
  br label %while_cond368
while_end370:
  %1844 = getelementptr %TestResult, %TestResult* null, i32 1
  %1845 = ptrtoint %TestResult* %1844 to i64
  %1846 = call i8* @GC_malloc(i64 %1845)
  %1847 = bitcast i8* %1846 to %TestResult*
  %1848 = load %nyx_string*, %nyx_string** %file.ptr
  %1849 = getelementptr %TestResult, %TestResult* %1847, i32 0, i32 0
  store %nyx_string* %1848, %nyx_string** %1849
  %1850 = load i64, i64* %1808
  %1851 = getelementptr %TestResult, %TestResult* %1847, i32 0, i32 1
  store i64 %1850, i64* %1851
  %1852 = load i64, i64* %1809
  %1853 = getelementptr %TestResult, %TestResult* %1847, i32 0, i32 2
  store i64 %1852, i64* %1853
  %1854 = load %nyx_string*, %nyx_string** %1795
  %1855 = getelementptr %TestResult, %TestResult* %1847, i32 0, i32 3
  store %nyx_string* %1854, %nyx_string** %1855
  %1856 = alloca i1
  store i1 false, i1* %1856
  %1857 = load i64, i64* %1792
  %1858 = icmp eq i64 %1857, 0
  br i1 %1858, label %sc_and_rhs377, label %sc_and_end378
sc_and_rhs377:
  %1859 = load i64, i64* %1809
  %1860 = icmp eq i64 %1859, 0
  store i1 %1860, i1* %1856
  br label %sc_and_end378
sc_and_end378:
  %1861 = load i1, i1* %1856
  %1862 = getelementptr %TestResult, %TestResult* %1847, i32 0, i32 4
  store i1 %1861, i1* %1862
  %1863 = load %TestResult, %TestResult* %1847
  ret %TestResult %1863
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1864 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1865 = load i1, i1* %1864
  br i1 %1865, label %then379, label %else380
then379:
  %1866 = getelementptr [9 x i8], [9 x i8]* @.str174, i32 0, i32 0
  %1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1866, i64 8)
  %1868 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1869 = load %nyx_string*, %nyx_string** %1868
  %1870 = call %nyx_string* @nyx_string_concat(%nyx_string* %1867, %nyx_string* %1869)
  %1871 = getelementptr [3 x i8], [3 x i8]* @.str175, i32 0, i32 0
  %1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1871, i64 2)
  %1873 = call %nyx_string* @nyx_string_concat(%nyx_string* %1870, %nyx_string* %1872)
  %1874 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1875 = load i64, i64* %1874
  %1876 = call %nyx_string* @nyx_string_from_int(i64 %1875)
  %1877 = call %nyx_string* @nyx_string_concat(%nyx_string* %1873, %nyx_string* %1876)
  %1878 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %1879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1878, i64 7)
  %1880 = call %nyx_string* @nyx_string_concat(%nyx_string* %1877, %nyx_string* %1879)
  %1881 = call i8* @nyx_string_to_cstr(%nyx_string* %1880)
  call void @nyx_print_string(i8* %1881)
  %1882 = load i1, i1* %verbose.ptr
  br i1 %1882, label %then382, label %else383
then382:
  %1883 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1884 = load %nyx_string*, %nyx_string** %1883
  %1885 = call i8* @nyx_string_to_cstr(%nyx_string* %1884)
  call void @nyx_print_string(i8* %1885)
  br label %merge384
else383:
  br label %merge384
merge384:
  br label %merge381
else380:
  %1886 = getelementptr [9 x i8], [9 x i8]* @.str177, i32 0, i32 0
  %1887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1886, i64 8)
  %1888 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1889 = load %nyx_string*, %nyx_string** %1888
  %1890 = call %nyx_string* @nyx_string_concat(%nyx_string* %1887, %nyx_string* %1889)
  %1891 = getelementptr [3 x i8], [3 x i8]* @.str178, i32 0, i32 0
  %1892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1891, i64 2)
  %1893 = call %nyx_string* @nyx_string_concat(%nyx_string* %1890, %nyx_string* %1892)
  %1894 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1895 = load i64, i64* %1894
  %1896 = call %nyx_string* @nyx_string_from_int(i64 %1895)
  %1897 = call %nyx_string* @nyx_string_concat(%nyx_string* %1893, %nyx_string* %1896)
  %1898 = getelementptr [10 x i8], [10 x i8]* @.str179, i32 0, i32 0
  %1899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1898, i64 9)
  %1900 = call %nyx_string* @nyx_string_concat(%nyx_string* %1897, %nyx_string* %1899)
  %1901 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1902 = load i64, i64* %1901
  %1903 = call %nyx_string* @nyx_string_from_int(i64 %1902)
  %1904 = call %nyx_string* @nyx_string_concat(%nyx_string* %1900, %nyx_string* %1903)
  %1905 = getelementptr [9 x i8], [9 x i8]* @.str180, i32 0, i32 0
  %1906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1905, i64 8)
  %1907 = call %nyx_string* @nyx_string_concat(%nyx_string* %1904, %nyx_string* %1906)
  %1908 = call i8* @nyx_string_to_cstr(%nyx_string* %1907)
  call void @nyx_print_string(i8* %1908)
  %1909 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1910 = load %nyx_string*, %nyx_string** %1909
  %1911 = call i8* @nyx_string_to_cstr(%nyx_string* %1910)
  call void @nyx_print_string(i8* %1911)
  br label %merge381
merge381:
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
  %1912 = getelementptr [1 x i8], [1 x i8]* @.str181, i32 0, i32 0
  %1913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1912, i64 0)
  %1914 = call i8* @nyx_string_to_cstr(%nyx_string* %1913)
  call void @nyx_print_string(i8* %1914)
  %1915 = getelementptr [36 x i8], [36 x i8]* @.str182, i32 0, i32 0
  %1916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1915, i64 35)
  %1917 = call i8* @nyx_string_to_cstr(%nyx_string* %1916)
  call void @nyx_print_string(i8* %1917)
  %1918 = alloca i64
  store i64 0, i64* %1918
  %1919 = alloca i64
  store i64 0, i64* %1919
  %1920 = alloca i64
  store i64 0, i64* %1920
  %1921 = call i8* @llvm.stacksave()
  br label %while_cond385
while_cond385:
  %1922 = load i64, i64* %1920
  %1923 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1924 = call i64 @nyx_array_length({ i64, i8* }* %1923)
  %1925 = icmp slt i64 %1922, %1924
  br i1 %1925, label %while_body386, label %while_end387
while_body386:
  call void @llvm.stackrestore(i8* %1921)
  %1926 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1927 = load i64, i64* %1920
  %1928 = call i64 @nyx_array_get({ i64, i8* }* %1926, i64 %1927)
  %1929 = inttoptr i64 %1928 to %TestResult*
  %1930 = load %TestResult, %TestResult* %1929
  %1931 = alloca %TestResult
  store %TestResult %1930, %TestResult* %1931
  %1932 = getelementptr %TestResult, %TestResult* %1931, i32 0, i32 4
  %1933 = load i1, i1* %1932
  br i1 %1933, label %then388, label %else389
then388:
  %1934 = load i64, i64* %1918
  %1935 = add i64 %1934, 1
  store i64 %1935, i64* %1918
  br label %merge390
else389:
  %1936 = load i64, i64* %1919
  %1937 = add i64 %1936, 1
  store i64 %1937, i64* %1919
  br label %merge390
merge390:
  %1938 = load i64, i64* %1920
  %1939 = add i64 %1938, 1
  store i64 %1939, i64* %1920
  br label %while_cond385
while_end387:
  %1940 = getelementptr [11 x i8], [11 x i8]* @.str183, i32 0, i32 0
  %1941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1940, i64 10)
  %1942 = load i64, i64* %1918
  %1943 = call %nyx_string* @nyx_string_from_int(i64 %1942)
  %1944 = call %nyx_string* @nyx_string_concat(%nyx_string* %1941, %nyx_string* %1943)
  %1945 = getelementptr [10 x i8], [10 x i8]* @.str184, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1945, i64 9)
  %1947 = call %nyx_string* @nyx_string_concat(%nyx_string* %1944, %nyx_string* %1946)
  %1948 = load i64, i64* %1919
  %1949 = call %nyx_string* @nyx_string_from_int(i64 %1948)
  %1950 = call %nyx_string* @nyx_string_concat(%nyx_string* %1947, %nyx_string* %1949)
  %1951 = getelementptr [10 x i8], [10 x i8]* @.str185, i32 0, i32 0
  %1952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1951, i64 9)
  %1953 = call %nyx_string* @nyx_string_concat(%nyx_string* %1950, %nyx_string* %1952)
  %1954 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1955 = call i64 @nyx_array_length({ i64, i8* }* %1954)
  %1956 = call %nyx_string* @nyx_string_from_int(i64 %1955)
  %1957 = call %nyx_string* @nyx_string_concat(%nyx_string* %1953, %nyx_string* %1956)
  %1958 = getelementptr [8 x i8], [8 x i8]* @.str186, i32 0, i32 0
  %1959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1958, i64 7)
  %1960 = call %nyx_string* @nyx_string_concat(%nyx_string* %1957, %nyx_string* %1959)
  %1961 = call i8* @nyx_string_to_cstr(%nyx_string* %1960)
  call void @nyx_print_string(i8* %1961)
  %1962 = getelementptr [11 x i8], [11 x i8]* @.str187, i32 0, i32 0
  %1963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1962, i64 10)
  %1964 = load i64, i64* %total_passed.ptr
  %1965 = call %nyx_string* @nyx_string_from_int(i64 %1964)
  %1966 = call %nyx_string* @nyx_string_concat(%nyx_string* %1963, %nyx_string* %1965)
  %1967 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %1968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1967, i64 9)
  %1969 = call %nyx_string* @nyx_string_concat(%nyx_string* %1966, %nyx_string* %1968)
  %1970 = load i64, i64* %total_failed.ptr
  %1971 = call %nyx_string* @nyx_string_from_int(i64 %1970)
  %1972 = call %nyx_string* @nyx_string_concat(%nyx_string* %1969, %nyx_string* %1971)
  %1973 = getelementptr [10 x i8], [10 x i8]* @.str189, i32 0, i32 0
  %1974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1973, i64 9)
  %1975 = call %nyx_string* @nyx_string_concat(%nyx_string* %1972, %nyx_string* %1974)
  %1976 = load i64, i64* %total_passed.ptr
  %1977 = load i64, i64* %total_failed.ptr
  %1978 = add i64 %1976, %1977
  %1979 = call %nyx_string* @nyx_string_from_int(i64 %1978)
  %1980 = call %nyx_string* @nyx_string_concat(%nyx_string* %1975, %nyx_string* %1979)
  %1981 = getelementptr [8 x i8], [8 x i8]* @.str190, i32 0, i32 0
  %1982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1981, i64 7)
  %1983 = call %nyx_string* @nyx_string_concat(%nyx_string* %1980, %nyx_string* %1982)
  %1984 = call i8* @nyx_string_to_cstr(%nyx_string* %1983)
  call void @nyx_print_string(i8* %1984)
  %1985 = alloca i1
  store i1 false, i1* %1985
  %1986 = load i64, i64* %total_failed.ptr
  %1987 = icmp eq i64 %1986, 0
  br i1 %1987, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %1988 = load i64, i64* %1919
  %1989 = icmp eq i64 %1988, 0
  store i1 %1989, i1* %1985
  br label %sc_and_end392
sc_and_end392:
  %1990 = load i1, i1* %1985
  br i1 %1990, label %then393, label %else394
then393:
  %1991 = getelementptr [27 x i8], [27 x i8]* @.str191, i32 0, i32 0
  %1992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1991, i64 26)
  %1993 = call i8* @nyx_string_to_cstr(%nyx_string* %1992)
  call void @nyx_print_string(i8* %1993)
  br label %merge395
else394:
  %1994 = getelementptr [28 x i8], [28 x i8]* @.str192, i32 0, i32 0
  %1995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1994, i64 27)
  %1996 = call i8* @nyx_string_to_cstr(%nyx_string* %1995)
  call void @nyx_print_string(i8* %1996)
  br label %merge395
merge395:
  %1997 = getelementptr [36 x i8], [36 x i8]* @.str193, i32 0, i32 0
  %1998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1997, i64 35)
  %1999 = call i8* @nyx_string_to_cstr(%nyx_string* %1998)
  call void @nyx_print_string(i8* %1999)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %2000 = getelementptr [28 x i8], [28 x i8]* @.str194, i32 0, i32 0
  %2001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2000, i64 27)
  %2002 = call i8* @nyx_string_to_cstr(%nyx_string* %2001)
  %2003 = call %nyx_string* @nyx_exec(i8* %2002)
  %2004 = alloca %nyx_string*
  store %nyx_string* %2003, %nyx_string** %2004
  %2005 = load %nyx_string*, %nyx_string** %2004
  %2006 = getelementptr [9 x i8], [9 x i8]* @.str195, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2006, i64 8)
  %2008 = call i64 @nyx_string_index_of(%nyx_string* %2005, %nyx_string* %2007)
  %2009 = alloca i64
  store i64 %2008, i64* %2009
  %2010 = load i64, i64* %2009
  %2011 = icmp slt i64 %2010, 0
  br i1 %2011, label %then396, label %else397
then396:
  %2012 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %2013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2012, i64 0)
  ret %nyx_string* %2013
else397:
  br label %merge398
merge398:
  %2014 = load i64, i64* %2009
  %2015 = add i64 %2014, 8
  %2016 = alloca i64
  store i64 %2015, i64* %2016
  %2017 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %2018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2017, i64 0)
  %2019 = alloca %nyx_string*
  store %nyx_string* %2018, %nyx_string** %2019
  %2020 = call i8* @llvm.stacksave()
  br label %while_cond399
while_cond399:
  %2021 = load i64, i64* %2016
  %2022 = load %nyx_string*, %nyx_string** %2004
  %2023 = call i64 @nyx_string_byte_length(%nyx_string* %2022)
  %2024 = icmp slt i64 %2021, %2023
  br i1 %2024, label %while_body400, label %while_end401
while_body400:
  call void @llvm.stackrestore(i8* %2020)
  %2025 = load %nyx_string*, %nyx_string** %2004
  %2026 = load i64, i64* %2016
  %2027 = call i8 @nyx_string_char_at(%nyx_string* %2025, i64 %2026)
  %2028 = zext i8 %2027 to i64
  %2029 = alloca i64
  store i64 %2028, i64* %2029
  %2030 = alloca i1
  store i1 false, i1* %2030
  %2031 = load i64, i64* %2029
  %2032 = icmp sge i64 %2031, 48
  br i1 %2032, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %2033 = load i64, i64* %2029
  %2034 = icmp sle i64 %2033, 57
  store i1 %2034, i1* %2030
  br label %sc_and_end403
sc_and_end403:
  %2035 = load i1, i1* %2030
  br i1 %2035, label %then404, label %else405
then404:
  %2036 = load %nyx_string*, %nyx_string** %2019
  %2037 = load %nyx_string*, %nyx_string** %2004
  %2038 = load i64, i64* %2016
  %2039 = load i64, i64* %2016
  %2040 = add i64 %2039, 1
  %2041 = call %nyx_string* @nyx_string_substring(%nyx_string* %2037, i64 %2038, i64 %2040)
  %2042 = call %nyx_string* @nyx_string_concat(%nyx_string* %2036, %nyx_string* %2041)
  store %nyx_string* %2042, %nyx_string** %2019
  %2043 = load i64, i64* %2016
  %2044 = add i64 %2043, 1
  store i64 %2044, i64* %2016
  br label %merge406
else405:
  %2045 = load %nyx_string*, %nyx_string** %2004
  %2046 = call i64 @nyx_string_byte_length(%nyx_string* %2045)
  store i64 %2046, i64* %2016
  br label %merge406
merge406:
  br label %while_cond399
while_end401:
  %2047 = load %nyx_string*, %nyx_string** %2019
  ret %nyx_string* %2047
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %2048 = getelementptr [10 x i8], [10 x i8]* @.str198, i32 0, i32 0
  %2049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2048, i64 9)
  %2050 = load %nyx_string*, %nyx_string** %path.ptr
  %2051 = call %nyx_string* @nyx_string_concat(%nyx_string* %2049, %nyx_string* %2050)
  %2052 = getelementptr [2 x i8], [2 x i8]* @.str199, i32 0, i32 0
  %2053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2052, i64 1)
  %2054 = call %nyx_string* @nyx_string_concat(%nyx_string* %2051, %nyx_string* %2053)
  %2055 = call i8* @nyx_string_to_cstr(%nyx_string* %2054)
  %2056 = call i64 @nyx_exec_code(i8* %2055)
  %2057 = icmp eq i64 %2056, 0
  ret i1 %2057
}

define internal %nyx_string* @cov_find_profdata(
) {
  %2058 = call %nyx_string* @cov_clang_major()
  %2059 = alloca %nyx_string*
  store %nyx_string* %2058, %nyx_string** %2059
  %2060 = load %nyx_string*, %nyx_string** %2059
  %2061 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %2062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2061, i64 0)
  %2063 = call i1 @nyx_string_equals(%nyx_string* %2060, %nyx_string* %2062)
  %2064 = xor i1 %2063, true
  br i1 %2064, label %then407, label %else408
then407:
  %2065 = getelementptr [26 x i8], [26 x i8]* @.str201, i32 0, i32 0
  %2066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2065, i64 25)
  %2067 = load %nyx_string*, %nyx_string** %2059
  %2068 = call %nyx_string* @nyx_string_concat(%nyx_string* %2066, %nyx_string* %2067)
  %2069 = getelementptr [13 x i8], [13 x i8]* @.str202, i32 0, i32 0
  %2070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2069, i64 12)
  %2071 = call %nyx_string* @nyx_string_concat(%nyx_string* %2068, %nyx_string* %2070)
  %2072 = call i8* @nyx_string_to_cstr(%nyx_string* %2071)
  %2073 = call %nyx_string* @nyx_exec(i8* %2072)
  %2074 = call %nyx_string* @nyx_string_trim(%nyx_string* %2073)
  %2075 = alloca %nyx_string*
  store %nyx_string* %2074, %nyx_string** %2075
  %2076 = load %nyx_string*, %nyx_string** %2075
  %2077 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %2078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2077, i64 0)
  %2079 = call i1 @nyx_string_equals(%nyx_string* %2076, %nyx_string* %2078)
  %2080 = xor i1 %2079, true
  br i1 %2080, label %then410, label %else411
then410:
  %2081 = load %nyx_string*, %nyx_string** %2075
  ret %nyx_string* %2081
else411:
  br label %merge412
merge412:
  br label %merge409
else408:
  br label %merge409
merge409:
  %2082 = getelementptr [37 x i8], [37 x i8]* @.str204, i32 0, i32 0
  %2083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2082, i64 36)
  %2084 = call i8* @nyx_string_to_cstr(%nyx_string* %2083)
  %2085 = call %nyx_string* @nyx_exec(i8* %2084)
  %2086 = call %nyx_string* @nyx_string_trim(%nyx_string* %2085)
  ret %nyx_string* %2086
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %2087 = call { i64, i8* }* @nyx_array_new_ptr()
  %2088 = alloca { i64, i8* }*
  store { i64, i8* }* %2087, { i64, i8* }** %2088
  %2089 = alloca i64
  store i64 0, i64* %2089
  %2090 = alloca i64
  store i64 0, i64* %2090
  %2091 = call i8* @llvm.stacksave()
  br label %while_cond413
while_cond413:
  %2092 = load i64, i64* %2090
  %2093 = load %nyx_string*, %nyx_string** %line.ptr
  %2094 = call i64 @nyx_string_byte_length(%nyx_string* %2093)
  %2095 = icmp slt i64 %2092, %2094
  br i1 %2095, label %while_body414, label %while_end415
while_body414:
  call void @llvm.stackrestore(i8* %2091)
  %2096 = load %nyx_string*, %nyx_string** %line.ptr
  %2097 = load i64, i64* %2090
  %2098 = call i8 @nyx_string_char_at(%nyx_string* %2096, i64 %2097)
  %2099 = zext i8 %2098 to i64
  %2100 = icmp eq i64 %2099, 9
  br i1 %2100, label %then416, label %else417
then416:
  %2101 = load { i64, i8* }*, { i64, i8* }** %2088
  %2102 = load %nyx_string*, %nyx_string** %line.ptr
  %2103 = load i64, i64* %2089
  %2104 = load i64, i64* %2090
  %2105 = call %nyx_string* @nyx_string_substring(%nyx_string* %2102, i64 %2103, i64 %2104)
  %2106 = ptrtoint %nyx_string* %2105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2101, i64 %2106, i64 2)
  %2107 = load i64, i64* %2090
  %2108 = add i64 %2107, 1
  store i64 %2108, i64* %2089
  br label %merge418
else417:
  br label %merge418
merge418:
  %2109 = load i64, i64* %2090
  %2110 = add i64 %2109, 1
  store i64 %2110, i64* %2090
  br label %while_cond413
while_end415:
  %2111 = load { i64, i8* }*, { i64, i8* }** %2088
  %2112 = load %nyx_string*, %nyx_string** %line.ptr
  %2113 = load i64, i64* %2089
  %2114 = load %nyx_string*, %nyx_string** %line.ptr
  %2115 = call i64 @nyx_string_byte_length(%nyx_string* %2114)
  %2116 = call %nyx_string* @nyx_string_substring(%nyx_string* %2112, i64 %2113, i64 %2115)
  %2117 = ptrtoint %nyx_string* %2116 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2111, i64 %2117, i64 2)
  %2118 = load { i64, i8* }*, { i64, i8* }** %2088
  ret { i64, i8* }* %2118
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %2119 = load i64, i64* %n.ptr
  %2120 = call %nyx_string* @nyx_string_from_int(i64 %2119)
  %2121 = alloca %nyx_string*
  store %nyx_string* %2120, %nyx_string** %2121
  %2122 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %2123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2122, i64 1)
  %2124 = alloca %nyx_string*
  store %nyx_string* %2123, %nyx_string** %2124
  %2125 = call i8* @llvm.stacksave()
  br label %while_cond419
while_cond419:
  %2126 = load %nyx_string*, %nyx_string** %2121
  %2127 = call i64 @nyx_string_byte_length(%nyx_string* %2126)
  %2128 = icmp slt i64 %2127, 9
  br i1 %2128, label %while_body420, label %while_end421
while_body420:
  call void @llvm.stackrestore(i8* %2125)
  %2129 = load %nyx_string*, %nyx_string** %2124
  %2130 = load %nyx_string*, %nyx_string** %2121
  %2131 = call %nyx_string* @nyx_string_concat(%nyx_string* %2129, %nyx_string* %2130)
  store %nyx_string* %2131, %nyx_string** %2121
  br label %while_cond419
while_end421:
  %2132 = load %nyx_string*, %nyx_string** %2121
  ret %nyx_string* %2132
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %2133 = call i8* @nyx_map_new(i32 0)
  %2134 = alloca i8*
  store i8* %2133, i8** %2134
  %2135 = load %nyx_string*, %nyx_string** %show.ptr
  %2136 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %2137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2136, i64 1)
  %2138 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2135, %nyx_string* %2137)
  %2139 = alloca { i64, i8* }*
  store { i64, i8* }* %2138, { i64, i8* }** %2139
  %2140 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %2141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2140, i64 0)
  %2142 = alloca %nyx_string*
  store %nyx_string* %2141, %nyx_string** %2142
  %2143 = alloca i64
  store i64 0, i64* %2143
  %2144 = getelementptr [3 x i8], [3 x i8]* @.str208, i32 0, i32 0
  %2145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2144, i64 2)
  %2146 = alloca %nyx_string*
  store %nyx_string* %2145, %nyx_string** %2146
  %2147 = getelementptr [4 x i8], [4 x i8]* @.str209, i32 0, i32 0
  %2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2147, i64 3)
  %2149 = alloca %nyx_string*
  store %nyx_string* %2148, %nyx_string** %2149
  %2150 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2150, i64 1)
  %2152 = alloca %nyx_string*
  store %nyx_string* %2151, %nyx_string** %2152
  %2153 = getelementptr [2 x i8], [2 x i8]* @.str211, i32 0, i32 0
  %2154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2153, i64 1)
  %2155 = alloca %nyx_string*
  store %nyx_string* %2154, %nyx_string** %2155
  %2156 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2156, i64 0)
  %2158 = alloca %nyx_string*
  store %nyx_string* %2157, %nyx_string** %2158
  %2159 = getelementptr [14 x i8], [14 x i8]* @.str213, i32 0, i32 0
  %2160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2159, i64 13)
  %2161 = alloca %nyx_string*
  store %nyx_string* %2160, %nyx_string** %2161
  %2162 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2162, i64 1)
  %2164 = alloca %nyx_string*
  store %nyx_string* %2163, %nyx_string** %2164
  %2165 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2165, i64 1)
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2168, i64 1)
  %2170 = alloca %nyx_string*
  store %nyx_string* %2169, %nyx_string** %2170
  %2171 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2171, i64 1)
  %2173 = alloca %nyx_string*
  store %nyx_string* %2172, %nyx_string** %2173
  %2174 = call i8* @llvm.stacksave()
  br label %while_cond422
while_cond422:
  %2175 = load i64, i64* %2143
  %2176 = load { i64, i8* }*, { i64, i8* }** %2139
  %2177 = call i64 @nyx_array_length({ i64, i8* }* %2176)
  %2178 = icmp slt i64 %2175, %2177
  br i1 %2178, label %while_body423, label %while_end424
while_body423:
  call void @llvm.stackrestore(i8* %2174)
  %2179 = load { i64, i8* }*, { i64, i8* }** %2139
  %2180 = load i64, i64* %2143
  %2181 = call i64 @nyx_array_get_checked({ i64, i8* }* %2179, i64 %2180, i64 2)
  %2182 = inttoptr i64 %2181 to %nyx_string*
  %2183 = alloca %nyx_string*
  store %nyx_string* %2182, %nyx_string** %2183
  %2184 = alloca i1
  store i1 false, i1* %2184
  %2185 = alloca i1
  store i1 false, i1* %2185
  %2186 = load %nyx_string*, %nyx_string** %2183
  %2187 = load %nyx_string*, %nyx_string** %2146
  %2188 = call i1 @nyx_string_starts_with(%nyx_string* %2186, %nyx_string* %2187)
  br i1 %2188, label %sc_and_rhs425, label %sc_and_end426
sc_and_rhs425:
  %2189 = load %nyx_string*, %nyx_string** %2183
  %2190 = load %nyx_string*, %nyx_string** %2149
  %2191 = call i1 @nyx_string_starts_with(%nyx_string* %2189, %nyx_string* %2190)
  %2192 = xor i1 %2191, true
  store i1 %2192, i1* %2185
  br label %sc_and_end426
sc_and_end426:
  %2193 = load i1, i1* %2185
  br i1 %2193, label %sc_and_rhs427, label %sc_and_end428
sc_and_rhs427:
  %2194 = load %nyx_string*, %nyx_string** %2183
  %2195 = load %nyx_string*, %nyx_string** %2152
  %2196 = call i1 @nyx_string_ends_with(%nyx_string* %2194, %nyx_string* %2195)
  store i1 %2196, i1* %2184
  br label %sc_and_end428
sc_and_end428:
  %2197 = load i1, i1* %2184
  br i1 %2197, label %then429, label %else430
then429:
  %2198 = load %nyx_string*, %nyx_string** %2183
  %2199 = load %nyx_string*, %nyx_string** %2183
  %2200 = call i64 @nyx_string_byte_length(%nyx_string* %2199)
  %2201 = sub i64 %2200, 1
  %2202 = call %nyx_string* @nyx_string_substring(%nyx_string* %2198, i64 2, i64 %2201)
  %2203 = alloca %nyx_string*
  store %nyx_string* %2202, %nyx_string** %2203
  %2204 = load %nyx_string*, %nyx_string** %2203
  %2205 = load %nyx_string*, %nyx_string** %2155
  %2206 = call i64 @nyx_string_index_of(%nyx_string* %2204, %nyx_string* %2205)
  %2207 = alloca i64
  store i64 %2206, i64* %2207
  %2208 = load i64, i64* %2207
  %2209 = icmp sge i64 %2208, 0
  br i1 %2209, label %then432, label %else433
then432:
  %2210 = load %nyx_string*, %nyx_string** %2203
  %2211 = load i64, i64* %2207
  %2212 = add i64 %2211, 1
  %2213 = load %nyx_string*, %nyx_string** %2203
  %2214 = call i64 @nyx_string_byte_length(%nyx_string* %2213)
  %2215 = call %nyx_string* @nyx_string_substring(%nyx_string* %2210, i64 %2212, i64 %2214)
  store %nyx_string* %2215, %nyx_string** %2203
  br label %merge434
else433:
  br label %merge434
merge434:
  %2216 = load %nyx_string*, %nyx_string** %2203
  store %nyx_string* %2216, %nyx_string** %2142
  br label %merge431
else430:
  %2217 = alloca i1
  store i1 false, i1* %2217
  %2218 = load %nyx_string*, %nyx_string** %2142
  %2219 = load %nyx_string*, %nyx_string** %2158
  %2220 = call i1 @nyx_string_equals(%nyx_string* %2218, %nyx_string* %2219)
  %2221 = xor i1 %2220, true
  br i1 %2221, label %sc_and_rhs435, label %sc_and_end436
sc_and_rhs435:
  %2222 = load %nyx_string*, %nyx_string** %2183
  %2223 = load %nyx_string*, %nyx_string** %2161
  %2224 = call i1 @nyx_string_contains(%nyx_string* %2222, %nyx_string* %2223)
  store i1 %2224, i1* %2217
  br label %sc_and_end436
sc_and_end436:
  %2225 = load i1, i1* %2217
  br i1 %2225, label %then437, label %else438
then437:
  %2226 = load %nyx_string*, %nyx_string** %2183
  %2227 = load %nyx_string*, %nyx_string** %2164
  %2228 = call i64 @nyx_string_index_of(%nyx_string* %2226, %nyx_string* %2227)
  %2229 = alloca i64
  store i64 %2228, i64* %2229
  %2230 = load %nyx_string*, %nyx_string** %2183
  %2231 = load %nyx_string*, %nyx_string** %2167
  %2232 = call i64 @nyx_string_index_of(%nyx_string* %2230, %nyx_string* %2231)
  %2233 = alloca i64
  store i64 %2232, i64* %2233
  %2234 = alloca i1
  store i1 false, i1* %2234
  %2235 = load i64, i64* %2229
  %2236 = icmp sge i64 %2235, 0
  br i1 %2236, label %sc_and_rhs440, label %sc_and_end441
sc_and_rhs440:
  %2237 = load i64, i64* %2233
  %2238 = load i64, i64* %2229
  %2239 = icmp sgt i64 %2237, %2238
  store i1 %2239, i1* %2234
  br label %sc_and_end441
sc_and_end441:
  %2240 = load i1, i1* %2234
  br i1 %2240, label %then442, label %else443
then442:
  %2241 = load %nyx_string*, %nyx_string** %2183
  %2242 = load i64, i64* %2229
  %2243 = add i64 %2242, 1
  %2244 = load i64, i64* %2233
  %2245 = call %nyx_string* @nyx_string_substring(%nyx_string* %2241, i64 %2243, i64 %2244)
  %2246 = load %nyx_string*, %nyx_string** %2170
  %2247 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2245, %nyx_string* %2246)
  %2248 = alloca { i64, i8* }*
  store { i64, i8* }* %2247, { i64, i8* }** %2248
  %2249 = alloca i64
  store i64 0, i64* %2249
  %2250 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %2251 = load i64, i64* %2249
  %2252 = load { i64, i8* }*, { i64, i8* }** %2248
  %2253 = call i64 @nyx_array_length({ i64, i8* }* %2252)
  %2254 = icmp slt i64 %2251, %2253
  br i1 %2254, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %2250)
  %2255 = load { i64, i8* }*, { i64, i8* }** %2248
  %2256 = load i64, i64* %2249
  %2257 = call i64 @nyx_array_get_checked({ i64, i8* }* %2255, i64 %2256, i64 2)
  %2258 = inttoptr i64 %2257 to %nyx_string*
  %2259 = alloca %nyx_string*
  store %nyx_string* %2258, %nyx_string** %2259
  %2260 = load %nyx_string*, %nyx_string** %2259
  %2261 = call %nyx_string* @nyx_string_trim(%nyx_string* %2260)
  %2262 = call i64 @nyx_string_to_int(%nyx_string* %2261)
  %2263 = icmp sgt i64 %2262, 0
  br i1 %2263, label %then448, label %else449
then448:
  %2264 = load i8*, i8** %2134
  %2265 = load %nyx_string*, %nyx_string** %2142
  %2266 = load %nyx_string*, %nyx_string** %2173
  %2267 = call i8* @nyx_string_to_cstr(%nyx_string* %2265)
  %2268 = bitcast %nyx_string* %2266 to i8*
  call void @nyx_map_insert_str(i8* %2264, i8* %2267, i8* %2268)
  br label %merge450
else449:
  br label %merge450
merge450:
  %2269 = load i64, i64* %2249
  %2270 = add i64 %2269, 1
  store i64 %2270, i64* %2249
  br label %while_cond445
while_end447:
  br label %merge444
else443:
  br label %merge444
merge444:
  br label %merge439
else438:
  br label %merge439
merge439:
  br label %merge431
merge431:
  %2271 = load i64, i64* %2143
  %2272 = add i64 %2271, 1
  store i64 %2272, i64* %2143
  br label %while_cond422
while_end424:
  %2273 = load i8*, i8** %2134
  ret i8* %2273
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2274 = call { i64, i8* }* @nyx_array_new_ptr()
  %2275 = alloca { i64, i8* }*
  store { i64, i8* }* %2274, { i64, i8* }** %2275
  %2276 = getelementptr [4 x i8], [4 x i8]* @.str218, i32 0, i32 0
  %2277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2276, i64 3)
  %2278 = call i8* @nyx_string_to_cstr(%nyx_string* %2277)
  %2279 = call i1 @nyx_file_exists(i8* %2278)
  %2280 = xor i1 %2279, true
  br i1 %2280, label %then451, label %else452
then451:
  %2281 = load { i64, i8* }*, { i64, i8* }** %2275
  ret { i64, i8* }* %2281
else452:
  br label %merge453
merge453:
  %2282 = getelementptr [50 x i8], [50 x i8]* @.str219, i32 0, i32 0
  %2283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2282, i64 49)
  %2284 = call i8* @nyx_string_to_cstr(%nyx_string* %2283)
  %2285 = call %nyx_string* @nyx_exec(i8* %2284)
  %2286 = alloca %nyx_string*
  store %nyx_string* %2285, %nyx_string** %2286
  %2287 = load %nyx_string*, %nyx_string** %2286
  %2288 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %2289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2288, i64 1)
  %2290 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2287, %nyx_string* %2289)
  %2291 = alloca { i64, i8* }*
  store { i64, i8* }* %2290, { i64, i8* }** %2291
  %2292 = alloca i64
  store i64 0, i64* %2292
  %2293 = getelementptr [4 x i8], [4 x i8]* @.str221, i32 0, i32 0
  %2294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2293, i64 3)
  %2295 = alloca %nyx_string*
  store %nyx_string* %2294, %nyx_string** %2295
  %2296 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %2297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2296, i64 8)
  %2298 = alloca %nyx_string*
  store %nyx_string* %2297, %nyx_string** %2298
  %2299 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %2300 = load i64, i64* %2292
  %2301 = load { i64, i8* }*, { i64, i8* }** %2291
  %2302 = call i64 @nyx_array_length({ i64, i8* }* %2301)
  %2303 = icmp slt i64 %2300, %2302
  br i1 %2303, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %2299)
  %2304 = load { i64, i8* }*, { i64, i8* }** %2291
  %2305 = load i64, i64* %2292
  %2306 = call i64 @nyx_array_get_checked({ i64, i8* }* %2304, i64 %2305, i64 2)
  %2307 = inttoptr i64 %2306 to %nyx_string*
  %2308 = alloca %nyx_string*
  store %nyx_string* %2307, %nyx_string** %2308
  %2309 = load %nyx_string*, %nyx_string** %2308
  %2310 = call %nyx_string* @nyx_string_trim(%nyx_string* %2309)
  %2311 = alloca %nyx_string*
  store %nyx_string* %2310, %nyx_string** %2311
  %2312 = alloca i1
  store i1 false, i1* %2312
  %2313 = load %nyx_string*, %nyx_string** %2311
  %2314 = load %nyx_string*, %nyx_string** %2295
  %2315 = call i1 @nyx_string_ends_with(%nyx_string* %2313, %nyx_string* %2314)
  br i1 %2315, label %sc_and_rhs457, label %sc_and_end458
sc_and_rhs457:
  %2316 = load %nyx_string*, %nyx_string** %2311
  %2317 = load %nyx_string*, %nyx_string** %2298
  %2318 = call i1 @nyx_string_ends_with(%nyx_string* %2316, %nyx_string* %2317)
  %2319 = xor i1 %2318, true
  store i1 %2319, i1* %2312
  br label %sc_and_end458
sc_and_end458:
  %2320 = load i1, i1* %2312
  br i1 %2320, label %then459, label %else460
then459:
  %2321 = load { i64, i8* }*, { i64, i8* }** %2275
  %2322 = load %nyx_string*, %nyx_string** %2311
  %2323 = load %nyx_string*, %nyx_string** %2311
  %2324 = call i64 @nyx_string_byte_length(%nyx_string* %2323)
  %2325 = sub i64 %2324, 3
  %2326 = call %nyx_string* @nyx_string_substring(%nyx_string* %2322, i64 0, i64 %2325)
  %2327 = ptrtoint %nyx_string* %2326 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2321, i64 %2327, i64 2)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2328 = load i64, i64* %2292
  %2329 = add i64 %2328, 1
  store i64 %2329, i64* %2292
  br label %while_cond454
while_end456:
  %2330 = load { i64, i8* }*, { i64, i8* }** %2275
  ret { i64, i8* }* %2330
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
  %2331 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %2332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2331, i64 0)
  %2333 = alloca %nyx_string*
  store %nyx_string* %2332, %nyx_string** %2333
  %2334 = alloca i64
  store i64 0, i64* %2334
  %2335 = getelementptr [9 x i8], [9 x i8]* @.str224, i32 0, i32 0
  %2336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2335, i64 8)
  %2337 = alloca %nyx_string*
  store %nyx_string* %2336, %nyx_string** %2337
  %2338 = getelementptr [3 x i8], [3 x i8]* @.str225, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2338, i64 2)
  %2340 = alloca %nyx_string*
  store %nyx_string* %2339, %nyx_string** %2340
  %2341 = call i8* @llvm.stacksave()
  br label %while_cond462
while_cond462:
  %2342 = load i64, i64* %2334
  %2343 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2344 = call i64 @nyx_array_length({ i64, i8* }* %2343)
  %2345 = icmp slt i64 %2342, %2344
  br i1 %2345, label %while_body463, label %while_end464
while_body463:
  call void @llvm.stackrestore(i8* %2341)
  %2346 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2347 = load i64, i64* %2334
  %2348 = call i64 @nyx_array_get_checked({ i64, i8* }* %2346, i64 %2347, i64 2)
  %2349 = inttoptr i64 %2348 to %nyx_string*
  %2350 = alloca %nyx_string*
  store %nyx_string* %2349, %nyx_string** %2350
  %2351 = load %nyx_string*, %nyx_string** %2333
  %2352 = load %nyx_string*, %nyx_string** %2337
  %2353 = call %nyx_string* @nyx_string_concat(%nyx_string* %2351, %nyx_string* %2352)
  %2354 = load %nyx_string*, %nyx_string** %2350
  %2355 = call %nyx_string* @nyx_string_concat(%nyx_string* %2353, %nyx_string* %2354)
  %2356 = load %nyx_string*, %nyx_string** %2340
  %2357 = call %nyx_string* @nyx_string_concat(%nyx_string* %2355, %nyx_string* %2356)
  store %nyx_string* %2357, %nyx_string** %2333
  %2358 = load i64, i64* %2334
  %2359 = add i64 %2358, 1
  store i64 %2359, i64* %2334
  br label %while_cond462
while_end464:
  %2360 = load %nyx_string*, %nyx_string** %2333
  %2361 = getelementptr [36 x i8], [36 x i8]* @.str226, i32 0, i32 0
  %2362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2361, i64 35)
  %2363 = call %nyx_string* @nyx_string_concat(%nyx_string* %2360, %nyx_string* %2362)
  store %nyx_string* %2363, %nyx_string** %2333
  %2364 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2365 = getelementptr [13 x i8], [13 x i8]* @.str227, i32 0, i32 0
  %2366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2365, i64 12)
  %2367 = call %nyx_string* @nyx_string_concat(%nyx_string* %2364, %nyx_string* %2366)
  %2368 = load %nyx_string*, %nyx_string** %2333
  %2369 = ptrtoint %nyx_string* %2368 to i64
  %2370 = call i8* @nyx_string_to_cstr(%nyx_string* %2367)
  %2371 = inttoptr i64 %2369 to %nyx_string*
  %2372 = call i1 @nyx_write_file_safe(i8* %2370, %nyx_string* %2371)
  %2373 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2374 = getelementptr [14 x i8], [14 x i8]* @.str228, i32 0, i32 0
  %2375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2374, i64 13)
  %2376 = call %nyx_string* @nyx_string_concat(%nyx_string* %2373, %nyx_string* %2375)
  %2377 = alloca %nyx_string*
  store %nyx_string* %2376, %nyx_string** %2377
  %2378 = getelementptr [13 x i8], [13 x i8]* @.str229, i32 0, i32 0
  %2379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2378, i64 12)
  %2380 = getelementptr [8 x i8], [8 x i8]* @.str230, i32 0, i32 0
  %2381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2380, i64 7)
  %2382 = call %nyx_string* @nyx_string_concat(%nyx_string* %2379, %nyx_string* %2381)
  %2383 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2384 = call %nyx_string* @nyx_string_concat(%nyx_string* %2382, %nyx_string* %2383)
  %2385 = getelementptr [19 x i8], [19 x i8]* @.str231, i32 0, i32 0
  %2386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2385, i64 18)
  %2387 = call %nyx_string* @nyx_string_concat(%nyx_string* %2384, %nyx_string* %2386)
  %2388 = getelementptr [5 x i8], [5 x i8]* @.str232, i32 0, i32 0
  %2389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2388, i64 4)
  %2390 = call %nyx_string* @nyx_string_concat(%nyx_string* %2387, %nyx_string* %2389)
  %2391 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2392 = call %nyx_string* @nyx_string_concat(%nyx_string* %2390, %nyx_string* %2391)
  %2393 = getelementptr [24 x i8], [24 x i8]* @.str233, i32 0, i32 0
  %2394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2393, i64 23)
  %2395 = call %nyx_string* @nyx_string_concat(%nyx_string* %2392, %nyx_string* %2394)
  %2396 = getelementptr [5 x i8], [5 x i8]* @.str234, i32 0, i32 0
  %2397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2396, i64 4)
  %2398 = call %nyx_string* @nyx_string_concat(%nyx_string* %2395, %nyx_string* %2397)
  %2399 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2400 = call %nyx_string* @nyx_string_concat(%nyx_string* %2398, %nyx_string* %2399)
  %2401 = getelementptr [3 x i8], [3 x i8]* @.str235, i32 0, i32 0
  %2402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2401, i64 2)
  %2403 = call %nyx_string* @nyx_string_concat(%nyx_string* %2400, %nyx_string* %2402)
  %2404 = getelementptr [137 x i8], [137 x i8]* @.str236, i32 0, i32 0
  %2405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2404, i64 136)
  %2406 = call %nyx_string* @nyx_string_concat(%nyx_string* %2403, %nyx_string* %2405)
  %2407 = getelementptr [43 x i8], [43 x i8]* @.str237, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2407, i64 42)
  %2409 = call %nyx_string* @nyx_string_concat(%nyx_string* %2406, %nyx_string* %2408)
  %2410 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2411 = call %nyx_string* @nyx_string_concat(%nyx_string* %2409, %nyx_string* %2410)
  %2412 = getelementptr [38 x i8], [38 x i8]* @.str238, i32 0, i32 0
  %2413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2412, i64 37)
  %2414 = call %nyx_string* @nyx_string_concat(%nyx_string* %2411, %nyx_string* %2413)
  %2415 = load %nyx_string*, %nyx_string** %2377
  %2416 = call %nyx_string* @nyx_string_concat(%nyx_string* %2414, %nyx_string* %2415)
  %2417 = getelementptr [24 x i8], [24 x i8]* @.str239, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2417, i64 23)
  %2419 = call %nyx_string* @nyx_string_concat(%nyx_string* %2416, %nyx_string* %2418)
  %2420 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2421 = call %nyx_string* @nyx_string_concat(%nyx_string* %2419, %nyx_string* %2420)
  %2422 = getelementptr [21 x i8], [21 x i8]* @.str240, i32 0, i32 0
  %2423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2422, i64 20)
  %2424 = call %nyx_string* @nyx_string_concat(%nyx_string* %2421, %nyx_string* %2423)
  %2425 = getelementptr [7 x i8], [7 x i8]* @.str241, i32 0, i32 0
  %2426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2425, i64 6)
  %2427 = call %nyx_string* @nyx_string_concat(%nyx_string* %2424, %nyx_string* %2426)
  %2428 = getelementptr [17 x i8], [17 x i8]* @.str242, i32 0, i32 0
  %2429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2428, i64 16)
  %2430 = call %nyx_string* @nyx_string_concat(%nyx_string* %2427, %nyx_string* %2429)
  %2431 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2432 = call %nyx_string* @nyx_string_concat(%nyx_string* %2430, %nyx_string* %2431)
  %2433 = getelementptr [19 x i8], [19 x i8]* @.str243, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2433, i64 18)
  %2435 = call %nyx_string* @nyx_string_concat(%nyx_string* %2432, %nyx_string* %2434)
  %2436 = getelementptr [10 x i8], [10 x i8]* @.str244, i32 0, i32 0
  %2437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2436, i64 9)
  %2438 = call %nyx_string* @nyx_string_concat(%nyx_string* %2435, %nyx_string* %2437)
  %2439 = alloca %nyx_string*
  store %nyx_string* %2438, %nyx_string** %2439
  %2440 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2441 = getelementptr [13 x i8], [13 x i8]* @.str245, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2441, i64 12)
  %2443 = call %nyx_string* @nyx_string_concat(%nyx_string* %2440, %nyx_string* %2442)
  %2444 = load %nyx_string*, %nyx_string** %2439
  %2445 = ptrtoint %nyx_string* %2444 to i64
  %2446 = call i8* @nyx_string_to_cstr(%nyx_string* %2443)
  %2447 = inttoptr i64 %2445 to %nyx_string*
  %2448 = call i1 @nyx_write_file_safe(i8* %2446, %nyx_string* %2447)
  %2449 = getelementptr [7 x i8], [7 x i8]* @.str246, i32 0, i32 0
  %2450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2449, i64 6)
  %2451 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2452 = call %nyx_string* @nyx_string_concat(%nyx_string* %2450, %nyx_string* %2451)
  %2453 = getelementptr [14 x i8], [14 x i8]* @.str247, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2453, i64 13)
  %2455 = call %nyx_string* @nyx_string_concat(%nyx_string* %2452, %nyx_string* %2454)
  %2456 = call i8* @nyx_string_to_cstr(%nyx_string* %2455)
  %2457 = call i64 @nyx_exec_code(i8* %2456)
  %2458 = load %nyx_string*, %nyx_string** %2377
  ret %nyx_string* %2458
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
  %2459 = getelementptr [9 x i8], [9 x i8]* @.str248, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2459, i64 8)
  %2461 = call i8* @nyx_string_to_cstr(%nyx_string* %2460)
  %2462 = call %nyx_string* @nyx_getenv(i8* %2461)
  %2463 = alloca %nyx_string*
  store %nyx_string* %2462, %nyx_string** %2463
  %2464 = getelementptr [4 x i8], [4 x i8]* @.str249, i32 0, i32 0
  %2465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2464, i64 3)
  %2466 = call i8* @nyx_string_to_cstr(%nyx_string* %2465)
  %2467 = call %nyx_string* @nyx_getenv(i8* %2466)
  %2468 = alloca %nyx_string*
  store %nyx_string* %2467, %nyx_string** %2468
  %2469 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %2470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2469, i64 0)
  %2471 = call i8* @nyx_string_to_cstr(%nyx_string* %2470)
  call void @nyx_print_string(i8* %2471)
  %2472 = getelementptr [36 x i8], [36 x i8]* @.str251, i32 0, i32 0
  %2473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2472, i64 35)
  %2474 = call i8* @nyx_string_to_cstr(%nyx_string* %2473)
  call void @nyx_print_string(i8* %2474)
  %2475 = getelementptr [1 x i8], [1 x i8]* @.str252, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2475, i64 0)
  %2477 = alloca %nyx_string*
  store %nyx_string* %2476, %nyx_string** %2477
  %2478 = alloca i64
  store i64 0, i64* %2478
  %2479 = call i8* @nyx_map_new(i32 0)
  %2480 = alloca i8*
  store i8* %2479, i8** %2480
  %2481 = call { i64, i8* }* @nyx_array_new_ptr()
  %2482 = alloca { i64, i8* }*
  store { i64, i8* }* %2481, { i64, i8* }** %2482
  %2483 = alloca i64
  store i64 0, i64* %2483
  %2484 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %2485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2484, i64 1)
  %2486 = alloca %nyx_string*
  store %nyx_string* %2485, %nyx_string** %2486
  %2487 = getelementptr [9 x i8], [9 x i8]* @.str254, i32 0, i32 0
  %2488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2487, i64 8)
  %2489 = alloca %nyx_string*
  store %nyx_string* %2488, %nyx_string** %2489
  %2490 = getelementptr [3 x i8], [3 x i8]* @.str255, i32 0, i32 0
  %2491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2490, i64 2)
  %2492 = alloca %nyx_string*
  store %nyx_string* %2491, %nyx_string** %2492
  %2493 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2493, i64 1)
  %2495 = alloca %nyx_string*
  store %nyx_string* %2494, %nyx_string** %2495
  %2496 = getelementptr [2 x i8], [2 x i8]* @.str257, i32 0, i32 0
  %2497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2496, i64 1)
  %2498 = alloca %nyx_string*
  store %nyx_string* %2497, %nyx_string** %2498
  %2499 = call i8* @llvm.stacksave()
  br label %while_cond465
while_cond465:
  %2500 = load i64, i64* %2483
  %2501 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2502 = call i64 @nyx_array_length({ i64, i8* }* %2501)
  %2503 = icmp slt i64 %2500, %2502
  br i1 %2503, label %while_body466, label %while_end467
while_body466:
  call void @llvm.stackrestore(i8* %2499)
  %2504 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2505 = load i64, i64* %2483
  %2506 = call i64 @nyx_array_get_checked({ i64, i8* }* %2504, i64 %2505, i64 2)
  %2507 = inttoptr i64 %2506 to %nyx_string*
  %2508 = alloca %nyx_string*
  store %nyx_string* %2507, %nyx_string** %2508
  %2509 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2510 = load i64, i64* %2483
  %2511 = call i64 @nyx_array_get_checked({ i64, i8* }* %2509, i64 %2510, i64 2)
  %2512 = inttoptr i64 %2511 to %nyx_string*
  %2513 = alloca %nyx_string*
  store %nyx_string* %2512, %nyx_string** %2513
  %2514 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2515 = load %nyx_string*, %nyx_string** %2486
  %2516 = call %nyx_string* @nyx_string_concat(%nyx_string* %2514, %nyx_string* %2515)
  %2517 = load %nyx_string*, %nyx_string** %2508
  %2518 = call %nyx_string* @nyx_string_concat(%nyx_string* %2516, %nyx_string* %2517)
  %2519 = load %nyx_string*, %nyx_string** %2489
  %2520 = call %nyx_string* @nyx_string_concat(%nyx_string* %2518, %nyx_string* %2519)
  %2521 = alloca %nyx_string*
  store %nyx_string* %2520, %nyx_string** %2521
  %2522 = load %nyx_string*, %nyx_string** %2521
  %2523 = call i1 @cov_profraw_valid(%nyx_string* %2522)
  br i1 %2523, label %then468, label %else469
then468:
  %2524 = load %nyx_string*, %nyx_string** %2477
  %2525 = load %nyx_string*, %nyx_string** %2492
  %2526 = call %nyx_string* @nyx_string_concat(%nyx_string* %2524, %nyx_string* %2525)
  %2527 = load %nyx_string*, %nyx_string** %2521
  %2528 = call %nyx_string* @nyx_string_concat(%nyx_string* %2526, %nyx_string* %2527)
  %2529 = load %nyx_string*, %nyx_string** %2495
  %2530 = call %nyx_string* @nyx_string_concat(%nyx_string* %2528, %nyx_string* %2529)
  store %nyx_string* %2530, %nyx_string** %2477
  %2531 = load i64, i64* %2478
  %2532 = add i64 %2531, 1
  store i64 %2532, i64* %2478
  %2533 = load i8*, i8** %2480
  %2534 = load %nyx_string*, %nyx_string** %2508
  %2535 = load %nyx_string*, %nyx_string** %2498
  %2536 = call i8* @nyx_string_to_cstr(%nyx_string* %2534)
  %2537 = bitcast %nyx_string* %2535 to i8*
  call void @nyx_map_insert_str(i8* %2533, i8* %2536, i8* %2537)
  br label %merge470
else469:
  %2538 = load { i64, i8* }*, { i64, i8* }** %2482
  %2539 = load %nyx_string*, %nyx_string** %2513
  %2540 = ptrtoint %nyx_string* %2539 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2538, i64 %2540, i64 2)
  br label %merge470
merge470:
  %2541 = load i64, i64* %2483
  %2542 = add i64 %2541, 1
  store i64 %2542, i64* %2483
  br label %while_cond465
while_end467:
  %2543 = call i8* @nyx_map_new(i32 0)
  %2544 = alloca i8*
  store i8* %2543, i8** %2544
  %2545 = load i64, i64* %2478
  %2546 = icmp sgt i64 %2545, 0
  br i1 %2546, label %then471, label %else472
then471:
  %2547 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2548 = getelementptr [17 x i8], [17 x i8]* @.str258, i32 0, i32 0
  %2549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2548, i64 16)
  %2550 = call %nyx_string* @nyx_string_concat(%nyx_string* %2547, %nyx_string* %2549)
  %2551 = alloca %nyx_string*
  store %nyx_string* %2550, %nyx_string** %2551
  %2552 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2553 = getelementptr [12 x i8], [12 x i8]* @.str259, i32 0, i32 0
  %2554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2553, i64 11)
  %2555 = call %nyx_string* @nyx_string_concat(%nyx_string* %2552, %nyx_string* %2554)
  %2556 = load %nyx_string*, %nyx_string** %2551
  %2557 = call %nyx_string* @nyx_string_concat(%nyx_string* %2555, %nyx_string* %2556)
  %2558 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2558, i64 1)
  %2560 = call %nyx_string* @nyx_string_concat(%nyx_string* %2557, %nyx_string* %2559)
  %2561 = load %nyx_string*, %nyx_string** %2477
  %2562 = call %nyx_string* @nyx_string_concat(%nyx_string* %2560, %nyx_string* %2561)
  %2563 = getelementptr [5 x i8], [5 x i8]* @.str261, i32 0, i32 0
  %2564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2563, i64 4)
  %2565 = call %nyx_string* @nyx_string_concat(%nyx_string* %2562, %nyx_string* %2564)
  %2566 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2567 = call %nyx_string* @nyx_string_concat(%nyx_string* %2565, %nyx_string* %2566)
  %2568 = getelementptr [17 x i8], [17 x i8]* @.str262, i32 0, i32 0
  %2569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2568, i64 16)
  %2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %2567, %nyx_string* %2569)
  %2571 = call i8* @nyx_string_to_cstr(%nyx_string* %2570)
  %2572 = call i64 @nyx_exec_code(i8* %2571)
  %2573 = alloca i64
  store i64 %2572, i64* %2573
  %2574 = load i64, i64* %2573
  %2575 = icmp ne i64 %2574, 0
  br i1 %2575, label %then474, label %else475
then474:
  %2576 = getelementptr [36 x i8], [36 x i8]* @.str263, i32 0, i32 0
  %2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2576, i64 35)
  %2578 = call i8* @nyx_string_to_cstr(%nyx_string* %2577)
  call void @nyx_print_string(i8* %2578)
  %2579 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2580 = getelementptr [11 x i8], [11 x i8]* @.str264, i32 0, i32 0
  %2581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2580, i64 10)
  %2582 = call %nyx_string* @nyx_string_concat(%nyx_string* %2579, %nyx_string* %2581)
  %2583 = call i8* @nyx_string_to_cstr(%nyx_string* %2582)
  %2584 = call %nyx_string* @nyx_read_file(i8* %2583)
  %2585 = call i8* @nyx_string_to_cstr(%nyx_string* %2584)
  call void @nyx_print_string(i8* %2585)
  ret i64 1
else475:
  br label %merge476
merge476:
  %2586 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2587 = getelementptr [33 x i8], [33 x i8]* @.str265, i32 0, i32 0
  %2588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2587, i64 32)
  %2589 = call %nyx_string* @nyx_string_concat(%nyx_string* %2586, %nyx_string* %2588)
  %2590 = load %nyx_string*, %nyx_string** %2551
  %2591 = call %nyx_string* @nyx_string_concat(%nyx_string* %2589, %nyx_string* %2590)
  %2592 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %2593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2592, i64 5)
  %2594 = call %nyx_string* @nyx_string_concat(%nyx_string* %2591, %nyx_string* %2593)
  %2595 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2596 = call %nyx_string* @nyx_string_concat(%nyx_string* %2594, %nyx_string* %2595)
  %2597 = getelementptr [16 x i8], [16 x i8]* @.str267, i32 0, i32 0
  %2598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2597, i64 15)
  %2599 = call %nyx_string* @nyx_string_concat(%nyx_string* %2596, %nyx_string* %2598)
  %2600 = call i8* @nyx_string_to_cstr(%nyx_string* %2599)
  %2601 = call i64 @nyx_exec_code(i8* %2600)
  %2602 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2603 = getelementptr [10 x i8], [10 x i8]* @.str268, i32 0, i32 0
  %2604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2603, i64 9)
  %2605 = call %nyx_string* @nyx_string_concat(%nyx_string* %2602, %nyx_string* %2604)
  %2606 = call i8* @nyx_string_to_cstr(%nyx_string* %2605)
  %2607 = call %nyx_string* @nyx_read_file(i8* %2606)
  %2608 = call i8* @cov_called_from_show(%nyx_string* %2607)
  store i8* %2608, i8** %2544
  br label %merge473
else472:
  br label %merge473
merge473:
  %2609 = call i8* @nyx_map_new(i32 0)
  %2610 = alloca i8*
  store i8* %2609, i8** %2610
  %2611 = call i8* @nyx_map_new(i32 0)
  %2612 = alloca i8*
  store i8* %2611, i8** %2612
  %2613 = call i8* @nyx_map_new(i32 0)
  %2614 = alloca i8*
  store i8* %2613, i8** %2614
  %2615 = call i8* @nyx_map_new(i32 0)
  %2616 = alloca i8*
  store i8* %2615, i8** %2616
  store i64 0, i64* %2483
  %2617 = getelementptr [2 x i8], [2 x i8]* @.str269, i32 0, i32 0
  %2618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2617, i64 1)
  %2619 = alloca %nyx_string*
  store %nyx_string* %2618, %nyx_string** %2619
  %2620 = getelementptr [5 x i8], [5 x i8]* @.str270, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2620, i64 4)
  %2622 = alloca %nyx_string*
  store %nyx_string* %2621, %nyx_string** %2622
  %2623 = getelementptr [2 x i8], [2 x i8]* @.str271, i32 0, i32 0
  %2624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2623, i64 1)
  %2625 = alloca %nyx_string*
  store %nyx_string* %2624, %nyx_string** %2625
  %2626 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %2627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2626, i64 0)
  %2628 = alloca %nyx_string*
  store %nyx_string* %2627, %nyx_string** %2628
  %2629 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2629, i64 1)
  %2631 = alloca %nyx_string*
  store %nyx_string* %2630, %nyx_string** %2631
  %2632 = getelementptr [5 x i8], [5 x i8]* @.str274, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2632, i64 4)
  %2634 = alloca %nyx_string*
  store %nyx_string* %2633, %nyx_string** %2634
  %2635 = call i8* @llvm.stacksave()
  br label %while_cond477
while_cond477:
  %2636 = load i64, i64* %2483
  %2637 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2638 = call i64 @nyx_array_length({ i64, i8* }* %2637)
  %2639 = icmp slt i64 %2636, %2638
  br i1 %2639, label %while_body478, label %while_end479
while_body478:
  call void @llvm.stackrestore(i8* %2635)
  %2640 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2641 = load i64, i64* %2483
  %2642 = call i64 @nyx_array_get_checked({ i64, i8* }* %2640, i64 %2641, i64 2)
  %2643 = inttoptr i64 %2642 to %nyx_string*
  %2644 = alloca %nyx_string*
  store %nyx_string* %2643, %nyx_string** %2644
  %2645 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2646 = load %nyx_string*, %nyx_string** %2619
  %2647 = call %nyx_string* @nyx_string_concat(%nyx_string* %2645, %nyx_string* %2646)
  %2648 = load %nyx_string*, %nyx_string** %2644
  %2649 = call %nyx_string* @nyx_string_concat(%nyx_string* %2647, %nyx_string* %2648)
  %2650 = load %nyx_string*, %nyx_string** %2622
  %2651 = call %nyx_string* @nyx_string_concat(%nyx_string* %2649, %nyx_string* %2650)
  %2652 = alloca %nyx_string*
  store %nyx_string* %2651, %nyx_string** %2652
  %2653 = load %nyx_string*, %nyx_string** %2652
  %2654 = call i8* @nyx_string_to_cstr(%nyx_string* %2653)
  %2655 = call i1 @nyx_file_exists(i8* %2654)
  br i1 %2655, label %then480, label %else481
then480:
  %2656 = load %nyx_string*, %nyx_string** %2652
  %2657 = call i8* @nyx_string_to_cstr(%nyx_string* %2656)
  %2658 = call %nyx_string* @nyx_read_file(i8* %2657)
  %2659 = load %nyx_string*, %nyx_string** %2625
  %2660 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2658, %nyx_string* %2659)
  %2661 = alloca { i64, i8* }*
  store { i64, i8* }* %2660, { i64, i8* }** %2661
  %2662 = alloca i64
  store i64 0, i64* %2662
  %2663 = call i8* @llvm.stacksave()
  br label %while_cond483
while_cond483:
  %2664 = load i64, i64* %2662
  %2665 = load { i64, i8* }*, { i64, i8* }** %2661
  %2666 = call i64 @nyx_array_length({ i64, i8* }* %2665)
  %2667 = icmp slt i64 %2664, %2666
  br i1 %2667, label %while_body484, label %while_end485
while_body484:
  call void @llvm.stackrestore(i8* %2663)
  %2668 = load { i64, i8* }*, { i64, i8* }** %2661
  %2669 = load i64, i64* %2662
  %2670 = call i64 @nyx_array_get_checked({ i64, i8* }* %2668, i64 %2669, i64 2)
  %2671 = inttoptr i64 %2670 to %nyx_string*
  %2672 = alloca %nyx_string*
  store %nyx_string* %2671, %nyx_string** %2672
  %2673 = load %nyx_string*, %nyx_string** %2672
  %2674 = call { i64, i8* }* @cov_fields(%nyx_string* %2673)
  %2675 = alloca { i64, i8* }*
  store { i64, i8* }* %2674, { i64, i8* }** %2675
  %2676 = load { i64, i8* }*, { i64, i8* }** %2675
  %2677 = call i64 @nyx_array_length({ i64, i8* }* %2676)
  %2678 = icmp sge i64 %2677, 5
  br i1 %2678, label %then486, label %else487
then486:
  %2679 = load { i64, i8* }*, { i64, i8* }** %2675
  %2680 = call i64 @nyx_array_get_checked({ i64, i8* }* %2679, i64 0, i64 2)
  %2681 = inttoptr i64 %2680 to %nyx_string*
  %2682 = alloca %nyx_string*
  store %nyx_string* %2681, %nyx_string** %2682
  %2683 = load { i64, i8* }*, { i64, i8* }** %2675
  %2684 = call i64 @nyx_array_get_checked({ i64, i8* }* %2683, i64 1, i64 2)
  %2685 = inttoptr i64 %2684 to %nyx_string*
  %2686 = alloca %nyx_string*
  store %nyx_string* %2685, %nyx_string** %2686
  %2687 = load { i64, i8* }*, { i64, i8* }** %2675
  %2688 = call i64 @nyx_array_get_checked({ i64, i8* }* %2687, i64 3, i64 2)
  %2689 = inttoptr i64 %2688 to %nyx_string*
  %2690 = alloca %nyx_string*
  store %nyx_string* %2689, %nyx_string** %2690
  %2691 = load { i64, i8* }*, { i64, i8* }** %2675
  %2692 = call i64 @nyx_array_get_checked({ i64, i8* }* %2691, i64 4, i64 2)
  %2693 = inttoptr i64 %2692 to %nyx_string*
  %2694 = alloca %nyx_string*
  store %nyx_string* %2693, %nyx_string** %2694
  %2695 = load %nyx_string*, %nyx_string** %2686
  %2696 = load %nyx_string*, %nyx_string** %2628
  %2697 = call i1 @nyx_string_equals(%nyx_string* %2695, %nyx_string* %2696)
  %2698 = xor i1 %2697, true
  br i1 %2698, label %then489, label %else490
then489:
  %2699 = load i8*, i8** %2616
  %2700 = load %nyx_string*, %nyx_string** %2686
  %2701 = load %nyx_string*, %nyx_string** %2631
  %2702 = call i8* @nyx_string_to_cstr(%nyx_string* %2700)
  %2703 = bitcast %nyx_string* %2701 to i8*
  call void @nyx_map_insert_str(i8* %2699, i8* %2702, i8* %2703)
  br label %merge491
else490:
  br label %merge491
merge491:
  %2704 = load i8*, i8** %2480
  %2705 = load %nyx_string*, %nyx_string** %2644
  %2706 = call i8* @nyx_string_to_cstr(%nyx_string* %2705)
  %2707 = call i1 @nyx_map_contains_str(i8* %2704, i8* %2706)
  br i1 %2707, label %then492, label %else493
then492:
  %2708 = load i8*, i8** %2610
  %2709 = load %nyx_string*, %nyx_string** %2682
  %2710 = load %nyx_string*, %nyx_string** %2631
  %2711 = call i8* @nyx_string_to_cstr(%nyx_string* %2709)
  %2712 = bitcast %nyx_string* %2710 to i8*
  call void @nyx_map_insert_str(i8* %2708, i8* %2711, i8* %2712)
  %2713 = alloca i1
  store i1 false, i1* %2713
  %2714 = load %nyx_string*, %nyx_string** %2694
  %2715 = load %nyx_string*, %nyx_string** %2634
  %2716 = call i1 @nyx_string_equals(%nyx_string* %2714, %nyx_string* %2715)
  br i1 %2716, label %sc_and_rhs495, label %sc_and_end496
sc_and_rhs495:
  %2717 = load i8*, i8** %2544
  %2718 = load %nyx_string*, %nyx_string** %2682
  %2719 = call i8* @nyx_string_to_cstr(%nyx_string* %2718)
  %2720 = call i1 @nyx_map_contains_str(i8* %2717, i8* %2719)
  store i1 %2720, i1* %2713
  br label %sc_and_end496
sc_and_end496:
  %2721 = load i1, i1* %2713
  br i1 %2721, label %then497, label %else498
then497:
  %2722 = load i8*, i8** %2614
  %2723 = load %nyx_string*, %nyx_string** %2690
  %2724 = load %nyx_string*, %nyx_string** %2631
  %2725 = call i8* @nyx_string_to_cstr(%nyx_string* %2723)
  %2726 = bitcast %nyx_string* %2724 to i8*
  call void @nyx_map_insert_str(i8* %2722, i8* %2725, i8* %2726)
  br label %merge499
else498:
  br label %merge499
merge499:
  br label %merge494
else493:
  %2727 = load i8*, i8** %2612
  %2728 = load %nyx_string*, %nyx_string** %2682
  %2729 = load %nyx_string*, %nyx_string** %2631
  %2730 = call i8* @nyx_string_to_cstr(%nyx_string* %2728)
  %2731 = bitcast %nyx_string* %2729 to i8*
  call void @nyx_map_insert_str(i8* %2727, i8* %2730, i8* %2731)
  br label %merge494
merge494:
  br label %merge488
else487:
  br label %merge488
merge488:
  %2732 = load i64, i64* %2662
  %2733 = add i64 %2732, 1
  store i64 %2733, i64* %2662
  br label %while_cond483
while_end485:
  br label %merge482
else481:
  br label %merge482
merge482:
  %2734 = load i64, i64* %2483
  %2735 = add i64 %2734, 1
  store i64 %2735, i64* %2483
  br label %while_cond477
while_end479:
  %2736 = call { i64, i8* }* @cov_src_modules()
  %2737 = alloca { i64, i8* }*
  store { i64, i8* }* %2736, { i64, i8* }** %2737
  %2738 = load { i64, i8* }*, { i64, i8* }** %2737
  %2739 = call i64 @nyx_array_length({ i64, i8* }* %2738)
  %2740 = icmp eq i64 %2739, 0
  br i1 %2740, label %then500, label %else501
then500:
  %2741 = getelementptr [27 x i8], [27 x i8]* @.str275, i32 0, i32 0
  %2742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2741, i64 26)
  %2743 = call i8* @nyx_string_to_cstr(%nyx_string* %2742)
  call void @nyx_print_string(i8* %2743)
  ret i64 0
else501:
  br label %merge502
merge502:
  %2744 = load %nyx_string*, %nyx_string** %2463
  %2745 = load %nyx_string*, %nyx_string** %2468
  %2746 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2747 = load { i64, i8* }*, { i64, i8* }** %2737
  %2748 = call %nyx_string* @cov_universe(%nyx_string* %2744, %nyx_string* %2745, %nyx_string* %2746, { i64, i8* }* %2747)
  %2749 = alloca %nyx_string*
  store %nyx_string* %2748, %nyx_string** %2749
  %2750 = load %nyx_string*, %nyx_string** %2749
  %2751 = call i8* @nyx_string_to_cstr(%nyx_string* %2750)
  %2752 = call i1 @nyx_file_exists(i8* %2751)
  %2753 = xor i1 %2752, true
  br i1 %2753, label %then503, label %else504
then503:
  %2754 = getelementptr [68 x i8], [68 x i8]* @.str276, i32 0, i32 0
  %2755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2754, i64 67)
  %2756 = call i8* @nyx_string_to_cstr(%nyx_string* %2755)
  call void @nyx_print_string(i8* %2756)
  %2757 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2758 = getelementptr [14 x i8], [14 x i8]* @.str277, i32 0, i32 0
  %2759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2758, i64 13)
  %2760 = call %nyx_string* @nyx_string_concat(%nyx_string* %2757, %nyx_string* %2759)
  %2761 = call i8* @nyx_string_to_cstr(%nyx_string* %2760)
  %2762 = call i1 @nyx_file_exists(i8* %2761)
  br i1 %2762, label %then506, label %else507
then506:
  %2763 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2764 = getelementptr [14 x i8], [14 x i8]* @.str278, i32 0, i32 0
  %2765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2764, i64 13)
  %2766 = call %nyx_string* @nyx_string_concat(%nyx_string* %2763, %nyx_string* %2765)
  %2767 = call i8* @nyx_string_to_cstr(%nyx_string* %2766)
  %2768 = call %nyx_string* @nyx_read_file(i8* %2767)
  %2769 = call i8* @nyx_string_to_cstr(%nyx_string* %2768)
  call void @nyx_print_string(i8* %2769)
  br label %merge508
else507:
  br label %merge508
merge508:
  ret i64 1
else504:
  br label %merge505
merge505:
  %2770 = load %nyx_string*, %nyx_string** %2749
  %2771 = call i8* @nyx_string_to_cstr(%nyx_string* %2770)
  %2772 = call %nyx_string* @nyx_read_file(i8* %2771)
  %2773 = getelementptr [2 x i8], [2 x i8]* @.str279, i32 0, i32 0
  %2774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2773, i64 1)
  %2775 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2772, %nyx_string* %2774)
  %2776 = alloca { i64, i8* }*
  store { i64, i8* }* %2775, { i64, i8* }** %2776
  %2777 = call { i64, i8* }* @nyx_array_new_ptr()
  %2778 = alloca { i64, i8* }*
  store { i64, i8* }* %2777, { i64, i8* }** %2778
  %2779 = alloca i64
  store i64 0, i64* %2779
  %2780 = getelementptr [3 x i8], [3 x i8]* @.str280, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2780, i64 2)
  %2782 = alloca %nyx_string*
  store %nyx_string* %2781, %nyx_string** %2782
  %2783 = getelementptr [7 x i8], [7 x i8]* @.str281, i32 0, i32 0
  %2784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2783, i64 6)
  %2785 = alloca %nyx_string*
  store %nyx_string* %2784, %nyx_string** %2785
  %2786 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %2787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2786, i64 5)
  %2788 = alloca %nyx_string*
  store %nyx_string* %2787, %nyx_string** %2788
  %2789 = getelementptr [9 x i8], [9 x i8]* @.str283, i32 0, i32 0
  %2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2789, i64 8)
  %2791 = alloca %nyx_string*
  store %nyx_string* %2790, %nyx_string** %2791
  %2792 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2792, i64 4)
  %2794 = alloca %nyx_string*
  store %nyx_string* %2793, %nyx_string** %2794
  %2795 = getelementptr [5 x i8], [5 x i8]* @.str285, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2795, i64 4)
  %2797 = alloca %nyx_string*
  store %nyx_string* %2796, %nyx_string** %2797
  %2798 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2798, i64 2)
  %2800 = alloca %nyx_string*
  store %nyx_string* %2799, %nyx_string** %2800
  %2801 = getelementptr [3 x i8], [3 x i8]* @.str287, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2801, i64 2)
  %2803 = alloca %nyx_string*
  store %nyx_string* %2802, %nyx_string** %2803
  %2804 = getelementptr [10 x i8], [10 x i8]* @.str288, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2804, i64 9)
  %2806 = alloca %nyx_string*
  store %nyx_string* %2805, %nyx_string** %2806
  %2807 = getelementptr [5 x i8], [5 x i8]* @.str289, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2807, i64 4)
  %2809 = alloca %nyx_string*
  store %nyx_string* %2808, %nyx_string** %2809
  %2810 = getelementptr [2 x i8], [2 x i8]* @.str290, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2810, i64 1)
  %2812 = alloca %nyx_string*
  store %nyx_string* %2811, %nyx_string** %2812
  %2813 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2814 = load i64, i64* %2779
  %2815 = load { i64, i8* }*, { i64, i8* }** %2776
  %2816 = call i64 @nyx_array_length({ i64, i8* }* %2815)
  %2817 = icmp slt i64 %2814, %2816
  br i1 %2817, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2813)
  %2818 = load { i64, i8* }*, { i64, i8* }** %2776
  %2819 = load i64, i64* %2779
  %2820 = call i64 @nyx_array_get_checked({ i64, i8* }* %2818, i64 %2819, i64 2)
  %2821 = inttoptr i64 %2820 to %nyx_string*
  %2822 = alloca %nyx_string*
  store %nyx_string* %2821, %nyx_string** %2822
  %2823 = load %nyx_string*, %nyx_string** %2822
  %2824 = call { i64, i8* }* @cov_fields(%nyx_string* %2823)
  %2825 = alloca { i64, i8* }*
  store { i64, i8* }* %2824, { i64, i8* }** %2825
  %2826 = load { i64, i8* }*, { i64, i8* }** %2825
  %2827 = call i64 @nyx_array_length({ i64, i8* }* %2826)
  %2828 = icmp sge i64 %2827, 5
  br i1 %2828, label %then512, label %else513
then512:
  %2829 = load { i64, i8* }*, { i64, i8* }** %2825
  %2830 = call i64 @nyx_array_get_checked({ i64, i8* }* %2829, i64 0, i64 2)
  %2831 = inttoptr i64 %2830 to %nyx_string*
  %2832 = alloca %nyx_string*
  store %nyx_string* %2831, %nyx_string** %2832
  %2833 = load { i64, i8* }*, { i64, i8* }** %2825
  %2834 = call i64 @nyx_array_get_checked({ i64, i8* }* %2833, i64 1, i64 2)
  %2835 = inttoptr i64 %2834 to %nyx_string*
  %2836 = alloca %nyx_string*
  store %nyx_string* %2835, %nyx_string** %2836
  %2837 = load { i64, i8* }*, { i64, i8* }** %2825
  %2838 = call i64 @nyx_array_get_checked({ i64, i8* }* %2837, i64 2, i64 2)
  %2839 = inttoptr i64 %2838 to %nyx_string*
  %2840 = alloca %nyx_string*
  store %nyx_string* %2839, %nyx_string** %2840
  %2841 = load { i64, i8* }*, { i64, i8* }** %2825
  %2842 = call i64 @nyx_array_get_checked({ i64, i8* }* %2841, i64 3, i64 2)
  %2843 = inttoptr i64 %2842 to %nyx_string*
  %2844 = alloca %nyx_string*
  store %nyx_string* %2843, %nyx_string** %2844
  %2845 = load { i64, i8* }*, { i64, i8* }** %2825
  %2846 = call i64 @nyx_array_get_checked({ i64, i8* }* %2845, i64 4, i64 2)
  %2847 = inttoptr i64 %2846 to %nyx_string*
  %2848 = alloca %nyx_string*
  store %nyx_string* %2847, %nyx_string** %2848
  %2849 = alloca i1
  store i1 true, i1* %2849
  %2850 = alloca i1
  store i1 true, i1* %2850
  %2851 = alloca i1
  store i1 true, i1* %2851
  %2852 = load %nyx_string*, %nyx_string** %2848
  %2853 = load %nyx_string*, %nyx_string** %2782
  %2854 = call i1 @nyx_string_equals(%nyx_string* %2852, %nyx_string* %2853)
  br i1 %2854, label %sc_or_end516, label %sc_or_rhs515
sc_or_rhs515:
  %2855 = load %nyx_string*, %nyx_string** %2848
  %2856 = load %nyx_string*, %nyx_string** %2785
  %2857 = call i1 @nyx_string_equals(%nyx_string* %2855, %nyx_string* %2856)
  store i1 %2857, i1* %2851
  br label %sc_or_end516
sc_or_end516:
  %2858 = load i1, i1* %2851
  br i1 %2858, label %sc_or_end518, label %sc_or_rhs517
sc_or_rhs517:
  %2859 = load %nyx_string*, %nyx_string** %2848
  %2860 = load %nyx_string*, %nyx_string** %2788
  %2861 = call i1 @nyx_string_equals(%nyx_string* %2859, %nyx_string* %2860)
  store i1 %2861, i1* %2850
  br label %sc_or_end518
sc_or_end518:
  %2862 = load i1, i1* %2850
  br i1 %2862, label %sc_or_end520, label %sc_or_rhs519
sc_or_rhs519:
  %2863 = load %nyx_string*, %nyx_string** %2848
  %2864 = load %nyx_string*, %nyx_string** %2791
  %2865 = call i1 @nyx_string_equals(%nyx_string* %2863, %nyx_string* %2864)
  store i1 %2865, i1* %2849
  br label %sc_or_end520
sc_or_end520:
  %2866 = load i1, i1* %2849
  %2867 = alloca i1
  store i1 %2866, i1* %2867
  %2868 = alloca i1
  store i1 false, i1* %2868
  %2869 = alloca i1
  store i1 false, i1* %2869
  %2870 = load i1, i1* %2867
  br i1 %2870, label %sc_and_rhs521, label %sc_and_end522
sc_and_rhs521:
  %2871 = load %nyx_string*, %nyx_string** %2836
  %2872 = load %nyx_string*, %nyx_string** %2794
  %2873 = call i1 @nyx_string_starts_with(%nyx_string* %2871, %nyx_string* %2872)
  store i1 %2873, i1* %2869
  br label %sc_and_end522
sc_and_end522:
  %2874 = load i1, i1* %2869
  br i1 %2874, label %sc_and_rhs523, label %sc_and_end524
sc_and_rhs523:
  %2875 = load %nyx_string*, %nyx_string** %2844
  %2876 = load %nyx_string*, %nyx_string** %2797
  %2877 = call i1 @nyx_string_equals(%nyx_string* %2875, %nyx_string* %2876)
  %2878 = xor i1 %2877, true
  store i1 %2878, i1* %2868
  br label %sc_and_end524
sc_and_end524:
  %2879 = load i1, i1* %2868
  br i1 %2879, label %then525, label %else526
then525:
  %2880 = load i8*, i8** %2544
  %2881 = load %nyx_string*, %nyx_string** %2832
  %2882 = call i8* @nyx_string_to_cstr(%nyx_string* %2881)
  %2883 = call i1 @nyx_map_contains_str(i8* %2880, i8* %2882)
  %2884 = alloca i1
  store i1 %2883, i1* %2884
  %2885 = load %nyx_string*, %nyx_string** %2848
  %2886 = load %nyx_string*, %nyx_string** %2791
  %2887 = call i1 @nyx_string_equals(%nyx_string* %2885, %nyx_string* %2886)
  br i1 %2887, label %then528, label %else529
then528:
  %2888 = load i8*, i8** %2614
  %2889 = load %nyx_string*, %nyx_string** %2832
  %2890 = call i8* @nyx_string_to_cstr(%nyx_string* %2889)
  %2891 = call i1 @nyx_map_contains_str(i8* %2888, i8* %2890)
  store i1 %2891, i1* %2884
  br label %merge530
else529:
  br label %merge530
merge530:
  %2892 = load %nyx_string*, %nyx_string** %2800
  %2893 = alloca %nyx_string*
  store %nyx_string* %2892, %nyx_string** %2893
  %2894 = load i1, i1* %2884
  br i1 %2894, label %then531, label %else532
then531:
  %2895 = load %nyx_string*, %nyx_string** %2803
  store %nyx_string* %2895, %nyx_string** %2893
  br label %merge533
else532:
  %2896 = alloca i1
  store i1 false, i1* %2896
  %2897 = load i8*, i8** %2610
  %2898 = load %nyx_string*, %nyx_string** %2832
  %2899 = call i8* @nyx_string_to_cstr(%nyx_string* %2898)
  %2900 = call i1 @nyx_map_contains_str(i8* %2897, i8* %2899)
  %2901 = xor i1 %2900, true
  br i1 %2901, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %2902 = load i8*, i8** %2612
  %2903 = load %nyx_string*, %nyx_string** %2832
  %2904 = call i8* @nyx_string_to_cstr(%nyx_string* %2903)
  %2905 = call i1 @nyx_map_contains_str(i8* %2902, i8* %2904)
  store i1 %2905, i1* %2896
  br label %sc_and_end535
sc_and_end535:
  %2906 = load i1, i1* %2896
  br i1 %2906, label %then536, label %else537
then536:
  %2907 = load %nyx_string*, %nyx_string** %2806
  store %nyx_string* %2907, %nyx_string** %2893
  br label %merge538
else537:
  br label %merge538
merge538:
  br label %merge533
merge533:
  %2908 = load { i64, i8* }*, { i64, i8* }** %2778
  %2909 = load %nyx_string*, %nyx_string** %2836
  %2910 = load %nyx_string*, %nyx_string** %2809
  %2911 = call %nyx_string* @nyx_string_concat(%nyx_string* %2909, %nyx_string* %2910)
  %2912 = load %nyx_string*, %nyx_string** %2840
  %2913 = call i64 @nyx_string_to_int(%nyx_string* %2912)
  %2914 = call %nyx_string* @cov_pad(i64 %2913)
  %2915 = call %nyx_string* @nyx_string_concat(%nyx_string* %2911, %nyx_string* %2914)
  %2916 = load %nyx_string*, %nyx_string** %2812
  %2917 = call %nyx_string* @nyx_string_concat(%nyx_string* %2915, %nyx_string* %2916)
  %2918 = load %nyx_string*, %nyx_string** %2844
  %2919 = call %nyx_string* @nyx_string_concat(%nyx_string* %2917, %nyx_string* %2918)
  %2920 = load %nyx_string*, %nyx_string** %2812
  %2921 = call %nyx_string* @nyx_string_concat(%nyx_string* %2919, %nyx_string* %2920)
  %2922 = load %nyx_string*, %nyx_string** %2893
  %2923 = call %nyx_string* @nyx_string_concat(%nyx_string* %2921, %nyx_string* %2922)
  %2924 = load %nyx_string*, %nyx_string** %2812
  %2925 = call %nyx_string* @nyx_string_concat(%nyx_string* %2923, %nyx_string* %2924)
  %2926 = load %nyx_string*, %nyx_string** %2836
  %2927 = call %nyx_string* @nyx_string_concat(%nyx_string* %2925, %nyx_string* %2926)
  %2928 = ptrtoint %nyx_string* %2927 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2908, i64 %2928, i64 2)
  br label %merge527
else526:
  br label %merge527
merge527:
  br label %merge514
else513:
  br label %merge514
merge514:
  %2929 = load i64, i64* %2779
  %2930 = add i64 %2929, 1
  store i64 %2930, i64* %2779
  br label %while_cond509
while_end511:
  %2931 = load { i64, i8* }*, { i64, i8* }** %2778
  %2932 = call { i64, i8* }* @sort_str({ i64, i8* }* %2931)
  %2933 = alloca { i64, i8* }*
  store { i64, i8* }* %2932, { i64, i8* }** %2933
  %2934 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %2935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2934, i64 0)
  %2936 = alloca %nyx_string*
  store %nyx_string* %2935, %nyx_string** %2936
  %2937 = alloca i64
  store i64 0, i64* %2937
  %2938 = alloca i64
  store i64 0, i64* %2938
  %2939 = alloca i64
  store i64 0, i64* %2939
  %2940 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %2941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2940, i64 0)
  %2942 = alloca %nyx_string*
  store %nyx_string* %2941, %nyx_string** %2942
  %2943 = getelementptr [10 x i8], [10 x i8]* @.str293, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2943, i64 9)
  %2945 = alloca %nyx_string*
  store %nyx_string* %2944, %nyx_string** %2945
  %2946 = getelementptr [2 x i8], [2 x i8]* @.str294, i32 0, i32 0
  %2947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2946, i64 1)
  %2948 = alloca %nyx_string*
  store %nyx_string* %2947, %nyx_string** %2948
  %2949 = getelementptr [3 x i8], [3 x i8]* @.str295, i32 0, i32 0
  %2950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2949, i64 2)
  %2951 = alloca %nyx_string*
  store %nyx_string* %2950, %nyx_string** %2951
  %2952 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %2953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2952, i64 1)
  %2954 = alloca %nyx_string*
  store %nyx_string* %2953, %nyx_string** %2954
  %2955 = getelementptr [5 x i8], [5 x i8]* @.str297, i32 0, i32 0
  %2956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2955, i64 4)
  %2957 = alloca %nyx_string*
  store %nyx_string* %2956, %nyx_string** %2957
  %2958 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %2959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2958, i64 1)
  %2960 = alloca %nyx_string*
  store %nyx_string* %2959, %nyx_string** %2960
  %2961 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %2962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2961, i64 1)
  %2963 = alloca %nyx_string*
  store %nyx_string* %2962, %nyx_string** %2963
  %2964 = getelementptr [4 x i8], [4 x i8]* @.str300, i32 0, i32 0
  %2965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2964, i64 3)
  %2966 = alloca %nyx_string*
  store %nyx_string* %2965, %nyx_string** %2966
  %2967 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2967, i64 1)
  %2969 = alloca %nyx_string*
  store %nyx_string* %2968, %nyx_string** %2969
  %2970 = getelementptr [2 x i8], [2 x i8]* @.str302, i32 0, i32 0
  %2971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2970, i64 1)
  %2972 = alloca %nyx_string*
  store %nyx_string* %2971, %nyx_string** %2972
  %2973 = getelementptr [6 x i8], [6 x i8]* @.str303, i32 0, i32 0
  %2974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2973, i64 5)
  %2975 = alloca %nyx_string*
  store %nyx_string* %2974, %nyx_string** %2975
  %2976 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %2977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2976, i64 2)
  %2978 = alloca %nyx_string*
  store %nyx_string* %2977, %nyx_string** %2978
  %2979 = getelementptr [3 x i8], [3 x i8]* @.str305, i32 0, i32 0
  %2980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2979, i64 2)
  %2981 = alloca %nyx_string*
  store %nyx_string* %2980, %nyx_string** %2981
  %2982 = getelementptr [2 x i8], [2 x i8]* @.str306, i32 0, i32 0
  %2983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2982, i64 1)
  %2984 = alloca %nyx_string*
  store %nyx_string* %2983, %nyx_string** %2984
  %2985 = getelementptr [10 x i8], [10 x i8]* @.str307, i32 0, i32 0
  %2986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2985, i64 9)
  %2987 = alloca %nyx_string*
  store %nyx_string* %2986, %nyx_string** %2987
  %2988 = getelementptr [29 x i8], [29 x i8]* @.str308, i32 0, i32 0
  %2989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2988, i64 28)
  %2990 = alloca %nyx_string*
  store %nyx_string* %2989, %nyx_string** %2990
  %2991 = getelementptr [3 x i8], [3 x i8]* @.str309, i32 0, i32 0
  %2992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2991, i64 2)
  %2993 = alloca %nyx_string*
  store %nyx_string* %2992, %nyx_string** %2993
  %2994 = getelementptr [38 x i8], [38 x i8]* @.str310, i32 0, i32 0
  %2995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2994, i64 37)
  %2996 = alloca %nyx_string*
  store %nyx_string* %2995, %nyx_string** %2996
  %2997 = getelementptr [4 x i8], [4 x i8]* @.str311, i32 0, i32 0
  %2998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2997, i64 3)
  %2999 = alloca %nyx_string*
  store %nyx_string* %2998, %nyx_string** %2999
  %3000 = getelementptr [5 x i8], [5 x i8]* @.str312, i32 0, i32 0
  %3001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3000, i64 4)
  %3002 = alloca %nyx_string*
  store %nyx_string* %3001, %nyx_string** %3002
  %3003 = getelementptr [6 x i8], [6 x i8]* @.str313, i32 0, i32 0
  %3004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3003, i64 5)
  %3005 = alloca %nyx_string*
  store %nyx_string* %3004, %nyx_string** %3005
  %3006 = getelementptr [16 x i8], [16 x i8]* @.str314, i32 0, i32 0
  %3007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3006, i64 15)
  %3008 = alloca %nyx_string*
  store %nyx_string* %3007, %nyx_string** %3008
  %3009 = call i8* @llvm.stacksave()
  br label %while_cond539
while_cond539:
  %3010 = load i64, i64* %2939
  %3011 = load { i64, i8* }*, { i64, i8* }** %2933
  %3012 = call i64 @nyx_array_length({ i64, i8* }* %3011)
  %3013 = icmp slt i64 %3010, %3012
  br i1 %3013, label %while_body540, label %while_end541
while_body540:
  call void @llvm.stackrestore(i8* %3009)
  %3014 = load { i64, i8* }*, { i64, i8* }** %2933
  %3015 = load i64, i64* %2939
  %3016 = call i64 @nyx_array_get_checked({ i64, i8* }* %3014, i64 %3015, i64 2)
  %3017 = inttoptr i64 %3016 to %nyx_string*
  %3018 = alloca %nyx_string*
  store %nyx_string* %3017, %nyx_string** %3018
  %3019 = load %nyx_string*, %nyx_string** %3018
  %3020 = call { i64, i8* }* @cov_fields(%nyx_string* %3019)
  %3021 = alloca { i64, i8* }*
  store { i64, i8* }* %3020, { i64, i8* }** %3021
  %3022 = load { i64, i8* }*, { i64, i8* }** %3021
  %3023 = call i64 @nyx_array_get_checked({ i64, i8* }* %3022, i64 0, i64 2)
  %3024 = inttoptr i64 %3023 to %nyx_string*
  %3025 = alloca %nyx_string*
  store %nyx_string* %3024, %nyx_string** %3025
  %3026 = load { i64, i8* }*, { i64, i8* }** %3021
  %3027 = call i64 @nyx_array_get_checked({ i64, i8* }* %3026, i64 4, i64 2)
  %3028 = inttoptr i64 %3027 to %nyx_string*
  %3029 = alloca %nyx_string*
  store %nyx_string* %3028, %nyx_string** %3029
  %3030 = alloca i64
  store i64 0, i64* %3030
  %3031 = alloca i64
  store i64 0, i64* %3031
  %3032 = alloca i64
  store i64 0, i64* %3032
  %3033 = call { i64, i8* }* @nyx_array_new_ptr()
  %3034 = alloca { i64, i8* }*
  store { i64, i8* }* %3033, { i64, i8* }** %3034
  %3035 = load %nyx_string*, %nyx_string** %2942
  %3036 = alloca %nyx_string*
  store %nyx_string* %3035, %nyx_string** %3036
  %3037 = load %nyx_string*, %nyx_string** %2942
  %3038 = alloca %nyx_string*
  store %nyx_string* %3037, %nyx_string** %3038
  %3039 = load i64, i64* %2939
  %3040 = alloca i64
  store i64 %3039, i64* %3040
  %3041 = alloca i1
  store i1 1, i1* %3041
  %3042 = call i8* @llvm.stacksave()
  br label %while_cond542
while_cond542:
  %3043 = alloca i1
  store i1 false, i1* %3043
  %3044 = load i64, i64* %3040
  %3045 = load { i64, i8* }*, { i64, i8* }** %2933
  %3046 = call i64 @nyx_array_length({ i64, i8* }* %3045)
  %3047 = icmp slt i64 %3044, %3046
  br i1 %3047, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %3048 = load i1, i1* %3041
  store i1 %3048, i1* %3043
  br label %sc_and_end546
sc_and_end546:
  %3049 = load i1, i1* %3043
  br i1 %3049, label %while_body543, label %while_end544
while_body543:
  call void @llvm.stackrestore(i8* %3042)
  %3050 = load { i64, i8* }*, { i64, i8* }** %2933
  %3051 = load i64, i64* %3040
  %3052 = call i64 @nyx_array_get_checked({ i64, i8* }* %3050, i64 %3051, i64 2)
  %3053 = inttoptr i64 %3052 to %nyx_string*
  %3054 = alloca %nyx_string*
  store %nyx_string* %3053, %nyx_string** %3054
  %3055 = load %nyx_string*, %nyx_string** %3054
  %3056 = call { i64, i8* }* @cov_fields(%nyx_string* %3055)
  %3057 = alloca { i64, i8* }*
  store { i64, i8* }* %3056, { i64, i8* }** %3057
  %3058 = load { i64, i8* }*, { i64, i8* }** %3057
  %3059 = call i64 @nyx_array_get_checked({ i64, i8* }* %3058, i64 0, i64 2)
  %3060 = inttoptr i64 %3059 to %nyx_string*
  %3061 = alloca %nyx_string*
  store %nyx_string* %3060, %nyx_string** %3061
  %3062 = load %nyx_string*, %nyx_string** %3061
  %3063 = load %nyx_string*, %nyx_string** %3025
  %3064 = call i1 @nyx_string_equals(%nyx_string* %3062, %nyx_string* %3063)
  %3065 = xor i1 %3064, true
  br i1 %3065, label %then547, label %else548
then547:
  store i1 0, i1* %3041
  br label %merge549
else548:
  %3066 = load { i64, i8* }*, { i64, i8* }** %3057
  %3067 = call i64 @nyx_array_get({ i64, i8* }* %3066, i64 1)
  %3068 = inttoptr i64 %3067 to %nyx_string*
  %3069 = call i64 @nyx_string_to_int(%nyx_string* %3068)
  %3070 = alloca i64
  store i64 %3069, i64* %3070
  %3071 = load { i64, i8* }*, { i64, i8* }** %3057
  %3072 = call i64 @nyx_array_get_checked({ i64, i8* }* %3071, i64 2, i64 2)
  %3073 = inttoptr i64 %3072 to %nyx_string*
  %3074 = alloca %nyx_string*
  store %nyx_string* %3073, %nyx_string** %3074
  %3075 = load { i64, i8* }*, { i64, i8* }** %3057
  %3076 = call i64 @nyx_array_get_checked({ i64, i8* }* %3075, i64 3, i64 2)
  %3077 = inttoptr i64 %3076 to %nyx_string*
  %3078 = alloca %nyx_string*
  store %nyx_string* %3077, %nyx_string** %3078
  %3079 = load %nyx_string*, %nyx_string** %3078
  %3080 = load %nyx_string*, %nyx_string** %2945
  %3081 = call i1 @nyx_string_equals(%nyx_string* %3079, %nyx_string* %3080)
  br i1 %3081, label %then550, label %else551
then550:
  %3082 = load i64, i64* %3032
  %3083 = add i64 %3082, 1
  store i64 %3083, i64* %3032
  br label %merge552
else551:
  %3084 = load i64, i64* %3031
  %3085 = add i64 %3084, 1
  store i64 %3085, i64* %3031
  %3086 = load %nyx_string*, %nyx_string** %2948
  %3087 = alloca %nyx_string*
  store %nyx_string* %3086, %nyx_string** %3087
  %3088 = load %nyx_string*, %nyx_string** %3078
  %3089 = load %nyx_string*, %nyx_string** %2951
  %3090 = call i1 @nyx_string_equals(%nyx_string* %3088, %nyx_string* %3089)
  br i1 %3090, label %then553, label %else554
then553:
  %3091 = load i64, i64* %3030
  %3092 = add i64 %3091, 1
  store i64 %3092, i64* %3030
  %3093 = load %nyx_string*, %nyx_string** %2954
  store %nyx_string* %3093, %nyx_string** %3087
  br label %merge555
else554:
  %3094 = load { i64, i8* }*, { i64, i8* }** %3034
  %3095 = load %nyx_string*, %nyx_string** %2957
  %3096 = load %nyx_string*, %nyx_string** %3025
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3095, %nyx_string* %3096)
  %3098 = load %nyx_string*, %nyx_string** %2960
  %3099 = call %nyx_string* @nyx_string_concat(%nyx_string* %3097, %nyx_string* %3098)
  %3100 = load i64, i64* %3070
  %3101 = call %nyx_string* @nyx_string_from_int(i64 %3100)
  %3102 = call %nyx_string* @nyx_string_concat(%nyx_string* %3099, %nyx_string* %3101)
  %3103 = load %nyx_string*, %nyx_string** %2963
  %3104 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3103)
  %3105 = load %nyx_string*, %nyx_string** %3074
  %3106 = call %nyx_string* @nyx_string_concat(%nyx_string* %3104, %nyx_string* %3105)
  %3107 = ptrtoint %nyx_string* %3106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3094, i64 %3107, i64 2)
  br label %merge555
merge555:
  %3108 = load %nyx_string*, %nyx_string** %3036
  %3109 = load %nyx_string*, %nyx_string** %2966
  %3110 = call %nyx_string* @nyx_string_concat(%nyx_string* %3108, %nyx_string* %3109)
  %3111 = load i64, i64* %3070
  %3112 = call %nyx_string* @nyx_string_from_int(i64 %3111)
  %3113 = call %nyx_string* @nyx_string_concat(%nyx_string* %3110, %nyx_string* %3112)
  %3114 = load %nyx_string*, %nyx_string** %2969
  %3115 = call %nyx_string* @nyx_string_concat(%nyx_string* %3113, %nyx_string* %3114)
  %3116 = load %nyx_string*, %nyx_string** %3074
  %3117 = call %nyx_string* @nyx_string_concat(%nyx_string* %3115, %nyx_string* %3116)
  %3118 = load %nyx_string*, %nyx_string** %2972
  %3119 = call %nyx_string* @nyx_string_concat(%nyx_string* %3117, %nyx_string* %3118)
  store %nyx_string* %3119, %nyx_string** %3036
  %3120 = load %nyx_string*, %nyx_string** %3038
  %3121 = load %nyx_string*, %nyx_string** %2975
  %3122 = call %nyx_string* @nyx_string_concat(%nyx_string* %3120, %nyx_string* %3121)
  %3123 = load %nyx_string*, %nyx_string** %3087
  %3124 = call %nyx_string* @nyx_string_concat(%nyx_string* %3122, %nyx_string* %3123)
  %3125 = load %nyx_string*, %nyx_string** %2969
  %3126 = call %nyx_string* @nyx_string_concat(%nyx_string* %3124, %nyx_string* %3125)
  %3127 = load %nyx_string*, %nyx_string** %3074
  %3128 = call %nyx_string* @nyx_string_concat(%nyx_string* %3126, %nyx_string* %3127)
  %3129 = load %nyx_string*, %nyx_string** %2972
  %3130 = call %nyx_string* @nyx_string_concat(%nyx_string* %3128, %nyx_string* %3129)
  store %nyx_string* %3130, %nyx_string** %3038
  br label %merge552
merge552:
  %3131 = load i64, i64* %3040
  %3132 = add i64 %3131, 1
  store i64 %3132, i64* %3040
  br label %merge549
merge549:
  br label %while_cond542
while_end544:
  %3133 = load %nyx_string*, %nyx_string** %2978
  %3134 = load %nyx_string*, %nyx_string** %3025
  %3135 = call %nyx_string* @nyx_string_concat(%nyx_string* %3133, %nyx_string* %3134)
  %3136 = load %nyx_string*, %nyx_string** %2981
  %3137 = call %nyx_string* @nyx_string_concat(%nyx_string* %3135, %nyx_string* %3136)
  %3138 = load i64, i64* %3030
  %3139 = call %nyx_string* @nyx_string_from_int(i64 %3138)
  %3140 = call %nyx_string* @nyx_string_concat(%nyx_string* %3137, %nyx_string* %3139)
  %3141 = load %nyx_string*, %nyx_string** %2984
  %3142 = call %nyx_string* @nyx_string_concat(%nyx_string* %3140, %nyx_string* %3141)
  %3143 = load i64, i64* %3031
  %3144 = call %nyx_string* @nyx_string_from_int(i64 %3143)
  %3145 = call %nyx_string* @nyx_string_concat(%nyx_string* %3142, %nyx_string* %3144)
  %3146 = load %nyx_string*, %nyx_string** %2987
  %3147 = call %nyx_string* @nyx_string_concat(%nyx_string* %3145, %nyx_string* %3146)
  %3148 = alloca %nyx_string*
  store %nyx_string* %3147, %nyx_string** %3148
  %3149 = load i8*, i8** %2616
  %3150 = load %nyx_string*, %nyx_string** %3029
  %3151 = call i8* @nyx_string_to_cstr(%nyx_string* %3150)
  %3152 = call i1 @nyx_map_contains_str(i8* %3149, i8* %3151)
  %3153 = xor i1 %3152, true
  br i1 %3153, label %then556, label %else557
then556:
  %3154 = load %nyx_string*, %nyx_string** %3148
  %3155 = load %nyx_string*, %nyx_string** %2990
  %3156 = call %nyx_string* @nyx_string_concat(%nyx_string* %3154, %nyx_string* %3155)
  store %nyx_string* %3156, %nyx_string** %3148
  br label %merge558
else557:
  br label %merge558
merge558:
  %3157 = load i64, i64* %3032
  %3158 = icmp sgt i64 %3157, 0
  br i1 %3158, label %then559, label %else560
then559:
  %3159 = load %nyx_string*, %nyx_string** %3148
  %3160 = load %nyx_string*, %nyx_string** %2993
  %3161 = call %nyx_string* @nyx_string_concat(%nyx_string* %3159, %nyx_string* %3160)
  %3162 = load i64, i64* %3032
  %3163 = call %nyx_string* @nyx_string_from_int(i64 %3162)
  %3164 = call %nyx_string* @nyx_string_concat(%nyx_string* %3161, %nyx_string* %3163)
  %3165 = load %nyx_string*, %nyx_string** %2996
  %3166 = call %nyx_string* @nyx_string_concat(%nyx_string* %3164, %nyx_string* %3165)
  store %nyx_string* %3166, %nyx_string** %3148
  br label %merge561
else560:
  br label %merge561
merge561:
  %3167 = load %nyx_string*, %nyx_string** %3148
  %3168 = call i8* @nyx_string_to_cstr(%nyx_string* %3167)
  call void @nyx_print_string(i8* %3168)
  %3169 = alloca i64
  store i64 0, i64* %3169
  %3170 = call i8* @llvm.stacksave()
  br label %while_cond562
while_cond562:
  %3171 = load i64, i64* %3169
  %3172 = load { i64, i8* }*, { i64, i8* }** %3034
  %3173 = call i64 @nyx_array_length({ i64, i8* }* %3172)
  %3174 = icmp slt i64 %3171, %3173
  br i1 %3174, label %while_body563, label %while_end564
while_body563:
  call void @llvm.stackrestore(i8* %3170)
  %3175 = load { i64, i8* }*, { i64, i8* }** %3034
  %3176 = load i64, i64* %3169
  %3177 = call i64 @nyx_array_get_checked({ i64, i8* }* %3175, i64 %3176, i64 2)
  %3178 = inttoptr i64 %3177 to %nyx_string*
  %3179 = alloca %nyx_string*
  store %nyx_string* %3178, %nyx_string** %3179
  %3180 = load %nyx_string*, %nyx_string** %3179
  %3181 = call i8* @nyx_string_to_cstr(%nyx_string* %3180)
  call void @nyx_print_string(i8* %3181)
  %3182 = load i64, i64* %3169
  %3183 = add i64 %3182, 1
  store i64 %3183, i64* %3169
  br label %while_cond562
while_end564:
  %3184 = load i64, i64* %2937
  %3185 = load i64, i64* %3030
  %3186 = add i64 %3184, %3185
  store i64 %3186, i64* %2937
  %3187 = load i64, i64* %2938
  %3188 = load i64, i64* %3031
  %3189 = add i64 %3187, %3188
  store i64 %3189, i64* %2938
  %3190 = load %nyx_string*, %nyx_string** %2936
  %3191 = load %nyx_string*, %nyx_string** %2999
  %3192 = call %nyx_string* @nyx_string_concat(%nyx_string* %3190, %nyx_string* %3191)
  %3193 = load %nyx_string*, %nyx_string** %3025
  %3194 = call %nyx_string* @nyx_string_concat(%nyx_string* %3192, %nyx_string* %3193)
  %3195 = load %nyx_string*, %nyx_string** %2972
  %3196 = call %nyx_string* @nyx_string_concat(%nyx_string* %3194, %nyx_string* %3195)
  %3197 = load %nyx_string*, %nyx_string** %3036
  %3198 = call %nyx_string* @nyx_string_concat(%nyx_string* %3196, %nyx_string* %3197)
  %3199 = load %nyx_string*, %nyx_string** %3038
  %3200 = call %nyx_string* @nyx_string_concat(%nyx_string* %3198, %nyx_string* %3199)
  %3201 = load %nyx_string*, %nyx_string** %3002
  %3202 = call %nyx_string* @nyx_string_concat(%nyx_string* %3200, %nyx_string* %3201)
  %3203 = load i64, i64* %3031
  %3204 = call %nyx_string* @nyx_string_from_int(i64 %3203)
  %3205 = call %nyx_string* @nyx_string_concat(%nyx_string* %3202, %nyx_string* %3204)
  %3206 = load %nyx_string*, %nyx_string** %3005
  %3207 = call %nyx_string* @nyx_string_concat(%nyx_string* %3205, %nyx_string* %3206)
  %3208 = load i64, i64* %3030
  %3209 = call %nyx_string* @nyx_string_from_int(i64 %3208)
  %3210 = call %nyx_string* @nyx_string_concat(%nyx_string* %3207, %nyx_string* %3209)
  %3211 = load %nyx_string*, %nyx_string** %3008
  %3212 = call %nyx_string* @nyx_string_concat(%nyx_string* %3210, %nyx_string* %3211)
  store %nyx_string* %3212, %nyx_string** %2936
  %3213 = load i64, i64* %3040
  store i64 %3213, i64* %2939
  br label %while_cond539
while_end541:
  %3214 = load { i64, i8* }*, { i64, i8* }** %2482
  %3215 = call i64 @nyx_array_length({ i64, i8* }* %3214)
  %3216 = icmp sgt i64 %3215, 0
  br i1 %3216, label %then565, label %else566
then565:
  %3217 = getelementptr [70 x i8], [70 x i8]* @.str315, i32 0, i32 0
  %3218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3217, i64 69)
  %3219 = call i8* @nyx_string_to_cstr(%nyx_string* %3218)
  call void @nyx_print_string(i8* %3219)
  %3220 = alloca i64
  store i64 0, i64* %3220
  %3221 = getelementptr [5 x i8], [5 x i8]* @.str316, i32 0, i32 0
  %3222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3221, i64 4)
  %3223 = alloca %nyx_string*
  store %nyx_string* %3222, %nyx_string** %3223
  %3224 = call i8* @llvm.stacksave()
  br label %while_cond568
while_cond568:
  %3225 = load i64, i64* %3220
  %3226 = load { i64, i8* }*, { i64, i8* }** %2482
  %3227 = call i64 @nyx_array_length({ i64, i8* }* %3226)
  %3228 = icmp slt i64 %3225, %3227
  br i1 %3228, label %while_body569, label %while_end570
while_body569:
  call void @llvm.stackrestore(i8* %3224)
  %3229 = load { i64, i8* }*, { i64, i8* }** %2482
  %3230 = load i64, i64* %3220
  %3231 = call i64 @nyx_array_get_checked({ i64, i8* }* %3229, i64 %3230, i64 2)
  %3232 = inttoptr i64 %3231 to %nyx_string*
  %3233 = alloca %nyx_string*
  store %nyx_string* %3232, %nyx_string** %3233
  %3234 = load %nyx_string*, %nyx_string** %3223
  %3235 = load %nyx_string*, %nyx_string** %3233
  %3236 = call %nyx_string* @nyx_string_concat(%nyx_string* %3234, %nyx_string* %3235)
  %3237 = call i8* @nyx_string_to_cstr(%nyx_string* %3236)
  call void @nyx_print_string(i8* %3237)
  %3238 = load i64, i64* %3220
  %3239 = add i64 %3238, 1
  store i64 %3239, i64* %3220
  br label %while_cond568
while_end570:
  br label %merge567
else566:
  br label %merge567
merge567:
  %3240 = getelementptr [10 x i8], [10 x i8]* @.str317, i32 0, i32 0
  %3241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3240, i64 9)
  %3242 = load i64, i64* %2937
  %3243 = call %nyx_string* @nyx_string_from_int(i64 %3242)
  %3244 = call %nyx_string* @nyx_string_concat(%nyx_string* %3241, %nyx_string* %3243)
  %3245 = getelementptr [2 x i8], [2 x i8]* @.str318, i32 0, i32 0
  %3246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3245, i64 1)
  %3247 = call %nyx_string* @nyx_string_concat(%nyx_string* %3244, %nyx_string* %3246)
  %3248 = load i64, i64* %2938
  %3249 = call %nyx_string* @nyx_string_from_int(i64 %3248)
  %3250 = call %nyx_string* @nyx_string_concat(%nyx_string* %3247, %nyx_string* %3249)
  %3251 = getelementptr [20 x i8], [20 x i8]* @.str319, i32 0, i32 0
  %3252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3251, i64 19)
  %3253 = call %nyx_string* @nyx_string_concat(%nyx_string* %3250, %nyx_string* %3252)
  %3254 = call i8* @nyx_string_to_cstr(%nyx_string* %3253)
  call void @nyx_print_string(i8* %3254)
  %3255 = load i1, i1* %want_lcov.ptr
  br i1 %3255, label %then571, label %else572
then571:
  %3256 = getelementptr [11 x i8], [11 x i8]* @.str320, i32 0, i32 0
  %3257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3256, i64 10)
  %3258 = load %nyx_string*, %nyx_string** %2468
  %3259 = call %nyx_string* @nyx_string_concat(%nyx_string* %3257, %nyx_string* %3258)
  %3260 = getelementptr [9 x i8], [9 x i8]* @.str321, i32 0, i32 0
  %3261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3260, i64 8)
  %3262 = call %nyx_string* @nyx_string_concat(%nyx_string* %3259, %nyx_string* %3261)
  %3263 = call i8* @nyx_string_to_cstr(%nyx_string* %3262)
  %3264 = call i64 @nyx_exec_code(i8* %3263)
  %3265 = load %nyx_string*, %nyx_string** %2468
  %3266 = getelementptr [22 x i8], [22 x i8]* @.str322, i32 0, i32 0
  %3267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3266, i64 21)
  %3268 = call %nyx_string* @nyx_string_concat(%nyx_string* %3265, %nyx_string* %3267)
  %3269 = load %nyx_string*, %nyx_string** %2936
  %3270 = ptrtoint %nyx_string* %3269 to i64
  %3271 = call i8* @nyx_string_to_cstr(%nyx_string* %3268)
  %3272 = inttoptr i64 %3270 to %nyx_string*
  %3273 = call i1 @nyx_write_file_safe(i8* %3271, %nyx_string* %3272)
  %3274 = getelementptr [29 x i8], [29 x i8]* @.str323, i32 0, i32 0
  %3275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3274, i64 28)
  %3276 = call i8* @nyx_string_to_cstr(%nyx_string* %3275)
  call void @nyx_print_string(i8* %3276)
  br label %merge573
else572:
  br label %merge573
merge573:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3277 = getelementptr [115 x i8], [115 x i8]* @.str324, i32 0, i32 0
  %3278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3277, i64 114)
  %3279 = call i8* @nyx_string_to_cstr(%nyx_string* %3278)
  call void @nyx_print_string(i8* %3279)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3280 = getelementptr [5 x i8], [5 x i8]* @.str325, i32 0, i32 0
  %3281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3280, i64 4)
  %3282 = load %nyx_string*, %nyx_string** %nh.ptr
  %3283 = call %nyx_string* @nyx_string_concat(%nyx_string* %3281, %nyx_string* %3282)
  %3284 = getelementptr [66 x i8], [66 x i8]* @.str326, i32 0, i32 0
  %3285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3284, i64 65)
  %3286 = call %nyx_string* @nyx_string_concat(%nyx_string* %3283, %nyx_string* %3285)
  %3287 = call i8* @nyx_string_to_cstr(%nyx_string* %3286)
  %3288 = call %nyx_string* @nyx_exec(i8* %3287)
  %3289 = call %nyx_string* @nyx_string_trim(%nyx_string* %3288)
  ret %nyx_string* %3289
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3290 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %3291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3290, i64 4)
  %3292 = load %nyx_string*, %nyx_string** %nh.ptr
  %3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %3291, %nyx_string* %3292)
  %3294 = getelementptr [74 x i8], [74 x i8]* @.str328, i32 0, i32 0
  %3295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3294, i64 73)
  %3296 = call %nyx_string* @nyx_string_concat(%nyx_string* %3293, %nyx_string* %3295)
  %3297 = call i8* @nyx_string_to_cstr(%nyx_string* %3296)
  %3298 = call %nyx_string* @nyx_exec(i8* %3297)
  %3299 = call %nyx_string* @nyx_string_trim(%nyx_string* %3298)
  ret %nyx_string* %3299
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3300 = getelementptr [24 x i8], [24 x i8]* @.str329, i32 0, i32 0
  %3301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3300, i64 23)
  %3302 = call i8* @nyx_string_to_cstr(%nyx_string* %3301)
  call void @nyx_print_string(i8* %3302)
  %3303 = getelementptr [9 x i8], [9 x i8]* @.str330, i32 0, i32 0
  %3304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3303, i64 8)
  %3305 = call i8* @nyx_string_to_cstr(%nyx_string* %3304)
  %3306 = call %nyx_string* @nyx_getenv(i8* %3305)
  %3307 = alloca %nyx_string*
  store %nyx_string* %3306, %nyx_string** %3307
  %3308 = load %nyx_string*, %nyx_string** %3307
  %3309 = getelementptr [9 x i8], [9 x i8]* @.str331, i32 0, i32 0
  %3310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3309, i64 8)
  %3311 = call %nyx_string* @nyx_string_concat(%nyx_string* %3308, %nyx_string* %3310)
  %3312 = call i8* @nyx_string_to_cstr(%nyx_string* %3311)
  %3313 = call %nyx_string* @nyx_read_file(i8* %3312)
  %3314 = call %nyx_string* @nyx_string_trim(%nyx_string* %3313)
  %3315 = alloca %nyx_string*
  store %nyx_string* %3314, %nyx_string** %3315
  %3316 = load %nyx_string*, %nyx_string** %3307
  %3317 = call %nyx_string* @huella_compilador(%nyx_string* %3316)
  %3318 = alloca %nyx_string*
  store %nyx_string* %3317, %nyx_string** %3318
  %3319 = load %nyx_string*, %nyx_string** %3307
  %3320 = call %nyx_string* @huella_resto(%nyx_string* %3319)
  %3321 = alloca %nyx_string*
  store %nyx_string* %3320, %nyx_string** %3321
  %3322 = getelementptr [18 x i8], [18 x i8]* @.str332, i32 0, i32 0
  %3323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3322, i64 17)
  %3324 = load %nyx_string*, %nyx_string** %3315
  %3325 = call %nyx_string* @nyx_string_concat(%nyx_string* %3323, %nyx_string* %3324)
  %3326 = getelementptr [17 x i8], [17 x i8]* @.str333, i32 0, i32 0
  %3327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3326, i64 16)
  %3328 = call %nyx_string* @nyx_string_concat(%nyx_string* %3325, %nyx_string* %3327)
  %3329 = load %nyx_string*, %nyx_string** %3318
  %3330 = call %nyx_string* @nyx_string_concat(%nyx_string* %3328, %nyx_string* %3329)
  %3331 = getelementptr [2 x i8], [2 x i8]* @.str334, i32 0, i32 0
  %3332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3331, i64 1)
  %3333 = call %nyx_string* @nyx_string_concat(%nyx_string* %3330, %nyx_string* %3332)
  %3334 = call i8* @nyx_string_to_cstr(%nyx_string* %3333)
  call void @nyx_print_string(i8* %3334)
  %3335 = call %TestConfig @load_test_config()
  %3336 = alloca %TestConfig
  store %TestConfig %3335, %TestConfig* %3336
  %3337 = call { i64, i8* }* @nyx_get_args()
  %3338 = alloca { i64, i8* }*
  store { i64, i8* }* %3337, { i64, i8* }** %3338
  %3339 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %3340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3339, i64 0)
  %3341 = alloca %nyx_string*
  store %nyx_string* %3340, %nyx_string** %3341
  %3342 = alloca i64
  store i64 1, i64* %3342
  %3343 = getelementptr [9 x i8], [9 x i8]* @.str336, i32 0, i32 0
  %3344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3343, i64 8)
  %3345 = alloca %nyx_string*
  store %nyx_string* %3344, %nyx_string** %3345
  %3346 = getelementptr [10 x i8], [10 x i8]* @.str337, i32 0, i32 0
  %3347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3346, i64 9)
  %3348 = alloca %nyx_string*
  store %nyx_string* %3347, %nyx_string** %3348
  %3349 = getelementptr [3 x i8], [3 x i8]* @.str338, i32 0, i32 0
  %3350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3349, i64 2)
  %3351 = alloca %nyx_string*
  store %nyx_string* %3350, %nyx_string** %3351
  %3352 = getelementptr [10 x i8], [10 x i8]* @.str339, i32 0, i32 0
  %3353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3352, i64 9)
  %3354 = alloca %nyx_string*
  store %nyx_string* %3353, %nyx_string** %3354
  %3355 = getelementptr [10 x i8], [10 x i8]* @.str340, i32 0, i32 0
  %3356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3355, i64 9)
  %3357 = alloca %nyx_string*
  store %nyx_string* %3356, %nyx_string** %3357
  %3358 = getelementptr [11 x i8], [11 x i8]* @.str341, i32 0, i32 0
  %3359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3358, i64 10)
  %3360 = alloca %nyx_string*
  store %nyx_string* %3359, %nyx_string** %3360
  %3361 = getelementptr [16 x i8], [16 x i8]* @.str342, i32 0, i32 0
  %3362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3361, i64 15)
  %3363 = alloca %nyx_string*
  store %nyx_string* %3362, %nyx_string** %3363
  %3364 = getelementptr [8 x i8], [8 x i8]* @.str343, i32 0, i32 0
  %3365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3364, i64 7)
  %3366 = alloca %nyx_string*
  store %nyx_string* %3365, %nyx_string** %3366
  %3367 = getelementptr [12 x i8], [12 x i8]* @.str344, i32 0, i32 0
  %3368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3367, i64 11)
  %3369 = alloca %nyx_string*
  store %nyx_string* %3368, %nyx_string** %3369
  %3370 = getelementptr [24 x i8], [24 x i8]* @.str345, i32 0, i32 0
  %3371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3370, i64 23)
  %3372 = alloca %nyx_string*
  store %nyx_string* %3371, %nyx_string** %3372
  %3373 = getelementptr [106 x i8], [106 x i8]* @.str346, i32 0, i32 0
  %3374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3373, i64 105)
  %3375 = alloca %nyx_string*
  store %nyx_string* %3374, %nyx_string** %3375
  %3376 = getelementptr [9 x i8], [9 x i8]* @.str347, i32 0, i32 0
  %3377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3376, i64 8)
  %3378 = alloca %nyx_string*
  store %nyx_string* %3377, %nyx_string** %3378
  %3379 = getelementptr [10 x i8], [10 x i8]* @.str348, i32 0, i32 0
  %3380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3379, i64 9)
  %3381 = alloca %nyx_string*
  store %nyx_string* %3380, %nyx_string** %3381
  %3382 = getelementptr [2 x i8], [2 x i8]* @.str349, i32 0, i32 0
  %3383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3382, i64 1)
  %3384 = alloca %nyx_string*
  store %nyx_string* %3383, %nyx_string** %3384
  %3385 = getelementptr [4 x i8], [4 x i8]* @.str350, i32 0, i32 0
  %3386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3385, i64 3)
  %3387 = alloca %nyx_string*
  store %nyx_string* %3386, %nyx_string** %3387
  %3388 = getelementptr [2 x i8], [2 x i8]* @.str351, i32 0, i32 0
  %3389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3388, i64 1)
  %3390 = alloca %nyx_string*
  store %nyx_string* %3389, %nyx_string** %3390
  %3391 = call i8* @llvm.stacksave()
  br label %while_cond574
while_cond574:
  %3392 = load i64, i64* %3342
  %3393 = load { i64, i8* }*, { i64, i8* }** %3338
  %3394 = call i64 @nyx_array_length({ i64, i8* }* %3393)
  %3395 = icmp slt i64 %3392, %3394
  br i1 %3395, label %while_body575, label %while_end576
while_body575:
  call void @llvm.stackrestore(i8* %3391)
  %3396 = load { i64, i8* }*, { i64, i8* }** %3338
  %3397 = load i64, i64* %3342
  %3398 = call i64 @nyx_array_get_checked({ i64, i8* }* %3396, i64 %3397, i64 2)
  %3399 = inttoptr i64 %3398 to %nyx_string*
  %3400 = alloca %nyx_string*
  store %nyx_string* %3399, %nyx_string** %3400
  %3401 = alloca i1
  store i1 false, i1* %3401
  %3402 = load %nyx_string*, %nyx_string** %3400
  %3403 = load %nyx_string*, %nyx_string** %3345
  %3404 = call i1 @nyx_string_equals(%nyx_string* %3402, %nyx_string* %3403)
  br i1 %3404, label %sc_and_rhs577, label %sc_and_end578
sc_and_rhs577:
  %3405 = load i64, i64* %3342
  %3406 = add i64 %3405, 1
  %3407 = load { i64, i8* }*, { i64, i8* }** %3338
  %3408 = call i64 @nyx_array_length({ i64, i8* }* %3407)
  %3409 = icmp slt i64 %3406, %3408
  store i1 %3409, i1* %3401
  br label %sc_and_end578
sc_and_end578:
  %3410 = load i1, i1* %3401
  br i1 %3410, label %then579, label %else580
then579:
  %3411 = load i64, i64* %3342
  %3412 = add i64 %3411, 1
  store i64 %3412, i64* %3342
  %3413 = load { i64, i8* }*, { i64, i8* }** %3338
  %3414 = load i64, i64* %3342
  %3415 = call i64 @nyx_array_get_checked({ i64, i8* }* %3413, i64 %3414, i64 2)
  %3416 = inttoptr i64 %3415 to %nyx_string*
  %3417 = alloca %nyx_string*
  store %nyx_string* %3416, %nyx_string** %3417
  %3418 = load %nyx_string*, %nyx_string** %3417
  %3419 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 2
  store %nyx_string* %3418, %nyx_string** %3419
  br label %merge581
else580:
  %3420 = alloca i1
  store i1 true, i1* %3420
  %3421 = load %nyx_string*, %nyx_string** %3400
  %3422 = load %nyx_string*, %nyx_string** %3348
  %3423 = call i1 @nyx_string_equals(%nyx_string* %3421, %nyx_string* %3422)
  br i1 %3423, label %sc_or_end583, label %sc_or_rhs582
sc_or_rhs582:
  %3424 = load %nyx_string*, %nyx_string** %3400
  %3425 = load %nyx_string*, %nyx_string** %3351
  %3426 = call i1 @nyx_string_equals(%nyx_string* %3424, %nyx_string* %3425)
  store i1 %3426, i1* %3420
  br label %sc_or_end583
sc_or_end583:
  %3427 = load i1, i1* %3420
  br i1 %3427, label %then584, label %else585
then584:
  %3428 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 3
  store i1 1, i1* %3428
  br label %merge586
else585:
  %3429 = alloca i1
  store i1 false, i1* %3429
  %3430 = load %nyx_string*, %nyx_string** %3400
  %3431 = load %nyx_string*, %nyx_string** %3354
  %3432 = call i1 @nyx_string_equals(%nyx_string* %3430, %nyx_string* %3431)
  br i1 %3432, label %sc_and_rhs587, label %sc_and_end588
sc_and_rhs587:
  %3433 = load i64, i64* %3342
  %3434 = add i64 %3433, 1
  %3435 = load { i64, i8* }*, { i64, i8* }** %3338
  %3436 = call i64 @nyx_array_length({ i64, i8* }* %3435)
  %3437 = icmp slt i64 %3434, %3436
  store i1 %3437, i1* %3429
  br label %sc_and_end588
sc_and_end588:
  %3438 = load i1, i1* %3429
  br i1 %3438, label %then589, label %else590
then589:
  %3439 = load i64, i64* %3342
  %3440 = add i64 %3439, 1
  store i64 %3440, i64* %3342
  %3441 = load { i64, i8* }*, { i64, i8* }** %3338
  %3442 = load i64, i64* %3342
  %3443 = call i64 @nyx_array_get_checked({ i64, i8* }* %3441, i64 %3442, i64 2)
  %3444 = inttoptr i64 %3443 to %nyx_string*
  %3445 = alloca %nyx_string*
  store %nyx_string* %3444, %nyx_string** %3445
  %3446 = load %nyx_string*, %nyx_string** %3445
  %3447 = call i64 @nyx_string_to_int(%nyx_string* %3446)
  %3448 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 1
  store i64 %3447, i64* %3448
  br label %merge591
else590:
  %3449 = load %nyx_string*, %nyx_string** %3400
  %3450 = load %nyx_string*, %nyx_string** %3357
  %3451 = call i1 @nyx_string_equals(%nyx_string* %3449, %nyx_string* %3450)
  br i1 %3451, label %then592, label %else593
then592:
  %3452 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 7
  store i1 1, i1* %3452
  br label %merge594
else593:
  %3453 = load %nyx_string*, %nyx_string** %3400
  %3454 = load %nyx_string*, %nyx_string** %3360
  %3455 = call i1 @nyx_string_equals(%nyx_string* %3453, %nyx_string* %3454)
  br i1 %3455, label %then595, label %else596
then595:
  %3456 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 5
  store i1 1, i1* %3456
  br label %merge597
else596:
  %3457 = load %nyx_string*, %nyx_string** %3400
  %3458 = load %nyx_string*, %nyx_string** %3363
  %3459 = call i1 @nyx_string_equals(%nyx_string* %3457, %nyx_string* %3458)
  br i1 %3459, label %then598, label %else599
then598:
  %3460 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 5
  store i1 1, i1* %3460
  %3461 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 6
  store i1 1, i1* %3461
  br label %merge600
else599:
  %3462 = alloca i1
  store i1 true, i1* %3462
  %3463 = load %nyx_string*, %nyx_string** %3400
  %3464 = load %nyx_string*, %nyx_string** %3366
  %3465 = call i1 @nyx_string_equals(%nyx_string* %3463, %nyx_string* %3464)
  br i1 %3465, label %sc_or_end602, label %sc_or_rhs601
sc_or_rhs601:
  %3466 = load %nyx_string*, %nyx_string** %3400
  %3467 = load %nyx_string*, %nyx_string** %3369
  %3468 = call i1 @nyx_string_starts_with(%nyx_string* %3466, %nyx_string* %3467)
  store i1 %3468, i1* %3462
  br label %sc_or_end602
sc_or_end602:
  %3469 = load i1, i1* %3462
  br i1 %3469, label %then603, label %else604
then603:
  %3470 = load %nyx_string*, %nyx_string** %3372
  %3471 = load %nyx_string*, %nyx_string** %3400
  %3472 = call %nyx_string* @nyx_string_concat(%nyx_string* %3470, %nyx_string* %3471)
  %3473 = call i8* @nyx_string_to_cstr(%nyx_string* %3472)
  call void @nyx_print_string(i8* %3473)
  %3474 = load %nyx_string*, %nyx_string** %3375
  %3475 = call i8* @nyx_string_to_cstr(%nyx_string* %3474)
  call void @nyx_print_string(i8* %3475)
  %3476 = call i64 @print_valid_options()
  ret i64 1
else604:
  %3477 = alloca i1
  store i1 true, i1* %3477
  %3478 = load %nyx_string*, %nyx_string** %3400
  %3479 = load %nyx_string*, %nyx_string** %3378
  %3480 = call i1 @nyx_string_equals(%nyx_string* %3478, %nyx_string* %3479)
  br i1 %3480, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3481 = load %nyx_string*, %nyx_string** %3400
  %3482 = load %nyx_string*, %nyx_string** %3381
  %3483 = call i1 @nyx_string_starts_with(%nyx_string* %3481, %nyx_string* %3482)
  store i1 %3483, i1* %3477
  br label %sc_or_end607
sc_or_end607:
  %3484 = load i1, i1* %3477
  br i1 %3484, label %then608, label %else609
then608:
  %3485 = load %nyx_string*, %nyx_string** %3400
  store %nyx_string* %3485, %nyx_string** %3341
  %3486 = alloca i1
  store i1 false, i1* %3486
  %3487 = load %nyx_string*, %nyx_string** %3400
  %3488 = load %nyx_string*, %nyx_string** %3378
  %3489 = call i1 @nyx_string_equals(%nyx_string* %3487, %nyx_string* %3488)
  br i1 %3489, label %sc_and_rhs611, label %sc_and_end612
sc_and_rhs611:
  %3490 = load i64, i64* %3342
  %3491 = add i64 %3490, 1
  %3492 = load { i64, i8* }*, { i64, i8* }** %3338
  %3493 = call i64 @nyx_array_length({ i64, i8* }* %3492)
  %3494 = icmp slt i64 %3491, %3493
  store i1 %3494, i1* %3486
  br label %sc_and_end612
sc_and_end612:
  %3495 = load i1, i1* %3486
  br i1 %3495, label %then613, label %else614
then613:
  %3496 = load i64, i64* %3342
  %3497 = add i64 %3496, 1
  store i64 %3497, i64* %3342
  %3498 = load { i64, i8* }*, { i64, i8* }** %3338
  %3499 = load i64, i64* %3342
  %3500 = call i64 @nyx_array_get_checked({ i64, i8* }* %3498, i64 %3499, i64 2)
  %3501 = inttoptr i64 %3500 to %nyx_string*
  %3502 = alloca %nyx_string*
  store %nyx_string* %3501, %nyx_string** %3502
  %3503 = load %nyx_string*, %nyx_string** %3400
  %3504 = load %nyx_string*, %nyx_string** %3384
  %3505 = call %nyx_string* @nyx_string_concat(%nyx_string* %3503, %nyx_string* %3504)
  %3506 = load %nyx_string*, %nyx_string** %3502
  %3507 = call %nyx_string* @nyx_string_concat(%nyx_string* %3505, %nyx_string* %3506)
  store %nyx_string* %3507, %nyx_string** %3341
  br label %merge615
else614:
  br label %merge615
merge615:
  br label %merge610
else609:
  %3508 = alloca i1
  store i1 true, i1* %3508
  %3509 = load %nyx_string*, %nyx_string** %3400
  %3510 = load %nyx_string*, %nyx_string** %3345
  %3511 = call i1 @nyx_string_equals(%nyx_string* %3509, %nyx_string* %3510)
  br i1 %3511, label %sc_or_end617, label %sc_or_rhs616
sc_or_rhs616:
  %3512 = load %nyx_string*, %nyx_string** %3400
  %3513 = load %nyx_string*, %nyx_string** %3354
  %3514 = call i1 @nyx_string_equals(%nyx_string* %3512, %nyx_string* %3513)
  store i1 %3514, i1* %3508
  br label %sc_or_end617
sc_or_end617:
  %3515 = load i1, i1* %3508
  br i1 %3515, label %then618, label %else619
then618:
  br label %merge620
else619:
  %3516 = load %nyx_string*, %nyx_string** %3400
  %3517 = load %nyx_string*, %nyx_string** %3387
  %3518 = call i1 @nyx_string_ends_with(%nyx_string* %3516, %nyx_string* %3517)
  br i1 %3518, label %then621, label %else622
then621:
  %3519 = load %nyx_string*, %nyx_string** %3400
  %3520 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 4
  store %nyx_string* %3519, %nyx_string** %3520
  br label %merge623
else622:
  %3521 = load %nyx_string*, %nyx_string** %3400
  %3522 = load %nyx_string*, %nyx_string** %3390
  %3523 = call i1 @nyx_string_starts_with(%nyx_string* %3521, %nyx_string* %3522)
  br i1 %3523, label %then624, label %else625
then624:
  %3524 = load %nyx_string*, %nyx_string** %3372
  %3525 = load %nyx_string*, %nyx_string** %3400
  %3526 = call %nyx_string* @nyx_string_concat(%nyx_string* %3524, %nyx_string* %3525)
  %3527 = call i8* @nyx_string_to_cstr(%nyx_string* %3526)
  call void @nyx_print_string(i8* %3527)
  %3528 = call i64 @print_valid_options()
  ret i64 1
else625:
  br label %merge626
merge626:
  br label %merge623
merge623:
  br label %merge620
merge620:
  br label %merge610
merge610:
  br label %merge605
merge605:
  br label %merge600
merge600:
  br label %merge597
merge597:
  br label %merge594
merge594:
  br label %merge591
merge591:
  br label %merge586
merge586:
  br label %merge581
merge581:
  %3529 = load i64, i64* %3342
  %3530 = add i64 %3529, 1
  store i64 %3530, i64* %3342
  br label %while_cond574
while_end576:
  %3531 = load %nyx_string*, %nyx_string** %3341
  %3532 = getelementptr [1 x i8], [1 x i8]* @.str352, i32 0, i32 0
  %3533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3532, i64 0)
  %3534 = call i1 @nyx_string_equals(%nyx_string* %3531, %nyx_string* %3533)
  %3535 = xor i1 %3534, true
  br i1 %3535, label %then627, label %else628
then627:
  %3536 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 5
  %3537 = load i1, i1* %3536
  br i1 %3537, label %then630, label %else631
then630:
  %3538 = getelementptr [47 x i8], [47 x i8]* @.str353, i32 0, i32 0
  %3539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3538, i64 46)
  %3540 = load %nyx_string*, %nyx_string** %3341
  %3541 = call %nyx_string* @nyx_string_concat(%nyx_string* %3539, %nyx_string* %3540)
  %3542 = getelementptr [58 x i8], [58 x i8]* @.str354, i32 0, i32 0
  %3543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3542, i64 57)
  %3544 = call %nyx_string* @nyx_string_concat(%nyx_string* %3541, %nyx_string* %3543)
  %3545 = call i8* @nyx_string_to_cstr(%nyx_string* %3544)
  call void @nyx_print_string(i8* %3545)
  br label %merge632
else631:
  %3546 = getelementptr [24 x i8], [24 x i8]* @.str355, i32 0, i32 0
  %3547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3546, i64 23)
  %3548 = load %nyx_string*, %nyx_string** %3341
  %3549 = call %nyx_string* @nyx_string_concat(%nyx_string* %3547, %nyx_string* %3548)
  %3550 = call i8* @nyx_string_to_cstr(%nyx_string* %3549)
  call void @nyx_print_string(i8* %3550)
  br label %merge632
merge632:
  %3551 = call i64 @print_valid_options()
  ret i64 1
else628:
  br label %merge629
merge629:
  %3552 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %3553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3552, i64 0)
  %3554 = alloca %nyx_string*
  store %nyx_string* %3553, %nyx_string** %3554
  %3555 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %3556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3555, i64 0)
  %3557 = alloca %nyx_string*
  store %nyx_string* %3556, %nyx_string** %3557
  %3558 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 5
  %3559 = load i1, i1* %3558
  br i1 %3559, label %then633, label %else634
then633:
  %3560 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3560, %nyx_string** %3554
  %3561 = load %nyx_string*, %nyx_string** %3554
  %3562 = getelementptr [1 x i8], [1 x i8]* @.str358, i32 0, i32 0
  %3563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3562, i64 0)
  %3564 = call i1 @nyx_string_equals(%nyx_string* %3561, %nyx_string* %3563)
  br i1 %3564, label %then636, label %else637
then636:
  %3565 = call %nyx_string* @cov_clang_major()
  %3566 = alloca %nyx_string*
  store %nyx_string* %3565, %nyx_string** %3566
  %3567 = getelementptr [5 x i8], [5 x i8]* @.str359, i32 0, i32 0
  %3568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3567, i64 4)
  %3569 = alloca %nyx_string*
  store %nyx_string* %3568, %nyx_string** %3569
  %3570 = load %nyx_string*, %nyx_string** %3566
  %3571 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %3572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3571, i64 0)
  %3573 = call i1 @nyx_string_equals(%nyx_string* %3570, %nyx_string* %3572)
  %3574 = xor i1 %3573, true
  br i1 %3574, label %then639, label %else640
then639:
  %3575 = getelementptr [6 x i8], [6 x i8]* @.str361, i32 0, i32 0
  %3576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3575, i64 5)
  %3577 = load %nyx_string*, %nyx_string** %3566
  %3578 = call %nyx_string* @nyx_string_concat(%nyx_string* %3576, %nyx_string* %3577)
  store %nyx_string* %3578, %nyx_string** %3569
  br label %merge641
else640:
  br label %merge641
merge641:
  %3579 = getelementptr [101 x i8], [101 x i8]* @.str362, i32 0, i32 0
  %3580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3579, i64 100)
  %3581 = call i8* @nyx_string_to_cstr(%nyx_string* %3580)
  call void @nyx_print_string(i8* %3581)
  %3582 = getelementptr [35 x i8], [35 x i8]* @.str363, i32 0, i32 0
  %3583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3582, i64 34)
  %3584 = load %nyx_string*, %nyx_string** %3569
  %3585 = call %nyx_string* @nyx_string_concat(%nyx_string* %3583, %nyx_string* %3584)
  %3586 = call i8* @nyx_string_to_cstr(%nyx_string* %3585)
  call void @nyx_print_string(i8* %3586)
  %3587 = getelementptr [82 x i8], [82 x i8]* @.str364, i32 0, i32 0
  %3588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3587, i64 81)
  %3589 = call i8* @nyx_string_to_cstr(%nyx_string* %3588)
  call void @nyx_print_string(i8* %3589)
  %3590 = getelementptr [82 x i8], [82 x i8]* @.str365, i32 0, i32 0
  %3591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3590, i64 81)
  %3592 = call i8* @nyx_string_to_cstr(%nyx_string* %3591)
  call void @nyx_print_string(i8* %3592)
  ret i64 1
else637:
  br label %merge638
merge638:
  %3593 = getelementptr [30 x i8], [30 x i8]* @.str366, i32 0, i32 0
  %3594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3593, i64 29)
  %3595 = call i8* @nyx_string_to_cstr(%nyx_string* %3594)
  %3596 = call %nyx_string* @nyx_exec(i8* %3595)
  %3597 = call %nyx_string* @nyx_string_trim(%nyx_string* %3596)
  store %nyx_string* %3597, %nyx_string** %3557
  %3598 = load %nyx_string*, %nyx_string** %3557
  %3599 = getelementptr [1 x i8], [1 x i8]* @.str367, i32 0, i32 0
  %3600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3599, i64 0)
  %3601 = call i1 @nyx_string_equals(%nyx_string* %3598, %nyx_string* %3600)
  br i1 %3601, label %then642, label %else643
then642:
  %3602 = getelementptr [55 x i8], [55 x i8]* @.str368, i32 0, i32 0
  %3603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3602, i64 54)
  %3604 = call i8* @nyx_string_to_cstr(%nyx_string* %3603)
  call void @nyx_print_string(i8* %3604)
  ret i64 1
else643:
  br label %merge644
merge644:
  br label %merge635
else634:
  br label %merge635
merge635:
  %3605 = call { i64, i8* }* @nyx_array_new_ptr()
  %3606 = alloca { i64, i8* }*
  store { i64, i8* }* %3605, { i64, i8* }** %3606
  %3607 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 4
  %3608 = load %nyx_string*, %nyx_string** %3607
  %3609 = getelementptr [1 x i8], [1 x i8]* @.str369, i32 0, i32 0
  %3610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3609, i64 0)
  %3611 = call i1 @nyx_string_equals(%nyx_string* %3608, %nyx_string* %3610)
  %3612 = xor i1 %3611, true
  br i1 %3612, label %then645, label %else646
then645:
  %3613 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 4
  %3614 = load %nyx_string*, %nyx_string** %3613
  %3615 = call i8* @nyx_string_to_cstr(%nyx_string* %3614)
  %3616 = call i1 @nyx_file_exists(i8* %3615)
  %3617 = xor i1 %3616, true
  br i1 %3617, label %then648, label %else649
then648:
  %3618 = getelementptr [24 x i8], [24 x i8]* @.str370, i32 0, i32 0
  %3619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3618, i64 23)
  %3620 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 4
  %3621 = load %nyx_string*, %nyx_string** %3620
  %3622 = call %nyx_string* @nyx_string_concat(%nyx_string* %3619, %nyx_string* %3621)
  %3623 = call i8* @nyx_string_to_cstr(%nyx_string* %3622)
  call void @nyx_print_string(i8* %3623)
  ret i64 1
else649:
  br label %merge650
merge650:
  %3624 = load { i64, i8* }*, { i64, i8* }** %3606
  %3625 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 4
  %3626 = load %nyx_string*, %nyx_string** %3625
  %3627 = ptrtoint %nyx_string* %3626 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3624, i64 %3627, i64 2)
  br label %merge647
else646:
  %3628 = load %TestConfig, %TestConfig* %3336
  %3629 = call { i64, i8* }* @discover_tests(%TestConfig %3628)
  store { i64, i8* }* %3629, { i64, i8* }** %3606
  br label %merge647
merge647:
  %3630 = load { i64, i8* }*, { i64, i8* }** %3606
  %3631 = call i64 @nyx_array_length({ i64, i8* }* %3630)
  %3632 = icmp eq i64 %3631, 0
  br i1 %3632, label %then651, label %else652
then651:
  %3633 = getelementptr [23 x i8], [23 x i8]* @.str371, i32 0, i32 0
  %3634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3633, i64 22)
  %3635 = call i8* @nyx_string_to_cstr(%nyx_string* %3634)
  call void @nyx_print_string(i8* %3635)
  %3636 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 2
  %3637 = load %nyx_string*, %nyx_string** %3636
  %3638 = getelementptr [1 x i8], [1 x i8]* @.str372, i32 0, i32 0
  %3639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3638, i64 0)
  %3640 = call i1 @nyx_string_equals(%nyx_string* %3637, %nyx_string* %3639)
  %3641 = xor i1 %3640, true
  br i1 %3641, label %then654, label %else655
then654:
  %3642 = getelementptr [12 x i8], [12 x i8]* @.str373, i32 0, i32 0
  %3643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3642, i64 11)
  %3644 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 2
  %3645 = load %nyx_string*, %nyx_string** %3644
  %3646 = call %nyx_string* @nyx_string_concat(%nyx_string* %3643, %nyx_string* %3645)
  %3647 = getelementptr [2 x i8], [2 x i8]* @.str374, i32 0, i32 0
  %3648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3647, i64 1)
  %3649 = call %nyx_string* @nyx_string_concat(%nyx_string* %3646, %nyx_string* %3648)
  %3650 = call i8* @nyx_string_to_cstr(%nyx_string* %3649)
  call void @nyx_print_string(i8* %3650)
  br label %merge656
else655:
  br label %merge656
merge656:
  %3651 = getelementptr [14 x i8], [14 x i8]* @.str375, i32 0, i32 0
  %3652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3651, i64 13)
  %3653 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 0
  %3654 = load %nyx_string*, %nyx_string** %3653
  %3655 = call %nyx_string* @nyx_string_concat(%nyx_string* %3652, %nyx_string* %3654)
  %3656 = getelementptr [2 x i8], [2 x i8]* @.str376, i32 0, i32 0
  %3657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3656, i64 1)
  %3658 = call %nyx_string* @nyx_string_concat(%nyx_string* %3655, %nyx_string* %3657)
  %3659 = call i8* @nyx_string_to_cstr(%nyx_string* %3658)
  call void @nyx_print_string(i8* %3659)
  ret i64 0
else652:
  br label %merge653
merge653:
  %3660 = getelementptr [9 x i8], [9 x i8]* @.str377, i32 0, i32 0
  %3661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3660, i64 8)
  %3662 = load { i64, i8* }*, { i64, i8* }** %3606
  %3663 = call i64 @nyx_array_length({ i64, i8* }* %3662)
  %3664 = call %nyx_string* @nyx_string_from_int(i64 %3663)
  %3665 = call %nyx_string* @nyx_string_concat(%nyx_string* %3661, %nyx_string* %3664)
  %3666 = getelementptr [14 x i8], [14 x i8]* @.str378, i32 0, i32 0
  %3667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3666, i64 13)
  %3668 = call %nyx_string* @nyx_string_concat(%nyx_string* %3665, %nyx_string* %3667)
  %3669 = call i8* @nyx_string_to_cstr(%nyx_string* %3668)
  call void @nyx_print_string(i8* %3669)
  %3670 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 2
  %3671 = load %nyx_string*, %nyx_string** %3670
  %3672 = getelementptr [1 x i8], [1 x i8]* @.str379, i32 0, i32 0
  %3673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3672, i64 0)
  %3674 = call i1 @nyx_string_equals(%nyx_string* %3671, %nyx_string* %3673)
  %3675 = xor i1 %3674, true
  br i1 %3675, label %then657, label %else658
then657:
  %3676 = getelementptr [12 x i8], [12 x i8]* @.str380, i32 0, i32 0
  %3677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3676, i64 11)
  %3678 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 2
  %3679 = load %nyx_string*, %nyx_string** %3678
  %3680 = call %nyx_string* @nyx_string_concat(%nyx_string* %3677, %nyx_string* %3679)
  %3681 = getelementptr [2 x i8], [2 x i8]* @.str381, i32 0, i32 0
  %3682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3681, i64 1)
  %3683 = call %nyx_string* @nyx_string_concat(%nyx_string* %3680, %nyx_string* %3682)
  %3684 = call i8* @nyx_string_to_cstr(%nyx_string* %3683)
  call void @nyx_print_string(i8* %3684)
  br label %merge659
else658:
  br label %merge659
merge659:
  %3685 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %3686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3685, i64 0)
  %3687 = call i8* @nyx_string_to_cstr(%nyx_string* %3686)
  call void @nyx_print_string(i8* %3687)
  %3688 = alloca i1
  store i1 false, i1* %3688
  %3689 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 8
  %3690 = load %nyx_string*, %nyx_string** %3689
  %3691 = getelementptr [1 x i8], [1 x i8]* @.str383, i32 0, i32 0
  %3692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3691, i64 0)
  %3693 = call i1 @nyx_string_equals(%nyx_string* %3690, %nyx_string* %3692)
  %3694 = xor i1 %3693, true
  br i1 %3694, label %sc_and_rhs660, label %sc_and_end661
sc_and_rhs660:
  %3695 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 5
  %3696 = load i1, i1* %3695
  %3697 = xor i1 %3696, true
  store i1 %3697, i1* %3688
  br label %sc_and_end661
sc_and_end661:
  %3698 = load i1, i1* %3688
  br i1 %3698, label %then662, label %else663
then662:
  %3699 = getelementptr [9 x i8], [9 x i8]* @.str384, i32 0, i32 0
  %3700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3699, i64 8)
  %3701 = call i8* @nyx_string_to_cstr(%nyx_string* %3700)
  %3702 = call %nyx_string* @nyx_getenv(i8* %3701)
  %3703 = alloca %nyx_string*
  store %nyx_string* %3702, %nyx_string** %3703
  %3704 = load %nyx_string*, %nyx_string** %3703
  %3705 = getelementptr [11 x i8], [11 x i8]* @.str385, i32 0, i32 0
  %3706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3705, i64 10)
  %3707 = call %nyx_string* @nyx_string_concat(%nyx_string* %3704, %nyx_string* %3706)
  %3708 = alloca %nyx_string*
  store %nyx_string* %3707, %nyx_string** %3708
  %3709 = load %nyx_string*, %nyx_string** %3708
  %3710 = call i8* @nyx_string_to_cstr(%nyx_string* %3709)
  %3711 = call i1 @nyx_file_exists(i8* %3710)
  %3712 = xor i1 %3711, true
  br i1 %3712, label %then665, label %else666
then665:
  %3713 = load %nyx_string*, %nyx_string** %3703
  %3714 = getelementptr [15 x i8], [15 x i8]* @.str386, i32 0, i32 0
  %3715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3714, i64 14)
  %3716 = call %nyx_string* @nyx_string_concat(%nyx_string* %3713, %nyx_string* %3715)
  store %nyx_string* %3716, %nyx_string** %3708
  br label %merge667
else666:
  br label %merge667
merge667:
  %3717 = getelementptr [1 x i8], [1 x i8]* @.str387, i32 0, i32 0
  %3718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3717, i64 0)
  %3719 = alloca %nyx_string*
  store %nyx_string* %3718, %nyx_string** %3719
  %3720 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 7
  %3721 = load i1, i1* %3720
  br i1 %3721, label %then668, label %else669
then668:
  %3722 = getelementptr [11 x i8], [11 x i8]* @.str388, i32 0, i32 0
  %3723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3722, i64 10)
  store %nyx_string* %3723, %nyx_string** %3719
  br label %merge670
else669:
  br label %merge670
merge670:
  %3724 = getelementptr [33 x i8], [33 x i8]* @.str389, i32 0, i32 0
  %3725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3724, i64 32)
  %3726 = call i8* @nyx_string_to_cstr(%nyx_string* %3725)
  %3727 = call %nyx_string* @nyx_exec(i8* %3726)
  %3728 = call %nyx_string* @nyx_string_trim(%nyx_string* %3727)
  %3729 = alloca %nyx_string*
  store %nyx_string* %3728, %nyx_string** %3729
  %3730 = getelementptr [2 x i8], [2 x i8]* @.str390, i32 0, i32 0
  %3731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3730, i64 1)
  %3732 = load %nyx_string*, %nyx_string** %3708
  %3733 = call %nyx_string* @nyx_string_concat(%nyx_string* %3731, %nyx_string* %3732)
  %3734 = getelementptr [7 x i8], [7 x i8]* @.str391, i32 0, i32 0
  %3735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3734, i64 6)
  %3736 = call %nyx_string* @nyx_string_concat(%nyx_string* %3733, %nyx_string* %3735)
  %3737 = load %nyx_string*, %nyx_string** %3719
  %3738 = call %nyx_string* @nyx_string_concat(%nyx_string* %3736, %nyx_string* %3737)
  %3739 = getelementptr [5 x i8], [5 x i8]* @.str392, i32 0, i32 0
  %3740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3739, i64 4)
  %3741 = call %nyx_string* @nyx_string_concat(%nyx_string* %3738, %nyx_string* %3740)
  %3742 = load %nyx_string*, %nyx_string** %3729
  %3743 = call %nyx_string* @nyx_string_concat(%nyx_string* %3741, %nyx_string* %3742)
  %3744 = getelementptr [7 x i8], [7 x i8]* @.str393, i32 0, i32 0
  %3745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3744, i64 6)
  %3746 = call %nyx_string* @nyx_string_concat(%nyx_string* %3743, %nyx_string* %3745)
  %3747 = call i8* @nyx_string_to_cstr(%nyx_string* %3746)
  %3748 = call i64 @nyx_exec_code(i8* %3747)
  %3749 = alloca i64
  store i64 %3748, i64* %3749
  %3750 = load %nyx_string*, %nyx_string** %3729
  %3751 = call i8* @nyx_string_to_cstr(%nyx_string* %3750)
  %3752 = call %nyx_string* @nyx_read_file(i8* %3751)
  %3753 = alloca %nyx_string*
  store %nyx_string* %3752, %nyx_string** %3753
  %3754 = getelementptr [8 x i8], [8 x i8]* @.str394, i32 0, i32 0
  %3755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3754, i64 7)
  %3756 = load %nyx_string*, %nyx_string** %3729
  %3757 = call %nyx_string* @nyx_string_concat(%nyx_string* %3755, %nyx_string* %3756)
  %3758 = getelementptr [2 x i8], [2 x i8]* @.str395, i32 0, i32 0
  %3759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3758, i64 1)
  %3760 = call %nyx_string* @nyx_string_concat(%nyx_string* %3757, %nyx_string* %3759)
  %3761 = call i8* @nyx_string_to_cstr(%nyx_string* %3760)
  %3762 = call i64 @nyx_exec_code(i8* %3761)
  %3763 = load i64, i64* %3749
  %3764 = icmp ne i64 %3763, 0
  br i1 %3764, label %then671, label %else672
then671:
  %3765 = getelementptr [65 x i8], [65 x i8]* @.str396, i32 0, i32 0
  %3766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3765, i64 64)
  %3767 = call i8* @nyx_string_to_cstr(%nyx_string* %3766)
  call void @nyx_print_string(i8* %3767)
  %3768 = load %nyx_string*, %nyx_string** %3753
  %3769 = call i8* @nyx_string_to_cstr(%nyx_string* %3768)
  call void @nyx_print_string(i8* %3769)
  ret i64 1
else672:
  br label %merge673
merge673:
  %3770 = load %nyx_string*, %nyx_string** %3753
  %3771 = getelementptr [2 x i8], [2 x i8]* @.str397, i32 0, i32 0
  %3772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3771, i64 1)
  %3773 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3770, %nyx_string* %3772)
  %3774 = alloca { i64, i8* }*
  store { i64, i8* }* %3773, { i64, i8* }** %3774
  %3775 = alloca i64
  store i64 0, i64* %3775
  %3776 = alloca i64
  store i64 0, i64* %3776
  %3777 = alloca i64
  store i64 0, i64* %3777
  %3778 = getelementptr [13 x i8], [13 x i8]* @.str398, i32 0, i32 0
  %3779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3778, i64 12)
  %3780 = alloca %nyx_string*
  store %nyx_string* %3779, %nyx_string** %3780
  %3781 = getelementptr [6 x i8], [6 x i8]* @.str399, i32 0, i32 0
  %3782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3781, i64 5)
  %3783 = alloca %nyx_string*
  store %nyx_string* %3782, %nyx_string** %3783
  %3784 = getelementptr [8 x i8], [8 x i8]* @.str400, i32 0, i32 0
  %3785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3784, i64 7)
  %3786 = alloca %nyx_string*
  store %nyx_string* %3785, %nyx_string** %3786
  %3787 = getelementptr [4 x i8], [4 x i8]* @.str401, i32 0, i32 0
  %3788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3787, i64 3)
  %3789 = alloca %nyx_string*
  store %nyx_string* %3788, %nyx_string** %3789
  %3790 = call i8* @llvm.stacksave()
  br label %while_cond674
while_cond674:
  %3791 = load i64, i64* %3775
  %3792 = load { i64, i8* }*, { i64, i8* }** %3774
  %3793 = call i64 @nyx_array_length({ i64, i8* }* %3792)
  %3794 = icmp slt i64 %3791, %3793
  br i1 %3794, label %while_body675, label %while_end676
while_body675:
  call void @llvm.stackrestore(i8* %3790)
  %3795 = load { i64, i8* }*, { i64, i8* }** %3774
  %3796 = load i64, i64* %3775
  %3797 = call i64 @nyx_array_get_checked({ i64, i8* }* %3795, i64 %3796, i64 2)
  %3798 = inttoptr i64 %3797 to %nyx_string*
  %3799 = alloca %nyx_string*
  store %nyx_string* %3798, %nyx_string** %3799
  %3800 = load %nyx_string*, %nyx_string** %3799
  %3801 = load %nyx_string*, %nyx_string** %3780
  %3802 = call i1 @nyx_string_starts_with(%nyx_string* %3800, %nyx_string* %3801)
  br i1 %3802, label %then677, label %else678
then677:
  %3803 = load %nyx_string*, %nyx_string** %3799
  %3804 = load %nyx_string*, %nyx_string** %3799
  %3805 = call i64 @nyx_string_byte_length(%nyx_string* %3804)
  %3806 = call %nyx_string* @nyx_string_substring(%nyx_string* %3803, i64 12, i64 %3805)
  %3807 = call %nyx_string* @nyx_string_trim(%nyx_string* %3806)
  %3808 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 9
  store %nyx_string* %3807, %nyx_string** %3808
  br label %merge679
else678:
  br label %merge679
merge679:
  %3809 = load %nyx_string*, %nyx_string** %3799
  %3810 = load %nyx_string*, %nyx_string** %3783
  %3811 = call i1 @nyx_string_contains(%nyx_string* %3809, %nyx_string* %3810)
  br i1 %3811, label %then680, label %else681
then680:
  %3812 = load i64, i64* %3776
  %3813 = add i64 %3812, 1
  store i64 %3813, i64* %3776
  br label %merge682
else681:
  br label %merge682
merge682:
  %3814 = load %nyx_string*, %nyx_string** %3799
  %3815 = load %nyx_string*, %nyx_string** %3786
  %3816 = call i1 @nyx_string_contains(%nyx_string* %3814, %nyx_string* %3815)
  br i1 %3816, label %then683, label %else684
then683:
  %3817 = load i64, i64* %3777
  %3818 = add i64 %3817, 1
  store i64 %3818, i64* %3777
  br label %merge685
else684:
  br label %merge685
merge685:
  %3819 = load %nyx_string*, %nyx_string** %3799
  %3820 = load %nyx_string*, %nyx_string** %3789
  %3821 = call i1 @nyx_string_contains(%nyx_string* %3819, %nyx_string* %3820)
  br i1 %3821, label %then686, label %else687
then686:
  %3822 = load %nyx_string*, %nyx_string** %3799
  %3823 = call i8* @nyx_string_to_cstr(%nyx_string* %3822)
  call void @nyx_print_string(i8* %3823)
  br label %merge688
else687:
  br label %merge688
merge688:
  %3824 = load i64, i64* %3775
  %3825 = add i64 %3824, 1
  store i64 %3825, i64* %3775
  br label %while_cond674
while_end676:
  %3826 = getelementptr [18 x i8], [18 x i8]* @.str402, i32 0, i32 0
  %3827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3826, i64 17)
  %3828 = load i64, i64* %3776
  %3829 = call %nyx_string* @nyx_string_from_int(i64 %3828)
  %3830 = call %nyx_string* @nyx_string_concat(%nyx_string* %3827, %nyx_string* %3829)
  %3831 = getelementptr [16 x i8], [16 x i8]* @.str403, i32 0, i32 0
  %3832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3831, i64 15)
  %3833 = call %nyx_string* @nyx_string_concat(%nyx_string* %3830, %nyx_string* %3832)
  %3834 = load i64, i64* %3777
  %3835 = call %nyx_string* @nyx_string_from_int(i64 %3834)
  %3836 = call %nyx_string* @nyx_string_concat(%nyx_string* %3833, %nyx_string* %3835)
  %3837 = getelementptr [16 x i8], [16 x i8]* @.str404, i32 0, i32 0
  %3838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3837, i64 15)
  %3839 = call %nyx_string* @nyx_string_concat(%nyx_string* %3836, %nyx_string* %3838)
  %3840 = call i8* @nyx_string_to_cstr(%nyx_string* %3839)
  call void @nyx_print_string(i8* %3840)
  %3841 = getelementptr [1 x i8], [1 x i8]* @.str405, i32 0, i32 0
  %3842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3841, i64 0)
  %3843 = call i8* @nyx_string_to_cstr(%nyx_string* %3842)
  call void @nyx_print_string(i8* %3843)
  br label %merge664
else663:
  br label %merge664
merge664:
  %3844 = call { i64, i8* }* @nyx_array_new_ptr()
  %3845 = alloca { i64, i8* }*
  store { i64, i8* }* %3844, { i64, i8* }** %3845
  %3846 = call { i64, i8* }* @nyx_array_new_ptr()
  %3847 = alloca { i64, i8* }*
  store { i64, i8* }* %3846, { i64, i8* }** %3847
  %3848 = call { i64, i8* }* @nyx_array_new_ptr()
  %3849 = alloca { i64, i8* }*
  store { i64, i8* }* %3848, { i64, i8* }** %3849
  %3850 = alloca i64
  store i64 0, i64* %3850
  %3851 = alloca i64
  store i64 0, i64* %3851
  %3852 = alloca i64
  store i64 0, i64* %3852
  %3853 = call i8* @llvm.stacksave()
  br label %while_cond689
while_cond689:
  %3854 = load i64, i64* %3852
  %3855 = load { i64, i8* }*, { i64, i8* }** %3606
  %3856 = call i64 @nyx_array_length({ i64, i8* }* %3855)
  %3857 = icmp slt i64 %3854, %3856
  br i1 %3857, label %while_body690, label %while_end691
while_body690:
  call void @llvm.stackrestore(i8* %3853)
  %3858 = load { i64, i8* }*, { i64, i8* }** %3606
  %3859 = load i64, i64* %3852
  %3860 = call i64 @nyx_array_get_checked({ i64, i8* }* %3858, i64 %3859, i64 2)
  %3861 = inttoptr i64 %3860 to %nyx_string*
  %3862 = alloca %nyx_string*
  store %nyx_string* %3861, %nyx_string** %3862
  %3863 = load %nyx_string*, %nyx_string** %3862
  %3864 = call i1 @file_has_test_blocks(%nyx_string* %3863)
  %3865 = xor i1 %3864, true
  br i1 %3865, label %then692, label %else693
then692:
  %3866 = load i64, i64* %3852
  %3867 = add i64 %3866, 1
  store i64 %3867, i64* %3852
  br label %merge694
else693:
  %3868 = load %nyx_string*, %nyx_string** %3862
  %3869 = load %TestConfig, %TestConfig* %3336
  %3870 = load %nyx_string*, %nyx_string** %3557
  %3871 = load i64, i64* %3852
  %3872 = call %TestResult @compile_and_run(%nyx_string* %3868, %TestConfig %3869, %nyx_string* %3870, i64 %3871)
  %3873 = alloca %TestResult
  store %TestResult %3872, %TestResult* %3873
  %3874 = load { i64, i8* }*, { i64, i8* }** %3845
  %3875 = load %TestResult, %TestResult* %3873
  %3876 = getelementptr %TestResult, %TestResult* null, i32 1
  %3877 = ptrtoint %TestResult* %3876 to i64
  %3878 = call i8* @GC_malloc(i64 %3877)
  %3879 = bitcast i8* %3878 to %TestResult*
  store %TestResult %3875, %TestResult* %3879
  %3880 = ptrtoint %TestResult* %3879 to i64
  call void @nyx_array_push({ i64, i8* }* %3874, i64 %3880)
  %3881 = load { i64, i8* }*, { i64, i8* }** %3847
  %3882 = load %nyx_string*, %nyx_string** %3862
  %3883 = ptrtoint %nyx_string* %3882 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3881, i64 %3883, i64 2)
  %3884 = load { i64, i8* }*, { i64, i8* }** %3849
  %3885 = load i64, i64* %3852
  %3886 = call %nyx_string* @nyx_string_from_int(i64 %3885)
  %3887 = ptrtoint %nyx_string* %3886 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3884, i64 %3887, i64 2)
  %3888 = load i64, i64* %3850
  %3889 = getelementptr %TestResult, %TestResult* %3873, i32 0, i32 1
  %3890 = load i64, i64* %3889
  %3891 = add i64 %3888, %3890
  store i64 %3891, i64* %3850
  %3892 = load i64, i64* %3851
  %3893 = getelementptr %TestResult, %TestResult* %3873, i32 0, i32 2
  %3894 = load i64, i64* %3893
  %3895 = add i64 %3892, %3894
  store i64 %3895, i64* %3851
  %3896 = load %TestResult, %TestResult* %3873
  %3897 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 3
  %3898 = load i1, i1* %3897
  %3899 = call i64 @print_result(%TestResult %3896, i1 %3898)
  %3900 = load i64, i64* %3852
  %3901 = add i64 %3900, 1
  store i64 %3901, i64* %3852
  br label %merge694
merge694:
  br label %while_cond689
while_end691:
  %3902 = load { i64, i8* }*, { i64, i8* }** %3845
  %3903 = call i64 @nyx_array_length({ i64, i8* }* %3902)
  %3904 = icmp eq i64 %3903, 0
  br i1 %3904, label %then695, label %else696
then695:
  %3905 = getelementptr [35 x i8], [35 x i8]* @.str406, i32 0, i32 0
  %3906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3905, i64 34)
  %3907 = call i8* @nyx_string_to_cstr(%nyx_string* %3906)
  call void @nyx_print_string(i8* %3907)
  %3908 = load %nyx_string*, %nyx_string** %3557
  %3909 = getelementptr [1 x i8], [1 x i8]* @.str407, i32 0, i32 0
  %3910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3909, i64 0)
  %3911 = call i1 @nyx_string_equals(%nyx_string* %3908, %nyx_string* %3910)
  %3912 = xor i1 %3911, true
  br i1 %3912, label %then698, label %else699
then698:
  %3913 = getelementptr [8 x i8], [8 x i8]* @.str408, i32 0, i32 0
  %3914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3913, i64 7)
  %3915 = load %nyx_string*, %nyx_string** %3557
  %3916 = call %nyx_string* @nyx_string_concat(%nyx_string* %3914, %nyx_string* %3915)
  %3917 = call i8* @nyx_string_to_cstr(%nyx_string* %3916)
  %3918 = call %nyx_string* @nyx_exec(i8* %3917)
  br label %merge700
else699:
  br label %merge700
merge700:
  ret i64 0
else696:
  br label %merge697
merge697:
  %3919 = load { i64, i8* }*, { i64, i8* }** %3845
  %3920 = load i64, i64* %3850
  %3921 = load i64, i64* %3851
  %3922 = call i64 @print_summary({ i64, i8* }* %3919, i64 %3920, i64 %3921)
  %3923 = load %nyx_string*, %nyx_string** %3307
  %3924 = call %nyx_string* @huella_compilador(%nyx_string* %3923)
  %3925 = alloca %nyx_string*
  store %nyx_string* %3924, %nyx_string** %3925
  %3926 = load %nyx_string*, %nyx_string** %3307
  %3927 = call %nyx_string* @huella_resto(%nyx_string* %3926)
  %3928 = alloca %nyx_string*
  store %nyx_string* %3927, %nyx_string** %3928
  %3929 = alloca i1
  store i1 true, i1* %3929
  %3930 = load %nyx_string*, %nyx_string** %3925
  %3931 = load %nyx_string*, %nyx_string** %3318
  %3932 = call i1 @nyx_string_equals(%nyx_string* %3930, %nyx_string* %3931)
  %3933 = xor i1 %3932, true
  br i1 %3933, label %sc_or_end702, label %sc_or_rhs701
sc_or_rhs701:
  %3934 = load %nyx_string*, %nyx_string** %3928
  %3935 = load %nyx_string*, %nyx_string** %3321
  %3936 = call i1 @nyx_string_equals(%nyx_string* %3934, %nyx_string* %3935)
  %3937 = xor i1 %3936, true
  store i1 %3937, i1* %3929
  br label %sc_or_end702
sc_or_end702:
  %3938 = load i1, i1* %3929
  br i1 %3938, label %then703, label %else704
then703:
  %3939 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %3940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3939, i64 0)
  %3941 = call i8* @nyx_string_to_cstr(%nyx_string* %3940)
  call void @nyx_print_string(i8* %3941)
  %3942 = getelementptr [48 x i8], [48 x i8]* @.str410, i32 0, i32 0
  %3943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3942, i64 47)
  %3944 = load %nyx_string*, %nyx_string** %3307
  %3945 = call %nyx_string* @nyx_string_concat(%nyx_string* %3943, %nyx_string* %3944)
  %3946 = getelementptr [2 x i8], [2 x i8]* @.str411, i32 0, i32 0
  %3947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3946, i64 1)
  %3948 = call %nyx_string* @nyx_string_concat(%nyx_string* %3945, %nyx_string* %3947)
  %3949 = call i8* @nyx_string_to_cstr(%nyx_string* %3948)
  call void @nyx_print_string(i8* %3949)
  %3950 = load %nyx_string*, %nyx_string** %3925
  %3951 = load %nyx_string*, %nyx_string** %3318
  %3952 = call i1 @nyx_string_equals(%nyx_string* %3950, %nyx_string* %3951)
  %3953 = xor i1 %3952, true
  br i1 %3953, label %then706, label %else707
then706:
  %3954 = getelementptr [31 x i8], [31 x i8]* @.str412, i32 0, i32 0
  %3955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3954, i64 30)
  %3956 = load %nyx_string*, %nyx_string** %3318
  %3957 = call %nyx_string* @nyx_string_concat(%nyx_string* %3955, %nyx_string* %3956)
  %3958 = getelementptr [5 x i8], [5 x i8]* @.str413, i32 0, i32 0
  %3959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3958, i64 4)
  %3960 = call %nyx_string* @nyx_string_concat(%nyx_string* %3957, %nyx_string* %3959)
  %3961 = load %nyx_string*, %nyx_string** %3925
  %3962 = call %nyx_string* @nyx_string_concat(%nyx_string* %3960, %nyx_string* %3961)
  %3963 = call i8* @nyx_string_to_cstr(%nyx_string* %3962)
  call void @nyx_print_string(i8* %3963)
  br label %merge708
else707:
  %3964 = getelementptr [53 x i8], [53 x i8]* @.str414, i32 0, i32 0
  %3965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3964, i64 52)
  %3966 = call i8* @nyx_string_to_cstr(%nyx_string* %3965)
  call void @nyx_print_string(i8* %3966)
  br label %merge708
merge708:
  %3967 = getelementptr [71 x i8], [71 x i8]* @.str415, i32 0, i32 0
  %3968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3967, i64 70)
  %3969 = call i8* @nyx_string_to_cstr(%nyx_string* %3968)
  call void @nyx_print_string(i8* %3969)
  %3970 = getelementptr [69 x i8], [69 x i8]* @.str416, i32 0, i32 0
  %3971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3970, i64 68)
  %3972 = call i8* @nyx_string_to_cstr(%nyx_string* %3971)
  call void @nyx_print_string(i8* %3972)
  br label %merge705
else704:
  br label %merge705
merge705:
  %3973 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 5
  %3974 = load i1, i1* %3973
  br i1 %3974, label %then709, label %else710
then709:
  %3975 = load %nyx_string*, %nyx_string** %3557
  %3976 = load { i64, i8* }*, { i64, i8* }** %3847
  %3977 = load { i64, i8* }*, { i64, i8* }** %3849
  %3978 = load %nyx_string*, %nyx_string** %3554
  %3979 = getelementptr %TestConfig, %TestConfig* %3336, i32 0, i32 6
  %3980 = load i1, i1* %3979
  %3981 = call i64 @cov_report(%nyx_string* %3975, { i64, i8* }* %3976, { i64, i8* }* %3977, %nyx_string* %3978, i1 %3980)
  %3982 = getelementptr [8 x i8], [8 x i8]* @.str417, i32 0, i32 0
  %3983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3982, i64 7)
  %3984 = load %nyx_string*, %nyx_string** %3557
  %3985 = call %nyx_string* @nyx_string_concat(%nyx_string* %3983, %nyx_string* %3984)
  %3986 = call i8* @nyx_string_to_cstr(%nyx_string* %3985)
  %3987 = call %nyx_string* @nyx_exec(i8* %3986)
  br label %merge711
else710:
  br label %merge711
merge711:
  %3988 = alloca i64
  store i64 0, i64* %3988
  %3989 = alloca i64
  store i64 0, i64* %3989
  %3990 = call i8* @llvm.stacksave()
  br label %while_cond712
while_cond712:
  %3991 = load i64, i64* %3989
  %3992 = load { i64, i8* }*, { i64, i8* }** %3845
  %3993 = call i64 @nyx_array_length({ i64, i8* }* %3992)
  %3994 = icmp slt i64 %3991, %3993
  br i1 %3994, label %while_body713, label %while_end714
while_body713:
  call void @llvm.stackrestore(i8* %3990)
  %3995 = load { i64, i8* }*, { i64, i8* }** %3845
  %3996 = load i64, i64* %3989
  %3997 = call i64 @nyx_array_get({ i64, i8* }* %3995, i64 %3996)
  %3998 = inttoptr i64 %3997 to %TestResult*
  %3999 = load %TestResult, %TestResult* %3998
  %4000 = alloca %TestResult
  store %TestResult %3999, %TestResult* %4000
  %4001 = getelementptr %TestResult, %TestResult* %4000, i32 0, i32 4
  %4002 = load i1, i1* %4001
  %4003 = xor i1 %4002, true
  br i1 %4003, label %then715, label %else716
then715:
  %4004 = load i64, i64* %3988
  %4005 = add i64 %4004, 1
  store i64 %4005, i64* %3988
  br label %merge717
else716:
  br label %merge717
merge717:
  %4006 = load i64, i64* %3989
  %4007 = add i64 %4006, 1
  store i64 %4007, i64* %3989
  br label %while_cond712
while_end714:
  %4008 = alloca i1
  store i1 true, i1* %4008
  %4009 = load i64, i64* %3851
  %4010 = icmp sgt i64 %4009, 0
  br i1 %4010, label %sc_or_end719, label %sc_or_rhs718
sc_or_rhs718:
  %4011 = load i64, i64* %3988
  %4012 = icmp sgt i64 %4011, 0
  store i1 %4012, i1* %4008
  br label %sc_or_end719
sc_or_end719:
  %4013 = load i1, i1* %4008
  br i1 %4013, label %then720, label %else721
then720:
  ret i64 1
else721:
  br label %merge722
merge722:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %4014 = sub i64 0, 9223372036854775808
  store i64 %4014, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

