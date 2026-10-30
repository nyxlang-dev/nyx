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
  %361 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %362 = load i64, i64* %342
  %363 = sub i64 %362, 1
  %364 = load i64, i64* %343
  %365 = sub i64 %363, %364
  %366 = call i64 @nyx_array_get_tag({ i64, i8* }* %361, i64 %365)
  call void @nyx_array_set_tagged({ i64, i8* }* %353, i64 %354, i64 %360, i64 %366)
  %367 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %368 = load i64, i64* %342
  %369 = sub i64 %368, 1
  %370 = load i64, i64* %343
  %371 = sub i64 %369, %370
  %372 = load i64, i64* %352
  call void @nyx_array_set({ i64, i8* }* %367, i64 %371, i64 %372)
  %373 = load i64, i64* %343
  %374 = add i64 %373, 1
  store i64 %374, i64* %343
  br label %while_cond105
while_end107:
  %375 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %375
}

define i1 @array_contains_int(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %376 = alloca i64
  store i64 0, i64* %376
  %377 = call i8* @llvm.stacksave()
  br label %while_cond108
while_cond108:
  %378 = load i64, i64* %376
  %379 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %380 = call i64 @nyx_array_length({ i64, i8* }* %379)
  %381 = icmp slt i64 %378, %380
  br i1 %381, label %while_body109, label %while_end110
while_body109:
  call void @llvm.stackrestore(i8* %377)
  %382 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %383 = load i64, i64* %376
  %384 = call i64 @nyx_array_get({ i64, i8* }* %382, i64 %383)
  %385 = load i64, i64* %val.ptr
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %then111, label %else112
then111:
  ret i1 1
else112:
  br label %merge113
merge113:
  %387 = load i64, i64* %376
  %388 = add i64 %387, 1
  store i64 %388, i64* %376
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
  %389 = alloca i64
  store i64 0, i64* %389
  %390 = call i8* @llvm.stacksave()
  br label %while_cond114
while_cond114:
  %391 = load i64, i64* %389
  %392 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %393 = call i64 @nyx_array_length({ i64, i8* }* %392)
  %394 = icmp slt i64 %391, %393
  br i1 %394, label %while_body115, label %while_end116
while_body115:
  call void @llvm.stackrestore(i8* %390)
  %395 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %396 = load i64, i64* %389
  %397 = call i64 @nyx_array_get({ i64, i8* }* %395, i64 %396)
  %398 = load i64, i64* %val.ptr
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %then117, label %else118
then117:
  %400 = load i64, i64* %389
  ret i64 %400
else118:
  br label %merge119
merge119:
  %401 = load i64, i64* %389
  %402 = add i64 %401, 1
  store i64 %402, i64* %389
  br label %while_cond114
while_end116:
  %403 = sub i64 0, 1
  ret i64 %403
}

define { i64, i8* }* @sort_int(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %404 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %405 = call i8* @GC_malloc(i64 16)
  %406 = bitcast i8* %405 to { i8*, i8* }*
  %407 = bitcast i64 (...)* @__sort_sin_cmp to i8*
  %408 = getelementptr { i8*, i8* }, { i8*, i8* }* %406, i32 0, i32 0
  store i8* %407, i8** %408
  %409 = getelementptr { i8*, i8* }, { i8*, i8* }* %406, i32 0, i32 1
  store i8* null, i8** %409
  %410 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %404, i64 0, i8* %405)
  ret { i64, i8* }* %410
}

define { i64, i8* }* @sort_by(
{ i64, i8* }* %arr.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %411 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %412 = load i8*, i8** %cmp.ptr
  %413 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %411, i64 2, i8* %412)
  ret { i64, i8* }* %413
}

define i64 @str_compare(
%nyx_string* %a.param, %nyx_string* %b.param) {
  %a.ptr = alloca %nyx_string*
  store %nyx_string* %a.param, %nyx_string** %a.ptr
  %b.ptr = alloca %nyx_string*
  store %nyx_string* %b.param, %nyx_string** %b.ptr
  %414 = load %nyx_string*, %nyx_string** %a.ptr
  %415 = call i64 @nyx_string_byte_length(%nyx_string* %414)
  %416 = alloca i64
  store i64 %415, i64* %416
  %417 = load %nyx_string*, %nyx_string** %b.ptr
  %418 = call i64 @nyx_string_byte_length(%nyx_string* %417)
  %419 = alloca i64
  store i64 %418, i64* %419
  %420 = load i64, i64* %416
  %421 = alloca i64
  store i64 %420, i64* %421
  %422 = load i64, i64* %419
  %423 = load i64, i64* %421
  %424 = icmp slt i64 %422, %423
  br i1 %424, label %then120, label %else121
then120:
  %425 = load i64, i64* %419
  store i64 %425, i64* %421
  br label %merge122
else121:
  br label %merge122
merge122:
  %426 = alloca i64
  store i64 0, i64* %426
  %427 = call i8* @llvm.stacksave()
  br label %while_cond123
while_cond123:
  %428 = load i64, i64* %426
  %429 = load i64, i64* %421
  %430 = icmp slt i64 %428, %429
  br i1 %430, label %while_body124, label %while_end125
while_body124:
  call void @llvm.stackrestore(i8* %427)
  %431 = load %nyx_string*, %nyx_string** %a.ptr
  %432 = load i64, i64* %426
  %433 = call i8 @nyx_string_char_at(%nyx_string* %431, i64 %432)
  %434 = zext i8 %433 to i64
  %435 = alloca i64
  store i64 %434, i64* %435
  %436 = load %nyx_string*, %nyx_string** %b.ptr
  %437 = load i64, i64* %426
  %438 = call i8 @nyx_string_char_at(%nyx_string* %436, i64 %437)
  %439 = zext i8 %438 to i64
  %440 = alloca i64
  store i64 %439, i64* %440
  %441 = load i64, i64* %435
  %442 = load i64, i64* %440
  %443 = icmp slt i64 %441, %442
  br i1 %443, label %then126, label %else127
then126:
  %444 = sub i64 0, 1
  ret i64 %444
else127:
  br label %merge128
merge128:
  %445 = load i64, i64* %435
  %446 = load i64, i64* %440
  %447 = icmp sgt i64 %445, %446
  br i1 %447, label %then129, label %else130
then129:
  ret i64 1
else130:
  br label %merge131
merge131:
  %448 = load i64, i64* %426
  %449 = add i64 %448, 1
  store i64 %449, i64* %426
  br label %while_cond123
while_end125:
  %450 = load i64, i64* %416
  %451 = load i64, i64* %419
  %452 = icmp slt i64 %450, %451
  br i1 %452, label %then132, label %else133
then132:
  %453 = sub i64 0, 1
  ret i64 %453
else133:
  br label %merge134
merge134:
  %454 = load i64, i64* %416
  %455 = load i64, i64* %419
  %456 = icmp sgt i64 %454, %455
  br i1 %456, label %then135, label %else136
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
  %457 = load i64, i64* %modo.ptr
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %then138, label %else139
then138:
  %459 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %460 = load i64, i64* %i.ptr
  %461 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %459, i64 %460)
  %462 = alloca i64
  store i64 %461, i64* %462
  %463 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %464 = load i64, i64* %j.ptr
  %465 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %463, i64 %464)
  %466 = alloca i64
  store i64 %465, i64* %466
  %467 = load i64, i64* %462
  %468 = load i64, i64* %466
  %469 = icmp slt i64 %467, %468
  br i1 %469, label %then141, label %else142
then141:
  %470 = sub i64 0, 1
  ret i64 %470
else142:
  br label %merge143
merge143:
  %471 = load i64, i64* %462
  %472 = load i64, i64* %466
  %473 = icmp sgt i64 %471, %472
  br i1 %473, label %then144, label %else145
then144:
  ret i64 1
else145:
  br label %merge146
merge146:
  ret i64 0
else139:
  br label %merge140
merge140:
  %474 = load i64, i64* %modo.ptr
  %475 = icmp eq i64 %474, 1
  br i1 %475, label %then147, label %else148
then147:
  %476 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %477 = load i64, i64* %i.ptr
  %478 = call i64 @nyx_array_get_checked({ i64, i8* }* %476, i64 %477, i64 2)
  %479 = inttoptr i64 %478 to %nyx_string*
  %480 = alloca %nyx_string*
  store %nyx_string* %479, %nyx_string** %480
  %481 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %482 = load i64, i64* %j.ptr
  %483 = call i64 @nyx_array_get_checked({ i64, i8* }* %481, i64 %482, i64 2)
  %484 = inttoptr i64 %483 to %nyx_string*
  %485 = alloca %nyx_string*
  store %nyx_string* %484, %nyx_string** %485
  %486 = load %nyx_string*, %nyx_string** %480
  %487 = load %nyx_string*, %nyx_string** %485
  %488 = call i64 @str_compare(%nyx_string* %486, %nyx_string* %487)
  ret i64 %488
else148:
  br label %merge149
merge149:
  %489 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %490 = load i64, i64* %i.ptr
  %491 = call i64 @nyx_array_get({ i64, i8* }* %489, i64 %490)
  %492 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %493 = load i64, i64* %j.ptr
  %494 = call i64 @nyx_array_get({ i64, i8* }* %492, i64 %493)
  %495 = load i8*, i8** %cmp.ptr
  %496 = bitcast i8* %495 to { i8*, i8* }*
  %497 = getelementptr { i8*, i8* }, { i8*, i8* }* %496, i32 0, i32 0
  %498 = load i8*, i8** %497
  %499 = getelementptr { i8*, i8* }, { i8*, i8* }* %496, i32 0, i32 1
  %500 = load i8*, i8** %499
  %501 = icmp ne i8* %500, null
  br i1 %501, label %cl_env150, label %cl_noenv151
cl_env150:
  %502 = bitcast i8* %498 to i64 (i8*, i64, i64)*
  %503 = call i64 %502(i8* %500, i64 %491, i64 %494)
  br label %cl_merge152
cl_noenv151:
  %504 = bitcast i8* %498 to i64 (i64, i64)*
  %505 = call i64 %504(i64 %491, i64 %494)
  br label %cl_merge152
cl_merge152:
  %506 = phi i64 [%503, %cl_env150], [%505, %cl_noenv151]
  ret i64 %506
}

define internal { i64, i8* }* @__sort_merge(
{ i64, i8* }* %arr.param, i64 %modo.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %modo.ptr = alloca i64
  store i64 %modo.param, i64* %modo.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %507 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %508 = call i64 @nyx_array_length({ i64, i8* }* %507)
  %509 = alloca i64
  store i64 %508, i64* %509
  %510 = load i64, i64* %509
  %511 = icmp sle i64 %510, 1
  br i1 %511, label %then153, label %else154
then153:
  %512 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %512
else154:
  br label %merge155
merge155:
  %513 = alloca i64
  store i64 32, i64* %513
  %514 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %514, i64 0, i64 1)
  %515 = alloca { i64, i8* }*
  store { i64, i8* }* %514, { i64, i8* }** %515
  %516 = alloca i64
  store i64 0, i64* %516
  %517 = call i8* @llvm.stacksave()
  br label %while_cond156
while_cond156:
  %518 = load i64, i64* %516
  %519 = load i64, i64* %509
  %520 = icmp slt i64 %518, %519
  br i1 %520, label %while_body157, label %while_end158
while_body157:
  call void @llvm.stackrestore(i8* %517)
  %521 = load i64, i64* %516
  %522 = load i64, i64* %513
  %523 = add i64 %521, %522
  %524 = alloca i64
  store i64 %523, i64* %524
  %525 = load i64, i64* %524
  %526 = load i64, i64* %509
  %527 = icmp sgt i64 %525, %526
  br i1 %527, label %then159, label %else160
then159:
  %528 = load i64, i64* %509
  store i64 %528, i64* %524
  br label %merge161
else160:
  br label %merge161
merge161:
  %529 = load i64, i64* %516
  %530 = add i64 %529, 1
  %531 = alloca i64
  store i64 %530, i64* %531
  %532 = call i8* @llvm.stacksave()
  br label %while_cond162
while_cond162:
  %533 = load i64, i64* %531
  %534 = load i64, i64* %524
  %535 = icmp slt i64 %533, %534
  br i1 %535, label %while_body163, label %while_end164
while_body163:
  call void @llvm.stackrestore(i8* %532)
  %536 = load i64, i64* %531
  %537 = alloca i64
  store i64 %536, i64* %537
  %538 = call i8* @llvm.stacksave()
  br label %while_cond165
while_cond165:
  %539 = alloca i1
  store i1 false, i1* %539
  %540 = load i64, i64* %537
  %541 = load i64, i64* %516
  %542 = icmp sgt i64 %540, %541
  br i1 %542, label %sc_and_rhs168, label %sc_and_end169
sc_and_rhs168:
  %543 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %544 = load i64, i64* %537
  %545 = sub i64 %544, 1
  %546 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %547 = load i64, i64* %537
  %548 = load i64, i64* %modo.ptr
  %549 = load i8*, i8** %cmp.ptr
  %550 = call i64 @__sort_cmp({ i64, i8* }* %543, i64 %545, { i64, i8* }* %546, i64 %547, i64 %548, i8* %549)
  %551 = icmp sgt i64 %550, 0
  store i1 %551, i1* %539
  br label %sc_and_end169
sc_and_end169:
  %552 = load i1, i1* %539
  br i1 %552, label %while_body166, label %while_end167
while_body166:
  call void @llvm.stackrestore(i8* %538)
  %553 = load { i64, i8* }*, { i64, i8* }** %515
  %554 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %555 = load i64, i64* %537
  %556 = sub i64 %555, 1
  %557 = call i64 @nyx_array_get({ i64, i8* }* %554, i64 %556)
  %558 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %559 = load i64, i64* %537
  %560 = sub i64 %559, 1
  %561 = call i64 @nyx_array_get_tag({ i64, i8* }* %558, i64 %560)
  call void @nyx_array_set_tagged({ i64, i8* }* %553, i64 0, i64 %557, i64 %561)
  %562 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %563 = load i64, i64* %537
  %564 = sub i64 %563, 1
  %565 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %566 = load i64, i64* %537
  %567 = call i64 @nyx_array_get({ i64, i8* }* %565, i64 %566)
  %568 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %569 = load i64, i64* %537
  %570 = call i64 @nyx_array_get_tag({ i64, i8* }* %568, i64 %569)
  call void @nyx_array_set_tagged({ i64, i8* }* %562, i64 %564, i64 %567, i64 %570)
  %571 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %572 = load i64, i64* %537
  %573 = load { i64, i8* }*, { i64, i8* }** %515
  %574 = call i64 @nyx_array_get({ i64, i8* }* %573, i64 0)
  %575 = load { i64, i8* }*, { i64, i8* }** %515
  %576 = call i64 @nyx_array_get_tag({ i64, i8* }* %575, i64 0)
  call void @nyx_array_set_tagged({ i64, i8* }* %571, i64 %572, i64 %574, i64 %576)
  %577 = load i64, i64* %537
  %578 = sub i64 %577, 1
  store i64 %578, i64* %537
  br label %while_cond165
while_end167:
  %579 = load i64, i64* %531
  %580 = add i64 %579, 1
  store i64 %580, i64* %531
  br label %while_cond162
while_end164:
  %581 = load i64, i64* %524
  store i64 %581, i64* %516
  br label %while_cond156
while_end158:
  %582 = load i64, i64* %509
  %583 = load i64, i64* %513
  %584 = icmp sle i64 %582, %583
  br i1 %584, label %then170, label %else171
then170:
  %585 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %585
else171:
  br label %merge172
merge172:
  %586 = call { i64, i8* }* @nyx_array_new_ptr()
  %587 = alloca { i64, i8* }*
  store { i64, i8* }* %586, { i64, i8* }** %587
  %588 = alloca i64
  store i64 0, i64* %588
  %589 = call i8* @llvm.stacksave()
  br label %while_cond173
while_cond173:
  %590 = load i64, i64* %588
  %591 = load i64, i64* %509
  %592 = icmp slt i64 %590, %591
  br i1 %592, label %while_body174, label %while_end175
while_body174:
  call void @llvm.stackrestore(i8* %589)
  %593 = load { i64, i8* }*, { i64, i8* }** %587
  %594 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %595 = load i64, i64* %588
  %596 = call i64 @nyx_array_get({ i64, i8* }* %594, i64 %595)
  %597 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %598 = load i64, i64* %588
  %599 = call i64 @nyx_array_get_tag({ i64, i8* }* %597, i64 %598)
  call void @nyx_array_push_tagged({ i64, i8* }* %593, i64 %596, i64 %599)
  %600 = load i64, i64* %588
  %601 = add i64 %600, 1
  store i64 %601, i64* %588
  br label %while_cond173
while_end175:
  %602 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %603 = alloca { i64, i8* }*
  store { i64, i8* }* %602, { i64, i8* }** %603
  %604 = load { i64, i8* }*, { i64, i8* }** %587
  %605 = alloca { i64, i8* }*
  store { i64, i8* }* %604, { i64, i8* }** %605
  %606 = alloca i1
  store i1 1, i1* %606
  %607 = load i64, i64* %513
  %608 = alloca i64
  store i64 %607, i64* %608
  %609 = call i8* @llvm.stacksave()
  br label %while_cond176
while_cond176:
  %610 = load i64, i64* %608
  %611 = load i64, i64* %509
  %612 = icmp slt i64 %610, %611
  br i1 %612, label %while_body177, label %while_end178
while_body177:
  call void @llvm.stackrestore(i8* %609)
  %613 = alloca i64
  store i64 0, i64* %613
  %614 = call i8* @llvm.stacksave()
  br label %while_cond179
while_cond179:
  %615 = load i64, i64* %613
  %616 = load i64, i64* %509
  %617 = icmp slt i64 %615, %616
  br i1 %617, label %while_body180, label %while_end181
while_body180:
  call void @llvm.stackrestore(i8* %614)
  %618 = load i64, i64* %613
  %619 = load i64, i64* %608
  %620 = add i64 %618, %619
  %621 = alloca i64
  store i64 %620, i64* %621
  %622 = load i64, i64* %621
  %623 = load i64, i64* %509
  %624 = icmp sgt i64 %622, %623
  br i1 %624, label %then182, label %else183
then182:
  %625 = load i64, i64* %509
  store i64 %625, i64* %621
  br label %merge184
else183:
  br label %merge184
merge184:
  %626 = load i64, i64* %613
  %627 = load i64, i64* %608
  %628 = mul i64 2, %627
  %629 = add i64 %626, %628
  %630 = alloca i64
  store i64 %629, i64* %630
  %631 = load i64, i64* %630
  %632 = load i64, i64* %509
  %633 = icmp sgt i64 %631, %632
  br i1 %633, label %then185, label %else186
then185:
  %634 = load i64, i64* %509
  store i64 %634, i64* %630
  br label %merge187
else186:
  br label %merge187
merge187:
  %635 = load i64, i64* %613
  %636 = alloca i64
  store i64 %635, i64* %636
  %637 = load i64, i64* %621
  %638 = alloca i64
  store i64 %637, i64* %638
  %639 = load i64, i64* %613
  %640 = alloca i64
  store i64 %639, i64* %640
  %641 = call i8* @llvm.stacksave()
  br label %while_cond188
while_cond188:
  %642 = alloca i1
  store i1 false, i1* %642
  %643 = load i64, i64* %636
  %644 = load i64, i64* %621
  %645 = icmp slt i64 %643, %644
  br i1 %645, label %sc_and_rhs191, label %sc_and_end192
sc_and_rhs191:
  %646 = load i64, i64* %638
  %647 = load i64, i64* %630
  %648 = icmp slt i64 %646, %647
  store i1 %648, i1* %642
  br label %sc_and_end192
sc_and_end192:
  %649 = load i1, i1* %642
  br i1 %649, label %while_body189, label %while_end190
while_body189:
  call void @llvm.stackrestore(i8* %641)
  %650 = load { i64, i8* }*, { i64, i8* }** %603
  %651 = load i64, i64* %636
  %652 = load { i64, i8* }*, { i64, i8* }** %603
  %653 = load i64, i64* %638
  %654 = load i64, i64* %modo.ptr
  %655 = load i8*, i8** %cmp.ptr
  %656 = call i64 @__sort_cmp({ i64, i8* }* %650, i64 %651, { i64, i8* }* %652, i64 %653, i64 %654, i8* %655)
  %657 = icmp sle i64 %656, 0
  br i1 %657, label %then193, label %else194
then193:
  %658 = load { i64, i8* }*, { i64, i8* }** %605
  %659 = load i64, i64* %640
  %660 = load { i64, i8* }*, { i64, i8* }** %603
  %661 = load i64, i64* %636
  %662 = call i64 @nyx_array_get({ i64, i8* }* %660, i64 %661)
  %663 = load { i64, i8* }*, { i64, i8* }** %603
  %664 = load i64, i64* %636
  %665 = call i64 @nyx_array_get_tag({ i64, i8* }* %663, i64 %664)
  call void @nyx_array_set_tagged({ i64, i8* }* %658, i64 %659, i64 %662, i64 %665)
  %666 = load i64, i64* %636
  %667 = add i64 %666, 1
  store i64 %667, i64* %636
  br label %merge195
else194:
  %668 = load { i64, i8* }*, { i64, i8* }** %605
  %669 = load i64, i64* %640
  %670 = load { i64, i8* }*, { i64, i8* }** %603
  %671 = load i64, i64* %638
  %672 = call i64 @nyx_array_get({ i64, i8* }* %670, i64 %671)
  %673 = load { i64, i8* }*, { i64, i8* }** %603
  %674 = load i64, i64* %638
  %675 = call i64 @nyx_array_get_tag({ i64, i8* }* %673, i64 %674)
  call void @nyx_array_set_tagged({ i64, i8* }* %668, i64 %669, i64 %672, i64 %675)
  %676 = load i64, i64* %638
  %677 = add i64 %676, 1
  store i64 %677, i64* %638
  br label %merge195
merge195:
  %678 = load i64, i64* %640
  %679 = add i64 %678, 1
  store i64 %679, i64* %640
  br label %while_cond188
while_end190:
  %680 = call i8* @llvm.stacksave()
  br label %while_cond196
while_cond196:
  %681 = load i64, i64* %636
  %682 = load i64, i64* %621
  %683 = icmp slt i64 %681, %682
  br i1 %683, label %while_body197, label %while_end198
while_body197:
  call void @llvm.stackrestore(i8* %680)
  %684 = load { i64, i8* }*, { i64, i8* }** %605
  %685 = load i64, i64* %640
  %686 = load { i64, i8* }*, { i64, i8* }** %603
  %687 = load i64, i64* %636
  %688 = call i64 @nyx_array_get({ i64, i8* }* %686, i64 %687)
  %689 = load { i64, i8* }*, { i64, i8* }** %603
  %690 = load i64, i64* %636
  %691 = call i64 @nyx_array_get_tag({ i64, i8* }* %689, i64 %690)
  call void @nyx_array_set_tagged({ i64, i8* }* %684, i64 %685, i64 %688, i64 %691)
  %692 = load i64, i64* %636
  %693 = add i64 %692, 1
  store i64 %693, i64* %636
  %694 = load i64, i64* %640
  %695 = add i64 %694, 1
  store i64 %695, i64* %640
  br label %while_cond196
while_end198:
  %696 = call i8* @llvm.stacksave()
  br label %while_cond199
while_cond199:
  %697 = load i64, i64* %638
  %698 = load i64, i64* %630
  %699 = icmp slt i64 %697, %698
  br i1 %699, label %while_body200, label %while_end201
while_body200:
  call void @llvm.stackrestore(i8* %696)
  %700 = load { i64, i8* }*, { i64, i8* }** %605
  %701 = load i64, i64* %640
  %702 = load { i64, i8* }*, { i64, i8* }** %603
  %703 = load i64, i64* %638
  %704 = call i64 @nyx_array_get({ i64, i8* }* %702, i64 %703)
  %705 = load { i64, i8* }*, { i64, i8* }** %603
  %706 = load i64, i64* %638
  %707 = call i64 @nyx_array_get_tag({ i64, i8* }* %705, i64 %706)
  call void @nyx_array_set_tagged({ i64, i8* }* %700, i64 %701, i64 %704, i64 %707)
  %708 = load i64, i64* %638
  %709 = add i64 %708, 1
  store i64 %709, i64* %638
  %710 = load i64, i64* %640
  %711 = add i64 %710, 1
  store i64 %711, i64* %640
  br label %while_cond199
while_end201:
  %712 = load i64, i64* %630
  store i64 %712, i64* %613
  br label %while_cond179
while_end181:
  %713 = load { i64, i8* }*, { i64, i8* }** %603
  %714 = alloca { i64, i8* }*
  store { i64, i8* }* %713, { i64, i8* }** %714
  %715 = load { i64, i8* }*, { i64, i8* }** %605
  store { i64, i8* }* %715, { i64, i8* }** %603
  %716 = load { i64, i8* }*, { i64, i8* }** %714
  store { i64, i8* }* %716, { i64, i8* }** %605
  %717 = load i1, i1* %606
  %718 = xor i1 %717, true
  store i1 %718, i1* %606
  %719 = load i64, i64* %608
  %720 = mul i64 %719, 2
  store i64 %720, i64* %608
  br label %while_cond176
while_end178:
  %721 = load i1, i1* %606
  %722 = xor i1 %721, true
  br i1 %722, label %then202, label %else203
then202:
  %723 = alloca i64
  store i64 0, i64* %723
  %724 = call i8* @llvm.stacksave()
  br label %while_cond205
while_cond205:
  %725 = load i64, i64* %723
  %726 = load i64, i64* %509
  %727 = icmp slt i64 %725, %726
  br i1 %727, label %while_body206, label %while_end207
while_body206:
  call void @llvm.stackrestore(i8* %724)
  %728 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %729 = load i64, i64* %723
  %730 = load { i64, i8* }*, { i64, i8* }** %603
  %731 = load i64, i64* %723
  %732 = call i64 @nyx_array_get({ i64, i8* }* %730, i64 %731)
  %733 = load { i64, i8* }*, { i64, i8* }** %603
  %734 = load i64, i64* %723
  %735 = call i64 @nyx_array_get_tag({ i64, i8* }* %733, i64 %734)
  call void @nyx_array_set_tagged({ i64, i8* }* %728, i64 %729, i64 %732, i64 %735)
  %736 = load i64, i64* %723
  %737 = add i64 %736, 1
  store i64 %737, i64* %723
  br label %while_cond205
while_end207:
  br label %merge204
else203:
  br label %merge204
merge204:
  %738 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %738
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
  %739 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %740 = call i8* @GC_malloc(i64 16)
  %741 = bitcast i8* %740 to { i8*, i8* }*
  %742 = bitcast i64 (...)* @__sort_sin_cmp to i8*
  %743 = getelementptr { i8*, i8* }, { i8*, i8* }* %741, i32 0, i32 0
  store i8* %742, i8** %743
  %744 = getelementptr { i8*, i8* }, { i8*, i8* }* %741, i32 0, i32 1
  store i8* null, i8** %744
  %745 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %739, i64 1, i8* %740)
  ret { i64, i8* }* %745
}

define %nyx_string* @read_text(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %746 = load %nyx_string*, %nyx_string** %path.ptr
  %747 = call i8* @nyx_string_to_cstr(%nyx_string* %746)
  %748 = call %nyx_string* @nyx_read_file(i8* %747)
  ret %nyx_string* %748
}

define i64 @write_text(
%nyx_string* %path.param, %nyx_string* %content.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %749 = load %nyx_string*, %nyx_string** %path.ptr
  %750 = load %nyx_string*, %nyx_string** %content.ptr
  %751 = ptrtoint %nyx_string* %750 to i64
  %752 = call i8* @nyx_string_to_cstr(%nyx_string* %749)
  %753 = inttoptr i64 %751 to %nyx_string*
  %754 = call i1 @nyx_write_file_safe(i8* %752, %nyx_string* %753)
  ret i64 0
}

define i8* @map_new(
) {
  %755 = call i8* @nyx_map_new(i32 0)
  ret i8* %755
}

define i64 @map_put(
i8* %m.param, %nyx_string* %k.param, i64 %v.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %756 = load i8*, i8** %m.ptr
  %757 = load %nyx_string*, %nyx_string** %k.ptr
  %758 = load i64, i64* %v.ptr
  %759 = call i8* @nyx_string_to_cstr(%nyx_string* %757)
  call void @nyx_map_insert_int(i8* %756, i8* %759, i64 %758)
  ret i64 0
}

define i64 @map_get_int(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %760 = load i8*, i8** %m.ptr
  %761 = load %nyx_string*, %nyx_string** %k.ptr
  %762 = call i8* @nyx_string_to_cstr(%nyx_string* %761)
  %763 = call i64 @nyx_map_get_int(i8* %760, i8* %762)
  ret i64 %763
}

define i1 @map_has(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %764 = load i8*, i8** %m.ptr
  %765 = load %nyx_string*, %nyx_string** %k.ptr
  %766 = call i8* @nyx_string_to_cstr(%nyx_string* %765)
  %767 = call i1 @nyx_map_contains_str(i8* %764, i8* %766)
  ret i1 %767
}

define internal i64 @map_size(
i8* %m.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %768 = load i8*, i8** %m.ptr
  %769 = call i64 @nyx_map_length(i8* %768)
  ret i64 %769
}

define %Error @err_new(
i64 %code.param, %nyx_string* %kind.param, %nyx_string* %msg.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %770 = getelementptr %Error, %Error* null, i32 1
  %771 = ptrtoint %Error* %770 to i64
  %772 = call i8* @GC_malloc(i64 %771)
  %773 = bitcast i8* %772 to %Error*
  %774 = load i64, i64* %code.ptr
  %775 = getelementptr %Error, %Error* %773, i32 0, i32 0
  store i64 %774, i64* %775
  %776 = load %nyx_string*, %nyx_string** %kind.ptr
  %777 = getelementptr %Error, %Error* %773, i32 0, i32 1
  store %nyx_string* %776, %nyx_string** %777
  %778 = load %nyx_string*, %nyx_string** %msg.ptr
  %779 = getelementptr %Error, %Error* %773, i32 0, i32 2
  store %nyx_string* %778, %nyx_string** %779
  %780 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %780, i64 0)
  %782 = getelementptr %Error, %Error* %773, i32 0, i32 3
  store %nyx_string* %781, %nyx_string** %782
  %783 = load %Error, %Error* %773
  ret %Error %783
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
  %784 = getelementptr %Error, %Error* null, i32 1
  %785 = ptrtoint %Error* %784 to i64
  %786 = call i8* @GC_malloc(i64 %785)
  %787 = bitcast i8* %786 to %Error*
  %788 = load i64, i64* %code.ptr
  %789 = getelementptr %Error, %Error* %787, i32 0, i32 0
  store i64 %788, i64* %789
  %790 = load %nyx_string*, %nyx_string** %kind.ptr
  %791 = getelementptr %Error, %Error* %787, i32 0, i32 1
  store %nyx_string* %790, %nyx_string** %791
  %792 = load %nyx_string*, %nyx_string** %msg.ptr
  %793 = getelementptr %Error, %Error* %787, i32 0, i32 2
  store %nyx_string* %792, %nyx_string** %793
  %794 = load %nyx_string*, %nyx_string** %stage.ptr
  %795 = getelementptr %Error, %Error* %787, i32 0, i32 3
  store %nyx_string* %794, %nyx_string** %795
  %796 = load %Error, %Error* %787
  ret %Error %796
}

define %nyx_string* @errno_to_kind(
i64 %code.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %797 = load i64, i64* %code.ptr
  %798 = icmp eq i64 %797, 2
  br i1 %798, label %then208, label %else209
then208:
  %799 = getelementptr [10 x i8], [10 x i8]* @.str3, i32 0, i32 0
  %800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %799, i64 9)
  ret %nyx_string* %800
else209:
  br label %merge210
merge210:
  %801 = load i64, i64* %code.ptr
  %802 = icmp eq i64 %801, 13
  br i1 %802, label %then211, label %else212
then211:
  %803 = getelementptr [11 x i8], [11 x i8]* @.str4, i32 0, i32 0
  %804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %803, i64 10)
  ret %nyx_string* %804
else212:
  br label %merge213
merge213:
  %805 = load i64, i64* %code.ptr
  %806 = icmp eq i64 %805, 12
  br i1 %806, label %then214, label %else215
then214:
  %807 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %807, i64 3)
  ret %nyx_string* %808
else215:
  br label %merge216
merge216:
  %809 = load i64, i64* %code.ptr
  %810 = icmp eq i64 %809, 22
  br i1 %810, label %then217, label %else218
then217:
  %811 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %811, i64 7)
  ret %nyx_string* %812
else218:
  br label %merge219
merge219:
  %813 = load i64, i64* %code.ptr
  %814 = icmp eq i64 %813, 110
  br i1 %814, label %then220, label %else221
then220:
  %815 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %815, i64 7)
  ret %nyx_string* %816
else221:
  br label %merge222
merge222:
  %817 = load i64, i64* %code.ptr
  %818 = icmp eq i64 %817, 111
  br i1 %818, label %then223, label %else224
then223:
  %819 = getelementptr [11 x i8], [11 x i8]* @.str8, i32 0, i32 0
  %820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %819, i64 10)
  ret %nyx_string* %820
else224:
  br label %merge225
merge225:
  %821 = load i64, i64* %code.ptr
  %822 = icmp eq i64 %821, 98
  br i1 %822, label %then226, label %else227
then226:
  %823 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %823, i64 6)
  ret %nyx_string* %824
else227:
  br label %merge228
merge228:
  %825 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %825, i64 2)
  ret %nyx_string* %826
}

define %nyx_string* @error_to_string(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %827 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %828 = load %nyx_string*, %nyx_string** %827
  %829 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %829, i64 2)
  %831 = call %nyx_string* @nyx_string_concat(%nyx_string* %828, %nyx_string* %830)
  %832 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 2
  %833 = load %nyx_string*, %nyx_string** %832
  %834 = call %nyx_string* @nyx_string_concat(%nyx_string* %831, %nyx_string* %833)
  %835 = getelementptr [8 x i8], [8 x i8]* @.str12, i32 0, i32 0
  %836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %835, i64 7)
  %837 = call %nyx_string* @nyx_string_concat(%nyx_string* %834, %nyx_string* %836)
  %838 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 0
  %839 = load i64, i64* %838
  %840 = call %nyx_string* @nyx_string_from_int(i64 %839)
  %841 = call %nyx_string* @nyx_string_concat(%nyx_string* %837, %nyx_string* %840)
  %842 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %842, i64 1)
  %844 = call %nyx_string* @nyx_string_concat(%nyx_string* %841, %nyx_string* %843)
  ret %nyx_string* %844
}

define i1 @is_eof(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %845 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %846 = load %nyx_string*, %nyx_string** %845
  %847 = getelementptr [4 x i8], [4 x i8]* @.str14, i32 0, i32 0
  %848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %847, i64 3)
  %849 = call i1 @nyx_string_equals(%nyx_string* %846, %nyx_string* %848)
  ret i1 %849
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %850 = load %nyx_string*, %nyx_string** %line.ptr
  %851 = call %nyx_string* @nyx_string_trim(%nyx_string* %850)
  %852 = alloca %nyx_string*
  store %nyx_string* %851, %nyx_string** %852
  %853 = sub i64 0, 1
  %854 = alloca i64
  store i64 %853, i64* %854
  %855 = alloca i64
  store i64 0, i64* %855
  %856 = call i8* @llvm.stacksave()
  br label %while_cond229
while_cond229:
  %857 = load i64, i64* %855
  %858 = load %nyx_string*, %nyx_string** %852
  %859 = call i64 @nyx_string_byte_length(%nyx_string* %858)
  %860 = icmp slt i64 %857, %859
  br i1 %860, label %while_body230, label %while_end231
while_body230:
  call void @llvm.stackrestore(i8* %856)
  %861 = load %nyx_string*, %nyx_string** %852
  %862 = load i64, i64* %855
  %863 = call i8 @nyx_string_char_at(%nyx_string* %861, i64 %862)
  %864 = zext i8 %863 to i64
  %865 = icmp eq i64 %864, 61
  br i1 %865, label %then232, label %else233
