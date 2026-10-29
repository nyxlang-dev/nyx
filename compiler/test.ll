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
  %747 = load %Error, %Error* %740
  ret %Error %747
}

define %nyx_string* @errno_to_kind(
i64 %code.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %748 = load i64, i64* %code.ptr
  %749 = icmp eq i64 %748, 2
  br i1 %749, label %then208, label %else209
then208:
  %750 = getelementptr [10 x i8], [10 x i8]* @.str2, i32 0, i32 0
  %751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %750, i64 9)
  ret %nyx_string* %751
else209:
  br label %merge210
merge210:
  %752 = load i64, i64* %code.ptr
  %753 = icmp eq i64 %752, 13
  br i1 %753, label %then211, label %else212
then211:
  %754 = getelementptr [11 x i8], [11 x i8]* @.str3, i32 0, i32 0
  %755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %754, i64 10)
  ret %nyx_string* %755
else212:
  br label %merge213
merge213:
  %756 = load i64, i64* %code.ptr
  %757 = icmp eq i64 %756, 12
  br i1 %757, label %then214, label %else215
then214:
  %758 = getelementptr [4 x i8], [4 x i8]* @.str4, i32 0, i32 0
  %759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %758, i64 3)
  ret %nyx_string* %759
else215:
  br label %merge216
merge216:
  %760 = load i64, i64* %code.ptr
  %761 = icmp eq i64 %760, 22
  br i1 %761, label %then217, label %else218
then217:
  %762 = getelementptr [8 x i8], [8 x i8]* @.str5, i32 0, i32 0
  %763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %762, i64 7)
  ret %nyx_string* %763
else218:
  br label %merge219
merge219:
  %764 = load i64, i64* %code.ptr
  %765 = icmp eq i64 %764, 110
  br i1 %765, label %then220, label %else221
then220:
  %766 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %766, i64 7)
  ret %nyx_string* %767
else221:
  br label %merge222
merge222:
  %768 = load i64, i64* %code.ptr
  %769 = icmp eq i64 %768, 111
  br i1 %769, label %then223, label %else224
then223:
  %770 = getelementptr [11 x i8], [11 x i8]* @.str7, i32 0, i32 0
  %771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %770, i64 10)
  ret %nyx_string* %771
else224:
  br label %merge225
merge225:
  %772 = load i64, i64* %code.ptr
  %773 = icmp eq i64 %772, 98
  br i1 %773, label %then226, label %else227
then226:
  %774 = getelementptr [7 x i8], [7 x i8]* @.str8, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %774, i64 6)
  ret %nyx_string* %775
else227:
  br label %merge228
merge228:
  %776 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %776, i64 2)
  ret %nyx_string* %777
}

define %nyx_string* @error_to_string(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %778 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %779 = load %nyx_string*, %nyx_string** %778
  %780 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %780, i64 2)
  %782 = call %nyx_string* @nyx_string_concat(%nyx_string* %779, %nyx_string* %781)
  %783 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 2
  %784 = load %nyx_string*, %nyx_string** %783
  %785 = call %nyx_string* @nyx_string_concat(%nyx_string* %782, %nyx_string* %784)
  %786 = getelementptr [8 x i8], [8 x i8]* @.str11, i32 0, i32 0
  %787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %786, i64 7)
  %788 = call %nyx_string* @nyx_string_concat(%nyx_string* %785, %nyx_string* %787)
  %789 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 0
  %790 = load i64, i64* %789
  %791 = call %nyx_string* @nyx_string_from_int(i64 %790)
  %792 = call %nyx_string* @nyx_string_concat(%nyx_string* %788, %nyx_string* %791)
  %793 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %793, i64 1)
  %795 = call %nyx_string* @nyx_string_concat(%nyx_string* %792, %nyx_string* %794)
  ret %nyx_string* %795
}

define i1 @is_eof(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %796 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %797 = load %nyx_string*, %nyx_string** %796
  %798 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %798, i64 3)
  %800 = call i1 @nyx_string_equals(%nyx_string* %797, %nyx_string* %799)
  ret i1 %800
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %801 = load %nyx_string*, %nyx_string** %line.ptr
  %802 = call %nyx_string* @nyx_string_trim(%nyx_string* %801)
  %803 = alloca %nyx_string*
  store %nyx_string* %802, %nyx_string** %803
  %804 = sub i64 0, 1
  %805 = alloca i64
  store i64 %804, i64* %805
  %806 = alloca i64
  store i64 0, i64* %806
  %807 = call i8* @llvm.stacksave()
  br label %while_cond229
while_cond229:
  %808 = load i64, i64* %806
  %809 = load %nyx_string*, %nyx_string** %803
  %810 = call i64 @nyx_string_byte_length(%nyx_string* %809)
  %811 = icmp slt i64 %808, %810
  br i1 %811, label %while_body230, label %while_end231
while_body230:
  call void @llvm.stackrestore(i8* %807)
  %812 = load %nyx_string*, %nyx_string** %803
  %813 = load i64, i64* %806
  %814 = call i8 @nyx_string_char_at(%nyx_string* %812, i64 %813)
  %815 = zext i8 %814 to i64
  %816 = icmp eq i64 %815, 61
  br i1 %816, label %then232, label %else233
then232:
  %817 = load i64, i64* %806
  store i64 %817, i64* %805
  %818 = load %nyx_string*, %nyx_string** %803
  %819 = call i64 @nyx_string_byte_length(%nyx_string* %818)
  store i64 %819, i64* %806
  br label %merge234
else233:
  %820 = load i64, i64* %806
  %821 = add i64 %820, 1
  store i64 %821, i64* %806
  br label %merge234
merge234:
  br label %while_cond229
while_end231:
  %822 = load i64, i64* %805
  %823 = icmp slt i64 %822, 0
  br i1 %823, label %then235, label %else236
then235:
  %824 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %824, i64 0)
  ret %nyx_string* %825
else236:
  br label %merge237
merge237:
  %826 = load %nyx_string*, %nyx_string** %803
  %827 = load i64, i64* %805
  %828 = add i64 %827, 1
  %829 = load %nyx_string*, %nyx_string** %803
  %830 = call i64 @nyx_string_byte_length(%nyx_string* %829)
  %831 = call %nyx_string* @nyx_string_substring(%nyx_string* %826, i64 %828, i64 %830)
  %832 = call %nyx_string* @nyx_string_trim(%nyx_string* %831)
  %833 = alloca %nyx_string*
  store %nyx_string* %832, %nyx_string** %833
  %834 = alloca i1
  store i1 false, i1* %834
  %835 = load %nyx_string*, %nyx_string** %833
  %836 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %836, i64 1)
  %838 = call i1 @nyx_string_starts_with(%nyx_string* %835, %nyx_string* %837)
  br i1 %838, label %sc_and_rhs238, label %sc_and_end239
sc_and_rhs238:
  %839 = load %nyx_string*, %nyx_string** %833
  %840 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %840, i64 1)
  %842 = call i1 @nyx_string_ends_with(%nyx_string* %839, %nyx_string* %841)
  store i1 %842, i1* %834
  br label %sc_and_end239
sc_and_end239:
  %843 = load i1, i1* %834
  br i1 %843, label %then240, label %else241
then240:
  %844 = load %nyx_string*, %nyx_string** %833
  %845 = load %nyx_string*, %nyx_string** %833
  %846 = call i64 @nyx_string_byte_length(%nyx_string* %845)
  %847 = sub i64 %846, 1
  %848 = call %nyx_string* @nyx_string_substring(%nyx_string* %844, i64 1, i64 %847)
  ret %nyx_string* %848
else241:
  br label %merge242
merge242:
  %849 = load %nyx_string*, %nyx_string** %833
  ret %nyx_string* %849
}

define internal %nyx_string* @parse_toml_key(
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
  br label %while_cond243
while_cond243:
  %857 = load i64, i64* %855
  %858 = load %nyx_string*, %nyx_string** %852
  %859 = call i64 @nyx_string_byte_length(%nyx_string* %858)
  %860 = icmp slt i64 %857, %859
  br i1 %860, label %while_body244, label %while_end245
while_body244:
  call void @llvm.stackrestore(i8* %856)
  %861 = load %nyx_string*, %nyx_string** %852
  %862 = load i64, i64* %855
  %863 = call i8 @nyx_string_char_at(%nyx_string* %861, i64 %862)
  %864 = zext i8 %863 to i64
  %865 = icmp eq i64 %864, 61
  br i1 %865, label %then246, label %else247
then246:
  %866 = load i64, i64* %855
  store i64 %866, i64* %854
  %867 = load %nyx_string*, %nyx_string** %852
  %868 = call i64 @nyx_string_byte_length(%nyx_string* %867)
  store i64 %868, i64* %855
  br label %merge248
else247:
  %869 = load i64, i64* %855
  %870 = add i64 %869, 1
  store i64 %870, i64* %855
  br label %merge248
merge248:
  br label %while_cond243
while_end245:
  %871 = load i64, i64* %854
  %872 = icmp slt i64 %871, 0
  br i1 %872, label %then249, label %else250
then249:
  %873 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %873, i64 0)
  ret %nyx_string* %874
else250:
  br label %merge251
merge251:
  %875 = load %nyx_string*, %nyx_string** %852
  %876 = load i64, i64* %854
  %877 = call %nyx_string* @nyx_string_substring(%nyx_string* %875, i64 0, i64 %876)
  %878 = call %nyx_string* @nyx_string_trim(%nyx_string* %877)
  ret %nyx_string* %878
}

define internal %TestConfig @load_test_config(
) {
  %879 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %880 = ptrtoint %TestConfig* %879 to i64
  %881 = call i8* @GC_malloc(i64 %880)
  %882 = bitcast i8* %881 to %TestConfig*
  %883 = getelementptr [6 x i8], [6 x i8]* @.str18, i32 0, i32 0
  %884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %883, i64 5)
  %885 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 0
  store %nyx_string* %884, %nyx_string** %885
  %886 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 1
  store i64 30, i64* %886
  %887 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %887, i64 0)
  %889 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 2
  store %nyx_string* %888, %nyx_string** %889
  %890 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 3
  store i1 0, i1* %890
  %891 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %891, i64 0)
  %893 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 4
  store %nyx_string* %892, %nyx_string** %893
  %894 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 5
  store i1 0, i1* %894
  %895 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 6
  store i1 0, i1* %895
  %896 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 7
  store i1 0, i1* %896
  %897 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %897, i64 0)
  %899 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 8
  store %nyx_string* %898, %nyx_string** %899
  %900 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %900, i64 0)
  %902 = getelementptr %TestConfig, %TestConfig* %882, i32 0, i32 9
  store %nyx_string* %901, %nyx_string** %902
  %903 = load %TestConfig, %TestConfig* %882
  %904 = alloca %TestConfig
  store %TestConfig %903, %TestConfig* %904
  %905 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %905, i64 8)
  %907 = call i8* @nyx_string_to_cstr(%nyx_string* %906)
  %908 = call i1 @nyx_file_exists(i8* %907)
  %909 = xor i1 %908, true
  br i1 %909, label %then252, label %else253
then252:
  %910 = load %TestConfig, %TestConfig* %904
  ret %TestConfig %910
else253:
  br label %merge254
merge254:
  %911 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %911, i64 8)
  %913 = call i8* @nyx_string_to_cstr(%nyx_string* %912)
  %914 = call %nyx_string* @nyx_read_file(i8* %913)
  %915 = alloca %nyx_string*
  store %nyx_string* %914, %nyx_string** %915
  %916 = load %nyx_string*, %nyx_string** %915
  %917 = getelementptr [2 x i8], [2 x i8]* @.str25, i32 0, i32 0
  %918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %917, i64 1)
  %919 = call { i64, i8* }* @nyx_string_split(%nyx_string* %916, %nyx_string* %918)
  %920 = alloca { i64, i8* }*
  store { i64, i8* }* %919, { i64, i8* }** %920
  %921 = alloca i1
  store i1 0, i1* %921
  %922 = alloca i1
  store i1 0, i1* %922
  %923 = alloca i64
  store i64 0, i64* %923
  %924 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %924, i64 6)
  %926 = alloca %nyx_string*
  store %nyx_string* %925, %nyx_string** %926
  %927 = getelementptr [2 x i8], [2 x i8]* @.str27, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %927, i64 1)
  %929 = alloca %nyx_string*
  store %nyx_string* %928, %nyx_string** %929
  %930 = getelementptr [6 x i8], [6 x i8]* @.str28, i32 0, i32 0
  %931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %930, i64 5)
  %932 = alloca %nyx_string*
  store %nyx_string* %931, %nyx_string** %932
  %933 = getelementptr [8 x i8], [8 x i8]* @.str29, i32 0, i32 0
  %934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %933, i64 7)
  %935 = alloca %nyx_string*
  store %nyx_string* %934, %nyx_string** %935
  %936 = getelementptr [2 x i8], [2 x i8]* @.str30, i32 0, i32 0
  %937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %936, i64 1)
  %938 = alloca %nyx_string*
  store %nyx_string* %937, %nyx_string** %938
  %939 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %939, i64 0)
  %941 = alloca %nyx_string*
  store %nyx_string* %940, %nyx_string** %941
  %942 = getelementptr [2 x i8], [2 x i8]* @.str32, i32 0, i32 0
  %943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %942, i64 1)
  %944 = alloca %nyx_string*
  store %nyx_string* %943, %nyx_string** %944
  %945 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %945, i64 1)
  %947 = alloca %nyx_string*
  store %nyx_string* %946, %nyx_string** %947
  %948 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %948, i64 1)
  %950 = alloca %nyx_string*
  store %nyx_string* %949, %nyx_string** %950
  %951 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %951, i64 3)
  %953 = alloca %nyx_string*
  store %nyx_string* %952, %nyx_string** %953
  %954 = getelementptr [8 x i8], [8 x i8]* @.str36, i32 0, i32 0
  %955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %954, i64 7)
  %956 = alloca %nyx_string*
  store %nyx_string* %955, %nyx_string** %956
  %957 = call i8* @llvm.stacksave()
  br label %while_cond255
while_cond255:
  %958 = load i64, i64* %923
  %959 = load { i64, i8* }*, { i64, i8* }** %920
  %960 = call i64 @nyx_array_length({ i64, i8* }* %959)
  %961 = icmp slt i64 %958, %960
  br i1 %961, label %while_body256, label %while_end257
while_body256:
  call void @llvm.stackrestore(i8* %957)
  %962 = load { i64, i8* }*, { i64, i8* }** %920
  %963 = load i64, i64* %923
  %964 = call i64 @nyx_array_get_checked({ i64, i8* }* %962, i64 %963, i64 2)
  %965 = inttoptr i64 %964 to %nyx_string*
  %966 = alloca %nyx_string*
  store %nyx_string* %965, %nyx_string** %966
  %967 = load %nyx_string*, %nyx_string** %966
  %968 = call %nyx_string* @nyx_string_trim(%nyx_string* %967)
  %969 = alloca %nyx_string*
  store %nyx_string* %968, %nyx_string** %969
  %970 = load %nyx_string*, %nyx_string** %969
  %971 = load %nyx_string*, %nyx_string** %926
  %972 = call i1 @nyx_string_equals(%nyx_string* %970, %nyx_string* %971)
  br i1 %972, label %then258, label %else259
then258:
  store i1 1, i1* %921
  br label %merge260
else259:
  %973 = load %nyx_string*, %nyx_string** %969
  %974 = load %nyx_string*, %nyx_string** %929
  %975 = call i1 @nyx_string_starts_with(%nyx_string* %973, %nyx_string* %974)
  br i1 %975, label %then261, label %else262
then261:
  store i1 0, i1* %921
  %976 = load %nyx_string*, %nyx_string** %969
  %977 = load %nyx_string*, %nyx_string** %932
  %978 = call i1 @nyx_string_equals(%nyx_string* %976, %nyx_string* %977)
  store i1 %978, i1* %922
  br label %merge263
else262:
  %979 = alloca i1
  store i1 false, i1* %979
  %980 = load i1, i1* %922
  br i1 %980, label %sc_and_rhs264, label %sc_and_end265
sc_and_rhs264:
  %981 = load %nyx_string*, %nyx_string** %969
  %982 = call %nyx_string* @parse_toml_key(%nyx_string* %981)
  %983 = load %nyx_string*, %nyx_string** %935
  %984 = call i1 @nyx_string_equals(%nyx_string* %982, %nyx_string* %983)
  store i1 %984, i1* %979
  br label %sc_and_end265
sc_and_end265:
  %985 = load i1, i1* %979
  br i1 %985, label %then266, label %else267
then266:
  %986 = load %nyx_string*, %nyx_string** %969
  %987 = load %nyx_string*, %nyx_string** %969
  %988 = load %nyx_string*, %nyx_string** %938
  %989 = call i64 @nyx_string_index_of(%nyx_string* %987, %nyx_string* %988)
  %990 = add i64 %989, 1
  %991 = load %nyx_string*, %nyx_string** %969
  %992 = call i64 @nyx_string_byte_length(%nyx_string* %991)
  %993 = call %nyx_string* @nyx_string_substring(%nyx_string* %986, i64 %990, i64 %992)
  %994 = call %nyx_string* @nyx_string_trim(%nyx_string* %993)
  %995 = alloca %nyx_string*
  store %nyx_string* %994, %nyx_string** %995
  %996 = load %nyx_string*, %nyx_string** %995
  %997 = load %nyx_string*, %nyx_string** %929
  %998 = load %nyx_string*, %nyx_string** %941
  %999 = call %nyx_string* @nyx_string_replace(%nyx_string* %996, %nyx_string* %997, %nyx_string* %998)
  %1000 = load %nyx_string*, %nyx_string** %944
  %1001 = load %nyx_string*, %nyx_string** %941
  %1002 = call %nyx_string* @nyx_string_replace(%nyx_string* %999, %nyx_string* %1000, %nyx_string* %1001)
  %1003 = load %nyx_string*, %nyx_string** %947
  %1004 = load %nyx_string*, %nyx_string** %941
  %1005 = call %nyx_string* @nyx_string_replace(%nyx_string* %1002, %nyx_string* %1003, %nyx_string* %1004)
  %1006 = load %nyx_string*, %nyx_string** %950
  %1007 = load %nyx_string*, %nyx_string** %941
  %1008 = call %nyx_string* @nyx_string_replace(%nyx_string* %1005, %nyx_string* %1006, %nyx_string* %1007)
  store %nyx_string* %1008, %nyx_string** %995
  %1009 = load %nyx_string*, %nyx_string** %995
  %1010 = getelementptr %TestConfig, %TestConfig* %904, i32 0, i32 8
  store %nyx_string* %1009, %nyx_string** %1010
  br label %merge268
else267:
  %1011 = load i1, i1* %921
  br i1 %1011, label %then269, label %else270
then269:
  %1012 = load %nyx_string*, %nyx_string** %969
  %1013 = call %nyx_string* @parse_toml_key(%nyx_string* %1012)
  %1014 = alloca %nyx_string*
  store %nyx_string* %1013, %nyx_string** %1014
  %1015 = load %nyx_string*, %nyx_string** %969
  %1016 = call %nyx_string* @parse_toml_value(%nyx_string* %1015)
  %1017 = alloca %nyx_string*
  store %nyx_string* %1016, %nyx_string** %1017
  %1018 = load %nyx_string*, %nyx_string** %1014
  %1019 = load %nyx_string*, %nyx_string** %953
  %1020 = call i1 @nyx_string_equals(%nyx_string* %1018, %nyx_string* %1019)
  br i1 %1020, label %then272, label %else273
then272:
  %1021 = load %nyx_string*, %nyx_string** %1017
  %1022 = getelementptr %TestConfig, %TestConfig* %904, i32 0, i32 0
  store %nyx_string* %1021, %nyx_string** %1022
  br label %merge274
else273:
  br label %merge274
merge274:
  %1023 = load %nyx_string*, %nyx_string** %1014
  %1024 = load %nyx_string*, %nyx_string** %956
  %1025 = call i1 @nyx_string_equals(%nyx_string* %1023, %nyx_string* %1024)
  br i1 %1025, label %then275, label %else276
then275:
  %1026 = load %nyx_string*, %nyx_string** %1017
  %1027 = call i64 @nyx_string_to_int(%nyx_string* %1026)
  %1028 = getelementptr %TestConfig, %TestConfig* %904, i32 0, i32 1
  store i64 %1027, i64* %1028
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
  %1029 = load i64, i64* %923
  %1030 = add i64 %1029, 1
  store i64 %1030, i64* %923
  br label %while_cond255
while_end257:
  %1031 = load %TestConfig, %TestConfig* %904
  ret %TestConfig %1031
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %1032 = call { i64, i8* }* @nyx_array_new_ptr()
  %1033 = alloca { i64, i8* }*
  store { i64, i8* }* %1032, { i64, i8* }** %1033
  %1034 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1035 = load %nyx_string*, %nyx_string** %1034
  %1036 = call i8* @nyx_string_to_cstr(%nyx_string* %1035)
  %1037 = call i1 @nyx_file_exists(i8* %1036)
  br i1 %1037, label %then278, label %else279
then278:
  %1038 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1039 = load %nyx_string*, %nyx_string** %1038
  %1040 = call i8* @nyx_string_to_cstr(%nyx_string* %1039)
  %1041 = call { i64, i8* }* @nyx_readdir(i8* %1040)
  %1042 = alloca { i64, i8* }*
  store { i64, i8* }* %1041, { i64, i8* }** %1042
  %1043 = alloca i64
  store i64 0, i64* %1043
  %1044 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %1044, i64 3)
  %1046 = alloca %nyx_string*
  store %nyx_string* %1045, %nyx_string** %1046
  %1047 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %1047, i64 1)
  %1049 = alloca %nyx_string*
  store %nyx_string* %1048, %nyx_string** %1049
  %1050 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %1050, i64 0)
  %1052 = alloca %nyx_string*
  store %nyx_string* %1051, %nyx_string** %1052
  %1053 = call i8* @llvm.stacksave()
  br label %while_cond281
while_cond281:
  %1054 = load i64, i64* %1043
  %1055 = load { i64, i8* }*, { i64, i8* }** %1042
  %1056 = call i64 @nyx_array_length({ i64, i8* }* %1055)
  %1057 = icmp slt i64 %1054, %1056
  br i1 %1057, label %while_body282, label %while_end283
while_body282:
  call void @llvm.stackrestore(i8* %1053)
  %1058 = load { i64, i8* }*, { i64, i8* }** %1042
  %1059 = load i64, i64* %1043
  %1060 = call i64 @nyx_array_get_checked({ i64, i8* }* %1058, i64 %1059, i64 2)
  %1061 = inttoptr i64 %1060 to %nyx_string*
  %1062 = alloca %nyx_string*
  store %nyx_string* %1061, %nyx_string** %1062
  %1063 = load %nyx_string*, %nyx_string** %1062
  %1064 = load %nyx_string*, %nyx_string** %1046
  %1065 = call i1 @nyx_string_ends_with(%nyx_string* %1063, %nyx_string* %1064)
  br i1 %1065, label %then284, label %else285
then284:
  %1066 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %1067 = load %nyx_string*, %nyx_string** %1066
  %1068 = load %nyx_string*, %nyx_string** %1049
  %1069 = call %nyx_string* @nyx_string_concat(%nyx_string* %1067, %nyx_string* %1068)
  %1070 = load %nyx_string*, %nyx_string** %1062
  %1071 = call %nyx_string* @nyx_string_concat(%nyx_string* %1069, %nyx_string* %1070)
  %1072 = alloca %nyx_string*
  store %nyx_string* %1071, %nyx_string** %1072
  %1073 = alloca i1
  store i1 true, i1* %1073
  %1074 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1075 = load %nyx_string*, %nyx_string** %1074
  %1076 = load %nyx_string*, %nyx_string** %1052
  %1077 = call i1 @nyx_string_equals(%nyx_string* %1075, %nyx_string* %1076)
  br i1 %1077, label %sc_or_end288, label %sc_or_rhs287
sc_or_rhs287:
  %1078 = load %nyx_string*, %nyx_string** %1062
  %1079 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1080 = load %nyx_string*, %nyx_string** %1079
  %1081 = call i1 @nyx_string_contains(%nyx_string* %1078, %nyx_string* %1080)
  store i1 %1081, i1* %1073
  br label %sc_or_end288
sc_or_end288:
  %1082 = load i1, i1* %1073
  br i1 %1082, label %then289, label %else290
then289:
  %1083 = load { i64, i8* }*, { i64, i8* }** %1033
  %1084 = load %nyx_string*, %nyx_string** %1072
  %1085 = ptrtoint %nyx_string* %1084 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1083, i64 %1085, i64 2)
  br label %merge291
else290:
  br label %merge291
merge291:
  br label %merge286
else285:
  br label %merge286
merge286:
  %1086 = load i64, i64* %1043
  %1087 = add i64 %1086, 1
  store i64 %1087, i64* %1043
  br label %while_cond281
while_end283:
  br label %merge280
else279:
  br label %merge280
merge280:
  %1088 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %1089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %1088, i64 3)
  %1090 = call i8* @nyx_string_to_cstr(%nyx_string* %1089)
  %1091 = call i1 @nyx_file_exists(i8* %1090)
  br i1 %1091, label %then292, label %else293
then292:
  %1092 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %1092, i64 3)
  %1094 = call i8* @nyx_string_to_cstr(%nyx_string* %1093)
  %1095 = call { i64, i8* }* @nyx_readdir(i8* %1094)
  %1096 = alloca { i64, i8* }*
  store { i64, i8* }* %1095, { i64, i8* }** %1096
  %1097 = alloca i64
  store i64 0, i64* %1097
  %1098 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %1098, i64 8)
  %1100 = alloca %nyx_string*
  store %nyx_string* %1099, %nyx_string** %1100
  %1101 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %1102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %1101, i64 4)
  %1103 = alloca %nyx_string*
  store %nyx_string* %1102, %nyx_string** %1103
  %1104 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %1104, i64 0)
  %1106 = alloca %nyx_string*
  store %nyx_string* %1105, %nyx_string** %1106
  %1107 = call i8* @llvm.stacksave()
  br label %while_cond295
while_cond295:
  %1108 = load i64, i64* %1097
  %1109 = load { i64, i8* }*, { i64, i8* }** %1096
  %1110 = call i64 @nyx_array_length({ i64, i8* }* %1109)
  %1111 = icmp slt i64 %1108, %1110
  br i1 %1111, label %while_body296, label %while_end297
while_body296:
  call void @llvm.stackrestore(i8* %1107)
  %1112 = load { i64, i8* }*, { i64, i8* }** %1096
  %1113 = load i64, i64* %1097
  %1114 = call i64 @nyx_array_get_checked({ i64, i8* }* %1112, i64 %1113, i64 2)
  %1115 = inttoptr i64 %1114 to %nyx_string*
  %1116 = alloca %nyx_string*
  store %nyx_string* %1115, %nyx_string** %1116
  %1117 = load %nyx_string*, %nyx_string** %1116
  %1118 = load %nyx_string*, %nyx_string** %1100
  %1119 = call i1 @nyx_string_ends_with(%nyx_string* %1117, %nyx_string* %1118)
  br i1 %1119, label %then298, label %else299
then298:
  %1120 = load %nyx_string*, %nyx_string** %1103
  %1121 = load %nyx_string*, %nyx_string** %1116
  %1122 = call %nyx_string* @nyx_string_concat(%nyx_string* %1120, %nyx_string* %1121)
  %1123 = alloca %nyx_string*
  store %nyx_string* %1122, %nyx_string** %1123
  %1124 = alloca i1
  store i1 true, i1* %1124
  %1125 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1126 = load %nyx_string*, %nyx_string** %1125
  %1127 = load %nyx_string*, %nyx_string** %1106
  %1128 = call i1 @nyx_string_equals(%nyx_string* %1126, %nyx_string* %1127)
  br i1 %1128, label %sc_or_end302, label %sc_or_rhs301
sc_or_rhs301:
  %1129 = load %nyx_string*, %nyx_string** %1116
  %1130 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1131 = load %nyx_string*, %nyx_string** %1130
  %1132 = call i1 @nyx_string_contains(%nyx_string* %1129, %nyx_string* %1131)
  store i1 %1132, i1* %1124
  br label %sc_or_end302
sc_or_end302:
  %1133 = load i1, i1* %1124
  br i1 %1133, label %then303, label %else304
then303:
  %1134 = load { i64, i8* }*, { i64, i8* }** %1033
  %1135 = load %nyx_string*, %nyx_string** %1123
  %1136 = ptrtoint %nyx_string* %1135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1134, i64 %1136, i64 2)
  br label %merge305
else304:
  br label %merge305
merge305:
  br label %merge300
else299:
  br label %merge300
merge300:
  %1137 = load i64, i64* %1097
  %1138 = add i64 %1137, 1
  store i64 %1138, i64* %1097
  br label %while_cond295
while_end297:
  br label %merge294
else293:
  br label %merge294
merge294:
  %1139 = load { i64, i8* }*, { i64, i8* }** %1033
  %1140 = call { i64, i8* }* @sort_str({ i64, i8* }* %1139)
  ret { i64, i8* }* %1140
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1141 = load %nyx_string*, %nyx_string** %path.ptr
  %1142 = call i8* @nyx_string_to_cstr(%nyx_string* %1141)
  %1143 = call %nyx_string* @nyx_read_file(i8* %1142)
  %1144 = alloca %nyx_string*
  store %nyx_string* %1143, %nyx_string** %1144
  %1145 = load %nyx_string*, %nyx_string** %1144
  %1146 = getelementptr [7 x i8], [7 x i8]* @.str45, i32 0, i32 0
  %1147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1146, i64 6)
  %1148 = call i1 @nyx_string_contains(%nyx_string* %1145, %nyx_string* %1147)
  ret i1 %1148
}

define internal %nyx_string* @lib_modulo_de(
%nyx_string* %file.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %1149 = load %nyx_string*, %nyx_string** %file.ptr
  %1150 = alloca %nyx_string*
  store %nyx_string* %1149, %nyx_string** %1150
  %1151 = load %nyx_string*, %nyx_string** %1150
  %1152 = getelementptr [3 x i8], [3 x i8]* @.str46, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1152, i64 2)
  %1154 = call i1 @nyx_string_starts_with(%nyx_string* %1151, %nyx_string* %1153)
  br i1 %1154, label %then306, label %else307
then306:
  %1155 = load %nyx_string*, %nyx_string** %1150
  %1156 = load %nyx_string*, %nyx_string** %1150
  %1157 = call i64 @nyx_string_byte_length(%nyx_string* %1156)
  %1158 = call %nyx_string* @nyx_string_substring(%nyx_string* %1155, i64 2, i64 %1157)
  store %nyx_string* %1158, %nyx_string** %1150
  br label %merge308
else307:
  br label %merge308
merge308:
  %1159 = load %nyx_string*, %nyx_string** %1150
  %1160 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %1161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1160, i64 3)
  %1162 = call i1 @nyx_string_ends_with(%nyx_string* %1159, %nyx_string* %1161)
  br i1 %1162, label %then309, label %else310
then309:
  %1163 = load %nyx_string*, %nyx_string** %1150
  %1164 = load %nyx_string*, %nyx_string** %1150
  %1165 = call i64 @nyx_string_byte_length(%nyx_string* %1164)
  %1166 = sub i64 %1165, 3
  %1167 = call %nyx_string* @nyx_string_substring(%nyx_string* %1163, i64 0, i64 %1166)
  store %nyx_string* %1167, %nyx_string** %1150
  br label %merge311
else310:
  br label %merge311
merge311:
  %1168 = load %nyx_string*, %nyx_string** %1150
  ret %nyx_string* %1168
}

