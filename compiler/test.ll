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
@.str59 = private unnamed_addr constant [49 x i8] c"  local par; par=$(nproc 2>/dev/null || echo 4)\0a\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [196 x i8] c"  for f in \22$@\22; do n=$((n+1)); while [ \22$(jobs -rp | wc -l)\22 -ge \22$par\22 ]; do wait -n 2>/dev/null || true; done; clang $fl -Wno-deprecated-declarations -c \22$f\22 -o \22$tmp/$n.o\22 2>/dev/null & done\0a\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [8 x i8] c"  wait\0a\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [138 x i8] c"  if [ \22$(ls \22$tmp\22 | grep -c '\5c.o$')\22 = \22$n\22 ] && ar rcs \22$tmp/libnyxrt.a\22 \22$tmp\22/*.o 2>/dev/null && mv -f \22$tmp/libnyxrt.a\22 \22$a\22; then\0a\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [43 x i8] c"    rm -rf \22$tmp\22; RT_AUTO=\22$a\22; return 0\0a\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [6 x i8] c"  fi\0a\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [27 x i8] c"  rm -rf \22$tmp\22; return 1\0a\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [1 x i8] c"\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [31 x i8] c"mktemp -d /tmp/nyx_test_XXXXXX\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [9 x i8] c"/out.txt\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [5 x i8] c"/bin\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [1 x i8] c"\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [5 x i8] c"-O2 \00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [105 x i8] c"runtime/msgpack.c runtime/csv.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [1 x i8] c"\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [2 x i8] c"/\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [2 x i8] c"/\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [1 x i8] c"\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [1 x i8] c"\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [22 x i8] c"if nyx_rt_auto \22-O2\22 \00"
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
  %1090 = getelementptr [49 x i8], [49 x i8]* @.str59, i32 0, i32 0
  %1091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1090, i64 48)
  %1092 = call %nyx_string* @nyx_string_concat(%nyx_string* %1089, %nyx_string* %1091)
  store %nyx_string* %1092, %nyx_string** %1048
  %1093 = load %nyx_string*, %nyx_string** %1048
  %1094 = getelementptr [196 x i8], [196 x i8]* @.str60, i32 0, i32 0
  %1095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1094, i64 195)
  %1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %1093, %nyx_string* %1095)
  store %nyx_string* %1096, %nyx_string** %1048
  %1097 = load %nyx_string*, %nyx_string** %1048
  %1098 = getelementptr [8 x i8], [8 x i8]* @.str61, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1098, i64 7)
  %1100 = call %nyx_string* @nyx_string_concat(%nyx_string* %1097, %nyx_string* %1099)
  store %nyx_string* %1100, %nyx_string** %1048
  %1101 = load %nyx_string*, %nyx_string** %1048
  %1102 = getelementptr [138 x i8], [138 x i8]* @.str62, i32 0, i32 0
  %1103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1102, i64 137)
  %1104 = call %nyx_string* @nyx_string_concat(%nyx_string* %1101, %nyx_string* %1103)
  store %nyx_string* %1104, %nyx_string** %1048
  %1105 = load %nyx_string*, %nyx_string** %1048
  %1106 = getelementptr [43 x i8], [43 x i8]* @.str63, i32 0, i32 0
  %1107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1106, i64 42)
  %1108 = call %nyx_string* @nyx_string_concat(%nyx_string* %1105, %nyx_string* %1107)
  store %nyx_string* %1108, %nyx_string** %1048
  %1109 = load %nyx_string*, %nyx_string** %1048
  %1110 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %1111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1110, i64 5)
  %1112 = call %nyx_string* @nyx_string_concat(%nyx_string* %1109, %nyx_string* %1111)
  store %nyx_string* %1112, %nyx_string** %1048
  %1113 = load %nyx_string*, %nyx_string** %1048
  %1114 = getelementptr [27 x i8], [27 x i8]* @.str65, i32 0, i32 0
  %1115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1114, i64 26)
  %1116 = call %nyx_string* @nyx_string_concat(%nyx_string* %1113, %nyx_string* %1115)
  store %nyx_string* %1116, %nyx_string** %1048
  %1117 = load %nyx_string*, %nyx_string** %1048
  %1118 = getelementptr [3 x i8], [3 x i8]* @.str66, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1118, i64 2)
  %1120 = call %nyx_string* @nyx_string_concat(%nyx_string* %1117, %nyx_string* %1119)
  store %nyx_string* %1120, %nyx_string** %1048
  %1121 = load %nyx_string*, %nyx_string** %1048
  ret %nyx_string* %1121
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
  %1122 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1122, i64 8)
  %1124 = call i8* @nyx_string_to_cstr(%nyx_string* %1123)
  %1125 = call %nyx_string* @nyx_getenv(i8* %1124)
  %1126 = alloca %nyx_string*
  store %nyx_string* %1125, %nyx_string** %1126
  %1127 = load %nyx_string*, %nyx_string** %1126
  %1128 = getelementptr [1 x i8], [1 x i8]* @.str68, i32 0, i32 0
  %1129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1128, i64 0)
  %1130 = call i1 @nyx_string_equals(%nyx_string* %1127, %nyx_string* %1129)
  br i1 %1130, label %then282, label %else283
then282:
  %1131 = getelementptr %TestResult, %TestResult* null, i32 1
  %1132 = ptrtoint %TestResult* %1131 to i64
  %1133 = call i8* @GC_malloc(i64 %1132)
  %1134 = bitcast i8* %1133 to %TestResult*
  %1135 = load %nyx_string*, %nyx_string** %file.ptr
  %1136 = getelementptr %TestResult, %TestResult* %1134, i32 0, i32 0
  store %nyx_string* %1135, %nyx_string** %1136
  %1137 = getelementptr %TestResult, %TestResult* %1134, i32 0, i32 1
  store i64 0, i64* %1137
  %1138 = getelementptr %TestResult, %TestResult* %1134, i32 0, i32 2
  store i64 0, i64* %1138
  %1139 = getelementptr [24 x i8], [24 x i8]* @.str69, i32 0, i32 0
  %1140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1139, i64 23)
  %1141 = getelementptr %TestResult, %TestResult* %1134, i32 0, i32 3
  store %nyx_string* %1140, %nyx_string** %1141
  %1142 = getelementptr %TestResult, %TestResult* %1134, i32 0, i32 4
  store i1 0, i1* %1142
  %1143 = load %TestResult, %TestResult* %1134
  ret %TestResult %1143
else283:
  br label %merge284
merge284:
  %1144 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1144, i64 3)
  %1146 = call i8* @nyx_string_to_cstr(%nyx_string* %1145)
  %1147 = call %nyx_string* @nyx_getenv(i8* %1146)
  %1148 = alloca %nyx_string*
  store %nyx_string* %1147, %nyx_string** %1148
  %1149 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1150 = load i64, i64* %1149
  %1151 = call %nyx_string* @nyx_string_from_int(i64 %1150)
  %1152 = alloca %nyx_string*
  store %nyx_string* %1151, %nyx_string** %1152
  %1153 = getelementptr [31 x i8], [31 x i8]* @.str71, i32 0, i32 0
  %1154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1153, i64 30)
  %1155 = call i8* @nyx_string_to_cstr(%nyx_string* %1154)
  %1156 = call %nyx_string* @nyx_exec(i8* %1155)
  %1157 = call %nyx_string* @nyx_string_trim(%nyx_string* %1156)
  %1158 = alloca %nyx_string*
  store %nyx_string* %1157, %nyx_string** %1158
  %1159 = load %nyx_string*, %nyx_string** %1158
  %1160 = getelementptr [9 x i8], [9 x i8]* @.str72, i32 0, i32 0
  %1161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1160, i64 8)
  %1162 = call %nyx_string* @nyx_string_concat(%nyx_string* %1159, %nyx_string* %1161)
  %1163 = alloca %nyx_string*
  store %nyx_string* %1162, %nyx_string** %1163
  %1164 = load %nyx_string*, %nyx_string** %1158
  %1165 = getelementptr [5 x i8], [5 x i8]* @.str73, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1165, i64 4)
  %1167 = call %nyx_string* @nyx_string_concat(%nyx_string* %1164, %nyx_string* %1166)
  %1168 = alloca %nyx_string*
  store %nyx_string* %1167, %nyx_string** %1168
  %1169 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1169, i64 0)
  %1171 = alloca %nyx_string*
  store %nyx_string* %1170, %nyx_string** %1171
  %1172 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1173 = load i1, i1* %1172
  br i1 %1173, label %then285, label %else286
then285:
  %1174 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %1175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1174, i64 4)
  store %nyx_string* %1175, %nyx_string** %1171
  br label %merge287
else286:
  br label %merge287
merge287:
  %1176 = getelementptr [62 x i8], [62 x i8]* @.str76, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1176, i64 61)
  %1178 = getelementptr [54 x i8], [54 x i8]* @.str77, i32 0, i32 0
  %1179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1178, i64 53)
  %1180 = call %nyx_string* @nyx_string_concat(%nyx_string* %1177, %nyx_string* %1179)
  %1181 = getelementptr [48 x i8], [48 x i8]* @.str78, i32 0, i32 0
  %1182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1181, i64 47)
  %1183 = call %nyx_string* @nyx_string_concat(%nyx_string* %1180, %nyx_string* %1182)
  %1184 = getelementptr [47 x i8], [47 x i8]* @.str79, i32 0, i32 0
  %1185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1184, i64 46)
  %1186 = call %nyx_string* @nyx_string_concat(%nyx_string* %1183, %nyx_string* %1185)
  %1187 = getelementptr [67 x i8], [67 x i8]* @.str80, i32 0, i32 0
  %1188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1187, i64 66)
  %1189 = call %nyx_string* @nyx_string_concat(%nyx_string* %1186, %nyx_string* %1188)
  %1190 = getelementptr [51 x i8], [51 x i8]* @.str81, i32 0, i32 0
  %1191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1190, i64 50)
  %1192 = call %nyx_string* @nyx_string_concat(%nyx_string* %1189, %nyx_string* %1191)
  %1193 = getelementptr [105 x i8], [105 x i8]* @.str82, i32 0, i32 0
  %1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1193, i64 104)
  %1195 = call %nyx_string* @nyx_string_concat(%nyx_string* %1192, %nyx_string* %1194)
  %1196 = getelementptr [23 x i8], [23 x i8]* @.str83, i32 0, i32 0
  %1197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1196, i64 22)
  %1198 = call %nyx_string* @nyx_string_concat(%nyx_string* %1195, %nyx_string* %1197)
  %1199 = alloca %nyx_string*
  store %nyx_string* %1198, %nyx_string** %1199
  %1200 = getelementptr [15 x i8], [15 x i8]* @.str84, i32 0, i32 0
  %1201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1200, i64 14)
  %1202 = call i8* @nyx_string_to_cstr(%nyx_string* %1201)
  %1203 = call %nyx_string* @nyx_getenv(i8* %1202)
  %1204 = alloca %nyx_string*
  store %nyx_string* %1203, %nyx_string** %1204
  %1205 = alloca i1
  store i1 false, i1* %1205
  %1206 = load %nyx_string*, %nyx_string** %1204
  %1207 = getelementptr [1 x i8], [1 x i8]* @.str85, i32 0, i32 0
  %1208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1207, i64 0)
  %1209 = call i1 @nyx_string_equals(%nyx_string* %1206, %nyx_string* %1208)
  %1210 = xor i1 %1209, true
  br i1 %1210, label %sc_and_rhs288, label %sc_and_end289
sc_and_rhs288:
  %1211 = load %nyx_string*, %nyx_string** %1204
  %1212 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %1213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1212, i64 1)
  %1214 = call i1 @nyx_string_starts_with(%nyx_string* %1211, %nyx_string* %1213)
  %1215 = xor i1 %1214, true
  store i1 %1215, i1* %1205
  br label %sc_and_end289
sc_and_end289:
  %1216 = load i1, i1* %1205
  br i1 %1216, label %then290, label %else291
then290:
  %1217 = load %nyx_string*, %nyx_string** %1148
  %1218 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %1219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1218, i64 1)
  %1220 = call %nyx_string* @nyx_string_concat(%nyx_string* %1217, %nyx_string* %1219)
  %1221 = load %nyx_string*, %nyx_string** %1204
  %1222 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1221)
  store %nyx_string* %1222, %nyx_string** %1204
  br label %merge292
else291:
  br label %merge292
merge292:
  %1223 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %1224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1223, i64 7)
  %1225 = load %nyx_string*, %nyx_string** %1199
  %1226 = call %nyx_string* @nyx_string_concat(%nyx_string* %1224, %nyx_string* %1225)
  %1227 = getelementptr [3 x i8], [3 x i8]* @.str89, i32 0, i32 0
  %1228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1227, i64 2)
  %1229 = call %nyx_string* @nyx_string_concat(%nyx_string* %1226, %nyx_string* %1228)
  %1230 = alloca %nyx_string*
  store %nyx_string* %1229, %nyx_string** %1230
  %1231 = alloca i1
  store i1 false, i1* %1231
  %1232 = load %nyx_string*, %nyx_string** %1204
  %1233 = getelementptr [1 x i8], [1 x i8]* @.str90, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1233, i64 0)
  %1235 = call i1 @nyx_string_equals(%nyx_string* %1232, %nyx_string* %1234)
  %1236 = xor i1 %1235, true
  br i1 %1236, label %sc_and_rhs293, label %sc_and_end294
sc_and_rhs293:
  %1237 = load %nyx_string*, %nyx_string** %1204
  %1238 = call i8* @nyx_string_to_cstr(%nyx_string* %1237)
  %1239 = call i1 @nyx_file_exists(i8* %1238)
  store i1 %1239, i1* %1231
  br label %sc_and_end294
sc_and_end294:
  %1240 = load i1, i1* %1231
  br i1 %1240, label %then295, label %else296
then295:
  %1241 = getelementptr [9 x i8], [9 x i8]* @.str91, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1241, i64 8)
  %1243 = load %nyx_string*, %nyx_string** %1204
  %1244 = call %nyx_string* @nyx_string_concat(%nyx_string* %1242, %nyx_string* %1243)
  %1245 = getelementptr [4 x i8], [4 x i8]* @.str92, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1245, i64 3)
  %1247 = call %nyx_string* @nyx_string_concat(%nyx_string* %1244, %nyx_string* %1246)
  store %nyx_string* %1247, %nyx_string** %1230
  br label %merge297
else296:
  %1248 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1249 = getelementptr [1 x i8], [1 x i8]* @.str93, i32 0, i32 0
  %1250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1249, i64 0)
  %1251 = call i1 @nyx_string_equals(%nyx_string* %1248, %nyx_string* %1250)
  br i1 %1251, label %then298, label %else299
then298:
  %1252 = call %nyx_string* @rt_cache_sh()
  %1253 = load %nyx_string*, %nyx_string** %1230
  %1254 = call %nyx_string* @nyx_string_concat(%nyx_string* %1252, %nyx_string* %1253)
  %1255 = getelementptr [22 x i8], [22 x i8]* @.str94, i32 0, i32 0
  %1256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1255, i64 21)
  %1257 = call %nyx_string* @nyx_string_concat(%nyx_string* %1254, %nyx_string* %1256)
  %1258 = load %nyx_string*, %nyx_string** %1199
  %1259 = call %nyx_string* @nyx_string_concat(%nyx_string* %1257, %nyx_string* %1258)
  %1260 = getelementptr [31 x i8], [31 x i8]* @.str95, i32 0, i32 0
  %1261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1260, i64 30)
  %1262 = call %nyx_string* @nyx_string_concat(%nyx_string* %1259, %nyx_string* %1261)
  store %nyx_string* %1262, %nyx_string** %1230
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
  store %nyx_string* %1267, %nyx_string** %1199
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
  %1482 = load %nyx_string*, %nyx_string** %1148
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
  %1499 = load %nyx_string*, %nyx_string** %1163
  %1500 = call %nyx_string* @nyx_string_concat(%nyx_string* %1498, %nyx_string* %1499)
  %1501 = getelementptr [36 x i8], [36 x i8]* @.str136, i32 0, i32 0
  %1502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1501, i64 35)
  %1503 = call %nyx_string* @nyx_string_concat(%nyx_string* %1500, %nyx_string* %1502)
  %1504 = load %nyx_string*, %nyx_string** %1163
  %1505 = call %nyx_string* @nyx_string_concat(%nyx_string* %1503, %nyx_string* %1504)
  %1506 = getelementptr [13 x i8], [13 x i8]* @.str137, i32 0, i32 0
  %1507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1506, i64 12)
  %1508 = call %nyx_string* @nyx_string_concat(%nyx_string* %1505, %nyx_string* %1507)
  %1509 = alloca %nyx_string*
  store %nyx_string* %1508, %nyx_string** %1509
  %1510 = load %nyx_string*, %nyx_string** %1230
  %1511 = load %nyx_string*, %nyx_string** %1509
  %1512 = call %nyx_string* @nyx_string_concat(%nyx_string* %1510, %nyx_string* %1511)
  %1513 = alloca %nyx_string*
  store %nyx_string* %1512, %nyx_string** %1513
  %1514 = getelementptr [15 x i8], [15 x i8]* @.str138, i32 0, i32 0
  %1515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1514, i64 14)
  %1516 = load %nyx_string*, %nyx_string** %1158
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
  %1540 = load %nyx_string*, %nyx_string** %1148
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
  %1553 = load %nyx_string*, %nyx_string** %1126
  %1554 = call %nyx_string* @nyx_string_concat(%nyx_string* %1552, %nyx_string* %1553)
  %1555 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %1556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1555, i64 2)
  %1557 = call %nyx_string* @nyx_string_concat(%nyx_string* %1554, %nyx_string* %1556)
  %1558 = getelementptr [51 x i8], [51 x i8]* @.str149, i32 0, i32 0
  %1559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1558, i64 50)
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1557, %nyx_string* %1559)
  %1561 = load %nyx_string*, %nyx_string** %1126
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1560, %nyx_string* %1561)
  %1563 = getelementptr [35 x i8], [35 x i8]* @.str150, i32 0, i32 0
  %1564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1563, i64 34)
  %1565 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1564)
  %1566 = load %nyx_string*, %nyx_string** %1513
  %1567 = call %nyx_string* @nyx_string_concat(%nyx_string* %1565, %nyx_string* %1566)
  %1568 = getelementptr [7 x i8], [7 x i8]* @.str151, i32 0, i32 0
  %1569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1568, i64 6)
  %1570 = call %nyx_string* @nyx_string_concat(%nyx_string* %1567, %nyx_string* %1569)
  %1571 = load %nyx_string*, %nyx_string** %1171
  %1572 = call %nyx_string* @nyx_string_concat(%nyx_string* %1570, %nyx_string* %1571)
  %1573 = load %nyx_string*, %nyx_string** %1273
  %1574 = call %nyx_string* @nyx_string_concat(%nyx_string* %1572, %nyx_string* %1573)
  %1575 = getelementptr [40 x i8], [40 x i8]* @.str152, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1575, i64 39)
  %1577 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1576)
  %1578 = load %nyx_string*, %nyx_string** %1323
  %1579 = call %nyx_string* @nyx_string_concat(%nyx_string* %1577, %nyx_string* %1578)
  %1580 = load %nyx_string*, %nyx_string** %1199
  %1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %1579, %nyx_string* %1580)
  %1582 = getelementptr [44 x i8], [44 x i8]* @.str153, i32 0, i32 0
  %1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1582, i64 43)
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1581, %nyx_string* %1583)
  %1585 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1585, i64 3)
  %1587 = call %nyx_string* @nyx_string_concat(%nyx_string* %1584, %nyx_string* %1586)
  %1588 = load %nyx_string*, %nyx_string** %1168
  %1589 = call %nyx_string* @nyx_string_concat(%nyx_string* %1587, %nyx_string* %1588)
  %1590 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1590, i64 5)
  %1592 = call %nyx_string* @nyx_string_concat(%nyx_string* %1589, %nyx_string* %1591)
  %1593 = load %nyx_string*, %nyx_string** %1163
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
  %1606 = load %nyx_string*, %nyx_string** %1152
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1606)
  %1608 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %1609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1608, i64 1)
  %1610 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1609)
  %1611 = load %nyx_string*, %nyx_string** %1168
  %1612 = call %nyx_string* @nyx_string_concat(%nyx_string* %1610, %nyx_string* %1611)
  %1613 = getelementptr [4 x i8], [4 x i8]* @.str160, i32 0, i32 0
  %1614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1613, i64 3)
  %1615 = call %nyx_string* @nyx_string_concat(%nyx_string* %1612, %nyx_string* %1614)
  %1616 = load %nyx_string*, %nyx_string** %1163
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
  %1627 = load %nyx_string*, %nyx_string** %1168
  %1628 = call %nyx_string* @nyx_string_concat(%nyx_string* %1626, %nyx_string* %1627)
  %1629 = getelementptr [2 x i8], [2 x i8]* @.str164, i32 0, i32 0
  %1630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1629, i64 1)
  %1631 = call %nyx_string* @nyx_string_concat(%nyx_string* %1628, %nyx_string* %1630)
  %1632 = getelementptr [17 x i8], [17 x i8]* @.str165, i32 0, i32 0
  %1633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1632, i64 16)
  %1634 = call %nyx_string* @nyx_string_concat(%nyx_string* %1631, %nyx_string* %1633)
  %1635 = alloca %nyx_string*
  store %nyx_string* %1634, %nyx_string** %1635
  %1636 = load %nyx_string*, %nyx_string** %1158
  %1637 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1637, i64 7)
  %1639 = call %nyx_string* @nyx_string_concat(%nyx_string* %1636, %nyx_string* %1638)
  %1640 = alloca %nyx_string*
  store %nyx_string* %1639, %nyx_string** %1640
  %1641 = load %nyx_string*, %nyx_string** %1640
  %1642 = load %nyx_string*, %nyx_string** %1635
  %1643 = ptrtoint %nyx_string* %1642 to i64
  %1644 = call i8* @nyx_string_to_cstr(%nyx_string* %1641)
  %1645 = inttoptr i64 %1643 to %nyx_string*
  %1646 = call i1 @nyx_write_file_safe(i8* %1644, %nyx_string* %1645)
  %1647 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1647, i64 5)
  %1649 = load %nyx_string*, %nyx_string** %1640
  %1650 = call %nyx_string* @nyx_string_concat(%nyx_string* %1648, %nyx_string* %1649)
  %1651 = call i8* @nyx_string_to_cstr(%nyx_string* %1650)
  %1652 = call i64 @nyx_exec_code(i8* %1651)
  %1653 = alloca i64
  store i64 %1652, i64* %1653
  %1654 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %1655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1654, i64 0)
  %1656 = alloca %nyx_string*
  store %nyx_string* %1655, %nyx_string** %1656
  %1657 = load %nyx_string*, %nyx_string** %1163
  %1658 = call i8* @nyx_string_to_cstr(%nyx_string* %1657)
  %1659 = call i1 @nyx_file_exists(i8* %1658)
  br i1 %1659, label %then335, label %else336
then335:
  %1660 = load %nyx_string*, %nyx_string** %1163
  %1661 = call i8* @nyx_string_to_cstr(%nyx_string* %1660)
  %1662 = call %nyx_string* @nyx_read_file(i8* %1661)
  store %nyx_string* %1662, %nyx_string** %1656
  br label %merge337
else336:
  br label %merge337
merge337:
  %1663 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1663, i64 7)
  %1665 = load %nyx_string*, %nyx_string** %1158
  %1666 = call %nyx_string* @nyx_string_concat(%nyx_string* %1664, %nyx_string* %1665)
  %1667 = call i8* @nyx_string_to_cstr(%nyx_string* %1666)
  %1668 = call %nyx_string* @nyx_exec(i8* %1667)
  %1669 = alloca i64
  store i64 0, i64* %1669
  %1670 = alloca i64
  store i64 0, i64* %1670
  %1671 = load %nyx_string*, %nyx_string** %1656
  %1672 = getelementptr [2 x i8], [2 x i8]* @.str170, i32 0, i32 0
  %1673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1672, i64 1)
  %1674 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1671, %nyx_string* %1673)
  %1675 = alloca { i64, i8* }*
  store { i64, i8* }* %1674, { i64, i8* }** %1675
  %1676 = alloca i64
  store i64 0, i64* %1676
  %1677 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %1678 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1677, i64 5)
  %1679 = alloca %nyx_string*
  store %nyx_string* %1678, %nyx_string** %1679
  %1680 = getelementptr [6 x i8], [6 x i8]* @.str172, i32 0, i32 0
  %1681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1680, i64 5)
  %1682 = alloca %nyx_string*
  store %nyx_string* %1681, %nyx_string** %1682
  %1683 = call i8* @llvm.stacksave()
  br label %while_cond338
while_cond338:
  %1684 = load i64, i64* %1676
  %1685 = load { i64, i8* }*, { i64, i8* }** %1675
  %1686 = call i64 @nyx_array_length({ i64, i8* }* %1685)
  %1687 = icmp slt i64 %1684, %1686
  br i1 %1687, label %while_body339, label %while_end340
while_body339:
  call void @llvm.stackrestore(i8* %1683)
  %1688 = load { i64, i8* }*, { i64, i8* }** %1675
  %1689 = load i64, i64* %1676
  %1690 = call i64 @nyx_array_get_checked({ i64, i8* }* %1688, i64 %1689, i64 2)
  %1691 = inttoptr i64 %1690 to %nyx_string*
  %1692 = alloca %nyx_string*
  store %nyx_string* %1691, %nyx_string** %1692
  %1693 = load %nyx_string*, %nyx_string** %1692
  %1694 = load %nyx_string*, %nyx_string** %1679
  %1695 = call i1 @nyx_string_contains(%nyx_string* %1693, %nyx_string* %1694)
  br i1 %1695, label %then341, label %else342
then341:
  %1696 = load i64, i64* %1669
  %1697 = add i64 %1696, 1
  store i64 %1697, i64* %1669
  br label %merge343
else342:
  %1698 = load %nyx_string*, %nyx_string** %1692
  %1699 = load %nyx_string*, %nyx_string** %1682
  %1700 = call i1 @nyx_string_contains(%nyx_string* %1698, %nyx_string* %1699)
  br i1 %1700, label %then344, label %else345
then344:
  %1701 = load i64, i64* %1670
  %1702 = add i64 %1701, 1
  store i64 %1702, i64* %1670
  br label %merge346
else345:
  br label %merge346
merge346:
  br label %merge343
merge343:
  %1703 = load i64, i64* %1676
  %1704 = add i64 %1703, 1
  store i64 %1704, i64* %1676
  br label %while_cond338
while_end340:
  %1705 = getelementptr %TestResult, %TestResult* null, i32 1
  %1706 = ptrtoint %TestResult* %1705 to i64
  %1707 = call i8* @GC_malloc(i64 %1706)
  %1708 = bitcast i8* %1707 to %TestResult*
  %1709 = load %nyx_string*, %nyx_string** %file.ptr
  %1710 = getelementptr %TestResult, %TestResult* %1708, i32 0, i32 0
  store %nyx_string* %1709, %nyx_string** %1710
  %1711 = load i64, i64* %1669
  %1712 = getelementptr %TestResult, %TestResult* %1708, i32 0, i32 1
  store i64 %1711, i64* %1712
  %1713 = load i64, i64* %1670
  %1714 = getelementptr %TestResult, %TestResult* %1708, i32 0, i32 2
  store i64 %1713, i64* %1714
  %1715 = load %nyx_string*, %nyx_string** %1656
  %1716 = getelementptr %TestResult, %TestResult* %1708, i32 0, i32 3
  store %nyx_string* %1715, %nyx_string** %1716
  %1717 = alloca i1
  store i1 false, i1* %1717
  %1718 = load i64, i64* %1653
  %1719 = icmp eq i64 %1718, 0
  br i1 %1719, label %sc_and_rhs347, label %sc_and_end348
sc_and_rhs347:
  %1720 = load i64, i64* %1670
  %1721 = icmp eq i64 %1720, 0
  store i1 %1721, i1* %1717
  br label %sc_and_end348
sc_and_end348:
  %1722 = load i1, i1* %1717
  %1723 = getelementptr %TestResult, %TestResult* %1708, i32 0, i32 4
  store i1 %1722, i1* %1723
  %1724 = load %TestResult, %TestResult* %1708
  ret %TestResult %1724
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1725 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1726 = load i1, i1* %1725
  br i1 %1726, label %then349, label %else350
then349:
  %1727 = getelementptr [9 x i8], [9 x i8]* @.str173, i32 0, i32 0
  %1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1727, i64 8)
  %1729 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1730 = load %nyx_string*, %nyx_string** %1729
  %1731 = call %nyx_string* @nyx_string_concat(%nyx_string* %1728, %nyx_string* %1730)
  %1732 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1732, i64 2)
  %1734 = call %nyx_string* @nyx_string_concat(%nyx_string* %1731, %nyx_string* %1733)
  %1735 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1736 = load i64, i64* %1735
  %1737 = call %nyx_string* @nyx_string_from_int(i64 %1736)
  %1738 = call %nyx_string* @nyx_string_concat(%nyx_string* %1734, %nyx_string* %1737)
  %1739 = getelementptr [8 x i8], [8 x i8]* @.str175, i32 0, i32 0
  %1740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1739, i64 7)
  %1741 = call %nyx_string* @nyx_string_concat(%nyx_string* %1738, %nyx_string* %1740)
  %1742 = call i8* @nyx_string_to_cstr(%nyx_string* %1741)
  call void @nyx_print_string(i8* %1742)
  %1743 = load i1, i1* %verbose.ptr
  br i1 %1743, label %then352, label %else353
then352:
  %1744 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1745 = load %nyx_string*, %nyx_string** %1744
  %1746 = call i8* @nyx_string_to_cstr(%nyx_string* %1745)
  call void @nyx_print_string(i8* %1746)
  br label %merge354
else353:
  br label %merge354
merge354:
  br label %merge351
else350:
  %1747 = getelementptr [9 x i8], [9 x i8]* @.str176, i32 0, i32 0
  %1748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1747, i64 8)
  %1749 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1750 = load %nyx_string*, %nyx_string** %1749
  %1751 = call %nyx_string* @nyx_string_concat(%nyx_string* %1748, %nyx_string* %1750)
  %1752 = getelementptr [3 x i8], [3 x i8]* @.str177, i32 0, i32 0
  %1753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1752, i64 2)
  %1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %1751, %nyx_string* %1753)
  %1755 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1756 = load i64, i64* %1755
  %1757 = call %nyx_string* @nyx_string_from_int(i64 %1756)
  %1758 = call %nyx_string* @nyx_string_concat(%nyx_string* %1754, %nyx_string* %1757)
  %1759 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %1760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1759, i64 9)
  %1761 = call %nyx_string* @nyx_string_concat(%nyx_string* %1758, %nyx_string* %1760)
  %1762 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1763 = load i64, i64* %1762
  %1764 = call %nyx_string* @nyx_string_from_int(i64 %1763)
  %1765 = call %nyx_string* @nyx_string_concat(%nyx_string* %1761, %nyx_string* %1764)
  %1766 = getelementptr [9 x i8], [9 x i8]* @.str179, i32 0, i32 0
  %1767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1766, i64 8)
  %1768 = call %nyx_string* @nyx_string_concat(%nyx_string* %1765, %nyx_string* %1767)
  %1769 = call i8* @nyx_string_to_cstr(%nyx_string* %1768)
  call void @nyx_print_string(i8* %1769)
  %1770 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1771 = load %nyx_string*, %nyx_string** %1770
  %1772 = call i8* @nyx_string_to_cstr(%nyx_string* %1771)
  call void @nyx_print_string(i8* %1772)
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
  %1773 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %1774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1773, i64 0)
  %1775 = call i8* @nyx_string_to_cstr(%nyx_string* %1774)
  call void @nyx_print_string(i8* %1775)
  %1776 = getelementptr [36 x i8], [36 x i8]* @.str181, i32 0, i32 0
  %1777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1776, i64 35)
  %1778 = call i8* @nyx_string_to_cstr(%nyx_string* %1777)
  call void @nyx_print_string(i8* %1778)
  %1779 = alloca i64
  store i64 0, i64* %1779
  %1780 = alloca i64
  store i64 0, i64* %1780
  %1781 = alloca i64
  store i64 0, i64* %1781
  %1782 = call i8* @llvm.stacksave()
  br label %while_cond355
while_cond355:
  %1783 = load i64, i64* %1781
  %1784 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1785 = call i64 @nyx_array_length({ i64, i8* }* %1784)
  %1786 = icmp slt i64 %1783, %1785
  br i1 %1786, label %while_body356, label %while_end357
while_body356:
  call void @llvm.stackrestore(i8* %1782)
  %1787 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1788 = load i64, i64* %1781
  %1789 = call i64 @nyx_array_get({ i64, i8* }* %1787, i64 %1788)
  %1790 = inttoptr i64 %1789 to %TestResult*
  %1791 = load %TestResult, %TestResult* %1790
  %1792 = alloca %TestResult
  store %TestResult %1791, %TestResult* %1792
  %1793 = getelementptr %TestResult, %TestResult* %1792, i32 0, i32 4
  %1794 = load i1, i1* %1793
  br i1 %1794, label %then358, label %else359
then358:
  %1795 = load i64, i64* %1779
  %1796 = add i64 %1795, 1
  store i64 %1796, i64* %1779
  br label %merge360
else359:
  %1797 = load i64, i64* %1780
  %1798 = add i64 %1797, 1
  store i64 %1798, i64* %1780
  br label %merge360
merge360:
  %1799 = load i64, i64* %1781
  %1800 = add i64 %1799, 1
  store i64 %1800, i64* %1781
  br label %while_cond355
while_end357:
  %1801 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1801, i64 10)
  %1803 = load i64, i64* %1779
  %1804 = call %nyx_string* @nyx_string_from_int(i64 %1803)
  %1805 = call %nyx_string* @nyx_string_concat(%nyx_string* %1802, %nyx_string* %1804)
  %1806 = getelementptr [10 x i8], [10 x i8]* @.str183, i32 0, i32 0
  %1807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1806, i64 9)
  %1808 = call %nyx_string* @nyx_string_concat(%nyx_string* %1805, %nyx_string* %1807)
  %1809 = load i64, i64* %1780
  %1810 = call %nyx_string* @nyx_string_from_int(i64 %1809)
  %1811 = call %nyx_string* @nyx_string_concat(%nyx_string* %1808, %nyx_string* %1810)
  %1812 = getelementptr [10 x i8], [10 x i8]* @.str184, i32 0, i32 0
  %1813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1812, i64 9)
  %1814 = call %nyx_string* @nyx_string_concat(%nyx_string* %1811, %nyx_string* %1813)
  %1815 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1816 = call i64 @nyx_array_length({ i64, i8* }* %1815)
  %1817 = call %nyx_string* @nyx_string_from_int(i64 %1816)
  %1818 = call %nyx_string* @nyx_string_concat(%nyx_string* %1814, %nyx_string* %1817)
  %1819 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1819, i64 7)
  %1821 = call %nyx_string* @nyx_string_concat(%nyx_string* %1818, %nyx_string* %1820)
  %1822 = call i8* @nyx_string_to_cstr(%nyx_string* %1821)
  call void @nyx_print_string(i8* %1822)
  %1823 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %1824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1823, i64 10)
  %1825 = load i64, i64* %total_passed.ptr
  %1826 = call %nyx_string* @nyx_string_from_int(i64 %1825)
  %1827 = call %nyx_string* @nyx_string_concat(%nyx_string* %1824, %nyx_string* %1826)
  %1828 = getelementptr [10 x i8], [10 x i8]* @.str187, i32 0, i32 0
  %1829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1828, i64 9)
  %1830 = call %nyx_string* @nyx_string_concat(%nyx_string* %1827, %nyx_string* %1829)
  %1831 = load i64, i64* %total_failed.ptr
  %1832 = call %nyx_string* @nyx_string_from_int(i64 %1831)
  %1833 = call %nyx_string* @nyx_string_concat(%nyx_string* %1830, %nyx_string* %1832)
  %1834 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1834, i64 9)
  %1836 = call %nyx_string* @nyx_string_concat(%nyx_string* %1833, %nyx_string* %1835)
  %1837 = load i64, i64* %total_passed.ptr
  %1838 = load i64, i64* %total_failed.ptr
  %1839 = add i64 %1837, %1838
  %1840 = call %nyx_string* @nyx_string_from_int(i64 %1839)
  %1841 = call %nyx_string* @nyx_string_concat(%nyx_string* %1836, %nyx_string* %1840)
  %1842 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1842, i64 7)
  %1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %1841, %nyx_string* %1843)
  %1845 = call i8* @nyx_string_to_cstr(%nyx_string* %1844)
  call void @nyx_print_string(i8* %1845)
  %1846 = alloca i1
  store i1 false, i1* %1846
  %1847 = load i64, i64* %total_failed.ptr
  %1848 = icmp eq i64 %1847, 0
  br i1 %1848, label %sc_and_rhs361, label %sc_and_end362
sc_and_rhs361:
  %1849 = load i64, i64* %1780
  %1850 = icmp eq i64 %1849, 0
  store i1 %1850, i1* %1846
  br label %sc_and_end362
sc_and_end362:
  %1851 = load i1, i1* %1846
  br i1 %1851, label %then363, label %else364
then363:
  %1852 = getelementptr [27 x i8], [27 x i8]* @.str190, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1852, i64 26)
  %1854 = call i8* @nyx_string_to_cstr(%nyx_string* %1853)
  call void @nyx_print_string(i8* %1854)
  br label %merge365
else364:
  %1855 = getelementptr [28 x i8], [28 x i8]* @.str191, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1855, i64 27)
  %1857 = call i8* @nyx_string_to_cstr(%nyx_string* %1856)
  call void @nyx_print_string(i8* %1857)
  br label %merge365
merge365:
  %1858 = getelementptr [36 x i8], [36 x i8]* @.str192, i32 0, i32 0
  %1859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1858, i64 35)
  %1860 = call i8* @nyx_string_to_cstr(%nyx_string* %1859)
  call void @nyx_print_string(i8* %1860)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1861 = getelementptr [28 x i8], [28 x i8]* @.str193, i32 0, i32 0
  %1862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1861, i64 27)
  %1863 = call i8* @nyx_string_to_cstr(%nyx_string* %1862)
  %1864 = call %nyx_string* @nyx_exec(i8* %1863)
  %1865 = alloca %nyx_string*
  store %nyx_string* %1864, %nyx_string** %1865
  %1866 = load %nyx_string*, %nyx_string** %1865
  %1867 = getelementptr [9 x i8], [9 x i8]* @.str194, i32 0, i32 0
  %1868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1867, i64 8)
  %1869 = call i64 @nyx_string_index_of(%nyx_string* %1866, %nyx_string* %1868)
  %1870 = alloca i64
  store i64 %1869, i64* %1870
  %1871 = load i64, i64* %1870
  %1872 = icmp slt i64 %1871, 0
  br i1 %1872, label %then366, label %else367
then366:
  %1873 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %1874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1873, i64 0)
  ret %nyx_string* %1874
else367:
  br label %merge368
merge368:
  %1875 = load i64, i64* %1870
  %1876 = add i64 %1875, 8
  %1877 = alloca i64
  store i64 %1876, i64* %1877
  %1878 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %1879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1878, i64 0)
  %1880 = alloca %nyx_string*
  store %nyx_string* %1879, %nyx_string** %1880
  %1881 = call i8* @llvm.stacksave()
  br label %while_cond369
while_cond369:
  %1882 = load i64, i64* %1877
  %1883 = load %nyx_string*, %nyx_string** %1865
  %1884 = call i64 @nyx_string_byte_length(%nyx_string* %1883)
  %1885 = icmp slt i64 %1882, %1884
  br i1 %1885, label %while_body370, label %while_end371
while_body370:
  call void @llvm.stackrestore(i8* %1881)
  %1886 = load %nyx_string*, %nyx_string** %1865
  %1887 = load i64, i64* %1877
  %1888 = call i8 @nyx_string_char_at(%nyx_string* %1886, i64 %1887)
  %1889 = zext i8 %1888 to i64
  %1890 = alloca i64
  store i64 %1889, i64* %1890
  %1891 = alloca i1
  store i1 false, i1* %1891
  %1892 = load i64, i64* %1890
  %1893 = icmp sge i64 %1892, 48
  br i1 %1893, label %sc_and_rhs372, label %sc_and_end373
sc_and_rhs372:
  %1894 = load i64, i64* %1890
  %1895 = icmp sle i64 %1894, 57
  store i1 %1895, i1* %1891
  br label %sc_and_end373
sc_and_end373:
  %1896 = load i1, i1* %1891
  br i1 %1896, label %then374, label %else375
then374:
  %1897 = load %nyx_string*, %nyx_string** %1880
  %1898 = load %nyx_string*, %nyx_string** %1865
  %1899 = load i64, i64* %1877
  %1900 = load i64, i64* %1877
  %1901 = add i64 %1900, 1
  %1902 = call %nyx_string* @nyx_string_substring(%nyx_string* %1898, i64 %1899, i64 %1901)
  %1903 = call %nyx_string* @nyx_string_concat(%nyx_string* %1897, %nyx_string* %1902)
  store %nyx_string* %1903, %nyx_string** %1880
  %1904 = load i64, i64* %1877
  %1905 = add i64 %1904, 1
  store i64 %1905, i64* %1877
  br label %merge376
else375:
  %1906 = load %nyx_string*, %nyx_string** %1865
  %1907 = call i64 @nyx_string_byte_length(%nyx_string* %1906)
  store i64 %1907, i64* %1877
  br label %merge376
merge376:
  br label %while_cond369
while_end371:
  %1908 = load %nyx_string*, %nyx_string** %1880
  ret %nyx_string* %1908
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1909 = getelementptr [10 x i8], [10 x i8]* @.str197, i32 0, i32 0
  %1910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1909, i64 9)
  %1911 = load %nyx_string*, %nyx_string** %path.ptr
  %1912 = call %nyx_string* @nyx_string_concat(%nyx_string* %1910, %nyx_string* %1911)
  %1913 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %1914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1913, i64 1)
  %1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %1912, %nyx_string* %1914)
  %1916 = call i8* @nyx_string_to_cstr(%nyx_string* %1915)
  %1917 = call i64 @nyx_exec_code(i8* %1916)
  %1918 = icmp eq i64 %1917, 0
  ret i1 %1918
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1919 = call %nyx_string* @cov_clang_major()
  %1920 = alloca %nyx_string*
  store %nyx_string* %1919, %nyx_string** %1920
  %1921 = load %nyx_string*, %nyx_string** %1920
  %1922 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %1923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1922, i64 0)
  %1924 = call i1 @nyx_string_equals(%nyx_string* %1921, %nyx_string* %1923)
  %1925 = xor i1 %1924, true
  br i1 %1925, label %then377, label %else378
then377:
  %1926 = getelementptr [26 x i8], [26 x i8]* @.str200, i32 0, i32 0
  %1927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1926, i64 25)
  %1928 = load %nyx_string*, %nyx_string** %1920
  %1929 = call %nyx_string* @nyx_string_concat(%nyx_string* %1927, %nyx_string* %1928)
  %1930 = getelementptr [13 x i8], [13 x i8]* @.str201, i32 0, i32 0
  %1931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1930, i64 12)
  %1932 = call %nyx_string* @nyx_string_concat(%nyx_string* %1929, %nyx_string* %1931)
  %1933 = call i8* @nyx_string_to_cstr(%nyx_string* %1932)
  %1934 = call %nyx_string* @nyx_exec(i8* %1933)
  %1935 = call %nyx_string* @nyx_string_trim(%nyx_string* %1934)
  %1936 = alloca %nyx_string*
  store %nyx_string* %1935, %nyx_string** %1936
  %1937 = load %nyx_string*, %nyx_string** %1936
  %1938 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %1939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1938, i64 0)
  %1940 = call i1 @nyx_string_equals(%nyx_string* %1937, %nyx_string* %1939)
  %1941 = xor i1 %1940, true
  br i1 %1941, label %then380, label %else381
then380:
  %1942 = load %nyx_string*, %nyx_string** %1936
  ret %nyx_string* %1942
else381:
  br label %merge382
merge382:
  br label %merge379
else378:
  br label %merge379
merge379:
  %1943 = getelementptr [37 x i8], [37 x i8]* @.str203, i32 0, i32 0
  %1944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1943, i64 36)
  %1945 = call i8* @nyx_string_to_cstr(%nyx_string* %1944)
  %1946 = call %nyx_string* @nyx_exec(i8* %1945)
  %1947 = call %nyx_string* @nyx_string_trim(%nyx_string* %1946)
  ret %nyx_string* %1947
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1948 = call { i64, i8* }* @nyx_array_new_ptr()
  %1949 = alloca { i64, i8* }*
  store { i64, i8* }* %1948, { i64, i8* }** %1949
  %1950 = alloca i64
  store i64 0, i64* %1950
  %1951 = alloca i64
  store i64 0, i64* %1951
  %1952 = call i8* @llvm.stacksave()
  br label %while_cond383
while_cond383:
  %1953 = load i64, i64* %1951
  %1954 = load %nyx_string*, %nyx_string** %line.ptr
  %1955 = call i64 @nyx_string_byte_length(%nyx_string* %1954)
  %1956 = icmp slt i64 %1953, %1955
  br i1 %1956, label %while_body384, label %while_end385
while_body384:
  call void @llvm.stackrestore(i8* %1952)
  %1957 = load %nyx_string*, %nyx_string** %line.ptr
  %1958 = load i64, i64* %1951
  %1959 = call i8 @nyx_string_char_at(%nyx_string* %1957, i64 %1958)
  %1960 = zext i8 %1959 to i64
  %1961 = icmp eq i64 %1960, 9
  br i1 %1961, label %then386, label %else387
then386:
  %1962 = load { i64, i8* }*, { i64, i8* }** %1949
  %1963 = load %nyx_string*, %nyx_string** %line.ptr
  %1964 = load i64, i64* %1950
  %1965 = load i64, i64* %1951
  %1966 = call %nyx_string* @nyx_string_substring(%nyx_string* %1963, i64 %1964, i64 %1965)
  %1967 = ptrtoint %nyx_string* %1966 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1962, i64 %1967, i64 2)
  %1968 = load i64, i64* %1951
  %1969 = add i64 %1968, 1
  store i64 %1969, i64* %1950
  br label %merge388
else387:
  br label %merge388
merge388:
  %1970 = load i64, i64* %1951
  %1971 = add i64 %1970, 1
  store i64 %1971, i64* %1951
  br label %while_cond383
while_end385:
  %1972 = load { i64, i8* }*, { i64, i8* }** %1949
  %1973 = load %nyx_string*, %nyx_string** %line.ptr
  %1974 = load i64, i64* %1950
  %1975 = load %nyx_string*, %nyx_string** %line.ptr
  %1976 = call i64 @nyx_string_byte_length(%nyx_string* %1975)
  %1977 = call %nyx_string* @nyx_string_substring(%nyx_string* %1973, i64 %1974, i64 %1976)
  %1978 = ptrtoint %nyx_string* %1977 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1972, i64 %1978, i64 2)
  %1979 = load { i64, i8* }*, { i64, i8* }** %1949
  ret { i64, i8* }* %1979
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1980 = load i64, i64* %n.ptr
  %1981 = call %nyx_string* @nyx_string_from_int(i64 %1980)
  %1982 = alloca %nyx_string*
  store %nyx_string* %1981, %nyx_string** %1982
  %1983 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %1984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1983, i64 1)
  %1985 = alloca %nyx_string*
  store %nyx_string* %1984, %nyx_string** %1985
  %1986 = call i8* @llvm.stacksave()
  br label %while_cond389
while_cond389:
  %1987 = load %nyx_string*, %nyx_string** %1982
  %1988 = call i64 @nyx_string_byte_length(%nyx_string* %1987)
  %1989 = icmp slt i64 %1988, 9
  br i1 %1989, label %while_body390, label %while_end391
while_body390:
  call void @llvm.stackrestore(i8* %1986)
  %1990 = load %nyx_string*, %nyx_string** %1985
  %1991 = load %nyx_string*, %nyx_string** %1982
  %1992 = call %nyx_string* @nyx_string_concat(%nyx_string* %1990, %nyx_string* %1991)
  store %nyx_string* %1992, %nyx_string** %1982
  br label %while_cond389
while_end391:
  %1993 = load %nyx_string*, %nyx_string** %1982
  ret %nyx_string* %1993
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1994 = call i8* @nyx_map_new(i32 0)
  %1995 = alloca i8*
  store i8* %1994, i8** %1995
  %1996 = load %nyx_string*, %nyx_string** %show.ptr
  %1997 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %1998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1997, i64 1)
  %1999 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1996, %nyx_string* %1998)
  %2000 = alloca { i64, i8* }*
  store { i64, i8* }* %1999, { i64, i8* }** %2000
  %2001 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2001, i64 0)
  %2003 = alloca %nyx_string*
  store %nyx_string* %2002, %nyx_string** %2003
  %2004 = alloca i64
  store i64 0, i64* %2004
  %2005 = getelementptr [3 x i8], [3 x i8]* @.str207, i32 0, i32 0
  %2006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2005, i64 2)
  %2007 = alloca %nyx_string*
  store %nyx_string* %2006, %nyx_string** %2007
  %2008 = getelementptr [4 x i8], [4 x i8]* @.str208, i32 0, i32 0
  %2009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2008, i64 3)
  %2010 = alloca %nyx_string*
  store %nyx_string* %2009, %nyx_string** %2010
  %2011 = getelementptr [2 x i8], [2 x i8]* @.str209, i32 0, i32 0
  %2012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2011, i64 1)
  %2013 = alloca %nyx_string*
  store %nyx_string* %2012, %nyx_string** %2013
  %2014 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2014, i64 1)
  %2016 = alloca %nyx_string*
  store %nyx_string* %2015, %nyx_string** %2016
  %2017 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2017, i64 0)
  %2019 = alloca %nyx_string*
  store %nyx_string* %2018, %nyx_string** %2019
  %2020 = getelementptr [14 x i8], [14 x i8]* @.str212, i32 0, i32 0
  %2021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2020, i64 13)
  %2022 = alloca %nyx_string*
  store %nyx_string* %2021, %nyx_string** %2022
  %2023 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2023, i64 1)
  %2025 = alloca %nyx_string*
  store %nyx_string* %2024, %nyx_string** %2025
  %2026 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2026, i64 1)
  %2028 = alloca %nyx_string*
  store %nyx_string* %2027, %nyx_string** %2028
  %2029 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2029, i64 1)
  %2031 = alloca %nyx_string*
  store %nyx_string* %2030, %nyx_string** %2031
  %2032 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2032, i64 1)
  %2034 = alloca %nyx_string*
  store %nyx_string* %2033, %nyx_string** %2034
  %2035 = call i8* @llvm.stacksave()
  br label %while_cond392
while_cond392:
  %2036 = load i64, i64* %2004
  %2037 = load { i64, i8* }*, { i64, i8* }** %2000
  %2038 = call i64 @nyx_array_length({ i64, i8* }* %2037)
  %2039 = icmp slt i64 %2036, %2038
  br i1 %2039, label %while_body393, label %while_end394
while_body393:
  call void @llvm.stackrestore(i8* %2035)
  %2040 = load { i64, i8* }*, { i64, i8* }** %2000
  %2041 = load i64, i64* %2004
  %2042 = call i64 @nyx_array_get_checked({ i64, i8* }* %2040, i64 %2041, i64 2)
  %2043 = inttoptr i64 %2042 to %nyx_string*
  %2044 = alloca %nyx_string*
  store %nyx_string* %2043, %nyx_string** %2044
  %2045 = alloca i1
  store i1 false, i1* %2045
  %2046 = alloca i1
  store i1 false, i1* %2046
  %2047 = load %nyx_string*, %nyx_string** %2044
  %2048 = load %nyx_string*, %nyx_string** %2007
  %2049 = call i1 @nyx_string_starts_with(%nyx_string* %2047, %nyx_string* %2048)
  br i1 %2049, label %sc_and_rhs395, label %sc_and_end396
sc_and_rhs395:
  %2050 = load %nyx_string*, %nyx_string** %2044
  %2051 = load %nyx_string*, %nyx_string** %2010
  %2052 = call i1 @nyx_string_starts_with(%nyx_string* %2050, %nyx_string* %2051)
  %2053 = xor i1 %2052, true
  store i1 %2053, i1* %2046
  br label %sc_and_end396
sc_and_end396:
  %2054 = load i1, i1* %2046
  br i1 %2054, label %sc_and_rhs397, label %sc_and_end398
sc_and_rhs397:
  %2055 = load %nyx_string*, %nyx_string** %2044
  %2056 = load %nyx_string*, %nyx_string** %2013
  %2057 = call i1 @nyx_string_ends_with(%nyx_string* %2055, %nyx_string* %2056)
  store i1 %2057, i1* %2045
  br label %sc_and_end398
sc_and_end398:
  %2058 = load i1, i1* %2045
  br i1 %2058, label %then399, label %else400
then399:
  %2059 = load %nyx_string*, %nyx_string** %2044
  %2060 = load %nyx_string*, %nyx_string** %2044
  %2061 = call i64 @nyx_string_byte_length(%nyx_string* %2060)
  %2062 = sub i64 %2061, 1
  %2063 = call %nyx_string* @nyx_string_substring(%nyx_string* %2059, i64 2, i64 %2062)
  %2064 = alloca %nyx_string*
  store %nyx_string* %2063, %nyx_string** %2064
  %2065 = load %nyx_string*, %nyx_string** %2064
  %2066 = load %nyx_string*, %nyx_string** %2016
  %2067 = call i64 @nyx_string_index_of(%nyx_string* %2065, %nyx_string* %2066)
  %2068 = alloca i64
  store i64 %2067, i64* %2068
  %2069 = load i64, i64* %2068
  %2070 = icmp sge i64 %2069, 0
  br i1 %2070, label %then402, label %else403
then402:
  %2071 = load %nyx_string*, %nyx_string** %2064
  %2072 = load i64, i64* %2068
  %2073 = add i64 %2072, 1
  %2074 = load %nyx_string*, %nyx_string** %2064
  %2075 = call i64 @nyx_string_byte_length(%nyx_string* %2074)
  %2076 = call %nyx_string* @nyx_string_substring(%nyx_string* %2071, i64 %2073, i64 %2075)
  store %nyx_string* %2076, %nyx_string** %2064
  br label %merge404
else403:
  br label %merge404
merge404:
  %2077 = load %nyx_string*, %nyx_string** %2064
  store %nyx_string* %2077, %nyx_string** %2003
  br label %merge401
else400:
  %2078 = alloca i1
  store i1 false, i1* %2078
  %2079 = load %nyx_string*, %nyx_string** %2003
  %2080 = load %nyx_string*, %nyx_string** %2019
  %2081 = call i1 @nyx_string_equals(%nyx_string* %2079, %nyx_string* %2080)
  %2082 = xor i1 %2081, true
  br i1 %2082, label %sc_and_rhs405, label %sc_and_end406
sc_and_rhs405:
  %2083 = load %nyx_string*, %nyx_string** %2044
  %2084 = load %nyx_string*, %nyx_string** %2022
  %2085 = call i1 @nyx_string_contains(%nyx_string* %2083, %nyx_string* %2084)
  store i1 %2085, i1* %2078
  br label %sc_and_end406
sc_and_end406:
  %2086 = load i1, i1* %2078
  br i1 %2086, label %then407, label %else408
then407:
  %2087 = load %nyx_string*, %nyx_string** %2044
  %2088 = load %nyx_string*, %nyx_string** %2025
  %2089 = call i64 @nyx_string_index_of(%nyx_string* %2087, %nyx_string* %2088)
  %2090 = alloca i64
  store i64 %2089, i64* %2090
  %2091 = load %nyx_string*, %nyx_string** %2044
  %2092 = load %nyx_string*, %nyx_string** %2028
  %2093 = call i64 @nyx_string_index_of(%nyx_string* %2091, %nyx_string* %2092)
  %2094 = alloca i64
  store i64 %2093, i64* %2094
  %2095 = alloca i1
  store i1 false, i1* %2095
  %2096 = load i64, i64* %2090
  %2097 = icmp sge i64 %2096, 0
  br i1 %2097, label %sc_and_rhs410, label %sc_and_end411
sc_and_rhs410:
  %2098 = load i64, i64* %2094
  %2099 = load i64, i64* %2090
  %2100 = icmp sgt i64 %2098, %2099
  store i1 %2100, i1* %2095
  br label %sc_and_end411
sc_and_end411:
  %2101 = load i1, i1* %2095
  br i1 %2101, label %then412, label %else413
then412:
  %2102 = load %nyx_string*, %nyx_string** %2044
  %2103 = load i64, i64* %2090
  %2104 = add i64 %2103, 1
  %2105 = load i64, i64* %2094
  %2106 = call %nyx_string* @nyx_string_substring(%nyx_string* %2102, i64 %2104, i64 %2105)
  %2107 = load %nyx_string*, %nyx_string** %2031
  %2108 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2106, %nyx_string* %2107)
  %2109 = alloca { i64, i8* }*
  store { i64, i8* }* %2108, { i64, i8* }** %2109
  %2110 = alloca i64
  store i64 0, i64* %2110
  %2111 = call i8* @llvm.stacksave()
  br label %while_cond415
while_cond415:
  %2112 = load i64, i64* %2110
  %2113 = load { i64, i8* }*, { i64, i8* }** %2109
  %2114 = call i64 @nyx_array_length({ i64, i8* }* %2113)
  %2115 = icmp slt i64 %2112, %2114
  br i1 %2115, label %while_body416, label %while_end417
while_body416:
  call void @llvm.stackrestore(i8* %2111)
  %2116 = load { i64, i8* }*, { i64, i8* }** %2109
  %2117 = load i64, i64* %2110
  %2118 = call i64 @nyx_array_get_checked({ i64, i8* }* %2116, i64 %2117, i64 2)
  %2119 = inttoptr i64 %2118 to %nyx_string*
  %2120 = alloca %nyx_string*
  store %nyx_string* %2119, %nyx_string** %2120
  %2121 = load %nyx_string*, %nyx_string** %2120
  %2122 = call %nyx_string* @nyx_string_trim(%nyx_string* %2121)
  %2123 = call i64 @nyx_string_to_int(%nyx_string* %2122)
  %2124 = icmp sgt i64 %2123, 0
  br i1 %2124, label %then418, label %else419
then418:
  %2125 = load i8*, i8** %1995
  %2126 = load %nyx_string*, %nyx_string** %2003
  %2127 = load %nyx_string*, %nyx_string** %2034
  %2128 = call i8* @nyx_string_to_cstr(%nyx_string* %2126)
  %2129 = bitcast %nyx_string* %2127 to i8*
  call void @nyx_map_insert_str(i8* %2125, i8* %2128, i8* %2129)
  br label %merge420
else419:
  br label %merge420
merge420:
  %2130 = load i64, i64* %2110
  %2131 = add i64 %2130, 1
  store i64 %2131, i64* %2110
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
  %2132 = load i64, i64* %2004
  %2133 = add i64 %2132, 1
  store i64 %2133, i64* %2004
  br label %while_cond392
while_end394:
  %2134 = load i8*, i8** %1995
  ret i8* %2134
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2135 = call { i64, i8* }* @nyx_array_new_ptr()
  %2136 = alloca { i64, i8* }*
  store { i64, i8* }* %2135, { i64, i8* }** %2136
  %2137 = getelementptr [4 x i8], [4 x i8]* @.str217, i32 0, i32 0
  %2138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2137, i64 3)
  %2139 = call i8* @nyx_string_to_cstr(%nyx_string* %2138)
  %2140 = call i1 @nyx_file_exists(i8* %2139)
  %2141 = xor i1 %2140, true
  br i1 %2141, label %then421, label %else422
then421:
  %2142 = load { i64, i8* }*, { i64, i8* }** %2136
  ret { i64, i8* }* %2142
else422:
  br label %merge423
merge423:
  %2143 = getelementptr [50 x i8], [50 x i8]* @.str218, i32 0, i32 0
  %2144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2143, i64 49)
  %2145 = call i8* @nyx_string_to_cstr(%nyx_string* %2144)
  %2146 = call %nyx_string* @nyx_exec(i8* %2145)
  %2147 = alloca %nyx_string*
  store %nyx_string* %2146, %nyx_string** %2147
  %2148 = load %nyx_string*, %nyx_string** %2147
  %2149 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %2150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2149, i64 1)
  %2151 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2148, %nyx_string* %2150)
  %2152 = alloca { i64, i8* }*
  store { i64, i8* }* %2151, { i64, i8* }** %2152
  %2153 = alloca i64
  store i64 0, i64* %2153
  %2154 = getelementptr [4 x i8], [4 x i8]* @.str220, i32 0, i32 0
  %2155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2154, i64 3)
  %2156 = alloca %nyx_string*
  store %nyx_string* %2155, %nyx_string** %2156
  %2157 = getelementptr [9 x i8], [9 x i8]* @.str221, i32 0, i32 0
  %2158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2157, i64 8)
  %2159 = alloca %nyx_string*
  store %nyx_string* %2158, %nyx_string** %2159
  %2160 = call i8* @llvm.stacksave()
  br label %while_cond424
while_cond424:
  %2161 = load i64, i64* %2153
  %2162 = load { i64, i8* }*, { i64, i8* }** %2152
  %2163 = call i64 @nyx_array_length({ i64, i8* }* %2162)
  %2164 = icmp slt i64 %2161, %2163
  br i1 %2164, label %while_body425, label %while_end426
while_body425:
  call void @llvm.stackrestore(i8* %2160)
  %2165 = load { i64, i8* }*, { i64, i8* }** %2152
  %2166 = load i64, i64* %2153
  %2167 = call i64 @nyx_array_get_checked({ i64, i8* }* %2165, i64 %2166, i64 2)
  %2168 = inttoptr i64 %2167 to %nyx_string*
  %2169 = alloca %nyx_string*
  store %nyx_string* %2168, %nyx_string** %2169
  %2170 = load %nyx_string*, %nyx_string** %2169
  %2171 = call %nyx_string* @nyx_string_trim(%nyx_string* %2170)
  %2172 = alloca %nyx_string*
  store %nyx_string* %2171, %nyx_string** %2172
  %2173 = alloca i1
  store i1 false, i1* %2173
  %2174 = load %nyx_string*, %nyx_string** %2172
  %2175 = load %nyx_string*, %nyx_string** %2156
  %2176 = call i1 @nyx_string_ends_with(%nyx_string* %2174, %nyx_string* %2175)
  br i1 %2176, label %sc_and_rhs427, label %sc_and_end428
sc_and_rhs427:
  %2177 = load %nyx_string*, %nyx_string** %2172
  %2178 = load %nyx_string*, %nyx_string** %2159
  %2179 = call i1 @nyx_string_ends_with(%nyx_string* %2177, %nyx_string* %2178)
  %2180 = xor i1 %2179, true
  store i1 %2180, i1* %2173
  br label %sc_and_end428
sc_and_end428:
  %2181 = load i1, i1* %2173
  br i1 %2181, label %then429, label %else430
then429:
  %2182 = load { i64, i8* }*, { i64, i8* }** %2136
  %2183 = load %nyx_string*, %nyx_string** %2172
  %2184 = load %nyx_string*, %nyx_string** %2172
  %2185 = call i64 @nyx_string_byte_length(%nyx_string* %2184)
  %2186 = sub i64 %2185, 3
  %2187 = call %nyx_string* @nyx_string_substring(%nyx_string* %2183, i64 0, i64 %2186)
  %2188 = ptrtoint %nyx_string* %2187 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2182, i64 %2188, i64 2)
  br label %merge431
else430:
  br label %merge431
merge431:
  %2189 = load i64, i64* %2153
  %2190 = add i64 %2189, 1
  store i64 %2190, i64* %2153
  br label %while_cond424
while_end426:
  %2191 = load { i64, i8* }*, { i64, i8* }** %2136
  ret { i64, i8* }* %2191
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
  %2192 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %2193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2192, i64 0)
  %2194 = alloca %nyx_string*
  store %nyx_string* %2193, %nyx_string** %2194
  %2195 = alloca i64
  store i64 0, i64* %2195
  %2196 = getelementptr [9 x i8], [9 x i8]* @.str223, i32 0, i32 0
  %2197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2196, i64 8)
  %2198 = alloca %nyx_string*
  store %nyx_string* %2197, %nyx_string** %2198
  %2199 = getelementptr [3 x i8], [3 x i8]* @.str224, i32 0, i32 0
  %2200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2199, i64 2)
  %2201 = alloca %nyx_string*
  store %nyx_string* %2200, %nyx_string** %2201
  %2202 = call i8* @llvm.stacksave()
  br label %while_cond432
while_cond432:
  %2203 = load i64, i64* %2195
  %2204 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2205 = call i64 @nyx_array_length({ i64, i8* }* %2204)
  %2206 = icmp slt i64 %2203, %2205
  br i1 %2206, label %while_body433, label %while_end434
while_body433:
  call void @llvm.stackrestore(i8* %2202)
  %2207 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2208 = load i64, i64* %2195
  %2209 = call i64 @nyx_array_get_checked({ i64, i8* }* %2207, i64 %2208, i64 2)
  %2210 = inttoptr i64 %2209 to %nyx_string*
  %2211 = alloca %nyx_string*
  store %nyx_string* %2210, %nyx_string** %2211
  %2212 = load %nyx_string*, %nyx_string** %2194
  %2213 = load %nyx_string*, %nyx_string** %2198
  %2214 = call %nyx_string* @nyx_string_concat(%nyx_string* %2212, %nyx_string* %2213)
  %2215 = load %nyx_string*, %nyx_string** %2211
  %2216 = call %nyx_string* @nyx_string_concat(%nyx_string* %2214, %nyx_string* %2215)
  %2217 = load %nyx_string*, %nyx_string** %2201
  %2218 = call %nyx_string* @nyx_string_concat(%nyx_string* %2216, %nyx_string* %2217)
  store %nyx_string* %2218, %nyx_string** %2194
  %2219 = load i64, i64* %2195
  %2220 = add i64 %2219, 1
  store i64 %2220, i64* %2195
  br label %while_cond432
while_end434:
  %2221 = load %nyx_string*, %nyx_string** %2194
  %2222 = getelementptr [36 x i8], [36 x i8]* @.str225, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2222, i64 35)
  %2224 = call %nyx_string* @nyx_string_concat(%nyx_string* %2221, %nyx_string* %2223)
  store %nyx_string* %2224, %nyx_string** %2194
  %2225 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2226 = getelementptr [13 x i8], [13 x i8]* @.str226, i32 0, i32 0
  %2227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2226, i64 12)
  %2228 = call %nyx_string* @nyx_string_concat(%nyx_string* %2225, %nyx_string* %2227)
  %2229 = load %nyx_string*, %nyx_string** %2194
  %2230 = ptrtoint %nyx_string* %2229 to i64
  %2231 = call i8* @nyx_string_to_cstr(%nyx_string* %2228)
  %2232 = inttoptr i64 %2230 to %nyx_string*
  %2233 = call i1 @nyx_write_file_safe(i8* %2231, %nyx_string* %2232)
  %2234 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2235 = getelementptr [14 x i8], [14 x i8]* @.str227, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2235, i64 13)
  %2237 = call %nyx_string* @nyx_string_concat(%nyx_string* %2234, %nyx_string* %2236)
  %2238 = alloca %nyx_string*
  store %nyx_string* %2237, %nyx_string** %2238
  %2239 = getelementptr [13 x i8], [13 x i8]* @.str228, i32 0, i32 0
  %2240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2239, i64 12)
  %2241 = getelementptr [8 x i8], [8 x i8]* @.str229, i32 0, i32 0
  %2242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2241, i64 7)
  %2243 = call %nyx_string* @nyx_string_concat(%nyx_string* %2240, %nyx_string* %2242)
  %2244 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2245 = call %nyx_string* @nyx_string_concat(%nyx_string* %2243, %nyx_string* %2244)
  %2246 = getelementptr [19 x i8], [19 x i8]* @.str230, i32 0, i32 0
  %2247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2246, i64 18)
  %2248 = call %nyx_string* @nyx_string_concat(%nyx_string* %2245, %nyx_string* %2247)
  %2249 = getelementptr [5 x i8], [5 x i8]* @.str231, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2249, i64 4)
  %2251 = call %nyx_string* @nyx_string_concat(%nyx_string* %2248, %nyx_string* %2250)
  %2252 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2253 = call %nyx_string* @nyx_string_concat(%nyx_string* %2251, %nyx_string* %2252)
  %2254 = getelementptr [24 x i8], [24 x i8]* @.str232, i32 0, i32 0
  %2255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2254, i64 23)
  %2256 = call %nyx_string* @nyx_string_concat(%nyx_string* %2253, %nyx_string* %2255)
  %2257 = getelementptr [5 x i8], [5 x i8]* @.str233, i32 0, i32 0
  %2258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2257, i64 4)
  %2259 = call %nyx_string* @nyx_string_concat(%nyx_string* %2256, %nyx_string* %2258)
  %2260 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2261 = call %nyx_string* @nyx_string_concat(%nyx_string* %2259, %nyx_string* %2260)
  %2262 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %2263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2262, i64 2)
  %2264 = call %nyx_string* @nyx_string_concat(%nyx_string* %2261, %nyx_string* %2263)
  %2265 = getelementptr [137 x i8], [137 x i8]* @.str235, i32 0, i32 0
  %2266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2265, i64 136)
  %2267 = call %nyx_string* @nyx_string_concat(%nyx_string* %2264, %nyx_string* %2266)
  %2268 = getelementptr [43 x i8], [43 x i8]* @.str236, i32 0, i32 0
  %2269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2268, i64 42)
  %2270 = call %nyx_string* @nyx_string_concat(%nyx_string* %2267, %nyx_string* %2269)
  %2271 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2272 = call %nyx_string* @nyx_string_concat(%nyx_string* %2270, %nyx_string* %2271)
  %2273 = getelementptr [38 x i8], [38 x i8]* @.str237, i32 0, i32 0
  %2274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2273, i64 37)
  %2275 = call %nyx_string* @nyx_string_concat(%nyx_string* %2272, %nyx_string* %2274)
  %2276 = load %nyx_string*, %nyx_string** %2238
  %2277 = call %nyx_string* @nyx_string_concat(%nyx_string* %2275, %nyx_string* %2276)
  %2278 = getelementptr [24 x i8], [24 x i8]* @.str238, i32 0, i32 0
  %2279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2278, i64 23)
  %2280 = call %nyx_string* @nyx_string_concat(%nyx_string* %2277, %nyx_string* %2279)
  %2281 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2282 = call %nyx_string* @nyx_string_concat(%nyx_string* %2280, %nyx_string* %2281)
  %2283 = getelementptr [21 x i8], [21 x i8]* @.str239, i32 0, i32 0
  %2284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2283, i64 20)
  %2285 = call %nyx_string* @nyx_string_concat(%nyx_string* %2282, %nyx_string* %2284)
  %2286 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %2287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2286, i64 6)
  %2288 = call %nyx_string* @nyx_string_concat(%nyx_string* %2285, %nyx_string* %2287)
  %2289 = getelementptr [17 x i8], [17 x i8]* @.str241, i32 0, i32 0
  %2290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2289, i64 16)
  %2291 = call %nyx_string* @nyx_string_concat(%nyx_string* %2288, %nyx_string* %2290)
  %2292 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2293 = call %nyx_string* @nyx_string_concat(%nyx_string* %2291, %nyx_string* %2292)
  %2294 = getelementptr [19 x i8], [19 x i8]* @.str242, i32 0, i32 0
  %2295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2294, i64 18)
  %2296 = call %nyx_string* @nyx_string_concat(%nyx_string* %2293, %nyx_string* %2295)
  %2297 = getelementptr [10 x i8], [10 x i8]* @.str243, i32 0, i32 0
  %2298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2297, i64 9)
  %2299 = call %nyx_string* @nyx_string_concat(%nyx_string* %2296, %nyx_string* %2298)
  %2300 = alloca %nyx_string*
  store %nyx_string* %2299, %nyx_string** %2300
  %2301 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2302 = getelementptr [13 x i8], [13 x i8]* @.str244, i32 0, i32 0
  %2303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2302, i64 12)
  %2304 = call %nyx_string* @nyx_string_concat(%nyx_string* %2301, %nyx_string* %2303)
  %2305 = load %nyx_string*, %nyx_string** %2300
  %2306 = ptrtoint %nyx_string* %2305 to i64
  %2307 = call i8* @nyx_string_to_cstr(%nyx_string* %2304)
  %2308 = inttoptr i64 %2306 to %nyx_string*
  %2309 = call i1 @nyx_write_file_safe(i8* %2307, %nyx_string* %2308)
  %2310 = getelementptr [7 x i8], [7 x i8]* @.str245, i32 0, i32 0
  %2311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2310, i64 6)
  %2312 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2313 = call %nyx_string* @nyx_string_concat(%nyx_string* %2311, %nyx_string* %2312)
  %2314 = getelementptr [14 x i8], [14 x i8]* @.str246, i32 0, i32 0
  %2315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2314, i64 13)
  %2316 = call %nyx_string* @nyx_string_concat(%nyx_string* %2313, %nyx_string* %2315)
  %2317 = call i8* @nyx_string_to_cstr(%nyx_string* %2316)
  %2318 = call i64 @nyx_exec_code(i8* %2317)
  %2319 = load %nyx_string*, %nyx_string** %2238
  ret %nyx_string* %2319
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
  %2320 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2320, i64 8)
  %2322 = call i8* @nyx_string_to_cstr(%nyx_string* %2321)
  %2323 = call %nyx_string* @nyx_getenv(i8* %2322)
  %2324 = alloca %nyx_string*
  store %nyx_string* %2323, %nyx_string** %2324
  %2325 = getelementptr [4 x i8], [4 x i8]* @.str248, i32 0, i32 0
  %2326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2325, i64 3)
  %2327 = call i8* @nyx_string_to_cstr(%nyx_string* %2326)
  %2328 = call %nyx_string* @nyx_getenv(i8* %2327)
  %2329 = alloca %nyx_string*
  store %nyx_string* %2328, %nyx_string** %2329
  %2330 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2330, i64 0)
  %2332 = call i8* @nyx_string_to_cstr(%nyx_string* %2331)
  call void @nyx_print_string(i8* %2332)
  %2333 = getelementptr [36 x i8], [36 x i8]* @.str250, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2333, i64 35)
  %2335 = call i8* @nyx_string_to_cstr(%nyx_string* %2334)
  call void @nyx_print_string(i8* %2335)
  %2336 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %2337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2336, i64 0)
  %2338 = alloca %nyx_string*
  store %nyx_string* %2337, %nyx_string** %2338
  %2339 = alloca i64
  store i64 0, i64* %2339
  %2340 = call i8* @nyx_map_new(i32 0)
  %2341 = alloca i8*
  store i8* %2340, i8** %2341
  %2342 = call { i64, i8* }* @nyx_array_new_ptr()
  %2343 = alloca { i64, i8* }*
  store { i64, i8* }* %2342, { i64, i8* }** %2343
  %2344 = alloca i64
  store i64 0, i64* %2344
  %2345 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2345, i64 1)
  %2347 = alloca %nyx_string*
  store %nyx_string* %2346, %nyx_string** %2347
  %2348 = getelementptr [9 x i8], [9 x i8]* @.str253, i32 0, i32 0
  %2349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2348, i64 8)
  %2350 = alloca %nyx_string*
  store %nyx_string* %2349, %nyx_string** %2350
  %2351 = getelementptr [3 x i8], [3 x i8]* @.str254, i32 0, i32 0
  %2352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2351, i64 2)
  %2353 = alloca %nyx_string*
  store %nyx_string* %2352, %nyx_string** %2353
  %2354 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2354, i64 1)
  %2356 = alloca %nyx_string*
  store %nyx_string* %2355, %nyx_string** %2356
  %2357 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2357, i64 1)
  %2359 = alloca %nyx_string*
  store %nyx_string* %2358, %nyx_string** %2359
  %2360 = call i8* @llvm.stacksave()
  br label %while_cond435
while_cond435:
  %2361 = load i64, i64* %2344
  %2362 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2363 = call i64 @nyx_array_length({ i64, i8* }* %2362)
  %2364 = icmp slt i64 %2361, %2363
  br i1 %2364, label %while_body436, label %while_end437
while_body436:
  call void @llvm.stackrestore(i8* %2360)
  %2365 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2366 = load i64, i64* %2344
  %2367 = call i64 @nyx_array_get_checked({ i64, i8* }* %2365, i64 %2366, i64 2)
  %2368 = inttoptr i64 %2367 to %nyx_string*
  %2369 = alloca %nyx_string*
  store %nyx_string* %2368, %nyx_string** %2369
  %2370 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2371 = load i64, i64* %2344
  %2372 = call i64 @nyx_array_get_checked({ i64, i8* }* %2370, i64 %2371, i64 2)
  %2373 = inttoptr i64 %2372 to %nyx_string*
  %2374 = alloca %nyx_string*
  store %nyx_string* %2373, %nyx_string** %2374
  %2375 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2376 = load %nyx_string*, %nyx_string** %2347
  %2377 = call %nyx_string* @nyx_string_concat(%nyx_string* %2375, %nyx_string* %2376)
  %2378 = load %nyx_string*, %nyx_string** %2369
  %2379 = call %nyx_string* @nyx_string_concat(%nyx_string* %2377, %nyx_string* %2378)
  %2380 = load %nyx_string*, %nyx_string** %2350
  %2381 = call %nyx_string* @nyx_string_concat(%nyx_string* %2379, %nyx_string* %2380)
  %2382 = alloca %nyx_string*
  store %nyx_string* %2381, %nyx_string** %2382
  %2383 = load %nyx_string*, %nyx_string** %2382
  %2384 = call i1 @cov_profraw_valid(%nyx_string* %2383)
  br i1 %2384, label %then438, label %else439
then438:
  %2385 = load %nyx_string*, %nyx_string** %2338
  %2386 = load %nyx_string*, %nyx_string** %2353
  %2387 = call %nyx_string* @nyx_string_concat(%nyx_string* %2385, %nyx_string* %2386)
  %2388 = load %nyx_string*, %nyx_string** %2382
  %2389 = call %nyx_string* @nyx_string_concat(%nyx_string* %2387, %nyx_string* %2388)
  %2390 = load %nyx_string*, %nyx_string** %2356
  %2391 = call %nyx_string* @nyx_string_concat(%nyx_string* %2389, %nyx_string* %2390)
  store %nyx_string* %2391, %nyx_string** %2338
  %2392 = load i64, i64* %2339
  %2393 = add i64 %2392, 1
  store i64 %2393, i64* %2339
  %2394 = load i8*, i8** %2341
  %2395 = load %nyx_string*, %nyx_string** %2369
  %2396 = load %nyx_string*, %nyx_string** %2359
  %2397 = call i8* @nyx_string_to_cstr(%nyx_string* %2395)
  %2398 = bitcast %nyx_string* %2396 to i8*
  call void @nyx_map_insert_str(i8* %2394, i8* %2397, i8* %2398)
  br label %merge440
else439:
  %2399 = load { i64, i8* }*, { i64, i8* }** %2343
  %2400 = load %nyx_string*, %nyx_string** %2374
  %2401 = ptrtoint %nyx_string* %2400 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2399, i64 %2401, i64 2)
  br label %merge440
merge440:
  %2402 = load i64, i64* %2344
  %2403 = add i64 %2402, 1
  store i64 %2403, i64* %2344
  br label %while_cond435
while_end437:
  %2404 = call i8* @nyx_map_new(i32 0)
  %2405 = alloca i8*
  store i8* %2404, i8** %2405
  %2406 = load i64, i64* %2339
  %2407 = icmp sgt i64 %2406, 0
  br i1 %2407, label %then441, label %else442
then441:
  %2408 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2409 = getelementptr [17 x i8], [17 x i8]* @.str257, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2409, i64 16)
  %2411 = call %nyx_string* @nyx_string_concat(%nyx_string* %2408, %nyx_string* %2410)
  %2412 = alloca %nyx_string*
  store %nyx_string* %2411, %nyx_string** %2412
  %2413 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2414 = getelementptr [12 x i8], [12 x i8]* @.str258, i32 0, i32 0
  %2415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2414, i64 11)
  %2416 = call %nyx_string* @nyx_string_concat(%nyx_string* %2413, %nyx_string* %2415)
  %2417 = load %nyx_string*, %nyx_string** %2412
  %2418 = call %nyx_string* @nyx_string_concat(%nyx_string* %2416, %nyx_string* %2417)
  %2419 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2419, i64 1)
  %2421 = call %nyx_string* @nyx_string_concat(%nyx_string* %2418, %nyx_string* %2420)
  %2422 = load %nyx_string*, %nyx_string** %2338
  %2423 = call %nyx_string* @nyx_string_concat(%nyx_string* %2421, %nyx_string* %2422)
  %2424 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %2425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2424, i64 4)
  %2426 = call %nyx_string* @nyx_string_concat(%nyx_string* %2423, %nyx_string* %2425)
  %2427 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2428 = call %nyx_string* @nyx_string_concat(%nyx_string* %2426, %nyx_string* %2427)
  %2429 = getelementptr [17 x i8], [17 x i8]* @.str261, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2429, i64 16)
  %2431 = call %nyx_string* @nyx_string_concat(%nyx_string* %2428, %nyx_string* %2430)
  %2432 = call i8* @nyx_string_to_cstr(%nyx_string* %2431)
  %2433 = call i64 @nyx_exec_code(i8* %2432)
  %2434 = alloca i64
  store i64 %2433, i64* %2434
  %2435 = load i64, i64* %2434
  %2436 = icmp ne i64 %2435, 0
  br i1 %2436, label %then444, label %else445
then444:
  %2437 = getelementptr [36 x i8], [36 x i8]* @.str262, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2437, i64 35)
  %2439 = call i8* @nyx_string_to_cstr(%nyx_string* %2438)
  call void @nyx_print_string(i8* %2439)
  %2440 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2441 = getelementptr [11 x i8], [11 x i8]* @.str263, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2441, i64 10)
  %2443 = call %nyx_string* @nyx_string_concat(%nyx_string* %2440, %nyx_string* %2442)
  %2444 = call i8* @nyx_string_to_cstr(%nyx_string* %2443)
  %2445 = call %nyx_string* @nyx_read_file(i8* %2444)
  %2446 = call i8* @nyx_string_to_cstr(%nyx_string* %2445)
  call void @nyx_print_string(i8* %2446)
  ret i64 1
else445:
  br label %merge446
merge446:
  %2447 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2448 = getelementptr [33 x i8], [33 x i8]* @.str264, i32 0, i32 0
  %2449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2448, i64 32)
  %2450 = call %nyx_string* @nyx_string_concat(%nyx_string* %2447, %nyx_string* %2449)
  %2451 = load %nyx_string*, %nyx_string** %2412
  %2452 = call %nyx_string* @nyx_string_concat(%nyx_string* %2450, %nyx_string* %2451)
  %2453 = getelementptr [6 x i8], [6 x i8]* @.str265, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2453, i64 5)
  %2455 = call %nyx_string* @nyx_string_concat(%nyx_string* %2452, %nyx_string* %2454)
  %2456 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2457 = call %nyx_string* @nyx_string_concat(%nyx_string* %2455, %nyx_string* %2456)
  %2458 = getelementptr [16 x i8], [16 x i8]* @.str266, i32 0, i32 0
  %2459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2458, i64 15)
  %2460 = call %nyx_string* @nyx_string_concat(%nyx_string* %2457, %nyx_string* %2459)
  %2461 = call i8* @nyx_string_to_cstr(%nyx_string* %2460)
  %2462 = call i64 @nyx_exec_code(i8* %2461)
  %2463 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2464 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %2465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2464, i64 9)
  %2466 = call %nyx_string* @nyx_string_concat(%nyx_string* %2463, %nyx_string* %2465)
  %2467 = call i8* @nyx_string_to_cstr(%nyx_string* %2466)
  %2468 = call %nyx_string* @nyx_read_file(i8* %2467)
  %2469 = call i8* @cov_called_from_show(%nyx_string* %2468)
  store i8* %2469, i8** %2405
  br label %merge443
else442:
  br label %merge443
merge443:
  %2470 = call i8* @nyx_map_new(i32 0)
  %2471 = alloca i8*
  store i8* %2470, i8** %2471
  %2472 = call i8* @nyx_map_new(i32 0)
  %2473 = alloca i8*
  store i8* %2472, i8** %2473
  %2474 = call i8* @nyx_map_new(i32 0)
  %2475 = alloca i8*
  store i8* %2474, i8** %2475
  %2476 = call i8* @nyx_map_new(i32 0)
  %2477 = alloca i8*
  store i8* %2476, i8** %2477
  store i64 0, i64* %2344
  %2478 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %2479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2478, i64 1)
  %2480 = alloca %nyx_string*
  store %nyx_string* %2479, %nyx_string** %2480
  %2481 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2481, i64 4)
  %2483 = alloca %nyx_string*
  store %nyx_string* %2482, %nyx_string** %2483
  %2484 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2484, i64 1)
  %2486 = alloca %nyx_string*
  store %nyx_string* %2485, %nyx_string** %2486
  %2487 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %2488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2487, i64 0)
  %2489 = alloca %nyx_string*
  store %nyx_string* %2488, %nyx_string** %2489
  %2490 = getelementptr [2 x i8], [2 x i8]* @.str272, i32 0, i32 0
  %2491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2490, i64 1)
  %2492 = alloca %nyx_string*
  store %nyx_string* %2491, %nyx_string** %2492
  %2493 = getelementptr [5 x i8], [5 x i8]* @.str273, i32 0, i32 0
  %2494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2493, i64 4)
  %2495 = alloca %nyx_string*
  store %nyx_string* %2494, %nyx_string** %2495
  %2496 = call i8* @llvm.stacksave()
  br label %while_cond447
while_cond447:
  %2497 = load i64, i64* %2344
  %2498 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2499 = call i64 @nyx_array_length({ i64, i8* }* %2498)
  %2500 = icmp slt i64 %2497, %2499
  br i1 %2500, label %while_body448, label %while_end449
while_body448:
  call void @llvm.stackrestore(i8* %2496)
  %2501 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2502 = load i64, i64* %2344
  %2503 = call i64 @nyx_array_get_checked({ i64, i8* }* %2501, i64 %2502, i64 2)
  %2504 = inttoptr i64 %2503 to %nyx_string*
  %2505 = alloca %nyx_string*
  store %nyx_string* %2504, %nyx_string** %2505
  %2506 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2507 = load %nyx_string*, %nyx_string** %2480
  %2508 = call %nyx_string* @nyx_string_concat(%nyx_string* %2506, %nyx_string* %2507)
  %2509 = load %nyx_string*, %nyx_string** %2505
  %2510 = call %nyx_string* @nyx_string_concat(%nyx_string* %2508, %nyx_string* %2509)
  %2511 = load %nyx_string*, %nyx_string** %2483
  %2512 = call %nyx_string* @nyx_string_concat(%nyx_string* %2510, %nyx_string* %2511)
  %2513 = alloca %nyx_string*
  store %nyx_string* %2512, %nyx_string** %2513
  %2514 = load %nyx_string*, %nyx_string** %2513
  %2515 = call i8* @nyx_string_to_cstr(%nyx_string* %2514)
  %2516 = call i1 @nyx_file_exists(i8* %2515)
  br i1 %2516, label %then450, label %else451
then450:
  %2517 = load %nyx_string*, %nyx_string** %2513
  %2518 = call i8* @nyx_string_to_cstr(%nyx_string* %2517)
  %2519 = call %nyx_string* @nyx_read_file(i8* %2518)
  %2520 = load %nyx_string*, %nyx_string** %2486
  %2521 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2519, %nyx_string* %2520)
  %2522 = alloca { i64, i8* }*
  store { i64, i8* }* %2521, { i64, i8* }** %2522
  %2523 = alloca i64
  store i64 0, i64* %2523
  %2524 = call i8* @llvm.stacksave()
  br label %while_cond453
while_cond453:
  %2525 = load i64, i64* %2523
  %2526 = load { i64, i8* }*, { i64, i8* }** %2522
  %2527 = call i64 @nyx_array_length({ i64, i8* }* %2526)
  %2528 = icmp slt i64 %2525, %2527
  br i1 %2528, label %while_body454, label %while_end455
while_body454:
  call void @llvm.stackrestore(i8* %2524)
  %2529 = load { i64, i8* }*, { i64, i8* }** %2522
  %2530 = load i64, i64* %2523
  %2531 = call i64 @nyx_array_get_checked({ i64, i8* }* %2529, i64 %2530, i64 2)
  %2532 = inttoptr i64 %2531 to %nyx_string*
  %2533 = alloca %nyx_string*
  store %nyx_string* %2532, %nyx_string** %2533
  %2534 = load %nyx_string*, %nyx_string** %2533
  %2535 = call { i64, i8* }* @cov_fields(%nyx_string* %2534)
  %2536 = alloca { i64, i8* }*
  store { i64, i8* }* %2535, { i64, i8* }** %2536
  %2537 = load { i64, i8* }*, { i64, i8* }** %2536
  %2538 = call i64 @nyx_array_length({ i64, i8* }* %2537)
  %2539 = icmp sge i64 %2538, 5
  br i1 %2539, label %then456, label %else457
then456:
  %2540 = load { i64, i8* }*, { i64, i8* }** %2536
  %2541 = call i64 @nyx_array_get_checked({ i64, i8* }* %2540, i64 0, i64 2)
  %2542 = inttoptr i64 %2541 to %nyx_string*
  %2543 = alloca %nyx_string*
  store %nyx_string* %2542, %nyx_string** %2543
  %2544 = load { i64, i8* }*, { i64, i8* }** %2536
  %2545 = call i64 @nyx_array_get_checked({ i64, i8* }* %2544, i64 1, i64 2)
  %2546 = inttoptr i64 %2545 to %nyx_string*
  %2547 = alloca %nyx_string*
  store %nyx_string* %2546, %nyx_string** %2547
  %2548 = load { i64, i8* }*, { i64, i8* }** %2536
  %2549 = call i64 @nyx_array_get_checked({ i64, i8* }* %2548, i64 3, i64 2)
  %2550 = inttoptr i64 %2549 to %nyx_string*
  %2551 = alloca %nyx_string*
  store %nyx_string* %2550, %nyx_string** %2551
  %2552 = load { i64, i8* }*, { i64, i8* }** %2536
  %2553 = call i64 @nyx_array_get_checked({ i64, i8* }* %2552, i64 4, i64 2)
  %2554 = inttoptr i64 %2553 to %nyx_string*
  %2555 = alloca %nyx_string*
  store %nyx_string* %2554, %nyx_string** %2555
  %2556 = load %nyx_string*, %nyx_string** %2547
  %2557 = load %nyx_string*, %nyx_string** %2489
  %2558 = call i1 @nyx_string_equals(%nyx_string* %2556, %nyx_string* %2557)
  %2559 = xor i1 %2558, true
  br i1 %2559, label %then459, label %else460
then459:
  %2560 = load i8*, i8** %2477
  %2561 = load %nyx_string*, %nyx_string** %2547
  %2562 = load %nyx_string*, %nyx_string** %2492
  %2563 = call i8* @nyx_string_to_cstr(%nyx_string* %2561)
  %2564 = bitcast %nyx_string* %2562 to i8*
  call void @nyx_map_insert_str(i8* %2560, i8* %2563, i8* %2564)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2565 = load i8*, i8** %2341
  %2566 = load %nyx_string*, %nyx_string** %2505
  %2567 = call i8* @nyx_string_to_cstr(%nyx_string* %2566)
  %2568 = call i1 @nyx_map_contains_str(i8* %2565, i8* %2567)
  br i1 %2568, label %then462, label %else463
then462:
  %2569 = load i8*, i8** %2471
  %2570 = load %nyx_string*, %nyx_string** %2543
  %2571 = load %nyx_string*, %nyx_string** %2492
  %2572 = call i8* @nyx_string_to_cstr(%nyx_string* %2570)
  %2573 = bitcast %nyx_string* %2571 to i8*
  call void @nyx_map_insert_str(i8* %2569, i8* %2572, i8* %2573)
  %2574 = alloca i1
  store i1 false, i1* %2574
  %2575 = load %nyx_string*, %nyx_string** %2555
  %2576 = load %nyx_string*, %nyx_string** %2495
  %2577 = call i1 @nyx_string_equals(%nyx_string* %2575, %nyx_string* %2576)
  br i1 %2577, label %sc_and_rhs465, label %sc_and_end466
sc_and_rhs465:
  %2578 = load i8*, i8** %2405
  %2579 = load %nyx_string*, %nyx_string** %2543
  %2580 = call i8* @nyx_string_to_cstr(%nyx_string* %2579)
  %2581 = call i1 @nyx_map_contains_str(i8* %2578, i8* %2580)
  store i1 %2581, i1* %2574
  br label %sc_and_end466
sc_and_end466:
  %2582 = load i1, i1* %2574
  br i1 %2582, label %then467, label %else468
then467:
  %2583 = load i8*, i8** %2475
  %2584 = load %nyx_string*, %nyx_string** %2551
  %2585 = load %nyx_string*, %nyx_string** %2492
  %2586 = call i8* @nyx_string_to_cstr(%nyx_string* %2584)
  %2587 = bitcast %nyx_string* %2585 to i8*
  call void @nyx_map_insert_str(i8* %2583, i8* %2586, i8* %2587)
  br label %merge469
else468:
  br label %merge469
merge469:
  br label %merge464
else463:
  %2588 = load i8*, i8** %2473
  %2589 = load %nyx_string*, %nyx_string** %2543
  %2590 = load %nyx_string*, %nyx_string** %2492
  %2591 = call i8* @nyx_string_to_cstr(%nyx_string* %2589)
  %2592 = bitcast %nyx_string* %2590 to i8*
  call void @nyx_map_insert_str(i8* %2588, i8* %2591, i8* %2592)
  br label %merge464
merge464:
  br label %merge458
else457:
  br label %merge458
merge458:
  %2593 = load i64, i64* %2523
  %2594 = add i64 %2593, 1
  store i64 %2594, i64* %2523
  br label %while_cond453
while_end455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2595 = load i64, i64* %2344
  %2596 = add i64 %2595, 1
  store i64 %2596, i64* %2344
  br label %while_cond447
while_end449:
  %2597 = call { i64, i8* }* @cov_src_modules()
  %2598 = alloca { i64, i8* }*
  store { i64, i8* }* %2597, { i64, i8* }** %2598
  %2599 = load { i64, i8* }*, { i64, i8* }** %2598
  %2600 = call i64 @nyx_array_length({ i64, i8* }* %2599)
  %2601 = icmp eq i64 %2600, 0
  br i1 %2601, label %then470, label %else471
then470:
  %2602 = getelementptr [27 x i8], [27 x i8]* @.str274, i32 0, i32 0
  %2603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2602, i64 26)
  %2604 = call i8* @nyx_string_to_cstr(%nyx_string* %2603)
  call void @nyx_print_string(i8* %2604)
  ret i64 0
else471:
  br label %merge472
merge472:
  %2605 = load %nyx_string*, %nyx_string** %2324
  %2606 = load %nyx_string*, %nyx_string** %2329
  %2607 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2608 = load { i64, i8* }*, { i64, i8* }** %2598
  %2609 = call %nyx_string* @cov_universe(%nyx_string* %2605, %nyx_string* %2606, %nyx_string* %2607, { i64, i8* }* %2608)
  %2610 = alloca %nyx_string*
  store %nyx_string* %2609, %nyx_string** %2610
  %2611 = load %nyx_string*, %nyx_string** %2610
  %2612 = call i8* @nyx_string_to_cstr(%nyx_string* %2611)
  %2613 = call i1 @nyx_file_exists(i8* %2612)
  %2614 = xor i1 %2613, true
  br i1 %2614, label %then473, label %else474
then473:
  %2615 = getelementptr [68 x i8], [68 x i8]* @.str275, i32 0, i32 0
  %2616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2615, i64 67)
  %2617 = call i8* @nyx_string_to_cstr(%nyx_string* %2616)
  call void @nyx_print_string(i8* %2617)
  %2618 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2619 = getelementptr [14 x i8], [14 x i8]* @.str276, i32 0, i32 0
  %2620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2619, i64 13)
  %2621 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2620)
  %2622 = call i8* @nyx_string_to_cstr(%nyx_string* %2621)
  %2623 = call i1 @nyx_file_exists(i8* %2622)
  br i1 %2623, label %then476, label %else477
then476:
  %2624 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2625 = getelementptr [14 x i8], [14 x i8]* @.str277, i32 0, i32 0
  %2626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2625, i64 13)
  %2627 = call %nyx_string* @nyx_string_concat(%nyx_string* %2624, %nyx_string* %2626)
  %2628 = call i8* @nyx_string_to_cstr(%nyx_string* %2627)
  %2629 = call %nyx_string* @nyx_read_file(i8* %2628)
  %2630 = call i8* @nyx_string_to_cstr(%nyx_string* %2629)
  call void @nyx_print_string(i8* %2630)
  br label %merge478
else477:
  br label %merge478
merge478:
  ret i64 1
else474:
  br label %merge475
merge475:
  %2631 = load %nyx_string*, %nyx_string** %2610
  %2632 = call i8* @nyx_string_to_cstr(%nyx_string* %2631)
  %2633 = call %nyx_string* @nyx_read_file(i8* %2632)
  %2634 = getelementptr [2 x i8], [2 x i8]* @.str278, i32 0, i32 0
  %2635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2634, i64 1)
  %2636 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2633, %nyx_string* %2635)
  %2637 = alloca { i64, i8* }*
  store { i64, i8* }* %2636, { i64, i8* }** %2637
  %2638 = call { i64, i8* }* @nyx_array_new_ptr()
  %2639 = alloca { i64, i8* }*
  store { i64, i8* }* %2638, { i64, i8* }** %2639
  %2640 = alloca i64
  store i64 0, i64* %2640
  %2641 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %2642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2641, i64 2)
  %2643 = alloca %nyx_string*
  store %nyx_string* %2642, %nyx_string** %2643
  %2644 = getelementptr [7 x i8], [7 x i8]* @.str280, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2644, i64 6)
  %2646 = alloca %nyx_string*
  store %nyx_string* %2645, %nyx_string** %2646
  %2647 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2647, i64 5)
  %2649 = alloca %nyx_string*
  store %nyx_string* %2648, %nyx_string** %2649
  %2650 = getelementptr [9 x i8], [9 x i8]* @.str282, i32 0, i32 0
  %2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2650, i64 8)
  %2652 = alloca %nyx_string*
  store %nyx_string* %2651, %nyx_string** %2652
  %2653 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2653, i64 4)
  %2655 = alloca %nyx_string*
  store %nyx_string* %2654, %nyx_string** %2655
  %2656 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2656, i64 4)
  %2658 = alloca %nyx_string*
  store %nyx_string* %2657, %nyx_string** %2658
  %2659 = getelementptr [3 x i8], [3 x i8]* @.str285, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2659, i64 2)
  %2661 = alloca %nyx_string*
  store %nyx_string* %2660, %nyx_string** %2661
  %2662 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2662, i64 2)
  %2664 = alloca %nyx_string*
  store %nyx_string* %2663, %nyx_string** %2664
  %2665 = getelementptr [10 x i8], [10 x i8]* @.str287, i32 0, i32 0
  %2666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2665, i64 9)
  %2667 = alloca %nyx_string*
  store %nyx_string* %2666, %nyx_string** %2667
  %2668 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %2669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2668, i64 4)
  %2670 = alloca %nyx_string*
  store %nyx_string* %2669, %nyx_string** %2670
  %2671 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2671, i64 1)
  %2673 = alloca %nyx_string*
  store %nyx_string* %2672, %nyx_string** %2673
  %2674 = call i8* @llvm.stacksave()
  br label %while_cond479
while_cond479:
  %2675 = load i64, i64* %2640
  %2676 = load { i64, i8* }*, { i64, i8* }** %2637
  %2677 = call i64 @nyx_array_length({ i64, i8* }* %2676)
  %2678 = icmp slt i64 %2675, %2677
  br i1 %2678, label %while_body480, label %while_end481
while_body480:
  call void @llvm.stackrestore(i8* %2674)
  %2679 = load { i64, i8* }*, { i64, i8* }** %2637
  %2680 = load i64, i64* %2640
  %2681 = call i64 @nyx_array_get_checked({ i64, i8* }* %2679, i64 %2680, i64 2)
  %2682 = inttoptr i64 %2681 to %nyx_string*
  %2683 = alloca %nyx_string*
  store %nyx_string* %2682, %nyx_string** %2683
  %2684 = load %nyx_string*, %nyx_string** %2683
  %2685 = call { i64, i8* }* @cov_fields(%nyx_string* %2684)
  %2686 = alloca { i64, i8* }*
  store { i64, i8* }* %2685, { i64, i8* }** %2686
  %2687 = load { i64, i8* }*, { i64, i8* }** %2686
  %2688 = call i64 @nyx_array_length({ i64, i8* }* %2687)
  %2689 = icmp sge i64 %2688, 5
  br i1 %2689, label %then482, label %else483
then482:
  %2690 = load { i64, i8* }*, { i64, i8* }** %2686
  %2691 = call i64 @nyx_array_get_checked({ i64, i8* }* %2690, i64 0, i64 2)
  %2692 = inttoptr i64 %2691 to %nyx_string*
  %2693 = alloca %nyx_string*
  store %nyx_string* %2692, %nyx_string** %2693
  %2694 = load { i64, i8* }*, { i64, i8* }** %2686
  %2695 = call i64 @nyx_array_get_checked({ i64, i8* }* %2694, i64 1, i64 2)
  %2696 = inttoptr i64 %2695 to %nyx_string*
  %2697 = alloca %nyx_string*
  store %nyx_string* %2696, %nyx_string** %2697
  %2698 = load { i64, i8* }*, { i64, i8* }** %2686
  %2699 = call i64 @nyx_array_get_checked({ i64, i8* }* %2698, i64 2, i64 2)
  %2700 = inttoptr i64 %2699 to %nyx_string*
  %2701 = alloca %nyx_string*
  store %nyx_string* %2700, %nyx_string** %2701
  %2702 = load { i64, i8* }*, { i64, i8* }** %2686
  %2703 = call i64 @nyx_array_get_checked({ i64, i8* }* %2702, i64 3, i64 2)
  %2704 = inttoptr i64 %2703 to %nyx_string*
  %2705 = alloca %nyx_string*
  store %nyx_string* %2704, %nyx_string** %2705
  %2706 = load { i64, i8* }*, { i64, i8* }** %2686
  %2707 = call i64 @nyx_array_get_checked({ i64, i8* }* %2706, i64 4, i64 2)
  %2708 = inttoptr i64 %2707 to %nyx_string*
  %2709 = alloca %nyx_string*
  store %nyx_string* %2708, %nyx_string** %2709
  %2710 = alloca i1
  store i1 true, i1* %2710
  %2711 = alloca i1
  store i1 true, i1* %2711
  %2712 = alloca i1
  store i1 true, i1* %2712
  %2713 = load %nyx_string*, %nyx_string** %2709
  %2714 = load %nyx_string*, %nyx_string** %2643
  %2715 = call i1 @nyx_string_equals(%nyx_string* %2713, %nyx_string* %2714)
  br i1 %2715, label %sc_or_end486, label %sc_or_rhs485
sc_or_rhs485:
  %2716 = load %nyx_string*, %nyx_string** %2709
  %2717 = load %nyx_string*, %nyx_string** %2646
  %2718 = call i1 @nyx_string_equals(%nyx_string* %2716, %nyx_string* %2717)
  store i1 %2718, i1* %2712
  br label %sc_or_end486
sc_or_end486:
  %2719 = load i1, i1* %2712
  br i1 %2719, label %sc_or_end488, label %sc_or_rhs487
sc_or_rhs487:
  %2720 = load %nyx_string*, %nyx_string** %2709
  %2721 = load %nyx_string*, %nyx_string** %2649
  %2722 = call i1 @nyx_string_equals(%nyx_string* %2720, %nyx_string* %2721)
  store i1 %2722, i1* %2711
  br label %sc_or_end488
sc_or_end488:
  %2723 = load i1, i1* %2711
  br i1 %2723, label %sc_or_end490, label %sc_or_rhs489
sc_or_rhs489:
  %2724 = load %nyx_string*, %nyx_string** %2709
  %2725 = load %nyx_string*, %nyx_string** %2652
  %2726 = call i1 @nyx_string_equals(%nyx_string* %2724, %nyx_string* %2725)
  store i1 %2726, i1* %2710
  br label %sc_or_end490
sc_or_end490:
  %2727 = load i1, i1* %2710
  %2728 = alloca i1
  store i1 %2727, i1* %2728
  %2729 = alloca i1
  store i1 false, i1* %2729
  %2730 = alloca i1
  store i1 false, i1* %2730
  %2731 = load i1, i1* %2728
  br i1 %2731, label %sc_and_rhs491, label %sc_and_end492
sc_and_rhs491:
  %2732 = load %nyx_string*, %nyx_string** %2697
  %2733 = load %nyx_string*, %nyx_string** %2655
  %2734 = call i1 @nyx_string_starts_with(%nyx_string* %2732, %nyx_string* %2733)
  store i1 %2734, i1* %2730
  br label %sc_and_end492
sc_and_end492:
  %2735 = load i1, i1* %2730
  br i1 %2735, label %sc_and_rhs493, label %sc_and_end494
sc_and_rhs493:
  %2736 = load %nyx_string*, %nyx_string** %2705
  %2737 = load %nyx_string*, %nyx_string** %2658
  %2738 = call i1 @nyx_string_equals(%nyx_string* %2736, %nyx_string* %2737)
  %2739 = xor i1 %2738, true
  store i1 %2739, i1* %2729
  br label %sc_and_end494
sc_and_end494:
  %2740 = load i1, i1* %2729
  br i1 %2740, label %then495, label %else496
then495:
  %2741 = load i8*, i8** %2405
  %2742 = load %nyx_string*, %nyx_string** %2693
  %2743 = call i8* @nyx_string_to_cstr(%nyx_string* %2742)
  %2744 = call i1 @nyx_map_contains_str(i8* %2741, i8* %2743)
  %2745 = alloca i1
  store i1 %2744, i1* %2745
  %2746 = load %nyx_string*, %nyx_string** %2709
  %2747 = load %nyx_string*, %nyx_string** %2652
  %2748 = call i1 @nyx_string_equals(%nyx_string* %2746, %nyx_string* %2747)
  br i1 %2748, label %then498, label %else499
then498:
  %2749 = load i8*, i8** %2475
  %2750 = load %nyx_string*, %nyx_string** %2693
  %2751 = call i8* @nyx_string_to_cstr(%nyx_string* %2750)
  %2752 = call i1 @nyx_map_contains_str(i8* %2749, i8* %2751)
  store i1 %2752, i1* %2745
  br label %merge500
else499:
  br label %merge500
merge500:
  %2753 = load %nyx_string*, %nyx_string** %2661
  %2754 = alloca %nyx_string*
  store %nyx_string* %2753, %nyx_string** %2754
  %2755 = load i1, i1* %2745
  br i1 %2755, label %then501, label %else502
then501:
  %2756 = load %nyx_string*, %nyx_string** %2664
  store %nyx_string* %2756, %nyx_string** %2754
  br label %merge503
else502:
  %2757 = alloca i1
  store i1 false, i1* %2757
  %2758 = load i8*, i8** %2471
  %2759 = load %nyx_string*, %nyx_string** %2693
  %2760 = call i8* @nyx_string_to_cstr(%nyx_string* %2759)
  %2761 = call i1 @nyx_map_contains_str(i8* %2758, i8* %2760)
  %2762 = xor i1 %2761, true
  br i1 %2762, label %sc_and_rhs504, label %sc_and_end505
sc_and_rhs504:
  %2763 = load i8*, i8** %2473
  %2764 = load %nyx_string*, %nyx_string** %2693
  %2765 = call i8* @nyx_string_to_cstr(%nyx_string* %2764)
  %2766 = call i1 @nyx_map_contains_str(i8* %2763, i8* %2765)
  store i1 %2766, i1* %2757
  br label %sc_and_end505
sc_and_end505:
  %2767 = load i1, i1* %2757
  br i1 %2767, label %then506, label %else507
then506:
  %2768 = load %nyx_string*, %nyx_string** %2667
  store %nyx_string* %2768, %nyx_string** %2754
  br label %merge508
else507:
  br label %merge508
merge508:
  br label %merge503
merge503:
  %2769 = load { i64, i8* }*, { i64, i8* }** %2639
  %2770 = load %nyx_string*, %nyx_string** %2697
  %2771 = load %nyx_string*, %nyx_string** %2670
  %2772 = call %nyx_string* @nyx_string_concat(%nyx_string* %2770, %nyx_string* %2771)
  %2773 = load %nyx_string*, %nyx_string** %2701
  %2774 = call i64 @nyx_string_to_int(%nyx_string* %2773)
  %2775 = call %nyx_string* @cov_pad(i64 %2774)
  %2776 = call %nyx_string* @nyx_string_concat(%nyx_string* %2772, %nyx_string* %2775)
  %2777 = load %nyx_string*, %nyx_string** %2673
  %2778 = call %nyx_string* @nyx_string_concat(%nyx_string* %2776, %nyx_string* %2777)
  %2779 = load %nyx_string*, %nyx_string** %2705
  %2780 = call %nyx_string* @nyx_string_concat(%nyx_string* %2778, %nyx_string* %2779)
  %2781 = load %nyx_string*, %nyx_string** %2673
  %2782 = call %nyx_string* @nyx_string_concat(%nyx_string* %2780, %nyx_string* %2781)
  %2783 = load %nyx_string*, %nyx_string** %2754
  %2784 = call %nyx_string* @nyx_string_concat(%nyx_string* %2782, %nyx_string* %2783)
  %2785 = load %nyx_string*, %nyx_string** %2673
  %2786 = call %nyx_string* @nyx_string_concat(%nyx_string* %2784, %nyx_string* %2785)
  %2787 = load %nyx_string*, %nyx_string** %2697
  %2788 = call %nyx_string* @nyx_string_concat(%nyx_string* %2786, %nyx_string* %2787)
  %2789 = ptrtoint %nyx_string* %2788 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2769, i64 %2789, i64 2)
  br label %merge497
else496:
  br label %merge497
merge497:
  br label %merge484
else483:
  br label %merge484
merge484:
  %2790 = load i64, i64* %2640
  %2791 = add i64 %2790, 1
  store i64 %2791, i64* %2640
  br label %while_cond479
while_end481:
  %2792 = load { i64, i8* }*, { i64, i8* }** %2639
  %2793 = call { i64, i8* }* @sort_str({ i64, i8* }* %2792)
  %2794 = alloca { i64, i8* }*
  store { i64, i8* }* %2793, { i64, i8* }** %2794
  %2795 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2795, i64 0)
  %2797 = alloca %nyx_string*
  store %nyx_string* %2796, %nyx_string** %2797
  %2798 = alloca i64
  store i64 0, i64* %2798
  %2799 = alloca i64
  store i64 0, i64* %2799
  %2800 = alloca i64
  store i64 0, i64* %2800
  %2801 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2801, i64 0)
  %2803 = alloca %nyx_string*
  store %nyx_string* %2802, %nyx_string** %2803
  %2804 = getelementptr [10 x i8], [10 x i8]* @.str292, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2804, i64 9)
  %2806 = alloca %nyx_string*
  store %nyx_string* %2805, %nyx_string** %2806
  %2807 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2807, i64 1)
  %2809 = alloca %nyx_string*
  store %nyx_string* %2808, %nyx_string** %2809
  %2810 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2810, i64 2)
  %2812 = alloca %nyx_string*
  store %nyx_string* %2811, %nyx_string** %2812
  %2813 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2813, i64 1)
  %2815 = alloca %nyx_string*
  store %nyx_string* %2814, %nyx_string** %2815
  %2816 = getelementptr [5 x i8], [5 x i8]* @.str296, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2816, i64 4)
  %2818 = alloca %nyx_string*
  store %nyx_string* %2817, %nyx_string** %2818
  %2819 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2819, i64 1)
  %2821 = alloca %nyx_string*
  store %nyx_string* %2820, %nyx_string** %2821
  %2822 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %2823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2822, i64 1)
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %2826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2825, i64 3)
  %2827 = alloca %nyx_string*
  store %nyx_string* %2826, %nyx_string** %2827
  %2828 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %2829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2828, i64 1)
  %2830 = alloca %nyx_string*
  store %nyx_string* %2829, %nyx_string** %2830
  %2831 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2831, i64 1)
  %2833 = alloca %nyx_string*
  store %nyx_string* %2832, %nyx_string** %2833
  %2834 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %2835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2834, i64 5)
  %2836 = alloca %nyx_string*
  store %nyx_string* %2835, %nyx_string** %2836
  %2837 = getelementptr [3 x i8], [3 x i8]* @.str303, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2837, i64 2)
  %2839 = alloca %nyx_string*
  store %nyx_string* %2838, %nyx_string** %2839
  %2840 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %2841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2840, i64 2)
  %2842 = alloca %nyx_string*
  store %nyx_string* %2841, %nyx_string** %2842
  %2843 = getelementptr [2 x i8], [2 x i8]* @.str305, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2843, i64 1)
  %2845 = alloca %nyx_string*
  store %nyx_string* %2844, %nyx_string** %2845
  %2846 = getelementptr [10 x i8], [10 x i8]* @.str306, i32 0, i32 0
  %2847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2846, i64 9)
  %2848 = alloca %nyx_string*
  store %nyx_string* %2847, %nyx_string** %2848
  %2849 = getelementptr [29 x i8], [29 x i8]* @.str307, i32 0, i32 0
  %2850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2849, i64 28)
  %2851 = alloca %nyx_string*
  store %nyx_string* %2850, %nyx_string** %2851
  %2852 = getelementptr [3 x i8], [3 x i8]* @.str308, i32 0, i32 0
  %2853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2852, i64 2)
  %2854 = alloca %nyx_string*
  store %nyx_string* %2853, %nyx_string** %2854
  %2855 = getelementptr [38 x i8], [38 x i8]* @.str309, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2855, i64 37)
  %2857 = alloca %nyx_string*
  store %nyx_string* %2856, %nyx_string** %2857
  %2858 = getelementptr [4 x i8], [4 x i8]* @.str310, i32 0, i32 0
  %2859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2858, i64 3)
  %2860 = alloca %nyx_string*
  store %nyx_string* %2859, %nyx_string** %2860
  %2861 = getelementptr [5 x i8], [5 x i8]* @.str311, i32 0, i32 0
  %2862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2861, i64 4)
  %2863 = alloca %nyx_string*
  store %nyx_string* %2862, %nyx_string** %2863
  %2864 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %2865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2864, i64 5)
  %2866 = alloca %nyx_string*
  store %nyx_string* %2865, %nyx_string** %2866
  %2867 = getelementptr [16 x i8], [16 x i8]* @.str313, i32 0, i32 0
  %2868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2867, i64 15)
  %2869 = alloca %nyx_string*
  store %nyx_string* %2868, %nyx_string** %2869
  %2870 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2871 = load i64, i64* %2800
  %2872 = load { i64, i8* }*, { i64, i8* }** %2794
  %2873 = call i64 @nyx_array_length({ i64, i8* }* %2872)
  %2874 = icmp slt i64 %2871, %2873
  br i1 %2874, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2870)
  %2875 = load { i64, i8* }*, { i64, i8* }** %2794
  %2876 = load i64, i64* %2800
  %2877 = call i64 @nyx_array_get_checked({ i64, i8* }* %2875, i64 %2876, i64 2)
  %2878 = inttoptr i64 %2877 to %nyx_string*
  %2879 = alloca %nyx_string*
  store %nyx_string* %2878, %nyx_string** %2879
  %2880 = load %nyx_string*, %nyx_string** %2879
  %2881 = call { i64, i8* }* @cov_fields(%nyx_string* %2880)
  %2882 = alloca { i64, i8* }*
  store { i64, i8* }* %2881, { i64, i8* }** %2882
  %2883 = load { i64, i8* }*, { i64, i8* }** %2882
  %2884 = call i64 @nyx_array_get_checked({ i64, i8* }* %2883, i64 0, i64 2)
  %2885 = inttoptr i64 %2884 to %nyx_string*
  %2886 = alloca %nyx_string*
  store %nyx_string* %2885, %nyx_string** %2886
  %2887 = load { i64, i8* }*, { i64, i8* }** %2882
  %2888 = call i64 @nyx_array_get_checked({ i64, i8* }* %2887, i64 4, i64 2)
  %2889 = inttoptr i64 %2888 to %nyx_string*
  %2890 = alloca %nyx_string*
  store %nyx_string* %2889, %nyx_string** %2890
  %2891 = alloca i64
  store i64 0, i64* %2891
  %2892 = alloca i64
  store i64 0, i64* %2892
  %2893 = alloca i64
  store i64 0, i64* %2893
  %2894 = call { i64, i8* }* @nyx_array_new_ptr()
  %2895 = alloca { i64, i8* }*
  store { i64, i8* }* %2894, { i64, i8* }** %2895
  %2896 = load %nyx_string*, %nyx_string** %2803
  %2897 = alloca %nyx_string*
  store %nyx_string* %2896, %nyx_string** %2897
  %2898 = load %nyx_string*, %nyx_string** %2803
  %2899 = alloca %nyx_string*
  store %nyx_string* %2898, %nyx_string** %2899
  %2900 = load i64, i64* %2800
  %2901 = alloca i64
  store i64 %2900, i64* %2901
  %2902 = alloca i1
  store i1 1, i1* %2902
  %2903 = call i8* @llvm.stacksave()
  br label %while_cond512
while_cond512:
  %2904 = alloca i1
  store i1 false, i1* %2904
  %2905 = load i64, i64* %2901
  %2906 = load { i64, i8* }*, { i64, i8* }** %2794
  %2907 = call i64 @nyx_array_length({ i64, i8* }* %2906)
  %2908 = icmp slt i64 %2905, %2907
  br i1 %2908, label %sc_and_rhs515, label %sc_and_end516
sc_and_rhs515:
  %2909 = load i1, i1* %2902
  store i1 %2909, i1* %2904
  br label %sc_and_end516
sc_and_end516:
  %2910 = load i1, i1* %2904
  br i1 %2910, label %while_body513, label %while_end514
while_body513:
  call void @llvm.stackrestore(i8* %2903)
  %2911 = load { i64, i8* }*, { i64, i8* }** %2794
  %2912 = load i64, i64* %2901
  %2913 = call i64 @nyx_array_get_checked({ i64, i8* }* %2911, i64 %2912, i64 2)
  %2914 = inttoptr i64 %2913 to %nyx_string*
  %2915 = alloca %nyx_string*
  store %nyx_string* %2914, %nyx_string** %2915
  %2916 = load %nyx_string*, %nyx_string** %2915
  %2917 = call { i64, i8* }* @cov_fields(%nyx_string* %2916)
  %2918 = alloca { i64, i8* }*
  store { i64, i8* }* %2917, { i64, i8* }** %2918
  %2919 = load { i64, i8* }*, { i64, i8* }** %2918
  %2920 = call i64 @nyx_array_get_checked({ i64, i8* }* %2919, i64 0, i64 2)
  %2921 = inttoptr i64 %2920 to %nyx_string*
  %2922 = alloca %nyx_string*
  store %nyx_string* %2921, %nyx_string** %2922
  %2923 = load %nyx_string*, %nyx_string** %2922
  %2924 = load %nyx_string*, %nyx_string** %2886
  %2925 = call i1 @nyx_string_equals(%nyx_string* %2923, %nyx_string* %2924)
  %2926 = xor i1 %2925, true
  br i1 %2926, label %then517, label %else518
then517:
  store i1 0, i1* %2902
  br label %merge519
else518:
  %2927 = load { i64, i8* }*, { i64, i8* }** %2918
  %2928 = call i64 @nyx_array_get({ i64, i8* }* %2927, i64 1)
  %2929 = inttoptr i64 %2928 to %nyx_string*
  %2930 = call i64 @nyx_string_to_int(%nyx_string* %2929)
  %2931 = alloca i64
  store i64 %2930, i64* %2931
  %2932 = load { i64, i8* }*, { i64, i8* }** %2918
  %2933 = call i64 @nyx_array_get_checked({ i64, i8* }* %2932, i64 2, i64 2)
  %2934 = inttoptr i64 %2933 to %nyx_string*
  %2935 = alloca %nyx_string*
  store %nyx_string* %2934, %nyx_string** %2935
  %2936 = load { i64, i8* }*, { i64, i8* }** %2918
  %2937 = call i64 @nyx_array_get_checked({ i64, i8* }* %2936, i64 3, i64 2)
  %2938 = inttoptr i64 %2937 to %nyx_string*
  %2939 = alloca %nyx_string*
  store %nyx_string* %2938, %nyx_string** %2939
  %2940 = load %nyx_string*, %nyx_string** %2939
  %2941 = load %nyx_string*, %nyx_string** %2806
  %2942 = call i1 @nyx_string_equals(%nyx_string* %2940, %nyx_string* %2941)
  br i1 %2942, label %then520, label %else521
then520:
  %2943 = load i64, i64* %2893
  %2944 = add i64 %2943, 1
  store i64 %2944, i64* %2893
  br label %merge522
else521:
  %2945 = load i64, i64* %2892
  %2946 = add i64 %2945, 1
  store i64 %2946, i64* %2892
  %2947 = load %nyx_string*, %nyx_string** %2809
  %2948 = alloca %nyx_string*
  store %nyx_string* %2947, %nyx_string** %2948
  %2949 = load %nyx_string*, %nyx_string** %2939
  %2950 = load %nyx_string*, %nyx_string** %2812
  %2951 = call i1 @nyx_string_equals(%nyx_string* %2949, %nyx_string* %2950)
  br i1 %2951, label %then523, label %else524
then523:
  %2952 = load i64, i64* %2891
  %2953 = add i64 %2952, 1
  store i64 %2953, i64* %2891
  %2954 = load %nyx_string*, %nyx_string** %2815
  store %nyx_string* %2954, %nyx_string** %2948
  br label %merge525
else524:
  %2955 = load { i64, i8* }*, { i64, i8* }** %2895
  %2956 = load %nyx_string*, %nyx_string** %2818
  %2957 = load %nyx_string*, %nyx_string** %2886
  %2958 = call %nyx_string* @nyx_string_concat(%nyx_string* %2956, %nyx_string* %2957)
  %2959 = load %nyx_string*, %nyx_string** %2821
  %2960 = call %nyx_string* @nyx_string_concat(%nyx_string* %2958, %nyx_string* %2959)
  %2961 = load i64, i64* %2931
  %2962 = call %nyx_string* @nyx_string_from_int(i64 %2961)
  %2963 = call %nyx_string* @nyx_string_concat(%nyx_string* %2960, %nyx_string* %2962)
  %2964 = load %nyx_string*, %nyx_string** %2824
  %2965 = call %nyx_string* @nyx_string_concat(%nyx_string* %2963, %nyx_string* %2964)
  %2966 = load %nyx_string*, %nyx_string** %2935
  %2967 = call %nyx_string* @nyx_string_concat(%nyx_string* %2965, %nyx_string* %2966)
  %2968 = ptrtoint %nyx_string* %2967 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2955, i64 %2968, i64 2)
  br label %merge525
merge525:
  %2969 = load %nyx_string*, %nyx_string** %2897
  %2970 = load %nyx_string*, %nyx_string** %2827
  %2971 = call %nyx_string* @nyx_string_concat(%nyx_string* %2969, %nyx_string* %2970)
  %2972 = load i64, i64* %2931
  %2973 = call %nyx_string* @nyx_string_from_int(i64 %2972)
  %2974 = call %nyx_string* @nyx_string_concat(%nyx_string* %2971, %nyx_string* %2973)
  %2975 = load %nyx_string*, %nyx_string** %2830
  %2976 = call %nyx_string* @nyx_string_concat(%nyx_string* %2974, %nyx_string* %2975)
  %2977 = load %nyx_string*, %nyx_string** %2935
  %2978 = call %nyx_string* @nyx_string_concat(%nyx_string* %2976, %nyx_string* %2977)
  %2979 = load %nyx_string*, %nyx_string** %2833
  %2980 = call %nyx_string* @nyx_string_concat(%nyx_string* %2978, %nyx_string* %2979)
  store %nyx_string* %2980, %nyx_string** %2897
  %2981 = load %nyx_string*, %nyx_string** %2899
  %2982 = load %nyx_string*, %nyx_string** %2836
  %2983 = call %nyx_string* @nyx_string_concat(%nyx_string* %2981, %nyx_string* %2982)
  %2984 = load %nyx_string*, %nyx_string** %2948
  %2985 = call %nyx_string* @nyx_string_concat(%nyx_string* %2983, %nyx_string* %2984)
  %2986 = load %nyx_string*, %nyx_string** %2830
  %2987 = call %nyx_string* @nyx_string_concat(%nyx_string* %2985, %nyx_string* %2986)
  %2988 = load %nyx_string*, %nyx_string** %2935
  %2989 = call %nyx_string* @nyx_string_concat(%nyx_string* %2987, %nyx_string* %2988)
  %2990 = load %nyx_string*, %nyx_string** %2833
  %2991 = call %nyx_string* @nyx_string_concat(%nyx_string* %2989, %nyx_string* %2990)
  store %nyx_string* %2991, %nyx_string** %2899
  br label %merge522
merge522:
  %2992 = load i64, i64* %2901
  %2993 = add i64 %2992, 1
  store i64 %2993, i64* %2901
  br label %merge519
merge519:
  br label %while_cond512
while_end514:
  %2994 = load %nyx_string*, %nyx_string** %2839
  %2995 = load %nyx_string*, %nyx_string** %2886
  %2996 = call %nyx_string* @nyx_string_concat(%nyx_string* %2994, %nyx_string* %2995)
  %2997 = load %nyx_string*, %nyx_string** %2842
  %2998 = call %nyx_string* @nyx_string_concat(%nyx_string* %2996, %nyx_string* %2997)
  %2999 = load i64, i64* %2891
  %3000 = call %nyx_string* @nyx_string_from_int(i64 %2999)
  %3001 = call %nyx_string* @nyx_string_concat(%nyx_string* %2998, %nyx_string* %3000)
  %3002 = load %nyx_string*, %nyx_string** %2845
  %3003 = call %nyx_string* @nyx_string_concat(%nyx_string* %3001, %nyx_string* %3002)
  %3004 = load i64, i64* %2892
  %3005 = call %nyx_string* @nyx_string_from_int(i64 %3004)
  %3006 = call %nyx_string* @nyx_string_concat(%nyx_string* %3003, %nyx_string* %3005)
  %3007 = load %nyx_string*, %nyx_string** %2848
  %3008 = call %nyx_string* @nyx_string_concat(%nyx_string* %3006, %nyx_string* %3007)
  %3009 = alloca %nyx_string*
  store %nyx_string* %3008, %nyx_string** %3009
  %3010 = load i8*, i8** %2477
  %3011 = load %nyx_string*, %nyx_string** %2890
  %3012 = call i8* @nyx_string_to_cstr(%nyx_string* %3011)
  %3013 = call i1 @nyx_map_contains_str(i8* %3010, i8* %3012)
  %3014 = xor i1 %3013, true
  br i1 %3014, label %then526, label %else527
then526:
  %3015 = load %nyx_string*, %nyx_string** %3009
  %3016 = load %nyx_string*, %nyx_string** %2851
  %3017 = call %nyx_string* @nyx_string_concat(%nyx_string* %3015, %nyx_string* %3016)
  store %nyx_string* %3017, %nyx_string** %3009
  br label %merge528
else527:
  br label %merge528
merge528:
  %3018 = load i64, i64* %2893
  %3019 = icmp sgt i64 %3018, 0
  br i1 %3019, label %then529, label %else530
then529:
  %3020 = load %nyx_string*, %nyx_string** %3009
  %3021 = load %nyx_string*, %nyx_string** %2854
  %3022 = call %nyx_string* @nyx_string_concat(%nyx_string* %3020, %nyx_string* %3021)
  %3023 = load i64, i64* %2893
  %3024 = call %nyx_string* @nyx_string_from_int(i64 %3023)
  %3025 = call %nyx_string* @nyx_string_concat(%nyx_string* %3022, %nyx_string* %3024)
  %3026 = load %nyx_string*, %nyx_string** %2857
  %3027 = call %nyx_string* @nyx_string_concat(%nyx_string* %3025, %nyx_string* %3026)
  store %nyx_string* %3027, %nyx_string** %3009
  br label %merge531
else530:
  br label %merge531
merge531:
  %3028 = load %nyx_string*, %nyx_string** %3009
  %3029 = call i8* @nyx_string_to_cstr(%nyx_string* %3028)
  call void @nyx_print_string(i8* %3029)
  %3030 = alloca i64
  store i64 0, i64* %3030
  %3031 = call i8* @llvm.stacksave()
  br label %while_cond532
while_cond532:
  %3032 = load i64, i64* %3030
  %3033 = load { i64, i8* }*, { i64, i8* }** %2895
  %3034 = call i64 @nyx_array_length({ i64, i8* }* %3033)
  %3035 = icmp slt i64 %3032, %3034
  br i1 %3035, label %while_body533, label %while_end534
while_body533:
  call void @llvm.stackrestore(i8* %3031)
  %3036 = load { i64, i8* }*, { i64, i8* }** %2895
  %3037 = load i64, i64* %3030
  %3038 = call i64 @nyx_array_get_checked({ i64, i8* }* %3036, i64 %3037, i64 2)
  %3039 = inttoptr i64 %3038 to %nyx_string*
  %3040 = alloca %nyx_string*
  store %nyx_string* %3039, %nyx_string** %3040
  %3041 = load %nyx_string*, %nyx_string** %3040
  %3042 = call i8* @nyx_string_to_cstr(%nyx_string* %3041)
  call void @nyx_print_string(i8* %3042)
  %3043 = load i64, i64* %3030
  %3044 = add i64 %3043, 1
  store i64 %3044, i64* %3030
  br label %while_cond532
while_end534:
  %3045 = load i64, i64* %2798
  %3046 = load i64, i64* %2891
  %3047 = add i64 %3045, %3046
  store i64 %3047, i64* %2798
  %3048 = load i64, i64* %2799
  %3049 = load i64, i64* %2892
  %3050 = add i64 %3048, %3049
  store i64 %3050, i64* %2799
  %3051 = load %nyx_string*, %nyx_string** %2797
  %3052 = load %nyx_string*, %nyx_string** %2860
  %3053 = call %nyx_string* @nyx_string_concat(%nyx_string* %3051, %nyx_string* %3052)
  %3054 = load %nyx_string*, %nyx_string** %2886
  %3055 = call %nyx_string* @nyx_string_concat(%nyx_string* %3053, %nyx_string* %3054)
  %3056 = load %nyx_string*, %nyx_string** %2833
  %3057 = call %nyx_string* @nyx_string_concat(%nyx_string* %3055, %nyx_string* %3056)
  %3058 = load %nyx_string*, %nyx_string** %2897
  %3059 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3058)
  %3060 = load %nyx_string*, %nyx_string** %2899
  %3061 = call %nyx_string* @nyx_string_concat(%nyx_string* %3059, %nyx_string* %3060)
  %3062 = load %nyx_string*, %nyx_string** %2863
  %3063 = call %nyx_string* @nyx_string_concat(%nyx_string* %3061, %nyx_string* %3062)
  %3064 = load i64, i64* %2892
  %3065 = call %nyx_string* @nyx_string_from_int(i64 %3064)
  %3066 = call %nyx_string* @nyx_string_concat(%nyx_string* %3063, %nyx_string* %3065)
  %3067 = load %nyx_string*, %nyx_string** %2866
  %3068 = call %nyx_string* @nyx_string_concat(%nyx_string* %3066, %nyx_string* %3067)
  %3069 = load i64, i64* %2891
  %3070 = call %nyx_string* @nyx_string_from_int(i64 %3069)
  %3071 = call %nyx_string* @nyx_string_concat(%nyx_string* %3068, %nyx_string* %3070)
  %3072 = load %nyx_string*, %nyx_string** %2869
  %3073 = call %nyx_string* @nyx_string_concat(%nyx_string* %3071, %nyx_string* %3072)
  store %nyx_string* %3073, %nyx_string** %2797
  %3074 = load i64, i64* %2901
  store i64 %3074, i64* %2800
  br label %while_cond509
while_end511:
  %3075 = load { i64, i8* }*, { i64, i8* }** %2343
  %3076 = call i64 @nyx_array_length({ i64, i8* }* %3075)
  %3077 = icmp sgt i64 %3076, 0
  br i1 %3077, label %then535, label %else536
then535:
  %3078 = getelementptr [70 x i8], [70 x i8]* @.str314, i32 0, i32 0
  %3079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3078, i64 69)
  %3080 = call i8* @nyx_string_to_cstr(%nyx_string* %3079)
  call void @nyx_print_string(i8* %3080)
  %3081 = alloca i64
  store i64 0, i64* %3081
  %3082 = getelementptr [5 x i8], [5 x i8]* @.str315, i32 0, i32 0
  %3083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3082, i64 4)
  %3084 = alloca %nyx_string*
  store %nyx_string* %3083, %nyx_string** %3084
  %3085 = call i8* @llvm.stacksave()
  br label %while_cond538
while_cond538:
  %3086 = load i64, i64* %3081
  %3087 = load { i64, i8* }*, { i64, i8* }** %2343
  %3088 = call i64 @nyx_array_length({ i64, i8* }* %3087)
  %3089 = icmp slt i64 %3086, %3088
  br i1 %3089, label %while_body539, label %while_end540
while_body539:
  call void @llvm.stackrestore(i8* %3085)
  %3090 = load { i64, i8* }*, { i64, i8* }** %2343
  %3091 = load i64, i64* %3081
  %3092 = call i64 @nyx_array_get_checked({ i64, i8* }* %3090, i64 %3091, i64 2)
  %3093 = inttoptr i64 %3092 to %nyx_string*
  %3094 = alloca %nyx_string*
  store %nyx_string* %3093, %nyx_string** %3094
  %3095 = load %nyx_string*, %nyx_string** %3084
  %3096 = load %nyx_string*, %nyx_string** %3094
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3095, %nyx_string* %3096)
  %3098 = call i8* @nyx_string_to_cstr(%nyx_string* %3097)
  call void @nyx_print_string(i8* %3098)
  %3099 = load i64, i64* %3081
  %3100 = add i64 %3099, 1
  store i64 %3100, i64* %3081
  br label %while_cond538
while_end540:
  br label %merge537
else536:
  br label %merge537
merge537:
  %3101 = getelementptr [10 x i8], [10 x i8]* @.str316, i32 0, i32 0
  %3102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3101, i64 9)
  %3103 = load i64, i64* %2798
  %3104 = call %nyx_string* @nyx_string_from_int(i64 %3103)
  %3105 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3104)
  %3106 = getelementptr [2 x i8], [2 x i8]* @.str317, i32 0, i32 0
  %3107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3106, i64 1)
  %3108 = call %nyx_string* @nyx_string_concat(%nyx_string* %3105, %nyx_string* %3107)
  %3109 = load i64, i64* %2799
  %3110 = call %nyx_string* @nyx_string_from_int(i64 %3109)
  %3111 = call %nyx_string* @nyx_string_concat(%nyx_string* %3108, %nyx_string* %3110)
  %3112 = getelementptr [20 x i8], [20 x i8]* @.str318, i32 0, i32 0
  %3113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3112, i64 19)
  %3114 = call %nyx_string* @nyx_string_concat(%nyx_string* %3111, %nyx_string* %3113)
  %3115 = call i8* @nyx_string_to_cstr(%nyx_string* %3114)
  call void @nyx_print_string(i8* %3115)
  %3116 = load i1, i1* %want_lcov.ptr
  br i1 %3116, label %then541, label %else542
then541:
  %3117 = getelementptr [11 x i8], [11 x i8]* @.str319, i32 0, i32 0
  %3118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3117, i64 10)
  %3119 = load %nyx_string*, %nyx_string** %2329
  %3120 = call %nyx_string* @nyx_string_concat(%nyx_string* %3118, %nyx_string* %3119)
  %3121 = getelementptr [9 x i8], [9 x i8]* @.str320, i32 0, i32 0
  %3122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3121, i64 8)
  %3123 = call %nyx_string* @nyx_string_concat(%nyx_string* %3120, %nyx_string* %3122)
  %3124 = call i8* @nyx_string_to_cstr(%nyx_string* %3123)
  %3125 = call i64 @nyx_exec_code(i8* %3124)
  %3126 = load %nyx_string*, %nyx_string** %2329
  %3127 = getelementptr [22 x i8], [22 x i8]* @.str321, i32 0, i32 0
  %3128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3127, i64 21)
  %3129 = call %nyx_string* @nyx_string_concat(%nyx_string* %3126, %nyx_string* %3128)
  %3130 = load %nyx_string*, %nyx_string** %2797
  %3131 = ptrtoint %nyx_string* %3130 to i64
  %3132 = call i8* @nyx_string_to_cstr(%nyx_string* %3129)
  %3133 = inttoptr i64 %3131 to %nyx_string*
  %3134 = call i1 @nyx_write_file_safe(i8* %3132, %nyx_string* %3133)
  %3135 = getelementptr [29 x i8], [29 x i8]* @.str322, i32 0, i32 0
  %3136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3135, i64 28)
  %3137 = call i8* @nyx_string_to_cstr(%nyx_string* %3136)
  call void @nyx_print_string(i8* %3137)
  br label %merge543
else542:
  br label %merge543
merge543:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3138 = getelementptr [115 x i8], [115 x i8]* @.str323, i32 0, i32 0
  %3139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3138, i64 114)
  %3140 = call i8* @nyx_string_to_cstr(%nyx_string* %3139)
  call void @nyx_print_string(i8* %3140)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3141 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %3142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3141, i64 4)
  %3143 = load %nyx_string*, %nyx_string** %nh.ptr
  %3144 = call %nyx_string* @nyx_string_concat(%nyx_string* %3142, %nyx_string* %3143)
  %3145 = getelementptr [66 x i8], [66 x i8]* @.str325, i32 0, i32 0
  %3146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3145, i64 65)
  %3147 = call %nyx_string* @nyx_string_concat(%nyx_string* %3144, %nyx_string* %3146)
  %3148 = call i8* @nyx_string_to_cstr(%nyx_string* %3147)
  %3149 = call %nyx_string* @nyx_exec(i8* %3148)
  %3150 = call %nyx_string* @nyx_string_trim(%nyx_string* %3149)
  ret %nyx_string* %3150
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3151 = getelementptr [5 x i8], [5 x i8]* @.str326, i32 0, i32 0
  %3152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3151, i64 4)
  %3153 = load %nyx_string*, %nyx_string** %nh.ptr
  %3154 = call %nyx_string* @nyx_string_concat(%nyx_string* %3152, %nyx_string* %3153)
  %3155 = getelementptr [74 x i8], [74 x i8]* @.str327, i32 0, i32 0
  %3156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3155, i64 73)
  %3157 = call %nyx_string* @nyx_string_concat(%nyx_string* %3154, %nyx_string* %3156)
  %3158 = call i8* @nyx_string_to_cstr(%nyx_string* %3157)
  %3159 = call %nyx_string* @nyx_exec(i8* %3158)
  %3160 = call %nyx_string* @nyx_string_trim(%nyx_string* %3159)
  ret %nyx_string* %3160
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3161 = getelementptr [24 x i8], [24 x i8]* @.str328, i32 0, i32 0
  %3162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3161, i64 23)
  %3163 = call i8* @nyx_string_to_cstr(%nyx_string* %3162)
  call void @nyx_print_string(i8* %3163)
  %3164 = getelementptr [9 x i8], [9 x i8]* @.str329, i32 0, i32 0
  %3165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3164, i64 8)
  %3166 = call i8* @nyx_string_to_cstr(%nyx_string* %3165)
  %3167 = call %nyx_string* @nyx_getenv(i8* %3166)
  %3168 = alloca %nyx_string*
  store %nyx_string* %3167, %nyx_string** %3168
  %3169 = load %nyx_string*, %nyx_string** %3168
  %3170 = getelementptr [9 x i8], [9 x i8]* @.str330, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3170, i64 8)
  %3172 = call %nyx_string* @nyx_string_concat(%nyx_string* %3169, %nyx_string* %3171)
  %3173 = call i8* @nyx_string_to_cstr(%nyx_string* %3172)
  %3174 = call %nyx_string* @nyx_read_file(i8* %3173)
  %3175 = call %nyx_string* @nyx_string_trim(%nyx_string* %3174)
  %3176 = alloca %nyx_string*
  store %nyx_string* %3175, %nyx_string** %3176
  %3177 = load %nyx_string*, %nyx_string** %3168
  %3178 = call %nyx_string* @huella_compilador(%nyx_string* %3177)
  %3179 = alloca %nyx_string*
  store %nyx_string* %3178, %nyx_string** %3179
  %3180 = load %nyx_string*, %nyx_string** %3168
  %3181 = call %nyx_string* @huella_resto(%nyx_string* %3180)
  %3182 = alloca %nyx_string*
  store %nyx_string* %3181, %nyx_string** %3182
  %3183 = getelementptr [18 x i8], [18 x i8]* @.str331, i32 0, i32 0
  %3184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3183, i64 17)
  %3185 = load %nyx_string*, %nyx_string** %3176
  %3186 = call %nyx_string* @nyx_string_concat(%nyx_string* %3184, %nyx_string* %3185)
  %3187 = getelementptr [17 x i8], [17 x i8]* @.str332, i32 0, i32 0
  %3188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3187, i64 16)
  %3189 = call %nyx_string* @nyx_string_concat(%nyx_string* %3186, %nyx_string* %3188)
  %3190 = load %nyx_string*, %nyx_string** %3179
  %3191 = call %nyx_string* @nyx_string_concat(%nyx_string* %3189, %nyx_string* %3190)
  %3192 = getelementptr [2 x i8], [2 x i8]* @.str333, i32 0, i32 0
  %3193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3192, i64 1)
  %3194 = call %nyx_string* @nyx_string_concat(%nyx_string* %3191, %nyx_string* %3193)
  %3195 = call i8* @nyx_string_to_cstr(%nyx_string* %3194)
  call void @nyx_print_string(i8* %3195)
  %3196 = call %TestConfig @load_test_config()
  %3197 = alloca %TestConfig
  store %TestConfig %3196, %TestConfig* %3197
  %3198 = call { i64, i8* }* @nyx_get_args()
  %3199 = alloca { i64, i8* }*
  store { i64, i8* }* %3198, { i64, i8* }** %3199
  %3200 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %3201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3200, i64 0)
  %3202 = alloca %nyx_string*
  store %nyx_string* %3201, %nyx_string** %3202
  %3203 = alloca i64
  store i64 1, i64* %3203
  %3204 = getelementptr [9 x i8], [9 x i8]* @.str335, i32 0, i32 0
  %3205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3204, i64 8)
  %3206 = alloca %nyx_string*
  store %nyx_string* %3205, %nyx_string** %3206
  %3207 = getelementptr [10 x i8], [10 x i8]* @.str336, i32 0, i32 0
  %3208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3207, i64 9)
  %3209 = alloca %nyx_string*
  store %nyx_string* %3208, %nyx_string** %3209
  %3210 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %3211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3210, i64 2)
  %3212 = alloca %nyx_string*
  store %nyx_string* %3211, %nyx_string** %3212
  %3213 = getelementptr [10 x i8], [10 x i8]* @.str338, i32 0, i32 0
  %3214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3213, i64 9)
  %3215 = alloca %nyx_string*
  store %nyx_string* %3214, %nyx_string** %3215
  %3216 = getelementptr [10 x i8], [10 x i8]* @.str339, i32 0, i32 0
  %3217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3216, i64 9)
  %3218 = alloca %nyx_string*
  store %nyx_string* %3217, %nyx_string** %3218
  %3219 = getelementptr [11 x i8], [11 x i8]* @.str340, i32 0, i32 0
  %3220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3219, i64 10)
  %3221 = alloca %nyx_string*
  store %nyx_string* %3220, %nyx_string** %3221
  %3222 = getelementptr [16 x i8], [16 x i8]* @.str341, i32 0, i32 0
  %3223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3222, i64 15)
  %3224 = alloca %nyx_string*
  store %nyx_string* %3223, %nyx_string** %3224
  %3225 = getelementptr [8 x i8], [8 x i8]* @.str342, i32 0, i32 0
  %3226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3225, i64 7)
  %3227 = alloca %nyx_string*
  store %nyx_string* %3226, %nyx_string** %3227
  %3228 = getelementptr [12 x i8], [12 x i8]* @.str343, i32 0, i32 0
  %3229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3228, i64 11)
  %3230 = alloca %nyx_string*
  store %nyx_string* %3229, %nyx_string** %3230
  %3231 = getelementptr [24 x i8], [24 x i8]* @.str344, i32 0, i32 0
  %3232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3231, i64 23)
  %3233 = alloca %nyx_string*
  store %nyx_string* %3232, %nyx_string** %3233
  %3234 = getelementptr [106 x i8], [106 x i8]* @.str345, i32 0, i32 0
  %3235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3234, i64 105)
  %3236 = alloca %nyx_string*
  store %nyx_string* %3235, %nyx_string** %3236
  %3237 = getelementptr [9 x i8], [9 x i8]* @.str346, i32 0, i32 0
  %3238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3237, i64 8)
  %3239 = alloca %nyx_string*
  store %nyx_string* %3238, %nyx_string** %3239
  %3240 = getelementptr [10 x i8], [10 x i8]* @.str347, i32 0, i32 0
  %3241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3240, i64 9)
  %3242 = alloca %nyx_string*
  store %nyx_string* %3241, %nyx_string** %3242
  %3243 = getelementptr [2 x i8], [2 x i8]* @.str348, i32 0, i32 0
  %3244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3243, i64 1)
  %3245 = alloca %nyx_string*
  store %nyx_string* %3244, %nyx_string** %3245
  %3246 = getelementptr [4 x i8], [4 x i8]* @.str349, i32 0, i32 0
  %3247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3246, i64 3)
  %3248 = alloca %nyx_string*
  store %nyx_string* %3247, %nyx_string** %3248
  %3249 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %3250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3249, i64 1)
  %3251 = alloca %nyx_string*
  store %nyx_string* %3250, %nyx_string** %3251
  %3252 = call i8* @llvm.stacksave()
  br label %while_cond544
while_cond544:
  %3253 = load i64, i64* %3203
  %3254 = load { i64, i8* }*, { i64, i8* }** %3199
  %3255 = call i64 @nyx_array_length({ i64, i8* }* %3254)
  %3256 = icmp slt i64 %3253, %3255
  br i1 %3256, label %while_body545, label %while_end546
while_body545:
  call void @llvm.stackrestore(i8* %3252)
  %3257 = load { i64, i8* }*, { i64, i8* }** %3199
  %3258 = load i64, i64* %3203
  %3259 = call i64 @nyx_array_get_checked({ i64, i8* }* %3257, i64 %3258, i64 2)
  %3260 = inttoptr i64 %3259 to %nyx_string*
  %3261 = alloca %nyx_string*
  store %nyx_string* %3260, %nyx_string** %3261
  %3262 = alloca i1
  store i1 false, i1* %3262
  %3263 = load %nyx_string*, %nyx_string** %3261
  %3264 = load %nyx_string*, %nyx_string** %3206
  %3265 = call i1 @nyx_string_equals(%nyx_string* %3263, %nyx_string* %3264)
  br i1 %3265, label %sc_and_rhs547, label %sc_and_end548
sc_and_rhs547:
  %3266 = load i64, i64* %3203
  %3267 = add i64 %3266, 1
  %3268 = load { i64, i8* }*, { i64, i8* }** %3199
  %3269 = call i64 @nyx_array_length({ i64, i8* }* %3268)
  %3270 = icmp slt i64 %3267, %3269
  store i1 %3270, i1* %3262
  br label %sc_and_end548
sc_and_end548:
  %3271 = load i1, i1* %3262
  br i1 %3271, label %then549, label %else550
then549:
  %3272 = load i64, i64* %3203
  %3273 = add i64 %3272, 1
  store i64 %3273, i64* %3203
  %3274 = load { i64, i8* }*, { i64, i8* }** %3199
  %3275 = load i64, i64* %3203
  %3276 = call i64 @nyx_array_get_checked({ i64, i8* }* %3274, i64 %3275, i64 2)
  %3277 = inttoptr i64 %3276 to %nyx_string*
  %3278 = alloca %nyx_string*
  store %nyx_string* %3277, %nyx_string** %3278
  %3279 = load %nyx_string*, %nyx_string** %3278
  %3280 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 2
  store %nyx_string* %3279, %nyx_string** %3280
  br label %merge551
else550:
  %3281 = alloca i1
  store i1 true, i1* %3281
  %3282 = load %nyx_string*, %nyx_string** %3261
  %3283 = load %nyx_string*, %nyx_string** %3209
  %3284 = call i1 @nyx_string_equals(%nyx_string* %3282, %nyx_string* %3283)
  br i1 %3284, label %sc_or_end553, label %sc_or_rhs552
sc_or_rhs552:
  %3285 = load %nyx_string*, %nyx_string** %3261
  %3286 = load %nyx_string*, %nyx_string** %3212
  %3287 = call i1 @nyx_string_equals(%nyx_string* %3285, %nyx_string* %3286)
  store i1 %3287, i1* %3281
  br label %sc_or_end553
sc_or_end553:
  %3288 = load i1, i1* %3281
  br i1 %3288, label %then554, label %else555
then554:
  %3289 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 3
  store i1 1, i1* %3289
  br label %merge556
else555:
  %3290 = alloca i1
  store i1 false, i1* %3290
  %3291 = load %nyx_string*, %nyx_string** %3261
  %3292 = load %nyx_string*, %nyx_string** %3215
  %3293 = call i1 @nyx_string_equals(%nyx_string* %3291, %nyx_string* %3292)
  br i1 %3293, label %sc_and_rhs557, label %sc_and_end558
sc_and_rhs557:
  %3294 = load i64, i64* %3203
  %3295 = add i64 %3294, 1
  %3296 = load { i64, i8* }*, { i64, i8* }** %3199
  %3297 = call i64 @nyx_array_length({ i64, i8* }* %3296)
  %3298 = icmp slt i64 %3295, %3297
  store i1 %3298, i1* %3290
  br label %sc_and_end558
sc_and_end558:
  %3299 = load i1, i1* %3290
  br i1 %3299, label %then559, label %else560
then559:
  %3300 = load i64, i64* %3203
  %3301 = add i64 %3300, 1
  store i64 %3301, i64* %3203
  %3302 = load { i64, i8* }*, { i64, i8* }** %3199
  %3303 = load i64, i64* %3203
  %3304 = call i64 @nyx_array_get_checked({ i64, i8* }* %3302, i64 %3303, i64 2)
  %3305 = inttoptr i64 %3304 to %nyx_string*
  %3306 = alloca %nyx_string*
  store %nyx_string* %3305, %nyx_string** %3306
  %3307 = load %nyx_string*, %nyx_string** %3306
  %3308 = call i64 @nyx_string_to_int(%nyx_string* %3307)
  %3309 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 1
  store i64 %3308, i64* %3309
  br label %merge561
else560:
  %3310 = load %nyx_string*, %nyx_string** %3261
  %3311 = load %nyx_string*, %nyx_string** %3218
  %3312 = call i1 @nyx_string_equals(%nyx_string* %3310, %nyx_string* %3311)
  br i1 %3312, label %then562, label %else563
then562:
  %3313 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 7
  store i1 1, i1* %3313
  br label %merge564
else563:
  %3314 = load %nyx_string*, %nyx_string** %3261
  %3315 = load %nyx_string*, %nyx_string** %3221
  %3316 = call i1 @nyx_string_equals(%nyx_string* %3314, %nyx_string* %3315)
  br i1 %3316, label %then565, label %else566
then565:
  %3317 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 5
  store i1 1, i1* %3317
  br label %merge567
else566:
  %3318 = load %nyx_string*, %nyx_string** %3261
  %3319 = load %nyx_string*, %nyx_string** %3224
  %3320 = call i1 @nyx_string_equals(%nyx_string* %3318, %nyx_string* %3319)
  br i1 %3320, label %then568, label %else569
then568:
  %3321 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 5
  store i1 1, i1* %3321
  %3322 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 6
  store i1 1, i1* %3322
  br label %merge570
else569:
  %3323 = alloca i1
  store i1 true, i1* %3323
  %3324 = load %nyx_string*, %nyx_string** %3261
  %3325 = load %nyx_string*, %nyx_string** %3227
  %3326 = call i1 @nyx_string_equals(%nyx_string* %3324, %nyx_string* %3325)
  br i1 %3326, label %sc_or_end572, label %sc_or_rhs571
sc_or_rhs571:
  %3327 = load %nyx_string*, %nyx_string** %3261
  %3328 = load %nyx_string*, %nyx_string** %3230
  %3329 = call i1 @nyx_string_starts_with(%nyx_string* %3327, %nyx_string* %3328)
  store i1 %3329, i1* %3323
  br label %sc_or_end572
sc_or_end572:
  %3330 = load i1, i1* %3323
  br i1 %3330, label %then573, label %else574
then573:
  %3331 = load %nyx_string*, %nyx_string** %3233
  %3332 = load %nyx_string*, %nyx_string** %3261
  %3333 = call %nyx_string* @nyx_string_concat(%nyx_string* %3331, %nyx_string* %3332)
  %3334 = call i8* @nyx_string_to_cstr(%nyx_string* %3333)
  call void @nyx_print_string(i8* %3334)
  %3335 = load %nyx_string*, %nyx_string** %3236
  %3336 = call i8* @nyx_string_to_cstr(%nyx_string* %3335)
  call void @nyx_print_string(i8* %3336)
  %3337 = call i64 @print_valid_options()
  ret i64 1
else574:
  %3338 = alloca i1
  store i1 true, i1* %3338
  %3339 = load %nyx_string*, %nyx_string** %3261
  %3340 = load %nyx_string*, %nyx_string** %3239
  %3341 = call i1 @nyx_string_equals(%nyx_string* %3339, %nyx_string* %3340)
  br i1 %3341, label %sc_or_end577, label %sc_or_rhs576
sc_or_rhs576:
  %3342 = load %nyx_string*, %nyx_string** %3261
  %3343 = load %nyx_string*, %nyx_string** %3242
  %3344 = call i1 @nyx_string_starts_with(%nyx_string* %3342, %nyx_string* %3343)
  store i1 %3344, i1* %3338
  br label %sc_or_end577
sc_or_end577:
  %3345 = load i1, i1* %3338
  br i1 %3345, label %then578, label %else579
then578:
  %3346 = load %nyx_string*, %nyx_string** %3261
  store %nyx_string* %3346, %nyx_string** %3202
  %3347 = alloca i1
  store i1 false, i1* %3347
  %3348 = load %nyx_string*, %nyx_string** %3261
  %3349 = load %nyx_string*, %nyx_string** %3239
  %3350 = call i1 @nyx_string_equals(%nyx_string* %3348, %nyx_string* %3349)
  br i1 %3350, label %sc_and_rhs581, label %sc_and_end582
sc_and_rhs581:
  %3351 = load i64, i64* %3203
  %3352 = add i64 %3351, 1
  %3353 = load { i64, i8* }*, { i64, i8* }** %3199
  %3354 = call i64 @nyx_array_length({ i64, i8* }* %3353)
  %3355 = icmp slt i64 %3352, %3354
  store i1 %3355, i1* %3347
  br label %sc_and_end582
sc_and_end582:
  %3356 = load i1, i1* %3347
  br i1 %3356, label %then583, label %else584
then583:
  %3357 = load i64, i64* %3203
  %3358 = add i64 %3357, 1
  store i64 %3358, i64* %3203
  %3359 = load { i64, i8* }*, { i64, i8* }** %3199
  %3360 = load i64, i64* %3203
  %3361 = call i64 @nyx_array_get_checked({ i64, i8* }* %3359, i64 %3360, i64 2)
  %3362 = inttoptr i64 %3361 to %nyx_string*
  %3363 = alloca %nyx_string*
  store %nyx_string* %3362, %nyx_string** %3363
  %3364 = load %nyx_string*, %nyx_string** %3261
  %3365 = load %nyx_string*, %nyx_string** %3245
  %3366 = call %nyx_string* @nyx_string_concat(%nyx_string* %3364, %nyx_string* %3365)
  %3367 = load %nyx_string*, %nyx_string** %3363
  %3368 = call %nyx_string* @nyx_string_concat(%nyx_string* %3366, %nyx_string* %3367)
  store %nyx_string* %3368, %nyx_string** %3202
  br label %merge585
else584:
  br label %merge585
merge585:
  br label %merge580
else579:
  %3369 = alloca i1
  store i1 true, i1* %3369
  %3370 = load %nyx_string*, %nyx_string** %3261
  %3371 = load %nyx_string*, %nyx_string** %3206
  %3372 = call i1 @nyx_string_equals(%nyx_string* %3370, %nyx_string* %3371)
  br i1 %3372, label %sc_or_end587, label %sc_or_rhs586
sc_or_rhs586:
  %3373 = load %nyx_string*, %nyx_string** %3261
  %3374 = load %nyx_string*, %nyx_string** %3215
  %3375 = call i1 @nyx_string_equals(%nyx_string* %3373, %nyx_string* %3374)
  store i1 %3375, i1* %3369
  br label %sc_or_end587
sc_or_end587:
  %3376 = load i1, i1* %3369
  br i1 %3376, label %then588, label %else589
then588:
  br label %merge590
else589:
  %3377 = load %nyx_string*, %nyx_string** %3261
  %3378 = load %nyx_string*, %nyx_string** %3248
  %3379 = call i1 @nyx_string_ends_with(%nyx_string* %3377, %nyx_string* %3378)
  br i1 %3379, label %then591, label %else592
then591:
  %3380 = load %nyx_string*, %nyx_string** %3261
  %3381 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 4
  store %nyx_string* %3380, %nyx_string** %3381
  br label %merge593
else592:
  %3382 = load %nyx_string*, %nyx_string** %3261
  %3383 = load %nyx_string*, %nyx_string** %3251
  %3384 = call i1 @nyx_string_starts_with(%nyx_string* %3382, %nyx_string* %3383)
  br i1 %3384, label %then594, label %else595
then594:
  %3385 = load %nyx_string*, %nyx_string** %3233
  %3386 = load %nyx_string*, %nyx_string** %3261
  %3387 = call %nyx_string* @nyx_string_concat(%nyx_string* %3385, %nyx_string* %3386)
  %3388 = call i8* @nyx_string_to_cstr(%nyx_string* %3387)
  call void @nyx_print_string(i8* %3388)
  %3389 = call i64 @print_valid_options()
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
  %3390 = load i64, i64* %3203
  %3391 = add i64 %3390, 1
  store i64 %3391, i64* %3203
  br label %while_cond544
while_end546:
  %3392 = load %nyx_string*, %nyx_string** %3202
  %3393 = getelementptr [1 x i8], [1 x i8]* @.str351, i32 0, i32 0
  %3394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3393, i64 0)
  %3395 = call i1 @nyx_string_equals(%nyx_string* %3392, %nyx_string* %3394)
  %3396 = xor i1 %3395, true
  br i1 %3396, label %then597, label %else598
then597:
  %3397 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 5
  %3398 = load i1, i1* %3397
  br i1 %3398, label %then600, label %else601
then600:
  %3399 = getelementptr [47 x i8], [47 x i8]* @.str352, i32 0, i32 0
  %3400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3399, i64 46)
  %3401 = load %nyx_string*, %nyx_string** %3202
  %3402 = call %nyx_string* @nyx_string_concat(%nyx_string* %3400, %nyx_string* %3401)
  %3403 = getelementptr [58 x i8], [58 x i8]* @.str353, i32 0, i32 0
  %3404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3403, i64 57)
  %3405 = call %nyx_string* @nyx_string_concat(%nyx_string* %3402, %nyx_string* %3404)
  %3406 = call i8* @nyx_string_to_cstr(%nyx_string* %3405)
  call void @nyx_print_string(i8* %3406)
  br label %merge602
else601:
  %3407 = getelementptr [24 x i8], [24 x i8]* @.str354, i32 0, i32 0
  %3408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3407, i64 23)
  %3409 = load %nyx_string*, %nyx_string** %3202
  %3410 = call %nyx_string* @nyx_string_concat(%nyx_string* %3408, %nyx_string* %3409)
  %3411 = call i8* @nyx_string_to_cstr(%nyx_string* %3410)
  call void @nyx_print_string(i8* %3411)
  br label %merge602
merge602:
  %3412 = call i64 @print_valid_options()
  ret i64 1
else598:
  br label %merge599
merge599:
  %3413 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %3414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3413, i64 0)
  %3415 = alloca %nyx_string*
  store %nyx_string* %3414, %nyx_string** %3415
  %3416 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3416, i64 0)
  %3418 = alloca %nyx_string*
  store %nyx_string* %3417, %nyx_string** %3418
  %3419 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 5
  %3420 = load i1, i1* %3419
  br i1 %3420, label %then603, label %else604
then603:
  %3421 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3421, %nyx_string** %3415
  %3422 = load %nyx_string*, %nyx_string** %3415
  %3423 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %3424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3423, i64 0)
  %3425 = call i1 @nyx_string_equals(%nyx_string* %3422, %nyx_string* %3424)
  br i1 %3425, label %then606, label %else607
then606:
  %3426 = call %nyx_string* @cov_clang_major()
  %3427 = alloca %nyx_string*
  store %nyx_string* %3426, %nyx_string** %3427
  %3428 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %3429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3428, i64 4)
  %3430 = alloca %nyx_string*
  store %nyx_string* %3429, %nyx_string** %3430
  %3431 = load %nyx_string*, %nyx_string** %3427
  %3432 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %3433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3432, i64 0)
  %3434 = call i1 @nyx_string_equals(%nyx_string* %3431, %nyx_string* %3433)
  %3435 = xor i1 %3434, true
  br i1 %3435, label %then609, label %else610
then609:
  %3436 = getelementptr [6 x i8], [6 x i8]* @.str360, i32 0, i32 0
  %3437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3436, i64 5)
  %3438 = load %nyx_string*, %nyx_string** %3427
  %3439 = call %nyx_string* @nyx_string_concat(%nyx_string* %3437, %nyx_string* %3438)
  store %nyx_string* %3439, %nyx_string** %3430
  br label %merge611
else610:
  br label %merge611
merge611:
  %3440 = getelementptr [101 x i8], [101 x i8]* @.str361, i32 0, i32 0
  %3441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3440, i64 100)
  %3442 = call i8* @nyx_string_to_cstr(%nyx_string* %3441)
  call void @nyx_print_string(i8* %3442)
  %3443 = getelementptr [35 x i8], [35 x i8]* @.str362, i32 0, i32 0
  %3444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3443, i64 34)
  %3445 = load %nyx_string*, %nyx_string** %3430
  %3446 = call %nyx_string* @nyx_string_concat(%nyx_string* %3444, %nyx_string* %3445)
  %3447 = call i8* @nyx_string_to_cstr(%nyx_string* %3446)
  call void @nyx_print_string(i8* %3447)
  %3448 = getelementptr [82 x i8], [82 x i8]* @.str363, i32 0, i32 0
  %3449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3448, i64 81)
  %3450 = call i8* @nyx_string_to_cstr(%nyx_string* %3449)
  call void @nyx_print_string(i8* %3450)
  %3451 = getelementptr [82 x i8], [82 x i8]* @.str364, i32 0, i32 0
  %3452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3451, i64 81)
  %3453 = call i8* @nyx_string_to_cstr(%nyx_string* %3452)
  call void @nyx_print_string(i8* %3453)
  ret i64 1
else607:
  br label %merge608
merge608:
  %3454 = getelementptr [30 x i8], [30 x i8]* @.str365, i32 0, i32 0
  %3455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3454, i64 29)
  %3456 = call i8* @nyx_string_to_cstr(%nyx_string* %3455)
  %3457 = call %nyx_string* @nyx_exec(i8* %3456)
  %3458 = call %nyx_string* @nyx_string_trim(%nyx_string* %3457)
  store %nyx_string* %3458, %nyx_string** %3418
  %3459 = load %nyx_string*, %nyx_string** %3418
  %3460 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %3461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3460, i64 0)
  %3462 = call i1 @nyx_string_equals(%nyx_string* %3459, %nyx_string* %3461)
  br i1 %3462, label %then612, label %else613
then612:
  %3463 = getelementptr [55 x i8], [55 x i8]* @.str367, i32 0, i32 0
  %3464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3463, i64 54)
  %3465 = call i8* @nyx_string_to_cstr(%nyx_string* %3464)
  call void @nyx_print_string(i8* %3465)
  ret i64 1
else613:
  br label %merge614
merge614:
  br label %merge605
else604:
  br label %merge605
merge605:
  %3466 = call { i64, i8* }* @nyx_array_new_ptr()
  %3467 = alloca { i64, i8* }*
  store { i64, i8* }* %3466, { i64, i8* }** %3467
  %3468 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 4
  %3469 = load %nyx_string*, %nyx_string** %3468
  %3470 = getelementptr [1 x i8], [1 x i8]* @.str368, i32 0, i32 0
  %3471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3470, i64 0)
  %3472 = call i1 @nyx_string_equals(%nyx_string* %3469, %nyx_string* %3471)
  %3473 = xor i1 %3472, true
  br i1 %3473, label %then615, label %else616
then615:
  %3474 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 4
  %3475 = load %nyx_string*, %nyx_string** %3474
  %3476 = call i8* @nyx_string_to_cstr(%nyx_string* %3475)
  %3477 = call i1 @nyx_file_exists(i8* %3476)
  %3478 = xor i1 %3477, true
  br i1 %3478, label %then618, label %else619
then618:
  %3479 = getelementptr [24 x i8], [24 x i8]* @.str369, i32 0, i32 0
  %3480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3479, i64 23)
  %3481 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 4
  %3482 = load %nyx_string*, %nyx_string** %3481
  %3483 = call %nyx_string* @nyx_string_concat(%nyx_string* %3480, %nyx_string* %3482)
  %3484 = call i8* @nyx_string_to_cstr(%nyx_string* %3483)
  call void @nyx_print_string(i8* %3484)
  ret i64 1
else619:
  br label %merge620
merge620:
  %3485 = load { i64, i8* }*, { i64, i8* }** %3467
  %3486 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 4
  %3487 = load %nyx_string*, %nyx_string** %3486
  %3488 = ptrtoint %nyx_string* %3487 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3485, i64 %3488, i64 2)
  br label %merge617
else616:
  %3489 = load %TestConfig, %TestConfig* %3197
  %3490 = call { i64, i8* }* @discover_tests(%TestConfig %3489)
  store { i64, i8* }* %3490, { i64, i8* }** %3467
  br label %merge617
merge617:
  %3491 = load { i64, i8* }*, { i64, i8* }** %3467
  %3492 = call i64 @nyx_array_length({ i64, i8* }* %3491)
  %3493 = icmp eq i64 %3492, 0
  br i1 %3493, label %then621, label %else622
then621:
  %3494 = getelementptr [23 x i8], [23 x i8]* @.str370, i32 0, i32 0
  %3495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3494, i64 22)
  %3496 = call i8* @nyx_string_to_cstr(%nyx_string* %3495)
  call void @nyx_print_string(i8* %3496)
  %3497 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 2
  %3498 = load %nyx_string*, %nyx_string** %3497
  %3499 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %3500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3499, i64 0)
  %3501 = call i1 @nyx_string_equals(%nyx_string* %3498, %nyx_string* %3500)
  %3502 = xor i1 %3501, true
  br i1 %3502, label %then624, label %else625
then624:
  %3503 = getelementptr [12 x i8], [12 x i8]* @.str372, i32 0, i32 0
  %3504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3503, i64 11)
  %3505 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 2
  %3506 = load %nyx_string*, %nyx_string** %3505
  %3507 = call %nyx_string* @nyx_string_concat(%nyx_string* %3504, %nyx_string* %3506)
  %3508 = getelementptr [2 x i8], [2 x i8]* @.str373, i32 0, i32 0
  %3509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3508, i64 1)
  %3510 = call %nyx_string* @nyx_string_concat(%nyx_string* %3507, %nyx_string* %3509)
  %3511 = call i8* @nyx_string_to_cstr(%nyx_string* %3510)
  call void @nyx_print_string(i8* %3511)
  br label %merge626
else625:
  br label %merge626
merge626:
  %3512 = getelementptr [14 x i8], [14 x i8]* @.str374, i32 0, i32 0
  %3513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3512, i64 13)
  %3514 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 0
  %3515 = load %nyx_string*, %nyx_string** %3514
  %3516 = call %nyx_string* @nyx_string_concat(%nyx_string* %3513, %nyx_string* %3515)
  %3517 = getelementptr [2 x i8], [2 x i8]* @.str375, i32 0, i32 0
  %3518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3517, i64 1)
  %3519 = call %nyx_string* @nyx_string_concat(%nyx_string* %3516, %nyx_string* %3518)
  %3520 = call i8* @nyx_string_to_cstr(%nyx_string* %3519)
  call void @nyx_print_string(i8* %3520)
  ret i64 0
else622:
  br label %merge623
merge623:
  %3521 = getelementptr [9 x i8], [9 x i8]* @.str376, i32 0, i32 0
  %3522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3521, i64 8)
  %3523 = load { i64, i8* }*, { i64, i8* }** %3467
  %3524 = call i64 @nyx_array_length({ i64, i8* }* %3523)
  %3525 = call %nyx_string* @nyx_string_from_int(i64 %3524)
  %3526 = call %nyx_string* @nyx_string_concat(%nyx_string* %3522, %nyx_string* %3525)
  %3527 = getelementptr [14 x i8], [14 x i8]* @.str377, i32 0, i32 0
  %3528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3527, i64 13)
  %3529 = call %nyx_string* @nyx_string_concat(%nyx_string* %3526, %nyx_string* %3528)
  %3530 = call i8* @nyx_string_to_cstr(%nyx_string* %3529)
  call void @nyx_print_string(i8* %3530)
  %3531 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 2
  %3532 = load %nyx_string*, %nyx_string** %3531
  %3533 = getelementptr [1 x i8], [1 x i8]* @.str378, i32 0, i32 0
  %3534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3533, i64 0)
  %3535 = call i1 @nyx_string_equals(%nyx_string* %3532, %nyx_string* %3534)
  %3536 = xor i1 %3535, true
  br i1 %3536, label %then627, label %else628
then627:
  %3537 = getelementptr [12 x i8], [12 x i8]* @.str379, i32 0, i32 0
  %3538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3537, i64 11)
  %3539 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 2
  %3540 = load %nyx_string*, %nyx_string** %3539
  %3541 = call %nyx_string* @nyx_string_concat(%nyx_string* %3538, %nyx_string* %3540)
  %3542 = getelementptr [2 x i8], [2 x i8]* @.str380, i32 0, i32 0
  %3543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3542, i64 1)
  %3544 = call %nyx_string* @nyx_string_concat(%nyx_string* %3541, %nyx_string* %3543)
  %3545 = call i8* @nyx_string_to_cstr(%nyx_string* %3544)
  call void @nyx_print_string(i8* %3545)
  br label %merge629
else628:
  br label %merge629
merge629:
  %3546 = getelementptr [1 x i8], [1 x i8]* @.str381, i32 0, i32 0
  %3547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3546, i64 0)
  %3548 = call i8* @nyx_string_to_cstr(%nyx_string* %3547)
  call void @nyx_print_string(i8* %3548)
  %3549 = alloca i1
  store i1 false, i1* %3549
  %3550 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 8
  %3551 = load %nyx_string*, %nyx_string** %3550
  %3552 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %3553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3552, i64 0)
  %3554 = call i1 @nyx_string_equals(%nyx_string* %3551, %nyx_string* %3553)
  %3555 = xor i1 %3554, true
  br i1 %3555, label %sc_and_rhs630, label %sc_and_end631
sc_and_rhs630:
  %3556 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 5
  %3557 = load i1, i1* %3556
  %3558 = xor i1 %3557, true
  store i1 %3558, i1* %3549
  br label %sc_and_end631
sc_and_end631:
  %3559 = load i1, i1* %3549
  br i1 %3559, label %then632, label %else633
then632:
  %3560 = getelementptr [9 x i8], [9 x i8]* @.str383, i32 0, i32 0
  %3561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3560, i64 8)
  %3562 = call i8* @nyx_string_to_cstr(%nyx_string* %3561)
  %3563 = call %nyx_string* @nyx_getenv(i8* %3562)
  %3564 = alloca %nyx_string*
  store %nyx_string* %3563, %nyx_string** %3564
  %3565 = load %nyx_string*, %nyx_string** %3564
  %3566 = getelementptr [11 x i8], [11 x i8]* @.str384, i32 0, i32 0
  %3567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3566, i64 10)
  %3568 = call %nyx_string* @nyx_string_concat(%nyx_string* %3565, %nyx_string* %3567)
  %3569 = alloca %nyx_string*
  store %nyx_string* %3568, %nyx_string** %3569
  %3570 = load %nyx_string*, %nyx_string** %3569
  %3571 = call i8* @nyx_string_to_cstr(%nyx_string* %3570)
  %3572 = call i1 @nyx_file_exists(i8* %3571)
  %3573 = xor i1 %3572, true
  br i1 %3573, label %then635, label %else636
then635:
  %3574 = load %nyx_string*, %nyx_string** %3564
  %3575 = getelementptr [15 x i8], [15 x i8]* @.str385, i32 0, i32 0
  %3576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3575, i64 14)
  %3577 = call %nyx_string* @nyx_string_concat(%nyx_string* %3574, %nyx_string* %3576)
  store %nyx_string* %3577, %nyx_string** %3569
  br label %merge637
else636:
  br label %merge637
merge637:
  %3578 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %3579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3578, i64 0)
  %3580 = alloca %nyx_string*
  store %nyx_string* %3579, %nyx_string** %3580
  %3581 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 7
  %3582 = load i1, i1* %3581
  br i1 %3582, label %then638, label %else639
then638:
  %3583 = getelementptr [11 x i8], [11 x i8]* @.str387, i32 0, i32 0
  %3584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3583, i64 10)
  store %nyx_string* %3584, %nyx_string** %3580
  br label %merge640
else639:
  br label %merge640
merge640:
  %3585 = getelementptr [33 x i8], [33 x i8]* @.str388, i32 0, i32 0
  %3586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3585, i64 32)
  %3587 = call i8* @nyx_string_to_cstr(%nyx_string* %3586)
  %3588 = call %nyx_string* @nyx_exec(i8* %3587)
  %3589 = call %nyx_string* @nyx_string_trim(%nyx_string* %3588)
  %3590 = alloca %nyx_string*
  store %nyx_string* %3589, %nyx_string** %3590
  %3591 = getelementptr [2 x i8], [2 x i8]* @.str389, i32 0, i32 0
  %3592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3591, i64 1)
  %3593 = load %nyx_string*, %nyx_string** %3569
  %3594 = call %nyx_string* @nyx_string_concat(%nyx_string* %3592, %nyx_string* %3593)
  %3595 = getelementptr [7 x i8], [7 x i8]* @.str390, i32 0, i32 0
  %3596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3595, i64 6)
  %3597 = call %nyx_string* @nyx_string_concat(%nyx_string* %3594, %nyx_string* %3596)
  %3598 = load %nyx_string*, %nyx_string** %3580
  %3599 = call %nyx_string* @nyx_string_concat(%nyx_string* %3597, %nyx_string* %3598)
  %3600 = getelementptr [5 x i8], [5 x i8]* @.str391, i32 0, i32 0
  %3601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3600, i64 4)
  %3602 = call %nyx_string* @nyx_string_concat(%nyx_string* %3599, %nyx_string* %3601)
  %3603 = load %nyx_string*, %nyx_string** %3590
  %3604 = call %nyx_string* @nyx_string_concat(%nyx_string* %3602, %nyx_string* %3603)
  %3605 = getelementptr [7 x i8], [7 x i8]* @.str392, i32 0, i32 0
  %3606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3605, i64 6)
  %3607 = call %nyx_string* @nyx_string_concat(%nyx_string* %3604, %nyx_string* %3606)
  %3608 = call i8* @nyx_string_to_cstr(%nyx_string* %3607)
  %3609 = call i64 @nyx_exec_code(i8* %3608)
  %3610 = alloca i64
  store i64 %3609, i64* %3610
  %3611 = load %nyx_string*, %nyx_string** %3590
  %3612 = call i8* @nyx_string_to_cstr(%nyx_string* %3611)
  %3613 = call %nyx_string* @nyx_read_file(i8* %3612)
  %3614 = alloca %nyx_string*
  store %nyx_string* %3613, %nyx_string** %3614
  %3615 = getelementptr [8 x i8], [8 x i8]* @.str393, i32 0, i32 0
  %3616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3615, i64 7)
  %3617 = load %nyx_string*, %nyx_string** %3590
  %3618 = call %nyx_string* @nyx_string_concat(%nyx_string* %3616, %nyx_string* %3617)
  %3619 = getelementptr [2 x i8], [2 x i8]* @.str394, i32 0, i32 0
  %3620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3619, i64 1)
  %3621 = call %nyx_string* @nyx_string_concat(%nyx_string* %3618, %nyx_string* %3620)
  %3622 = call i8* @nyx_string_to_cstr(%nyx_string* %3621)
  %3623 = call i64 @nyx_exec_code(i8* %3622)
  %3624 = load i64, i64* %3610
  %3625 = icmp ne i64 %3624, 0
  br i1 %3625, label %then641, label %else642
then641:
  %3626 = getelementptr [65 x i8], [65 x i8]* @.str395, i32 0, i32 0
  %3627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3626, i64 64)
  %3628 = call i8* @nyx_string_to_cstr(%nyx_string* %3627)
  call void @nyx_print_string(i8* %3628)
  %3629 = load %nyx_string*, %nyx_string** %3614
  %3630 = call i8* @nyx_string_to_cstr(%nyx_string* %3629)
  call void @nyx_print_string(i8* %3630)
  ret i64 1
else642:
  br label %merge643
merge643:
  %3631 = load %nyx_string*, %nyx_string** %3614
  %3632 = getelementptr [2 x i8], [2 x i8]* @.str396, i32 0, i32 0
  %3633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3632, i64 1)
  %3634 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3631, %nyx_string* %3633)
  %3635 = alloca { i64, i8* }*
  store { i64, i8* }* %3634, { i64, i8* }** %3635
  %3636 = alloca i64
  store i64 0, i64* %3636
  %3637 = alloca i64
  store i64 0, i64* %3637
  %3638 = alloca i64
  store i64 0, i64* %3638
  %3639 = getelementptr [13 x i8], [13 x i8]* @.str397, i32 0, i32 0
  %3640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3639, i64 12)
  %3641 = alloca %nyx_string*
  store %nyx_string* %3640, %nyx_string** %3641
  %3642 = getelementptr [6 x i8], [6 x i8]* @.str398, i32 0, i32 0
  %3643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3642, i64 5)
  %3644 = alloca %nyx_string*
  store %nyx_string* %3643, %nyx_string** %3644
  %3645 = getelementptr [8 x i8], [8 x i8]* @.str399, i32 0, i32 0
  %3646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3645, i64 7)
  %3647 = alloca %nyx_string*
  store %nyx_string* %3646, %nyx_string** %3647
  %3648 = getelementptr [4 x i8], [4 x i8]* @.str400, i32 0, i32 0
  %3649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3648, i64 3)
  %3650 = alloca %nyx_string*
  store %nyx_string* %3649, %nyx_string** %3650
  %3651 = call i8* @llvm.stacksave()
  br label %while_cond644
while_cond644:
  %3652 = load i64, i64* %3636
  %3653 = load { i64, i8* }*, { i64, i8* }** %3635
  %3654 = call i64 @nyx_array_length({ i64, i8* }* %3653)
  %3655 = icmp slt i64 %3652, %3654
  br i1 %3655, label %while_body645, label %while_end646
while_body645:
  call void @llvm.stackrestore(i8* %3651)
  %3656 = load { i64, i8* }*, { i64, i8* }** %3635
  %3657 = load i64, i64* %3636
  %3658 = call i64 @nyx_array_get_checked({ i64, i8* }* %3656, i64 %3657, i64 2)
  %3659 = inttoptr i64 %3658 to %nyx_string*
  %3660 = alloca %nyx_string*
  store %nyx_string* %3659, %nyx_string** %3660
  %3661 = load %nyx_string*, %nyx_string** %3660
  %3662 = load %nyx_string*, %nyx_string** %3641
  %3663 = call i1 @nyx_string_starts_with(%nyx_string* %3661, %nyx_string* %3662)
  br i1 %3663, label %then647, label %else648
then647:
  %3664 = load %nyx_string*, %nyx_string** %3660
  %3665 = load %nyx_string*, %nyx_string** %3660
  %3666 = call i64 @nyx_string_byte_length(%nyx_string* %3665)
  %3667 = call %nyx_string* @nyx_string_substring(%nyx_string* %3664, i64 12, i64 %3666)
  %3668 = call %nyx_string* @nyx_string_trim(%nyx_string* %3667)
  %3669 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 9
  store %nyx_string* %3668, %nyx_string** %3669
  br label %merge649
else648:
  br label %merge649
merge649:
  %3670 = load %nyx_string*, %nyx_string** %3660
  %3671 = load %nyx_string*, %nyx_string** %3644
  %3672 = call i1 @nyx_string_contains(%nyx_string* %3670, %nyx_string* %3671)
  br i1 %3672, label %then650, label %else651
then650:
  %3673 = load i64, i64* %3637
  %3674 = add i64 %3673, 1
  store i64 %3674, i64* %3637
  br label %merge652
else651:
  br label %merge652
merge652:
  %3675 = load %nyx_string*, %nyx_string** %3660
  %3676 = load %nyx_string*, %nyx_string** %3647
  %3677 = call i1 @nyx_string_contains(%nyx_string* %3675, %nyx_string* %3676)
  br i1 %3677, label %then653, label %else654
then653:
  %3678 = load i64, i64* %3638
  %3679 = add i64 %3678, 1
  store i64 %3679, i64* %3638
  br label %merge655
else654:
  br label %merge655
merge655:
  %3680 = load %nyx_string*, %nyx_string** %3660
  %3681 = load %nyx_string*, %nyx_string** %3650
  %3682 = call i1 @nyx_string_contains(%nyx_string* %3680, %nyx_string* %3681)
  br i1 %3682, label %then656, label %else657
then656:
  %3683 = load %nyx_string*, %nyx_string** %3660
  %3684 = call i8* @nyx_string_to_cstr(%nyx_string* %3683)
  call void @nyx_print_string(i8* %3684)
  br label %merge658
else657:
  br label %merge658
merge658:
  %3685 = load i64, i64* %3636
  %3686 = add i64 %3685, 1
  store i64 %3686, i64* %3636
  br label %while_cond644
while_end646:
  %3687 = getelementptr [18 x i8], [18 x i8]* @.str401, i32 0, i32 0
  %3688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3687, i64 17)
  %3689 = load i64, i64* %3637
  %3690 = call %nyx_string* @nyx_string_from_int(i64 %3689)
  %3691 = call %nyx_string* @nyx_string_concat(%nyx_string* %3688, %nyx_string* %3690)
  %3692 = getelementptr [16 x i8], [16 x i8]* @.str402, i32 0, i32 0
  %3693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3692, i64 15)
  %3694 = call %nyx_string* @nyx_string_concat(%nyx_string* %3691, %nyx_string* %3693)
  %3695 = load i64, i64* %3638
  %3696 = call %nyx_string* @nyx_string_from_int(i64 %3695)
  %3697 = call %nyx_string* @nyx_string_concat(%nyx_string* %3694, %nyx_string* %3696)
  %3698 = getelementptr [16 x i8], [16 x i8]* @.str403, i32 0, i32 0
  %3699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3698, i64 15)
  %3700 = call %nyx_string* @nyx_string_concat(%nyx_string* %3697, %nyx_string* %3699)
  %3701 = call i8* @nyx_string_to_cstr(%nyx_string* %3700)
  call void @nyx_print_string(i8* %3701)
  %3702 = getelementptr [1 x i8], [1 x i8]* @.str404, i32 0, i32 0
  %3703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3702, i64 0)
  %3704 = call i8* @nyx_string_to_cstr(%nyx_string* %3703)
  call void @nyx_print_string(i8* %3704)
  br label %merge634
else633:
  br label %merge634
merge634:
  %3705 = call { i64, i8* }* @nyx_array_new_ptr()
  %3706 = alloca { i64, i8* }*
  store { i64, i8* }* %3705, { i64, i8* }** %3706
  %3707 = call { i64, i8* }* @nyx_array_new_ptr()
  %3708 = alloca { i64, i8* }*
  store { i64, i8* }* %3707, { i64, i8* }** %3708
  %3709 = call { i64, i8* }* @nyx_array_new_ptr()
  %3710 = alloca { i64, i8* }*
  store { i64, i8* }* %3709, { i64, i8* }** %3710
  %3711 = alloca i64
  store i64 0, i64* %3711
  %3712 = alloca i64
  store i64 0, i64* %3712
  %3713 = alloca i64
  store i64 0, i64* %3713
  %3714 = call i8* @llvm.stacksave()
  br label %while_cond659
while_cond659:
  %3715 = load i64, i64* %3713
  %3716 = load { i64, i8* }*, { i64, i8* }** %3467
  %3717 = call i64 @nyx_array_length({ i64, i8* }* %3716)
  %3718 = icmp slt i64 %3715, %3717
  br i1 %3718, label %while_body660, label %while_end661
while_body660:
  call void @llvm.stackrestore(i8* %3714)
  %3719 = load { i64, i8* }*, { i64, i8* }** %3467
  %3720 = load i64, i64* %3713
  %3721 = call i64 @nyx_array_get_checked({ i64, i8* }* %3719, i64 %3720, i64 2)
  %3722 = inttoptr i64 %3721 to %nyx_string*
  %3723 = alloca %nyx_string*
  store %nyx_string* %3722, %nyx_string** %3723
  %3724 = load %nyx_string*, %nyx_string** %3723
  %3725 = call i1 @file_has_test_blocks(%nyx_string* %3724)
  %3726 = xor i1 %3725, true
  br i1 %3726, label %then662, label %else663
then662:
  %3727 = load i64, i64* %3713
  %3728 = add i64 %3727, 1
  store i64 %3728, i64* %3713
  br label %merge664
else663:
  %3729 = load %nyx_string*, %nyx_string** %3723
  %3730 = load %TestConfig, %TestConfig* %3197
  %3731 = load %nyx_string*, %nyx_string** %3418
  %3732 = load i64, i64* %3713
  %3733 = call %TestResult @compile_and_run(%nyx_string* %3729, %TestConfig %3730, %nyx_string* %3731, i64 %3732)
  %3734 = alloca %TestResult
  store %TestResult %3733, %TestResult* %3734
  %3735 = load { i64, i8* }*, { i64, i8* }** %3706
  %3736 = load %TestResult, %TestResult* %3734
  %3737 = getelementptr %TestResult, %TestResult* null, i32 1
  %3738 = ptrtoint %TestResult* %3737 to i64
  %3739 = call i8* @GC_malloc(i64 %3738)
  %3740 = bitcast i8* %3739 to %TestResult*
  store %TestResult %3736, %TestResult* %3740
  %3741 = ptrtoint %TestResult* %3740 to i64
  call void @nyx_array_push({ i64, i8* }* %3735, i64 %3741)
  %3742 = load { i64, i8* }*, { i64, i8* }** %3708
  %3743 = load %nyx_string*, %nyx_string** %3723
  %3744 = ptrtoint %nyx_string* %3743 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3742, i64 %3744, i64 2)
  %3745 = load { i64, i8* }*, { i64, i8* }** %3710
  %3746 = load i64, i64* %3713
  %3747 = call %nyx_string* @nyx_string_from_int(i64 %3746)
  %3748 = ptrtoint %nyx_string* %3747 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3745, i64 %3748, i64 2)
  %3749 = load i64, i64* %3711
  %3750 = getelementptr %TestResult, %TestResult* %3734, i32 0, i32 1
  %3751 = load i64, i64* %3750
  %3752 = add i64 %3749, %3751
  store i64 %3752, i64* %3711
  %3753 = load i64, i64* %3712
  %3754 = getelementptr %TestResult, %TestResult* %3734, i32 0, i32 2
  %3755 = load i64, i64* %3754
  %3756 = add i64 %3753, %3755
  store i64 %3756, i64* %3712
  %3757 = load %TestResult, %TestResult* %3734
  %3758 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 3
  %3759 = load i1, i1* %3758
  %3760 = call i64 @print_result(%TestResult %3757, i1 %3759)
  %3761 = load i64, i64* %3713
  %3762 = add i64 %3761, 1
  store i64 %3762, i64* %3713
  br label %merge664
merge664:
  br label %while_cond659
while_end661:
  %3763 = load { i64, i8* }*, { i64, i8* }** %3706
  %3764 = call i64 @nyx_array_length({ i64, i8* }* %3763)
  %3765 = icmp eq i64 %3764, 0
  br i1 %3765, label %then665, label %else666
then665:
  %3766 = getelementptr [35 x i8], [35 x i8]* @.str405, i32 0, i32 0
  %3767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3766, i64 34)
  %3768 = call i8* @nyx_string_to_cstr(%nyx_string* %3767)
  call void @nyx_print_string(i8* %3768)
  %3769 = load %nyx_string*, %nyx_string** %3418
  %3770 = getelementptr [1 x i8], [1 x i8]* @.str406, i32 0, i32 0
  %3771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3770, i64 0)
  %3772 = call i1 @nyx_string_equals(%nyx_string* %3769, %nyx_string* %3771)
  %3773 = xor i1 %3772, true
  br i1 %3773, label %then668, label %else669
then668:
  %3774 = getelementptr [8 x i8], [8 x i8]* @.str407, i32 0, i32 0
  %3775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3774, i64 7)
  %3776 = load %nyx_string*, %nyx_string** %3418
  %3777 = call %nyx_string* @nyx_string_concat(%nyx_string* %3775, %nyx_string* %3776)
  %3778 = call i8* @nyx_string_to_cstr(%nyx_string* %3777)
  %3779 = call %nyx_string* @nyx_exec(i8* %3778)
  br label %merge670
else669:
  br label %merge670
merge670:
  ret i64 0
else666:
  br label %merge667
merge667:
  %3780 = load { i64, i8* }*, { i64, i8* }** %3706
  %3781 = load i64, i64* %3711
  %3782 = load i64, i64* %3712
  %3783 = call i64 @print_summary({ i64, i8* }* %3780, i64 %3781, i64 %3782)
  %3784 = load %nyx_string*, %nyx_string** %3168
  %3785 = call %nyx_string* @huella_compilador(%nyx_string* %3784)
  %3786 = alloca %nyx_string*
  store %nyx_string* %3785, %nyx_string** %3786
  %3787 = load %nyx_string*, %nyx_string** %3168
  %3788 = call %nyx_string* @huella_resto(%nyx_string* %3787)
  %3789 = alloca %nyx_string*
  store %nyx_string* %3788, %nyx_string** %3789
  %3790 = alloca i1
  store i1 true, i1* %3790
  %3791 = load %nyx_string*, %nyx_string** %3786
  %3792 = load %nyx_string*, %nyx_string** %3179
  %3793 = call i1 @nyx_string_equals(%nyx_string* %3791, %nyx_string* %3792)
  %3794 = xor i1 %3793, true
  br i1 %3794, label %sc_or_end672, label %sc_or_rhs671
sc_or_rhs671:
  %3795 = load %nyx_string*, %nyx_string** %3789
  %3796 = load %nyx_string*, %nyx_string** %3182
  %3797 = call i1 @nyx_string_equals(%nyx_string* %3795, %nyx_string* %3796)
  %3798 = xor i1 %3797, true
  store i1 %3798, i1* %3790
  br label %sc_or_end672
sc_or_end672:
  %3799 = load i1, i1* %3790
  br i1 %3799, label %then673, label %else674
then673:
  %3800 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %3801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3800, i64 0)
  %3802 = call i8* @nyx_string_to_cstr(%nyx_string* %3801)
  call void @nyx_print_string(i8* %3802)
  %3803 = getelementptr [48 x i8], [48 x i8]* @.str409, i32 0, i32 0
  %3804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3803, i64 47)
  %3805 = load %nyx_string*, %nyx_string** %3168
  %3806 = call %nyx_string* @nyx_string_concat(%nyx_string* %3804, %nyx_string* %3805)
  %3807 = getelementptr [2 x i8], [2 x i8]* @.str410, i32 0, i32 0
  %3808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3807, i64 1)
  %3809 = call %nyx_string* @nyx_string_concat(%nyx_string* %3806, %nyx_string* %3808)
  %3810 = call i8* @nyx_string_to_cstr(%nyx_string* %3809)
  call void @nyx_print_string(i8* %3810)
  %3811 = load %nyx_string*, %nyx_string** %3786
  %3812 = load %nyx_string*, %nyx_string** %3179
  %3813 = call i1 @nyx_string_equals(%nyx_string* %3811, %nyx_string* %3812)
  %3814 = xor i1 %3813, true
  br i1 %3814, label %then676, label %else677
then676:
  %3815 = getelementptr [31 x i8], [31 x i8]* @.str411, i32 0, i32 0
  %3816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3815, i64 30)
  %3817 = load %nyx_string*, %nyx_string** %3179
  %3818 = call %nyx_string* @nyx_string_concat(%nyx_string* %3816, %nyx_string* %3817)
  %3819 = getelementptr [5 x i8], [5 x i8]* @.str412, i32 0, i32 0
  %3820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3819, i64 4)
  %3821 = call %nyx_string* @nyx_string_concat(%nyx_string* %3818, %nyx_string* %3820)
  %3822 = load %nyx_string*, %nyx_string** %3786
  %3823 = call %nyx_string* @nyx_string_concat(%nyx_string* %3821, %nyx_string* %3822)
  %3824 = call i8* @nyx_string_to_cstr(%nyx_string* %3823)
  call void @nyx_print_string(i8* %3824)
  br label %merge678
else677:
  %3825 = getelementptr [53 x i8], [53 x i8]* @.str413, i32 0, i32 0
  %3826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3825, i64 52)
  %3827 = call i8* @nyx_string_to_cstr(%nyx_string* %3826)
  call void @nyx_print_string(i8* %3827)
  br label %merge678
merge678:
  %3828 = getelementptr [71 x i8], [71 x i8]* @.str414, i32 0, i32 0
  %3829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3828, i64 70)
  %3830 = call i8* @nyx_string_to_cstr(%nyx_string* %3829)
  call void @nyx_print_string(i8* %3830)
  %3831 = getelementptr [69 x i8], [69 x i8]* @.str415, i32 0, i32 0
  %3832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3831, i64 68)
  %3833 = call i8* @nyx_string_to_cstr(%nyx_string* %3832)
  call void @nyx_print_string(i8* %3833)
  br label %merge675
else674:
  br label %merge675
merge675:
  %3834 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 5
  %3835 = load i1, i1* %3834
  br i1 %3835, label %then679, label %else680
then679:
  %3836 = load %nyx_string*, %nyx_string** %3418
  %3837 = load { i64, i8* }*, { i64, i8* }** %3708
  %3838 = load { i64, i8* }*, { i64, i8* }** %3710
  %3839 = load %nyx_string*, %nyx_string** %3415
  %3840 = getelementptr %TestConfig, %TestConfig* %3197, i32 0, i32 6
  %3841 = load i1, i1* %3840
  %3842 = call i64 @cov_report(%nyx_string* %3836, { i64, i8* }* %3837, { i64, i8* }* %3838, %nyx_string* %3839, i1 %3841)
  %3843 = getelementptr [8 x i8], [8 x i8]* @.str416, i32 0, i32 0
  %3844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3843, i64 7)
  %3845 = load %nyx_string*, %nyx_string** %3418
  %3846 = call %nyx_string* @nyx_string_concat(%nyx_string* %3844, %nyx_string* %3845)
  %3847 = call i8* @nyx_string_to_cstr(%nyx_string* %3846)
  %3848 = call %nyx_string* @nyx_exec(i8* %3847)
  br label %merge681
else680:
  br label %merge681
merge681:
  %3849 = alloca i64
  store i64 0, i64* %3849
  %3850 = alloca i64
  store i64 0, i64* %3850
  %3851 = call i8* @llvm.stacksave()
  br label %while_cond682
while_cond682:
  %3852 = load i64, i64* %3850
  %3853 = load { i64, i8* }*, { i64, i8* }** %3706
  %3854 = call i64 @nyx_array_length({ i64, i8* }* %3853)
  %3855 = icmp slt i64 %3852, %3854
  br i1 %3855, label %while_body683, label %while_end684
while_body683:
  call void @llvm.stackrestore(i8* %3851)
  %3856 = load { i64, i8* }*, { i64, i8* }** %3706
  %3857 = load i64, i64* %3850
  %3858 = call i64 @nyx_array_get({ i64, i8* }* %3856, i64 %3857)
  %3859 = inttoptr i64 %3858 to %TestResult*
  %3860 = load %TestResult, %TestResult* %3859
  %3861 = alloca %TestResult
  store %TestResult %3860, %TestResult* %3861
  %3862 = getelementptr %TestResult, %TestResult* %3861, i32 0, i32 4
  %3863 = load i1, i1* %3862
  %3864 = xor i1 %3863, true
  br i1 %3864, label %then685, label %else686
then685:
  %3865 = load i64, i64* %3849
  %3866 = add i64 %3865, 1
  store i64 %3866, i64* %3849
  br label %merge687
else686:
  br label %merge687
merge687:
  %3867 = load i64, i64* %3850
  %3868 = add i64 %3867, 1
  store i64 %3868, i64* %3850
  br label %while_cond682
while_end684:
  %3869 = alloca i1
  store i1 true, i1* %3869
  %3870 = load i64, i64* %3712
  %3871 = icmp sgt i64 %3870, 0
  br i1 %3871, label %sc_or_end689, label %sc_or_rhs688
sc_or_rhs688:
  %3872 = load i64, i64* %3849
  %3873 = icmp sgt i64 %3872, 0
  store i1 %3873, i1* %3869
  br label %sc_or_end689
sc_or_end689:
  %3874 = load i1, i1* %3869
  br i1 %3874, label %then690, label %else691
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
  %3875 = sub i64 0, 9223372036854775808
  store i64 %3875, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