then232:
  %866 = load i64, i64* %855
  store i64 %866, i64* %854
  %867 = load %nyx_string*, %nyx_string** %852
  %868 = call i64 @nyx_string_byte_length(%nyx_string* %867)
  store i64 %868, i64* %855
  br label %merge234
else233:
  %869 = load i64, i64* %855
  %870 = add i64 %869, 1
  store i64 %870, i64* %855
  br label %merge234
merge234:
  br label %while_cond229
while_end231:
  %871 = load i64, i64* %854
  %872 = icmp slt i64 %871, 0
  br i1 %872, label %then235, label %else236
then235:
  %873 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %873, i64 0)
  ret %nyx_string* %874
else236:
  br label %merge237
merge237:
  %875 = load %nyx_string*, %nyx_string** %852
  %876 = load i64, i64* %854
  %877 = add i64 %876, 1
  %878 = load %nyx_string*, %nyx_string** %852
  %879 = call i64 @nyx_string_byte_length(%nyx_string* %878)
  %880 = call %nyx_string* @nyx_string_substring(%nyx_string* %875, i64 %877, i64 %879)
  %881 = call %nyx_string* @nyx_string_trim(%nyx_string* %880)
  %882 = alloca %nyx_string*
  store %nyx_string* %881, %nyx_string** %882
  %883 = alloca i1
  store i1 false, i1* %883
  %884 = load %nyx_string*, %nyx_string** %882
  %885 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %885, i64 1)
  %887 = call i1 @nyx_string_starts_with(%nyx_string* %884, %nyx_string* %886)
  br i1 %887, label %sc_and_rhs238, label %sc_and_end239
sc_and_rhs238:
  %888 = load %nyx_string*, %nyx_string** %882
  %889 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %889, i64 1)
  %891 = call i1 @nyx_string_ends_with(%nyx_string* %888, %nyx_string* %890)
  store i1 %891, i1* %883
  br label %sc_and_end239
sc_and_end239:
  %892 = load i1, i1* %883
  br i1 %892, label %then240, label %else241
then240:
  %893 = load %nyx_string*, %nyx_string** %882
  %894 = load %nyx_string*, %nyx_string** %882
  %895 = call i64 @nyx_string_byte_length(%nyx_string* %894)
  %896 = sub i64 %895, 1
  %897 = call %nyx_string* @nyx_string_substring(%nyx_string* %893, i64 1, i64 %896)
  ret %nyx_string* %897
else241:
  br label %merge242
merge242:
  %898 = load %nyx_string*, %nyx_string** %882
  ret %nyx_string* %898
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %899 = load %nyx_string*, %nyx_string** %line.ptr
  %900 = call %nyx_string* @nyx_string_trim(%nyx_string* %899)
  %901 = alloca %nyx_string*
  store %nyx_string* %900, %nyx_string** %901
  %902 = sub i64 0, 1
  %903 = alloca i64
  store i64 %902, i64* %903
  %904 = alloca i64
  store i64 0, i64* %904
  %905 = call i8* @llvm.stacksave()
  br label %while_cond243
while_cond243:
  %906 = load i64, i64* %904
  %907 = load %nyx_string*, %nyx_string** %901
  %908 = call i64 @nyx_string_byte_length(%nyx_string* %907)
  %909 = icmp slt i64 %906, %908
  br i1 %909, label %while_body244, label %while_end245
while_body244:
  call void @llvm.stackrestore(i8* %905)
  %910 = load %nyx_string*, %nyx_string** %901
  %911 = load i64, i64* %904
  %912 = call i8 @nyx_string_char_at(%nyx_string* %910, i64 %911)
  %913 = zext i8 %912 to i64
  %914 = icmp eq i64 %913, 61
  br i1 %914, label %then246, label %else247
then246:
  %915 = load i64, i64* %904
  store i64 %915, i64* %903
  %916 = load %nyx_string*, %nyx_string** %901
  %917 = call i64 @nyx_string_byte_length(%nyx_string* %916)
  store i64 %917, i64* %904
  br label %merge248
else247:
  %918 = load i64, i64* %904
  %919 = add i64 %918, 1
  store i64 %919, i64* %904
  br label %merge248
merge248:
  br label %while_cond243
while_end245:
  %920 = load i64, i64* %903
  %921 = icmp slt i64 %920, 0
  br i1 %921, label %then249, label %else250
then249:
  %922 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %922, i64 0)
  ret %nyx_string* %923
else250:
  br label %merge251
merge251:
  %924 = load %nyx_string*, %nyx_string** %901
  %925 = load i64, i64* %903
  %926 = call %nyx_string* @nyx_string_substring(%nyx_string* %924, i64 0, i64 %925)
  %927 = call %nyx_string* @nyx_string_trim(%nyx_string* %926)
  ret %nyx_string* %927
}

define internal %TestConfig @load_test_config(
) {
  %928 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %929 = ptrtoint %TestConfig* %928 to i64
  %930 = call i8* @GC_malloc(i64 %929)
  %931 = bitcast i8* %930 to %TestConfig*
  %932 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %932, i64 5)
  %934 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 0
  store %nyx_string* %933, %nyx_string** %934
  %935 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 1
  store i64 30, i64* %935
  %936 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %936, i64 0)
  %938 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 2
  store %nyx_string* %937, %nyx_string** %938
  %939 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 3
  store i1 0, i1* %939
  %940 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %940, i64 0)
  %942 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 4
  store %nyx_string* %941, %nyx_string** %942
  %943 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 5
  store i1 0, i1* %943
  %944 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 6
  store i1 0, i1* %944
  %945 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 7
  store i1 0, i1* %945
  %946 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %946, i64 0)
  %948 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 8
  store %nyx_string* %947, %nyx_string** %948
  %949 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %949, i64 0)
  %951 = getelementptr %TestConfig, %TestConfig* %931, i32 0, i32 9
  store %nyx_string* %950, %nyx_string** %951
  %952 = load %TestConfig, %TestConfig* %931
  %953 = alloca %TestConfig
  store %TestConfig %952, %TestConfig* %953
  %954 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %954, i64 8)
  %956 = call i8* @nyx_string_to_cstr(%nyx_string* %955)
  %957 = call i1 @nyx_file_exists(i8* %956)
  %958 = xor i1 %957, true
  br i1 %958, label %then252, label %else253
then252:
  %959 = load %TestConfig, %TestConfig* %953
  ret %TestConfig %959
else253:
  br label %merge254
merge254:
  %960 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %960, i64 8)
  %962 = call i8* @nyx_string_to_cstr(%nyx_string* %961)
  %963 = call %nyx_string* @nyx_read_file(i8* %962)
  %964 = alloca %nyx_string*
  store %nyx_string* %963, %nyx_string** %964
  %965 = load %nyx_string*, %nyx_string** %964
  %966 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %966, i64 1)
  %968 = call { i64, i8* }* @nyx_string_split(%nyx_string* %965, %nyx_string* %967)
  %969 = alloca { i64, i8* }*
  store { i64, i8* }* %968, { i64, i8* }** %969
  %970 = alloca i1
  store i1 0, i1* %970
  %971 = alloca i1
  store i1 0, i1* %971
  %972 = alloca i64
  store i64 0, i64* %972
  %973 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %973, i64 6)
  %975 = alloca %nyx_string*
  store %nyx_string* %974, %nyx_string** %975
  %976 = getelementptr [2 x i8], [2 x i8]* @.str28, i32 0, i32 0
  %977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %976, i64 1)
  %978 = alloca %nyx_string*
  store %nyx_string* %977, %nyx_string** %978
  %979 = getelementptr [6 x i8], [6 x i8]* @.str29, i32 0, i32 0
  %980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %979, i64 5)
  %981 = alloca %nyx_string*
  store %nyx_string* %980, %nyx_string** %981
  %982 = getelementptr [8 x i8], [8 x i8]* @.str30, i32 0, i32 0
  %983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %982, i64 7)
  %984 = alloca %nyx_string*
  store %nyx_string* %983, %nyx_string** %984
  %985 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %985, i64 1)
  %987 = alloca %nyx_string*
  store %nyx_string* %986, %nyx_string** %987
  %988 = getelementptr [1 x i8], [1 x i8]* @.str32, i32 0, i32 0
  %989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %988, i64 0)
  %990 = alloca %nyx_string*
  store %nyx_string* %989, %nyx_string** %990
  %991 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %991, i64 1)
  %993 = alloca %nyx_string*
  store %nyx_string* %992, %nyx_string** %993
  %994 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %994, i64 1)
  %996 = alloca %nyx_string*
  store %nyx_string* %995, %nyx_string** %996
  %997 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %997, i64 1)
  %999 = alloca %nyx_string*
  store %nyx_string* %998, %nyx_string** %999
  %1000 = getelementptr [4 x i8], [4 x i8]* @.str36, i32 0, i32 0
  %1001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %1000, i64 3)
  %1002 = alloca %nyx_string*
  store %nyx_string* %1001, %nyx_string** %1002
  %1003 = getelementptr [8 x i8], [8 x i8]* @.str37, i32 0, i32 0
  %1004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %1003, i64 7)
  %1005 = alloca %nyx_string*
  store %nyx_string* %1004, %nyx_string** %1005
  %1006 = call i8* @llvm.stacksave()
  br label %while_cond255
while_cond255:
  %1007 = load i64, i64* %972
  %1008 = load { i64, i8* }*, { i64, i8* }** %969
  %1009 = call i64 @nyx_array_length({ i64, i8* }* %1008)
  %1010 = icmp slt i64 %1007, %1009
  br i1 %1010, label %while_body256, label %while_end257
while_body256:
  call void @llvm.stackrestore(i8* %1006)
  %1011 = load { i64, i8* }*, { i64, i8* }** %969
  %1012 = load i64, i64* %972
  %1013 = call i64 @nyx_array_get_checked({ i64, i8* }* %1011, i64 %1012, i64 2)
  %1014 = inttoptr i64 %1013 to %nyx_string*
  %1015 = alloca %nyx_string*
  store %nyx_string* %1014, %nyx_string** %1015
  %1016 = load %nyx_string*, %nyx_string** %1015
  %1017 = call %nyx_string* @nyx_string_trim(%nyx_string* %1016)
  %1018 = alloca %nyx_string*
  store %nyx_string* %1017, %nyx_string** %1018
  %1019 = load %nyx_string*, %nyx_string** %1018
  %1020 = load %nyx_string*, %nyx_string** %975
  %1021 = call i1 @nyx_string_equals(%nyx_string* %1019, %nyx_string* %1020)
  br i1 %1021, label %then258, label %else259
then258:
  store i1 1, i1* %970
  br label %merge260
else259:
  %1022 = load %nyx_string*, %nyx_string** %1018
  %1023 = load %nyx_string*, %nyx_string** %978
  %1024 = call i1 @nyx_string_starts_with(%nyx_string* %1022, %nyx_string* %1023)
  br i1 %1024, label %then261, label %else262
then261:
  store i1 0, i1* %970
  %1025 = load %nyx_string*, %nyx_string** %1018
  %1026 = load %nyx_string*, %nyx_string** %981
  %1027 = call i1 @nyx_string_equals(%nyx_string* %1025, %nyx_string* %1026)
  store i1 %1027, i1* %971
  br label %merge263
else262:
  %1028 = alloca i1
  store i1 false, i1* %1028
  %1029 = load i1, i1* %971
  br i1 %1029, label %sc_and_rhs264, label %sc_and_end265
sc_and_rhs264:
  %1030 = load %nyx_string*, %nyx_string** %1018
  %1031 = call %nyx_string* @parse_toml_key(%nyx_string* %1030)
  %1032 = load %nyx_string*, %nyx_string** %984
  %1033 = call i1 @nyx_string_equals(%nyx_string* %1031, %nyx_string* %1032)
  store i1 %1033, i1* %1028
  br label %sc_and_end265
sc_and_end265:
  %1034 = load i1, i1* %1028
  br i1 %1034, label %then266, label %else267
then266:
  %1035 = load %nyx_string*, %nyx_string** %1018
  %1036 = load %nyx_string*, %nyx_string** %1018
  %1037 = load %nyx_string*, %nyx_string** %987
  %1038 = call i64 @nyx_string_index_of(%nyx_string* %1036, %nyx_string* %1037)
  %1039 = add i64 %1038, 1
  %1040 = load %nyx_string*, %nyx_string** %1018
  %1041 = call i64 @nyx_string_byte_length(%nyx_string* %1040)
  %1042 = call %nyx_string* @nyx_string_substring(%nyx_string* %1035, i64 %1039, i64 %1041)
  %1043 = call %nyx_string* @nyx_string_trim(%nyx_string* %1042)
  %1044 = alloca %nyx_string*
  store %nyx_string* %1043, %nyx_string** %1044
  %1045 = load %nyx_string*, %nyx_string** %1044
  %1046 = load %nyx_string*, %nyx_string** %978
  %1047 = load %nyx_string*, %nyx_string** %990
  %1048 = call %nyx_string* @nyx_string_replace(%nyx_string* %1045, %nyx_string* %1046, %nyx_string* %1047)
  %1049 = load %nyx_string*, %nyx_string** %993
  %1050 = load %nyx_string*, %nyx_string** %990
  %1051 = call %nyx_string* @nyx_string_replace(%nyx_string* %1048, %nyx_string* %1049, %nyx_string* %1050)
  %1052 = load %nyx_string*, %nyx_string** %996
  %1053 = load %nyx_string*, %nyx_string** %990
  %1054 = call %nyx_string* @nyx_string_replace(%nyx_string* %1051, %nyx_string* %1052, %nyx_string* %1053)
  %1055 = load %nyx_string*, %nyx_string** %999
  %1056 = load %nyx_string*, %nyx_string** %990
  %1057 = call %nyx_string* @nyx_string_replace(%nyx_string* %1054, %nyx_string* %1055, %nyx_string* %1056)
  store %nyx_string* %1057, %nyx_string** %1044
  %1058 = load %nyx_string*, %nyx_string** %1044
  %1059 = getelementptr %TestConfig, %TestConfig* %953, i32 0, i32 8
  store %nyx_string* %1058, %nyx_string** %1059
  br label %merge268
else267:
  %1060 = load i1, i1* %970
  br i1 %1060, label %then269, label %else270
then269:
  %1061 = load %nyx_string*, %nyx_string** %1018
  %1062 = call %nyx_string* @parse_toml_key(%nyx_string* %1061)
  %1063 = alloca %nyx_string*
  store %nyx_string* %1062, %nyx_string** %1063
  %1064 = load %nyx_string*, %nyx_string** %1018
  %1065 = call %nyx_string* @parse_toml_value(%nyx_string* %1064)
  %1066 = alloca %nyx_string*
  store %nyx_string* %1065, %nyx_string** %1066
  %1067 = load %nyx_string*, %nyx_string** %1063
  %1068 = load %nyx_string*, %nyx_string** %1002
  %1069 = call i1 @nyx_string_equals(%nyx_string* %1067, %nyx_string* %1068)
  br i1 %1069, label %then272, label %else273
then272:
  %1070 = load %nyx_string*, %nyx_string** %1066
  %1071 = getelementptr %TestConfig, %TestConfig* %953, i32 0, i32 0
  store %nyx_string* %1070, %nyx_string** %1071
  br label %merge274
else273:
  br label %merge274
merge274:
  %1072 = load %nyx_string*, %nyx_string** %1063
  %1073 = load %nyx_string*, %nyx_string** %1005
  %1074 = call i1 @nyx_string_equals(%nyx_string* %1072, %nyx_string* %1073)
  br i1 %1074, label %then275, label %else276
then275:
  %1075 = load %nyx_string*, %nyx_string** %1066
  %1076 = call i64 @nyx_string_to_int(%nyx_string* %1075)
  %1077 = getelementptr %TestConfig, %TestConfig* %953, i32 0, i32 1
  store i64 %1076, i64* %1077
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
  %1078 = load i64, i64* %972
  %1079 = add i64 %1078, 1
  store i64 %1079, i64* %972
  br label %while_cond255
while_end257:
  %1080 = load %TestConfig, %TestConfig* %953
  ret %TestConfig %1080
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %1081 = call { i64, i8* }* @nyx_array_new_ptr()
  %1082 = alloca { i64, i8* }*
  store { i64, i8* }* %1081, { i64, i8* }** %1082
  %1083 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1084 = load %nyx_string*, %nyx_string** %1083
  %1085 = call i8* @nyx_string_to_cstr(%nyx_string* %1084)
  %1086 = call i1 @nyx_file_exists(i8* %1085)
  br i1 %1086, label %then278, label %else279
then278:
  %1087 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1088 = load %nyx_string*, %nyx_string** %1087
  %1089 = call i8* @nyx_string_to_cstr(%nyx_string* %1088)
  %1090 = call { i64, i8* }* @nyx_readdir(i8* %1089)
  %1091 = alloca { i64, i8* }*
  store { i64, i8* }* %1090, { i64, i8* }** %1091
  %1092 = alloca i64
  store i64 0, i64* %1092
  %1093 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %1094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %1093, i64 3)
  %1095 = alloca %nyx_string*
  store %nyx_string* %1094, %nyx_string** %1095
  %1096 = getelementptr [2 x i8], [2 x i8]* @.str39, i32 0, i32 0
  %1097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %1096, i64 1)
  %1098 = alloca %nyx_string*
  store %nyx_string* %1097, %nyx_string** %1098
  %1099 = getelementptr [1 x i8], [1 x i8]* @.str40, i32 0, i32 0
  %1100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %1099, i64 0)
  %1101 = alloca %nyx_string*
  store %nyx_string* %1100, %nyx_string** %1101
  %1102 = call i8* @llvm.stacksave()
  br label %while_cond281
while_cond281:
  %1103 = load i64, i64* %1092
  %1104 = load { i64, i8* }*, { i64, i8* }** %1091
  %1105 = call i64 @nyx_array_length({ i64, i8* }* %1104)
  %1106 = icmp slt i64 %1103, %1105
  br i1 %1106, label %while_body282, label %while_end283
while_body282:
  call void @llvm.stackrestore(i8* %1102)
  %1107 = load { i64, i8* }*, { i64, i8* }** %1091
  %1108 = load i64, i64* %1092
  %1109 = call i64 @nyx_array_get_checked({ i64, i8* }* %1107, i64 %1108, i64 2)
  %1110 = inttoptr i64 %1109 to %nyx_string*
  %1111 = alloca %nyx_string*
  store %nyx_string* %1110, %nyx_string** %1111
  %1112 = load %nyx_string*, %nyx_string** %1111
  %1113 = load %nyx_string*, %nyx_string** %1095
  %1114 = call i1 @nyx_string_ends_with(%nyx_string* %1112, %nyx_string* %1113)
  br i1 %1114, label %then284, label %else285
then284:
  %1115 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1116 = load %nyx_string*, %nyx_string** %1115
  %1117 = load %nyx_string*, %nyx_string** %1098
  %1118 = call %nyx_string* @nyx_string_concat(%nyx_string* %1116, %nyx_string* %1117)
  %1119 = load %nyx_string*, %nyx_string** %1111
  %1120 = call %nyx_string* @nyx_string_concat(%nyx_string* %1118, %nyx_string* %1119)
  %1121 = alloca %nyx_string*
  store %nyx_string* %1120, %nyx_string** %1121
  %1122 = alloca i1
  store i1 true, i1* %1122
  %1123 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1124 = load %nyx_string*, %nyx_string** %1123
  %1125 = load %nyx_string*, %nyx_string** %1101
  %1126 = call i1 @nyx_string_equals(%nyx_string* %1124, %nyx_string* %1125)
  br i1 %1126, label %sc_or_end288, label %sc_or_rhs287
sc_or_rhs287:
  %1127 = load %nyx_string*, %nyx_string** %1111
  %1128 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1129 = load %nyx_string*, %nyx_string** %1128
  %1130 = call i1 @nyx_string_contains(%nyx_string* %1127, %nyx_string* %1129)
  store i1 %1130, i1* %1122
  br label %sc_or_end288
sc_or_end288:
  %1131 = load i1, i1* %1122
  br i1 %1131, label %then289, label %else290
then289:
  %1132 = load { i64, i8* }*, { i64, i8* }** %1082
  %1133 = load %nyx_string*, %nyx_string** %1121
  %1134 = ptrtoint %nyx_string* %1133 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1132, i64 %1134, i64 2)
  br label %merge291
else290:
  br label %merge291
merge291:
  br label %merge286
else285:
  br label %merge286
merge286:
  %1135 = load i64, i64* %1092
  %1136 = add i64 %1135, 1
  store i64 %1136, i64* %1092
  br label %while_cond281
while_end283:
  br label %merge280
else279:
  br label %merge280
merge280:
  %1137 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %1137, i64 3)
  %1139 = call i8* @nyx_string_to_cstr(%nyx_string* %1138)
  %1140 = call i1 @nyx_file_exists(i8* %1139)
  br i1 %1140, label %then292, label %else293
then292:
  %1141 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %1142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %1141, i64 3)
  %1143 = call i8* @nyx_string_to_cstr(%nyx_string* %1142)
  %1144 = call { i64, i8* }* @nyx_readdir(i8* %1143)
  %1145 = alloca { i64, i8* }*
  store { i64, i8* }* %1144, { i64, i8* }** %1145
  %1146 = alloca i64
  store i64 0, i64* %1146
  %1147 = getelementptr [9 x i8], [9 x i8]* @.str43, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %1147, i64 8)
  %1149 = alloca %nyx_string*
  store %nyx_string* %1148, %nyx_string** %1149
  %1150 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %1151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %1150, i64 4)
  %1152 = alloca %nyx_string*
  store %nyx_string* %1151, %nyx_string** %1152
  %1153 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %1154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1153, i64 0)
  %1155 = alloca %nyx_string*
  store %nyx_string* %1154, %nyx_string** %1155
  %1156 = call i8* @llvm.stacksave()
  br label %while_cond295
while_cond295:
  %1157 = load i64, i64* %1146
  %1158 = load { i64, i8* }*, { i64, i8* }** %1145
  %1159 = call i64 @nyx_array_length({ i64, i8* }* %1158)
  %1160 = icmp slt i64 %1157, %1159
  br i1 %1160, label %while_body296, label %while_end297
while_body296:
  call void @llvm.stackrestore(i8* %1156)
  %1161 = load { i64, i8* }*, { i64, i8* }** %1145
  %1162 = load i64, i64* %1146
  %1163 = call i64 @nyx_array_get_checked({ i64, i8* }* %1161, i64 %1162, i64 2)
  %1164 = inttoptr i64 %1163 to %nyx_string*
  %1165 = alloca %nyx_string*
  store %nyx_string* %1164, %nyx_string** %1165
  %1166 = load %nyx_string*, %nyx_string** %1165
  %1167 = load %nyx_string*, %nyx_string** %1149
  %1168 = call i1 @nyx_string_ends_with(%nyx_string* %1166, %nyx_string* %1167)
  br i1 %1168, label %then298, label %else299
then298:
  %1169 = load %nyx_string*, %nyx_string** %1152
  %1170 = load %nyx_string*, %nyx_string** %1165
  %1171 = call %nyx_string* @nyx_string_concat(%nyx_string* %1169, %nyx_string* %1170)
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = alloca i1
  store i1 true, i1* %1173
  %1174 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1175 = load %nyx_string*, %nyx_string** %1174
  %1176 = load %nyx_string*, %nyx_string** %1155
  %1177 = call i1 @nyx_string_equals(%nyx_string* %1175, %nyx_string* %1176)
  br i1 %1177, label %sc_or_end302, label %sc_or_rhs301
sc_or_rhs301:
  %1178 = load %nyx_string*, %nyx_string** %1165
  %1179 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1180 = load %nyx_string*, %nyx_string** %1179
  %1181 = call i1 @nyx_string_contains(%nyx_string* %1178, %nyx_string* %1180)
  store i1 %1181, i1* %1173
  br label %sc_or_end302
sc_or_end302:
  %1182 = load i1, i1* %1173
  br i1 %1182, label %then303, label %else304
then303:
  %1183 = load { i64, i8* }*, { i64, i8* }** %1082
  %1184 = load %nyx_string*, %nyx_string** %1172
  %1185 = ptrtoint %nyx_string* %1184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1183, i64 %1185, i64 2)
  br label %merge305
else304:
  br label %merge305
merge305:
  br label %merge300
else299:
  br label %merge300
merge300:
  %1186 = load i64, i64* %1146
  %1187 = add i64 %1186, 1
  store i64 %1187, i64* %1146
  br label %while_cond295
while_end297:
  br label %merge294
else293:
  br label %merge294
merge294:
  %1188 = load { i64, i8* }*, { i64, i8* }** %1082
  %1189 = call { i64, i8* }* @sort_str({ i64, i8* }* %1188)
  ret { i64, i8* }* %1189
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1190 = load %nyx_string*, %nyx_string** %path.ptr
  %1191 = call i8* @nyx_string_to_cstr(%nyx_string* %1190)
  %1192 = call %nyx_string* @nyx_read_file(i8* %1191)
  %1193 = alloca %nyx_string*
  store %nyx_string* %1192, %nyx_string** %1193
  %1194 = load %nyx_string*, %nyx_string** %1193
  %1195 = getelementptr [7 x i8], [7 x i8]* @.str46, i32 0, i32 0
  %1196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1195, i64 6)
  %1197 = call i1 @nyx_string_contains(%nyx_string* %1194, %nyx_string* %1196)
  ret i1 %1197
}

define internal %nyx_string* @lib_modulo_de(
%nyx_string* %file.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %1198 = load %nyx_string*, %nyx_string** %file.ptr
  %1199 = alloca %nyx_string*
  store %nyx_string* %1198, %nyx_string** %1199
  %1200 = load %nyx_string*, %nyx_string** %1199
  %1201 = getelementptr [3 x i8], [3 x i8]* @.str47, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1201, i64 2)
  %1203 = call i1 @nyx_string_starts_with(%nyx_string* %1200, %nyx_string* %1202)
  br i1 %1203, label %then306, label %else307
then306:
  %1204 = load %nyx_string*, %nyx_string** %1199
  %1205 = load %nyx_string*, %nyx_string** %1199
  %1206 = call i64 @nyx_string_byte_length(%nyx_string* %1205)
  %1207 = call %nyx_string* @nyx_string_substring(%nyx_string* %1204, i64 2, i64 %1206)
  store %nyx_string* %1207, %nyx_string** %1199
  br label %merge308
else307:
  br label %merge308
merge308:
  %1208 = load %nyx_string*, %nyx_string** %1199
  %1209 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1209, i64 3)
  %1211 = call i1 @nyx_string_ends_with(%nyx_string* %1208, %nyx_string* %1210)
  br i1 %1211, label %then309, label %else310
then309:
  %1212 = load %nyx_string*, %nyx_string** %1199
  %1213 = load %nyx_string*, %nyx_string** %1199
  %1214 = call i64 @nyx_string_byte_length(%nyx_string* %1213)
  %1215 = sub i64 %1214, 3
  %1216 = call %nyx_string* @nyx_string_substring(%nyx_string* %1212, i64 0, i64 %1215)
  store %nyx_string* %1216, %nyx_string** %1199
  br label %merge311
else310:
  br label %merge311
merge311:
  %1217 = load %nyx_string*, %nyx_string** %1199
  ret %nyx_string* %1217
}

define internal %nyx_string* @rt_cache_sh(
) {
  %1218 = getelementptr [17 x i8], [17 x i8]* @.str49, i32 0, i32 0
  %1219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1218, i64 16)
  %1220 = alloca %nyx_string*
  store %nyx_string* %1219, %nyx_string** %1220
  %1221 = load %nyx_string*, %nyx_string** %1220
  %1222 = getelementptr [41 x i8], [41 x i8]* @.str50, i32 0, i32 0
  %1223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1222, i64 40)
  %1224 = call %nyx_string* @nyx_string_concat(%nyx_string* %1221, %nyx_string* %1223)
  store %nyx_string* %1224, %nyx_string** %1220
  %1225 = load %nyx_string*, %nyx_string** %1220
  %1226 = getelementptr [24 x i8], [24 x i8]* @.str51, i32 0, i32 0
  %1227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1226, i64 23)
  %1228 = call %nyx_string* @nyx_string_concat(%nyx_string* %1225, %nyx_string* %1227)
  store %nyx_string* %1228, %nyx_string** %1220
  %1229 = load %nyx_string*, %nyx_string** %1220
  %1230 = getelementptr [92 x i8], [92 x i8]* @.str52, i32 0, i32 0
  %1231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1230, i64 91)
  %1232 = call %nyx_string* @nyx_string_concat(%nyx_string* %1229, %nyx_string* %1231)
  store %nyx_string* %1232, %nyx_string** %1220
  %1233 = load %nyx_string*, %nyx_string** %1220
  %1234 = getelementptr [177 x i8], [177 x i8]* @.str53, i32 0, i32 0
  %1235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1234, i64 176)
  %1236 = call %nyx_string* @nyx_string_concat(%nyx_string* %1233, %nyx_string* %1235)
  store %nyx_string* %1236, %nyx_string** %1220
  %1237 = load %nyx_string*, %nyx_string** %1220
  %1238 = getelementptr [35 x i8], [35 x i8]* @.str54, i32 0, i32 0
  %1239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1238, i64 34)
  %1240 = call %nyx_string* @nyx_string_concat(%nyx_string* %1237, %nyx_string* %1239)
  store %nyx_string* %1240, %nyx_string** %1220
  %1241 = load %nyx_string*, %nyx_string** %1220
  %1242 = getelementptr [83 x i8], [83 x i8]* @.str55, i32 0, i32 0
  %1243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1242, i64 82)
  %1244 = call %nyx_string* @nyx_string_concat(%nyx_string* %1241, %nyx_string* %1243)
  store %nyx_string* %1244, %nyx_string** %1220
  %1245 = load %nyx_string*, %nyx_string** %1220
  %1246 = getelementptr [49 x i8], [49 x i8]* @.str56, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1246, i64 48)
  %1248 = call %nyx_string* @nyx_string_concat(%nyx_string* %1245, %nyx_string* %1247)
  store %nyx_string* %1248, %nyx_string** %1220
  %1249 = load %nyx_string*, %nyx_string** %1220
  %1250 = getelementptr [89 x i8], [89 x i8]* @.str57, i32 0, i32 0
  %1251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1250, i64 88)
  %1252 = call %nyx_string* @nyx_string_concat(%nyx_string* %1249, %nyx_string* %1251)
  store %nyx_string* %1252, %nyx_string** %1220
  %1253 = load %nyx_string*, %nyx_string** %1220
  %1254 = getelementptr [68 x i8], [68 x i8]* @.str58, i32 0, i32 0
  %1255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1254, i64 67)
  %1256 = call %nyx_string* @nyx_string_concat(%nyx_string* %1253, %nyx_string* %1255)
  store %nyx_string* %1256, %nyx_string** %1220
  %1257 = load %nyx_string*, %nyx_string** %1220
  %1258 = getelementptr [15 x i8], [15 x i8]* @.str59, i32 0, i32 0
  %1259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1258, i64 14)
  %1260 = call %nyx_string* @nyx_string_concat(%nyx_string* %1257, %nyx_string* %1259)
  store %nyx_string* %1260, %nyx_string** %1220
  %1261 = load %nyx_string*, %nyx_string** %1220
  %1262 = getelementptr [49 x i8], [49 x i8]* @.str60, i32 0, i32 0
  %1263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1262, i64 48)
  %1264 = call %nyx_string* @nyx_string_concat(%nyx_string* %1261, %nyx_string* %1263)
  store %nyx_string* %1264, %nyx_string** %1220
  %1265 = load %nyx_string*, %nyx_string** %1220
  %1266 = getelementptr [196 x i8], [196 x i8]* @.str61, i32 0, i32 0
  %1267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1266, i64 195)
  %1268 = call %nyx_string* @nyx_string_concat(%nyx_string* %1265, %nyx_string* %1267)
  store %nyx_string* %1268, %nyx_string** %1220
  %1269 = load %nyx_string*, %nyx_string** %1220
  %1270 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %1271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1270, i64 7)
  %1272 = call %nyx_string* @nyx_string_concat(%nyx_string* %1269, %nyx_string* %1271)
  store %nyx_string* %1272, %nyx_string** %1220
  %1273 = load %nyx_string*, %nyx_string** %1220
  %1274 = getelementptr [138 x i8], [138 x i8]* @.str63, i32 0, i32 0
  %1275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1274, i64 137)
  %1276 = call %nyx_string* @nyx_string_concat(%nyx_string* %1273, %nyx_string* %1275)
  store %nyx_string* %1276, %nyx_string** %1220
  %1277 = load %nyx_string*, %nyx_string** %1220
  %1278 = getelementptr [43 x i8], [43 x i8]* @.str64, i32 0, i32 0
  %1279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1278, i64 42)
  %1280 = call %nyx_string* @nyx_string_concat(%nyx_string* %1277, %nyx_string* %1279)
  store %nyx_string* %1280, %nyx_string** %1220
  %1281 = load %nyx_string*, %nyx_string** %1220
  %1282 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %1283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1282, i64 5)
  %1284 = call %nyx_string* @nyx_string_concat(%nyx_string* %1281, %nyx_string* %1283)
  store %nyx_string* %1284, %nyx_string** %1220
  %1285 = load %nyx_string*, %nyx_string** %1220
  %1286 = getelementptr [27 x i8], [27 x i8]* @.str66, i32 0, i32 0
  %1287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1286, i64 26)
  %1288 = call %nyx_string* @nyx_string_concat(%nyx_string* %1285, %nyx_string* %1287)
  store %nyx_string* %1288, %nyx_string** %1220
  %1289 = load %nyx_string*, %nyx_string** %1220
  %1290 = getelementptr [3 x i8], [3 x i8]* @.str67, i32 0, i32 0
  %1291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1290, i64 2)
  %1292 = call %nyx_string* @nyx_string_concat(%nyx_string* %1289, %nyx_string* %1291)
  store %nyx_string* %1292, %nyx_string** %1220
  %1293 = load %nyx_string*, %nyx_string** %1220
  ret %nyx_string* %1293
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
  %1294 = getelementptr [9 x i8], [9 x i8]* @.str68, i32 0, i32 0
  %1295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1294, i64 8)
  %1296 = call i8* @nyx_string_to_cstr(%nyx_string* %1295)
  %1297 = call %nyx_string* @nyx_getenv(i8* %1296)
  %1298 = alloca %nyx_string*
  store %nyx_string* %1297, %nyx_string** %1298
  %1299 = load %nyx_string*, %nyx_string** %1298
  %1300 = getelementptr [1 x i8], [1 x i8]* @.str69, i32 0, i32 0
  %1301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1300, i64 0)
  %1302 = call i1 @nyx_string_equals(%nyx_string* %1299, %nyx_string* %1301)
  br i1 %1302, label %then312, label %else313
then312:
  %1303 = getelementptr %TestResult, %TestResult* null, i32 1
  %1304 = ptrtoint %TestResult* %1303 to i64
  %1305 = call i8* @GC_malloc(i64 %1304)
  %1306 = bitcast i8* %1305 to %TestResult*
  %1307 = load %nyx_string*, %nyx_string** %file.ptr
  %1308 = getelementptr %TestResult, %TestResult* %1306, i32 0, i32 0
  store %nyx_string* %1307, %nyx_string** %1308
  %1309 = getelementptr %TestResult, %TestResult* %1306, i32 0, i32 1
  store i64 0, i64* %1309
  %1310 = getelementptr %TestResult, %TestResult* %1306, i32 0, i32 2
  store i64 0, i64* %1310
  %1311 = getelementptr [24 x i8], [24 x i8]* @.str70, i32 0, i32 0
  %1312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1311, i64 23)
  %1313 = getelementptr %TestResult, %TestResult* %1306, i32 0, i32 3
  store %nyx_string* %1312, %nyx_string** %1313
  %1314 = getelementptr %TestResult, %TestResult* %1306, i32 0, i32 4
  store i1 0, i1* %1314
  %1315 = load %TestResult, %TestResult* %1306
  ret %TestResult %1315
else313:
  br label %merge314