define internal %nyx_string* @rt_cache_sh(
) {
  %1169 = getelementptr [17 x i8], [17 x i8]* @.str48, i32 0, i32 0
  %1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1169, i64 16)
  %1171 = alloca %nyx_string*
  store %nyx_string* %1170, %nyx_string** %1171
  %1172 = load %nyx_string*, %nyx_string** %1171
  %1173 = getelementptr [41 x i8], [41 x i8]* @.str49, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1173, i64 40)
  %1175 = call %nyx_string* @nyx_string_concat(%nyx_string* %1172, %nyx_string* %1174)
  store %nyx_string* %1175, %nyx_string** %1171
  %1176 = load %nyx_string*, %nyx_string** %1171
  %1177 = getelementptr [24 x i8], [24 x i8]* @.str50, i32 0, i32 0
  %1178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1177, i64 23)
  %1179 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1178)
  store %nyx_string* %1179, %nyx_string** %1171
  %1180 = load %nyx_string*, %nyx_string** %1171
  %1181 = getelementptr [92 x i8], [92 x i8]* @.str51, i32 0, i32 0
  %1182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1181, i64 91)
  %1183 = call %nyx_string* @nyx_string_concat(%nyx_string* %1180, %nyx_string* %1182)
  store %nyx_string* %1183, %nyx_string** %1171
  %1184 = load %nyx_string*, %nyx_string** %1171
  %1185 = getelementptr [177 x i8], [177 x i8]* @.str52, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1185, i64 176)
  %1187 = call %nyx_string* @nyx_string_concat(%nyx_string* %1184, %nyx_string* %1186)
  store %nyx_string* %1187, %nyx_string** %1171
  %1188 = load %nyx_string*, %nyx_string** %1171
  %1189 = getelementptr [35 x i8], [35 x i8]* @.str53, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1189, i64 34)
  %1191 = call %nyx_string* @nyx_string_concat(%nyx_string* %1188, %nyx_string* %1190)
  store %nyx_string* %1191, %nyx_string** %1171
  %1192 = load %nyx_string*, %nyx_string** %1171
  %1193 = getelementptr [83 x i8], [83 x i8]* @.str54, i32 0, i32 0
  %1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1193, i64 82)
  %1195 = call %nyx_string* @nyx_string_concat(%nyx_string* %1192, %nyx_string* %1194)
  store %nyx_string* %1195, %nyx_string** %1171
  %1196 = load %nyx_string*, %nyx_string** %1171
  %1197 = getelementptr [49 x i8], [49 x i8]* @.str55, i32 0, i32 0
  %1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1197, i64 48)
  %1199 = call %nyx_string* @nyx_string_concat(%nyx_string* %1196, %nyx_string* %1198)
  store %nyx_string* %1199, %nyx_string** %1171
  %1200 = load %nyx_string*, %nyx_string** %1171
  %1201 = getelementptr [89 x i8], [89 x i8]* @.str56, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1201, i64 88)
  %1203 = call %nyx_string* @nyx_string_concat(%nyx_string* %1200, %nyx_string* %1202)
  store %nyx_string* %1203, %nyx_string** %1171
  %1204 = load %nyx_string*, %nyx_string** %1171
  %1205 = getelementptr [68 x i8], [68 x i8]* @.str57, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1205, i64 67)
  %1207 = call %nyx_string* @nyx_string_concat(%nyx_string* %1204, %nyx_string* %1206)
  store %nyx_string* %1207, %nyx_string** %1171
  %1208 = load %nyx_string*, %nyx_string** %1171
  %1209 = getelementptr [15 x i8], [15 x i8]* @.str58, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1209, i64 14)
  %1211 = call %nyx_string* @nyx_string_concat(%nyx_string* %1208, %nyx_string* %1210)
  store %nyx_string* %1211, %nyx_string** %1171
  %1212 = load %nyx_string*, %nyx_string** %1171
  %1213 = getelementptr [49 x i8], [49 x i8]* @.str59, i32 0, i32 0
  %1214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1213, i64 48)
  %1215 = call %nyx_string* @nyx_string_concat(%nyx_string* %1212, %nyx_string* %1214)
  store %nyx_string* %1215, %nyx_string** %1171
  %1216 = load %nyx_string*, %nyx_string** %1171
  %1217 = getelementptr [196 x i8], [196 x i8]* @.str60, i32 0, i32 0
  %1218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1217, i64 195)
  %1219 = call %nyx_string* @nyx_string_concat(%nyx_string* %1216, %nyx_string* %1218)
  store %nyx_string* %1219, %nyx_string** %1171
  %1220 = load %nyx_string*, %nyx_string** %1171
  %1221 = getelementptr [8 x i8], [8 x i8]* @.str61, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1221, i64 7)
  %1223 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1222)
  store %nyx_string* %1223, %nyx_string** %1171
  %1224 = load %nyx_string*, %nyx_string** %1171
  %1225 = getelementptr [138 x i8], [138 x i8]* @.str62, i32 0, i32 0
  %1226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1225, i64 137)
  %1227 = call %nyx_string* @nyx_string_concat(%nyx_string* %1224, %nyx_string* %1226)
  store %nyx_string* %1227, %nyx_string** %1171
  %1228 = load %nyx_string*, %nyx_string** %1171
  %1229 = getelementptr [43 x i8], [43 x i8]* @.str63, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1229, i64 42)
  %1231 = call %nyx_string* @nyx_string_concat(%nyx_string* %1228, %nyx_string* %1230)
  store %nyx_string* %1231, %nyx_string** %1171
  %1232 = load %nyx_string*, %nyx_string** %1171
  %1233 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1233, i64 5)
  %1235 = call %nyx_string* @nyx_string_concat(%nyx_string* %1232, %nyx_string* %1234)
  store %nyx_string* %1235, %nyx_string** %1171
  %1236 = load %nyx_string*, %nyx_string** %1171
  %1237 = getelementptr [27 x i8], [27 x i8]* @.str65, i32 0, i32 0
  %1238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1237, i64 26)
  %1239 = call %nyx_string* @nyx_string_concat(%nyx_string* %1236, %nyx_string* %1238)
  store %nyx_string* %1239, %nyx_string** %1171
  %1240 = load %nyx_string*, %nyx_string** %1171
  %1241 = getelementptr [3 x i8], [3 x i8]* @.str66, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1241, i64 2)
  %1243 = call %nyx_string* @nyx_string_concat(%nyx_string* %1240, %nyx_string* %1242)
  store %nyx_string* %1243, %nyx_string** %1171
  %1244 = load %nyx_string*, %nyx_string** %1171
  ret %nyx_string* %1244
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
  %1245 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1245, i64 8)
  %1247 = call i8* @nyx_string_to_cstr(%nyx_string* %1246)
  %1248 = call %nyx_string* @nyx_getenv(i8* %1247)
  %1249 = alloca %nyx_string*
  store %nyx_string* %1248, %nyx_string** %1249
  %1250 = load %nyx_string*, %nyx_string** %1249
  %1251 = getelementptr [1 x i8], [1 x i8]* @.str68, i32 0, i32 0
  %1252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1251, i64 0)
  %1253 = call i1 @nyx_string_equals(%nyx_string* %1250, %nyx_string* %1252)
  br i1 %1253, label %then312, label %else313
then312:
  %1254 = getelementptr %TestResult, %TestResult* null, i32 1
  %1255 = ptrtoint %TestResult* %1254 to i64
  %1256 = call i8* @GC_malloc(i64 %1255)
  %1257 = bitcast i8* %1256 to %TestResult*
  %1258 = load %nyx_string*, %nyx_string** %file.ptr
  %1259 = getelementptr %TestResult, %TestResult* %1257, i32 0, i32 0
  store %nyx_string* %1258, %nyx_string** %1259
  %1260 = getelementptr %TestResult, %TestResult* %1257, i32 0, i32 1
  store i64 0, i64* %1260
  %1261 = getelementptr %TestResult, %TestResult* %1257, i32 0, i32 2
  store i64 0, i64* %1261
  %1262 = getelementptr [24 x i8], [24 x i8]* @.str69, i32 0, i32 0
  %1263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1262, i64 23)
  %1264 = getelementptr %TestResult, %TestResult* %1257, i32 0, i32 3
  store %nyx_string* %1263, %nyx_string** %1264
  %1265 = getelementptr %TestResult, %TestResult* %1257, i32 0, i32 4
  store i1 0, i1* %1265
  %1266 = load %TestResult, %TestResult* %1257
  ret %TestResult %1266
else313:
  br label %merge314
merge314:
  %1267 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1267, i64 3)
  %1269 = call i8* @nyx_string_to_cstr(%nyx_string* %1268)
  %1270 = call %nyx_string* @nyx_getenv(i8* %1269)
  %1271 = alloca %nyx_string*
  store %nyx_string* %1270, %nyx_string** %1271
  %1272 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1273 = load i64, i64* %1272
  %1274 = call %nyx_string* @nyx_string_from_int(i64 %1273)
  %1275 = alloca %nyx_string*
  store %nyx_string* %1274, %nyx_string** %1275
  %1276 = getelementptr [31 x i8], [31 x i8]* @.str71, i32 0, i32 0
  %1277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1276, i64 30)
  %1278 = call i8* @nyx_string_to_cstr(%nyx_string* %1277)
  %1279 = call %nyx_string* @nyx_exec(i8* %1278)
  %1280 = call %nyx_string* @nyx_string_trim(%nyx_string* %1279)
  %1281 = alloca %nyx_string*
  store %nyx_string* %1280, %nyx_string** %1281
  %1282 = load %nyx_string*, %nyx_string** %1281
  %1283 = getelementptr [9 x i8], [9 x i8]* @.str72, i32 0, i32 0
  %1284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1283, i64 8)
  %1285 = call %nyx_string* @nyx_string_concat(%nyx_string* %1282, %nyx_string* %1284)
  %1286 = alloca %nyx_string*
  store %nyx_string* %1285, %nyx_string** %1286
  %1287 = load %nyx_string*, %nyx_string** %1281
  %1288 = getelementptr [5 x i8], [5 x i8]* @.str73, i32 0, i32 0
  %1289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1288, i64 4)
  %1290 = call %nyx_string* @nyx_string_concat(%nyx_string* %1287, %nyx_string* %1289)
  %1291 = alloca %nyx_string*
  store %nyx_string* %1290, %nyx_string** %1291
  %1292 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1292, i64 0)
  %1294 = alloca %nyx_string*
  store %nyx_string* %1293, %nyx_string** %1294
  %1295 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1296 = load i1, i1* %1295
  br i1 %1296, label %then315, label %else316
then315:
  %1297 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %1298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1297, i64 4)
  store %nyx_string* %1298, %nyx_string** %1294
  br label %merge317
else316:
  br label %merge317
merge317:
  %1299 = getelementptr [62 x i8], [62 x i8]* @.str76, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1299, i64 61)
  %1301 = getelementptr [54 x i8], [54 x i8]* @.str77, i32 0, i32 0
  %1302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1301, i64 53)
  %1303 = call %nyx_string* @nyx_string_concat(%nyx_string* %1300, %nyx_string* %1302)
  %1304 = getelementptr [48 x i8], [48 x i8]* @.str78, i32 0, i32 0
  %1305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1304, i64 47)
  %1306 = call %nyx_string* @nyx_string_concat(%nyx_string* %1303, %nyx_string* %1305)
  %1307 = getelementptr [47 x i8], [47 x i8]* @.str79, i32 0, i32 0
  %1308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1307, i64 46)
  %1309 = call %nyx_string* @nyx_string_concat(%nyx_string* %1306, %nyx_string* %1308)
  %1310 = getelementptr [67 x i8], [67 x i8]* @.str80, i32 0, i32 0
  %1311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1310, i64 66)
  %1312 = call %nyx_string* @nyx_string_concat(%nyx_string* %1309, %nyx_string* %1311)
  %1313 = getelementptr [51 x i8], [51 x i8]* @.str81, i32 0, i32 0
  %1314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1313, i64 50)
  %1315 = call %nyx_string* @nyx_string_concat(%nyx_string* %1312, %nyx_string* %1314)
  %1316 = getelementptr [105 x i8], [105 x i8]* @.str82, i32 0, i32 0
  %1317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1316, i64 104)
  %1318 = call %nyx_string* @nyx_string_concat(%nyx_string* %1315, %nyx_string* %1317)
  %1319 = getelementptr [23 x i8], [23 x i8]* @.str83, i32 0, i32 0
  %1320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1319, i64 22)
  %1321 = call %nyx_string* @nyx_string_concat(%nyx_string* %1318, %nyx_string* %1320)
  %1322 = alloca %nyx_string*
  store %nyx_string* %1321, %nyx_string** %1322
  %1323 = getelementptr [15 x i8], [15 x i8]* @.str84, i32 0, i32 0
  %1324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1323, i64 14)
  %1325 = call i8* @nyx_string_to_cstr(%nyx_string* %1324)
  %1326 = call %nyx_string* @nyx_getenv(i8* %1325)
  %1327 = alloca %nyx_string*
  store %nyx_string* %1326, %nyx_string** %1327
  %1328 = alloca i1
  store i1 false, i1* %1328
  %1329 = load %nyx_string*, %nyx_string** %1327
  %1330 = getelementptr [1 x i8], [1 x i8]* @.str85, i32 0, i32 0
  %1331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1330, i64 0)
  %1332 = call i1 @nyx_string_equals(%nyx_string* %1329, %nyx_string* %1331)
  %1333 = xor i1 %1332, true
  br i1 %1333, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1334 = load %nyx_string*, %nyx_string** %1327
  %1335 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %1336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1335, i64 1)
  %1337 = call i1 @nyx_string_starts_with(%nyx_string* %1334, %nyx_string* %1336)
  %1338 = xor i1 %1337, true
  store i1 %1338, i1* %1328
  br label %sc_and_end319
sc_and_end319:
  %1339 = load i1, i1* %1328
  br i1 %1339, label %then320, label %else321
then320:
  %1340 = load %nyx_string*, %nyx_string** %1271
  %1341 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %1342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1341, i64 1)
  %1343 = call %nyx_string* @nyx_string_concat(%nyx_string* %1340, %nyx_string* %1342)
  %1344 = load %nyx_string*, %nyx_string** %1327
  %1345 = call %nyx_string* @nyx_string_concat(%nyx_string* %1343, %nyx_string* %1344)
  store %nyx_string* %1345, %nyx_string** %1327
  br label %merge322
else321:
  br label %merge322
merge322:
  %1346 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1346, i64 7)
  %1348 = load %nyx_string*, %nyx_string** %1322
  %1349 = call %nyx_string* @nyx_string_concat(%nyx_string* %1347, %nyx_string* %1348)
  %1350 = getelementptr [3 x i8], [3 x i8]* @.str89, i32 0, i32 0
  %1351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1350, i64 2)
  %1352 = call %nyx_string* @nyx_string_concat(%nyx_string* %1349, %nyx_string* %1351)
  %1353 = alloca %nyx_string*
  store %nyx_string* %1352, %nyx_string** %1353
  %1354 = alloca i1
  store i1 false, i1* %1354
  %1355 = load %nyx_string*, %nyx_string** %1327
  %1356 = getelementptr [1 x i8], [1 x i8]* @.str90, i32 0, i32 0
  %1357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1356, i64 0)
  %1358 = call i1 @nyx_string_equals(%nyx_string* %1355, %nyx_string* %1357)
  %1359 = xor i1 %1358, true
  br i1 %1359, label %sc_and_rhs323, label %sc_and_end324
sc_and_rhs323:
  %1360 = load %nyx_string*, %nyx_string** %1327
  %1361 = call i8* @nyx_string_to_cstr(%nyx_string* %1360)
  %1362 = call i1 @nyx_file_exists(i8* %1361)
  store i1 %1362, i1* %1354
  br label %sc_and_end324
sc_and_end324:
  %1363 = load i1, i1* %1354
  br i1 %1363, label %then325, label %else326
then325:
  %1364 = getelementptr [9 x i8], [9 x i8]* @.str91, i32 0, i32 0
  %1365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1364, i64 8)
  %1366 = load %nyx_string*, %nyx_string** %1327
  %1367 = call %nyx_string* @nyx_string_concat(%nyx_string* %1365, %nyx_string* %1366)
  %1368 = getelementptr [4 x i8], [4 x i8]* @.str92, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1368, i64 3)
  %1370 = call %nyx_string* @nyx_string_concat(%nyx_string* %1367, %nyx_string* %1369)
  store %nyx_string* %1370, %nyx_string** %1353
  br label %merge327
else326:
  %1371 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1372 = getelementptr [1 x i8], [1 x i8]* @.str93, i32 0, i32 0
  %1373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1372, i64 0)
  %1374 = call i1 @nyx_string_equals(%nyx_string* %1371, %nyx_string* %1373)
  br i1 %1374, label %then328, label %else329
then328:
  %1375 = call %nyx_string* @rt_cache_sh()
  %1376 = load %nyx_string*, %nyx_string** %1353
  %1377 = call %nyx_string* @nyx_string_concat(%nyx_string* %1375, %nyx_string* %1376)
  %1378 = getelementptr [22 x i8], [22 x i8]* @.str94, i32 0, i32 0
  %1379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1378, i64 21)
  %1380 = call %nyx_string* @nyx_string_concat(%nyx_string* %1377, %nyx_string* %1379)
  %1381 = load %nyx_string*, %nyx_string** %1322
  %1382 = call %nyx_string* @nyx_string_concat(%nyx_string* %1380, %nyx_string* %1381)
  %1383 = getelementptr [31 x i8], [31 x i8]* @.str95, i32 0, i32 0
  %1384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1383, i64 30)
  %1385 = call %nyx_string* @nyx_string_concat(%nyx_string* %1382, %nyx_string* %1384)
  store %nyx_string* %1385, %nyx_string** %1353
  br label %merge330
else329:
  br label %merge330
merge330:
  br label %merge327
merge327:
  %1386 = getelementptr [3 x i8], [3 x i8]* @.str96, i32 0, i32 0
  %1387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1386, i64 2)
  %1388 = getelementptr [13 x i8], [13 x i8]* @.str97, i32 0, i32 0
  %1389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1388, i64 12)
  %1390 = call %nyx_string* @nyx_string_concat(%nyx_string* %1387, %nyx_string* %1389)
  store %nyx_string* %1390, %nyx_string** %1322
  %1391 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1391, i64 0)
  %1393 = alloca %nyx_string*
  store %nyx_string* %1392, %nyx_string** %1393
  %1394 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1394, i64 0)
  %1396 = alloca %nyx_string*
  store %nyx_string* %1395, %nyx_string** %1396
  %1397 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1397, i64 0)
  %1399 = alloca %nyx_string*
  store %nyx_string* %1398, %nyx_string** %1399
  %1400 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1401 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1401, i64 0)
  %1403 = call i1 @nyx_string_equals(%nyx_string* %1400, %nyx_string* %1402)
  %1404 = xor i1 %1403, true
  br i1 %1404, label %then331, label %else332
then331:
  %1405 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1406 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %1407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1406, i64 1)
  %1408 = call %nyx_string* @nyx_string_concat(%nyx_string* %1405, %nyx_string* %1407)
  %1409 = load i64, i64* %cov_idx.ptr
  %1410 = call %nyx_string* @nyx_string_from_int(i64 %1409)
  %1411 = call %nyx_string* @nyx_string_concat(%nyx_string* %1408, %nyx_string* %1410)
  %1412 = alloca %nyx_string*
  store %nyx_string* %1411, %nyx_string** %1412
  %1413 = getelementptr [20 x i8], [20 x i8]* @.str103, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1413, i64 19)
  %1415 = load %nyx_string*, %nyx_string** %1412
  %1416 = call %nyx_string* @nyx_string_concat(%nyx_string* %1414, %nyx_string* %1415)
  %1417 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1417, i64 5)
  %1419 = call %nyx_string* @nyx_string_concat(%nyx_string* %1416, %nyx_string* %1418)
  store %nyx_string* %1419, %nyx_string** %1393
  %1420 = getelementptr [62 x i8], [62 x i8]* @.str105, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1420, i64 61)
  store %nyx_string* %1421, %nyx_string** %1396
  %1422 = getelementptr [20 x i8], [20 x i8]* @.str106, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1422, i64 19)
  %1424 = load %nyx_string*, %nyx_string** %1412
  %1425 = call %nyx_string* @nyx_string_concat(%nyx_string* %1423, %nyx_string* %1424)
  %1426 = getelementptr [11 x i8], [11 x i8]* @.str107, i32 0, i32 0
  %1427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1426, i64 10)
  %1428 = call %nyx_string* @nyx_string_concat(%nyx_string* %1425, %nyx_string* %1427)
  store %nyx_string* %1428, %nyx_string** %1399
  br label %merge333
else332:
  br label %merge333
merge333:
  %1429 = getelementptr [20 x i8], [20 x i8]* @.str108, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1429, i64 19)
  %1431 = getelementptr [180 x i8], [180 x i8]* @.str109, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1431, i64 179)
  %1433 = call %nyx_string* @nyx_string_concat(%nyx_string* %1430, %nyx_string* %1432)
  %1434 = getelementptr [322 x i8], [322 x i8]* @.str110, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1434, i64 321)
  %1436 = call %nyx_string* @nyx_string_concat(%nyx_string* %1433, %nyx_string* %1435)
  %1437 = alloca %nyx_string*
  store %nyx_string* %1436, %nyx_string** %1437
  %1438 = load %nyx_string*, %nyx_string** %file.ptr
  %1439 = call %nyx_string* @lib_modulo_de(%nyx_string* %1438)
  %1440 = alloca %nyx_string*
  store %nyx_string* %1439, %nyx_string** %1440
  %1441 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1441, i64 0)
  %1443 = alloca %nyx_string*
  store %nyx_string* %1442, %nyx_string** %1443
  %1444 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1444, i64 0)
  %1446 = alloca %nyx_string*
  store %nyx_string* %1445, %nyx_string** %1446
  %1447 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1448 = load %nyx_string*, %nyx_string** %1447
  %1449 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1449, i64 0)
  %1451 = call i1 @nyx_string_equals(%nyx_string* %1448, %nyx_string* %1450)
  %1452 = xor i1 %1451, true
  br i1 %1452, label %then334, label %else335
then334:
  %1453 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1454 = load %nyx_string*, %nyx_string** %1453
  %1455 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1456 = load %nyx_string*, %nyx_string** %1455
  %1457 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1457, i64 1)
  %1459 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1456, %nyx_string* %1458)
  %1460 = alloca { i64, i8* }*
  store { i64, i8* }* %1459, { i64, i8* }** %1460
  %1461 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %1462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1461, i64 0)
  %1463 = alloca %nyx_string*
  store %nyx_string* %1462, %nyx_string** %1463
  %1464 = alloca i64
  store i64 0, i64* %1464
  %1465 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1465, i64 0)
  %1467 = alloca %nyx_string*
  store %nyx_string* %1466, %nyx_string** %1467
  %1468 = getelementptr [2 x i8], [2 x i8]* @.str117, i32 0, i32 0
  %1469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1468, i64 1)
  %1470 = alloca %nyx_string*
  store %nyx_string* %1469, %nyx_string** %1470
  %1471 = call i8* @llvm.stacksave()
  br label %while_cond337
while_cond337:
  %1472 = load i64, i64* %1464
  %1473 = load { i64, i8* }*, { i64, i8* }** %1460
  %1474 = call i64 @nyx_array_length({ i64, i8* }* %1473)
  %1475 = icmp slt i64 %1472, %1474
  br i1 %1475, label %while_body338, label %while_end339
while_body338:
  call void @llvm.stackrestore(i8* %1471)
  %1476 = load { i64, i8* }*, { i64, i8* }** %1460
  %1477 = load i64, i64* %1464
  %1478 = call i64 @nyx_array_get_checked({ i64, i8* }* %1476, i64 %1477, i64 2)
  %1479 = inttoptr i64 %1478 to %nyx_string*
  %1480 = alloca %nyx_string*
  store %nyx_string* %1479, %nyx_string** %1480
  %1481 = alloca i1
  store i1 false, i1* %1481
  %1482 = load %nyx_string*, %nyx_string** %1480
  %1483 = load %nyx_string*, %nyx_string** %1467
  %1484 = call i1 @nyx_string_equals(%nyx_string* %1482, %nyx_string* %1483)
  %1485 = xor i1 %1484, true
  br i1 %1485, label %sc_and_rhs340, label %sc_and_end341
sc_and_rhs340:
  %1486 = load %nyx_string*, %nyx_string** %1480
  %1487 = load %nyx_string*, %nyx_string** %1440
  %1488 = call i1 @nyx_string_equals(%nyx_string* %1486, %nyx_string* %1487)
  %1489 = xor i1 %1488, true
  store i1 %1489, i1* %1481
  br label %sc_and_end341
sc_and_end341:
  %1490 = load i1, i1* %1481
  br i1 %1490, label %then342, label %else343
then342:
  %1491 = load %nyx_string*, %nyx_string** %1463
  %1492 = load %nyx_string*, %nyx_string** %1467
  %1493 = call i1 @nyx_string_equals(%nyx_string* %1491, %nyx_string* %1492)
  %1494 = xor i1 %1493, true
  br i1 %1494, label %then345, label %else346
then345:
  %1495 = load %nyx_string*, %nyx_string** %1463
  %1496 = load %nyx_string*, %nyx_string** %1470
  %1497 = call %nyx_string* @nyx_string_concat(%nyx_string* %1495, %nyx_string* %1496)
  store %nyx_string* %1497, %nyx_string** %1463
  br label %merge347
else346:
  br label %merge347
merge347:
  %1498 = load %nyx_string*, %nyx_string** %1463
  %1499 = load %nyx_string*, %nyx_string** %1480
  %1500 = call %nyx_string* @nyx_string_concat(%nyx_string* %1498, %nyx_string* %1499)
  store %nyx_string* %1500, %nyx_string** %1463
  br label %merge344
else343:
  br label %merge344
merge344:
  %1501 = load i64, i64* %1464
  %1502 = add i64 %1501, 1
  store i64 %1502, i64* %1464
  br label %while_cond337
while_end339:
  %1503 = load %nyx_string*, %nyx_string** %1463
  %1504 = getelementptr [1 x i8], [1 x i8]* @.str118, i32 0, i32 0
  %1505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1504, i64 0)
  %1506 = call i1 @nyx_string_equals(%nyx_string* %1503, %nyx_string* %1505)
  %1507 = xor i1 %1506, true
  br i1 %1507, label %then348, label %else349
then348:
  %1508 = getelementptr [19 x i8], [19 x i8]* @.str119, i32 0, i32 0
  %1509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1508, i64 18)
  %1510 = load %nyx_string*, %nyx_string** %1463
  %1511 = call %nyx_string* @nyx_string_concat(%nyx_string* %1509, %nyx_string* %1510)
  %1512 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %1513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1512, i64 1)
  %1514 = call %nyx_string* @nyx_string_concat(%nyx_string* %1511, %nyx_string* %1513)
  store %nyx_string* %1514, %nyx_string** %1443
  br label %merge350
else349:
  br label %merge350
merge350:
  %1515 = alloca i1
  store i1 false, i1* %1515
  %1516 = load %nyx_string*, %nyx_string** %1440
  %1517 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1517, i64 0)
  %1519 = call i1 @nyx_string_equals(%nyx_string* %1516, %nyx_string* %1518)
  %1520 = xor i1 %1519, true
  br i1 %1520, label %sc_and_rhs351, label %sc_and_end352
sc_and_rhs351:
  %1521 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1521, i64 1)
  %1523 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1524 = load %nyx_string*, %nyx_string** %1523
  %1525 = call %nyx_string* @nyx_string_concat(%nyx_string* %1522, %nyx_string* %1524)
  %1526 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1526, i64 1)
  %1528 = call %nyx_string* @nyx_string_concat(%nyx_string* %1525, %nyx_string* %1527)
  %1529 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1529, i64 1)
  %1531 = load %nyx_string*, %nyx_string** %1440
  %1532 = call %nyx_string* @nyx_string_concat(%nyx_string* %1530, %nyx_string* %1531)
  %1533 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1533, i64 1)
  %1535 = call %nyx_string* @nyx_string_concat(%nyx_string* %1532, %nyx_string* %1534)
  %1536 = call i1 @nyx_string_contains(%nyx_string* %1528, %nyx_string* %1535)
  store i1 %1536, i1* %1515
  br label %sc_and_end352
sc_and_end352:
  %1537 = load i1, i1* %1515
  br i1 %1537, label %then353, label %else354
then353:
  %1538 = load %nyx_string*, %nyx_string** %1443
  %1539 = getelementptr [16 x i8], [16 x i8]* @.str126, i32 0, i32 0
  %1540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1539, i64 15)
  %1541 = call %nyx_string* @nyx_string_concat(%nyx_string* %1538, %nyx_string* %1540)
  %1542 = load %nyx_string*, %nyx_string** %1440
  %1543 = call %nyx_string* @nyx_string_concat(%nyx_string* %1541, %nyx_string* %1542)
  %1544 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %1545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1544, i64 1)
  %1546 = call %nyx_string* @nyx_string_concat(%nyx_string* %1543, %nyx_string* %1545)
  store %nyx_string* %1546, %nyx_string** %1443
  br label %merge355
else354:
  br label %merge355
merge355:
  %1547 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1548 = load %nyx_string*, %nyx_string** %1547
  %1549 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1550 = load %nyx_string*, %nyx_string** %1549
  %1551 = getelementptr [2 x i8], [2 x i8]* @.str128, i32 0, i32 0
  %1552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1551, i64 1)
  %1553 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1550, %nyx_string* %1552)
  %1554 = alloca { i64, i8* }*
  store { i64, i8* }* %1553, { i64, i8* }** %1554
  %1555 = alloca i64
  store i64 0, i64* %1555
  %1556 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1556, i64 1)
  %1558 = alloca %nyx_string*
  store %nyx_string* %1557, %nyx_string** %1558
  %1559 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1559, i64 1)
  %1561 = alloca %nyx_string*
  store %nyx_string* %1560, %nyx_string** %1561
  %1562 = getelementptr [3 x i8], [3 x i8]* @.str131, i32 0, i32 0
  %1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1562, i64 2)
  %1564 = alloca %nyx_string*
  store %nyx_string* %1563, %nyx_string** %1564
  %1565 = call i8* @llvm.stacksave()
  br label %while_cond356
while_cond356:
  %1566 = load i64, i64* %1555
  %1567 = load { i64, i8* }*, { i64, i8* }** %1554
  %1568 = call i64 @nyx_array_length({ i64, i8* }* %1567)
  %1569 = icmp slt i64 %1566, %1568
  br i1 %1569, label %while_body357, label %while_end358
while_body357:
  call void @llvm.stackrestore(i8* %1565)
  %1570 = load { i64, i8* }*, { i64, i8* }** %1554
  %1571 = load i64, i64* %1555
  %1572 = call i64 @nyx_array_get_checked({ i64, i8* }* %1570, i64 %1571, i64 2)
  %1573 = inttoptr i64 %1572 to %nyx_string*
  %1574 = alloca %nyx_string*
  store %nyx_string* %1573, %nyx_string** %1574
  %1575 = load %nyx_string*, %nyx_string** %1574
  %1576 = load %nyx_string*, %nyx_string** %1558
  %1577 = call i64 @nyx_string_index_of(%nyx_string* %1575, %nyx_string* %1576)
  %1578 = alloca i64
  store i64 %1577, i64* %1578
  %1579 = load i64, i64* %1578
  %1580 = icmp sgt i64 %1579, 0
  br i1 %1580, label %then359, label %else360
then359:
  %1581 = load %nyx_string*, %nyx_string** %1574
  %1582 = load i64, i64* %1578
  %1583 = call %nyx_string* @nyx_string_substring(%nyx_string* %1581, i64 0, i64 %1582)
  %1584 = alloca %nyx_string*
  store %nyx_string* %1583, %nyx_string** %1584
  %1585 = load %nyx_string*, %nyx_string** %1584
  %1586 = load %nyx_string*, %nyx_string** %1440
  %1587 = call i1 @nyx_string_equals(%nyx_string* %1585, %nyx_string* %1586)
  %1588 = xor i1 %1587, true
  br i1 %1588, label %then362, label %else363
