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
@.str108 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [105 x i8] c"runtime/msgpack.c runtime/csv.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [1 x i8] c"\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [2 x i8] c"/\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [2 x i8] c"/\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [1 x i8] c"\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [1 x i8] c"\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [22 x i8] c"if nyx_rt_auto \22-O2\22 \00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [31 x i8] c"; then RT_IN=(\22$RT_AUTO\22); fi\0a\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [3 x i8] c"\22$\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [13 x i8] c"{RT_IN[@]}\22 \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [1 x i8] c"\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [1 x i8] c"\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [1 x i8] c"\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [1 x i8] c"\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [2 x i8] c"/\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [20 x i8] c" NYX_COVERAGE_MAP=\22\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [6 x i8] c".tsv\22\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [62 x i8] c"-fprofile-generate -Xclang -mllvm -Xclang -disable-preinline \00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [20 x i8] c"LLVM_PROFILE_FILE=\22\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [11 x i8] c".profraw\22 \00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [322 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22; return 0; }\0a\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [1 x i8] c"\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [1 x i8] c"\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [1 x i8] c"\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [2 x i8] c",\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [1 x i8] c"\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [1 x i8] c"\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [2 x i8] c",\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [1 x i8] c"\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [19 x i8] c" NYX_LIB_MODULES=\22\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [1 x i8] c"\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [2 x i8] c",\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [2 x i8] c",\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [2 x i8] c",\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [2 x i8] c",\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [16 x i8] c" NYX_LIB_SELF=\22\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [2 x i8] c" \00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [2 x i8] c"=\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [23 x i8] c" ./nyx_bootstrap ) > \22\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [38 x i8] c"\22 2>&1 || { rc=$?; nyx_pista $rc >> \22\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [14 x i8] c"\22; exit 1; }\0a\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [15 x i8] c"trap 'rm -rf \22\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [27 x i8] c"\22; exit 130' INT TERM HUP\0a\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [16 x i8] c"SRC=\22$(mktemp \22\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [10 x i8] c"test_src_\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [5 x i8] c"\22)\22\0a\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [2 x i8] c"/\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [5 x i8] c"-o \22\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [8 x i8] c"\22 2>> \22\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [8 x i8] c"\22 2>&1\0a\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [1 x i8] c"\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [3 x i8] c" (\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [3 x i8] c" (\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [1 x i8] c"\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str217.c = internal global %nyx_string* null
@.slotT218 = private unnamed_addr constant [11 x i8] c"TestResult\00"
@.str219 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [9 x i8] c"version \00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [1 x i8] c"\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [1 x i8] c"\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [1 x i8] c"\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [1 x i8] c"\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [2 x i8] c"0\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [1 x i8] c"\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [3 x i8] c"  \00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [4 x i8] c"   \00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [2 x i8] c":\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [2 x i8] c";\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [1 x i8] c"\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"[\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [2 x i8] c"]\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c",\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"1\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [4 x i8] c"src\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [1 x i8] c"\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [1 x i8] c"\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [1 x i8] c"\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [2 x i8] c"/\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [2 x i8] c"1\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [2 x i8] c"/\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [1 x i8] c"\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [2 x i8] c"1\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [6 x i8] c"async\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [5 x i8] c"main\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [3 x i8] c"no\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [3 x i8] c"si\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [1 x i8] c"\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [1 x i8] c"\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [2 x i8] c"0\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [3 x i8] c"si\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [2 x i8] c"1\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [5 x i8] c"    \00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [2 x i8] c":\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [2 x i8] c" \00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [2 x i8] c",\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [3 x i8] c"  \00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [3 x i8] c": \00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [2 x i8] c"/\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [3 x i8] c" (\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [5 x i8] c"    \00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [2 x i8] c"/\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [66 x i8] c"\22 2>/dev/null && sha256sum nyx_bootstrap 2>/dev/null | cut -c1-12\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [74 x i8] c"\22 2>/dev/null && cat std/*.nx runtime/*.c runtime/*.h 2>/dev/null | cksum\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [18 x i8] c"  compiler: nyx v\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [17 x i8] c" (nyx_bootstrap \00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [2 x i8] c")\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [1 x i8] c"\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [2 x i8] c" \00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [2 x i8] c"-\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [1 x i8] c"\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [1 x i8] c"\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [1 x i8] c"\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [1 x i8] c"\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [1 x i8] c"\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [12 x i8] c"mktemp -d \22\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [5 x i8] c"cov_\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [1 x i8] c"\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [1 x i8] c"\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [1 x i8] c"\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [2 x i8] c"/\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [1 x i8] c"\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [1 x i8] c"\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [1 x i8] c"\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [1 x i8] c"\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [9 x i8] c"mktemp \22\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [11 x i8] c"test_libs_\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [1 x i8] c"\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [1 x i8] c"\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [1 x i8] c"\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [48 x i8] c"  ⚠ EL TOOLCHAIN CAMBIÓ DURANTE LA CORRIDA (\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [2 x i8] c")\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [31 x i8] c"    compilador: nyx_bootstrap \00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [53 x i8] c"    compilador igual; cambió la stdlib o el runtime\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [71 x i8] c"    Algunos archivos se probaron con una versión y otros con la otra:\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [69 x i8] c"    este resultado no sirve para integrar. Vuelve a correr la suite.\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str459.c = internal global %nyx_string* null
@.slotT460 = private unnamed_addr constant [11 x i8] c"TestResult\00"
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
declare i64 @nyx_slot_eq({ i64, i8* }*, i64, { i64, i8* }*, i64)
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

define internal %nyx_string* @tmp_base(
) {
  %1294 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %1295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1294, i64 6)
  %1296 = call i8* @nyx_string_to_cstr(%nyx_string* %1295)
  %1297 = call %nyx_string* @nyx_getenv(i8* %1296)
  %1298 = alloca %nyx_string*
  store %nyx_string* %1297, %nyx_string** %1298
  %1299 = call i8* @llvm.stacksave()
  br label %while_cond312
while_cond312:
  %1300 = alloca i1
  store i1 false, i1* %1300
  %1301 = load %nyx_string*, %nyx_string** %1298
  %1302 = call i64 @nyx_string_byte_length(%nyx_string* %1301)
  %1303 = icmp sgt i64 %1302, 1
  br i1 %1303, label %sc_and_rhs315, label %sc_and_end316
sc_and_rhs315:
  %1304 = load %nyx_string*, %nyx_string** %1298
  %1305 = getelementptr [2 x i8], [2 x i8]* @.str69, i32 0, i32 0
  %1306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1305, i64 1)
  %1307 = call i1 @nyx_string_ends_with(%nyx_string* %1304, %nyx_string* %1306)
  store i1 %1307, i1* %1300
  br label %sc_and_end316
sc_and_end316:
  %1308 = load i1, i1* %1300
  br i1 %1308, label %while_body313, label %while_end314
while_body313:
  call void @llvm.stackrestore(i8* %1299)
  %1309 = load %nyx_string*, %nyx_string** %1298
  %1310 = load %nyx_string*, %nyx_string** %1298
  %1311 = call i64 @nyx_string_byte_length(%nyx_string* %1310)
  %1312 = sub i64 %1311, 1
  %1313 = call %nyx_string* @nyx_string_substring(%nyx_string* %1309, i64 0, i64 %1312)
  store %nyx_string* %1313, %nyx_string** %1298
  br label %while_cond312
while_end314:
  %1314 = load %nyx_string*, %nyx_string** %1298
  %1315 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %1316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1315, i64 0)
  %1317 = call i1 @nyx_string_equals(%nyx_string* %1314, %nyx_string* %1316)
  br i1 %1317, label %then317, label %else318
then317:
  %1318 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %1319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1318, i64 4)
  ret %nyx_string* %1319
else318:
  br label %merge319
merge319:
  %1320 = load %nyx_string*, %nyx_string** %1298
  ret %nyx_string* %1320
}

define internal %nyx_string* @tmp_plantilla(
%nyx_string* %kind.param) {
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %1321 = call %nyx_string* @tmp_base()
  %1322 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %1323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1322, i64 5)
  %1324 = call %nyx_string* @nyx_string_concat(%nyx_string* %1321, %nyx_string* %1323)
  %1325 = load %nyx_string*, %nyx_string** %kind.ptr
  %1326 = call %nyx_string* @nyx_string_concat(%nyx_string* %1324, %nyx_string* %1325)
  %1327 = call i64 @nyx_getpid()
  %1328 = call %nyx_string* @nyx_string_from_int(i64 %1327)
  %1329 = call %nyx_string* @nyx_string_concat(%nyx_string* %1326, %nyx_string* %1328)
  %1330 = getelementptr [8 x i8], [8 x i8]* @.str73, i32 0, i32 0
  %1331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1330, i64 7)
  %1332 = call %nyx_string* @nyx_string_concat(%nyx_string* %1329, %nyx_string* %1331)
  ret %nyx_string* %1332
}

define internal i64 @barrer_huerfanos(
%nyx_string* %base.param) {
  %base.ptr = alloca %nyx_string*
  store %nyx_string* %base.param, %nyx_string** %base.ptr
  %1333 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %1334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1333, i64 6)
  %1335 = load %nyx_string*, %nyx_string** %base.ptr
  %1336 = call %nyx_string* @nyx_string_concat(%nyx_string* %1334, %nyx_string* %1335)
  %1337 = getelementptr [29 x i8], [29 x i8]* @.str75, i32 0, i32 0
  %1338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1337, i64 28)
  %1339 = call %nyx_string* @nyx_string_concat(%nyx_string* %1336, %nyx_string* %1338)
  %1340 = getelementptr [36 x i8], [36 x i8]* @.str76, i32 0, i32 0
  %1341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1340, i64 35)
  %1342 = call %nyx_string* @nyx_string_concat(%nyx_string* %1339, %nyx_string* %1341)
  %1343 = getelementptr [118 x i8], [118 x i8]* @.str77, i32 0, i32 0
  %1344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1343, i64 117)
  %1345 = call %nyx_string* @nyx_string_concat(%nyx_string* %1342, %nyx_string* %1344)
  %1346 = getelementptr [27 x i8], [27 x i8]* @.str78, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1346, i64 26)
  %1348 = call %nyx_string* @nyx_string_concat(%nyx_string* %1345, %nyx_string* %1347)
  %1349 = getelementptr [6 x i8], [6 x i8]* @.str79, i32 0, i32 0
  %1350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1349, i64 5)
  %1351 = call %nyx_string* @nyx_string_concat(%nyx_string* %1348, %nyx_string* %1350)
  %1352 = getelementptr [9 x i8], [9 x i8]* @.str80, i32 0, i32 0
  %1353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1352, i64 8)
  %1354 = call %nyx_string* @nyx_string_concat(%nyx_string* %1351, %nyx_string* %1353)
  %1355 = getelementptr [16 x i8], [16 x i8]* @.str81, i32 0, i32 0
  %1356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1355, i64 15)
  %1357 = call %nyx_string* @nyx_string_concat(%nyx_string* %1354, %nyx_string* %1356)
  %1358 = getelementptr [50 x i8], [50 x i8]* @.str82, i32 0, i32 0
  %1359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1358, i64 49)
  %1360 = call %nyx_string* @nyx_string_concat(%nyx_string* %1357, %nyx_string* %1359)
  %1361 = getelementptr [89 x i8], [89 x i8]* @.str83, i32 0, i32 0
  %1362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1361, i64 88)
  %1363 = call %nyx_string* @nyx_string_concat(%nyx_string* %1360, %nyx_string* %1362)
  %1364 = getelementptr [36 x i8], [36 x i8]* @.str84, i32 0, i32 0
  %1365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1364, i64 35)
  %1366 = call %nyx_string* @nyx_string_concat(%nyx_string* %1363, %nyx_string* %1365)
  %1367 = getelementptr [20 x i8], [20 x i8]* @.str85, i32 0, i32 0
  %1368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1367, i64 19)
  %1369 = call %nyx_string* @nyx_string_concat(%nyx_string* %1366, %nyx_string* %1368)
  %1370 = getelementptr [8 x i8], [8 x i8]* @.str86, i32 0, i32 0
  %1371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1370, i64 7)
  %1372 = call %nyx_string* @nyx_string_concat(%nyx_string* %1369, %nyx_string* %1371)
  %1373 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %1374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1373, i64 5)
  %1375 = call %nyx_string* @nyx_string_concat(%nyx_string* %1372, %nyx_string* %1374)
  %1376 = getelementptr [12 x i8], [12 x i8]* @.str88, i32 0, i32 0
  %1377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1376, i64 11)
  %1378 = call %nyx_string* @nyx_string_concat(%nyx_string* %1375, %nyx_string* %1377)
  %1379 = getelementptr [9 x i8], [9 x i8]* @.str89, i32 0, i32 0
  %1380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1379, i64 8)
  %1381 = call %nyx_string* @nyx_string_concat(%nyx_string* %1378, %nyx_string* %1380)
  %1382 = getelementptr [45 x i8], [45 x i8]* @.str90, i32 0, i32 0
  %1383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1382, i64 44)
  %1384 = call %nyx_string* @nyx_string_concat(%nyx_string* %1381, %nyx_string* %1383)
  %1385 = getelementptr [71 x i8], [71 x i8]* @.str91, i32 0, i32 0
  %1386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1385, i64 70)
  %1387 = call %nyx_string* @nyx_string_concat(%nyx_string* %1384, %nyx_string* %1386)
  %1388 = getelementptr [15 x i8], [15 x i8]* @.str92, i32 0, i32 0
  %1389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1388, i64 14)
  %1390 = call %nyx_string* @nyx_string_concat(%nyx_string* %1387, %nyx_string* %1389)
  %1391 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %1392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1391, i64 5)
  %1393 = call %nyx_string* @nyx_string_concat(%nyx_string* %1390, %nyx_string* %1392)
  %1394 = alloca %nyx_string*
  store %nyx_string* %1393, %nyx_string** %1394
  %1395 = load %nyx_string*, %nyx_string** %1394
  %1396 = call i8* @nyx_string_to_cstr(%nyx_string* %1395)
  %1397 = call i64 @nyx_exec_code(i8* %1396)
  ret i64 %1397
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
  %1398 = getelementptr [9 x i8], [9 x i8]* @.str94, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1398, i64 8)
  %1400 = call i8* @nyx_string_to_cstr(%nyx_string* %1399)
  %1401 = call %nyx_string* @nyx_getenv(i8* %1400)
  %1402 = alloca %nyx_string*
  store %nyx_string* %1401, %nyx_string** %1402
  %1403 = load %nyx_string*, %nyx_string** %1402
  %1404 = getelementptr [1 x i8], [1 x i8]* @.str95, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1404, i64 0)
  %1406 = call i1 @nyx_string_equals(%nyx_string* %1403, %nyx_string* %1405)
  br i1 %1406, label %then320, label %else321
then320:
  %1407 = getelementptr %TestResult, %TestResult* null, i32 1
  %1408 = ptrtoint %TestResult* %1407 to i64
  %1409 = call i8* @GC_malloc(i64 %1408)
  %1410 = bitcast i8* %1409 to %TestResult*
  %1411 = load %nyx_string*, %nyx_string** %file.ptr
  %1412 = getelementptr %TestResult, %TestResult* %1410, i32 0, i32 0
  store %nyx_string* %1411, %nyx_string** %1412
  %1413 = getelementptr %TestResult, %TestResult* %1410, i32 0, i32 1
  store i64 0, i64* %1413
  %1414 = getelementptr %TestResult, %TestResult* %1410, i32 0, i32 2
  store i64 0, i64* %1414
  %1415 = getelementptr [24 x i8], [24 x i8]* @.str96, i32 0, i32 0
  %1416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1415, i64 23)
  %1417 = getelementptr %TestResult, %TestResult* %1410, i32 0, i32 3
  store %nyx_string* %1416, %nyx_string** %1417
  %1418 = getelementptr %TestResult, %TestResult* %1410, i32 0, i32 4
  store i1 0, i1* %1418
  %1419 = load %TestResult, %TestResult* %1410
  ret %TestResult %1419
else321:
  br label %merge322
merge322:
  %1420 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1420, i64 3)
  %1422 = call i8* @nyx_string_to_cstr(%nyx_string* %1421)
  %1423 = call %nyx_string* @nyx_getenv(i8* %1422)
  %1424 = alloca %nyx_string*
  store %nyx_string* %1423, %nyx_string** %1424
  %1425 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1426 = load i64, i64* %1425
  %1427 = call %nyx_string* @nyx_string_from_int(i64 %1426)
  %1428 = alloca %nyx_string*
  store %nyx_string* %1427, %nyx_string** %1428
  %1429 = getelementptr [12 x i8], [12 x i8]* @.str98, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1429, i64 11)
  %1431 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1431, i64 5)
  %1433 = call %nyx_string* @tmp_plantilla(%nyx_string* %1432)
  %1434 = call %nyx_string* @nyx_string_concat(%nyx_string* %1430, %nyx_string* %1433)
  %1435 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %1436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1435, i64 1)
  %1437 = call %nyx_string* @nyx_string_concat(%nyx_string* %1434, %nyx_string* %1436)
  %1438 = call i8* @nyx_string_to_cstr(%nyx_string* %1437)
  %1439 = call %nyx_string* @nyx_exec(i8* %1438)
  %1440 = call %nyx_string* @nyx_string_trim(%nyx_string* %1439)
  %1441 = alloca %nyx_string*
  store %nyx_string* %1440, %nyx_string** %1441
  %1442 = load %nyx_string*, %nyx_string** %1441
  %1443 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1443, i64 0)
  %1445 = call i1 @nyx_string_equals(%nyx_string* %1442, %nyx_string* %1444)
  br i1 %1445, label %then323, label %else324
then323:
  %1446 = getelementptr %TestResult, %TestResult* null, i32 1
  %1447 = ptrtoint %TestResult* %1446 to i64
  %1448 = call i8* @GC_malloc(i64 %1447)
  %1449 = bitcast i8* %1448 to %TestResult*
  %1450 = load %nyx_string*, %nyx_string** %file.ptr
  %1451 = getelementptr %TestResult, %TestResult* %1449, i32 0, i32 0
  store %nyx_string* %1450, %nyx_string** %1451
  %1452 = getelementptr %TestResult, %TestResult* %1449, i32 0, i32 1
  store i64 0, i64* %1452
  %1453 = getelementptr %TestResult, %TestResult* %1449, i32 0, i32 2
  store i64 0, i64* %1453
  %1454 = getelementptr [51 x i8], [51 x i8]* @.str102, i32 0, i32 0
  %1455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1454, i64 50)
  %1456 = call %nyx_string* @tmp_base()
  %1457 = call %nyx_string* @nyx_string_concat(%nyx_string* %1455, %nyx_string* %1456)
  %1458 = getelementptr [10 x i8], [10 x i8]* @.str103, i32 0, i32 0
  %1459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1458, i64 9)
  %1460 = call %nyx_string* @nyx_string_concat(%nyx_string* %1457, %nyx_string* %1459)
  %1461 = getelementptr %TestResult, %TestResult* %1449, i32 0, i32 3
  store %nyx_string* %1460, %nyx_string** %1461
  %1462 = getelementptr %TestResult, %TestResult* %1449, i32 0, i32 4
  store i1 0, i1* %1462
  %1463 = load %TestResult, %TestResult* %1449
  ret %TestResult %1463
else324:
  br label %merge325
merge325:
  %1464 = load %nyx_string*, %nyx_string** %1441
  %1465 = getelementptr [9 x i8], [9 x i8]* @.str104, i32 0, i32 0
  %1466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1465, i64 8)
  %1467 = call %nyx_string* @nyx_string_concat(%nyx_string* %1464, %nyx_string* %1466)
  %1468 = alloca %nyx_string*
  store %nyx_string* %1467, %nyx_string** %1468
  %1469 = load %nyx_string*, %nyx_string** %1441
  %1470 = getelementptr [5 x i8], [5 x i8]* @.str105, i32 0, i32 0
  %1471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1470, i64 4)
  %1472 = call %nyx_string* @nyx_string_concat(%nyx_string* %1469, %nyx_string* %1471)
  %1473 = alloca %nyx_string*
  store %nyx_string* %1472, %nyx_string** %1473
  %1474 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %1475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1474, i64 0)
  %1476 = alloca %nyx_string*
  store %nyx_string* %1475, %nyx_string** %1476
  %1477 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1478 = load i1, i1* %1477
  br i1 %1478, label %then326, label %else327
then326:
  %1479 = getelementptr [5 x i8], [5 x i8]* @.str107, i32 0, i32 0
  %1480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1479, i64 4)
  store %nyx_string* %1480, %nyx_string** %1476
  br label %merge328
else327:
  br label %merge328
merge328:
  %1481 = getelementptr [62 x i8], [62 x i8]* @.str108, i32 0, i32 0
  %1482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1481, i64 61)
  %1483 = getelementptr [54 x i8], [54 x i8]* @.str109, i32 0, i32 0
  %1484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1483, i64 53)
  %1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %1482, %nyx_string* %1484)
  %1486 = getelementptr [48 x i8], [48 x i8]* @.str110, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1486, i64 47)
  %1488 = call %nyx_string* @nyx_string_concat(%nyx_string* %1485, %nyx_string* %1487)
  %1489 = getelementptr [47 x i8], [47 x i8]* @.str111, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1489, i64 46)
  %1491 = call %nyx_string* @nyx_string_concat(%nyx_string* %1488, %nyx_string* %1490)
  %1492 = getelementptr [67 x i8], [67 x i8]* @.str112, i32 0, i32 0
  %1493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1492, i64 66)
  %1494 = call %nyx_string* @nyx_string_concat(%nyx_string* %1491, %nyx_string* %1493)
  %1495 = getelementptr [51 x i8], [51 x i8]* @.str113, i32 0, i32 0
  %1496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1495, i64 50)
  %1497 = call %nyx_string* @nyx_string_concat(%nyx_string* %1494, %nyx_string* %1496)
  %1498 = getelementptr [105 x i8], [105 x i8]* @.str114, i32 0, i32 0
  %1499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1498, i64 104)
  %1500 = call %nyx_string* @nyx_string_concat(%nyx_string* %1497, %nyx_string* %1499)
  %1501 = getelementptr [23 x i8], [23 x i8]* @.str115, i32 0, i32 0
  %1502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1501, i64 22)
  %1503 = call %nyx_string* @nyx_string_concat(%nyx_string* %1500, %nyx_string* %1502)
  %1504 = alloca %nyx_string*
  store %nyx_string* %1503, %nyx_string** %1504
  %1505 = getelementptr [15 x i8], [15 x i8]* @.str116, i32 0, i32 0
  %1506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1505, i64 14)
  %1507 = call i8* @nyx_string_to_cstr(%nyx_string* %1506)
  %1508 = call %nyx_string* @nyx_getenv(i8* %1507)
  %1509 = alloca %nyx_string*
  store %nyx_string* %1508, %nyx_string** %1509
  %1510 = alloca i1
  store i1 false, i1* %1510
  %1511 = load %nyx_string*, %nyx_string** %1509
  %1512 = getelementptr [1 x i8], [1 x i8]* @.str117, i32 0, i32 0
  %1513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1512, i64 0)
  %1514 = call i1 @nyx_string_equals(%nyx_string* %1511, %nyx_string* %1513)
  %1515 = xor i1 %1514, true
  br i1 %1515, label %sc_and_rhs329, label %sc_and_end330
sc_and_rhs329:
  %1516 = load %nyx_string*, %nyx_string** %1509
  %1517 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1517, i64 1)
  %1519 = call i1 @nyx_string_starts_with(%nyx_string* %1516, %nyx_string* %1518)
  %1520 = xor i1 %1519, true
  store i1 %1520, i1* %1510
  br label %sc_and_end330
sc_and_end330:
  %1521 = load i1, i1* %1510
  br i1 %1521, label %then331, label %else332
then331:
  %1522 = load %nyx_string*, %nyx_string** %1424
  %1523 = getelementptr [2 x i8], [2 x i8]* @.str119, i32 0, i32 0
  %1524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1523, i64 1)
  %1525 = call %nyx_string* @nyx_string_concat(%nyx_string* %1522, %nyx_string* %1524)
  %1526 = load %nyx_string*, %nyx_string** %1509
  %1527 = call %nyx_string* @nyx_string_concat(%nyx_string* %1525, %nyx_string* %1526)
  store %nyx_string* %1527, %nyx_string** %1509
  br label %merge333
else332:
  br label %merge333
merge333:
  %1528 = getelementptr [8 x i8], [8 x i8]* @.str120, i32 0, i32 0
  %1529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1528, i64 7)
  %1530 = load %nyx_string*, %nyx_string** %1504
  %1531 = call %nyx_string* @nyx_string_concat(%nyx_string* %1529, %nyx_string* %1530)
  %1532 = getelementptr [3 x i8], [3 x i8]* @.str121, i32 0, i32 0
  %1533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1532, i64 2)
  %1534 = call %nyx_string* @nyx_string_concat(%nyx_string* %1531, %nyx_string* %1533)
  %1535 = alloca %nyx_string*
  store %nyx_string* %1534, %nyx_string** %1535
  %1536 = alloca i1
  store i1 false, i1* %1536
  %1537 = load %nyx_string*, %nyx_string** %1509
  %1538 = getelementptr [1 x i8], [1 x i8]* @.str122, i32 0, i32 0
  %1539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1538, i64 0)
  %1540 = call i1 @nyx_string_equals(%nyx_string* %1537, %nyx_string* %1539)
  %1541 = xor i1 %1540, true
  br i1 %1541, label %sc_and_rhs334, label %sc_and_end335
sc_and_rhs334:
  %1542 = load %nyx_string*, %nyx_string** %1509
  %1543 = call i8* @nyx_string_to_cstr(%nyx_string* %1542)
  %1544 = call i1 @nyx_file_exists(i8* %1543)
  store i1 %1544, i1* %1536
  br label %sc_and_end335
sc_and_end335:
  %1545 = load i1, i1* %1536
  br i1 %1545, label %then336, label %else337
then336:
  %1546 = getelementptr [9 x i8], [9 x i8]* @.str123, i32 0, i32 0
  %1547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1546, i64 8)
  %1548 = load %nyx_string*, %nyx_string** %1509
  %1549 = call %nyx_string* @nyx_string_concat(%nyx_string* %1547, %nyx_string* %1548)
  %1550 = getelementptr [4 x i8], [4 x i8]* @.str124, i32 0, i32 0
  %1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1550, i64 3)
  %1552 = call %nyx_string* @nyx_string_concat(%nyx_string* %1549, %nyx_string* %1551)
  store %nyx_string* %1552, %nyx_string** %1535
  br label %merge338
else337:
  %1553 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1554 = getelementptr [1 x i8], [1 x i8]* @.str125, i32 0, i32 0
  %1555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1554, i64 0)
  %1556 = call i1 @nyx_string_equals(%nyx_string* %1553, %nyx_string* %1555)
  br i1 %1556, label %then339, label %else340
then339:
  %1557 = call %nyx_string* @rt_cache_sh()
  %1558 = load %nyx_string*, %nyx_string** %1535
  %1559 = call %nyx_string* @nyx_string_concat(%nyx_string* %1557, %nyx_string* %1558)
  %1560 = getelementptr [22 x i8], [22 x i8]* @.str126, i32 0, i32 0
  %1561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1560, i64 21)
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1559, %nyx_string* %1561)
  %1563 = load %nyx_string*, %nyx_string** %1504
  %1564 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1563)
  %1565 = getelementptr [31 x i8], [31 x i8]* @.str127, i32 0, i32 0
  %1566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1565, i64 30)
  %1567 = call %nyx_string* @nyx_string_concat(%nyx_string* %1564, %nyx_string* %1566)
  store %nyx_string* %1567, %nyx_string** %1535
  br label %merge341
else340:
  br label %merge341
merge341:
  br label %merge338
merge338:
  %1568 = getelementptr [3 x i8], [3 x i8]* @.str128, i32 0, i32 0
  %1569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1568, i64 2)
  %1570 = getelementptr [13 x i8], [13 x i8]* @.str129, i32 0, i32 0
  %1571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1570, i64 12)
  %1572 = call %nyx_string* @nyx_string_concat(%nyx_string* %1569, %nyx_string* %1571)
  store %nyx_string* %1572, %nyx_string** %1504
  %1573 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %1574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1573, i64 0)
  %1575 = alloca %nyx_string*
  store %nyx_string* %1574, %nyx_string** %1575
  %1576 = getelementptr [1 x i8], [1 x i8]* @.str131, i32 0, i32 0
  %1577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1576, i64 0)
  %1578 = alloca %nyx_string*
  store %nyx_string* %1577, %nyx_string** %1578
  %1579 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %1580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1579, i64 0)
  %1581 = alloca %nyx_string*
  store %nyx_string* %1580, %nyx_string** %1581
  %1582 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1583 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1583, i64 0)
  %1585 = call i1 @nyx_string_equals(%nyx_string* %1582, %nyx_string* %1584)
  %1586 = xor i1 %1585, true
  br i1 %1586, label %then342, label %else343
then342:
  %1587 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1588 = getelementptr [2 x i8], [2 x i8]* @.str134, i32 0, i32 0
  %1589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1588, i64 1)
  %1590 = call %nyx_string* @nyx_string_concat(%nyx_string* %1587, %nyx_string* %1589)
  %1591 = load i64, i64* %cov_idx.ptr
  %1592 = call %nyx_string* @nyx_string_from_int(i64 %1591)
  %1593 = call %nyx_string* @nyx_string_concat(%nyx_string* %1590, %nyx_string* %1592)
  %1594 = alloca %nyx_string*
  store %nyx_string* %1593, %nyx_string** %1594
  %1595 = getelementptr [20 x i8], [20 x i8]* @.str135, i32 0, i32 0
  %1596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1595, i64 19)
  %1597 = load %nyx_string*, %nyx_string** %1594
  %1598 = call %nyx_string* @nyx_string_concat(%nyx_string* %1596, %nyx_string* %1597)
  %1599 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %1600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1599, i64 5)
  %1601 = call %nyx_string* @nyx_string_concat(%nyx_string* %1598, %nyx_string* %1600)
  store %nyx_string* %1601, %nyx_string** %1575
  %1602 = getelementptr [62 x i8], [62 x i8]* @.str137, i32 0, i32 0
  %1603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1602, i64 61)
  store %nyx_string* %1603, %nyx_string** %1578
  %1604 = getelementptr [20 x i8], [20 x i8]* @.str138, i32 0, i32 0
  %1605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1604, i64 19)
  %1606 = load %nyx_string*, %nyx_string** %1594
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1606)
  %1608 = getelementptr [11 x i8], [11 x i8]* @.str139, i32 0, i32 0
  %1609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1608, i64 10)
  %1610 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1609)
  store %nyx_string* %1610, %nyx_string** %1581
  br label %merge344
else343:
  br label %merge344
merge344:
  %1611 = getelementptr [20 x i8], [20 x i8]* @.str140, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1611, i64 19)
  %1613 = getelementptr [180 x i8], [180 x i8]* @.str141, i32 0, i32 0
  %1614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1613, i64 179)
  %1615 = call %nyx_string* @nyx_string_concat(%nyx_string* %1612, %nyx_string* %1614)
  %1616 = getelementptr [322 x i8], [322 x i8]* @.str142, i32 0, i32 0
  %1617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1616, i64 321)
  %1618 = call %nyx_string* @nyx_string_concat(%nyx_string* %1615, %nyx_string* %1617)
  %1619 = alloca %nyx_string*
  store %nyx_string* %1618, %nyx_string** %1619
  %1620 = load %nyx_string*, %nyx_string** %file.ptr
  %1621 = call %nyx_string* @lib_modulo_de(%nyx_string* %1620)
  %1622 = alloca %nyx_string*
  store %nyx_string* %1621, %nyx_string** %1622
  %1623 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %1624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1623, i64 0)
  %1625 = alloca %nyx_string*
  store %nyx_string* %1624, %nyx_string** %1625
  %1626 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %1627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1626, i64 0)
  %1628 = alloca %nyx_string*
  store %nyx_string* %1627, %nyx_string** %1628
  %1629 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1630 = load %nyx_string*, %nyx_string** %1629
  %1631 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %1632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1631, i64 0)
  %1633 = call i1 @nyx_string_equals(%nyx_string* %1630, %nyx_string* %1632)
  %1634 = xor i1 %1633, true
  br i1 %1634, label %then345, label %else346
then345:
  %1635 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1636 = load %nyx_string*, %nyx_string** %1635
  %1637 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1638 = load %nyx_string*, %nyx_string** %1637
  %1639 = getelementptr [2 x i8], [2 x i8]* @.str146, i32 0, i32 0
  %1640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1639, i64 1)
  %1641 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1638, %nyx_string* %1640)
  %1642 = alloca { i64, i8* }*
  store { i64, i8* }* %1641, { i64, i8* }** %1642
  %1643 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %1644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1643, i64 0)
  %1645 = alloca %nyx_string*
  store %nyx_string* %1644, %nyx_string** %1645
  %1646 = alloca i64
  store i64 0, i64* %1646
  %1647 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %1648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1647, i64 0)
  %1649 = alloca %nyx_string*
  store %nyx_string* %1648, %nyx_string** %1649
  %1650 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %1651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1650, i64 1)
  %1652 = alloca %nyx_string*
  store %nyx_string* %1651, %nyx_string** %1652
  %1653 = call i8* @llvm.stacksave()
  br label %while_cond348
while_cond348:
  %1654 = load i64, i64* %1646
  %1655 = load { i64, i8* }*, { i64, i8* }** %1642
  %1656 = call i64 @nyx_array_length({ i64, i8* }* %1655)
  %1657 = icmp slt i64 %1654, %1656
  br i1 %1657, label %while_body349, label %while_end350
while_body349:
  call void @llvm.stackrestore(i8* %1653)
  %1658 = load { i64, i8* }*, { i64, i8* }** %1642
  %1659 = load i64, i64* %1646
  %1660 = call i64 @nyx_array_get_checked({ i64, i8* }* %1658, i64 %1659, i64 2)
  %1661 = inttoptr i64 %1660 to %nyx_string*
  %1662 = alloca %nyx_string*
  store %nyx_string* %1661, %nyx_string** %1662
  %1663 = alloca i1
  store i1 false, i1* %1663
  %1664 = load %nyx_string*, %nyx_string** %1662
  %1665 = load %nyx_string*, %nyx_string** %1649
  %1666 = call i1 @nyx_string_equals(%nyx_string* %1664, %nyx_string* %1665)
  %1667 = xor i1 %1666, true
  br i1 %1667, label %sc_and_rhs351, label %sc_and_end352
sc_and_rhs351:
  %1668 = load %nyx_string*, %nyx_string** %1662
  %1669 = load %nyx_string*, %nyx_string** %1622
  %1670 = call i1 @nyx_string_equals(%nyx_string* %1668, %nyx_string* %1669)
  %1671 = xor i1 %1670, true
  store i1 %1671, i1* %1663
  br label %sc_and_end352
sc_and_end352:
  %1672 = load i1, i1* %1663
  br i1 %1672, label %then353, label %else354
then353:
  %1673 = load %nyx_string*, %nyx_string** %1645
  %1674 = load %nyx_string*, %nyx_string** %1649
  %1675 = call i1 @nyx_string_equals(%nyx_string* %1673, %nyx_string* %1674)
  %1676 = xor i1 %1675, true
  br i1 %1676, label %then356, label %else357
then356:
  %1677 = load %nyx_string*, %nyx_string** %1645
  %1678 = load %nyx_string*, %nyx_string** %1652
  %1679 = call %nyx_string* @nyx_string_concat(%nyx_string* %1677, %nyx_string* %1678)
  store %nyx_string* %1679, %nyx_string** %1645
  br label %merge358
else357:
  br label %merge358
merge358:
  %1680 = load %nyx_string*, %nyx_string** %1645
  %1681 = load %nyx_string*, %nyx_string** %1662
  %1682 = call %nyx_string* @nyx_string_concat(%nyx_string* %1680, %nyx_string* %1681)
  store %nyx_string* %1682, %nyx_string** %1645
  br label %merge355
else354:
  br label %merge355
merge355:
  %1683 = load i64, i64* %1646
  %1684 = add i64 %1683, 1
  store i64 %1684, i64* %1646
  br label %while_cond348
while_end350:
  %1685 = load %nyx_string*, %nyx_string** %1645
  %1686 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1686, i64 0)
  %1688 = call i1 @nyx_string_equals(%nyx_string* %1685, %nyx_string* %1687)
  %1689 = xor i1 %1688, true
  br i1 %1689, label %then359, label %else360
then359:
  %1690 = getelementptr [19 x i8], [19 x i8]* @.str151, i32 0, i32 0
  %1691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1690, i64 18)
  %1692 = load %nyx_string*, %nyx_string** %1645
  %1693 = call %nyx_string* @nyx_string_concat(%nyx_string* %1691, %nyx_string* %1692)
  %1694 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1694, i64 1)
  %1696 = call %nyx_string* @nyx_string_concat(%nyx_string* %1693, %nyx_string* %1695)
  store %nyx_string* %1696, %nyx_string** %1625
  br label %merge361
else360:
  br label %merge361
merge361:
  %1697 = alloca i1
  store i1 false, i1* %1697
  %1698 = load %nyx_string*, %nyx_string** %1622
  %1699 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %1700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1699, i64 0)
  %1701 = call i1 @nyx_string_equals(%nyx_string* %1698, %nyx_string* %1700)
  %1702 = xor i1 %1701, true
  br i1 %1702, label %sc_and_rhs362, label %sc_and_end363
sc_and_rhs362:
  %1703 = getelementptr [2 x i8], [2 x i8]* @.str154, i32 0, i32 0
  %1704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1703, i64 1)
  %1705 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1706 = load %nyx_string*, %nyx_string** %1705
  %1707 = call %nyx_string* @nyx_string_concat(%nyx_string* %1704, %nyx_string* %1706)
  %1708 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1708, i64 1)
  %1710 = call %nyx_string* @nyx_string_concat(%nyx_string* %1707, %nyx_string* %1709)
  %1711 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1711, i64 1)
  %1713 = load %nyx_string*, %nyx_string** %1622
  %1714 = call %nyx_string* @nyx_string_concat(%nyx_string* %1712, %nyx_string* %1713)
  %1715 = getelementptr [2 x i8], [2 x i8]* @.str157, i32 0, i32 0
  %1716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1715, i64 1)
  %1717 = call %nyx_string* @nyx_string_concat(%nyx_string* %1714, %nyx_string* %1716)
  %1718 = call i1 @nyx_string_contains(%nyx_string* %1710, %nyx_string* %1717)
  store i1 %1718, i1* %1697
  br label %sc_and_end363
sc_and_end363:
  %1719 = load i1, i1* %1697
  br i1 %1719, label %then364, label %else365
then364:
  %1720 = load %nyx_string*, %nyx_string** %1625
  %1721 = getelementptr [16 x i8], [16 x i8]* @.str158, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1721, i64 15)
  %1723 = call %nyx_string* @nyx_string_concat(%nyx_string* %1720, %nyx_string* %1722)
  %1724 = load %nyx_string*, %nyx_string** %1622
  %1725 = call %nyx_string* @nyx_string_concat(%nyx_string* %1723, %nyx_string* %1724)
  %1726 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %1727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1726, i64 1)
  %1728 = call %nyx_string* @nyx_string_concat(%nyx_string* %1725, %nyx_string* %1727)
  store %nyx_string* %1728, %nyx_string** %1625
  br label %merge366
else365:
  br label %merge366
merge366:
  %1729 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1730 = load %nyx_string*, %nyx_string** %1729
  %1731 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1732 = load %nyx_string*, %nyx_string** %1731
  %1733 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1733, i64 1)
  %1735 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1732, %nyx_string* %1734)
  %1736 = alloca { i64, i8* }*
  store { i64, i8* }* %1735, { i64, i8* }** %1736
  %1737 = alloca i64
  store i64 0, i64* %1737
  %1738 = getelementptr [2 x i8], [2 x i8]* @.str161, i32 0, i32 0
  %1739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1738, i64 1)
  %1740 = alloca %nyx_string*
  store %nyx_string* %1739, %nyx_string** %1740
  %1741 = getelementptr [2 x i8], [2 x i8]* @.str162, i32 0, i32 0
  %1742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1741, i64 1)
  %1743 = alloca %nyx_string*
  store %nyx_string* %1742, %nyx_string** %1743
  %1744 = getelementptr [3 x i8], [3 x i8]* @.str163, i32 0, i32 0
  %1745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1744, i64 2)
  %1746 = alloca %nyx_string*
  store %nyx_string* %1745, %nyx_string** %1746
  %1747 = call i8* @llvm.stacksave()
  br label %while_cond367
while_cond367:
  %1748 = load i64, i64* %1737
  %1749 = load { i64, i8* }*, { i64, i8* }** %1736
  %1750 = call i64 @nyx_array_length({ i64, i8* }* %1749)
  %1751 = icmp slt i64 %1748, %1750
  br i1 %1751, label %while_body368, label %while_end369
while_body368:
  call void @llvm.stackrestore(i8* %1747)
  %1752 = load { i64, i8* }*, { i64, i8* }** %1736
  %1753 = load i64, i64* %1737
  %1754 = call i64 @nyx_array_get_checked({ i64, i8* }* %1752, i64 %1753, i64 2)
  %1755 = inttoptr i64 %1754 to %nyx_string*
  %1756 = alloca %nyx_string*
  store %nyx_string* %1755, %nyx_string** %1756
  %1757 = load %nyx_string*, %nyx_string** %1756
  %1758 = load %nyx_string*, %nyx_string** %1740
  %1759 = call i64 @nyx_string_index_of(%nyx_string* %1757, %nyx_string* %1758)
  %1760 = alloca i64
  store i64 %1759, i64* %1760
  %1761 = load i64, i64* %1760
  %1762 = icmp sgt i64 %1761, 0
  br i1 %1762, label %then370, label %else371
then370:
  %1763 = load %nyx_string*, %nyx_string** %1756
  %1764 = load i64, i64* %1760
  %1765 = call %nyx_string* @nyx_string_substring(%nyx_string* %1763, i64 0, i64 %1764)
  %1766 = alloca %nyx_string*
  store %nyx_string* %1765, %nyx_string** %1766
  %1767 = load %nyx_string*, %nyx_string** %1766
  %1768 = load %nyx_string*, %nyx_string** %1622
  %1769 = call i1 @nyx_string_equals(%nyx_string* %1767, %nyx_string* %1768)
  %1770 = xor i1 %1769, true
  br i1 %1770, label %then373, label %else374
then373:
  %1771 = load %nyx_string*, %nyx_string** %1628
  %1772 = load %nyx_string*, %nyx_string** %1743
  %1773 = call %nyx_string* @nyx_string_concat(%nyx_string* %1771, %nyx_string* %1772)
  %1774 = load %nyx_string*, %nyx_string** %1756
  %1775 = load i64, i64* %1760
  %1776 = add i64 %1775, 1
  %1777 = load %nyx_string*, %nyx_string** %1756
  %1778 = call i64 @nyx_string_byte_length(%nyx_string* %1777)
  %1779 = call %nyx_string* @nyx_string_substring(%nyx_string* %1774, i64 %1776, i64 %1778)
  %1780 = call %nyx_string* @nyx_string_concat(%nyx_string* %1773, %nyx_string* %1779)
  %1781 = load %nyx_string*, %nyx_string** %1746
  %1782 = call %nyx_string* @nyx_string_concat(%nyx_string* %1780, %nyx_string* %1781)
  store %nyx_string* %1782, %nyx_string** %1628
  br label %merge375
else374:
  br label %merge375
merge375:
  br label %merge372
else371:
  br label %merge372
merge372:
  %1783 = load i64, i64* %1737
  %1784 = add i64 %1783, 1
  store i64 %1784, i64* %1737
  br label %while_cond367
while_end369:
  br label %merge347
else346:
  br label %merge347
merge347:
  %1785 = getelementptr [55 x i8], [55 x i8]* @.str164, i32 0, i32 0
  %1786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1785, i64 54)
  %1787 = load %nyx_string*, %nyx_string** %1424
  %1788 = call %nyx_string* @nyx_string_concat(%nyx_string* %1786, %nyx_string* %1787)
  %1789 = getelementptr [37 x i8], [37 x i8]* @.str165, i32 0, i32 0
  %1790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1789, i64 36)
  %1791 = call %nyx_string* @nyx_string_concat(%nyx_string* %1788, %nyx_string* %1790)
  %1792 = load %nyx_string*, %nyx_string** %file.ptr
  %1793 = call %nyx_string* @nyx_string_concat(%nyx_string* %1791, %nyx_string* %1792)
  %1794 = getelementptr [2 x i8], [2 x i8]* @.str166, i32 0, i32 0
  %1795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1794, i64 1)
  %1796 = call %nyx_string* @nyx_string_concat(%nyx_string* %1793, %nyx_string* %1795)
  %1797 = load %nyx_string*, %nyx_string** %1575
  %1798 = call %nyx_string* @nyx_string_concat(%nyx_string* %1796, %nyx_string* %1797)
  %1799 = load %nyx_string*, %nyx_string** %1625
  %1800 = call %nyx_string* @nyx_string_concat(%nyx_string* %1798, %nyx_string* %1799)
  %1801 = getelementptr [23 x i8], [23 x i8]* @.str167, i32 0, i32 0
  %1802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1801, i64 22)
  %1803 = call %nyx_string* @nyx_string_concat(%nyx_string* %1800, %nyx_string* %1802)
  %1804 = load %nyx_string*, %nyx_string** %1468
  %1805 = call %nyx_string* @nyx_string_concat(%nyx_string* %1803, %nyx_string* %1804)
  %1806 = getelementptr [38 x i8], [38 x i8]* @.str168, i32 0, i32 0
  %1807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1806, i64 37)
  %1808 = call %nyx_string* @nyx_string_concat(%nyx_string* %1805, %nyx_string* %1807)
  %1809 = load %nyx_string*, %nyx_string** %1468
  %1810 = call %nyx_string* @nyx_string_concat(%nyx_string* %1808, %nyx_string* %1809)
  %1811 = getelementptr [14 x i8], [14 x i8]* @.str169, i32 0, i32 0
  %1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1811, i64 13)
  %1813 = call %nyx_string* @nyx_string_concat(%nyx_string* %1810, %nyx_string* %1812)
  %1814 = alloca %nyx_string*
  store %nyx_string* %1813, %nyx_string** %1814
  %1815 = load %nyx_string*, %nyx_string** %1535
  %1816 = load %nyx_string*, %nyx_string** %1814
  %1817 = call %nyx_string* @nyx_string_concat(%nyx_string* %1815, %nyx_string* %1816)
  %1818 = alloca %nyx_string*
  store %nyx_string* %1817, %nyx_string** %1818
  %1819 = getelementptr [15 x i8], [15 x i8]* @.str170, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1819, i64 14)
  %1821 = load %nyx_string*, %nyx_string** %1441
  %1822 = call %nyx_string* @nyx_string_concat(%nyx_string* %1820, %nyx_string* %1821)
  %1823 = getelementptr [27 x i8], [27 x i8]* @.str171, i32 0, i32 0
  %1824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1823, i64 26)
  %1825 = call %nyx_string* @nyx_string_concat(%nyx_string* %1822, %nyx_string* %1824)
  %1826 = alloca %nyx_string*
  store %nyx_string* %1825, %nyx_string** %1826
  %1827 = load %nyx_string*, %nyx_string** %1619
  %1828 = load %nyx_string*, %nyx_string** %1826
  %1829 = call %nyx_string* @nyx_string_concat(%nyx_string* %1827, %nyx_string* %1828)
  %1830 = getelementptr [16 x i8], [16 x i8]* @.str172, i32 0, i32 0
  %1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1830, i64 15)
  %1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %1829, %nyx_string* %1831)
  %1833 = getelementptr [10 x i8], [10 x i8]* @.str173, i32 0, i32 0
  %1834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1833, i64 9)
  %1835 = call %nyx_string* @tmp_plantilla(%nyx_string* %1834)
  %1836 = call %nyx_string* @nyx_string_concat(%nyx_string* %1832, %nyx_string* %1835)
  %1837 = getelementptr [5 x i8], [5 x i8]* @.str174, i32 0, i32 0
  %1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1837, i64 4)
  %1839 = call %nyx_string* @nyx_string_concat(%nyx_string* %1836, %nyx_string* %1838)
  %1840 = getelementptr [17 x i8], [17 x i8]* @.str175, i32 0, i32 0
  %1841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1840, i64 16)
  %1842 = call %nyx_string* @nyx_string_concat(%nyx_string* %1839, %nyx_string* %1841)
  %1843 = getelementptr [31 x i8], [31 x i8]* @.str176, i32 0, i32 0
  %1844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1843, i64 30)
  %1845 = call %nyx_string* @nyx_string_concat(%nyx_string* %1842, %nyx_string* %1844)
  %1846 = getelementptr [17 x i8], [17 x i8]* @.str177, i32 0, i32 0
  %1847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1846, i64 16)
  %1848 = call %nyx_string* @nyx_string_concat(%nyx_string* %1845, %nyx_string* %1847)
  %1849 = getelementptr [5 x i8], [5 x i8]* @.str178, i32 0, i32 0
  %1850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1849, i64 4)
  %1851 = call %nyx_string* @nyx_string_concat(%nyx_string* %1848, %nyx_string* %1850)
  %1852 = load %nyx_string*, %nyx_string** %1424
  %1853 = call %nyx_string* @nyx_string_concat(%nyx_string* %1851, %nyx_string* %1852)
  %1854 = getelementptr [2 x i8], [2 x i8]* @.str179, i32 0, i32 0
  %1855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1854, i64 1)
  %1856 = call %nyx_string* @nyx_string_concat(%nyx_string* %1853, %nyx_string* %1855)
  %1857 = load %nyx_string*, %nyx_string** %file.ptr
  %1858 = call %nyx_string* @nyx_string_concat(%nyx_string* %1856, %nyx_string* %1857)
  %1859 = getelementptr [12 x i8], [12 x i8]* @.str180, i32 0, i32 0
  %1860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1859, i64 11)
  %1861 = call %nyx_string* @nyx_string_concat(%nyx_string* %1858, %nyx_string* %1860)
  %1862 = getelementptr [5 x i8], [5 x i8]* @.str181, i32 0, i32 0
  %1863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1862, i64 4)
  %1864 = call %nyx_string* @nyx_string_concat(%nyx_string* %1861, %nyx_string* %1863)
  %1865 = load %nyx_string*, %nyx_string** %1402
  %1866 = call %nyx_string* @nyx_string_concat(%nyx_string* %1864, %nyx_string* %1865)
  %1867 = getelementptr [3 x i8], [3 x i8]* @.str182, i32 0, i32 0
  %1868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1867, i64 2)
  %1869 = call %nyx_string* @nyx_string_concat(%nyx_string* %1866, %nyx_string* %1868)
  %1870 = getelementptr [51 x i8], [51 x i8]* @.str183, i32 0, i32 0
  %1871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1870, i64 50)
  %1872 = call %nyx_string* @nyx_string_concat(%nyx_string* %1869, %nyx_string* %1871)
  %1873 = load %nyx_string*, %nyx_string** %1402
  %1874 = call %nyx_string* @nyx_string_concat(%nyx_string* %1872, %nyx_string* %1873)
  %1875 = getelementptr [35 x i8], [35 x i8]* @.str184, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1875, i64 34)
  %1877 = call %nyx_string* @nyx_string_concat(%nyx_string* %1874, %nyx_string* %1876)
  %1878 = load %nyx_string*, %nyx_string** %1818
  %1879 = call %nyx_string* @nyx_string_concat(%nyx_string* %1877, %nyx_string* %1878)
  %1880 = getelementptr [7 x i8], [7 x i8]* @.str185, i32 0, i32 0
  %1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1880, i64 6)
  %1882 = call %nyx_string* @nyx_string_concat(%nyx_string* %1879, %nyx_string* %1881)
  %1883 = load %nyx_string*, %nyx_string** %1476
  %1884 = call %nyx_string* @nyx_string_concat(%nyx_string* %1882, %nyx_string* %1883)
  %1885 = load %nyx_string*, %nyx_string** %1578
  %1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %1884, %nyx_string* %1885)
  %1887 = getelementptr [40 x i8], [40 x i8]* @.str186, i32 0, i32 0
  %1888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1887, i64 39)
  %1889 = call %nyx_string* @nyx_string_concat(%nyx_string* %1886, %nyx_string* %1888)
  %1890 = load %nyx_string*, %nyx_string** %1628
  %1891 = call %nyx_string* @nyx_string_concat(%nyx_string* %1889, %nyx_string* %1890)
  %1892 = load %nyx_string*, %nyx_string** %1504
  %1893 = call %nyx_string* @nyx_string_concat(%nyx_string* %1891, %nyx_string* %1892)
  %1894 = getelementptr [44 x i8], [44 x i8]* @.str187, i32 0, i32 0
  %1895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1894, i64 43)
  %1896 = call %nyx_string* @nyx_string_concat(%nyx_string* %1893, %nyx_string* %1895)
  %1897 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %1898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1897, i64 4)
  %1899 = call %nyx_string* @nyx_string_concat(%nyx_string* %1896, %nyx_string* %1898)
  %1900 = load %nyx_string*, %nyx_string** %1473
  %1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1900)
  %1902 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1902, i64 7)
  %1904 = call %nyx_string* @nyx_string_concat(%nyx_string* %1901, %nyx_string* %1903)
  %1905 = load %nyx_string*, %nyx_string** %1468
  %1906 = call %nyx_string* @nyx_string_concat(%nyx_string* %1904, %nyx_string* %1905)
  %1907 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %1908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1907, i64 2)
  %1909 = call %nyx_string* @nyx_string_concat(%nyx_string* %1906, %nyx_string* %1908)
  %1910 = getelementptr [57 x i8], [57 x i8]* @.str191, i32 0, i32 0
  %1911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1910, i64 56)
  %1912 = call %nyx_string* @nyx_string_concat(%nyx_string* %1909, %nyx_string* %1911)
  %1913 = load %nyx_string*, %nyx_string** %1581
  %1914 = call %nyx_string* @nyx_string_concat(%nyx_string* %1912, %nyx_string* %1913)
  %1915 = getelementptr [9 x i8], [9 x i8]* @.str192, i32 0, i32 0
  %1916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1915, i64 8)
  %1917 = call %nyx_string* @nyx_string_concat(%nyx_string* %1914, %nyx_string* %1916)
  %1918 = load %nyx_string*, %nyx_string** %1428
  %1919 = call %nyx_string* @nyx_string_concat(%nyx_string* %1917, %nyx_string* %1918)
  %1920 = getelementptr [3 x i8], [3 x i8]* @.str193, i32 0, i32 0
  %1921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1920, i64 2)
  %1922 = call %nyx_string* @nyx_string_concat(%nyx_string* %1919, %nyx_string* %1921)
  %1923 = load %nyx_string*, %nyx_string** %1473
  %1924 = call %nyx_string* @nyx_string_concat(%nyx_string* %1922, %nyx_string* %1923)
  %1925 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %1926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1925, i64 5)
  %1927 = call %nyx_string* @nyx_string_concat(%nyx_string* %1924, %nyx_string* %1926)
  %1928 = load %nyx_string*, %nyx_string** %1468
  %1929 = call %nyx_string* @nyx_string_concat(%nyx_string* %1927, %nyx_string* %1928)
  %1930 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %1931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1930, i64 7)
  %1932 = call %nyx_string* @nyx_string_concat(%nyx_string* %1929, %nyx_string* %1931)
  %1933 = getelementptr [14 x i8], [14 x i8]* @.str196, i32 0, i32 0
  %1934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1933, i64 13)
  %1935 = call %nyx_string* @nyx_string_concat(%nyx_string* %1932, %nyx_string* %1934)
  %1936 = getelementptr [8 x i8], [8 x i8]* @.str197, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1936, i64 7)
  %1938 = call %nyx_string* @nyx_string_concat(%nyx_string* %1935, %nyx_string* %1937)
  %1939 = load %nyx_string*, %nyx_string** %1473
  %1940 = call %nyx_string* @nyx_string_concat(%nyx_string* %1938, %nyx_string* %1939)
  %1941 = getelementptr [3 x i8], [3 x i8]* @.str198, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1941, i64 2)
  %1943 = call %nyx_string* @nyx_string_concat(%nyx_string* %1940, %nyx_string* %1942)
  %1944 = getelementptr [17 x i8], [17 x i8]* @.str199, i32 0, i32 0
  %1945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1944, i64 16)
  %1946 = call %nyx_string* @nyx_string_concat(%nyx_string* %1943, %nyx_string* %1945)
  %1947 = alloca %nyx_string*
  store %nyx_string* %1946, %nyx_string** %1947
  %1948 = load %nyx_string*, %nyx_string** %1441
  %1949 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %1950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1949, i64 7)
  %1951 = call %nyx_string* @nyx_string_concat(%nyx_string* %1948, %nyx_string* %1950)
  %1952 = alloca %nyx_string*
  store %nyx_string* %1951, %nyx_string** %1952
  %1953 = load %nyx_string*, %nyx_string** %1952
  %1954 = load %nyx_string*, %nyx_string** %1947
  %1955 = ptrtoint %nyx_string* %1954 to i64
  %1956 = call i8* @nyx_string_to_cstr(%nyx_string* %1953)
  %1957 = inttoptr i64 %1955 to %nyx_string*
  %1958 = call i1 @nyx_write_file_safe(i8* %1956, %nyx_string* %1957)
  %1959 = getelementptr [7 x i8], [7 x i8]* @.str201, i32 0, i32 0
  %1960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1959, i64 6)
  %1961 = load %nyx_string*, %nyx_string** %1952
  %1962 = call %nyx_string* @nyx_string_concat(%nyx_string* %1960, %nyx_string* %1961)
  %1963 = getelementptr [2 x i8], [2 x i8]* @.str202, i32 0, i32 0
  %1964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1963, i64 1)
  %1965 = call %nyx_string* @nyx_string_concat(%nyx_string* %1962, %nyx_string* %1964)
  %1966 = call i8* @nyx_string_to_cstr(%nyx_string* %1965)
  %1967 = call i64 @nyx_exec_code(i8* %1966)
  %1968 = alloca i64
  store i64 %1967, i64* %1968
  %1969 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %1970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1969, i64 0)
  %1971 = alloca %nyx_string*
  store %nyx_string* %1970, %nyx_string** %1971
  %1972 = load %nyx_string*, %nyx_string** %1468
  %1973 = call i8* @nyx_string_to_cstr(%nyx_string* %1972)
  %1974 = call i1 @nyx_file_exists(i8* %1973)
  br i1 %1974, label %then376, label %else377
then376:
  %1975 = load %nyx_string*, %nyx_string** %1468
  %1976 = call i8* @nyx_string_to_cstr(%nyx_string* %1975)
  %1977 = call %nyx_string* @nyx_read_file(i8* %1976)
  store %nyx_string* %1977, %nyx_string** %1971
  br label %merge378
else377:
  br label %merge378
merge378:
  %1978 = getelementptr [9 x i8], [9 x i8]* @.str204, i32 0, i32 0
  %1979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1978, i64 8)
  %1980 = load %nyx_string*, %nyx_string** %1441
  %1981 = call %nyx_string* @nyx_string_concat(%nyx_string* %1979, %nyx_string* %1980)
  %1982 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %1983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1982, i64 1)
  %1984 = call %nyx_string* @nyx_string_concat(%nyx_string* %1981, %nyx_string* %1983)
  %1985 = call i8* @nyx_string_to_cstr(%nyx_string* %1984)
  %1986 = call %nyx_string* @nyx_exec(i8* %1985)
  %1987 = alloca i64
  store i64 0, i64* %1987
  %1988 = alloca i64
  store i64 0, i64* %1988
  %1989 = load %nyx_string*, %nyx_string** %1971
  %1990 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %1991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1990, i64 1)
  %1992 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1989, %nyx_string* %1991)
  %1993 = alloca { i64, i8* }*
  store { i64, i8* }* %1992, { i64, i8* }** %1993
  %1994 = alloca i64
  store i64 0, i64* %1994
  %1995 = getelementptr [6 x i8], [6 x i8]* @.str207, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1995, i64 5)
  %1997 = alloca %nyx_string*
  store %nyx_string* %1996, %nyx_string** %1997
  %1998 = getelementptr [6 x i8], [6 x i8]* @.str208, i32 0, i32 0
  %1999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %1998, i64 5)
  %2000 = alloca %nyx_string*
  store %nyx_string* %1999, %nyx_string** %2000
  %2001 = call i8* @llvm.stacksave()
  br label %while_cond379
while_cond379:
  %2002 = load i64, i64* %1994
  %2003 = load { i64, i8* }*, { i64, i8* }** %1993
  %2004 = call i64 @nyx_array_length({ i64, i8* }* %2003)
  %2005 = icmp slt i64 %2002, %2004
  br i1 %2005, label %while_body380, label %while_end381
while_body380:
  call void @llvm.stackrestore(i8* %2001)
  %2006 = load { i64, i8* }*, { i64, i8* }** %1993
  %2007 = load i64, i64* %1994
  %2008 = call i64 @nyx_array_get_checked({ i64, i8* }* %2006, i64 %2007, i64 2)
  %2009 = inttoptr i64 %2008 to %nyx_string*
  %2010 = alloca %nyx_string*
  store %nyx_string* %2009, %nyx_string** %2010
  %2011 = load %nyx_string*, %nyx_string** %2010
  %2012 = load %nyx_string*, %nyx_string** %1997
  %2013 = call i1 @nyx_string_contains(%nyx_string* %2011, %nyx_string* %2012)
  br i1 %2013, label %then382, label %else383
then382:
  %2014 = load i64, i64* %1987
  %2015 = add i64 %2014, 1
  store i64 %2015, i64* %1987
  br label %merge384
else383:
  %2016 = load %nyx_string*, %nyx_string** %2010
  %2017 = load %nyx_string*, %nyx_string** %2000
  %2018 = call i1 @nyx_string_contains(%nyx_string* %2016, %nyx_string* %2017)
  br i1 %2018, label %then385, label %else386
then385:
  %2019 = load i64, i64* %1988
  %2020 = add i64 %2019, 1
  store i64 %2020, i64* %1988
  br label %merge387
else386:
  br label %merge387
merge387:
  br label %merge384
merge384:
  %2021 = load i64, i64* %1994
  %2022 = add i64 %2021, 1
  store i64 %2022, i64* %1994
  br label %while_cond379
while_end381:
  %2023 = getelementptr %TestResult, %TestResult* null, i32 1
  %2024 = ptrtoint %TestResult* %2023 to i64
  %2025 = call i8* @GC_malloc(i64 %2024)
  %2026 = bitcast i8* %2025 to %TestResult*
  %2027 = load %nyx_string*, %nyx_string** %file.ptr
  %2028 = getelementptr %TestResult, %TestResult* %2026, i32 0, i32 0
  store %nyx_string* %2027, %nyx_string** %2028
  %2029 = load i64, i64* %1987
  %2030 = getelementptr %TestResult, %TestResult* %2026, i32 0, i32 1
  store i64 %2029, i64* %2030
  %2031 = load i64, i64* %1988
  %2032 = getelementptr %TestResult, %TestResult* %2026, i32 0, i32 2
  store i64 %2031, i64* %2032
  %2033 = load %nyx_string*, %nyx_string** %1971
  %2034 = getelementptr %TestResult, %TestResult* %2026, i32 0, i32 3
  store %nyx_string* %2033, %nyx_string** %2034
  %2035 = alloca i1
  store i1 false, i1* %2035
  %2036 = load i64, i64* %1968
  %2037 = icmp eq i64 %2036, 0
  br i1 %2037, label %sc_and_rhs388, label %sc_and_end389
sc_and_rhs388:
  %2038 = load i64, i64* %1988
  %2039 = icmp eq i64 %2038, 0
  store i1 %2039, i1* %2035
  br label %sc_and_end389
sc_and_end389:
  %2040 = load i1, i1* %2035
  %2041 = getelementptr %TestResult, %TestResult* %2026, i32 0, i32 4
  store i1 %2040, i1* %2041
  %2042 = load %TestResult, %TestResult* %2026
  ret %TestResult %2042
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %2043 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %2044 = load i1, i1* %2043
  br i1 %2044, label %then390, label %else391
then390:
  %2045 = getelementptr [9 x i8], [9 x i8]* @.str209, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2045, i64 8)
  %2047 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %2048 = load %nyx_string*, %nyx_string** %2047
  %2049 = call %nyx_string* @nyx_string_concat(%nyx_string* %2046, %nyx_string* %2048)
  %2050 = getelementptr [3 x i8], [3 x i8]* @.str210, i32 0, i32 0
  %2051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2050, i64 2)
  %2052 = call %nyx_string* @nyx_string_concat(%nyx_string* %2049, %nyx_string* %2051)
  %2053 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %2054 = load i64, i64* %2053
  %2055 = call %nyx_string* @nyx_string_from_int(i64 %2054)
  %2056 = call %nyx_string* @nyx_string_concat(%nyx_string* %2052, %nyx_string* %2055)
  %2057 = getelementptr [8 x i8], [8 x i8]* @.str211, i32 0, i32 0
  %2058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2057, i64 7)
  %2059 = call %nyx_string* @nyx_string_concat(%nyx_string* %2056, %nyx_string* %2058)
  %2060 = call i8* @nyx_string_to_cstr(%nyx_string* %2059)
  call void @nyx_print_string(i8* %2060)
  %2061 = load i1, i1* %verbose.ptr
  br i1 %2061, label %then393, label %else394
then393:
  %2062 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %2063 = load %nyx_string*, %nyx_string** %2062
  %2064 = call i8* @nyx_string_to_cstr(%nyx_string* %2063)
  call void @nyx_print_string(i8* %2064)
  br label %merge395
else394:
  br label %merge395
merge395:
  br label %merge392
else391:
  %2065 = getelementptr [9 x i8], [9 x i8]* @.str212, i32 0, i32 0
  %2066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2065, i64 8)
  %2067 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %2068 = load %nyx_string*, %nyx_string** %2067
  %2069 = call %nyx_string* @nyx_string_concat(%nyx_string* %2066, %nyx_string* %2068)
  %2070 = getelementptr [3 x i8], [3 x i8]* @.str213, i32 0, i32 0
  %2071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2070, i64 2)
  %2072 = call %nyx_string* @nyx_string_concat(%nyx_string* %2069, %nyx_string* %2071)
  %2073 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %2074 = load i64, i64* %2073
  %2075 = call %nyx_string* @nyx_string_from_int(i64 %2074)
  %2076 = call %nyx_string* @nyx_string_concat(%nyx_string* %2072, %nyx_string* %2075)
  %2077 = getelementptr [10 x i8], [10 x i8]* @.str214, i32 0, i32 0
  %2078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2077, i64 9)
  %2079 = call %nyx_string* @nyx_string_concat(%nyx_string* %2076, %nyx_string* %2078)
  %2080 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %2081 = load i64, i64* %2080
  %2082 = call %nyx_string* @nyx_string_from_int(i64 %2081)
  %2083 = call %nyx_string* @nyx_string_concat(%nyx_string* %2079, %nyx_string* %2082)
  %2084 = getelementptr [9 x i8], [9 x i8]* @.str215, i32 0, i32 0
  %2085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2084, i64 8)
  %2086 = call %nyx_string* @nyx_string_concat(%nyx_string* %2083, %nyx_string* %2085)
  %2087 = call i8* @nyx_string_to_cstr(%nyx_string* %2086)
  call void @nyx_print_string(i8* %2087)
  %2088 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %2089 = load %nyx_string*, %nyx_string** %2088
  %2090 = call i8* @nyx_string_to_cstr(%nyx_string* %2089)
  call void @nyx_print_string(i8* %2090)
  br label %merge392
merge392:
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
  %2091 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %2092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2091, i64 0)
  %2093 = call i8* @nyx_string_to_cstr(%nyx_string* %2092)
  call void @nyx_print_string(i8* %2093)
  %2094 = getelementptr [36 x i8], [36 x i8]* @.str217, i32 0, i32 0
  %2095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2094, i64 35)
  %2096 = call i8* @nyx_string_to_cstr(%nyx_string* %2095)
  call void @nyx_print_string(i8* %2096)
  %2097 = alloca i64
  store i64 0, i64* %2097
  %2098 = alloca i64
  store i64 0, i64* %2098
  %2099 = alloca i64
  store i64 0, i64* %2099
  %2100 = call i8* @llvm.stacksave()
  br label %while_cond396
while_cond396:
  %2101 = load i64, i64* %2099
  %2102 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %2103 = call i64 @nyx_array_length({ i64, i8* }* %2102)
  %2104 = icmp slt i64 %2101, %2103
  br i1 %2104, label %while_body397, label %while_end398
while_body397:
  call void @llvm.stackrestore(i8* %2100)
  %2105 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %2106 = load i64, i64* %2099
  %2107 = getelementptr [11 x i8], [11 x i8]* @.slotT218, i32 0, i32 0
  %2108 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %2105, i64 %2106, i8* %2107)
  %2109 = inttoptr i64 %2108 to %TestResult*
  %2110 = load %TestResult, %TestResult* %2109
  %2111 = alloca %TestResult
  store %TestResult %2110, %TestResult* %2111
  %2112 = getelementptr %TestResult, %TestResult* %2111, i32 0, i32 4
  %2113 = load i1, i1* %2112
  br i1 %2113, label %then399, label %else400
then399:
  %2114 = load i64, i64* %2097
  %2115 = add i64 %2114, 1
  store i64 %2115, i64* %2097
  br label %merge401
else400:
  %2116 = load i64, i64* %2098
  %2117 = add i64 %2116, 1
  store i64 %2117, i64* %2098
  br label %merge401
merge401:
  %2118 = load i64, i64* %2099
  %2119 = add i64 %2118, 1
  store i64 %2119, i64* %2099
  br label %while_cond396
while_end398:
  %2120 = getelementptr [11 x i8], [11 x i8]* @.str219, i32 0, i32 0
  %2121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2120, i64 10)
  %2122 = load i64, i64* %2097
  %2123 = call %nyx_string* @nyx_string_from_int(i64 %2122)
  %2124 = call %nyx_string* @nyx_string_concat(%nyx_string* %2121, %nyx_string* %2123)
  %2125 = getelementptr [10 x i8], [10 x i8]* @.str220, i32 0, i32 0
  %2126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2125, i64 9)
  %2127 = call %nyx_string* @nyx_string_concat(%nyx_string* %2124, %nyx_string* %2126)
  %2128 = load i64, i64* %2098
  %2129 = call %nyx_string* @nyx_string_from_int(i64 %2128)
  %2130 = call %nyx_string* @nyx_string_concat(%nyx_string* %2127, %nyx_string* %2129)
  %2131 = getelementptr [10 x i8], [10 x i8]* @.str221, i32 0, i32 0
  %2132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2131, i64 9)
  %2133 = call %nyx_string* @nyx_string_concat(%nyx_string* %2130, %nyx_string* %2132)
  %2134 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %2135 = call i64 @nyx_array_length({ i64, i8* }* %2134)
  %2136 = call %nyx_string* @nyx_string_from_int(i64 %2135)
  %2137 = call %nyx_string* @nyx_string_concat(%nyx_string* %2133, %nyx_string* %2136)
  %2138 = getelementptr [8 x i8], [8 x i8]* @.str222, i32 0, i32 0
  %2139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2138, i64 7)
  %2140 = call %nyx_string* @nyx_string_concat(%nyx_string* %2137, %nyx_string* %2139)
  %2141 = call i8* @nyx_string_to_cstr(%nyx_string* %2140)
  call void @nyx_print_string(i8* %2141)
  %2142 = getelementptr [11 x i8], [11 x i8]* @.str223, i32 0, i32 0
  %2143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2142, i64 10)
  %2144 = load i64, i64* %total_passed.ptr
  %2145 = call %nyx_string* @nyx_string_from_int(i64 %2144)
  %2146 = call %nyx_string* @nyx_string_concat(%nyx_string* %2143, %nyx_string* %2145)
  %2147 = getelementptr [10 x i8], [10 x i8]* @.str224, i32 0, i32 0
  %2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2147, i64 9)
  %2149 = call %nyx_string* @nyx_string_concat(%nyx_string* %2146, %nyx_string* %2148)
  %2150 = load i64, i64* %total_failed.ptr
  %2151 = call %nyx_string* @nyx_string_from_int(i64 %2150)
  %2152 = call %nyx_string* @nyx_string_concat(%nyx_string* %2149, %nyx_string* %2151)
  %2153 = getelementptr [10 x i8], [10 x i8]* @.str225, i32 0, i32 0
  %2154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2153, i64 9)
  %2155 = call %nyx_string* @nyx_string_concat(%nyx_string* %2152, %nyx_string* %2154)
  %2156 = load i64, i64* %total_passed.ptr
  %2157 = load i64, i64* %total_failed.ptr
  %2158 = add i64 %2156, %2157
  %2159 = call %nyx_string* @nyx_string_from_int(i64 %2158)
  %2160 = call %nyx_string* @nyx_string_concat(%nyx_string* %2155, %nyx_string* %2159)
  %2161 = getelementptr [8 x i8], [8 x i8]* @.str226, i32 0, i32 0
  %2162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2161, i64 7)
  %2163 = call %nyx_string* @nyx_string_concat(%nyx_string* %2160, %nyx_string* %2162)
  %2164 = call i8* @nyx_string_to_cstr(%nyx_string* %2163)
  call void @nyx_print_string(i8* %2164)
  %2165 = alloca i1
  store i1 false, i1* %2165
  %2166 = load i64, i64* %total_failed.ptr
  %2167 = icmp eq i64 %2166, 0
  br i1 %2167, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %2168 = load i64, i64* %2098
  %2169 = icmp eq i64 %2168, 0
  store i1 %2169, i1* %2165
  br label %sc_and_end403
sc_and_end403:
  %2170 = load i1, i1* %2165
  br i1 %2170, label %then404, label %else405
then404:
  %2171 = getelementptr [27 x i8], [27 x i8]* @.str227, i32 0, i32 0
  %2172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2171, i64 26)
  %2173 = call i8* @nyx_string_to_cstr(%nyx_string* %2172)
  call void @nyx_print_string(i8* %2173)
  br label %merge406
else405:
  %2174 = getelementptr [28 x i8], [28 x i8]* @.str228, i32 0, i32 0
  %2175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2174, i64 27)
  %2176 = call i8* @nyx_string_to_cstr(%nyx_string* %2175)
  call void @nyx_print_string(i8* %2176)
  br label %merge406
merge406:
  %2177 = getelementptr [36 x i8], [36 x i8]* @.str229, i32 0, i32 0
  %2178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2177, i64 35)
  %2179 = call i8* @nyx_string_to_cstr(%nyx_string* %2178)
  call void @nyx_print_string(i8* %2179)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %2180 = getelementptr [28 x i8], [28 x i8]* @.str230, i32 0, i32 0
  %2181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2180, i64 27)
  %2182 = call i8* @nyx_string_to_cstr(%nyx_string* %2181)
  %2183 = call %nyx_string* @nyx_exec(i8* %2182)
  %2184 = alloca %nyx_string*
  store %nyx_string* %2183, %nyx_string** %2184
  %2185 = load %nyx_string*, %nyx_string** %2184
  %2186 = getelementptr [9 x i8], [9 x i8]* @.str231, i32 0, i32 0
  %2187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2186, i64 8)
  %2188 = call i64 @nyx_string_index_of(%nyx_string* %2185, %nyx_string* %2187)
  %2189 = alloca i64
  store i64 %2188, i64* %2189
  %2190 = load i64, i64* %2189
  %2191 = icmp slt i64 %2190, 0
  br i1 %2191, label %then407, label %else408
then407:
  %2192 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %2193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2192, i64 0)
  ret %nyx_string* %2193
else408:
  br label %merge409
merge409:
  %2194 = load i64, i64* %2189
  %2195 = add i64 %2194, 8
  %2196 = alloca i64
  store i64 %2195, i64* %2196
  %2197 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %2198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2197, i64 0)
  %2199 = alloca %nyx_string*
  store %nyx_string* %2198, %nyx_string** %2199
  %2200 = call i8* @llvm.stacksave()
  br label %while_cond410
while_cond410:
  %2201 = load i64, i64* %2196
  %2202 = load %nyx_string*, %nyx_string** %2184
  %2203 = call i64 @nyx_string_byte_length(%nyx_string* %2202)
  %2204 = icmp slt i64 %2201, %2203
  br i1 %2204, label %while_body411, label %while_end412
while_body411:
  call void @llvm.stackrestore(i8* %2200)
  %2205 = load %nyx_string*, %nyx_string** %2184
  %2206 = load i64, i64* %2196
  %2207 = call i8 @nyx_string_char_at(%nyx_string* %2205, i64 %2206)
  %2208 = zext i8 %2207 to i64
  %2209 = alloca i64
  store i64 %2208, i64* %2209
  %2210 = alloca i1
  store i1 false, i1* %2210
  %2211 = load i64, i64* %2209
  %2212 = icmp sge i64 %2211, 48
  br i1 %2212, label %sc_and_rhs413, label %sc_and_end414
sc_and_rhs413:
  %2213 = load i64, i64* %2209
  %2214 = icmp sle i64 %2213, 57
  store i1 %2214, i1* %2210
  br label %sc_and_end414
sc_and_end414:
  %2215 = load i1, i1* %2210
  br i1 %2215, label %then415, label %else416
then415:
  %2216 = load %nyx_string*, %nyx_string** %2199
  %2217 = load %nyx_string*, %nyx_string** %2184
  %2218 = load i64, i64* %2196
  %2219 = load i64, i64* %2196
  %2220 = add i64 %2219, 1
  %2221 = call %nyx_string* @nyx_string_substring(%nyx_string* %2217, i64 %2218, i64 %2220)
  %2222 = call %nyx_string* @nyx_string_concat(%nyx_string* %2216, %nyx_string* %2221)
  store %nyx_string* %2222, %nyx_string** %2199
  %2223 = load i64, i64* %2196
  %2224 = add i64 %2223, 1
  store i64 %2224, i64* %2196
  br label %merge417
else416:
  %2225 = load %nyx_string*, %nyx_string** %2184
  %2226 = call i64 @nyx_string_byte_length(%nyx_string* %2225)
  store i64 %2226, i64* %2196
  br label %merge417
merge417:
  br label %while_cond410
while_end412:
  %2227 = load %nyx_string*, %nyx_string** %2199
  ret %nyx_string* %2227
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %2228 = getelementptr [10 x i8], [10 x i8]* @.str234, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2228, i64 9)
  %2230 = load %nyx_string*, %nyx_string** %path.ptr
  %2231 = call %nyx_string* @nyx_string_concat(%nyx_string* %2229, %nyx_string* %2230)
  %2232 = getelementptr [2 x i8], [2 x i8]* @.str235, i32 0, i32 0
  %2233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2232, i64 1)
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2231, %nyx_string* %2233)
  %2235 = call i8* @nyx_string_to_cstr(%nyx_string* %2234)
  %2236 = call i64 @nyx_exec_code(i8* %2235)
  %2237 = icmp eq i64 %2236, 0
  ret i1 %2237
}

define internal %nyx_string* @cov_find_profdata(
) {
  %2238 = call %nyx_string* @cov_clang_major()
  %2239 = alloca %nyx_string*
  store %nyx_string* %2238, %nyx_string** %2239
  %2240 = load %nyx_string*, %nyx_string** %2239
  %2241 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %2242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2241, i64 0)
  %2243 = call i1 @nyx_string_equals(%nyx_string* %2240, %nyx_string* %2242)
  %2244 = xor i1 %2243, true
  br i1 %2244, label %then418, label %else419
then418:
  %2245 = getelementptr [26 x i8], [26 x i8]* @.str237, i32 0, i32 0
  %2246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2245, i64 25)
  %2247 = load %nyx_string*, %nyx_string** %2239
  %2248 = call %nyx_string* @nyx_string_concat(%nyx_string* %2246, %nyx_string* %2247)
  %2249 = getelementptr [13 x i8], [13 x i8]* @.str238, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2249, i64 12)
  %2251 = call %nyx_string* @nyx_string_concat(%nyx_string* %2248, %nyx_string* %2250)
  %2252 = call i8* @nyx_string_to_cstr(%nyx_string* %2251)
  %2253 = call %nyx_string* @nyx_exec(i8* %2252)
  %2254 = call %nyx_string* @nyx_string_trim(%nyx_string* %2253)
  %2255 = alloca %nyx_string*
  store %nyx_string* %2254, %nyx_string** %2255
  %2256 = load %nyx_string*, %nyx_string** %2255
  %2257 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %2258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2257, i64 0)
  %2259 = call i1 @nyx_string_equals(%nyx_string* %2256, %nyx_string* %2258)
  %2260 = xor i1 %2259, true
  br i1 %2260, label %then421, label %else422
then421:
  %2261 = load %nyx_string*, %nyx_string** %2255
  ret %nyx_string* %2261
else422:
  br label %merge423
merge423:
  br label %merge420
else419:
  br label %merge420
merge420:
  %2262 = getelementptr [37 x i8], [37 x i8]* @.str240, i32 0, i32 0
  %2263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2262, i64 36)
  %2264 = call i8* @nyx_string_to_cstr(%nyx_string* %2263)
  %2265 = call %nyx_string* @nyx_exec(i8* %2264)
  %2266 = call %nyx_string* @nyx_string_trim(%nyx_string* %2265)
  ret %nyx_string* %2266
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %2267 = call { i64, i8* }* @nyx_array_new_ptr()
  %2268 = alloca { i64, i8* }*
  store { i64, i8* }* %2267, { i64, i8* }** %2268
  %2269 = alloca i64
  store i64 0, i64* %2269
  %2270 = alloca i64
  store i64 0, i64* %2270
  %2271 = call i8* @llvm.stacksave()
  br label %while_cond424
while_cond424:
  %2272 = load i64, i64* %2270
  %2273 = load %nyx_string*, %nyx_string** %line.ptr
  %2274 = call i64 @nyx_string_byte_length(%nyx_string* %2273)
  %2275 = icmp slt i64 %2272, %2274
  br i1 %2275, label %while_body425, label %while_end426
while_body425:
  call void @llvm.stackrestore(i8* %2271)
  %2276 = load %nyx_string*, %nyx_string** %line.ptr
  %2277 = load i64, i64* %2270
  %2278 = call i8 @nyx_string_char_at(%nyx_string* %2276, i64 %2277)
  %2279 = zext i8 %2278 to i64
  %2280 = icmp eq i64 %2279, 9
  br i1 %2280, label %then427, label %else428
then427:
  %2281 = load { i64, i8* }*, { i64, i8* }** %2268
  %2282 = load %nyx_string*, %nyx_string** %line.ptr
  %2283 = load i64, i64* %2269
  %2284 = load i64, i64* %2270
  %2285 = call %nyx_string* @nyx_string_substring(%nyx_string* %2282, i64 %2283, i64 %2284)
  %2286 = ptrtoint %nyx_string* %2285 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2281, i64 %2286, i64 2)
  %2287 = load i64, i64* %2270
  %2288 = add i64 %2287, 1
  store i64 %2288, i64* %2269
  br label %merge429
else428:
  br label %merge429
merge429:
  %2289 = load i64, i64* %2270
  %2290 = add i64 %2289, 1
  store i64 %2290, i64* %2270
  br label %while_cond424
while_end426:
  %2291 = load { i64, i8* }*, { i64, i8* }** %2268
  %2292 = load %nyx_string*, %nyx_string** %line.ptr
  %2293 = load i64, i64* %2269
  %2294 = load %nyx_string*, %nyx_string** %line.ptr
  %2295 = call i64 @nyx_string_byte_length(%nyx_string* %2294)
  %2296 = call %nyx_string* @nyx_string_substring(%nyx_string* %2292, i64 %2293, i64 %2295)
  %2297 = ptrtoint %nyx_string* %2296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2291, i64 %2297, i64 2)
  %2298 = load { i64, i8* }*, { i64, i8* }** %2268
  ret { i64, i8* }* %2298
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %2299 = load i64, i64* %n.ptr
  %2300 = call %nyx_string* @nyx_string_from_int(i64 %2299)
  %2301 = alloca %nyx_string*
  store %nyx_string* %2300, %nyx_string** %2301
  %2302 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %2303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2302, i64 1)
  %2304 = alloca %nyx_string*
  store %nyx_string* %2303, %nyx_string** %2304
  %2305 = call i8* @llvm.stacksave()
  br label %while_cond430
while_cond430:
  %2306 = load %nyx_string*, %nyx_string** %2301
  %2307 = call i64 @nyx_string_byte_length(%nyx_string* %2306)
  %2308 = icmp slt i64 %2307, 9
  br i1 %2308, label %while_body431, label %while_end432
while_body431:
  call void @llvm.stackrestore(i8* %2305)
  %2309 = load %nyx_string*, %nyx_string** %2304
  %2310 = load %nyx_string*, %nyx_string** %2301
  %2311 = call %nyx_string* @nyx_string_concat(%nyx_string* %2309, %nyx_string* %2310)
  store %nyx_string* %2311, %nyx_string** %2301
  br label %while_cond430
while_end432:
  %2312 = load %nyx_string*, %nyx_string** %2301
  ret %nyx_string* %2312
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %2313 = call i8* @nyx_map_new(i32 0)
  %2314 = alloca i8*
  store i8* %2313, i8** %2314
  %2315 = load %nyx_string*, %nyx_string** %show.ptr
  %2316 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %2317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2316, i64 1)
  %2318 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2315, %nyx_string* %2317)
  %2319 = alloca { i64, i8* }*
  store { i64, i8* }* %2318, { i64, i8* }** %2319
  %2320 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2320, i64 0)
  %2322 = alloca %nyx_string*
  store %nyx_string* %2321, %nyx_string** %2322
  %2323 = alloca i64
  store i64 0, i64* %2323
  %2324 = getelementptr [3 x i8], [3 x i8]* @.str244, i32 0, i32 0
  %2325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2324, i64 2)
  %2326 = alloca %nyx_string*
  store %nyx_string* %2325, %nyx_string** %2326
  %2327 = getelementptr [4 x i8], [4 x i8]* @.str245, i32 0, i32 0
  %2328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2327, i64 3)
  %2329 = alloca %nyx_string*
  store %nyx_string* %2328, %nyx_string** %2329
  %2330 = getelementptr [2 x i8], [2 x i8]* @.str246, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2330, i64 1)
  %2332 = alloca %nyx_string*
  store %nyx_string* %2331, %nyx_string** %2332
  %2333 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2333, i64 1)
  %2335 = alloca %nyx_string*
  store %nyx_string* %2334, %nyx_string** %2335
  %2336 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %2337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2336, i64 0)
  %2338 = alloca %nyx_string*
  store %nyx_string* %2337, %nyx_string** %2338
  %2339 = getelementptr [14 x i8], [14 x i8]* @.str249, i32 0, i32 0
  %2340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2339, i64 13)
  %2341 = alloca %nyx_string*
  store %nyx_string* %2340, %nyx_string** %2341
  %2342 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %2343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2342, i64 1)
  %2344 = alloca %nyx_string*
  store %nyx_string* %2343, %nyx_string** %2344
  %2345 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2345, i64 1)
  %2347 = alloca %nyx_string*
  store %nyx_string* %2346, %nyx_string** %2347
  %2348 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2348, i64 1)
  %2350 = alloca %nyx_string*
  store %nyx_string* %2349, %nyx_string** %2350
  %2351 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %2352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2351, i64 1)
  %2353 = alloca %nyx_string*
  store %nyx_string* %2352, %nyx_string** %2353
  %2354 = call i8* @llvm.stacksave()
  br label %while_cond433
while_cond433:
  %2355 = load i64, i64* %2323
  %2356 = load { i64, i8* }*, { i64, i8* }** %2319
  %2357 = call i64 @nyx_array_length({ i64, i8* }* %2356)
  %2358 = icmp slt i64 %2355, %2357
  br i1 %2358, label %while_body434, label %while_end435
while_body434:
  call void @llvm.stackrestore(i8* %2354)
  %2359 = load { i64, i8* }*, { i64, i8* }** %2319
  %2360 = load i64, i64* %2323
  %2361 = call i64 @nyx_array_get_checked({ i64, i8* }* %2359, i64 %2360, i64 2)
  %2362 = inttoptr i64 %2361 to %nyx_string*
  %2363 = alloca %nyx_string*
  store %nyx_string* %2362, %nyx_string** %2363
  %2364 = alloca i1
  store i1 false, i1* %2364
  %2365 = alloca i1
  store i1 false, i1* %2365
  %2366 = load %nyx_string*, %nyx_string** %2363
  %2367 = load %nyx_string*, %nyx_string** %2326
  %2368 = call i1 @nyx_string_starts_with(%nyx_string* %2366, %nyx_string* %2367)
  br i1 %2368, label %sc_and_rhs436, label %sc_and_end437
sc_and_rhs436:
  %2369 = load %nyx_string*, %nyx_string** %2363
  %2370 = load %nyx_string*, %nyx_string** %2329
  %2371 = call i1 @nyx_string_starts_with(%nyx_string* %2369, %nyx_string* %2370)
  %2372 = xor i1 %2371, true
  store i1 %2372, i1* %2365
  br label %sc_and_end437
sc_and_end437:
  %2373 = load i1, i1* %2365
  br i1 %2373, label %sc_and_rhs438, label %sc_and_end439
sc_and_rhs438:
  %2374 = load %nyx_string*, %nyx_string** %2363
  %2375 = load %nyx_string*, %nyx_string** %2332
  %2376 = call i1 @nyx_string_ends_with(%nyx_string* %2374, %nyx_string* %2375)
  store i1 %2376, i1* %2364
  br label %sc_and_end439
sc_and_end439:
  %2377 = load i1, i1* %2364
  br i1 %2377, label %then440, label %else441
then440:
  %2378 = load %nyx_string*, %nyx_string** %2363
  %2379 = load %nyx_string*, %nyx_string** %2363
  %2380 = call i64 @nyx_string_byte_length(%nyx_string* %2379)
  %2381 = sub i64 %2380, 1
  %2382 = call %nyx_string* @nyx_string_substring(%nyx_string* %2378, i64 2, i64 %2381)
  %2383 = alloca %nyx_string*
  store %nyx_string* %2382, %nyx_string** %2383
  %2384 = load %nyx_string*, %nyx_string** %2383
  %2385 = load %nyx_string*, %nyx_string** %2335
  %2386 = call i64 @nyx_string_index_of(%nyx_string* %2384, %nyx_string* %2385)
  %2387 = alloca i64
  store i64 %2386, i64* %2387
  %2388 = load i64, i64* %2387
  %2389 = icmp sge i64 %2388, 0
  br i1 %2389, label %then443, label %else444
then443:
  %2390 = load %nyx_string*, %nyx_string** %2383
  %2391 = load i64, i64* %2387
  %2392 = add i64 %2391, 1
  %2393 = load %nyx_string*, %nyx_string** %2383
  %2394 = call i64 @nyx_string_byte_length(%nyx_string* %2393)
  %2395 = call %nyx_string* @nyx_string_substring(%nyx_string* %2390, i64 %2392, i64 %2394)
  store %nyx_string* %2395, %nyx_string** %2383
  br label %merge445
else444:
  br label %merge445
merge445:
  %2396 = load %nyx_string*, %nyx_string** %2383
  store %nyx_string* %2396, %nyx_string** %2322
  br label %merge442
else441:
  %2397 = alloca i1
  store i1 false, i1* %2397
  %2398 = load %nyx_string*, %nyx_string** %2322
  %2399 = load %nyx_string*, %nyx_string** %2338
  %2400 = call i1 @nyx_string_equals(%nyx_string* %2398, %nyx_string* %2399)
  %2401 = xor i1 %2400, true
  br i1 %2401, label %sc_and_rhs446, label %sc_and_end447
sc_and_rhs446:
  %2402 = load %nyx_string*, %nyx_string** %2363
  %2403 = load %nyx_string*, %nyx_string** %2341
  %2404 = call i1 @nyx_string_contains(%nyx_string* %2402, %nyx_string* %2403)
  store i1 %2404, i1* %2397
  br label %sc_and_end447
sc_and_end447:
  %2405 = load i1, i1* %2397
  br i1 %2405, label %then448, label %else449
then448:
  %2406 = load %nyx_string*, %nyx_string** %2363
  %2407 = load %nyx_string*, %nyx_string** %2344
  %2408 = call i64 @nyx_string_index_of(%nyx_string* %2406, %nyx_string* %2407)
  %2409 = alloca i64
  store i64 %2408, i64* %2409
  %2410 = load %nyx_string*, %nyx_string** %2363
  %2411 = load %nyx_string*, %nyx_string** %2347
  %2412 = call i64 @nyx_string_index_of(%nyx_string* %2410, %nyx_string* %2411)
  %2413 = alloca i64
  store i64 %2412, i64* %2413
  %2414 = alloca i1
  store i1 false, i1* %2414
  %2415 = load i64, i64* %2409
  %2416 = icmp sge i64 %2415, 0
  br i1 %2416, label %sc_and_rhs451, label %sc_and_end452
sc_and_rhs451:
  %2417 = load i64, i64* %2413
  %2418 = load i64, i64* %2409
  %2419 = icmp sgt i64 %2417, %2418
  store i1 %2419, i1* %2414
  br label %sc_and_end452
sc_and_end452:
  %2420 = load i1, i1* %2414
  br i1 %2420, label %then453, label %else454
then453:
  %2421 = load %nyx_string*, %nyx_string** %2363
  %2422 = load i64, i64* %2409
  %2423 = add i64 %2422, 1
  %2424 = load i64, i64* %2413
  %2425 = call %nyx_string* @nyx_string_substring(%nyx_string* %2421, i64 %2423, i64 %2424)
  %2426 = load %nyx_string*, %nyx_string** %2350
  %2427 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2425, %nyx_string* %2426)
  %2428 = alloca { i64, i8* }*
  store { i64, i8* }* %2427, { i64, i8* }** %2428
  %2429 = alloca i64
  store i64 0, i64* %2429
  %2430 = call i8* @llvm.stacksave()
  br label %while_cond456
while_cond456:
  %2431 = load i64, i64* %2429
  %2432 = load { i64, i8* }*, { i64, i8* }** %2428
  %2433 = call i64 @nyx_array_length({ i64, i8* }* %2432)
  %2434 = icmp slt i64 %2431, %2433
  br i1 %2434, label %while_body457, label %while_end458
while_body457:
  call void @llvm.stackrestore(i8* %2430)
  %2435 = load { i64, i8* }*, { i64, i8* }** %2428
  %2436 = load i64, i64* %2429
  %2437 = call i64 @nyx_array_get_checked({ i64, i8* }* %2435, i64 %2436, i64 2)
  %2438 = inttoptr i64 %2437 to %nyx_string*
  %2439 = alloca %nyx_string*
  store %nyx_string* %2438, %nyx_string** %2439
  %2440 = load %nyx_string*, %nyx_string** %2439
  %2441 = call %nyx_string* @nyx_string_trim(%nyx_string* %2440)
  %2442 = call i64 @nyx_string_to_int(%nyx_string* %2441)
  %2443 = icmp sgt i64 %2442, 0
  br i1 %2443, label %then459, label %else460
then459:
  %2444 = load i8*, i8** %2314
  %2445 = load %nyx_string*, %nyx_string** %2322
  %2446 = load %nyx_string*, %nyx_string** %2353
  %2447 = call i8* @nyx_string_to_cstr(%nyx_string* %2445)
  %2448 = bitcast %nyx_string* %2446 to i8*
  call void @nyx_map_insert_str(i8* %2444, i8* %2447, i8* %2448)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2449 = load i64, i64* %2429
  %2450 = add i64 %2449, 1
  store i64 %2450, i64* %2429
  br label %while_cond456
while_end458:
  br label %merge455
else454:
  br label %merge455
merge455:
  br label %merge450
else449:
  br label %merge450
merge450:
  br label %merge442
merge442:
  %2451 = load i64, i64* %2323
  %2452 = add i64 %2451, 1
  store i64 %2452, i64* %2323
  br label %while_cond433
while_end435:
  %2453 = load i8*, i8** %2314
  ret i8* %2453
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2454 = call { i64, i8* }* @nyx_array_new_ptr()
  %2455 = alloca { i64, i8* }*
  store { i64, i8* }* %2454, { i64, i8* }** %2455
  %2456 = getelementptr [4 x i8], [4 x i8]* @.str254, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2456, i64 3)
  %2458 = call i8* @nyx_string_to_cstr(%nyx_string* %2457)
  %2459 = call i1 @nyx_file_exists(i8* %2458)
  %2460 = xor i1 %2459, true
  br i1 %2460, label %then462, label %else463
then462:
  %2461 = load { i64, i8* }*, { i64, i8* }** %2455
  ret { i64, i8* }* %2461
else463:
  br label %merge464
merge464:
  %2462 = getelementptr [50 x i8], [50 x i8]* @.str255, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2462, i64 49)
  %2464 = call i8* @nyx_string_to_cstr(%nyx_string* %2463)
  %2465 = call %nyx_string* @nyx_exec(i8* %2464)
  %2466 = alloca %nyx_string*
  store %nyx_string* %2465, %nyx_string** %2466
  %2467 = load %nyx_string*, %nyx_string** %2466
  %2468 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2468, i64 1)
  %2470 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2467, %nyx_string* %2469)
  %2471 = alloca { i64, i8* }*
  store { i64, i8* }* %2470, { i64, i8* }** %2471
  %2472 = alloca i64
  store i64 0, i64* %2472
  %2473 = getelementptr [4 x i8], [4 x i8]* @.str257, i32 0, i32 0
  %2474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2473, i64 3)
  %2475 = alloca %nyx_string*
  store %nyx_string* %2474, %nyx_string** %2475
  %2476 = getelementptr [9 x i8], [9 x i8]* @.str258, i32 0, i32 0
  %2477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2476, i64 8)
  %2478 = alloca %nyx_string*
  store %nyx_string* %2477, %nyx_string** %2478
  %2479 = call i8* @llvm.stacksave()
  br label %while_cond465
while_cond465:
  %2480 = load i64, i64* %2472
  %2481 = load { i64, i8* }*, { i64, i8* }** %2471
  %2482 = call i64 @nyx_array_length({ i64, i8* }* %2481)
  %2483 = icmp slt i64 %2480, %2482
  br i1 %2483, label %while_body466, label %while_end467
while_body466:
  call void @llvm.stackrestore(i8* %2479)
  %2484 = load { i64, i8* }*, { i64, i8* }** %2471
  %2485 = load i64, i64* %2472
  %2486 = call i64 @nyx_array_get_checked({ i64, i8* }* %2484, i64 %2485, i64 2)
  %2487 = inttoptr i64 %2486 to %nyx_string*
  %2488 = alloca %nyx_string*
  store %nyx_string* %2487, %nyx_string** %2488
  %2489 = load %nyx_string*, %nyx_string** %2488
  %2490 = call %nyx_string* @nyx_string_trim(%nyx_string* %2489)
  %2491 = alloca %nyx_string*
  store %nyx_string* %2490, %nyx_string** %2491
  %2492 = alloca i1
  store i1 false, i1* %2492
  %2493 = load %nyx_string*, %nyx_string** %2491
  %2494 = load %nyx_string*, %nyx_string** %2475
  %2495 = call i1 @nyx_string_ends_with(%nyx_string* %2493, %nyx_string* %2494)
  br i1 %2495, label %sc_and_rhs468, label %sc_and_end469
sc_and_rhs468:
  %2496 = load %nyx_string*, %nyx_string** %2491
  %2497 = load %nyx_string*, %nyx_string** %2478
  %2498 = call i1 @nyx_string_ends_with(%nyx_string* %2496, %nyx_string* %2497)
  %2499 = xor i1 %2498, true
  store i1 %2499, i1* %2492
  br label %sc_and_end469
sc_and_end469:
  %2500 = load i1, i1* %2492
  br i1 %2500, label %then470, label %else471
then470:
  %2501 = load { i64, i8* }*, { i64, i8* }** %2455
  %2502 = load %nyx_string*, %nyx_string** %2491
  %2503 = load %nyx_string*, %nyx_string** %2491
  %2504 = call i64 @nyx_string_byte_length(%nyx_string* %2503)
  %2505 = sub i64 %2504, 3
  %2506 = call %nyx_string* @nyx_string_substring(%nyx_string* %2502, i64 0, i64 %2505)
  %2507 = ptrtoint %nyx_string* %2506 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2501, i64 %2507, i64 2)
  br label %merge472
else471:
  br label %merge472
merge472:
  %2508 = load i64, i64* %2472
  %2509 = add i64 %2508, 1
  store i64 %2509, i64* %2472
  br label %while_cond465
while_end467:
  %2510 = load { i64, i8* }*, { i64, i8* }** %2455
  ret { i64, i8* }* %2510
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
  %2511 = getelementptr [1 x i8], [1 x i8]* @.str259, i32 0, i32 0
  %2512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2511, i64 0)
  %2513 = alloca %nyx_string*
  store %nyx_string* %2512, %nyx_string** %2513
  %2514 = alloca i64
  store i64 0, i64* %2514
  %2515 = getelementptr [9 x i8], [9 x i8]* @.str260, i32 0, i32 0
  %2516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2515, i64 8)
  %2517 = alloca %nyx_string*
  store %nyx_string* %2516, %nyx_string** %2517
  %2518 = getelementptr [3 x i8], [3 x i8]* @.str261, i32 0, i32 0
  %2519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2518, i64 2)
  %2520 = alloca %nyx_string*
  store %nyx_string* %2519, %nyx_string** %2520
  %2521 = call i8* @llvm.stacksave()
  br label %while_cond473
while_cond473:
  %2522 = load i64, i64* %2514
  %2523 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2524 = call i64 @nyx_array_length({ i64, i8* }* %2523)
  %2525 = icmp slt i64 %2522, %2524
  br i1 %2525, label %while_body474, label %while_end475
while_body474:
  call void @llvm.stackrestore(i8* %2521)
  %2526 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2527 = load i64, i64* %2514
  %2528 = call i64 @nyx_array_get_checked({ i64, i8* }* %2526, i64 %2527, i64 2)
  %2529 = inttoptr i64 %2528 to %nyx_string*
  %2530 = alloca %nyx_string*
  store %nyx_string* %2529, %nyx_string** %2530
  %2531 = load %nyx_string*, %nyx_string** %2513
  %2532 = load %nyx_string*, %nyx_string** %2517
  %2533 = call %nyx_string* @nyx_string_concat(%nyx_string* %2531, %nyx_string* %2532)
  %2534 = load %nyx_string*, %nyx_string** %2530
  %2535 = call %nyx_string* @nyx_string_concat(%nyx_string* %2533, %nyx_string* %2534)
  %2536 = load %nyx_string*, %nyx_string** %2520
  %2537 = call %nyx_string* @nyx_string_concat(%nyx_string* %2535, %nyx_string* %2536)
  store %nyx_string* %2537, %nyx_string** %2513
  %2538 = load i64, i64* %2514
  %2539 = add i64 %2538, 1
  store i64 %2539, i64* %2514
  br label %while_cond473
while_end475:
  %2540 = load %nyx_string*, %nyx_string** %2513
  %2541 = getelementptr [36 x i8], [36 x i8]* @.str262, i32 0, i32 0
  %2542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2541, i64 35)
  %2543 = call %nyx_string* @nyx_string_concat(%nyx_string* %2540, %nyx_string* %2542)
  store %nyx_string* %2543, %nyx_string** %2513
  %2544 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2545 = getelementptr [13 x i8], [13 x i8]* @.str263, i32 0, i32 0
  %2546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2545, i64 12)
  %2547 = call %nyx_string* @nyx_string_concat(%nyx_string* %2544, %nyx_string* %2546)
  %2548 = load %nyx_string*, %nyx_string** %2513
  %2549 = ptrtoint %nyx_string* %2548 to i64
  %2550 = call i8* @nyx_string_to_cstr(%nyx_string* %2547)
  %2551 = inttoptr i64 %2549 to %nyx_string*
  %2552 = call i1 @nyx_write_file_safe(i8* %2550, %nyx_string* %2551)
  %2553 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2554 = getelementptr [14 x i8], [14 x i8]* @.str264, i32 0, i32 0
  %2555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2554, i64 13)
  %2556 = call %nyx_string* @nyx_string_concat(%nyx_string* %2553, %nyx_string* %2555)
  %2557 = alloca %nyx_string*
  store %nyx_string* %2556, %nyx_string** %2557
  %2558 = getelementptr [13 x i8], [13 x i8]* @.str265, i32 0, i32 0
  %2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2558, i64 12)
  %2560 = getelementptr [8 x i8], [8 x i8]* @.str266, i32 0, i32 0
  %2561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2560, i64 7)
  %2562 = call %nyx_string* @nyx_string_concat(%nyx_string* %2559, %nyx_string* %2561)
  %2563 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2564 = call %nyx_string* @nyx_string_concat(%nyx_string* %2562, %nyx_string* %2563)
  %2565 = getelementptr [19 x i8], [19 x i8]* @.str267, i32 0, i32 0
  %2566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2565, i64 18)
  %2567 = call %nyx_string* @nyx_string_concat(%nyx_string* %2564, %nyx_string* %2566)
  %2568 = getelementptr [5 x i8], [5 x i8]* @.str268, i32 0, i32 0
  %2569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2568, i64 4)
  %2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %2567, %nyx_string* %2569)
  %2571 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2572 = call %nyx_string* @nyx_string_concat(%nyx_string* %2570, %nyx_string* %2571)
  %2573 = getelementptr [24 x i8], [24 x i8]* @.str269, i32 0, i32 0
  %2574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2573, i64 23)
  %2575 = call %nyx_string* @nyx_string_concat(%nyx_string* %2572, %nyx_string* %2574)
  %2576 = getelementptr [5 x i8], [5 x i8]* @.str270, i32 0, i32 0
  %2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2576, i64 4)
  %2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %2575, %nyx_string* %2577)
  %2579 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2580 = call %nyx_string* @nyx_string_concat(%nyx_string* %2578, %nyx_string* %2579)
  %2581 = getelementptr [3 x i8], [3 x i8]* @.str271, i32 0, i32 0
  %2582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2581, i64 2)
  %2583 = call %nyx_string* @nyx_string_concat(%nyx_string* %2580, %nyx_string* %2582)
  %2584 = getelementptr [137 x i8], [137 x i8]* @.str272, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2584, i64 136)
  %2586 = call %nyx_string* @nyx_string_concat(%nyx_string* %2583, %nyx_string* %2585)
  %2587 = getelementptr [43 x i8], [43 x i8]* @.str273, i32 0, i32 0
  %2588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2587, i64 42)
  %2589 = call %nyx_string* @nyx_string_concat(%nyx_string* %2586, %nyx_string* %2588)
  %2590 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2591 = call %nyx_string* @nyx_string_concat(%nyx_string* %2589, %nyx_string* %2590)
  %2592 = getelementptr [38 x i8], [38 x i8]* @.str274, i32 0, i32 0
  %2593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2592, i64 37)
  %2594 = call %nyx_string* @nyx_string_concat(%nyx_string* %2591, %nyx_string* %2593)
  %2595 = load %nyx_string*, %nyx_string** %2557
  %2596 = call %nyx_string* @nyx_string_concat(%nyx_string* %2594, %nyx_string* %2595)
  %2597 = getelementptr [24 x i8], [24 x i8]* @.str275, i32 0, i32 0
  %2598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2597, i64 23)
  %2599 = call %nyx_string* @nyx_string_concat(%nyx_string* %2596, %nyx_string* %2598)
  %2600 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2601 = call %nyx_string* @nyx_string_concat(%nyx_string* %2599, %nyx_string* %2600)
  %2602 = getelementptr [21 x i8], [21 x i8]* @.str276, i32 0, i32 0
  %2603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2602, i64 20)
  %2604 = call %nyx_string* @nyx_string_concat(%nyx_string* %2601, %nyx_string* %2603)
  %2605 = getelementptr [7 x i8], [7 x i8]* @.str277, i32 0, i32 0
  %2606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2605, i64 6)
  %2607 = call %nyx_string* @nyx_string_concat(%nyx_string* %2604, %nyx_string* %2606)
  %2608 = getelementptr [17 x i8], [17 x i8]* @.str278, i32 0, i32 0
  %2609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2608, i64 16)
  %2610 = call %nyx_string* @nyx_string_concat(%nyx_string* %2607, %nyx_string* %2609)
  %2611 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2612 = call %nyx_string* @nyx_string_concat(%nyx_string* %2610, %nyx_string* %2611)
  %2613 = getelementptr [19 x i8], [19 x i8]* @.str279, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2613, i64 18)
  %2615 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2614)
  %2616 = getelementptr [10 x i8], [10 x i8]* @.str280, i32 0, i32 0
  %2617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2616, i64 9)
  %2618 = call %nyx_string* @nyx_string_concat(%nyx_string* %2615, %nyx_string* %2617)
  %2619 = alloca %nyx_string*
  store %nyx_string* %2618, %nyx_string** %2619
  %2620 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2621 = getelementptr [13 x i8], [13 x i8]* @.str281, i32 0, i32 0
  %2622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2621, i64 12)
  %2623 = call %nyx_string* @nyx_string_concat(%nyx_string* %2620, %nyx_string* %2622)
  %2624 = load %nyx_string*, %nyx_string** %2619
  %2625 = ptrtoint %nyx_string* %2624 to i64
  %2626 = call i8* @nyx_string_to_cstr(%nyx_string* %2623)
  %2627 = inttoptr i64 %2625 to %nyx_string*
  %2628 = call i1 @nyx_write_file_safe(i8* %2626, %nyx_string* %2627)
  %2629 = getelementptr [7 x i8], [7 x i8]* @.str282, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2629, i64 6)
  %2631 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2632 = call %nyx_string* @nyx_string_concat(%nyx_string* %2630, %nyx_string* %2631)
  %2633 = getelementptr [14 x i8], [14 x i8]* @.str283, i32 0, i32 0
  %2634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2633, i64 13)
  %2635 = call %nyx_string* @nyx_string_concat(%nyx_string* %2632, %nyx_string* %2634)
  %2636 = call i8* @nyx_string_to_cstr(%nyx_string* %2635)
  %2637 = call i64 @nyx_exec_code(i8* %2636)
  %2638 = load %nyx_string*, %nyx_string** %2557
  ret %nyx_string* %2638
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
  %2639 = getelementptr [9 x i8], [9 x i8]* @.str284, i32 0, i32 0
  %2640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2639, i64 8)
  %2641 = call i8* @nyx_string_to_cstr(%nyx_string* %2640)
  %2642 = call %nyx_string* @nyx_getenv(i8* %2641)
  %2643 = alloca %nyx_string*
  store %nyx_string* %2642, %nyx_string** %2643
  %2644 = getelementptr [4 x i8], [4 x i8]* @.str285, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2644, i64 3)
  %2646 = call i8* @nyx_string_to_cstr(%nyx_string* %2645)
  %2647 = call %nyx_string* @nyx_getenv(i8* %2646)
  %2648 = alloca %nyx_string*
  store %nyx_string* %2647, %nyx_string** %2648
  %2649 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %2650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2649, i64 0)
  %2651 = call i8* @nyx_string_to_cstr(%nyx_string* %2650)
  call void @nyx_print_string(i8* %2651)
  %2652 = getelementptr [36 x i8], [36 x i8]* @.str287, i32 0, i32 0
  %2653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2652, i64 35)
  %2654 = call i8* @nyx_string_to_cstr(%nyx_string* %2653)
  call void @nyx_print_string(i8* %2654)
  %2655 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2655, i64 0)
  %2657 = alloca %nyx_string*
  store %nyx_string* %2656, %nyx_string** %2657
  %2658 = alloca i64
  store i64 0, i64* %2658
  %2659 = call i8* @nyx_map_new(i32 0)
  %2660 = alloca i8*
  store i8* %2659, i8** %2660
  %2661 = call { i64, i8* }* @nyx_array_new_ptr()
  %2662 = alloca { i64, i8* }*
  store { i64, i8* }* %2661, { i64, i8* }** %2662
  %2663 = alloca i64
  store i64 0, i64* %2663
  %2664 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2664, i64 1)
  %2666 = alloca %nyx_string*
  store %nyx_string* %2665, %nyx_string** %2666
  %2667 = getelementptr [9 x i8], [9 x i8]* @.str290, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2667, i64 8)
  %2669 = alloca %nyx_string*
  store %nyx_string* %2668, %nyx_string** %2669
  %2670 = getelementptr [3 x i8], [3 x i8]* @.str291, i32 0, i32 0
  %2671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2670, i64 2)
  %2672 = alloca %nyx_string*
  store %nyx_string* %2671, %nyx_string** %2672
  %2673 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %2674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2673, i64 1)
  %2675 = alloca %nyx_string*
  store %nyx_string* %2674, %nyx_string** %2675
  %2676 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2676, i64 1)
  %2678 = alloca %nyx_string*
  store %nyx_string* %2677, %nyx_string** %2678
  %2679 = call i8* @llvm.stacksave()
  br label %while_cond476
while_cond476:
  %2680 = load i64, i64* %2663
  %2681 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2682 = call i64 @nyx_array_length({ i64, i8* }* %2681)
  %2683 = icmp slt i64 %2680, %2682
  br i1 %2683, label %while_body477, label %while_end478
while_body477:
  call void @llvm.stackrestore(i8* %2679)
  %2684 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2685 = load i64, i64* %2663
  %2686 = call i64 @nyx_array_get_checked({ i64, i8* }* %2684, i64 %2685, i64 2)
  %2687 = inttoptr i64 %2686 to %nyx_string*
  %2688 = alloca %nyx_string*
  store %nyx_string* %2687, %nyx_string** %2688
  %2689 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2690 = load i64, i64* %2663
  %2691 = call i64 @nyx_array_get_checked({ i64, i8* }* %2689, i64 %2690, i64 2)
  %2692 = inttoptr i64 %2691 to %nyx_string*
  %2693 = alloca %nyx_string*
  store %nyx_string* %2692, %nyx_string** %2693
  %2694 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2695 = load %nyx_string*, %nyx_string** %2666
  %2696 = call %nyx_string* @nyx_string_concat(%nyx_string* %2694, %nyx_string* %2695)
  %2697 = load %nyx_string*, %nyx_string** %2688
  %2698 = call %nyx_string* @nyx_string_concat(%nyx_string* %2696, %nyx_string* %2697)
  %2699 = load %nyx_string*, %nyx_string** %2669
  %2700 = call %nyx_string* @nyx_string_concat(%nyx_string* %2698, %nyx_string* %2699)
  %2701 = alloca %nyx_string*
  store %nyx_string* %2700, %nyx_string** %2701
  %2702 = load %nyx_string*, %nyx_string** %2701
  %2703 = call i1 @cov_profraw_valid(%nyx_string* %2702)
  br i1 %2703, label %then479, label %else480
then479:
  %2704 = load %nyx_string*, %nyx_string** %2657
  %2705 = load %nyx_string*, %nyx_string** %2672
  %2706 = call %nyx_string* @nyx_string_concat(%nyx_string* %2704, %nyx_string* %2705)
  %2707 = load %nyx_string*, %nyx_string** %2701
  %2708 = call %nyx_string* @nyx_string_concat(%nyx_string* %2706, %nyx_string* %2707)
  %2709 = load %nyx_string*, %nyx_string** %2675
  %2710 = call %nyx_string* @nyx_string_concat(%nyx_string* %2708, %nyx_string* %2709)
  store %nyx_string* %2710, %nyx_string** %2657
  %2711 = load i64, i64* %2658
  %2712 = add i64 %2711, 1
  store i64 %2712, i64* %2658
  %2713 = load i8*, i8** %2660
  %2714 = load %nyx_string*, %nyx_string** %2688
  %2715 = load %nyx_string*, %nyx_string** %2678
  %2716 = call i8* @nyx_string_to_cstr(%nyx_string* %2714)
  %2717 = bitcast %nyx_string* %2715 to i8*
  call void @nyx_map_insert_str(i8* %2713, i8* %2716, i8* %2717)
  br label %merge481
else480:
  %2718 = load { i64, i8* }*, { i64, i8* }** %2662
  %2719 = load %nyx_string*, %nyx_string** %2693
  %2720 = ptrtoint %nyx_string* %2719 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2718, i64 %2720, i64 2)
  br label %merge481
merge481:
  %2721 = load i64, i64* %2663
  %2722 = add i64 %2721, 1
  store i64 %2722, i64* %2663
  br label %while_cond476
while_end478:
  %2723 = call i8* @nyx_map_new(i32 0)
  %2724 = alloca i8*
  store i8* %2723, i8** %2724
  %2725 = load i64, i64* %2658
  %2726 = icmp sgt i64 %2725, 0
  br i1 %2726, label %then482, label %else483
then482:
  %2727 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2728 = getelementptr [17 x i8], [17 x i8]* @.str294, i32 0, i32 0
  %2729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2728, i64 16)
  %2730 = call %nyx_string* @nyx_string_concat(%nyx_string* %2727, %nyx_string* %2729)
  %2731 = alloca %nyx_string*
  store %nyx_string* %2730, %nyx_string** %2731
  %2732 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2733 = getelementptr [12 x i8], [12 x i8]* @.str295, i32 0, i32 0
  %2734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2733, i64 11)
  %2735 = call %nyx_string* @nyx_string_concat(%nyx_string* %2732, %nyx_string* %2734)
  %2736 = load %nyx_string*, %nyx_string** %2731
  %2737 = call %nyx_string* @nyx_string_concat(%nyx_string* %2735, %nyx_string* %2736)
  %2738 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %2739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2738, i64 1)
  %2740 = call %nyx_string* @nyx_string_concat(%nyx_string* %2737, %nyx_string* %2739)
  %2741 = load %nyx_string*, %nyx_string** %2657
  %2742 = call %nyx_string* @nyx_string_concat(%nyx_string* %2740, %nyx_string* %2741)
  %2743 = getelementptr [5 x i8], [5 x i8]* @.str297, i32 0, i32 0
  %2744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2743, i64 4)
  %2745 = call %nyx_string* @nyx_string_concat(%nyx_string* %2742, %nyx_string* %2744)
  %2746 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2747 = call %nyx_string* @nyx_string_concat(%nyx_string* %2745, %nyx_string* %2746)
  %2748 = getelementptr [17 x i8], [17 x i8]* @.str298, i32 0, i32 0
  %2749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2748, i64 16)
  %2750 = call %nyx_string* @nyx_string_concat(%nyx_string* %2747, %nyx_string* %2749)
  %2751 = call i8* @nyx_string_to_cstr(%nyx_string* %2750)
  %2752 = call i64 @nyx_exec_code(i8* %2751)
  %2753 = alloca i64
  store i64 %2752, i64* %2753
  %2754 = load i64, i64* %2753
  %2755 = icmp ne i64 %2754, 0
  br i1 %2755, label %then485, label %else486
then485:
  %2756 = getelementptr [36 x i8], [36 x i8]* @.str299, i32 0, i32 0
  %2757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2756, i64 35)
  %2758 = call i8* @nyx_string_to_cstr(%nyx_string* %2757)
  call void @nyx_print_string(i8* %2758)
  %2759 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2760 = getelementptr [11 x i8], [11 x i8]* @.str300, i32 0, i32 0
  %2761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2760, i64 10)
  %2762 = call %nyx_string* @nyx_string_concat(%nyx_string* %2759, %nyx_string* %2761)
  %2763 = call i8* @nyx_string_to_cstr(%nyx_string* %2762)
  %2764 = call %nyx_string* @nyx_read_file(i8* %2763)
  %2765 = call i8* @nyx_string_to_cstr(%nyx_string* %2764)
  call void @nyx_print_string(i8* %2765)
  ret i64 1
else486:
  br label %merge487
merge487:
  %2766 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2767 = getelementptr [33 x i8], [33 x i8]* @.str301, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2767, i64 32)
  %2769 = call %nyx_string* @nyx_string_concat(%nyx_string* %2766, %nyx_string* %2768)
  %2770 = load %nyx_string*, %nyx_string** %2731
  %2771 = call %nyx_string* @nyx_string_concat(%nyx_string* %2769, %nyx_string* %2770)
  %2772 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %2773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2772, i64 5)
  %2774 = call %nyx_string* @nyx_string_concat(%nyx_string* %2771, %nyx_string* %2773)
  %2775 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2776 = call %nyx_string* @nyx_string_concat(%nyx_string* %2774, %nyx_string* %2775)
  %2777 = getelementptr [16 x i8], [16 x i8]* @.str303, i32 0, i32 0
  %2778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2777, i64 15)
  %2779 = call %nyx_string* @nyx_string_concat(%nyx_string* %2776, %nyx_string* %2778)
  %2780 = call i8* @nyx_string_to_cstr(%nyx_string* %2779)
  %2781 = call i64 @nyx_exec_code(i8* %2780)
  %2782 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2783 = getelementptr [10 x i8], [10 x i8]* @.str304, i32 0, i32 0
  %2784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2783, i64 9)
  %2785 = call %nyx_string* @nyx_string_concat(%nyx_string* %2782, %nyx_string* %2784)
  %2786 = call i8* @nyx_string_to_cstr(%nyx_string* %2785)
  %2787 = call %nyx_string* @nyx_read_file(i8* %2786)
  %2788 = call i8* @cov_called_from_show(%nyx_string* %2787)
  store i8* %2788, i8** %2724
  br label %merge484
else483:
  br label %merge484
merge484:
  %2789 = call i8* @nyx_map_new(i32 0)
  %2790 = alloca i8*
  store i8* %2789, i8** %2790
  %2791 = call i8* @nyx_map_new(i32 0)
  %2792 = alloca i8*
  store i8* %2791, i8** %2792
  %2793 = call i8* @nyx_map_new(i32 0)
  %2794 = alloca i8*
  store i8* %2793, i8** %2794
  %2795 = call i8* @nyx_map_new(i32 0)
  %2796 = alloca i8*
  store i8* %2795, i8** %2796
  store i64 0, i64* %2663
  %2797 = getelementptr [2 x i8], [2 x i8]* @.str305, i32 0, i32 0
  %2798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2797, i64 1)
  %2799 = alloca %nyx_string*
  store %nyx_string* %2798, %nyx_string** %2799
  %2800 = getelementptr [5 x i8], [5 x i8]* @.str306, i32 0, i32 0
  %2801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2800, i64 4)
  %2802 = alloca %nyx_string*
  store %nyx_string* %2801, %nyx_string** %2802
  %2803 = getelementptr [2 x i8], [2 x i8]* @.str307, i32 0, i32 0
  %2804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2803, i64 1)
  %2805 = alloca %nyx_string*
  store %nyx_string* %2804, %nyx_string** %2805
  %2806 = getelementptr [1 x i8], [1 x i8]* @.str308, i32 0, i32 0
  %2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2806, i64 0)
  %2808 = alloca %nyx_string*
  store %nyx_string* %2807, %nyx_string** %2808
  %2809 = getelementptr [2 x i8], [2 x i8]* @.str309, i32 0, i32 0
  %2810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2809, i64 1)
  %2811 = alloca %nyx_string*
  store %nyx_string* %2810, %nyx_string** %2811
  %2812 = getelementptr [5 x i8], [5 x i8]* @.str310, i32 0, i32 0
  %2813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2812, i64 4)
  %2814 = alloca %nyx_string*
  store %nyx_string* %2813, %nyx_string** %2814
  %2815 = call i8* @llvm.stacksave()
  br label %while_cond488
while_cond488:
  %2816 = load i64, i64* %2663
  %2817 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2818 = call i64 @nyx_array_length({ i64, i8* }* %2817)
  %2819 = icmp slt i64 %2816, %2818
  br i1 %2819, label %while_body489, label %while_end490
while_body489:
  call void @llvm.stackrestore(i8* %2815)
  %2820 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2821 = load i64, i64* %2663
  %2822 = call i64 @nyx_array_get_checked({ i64, i8* }* %2820, i64 %2821, i64 2)
  %2823 = inttoptr i64 %2822 to %nyx_string*
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2826 = load %nyx_string*, %nyx_string** %2799
  %2827 = call %nyx_string* @nyx_string_concat(%nyx_string* %2825, %nyx_string* %2826)
  %2828 = load %nyx_string*, %nyx_string** %2824
  %2829 = call %nyx_string* @nyx_string_concat(%nyx_string* %2827, %nyx_string* %2828)
  %2830 = load %nyx_string*, %nyx_string** %2802
  %2831 = call %nyx_string* @nyx_string_concat(%nyx_string* %2829, %nyx_string* %2830)
  %2832 = alloca %nyx_string*
  store %nyx_string* %2831, %nyx_string** %2832
  %2833 = load %nyx_string*, %nyx_string** %2832
  %2834 = call i8* @nyx_string_to_cstr(%nyx_string* %2833)
  %2835 = call i1 @nyx_file_exists(i8* %2834)
  br i1 %2835, label %then491, label %else492
then491:
  %2836 = load %nyx_string*, %nyx_string** %2832
  %2837 = call i8* @nyx_string_to_cstr(%nyx_string* %2836)
  %2838 = call %nyx_string* @nyx_read_file(i8* %2837)
  %2839 = load %nyx_string*, %nyx_string** %2805
  %2840 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2838, %nyx_string* %2839)
  %2841 = alloca { i64, i8* }*
  store { i64, i8* }* %2840, { i64, i8* }** %2841
  %2842 = alloca i64
  store i64 0, i64* %2842
  %2843 = call i8* @llvm.stacksave()
  br label %while_cond494
while_cond494:
  %2844 = load i64, i64* %2842
  %2845 = load { i64, i8* }*, { i64, i8* }** %2841
  %2846 = call i64 @nyx_array_length({ i64, i8* }* %2845)
  %2847 = icmp slt i64 %2844, %2846
  br i1 %2847, label %while_body495, label %while_end496
while_body495:
  call void @llvm.stackrestore(i8* %2843)
  %2848 = load { i64, i8* }*, { i64, i8* }** %2841
  %2849 = load i64, i64* %2842
  %2850 = call i64 @nyx_array_get_checked({ i64, i8* }* %2848, i64 %2849, i64 2)
  %2851 = inttoptr i64 %2850 to %nyx_string*
  %2852 = alloca %nyx_string*
  store %nyx_string* %2851, %nyx_string** %2852
  %2853 = load %nyx_string*, %nyx_string** %2852
  %2854 = call { i64, i8* }* @cov_fields(%nyx_string* %2853)
  %2855 = alloca { i64, i8* }*
  store { i64, i8* }* %2854, { i64, i8* }** %2855
  %2856 = load { i64, i8* }*, { i64, i8* }** %2855
  %2857 = call i64 @nyx_array_length({ i64, i8* }* %2856)
  %2858 = icmp sge i64 %2857, 5
  br i1 %2858, label %then497, label %else498
then497:
  %2859 = load { i64, i8* }*, { i64, i8* }** %2855
  %2860 = call i64 @nyx_array_get_checked({ i64, i8* }* %2859, i64 0, i64 2)
  %2861 = inttoptr i64 %2860 to %nyx_string*
  %2862 = alloca %nyx_string*
  store %nyx_string* %2861, %nyx_string** %2862
  %2863 = load { i64, i8* }*, { i64, i8* }** %2855
  %2864 = call i64 @nyx_array_get_checked({ i64, i8* }* %2863, i64 1, i64 2)
  %2865 = inttoptr i64 %2864 to %nyx_string*
  %2866 = alloca %nyx_string*
  store %nyx_string* %2865, %nyx_string** %2866
  %2867 = load { i64, i8* }*, { i64, i8* }** %2855
  %2868 = call i64 @nyx_array_get_checked({ i64, i8* }* %2867, i64 3, i64 2)
  %2869 = inttoptr i64 %2868 to %nyx_string*
  %2870 = alloca %nyx_string*
  store %nyx_string* %2869, %nyx_string** %2870
  %2871 = load { i64, i8* }*, { i64, i8* }** %2855
  %2872 = call i64 @nyx_array_get_checked({ i64, i8* }* %2871, i64 4, i64 2)
  %2873 = inttoptr i64 %2872 to %nyx_string*
  %2874 = alloca %nyx_string*
  store %nyx_string* %2873, %nyx_string** %2874
  %2875 = load %nyx_string*, %nyx_string** %2866
  %2876 = load %nyx_string*, %nyx_string** %2808
  %2877 = call i1 @nyx_string_equals(%nyx_string* %2875, %nyx_string* %2876)
  %2878 = xor i1 %2877, true
  br i1 %2878, label %then500, label %else501
then500:
  %2879 = load i8*, i8** %2796
  %2880 = load %nyx_string*, %nyx_string** %2866
  %2881 = load %nyx_string*, %nyx_string** %2811
  %2882 = call i8* @nyx_string_to_cstr(%nyx_string* %2880)
  %2883 = bitcast %nyx_string* %2881 to i8*
  call void @nyx_map_insert_str(i8* %2879, i8* %2882, i8* %2883)
  br label %merge502
else501:
  br label %merge502
merge502:
  %2884 = load i8*, i8** %2660
  %2885 = load %nyx_string*, %nyx_string** %2824
  %2886 = call i8* @nyx_string_to_cstr(%nyx_string* %2885)
  %2887 = call i1 @nyx_map_contains_str(i8* %2884, i8* %2886)
  br i1 %2887, label %then503, label %else504
then503:
  %2888 = load i8*, i8** %2790
  %2889 = load %nyx_string*, %nyx_string** %2862
  %2890 = load %nyx_string*, %nyx_string** %2811
  %2891 = call i8* @nyx_string_to_cstr(%nyx_string* %2889)
  %2892 = bitcast %nyx_string* %2890 to i8*
  call void @nyx_map_insert_str(i8* %2888, i8* %2891, i8* %2892)
  %2893 = alloca i1
  store i1 false, i1* %2893
  %2894 = load %nyx_string*, %nyx_string** %2874
  %2895 = load %nyx_string*, %nyx_string** %2814
  %2896 = call i1 @nyx_string_equals(%nyx_string* %2894, %nyx_string* %2895)
  br i1 %2896, label %sc_and_rhs506, label %sc_and_end507
sc_and_rhs506:
  %2897 = load i8*, i8** %2724
  %2898 = load %nyx_string*, %nyx_string** %2862
  %2899 = call i8* @nyx_string_to_cstr(%nyx_string* %2898)
  %2900 = call i1 @nyx_map_contains_str(i8* %2897, i8* %2899)
  store i1 %2900, i1* %2893
  br label %sc_and_end507
sc_and_end507:
  %2901 = load i1, i1* %2893
  br i1 %2901, label %then508, label %else509
then508:
  %2902 = load i8*, i8** %2794
  %2903 = load %nyx_string*, %nyx_string** %2870
  %2904 = load %nyx_string*, %nyx_string** %2811
  %2905 = call i8* @nyx_string_to_cstr(%nyx_string* %2903)
  %2906 = bitcast %nyx_string* %2904 to i8*
  call void @nyx_map_insert_str(i8* %2902, i8* %2905, i8* %2906)
  br label %merge510
else509:
  br label %merge510
merge510:
  br label %merge505
else504:
  %2907 = load i8*, i8** %2792
  %2908 = load %nyx_string*, %nyx_string** %2862
  %2909 = load %nyx_string*, %nyx_string** %2811
  %2910 = call i8* @nyx_string_to_cstr(%nyx_string* %2908)
  %2911 = bitcast %nyx_string* %2909 to i8*
  call void @nyx_map_insert_str(i8* %2907, i8* %2910, i8* %2911)
  br label %merge505
merge505:
  br label %merge499
else498:
  br label %merge499
merge499:
  %2912 = load i64, i64* %2842
  %2913 = add i64 %2912, 1
  store i64 %2913, i64* %2842
  br label %while_cond494
while_end496:
  br label %merge493
else492:
  br label %merge493
merge493:
  %2914 = load i64, i64* %2663
  %2915 = add i64 %2914, 1
  store i64 %2915, i64* %2663
  br label %while_cond488
while_end490:
  %2916 = call { i64, i8* }* @cov_src_modules()
  %2917 = alloca { i64, i8* }*
  store { i64, i8* }* %2916, { i64, i8* }** %2917
  %2918 = load { i64, i8* }*, { i64, i8* }** %2917
  %2919 = call i64 @nyx_array_length({ i64, i8* }* %2918)
  %2920 = icmp eq i64 %2919, 0
  br i1 %2920, label %then511, label %else512
then511:
  %2921 = getelementptr [27 x i8], [27 x i8]* @.str311, i32 0, i32 0
  %2922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2921, i64 26)
  %2923 = call i8* @nyx_string_to_cstr(%nyx_string* %2922)
  call void @nyx_print_string(i8* %2923)
  ret i64 0
else512:
  br label %merge513
merge513:
  %2924 = load %nyx_string*, %nyx_string** %2643
  %2925 = load %nyx_string*, %nyx_string** %2648
  %2926 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2927 = load { i64, i8* }*, { i64, i8* }** %2917
  %2928 = call %nyx_string* @cov_universe(%nyx_string* %2924, %nyx_string* %2925, %nyx_string* %2926, { i64, i8* }* %2927)
  %2929 = alloca %nyx_string*
  store %nyx_string* %2928, %nyx_string** %2929
  %2930 = load %nyx_string*, %nyx_string** %2929
  %2931 = call i8* @nyx_string_to_cstr(%nyx_string* %2930)
  %2932 = call i1 @nyx_file_exists(i8* %2931)
  %2933 = xor i1 %2932, true
  br i1 %2933, label %then514, label %else515
then514:
  %2934 = getelementptr [68 x i8], [68 x i8]* @.str312, i32 0, i32 0
  %2935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2934, i64 67)
  %2936 = call i8* @nyx_string_to_cstr(%nyx_string* %2935)
  call void @nyx_print_string(i8* %2936)
  %2937 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2938 = getelementptr [14 x i8], [14 x i8]* @.str313, i32 0, i32 0
  %2939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2938, i64 13)
  %2940 = call %nyx_string* @nyx_string_concat(%nyx_string* %2937, %nyx_string* %2939)
  %2941 = call i8* @nyx_string_to_cstr(%nyx_string* %2940)
  %2942 = call i1 @nyx_file_exists(i8* %2941)
  br i1 %2942, label %then517, label %else518
then517:
  %2943 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2944 = getelementptr [14 x i8], [14 x i8]* @.str314, i32 0, i32 0
  %2945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2944, i64 13)
  %2946 = call %nyx_string* @nyx_string_concat(%nyx_string* %2943, %nyx_string* %2945)
  %2947 = call i8* @nyx_string_to_cstr(%nyx_string* %2946)
  %2948 = call %nyx_string* @nyx_read_file(i8* %2947)
  %2949 = call i8* @nyx_string_to_cstr(%nyx_string* %2948)
  call void @nyx_print_string(i8* %2949)
  br label %merge519
else518:
  br label %merge519
merge519:
  ret i64 1
else515:
  br label %merge516
merge516:
  %2950 = load %nyx_string*, %nyx_string** %2929
  %2951 = call i8* @nyx_string_to_cstr(%nyx_string* %2950)
  %2952 = call %nyx_string* @nyx_read_file(i8* %2951)
  %2953 = getelementptr [2 x i8], [2 x i8]* @.str315, i32 0, i32 0
  %2954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2953, i64 1)
  %2955 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2952, %nyx_string* %2954)
  %2956 = alloca { i64, i8* }*
  store { i64, i8* }* %2955, { i64, i8* }** %2956
  %2957 = call { i64, i8* }* @nyx_array_new_ptr()
  %2958 = alloca { i64, i8* }*
  store { i64, i8* }* %2957, { i64, i8* }** %2958
  %2959 = alloca i64
  store i64 0, i64* %2959
  %2960 = getelementptr [3 x i8], [3 x i8]* @.str316, i32 0, i32 0
  %2961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %2960, i64 2)
  %2962 = alloca %nyx_string*
  store %nyx_string* %2961, %nyx_string** %2962
  %2963 = getelementptr [7 x i8], [7 x i8]* @.str317, i32 0, i32 0
  %2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %2963, i64 6)
  %2965 = alloca %nyx_string*
  store %nyx_string* %2964, %nyx_string** %2965
  %2966 = getelementptr [6 x i8], [6 x i8]* @.str318, i32 0, i32 0
  %2967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %2966, i64 5)
  %2968 = alloca %nyx_string*
  store %nyx_string* %2967, %nyx_string** %2968
  %2969 = getelementptr [9 x i8], [9 x i8]* @.str319, i32 0, i32 0
  %2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %2969, i64 8)
  %2971 = alloca %nyx_string*
  store %nyx_string* %2970, %nyx_string** %2971
  %2972 = getelementptr [5 x i8], [5 x i8]* @.str320, i32 0, i32 0
  %2973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %2972, i64 4)
  %2974 = alloca %nyx_string*
  store %nyx_string* %2973, %nyx_string** %2974
  %2975 = getelementptr [5 x i8], [5 x i8]* @.str321, i32 0, i32 0
  %2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %2975, i64 4)
  %2977 = alloca %nyx_string*
  store %nyx_string* %2976, %nyx_string** %2977
  %2978 = getelementptr [3 x i8], [3 x i8]* @.str322, i32 0, i32 0
  %2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %2978, i64 2)
  %2980 = alloca %nyx_string*
  store %nyx_string* %2979, %nyx_string** %2980
  %2981 = getelementptr [3 x i8], [3 x i8]* @.str323, i32 0, i32 0
  %2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %2981, i64 2)
  %2983 = alloca %nyx_string*
  store %nyx_string* %2982, %nyx_string** %2983
  %2984 = getelementptr [10 x i8], [10 x i8]* @.str324, i32 0, i32 0
  %2985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %2984, i64 9)
  %2986 = alloca %nyx_string*
  store %nyx_string* %2985, %nyx_string** %2986
  %2987 = getelementptr [5 x i8], [5 x i8]* @.str325, i32 0, i32 0
  %2988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %2987, i64 4)
  %2989 = alloca %nyx_string*
  store %nyx_string* %2988, %nyx_string** %2989
  %2990 = getelementptr [2 x i8], [2 x i8]* @.str326, i32 0, i32 0
  %2991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %2990, i64 1)
  %2992 = alloca %nyx_string*
  store %nyx_string* %2991, %nyx_string** %2992
  %2993 = call i8* @llvm.stacksave()
  br label %while_cond520
while_cond520:
  %2994 = load i64, i64* %2959
  %2995 = load { i64, i8* }*, { i64, i8* }** %2956
  %2996 = call i64 @nyx_array_length({ i64, i8* }* %2995)
  %2997 = icmp slt i64 %2994, %2996
  br i1 %2997, label %while_body521, label %while_end522
while_body521:
  call void @llvm.stackrestore(i8* %2993)
  %2998 = load { i64, i8* }*, { i64, i8* }** %2956
  %2999 = load i64, i64* %2959
  %3000 = call i64 @nyx_array_get_checked({ i64, i8* }* %2998, i64 %2999, i64 2)
  %3001 = inttoptr i64 %3000 to %nyx_string*
  %3002 = alloca %nyx_string*
  store %nyx_string* %3001, %nyx_string** %3002
  %3003 = load %nyx_string*, %nyx_string** %3002
  %3004 = call { i64, i8* }* @cov_fields(%nyx_string* %3003)
  %3005 = alloca { i64, i8* }*
  store { i64, i8* }* %3004, { i64, i8* }** %3005
  %3006 = load { i64, i8* }*, { i64, i8* }** %3005
  %3007 = call i64 @nyx_array_length({ i64, i8* }* %3006)
  %3008 = icmp sge i64 %3007, 5
  br i1 %3008, label %then523, label %else524
then523:
  %3009 = load { i64, i8* }*, { i64, i8* }** %3005
  %3010 = call i64 @nyx_array_get_checked({ i64, i8* }* %3009, i64 0, i64 2)
  %3011 = inttoptr i64 %3010 to %nyx_string*
  %3012 = alloca %nyx_string*
  store %nyx_string* %3011, %nyx_string** %3012
  %3013 = load { i64, i8* }*, { i64, i8* }** %3005
  %3014 = call i64 @nyx_array_get_checked({ i64, i8* }* %3013, i64 1, i64 2)
  %3015 = inttoptr i64 %3014 to %nyx_string*
  %3016 = alloca %nyx_string*
  store %nyx_string* %3015, %nyx_string** %3016
  %3017 = load { i64, i8* }*, { i64, i8* }** %3005
  %3018 = call i64 @nyx_array_get_checked({ i64, i8* }* %3017, i64 2, i64 2)
  %3019 = inttoptr i64 %3018 to %nyx_string*
  %3020 = alloca %nyx_string*
  store %nyx_string* %3019, %nyx_string** %3020
  %3021 = load { i64, i8* }*, { i64, i8* }** %3005
  %3022 = call i64 @nyx_array_get_checked({ i64, i8* }* %3021, i64 3, i64 2)
  %3023 = inttoptr i64 %3022 to %nyx_string*
  %3024 = alloca %nyx_string*
  store %nyx_string* %3023, %nyx_string** %3024
  %3025 = load { i64, i8* }*, { i64, i8* }** %3005
  %3026 = call i64 @nyx_array_get_checked({ i64, i8* }* %3025, i64 4, i64 2)
  %3027 = inttoptr i64 %3026 to %nyx_string*
  %3028 = alloca %nyx_string*
  store %nyx_string* %3027, %nyx_string** %3028
  %3029 = alloca i1
  store i1 true, i1* %3029
  %3030 = alloca i1
  store i1 true, i1* %3030
  %3031 = alloca i1
  store i1 true, i1* %3031
  %3032 = load %nyx_string*, %nyx_string** %3028
  %3033 = load %nyx_string*, %nyx_string** %2962
  %3034 = call i1 @nyx_string_equals(%nyx_string* %3032, %nyx_string* %3033)
  br i1 %3034, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %3035 = load %nyx_string*, %nyx_string** %3028
  %3036 = load %nyx_string*, %nyx_string** %2965
  %3037 = call i1 @nyx_string_equals(%nyx_string* %3035, %nyx_string* %3036)
  store i1 %3037, i1* %3031
  br label %sc_or_end527
sc_or_end527:
  %3038 = load i1, i1* %3031
  br i1 %3038, label %sc_or_end529, label %sc_or_rhs528
sc_or_rhs528:
  %3039 = load %nyx_string*, %nyx_string** %3028
  %3040 = load %nyx_string*, %nyx_string** %2968
  %3041 = call i1 @nyx_string_equals(%nyx_string* %3039, %nyx_string* %3040)
  store i1 %3041, i1* %3030
  br label %sc_or_end529
sc_or_end529:
  %3042 = load i1, i1* %3030
  br i1 %3042, label %sc_or_end531, label %sc_or_rhs530
sc_or_rhs530:
  %3043 = load %nyx_string*, %nyx_string** %3028
  %3044 = load %nyx_string*, %nyx_string** %2971
  %3045 = call i1 @nyx_string_equals(%nyx_string* %3043, %nyx_string* %3044)
  store i1 %3045, i1* %3029
  br label %sc_or_end531
sc_or_end531:
  %3046 = load i1, i1* %3029
  %3047 = alloca i1
  store i1 %3046, i1* %3047
  %3048 = alloca i1
  store i1 false, i1* %3048
  %3049 = alloca i1
  store i1 false, i1* %3049
  %3050 = load i1, i1* %3047
  br i1 %3050, label %sc_and_rhs532, label %sc_and_end533
sc_and_rhs532:
  %3051 = load %nyx_string*, %nyx_string** %3016
  %3052 = load %nyx_string*, %nyx_string** %2974
  %3053 = call i1 @nyx_string_starts_with(%nyx_string* %3051, %nyx_string* %3052)
  store i1 %3053, i1* %3049
  br label %sc_and_end533
sc_and_end533:
  %3054 = load i1, i1* %3049
  br i1 %3054, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %3055 = load %nyx_string*, %nyx_string** %3024
  %3056 = load %nyx_string*, %nyx_string** %2977
  %3057 = call i1 @nyx_string_equals(%nyx_string* %3055, %nyx_string* %3056)
  %3058 = xor i1 %3057, true
  store i1 %3058, i1* %3048
  br label %sc_and_end535
sc_and_end535:
  %3059 = load i1, i1* %3048
  br i1 %3059, label %then536, label %else537
then536:
  %3060 = load i8*, i8** %2724
  %3061 = load %nyx_string*, %nyx_string** %3012
  %3062 = call i8* @nyx_string_to_cstr(%nyx_string* %3061)
  %3063 = call i1 @nyx_map_contains_str(i8* %3060, i8* %3062)
  %3064 = alloca i1
  store i1 %3063, i1* %3064
  %3065 = load %nyx_string*, %nyx_string** %3028
  %3066 = load %nyx_string*, %nyx_string** %2971
  %3067 = call i1 @nyx_string_equals(%nyx_string* %3065, %nyx_string* %3066)
  br i1 %3067, label %then539, label %else540
then539:
  %3068 = load i8*, i8** %2794
  %3069 = load %nyx_string*, %nyx_string** %3012
  %3070 = call i8* @nyx_string_to_cstr(%nyx_string* %3069)
  %3071 = call i1 @nyx_map_contains_str(i8* %3068, i8* %3070)
  store i1 %3071, i1* %3064
  br label %merge541
else540:
  br label %merge541
merge541:
  %3072 = load %nyx_string*, %nyx_string** %2980
  %3073 = alloca %nyx_string*
  store %nyx_string* %3072, %nyx_string** %3073
  %3074 = load i1, i1* %3064
  br i1 %3074, label %then542, label %else543
then542:
  %3075 = load %nyx_string*, %nyx_string** %2983
  store %nyx_string* %3075, %nyx_string** %3073
  br label %merge544
else543:
  %3076 = alloca i1
  store i1 false, i1* %3076
  %3077 = load i8*, i8** %2790
  %3078 = load %nyx_string*, %nyx_string** %3012
  %3079 = call i8* @nyx_string_to_cstr(%nyx_string* %3078)
  %3080 = call i1 @nyx_map_contains_str(i8* %3077, i8* %3079)
  %3081 = xor i1 %3080, true
  br i1 %3081, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %3082 = load i8*, i8** %2792
  %3083 = load %nyx_string*, %nyx_string** %3012
  %3084 = call i8* @nyx_string_to_cstr(%nyx_string* %3083)
  %3085 = call i1 @nyx_map_contains_str(i8* %3082, i8* %3084)
  store i1 %3085, i1* %3076
  br label %sc_and_end546
sc_and_end546:
  %3086 = load i1, i1* %3076
  br i1 %3086, label %then547, label %else548
then547:
  %3087 = load %nyx_string*, %nyx_string** %2986
  store %nyx_string* %3087, %nyx_string** %3073
  br label %merge549
else548:
  br label %merge549
merge549:
  br label %merge544
merge544:
  %3088 = load { i64, i8* }*, { i64, i8* }** %2958
  %3089 = load %nyx_string*, %nyx_string** %3016
  %3090 = load %nyx_string*, %nyx_string** %2989
  %3091 = call %nyx_string* @nyx_string_concat(%nyx_string* %3089, %nyx_string* %3090)
  %3092 = load %nyx_string*, %nyx_string** %3020
  %3093 = call i64 @nyx_string_to_int(%nyx_string* %3092)
  %3094 = call %nyx_string* @cov_pad(i64 %3093)
  %3095 = call %nyx_string* @nyx_string_concat(%nyx_string* %3091, %nyx_string* %3094)
  %3096 = load %nyx_string*, %nyx_string** %2992
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3095, %nyx_string* %3096)
  %3098 = load %nyx_string*, %nyx_string** %3024
  %3099 = call %nyx_string* @nyx_string_concat(%nyx_string* %3097, %nyx_string* %3098)
  %3100 = load %nyx_string*, %nyx_string** %2992
  %3101 = call %nyx_string* @nyx_string_concat(%nyx_string* %3099, %nyx_string* %3100)
  %3102 = load %nyx_string*, %nyx_string** %3073
  %3103 = call %nyx_string* @nyx_string_concat(%nyx_string* %3101, %nyx_string* %3102)
  %3104 = load %nyx_string*, %nyx_string** %2992
  %3105 = call %nyx_string* @nyx_string_concat(%nyx_string* %3103, %nyx_string* %3104)
  %3106 = load %nyx_string*, %nyx_string** %3016
  %3107 = call %nyx_string* @nyx_string_concat(%nyx_string* %3105, %nyx_string* %3106)
  %3108 = ptrtoint %nyx_string* %3107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3088, i64 %3108, i64 2)
  br label %merge538
else537:
  br label %merge538
merge538:
  br label %merge525
else524:
  br label %merge525
merge525:
  %3109 = load i64, i64* %2959
  %3110 = add i64 %3109, 1
  store i64 %3110, i64* %2959
  br label %while_cond520
while_end522:
  %3111 = load { i64, i8* }*, { i64, i8* }** %2958
  %3112 = call { i64, i8* }* @sort_str({ i64, i8* }* %3111)
  %3113 = alloca { i64, i8* }*
  store { i64, i8* }* %3112, { i64, i8* }** %3113
  %3114 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %3115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3114, i64 0)
  %3116 = alloca %nyx_string*
  store %nyx_string* %3115, %nyx_string** %3116
  %3117 = alloca i64
  store i64 0, i64* %3117
  %3118 = alloca i64
  store i64 0, i64* %3118
  %3119 = alloca i64
  store i64 0, i64* %3119
  %3120 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %3121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3120, i64 0)
  %3122 = alloca %nyx_string*
  store %nyx_string* %3121, %nyx_string** %3122
  %3123 = getelementptr [10 x i8], [10 x i8]* @.str329, i32 0, i32 0
  %3124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3123, i64 9)
  %3125 = alloca %nyx_string*
  store %nyx_string* %3124, %nyx_string** %3125
  %3126 = getelementptr [2 x i8], [2 x i8]* @.str330, i32 0, i32 0
  %3127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3126, i64 1)
  %3128 = alloca %nyx_string*
  store %nyx_string* %3127, %nyx_string** %3128
  %3129 = getelementptr [3 x i8], [3 x i8]* @.str331, i32 0, i32 0
  %3130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3129, i64 2)
  %3131 = alloca %nyx_string*
  store %nyx_string* %3130, %nyx_string** %3131
  %3132 = getelementptr [2 x i8], [2 x i8]* @.str332, i32 0, i32 0
  %3133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3132, i64 1)
  %3134 = alloca %nyx_string*
  store %nyx_string* %3133, %nyx_string** %3134
  %3135 = getelementptr [5 x i8], [5 x i8]* @.str333, i32 0, i32 0
  %3136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3135, i64 4)
  %3137 = alloca %nyx_string*
  store %nyx_string* %3136, %nyx_string** %3137
  %3138 = getelementptr [2 x i8], [2 x i8]* @.str334, i32 0, i32 0
  %3139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3138, i64 1)
  %3140 = alloca %nyx_string*
  store %nyx_string* %3139, %nyx_string** %3140
  %3141 = getelementptr [2 x i8], [2 x i8]* @.str335, i32 0, i32 0
  %3142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3141, i64 1)
  %3143 = alloca %nyx_string*
  store %nyx_string* %3142, %nyx_string** %3143
  %3144 = getelementptr [4 x i8], [4 x i8]* @.str336, i32 0, i32 0
  %3145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3144, i64 3)
  %3146 = alloca %nyx_string*
  store %nyx_string* %3145, %nyx_string** %3146
  %3147 = getelementptr [2 x i8], [2 x i8]* @.str337, i32 0, i32 0
  %3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3147, i64 1)
  %3149 = alloca %nyx_string*
  store %nyx_string* %3148, %nyx_string** %3149
  %3150 = getelementptr [2 x i8], [2 x i8]* @.str338, i32 0, i32 0
  %3151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3150, i64 1)
  %3152 = alloca %nyx_string*
  store %nyx_string* %3151, %nyx_string** %3152
  %3153 = getelementptr [6 x i8], [6 x i8]* @.str339, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3153, i64 5)
  %3155 = alloca %nyx_string*
  store %nyx_string* %3154, %nyx_string** %3155
  %3156 = getelementptr [3 x i8], [3 x i8]* @.str340, i32 0, i32 0
  %3157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3156, i64 2)
  %3158 = alloca %nyx_string*
  store %nyx_string* %3157, %nyx_string** %3158
  %3159 = getelementptr [3 x i8], [3 x i8]* @.str341, i32 0, i32 0
  %3160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3159, i64 2)
  %3161 = alloca %nyx_string*
  store %nyx_string* %3160, %nyx_string** %3161
  %3162 = getelementptr [2 x i8], [2 x i8]* @.str342, i32 0, i32 0
  %3163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3162, i64 1)
  %3164 = alloca %nyx_string*
  store %nyx_string* %3163, %nyx_string** %3164
  %3165 = getelementptr [10 x i8], [10 x i8]* @.str343, i32 0, i32 0
  %3166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3165, i64 9)
  %3167 = alloca %nyx_string*
  store %nyx_string* %3166, %nyx_string** %3167
  %3168 = getelementptr [29 x i8], [29 x i8]* @.str344, i32 0, i32 0
  %3169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3168, i64 28)
  %3170 = alloca %nyx_string*
  store %nyx_string* %3169, %nyx_string** %3170
  %3171 = getelementptr [3 x i8], [3 x i8]* @.str345, i32 0, i32 0
  %3172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3171, i64 2)
  %3173 = alloca %nyx_string*
  store %nyx_string* %3172, %nyx_string** %3173
  %3174 = getelementptr [38 x i8], [38 x i8]* @.str346, i32 0, i32 0
  %3175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3174, i64 37)
  %3176 = alloca %nyx_string*
  store %nyx_string* %3175, %nyx_string** %3176
  %3177 = getelementptr [4 x i8], [4 x i8]* @.str347, i32 0, i32 0
  %3178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3177, i64 3)
  %3179 = alloca %nyx_string*
  store %nyx_string* %3178, %nyx_string** %3179
  %3180 = getelementptr [5 x i8], [5 x i8]* @.str348, i32 0, i32 0
  %3181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3180, i64 4)
  %3182 = alloca %nyx_string*
  store %nyx_string* %3181, %nyx_string** %3182
  %3183 = getelementptr [6 x i8], [6 x i8]* @.str349, i32 0, i32 0
  %3184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3183, i64 5)
  %3185 = alloca %nyx_string*
  store %nyx_string* %3184, %nyx_string** %3185
  %3186 = getelementptr [16 x i8], [16 x i8]* @.str350, i32 0, i32 0
  %3187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3186, i64 15)
  %3188 = alloca %nyx_string*
  store %nyx_string* %3187, %nyx_string** %3188
  %3189 = call i8* @llvm.stacksave()
  br label %while_cond550
while_cond550:
  %3190 = load i64, i64* %3119
  %3191 = load { i64, i8* }*, { i64, i8* }** %3113
  %3192 = call i64 @nyx_array_length({ i64, i8* }* %3191)
  %3193 = icmp slt i64 %3190, %3192
  br i1 %3193, label %while_body551, label %while_end552
while_body551:
  call void @llvm.stackrestore(i8* %3189)
  %3194 = load { i64, i8* }*, { i64, i8* }** %3113
  %3195 = load i64, i64* %3119
  %3196 = call i64 @nyx_array_get_checked({ i64, i8* }* %3194, i64 %3195, i64 2)
  %3197 = inttoptr i64 %3196 to %nyx_string*
  %3198 = alloca %nyx_string*
  store %nyx_string* %3197, %nyx_string** %3198
  %3199 = load %nyx_string*, %nyx_string** %3198
  %3200 = call { i64, i8* }* @cov_fields(%nyx_string* %3199)
  %3201 = alloca { i64, i8* }*
  store { i64, i8* }* %3200, { i64, i8* }** %3201
  %3202 = load { i64, i8* }*, { i64, i8* }** %3201
  %3203 = call i64 @nyx_array_get_checked({ i64, i8* }* %3202, i64 0, i64 2)
  %3204 = inttoptr i64 %3203 to %nyx_string*
  %3205 = alloca %nyx_string*
  store %nyx_string* %3204, %nyx_string** %3205
  %3206 = load { i64, i8* }*, { i64, i8* }** %3201
  %3207 = call i64 @nyx_array_get_checked({ i64, i8* }* %3206, i64 4, i64 2)
  %3208 = inttoptr i64 %3207 to %nyx_string*
  %3209 = alloca %nyx_string*
  store %nyx_string* %3208, %nyx_string** %3209
  %3210 = alloca i64
  store i64 0, i64* %3210
  %3211 = alloca i64
  store i64 0, i64* %3211
  %3212 = alloca i64
  store i64 0, i64* %3212
  %3213 = call { i64, i8* }* @nyx_array_new_ptr()
  %3214 = alloca { i64, i8* }*
  store { i64, i8* }* %3213, { i64, i8* }** %3214
  %3215 = load %nyx_string*, %nyx_string** %3122
  %3216 = alloca %nyx_string*
  store %nyx_string* %3215, %nyx_string** %3216
  %3217 = load %nyx_string*, %nyx_string** %3122
  %3218 = alloca %nyx_string*
  store %nyx_string* %3217, %nyx_string** %3218
  %3219 = load i64, i64* %3119
  %3220 = alloca i64
  store i64 %3219, i64* %3220
  %3221 = alloca i1
  store i1 1, i1* %3221
  %3222 = call i8* @llvm.stacksave()
  br label %while_cond553
while_cond553:
  %3223 = alloca i1
  store i1 false, i1* %3223
  %3224 = load i64, i64* %3220
  %3225 = load { i64, i8* }*, { i64, i8* }** %3113
  %3226 = call i64 @nyx_array_length({ i64, i8* }* %3225)
  %3227 = icmp slt i64 %3224, %3226
  br i1 %3227, label %sc_and_rhs556, label %sc_and_end557
sc_and_rhs556:
  %3228 = load i1, i1* %3221
  store i1 %3228, i1* %3223
  br label %sc_and_end557
sc_and_end557:
  %3229 = load i1, i1* %3223
  br i1 %3229, label %while_body554, label %while_end555
while_body554:
  call void @llvm.stackrestore(i8* %3222)
  %3230 = load { i64, i8* }*, { i64, i8* }** %3113
  %3231 = load i64, i64* %3220
  %3232 = call i64 @nyx_array_get_checked({ i64, i8* }* %3230, i64 %3231, i64 2)
  %3233 = inttoptr i64 %3232 to %nyx_string*
  %3234 = alloca %nyx_string*
  store %nyx_string* %3233, %nyx_string** %3234
  %3235 = load %nyx_string*, %nyx_string** %3234
  %3236 = call { i64, i8* }* @cov_fields(%nyx_string* %3235)
  %3237 = alloca { i64, i8* }*
  store { i64, i8* }* %3236, { i64, i8* }** %3237
  %3238 = load { i64, i8* }*, { i64, i8* }** %3237
  %3239 = call i64 @nyx_array_get_checked({ i64, i8* }* %3238, i64 0, i64 2)
  %3240 = inttoptr i64 %3239 to %nyx_string*
  %3241 = alloca %nyx_string*
  store %nyx_string* %3240, %nyx_string** %3241
  %3242 = load %nyx_string*, %nyx_string** %3241
  %3243 = load %nyx_string*, %nyx_string** %3205
  %3244 = call i1 @nyx_string_equals(%nyx_string* %3242, %nyx_string* %3243)
  %3245 = xor i1 %3244, true
  br i1 %3245, label %then558, label %else559
then558:
  store i1 0, i1* %3221
  br label %merge560
else559:
  %3246 = load { i64, i8* }*, { i64, i8* }** %3237
  %3247 = call i64 @nyx_array_get({ i64, i8* }* %3246, i64 1)
  %3248 = inttoptr i64 %3247 to %nyx_string*
  %3249 = call i64 @nyx_string_to_int(%nyx_string* %3248)
  %3250 = alloca i64
  store i64 %3249, i64* %3250
  %3251 = load { i64, i8* }*, { i64, i8* }** %3237
  %3252 = call i64 @nyx_array_get_checked({ i64, i8* }* %3251, i64 2, i64 2)
  %3253 = inttoptr i64 %3252 to %nyx_string*
  %3254 = alloca %nyx_string*
  store %nyx_string* %3253, %nyx_string** %3254
  %3255 = load { i64, i8* }*, { i64, i8* }** %3237
  %3256 = call i64 @nyx_array_get_checked({ i64, i8* }* %3255, i64 3, i64 2)
  %3257 = inttoptr i64 %3256 to %nyx_string*
  %3258 = alloca %nyx_string*
  store %nyx_string* %3257, %nyx_string** %3258
  %3259 = load %nyx_string*, %nyx_string** %3258
  %3260 = load %nyx_string*, %nyx_string** %3125
  %3261 = call i1 @nyx_string_equals(%nyx_string* %3259, %nyx_string* %3260)
  br i1 %3261, label %then561, label %else562
then561:
  %3262 = load i64, i64* %3212
  %3263 = add i64 %3262, 1
  store i64 %3263, i64* %3212
  br label %merge563
else562:
  %3264 = load i64, i64* %3211
  %3265 = add i64 %3264, 1
  store i64 %3265, i64* %3211
  %3266 = load %nyx_string*, %nyx_string** %3128
  %3267 = alloca %nyx_string*
  store %nyx_string* %3266, %nyx_string** %3267
  %3268 = load %nyx_string*, %nyx_string** %3258
  %3269 = load %nyx_string*, %nyx_string** %3131
  %3270 = call i1 @nyx_string_equals(%nyx_string* %3268, %nyx_string* %3269)
  br i1 %3270, label %then564, label %else565
then564:
  %3271 = load i64, i64* %3210
  %3272 = add i64 %3271, 1
  store i64 %3272, i64* %3210
  %3273 = load %nyx_string*, %nyx_string** %3134
  store %nyx_string* %3273, %nyx_string** %3267
  br label %merge566
else565:
  %3274 = load { i64, i8* }*, { i64, i8* }** %3214
  %3275 = load %nyx_string*, %nyx_string** %3137
  %3276 = load %nyx_string*, %nyx_string** %3205
  %3277 = call %nyx_string* @nyx_string_concat(%nyx_string* %3275, %nyx_string* %3276)
  %3278 = load %nyx_string*, %nyx_string** %3140
  %3279 = call %nyx_string* @nyx_string_concat(%nyx_string* %3277, %nyx_string* %3278)
  %3280 = load i64, i64* %3250
  %3281 = call %nyx_string* @nyx_string_from_int(i64 %3280)
  %3282 = call %nyx_string* @nyx_string_concat(%nyx_string* %3279, %nyx_string* %3281)
  %3283 = load %nyx_string*, %nyx_string** %3143
  %3284 = call %nyx_string* @nyx_string_concat(%nyx_string* %3282, %nyx_string* %3283)
  %3285 = load %nyx_string*, %nyx_string** %3254
  %3286 = call %nyx_string* @nyx_string_concat(%nyx_string* %3284, %nyx_string* %3285)
  %3287 = ptrtoint %nyx_string* %3286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3274, i64 %3287, i64 2)
  br label %merge566
merge566:
  %3288 = load %nyx_string*, %nyx_string** %3216
  %3289 = load %nyx_string*, %nyx_string** %3146
  %3290 = call %nyx_string* @nyx_string_concat(%nyx_string* %3288, %nyx_string* %3289)
  %3291 = load i64, i64* %3250
  %3292 = call %nyx_string* @nyx_string_from_int(i64 %3291)
  %3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %3290, %nyx_string* %3292)
  %3294 = load %nyx_string*, %nyx_string** %3149
  %3295 = call %nyx_string* @nyx_string_concat(%nyx_string* %3293, %nyx_string* %3294)
  %3296 = load %nyx_string*, %nyx_string** %3254
  %3297 = call %nyx_string* @nyx_string_concat(%nyx_string* %3295, %nyx_string* %3296)
  %3298 = load %nyx_string*, %nyx_string** %3152
  %3299 = call %nyx_string* @nyx_string_concat(%nyx_string* %3297, %nyx_string* %3298)
  store %nyx_string* %3299, %nyx_string** %3216
  %3300 = load %nyx_string*, %nyx_string** %3218
  %3301 = load %nyx_string*, %nyx_string** %3155
  %3302 = call %nyx_string* @nyx_string_concat(%nyx_string* %3300, %nyx_string* %3301)
  %3303 = load %nyx_string*, %nyx_string** %3267
  %3304 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3303)
  %3305 = load %nyx_string*, %nyx_string** %3149
  %3306 = call %nyx_string* @nyx_string_concat(%nyx_string* %3304, %nyx_string* %3305)
  %3307 = load %nyx_string*, %nyx_string** %3254
  %3308 = call %nyx_string* @nyx_string_concat(%nyx_string* %3306, %nyx_string* %3307)
  %3309 = load %nyx_string*, %nyx_string** %3152
  %3310 = call %nyx_string* @nyx_string_concat(%nyx_string* %3308, %nyx_string* %3309)
  store %nyx_string* %3310, %nyx_string** %3218
  br label %merge563
merge563:
  %3311 = load i64, i64* %3220
  %3312 = add i64 %3311, 1
  store i64 %3312, i64* %3220
  br label %merge560
merge560:
  br label %while_cond553
while_end555:
  %3313 = load %nyx_string*, %nyx_string** %3158
  %3314 = load %nyx_string*, %nyx_string** %3205
  %3315 = call %nyx_string* @nyx_string_concat(%nyx_string* %3313, %nyx_string* %3314)
  %3316 = load %nyx_string*, %nyx_string** %3161
  %3317 = call %nyx_string* @nyx_string_concat(%nyx_string* %3315, %nyx_string* %3316)
  %3318 = load i64, i64* %3210
  %3319 = call %nyx_string* @nyx_string_from_int(i64 %3318)
  %3320 = call %nyx_string* @nyx_string_concat(%nyx_string* %3317, %nyx_string* %3319)
  %3321 = load %nyx_string*, %nyx_string** %3164
  %3322 = call %nyx_string* @nyx_string_concat(%nyx_string* %3320, %nyx_string* %3321)
  %3323 = load i64, i64* %3211
  %3324 = call %nyx_string* @nyx_string_from_int(i64 %3323)
  %3325 = call %nyx_string* @nyx_string_concat(%nyx_string* %3322, %nyx_string* %3324)
  %3326 = load %nyx_string*, %nyx_string** %3167
  %3327 = call %nyx_string* @nyx_string_concat(%nyx_string* %3325, %nyx_string* %3326)
  %3328 = alloca %nyx_string*
  store %nyx_string* %3327, %nyx_string** %3328
  %3329 = load i8*, i8** %2796
  %3330 = load %nyx_string*, %nyx_string** %3209
  %3331 = call i8* @nyx_string_to_cstr(%nyx_string* %3330)
  %3332 = call i1 @nyx_map_contains_str(i8* %3329, i8* %3331)
  %3333 = xor i1 %3332, true
  br i1 %3333, label %then567, label %else568
then567:
  %3334 = load %nyx_string*, %nyx_string** %3328
  %3335 = load %nyx_string*, %nyx_string** %3170
  %3336 = call %nyx_string* @nyx_string_concat(%nyx_string* %3334, %nyx_string* %3335)
  store %nyx_string* %3336, %nyx_string** %3328
  br label %merge569
else568:
  br label %merge569
merge569:
  %3337 = load i64, i64* %3212
  %3338 = icmp sgt i64 %3337, 0
  br i1 %3338, label %then570, label %else571
then570:
  %3339 = load %nyx_string*, %nyx_string** %3328
  %3340 = load %nyx_string*, %nyx_string** %3173
  %3341 = call %nyx_string* @nyx_string_concat(%nyx_string* %3339, %nyx_string* %3340)
  %3342 = load i64, i64* %3212
  %3343 = call %nyx_string* @nyx_string_from_int(i64 %3342)
  %3344 = call %nyx_string* @nyx_string_concat(%nyx_string* %3341, %nyx_string* %3343)
  %3345 = load %nyx_string*, %nyx_string** %3176
  %3346 = call %nyx_string* @nyx_string_concat(%nyx_string* %3344, %nyx_string* %3345)
  store %nyx_string* %3346, %nyx_string** %3328
  br label %merge572
else571:
  br label %merge572
merge572:
  %3347 = load %nyx_string*, %nyx_string** %3328
  %3348 = call i8* @nyx_string_to_cstr(%nyx_string* %3347)
  call void @nyx_print_string(i8* %3348)
  %3349 = alloca i64
  store i64 0, i64* %3349
  %3350 = call i8* @llvm.stacksave()
  br label %while_cond573
while_cond573:
  %3351 = load i64, i64* %3349
  %3352 = load { i64, i8* }*, { i64, i8* }** %3214
  %3353 = call i64 @nyx_array_length({ i64, i8* }* %3352)
  %3354 = icmp slt i64 %3351, %3353
  br i1 %3354, label %while_body574, label %while_end575
while_body574:
  call void @llvm.stackrestore(i8* %3350)
  %3355 = load { i64, i8* }*, { i64, i8* }** %3214
  %3356 = load i64, i64* %3349
  %3357 = call i64 @nyx_array_get_checked({ i64, i8* }* %3355, i64 %3356, i64 2)
  %3358 = inttoptr i64 %3357 to %nyx_string*
  %3359 = alloca %nyx_string*
  store %nyx_string* %3358, %nyx_string** %3359
  %3360 = load %nyx_string*, %nyx_string** %3359
  %3361 = call i8* @nyx_string_to_cstr(%nyx_string* %3360)
  call void @nyx_print_string(i8* %3361)
  %3362 = load i64, i64* %3349
  %3363 = add i64 %3362, 1
  store i64 %3363, i64* %3349
  br label %while_cond573
while_end575:
  %3364 = load i64, i64* %3117
  %3365 = load i64, i64* %3210
  %3366 = add i64 %3364, %3365
  store i64 %3366, i64* %3117
  %3367 = load i64, i64* %3118
  %3368 = load i64, i64* %3211
  %3369 = add i64 %3367, %3368
  store i64 %3369, i64* %3118
  %3370 = load %nyx_string*, %nyx_string** %3116
  %3371 = load %nyx_string*, %nyx_string** %3179
  %3372 = call %nyx_string* @nyx_string_concat(%nyx_string* %3370, %nyx_string* %3371)
  %3373 = load %nyx_string*, %nyx_string** %3205
  %3374 = call %nyx_string* @nyx_string_concat(%nyx_string* %3372, %nyx_string* %3373)
  %3375 = load %nyx_string*, %nyx_string** %3152
  %3376 = call %nyx_string* @nyx_string_concat(%nyx_string* %3374, %nyx_string* %3375)
  %3377 = load %nyx_string*, %nyx_string** %3216
  %3378 = call %nyx_string* @nyx_string_concat(%nyx_string* %3376, %nyx_string* %3377)
  %3379 = load %nyx_string*, %nyx_string** %3218
  %3380 = call %nyx_string* @nyx_string_concat(%nyx_string* %3378, %nyx_string* %3379)
  %3381 = load %nyx_string*, %nyx_string** %3182
  %3382 = call %nyx_string* @nyx_string_concat(%nyx_string* %3380, %nyx_string* %3381)
  %3383 = load i64, i64* %3211
  %3384 = call %nyx_string* @nyx_string_from_int(i64 %3383)
  %3385 = call %nyx_string* @nyx_string_concat(%nyx_string* %3382, %nyx_string* %3384)
  %3386 = load %nyx_string*, %nyx_string** %3185
  %3387 = call %nyx_string* @nyx_string_concat(%nyx_string* %3385, %nyx_string* %3386)
  %3388 = load i64, i64* %3210
  %3389 = call %nyx_string* @nyx_string_from_int(i64 %3388)
  %3390 = call %nyx_string* @nyx_string_concat(%nyx_string* %3387, %nyx_string* %3389)
  %3391 = load %nyx_string*, %nyx_string** %3188
  %3392 = call %nyx_string* @nyx_string_concat(%nyx_string* %3390, %nyx_string* %3391)
  store %nyx_string* %3392, %nyx_string** %3116
  %3393 = load i64, i64* %3220
  store i64 %3393, i64* %3119
  br label %while_cond550
while_end552:
  %3394 = load { i64, i8* }*, { i64, i8* }** %2662
  %3395 = call i64 @nyx_array_length({ i64, i8* }* %3394)
  %3396 = icmp sgt i64 %3395, 0
  br i1 %3396, label %then576, label %else577
then576:
  %3397 = getelementptr [70 x i8], [70 x i8]* @.str351, i32 0, i32 0
  %3398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3397, i64 69)
  %3399 = call i8* @nyx_string_to_cstr(%nyx_string* %3398)
  call void @nyx_print_string(i8* %3399)
  %3400 = alloca i64
  store i64 0, i64* %3400
  %3401 = getelementptr [5 x i8], [5 x i8]* @.str352, i32 0, i32 0
  %3402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3401, i64 4)
  %3403 = alloca %nyx_string*
  store %nyx_string* %3402, %nyx_string** %3403
  %3404 = call i8* @llvm.stacksave()
  br label %while_cond579
while_cond579:
  %3405 = load i64, i64* %3400
  %3406 = load { i64, i8* }*, { i64, i8* }** %2662
  %3407 = call i64 @nyx_array_length({ i64, i8* }* %3406)
  %3408 = icmp slt i64 %3405, %3407
  br i1 %3408, label %while_body580, label %while_end581
while_body580:
  call void @llvm.stackrestore(i8* %3404)
  %3409 = load { i64, i8* }*, { i64, i8* }** %2662
  %3410 = load i64, i64* %3400
  %3411 = call i64 @nyx_array_get_checked({ i64, i8* }* %3409, i64 %3410, i64 2)
  %3412 = inttoptr i64 %3411 to %nyx_string*
  %3413 = alloca %nyx_string*
  store %nyx_string* %3412, %nyx_string** %3413
  %3414 = load %nyx_string*, %nyx_string** %3403
  %3415 = load %nyx_string*, %nyx_string** %3413
  %3416 = call %nyx_string* @nyx_string_concat(%nyx_string* %3414, %nyx_string* %3415)
  %3417 = call i8* @nyx_string_to_cstr(%nyx_string* %3416)
  call void @nyx_print_string(i8* %3417)
  %3418 = load i64, i64* %3400
  %3419 = add i64 %3418, 1
  store i64 %3419, i64* %3400
  br label %while_cond579
while_end581:
  br label %merge578
else577:
  br label %merge578
merge578:
  %3420 = getelementptr [10 x i8], [10 x i8]* @.str353, i32 0, i32 0
  %3421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3420, i64 9)
  %3422 = load i64, i64* %3117
  %3423 = call %nyx_string* @nyx_string_from_int(i64 %3422)
  %3424 = call %nyx_string* @nyx_string_concat(%nyx_string* %3421, %nyx_string* %3423)
  %3425 = getelementptr [2 x i8], [2 x i8]* @.str354, i32 0, i32 0
  %3426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3425, i64 1)
  %3427 = call %nyx_string* @nyx_string_concat(%nyx_string* %3424, %nyx_string* %3426)
  %3428 = load i64, i64* %3118
  %3429 = call %nyx_string* @nyx_string_from_int(i64 %3428)
  %3430 = call %nyx_string* @nyx_string_concat(%nyx_string* %3427, %nyx_string* %3429)
  %3431 = getelementptr [20 x i8], [20 x i8]* @.str355, i32 0, i32 0
  %3432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3431, i64 19)
  %3433 = call %nyx_string* @nyx_string_concat(%nyx_string* %3430, %nyx_string* %3432)
  %3434 = call i8* @nyx_string_to_cstr(%nyx_string* %3433)
  call void @nyx_print_string(i8* %3434)
  %3435 = load i1, i1* %want_lcov.ptr
  br i1 %3435, label %then582, label %else583
then582:
  %3436 = getelementptr [11 x i8], [11 x i8]* @.str356, i32 0, i32 0
  %3437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3436, i64 10)
  %3438 = load %nyx_string*, %nyx_string** %2648
  %3439 = call %nyx_string* @nyx_string_concat(%nyx_string* %3437, %nyx_string* %3438)
  %3440 = getelementptr [9 x i8], [9 x i8]* @.str357, i32 0, i32 0
  %3441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3440, i64 8)
  %3442 = call %nyx_string* @nyx_string_concat(%nyx_string* %3439, %nyx_string* %3441)
  %3443 = call i8* @nyx_string_to_cstr(%nyx_string* %3442)
  %3444 = call i64 @nyx_exec_code(i8* %3443)
  %3445 = load %nyx_string*, %nyx_string** %2648
  %3446 = getelementptr [22 x i8], [22 x i8]* @.str358, i32 0, i32 0
  %3447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3446, i64 21)
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3445, %nyx_string* %3447)
  %3449 = load %nyx_string*, %nyx_string** %3116
  %3450 = ptrtoint %nyx_string* %3449 to i64
  %3451 = call i8* @nyx_string_to_cstr(%nyx_string* %3448)
  %3452 = inttoptr i64 %3450 to %nyx_string*
  %3453 = call i1 @nyx_write_file_safe(i8* %3451, %nyx_string* %3452)
  %3454 = getelementptr [29 x i8], [29 x i8]* @.str359, i32 0, i32 0
  %3455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3454, i64 28)
  %3456 = call i8* @nyx_string_to_cstr(%nyx_string* %3455)
  call void @nyx_print_string(i8* %3456)
  br label %merge584
else583:
  br label %merge584
merge584:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3457 = getelementptr [115 x i8], [115 x i8]* @.str360, i32 0, i32 0
  %3458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3457, i64 114)
  %3459 = call i8* @nyx_string_to_cstr(%nyx_string* %3458)
  call void @nyx_print_string(i8* %3459)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3460 = getelementptr [5 x i8], [5 x i8]* @.str361, i32 0, i32 0
  %3461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3460, i64 4)
  %3462 = load %nyx_string*, %nyx_string** %nh.ptr
  %3463 = call %nyx_string* @nyx_string_concat(%nyx_string* %3461, %nyx_string* %3462)
  %3464 = getelementptr [66 x i8], [66 x i8]* @.str362, i32 0, i32 0
  %3465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3464, i64 65)
  %3466 = call %nyx_string* @nyx_string_concat(%nyx_string* %3463, %nyx_string* %3465)
  %3467 = call i8* @nyx_string_to_cstr(%nyx_string* %3466)
  %3468 = call %nyx_string* @nyx_exec(i8* %3467)
  %3469 = call %nyx_string* @nyx_string_trim(%nyx_string* %3468)
  ret %nyx_string* %3469
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3470 = getelementptr [5 x i8], [5 x i8]* @.str363, i32 0, i32 0
  %3471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3470, i64 4)
  %3472 = load %nyx_string*, %nyx_string** %nh.ptr
  %3473 = call %nyx_string* @nyx_string_concat(%nyx_string* %3471, %nyx_string* %3472)
  %3474 = getelementptr [74 x i8], [74 x i8]* @.str364, i32 0, i32 0
  %3475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3474, i64 73)
  %3476 = call %nyx_string* @nyx_string_concat(%nyx_string* %3473, %nyx_string* %3475)
  %3477 = call i8* @nyx_string_to_cstr(%nyx_string* %3476)
  %3478 = call %nyx_string* @nyx_exec(i8* %3477)
  %3479 = call %nyx_string* @nyx_string_trim(%nyx_string* %3478)
  ret %nyx_string* %3479
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3480 = getelementptr [24 x i8], [24 x i8]* @.str365, i32 0, i32 0
  %3481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3480, i64 23)
  %3482 = call i8* @nyx_string_to_cstr(%nyx_string* %3481)
  call void @nyx_print_string(i8* %3482)
  %3483 = call %nyx_string* @tmp_base()
  %3484 = call i64 @barrer_huerfanos(%nyx_string* %3483)
  %3485 = alloca i64
  store i64 %3484, i64* %3485
  %3486 = getelementptr [9 x i8], [9 x i8]* @.str366, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3486, i64 8)
  %3488 = call i8* @nyx_string_to_cstr(%nyx_string* %3487)
  %3489 = call %nyx_string* @nyx_getenv(i8* %3488)
  %3490 = alloca %nyx_string*
  store %nyx_string* %3489, %nyx_string** %3490
  %3491 = load %nyx_string*, %nyx_string** %3490
  %3492 = getelementptr [9 x i8], [9 x i8]* @.str367, i32 0, i32 0
  %3493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3492, i64 8)
  %3494 = call %nyx_string* @nyx_string_concat(%nyx_string* %3491, %nyx_string* %3493)
  %3495 = call i8* @nyx_string_to_cstr(%nyx_string* %3494)
  %3496 = call %nyx_string* @nyx_read_file(i8* %3495)
  %3497 = call %nyx_string* @nyx_string_trim(%nyx_string* %3496)
  %3498 = alloca %nyx_string*
  store %nyx_string* %3497, %nyx_string** %3498
  %3499 = load %nyx_string*, %nyx_string** %3490
  %3500 = call %nyx_string* @huella_compilador(%nyx_string* %3499)
  %3501 = alloca %nyx_string*
  store %nyx_string* %3500, %nyx_string** %3501
  %3502 = load %nyx_string*, %nyx_string** %3490
  %3503 = call %nyx_string* @huella_resto(%nyx_string* %3502)
  %3504 = alloca %nyx_string*
  store %nyx_string* %3503, %nyx_string** %3504
  %3505 = getelementptr [18 x i8], [18 x i8]* @.str368, i32 0, i32 0
  %3506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3505, i64 17)
  %3507 = load %nyx_string*, %nyx_string** %3498
  %3508 = call %nyx_string* @nyx_string_concat(%nyx_string* %3506, %nyx_string* %3507)
  %3509 = getelementptr [17 x i8], [17 x i8]* @.str369, i32 0, i32 0
  %3510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3509, i64 16)
  %3511 = call %nyx_string* @nyx_string_concat(%nyx_string* %3508, %nyx_string* %3510)
  %3512 = load %nyx_string*, %nyx_string** %3501
  %3513 = call %nyx_string* @nyx_string_concat(%nyx_string* %3511, %nyx_string* %3512)
  %3514 = getelementptr [2 x i8], [2 x i8]* @.str370, i32 0, i32 0
  %3515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3514, i64 1)
  %3516 = call %nyx_string* @nyx_string_concat(%nyx_string* %3513, %nyx_string* %3515)
  %3517 = call i8* @nyx_string_to_cstr(%nyx_string* %3516)
  call void @nyx_print_string(i8* %3517)
  %3518 = call %TestConfig @load_test_config()
  %3519 = alloca %TestConfig
  store %TestConfig %3518, %TestConfig* %3519
  %3520 = call { i64, i8* }* @nyx_get_args()
  %3521 = alloca { i64, i8* }*
  store { i64, i8* }* %3520, { i64, i8* }** %3521
  %3522 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %3523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3522, i64 0)
  %3524 = alloca %nyx_string*
  store %nyx_string* %3523, %nyx_string** %3524
  %3525 = alloca i64
  store i64 1, i64* %3525
  %3526 = getelementptr [9 x i8], [9 x i8]* @.str372, i32 0, i32 0
  %3527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3526, i64 8)
  %3528 = alloca %nyx_string*
  store %nyx_string* %3527, %nyx_string** %3528
  %3529 = getelementptr [10 x i8], [10 x i8]* @.str373, i32 0, i32 0
  %3530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3529, i64 9)
  %3531 = alloca %nyx_string*
  store %nyx_string* %3530, %nyx_string** %3531
  %3532 = getelementptr [3 x i8], [3 x i8]* @.str374, i32 0, i32 0
  %3533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3532, i64 2)
  %3534 = alloca %nyx_string*
  store %nyx_string* %3533, %nyx_string** %3534
  %3535 = getelementptr [10 x i8], [10 x i8]* @.str375, i32 0, i32 0
  %3536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3535, i64 9)
  %3537 = alloca %nyx_string*
  store %nyx_string* %3536, %nyx_string** %3537
  %3538 = getelementptr [10 x i8], [10 x i8]* @.str376, i32 0, i32 0
  %3539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3538, i64 9)
  %3540 = alloca %nyx_string*
  store %nyx_string* %3539, %nyx_string** %3540
  %3541 = getelementptr [11 x i8], [11 x i8]* @.str377, i32 0, i32 0
  %3542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3541, i64 10)
  %3543 = alloca %nyx_string*
  store %nyx_string* %3542, %nyx_string** %3543
  %3544 = getelementptr [16 x i8], [16 x i8]* @.str378, i32 0, i32 0
  %3545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3544, i64 15)
  %3546 = alloca %nyx_string*
  store %nyx_string* %3545, %nyx_string** %3546
  %3547 = getelementptr [8 x i8], [8 x i8]* @.str379, i32 0, i32 0
  %3548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3547, i64 7)
  %3549 = alloca %nyx_string*
  store %nyx_string* %3548, %nyx_string** %3549
  %3550 = getelementptr [12 x i8], [12 x i8]* @.str380, i32 0, i32 0
  %3551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3550, i64 11)
  %3552 = alloca %nyx_string*
  store %nyx_string* %3551, %nyx_string** %3552
  %3553 = getelementptr [24 x i8], [24 x i8]* @.str381, i32 0, i32 0
  %3554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3553, i64 23)
  %3555 = alloca %nyx_string*
  store %nyx_string* %3554, %nyx_string** %3555
  %3556 = getelementptr [106 x i8], [106 x i8]* @.str382, i32 0, i32 0
  %3557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3556, i64 105)
  %3558 = alloca %nyx_string*
  store %nyx_string* %3557, %nyx_string** %3558
  %3559 = getelementptr [9 x i8], [9 x i8]* @.str383, i32 0, i32 0
  %3560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3559, i64 8)
  %3561 = alloca %nyx_string*
  store %nyx_string* %3560, %nyx_string** %3561
  %3562 = getelementptr [10 x i8], [10 x i8]* @.str384, i32 0, i32 0
  %3563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3562, i64 9)
  %3564 = alloca %nyx_string*
  store %nyx_string* %3563, %nyx_string** %3564
  %3565 = getelementptr [2 x i8], [2 x i8]* @.str385, i32 0, i32 0
  %3566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3565, i64 1)
  %3567 = alloca %nyx_string*
  store %nyx_string* %3566, %nyx_string** %3567
  %3568 = getelementptr [4 x i8], [4 x i8]* @.str386, i32 0, i32 0
  %3569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3568, i64 3)
  %3570 = alloca %nyx_string*
  store %nyx_string* %3569, %nyx_string** %3570
  %3571 = getelementptr [2 x i8], [2 x i8]* @.str387, i32 0, i32 0
  %3572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3571, i64 1)
  %3573 = alloca %nyx_string*
  store %nyx_string* %3572, %nyx_string** %3573
  %3574 = call i8* @llvm.stacksave()
  br label %while_cond585
while_cond585:
  %3575 = load i64, i64* %3525
  %3576 = load { i64, i8* }*, { i64, i8* }** %3521
  %3577 = call i64 @nyx_array_length({ i64, i8* }* %3576)
  %3578 = icmp slt i64 %3575, %3577
  br i1 %3578, label %while_body586, label %while_end587
while_body586:
  call void @llvm.stackrestore(i8* %3574)
  %3579 = load { i64, i8* }*, { i64, i8* }** %3521
  %3580 = load i64, i64* %3525
  %3581 = call i64 @nyx_array_get_checked({ i64, i8* }* %3579, i64 %3580, i64 2)
  %3582 = inttoptr i64 %3581 to %nyx_string*
  %3583 = alloca %nyx_string*
  store %nyx_string* %3582, %nyx_string** %3583
  %3584 = alloca i1
  store i1 false, i1* %3584
  %3585 = load %nyx_string*, %nyx_string** %3583
  %3586 = load %nyx_string*, %nyx_string** %3528
  %3587 = call i1 @nyx_string_equals(%nyx_string* %3585, %nyx_string* %3586)
  br i1 %3587, label %sc_and_rhs588, label %sc_and_end589
sc_and_rhs588:
  %3588 = load i64, i64* %3525
  %3589 = add i64 %3588, 1
  %3590 = load { i64, i8* }*, { i64, i8* }** %3521
  %3591 = call i64 @nyx_array_length({ i64, i8* }* %3590)
  %3592 = icmp slt i64 %3589, %3591
  store i1 %3592, i1* %3584
  br label %sc_and_end589
sc_and_end589:
  %3593 = load i1, i1* %3584
  br i1 %3593, label %then590, label %else591
then590:
  %3594 = load i64, i64* %3525
  %3595 = add i64 %3594, 1
  store i64 %3595, i64* %3525
  %3596 = load { i64, i8* }*, { i64, i8* }** %3521
  %3597 = load i64, i64* %3525
  %3598 = call i64 @nyx_array_get_checked({ i64, i8* }* %3596, i64 %3597, i64 2)
  %3599 = inttoptr i64 %3598 to %nyx_string*
  %3600 = alloca %nyx_string*
  store %nyx_string* %3599, %nyx_string** %3600
  %3601 = load %nyx_string*, %nyx_string** %3600
  %3602 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 2
  store %nyx_string* %3601, %nyx_string** %3602
  br label %merge592
else591:
  %3603 = alloca i1
  store i1 true, i1* %3603
  %3604 = load %nyx_string*, %nyx_string** %3583
  %3605 = load %nyx_string*, %nyx_string** %3531
  %3606 = call i1 @nyx_string_equals(%nyx_string* %3604, %nyx_string* %3605)
  br i1 %3606, label %sc_or_end594, label %sc_or_rhs593
sc_or_rhs593:
  %3607 = load %nyx_string*, %nyx_string** %3583
  %3608 = load %nyx_string*, %nyx_string** %3534
  %3609 = call i1 @nyx_string_equals(%nyx_string* %3607, %nyx_string* %3608)
  store i1 %3609, i1* %3603
  br label %sc_or_end594
sc_or_end594:
  %3610 = load i1, i1* %3603
  br i1 %3610, label %then595, label %else596
then595:
  %3611 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 3
  store i1 1, i1* %3611
  br label %merge597
else596:
  %3612 = alloca i1
  store i1 false, i1* %3612
  %3613 = load %nyx_string*, %nyx_string** %3583
  %3614 = load %nyx_string*, %nyx_string** %3537
  %3615 = call i1 @nyx_string_equals(%nyx_string* %3613, %nyx_string* %3614)
  br i1 %3615, label %sc_and_rhs598, label %sc_and_end599
sc_and_rhs598:
  %3616 = load i64, i64* %3525
  %3617 = add i64 %3616, 1
  %3618 = load { i64, i8* }*, { i64, i8* }** %3521
  %3619 = call i64 @nyx_array_length({ i64, i8* }* %3618)
  %3620 = icmp slt i64 %3617, %3619
  store i1 %3620, i1* %3612
  br label %sc_and_end599
sc_and_end599:
  %3621 = load i1, i1* %3612
  br i1 %3621, label %then600, label %else601
then600:
  %3622 = load i64, i64* %3525
  %3623 = add i64 %3622, 1
  store i64 %3623, i64* %3525
  %3624 = load { i64, i8* }*, { i64, i8* }** %3521
  %3625 = load i64, i64* %3525
  %3626 = call i64 @nyx_array_get_checked({ i64, i8* }* %3624, i64 %3625, i64 2)
  %3627 = inttoptr i64 %3626 to %nyx_string*
  %3628 = alloca %nyx_string*
  store %nyx_string* %3627, %nyx_string** %3628
  %3629 = load %nyx_string*, %nyx_string** %3628
  %3630 = call i64 @nyx_string_to_int(%nyx_string* %3629)
  %3631 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 1
  store i64 %3630, i64* %3631
  br label %merge602
else601:
  %3632 = load %nyx_string*, %nyx_string** %3583
  %3633 = load %nyx_string*, %nyx_string** %3540
  %3634 = call i1 @nyx_string_equals(%nyx_string* %3632, %nyx_string* %3633)
  br i1 %3634, label %then603, label %else604
then603:
  %3635 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 7
  store i1 1, i1* %3635
  br label %merge605
else604:
  %3636 = load %nyx_string*, %nyx_string** %3583
  %3637 = load %nyx_string*, %nyx_string** %3543
  %3638 = call i1 @nyx_string_equals(%nyx_string* %3636, %nyx_string* %3637)
  br i1 %3638, label %then606, label %else607
then606:
  %3639 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 5
  store i1 1, i1* %3639
  br label %merge608
else607:
  %3640 = load %nyx_string*, %nyx_string** %3583
  %3641 = load %nyx_string*, %nyx_string** %3546
  %3642 = call i1 @nyx_string_equals(%nyx_string* %3640, %nyx_string* %3641)
  br i1 %3642, label %then609, label %else610
then609:
  %3643 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 5
  store i1 1, i1* %3643
  %3644 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 6
  store i1 1, i1* %3644
  br label %merge611
else610:
  %3645 = alloca i1
  store i1 true, i1* %3645
  %3646 = load %nyx_string*, %nyx_string** %3583
  %3647 = load %nyx_string*, %nyx_string** %3549
  %3648 = call i1 @nyx_string_equals(%nyx_string* %3646, %nyx_string* %3647)
  br i1 %3648, label %sc_or_end613, label %sc_or_rhs612
sc_or_rhs612:
  %3649 = load %nyx_string*, %nyx_string** %3583
  %3650 = load %nyx_string*, %nyx_string** %3552
  %3651 = call i1 @nyx_string_starts_with(%nyx_string* %3649, %nyx_string* %3650)
  store i1 %3651, i1* %3645
  br label %sc_or_end613
sc_or_end613:
  %3652 = load i1, i1* %3645
  br i1 %3652, label %then614, label %else615
then614:
  %3653 = load %nyx_string*, %nyx_string** %3555
  %3654 = load %nyx_string*, %nyx_string** %3583
  %3655 = call %nyx_string* @nyx_string_concat(%nyx_string* %3653, %nyx_string* %3654)
  %3656 = call i8* @nyx_string_to_cstr(%nyx_string* %3655)
  call void @nyx_print_string(i8* %3656)
  %3657 = load %nyx_string*, %nyx_string** %3558
  %3658 = call i8* @nyx_string_to_cstr(%nyx_string* %3657)
  call void @nyx_print_string(i8* %3658)
  %3659 = call i64 @print_valid_options()
  ret i64 1
else615:
  %3660 = alloca i1
  store i1 true, i1* %3660
  %3661 = load %nyx_string*, %nyx_string** %3583
  %3662 = load %nyx_string*, %nyx_string** %3561
  %3663 = call i1 @nyx_string_equals(%nyx_string* %3661, %nyx_string* %3662)
  br i1 %3663, label %sc_or_end618, label %sc_or_rhs617
sc_or_rhs617:
  %3664 = load %nyx_string*, %nyx_string** %3583
  %3665 = load %nyx_string*, %nyx_string** %3564
  %3666 = call i1 @nyx_string_starts_with(%nyx_string* %3664, %nyx_string* %3665)
  store i1 %3666, i1* %3660
  br label %sc_or_end618
sc_or_end618:
  %3667 = load i1, i1* %3660
  br i1 %3667, label %then619, label %else620
then619:
  %3668 = load %nyx_string*, %nyx_string** %3583
  store %nyx_string* %3668, %nyx_string** %3524
  %3669 = alloca i1
  store i1 false, i1* %3669
  %3670 = load %nyx_string*, %nyx_string** %3583
  %3671 = load %nyx_string*, %nyx_string** %3561
  %3672 = call i1 @nyx_string_equals(%nyx_string* %3670, %nyx_string* %3671)
  br i1 %3672, label %sc_and_rhs622, label %sc_and_end623
sc_and_rhs622:
  %3673 = load i64, i64* %3525
  %3674 = add i64 %3673, 1
  %3675 = load { i64, i8* }*, { i64, i8* }** %3521
  %3676 = call i64 @nyx_array_length({ i64, i8* }* %3675)
  %3677 = icmp slt i64 %3674, %3676
  store i1 %3677, i1* %3669
  br label %sc_and_end623
sc_and_end623:
  %3678 = load i1, i1* %3669
  br i1 %3678, label %then624, label %else625
then624:
  %3679 = load i64, i64* %3525
  %3680 = add i64 %3679, 1
  store i64 %3680, i64* %3525
  %3681 = load { i64, i8* }*, { i64, i8* }** %3521
  %3682 = load i64, i64* %3525
  %3683 = call i64 @nyx_array_get_checked({ i64, i8* }* %3681, i64 %3682, i64 2)
  %3684 = inttoptr i64 %3683 to %nyx_string*
  %3685 = alloca %nyx_string*
  store %nyx_string* %3684, %nyx_string** %3685
  %3686 = load %nyx_string*, %nyx_string** %3583
  %3687 = load %nyx_string*, %nyx_string** %3567
  %3688 = call %nyx_string* @nyx_string_concat(%nyx_string* %3686, %nyx_string* %3687)
  %3689 = load %nyx_string*, %nyx_string** %3685
  %3690 = call %nyx_string* @nyx_string_concat(%nyx_string* %3688, %nyx_string* %3689)
  store %nyx_string* %3690, %nyx_string** %3524
  br label %merge626
else625:
  br label %merge626
merge626:
  br label %merge621
else620:
  %3691 = alloca i1
  store i1 true, i1* %3691
  %3692 = load %nyx_string*, %nyx_string** %3583
  %3693 = load %nyx_string*, %nyx_string** %3528
  %3694 = call i1 @nyx_string_equals(%nyx_string* %3692, %nyx_string* %3693)
  br i1 %3694, label %sc_or_end628, label %sc_or_rhs627
sc_or_rhs627:
  %3695 = load %nyx_string*, %nyx_string** %3583
  %3696 = load %nyx_string*, %nyx_string** %3537
  %3697 = call i1 @nyx_string_equals(%nyx_string* %3695, %nyx_string* %3696)
  store i1 %3697, i1* %3691
  br label %sc_or_end628
sc_or_end628:
  %3698 = load i1, i1* %3691
  br i1 %3698, label %then629, label %else630
then629:
  br label %merge631
else630:
  %3699 = load %nyx_string*, %nyx_string** %3583
  %3700 = load %nyx_string*, %nyx_string** %3570
  %3701 = call i1 @nyx_string_ends_with(%nyx_string* %3699, %nyx_string* %3700)
  br i1 %3701, label %then632, label %else633
then632:
  %3702 = load %nyx_string*, %nyx_string** %3583
  %3703 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 4
  store %nyx_string* %3702, %nyx_string** %3703
  br label %merge634
else633:
  %3704 = load %nyx_string*, %nyx_string** %3583
  %3705 = load %nyx_string*, %nyx_string** %3573
  %3706 = call i1 @nyx_string_starts_with(%nyx_string* %3704, %nyx_string* %3705)
  br i1 %3706, label %then635, label %else636
then635:
  %3707 = load %nyx_string*, %nyx_string** %3555
  %3708 = load %nyx_string*, %nyx_string** %3583
  %3709 = call %nyx_string* @nyx_string_concat(%nyx_string* %3707, %nyx_string* %3708)
  %3710 = call i8* @nyx_string_to_cstr(%nyx_string* %3709)
  call void @nyx_print_string(i8* %3710)
  %3711 = call i64 @print_valid_options()
  ret i64 1
else636:
  br label %merge637
merge637:
  br label %merge634
merge634:
  br label %merge631
merge631:
  br label %merge621
merge621:
  br label %merge616
merge616:
  br label %merge611
merge611:
  br label %merge608
merge608:
  br label %merge605
merge605:
  br label %merge602
merge602:
  br label %merge597
merge597:
  br label %merge592
merge592:
  %3712 = load i64, i64* %3525
  %3713 = add i64 %3712, 1
  store i64 %3713, i64* %3525
  br label %while_cond585
while_end587:
  %3714 = load %nyx_string*, %nyx_string** %3524
  %3715 = getelementptr [1 x i8], [1 x i8]* @.str388, i32 0, i32 0
  %3716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3715, i64 0)
  %3717 = call i1 @nyx_string_equals(%nyx_string* %3714, %nyx_string* %3716)
  %3718 = xor i1 %3717, true
  br i1 %3718, label %then638, label %else639
then638:
  %3719 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 5
  %3720 = load i1, i1* %3719
  br i1 %3720, label %then641, label %else642
then641:
  %3721 = getelementptr [47 x i8], [47 x i8]* @.str389, i32 0, i32 0
  %3722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3721, i64 46)
  %3723 = load %nyx_string*, %nyx_string** %3524
  %3724 = call %nyx_string* @nyx_string_concat(%nyx_string* %3722, %nyx_string* %3723)
  %3725 = getelementptr [58 x i8], [58 x i8]* @.str390, i32 0, i32 0
  %3726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3725, i64 57)
  %3727 = call %nyx_string* @nyx_string_concat(%nyx_string* %3724, %nyx_string* %3726)
  %3728 = call i8* @nyx_string_to_cstr(%nyx_string* %3727)
  call void @nyx_print_string(i8* %3728)
  br label %merge643
else642:
  %3729 = getelementptr [24 x i8], [24 x i8]* @.str391, i32 0, i32 0
  %3730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3729, i64 23)
  %3731 = load %nyx_string*, %nyx_string** %3524
  %3732 = call %nyx_string* @nyx_string_concat(%nyx_string* %3730, %nyx_string* %3731)
  %3733 = call i8* @nyx_string_to_cstr(%nyx_string* %3732)
  call void @nyx_print_string(i8* %3733)
  br label %merge643
merge643:
  %3734 = call i64 @print_valid_options()
  ret i64 1
else639:
  br label %merge640
merge640:
  %3735 = getelementptr [1 x i8], [1 x i8]* @.str392, i32 0, i32 0
  %3736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3735, i64 0)
  %3737 = alloca %nyx_string*
  store %nyx_string* %3736, %nyx_string** %3737
  %3738 = getelementptr [1 x i8], [1 x i8]* @.str393, i32 0, i32 0
  %3739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3738, i64 0)
  %3740 = alloca %nyx_string*
  store %nyx_string* %3739, %nyx_string** %3740
  %3741 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 5
  %3742 = load i1, i1* %3741
  br i1 %3742, label %then644, label %else645
then644:
  %3743 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3743, %nyx_string** %3737
  %3744 = load %nyx_string*, %nyx_string** %3737
  %3745 = getelementptr [1 x i8], [1 x i8]* @.str394, i32 0, i32 0
  %3746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3745, i64 0)
  %3747 = call i1 @nyx_string_equals(%nyx_string* %3744, %nyx_string* %3746)
  br i1 %3747, label %then647, label %else648
then647:
  %3748 = call %nyx_string* @cov_clang_major()
  %3749 = alloca %nyx_string*
  store %nyx_string* %3748, %nyx_string** %3749
  %3750 = getelementptr [5 x i8], [5 x i8]* @.str395, i32 0, i32 0
  %3751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3750, i64 4)
  %3752 = alloca %nyx_string*
  store %nyx_string* %3751, %nyx_string** %3752
  %3753 = load %nyx_string*, %nyx_string** %3749
  %3754 = getelementptr [1 x i8], [1 x i8]* @.str396, i32 0, i32 0
  %3755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3754, i64 0)
  %3756 = call i1 @nyx_string_equals(%nyx_string* %3753, %nyx_string* %3755)
  %3757 = xor i1 %3756, true
  br i1 %3757, label %then650, label %else651
then650:
  %3758 = getelementptr [6 x i8], [6 x i8]* @.str397, i32 0, i32 0
  %3759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3758, i64 5)
  %3760 = load %nyx_string*, %nyx_string** %3749
  %3761 = call %nyx_string* @nyx_string_concat(%nyx_string* %3759, %nyx_string* %3760)
  store %nyx_string* %3761, %nyx_string** %3752
  br label %merge652
else651:
  br label %merge652
merge652:
  %3762 = getelementptr [101 x i8], [101 x i8]* @.str398, i32 0, i32 0
  %3763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3762, i64 100)
  %3764 = call i8* @nyx_string_to_cstr(%nyx_string* %3763)
  call void @nyx_print_string(i8* %3764)
  %3765 = getelementptr [35 x i8], [35 x i8]* @.str399, i32 0, i32 0
  %3766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3765, i64 34)
  %3767 = load %nyx_string*, %nyx_string** %3752
  %3768 = call %nyx_string* @nyx_string_concat(%nyx_string* %3766, %nyx_string* %3767)
  %3769 = call i8* @nyx_string_to_cstr(%nyx_string* %3768)
  call void @nyx_print_string(i8* %3769)
  %3770 = getelementptr [82 x i8], [82 x i8]* @.str400, i32 0, i32 0
  %3771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3770, i64 81)
  %3772 = call i8* @nyx_string_to_cstr(%nyx_string* %3771)
  call void @nyx_print_string(i8* %3772)
  %3773 = getelementptr [82 x i8], [82 x i8]* @.str401, i32 0, i32 0
  %3774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3773, i64 81)
  %3775 = call i8* @nyx_string_to_cstr(%nyx_string* %3774)
  call void @nyx_print_string(i8* %3775)
  ret i64 1
else648:
  br label %merge649
merge649:
  %3776 = getelementptr [12 x i8], [12 x i8]* @.str402, i32 0, i32 0
  %3777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3776, i64 11)
  %3778 = getelementptr [5 x i8], [5 x i8]* @.str403, i32 0, i32 0
  %3779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3778, i64 4)
  %3780 = call %nyx_string* @tmp_plantilla(%nyx_string* %3779)
  %3781 = call %nyx_string* @nyx_string_concat(%nyx_string* %3777, %nyx_string* %3780)
  %3782 = getelementptr [2 x i8], [2 x i8]* @.str404, i32 0, i32 0
  %3783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3782, i64 1)
  %3784 = call %nyx_string* @nyx_string_concat(%nyx_string* %3781, %nyx_string* %3783)
  %3785 = call i8* @nyx_string_to_cstr(%nyx_string* %3784)
  %3786 = call %nyx_string* @nyx_exec(i8* %3785)
  %3787 = call %nyx_string* @nyx_string_trim(%nyx_string* %3786)
  store %nyx_string* %3787, %nyx_string** %3740
  %3788 = load %nyx_string*, %nyx_string** %3740
  %3789 = getelementptr [1 x i8], [1 x i8]* @.str405, i32 0, i32 0
  %3790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3789, i64 0)
  %3791 = call i1 @nyx_string_equals(%nyx_string* %3788, %nyx_string* %3790)
  br i1 %3791, label %then653, label %else654
then653:
  %3792 = getelementptr [55 x i8], [55 x i8]* @.str406, i32 0, i32 0
  %3793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3792, i64 54)
  %3794 = call i8* @nyx_string_to_cstr(%nyx_string* %3793)
  call void @nyx_print_string(i8* %3794)
  ret i64 1
else654:
  br label %merge655
merge655:
  br label %merge646
else645:
  br label %merge646
merge646:
  %3795 = call { i64, i8* }* @nyx_array_new_ptr()
  %3796 = alloca { i64, i8* }*
  store { i64, i8* }* %3795, { i64, i8* }** %3796
  %3797 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 4
  %3798 = load %nyx_string*, %nyx_string** %3797
  %3799 = getelementptr [1 x i8], [1 x i8]* @.str407, i32 0, i32 0
  %3800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3799, i64 0)
  %3801 = call i1 @nyx_string_equals(%nyx_string* %3798, %nyx_string* %3800)
  %3802 = xor i1 %3801, true
  br i1 %3802, label %then656, label %else657
then656:
  %3803 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 4
  %3804 = load %nyx_string*, %nyx_string** %3803
  %3805 = call i8* @nyx_string_to_cstr(%nyx_string* %3804)
  %3806 = call i1 @nyx_file_exists(i8* %3805)
  %3807 = xor i1 %3806, true
  br i1 %3807, label %then659, label %else660
then659:
  %3808 = getelementptr [24 x i8], [24 x i8]* @.str408, i32 0, i32 0
  %3809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3808, i64 23)
  %3810 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 4
  %3811 = load %nyx_string*, %nyx_string** %3810
  %3812 = call %nyx_string* @nyx_string_concat(%nyx_string* %3809, %nyx_string* %3811)
  %3813 = call i8* @nyx_string_to_cstr(%nyx_string* %3812)
  call void @nyx_print_string(i8* %3813)
  ret i64 1
else660:
  br label %merge661
merge661:
  %3814 = load { i64, i8* }*, { i64, i8* }** %3796
  %3815 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 4
  %3816 = load %nyx_string*, %nyx_string** %3815
  %3817 = ptrtoint %nyx_string* %3816 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3814, i64 %3817, i64 2)
  br label %merge658
else657:
  %3818 = load %TestConfig, %TestConfig* %3519
  %3819 = call { i64, i8* }* @discover_tests(%TestConfig %3818)
  store { i64, i8* }* %3819, { i64, i8* }** %3796
  br label %merge658
merge658:
  %3820 = load { i64, i8* }*, { i64, i8* }** %3796
  %3821 = call i64 @nyx_array_length({ i64, i8* }* %3820)
  %3822 = icmp eq i64 %3821, 0
  br i1 %3822, label %then662, label %else663
then662:
  %3823 = getelementptr [23 x i8], [23 x i8]* @.str409, i32 0, i32 0
  %3824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3823, i64 22)
  %3825 = call i8* @nyx_string_to_cstr(%nyx_string* %3824)
  call void @nyx_print_string(i8* %3825)
  %3826 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 2
  %3827 = load %nyx_string*, %nyx_string** %3826
  %3828 = getelementptr [1 x i8], [1 x i8]* @.str410, i32 0, i32 0
  %3829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3828, i64 0)
  %3830 = call i1 @nyx_string_equals(%nyx_string* %3827, %nyx_string* %3829)
  %3831 = xor i1 %3830, true
  br i1 %3831, label %then665, label %else666
then665:
  %3832 = getelementptr [12 x i8], [12 x i8]* @.str411, i32 0, i32 0
  %3833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3832, i64 11)
  %3834 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 2
  %3835 = load %nyx_string*, %nyx_string** %3834
  %3836 = call %nyx_string* @nyx_string_concat(%nyx_string* %3833, %nyx_string* %3835)
  %3837 = getelementptr [2 x i8], [2 x i8]* @.str412, i32 0, i32 0
  %3838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3837, i64 1)
  %3839 = call %nyx_string* @nyx_string_concat(%nyx_string* %3836, %nyx_string* %3838)
  %3840 = call i8* @nyx_string_to_cstr(%nyx_string* %3839)
  call void @nyx_print_string(i8* %3840)
  br label %merge667
else666:
  br label %merge667
merge667:
  %3841 = getelementptr [14 x i8], [14 x i8]* @.str413, i32 0, i32 0
  %3842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3841, i64 13)
  %3843 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 0
  %3844 = load %nyx_string*, %nyx_string** %3843
  %3845 = call %nyx_string* @nyx_string_concat(%nyx_string* %3842, %nyx_string* %3844)
  %3846 = getelementptr [2 x i8], [2 x i8]* @.str414, i32 0, i32 0
  %3847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3846, i64 1)
  %3848 = call %nyx_string* @nyx_string_concat(%nyx_string* %3845, %nyx_string* %3847)
  %3849 = call i8* @nyx_string_to_cstr(%nyx_string* %3848)
  call void @nyx_print_string(i8* %3849)
  ret i64 0
else663:
  br label %merge664
merge664:
  %3850 = getelementptr [9 x i8], [9 x i8]* @.str415, i32 0, i32 0
  %3851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3850, i64 8)
  %3852 = load { i64, i8* }*, { i64, i8* }** %3796
  %3853 = call i64 @nyx_array_length({ i64, i8* }* %3852)
  %3854 = call %nyx_string* @nyx_string_from_int(i64 %3853)
  %3855 = call %nyx_string* @nyx_string_concat(%nyx_string* %3851, %nyx_string* %3854)
  %3856 = getelementptr [14 x i8], [14 x i8]* @.str416, i32 0, i32 0
  %3857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3856, i64 13)
  %3858 = call %nyx_string* @nyx_string_concat(%nyx_string* %3855, %nyx_string* %3857)
  %3859 = call i8* @nyx_string_to_cstr(%nyx_string* %3858)
  call void @nyx_print_string(i8* %3859)
  %3860 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 2
  %3861 = load %nyx_string*, %nyx_string** %3860
  %3862 = getelementptr [1 x i8], [1 x i8]* @.str417, i32 0, i32 0
  %3863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3862, i64 0)
  %3864 = call i1 @nyx_string_equals(%nyx_string* %3861, %nyx_string* %3863)
  %3865 = xor i1 %3864, true
  br i1 %3865, label %then668, label %else669
then668:
  %3866 = getelementptr [12 x i8], [12 x i8]* @.str418, i32 0, i32 0
  %3867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3866, i64 11)
  %3868 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 2
  %3869 = load %nyx_string*, %nyx_string** %3868
  %3870 = call %nyx_string* @nyx_string_concat(%nyx_string* %3867, %nyx_string* %3869)
  %3871 = getelementptr [2 x i8], [2 x i8]* @.str419, i32 0, i32 0
  %3872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3871, i64 1)
  %3873 = call %nyx_string* @nyx_string_concat(%nyx_string* %3870, %nyx_string* %3872)
  %3874 = call i8* @nyx_string_to_cstr(%nyx_string* %3873)
  call void @nyx_print_string(i8* %3874)
  br label %merge670
else669:
  br label %merge670
merge670:
  %3875 = getelementptr [1 x i8], [1 x i8]* @.str420, i32 0, i32 0
  %3876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3875, i64 0)
  %3877 = call i8* @nyx_string_to_cstr(%nyx_string* %3876)
  call void @nyx_print_string(i8* %3877)
  %3878 = alloca i1
  store i1 false, i1* %3878
  %3879 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 8
  %3880 = load %nyx_string*, %nyx_string** %3879
  %3881 = getelementptr [1 x i8], [1 x i8]* @.str421, i32 0, i32 0
  %3882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3881, i64 0)
  %3883 = call i1 @nyx_string_equals(%nyx_string* %3880, %nyx_string* %3882)
  %3884 = xor i1 %3883, true
  br i1 %3884, label %sc_and_rhs671, label %sc_and_end672
sc_and_rhs671:
  %3885 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 5
  %3886 = load i1, i1* %3885
  %3887 = xor i1 %3886, true
  store i1 %3887, i1* %3878
  br label %sc_and_end672
sc_and_end672:
  %3888 = load i1, i1* %3878
  br i1 %3888, label %then673, label %else674
then673:
  %3889 = getelementptr [9 x i8], [9 x i8]* @.str422, i32 0, i32 0
  %3890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3889, i64 8)
  %3891 = call i8* @nyx_string_to_cstr(%nyx_string* %3890)
  %3892 = call %nyx_string* @nyx_getenv(i8* %3891)
  %3893 = alloca %nyx_string*
  store %nyx_string* %3892, %nyx_string** %3893
  %3894 = load %nyx_string*, %nyx_string** %3893
  %3895 = getelementptr [11 x i8], [11 x i8]* @.str423, i32 0, i32 0
  %3896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3895, i64 10)
  %3897 = call %nyx_string* @nyx_string_concat(%nyx_string* %3894, %nyx_string* %3896)
  %3898 = alloca %nyx_string*
  store %nyx_string* %3897, %nyx_string** %3898
  %3899 = load %nyx_string*, %nyx_string** %3898
  %3900 = call i8* @nyx_string_to_cstr(%nyx_string* %3899)
  %3901 = call i1 @nyx_file_exists(i8* %3900)
  %3902 = xor i1 %3901, true
  br i1 %3902, label %then676, label %else677
then676:
  %3903 = load %nyx_string*, %nyx_string** %3893
  %3904 = getelementptr [15 x i8], [15 x i8]* @.str424, i32 0, i32 0
  %3905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3904, i64 14)
  %3906 = call %nyx_string* @nyx_string_concat(%nyx_string* %3903, %nyx_string* %3905)
  store %nyx_string* %3906, %nyx_string** %3898
  br label %merge678
else677:
  br label %merge678
merge678:
  %3907 = getelementptr [1 x i8], [1 x i8]* @.str425, i32 0, i32 0
  %3908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3907, i64 0)
  %3909 = alloca %nyx_string*
  store %nyx_string* %3908, %nyx_string** %3909
  %3910 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 7
  %3911 = load i1, i1* %3910
  br i1 %3911, label %then679, label %else680
then679:
  %3912 = getelementptr [11 x i8], [11 x i8]* @.str426, i32 0, i32 0
  %3913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3912, i64 10)
  store %nyx_string* %3913, %nyx_string** %3909
  br label %merge681
else680:
  br label %merge681
merge681:
  %3914 = getelementptr [9 x i8], [9 x i8]* @.str427, i32 0, i32 0
  %3915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3914, i64 8)
  %3916 = getelementptr [11 x i8], [11 x i8]* @.str428, i32 0, i32 0
  %3917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3916, i64 10)
  %3918 = call %nyx_string* @tmp_plantilla(%nyx_string* %3917)
  %3919 = call %nyx_string* @nyx_string_concat(%nyx_string* %3915, %nyx_string* %3918)
  %3920 = getelementptr [2 x i8], [2 x i8]* @.str429, i32 0, i32 0
  %3921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3920, i64 1)
  %3922 = call %nyx_string* @nyx_string_concat(%nyx_string* %3919, %nyx_string* %3921)
  %3923 = call i8* @nyx_string_to_cstr(%nyx_string* %3922)
  %3924 = call %nyx_string* @nyx_exec(i8* %3923)
  %3925 = call %nyx_string* @nyx_string_trim(%nyx_string* %3924)
  %3926 = alloca %nyx_string*
  store %nyx_string* %3925, %nyx_string** %3926
  %3927 = getelementptr [2 x i8], [2 x i8]* @.str430, i32 0, i32 0
  %3928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3927, i64 1)
  %3929 = load %nyx_string*, %nyx_string** %3898
  %3930 = call %nyx_string* @nyx_string_concat(%nyx_string* %3928, %nyx_string* %3929)
  %3931 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %3932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3931, i64 6)
  %3933 = call %nyx_string* @nyx_string_concat(%nyx_string* %3930, %nyx_string* %3932)
  %3934 = load %nyx_string*, %nyx_string** %3909
  %3935 = call %nyx_string* @nyx_string_concat(%nyx_string* %3933, %nyx_string* %3934)
  %3936 = getelementptr [5 x i8], [5 x i8]* @.str432, i32 0, i32 0
  %3937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3936, i64 4)
  %3938 = call %nyx_string* @nyx_string_concat(%nyx_string* %3935, %nyx_string* %3937)
  %3939 = load %nyx_string*, %nyx_string** %3926
  %3940 = call %nyx_string* @nyx_string_concat(%nyx_string* %3938, %nyx_string* %3939)
  %3941 = getelementptr [7 x i8], [7 x i8]* @.str433, i32 0, i32 0
  %3942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3941, i64 6)
  %3943 = call %nyx_string* @nyx_string_concat(%nyx_string* %3940, %nyx_string* %3942)
  %3944 = call i8* @nyx_string_to_cstr(%nyx_string* %3943)
  %3945 = call i64 @nyx_exec_code(i8* %3944)
  %3946 = alloca i64
  store i64 %3945, i64* %3946
  %3947 = load %nyx_string*, %nyx_string** %3926
  %3948 = call i8* @nyx_string_to_cstr(%nyx_string* %3947)
  %3949 = call %nyx_string* @nyx_read_file(i8* %3948)
  %3950 = alloca %nyx_string*
  store %nyx_string* %3949, %nyx_string** %3950
  %3951 = getelementptr [8 x i8], [8 x i8]* @.str434, i32 0, i32 0
  %3952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3951, i64 7)
  %3953 = load %nyx_string*, %nyx_string** %3926
  %3954 = call %nyx_string* @nyx_string_concat(%nyx_string* %3952, %nyx_string* %3953)
  %3955 = getelementptr [2 x i8], [2 x i8]* @.str435, i32 0, i32 0
  %3956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3955, i64 1)
  %3957 = call %nyx_string* @nyx_string_concat(%nyx_string* %3954, %nyx_string* %3956)
  %3958 = call i8* @nyx_string_to_cstr(%nyx_string* %3957)
  %3959 = call i64 @nyx_exec_code(i8* %3958)
  %3960 = load i64, i64* %3946
  %3961 = icmp ne i64 %3960, 0
  br i1 %3961, label %then682, label %else683
then682:
  %3962 = getelementptr [65 x i8], [65 x i8]* @.str436, i32 0, i32 0
  %3963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3962, i64 64)
  %3964 = call i8* @nyx_string_to_cstr(%nyx_string* %3963)
  call void @nyx_print_string(i8* %3964)
  %3965 = load %nyx_string*, %nyx_string** %3950
  %3966 = call i8* @nyx_string_to_cstr(%nyx_string* %3965)
  call void @nyx_print_string(i8* %3966)
  ret i64 1
else683:
  br label %merge684
merge684:
  %3967 = load %nyx_string*, %nyx_string** %3950
  %3968 = getelementptr [2 x i8], [2 x i8]* @.str437, i32 0, i32 0
  %3969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3968, i64 1)
  %3970 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3967, %nyx_string* %3969)
  %3971 = alloca { i64, i8* }*
  store { i64, i8* }* %3970, { i64, i8* }** %3971
  %3972 = alloca i64
  store i64 0, i64* %3972
  %3973 = alloca i64
  store i64 0, i64* %3973
  %3974 = alloca i64
  store i64 0, i64* %3974
  %3975 = getelementptr [13 x i8], [13 x i8]* @.str438, i32 0, i32 0
  %3976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3975, i64 12)
  %3977 = alloca %nyx_string*
  store %nyx_string* %3976, %nyx_string** %3977
  %3978 = getelementptr [6 x i8], [6 x i8]* @.str439, i32 0, i32 0
  %3979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3978, i64 5)
  %3980 = alloca %nyx_string*
  store %nyx_string* %3979, %nyx_string** %3980
  %3981 = getelementptr [8 x i8], [8 x i8]* @.str440, i32 0, i32 0
  %3982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3981, i64 7)
  %3983 = alloca %nyx_string*
  store %nyx_string* %3982, %nyx_string** %3983
  %3984 = getelementptr [4 x i8], [4 x i8]* @.str441, i32 0, i32 0
  %3985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3984, i64 3)
  %3986 = alloca %nyx_string*
  store %nyx_string* %3985, %nyx_string** %3986
  %3987 = call i8* @llvm.stacksave()
  br label %while_cond685
while_cond685:
  %3988 = load i64, i64* %3972
  %3989 = load { i64, i8* }*, { i64, i8* }** %3971
  %3990 = call i64 @nyx_array_length({ i64, i8* }* %3989)
  %3991 = icmp slt i64 %3988, %3990
  br i1 %3991, label %while_body686, label %while_end687
while_body686:
  call void @llvm.stackrestore(i8* %3987)
  %3992 = load { i64, i8* }*, { i64, i8* }** %3971
  %3993 = load i64, i64* %3972
  %3994 = call i64 @nyx_array_get_checked({ i64, i8* }* %3992, i64 %3993, i64 2)
  %3995 = inttoptr i64 %3994 to %nyx_string*
  %3996 = alloca %nyx_string*
  store %nyx_string* %3995, %nyx_string** %3996
  %3997 = load %nyx_string*, %nyx_string** %3996
  %3998 = load %nyx_string*, %nyx_string** %3977
  %3999 = call i1 @nyx_string_starts_with(%nyx_string* %3997, %nyx_string* %3998)
  br i1 %3999, label %then688, label %else689
then688:
  %4000 = load %nyx_string*, %nyx_string** %3996
  %4001 = load %nyx_string*, %nyx_string** %3996
  %4002 = call i64 @nyx_string_byte_length(%nyx_string* %4001)
  %4003 = call %nyx_string* @nyx_string_substring(%nyx_string* %4000, i64 12, i64 %4002)
  %4004 = call %nyx_string* @nyx_string_trim(%nyx_string* %4003)
  %4005 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 9
  store %nyx_string* %4004, %nyx_string** %4005
  br label %merge690
else689:
  br label %merge690
merge690:
  %4006 = load %nyx_string*, %nyx_string** %3996
  %4007 = load %nyx_string*, %nyx_string** %3980
  %4008 = call i1 @nyx_string_contains(%nyx_string* %4006, %nyx_string* %4007)
  br i1 %4008, label %then691, label %else692
then691:
  %4009 = load i64, i64* %3973
  %4010 = add i64 %4009, 1
  store i64 %4010, i64* %3973
  br label %merge693
else692:
  br label %merge693
merge693:
  %4011 = load %nyx_string*, %nyx_string** %3996
  %4012 = load %nyx_string*, %nyx_string** %3983
  %4013 = call i1 @nyx_string_contains(%nyx_string* %4011, %nyx_string* %4012)
  br i1 %4013, label %then694, label %else695
then694:
  %4014 = load i64, i64* %3974
  %4015 = add i64 %4014, 1
  store i64 %4015, i64* %3974
  br label %merge696
else695:
  br label %merge696
merge696:
  %4016 = load %nyx_string*, %nyx_string** %3996
  %4017 = load %nyx_string*, %nyx_string** %3986
  %4018 = call i1 @nyx_string_contains(%nyx_string* %4016, %nyx_string* %4017)
  br i1 %4018, label %then697, label %else698
then697:
  %4019 = load %nyx_string*, %nyx_string** %3996
  %4020 = call i8* @nyx_string_to_cstr(%nyx_string* %4019)
  call void @nyx_print_string(i8* %4020)
  br label %merge699
else698:
  br label %merge699
merge699:
  %4021 = load i64, i64* %3972
  %4022 = add i64 %4021, 1
  store i64 %4022, i64* %3972
  br label %while_cond685
while_end687:
  %4023 = getelementptr [18 x i8], [18 x i8]* @.str442, i32 0, i32 0
  %4024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %4023, i64 17)
  %4025 = load i64, i64* %3973
  %4026 = call %nyx_string* @nyx_string_from_int(i64 %4025)
  %4027 = call %nyx_string* @nyx_string_concat(%nyx_string* %4024, %nyx_string* %4026)
  %4028 = getelementptr [16 x i8], [16 x i8]* @.str443, i32 0, i32 0
  %4029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %4028, i64 15)
  %4030 = call %nyx_string* @nyx_string_concat(%nyx_string* %4027, %nyx_string* %4029)
  %4031 = load i64, i64* %3974
  %4032 = call %nyx_string* @nyx_string_from_int(i64 %4031)
  %4033 = call %nyx_string* @nyx_string_concat(%nyx_string* %4030, %nyx_string* %4032)
  %4034 = getelementptr [16 x i8], [16 x i8]* @.str444, i32 0, i32 0
  %4035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %4034, i64 15)
  %4036 = call %nyx_string* @nyx_string_concat(%nyx_string* %4033, %nyx_string* %4035)
  %4037 = call i8* @nyx_string_to_cstr(%nyx_string* %4036)
  call void @nyx_print_string(i8* %4037)
  %4038 = getelementptr [1 x i8], [1 x i8]* @.str445, i32 0, i32 0
  %4039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %4038, i64 0)
  %4040 = call i8* @nyx_string_to_cstr(%nyx_string* %4039)
  call void @nyx_print_string(i8* %4040)
  br label %merge675
else674:
  br label %merge675
merge675:
  %4041 = call { i64, i8* }* @nyx_array_new_ptr()
  %4042 = alloca { i64, i8* }*
  store { i64, i8* }* %4041, { i64, i8* }** %4042
  %4043 = call { i64, i8* }* @nyx_array_new_ptr()
  %4044 = alloca { i64, i8* }*
  store { i64, i8* }* %4043, { i64, i8* }** %4044
  %4045 = call { i64, i8* }* @nyx_array_new_ptr()
  %4046 = alloca { i64, i8* }*
  store { i64, i8* }* %4045, { i64, i8* }** %4046
  %4047 = alloca i64
  store i64 0, i64* %4047
  %4048 = alloca i64
  store i64 0, i64* %4048
  %4049 = alloca i64
  store i64 0, i64* %4049
  %4050 = call i8* @llvm.stacksave()
  br label %while_cond700
while_cond700:
  %4051 = load i64, i64* %4049
  %4052 = load { i64, i8* }*, { i64, i8* }** %3796
  %4053 = call i64 @nyx_array_length({ i64, i8* }* %4052)
  %4054 = icmp slt i64 %4051, %4053
  br i1 %4054, label %while_body701, label %while_end702
while_body701:
  call void @llvm.stackrestore(i8* %4050)
  %4055 = load { i64, i8* }*, { i64, i8* }** %3796
  %4056 = load i64, i64* %4049
  %4057 = call i64 @nyx_array_get_checked({ i64, i8* }* %4055, i64 %4056, i64 2)
  %4058 = inttoptr i64 %4057 to %nyx_string*
  %4059 = alloca %nyx_string*
  store %nyx_string* %4058, %nyx_string** %4059
  %4060 = load %nyx_string*, %nyx_string** %4059
  %4061 = call i1 @file_has_test_blocks(%nyx_string* %4060)
  %4062 = xor i1 %4061, true
  br i1 %4062, label %then703, label %else704
then703:
  %4063 = load i64, i64* %4049
  %4064 = add i64 %4063, 1
  store i64 %4064, i64* %4049
  br label %merge705
else704:
  %4065 = load %nyx_string*, %nyx_string** %4059
  %4066 = load %TestConfig, %TestConfig* %3519
  %4067 = load %nyx_string*, %nyx_string** %3740
  %4068 = load i64, i64* %4049
  %4069 = call %TestResult @compile_and_run(%nyx_string* %4065, %TestConfig %4066, %nyx_string* %4067, i64 %4068)
  %4070 = alloca %TestResult
  store %TestResult %4069, %TestResult* %4070
  %4071 = load { i64, i8* }*, { i64, i8* }** %4042
  %4072 = load %TestResult, %TestResult* %4070
  %4073 = getelementptr %TestResult, %TestResult* null, i32 1
  %4074 = ptrtoint %TestResult* %4073 to i64
  %4075 = call i8* @GC_malloc(i64 %4074)
  %4076 = bitcast i8* %4075 to %TestResult*
  store %TestResult %4072, %TestResult* %4076
  %4077 = ptrtoint %TestResult* %4076 to i64
  call void @nyx_array_push({ i64, i8* }* %4071, i64 %4077)
  %4078 = load { i64, i8* }*, { i64, i8* }** %4044
  %4079 = load %nyx_string*, %nyx_string** %4059
  %4080 = ptrtoint %nyx_string* %4079 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4078, i64 %4080, i64 2)
  %4081 = load { i64, i8* }*, { i64, i8* }** %4046
  %4082 = load i64, i64* %4049
  %4083 = call %nyx_string* @nyx_string_from_int(i64 %4082)
  %4084 = ptrtoint %nyx_string* %4083 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4081, i64 %4084, i64 2)
  %4085 = load i64, i64* %4047
  %4086 = getelementptr %TestResult, %TestResult* %4070, i32 0, i32 1
  %4087 = load i64, i64* %4086
  %4088 = add i64 %4085, %4087
  store i64 %4088, i64* %4047
  %4089 = load i64, i64* %4048
  %4090 = getelementptr %TestResult, %TestResult* %4070, i32 0, i32 2
  %4091 = load i64, i64* %4090
  %4092 = add i64 %4089, %4091
  store i64 %4092, i64* %4048
  %4093 = load %TestResult, %TestResult* %4070
  %4094 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 3
  %4095 = load i1, i1* %4094
  %4096 = call i64 @print_result(%TestResult %4093, i1 %4095)
  %4097 = load i64, i64* %4049
  %4098 = add i64 %4097, 1
  store i64 %4098, i64* %4049
  br label %merge705
merge705:
  br label %while_cond700
while_end702:
  %4099 = load { i64, i8* }*, { i64, i8* }** %4042
  %4100 = call i64 @nyx_array_length({ i64, i8* }* %4099)
  %4101 = icmp eq i64 %4100, 0
  br i1 %4101, label %then706, label %else707
then706:
  %4102 = getelementptr [35 x i8], [35 x i8]* @.str446, i32 0, i32 0
  %4103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %4102, i64 34)
  %4104 = call i8* @nyx_string_to_cstr(%nyx_string* %4103)
  call void @nyx_print_string(i8* %4104)
  %4105 = load %nyx_string*, %nyx_string** %3740
  %4106 = getelementptr [1 x i8], [1 x i8]* @.str447, i32 0, i32 0
  %4107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %4106, i64 0)
  %4108 = call i1 @nyx_string_equals(%nyx_string* %4105, %nyx_string* %4107)
  %4109 = xor i1 %4108, true
  br i1 %4109, label %then709, label %else710
then709:
  %4110 = getelementptr [9 x i8], [9 x i8]* @.str448, i32 0, i32 0
  %4111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %4110, i64 8)
  %4112 = load %nyx_string*, %nyx_string** %3740
  %4113 = call %nyx_string* @nyx_string_concat(%nyx_string* %4111, %nyx_string* %4112)
  %4114 = getelementptr [2 x i8], [2 x i8]* @.str449, i32 0, i32 0
  %4115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %4114, i64 1)
  %4116 = call %nyx_string* @nyx_string_concat(%nyx_string* %4113, %nyx_string* %4115)
  %4117 = call i8* @nyx_string_to_cstr(%nyx_string* %4116)
  %4118 = call %nyx_string* @nyx_exec(i8* %4117)
  br label %merge711
else710:
  br label %merge711
merge711:
  ret i64 0
else707:
  br label %merge708
merge708:
  %4119 = load { i64, i8* }*, { i64, i8* }** %4042
  %4120 = load i64, i64* %4047
  %4121 = load i64, i64* %4048
  %4122 = call i64 @print_summary({ i64, i8* }* %4119, i64 %4120, i64 %4121)
  %4123 = load %nyx_string*, %nyx_string** %3490
  %4124 = call %nyx_string* @huella_compilador(%nyx_string* %4123)
  %4125 = alloca %nyx_string*
  store %nyx_string* %4124, %nyx_string** %4125
  %4126 = load %nyx_string*, %nyx_string** %3490
  %4127 = call %nyx_string* @huella_resto(%nyx_string* %4126)
  %4128 = alloca %nyx_string*
  store %nyx_string* %4127, %nyx_string** %4128
  %4129 = alloca i1
  store i1 true, i1* %4129
  %4130 = load %nyx_string*, %nyx_string** %4125
  %4131 = load %nyx_string*, %nyx_string** %3501
  %4132 = call i1 @nyx_string_equals(%nyx_string* %4130, %nyx_string* %4131)
  %4133 = xor i1 %4132, true
  br i1 %4133, label %sc_or_end713, label %sc_or_rhs712
sc_or_rhs712:
  %4134 = load %nyx_string*, %nyx_string** %4128
  %4135 = load %nyx_string*, %nyx_string** %3504
  %4136 = call i1 @nyx_string_equals(%nyx_string* %4134, %nyx_string* %4135)
  %4137 = xor i1 %4136, true
  store i1 %4137, i1* %4129
  br label %sc_or_end713
sc_or_end713:
  %4138 = load i1, i1* %4129
  br i1 %4138, label %then714, label %else715
then714:
  %4139 = getelementptr [1 x i8], [1 x i8]* @.str450, i32 0, i32 0
  %4140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %4139, i64 0)
  %4141 = call i8* @nyx_string_to_cstr(%nyx_string* %4140)
  call void @nyx_print_string(i8* %4141)
  %4142 = getelementptr [48 x i8], [48 x i8]* @.str451, i32 0, i32 0
  %4143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %4142, i64 47)
  %4144 = load %nyx_string*, %nyx_string** %3490
  %4145 = call %nyx_string* @nyx_string_concat(%nyx_string* %4143, %nyx_string* %4144)
  %4146 = getelementptr [2 x i8], [2 x i8]* @.str452, i32 0, i32 0
  %4147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %4146, i64 1)
  %4148 = call %nyx_string* @nyx_string_concat(%nyx_string* %4145, %nyx_string* %4147)
  %4149 = call i8* @nyx_string_to_cstr(%nyx_string* %4148)
  call void @nyx_print_string(i8* %4149)
  %4150 = load %nyx_string*, %nyx_string** %4125
  %4151 = load %nyx_string*, %nyx_string** %3501
  %4152 = call i1 @nyx_string_equals(%nyx_string* %4150, %nyx_string* %4151)
  %4153 = xor i1 %4152, true
  br i1 %4153, label %then717, label %else718
then717:
  %4154 = getelementptr [31 x i8], [31 x i8]* @.str453, i32 0, i32 0
  %4155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %4154, i64 30)
  %4156 = load %nyx_string*, %nyx_string** %3501
  %4157 = call %nyx_string* @nyx_string_concat(%nyx_string* %4155, %nyx_string* %4156)
  %4158 = getelementptr [5 x i8], [5 x i8]* @.str454, i32 0, i32 0
  %4159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %4158, i64 4)
  %4160 = call %nyx_string* @nyx_string_concat(%nyx_string* %4157, %nyx_string* %4159)
  %4161 = load %nyx_string*, %nyx_string** %4125
  %4162 = call %nyx_string* @nyx_string_concat(%nyx_string* %4160, %nyx_string* %4161)
  %4163 = call i8* @nyx_string_to_cstr(%nyx_string* %4162)
  call void @nyx_print_string(i8* %4163)
  br label %merge719
else718:
  %4164 = getelementptr [53 x i8], [53 x i8]* @.str455, i32 0, i32 0
  %4165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %4164, i64 52)
  %4166 = call i8* @nyx_string_to_cstr(%nyx_string* %4165)
  call void @nyx_print_string(i8* %4166)
  br label %merge719
merge719:
  %4167 = getelementptr [71 x i8], [71 x i8]* @.str456, i32 0, i32 0
  %4168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %4167, i64 70)
  %4169 = call i8* @nyx_string_to_cstr(%nyx_string* %4168)
  call void @nyx_print_string(i8* %4169)
  %4170 = getelementptr [69 x i8], [69 x i8]* @.str457, i32 0, i32 0
  %4171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %4170, i64 68)
  %4172 = call i8* @nyx_string_to_cstr(%nyx_string* %4171)
  call void @nyx_print_string(i8* %4172)
  br label %merge716
else715:
  br label %merge716
merge716:
  %4173 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 5
  %4174 = load i1, i1* %4173
  br i1 %4174, label %then720, label %else721
then720:
  %4175 = load %nyx_string*, %nyx_string** %3740
  %4176 = load { i64, i8* }*, { i64, i8* }** %4044
  %4177 = load { i64, i8* }*, { i64, i8* }** %4046
  %4178 = load %nyx_string*, %nyx_string** %3737
  %4179 = getelementptr %TestConfig, %TestConfig* %3519, i32 0, i32 6
  %4180 = load i1, i1* %4179
  %4181 = call i64 @cov_report(%nyx_string* %4175, { i64, i8* }* %4176, { i64, i8* }* %4177, %nyx_string* %4178, i1 %4180)
  %4182 = getelementptr [9 x i8], [9 x i8]* @.str458, i32 0, i32 0
  %4183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %4182, i64 8)
  %4184 = load %nyx_string*, %nyx_string** %3740
  %4185 = call %nyx_string* @nyx_string_concat(%nyx_string* %4183, %nyx_string* %4184)
  %4186 = getelementptr [2 x i8], [2 x i8]* @.str459, i32 0, i32 0
  %4187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %4186, i64 1)
  %4188 = call %nyx_string* @nyx_string_concat(%nyx_string* %4185, %nyx_string* %4187)
  %4189 = call i8* @nyx_string_to_cstr(%nyx_string* %4188)
  %4190 = call %nyx_string* @nyx_exec(i8* %4189)
  br label %merge722
else721:
  br label %merge722
merge722:
  %4191 = alloca i64
  store i64 0, i64* %4191
  %4192 = alloca i64
  store i64 0, i64* %4192
  %4193 = call i8* @llvm.stacksave()
  br label %while_cond723
while_cond723:
  %4194 = load i64, i64* %4192
  %4195 = load { i64, i8* }*, { i64, i8* }** %4042
  %4196 = call i64 @nyx_array_length({ i64, i8* }* %4195)
  %4197 = icmp slt i64 %4194, %4196
  br i1 %4197, label %while_body724, label %while_end725
while_body724:
  call void @llvm.stackrestore(i8* %4193)
  %4198 = load { i64, i8* }*, { i64, i8* }** %4042
  %4199 = load i64, i64* %4192
  %4200 = getelementptr [11 x i8], [11 x i8]* @.slotT460, i32 0, i32 0
  %4201 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %4198, i64 %4199, i8* %4200)
  %4202 = inttoptr i64 %4201 to %TestResult*
  %4203 = load %TestResult, %TestResult* %4202
  %4204 = alloca %TestResult
  store %TestResult %4203, %TestResult* %4204
  %4205 = getelementptr %TestResult, %TestResult* %4204, i32 0, i32 4
  %4206 = load i1, i1* %4205
  %4207 = xor i1 %4206, true
  br i1 %4207, label %then726, label %else727
then726:
  %4208 = load i64, i64* %4191
  %4209 = add i64 %4208, 1
  store i64 %4209, i64* %4191
  br label %merge728
else727:
  br label %merge728
merge728:
  %4210 = load i64, i64* %4192
  %4211 = add i64 %4210, 1
  store i64 %4211, i64* %4192
  br label %while_cond723
while_end725:
  %4212 = alloca i1
  store i1 true, i1* %4212
  %4213 = load i64, i64* %4048
  %4214 = icmp sgt i64 %4213, 0
  br i1 %4214, label %sc_or_end730, label %sc_or_rhs729
sc_or_rhs729:
  %4215 = load i64, i64* %4191
  %4216 = icmp sgt i64 %4215, 0
  store i1 %4216, i1* %4212
  br label %sc_or_end730
sc_or_end730:
  %4217 = load i1, i1* %4212
  br i1 %4217, label %then731, label %else732
then731:
  ret i64 1
else732:
  br label %merge733
merge733:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %4218 = sub i64 0, 9223372036854775808
  store i64 %4218, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