merge314:
  %1316 = getelementptr [4 x i8], [4 x i8]* @.str71, i32 0, i32 0
  %1317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1316, i64 3)
  %1318 = call i8* @nyx_string_to_cstr(%nyx_string* %1317)
  %1319 = call %nyx_string* @nyx_getenv(i8* %1318)
  %1320 = alloca %nyx_string*
  store %nyx_string* %1319, %nyx_string** %1320
  %1321 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1322 = load i64, i64* %1321
  %1323 = call %nyx_string* @nyx_string_from_int(i64 %1322)
  %1324 = alloca %nyx_string*
  store %nyx_string* %1323, %nyx_string** %1324
  %1325 = getelementptr [31 x i8], [31 x i8]* @.str72, i32 0, i32 0
  %1326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1325, i64 30)
  %1327 = call i8* @nyx_string_to_cstr(%nyx_string* %1326)
  %1328 = call %nyx_string* @nyx_exec(i8* %1327)
  %1329 = call %nyx_string* @nyx_string_trim(%nyx_string* %1328)
  %1330 = alloca %nyx_string*
  store %nyx_string* %1329, %nyx_string** %1330
  %1331 = load %nyx_string*, %nyx_string** %1330
  %1332 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %1333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1332, i64 8)
  %1334 = call %nyx_string* @nyx_string_concat(%nyx_string* %1331, %nyx_string* %1333)
  %1335 = alloca %nyx_string*
  store %nyx_string* %1334, %nyx_string** %1335
  %1336 = load %nyx_string*, %nyx_string** %1330
  %1337 = getelementptr [5 x i8], [5 x i8]* @.str74, i32 0, i32 0
  %1338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1337, i64 4)
  %1339 = call %nyx_string* @nyx_string_concat(%nyx_string* %1336, %nyx_string* %1338)
  %1340 = alloca %nyx_string*
  store %nyx_string* %1339, %nyx_string** %1340
  %1341 = getelementptr [1 x i8], [1 x i8]* @.str75, i32 0, i32 0
  %1342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1341, i64 0)
  %1343 = alloca %nyx_string*
  store %nyx_string* %1342, %nyx_string** %1343
  %1344 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1345 = load i1, i1* %1344
  br i1 %1345, label %then315, label %else316
then315:
  %1346 = getelementptr [5 x i8], [5 x i8]* @.str76, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1346, i64 4)
  store %nyx_string* %1347, %nyx_string** %1343
  br label %merge317
else316:
  br label %merge317
merge317:
  %1348 = getelementptr [62 x i8], [62 x i8]* @.str77, i32 0, i32 0
  %1349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1348, i64 61)
  %1350 = getelementptr [54 x i8], [54 x i8]* @.str78, i32 0, i32 0
  %1351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1350, i64 53)
  %1352 = call %nyx_string* @nyx_string_concat(%nyx_string* %1349, %nyx_string* %1351)
  %1353 = getelementptr [48 x i8], [48 x i8]* @.str79, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1353, i64 47)
  %1355 = call %nyx_string* @nyx_string_concat(%nyx_string* %1352, %nyx_string* %1354)
  %1356 = getelementptr [47 x i8], [47 x i8]* @.str80, i32 0, i32 0
  %1357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1356, i64 46)
  %1358 = call %nyx_string* @nyx_string_concat(%nyx_string* %1355, %nyx_string* %1357)
  %1359 = getelementptr [67 x i8], [67 x i8]* @.str81, i32 0, i32 0
  %1360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1359, i64 66)
  %1361 = call %nyx_string* @nyx_string_concat(%nyx_string* %1358, %nyx_string* %1360)
  %1362 = getelementptr [51 x i8], [51 x i8]* @.str82, i32 0, i32 0
  %1363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1362, i64 50)
  %1364 = call %nyx_string* @nyx_string_concat(%nyx_string* %1361, %nyx_string* %1363)
  %1365 = getelementptr [105 x i8], [105 x i8]* @.str83, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1365, i64 104)
  %1367 = call %nyx_string* @nyx_string_concat(%nyx_string* %1364, %nyx_string* %1366)
  %1368 = getelementptr [23 x i8], [23 x i8]* @.str84, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1368, i64 22)
  %1370 = call %nyx_string* @nyx_string_concat(%nyx_string* %1367, %nyx_string* %1369)
  %1371 = alloca %nyx_string*
  store %nyx_string* %1370, %nyx_string** %1371
  %1372 = getelementptr [15 x i8], [15 x i8]* @.str85, i32 0, i32 0
  %1373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1372, i64 14)
  %1374 = call i8* @nyx_string_to_cstr(%nyx_string* %1373)
  %1375 = call %nyx_string* @nyx_getenv(i8* %1374)
  %1376 = alloca %nyx_string*
  store %nyx_string* %1375, %nyx_string** %1376
  %1377 = alloca i1
  store i1 false, i1* %1377
  %1378 = load %nyx_string*, %nyx_string** %1376
  %1379 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %1380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1379, i64 0)
  %1381 = call i1 @nyx_string_equals(%nyx_string* %1378, %nyx_string* %1380)
  %1382 = xor i1 %1381, true
  br i1 %1382, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1383 = load %nyx_string*, %nyx_string** %1376
  %1384 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1384, i64 1)
  %1386 = call i1 @nyx_string_starts_with(%nyx_string* %1383, %nyx_string* %1385)
  %1387 = xor i1 %1386, true
  store i1 %1387, i1* %1377
  br label %sc_and_end319
sc_and_end319:
  %1388 = load i1, i1* %1377
  br i1 %1388, label %then320, label %else321
then320:
  %1389 = load %nyx_string*, %nyx_string** %1320
  %1390 = getelementptr [2 x i8], [2 x i8]* @.str88, i32 0, i32 0
  %1391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1390, i64 1)
  %1392 = call %nyx_string* @nyx_string_concat(%nyx_string* %1389, %nyx_string* %1391)
  %1393 = load %nyx_string*, %nyx_string** %1376
  %1394 = call %nyx_string* @nyx_string_concat(%nyx_string* %1392, %nyx_string* %1393)
  store %nyx_string* %1394, %nyx_string** %1376
  br label %merge322
else321:
  br label %merge322
merge322:
  %1395 = getelementptr [8 x i8], [8 x i8]* @.str89, i32 0, i32 0
  %1396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1395, i64 7)
  %1397 = load %nyx_string*, %nyx_string** %1371
  %1398 = call %nyx_string* @nyx_string_concat(%nyx_string* %1396, %nyx_string* %1397)
  %1399 = getelementptr [3 x i8], [3 x i8]* @.str90, i32 0, i32 0
  %1400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1399, i64 2)
  %1401 = call %nyx_string* @nyx_string_concat(%nyx_string* %1398, %nyx_string* %1400)
  %1402 = alloca %nyx_string*
  store %nyx_string* %1401, %nyx_string** %1402
  %1403 = alloca i1
  store i1 false, i1* %1403
  %1404 = load %nyx_string*, %nyx_string** %1376
  %1405 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1405, i64 0)
  %1407 = call i1 @nyx_string_equals(%nyx_string* %1404, %nyx_string* %1406)
  %1408 = xor i1 %1407, true
  br i1 %1408, label %sc_and_rhs323, label %sc_and_end324
sc_and_rhs323:
  %1409 = load %nyx_string*, %nyx_string** %1376
  %1410 = call i8* @nyx_string_to_cstr(%nyx_string* %1409)
  %1411 = call i1 @nyx_file_exists(i8* %1410)
  store i1 %1411, i1* %1403
  br label %sc_and_end324
sc_and_end324:
  %1412 = load i1, i1* %1403
  br i1 %1412, label %then325, label %else326
then325:
  %1413 = getelementptr [9 x i8], [9 x i8]* @.str92, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1413, i64 8)
  %1415 = load %nyx_string*, %nyx_string** %1376
  %1416 = call %nyx_string* @nyx_string_concat(%nyx_string* %1414, %nyx_string* %1415)
  %1417 = getelementptr [4 x i8], [4 x i8]* @.str93, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1417, i64 3)
  %1419 = call %nyx_string* @nyx_string_concat(%nyx_string* %1416, %nyx_string* %1418)
  store %nyx_string* %1419, %nyx_string** %1402
  br label %merge327
else326:
  %1420 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1421 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %1422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1421, i64 0)
  %1423 = call i1 @nyx_string_equals(%nyx_string* %1420, %nyx_string* %1422)
  br i1 %1423, label %then328, label %else329
then328:
  %1424 = call %nyx_string* @rt_cache_sh()
  %1425 = load %nyx_string*, %nyx_string** %1402
  %1426 = call %nyx_string* @nyx_string_concat(%nyx_string* %1424, %nyx_string* %1425)
  %1427 = getelementptr [22 x i8], [22 x i8]* @.str95, i32 0, i32 0
  %1428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1427, i64 21)
  %1429 = call %nyx_string* @nyx_string_concat(%nyx_string* %1426, %nyx_string* %1428)
  %1430 = load %nyx_string*, %nyx_string** %1371
  %1431 = call %nyx_string* @nyx_string_concat(%nyx_string* %1429, %nyx_string* %1430)
  %1432 = getelementptr [31 x i8], [31 x i8]* @.str96, i32 0, i32 0
  %1433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1432, i64 30)
  %1434 = call %nyx_string* @nyx_string_concat(%nyx_string* %1431, %nyx_string* %1433)
  store %nyx_string* %1434, %nyx_string** %1402
  br label %merge330
else329:
  br label %merge330
merge330:
  br label %merge327
merge327:
  %1435 = getelementptr [3 x i8], [3 x i8]* @.str97, i32 0, i32 0
  %1436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1435, i64 2)
  %1437 = getelementptr [13 x i8], [13 x i8]* @.str98, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1437, i64 12)
  %1439 = call %nyx_string* @nyx_string_concat(%nyx_string* %1436, %nyx_string* %1438)
  store %nyx_string* %1439, %nyx_string** %1371
  %1440 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1440, i64 0)
  %1442 = alloca %nyx_string*
  store %nyx_string* %1441, %nyx_string** %1442
  %1443 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1443, i64 0)
  %1445 = alloca %nyx_string*
  store %nyx_string* %1444, %nyx_string** %1445
  %1446 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1446, i64 0)
  %1448 = alloca %nyx_string*
  store %nyx_string* %1447, %nyx_string** %1448
  %1449 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1450 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %1451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1450, i64 0)
  %1452 = call i1 @nyx_string_equals(%nyx_string* %1449, %nyx_string* %1451)
  %1453 = xor i1 %1452, true
  br i1 %1453, label %then331, label %else332
then331:
  %1454 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1455 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %1456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1455, i64 1)
  %1457 = call %nyx_string* @nyx_string_concat(%nyx_string* %1454, %nyx_string* %1456)
  %1458 = load i64, i64* %cov_idx.ptr
  %1459 = call %nyx_string* @nyx_string_from_int(i64 %1458)
  %1460 = call %nyx_string* @nyx_string_concat(%nyx_string* %1457, %nyx_string* %1459)
  %1461 = alloca %nyx_string*
  store %nyx_string* %1460, %nyx_string** %1461
  %1462 = getelementptr [20 x i8], [20 x i8]* @.str104, i32 0, i32 0
  %1463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1462, i64 19)
  %1464 = load %nyx_string*, %nyx_string** %1461
  %1465 = call %nyx_string* @nyx_string_concat(%nyx_string* %1463, %nyx_string* %1464)
  %1466 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1466, i64 5)
  %1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %1465, %nyx_string* %1467)
  store %nyx_string* %1468, %nyx_string** %1442
  %1469 = getelementptr [62 x i8], [62 x i8]* @.str106, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1469, i64 61)
  store %nyx_string* %1470, %nyx_string** %1445
  %1471 = getelementptr [20 x i8], [20 x i8]* @.str107, i32 0, i32 0
  %1472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1471, i64 19)
  %1473 = load %nyx_string*, %nyx_string** %1461
  %1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %1472, %nyx_string* %1473)
  %1475 = getelementptr [11 x i8], [11 x i8]* @.str108, i32 0, i32 0
  %1476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1475, i64 10)
  %1477 = call %nyx_string* @nyx_string_concat(%nyx_string* %1474, %nyx_string* %1476)
  store %nyx_string* %1477, %nyx_string** %1448
  br label %merge333
else332:
  br label %merge333
merge333:
  %1478 = getelementptr [20 x i8], [20 x i8]* @.str109, i32 0, i32 0
  %1479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1478, i64 19)
  %1480 = getelementptr [180 x i8], [180 x i8]* @.str110, i32 0, i32 0
  %1481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1480, i64 179)
  %1482 = call %nyx_string* @nyx_string_concat(%nyx_string* %1479, %nyx_string* %1481)
  %1483 = getelementptr [322 x i8], [322 x i8]* @.str111, i32 0, i32 0
  %1484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1483, i64 321)
  %1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %1482, %nyx_string* %1484)
  %1486 = alloca %nyx_string*
  store %nyx_string* %1485, %nyx_string** %1486
  %1487 = load %nyx_string*, %nyx_string** %file.ptr
  %1488 = call %nyx_string* @lib_modulo_de(%nyx_string* %1487)
  %1489 = alloca %nyx_string*
  store %nyx_string* %1488, %nyx_string** %1489
  %1490 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1490, i64 0)
  %1492 = alloca %nyx_string*
  store %nyx_string* %1491, %nyx_string** %1492
  %1493 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1493, i64 0)
  %1495 = alloca %nyx_string*
  store %nyx_string* %1494, %nyx_string** %1495
  %1496 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1497 = load %nyx_string*, %nyx_string** %1496
  %1498 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1498, i64 0)
  %1500 = call i1 @nyx_string_equals(%nyx_string* %1497, %nyx_string* %1499)
  %1501 = xor i1 %1500, true
  br i1 %1501, label %then334, label %else335
then334:
  %1502 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1503 = load %nyx_string*, %nyx_string** %1502
  %1504 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1505 = load %nyx_string*, %nyx_string** %1504
  %1506 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %1507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1506, i64 1)
  %1508 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1505, %nyx_string* %1507)
  %1509 = alloca { i64, i8* }*
  store { i64, i8* }* %1508, { i64, i8* }** %1509
  %1510 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1510, i64 0)
  %1512 = alloca %nyx_string*
  store %nyx_string* %1511, %nyx_string** %1512
  %1513 = alloca i64
  store i64 0, i64* %1513
  %1514 = getelementptr [1 x i8], [1 x i8]* @.str117, i32 0, i32 0
  %1515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1514, i64 0)
  %1516 = alloca %nyx_string*
  store %nyx_string* %1515, %nyx_string** %1516
  %1517 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1517, i64 1)
  %1519 = alloca %nyx_string*
  store %nyx_string* %1518, %nyx_string** %1519
  %1520 = call i8* @llvm.stacksave()
  br label %while_cond337
while_cond337:
  %1521 = load i64, i64* %1513
  %1522 = load { i64, i8* }*, { i64, i8* }** %1509
  %1523 = call i64 @nyx_array_length({ i64, i8* }* %1522)
  %1524 = icmp slt i64 %1521, %1523
  br i1 %1524, label %while_body338, label %while_end339
while_body338:
  call void @llvm.stackrestore(i8* %1520)
  %1525 = load { i64, i8* }*, { i64, i8* }** %1509
  %1526 = load i64, i64* %1513
  %1527 = call i64 @nyx_array_get_checked({ i64, i8* }* %1525, i64 %1526, i64 2)
  %1528 = inttoptr i64 %1527 to %nyx_string*
  %1529 = alloca %nyx_string*
  store %nyx_string* %1528, %nyx_string** %1529
  %1530 = alloca i1
  store i1 false, i1* %1530
  %1531 = load %nyx_string*, %nyx_string** %1529
  %1532 = load %nyx_string*, %nyx_string** %1516
  %1533 = call i1 @nyx_string_equals(%nyx_string* %1531, %nyx_string* %1532)
  %1534 = xor i1 %1533, true
  br i1 %1534, label %sc_and_rhs340, label %sc_and_end341
sc_and_rhs340:
  %1535 = load %nyx_string*, %nyx_string** %1529
  %1536 = load %nyx_string*, %nyx_string** %1489
  %1537 = call i1 @nyx_string_equals(%nyx_string* %1535, %nyx_string* %1536)
  %1538 = xor i1 %1537, true
  store i1 %1538, i1* %1530
  br label %sc_and_end341
sc_and_end341:
  %1539 = load i1, i1* %1530
  br i1 %1539, label %then342, label %else343
then342:
  %1540 = load %nyx_string*, %nyx_string** %1512
  %1541 = load %nyx_string*, %nyx_string** %1516
  %1542 = call i1 @nyx_string_equals(%nyx_string* %1540, %nyx_string* %1541)
  %1543 = xor i1 %1542, true
  br i1 %1543, label %then345, label %else346
then345:
  %1544 = load %nyx_string*, %nyx_string** %1512
  %1545 = load %nyx_string*, %nyx_string** %1519
  %1546 = call %nyx_string* @nyx_string_concat(%nyx_string* %1544, %nyx_string* %1545)
  store %nyx_string* %1546, %nyx_string** %1512
  br label %merge347
else346:
  br label %merge347
merge347:
  %1547 = load %nyx_string*, %nyx_string** %1512
  %1548 = load %nyx_string*, %nyx_string** %1529
  %1549 = call %nyx_string* @nyx_string_concat(%nyx_string* %1547, %nyx_string* %1548)
  store %nyx_string* %1549, %nyx_string** %1512
  br label %merge344
else343:
  br label %merge344
merge344:
  %1550 = load i64, i64* %1513
  %1551 = add i64 %1550, 1
  store i64 %1551, i64* %1513
  br label %while_cond337
while_end339:
  %1552 = load %nyx_string*, %nyx_string** %1512
  %1553 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1553, i64 0)
  %1555 = call i1 @nyx_string_equals(%nyx_string* %1552, %nyx_string* %1554)
  %1556 = xor i1 %1555, true
  br i1 %1556, label %then348, label %else349
then348:
  %1557 = getelementptr [19 x i8], [19 x i8]* @.str120, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1557, i64 18)
  %1559 = load %nyx_string*, %nyx_string** %1512
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1558, %nyx_string* %1559)
  %1561 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %1562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1561, i64 1)
  %1563 = call %nyx_string* @nyx_string_concat(%nyx_string* %1560, %nyx_string* %1562)
  store %nyx_string* %1563, %nyx_string** %1492
  br label %merge350
else349:
  br label %merge350
merge350:
  %1564 = alloca i1
  store i1 false, i1* %1564
  %1565 = load %nyx_string*, %nyx_string** %1489
  %1566 = getelementptr [1 x i8], [1 x i8]* @.str122, i32 0, i32 0
  %1567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1566, i64 0)
  %1568 = call i1 @nyx_string_equals(%nyx_string* %1565, %nyx_string* %1567)
  %1569 = xor i1 %1568, true
  br i1 %1569, label %sc_and_rhs351, label %sc_and_end352
sc_and_rhs351:
  %1570 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1570, i64 1)
  %1572 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1573 = load %nyx_string*, %nyx_string** %1572
  %1574 = call %nyx_string* @nyx_string_concat(%nyx_string* %1571, %nyx_string* %1573)
  %1575 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1575, i64 1)
  %1577 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1576)
  %1578 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %1579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1578, i64 1)
  %1580 = load %nyx_string*, %nyx_string** %1489
  %1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %1579, %nyx_string* %1580)
  %1582 = getelementptr [2 x i8], [2 x i8]* @.str126, i32 0, i32 0
  %1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1582, i64 1)
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1581, %nyx_string* %1583)
  %1585 = call i1 @nyx_string_contains(%nyx_string* %1577, %nyx_string* %1584)
  store i1 %1585, i1* %1564
  br label %sc_and_end352
sc_and_end352:
  %1586 = load i1, i1* %1564
  br i1 %1586, label %then353, label %else354
then353:
  %1587 = load %nyx_string*, %nyx_string** %1492
  %1588 = getelementptr [16 x i8], [16 x i8]* @.str127, i32 0, i32 0
  %1589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1588, i64 15)
  %1590 = call %nyx_string* @nyx_string_concat(%nyx_string* %1587, %nyx_string* %1589)
  %1591 = load %nyx_string*, %nyx_string** %1489
  %1592 = call %nyx_string* @nyx_string_concat(%nyx_string* %1590, %nyx_string* %1591)
  %1593 = getelementptr [2 x i8], [2 x i8]* @.str128, i32 0, i32 0
  %1594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1593, i64 1)
  %1595 = call %nyx_string* @nyx_string_concat(%nyx_string* %1592, %nyx_string* %1594)
  store %nyx_string* %1595, %nyx_string** %1492
  br label %merge355
else354:
  br label %merge355
merge355:
  %1596 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1597 = load %nyx_string*, %nyx_string** %1596
  %1598 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1599 = load %nyx_string*, %nyx_string** %1598
  %1600 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1600, i64 1)
  %1602 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1599, %nyx_string* %1601)
  %1603 = alloca { i64, i8* }*
  store { i64, i8* }* %1602, { i64, i8* }** %1603
  %1604 = alloca i64
  store i64 0, i64* %1604
  %1605 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1605, i64 1)
  %1607 = alloca %nyx_string*
  store %nyx_string* %1606, %nyx_string** %1607
  %1608 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %1609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1608, i64 1)
  %1610 = alloca %nyx_string*
  store %nyx_string* %1609, %nyx_string** %1610
  %1611 = getelementptr [3 x i8], [3 x i8]* @.str132, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1611, i64 2)
  %1613 = alloca %nyx_string*
  store %nyx_string* %1612, %nyx_string** %1613
  %1614 = call i8* @llvm.stacksave()
  br label %while_cond356
while_cond356:
  %1615 = load i64, i64* %1604
  %1616 = load { i64, i8* }*, { i64, i8* }** %1603
  %1617 = call i64 @nyx_array_length({ i64, i8* }* %1616)
  %1618 = icmp slt i64 %1615, %1617
  br i1 %1618, label %while_body357, label %while_end358
while_body357:
  call void @llvm.stackrestore(i8* %1614)
  %1619 = load { i64, i8* }*, { i64, i8* }** %1603
  %1620 = load i64, i64* %1604
  %1621 = call i64 @nyx_array_get_checked({ i64, i8* }* %1619, i64 %1620, i64 2)
  %1622 = inttoptr i64 %1621 to %nyx_string*
  %1623 = alloca %nyx_string*
  store %nyx_string* %1622, %nyx_string** %1623
  %1624 = load %nyx_string*, %nyx_string** %1623
  %1625 = load %nyx_string*, %nyx_string** %1607
  %1626 = call i64 @nyx_string_index_of(%nyx_string* %1624, %nyx_string* %1625)
  %1627 = alloca i64
  store i64 %1626, i64* %1627
  %1628 = load i64, i64* %1627
  %1629 = icmp sgt i64 %1628, 0
  br i1 %1629, label %then359, label %else360
then359:
  %1630 = load %nyx_string*, %nyx_string** %1623
  %1631 = load i64, i64* %1627
  %1632 = call %nyx_string* @nyx_string_substring(%nyx_string* %1630, i64 0, i64 %1631)
  %1633 = alloca %nyx_string*
  store %nyx_string* %1632, %nyx_string** %1633
  %1634 = load %nyx_string*, %nyx_string** %1633
  %1635 = load %nyx_string*, %nyx_string** %1489
  %1636 = call i1 @nyx_string_equals(%nyx_string* %1634, %nyx_string* %1635)
  %1637 = xor i1 %1636, true
  br i1 %1637, label %then362, label %else363
then362:
  %1638 = load %nyx_string*, %nyx_string** %1495
  %1639 = load %nyx_string*, %nyx_string** %1610
  %1640 = call %nyx_string* @nyx_string_concat(%nyx_string* %1638, %nyx_string* %1639)
  %1641 = load %nyx_string*, %nyx_string** %1623
  %1642 = load i64, i64* %1627
  %1643 = add i64 %1642, 1
  %1644 = load %nyx_string*, %nyx_string** %1623
  %1645 = call i64 @nyx_string_byte_length(%nyx_string* %1644)
  %1646 = call %nyx_string* @nyx_string_substring(%nyx_string* %1641, i64 %1643, i64 %1645)
  %1647 = call %nyx_string* @nyx_string_concat(%nyx_string* %1640, %nyx_string* %1646)
  %1648 = load %nyx_string*, %nyx_string** %1613
  %1649 = call %nyx_string* @nyx_string_concat(%nyx_string* %1647, %nyx_string* %1648)
  store %nyx_string* %1649, %nyx_string** %1495
  br label %merge364
else363:
  br label %merge364
merge364:
  br label %merge361
else360:
  br label %merge361
merge361:
  %1650 = load i64, i64* %1604
  %1651 = add i64 %1650, 1
  store i64 %1651, i64* %1604
  br label %while_cond356
while_end358:
  br label %merge336
else335:
  br label %merge336
merge336:
  %1652 = getelementptr [55 x i8], [55 x i8]* @.str133, i32 0, i32 0
  %1653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1652, i64 54)
  %1654 = load %nyx_string*, %nyx_string** %1320
  %1655 = call %nyx_string* @nyx_string_concat(%nyx_string* %1653, %nyx_string* %1654)
  %1656 = getelementptr [37 x i8], [37 x i8]* @.str134, i32 0, i32 0
  %1657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1656, i64 36)
  %1658 = call %nyx_string* @nyx_string_concat(%nyx_string* %1655, %nyx_string* %1657)
  %1659 = load %nyx_string*, %nyx_string** %file.ptr
  %1660 = call %nyx_string* @nyx_string_concat(%nyx_string* %1658, %nyx_string* %1659)
  %1661 = getelementptr [2 x i8], [2 x i8]* @.str135, i32 0, i32 0
  %1662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1661, i64 1)
  %1663 = call %nyx_string* @nyx_string_concat(%nyx_string* %1660, %nyx_string* %1662)
  %1664 = load %nyx_string*, %nyx_string** %1442
  %1665 = call %nyx_string* @nyx_string_concat(%nyx_string* %1663, %nyx_string* %1664)
  %1666 = load %nyx_string*, %nyx_string** %1492
  %1667 = call %nyx_string* @nyx_string_concat(%nyx_string* %1665, %nyx_string* %1666)
  %1668 = getelementptr [22 x i8], [22 x i8]* @.str136, i32 0, i32 0
  %1669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1668, i64 21)
  %1670 = call %nyx_string* @nyx_string_concat(%nyx_string* %1667, %nyx_string* %1669)
  %1671 = load %nyx_string*, %nyx_string** %1335
  %1672 = call %nyx_string* @nyx_string_concat(%nyx_string* %1670, %nyx_string* %1671)
  %1673 = getelementptr [36 x i8], [36 x i8]* @.str137, i32 0, i32 0
  %1674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1673, i64 35)
  %1675 = call %nyx_string* @nyx_string_concat(%nyx_string* %1672, %nyx_string* %1674)
  %1676 = load %nyx_string*, %nyx_string** %1335
  %1677 = call %nyx_string* @nyx_string_concat(%nyx_string* %1675, %nyx_string* %1676)
  %1678 = getelementptr [13 x i8], [13 x i8]* @.str138, i32 0, i32 0
  %1679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1678, i64 12)
  %1680 = call %nyx_string* @nyx_string_concat(%nyx_string* %1677, %nyx_string* %1679)
  %1681 = alloca %nyx_string*
  store %nyx_string* %1680, %nyx_string** %1681
  %1682 = load %nyx_string*, %nyx_string** %1402
  %1683 = load %nyx_string*, %nyx_string** %1681
  %1684 = call %nyx_string* @nyx_string_concat(%nyx_string* %1682, %nyx_string* %1683)
  %1685 = alloca %nyx_string*
  store %nyx_string* %1684, %nyx_string** %1685
  %1686 = getelementptr [15 x i8], [15 x i8]* @.str139, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1686, i64 14)
  %1688 = load %nyx_string*, %nyx_string** %1330
  %1689 = call %nyx_string* @nyx_string_concat(%nyx_string* %1687, %nyx_string* %1688)
  %1690 = getelementptr [27 x i8], [27 x i8]* @.str140, i32 0, i32 0
  %1691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1690, i64 26)
  %1692 = call %nyx_string* @nyx_string_concat(%nyx_string* %1689, %nyx_string* %1691)
  %1693 = alloca %nyx_string*
  store %nyx_string* %1692, %nyx_string** %1693
  %1694 = load %nyx_string*, %nyx_string** %1486
  %1695 = load %nyx_string*, %nyx_string** %1693
  %1696 = call %nyx_string* @nyx_string_concat(%nyx_string* %1694, %nyx_string* %1695)
  %1697 = getelementptr [42 x i8], [42 x i8]* @.str141, i32 0, i32 0
  %1698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1697, i64 41)
  %1699 = call %nyx_string* @nyx_string_concat(%nyx_string* %1696, %nyx_string* %1698)
  %1700 = getelementptr [17 x i8], [17 x i8]* @.str142, i32 0, i32 0
  %1701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1700, i64 16)
  %1702 = call %nyx_string* @nyx_string_concat(%nyx_string* %1699, %nyx_string* %1701)
  %1703 = getelementptr [31 x i8], [31 x i8]* @.str143, i32 0, i32 0
  %1704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1703, i64 30)
  %1705 = call %nyx_string* @nyx_string_concat(%nyx_string* %1702, %nyx_string* %1704)
  %1706 = getelementptr [17 x i8], [17 x i8]* @.str144, i32 0, i32 0
  %1707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1706, i64 16)
  %1708 = call %nyx_string* @nyx_string_concat(%nyx_string* %1705, %nyx_string* %1707)
  %1709 = getelementptr [5 x i8], [5 x i8]* @.str145, i32 0, i32 0
  %1710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1709, i64 4)
  %1711 = call %nyx_string* @nyx_string_concat(%nyx_string* %1708, %nyx_string* %1710)
  %1712 = load %nyx_string*, %nyx_string** %1320
  %1713 = call %nyx_string* @nyx_string_concat(%nyx_string* %1711, %nyx_string* %1712)
  %1714 = getelementptr [2 x i8], [2 x i8]* @.str146, i32 0, i32 0
  %1715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1714, i64 1)
  %1716 = call %nyx_string* @nyx_string_concat(%nyx_string* %1713, %nyx_string* %1715)
  %1717 = load %nyx_string*, %nyx_string** %file.ptr
  %1718 = call %nyx_string* @nyx_string_concat(%nyx_string* %1716, %nyx_string* %1717)
  %1719 = getelementptr [12 x i8], [12 x i8]* @.str147, i32 0, i32 0
  %1720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1719, i64 11)
  %1721 = call %nyx_string* @nyx_string_concat(%nyx_string* %1718, %nyx_string* %1720)
  %1722 = getelementptr [5 x i8], [5 x i8]* @.str148, i32 0, i32 0
  %1723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1722, i64 4)
  %1724 = call %nyx_string* @nyx_string_concat(%nyx_string* %1721, %nyx_string* %1723)
  %1725 = load %nyx_string*, %nyx_string** %1298
  %1726 = call %nyx_string* @nyx_string_concat(%nyx_string* %1724, %nyx_string* %1725)
  %1727 = getelementptr [3 x i8], [3 x i8]* @.str149, i32 0, i32 0
  %1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1727, i64 2)
  %1729 = call %nyx_string* @nyx_string_concat(%nyx_string* %1726, %nyx_string* %1728)
  %1730 = getelementptr [51 x i8], [51 x i8]* @.str150, i32 0, i32 0
  %1731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1730, i64 50)
  %1732 = call %nyx_string* @nyx_string_concat(%nyx_string* %1729, %nyx_string* %1731)
  %1733 = load %nyx_string*, %nyx_string** %1298
  %1734 = call %nyx_string* @nyx_string_concat(%nyx_string* %1732, %nyx_string* %1733)
  %1735 = getelementptr [35 x i8], [35 x i8]* @.str151, i32 0, i32 0
  %1736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1735, i64 34)
  %1737 = call %nyx_string* @nyx_string_concat(%nyx_string* %1734, %nyx_string* %1736)
  %1738 = load %nyx_string*, %nyx_string** %1685
  %1739 = call %nyx_string* @nyx_string_concat(%nyx_string* %1737, %nyx_string* %1738)
  %1740 = getelementptr [7 x i8], [7 x i8]* @.str152, i32 0, i32 0
  %1741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1740, i64 6)
  %1742 = call %nyx_string* @nyx_string_concat(%nyx_string* %1739, %nyx_string* %1741)
  %1743 = load %nyx_string*, %nyx_string** %1343
  %1744 = call %nyx_string* @nyx_string_concat(%nyx_string* %1742, %nyx_string* %1743)
  %1745 = load %nyx_string*, %nyx_string** %1445
  %1746 = call %nyx_string* @nyx_string_concat(%nyx_string* %1744, %nyx_string* %1745)
  %1747 = getelementptr [40 x i8], [40 x i8]* @.str153, i32 0, i32 0
  %1748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1747, i64 39)
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1746, %nyx_string* %1748)
  %1750 = load %nyx_string*, %nyx_string** %1495
  %1751 = call %nyx_string* @nyx_string_concat(%nyx_string* %1749, %nyx_string* %1750)
  %1752 = load %nyx_string*, %nyx_string** %1371
  %1753 = call %nyx_string* @nyx_string_concat(%nyx_string* %1751, %nyx_string* %1752)
  %1754 = getelementptr [44 x i8], [44 x i8]* @.str154, i32 0, i32 0
  %1755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1754, i64 43)
  %1756 = call %nyx_string* @nyx_string_concat(%nyx_string* %1753, %nyx_string* %1755)
  %1757 = getelementptr [4 x i8], [4 x i8]* @.str155, i32 0, i32 0
  %1758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1757, i64 3)
  %1759 = call %nyx_string* @nyx_string_concat(%nyx_string* %1756, %nyx_string* %1758)
  %1760 = load %nyx_string*, %nyx_string** %1340
  %1761 = call %nyx_string* @nyx_string_concat(%nyx_string* %1759, %nyx_string* %1760)
  %1762 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %1763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1762, i64 5)
  %1764 = call %nyx_string* @nyx_string_concat(%nyx_string* %1761, %nyx_string* %1763)
  %1765 = load %nyx_string*, %nyx_string** %1335
  %1766 = call %nyx_string* @nyx_string_concat(%nyx_string* %1764, %nyx_string* %1765)
  %1767 = getelementptr [2 x i8], [2 x i8]* @.str157, i32 0, i32 0
  %1768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1767, i64 1)
  %1769 = call %nyx_string* @nyx_string_concat(%nyx_string* %1766, %nyx_string* %1768)
  %1770 = getelementptr [57 x i8], [57 x i8]* @.str158, i32 0, i32 0
  %1771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1770, i64 56)
  %1772 = call %nyx_string* @nyx_string_concat(%nyx_string* %1769, %nyx_string* %1771)
  %1773 = load %nyx_string*, %nyx_string** %1448
  %1774 = call %nyx_string* @nyx_string_concat(%nyx_string* %1772, %nyx_string* %1773)
  %1775 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1775, i64 8)
  %1777 = call %nyx_string* @nyx_string_concat(%nyx_string* %1774, %nyx_string* %1776)
  %1778 = load %nyx_string*, %nyx_string** %1324
  %1779 = call %nyx_string* @nyx_string_concat(%nyx_string* %1777, %nyx_string* %1778)
  %1780 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1780, i64 1)
  %1782 = call %nyx_string* @nyx_string_concat(%nyx_string* %1779, %nyx_string* %1781)
  %1783 = load %nyx_string*, %nyx_string** %1340
  %1784 = call %nyx_string* @nyx_string_concat(%nyx_string* %1782, %nyx_string* %1783)
  %1785 = getelementptr [4 x i8], [4 x i8]* @.str161, i32 0, i32 0
  %1786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1785, i64 3)
  %1787 = call %nyx_string* @nyx_string_concat(%nyx_string* %1784, %nyx_string* %1786)
  %1788 = load %nyx_string*, %nyx_string** %1335
  %1789 = call %nyx_string* @nyx_string_concat(%nyx_string* %1787, %nyx_string* %1788)
  %1790 = getelementptr [7 x i8], [7 x i8]* @.str162, i32 0, i32 0
  %1791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1790, i64 6)
  %1792 = call %nyx_string* @nyx_string_concat(%nyx_string* %1789, %nyx_string* %1791)
  %1793 = getelementptr [14 x i8], [14 x i8]* @.str163, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1793, i64 13)
  %1795 = call %nyx_string* @nyx_string_concat(%nyx_string* %1792, %nyx_string* %1794)
  %1796 = getelementptr [7 x i8], [7 x i8]* @.str164, i32 0, i32 0
  %1797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1796, i64 6)
  %1798 = call %nyx_string* @nyx_string_concat(%nyx_string* %1795, %nyx_string* %1797)
  %1799 = load %nyx_string*, %nyx_string** %1340
  %1800 = call %nyx_string* @nyx_string_concat(%nyx_string* %1798, %nyx_string* %1799)
  %1801 = getelementptr [2 x i8], [2 x i8]* @.str165, i32 0, i32 0
  %1802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1801, i64 1)
  %1803 = call %nyx_string* @nyx_string_concat(%nyx_string* %1800, %nyx_string* %1802)
  %1804 = getelementptr [17 x i8], [17 x i8]* @.str166, i32 0, i32 0
  %1805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1804, i64 16)
  %1806 = call %nyx_string* @nyx_string_concat(%nyx_string* %1803, %nyx_string* %1805)
  %1807 = alloca %nyx_string*
  store %nyx_string* %1806, %nyx_string** %1807
  %1808 = load %nyx_string*, %nyx_string** %1330
  %1809 = getelementptr [8 x i8], [8 x i8]* @.str167, i32 0, i32 0
  %1810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1809, i64 7)
  %1811 = call %nyx_string* @nyx_string_concat(%nyx_string* %1808, %nyx_string* %1810)
  %1812 = alloca %nyx_string*
  store %nyx_string* %1811, %nyx_string** %1812
  %1813 = load %nyx_string*, %nyx_string** %1812
  %1814 = load %nyx_string*, %nyx_string** %1807
  %1815 = ptrtoint %nyx_string* %1814 to i64
  %1816 = call i8* @nyx_string_to_cstr(%nyx_string* %1813)
  %1817 = inttoptr i64 %1815 to %nyx_string*
  %1818 = call i1 @nyx_write_file_safe(i8* %1816, %nyx_string* %1817)
  %1819 = getelementptr [6 x i8], [6 x i8]* @.str168, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1819, i64 5)
  %1821 = load %nyx_string*, %nyx_string** %1812
  %1822 = call %nyx_string* @nyx_string_concat(%nyx_string* %1820, %nyx_string* %1821)
  %1823 = call i8* @nyx_string_to_cstr(%nyx_string* %1822)
  %1824 = call i64 @nyx_exec_code(i8* %1823)
  %1825 = alloca i64
  store i64 %1824, i64* %1825
  %1826 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1826, i64 0)
  %1828 = alloca %nyx_string*
  store %nyx_string* %1827, %nyx_string** %1828
  %1829 = load %nyx_string*, %nyx_string** %1335
  %1830 = call i8* @nyx_string_to_cstr(%nyx_string* %1829)
  %1831 = call i1 @nyx_file_exists(i8* %1830)
  br i1 %1831, label %then365, label %else366