then362:
  %1589 = load %nyx_string*, %nyx_string** %1446
  %1590 = load %nyx_string*, %nyx_string** %1561
  %1591 = call %nyx_string* @nyx_string_concat(%nyx_string* %1589, %nyx_string* %1590)
  %1592 = load %nyx_string*, %nyx_string** %1574
  %1593 = load i64, i64* %1578
  %1594 = add i64 %1593, 1
  %1595 = load %nyx_string*, %nyx_string** %1574
  %1596 = call i64 @nyx_string_byte_length(%nyx_string* %1595)
  %1597 = call %nyx_string* @nyx_string_substring(%nyx_string* %1592, i64 %1594, i64 %1596)
  %1598 = call %nyx_string* @nyx_string_concat(%nyx_string* %1591, %nyx_string* %1597)
  %1599 = load %nyx_string*, %nyx_string** %1564
  %1600 = call %nyx_string* @nyx_string_concat(%nyx_string* %1598, %nyx_string* %1599)
  store %nyx_string* %1600, %nyx_string** %1446
  br label %merge364
else363:
  br label %merge364
merge364:
  br label %merge361
else360:
  br label %merge361
merge361:
  %1601 = load i64, i64* %1555
  %1602 = add i64 %1601, 1
  store i64 %1602, i64* %1555
  br label %while_cond356
while_end358:
  br label %merge336
else335:
  br label %merge336
merge336:
  %1603 = getelementptr [55 x i8], [55 x i8]* @.str132, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1603, i64 54)
  %1605 = load %nyx_string*, %nyx_string** %1271
  %1606 = call %nyx_string* @nyx_string_concat(%nyx_string* %1604, %nyx_string* %1605)
  %1607 = getelementptr [37 x i8], [37 x i8]* @.str133, i32 0, i32 0
  %1608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1607, i64 36)
  %1609 = call %nyx_string* @nyx_string_concat(%nyx_string* %1606, %nyx_string* %1608)
  %1610 = load %nyx_string*, %nyx_string** %file.ptr
  %1611 = call %nyx_string* @nyx_string_concat(%nyx_string* %1609, %nyx_string* %1610)
  %1612 = getelementptr [2 x i8], [2 x i8]* @.str134, i32 0, i32 0
  %1613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1612, i64 1)
  %1614 = call %nyx_string* @nyx_string_concat(%nyx_string* %1611, %nyx_string* %1613)
  %1615 = load %nyx_string*, %nyx_string** %1393
  %1616 = call %nyx_string* @nyx_string_concat(%nyx_string* %1614, %nyx_string* %1615)
  %1617 = load %nyx_string*, %nyx_string** %1443
  %1618 = call %nyx_string* @nyx_string_concat(%nyx_string* %1616, %nyx_string* %1617)
  %1619 = getelementptr [22 x i8], [22 x i8]* @.str135, i32 0, i32 0
  %1620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1619, i64 21)
  %1621 = call %nyx_string* @nyx_string_concat(%nyx_string* %1618, %nyx_string* %1620)
  %1622 = load %nyx_string*, %nyx_string** %1286
  %1623 = call %nyx_string* @nyx_string_concat(%nyx_string* %1621, %nyx_string* %1622)
  %1624 = getelementptr [36 x i8], [36 x i8]* @.str136, i32 0, i32 0
  %1625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1624, i64 35)
  %1626 = call %nyx_string* @nyx_string_concat(%nyx_string* %1623, %nyx_string* %1625)
  %1627 = load %nyx_string*, %nyx_string** %1286
  %1628 = call %nyx_string* @nyx_string_concat(%nyx_string* %1626, %nyx_string* %1627)
  %1629 = getelementptr [13 x i8], [13 x i8]* @.str137, i32 0, i32 0
  %1630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1629, i64 12)
  %1631 = call %nyx_string* @nyx_string_concat(%nyx_string* %1628, %nyx_string* %1630)
  %1632 = alloca %nyx_string*
  store %nyx_string* %1631, %nyx_string** %1632
  %1633 = load %nyx_string*, %nyx_string** %1353
  %1634 = load %nyx_string*, %nyx_string** %1632
  %1635 = call %nyx_string* @nyx_string_concat(%nyx_string* %1633, %nyx_string* %1634)
  %1636 = alloca %nyx_string*
  store %nyx_string* %1635, %nyx_string** %1636
  %1637 = getelementptr [15 x i8], [15 x i8]* @.str138, i32 0, i32 0
  %1638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1637, i64 14)
  %1639 = load %nyx_string*, %nyx_string** %1281
  %1640 = call %nyx_string* @nyx_string_concat(%nyx_string* %1638, %nyx_string* %1639)
  %1641 = getelementptr [27 x i8], [27 x i8]* @.str139, i32 0, i32 0
  %1642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1641, i64 26)
  %1643 = call %nyx_string* @nyx_string_concat(%nyx_string* %1640, %nyx_string* %1642)
  %1644 = alloca %nyx_string*
  store %nyx_string* %1643, %nyx_string** %1644
  %1645 = load %nyx_string*, %nyx_string** %1437
  %1646 = load %nyx_string*, %nyx_string** %1644
  %1647 = call %nyx_string* @nyx_string_concat(%nyx_string* %1645, %nyx_string* %1646)
  %1648 = getelementptr [42 x i8], [42 x i8]* @.str140, i32 0, i32 0
  %1649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1648, i64 41)
  %1650 = call %nyx_string* @nyx_string_concat(%nyx_string* %1647, %nyx_string* %1649)
  %1651 = getelementptr [17 x i8], [17 x i8]* @.str141, i32 0, i32 0
  %1652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1651, i64 16)
  %1653 = call %nyx_string* @nyx_string_concat(%nyx_string* %1650, %nyx_string* %1652)
  %1654 = getelementptr [31 x i8], [31 x i8]* @.str142, i32 0, i32 0
  %1655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1654, i64 30)
  %1656 = call %nyx_string* @nyx_string_concat(%nyx_string* %1653, %nyx_string* %1655)
  %1657 = getelementptr [17 x i8], [17 x i8]* @.str143, i32 0, i32 0
  %1658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1657, i64 16)
  %1659 = call %nyx_string* @nyx_string_concat(%nyx_string* %1656, %nyx_string* %1658)
  %1660 = getelementptr [5 x i8], [5 x i8]* @.str144, i32 0, i32 0
  %1661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1660, i64 4)
  %1662 = call %nyx_string* @nyx_string_concat(%nyx_string* %1659, %nyx_string* %1661)
  %1663 = load %nyx_string*, %nyx_string** %1271
  %1664 = call %nyx_string* @nyx_string_concat(%nyx_string* %1662, %nyx_string* %1663)
  %1665 = getelementptr [2 x i8], [2 x i8]* @.str145, i32 0, i32 0
  %1666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1665, i64 1)
  %1667 = call %nyx_string* @nyx_string_concat(%nyx_string* %1664, %nyx_string* %1666)
  %1668 = load %nyx_string*, %nyx_string** %file.ptr
  %1669 = call %nyx_string* @nyx_string_concat(%nyx_string* %1667, %nyx_string* %1668)
  %1670 = getelementptr [12 x i8], [12 x i8]* @.str146, i32 0, i32 0
  %1671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1670, i64 11)
  %1672 = call %nyx_string* @nyx_string_concat(%nyx_string* %1669, %nyx_string* %1671)
  %1673 = getelementptr [5 x i8], [5 x i8]* @.str147, i32 0, i32 0
  %1674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1673, i64 4)
  %1675 = call %nyx_string* @nyx_string_concat(%nyx_string* %1672, %nyx_string* %1674)
  %1676 = load %nyx_string*, %nyx_string** %1249
  %1677 = call %nyx_string* @nyx_string_concat(%nyx_string* %1675, %nyx_string* %1676)
  %1678 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %1679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1678, i64 2)
  %1680 = call %nyx_string* @nyx_string_concat(%nyx_string* %1677, %nyx_string* %1679)
  %1681 = getelementptr [51 x i8], [51 x i8]* @.str149, i32 0, i32 0
  %1682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1681, i64 50)
  %1683 = call %nyx_string* @nyx_string_concat(%nyx_string* %1680, %nyx_string* %1682)
  %1684 = load %nyx_string*, %nyx_string** %1249
  %1685 = call %nyx_string* @nyx_string_concat(%nyx_string* %1683, %nyx_string* %1684)
  %1686 = getelementptr [35 x i8], [35 x i8]* @.str150, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1686, i64 34)
  %1688 = call %nyx_string* @nyx_string_concat(%nyx_string* %1685, %nyx_string* %1687)
  %1689 = load %nyx_string*, %nyx_string** %1636
  %1690 = call %nyx_string* @nyx_string_concat(%nyx_string* %1688, %nyx_string* %1689)
  %1691 = getelementptr [7 x i8], [7 x i8]* @.str151, i32 0, i32 0
  %1692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1691, i64 6)
  %1693 = call %nyx_string* @nyx_string_concat(%nyx_string* %1690, %nyx_string* %1692)
  %1694 = load %nyx_string*, %nyx_string** %1294
  %1695 = call %nyx_string* @nyx_string_concat(%nyx_string* %1693, %nyx_string* %1694)
  %1696 = load %nyx_string*, %nyx_string** %1396
  %1697 = call %nyx_string* @nyx_string_concat(%nyx_string* %1695, %nyx_string* %1696)
  %1698 = getelementptr [40 x i8], [40 x i8]* @.str152, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1698, i64 39)
  %1700 = call %nyx_string* @nyx_string_concat(%nyx_string* %1697, %nyx_string* %1699)
  %1701 = load %nyx_string*, %nyx_string** %1446
  %1702 = call %nyx_string* @nyx_string_concat(%nyx_string* %1700, %nyx_string* %1701)
  %1703 = load %nyx_string*, %nyx_string** %1322
  %1704 = call %nyx_string* @nyx_string_concat(%nyx_string* %1702, %nyx_string* %1703)
  %1705 = getelementptr [44 x i8], [44 x i8]* @.str153, i32 0, i32 0
  %1706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1705, i64 43)
  %1707 = call %nyx_string* @nyx_string_concat(%nyx_string* %1704, %nyx_string* %1706)
  %1708 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1708, i64 3)
  %1710 = call %nyx_string* @nyx_string_concat(%nyx_string* %1707, %nyx_string* %1709)
  %1711 = load %nyx_string*, %nyx_string** %1291
  %1712 = call %nyx_string* @nyx_string_concat(%nyx_string* %1710, %nyx_string* %1711)
  %1713 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1713, i64 5)
  %1715 = call %nyx_string* @nyx_string_concat(%nyx_string* %1712, %nyx_string* %1714)
  %1716 = load %nyx_string*, %nyx_string** %1286
  %1717 = call %nyx_string* @nyx_string_concat(%nyx_string* %1715, %nyx_string* %1716)
  %1718 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1718, i64 1)
  %1720 = call %nyx_string* @nyx_string_concat(%nyx_string* %1717, %nyx_string* %1719)
  %1721 = getelementptr [57 x i8], [57 x i8]* @.str157, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1721, i64 56)
  %1723 = call %nyx_string* @nyx_string_concat(%nyx_string* %1720, %nyx_string* %1722)
  %1724 = load %nyx_string*, %nyx_string** %1399
  %1725 = call %nyx_string* @nyx_string_concat(%nyx_string* %1723, %nyx_string* %1724)
  %1726 = getelementptr [9 x i8], [9 x i8]* @.str158, i32 0, i32 0
  %1727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1726, i64 8)
  %1728 = call %nyx_string* @nyx_string_concat(%nyx_string* %1725, %nyx_string* %1727)
  %1729 = load %nyx_string*, %nyx_string** %1275
  %1730 = call %nyx_string* @nyx_string_concat(%nyx_string* %1728, %nyx_string* %1729)
  %1731 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %1732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1731, i64 1)
  %1733 = call %nyx_string* @nyx_string_concat(%nyx_string* %1730, %nyx_string* %1732)
  %1734 = load %nyx_string*, %nyx_string** %1291
  %1735 = call %nyx_string* @nyx_string_concat(%nyx_string* %1733, %nyx_string* %1734)
  %1736 = getelementptr [4 x i8], [4 x i8]* @.str160, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1736, i64 3)
  %1738 = call %nyx_string* @nyx_string_concat(%nyx_string* %1735, %nyx_string* %1737)
  %1739 = load %nyx_string*, %nyx_string** %1286
  %1740 = call %nyx_string* @nyx_string_concat(%nyx_string* %1738, %nyx_string* %1739)
  %1741 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1741, i64 6)
  %1743 = call %nyx_string* @nyx_string_concat(%nyx_string* %1740, %nyx_string* %1742)
  %1744 = getelementptr [14 x i8], [14 x i8]* @.str162, i32 0, i32 0
  %1745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1744, i64 13)
  %1746 = call %nyx_string* @nyx_string_concat(%nyx_string* %1743, %nyx_string* %1745)
  %1747 = getelementptr [7 x i8], [7 x i8]* @.str163, i32 0, i32 0
  %1748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1747, i64 6)
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1746, %nyx_string* %1748)
  %1750 = load %nyx_string*, %nyx_string** %1291
  %1751 = call %nyx_string* @nyx_string_concat(%nyx_string* %1749, %nyx_string* %1750)
  %1752 = getelementptr [2 x i8], [2 x i8]* @.str164, i32 0, i32 0
  %1753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1752, i64 1)
  %1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %1751, %nyx_string* %1753)
  %1755 = getelementptr [17 x i8], [17 x i8]* @.str165, i32 0, i32 0
  %1756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1755, i64 16)
  %1757 = call %nyx_string* @nyx_string_concat(%nyx_string* %1754, %nyx_string* %1756)
  %1758 = alloca %nyx_string*
  store %nyx_string* %1757, %nyx_string** %1758
  %1759 = load %nyx_string*, %nyx_string** %1281
  %1760 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1760, i64 7)
  %1762 = call %nyx_string* @nyx_string_concat(%nyx_string* %1759, %nyx_string* %1761)
  %1763 = alloca %nyx_string*
  store %nyx_string* %1762, %nyx_string** %1763
  %1764 = load %nyx_string*, %nyx_string** %1763
  %1765 = load %nyx_string*, %nyx_string** %1758
  %1766 = ptrtoint %nyx_string* %1765 to i64
  %1767 = call i8* @nyx_string_to_cstr(%nyx_string* %1764)
  %1768 = inttoptr i64 %1766 to %nyx_string*
  %1769 = call i1 @nyx_write_file_safe(i8* %1767, %nyx_string* %1768)
  %1770 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1770, i64 5)
  %1772 = load %nyx_string*, %nyx_string** %1763
  %1773 = call %nyx_string* @nyx_string_concat(%nyx_string* %1771, %nyx_string* %1772)
  %1774 = call i8* @nyx_string_to_cstr(%nyx_string* %1773)
  %1775 = call i64 @nyx_exec_code(i8* %1774)
  %1776 = alloca i64
  store i64 %1775, i64* %1776
  %1777 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %1778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1777, i64 0)
  %1779 = alloca %nyx_string*
  store %nyx_string* %1778, %nyx_string** %1779
  %1780 = load %nyx_string*, %nyx_string** %1286
  %1781 = call i8* @nyx_string_to_cstr(%nyx_string* %1780)
  %1782 = call i1 @nyx_file_exists(i8* %1781)
  br i1 %1782, label %then365, label %else366
then365:
  %1783 = load %nyx_string*, %nyx_string** %1286
  %1784 = call i8* @nyx_string_to_cstr(%nyx_string* %1783)
  %1785 = call %nyx_string* @nyx_read_file(i8* %1784)
  store %nyx_string* %1785, %nyx_string** %1779
  br label %merge367
else366:
  br label %merge367
merge367:
  %1786 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1786, i64 7)
  %1788 = load %nyx_string*, %nyx_string** %1281
  %1789 = call %nyx_string* @nyx_string_concat(%nyx_string* %1787, %nyx_string* %1788)
  %1790 = call i8* @nyx_string_to_cstr(%nyx_string* %1789)
  %1791 = call %nyx_string* @nyx_exec(i8* %1790)
  %1792 = alloca i64
  store i64 0, i64* %1792
  %1793 = alloca i64
  store i64 0, i64* %1793
  %1794 = load %nyx_string*, %nyx_string** %1779
  %1795 = getelementptr [2 x i8], [2 x i8]* @.str170, i32 0, i32 0
  %1796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1795, i64 1)
  %1797 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1794, %nyx_string* %1796)
  %1798 = alloca { i64, i8* }*
  store { i64, i8* }* %1797, { i64, i8* }** %1798
  %1799 = alloca i64
  store i64 0, i64* %1799
  %1800 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %1801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1800, i64 5)
  %1802 = alloca %nyx_string*
  store %nyx_string* %1801, %nyx_string** %1802
  %1803 = getelementptr [6 x i8], [6 x i8]* @.str172, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1803, i64 5)
  %1805 = alloca %nyx_string*
  store %nyx_string* %1804, %nyx_string** %1805
  %1806 = call i8* @llvm.stacksave()
  br label %while_cond368
while_cond368:
  %1807 = load i64, i64* %1799
  %1808 = load { i64, i8* }*, { i64, i8* }** %1798
  %1809 = call i64 @nyx_array_length({ i64, i8* }* %1808)
  %1810 = icmp slt i64 %1807, %1809
  br i1 %1810, label %while_body369, label %while_end370
while_body369:
  call void @llvm.stackrestore(i8* %1806)
  %1811 = load { i64, i8* }*, { i64, i8* }** %1798
  %1812 = load i64, i64* %1799
  %1813 = call i64 @nyx_array_get_checked({ i64, i8* }* %1811, i64 %1812, i64 2)
  %1814 = inttoptr i64 %1813 to %nyx_string*
  %1815 = alloca %nyx_string*
  store %nyx_string* %1814, %nyx_string** %1815
  %1816 = load %nyx_string*, %nyx_string** %1815
  %1817 = load %nyx_string*, %nyx_string** %1802
  %1818 = call i1 @nyx_string_contains(%nyx_string* %1816, %nyx_string* %1817)
  br i1 %1818, label %then371, label %else372
then371:
  %1819 = load i64, i64* %1792
  %1820 = add i64 %1819, 1
  store i64 %1820, i64* %1792
  br label %merge373
else372:
  %1821 = load %nyx_string*, %nyx_string** %1815
  %1822 = load %nyx_string*, %nyx_string** %1805
  %1823 = call i1 @nyx_string_contains(%nyx_string* %1821, %nyx_string* %1822)
  br i1 %1823, label %then374, label %else375
then374:
  %1824 = load i64, i64* %1793
  %1825 = add i64 %1824, 1
  store i64 %1825, i64* %1793
  br label %merge376
else375:
  br label %merge376
merge376:
  br label %merge373
merge373:
  %1826 = load i64, i64* %1799
  %1827 = add i64 %1826, 1
  store i64 %1827, i64* %1799
  br label %while_cond368
while_end370:
  %1828 = getelementptr %TestResult, %TestResult* null, i32 1
  %1829 = ptrtoint %TestResult* %1828 to i64
  %1830 = call i8* @GC_malloc(i64 %1829)
  %1831 = bitcast i8* %1830 to %TestResult*
  %1832 = load %nyx_string*, %nyx_string** %file.ptr
  %1833 = getelementptr %TestResult, %TestResult* %1831, i32 0, i32 0
  store %nyx_string* %1832, %nyx_string** %1833
  %1834 = load i64, i64* %1792
  %1835 = getelementptr %TestResult, %TestResult* %1831, i32 0, i32 1
  store i64 %1834, i64* %1835
  %1836 = load i64, i64* %1793
  %1837 = getelementptr %TestResult, %TestResult* %1831, i32 0, i32 2
  store i64 %1836, i64* %1837
  %1838 = load %nyx_string*, %nyx_string** %1779
  %1839 = getelementptr %TestResult, %TestResult* %1831, i32 0, i32 3
  store %nyx_string* %1838, %nyx_string** %1839
  %1840 = alloca i1
  store i1 false, i1* %1840
  %1841 = load i64, i64* %1776
  %1842 = icmp eq i64 %1841, 0
  br i1 %1842, label %sc_and_rhs377, label %sc_and_end378
sc_and_rhs377:
  %1843 = load i64, i64* %1793
  %1844 = icmp eq i64 %1843, 0
  store i1 %1844, i1* %1840
  br label %sc_and_end378
sc_and_end378:
  %1845 = load i1, i1* %1840
  %1846 = getelementptr %TestResult, %TestResult* %1831, i32 0, i32 4
  store i1 %1845, i1* %1846
  %1847 = load %TestResult, %TestResult* %1831
  ret %TestResult %1847
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1848 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1849 = load i1, i1* %1848
  br i1 %1849, label %then379, label %else380
then379:
  %1850 = getelementptr [9 x i8], [9 x i8]* @.str173, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1850, i64 8)
  %1852 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1853 = load %nyx_string*, %nyx_string** %1852
  %1854 = call %nyx_string* @nyx_string_concat(%nyx_string* %1851, %nyx_string* %1853)
  %1855 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1855, i64 2)
  %1857 = call %nyx_string* @nyx_string_concat(%nyx_string* %1854, %nyx_string* %1856)
  %1858 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1859 = load i64, i64* %1858
  %1860 = call %nyx_string* @nyx_string_from_int(i64 %1859)
  %1861 = call %nyx_string* @nyx_string_concat(%nyx_string* %1857, %nyx_string* %1860)
  %1862 = getelementptr [8 x i8], [8 x i8]* @.str175, i32 0, i32 0
  %1863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1862, i64 7)
  %1864 = call %nyx_string* @nyx_string_concat(%nyx_string* %1861, %nyx_string* %1863)
  %1865 = call i8* @nyx_string_to_cstr(%nyx_string* %1864)
  call void @nyx_print_string(i8* %1865)
  %1866 = load i1, i1* %verbose.ptr
  br i1 %1866, label %then382, label %else383
then382:
  %1867 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1868 = load %nyx_string*, %nyx_string** %1867
  %1869 = call i8* @nyx_string_to_cstr(%nyx_string* %1868)
  call void @nyx_print_string(i8* %1869)
  br label %merge384
else383:
  br label %merge384
merge384:
  br label %merge381
else380:
  %1870 = getelementptr [9 x i8], [9 x i8]* @.str176, i32 0, i32 0
  %1871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1870, i64 8)
  %1872 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1873 = load %nyx_string*, %nyx_string** %1872
  %1874 = call %nyx_string* @nyx_string_concat(%nyx_string* %1871, %nyx_string* %1873)
  %1875 = getelementptr [3 x i8], [3 x i8]* @.str177, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1875, i64 2)
  %1877 = call %nyx_string* @nyx_string_concat(%nyx_string* %1874, %nyx_string* %1876)
  %1878 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1879 = load i64, i64* %1878
  %1880 = call %nyx_string* @nyx_string_from_int(i64 %1879)
  %1881 = call %nyx_string* @nyx_string_concat(%nyx_string* %1877, %nyx_string* %1880)
  %1882 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %1883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1882, i64 9)
  %1884 = call %nyx_string* @nyx_string_concat(%nyx_string* %1881, %nyx_string* %1883)
  %1885 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1886 = load i64, i64* %1885
  %1887 = call %nyx_string* @nyx_string_from_int(i64 %1886)
  %1888 = call %nyx_string* @nyx_string_concat(%nyx_string* %1884, %nyx_string* %1887)
  %1889 = getelementptr [9 x i8], [9 x i8]* @.str179, i32 0, i32 0
  %1890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1889, i64 8)
  %1891 = call %nyx_string* @nyx_string_concat(%nyx_string* %1888, %nyx_string* %1890)
  %1892 = call i8* @nyx_string_to_cstr(%nyx_string* %1891)
  call void @nyx_print_string(i8* %1892)
  %1893 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1894 = load %nyx_string*, %nyx_string** %1893
  %1895 = call i8* @nyx_string_to_cstr(%nyx_string* %1894)
  call void @nyx_print_string(i8* %1895)
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
  %1896 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %1897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1896, i64 0)
  %1898 = call i8* @nyx_string_to_cstr(%nyx_string* %1897)
  call void @nyx_print_string(i8* %1898)
  %1899 = getelementptr [36 x i8], [36 x i8]* @.str181, i32 0, i32 0
  %1900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1899, i64 35)
  %1901 = call i8* @nyx_string_to_cstr(%nyx_string* %1900)
  call void @nyx_print_string(i8* %1901)
  %1902 = alloca i64
  store i64 0, i64* %1902
  %1903 = alloca i64
  store i64 0, i64* %1903
  %1904 = alloca i64
  store i64 0, i64* %1904
  %1905 = call i8* @llvm.stacksave()
  br label %while_cond385
while_cond385:
  %1906 = load i64, i64* %1904
  %1907 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1908 = call i64 @nyx_array_length({ i64, i8* }* %1907)
  %1909 = icmp slt i64 %1906, %1908
  br i1 %1909, label %while_body386, label %while_end387
while_body386:
  call void @llvm.stackrestore(i8* %1905)
  %1910 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1911 = load i64, i64* %1904
  %1912 = call i64 @nyx_array_get({ i64, i8* }* %1910, i64 %1911)
  %1913 = inttoptr i64 %1912 to %TestResult*
  %1914 = load %TestResult, %TestResult* %1913
  %1915 = alloca %TestResult
  store %TestResult %1914, %TestResult* %1915
  %1916 = getelementptr %TestResult, %TestResult* %1915, i32 0, i32 4
  %1917 = load i1, i1* %1916
  br i1 %1917, label %then388, label %else389
then388:
  %1918 = load i64, i64* %1902
  %1919 = add i64 %1918, 1
  store i64 %1919, i64* %1902
  br label %merge390
else389:
  %1920 = load i64, i64* %1903
  %1921 = add i64 %1920, 1
  store i64 %1921, i64* %1903
  br label %merge390
merge390:
  %1922 = load i64, i64* %1904
  %1923 = add i64 %1922, 1
  store i64 %1923, i64* %1904
  br label %while_cond385
while_end387:
  %1924 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1924, i64 10)
  %1926 = load i64, i64* %1902
  %1927 = call %nyx_string* @nyx_string_from_int(i64 %1926)
  %1928 = call %nyx_string* @nyx_string_concat(%nyx_string* %1925, %nyx_string* %1927)
  %1929 = getelementptr [10 x i8], [10 x i8]* @.str183, i32 0, i32 0
  %1930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1929, i64 9)
  %1931 = call %nyx_string* @nyx_string_concat(%nyx_string* %1928, %nyx_string* %1930)
  %1932 = load i64, i64* %1903
  %1933 = call %nyx_string* @nyx_string_from_int(i64 %1932)
  %1934 = call %nyx_string* @nyx_string_concat(%nyx_string* %1931, %nyx_string* %1933)
  %1935 = getelementptr [10 x i8], [10 x i8]* @.str184, i32 0, i32 0
  %1936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1935, i64 9)
  %1937 = call %nyx_string* @nyx_string_concat(%nyx_string* %1934, %nyx_string* %1936)
  %1938 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1939 = call i64 @nyx_array_length({ i64, i8* }* %1938)
  %1940 = call %nyx_string* @nyx_string_from_int(i64 %1939)
  %1941 = call %nyx_string* @nyx_string_concat(%nyx_string* %1937, %nyx_string* %1940)
  %1942 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1942, i64 7)
  %1944 = call %nyx_string* @nyx_string_concat(%nyx_string* %1941, %nyx_string* %1943)
  %1945 = call i8* @nyx_string_to_cstr(%nyx_string* %1944)
  call void @nyx_print_string(i8* %1945)
  %1946 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %1947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1946, i64 10)
  %1948 = load i64, i64* %total_passed.ptr
  %1949 = call %nyx_string* @nyx_string_from_int(i64 %1948)
  %1950 = call %nyx_string* @nyx_string_concat(%nyx_string* %1947, %nyx_string* %1949)
  %1951 = getelementptr [10 x i8], [10 x i8]* @.str187, i32 0, i32 0
  %1952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1951, i64 9)
  %1953 = call %nyx_string* @nyx_string_concat(%nyx_string* %1950, %nyx_string* %1952)
  %1954 = load i64, i64* %total_failed.ptr
  %1955 = call %nyx_string* @nyx_string_from_int(i64 %1954)
  %1956 = call %nyx_string* @nyx_string_concat(%nyx_string* %1953, %nyx_string* %1955)
  %1957 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1957, i64 9)
  %1959 = call %nyx_string* @nyx_string_concat(%nyx_string* %1956, %nyx_string* %1958)
  %1960 = load i64, i64* %total_passed.ptr
  %1961 = load i64, i64* %total_failed.ptr
  %1962 = add i64 %1960, %1961
  %1963 = call %nyx_string* @nyx_string_from_int(i64 %1962)
  %1964 = call %nyx_string* @nyx_string_concat(%nyx_string* %1959, %nyx_string* %1963)
  %1965 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %1966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1965, i64 7)
  %1967 = call %nyx_string* @nyx_string_concat(%nyx_string* %1964, %nyx_string* %1966)
  %1968 = call i8* @nyx_string_to_cstr(%nyx_string* %1967)
  call void @nyx_print_string(i8* %1968)
  %1969 = alloca i1
  store i1 false, i1* %1969
  %1970 = load i64, i64* %total_failed.ptr
  %1971 = icmp eq i64 %1970, 0
  br i1 %1971, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %1972 = load i64, i64* %1903
  %1973 = icmp eq i64 %1972, 0
  store i1 %1973, i1* %1969
  br label %sc_and_end392
sc_and_end392:
  %1974 = load i1, i1* %1969
  br i1 %1974, label %then393, label %else394
then393:
  %1975 = getelementptr [27 x i8], [27 x i8]* @.str190, i32 0, i32 0
  %1976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1975, i64 26)
  %1977 = call i8* @nyx_string_to_cstr(%nyx_string* %1976)
  call void @nyx_print_string(i8* %1977)
  br label %merge395
else394:
  %1978 = getelementptr [28 x i8], [28 x i8]* @.str191, i32 0, i32 0
  %1979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1978, i64 27)
  %1980 = call i8* @nyx_string_to_cstr(%nyx_string* %1979)
  call void @nyx_print_string(i8* %1980)
  br label %merge395
merge395:
  %1981 = getelementptr [36 x i8], [36 x i8]* @.str192, i32 0, i32 0
  %1982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1981, i64 35)
  %1983 = call i8* @nyx_string_to_cstr(%nyx_string* %1982)
  call void @nyx_print_string(i8* %1983)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1984 = getelementptr [28 x i8], [28 x i8]* @.str193, i32 0, i32 0
  %1985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1984, i64 27)
  %1986 = call i8* @nyx_string_to_cstr(%nyx_string* %1985)
  %1987 = call %nyx_string* @nyx_exec(i8* %1986)
  %1988 = alloca %nyx_string*
  store %nyx_string* %1987, %nyx_string** %1988
  %1989 = load %nyx_string*, %nyx_string** %1988
  %1990 = getelementptr [9 x i8], [9 x i8]* @.str194, i32 0, i32 0
  %1991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1990, i64 8)
  %1992 = call i64 @nyx_string_index_of(%nyx_string* %1989, %nyx_string* %1991)
  %1993 = alloca i64
  store i64 %1992, i64* %1993
  %1994 = load i64, i64* %1993
  %1995 = icmp slt i64 %1994, 0
  br i1 %1995, label %then396, label %else397
then396:
  %1996 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %1997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1996, i64 0)
  ret %nyx_string* %1997
else397:
  br label %merge398
merge398:
  %1998 = load i64, i64* %1993
  %1999 = add i64 %1998, 8
  %2000 = alloca i64
  store i64 %1999, i64* %2000
  %2001 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2001, i64 0)
  %2003 = alloca %nyx_string*
  store %nyx_string* %2002, %nyx_string** %2003
  %2004 = call i8* @llvm.stacksave()
  br label %while_cond399
