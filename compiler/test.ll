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
@.str68 = private unnamed_addr constant [7 x i8] c"TMPDIR\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [2 x i8] c"/\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [1 x i8] c"\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [5 x i8] c"/tmp\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [6 x i8] c"/nyx_\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [8 x i8] c"_XXXXXX\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [7 x i8] c"base=\22\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [29 x i8] c"\22; [ -d \22$base\22 ] || exit 0\0a\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [36 x i8] c"A='[A-Za-z0-9]'; S6=\22$A$A$A$A$A$A\22\0a\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [118 x i8] c"for f in \22$base\22/nyx_test_[0-9]* \22$base\22/nyx_test_src_[0-9]* \22$base\22/nyx_test_libs_[0-9]* \22$base\22/nyx_cov_[0-9]*; do\0a\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [27 x i8] c"  [ -e \22$f\22 ] || continue\0a\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [6 x i8] c"  n=$\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [9 x i8] c"{f##*/}\0a\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [16 x i8] c"  case \22$n\22 in\0a\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [50 x i8] c"    nyx_test_[0-9]*_$S6|nyx_cov_[0-9]*_$S6) : ;;\0a\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [89 x i8] c"    nyx_test_src_[0-9]*_$S6|nyx_test_src_[0-9]*_$S6.nx|nyx_test_src_[0-9]*_$S6.ll) : ;;\0a\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [36 x i8] c"    nyx_test_libs_[0-9]*_$S6) : ;;\0a\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [20 x i8] c"    *) continue ;;\0a\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [8 x i8] c"  esac\0a\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [6 x i8] c"  p=$\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [12 x i8] c"{n%_*}; p=$\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [9 x i8] c"{p##*_}\0a\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [45 x i8] c"  case \22$p\22 in ''|*[!0-9]*) continue;; esac\0a\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [71 x i8] c"  if kill -0 \22$p\22 2>/dev/null || [ -d \22/proc/$p\22 ]; then continue; fi\0a\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [15 x i8] c"  rm -rf \22$f\22\0a\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [6 x i8] c"done\0a\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [1 x i8] c"\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [12 x i8] c"mktemp -d \22\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [6 x i8] c"test_\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [1 x i8] c"\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [51 x i8] c"ERROR: no se pudo crear el directorio temporal en \00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [10 x i8] c" (TMPDIR)\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [9 x i8] c"/out.txt\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [5 x i8] c"/bin\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [1 x i8] c"\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [5 x i8] c"-O2 \00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [1 x i8] c"\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [6 x i8] c"linux\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [17 x i8] c"-Wl,--as-needed \00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [105 x i8] c"runtime/msgpack.c runtime/csv.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [1 x i8] c"\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [2 x i8] c"/\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c"/\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [1 x i8] c"\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [1 x i8] c"\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [22 x i8] c"if nyx_rt_auto \22-O2\22 \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [31 x i8] c"; then RT_IN=(\22$RT_AUTO\22); fi\0a\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [3 x i8] c"\22$\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [13 x i8] c"{RT_IN[@]}\22 \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [1 x i8] c"\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [1 x i8] c"\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [1 x i8] c"\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [2 x i8] c"/\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [20 x i8] c" NYX_COVERAGE_MAP=\22\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [6 x i8] c".tsv\22\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [62 x i8] c"-fprofile-generate -Xclang -mllvm -Xclang -disable-preinline \00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [20 x i8] c"LLVM_PROFILE_FILE=\22\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [11 x i8] c".profraw\22 \00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [322 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22; return 0; }\0a\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [1 x i8] c"\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [1 x i8] c"\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [1 x i8] c"\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [2 x i8] c",\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [1 x i8] c"\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [1 x i8] c"\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [2 x i8] c",\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [1 x i8] c"\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [19 x i8] c" NYX_LIB_MODULES=\22\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [1 x i8] c"\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [2 x i8] c",\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [2 x i8] c",\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [2 x i8] c",\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [2 x i8] c",\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [16 x i8] c" NYX_LIB_SELF=\22\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [2 x i8] c" \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [2 x i8] c"=\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [23 x i8] c" ./nyx_bootstrap ) > \22\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [38 x i8] c"\22 2>&1 || { rc=$?; nyx_pista $rc >> \22\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [14 x i8] c"\22; exit 1; }\0a\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [15 x i8] c"trap 'rm -rf \22\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [27 x i8] c"\22; exit 130' INT TERM HUP\0a\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [16 x i8] c"SRC=\22$(mktemp \22\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [10 x i8] c"test_src_\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [5 x i8] c"\22)\22\0a\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [2 x i8] c"/\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [5 x i8] c"-o \22\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [8 x i8] c"\22 2>> \22\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [8 x i8] c"\22 2>&1\0a\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [1 x i8] c"\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [3 x i8] c" (\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [3 x i8] c" (\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [1 x i8] c"\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str220.c = internal global %nyx_string* null
@.slotT221 = private unnamed_addr constant [11 x i8] c"TestResult\00"
@.str222 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [9 x i8] c"version \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [1 x i8] c"\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [1 x i8] c"\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [1 x i8] c"\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [1 x i8] c"\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [2 x i8] c"0\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [1 x i8] c"\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [3 x i8] c"  \00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [4 x i8] c"   \00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [2 x i8] c":\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c";\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [1 x i8] c"\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"[\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [2 x i8] c"]\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c",\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"1\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [4 x i8] c"src\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [1 x i8] c"\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [1 x i8] c"\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [1 x i8] c"\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [2 x i8] c"/\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [2 x i8] c"1\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [2 x i8] c"/\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [1 x i8] c"\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [2 x i8] c"1\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [6 x i8] c"async\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [5 x i8] c"main\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [3 x i8] c"no\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [3 x i8] c"si\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [1 x i8] c"\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [1 x i8] c"\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [2 x i8] c"0\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [3 x i8] c"si\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [2 x i8] c"1\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [5 x i8] c"    \00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [2 x i8] c":\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [2 x i8] c" \00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [2 x i8] c",\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [3 x i8] c"  \00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [3 x i8] c": \00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [2 x i8] c"/\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [3 x i8] c" (\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [5 x i8] c"    \00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [2 x i8] c"/\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [66 x i8] c"\22 2>/dev/null && sha256sum nyx_bootstrap 2>/dev/null | cut -c1-12\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [74 x i8] c"\22 2>/dev/null && cat std/*.nx runtime/*.c runtime/*.h 2>/dev/null | cksum\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [18 x i8] c"  compiler: nyx v\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [17 x i8] c" (nyx_bootstrap \00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [2 x i8] c")\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [1 x i8] c"\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [2 x i8] c" \00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [2 x i8] c"-\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [1 x i8] c"\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [1 x i8] c"\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [1 x i8] c"\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [1 x i8] c"\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [1 x i8] c"\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [12 x i8] c"mktemp -d \22\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [5 x i8] c"cov_\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [1 x i8] c"\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [1 x i8] c"\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [1 x i8] c"\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [2 x i8] c"/\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [1 x i8] c"\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [1 x i8] c"\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [1 x i8] c"\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [1 x i8] c"\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [9 x i8] c"mktemp \22\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [11 x i8] c"test_libs_\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [1 x i8] c"\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [1 x i8] c"\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [1 x i8] c"\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [48 x i8] c"  ⚠ EL TOOLCHAIN CAMBIÓ DURANTE LA CORRIDA (\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [2 x i8] c")\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [31 x i8] c"    compilador: nyx_bootstrap \00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [53 x i8] c"    compilador igual; cambió la stdlib o el runtime\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [71 x i8] c"    Algunos archivos se probaron con una versión y otros con la otra:\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [69 x i8] c"    este resultado no sirve para integrar. Vuelve a correr la suite.\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str462.c = internal global %nyx_string* null
@.slotT463 = private unnamed_addr constant [11 x i8] c"TestResult\00"
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
declare i64 @nyx_crc32_string(%nyx_string*)
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
declare i64 @nyx_slot_eq({ i64, i8* }*, i64, { i64, i8* }*, i64)
declare i64 @nyx_enum_eq(i8*, i8*)
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
declare i64 @nyx_slot_as_value_checked({ i64, i8* }*, i64, i8*)
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
declare i8* @GC_malloc_atomic(i64)
declare i8* @malloc(i64)
declare void @free(i8*)
declare i32 @strcmp(i8*, i8*)
declare double @pow(double, double)
declare void @nyx_assert_fail(i8*)
declare void @nyx_assert_eq_int(i64, i64, i8*)
declare void @nyx_assert_eq_str(%nyx_string*, %nyx_string*, i8*)
declare void @exit(i32)
declare void @nyx_panic(%nyx_string*)
declare void @nyx_panic_unwrap_err(%nyx_string*)
declare void @nyx_panic_unwrap_error(%nyx_string*, %nyx_string*, i64)
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
declare %nyx_string* @nyx_host_os()
define i64 @println(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t1 = load %nyx_string*, %nyx_string** %s.ptr
  %t2 = call i8* @nyx_string_to_cstr(%nyx_string* %t1)
  call void @nyx_print_string(i8* %t2)
  ret i64 0
}

define %nyx_string* @read_stdin_all(
) {
  %t3 = call %nyx_string* @nyx_read_stdin_all()
  ret %nyx_string* %t3
}

define i64 @abs(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %t4 = load i64, i64* %n.ptr
  %t5 = icmp slt i64 %t4, 0
  br i1 %t5, label %then0, label %else1
then0:
  %t6 = load i64, i64* %n.ptr
  %t7 = sub i64 0, %t6
  ret i64 %t7
else1:
  br label %merge2
merge2:
  %t8 = load i64, i64* %n.ptr
  ret i64 %t8
}

define i64 @min(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  %t9 = load i64, i64* %a.ptr
  %t10 = load i64, i64* %b.ptr
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %then3, label %else4
then3:
  %t12 = load i64, i64* %a.ptr
  ret i64 %t12
else4:
  br label %merge5
merge5:
  %t13 = load i64, i64* %b.ptr
  ret i64 %t13
}

define i64 @max(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  %t14 = load i64, i64* %a.ptr
  %t15 = load i64, i64* %b.ptr
  %t16 = icmp sgt i64 %t14, %t15
  br i1 %t16, label %then6, label %else7
then6:
  %t17 = load i64, i64* %a.ptr
  ret i64 %t17
else7:
  br label %merge8
merge8:
  %t18 = load i64, i64* %b.ptr
  ret i64 %t18
}

define i64 @clamp(
i64 %n.param, i64 %lo.param, i64 %hi.param) {
  %n.ptr = alloca i64
  %lo.ptr = alloca i64
  %hi.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  store i64 %lo.param, i64* %lo.ptr
  store i64 %hi.param, i64* %hi.ptr
  %t19 = load i64, i64* %lo.ptr
  %t20 = load i64, i64* %n.ptr
  %t21 = load i64, i64* %hi.ptr
  %t22 = call i64 @min(i64 %t20, i64 %t21)
  %t23 = call i64 @max(i64 %t19, i64 %t22)
  ret i64 %t23
}

define i64 @pow_int(
i64 %base.param, i64 %exp.param) {
  %base.ptr = alloca i64
  %exp.ptr = alloca i64
  %t24 = alloca i64
  %t25 = alloca i64
  store i64 %base.param, i64* %base.ptr
  store i64 %exp.param, i64* %exp.ptr
  store i64 1, i64* %t24
  store i64 0, i64* %t25
  br label %while_cond9
while_cond9:
  %t26 = load i64, i64* %t25
  %t27 = load i64, i64* %exp.ptr
  %t28 = icmp slt i64 %t26, %t27
  br i1 %t28, label %while_body10, label %while_end11
while_body10:
  %t29 = load i64, i64* %t24
  %t30 = load i64, i64* %base.ptr
  %t31 = mul i64 %t29, %t30
  store i64 %t31, i64* %t24
  %t32 = load i64, i64* %t25
  %t33 = add i64 %t32, 1
  store i64 %t33, i64* %t25
  br label %while_cond9
while_end11:
  %t34 = load i64, i64* %t24
  ret i64 %t34
}

define i64 @gcd(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  %t37 = alloca i64
  %t40 = alloca i64
  %t44 = alloca i64
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  %t35 = load i64, i64* %a.ptr
  %t36 = call i64 @abs(i64 %t35)
  store i64 %t36, i64* %t37
  %t38 = load i64, i64* %b.ptr
  %t39 = call i64 @abs(i64 %t38)
  store i64 %t39, i64* %t40
  br label %while_cond12
while_cond12:
  %t41 = load i64, i64* %t40
  %t42 = icmp ne i64 %t41, 0
  br i1 %t42, label %while_body13, label %while_end14
while_body13:
  %t43 = load i64, i64* %t40
  store i64 %t43, i64* %t44
  %t45 = load i64, i64* %t37
  %t46 = load i64, i64* %t40
  %t47 = srem i64 %t45, %t46
  store i64 %t47, i64* %t40
  %t48 = load i64, i64* %t44
  store i64 %t48, i64* %t37
  br label %while_cond12
while_end14:
  %t49 = load i64, i64* %t37
  ret i64 %t49
}

define i64 @lcm(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  %t50 = alloca i1
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  store i1 true, i1* %t50
  %t51 = load i64, i64* %a.ptr
  %t52 = icmp eq i64 %t51, 0
  br i1 %t52, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %t53 = load i64, i64* %b.ptr
  %t54 = icmp eq i64 %t53, 0
  store i1 %t54, i1* %t50
  br label %sc_or_end16
sc_or_end16:
  %t55 = load i1, i1* %t50
  br i1 %t55, label %then17, label %else18
then17:
  ret i64 0
else18:
  br label %merge19
merge19:
  %t56 = load i64, i64* %a.ptr
  %t57 = load i64, i64* %b.ptr
  %t58 = mul i64 %t56, %t57
  %t59 = call i64 @abs(i64 %t58)
  %t60 = load i64, i64* %a.ptr
  %t61 = load i64, i64* %b.ptr
  %t62 = call i64 @gcd(i64 %t60, i64 %t61)
  %t63 = sdiv i64 %t59, %t62
  ret i64 %t63
}

define i1 @is_even(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %t64 = load i64, i64* %n.ptr
  %t65 = srem i64 %t64, 2
  %t66 = icmp eq i64 %t65, 0
  ret i1 %t66
}

define i1 @is_odd(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %t67 = load i64, i64* %n.ptr
  %t68 = srem i64 %t67, 2
  %t69 = icmp ne i64 %t68, 0
  ret i1 %t69
}

define i64 @sqrt_int(
i64 %n.param) {
  %n.ptr = alloca i64
  %t76 = alloca i64
  %t80 = alloca i64
  store i64 %n.param, i64* %n.ptr
  %t70 = load i64, i64* %n.ptr
  %t71 = icmp slt i64 %t70, 0
  br i1 %t71, label %then20, label %else21
then20:
  %t72 = sub i64 0, 1
  ret i64 %t72
else21:
  br label %merge22
merge22:
  %t73 = load i64, i64* %n.ptr
  %t74 = icmp eq i64 %t73, 0
  br i1 %t74, label %then23, label %else24
then23:
  ret i64 0
else24:
  br label %merge25
merge25:
  %t75 = load i64, i64* %n.ptr
  store i64 %t75, i64* %t76
  %t77 = load i64, i64* %t76
  %t78 = add i64 %t77, 1
  %t79 = sdiv i64 %t78, 2
  store i64 %t79, i64* %t80
  br label %while_cond26
while_cond26:
  %t81 = load i64, i64* %t80
  %t82 = load i64, i64* %t76
  %t83 = icmp slt i64 %t81, %t82
  br i1 %t83, label %while_body27, label %while_end28
while_body27:
  %t84 = load i64, i64* %t80
  store i64 %t84, i64* %t76
  %t85 = load i64, i64* %t76
  %t86 = load i64, i64* %n.ptr
  %t87 = load i64, i64* %t76
  %t88 = sdiv i64 %t86, %t87
  %t89 = add i64 %t85, %t88
  %t90 = sdiv i64 %t89, 2
  store i64 %t90, i64* %t80
  br label %while_cond26
while_end28:
  %t91 = load i64, i64* %t76
  ret i64 %t91
}

define i8* @checked_add(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  %t95 = alloca i64
  %t98 = alloca i1
  %t101 = alloca i1
  %t104 = alloca i1
  %t105 = alloca i1
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  %t92 = load i64, i64* %a.ptr
  %t93 = load i64, i64* %b.ptr
  %t94 = add i64 %t92, %t93
  store i64 %t94, i64* %t95
  %t96 = load i64, i64* %a.ptr
  %t97 = icmp slt i64 %t96, 0
  store i1 %t97, i1* %t98
  %t99 = load i64, i64* %b.ptr
  %t100 = icmp slt i64 %t99, 0
  store i1 %t100, i1* %t101
  %t102 = load i64, i64* %t95
  %t103 = icmp slt i64 %t102, 0
  store i1 %t103, i1* %t104
  store i1 false, i1* %t105
  %t106 = load i1, i1* %t98
  %t107 = load i1, i1* %t101
  %t108 = icmp eq i1 %t106, %t107
  br i1 %t108, label %sc_and_rhs29, label %sc_and_end30
sc_and_rhs29:
  %t109 = load i1, i1* %t104
  %t110 = load i1, i1* %t98
  %t111 = icmp ne i1 %t109, %t110
  store i1 %t111, i1* %t105
  br label %sc_and_end30
sc_and_end30:
  %t112 = load i1, i1* %t105
  br i1 %t112, label %then31, label %else32
then31:
  %t113 = call i8* @GC_malloc(i64 16)
  %t114 = bitcast i8* %t113 to { i64, i8* }*
  %t115 = getelementptr { i64, i8* }, { i64, i8* }* %t114, i32 0, i32 0
  store i64 1, i64* %t115
  %t116 = getelementptr { i64, i8* }, { i64, i8* }* %t114, i32 0, i32 1
  store i8* null, i8** %t116
  ret i8* %t113
else32:
  br label %merge33
merge33:
  %t117 = call i8* @GC_malloc(i64 16)
  %t118 = bitcast i8* %t117 to { i64, i8* }*
  %t119 = getelementptr { i64, i8* }, { i64, i8* }* %t118, i32 0, i32 0
  store i64 0, i64* %t119
  %t120 = getelementptr { i64, i8* }, { i64, i8* }* %t118, i32 0, i32 1
  %t121 = call i8* @GC_malloc(i64 8)
  %t122 = bitcast i8* %t121 to i64*
  %t123 = load i64, i64* %t95
  %t124 = getelementptr i64, i64* %t122, i64 0
  store i64 %t123, i64* %t124
  store i8* %t121, i8** %t120
  ret i8* %t117
}

define i8* @checked_sub(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  %t128 = alloca i64
  %t131 = alloca i1
  %t134 = alloca i1
  %t137 = alloca i1
  %t138 = alloca i1
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  %t125 = load i64, i64* %a.ptr
  %t126 = load i64, i64* %b.ptr
  %t127 = sub i64 %t125, %t126
  store i64 %t127, i64* %t128
  %t129 = load i64, i64* %a.ptr
  %t130 = icmp slt i64 %t129, 0
  store i1 %t130, i1* %t131
  %t132 = load i64, i64* %b.ptr
  %t133 = icmp slt i64 %t132, 0
  store i1 %t133, i1* %t134
  %t135 = load i64, i64* %t128
  %t136 = icmp slt i64 %t135, 0
  store i1 %t136, i1* %t137
  store i1 false, i1* %t138
  %t139 = load i1, i1* %t131
  %t140 = load i1, i1* %t134
  %t141 = icmp ne i1 %t139, %t140
  br i1 %t141, label %sc_and_rhs34, label %sc_and_end35
sc_and_rhs34:
  %t142 = load i1, i1* %t137
  %t143 = load i1, i1* %t134
  %t144 = icmp eq i1 %t142, %t143
  store i1 %t144, i1* %t138
  br label %sc_and_end35
sc_and_end35:
  %t145 = load i1, i1* %t138
  br i1 %t145, label %then36, label %else37
then36:
  %t146 = call i8* @GC_malloc(i64 16)
  %t147 = bitcast i8* %t146 to { i64, i8* }*
  %t148 = getelementptr { i64, i8* }, { i64, i8* }* %t147, i32 0, i32 0
  store i64 1, i64* %t148
  %t149 = getelementptr { i64, i8* }, { i64, i8* }* %t147, i32 0, i32 1
  store i8* null, i8** %t149
  ret i8* %t146
else37:
  br label %merge38
merge38:
  %t150 = call i8* @GC_malloc(i64 16)
  %t151 = bitcast i8* %t150 to { i64, i8* }*
  %t152 = getelementptr { i64, i8* }, { i64, i8* }* %t151, i32 0, i32 0
  store i64 0, i64* %t152
  %t153 = getelementptr { i64, i8* }, { i64, i8* }* %t151, i32 0, i32 1
  %t154 = call i8* @GC_malloc(i64 8)
  %t155 = bitcast i8* %t154 to i64*
  %t156 = load i64, i64* %t128
  %t157 = getelementptr i64, i64* %t155, i64 0
  store i64 %t156, i64* %t157
  store i8* %t154, i8** %t153
  ret i8* %t150
}

define i8* @checked_mul(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  %t158 = alloca i1
  %t212 = alloca i64
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  store i1 true, i1* %t158
  %t159 = load i64, i64* %a.ptr
  %t160 = icmp eq i64 %t159, 0
  br i1 %t160, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %t161 = load i64, i64* %b.ptr
  %t162 = icmp eq i64 %t161, 0
  store i1 %t162, i1* %t158
  br label %sc_or_end40
sc_or_end40:
  %t163 = load i1, i1* %t158
  br i1 %t163, label %then41, label %else42
then41:
  %t164 = call i8* @GC_malloc(i64 16)
  %t165 = bitcast i8* %t164 to { i64, i8* }*
  %t166 = getelementptr { i64, i8* }, { i64, i8* }* %t165, i32 0, i32 0
  store i64 0, i64* %t166
  %t167 = getelementptr { i64, i8* }, { i64, i8* }* %t165, i32 0, i32 1
  %t168 = call i8* @GC_malloc(i64 8)
  %t169 = bitcast i8* %t168 to i64*
  %t170 = getelementptr i64, i64* %t169, i64 0
  store i64 0, i64* %t170
  store i8* %t168, i8** %t167
  ret i8* %t164
else42:
  br label %merge43
merge43:
  %t171 = load i64, i64* %a.ptr
  %t172 = sub i64 0, 1
  %t173 = icmp eq i64 %t171, %t172
  br i1 %t173, label %then44, label %else45
then44:
  %t174 = load i64, i64* %b.ptr
  %t175 = load i64, i64* @INT_MIN
  %t176 = icmp eq i64 %t174, %t175
  br i1 %t176, label %then47, label %else48
then47:
  %t177 = call i8* @GC_malloc(i64 16)
  %t178 = bitcast i8* %t177 to { i64, i8* }*
  %t179 = getelementptr { i64, i8* }, { i64, i8* }* %t178, i32 0, i32 0
  store i64 1, i64* %t179
  %t180 = getelementptr { i64, i8* }, { i64, i8* }* %t178, i32 0, i32 1
  store i8* null, i8** %t180
  ret i8* %t177
else48:
  br label %merge49
merge49:
  %t181 = call i8* @GC_malloc(i64 16)
  %t182 = bitcast i8* %t181 to { i64, i8* }*
  %t183 = getelementptr { i64, i8* }, { i64, i8* }* %t182, i32 0, i32 0
  store i64 0, i64* %t183
  %t184 = getelementptr { i64, i8* }, { i64, i8* }* %t182, i32 0, i32 1
  %t185 = call i8* @GC_malloc(i64 8)
  %t186 = bitcast i8* %t185 to i64*
  %t187 = load i64, i64* %b.ptr
  %t188 = sub i64 0, %t187
  %t189 = getelementptr i64, i64* %t186, i64 0
  store i64 %t188, i64* %t189
  store i8* %t185, i8** %t184
  ret i8* %t181
else45:
  br label %merge46
merge46:
  %t190 = load i64, i64* %b.ptr
  %t191 = sub i64 0, 1
  %t192 = icmp eq i64 %t190, %t191
  br i1 %t192, label %then50, label %else51
then50:
  %t193 = load i64, i64* %a.ptr
  %t194 = load i64, i64* @INT_MIN
  %t195 = icmp eq i64 %t193, %t194
  br i1 %t195, label %then53, label %else54
then53:
  %t196 = call i8* @GC_malloc(i64 16)
  %t197 = bitcast i8* %t196 to { i64, i8* }*
  %t198 = getelementptr { i64, i8* }, { i64, i8* }* %t197, i32 0, i32 0
  store i64 1, i64* %t198
  %t199 = getelementptr { i64, i8* }, { i64, i8* }* %t197, i32 0, i32 1
  store i8* null, i8** %t199
  ret i8* %t196
else54:
  br label %merge55
merge55:
  %t200 = call i8* @GC_malloc(i64 16)
  %t201 = bitcast i8* %t200 to { i64, i8* }*
  %t202 = getelementptr { i64, i8* }, { i64, i8* }* %t201, i32 0, i32 0
  store i64 0, i64* %t202
  %t203 = getelementptr { i64, i8* }, { i64, i8* }* %t201, i32 0, i32 1
  %t204 = call i8* @GC_malloc(i64 8)
  %t205 = bitcast i8* %t204 to i64*
  %t206 = load i64, i64* %a.ptr
  %t207 = sub i64 0, %t206
  %t208 = getelementptr i64, i64* %t205, i64 0
  store i64 %t207, i64* %t208
  store i8* %t204, i8** %t203
  ret i8* %t200
else51:
  br label %merge52
merge52:
  %t209 = load i64, i64* %a.ptr
  %t210 = load i64, i64* %b.ptr
  %t211 = mul i64 %t209, %t210
  store i64 %t211, i64* %t212
  %t213 = load i64, i64* %t212
  %t214 = load i64, i64* %b.ptr
  %t215 = sdiv i64 %t213, %t214
  %t216 = load i64, i64* %a.ptr
  %t217 = icmp ne i64 %t215, %t216
  br i1 %t217, label %then56, label %else57
then56:
  %t218 = call i8* @GC_malloc(i64 16)
  %t219 = bitcast i8* %t218 to { i64, i8* }*
  %t220 = getelementptr { i64, i8* }, { i64, i8* }* %t219, i32 0, i32 0
  store i64 1, i64* %t220
  %t221 = getelementptr { i64, i8* }, { i64, i8* }* %t219, i32 0, i32 1
  store i8* null, i8** %t221
  ret i8* %t218
else57:
  br label %merge58
merge58:
  %t222 = call i8* @GC_malloc(i64 16)
  %t223 = bitcast i8* %t222 to { i64, i8* }*
  %t224 = getelementptr { i64, i8* }, { i64, i8* }* %t223, i32 0, i32 0
  store i64 0, i64* %t224
  %t225 = getelementptr { i64, i8* }, { i64, i8* }* %t223, i32 0, i32 1
  %t226 = call i8* @GC_malloc(i64 8)
  %t227 = bitcast i8* %t226 to i64*
  %t228 = load i64, i64* %t212
  %t229 = getelementptr i64, i64* %t227, i64 0
  store i64 %t228, i64* %t229
  store i8* %t226, i8** %t225
  ret i8* %t222
}

define i8* @checked_div(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  %t236 = alloca i1
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  %t230 = load i64, i64* %b.ptr
  %t231 = icmp eq i64 %t230, 0
  br i1 %t231, label %then59, label %else60
then59:
  %t232 = call i8* @GC_malloc(i64 16)
  %t233 = bitcast i8* %t232 to { i64, i8* }*
  %t234 = getelementptr { i64, i8* }, { i64, i8* }* %t233, i32 0, i32 0
  store i64 1, i64* %t234
  %t235 = getelementptr { i64, i8* }, { i64, i8* }* %t233, i32 0, i32 1
  store i8* null, i8** %t235
  ret i8* %t232
else60:
  br label %merge61
merge61:
  store i1 false, i1* %t236
  %t237 = load i64, i64* %a.ptr
  %t238 = load i64, i64* @INT_MIN
  %t239 = icmp eq i64 %t237, %t238
  br i1 %t239, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %t240 = load i64, i64* %b.ptr
  %t241 = sub i64 0, 1
  %t242 = icmp eq i64 %t240, %t241
  store i1 %t242, i1* %t236
  br label %sc_and_end63
sc_and_end63:
  %t243 = load i1, i1* %t236
  br i1 %t243, label %then64, label %else65
then64:
  %t244 = call i8* @GC_malloc(i64 16)
  %t245 = bitcast i8* %t244 to { i64, i8* }*
  %t246 = getelementptr { i64, i8* }, { i64, i8* }* %t245, i32 0, i32 0
  store i64 1, i64* %t246
  %t247 = getelementptr { i64, i8* }, { i64, i8* }* %t245, i32 0, i32 1
  store i8* null, i8** %t247
  ret i8* %t244
else65:
  br label %merge66
merge66:
  %t248 = call i8* @GC_malloc(i64 16)
  %t249 = bitcast i8* %t248 to { i64, i8* }*
  %t250 = getelementptr { i64, i8* }, { i64, i8* }* %t249, i32 0, i32 0
  store i64 0, i64* %t250
  %t251 = getelementptr { i64, i8* }, { i64, i8* }* %t249, i32 0, i32 1
  %t252 = call i8* @GC_malloc(i64 8)
  %t253 = bitcast i8* %t252 to i64*
  %t254 = load i64, i64* %a.ptr
  %t255 = load i64, i64* %b.ptr
  %t256 = sdiv i64 %t254, %t255
  %t257 = getelementptr i64, i64* %t253, i64 0
  store i64 %t256, i64* %t257
  store i8* %t252, i8** %t251
  ret i8* %t248
}

define internal i64 @round_mode_code(
i8* %mode.param) {
  %mode.ptr = alloca i8*
  %t262 = alloca i64
  store i8* %mode.param, i8** %mode.ptr
  %t258 = load i8*, i8** %mode.ptr
  %t259 = bitcast i8* %t258 to { i64, i8* }*
  %t260 = getelementptr { i64, i8* }, { i64, i8* }* %t259, i32 0, i32 0
  %t261 = load i64, i64* %t260
  store i64 0, i64* %t262
  switch i64 %t261, label %match_default67 [ i64 0, label %match_arm69 i64 1, label %match_arm70 i64 2, label %match_arm71 i64 3, label %match_arm72 i64 4, label %match_arm73 ]
match_arm69:
  store i64 0, i64* %t262
  br label %match_end68
match_arm70:
  store i64 1, i64* %t262
  br label %match_end68
match_arm71:
  store i64 2, i64* %t262
  br label %match_end68
match_arm72:
  store i64 3, i64* %t262
  br label %match_end68
match_arm73:
  store i64 4, i64* %t262
  br label %match_end68
match_default67:
  br label %match_end68
match_end68:
  %t263 = load i64, i64* %t262
  ret i64 %t263
}

define i64 @mul_div_round(
i64 %a.param, i64 %b.param, i64 %c.param, i8* %mode.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  %c.ptr = alloca i64
  %mode.ptr = alloca i8*
  %t270 = alloca i64
  %t272 = alloca i64
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  store i64 %c.param, i64* %c.ptr
  store i8* %mode.param, i8** %mode.ptr
  %t264 = load i64, i64* %a.ptr
  %t265 = load i64, i64* %b.ptr
  %t266 = load i64, i64* %c.ptr
  %t267 = load i8*, i8** %mode.ptr
  %t268 = call i64 @round_mode_code(i8* %t267)
  %t269 = call i64 @nyx_mul_div_round(i64 %t264, i64 %t265, i64 %t266, i64 %t268)
  store i64 %t269, i64* %t270
  %t271 = call i64 @nyx_mul_div_round_status()
  store i64 %t271, i64* %t272
  %t273 = load i64, i64* %t272
  %t274 = icmp eq i64 %t273, 1
  br i1 %t274, label %then84, label %else85
then84:
  %t275 = getelementptr [32 x i8], [32 x i8]* @.str0, i32 0, i32 0
  %t276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t275, i64 31)
  call void @nyx_panic(%nyx_string* %t276)
  unreachable
else85:
  br label %merge86
merge86:
  %t277 = load i64, i64* %t272
  %t278 = icmp eq i64 %t277, 2
  br i1 %t278, label %then87, label %else88
then87:
  %t279 = getelementptr [36 x i8], [36 x i8]* @.str1, i32 0, i32 0
  %t280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t279, i64 35)
  call void @nyx_panic(%nyx_string* %t280)
  unreachable
else88:
  br label %merge89
merge89:
  %t281 = load i64, i64* %t270
  ret i64 %t281
}

define i64 @array_sum(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  %t282 = alloca i64
  %t283 = alloca i64
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  store i64 0, i64* %t282
  store i64 0, i64* %t283
  br label %while_cond90
while_cond90:
  %t284 = load i64, i64* %t283
  %t285 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t286 = call i64 @nyx_array_length({ i64, i8* }* %t285)
  %t287 = icmp slt i64 %t284, %t286
  br i1 %t287, label %while_body91, label %while_end92
while_body91:
  %t288 = load i64, i64* %t282
  %t289 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t290 = load i64, i64* %t283
  %t291 = call i64 @nyx_array_get({ i64, i8* }* %t289, i64 %t290)
  %t292 = add i64 %t288, %t291
  store i64 %t292, i64* %t282
  %t293 = load i64, i64* %t283
  %t294 = add i64 %t293, 1
  store i64 %t294, i64* %t283
  br label %while_cond90
while_end92:
  %t295 = load i64, i64* %t282
  ret i64 %t295
}

define i64 @array_min(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  %t298 = alloca i64
  %t299 = alloca i64
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t296 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t297 = call i64 @nyx_array_get({ i64, i8* }* %t296, i64 0)
  store i64 %t297, i64* %t298
  store i64 1, i64* %t299
  br label %while_cond93
while_cond93:
  %t300 = load i64, i64* %t299
  %t301 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t302 = call i64 @nyx_array_length({ i64, i8* }* %t301)
  %t303 = icmp slt i64 %t300, %t302
  br i1 %t303, label %while_body94, label %while_end95
while_body94:
  %t304 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t305 = load i64, i64* %t299
  %t306 = call i64 @nyx_array_get({ i64, i8* }* %t304, i64 %t305)
  %t307 = load i64, i64* %t298
  %t308 = icmp slt i64 %t306, %t307
  br i1 %t308, label %then96, label %else97
then96:
  %t309 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t310 = load i64, i64* %t299
  %t311 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t309, i64 %t310)
  store i64 %t311, i64* %t298
  br label %merge98
else97:
  br label %merge98
merge98:
  %t312 = load i64, i64* %t299
  %t313 = add i64 %t312, 1
  store i64 %t313, i64* %t299
  br label %while_cond93
while_end95:
  %t314 = load i64, i64* %t298
  ret i64 %t314
}

define i64 @array_max(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  %t317 = alloca i64
  %t318 = alloca i64
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t315 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t316 = call i64 @nyx_array_get({ i64, i8* }* %t315, i64 0)
  store i64 %t316, i64* %t317
  store i64 1, i64* %t318
  br label %while_cond99
while_cond99:
  %t319 = load i64, i64* %t318
  %t320 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t321 = call i64 @nyx_array_length({ i64, i8* }* %t320)
  %t322 = icmp slt i64 %t319, %t321
  br i1 %t322, label %while_body100, label %while_end101
while_body100:
  %t323 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t324 = load i64, i64* %t318
  %t325 = call i64 @nyx_array_get({ i64, i8* }* %t323, i64 %t324)
  %t326 = load i64, i64* %t317
  %t327 = icmp sgt i64 %t325, %t326
  br i1 %t327, label %then102, label %else103
then102:
  %t328 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t329 = load i64, i64* %t318
  %t330 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t328, i64 %t329)
  store i64 %t330, i64* %t317
  br label %merge104
else103:
  br label %merge104
merge104:
  %t331 = load i64, i64* %t318
  %t332 = add i64 %t331, 1
  store i64 %t332, i64* %t318
  br label %while_cond99
while_end101:
  %t333 = load i64, i64* %t317
  ret i64 %t333
}

define { i64, i8* }* @array_reverse(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  %t336 = alloca i64
  %t337 = alloca i64
  %t345 = alloca i64
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t334 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t335 = call i64 @nyx_array_length({ i64, i8* }* %t334)
  store i64 %t335, i64* %t336
  store i64 0, i64* %t337
  br label %while_cond105
while_cond105:
  %t338 = load i64, i64* %t337
  %t339 = load i64, i64* %t336
  %t340 = sdiv i64 %t339, 2
  %t341 = icmp slt i64 %t338, %t340
  br i1 %t341, label %while_body106, label %while_end107
while_body106:
  %t342 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t343 = load i64, i64* %t337
  %t344 = call i64 @nyx_array_get({ i64, i8* }* %t342, i64 %t343)
  store i64 %t344, i64* %t345
  %t346 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t347 = load i64, i64* %t337
  %t348 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t349 = load i64, i64* %t336
  %t350 = sub i64 %t349, 1
  %t351 = load i64, i64* %t337
  %t352 = sub i64 %t350, %t351
  %t353 = call i64 @nyx_array_get({ i64, i8* }* %t348, i64 %t352)
  %t354 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t355 = load i64, i64* %t336
  %t356 = sub i64 %t355, 1
  %t357 = load i64, i64* %t337
  %t358 = sub i64 %t356, %t357
  %t359 = call i64 @nyx_array_get_tag({ i64, i8* }* %t354, i64 %t358)
  call void @nyx_array_set_tagged({ i64, i8* }* %t346, i64 %t347, i64 %t353, i64 %t359)
  %t360 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t361 = load i64, i64* %t336
  %t362 = sub i64 %t361, 1
  %t363 = load i64, i64* %t337
  %t364 = sub i64 %t362, %t363
  %t365 = load i64, i64* %t345
  call void @nyx_array_set({ i64, i8* }* %t360, i64 %t364, i64 %t365)
  %t366 = load i64, i64* %t337
  %t367 = add i64 %t366, 1
  store i64 %t367, i64* %t337
  br label %while_cond105
while_end107:
  %t368 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %t368
}

define i1 @array_contains_int(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  %val.ptr = alloca i64
  %t369 = alloca i64
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  store i64 %val.param, i64* %val.ptr
  store i64 0, i64* %t369
  br label %while_cond108
while_cond108:
  %t370 = load i64, i64* %t369
  %t371 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t372 = call i64 @nyx_array_length({ i64, i8* }* %t371)
  %t373 = icmp slt i64 %t370, %t372
  br i1 %t373, label %while_body109, label %while_end110
while_body109:
  %t374 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t375 = load i64, i64* %t369
  %t376 = call i64 @nyx_array_get({ i64, i8* }* %t374, i64 %t375)
  %t377 = load i64, i64* %val.ptr
  %t378 = icmp eq i64 %t376, %t377
  br i1 %t378, label %then111, label %else112
then111:
  ret i1 1
else112:
  br label %merge113
merge113:
  %t379 = load i64, i64* %t369
  %t380 = add i64 %t379, 1
  store i64 %t380, i64* %t369
  br label %while_cond108
while_end110:
  ret i1 0
}

define i64 @array_index_of(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  %val.ptr = alloca i64
  %t381 = alloca i64
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  store i64 %val.param, i64* %val.ptr
  store i64 0, i64* %t381
  br label %while_cond114
while_cond114:
  %t382 = load i64, i64* %t381
  %t383 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t384 = call i64 @nyx_array_length({ i64, i8* }* %t383)
  %t385 = icmp slt i64 %t382, %t384
  br i1 %t385, label %while_body115, label %while_end116
while_body115:
  %t386 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t387 = load i64, i64* %t381
  %t388 = call i64 @nyx_array_get({ i64, i8* }* %t386, i64 %t387)
  %t389 = load i64, i64* %val.ptr
  %t390 = icmp eq i64 %t388, %t389
  br i1 %t390, label %then117, label %else118
then117:
  %t391 = load i64, i64* %t381
  ret i64 %t391
else118:
  br label %merge119
merge119:
  %t392 = load i64, i64* %t381
  %t393 = add i64 %t392, 1
  store i64 %t393, i64* %t381
  br label %while_cond114
while_end116:
  %t394 = sub i64 0, 1
  ret i64 %t394
}

define { i64, i8* }* @sort_int(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t395 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t396 = call i8* @GC_malloc(i64 16)
  %t397 = bitcast i8* %t396 to { i8*, i8* }*
  %t398 = bitcast i64 (...)* @__sort_sin_cmp to i8*
  %t399 = getelementptr { i8*, i8* }, { i8*, i8* }* %t397, i32 0, i32 0
  store i8* %t398, i8** %t399
  %t400 = getelementptr { i8*, i8* }, { i8*, i8* }* %t397, i32 0, i32 1
  store i8* null, i8** %t400
  %t401 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %t395, i64 0, i8* %t396)
  ret { i64, i8* }* %t401
}

define { i64, i8* }* @sort_by(
{ i64, i8* }* %arr.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  %cmp.ptr = alloca i8*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  store i8* %cmp.param, i8** %cmp.ptr
  %t402 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t403 = load i8*, i8** %cmp.ptr
  %t404 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %t402, i64 2, i8* %t403)
  ret { i64, i8* }* %t404
}

define i64 @str_compare(
%nyx_string* %a.param, %nyx_string* %b.param) {
  %a.ptr = alloca %nyx_string*
  %b.ptr = alloca %nyx_string*
  %t407 = alloca i64
  %t410 = alloca i64
  %t412 = alloca i64
  %t417 = alloca i64
  %t425 = alloca i64
  %t430 = alloca i64
  store %nyx_string* %a.param, %nyx_string** %a.ptr
  store %nyx_string* %b.param, %nyx_string** %b.ptr
  %t405 = load %nyx_string*, %nyx_string** %a.ptr
  %t406 = call i64 @nyx_string_byte_length(%nyx_string* %t405)
  store i64 %t406, i64* %t407
  %t408 = load %nyx_string*, %nyx_string** %b.ptr
  %t409 = call i64 @nyx_string_byte_length(%nyx_string* %t408)
  store i64 %t409, i64* %t410
  %t411 = load i64, i64* %t407
  store i64 %t411, i64* %t412
  %t413 = load i64, i64* %t410
  %t414 = load i64, i64* %t412
  %t415 = icmp slt i64 %t413, %t414
  br i1 %t415, label %then120, label %else121
then120:
  %t416 = load i64, i64* %t410
  store i64 %t416, i64* %t412
  br label %merge122
else121:
  br label %merge122
merge122:
  store i64 0, i64* %t417
  br label %while_cond123
while_cond123:
  %t418 = load i64, i64* %t417
  %t419 = load i64, i64* %t412
  %t420 = icmp slt i64 %t418, %t419
  br i1 %t420, label %while_body124, label %while_end125
while_body124:
  %t421 = load %nyx_string*, %nyx_string** %a.ptr
  %t422 = load i64, i64* %t417
  %t423 = call i8 @nyx_string_char_at(%nyx_string* %t421, i64 %t422)
  %t424 = zext i8 %t423 to i64
  store i64 %t424, i64* %t425
  %t426 = load %nyx_string*, %nyx_string** %b.ptr
  %t427 = load i64, i64* %t417
  %t428 = call i8 @nyx_string_char_at(%nyx_string* %t426, i64 %t427)
  %t429 = zext i8 %t428 to i64
  store i64 %t429, i64* %t430
  %t431 = load i64, i64* %t425
  %t432 = load i64, i64* %t430
  %t433 = icmp slt i64 %t431, %t432
  br i1 %t433, label %then126, label %else127
then126:
  %t434 = sub i64 0, 1
  ret i64 %t434
else127:
  br label %merge128
merge128:
  %t435 = load i64, i64* %t425
  %t436 = load i64, i64* %t430
  %t437 = icmp sgt i64 %t435, %t436
  br i1 %t437, label %then129, label %else130
then129:
  ret i64 1
else130:
  br label %merge131
merge131:
  %t438 = load i64, i64* %t417
  %t439 = add i64 %t438, 1
  store i64 %t439, i64* %t417
  br label %while_cond123
while_end125:
  %t440 = load i64, i64* %t407
  %t441 = load i64, i64* %t410
  %t442 = icmp slt i64 %t440, %t441
  br i1 %t442, label %then132, label %else133
then132:
  %t443 = sub i64 0, 1
  ret i64 %t443
else133:
  br label %merge134
merge134:
  %t444 = load i64, i64* %t407
  %t445 = load i64, i64* %t410
  %t446 = icmp sgt i64 %t444, %t445
  br i1 %t446, label %then135, label %else136
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
  %i.ptr = alloca i64
  %y.ptr = alloca { i64, i8* }*
  %j.ptr = alloca i64
  %modo.ptr = alloca i64
  %cmp.ptr = alloca i8*
  %t452 = alloca i64
  %t456 = alloca i64
  %t470 = alloca %nyx_string*
  %t475 = alloca %nyx_string*
  store { i64, i8* }* %x.param, { i64, i8* }** %x.ptr
  store i64 %i.param, i64* %i.ptr
  store { i64, i8* }* %y.param, { i64, i8* }** %y.ptr
  store i64 %j.param, i64* %j.ptr
  store i64 %modo.param, i64* %modo.ptr
  store i8* %cmp.param, i8** %cmp.ptr
  %t447 = load i64, i64* %modo.ptr
  %t448 = icmp eq i64 %t447, 0
  br i1 %t448, label %then138, label %else139
then138:
  %t449 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %t450 = load i64, i64* %i.ptr
  %t451 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t449, i64 %t450)
  store i64 %t451, i64* %t452
  %t453 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %t454 = load i64, i64* %j.ptr
  %t455 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t453, i64 %t454)
  store i64 %t455, i64* %t456
  %t457 = load i64, i64* %t452
  %t458 = load i64, i64* %t456
  %t459 = icmp slt i64 %t457, %t458
  br i1 %t459, label %then141, label %else142
then141:
  %t460 = sub i64 0, 1
  ret i64 %t460
else142:
  br label %merge143
merge143:
  %t461 = load i64, i64* %t452
  %t462 = load i64, i64* %t456
  %t463 = icmp sgt i64 %t461, %t462
  br i1 %t463, label %then144, label %else145
then144:
  ret i64 1
else145:
  br label %merge146
merge146:
  ret i64 0
else139:
  br label %merge140
merge140:
  %t464 = load i64, i64* %modo.ptr
  %t465 = icmp eq i64 %t464, 1
  br i1 %t465, label %then147, label %else148
then147:
  %t466 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %t467 = load i64, i64* %i.ptr
  %t468 = call i64 @nyx_array_get_checked({ i64, i8* }* %t466, i64 %t467, i64 2)
  %t469 = inttoptr i64 %t468 to %nyx_string*
  store %nyx_string* %t469, %nyx_string** %t470
  %t471 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %t472 = load i64, i64* %j.ptr
  %t473 = call i64 @nyx_array_get_checked({ i64, i8* }* %t471, i64 %t472, i64 2)
  %t474 = inttoptr i64 %t473 to %nyx_string*
  store %nyx_string* %t474, %nyx_string** %t475
  %t476 = load %nyx_string*, %nyx_string** %t470
  %t477 = load %nyx_string*, %nyx_string** %t475
  %t478 = call i64 @str_compare(%nyx_string* %t476, %nyx_string* %t477)
  ret i64 %t478
else148:
  br label %merge149
merge149:
  %t479 = load { i64, i8* }*, { i64, i8* }** %x.ptr
  %t480 = load i64, i64* %i.ptr
  %t481 = call i64 @nyx_array_get({ i64, i8* }* %t479, i64 %t480)
  %t482 = load { i64, i8* }*, { i64, i8* }** %y.ptr
  %t483 = load i64, i64* %j.ptr
  %t484 = call i64 @nyx_array_get({ i64, i8* }* %t482, i64 %t483)
  %t485 = load i8*, i8** %cmp.ptr
  %t486 = bitcast i8* %t485 to { i8*, i8* }*
  %t487 = getelementptr { i8*, i8* }, { i8*, i8* }* %t486, i32 0, i32 0
  %t488 = load i8*, i8** %t487
  %t489 = getelementptr { i8*, i8* }, { i8*, i8* }* %t486, i32 0, i32 1
  %t490 = load i8*, i8** %t489
  %t491 = icmp ne i8* %t490, null
  br i1 %t491, label %cl_env150, label %cl_noenv151
cl_env150:
  %t492 = bitcast i8* %t488 to i64 (i8*, i64, i64)*
  %t493 = call i64 %t492(i8* %t490, i64 %t481, i64 %t484)
  br label %cl_merge152
cl_noenv151:
  %t494 = bitcast i8* %t488 to i64 (i64, i64)*
  %t495 = call i64 %t494(i64 %t481, i64 %t484)
  br label %cl_merge152
cl_merge152:
  %t496 = phi i64 [%t493, %cl_env150], [%t495, %cl_noenv151]
  ret i64 %t496
}

define internal { i64, i8* }* @__sort_merge(
{ i64, i8* }* %arr.param, i64 %modo.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  %modo.ptr = alloca i64
  %cmp.ptr = alloca i8*
  %t499 = alloca i64
  %t503 = alloca i64
  %t505 = alloca { i64, i8* }*
  %t506 = alloca i64
  %t513 = alloca i64
  %t520 = alloca i64
  %t525 = alloca i64
  %t526 = alloca i1
  %t574 = alloca { i64, i8* }*
  %t575 = alloca i64
  %t589 = alloca { i64, i8* }*
  %t591 = alloca { i64, i8* }*
  %t592 = alloca i1
  %t594 = alloca i64
  %t598 = alloca i64
  %t605 = alloca i64
  %t614 = alloca i64
  %t620 = alloca i64
  %t622 = alloca i64
  %t624 = alloca i64
  %t625 = alloca i1
  %t695 = alloca { i64, i8* }*
  %t704 = alloca i64
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  store i64 %modo.param, i64* %modo.ptr
  store i8* %cmp.param, i8** %cmp.ptr
  %t497 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t498 = call i64 @nyx_array_length({ i64, i8* }* %t497)
  store i64 %t498, i64* %t499
  %t500 = load i64, i64* %t499
  %t501 = icmp sle i64 %t500, 1
  br i1 %t501, label %then153, label %else154
then153:
  %t502 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %t502
else154:
  br label %merge155
merge155:
  store i64 32, i64* %t503
  %t504 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %t504, i64 0, i64 1)
  store { i64, i8* }* %t504, { i64, i8* }** %t505
  store i64 0, i64* %t506
  br label %while_cond156
while_cond156:
  %t507 = load i64, i64* %t506
  %t508 = load i64, i64* %t499
  %t509 = icmp slt i64 %t507, %t508
  br i1 %t509, label %while_body157, label %while_end158
while_body157:
  %t510 = load i64, i64* %t506
  %t511 = load i64, i64* %t503
  %t512 = add i64 %t510, %t511
  store i64 %t512, i64* %t513
  %t514 = load i64, i64* %t513
  %t515 = load i64, i64* %t499
  %t516 = icmp sgt i64 %t514, %t515
  br i1 %t516, label %then159, label %else160
then159:
  %t517 = load i64, i64* %t499
  store i64 %t517, i64* %t513
  br label %merge161
else160:
  br label %merge161
merge161:
  %t518 = load i64, i64* %t506
  %t519 = add i64 %t518, 1
  store i64 %t519, i64* %t520
  br label %while_cond162
while_cond162:
  %t521 = load i64, i64* %t520
  %t522 = load i64, i64* %t513
  %t523 = icmp slt i64 %t521, %t522
  br i1 %t523, label %while_body163, label %while_end164
while_body163:
  %t524 = load i64, i64* %t520
  store i64 %t524, i64* %t525
  br label %while_cond165
while_cond165:
  store i1 false, i1* %t526
  %t527 = load i64, i64* %t525
  %t528 = load i64, i64* %t506
  %t529 = icmp sgt i64 %t527, %t528
  br i1 %t529, label %sc_and_rhs168, label %sc_and_end169
sc_and_rhs168:
  %t530 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t531 = load i64, i64* %t525
  %t532 = sub i64 %t531, 1
  %t533 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t534 = load i64, i64* %t525
  %t535 = load i64, i64* %modo.ptr
  %t536 = load i8*, i8** %cmp.ptr
  %t537 = call i64 @__sort_cmp({ i64, i8* }* %t530, i64 %t532, { i64, i8* }* %t533, i64 %t534, i64 %t535, i8* %t536)
  %t538 = icmp sgt i64 %t537, 0
  store i1 %t538, i1* %t526
  br label %sc_and_end169
sc_and_end169:
  %t539 = load i1, i1* %t526
  br i1 %t539, label %while_body166, label %while_end167
while_body166:
  %t540 = load { i64, i8* }*, { i64, i8* }** %t505
  %t541 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t542 = load i64, i64* %t525
  %t543 = sub i64 %t542, 1
  %t544 = call i64 @nyx_array_get({ i64, i8* }* %t541, i64 %t543)
  %t545 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t546 = load i64, i64* %t525
  %t547 = sub i64 %t546, 1
  %t548 = call i64 @nyx_array_get_tag({ i64, i8* }* %t545, i64 %t547)
  call void @nyx_array_set_tagged({ i64, i8* }* %t540, i64 0, i64 %t544, i64 %t548)
  %t549 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t550 = load i64, i64* %t525
  %t551 = sub i64 %t550, 1
  %t552 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t553 = load i64, i64* %t525
  %t554 = call i64 @nyx_array_get({ i64, i8* }* %t552, i64 %t553)
  %t555 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t556 = load i64, i64* %t525
  %t557 = call i64 @nyx_array_get_tag({ i64, i8* }* %t555, i64 %t556)
  call void @nyx_array_set_tagged({ i64, i8* }* %t549, i64 %t551, i64 %t554, i64 %t557)
  %t558 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t559 = load i64, i64* %t525
  %t560 = load { i64, i8* }*, { i64, i8* }** %t505
  %t561 = call i64 @nyx_array_get({ i64, i8* }* %t560, i64 0)
  %t562 = load { i64, i8* }*, { i64, i8* }** %t505
  %t563 = call i64 @nyx_array_get_tag({ i64, i8* }* %t562, i64 0)
  call void @nyx_array_set_tagged({ i64, i8* }* %t558, i64 %t559, i64 %t561, i64 %t563)
  %t564 = load i64, i64* %t525
  %t565 = sub i64 %t564, 1
  store i64 %t565, i64* %t525
  br label %while_cond165
while_end167:
  %t566 = load i64, i64* %t520
  %t567 = add i64 %t566, 1
  store i64 %t567, i64* %t520
  br label %while_cond162
while_end164:
  %t568 = load i64, i64* %t513
  store i64 %t568, i64* %t506
  br label %while_cond156
while_end158:
  %t569 = load i64, i64* %t499
  %t570 = load i64, i64* %t503
  %t571 = icmp sle i64 %t569, %t570
  br i1 %t571, label %then170, label %else171
then170:
  %t572 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %t572
else171:
  br label %merge172
merge172:
  %t573 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t573, { i64, i8* }** %t574
  store i64 0, i64* %t575
  br label %while_cond173
while_cond173:
  %t576 = load i64, i64* %t575
  %t577 = load i64, i64* %t499
  %t578 = icmp slt i64 %t576, %t577
  br i1 %t578, label %while_body174, label %while_end175
while_body174:
  %t579 = load { i64, i8* }*, { i64, i8* }** %t574
  %t580 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t581 = load i64, i64* %t575
  %t582 = call i64 @nyx_array_get({ i64, i8* }* %t580, i64 %t581)
  %t583 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t584 = load i64, i64* %t575
  %t585 = call i64 @nyx_array_get_tag({ i64, i8* }* %t583, i64 %t584)
  call void @nyx_array_push_tagged({ i64, i8* }* %t579, i64 %t582, i64 %t585)
  %t586 = load i64, i64* %t575
  %t587 = add i64 %t586, 1
  store i64 %t587, i64* %t575
  br label %while_cond173
while_end175:
  %t588 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  store { i64, i8* }* %t588, { i64, i8* }** %t589
  %t590 = load { i64, i8* }*, { i64, i8* }** %t574
  store { i64, i8* }* %t590, { i64, i8* }** %t591
  store i1 1, i1* %t592
  %t593 = load i64, i64* %t503
  store i64 %t593, i64* %t594
  br label %while_cond176
while_cond176:
  %t595 = load i64, i64* %t594
  %t596 = load i64, i64* %t499
  %t597 = icmp slt i64 %t595, %t596
  br i1 %t597, label %while_body177, label %while_end178
while_body177:
  store i64 0, i64* %t598
  br label %while_cond179
while_cond179:
  %t599 = load i64, i64* %t598
  %t600 = load i64, i64* %t499
  %t601 = icmp slt i64 %t599, %t600
  br i1 %t601, label %while_body180, label %while_end181
while_body180:
  %t602 = load i64, i64* %t598
  %t603 = load i64, i64* %t594
  %t604 = add i64 %t602, %t603
  store i64 %t604, i64* %t605
  %t606 = load i64, i64* %t605
  %t607 = load i64, i64* %t499
  %t608 = icmp sgt i64 %t606, %t607
  br i1 %t608, label %then182, label %else183
then182:
  %t609 = load i64, i64* %t499
  store i64 %t609, i64* %t605
  br label %merge184
else183:
  br label %merge184
merge184:
  %t610 = load i64, i64* %t598
  %t611 = load i64, i64* %t594
  %t612 = mul i64 2, %t611
  %t613 = add i64 %t610, %t612
  store i64 %t613, i64* %t614
  %t615 = load i64, i64* %t614
  %t616 = load i64, i64* %t499
  %t617 = icmp sgt i64 %t615, %t616
  br i1 %t617, label %then185, label %else186
then185:
  %t618 = load i64, i64* %t499
  store i64 %t618, i64* %t614
  br label %merge187
else186:
  br label %merge187
merge187:
  %t619 = load i64, i64* %t598
  store i64 %t619, i64* %t620
  %t621 = load i64, i64* %t605
  store i64 %t621, i64* %t622
  %t623 = load i64, i64* %t598
  store i64 %t623, i64* %t624
  br label %while_cond188
while_cond188:
  store i1 false, i1* %t625
  %t626 = load i64, i64* %t620
  %t627 = load i64, i64* %t605
  %t628 = icmp slt i64 %t626, %t627
  br i1 %t628, label %sc_and_rhs191, label %sc_and_end192
sc_and_rhs191:
  %t629 = load i64, i64* %t622
  %t630 = load i64, i64* %t614
  %t631 = icmp slt i64 %t629, %t630
  store i1 %t631, i1* %t625
  br label %sc_and_end192
sc_and_end192:
  %t632 = load i1, i1* %t625
  br i1 %t632, label %while_body189, label %while_end190
while_body189:
  %t633 = load { i64, i8* }*, { i64, i8* }** %t589
  %t634 = load i64, i64* %t620
  %t635 = load { i64, i8* }*, { i64, i8* }** %t589
  %t636 = load i64, i64* %t622
  %t637 = load i64, i64* %modo.ptr
  %t638 = load i8*, i8** %cmp.ptr
  %t639 = call i64 @__sort_cmp({ i64, i8* }* %t633, i64 %t634, { i64, i8* }* %t635, i64 %t636, i64 %t637, i8* %t638)
  %t640 = icmp sle i64 %t639, 0
  br i1 %t640, label %then193, label %else194
then193:
  %t641 = load { i64, i8* }*, { i64, i8* }** %t591
  %t642 = load i64, i64* %t624
  %t643 = load { i64, i8* }*, { i64, i8* }** %t589
  %t644 = load i64, i64* %t620
  %t645 = call i64 @nyx_array_get({ i64, i8* }* %t643, i64 %t644)
  %t646 = load { i64, i8* }*, { i64, i8* }** %t589
  %t647 = load i64, i64* %t620
  %t648 = call i64 @nyx_array_get_tag({ i64, i8* }* %t646, i64 %t647)
  call void @nyx_array_set_tagged({ i64, i8* }* %t641, i64 %t642, i64 %t645, i64 %t648)
  %t649 = load i64, i64* %t620
  %t650 = add i64 %t649, 1
  store i64 %t650, i64* %t620
  br label %merge195
else194:
  %t651 = load { i64, i8* }*, { i64, i8* }** %t591
  %t652 = load i64, i64* %t624
  %t653 = load { i64, i8* }*, { i64, i8* }** %t589
  %t654 = load i64, i64* %t622
  %t655 = call i64 @nyx_array_get({ i64, i8* }* %t653, i64 %t654)
  %t656 = load { i64, i8* }*, { i64, i8* }** %t589
  %t657 = load i64, i64* %t622
  %t658 = call i64 @nyx_array_get_tag({ i64, i8* }* %t656, i64 %t657)
  call void @nyx_array_set_tagged({ i64, i8* }* %t651, i64 %t652, i64 %t655, i64 %t658)
  %t659 = load i64, i64* %t622
  %t660 = add i64 %t659, 1
  store i64 %t660, i64* %t622
  br label %merge195
merge195:
  %t661 = load i64, i64* %t624
  %t662 = add i64 %t661, 1
  store i64 %t662, i64* %t624
  br label %while_cond188
while_end190:
  br label %while_cond196
while_cond196:
  %t663 = load i64, i64* %t620
  %t664 = load i64, i64* %t605
  %t665 = icmp slt i64 %t663, %t664
  br i1 %t665, label %while_body197, label %while_end198
while_body197:
  %t666 = load { i64, i8* }*, { i64, i8* }** %t591
  %t667 = load i64, i64* %t624
  %t668 = load { i64, i8* }*, { i64, i8* }** %t589
  %t669 = load i64, i64* %t620
  %t670 = call i64 @nyx_array_get({ i64, i8* }* %t668, i64 %t669)
  %t671 = load { i64, i8* }*, { i64, i8* }** %t589
  %t672 = load i64, i64* %t620
  %t673 = call i64 @nyx_array_get_tag({ i64, i8* }* %t671, i64 %t672)
  call void @nyx_array_set_tagged({ i64, i8* }* %t666, i64 %t667, i64 %t670, i64 %t673)
  %t674 = load i64, i64* %t620
  %t675 = add i64 %t674, 1
  store i64 %t675, i64* %t620
  %t676 = load i64, i64* %t624
  %t677 = add i64 %t676, 1
  store i64 %t677, i64* %t624
  br label %while_cond196
while_end198:
  br label %while_cond199
while_cond199:
  %t678 = load i64, i64* %t622
  %t679 = load i64, i64* %t614
  %t680 = icmp slt i64 %t678, %t679
  br i1 %t680, label %while_body200, label %while_end201
while_body200:
  %t681 = load { i64, i8* }*, { i64, i8* }** %t591
  %t682 = load i64, i64* %t624
  %t683 = load { i64, i8* }*, { i64, i8* }** %t589
  %t684 = load i64, i64* %t622
  %t685 = call i64 @nyx_array_get({ i64, i8* }* %t683, i64 %t684)
  %t686 = load { i64, i8* }*, { i64, i8* }** %t589
  %t687 = load i64, i64* %t622
  %t688 = call i64 @nyx_array_get_tag({ i64, i8* }* %t686, i64 %t687)
  call void @nyx_array_set_tagged({ i64, i8* }* %t681, i64 %t682, i64 %t685, i64 %t688)
  %t689 = load i64, i64* %t622
  %t690 = add i64 %t689, 1
  store i64 %t690, i64* %t622
  %t691 = load i64, i64* %t624
  %t692 = add i64 %t691, 1
  store i64 %t692, i64* %t624
  br label %while_cond199
while_end201:
  %t693 = load i64, i64* %t614
  store i64 %t693, i64* %t598
  br label %while_cond179
while_end181:
  %t694 = load { i64, i8* }*, { i64, i8* }** %t589
  store { i64, i8* }* %t694, { i64, i8* }** %t695
  %t696 = load { i64, i8* }*, { i64, i8* }** %t591
  store { i64, i8* }* %t696, { i64, i8* }** %t589
  %t697 = load { i64, i8* }*, { i64, i8* }** %t695
  store { i64, i8* }* %t697, { i64, i8* }** %t591
  %t698 = load i1, i1* %t592
  %t699 = xor i1 %t698, true
  store i1 %t699, i1* %t592
  %t700 = load i64, i64* %t594
  %t701 = mul i64 %t700, 2
  store i64 %t701, i64* %t594
  br label %while_cond176
while_end178:
  %t702 = load i1, i1* %t592
  %t703 = xor i1 %t702, true
  br i1 %t703, label %then202, label %else203
then202:
  store i64 0, i64* %t704
  br label %while_cond205
while_cond205:
  %t705 = load i64, i64* %t704
  %t706 = load i64, i64* %t499
  %t707 = icmp slt i64 %t705, %t706
  br i1 %t707, label %while_body206, label %while_end207
while_body206:
  %t708 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t709 = load i64, i64* %t704
  %t710 = load { i64, i8* }*, { i64, i8* }** %t589
  %t711 = load i64, i64* %t704
  %t712 = call i64 @nyx_array_get({ i64, i8* }* %t710, i64 %t711)
  %t713 = load { i64, i8* }*, { i64, i8* }** %t589
  %t714 = load i64, i64* %t704
  %t715 = call i64 @nyx_array_get_tag({ i64, i8* }* %t713, i64 %t714)
  call void @nyx_array_set_tagged({ i64, i8* }* %t708, i64 %t709, i64 %t712, i64 %t715)
  %t716 = load i64, i64* %t704
  %t717 = add i64 %t716, 1
  store i64 %t717, i64* %t704
  br label %while_cond205
while_end207:
  br label %merge204
else203:
  br label %merge204
merge204:
  %t718 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %t718
}

define internal i64 @__sort_sin_cmp(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  %b.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  store i64 %b.param, i64* %b.ptr
  ret i64 0
}

define { i64, i8* }* @sort_str(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t719 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t720 = call i8* @GC_malloc(i64 16)
  %t721 = bitcast i8* %t720 to { i8*, i8* }*
  %t722 = bitcast i64 (...)* @__sort_sin_cmp to i8*
  %t723 = getelementptr { i8*, i8* }, { i8*, i8* }* %t721, i32 0, i32 0
  store i8* %t722, i8** %t723
  %t724 = getelementptr { i8*, i8* }, { i8*, i8* }* %t721, i32 0, i32 1
  store i8* null, i8** %t724
  %t725 = call { i64, i8* }* @__sort_merge({ i64, i8* }* %t719, i64 1, i8* %t720)
  ret { i64, i8* }* %t725
}

define %nyx_string* @read_text(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t726 = load %nyx_string*, %nyx_string** %path.ptr
  %t727 = call i8* @nyx_string_to_cstr(%nyx_string* %t726)
  %t728 = call %nyx_string* @nyx_read_file(i8* %t727)
  ret %nyx_string* %t728
}

define i64 @write_text(
%nyx_string* %path.param, %nyx_string* %content.param) {
  %path.ptr = alloca %nyx_string*
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %t729 = load %nyx_string*, %nyx_string** %path.ptr
  %t730 = load %nyx_string*, %nyx_string** %content.ptr
  %t731 = ptrtoint %nyx_string* %t730 to i64
  %t732 = call i8* @nyx_string_to_cstr(%nyx_string* %t729)
  %t733 = inttoptr i64 %t731 to %nyx_string*
  %t734 = call i1 @nyx_write_file_safe(i8* %t732, %nyx_string* %t733)
  ret i64 0
}

define i8* @map_new(
) {
  %t735 = call i8* @nyx_map_new(i32 0)
  ret i8* %t735
}

define i64 @map_put(
i8* %m.param, %nyx_string* %k.param, i64 %v.param) {
  %m.ptr = alloca i8*
  %k.ptr = alloca %nyx_string*
  %v.ptr = alloca i64
  store i8* %m.param, i8** %m.ptr
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  store i64 %v.param, i64* %v.ptr
  %t736 = load i8*, i8** %m.ptr
  %t737 = load %nyx_string*, %nyx_string** %k.ptr
  %t738 = load i64, i64* %v.ptr
  %t739 = call i8* @nyx_string_to_cstr(%nyx_string* %t737)
  call void @nyx_map_insert_int(i8* %t736, i8* %t739, i64 %t738)
  ret i64 0
}

define i64 @map_get_int(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  %k.ptr = alloca %nyx_string*
  store i8* %m.param, i8** %m.ptr
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %t740 = load i8*, i8** %m.ptr
  %t741 = load %nyx_string*, %nyx_string** %k.ptr
  %t742 = call i8* @nyx_string_to_cstr(%nyx_string* %t741)
  %t743 = call i64 @nyx_map_get_int(i8* %t740, i8* %t742)
  ret i64 %t743
}

define i1 @map_has(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  %k.ptr = alloca %nyx_string*
  store i8* %m.param, i8** %m.ptr
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %t744 = load i8*, i8** %m.ptr
  %t745 = load %nyx_string*, %nyx_string** %k.ptr
  %t746 = call i8* @nyx_string_to_cstr(%nyx_string* %t745)
  %t747 = call i1 @nyx_map_contains_str(i8* %t744, i8* %t746)
  ret i1 %t747
}

define internal i64 @map_size(
i8* %m.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %t748 = load i8*, i8** %m.ptr
  %t749 = call i64 @nyx_map_length(i8* %t748)
  ret i64 %t749
}

define %Error @err_new(
i64 %code.param, %nyx_string* %kind.param, %nyx_string* %msg.param) {
  %code.ptr = alloca i64
  %kind.ptr = alloca %nyx_string*
  %msg.ptr = alloca %nyx_string*
  store i64 %code.param, i64* %code.ptr
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %t750 = getelementptr %Error, %Error* null, i32 1
  %t751 = ptrtoint %Error* %t750 to i64
  %t752 = call i8* @GC_malloc(i64 %t751)
  %t753 = bitcast i8* %t752 to %Error*
  %t754 = load i64, i64* %code.ptr
  %t755 = getelementptr %Error, %Error* %t753, i32 0, i32 0
  store i64 %t754, i64* %t755
  %t756 = load %nyx_string*, %nyx_string** %kind.ptr
  %t757 = getelementptr %Error, %Error* %t753, i32 0, i32 1
  store %nyx_string* %t756, %nyx_string** %t757
  %t758 = load %nyx_string*, %nyx_string** %msg.ptr
  %t759 = getelementptr %Error, %Error* %t753, i32 0, i32 2
  store %nyx_string* %t758, %nyx_string** %t759
  %t760 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %t761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t760, i64 0)
  %t762 = getelementptr %Error, %Error* %t753, i32 0, i32 3
  store %nyx_string* %t761, %nyx_string** %t762
  %t763 = load %Error, %Error* %t753
  ret %Error %t763
}

define %Error @err_stage(
i64 %code.param, %nyx_string* %kind.param, %nyx_string* %msg.param, %nyx_string* %stage.param) {
  %code.ptr = alloca i64
  %kind.ptr = alloca %nyx_string*
  %msg.ptr = alloca %nyx_string*
  %stage.ptr = alloca %nyx_string*
  store i64 %code.param, i64* %code.ptr
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  store %nyx_string* %stage.param, %nyx_string** %stage.ptr
  %t764 = getelementptr %Error, %Error* null, i32 1
  %t765 = ptrtoint %Error* %t764 to i64
  %t766 = call i8* @GC_malloc(i64 %t765)
  %t767 = bitcast i8* %t766 to %Error*
  %t768 = load i64, i64* %code.ptr
  %t769 = getelementptr %Error, %Error* %t767, i32 0, i32 0
  store i64 %t768, i64* %t769
  %t770 = load %nyx_string*, %nyx_string** %kind.ptr
  %t771 = getelementptr %Error, %Error* %t767, i32 0, i32 1
  store %nyx_string* %t770, %nyx_string** %t771
  %t772 = load %nyx_string*, %nyx_string** %msg.ptr
  %t773 = getelementptr %Error, %Error* %t767, i32 0, i32 2
  store %nyx_string* %t772, %nyx_string** %t773
  %t774 = load %nyx_string*, %nyx_string** %stage.ptr
  %t775 = getelementptr %Error, %Error* %t767, i32 0, i32 3
  store %nyx_string* %t774, %nyx_string** %t775
  %t776 = load %Error, %Error* %t767
  ret %Error %t776
}

define %nyx_string* @errno_to_kind(
i64 %code.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %t777 = load i64, i64* %code.ptr
  %t778 = icmp eq i64 %t777, 2
  br i1 %t778, label %then208, label %else209
then208:
  %t779 = getelementptr [10 x i8], [10 x i8]* @.str3, i32 0, i32 0
  %t780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t779, i64 9)
  ret %nyx_string* %t780
else209:
  br label %merge210
merge210:
  %t781 = load i64, i64* %code.ptr
  %t782 = icmp eq i64 %t781, 13
  br i1 %t782, label %then211, label %else212
then211:
  %t783 = getelementptr [11 x i8], [11 x i8]* @.str4, i32 0, i32 0
  %t784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t783, i64 10)
  ret %nyx_string* %t784
else212:
  br label %merge213
merge213:
  %t785 = load i64, i64* %code.ptr
  %t786 = icmp eq i64 %t785, 12
  br i1 %t786, label %then214, label %else215
then214:
  %t787 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %t788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t787, i64 3)
  ret %nyx_string* %t788
else215:
  br label %merge216
merge216:
  %t789 = load i64, i64* %code.ptr
  %t790 = icmp eq i64 %t789, 22
  br i1 %t790, label %then217, label %else218
then217:
  %t791 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %t792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t791, i64 7)
  ret %nyx_string* %t792
else218:
  br label %merge219
merge219:
  %t793 = load i64, i64* %code.ptr
  %t794 = icmp eq i64 %t793, 110
  br i1 %t794, label %then220, label %else221
then220:
  %t795 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %t796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t795, i64 7)
  ret %nyx_string* %t796
else221:
  br label %merge222
merge222:
  %t797 = load i64, i64* %code.ptr
  %t798 = icmp eq i64 %t797, 111
  br i1 %t798, label %then223, label %else224
then223:
  %t799 = getelementptr [11 x i8], [11 x i8]* @.str8, i32 0, i32 0
  %t800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t799, i64 10)
  ret %nyx_string* %t800
else224:
  br label %merge225
merge225:
  %t801 = load i64, i64* %code.ptr
  %t802 = icmp eq i64 %t801, 98
  br i1 %t802, label %then226, label %else227
then226:
  %t803 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %t804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t803, i64 6)
  ret %nyx_string* %t804
else227:
  br label %merge228
merge228:
  %t805 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %t806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t805, i64 2)
  ret %nyx_string* %t806
}

define %nyx_string* @error_to_string(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %t807 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %t808 = load %nyx_string*, %nyx_string** %t807
  %t809 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %t810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t809, i64 2)
  %t811 = call %nyx_string* @nyx_string_concat(%nyx_string* %t808, %nyx_string* %t810)
  %t812 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 2
  %t813 = load %nyx_string*, %nyx_string** %t812
  %t814 = call %nyx_string* @nyx_string_concat(%nyx_string* %t811, %nyx_string* %t813)
  %t815 = getelementptr [8 x i8], [8 x i8]* @.str12, i32 0, i32 0
  %t816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t815, i64 7)
  %t817 = call %nyx_string* @nyx_string_concat(%nyx_string* %t814, %nyx_string* %t816)
  %t818 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 0
  %t819 = load i64, i64* %t818
  %t820 = call %nyx_string* @nyx_string_from_int(i64 %t819)
  %t821 = call %nyx_string* @nyx_string_concat(%nyx_string* %t817, %nyx_string* %t820)
  %t822 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %t823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t822, i64 1)
  %t824 = call %nyx_string* @nyx_string_concat(%nyx_string* %t821, %nyx_string* %t823)
  ret %nyx_string* %t824
}

define i1 @is_eof(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %t825 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %t826 = load %nyx_string*, %nyx_string** %t825
  %t827 = getelementptr [4 x i8], [4 x i8]* @.str14, i32 0, i32 0
  %t828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t827, i64 3)
  %t829 = call i1 @nyx_string_equals(%nyx_string* %t826, %nyx_string* %t828)
  ret i1 %t829
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t832 = alloca %nyx_string*
  %t834 = alloca i64
  %t835 = alloca i64
  %t861 = alloca %nyx_string*
  %t862 = alloca i1
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t830 = load %nyx_string*, %nyx_string** %line.ptr
  %t831 = call %nyx_string* @nyx_string_trim(%nyx_string* %t830)
  store %nyx_string* %t831, %nyx_string** %t832
  %t833 = sub i64 0, 1
  store i64 %t833, i64* %t834
  store i64 0, i64* %t835
  br label %while_cond229
while_cond229:
  %t836 = load i64, i64* %t835
  %t837 = load %nyx_string*, %nyx_string** %t832
  %t838 = call i64 @nyx_string_byte_length(%nyx_string* %t837)
  %t839 = icmp slt i64 %t836, %t838
  br i1 %t839, label %while_body230, label %while_end231
while_body230:
  %t840 = load %nyx_string*, %nyx_string** %t832
  %t841 = load i64, i64* %t835
  %t842 = call i8 @nyx_string_char_at(%nyx_string* %t840, i64 %t841)
  %t843 = zext i8 %t842 to i64
  %t844 = icmp eq i64 %t843, 61
  br i1 %t844, label %then232, label %else233
then232:
  %t845 = load i64, i64* %t835
  store i64 %t845, i64* %t834
  %t846 = load %nyx_string*, %nyx_string** %t832
  %t847 = call i64 @nyx_string_byte_length(%nyx_string* %t846)
  store i64 %t847, i64* %t835
  br label %merge234
else233:
  %t848 = load i64, i64* %t835
  %t849 = add i64 %t848, 1
  store i64 %t849, i64* %t835
  br label %merge234
merge234:
  br label %while_cond229
while_end231:
  %t850 = load i64, i64* %t834
  %t851 = icmp slt i64 %t850, 0
  br i1 %t851, label %then235, label %else236
then235:
  %t852 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %t853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t852, i64 0)
  ret %nyx_string* %t853
else236:
  br label %merge237
merge237:
  %t854 = load %nyx_string*, %nyx_string** %t832
  %t855 = load i64, i64* %t834
  %t856 = add i64 %t855, 1
  %t857 = load %nyx_string*, %nyx_string** %t832
  %t858 = call i64 @nyx_string_byte_length(%nyx_string* %t857)
  %t859 = call %nyx_string* @nyx_string_substring(%nyx_string* %t854, i64 %t856, i64 %t858)
  %t860 = call %nyx_string* @nyx_string_trim(%nyx_string* %t859)
  store %nyx_string* %t860, %nyx_string** %t861
  store i1 false, i1* %t862
  %t863 = load %nyx_string*, %nyx_string** %t861
  %t864 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %t865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t864, i64 1)
  %t866 = call i1 @nyx_string_starts_with(%nyx_string* %t863, %nyx_string* %t865)
  br i1 %t866, label %sc_and_rhs238, label %sc_and_end239
sc_and_rhs238:
  %t867 = load %nyx_string*, %nyx_string** %t861
  %t868 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %t869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t868, i64 1)
  %t870 = call i1 @nyx_string_ends_with(%nyx_string* %t867, %nyx_string* %t869)
  store i1 %t870, i1* %t862
  br label %sc_and_end239
sc_and_end239:
  %t871 = load i1, i1* %t862
  br i1 %t871, label %then240, label %else241
then240:
  %t872 = load %nyx_string*, %nyx_string** %t861
  %t873 = load %nyx_string*, %nyx_string** %t861
  %t874 = call i64 @nyx_string_byte_length(%nyx_string* %t873)
  %t875 = sub i64 %t874, 1
  %t876 = call %nyx_string* @nyx_string_substring(%nyx_string* %t872, i64 1, i64 %t875)
  ret %nyx_string* %t876
else241:
  br label %merge242
merge242:
  %t877 = load %nyx_string*, %nyx_string** %t861
  ret %nyx_string* %t877
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t880 = alloca %nyx_string*
  %t882 = alloca i64
  %t883 = alloca i64
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t878 = load %nyx_string*, %nyx_string** %line.ptr
  %t879 = call %nyx_string* @nyx_string_trim(%nyx_string* %t878)
  store %nyx_string* %t879, %nyx_string** %t880
  %t881 = sub i64 0, 1
  store i64 %t881, i64* %t882
  store i64 0, i64* %t883
  br label %while_cond243
while_cond243:
  %t884 = load i64, i64* %t883
  %t885 = load %nyx_string*, %nyx_string** %t880
  %t886 = call i64 @nyx_string_byte_length(%nyx_string* %t885)
  %t887 = icmp slt i64 %t884, %t886
  br i1 %t887, label %while_body244, label %while_end245
while_body244:
  %t888 = load %nyx_string*, %nyx_string** %t880
  %t889 = load i64, i64* %t883
  %t890 = call i8 @nyx_string_char_at(%nyx_string* %t888, i64 %t889)
  %t891 = zext i8 %t890 to i64
  %t892 = icmp eq i64 %t891, 61
  br i1 %t892, label %then246, label %else247
then246:
  %t893 = load i64, i64* %t883
  store i64 %t893, i64* %t882
  %t894 = load %nyx_string*, %nyx_string** %t880
  %t895 = call i64 @nyx_string_byte_length(%nyx_string* %t894)
  store i64 %t895, i64* %t883
  br label %merge248
else247:
  %t896 = load i64, i64* %t883
  %t897 = add i64 %t896, 1
  store i64 %t897, i64* %t883
  br label %merge248
merge248:
  br label %while_cond243
while_end245:
  %t898 = load i64, i64* %t882
  %t899 = icmp slt i64 %t898, 0
  br i1 %t899, label %then249, label %else250
then249:
  %t900 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %t901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t900, i64 0)
  ret %nyx_string* %t901
else250:
  br label %merge251
merge251:
  %t902 = load %nyx_string*, %nyx_string** %t880
  %t903 = load i64, i64* %t882
  %t904 = call %nyx_string* @nyx_string_substring(%nyx_string* %t902, i64 0, i64 %t903)
  %t905 = call %nyx_string* @nyx_string_trim(%nyx_string* %t904)
  ret %nyx_string* %t905
}

define internal %TestConfig @load_test_config(
) {
  %t931 = alloca %TestConfig
  %t942 = alloca %nyx_string*
  %t947 = alloca { i64, i8* }*
  %t948 = alloca i1
  %t949 = alloca i1
  %t950 = alloca i64
  %t953 = alloca %nyx_string*
  %t956 = alloca %nyx_string*
  %t959 = alloca %nyx_string*
  %t962 = alloca %nyx_string*
  %t965 = alloca %nyx_string*
  %t968 = alloca %nyx_string*
  %t971 = alloca %nyx_string*
  %t974 = alloca %nyx_string*
  %t977 = alloca %nyx_string*
  %t980 = alloca %nyx_string*
  %t983 = alloca %nyx_string*
  %t992 = alloca %nyx_string*
  %t995 = alloca %nyx_string*
  %t1005 = alloca i1
  %t1021 = alloca %nyx_string*
  %t1040 = alloca %nyx_string*
  %t1043 = alloca %nyx_string*
  %t906 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %t907 = ptrtoint %TestConfig* %t906 to i64
  %t908 = call i8* @GC_malloc(i64 %t907)
  %t909 = bitcast i8* %t908 to %TestConfig*
  %t910 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %t911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t910, i64 5)
  %t912 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 0
  store %nyx_string* %t911, %nyx_string** %t912
  %t913 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 1
  store i64 30, i64* %t913
  %t914 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %t915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t914, i64 0)
  %t916 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 2
  store %nyx_string* %t915, %nyx_string** %t916
  %t917 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 3
  store i1 0, i1* %t917
  %t918 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %t919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t918, i64 0)
  %t920 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 4
  store %nyx_string* %t919, %nyx_string** %t920
  %t921 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 5
  store i1 0, i1* %t921
  %t922 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 6
  store i1 0, i1* %t922
  %t923 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 7
  store i1 0, i1* %t923
  %t924 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %t925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t924, i64 0)
  %t926 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 8
  store %nyx_string* %t925, %nyx_string** %t926
  %t927 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %t928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t927, i64 0)
  %t929 = getelementptr %TestConfig, %TestConfig* %t909, i32 0, i32 9
  store %nyx_string* %t928, %nyx_string** %t929
  %t930 = load %TestConfig, %TestConfig* %t909
  store %TestConfig %t930, %TestConfig* %t931
  %t932 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %t933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t932, i64 8)
  %t934 = call i8* @nyx_string_to_cstr(%nyx_string* %t933)
  %t935 = call i1 @nyx_file_exists(i8* %t934)
  %t936 = xor i1 %t935, true
  br i1 %t936, label %then252, label %else253
then252:
  %t937 = load %TestConfig, %TestConfig* %t931
  ret %TestConfig %t937
else253:
  br label %merge254
merge254:
  %t938 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %t939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t938, i64 8)
  %t940 = call i8* @nyx_string_to_cstr(%nyx_string* %t939)
  %t941 = call %nyx_string* @nyx_read_file(i8* %t940)
  store %nyx_string* %t941, %nyx_string** %t942
  %t943 = load %nyx_string*, %nyx_string** %t942
  %t944 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %t945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t944, i64 1)
  %t946 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t943, %nyx_string* %t945)
  store { i64, i8* }* %t946, { i64, i8* }** %t947
  store i1 0, i1* %t948
  store i1 0, i1* %t949
  store i64 0, i64* %t950
  %t951 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %t952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t951, i64 6)
  store %nyx_string* %t952, %nyx_string** %t953
  %t954 = getelementptr [2 x i8], [2 x i8]* @.str28, i32 0, i32 0
  %t955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t954, i64 1)
  store %nyx_string* %t955, %nyx_string** %t956
  %t957 = getelementptr [6 x i8], [6 x i8]* @.str29, i32 0, i32 0
  %t958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t957, i64 5)
  store %nyx_string* %t958, %nyx_string** %t959
  %t960 = getelementptr [8 x i8], [8 x i8]* @.str30, i32 0, i32 0
  %t961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t960, i64 7)
  store %nyx_string* %t961, %nyx_string** %t962
  %t963 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %t964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t963, i64 1)
  store %nyx_string* %t964, %nyx_string** %t965
  %t966 = getelementptr [1 x i8], [1 x i8]* @.str32, i32 0, i32 0
  %t967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t966, i64 0)
  store %nyx_string* %t967, %nyx_string** %t968
  %t969 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %t970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t969, i64 1)
  store %nyx_string* %t970, %nyx_string** %t971
  %t972 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %t973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t972, i64 1)
  store %nyx_string* %t973, %nyx_string** %t974
  %t975 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %t976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t975, i64 1)
  store %nyx_string* %t976, %nyx_string** %t977
  %t978 = getelementptr [4 x i8], [4 x i8]* @.str36, i32 0, i32 0
  %t979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t978, i64 3)
  store %nyx_string* %t979, %nyx_string** %t980
  %t981 = getelementptr [8 x i8], [8 x i8]* @.str37, i32 0, i32 0
  %t982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t981, i64 7)
  store %nyx_string* %t982, %nyx_string** %t983
  br label %while_cond255
while_cond255:
  %t984 = load i64, i64* %t950
  %t985 = load { i64, i8* }*, { i64, i8* }** %t947
  %t986 = call i64 @nyx_array_length({ i64, i8* }* %t985)
  %t987 = icmp slt i64 %t984, %t986
  br i1 %t987, label %while_body256, label %while_end257
while_body256:
  %t988 = load { i64, i8* }*, { i64, i8* }** %t947
  %t989 = load i64, i64* %t950
  %t990 = call i64 @nyx_array_get_checked({ i64, i8* }* %t988, i64 %t989, i64 2)
  %t991 = inttoptr i64 %t990 to %nyx_string*
  store %nyx_string* %t991, %nyx_string** %t992
  %t993 = load %nyx_string*, %nyx_string** %t992
  %t994 = call %nyx_string* @nyx_string_trim(%nyx_string* %t993)
  store %nyx_string* %t994, %nyx_string** %t995
  %t996 = load %nyx_string*, %nyx_string** %t995
  %t997 = load %nyx_string*, %nyx_string** %t953
  %t998 = call i1 @nyx_string_equals(%nyx_string* %t996, %nyx_string* %t997)
  br i1 %t998, label %then258, label %else259
then258:
  store i1 1, i1* %t948
  br label %merge260
else259:
  %t999 = load %nyx_string*, %nyx_string** %t995
  %t1000 = load %nyx_string*, %nyx_string** %t956
  %t1001 = call i1 @nyx_string_starts_with(%nyx_string* %t999, %nyx_string* %t1000)
  br i1 %t1001, label %then261, label %else262
then261:
  store i1 0, i1* %t948
  %t1002 = load %nyx_string*, %nyx_string** %t995
  %t1003 = load %nyx_string*, %nyx_string** %t959
  %t1004 = call i1 @nyx_string_equals(%nyx_string* %t1002, %nyx_string* %t1003)
  store i1 %t1004, i1* %t949
  br label %merge263
else262:
  store i1 false, i1* %t1005
  %t1006 = load i1, i1* %t949
  br i1 %t1006, label %sc_and_rhs264, label %sc_and_end265
sc_and_rhs264:
  %t1007 = load %nyx_string*, %nyx_string** %t995
  %t1008 = call %nyx_string* @parse_toml_key(%nyx_string* %t1007)
  %t1009 = load %nyx_string*, %nyx_string** %t962
  %t1010 = call i1 @nyx_string_equals(%nyx_string* %t1008, %nyx_string* %t1009)
  store i1 %t1010, i1* %t1005
  br label %sc_and_end265
sc_and_end265:
  %t1011 = load i1, i1* %t1005
  br i1 %t1011, label %then266, label %else267
then266:
  %t1012 = load %nyx_string*, %nyx_string** %t995
  %t1013 = load %nyx_string*, %nyx_string** %t995
  %t1014 = load %nyx_string*, %nyx_string** %t965
  %t1015 = call i64 @nyx_string_index_of(%nyx_string* %t1013, %nyx_string* %t1014)
  %t1016 = add i64 %t1015, 1
  %t1017 = load %nyx_string*, %nyx_string** %t995
  %t1018 = call i64 @nyx_string_byte_length(%nyx_string* %t1017)
  %t1019 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1012, i64 %t1016, i64 %t1018)
  %t1020 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1019)
  store %nyx_string* %t1020, %nyx_string** %t1021
  %t1022 = load %nyx_string*, %nyx_string** %t1021
  %t1023 = load %nyx_string*, %nyx_string** %t956
  %t1024 = load %nyx_string*, %nyx_string** %t968
  %t1025 = call %nyx_string* @nyx_string_replace(%nyx_string* %t1022, %nyx_string* %t1023, %nyx_string* %t1024)
  %t1026 = load %nyx_string*, %nyx_string** %t971
  %t1027 = load %nyx_string*, %nyx_string** %t968
  %t1028 = call %nyx_string* @nyx_string_replace(%nyx_string* %t1025, %nyx_string* %t1026, %nyx_string* %t1027)
  %t1029 = load %nyx_string*, %nyx_string** %t974
  %t1030 = load %nyx_string*, %nyx_string** %t968
  %t1031 = call %nyx_string* @nyx_string_replace(%nyx_string* %t1028, %nyx_string* %t1029, %nyx_string* %t1030)
  %t1032 = load %nyx_string*, %nyx_string** %t977
  %t1033 = load %nyx_string*, %nyx_string** %t968
  %t1034 = call %nyx_string* @nyx_string_replace(%nyx_string* %t1031, %nyx_string* %t1032, %nyx_string* %t1033)
  store %nyx_string* %t1034, %nyx_string** %t1021
  %t1035 = load %nyx_string*, %nyx_string** %t1021
  %t1036 = getelementptr %TestConfig, %TestConfig* %t931, i32 0, i32 8
  store %nyx_string* %t1035, %nyx_string** %t1036
  br label %merge268
else267:
  %t1037 = load i1, i1* %t948
  br i1 %t1037, label %then269, label %else270
then269:
  %t1038 = load %nyx_string*, %nyx_string** %t995
  %t1039 = call %nyx_string* @parse_toml_key(%nyx_string* %t1038)
  store %nyx_string* %t1039, %nyx_string** %t1040
  %t1041 = load %nyx_string*, %nyx_string** %t995
  %t1042 = call %nyx_string* @parse_toml_value(%nyx_string* %t1041)
  store %nyx_string* %t1042, %nyx_string** %t1043
  %t1044 = load %nyx_string*, %nyx_string** %t1040
  %t1045 = load %nyx_string*, %nyx_string** %t980
  %t1046 = call i1 @nyx_string_equals(%nyx_string* %t1044, %nyx_string* %t1045)
  br i1 %t1046, label %then272, label %else273
then272:
  %t1047 = load %nyx_string*, %nyx_string** %t1043
  %t1048 = getelementptr %TestConfig, %TestConfig* %t931, i32 0, i32 0
  store %nyx_string* %t1047, %nyx_string** %t1048
  br label %merge274
else273:
  br label %merge274
merge274:
  %t1049 = load %nyx_string*, %nyx_string** %t1040
  %t1050 = load %nyx_string*, %nyx_string** %t983
  %t1051 = call i1 @nyx_string_equals(%nyx_string* %t1049, %nyx_string* %t1050)
  br i1 %t1051, label %then275, label %else276
then275:
  %t1052 = load %nyx_string*, %nyx_string** %t1043
  %t1053 = call i64 @nyx_string_to_int(%nyx_string* %t1052)
  %t1054 = getelementptr %TestConfig, %TestConfig* %t931, i32 0, i32 1
  store i64 %t1053, i64* %t1054
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
  %t1055 = load i64, i64* %t950
  %t1056 = add i64 %t1055, 1
  store i64 %t1056, i64* %t950
  br label %while_cond255
while_end257:
  %t1057 = load %TestConfig, %TestConfig* %t931
  ret %TestConfig %t1057
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  %t1059 = alloca { i64, i8* }*
  %t1068 = alloca { i64, i8* }*
  %t1069 = alloca i64
  %t1072 = alloca %nyx_string*
  %t1075 = alloca %nyx_string*
  %t1078 = alloca %nyx_string*
  %t1087 = alloca %nyx_string*
  %t1097 = alloca %nyx_string*
  %t1098 = alloca i1
  %t1121 = alloca { i64, i8* }*
  %t1122 = alloca i64
  %t1125 = alloca %nyx_string*
  %t1128 = alloca %nyx_string*
  %t1131 = alloca %nyx_string*
  %t1140 = alloca %nyx_string*
  %t1147 = alloca %nyx_string*
  %t1148 = alloca i1
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %t1058 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1058, { i64, i8* }** %t1059
  %t1060 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %t1061 = load %nyx_string*, %nyx_string** %t1060
  %t1062 = call i8* @nyx_string_to_cstr(%nyx_string* %t1061)
  %t1063 = call i1 @nyx_file_exists(i8* %t1062)
  br i1 %t1063, label %then278, label %else279
then278:
  %t1064 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %t1065 = load %nyx_string*, %nyx_string** %t1064
  %t1066 = call i8* @nyx_string_to_cstr(%nyx_string* %t1065)
  %t1067 = call { i64, i8* }* @nyx_readdir(i8* %t1066)
  store { i64, i8* }* %t1067, { i64, i8* }** %t1068
  store i64 0, i64* %t1069
  %t1070 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %t1071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t1070, i64 3)
  store %nyx_string* %t1071, %nyx_string** %t1072
  %t1073 = getelementptr [2 x i8], [2 x i8]* @.str39, i32 0, i32 0
  %t1074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t1073, i64 1)
  store %nyx_string* %t1074, %nyx_string** %t1075
  %t1076 = getelementptr [1 x i8], [1 x i8]* @.str40, i32 0, i32 0
  %t1077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t1076, i64 0)
  store %nyx_string* %t1077, %nyx_string** %t1078
  br label %while_cond281
while_cond281:
  %t1079 = load i64, i64* %t1069
  %t1080 = load { i64, i8* }*, { i64, i8* }** %t1068
  %t1081 = call i64 @nyx_array_length({ i64, i8* }* %t1080)
  %t1082 = icmp slt i64 %t1079, %t1081
  br i1 %t1082, label %while_body282, label %while_end283
while_body282:
  %t1083 = load { i64, i8* }*, { i64, i8* }** %t1068
  %t1084 = load i64, i64* %t1069
  %t1085 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1083, i64 %t1084, i64 2)
  %t1086 = inttoptr i64 %t1085 to %nyx_string*
  store %nyx_string* %t1086, %nyx_string** %t1087
  %t1088 = load %nyx_string*, %nyx_string** %t1087
  %t1089 = load %nyx_string*, %nyx_string** %t1072
  %t1090 = call i1 @nyx_string_ends_with(%nyx_string* %t1088, %nyx_string* %t1089)
  br i1 %t1090, label %then284, label %else285
then284:
  %t1091 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %t1092 = load %nyx_string*, %nyx_string** %t1091
  %t1093 = load %nyx_string*, %nyx_string** %t1075
  %t1094 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1092, %nyx_string* %t1093)
  %t1095 = load %nyx_string*, %nyx_string** %t1087
  %t1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1094, %nyx_string* %t1095)
  store %nyx_string* %t1096, %nyx_string** %t1097
  store i1 true, i1* %t1098
  %t1099 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %t1100 = load %nyx_string*, %nyx_string** %t1099
  %t1101 = load %nyx_string*, %nyx_string** %t1078
  %t1102 = call i1 @nyx_string_equals(%nyx_string* %t1100, %nyx_string* %t1101)
  br i1 %t1102, label %sc_or_end288, label %sc_or_rhs287
sc_or_rhs287:
  %t1103 = load %nyx_string*, %nyx_string** %t1087
  %t1104 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %t1105 = load %nyx_string*, %nyx_string** %t1104
  %t1106 = call i1 @nyx_string_contains(%nyx_string* %t1103, %nyx_string* %t1105)
  store i1 %t1106, i1* %t1098
  br label %sc_or_end288
sc_or_end288:
  %t1107 = load i1, i1* %t1098
  br i1 %t1107, label %then289, label %else290
then289:
  %t1108 = load { i64, i8* }*, { i64, i8* }** %t1059
  %t1109 = load %nyx_string*, %nyx_string** %t1097
  %t1110 = ptrtoint %nyx_string* %t1109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1108, i64 %t1110, i64 2)
  br label %merge291
else290:
  br label %merge291
merge291:
  br label %merge286
else285:
  br label %merge286
merge286:
  %t1111 = load i64, i64* %t1069
  %t1112 = add i64 %t1111, 1
  store i64 %t1112, i64* %t1069
  br label %while_cond281
while_end283:
  br label %merge280
else279:
  br label %merge280
merge280:
  %t1113 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %t1114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t1113, i64 3)
  %t1115 = call i8* @nyx_string_to_cstr(%nyx_string* %t1114)
  %t1116 = call i1 @nyx_file_exists(i8* %t1115)
  br i1 %t1116, label %then292, label %else293
then292:
  %t1117 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %t1118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t1117, i64 3)
  %t1119 = call i8* @nyx_string_to_cstr(%nyx_string* %t1118)
  %t1120 = call { i64, i8* }* @nyx_readdir(i8* %t1119)
  store { i64, i8* }* %t1120, { i64, i8* }** %t1121
  store i64 0, i64* %t1122
  %t1123 = getelementptr [9 x i8], [9 x i8]* @.str43, i32 0, i32 0
  %t1124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t1123, i64 8)
  store %nyx_string* %t1124, %nyx_string** %t1125
  %t1126 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %t1127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t1126, i64 4)
  store %nyx_string* %t1127, %nyx_string** %t1128
  %t1129 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %t1130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t1129, i64 0)
  store %nyx_string* %t1130, %nyx_string** %t1131
  br label %while_cond295
while_cond295:
  %t1132 = load i64, i64* %t1122
  %t1133 = load { i64, i8* }*, { i64, i8* }** %t1121
  %t1134 = call i64 @nyx_array_length({ i64, i8* }* %t1133)
  %t1135 = icmp slt i64 %t1132, %t1134
  br i1 %t1135, label %while_body296, label %while_end297
while_body296:
  %t1136 = load { i64, i8* }*, { i64, i8* }** %t1121
  %t1137 = load i64, i64* %t1122
  %t1138 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1136, i64 %t1137, i64 2)
  %t1139 = inttoptr i64 %t1138 to %nyx_string*
  store %nyx_string* %t1139, %nyx_string** %t1140
  %t1141 = load %nyx_string*, %nyx_string** %t1140
  %t1142 = load %nyx_string*, %nyx_string** %t1125
  %t1143 = call i1 @nyx_string_ends_with(%nyx_string* %t1141, %nyx_string* %t1142)
  br i1 %t1143, label %then298, label %else299
then298:
  %t1144 = load %nyx_string*, %nyx_string** %t1128
  %t1145 = load %nyx_string*, %nyx_string** %t1140
  %t1146 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1144, %nyx_string* %t1145)
  store %nyx_string* %t1146, %nyx_string** %t1147
  store i1 true, i1* %t1148
  %t1149 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %t1150 = load %nyx_string*, %nyx_string** %t1149
  %t1151 = load %nyx_string*, %nyx_string** %t1131
  %t1152 = call i1 @nyx_string_equals(%nyx_string* %t1150, %nyx_string* %t1151)
  br i1 %t1152, label %sc_or_end302, label %sc_or_rhs301
sc_or_rhs301:
  %t1153 = load %nyx_string*, %nyx_string** %t1140
  %t1154 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %t1155 = load %nyx_string*, %nyx_string** %t1154
  %t1156 = call i1 @nyx_string_contains(%nyx_string* %t1153, %nyx_string* %t1155)
  store i1 %t1156, i1* %t1148
  br label %sc_or_end302
sc_or_end302:
  %t1157 = load i1, i1* %t1148
  br i1 %t1157, label %then303, label %else304
then303:
  %t1158 = load { i64, i8* }*, { i64, i8* }** %t1059
  %t1159 = load %nyx_string*, %nyx_string** %t1147
  %t1160 = ptrtoint %nyx_string* %t1159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1158, i64 %t1160, i64 2)
  br label %merge305
else304:
  br label %merge305
merge305:
  br label %merge300
else299:
  br label %merge300
merge300:
  %t1161 = load i64, i64* %t1122
  %t1162 = add i64 %t1161, 1
  store i64 %t1162, i64* %t1122
  br label %while_cond295
while_end297:
  br label %merge294
else293:
  br label %merge294
merge294:
  %t1163 = load { i64, i8* }*, { i64, i8* }** %t1059
  %t1164 = call { i64, i8* }* @sort_str({ i64, i8* }* %t1163)
  ret { i64, i8* }* %t1164
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  %t1168 = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t1165 = load %nyx_string*, %nyx_string** %path.ptr
  %t1166 = call i8* @nyx_string_to_cstr(%nyx_string* %t1165)
  %t1167 = call %nyx_string* @nyx_read_file(i8* %t1166)
  store %nyx_string* %t1167, %nyx_string** %t1168
  %t1169 = load %nyx_string*, %nyx_string** %t1168
  %t1170 = getelementptr [7 x i8], [7 x i8]* @.str46, i32 0, i32 0
  %t1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t1170, i64 6)
  %t1172 = call i1 @nyx_string_contains(%nyx_string* %t1169, %nyx_string* %t1171)
  ret i1 %t1172
}

define internal %nyx_string* @lib_modulo_de(
%nyx_string* %file.param) {
  %file.ptr = alloca %nyx_string*
  %t1174 = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %t1173 = load %nyx_string*, %nyx_string** %file.ptr
  store %nyx_string* %t1173, %nyx_string** %t1174
  %t1175 = load %nyx_string*, %nyx_string** %t1174
  %t1176 = getelementptr [3 x i8], [3 x i8]* @.str47, i32 0, i32 0
  %t1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t1176, i64 2)
  %t1178 = call i1 @nyx_string_starts_with(%nyx_string* %t1175, %nyx_string* %t1177)
  br i1 %t1178, label %then306, label %else307
then306:
  %t1179 = load %nyx_string*, %nyx_string** %t1174
  %t1180 = load %nyx_string*, %nyx_string** %t1174
  %t1181 = call i64 @nyx_string_byte_length(%nyx_string* %t1180)
  %t1182 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1179, i64 2, i64 %t1181)
  store %nyx_string* %t1182, %nyx_string** %t1174
  br label %merge308
else307:
  br label %merge308
merge308:
  %t1183 = load %nyx_string*, %nyx_string** %t1174
  %t1184 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %t1185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t1184, i64 3)
  %t1186 = call i1 @nyx_string_ends_with(%nyx_string* %t1183, %nyx_string* %t1185)
  br i1 %t1186, label %then309, label %else310
then309:
  %t1187 = load %nyx_string*, %nyx_string** %t1174
  %t1188 = load %nyx_string*, %nyx_string** %t1174
  %t1189 = call i64 @nyx_string_byte_length(%nyx_string* %t1188)
  %t1190 = sub i64 %t1189, 3
  %t1191 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1187, i64 0, i64 %t1190)
  store %nyx_string* %t1191, %nyx_string** %t1174
  br label %merge311
else310:
  br label %merge311
merge311:
  %t1192 = load %nyx_string*, %nyx_string** %t1174
  ret %nyx_string* %t1192
}

define internal %nyx_string* @rt_cache_sh(
) {
  %t1195 = alloca %nyx_string*
  %t1193 = getelementptr [17 x i8], [17 x i8]* @.str49, i32 0, i32 0
  %t1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t1193, i64 16)
  store %nyx_string* %t1194, %nyx_string** %t1195
  %t1196 = load %nyx_string*, %nyx_string** %t1195
  %t1197 = getelementptr [41 x i8], [41 x i8]* @.str50, i32 0, i32 0
  %t1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t1197, i64 40)
  %t1199 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1196, %nyx_string* %t1198)
  store %nyx_string* %t1199, %nyx_string** %t1195
  %t1200 = load %nyx_string*, %nyx_string** %t1195
  %t1201 = getelementptr [24 x i8], [24 x i8]* @.str51, i32 0, i32 0
  %t1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t1201, i64 23)
  %t1203 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1200, %nyx_string* %t1202)
  store %nyx_string* %t1203, %nyx_string** %t1195
  %t1204 = load %nyx_string*, %nyx_string** %t1195
  %t1205 = getelementptr [92 x i8], [92 x i8]* @.str52, i32 0, i32 0
  %t1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t1205, i64 91)
  %t1207 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1204, %nyx_string* %t1206)
  store %nyx_string* %t1207, %nyx_string** %t1195
  %t1208 = load %nyx_string*, %nyx_string** %t1195
  %t1209 = getelementptr [177 x i8], [177 x i8]* @.str53, i32 0, i32 0
  %t1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t1209, i64 176)
  %t1211 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1208, %nyx_string* %t1210)
  store %nyx_string* %t1211, %nyx_string** %t1195
  %t1212 = load %nyx_string*, %nyx_string** %t1195
  %t1213 = getelementptr [35 x i8], [35 x i8]* @.str54, i32 0, i32 0
  %t1214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t1213, i64 34)
  %t1215 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1212, %nyx_string* %t1214)
  store %nyx_string* %t1215, %nyx_string** %t1195
  %t1216 = load %nyx_string*, %nyx_string** %t1195
  %t1217 = getelementptr [83 x i8], [83 x i8]* @.str55, i32 0, i32 0
  %t1218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t1217, i64 82)
  %t1219 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1216, %nyx_string* %t1218)
  store %nyx_string* %t1219, %nyx_string** %t1195
  %t1220 = load %nyx_string*, %nyx_string** %t1195
  %t1221 = getelementptr [49 x i8], [49 x i8]* @.str56, i32 0, i32 0
  %t1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t1221, i64 48)
  %t1223 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1220, %nyx_string* %t1222)
  store %nyx_string* %t1223, %nyx_string** %t1195
  %t1224 = load %nyx_string*, %nyx_string** %t1195
  %t1225 = getelementptr [89 x i8], [89 x i8]* @.str57, i32 0, i32 0
  %t1226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t1225, i64 88)
  %t1227 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1224, %nyx_string* %t1226)
  store %nyx_string* %t1227, %nyx_string** %t1195
  %t1228 = load %nyx_string*, %nyx_string** %t1195
  %t1229 = getelementptr [68 x i8], [68 x i8]* @.str58, i32 0, i32 0
  %t1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t1229, i64 67)
  %t1231 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1228, %nyx_string* %t1230)
  store %nyx_string* %t1231, %nyx_string** %t1195
  %t1232 = load %nyx_string*, %nyx_string** %t1195
  %t1233 = getelementptr [15 x i8], [15 x i8]* @.str59, i32 0, i32 0
  %t1234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t1233, i64 14)
  %t1235 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1232, %nyx_string* %t1234)
  store %nyx_string* %t1235, %nyx_string** %t1195
  %t1236 = load %nyx_string*, %nyx_string** %t1195
  %t1237 = getelementptr [49 x i8], [49 x i8]* @.str60, i32 0, i32 0
  %t1238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t1237, i64 48)
  %t1239 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1236, %nyx_string* %t1238)
  store %nyx_string* %t1239, %nyx_string** %t1195
  %t1240 = load %nyx_string*, %nyx_string** %t1195
  %t1241 = getelementptr [196 x i8], [196 x i8]* @.str61, i32 0, i32 0
  %t1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t1241, i64 195)
  %t1243 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1240, %nyx_string* %t1242)
  store %nyx_string* %t1243, %nyx_string** %t1195
  %t1244 = load %nyx_string*, %nyx_string** %t1195
  %t1245 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %t1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t1245, i64 7)
  %t1247 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1244, %nyx_string* %t1246)
  store %nyx_string* %t1247, %nyx_string** %t1195
  %t1248 = load %nyx_string*, %nyx_string** %t1195
  %t1249 = getelementptr [138 x i8], [138 x i8]* @.str63, i32 0, i32 0
  %t1250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t1249, i64 137)
  %t1251 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1248, %nyx_string* %t1250)
  store %nyx_string* %t1251, %nyx_string** %t1195
  %t1252 = load %nyx_string*, %nyx_string** %t1195
  %t1253 = getelementptr [43 x i8], [43 x i8]* @.str64, i32 0, i32 0
  %t1254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t1253, i64 42)
  %t1255 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1252, %nyx_string* %t1254)
  store %nyx_string* %t1255, %nyx_string** %t1195
  %t1256 = load %nyx_string*, %nyx_string** %t1195
  %t1257 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %t1258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t1257, i64 5)
  %t1259 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1256, %nyx_string* %t1258)
  store %nyx_string* %t1259, %nyx_string** %t1195
  %t1260 = load %nyx_string*, %nyx_string** %t1195
  %t1261 = getelementptr [27 x i8], [27 x i8]* @.str66, i32 0, i32 0
  %t1262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t1261, i64 26)
  %t1263 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1260, %nyx_string* %t1262)
  store %nyx_string* %t1263, %nyx_string** %t1195
  %t1264 = load %nyx_string*, %nyx_string** %t1195
  %t1265 = getelementptr [3 x i8], [3 x i8]* @.str67, i32 0, i32 0
  %t1266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t1265, i64 2)
  %t1267 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1264, %nyx_string* %t1266)
  store %nyx_string* %t1267, %nyx_string** %t1195
  %t1268 = load %nyx_string*, %nyx_string** %t1195
  ret %nyx_string* %t1268
}

define internal %nyx_string* @tmp_base(
) {
  %t1273 = alloca %nyx_string*
  %t1274 = alloca i1
  %t1269 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %t1270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t1269, i64 6)
  %t1271 = call i8* @nyx_string_to_cstr(%nyx_string* %t1270)
  %t1272 = call %nyx_string* @nyx_getenv(i8* %t1271)
  store %nyx_string* %t1272, %nyx_string** %t1273
  br label %while_cond312
while_cond312:
  store i1 false, i1* %t1274
  %t1275 = load %nyx_string*, %nyx_string** %t1273
  %t1276 = call i64 @nyx_string_byte_length(%nyx_string* %t1275)
  %t1277 = icmp sgt i64 %t1276, 1
  br i1 %t1277, label %sc_and_rhs315, label %sc_and_end316
sc_and_rhs315:
  %t1278 = load %nyx_string*, %nyx_string** %t1273
  %t1279 = getelementptr [2 x i8], [2 x i8]* @.str69, i32 0, i32 0
  %t1280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t1279, i64 1)
  %t1281 = call i1 @nyx_string_ends_with(%nyx_string* %t1278, %nyx_string* %t1280)
  store i1 %t1281, i1* %t1274
  br label %sc_and_end316
sc_and_end316:
  %t1282 = load i1, i1* %t1274
  br i1 %t1282, label %while_body313, label %while_end314
while_body313:
  %t1283 = load %nyx_string*, %nyx_string** %t1273
  %t1284 = load %nyx_string*, %nyx_string** %t1273
  %t1285 = call i64 @nyx_string_byte_length(%nyx_string* %t1284)
  %t1286 = sub i64 %t1285, 1
  %t1287 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1283, i64 0, i64 %t1286)
  store %nyx_string* %t1287, %nyx_string** %t1273
  br label %while_cond312
while_end314:
  %t1288 = load %nyx_string*, %nyx_string** %t1273
  %t1289 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %t1290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t1289, i64 0)
  %t1291 = call i1 @nyx_string_equals(%nyx_string* %t1288, %nyx_string* %t1290)
  br i1 %t1291, label %then317, label %else318
then317:
  %t1292 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %t1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t1292, i64 4)
  ret %nyx_string* %t1293
else318:
  br label %merge319
merge319:
  %t1294 = load %nyx_string*, %nyx_string** %t1273
  ret %nyx_string* %t1294
}

define internal %nyx_string* @tmp_plantilla(
%nyx_string* %kind.param) {
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %t1295 = call %nyx_string* @tmp_base()
  %t1296 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %t1297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t1296, i64 5)
  %t1298 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1295, %nyx_string* %t1297)
  %t1299 = load %nyx_string*, %nyx_string** %kind.ptr
  %t1300 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1298, %nyx_string* %t1299)
  %t1301 = call i64 @nyx_getpid()
  %t1302 = call %nyx_string* @nyx_string_from_int(i64 %t1301)
  %t1303 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1300, %nyx_string* %t1302)
  %t1304 = getelementptr [8 x i8], [8 x i8]* @.str73, i32 0, i32 0
  %t1305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t1304, i64 7)
  %t1306 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1303, %nyx_string* %t1305)
  ret %nyx_string* %t1306
}

define internal i64 @barrer_huerfanos(
%nyx_string* %base.param) {
  %base.ptr = alloca %nyx_string*
  %t1368 = alloca %nyx_string*
  store %nyx_string* %base.param, %nyx_string** %base.ptr
  %t1307 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %t1308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t1307, i64 6)
  %t1309 = load %nyx_string*, %nyx_string** %base.ptr
  %t1310 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1308, %nyx_string* %t1309)
  %t1311 = getelementptr [29 x i8], [29 x i8]* @.str75, i32 0, i32 0
  %t1312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t1311, i64 28)
  %t1313 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1310, %nyx_string* %t1312)
  %t1314 = getelementptr [36 x i8], [36 x i8]* @.str76, i32 0, i32 0
  %t1315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t1314, i64 35)
  %t1316 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1313, %nyx_string* %t1315)
  %t1317 = getelementptr [118 x i8], [118 x i8]* @.str77, i32 0, i32 0
  %t1318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t1317, i64 117)
  %t1319 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1316, %nyx_string* %t1318)
  %t1320 = getelementptr [27 x i8], [27 x i8]* @.str78, i32 0, i32 0
  %t1321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t1320, i64 26)
  %t1322 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1319, %nyx_string* %t1321)
  %t1323 = getelementptr [6 x i8], [6 x i8]* @.str79, i32 0, i32 0
  %t1324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t1323, i64 5)
  %t1325 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1322, %nyx_string* %t1324)
  %t1326 = getelementptr [9 x i8], [9 x i8]* @.str80, i32 0, i32 0
  %t1327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t1326, i64 8)
  %t1328 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1325, %nyx_string* %t1327)
  %t1329 = getelementptr [16 x i8], [16 x i8]* @.str81, i32 0, i32 0
  %t1330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t1329, i64 15)
  %t1331 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1328, %nyx_string* %t1330)
  %t1332 = getelementptr [50 x i8], [50 x i8]* @.str82, i32 0, i32 0
  %t1333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t1332, i64 49)
  %t1334 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1331, %nyx_string* %t1333)
  %t1335 = getelementptr [89 x i8], [89 x i8]* @.str83, i32 0, i32 0
  %t1336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t1335, i64 88)
  %t1337 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1334, %nyx_string* %t1336)
  %t1338 = getelementptr [36 x i8], [36 x i8]* @.str84, i32 0, i32 0
  %t1339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t1338, i64 35)
  %t1340 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1337, %nyx_string* %t1339)
  %t1341 = getelementptr [20 x i8], [20 x i8]* @.str85, i32 0, i32 0
  %t1342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t1341, i64 19)
  %t1343 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1340, %nyx_string* %t1342)
  %t1344 = getelementptr [8 x i8], [8 x i8]* @.str86, i32 0, i32 0
  %t1345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t1344, i64 7)
  %t1346 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1343, %nyx_string* %t1345)
  %t1347 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %t1348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t1347, i64 5)
  %t1349 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1346, %nyx_string* %t1348)
  %t1350 = getelementptr [12 x i8], [12 x i8]* @.str88, i32 0, i32 0
  %t1351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t1350, i64 11)
  %t1352 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1349, %nyx_string* %t1351)
  %t1353 = getelementptr [9 x i8], [9 x i8]* @.str89, i32 0, i32 0
  %t1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t1353, i64 8)
  %t1355 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1352, %nyx_string* %t1354)
  %t1356 = getelementptr [45 x i8], [45 x i8]* @.str90, i32 0, i32 0
  %t1357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t1356, i64 44)
  %t1358 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1355, %nyx_string* %t1357)
  %t1359 = getelementptr [71 x i8], [71 x i8]* @.str91, i32 0, i32 0
  %t1360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t1359, i64 70)
  %t1361 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1358, %nyx_string* %t1360)
  %t1362 = getelementptr [15 x i8], [15 x i8]* @.str92, i32 0, i32 0
  %t1363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t1362, i64 14)
  %t1364 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1361, %nyx_string* %t1363)
  %t1365 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %t1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t1365, i64 5)
  %t1367 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1364, %nyx_string* %t1366)
  store %nyx_string* %t1367, %nyx_string** %t1368
  %t1369 = load %nyx_string*, %nyx_string** %t1368
  %t1370 = call i8* @nyx_string_to_cstr(%nyx_string* %t1369)
  %t1371 = call i64 @nyx_exec_code(i8* %t1370)
  ret i64 %t1371
}

define internal %TestResult @compile_and_run(
%nyx_string* %file.param, %TestConfig %config.param, %nyx_string* %cov_dir.param, i64 %cov_idx.param) {
  %file.ptr = alloca %nyx_string*
  %config.ptr = alloca %TestConfig
  %cov_dir.ptr = alloca %nyx_string*
  %cov_idx.ptr = alloca i64
  %t1376 = alloca %nyx_string*
  %t1398 = alloca %nyx_string*
  %t1402 = alloca %nyx_string*
  %t1415 = alloca %nyx_string*
  %t1442 = alloca %nyx_string*
  %t1447 = alloca %nyx_string*
  %t1450 = alloca %nyx_string*
  %t1457 = alloca %nyx_string*
  %t1487 = alloca %nyx_string*
  %t1492 = alloca %nyx_string*
  %t1493 = alloca i1
  %t1518 = alloca %nyx_string*
  %t1519 = alloca i1
  %t1558 = alloca %nyx_string*
  %t1561 = alloca %nyx_string*
  %t1564 = alloca %nyx_string*
  %t1577 = alloca %nyx_string*
  %t1602 = alloca %nyx_string*
  %t1605 = alloca %nyx_string*
  %t1608 = alloca %nyx_string*
  %t1611 = alloca %nyx_string*
  %t1625 = alloca { i64, i8* }*
  %t1628 = alloca %nyx_string*
  %t1629 = alloca i64
  %t1632 = alloca %nyx_string*
  %t1635 = alloca %nyx_string*
  %t1644 = alloca %nyx_string*
  %t1645 = alloca i1
  %t1679 = alloca i1
  %t1718 = alloca { i64, i8* }*
  %t1719 = alloca i64
  %t1722 = alloca %nyx_string*
  %t1725 = alloca %nyx_string*
  %t1728 = alloca %nyx_string*
  %t1737 = alloca %nyx_string*
  %t1741 = alloca i64
  %t1747 = alloca %nyx_string*
  %t1795 = alloca %nyx_string*
  %t1799 = alloca %nyx_string*
  %t1807 = alloca %nyx_string*
  %t1930 = alloca %nyx_string*
  %t1935 = alloca %nyx_string*
  %t1951 = alloca i64
  %t1954 = alloca %nyx_string*
  %t1970 = alloca i64
  %t1971 = alloca i64
  %t1976 = alloca { i64, i8* }*
  %t1977 = alloca i64
  %t1980 = alloca %nyx_string*
  %t1983 = alloca %nyx_string*
  %t1992 = alloca %nyx_string*
  %t2017 = alloca i1
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  store %TestConfig %config.param, %TestConfig* %config.ptr
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  store i64 %cov_idx.param, i64* %cov_idx.ptr
  %t1372 = getelementptr [9 x i8], [9 x i8]* @.str94, i32 0, i32 0
  %t1373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t1372, i64 8)
  %t1374 = call i8* @nyx_string_to_cstr(%nyx_string* %t1373)
  %t1375 = call %nyx_string* @nyx_getenv(i8* %t1374)
  store %nyx_string* %t1375, %nyx_string** %t1376
  %t1377 = load %nyx_string*, %nyx_string** %t1376
  %t1378 = getelementptr [1 x i8], [1 x i8]* @.str95, i32 0, i32 0
  %t1379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t1378, i64 0)
  %t1380 = call i1 @nyx_string_equals(%nyx_string* %t1377, %nyx_string* %t1379)
  br i1 %t1380, label %then320, label %else321
then320:
  %t1381 = getelementptr %TestResult, %TestResult* null, i32 1
  %t1382 = ptrtoint %TestResult* %t1381 to i64
  %t1383 = call i8* @GC_malloc(i64 %t1382)
  %t1384 = bitcast i8* %t1383 to %TestResult*
  %t1385 = load %nyx_string*, %nyx_string** %file.ptr
  %t1386 = getelementptr %TestResult, %TestResult* %t1384, i32 0, i32 0
  store %nyx_string* %t1385, %nyx_string** %t1386
  %t1387 = getelementptr %TestResult, %TestResult* %t1384, i32 0, i32 1
  store i64 0, i64* %t1387
  %t1388 = getelementptr %TestResult, %TestResult* %t1384, i32 0, i32 2
  store i64 0, i64* %t1388
  %t1389 = getelementptr [24 x i8], [24 x i8]* @.str96, i32 0, i32 0
  %t1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t1389, i64 23)
  %t1391 = getelementptr %TestResult, %TestResult* %t1384, i32 0, i32 3
  store %nyx_string* %t1390, %nyx_string** %t1391
  %t1392 = getelementptr %TestResult, %TestResult* %t1384, i32 0, i32 4
  store i1 0, i1* %t1392
  %t1393 = load %TestResult, %TestResult* %t1384
  ret %TestResult %t1393
else321:
  br label %merge322
merge322:
  %t1394 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %t1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t1394, i64 3)
  %t1396 = call i8* @nyx_string_to_cstr(%nyx_string* %t1395)
  %t1397 = call %nyx_string* @nyx_getenv(i8* %t1396)
  store %nyx_string* %t1397, %nyx_string** %t1398
  %t1399 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %t1400 = load i64, i64* %t1399
  %t1401 = call %nyx_string* @nyx_string_from_int(i64 %t1400)
  store %nyx_string* %t1401, %nyx_string** %t1402
  %t1403 = getelementptr [12 x i8], [12 x i8]* @.str98, i32 0, i32 0
  %t1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t1403, i64 11)
  %t1405 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %t1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t1405, i64 5)
  %t1407 = call %nyx_string* @tmp_plantilla(%nyx_string* %t1406)
  %t1408 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1404, %nyx_string* %t1407)
  %t1409 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %t1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t1409, i64 1)
  %t1411 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1408, %nyx_string* %t1410)
  %t1412 = call i8* @nyx_string_to_cstr(%nyx_string* %t1411)
  %t1413 = call %nyx_string* @nyx_exec(i8* %t1412)
  %t1414 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1413)
  store %nyx_string* %t1414, %nyx_string** %t1415
  %t1416 = load %nyx_string*, %nyx_string** %t1415
  %t1417 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %t1418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t1417, i64 0)
  %t1419 = call i1 @nyx_string_equals(%nyx_string* %t1416, %nyx_string* %t1418)
  br i1 %t1419, label %then323, label %else324
then323:
  %t1420 = getelementptr %TestResult, %TestResult* null, i32 1
  %t1421 = ptrtoint %TestResult* %t1420 to i64
  %t1422 = call i8* @GC_malloc(i64 %t1421)
  %t1423 = bitcast i8* %t1422 to %TestResult*
  %t1424 = load %nyx_string*, %nyx_string** %file.ptr
  %t1425 = getelementptr %TestResult, %TestResult* %t1423, i32 0, i32 0
  store %nyx_string* %t1424, %nyx_string** %t1425
  %t1426 = getelementptr %TestResult, %TestResult* %t1423, i32 0, i32 1
  store i64 0, i64* %t1426
  %t1427 = getelementptr %TestResult, %TestResult* %t1423, i32 0, i32 2
  store i64 0, i64* %t1427
  %t1428 = getelementptr [51 x i8], [51 x i8]* @.str102, i32 0, i32 0
  %t1429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t1428, i64 50)
  %t1430 = call %nyx_string* @tmp_base()
  %t1431 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1429, %nyx_string* %t1430)
  %t1432 = getelementptr [10 x i8], [10 x i8]* @.str103, i32 0, i32 0
  %t1433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t1432, i64 9)
  %t1434 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1431, %nyx_string* %t1433)
  %t1435 = getelementptr %TestResult, %TestResult* %t1423, i32 0, i32 3
  store %nyx_string* %t1434, %nyx_string** %t1435
  %t1436 = getelementptr %TestResult, %TestResult* %t1423, i32 0, i32 4
  store i1 0, i1* %t1436
  %t1437 = load %TestResult, %TestResult* %t1423
  ret %TestResult %t1437
else324:
  br label %merge325
merge325:
  %t1438 = load %nyx_string*, %nyx_string** %t1415
  %t1439 = getelementptr [9 x i8], [9 x i8]* @.str104, i32 0, i32 0
  %t1440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t1439, i64 8)
  %t1441 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1438, %nyx_string* %t1440)
  store %nyx_string* %t1441, %nyx_string** %t1442
  %t1443 = load %nyx_string*, %nyx_string** %t1415
  %t1444 = getelementptr [5 x i8], [5 x i8]* @.str105, i32 0, i32 0
  %t1445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t1444, i64 4)
  %t1446 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1443, %nyx_string* %t1445)
  store %nyx_string* %t1446, %nyx_string** %t1447
  %t1448 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %t1449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t1448, i64 0)
  store %nyx_string* %t1449, %nyx_string** %t1450
  %t1451 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %t1452 = load i1, i1* %t1451
  br i1 %t1452, label %then326, label %else327
then326:
  %t1453 = getelementptr [5 x i8], [5 x i8]* @.str107, i32 0, i32 0
  %t1454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t1453, i64 4)
  store %nyx_string* %t1454, %nyx_string** %t1450
  br label %merge328
else327:
  br label %merge328
merge328:
  %t1455 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %t1456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t1455, i64 0)
  store %nyx_string* %t1456, %nyx_string** %t1457
  %t1458 = call %nyx_string* @nyx_host_os()
  %t1459 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %t1460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t1459, i64 5)
  %t1461 = call i1 @nyx_string_equals(%nyx_string* %t1458, %nyx_string* %t1460)
  br i1 %t1461, label %then329, label %else330
then329:
  %t1462 = getelementptr [17 x i8], [17 x i8]* @.str110, i32 0, i32 0
  %t1463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t1462, i64 16)
  store %nyx_string* %t1463, %nyx_string** %t1457
  br label %merge331
else330:
  br label %merge331
merge331:
  %t1464 = getelementptr [62 x i8], [62 x i8]* @.str111, i32 0, i32 0
  %t1465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t1464, i64 61)
  %t1466 = getelementptr [54 x i8], [54 x i8]* @.str112, i32 0, i32 0
  %t1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t1466, i64 53)
  %t1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1465, %nyx_string* %t1467)
  %t1469 = getelementptr [48 x i8], [48 x i8]* @.str113, i32 0, i32 0
  %t1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t1469, i64 47)
  %t1471 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1468, %nyx_string* %t1470)
  %t1472 = getelementptr [47 x i8], [47 x i8]* @.str114, i32 0, i32 0
  %t1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t1472, i64 46)
  %t1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1471, %nyx_string* %t1473)
  %t1475 = getelementptr [67 x i8], [67 x i8]* @.str115, i32 0, i32 0
  %t1476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t1475, i64 66)
  %t1477 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1474, %nyx_string* %t1476)
  %t1478 = getelementptr [51 x i8], [51 x i8]* @.str116, i32 0, i32 0
  %t1479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t1478, i64 50)
  %t1480 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1477, %nyx_string* %t1479)
  %t1481 = getelementptr [105 x i8], [105 x i8]* @.str117, i32 0, i32 0
  %t1482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t1481, i64 104)
  %t1483 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1480, %nyx_string* %t1482)
  %t1484 = getelementptr [23 x i8], [23 x i8]* @.str118, i32 0, i32 0
  %t1485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t1484, i64 22)
  %t1486 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1483, %nyx_string* %t1485)
  store %nyx_string* %t1486, %nyx_string** %t1487
  %t1488 = getelementptr [15 x i8], [15 x i8]* @.str119, i32 0, i32 0
  %t1489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t1488, i64 14)
  %t1490 = call i8* @nyx_string_to_cstr(%nyx_string* %t1489)
  %t1491 = call %nyx_string* @nyx_getenv(i8* %t1490)
  store %nyx_string* %t1491, %nyx_string** %t1492
  store i1 false, i1* %t1493
  %t1494 = load %nyx_string*, %nyx_string** %t1492
  %t1495 = getelementptr [1 x i8], [1 x i8]* @.str120, i32 0, i32 0
  %t1496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t1495, i64 0)
  %t1497 = call i1 @nyx_string_equals(%nyx_string* %t1494, %nyx_string* %t1496)
  %t1498 = xor i1 %t1497, true
  br i1 %t1498, label %sc_and_rhs332, label %sc_and_end333
sc_and_rhs332:
  %t1499 = load %nyx_string*, %nyx_string** %t1492
  %t1500 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %t1501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t1500, i64 1)
  %t1502 = call i1 @nyx_string_starts_with(%nyx_string* %t1499, %nyx_string* %t1501)
  %t1503 = xor i1 %t1502, true
  store i1 %t1503, i1* %t1493
  br label %sc_and_end333
sc_and_end333:
  %t1504 = load i1, i1* %t1493
  br i1 %t1504, label %then334, label %else335
then334:
  %t1505 = load %nyx_string*, %nyx_string** %t1398
  %t1506 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %t1507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t1506, i64 1)
  %t1508 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1505, %nyx_string* %t1507)
  %t1509 = load %nyx_string*, %nyx_string** %t1492
  %t1510 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1508, %nyx_string* %t1509)
  store %nyx_string* %t1510, %nyx_string** %t1492
  br label %merge336
else335:
  br label %merge336
merge336:
  %t1511 = getelementptr [8 x i8], [8 x i8]* @.str123, i32 0, i32 0
  %t1512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t1511, i64 7)
  %t1513 = load %nyx_string*, %nyx_string** %t1487
  %t1514 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1512, %nyx_string* %t1513)
  %t1515 = getelementptr [3 x i8], [3 x i8]* @.str124, i32 0, i32 0
  %t1516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t1515, i64 2)
  %t1517 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1514, %nyx_string* %t1516)
  store %nyx_string* %t1517, %nyx_string** %t1518
  store i1 false, i1* %t1519
  %t1520 = load %nyx_string*, %nyx_string** %t1492
  %t1521 = getelementptr [1 x i8], [1 x i8]* @.str125, i32 0, i32 0
  %t1522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t1521, i64 0)
  %t1523 = call i1 @nyx_string_equals(%nyx_string* %t1520, %nyx_string* %t1522)
  %t1524 = xor i1 %t1523, true
  br i1 %t1524, label %sc_and_rhs337, label %sc_and_end338
sc_and_rhs337:
  %t1525 = load %nyx_string*, %nyx_string** %t1492
  %t1526 = call i8* @nyx_string_to_cstr(%nyx_string* %t1525)
  %t1527 = call i1 @nyx_file_exists(i8* %t1526)
  store i1 %t1527, i1* %t1519
  br label %sc_and_end338
sc_and_end338:
  %t1528 = load i1, i1* %t1519
  br i1 %t1528, label %then339, label %else340
then339:
  %t1529 = getelementptr [9 x i8], [9 x i8]* @.str126, i32 0, i32 0
  %t1530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t1529, i64 8)
  %t1531 = load %nyx_string*, %nyx_string** %t1492
  %t1532 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1530, %nyx_string* %t1531)
  %t1533 = getelementptr [4 x i8], [4 x i8]* @.str127, i32 0, i32 0
  %t1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t1533, i64 3)
  %t1535 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1532, %nyx_string* %t1534)
  store %nyx_string* %t1535, %nyx_string** %t1518
  br label %merge341
else340:
  %t1536 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t1537 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %t1538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t1537, i64 0)
  %t1539 = call i1 @nyx_string_equals(%nyx_string* %t1536, %nyx_string* %t1538)
  br i1 %t1539, label %then342, label %else343
then342:
  %t1540 = call %nyx_string* @rt_cache_sh()
  %t1541 = load %nyx_string*, %nyx_string** %t1518
  %t1542 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1540, %nyx_string* %t1541)
  %t1543 = getelementptr [22 x i8], [22 x i8]* @.str129, i32 0, i32 0
  %t1544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t1543, i64 21)
  %t1545 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1542, %nyx_string* %t1544)
  %t1546 = load %nyx_string*, %nyx_string** %t1487
  %t1547 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1545, %nyx_string* %t1546)
  %t1548 = getelementptr [31 x i8], [31 x i8]* @.str130, i32 0, i32 0
  %t1549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t1548, i64 30)
  %t1550 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1547, %nyx_string* %t1549)
  store %nyx_string* %t1550, %nyx_string** %t1518
  br label %merge344
else343:
  br label %merge344
merge344:
  br label %merge341
merge341:
  %t1551 = getelementptr [3 x i8], [3 x i8]* @.str131, i32 0, i32 0
  %t1552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t1551, i64 2)
  %t1553 = getelementptr [13 x i8], [13 x i8]* @.str132, i32 0, i32 0
  %t1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t1553, i64 12)
  %t1555 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1552, %nyx_string* %t1554)
  store %nyx_string* %t1555, %nyx_string** %t1487
  %t1556 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %t1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t1556, i64 0)
  store %nyx_string* %t1557, %nyx_string** %t1558
  %t1559 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %t1560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t1559, i64 0)
  store %nyx_string* %t1560, %nyx_string** %t1561
  %t1562 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %t1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t1562, i64 0)
  store %nyx_string* %t1563, %nyx_string** %t1564
  %t1565 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t1566 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %t1567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t1566, i64 0)
  %t1568 = call i1 @nyx_string_equals(%nyx_string* %t1565, %nyx_string* %t1567)
  %t1569 = xor i1 %t1568, true
  br i1 %t1569, label %then345, label %else346
then345:
  %t1570 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t1571 = getelementptr [2 x i8], [2 x i8]* @.str137, i32 0, i32 0
  %t1572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t1571, i64 1)
  %t1573 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1570, %nyx_string* %t1572)
  %t1574 = load i64, i64* %cov_idx.ptr
  %t1575 = call %nyx_string* @nyx_string_from_int(i64 %t1574)
  %t1576 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1573, %nyx_string* %t1575)
  store %nyx_string* %t1576, %nyx_string** %t1577
  %t1578 = getelementptr [20 x i8], [20 x i8]* @.str138, i32 0, i32 0
  %t1579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t1578, i64 19)
  %t1580 = load %nyx_string*, %nyx_string** %t1577
  %t1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1579, %nyx_string* %t1580)
  %t1582 = getelementptr [6 x i8], [6 x i8]* @.str139, i32 0, i32 0
  %t1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t1582, i64 5)
  %t1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1581, %nyx_string* %t1583)
  store %nyx_string* %t1584, %nyx_string** %t1558
  %t1585 = getelementptr [62 x i8], [62 x i8]* @.str140, i32 0, i32 0
  %t1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t1585, i64 61)
  store %nyx_string* %t1586, %nyx_string** %t1561
  %t1587 = getelementptr [20 x i8], [20 x i8]* @.str141, i32 0, i32 0
  %t1588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t1587, i64 19)
  %t1589 = load %nyx_string*, %nyx_string** %t1577
  %t1590 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1588, %nyx_string* %t1589)
  %t1591 = getelementptr [11 x i8], [11 x i8]* @.str142, i32 0, i32 0
  %t1592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t1591, i64 10)
  %t1593 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1590, %nyx_string* %t1592)
  store %nyx_string* %t1593, %nyx_string** %t1564
  br label %merge347
else346:
  br label %merge347
merge347:
  %t1594 = getelementptr [20 x i8], [20 x i8]* @.str143, i32 0, i32 0
  %t1595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t1594, i64 19)
  %t1596 = getelementptr [180 x i8], [180 x i8]* @.str144, i32 0, i32 0
  %t1597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t1596, i64 179)
  %t1598 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1595, %nyx_string* %t1597)
  %t1599 = getelementptr [322 x i8], [322 x i8]* @.str145, i32 0, i32 0
  %t1600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t1599, i64 321)
  %t1601 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1598, %nyx_string* %t1600)
  store %nyx_string* %t1601, %nyx_string** %t1602
  %t1603 = load %nyx_string*, %nyx_string** %file.ptr
  %t1604 = call %nyx_string* @lib_modulo_de(%nyx_string* %t1603)
  store %nyx_string* %t1604, %nyx_string** %t1605
  %t1606 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %t1607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t1606, i64 0)
  store %nyx_string* %t1607, %nyx_string** %t1608
  %t1609 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %t1610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t1609, i64 0)
  store %nyx_string* %t1610, %nyx_string** %t1611
  %t1612 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %t1613 = load %nyx_string*, %nyx_string** %t1612
  %t1614 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %t1615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t1614, i64 0)
  %t1616 = call i1 @nyx_string_equals(%nyx_string* %t1613, %nyx_string* %t1615)
  %t1617 = xor i1 %t1616, true
  br i1 %t1617, label %then348, label %else349
then348:
  %t1618 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %t1619 = load %nyx_string*, %nyx_string** %t1618
  %t1620 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %t1621 = load %nyx_string*, %nyx_string** %t1620
  %t1622 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %t1623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t1622, i64 1)
  %t1624 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1621, %nyx_string* %t1623)
  store { i64, i8* }* %t1624, { i64, i8* }** %t1625
  %t1626 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %t1627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t1626, i64 0)
  store %nyx_string* %t1627, %nyx_string** %t1628
  store i64 0, i64* %t1629
  %t1630 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %t1631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t1630, i64 0)
  store %nyx_string* %t1631, %nyx_string** %t1632
  %t1633 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %t1634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t1633, i64 1)
  store %nyx_string* %t1634, %nyx_string** %t1635
  br label %while_cond351
while_cond351:
  %t1636 = load i64, i64* %t1629
  %t1637 = load { i64, i8* }*, { i64, i8* }** %t1625
  %t1638 = call i64 @nyx_array_length({ i64, i8* }* %t1637)
  %t1639 = icmp slt i64 %t1636, %t1638
  br i1 %t1639, label %while_body352, label %while_end353
while_body352:
  %t1640 = load { i64, i8* }*, { i64, i8* }** %t1625
  %t1641 = load i64, i64* %t1629
  %t1642 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1640, i64 %t1641, i64 2)
  %t1643 = inttoptr i64 %t1642 to %nyx_string*
  store %nyx_string* %t1643, %nyx_string** %t1644
  store i1 false, i1* %t1645
  %t1646 = load %nyx_string*, %nyx_string** %t1644
  %t1647 = load %nyx_string*, %nyx_string** %t1632
  %t1648 = call i1 @nyx_string_equals(%nyx_string* %t1646, %nyx_string* %t1647)
  %t1649 = xor i1 %t1648, true
  br i1 %t1649, label %sc_and_rhs354, label %sc_and_end355
sc_and_rhs354:
  %t1650 = load %nyx_string*, %nyx_string** %t1644
  %t1651 = load %nyx_string*, %nyx_string** %t1605
  %t1652 = call i1 @nyx_string_equals(%nyx_string* %t1650, %nyx_string* %t1651)
  %t1653 = xor i1 %t1652, true
  store i1 %t1653, i1* %t1645
  br label %sc_and_end355
sc_and_end355:
  %t1654 = load i1, i1* %t1645
  br i1 %t1654, label %then356, label %else357
then356:
  %t1655 = load %nyx_string*, %nyx_string** %t1628
  %t1656 = load %nyx_string*, %nyx_string** %t1632
  %t1657 = call i1 @nyx_string_equals(%nyx_string* %t1655, %nyx_string* %t1656)
  %t1658 = xor i1 %t1657, true
  br i1 %t1658, label %then359, label %else360
then359:
  %t1659 = load %nyx_string*, %nyx_string** %t1628
  %t1660 = load %nyx_string*, %nyx_string** %t1635
  %t1661 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1659, %nyx_string* %t1660)
  store %nyx_string* %t1661, %nyx_string** %t1628
  br label %merge361
else360:
  br label %merge361
merge361:
  %t1662 = load %nyx_string*, %nyx_string** %t1628
  %t1663 = load %nyx_string*, %nyx_string** %t1644
  %t1664 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1662, %nyx_string* %t1663)
  store %nyx_string* %t1664, %nyx_string** %t1628
  br label %merge358
else357:
  br label %merge358
merge358:
  %t1665 = load i64, i64* %t1629
  %t1666 = add i64 %t1665, 1
  store i64 %t1666, i64* %t1629
  br label %while_cond351
while_end353:
  %t1667 = load %nyx_string*, %nyx_string** %t1628
  %t1668 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %t1669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t1668, i64 0)
  %t1670 = call i1 @nyx_string_equals(%nyx_string* %t1667, %nyx_string* %t1669)
  %t1671 = xor i1 %t1670, true
  br i1 %t1671, label %then362, label %else363
then362:
  %t1672 = getelementptr [19 x i8], [19 x i8]* @.str154, i32 0, i32 0
  %t1673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t1672, i64 18)
  %t1674 = load %nyx_string*, %nyx_string** %t1628
  %t1675 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1673, %nyx_string* %t1674)
  %t1676 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %t1677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t1676, i64 1)
  %t1678 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1675, %nyx_string* %t1677)
  store %nyx_string* %t1678, %nyx_string** %t1608
  br label %merge364
else363:
  br label %merge364
merge364:
  store i1 false, i1* %t1679
  %t1680 = load %nyx_string*, %nyx_string** %t1605
  %t1681 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %t1682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t1681, i64 0)
  %t1683 = call i1 @nyx_string_equals(%nyx_string* %t1680, %nyx_string* %t1682)
  %t1684 = xor i1 %t1683, true
  br i1 %t1684, label %sc_and_rhs365, label %sc_and_end366
sc_and_rhs365:
  %t1685 = getelementptr [2 x i8], [2 x i8]* @.str157, i32 0, i32 0
  %t1686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t1685, i64 1)
  %t1687 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %t1688 = load %nyx_string*, %nyx_string** %t1687
  %t1689 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1686, %nyx_string* %t1688)
  %t1690 = getelementptr [2 x i8], [2 x i8]* @.str158, i32 0, i32 0
  %t1691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t1690, i64 1)
  %t1692 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1689, %nyx_string* %t1691)
  %t1693 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %t1694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t1693, i64 1)
  %t1695 = load %nyx_string*, %nyx_string** %t1605
  %t1696 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1694, %nyx_string* %t1695)
  %t1697 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %t1698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t1697, i64 1)
  %t1699 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1696, %nyx_string* %t1698)
  %t1700 = call i1 @nyx_string_contains(%nyx_string* %t1692, %nyx_string* %t1699)
  store i1 %t1700, i1* %t1679
  br label %sc_and_end366
sc_and_end366:
  %t1701 = load i1, i1* %t1679
  br i1 %t1701, label %then367, label %else368
then367:
  %t1702 = load %nyx_string*, %nyx_string** %t1608
  %t1703 = getelementptr [16 x i8], [16 x i8]* @.str161, i32 0, i32 0
  %t1704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t1703, i64 15)
  %t1705 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1702, %nyx_string* %t1704)
  %t1706 = load %nyx_string*, %nyx_string** %t1605
  %t1707 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1705, %nyx_string* %t1706)
  %t1708 = getelementptr [2 x i8], [2 x i8]* @.str162, i32 0, i32 0
  %t1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t1708, i64 1)
  %t1710 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1707, %nyx_string* %t1709)
  store %nyx_string* %t1710, %nyx_string** %t1608
  br label %merge369
else368:
  br label %merge369
merge369:
  %t1711 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %t1712 = load %nyx_string*, %nyx_string** %t1711
  %t1713 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %t1714 = load %nyx_string*, %nyx_string** %t1713
  %t1715 = getelementptr [2 x i8], [2 x i8]* @.str163, i32 0, i32 0
  %t1716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t1715, i64 1)
  %t1717 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1714, %nyx_string* %t1716)
  store { i64, i8* }* %t1717, { i64, i8* }** %t1718
  store i64 0, i64* %t1719
  %t1720 = getelementptr [2 x i8], [2 x i8]* @.str164, i32 0, i32 0
  %t1721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t1720, i64 1)
  store %nyx_string* %t1721, %nyx_string** %t1722
  %t1723 = getelementptr [2 x i8], [2 x i8]* @.str165, i32 0, i32 0
  %t1724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t1723, i64 1)
  store %nyx_string* %t1724, %nyx_string** %t1725
  %t1726 = getelementptr [3 x i8], [3 x i8]* @.str166, i32 0, i32 0
  %t1727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t1726, i64 2)
  store %nyx_string* %t1727, %nyx_string** %t1728
  br label %while_cond370
while_cond370:
  %t1729 = load i64, i64* %t1719
  %t1730 = load { i64, i8* }*, { i64, i8* }** %t1718
  %t1731 = call i64 @nyx_array_length({ i64, i8* }* %t1730)
  %t1732 = icmp slt i64 %t1729, %t1731
  br i1 %t1732, label %while_body371, label %while_end372
while_body371:
  %t1733 = load { i64, i8* }*, { i64, i8* }** %t1718
  %t1734 = load i64, i64* %t1719
  %t1735 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1733, i64 %t1734, i64 2)
  %t1736 = inttoptr i64 %t1735 to %nyx_string*
  store %nyx_string* %t1736, %nyx_string** %t1737
  %t1738 = load %nyx_string*, %nyx_string** %t1737
  %t1739 = load %nyx_string*, %nyx_string** %t1722
  %t1740 = call i64 @nyx_string_index_of(%nyx_string* %t1738, %nyx_string* %t1739)
  store i64 %t1740, i64* %t1741
  %t1742 = load i64, i64* %t1741
  %t1743 = icmp sgt i64 %t1742, 0
  br i1 %t1743, label %then373, label %else374
then373:
  %t1744 = load %nyx_string*, %nyx_string** %t1737
  %t1745 = load i64, i64* %t1741
  %t1746 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1744, i64 0, i64 %t1745)
  store %nyx_string* %t1746, %nyx_string** %t1747
  %t1748 = load %nyx_string*, %nyx_string** %t1747
  %t1749 = load %nyx_string*, %nyx_string** %t1605
  %t1750 = call i1 @nyx_string_equals(%nyx_string* %t1748, %nyx_string* %t1749)
  %t1751 = xor i1 %t1750, true
  br i1 %t1751, label %then376, label %else377
then376:
  %t1752 = load %nyx_string*, %nyx_string** %t1611
  %t1753 = load %nyx_string*, %nyx_string** %t1725
  %t1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1752, %nyx_string* %t1753)
  %t1755 = load %nyx_string*, %nyx_string** %t1737
  %t1756 = load i64, i64* %t1741
  %t1757 = add i64 %t1756, 1
  %t1758 = load %nyx_string*, %nyx_string** %t1737
  %t1759 = call i64 @nyx_string_byte_length(%nyx_string* %t1758)
  %t1760 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1755, i64 %t1757, i64 %t1759)
  %t1761 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1754, %nyx_string* %t1760)
  %t1762 = load %nyx_string*, %nyx_string** %t1728
  %t1763 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1761, %nyx_string* %t1762)
  store %nyx_string* %t1763, %nyx_string** %t1611
  br label %merge378
else377:
  br label %merge378
merge378:
  br label %merge375
else374:
  br label %merge375
merge375:
  %t1764 = load i64, i64* %t1719
  %t1765 = add i64 %t1764, 1
  store i64 %t1765, i64* %t1719
  br label %while_cond370
while_end372:
  br label %merge350
else349:
  br label %merge350
merge350:
  %t1766 = getelementptr [55 x i8], [55 x i8]* @.str167, i32 0, i32 0
  %t1767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t1766, i64 54)
  %t1768 = load %nyx_string*, %nyx_string** %t1398
  %t1769 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1767, %nyx_string* %t1768)
  %t1770 = getelementptr [37 x i8], [37 x i8]* @.str168, i32 0, i32 0
  %t1771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t1770, i64 36)
  %t1772 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1769, %nyx_string* %t1771)
  %t1773 = load %nyx_string*, %nyx_string** %file.ptr
  %t1774 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1772, %nyx_string* %t1773)
  %t1775 = getelementptr [2 x i8], [2 x i8]* @.str169, i32 0, i32 0
  %t1776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t1775, i64 1)
  %t1777 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1774, %nyx_string* %t1776)
  %t1778 = load %nyx_string*, %nyx_string** %t1558
  %t1779 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1777, %nyx_string* %t1778)
  %t1780 = load %nyx_string*, %nyx_string** %t1608
  %t1781 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1779, %nyx_string* %t1780)
  %t1782 = getelementptr [23 x i8], [23 x i8]* @.str170, i32 0, i32 0
  %t1783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t1782, i64 22)
  %t1784 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1781, %nyx_string* %t1783)
  %t1785 = load %nyx_string*, %nyx_string** %t1442
  %t1786 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1784, %nyx_string* %t1785)
  %t1787 = getelementptr [38 x i8], [38 x i8]* @.str171, i32 0, i32 0
  %t1788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t1787, i64 37)
  %t1789 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1786, %nyx_string* %t1788)
  %t1790 = load %nyx_string*, %nyx_string** %t1442
  %t1791 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1789, %nyx_string* %t1790)
  %t1792 = getelementptr [14 x i8], [14 x i8]* @.str172, i32 0, i32 0
  %t1793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t1792, i64 13)
  %t1794 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1791, %nyx_string* %t1793)
  store %nyx_string* %t1794, %nyx_string** %t1795
  %t1796 = load %nyx_string*, %nyx_string** %t1518
  %t1797 = load %nyx_string*, %nyx_string** %t1795
  %t1798 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1796, %nyx_string* %t1797)
  store %nyx_string* %t1798, %nyx_string** %t1799
  %t1800 = getelementptr [15 x i8], [15 x i8]* @.str173, i32 0, i32 0
  %t1801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t1800, i64 14)
  %t1802 = load %nyx_string*, %nyx_string** %t1415
  %t1803 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1801, %nyx_string* %t1802)
  %t1804 = getelementptr [27 x i8], [27 x i8]* @.str174, i32 0, i32 0
  %t1805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t1804, i64 26)
  %t1806 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1803, %nyx_string* %t1805)
  store %nyx_string* %t1806, %nyx_string** %t1807
  %t1808 = load %nyx_string*, %nyx_string** %t1602
  %t1809 = load %nyx_string*, %nyx_string** %t1807
  %t1810 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1808, %nyx_string* %t1809)
  %t1811 = getelementptr [16 x i8], [16 x i8]* @.str175, i32 0, i32 0
  %t1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t1811, i64 15)
  %t1813 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1810, %nyx_string* %t1812)
  %t1814 = getelementptr [10 x i8], [10 x i8]* @.str176, i32 0, i32 0
  %t1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t1814, i64 9)
  %t1816 = call %nyx_string* @tmp_plantilla(%nyx_string* %t1815)
  %t1817 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1813, %nyx_string* %t1816)
  %t1818 = getelementptr [5 x i8], [5 x i8]* @.str177, i32 0, i32 0
  %t1819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t1818, i64 4)
  %t1820 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1817, %nyx_string* %t1819)
  %t1821 = getelementptr [17 x i8], [17 x i8]* @.str178, i32 0, i32 0
  %t1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t1821, i64 16)
  %t1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1820, %nyx_string* %t1822)
  %t1824 = getelementptr [31 x i8], [31 x i8]* @.str179, i32 0, i32 0
  %t1825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t1824, i64 30)
  %t1826 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1823, %nyx_string* %t1825)
  %t1827 = getelementptr [17 x i8], [17 x i8]* @.str180, i32 0, i32 0
  %t1828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t1827, i64 16)
  %t1829 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1826, %nyx_string* %t1828)
  %t1830 = getelementptr [5 x i8], [5 x i8]* @.str181, i32 0, i32 0
  %t1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t1830, i64 4)
  %t1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1829, %nyx_string* %t1831)
  %t1833 = load %nyx_string*, %nyx_string** %t1398
  %t1834 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1832, %nyx_string* %t1833)
  %t1835 = getelementptr [2 x i8], [2 x i8]* @.str182, i32 0, i32 0
  %t1836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t1835, i64 1)
  %t1837 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1834, %nyx_string* %t1836)
  %t1838 = load %nyx_string*, %nyx_string** %file.ptr
  %t1839 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1837, %nyx_string* %t1838)
  %t1840 = getelementptr [12 x i8], [12 x i8]* @.str183, i32 0, i32 0
  %t1841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t1840, i64 11)
  %t1842 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1839, %nyx_string* %t1841)
  %t1843 = getelementptr [5 x i8], [5 x i8]* @.str184, i32 0, i32 0
  %t1844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t1843, i64 4)
  %t1845 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1842, %nyx_string* %t1844)
  %t1846 = load %nyx_string*, %nyx_string** %t1376
  %t1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1845, %nyx_string* %t1846)
  %t1848 = getelementptr [3 x i8], [3 x i8]* @.str185, i32 0, i32 0
  %t1849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t1848, i64 2)
  %t1850 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1847, %nyx_string* %t1849)
  %t1851 = getelementptr [51 x i8], [51 x i8]* @.str186, i32 0, i32 0
  %t1852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t1851, i64 50)
  %t1853 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1850, %nyx_string* %t1852)
  %t1854 = load %nyx_string*, %nyx_string** %t1376
  %t1855 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1853, %nyx_string* %t1854)
  %t1856 = getelementptr [35 x i8], [35 x i8]* @.str187, i32 0, i32 0
  %t1857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t1856, i64 34)
  %t1858 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1855, %nyx_string* %t1857)
  %t1859 = load %nyx_string*, %nyx_string** %t1799
  %t1860 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1858, %nyx_string* %t1859)
  %t1861 = getelementptr [7 x i8], [7 x i8]* @.str188, i32 0, i32 0
  %t1862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t1861, i64 6)
  %t1863 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1860, %nyx_string* %t1862)
  %t1864 = load %nyx_string*, %nyx_string** %t1450
  %t1865 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1863, %nyx_string* %t1864)
  %t1866 = load %nyx_string*, %nyx_string** %t1561
  %t1867 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1865, %nyx_string* %t1866)
  %t1868 = getelementptr [40 x i8], [40 x i8]* @.str189, i32 0, i32 0
  %t1869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t1868, i64 39)
  %t1870 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1867, %nyx_string* %t1869)
  %t1871 = load %nyx_string*, %nyx_string** %t1611
  %t1872 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1870, %nyx_string* %t1871)
  %t1873 = load %nyx_string*, %nyx_string** %t1487
  %t1874 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1872, %nyx_string* %t1873)
  %t1875 = load %nyx_string*, %nyx_string** %t1457
  %t1876 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1874, %nyx_string* %t1875)
  %t1877 = getelementptr [44 x i8], [44 x i8]* @.str190, i32 0, i32 0
  %t1878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t1877, i64 43)
  %t1879 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1876, %nyx_string* %t1878)
  %t1880 = getelementptr [5 x i8], [5 x i8]* @.str191, i32 0, i32 0
  %t1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t1880, i64 4)
  %t1882 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1879, %nyx_string* %t1881)
  %t1883 = load %nyx_string*, %nyx_string** %t1447
  %t1884 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1882, %nyx_string* %t1883)
  %t1885 = getelementptr [8 x i8], [8 x i8]* @.str192, i32 0, i32 0
  %t1886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t1885, i64 7)
  %t1887 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1884, %nyx_string* %t1886)
  %t1888 = load %nyx_string*, %nyx_string** %t1442
  %t1889 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1887, %nyx_string* %t1888)
  %t1890 = getelementptr [3 x i8], [3 x i8]* @.str193, i32 0, i32 0
  %t1891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t1890, i64 2)
  %t1892 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1889, %nyx_string* %t1891)
  %t1893 = getelementptr [57 x i8], [57 x i8]* @.str194, i32 0, i32 0
  %t1894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t1893, i64 56)
  %t1895 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1892, %nyx_string* %t1894)
  %t1896 = load %nyx_string*, %nyx_string** %t1564
  %t1897 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1895, %nyx_string* %t1896)
  %t1898 = getelementptr [9 x i8], [9 x i8]* @.str195, i32 0, i32 0
  %t1899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t1898, i64 8)
  %t1900 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1897, %nyx_string* %t1899)
  %t1901 = load %nyx_string*, %nyx_string** %t1402
  %t1902 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1900, %nyx_string* %t1901)
  %t1903 = getelementptr [3 x i8], [3 x i8]* @.str196, i32 0, i32 0
  %t1904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t1903, i64 2)
  %t1905 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1902, %nyx_string* %t1904)
  %t1906 = load %nyx_string*, %nyx_string** %t1447
  %t1907 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1905, %nyx_string* %t1906)
  %t1908 = getelementptr [6 x i8], [6 x i8]* @.str197, i32 0, i32 0
  %t1909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t1908, i64 5)
  %t1910 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1907, %nyx_string* %t1909)
  %t1911 = load %nyx_string*, %nyx_string** %t1442
  %t1912 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1910, %nyx_string* %t1911)
  %t1913 = getelementptr [8 x i8], [8 x i8]* @.str198, i32 0, i32 0
  %t1914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t1913, i64 7)
  %t1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1912, %nyx_string* %t1914)
  %t1916 = getelementptr [14 x i8], [14 x i8]* @.str199, i32 0, i32 0
  %t1917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t1916, i64 13)
  %t1918 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1915, %nyx_string* %t1917)
  %t1919 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %t1920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t1919, i64 7)
  %t1921 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1918, %nyx_string* %t1920)
  %t1922 = load %nyx_string*, %nyx_string** %t1447
  %t1923 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1921, %nyx_string* %t1922)
  %t1924 = getelementptr [3 x i8], [3 x i8]* @.str201, i32 0, i32 0
  %t1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t1924, i64 2)
  %t1926 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1923, %nyx_string* %t1925)
  %t1927 = getelementptr [17 x i8], [17 x i8]* @.str202, i32 0, i32 0
  %t1928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t1927, i64 16)
  %t1929 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1926, %nyx_string* %t1928)
  store %nyx_string* %t1929, %nyx_string** %t1930
  %t1931 = load %nyx_string*, %nyx_string** %t1415
  %t1932 = getelementptr [8 x i8], [8 x i8]* @.str203, i32 0, i32 0
  %t1933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t1932, i64 7)
  %t1934 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1931, %nyx_string* %t1933)
  store %nyx_string* %t1934, %nyx_string** %t1935
  %t1936 = load %nyx_string*, %nyx_string** %t1935
  %t1937 = load %nyx_string*, %nyx_string** %t1930
  %t1938 = ptrtoint %nyx_string* %t1937 to i64
  %t1939 = call i8* @nyx_string_to_cstr(%nyx_string* %t1936)
  %t1940 = inttoptr i64 %t1938 to %nyx_string*
  %t1941 = call i1 @nyx_write_file_safe(i8* %t1939, %nyx_string* %t1940)
  %t1942 = getelementptr [7 x i8], [7 x i8]* @.str204, i32 0, i32 0
  %t1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t1942, i64 6)
  %t1944 = load %nyx_string*, %nyx_string** %t1935
  %t1945 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1943, %nyx_string* %t1944)
  %t1946 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %t1947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t1946, i64 1)
  %t1948 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1945, %nyx_string* %t1947)
  %t1949 = call i8* @nyx_string_to_cstr(%nyx_string* %t1948)
  %t1950 = call i64 @nyx_exec_code(i8* %t1949)
  store i64 %t1950, i64* %t1951
  %t1952 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %t1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t1952, i64 0)
  store %nyx_string* %t1953, %nyx_string** %t1954
  %t1955 = load %nyx_string*, %nyx_string** %t1442
  %t1956 = call i8* @nyx_string_to_cstr(%nyx_string* %t1955)
  %t1957 = call i1 @nyx_file_exists(i8* %t1956)
  br i1 %t1957, label %then379, label %else380
then379:
  %t1958 = load %nyx_string*, %nyx_string** %t1442
  %t1959 = call i8* @nyx_string_to_cstr(%nyx_string* %t1958)
  %t1960 = call %nyx_string* @nyx_read_file(i8* %t1959)
  store %nyx_string* %t1960, %nyx_string** %t1954
  br label %merge381
else380:
  br label %merge381
merge381:
  %t1961 = getelementptr [9 x i8], [9 x i8]* @.str207, i32 0, i32 0
  %t1962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t1961, i64 8)
  %t1963 = load %nyx_string*, %nyx_string** %t1415
  %t1964 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1962, %nyx_string* %t1963)
  %t1965 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %t1966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t1965, i64 1)
  %t1967 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1964, %nyx_string* %t1966)
  %t1968 = call i8* @nyx_string_to_cstr(%nyx_string* %t1967)
  %t1969 = call %nyx_string* @nyx_exec(i8* %t1968)
  store i64 0, i64* %t1970
  store i64 0, i64* %t1971
  %t1972 = load %nyx_string*, %nyx_string** %t1954
  %t1973 = getelementptr [2 x i8], [2 x i8]* @.str209, i32 0, i32 0
  %t1974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t1973, i64 1)
  %t1975 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1972, %nyx_string* %t1974)
  store { i64, i8* }* %t1975, { i64, i8* }** %t1976
  store i64 0, i64* %t1977
  %t1978 = getelementptr [6 x i8], [6 x i8]* @.str210, i32 0, i32 0
  %t1979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t1978, i64 5)
  store %nyx_string* %t1979, %nyx_string** %t1980
  %t1981 = getelementptr [6 x i8], [6 x i8]* @.str211, i32 0, i32 0
  %t1982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t1981, i64 5)
  store %nyx_string* %t1982, %nyx_string** %t1983
  br label %while_cond382
while_cond382:
  %t1984 = load i64, i64* %t1977
  %t1985 = load { i64, i8* }*, { i64, i8* }** %t1976
  %t1986 = call i64 @nyx_array_length({ i64, i8* }* %t1985)
  %t1987 = icmp slt i64 %t1984, %t1986
  br i1 %t1987, label %while_body383, label %while_end384
while_body383:
  %t1988 = load { i64, i8* }*, { i64, i8* }** %t1976
  %t1989 = load i64, i64* %t1977
  %t1990 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1988, i64 %t1989, i64 2)
  %t1991 = inttoptr i64 %t1990 to %nyx_string*
  store %nyx_string* %t1991, %nyx_string** %t1992
  %t1993 = load %nyx_string*, %nyx_string** %t1992
  %t1994 = load %nyx_string*, %nyx_string** %t1980
  %t1995 = call i1 @nyx_string_contains(%nyx_string* %t1993, %nyx_string* %t1994)
  br i1 %t1995, label %then385, label %else386
then385:
  %t1996 = load i64, i64* %t1970
  %t1997 = add i64 %t1996, 1
  store i64 %t1997, i64* %t1970
  br label %merge387
else386:
  %t1998 = load %nyx_string*, %nyx_string** %t1992
  %t1999 = load %nyx_string*, %nyx_string** %t1983
  %t2000 = call i1 @nyx_string_contains(%nyx_string* %t1998, %nyx_string* %t1999)
  br i1 %t2000, label %then388, label %else389
then388:
  %t2001 = load i64, i64* %t1971
  %t2002 = add i64 %t2001, 1
  store i64 %t2002, i64* %t1971
  br label %merge390
else389:
  br label %merge390
merge390:
  br label %merge387
merge387:
  %t2003 = load i64, i64* %t1977
  %t2004 = add i64 %t2003, 1
  store i64 %t2004, i64* %t1977
  br label %while_cond382
while_end384:
  %t2005 = getelementptr %TestResult, %TestResult* null, i32 1
  %t2006 = ptrtoint %TestResult* %t2005 to i64
  %t2007 = call i8* @GC_malloc(i64 %t2006)
  %t2008 = bitcast i8* %t2007 to %TestResult*
  %t2009 = load %nyx_string*, %nyx_string** %file.ptr
  %t2010 = getelementptr %TestResult, %TestResult* %t2008, i32 0, i32 0
  store %nyx_string* %t2009, %nyx_string** %t2010
  %t2011 = load i64, i64* %t1970
  %t2012 = getelementptr %TestResult, %TestResult* %t2008, i32 0, i32 1
  store i64 %t2011, i64* %t2012
  %t2013 = load i64, i64* %t1971
  %t2014 = getelementptr %TestResult, %TestResult* %t2008, i32 0, i32 2
  store i64 %t2013, i64* %t2014
  %t2015 = load %nyx_string*, %nyx_string** %t1954
  %t2016 = getelementptr %TestResult, %TestResult* %t2008, i32 0, i32 3
  store %nyx_string* %t2015, %nyx_string** %t2016
  store i1 false, i1* %t2017
  %t2018 = load i64, i64* %t1951
  %t2019 = icmp eq i64 %t2018, 0
  br i1 %t2019, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %t2020 = load i64, i64* %t1971
  %t2021 = icmp eq i64 %t2020, 0
  store i1 %t2021, i1* %t2017
  br label %sc_and_end392
sc_and_end392:
  %t2022 = load i1, i1* %t2017
  %t2023 = getelementptr %TestResult, %TestResult* %t2008, i32 0, i32 4
  store i1 %t2022, i1* %t2023
  %t2024 = load %TestResult, %TestResult* %t2008
  ret %TestResult %t2024
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  %verbose.ptr = alloca i1
  store %TestResult %result.param, %TestResult* %result.ptr
  store i1 %verbose.param, i1* %verbose.ptr
  %t2025 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %t2026 = load i1, i1* %t2025
  br i1 %t2026, label %then393, label %else394
then393:
  %t2027 = getelementptr [9 x i8], [9 x i8]* @.str212, i32 0, i32 0
  %t2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t2027, i64 8)
  %t2029 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %t2030 = load %nyx_string*, %nyx_string** %t2029
  %t2031 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2028, %nyx_string* %t2030)
  %t2032 = getelementptr [3 x i8], [3 x i8]* @.str213, i32 0, i32 0
  %t2033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t2032, i64 2)
  %t2034 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2031, %nyx_string* %t2033)
  %t2035 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %t2036 = load i64, i64* %t2035
  %t2037 = call %nyx_string* @nyx_string_from_int(i64 %t2036)
  %t2038 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2034, %nyx_string* %t2037)
  %t2039 = getelementptr [8 x i8], [8 x i8]* @.str214, i32 0, i32 0
  %t2040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t2039, i64 7)
  %t2041 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2038, %nyx_string* %t2040)
  %t2042 = call i8* @nyx_string_to_cstr(%nyx_string* %t2041)
  call void @nyx_print_string(i8* %t2042)
  %t2043 = load i1, i1* %verbose.ptr
  br i1 %t2043, label %then396, label %else397
then396:
  %t2044 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %t2045 = load %nyx_string*, %nyx_string** %t2044
  %t2046 = call i8* @nyx_string_to_cstr(%nyx_string* %t2045)
  call void @nyx_print_string(i8* %t2046)
  br label %merge398
else397:
  br label %merge398
merge398:
  br label %merge395
else394:
  %t2047 = getelementptr [9 x i8], [9 x i8]* @.str215, i32 0, i32 0
  %t2048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t2047, i64 8)
  %t2049 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %t2050 = load %nyx_string*, %nyx_string** %t2049
  %t2051 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2048, %nyx_string* %t2050)
  %t2052 = getelementptr [3 x i8], [3 x i8]* @.str216, i32 0, i32 0
  %t2053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t2052, i64 2)
  %t2054 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2051, %nyx_string* %t2053)
  %t2055 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %t2056 = load i64, i64* %t2055
  %t2057 = call %nyx_string* @nyx_string_from_int(i64 %t2056)
  %t2058 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2054, %nyx_string* %t2057)
  %t2059 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %t2060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t2059, i64 9)
  %t2061 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2058, %nyx_string* %t2060)
  %t2062 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %t2063 = load i64, i64* %t2062
  %t2064 = call %nyx_string* @nyx_string_from_int(i64 %t2063)
  %t2065 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2061, %nyx_string* %t2064)
  %t2066 = getelementptr [9 x i8], [9 x i8]* @.str218, i32 0, i32 0
  %t2067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t2066, i64 8)
  %t2068 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2065, %nyx_string* %t2067)
  %t2069 = call i8* @nyx_string_to_cstr(%nyx_string* %t2068)
  call void @nyx_print_string(i8* %t2069)
  %t2070 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %t2071 = load %nyx_string*, %nyx_string** %t2070
  %t2072 = call i8* @nyx_string_to_cstr(%nyx_string* %t2071)
  call void @nyx_print_string(i8* %t2072)
  br label %merge395
merge395:
  ret i64 0
}

define internal i64 @print_summary(
{ i64, i8* }* %results.param, i64 %total_passed.param, i64 %total_failed.param) {
  %results.ptr = alloca { i64, i8* }*
  %total_passed.ptr = alloca i64
  %total_failed.ptr = alloca i64
  %t2079 = alloca i64
  %t2080 = alloca i64
  %t2081 = alloca i64
  %t2092 = alloca %TestResult
  %t2146 = alloca i1
  store { i64, i8* }* %results.param, { i64, i8* }** %results.ptr
  store i64 %total_passed.param, i64* %total_passed.ptr
  store i64 %total_failed.param, i64* %total_failed.ptr
  %t2073 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %t2074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t2073, i64 0)
  %t2075 = call i8* @nyx_string_to_cstr(%nyx_string* %t2074)
  call void @nyx_print_string(i8* %t2075)
  %t2076 = getelementptr [36 x i8], [36 x i8]* @.str220, i32 0, i32 0
  %t2077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t2076, i64 35)
  %t2078 = call i8* @nyx_string_to_cstr(%nyx_string* %t2077)
  call void @nyx_print_string(i8* %t2078)
  store i64 0, i64* %t2079
  store i64 0, i64* %t2080
  store i64 0, i64* %t2081
  br label %while_cond399
while_cond399:
  %t2082 = load i64, i64* %t2081
  %t2083 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %t2084 = call i64 @nyx_array_length({ i64, i8* }* %t2083)
  %t2085 = icmp slt i64 %t2082, %t2084
  br i1 %t2085, label %while_body400, label %while_end401
while_body400:
  %t2086 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %t2087 = load i64, i64* %t2081
  %t2088 = getelementptr [11 x i8], [11 x i8]* @.slotT221, i32 0, i32 0
  %t2089 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t2086, i64 %t2087, i8* %t2088)
  %t2090 = inttoptr i64 %t2089 to %TestResult*
  %t2091 = load %TestResult, %TestResult* %t2090
  store %TestResult %t2091, %TestResult* %t2092
  %t2093 = getelementptr %TestResult, %TestResult* %t2092, i32 0, i32 4
  %t2094 = load i1, i1* %t2093
  br i1 %t2094, label %then402, label %else403
then402:
  %t2095 = load i64, i64* %t2079
  %t2096 = add i64 %t2095, 1
  store i64 %t2096, i64* %t2079
  br label %merge404
else403:
  %t2097 = load i64, i64* %t2080
  %t2098 = add i64 %t2097, 1
  store i64 %t2098, i64* %t2080
  br label %merge404
merge404:
  %t2099 = load i64, i64* %t2081
  %t2100 = add i64 %t2099, 1
  store i64 %t2100, i64* %t2081
  br label %while_cond399
while_end401:
  %t2101 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %t2102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t2101, i64 10)
  %t2103 = load i64, i64* %t2079
  %t2104 = call %nyx_string* @nyx_string_from_int(i64 %t2103)
  %t2105 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2102, %nyx_string* %t2104)
  %t2106 = getelementptr [10 x i8], [10 x i8]* @.str223, i32 0, i32 0
  %t2107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t2106, i64 9)
  %t2108 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2105, %nyx_string* %t2107)
  %t2109 = load i64, i64* %t2080
  %t2110 = call %nyx_string* @nyx_string_from_int(i64 %t2109)
  %t2111 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2108, %nyx_string* %t2110)
  %t2112 = getelementptr [10 x i8], [10 x i8]* @.str224, i32 0, i32 0
  %t2113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t2112, i64 9)
  %t2114 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2111, %nyx_string* %t2113)
  %t2115 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %t2116 = call i64 @nyx_array_length({ i64, i8* }* %t2115)
  %t2117 = call %nyx_string* @nyx_string_from_int(i64 %t2116)
  %t2118 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2114, %nyx_string* %t2117)
  %t2119 = getelementptr [8 x i8], [8 x i8]* @.str225, i32 0, i32 0
  %t2120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t2119, i64 7)
  %t2121 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2118, %nyx_string* %t2120)
  %t2122 = call i8* @nyx_string_to_cstr(%nyx_string* %t2121)
  call void @nyx_print_string(i8* %t2122)
  %t2123 = getelementptr [11 x i8], [11 x i8]* @.str226, i32 0, i32 0
  %t2124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t2123, i64 10)
  %t2125 = load i64, i64* %total_passed.ptr
  %t2126 = call %nyx_string* @nyx_string_from_int(i64 %t2125)
  %t2127 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2124, %nyx_string* %t2126)
  %t2128 = getelementptr [10 x i8], [10 x i8]* @.str227, i32 0, i32 0
  %t2129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t2128, i64 9)
  %t2130 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2127, %nyx_string* %t2129)
  %t2131 = load i64, i64* %total_failed.ptr
  %t2132 = call %nyx_string* @nyx_string_from_int(i64 %t2131)
  %t2133 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2130, %nyx_string* %t2132)
  %t2134 = getelementptr [10 x i8], [10 x i8]* @.str228, i32 0, i32 0
  %t2135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t2134, i64 9)
  %t2136 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2133, %nyx_string* %t2135)
  %t2137 = load i64, i64* %total_passed.ptr
  %t2138 = load i64, i64* %total_failed.ptr
  %t2139 = add i64 %t2137, %t2138
  %t2140 = call %nyx_string* @nyx_string_from_int(i64 %t2139)
  %t2141 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2136, %nyx_string* %t2140)
  %t2142 = getelementptr [8 x i8], [8 x i8]* @.str229, i32 0, i32 0
  %t2143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t2142, i64 7)
  %t2144 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2141, %nyx_string* %t2143)
  %t2145 = call i8* @nyx_string_to_cstr(%nyx_string* %t2144)
  call void @nyx_print_string(i8* %t2145)
  store i1 false, i1* %t2146
  %t2147 = load i64, i64* %total_failed.ptr
  %t2148 = icmp eq i64 %t2147, 0
  br i1 %t2148, label %sc_and_rhs405, label %sc_and_end406
sc_and_rhs405:
  %t2149 = load i64, i64* %t2080
  %t2150 = icmp eq i64 %t2149, 0
  store i1 %t2150, i1* %t2146
  br label %sc_and_end406
sc_and_end406:
  %t2151 = load i1, i1* %t2146
  br i1 %t2151, label %then407, label %else408
then407:
  %t2152 = getelementptr [27 x i8], [27 x i8]* @.str230, i32 0, i32 0
  %t2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t2152, i64 26)
  %t2154 = call i8* @nyx_string_to_cstr(%nyx_string* %t2153)
  call void @nyx_print_string(i8* %t2154)
  br label %merge409
else408:
  %t2155 = getelementptr [28 x i8], [28 x i8]* @.str231, i32 0, i32 0
  %t2156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t2155, i64 27)
  %t2157 = call i8* @nyx_string_to_cstr(%nyx_string* %t2156)
  call void @nyx_print_string(i8* %t2157)
  br label %merge409
merge409:
  %t2158 = getelementptr [36 x i8], [36 x i8]* @.str232, i32 0, i32 0
  %t2159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t2158, i64 35)
  %t2160 = call i8* @nyx_string_to_cstr(%nyx_string* %t2159)
  call void @nyx_print_string(i8* %t2160)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %t2165 = alloca %nyx_string*
  %t2170 = alloca i64
  %t2177 = alloca i64
  %t2180 = alloca %nyx_string*
  %t2189 = alloca i64
  %t2190 = alloca i1
  %t2161 = getelementptr [28 x i8], [28 x i8]* @.str233, i32 0, i32 0
  %t2162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t2161, i64 27)
  %t2163 = call i8* @nyx_string_to_cstr(%nyx_string* %t2162)
  %t2164 = call %nyx_string* @nyx_exec(i8* %t2163)
  store %nyx_string* %t2164, %nyx_string** %t2165
  %t2166 = load %nyx_string*, %nyx_string** %t2165
  %t2167 = getelementptr [9 x i8], [9 x i8]* @.str234, i32 0, i32 0
  %t2168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t2167, i64 8)
  %t2169 = call i64 @nyx_string_index_of(%nyx_string* %t2166, %nyx_string* %t2168)
  store i64 %t2169, i64* %t2170
  %t2171 = load i64, i64* %t2170
  %t2172 = icmp slt i64 %t2171, 0
  br i1 %t2172, label %then410, label %else411
then410:
  %t2173 = getelementptr [1 x i8], [1 x i8]* @.str235, i32 0, i32 0
  %t2174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t2173, i64 0)
  ret %nyx_string* %t2174
else411:
  br label %merge412
merge412:
  %t2175 = load i64, i64* %t2170
  %t2176 = add i64 %t2175, 8
  store i64 %t2176, i64* %t2177
  %t2178 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %t2179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t2178, i64 0)
  store %nyx_string* %t2179, %nyx_string** %t2180
  br label %while_cond413
while_cond413:
  %t2181 = load i64, i64* %t2177
  %t2182 = load %nyx_string*, %nyx_string** %t2165
  %t2183 = call i64 @nyx_string_byte_length(%nyx_string* %t2182)
  %t2184 = icmp slt i64 %t2181, %t2183
  br i1 %t2184, label %while_body414, label %while_end415
while_body414:
  %t2185 = load %nyx_string*, %nyx_string** %t2165
  %t2186 = load i64, i64* %t2177
  %t2187 = call i8 @nyx_string_char_at(%nyx_string* %t2185, i64 %t2186)
  %t2188 = zext i8 %t2187 to i64
  store i64 %t2188, i64* %t2189
  store i1 false, i1* %t2190
  %t2191 = load i64, i64* %t2189
  %t2192 = icmp sge i64 %t2191, 48
  br i1 %t2192, label %sc_and_rhs416, label %sc_and_end417
sc_and_rhs416:
  %t2193 = load i64, i64* %t2189
  %t2194 = icmp sle i64 %t2193, 57
  store i1 %t2194, i1* %t2190
  br label %sc_and_end417
sc_and_end417:
  %t2195 = load i1, i1* %t2190
  br i1 %t2195, label %then418, label %else419
then418:
  %t2196 = load %nyx_string*, %nyx_string** %t2180
  %t2197 = load %nyx_string*, %nyx_string** %t2165
  %t2198 = load i64, i64* %t2177
  %t2199 = load i64, i64* %t2177
  %t2200 = add i64 %t2199, 1
  %t2201 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2197, i64 %t2198, i64 %t2200)
  %t2202 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2196, %nyx_string* %t2201)
  store %nyx_string* %t2202, %nyx_string** %t2180
  %t2203 = load i64, i64* %t2177
  %t2204 = add i64 %t2203, 1
  store i64 %t2204, i64* %t2177
  br label %merge420
else419:
  %t2205 = load %nyx_string*, %nyx_string** %t2165
  %t2206 = call i64 @nyx_string_byte_length(%nyx_string* %t2205)
  store i64 %t2206, i64* %t2177
  br label %merge420
merge420:
  br label %while_cond413
while_end415:
  %t2207 = load %nyx_string*, %nyx_string** %t2180
  ret %nyx_string* %t2207
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t2208 = getelementptr [10 x i8], [10 x i8]* @.str237, i32 0, i32 0
  %t2209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t2208, i64 9)
  %t2210 = load %nyx_string*, %nyx_string** %path.ptr
  %t2211 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2209, %nyx_string* %t2210)
  %t2212 = getelementptr [2 x i8], [2 x i8]* @.str238, i32 0, i32 0
  %t2213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t2212, i64 1)
  %t2214 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2211, %nyx_string* %t2213)
  %t2215 = call i8* @nyx_string_to_cstr(%nyx_string* %t2214)
  %t2216 = call i64 @nyx_exec_code(i8* %t2215)
  %t2217 = icmp eq i64 %t2216, 0
  ret i1 %t2217
}

define internal %nyx_string* @cov_find_profdata(
) {
  %t2219 = alloca %nyx_string*
  %t2235 = alloca %nyx_string*
  %t2218 = call %nyx_string* @cov_clang_major()
  store %nyx_string* %t2218, %nyx_string** %t2219
  %t2220 = load %nyx_string*, %nyx_string** %t2219
  %t2221 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %t2222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t2221, i64 0)
  %t2223 = call i1 @nyx_string_equals(%nyx_string* %t2220, %nyx_string* %t2222)
  %t2224 = xor i1 %t2223, true
  br i1 %t2224, label %then421, label %else422
then421:
  %t2225 = getelementptr [26 x i8], [26 x i8]* @.str240, i32 0, i32 0
  %t2226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t2225, i64 25)
  %t2227 = load %nyx_string*, %nyx_string** %t2219
  %t2228 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2226, %nyx_string* %t2227)
  %t2229 = getelementptr [13 x i8], [13 x i8]* @.str241, i32 0, i32 0
  %t2230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t2229, i64 12)
  %t2231 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2228, %nyx_string* %t2230)
  %t2232 = call i8* @nyx_string_to_cstr(%nyx_string* %t2231)
  %t2233 = call %nyx_string* @nyx_exec(i8* %t2232)
  %t2234 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2233)
  store %nyx_string* %t2234, %nyx_string** %t2235
  %t2236 = load %nyx_string*, %nyx_string** %t2235
  %t2237 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %t2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t2237, i64 0)
  %t2239 = call i1 @nyx_string_equals(%nyx_string* %t2236, %nyx_string* %t2238)
  %t2240 = xor i1 %t2239, true
  br i1 %t2240, label %then424, label %else425
then424:
  %t2241 = load %nyx_string*, %nyx_string** %t2235
  ret %nyx_string* %t2241
else425:
  br label %merge426
merge426:
  br label %merge423
else422:
  br label %merge423
merge423:
  %t2242 = getelementptr [37 x i8], [37 x i8]* @.str243, i32 0, i32 0
  %t2243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t2242, i64 36)
  %t2244 = call i8* @nyx_string_to_cstr(%nyx_string* %t2243)
  %t2245 = call %nyx_string* @nyx_exec(i8* %t2244)
  %t2246 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2245)
  ret %nyx_string* %t2246
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t2248 = alloca { i64, i8* }*
  %t2249 = alloca i64
  %t2250 = alloca i64
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t2247 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2247, { i64, i8* }** %t2248
  store i64 0, i64* %t2249
  store i64 0, i64* %t2250
  br label %while_cond427
while_cond427:
  %t2251 = load i64, i64* %t2250
  %t2252 = load %nyx_string*, %nyx_string** %line.ptr
  %t2253 = call i64 @nyx_string_byte_length(%nyx_string* %t2252)
  %t2254 = icmp slt i64 %t2251, %t2253
  br i1 %t2254, label %while_body428, label %while_end429
while_body428:
  %t2255 = load %nyx_string*, %nyx_string** %line.ptr
  %t2256 = load i64, i64* %t2250
  %t2257 = call i8 @nyx_string_char_at(%nyx_string* %t2255, i64 %t2256)
  %t2258 = zext i8 %t2257 to i64
  %t2259 = icmp eq i64 %t2258, 9
  br i1 %t2259, label %then430, label %else431
then430:
  %t2260 = load { i64, i8* }*, { i64, i8* }** %t2248
  %t2261 = load %nyx_string*, %nyx_string** %line.ptr
  %t2262 = load i64, i64* %t2249
  %t2263 = load i64, i64* %t2250
  %t2264 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2261, i64 %t2262, i64 %t2263)
  %t2265 = ptrtoint %nyx_string* %t2264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2260, i64 %t2265, i64 2)
  %t2266 = load i64, i64* %t2250
  %t2267 = add i64 %t2266, 1
  store i64 %t2267, i64* %t2249
  br label %merge432
else431:
  br label %merge432
merge432:
  %t2268 = load i64, i64* %t2250
  %t2269 = add i64 %t2268, 1
  store i64 %t2269, i64* %t2250
  br label %while_cond427
while_end429:
  %t2270 = load { i64, i8* }*, { i64, i8* }** %t2248
  %t2271 = load %nyx_string*, %nyx_string** %line.ptr
  %t2272 = load i64, i64* %t2249
  %t2273 = load %nyx_string*, %nyx_string** %line.ptr
  %t2274 = call i64 @nyx_string_byte_length(%nyx_string* %t2273)
  %t2275 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2271, i64 %t2272, i64 %t2274)
  %t2276 = ptrtoint %nyx_string* %t2275 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2270, i64 %t2276, i64 2)
  %t2277 = load { i64, i8* }*, { i64, i8* }** %t2248
  ret { i64, i8* }* %t2277
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  %t2280 = alloca %nyx_string*
  %t2283 = alloca %nyx_string*
  store i64 %n.param, i64* %n.ptr
  %t2278 = load i64, i64* %n.ptr
  %t2279 = call %nyx_string* @nyx_string_from_int(i64 %t2278)
  store %nyx_string* %t2279, %nyx_string** %t2280
  %t2281 = getelementptr [2 x i8], [2 x i8]* @.str244, i32 0, i32 0
  %t2282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t2281, i64 1)
  store %nyx_string* %t2282, %nyx_string** %t2283
  br label %while_cond433
while_cond433:
  %t2284 = load %nyx_string*, %nyx_string** %t2280
  %t2285 = call i64 @nyx_string_byte_length(%nyx_string* %t2284)
  %t2286 = icmp slt i64 %t2285, 9
  br i1 %t2286, label %while_body434, label %while_end435
while_body434:
  %t2287 = load %nyx_string*, %nyx_string** %t2283
  %t2288 = load %nyx_string*, %nyx_string** %t2280
  %t2289 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2287, %nyx_string* %t2288)
  store %nyx_string* %t2289, %nyx_string** %t2280
  br label %while_cond433
while_end435:
  %t2290 = load %nyx_string*, %nyx_string** %t2280
  ret %nyx_string* %t2290
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  %t2292 = alloca i8*
  %t2297 = alloca { i64, i8* }*
  %t2300 = alloca %nyx_string*
  %t2301 = alloca i64
  %t2304 = alloca %nyx_string*
  %t2307 = alloca %nyx_string*
  %t2310 = alloca %nyx_string*
  %t2313 = alloca %nyx_string*
  %t2316 = alloca %nyx_string*
  %t2319 = alloca %nyx_string*
  %t2322 = alloca %nyx_string*
  %t2325 = alloca %nyx_string*
  %t2328 = alloca %nyx_string*
  %t2331 = alloca %nyx_string*
  %t2340 = alloca %nyx_string*
  %t2341 = alloca i1
  %t2342 = alloca i1
  %t2360 = alloca %nyx_string*
  %t2364 = alloca i64
  %t2374 = alloca i1
  %t2386 = alloca i64
  %t2390 = alloca i64
  %t2391 = alloca i1
  %t2405 = alloca { i64, i8* }*
  %t2406 = alloca i64
  %t2415 = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %t2291 = call i8* @nyx_map_new(i32 0)
  store i8* %t2291, i8** %t2292
  %t2293 = load %nyx_string*, %nyx_string** %show.ptr
  %t2294 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %t2295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t2294, i64 1)
  %t2296 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2293, %nyx_string* %t2295)
  store { i64, i8* }* %t2296, { i64, i8* }** %t2297
  %t2298 = getelementptr [1 x i8], [1 x i8]* @.str246, i32 0, i32 0
  %t2299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t2298, i64 0)
  store %nyx_string* %t2299, %nyx_string** %t2300
  store i64 0, i64* %t2301
  %t2302 = getelementptr [3 x i8], [3 x i8]* @.str247, i32 0, i32 0
  %t2303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t2302, i64 2)
  store %nyx_string* %t2303, %nyx_string** %t2304
  %t2305 = getelementptr [4 x i8], [4 x i8]* @.str248, i32 0, i32 0
  %t2306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t2305, i64 3)
  store %nyx_string* %t2306, %nyx_string** %t2307
  %t2308 = getelementptr [2 x i8], [2 x i8]* @.str249, i32 0, i32 0
  %t2309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t2308, i64 1)
  store %nyx_string* %t2309, %nyx_string** %t2310
  %t2311 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %t2312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t2311, i64 1)
  store %nyx_string* %t2312, %nyx_string** %t2313
  %t2314 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %t2315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t2314, i64 0)
  store %nyx_string* %t2315, %nyx_string** %t2316
  %t2317 = getelementptr [14 x i8], [14 x i8]* @.str252, i32 0, i32 0
  %t2318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t2317, i64 13)
  store %nyx_string* %t2318, %nyx_string** %t2319
  %t2320 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %t2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t2320, i64 1)
  store %nyx_string* %t2321, %nyx_string** %t2322
  %t2323 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %t2324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t2323, i64 1)
  store %nyx_string* %t2324, %nyx_string** %t2325
  %t2326 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %t2327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t2326, i64 1)
  store %nyx_string* %t2327, %nyx_string** %t2328
  %t2329 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %t2330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t2329, i64 1)
  store %nyx_string* %t2330, %nyx_string** %t2331
  br label %while_cond436
while_cond436:
  %t2332 = load i64, i64* %t2301
  %t2333 = load { i64, i8* }*, { i64, i8* }** %t2297
  %t2334 = call i64 @nyx_array_length({ i64, i8* }* %t2333)
  %t2335 = icmp slt i64 %t2332, %t2334
  br i1 %t2335, label %while_body437, label %while_end438
while_body437:
  %t2336 = load { i64, i8* }*, { i64, i8* }** %t2297
  %t2337 = load i64, i64* %t2301
  %t2338 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2336, i64 %t2337, i64 2)
  %t2339 = inttoptr i64 %t2338 to %nyx_string*
  store %nyx_string* %t2339, %nyx_string** %t2340
  store i1 false, i1* %t2341
  store i1 false, i1* %t2342
  %t2343 = load %nyx_string*, %nyx_string** %t2340
  %t2344 = load %nyx_string*, %nyx_string** %t2304
  %t2345 = call i1 @nyx_string_starts_with(%nyx_string* %t2343, %nyx_string* %t2344)
  br i1 %t2345, label %sc_and_rhs439, label %sc_and_end440
sc_and_rhs439:
  %t2346 = load %nyx_string*, %nyx_string** %t2340
  %t2347 = load %nyx_string*, %nyx_string** %t2307
  %t2348 = call i1 @nyx_string_starts_with(%nyx_string* %t2346, %nyx_string* %t2347)
  %t2349 = xor i1 %t2348, true
  store i1 %t2349, i1* %t2342
  br label %sc_and_end440
sc_and_end440:
  %t2350 = load i1, i1* %t2342
  br i1 %t2350, label %sc_and_rhs441, label %sc_and_end442
sc_and_rhs441:
  %t2351 = load %nyx_string*, %nyx_string** %t2340
  %t2352 = load %nyx_string*, %nyx_string** %t2310
  %t2353 = call i1 @nyx_string_ends_with(%nyx_string* %t2351, %nyx_string* %t2352)
  store i1 %t2353, i1* %t2341
  br label %sc_and_end442
sc_and_end442:
  %t2354 = load i1, i1* %t2341
  br i1 %t2354, label %then443, label %else444
then443:
  %t2355 = load %nyx_string*, %nyx_string** %t2340
  %t2356 = load %nyx_string*, %nyx_string** %t2340
  %t2357 = call i64 @nyx_string_byte_length(%nyx_string* %t2356)
  %t2358 = sub i64 %t2357, 1
  %t2359 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2355, i64 2, i64 %t2358)
  store %nyx_string* %t2359, %nyx_string** %t2360
  %t2361 = load %nyx_string*, %nyx_string** %t2360
  %t2362 = load %nyx_string*, %nyx_string** %t2313
  %t2363 = call i64 @nyx_string_index_of(%nyx_string* %t2361, %nyx_string* %t2362)
  store i64 %t2363, i64* %t2364
  %t2365 = load i64, i64* %t2364
  %t2366 = icmp sge i64 %t2365, 0
  br i1 %t2366, label %then446, label %else447
then446:
  %t2367 = load %nyx_string*, %nyx_string** %t2360
  %t2368 = load i64, i64* %t2364
  %t2369 = add i64 %t2368, 1
  %t2370 = load %nyx_string*, %nyx_string** %t2360
  %t2371 = call i64 @nyx_string_byte_length(%nyx_string* %t2370)
  %t2372 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2367, i64 %t2369, i64 %t2371)
  store %nyx_string* %t2372, %nyx_string** %t2360
  br label %merge448
else447:
  br label %merge448
merge448:
  %t2373 = load %nyx_string*, %nyx_string** %t2360
  store %nyx_string* %t2373, %nyx_string** %t2300
  br label %merge445
else444:
  store i1 false, i1* %t2374
  %t2375 = load %nyx_string*, %nyx_string** %t2300
  %t2376 = load %nyx_string*, %nyx_string** %t2316
  %t2377 = call i1 @nyx_string_equals(%nyx_string* %t2375, %nyx_string* %t2376)
  %t2378 = xor i1 %t2377, true
  br i1 %t2378, label %sc_and_rhs449, label %sc_and_end450
sc_and_rhs449:
  %t2379 = load %nyx_string*, %nyx_string** %t2340
  %t2380 = load %nyx_string*, %nyx_string** %t2319
  %t2381 = call i1 @nyx_string_contains(%nyx_string* %t2379, %nyx_string* %t2380)
  store i1 %t2381, i1* %t2374
  br label %sc_and_end450
sc_and_end450:
  %t2382 = load i1, i1* %t2374
  br i1 %t2382, label %then451, label %else452
then451:
  %t2383 = load %nyx_string*, %nyx_string** %t2340
  %t2384 = load %nyx_string*, %nyx_string** %t2322
  %t2385 = call i64 @nyx_string_index_of(%nyx_string* %t2383, %nyx_string* %t2384)
  store i64 %t2385, i64* %t2386
  %t2387 = load %nyx_string*, %nyx_string** %t2340
  %t2388 = load %nyx_string*, %nyx_string** %t2325
  %t2389 = call i64 @nyx_string_index_of(%nyx_string* %t2387, %nyx_string* %t2388)
  store i64 %t2389, i64* %t2390
  store i1 false, i1* %t2391
  %t2392 = load i64, i64* %t2386
  %t2393 = icmp sge i64 %t2392, 0
  br i1 %t2393, label %sc_and_rhs454, label %sc_and_end455
sc_and_rhs454:
  %t2394 = load i64, i64* %t2390
  %t2395 = load i64, i64* %t2386
  %t2396 = icmp sgt i64 %t2394, %t2395
  store i1 %t2396, i1* %t2391
  br label %sc_and_end455
sc_and_end455:
  %t2397 = load i1, i1* %t2391
  br i1 %t2397, label %then456, label %else457
then456:
  %t2398 = load %nyx_string*, %nyx_string** %t2340
  %t2399 = load i64, i64* %t2386
  %t2400 = add i64 %t2399, 1
  %t2401 = load i64, i64* %t2390
  %t2402 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2398, i64 %t2400, i64 %t2401)
  %t2403 = load %nyx_string*, %nyx_string** %t2328
  %t2404 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2402, %nyx_string* %t2403)
  store { i64, i8* }* %t2404, { i64, i8* }** %t2405
  store i64 0, i64* %t2406
  br label %while_cond459
while_cond459:
  %t2407 = load i64, i64* %t2406
  %t2408 = load { i64, i8* }*, { i64, i8* }** %t2405
  %t2409 = call i64 @nyx_array_length({ i64, i8* }* %t2408)
  %t2410 = icmp slt i64 %t2407, %t2409
  br i1 %t2410, label %while_body460, label %while_end461
while_body460:
  %t2411 = load { i64, i8* }*, { i64, i8* }** %t2405
  %t2412 = load i64, i64* %t2406
  %t2413 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2411, i64 %t2412, i64 2)
  %t2414 = inttoptr i64 %t2413 to %nyx_string*
  store %nyx_string* %t2414, %nyx_string** %t2415
  %t2416 = load %nyx_string*, %nyx_string** %t2415
  %t2417 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2416)
  %t2418 = call i64 @nyx_string_to_int(%nyx_string* %t2417)
  %t2419 = icmp sgt i64 %t2418, 0
  br i1 %t2419, label %then462, label %else463
then462:
  %t2420 = load i8*, i8** %t2292
  %t2421 = load %nyx_string*, %nyx_string** %t2300
  %t2422 = load %nyx_string*, %nyx_string** %t2331
  %t2423 = call i8* @nyx_string_to_cstr(%nyx_string* %t2421)
  %t2424 = bitcast %nyx_string* %t2422 to i8*
  call void @nyx_map_insert_str(i8* %t2420, i8* %t2423, i8* %t2424)
  br label %merge464
else463:
  br label %merge464
merge464:
  %t2425 = load i64, i64* %t2406
  %t2426 = add i64 %t2425, 1
  store i64 %t2426, i64* %t2406
  br label %while_cond459
while_end461:
  br label %merge458
else457:
  br label %merge458
merge458:
  br label %merge453
else452:
  br label %merge453
merge453:
  br label %merge445
merge445:
  %t2427 = load i64, i64* %t2301
  %t2428 = add i64 %t2427, 1
  store i64 %t2428, i64* %t2301
  br label %while_cond436
while_end438:
  %t2429 = load i8*, i8** %t2292
  ret i8* %t2429
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %t2431 = alloca { i64, i8* }*
  %t2442 = alloca %nyx_string*
  %t2447 = alloca { i64, i8* }*
  %t2448 = alloca i64
  %t2451 = alloca %nyx_string*
  %t2454 = alloca %nyx_string*
  %t2463 = alloca %nyx_string*
  %t2466 = alloca %nyx_string*
  %t2467 = alloca i1
  %t2430 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2430, { i64, i8* }** %t2431
  %t2432 = getelementptr [4 x i8], [4 x i8]* @.str257, i32 0, i32 0
  %t2433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t2432, i64 3)
  %t2434 = call i8* @nyx_string_to_cstr(%nyx_string* %t2433)
  %t2435 = call i1 @nyx_file_exists(i8* %t2434)
  %t2436 = xor i1 %t2435, true
  br i1 %t2436, label %then465, label %else466
then465:
  %t2437 = load { i64, i8* }*, { i64, i8* }** %t2431
  ret { i64, i8* }* %t2437
else466:
  br label %merge467
merge467:
  %t2438 = getelementptr [50 x i8], [50 x i8]* @.str258, i32 0, i32 0
  %t2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t2438, i64 49)
  %t2440 = call i8* @nyx_string_to_cstr(%nyx_string* %t2439)
  %t2441 = call %nyx_string* @nyx_exec(i8* %t2440)
  store %nyx_string* %t2441, %nyx_string** %t2442
  %t2443 = load %nyx_string*, %nyx_string** %t2442
  %t2444 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %t2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t2444, i64 1)
  %t2446 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2443, %nyx_string* %t2445)
  store { i64, i8* }* %t2446, { i64, i8* }** %t2447
  store i64 0, i64* %t2448
  %t2449 = getelementptr [4 x i8], [4 x i8]* @.str260, i32 0, i32 0
  %t2450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t2449, i64 3)
  store %nyx_string* %t2450, %nyx_string** %t2451
  %t2452 = getelementptr [9 x i8], [9 x i8]* @.str261, i32 0, i32 0
  %t2453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t2452, i64 8)
  store %nyx_string* %t2453, %nyx_string** %t2454
  br label %while_cond468
while_cond468:
  %t2455 = load i64, i64* %t2448
  %t2456 = load { i64, i8* }*, { i64, i8* }** %t2447
  %t2457 = call i64 @nyx_array_length({ i64, i8* }* %t2456)
  %t2458 = icmp slt i64 %t2455, %t2457
  br i1 %t2458, label %while_body469, label %while_end470
while_body469:
  %t2459 = load { i64, i8* }*, { i64, i8* }** %t2447
  %t2460 = load i64, i64* %t2448
  %t2461 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2459, i64 %t2460, i64 2)
  %t2462 = inttoptr i64 %t2461 to %nyx_string*
  store %nyx_string* %t2462, %nyx_string** %t2463
  %t2464 = load %nyx_string*, %nyx_string** %t2463
  %t2465 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2464)
  store %nyx_string* %t2465, %nyx_string** %t2466
  store i1 false, i1* %t2467
  %t2468 = load %nyx_string*, %nyx_string** %t2466
  %t2469 = load %nyx_string*, %nyx_string** %t2451
  %t2470 = call i1 @nyx_string_ends_with(%nyx_string* %t2468, %nyx_string* %t2469)
  br i1 %t2470, label %sc_and_rhs471, label %sc_and_end472
sc_and_rhs471:
  %t2471 = load %nyx_string*, %nyx_string** %t2466
  %t2472 = load %nyx_string*, %nyx_string** %t2454
  %t2473 = call i1 @nyx_string_ends_with(%nyx_string* %t2471, %nyx_string* %t2472)
  %t2474 = xor i1 %t2473, true
  store i1 %t2474, i1* %t2467
  br label %sc_and_end472
sc_and_end472:
  %t2475 = load i1, i1* %t2467
  br i1 %t2475, label %then473, label %else474
then473:
  %t2476 = load { i64, i8* }*, { i64, i8* }** %t2431
  %t2477 = load %nyx_string*, %nyx_string** %t2466
  %t2478 = load %nyx_string*, %nyx_string** %t2466
  %t2479 = call i64 @nyx_string_byte_length(%nyx_string* %t2478)
  %t2480 = sub i64 %t2479, 3
  %t2481 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2477, i64 0, i64 %t2480)
  %t2482 = ptrtoint %nyx_string* %t2481 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2476, i64 %t2482, i64 2)
  br label %merge475
else474:
  br label %merge475
merge475:
  %t2483 = load i64, i64* %t2448
  %t2484 = add i64 %t2483, 1
  store i64 %t2484, i64* %t2448
  br label %while_cond468
while_end470:
  %t2485 = load { i64, i8* }*, { i64, i8* }** %t2431
  ret { i64, i8* }* %t2485
}

define internal %nyx_string* @cov_universe(
%nyx_string* %nyx_home.param, %nyx_string* %orig_dir.param, %nyx_string* %cov_dir.param, { i64, i8* }* %mods.param) {
  %nyx_home.ptr = alloca %nyx_string*
  %orig_dir.ptr = alloca %nyx_string*
  %cov_dir.ptr = alloca %nyx_string*
  %mods.ptr = alloca { i64, i8* }*
  %t2488 = alloca %nyx_string*
  %t2489 = alloca i64
  %t2492 = alloca %nyx_string*
  %t2495 = alloca %nyx_string*
  %t2504 = alloca %nyx_string*
  %t2531 = alloca %nyx_string*
  %t2593 = alloca %nyx_string*
  store %nyx_string* %nyx_home.param, %nyx_string** %nyx_home.ptr
  store %nyx_string* %orig_dir.param, %nyx_string** %orig_dir.ptr
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  store { i64, i8* }* %mods.param, { i64, i8* }** %mods.ptr
  %t2486 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %t2487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t2486, i64 0)
  store %nyx_string* %t2487, %nyx_string** %t2488
  store i64 0, i64* %t2489
  %t2490 = getelementptr [9 x i8], [9 x i8]* @.str263, i32 0, i32 0
  %t2491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t2490, i64 8)
  store %nyx_string* %t2491, %nyx_string** %t2492
  %t2493 = getelementptr [3 x i8], [3 x i8]* @.str264, i32 0, i32 0
  %t2494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t2493, i64 2)
  store %nyx_string* %t2494, %nyx_string** %t2495
  br label %while_cond476
while_cond476:
  %t2496 = load i64, i64* %t2489
  %t2497 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %t2498 = call i64 @nyx_array_length({ i64, i8* }* %t2497)
  %t2499 = icmp slt i64 %t2496, %t2498
  br i1 %t2499, label %while_body477, label %while_end478
while_body477:
  %t2500 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %t2501 = load i64, i64* %t2489
  %t2502 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2500, i64 %t2501, i64 2)
  %t2503 = inttoptr i64 %t2502 to %nyx_string*
  store %nyx_string* %t2503, %nyx_string** %t2504
  %t2505 = load %nyx_string*, %nyx_string** %t2488
  %t2506 = load %nyx_string*, %nyx_string** %t2492
  %t2507 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2505, %nyx_string* %t2506)
  %t2508 = load %nyx_string*, %nyx_string** %t2504
  %t2509 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2507, %nyx_string* %t2508)
  %t2510 = load %nyx_string*, %nyx_string** %t2495
  %t2511 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2509, %nyx_string* %t2510)
  store %nyx_string* %t2511, %nyx_string** %t2488
  %t2512 = load i64, i64* %t2489
  %t2513 = add i64 %t2512, 1
  store i64 %t2513, i64* %t2489
  br label %while_cond476
while_end478:
  %t2514 = load %nyx_string*, %nyx_string** %t2488
  %t2515 = getelementptr [36 x i8], [36 x i8]* @.str265, i32 0, i32 0
  %t2516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t2515, i64 35)
  %t2517 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2514, %nyx_string* %t2516)
  store %nyx_string* %t2517, %nyx_string** %t2488
  %t2518 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2519 = getelementptr [13 x i8], [13 x i8]* @.str266, i32 0, i32 0
  %t2520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t2519, i64 12)
  %t2521 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2518, %nyx_string* %t2520)
  %t2522 = load %nyx_string*, %nyx_string** %t2488
  %t2523 = ptrtoint %nyx_string* %t2522 to i64
  %t2524 = call i8* @nyx_string_to_cstr(%nyx_string* %t2521)
  %t2525 = inttoptr i64 %t2523 to %nyx_string*
  %t2526 = call i1 @nyx_write_file_safe(i8* %t2524, %nyx_string* %t2525)
  %t2527 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2528 = getelementptr [14 x i8], [14 x i8]* @.str267, i32 0, i32 0
  %t2529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t2528, i64 13)
  %t2530 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2527, %nyx_string* %t2529)
  store %nyx_string* %t2530, %nyx_string** %t2531
  %t2532 = getelementptr [13 x i8], [13 x i8]* @.str268, i32 0, i32 0
  %t2533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t2532, i64 12)
  %t2534 = getelementptr [8 x i8], [8 x i8]* @.str269, i32 0, i32 0
  %t2535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t2534, i64 7)
  %t2536 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2533, %nyx_string* %t2535)
  %t2537 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2538 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2536, %nyx_string* %t2537)
  %t2539 = getelementptr [19 x i8], [19 x i8]* @.str270, i32 0, i32 0
  %t2540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t2539, i64 18)
  %t2541 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2538, %nyx_string* %t2540)
  %t2542 = getelementptr [5 x i8], [5 x i8]* @.str271, i32 0, i32 0
  %t2543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t2542, i64 4)
  %t2544 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2541, %nyx_string* %t2543)
  %t2545 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2546 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2544, %nyx_string* %t2545)
  %t2547 = getelementptr [24 x i8], [24 x i8]* @.str272, i32 0, i32 0
  %t2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t2547, i64 23)
  %t2549 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2546, %nyx_string* %t2548)
  %t2550 = getelementptr [5 x i8], [5 x i8]* @.str273, i32 0, i32 0
  %t2551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t2550, i64 4)
  %t2552 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2549, %nyx_string* %t2551)
  %t2553 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %t2554 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2552, %nyx_string* %t2553)
  %t2555 = getelementptr [3 x i8], [3 x i8]* @.str274, i32 0, i32 0
  %t2556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t2555, i64 2)
  %t2557 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2554, %nyx_string* %t2556)
  %t2558 = getelementptr [137 x i8], [137 x i8]* @.str275, i32 0, i32 0
  %t2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t2558, i64 136)
  %t2560 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2557, %nyx_string* %t2559)
  %t2561 = getelementptr [43 x i8], [43 x i8]* @.str276, i32 0, i32 0
  %t2562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t2561, i64 42)
  %t2563 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2560, %nyx_string* %t2562)
  %t2564 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %t2565 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2563, %nyx_string* %t2564)
  %t2566 = getelementptr [38 x i8], [38 x i8]* @.str277, i32 0, i32 0
  %t2567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t2566, i64 37)
  %t2568 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2565, %nyx_string* %t2567)
  %t2569 = load %nyx_string*, %nyx_string** %t2531
  %t2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2568, %nyx_string* %t2569)
  %t2571 = getelementptr [24 x i8], [24 x i8]* @.str278, i32 0, i32 0
  %t2572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t2571, i64 23)
  %t2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2570, %nyx_string* %t2572)
  %t2574 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2575 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2573, %nyx_string* %t2574)
  %t2576 = getelementptr [21 x i8], [21 x i8]* @.str279, i32 0, i32 0
  %t2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t2576, i64 20)
  %t2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2575, %nyx_string* %t2577)
  %t2579 = getelementptr [7 x i8], [7 x i8]* @.str280, i32 0, i32 0
  %t2580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t2579, i64 6)
  %t2581 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2578, %nyx_string* %t2580)
  %t2582 = getelementptr [17 x i8], [17 x i8]* @.str281, i32 0, i32 0
  %t2583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t2582, i64 16)
  %t2584 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2581, %nyx_string* %t2583)
  %t2585 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2586 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2584, %nyx_string* %t2585)
  %t2587 = getelementptr [19 x i8], [19 x i8]* @.str282, i32 0, i32 0
  %t2588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t2587, i64 18)
  %t2589 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2586, %nyx_string* %t2588)
  %t2590 = getelementptr [10 x i8], [10 x i8]* @.str283, i32 0, i32 0
  %t2591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t2590, i64 9)
  %t2592 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2589, %nyx_string* %t2591)
  store %nyx_string* %t2592, %nyx_string** %t2593
  %t2594 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2595 = getelementptr [13 x i8], [13 x i8]* @.str284, i32 0, i32 0
  %t2596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t2595, i64 12)
  %t2597 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2594, %nyx_string* %t2596)
  %t2598 = load %nyx_string*, %nyx_string** %t2593
  %t2599 = ptrtoint %nyx_string* %t2598 to i64
  %t2600 = call i8* @nyx_string_to_cstr(%nyx_string* %t2597)
  %t2601 = inttoptr i64 %t2599 to %nyx_string*
  %t2602 = call i1 @nyx_write_file_safe(i8* %t2600, %nyx_string* %t2601)
  %t2603 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %t2604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t2603, i64 6)
  %t2605 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2606 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2604, %nyx_string* %t2605)
  %t2607 = getelementptr [14 x i8], [14 x i8]* @.str286, i32 0, i32 0
  %t2608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t2607, i64 13)
  %t2609 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2606, %nyx_string* %t2608)
  %t2610 = call i8* @nyx_string_to_cstr(%nyx_string* %t2609)
  %t2611 = call i64 @nyx_exec_code(i8* %t2610)
  %t2612 = load %nyx_string*, %nyx_string** %t2531
  ret %nyx_string* %t2612
}

define internal i64 @cov_report(
%nyx_string* %cov_dir.param, { i64, i8* }* %run_files.param, { i64, i8* }* %run_idx.param, %nyx_string* %profdata.param, i1 %want_lcov.param) {
  %cov_dir.ptr = alloca %nyx_string*
  %run_files.ptr = alloca { i64, i8* }*
  %run_idx.ptr = alloca { i64, i8* }*
  %profdata.ptr = alloca %nyx_string*
  %want_lcov.ptr = alloca i1
  %t2617 = alloca %nyx_string*
  %t2622 = alloca %nyx_string*
  %t2631 = alloca %nyx_string*
  %t2632 = alloca i64
  %t2634 = alloca i8*
  %t2636 = alloca { i64, i8* }*
  %t2637 = alloca i64
  %t2640 = alloca %nyx_string*
  %t2643 = alloca %nyx_string*
  %t2646 = alloca %nyx_string*
  %t2649 = alloca %nyx_string*
  %t2652 = alloca %nyx_string*
  %t2661 = alloca %nyx_string*
  %t2666 = alloca %nyx_string*
  %t2674 = alloca %nyx_string*
  %t2697 = alloca i8*
  %t2704 = alloca %nyx_string*
  %t2726 = alloca i64
  %t2763 = alloca i8*
  %t2765 = alloca i8*
  %t2767 = alloca i8*
  %t2769 = alloca i8*
  %t2772 = alloca %nyx_string*
  %t2775 = alloca %nyx_string*
  %t2778 = alloca %nyx_string*
  %t2781 = alloca %nyx_string*
  %t2784 = alloca %nyx_string*
  %t2787 = alloca %nyx_string*
  %t2796 = alloca %nyx_string*
  %t2804 = alloca %nyx_string*
  %t2813 = alloca { i64, i8* }*
  %t2814 = alloca i64
  %t2823 = alloca %nyx_string*
  %t2826 = alloca { i64, i8* }*
  %t2833 = alloca %nyx_string*
  %t2837 = alloca %nyx_string*
  %t2841 = alloca %nyx_string*
  %t2845 = alloca %nyx_string*
  %t2864 = alloca i1
  %t2888 = alloca { i64, i8* }*
  %t2900 = alloca %nyx_string*
  %t2927 = alloca { i64, i8* }*
  %t2929 = alloca { i64, i8* }*
  %t2930 = alloca i64
  %t2933 = alloca %nyx_string*
  %t2936 = alloca %nyx_string*
  %t2939 = alloca %nyx_string*
  %t2942 = alloca %nyx_string*
  %t2945 = alloca %nyx_string*
  %t2948 = alloca %nyx_string*
  %t2951 = alloca %nyx_string*
  %t2954 = alloca %nyx_string*
  %t2957 = alloca %nyx_string*
  %t2960 = alloca %nyx_string*
  %t2963 = alloca %nyx_string*
  %t2972 = alloca %nyx_string*
  %t2975 = alloca { i64, i8* }*
  %t2982 = alloca %nyx_string*
  %t2986 = alloca %nyx_string*
  %t2990 = alloca %nyx_string*
  %t2994 = alloca %nyx_string*
  %t2998 = alloca %nyx_string*
  %t2999 = alloca i1
  %t3000 = alloca i1
  %t3001 = alloca i1
  %t3017 = alloca i1
  %t3018 = alloca i1
  %t3019 = alloca i1
  %t3034 = alloca i1
  %t3043 = alloca %nyx_string*
  %t3046 = alloca i1
  %t3083 = alloca { i64, i8* }*
  %t3086 = alloca %nyx_string*
  %t3087 = alloca i64
  %t3088 = alloca i64
  %t3089 = alloca i64
  %t3092 = alloca %nyx_string*
  %t3095 = alloca %nyx_string*
  %t3098 = alloca %nyx_string*
  %t3101 = alloca %nyx_string*
  %t3104 = alloca %nyx_string*
  %t3107 = alloca %nyx_string*
  %t3110 = alloca %nyx_string*
  %t3113 = alloca %nyx_string*
  %t3116 = alloca %nyx_string*
  %t3119 = alloca %nyx_string*
  %t3122 = alloca %nyx_string*
  %t3125 = alloca %nyx_string*
  %t3128 = alloca %nyx_string*
  %t3131 = alloca %nyx_string*
  %t3134 = alloca %nyx_string*
  %t3137 = alloca %nyx_string*
  %t3140 = alloca %nyx_string*
  %t3143 = alloca %nyx_string*
  %t3146 = alloca %nyx_string*
  %t3149 = alloca %nyx_string*
  %t3152 = alloca %nyx_string*
  %t3155 = alloca %nyx_string*
  %t3158 = alloca %nyx_string*
  %t3167 = alloca %nyx_string*
  %t3170 = alloca { i64, i8* }*
  %t3174 = alloca %nyx_string*
  %t3178 = alloca %nyx_string*
  %t3179 = alloca i64
  %t3180 = alloca i64
  %t3181 = alloca i64
  %t3183 = alloca { i64, i8* }*
  %t3185 = alloca %nyx_string*
  %t3187 = alloca %nyx_string*
  %t3189 = alloca i64
  %t3190 = alloca i1
  %t3191 = alloca i1
  %t3202 = alloca %nyx_string*
  %t3205 = alloca { i64, i8* }*
  %t3209 = alloca %nyx_string*
  %t3218 = alloca i64
  %t3222 = alloca %nyx_string*
  %t3226 = alloca %nyx_string*
  %t3235 = alloca %nyx_string*
  %t3296 = alloca %nyx_string*
  %t3317 = alloca i64
  %t3326 = alloca %nyx_string*
  %t3367 = alloca i64
  %t3370 = alloca %nyx_string*
  %t3379 = alloca %nyx_string*
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  store { i64, i8* }* %run_files.param, { i64, i8* }** %run_files.ptr
  store { i64, i8* }* %run_idx.param, { i64, i8* }** %run_idx.ptr
  store %nyx_string* %profdata.param, %nyx_string** %profdata.ptr
  store i1 %want_lcov.param, i1* %want_lcov.ptr
  %t2613 = getelementptr [9 x i8], [9 x i8]* @.str287, i32 0, i32 0
  %t2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t2613, i64 8)
  %t2615 = call i8* @nyx_string_to_cstr(%nyx_string* %t2614)
  %t2616 = call %nyx_string* @nyx_getenv(i8* %t2615)
  store %nyx_string* %t2616, %nyx_string** %t2617
  %t2618 = getelementptr [4 x i8], [4 x i8]* @.str288, i32 0, i32 0
  %t2619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t2618, i64 3)
  %t2620 = call i8* @nyx_string_to_cstr(%nyx_string* %t2619)
  %t2621 = call %nyx_string* @nyx_getenv(i8* %t2620)
  store %nyx_string* %t2621, %nyx_string** %t2622
  %t2623 = getelementptr [1 x i8], [1 x i8]* @.str289, i32 0, i32 0
  %t2624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t2623, i64 0)
  %t2625 = call i8* @nyx_string_to_cstr(%nyx_string* %t2624)
  call void @nyx_print_string(i8* %t2625)
  %t2626 = getelementptr [36 x i8], [36 x i8]* @.str290, i32 0, i32 0
  %t2627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t2626, i64 35)
  %t2628 = call i8* @nyx_string_to_cstr(%nyx_string* %t2627)
  call void @nyx_print_string(i8* %t2628)
  %t2629 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %t2630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t2629, i64 0)
  store %nyx_string* %t2630, %nyx_string** %t2631
  store i64 0, i64* %t2632
  %t2633 = call i8* @nyx_map_new(i32 0)
  store i8* %t2633, i8** %t2634
  %t2635 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2635, { i64, i8* }** %t2636
  store i64 0, i64* %t2637
  %t2638 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %t2639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %t2638, i64 1)
  store %nyx_string* %t2639, %nyx_string** %t2640
  %t2641 = getelementptr [9 x i8], [9 x i8]* @.str293, i32 0, i32 0
  %t2642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %t2641, i64 8)
  store %nyx_string* %t2642, %nyx_string** %t2643
  %t2644 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %t2645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %t2644, i64 2)
  store %nyx_string* %t2645, %nyx_string** %t2646
  %t2647 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %t2648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %t2647, i64 1)
  store %nyx_string* %t2648, %nyx_string** %t2649
  %t2650 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %t2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %t2650, i64 1)
  store %nyx_string* %t2651, %nyx_string** %t2652
  br label %while_cond479
while_cond479:
  %t2653 = load i64, i64* %t2637
  %t2654 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %t2655 = call i64 @nyx_array_length({ i64, i8* }* %t2654)
  %t2656 = icmp slt i64 %t2653, %t2655
  br i1 %t2656, label %while_body480, label %while_end481
while_body480:
  %t2657 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %t2658 = load i64, i64* %t2637
  %t2659 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2657, i64 %t2658, i64 2)
  %t2660 = inttoptr i64 %t2659 to %nyx_string*
  store %nyx_string* %t2660, %nyx_string** %t2661
  %t2662 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %t2663 = load i64, i64* %t2637
  %t2664 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2662, i64 %t2663, i64 2)
  %t2665 = inttoptr i64 %t2664 to %nyx_string*
  store %nyx_string* %t2665, %nyx_string** %t2666
  %t2667 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2668 = load %nyx_string*, %nyx_string** %t2640
  %t2669 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2667, %nyx_string* %t2668)
  %t2670 = load %nyx_string*, %nyx_string** %t2661
  %t2671 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2669, %nyx_string* %t2670)
  %t2672 = load %nyx_string*, %nyx_string** %t2643
  %t2673 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2671, %nyx_string* %t2672)
  store %nyx_string* %t2673, %nyx_string** %t2674
  %t2675 = load %nyx_string*, %nyx_string** %t2674
  %t2676 = call i1 @cov_profraw_valid(%nyx_string* %t2675)
  br i1 %t2676, label %then482, label %else483
then482:
  %t2677 = load %nyx_string*, %nyx_string** %t2631
  %t2678 = load %nyx_string*, %nyx_string** %t2646
  %t2679 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2677, %nyx_string* %t2678)
  %t2680 = load %nyx_string*, %nyx_string** %t2674
  %t2681 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2679, %nyx_string* %t2680)
  %t2682 = load %nyx_string*, %nyx_string** %t2649
  %t2683 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2681, %nyx_string* %t2682)
  store %nyx_string* %t2683, %nyx_string** %t2631
  %t2684 = load i64, i64* %t2632
  %t2685 = add i64 %t2684, 1
  store i64 %t2685, i64* %t2632
  %t2686 = load i8*, i8** %t2634
  %t2687 = load %nyx_string*, %nyx_string** %t2661
  %t2688 = load %nyx_string*, %nyx_string** %t2652
  %t2689 = call i8* @nyx_string_to_cstr(%nyx_string* %t2687)
  %t2690 = bitcast %nyx_string* %t2688 to i8*
  call void @nyx_map_insert_str(i8* %t2686, i8* %t2689, i8* %t2690)
  br label %merge484
else483:
  %t2691 = load { i64, i8* }*, { i64, i8* }** %t2636
  %t2692 = load %nyx_string*, %nyx_string** %t2666
  %t2693 = ptrtoint %nyx_string* %t2692 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2691, i64 %t2693, i64 2)
  br label %merge484
merge484:
  %t2694 = load i64, i64* %t2637
  %t2695 = add i64 %t2694, 1
  store i64 %t2695, i64* %t2637
  br label %while_cond479
while_end481:
  %t2696 = call i8* @nyx_map_new(i32 0)
  store i8* %t2696, i8** %t2697
  %t2698 = load i64, i64* %t2632
  %t2699 = icmp sgt i64 %t2698, 0
  br i1 %t2699, label %then485, label %else486
then485:
  %t2700 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2701 = getelementptr [17 x i8], [17 x i8]* @.str297, i32 0, i32 0
  %t2702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t2701, i64 16)
  %t2703 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2700, %nyx_string* %t2702)
  store %nyx_string* %t2703, %nyx_string** %t2704
  %t2705 = load %nyx_string*, %nyx_string** %profdata.ptr
  %t2706 = getelementptr [12 x i8], [12 x i8]* @.str298, i32 0, i32 0
  %t2707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %t2706, i64 11)
  %t2708 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2705, %nyx_string* %t2707)
  %t2709 = load %nyx_string*, %nyx_string** %t2704
  %t2710 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2708, %nyx_string* %t2709)
  %t2711 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %t2712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t2711, i64 1)
  %t2713 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2710, %nyx_string* %t2712)
  %t2714 = load %nyx_string*, %nyx_string** %t2631
  %t2715 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2713, %nyx_string* %t2714)
  %t2716 = getelementptr [5 x i8], [5 x i8]* @.str300, i32 0, i32 0
  %t2717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %t2716, i64 4)
  %t2718 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2715, %nyx_string* %t2717)
  %t2719 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2720 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2718, %nyx_string* %t2719)
  %t2721 = getelementptr [17 x i8], [17 x i8]* @.str301, i32 0, i32 0
  %t2722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %t2721, i64 16)
  %t2723 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2720, %nyx_string* %t2722)
  %t2724 = call i8* @nyx_string_to_cstr(%nyx_string* %t2723)
  %t2725 = call i64 @nyx_exec_code(i8* %t2724)
  store i64 %t2725, i64* %t2726
  %t2727 = load i64, i64* %t2726
  %t2728 = icmp ne i64 %t2727, 0
  br i1 %t2728, label %then488, label %else489
then488:
  %t2729 = getelementptr [36 x i8], [36 x i8]* @.str302, i32 0, i32 0
  %t2730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %t2729, i64 35)
  %t2731 = call i8* @nyx_string_to_cstr(%nyx_string* %t2730)
  call void @nyx_print_string(i8* %t2731)
  %t2732 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2733 = getelementptr [11 x i8], [11 x i8]* @.str303, i32 0, i32 0
  %t2734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %t2733, i64 10)
  %t2735 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2732, %nyx_string* %t2734)
  %t2736 = call i8* @nyx_string_to_cstr(%nyx_string* %t2735)
  %t2737 = call %nyx_string* @nyx_read_file(i8* %t2736)
  %t2738 = call i8* @nyx_string_to_cstr(%nyx_string* %t2737)
  call void @nyx_print_string(i8* %t2738)
  ret i64 1
else489:
  br label %merge490
merge490:
  %t2739 = load %nyx_string*, %nyx_string** %profdata.ptr
  %t2740 = getelementptr [33 x i8], [33 x i8]* @.str304, i32 0, i32 0
  %t2741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t2740, i64 32)
  %t2742 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2739, %nyx_string* %t2741)
  %t2743 = load %nyx_string*, %nyx_string** %t2704
  %t2744 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2742, %nyx_string* %t2743)
  %t2745 = getelementptr [6 x i8], [6 x i8]* @.str305, i32 0, i32 0
  %t2746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t2745, i64 5)
  %t2747 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2744, %nyx_string* %t2746)
  %t2748 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2749 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2747, %nyx_string* %t2748)
  %t2750 = getelementptr [16 x i8], [16 x i8]* @.str306, i32 0, i32 0
  %t2751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t2750, i64 15)
  %t2752 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2749, %nyx_string* %t2751)
  %t2753 = call i8* @nyx_string_to_cstr(%nyx_string* %t2752)
  %t2754 = call i64 @nyx_exec_code(i8* %t2753)
  %t2755 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2756 = getelementptr [10 x i8], [10 x i8]* @.str307, i32 0, i32 0
  %t2757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t2756, i64 9)
  %t2758 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2755, %nyx_string* %t2757)
  %t2759 = call i8* @nyx_string_to_cstr(%nyx_string* %t2758)
  %t2760 = call %nyx_string* @nyx_read_file(i8* %t2759)
  %t2761 = call i8* @cov_called_from_show(%nyx_string* %t2760)
  store i8* %t2761, i8** %t2697
  br label %merge487
else486:
  br label %merge487
merge487:
  %t2762 = call i8* @nyx_map_new(i32 0)
  store i8* %t2762, i8** %t2763
  %t2764 = call i8* @nyx_map_new(i32 0)
  store i8* %t2764, i8** %t2765
  %t2766 = call i8* @nyx_map_new(i32 0)
  store i8* %t2766, i8** %t2767
  %t2768 = call i8* @nyx_map_new(i32 0)
  store i8* %t2768, i8** %t2769
  store i64 0, i64* %t2637
  %t2770 = getelementptr [2 x i8], [2 x i8]* @.str308, i32 0, i32 0
  %t2771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t2770, i64 1)
  store %nyx_string* %t2771, %nyx_string** %t2772
  %t2773 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %t2774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t2773, i64 4)
  store %nyx_string* %t2774, %nyx_string** %t2775
  %t2776 = getelementptr [2 x i8], [2 x i8]* @.str310, i32 0, i32 0
  %t2777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %t2776, i64 1)
  store %nyx_string* %t2777, %nyx_string** %t2778
  %t2779 = getelementptr [1 x i8], [1 x i8]* @.str311, i32 0, i32 0
  %t2780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %t2779, i64 0)
  store %nyx_string* %t2780, %nyx_string** %t2781
  %t2782 = getelementptr [2 x i8], [2 x i8]* @.str312, i32 0, i32 0
  %t2783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %t2782, i64 1)
  store %nyx_string* %t2783, %nyx_string** %t2784
  %t2785 = getelementptr [5 x i8], [5 x i8]* @.str313, i32 0, i32 0
  %t2786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %t2785, i64 4)
  store %nyx_string* %t2786, %nyx_string** %t2787
  br label %while_cond491
while_cond491:
  %t2788 = load i64, i64* %t2637
  %t2789 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %t2790 = call i64 @nyx_array_length({ i64, i8* }* %t2789)
  %t2791 = icmp slt i64 %t2788, %t2790
  br i1 %t2791, label %while_body492, label %while_end493
while_body492:
  %t2792 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %t2793 = load i64, i64* %t2637
  %t2794 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2792, i64 %t2793, i64 2)
  %t2795 = inttoptr i64 %t2794 to %nyx_string*
  store %nyx_string* %t2795, %nyx_string** %t2796
  %t2797 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2798 = load %nyx_string*, %nyx_string** %t2772
  %t2799 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2797, %nyx_string* %t2798)
  %t2800 = load %nyx_string*, %nyx_string** %t2796
  %t2801 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2799, %nyx_string* %t2800)
  %t2802 = load %nyx_string*, %nyx_string** %t2775
  %t2803 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2801, %nyx_string* %t2802)
  store %nyx_string* %t2803, %nyx_string** %t2804
  %t2805 = load %nyx_string*, %nyx_string** %t2804
  %t2806 = call i8* @nyx_string_to_cstr(%nyx_string* %t2805)
  %t2807 = call i1 @nyx_file_exists(i8* %t2806)
  br i1 %t2807, label %then494, label %else495
then494:
  %t2808 = load %nyx_string*, %nyx_string** %t2804
  %t2809 = call i8* @nyx_string_to_cstr(%nyx_string* %t2808)
  %t2810 = call %nyx_string* @nyx_read_file(i8* %t2809)
  %t2811 = load %nyx_string*, %nyx_string** %t2778
  %t2812 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2810, %nyx_string* %t2811)
  store { i64, i8* }* %t2812, { i64, i8* }** %t2813
  store i64 0, i64* %t2814
  br label %while_cond497
while_cond497:
  %t2815 = load i64, i64* %t2814
  %t2816 = load { i64, i8* }*, { i64, i8* }** %t2813
  %t2817 = call i64 @nyx_array_length({ i64, i8* }* %t2816)
  %t2818 = icmp slt i64 %t2815, %t2817
  br i1 %t2818, label %while_body498, label %while_end499
while_body498:
  %t2819 = load { i64, i8* }*, { i64, i8* }** %t2813
  %t2820 = load i64, i64* %t2814
  %t2821 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2819, i64 %t2820, i64 2)
  %t2822 = inttoptr i64 %t2821 to %nyx_string*
  store %nyx_string* %t2822, %nyx_string** %t2823
  %t2824 = load %nyx_string*, %nyx_string** %t2823
  %t2825 = call { i64, i8* }* @cov_fields(%nyx_string* %t2824)
  store { i64, i8* }* %t2825, { i64, i8* }** %t2826
  %t2827 = load { i64, i8* }*, { i64, i8* }** %t2826
  %t2828 = call i64 @nyx_array_length({ i64, i8* }* %t2827)
  %t2829 = icmp sge i64 %t2828, 5
  br i1 %t2829, label %then500, label %else501
then500:
  %t2830 = load { i64, i8* }*, { i64, i8* }** %t2826
  %t2831 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2830, i64 0, i64 2)
  %t2832 = inttoptr i64 %t2831 to %nyx_string*
  store %nyx_string* %t2832, %nyx_string** %t2833
  %t2834 = load { i64, i8* }*, { i64, i8* }** %t2826
  %t2835 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2834, i64 1, i64 2)
  %t2836 = inttoptr i64 %t2835 to %nyx_string*
  store %nyx_string* %t2836, %nyx_string** %t2837
  %t2838 = load { i64, i8* }*, { i64, i8* }** %t2826
  %t2839 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2838, i64 3, i64 2)
  %t2840 = inttoptr i64 %t2839 to %nyx_string*
  store %nyx_string* %t2840, %nyx_string** %t2841
  %t2842 = load { i64, i8* }*, { i64, i8* }** %t2826
  %t2843 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2842, i64 4, i64 2)
  %t2844 = inttoptr i64 %t2843 to %nyx_string*
  store %nyx_string* %t2844, %nyx_string** %t2845
  %t2846 = load %nyx_string*, %nyx_string** %t2837
  %t2847 = load %nyx_string*, %nyx_string** %t2781
  %t2848 = call i1 @nyx_string_equals(%nyx_string* %t2846, %nyx_string* %t2847)
  %t2849 = xor i1 %t2848, true
  br i1 %t2849, label %then503, label %else504
then503:
  %t2850 = load i8*, i8** %t2769
  %t2851 = load %nyx_string*, %nyx_string** %t2837
  %t2852 = load %nyx_string*, %nyx_string** %t2784
  %t2853 = call i8* @nyx_string_to_cstr(%nyx_string* %t2851)
  %t2854 = bitcast %nyx_string* %t2852 to i8*
  call void @nyx_map_insert_str(i8* %t2850, i8* %t2853, i8* %t2854)
  br label %merge505
else504:
  br label %merge505
merge505:
  %t2855 = load i8*, i8** %t2634
  %t2856 = load %nyx_string*, %nyx_string** %t2796
  %t2857 = call i8* @nyx_string_to_cstr(%nyx_string* %t2856)
  %t2858 = call i1 @nyx_map_contains_str(i8* %t2855, i8* %t2857)
  br i1 %t2858, label %then506, label %else507
then506:
  %t2859 = load i8*, i8** %t2763
  %t2860 = load %nyx_string*, %nyx_string** %t2833
  %t2861 = load %nyx_string*, %nyx_string** %t2784
  %t2862 = call i8* @nyx_string_to_cstr(%nyx_string* %t2860)
  %t2863 = bitcast %nyx_string* %t2861 to i8*
  call void @nyx_map_insert_str(i8* %t2859, i8* %t2862, i8* %t2863)
  store i1 false, i1* %t2864
  %t2865 = load %nyx_string*, %nyx_string** %t2845
  %t2866 = load %nyx_string*, %nyx_string** %t2787
  %t2867 = call i1 @nyx_string_equals(%nyx_string* %t2865, %nyx_string* %t2866)
  br i1 %t2867, label %sc_and_rhs509, label %sc_and_end510
sc_and_rhs509:
  %t2868 = load i8*, i8** %t2697
  %t2869 = load %nyx_string*, %nyx_string** %t2833
  %t2870 = call i8* @nyx_string_to_cstr(%nyx_string* %t2869)
  %t2871 = call i1 @nyx_map_contains_str(i8* %t2868, i8* %t2870)
  store i1 %t2871, i1* %t2864
  br label %sc_and_end510
sc_and_end510:
  %t2872 = load i1, i1* %t2864
  br i1 %t2872, label %then511, label %else512
then511:
  %t2873 = load i8*, i8** %t2767
  %t2874 = load %nyx_string*, %nyx_string** %t2841
  %t2875 = load %nyx_string*, %nyx_string** %t2784
  %t2876 = call i8* @nyx_string_to_cstr(%nyx_string* %t2874)
  %t2877 = bitcast %nyx_string* %t2875 to i8*
  call void @nyx_map_insert_str(i8* %t2873, i8* %t2876, i8* %t2877)
  br label %merge513
else512:
  br label %merge513
merge513:
  br label %merge508
else507:
  %t2878 = load i8*, i8** %t2765
  %t2879 = load %nyx_string*, %nyx_string** %t2833
  %t2880 = load %nyx_string*, %nyx_string** %t2784
  %t2881 = call i8* @nyx_string_to_cstr(%nyx_string* %t2879)
  %t2882 = bitcast %nyx_string* %t2880 to i8*
  call void @nyx_map_insert_str(i8* %t2878, i8* %t2881, i8* %t2882)
  br label %merge508
merge508:
  br label %merge502
else501:
  br label %merge502
merge502:
  %t2883 = load i64, i64* %t2814
  %t2884 = add i64 %t2883, 1
  store i64 %t2884, i64* %t2814
  br label %while_cond497
while_end499:
  br label %merge496
else495:
  br label %merge496
merge496:
  %t2885 = load i64, i64* %t2637
  %t2886 = add i64 %t2885, 1
  store i64 %t2886, i64* %t2637
  br label %while_cond491
while_end493:
  %t2887 = call { i64, i8* }* @cov_src_modules()
  store { i64, i8* }* %t2887, { i64, i8* }** %t2888
  %t2889 = load { i64, i8* }*, { i64, i8* }** %t2888
  %t2890 = call i64 @nyx_array_length({ i64, i8* }* %t2889)
  %t2891 = icmp eq i64 %t2890, 0
  br i1 %t2891, label %then514, label %else515
then514:
  %t2892 = getelementptr [27 x i8], [27 x i8]* @.str314, i32 0, i32 0
  %t2893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %t2892, i64 26)
  %t2894 = call i8* @nyx_string_to_cstr(%nyx_string* %t2893)
  call void @nyx_print_string(i8* %t2894)
  ret i64 0
else515:
  br label %merge516
merge516:
  %t2895 = load %nyx_string*, %nyx_string** %t2617
  %t2896 = load %nyx_string*, %nyx_string** %t2622
  %t2897 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2898 = load { i64, i8* }*, { i64, i8* }** %t2888
  %t2899 = call %nyx_string* @cov_universe(%nyx_string* %t2895, %nyx_string* %t2896, %nyx_string* %t2897, { i64, i8* }* %t2898)
  store %nyx_string* %t2899, %nyx_string** %t2900
  %t2901 = load %nyx_string*, %nyx_string** %t2900
  %t2902 = call i8* @nyx_string_to_cstr(%nyx_string* %t2901)
  %t2903 = call i1 @nyx_file_exists(i8* %t2902)
  %t2904 = xor i1 %t2903, true
  br i1 %t2904, label %then517, label %else518
then517:
  %t2905 = getelementptr [68 x i8], [68 x i8]* @.str315, i32 0, i32 0
  %t2906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %t2905, i64 67)
  %t2907 = call i8* @nyx_string_to_cstr(%nyx_string* %t2906)
  call void @nyx_print_string(i8* %t2907)
  %t2908 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2909 = getelementptr [14 x i8], [14 x i8]* @.str316, i32 0, i32 0
  %t2910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %t2909, i64 13)
  %t2911 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2908, %nyx_string* %t2910)
  %t2912 = call i8* @nyx_string_to_cstr(%nyx_string* %t2911)
  %t2913 = call i1 @nyx_file_exists(i8* %t2912)
  br i1 %t2913, label %then520, label %else521
then520:
  %t2914 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2915 = getelementptr [14 x i8], [14 x i8]* @.str317, i32 0, i32 0
  %t2916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %t2915, i64 13)
  %t2917 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2914, %nyx_string* %t2916)
  %t2918 = call i8* @nyx_string_to_cstr(%nyx_string* %t2917)
  %t2919 = call %nyx_string* @nyx_read_file(i8* %t2918)
  %t2920 = call i8* @nyx_string_to_cstr(%nyx_string* %t2919)
  call void @nyx_print_string(i8* %t2920)
  br label %merge522
else521:
  br label %merge522
merge522:
  ret i64 1
else518:
  br label %merge519
merge519:
  %t2921 = load %nyx_string*, %nyx_string** %t2900
  %t2922 = call i8* @nyx_string_to_cstr(%nyx_string* %t2921)
  %t2923 = call %nyx_string* @nyx_read_file(i8* %t2922)
  %t2924 = getelementptr [2 x i8], [2 x i8]* @.str318, i32 0, i32 0
  %t2925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %t2924, i64 1)
  %t2926 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2923, %nyx_string* %t2925)
  store { i64, i8* }* %t2926, { i64, i8* }** %t2927
  %t2928 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2928, { i64, i8* }** %t2929
  store i64 0, i64* %t2930
  %t2931 = getelementptr [3 x i8], [3 x i8]* @.str319, i32 0, i32 0
  %t2932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %t2931, i64 2)
  store %nyx_string* %t2932, %nyx_string** %t2933
  %t2934 = getelementptr [7 x i8], [7 x i8]* @.str320, i32 0, i32 0
  %t2935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %t2934, i64 6)
  store %nyx_string* %t2935, %nyx_string** %t2936
  %t2937 = getelementptr [6 x i8], [6 x i8]* @.str321, i32 0, i32 0
  %t2938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %t2937, i64 5)
  store %nyx_string* %t2938, %nyx_string** %t2939
  %t2940 = getelementptr [9 x i8], [9 x i8]* @.str322, i32 0, i32 0
  %t2941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %t2940, i64 8)
  store %nyx_string* %t2941, %nyx_string** %t2942
  %t2943 = getelementptr [5 x i8], [5 x i8]* @.str323, i32 0, i32 0
  %t2944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %t2943, i64 4)
  store %nyx_string* %t2944, %nyx_string** %t2945
  %t2946 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %t2947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %t2946, i64 4)
  store %nyx_string* %t2947, %nyx_string** %t2948
  %t2949 = getelementptr [3 x i8], [3 x i8]* @.str325, i32 0, i32 0
  %t2950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %t2949, i64 2)
  store %nyx_string* %t2950, %nyx_string** %t2951
  %t2952 = getelementptr [3 x i8], [3 x i8]* @.str326, i32 0, i32 0
  %t2953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %t2952, i64 2)
  store %nyx_string* %t2953, %nyx_string** %t2954
  %t2955 = getelementptr [10 x i8], [10 x i8]* @.str327, i32 0, i32 0
  %t2956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %t2955, i64 9)
  store %nyx_string* %t2956, %nyx_string** %t2957
  %t2958 = getelementptr [5 x i8], [5 x i8]* @.str328, i32 0, i32 0
  %t2959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %t2958, i64 4)
  store %nyx_string* %t2959, %nyx_string** %t2960
  %t2961 = getelementptr [2 x i8], [2 x i8]* @.str329, i32 0, i32 0
  %t2962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %t2961, i64 1)
  store %nyx_string* %t2962, %nyx_string** %t2963
  br label %while_cond523
while_cond523:
  %t2964 = load i64, i64* %t2930
  %t2965 = load { i64, i8* }*, { i64, i8* }** %t2927
  %t2966 = call i64 @nyx_array_length({ i64, i8* }* %t2965)
  %t2967 = icmp slt i64 %t2964, %t2966
  br i1 %t2967, label %while_body524, label %while_end525
while_body524:
  %t2968 = load { i64, i8* }*, { i64, i8* }** %t2927
  %t2969 = load i64, i64* %t2930
  %t2970 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2968, i64 %t2969, i64 2)
  %t2971 = inttoptr i64 %t2970 to %nyx_string*
  store %nyx_string* %t2971, %nyx_string** %t2972
  %t2973 = load %nyx_string*, %nyx_string** %t2972
  %t2974 = call { i64, i8* }* @cov_fields(%nyx_string* %t2973)
  store { i64, i8* }* %t2974, { i64, i8* }** %t2975
  %t2976 = load { i64, i8* }*, { i64, i8* }** %t2975
  %t2977 = call i64 @nyx_array_length({ i64, i8* }* %t2976)
  %t2978 = icmp sge i64 %t2977, 5
  br i1 %t2978, label %then526, label %else527
then526:
  %t2979 = load { i64, i8* }*, { i64, i8* }** %t2975
  %t2980 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2979, i64 0, i64 2)
  %t2981 = inttoptr i64 %t2980 to %nyx_string*
  store %nyx_string* %t2981, %nyx_string** %t2982
  %t2983 = load { i64, i8* }*, { i64, i8* }** %t2975
  %t2984 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2983, i64 1, i64 2)
  %t2985 = inttoptr i64 %t2984 to %nyx_string*
  store %nyx_string* %t2985, %nyx_string** %t2986
  %t2987 = load { i64, i8* }*, { i64, i8* }** %t2975
  %t2988 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2987, i64 2, i64 2)
  %t2989 = inttoptr i64 %t2988 to %nyx_string*
  store %nyx_string* %t2989, %nyx_string** %t2990
  %t2991 = load { i64, i8* }*, { i64, i8* }** %t2975
  %t2992 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2991, i64 3, i64 2)
  %t2993 = inttoptr i64 %t2992 to %nyx_string*
  store %nyx_string* %t2993, %nyx_string** %t2994
  %t2995 = load { i64, i8* }*, { i64, i8* }** %t2975
  %t2996 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2995, i64 4, i64 2)
  %t2997 = inttoptr i64 %t2996 to %nyx_string*
  store %nyx_string* %t2997, %nyx_string** %t2998
  store i1 true, i1* %t2999
  store i1 true, i1* %t3000
  store i1 true, i1* %t3001
  %t3002 = load %nyx_string*, %nyx_string** %t2998
  %t3003 = load %nyx_string*, %nyx_string** %t2933
  %t3004 = call i1 @nyx_string_equals(%nyx_string* %t3002, %nyx_string* %t3003)
  br i1 %t3004, label %sc_or_end530, label %sc_or_rhs529
sc_or_rhs529:
  %t3005 = load %nyx_string*, %nyx_string** %t2998
  %t3006 = load %nyx_string*, %nyx_string** %t2936
  %t3007 = call i1 @nyx_string_equals(%nyx_string* %t3005, %nyx_string* %t3006)
  store i1 %t3007, i1* %t3001
  br label %sc_or_end530
sc_or_end530:
  %t3008 = load i1, i1* %t3001
  br i1 %t3008, label %sc_or_end532, label %sc_or_rhs531
sc_or_rhs531:
  %t3009 = load %nyx_string*, %nyx_string** %t2998
  %t3010 = load %nyx_string*, %nyx_string** %t2939
  %t3011 = call i1 @nyx_string_equals(%nyx_string* %t3009, %nyx_string* %t3010)
  store i1 %t3011, i1* %t3000
  br label %sc_or_end532
sc_or_end532:
  %t3012 = load i1, i1* %t3000
  br i1 %t3012, label %sc_or_end534, label %sc_or_rhs533
sc_or_rhs533:
  %t3013 = load %nyx_string*, %nyx_string** %t2998
  %t3014 = load %nyx_string*, %nyx_string** %t2942
  %t3015 = call i1 @nyx_string_equals(%nyx_string* %t3013, %nyx_string* %t3014)
  store i1 %t3015, i1* %t2999
  br label %sc_or_end534
sc_or_end534:
  %t3016 = load i1, i1* %t2999
  store i1 %t3016, i1* %t3017
  store i1 false, i1* %t3018
  store i1 false, i1* %t3019
  %t3020 = load i1, i1* %t3017
  br i1 %t3020, label %sc_and_rhs535, label %sc_and_end536
sc_and_rhs535:
  %t3021 = load %nyx_string*, %nyx_string** %t2986
  %t3022 = load %nyx_string*, %nyx_string** %t2945
  %t3023 = call i1 @nyx_string_starts_with(%nyx_string* %t3021, %nyx_string* %t3022)
  store i1 %t3023, i1* %t3019
  br label %sc_and_end536
sc_and_end536:
  %t3024 = load i1, i1* %t3019
  br i1 %t3024, label %sc_and_rhs537, label %sc_and_end538
sc_and_rhs537:
  %t3025 = load %nyx_string*, %nyx_string** %t2994
  %t3026 = load %nyx_string*, %nyx_string** %t2948
  %t3027 = call i1 @nyx_string_equals(%nyx_string* %t3025, %nyx_string* %t3026)
  %t3028 = xor i1 %t3027, true
  store i1 %t3028, i1* %t3018
  br label %sc_and_end538
sc_and_end538:
  %t3029 = load i1, i1* %t3018
  br i1 %t3029, label %then539, label %else540
then539:
  %t3030 = load i8*, i8** %t2697
  %t3031 = load %nyx_string*, %nyx_string** %t2982
  %t3032 = call i8* @nyx_string_to_cstr(%nyx_string* %t3031)
  %t3033 = call i1 @nyx_map_contains_str(i8* %t3030, i8* %t3032)
  store i1 %t3033, i1* %t3034
  %t3035 = load %nyx_string*, %nyx_string** %t2998
  %t3036 = load %nyx_string*, %nyx_string** %t2942
  %t3037 = call i1 @nyx_string_equals(%nyx_string* %t3035, %nyx_string* %t3036)
  br i1 %t3037, label %then542, label %else543
then542:
  %t3038 = load i8*, i8** %t2767
  %t3039 = load %nyx_string*, %nyx_string** %t2982
  %t3040 = call i8* @nyx_string_to_cstr(%nyx_string* %t3039)
  %t3041 = call i1 @nyx_map_contains_str(i8* %t3038, i8* %t3040)
  store i1 %t3041, i1* %t3034
  br label %merge544
else543:
  br label %merge544
merge544:
  %t3042 = load %nyx_string*, %nyx_string** %t2951
  store %nyx_string* %t3042, %nyx_string** %t3043
  %t3044 = load i1, i1* %t3034
  br i1 %t3044, label %then545, label %else546
then545:
  %t3045 = load %nyx_string*, %nyx_string** %t2954
  store %nyx_string* %t3045, %nyx_string** %t3043
  br label %merge547
else546:
  store i1 false, i1* %t3046
  %t3047 = load i8*, i8** %t2763
  %t3048 = load %nyx_string*, %nyx_string** %t2982
  %t3049 = call i8* @nyx_string_to_cstr(%nyx_string* %t3048)
  %t3050 = call i1 @nyx_map_contains_str(i8* %t3047, i8* %t3049)
  %t3051 = xor i1 %t3050, true
  br i1 %t3051, label %sc_and_rhs548, label %sc_and_end549
sc_and_rhs548:
  %t3052 = load i8*, i8** %t2765
  %t3053 = load %nyx_string*, %nyx_string** %t2982
  %t3054 = call i8* @nyx_string_to_cstr(%nyx_string* %t3053)
  %t3055 = call i1 @nyx_map_contains_str(i8* %t3052, i8* %t3054)
  store i1 %t3055, i1* %t3046
  br label %sc_and_end549
sc_and_end549:
  %t3056 = load i1, i1* %t3046
  br i1 %t3056, label %then550, label %else551
then550:
  %t3057 = load %nyx_string*, %nyx_string** %t2957
  store %nyx_string* %t3057, %nyx_string** %t3043
  br label %merge552
else551:
  br label %merge552
merge552:
  br label %merge547
merge547:
  %t3058 = load { i64, i8* }*, { i64, i8* }** %t2929
  %t3059 = load %nyx_string*, %nyx_string** %t2986
  %t3060 = load %nyx_string*, %nyx_string** %t2960
  %t3061 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3059, %nyx_string* %t3060)
  %t3062 = load %nyx_string*, %nyx_string** %t2990
  %t3063 = call i64 @nyx_string_to_int(%nyx_string* %t3062)
  %t3064 = call %nyx_string* @cov_pad(i64 %t3063)
  %t3065 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3061, %nyx_string* %t3064)
  %t3066 = load %nyx_string*, %nyx_string** %t2963
  %t3067 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3065, %nyx_string* %t3066)
  %t3068 = load %nyx_string*, %nyx_string** %t2994
  %t3069 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3067, %nyx_string* %t3068)
  %t3070 = load %nyx_string*, %nyx_string** %t2963
  %t3071 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3069, %nyx_string* %t3070)
  %t3072 = load %nyx_string*, %nyx_string** %t3043
  %t3073 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3071, %nyx_string* %t3072)
  %t3074 = load %nyx_string*, %nyx_string** %t2963
  %t3075 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3073, %nyx_string* %t3074)
  %t3076 = load %nyx_string*, %nyx_string** %t2986
  %t3077 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3075, %nyx_string* %t3076)
  %t3078 = ptrtoint %nyx_string* %t3077 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3058, i64 %t3078, i64 2)
  br label %merge541
else540:
  br label %merge541
merge541:
  br label %merge528
else527:
  br label %merge528
merge528:
  %t3079 = load i64, i64* %t2930
  %t3080 = add i64 %t3079, 1
  store i64 %t3080, i64* %t2930
  br label %while_cond523
while_end525:
  %t3081 = load { i64, i8* }*, { i64, i8* }** %t2929
  %t3082 = call { i64, i8* }* @sort_str({ i64, i8* }* %t3081)
  store { i64, i8* }* %t3082, { i64, i8* }** %t3083
  %t3084 = getelementptr [1 x i8], [1 x i8]* @.str330, i32 0, i32 0
  %t3085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %t3084, i64 0)
  store %nyx_string* %t3085, %nyx_string** %t3086
  store i64 0, i64* %t3087
  store i64 0, i64* %t3088
  store i64 0, i64* %t3089
  %t3090 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %t3091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %t3090, i64 0)
  store %nyx_string* %t3091, %nyx_string** %t3092
  %t3093 = getelementptr [10 x i8], [10 x i8]* @.str332, i32 0, i32 0
  %t3094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %t3093, i64 9)
  store %nyx_string* %t3094, %nyx_string** %t3095
  %t3096 = getelementptr [2 x i8], [2 x i8]* @.str333, i32 0, i32 0
  %t3097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %t3096, i64 1)
  store %nyx_string* %t3097, %nyx_string** %t3098
  %t3099 = getelementptr [3 x i8], [3 x i8]* @.str334, i32 0, i32 0
  %t3100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %t3099, i64 2)
  store %nyx_string* %t3100, %nyx_string** %t3101
  %t3102 = getelementptr [2 x i8], [2 x i8]* @.str335, i32 0, i32 0
  %t3103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %t3102, i64 1)
  store %nyx_string* %t3103, %nyx_string** %t3104
  %t3105 = getelementptr [5 x i8], [5 x i8]* @.str336, i32 0, i32 0
  %t3106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %t3105, i64 4)
  store %nyx_string* %t3106, %nyx_string** %t3107
  %t3108 = getelementptr [2 x i8], [2 x i8]* @.str337, i32 0, i32 0
  %t3109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %t3108, i64 1)
  store %nyx_string* %t3109, %nyx_string** %t3110
  %t3111 = getelementptr [2 x i8], [2 x i8]* @.str338, i32 0, i32 0
  %t3112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %t3111, i64 1)
  store %nyx_string* %t3112, %nyx_string** %t3113
  %t3114 = getelementptr [4 x i8], [4 x i8]* @.str339, i32 0, i32 0
  %t3115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %t3114, i64 3)
  store %nyx_string* %t3115, %nyx_string** %t3116
  %t3117 = getelementptr [2 x i8], [2 x i8]* @.str340, i32 0, i32 0
  %t3118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %t3117, i64 1)
  store %nyx_string* %t3118, %nyx_string** %t3119
  %t3120 = getelementptr [2 x i8], [2 x i8]* @.str341, i32 0, i32 0
  %t3121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %t3120, i64 1)
  store %nyx_string* %t3121, %nyx_string** %t3122
  %t3123 = getelementptr [6 x i8], [6 x i8]* @.str342, i32 0, i32 0
  %t3124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %t3123, i64 5)
  store %nyx_string* %t3124, %nyx_string** %t3125
  %t3126 = getelementptr [3 x i8], [3 x i8]* @.str343, i32 0, i32 0
  %t3127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %t3126, i64 2)
  store %nyx_string* %t3127, %nyx_string** %t3128
  %t3129 = getelementptr [3 x i8], [3 x i8]* @.str344, i32 0, i32 0
  %t3130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %t3129, i64 2)
  store %nyx_string* %t3130, %nyx_string** %t3131
  %t3132 = getelementptr [2 x i8], [2 x i8]* @.str345, i32 0, i32 0
  %t3133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %t3132, i64 1)
  store %nyx_string* %t3133, %nyx_string** %t3134
  %t3135 = getelementptr [10 x i8], [10 x i8]* @.str346, i32 0, i32 0
  %t3136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %t3135, i64 9)
  store %nyx_string* %t3136, %nyx_string** %t3137
  %t3138 = getelementptr [29 x i8], [29 x i8]* @.str347, i32 0, i32 0
  %t3139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %t3138, i64 28)
  store %nyx_string* %t3139, %nyx_string** %t3140
  %t3141 = getelementptr [3 x i8], [3 x i8]* @.str348, i32 0, i32 0
  %t3142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %t3141, i64 2)
  store %nyx_string* %t3142, %nyx_string** %t3143
  %t3144 = getelementptr [38 x i8], [38 x i8]* @.str349, i32 0, i32 0
  %t3145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %t3144, i64 37)
  store %nyx_string* %t3145, %nyx_string** %t3146
  %t3147 = getelementptr [4 x i8], [4 x i8]* @.str350, i32 0, i32 0
  %t3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %t3147, i64 3)
  store %nyx_string* %t3148, %nyx_string** %t3149
  %t3150 = getelementptr [5 x i8], [5 x i8]* @.str351, i32 0, i32 0
  %t3151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %t3150, i64 4)
  store %nyx_string* %t3151, %nyx_string** %t3152
  %t3153 = getelementptr [6 x i8], [6 x i8]* @.str352, i32 0, i32 0
  %t3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %t3153, i64 5)
  store %nyx_string* %t3154, %nyx_string** %t3155
  %t3156 = getelementptr [16 x i8], [16 x i8]* @.str353, i32 0, i32 0
  %t3157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %t3156, i64 15)
  store %nyx_string* %t3157, %nyx_string** %t3158
  br label %while_cond553
while_cond553:
  %t3159 = load i64, i64* %t3089
  %t3160 = load { i64, i8* }*, { i64, i8* }** %t3083
  %t3161 = call i64 @nyx_array_length({ i64, i8* }* %t3160)
  %t3162 = icmp slt i64 %t3159, %t3161
  br i1 %t3162, label %while_body554, label %while_end555
while_body554:
  %t3163 = load { i64, i8* }*, { i64, i8* }** %t3083
  %t3164 = load i64, i64* %t3089
  %t3165 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3163, i64 %t3164, i64 2)
  %t3166 = inttoptr i64 %t3165 to %nyx_string*
  store %nyx_string* %t3166, %nyx_string** %t3167
  %t3168 = load %nyx_string*, %nyx_string** %t3167
  %t3169 = call { i64, i8* }* @cov_fields(%nyx_string* %t3168)
  store { i64, i8* }* %t3169, { i64, i8* }** %t3170
  %t3171 = load { i64, i8* }*, { i64, i8* }** %t3170
  %t3172 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3171, i64 0, i64 2)
  %t3173 = inttoptr i64 %t3172 to %nyx_string*
  store %nyx_string* %t3173, %nyx_string** %t3174
  %t3175 = load { i64, i8* }*, { i64, i8* }** %t3170
  %t3176 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3175, i64 4, i64 2)
  %t3177 = inttoptr i64 %t3176 to %nyx_string*
  store %nyx_string* %t3177, %nyx_string** %t3178
  store i64 0, i64* %t3179
  store i64 0, i64* %t3180
  store i64 0, i64* %t3181
  %t3182 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3182, { i64, i8* }** %t3183
  %t3184 = load %nyx_string*, %nyx_string** %t3092
  store %nyx_string* %t3184, %nyx_string** %t3185
  %t3186 = load %nyx_string*, %nyx_string** %t3092
  store %nyx_string* %t3186, %nyx_string** %t3187
  %t3188 = load i64, i64* %t3089
  store i64 %t3188, i64* %t3189
  store i1 1, i1* %t3190
  br label %while_cond556
while_cond556:
  store i1 false, i1* %t3191
  %t3192 = load i64, i64* %t3189
  %t3193 = load { i64, i8* }*, { i64, i8* }** %t3083
  %t3194 = call i64 @nyx_array_length({ i64, i8* }* %t3193)
  %t3195 = icmp slt i64 %t3192, %t3194
  br i1 %t3195, label %sc_and_rhs559, label %sc_and_end560
sc_and_rhs559:
  %t3196 = load i1, i1* %t3190
  store i1 %t3196, i1* %t3191
  br label %sc_and_end560
sc_and_end560:
  %t3197 = load i1, i1* %t3191
  br i1 %t3197, label %while_body557, label %while_end558
while_body557:
  %t3198 = load { i64, i8* }*, { i64, i8* }** %t3083
  %t3199 = load i64, i64* %t3189
  %t3200 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3198, i64 %t3199, i64 2)
  %t3201 = inttoptr i64 %t3200 to %nyx_string*
  store %nyx_string* %t3201, %nyx_string** %t3202
  %t3203 = load %nyx_string*, %nyx_string** %t3202
  %t3204 = call { i64, i8* }* @cov_fields(%nyx_string* %t3203)
  store { i64, i8* }* %t3204, { i64, i8* }** %t3205
  %t3206 = load { i64, i8* }*, { i64, i8* }** %t3205
  %t3207 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3206, i64 0, i64 2)
  %t3208 = inttoptr i64 %t3207 to %nyx_string*
  store %nyx_string* %t3208, %nyx_string** %t3209
  %t3210 = load %nyx_string*, %nyx_string** %t3209
  %t3211 = load %nyx_string*, %nyx_string** %t3174
  %t3212 = call i1 @nyx_string_equals(%nyx_string* %t3210, %nyx_string* %t3211)
  %t3213 = xor i1 %t3212, true
  br i1 %t3213, label %then561, label %else562
then561:
  store i1 0, i1* %t3190
  br label %merge563
else562:
  %t3214 = load { i64, i8* }*, { i64, i8* }** %t3205
  %t3215 = call i64 @nyx_array_get({ i64, i8* }* %t3214, i64 1)
  %t3216 = inttoptr i64 %t3215 to %nyx_string*
  %t3217 = call i64 @nyx_string_to_int(%nyx_string* %t3216)
  store i64 %t3217, i64* %t3218
  %t3219 = load { i64, i8* }*, { i64, i8* }** %t3205
  %t3220 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3219, i64 2, i64 2)
  %t3221 = inttoptr i64 %t3220 to %nyx_string*
  store %nyx_string* %t3221, %nyx_string** %t3222
  %t3223 = load { i64, i8* }*, { i64, i8* }** %t3205
  %t3224 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3223, i64 3, i64 2)
  %t3225 = inttoptr i64 %t3224 to %nyx_string*
  store %nyx_string* %t3225, %nyx_string** %t3226
  %t3227 = load %nyx_string*, %nyx_string** %t3226
  %t3228 = load %nyx_string*, %nyx_string** %t3095
  %t3229 = call i1 @nyx_string_equals(%nyx_string* %t3227, %nyx_string* %t3228)
  br i1 %t3229, label %then564, label %else565
then564:
  %t3230 = load i64, i64* %t3181
  %t3231 = add i64 %t3230, 1
  store i64 %t3231, i64* %t3181
  br label %merge566
else565:
  %t3232 = load i64, i64* %t3180
  %t3233 = add i64 %t3232, 1
  store i64 %t3233, i64* %t3180
  %t3234 = load %nyx_string*, %nyx_string** %t3098
  store %nyx_string* %t3234, %nyx_string** %t3235
  %t3236 = load %nyx_string*, %nyx_string** %t3226
  %t3237 = load %nyx_string*, %nyx_string** %t3101
  %t3238 = call i1 @nyx_string_equals(%nyx_string* %t3236, %nyx_string* %t3237)
  br i1 %t3238, label %then567, label %else568
then567:
  %t3239 = load i64, i64* %t3179
  %t3240 = add i64 %t3239, 1
  store i64 %t3240, i64* %t3179
  %t3241 = load %nyx_string*, %nyx_string** %t3104
  store %nyx_string* %t3241, %nyx_string** %t3235
  br label %merge569
else568:
  %t3242 = load { i64, i8* }*, { i64, i8* }** %t3183
  %t3243 = load %nyx_string*, %nyx_string** %t3107
  %t3244 = load %nyx_string*, %nyx_string** %t3174
  %t3245 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3243, %nyx_string* %t3244)
  %t3246 = load %nyx_string*, %nyx_string** %t3110
  %t3247 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3245, %nyx_string* %t3246)
  %t3248 = load i64, i64* %t3218
  %t3249 = call %nyx_string* @nyx_string_from_int(i64 %t3248)
  %t3250 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3247, %nyx_string* %t3249)
  %t3251 = load %nyx_string*, %nyx_string** %t3113
  %t3252 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3250, %nyx_string* %t3251)
  %t3253 = load %nyx_string*, %nyx_string** %t3222
  %t3254 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3252, %nyx_string* %t3253)
  %t3255 = ptrtoint %nyx_string* %t3254 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3242, i64 %t3255, i64 2)
  br label %merge569
merge569:
  %t3256 = load %nyx_string*, %nyx_string** %t3185
  %t3257 = load %nyx_string*, %nyx_string** %t3116
  %t3258 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3256, %nyx_string* %t3257)
  %t3259 = load i64, i64* %t3218
  %t3260 = call %nyx_string* @nyx_string_from_int(i64 %t3259)
  %t3261 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3258, %nyx_string* %t3260)
  %t3262 = load %nyx_string*, %nyx_string** %t3119
  %t3263 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3261, %nyx_string* %t3262)
  %t3264 = load %nyx_string*, %nyx_string** %t3222
  %t3265 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3263, %nyx_string* %t3264)
  %t3266 = load %nyx_string*, %nyx_string** %t3122
  %t3267 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3265, %nyx_string* %t3266)
  store %nyx_string* %t3267, %nyx_string** %t3185
  %t3268 = load %nyx_string*, %nyx_string** %t3187
  %t3269 = load %nyx_string*, %nyx_string** %t3125
  %t3270 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3268, %nyx_string* %t3269)
  %t3271 = load %nyx_string*, %nyx_string** %t3235
  %t3272 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3270, %nyx_string* %t3271)
  %t3273 = load %nyx_string*, %nyx_string** %t3119
  %t3274 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3272, %nyx_string* %t3273)
  %t3275 = load %nyx_string*, %nyx_string** %t3222
  %t3276 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3274, %nyx_string* %t3275)
  %t3277 = load %nyx_string*, %nyx_string** %t3122
  %t3278 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3276, %nyx_string* %t3277)
  store %nyx_string* %t3278, %nyx_string** %t3187
  br label %merge566
merge566:
  %t3279 = load i64, i64* %t3189
  %t3280 = add i64 %t3279, 1
  store i64 %t3280, i64* %t3189
  br label %merge563
merge563:
  br label %while_cond556
while_end558:
  %t3281 = load %nyx_string*, %nyx_string** %t3128
  %t3282 = load %nyx_string*, %nyx_string** %t3174
  %t3283 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3281, %nyx_string* %t3282)
  %t3284 = load %nyx_string*, %nyx_string** %t3131
  %t3285 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3283, %nyx_string* %t3284)
  %t3286 = load i64, i64* %t3179
  %t3287 = call %nyx_string* @nyx_string_from_int(i64 %t3286)
  %t3288 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3285, %nyx_string* %t3287)
  %t3289 = load %nyx_string*, %nyx_string** %t3134
  %t3290 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3288, %nyx_string* %t3289)
  %t3291 = load i64, i64* %t3180
  %t3292 = call %nyx_string* @nyx_string_from_int(i64 %t3291)
  %t3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3290, %nyx_string* %t3292)
  %t3294 = load %nyx_string*, %nyx_string** %t3137
  %t3295 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3293, %nyx_string* %t3294)
  store %nyx_string* %t3295, %nyx_string** %t3296
  %t3297 = load i8*, i8** %t2769
  %t3298 = load %nyx_string*, %nyx_string** %t3178
  %t3299 = call i8* @nyx_string_to_cstr(%nyx_string* %t3298)
  %t3300 = call i1 @nyx_map_contains_str(i8* %t3297, i8* %t3299)
  %t3301 = xor i1 %t3300, true
  br i1 %t3301, label %then570, label %else571
then570:
  %t3302 = load %nyx_string*, %nyx_string** %t3296
  %t3303 = load %nyx_string*, %nyx_string** %t3140
  %t3304 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3302, %nyx_string* %t3303)
  store %nyx_string* %t3304, %nyx_string** %t3296
  br label %merge572
else571:
  br label %merge572
merge572:
  %t3305 = load i64, i64* %t3181
  %t3306 = icmp sgt i64 %t3305, 0
  br i1 %t3306, label %then573, label %else574
then573:
  %t3307 = load %nyx_string*, %nyx_string** %t3296
  %t3308 = load %nyx_string*, %nyx_string** %t3143
  %t3309 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3307, %nyx_string* %t3308)
  %t3310 = load i64, i64* %t3181
  %t3311 = call %nyx_string* @nyx_string_from_int(i64 %t3310)
  %t3312 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3309, %nyx_string* %t3311)
  %t3313 = load %nyx_string*, %nyx_string** %t3146
  %t3314 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3312, %nyx_string* %t3313)
  store %nyx_string* %t3314, %nyx_string** %t3296
  br label %merge575
else574:
  br label %merge575
merge575:
  %t3315 = load %nyx_string*, %nyx_string** %t3296
  %t3316 = call i8* @nyx_string_to_cstr(%nyx_string* %t3315)
  call void @nyx_print_string(i8* %t3316)
  store i64 0, i64* %t3317
  br label %while_cond576
while_cond576:
  %t3318 = load i64, i64* %t3317
  %t3319 = load { i64, i8* }*, { i64, i8* }** %t3183
  %t3320 = call i64 @nyx_array_length({ i64, i8* }* %t3319)
  %t3321 = icmp slt i64 %t3318, %t3320
  br i1 %t3321, label %while_body577, label %while_end578
while_body577:
  %t3322 = load { i64, i8* }*, { i64, i8* }** %t3183
  %t3323 = load i64, i64* %t3317
  %t3324 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3322, i64 %t3323, i64 2)
  %t3325 = inttoptr i64 %t3324 to %nyx_string*
  store %nyx_string* %t3325, %nyx_string** %t3326
  %t3327 = load %nyx_string*, %nyx_string** %t3326
  %t3328 = call i8* @nyx_string_to_cstr(%nyx_string* %t3327)
  call void @nyx_print_string(i8* %t3328)
  %t3329 = load i64, i64* %t3317
  %t3330 = add i64 %t3329, 1
  store i64 %t3330, i64* %t3317
  br label %while_cond576
while_end578:
  %t3331 = load i64, i64* %t3087
  %t3332 = load i64, i64* %t3179
  %t3333 = add i64 %t3331, %t3332
  store i64 %t3333, i64* %t3087
  %t3334 = load i64, i64* %t3088
  %t3335 = load i64, i64* %t3180
  %t3336 = add i64 %t3334, %t3335
  store i64 %t3336, i64* %t3088
  %t3337 = load %nyx_string*, %nyx_string** %t3086
  %t3338 = load %nyx_string*, %nyx_string** %t3149
  %t3339 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3337, %nyx_string* %t3338)
  %t3340 = load %nyx_string*, %nyx_string** %t3174
  %t3341 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3339, %nyx_string* %t3340)
  %t3342 = load %nyx_string*, %nyx_string** %t3122
  %t3343 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3341, %nyx_string* %t3342)
  %t3344 = load %nyx_string*, %nyx_string** %t3185
  %t3345 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3343, %nyx_string* %t3344)
  %t3346 = load %nyx_string*, %nyx_string** %t3187
  %t3347 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3345, %nyx_string* %t3346)
  %t3348 = load %nyx_string*, %nyx_string** %t3152
  %t3349 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3347, %nyx_string* %t3348)
  %t3350 = load i64, i64* %t3180
  %t3351 = call %nyx_string* @nyx_string_from_int(i64 %t3350)
  %t3352 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3349, %nyx_string* %t3351)
  %t3353 = load %nyx_string*, %nyx_string** %t3155
  %t3354 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3352, %nyx_string* %t3353)
  %t3355 = load i64, i64* %t3179
  %t3356 = call %nyx_string* @nyx_string_from_int(i64 %t3355)
  %t3357 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3354, %nyx_string* %t3356)
  %t3358 = load %nyx_string*, %nyx_string** %t3158
  %t3359 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3357, %nyx_string* %t3358)
  store %nyx_string* %t3359, %nyx_string** %t3086
  %t3360 = load i64, i64* %t3189
  store i64 %t3360, i64* %t3089
  br label %while_cond553
while_end555:
  %t3361 = load { i64, i8* }*, { i64, i8* }** %t2636
  %t3362 = call i64 @nyx_array_length({ i64, i8* }* %t3361)
  %t3363 = icmp sgt i64 %t3362, 0
  br i1 %t3363, label %then579, label %else580
then579:
  %t3364 = getelementptr [70 x i8], [70 x i8]* @.str354, i32 0, i32 0
  %t3365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %t3364, i64 69)
  %t3366 = call i8* @nyx_string_to_cstr(%nyx_string* %t3365)
  call void @nyx_print_string(i8* %t3366)
  store i64 0, i64* %t3367
  %t3368 = getelementptr [5 x i8], [5 x i8]* @.str355, i32 0, i32 0
  %t3369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %t3368, i64 4)
  store %nyx_string* %t3369, %nyx_string** %t3370
  br label %while_cond582
while_cond582:
  %t3371 = load i64, i64* %t3367
  %t3372 = load { i64, i8* }*, { i64, i8* }** %t2636
  %t3373 = call i64 @nyx_array_length({ i64, i8* }* %t3372)
  %t3374 = icmp slt i64 %t3371, %t3373
  br i1 %t3374, label %while_body583, label %while_end584
while_body583:
  %t3375 = load { i64, i8* }*, { i64, i8* }** %t2636
  %t3376 = load i64, i64* %t3367
  %t3377 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3375, i64 %t3376, i64 2)
  %t3378 = inttoptr i64 %t3377 to %nyx_string*
  store %nyx_string* %t3378, %nyx_string** %t3379
  %t3380 = load %nyx_string*, %nyx_string** %t3370
  %t3381 = load %nyx_string*, %nyx_string** %t3379
  %t3382 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3380, %nyx_string* %t3381)
  %t3383 = call i8* @nyx_string_to_cstr(%nyx_string* %t3382)
  call void @nyx_print_string(i8* %t3383)
  %t3384 = load i64, i64* %t3367
  %t3385 = add i64 %t3384, 1
  store i64 %t3385, i64* %t3367
  br label %while_cond582
while_end584:
  br label %merge581
else580:
  br label %merge581
merge581:
  %t3386 = getelementptr [10 x i8], [10 x i8]* @.str356, i32 0, i32 0
  %t3387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %t3386, i64 9)
  %t3388 = load i64, i64* %t3087
  %t3389 = call %nyx_string* @nyx_string_from_int(i64 %t3388)
  %t3390 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3387, %nyx_string* %t3389)
  %t3391 = getelementptr [2 x i8], [2 x i8]* @.str357, i32 0, i32 0
  %t3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %t3391, i64 1)
  %t3393 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3390, %nyx_string* %t3392)
  %t3394 = load i64, i64* %t3088
  %t3395 = call %nyx_string* @nyx_string_from_int(i64 %t3394)
  %t3396 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3393, %nyx_string* %t3395)
  %t3397 = getelementptr [20 x i8], [20 x i8]* @.str358, i32 0, i32 0
  %t3398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %t3397, i64 19)
  %t3399 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3396, %nyx_string* %t3398)
  %t3400 = call i8* @nyx_string_to_cstr(%nyx_string* %t3399)
  call void @nyx_print_string(i8* %t3400)
  %t3401 = load i1, i1* %want_lcov.ptr
  br i1 %t3401, label %then585, label %else586
then585:
  %t3402 = getelementptr [11 x i8], [11 x i8]* @.str359, i32 0, i32 0
  %t3403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %t3402, i64 10)
  %t3404 = load %nyx_string*, %nyx_string** %t2622
  %t3405 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3403, %nyx_string* %t3404)
  %t3406 = getelementptr [9 x i8], [9 x i8]* @.str360, i32 0, i32 0
  %t3407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %t3406, i64 8)
  %t3408 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3405, %nyx_string* %t3407)
  %t3409 = call i8* @nyx_string_to_cstr(%nyx_string* %t3408)
  %t3410 = call i64 @nyx_exec_code(i8* %t3409)
  %t3411 = load %nyx_string*, %nyx_string** %t2622
  %t3412 = getelementptr [22 x i8], [22 x i8]* @.str361, i32 0, i32 0
  %t3413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %t3412, i64 21)
  %t3414 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3411, %nyx_string* %t3413)
  %t3415 = load %nyx_string*, %nyx_string** %t3086
  %t3416 = ptrtoint %nyx_string* %t3415 to i64
  %t3417 = call i8* @nyx_string_to_cstr(%nyx_string* %t3414)
  %t3418 = inttoptr i64 %t3416 to %nyx_string*
  %t3419 = call i1 @nyx_write_file_safe(i8* %t3417, %nyx_string* %t3418)
  %t3420 = getelementptr [29 x i8], [29 x i8]* @.str362, i32 0, i32 0
  %t3421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %t3420, i64 28)
  %t3422 = call i8* @nyx_string_to_cstr(%nyx_string* %t3421)
  call void @nyx_print_string(i8* %t3422)
  br label %merge587
else586:
  br label %merge587
merge587:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %t3423 = getelementptr [115 x i8], [115 x i8]* @.str363, i32 0, i32 0
  %t3424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %t3423, i64 114)
  %t3425 = call i8* @nyx_string_to_cstr(%nyx_string* %t3424)
  call void @nyx_print_string(i8* %t3425)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %t3426 = getelementptr [5 x i8], [5 x i8]* @.str364, i32 0, i32 0
  %t3427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %t3426, i64 4)
  %t3428 = load %nyx_string*, %nyx_string** %nh.ptr
  %t3429 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3427, %nyx_string* %t3428)
  %t3430 = getelementptr [66 x i8], [66 x i8]* @.str365, i32 0, i32 0
  %t3431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %t3430, i64 65)
  %t3432 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3429, %nyx_string* %t3431)
  %t3433 = call i8* @nyx_string_to_cstr(%nyx_string* %t3432)
  %t3434 = call %nyx_string* @nyx_exec(i8* %t3433)
  %t3435 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3434)
  ret %nyx_string* %t3435
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %t3436 = getelementptr [5 x i8], [5 x i8]* @.str366, i32 0, i32 0
  %t3437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %t3436, i64 4)
  %t3438 = load %nyx_string*, %nyx_string** %nh.ptr
  %t3439 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3437, %nyx_string* %t3438)
  %t3440 = getelementptr [74 x i8], [74 x i8]* @.str367, i32 0, i32 0
  %t3441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %t3440, i64 73)
  %t3442 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3439, %nyx_string* %t3441)
  %t3443 = call i8* @nyx_string_to_cstr(%nyx_string* %t3442)
  %t3444 = call %nyx_string* @nyx_exec(i8* %t3443)
  %t3445 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3444)
  ret %nyx_string* %t3445
}

define i64 @main(
i32 %argc, i8** %argv) {
  %t3451 = alloca i64
  %t3456 = alloca %nyx_string*
  %t3464 = alloca %nyx_string*
  %t3467 = alloca %nyx_string*
  %t3470 = alloca %nyx_string*
  %t3485 = alloca %TestConfig
  %t3487 = alloca { i64, i8* }*
  %t3490 = alloca %nyx_string*
  %t3491 = alloca i64
  %t3494 = alloca %nyx_string*
  %t3497 = alloca %nyx_string*
  %t3500 = alloca %nyx_string*
  %t3503 = alloca %nyx_string*
  %t3506 = alloca %nyx_string*
  %t3509 = alloca %nyx_string*
  %t3512 = alloca %nyx_string*
  %t3515 = alloca %nyx_string*
  %t3518 = alloca %nyx_string*
  %t3521 = alloca %nyx_string*
  %t3524 = alloca %nyx_string*
  %t3527 = alloca %nyx_string*
  %t3530 = alloca %nyx_string*
  %t3533 = alloca %nyx_string*
  %t3536 = alloca %nyx_string*
  %t3539 = alloca %nyx_string*
  %t3548 = alloca %nyx_string*
  %t3549 = alloca i1
  %t3565 = alloca %nyx_string*
  %t3568 = alloca i1
  %t3577 = alloca i1
  %t3593 = alloca %nyx_string*
  %t3610 = alloca i1
  %t3625 = alloca i1
  %t3634 = alloca i1
  %t3650 = alloca %nyx_string*
  %t3656 = alloca i1
  %t3702 = alloca %nyx_string*
  %t3705 = alloca %nyx_string*
  %t3714 = alloca %nyx_string*
  %t3717 = alloca %nyx_string*
  %t3761 = alloca { i64, i8* }*
  %t3843 = alloca i1
  %t3858 = alloca %nyx_string*
  %t3863 = alloca %nyx_string*
  %t3874 = alloca %nyx_string*
  %t3891 = alloca %nyx_string*
  %t3911 = alloca i64
  %t3915 = alloca %nyx_string*
  %t3936 = alloca { i64, i8* }*
  %t3937 = alloca i64
  %t3938 = alloca i64
  %t3939 = alloca i64
  %t3942 = alloca %nyx_string*
  %t3945 = alloca %nyx_string*
  %t3948 = alloca %nyx_string*
  %t3951 = alloca %nyx_string*
  %t3960 = alloca %nyx_string*
  %t4006 = alloca { i64, i8* }*
  %t4008 = alloca { i64, i8* }*
  %t4010 = alloca { i64, i8* }*
  %t4011 = alloca i64
  %t4012 = alloca i64
  %t4013 = alloca i64
  %t4022 = alloca %nyx_string*
  %t4033 = alloca %TestResult
  %t4088 = alloca %nyx_string*
  %t4091 = alloca %nyx_string*
  %t4092 = alloca i1
  %t4154 = alloca i64
  %t4155 = alloca i64
  %t4166 = alloca %TestResult
  %t4174 = alloca i1
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %t3446 = getelementptr [24 x i8], [24 x i8]* @.str368, i32 0, i32 0
  %t3447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %t3446, i64 23)
  %t3448 = call i8* @nyx_string_to_cstr(%nyx_string* %t3447)
  call void @nyx_print_string(i8* %t3448)
  %t3449 = call %nyx_string* @tmp_base()
  %t3450 = call i64 @barrer_huerfanos(%nyx_string* %t3449)
  store i64 %t3450, i64* %t3451
  %t3452 = getelementptr [9 x i8], [9 x i8]* @.str369, i32 0, i32 0
  %t3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %t3452, i64 8)
  %t3454 = call i8* @nyx_string_to_cstr(%nyx_string* %t3453)
  %t3455 = call %nyx_string* @nyx_getenv(i8* %t3454)
  store %nyx_string* %t3455, %nyx_string** %t3456
  %t3457 = load %nyx_string*, %nyx_string** %t3456
  %t3458 = getelementptr [9 x i8], [9 x i8]* @.str370, i32 0, i32 0
  %t3459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %t3458, i64 8)
  %t3460 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3457, %nyx_string* %t3459)
  %t3461 = call i8* @nyx_string_to_cstr(%nyx_string* %t3460)
  %t3462 = call %nyx_string* @nyx_read_file(i8* %t3461)
  %t3463 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3462)
  store %nyx_string* %t3463, %nyx_string** %t3464
  %t3465 = load %nyx_string*, %nyx_string** %t3456
  %t3466 = call %nyx_string* @huella_compilador(%nyx_string* %t3465)
  store %nyx_string* %t3466, %nyx_string** %t3467
  %t3468 = load %nyx_string*, %nyx_string** %t3456
  %t3469 = call %nyx_string* @huella_resto(%nyx_string* %t3468)
  store %nyx_string* %t3469, %nyx_string** %t3470
  %t3471 = getelementptr [18 x i8], [18 x i8]* @.str371, i32 0, i32 0
  %t3472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %t3471, i64 17)
  %t3473 = load %nyx_string*, %nyx_string** %t3464
  %t3474 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3472, %nyx_string* %t3473)
  %t3475 = getelementptr [17 x i8], [17 x i8]* @.str372, i32 0, i32 0
  %t3476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %t3475, i64 16)
  %t3477 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3474, %nyx_string* %t3476)
  %t3478 = load %nyx_string*, %nyx_string** %t3467
  %t3479 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3477, %nyx_string* %t3478)
  %t3480 = getelementptr [2 x i8], [2 x i8]* @.str373, i32 0, i32 0
  %t3481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %t3480, i64 1)
  %t3482 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3479, %nyx_string* %t3481)
  %t3483 = call i8* @nyx_string_to_cstr(%nyx_string* %t3482)
  call void @nyx_print_string(i8* %t3483)
  %t3484 = call %TestConfig @load_test_config()
  store %TestConfig %t3484, %TestConfig* %t3485
  %t3486 = call { i64, i8* }* @nyx_get_args()
  store { i64, i8* }* %t3486, { i64, i8* }** %t3487
  %t3488 = getelementptr [1 x i8], [1 x i8]* @.str374, i32 0, i32 0
  %t3489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %t3488, i64 0)
  store %nyx_string* %t3489, %nyx_string** %t3490
  store i64 1, i64* %t3491
  %t3492 = getelementptr [9 x i8], [9 x i8]* @.str375, i32 0, i32 0
  %t3493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %t3492, i64 8)
  store %nyx_string* %t3493, %nyx_string** %t3494
  %t3495 = getelementptr [10 x i8], [10 x i8]* @.str376, i32 0, i32 0
  %t3496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %t3495, i64 9)
  store %nyx_string* %t3496, %nyx_string** %t3497
  %t3498 = getelementptr [3 x i8], [3 x i8]* @.str377, i32 0, i32 0
  %t3499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %t3498, i64 2)
  store %nyx_string* %t3499, %nyx_string** %t3500
  %t3501 = getelementptr [10 x i8], [10 x i8]* @.str378, i32 0, i32 0
  %t3502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %t3501, i64 9)
  store %nyx_string* %t3502, %nyx_string** %t3503
  %t3504 = getelementptr [10 x i8], [10 x i8]* @.str379, i32 0, i32 0
  %t3505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %t3504, i64 9)
  store %nyx_string* %t3505, %nyx_string** %t3506
  %t3507 = getelementptr [11 x i8], [11 x i8]* @.str380, i32 0, i32 0
  %t3508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %t3507, i64 10)
  store %nyx_string* %t3508, %nyx_string** %t3509
  %t3510 = getelementptr [16 x i8], [16 x i8]* @.str381, i32 0, i32 0
  %t3511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %t3510, i64 15)
  store %nyx_string* %t3511, %nyx_string** %t3512
  %t3513 = getelementptr [8 x i8], [8 x i8]* @.str382, i32 0, i32 0
  %t3514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %t3513, i64 7)
  store %nyx_string* %t3514, %nyx_string** %t3515
  %t3516 = getelementptr [12 x i8], [12 x i8]* @.str383, i32 0, i32 0
  %t3517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %t3516, i64 11)
  store %nyx_string* %t3517, %nyx_string** %t3518
  %t3519 = getelementptr [24 x i8], [24 x i8]* @.str384, i32 0, i32 0
  %t3520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %t3519, i64 23)
  store %nyx_string* %t3520, %nyx_string** %t3521
  %t3522 = getelementptr [106 x i8], [106 x i8]* @.str385, i32 0, i32 0
  %t3523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %t3522, i64 105)
  store %nyx_string* %t3523, %nyx_string** %t3524
  %t3525 = getelementptr [9 x i8], [9 x i8]* @.str386, i32 0, i32 0
  %t3526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %t3525, i64 8)
  store %nyx_string* %t3526, %nyx_string** %t3527
  %t3528 = getelementptr [10 x i8], [10 x i8]* @.str387, i32 0, i32 0
  %t3529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %t3528, i64 9)
  store %nyx_string* %t3529, %nyx_string** %t3530
  %t3531 = getelementptr [2 x i8], [2 x i8]* @.str388, i32 0, i32 0
  %t3532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %t3531, i64 1)
  store %nyx_string* %t3532, %nyx_string** %t3533
  %t3534 = getelementptr [4 x i8], [4 x i8]* @.str389, i32 0, i32 0
  %t3535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %t3534, i64 3)
  store %nyx_string* %t3535, %nyx_string** %t3536
  %t3537 = getelementptr [2 x i8], [2 x i8]* @.str390, i32 0, i32 0
  %t3538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %t3537, i64 1)
  store %nyx_string* %t3538, %nyx_string** %t3539
  br label %while_cond588
while_cond588:
  %t3540 = load i64, i64* %t3491
  %t3541 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3542 = call i64 @nyx_array_length({ i64, i8* }* %t3541)
  %t3543 = icmp slt i64 %t3540, %t3542
  br i1 %t3543, label %while_body589, label %while_end590
while_body589:
  %t3544 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3545 = load i64, i64* %t3491
  %t3546 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3544, i64 %t3545, i64 2)
  %t3547 = inttoptr i64 %t3546 to %nyx_string*
  store %nyx_string* %t3547, %nyx_string** %t3548
  store i1 false, i1* %t3549
  %t3550 = load %nyx_string*, %nyx_string** %t3548
  %t3551 = load %nyx_string*, %nyx_string** %t3494
  %t3552 = call i1 @nyx_string_equals(%nyx_string* %t3550, %nyx_string* %t3551)
  br i1 %t3552, label %sc_and_rhs591, label %sc_and_end592
sc_and_rhs591:
  %t3553 = load i64, i64* %t3491
  %t3554 = add i64 %t3553, 1
  %t3555 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3556 = call i64 @nyx_array_length({ i64, i8* }* %t3555)
  %t3557 = icmp slt i64 %t3554, %t3556
  store i1 %t3557, i1* %t3549
  br label %sc_and_end592
sc_and_end592:
  %t3558 = load i1, i1* %t3549
  br i1 %t3558, label %then593, label %else594
then593:
  %t3559 = load i64, i64* %t3491
  %t3560 = add i64 %t3559, 1
  store i64 %t3560, i64* %t3491
  %t3561 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3562 = load i64, i64* %t3491
  %t3563 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3561, i64 %t3562, i64 2)
  %t3564 = inttoptr i64 %t3563 to %nyx_string*
  store %nyx_string* %t3564, %nyx_string** %t3565
  %t3566 = load %nyx_string*, %nyx_string** %t3565
  %t3567 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 2
  store %nyx_string* %t3566, %nyx_string** %t3567
  br label %merge595
else594:
  store i1 true, i1* %t3568
  %t3569 = load %nyx_string*, %nyx_string** %t3548
  %t3570 = load %nyx_string*, %nyx_string** %t3497
  %t3571 = call i1 @nyx_string_equals(%nyx_string* %t3569, %nyx_string* %t3570)
  br i1 %t3571, label %sc_or_end597, label %sc_or_rhs596
sc_or_rhs596:
  %t3572 = load %nyx_string*, %nyx_string** %t3548
  %t3573 = load %nyx_string*, %nyx_string** %t3500
  %t3574 = call i1 @nyx_string_equals(%nyx_string* %t3572, %nyx_string* %t3573)
  store i1 %t3574, i1* %t3568
  br label %sc_or_end597
sc_or_end597:
  %t3575 = load i1, i1* %t3568
  br i1 %t3575, label %then598, label %else599
then598:
  %t3576 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 3
  store i1 1, i1* %t3576
  br label %merge600
else599:
  store i1 false, i1* %t3577
  %t3578 = load %nyx_string*, %nyx_string** %t3548
  %t3579 = load %nyx_string*, %nyx_string** %t3503
  %t3580 = call i1 @nyx_string_equals(%nyx_string* %t3578, %nyx_string* %t3579)
  br i1 %t3580, label %sc_and_rhs601, label %sc_and_end602
sc_and_rhs601:
  %t3581 = load i64, i64* %t3491
  %t3582 = add i64 %t3581, 1
  %t3583 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3584 = call i64 @nyx_array_length({ i64, i8* }* %t3583)
  %t3585 = icmp slt i64 %t3582, %t3584
  store i1 %t3585, i1* %t3577
  br label %sc_and_end602
sc_and_end602:
  %t3586 = load i1, i1* %t3577
  br i1 %t3586, label %then603, label %else604
then603:
  %t3587 = load i64, i64* %t3491
  %t3588 = add i64 %t3587, 1
  store i64 %t3588, i64* %t3491
  %t3589 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3590 = load i64, i64* %t3491
  %t3591 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3589, i64 %t3590, i64 2)
  %t3592 = inttoptr i64 %t3591 to %nyx_string*
  store %nyx_string* %t3592, %nyx_string** %t3593
  %t3594 = load %nyx_string*, %nyx_string** %t3593
  %t3595 = call i64 @nyx_string_to_int(%nyx_string* %t3594)
  %t3596 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 1
  store i64 %t3595, i64* %t3596
  br label %merge605
else604:
  %t3597 = load %nyx_string*, %nyx_string** %t3548
  %t3598 = load %nyx_string*, %nyx_string** %t3506
  %t3599 = call i1 @nyx_string_equals(%nyx_string* %t3597, %nyx_string* %t3598)
  br i1 %t3599, label %then606, label %else607
then606:
  %t3600 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 7
  store i1 1, i1* %t3600
  br label %merge608
else607:
  %t3601 = load %nyx_string*, %nyx_string** %t3548
  %t3602 = load %nyx_string*, %nyx_string** %t3509
  %t3603 = call i1 @nyx_string_equals(%nyx_string* %t3601, %nyx_string* %t3602)
  br i1 %t3603, label %then609, label %else610
then609:
  %t3604 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 5
  store i1 1, i1* %t3604
  br label %merge611
else610:
  %t3605 = load %nyx_string*, %nyx_string** %t3548
  %t3606 = load %nyx_string*, %nyx_string** %t3512
  %t3607 = call i1 @nyx_string_equals(%nyx_string* %t3605, %nyx_string* %t3606)
  br i1 %t3607, label %then612, label %else613
then612:
  %t3608 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 5
  store i1 1, i1* %t3608
  %t3609 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 6
  store i1 1, i1* %t3609
  br label %merge614
else613:
  store i1 true, i1* %t3610
  %t3611 = load %nyx_string*, %nyx_string** %t3548
  %t3612 = load %nyx_string*, %nyx_string** %t3515
  %t3613 = call i1 @nyx_string_equals(%nyx_string* %t3611, %nyx_string* %t3612)
  br i1 %t3613, label %sc_or_end616, label %sc_or_rhs615
sc_or_rhs615:
  %t3614 = load %nyx_string*, %nyx_string** %t3548
  %t3615 = load %nyx_string*, %nyx_string** %t3518
  %t3616 = call i1 @nyx_string_starts_with(%nyx_string* %t3614, %nyx_string* %t3615)
  store i1 %t3616, i1* %t3610
  br label %sc_or_end616
sc_or_end616:
  %t3617 = load i1, i1* %t3610
  br i1 %t3617, label %then617, label %else618
then617:
  %t3618 = load %nyx_string*, %nyx_string** %t3521
  %t3619 = load %nyx_string*, %nyx_string** %t3548
  %t3620 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3618, %nyx_string* %t3619)
  %t3621 = call i8* @nyx_string_to_cstr(%nyx_string* %t3620)
  call void @nyx_print_string(i8* %t3621)
  %t3622 = load %nyx_string*, %nyx_string** %t3524
  %t3623 = call i8* @nyx_string_to_cstr(%nyx_string* %t3622)
  call void @nyx_print_string(i8* %t3623)
  %t3624 = call i64 @print_valid_options()
  ret i64 1
else618:
  store i1 true, i1* %t3625
  %t3626 = load %nyx_string*, %nyx_string** %t3548
  %t3627 = load %nyx_string*, %nyx_string** %t3527
  %t3628 = call i1 @nyx_string_equals(%nyx_string* %t3626, %nyx_string* %t3627)
  br i1 %t3628, label %sc_or_end621, label %sc_or_rhs620
sc_or_rhs620:
  %t3629 = load %nyx_string*, %nyx_string** %t3548
  %t3630 = load %nyx_string*, %nyx_string** %t3530
  %t3631 = call i1 @nyx_string_starts_with(%nyx_string* %t3629, %nyx_string* %t3630)
  store i1 %t3631, i1* %t3625
  br label %sc_or_end621
sc_or_end621:
  %t3632 = load i1, i1* %t3625
  br i1 %t3632, label %then622, label %else623
then622:
  %t3633 = load %nyx_string*, %nyx_string** %t3548
  store %nyx_string* %t3633, %nyx_string** %t3490
  store i1 false, i1* %t3634
  %t3635 = load %nyx_string*, %nyx_string** %t3548
  %t3636 = load %nyx_string*, %nyx_string** %t3527
  %t3637 = call i1 @nyx_string_equals(%nyx_string* %t3635, %nyx_string* %t3636)
  br i1 %t3637, label %sc_and_rhs625, label %sc_and_end626
sc_and_rhs625:
  %t3638 = load i64, i64* %t3491
  %t3639 = add i64 %t3638, 1
  %t3640 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3641 = call i64 @nyx_array_length({ i64, i8* }* %t3640)
  %t3642 = icmp slt i64 %t3639, %t3641
  store i1 %t3642, i1* %t3634
  br label %sc_and_end626
sc_and_end626:
  %t3643 = load i1, i1* %t3634
  br i1 %t3643, label %then627, label %else628
then627:
  %t3644 = load i64, i64* %t3491
  %t3645 = add i64 %t3644, 1
  store i64 %t3645, i64* %t3491
  %t3646 = load { i64, i8* }*, { i64, i8* }** %t3487
  %t3647 = load i64, i64* %t3491
  %t3648 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3646, i64 %t3647, i64 2)
  %t3649 = inttoptr i64 %t3648 to %nyx_string*
  store %nyx_string* %t3649, %nyx_string** %t3650
  %t3651 = load %nyx_string*, %nyx_string** %t3548
  %t3652 = load %nyx_string*, %nyx_string** %t3533
  %t3653 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3651, %nyx_string* %t3652)
  %t3654 = load %nyx_string*, %nyx_string** %t3650
  %t3655 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3653, %nyx_string* %t3654)
  store %nyx_string* %t3655, %nyx_string** %t3490
  br label %merge629
else628:
  br label %merge629
merge629:
  br label %merge624
else623:
  store i1 true, i1* %t3656
  %t3657 = load %nyx_string*, %nyx_string** %t3548
  %t3658 = load %nyx_string*, %nyx_string** %t3494
  %t3659 = call i1 @nyx_string_equals(%nyx_string* %t3657, %nyx_string* %t3658)
  br i1 %t3659, label %sc_or_end631, label %sc_or_rhs630
sc_or_rhs630:
  %t3660 = load %nyx_string*, %nyx_string** %t3548
  %t3661 = load %nyx_string*, %nyx_string** %t3503
  %t3662 = call i1 @nyx_string_equals(%nyx_string* %t3660, %nyx_string* %t3661)
  store i1 %t3662, i1* %t3656
  br label %sc_or_end631
sc_or_end631:
  %t3663 = load i1, i1* %t3656
  br i1 %t3663, label %then632, label %else633
then632:
  br label %merge634
else633:
  %t3664 = load %nyx_string*, %nyx_string** %t3548
  %t3665 = load %nyx_string*, %nyx_string** %t3536
  %t3666 = call i1 @nyx_string_ends_with(%nyx_string* %t3664, %nyx_string* %t3665)
  br i1 %t3666, label %then635, label %else636
then635:
  %t3667 = load %nyx_string*, %nyx_string** %t3548
  %t3668 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 4
  store %nyx_string* %t3667, %nyx_string** %t3668
  br label %merge637
else636:
  %t3669 = load %nyx_string*, %nyx_string** %t3548
  %t3670 = load %nyx_string*, %nyx_string** %t3539
  %t3671 = call i1 @nyx_string_starts_with(%nyx_string* %t3669, %nyx_string* %t3670)
  br i1 %t3671, label %then638, label %else639
then638:
  %t3672 = load %nyx_string*, %nyx_string** %t3521
  %t3673 = load %nyx_string*, %nyx_string** %t3548
  %t3674 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3672, %nyx_string* %t3673)
  %t3675 = call i8* @nyx_string_to_cstr(%nyx_string* %t3674)
  call void @nyx_print_string(i8* %t3675)
  %t3676 = call i64 @print_valid_options()
  ret i64 1
else639:
  br label %merge640
merge640:
  br label %merge637
merge637:
  br label %merge634
merge634:
  br label %merge624
merge624:
  br label %merge619
merge619:
  br label %merge614
merge614:
  br label %merge611
merge611:
  br label %merge608
merge608:
  br label %merge605
merge605:
  br label %merge600
merge600:
  br label %merge595
merge595:
  %t3677 = load i64, i64* %t3491
  %t3678 = add i64 %t3677, 1
  store i64 %t3678, i64* %t3491
  br label %while_cond588
while_end590:
  %t3679 = load %nyx_string*, %nyx_string** %t3490
  %t3680 = getelementptr [1 x i8], [1 x i8]* @.str391, i32 0, i32 0
  %t3681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %t3680, i64 0)
  %t3682 = call i1 @nyx_string_equals(%nyx_string* %t3679, %nyx_string* %t3681)
  %t3683 = xor i1 %t3682, true
  br i1 %t3683, label %then641, label %else642
then641:
  %t3684 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 5
  %t3685 = load i1, i1* %t3684
  br i1 %t3685, label %then644, label %else645
then644:
  %t3686 = getelementptr [47 x i8], [47 x i8]* @.str392, i32 0, i32 0
  %t3687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %t3686, i64 46)
  %t3688 = load %nyx_string*, %nyx_string** %t3490
  %t3689 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3687, %nyx_string* %t3688)
  %t3690 = getelementptr [58 x i8], [58 x i8]* @.str393, i32 0, i32 0
  %t3691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %t3690, i64 57)
  %t3692 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3689, %nyx_string* %t3691)
  %t3693 = call i8* @nyx_string_to_cstr(%nyx_string* %t3692)
  call void @nyx_print_string(i8* %t3693)
  br label %merge646
else645:
  %t3694 = getelementptr [24 x i8], [24 x i8]* @.str394, i32 0, i32 0
  %t3695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %t3694, i64 23)
  %t3696 = load %nyx_string*, %nyx_string** %t3490
  %t3697 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3695, %nyx_string* %t3696)
  %t3698 = call i8* @nyx_string_to_cstr(%nyx_string* %t3697)
  call void @nyx_print_string(i8* %t3698)
  br label %merge646
merge646:
  %t3699 = call i64 @print_valid_options()
  ret i64 1
else642:
  br label %merge643
merge643:
  %t3700 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %t3701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %t3700, i64 0)
  store %nyx_string* %t3701, %nyx_string** %t3702
  %t3703 = getelementptr [1 x i8], [1 x i8]* @.str396, i32 0, i32 0
  %t3704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %t3703, i64 0)
  store %nyx_string* %t3704, %nyx_string** %t3705
  %t3706 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 5
  %t3707 = load i1, i1* %t3706
  br i1 %t3707, label %then647, label %else648
then647:
  %t3708 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %t3708, %nyx_string** %t3702
  %t3709 = load %nyx_string*, %nyx_string** %t3702
  %t3710 = getelementptr [1 x i8], [1 x i8]* @.str397, i32 0, i32 0
  %t3711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %t3710, i64 0)
  %t3712 = call i1 @nyx_string_equals(%nyx_string* %t3709, %nyx_string* %t3711)
  br i1 %t3712, label %then650, label %else651
then650:
  %t3713 = call %nyx_string* @cov_clang_major()
  store %nyx_string* %t3713, %nyx_string** %t3714
  %t3715 = getelementptr [5 x i8], [5 x i8]* @.str398, i32 0, i32 0
  %t3716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %t3715, i64 4)
  store %nyx_string* %t3716, %nyx_string** %t3717
  %t3718 = load %nyx_string*, %nyx_string** %t3714
  %t3719 = getelementptr [1 x i8], [1 x i8]* @.str399, i32 0, i32 0
  %t3720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %t3719, i64 0)
  %t3721 = call i1 @nyx_string_equals(%nyx_string* %t3718, %nyx_string* %t3720)
  %t3722 = xor i1 %t3721, true
  br i1 %t3722, label %then653, label %else654
then653:
  %t3723 = getelementptr [6 x i8], [6 x i8]* @.str400, i32 0, i32 0
  %t3724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %t3723, i64 5)
  %t3725 = load %nyx_string*, %nyx_string** %t3714
  %t3726 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3724, %nyx_string* %t3725)
  store %nyx_string* %t3726, %nyx_string** %t3717
  br label %merge655
else654:
  br label %merge655
merge655:
  %t3727 = getelementptr [101 x i8], [101 x i8]* @.str401, i32 0, i32 0
  %t3728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %t3727, i64 100)
  %t3729 = call i8* @nyx_string_to_cstr(%nyx_string* %t3728)
  call void @nyx_print_string(i8* %t3729)
  %t3730 = getelementptr [35 x i8], [35 x i8]* @.str402, i32 0, i32 0
  %t3731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %t3730, i64 34)
  %t3732 = load %nyx_string*, %nyx_string** %t3717
  %t3733 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3731, %nyx_string* %t3732)
  %t3734 = call i8* @nyx_string_to_cstr(%nyx_string* %t3733)
  call void @nyx_print_string(i8* %t3734)
  %t3735 = getelementptr [82 x i8], [82 x i8]* @.str403, i32 0, i32 0
  %t3736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %t3735, i64 81)
  %t3737 = call i8* @nyx_string_to_cstr(%nyx_string* %t3736)
  call void @nyx_print_string(i8* %t3737)
  %t3738 = getelementptr [82 x i8], [82 x i8]* @.str404, i32 0, i32 0
  %t3739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %t3738, i64 81)
  %t3740 = call i8* @nyx_string_to_cstr(%nyx_string* %t3739)
  call void @nyx_print_string(i8* %t3740)
  ret i64 1
else651:
  br label %merge652
merge652:
  %t3741 = getelementptr [12 x i8], [12 x i8]* @.str405, i32 0, i32 0
  %t3742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %t3741, i64 11)
  %t3743 = getelementptr [5 x i8], [5 x i8]* @.str406, i32 0, i32 0
  %t3744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %t3743, i64 4)
  %t3745 = call %nyx_string* @tmp_plantilla(%nyx_string* %t3744)
  %t3746 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3742, %nyx_string* %t3745)
  %t3747 = getelementptr [2 x i8], [2 x i8]* @.str407, i32 0, i32 0
  %t3748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %t3747, i64 1)
  %t3749 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3746, %nyx_string* %t3748)
  %t3750 = call i8* @nyx_string_to_cstr(%nyx_string* %t3749)
  %t3751 = call %nyx_string* @nyx_exec(i8* %t3750)
  %t3752 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3751)
  store %nyx_string* %t3752, %nyx_string** %t3705
  %t3753 = load %nyx_string*, %nyx_string** %t3705
  %t3754 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %t3755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %t3754, i64 0)
  %t3756 = call i1 @nyx_string_equals(%nyx_string* %t3753, %nyx_string* %t3755)
  br i1 %t3756, label %then656, label %else657
then656:
  %t3757 = getelementptr [55 x i8], [55 x i8]* @.str409, i32 0, i32 0
  %t3758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %t3757, i64 54)
  %t3759 = call i8* @nyx_string_to_cstr(%nyx_string* %t3758)
  call void @nyx_print_string(i8* %t3759)
  ret i64 1
else657:
  br label %merge658
merge658:
  br label %merge649
else648:
  br label %merge649
merge649:
  %t3760 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3760, { i64, i8* }** %t3761
  %t3762 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 4
  %t3763 = load %nyx_string*, %nyx_string** %t3762
  %t3764 = getelementptr [1 x i8], [1 x i8]* @.str410, i32 0, i32 0
  %t3765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %t3764, i64 0)
  %t3766 = call i1 @nyx_string_equals(%nyx_string* %t3763, %nyx_string* %t3765)
  %t3767 = xor i1 %t3766, true
  br i1 %t3767, label %then659, label %else660
then659:
  %t3768 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 4
  %t3769 = load %nyx_string*, %nyx_string** %t3768
  %t3770 = call i8* @nyx_string_to_cstr(%nyx_string* %t3769)
  %t3771 = call i1 @nyx_file_exists(i8* %t3770)
  %t3772 = xor i1 %t3771, true
  br i1 %t3772, label %then662, label %else663
then662:
  %t3773 = getelementptr [24 x i8], [24 x i8]* @.str411, i32 0, i32 0
  %t3774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %t3773, i64 23)
  %t3775 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 4
  %t3776 = load %nyx_string*, %nyx_string** %t3775
  %t3777 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3774, %nyx_string* %t3776)
  %t3778 = call i8* @nyx_string_to_cstr(%nyx_string* %t3777)
  call void @nyx_print_string(i8* %t3778)
  ret i64 1
else663:
  br label %merge664
merge664:
  %t3779 = load { i64, i8* }*, { i64, i8* }** %t3761
  %t3780 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 4
  %t3781 = load %nyx_string*, %nyx_string** %t3780
  %t3782 = ptrtoint %nyx_string* %t3781 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3779, i64 %t3782, i64 2)
  br label %merge661
else660:
  %t3783 = load %TestConfig, %TestConfig* %t3485
  %t3784 = call { i64, i8* }* @discover_tests(%TestConfig %t3783)
  store { i64, i8* }* %t3784, { i64, i8* }** %t3761
  br label %merge661
merge661:
  %t3785 = load { i64, i8* }*, { i64, i8* }** %t3761
  %t3786 = call i64 @nyx_array_length({ i64, i8* }* %t3785)
  %t3787 = icmp eq i64 %t3786, 0
  br i1 %t3787, label %then665, label %else666
then665:
  %t3788 = getelementptr [23 x i8], [23 x i8]* @.str412, i32 0, i32 0
  %t3789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %t3788, i64 22)
  %t3790 = call i8* @nyx_string_to_cstr(%nyx_string* %t3789)
  call void @nyx_print_string(i8* %t3790)
  %t3791 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 2
  %t3792 = load %nyx_string*, %nyx_string** %t3791
  %t3793 = getelementptr [1 x i8], [1 x i8]* @.str413, i32 0, i32 0
  %t3794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %t3793, i64 0)
  %t3795 = call i1 @nyx_string_equals(%nyx_string* %t3792, %nyx_string* %t3794)
  %t3796 = xor i1 %t3795, true
  br i1 %t3796, label %then668, label %else669
then668:
  %t3797 = getelementptr [12 x i8], [12 x i8]* @.str414, i32 0, i32 0
  %t3798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %t3797, i64 11)
  %t3799 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 2
  %t3800 = load %nyx_string*, %nyx_string** %t3799
  %t3801 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3798, %nyx_string* %t3800)
  %t3802 = getelementptr [2 x i8], [2 x i8]* @.str415, i32 0, i32 0
  %t3803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %t3802, i64 1)
  %t3804 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3801, %nyx_string* %t3803)
  %t3805 = call i8* @nyx_string_to_cstr(%nyx_string* %t3804)
  call void @nyx_print_string(i8* %t3805)
  br label %merge670
else669:
  br label %merge670
merge670:
  %t3806 = getelementptr [14 x i8], [14 x i8]* @.str416, i32 0, i32 0
  %t3807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %t3806, i64 13)
  %t3808 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 0
  %t3809 = load %nyx_string*, %nyx_string** %t3808
  %t3810 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3807, %nyx_string* %t3809)
  %t3811 = getelementptr [2 x i8], [2 x i8]* @.str417, i32 0, i32 0
  %t3812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %t3811, i64 1)
  %t3813 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3810, %nyx_string* %t3812)
  %t3814 = call i8* @nyx_string_to_cstr(%nyx_string* %t3813)
  call void @nyx_print_string(i8* %t3814)
  ret i64 0
else666:
  br label %merge667
merge667:
  %t3815 = getelementptr [9 x i8], [9 x i8]* @.str418, i32 0, i32 0
  %t3816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %t3815, i64 8)
  %t3817 = load { i64, i8* }*, { i64, i8* }** %t3761
  %t3818 = call i64 @nyx_array_length({ i64, i8* }* %t3817)
  %t3819 = call %nyx_string* @nyx_string_from_int(i64 %t3818)
  %t3820 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3816, %nyx_string* %t3819)
  %t3821 = getelementptr [14 x i8], [14 x i8]* @.str419, i32 0, i32 0
  %t3822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %t3821, i64 13)
  %t3823 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3820, %nyx_string* %t3822)
  %t3824 = call i8* @nyx_string_to_cstr(%nyx_string* %t3823)
  call void @nyx_print_string(i8* %t3824)
  %t3825 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 2
  %t3826 = load %nyx_string*, %nyx_string** %t3825
  %t3827 = getelementptr [1 x i8], [1 x i8]* @.str420, i32 0, i32 0
  %t3828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %t3827, i64 0)
  %t3829 = call i1 @nyx_string_equals(%nyx_string* %t3826, %nyx_string* %t3828)
  %t3830 = xor i1 %t3829, true
  br i1 %t3830, label %then671, label %else672
then671:
  %t3831 = getelementptr [12 x i8], [12 x i8]* @.str421, i32 0, i32 0
  %t3832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %t3831, i64 11)
  %t3833 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 2
  %t3834 = load %nyx_string*, %nyx_string** %t3833
  %t3835 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3832, %nyx_string* %t3834)
  %t3836 = getelementptr [2 x i8], [2 x i8]* @.str422, i32 0, i32 0
  %t3837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %t3836, i64 1)
  %t3838 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3835, %nyx_string* %t3837)
  %t3839 = call i8* @nyx_string_to_cstr(%nyx_string* %t3838)
  call void @nyx_print_string(i8* %t3839)
  br label %merge673
else672:
  br label %merge673
merge673:
  %t3840 = getelementptr [1 x i8], [1 x i8]* @.str423, i32 0, i32 0
  %t3841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %t3840, i64 0)
  %t3842 = call i8* @nyx_string_to_cstr(%nyx_string* %t3841)
  call void @nyx_print_string(i8* %t3842)
  store i1 false, i1* %t3843
  %t3844 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 8
  %t3845 = load %nyx_string*, %nyx_string** %t3844
  %t3846 = getelementptr [1 x i8], [1 x i8]* @.str424, i32 0, i32 0
  %t3847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %t3846, i64 0)
  %t3848 = call i1 @nyx_string_equals(%nyx_string* %t3845, %nyx_string* %t3847)
  %t3849 = xor i1 %t3848, true
  br i1 %t3849, label %sc_and_rhs674, label %sc_and_end675
sc_and_rhs674:
  %t3850 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 5
  %t3851 = load i1, i1* %t3850
  %t3852 = xor i1 %t3851, true
  store i1 %t3852, i1* %t3843
  br label %sc_and_end675
sc_and_end675:
  %t3853 = load i1, i1* %t3843
  br i1 %t3853, label %then676, label %else677
then676:
  %t3854 = getelementptr [9 x i8], [9 x i8]* @.str425, i32 0, i32 0
  %t3855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %t3854, i64 8)
  %t3856 = call i8* @nyx_string_to_cstr(%nyx_string* %t3855)
  %t3857 = call %nyx_string* @nyx_getenv(i8* %t3856)
  store %nyx_string* %t3857, %nyx_string** %t3858
  %t3859 = load %nyx_string*, %nyx_string** %t3858
  %t3860 = getelementptr [11 x i8], [11 x i8]* @.str426, i32 0, i32 0
  %t3861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %t3860, i64 10)
  %t3862 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3859, %nyx_string* %t3861)
  store %nyx_string* %t3862, %nyx_string** %t3863
  %t3864 = load %nyx_string*, %nyx_string** %t3863
  %t3865 = call i8* @nyx_string_to_cstr(%nyx_string* %t3864)
  %t3866 = call i1 @nyx_file_exists(i8* %t3865)
  %t3867 = xor i1 %t3866, true
  br i1 %t3867, label %then679, label %else680
then679:
  %t3868 = load %nyx_string*, %nyx_string** %t3858
  %t3869 = getelementptr [15 x i8], [15 x i8]* @.str427, i32 0, i32 0
  %t3870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %t3869, i64 14)
  %t3871 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3868, %nyx_string* %t3870)
  store %nyx_string* %t3871, %nyx_string** %t3863
  br label %merge681
else680:
  br label %merge681
merge681:
  %t3872 = getelementptr [1 x i8], [1 x i8]* @.str428, i32 0, i32 0
  %t3873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %t3872, i64 0)
  store %nyx_string* %t3873, %nyx_string** %t3874
  %t3875 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 7
  %t3876 = load i1, i1* %t3875
  br i1 %t3876, label %then682, label %else683
then682:
  %t3877 = getelementptr [11 x i8], [11 x i8]* @.str429, i32 0, i32 0
  %t3878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %t3877, i64 10)
  store %nyx_string* %t3878, %nyx_string** %t3874
  br label %merge684
else683:
  br label %merge684
merge684:
  %t3879 = getelementptr [9 x i8], [9 x i8]* @.str430, i32 0, i32 0
  %t3880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %t3879, i64 8)
  %t3881 = getelementptr [11 x i8], [11 x i8]* @.str431, i32 0, i32 0
  %t3882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %t3881, i64 10)
  %t3883 = call %nyx_string* @tmp_plantilla(%nyx_string* %t3882)
  %t3884 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3880, %nyx_string* %t3883)
  %t3885 = getelementptr [2 x i8], [2 x i8]* @.str432, i32 0, i32 0
  %t3886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %t3885, i64 1)
  %t3887 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3884, %nyx_string* %t3886)
  %t3888 = call i8* @nyx_string_to_cstr(%nyx_string* %t3887)
  %t3889 = call %nyx_string* @nyx_exec(i8* %t3888)
  %t3890 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3889)
  store %nyx_string* %t3890, %nyx_string** %t3891
  %t3892 = getelementptr [2 x i8], [2 x i8]* @.str433, i32 0, i32 0
  %t3893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %t3892, i64 1)
  %t3894 = load %nyx_string*, %nyx_string** %t3863
  %t3895 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3893, %nyx_string* %t3894)
  %t3896 = getelementptr [7 x i8], [7 x i8]* @.str434, i32 0, i32 0
  %t3897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %t3896, i64 6)
  %t3898 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3895, %nyx_string* %t3897)
  %t3899 = load %nyx_string*, %nyx_string** %t3874
  %t3900 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3898, %nyx_string* %t3899)
  %t3901 = getelementptr [5 x i8], [5 x i8]* @.str435, i32 0, i32 0
  %t3902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %t3901, i64 4)
  %t3903 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3900, %nyx_string* %t3902)
  %t3904 = load %nyx_string*, %nyx_string** %t3891
  %t3905 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3903, %nyx_string* %t3904)
  %t3906 = getelementptr [7 x i8], [7 x i8]* @.str436, i32 0, i32 0
  %t3907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %t3906, i64 6)
  %t3908 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3905, %nyx_string* %t3907)
  %t3909 = call i8* @nyx_string_to_cstr(%nyx_string* %t3908)
  %t3910 = call i64 @nyx_exec_code(i8* %t3909)
  store i64 %t3910, i64* %t3911
  %t3912 = load %nyx_string*, %nyx_string** %t3891
  %t3913 = call i8* @nyx_string_to_cstr(%nyx_string* %t3912)
  %t3914 = call %nyx_string* @nyx_read_file(i8* %t3913)
  store %nyx_string* %t3914, %nyx_string** %t3915
  %t3916 = getelementptr [8 x i8], [8 x i8]* @.str437, i32 0, i32 0
  %t3917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %t3916, i64 7)
  %t3918 = load %nyx_string*, %nyx_string** %t3891
  %t3919 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3917, %nyx_string* %t3918)
  %t3920 = getelementptr [2 x i8], [2 x i8]* @.str438, i32 0, i32 0
  %t3921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %t3920, i64 1)
  %t3922 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3919, %nyx_string* %t3921)
  %t3923 = call i8* @nyx_string_to_cstr(%nyx_string* %t3922)
  %t3924 = call i64 @nyx_exec_code(i8* %t3923)
  %t3925 = load i64, i64* %t3911
  %t3926 = icmp ne i64 %t3925, 0
  br i1 %t3926, label %then685, label %else686
then685:
  %t3927 = getelementptr [65 x i8], [65 x i8]* @.str439, i32 0, i32 0
  %t3928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %t3927, i64 64)
  %t3929 = call i8* @nyx_string_to_cstr(%nyx_string* %t3928)
  call void @nyx_print_string(i8* %t3929)
  %t3930 = load %nyx_string*, %nyx_string** %t3915
  %t3931 = call i8* @nyx_string_to_cstr(%nyx_string* %t3930)
  call void @nyx_print_string(i8* %t3931)
  ret i64 1
else686:
  br label %merge687
merge687:
  %t3932 = load %nyx_string*, %nyx_string** %t3915
  %t3933 = getelementptr [2 x i8], [2 x i8]* @.str440, i32 0, i32 0
  %t3934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %t3933, i64 1)
  %t3935 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t3932, %nyx_string* %t3934)
  store { i64, i8* }* %t3935, { i64, i8* }** %t3936
  store i64 0, i64* %t3937
  store i64 0, i64* %t3938
  store i64 0, i64* %t3939
  %t3940 = getelementptr [13 x i8], [13 x i8]* @.str441, i32 0, i32 0
  %t3941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %t3940, i64 12)
  store %nyx_string* %t3941, %nyx_string** %t3942
  %t3943 = getelementptr [6 x i8], [6 x i8]* @.str442, i32 0, i32 0
  %t3944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %t3943, i64 5)
  store %nyx_string* %t3944, %nyx_string** %t3945
  %t3946 = getelementptr [8 x i8], [8 x i8]* @.str443, i32 0, i32 0
  %t3947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %t3946, i64 7)
  store %nyx_string* %t3947, %nyx_string** %t3948
  %t3949 = getelementptr [4 x i8], [4 x i8]* @.str444, i32 0, i32 0
  %t3950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %t3949, i64 3)
  store %nyx_string* %t3950, %nyx_string** %t3951
  br label %while_cond688
while_cond688:
  %t3952 = load i64, i64* %t3937
  %t3953 = load { i64, i8* }*, { i64, i8* }** %t3936
  %t3954 = call i64 @nyx_array_length({ i64, i8* }* %t3953)
  %t3955 = icmp slt i64 %t3952, %t3954
  br i1 %t3955, label %while_body689, label %while_end690
while_body689:
  %t3956 = load { i64, i8* }*, { i64, i8* }** %t3936
  %t3957 = load i64, i64* %t3937
  %t3958 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3956, i64 %t3957, i64 2)
  %t3959 = inttoptr i64 %t3958 to %nyx_string*
  store %nyx_string* %t3959, %nyx_string** %t3960
  %t3961 = load %nyx_string*, %nyx_string** %t3960
  %t3962 = load %nyx_string*, %nyx_string** %t3942
  %t3963 = call i1 @nyx_string_starts_with(%nyx_string* %t3961, %nyx_string* %t3962)
  br i1 %t3963, label %then691, label %else692
then691:
  %t3964 = load %nyx_string*, %nyx_string** %t3960
  %t3965 = load %nyx_string*, %nyx_string** %t3960
  %t3966 = call i64 @nyx_string_byte_length(%nyx_string* %t3965)
  %t3967 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3964, i64 12, i64 %t3966)
  %t3968 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3967)
  %t3969 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 9
  store %nyx_string* %t3968, %nyx_string** %t3969
  br label %merge693
else692:
  br label %merge693
merge693:
  %t3970 = load %nyx_string*, %nyx_string** %t3960
  %t3971 = load %nyx_string*, %nyx_string** %t3945
  %t3972 = call i1 @nyx_string_contains(%nyx_string* %t3970, %nyx_string* %t3971)
  br i1 %t3972, label %then694, label %else695
then694:
  %t3973 = load i64, i64* %t3938
  %t3974 = add i64 %t3973, 1
  store i64 %t3974, i64* %t3938
  br label %merge696
else695:
  br label %merge696
merge696:
  %t3975 = load %nyx_string*, %nyx_string** %t3960
  %t3976 = load %nyx_string*, %nyx_string** %t3948
  %t3977 = call i1 @nyx_string_contains(%nyx_string* %t3975, %nyx_string* %t3976)
  br i1 %t3977, label %then697, label %else698
then697:
  %t3978 = load i64, i64* %t3939
  %t3979 = add i64 %t3978, 1
  store i64 %t3979, i64* %t3939
  br label %merge699
else698:
  br label %merge699
merge699:
  %t3980 = load %nyx_string*, %nyx_string** %t3960
  %t3981 = load %nyx_string*, %nyx_string** %t3951
  %t3982 = call i1 @nyx_string_contains(%nyx_string* %t3980, %nyx_string* %t3981)
  br i1 %t3982, label %then700, label %else701
then700:
  %t3983 = load %nyx_string*, %nyx_string** %t3960
  %t3984 = call i8* @nyx_string_to_cstr(%nyx_string* %t3983)
  call void @nyx_print_string(i8* %t3984)
  br label %merge702
else701:
  br label %merge702
merge702:
  %t3985 = load i64, i64* %t3937
  %t3986 = add i64 %t3985, 1
  store i64 %t3986, i64* %t3937
  br label %while_cond688
while_end690:
  %t3987 = getelementptr [18 x i8], [18 x i8]* @.str445, i32 0, i32 0
  %t3988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %t3987, i64 17)
  %t3989 = load i64, i64* %t3938
  %t3990 = call %nyx_string* @nyx_string_from_int(i64 %t3989)
  %t3991 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3988, %nyx_string* %t3990)
  %t3992 = getelementptr [16 x i8], [16 x i8]* @.str446, i32 0, i32 0
  %t3993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %t3992, i64 15)
  %t3994 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3991, %nyx_string* %t3993)
  %t3995 = load i64, i64* %t3939
  %t3996 = call %nyx_string* @nyx_string_from_int(i64 %t3995)
  %t3997 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3994, %nyx_string* %t3996)
  %t3998 = getelementptr [16 x i8], [16 x i8]* @.str447, i32 0, i32 0
  %t3999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %t3998, i64 15)
  %t4000 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3997, %nyx_string* %t3999)
  %t4001 = call i8* @nyx_string_to_cstr(%nyx_string* %t4000)
  call void @nyx_print_string(i8* %t4001)
  %t4002 = getelementptr [1 x i8], [1 x i8]* @.str448, i32 0, i32 0
  %t4003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %t4002, i64 0)
  %t4004 = call i8* @nyx_string_to_cstr(%nyx_string* %t4003)
  call void @nyx_print_string(i8* %t4004)
  br label %merge678
else677:
  br label %merge678
merge678:
  %t4005 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t4005, { i64, i8* }** %t4006
  %t4007 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t4007, { i64, i8* }** %t4008
  %t4009 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t4009, { i64, i8* }** %t4010
  store i64 0, i64* %t4011
  store i64 0, i64* %t4012
  store i64 0, i64* %t4013
  br label %while_cond703
while_cond703:
  %t4014 = load i64, i64* %t4013
  %t4015 = load { i64, i8* }*, { i64, i8* }** %t3761
  %t4016 = call i64 @nyx_array_length({ i64, i8* }* %t4015)
  %t4017 = icmp slt i64 %t4014, %t4016
  br i1 %t4017, label %while_body704, label %while_end705
while_body704:
  %t4018 = load { i64, i8* }*, { i64, i8* }** %t3761
  %t4019 = load i64, i64* %t4013
  %t4020 = call i64 @nyx_array_get_checked({ i64, i8* }* %t4018, i64 %t4019, i64 2)
  %t4021 = inttoptr i64 %t4020 to %nyx_string*
  store %nyx_string* %t4021, %nyx_string** %t4022
  %t4023 = load %nyx_string*, %nyx_string** %t4022
  %t4024 = call i1 @file_has_test_blocks(%nyx_string* %t4023)
  %t4025 = xor i1 %t4024, true
  br i1 %t4025, label %then706, label %else707
then706:
  %t4026 = load i64, i64* %t4013
  %t4027 = add i64 %t4026, 1
  store i64 %t4027, i64* %t4013
  br label %merge708
else707:
  %t4028 = load %nyx_string*, %nyx_string** %t4022
  %t4029 = load %TestConfig, %TestConfig* %t3485
  %t4030 = load %nyx_string*, %nyx_string** %t3705
  %t4031 = load i64, i64* %t4013
  %t4032 = call %TestResult @compile_and_run(%nyx_string* %t4028, %TestConfig %t4029, %nyx_string* %t4030, i64 %t4031)
  store %TestResult %t4032, %TestResult* %t4033
  %t4034 = load { i64, i8* }*, { i64, i8* }** %t4006
  %t4035 = load %TestResult, %TestResult* %t4033
  %t4036 = getelementptr %TestResult, %TestResult* null, i32 1
  %t4037 = ptrtoint %TestResult* %t4036 to i64
  %t4038 = call i8* @GC_malloc(i64 %t4037)
  %t4039 = bitcast i8* %t4038 to %TestResult*
  store %TestResult %t4035, %TestResult* %t4039
  %t4040 = ptrtoint %TestResult* %t4039 to i64
  call void @nyx_array_push({ i64, i8* }* %t4034, i64 %t4040)
  %t4041 = load { i64, i8* }*, { i64, i8* }** %t4008
  %t4042 = load %nyx_string*, %nyx_string** %t4022
  %t4043 = ptrtoint %nyx_string* %t4042 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4041, i64 %t4043, i64 2)
  %t4044 = load { i64, i8* }*, { i64, i8* }** %t4010
  %t4045 = load i64, i64* %t4013
  %t4046 = call %nyx_string* @nyx_string_from_int(i64 %t4045)
  %t4047 = ptrtoint %nyx_string* %t4046 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4044, i64 %t4047, i64 2)
  %t4048 = load i64, i64* %t4011
  %t4049 = getelementptr %TestResult, %TestResult* %t4033, i32 0, i32 1
  %t4050 = load i64, i64* %t4049
  %t4051 = add i64 %t4048, %t4050
  store i64 %t4051, i64* %t4011
  %t4052 = load i64, i64* %t4012
  %t4053 = getelementptr %TestResult, %TestResult* %t4033, i32 0, i32 2
  %t4054 = load i64, i64* %t4053
  %t4055 = add i64 %t4052, %t4054
  store i64 %t4055, i64* %t4012
  %t4056 = load %TestResult, %TestResult* %t4033
  %t4057 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 3
  %t4058 = load i1, i1* %t4057
  %t4059 = call i64 @print_result(%TestResult %t4056, i1 %t4058)
  %t4060 = load i64, i64* %t4013
  %t4061 = add i64 %t4060, 1
  store i64 %t4061, i64* %t4013
  br label %merge708
merge708:
  br label %while_cond703
while_end705:
  %t4062 = load { i64, i8* }*, { i64, i8* }** %t4006
  %t4063 = call i64 @nyx_array_length({ i64, i8* }* %t4062)
  %t4064 = icmp eq i64 %t4063, 0
  br i1 %t4064, label %then709, label %else710
then709:
  %t4065 = getelementptr [35 x i8], [35 x i8]* @.str449, i32 0, i32 0
  %t4066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %t4065, i64 34)
  %t4067 = call i8* @nyx_string_to_cstr(%nyx_string* %t4066)
  call void @nyx_print_string(i8* %t4067)
  %t4068 = load %nyx_string*, %nyx_string** %t3705
  %t4069 = getelementptr [1 x i8], [1 x i8]* @.str450, i32 0, i32 0
  %t4070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %t4069, i64 0)
  %t4071 = call i1 @nyx_string_equals(%nyx_string* %t4068, %nyx_string* %t4070)
  %t4072 = xor i1 %t4071, true
  br i1 %t4072, label %then712, label %else713
then712:
  %t4073 = getelementptr [9 x i8], [9 x i8]* @.str451, i32 0, i32 0
  %t4074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %t4073, i64 8)
  %t4075 = load %nyx_string*, %nyx_string** %t3705
  %t4076 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4074, %nyx_string* %t4075)
  %t4077 = getelementptr [2 x i8], [2 x i8]* @.str452, i32 0, i32 0
  %t4078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %t4077, i64 1)
  %t4079 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4076, %nyx_string* %t4078)
  %t4080 = call i8* @nyx_string_to_cstr(%nyx_string* %t4079)
  %t4081 = call %nyx_string* @nyx_exec(i8* %t4080)
  br label %merge714
else713:
  br label %merge714
merge714:
  ret i64 0
else710:
  br label %merge711
merge711:
  %t4082 = load { i64, i8* }*, { i64, i8* }** %t4006
  %t4083 = load i64, i64* %t4011
  %t4084 = load i64, i64* %t4012
  %t4085 = call i64 @print_summary({ i64, i8* }* %t4082, i64 %t4083, i64 %t4084)
  %t4086 = load %nyx_string*, %nyx_string** %t3456
  %t4087 = call %nyx_string* @huella_compilador(%nyx_string* %t4086)
  store %nyx_string* %t4087, %nyx_string** %t4088
  %t4089 = load %nyx_string*, %nyx_string** %t3456
  %t4090 = call %nyx_string* @huella_resto(%nyx_string* %t4089)
  store %nyx_string* %t4090, %nyx_string** %t4091
  store i1 true, i1* %t4092
  %t4093 = load %nyx_string*, %nyx_string** %t4088
  %t4094 = load %nyx_string*, %nyx_string** %t3467
  %t4095 = call i1 @nyx_string_equals(%nyx_string* %t4093, %nyx_string* %t4094)
  %t4096 = xor i1 %t4095, true
  br i1 %t4096, label %sc_or_end716, label %sc_or_rhs715
sc_or_rhs715:
  %t4097 = load %nyx_string*, %nyx_string** %t4091
  %t4098 = load %nyx_string*, %nyx_string** %t3470
  %t4099 = call i1 @nyx_string_equals(%nyx_string* %t4097, %nyx_string* %t4098)
  %t4100 = xor i1 %t4099, true
  store i1 %t4100, i1* %t4092
  br label %sc_or_end716
sc_or_end716:
  %t4101 = load i1, i1* %t4092
  br i1 %t4101, label %then717, label %else718
then717:
  %t4102 = getelementptr [1 x i8], [1 x i8]* @.str453, i32 0, i32 0
  %t4103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %t4102, i64 0)
  %t4104 = call i8* @nyx_string_to_cstr(%nyx_string* %t4103)
  call void @nyx_print_string(i8* %t4104)
  %t4105 = getelementptr [48 x i8], [48 x i8]* @.str454, i32 0, i32 0
  %t4106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %t4105, i64 47)
  %t4107 = load %nyx_string*, %nyx_string** %t3456
  %t4108 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4106, %nyx_string* %t4107)
  %t4109 = getelementptr [2 x i8], [2 x i8]* @.str455, i32 0, i32 0
  %t4110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %t4109, i64 1)
  %t4111 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4108, %nyx_string* %t4110)
  %t4112 = call i8* @nyx_string_to_cstr(%nyx_string* %t4111)
  call void @nyx_print_string(i8* %t4112)
  %t4113 = load %nyx_string*, %nyx_string** %t4088
  %t4114 = load %nyx_string*, %nyx_string** %t3467
  %t4115 = call i1 @nyx_string_equals(%nyx_string* %t4113, %nyx_string* %t4114)
  %t4116 = xor i1 %t4115, true
  br i1 %t4116, label %then720, label %else721
then720:
  %t4117 = getelementptr [31 x i8], [31 x i8]* @.str456, i32 0, i32 0
  %t4118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %t4117, i64 30)
  %t4119 = load %nyx_string*, %nyx_string** %t3467
  %t4120 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4118, %nyx_string* %t4119)
  %t4121 = getelementptr [5 x i8], [5 x i8]* @.str457, i32 0, i32 0
  %t4122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %t4121, i64 4)
  %t4123 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4120, %nyx_string* %t4122)
  %t4124 = load %nyx_string*, %nyx_string** %t4088
  %t4125 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4123, %nyx_string* %t4124)
  %t4126 = call i8* @nyx_string_to_cstr(%nyx_string* %t4125)
  call void @nyx_print_string(i8* %t4126)
  br label %merge722
else721:
  %t4127 = getelementptr [53 x i8], [53 x i8]* @.str458, i32 0, i32 0
  %t4128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %t4127, i64 52)
  %t4129 = call i8* @nyx_string_to_cstr(%nyx_string* %t4128)
  call void @nyx_print_string(i8* %t4129)
  br label %merge722
merge722:
  %t4130 = getelementptr [71 x i8], [71 x i8]* @.str459, i32 0, i32 0
  %t4131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %t4130, i64 70)
  %t4132 = call i8* @nyx_string_to_cstr(%nyx_string* %t4131)
  call void @nyx_print_string(i8* %t4132)
  %t4133 = getelementptr [69 x i8], [69 x i8]* @.str460, i32 0, i32 0
  %t4134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %t4133, i64 68)
  %t4135 = call i8* @nyx_string_to_cstr(%nyx_string* %t4134)
  call void @nyx_print_string(i8* %t4135)
  br label %merge719
else718:
  br label %merge719
merge719:
  %t4136 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 5
  %t4137 = load i1, i1* %t4136
  br i1 %t4137, label %then723, label %else724
then723:
  %t4138 = load %nyx_string*, %nyx_string** %t3705
  %t4139 = load { i64, i8* }*, { i64, i8* }** %t4008
  %t4140 = load { i64, i8* }*, { i64, i8* }** %t4010
  %t4141 = load %nyx_string*, %nyx_string** %t3702
  %t4142 = getelementptr %TestConfig, %TestConfig* %t3485, i32 0, i32 6
  %t4143 = load i1, i1* %t4142
  %t4144 = call i64 @cov_report(%nyx_string* %t4138, { i64, i8* }* %t4139, { i64, i8* }* %t4140, %nyx_string* %t4141, i1 %t4143)
  %t4145 = getelementptr [9 x i8], [9 x i8]* @.str461, i32 0, i32 0
  %t4146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %t4145, i64 8)
  %t4147 = load %nyx_string*, %nyx_string** %t3705
  %t4148 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4146, %nyx_string* %t4147)
  %t4149 = getelementptr [2 x i8], [2 x i8]* @.str462, i32 0, i32 0
  %t4150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %t4149, i64 1)
  %t4151 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4148, %nyx_string* %t4150)
  %t4152 = call i8* @nyx_string_to_cstr(%nyx_string* %t4151)
  %t4153 = call %nyx_string* @nyx_exec(i8* %t4152)
  br label %merge725
else724:
  br label %merge725
merge725:
  store i64 0, i64* %t4154
  store i64 0, i64* %t4155
  br label %while_cond726
while_cond726:
  %t4156 = load i64, i64* %t4155
  %t4157 = load { i64, i8* }*, { i64, i8* }** %t4006
  %t4158 = call i64 @nyx_array_length({ i64, i8* }* %t4157)
  %t4159 = icmp slt i64 %t4156, %t4158
  br i1 %t4159, label %while_body727, label %while_end728
while_body727:
  %t4160 = load { i64, i8* }*, { i64, i8* }** %t4006
  %t4161 = load i64, i64* %t4155
  %t4162 = getelementptr [11 x i8], [11 x i8]* @.slotT463, i32 0, i32 0
  %t4163 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t4160, i64 %t4161, i8* %t4162)
  %t4164 = inttoptr i64 %t4163 to %TestResult*
  %t4165 = load %TestResult, %TestResult* %t4164
  store %TestResult %t4165, %TestResult* %t4166
  %t4167 = getelementptr %TestResult, %TestResult* %t4166, i32 0, i32 4
  %t4168 = load i1, i1* %t4167
  %t4169 = xor i1 %t4168, true
  br i1 %t4169, label %then729, label %else730
then729:
  %t4170 = load i64, i64* %t4154
  %t4171 = add i64 %t4170, 1
  store i64 %t4171, i64* %t4154
  br label %merge731
else730:
  br label %merge731
merge731:
  %t4172 = load i64, i64* %t4155
  %t4173 = add i64 %t4172, 1
  store i64 %t4173, i64* %t4155
  br label %while_cond726
while_end728:
  store i1 true, i1* %t4174
  %t4175 = load i64, i64* %t4012
  %t4176 = icmp sgt i64 %t4175, 0
  br i1 %t4176, label %sc_or_end733, label %sc_or_rhs732
sc_or_rhs732:
  %t4177 = load i64, i64* %t4154
  %t4178 = icmp sgt i64 %t4177, 0
  store i1 %t4178, i1* %t4174
  br label %sc_or_end733
sc_or_end733:
  %t4179 = load i1, i1* %t4174
  br i1 %t4179, label %then734, label %else735
then734:
  ret i64 1
else735:
  br label %merge736
merge736:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %t4180 = sub i64 0, 9223372036854775808
  store i64 %t4180, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