then365:
  %1832 = load %nyx_string*, %nyx_string** %1335
  %1833 = call i8* @nyx_string_to_cstr(%nyx_string* %1832)
  %1834 = call %nyx_string* @nyx_read_file(i8* %1833)
  store %nyx_string* %1834, %nyx_string** %1828
  br label %merge367
else366:
  br label %merge367
merge367:
  %1835 = getelementptr [8 x i8], [8 x i8]* @.str170, i32 0, i32 0
  %1836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1835, i64 7)
  %1837 = load %nyx_string*, %nyx_string** %1330
  %1838 = call %nyx_string* @nyx_string_concat(%nyx_string* %1836, %nyx_string* %1837)
  %1839 = call i8* @nyx_string_to_cstr(%nyx_string* %1838)
  %1840 = call %nyx_string* @nyx_exec(i8* %1839)
  %1841 = alloca i64
  store i64 0, i64* %1841
  %1842 = alloca i64
  store i64 0, i64* %1842
  %1843 = load %nyx_string*, %nyx_string** %1828
  %1844 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1844, i64 1)
  %1846 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1843, %nyx_string* %1845)
  %1847 = alloca { i64, i8* }*
  store { i64, i8* }* %1846, { i64, i8* }** %1847
  %1848 = alloca i64
  store i64 0, i64* %1848
  %1849 = getelementptr [6 x i8], [6 x i8]* @.str172, i32 0, i32 0
  %1850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1849, i64 5)
  %1851 = alloca %nyx_string*
  store %nyx_string* %1850, %nyx_string** %1851
  %1852 = getelementptr [6 x i8], [6 x i8]* @.str173, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1852, i64 5)
  %1854 = alloca %nyx_string*
  store %nyx_string* %1853, %nyx_string** %1854
  %1855 = call i8* @llvm.stacksave()
  br label %while_cond368
while_cond368:
  %1856 = load i64, i64* %1848
  %1857 = load { i64, i8* }*, { i64, i8* }** %1847
  %1858 = call i64 @nyx_array_length({ i64, i8* }* %1857)
  %1859 = icmp slt i64 %1856, %1858
  br i1 %1859, label %while_body369, label %while_end370
while_body369:
  call void @llvm.stackrestore(i8* %1855)
  %1860 = load { i64, i8* }*, { i64, i8* }** %1847
  %1861 = load i64, i64* %1848
  %1862 = call i64 @nyx_array_get_checked({ i64, i8* }* %1860, i64 %1861, i64 2)
  %1863 = inttoptr i64 %1862 to %nyx_string*
  %1864 = alloca %nyx_string*
  store %nyx_string* %1863, %nyx_string** %1864
  %1865 = load %nyx_string*, %nyx_string** %1864
  %1866 = load %nyx_string*, %nyx_string** %1851
  %1867 = call i1 @nyx_string_contains(%nyx_string* %1865, %nyx_string* %1866)
  br i1 %1867, label %then371, label %else372
then371:
  %1868 = load i64, i64* %1841
  %1869 = add i64 %1868, 1
  store i64 %1869, i64* %1841
  br label %merge373
else372:
  %1870 = load %nyx_string*, %nyx_string** %1864
  %1871 = load %nyx_string*, %nyx_string** %1854
  %1872 = call i1 @nyx_string_contains(%nyx_string* %1870, %nyx_string* %1871)
  br i1 %1872, label %then374, label %else375
then374:
  %1873 = load i64, i64* %1842
  %1874 = add i64 %1873, 1
  store i64 %1874, i64* %1842
  br label %merge376
else375:
  br label %merge376
merge376:
  br label %merge373
merge373:
  %1875 = load i64, i64* %1848
  %1876 = add i64 %1875, 1
  store i64 %1876, i64* %1848
  br label %while_cond368
while_end370:
  %1877 = getelementptr %TestResult, %TestResult* null, i32 1
  %1878 = ptrtoint %TestResult* %1877 to i64
  %1879 = call i8* @GC_malloc(i64 %1878)
  %1880 = bitcast i8* %1879 to %TestResult*
  %1881 = load %nyx_string*, %nyx_string** %file.ptr
  %1882 = getelementptr %TestResult, %TestResult* %1880, i32 0, i32 0
  store %nyx_string* %1881, %nyx_string** %1882
  %1883 = load i64, i64* %1841
  %1884 = getelementptr %TestResult, %TestResult* %1880, i32 0, i32 1
  store i64 %1883, i64* %1884
  %1885 = load i64, i64* %1842
  %1886 = getelementptr %TestResult, %TestResult* %1880, i32 0, i32 2
  store i64 %1885, i64* %1886
  %1887 = load %nyx_string*, %nyx_string** %1828
  %1888 = getelementptr %TestResult, %TestResult* %1880, i32 0, i32 3
  store %nyx_string* %1887, %nyx_string** %1888
  %1889 = alloca i1
  store i1 false, i1* %1889
  %1890 = load i64, i64* %1825
  %1891 = icmp eq i64 %1890, 0
  br i1 %1891, label %sc_and_rhs377, label %sc_and_end378
sc_and_rhs377:
  %1892 = load i64, i64* %1842
  %1893 = icmp eq i64 %1892, 0
  store i1 %1893, i1* %1889
  br label %sc_and_end378
sc_and_end378:
  %1894 = load i1, i1* %1889
  %1895 = getelementptr %TestResult, %TestResult* %1880, i32 0, i32 4
  store i1 %1894, i1* %1895
  %1896 = load %TestResult, %TestResult* %1880
  ret %TestResult %1896
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1897 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1898 = load i1, i1* %1897
  br i1 %1898, label %then379, label %else380
then379:
  %1899 = getelementptr [9 x i8], [9 x i8]* @.str174, i32 0, i32 0
  %1900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1899, i64 8)
  %1901 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1902 = load %nyx_string*, %nyx_string** %1901
  %1903 = call %nyx_string* @nyx_string_concat(%nyx_string* %1900, %nyx_string* %1902)
  %1904 = getelementptr [3 x i8], [3 x i8]* @.str175, i32 0, i32 0
  %1905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1904, i64 2)
  %1906 = call %nyx_string* @nyx_string_concat(%nyx_string* %1903, %nyx_string* %1905)
  %1907 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1908 = load i64, i64* %1907
  %1909 = call %nyx_string* @nyx_string_from_int(i64 %1908)
  %1910 = call %nyx_string* @nyx_string_concat(%nyx_string* %1906, %nyx_string* %1909)
  %1911 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %1912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1911, i64 7)
  %1913 = call %nyx_string* @nyx_string_concat(%nyx_string* %1910, %nyx_string* %1912)
  %1914 = call i8* @nyx_string_to_cstr(%nyx_string* %1913)
  call void @nyx_print_string(i8* %1914)
  %1915 = load i1, i1* %verbose.ptr
  br i1 %1915, label %then382, label %else383
then382:
  %1916 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1917 = load %nyx_string*, %nyx_string** %1916
  %1918 = call i8* @nyx_string_to_cstr(%nyx_string* %1917)
  call void @nyx_print_string(i8* %1918)
  br label %merge384
else383:
  br label %merge384
merge384:
  br label %merge381
else380:
  %1919 = getelementptr [9 x i8], [9 x i8]* @.str177, i32 0, i32 0
  %1920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1919, i64 8)
  %1921 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1922 = load %nyx_string*, %nyx_string** %1921
  %1923 = call %nyx_string* @nyx_string_concat(%nyx_string* %1920, %nyx_string* %1922)
  %1924 = getelementptr [3 x i8], [3 x i8]* @.str178, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1924, i64 2)
  %1926 = call %nyx_string* @nyx_string_concat(%nyx_string* %1923, %nyx_string* %1925)
  %1927 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1928 = load i64, i64* %1927
  %1929 = call %nyx_string* @nyx_string_from_int(i64 %1928)
  %1930 = call %nyx_string* @nyx_string_concat(%nyx_string* %1926, %nyx_string* %1929)
  %1931 = getelementptr [10 x i8], [10 x i8]* @.str179, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1931, i64 9)
  %1933 = call %nyx_string* @nyx_string_concat(%nyx_string* %1930, %nyx_string* %1932)
  %1934 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1935 = load i64, i64* %1934
  %1936 = call %nyx_string* @nyx_string_from_int(i64 %1935)
  %1937 = call %nyx_string* @nyx_string_concat(%nyx_string* %1933, %nyx_string* %1936)
  %1938 = getelementptr [9 x i8], [9 x i8]* @.str180, i32 0, i32 0
  %1939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1938, i64 8)
  %1940 = call %nyx_string* @nyx_string_concat(%nyx_string* %1937, %nyx_string* %1939)
  %1941 = call i8* @nyx_string_to_cstr(%nyx_string* %1940)
  call void @nyx_print_string(i8* %1941)
  %1942 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1943 = load %nyx_string*, %nyx_string** %1942
  %1944 = call i8* @nyx_string_to_cstr(%nyx_string* %1943)
  call void @nyx_print_string(i8* %1944)
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
  %1945 = getelementptr [1 x i8], [1 x i8]* @.str181, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1945, i64 0)
  %1947 = call i8* @nyx_string_to_cstr(%nyx_string* %1946)
  call void @nyx_print_string(i8* %1947)
  %1948 = getelementptr [36 x i8], [36 x i8]* @.str182, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1948, i64 35)
  %1950 = call i8* @nyx_string_to_cstr(%nyx_string* %1949)
  call void @nyx_print_string(i8* %1950)
  %1951 = alloca i64
  store i64 0, i64* %1951
  %1952 = alloca i64
  store i64 0, i64* %1952
  %1953 = alloca i64
  store i64 0, i64* %1953
  %1954 = call i8* @llvm.stacksave()
  br label %while_cond385
while_cond385:
  %1955 = load i64, i64* %1953
  %1956 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1957 = call i64 @nyx_array_length({ i64, i8* }* %1956)
  %1958 = icmp slt i64 %1955, %1957
  br i1 %1958, label %while_body386, label %while_end387
while_body386:
  call void @llvm.stackrestore(i8* %1954)
  %1959 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1960 = load i64, i64* %1953
  %1961 = call i64 @nyx_array_get({ i64, i8* }* %1959, i64 %1960)
  %1962 = inttoptr i64 %1961 to %TestResult*
  %1963 = load %TestResult, %TestResult* %1962
  %1964 = alloca %TestResult
  store %TestResult %1963, %TestResult* %1964
  %1965 = getelementptr %TestResult, %TestResult* %1964, i32 0, i32 4
  %1966 = load i1, i1* %1965
  br i1 %1966, label %then388, label %else389
then388:
  %1967 = load i64, i64* %1951
  %1968 = add i64 %1967, 1
  store i64 %1968, i64* %1951
  br label %merge390
else389:
  %1969 = load i64, i64* %1952
  %1970 = add i64 %1969, 1
  store i64 %1970, i64* %1952
  br label %merge390
merge390:
  %1971 = load i64, i64* %1953
  %1972 = add i64 %1971, 1
  store i64 %1972, i64* %1953
  br label %while_cond385
while_end387:
  %1973 = getelementptr [11 x i8], [11 x i8]* @.str183, i32 0, i32 0
  %1974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1973, i64 10)
  %1975 = load i64, i64* %1951
  %1976 = call %nyx_string* @nyx_string_from_int(i64 %1975)
  %1977 = call %nyx_string* @nyx_string_concat(%nyx_string* %1974, %nyx_string* %1976)
  %1978 = getelementptr [10 x i8], [10 x i8]* @.str184, i32 0, i32 0
  %1979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1978, i64 9)
  %1980 = call %nyx_string* @nyx_string_concat(%nyx_string* %1977, %nyx_string* %1979)
  %1981 = load i64, i64* %1952
  %1982 = call %nyx_string* @nyx_string_from_int(i64 %1981)
  %1983 = call %nyx_string* @nyx_string_concat(%nyx_string* %1980, %nyx_string* %1982)
  %1984 = getelementptr [10 x i8], [10 x i8]* @.str185, i32 0, i32 0
  %1985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1984, i64 9)
  %1986 = call %nyx_string* @nyx_string_concat(%nyx_string* %1983, %nyx_string* %1985)
  %1987 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1988 = call i64 @nyx_array_length({ i64, i8* }* %1987)
  %1989 = call %nyx_string* @nyx_string_from_int(i64 %1988)
  %1990 = call %nyx_string* @nyx_string_concat(%nyx_string* %1986, %nyx_string* %1989)
  %1991 = getelementptr [8 x i8], [8 x i8]* @.str186, i32 0, i32 0
  %1992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1991, i64 7)
  %1993 = call %nyx_string* @nyx_string_concat(%nyx_string* %1990, %nyx_string* %1992)
  %1994 = call i8* @nyx_string_to_cstr(%nyx_string* %1993)
  call void @nyx_print_string(i8* %1994)
  %1995 = getelementptr [11 x i8], [11 x i8]* @.str187, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1995, i64 10)
  %1997 = load i64, i64* %total_passed.ptr
  %1998 = call %nyx_string* @nyx_string_from_int(i64 %1997)
  %1999 = call %nyx_string* @nyx_string_concat(%nyx_string* %1996, %nyx_string* %1998)
  %2000 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %2001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %2000, i64 9)
  %2002 = call %nyx_string* @nyx_string_concat(%nyx_string* %1999, %nyx_string* %2001)
  %2003 = load i64, i64* %total_failed.ptr
  %2004 = call %nyx_string* @nyx_string_from_int(i64 %2003)
  %2005 = call %nyx_string* @nyx_string_concat(%nyx_string* %2002, %nyx_string* %2004)
  %2006 = getelementptr [10 x i8], [10 x i8]* @.str189, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %2006, i64 9)
  %2008 = call %nyx_string* @nyx_string_concat(%nyx_string* %2005, %nyx_string* %2007)
  %2009 = load i64, i64* %total_passed.ptr
  %2010 = load i64, i64* %total_failed.ptr
  %2011 = add i64 %2009, %2010
  %2012 = call %nyx_string* @nyx_string_from_int(i64 %2011)
  %2013 = call %nyx_string* @nyx_string_concat(%nyx_string* %2008, %nyx_string* %2012)
  %2014 = getelementptr [8 x i8], [8 x i8]* @.str190, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %2014, i64 7)
  %2016 = call %nyx_string* @nyx_string_concat(%nyx_string* %2013, %nyx_string* %2015)
  %2017 = call i8* @nyx_string_to_cstr(%nyx_string* %2016)
  call void @nyx_print_string(i8* %2017)
  %2018 = alloca i1
  store i1 false, i1* %2018
  %2019 = load i64, i64* %total_failed.ptr
  %2020 = icmp eq i64 %2019, 0
  br i1 %2020, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %2021 = load i64, i64* %1952
  %2022 = icmp eq i64 %2021, 0
  store i1 %2022, i1* %2018
  br label %sc_and_end392
sc_and_end392:
  %2023 = load i1, i1* %2018
  br i1 %2023, label %then393, label %else394
then393:
  %2024 = getelementptr [27 x i8], [27 x i8]* @.str191, i32 0, i32 0
  %2025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %2024, i64 26)
  %2026 = call i8* @nyx_string_to_cstr(%nyx_string* %2025)
  call void @nyx_print_string(i8* %2026)
  br label %merge395
else394:
  %2027 = getelementptr [28 x i8], [28 x i8]* @.str192, i32 0, i32 0
  %2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %2027, i64 27)
  %2029 = call i8* @nyx_string_to_cstr(%nyx_string* %2028)
  call void @nyx_print_string(i8* %2029)
  br label %merge395
merge395:
  %2030 = getelementptr [36 x i8], [36 x i8]* @.str193, i32 0, i32 0
  %2031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2030, i64 35)
  %2032 = call i8* @nyx_string_to_cstr(%nyx_string* %2031)
  call void @nyx_print_string(i8* %2032)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %2033 = getelementptr [28 x i8], [28 x i8]* @.str194, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2033, i64 27)
  %2035 = call i8* @nyx_string_to_cstr(%nyx_string* %2034)
  %2036 = call %nyx_string* @nyx_exec(i8* %2035)
  %2037 = alloca %nyx_string*
  store %nyx_string* %2036, %nyx_string** %2037
  %2038 = load %nyx_string*, %nyx_string** %2037
  %2039 = getelementptr [9 x i8], [9 x i8]* @.str195, i32 0, i32 0
  %2040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2039, i64 8)
  %2041 = call i64 @nyx_string_index_of(%nyx_string* %2038, %nyx_string* %2040)
  %2042 = alloca i64
  store i64 %2041, i64* %2042
  %2043 = load i64, i64* %2042
  %2044 = icmp slt i64 %2043, 0
  br i1 %2044, label %then396, label %else397
then396:
  %2045 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2045, i64 0)
  ret %nyx_string* %2046
else397:
  br label %merge398
merge398:
  %2047 = load i64, i64* %2042
  %2048 = add i64 %2047, 8
  %2049 = alloca i64
  store i64 %2048, i64* %2049
  %2050 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %2051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2050, i64 0)
  %2052 = alloca %nyx_string*
  store %nyx_string* %2051, %nyx_string** %2052
  %2053 = call i8* @llvm.stacksave()
  br label %while_cond399
while_cond399:
  %2054 = load i64, i64* %2049
  %2055 = load %nyx_string*, %nyx_string** %2037
  %2056 = call i64 @nyx_string_byte_length(%nyx_string* %2055)
  %2057 = icmp slt i64 %2054, %2056
  br i1 %2057, label %while_body400, label %while_end401
while_body400:
  call void @llvm.stackrestore(i8* %2053)
  %2058 = load %nyx_string*, %nyx_string** %2037
  %2059 = load i64, i64* %2049
  %2060 = call i8 @nyx_string_char_at(%nyx_string* %2058, i64 %2059)
  %2061 = zext i8 %2060 to i64
  %2062 = alloca i64
  store i64 %2061, i64* %2062
  %2063 = alloca i1
  store i1 false, i1* %2063
  %2064 = load i64, i64* %2062
  %2065 = icmp sge i64 %2064, 48
  br i1 %2065, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %2066 = load i64, i64* %2062
  %2067 = icmp sle i64 %2066, 57
  store i1 %2067, i1* %2063
  br label %sc_and_end403
sc_and_end403:
  %2068 = load i1, i1* %2063
  br i1 %2068, label %then404, label %else405
then404:
  %2069 = load %nyx_string*, %nyx_string** %2052
  %2070 = load %nyx_string*, %nyx_string** %2037
  %2071 = load i64, i64* %2049
  %2072 = load i64, i64* %2049
  %2073 = add i64 %2072, 1
  %2074 = call %nyx_string* @nyx_string_substring(%nyx_string* %2070, i64 %2071, i64 %2073)
  %2075 = call %nyx_string* @nyx_string_concat(%nyx_string* %2069, %nyx_string* %2074)
  store %nyx_string* %2075, %nyx_string** %2052
  %2076 = load i64, i64* %2049
  %2077 = add i64 %2076, 1
  store i64 %2077, i64* %2049
  br label %merge406
else405:
  %2078 = load %nyx_string*, %nyx_string** %2037
  %2079 = call i64 @nyx_string_byte_length(%nyx_string* %2078)
  store i64 %2079, i64* %2049
  br label %merge406
merge406:
  br label %while_cond399
while_end401:
  %2080 = load %nyx_string*, %nyx_string** %2052
  ret %nyx_string* %2080
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %2081 = getelementptr [10 x i8], [10 x i8]* @.str198, i32 0, i32 0
  %2082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2081, i64 9)
  %2083 = load %nyx_string*, %nyx_string** %path.ptr
  %2084 = call %nyx_string* @nyx_string_concat(%nyx_string* %2082, %nyx_string* %2083)
  %2085 = getelementptr [2 x i8], [2 x i8]* @.str199, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2085, i64 1)
  %2087 = call %nyx_string* @nyx_string_concat(%nyx_string* %2084, %nyx_string* %2086)
  %2088 = call i8* @nyx_string_to_cstr(%nyx_string* %2087)
  %2089 = call i64 @nyx_exec_code(i8* %2088)
  %2090 = icmp eq i64 %2089, 0
  ret i1 %2090
}

define internal %nyx_string* @cov_find_profdata(
) {
  %2091 = call %nyx_string* @cov_clang_major()
  %2092 = alloca %nyx_string*
  store %nyx_string* %2091, %nyx_string** %2092
  %2093 = load %nyx_string*, %nyx_string** %2092
  %2094 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %2095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2094, i64 0)
  %2096 = call i1 @nyx_string_equals(%nyx_string* %2093, %nyx_string* %2095)
  %2097 = xor i1 %2096, true
  br i1 %2097, label %then407, label %else408
then407:
  %2098 = getelementptr [26 x i8], [26 x i8]* @.str201, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2098, i64 25)
  %2100 = load %nyx_string*, %nyx_string** %2092
  %2101 = call %nyx_string* @nyx_string_concat(%nyx_string* %2099, %nyx_string* %2100)
  %2102 = getelementptr [13 x i8], [13 x i8]* @.str202, i32 0, i32 0
  %2103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2102, i64 12)
  %2104 = call %nyx_string* @nyx_string_concat(%nyx_string* %2101, %nyx_string* %2103)
  %2105 = call i8* @nyx_string_to_cstr(%nyx_string* %2104)
  %2106 = call %nyx_string* @nyx_exec(i8* %2105)
  %2107 = call %nyx_string* @nyx_string_trim(%nyx_string* %2106)
  %2108 = alloca %nyx_string*
  store %nyx_string* %2107, %nyx_string** %2108
  %2109 = load %nyx_string*, %nyx_string** %2108
  %2110 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %2111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2110, i64 0)
  %2112 = call i1 @nyx_string_equals(%nyx_string* %2109, %nyx_string* %2111)
  %2113 = xor i1 %2112, true
  br i1 %2113, label %then410, label %else411
then410:
  %2114 = load %nyx_string*, %nyx_string** %2108
  ret %nyx_string* %2114
else411:
  br label %merge412
merge412:
  br label %merge409
else408:
  br label %merge409
merge409:
  %2115 = getelementptr [37 x i8], [37 x i8]* @.str204, i32 0, i32 0
  %2116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2115, i64 36)
  %2117 = call i8* @nyx_string_to_cstr(%nyx_string* %2116)
  %2118 = call %nyx_string* @nyx_exec(i8* %2117)
  %2119 = call %nyx_string* @nyx_string_trim(%nyx_string* %2118)
  ret %nyx_string* %2119
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %2120 = call { i64, i8* }* @nyx_array_new_ptr()
  %2121 = alloca { i64, i8* }*
  store { i64, i8* }* %2120, { i64, i8* }** %2121
  %2122 = alloca i64
  store i64 0, i64* %2122
  %2123 = alloca i64
  store i64 0, i64* %2123
  %2124 = call i8* @llvm.stacksave()
  br label %while_cond413
while_cond413:
  %2125 = load i64, i64* %2123
  %2126 = load %nyx_string*, %nyx_string** %line.ptr
  %2127 = call i64 @nyx_string_byte_length(%nyx_string* %2126)
  %2128 = icmp slt i64 %2125, %2127
  br i1 %2128, label %while_body414, label %while_end415
while_body414:
  call void @llvm.stackrestore(i8* %2124)
  %2129 = load %nyx_string*, %nyx_string** %line.ptr
  %2130 = load i64, i64* %2123
  %2131 = call i8 @nyx_string_char_at(%nyx_string* %2129, i64 %2130)
  %2132 = zext i8 %2131 to i64
  %2133 = icmp eq i64 %2132, 9
  br i1 %2133, label %then416, label %else417
then416:
  %2134 = load { i64, i8* }*, { i64, i8* }** %2121
  %2135 = load %nyx_string*, %nyx_string** %line.ptr
  %2136 = load i64, i64* %2122
  %2137 = load i64, i64* %2123
  %2138 = call %nyx_string* @nyx_string_substring(%nyx_string* %2135, i64 %2136, i64 %2137)
  %2139 = ptrtoint %nyx_string* %2138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2134, i64 %2139, i64 2)
  %2140 = load i64, i64* %2123
  %2141 = add i64 %2140, 1
  store i64 %2141, i64* %2122
  br label %merge418
else417:
  br label %merge418
merge418:
  %2142 = load i64, i64* %2123
  %2143 = add i64 %2142, 1
  store i64 %2143, i64* %2123
  br label %while_cond413
while_end415:
  %2144 = load { i64, i8* }*, { i64, i8* }** %2121
  %2145 = load %nyx_string*, %nyx_string** %line.ptr
  %2146 = load i64, i64* %2122
  %2147 = load %nyx_string*, %nyx_string** %line.ptr
  %2148 = call i64 @nyx_string_byte_length(%nyx_string* %2147)
  %2149 = call %nyx_string* @nyx_string_substring(%nyx_string* %2145, i64 %2146, i64 %2148)
  %2150 = ptrtoint %nyx_string* %2149 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2144, i64 %2150, i64 2)
  %2151 = load { i64, i8* }*, { i64, i8* }** %2121
  ret { i64, i8* }* %2151
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %2152 = load i64, i64* %n.ptr
  %2153 = call %nyx_string* @nyx_string_from_int(i64 %2152)
  %2154 = alloca %nyx_string*
  store %nyx_string* %2153, %nyx_string** %2154
  %2155 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2155, i64 1)
  %2157 = alloca %nyx_string*
  store %nyx_string* %2156, %nyx_string** %2157
  %2158 = call i8* @llvm.stacksave()
  br label %while_cond419
while_cond419:
  %2159 = load %nyx_string*, %nyx_string** %2154
  %2160 = call i64 @nyx_string_byte_length(%nyx_string* %2159)
  %2161 = icmp slt i64 %2160, 9
  br i1 %2161, label %while_body420, label %while_end421
while_body420:
  call void @llvm.stackrestore(i8* %2158)
  %2162 = load %nyx_string*, %nyx_string** %2157
  %2163 = load %nyx_string*, %nyx_string** %2154
  %2164 = call %nyx_string* @nyx_string_concat(%nyx_string* %2162, %nyx_string* %2163)
  store %nyx_string* %2164, %nyx_string** %2154
  br label %while_cond419
while_end421:
  %2165 = load %nyx_string*, %nyx_string** %2154
  ret %nyx_string* %2165
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %2166 = call i8* @nyx_map_new(i32 0)
  %2167 = alloca i8*
  store i8* %2166, i8** %2167
  %2168 = load %nyx_string*, %nyx_string** %show.ptr
  %2169 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %2170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2169, i64 1)
  %2171 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2168, %nyx_string* %2170)
  %2172 = alloca { i64, i8* }*
  store { i64, i8* }* %2171, { i64, i8* }** %2172
  %2173 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %2174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2173, i64 0)
  %2175 = alloca %nyx_string*
  store %nyx_string* %2174, %nyx_string** %2175
  %2176 = alloca i64
  store i64 0, i64* %2176
  %2177 = getelementptr [3 x i8], [3 x i8]* @.str208, i32 0, i32 0
  %2178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2177, i64 2)
  %2179 = alloca %nyx_string*
  store %nyx_string* %2178, %nyx_string** %2179
  %2180 = getelementptr [4 x i8], [4 x i8]* @.str209, i32 0, i32 0
  %2181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2180, i64 3)
  %2182 = alloca %nyx_string*
  store %nyx_string* %2181, %nyx_string** %2182
  %2183 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2183, i64 1)
  %2185 = alloca %nyx_string*
  store %nyx_string* %2184, %nyx_string** %2185
  %2186 = getelementptr [2 x i8], [2 x i8]* @.str211, i32 0, i32 0
  %2187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2186, i64 1)
  %2188 = alloca %nyx_string*
  store %nyx_string* %2187, %nyx_string** %2188
  %2189 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %2190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2189, i64 0)
  %2191 = alloca %nyx_string*
  store %nyx_string* %2190, %nyx_string** %2191
  %2192 = getelementptr [14 x i8], [14 x i8]* @.str213, i32 0, i32 0
  %2193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2192, i64 13)
  %2194 = alloca %nyx_string*
  store %nyx_string* %2193, %nyx_string** %2194
  %2195 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2195, i64 1)
  %2197 = alloca %nyx_string*
  store %nyx_string* %2196, %nyx_string** %2197
  %2198 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2198, i64 1)
  %2200 = alloca %nyx_string*
  store %nyx_string* %2199, %nyx_string** %2200
  %2201 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2201, i64 1)
  %2203 = alloca %nyx_string*
  store %nyx_string* %2202, %nyx_string** %2203
  %2204 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2204, i64 1)
  %2206 = alloca %nyx_string*
  store %nyx_string* %2205, %nyx_string** %2206
  %2207 = call i8* @llvm.stacksave()
  br label %while_cond422
while_cond422:
  %2208 = load i64, i64* %2176
  %2209 = load { i64, i8* }*, { i64, i8* }** %2172
  %2210 = call i64 @nyx_array_length({ i64, i8* }* %2209)
  %2211 = icmp slt i64 %2208, %2210
  br i1 %2211, label %while_body423, label %while_end424
while_body423:
  call void @llvm.stackrestore(i8* %2207)
  %2212 = load { i64, i8* }*, { i64, i8* }** %2172
  %2213 = load i64, i64* %2176
  %2214 = call i64 @nyx_array_get_checked({ i64, i8* }* %2212, i64 %2213, i64 2)
  %2215 = inttoptr i64 %2214 to %nyx_string*
  %2216 = alloca %nyx_string*
  store %nyx_string* %2215, %nyx_string** %2216
  %2217 = alloca i1
  store i1 false, i1* %2217
  %2218 = alloca i1
  store i1 false, i1* %2218
  %2219 = load %nyx_string*, %nyx_string** %2216
  %2220 = load %nyx_string*, %nyx_string** %2179
  %2221 = call i1 @nyx_string_starts_with(%nyx_string* %2219, %nyx_string* %2220)
  br i1 %2221, label %sc_and_rhs425, label %sc_and_end426
sc_and_rhs425:
  %2222 = load %nyx_string*, %nyx_string** %2216
  %2223 = load %nyx_string*, %nyx_string** %2182
  %2224 = call i1 @nyx_string_starts_with(%nyx_string* %2222, %nyx_string* %2223)
  %2225 = xor i1 %2224, true
  store i1 %2225, i1* %2218
  br label %sc_and_end426
sc_and_end426:
  %2226 = load i1, i1* %2218
  br i1 %2226, label %sc_and_rhs427, label %sc_and_end428
sc_and_rhs427:
  %2227 = load %nyx_string*, %nyx_string** %2216
  %2228 = load %nyx_string*, %nyx_string** %2185
  %2229 = call i1 @nyx_string_ends_with(%nyx_string* %2227, %nyx_string* %2228)
  store i1 %2229, i1* %2217
  br label %sc_and_end428
sc_and_end428:
  %2230 = load i1, i1* %2217
  br i1 %2230, label %then429, label %else430
then429:
  %2231 = load %nyx_string*, %nyx_string** %2216
  %2232 = load %nyx_string*, %nyx_string** %2216
  %2233 = call i64 @nyx_string_byte_length(%nyx_string* %2232)
  %2234 = sub i64 %2233, 1
  %2235 = call %nyx_string* @nyx_string_substring(%nyx_string* %2231, i64 2, i64 %2234)
  %2236 = alloca %nyx_string*
  store %nyx_string* %2235, %nyx_string** %2236
  %2237 = load %nyx_string*, %nyx_string** %2236
  %2238 = load %nyx_string*, %nyx_string** %2188
  %2239 = call i64 @nyx_string_index_of(%nyx_string* %2237, %nyx_string* %2238)
  %2240 = alloca i64
  store i64 %2239, i64* %2240
  %2241 = load i64, i64* %2240
  %2242 = icmp sge i64 %2241, 0
  br i1 %2242, label %then432, label %else433
then432:
  %2243 = load %nyx_string*, %nyx_string** %2236
  %2244 = load i64, i64* %2240
  %2245 = add i64 %2244, 1
  %2246 = load %nyx_string*, %nyx_string** %2236
  %2247 = call i64 @nyx_string_byte_length(%nyx_string* %2246)
  %2248 = call %nyx_string* @nyx_string_substring(%nyx_string* %2243, i64 %2245, i64 %2247)
  store %nyx_string* %2248, %nyx_string** %2236
  br label %merge434
else433:
  br label %merge434
merge434:
  %2249 = load %nyx_string*, %nyx_string** %2236
  store %nyx_string* %2249, %nyx_string** %2175
  br label %merge431
else430:
  %2250 = alloca i1
  store i1 false, i1* %2250
  %2251 = load %nyx_string*, %nyx_string** %2175
  %2252 = load %nyx_string*, %nyx_string** %2191
  %2253 = call i1 @nyx_string_equals(%nyx_string* %2251, %nyx_string* %2252)
  %2254 = xor i1 %2253, true
  br i1 %2254, label %sc_and_rhs435, label %sc_and_end436
sc_and_rhs435:
  %2255 = load %nyx_string*, %nyx_string** %2216
  %2256 = load %nyx_string*, %nyx_string** %2194
  %2257 = call i1 @nyx_string_contains(%nyx_string* %2255, %nyx_string* %2256)
  store i1 %2257, i1* %2250
  br label %sc_and_end436
sc_and_end436:
  %2258 = load i1, i1* %2250
  br i1 %2258, label %then437, label %else438