while_cond399:
  %2005 = load i64, i64* %2000
  %2006 = load %nyx_string*, %nyx_string** %1988
  %2007 = call i64 @nyx_string_byte_length(%nyx_string* %2006)
  %2008 = icmp slt i64 %2005, %2007
  br i1 %2008, label %while_body400, label %while_end401
while_body400:
  call void @llvm.stackrestore(i8* %2004)
  %2009 = load %nyx_string*, %nyx_string** %1988
  %2010 = load i64, i64* %2000
  %2011 = call i8 @nyx_string_char_at(%nyx_string* %2009, i64 %2010)
  %2012 = zext i8 %2011 to i64
  %2013 = alloca i64
  store i64 %2012, i64* %2013
  %2014 = alloca i1
  store i1 false, i1* %2014
  %2015 = load i64, i64* %2013
  %2016 = icmp sge i64 %2015, 48
  br i1 %2016, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %2017 = load i64, i64* %2013
  %2018 = icmp sle i64 %2017, 57
  store i1 %2018, i1* %2014
  br label %sc_and_end403
sc_and_end403:
  %2019 = load i1, i1* %2014
  br i1 %2019, label %then404, label %else405
then404:
  %2020 = load %nyx_string*, %nyx_string** %2003
  %2021 = load %nyx_string*, %nyx_string** %1988
  %2022 = load i64, i64* %2000
  %2023 = load i64, i64* %2000
  %2024 = add i64 %2023, 1
  %2025 = call %nyx_string* @nyx_string_substring(%nyx_string* %2021, i64 %2022, i64 %2024)
  %2026 = call %nyx_string* @nyx_string_concat(%nyx_string* %2020, %nyx_string* %2025)
  store %nyx_string* %2026, %nyx_string** %2003
  %2027 = load i64, i64* %2000
  %2028 = add i64 %2027, 1
  store i64 %2028, i64* %2000
  br label %merge406
else405:
  %2029 = load %nyx_string*, %nyx_string** %1988
  %2030 = call i64 @nyx_string_byte_length(%nyx_string* %2029)
  store i64 %2030, i64* %2000
  br label %merge406
merge406:
  br label %while_cond399
while_end401:
  %2031 = load %nyx_string*, %nyx_string** %2003
  ret %nyx_string* %2031
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %2032 = getelementptr [10 x i8], [10 x i8]* @.str197, i32 0, i32 0
  %2033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2032, i64 9)
  %2034 = load %nyx_string*, %nyx_string** %path.ptr
  %2035 = call %nyx_string* @nyx_string_concat(%nyx_string* %2033, %nyx_string* %2034)
  %2036 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %2037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2036, i64 1)
  %2038 = call %nyx_string* @nyx_string_concat(%nyx_string* %2035, %nyx_string* %2037)
  %2039 = call i8* @nyx_string_to_cstr(%nyx_string* %2038)
  %2040 = call i64 @nyx_exec_code(i8* %2039)
  %2041 = icmp eq i64 %2040, 0
  ret i1 %2041
}

define internal %nyx_string* @cov_find_profdata(
) {
  %2042 = call %nyx_string* @cov_clang_major()
  %2043 = alloca %nyx_string*
  store %nyx_string* %2042, %nyx_string** %2043
  %2044 = load %nyx_string*, %nyx_string** %2043
  %2045 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2045, i64 0)
  %2047 = call i1 @nyx_string_equals(%nyx_string* %2044, %nyx_string* %2046)
  %2048 = xor i1 %2047, true
  br i1 %2048, label %then407, label %else408
then407:
  %2049 = getelementptr [26 x i8], [26 x i8]* @.str200, i32 0, i32 0
  %2050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2049, i64 25)
  %2051 = load %nyx_string*, %nyx_string** %2043
  %2052 = call %nyx_string* @nyx_string_concat(%nyx_string* %2050, %nyx_string* %2051)
  %2053 = getelementptr [13 x i8], [13 x i8]* @.str201, i32 0, i32 0
  %2054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2053, i64 12)
  %2055 = call %nyx_string* @nyx_string_concat(%nyx_string* %2052, %nyx_string* %2054)
  %2056 = call i8* @nyx_string_to_cstr(%nyx_string* %2055)
  %2057 = call %nyx_string* @nyx_exec(i8* %2056)
  %2058 = call %nyx_string* @nyx_string_trim(%nyx_string* %2057)
  %2059 = alloca %nyx_string*
  store %nyx_string* %2058, %nyx_string** %2059
  %2060 = load %nyx_string*, %nyx_string** %2059
  %2061 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %2062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2061, i64 0)
  %2063 = call i1 @nyx_string_equals(%nyx_string* %2060, %nyx_string* %2062)
  %2064 = xor i1 %2063, true
  br i1 %2064, label %then410, label %else411
then410:
  %2065 = load %nyx_string*, %nyx_string** %2059
  ret %nyx_string* %2065
else411:
  br label %merge412
merge412:
  br label %merge409
else408:
  br label %merge409
merge409:
  %2066 = getelementptr [37 x i8], [37 x i8]* @.str203, i32 0, i32 0
  %2067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2066, i64 36)
  %2068 = call i8* @nyx_string_to_cstr(%nyx_string* %2067)
  %2069 = call %nyx_string* @nyx_exec(i8* %2068)
  %2070 = call %nyx_string* @nyx_string_trim(%nyx_string* %2069)
  ret %nyx_string* %2070
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %2071 = call { i64, i8* }* @nyx_array_new_ptr()
  %2072 = alloca { i64, i8* }*
  store { i64, i8* }* %2071, { i64, i8* }** %2072
  %2073 = alloca i64
  store i64 0, i64* %2073
  %2074 = alloca i64
  store i64 0, i64* %2074
  %2075 = call i8* @llvm.stacksave()
  br label %while_cond413
while_cond413:
  %2076 = load i64, i64* %2074
  %2077 = load %nyx_string*, %nyx_string** %line.ptr
  %2078 = call i64 @nyx_string_byte_length(%nyx_string* %2077)
  %2079 = icmp slt i64 %2076, %2078
  br i1 %2079, label %while_body414, label %while_end415
while_body414:
  call void @llvm.stackrestore(i8* %2075)
  %2080 = load %nyx_string*, %nyx_string** %line.ptr
  %2081 = load i64, i64* %2074
  %2082 = call i8 @nyx_string_char_at(%nyx_string* %2080, i64 %2081)
  %2083 = zext i8 %2082 to i64
  %2084 = icmp eq i64 %2083, 9
  br i1 %2084, label %then416, label %else417
then416:
  %2085 = load { i64, i8* }*, { i64, i8* }** %2072
  %2086 = load %nyx_string*, %nyx_string** %line.ptr
  %2087 = load i64, i64* %2073
  %2088 = load i64, i64* %2074
  %2089 = call %nyx_string* @nyx_string_substring(%nyx_string* %2086, i64 %2087, i64 %2088)
  %2090 = ptrtoint %nyx_string* %2089 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2085, i64 %2090, i64 2)
  %2091 = load i64, i64* %2074
  %2092 = add i64 %2091, 1
  store i64 %2092, i64* %2073
  br label %merge418
else417:
  br label %merge418
merge418:
  %2093 = load i64, i64* %2074
  %2094 = add i64 %2093, 1
  store i64 %2094, i64* %2074
  br label %while_cond413
while_end415:
  %2095 = load { i64, i8* }*, { i64, i8* }** %2072
  %2096 = load %nyx_string*, %nyx_string** %line.ptr
  %2097 = load i64, i64* %2073
  %2098 = load %nyx_string*, %nyx_string** %line.ptr
  %2099 = call i64 @nyx_string_byte_length(%nyx_string* %2098)
  %2100 = call %nyx_string* @nyx_string_substring(%nyx_string* %2096, i64 %2097, i64 %2099)
  %2101 = ptrtoint %nyx_string* %2100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2095, i64 %2101, i64 2)
  %2102 = load { i64, i8* }*, { i64, i8* }** %2072
  ret { i64, i8* }* %2102
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %2103 = load i64, i64* %n.ptr
  %2104 = call %nyx_string* @nyx_string_from_int(i64 %2103)
  %2105 = alloca %nyx_string*
  store %nyx_string* %2104, %nyx_string** %2105
  %2106 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %2107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2106, i64 1)
  %2108 = alloca %nyx_string*
  store %nyx_string* %2107, %nyx_string** %2108
  %2109 = call i8* @llvm.stacksave()
  br label %while_cond419
while_cond419:
  %2110 = load %nyx_string*, %nyx_string** %2105
  %2111 = call i64 @nyx_string_byte_length(%nyx_string* %2110)
  %2112 = icmp slt i64 %2111, 9
  br i1 %2112, label %while_body420, label %while_end421
while_body420:
  call void @llvm.stackrestore(i8* %2109)
  %2113 = load %nyx_string*, %nyx_string** %2108
  %2114 = load %nyx_string*, %nyx_string** %2105
  %2115 = call %nyx_string* @nyx_string_concat(%nyx_string* %2113, %nyx_string* %2114)
  store %nyx_string* %2115, %nyx_string** %2105
  br label %while_cond419
while_end421:
  %2116 = load %nyx_string*, %nyx_string** %2105
  ret %nyx_string* %2116
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %2117 = call i8* @nyx_map_new(i32 0)
  %2118 = alloca i8*
  store i8* %2117, i8** %2118
  %2119 = load %nyx_string*, %nyx_string** %show.ptr
  %2120 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %2121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2120, i64 1)
  %2122 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2119, %nyx_string* %2121)
  %2123 = alloca { i64, i8* }*
  store { i64, i8* }* %2122, { i64, i8* }** %2123
  %2124 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %2125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2124, i64 0)
  %2126 = alloca %nyx_string*
  store %nyx_string* %2125, %nyx_string** %2126
  %2127 = alloca i64
  store i64 0, i64* %2127
  %2128 = getelementptr [3 x i8], [3 x i8]* @.str207, i32 0, i32 0
  %2129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2128, i64 2)
  %2130 = alloca %nyx_string*
  store %nyx_string* %2129, %nyx_string** %2130
  %2131 = getelementptr [4 x i8], [4 x i8]* @.str208, i32 0, i32 0
  %2132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2131, i64 3)
  %2133 = alloca %nyx_string*
  store %nyx_string* %2132, %nyx_string** %2133
  %2134 = getelementptr [2 x i8], [2 x i8]* @.str209, i32 0, i32 0
  %2135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2134, i64 1)
  %2136 = alloca %nyx_string*
  store %nyx_string* %2135, %nyx_string** %2136
  %2137 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2137, i64 1)
  %2139 = alloca %nyx_string*
  store %nyx_string* %2138, %nyx_string** %2139
  %2140 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2140, i64 0)
  %2142 = alloca %nyx_string*
  store %nyx_string* %2141, %nyx_string** %2142
  %2143 = getelementptr [14 x i8], [14 x i8]* @.str212, i32 0, i32 0
  %2144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2143, i64 13)
  %2145 = alloca %nyx_string*
  store %nyx_string* %2144, %nyx_string** %2145
  %2146 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2146, i64 1)
  %2148 = alloca %nyx_string*
  store %nyx_string* %2147, %nyx_string** %2148
  %2149 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2149, i64 1)
  %2151 = alloca %nyx_string*
  store %nyx_string* %2150, %nyx_string** %2151
  %2152 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2152, i64 1)
  %2154 = alloca %nyx_string*
  store %nyx_string* %2153, %nyx_string** %2154
  %2155 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2155, i64 1)
  %2157 = alloca %nyx_string*
  store %nyx_string* %2156, %nyx_string** %2157
  %2158 = call i8* @llvm.stacksave()
  br label %while_cond422
while_cond422:
  %2159 = load i64, i64* %2127
  %2160 = load { i64, i8* }*, { i64, i8* }** %2123
  %2161 = call i64 @nyx_array_length({ i64, i8* }* %2160)
  %2162 = icmp slt i64 %2159, %2161
  br i1 %2162, label %while_body423, label %while_end424
while_body423:
  call void @llvm.stackrestore(i8* %2158)
  %2163 = load { i64, i8* }*, { i64, i8* }** %2123
  %2164 = load i64, i64* %2127
  %2165 = call i64 @nyx_array_get_checked({ i64, i8* }* %2163, i64 %2164, i64 2)
  %2166 = inttoptr i64 %2165 to %nyx_string*
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = alloca i1
  store i1 false, i1* %2168
  %2169 = alloca i1
  store i1 false, i1* %2169
  %2170 = load %nyx_string*, %nyx_string** %2167
  %2171 = load %nyx_string*, %nyx_string** %2130
  %2172 = call i1 @nyx_string_starts_with(%nyx_string* %2170, %nyx_string* %2171)
  br i1 %2172, label %sc_and_rhs425, label %sc_and_end426
sc_and_rhs425:
  %2173 = load %nyx_string*, %nyx_string** %2167
  %2174 = load %nyx_string*, %nyx_string** %2133
  %2175 = call i1 @nyx_string_starts_with(%nyx_string* %2173, %nyx_string* %2174)
  %2176 = xor i1 %2175, true
  store i1 %2176, i1* %2169
  br label %sc_and_end426
sc_and_end426:
  %2177 = load i1, i1* %2169
  br i1 %2177, label %sc_and_rhs427, label %sc_and_end428
sc_and_rhs427:
  %2178 = load %nyx_string*, %nyx_string** %2167
  %2179 = load %nyx_string*, %nyx_string** %2136
  %2180 = call i1 @nyx_string_ends_with(%nyx_string* %2178, %nyx_string* %2179)
  store i1 %2180, i1* %2168
  br label %sc_and_end428
sc_and_end428:
  %2181 = load i1, i1* %2168
  br i1 %2181, label %then429, label %else430
then429:
  %2182 = load %nyx_string*, %nyx_string** %2167
  %2183 = load %nyx_string*, %nyx_string** %2167
  %2184 = call i64 @nyx_string_byte_length(%nyx_string* %2183)
  %2185 = sub i64 %2184, 1
  %2186 = call %nyx_string* @nyx_string_substring(%nyx_string* %2182, i64 2, i64 %2185)
  %2187 = alloca %nyx_string*
  store %nyx_string* %2186, %nyx_string** %2187
  %2188 = load %nyx_string*, %nyx_string** %2187
  %2189 = load %nyx_string*, %nyx_string** %2139
  %2190 = call i64 @nyx_string_index_of(%nyx_string* %2188, %nyx_string* %2189)
  %2191 = alloca i64
  store i64 %2190, i64* %2191
  %2192 = load i64, i64* %2191
  %2193 = icmp sge i64 %2192, 0
  br i1 %2193, label %then432, label %else433
then432:
  %2194 = load %nyx_string*, %nyx_string** %2187
  %2195 = load i64, i64* %2191
  %2196 = add i64 %2195, 1
  %2197 = load %nyx_string*, %nyx_string** %2187
  %2198 = call i64 @nyx_string_byte_length(%nyx_string* %2197)
  %2199 = call %nyx_string* @nyx_string_substring(%nyx_string* %2194, i64 %2196, i64 %2198)
  store %nyx_string* %2199, %nyx_string** %2187
  br label %merge434
else433:
  br label %merge434
merge434:
  %2200 = load %nyx_string*, %nyx_string** %2187
  store %nyx_string* %2200, %nyx_string** %2126
  br label %merge431
else430:
  %2201 = alloca i1
  store i1 false, i1* %2201
  %2202 = load %nyx_string*, %nyx_string** %2126
  %2203 = load %nyx_string*, %nyx_string** %2142
  %2204 = call i1 @nyx_string_equals(%nyx_string* %2202, %nyx_string* %2203)
  %2205 = xor i1 %2204, true
  br i1 %2205, label %sc_and_rhs435, label %sc_and_end436
sc_and_rhs435:
  %2206 = load %nyx_string*, %nyx_string** %2167
  %2207 = load %nyx_string*, %nyx_string** %2145
  %2208 = call i1 @nyx_string_contains(%nyx_string* %2206, %nyx_string* %2207)
  store i1 %2208, i1* %2201
  br label %sc_and_end436
sc_and_end436:
  %2209 = load i1, i1* %2201
  br i1 %2209, label %then437, label %else438
then437:
  %2210 = load %nyx_string*, %nyx_string** %2167
  %2211 = load %nyx_string*, %nyx_string** %2148
  %2212 = call i64 @nyx_string_index_of(%nyx_string* %2210, %nyx_string* %2211)
  %2213 = alloca i64
  store i64 %2212, i64* %2213
  %2214 = load %nyx_string*, %nyx_string** %2167
  %2215 = load %nyx_string*, %nyx_string** %2151
  %2216 = call i64 @nyx_string_index_of(%nyx_string* %2214, %nyx_string* %2215)
  %2217 = alloca i64
  store i64 %2216, i64* %2217
  %2218 = alloca i1
  store i1 false, i1* %2218
  %2219 = load i64, i64* %2213
  %2220 = icmp sge i64 %2219, 0
  br i1 %2220, label %sc_and_rhs440, label %sc_and_end441
sc_and_rhs440:
  %2221 = load i64, i64* %2217
  %2222 = load i64, i64* %2213
  %2223 = icmp sgt i64 %2221, %2222
  store i1 %2223, i1* %2218
  br label %sc_and_end441
sc_and_end441:
  %2224 = load i1, i1* %2218
  br i1 %2224, label %then442, label %else443
then442:
  %2225 = load %nyx_string*, %nyx_string** %2167
  %2226 = load i64, i64* %2213
  %2227 = add i64 %2226, 1
  %2228 = load i64, i64* %2217
  %2229 = call %nyx_string* @nyx_string_substring(%nyx_string* %2225, i64 %2227, i64 %2228)
  %2230 = load %nyx_string*, %nyx_string** %2154
  %2231 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2229, %nyx_string* %2230)
  %2232 = alloca { i64, i8* }*
  store { i64, i8* }* %2231, { i64, i8* }** %2232
  %2233 = alloca i64
  store i64 0, i64* %2233
  %2234 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %2235 = load i64, i64* %2233
  %2236 = load { i64, i8* }*, { i64, i8* }** %2232
  %2237 = call i64 @nyx_array_length({ i64, i8* }* %2236)
  %2238 = icmp slt i64 %2235, %2237
  br i1 %2238, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %2234)
  %2239 = load { i64, i8* }*, { i64, i8* }** %2232
  %2240 = load i64, i64* %2233
  %2241 = call i64 @nyx_array_get_checked({ i64, i8* }* %2239, i64 %2240, i64 2)
  %2242 = inttoptr i64 %2241 to %nyx_string*
  %2243 = alloca %nyx_string*
  store %nyx_string* %2242, %nyx_string** %2243
  %2244 = load %nyx_string*, %nyx_string** %2243
  %2245 = call %nyx_string* @nyx_string_trim(%nyx_string* %2244)
  %2246 = call i64 @nyx_string_to_int(%nyx_string* %2245)
  %2247 = icmp sgt i64 %2246, 0
  br i1 %2247, label %then448, label %else449
then448:
  %2248 = load i8*, i8** %2118
  %2249 = load %nyx_string*, %nyx_string** %2126
  %2250 = load %nyx_string*, %nyx_string** %2157
  %2251 = call i8* @nyx_string_to_cstr(%nyx_string* %2249)
  %2252 = bitcast %nyx_string* %2250 to i8*
  call void @nyx_map_insert_str(i8* %2248, i8* %2251, i8* %2252)
  br label %merge450
else449:
  br label %merge450
merge450:
  %2253 = load i64, i64* %2233
  %2254 = add i64 %2253, 1
  store i64 %2254, i64* %2233
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
  %2255 = load i64, i64* %2127
  %2256 = add i64 %2255, 1
  store i64 %2256, i64* %2127
  br label %while_cond422
while_end424:
  %2257 = load i8*, i8** %2118
  ret i8* %2257
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2258 = call { i64, i8* }* @nyx_array_new_ptr()
  %2259 = alloca { i64, i8* }*
  store { i64, i8* }* %2258, { i64, i8* }** %2259
  %2260 = getelementptr [4 x i8], [4 x i8]* @.str217, i32 0, i32 0
  %2261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2260, i64 3)
  %2262 = call i8* @nyx_string_to_cstr(%nyx_string* %2261)
  %2263 = call i1 @nyx_file_exists(i8* %2262)
  %2264 = xor i1 %2263, true
  br i1 %2264, label %then451, label %else452
then451:
  %2265 = load { i64, i8* }*, { i64, i8* }** %2259
  ret { i64, i8* }* %2265
else452:
  br label %merge453
merge453:
  %2266 = getelementptr [50 x i8], [50 x i8]* @.str218, i32 0, i32 0
  %2267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2266, i64 49)
  %2268 = call i8* @nyx_string_to_cstr(%nyx_string* %2267)
  %2269 = call %nyx_string* @nyx_exec(i8* %2268)
  %2270 = alloca %nyx_string*
  store %nyx_string* %2269, %nyx_string** %2270
  %2271 = load %nyx_string*, %nyx_string** %2270
  %2272 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %2273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2272, i64 1)
  %2274 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2271, %nyx_string* %2273)
  %2275 = alloca { i64, i8* }*
  store { i64, i8* }* %2274, { i64, i8* }** %2275
  %2276 = alloca i64
  store i64 0, i64* %2276
  %2277 = getelementptr [4 x i8], [4 x i8]* @.str220, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2277, i64 3)
  %2279 = alloca %nyx_string*
  store %nyx_string* %2278, %nyx_string** %2279
  %2280 = getelementptr [9 x i8], [9 x i8]* @.str221, i32 0, i32 0
  %2281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2280, i64 8)
  %2282 = alloca %nyx_string*
  store %nyx_string* %2281, %nyx_string** %2282
  %2283 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %2284 = load i64, i64* %2276
  %2285 = load { i64, i8* }*, { i64, i8* }** %2275
  %2286 = call i64 @nyx_array_length({ i64, i8* }* %2285)
  %2287 = icmp slt i64 %2284, %2286
  br i1 %2287, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %2283)
  %2288 = load { i64, i8* }*, { i64, i8* }** %2275
  %2289 = load i64, i64* %2276
  %2290 = call i64 @nyx_array_get_checked({ i64, i8* }* %2288, i64 %2289, i64 2)
  %2291 = inttoptr i64 %2290 to %nyx_string*
  %2292 = alloca %nyx_string*
  store %nyx_string* %2291, %nyx_string** %2292
  %2293 = load %nyx_string*, %nyx_string** %2292
  %2294 = call %nyx_string* @nyx_string_trim(%nyx_string* %2293)
  %2295 = alloca %nyx_string*
  store %nyx_string* %2294, %nyx_string** %2295
  %2296 = alloca i1
  store i1 false, i1* %2296
  %2297 = load %nyx_string*, %nyx_string** %2295
  %2298 = load %nyx_string*, %nyx_string** %2279
  %2299 = call i1 @nyx_string_ends_with(%nyx_string* %2297, %nyx_string* %2298)
  br i1 %2299, label %sc_and_rhs457, label %sc_and_end458
sc_and_rhs457:
  %2300 = load %nyx_string*, %nyx_string** %2295
  %2301 = load %nyx_string*, %nyx_string** %2282
  %2302 = call i1 @nyx_string_ends_with(%nyx_string* %2300, %nyx_string* %2301)
  %2303 = xor i1 %2302, true
  store i1 %2303, i1* %2296
  br label %sc_and_end458
sc_and_end458:
  %2304 = load i1, i1* %2296
  br i1 %2304, label %then459, label %else460
then459:
  %2305 = load { i64, i8* }*, { i64, i8* }** %2259
  %2306 = load %nyx_string*, %nyx_string** %2295
  %2307 = load %nyx_string*, %nyx_string** %2295
  %2308 = call i64 @nyx_string_byte_length(%nyx_string* %2307)
  %2309 = sub i64 %2308, 3
  %2310 = call %nyx_string* @nyx_string_substring(%nyx_string* %2306, i64 0, i64 %2309)
  %2311 = ptrtoint %nyx_string* %2310 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2305, i64 %2311, i64 2)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2312 = load i64, i64* %2276
  %2313 = add i64 %2312, 1
  store i64 %2313, i64* %2276
  br label %while_cond454
while_end456:
  %2314 = load { i64, i8* }*, { i64, i8* }** %2259
  ret { i64, i8* }* %2314
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
  %2315 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2315, i64 0)
  %2317 = alloca %nyx_string*
  store %nyx_string* %2316, %nyx_string** %2317
  %2318 = alloca i64
  store i64 0, i64* %2318
  %2319 = getelementptr [9 x i8], [9 x i8]* @.str223, i32 0, i32 0
  %2320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2319, i64 8)
  %2321 = alloca %nyx_string*
  store %nyx_string* %2320, %nyx_string** %2321
  %2322 = getelementptr [3 x i8], [3 x i8]* @.str224, i32 0, i32 0
  %2323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2322, i64 2)
  %2324 = alloca %nyx_string*
  store %nyx_string* %2323, %nyx_string** %2324
  %2325 = call i8* @llvm.stacksave()
  br label %while_cond462
while_cond462:
  %2326 = load i64, i64* %2318
  %2327 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2328 = call i64 @nyx_array_length({ i64, i8* }* %2327)
  %2329 = icmp slt i64 %2326, %2328
  br i1 %2329, label %while_body463, label %while_end464
while_body463:
  call void @llvm.stackrestore(i8* %2325)
  %2330 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2331 = load i64, i64* %2318
  %2332 = call i64 @nyx_array_get_checked({ i64, i8* }* %2330, i64 %2331, i64 2)
  %2333 = inttoptr i64 %2332 to %nyx_string*
  %2334 = alloca %nyx_string*
  store %nyx_string* %2333, %nyx_string** %2334
  %2335 = load %nyx_string*, %nyx_string** %2317
  %2336 = load %nyx_string*, %nyx_string** %2321
  %2337 = call %nyx_string* @nyx_string_concat(%nyx_string* %2335, %nyx_string* %2336)
  %2338 = load %nyx_string*, %nyx_string** %2334
  %2339 = call %nyx_string* @nyx_string_concat(%nyx_string* %2337, %nyx_string* %2338)
  %2340 = load %nyx_string*, %nyx_string** %2324
  %2341 = call %nyx_string* @nyx_string_concat(%nyx_string* %2339, %nyx_string* %2340)
  store %nyx_string* %2341, %nyx_string** %2317
  %2342 = load i64, i64* %2318
  %2343 = add i64 %2342, 1
  store i64 %2343, i64* %2318
  br label %while_cond462
while_end464:
  %2344 = load %nyx_string*, %nyx_string** %2317
  %2345 = getelementptr [36 x i8], [36 x i8]* @.str225, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2345, i64 35)
  %2347 = call %nyx_string* @nyx_string_concat(%nyx_string* %2344, %nyx_string* %2346)
  store %nyx_string* %2347, %nyx_string** %2317
  %2348 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2349 = getelementptr [13 x i8], [13 x i8]* @.str226, i32 0, i32 0
  %2350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2349, i64 12)
  %2351 = call %nyx_string* @nyx_string_concat(%nyx_string* %2348, %nyx_string* %2350)
  %2352 = load %nyx_string*, %nyx_string** %2317
  %2353 = ptrtoint %nyx_string* %2352 to i64
  %2354 = call i8* @nyx_string_to_cstr(%nyx_string* %2351)
  %2355 = inttoptr i64 %2353 to %nyx_string*
  %2356 = call i1 @nyx_write_file_safe(i8* %2354, %nyx_string* %2355)
  %2357 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2358 = getelementptr [14 x i8], [14 x i8]* @.str227, i32 0, i32 0
  %2359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2358, i64 13)
  %2360 = call %nyx_string* @nyx_string_concat(%nyx_string* %2357, %nyx_string* %2359)
  %2361 = alloca %nyx_string*
  store %nyx_string* %2360, %nyx_string** %2361
  %2362 = getelementptr [13 x i8], [13 x i8]* @.str228, i32 0, i32 0
  %2363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2362, i64 12)
  %2364 = getelementptr [8 x i8], [8 x i8]* @.str229, i32 0, i32 0
  %2365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2364, i64 7)
  %2366 = call %nyx_string* @nyx_string_concat(%nyx_string* %2363, %nyx_string* %2365)
  %2367 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2368 = call %nyx_string* @nyx_string_concat(%nyx_string* %2366, %nyx_string* %2367)
  %2369 = getelementptr [19 x i8], [19 x i8]* @.str230, i32 0, i32 0
  %2370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2369, i64 18)
  %2371 = call %nyx_string* @nyx_string_concat(%nyx_string* %2368, %nyx_string* %2370)
  %2372 = getelementptr [5 x i8], [5 x i8]* @.str231, i32 0, i32 0
  %2373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2372, i64 4)
  %2374 = call %nyx_string* @nyx_string_concat(%nyx_string* %2371, %nyx_string* %2373)
  %2375 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2376 = call %nyx_string* @nyx_string_concat(%nyx_string* %2374, %nyx_string* %2375)
  %2377 = getelementptr [24 x i8], [24 x i8]* @.str232, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2377, i64 23)
  %2379 = call %nyx_string* @nyx_string_concat(%nyx_string* %2376, %nyx_string* %2378)
  %2380 = getelementptr [5 x i8], [5 x i8]* @.str233, i32 0, i32 0
  %2381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2380, i64 4)
  %2382 = call %nyx_string* @nyx_string_concat(%nyx_string* %2379, %nyx_string* %2381)
  %2383 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2384 = call %nyx_string* @nyx_string_concat(%nyx_string* %2382, %nyx_string* %2383)
  %2385 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %2386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2385, i64 2)
  %2387 = call %nyx_string* @nyx_string_concat(%nyx_string* %2384, %nyx_string* %2386)
  %2388 = getelementptr [137 x i8], [137 x i8]* @.str235, i32 0, i32 0
  %2389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2388, i64 136)
  %2390 = call %nyx_string* @nyx_string_concat(%nyx_string* %2387, %nyx_string* %2389)
  %2391 = getelementptr [43 x i8], [43 x i8]* @.str236, i32 0, i32 0
  %2392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2391, i64 42)
  %2393 = call %nyx_string* @nyx_string_concat(%nyx_string* %2390, %nyx_string* %2392)
  %2394 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2395 = call %nyx_string* @nyx_string_concat(%nyx_string* %2393, %nyx_string* %2394)
  %2396 = getelementptr [38 x i8], [38 x i8]* @.str237, i32 0, i32 0
  %2397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2396, i64 37)
  %2398 = call %nyx_string* @nyx_string_concat(%nyx_string* %2395, %nyx_string* %2397)
  %2399 = load %nyx_string*, %nyx_string** %2361
  %2400 = call %nyx_string* @nyx_string_concat(%nyx_string* %2398, %nyx_string* %2399)
  %2401 = getelementptr [24 x i8], [24 x i8]* @.str238, i32 0, i32 0
  %2402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2401, i64 23)
  %2403 = call %nyx_string* @nyx_string_concat(%nyx_string* %2400, %nyx_string* %2402)
  %2404 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2405 = call %nyx_string* @nyx_string_concat(%nyx_string* %2403, %nyx_string* %2404)
  %2406 = getelementptr [21 x i8], [21 x i8]* @.str239, i32 0, i32 0
  %2407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2406, i64 20)
  %2408 = call %nyx_string* @nyx_string_concat(%nyx_string* %2405, %nyx_string* %2407)
  %2409 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2409, i64 6)
  %2411 = call %nyx_string* @nyx_string_concat(%nyx_string* %2408, %nyx_string* %2410)
  %2412 = getelementptr [17 x i8], [17 x i8]* @.str241, i32 0, i32 0
  %2413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2412, i64 16)
  %2414 = call %nyx_string* @nyx_string_concat(%nyx_string* %2411, %nyx_string* %2413)
  %2415 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2416 = call %nyx_string* @nyx_string_concat(%nyx_string* %2414, %nyx_string* %2415)
  %2417 = getelementptr [19 x i8], [19 x i8]* @.str242, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2417, i64 18)
  %2419 = call %nyx_string* @nyx_string_concat(%nyx_string* %2416, %nyx_string* %2418)
  %2420 = getelementptr [10 x i8], [10 x i8]* @.str243, i32 0, i32 0
  %2421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2420, i64 9)
  %2422 = call %nyx_string* @nyx_string_concat(%nyx_string* %2419, %nyx_string* %2421)
  %2423 = alloca %nyx_string*
  store %nyx_string* %2422, %nyx_string** %2423
  %2424 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2425 = getelementptr [13 x i8], [13 x i8]* @.str244, i32 0, i32 0
  %2426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2425, i64 12)
  %2427 = call %nyx_string* @nyx_string_concat(%nyx_string* %2424, %nyx_string* %2426)
  %2428 = load %nyx_string*, %nyx_string** %2423
  %2429 = ptrtoint %nyx_string* %2428 to i64
  %2430 = call i8* @nyx_string_to_cstr(%nyx_string* %2427)
  %2431 = inttoptr i64 %2429 to %nyx_string*
  %2432 = call i1 @nyx_write_file_safe(i8* %2430, %nyx_string* %2431)
  %2433 = getelementptr [7 x i8], [7 x i8]* @.str245, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2433, i64 6)
  %2435 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2436 = call %nyx_string* @nyx_string_concat(%nyx_string* %2434, %nyx_string* %2435)
  %2437 = getelementptr [14 x i8], [14 x i8]* @.str246, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2437, i64 13)
  %2439 = call %nyx_string* @nyx_string_concat(%nyx_string* %2436, %nyx_string* %2438)
  %2440 = call i8* @nyx_string_to_cstr(%nyx_string* %2439)
  %2441 = call i64 @nyx_exec_code(i8* %2440)
  %2442 = load %nyx_string*, %nyx_string** %2361
  ret %nyx_string* %2442
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
  %2443 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2443, i64 8)
  %2445 = call i8* @nyx_string_to_cstr(%nyx_string* %2444)
  %2446 = call %nyx_string* @nyx_getenv(i8* %2445)
  %2447 = alloca %nyx_string*
  store %nyx_string* %2446, %nyx_string** %2447
  %2448 = getelementptr [4 x i8], [4 x i8]* @.str248, i32 0, i32 0
  %2449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2448, i64 3)
  %2450 = call i8* @nyx_string_to_cstr(%nyx_string* %2449)
  %2451 = call %nyx_string* @nyx_getenv(i8* %2450)
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2453, i64 0)
  %2455 = call i8* @nyx_string_to_cstr(%nyx_string* %2454)
  call void @nyx_print_string(i8* %2455)
  %2456 = getelementptr [36 x i8], [36 x i8]* @.str250, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2456, i64 35)
  %2458 = call i8* @nyx_string_to_cstr(%nyx_string* %2457)
  call void @nyx_print_string(i8* %2458)
  %2459 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2459, i64 0)
  %2461 = alloca %nyx_string*
  store %nyx_string* %2460, %nyx_string** %2461
  %2462 = alloca i64
  store i64 0, i64* %2462
  %2463 = call i8* @nyx_map_new(i32 0)
  %2464 = alloca i8*
  store i8* %2463, i8** %2464
  %2465 = call { i64, i8* }* @nyx_array_new_ptr()
  %2466 = alloca { i64, i8* }*
  store { i64, i8* }* %2465, { i64, i8* }** %2466
  %2467 = alloca i64
  store i64 0, i64* %2467
  %2468 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2468, i64 1)
  %2470 = alloca %nyx_string*
  store %nyx_string* %2469, %nyx_string** %2470
  %2471 = getelementptr [9 x i8], [9 x i8]* @.str253, i32 0, i32 0
  %2472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2471, i64 8)
  %2473 = alloca %nyx_string*
  store %nyx_string* %2472, %nyx_string** %2473
  %2474 = getelementptr [3 x i8], [3 x i8]* @.str254, i32 0, i32 0
  %2475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2474, i64 2)
  %2476 = alloca %nyx_string*
  store %nyx_string* %2475, %nyx_string** %2476
  %2477 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2477, i64 1)
  %2479 = alloca %nyx_string*
  store %nyx_string* %2478, %nyx_string** %2479
  %2480 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2480, i64 1)
  %2482 = alloca %nyx_string*
  store %nyx_string* %2481, %nyx_string** %2482
  %2483 = call i8* @llvm.stacksave()
  br label %while_cond465