then437:
  %2259 = load %nyx_string*, %nyx_string** %2216
  %2260 = load %nyx_string*, %nyx_string** %2197
  %2261 = call i64 @nyx_string_index_of(%nyx_string* %2259, %nyx_string* %2260)
  %2262 = alloca i64
  store i64 %2261, i64* %2262
  %2263 = load %nyx_string*, %nyx_string** %2216
  %2264 = load %nyx_string*, %nyx_string** %2200
  %2265 = call i64 @nyx_string_index_of(%nyx_string* %2263, %nyx_string* %2264)
  %2266 = alloca i64
  store i64 %2265, i64* %2266
  %2267 = alloca i1
  store i1 false, i1* %2267
  %2268 = load i64, i64* %2262
  %2269 = icmp sge i64 %2268, 0
  br i1 %2269, label %sc_and_rhs440, label %sc_and_end441
sc_and_rhs440:
  %2270 = load i64, i64* %2266
  %2271 = load i64, i64* %2262
  %2272 = icmp sgt i64 %2270, %2271
  store i1 %2272, i1* %2267
  br label %sc_and_end441
sc_and_end441:
  %2273 = load i1, i1* %2267
  br i1 %2273, label %then442, label %else443
then442:
  %2274 = load %nyx_string*, %nyx_string** %2216
  %2275 = load i64, i64* %2262
  %2276 = add i64 %2275, 1
  %2277 = load i64, i64* %2266
  %2278 = call %nyx_string* @nyx_string_substring(%nyx_string* %2274, i64 %2276, i64 %2277)
  %2279 = load %nyx_string*, %nyx_string** %2203
  %2280 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2278, %nyx_string* %2279)
  %2281 = alloca { i64, i8* }*
  store { i64, i8* }* %2280, { i64, i8* }** %2281
  %2282 = alloca i64
  store i64 0, i64* %2282
  %2283 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %2284 = load i64, i64* %2282
  %2285 = load { i64, i8* }*, { i64, i8* }** %2281
  %2286 = call i64 @nyx_array_length({ i64, i8* }* %2285)
  %2287 = icmp slt i64 %2284, %2286
  br i1 %2287, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %2283)
  %2288 = load { i64, i8* }*, { i64, i8* }** %2281
  %2289 = load i64, i64* %2282
  %2290 = call i64 @nyx_array_get_checked({ i64, i8* }* %2288, i64 %2289, i64 2)
  %2291 = inttoptr i64 %2290 to %nyx_string*
  %2292 = alloca %nyx_string*
  store %nyx_string* %2291, %nyx_string** %2292
  %2293 = load %nyx_string*, %nyx_string** %2292
  %2294 = call %nyx_string* @nyx_string_trim(%nyx_string* %2293)
  %2295 = call i64 @nyx_string_to_int(%nyx_string* %2294)
  %2296 = icmp sgt i64 %2295, 0
  br i1 %2296, label %then448, label %else449
then448:
  %2297 = load i8*, i8** %2167
  %2298 = load %nyx_string*, %nyx_string** %2175
  %2299 = load %nyx_string*, %nyx_string** %2206
  %2300 = call i8* @nyx_string_to_cstr(%nyx_string* %2298)
  %2301 = bitcast %nyx_string* %2299 to i8*
  call void @nyx_map_insert_str(i8* %2297, i8* %2300, i8* %2301)
  br label %merge450
else449:
  br label %merge450
merge450:
  %2302 = load i64, i64* %2282
  %2303 = add i64 %2302, 1
  store i64 %2303, i64* %2282
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
  %2304 = load i64, i64* %2176
  %2305 = add i64 %2304, 1
  store i64 %2305, i64* %2176
  br label %while_cond422
while_end424:
  %2306 = load i8*, i8** %2167
  ret i8* %2306
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2307 = call { i64, i8* }* @nyx_array_new_ptr()
  %2308 = alloca { i64, i8* }*
  store { i64, i8* }* %2307, { i64, i8* }** %2308
  %2309 = getelementptr [4 x i8], [4 x i8]* @.str218, i32 0, i32 0
  %2310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2309, i64 3)
  %2311 = call i8* @nyx_string_to_cstr(%nyx_string* %2310)
  %2312 = call i1 @nyx_file_exists(i8* %2311)
  %2313 = xor i1 %2312, true
  br i1 %2313, label %then451, label %else452
then451:
  %2314 = load { i64, i8* }*, { i64, i8* }** %2308
  ret { i64, i8* }* %2314
else452:
  br label %merge453
merge453:
  %2315 = getelementptr [50 x i8], [50 x i8]* @.str219, i32 0, i32 0
  %2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2315, i64 49)
  %2317 = call i8* @nyx_string_to_cstr(%nyx_string* %2316)
  %2318 = call %nyx_string* @nyx_exec(i8* %2317)
  %2319 = alloca %nyx_string*
  store %nyx_string* %2318, %nyx_string** %2319
  %2320 = load %nyx_string*, %nyx_string** %2319
  %2321 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %2322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2321, i64 1)
  %2323 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2320, %nyx_string* %2322)
  %2324 = alloca { i64, i8* }*
  store { i64, i8* }* %2323, { i64, i8* }** %2324
  %2325 = alloca i64
  store i64 0, i64* %2325
  %2326 = getelementptr [4 x i8], [4 x i8]* @.str221, i32 0, i32 0
  %2327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2326, i64 3)
  %2328 = alloca %nyx_string*
  store %nyx_string* %2327, %nyx_string** %2328
  %2329 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %2330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2329, i64 8)
  %2331 = alloca %nyx_string*
  store %nyx_string* %2330, %nyx_string** %2331
  %2332 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %2333 = load i64, i64* %2325
  %2334 = load { i64, i8* }*, { i64, i8* }** %2324
  %2335 = call i64 @nyx_array_length({ i64, i8* }* %2334)
  %2336 = icmp slt i64 %2333, %2335
  br i1 %2336, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %2332)
  %2337 = load { i64, i8* }*, { i64, i8* }** %2324
  %2338 = load i64, i64* %2325
  %2339 = call i64 @nyx_array_get_checked({ i64, i8* }* %2337, i64 %2338, i64 2)
  %2340 = inttoptr i64 %2339 to %nyx_string*
  %2341 = alloca %nyx_string*
  store %nyx_string* %2340, %nyx_string** %2341
  %2342 = load %nyx_string*, %nyx_string** %2341
  %2343 = call %nyx_string* @nyx_string_trim(%nyx_string* %2342)
  %2344 = alloca %nyx_string*
  store %nyx_string* %2343, %nyx_string** %2344
  %2345 = alloca i1
  store i1 false, i1* %2345
  %2346 = load %nyx_string*, %nyx_string** %2344
  %2347 = load %nyx_string*, %nyx_string** %2328
  %2348 = call i1 @nyx_string_ends_with(%nyx_string* %2346, %nyx_string* %2347)
  br i1 %2348, label %sc_and_rhs457, label %sc_and_end458
sc_and_rhs457:
  %2349 = load %nyx_string*, %nyx_string** %2344
  %2350 = load %nyx_string*, %nyx_string** %2331
  %2351 = call i1 @nyx_string_ends_with(%nyx_string* %2349, %nyx_string* %2350)
  %2352 = xor i1 %2351, true
  store i1 %2352, i1* %2345
  br label %sc_and_end458
sc_and_end458:
  %2353 = load i1, i1* %2345
  br i1 %2353, label %then459, label %else460
then459:
  %2354 = load { i64, i8* }*, { i64, i8* }** %2308
  %2355 = load %nyx_string*, %nyx_string** %2344
  %2356 = load %nyx_string*, %nyx_string** %2344
  %2357 = call i64 @nyx_string_byte_length(%nyx_string* %2356)
  %2358 = sub i64 %2357, 3
  %2359 = call %nyx_string* @nyx_string_substring(%nyx_string* %2355, i64 0, i64 %2358)
  %2360 = ptrtoint %nyx_string* %2359 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2354, i64 %2360, i64 2)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2361 = load i64, i64* %2325
  %2362 = add i64 %2361, 1
  store i64 %2362, i64* %2325
  br label %while_cond454
while_end456:
  %2363 = load { i64, i8* }*, { i64, i8* }** %2308
  ret { i64, i8* }* %2363
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
  %2364 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %2365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2364, i64 0)
  %2366 = alloca %nyx_string*
  store %nyx_string* %2365, %nyx_string** %2366
  %2367 = alloca i64
  store i64 0, i64* %2367
  %2368 = getelementptr [9 x i8], [9 x i8]* @.str224, i32 0, i32 0
  %2369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2368, i64 8)
  %2370 = alloca %nyx_string*
  store %nyx_string* %2369, %nyx_string** %2370
  %2371 = getelementptr [3 x i8], [3 x i8]* @.str225, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2371, i64 2)
  %2373 = alloca %nyx_string*
  store %nyx_string* %2372, %nyx_string** %2373
  %2374 = call i8* @llvm.stacksave()
  br label %while_cond462
while_cond462:
  %2375 = load i64, i64* %2367
  %2376 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2377 = call i64 @nyx_array_length({ i64, i8* }* %2376)
  %2378 = icmp slt i64 %2375, %2377
  br i1 %2378, label %while_body463, label %while_end464
while_body463:
  call void @llvm.stackrestore(i8* %2374)
  %2379 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2380 = load i64, i64* %2367
  %2381 = call i64 @nyx_array_get_checked({ i64, i8* }* %2379, i64 %2380, i64 2)
  %2382 = inttoptr i64 %2381 to %nyx_string*
  %2383 = alloca %nyx_string*
  store %nyx_string* %2382, %nyx_string** %2383
  %2384 = load %nyx_string*, %nyx_string** %2366
  %2385 = load %nyx_string*, %nyx_string** %2370
  %2386 = call %nyx_string* @nyx_string_concat(%nyx_string* %2384, %nyx_string* %2385)
  %2387 = load %nyx_string*, %nyx_string** %2383
  %2388 = call %nyx_string* @nyx_string_concat(%nyx_string* %2386, %nyx_string* %2387)
  %2389 = load %nyx_string*, %nyx_string** %2373
  %2390 = call %nyx_string* @nyx_string_concat(%nyx_string* %2388, %nyx_string* %2389)
  store %nyx_string* %2390, %nyx_string** %2366
  %2391 = load i64, i64* %2367
  %2392 = add i64 %2391, 1
  store i64 %2392, i64* %2367
  br label %while_cond462
while_end464:
  %2393 = load %nyx_string*, %nyx_string** %2366
  %2394 = getelementptr [36 x i8], [36 x i8]* @.str226, i32 0, i32 0
  %2395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2394, i64 35)
  %2396 = call %nyx_string* @nyx_string_concat(%nyx_string* %2393, %nyx_string* %2395)
  store %nyx_string* %2396, %nyx_string** %2366
  %2397 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2398 = getelementptr [13 x i8], [13 x i8]* @.str227, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2398, i64 12)
  %2400 = call %nyx_string* @nyx_string_concat(%nyx_string* %2397, %nyx_string* %2399)
  %2401 = load %nyx_string*, %nyx_string** %2366
  %2402 = ptrtoint %nyx_string* %2401 to i64
  %2403 = call i8* @nyx_string_to_cstr(%nyx_string* %2400)
  %2404 = inttoptr i64 %2402 to %nyx_string*
  %2405 = call i1 @nyx_write_file_safe(i8* %2403, %nyx_string* %2404)
  %2406 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2407 = getelementptr [14 x i8], [14 x i8]* @.str228, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2407, i64 13)
  %2409 = call %nyx_string* @nyx_string_concat(%nyx_string* %2406, %nyx_string* %2408)
  %2410 = alloca %nyx_string*
  store %nyx_string* %2409, %nyx_string** %2410
  %2411 = getelementptr [13 x i8], [13 x i8]* @.str229, i32 0, i32 0
  %2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2411, i64 12)
  %2413 = getelementptr [8 x i8], [8 x i8]* @.str230, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2413, i64 7)
  %2415 = call %nyx_string* @nyx_string_concat(%nyx_string* %2412, %nyx_string* %2414)
  %2416 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2417 = call %nyx_string* @nyx_string_concat(%nyx_string* %2415, %nyx_string* %2416)
  %2418 = getelementptr [19 x i8], [19 x i8]* @.str231, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2418, i64 18)
  %2420 = call %nyx_string* @nyx_string_concat(%nyx_string* %2417, %nyx_string* %2419)
  %2421 = getelementptr [5 x i8], [5 x i8]* @.str232, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2421, i64 4)
  %2423 = call %nyx_string* @nyx_string_concat(%nyx_string* %2420, %nyx_string* %2422)
  %2424 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2425 = call %nyx_string* @nyx_string_concat(%nyx_string* %2423, %nyx_string* %2424)
  %2426 = getelementptr [24 x i8], [24 x i8]* @.str233, i32 0, i32 0
  %2427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2426, i64 23)
  %2428 = call %nyx_string* @nyx_string_concat(%nyx_string* %2425, %nyx_string* %2427)
  %2429 = getelementptr [5 x i8], [5 x i8]* @.str234, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2429, i64 4)
  %2431 = call %nyx_string* @nyx_string_concat(%nyx_string* %2428, %nyx_string* %2430)
  %2432 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2433 = call %nyx_string* @nyx_string_concat(%nyx_string* %2431, %nyx_string* %2432)
  %2434 = getelementptr [3 x i8], [3 x i8]* @.str235, i32 0, i32 0
  %2435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2434, i64 2)
  %2436 = call %nyx_string* @nyx_string_concat(%nyx_string* %2433, %nyx_string* %2435)
  %2437 = getelementptr [137 x i8], [137 x i8]* @.str236, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2437, i64 136)
  %2439 = call %nyx_string* @nyx_string_concat(%nyx_string* %2436, %nyx_string* %2438)
  %2440 = getelementptr [43 x i8], [43 x i8]* @.str237, i32 0, i32 0
  %2441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2440, i64 42)
  %2442 = call %nyx_string* @nyx_string_concat(%nyx_string* %2439, %nyx_string* %2441)
  %2443 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2444 = call %nyx_string* @nyx_string_concat(%nyx_string* %2442, %nyx_string* %2443)
  %2445 = getelementptr [38 x i8], [38 x i8]* @.str238, i32 0, i32 0
  %2446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2445, i64 37)
  %2447 = call %nyx_string* @nyx_string_concat(%nyx_string* %2444, %nyx_string* %2446)
  %2448 = load %nyx_string*, %nyx_string** %2410
  %2449 = call %nyx_string* @nyx_string_concat(%nyx_string* %2447, %nyx_string* %2448)
  %2450 = getelementptr [24 x i8], [24 x i8]* @.str239, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2450, i64 23)
  %2452 = call %nyx_string* @nyx_string_concat(%nyx_string* %2449, %nyx_string* %2451)
  %2453 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2454 = call %nyx_string* @nyx_string_concat(%nyx_string* %2452, %nyx_string* %2453)
  %2455 = getelementptr [21 x i8], [21 x i8]* @.str240, i32 0, i32 0
  %2456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2455, i64 20)
  %2457 = call %nyx_string* @nyx_string_concat(%nyx_string* %2454, %nyx_string* %2456)
  %2458 = getelementptr [7 x i8], [7 x i8]* @.str241, i32 0, i32 0
  %2459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2458, i64 6)
  %2460 = call %nyx_string* @nyx_string_concat(%nyx_string* %2457, %nyx_string* %2459)
  %2461 = getelementptr [17 x i8], [17 x i8]* @.str242, i32 0, i32 0
  %2462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2461, i64 16)
  %2463 = call %nyx_string* @nyx_string_concat(%nyx_string* %2460, %nyx_string* %2462)
  %2464 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2465 = call %nyx_string* @nyx_string_concat(%nyx_string* %2463, %nyx_string* %2464)
  %2466 = getelementptr [19 x i8], [19 x i8]* @.str243, i32 0, i32 0
  %2467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2466, i64 18)
  %2468 = call %nyx_string* @nyx_string_concat(%nyx_string* %2465, %nyx_string* %2467)
  %2469 = getelementptr [10 x i8], [10 x i8]* @.str244, i32 0, i32 0
  %2470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2469, i64 9)
  %2471 = call %nyx_string* @nyx_string_concat(%nyx_string* %2468, %nyx_string* %2470)
  %2472 = alloca %nyx_string*
  store %nyx_string* %2471, %nyx_string** %2472
  %2473 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2474 = getelementptr [13 x i8], [13 x i8]* @.str245, i32 0, i32 0
  %2475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2474, i64 12)
  %2476 = call %nyx_string* @nyx_string_concat(%nyx_string* %2473, %nyx_string* %2475)
  %2477 = load %nyx_string*, %nyx_string** %2472
  %2478 = ptrtoint %nyx_string* %2477 to i64
  %2479 = call i8* @nyx_string_to_cstr(%nyx_string* %2476)
  %2480 = inttoptr i64 %2478 to %nyx_string*
  %2481 = call i1 @nyx_write_file_safe(i8* %2479, %nyx_string* %2480)
  %2482 = getelementptr [7 x i8], [7 x i8]* @.str246, i32 0, i32 0
  %2483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2482, i64 6)
  %2484 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2485 = call %nyx_string* @nyx_string_concat(%nyx_string* %2483, %nyx_string* %2484)
  %2486 = getelementptr [14 x i8], [14 x i8]* @.str247, i32 0, i32 0
  %2487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2486, i64 13)
  %2488 = call %nyx_string* @nyx_string_concat(%nyx_string* %2485, %nyx_string* %2487)
  %2489 = call i8* @nyx_string_to_cstr(%nyx_string* %2488)
  %2490 = call i64 @nyx_exec_code(i8* %2489)
  %2491 = load %nyx_string*, %nyx_string** %2410
  ret %nyx_string* %2491
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
  %2492 = getelementptr [9 x i8], [9 x i8]* @.str248, i32 0, i32 0
  %2493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2492, i64 8)
  %2494 = call i8* @nyx_string_to_cstr(%nyx_string* %2493)
  %2495 = call %nyx_string* @nyx_getenv(i8* %2494)
  %2496 = alloca %nyx_string*
  store %nyx_string* %2495, %nyx_string** %2496
  %2497 = getelementptr [4 x i8], [4 x i8]* @.str249, i32 0, i32 0
  %2498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2497, i64 3)
  %2499 = call i8* @nyx_string_to_cstr(%nyx_string* %2498)
  %2500 = call %nyx_string* @nyx_getenv(i8* %2499)
  %2501 = alloca %nyx_string*
  store %nyx_string* %2500, %nyx_string** %2501
  %2502 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %2503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2502, i64 0)
  %2504 = call i8* @nyx_string_to_cstr(%nyx_string* %2503)
  call void @nyx_print_string(i8* %2504)
  %2505 = getelementptr [36 x i8], [36 x i8]* @.str251, i32 0, i32 0
  %2506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2505, i64 35)
  %2507 = call i8* @nyx_string_to_cstr(%nyx_string* %2506)
  call void @nyx_print_string(i8* %2507)
  %2508 = getelementptr [1 x i8], [1 x i8]* @.str252, i32 0, i32 0
  %2509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2508, i64 0)
  %2510 = alloca %nyx_string*
  store %nyx_string* %2509, %nyx_string** %2510
  %2511 = alloca i64
  store i64 0, i64* %2511
  %2512 = call i8* @nyx_map_new(i32 0)
  %2513 = alloca i8*
  store i8* %2512, i8** %2513
  %2514 = call { i64, i8* }* @nyx_array_new_ptr()
  %2515 = alloca { i64, i8* }*
  store { i64, i8* }* %2514, { i64, i8* }** %2515
  %2516 = alloca i64
  store i64 0, i64* %2516
  %2517 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %2518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2517, i64 1)
  %2519 = alloca %nyx_string*
  store %nyx_string* %2518, %nyx_string** %2519
  %2520 = getelementptr [9 x i8], [9 x i8]* @.str254, i32 0, i32 0
  %2521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2520, i64 8)
  %2522 = alloca %nyx_string*
  store %nyx_string* %2521, %nyx_string** %2522
  %2523 = getelementptr [3 x i8], [3 x i8]* @.str255, i32 0, i32 0
  %2524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2523, i64 2)
  %2525 = alloca %nyx_string*
  store %nyx_string* %2524, %nyx_string** %2525
  %2526 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2526, i64 1)
  %2528 = alloca %nyx_string*
  store %nyx_string* %2527, %nyx_string** %2528
  %2529 = getelementptr [2 x i8], [2 x i8]* @.str257, i32 0, i32 0
  %2530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2529, i64 1)
  %2531 = alloca %nyx_string*
  store %nyx_string* %2530, %nyx_string** %2531
  %2532 = call i8* @llvm.stacksave()
  br label %while_cond465
while_cond465:
  %2533 = load i64, i64* %2516
  %2534 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2535 = call i64 @nyx_array_length({ i64, i8* }* %2534)
  %2536 = icmp slt i64 %2533, %2535
  br i1 %2536, label %while_body466, label %while_end467
while_body466:
  call void @llvm.stackrestore(i8* %2532)
  %2537 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2538 = load i64, i64* %2516
  %2539 = call i64 @nyx_array_get_checked({ i64, i8* }* %2537, i64 %2538, i64 2)
  %2540 = inttoptr i64 %2539 to %nyx_string*
  %2541 = alloca %nyx_string*
  store %nyx_string* %2540, %nyx_string** %2541
  %2542 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2543 = load i64, i64* %2516
  %2544 = call i64 @nyx_array_get_checked({ i64, i8* }* %2542, i64 %2543, i64 2)
  %2545 = inttoptr i64 %2544 to %nyx_string*
  %2546 = alloca %nyx_string*
  store %nyx_string* %2545, %nyx_string** %2546
  %2547 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2548 = load %nyx_string*, %nyx_string** %2519
  %2549 = call %nyx_string* @nyx_string_concat(%nyx_string* %2547, %nyx_string* %2548)
  %2550 = load %nyx_string*, %nyx_string** %2541
  %2551 = call %nyx_string* @nyx_string_concat(%nyx_string* %2549, %nyx_string* %2550)
  %2552 = load %nyx_string*, %nyx_string** %2522
  %2553 = call %nyx_string* @nyx_string_concat(%nyx_string* %2551, %nyx_string* %2552)
  %2554 = alloca %nyx_string*
  store %nyx_string* %2553, %nyx_string** %2554
  %2555 = load %nyx_string*, %nyx_string** %2554
  %2556 = call i1 @cov_profraw_valid(%nyx_string* %2555)
  br i1 %2556, label %then468, label %else469
then468:
  %2557 = load %nyx_string*, %nyx_string** %2510
  %2558 = load %nyx_string*, %nyx_string** %2525
  %2559 = call %nyx_string* @nyx_string_concat(%nyx_string* %2557, %nyx_string* %2558)
  %2560 = load %nyx_string*, %nyx_string** %2554
  %2561 = call %nyx_string* @nyx_string_concat(%nyx_string* %2559, %nyx_string* %2560)
  %2562 = load %nyx_string*, %nyx_string** %2528
  %2563 = call %nyx_string* @nyx_string_concat(%nyx_string* %2561, %nyx_string* %2562)
  store %nyx_string* %2563, %nyx_string** %2510
  %2564 = load i64, i64* %2511
  %2565 = add i64 %2564, 1
  store i64 %2565, i64* %2511
  %2566 = load i8*, i8** %2513
  %2567 = load %nyx_string*, %nyx_string** %2541
  %2568 = load %nyx_string*, %nyx_string** %2531
  %2569 = call i8* @nyx_string_to_cstr(%nyx_string* %2567)
  %2570 = bitcast %nyx_string* %2568 to i8*
  call void @nyx_map_insert_str(i8* %2566, i8* %2569, i8* %2570)
  br label %merge470
else469:
  %2571 = load { i64, i8* }*, { i64, i8* }** %2515
  %2572 = load %nyx_string*, %nyx_string** %2546
  %2573 = ptrtoint %nyx_string* %2572 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2571, i64 %2573, i64 2)
  br label %merge470
merge470:
  %2574 = load i64, i64* %2516
  %2575 = add i64 %2574, 1
  store i64 %2575, i64* %2516
  br label %while_cond465
while_end467:
  %2576 = call i8* @nyx_map_new(i32 0)
  %2577 = alloca i8*
  store i8* %2576, i8** %2577
  %2578 = load i64, i64* %2511
  %2579 = icmp sgt i64 %2578, 0
  br i1 %2579, label %then471, label %else472
then471:
  %2580 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2581 = getelementptr [17 x i8], [17 x i8]* @.str258, i32 0, i32 0
  %2582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2581, i64 16)
  %2583 = call %nyx_string* @nyx_string_concat(%nyx_string* %2580, %nyx_string* %2582)
  %2584 = alloca %nyx_string*
  store %nyx_string* %2583, %nyx_string** %2584
  %2585 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2586 = getelementptr [12 x i8], [12 x i8]* @.str259, i32 0, i32 0
  %2587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2586, i64 11)
  %2588 = call %nyx_string* @nyx_string_concat(%nyx_string* %2585, %nyx_string* %2587)
  %2589 = load %nyx_string*, %nyx_string** %2584
  %2590 = call %nyx_string* @nyx_string_concat(%nyx_string* %2588, %nyx_string* %2589)
  %2591 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %2592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2591, i64 1)
  %2593 = call %nyx_string* @nyx_string_concat(%nyx_string* %2590, %nyx_string* %2592)
  %2594 = load %nyx_string*, %nyx_string** %2510
  %2595 = call %nyx_string* @nyx_string_concat(%nyx_string* %2593, %nyx_string* %2594)
  %2596 = getelementptr [5 x i8], [5 x i8]* @.str261, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2596, i64 4)
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2597)
  %2599 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2600 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2599)
  %2601 = getelementptr [17 x i8], [17 x i8]* @.str262, i32 0, i32 0
  %2602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2601, i64 16)
  %2603 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2602)
  %2604 = call i8* @nyx_string_to_cstr(%nyx_string* %2603)
  %2605 = call i64 @nyx_exec_code(i8* %2604)
  %2606 = alloca i64
  store i64 %2605, i64* %2606
  %2607 = load i64, i64* %2606
  %2608 = icmp ne i64 %2607, 0
  br i1 %2608, label %then474, label %else475
then474:
  %2609 = getelementptr [36 x i8], [36 x i8]* @.str263, i32 0, i32 0
  %2610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2609, i64 35)
  %2611 = call i8* @nyx_string_to_cstr(%nyx_string* %2610)
  call void @nyx_print_string(i8* %2611)
  %2612 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2613 = getelementptr [11 x i8], [11 x i8]* @.str264, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2613, i64 10)
  %2615 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2614)
  %2616 = call i8* @nyx_string_to_cstr(%nyx_string* %2615)
  %2617 = call %nyx_string* @nyx_read_file(i8* %2616)
  %2618 = call i8* @nyx_string_to_cstr(%nyx_string* %2617)
  call void @nyx_print_string(i8* %2618)
  ret i64 1
else475:
  br label %merge476
merge476:
  %2619 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2620 = getelementptr [33 x i8], [33 x i8]* @.str265, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2620, i64 32)
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2619, %nyx_string* %2621)
  %2623 = load %nyx_string*, %nyx_string** %2584
  %2624 = call %nyx_string* @nyx_string_concat(%nyx_string* %2622, %nyx_string* %2623)
  %2625 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %2626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2625, i64 5)
  %2627 = call %nyx_string* @nyx_string_concat(%nyx_string* %2624, %nyx_string* %2626)
  %2628 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2629 = call %nyx_string* @nyx_string_concat(%nyx_string* %2627, %nyx_string* %2628)
  %2630 = getelementptr [16 x i8], [16 x i8]* @.str267, i32 0, i32 0
  %2631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2630, i64 15)
  %2632 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2631)
  %2633 = call i8* @nyx_string_to_cstr(%nyx_string* %2632)
  %2634 = call i64 @nyx_exec_code(i8* %2633)
  %2635 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2636 = getelementptr [10 x i8], [10 x i8]* @.str268, i32 0, i32 0
  %2637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2636, i64 9)
  %2638 = call %nyx_string* @nyx_string_concat(%nyx_string* %2635, %nyx_string* %2637)
  %2639 = call i8* @nyx_string_to_cstr(%nyx_string* %2638)
  %2640 = call %nyx_string* @nyx_read_file(i8* %2639)
  %2641 = call i8* @cov_called_from_show(%nyx_string* %2640)
  store i8* %2641, i8** %2577
  br label %merge473
else472:
  br label %merge473
merge473:
  %2642 = call i8* @nyx_map_new(i32 0)
  %2643 = alloca i8*
  store i8* %2642, i8** %2643
  %2644 = call i8* @nyx_map_new(i32 0)
  %2645 = alloca i8*
  store i8* %2644, i8** %2645
  %2646 = call i8* @nyx_map_new(i32 0)
  %2647 = alloca i8*
  store i8* %2646, i8** %2647
  %2648 = call i8* @nyx_map_new(i32 0)
  %2649 = alloca i8*
  store i8* %2648, i8** %2649
  store i64 0, i64* %2516
  %2650 = getelementptr [2 x i8], [2 x i8]* @.str269, i32 0, i32 0
  %2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2650, i64 1)
  %2652 = alloca %nyx_string*
  store %nyx_string* %2651, %nyx_string** %2652
  %2653 = getelementptr [5 x i8], [5 x i8]* @.str270, i32 0, i32 0
  %2654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2653, i64 4)
  %2655 = alloca %nyx_string*
  store %nyx_string* %2654, %nyx_string** %2655
  %2656 = getelementptr [2 x i8], [2 x i8]* @.str271, i32 0, i32 0
  %2657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2656, i64 1)
  %2658 = alloca %nyx_string*
  store %nyx_string* %2657, %nyx_string** %2658
  %2659 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2659, i64 0)
  %2661 = alloca %nyx_string*
  store %nyx_string* %2660, %nyx_string** %2661
  %2662 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %2663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2662, i64 1)
  %2664 = alloca %nyx_string*
  store %nyx_string* %2663, %nyx_string** %2664
  %2665 = getelementptr [5 x i8], [5 x i8]* @.str274, i32 0, i32 0
  %2666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2665, i64 4)
  %2667 = alloca %nyx_string*
  store %nyx_string* %2666, %nyx_string** %2667
  %2668 = call i8* @llvm.stacksave()
  br label %while_cond477
while_cond477:
  %2669 = load i64, i64* %2516
  %2670 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2671 = call i64 @nyx_array_length({ i64, i8* }* %2670)
  %2672 = icmp slt i64 %2669, %2671
  br i1 %2672, label %while_body478, label %while_end479
while_body478:
  call void @llvm.stackrestore(i8* %2668)
  %2673 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2674 = load i64, i64* %2516
  %2675 = call i64 @nyx_array_get_checked({ i64, i8* }* %2673, i64 %2674, i64 2)
  %2676 = inttoptr i64 %2675 to %nyx_string*
  %2677 = alloca %nyx_string*
  store %nyx_string* %2676, %nyx_string** %2677
  %2678 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2679 = load %nyx_string*, %nyx_string** %2652
  %2680 = call %nyx_string* @nyx_string_concat(%nyx_string* %2678, %nyx_string* %2679)
  %2681 = load %nyx_string*, %nyx_string** %2677
  %2682 = call %nyx_string* @nyx_string_concat(%nyx_string* %2680, %nyx_string* %2681)
  %2683 = load %nyx_string*, %nyx_string** %2655
  %2684 = call %nyx_string* @nyx_string_concat(%nyx_string* %2682, %nyx_string* %2683)
  %2685 = alloca %nyx_string*
  store %nyx_string* %2684, %nyx_string** %2685
  %2686 = load %nyx_string*, %nyx_string** %2685
  %2687 = call i8* @nyx_string_to_cstr(%nyx_string* %2686)
  %2688 = call i1 @nyx_file_exists(i8* %2687)
  br i1 %2688, label %then480, label %else481
then480:
  %2689 = load %nyx_string*, %nyx_string** %2685
  %2690 = call i8* @nyx_string_to_cstr(%nyx_string* %2689)
  %2691 = call %nyx_string* @nyx_read_file(i8* %2690)
  %2692 = load %nyx_string*, %nyx_string** %2658
  %2693 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2691, %nyx_string* %2692)
  %2694 = alloca { i64, i8* }*
  store { i64, i8* }* %2693, { i64, i8* }** %2694
  %2695 = alloca i64
  store i64 0, i64* %2695
  %2696 = call i8* @llvm.stacksave()
  br label %while_cond483
while_cond483:
  %2697 = load i64, i64* %2695
  %2698 = load { i64, i8* }*, { i64, i8* }** %2694
  %2699 = call i64 @nyx_array_length({ i64, i8* }* %2698)
  %2700 = icmp slt i64 %2697, %2699
  br i1 %2700, label %while_body484, label %while_end485
while_body484:
  call void @llvm.stackrestore(i8* %2696)
  %2701 = load { i64, i8* }*, { i64, i8* }** %2694
  %2702 = load i64, i64* %2695
  %2703 = call i64 @nyx_array_get_checked({ i64, i8* }* %2701, i64 %2702, i64 2)
  %2704 = inttoptr i64 %2703 to %nyx_string*
  %2705 = alloca %nyx_string*
  store %nyx_string* %2704, %nyx_string** %2705
  %2706 = load %nyx_string*, %nyx_string** %2705
  %2707 = call { i64, i8* }* @cov_fields(%nyx_string* %2706)
  %2708 = alloca { i64, i8* }*
  store { i64, i8* }* %2707, { i64, i8* }** %2708
  %2709 = load { i64, i8* }*, { i64, i8* }** %2708
  %2710 = call i64 @nyx_array_length({ i64, i8* }* %2709)
  %2711 = icmp sge i64 %2710, 5
  br i1 %2711, label %then486, label %else487
then486:
  %2712 = load { i64, i8* }*, { i64, i8* }** %2708
  %2713 = call i64 @nyx_array_get_checked({ i64, i8* }* %2712, i64 0, i64 2)
  %2714 = inttoptr i64 %2713 to %nyx_string*
  %2715 = alloca %nyx_string*
  store %nyx_string* %2714, %nyx_string** %2715
  %2716 = load { i64, i8* }*, { i64, i8* }** %2708
  %2717 = call i64 @nyx_array_get_checked({ i64, i8* }* %2716, i64 1, i64 2)
  %2718 = inttoptr i64 %2717 to %nyx_string*
  %2719 = alloca %nyx_string*
  store %nyx_string* %2718, %nyx_string** %2719
  %2720 = load { i64, i8* }*, { i64, i8* }** %2708
  %2721 = call i64 @nyx_array_get_checked({ i64, i8* }* %2720, i64 3, i64 2)
  %2722 = inttoptr i64 %2721 to %nyx_string*
  %2723 = alloca %nyx_string*
  store %nyx_string* %2722, %nyx_string** %2723
  %2724 = load { i64, i8* }*, { i64, i8* }** %2708
  %2725 = call i64 @nyx_array_get_checked({ i64, i8* }* %2724, i64 4, i64 2)
  %2726 = inttoptr i64 %2725 to %nyx_string*
  %2727 = alloca %nyx_string*
  store %nyx_string* %2726, %nyx_string** %2727
  %2728 = load %nyx_string*, %nyx_string** %2719
  %2729 = load %nyx_string*, %nyx_string** %2661
  %2730 = call i1 @nyx_string_equals(%nyx_string* %2728, %nyx_string* %2729)
  %2731 = xor i1 %2730, true
  br i1 %2731, label %then489, label %else490
then489:
  %2732 = load i8*, i8** %2649
  %2733 = load %nyx_string*, %nyx_string** %2719
  %2734 = load %nyx_string*, %nyx_string** %2664
  %2735 = call i8* @nyx_string_to_cstr(%nyx_string* %2733)
  %2736 = bitcast %nyx_string* %2734 to i8*
  call void @nyx_map_insert_str(i8* %2732, i8* %2735, i8* %2736)
  br label %merge491
else490:
  br label %merge491
merge491:
  %2737 = load i8*, i8** %2513
  %2738 = load %nyx_string*, %nyx_string** %2677
  %2739 = call i8* @nyx_string_to_cstr(%nyx_string* %2738)
  %2740 = call i1 @nyx_map_contains_str(i8* %2737, i8* %2739)
  br i1 %2740, label %then492, label %else493
then492:
  %2741 = load i8*, i8** %2643
  %2742 = load %nyx_string*, %nyx_string** %2715
  %2743 = load %nyx_string*, %nyx_string** %2664
  %2744 = call i8* @nyx_string_to_cstr(%nyx_string* %2742)
  %2745 = bitcast %nyx_string* %2743 to i8*
  call void @nyx_map_insert_str(i8* %2741, i8* %2744, i8* %2745)
  %2746 = alloca i1
  store i1 false, i1* %2746
  %2747 = load %nyx_string*, %nyx_string** %2727
  %2748 = load %nyx_string*, %nyx_string** %2667
  %2749 = call i1 @nyx_string_equals(%nyx_string* %2747, %nyx_string* %2748)
  br i1 %2749, label %sc_and_rhs495, label %sc_and_end496
sc_and_rhs495:
  %2750 = load i8*, i8** %2577
  %2751 = load %nyx_string*, %nyx_string** %2715
  %2752 = call i8* @nyx_string_to_cstr(%nyx_string* %2751)
  %2753 = call i1 @nyx_map_contains_str(i8* %2750, i8* %2752)
  store i1 %2753, i1* %2746
  br label %sc_and_end496
sc_and_end496:
  %2754 = load i1, i1* %2746
  br i1 %2754, label %then497, label %else498
then497:
  %2755 = load i8*, i8** %2647
  %2756 = load %nyx_string*, %nyx_string** %2723
  %2757 = load %nyx_string*, %nyx_string** %2664
  %2758 = call i8* @nyx_string_to_cstr(%nyx_string* %2756)
  %2759 = bitcast %nyx_string* %2757 to i8*
  call void @nyx_map_insert_str(i8* %2755, i8* %2758, i8* %2759)
  br label %merge499
else498:
  br label %merge499
merge499:
  br label %merge494
else493:
  %2760 = load i8*, i8** %2645
  %2761 = load %nyx_string*, %nyx_string** %2715
  %2762 = load %nyx_string*, %nyx_string** %2664
  %2763 = call i8* @nyx_string_to_cstr(%nyx_string* %2761)
  %2764 = bitcast %nyx_string* %2762 to i8*
  call void @nyx_map_insert_str(i8* %2760, i8* %2763, i8* %2764)
  br label %merge494
merge494:
  br label %merge488
else487:
  br label %merge488
merge488:
  %2765 = load i64, i64* %2695
  %2766 = add i64 %2765, 1
  store i64 %2766, i64* %2695
  br label %while_cond483
while_end485:
  br label %merge482
else481:
  br label %merge482
merge482:
  %2767 = load i64, i64* %2516
  %2768 = add i64 %2767, 1
  store i64 %2768, i64* %2516
  br label %while_cond477
while_end479:
  %2769 = call { i64, i8* }* @cov_src_modules()
  %2770 = alloca { i64, i8* }*
  store { i64, i8* }* %2769, { i64, i8* }** %2770
  %2771 = load { i64, i8* }*, { i64, i8* }** %2770
  %2772 = call i64 @nyx_array_length({ i64, i8* }* %2771)
  %2773 = icmp eq i64 %2772, 0
  br i1 %2773, label %then500, label %else501
then500:
  %2774 = getelementptr [27 x i8], [27 x i8]* @.str275, i32 0, i32 0
  %2775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2774, i64 26)
  %2776 = call i8* @nyx_string_to_cstr(%nyx_string* %2775)
  call void @nyx_print_string(i8* %2776)
  ret i64 0
else501:
  br label %merge502
merge502:
  %2777 = load %nyx_string*, %nyx_string** %2496
  %2778 = load %nyx_string*, %nyx_string** %2501
  %2779 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2780 = load { i64, i8* }*, { i64, i8* }** %2770
  %2781 = call %nyx_string* @cov_universe(%nyx_string* %2777, %nyx_string* %2778, %nyx_string* %2779, { i64, i8* }* %2780)
  %2782 = alloca %nyx_string*
  store %nyx_string* %2781, %nyx_string** %2782
  %2783 = load %nyx_string*, %nyx_string** %2782
  %2784 = call i8* @nyx_string_to_cstr(%nyx_string* %2783)
  %2785 = call i1 @nyx_file_exists(i8* %2784)
  %2786 = xor i1 %2785, true
  br i1 %2786, label %then503, label %else504
then503:
  %2787 = getelementptr [68 x i8], [68 x i8]* @.str276, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2787, i64 67)
  %2789 = call i8* @nyx_string_to_cstr(%nyx_string* %2788)
  call void @nyx_print_string(i8* %2789)
  %2790 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2791 = getelementptr [14 x i8], [14 x i8]* @.str277, i32 0, i32 0
  %2792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2791, i64 13)
  %2793 = call %nyx_string* @nyx_string_concat(%nyx_string* %2790, %nyx_string* %2792)
  %2794 = call i8* @nyx_string_to_cstr(%nyx_string* %2793)
  %2795 = call i1 @nyx_file_exists(i8* %2794)
  br i1 %2795, label %then506, label %else507
then506:
  %2796 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2797 = getelementptr [14 x i8], [14 x i8]* @.str278, i32 0, i32 0
  %2798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2797, i64 13)
  %2799 = call %nyx_string* @nyx_string_concat(%nyx_string* %2796, %nyx_string* %2798)
  %2800 = call i8* @nyx_string_to_cstr(%nyx_string* %2799)
  %2801 = call %nyx_string* @nyx_read_file(i8* %2800)
  %2802 = call i8* @nyx_string_to_cstr(%nyx_string* %2801)
  call void @nyx_print_string(i8* %2802)
  br label %merge508
else507:
  br label %merge508
merge508:
  ret i64 1
else504:
  br label %merge505
merge505:
  %2803 = load %nyx_string*, %nyx_string** %2782
  %2804 = call i8* @nyx_string_to_cstr(%nyx_string* %2803)
  %2805 = call %nyx_string* @nyx_read_file(i8* %2804)
  %2806 = getelementptr [2 x i8], [2 x i8]* @.str279, i32 0, i32 0
  %2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2806, i64 1)
  %2808 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2805, %nyx_string* %2807)
  %2809 = alloca { i64, i8* }*
  store { i64, i8* }* %2808, { i64, i8* }** %2809
  %2810 = call { i64, i8* }* @nyx_array_new_ptr()
  %2811 = alloca { i64, i8* }*
  store { i64, i8* }* %2810, { i64, i8* }** %2811
  %2812 = alloca i64
  store i64 0, i64* %2812
  %2813 = getelementptr [3 x i8], [3 x i8]* @.str280, i32 0, i32 0
  %2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2813, i64 2)
  %2815 = alloca %nyx_string*
  store %nyx_string* %2814, %nyx_string** %2815
  %2816 = getelementptr [7 x i8], [7 x i8]* @.str281, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2816, i64 6)
  %2818 = alloca %nyx_string*
  store %nyx_string* %2817, %nyx_string** %2818
  %2819 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2819, i64 5)
  %2821 = alloca %nyx_string*
  store %nyx_string* %2820, %nyx_string** %2821
  %2822 = getelementptr [9 x i8], [9 x i8]* @.str283, i32 0, i32 0
  %2823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2822, i64 8)
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2825, i64 4)
  %2827 = alloca %nyx_string*
  store %nyx_string* %2826, %nyx_string** %2827
  %2828 = getelementptr [5 x i8], [5 x i8]* @.str285, i32 0, i32 0
  %2829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2828, i64 4)
  %2830 = alloca %nyx_string*
  store %nyx_string* %2829, %nyx_string** %2830
  %2831 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2831, i64 2)
  %2833 = alloca %nyx_string*
  store %nyx_string* %2832, %nyx_string** %2833
  %2834 = getelementptr [3 x i8], [3 x i8]* @.str287, i32 0, i32 0
  %2835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2834, i64 2)
  %2836 = alloca %nyx_string*
  store %nyx_string* %2835, %nyx_string** %2836
  %2837 = getelementptr [10 x i8], [10 x i8]* @.str288, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2837, i64 9)
  %2839 = alloca %nyx_string*
  store %nyx_string* %2838, %nyx_string** %2839
  %2840 = getelementptr [5 x i8], [5 x i8]* @.str289, i32 0, i32 0
  %2841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2840, i64 4)
  %2842 = alloca %nyx_string*
  store %nyx_string* %2841, %nyx_string** %2842
  %2843 = getelementptr [2 x i8], [2 x i8]* @.str290, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2843, i64 1)
  %2845 = alloca %nyx_string*
  store %nyx_string* %2844, %nyx_string** %2845
  %2846 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2847 = load i64, i64* %2812
  %2848 = load { i64, i8* }*, { i64, i8* }** %2809
  %2849 = call i64 @nyx_array_length({ i64, i8* }* %2848)
  %2850 = icmp slt i64 %2847, %2849
  br i1 %2850, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2846)
  %2851 = load { i64, i8* }*, { i64, i8* }** %2809
  %2852 = load i64, i64* %2812
  %2853 = call i64 @nyx_array_get_checked({ i64, i8* }* %2851, i64 %2852, i64 2)
  %2854 = inttoptr i64 %2853 to %nyx_string*
  %2855 = alloca %nyx_string*
  store %nyx_string* %2854, %nyx_string** %2855
  %2856 = load %nyx_string*, %nyx_string** %2855
  %2857 = call { i64, i8* }* @cov_fields(%nyx_string* %2856)
  %2858 = alloca { i64, i8* }*
  store { i64, i8* }* %2857, { i64, i8* }** %2858
  %2859 = load { i64, i8* }*, { i64, i8* }** %2858
  %2860 = call i64 @nyx_array_length({ i64, i8* }* %2859)
  %2861 = icmp sge i64 %2860, 5
  br i1 %2861, label %then512, label %else513
then512:
  %2862 = load { i64, i8* }*, { i64, i8* }** %2858
  %2863 = call i64 @nyx_array_get_checked({ i64, i8* }* %2862, i64 0, i64 2)
  %2864 = inttoptr i64 %2863 to %nyx_string*
  %2865 = alloca %nyx_string*
  store %nyx_string* %2864, %nyx_string** %2865
  %2866 = load { i64, i8* }*, { i64, i8* }** %2858
  %2867 = call i64 @nyx_array_get_checked({ i64, i8* }* %2866, i64 1, i64 2)
  %2868 = inttoptr i64 %2867 to %nyx_string*
  %2869 = alloca %nyx_string*
  store %nyx_string* %2868, %nyx_string** %2869
  %2870 = load { i64, i8* }*, { i64, i8* }** %2858
  %2871 = call i64 @nyx_array_get_checked({ i64, i8* }* %2870, i64 2, i64 2)
  %2872 = inttoptr i64 %2871 to %nyx_string*
  %2873 = alloca %nyx_string*
  store %nyx_string* %2872, %nyx_string** %2873
  %2874 = load { i64, i8* }*, { i64, i8* }** %2858
  %2875 = call i64 @nyx_array_get_checked({ i64, i8* }* %2874, i64 3, i64 2)
  %2876 = inttoptr i64 %2875 to %nyx_string*
  %2877 = alloca %nyx_string*
  store %nyx_string* %2876, %nyx_string** %2877
  %2878 = load { i64, i8* }*, { i64, i8* }** %2858
  %2879 = call i64 @nyx_array_get_checked({ i64, i8* }* %2878, i64 4, i64 2)
  %2880 = inttoptr i64 %2879 to %nyx_string*
  %2881 = alloca %nyx_string*
  store %nyx_string* %2880, %nyx_string** %2881
  %2882 = alloca i1
  store i1 true, i1* %2882
  %2883 = alloca i1
  store i1 true, i1* %2883
  %2884 = alloca i1
  store i1 true, i1* %2884
  %2885 = load %nyx_string*, %nyx_string** %2881
  %2886 = load %nyx_string*, %nyx_string** %2815
  %2887 = call i1 @nyx_string_equals(%nyx_string* %2885, %nyx_string* %2886)
  br i1 %2887, label %sc_or_end516, label %sc_or_rhs515
sc_or_rhs515:
  %2888 = load %nyx_string*, %nyx_string** %2881
  %2889 = load %nyx_string*, %nyx_string** %2818
  %2890 = call i1 @nyx_string_equals(%nyx_string* %2888, %nyx_string* %2889)
  store i1 %2890, i1* %2884
  br label %sc_or_end516
sc_or_end516:
  %2891 = load i1, i1* %2884
  br i1 %2891, label %sc_or_end518, label %sc_or_rhs517
sc_or_rhs517:
  %2892 = load %nyx_string*, %nyx_string** %2881
  %2893 = load %nyx_string*, %nyx_string** %2821
  %2894 = call i1 @nyx_string_equals(%nyx_string* %2892, %nyx_string* %2893)
  store i1 %2894, i1* %2883
  br label %sc_or_end518
sc_or_end518:
  %2895 = load i1, i1* %2883
  br i1 %2895, label %sc_or_end520, label %sc_or_rhs519
sc_or_rhs519:
  %2896 = load %nyx_string*, %nyx_string** %2881
  %2897 = load %nyx_string*, %nyx_string** %2824
  %2898 = call i1 @nyx_string_equals(%nyx_string* %2896, %nyx_string* %2897)
  store i1 %2898, i1* %2882
  br label %sc_or_end520
sc_or_end520:
  %2899 = load i1, i1* %2882
  %2900 = alloca i1
  store i1 %2899, i1* %2900
  %2901 = alloca i1
  store i1 false, i1* %2901
  %2902 = alloca i1
  store i1 false, i1* %2902
  %2903 = load i1, i1* %2900
  br i1 %2903, label %sc_and_rhs521, label %sc_and_end522
sc_and_rhs521:
  %2904 = load %nyx_string*, %nyx_string** %2869
  %2905 = load %nyx_string*, %nyx_string** %2827
  %2906 = call i1 @nyx_string_starts_with(%nyx_string* %2904, %nyx_string* %2905)
  store i1 %2906, i1* %2902
  br label %sc_and_end522
sc_and_end522:
  %2907 = load i1, i1* %2902
  br i1 %2907, label %sc_and_rhs523, label %sc_and_end524
sc_and_rhs523:
  %2908 = load %nyx_string*, %nyx_string** %2877
  %2909 = load %nyx_string*, %nyx_string** %2830
  %2910 = call i1 @nyx_string_equals(%nyx_string* %2908, %nyx_string* %2909)
  %2911 = xor i1 %2910, true
  store i1 %2911, i1* %2901
  br label %sc_and_end524
sc_and_end524:
  %2912 = load i1, i1* %2901
  br i1 %2912, label %then525, label %else526
then525:
  %2913 = load i8*, i8** %2577
  %2914 = load %nyx_string*, %nyx_string** %2865
  %2915 = call i8* @nyx_string_to_cstr(%nyx_string* %2914)
  %2916 = call i1 @nyx_map_contains_str(i8* %2913, i8* %2915)
  %2917 = alloca i1
  store i1 %2916, i1* %2917
  %2918 = load %nyx_string*, %nyx_string** %2881
  %2919 = load %nyx_string*, %nyx_string** %2824
  %2920 = call i1 @nyx_string_equals(%nyx_string* %2918, %nyx_string* %2919)
  br i1 %2920, label %then528, label %else529
then528:
  %2921 = load i8*, i8** %2647
  %2922 = load %nyx_string*, %nyx_string** %2865
  %2923 = call i8* @nyx_string_to_cstr(%nyx_string* %2922)
  %2924 = call i1 @nyx_map_contains_str(i8* %2921, i8* %2923)
  store i1 %2924, i1* %2917
  br label %merge530
else529:
  br label %merge530
merge530:
  %2925 = load %nyx_string*, %nyx_string** %2833
  %2926 = alloca %nyx_string*
  store %nyx_string* %2925, %nyx_string** %2926
  %2927 = load i1, i1* %2917
  br i1 %2927, label %then531, label %else532
then531:
  %2928 = load %nyx_string*, %nyx_string** %2836
  store %nyx_string* %2928, %nyx_string** %2926
  br label %merge533
else532:
  %2929 = alloca i1
  store i1 false, i1* %2929
  %2930 = load i8*, i8** %2643
  %2931 = load %nyx_string*, %nyx_string** %2865
  %2932 = call i8* @nyx_string_to_cstr(%nyx_string* %2931)
  %2933 = call i1 @nyx_map_contains_str(i8* %2930, i8* %2932)
  %2934 = xor i1 %2933, true
  br i1 %2934, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %2935 = load i8*, i8** %2645
  %2936 = load %nyx_string*, %nyx_string** %2865
  %2937 = call i8* @nyx_string_to_cstr(%nyx_string* %2936)
  %2938 = call i1 @nyx_map_contains_str(i8* %2935, i8* %2937)
  store i1 %2938, i1* %2929
  br label %sc_and_end535
sc_and_end535:
  %2939 = load i1, i1* %2929
  br i1 %2939, label %then536, label %else537
then536:
  %2940 = load %nyx_string*, %nyx_string** %2839
  store %nyx_string* %2940, %nyx_string** %2926
  br label %merge538
else537:
  br label %merge538
merge538:
  br label %merge533
merge533:
  %2941 = load { i64, i8* }*, { i64, i8* }** %2811
  %2942 = load %nyx_string*, %nyx_string** %2869
  %2943 = load %nyx_string*, %nyx_string** %2842
  %2944 = call %nyx_string* @nyx_string_concat(%nyx_string* %2942, %nyx_string* %2943)
  %2945 = load %nyx_string*, %nyx_string** %2873
  %2946 = call i64 @nyx_string_to_int(%nyx_string* %2945)
  %2947 = call %nyx_string* @cov_pad(i64 %2946)
  %2948 = call %nyx_string* @nyx_string_concat(%nyx_string* %2944, %nyx_string* %2947)
  %2949 = load %nyx_string*, %nyx_string** %2845
  %2950 = call %nyx_string* @nyx_string_concat(%nyx_string* %2948, %nyx_string* %2949)
  %2951 = load %nyx_string*, %nyx_string** %2877
  %2952 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2951)
  %2953 = load %nyx_string*, %nyx_string** %2845
  %2954 = call %nyx_string* @nyx_string_concat(%nyx_string* %2952, %nyx_string* %2953)
  %2955 = load %nyx_string*, %nyx_string** %2926
  %2956 = call %nyx_string* @nyx_string_concat(%nyx_string* %2954, %nyx_string* %2955)
  %2957 = load %nyx_string*, %nyx_string** %2845
  %2958 = call %nyx_string* @nyx_string_concat(%nyx_string* %2956, %nyx_string* %2957)
  %2959 = load %nyx_string*, %nyx_string** %2869
  %2960 = call %nyx_string* @nyx_string_concat(%nyx_string* %2958, %nyx_string* %2959)
  %2961 = ptrtoint %nyx_string* %2960 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2941, i64 %2961, i64 2)
  br label %merge527
else526:
  br label %merge527
merge527:
  br label %merge514
else513:
  br label %merge514
merge514:
  %2962 = load i64, i64* %2812
  %2963 = add i64 %2962, 1
  store i64 %2963, i64* %2812
  br label %while_cond509
while_end511:
  %2964 = load { i64, i8* }*, { i64, i8* }** %2811
  %2965 = call { i64, i8* }* @sort_str({ i64, i8* }* %2964)
  %2966 = alloca { i64, i8* }*
  store { i64, i8* }* %2965, { i64, i8* }** %2966
  %2967 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2967, i64 0)
  %2969 = alloca %nyx_string*
  store %nyx_string* %2968, %nyx_string** %2969
  %2970 = alloca i64
  store i64 0, i64* %2970
  %2971 = alloca i64
  store i64 0, i64* %2971
  %2972 = alloca i64
  store i64 0, i64* %2972
  %2973 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %2974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2973, i64 0)
  %2975 = alloca %nyx_string*
  store %nyx_string* %2974, %nyx_string** %2975
  %2976 = getelementptr [10 x i8], [10 x i8]* @.str293, i32 0, i32 0
  %2977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2976, i64 9)
  %2978 = alloca %nyx_string*
  store %nyx_string* %2977, %nyx_string** %2978
  %2979 = getelementptr [2 x i8], [2 x i8]* @.str294, i32 0, i32 0
  %2980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2979, i64 1)
  %2981 = alloca %nyx_string*
  store %nyx_string* %2980, %nyx_string** %2981
  %2982 = getelementptr [3 x i8], [3 x i8]* @.str295, i32 0, i32 0
  %2983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2982, i64 2)
  %2984 = alloca %nyx_string*
  store %nyx_string* %2983, %nyx_string** %2984
  %2985 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %2986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2985, i64 1)
  %2987 = alloca %nyx_string*
  store %nyx_string* %2986, %nyx_string** %2987
  %2988 = getelementptr [5 x i8], [5 x i8]* @.str297, i32 0, i32 0
  %2989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2988, i64 4)
  %2990 = alloca %nyx_string*
  store %nyx_string* %2989, %nyx_string** %2990
  %2991 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %2992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2991, i64 1)
  %2993 = alloca %nyx_string*
  store %nyx_string* %2992, %nyx_string** %2993
  %2994 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %2995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2994, i64 1)
  %2996 = alloca %nyx_string*
  store %nyx_string* %2995, %nyx_string** %2996
  %2997 = getelementptr [4 x i8], [4 x i8]* @.str300, i32 0, i32 0
  %2998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2997, i64 3)
  %2999 = alloca %nyx_string*
  store %nyx_string* %2998, %nyx_string** %2999
  %3000 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %3001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %3000, i64 1)
  %3002 = alloca %nyx_string*
  store %nyx_string* %3001, %nyx_string** %3002
  %3003 = getelementptr [2 x i8], [2 x i8]* @.str302, i32 0, i32 0
  %3004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %3003, i64 1)
  %3005 = alloca %nyx_string*
  store %nyx_string* %3004, %nyx_string** %3005
  %3006 = getelementptr [6 x i8], [6 x i8]* @.str303, i32 0, i32 0
  %3007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %3006, i64 5)
  %3008 = alloca %nyx_string*
  store %nyx_string* %3007, %nyx_string** %3008
  %3009 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %3010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3009, i64 2)
  %3011 = alloca %nyx_string*
  store %nyx_string* %3010, %nyx_string** %3011
  %3012 = getelementptr [3 x i8], [3 x i8]* @.str305, i32 0, i32 0
  %3013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3012, i64 2)
  %3014 = alloca %nyx_string*
  store %nyx_string* %3013, %nyx_string** %3014
  %3015 = getelementptr [2 x i8], [2 x i8]* @.str306, i32 0, i32 0
  %3016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3015, i64 1)
  %3017 = alloca %nyx_string*
  store %nyx_string* %3016, %nyx_string** %3017
  %3018 = getelementptr [10 x i8], [10 x i8]* @.str307, i32 0, i32 0
  %3019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3018, i64 9)
  %3020 = alloca %nyx_string*
  store %nyx_string* %3019, %nyx_string** %3020
  %3021 = getelementptr [29 x i8], [29 x i8]* @.str308, i32 0, i32 0
  %3022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3021, i64 28)
  %3023 = alloca %nyx_string*
  store %nyx_string* %3022, %nyx_string** %3023
  %3024 = getelementptr [3 x i8], [3 x i8]* @.str309, i32 0, i32 0
  %3025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3024, i64 2)
  %3026 = alloca %nyx_string*
  store %nyx_string* %3025, %nyx_string** %3026
  %3027 = getelementptr [38 x i8], [38 x i8]* @.str310, i32 0, i32 0
  %3028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3027, i64 37)
  %3029 = alloca %nyx_string*
  store %nyx_string* %3028, %nyx_string** %3029
  %3030 = getelementptr [4 x i8], [4 x i8]* @.str311, i32 0, i32 0
  %3031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3030, i64 3)
  %3032 = alloca %nyx_string*
  store %nyx_string* %3031, %nyx_string** %3032
  %3033 = getelementptr [5 x i8], [5 x i8]* @.str312, i32 0, i32 0
  %3034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3033, i64 4)
  %3035 = alloca %nyx_string*
  store %nyx_string* %3034, %nyx_string** %3035
  %3036 = getelementptr [6 x i8], [6 x i8]* @.str313, i32 0, i32 0
  %3037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3036, i64 5)
  %3038 = alloca %nyx_string*
  store %nyx_string* %3037, %nyx_string** %3038
  %3039 = getelementptr [16 x i8], [16 x i8]* @.str314, i32 0, i32 0
  %3040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3039, i64 15)
  %3041 = alloca %nyx_string*
  store %nyx_string* %3040, %nyx_string** %3041
  %3042 = call i8* @llvm.stacksave()
  br label %while_cond539
while_cond539:
  %3043 = load i64, i64* %2972
  %3044 = load { i64, i8* }*, { i64, i8* }** %2966
  %3045 = call i64 @nyx_array_length({ i64, i8* }* %3044)
  %3046 = icmp slt i64 %3043, %3045
  br i1 %3046, label %while_body540, label %while_end541
while_body540:
  call void @llvm.stackrestore(i8* %3042)
  %3047 = load { i64, i8* }*, { i64, i8* }** %2966
  %3048 = load i64, i64* %2972
  %3049 = call i64 @nyx_array_get_checked({ i64, i8* }* %3047, i64 %3048, i64 2)
  %3050 = inttoptr i64 %3049 to %nyx_string*
  %3051 = alloca %nyx_string*
  store %nyx_string* %3050, %nyx_string** %3051
  %3052 = load %nyx_string*, %nyx_string** %3051
  %3053 = call { i64, i8* }* @cov_fields(%nyx_string* %3052)
  %3054 = alloca { i64, i8* }*
  store { i64, i8* }* %3053, { i64, i8* }** %3054
  %3055 = load { i64, i8* }*, { i64, i8* }** %3054
  %3056 = call i64 @nyx_array_get_checked({ i64, i8* }* %3055, i64 0, i64 2)
  %3057 = inttoptr i64 %3056 to %nyx_string*
  %3058 = alloca %nyx_string*
  store %nyx_string* %3057, %nyx_string** %3058
  %3059 = load { i64, i8* }*, { i64, i8* }** %3054
  %3060 = call i64 @nyx_array_get_checked({ i64, i8* }* %3059, i64 4, i64 2)
  %3061 = inttoptr i64 %3060 to %nyx_string*
  %3062 = alloca %nyx_string*
  store %nyx_string* %3061, %nyx_string** %3062
  %3063 = alloca i64
  store i64 0, i64* %3063
  %3064 = alloca i64
  store i64 0, i64* %3064
  %3065 = alloca i64
  store i64 0, i64* %3065
  %3066 = call { i64, i8* }* @nyx_array_new_ptr()
  %3067 = alloca { i64, i8* }*
  store { i64, i8* }* %3066, { i64, i8* }** %3067
  %3068 = load %nyx_string*, %nyx_string** %2975
  %3069 = alloca %nyx_string*
  store %nyx_string* %3068, %nyx_string** %3069
  %3070 = load %nyx_string*, %nyx_string** %2975
  %3071 = alloca %nyx_string*
  store %nyx_string* %3070, %nyx_string** %3071
  %3072 = load i64, i64* %2972
  %3073 = alloca i64
  store i64 %3072, i64* %3073
  %3074 = alloca i1
  store i1 1, i1* %3074
  %3075 = call i8* @llvm.stacksave()
  br label %while_cond542
while_cond542:
  %3076 = alloca i1
  store i1 false, i1* %3076
  %3077 = load i64, i64* %3073
  %3078 = load { i64, i8* }*, { i64, i8* }** %2966
  %3079 = call i64 @nyx_array_length({ i64, i8* }* %3078)
  %3080 = icmp slt i64 %3077, %3079
  br i1 %3080, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %3081 = load i1, i1* %3074
  store i1 %3081, i1* %3076
  br label %sc_and_end546
sc_and_end546:
  %3082 = load i1, i1* %3076
  br i1 %3082, label %while_body543, label %while_end544
while_body543:
  call void @llvm.stackrestore(i8* %3075)
  %3083 = load { i64, i8* }*, { i64, i8* }** %2966
  %3084 = load i64, i64* %3073
  %3085 = call i64 @nyx_array_get_checked({ i64, i8* }* %3083, i64 %3084, i64 2)
  %3086 = inttoptr i64 %3085 to %nyx_string*
  %3087 = alloca %nyx_string*
  store %nyx_string* %3086, %nyx_string** %3087
  %3088 = load %nyx_string*, %nyx_string** %3087
  %3089 = call { i64, i8* }* @cov_fields(%nyx_string* %3088)
  %3090 = alloca { i64, i8* }*
  store { i64, i8* }* %3089, { i64, i8* }** %3090
  %3091 = load { i64, i8* }*, { i64, i8* }** %3090
  %3092 = call i64 @nyx_array_get_checked({ i64, i8* }* %3091, i64 0, i64 2)
  %3093 = inttoptr i64 %3092 to %nyx_string*
  %3094 = alloca %nyx_string*
  store %nyx_string* %3093, %nyx_string** %3094
  %3095 = load %nyx_string*, %nyx_string** %3094
  %3096 = load %nyx_string*, %nyx_string** %3058
  %3097 = call i1 @nyx_string_equals(%nyx_string* %3095, %nyx_string* %3096)
  %3098 = xor i1 %3097, true
  br i1 %3098, label %then547, label %else548
then547:
  store i1 0, i1* %3074
  br label %merge549
else548:
  %3099 = load { i64, i8* }*, { i64, i8* }** %3090
  %3100 = call i64 @nyx_array_get({ i64, i8* }* %3099, i64 1)
  %3101 = inttoptr i64 %3100 to %nyx_string*
  %3102 = call i64 @nyx_string_to_int(%nyx_string* %3101)
  %3103 = alloca i64
  store i64 %3102, i64* %3103
  %3104 = load { i64, i8* }*, { i64, i8* }** %3090
  %3105 = call i64 @nyx_array_get_checked({ i64, i8* }* %3104, i64 2, i64 2)
  %3106 = inttoptr i64 %3105 to %nyx_string*
  %3107 = alloca %nyx_string*
  store %nyx_string* %3106, %nyx_string** %3107
  %3108 = load { i64, i8* }*, { i64, i8* }** %3090
  %3109 = call i64 @nyx_array_get_checked({ i64, i8* }* %3108, i64 3, i64 2)
  %3110 = inttoptr i64 %3109 to %nyx_string*
  %3111 = alloca %nyx_string*
  store %nyx_string* %3110, %nyx_string** %3111
  %3112 = load %nyx_string*, %nyx_string** %3111
  %3113 = load %nyx_string*, %nyx_string** %2978
  %3114 = call i1 @nyx_string_equals(%nyx_string* %3112, %nyx_string* %3113)
  br i1 %3114, label %then550, label %else551
then550:
  %3115 = load i64, i64* %3065
  %3116 = add i64 %3115, 1
  store i64 %3116, i64* %3065
  br label %merge552
else551:
  %3117 = load i64, i64* %3064
  %3118 = add i64 %3117, 1
  store i64 %3118, i64* %3064
  %3119 = load %nyx_string*, %nyx_string** %2981
  %3120 = alloca %nyx_string*
  store %nyx_string* %3119, %nyx_string** %3120
  %3121 = load %nyx_string*, %nyx_string** %3111
  %3122 = load %nyx_string*, %nyx_string** %2984
  %3123 = call i1 @nyx_string_equals(%nyx_string* %3121, %nyx_string* %3122)
  br i1 %3123, label %then553, label %else554
then553:
  %3124 = load i64, i64* %3063
  %3125 = add i64 %3124, 1
  store i64 %3125, i64* %3063
  %3126 = load %nyx_string*, %nyx_string** %2987
  store %nyx_string* %3126, %nyx_string** %3120
  br label %merge555
else554:
  %3127 = load { i64, i8* }*, { i64, i8* }** %3067
  %3128 = load %nyx_string*, %nyx_string** %2990
  %3129 = load %nyx_string*, %nyx_string** %3058
  %3130 = call %nyx_string* @nyx_string_concat(%nyx_string* %3128, %nyx_string* %3129)
  %3131 = load %nyx_string*, %nyx_string** %2993
  %3132 = call %nyx_string* @nyx_string_concat(%nyx_string* %3130, %nyx_string* %3131)
  %3133 = load i64, i64* %3103
  %3134 = call %nyx_string* @nyx_string_from_int(i64 %3133)
  %3135 = call %nyx_string* @nyx_string_concat(%nyx_string* %3132, %nyx_string* %3134)
  %3136 = load %nyx_string*, %nyx_string** %2996
  %3137 = call %nyx_string* @nyx_string_concat(%nyx_string* %3135, %nyx_string* %3136)
  %3138 = load %nyx_string*, %nyx_string** %3107
  %3139 = call %nyx_string* @nyx_string_concat(%nyx_string* %3137, %nyx_string* %3138)
  %3140 = ptrtoint %nyx_string* %3139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3127, i64 %3140, i64 2)
  br label %merge555
merge555:
  %3141 = load %nyx_string*, %nyx_string** %3069
  %3142 = load %nyx_string*, %nyx_string** %2999
  %3143 = call %nyx_string* @nyx_string_concat(%nyx_string* %3141, %nyx_string* %3142)
  %3144 = load i64, i64* %3103
  %3145 = call %nyx_string* @nyx_string_from_int(i64 %3144)
  %3146 = call %nyx_string* @nyx_string_concat(%nyx_string* %3143, %nyx_string* %3145)
  %3147 = load %nyx_string*, %nyx_string** %3002
  %3148 = call %nyx_string* @nyx_string_concat(%nyx_string* %3146, %nyx_string* %3147)
  %3149 = load %nyx_string*, %nyx_string** %3107
  %3150 = call %nyx_string* @nyx_string_concat(%nyx_string* %3148, %nyx_string* %3149)
  %3151 = load %nyx_string*, %nyx_string** %3005
  %3152 = call %nyx_string* @nyx_string_concat(%nyx_string* %3150, %nyx_string* %3151)
  store %nyx_string* %3152, %nyx_string** %3069
  %3153 = load %nyx_string*, %nyx_string** %3071
  %3154 = load %nyx_string*, %nyx_string** %3008
  %3155 = call %nyx_string* @nyx_string_concat(%nyx_string* %3153, %nyx_string* %3154)
  %3156 = load %nyx_string*, %nyx_string** %3120
  %3157 = call %nyx_string* @nyx_string_concat(%nyx_string* %3155, %nyx_string* %3156)
  %3158 = load %nyx_string*, %nyx_string** %3002
  %3159 = call %nyx_string* @nyx_string_concat(%nyx_string* %3157, %nyx_string* %3158)
  %3160 = load %nyx_string*, %nyx_string** %3107
  %3161 = call %nyx_string* @nyx_string_concat(%nyx_string* %3159, %nyx_string* %3160)
  %3162 = load %nyx_string*, %nyx_string** %3005
  %3163 = call %nyx_string* @nyx_string_concat(%nyx_string* %3161, %nyx_string* %3162)
  store %nyx_string* %3163, %nyx_string** %3071
  br label %merge552
merge552:
  %3164 = load i64, i64* %3073
  %3165 = add i64 %3164, 1
  store i64 %3165, i64* %3073
  br label %merge549
merge549:
  br label %while_cond542
while_end544:
  %3166 = load %nyx_string*, %nyx_string** %3011
  %3167 = load %nyx_string*, %nyx_string** %3058
  %3168 = call %nyx_string* @nyx_string_concat(%nyx_string* %3166, %nyx_string* %3167)
  %3169 = load %nyx_string*, %nyx_string** %3014
  %3170 = call %nyx_string* @nyx_string_concat(%nyx_string* %3168, %nyx_string* %3169)
  %3171 = load i64, i64* %3063
  %3172 = call %nyx_string* @nyx_string_from_int(i64 %3171)
  %3173 = call %nyx_string* @nyx_string_concat(%nyx_string* %3170, %nyx_string* %3172)
  %3174 = load %nyx_string*, %nyx_string** %3017
  %3175 = call %nyx_string* @nyx_string_concat(%nyx_string* %3173, %nyx_string* %3174)
  %3176 = load i64, i64* %3064
  %3177 = call %nyx_string* @nyx_string_from_int(i64 %3176)
  %3178 = call %nyx_string* @nyx_string_concat(%nyx_string* %3175, %nyx_string* %3177)
  %3179 = load %nyx_string*, %nyx_string** %3020
  %3180 = call %nyx_string* @nyx_string_concat(%nyx_string* %3178, %nyx_string* %3179)
  %3181 = alloca %nyx_string*
  store %nyx_string* %3180, %nyx_string** %3181
  %3182 = load i8*, i8** %2649
  %3183 = load %nyx_string*, %nyx_string** %3062
  %3184 = call i8* @nyx_string_to_cstr(%nyx_string* %3183)
  %3185 = call i1 @nyx_map_contains_str(i8* %3182, i8* %3184)
  %3186 = xor i1 %3185, true
  br i1 %3186, label %then556, label %else557