while_cond465:
  %2484 = load i64, i64* %2467
  %2485 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2486 = call i64 @nyx_array_length({ i64, i8* }* %2485)
  %2487 = icmp slt i64 %2484, %2486
  br i1 %2487, label %while_body466, label %while_end467
while_body466:
  call void @llvm.stackrestore(i8* %2483)
  %2488 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2489 = load i64, i64* %2467
  %2490 = call i64 @nyx_array_get_checked({ i64, i8* }* %2488, i64 %2489, i64 2)
  %2491 = inttoptr i64 %2490 to %nyx_string*
  %2492 = alloca %nyx_string*
  store %nyx_string* %2491, %nyx_string** %2492
  %2493 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2494 = load i64, i64* %2467
  %2495 = call i64 @nyx_array_get_checked({ i64, i8* }* %2493, i64 %2494, i64 2)
  %2496 = inttoptr i64 %2495 to %nyx_string*
  %2497 = alloca %nyx_string*
  store %nyx_string* %2496, %nyx_string** %2497
  %2498 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2499 = load %nyx_string*, %nyx_string** %2470
  %2500 = call %nyx_string* @nyx_string_concat(%nyx_string* %2498, %nyx_string* %2499)
  %2501 = load %nyx_string*, %nyx_string** %2492
  %2502 = call %nyx_string* @nyx_string_concat(%nyx_string* %2500, %nyx_string* %2501)
  %2503 = load %nyx_string*, %nyx_string** %2473
  %2504 = call %nyx_string* @nyx_string_concat(%nyx_string* %2502, %nyx_string* %2503)
  %2505 = alloca %nyx_string*
  store %nyx_string* %2504, %nyx_string** %2505
  %2506 = load %nyx_string*, %nyx_string** %2505
  %2507 = call i1 @cov_profraw_valid(%nyx_string* %2506)
  br i1 %2507, label %then468, label %else469
then468:
  %2508 = load %nyx_string*, %nyx_string** %2461
  %2509 = load %nyx_string*, %nyx_string** %2476
  %2510 = call %nyx_string* @nyx_string_concat(%nyx_string* %2508, %nyx_string* %2509)
  %2511 = load %nyx_string*, %nyx_string** %2505
  %2512 = call %nyx_string* @nyx_string_concat(%nyx_string* %2510, %nyx_string* %2511)
  %2513 = load %nyx_string*, %nyx_string** %2479
  %2514 = call %nyx_string* @nyx_string_concat(%nyx_string* %2512, %nyx_string* %2513)
  store %nyx_string* %2514, %nyx_string** %2461
  %2515 = load i64, i64* %2462
  %2516 = add i64 %2515, 1
  store i64 %2516, i64* %2462
  %2517 = load i8*, i8** %2464
  %2518 = load %nyx_string*, %nyx_string** %2492
  %2519 = load %nyx_string*, %nyx_string** %2482
  %2520 = call i8* @nyx_string_to_cstr(%nyx_string* %2518)
  %2521 = bitcast %nyx_string* %2519 to i8*
  call void @nyx_map_insert_str(i8* %2517, i8* %2520, i8* %2521)
  br label %merge470
else469:
  %2522 = load { i64, i8* }*, { i64, i8* }** %2466
  %2523 = load %nyx_string*, %nyx_string** %2497
  %2524 = ptrtoint %nyx_string* %2523 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2522, i64 %2524, i64 2)
  br label %merge470
merge470:
  %2525 = load i64, i64* %2467
  %2526 = add i64 %2525, 1
  store i64 %2526, i64* %2467
  br label %while_cond465
while_end467:
  %2527 = call i8* @nyx_map_new(i32 0)
  %2528 = alloca i8*
  store i8* %2527, i8** %2528
  %2529 = load i64, i64* %2462
  %2530 = icmp sgt i64 %2529, 0
  br i1 %2530, label %then471, label %else472
then471:
  %2531 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2532 = getelementptr [17 x i8], [17 x i8]* @.str257, i32 0, i32 0
  %2533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2532, i64 16)
  %2534 = call %nyx_string* @nyx_string_concat(%nyx_string* %2531, %nyx_string* %2533)
  %2535 = alloca %nyx_string*
  store %nyx_string* %2534, %nyx_string** %2535
  %2536 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2537 = getelementptr [12 x i8], [12 x i8]* @.str258, i32 0, i32 0
  %2538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2537, i64 11)
  %2539 = call %nyx_string* @nyx_string_concat(%nyx_string* %2536, %nyx_string* %2538)
  %2540 = load %nyx_string*, %nyx_string** %2535
  %2541 = call %nyx_string* @nyx_string_concat(%nyx_string* %2539, %nyx_string* %2540)
  %2542 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2542, i64 1)
  %2544 = call %nyx_string* @nyx_string_concat(%nyx_string* %2541, %nyx_string* %2543)
  %2545 = load %nyx_string*, %nyx_string** %2461
  %2546 = call %nyx_string* @nyx_string_concat(%nyx_string* %2544, %nyx_string* %2545)
  %2547 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2547, i64 4)
  %2549 = call %nyx_string* @nyx_string_concat(%nyx_string* %2546, %nyx_string* %2548)
  %2550 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2551 = call %nyx_string* @nyx_string_concat(%nyx_string* %2549, %nyx_string* %2550)
  %2552 = getelementptr [17 x i8], [17 x i8]* @.str261, i32 0, i32 0
  %2553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2552, i64 16)
  %2554 = call %nyx_string* @nyx_string_concat(%nyx_string* %2551, %nyx_string* %2553)
  %2555 = call i8* @nyx_string_to_cstr(%nyx_string* %2554)
  %2556 = call i64 @nyx_exec_code(i8* %2555)
  %2557 = alloca i64
  store i64 %2556, i64* %2557
  %2558 = load i64, i64* %2557
  %2559 = icmp ne i64 %2558, 0
  br i1 %2559, label %then474, label %else475
then474:
  %2560 = getelementptr [36 x i8], [36 x i8]* @.str262, i32 0, i32 0
  %2561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2560, i64 35)
  %2562 = call i8* @nyx_string_to_cstr(%nyx_string* %2561)
  call void @nyx_print_string(i8* %2562)
  %2563 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2564 = getelementptr [11 x i8], [11 x i8]* @.str263, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2564, i64 10)
  %2566 = call %nyx_string* @nyx_string_concat(%nyx_string* %2563, %nyx_string* %2565)
  %2567 = call i8* @nyx_string_to_cstr(%nyx_string* %2566)
  %2568 = call %nyx_string* @nyx_read_file(i8* %2567)
  %2569 = call i8* @nyx_string_to_cstr(%nyx_string* %2568)
  call void @nyx_print_string(i8* %2569)
  ret i64 1
else475:
  br label %merge476
merge476:
  %2570 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2571 = getelementptr [33 x i8], [33 x i8]* @.str264, i32 0, i32 0
  %2572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2571, i64 32)
  %2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %2570, %nyx_string* %2572)
  %2574 = load %nyx_string*, %nyx_string** %2535
  %2575 = call %nyx_string* @nyx_string_concat(%nyx_string* %2573, %nyx_string* %2574)
  %2576 = getelementptr [6 x i8], [6 x i8]* @.str265, i32 0, i32 0
  %2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2576, i64 5)
  %2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %2575, %nyx_string* %2577)
  %2579 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2580 = call %nyx_string* @nyx_string_concat(%nyx_string* %2578, %nyx_string* %2579)
  %2581 = getelementptr [16 x i8], [16 x i8]* @.str266, i32 0, i32 0
  %2582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2581, i64 15)
  %2583 = call %nyx_string* @nyx_string_concat(%nyx_string* %2580, %nyx_string* %2582)
  %2584 = call i8* @nyx_string_to_cstr(%nyx_string* %2583)
  %2585 = call i64 @nyx_exec_code(i8* %2584)
  %2586 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2587 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %2588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2587, i64 9)
  %2589 = call %nyx_string* @nyx_string_concat(%nyx_string* %2586, %nyx_string* %2588)
  %2590 = call i8* @nyx_string_to_cstr(%nyx_string* %2589)
  %2591 = call %nyx_string* @nyx_read_file(i8* %2590)
  %2592 = call i8* @cov_called_from_show(%nyx_string* %2591)
  store i8* %2592, i8** %2528
  br label %merge473
else472:
  br label %merge473
merge473:
  %2593 = call i8* @nyx_map_new(i32 0)
  %2594 = alloca i8*
  store i8* %2593, i8** %2594
  %2595 = call i8* @nyx_map_new(i32 0)
  %2596 = alloca i8*
  store i8* %2595, i8** %2596
  %2597 = call i8* @nyx_map_new(i32 0)
  %2598 = alloca i8*
  store i8* %2597, i8** %2598
  %2599 = call i8* @nyx_map_new(i32 0)
  %2600 = alloca i8*
  store i8* %2599, i8** %2600
  store i64 0, i64* %2467
  %2601 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %2602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2601, i64 1)
  %2603 = alloca %nyx_string*
  store %nyx_string* %2602, %nyx_string** %2603
  %2604 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2604, i64 4)
  %2606 = alloca %nyx_string*
  store %nyx_string* %2605, %nyx_string** %2606
  %2607 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2607, i64 1)
  %2609 = alloca %nyx_string*
  store %nyx_string* %2608, %nyx_string** %2609
  %2610 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %2611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2610, i64 0)
  %2612 = alloca %nyx_string*
  store %nyx_string* %2611, %nyx_string** %2612
  %2613 = getelementptr [2 x i8], [2 x i8]* @.str272, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2613, i64 1)
  %2615 = alloca %nyx_string*
  store %nyx_string* %2614, %nyx_string** %2615
  %2616 = getelementptr [5 x i8], [5 x i8]* @.str273, i32 0, i32 0
  %2617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2616, i64 4)
  %2618 = alloca %nyx_string*
  store %nyx_string* %2617, %nyx_string** %2618
  %2619 = call i8* @llvm.stacksave()
  br label %while_cond477
while_cond477:
  %2620 = load i64, i64* %2467
  %2621 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2622 = call i64 @nyx_array_length({ i64, i8* }* %2621)
  %2623 = icmp slt i64 %2620, %2622
  br i1 %2623, label %while_body478, label %while_end479
while_body478:
  call void @llvm.stackrestore(i8* %2619)
  %2624 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2625 = load i64, i64* %2467
  %2626 = call i64 @nyx_array_get_checked({ i64, i8* }* %2624, i64 %2625, i64 2)
  %2627 = inttoptr i64 %2626 to %nyx_string*
  %2628 = alloca %nyx_string*
  store %nyx_string* %2627, %nyx_string** %2628
  %2629 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2630 = load %nyx_string*, %nyx_string** %2603
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2630)
  %2632 = load %nyx_string*, %nyx_string** %2628
  %2633 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2632)
  %2634 = load %nyx_string*, %nyx_string** %2606
  %2635 = call %nyx_string* @nyx_string_concat(%nyx_string* %2633, %nyx_string* %2634)
  %2636 = alloca %nyx_string*
  store %nyx_string* %2635, %nyx_string** %2636
  %2637 = load %nyx_string*, %nyx_string** %2636
  %2638 = call i8* @nyx_string_to_cstr(%nyx_string* %2637)
  %2639 = call i1 @nyx_file_exists(i8* %2638)
  br i1 %2639, label %then480, label %else481
then480:
  %2640 = load %nyx_string*, %nyx_string** %2636
  %2641 = call i8* @nyx_string_to_cstr(%nyx_string* %2640)
  %2642 = call %nyx_string* @nyx_read_file(i8* %2641)
  %2643 = load %nyx_string*, %nyx_string** %2609
  %2644 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2642, %nyx_string* %2643)
  %2645 = alloca { i64, i8* }*
  store { i64, i8* }* %2644, { i64, i8* }** %2645
  %2646 = alloca i64
  store i64 0, i64* %2646
  %2647 = call i8* @llvm.stacksave()
  br label %while_cond483
while_cond483:
  %2648 = load i64, i64* %2646
  %2649 = load { i64, i8* }*, { i64, i8* }** %2645
  %2650 = call i64 @nyx_array_length({ i64, i8* }* %2649)
  %2651 = icmp slt i64 %2648, %2650
  br i1 %2651, label %while_body484, label %while_end485
while_body484:
  call void @llvm.stackrestore(i8* %2647)
  %2652 = load { i64, i8* }*, { i64, i8* }** %2645
  %2653 = load i64, i64* %2646
  %2654 = call i64 @nyx_array_get_checked({ i64, i8* }* %2652, i64 %2653, i64 2)
  %2655 = inttoptr i64 %2654 to %nyx_string*
  %2656 = alloca %nyx_string*
  store %nyx_string* %2655, %nyx_string** %2656
  %2657 = load %nyx_string*, %nyx_string** %2656
  %2658 = call { i64, i8* }* @cov_fields(%nyx_string* %2657)
  %2659 = alloca { i64, i8* }*
  store { i64, i8* }* %2658, { i64, i8* }** %2659
  %2660 = load { i64, i8* }*, { i64, i8* }** %2659
  %2661 = call i64 @nyx_array_length({ i64, i8* }* %2660)
  %2662 = icmp sge i64 %2661, 5
  br i1 %2662, label %then486, label %else487
then486:
  %2663 = load { i64, i8* }*, { i64, i8* }** %2659
  %2664 = call i64 @nyx_array_get_checked({ i64, i8* }* %2663, i64 0, i64 2)
  %2665 = inttoptr i64 %2664 to %nyx_string*
  %2666 = alloca %nyx_string*
  store %nyx_string* %2665, %nyx_string** %2666
  %2667 = load { i64, i8* }*, { i64, i8* }** %2659
  %2668 = call i64 @nyx_array_get_checked({ i64, i8* }* %2667, i64 1, i64 2)
  %2669 = inttoptr i64 %2668 to %nyx_string*
  %2670 = alloca %nyx_string*
  store %nyx_string* %2669, %nyx_string** %2670
  %2671 = load { i64, i8* }*, { i64, i8* }** %2659
  %2672 = call i64 @nyx_array_get_checked({ i64, i8* }* %2671, i64 3, i64 2)
  %2673 = inttoptr i64 %2672 to %nyx_string*
  %2674 = alloca %nyx_string*
  store %nyx_string* %2673, %nyx_string** %2674
  %2675 = load { i64, i8* }*, { i64, i8* }** %2659
  %2676 = call i64 @nyx_array_get_checked({ i64, i8* }* %2675, i64 4, i64 2)
  %2677 = inttoptr i64 %2676 to %nyx_string*
  %2678 = alloca %nyx_string*
  store %nyx_string* %2677, %nyx_string** %2678
  %2679 = load %nyx_string*, %nyx_string** %2670
  %2680 = load %nyx_string*, %nyx_string** %2612
  %2681 = call i1 @nyx_string_equals(%nyx_string* %2679, %nyx_string* %2680)
  %2682 = xor i1 %2681, true
  br i1 %2682, label %then489, label %else490
then489:
  %2683 = load i8*, i8** %2600
  %2684 = load %nyx_string*, %nyx_string** %2670
  %2685 = load %nyx_string*, %nyx_string** %2615
  %2686 = call i8* @nyx_string_to_cstr(%nyx_string* %2684)
  %2687 = bitcast %nyx_string* %2685 to i8*
  call void @nyx_map_insert_str(i8* %2683, i8* %2686, i8* %2687)
  br label %merge491
else490:
  br label %merge491
merge491:
  %2688 = load i8*, i8** %2464
  %2689 = load %nyx_string*, %nyx_string** %2628
  %2690 = call i8* @nyx_string_to_cstr(%nyx_string* %2689)
  %2691 = call i1 @nyx_map_contains_str(i8* %2688, i8* %2690)
  br i1 %2691, label %then492, label %else493
then492:
  %2692 = load i8*, i8** %2594
  %2693 = load %nyx_string*, %nyx_string** %2666
  %2694 = load %nyx_string*, %nyx_string** %2615
  %2695 = call i8* @nyx_string_to_cstr(%nyx_string* %2693)
  %2696 = bitcast %nyx_string* %2694 to i8*
  call void @nyx_map_insert_str(i8* %2692, i8* %2695, i8* %2696)
  %2697 = alloca i1
  store i1 false, i1* %2697
  %2698 = load %nyx_string*, %nyx_string** %2678
  %2699 = load %nyx_string*, %nyx_string** %2618
  %2700 = call i1 @nyx_string_equals(%nyx_string* %2698, %nyx_string* %2699)
  br i1 %2700, label %sc_and_rhs495, label %sc_and_end496
sc_and_rhs495:
  %2701 = load i8*, i8** %2528
  %2702 = load %nyx_string*, %nyx_string** %2666
  %2703 = call i8* @nyx_string_to_cstr(%nyx_string* %2702)
  %2704 = call i1 @nyx_map_contains_str(i8* %2701, i8* %2703)
  store i1 %2704, i1* %2697
  br label %sc_and_end496
sc_and_end496:
  %2705 = load i1, i1* %2697
  br i1 %2705, label %then497, label %else498
then497:
  %2706 = load i8*, i8** %2598
  %2707 = load %nyx_string*, %nyx_string** %2674
  %2708 = load %nyx_string*, %nyx_string** %2615
  %2709 = call i8* @nyx_string_to_cstr(%nyx_string* %2707)
  %2710 = bitcast %nyx_string* %2708 to i8*
  call void @nyx_map_insert_str(i8* %2706, i8* %2709, i8* %2710)
  br label %merge499
else498:
  br label %merge499
merge499:
  br label %merge494
else493:
  %2711 = load i8*, i8** %2596
  %2712 = load %nyx_string*, %nyx_string** %2666
  %2713 = load %nyx_string*, %nyx_string** %2615
  %2714 = call i8* @nyx_string_to_cstr(%nyx_string* %2712)
  %2715 = bitcast %nyx_string* %2713 to i8*
  call void @nyx_map_insert_str(i8* %2711, i8* %2714, i8* %2715)
  br label %merge494
merge494:
  br label %merge488
else487:
  br label %merge488
merge488:
  %2716 = load i64, i64* %2646
  %2717 = add i64 %2716, 1
  store i64 %2717, i64* %2646
  br label %while_cond483
while_end485:
  br label %merge482
else481:
  br label %merge482
merge482:
  %2718 = load i64, i64* %2467
  %2719 = add i64 %2718, 1
  store i64 %2719, i64* %2467
  br label %while_cond477
while_end479:
  %2720 = call { i64, i8* }* @cov_src_modules()
  %2721 = alloca { i64, i8* }*
  store { i64, i8* }* %2720, { i64, i8* }** %2721
  %2722 = load { i64, i8* }*, { i64, i8* }** %2721
  %2723 = call i64 @nyx_array_length({ i64, i8* }* %2722)
  %2724 = icmp eq i64 %2723, 0
  br i1 %2724, label %then500, label %else501
then500:
  %2725 = getelementptr [27 x i8], [27 x i8]* @.str274, i32 0, i32 0
  %2726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2725, i64 26)
  %2727 = call i8* @nyx_string_to_cstr(%nyx_string* %2726)
  call void @nyx_print_string(i8* %2727)
  ret i64 0
else501:
  br label %merge502
merge502:
  %2728 = load %nyx_string*, %nyx_string** %2447
  %2729 = load %nyx_string*, %nyx_string** %2452
  %2730 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2731 = load { i64, i8* }*, { i64, i8* }** %2721
  %2732 = call %nyx_string* @cov_universe(%nyx_string* %2728, %nyx_string* %2729, %nyx_string* %2730, { i64, i8* }* %2731)
  %2733 = alloca %nyx_string*
  store %nyx_string* %2732, %nyx_string** %2733
  %2734 = load %nyx_string*, %nyx_string** %2733
  %2735 = call i8* @nyx_string_to_cstr(%nyx_string* %2734)
  %2736 = call i1 @nyx_file_exists(i8* %2735)
  %2737 = xor i1 %2736, true
  br i1 %2737, label %then503, label %else504
then503:
  %2738 = getelementptr [68 x i8], [68 x i8]* @.str275, i32 0, i32 0
  %2739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2738, i64 67)
  %2740 = call i8* @nyx_string_to_cstr(%nyx_string* %2739)
  call void @nyx_print_string(i8* %2740)
  %2741 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2742 = getelementptr [14 x i8], [14 x i8]* @.str276, i32 0, i32 0
  %2743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2742, i64 13)
  %2744 = call %nyx_string* @nyx_string_concat(%nyx_string* %2741, %nyx_string* %2743)
  %2745 = call i8* @nyx_string_to_cstr(%nyx_string* %2744)
  %2746 = call i1 @nyx_file_exists(i8* %2745)
  br i1 %2746, label %then506, label %else507
then506:
  %2747 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2748 = getelementptr [14 x i8], [14 x i8]* @.str277, i32 0, i32 0
  %2749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2748, i64 13)
  %2750 = call %nyx_string* @nyx_string_concat(%nyx_string* %2747, %nyx_string* %2749)
  %2751 = call i8* @nyx_string_to_cstr(%nyx_string* %2750)
  %2752 = call %nyx_string* @nyx_read_file(i8* %2751)
  %2753 = call i8* @nyx_string_to_cstr(%nyx_string* %2752)
  call void @nyx_print_string(i8* %2753)
  br label %merge508
else507:
  br label %merge508
merge508:
  ret i64 1
else504:
  br label %merge505
merge505:
  %2754 = load %nyx_string*, %nyx_string** %2733
  %2755 = call i8* @nyx_string_to_cstr(%nyx_string* %2754)
  %2756 = call %nyx_string* @nyx_read_file(i8* %2755)
  %2757 = getelementptr [2 x i8], [2 x i8]* @.str278, i32 0, i32 0
  %2758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2757, i64 1)
  %2759 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2756, %nyx_string* %2758)
  %2760 = alloca { i64, i8* }*
  store { i64, i8* }* %2759, { i64, i8* }** %2760
  %2761 = call { i64, i8* }* @nyx_array_new_ptr()
  %2762 = alloca { i64, i8* }*
  store { i64, i8* }* %2761, { i64, i8* }** %2762
  %2763 = alloca i64
  store i64 0, i64* %2763
  %2764 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %2765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2764, i64 2)
  %2766 = alloca %nyx_string*
  store %nyx_string* %2765, %nyx_string** %2766
  %2767 = getelementptr [7 x i8], [7 x i8]* @.str280, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2767, i64 6)
  %2769 = alloca %nyx_string*
  store %nyx_string* %2768, %nyx_string** %2769
  %2770 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2770, i64 5)
  %2772 = alloca %nyx_string*
  store %nyx_string* %2771, %nyx_string** %2772
  %2773 = getelementptr [9 x i8], [9 x i8]* @.str282, i32 0, i32 0
  %2774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2773, i64 8)
  %2775 = alloca %nyx_string*
  store %nyx_string* %2774, %nyx_string** %2775
  %2776 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2776, i64 4)
  %2778 = alloca %nyx_string*
  store %nyx_string* %2777, %nyx_string** %2778
  %2779 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2779, i64 4)
  %2781 = alloca %nyx_string*
  store %nyx_string* %2780, %nyx_string** %2781
  %2782 = getelementptr [3 x i8], [3 x i8]* @.str285, i32 0, i32 0
  %2783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2782, i64 2)
  %2784 = alloca %nyx_string*
  store %nyx_string* %2783, %nyx_string** %2784
  %2785 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2785, i64 2)
  %2787 = alloca %nyx_string*
  store %nyx_string* %2786, %nyx_string** %2787
  %2788 = getelementptr [10 x i8], [10 x i8]* @.str287, i32 0, i32 0
  %2789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2788, i64 9)
  %2790 = alloca %nyx_string*
  store %nyx_string* %2789, %nyx_string** %2790
  %2791 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %2792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2791, i64 4)
  %2793 = alloca %nyx_string*
  store %nyx_string* %2792, %nyx_string** %2793
  %2794 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2794, i64 1)
  %2796 = alloca %nyx_string*
  store %nyx_string* %2795, %nyx_string** %2796
  %2797 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2798 = load i64, i64* %2763
  %2799 = load { i64, i8* }*, { i64, i8* }** %2760
  %2800 = call i64 @nyx_array_length({ i64, i8* }* %2799)
  %2801 = icmp slt i64 %2798, %2800
  br i1 %2801, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2797)
  %2802 = load { i64, i8* }*, { i64, i8* }** %2760
  %2803 = load i64, i64* %2763
  %2804 = call i64 @nyx_array_get_checked({ i64, i8* }* %2802, i64 %2803, i64 2)
  %2805 = inttoptr i64 %2804 to %nyx_string*
  %2806 = alloca %nyx_string*
  store %nyx_string* %2805, %nyx_string** %2806
  %2807 = load %nyx_string*, %nyx_string** %2806
  %2808 = call { i64, i8* }* @cov_fields(%nyx_string* %2807)
  %2809 = alloca { i64, i8* }*
  store { i64, i8* }* %2808, { i64, i8* }** %2809
  %2810 = load { i64, i8* }*, { i64, i8* }** %2809
  %2811 = call i64 @nyx_array_length({ i64, i8* }* %2810)
  %2812 = icmp sge i64 %2811, 5
  br i1 %2812, label %then512, label %else513
then512:
  %2813 = load { i64, i8* }*, { i64, i8* }** %2809
  %2814 = call i64 @nyx_array_get_checked({ i64, i8* }* %2813, i64 0, i64 2)
  %2815 = inttoptr i64 %2814 to %nyx_string*
  %2816 = alloca %nyx_string*
  store %nyx_string* %2815, %nyx_string** %2816
  %2817 = load { i64, i8* }*, { i64, i8* }** %2809
  %2818 = call i64 @nyx_array_get_checked({ i64, i8* }* %2817, i64 1, i64 2)
  %2819 = inttoptr i64 %2818 to %nyx_string*
  %2820 = alloca %nyx_string*
  store %nyx_string* %2819, %nyx_string** %2820
  %2821 = load { i64, i8* }*, { i64, i8* }** %2809
  %2822 = call i64 @nyx_array_get_checked({ i64, i8* }* %2821, i64 2, i64 2)
  %2823 = inttoptr i64 %2822 to %nyx_string*
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = load { i64, i8* }*, { i64, i8* }** %2809
  %2826 = call i64 @nyx_array_get_checked({ i64, i8* }* %2825, i64 3, i64 2)
  %2827 = inttoptr i64 %2826 to %nyx_string*
  %2828 = alloca %nyx_string*
  store %nyx_string* %2827, %nyx_string** %2828
  %2829 = load { i64, i8* }*, { i64, i8* }** %2809
  %2830 = call i64 @nyx_array_get_checked({ i64, i8* }* %2829, i64 4, i64 2)
  %2831 = inttoptr i64 %2830 to %nyx_string*
  %2832 = alloca %nyx_string*
  store %nyx_string* %2831, %nyx_string** %2832
  %2833 = alloca i1
  store i1 true, i1* %2833
  %2834 = alloca i1
  store i1 true, i1* %2834
  %2835 = alloca i1
  store i1 true, i1* %2835
  %2836 = load %nyx_string*, %nyx_string** %2832
  %2837 = load %nyx_string*, %nyx_string** %2766
  %2838 = call i1 @nyx_string_equals(%nyx_string* %2836, %nyx_string* %2837)
  br i1 %2838, label %sc_or_end516, label %sc_or_rhs515
sc_or_rhs515:
  %2839 = load %nyx_string*, %nyx_string** %2832
  %2840 = load %nyx_string*, %nyx_string** %2769
  %2841 = call i1 @nyx_string_equals(%nyx_string* %2839, %nyx_string* %2840)
  store i1 %2841, i1* %2835
  br label %sc_or_end516
sc_or_end516:
  %2842 = load i1, i1* %2835
  br i1 %2842, label %sc_or_end518, label %sc_or_rhs517
sc_or_rhs517:
  %2843 = load %nyx_string*, %nyx_string** %2832
  %2844 = load %nyx_string*, %nyx_string** %2772
  %2845 = call i1 @nyx_string_equals(%nyx_string* %2843, %nyx_string* %2844)
  store i1 %2845, i1* %2834
  br label %sc_or_end518
sc_or_end518:
  %2846 = load i1, i1* %2834
  br i1 %2846, label %sc_or_end520, label %sc_or_rhs519
sc_or_rhs519:
  %2847 = load %nyx_string*, %nyx_string** %2832
  %2848 = load %nyx_string*, %nyx_string** %2775
  %2849 = call i1 @nyx_string_equals(%nyx_string* %2847, %nyx_string* %2848)
  store i1 %2849, i1* %2833
  br label %sc_or_end520
sc_or_end520:
  %2850 = load i1, i1* %2833
  %2851 = alloca i1
  store i1 %2850, i1* %2851
  %2852 = alloca i1
  store i1 false, i1* %2852
  %2853 = alloca i1
  store i1 false, i1* %2853
  %2854 = load i1, i1* %2851
  br i1 %2854, label %sc_and_rhs521, label %sc_and_end522
sc_and_rhs521:
  %2855 = load %nyx_string*, %nyx_string** %2820
  %2856 = load %nyx_string*, %nyx_string** %2778
  %2857 = call i1 @nyx_string_starts_with(%nyx_string* %2855, %nyx_string* %2856)
  store i1 %2857, i1* %2853
  br label %sc_and_end522
sc_and_end522:
  %2858 = load i1, i1* %2853
  br i1 %2858, label %sc_and_rhs523, label %sc_and_end524
sc_and_rhs523:
  %2859 = load %nyx_string*, %nyx_string** %2828
  %2860 = load %nyx_string*, %nyx_string** %2781
  %2861 = call i1 @nyx_string_equals(%nyx_string* %2859, %nyx_string* %2860)
  %2862 = xor i1 %2861, true
  store i1 %2862, i1* %2852
  br label %sc_and_end524
sc_and_end524:
  %2863 = load i1, i1* %2852
  br i1 %2863, label %then525, label %else526
then525:
  %2864 = load i8*, i8** %2528
  %2865 = load %nyx_string*, %nyx_string** %2816
  %2866 = call i8* @nyx_string_to_cstr(%nyx_string* %2865)
  %2867 = call i1 @nyx_map_contains_str(i8* %2864, i8* %2866)
  %2868 = alloca i1
  store i1 %2867, i1* %2868
  %2869 = load %nyx_string*, %nyx_string** %2832
  %2870 = load %nyx_string*, %nyx_string** %2775
  %2871 = call i1 @nyx_string_equals(%nyx_string* %2869, %nyx_string* %2870)
  br i1 %2871, label %then528, label %else529
then528:
  %2872 = load i8*, i8** %2598
  %2873 = load %nyx_string*, %nyx_string** %2816
  %2874 = call i8* @nyx_string_to_cstr(%nyx_string* %2873)
  %2875 = call i1 @nyx_map_contains_str(i8* %2872, i8* %2874)
  store i1 %2875, i1* %2868
  br label %merge530
else529:
  br label %merge530
merge530:
  %2876 = load %nyx_string*, %nyx_string** %2784
  %2877 = alloca %nyx_string*
  store %nyx_string* %2876, %nyx_string** %2877
  %2878 = load i1, i1* %2868
  br i1 %2878, label %then531, label %else532
then531:
  %2879 = load %nyx_string*, %nyx_string** %2787
  store %nyx_string* %2879, %nyx_string** %2877
  br label %merge533
else532:
  %2880 = alloca i1
  store i1 false, i1* %2880
  %2881 = load i8*, i8** %2594
  %2882 = load %nyx_string*, %nyx_string** %2816
  %2883 = call i8* @nyx_string_to_cstr(%nyx_string* %2882)
  %2884 = call i1 @nyx_map_contains_str(i8* %2881, i8* %2883)
  %2885 = xor i1 %2884, true
  br i1 %2885, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %2886 = load i8*, i8** %2596
  %2887 = load %nyx_string*, %nyx_string** %2816
  %2888 = call i8* @nyx_string_to_cstr(%nyx_string* %2887)
  %2889 = call i1 @nyx_map_contains_str(i8* %2886, i8* %2888)
  store i1 %2889, i1* %2880
  br label %sc_and_end535
sc_and_end535:
  %2890 = load i1, i1* %2880
  br i1 %2890, label %then536, label %else537
then536:
  %2891 = load %nyx_string*, %nyx_string** %2790
  store %nyx_string* %2891, %nyx_string** %2877
  br label %merge538
else537:
  br label %merge538
merge538:
  br label %merge533
merge533:
  %2892 = load { i64, i8* }*, { i64, i8* }** %2762
  %2893 = load %nyx_string*, %nyx_string** %2820
  %2894 = load %nyx_string*, %nyx_string** %2793
  %2895 = call %nyx_string* @nyx_string_concat(%nyx_string* %2893, %nyx_string* %2894)
  %2896 = load %nyx_string*, %nyx_string** %2824
  %2897 = call i64 @nyx_string_to_int(%nyx_string* %2896)
  %2898 = call %nyx_string* @cov_pad(i64 %2897)
  %2899 = call %nyx_string* @nyx_string_concat(%nyx_string* %2895, %nyx_string* %2898)
  %2900 = load %nyx_string*, %nyx_string** %2796
  %2901 = call %nyx_string* @nyx_string_concat(%nyx_string* %2899, %nyx_string* %2900)
  %2902 = load %nyx_string*, %nyx_string** %2828
  %2903 = call %nyx_string* @nyx_string_concat(%nyx_string* %2901, %nyx_string* %2902)
  %2904 = load %nyx_string*, %nyx_string** %2796
  %2905 = call %nyx_string* @nyx_string_concat(%nyx_string* %2903, %nyx_string* %2904)
  %2906 = load %nyx_string*, %nyx_string** %2877
  %2907 = call %nyx_string* @nyx_string_concat(%nyx_string* %2905, %nyx_string* %2906)
  %2908 = load %nyx_string*, %nyx_string** %2796
  %2909 = call %nyx_string* @nyx_string_concat(%nyx_string* %2907, %nyx_string* %2908)
  %2910 = load %nyx_string*, %nyx_string** %2820
  %2911 = call %nyx_string* @nyx_string_concat(%nyx_string* %2909, %nyx_string* %2910)
  %2912 = ptrtoint %nyx_string* %2911 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2892, i64 %2912, i64 2)
  br label %merge527
else526:
  br label %merge527
merge527:
  br label %merge514
else513:
  br label %merge514
merge514:
  %2913 = load i64, i64* %2763
  %2914 = add i64 %2913, 1
  store i64 %2914, i64* %2763
  br label %while_cond509
while_end511:
  %2915 = load { i64, i8* }*, { i64, i8* }** %2762
  %2916 = call { i64, i8* }* @sort_str({ i64, i8* }* %2915)
  %2917 = alloca { i64, i8* }*
  store { i64, i8* }* %2916, { i64, i8* }** %2917
  %2918 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %2919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2918, i64 0)
  %2920 = alloca %nyx_string*
  store %nyx_string* %2919, %nyx_string** %2920
  %2921 = alloca i64
  store i64 0, i64* %2921
  %2922 = alloca i64
  store i64 0, i64* %2922
  %2923 = alloca i64
  store i64 0, i64* %2923
  %2924 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %2925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2924, i64 0)
  %2926 = alloca %nyx_string*
  store %nyx_string* %2925, %nyx_string** %2926
  %2927 = getelementptr [10 x i8], [10 x i8]* @.str292, i32 0, i32 0
  %2928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2927, i64 9)
  %2929 = alloca %nyx_string*
  store %nyx_string* %2928, %nyx_string** %2929
  %2930 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2930, i64 1)
  %2932 = alloca %nyx_string*
  store %nyx_string* %2931, %nyx_string** %2932
  %2933 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %2934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2933, i64 2)
  %2935 = alloca %nyx_string*
  store %nyx_string* %2934, %nyx_string** %2935
  %2936 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2936, i64 1)
  %2938 = alloca %nyx_string*
  store %nyx_string* %2937, %nyx_string** %2938
  %2939 = getelementptr [5 x i8], [5 x i8]* @.str296, i32 0, i32 0
  %2940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2939, i64 4)
  %2941 = alloca %nyx_string*
  store %nyx_string* %2940, %nyx_string** %2941
  %2942 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %2943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2942, i64 1)
  %2944 = alloca %nyx_string*
  store %nyx_string* %2943, %nyx_string** %2944
  %2945 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %2946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2945, i64 1)
  %2947 = alloca %nyx_string*
  store %nyx_string* %2946, %nyx_string** %2947
  %2948 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %2949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2948, i64 3)
  %2950 = alloca %nyx_string*
  store %nyx_string* %2949, %nyx_string** %2950
  %2951 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %2952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2951, i64 1)
  %2953 = alloca %nyx_string*
  store %nyx_string* %2952, %nyx_string** %2953
  %2954 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2954, i64 1)
  %2956 = alloca %nyx_string*
  store %nyx_string* %2955, %nyx_string** %2956
  %2957 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %2958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2957, i64 5)
  %2959 = alloca %nyx_string*
  store %nyx_string* %2958, %nyx_string** %2959
  %2960 = getelementptr [3 x i8], [3 x i8]* @.str303, i32 0, i32 0
  %2961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2960, i64 2)
  %2962 = alloca %nyx_string*
  store %nyx_string* %2961, %nyx_string** %2962
  %2963 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2963, i64 2)
  %2965 = alloca %nyx_string*
  store %nyx_string* %2964, %nyx_string** %2965
  %2966 = getelementptr [2 x i8], [2 x i8]* @.str305, i32 0, i32 0
  %2967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2966, i64 1)
  %2968 = alloca %nyx_string*
  store %nyx_string* %2967, %nyx_string** %2968
  %2969 = getelementptr [10 x i8], [10 x i8]* @.str306, i32 0, i32 0
  %2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2969, i64 9)
  %2971 = alloca %nyx_string*
  store %nyx_string* %2970, %nyx_string** %2971
  %2972 = getelementptr [29 x i8], [29 x i8]* @.str307, i32 0, i32 0
  %2973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2972, i64 28)
  %2974 = alloca %nyx_string*
  store %nyx_string* %2973, %nyx_string** %2974
  %2975 = getelementptr [3 x i8], [3 x i8]* @.str308, i32 0, i32 0
  %2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2975, i64 2)
  %2977 = alloca %nyx_string*
  store %nyx_string* %2976, %nyx_string** %2977
  %2978 = getelementptr [38 x i8], [38 x i8]* @.str309, i32 0, i32 0
  %2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2978, i64 37)
  %2980 = alloca %nyx_string*
  store %nyx_string* %2979, %nyx_string** %2980
  %2981 = getelementptr [4 x i8], [4 x i8]* @.str310, i32 0, i32 0
  %2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2981, i64 3)
  %2983 = alloca %nyx_string*
  store %nyx_string* %2982, %nyx_string** %2983
  %2984 = getelementptr [5 x i8], [5 x i8]* @.str311, i32 0, i32 0
  %2985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2984, i64 4)
  %2986 = alloca %nyx_string*
  store %nyx_string* %2985, %nyx_string** %2986
  %2987 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %2988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2987, i64 5)
  %2989 = alloca %nyx_string*
  store %nyx_string* %2988, %nyx_string** %2989
  %2990 = getelementptr [16 x i8], [16 x i8]* @.str313, i32 0, i32 0
  %2991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2990, i64 15)
  %2992 = alloca %nyx_string*
  store %nyx_string* %2991, %nyx_string** %2992
  %2993 = call i8* @llvm.stacksave()
  br label %while_cond539
while_cond539:
  %2994 = load i64, i64* %2923
  %2995 = load { i64, i8* }*, { i64, i8* }** %2917
  %2996 = call i64 @nyx_array_length({ i64, i8* }* %2995)
  %2997 = icmp slt i64 %2994, %2996
  br i1 %2997, label %while_body540, label %while_end541
while_body540:
  call void @llvm.stackrestore(i8* %2993)
  %2998 = load { i64, i8* }*, { i64, i8* }** %2917
  %2999 = load i64, i64* %2923
  %3000 = call i64 @nyx_array_get_checked({ i64, i8* }* %2998, i64 %2999, i64 2)
  %3001 = inttoptr i64 %3000 to %nyx_string*
  %3002 = alloca %nyx_string*
  store %nyx_string* %3001, %nyx_string** %3002
  %3003 = load %nyx_string*, %nyx_string** %3002
  %3004 = call { i64, i8* }* @cov_fields(%nyx_string* %3003)
  %3005 = alloca { i64, i8* }*
  store { i64, i8* }* %3004, { i64, i8* }** %3005
  %3006 = load { i64, i8* }*, { i64, i8* }** %3005
  %3007 = call i64 @nyx_array_get_checked({ i64, i8* }* %3006, i64 0, i64 2)
  %3008 = inttoptr i64 %3007 to %nyx_string*
  %3009 = alloca %nyx_string*
  store %nyx_string* %3008, %nyx_string** %3009
  %3010 = load { i64, i8* }*, { i64, i8* }** %3005
  %3011 = call i64 @nyx_array_get_checked({ i64, i8* }* %3010, i64 4, i64 2)
  %3012 = inttoptr i64 %3011 to %nyx_string*
  %3013 = alloca %nyx_string*
  store %nyx_string* %3012, %nyx_string** %3013
  %3014 = alloca i64
  store i64 0, i64* %3014
  %3015 = alloca i64
  store i64 0, i64* %3015
  %3016 = alloca i64
  store i64 0, i64* %3016
  %3017 = call { i64, i8* }* @nyx_array_new_ptr()
  %3018 = alloca { i64, i8* }*
  store { i64, i8* }* %3017, { i64, i8* }** %3018
  %3019 = load %nyx_string*, %nyx_string** %2926
  %3020 = alloca %nyx_string*
  store %nyx_string* %3019, %nyx_string** %3020
  %3021 = load %nyx_string*, %nyx_string** %2926
  %3022 = alloca %nyx_string*
  store %nyx_string* %3021, %nyx_string** %3022
  %3023 = load i64, i64* %2923
  %3024 = alloca i64
  store i64 %3023, i64* %3024
  %3025 = alloca i1
  store i1 1, i1* %3025
  %3026 = call i8* @llvm.stacksave()
  br label %while_cond542
while_cond542:
  %3027 = alloca i1
  store i1 false, i1* %3027
  %3028 = load i64, i64* %3024
  %3029 = load { i64, i8* }*, { i64, i8* }** %2917
  %3030 = call i64 @nyx_array_length({ i64, i8* }* %3029)
  %3031 = icmp slt i64 %3028, %3030
  br i1 %3031, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %3032 = load i1, i1* %3025
  store i1 %3032, i1* %3027
  br label %sc_and_end546
sc_and_end546:
  %3033 = load i1, i1* %3027
  br i1 %3033, label %while_body543, label %while_end544
while_body543:
  call void @llvm.stackrestore(i8* %3026)
  %3034 = load { i64, i8* }*, { i64, i8* }** %2917
  %3035 = load i64, i64* %3024
  %3036 = call i64 @nyx_array_get_checked({ i64, i8* }* %3034, i64 %3035, i64 2)
  %3037 = inttoptr i64 %3036 to %nyx_string*
  %3038 = alloca %nyx_string*
  store %nyx_string* %3037, %nyx_string** %3038
  %3039 = load %nyx_string*, %nyx_string** %3038
  %3040 = call { i64, i8* }* @cov_fields(%nyx_string* %3039)
  %3041 = alloca { i64, i8* }*
  store { i64, i8* }* %3040, { i64, i8* }** %3041
  %3042 = load { i64, i8* }*, { i64, i8* }** %3041
  %3043 = call i64 @nyx_array_get_checked({ i64, i8* }* %3042, i64 0, i64 2)
  %3044 = inttoptr i64 %3043 to %nyx_string*
  %3045 = alloca %nyx_string*
  store %nyx_string* %3044, %nyx_string** %3045
  %3046 = load %nyx_string*, %nyx_string** %3045
  %3047 = load %nyx_string*, %nyx_string** %3009
  %3048 = call i1 @nyx_string_equals(%nyx_string* %3046, %nyx_string* %3047)
  %3049 = xor i1 %3048, true
  br i1 %3049, label %then547, label %else548
then547:
  store i1 0, i1* %3025
  br label %merge549
else548:
  %3050 = load { i64, i8* }*, { i64, i8* }** %3041
  %3051 = call i64 @nyx_array_get({ i64, i8* }* %3050, i64 1)
  %3052 = inttoptr i64 %3051 to %nyx_string*
  %3053 = call i64 @nyx_string_to_int(%nyx_string* %3052)
  %3054 = alloca i64
  store i64 %3053, i64* %3054
  %3055 = load { i64, i8* }*, { i64, i8* }** %3041
  %3056 = call i64 @nyx_array_get_checked({ i64, i8* }* %3055, i64 2, i64 2)
  %3057 = inttoptr i64 %3056 to %nyx_string*
  %3058 = alloca %nyx_string*
  store %nyx_string* %3057, %nyx_string** %3058
  %3059 = load { i64, i8* }*, { i64, i8* }** %3041
  %3060 = call i64 @nyx_array_get_checked({ i64, i8* }* %3059, i64 3, i64 2)
  %3061 = inttoptr i64 %3060 to %nyx_string*
  %3062 = alloca %nyx_string*
  store %nyx_string* %3061, %nyx_string** %3062
  %3063 = load %nyx_string*, %nyx_string** %3062
  %3064 = load %nyx_string*, %nyx_string** %2929
  %3065 = call i1 @nyx_string_equals(%nyx_string* %3063, %nyx_string* %3064)
  br i1 %3065, label %then550, label %else551
then550:
  %3066 = load i64, i64* %3016
  %3067 = add i64 %3066, 1
  store i64 %3067, i64* %3016
  br label %merge552
else551:
  %3068 = load i64, i64* %3015
  %3069 = add i64 %3068, 1
  store i64 %3069, i64* %3015
  %3070 = load %nyx_string*, %nyx_string** %2932
  %3071 = alloca %nyx_string*
  store %nyx_string* %3070, %nyx_string** %3071
  %3072 = load %nyx_string*, %nyx_string** %3062
  %3073 = load %nyx_string*, %nyx_string** %2935
  %3074 = call i1 @nyx_string_equals(%nyx_string* %3072, %nyx_string* %3073)
  br i1 %3074, label %then553, label %else554
then553:
  %3075 = load i64, i64* %3014
  %3076 = add i64 %3075, 1
  store i64 %3076, i64* %3014
  %3077 = load %nyx_string*, %nyx_string** %2938
  store %nyx_string* %3077, %nyx_string** %3071
  br label %merge555
else554:
  %3078 = load { i64, i8* }*, { i64, i8* }** %3018
  %3079 = load %nyx_string*, %nyx_string** %2941
  %3080 = load %nyx_string*, %nyx_string** %3009
  %3081 = call %nyx_string* @nyx_string_concat(%nyx_string* %3079, %nyx_string* %3080)
  %3082 = load %nyx_string*, %nyx_string** %2944
  %3083 = call %nyx_string* @nyx_string_concat(%nyx_string* %3081, %nyx_string* %3082)
  %3084 = load i64, i64* %3054
  %3085 = call %nyx_string* @nyx_string_from_int(i64 %3084)
  %3086 = call %nyx_string* @nyx_string_concat(%nyx_string* %3083, %nyx_string* %3085)
  %3087 = load %nyx_string*, %nyx_string** %2947
  %3088 = call %nyx_string* @nyx_string_concat(%nyx_string* %3086, %nyx_string* %3087)
  %3089 = load %nyx_string*, %nyx_string** %3058
  %3090 = call %nyx_string* @nyx_string_concat(%nyx_string* %3088, %nyx_string* %3089)
  %3091 = ptrtoint %nyx_string* %3090 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3078, i64 %3091, i64 2)
  br label %merge555
merge555:
  %3092 = load %nyx_string*, %nyx_string** %3020
  %3093 = load %nyx_string*, %nyx_string** %2950
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3092, %nyx_string* %3093)
  %3095 = load i64, i64* %3054
  %3096 = call %nyx_string* @nyx_string_from_int(i64 %3095)
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3096)
  %3098 = load %nyx_string*, %nyx_string** %2953
  %3099 = call %nyx_string* @nyx_string_concat(%nyx_string* %3097, %nyx_string* %3098)
  %3100 = load %nyx_string*, %nyx_string** %3058
  %3101 = call %nyx_string* @nyx_string_concat(%nyx_string* %3099, %nyx_string* %3100)
  %3102 = load %nyx_string*, %nyx_string** %2956
  %3103 = call %nyx_string* @nyx_string_concat(%nyx_string* %3101, %nyx_string* %3102)
  store %nyx_string* %3103, %nyx_string** %3020
  %3104 = load %nyx_string*, %nyx_string** %3022
  %3105 = load %nyx_string*, %nyx_string** %2959
  %3106 = call %nyx_string* @nyx_string_concat(%nyx_string* %3104, %nyx_string* %3105)
  %3107 = load %nyx_string*, %nyx_string** %3071
  %3108 = call %nyx_string* @nyx_string_concat(%nyx_string* %3106, %nyx_string* %3107)
  %3109 = load %nyx_string*, %nyx_string** %2953
  %3110 = call %nyx_string* @nyx_string_concat(%nyx_string* %3108, %nyx_string* %3109)
  %3111 = load %nyx_string*, %nyx_string** %3058
  %3112 = call %nyx_string* @nyx_string_concat(%nyx_string* %3110, %nyx_string* %3111)
  %3113 = load %nyx_string*, %nyx_string** %2956
  %3114 = call %nyx_string* @nyx_string_concat(%nyx_string* %3112, %nyx_string* %3113)
  store %nyx_string* %3114, %nyx_string** %3022
  br label %merge552
merge552:
  %3115 = load i64, i64* %3024
  %3116 = add i64 %3115, 1
  store i64 %3116, i64* %3024
  br label %merge549
merge549:
  br label %while_cond542
while_end544:
  %3117 = load %nyx_string*, %nyx_string** %2962
  %3118 = load %nyx_string*, %nyx_string** %3009
  %3119 = call %nyx_string* @nyx_string_concat(%nyx_string* %3117, %nyx_string* %3118)
  %3120 = load %nyx_string*, %nyx_string** %2965
  %3121 = call %nyx_string* @nyx_string_concat(%nyx_string* %3119, %nyx_string* %3120)
  %3122 = load i64, i64* %3014
  %3123 = call %nyx_string* @nyx_string_from_int(i64 %3122)
  %3124 = call %nyx_string* @nyx_string_concat(%nyx_string* %3121, %nyx_string* %3123)
  %3125 = load %nyx_string*, %nyx_string** %2968
  %3126 = call %nyx_string* @nyx_string_concat(%nyx_string* %3124, %nyx_string* %3125)
  %3127 = load i64, i64* %3015
  %3128 = call %nyx_string* @nyx_string_from_int(i64 %3127)
  %3129 = call %nyx_string* @nyx_string_concat(%nyx_string* %3126, %nyx_string* %3128)
  %3130 = load %nyx_string*, %nyx_string** %2971
  %3131 = call %nyx_string* @nyx_string_concat(%nyx_string* %3129, %nyx_string* %3130)
  %3132 = alloca %nyx_string*
  store %nyx_string* %3131, %nyx_string** %3132
  %3133 = load i8*, i8** %2600
  %3134 = load %nyx_string*, %nyx_string** %3013
  %3135 = call i8* @nyx_string_to_cstr(%nyx_string* %3134)
  %3136 = call i1 @nyx_map_contains_str(i8* %3133, i8* %3135)
  %3137 = xor i1 %3136, true
  br i1 %3137, label %then556, label %else557
then556:
  %3138 = load %nyx_string*, %nyx_string** %3132
  %3139 = load %nyx_string*, %nyx_string** %2974
  %3140 = call %nyx_string* @nyx_string_concat(%nyx_string* %3138, %nyx_string* %3139)
  store %nyx_string* %3140, %nyx_string** %3132
  br label %merge558
else557:
  br label %merge558
merge558:
  %3141 = load i64, i64* %3016
  %3142 = icmp sgt i64 %3141, 0
  br i1 %3142, label %then559, label %else560
then559:
  %3143 = load %nyx_string*, %nyx_string** %3132
  %3144 = load %nyx_string*, %nyx_string** %2977
  %3145 = call %nyx_string* @nyx_string_concat(%nyx_string* %3143, %nyx_string* %3144)
  %3146 = load i64, i64* %3016
  %3147 = call %nyx_string* @nyx_string_from_int(i64 %3146)
  %3148 = call %nyx_string* @nyx_string_concat(%nyx_string* %3145, %nyx_string* %3147)
  %3149 = load %nyx_string*, %nyx_string** %2980
  %3150 = call %nyx_string* @nyx_string_concat(%nyx_string* %3148, %nyx_string* %3149)
  store %nyx_string* %3150, %nyx_string** %3132
  br label %merge561
else560:
  br label %merge561
merge561:
  %3151 = load %nyx_string*, %nyx_string** %3132
  %3152 = call i8* @nyx_string_to_cstr(%nyx_string* %3151)
  call void @nyx_print_string(i8* %3152)
  %3153 = alloca i64
  store i64 0, i64* %3153
  %3154 = call i8* @llvm.stacksave()
  br label %while_cond562
while_cond562:
  %3155 = load i64, i64* %3153
  %3156 = load { i64, i8* }*, { i64, i8* }** %3018
  %3157 = call i64 @nyx_array_length({ i64, i8* }* %3156)
  %3158 = icmp slt i64 %3155, %3157
  br i1 %3158, label %while_body563, label %while_end564
while_body563:
  call void @llvm.stackrestore(i8* %3154)
  %3159 = load { i64, i8* }*, { i64, i8* }** %3018
  %3160 = load i64, i64* %3153
  %3161 = call i64 @nyx_array_get_checked({ i64, i8* }* %3159, i64 %3160, i64 2)
  %3162 = inttoptr i64 %3161 to %nyx_string*
  %3163 = alloca %nyx_string*
  store %nyx_string* %3162, %nyx_string** %3163
  %3164 = load %nyx_string*, %nyx_string** %3163
  %3165 = call i8* @nyx_string_to_cstr(%nyx_string* %3164)
  call void @nyx_print_string(i8* %3165)
  %3166 = load i64, i64* %3153
  %3167 = add i64 %3166, 1
  store i64 %3167, i64* %3153
  br label %while_cond562
while_end564:
  %3168 = load i64, i64* %2921
  %3169 = load i64, i64* %3014
  %3170 = add i64 %3168, %3169
  store i64 %3170, i64* %2921
  %3171 = load i64, i64* %2922
  %3172 = load i64, i64* %3015
  %3173 = add i64 %3171, %3172
  store i64 %3173, i64* %2922
  %3174 = load %nyx_string*, %nyx_string** %2920
  %3175 = load %nyx_string*, %nyx_string** %2983
  %3176 = call %nyx_string* @nyx_string_concat(%nyx_string* %3174, %nyx_string* %3175)
  %3177 = load %nyx_string*, %nyx_string** %3009
  %3178 = call %nyx_string* @nyx_string_concat(%nyx_string* %3176, %nyx_string* %3177)
  %3179 = load %nyx_string*, %nyx_string** %2956
  %3180 = call %nyx_string* @nyx_string_concat(%nyx_string* %3178, %nyx_string* %3179)
  %3181 = load %nyx_string*, %nyx_string** %3020
  %3182 = call %nyx_string* @nyx_string_concat(%nyx_string* %3180, %nyx_string* %3181)
  %3183 = load %nyx_string*, %nyx_string** %3022
  %3184 = call %nyx_string* @nyx_string_concat(%nyx_string* %3182, %nyx_string* %3183)
  %3185 = load %nyx_string*, %nyx_string** %2986
  %3186 = call %nyx_string* @nyx_string_concat(%nyx_string* %3184, %nyx_string* %3185)
  %3187 = load i64, i64* %3015
  %3188 = call %nyx_string* @nyx_string_from_int(i64 %3187)
  %3189 = call %nyx_string* @nyx_string_concat(%nyx_string* %3186, %nyx_string* %3188)
  %3190 = load %nyx_string*, %nyx_string** %2989
  %3191 = call %nyx_string* @nyx_string_concat(%nyx_string* %3189, %nyx_string* %3190)
  %3192 = load i64, i64* %3014
  %3193 = call %nyx_string* @nyx_string_from_int(i64 %3192)
  %3194 = call %nyx_string* @nyx_string_concat(%nyx_string* %3191, %nyx_string* %3193)
  %3195 = load %nyx_string*, %nyx_string** %2992
  %3196 = call %nyx_string* @nyx_string_concat(%nyx_string* %3194, %nyx_string* %3195)
  store %nyx_string* %3196, %nyx_string** %2920
  %3197 = load i64, i64* %3024
  store i64 %3197, i64* %2923
  br label %while_cond539
while_end541:
  %3198 = load { i64, i8* }*, { i64, i8* }** %2466
  %3199 = call i64 @nyx_array_length({ i64, i8* }* %3198)
  %3200 = icmp sgt i64 %3199, 0
  br i1 %3200, label %then565, label %else566
then565:
  %3201 = getelementptr [70 x i8], [70 x i8]* @.str314, i32 0, i32 0
  %3202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3201, i64 69)
  %3203 = call i8* @nyx_string_to_cstr(%nyx_string* %3202)
  call void @nyx_print_string(i8* %3203)
  %3204 = alloca i64
  store i64 0, i64* %3204
  %3205 = getelementptr [5 x i8], [5 x i8]* @.str315, i32 0, i32 0
  %3206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3205, i64 4)
  %3207 = alloca %nyx_string*
  store %nyx_string* %3206, %nyx_string** %3207
  %3208 = call i8* @llvm.stacksave()
  br label %while_cond568
while_cond568:
  %3209 = load i64, i64* %3204
  %3210 = load { i64, i8* }*, { i64, i8* }** %2466
  %3211 = call i64 @nyx_array_length({ i64, i8* }* %3210)
  %3212 = icmp slt i64 %3209, %3211
  br i1 %3212, label %while_body569, label %while_end570
while_body569:
  call void @llvm.stackrestore(i8* %3208)
  %3213 = load { i64, i8* }*, { i64, i8* }** %2466
  %3214 = load i64, i64* %3204
  %3215 = call i64 @nyx_array_get_checked({ i64, i8* }* %3213, i64 %3214, i64 2)
  %3216 = inttoptr i64 %3215 to %nyx_string*
  %3217 = alloca %nyx_string*
  store %nyx_string* %3216, %nyx_string** %3217
  %3218 = load %nyx_string*, %nyx_string** %3207
  %3219 = load %nyx_string*, %nyx_string** %3217
  %3220 = call %nyx_string* @nyx_string_concat(%nyx_string* %3218, %nyx_string* %3219)
  %3221 = call i8* @nyx_string_to_cstr(%nyx_string* %3220)
  call void @nyx_print_string(i8* %3221)
  %3222 = load i64, i64* %3204
  %3223 = add i64 %3222, 1
  store i64 %3223, i64* %3204
  br label %while_cond568
while_end570:
  br label %merge567
else566:
  br label %merge567