then556:
  %3187 = load %nyx_string*, %nyx_string** %3181
  %3188 = load %nyx_string*, %nyx_string** %3023
  %3189 = call %nyx_string* @nyx_string_concat(%nyx_string* %3187, %nyx_string* %3188)
  store %nyx_string* %3189, %nyx_string** %3181
  br label %merge558
else557:
  br label %merge558
merge558:
  %3190 = load i64, i64* %3065
  %3191 = icmp sgt i64 %3190, 0
  br i1 %3191, label %then559, label %else560
then559:
  %3192 = load %nyx_string*, %nyx_string** %3181
  %3193 = load %nyx_string*, %nyx_string** %3026
  %3194 = call %nyx_string* @nyx_string_concat(%nyx_string* %3192, %nyx_string* %3193)
  %3195 = load i64, i64* %3065
  %3196 = call %nyx_string* @nyx_string_from_int(i64 %3195)
  %3197 = call %nyx_string* @nyx_string_concat(%nyx_string* %3194, %nyx_string* %3196)
  %3198 = load %nyx_string*, %nyx_string** %3029
  %3199 = call %nyx_string* @nyx_string_concat(%nyx_string* %3197, %nyx_string* %3198)
  store %nyx_string* %3199, %nyx_string** %3181
  br label %merge561
else560:
  br label %merge561
merge561:
  %3200 = load %nyx_string*, %nyx_string** %3181
  %3201 = call i8* @nyx_string_to_cstr(%nyx_string* %3200)
  call void @nyx_print_string(i8* %3201)
  %3202 = alloca i64
  store i64 0, i64* %3202
  %3203 = call i8* @llvm.stacksave()
  br label %while_cond562
while_cond562:
  %3204 = load i64, i64* %3202
  %3205 = load { i64, i8* }*, { i64, i8* }** %3067
  %3206 = call i64 @nyx_array_length({ i64, i8* }* %3205)
  %3207 = icmp slt i64 %3204, %3206
  br i1 %3207, label %while_body563, label %while_end564
while_body563:
  call void @llvm.stackrestore(i8* %3203)
  %3208 = load { i64, i8* }*, { i64, i8* }** %3067
  %3209 = load i64, i64* %3202
  %3210 = call i64 @nyx_array_get_checked({ i64, i8* }* %3208, i64 %3209, i64 2)
  %3211 = inttoptr i64 %3210 to %nyx_string*
  %3212 = alloca %nyx_string*
  store %nyx_string* %3211, %nyx_string** %3212
  %3213 = load %nyx_string*, %nyx_string** %3212
  %3214 = call i8* @nyx_string_to_cstr(%nyx_string* %3213)
  call void @nyx_print_string(i8* %3214)
  %3215 = load i64, i64* %3202
  %3216 = add i64 %3215, 1
  store i64 %3216, i64* %3202
  br label %while_cond562
while_end564:
  %3217 = load i64, i64* %2970
  %3218 = load i64, i64* %3063
  %3219 = add i64 %3217, %3218
  store i64 %3219, i64* %2970
  %3220 = load i64, i64* %2971
  %3221 = load i64, i64* %3064
  %3222 = add i64 %3220, %3221
  store i64 %3222, i64* %2971
  %3223 = load %nyx_string*, %nyx_string** %2969
  %3224 = load %nyx_string*, %nyx_string** %3032
  %3225 = call %nyx_string* @nyx_string_concat(%nyx_string* %3223, %nyx_string* %3224)
  %3226 = load %nyx_string*, %nyx_string** %3058
  %3227 = call %nyx_string* @nyx_string_concat(%nyx_string* %3225, %nyx_string* %3226)
  %3228 = load %nyx_string*, %nyx_string** %3005
  %3229 = call %nyx_string* @nyx_string_concat(%nyx_string* %3227, %nyx_string* %3228)
  %3230 = load %nyx_string*, %nyx_string** %3069
  %3231 = call %nyx_string* @nyx_string_concat(%nyx_string* %3229, %nyx_string* %3230)
  %3232 = load %nyx_string*, %nyx_string** %3071
  %3233 = call %nyx_string* @nyx_string_concat(%nyx_string* %3231, %nyx_string* %3232)
  %3234 = load %nyx_string*, %nyx_string** %3035
  %3235 = call %nyx_string* @nyx_string_concat(%nyx_string* %3233, %nyx_string* %3234)
  %3236 = load i64, i64* %3064
  %3237 = call %nyx_string* @nyx_string_from_int(i64 %3236)
  %3238 = call %nyx_string* @nyx_string_concat(%nyx_string* %3235, %nyx_string* %3237)
  %3239 = load %nyx_string*, %nyx_string** %3038
  %3240 = call %nyx_string* @nyx_string_concat(%nyx_string* %3238, %nyx_string* %3239)
  %3241 = load i64, i64* %3063
  %3242 = call %nyx_string* @nyx_string_from_int(i64 %3241)
  %3243 = call %nyx_string* @nyx_string_concat(%nyx_string* %3240, %nyx_string* %3242)
  %3244 = load %nyx_string*, %nyx_string** %3041
  %3245 = call %nyx_string* @nyx_string_concat(%nyx_string* %3243, %nyx_string* %3244)
  store %nyx_string* %3245, %nyx_string** %2969
  %3246 = load i64, i64* %3073
  store i64 %3246, i64* %2972
  br label %while_cond539
while_end541:
  %3247 = load { i64, i8* }*, { i64, i8* }** %2515
  %3248 = call i64 @nyx_array_length({ i64, i8* }* %3247)
  %3249 = icmp sgt i64 %3248, 0
  br i1 %3249, label %then565, label %else566
then565:
  %3250 = getelementptr [70 x i8], [70 x i8]* @.str315, i32 0, i32 0
  %3251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3250, i64 69)
  %3252 = call i8* @nyx_string_to_cstr(%nyx_string* %3251)
  call void @nyx_print_string(i8* %3252)
  %3253 = alloca i64
  store i64 0, i64* %3253
  %3254 = getelementptr [5 x i8], [5 x i8]* @.str316, i32 0, i32 0
  %3255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3254, i64 4)
  %3256 = alloca %nyx_string*
  store %nyx_string* %3255, %nyx_string** %3256
  %3257 = call i8* @llvm.stacksave()
  br label %while_cond568
while_cond568:
  %3258 = load i64, i64* %3253
  %3259 = load { i64, i8* }*, { i64, i8* }** %2515
  %3260 = call i64 @nyx_array_length({ i64, i8* }* %3259)
  %3261 = icmp slt i64 %3258, %3260
  br i1 %3261, label %while_body569, label %while_end570
while_body569:
  call void @llvm.stackrestore(i8* %3257)
  %3262 = load { i64, i8* }*, { i64, i8* }** %2515
  %3263 = load i64, i64* %3253
  %3264 = call i64 @nyx_array_get_checked({ i64, i8* }* %3262, i64 %3263, i64 2)
  %3265 = inttoptr i64 %3264 to %nyx_string*
  %3266 = alloca %nyx_string*
  store %nyx_string* %3265, %nyx_string** %3266
  %3267 = load %nyx_string*, %nyx_string** %3256
  %3268 = load %nyx_string*, %nyx_string** %3266
  %3269 = call %nyx_string* @nyx_string_concat(%nyx_string* %3267, %nyx_string* %3268)
  %3270 = call i8* @nyx_string_to_cstr(%nyx_string* %3269)
  call void @nyx_print_string(i8* %3270)
  %3271 = load i64, i64* %3253
  %3272 = add i64 %3271, 1
  store i64 %3272, i64* %3253
  br label %while_cond568
while_end570:
  br label %merge567
else566:
  br label %merge567
merge567:
  %3273 = getelementptr [10 x i8], [10 x i8]* @.str317, i32 0, i32 0
  %3274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3273, i64 9)
  %3275 = load i64, i64* %2970
  %3276 = call %nyx_string* @nyx_string_from_int(i64 %3275)
  %3277 = call %nyx_string* @nyx_string_concat(%nyx_string* %3274, %nyx_string* %3276)
  %3278 = getelementptr [2 x i8], [2 x i8]* @.str318, i32 0, i32 0
  %3279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3278, i64 1)
  %3280 = call %nyx_string* @nyx_string_concat(%nyx_string* %3277, %nyx_string* %3279)
  %3281 = load i64, i64* %2971
  %3282 = call %nyx_string* @nyx_string_from_int(i64 %3281)
  %3283 = call %nyx_string* @nyx_string_concat(%nyx_string* %3280, %nyx_string* %3282)
  %3284 = getelementptr [20 x i8], [20 x i8]* @.str319, i32 0, i32 0
  %3285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3284, i64 19)
  %3286 = call %nyx_string* @nyx_string_concat(%nyx_string* %3283, %nyx_string* %3285)
  %3287 = call i8* @nyx_string_to_cstr(%nyx_string* %3286)
  call void @nyx_print_string(i8* %3287)
  %3288 = load i1, i1* %want_lcov.ptr
  br i1 %3288, label %then571, label %else572
then571:
  %3289 = getelementptr [11 x i8], [11 x i8]* @.str320, i32 0, i32 0
  %3290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3289, i64 10)
  %3291 = load %nyx_string*, %nyx_string** %2501
  %3292 = call %nyx_string* @nyx_string_concat(%nyx_string* %3290, %nyx_string* %3291)
  %3293 = getelementptr [9 x i8], [9 x i8]* @.str321, i32 0, i32 0
  %3294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3293, i64 8)
  %3295 = call %nyx_string* @nyx_string_concat(%nyx_string* %3292, %nyx_string* %3294)
  %3296 = call i8* @nyx_string_to_cstr(%nyx_string* %3295)
  %3297 = call i64 @nyx_exec_code(i8* %3296)
  %3298 = load %nyx_string*, %nyx_string** %2501
  %3299 = getelementptr [22 x i8], [22 x i8]* @.str322, i32 0, i32 0
  %3300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3299, i64 21)
  %3301 = call %nyx_string* @nyx_string_concat(%nyx_string* %3298, %nyx_string* %3300)
  %3302 = load %nyx_string*, %nyx_string** %2969
  %3303 = ptrtoint %nyx_string* %3302 to i64
  %3304 = call i8* @nyx_string_to_cstr(%nyx_string* %3301)
  %3305 = inttoptr i64 %3303 to %nyx_string*
  %3306 = call i1 @nyx_write_file_safe(i8* %3304, %nyx_string* %3305)
  %3307 = getelementptr [29 x i8], [29 x i8]* @.str323, i32 0, i32 0
  %3308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3307, i64 28)
  %3309 = call i8* @nyx_string_to_cstr(%nyx_string* %3308)
  call void @nyx_print_string(i8* %3309)
  br label %merge573
else572:
  br label %merge573
merge573:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3310 = getelementptr [115 x i8], [115 x i8]* @.str324, i32 0, i32 0
  %3311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3310, i64 114)
  %3312 = call i8* @nyx_string_to_cstr(%nyx_string* %3311)
  call void @nyx_print_string(i8* %3312)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3313 = getelementptr [5 x i8], [5 x i8]* @.str325, i32 0, i32 0
  %3314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3313, i64 4)
  %3315 = load %nyx_string*, %nyx_string** %nh.ptr
  %3316 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3315)
  %3317 = getelementptr [66 x i8], [66 x i8]* @.str326, i32 0, i32 0
  %3318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3317, i64 65)
  %3319 = call %nyx_string* @nyx_string_concat(%nyx_string* %3316, %nyx_string* %3318)
  %3320 = call i8* @nyx_string_to_cstr(%nyx_string* %3319)
  %3321 = call %nyx_string* @nyx_exec(i8* %3320)
  %3322 = call %nyx_string* @nyx_string_trim(%nyx_string* %3321)
  ret %nyx_string* %3322
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3323 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %3324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3323, i64 4)
  %3325 = load %nyx_string*, %nyx_string** %nh.ptr
  %3326 = call %nyx_string* @nyx_string_concat(%nyx_string* %3324, %nyx_string* %3325)
  %3327 = getelementptr [74 x i8], [74 x i8]* @.str328, i32 0, i32 0
  %3328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3327, i64 73)
  %3329 = call %nyx_string* @nyx_string_concat(%nyx_string* %3326, %nyx_string* %3328)
  %3330 = call i8* @nyx_string_to_cstr(%nyx_string* %3329)
  %3331 = call %nyx_string* @nyx_exec(i8* %3330)
  %3332 = call %nyx_string* @nyx_string_trim(%nyx_string* %3331)
  ret %nyx_string* %3332
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3333 = getelementptr [24 x i8], [24 x i8]* @.str329, i32 0, i32 0
  %3334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3333, i64 23)
  %3335 = call i8* @nyx_string_to_cstr(%nyx_string* %3334)
  call void @nyx_print_string(i8* %3335)
  %3336 = getelementptr [9 x i8], [9 x i8]* @.str330, i32 0, i32 0
  %3337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3336, i64 8)
  %3338 = call i8* @nyx_string_to_cstr(%nyx_string* %3337)
  %3339 = call %nyx_string* @nyx_getenv(i8* %3338)
  %3340 = alloca %nyx_string*
  store %nyx_string* %3339, %nyx_string** %3340
  %3341 = load %nyx_string*, %nyx_string** %3340
  %3342 = getelementptr [9 x i8], [9 x i8]* @.str331, i32 0, i32 0
  %3343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3342, i64 8)
  %3344 = call %nyx_string* @nyx_string_concat(%nyx_string* %3341, %nyx_string* %3343)
  %3345 = call i8* @nyx_string_to_cstr(%nyx_string* %3344)
  %3346 = call %nyx_string* @nyx_read_file(i8* %3345)
  %3347 = call %nyx_string* @nyx_string_trim(%nyx_string* %3346)
  %3348 = alloca %nyx_string*
  store %nyx_string* %3347, %nyx_string** %3348
  %3349 = load %nyx_string*, %nyx_string** %3340
  %3350 = call %nyx_string* @huella_compilador(%nyx_string* %3349)
  %3351 = alloca %nyx_string*
  store %nyx_string* %3350, %nyx_string** %3351
  %3352 = load %nyx_string*, %nyx_string** %3340
  %3353 = call %nyx_string* @huella_resto(%nyx_string* %3352)
  %3354 = alloca %nyx_string*
  store %nyx_string* %3353, %nyx_string** %3354
  %3355 = getelementptr [18 x i8], [18 x i8]* @.str332, i32 0, i32 0
  %3356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3355, i64 17)
  %3357 = load %nyx_string*, %nyx_string** %3348
  %3358 = call %nyx_string* @nyx_string_concat(%nyx_string* %3356, %nyx_string* %3357)
  %3359 = getelementptr [17 x i8], [17 x i8]* @.str333, i32 0, i32 0
  %3360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3359, i64 16)
  %3361 = call %nyx_string* @nyx_string_concat(%nyx_string* %3358, %nyx_string* %3360)
  %3362 = load %nyx_string*, %nyx_string** %3351
  %3363 = call %nyx_string* @nyx_string_concat(%nyx_string* %3361, %nyx_string* %3362)
  %3364 = getelementptr [2 x i8], [2 x i8]* @.str334, i32 0, i32 0
  %3365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3364, i64 1)
  %3366 = call %nyx_string* @nyx_string_concat(%nyx_string* %3363, %nyx_string* %3365)
  %3367 = call i8* @nyx_string_to_cstr(%nyx_string* %3366)
  call void @nyx_print_string(i8* %3367)
  %3368 = call %TestConfig @load_test_config()
  %3369 = alloca %TestConfig
  store %TestConfig %3368, %TestConfig* %3369
  %3370 = call { i64, i8* }* @nyx_get_args()
  %3371 = alloca { i64, i8* }*
  store { i64, i8* }* %3370, { i64, i8* }** %3371
  %3372 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %3373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3372, i64 0)
  %3374 = alloca %nyx_string*
  store %nyx_string* %3373, %nyx_string** %3374
  %3375 = alloca i64
  store i64 1, i64* %3375
  %3376 = getelementptr [9 x i8], [9 x i8]* @.str336, i32 0, i32 0
  %3377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3376, i64 8)
  %3378 = alloca %nyx_string*
  store %nyx_string* %3377, %nyx_string** %3378
  %3379 = getelementptr [10 x i8], [10 x i8]* @.str337, i32 0, i32 0
  %3380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3379, i64 9)
  %3381 = alloca %nyx_string*
  store %nyx_string* %3380, %nyx_string** %3381
  %3382 = getelementptr [3 x i8], [3 x i8]* @.str338, i32 0, i32 0
  %3383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3382, i64 2)
  %3384 = alloca %nyx_string*
  store %nyx_string* %3383, %nyx_string** %3384
  %3385 = getelementptr [10 x i8], [10 x i8]* @.str339, i32 0, i32 0
  %3386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3385, i64 9)
  %3387 = alloca %nyx_string*
  store %nyx_string* %3386, %nyx_string** %3387
  %3388 = getelementptr [10 x i8], [10 x i8]* @.str340, i32 0, i32 0
  %3389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3388, i64 9)
  %3390 = alloca %nyx_string*
  store %nyx_string* %3389, %nyx_string** %3390
  %3391 = getelementptr [11 x i8], [11 x i8]* @.str341, i32 0, i32 0
  %3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3391, i64 10)
  %3393 = alloca %nyx_string*
  store %nyx_string* %3392, %nyx_string** %3393
  %3394 = getelementptr [16 x i8], [16 x i8]* @.str342, i32 0, i32 0
  %3395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3394, i64 15)
  %3396 = alloca %nyx_string*
  store %nyx_string* %3395, %nyx_string** %3396
  %3397 = getelementptr [8 x i8], [8 x i8]* @.str343, i32 0, i32 0
  %3398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3397, i64 7)
  %3399 = alloca %nyx_string*
  store %nyx_string* %3398, %nyx_string** %3399
  %3400 = getelementptr [12 x i8], [12 x i8]* @.str344, i32 0, i32 0
  %3401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3400, i64 11)
  %3402 = alloca %nyx_string*
  store %nyx_string* %3401, %nyx_string** %3402
  %3403 = getelementptr [24 x i8], [24 x i8]* @.str345, i32 0, i32 0
  %3404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3403, i64 23)
  %3405 = alloca %nyx_string*
  store %nyx_string* %3404, %nyx_string** %3405
  %3406 = getelementptr [106 x i8], [106 x i8]* @.str346, i32 0, i32 0
  %3407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3406, i64 105)
  %3408 = alloca %nyx_string*
  store %nyx_string* %3407, %nyx_string** %3408
  %3409 = getelementptr [9 x i8], [9 x i8]* @.str347, i32 0, i32 0
  %3410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3409, i64 8)
  %3411 = alloca %nyx_string*
  store %nyx_string* %3410, %nyx_string** %3411
  %3412 = getelementptr [10 x i8], [10 x i8]* @.str348, i32 0, i32 0
  %3413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3412, i64 9)
  %3414 = alloca %nyx_string*
  store %nyx_string* %3413, %nyx_string** %3414
  %3415 = getelementptr [2 x i8], [2 x i8]* @.str349, i32 0, i32 0
  %3416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3415, i64 1)
  %3417 = alloca %nyx_string*
  store %nyx_string* %3416, %nyx_string** %3417
  %3418 = getelementptr [4 x i8], [4 x i8]* @.str350, i32 0, i32 0
  %3419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3418, i64 3)
  %3420 = alloca %nyx_string*
  store %nyx_string* %3419, %nyx_string** %3420
  %3421 = getelementptr [2 x i8], [2 x i8]* @.str351, i32 0, i32 0
  %3422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3421, i64 1)
  %3423 = alloca %nyx_string*
  store %nyx_string* %3422, %nyx_string** %3423
  %3424 = call i8* @llvm.stacksave()
  br label %while_cond574
while_cond574:
  %3425 = load i64, i64* %3375
  %3426 = load { i64, i8* }*, { i64, i8* }** %3371
  %3427 = call i64 @nyx_array_length({ i64, i8* }* %3426)
  %3428 = icmp slt i64 %3425, %3427
  br i1 %3428, label %while_body575, label %while_end576
while_body575:
  call void @llvm.stackrestore(i8* %3424)
  %3429 = load { i64, i8* }*, { i64, i8* }** %3371
  %3430 = load i64, i64* %3375
  %3431 = call i64 @nyx_array_get_checked({ i64, i8* }* %3429, i64 %3430, i64 2)
  %3432 = inttoptr i64 %3431 to %nyx_string*
  %3433 = alloca %nyx_string*
  store %nyx_string* %3432, %nyx_string** %3433
  %3434 = alloca i1
  store i1 false, i1* %3434
  %3435 = load %nyx_string*, %nyx_string** %3433
  %3436 = load %nyx_string*, %nyx_string** %3378
  %3437 = call i1 @nyx_string_equals(%nyx_string* %3435, %nyx_string* %3436)
  br i1 %3437, label %sc_and_rhs577, label %sc_and_end578
sc_and_rhs577:
  %3438 = load i64, i64* %3375
  %3439 = add i64 %3438, 1
  %3440 = load { i64, i8* }*, { i64, i8* }** %3371
  %3441 = call i64 @nyx_array_length({ i64, i8* }* %3440)
  %3442 = icmp slt i64 %3439, %3441
  store i1 %3442, i1* %3434
  br label %sc_and_end578
sc_and_end578:
  %3443 = load i1, i1* %3434
  br i1 %3443, label %then579, label %else580
then579:
  %3444 = load i64, i64* %3375
  %3445 = add i64 %3444, 1
  store i64 %3445, i64* %3375
  %3446 = load { i64, i8* }*, { i64, i8* }** %3371
  %3447 = load i64, i64* %3375
  %3448 = call i64 @nyx_array_get_checked({ i64, i8* }* %3446, i64 %3447, i64 2)
  %3449 = inttoptr i64 %3448 to %nyx_string*
  %3450 = alloca %nyx_string*
  store %nyx_string* %3449, %nyx_string** %3450
  %3451 = load %nyx_string*, %nyx_string** %3450
  %3452 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 2
  store %nyx_string* %3451, %nyx_string** %3452
  br label %merge581
else580:
  %3453 = alloca i1
  store i1 true, i1* %3453
  %3454 = load %nyx_string*, %nyx_string** %3433
  %3455 = load %nyx_string*, %nyx_string** %3381
  %3456 = call i1 @nyx_string_equals(%nyx_string* %3454, %nyx_string* %3455)
  br i1 %3456, label %sc_or_end583, label %sc_or_rhs582
sc_or_rhs582:
  %3457 = load %nyx_string*, %nyx_string** %3433
  %3458 = load %nyx_string*, %nyx_string** %3384
  %3459 = call i1 @nyx_string_equals(%nyx_string* %3457, %nyx_string* %3458)
  store i1 %3459, i1* %3453
  br label %sc_or_end583
sc_or_end583:
  %3460 = load i1, i1* %3453
  br i1 %3460, label %then584, label %else585
then584:
  %3461 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 3
  store i1 1, i1* %3461
  br label %merge586
else585:
  %3462 = alloca i1
  store i1 false, i1* %3462
  %3463 = load %nyx_string*, %nyx_string** %3433
  %3464 = load %nyx_string*, %nyx_string** %3387
  %3465 = call i1 @nyx_string_equals(%nyx_string* %3463, %nyx_string* %3464)
  br i1 %3465, label %sc_and_rhs587, label %sc_and_end588
sc_and_rhs587:
  %3466 = load i64, i64* %3375
  %3467 = add i64 %3466, 1
  %3468 = load { i64, i8* }*, { i64, i8* }** %3371
  %3469 = call i64 @nyx_array_length({ i64, i8* }* %3468)
  %3470 = icmp slt i64 %3467, %3469
  store i1 %3470, i1* %3462
  br label %sc_and_end588
sc_and_end588:
  %3471 = load i1, i1* %3462
  br i1 %3471, label %then589, label %else590
then589:
  %3472 = load i64, i64* %3375
  %3473 = add i64 %3472, 1
  store i64 %3473, i64* %3375
  %3474 = load { i64, i8* }*, { i64, i8* }** %3371
  %3475 = load i64, i64* %3375
  %3476 = call i64 @nyx_array_get_checked({ i64, i8* }* %3474, i64 %3475, i64 2)
  %3477 = inttoptr i64 %3476 to %nyx_string*
  %3478 = alloca %nyx_string*
  store %nyx_string* %3477, %nyx_string** %3478
  %3479 = load %nyx_string*, %nyx_string** %3478
  %3480 = call i64 @nyx_string_to_int(%nyx_string* %3479)
  %3481 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 1
  store i64 %3480, i64* %3481
  br label %merge591
else590:
  %3482 = load %nyx_string*, %nyx_string** %3433
  %3483 = load %nyx_string*, %nyx_string** %3390
  %3484 = call i1 @nyx_string_equals(%nyx_string* %3482, %nyx_string* %3483)
  br i1 %3484, label %then592, label %else593
then592:
  %3485 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 7
  store i1 1, i1* %3485
  br label %merge594
else593:
  %3486 = load %nyx_string*, %nyx_string** %3433
  %3487 = load %nyx_string*, %nyx_string** %3393
  %3488 = call i1 @nyx_string_equals(%nyx_string* %3486, %nyx_string* %3487)
  br i1 %3488, label %then595, label %else596
then595:
  %3489 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 5
  store i1 1, i1* %3489
  br label %merge597
else596:
  %3490 = load %nyx_string*, %nyx_string** %3433
  %3491 = load %nyx_string*, %nyx_string** %3396
  %3492 = call i1 @nyx_string_equals(%nyx_string* %3490, %nyx_string* %3491)
  br i1 %3492, label %then598, label %else599
then598:
  %3493 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 5
  store i1 1, i1* %3493
  %3494 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 6
  store i1 1, i1* %3494
  br label %merge600
else599:
  %3495 = alloca i1
  store i1 true, i1* %3495
  %3496 = load %nyx_string*, %nyx_string** %3433
  %3497 = load %nyx_string*, %nyx_string** %3399
  %3498 = call i1 @nyx_string_equals(%nyx_string* %3496, %nyx_string* %3497)
  br i1 %3498, label %sc_or_end602, label %sc_or_rhs601
sc_or_rhs601:
  %3499 = load %nyx_string*, %nyx_string** %3433
  %3500 = load %nyx_string*, %nyx_string** %3402
  %3501 = call i1 @nyx_string_starts_with(%nyx_string* %3499, %nyx_string* %3500)
  store i1 %3501, i1* %3495
  br label %sc_or_end602
sc_or_end602:
  %3502 = load i1, i1* %3495
  br i1 %3502, label %then603, label %else604
then603:
  %3503 = load %nyx_string*, %nyx_string** %3405
  %3504 = load %nyx_string*, %nyx_string** %3433
  %3505 = call %nyx_string* @nyx_string_concat(%nyx_string* %3503, %nyx_string* %3504)
  %3506 = call i8* @nyx_string_to_cstr(%nyx_string* %3505)
  call void @nyx_print_string(i8* %3506)
  %3507 = load %nyx_string*, %nyx_string** %3408
  %3508 = call i8* @nyx_string_to_cstr(%nyx_string* %3507)
  call void @nyx_print_string(i8* %3508)
  %3509 = call i64 @print_valid_options()
  ret i64 1
else604:
  %3510 = alloca i1
  store i1 true, i1* %3510
  %3511 = load %nyx_string*, %nyx_string** %3433
  %3512 = load %nyx_string*, %nyx_string** %3411
  %3513 = call i1 @nyx_string_equals(%nyx_string* %3511, %nyx_string* %3512)
  br i1 %3513, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3514 = load %nyx_string*, %nyx_string** %3433
  %3515 = load %nyx_string*, %nyx_string** %3414
  %3516 = call i1 @nyx_string_starts_with(%nyx_string* %3514, %nyx_string* %3515)
  store i1 %3516, i1* %3510
  br label %sc_or_end607
sc_or_end607:
  %3517 = load i1, i1* %3510
  br i1 %3517, label %then608, label %else609
then608:
  %3518 = load %nyx_string*, %nyx_string** %3433
  store %nyx_string* %3518, %nyx_string** %3374
  %3519 = alloca i1
  store i1 false, i1* %3519
  %3520 = load %nyx_string*, %nyx_string** %3433
  %3521 = load %nyx_string*, %nyx_string** %3411
  %3522 = call i1 @nyx_string_equals(%nyx_string* %3520, %nyx_string* %3521)
  br i1 %3522, label %sc_and_rhs611, label %sc_and_end612
sc_and_rhs611:
  %3523 = load i64, i64* %3375
  %3524 = add i64 %3523, 1
  %3525 = load { i64, i8* }*, { i64, i8* }** %3371
  %3526 = call i64 @nyx_array_length({ i64, i8* }* %3525)
  %3527 = icmp slt i64 %3524, %3526
  store i1 %3527, i1* %3519
  br label %sc_and_end612
sc_and_end612:
  %3528 = load i1, i1* %3519
  br i1 %3528, label %then613, label %else614
then613:
  %3529 = load i64, i64* %3375
  %3530 = add i64 %3529, 1
  store i64 %3530, i64* %3375
  %3531 = load { i64, i8* }*, { i64, i8* }** %3371
  %3532 = load i64, i64* %3375
  %3533 = call i64 @nyx_array_get_checked({ i64, i8* }* %3531, i64 %3532, i64 2)
  %3534 = inttoptr i64 %3533 to %nyx_string*
  %3535 = alloca %nyx_string*
  store %nyx_string* %3534, %nyx_string** %3535
  %3536 = load %nyx_string*, %nyx_string** %3433
  %3537 = load %nyx_string*, %nyx_string** %3417
  %3538 = call %nyx_string* @nyx_string_concat(%nyx_string* %3536, %nyx_string* %3537)
  %3539 = load %nyx_string*, %nyx_string** %3535
  %3540 = call %nyx_string* @nyx_string_concat(%nyx_string* %3538, %nyx_string* %3539)
  store %nyx_string* %3540, %nyx_string** %3374
  br label %merge615
else614:
  br label %merge615
merge615:
  br label %merge610
else609:
  %3541 = alloca i1
  store i1 true, i1* %3541
  %3542 = load %nyx_string*, %nyx_string** %3433
  %3543 = load %nyx_string*, %nyx_string** %3378
  %3544 = call i1 @nyx_string_equals(%nyx_string* %3542, %nyx_string* %3543)
  br i1 %3544, label %sc_or_end617, label %sc_or_rhs616
sc_or_rhs616:
  %3545 = load %nyx_string*, %nyx_string** %3433
  %3546 = load %nyx_string*, %nyx_string** %3387
  %3547 = call i1 @nyx_string_equals(%nyx_string* %3545, %nyx_string* %3546)
  store i1 %3547, i1* %3541
  br label %sc_or_end617
sc_or_end617:
  %3548 = load i1, i1* %3541
  br i1 %3548, label %then618, label %else619
then618:
  br label %merge620
else619:
  %3549 = load %nyx_string*, %nyx_string** %3433
  %3550 = load %nyx_string*, %nyx_string** %3420
  %3551 = call i1 @nyx_string_ends_with(%nyx_string* %3549, %nyx_string* %3550)
  br i1 %3551, label %then621, label %else622
then621:
  %3552 = load %nyx_string*, %nyx_string** %3433
  %3553 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 4
  store %nyx_string* %3552, %nyx_string** %3553
  br label %merge623
else622:
  %3554 = load %nyx_string*, %nyx_string** %3433
  %3555 = load %nyx_string*, %nyx_string** %3423
  %3556 = call i1 @nyx_string_starts_with(%nyx_string* %3554, %nyx_string* %3555)
  br i1 %3556, label %then624, label %else625
then624:
  %3557 = load %nyx_string*, %nyx_string** %3405
  %3558 = load %nyx_string*, %nyx_string** %3433
  %3559 = call %nyx_string* @nyx_string_concat(%nyx_string* %3557, %nyx_string* %3558)
  %3560 = call i8* @nyx_string_to_cstr(%nyx_string* %3559)
  call void @nyx_print_string(i8* %3560)
  %3561 = call i64 @print_valid_options()
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
  %3562 = load i64, i64* %3375
  %3563 = add i64 %3562, 1
  store i64 %3563, i64* %3375
  br label %while_cond574
while_end576:
  %3564 = load %nyx_string*, %nyx_string** %3374
  %3565 = getelementptr [1 x i8], [1 x i8]* @.str352, i32 0, i32 0
  %3566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3565, i64 0)
  %3567 = call i1 @nyx_string_equals(%nyx_string* %3564, %nyx_string* %3566)
  %3568 = xor i1 %3567, true
  br i1 %3568, label %then627, label %else628
then627:
  %3569 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 5
  %3570 = load i1, i1* %3569
  br i1 %3570, label %then630, label %else631
then630:
  %3571 = getelementptr [47 x i8], [47 x i8]* @.str353, i32 0, i32 0
  %3572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3571, i64 46)
  %3573 = load %nyx_string*, %nyx_string** %3374
  %3574 = call %nyx_string* @nyx_string_concat(%nyx_string* %3572, %nyx_string* %3573)
  %3575 = getelementptr [58 x i8], [58 x i8]* @.str354, i32 0, i32 0
  %3576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3575, i64 57)
  %3577 = call %nyx_string* @nyx_string_concat(%nyx_string* %3574, %nyx_string* %3576)
  %3578 = call i8* @nyx_string_to_cstr(%nyx_string* %3577)
  call void @nyx_print_string(i8* %3578)
  br label %merge632
else631:
  %3579 = getelementptr [24 x i8], [24 x i8]* @.str355, i32 0, i32 0
  %3580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3579, i64 23)
  %3581 = load %nyx_string*, %nyx_string** %3374
  %3582 = call %nyx_string* @nyx_string_concat(%nyx_string* %3580, %nyx_string* %3581)
  %3583 = call i8* @nyx_string_to_cstr(%nyx_string* %3582)
  call void @nyx_print_string(i8* %3583)
  br label %merge632
merge632:
  %3584 = call i64 @print_valid_options()
  ret i64 1
else628:
  br label %merge629
merge629:
  %3585 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %3586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3585, i64 0)
  %3587 = alloca %nyx_string*
  store %nyx_string* %3586, %nyx_string** %3587
  %3588 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %3589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3588, i64 0)
  %3590 = alloca %nyx_string*
  store %nyx_string* %3589, %nyx_string** %3590
  %3591 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 5
  %3592 = load i1, i1* %3591
  br i1 %3592, label %then633, label %else634
then633:
  %3593 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3593, %nyx_string** %3587
  %3594 = load %nyx_string*, %nyx_string** %3587
  %3595 = getelementptr [1 x i8], [1 x i8]* @.str358, i32 0, i32 0
  %3596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3595, i64 0)
  %3597 = call i1 @nyx_string_equals(%nyx_string* %3594, %nyx_string* %3596)
  br i1 %3597, label %then636, label %else637
then636:
  %3598 = call %nyx_string* @cov_clang_major()
  %3599 = alloca %nyx_string*
  store %nyx_string* %3598, %nyx_string** %3599
  %3600 = getelementptr [5 x i8], [5 x i8]* @.str359, i32 0, i32 0
  %3601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3600, i64 4)
  %3602 = alloca %nyx_string*
  store %nyx_string* %3601, %nyx_string** %3602
  %3603 = load %nyx_string*, %nyx_string** %3599
  %3604 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %3605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3604, i64 0)
  %3606 = call i1 @nyx_string_equals(%nyx_string* %3603, %nyx_string* %3605)
  %3607 = xor i1 %3606, true
  br i1 %3607, label %then639, label %else640
then639:
  %3608 = getelementptr [6 x i8], [6 x i8]* @.str361, i32 0, i32 0
  %3609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3608, i64 5)
  %3610 = load %nyx_string*, %nyx_string** %3599
  %3611 = call %nyx_string* @nyx_string_concat(%nyx_string* %3609, %nyx_string* %3610)
  store %nyx_string* %3611, %nyx_string** %3602
  br label %merge641
else640:
  br label %merge641