merge567:
  %3224 = getelementptr [10 x i8], [10 x i8]* @.str316, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3224, i64 9)
  %3226 = load i64, i64* %2921
  %3227 = call %nyx_string* @nyx_string_from_int(i64 %3226)
  %3228 = call %nyx_string* @nyx_string_concat(%nyx_string* %3225, %nyx_string* %3227)
  %3229 = getelementptr [2 x i8], [2 x i8]* @.str317, i32 0, i32 0
  %3230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3229, i64 1)
  %3231 = call %nyx_string* @nyx_string_concat(%nyx_string* %3228, %nyx_string* %3230)
  %3232 = load i64, i64* %2922
  %3233 = call %nyx_string* @nyx_string_from_int(i64 %3232)
  %3234 = call %nyx_string* @nyx_string_concat(%nyx_string* %3231, %nyx_string* %3233)
  %3235 = getelementptr [20 x i8], [20 x i8]* @.str318, i32 0, i32 0
  %3236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3235, i64 19)
  %3237 = call %nyx_string* @nyx_string_concat(%nyx_string* %3234, %nyx_string* %3236)
  %3238 = call i8* @nyx_string_to_cstr(%nyx_string* %3237)
  call void @nyx_print_string(i8* %3238)
  %3239 = load i1, i1* %want_lcov.ptr
  br i1 %3239, label %then571, label %else572
then571:
  %3240 = getelementptr [11 x i8], [11 x i8]* @.str319, i32 0, i32 0
  %3241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3240, i64 10)
  %3242 = load %nyx_string*, %nyx_string** %2452
  %3243 = call %nyx_string* @nyx_string_concat(%nyx_string* %3241, %nyx_string* %3242)
  %3244 = getelementptr [9 x i8], [9 x i8]* @.str320, i32 0, i32 0
  %3245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3244, i64 8)
  %3246 = call %nyx_string* @nyx_string_concat(%nyx_string* %3243, %nyx_string* %3245)
  %3247 = call i8* @nyx_string_to_cstr(%nyx_string* %3246)
  %3248 = call i64 @nyx_exec_code(i8* %3247)
  %3249 = load %nyx_string*, %nyx_string** %2452
  %3250 = getelementptr [22 x i8], [22 x i8]* @.str321, i32 0, i32 0
  %3251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3250, i64 21)
  %3252 = call %nyx_string* @nyx_string_concat(%nyx_string* %3249, %nyx_string* %3251)
  %3253 = load %nyx_string*, %nyx_string** %2920
  %3254 = ptrtoint %nyx_string* %3253 to i64
  %3255 = call i8* @nyx_string_to_cstr(%nyx_string* %3252)
  %3256 = inttoptr i64 %3254 to %nyx_string*
  %3257 = call i1 @nyx_write_file_safe(i8* %3255, %nyx_string* %3256)
  %3258 = getelementptr [29 x i8], [29 x i8]* @.str322, i32 0, i32 0
  %3259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3258, i64 28)
  %3260 = call i8* @nyx_string_to_cstr(%nyx_string* %3259)
  call void @nyx_print_string(i8* %3260)
  br label %merge573
else572:
  br label %merge573
merge573:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3261 = getelementptr [115 x i8], [115 x i8]* @.str323, i32 0, i32 0
  %3262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3261, i64 114)
  %3263 = call i8* @nyx_string_to_cstr(%nyx_string* %3262)
  call void @nyx_print_string(i8* %3263)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3264 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %3265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3264, i64 4)
  %3266 = load %nyx_string*, %nyx_string** %nh.ptr
  %3267 = call %nyx_string* @nyx_string_concat(%nyx_string* %3265, %nyx_string* %3266)
  %3268 = getelementptr [66 x i8], [66 x i8]* @.str325, i32 0, i32 0
  %3269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3268, i64 65)
  %3270 = call %nyx_string* @nyx_string_concat(%nyx_string* %3267, %nyx_string* %3269)
  %3271 = call i8* @nyx_string_to_cstr(%nyx_string* %3270)
  %3272 = call %nyx_string* @nyx_exec(i8* %3271)
  %3273 = call %nyx_string* @nyx_string_trim(%nyx_string* %3272)
  ret %nyx_string* %3273
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3274 = getelementptr [5 x i8], [5 x i8]* @.str326, i32 0, i32 0
  %3275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3274, i64 4)
  %3276 = load %nyx_string*, %nyx_string** %nh.ptr
  %3277 = call %nyx_string* @nyx_string_concat(%nyx_string* %3275, %nyx_string* %3276)
  %3278 = getelementptr [74 x i8], [74 x i8]* @.str327, i32 0, i32 0
  %3279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3278, i64 73)
  %3280 = call %nyx_string* @nyx_string_concat(%nyx_string* %3277, %nyx_string* %3279)
  %3281 = call i8* @nyx_string_to_cstr(%nyx_string* %3280)
  %3282 = call %nyx_string* @nyx_exec(i8* %3281)
  %3283 = call %nyx_string* @nyx_string_trim(%nyx_string* %3282)
  ret %nyx_string* %3283
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3284 = getelementptr [24 x i8], [24 x i8]* @.str328, i32 0, i32 0
  %3285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3284, i64 23)
  %3286 = call i8* @nyx_string_to_cstr(%nyx_string* %3285)
  call void @nyx_print_string(i8* %3286)
  %3287 = getelementptr [9 x i8], [9 x i8]* @.str329, i32 0, i32 0
  %3288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3287, i64 8)
  %3289 = call i8* @nyx_string_to_cstr(%nyx_string* %3288)
  %3290 = call %nyx_string* @nyx_getenv(i8* %3289)
  %3291 = alloca %nyx_string*
  store %nyx_string* %3290, %nyx_string** %3291
  %3292 = load %nyx_string*, %nyx_string** %3291
  %3293 = getelementptr [9 x i8], [9 x i8]* @.str330, i32 0, i32 0
  %3294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3293, i64 8)
  %3295 = call %nyx_string* @nyx_string_concat(%nyx_string* %3292, %nyx_string* %3294)
  %3296 = call i8* @nyx_string_to_cstr(%nyx_string* %3295)
  %3297 = call %nyx_string* @nyx_read_file(i8* %3296)
  %3298 = call %nyx_string* @nyx_string_trim(%nyx_string* %3297)
  %3299 = alloca %nyx_string*
  store %nyx_string* %3298, %nyx_string** %3299
  %3300 = load %nyx_string*, %nyx_string** %3291
  %3301 = call %nyx_string* @huella_compilador(%nyx_string* %3300)
  %3302 = alloca %nyx_string*
  store %nyx_string* %3301, %nyx_string** %3302
  %3303 = load %nyx_string*, %nyx_string** %3291
  %3304 = call %nyx_string* @huella_resto(%nyx_string* %3303)
  %3305 = alloca %nyx_string*
  store %nyx_string* %3304, %nyx_string** %3305
  %3306 = getelementptr [18 x i8], [18 x i8]* @.str331, i32 0, i32 0
  %3307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3306, i64 17)
  %3308 = load %nyx_string*, %nyx_string** %3299
  %3309 = call %nyx_string* @nyx_string_concat(%nyx_string* %3307, %nyx_string* %3308)
  %3310 = getelementptr [17 x i8], [17 x i8]* @.str332, i32 0, i32 0
  %3311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3310, i64 16)
  %3312 = call %nyx_string* @nyx_string_concat(%nyx_string* %3309, %nyx_string* %3311)
  %3313 = load %nyx_string*, %nyx_string** %3302
  %3314 = call %nyx_string* @nyx_string_concat(%nyx_string* %3312, %nyx_string* %3313)
  %3315 = getelementptr [2 x i8], [2 x i8]* @.str333, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3315, i64 1)
  %3317 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3316)
  %3318 = call i8* @nyx_string_to_cstr(%nyx_string* %3317)
  call void @nyx_print_string(i8* %3318)
  %3319 = call %TestConfig @load_test_config()
  %3320 = alloca %TestConfig
  store %TestConfig %3319, %TestConfig* %3320
  %3321 = call { i64, i8* }* @nyx_get_args()
  %3322 = alloca { i64, i8* }*
  store { i64, i8* }* %3321, { i64, i8* }** %3322
  %3323 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %3324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3323, i64 0)
  %3325 = alloca %nyx_string*
  store %nyx_string* %3324, %nyx_string** %3325
  %3326 = alloca i64
  store i64 1, i64* %3326
  %3327 = getelementptr [9 x i8], [9 x i8]* @.str335, i32 0, i32 0
  %3328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3327, i64 8)
  %3329 = alloca %nyx_string*
  store %nyx_string* %3328, %nyx_string** %3329
  %3330 = getelementptr [10 x i8], [10 x i8]* @.str336, i32 0, i32 0
  %3331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3330, i64 9)
  %3332 = alloca %nyx_string*
  store %nyx_string* %3331, %nyx_string** %3332
  %3333 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %3334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3333, i64 2)
  %3335 = alloca %nyx_string*
  store %nyx_string* %3334, %nyx_string** %3335
  %3336 = getelementptr [10 x i8], [10 x i8]* @.str338, i32 0, i32 0
  %3337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3336, i64 9)
  %3338 = alloca %nyx_string*
  store %nyx_string* %3337, %nyx_string** %3338
  %3339 = getelementptr [10 x i8], [10 x i8]* @.str339, i32 0, i32 0
  %3340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3339, i64 9)
  %3341 = alloca %nyx_string*
  store %nyx_string* %3340, %nyx_string** %3341
  %3342 = getelementptr [11 x i8], [11 x i8]* @.str340, i32 0, i32 0
  %3343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3342, i64 10)
  %3344 = alloca %nyx_string*
  store %nyx_string* %3343, %nyx_string** %3344
  %3345 = getelementptr [16 x i8], [16 x i8]* @.str341, i32 0, i32 0
  %3346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3345, i64 15)
  %3347 = alloca %nyx_string*
  store %nyx_string* %3346, %nyx_string** %3347
  %3348 = getelementptr [8 x i8], [8 x i8]* @.str342, i32 0, i32 0
  %3349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3348, i64 7)
  %3350 = alloca %nyx_string*
  store %nyx_string* %3349, %nyx_string** %3350
  %3351 = getelementptr [12 x i8], [12 x i8]* @.str343, i32 0, i32 0
  %3352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3351, i64 11)
  %3353 = alloca %nyx_string*
  store %nyx_string* %3352, %nyx_string** %3353
  %3354 = getelementptr [24 x i8], [24 x i8]* @.str344, i32 0, i32 0
  %3355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3354, i64 23)
  %3356 = alloca %nyx_string*
  store %nyx_string* %3355, %nyx_string** %3356
  %3357 = getelementptr [106 x i8], [106 x i8]* @.str345, i32 0, i32 0
  %3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3357, i64 105)
  %3359 = alloca %nyx_string*
  store %nyx_string* %3358, %nyx_string** %3359
  %3360 = getelementptr [9 x i8], [9 x i8]* @.str346, i32 0, i32 0
  %3361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3360, i64 8)
  %3362 = alloca %nyx_string*
  store %nyx_string* %3361, %nyx_string** %3362
  %3363 = getelementptr [10 x i8], [10 x i8]* @.str347, i32 0, i32 0
  %3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3363, i64 9)
  %3365 = alloca %nyx_string*
  store %nyx_string* %3364, %nyx_string** %3365
  %3366 = getelementptr [2 x i8], [2 x i8]* @.str348, i32 0, i32 0
  %3367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3366, i64 1)
  %3368 = alloca %nyx_string*
  store %nyx_string* %3367, %nyx_string** %3368
  %3369 = getelementptr [4 x i8], [4 x i8]* @.str349, i32 0, i32 0
  %3370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3369, i64 3)
  %3371 = alloca %nyx_string*
  store %nyx_string* %3370, %nyx_string** %3371
  %3372 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %3373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3372, i64 1)
  %3374 = alloca %nyx_string*
  store %nyx_string* %3373, %nyx_string** %3374
  %3375 = call i8* @llvm.stacksave()
  br label %while_cond574
while_cond574:
  %3376 = load i64, i64* %3326
  %3377 = load { i64, i8* }*, { i64, i8* }** %3322
  %3378 = call i64 @nyx_array_length({ i64, i8* }* %3377)
  %3379 = icmp slt i64 %3376, %3378
  br i1 %3379, label %while_body575, label %while_end576
while_body575:
  call void @llvm.stackrestore(i8* %3375)
  %3380 = load { i64, i8* }*, { i64, i8* }** %3322
  %3381 = load i64, i64* %3326
  %3382 = call i64 @nyx_array_get_checked({ i64, i8* }* %3380, i64 %3381, i64 2)
  %3383 = inttoptr i64 %3382 to %nyx_string*
  %3384 = alloca %nyx_string*
  store %nyx_string* %3383, %nyx_string** %3384
  %3385 = alloca i1
  store i1 false, i1* %3385
  %3386 = load %nyx_string*, %nyx_string** %3384
  %3387 = load %nyx_string*, %nyx_string** %3329
  %3388 = call i1 @nyx_string_equals(%nyx_string* %3386, %nyx_string* %3387)
  br i1 %3388, label %sc_and_rhs577, label %sc_and_end578
sc_and_rhs577:
  %3389 = load i64, i64* %3326
  %3390 = add i64 %3389, 1
  %3391 = load { i64, i8* }*, { i64, i8* }** %3322
  %3392 = call i64 @nyx_array_length({ i64, i8* }* %3391)
  %3393 = icmp slt i64 %3390, %3392
  store i1 %3393, i1* %3385
  br label %sc_and_end578
sc_and_end578:
  %3394 = load i1, i1* %3385
  br i1 %3394, label %then579, label %else580
then579:
  %3395 = load i64, i64* %3326
  %3396 = add i64 %3395, 1
  store i64 %3396, i64* %3326
  %3397 = load { i64, i8* }*, { i64, i8* }** %3322
  %3398 = load i64, i64* %3326
  %3399 = call i64 @nyx_array_get_checked({ i64, i8* }* %3397, i64 %3398, i64 2)
  %3400 = inttoptr i64 %3399 to %nyx_string*
  %3401 = alloca %nyx_string*
  store %nyx_string* %3400, %nyx_string** %3401
  %3402 = load %nyx_string*, %nyx_string** %3401
  %3403 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 2
  store %nyx_string* %3402, %nyx_string** %3403
  br label %merge581
else580:
  %3404 = alloca i1
  store i1 true, i1* %3404
  %3405 = load %nyx_string*, %nyx_string** %3384
  %3406 = load %nyx_string*, %nyx_string** %3332
  %3407 = call i1 @nyx_string_equals(%nyx_string* %3405, %nyx_string* %3406)
  br i1 %3407, label %sc_or_end583, label %sc_or_rhs582
sc_or_rhs582:
  %3408 = load %nyx_string*, %nyx_string** %3384
  %3409 = load %nyx_string*, %nyx_string** %3335
  %3410 = call i1 @nyx_string_equals(%nyx_string* %3408, %nyx_string* %3409)
  store i1 %3410, i1* %3404
  br label %sc_or_end583
sc_or_end583:
  %3411 = load i1, i1* %3404
  br i1 %3411, label %then584, label %else585
then584:
  %3412 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 3
  store i1 1, i1* %3412
  br label %merge586
else585:
  %3413 = alloca i1
  store i1 false, i1* %3413
  %3414 = load %nyx_string*, %nyx_string** %3384
  %3415 = load %nyx_string*, %nyx_string** %3338
  %3416 = call i1 @nyx_string_equals(%nyx_string* %3414, %nyx_string* %3415)
  br i1 %3416, label %sc_and_rhs587, label %sc_and_end588
sc_and_rhs587:
  %3417 = load i64, i64* %3326
  %3418 = add i64 %3417, 1
  %3419 = load { i64, i8* }*, { i64, i8* }** %3322
  %3420 = call i64 @nyx_array_length({ i64, i8* }* %3419)
  %3421 = icmp slt i64 %3418, %3420
  store i1 %3421, i1* %3413
  br label %sc_and_end588
sc_and_end588:
  %3422 = load i1, i1* %3413
  br i1 %3422, label %then589, label %else590
then589:
  %3423 = load i64, i64* %3326
  %3424 = add i64 %3423, 1
  store i64 %3424, i64* %3326
  %3425 = load { i64, i8* }*, { i64, i8* }** %3322
  %3426 = load i64, i64* %3326
  %3427 = call i64 @nyx_array_get_checked({ i64, i8* }* %3425, i64 %3426, i64 2)
  %3428 = inttoptr i64 %3427 to %nyx_string*
  %3429 = alloca %nyx_string*
  store %nyx_string* %3428, %nyx_string** %3429
  %3430 = load %nyx_string*, %nyx_string** %3429
  %3431 = call i64 @nyx_string_to_int(%nyx_string* %3430)
  %3432 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 1
  store i64 %3431, i64* %3432
  br label %merge591
else590:
  %3433 = load %nyx_string*, %nyx_string** %3384
  %3434 = load %nyx_string*, %nyx_string** %3341
  %3435 = call i1 @nyx_string_equals(%nyx_string* %3433, %nyx_string* %3434)
  br i1 %3435, label %then592, label %else593
then592:
  %3436 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 7
  store i1 1, i1* %3436
  br label %merge594
else593:
  %3437 = load %nyx_string*, %nyx_string** %3384
  %3438 = load %nyx_string*, %nyx_string** %3344
  %3439 = call i1 @nyx_string_equals(%nyx_string* %3437, %nyx_string* %3438)
  br i1 %3439, label %then595, label %else596
then595:
  %3440 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 5
  store i1 1, i1* %3440
  br label %merge597
else596:
  %3441 = load %nyx_string*, %nyx_string** %3384
  %3442 = load %nyx_string*, %nyx_string** %3347
  %3443 = call i1 @nyx_string_equals(%nyx_string* %3441, %nyx_string* %3442)
  br i1 %3443, label %then598, label %else599
then598:
  %3444 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 5
  store i1 1, i1* %3444
  %3445 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 6
  store i1 1, i1* %3445
  br label %merge600
else599:
  %3446 = alloca i1
  store i1 true, i1* %3446
  %3447 = load %nyx_string*, %nyx_string** %3384
  %3448 = load %nyx_string*, %nyx_string** %3350
  %3449 = call i1 @nyx_string_equals(%nyx_string* %3447, %nyx_string* %3448)
  br i1 %3449, label %sc_or_end602, label %sc_or_rhs601
sc_or_rhs601:
  %3450 = load %nyx_string*, %nyx_string** %3384
  %3451 = load %nyx_string*, %nyx_string** %3353
  %3452 = call i1 @nyx_string_starts_with(%nyx_string* %3450, %nyx_string* %3451)
  store i1 %3452, i1* %3446
  br label %sc_or_end602
sc_or_end602:
  %3453 = load i1, i1* %3446
  br i1 %3453, label %then603, label %else604
then603:
  %3454 = load %nyx_string*, %nyx_string** %3356
  %3455 = load %nyx_string*, %nyx_string** %3384
  %3456 = call %nyx_string* @nyx_string_concat(%nyx_string* %3454, %nyx_string* %3455)
  %3457 = call i8* @nyx_string_to_cstr(%nyx_string* %3456)
  call void @nyx_print_string(i8* %3457)
  %3458 = load %nyx_string*, %nyx_string** %3359
  %3459 = call i8* @nyx_string_to_cstr(%nyx_string* %3458)
  call void @nyx_print_string(i8* %3459)
  %3460 = call i64 @print_valid_options()
  ret i64 1
else604:
  %3461 = alloca i1
  store i1 true, i1* %3461
  %3462 = load %nyx_string*, %nyx_string** %3384
  %3463 = load %nyx_string*, %nyx_string** %3362
  %3464 = call i1 @nyx_string_equals(%nyx_string* %3462, %nyx_string* %3463)
  br i1 %3464, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3465 = load %nyx_string*, %nyx_string** %3384
  %3466 = load %nyx_string*, %nyx_string** %3365
  %3467 = call i1 @nyx_string_starts_with(%nyx_string* %3465, %nyx_string* %3466)
  store i1 %3467, i1* %3461
  br label %sc_or_end607
sc_or_end607:
  %3468 = load i1, i1* %3461
  br i1 %3468, label %then608, label %else609
then608:
  %3469 = load %nyx_string*, %nyx_string** %3384
  store %nyx_string* %3469, %nyx_string** %3325
  %3470 = alloca i1
  store i1 false, i1* %3470
  %3471 = load %nyx_string*, %nyx_string** %3384
  %3472 = load %nyx_string*, %nyx_string** %3362
  %3473 = call i1 @nyx_string_equals(%nyx_string* %3471, %nyx_string* %3472)
  br i1 %3473, label %sc_and_rhs611, label %sc_and_end612
sc_and_rhs611:
  %3474 = load i64, i64* %3326
  %3475 = add i64 %3474, 1
  %3476 = load { i64, i8* }*, { i64, i8* }** %3322
  %3477 = call i64 @nyx_array_length({ i64, i8* }* %3476)
  %3478 = icmp slt i64 %3475, %3477
  store i1 %3478, i1* %3470
  br label %sc_and_end612
sc_and_end612:
  %3479 = load i1, i1* %3470
  br i1 %3479, label %then613, label %else614
then613:
  %3480 = load i64, i64* %3326
  %3481 = add i64 %3480, 1
  store i64 %3481, i64* %3326
  %3482 = load { i64, i8* }*, { i64, i8* }** %3322
  %3483 = load i64, i64* %3326
  %3484 = call i64 @nyx_array_get_checked({ i64, i8* }* %3482, i64 %3483, i64 2)
  %3485 = inttoptr i64 %3484 to %nyx_string*
  %3486 = alloca %nyx_string*
  store %nyx_string* %3485, %nyx_string** %3486
  %3487 = load %nyx_string*, %nyx_string** %3384
  %3488 = load %nyx_string*, %nyx_string** %3368
  %3489 = call %nyx_string* @nyx_string_concat(%nyx_string* %3487, %nyx_string* %3488)
  %3490 = load %nyx_string*, %nyx_string** %3486
  %3491 = call %nyx_string* @nyx_string_concat(%nyx_string* %3489, %nyx_string* %3490)
  store %nyx_string* %3491, %nyx_string** %3325
  br label %merge615
else614:
  br label %merge615
merge615:
  br label %merge610
else609:
  %3492 = alloca i1
  store i1 true, i1* %3492
  %3493 = load %nyx_string*, %nyx_string** %3384
  %3494 = load %nyx_string*, %nyx_string** %3329
  %3495 = call i1 @nyx_string_equals(%nyx_string* %3493, %nyx_string* %3494)
  br i1 %3495, label %sc_or_end617, label %sc_or_rhs616
sc_or_rhs616:
  %3496 = load %nyx_string*, %nyx_string** %3384
  %3497 = load %nyx_string*, %nyx_string** %3338
  %3498 = call i1 @nyx_string_equals(%nyx_string* %3496, %nyx_string* %3497)
  store i1 %3498, i1* %3492
  br label %sc_or_end617
sc_or_end617:
  %3499 = load i1, i1* %3492
  br i1 %3499, label %then618, label %else619
then618:
  br label %merge620
else619:
  %3500 = load %nyx_string*, %nyx_string** %3384
  %3501 = load %nyx_string*, %nyx_string** %3371
  %3502 = call i1 @nyx_string_ends_with(%nyx_string* %3500, %nyx_string* %3501)
  br i1 %3502, label %then621, label %else622
then621:
  %3503 = load %nyx_string*, %nyx_string** %3384
  %3504 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 4
  store %nyx_string* %3503, %nyx_string** %3504
  br label %merge623
else622:
  %3505 = load %nyx_string*, %nyx_string** %3384
  %3506 = load %nyx_string*, %nyx_string** %3374
  %3507 = call i1 @nyx_string_starts_with(%nyx_string* %3505, %nyx_string* %3506)
  br i1 %3507, label %then624, label %else625
then624:
  %3508 = load %nyx_string*, %nyx_string** %3356
  %3509 = load %nyx_string*, %nyx_string** %3384
  %3510 = call %nyx_string* @nyx_string_concat(%nyx_string* %3508, %nyx_string* %3509)
  %3511 = call i8* @nyx_string_to_cstr(%nyx_string* %3510)
  call void @nyx_print_string(i8* %3511)
  %3512 = call i64 @print_valid_options()
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
  %3513 = load i64, i64* %3326
  %3514 = add i64 %3513, 1
  store i64 %3514, i64* %3326
  br label %while_cond574
while_end576:
  %3515 = load %nyx_string*, %nyx_string** %3325
  %3516 = getelementptr [1 x i8], [1 x i8]* @.str351, i32 0, i32 0
  %3517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3516, i64 0)
  %3518 = call i1 @nyx_string_equals(%nyx_string* %3515, %nyx_string* %3517)
  %3519 = xor i1 %3518, true
  br i1 %3519, label %then627, label %else628
then627:
  %3520 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 5
  %3521 = load i1, i1* %3520
  br i1 %3521, label %then630, label %else631
then630:
  %3522 = getelementptr [47 x i8], [47 x i8]* @.str352, i32 0, i32 0
  %3523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3522, i64 46)
  %3524 = load %nyx_string*, %nyx_string** %3325
  %3525 = call %nyx_string* @nyx_string_concat(%nyx_string* %3523, %nyx_string* %3524)
  %3526 = getelementptr [58 x i8], [58 x i8]* @.str353, i32 0, i32 0
  %3527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3526, i64 57)
  %3528 = call %nyx_string* @nyx_string_concat(%nyx_string* %3525, %nyx_string* %3527)
  %3529 = call i8* @nyx_string_to_cstr(%nyx_string* %3528)
  call void @nyx_print_string(i8* %3529)
  br label %merge632
else631:
  %3530 = getelementptr [24 x i8], [24 x i8]* @.str354, i32 0, i32 0
  %3531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3530, i64 23)
  %3532 = load %nyx_string*, %nyx_string** %3325
  %3533 = call %nyx_string* @nyx_string_concat(%nyx_string* %3531, %nyx_string* %3532)
  %3534 = call i8* @nyx_string_to_cstr(%nyx_string* %3533)
  call void @nyx_print_string(i8* %3534)
  br label %merge632
merge632:
  %3535 = call i64 @print_valid_options()
  ret i64 1
else628:
  br label %merge629
merge629:
  %3536 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %3537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3536, i64 0)
  %3538 = alloca %nyx_string*
  store %nyx_string* %3537, %nyx_string** %3538
  %3539 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %3540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3539, i64 0)
  %3541 = alloca %nyx_string*
  store %nyx_string* %3540, %nyx_string** %3541
  %3542 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 5
  %3543 = load i1, i1* %3542
  br i1 %3543, label %then633, label %else634
then633:
  %3544 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3544, %nyx_string** %3538
  %3545 = load %nyx_string*, %nyx_string** %3538
  %3546 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %3547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3546, i64 0)
  %3548 = call i1 @nyx_string_equals(%nyx_string* %3545, %nyx_string* %3547)
  br i1 %3548, label %then636, label %else637
then636:
  %3549 = call %nyx_string* @cov_clang_major()
  %3550 = alloca %nyx_string*
  store %nyx_string* %3549, %nyx_string** %3550
  %3551 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %3552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3551, i64 4)
  %3553 = alloca %nyx_string*
  store %nyx_string* %3552, %nyx_string** %3553
  %3554 = load %nyx_string*, %nyx_string** %3550
  %3555 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %3556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3555, i64 0)
  %3557 = call i1 @nyx_string_equals(%nyx_string* %3554, %nyx_string* %3556)
  %3558 = xor i1 %3557, true
  br i1 %3558, label %then639, label %else640
then639:
  %3559 = getelementptr [6 x i8], [6 x i8]* @.str360, i32 0, i32 0
  %3560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3559, i64 5)
  %3561 = load %nyx_string*, %nyx_string** %3550
  %3562 = call %nyx_string* @nyx_string_concat(%nyx_string* %3560, %nyx_string* %3561)
  store %nyx_string* %3562, %nyx_string** %3553
  br label %merge641
else640:
  br label %merge641
merge641:
  %3563 = getelementptr [101 x i8], [101 x i8]* @.str361, i32 0, i32 0
  %3564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3563, i64 100)
  %3565 = call i8* @nyx_string_to_cstr(%nyx_string* %3564)
  call void @nyx_print_string(i8* %3565)
  %3566 = getelementptr [35 x i8], [35 x i8]* @.str362, i32 0, i32 0
  %3567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3566, i64 34)
  %3568 = load %nyx_string*, %nyx_string** %3553
  %3569 = call %nyx_string* @nyx_string_concat(%nyx_string* %3567, %nyx_string* %3568)
  %3570 = call i8* @nyx_string_to_cstr(%nyx_string* %3569)
  call void @nyx_print_string(i8* %3570)
  %3571 = getelementptr [82 x i8], [82 x i8]* @.str363, i32 0, i32 0
  %3572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3571, i64 81)
  %3573 = call i8* @nyx_string_to_cstr(%nyx_string* %3572)
  call void @nyx_print_string(i8* %3573)
  %3574 = getelementptr [82 x i8], [82 x i8]* @.str364, i32 0, i32 0
  %3575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3574, i64 81)
  %3576 = call i8* @nyx_string_to_cstr(%nyx_string* %3575)
  call void @nyx_print_string(i8* %3576)
  ret i64 1
else637:
  br label %merge638
merge638:
  %3577 = getelementptr [30 x i8], [30 x i8]* @.str365, i32 0, i32 0
  %3578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3577, i64 29)
  %3579 = call i8* @nyx_string_to_cstr(%nyx_string* %3578)
  %3580 = call %nyx_string* @nyx_exec(i8* %3579)
  %3581 = call %nyx_string* @nyx_string_trim(%nyx_string* %3580)
  store %nyx_string* %3581, %nyx_string** %3541
  %3582 = load %nyx_string*, %nyx_string** %3541
  %3583 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %3584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3583, i64 0)
  %3585 = call i1 @nyx_string_equals(%nyx_string* %3582, %nyx_string* %3584)
  br i1 %3585, label %then642, label %else643
then642:
  %3586 = getelementptr [55 x i8], [55 x i8]* @.str367, i32 0, i32 0
  %3587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3586, i64 54)
  %3588 = call i8* @nyx_string_to_cstr(%nyx_string* %3587)
  call void @nyx_print_string(i8* %3588)
  ret i64 1
else643:
  br label %merge644
merge644:
  br label %merge635
else634:
  br label %merge635
merge635:
  %3589 = call { i64, i8* }* @nyx_array_new_ptr()
  %3590 = alloca { i64, i8* }*
  store { i64, i8* }* %3589, { i64, i8* }** %3590
  %3591 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 4
  %3592 = load %nyx_string*, %nyx_string** %3591
  %3593 = getelementptr [1 x i8], [1 x i8]* @.str368, i32 0, i32 0
  %3594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3593, i64 0)
  %3595 = call i1 @nyx_string_equals(%nyx_string* %3592, %nyx_string* %3594)
  %3596 = xor i1 %3595, true
  br i1 %3596, label %then645, label %else646
then645:
  %3597 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 4
  %3598 = load %nyx_string*, %nyx_string** %3597
  %3599 = call i8* @nyx_string_to_cstr(%nyx_string* %3598)
  %3600 = call i1 @nyx_file_exists(i8* %3599)
  %3601 = xor i1 %3600, true
  br i1 %3601, label %then648, label %else649
then648:
  %3602 = getelementptr [24 x i8], [24 x i8]* @.str369, i32 0, i32 0
  %3603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3602, i64 23)
  %3604 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 4
  %3605 = load %nyx_string*, %nyx_string** %3604
  %3606 = call %nyx_string* @nyx_string_concat(%nyx_string* %3603, %nyx_string* %3605)
  %3607 = call i8* @nyx_string_to_cstr(%nyx_string* %3606)
  call void @nyx_print_string(i8* %3607)
  ret i64 1
else649:
  br label %merge650
merge650:
  %3608 = load { i64, i8* }*, { i64, i8* }** %3590
  %3609 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 4
  %3610 = load %nyx_string*, %nyx_string** %3609
  %3611 = ptrtoint %nyx_string* %3610 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3608, i64 %3611, i64 2)
  br label %merge647
else646:
  %3612 = load %TestConfig, %TestConfig* %3320
  %3613 = call { i64, i8* }* @discover_tests(%TestConfig %3612)
  store { i64, i8* }* %3613, { i64, i8* }** %3590
  br label %merge647
merge647:
  %3614 = load { i64, i8* }*, { i64, i8* }** %3590
  %3615 = call i64 @nyx_array_length({ i64, i8* }* %3614)
  %3616 = icmp eq i64 %3615, 0
  br i1 %3616, label %then651, label %else652
then651:
  %3617 = getelementptr [23 x i8], [23 x i8]* @.str370, i32 0, i32 0
  %3618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3617, i64 22)
  %3619 = call i8* @nyx_string_to_cstr(%nyx_string* %3618)
  call void @nyx_print_string(i8* %3619)
  %3620 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 2
  %3621 = load %nyx_string*, %nyx_string** %3620
  %3622 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %3623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3622, i64 0)
  %3624 = call i1 @nyx_string_equals(%nyx_string* %3621, %nyx_string* %3623)
  %3625 = xor i1 %3624, true
  br i1 %3625, label %then654, label %else655
then654:
  %3626 = getelementptr [12 x i8], [12 x i8]* @.str372, i32 0, i32 0
  %3627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3626, i64 11)
  %3628 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 2
  %3629 = load %nyx_string*, %nyx_string** %3628
  %3630 = call %nyx_string* @nyx_string_concat(%nyx_string* %3627, %nyx_string* %3629)
  %3631 = getelementptr [2 x i8], [2 x i8]* @.str373, i32 0, i32 0
  %3632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3631, i64 1)
  %3633 = call %nyx_string* @nyx_string_concat(%nyx_string* %3630, %nyx_string* %3632)
  %3634 = call i8* @nyx_string_to_cstr(%nyx_string* %3633)
  call void @nyx_print_string(i8* %3634)
  br label %merge656
else655:
  br label %merge656
merge656:
  %3635 = getelementptr [14 x i8], [14 x i8]* @.str374, i32 0, i32 0
  %3636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3635, i64 13)
  %3637 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 0
  %3638 = load %nyx_string*, %nyx_string** %3637
  %3639 = call %nyx_string* @nyx_string_concat(%nyx_string* %3636, %nyx_string* %3638)
  %3640 = getelementptr [2 x i8], [2 x i8]* @.str375, i32 0, i32 0
  %3641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3640, i64 1)
  %3642 = call %nyx_string* @nyx_string_concat(%nyx_string* %3639, %nyx_string* %3641)
  %3643 = call i8* @nyx_string_to_cstr(%nyx_string* %3642)
  call void @nyx_print_string(i8* %3643)
  ret i64 0
else652:
  br label %merge653
merge653:
  %3644 = getelementptr [9 x i8], [9 x i8]* @.str376, i32 0, i32 0
  %3645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3644, i64 8)
  %3646 = load { i64, i8* }*, { i64, i8* }** %3590
  %3647 = call i64 @nyx_array_length({ i64, i8* }* %3646)
  %3648 = call %nyx_string* @nyx_string_from_int(i64 %3647)
  %3649 = call %nyx_string* @nyx_string_concat(%nyx_string* %3645, %nyx_string* %3648)
  %3650 = getelementptr [14 x i8], [14 x i8]* @.str377, i32 0, i32 0
  %3651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3650, i64 13)
  %3652 = call %nyx_string* @nyx_string_concat(%nyx_string* %3649, %nyx_string* %3651)
  %3653 = call i8* @nyx_string_to_cstr(%nyx_string* %3652)
  call void @nyx_print_string(i8* %3653)
  %3654 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 2
  %3655 = load %nyx_string*, %nyx_string** %3654
  %3656 = getelementptr [1 x i8], [1 x i8]* @.str378, i32 0, i32 0
  %3657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3656, i64 0)
  %3658 = call i1 @nyx_string_equals(%nyx_string* %3655, %nyx_string* %3657)
  %3659 = xor i1 %3658, true
  br i1 %3659, label %then657, label %else658
then657:
  %3660 = getelementptr [12 x i8], [12 x i8]* @.str379, i32 0, i32 0
  %3661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3660, i64 11)
  %3662 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 2
  %3663 = load %nyx_string*, %nyx_string** %3662
  %3664 = call %nyx_string* @nyx_string_concat(%nyx_string* %3661, %nyx_string* %3663)
  %3665 = getelementptr [2 x i8], [2 x i8]* @.str380, i32 0, i32 0
  %3666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3665, i64 1)
  %3667 = call %nyx_string* @nyx_string_concat(%nyx_string* %3664, %nyx_string* %3666)
  %3668 = call i8* @nyx_string_to_cstr(%nyx_string* %3667)
  call void @nyx_print_string(i8* %3668)
  br label %merge659
else658:
  br label %merge659
merge659:
  %3669 = getelementptr [1 x i8], [1 x i8]* @.str381, i32 0, i32 0
  %3670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3669, i64 0)
  %3671 = call i8* @nyx_string_to_cstr(%nyx_string* %3670)
  call void @nyx_print_string(i8* %3671)
  %3672 = alloca i1
  store i1 false, i1* %3672
  %3673 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 8
  %3674 = load %nyx_string*, %nyx_string** %3673
  %3675 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %3676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3675, i64 0)
  %3677 = call i1 @nyx_string_equals(%nyx_string* %3674, %nyx_string* %3676)
  %3678 = xor i1 %3677, true
  br i1 %3678, label %sc_and_rhs660, label %sc_and_end661
sc_and_rhs660:
  %3679 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 5
  %3680 = load i1, i1* %3679
  %3681 = xor i1 %3680, true
  store i1 %3681, i1* %3672
  br label %sc_and_end661
sc_and_end661:
  %3682 = load i1, i1* %3672
  br i1 %3682, label %then662, label %else663
then662:
  %3683 = getelementptr [9 x i8], [9 x i8]* @.str383, i32 0, i32 0
  %3684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3683, i64 8)
  %3685 = call i8* @nyx_string_to_cstr(%nyx_string* %3684)
  %3686 = call %nyx_string* @nyx_getenv(i8* %3685)
  %3687 = alloca %nyx_string*
  store %nyx_string* %3686, %nyx_string** %3687
  %3688 = load %nyx_string*, %nyx_string** %3687
  %3689 = getelementptr [11 x i8], [11 x i8]* @.str384, i32 0, i32 0
  %3690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3689, i64 10)
  %3691 = call %nyx_string* @nyx_string_concat(%nyx_string* %3688, %nyx_string* %3690)
  %3692 = alloca %nyx_string*
  store %nyx_string* %3691, %nyx_string** %3692
  %3693 = load %nyx_string*, %nyx_string** %3692
  %3694 = call i8* @nyx_string_to_cstr(%nyx_string* %3693)
  %3695 = call i1 @nyx_file_exists(i8* %3694)
  %3696 = xor i1 %3695, true
  br i1 %3696, label %then665, label %else666
then665:
  %3697 = load %nyx_string*, %nyx_string** %3687
  %3698 = getelementptr [15 x i8], [15 x i8]* @.str385, i32 0, i32 0
  %3699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3698, i64 14)
  %3700 = call %nyx_string* @nyx_string_concat(%nyx_string* %3697, %nyx_string* %3699)
  store %nyx_string* %3700, %nyx_string** %3692
  br label %merge667
else666:
  br label %merge667
merge667:
  %3701 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %3702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3701, i64 0)
  %3703 = alloca %nyx_string*
  store %nyx_string* %3702, %nyx_string** %3703
  %3704 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 7
  %3705 = load i1, i1* %3704
  br i1 %3705, label %then668, label %else669
then668:
  %3706 = getelementptr [11 x i8], [11 x i8]* @.str387, i32 0, i32 0
  %3707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3706, i64 10)
  store %nyx_string* %3707, %nyx_string** %3703
  br label %merge670
else669:
  br label %merge670
merge670:
  %3708 = getelementptr [33 x i8], [33 x i8]* @.str388, i32 0, i32 0
  %3709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3708, i64 32)
  %3710 = call i8* @nyx_string_to_cstr(%nyx_string* %3709)
  %3711 = call %nyx_string* @nyx_exec(i8* %3710)
  %3712 = call %nyx_string* @nyx_string_trim(%nyx_string* %3711)
  %3713 = alloca %nyx_string*
  store %nyx_string* %3712, %nyx_string** %3713
  %3714 = getelementptr [2 x i8], [2 x i8]* @.str389, i32 0, i32 0
  %3715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3714, i64 1)
  %3716 = load %nyx_string*, %nyx_string** %3692
  %3717 = call %nyx_string* @nyx_string_concat(%nyx_string* %3715, %nyx_string* %3716)
  %3718 = getelementptr [7 x i8], [7 x i8]* @.str390, i32 0, i32 0
  %3719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3718, i64 6)
  %3720 = call %nyx_string* @nyx_string_concat(%nyx_string* %3717, %nyx_string* %3719)
  %3721 = load %nyx_string*, %nyx_string** %3703
  %3722 = call %nyx_string* @nyx_string_concat(%nyx_string* %3720, %nyx_string* %3721)
  %3723 = getelementptr [5 x i8], [5 x i8]* @.str391, i32 0, i32 0
  %3724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3723, i64 4)
  %3725 = call %nyx_string* @nyx_string_concat(%nyx_string* %3722, %nyx_string* %3724)
  %3726 = load %nyx_string*, %nyx_string** %3713
  %3727 = call %nyx_string* @nyx_string_concat(%nyx_string* %3725, %nyx_string* %3726)
  %3728 = getelementptr [7 x i8], [7 x i8]* @.str392, i32 0, i32 0
  %3729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3728, i64 6)
  %3730 = call %nyx_string* @nyx_string_concat(%nyx_string* %3727, %nyx_string* %3729)
  %3731 = call i8* @nyx_string_to_cstr(%nyx_string* %3730)
  %3732 = call i64 @nyx_exec_code(i8* %3731)
  %3733 = alloca i64
  store i64 %3732, i64* %3733
  %3734 = load %nyx_string*, %nyx_string** %3713
  %3735 = call i8* @nyx_string_to_cstr(%nyx_string* %3734)
  %3736 = call %nyx_string* @nyx_read_file(i8* %3735)
  %3737 = alloca %nyx_string*
  store %nyx_string* %3736, %nyx_string** %3737
  %3738 = getelementptr [8 x i8], [8 x i8]* @.str393, i32 0, i32 0
  %3739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3738, i64 7)
  %3740 = load %nyx_string*, %nyx_string** %3713
  %3741 = call %nyx_string* @nyx_string_concat(%nyx_string* %3739, %nyx_string* %3740)
  %3742 = getelementptr [2 x i8], [2 x i8]* @.str394, i32 0, i32 0
  %3743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3742, i64 1)
  %3744 = call %nyx_string* @nyx_string_concat(%nyx_string* %3741, %nyx_string* %3743)
  %3745 = call i8* @nyx_string_to_cstr(%nyx_string* %3744)
  %3746 = call i64 @nyx_exec_code(i8* %3745)
  %3747 = load i64, i64* %3733
  %3748 = icmp ne i64 %3747, 0
  br i1 %3748, label %then671, label %else672
then671:
  %3749 = getelementptr [65 x i8], [65 x i8]* @.str395, i32 0, i32 0
  %3750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3749, i64 64)
  %3751 = call i8* @nyx_string_to_cstr(%nyx_string* %3750)
  call void @nyx_print_string(i8* %3751)
  %3752 = load %nyx_string*, %nyx_string** %3737
  %3753 = call i8* @nyx_string_to_cstr(%nyx_string* %3752)
  call void @nyx_print_string(i8* %3753)
  ret i64 1
else672:
  br label %merge673
merge673:
  %3754 = load %nyx_string*, %nyx_string** %3737
  %3755 = getelementptr [2 x i8], [2 x i8]* @.str396, i32 0, i32 0
  %3756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3755, i64 1)
  %3757 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3754, %nyx_string* %3756)
  %3758 = alloca { i64, i8* }*
  store { i64, i8* }* %3757, { i64, i8* }** %3758
  %3759 = alloca i64
  store i64 0, i64* %3759
  %3760 = alloca i64
  store i64 0, i64* %3760
  %3761 = alloca i64
  store i64 0, i64* %3761
  %3762 = getelementptr [13 x i8], [13 x i8]* @.str397, i32 0, i32 0
  %3763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3762, i64 12)
  %3764 = alloca %nyx_string*
  store %nyx_string* %3763, %nyx_string** %3764
  %3765 = getelementptr [6 x i8], [6 x i8]* @.str398, i32 0, i32 0
  %3766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3765, i64 5)
  %3767 = alloca %nyx_string*
  store %nyx_string* %3766, %nyx_string** %3767
  %3768 = getelementptr [8 x i8], [8 x i8]* @.str399, i32 0, i32 0
  %3769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3768, i64 7)
  %3770 = alloca %nyx_string*
  store %nyx_string* %3769, %nyx_string** %3770
  %3771 = getelementptr [4 x i8], [4 x i8]* @.str400, i32 0, i32 0
  %3772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3771, i64 3)
  %3773 = alloca %nyx_string*
  store %nyx_string* %3772, %nyx_string** %3773
  %3774 = call i8* @llvm.stacksave()
  br label %while_cond674
while_cond674:
  %3775 = load i64, i64* %3759
  %3776 = load { i64, i8* }*, { i64, i8* }** %3758
  %3777 = call i64 @nyx_array_length({ i64, i8* }* %3776)
  %3778 = icmp slt i64 %3775, %3777
  br i1 %3778, label %while_body675, label %while_end676
while_body675:
  call void @llvm.stackrestore(i8* %3774)
  %3779 = load { i64, i8* }*, { i64, i8* }** %3758
  %3780 = load i64, i64* %3759
  %3781 = call i64 @nyx_array_get_checked({ i64, i8* }* %3779, i64 %3780, i64 2)
  %3782 = inttoptr i64 %3781 to %nyx_string*
  %3783 = alloca %nyx_string*
  store %nyx_string* %3782, %nyx_string** %3783
  %3784 = load %nyx_string*, %nyx_string** %3783
  %3785 = load %nyx_string*, %nyx_string** %3764
  %3786 = call i1 @nyx_string_starts_with(%nyx_string* %3784, %nyx_string* %3785)
  br i1 %3786, label %then677, label %else678
then677:
  %3787 = load %nyx_string*, %nyx_string** %3783
  %3788 = load %nyx_string*, %nyx_string** %3783
  %3789 = call i64 @nyx_string_byte_length(%nyx_string* %3788)
  %3790 = call %nyx_string* @nyx_string_substring(%nyx_string* %3787, i64 12, i64 %3789)
  %3791 = call %nyx_string* @nyx_string_trim(%nyx_string* %3790)
  %3792 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 9
  store %nyx_string* %3791, %nyx_string** %3792
  br label %merge679
else678:
  br label %merge679
merge679:
  %3793 = load %nyx_string*, %nyx_string** %3783
  %3794 = load %nyx_string*, %nyx_string** %3767
  %3795 = call i1 @nyx_string_contains(%nyx_string* %3793, %nyx_string* %3794)
  br i1 %3795, label %then680, label %else681
then680:
  %3796 = load i64, i64* %3760
  %3797 = add i64 %3796, 1
  store i64 %3797, i64* %3760
  br label %merge682
else681:
  br label %merge682
merge682:
  %3798 = load %nyx_string*, %nyx_string** %3783
  %3799 = load %nyx_string*, %nyx_string** %3770
  %3800 = call i1 @nyx_string_contains(%nyx_string* %3798, %nyx_string* %3799)
  br i1 %3800, label %then683, label %else684
then683:
  %3801 = load i64, i64* %3761
  %3802 = add i64 %3801, 1
  store i64 %3802, i64* %3761
  br label %merge685
else684:
  br label %merge685
merge685:
  %3803 = load %nyx_string*, %nyx_string** %3783
  %3804 = load %nyx_string*, %nyx_string** %3773
  %3805 = call i1 @nyx_string_contains(%nyx_string* %3803, %nyx_string* %3804)
  br i1 %3805, label %then686, label %else687
then686:
  %3806 = load %nyx_string*, %nyx_string** %3783
  %3807 = call i8* @nyx_string_to_cstr(%nyx_string* %3806)
  call void @nyx_print_string(i8* %3807)
  br label %merge688
else687:
  br label %merge688
merge688:
  %3808 = load i64, i64* %3759
  %3809 = add i64 %3808, 1
  store i64 %3809, i64* %3759
  br label %while_cond674
while_end676:
  %3810 = getelementptr [18 x i8], [18 x i8]* @.str401, i32 0, i32 0
  %3811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3810, i64 17)
  %3812 = load i64, i64* %3760
  %3813 = call %nyx_string* @nyx_string_from_int(i64 %3812)
  %3814 = call %nyx_string* @nyx_string_concat(%nyx_string* %3811, %nyx_string* %3813)
  %3815 = getelementptr [16 x i8], [16 x i8]* @.str402, i32 0, i32 0
  %3816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3815, i64 15)
  %3817 = call %nyx_string* @nyx_string_concat(%nyx_string* %3814, %nyx_string* %3816)
  %3818 = load i64, i64* %3761
  %3819 = call %nyx_string* @nyx_string_from_int(i64 %3818)
  %3820 = call %nyx_string* @nyx_string_concat(%nyx_string* %3817, %nyx_string* %3819)
  %3821 = getelementptr [16 x i8], [16 x i8]* @.str403, i32 0, i32 0
  %3822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3821, i64 15)
  %3823 = call %nyx_string* @nyx_string_concat(%nyx_string* %3820, %nyx_string* %3822)
  %3824 = call i8* @nyx_string_to_cstr(%nyx_string* %3823)
  call void @nyx_print_string(i8* %3824)
  %3825 = getelementptr [1 x i8], [1 x i8]* @.str404, i32 0, i32 0
  %3826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3825, i64 0)
  %3827 = call i8* @nyx_string_to_cstr(%nyx_string* %3826)
  call void @nyx_print_string(i8* %3827)
  br label %merge664
else663:
  br label %merge664
merge664:
  %3828 = call { i64, i8* }* @nyx_array_new_ptr()
  %3829 = alloca { i64, i8* }*
  store { i64, i8* }* %3828, { i64, i8* }** %3829
  %3830 = call { i64, i8* }* @nyx_array_new_ptr()
  %3831 = alloca { i64, i8* }*
  store { i64, i8* }* %3830, { i64, i8* }** %3831
  %3832 = call { i64, i8* }* @nyx_array_new_ptr()
  %3833 = alloca { i64, i8* }*
  store { i64, i8* }* %3832, { i64, i8* }** %3833
  %3834 = alloca i64
  store i64 0, i64* %3834
  %3835 = alloca i64
  store i64 0, i64* %3835
  %3836 = alloca i64
  store i64 0, i64* %3836
  %3837 = call i8* @llvm.stacksave()
  br label %while_cond689
while_cond689:
  %3838 = load i64, i64* %3836
  %3839 = load { i64, i8* }*, { i64, i8* }** %3590
  %3840 = call i64 @nyx_array_length({ i64, i8* }* %3839)
  %3841 = icmp slt i64 %3838, %3840
  br i1 %3841, label %while_body690, label %while_end691
while_body690:
  call void @llvm.stackrestore(i8* %3837)
  %3842 = load { i64, i8* }*, { i64, i8* }** %3590
  %3843 = load i64, i64* %3836
  %3844 = call i64 @nyx_array_get_checked({ i64, i8* }* %3842, i64 %3843, i64 2)
  %3845 = inttoptr i64 %3844 to %nyx_string*
  %3846 = alloca %nyx_string*
  store %nyx_string* %3845, %nyx_string** %3846
  %3847 = load %nyx_string*, %nyx_string** %3846
  %3848 = call i1 @file_has_test_blocks(%nyx_string* %3847)
  %3849 = xor i1 %3848, true
  br i1 %3849, label %then692, label %else693
then692:
  %3850 = load i64, i64* %3836
  %3851 = add i64 %3850, 1
  store i64 %3851, i64* %3836
  br label %merge694
else693:
  %3852 = load %nyx_string*, %nyx_string** %3846
  %3853 = load %TestConfig, %TestConfig* %3320
  %3854 = load %nyx_string*, %nyx_string** %3541
  %3855 = load i64, i64* %3836
  %3856 = call %TestResult @compile_and_run(%nyx_string* %3852, %TestConfig %3853, %nyx_string* %3854, i64 %3855)
  %3857 = alloca %TestResult
  store %TestResult %3856, %TestResult* %3857
  %3858 = load { i64, i8* }*, { i64, i8* }** %3829
  %3859 = load %TestResult, %TestResult* %3857
  %3860 = getelementptr %TestResult, %TestResult* null, i32 1
  %3861 = ptrtoint %TestResult* %3860 to i64
  %3862 = call i8* @GC_malloc(i64 %3861)
  %3863 = bitcast i8* %3862 to %TestResult*
  store %TestResult %3859, %TestResult* %3863
  %3864 = ptrtoint %TestResult* %3863 to i64
  call void @nyx_array_push({ i64, i8* }* %3858, i64 %3864)
  %3865 = load { i64, i8* }*, { i64, i8* }** %3831
  %3866 = load %nyx_string*, %nyx_string** %3846
  %3867 = ptrtoint %nyx_string* %3866 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3865, i64 %3867, i64 2)
  %3868 = load { i64, i8* }*, { i64, i8* }** %3833
  %3869 = load i64, i64* %3836
  %3870 = call %nyx_string* @nyx_string_from_int(i64 %3869)
  %3871 = ptrtoint %nyx_string* %3870 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3868, i64 %3871, i64 2)
  %3872 = load i64, i64* %3834
  %3873 = getelementptr %TestResult, %TestResult* %3857, i32 0, i32 1
  %3874 = load i64, i64* %3873
  %3875 = add i64 %3872, %3874
  store i64 %3875, i64* %3834
  %3876 = load i64, i64* %3835
  %3877 = getelementptr %TestResult, %TestResult* %3857, i32 0, i32 2
  %3878 = load i64, i64* %3877
  %3879 = add i64 %3876, %3878
  store i64 %3879, i64* %3835
  %3880 = load %TestResult, %TestResult* %3857
  %3881 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 3
  %3882 = load i1, i1* %3881
  %3883 = call i64 @print_result(%TestResult %3880, i1 %3882)
  %3884 = load i64, i64* %3836
  %3885 = add i64 %3884, 1
  store i64 %3885, i64* %3836
  br label %merge694
merge694:
  br label %while_cond689
while_end691:
  %3886 = load { i64, i8* }*, { i64, i8* }** %3829
  %3887 = call i64 @nyx_array_length({ i64, i8* }* %3886)
  %3888 = icmp eq i64 %3887, 0
  br i1 %3888, label %then695, label %else696
then695:
  %3889 = getelementptr [35 x i8], [35 x i8]* @.str405, i32 0, i32 0
  %3890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3889, i64 34)
  %3891 = call i8* @nyx_string_to_cstr(%nyx_string* %3890)
  call void @nyx_print_string(i8* %3891)
  %3892 = load %nyx_string*, %nyx_string** %3541
  %3893 = getelementptr [1 x i8], [1 x i8]* @.str406, i32 0, i32 0
  %3894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3893, i64 0)
  %3895 = call i1 @nyx_string_equals(%nyx_string* %3892, %nyx_string* %3894)
  %3896 = xor i1 %3895, true
  br i1 %3896, label %then698, label %else699
then698:
  %3897 = getelementptr [8 x i8], [8 x i8]* @.str407, i32 0, i32 0
  %3898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3897, i64 7)
  %3899 = load %nyx_string*, %nyx_string** %3541
  %3900 = call %nyx_string* @nyx_string_concat(%nyx_string* %3898, %nyx_string* %3899)
  %3901 = call i8* @nyx_string_to_cstr(%nyx_string* %3900)
  %3902 = call %nyx_string* @nyx_exec(i8* %3901)
  br label %merge700
else699:
  br label %merge700
merge700:
  ret i64 0
else696:
  br label %merge697
merge697:
  %3903 = load { i64, i8* }*, { i64, i8* }** %3829
  %3904 = load i64, i64* %3834
  %3905 = load i64, i64* %3835
  %3906 = call i64 @print_summary({ i64, i8* }* %3903, i64 %3904, i64 %3905)
  %3907 = load %nyx_string*, %nyx_string** %3291
  %3908 = call %nyx_string* @huella_compilador(%nyx_string* %3907)
  %3909 = alloca %nyx_string*
  store %nyx_string* %3908, %nyx_string** %3909
  %3910 = load %nyx_string*, %nyx_string** %3291
  %3911 = call %nyx_string* @huella_resto(%nyx_string* %3910)
  %3912 = alloca %nyx_string*
  store %nyx_string* %3911, %nyx_string** %3912
  %3913 = alloca i1
  store i1 true, i1* %3913
  %3914 = load %nyx_string*, %nyx_string** %3909
  %3915 = load %nyx_string*, %nyx_string** %3302
  %3916 = call i1 @nyx_string_equals(%nyx_string* %3914, %nyx_string* %3915)
  %3917 = xor i1 %3916, true
  br i1 %3917, label %sc_or_end702, label %sc_or_rhs701
sc_or_rhs701:
  %3918 = load %nyx_string*, %nyx_string** %3912
  %3919 = load %nyx_string*, %nyx_string** %3305
  %3920 = call i1 @nyx_string_equals(%nyx_string* %3918, %nyx_string* %3919)
  %3921 = xor i1 %3920, true
  store i1 %3921, i1* %3913
  br label %sc_or_end702
sc_or_end702:
  %3922 = load i1, i1* %3913
  br i1 %3922, label %then703, label %else704
then703:
  %3923 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %3924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3923, i64 0)
  %3925 = call i8* @nyx_string_to_cstr(%nyx_string* %3924)
  call void @nyx_print_string(i8* %3925)
  %3926 = getelementptr [48 x i8], [48 x i8]* @.str409, i32 0, i32 0
  %3927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3926, i64 47)
  %3928 = load %nyx_string*, %nyx_string** %3291
  %3929 = call %nyx_string* @nyx_string_concat(%nyx_string* %3927, %nyx_string* %3928)
  %3930 = getelementptr [2 x i8], [2 x i8]* @.str410, i32 0, i32 0
  %3931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3930, i64 1)
  %3932 = call %nyx_string* @nyx_string_concat(%nyx_string* %3929, %nyx_string* %3931)
  %3933 = call i8* @nyx_string_to_cstr(%nyx_string* %3932)
  call void @nyx_print_string(i8* %3933)
  %3934 = load %nyx_string*, %nyx_string** %3909
  %3935 = load %nyx_string*, %nyx_string** %3302
  %3936 = call i1 @nyx_string_equals(%nyx_string* %3934, %nyx_string* %3935)
  %3937 = xor i1 %3936, true
  br i1 %3937, label %then706, label %else707
then706:
  %3938 = getelementptr [31 x i8], [31 x i8]* @.str411, i32 0, i32 0
  %3939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3938, i64 30)
  %3940 = load %nyx_string*, %nyx_string** %3302
  %3941 = call %nyx_string* @nyx_string_concat(%nyx_string* %3939, %nyx_string* %3940)
  %3942 = getelementptr [5 x i8], [5 x i8]* @.str412, i32 0, i32 0
  %3943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3942, i64 4)
  %3944 = call %nyx_string* @nyx_string_concat(%nyx_string* %3941, %nyx_string* %3943)
  %3945 = load %nyx_string*, %nyx_string** %3909
  %3946 = call %nyx_string* @nyx_string_concat(%nyx_string* %3944, %nyx_string* %3945)
  %3947 = call i8* @nyx_string_to_cstr(%nyx_string* %3946)
  call void @nyx_print_string(i8* %3947)
  br label %merge708
else707:
  %3948 = getelementptr [53 x i8], [53 x i8]* @.str413, i32 0, i32 0
  %3949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3948, i64 52)
  %3950 = call i8* @nyx_string_to_cstr(%nyx_string* %3949)
  call void @nyx_print_string(i8* %3950)
  br label %merge708
merge708:
  %3951 = getelementptr [71 x i8], [71 x i8]* @.str414, i32 0, i32 0
  %3952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3951, i64 70)
  %3953 = call i8* @nyx_string_to_cstr(%nyx_string* %3952)
  call void @nyx_print_string(i8* %3953)
  %3954 = getelementptr [69 x i8], [69 x i8]* @.str415, i32 0, i32 0
  %3955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3954, i64 68)
  %3956 = call i8* @nyx_string_to_cstr(%nyx_string* %3955)
  call void @nyx_print_string(i8* %3956)
  br label %merge705
else704:
  br label %merge705
merge705:
  %3957 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 5
  %3958 = load i1, i1* %3957
  br i1 %3958, label %then709, label %else710
then709:
  %3959 = load %nyx_string*, %nyx_string** %3541
  %3960 = load { i64, i8* }*, { i64, i8* }** %3831
  %3961 = load { i64, i8* }*, { i64, i8* }** %3833
  %3962 = load %nyx_string*, %nyx_string** %3538
  %3963 = getelementptr %TestConfig, %TestConfig* %3320, i32 0, i32 6
  %3964 = load i1, i1* %3963
  %3965 = call i64 @cov_report(%nyx_string* %3959, { i64, i8* }* %3960, { i64, i8* }* %3961, %nyx_string* %3962, i1 %3964)
  %3966 = getelementptr [8 x i8], [8 x i8]* @.str416, i32 0, i32 0
  %3967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3966, i64 7)
  %3968 = load %nyx_string*, %nyx_string** %3541
  %3969 = call %nyx_string* @nyx_string_concat(%nyx_string* %3967, %nyx_string* %3968)
  %3970 = call i8* @nyx_string_to_cstr(%nyx_string* %3969)
  %3971 = call %nyx_string* @nyx_exec(i8* %3970)
  br label %merge711
else710:
  br label %merge711
merge711:
  %3972 = alloca i64
  store i64 0, i64* %3972
  %3973 = alloca i64
  store i64 0, i64* %3973
  %3974 = call i8* @llvm.stacksave()
  br label %while_cond712
while_cond712:
  %3975 = load i64, i64* %3973
  %3976 = load { i64, i8* }*, { i64, i8* }** %3829
  %3977 = call i64 @nyx_array_length({ i64, i8* }* %3976)
  %3978 = icmp slt i64 %3975, %3977
  br i1 %3978, label %while_body713, label %while_end714
while_body713:
  call void @llvm.stackrestore(i8* %3974)
  %3979 = load { i64, i8* }*, { i64, i8* }** %3829
  %3980 = load i64, i64* %3973
  %3981 = call i64 @nyx_array_get({ i64, i8* }* %3979, i64 %3980)
  %3982 = inttoptr i64 %3981 to %TestResult*
  %3983 = load %TestResult, %TestResult* %3982
  %3984 = alloca %TestResult
  store %TestResult %3983, %TestResult* %3984
  %3985 = getelementptr %TestResult, %TestResult* %3984, i32 0, i32 4
  %3986 = load i1, i1* %3985
  %3987 = xor i1 %3986, true
  br i1 %3987, label %then715, label %else716
then715:
  %3988 = load i64, i64* %3972
  %3989 = add i64 %3988, 1
  store i64 %3989, i64* %3972
  br label %merge717
else716:
  br label %merge717
merge717:
  %3990 = load i64, i64* %3973
  %3991 = add i64 %3990, 1
  store i64 %3991, i64* %3973
  br label %while_cond712
while_end714:
  %3992 = alloca i1
  store i1 true, i1* %3992
  %3993 = load i64, i64* %3835
  %3994 = icmp sgt i64 %3993, 0
  br i1 %3994, label %sc_or_end719, label %sc_or_rhs718
sc_or_rhs718:
  %3995 = load i64, i64* %3972
  %3996 = icmp sgt i64 %3995, 0
  store i1 %3996, i1* %3992
  br label %sc_or_end719
sc_or_end719:
  %3997 = load i1, i1* %3992
  br i1 %3997, label %then720, label %else721
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
  %3998 = sub i64 0, 9223372036854775808
  store i64 %3998, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