merge641:
  %3612 = getelementptr [101 x i8], [101 x i8]* @.str362, i32 0, i32 0
  %3613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3612, i64 100)
  %3614 = call i8* @nyx_string_to_cstr(%nyx_string* %3613)
  call void @nyx_print_string(i8* %3614)
  %3615 = getelementptr [35 x i8], [35 x i8]* @.str363, i32 0, i32 0
  %3616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3615, i64 34)
  %3617 = load %nyx_string*, %nyx_string** %3602
  %3618 = call %nyx_string* @nyx_string_concat(%nyx_string* %3616, %nyx_string* %3617)
  %3619 = call i8* @nyx_string_to_cstr(%nyx_string* %3618)
  call void @nyx_print_string(i8* %3619)
  %3620 = getelementptr [82 x i8], [82 x i8]* @.str364, i32 0, i32 0
  %3621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3620, i64 81)
  %3622 = call i8* @nyx_string_to_cstr(%nyx_string* %3621)
  call void @nyx_print_string(i8* %3622)
  %3623 = getelementptr [82 x i8], [82 x i8]* @.str365, i32 0, i32 0
  %3624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3623, i64 81)
  %3625 = call i8* @nyx_string_to_cstr(%nyx_string* %3624)
  call void @nyx_print_string(i8* %3625)
  ret i64 1
else637:
  br label %merge638
merge638:
  %3626 = getelementptr [30 x i8], [30 x i8]* @.str366, i32 0, i32 0
  %3627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3626, i64 29)
  %3628 = call i8* @nyx_string_to_cstr(%nyx_string* %3627)
  %3629 = call %nyx_string* @nyx_exec(i8* %3628)
  %3630 = call %nyx_string* @nyx_string_trim(%nyx_string* %3629)
  store %nyx_string* %3630, %nyx_string** %3590
  %3631 = load %nyx_string*, %nyx_string** %3590
  %3632 = getelementptr [1 x i8], [1 x i8]* @.str367, i32 0, i32 0
  %3633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3632, i64 0)
  %3634 = call i1 @nyx_string_equals(%nyx_string* %3631, %nyx_string* %3633)
  br i1 %3634, label %then642, label %else643
then642:
  %3635 = getelementptr [55 x i8], [55 x i8]* @.str368, i32 0, i32 0
  %3636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3635, i64 54)
  %3637 = call i8* @nyx_string_to_cstr(%nyx_string* %3636)
  call void @nyx_print_string(i8* %3637)
  ret i64 1
else643:
  br label %merge644
merge644:
  br label %merge635
else634:
  br label %merge635
merge635:
  %3638 = call { i64, i8* }* @nyx_array_new_ptr()
  %3639 = alloca { i64, i8* }*
  store { i64, i8* }* %3638, { i64, i8* }** %3639
  %3640 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 4
  %3641 = load %nyx_string*, %nyx_string** %3640
  %3642 = getelementptr [1 x i8], [1 x i8]* @.str369, i32 0, i32 0
  %3643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3642, i64 0)
  %3644 = call i1 @nyx_string_equals(%nyx_string* %3641, %nyx_string* %3643)
  %3645 = xor i1 %3644, true
  br i1 %3645, label %then645, label %else646
then645:
  %3646 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 4
  %3647 = load %nyx_string*, %nyx_string** %3646
  %3648 = call i8* @nyx_string_to_cstr(%nyx_string* %3647)
  %3649 = call i1 @nyx_file_exists(i8* %3648)
  %3650 = xor i1 %3649, true
  br i1 %3650, label %then648, label %else649
then648:
  %3651 = getelementptr [24 x i8], [24 x i8]* @.str370, i32 0, i32 0
  %3652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3651, i64 23)
  %3653 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 4
  %3654 = load %nyx_string*, %nyx_string** %3653
  %3655 = call %nyx_string* @nyx_string_concat(%nyx_string* %3652, %nyx_string* %3654)
  %3656 = call i8* @nyx_string_to_cstr(%nyx_string* %3655)
  call void @nyx_print_string(i8* %3656)
  ret i64 1
else649:
  br label %merge650
merge650:
  %3657 = load { i64, i8* }*, { i64, i8* }** %3639
  %3658 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 4
  %3659 = load %nyx_string*, %nyx_string** %3658
  %3660 = ptrtoint %nyx_string* %3659 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3657, i64 %3660, i64 2)
  br label %merge647
else646:
  %3661 = load %TestConfig, %TestConfig* %3369
  %3662 = call { i64, i8* }* @discover_tests(%TestConfig %3661)
  store { i64, i8* }* %3662, { i64, i8* }** %3639
  br label %merge647
merge647:
  %3663 = load { i64, i8* }*, { i64, i8* }** %3639
  %3664 = call i64 @nyx_array_length({ i64, i8* }* %3663)
  %3665 = icmp eq i64 %3664, 0
  br i1 %3665, label %then651, label %else652
then651:
  %3666 = getelementptr [23 x i8], [23 x i8]* @.str371, i32 0, i32 0
  %3667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3666, i64 22)
  %3668 = call i8* @nyx_string_to_cstr(%nyx_string* %3667)
  call void @nyx_print_string(i8* %3668)
  %3669 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 2
  %3670 = load %nyx_string*, %nyx_string** %3669
  %3671 = getelementptr [1 x i8], [1 x i8]* @.str372, i32 0, i32 0
  %3672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3671, i64 0)
  %3673 = call i1 @nyx_string_equals(%nyx_string* %3670, %nyx_string* %3672)
  %3674 = xor i1 %3673, true
  br i1 %3674, label %then654, label %else655
then654:
  %3675 = getelementptr [12 x i8], [12 x i8]* @.str373, i32 0, i32 0
  %3676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3675, i64 11)
  %3677 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 2
  %3678 = load %nyx_string*, %nyx_string** %3677
  %3679 = call %nyx_string* @nyx_string_concat(%nyx_string* %3676, %nyx_string* %3678)
  %3680 = getelementptr [2 x i8], [2 x i8]* @.str374, i32 0, i32 0
  %3681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3680, i64 1)
  %3682 = call %nyx_string* @nyx_string_concat(%nyx_string* %3679, %nyx_string* %3681)
  %3683 = call i8* @nyx_string_to_cstr(%nyx_string* %3682)
  call void @nyx_print_string(i8* %3683)
  br label %merge656
else655:
  br label %merge656
merge656:
  %3684 = getelementptr [14 x i8], [14 x i8]* @.str375, i32 0, i32 0
  %3685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3684, i64 13)
  %3686 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 0
  %3687 = load %nyx_string*, %nyx_string** %3686
  %3688 = call %nyx_string* @nyx_string_concat(%nyx_string* %3685, %nyx_string* %3687)
  %3689 = getelementptr [2 x i8], [2 x i8]* @.str376, i32 0, i32 0
  %3690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3689, i64 1)
  %3691 = call %nyx_string* @nyx_string_concat(%nyx_string* %3688, %nyx_string* %3690)
  %3692 = call i8* @nyx_string_to_cstr(%nyx_string* %3691)
  call void @nyx_print_string(i8* %3692)
  ret i64 0
else652:
  br label %merge653
merge653:
  %3693 = getelementptr [9 x i8], [9 x i8]* @.str377, i32 0, i32 0
  %3694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3693, i64 8)
  %3695 = load { i64, i8* }*, { i64, i8* }** %3639
  %3696 = call i64 @nyx_array_length({ i64, i8* }* %3695)
  %3697 = call %nyx_string* @nyx_string_from_int(i64 %3696)
  %3698 = call %nyx_string* @nyx_string_concat(%nyx_string* %3694, %nyx_string* %3697)
  %3699 = getelementptr [14 x i8], [14 x i8]* @.str378, i32 0, i32 0
  %3700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3699, i64 13)
  %3701 = call %nyx_string* @nyx_string_concat(%nyx_string* %3698, %nyx_string* %3700)
  %3702 = call i8* @nyx_string_to_cstr(%nyx_string* %3701)
  call void @nyx_print_string(i8* %3702)
  %3703 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 2
  %3704 = load %nyx_string*, %nyx_string** %3703
  %3705 = getelementptr [1 x i8], [1 x i8]* @.str379, i32 0, i32 0
  %3706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3705, i64 0)
  %3707 = call i1 @nyx_string_equals(%nyx_string* %3704, %nyx_string* %3706)
  %3708 = xor i1 %3707, true
  br i1 %3708, label %then657, label %else658
then657:
  %3709 = getelementptr [12 x i8], [12 x i8]* @.str380, i32 0, i32 0
  %3710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3709, i64 11)
  %3711 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 2
  %3712 = load %nyx_string*, %nyx_string** %3711
  %3713 = call %nyx_string* @nyx_string_concat(%nyx_string* %3710, %nyx_string* %3712)
  %3714 = getelementptr [2 x i8], [2 x i8]* @.str381, i32 0, i32 0
  %3715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3714, i64 1)
  %3716 = call %nyx_string* @nyx_string_concat(%nyx_string* %3713, %nyx_string* %3715)
  %3717 = call i8* @nyx_string_to_cstr(%nyx_string* %3716)
  call void @nyx_print_string(i8* %3717)
  br label %merge659
else658:
  br label %merge659
merge659:
  %3718 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %3719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3718, i64 0)
  %3720 = call i8* @nyx_string_to_cstr(%nyx_string* %3719)
  call void @nyx_print_string(i8* %3720)
  %3721 = alloca i1
  store i1 false, i1* %3721
  %3722 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 8
  %3723 = load %nyx_string*, %nyx_string** %3722
  %3724 = getelementptr [1 x i8], [1 x i8]* @.str383, i32 0, i32 0
  %3725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3724, i64 0)
  %3726 = call i1 @nyx_string_equals(%nyx_string* %3723, %nyx_string* %3725)
  %3727 = xor i1 %3726, true
  br i1 %3727, label %sc_and_rhs660, label %sc_and_end661
sc_and_rhs660:
  %3728 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 5
  %3729 = load i1, i1* %3728
  %3730 = xor i1 %3729, true
  store i1 %3730, i1* %3721
  br label %sc_and_end661
sc_and_end661:
  %3731 = load i1, i1* %3721
  br i1 %3731, label %then662, label %else663
then662:
  %3732 = getelementptr [9 x i8], [9 x i8]* @.str384, i32 0, i32 0
  %3733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3732, i64 8)
  %3734 = call i8* @nyx_string_to_cstr(%nyx_string* %3733)
  %3735 = call %nyx_string* @nyx_getenv(i8* %3734)
  %3736 = alloca %nyx_string*
  store %nyx_string* %3735, %nyx_string** %3736
  %3737 = load %nyx_string*, %nyx_string** %3736
  %3738 = getelementptr [11 x i8], [11 x i8]* @.str385, i32 0, i32 0
  %3739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3738, i64 10)
  %3740 = call %nyx_string* @nyx_string_concat(%nyx_string* %3737, %nyx_string* %3739)
  %3741 = alloca %nyx_string*
  store %nyx_string* %3740, %nyx_string** %3741
  %3742 = load %nyx_string*, %nyx_string** %3741
  %3743 = call i8* @nyx_string_to_cstr(%nyx_string* %3742)
  %3744 = call i1 @nyx_file_exists(i8* %3743)
  %3745 = xor i1 %3744, true
  br i1 %3745, label %then665, label %else666
then665:
  %3746 = load %nyx_string*, %nyx_string** %3736
  %3747 = getelementptr [15 x i8], [15 x i8]* @.str386, i32 0, i32 0
  %3748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3747, i64 14)
  %3749 = call %nyx_string* @nyx_string_concat(%nyx_string* %3746, %nyx_string* %3748)
  store %nyx_string* %3749, %nyx_string** %3741
  br label %merge667
else666:
  br label %merge667
merge667:
  %3750 = getelementptr [1 x i8], [1 x i8]* @.str387, i32 0, i32 0
  %3751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3750, i64 0)
  %3752 = alloca %nyx_string*
  store %nyx_string* %3751, %nyx_string** %3752
  %3753 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 7
  %3754 = load i1, i1* %3753
  br i1 %3754, label %then668, label %else669
then668:
  %3755 = getelementptr [11 x i8], [11 x i8]* @.str388, i32 0, i32 0
  %3756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3755, i64 10)
  store %nyx_string* %3756, %nyx_string** %3752
  br label %merge670
else669:
  br label %merge670
merge670:
  %3757 = getelementptr [33 x i8], [33 x i8]* @.str389, i32 0, i32 0
  %3758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3757, i64 32)
  %3759 = call i8* @nyx_string_to_cstr(%nyx_string* %3758)
  %3760 = call %nyx_string* @nyx_exec(i8* %3759)
  %3761 = call %nyx_string* @nyx_string_trim(%nyx_string* %3760)
  %3762 = alloca %nyx_string*
  store %nyx_string* %3761, %nyx_string** %3762
  %3763 = getelementptr [2 x i8], [2 x i8]* @.str390, i32 0, i32 0
  %3764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3763, i64 1)
  %3765 = load %nyx_string*, %nyx_string** %3741
  %3766 = call %nyx_string* @nyx_string_concat(%nyx_string* %3764, %nyx_string* %3765)
  %3767 = getelementptr [7 x i8], [7 x i8]* @.str391, i32 0, i32 0
  %3768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3767, i64 6)
  %3769 = call %nyx_string* @nyx_string_concat(%nyx_string* %3766, %nyx_string* %3768)
  %3770 = load %nyx_string*, %nyx_string** %3752
  %3771 = call %nyx_string* @nyx_string_concat(%nyx_string* %3769, %nyx_string* %3770)
  %3772 = getelementptr [5 x i8], [5 x i8]* @.str392, i32 0, i32 0
  %3773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3772, i64 4)
  %3774 = call %nyx_string* @nyx_string_concat(%nyx_string* %3771, %nyx_string* %3773)
  %3775 = load %nyx_string*, %nyx_string** %3762
  %3776 = call %nyx_string* @nyx_string_concat(%nyx_string* %3774, %nyx_string* %3775)
  %3777 = getelementptr [7 x i8], [7 x i8]* @.str393, i32 0, i32 0
  %3778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3777, i64 6)
  %3779 = call %nyx_string* @nyx_string_concat(%nyx_string* %3776, %nyx_string* %3778)
  %3780 = call i8* @nyx_string_to_cstr(%nyx_string* %3779)
  %3781 = call i64 @nyx_exec_code(i8* %3780)
  %3782 = alloca i64
  store i64 %3781, i64* %3782
  %3783 = load %nyx_string*, %nyx_string** %3762
  %3784 = call i8* @nyx_string_to_cstr(%nyx_string* %3783)
  %3785 = call %nyx_string* @nyx_read_file(i8* %3784)
  %3786 = alloca %nyx_string*
  store %nyx_string* %3785, %nyx_string** %3786
  %3787 = getelementptr [8 x i8], [8 x i8]* @.str394, i32 0, i32 0
  %3788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3787, i64 7)
  %3789 = load %nyx_string*, %nyx_string** %3762
  %3790 = call %nyx_string* @nyx_string_concat(%nyx_string* %3788, %nyx_string* %3789)
  %3791 = getelementptr [2 x i8], [2 x i8]* @.str395, i32 0, i32 0
  %3792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3791, i64 1)
  %3793 = call %nyx_string* @nyx_string_concat(%nyx_string* %3790, %nyx_string* %3792)
  %3794 = call i8* @nyx_string_to_cstr(%nyx_string* %3793)
  %3795 = call i64 @nyx_exec_code(i8* %3794)
  %3796 = load i64, i64* %3782
  %3797 = icmp ne i64 %3796, 0
  br i1 %3797, label %then671, label %else672
then671:
  %3798 = getelementptr [65 x i8], [65 x i8]* @.str396, i32 0, i32 0
  %3799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3798, i64 64)
  %3800 = call i8* @nyx_string_to_cstr(%nyx_string* %3799)
  call void @nyx_print_string(i8* %3800)
  %3801 = load %nyx_string*, %nyx_string** %3786
  %3802 = call i8* @nyx_string_to_cstr(%nyx_string* %3801)
  call void @nyx_print_string(i8* %3802)
  ret i64 1
else672:
  br label %merge673
merge673:
  %3803 = load %nyx_string*, %nyx_string** %3786
  %3804 = getelementptr [2 x i8], [2 x i8]* @.str397, i32 0, i32 0
  %3805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3804, i64 1)
  %3806 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3803, %nyx_string* %3805)
  %3807 = alloca { i64, i8* }*
  store { i64, i8* }* %3806, { i64, i8* }** %3807
  %3808 = alloca i64
  store i64 0, i64* %3808
  %3809 = alloca i64
  store i64 0, i64* %3809
  %3810 = alloca i64
  store i64 0, i64* %3810
  %3811 = getelementptr [13 x i8], [13 x i8]* @.str398, i32 0, i32 0
  %3812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3811, i64 12)
  %3813 = alloca %nyx_string*
  store %nyx_string* %3812, %nyx_string** %3813
  %3814 = getelementptr [6 x i8], [6 x i8]* @.str399, i32 0, i32 0
  %3815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3814, i64 5)
  %3816 = alloca %nyx_string*
  store %nyx_string* %3815, %nyx_string** %3816
  %3817 = getelementptr [8 x i8], [8 x i8]* @.str400, i32 0, i32 0
  %3818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3817, i64 7)
  %3819 = alloca %nyx_string*
  store %nyx_string* %3818, %nyx_string** %3819
  %3820 = getelementptr [4 x i8], [4 x i8]* @.str401, i32 0, i32 0
  %3821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3820, i64 3)
  %3822 = alloca %nyx_string*
  store %nyx_string* %3821, %nyx_string** %3822
  %3823 = call i8* @llvm.stacksave()
  br label %while_cond674
while_cond674:
  %3824 = load i64, i64* %3808
  %3825 = load { i64, i8* }*, { i64, i8* }** %3807
  %3826 = call i64 @nyx_array_length({ i64, i8* }* %3825)
  %3827 = icmp slt i64 %3824, %3826
  br i1 %3827, label %while_body675, label %while_end676
while_body675:
  call void @llvm.stackrestore(i8* %3823)
  %3828 = load { i64, i8* }*, { i64, i8* }** %3807
  %3829 = load i64, i64* %3808
  %3830 = call i64 @nyx_array_get_checked({ i64, i8* }* %3828, i64 %3829, i64 2)
  %3831 = inttoptr i64 %3830 to %nyx_string*
  %3832 = alloca %nyx_string*
  store %nyx_string* %3831, %nyx_string** %3832
  %3833 = load %nyx_string*, %nyx_string** %3832
  %3834 = load %nyx_string*, %nyx_string** %3813
  %3835 = call i1 @nyx_string_starts_with(%nyx_string* %3833, %nyx_string* %3834)
  br i1 %3835, label %then677, label %else678
then677:
  %3836 = load %nyx_string*, %nyx_string** %3832
  %3837 = load %nyx_string*, %nyx_string** %3832
  %3838 = call i64 @nyx_string_byte_length(%nyx_string* %3837)
  %3839 = call %nyx_string* @nyx_string_substring(%nyx_string* %3836, i64 12, i64 %3838)
  %3840 = call %nyx_string* @nyx_string_trim(%nyx_string* %3839)
  %3841 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 9
  store %nyx_string* %3840, %nyx_string** %3841
  br label %merge679
else678:
  br label %merge679
merge679:
  %3842 = load %nyx_string*, %nyx_string** %3832
  %3843 = load %nyx_string*, %nyx_string** %3816
  %3844 = call i1 @nyx_string_contains(%nyx_string* %3842, %nyx_string* %3843)
  br i1 %3844, label %then680, label %else681
then680:
  %3845 = load i64, i64* %3809
  %3846 = add i64 %3845, 1
  store i64 %3846, i64* %3809
  br label %merge682
else681:
  br label %merge682
merge682:
  %3847 = load %nyx_string*, %nyx_string** %3832
  %3848 = load %nyx_string*, %nyx_string** %3819
  %3849 = call i1 @nyx_string_contains(%nyx_string* %3847, %nyx_string* %3848)
  br i1 %3849, label %then683, label %else684
then683:
  %3850 = load i64, i64* %3810
  %3851 = add i64 %3850, 1
  store i64 %3851, i64* %3810
  br label %merge685
else684:
  br label %merge685
merge685:
  %3852 = load %nyx_string*, %nyx_string** %3832
  %3853 = load %nyx_string*, %nyx_string** %3822
  %3854 = call i1 @nyx_string_contains(%nyx_string* %3852, %nyx_string* %3853)
  br i1 %3854, label %then686, label %else687
then686:
  %3855 = load %nyx_string*, %nyx_string** %3832
  %3856 = call i8* @nyx_string_to_cstr(%nyx_string* %3855)
  call void @nyx_print_string(i8* %3856)
  br label %merge688
else687:
  br label %merge688
merge688:
  %3857 = load i64, i64* %3808
  %3858 = add i64 %3857, 1
  store i64 %3858, i64* %3808
  br label %while_cond674
while_end676:
  %3859 = getelementptr [18 x i8], [18 x i8]* @.str402, i32 0, i32 0
  %3860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3859, i64 17)
  %3861 = load i64, i64* %3809
  %3862 = call %nyx_string* @nyx_string_from_int(i64 %3861)
  %3863 = call %nyx_string* @nyx_string_concat(%nyx_string* %3860, %nyx_string* %3862)
  %3864 = getelementptr [16 x i8], [16 x i8]* @.str403, i32 0, i32 0
  %3865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3864, i64 15)
  %3866 = call %nyx_string* @nyx_string_concat(%nyx_string* %3863, %nyx_string* %3865)
  %3867 = load i64, i64* %3810
  %3868 = call %nyx_string* @nyx_string_from_int(i64 %3867)
  %3869 = call %nyx_string* @nyx_string_concat(%nyx_string* %3866, %nyx_string* %3868)
  %3870 = getelementptr [16 x i8], [16 x i8]* @.str404, i32 0, i32 0
  %3871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3870, i64 15)
  %3872 = call %nyx_string* @nyx_string_concat(%nyx_string* %3869, %nyx_string* %3871)
  %3873 = call i8* @nyx_string_to_cstr(%nyx_string* %3872)
  call void @nyx_print_string(i8* %3873)
  %3874 = getelementptr [1 x i8], [1 x i8]* @.str405, i32 0, i32 0
  %3875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3874, i64 0)
  %3876 = call i8* @nyx_string_to_cstr(%nyx_string* %3875)
  call void @nyx_print_string(i8* %3876)
  br label %merge664
else663:
  br label %merge664
merge664:
  %3877 = call { i64, i8* }* @nyx_array_new_ptr()
  %3878 = alloca { i64, i8* }*
  store { i64, i8* }* %3877, { i64, i8* }** %3878
  %3879 = call { i64, i8* }* @nyx_array_new_ptr()
  %3880 = alloca { i64, i8* }*
  store { i64, i8* }* %3879, { i64, i8* }** %3880
  %3881 = call { i64, i8* }* @nyx_array_new_ptr()
  %3882 = alloca { i64, i8* }*
  store { i64, i8* }* %3881, { i64, i8* }** %3882
  %3883 = alloca i64
  store i64 0, i64* %3883
  %3884 = alloca i64
  store i64 0, i64* %3884
  %3885 = alloca i64
  store i64 0, i64* %3885
  %3886 = call i8* @llvm.stacksave()
  br label %while_cond689
while_cond689:
  %3887 = load i64, i64* %3885
  %3888 = load { i64, i8* }*, { i64, i8* }** %3639
  %3889 = call i64 @nyx_array_length({ i64, i8* }* %3888)
  %3890 = icmp slt i64 %3887, %3889
  br i1 %3890, label %while_body690, label %while_end691
while_body690:
  call void @llvm.stackrestore(i8* %3886)
  %3891 = load { i64, i8* }*, { i64, i8* }** %3639
  %3892 = load i64, i64* %3885
  %3893 = call i64 @nyx_array_get_checked({ i64, i8* }* %3891, i64 %3892, i64 2)
  %3894 = inttoptr i64 %3893 to %nyx_string*
  %3895 = alloca %nyx_string*
  store %nyx_string* %3894, %nyx_string** %3895
  %3896 = load %nyx_string*, %nyx_string** %3895
  %3897 = call i1 @file_has_test_blocks(%nyx_string* %3896)
  %3898 = xor i1 %3897, true
  br i1 %3898, label %then692, label %else693
then692:
  %3899 = load i64, i64* %3885
  %3900 = add i64 %3899, 1
  store i64 %3900, i64* %3885
  br label %merge694
else693:
  %3901 = load %nyx_string*, %nyx_string** %3895
  %3902 = load %TestConfig, %TestConfig* %3369
  %3903 = load %nyx_string*, %nyx_string** %3590
  %3904 = load i64, i64* %3885
  %3905 = call %TestResult @compile_and_run(%nyx_string* %3901, %TestConfig %3902, %nyx_string* %3903, i64 %3904)
  %3906 = alloca %TestResult
  store %TestResult %3905, %TestResult* %3906
  %3907 = load { i64, i8* }*, { i64, i8* }** %3878
  %3908 = load %TestResult, %TestResult* %3906
  %3909 = getelementptr %TestResult, %TestResult* null, i32 1
  %3910 = ptrtoint %TestResult* %3909 to i64
  %3911 = call i8* @GC_malloc(i64 %3910)
  %3912 = bitcast i8* %3911 to %TestResult*
  store %TestResult %3908, %TestResult* %3912
  %3913 = ptrtoint %TestResult* %3912 to i64
  call void @nyx_array_push({ i64, i8* }* %3907, i64 %3913)
  %3914 = load { i64, i8* }*, { i64, i8* }** %3880
  %3915 = load %nyx_string*, %nyx_string** %3895
  %3916 = ptrtoint %nyx_string* %3915 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3914, i64 %3916, i64 2)
  %3917 = load { i64, i8* }*, { i64, i8* }** %3882
  %3918 = load i64, i64* %3885
  %3919 = call %nyx_string* @nyx_string_from_int(i64 %3918)
  %3920 = ptrtoint %nyx_string* %3919 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3917, i64 %3920, i64 2)
  %3921 = load i64, i64* %3883
  %3922 = getelementptr %TestResult, %TestResult* %3906, i32 0, i32 1
  %3923 = load i64, i64* %3922
  %3924 = add i64 %3921, %3923
  store i64 %3924, i64* %3883
  %3925 = load i64, i64* %3884
  %3926 = getelementptr %TestResult, %TestResult* %3906, i32 0, i32 2
  %3927 = load i64, i64* %3926
  %3928 = add i64 %3925, %3927
  store i64 %3928, i64* %3884
  %3929 = load %TestResult, %TestResult* %3906
  %3930 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 3
  %3931 = load i1, i1* %3930
  %3932 = call i64 @print_result(%TestResult %3929, i1 %3931)
  %3933 = load i64, i64* %3885
  %3934 = add i64 %3933, 1
  store i64 %3934, i64* %3885
  br label %merge694
merge694:
  br label %while_cond689
while_end691:
  %3935 = load { i64, i8* }*, { i64, i8* }** %3878
  %3936 = call i64 @nyx_array_length({ i64, i8* }* %3935)
  %3937 = icmp eq i64 %3936, 0
  br i1 %3937, label %then695, label %else696
then695:
  %3938 = getelementptr [35 x i8], [35 x i8]* @.str406, i32 0, i32 0
  %3939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3938, i64 34)
  %3940 = call i8* @nyx_string_to_cstr(%nyx_string* %3939)
  call void @nyx_print_string(i8* %3940)
  %3941 = load %nyx_string*, %nyx_string** %3590
  %3942 = getelementptr [1 x i8], [1 x i8]* @.str407, i32 0, i32 0
  %3943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3942, i64 0)
  %3944 = call i1 @nyx_string_equals(%nyx_string* %3941, %nyx_string* %3943)
  %3945 = xor i1 %3944, true
  br i1 %3945, label %then698, label %else699
then698:
  %3946 = getelementptr [8 x i8], [8 x i8]* @.str408, i32 0, i32 0
  %3947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3946, i64 7)
  %3948 = load %nyx_string*, %nyx_string** %3590
  %3949 = call %nyx_string* @nyx_string_concat(%nyx_string* %3947, %nyx_string* %3948)
  %3950 = call i8* @nyx_string_to_cstr(%nyx_string* %3949)
  %3951 = call %nyx_string* @nyx_exec(i8* %3950)
  br label %merge700
else699:
  br label %merge700
merge700:
  ret i64 0
else696:
  br label %merge697
merge697:
  %3952 = load { i64, i8* }*, { i64, i8* }** %3878
  %3953 = load i64, i64* %3883
  %3954 = load i64, i64* %3884
  %3955 = call i64 @print_summary({ i64, i8* }* %3952, i64 %3953, i64 %3954)
  %3956 = load %nyx_string*, %nyx_string** %3340
  %3957 = call %nyx_string* @huella_compilador(%nyx_string* %3956)
  %3958 = alloca %nyx_string*
  store %nyx_string* %3957, %nyx_string** %3958
  %3959 = load %nyx_string*, %nyx_string** %3340
  %3960 = call %nyx_string* @huella_resto(%nyx_string* %3959)
  %3961 = alloca %nyx_string*
  store %nyx_string* %3960, %nyx_string** %3961
  %3962 = alloca i1
  store i1 true, i1* %3962
  %3963 = load %nyx_string*, %nyx_string** %3958
  %3964 = load %nyx_string*, %nyx_string** %3351
  %3965 = call i1 @nyx_string_equals(%nyx_string* %3963, %nyx_string* %3964)
  %3966 = xor i1 %3965, true
  br i1 %3966, label %sc_or_end702, label %sc_or_rhs701
sc_or_rhs701:
  %3967 = load %nyx_string*, %nyx_string** %3961
  %3968 = load %nyx_string*, %nyx_string** %3354
  %3969 = call i1 @nyx_string_equals(%nyx_string* %3967, %nyx_string* %3968)
  %3970 = xor i1 %3969, true
  store i1 %3970, i1* %3962
  br label %sc_or_end702
sc_or_end702:
  %3971 = load i1, i1* %3962
  br i1 %3971, label %then703, label %else704
then703:
  %3972 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %3973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3972, i64 0)
  %3974 = call i8* @nyx_string_to_cstr(%nyx_string* %3973)
  call void @nyx_print_string(i8* %3974)
  %3975 = getelementptr [48 x i8], [48 x i8]* @.str410, i32 0, i32 0
  %3976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3975, i64 47)
  %3977 = load %nyx_string*, %nyx_string** %3340
  %3978 = call %nyx_string* @nyx_string_concat(%nyx_string* %3976, %nyx_string* %3977)
  %3979 = getelementptr [2 x i8], [2 x i8]* @.str411, i32 0, i32 0
  %3980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3979, i64 1)
  %3981 = call %nyx_string* @nyx_string_concat(%nyx_string* %3978, %nyx_string* %3980)
  %3982 = call i8* @nyx_string_to_cstr(%nyx_string* %3981)
  call void @nyx_print_string(i8* %3982)
  %3983 = load %nyx_string*, %nyx_string** %3958
  %3984 = load %nyx_string*, %nyx_string** %3351
  %3985 = call i1 @nyx_string_equals(%nyx_string* %3983, %nyx_string* %3984)
  %3986 = xor i1 %3985, true
  br i1 %3986, label %then706, label %else707
then706:
  %3987 = getelementptr [31 x i8], [31 x i8]* @.str412, i32 0, i32 0
  %3988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3987, i64 30)
  %3989 = load %nyx_string*, %nyx_string** %3351
  %3990 = call %nyx_string* @nyx_string_concat(%nyx_string* %3988, %nyx_string* %3989)
  %3991 = getelementptr [5 x i8], [5 x i8]* @.str413, i32 0, i32 0
  %3992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3991, i64 4)
  %3993 = call %nyx_string* @nyx_string_concat(%nyx_string* %3990, %nyx_string* %3992)
  %3994 = load %nyx_string*, %nyx_string** %3958
  %3995 = call %nyx_string* @nyx_string_concat(%nyx_string* %3993, %nyx_string* %3994)
  %3996 = call i8* @nyx_string_to_cstr(%nyx_string* %3995)
  call void @nyx_print_string(i8* %3996)
  br label %merge708
else707:
  %3997 = getelementptr [53 x i8], [53 x i8]* @.str414, i32 0, i32 0
  %3998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3997, i64 52)
  %3999 = call i8* @nyx_string_to_cstr(%nyx_string* %3998)
  call void @nyx_print_string(i8* %3999)
  br label %merge708
merge708:
  %4000 = getelementptr [71 x i8], [71 x i8]* @.str415, i32 0, i32 0
  %4001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %4000, i64 70)
  %4002 = call i8* @nyx_string_to_cstr(%nyx_string* %4001)
  call void @nyx_print_string(i8* %4002)
  %4003 = getelementptr [69 x i8], [69 x i8]* @.str416, i32 0, i32 0
  %4004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %4003, i64 68)
  %4005 = call i8* @nyx_string_to_cstr(%nyx_string* %4004)
  call void @nyx_print_string(i8* %4005)
  br label %merge705
else704:
  br label %merge705
merge705:
  %4006 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 5
  %4007 = load i1, i1* %4006
  br i1 %4007, label %then709, label %else710
then709:
  %4008 = load %nyx_string*, %nyx_string** %3590
  %4009 = load { i64, i8* }*, { i64, i8* }** %3880
  %4010 = load { i64, i8* }*, { i64, i8* }** %3882
  %4011 = load %nyx_string*, %nyx_string** %3587
  %4012 = getelementptr %TestConfig, %TestConfig* %3369, i32 0, i32 6
  %4013 = load i1, i1* %4012
  %4014 = call i64 @cov_report(%nyx_string* %4008, { i64, i8* }* %4009, { i64, i8* }* %4010, %nyx_string* %4011, i1 %4013)
  %4015 = getelementptr [8 x i8], [8 x i8]* @.str417, i32 0, i32 0
  %4016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %4015, i64 7)
  %4017 = load %nyx_string*, %nyx_string** %3590
  %4018 = call %nyx_string* @nyx_string_concat(%nyx_string* %4016, %nyx_string* %4017)
  %4019 = call i8* @nyx_string_to_cstr(%nyx_string* %4018)
  %4020 = call %nyx_string* @nyx_exec(i8* %4019)
  br label %merge711
else710:
  br label %merge711
merge711:
  %4021 = alloca i64
  store i64 0, i64* %4021
  %4022 = alloca i64
  store i64 0, i64* %4022
  %4023 = call i8* @llvm.stacksave()
  br label %while_cond712
while_cond712:
  %4024 = load i64, i64* %4022
  %4025 = load { i64, i8* }*, { i64, i8* }** %3878
  %4026 = call i64 @nyx_array_length({ i64, i8* }* %4025)
  %4027 = icmp slt i64 %4024, %4026
  br i1 %4027, label %while_body713, label %while_end714
while_body713:
  call void @llvm.stackrestore(i8* %4023)
  %4028 = load { i64, i8* }*, { i64, i8* }** %3878
  %4029 = load i64, i64* %4022
  %4030 = call i64 @nyx_array_get({ i64, i8* }* %4028, i64 %4029)
  %4031 = inttoptr i64 %4030 to %TestResult*
  %4032 = load %TestResult, %TestResult* %4031
  %4033 = alloca %TestResult
  store %TestResult %4032, %TestResult* %4033
  %4034 = getelementptr %TestResult, %TestResult* %4033, i32 0, i32 4
  %4035 = load i1, i1* %4034
  %4036 = xor i1 %4035, true
  br i1 %4036, label %then715, label %else716
then715:
  %4037 = load i64, i64* %4021
  %4038 = add i64 %4037, 1
  store i64 %4038, i64* %4021
  br label %merge717
else716:
  br label %merge717
merge717:
  %4039 = load i64, i64* %4022
  %4040 = add i64 %4039, 1
  store i64 %4040, i64* %4022
  br label %while_cond712
while_end714:
  %4041 = alloca i1
  store i1 true, i1* %4041
  %4042 = load i64, i64* %3884
  %4043 = icmp sgt i64 %4042, 0
  br i1 %4043, label %sc_or_end719, label %sc_or_rhs718
sc_or_rhs718:
  %4044 = load i64, i64* %4021
  %4045 = icmp sgt i64 %4044, 0
  store i1 %4045, i1* %4041
  br label %sc_or_end719
sc_or_end719:
  %4046 = load i1, i1* %4041
  br i1 %4046, label %then720, label %else721
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
  %4047 = sub i64 0, 9223372036854775808
  store i64 %4047, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

