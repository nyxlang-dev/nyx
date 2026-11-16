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
  %t1478 = alloca %nyx_string*
  %t1483 = alloca %nyx_string*
  %t1484 = alloca i1
  %t1509 = alloca %nyx_string*
  %t1510 = alloca i1
  %t1549 = alloca %nyx_string*
  %t1552 = alloca %nyx_string*
  %t1555 = alloca %nyx_string*
  %t1568 = alloca %nyx_string*
  %t1593 = alloca %nyx_string*
  %t1596 = alloca %nyx_string*
  %t1599 = alloca %nyx_string*
  %t1602 = alloca %nyx_string*
  %t1616 = alloca { i64, i8* }*
  %t1619 = alloca %nyx_string*
  %t1620 = alloca i64
  %t1623 = alloca %nyx_string*
  %t1626 = alloca %nyx_string*
  %t1635 = alloca %nyx_string*
  %t1636 = alloca i1
  %t1670 = alloca i1
  %t1709 = alloca { i64, i8* }*
  %t1710 = alloca i64
  %t1713 = alloca %nyx_string*
  %t1716 = alloca %nyx_string*
  %t1719 = alloca %nyx_string*
  %t1728 = alloca %nyx_string*
  %t1732 = alloca i64
  %t1738 = alloca %nyx_string*
  %t1786 = alloca %nyx_string*
  %t1790 = alloca %nyx_string*
  %t1798 = alloca %nyx_string*
  %t1919 = alloca %nyx_string*
  %t1924 = alloca %nyx_string*
  %t1940 = alloca i64
  %t1943 = alloca %nyx_string*
  %t1959 = alloca i64
  %t1960 = alloca i64
  %t1965 = alloca { i64, i8* }*
  %t1966 = alloca i64
  %t1969 = alloca %nyx_string*
  %t1972 = alloca %nyx_string*
  %t1981 = alloca %nyx_string*
  %t2006 = alloca i1
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
  %t1455 = getelementptr [62 x i8], [62 x i8]* @.str108, i32 0, i32 0
  %t1456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t1455, i64 61)
  %t1457 = getelementptr [54 x i8], [54 x i8]* @.str109, i32 0, i32 0
  %t1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t1457, i64 53)
  %t1459 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1456, %nyx_string* %t1458)
  %t1460 = getelementptr [48 x i8], [48 x i8]* @.str110, i32 0, i32 0
  %t1461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t1460, i64 47)
  %t1462 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1459, %nyx_string* %t1461)
  %t1463 = getelementptr [47 x i8], [47 x i8]* @.str111, i32 0, i32 0
  %t1464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t1463, i64 46)
  %t1465 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1462, %nyx_string* %t1464)
  %t1466 = getelementptr [67 x i8], [67 x i8]* @.str112, i32 0, i32 0
  %t1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t1466, i64 66)
  %t1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1465, %nyx_string* %t1467)
  %t1469 = getelementptr [51 x i8], [51 x i8]* @.str113, i32 0, i32 0
  %t1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t1469, i64 50)
  %t1471 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1468, %nyx_string* %t1470)
  %t1472 = getelementptr [105 x i8], [105 x i8]* @.str114, i32 0, i32 0
  %t1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t1472, i64 104)
  %t1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1471, %nyx_string* %t1473)
  %t1475 = getelementptr [23 x i8], [23 x i8]* @.str115, i32 0, i32 0
  %t1476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t1475, i64 22)
  %t1477 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1474, %nyx_string* %t1476)
  store %nyx_string* %t1477, %nyx_string** %t1478
  %t1479 = getelementptr [15 x i8], [15 x i8]* @.str116, i32 0, i32 0
  %t1480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t1479, i64 14)
  %t1481 = call i8* @nyx_string_to_cstr(%nyx_string* %t1480)
  %t1482 = call %nyx_string* @nyx_getenv(i8* %t1481)
  store %nyx_string* %t1482, %nyx_string** %t1483
  store i1 false, i1* %t1484
  %t1485 = load %nyx_string*, %nyx_string** %t1483
  %t1486 = getelementptr [1 x i8], [1 x i8]* @.str117, i32 0, i32 0
  %t1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t1486, i64 0)
  %t1488 = call i1 @nyx_string_equals(%nyx_string* %t1485, %nyx_string* %t1487)
  %t1489 = xor i1 %t1488, true
  br i1 %t1489, label %sc_and_rhs329, label %sc_and_end330
sc_and_rhs329:
  %t1490 = load %nyx_string*, %nyx_string** %t1483
  %t1491 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %t1492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t1491, i64 1)
  %t1493 = call i1 @nyx_string_starts_with(%nyx_string* %t1490, %nyx_string* %t1492)
  %t1494 = xor i1 %t1493, true
  store i1 %t1494, i1* %t1484
  br label %sc_and_end330
sc_and_end330:
  %t1495 = load i1, i1* %t1484
  br i1 %t1495, label %then331, label %else332
then331:
  %t1496 = load %nyx_string*, %nyx_string** %t1398
  %t1497 = getelementptr [2 x i8], [2 x i8]* @.str119, i32 0, i32 0
  %t1498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t1497, i64 1)
  %t1499 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1496, %nyx_string* %t1498)
  %t1500 = load %nyx_string*, %nyx_string** %t1483
  %t1501 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1499, %nyx_string* %t1500)
  store %nyx_string* %t1501, %nyx_string** %t1483
  br label %merge333
else332:
  br label %merge333
merge333:
  %t1502 = getelementptr [8 x i8], [8 x i8]* @.str120, i32 0, i32 0
  %t1503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t1502, i64 7)
  %t1504 = load %nyx_string*, %nyx_string** %t1478
  %t1505 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1503, %nyx_string* %t1504)
  %t1506 = getelementptr [3 x i8], [3 x i8]* @.str121, i32 0, i32 0
  %t1507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t1506, i64 2)
  %t1508 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1505, %nyx_string* %t1507)
  store %nyx_string* %t1508, %nyx_string** %t1509
  store i1 false, i1* %t1510
  %t1511 = load %nyx_string*, %nyx_string** %t1483
  %t1512 = getelementptr [1 x i8], [1 x i8]* @.str122, i32 0, i32 0
  %t1513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t1512, i64 0)
  %t1514 = call i1 @nyx_string_equals(%nyx_string* %t1511, %nyx_string* %t1513)
  %t1515 = xor i1 %t1514, true
  br i1 %t1515, label %sc_and_rhs334, label %sc_and_end335
sc_and_rhs334:
  %t1516 = load %nyx_string*, %nyx_string** %t1483
  %t1517 = call i8* @nyx_string_to_cstr(%nyx_string* %t1516)
  %t1518 = call i1 @nyx_file_exists(i8* %t1517)
  store i1 %t1518, i1* %t1510
  br label %sc_and_end335
sc_and_end335:
  %t1519 = load i1, i1* %t1510
  br i1 %t1519, label %then336, label %else337
then336:
  %t1520 = getelementptr [9 x i8], [9 x i8]* @.str123, i32 0, i32 0
  %t1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t1520, i64 8)
  %t1522 = load %nyx_string*, %nyx_string** %t1483
  %t1523 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1521, %nyx_string* %t1522)
  %t1524 = getelementptr [4 x i8], [4 x i8]* @.str124, i32 0, i32 0
  %t1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t1524, i64 3)
  %t1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1523, %nyx_string* %t1525)
  store %nyx_string* %t1526, %nyx_string** %t1509
  br label %merge338
else337:
  %t1527 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t1528 = getelementptr [1 x i8], [1 x i8]* @.str125, i32 0, i32 0
  %t1529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t1528, i64 0)
  %t1530 = call i1 @nyx_string_equals(%nyx_string* %t1527, %nyx_string* %t1529)
  br i1 %t1530, label %then339, label %else340
then339:
  %t1531 = call %nyx_string* @rt_cache_sh()
  %t1532 = load %nyx_string*, %nyx_string** %t1509
  %t1533 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1531, %nyx_string* %t1532)
  %t1534 = getelementptr [22 x i8], [22 x i8]* @.str126, i32 0, i32 0
  %t1535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t1534, i64 21)
  %t1536 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1533, %nyx_string* %t1535)
  %t1537 = load %nyx_string*, %nyx_string** %t1478
  %t1538 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1536, %nyx_string* %t1537)
  %t1539 = getelementptr [31 x i8], [31 x i8]* @.str127, i32 0, i32 0
  %t1540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t1539, i64 30)
  %t1541 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1538, %nyx_string* %t1540)
  store %nyx_string* %t1541, %nyx_string** %t1509
  br label %merge341
else340:
  br label %merge341
merge341:
  br label %merge338
merge338:
  %t1542 = getelementptr [3 x i8], [3 x i8]* @.str128, i32 0, i32 0
  %t1543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t1542, i64 2)
  %t1544 = getelementptr [13 x i8], [13 x i8]* @.str129, i32 0, i32 0
  %t1545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t1544, i64 12)
  %t1546 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1543, %nyx_string* %t1545)
  store %nyx_string* %t1546, %nyx_string** %t1478
  %t1547 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %t1548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t1547, i64 0)
  store %nyx_string* %t1548, %nyx_string** %t1549
  %t1550 = getelementptr [1 x i8], [1 x i8]* @.str131, i32 0, i32 0
  %t1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t1550, i64 0)
  store %nyx_string* %t1551, %nyx_string** %t1552
  %t1553 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %t1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t1553, i64 0)
  store %nyx_string* %t1554, %nyx_string** %t1555
  %t1556 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t1557 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %t1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t1557, i64 0)
  %t1559 = call i1 @nyx_string_equals(%nyx_string* %t1556, %nyx_string* %t1558)
  %t1560 = xor i1 %t1559, true
  br i1 %t1560, label %then342, label %else343
then342:
  %t1561 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t1562 = getelementptr [2 x i8], [2 x i8]* @.str134, i32 0, i32 0
  %t1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t1562, i64 1)
  %t1564 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1561, %nyx_string* %t1563)
  %t1565 = load i64, i64* %cov_idx.ptr
  %t1566 = call %nyx_string* @nyx_string_from_int(i64 %t1565)
  %t1567 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1564, %nyx_string* %t1566)
  store %nyx_string* %t1567, %nyx_string** %t1568
  %t1569 = getelementptr [20 x i8], [20 x i8]* @.str135, i32 0, i32 0
  %t1570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t1569, i64 19)
  %t1571 = load %nyx_string*, %nyx_string** %t1568
  %t1572 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1570, %nyx_string* %t1571)
  %t1573 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %t1574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t1573, i64 5)
  %t1575 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1572, %nyx_string* %t1574)
  store %nyx_string* %t1575, %nyx_string** %t1549
  %t1576 = getelementptr [62 x i8], [62 x i8]* @.str137, i32 0, i32 0
  %t1577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t1576, i64 61)
  store %nyx_string* %t1577, %nyx_string** %t1552
  %t1578 = getelementptr [20 x i8], [20 x i8]* @.str138, i32 0, i32 0
  %t1579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t1578, i64 19)
  %t1580 = load %nyx_string*, %nyx_string** %t1568
  %t1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1579, %nyx_string* %t1580)
  %t1582 = getelementptr [11 x i8], [11 x i8]* @.str139, i32 0, i32 0
  %t1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t1582, i64 10)
  %t1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1581, %nyx_string* %t1583)
  store %nyx_string* %t1584, %nyx_string** %t1555
  br label %merge344
else343:
  br label %merge344
merge344:
  %t1585 = getelementptr [20 x i8], [20 x i8]* @.str140, i32 0, i32 0
  %t1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t1585, i64 19)
  %t1587 = getelementptr [180 x i8], [180 x i8]* @.str141, i32 0, i32 0
  %t1588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t1587, i64 179)
  %t1589 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1586, %nyx_string* %t1588)
  %t1590 = getelementptr [322 x i8], [322 x i8]* @.str142, i32 0, i32 0
  %t1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t1590, i64 321)
  %t1592 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1589, %nyx_string* %t1591)
  store %nyx_string* %t1592, %nyx_string** %t1593
  %t1594 = load %nyx_string*, %nyx_string** %file.ptr
  %t1595 = call %nyx_string* @lib_modulo_de(%nyx_string* %t1594)
  store %nyx_string* %t1595, %nyx_string** %t1596
  %t1597 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %t1598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t1597, i64 0)
  store %nyx_string* %t1598, %nyx_string** %t1599
  %t1600 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %t1601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t1600, i64 0)
  store %nyx_string* %t1601, %nyx_string** %t1602
  %t1603 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %t1604 = load %nyx_string*, %nyx_string** %t1603
  %t1605 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %t1606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t1605, i64 0)
  %t1607 = call i1 @nyx_string_equals(%nyx_string* %t1604, %nyx_string* %t1606)
  %t1608 = xor i1 %t1607, true
  br i1 %t1608, label %then345, label %else346
then345:
  %t1609 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %t1610 = load %nyx_string*, %nyx_string** %t1609
  %t1611 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %t1612 = load %nyx_string*, %nyx_string** %t1611
  %t1613 = getelementptr [2 x i8], [2 x i8]* @.str146, i32 0, i32 0
  %t1614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t1613, i64 1)
  %t1615 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1612, %nyx_string* %t1614)
  store { i64, i8* }* %t1615, { i64, i8* }** %t1616
  %t1617 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %t1618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t1617, i64 0)
  store %nyx_string* %t1618, %nyx_string** %t1619
  store i64 0, i64* %t1620
  %t1621 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %t1622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t1621, i64 0)
  store %nyx_string* %t1622, %nyx_string** %t1623
  %t1624 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %t1625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t1624, i64 1)
  store %nyx_string* %t1625, %nyx_string** %t1626
  br label %while_cond348
while_cond348:
  %t1627 = load i64, i64* %t1620
  %t1628 = load { i64, i8* }*, { i64, i8* }** %t1616
  %t1629 = call i64 @nyx_array_length({ i64, i8* }* %t1628)
  %t1630 = icmp slt i64 %t1627, %t1629
  br i1 %t1630, label %while_body349, label %while_end350
while_body349:
  %t1631 = load { i64, i8* }*, { i64, i8* }** %t1616
  %t1632 = load i64, i64* %t1620
  %t1633 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1631, i64 %t1632, i64 2)
  %t1634 = inttoptr i64 %t1633 to %nyx_string*
  store %nyx_string* %t1634, %nyx_string** %t1635
  store i1 false, i1* %t1636
  %t1637 = load %nyx_string*, %nyx_string** %t1635
  %t1638 = load %nyx_string*, %nyx_string** %t1623
  %t1639 = call i1 @nyx_string_equals(%nyx_string* %t1637, %nyx_string* %t1638)
  %t1640 = xor i1 %t1639, true
  br i1 %t1640, label %sc_and_rhs351, label %sc_and_end352
sc_and_rhs351:
  %t1641 = load %nyx_string*, %nyx_string** %t1635
  %t1642 = load %nyx_string*, %nyx_string** %t1596
  %t1643 = call i1 @nyx_string_equals(%nyx_string* %t1641, %nyx_string* %t1642)
  %t1644 = xor i1 %t1643, true
  store i1 %t1644, i1* %t1636
  br label %sc_and_end352
sc_and_end352:
  %t1645 = load i1, i1* %t1636
  br i1 %t1645, label %then353, label %else354
then353:
  %t1646 = load %nyx_string*, %nyx_string** %t1619
  %t1647 = load %nyx_string*, %nyx_string** %t1623
  %t1648 = call i1 @nyx_string_equals(%nyx_string* %t1646, %nyx_string* %t1647)
  %t1649 = xor i1 %t1648, true
  br i1 %t1649, label %then356, label %else357
then356:
  %t1650 = load %nyx_string*, %nyx_string** %t1619
  %t1651 = load %nyx_string*, %nyx_string** %t1626
  %t1652 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1650, %nyx_string* %t1651)
  store %nyx_string* %t1652, %nyx_string** %t1619
  br label %merge358
else357:
  br label %merge358
merge358:
  %t1653 = load %nyx_string*, %nyx_string** %t1619
  %t1654 = load %nyx_string*, %nyx_string** %t1635
  %t1655 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1653, %nyx_string* %t1654)
  store %nyx_string* %t1655, %nyx_string** %t1619
  br label %merge355
else354:
  br label %merge355
merge355:
  %t1656 = load i64, i64* %t1620
  %t1657 = add i64 %t1656, 1
  store i64 %t1657, i64* %t1620
  br label %while_cond348
while_end350:
  %t1658 = load %nyx_string*, %nyx_string** %t1619
  %t1659 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %t1660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t1659, i64 0)
  %t1661 = call i1 @nyx_string_equals(%nyx_string* %t1658, %nyx_string* %t1660)
  %t1662 = xor i1 %t1661, true
  br i1 %t1662, label %then359, label %else360
then359:
  %t1663 = getelementptr [19 x i8], [19 x i8]* @.str151, i32 0, i32 0
  %t1664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t1663, i64 18)
  %t1665 = load %nyx_string*, %nyx_string** %t1619
  %t1666 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1664, %nyx_string* %t1665)
  %t1667 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %t1668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t1667, i64 1)
  %t1669 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1666, %nyx_string* %t1668)
  store %nyx_string* %t1669, %nyx_string** %t1599
  br label %merge361
else360:
  br label %merge361
merge361:
  store i1 false, i1* %t1670
  %t1671 = load %nyx_string*, %nyx_string** %t1596
  %t1672 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %t1673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t1672, i64 0)
  %t1674 = call i1 @nyx_string_equals(%nyx_string* %t1671, %nyx_string* %t1673)
  %t1675 = xor i1 %t1674, true
  br i1 %t1675, label %sc_and_rhs362, label %sc_and_end363
sc_and_rhs362:
  %t1676 = getelementptr [2 x i8], [2 x i8]* @.str154, i32 0, i32 0
  %t1677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t1676, i64 1)
  %t1678 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %t1679 = load %nyx_string*, %nyx_string** %t1678
  %t1680 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1677, %nyx_string* %t1679)
  %t1681 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %t1682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t1681, i64 1)
  %t1683 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1680, %nyx_string* %t1682)
  %t1684 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %t1685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t1684, i64 1)
  %t1686 = load %nyx_string*, %nyx_string** %t1596
  %t1687 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1685, %nyx_string* %t1686)
  %t1688 = getelementptr [2 x i8], [2 x i8]* @.str157, i32 0, i32 0
  %t1689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t1688, i64 1)
  %t1690 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1687, %nyx_string* %t1689)
  %t1691 = call i1 @nyx_string_contains(%nyx_string* %t1683, %nyx_string* %t1690)
  store i1 %t1691, i1* %t1670
  br label %sc_and_end363
sc_and_end363:
  %t1692 = load i1, i1* %t1670
  br i1 %t1692, label %then364, label %else365
then364:
  %t1693 = load %nyx_string*, %nyx_string** %t1599
  %t1694 = getelementptr [16 x i8], [16 x i8]* @.str158, i32 0, i32 0
  %t1695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t1694, i64 15)
  %t1696 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1693, %nyx_string* %t1695)
  %t1697 = load %nyx_string*, %nyx_string** %t1596
  %t1698 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1696, %nyx_string* %t1697)
  %t1699 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %t1700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t1699, i64 1)
  %t1701 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1698, %nyx_string* %t1700)
  store %nyx_string* %t1701, %nyx_string** %t1599
  br label %merge366
else365:
  br label %merge366
merge366:
  %t1702 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %t1703 = load %nyx_string*, %nyx_string** %t1702
  %t1704 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %t1705 = load %nyx_string*, %nyx_string** %t1704
  %t1706 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %t1707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t1706, i64 1)
  %t1708 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1705, %nyx_string* %t1707)
  store { i64, i8* }* %t1708, { i64, i8* }** %t1709
  store i64 0, i64* %t1710
  %t1711 = getelementptr [2 x i8], [2 x i8]* @.str161, i32 0, i32 0
  %t1712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t1711, i64 1)
  store %nyx_string* %t1712, %nyx_string** %t1713
  %t1714 = getelementptr [2 x i8], [2 x i8]* @.str162, i32 0, i32 0
  %t1715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t1714, i64 1)
  store %nyx_string* %t1715, %nyx_string** %t1716
  %t1717 = getelementptr [3 x i8], [3 x i8]* @.str163, i32 0, i32 0
  %t1718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t1717, i64 2)
  store %nyx_string* %t1718, %nyx_string** %t1719
  br label %while_cond367
while_cond367:
  %t1720 = load i64, i64* %t1710
  %t1721 = load { i64, i8* }*, { i64, i8* }** %t1709
  %t1722 = call i64 @nyx_array_length({ i64, i8* }* %t1721)
  %t1723 = icmp slt i64 %t1720, %t1722
  br i1 %t1723, label %while_body368, label %while_end369
while_body368:
  %t1724 = load { i64, i8* }*, { i64, i8* }** %t1709
  %t1725 = load i64, i64* %t1710
  %t1726 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1724, i64 %t1725, i64 2)
  %t1727 = inttoptr i64 %t1726 to %nyx_string*
  store %nyx_string* %t1727, %nyx_string** %t1728
  %t1729 = load %nyx_string*, %nyx_string** %t1728
  %t1730 = load %nyx_string*, %nyx_string** %t1713
  %t1731 = call i64 @nyx_string_index_of(%nyx_string* %t1729, %nyx_string* %t1730)
  store i64 %t1731, i64* %t1732
  %t1733 = load i64, i64* %t1732
  %t1734 = icmp sgt i64 %t1733, 0
  br i1 %t1734, label %then370, label %else371
then370:
  %t1735 = load %nyx_string*, %nyx_string** %t1728
  %t1736 = load i64, i64* %t1732
  %t1737 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1735, i64 0, i64 %t1736)
  store %nyx_string* %t1737, %nyx_string** %t1738
  %t1739 = load %nyx_string*, %nyx_string** %t1738
  %t1740 = load %nyx_string*, %nyx_string** %t1596
  %t1741 = call i1 @nyx_string_equals(%nyx_string* %t1739, %nyx_string* %t1740)
  %t1742 = xor i1 %t1741, true
  br i1 %t1742, label %then373, label %else374
then373:
  %t1743 = load %nyx_string*, %nyx_string** %t1602
  %t1744 = load %nyx_string*, %nyx_string** %t1716
  %t1745 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1743, %nyx_string* %t1744)
  %t1746 = load %nyx_string*, %nyx_string** %t1728
  %t1747 = load i64, i64* %t1732
  %t1748 = add i64 %t1747, 1
  %t1749 = load %nyx_string*, %nyx_string** %t1728
  %t1750 = call i64 @nyx_string_byte_length(%nyx_string* %t1749)
  %t1751 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1746, i64 %t1748, i64 %t1750)
  %t1752 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1745, %nyx_string* %t1751)
  %t1753 = load %nyx_string*, %nyx_string** %t1719
  %t1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1752, %nyx_string* %t1753)
  store %nyx_string* %t1754, %nyx_string** %t1602
  br label %merge375
else374:
  br label %merge375
merge375:
  br label %merge372
else371:
  br label %merge372
merge372:
  %t1755 = load i64, i64* %t1710
  %t1756 = add i64 %t1755, 1
  store i64 %t1756, i64* %t1710
  br label %while_cond367
while_end369:
  br label %merge347
else346:
  br label %merge347
merge347:
  %t1757 = getelementptr [55 x i8], [55 x i8]* @.str164, i32 0, i32 0
  %t1758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t1757, i64 54)
  %t1759 = load %nyx_string*, %nyx_string** %t1398
  %t1760 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1758, %nyx_string* %t1759)
  %t1761 = getelementptr [37 x i8], [37 x i8]* @.str165, i32 0, i32 0
  %t1762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t1761, i64 36)
  %t1763 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1760, %nyx_string* %t1762)
  %t1764 = load %nyx_string*, %nyx_string** %file.ptr
  %t1765 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1763, %nyx_string* %t1764)
  %t1766 = getelementptr [2 x i8], [2 x i8]* @.str166, i32 0, i32 0
  %t1767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t1766, i64 1)
  %t1768 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1765, %nyx_string* %t1767)
  %t1769 = load %nyx_string*, %nyx_string** %t1549
  %t1770 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1768, %nyx_string* %t1769)
  %t1771 = load %nyx_string*, %nyx_string** %t1599
  %t1772 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1770, %nyx_string* %t1771)
  %t1773 = getelementptr [23 x i8], [23 x i8]* @.str167, i32 0, i32 0
  %t1774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t1773, i64 22)
  %t1775 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1772, %nyx_string* %t1774)
  %t1776 = load %nyx_string*, %nyx_string** %t1442
  %t1777 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1775, %nyx_string* %t1776)
  %t1778 = getelementptr [38 x i8], [38 x i8]* @.str168, i32 0, i32 0
  %t1779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t1778, i64 37)
  %t1780 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1777, %nyx_string* %t1779)
  %t1781 = load %nyx_string*, %nyx_string** %t1442
  %t1782 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1780, %nyx_string* %t1781)
  %t1783 = getelementptr [14 x i8], [14 x i8]* @.str169, i32 0, i32 0
  %t1784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t1783, i64 13)
  %t1785 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1782, %nyx_string* %t1784)
  store %nyx_string* %t1785, %nyx_string** %t1786
  %t1787 = load %nyx_string*, %nyx_string** %t1509
  %t1788 = load %nyx_string*, %nyx_string** %t1786
  %t1789 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1787, %nyx_string* %t1788)
  store %nyx_string* %t1789, %nyx_string** %t1790
  %t1791 = getelementptr [15 x i8], [15 x i8]* @.str170, i32 0, i32 0
  %t1792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t1791, i64 14)
  %t1793 = load %nyx_string*, %nyx_string** %t1415
  %t1794 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1792, %nyx_string* %t1793)
  %t1795 = getelementptr [27 x i8], [27 x i8]* @.str171, i32 0, i32 0
  %t1796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t1795, i64 26)
  %t1797 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1794, %nyx_string* %t1796)
  store %nyx_string* %t1797, %nyx_string** %t1798
  %t1799 = load %nyx_string*, %nyx_string** %t1593
  %t1800 = load %nyx_string*, %nyx_string** %t1798
  %t1801 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1799, %nyx_string* %t1800)
  %t1802 = getelementptr [16 x i8], [16 x i8]* @.str172, i32 0, i32 0
  %t1803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t1802, i64 15)
  %t1804 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1801, %nyx_string* %t1803)
  %t1805 = getelementptr [10 x i8], [10 x i8]* @.str173, i32 0, i32 0
  %t1806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t1805, i64 9)
  %t1807 = call %nyx_string* @tmp_plantilla(%nyx_string* %t1806)
  %t1808 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1804, %nyx_string* %t1807)
  %t1809 = getelementptr [5 x i8], [5 x i8]* @.str174, i32 0, i32 0
  %t1810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t1809, i64 4)
  %t1811 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1808, %nyx_string* %t1810)
  %t1812 = getelementptr [17 x i8], [17 x i8]* @.str175, i32 0, i32 0
  %t1813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t1812, i64 16)
  %t1814 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1811, %nyx_string* %t1813)
  %t1815 = getelementptr [31 x i8], [31 x i8]* @.str176, i32 0, i32 0
  %t1816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t1815, i64 30)
  %t1817 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1814, %nyx_string* %t1816)
  %t1818 = getelementptr [17 x i8], [17 x i8]* @.str177, i32 0, i32 0
  %t1819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t1818, i64 16)
  %t1820 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1817, %nyx_string* %t1819)
  %t1821 = getelementptr [5 x i8], [5 x i8]* @.str178, i32 0, i32 0
  %t1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t1821, i64 4)
  %t1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1820, %nyx_string* %t1822)
  %t1824 = load %nyx_string*, %nyx_string** %t1398
  %t1825 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1823, %nyx_string* %t1824)
  %t1826 = getelementptr [2 x i8], [2 x i8]* @.str179, i32 0, i32 0
  %t1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t1826, i64 1)
  %t1828 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1825, %nyx_string* %t1827)
  %t1829 = load %nyx_string*, %nyx_string** %file.ptr
  %t1830 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1828, %nyx_string* %t1829)
  %t1831 = getelementptr [12 x i8], [12 x i8]* @.str180, i32 0, i32 0
  %t1832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t1831, i64 11)
  %t1833 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1830, %nyx_string* %t1832)
  %t1834 = getelementptr [5 x i8], [5 x i8]* @.str181, i32 0, i32 0
  %t1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t1834, i64 4)
  %t1836 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1833, %nyx_string* %t1835)
  %t1837 = load %nyx_string*, %nyx_string** %t1376
  %t1838 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1836, %nyx_string* %t1837)
  %t1839 = getelementptr [3 x i8], [3 x i8]* @.str182, i32 0, i32 0
  %t1840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t1839, i64 2)
  %t1841 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1838, %nyx_string* %t1840)
  %t1842 = getelementptr [51 x i8], [51 x i8]* @.str183, i32 0, i32 0
  %t1843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t1842, i64 50)
  %t1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1841, %nyx_string* %t1843)
  %t1845 = load %nyx_string*, %nyx_string** %t1376
  %t1846 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1844, %nyx_string* %t1845)
  %t1847 = getelementptr [35 x i8], [35 x i8]* @.str184, i32 0, i32 0
  %t1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t1847, i64 34)
  %t1849 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1846, %nyx_string* %t1848)
  %t1850 = load %nyx_string*, %nyx_string** %t1790
  %t1851 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1849, %nyx_string* %t1850)
  %t1852 = getelementptr [7 x i8], [7 x i8]* @.str185, i32 0, i32 0
  %t1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t1852, i64 6)
  %t1854 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1851, %nyx_string* %t1853)
  %t1855 = load %nyx_string*, %nyx_string** %t1450
  %t1856 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1854, %nyx_string* %t1855)
  %t1857 = load %nyx_string*, %nyx_string** %t1552
  %t1858 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1856, %nyx_string* %t1857)
  %t1859 = getelementptr [40 x i8], [40 x i8]* @.str186, i32 0, i32 0
  %t1860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t1859, i64 39)
  %t1861 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1858, %nyx_string* %t1860)
  %t1862 = load %nyx_string*, %nyx_string** %t1602
  %t1863 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1861, %nyx_string* %t1862)
  %t1864 = load %nyx_string*, %nyx_string** %t1478
  %t1865 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1863, %nyx_string* %t1864)
  %t1866 = getelementptr [44 x i8], [44 x i8]* @.str187, i32 0, i32 0
  %t1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t1866, i64 43)
  %t1868 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1865, %nyx_string* %t1867)
  %t1869 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %t1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t1869, i64 4)
  %t1871 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1868, %nyx_string* %t1870)
  %t1872 = load %nyx_string*, %nyx_string** %t1447
  %t1873 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1871, %nyx_string* %t1872)
  %t1874 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %t1875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t1874, i64 7)
  %t1876 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1873, %nyx_string* %t1875)
  %t1877 = load %nyx_string*, %nyx_string** %t1442
  %t1878 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1876, %nyx_string* %t1877)
  %t1879 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %t1880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t1879, i64 2)
  %t1881 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1878, %nyx_string* %t1880)
  %t1882 = getelementptr [57 x i8], [57 x i8]* @.str191, i32 0, i32 0
  %t1883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t1882, i64 56)
  %t1884 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1881, %nyx_string* %t1883)
  %t1885 = load %nyx_string*, %nyx_string** %t1555
  %t1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1884, %nyx_string* %t1885)
  %t1887 = getelementptr [9 x i8], [9 x i8]* @.str192, i32 0, i32 0
  %t1888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t1887, i64 8)
  %t1889 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1886, %nyx_string* %t1888)
  %t1890 = load %nyx_string*, %nyx_string** %t1402
  %t1891 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1889, %nyx_string* %t1890)
  %t1892 = getelementptr [3 x i8], [3 x i8]* @.str193, i32 0, i32 0
  %t1893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t1892, i64 2)
  %t1894 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1891, %nyx_string* %t1893)
  %t1895 = load %nyx_string*, %nyx_string** %t1447
  %t1896 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1894, %nyx_string* %t1895)
  %t1897 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %t1898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t1897, i64 5)
  %t1899 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1896, %nyx_string* %t1898)
  %t1900 = load %nyx_string*, %nyx_string** %t1442
  %t1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1899, %nyx_string* %t1900)
  %t1902 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %t1903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t1902, i64 7)
  %t1904 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1901, %nyx_string* %t1903)
  %t1905 = getelementptr [14 x i8], [14 x i8]* @.str196, i32 0, i32 0
  %t1906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t1905, i64 13)
  %t1907 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1904, %nyx_string* %t1906)
  %t1908 = getelementptr [8 x i8], [8 x i8]* @.str197, i32 0, i32 0
  %t1909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t1908, i64 7)
  %t1910 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1907, %nyx_string* %t1909)
  %t1911 = load %nyx_string*, %nyx_string** %t1447
  %t1912 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1910, %nyx_string* %t1911)
  %t1913 = getelementptr [3 x i8], [3 x i8]* @.str198, i32 0, i32 0
  %t1914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t1913, i64 2)
  %t1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1912, %nyx_string* %t1914)
  %t1916 = getelementptr [17 x i8], [17 x i8]* @.str199, i32 0, i32 0
  %t1917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t1916, i64 16)
  %t1918 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1915, %nyx_string* %t1917)
  store %nyx_string* %t1918, %nyx_string** %t1919
  %t1920 = load %nyx_string*, %nyx_string** %t1415
  %t1921 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %t1922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t1921, i64 7)
  %t1923 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1920, %nyx_string* %t1922)
  store %nyx_string* %t1923, %nyx_string** %t1924
  %t1925 = load %nyx_string*, %nyx_string** %t1924
  %t1926 = load %nyx_string*, %nyx_string** %t1919
  %t1927 = ptrtoint %nyx_string* %t1926 to i64
  %t1928 = call i8* @nyx_string_to_cstr(%nyx_string* %t1925)
  %t1929 = inttoptr i64 %t1927 to %nyx_string*
  %t1930 = call i1 @nyx_write_file_safe(i8* %t1928, %nyx_string* %t1929)
  %t1931 = getelementptr [7 x i8], [7 x i8]* @.str201, i32 0, i32 0
  %t1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t1931, i64 6)
  %t1933 = load %nyx_string*, %nyx_string** %t1924
  %t1934 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1932, %nyx_string* %t1933)
  %t1935 = getelementptr [2 x i8], [2 x i8]* @.str202, i32 0, i32 0
  %t1936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t1935, i64 1)
  %t1937 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1934, %nyx_string* %t1936)
  %t1938 = call i8* @nyx_string_to_cstr(%nyx_string* %t1937)
  %t1939 = call i64 @nyx_exec_code(i8* %t1938)
  store i64 %t1939, i64* %t1940
  %t1941 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %t1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t1941, i64 0)
  store %nyx_string* %t1942, %nyx_string** %t1943
  %t1944 = load %nyx_string*, %nyx_string** %t1442
  %t1945 = call i8* @nyx_string_to_cstr(%nyx_string* %t1944)
  %t1946 = call i1 @nyx_file_exists(i8* %t1945)
  br i1 %t1946, label %then376, label %else377
then376:
  %t1947 = load %nyx_string*, %nyx_string** %t1442
  %t1948 = call i8* @nyx_string_to_cstr(%nyx_string* %t1947)
  %t1949 = call %nyx_string* @nyx_read_file(i8* %t1948)
  store %nyx_string* %t1949, %nyx_string** %t1943
  br label %merge378
else377:
  br label %merge378
merge378:
  %t1950 = getelementptr [9 x i8], [9 x i8]* @.str204, i32 0, i32 0
  %t1951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t1950, i64 8)
  %t1952 = load %nyx_string*, %nyx_string** %t1415
  %t1953 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1951, %nyx_string* %t1952)
  %t1954 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %t1955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t1954, i64 1)
  %t1956 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1953, %nyx_string* %t1955)
  %t1957 = call i8* @nyx_string_to_cstr(%nyx_string* %t1956)
  %t1958 = call %nyx_string* @nyx_exec(i8* %t1957)
  store i64 0, i64* %t1959
  store i64 0, i64* %t1960
  %t1961 = load %nyx_string*, %nyx_string** %t1943
  %t1962 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %t1963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t1962, i64 1)
  %t1964 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1961, %nyx_string* %t1963)
  store { i64, i8* }* %t1964, { i64, i8* }** %t1965
  store i64 0, i64* %t1966
  %t1967 = getelementptr [6 x i8], [6 x i8]* @.str207, i32 0, i32 0
  %t1968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t1967, i64 5)
  store %nyx_string* %t1968, %nyx_string** %t1969
  %t1970 = getelementptr [6 x i8], [6 x i8]* @.str208, i32 0, i32 0
  %t1971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t1970, i64 5)
  store %nyx_string* %t1971, %nyx_string** %t1972
  br label %while_cond379
while_cond379:
  %t1973 = load i64, i64* %t1966
  %t1974 = load { i64, i8* }*, { i64, i8* }** %t1965
  %t1975 = call i64 @nyx_array_length({ i64, i8* }* %t1974)
  %t1976 = icmp slt i64 %t1973, %t1975
  br i1 %t1976, label %while_body380, label %while_end381
while_body380:
  %t1977 = load { i64, i8* }*, { i64, i8* }** %t1965
  %t1978 = load i64, i64* %t1966
  %t1979 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1977, i64 %t1978, i64 2)
  %t1980 = inttoptr i64 %t1979 to %nyx_string*
  store %nyx_string* %t1980, %nyx_string** %t1981
  %t1982 = load %nyx_string*, %nyx_string** %t1981
  %t1983 = load %nyx_string*, %nyx_string** %t1969
  %t1984 = call i1 @nyx_string_contains(%nyx_string* %t1982, %nyx_string* %t1983)
  br i1 %t1984, label %then382, label %else383
then382:
  %t1985 = load i64, i64* %t1959
  %t1986 = add i64 %t1985, 1
  store i64 %t1986, i64* %t1959
  br label %merge384
else383:
  %t1987 = load %nyx_string*, %nyx_string** %t1981
  %t1988 = load %nyx_string*, %nyx_string** %t1972
  %t1989 = call i1 @nyx_string_contains(%nyx_string* %t1987, %nyx_string* %t1988)
  br i1 %t1989, label %then385, label %else386
then385:
  %t1990 = load i64, i64* %t1960
  %t1991 = add i64 %t1990, 1
  store i64 %t1991, i64* %t1960
  br label %merge387
else386:
  br label %merge387
merge387:
  br label %merge384
merge384:
  %t1992 = load i64, i64* %t1966
  %t1993 = add i64 %t1992, 1
  store i64 %t1993, i64* %t1966
  br label %while_cond379
while_end381:
  %t1994 = getelementptr %TestResult, %TestResult* null, i32 1
  %t1995 = ptrtoint %TestResult* %t1994 to i64
  %t1996 = call i8* @GC_malloc(i64 %t1995)
  %t1997 = bitcast i8* %t1996 to %TestResult*
  %t1998 = load %nyx_string*, %nyx_string** %file.ptr
  %t1999 = getelementptr %TestResult, %TestResult* %t1997, i32 0, i32 0
  store %nyx_string* %t1998, %nyx_string** %t1999
  %t2000 = load i64, i64* %t1959
  %t2001 = getelementptr %TestResult, %TestResult* %t1997, i32 0, i32 1
  store i64 %t2000, i64* %t2001
  %t2002 = load i64, i64* %t1960
  %t2003 = getelementptr %TestResult, %TestResult* %t1997, i32 0, i32 2
  store i64 %t2002, i64* %t2003
  %t2004 = load %nyx_string*, %nyx_string** %t1943
  %t2005 = getelementptr %TestResult, %TestResult* %t1997, i32 0, i32 3
  store %nyx_string* %t2004, %nyx_string** %t2005
  store i1 false, i1* %t2006
  %t2007 = load i64, i64* %t1940
  %t2008 = icmp eq i64 %t2007, 0
  br i1 %t2008, label %sc_and_rhs388, label %sc_and_end389
sc_and_rhs388:
  %t2009 = load i64, i64* %t1960
  %t2010 = icmp eq i64 %t2009, 0
  store i1 %t2010, i1* %t2006
  br label %sc_and_end389
sc_and_end389:
  %t2011 = load i1, i1* %t2006
  %t2012 = getelementptr %TestResult, %TestResult* %t1997, i32 0, i32 4
  store i1 %t2011, i1* %t2012
  %t2013 = load %TestResult, %TestResult* %t1997
  ret %TestResult %t2013
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  %verbose.ptr = alloca i1
  store %TestResult %result.param, %TestResult* %result.ptr
  store i1 %verbose.param, i1* %verbose.ptr
  %t2014 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %t2015 = load i1, i1* %t2014
  br i1 %t2015, label %then390, label %else391
then390:
  %t2016 = getelementptr [9 x i8], [9 x i8]* @.str209, i32 0, i32 0
  %t2017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t2016, i64 8)
  %t2018 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %t2019 = load %nyx_string*, %nyx_string** %t2018
  %t2020 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2017, %nyx_string* %t2019)
  %t2021 = getelementptr [3 x i8], [3 x i8]* @.str210, i32 0, i32 0
  %t2022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t2021, i64 2)
  %t2023 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2020, %nyx_string* %t2022)
  %t2024 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %t2025 = load i64, i64* %t2024
  %t2026 = call %nyx_string* @nyx_string_from_int(i64 %t2025)
  %t2027 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2023, %nyx_string* %t2026)
  %t2028 = getelementptr [8 x i8], [8 x i8]* @.str211, i32 0, i32 0
  %t2029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t2028, i64 7)
  %t2030 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2027, %nyx_string* %t2029)
  %t2031 = call i8* @nyx_string_to_cstr(%nyx_string* %t2030)
  call void @nyx_print_string(i8* %t2031)
  %t2032 = load i1, i1* %verbose.ptr
  br i1 %t2032, label %then393, label %else394
then393:
  %t2033 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %t2034 = load %nyx_string*, %nyx_string** %t2033
  %t2035 = call i8* @nyx_string_to_cstr(%nyx_string* %t2034)
  call void @nyx_print_string(i8* %t2035)
  br label %merge395
else394:
  br label %merge395
merge395:
  br label %merge392
else391:
  %t2036 = getelementptr [9 x i8], [9 x i8]* @.str212, i32 0, i32 0
  %t2037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t2036, i64 8)
  %t2038 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %t2039 = load %nyx_string*, %nyx_string** %t2038
  %t2040 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2037, %nyx_string* %t2039)
  %t2041 = getelementptr [3 x i8], [3 x i8]* @.str213, i32 0, i32 0
  %t2042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t2041, i64 2)
  %t2043 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2040, %nyx_string* %t2042)
  %t2044 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %t2045 = load i64, i64* %t2044
  %t2046 = call %nyx_string* @nyx_string_from_int(i64 %t2045)
  %t2047 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2043, %nyx_string* %t2046)
  %t2048 = getelementptr [10 x i8], [10 x i8]* @.str214, i32 0, i32 0
  %t2049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t2048, i64 9)
  %t2050 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2047, %nyx_string* %t2049)
  %t2051 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %t2052 = load i64, i64* %t2051
  %t2053 = call %nyx_string* @nyx_string_from_int(i64 %t2052)
  %t2054 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2050, %nyx_string* %t2053)
  %t2055 = getelementptr [9 x i8], [9 x i8]* @.str215, i32 0, i32 0
  %t2056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t2055, i64 8)
  %t2057 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2054, %nyx_string* %t2056)
  %t2058 = call i8* @nyx_string_to_cstr(%nyx_string* %t2057)
  call void @nyx_print_string(i8* %t2058)
  %t2059 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %t2060 = load %nyx_string*, %nyx_string** %t2059
  %t2061 = call i8* @nyx_string_to_cstr(%nyx_string* %t2060)
  call void @nyx_print_string(i8* %t2061)
  br label %merge392
merge392:
  ret i64 0
}

define internal i64 @print_summary(
{ i64, i8* }* %results.param, i64 %total_passed.param, i64 %total_failed.param) {
  %results.ptr = alloca { i64, i8* }*
  %total_passed.ptr = alloca i64
  %total_failed.ptr = alloca i64
  %t2068 = alloca i64
  %t2069 = alloca i64
  %t2070 = alloca i64
  %t2081 = alloca %TestResult
  %t2135 = alloca i1
  store { i64, i8* }* %results.param, { i64, i8* }** %results.ptr
  store i64 %total_passed.param, i64* %total_passed.ptr
  store i64 %total_failed.param, i64* %total_failed.ptr
  %t2062 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %t2063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t2062, i64 0)
  %t2064 = call i8* @nyx_string_to_cstr(%nyx_string* %t2063)
  call void @nyx_print_string(i8* %t2064)
  %t2065 = getelementptr [36 x i8], [36 x i8]* @.str217, i32 0, i32 0
  %t2066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t2065, i64 35)
  %t2067 = call i8* @nyx_string_to_cstr(%nyx_string* %t2066)
  call void @nyx_print_string(i8* %t2067)
  store i64 0, i64* %t2068
  store i64 0, i64* %t2069
  store i64 0, i64* %t2070
  br label %while_cond396
while_cond396:
  %t2071 = load i64, i64* %t2070
  %t2072 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %t2073 = call i64 @nyx_array_length({ i64, i8* }* %t2072)
  %t2074 = icmp slt i64 %t2071, %t2073
  br i1 %t2074, label %while_body397, label %while_end398
while_body397:
  %t2075 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %t2076 = load i64, i64* %t2070
  %t2077 = getelementptr [11 x i8], [11 x i8]* @.slotT218, i32 0, i32 0
  %t2078 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t2075, i64 %t2076, i8* %t2077)
  %t2079 = inttoptr i64 %t2078 to %TestResult*
  %t2080 = load %TestResult, %TestResult* %t2079
  store %TestResult %t2080, %TestResult* %t2081
  %t2082 = getelementptr %TestResult, %TestResult* %t2081, i32 0, i32 4
  %t2083 = load i1, i1* %t2082
  br i1 %t2083, label %then399, label %else400
then399:
  %t2084 = load i64, i64* %t2068
  %t2085 = add i64 %t2084, 1
  store i64 %t2085, i64* %t2068
  br label %merge401
else400:
  %t2086 = load i64, i64* %t2069
  %t2087 = add i64 %t2086, 1
  store i64 %t2087, i64* %t2069
  br label %merge401
merge401:
  %t2088 = load i64, i64* %t2070
  %t2089 = add i64 %t2088, 1
  store i64 %t2089, i64* %t2070
  br label %while_cond396
while_end398:
  %t2090 = getelementptr [11 x i8], [11 x i8]* @.str219, i32 0, i32 0
  %t2091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t2090, i64 10)
  %t2092 = load i64, i64* %t2068
  %t2093 = call %nyx_string* @nyx_string_from_int(i64 %t2092)
  %t2094 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2091, %nyx_string* %t2093)
  %t2095 = getelementptr [10 x i8], [10 x i8]* @.str220, i32 0, i32 0
  %t2096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t2095, i64 9)
  %t2097 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2094, %nyx_string* %t2096)
  %t2098 = load i64, i64* %t2069
  %t2099 = call %nyx_string* @nyx_string_from_int(i64 %t2098)
  %t2100 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2097, %nyx_string* %t2099)
  %t2101 = getelementptr [10 x i8], [10 x i8]* @.str221, i32 0, i32 0
  %t2102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t2101, i64 9)
  %t2103 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2100, %nyx_string* %t2102)
  %t2104 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %t2105 = call i64 @nyx_array_length({ i64, i8* }* %t2104)
  %t2106 = call %nyx_string* @nyx_string_from_int(i64 %t2105)
  %t2107 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2103, %nyx_string* %t2106)
  %t2108 = getelementptr [8 x i8], [8 x i8]* @.str222, i32 0, i32 0
  %t2109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t2108, i64 7)
  %t2110 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2107, %nyx_string* %t2109)
  %t2111 = call i8* @nyx_string_to_cstr(%nyx_string* %t2110)
  call void @nyx_print_string(i8* %t2111)
  %t2112 = getelementptr [11 x i8], [11 x i8]* @.str223, i32 0, i32 0
  %t2113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t2112, i64 10)
  %t2114 = load i64, i64* %total_passed.ptr
  %t2115 = call %nyx_string* @nyx_string_from_int(i64 %t2114)
  %t2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2113, %nyx_string* %t2115)
  %t2117 = getelementptr [10 x i8], [10 x i8]* @.str224, i32 0, i32 0
  %t2118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t2117, i64 9)
  %t2119 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2116, %nyx_string* %t2118)
  %t2120 = load i64, i64* %total_failed.ptr
  %t2121 = call %nyx_string* @nyx_string_from_int(i64 %t2120)
  %t2122 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2119, %nyx_string* %t2121)
  %t2123 = getelementptr [10 x i8], [10 x i8]* @.str225, i32 0, i32 0
  %t2124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t2123, i64 9)
  %t2125 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2122, %nyx_string* %t2124)
  %t2126 = load i64, i64* %total_passed.ptr
  %t2127 = load i64, i64* %total_failed.ptr
  %t2128 = add i64 %t2126, %t2127
  %t2129 = call %nyx_string* @nyx_string_from_int(i64 %t2128)
  %t2130 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2125, %nyx_string* %t2129)
  %t2131 = getelementptr [8 x i8], [8 x i8]* @.str226, i32 0, i32 0
  %t2132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t2131, i64 7)
  %t2133 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2130, %nyx_string* %t2132)
  %t2134 = call i8* @nyx_string_to_cstr(%nyx_string* %t2133)
  call void @nyx_print_string(i8* %t2134)
  store i1 false, i1* %t2135
  %t2136 = load i64, i64* %total_failed.ptr
  %t2137 = icmp eq i64 %t2136, 0
  br i1 %t2137, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %t2138 = load i64, i64* %t2069
  %t2139 = icmp eq i64 %t2138, 0
  store i1 %t2139, i1* %t2135
  br label %sc_and_end403
sc_and_end403:
  %t2140 = load i1, i1* %t2135
  br i1 %t2140, label %then404, label %else405
then404:
  %t2141 = getelementptr [27 x i8], [27 x i8]* @.str227, i32 0, i32 0
  %t2142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t2141, i64 26)
  %t2143 = call i8* @nyx_string_to_cstr(%nyx_string* %t2142)
  call void @nyx_print_string(i8* %t2143)
  br label %merge406
else405:
  %t2144 = getelementptr [28 x i8], [28 x i8]* @.str228, i32 0, i32 0
  %t2145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t2144, i64 27)
  %t2146 = call i8* @nyx_string_to_cstr(%nyx_string* %t2145)
  call void @nyx_print_string(i8* %t2146)
  br label %merge406
merge406:
  %t2147 = getelementptr [36 x i8], [36 x i8]* @.str229, i32 0, i32 0
  %t2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t2147, i64 35)
  %t2149 = call i8* @nyx_string_to_cstr(%nyx_string* %t2148)
  call void @nyx_print_string(i8* %t2149)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %t2154 = alloca %nyx_string*
  %t2159 = alloca i64
  %t2166 = alloca i64
  %t2169 = alloca %nyx_string*
  %t2178 = alloca i64
  %t2179 = alloca i1
  %t2150 = getelementptr [28 x i8], [28 x i8]* @.str230, i32 0, i32 0
  %t2151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t2150, i64 27)
  %t2152 = call i8* @nyx_string_to_cstr(%nyx_string* %t2151)
  %t2153 = call %nyx_string* @nyx_exec(i8* %t2152)
  store %nyx_string* %t2153, %nyx_string** %t2154
  %t2155 = load %nyx_string*, %nyx_string** %t2154
  %t2156 = getelementptr [9 x i8], [9 x i8]* @.str231, i32 0, i32 0
  %t2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t2156, i64 8)
  %t2158 = call i64 @nyx_string_index_of(%nyx_string* %t2155, %nyx_string* %t2157)
  store i64 %t2158, i64* %t2159
  %t2160 = load i64, i64* %t2159
  %t2161 = icmp slt i64 %t2160, 0
  br i1 %t2161, label %then407, label %else408
then407:
  %t2162 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %t2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t2162, i64 0)
  ret %nyx_string* %t2163
else408:
  br label %merge409
merge409:
  %t2164 = load i64, i64* %t2159
  %t2165 = add i64 %t2164, 8
  store i64 %t2165, i64* %t2166
  %t2167 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %t2168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t2167, i64 0)
  store %nyx_string* %t2168, %nyx_string** %t2169
  br label %while_cond410
while_cond410:
  %t2170 = load i64, i64* %t2166
  %t2171 = load %nyx_string*, %nyx_string** %t2154
  %t2172 = call i64 @nyx_string_byte_length(%nyx_string* %t2171)
  %t2173 = icmp slt i64 %t2170, %t2172
  br i1 %t2173, label %while_body411, label %while_end412
while_body411:
  %t2174 = load %nyx_string*, %nyx_string** %t2154
  %t2175 = load i64, i64* %t2166
  %t2176 = call i8 @nyx_string_char_at(%nyx_string* %t2174, i64 %t2175)
  %t2177 = zext i8 %t2176 to i64
  store i64 %t2177, i64* %t2178
  store i1 false, i1* %t2179
  %t2180 = load i64, i64* %t2178
  %t2181 = icmp sge i64 %t2180, 48
  br i1 %t2181, label %sc_and_rhs413, label %sc_and_end414
sc_and_rhs413:
  %t2182 = load i64, i64* %t2178
  %t2183 = icmp sle i64 %t2182, 57
  store i1 %t2183, i1* %t2179
  br label %sc_and_end414
sc_and_end414:
  %t2184 = load i1, i1* %t2179
  br i1 %t2184, label %then415, label %else416
then415:
  %t2185 = load %nyx_string*, %nyx_string** %t2169
  %t2186 = load %nyx_string*, %nyx_string** %t2154
  %t2187 = load i64, i64* %t2166
  %t2188 = load i64, i64* %t2166
  %t2189 = add i64 %t2188, 1
  %t2190 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2186, i64 %t2187, i64 %t2189)
  %t2191 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2185, %nyx_string* %t2190)
  store %nyx_string* %t2191, %nyx_string** %t2169
  %t2192 = load i64, i64* %t2166
  %t2193 = add i64 %t2192, 1
  store i64 %t2193, i64* %t2166
  br label %merge417
else416:
  %t2194 = load %nyx_string*, %nyx_string** %t2154
  %t2195 = call i64 @nyx_string_byte_length(%nyx_string* %t2194)
  store i64 %t2195, i64* %t2166
  br label %merge417
merge417:
  br label %while_cond410
while_end412:
  %t2196 = load %nyx_string*, %nyx_string** %t2169
  ret %nyx_string* %t2196
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t2197 = getelementptr [10 x i8], [10 x i8]* @.str234, i32 0, i32 0
  %t2198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t2197, i64 9)
  %t2199 = load %nyx_string*, %nyx_string** %path.ptr
  %t2200 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2198, %nyx_string* %t2199)
  %t2201 = getelementptr [2 x i8], [2 x i8]* @.str235, i32 0, i32 0
  %t2202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t2201, i64 1)
  %t2203 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2200, %nyx_string* %t2202)
  %t2204 = call i8* @nyx_string_to_cstr(%nyx_string* %t2203)
  %t2205 = call i64 @nyx_exec_code(i8* %t2204)
  %t2206 = icmp eq i64 %t2205, 0
  ret i1 %t2206
}

define internal %nyx_string* @cov_find_profdata(
) {
  %t2208 = alloca %nyx_string*
  %t2224 = alloca %nyx_string*
  %t2207 = call %nyx_string* @cov_clang_major()
  store %nyx_string* %t2207, %nyx_string** %t2208
  %t2209 = load %nyx_string*, %nyx_string** %t2208
  %t2210 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %t2211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t2210, i64 0)
  %t2212 = call i1 @nyx_string_equals(%nyx_string* %t2209, %nyx_string* %t2211)
  %t2213 = xor i1 %t2212, true
  br i1 %t2213, label %then418, label %else419
then418:
  %t2214 = getelementptr [26 x i8], [26 x i8]* @.str237, i32 0, i32 0
  %t2215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t2214, i64 25)
  %t2216 = load %nyx_string*, %nyx_string** %t2208
  %t2217 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2215, %nyx_string* %t2216)
  %t2218 = getelementptr [13 x i8], [13 x i8]* @.str238, i32 0, i32 0
  %t2219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t2218, i64 12)
  %t2220 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2217, %nyx_string* %t2219)
  %t2221 = call i8* @nyx_string_to_cstr(%nyx_string* %t2220)
  %t2222 = call %nyx_string* @nyx_exec(i8* %t2221)
  %t2223 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2222)
  store %nyx_string* %t2223, %nyx_string** %t2224
  %t2225 = load %nyx_string*, %nyx_string** %t2224
  %t2226 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %t2227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t2226, i64 0)
  %t2228 = call i1 @nyx_string_equals(%nyx_string* %t2225, %nyx_string* %t2227)
  %t2229 = xor i1 %t2228, true
  br i1 %t2229, label %then421, label %else422
then421:
  %t2230 = load %nyx_string*, %nyx_string** %t2224
  ret %nyx_string* %t2230
else422:
  br label %merge423
merge423:
  br label %merge420
else419:
  br label %merge420
merge420:
  %t2231 = getelementptr [37 x i8], [37 x i8]* @.str240, i32 0, i32 0
  %t2232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t2231, i64 36)
  %t2233 = call i8* @nyx_string_to_cstr(%nyx_string* %t2232)
  %t2234 = call %nyx_string* @nyx_exec(i8* %t2233)
  %t2235 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2234)
  ret %nyx_string* %t2235
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t2237 = alloca { i64, i8* }*
  %t2238 = alloca i64
  %t2239 = alloca i64
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t2236 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2236, { i64, i8* }** %t2237
  store i64 0, i64* %t2238
  store i64 0, i64* %t2239
  br label %while_cond424
while_cond424:
  %t2240 = load i64, i64* %t2239
  %t2241 = load %nyx_string*, %nyx_string** %line.ptr
  %t2242 = call i64 @nyx_string_byte_length(%nyx_string* %t2241)
  %t2243 = icmp slt i64 %t2240, %t2242
  br i1 %t2243, label %while_body425, label %while_end426
while_body425:
  %t2244 = load %nyx_string*, %nyx_string** %line.ptr
  %t2245 = load i64, i64* %t2239
  %t2246 = call i8 @nyx_string_char_at(%nyx_string* %t2244, i64 %t2245)
  %t2247 = zext i8 %t2246 to i64
  %t2248 = icmp eq i64 %t2247, 9
  br i1 %t2248, label %then427, label %else428
then427:
  %t2249 = load { i64, i8* }*, { i64, i8* }** %t2237
  %t2250 = load %nyx_string*, %nyx_string** %line.ptr
  %t2251 = load i64, i64* %t2238
  %t2252 = load i64, i64* %t2239
  %t2253 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2250, i64 %t2251, i64 %t2252)
  %t2254 = ptrtoint %nyx_string* %t2253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2249, i64 %t2254, i64 2)
  %t2255 = load i64, i64* %t2239
  %t2256 = add i64 %t2255, 1
  store i64 %t2256, i64* %t2238
  br label %merge429
else428:
  br label %merge429
merge429:
  %t2257 = load i64, i64* %t2239
  %t2258 = add i64 %t2257, 1
  store i64 %t2258, i64* %t2239
  br label %while_cond424
while_end426:
  %t2259 = load { i64, i8* }*, { i64, i8* }** %t2237
  %t2260 = load %nyx_string*, %nyx_string** %line.ptr
  %t2261 = load i64, i64* %t2238
  %t2262 = load %nyx_string*, %nyx_string** %line.ptr
  %t2263 = call i64 @nyx_string_byte_length(%nyx_string* %t2262)
  %t2264 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2260, i64 %t2261, i64 %t2263)
  %t2265 = ptrtoint %nyx_string* %t2264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2259, i64 %t2265, i64 2)
  %t2266 = load { i64, i8* }*, { i64, i8* }** %t2237
  ret { i64, i8* }* %t2266
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  %t2269 = alloca %nyx_string*
  %t2272 = alloca %nyx_string*
  store i64 %n.param, i64* %n.ptr
  %t2267 = load i64, i64* %n.ptr
  %t2268 = call %nyx_string* @nyx_string_from_int(i64 %t2267)
  store %nyx_string* %t2268, %nyx_string** %t2269
  %t2270 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %t2271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t2270, i64 1)
  store %nyx_string* %t2271, %nyx_string** %t2272
  br label %while_cond430
while_cond430:
  %t2273 = load %nyx_string*, %nyx_string** %t2269
  %t2274 = call i64 @nyx_string_byte_length(%nyx_string* %t2273)
  %t2275 = icmp slt i64 %t2274, 9
  br i1 %t2275, label %while_body431, label %while_end432
while_body431:
  %t2276 = load %nyx_string*, %nyx_string** %t2272
  %t2277 = load %nyx_string*, %nyx_string** %t2269
  %t2278 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2276, %nyx_string* %t2277)
  store %nyx_string* %t2278, %nyx_string** %t2269
  br label %while_cond430
while_end432:
  %t2279 = load %nyx_string*, %nyx_string** %t2269
  ret %nyx_string* %t2279
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  %t2281 = alloca i8*
  %t2286 = alloca { i64, i8* }*
  %t2289 = alloca %nyx_string*
  %t2290 = alloca i64
  %t2293 = alloca %nyx_string*
  %t2296 = alloca %nyx_string*
  %t2299 = alloca %nyx_string*
  %t2302 = alloca %nyx_string*
  %t2305 = alloca %nyx_string*
  %t2308 = alloca %nyx_string*
  %t2311 = alloca %nyx_string*
  %t2314 = alloca %nyx_string*
  %t2317 = alloca %nyx_string*
  %t2320 = alloca %nyx_string*
  %t2329 = alloca %nyx_string*
  %t2330 = alloca i1
  %t2331 = alloca i1
  %t2349 = alloca %nyx_string*
  %t2353 = alloca i64
  %t2363 = alloca i1
  %t2375 = alloca i64
  %t2379 = alloca i64
  %t2380 = alloca i1
  %t2394 = alloca { i64, i8* }*
  %t2395 = alloca i64
  %t2404 = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %t2280 = call i8* @nyx_map_new(i32 0)
  store i8* %t2280, i8** %t2281
  %t2282 = load %nyx_string*, %nyx_string** %show.ptr
  %t2283 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %t2284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t2283, i64 1)
  %t2285 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2282, %nyx_string* %t2284)
  store { i64, i8* }* %t2285, { i64, i8* }** %t2286
  %t2287 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %t2288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t2287, i64 0)
  store %nyx_string* %t2288, %nyx_string** %t2289
  store i64 0, i64* %t2290
  %t2291 = getelementptr [3 x i8], [3 x i8]* @.str244, i32 0, i32 0
  %t2292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t2291, i64 2)
  store %nyx_string* %t2292, %nyx_string** %t2293
  %t2294 = getelementptr [4 x i8], [4 x i8]* @.str245, i32 0, i32 0
  %t2295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t2294, i64 3)
  store %nyx_string* %t2295, %nyx_string** %t2296
  %t2297 = getelementptr [2 x i8], [2 x i8]* @.str246, i32 0, i32 0
  %t2298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t2297, i64 1)
  store %nyx_string* %t2298, %nyx_string** %t2299
  %t2300 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %t2301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t2300, i64 1)
  store %nyx_string* %t2301, %nyx_string** %t2302
  %t2303 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %t2304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t2303, i64 0)
  store %nyx_string* %t2304, %nyx_string** %t2305
  %t2306 = getelementptr [14 x i8], [14 x i8]* @.str249, i32 0, i32 0
  %t2307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t2306, i64 13)
  store %nyx_string* %t2307, %nyx_string** %t2308
  %t2309 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %t2310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t2309, i64 1)
  store %nyx_string* %t2310, %nyx_string** %t2311
  %t2312 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %t2313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t2312, i64 1)
  store %nyx_string* %t2313, %nyx_string** %t2314
  %t2315 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %t2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t2315, i64 1)
  store %nyx_string* %t2316, %nyx_string** %t2317
  %t2318 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %t2319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t2318, i64 1)
  store %nyx_string* %t2319, %nyx_string** %t2320
  br label %while_cond433
while_cond433:
  %t2321 = load i64, i64* %t2290
  %t2322 = load { i64, i8* }*, { i64, i8* }** %t2286
  %t2323 = call i64 @nyx_array_length({ i64, i8* }* %t2322)
  %t2324 = icmp slt i64 %t2321, %t2323
  br i1 %t2324, label %while_body434, label %while_end435
while_body434:
  %t2325 = load { i64, i8* }*, { i64, i8* }** %t2286
  %t2326 = load i64, i64* %t2290
  %t2327 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2325, i64 %t2326, i64 2)
  %t2328 = inttoptr i64 %t2327 to %nyx_string*
  store %nyx_string* %t2328, %nyx_string** %t2329
  store i1 false, i1* %t2330
  store i1 false, i1* %t2331
  %t2332 = load %nyx_string*, %nyx_string** %t2329
  %t2333 = load %nyx_string*, %nyx_string** %t2293
  %t2334 = call i1 @nyx_string_starts_with(%nyx_string* %t2332, %nyx_string* %t2333)
  br i1 %t2334, label %sc_and_rhs436, label %sc_and_end437
sc_and_rhs436:
  %t2335 = load %nyx_string*, %nyx_string** %t2329
  %t2336 = load %nyx_string*, %nyx_string** %t2296
  %t2337 = call i1 @nyx_string_starts_with(%nyx_string* %t2335, %nyx_string* %t2336)
  %t2338 = xor i1 %t2337, true
  store i1 %t2338, i1* %t2331
  br label %sc_and_end437
sc_and_end437:
  %t2339 = load i1, i1* %t2331
  br i1 %t2339, label %sc_and_rhs438, label %sc_and_end439
sc_and_rhs438:
  %t2340 = load %nyx_string*, %nyx_string** %t2329
  %t2341 = load %nyx_string*, %nyx_string** %t2299
  %t2342 = call i1 @nyx_string_ends_with(%nyx_string* %t2340, %nyx_string* %t2341)
  store i1 %t2342, i1* %t2330
  br label %sc_and_end439
sc_and_end439:
  %t2343 = load i1, i1* %t2330
  br i1 %t2343, label %then440, label %else441
then440:
  %t2344 = load %nyx_string*, %nyx_string** %t2329
  %t2345 = load %nyx_string*, %nyx_string** %t2329
  %t2346 = call i64 @nyx_string_byte_length(%nyx_string* %t2345)
  %t2347 = sub i64 %t2346, 1
  %t2348 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2344, i64 2, i64 %t2347)
  store %nyx_string* %t2348, %nyx_string** %t2349
  %t2350 = load %nyx_string*, %nyx_string** %t2349
  %t2351 = load %nyx_string*, %nyx_string** %t2302
  %t2352 = call i64 @nyx_string_index_of(%nyx_string* %t2350, %nyx_string* %t2351)
  store i64 %t2352, i64* %t2353
  %t2354 = load i64, i64* %t2353
  %t2355 = icmp sge i64 %t2354, 0
  br i1 %t2355, label %then443, label %else444
then443:
  %t2356 = load %nyx_string*, %nyx_string** %t2349
  %t2357 = load i64, i64* %t2353
  %t2358 = add i64 %t2357, 1
  %t2359 = load %nyx_string*, %nyx_string** %t2349
  %t2360 = call i64 @nyx_string_byte_length(%nyx_string* %t2359)
  %t2361 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2356, i64 %t2358, i64 %t2360)
  store %nyx_string* %t2361, %nyx_string** %t2349
  br label %merge445
else444:
  br label %merge445
merge445:
  %t2362 = load %nyx_string*, %nyx_string** %t2349
  store %nyx_string* %t2362, %nyx_string** %t2289
  br label %merge442
else441:
  store i1 false, i1* %t2363
  %t2364 = load %nyx_string*, %nyx_string** %t2289
  %t2365 = load %nyx_string*, %nyx_string** %t2305
  %t2366 = call i1 @nyx_string_equals(%nyx_string* %t2364, %nyx_string* %t2365)
  %t2367 = xor i1 %t2366, true
  br i1 %t2367, label %sc_and_rhs446, label %sc_and_end447
sc_and_rhs446:
  %t2368 = load %nyx_string*, %nyx_string** %t2329
  %t2369 = load %nyx_string*, %nyx_string** %t2308
  %t2370 = call i1 @nyx_string_contains(%nyx_string* %t2368, %nyx_string* %t2369)
  store i1 %t2370, i1* %t2363
  br label %sc_and_end447
sc_and_end447:
  %t2371 = load i1, i1* %t2363
  br i1 %t2371, label %then448, label %else449
then448:
  %t2372 = load %nyx_string*, %nyx_string** %t2329
  %t2373 = load %nyx_string*, %nyx_string** %t2311
  %t2374 = call i64 @nyx_string_index_of(%nyx_string* %t2372, %nyx_string* %t2373)
  store i64 %t2374, i64* %t2375
  %t2376 = load %nyx_string*, %nyx_string** %t2329
  %t2377 = load %nyx_string*, %nyx_string** %t2314
  %t2378 = call i64 @nyx_string_index_of(%nyx_string* %t2376, %nyx_string* %t2377)
  store i64 %t2378, i64* %t2379
  store i1 false, i1* %t2380
  %t2381 = load i64, i64* %t2375
  %t2382 = icmp sge i64 %t2381, 0
  br i1 %t2382, label %sc_and_rhs451, label %sc_and_end452
sc_and_rhs451:
  %t2383 = load i64, i64* %t2379
  %t2384 = load i64, i64* %t2375
  %t2385 = icmp sgt i64 %t2383, %t2384
  store i1 %t2385, i1* %t2380
  br label %sc_and_end452
sc_and_end452:
  %t2386 = load i1, i1* %t2380
  br i1 %t2386, label %then453, label %else454
then453:
  %t2387 = load %nyx_string*, %nyx_string** %t2329
  %t2388 = load i64, i64* %t2375
  %t2389 = add i64 %t2388, 1
  %t2390 = load i64, i64* %t2379
  %t2391 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2387, i64 %t2389, i64 %t2390)
  %t2392 = load %nyx_string*, %nyx_string** %t2317
  %t2393 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2391, %nyx_string* %t2392)
  store { i64, i8* }* %t2393, { i64, i8* }** %t2394
  store i64 0, i64* %t2395
  br label %while_cond456
while_cond456:
  %t2396 = load i64, i64* %t2395
  %t2397 = load { i64, i8* }*, { i64, i8* }** %t2394
  %t2398 = call i64 @nyx_array_length({ i64, i8* }* %t2397)
  %t2399 = icmp slt i64 %t2396, %t2398
  br i1 %t2399, label %while_body457, label %while_end458
while_body457:
  %t2400 = load { i64, i8* }*, { i64, i8* }** %t2394
  %t2401 = load i64, i64* %t2395
  %t2402 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2400, i64 %t2401, i64 2)
  %t2403 = inttoptr i64 %t2402 to %nyx_string*
  store %nyx_string* %t2403, %nyx_string** %t2404
  %t2405 = load %nyx_string*, %nyx_string** %t2404
  %t2406 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2405)
  %t2407 = call i64 @nyx_string_to_int(%nyx_string* %t2406)
  %t2408 = icmp sgt i64 %t2407, 0
  br i1 %t2408, label %then459, label %else460
then459:
  %t2409 = load i8*, i8** %t2281
  %t2410 = load %nyx_string*, %nyx_string** %t2289
  %t2411 = load %nyx_string*, %nyx_string** %t2320
  %t2412 = call i8* @nyx_string_to_cstr(%nyx_string* %t2410)
  %t2413 = bitcast %nyx_string* %t2411 to i8*
  call void @nyx_map_insert_str(i8* %t2409, i8* %t2412, i8* %t2413)
  br label %merge461
else460:
  br label %merge461
merge461:
  %t2414 = load i64, i64* %t2395
  %t2415 = add i64 %t2414, 1
  store i64 %t2415, i64* %t2395
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
  %t2416 = load i64, i64* %t2290
  %t2417 = add i64 %t2416, 1
  store i64 %t2417, i64* %t2290
  br label %while_cond433
while_end435:
  %t2418 = load i8*, i8** %t2281
  ret i8* %t2418
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %t2420 = alloca { i64, i8* }*
  %t2431 = alloca %nyx_string*
  %t2436 = alloca { i64, i8* }*
  %t2437 = alloca i64
  %t2440 = alloca %nyx_string*
  %t2443 = alloca %nyx_string*
  %t2452 = alloca %nyx_string*
  %t2455 = alloca %nyx_string*
  %t2456 = alloca i1
  %t2419 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2419, { i64, i8* }** %t2420
  %t2421 = getelementptr [4 x i8], [4 x i8]* @.str254, i32 0, i32 0
  %t2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t2421, i64 3)
  %t2423 = call i8* @nyx_string_to_cstr(%nyx_string* %t2422)
  %t2424 = call i1 @nyx_file_exists(i8* %t2423)
  %t2425 = xor i1 %t2424, true
  br i1 %t2425, label %then462, label %else463
then462:
  %t2426 = load { i64, i8* }*, { i64, i8* }** %t2420
  ret { i64, i8* }* %t2426
else463:
  br label %merge464
merge464:
  %t2427 = getelementptr [50 x i8], [50 x i8]* @.str255, i32 0, i32 0
  %t2428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t2427, i64 49)
  %t2429 = call i8* @nyx_string_to_cstr(%nyx_string* %t2428)
  %t2430 = call %nyx_string* @nyx_exec(i8* %t2429)
  store %nyx_string* %t2430, %nyx_string** %t2431
  %t2432 = load %nyx_string*, %nyx_string** %t2431
  %t2433 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %t2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t2433, i64 1)
  %t2435 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2432, %nyx_string* %t2434)
  store { i64, i8* }* %t2435, { i64, i8* }** %t2436
  store i64 0, i64* %t2437
  %t2438 = getelementptr [4 x i8], [4 x i8]* @.str257, i32 0, i32 0
  %t2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t2438, i64 3)
  store %nyx_string* %t2439, %nyx_string** %t2440
  %t2441 = getelementptr [9 x i8], [9 x i8]* @.str258, i32 0, i32 0
  %t2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t2441, i64 8)
  store %nyx_string* %t2442, %nyx_string** %t2443
  br label %while_cond465
while_cond465:
  %t2444 = load i64, i64* %t2437
  %t2445 = load { i64, i8* }*, { i64, i8* }** %t2436
  %t2446 = call i64 @nyx_array_length({ i64, i8* }* %t2445)
  %t2447 = icmp slt i64 %t2444, %t2446
  br i1 %t2447, label %while_body466, label %while_end467
while_body466:
  %t2448 = load { i64, i8* }*, { i64, i8* }** %t2436
  %t2449 = load i64, i64* %t2437
  %t2450 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2448, i64 %t2449, i64 2)
  %t2451 = inttoptr i64 %t2450 to %nyx_string*
  store %nyx_string* %t2451, %nyx_string** %t2452
  %t2453 = load %nyx_string*, %nyx_string** %t2452
  %t2454 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2453)
  store %nyx_string* %t2454, %nyx_string** %t2455
  store i1 false, i1* %t2456
  %t2457 = load %nyx_string*, %nyx_string** %t2455
  %t2458 = load %nyx_string*, %nyx_string** %t2440
  %t2459 = call i1 @nyx_string_ends_with(%nyx_string* %t2457, %nyx_string* %t2458)
  br i1 %t2459, label %sc_and_rhs468, label %sc_and_end469
sc_and_rhs468:
  %t2460 = load %nyx_string*, %nyx_string** %t2455
  %t2461 = load %nyx_string*, %nyx_string** %t2443
  %t2462 = call i1 @nyx_string_ends_with(%nyx_string* %t2460, %nyx_string* %t2461)
  %t2463 = xor i1 %t2462, true
  store i1 %t2463, i1* %t2456
  br label %sc_and_end469
sc_and_end469:
  %t2464 = load i1, i1* %t2456
  br i1 %t2464, label %then470, label %else471
then470:
  %t2465 = load { i64, i8* }*, { i64, i8* }** %t2420
  %t2466 = load %nyx_string*, %nyx_string** %t2455
  %t2467 = load %nyx_string*, %nyx_string** %t2455
  %t2468 = call i64 @nyx_string_byte_length(%nyx_string* %t2467)
  %t2469 = sub i64 %t2468, 3
  %t2470 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2466, i64 0, i64 %t2469)
  %t2471 = ptrtoint %nyx_string* %t2470 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2465, i64 %t2471, i64 2)
  br label %merge472
else471:
  br label %merge472
merge472:
  %t2472 = load i64, i64* %t2437
  %t2473 = add i64 %t2472, 1
  store i64 %t2473, i64* %t2437
  br label %while_cond465
while_end467:
  %t2474 = load { i64, i8* }*, { i64, i8* }** %t2420
  ret { i64, i8* }* %t2474
}

define internal %nyx_string* @cov_universe(
%nyx_string* %nyx_home.param, %nyx_string* %orig_dir.param, %nyx_string* %cov_dir.param, { i64, i8* }* %mods.param) {
  %nyx_home.ptr = alloca %nyx_string*
  %orig_dir.ptr = alloca %nyx_string*
  %cov_dir.ptr = alloca %nyx_string*
  %mods.ptr = alloca { i64, i8* }*
  %t2477 = alloca %nyx_string*
  %t2478 = alloca i64
  %t2481 = alloca %nyx_string*
  %t2484 = alloca %nyx_string*
  %t2493 = alloca %nyx_string*
  %t2520 = alloca %nyx_string*
  %t2582 = alloca %nyx_string*
  store %nyx_string* %nyx_home.param, %nyx_string** %nyx_home.ptr
  store %nyx_string* %orig_dir.param, %nyx_string** %orig_dir.ptr
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  store { i64, i8* }* %mods.param, { i64, i8* }** %mods.ptr
  %t2475 = getelementptr [1 x i8], [1 x i8]* @.str259, i32 0, i32 0
  %t2476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t2475, i64 0)
  store %nyx_string* %t2476, %nyx_string** %t2477
  store i64 0, i64* %t2478
  %t2479 = getelementptr [9 x i8], [9 x i8]* @.str260, i32 0, i32 0
  %t2480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t2479, i64 8)
  store %nyx_string* %t2480, %nyx_string** %t2481
  %t2482 = getelementptr [3 x i8], [3 x i8]* @.str261, i32 0, i32 0
  %t2483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t2482, i64 2)
  store %nyx_string* %t2483, %nyx_string** %t2484
  br label %while_cond473
while_cond473:
  %t2485 = load i64, i64* %t2478
  %t2486 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %t2487 = call i64 @nyx_array_length({ i64, i8* }* %t2486)
  %t2488 = icmp slt i64 %t2485, %t2487
  br i1 %t2488, label %while_body474, label %while_end475
while_body474:
  %t2489 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %t2490 = load i64, i64* %t2478
  %t2491 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2489, i64 %t2490, i64 2)
  %t2492 = inttoptr i64 %t2491 to %nyx_string*
  store %nyx_string* %t2492, %nyx_string** %t2493
  %t2494 = load %nyx_string*, %nyx_string** %t2477
  %t2495 = load %nyx_string*, %nyx_string** %t2481
  %t2496 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2494, %nyx_string* %t2495)
  %t2497 = load %nyx_string*, %nyx_string** %t2493
  %t2498 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2496, %nyx_string* %t2497)
  %t2499 = load %nyx_string*, %nyx_string** %t2484
  %t2500 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2498, %nyx_string* %t2499)
  store %nyx_string* %t2500, %nyx_string** %t2477
  %t2501 = load i64, i64* %t2478
  %t2502 = add i64 %t2501, 1
  store i64 %t2502, i64* %t2478
  br label %while_cond473
while_end475:
  %t2503 = load %nyx_string*, %nyx_string** %t2477
  %t2504 = getelementptr [36 x i8], [36 x i8]* @.str262, i32 0, i32 0
  %t2505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t2504, i64 35)
  %t2506 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2503, %nyx_string* %t2505)
  store %nyx_string* %t2506, %nyx_string** %t2477
  %t2507 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2508 = getelementptr [13 x i8], [13 x i8]* @.str263, i32 0, i32 0
  %t2509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t2508, i64 12)
  %t2510 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2507, %nyx_string* %t2509)
  %t2511 = load %nyx_string*, %nyx_string** %t2477
  %t2512 = ptrtoint %nyx_string* %t2511 to i64
  %t2513 = call i8* @nyx_string_to_cstr(%nyx_string* %t2510)
  %t2514 = inttoptr i64 %t2512 to %nyx_string*
  %t2515 = call i1 @nyx_write_file_safe(i8* %t2513, %nyx_string* %t2514)
  %t2516 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2517 = getelementptr [14 x i8], [14 x i8]* @.str264, i32 0, i32 0
  %t2518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t2517, i64 13)
  %t2519 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2516, %nyx_string* %t2518)
  store %nyx_string* %t2519, %nyx_string** %t2520
  %t2521 = getelementptr [13 x i8], [13 x i8]* @.str265, i32 0, i32 0
  %t2522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t2521, i64 12)
  %t2523 = getelementptr [8 x i8], [8 x i8]* @.str266, i32 0, i32 0
  %t2524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t2523, i64 7)
  %t2525 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2522, %nyx_string* %t2524)
  %t2526 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2527 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2525, %nyx_string* %t2526)
  %t2528 = getelementptr [19 x i8], [19 x i8]* @.str267, i32 0, i32 0
  %t2529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t2528, i64 18)
  %t2530 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2527, %nyx_string* %t2529)
  %t2531 = getelementptr [5 x i8], [5 x i8]* @.str268, i32 0, i32 0
  %t2532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t2531, i64 4)
  %t2533 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2530, %nyx_string* %t2532)
  %t2534 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2535 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2533, %nyx_string* %t2534)
  %t2536 = getelementptr [24 x i8], [24 x i8]* @.str269, i32 0, i32 0
  %t2537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t2536, i64 23)
  %t2538 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2535, %nyx_string* %t2537)
  %t2539 = getelementptr [5 x i8], [5 x i8]* @.str270, i32 0, i32 0
  %t2540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t2539, i64 4)
  %t2541 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2538, %nyx_string* %t2540)
  %t2542 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %t2543 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2541, %nyx_string* %t2542)
  %t2544 = getelementptr [3 x i8], [3 x i8]* @.str271, i32 0, i32 0
  %t2545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t2544, i64 2)
  %t2546 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2543, %nyx_string* %t2545)
  %t2547 = getelementptr [137 x i8], [137 x i8]* @.str272, i32 0, i32 0
  %t2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t2547, i64 136)
  %t2549 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2546, %nyx_string* %t2548)
  %t2550 = getelementptr [43 x i8], [43 x i8]* @.str273, i32 0, i32 0
  %t2551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t2550, i64 42)
  %t2552 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2549, %nyx_string* %t2551)
  %t2553 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %t2554 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2552, %nyx_string* %t2553)
  %t2555 = getelementptr [38 x i8], [38 x i8]* @.str274, i32 0, i32 0
  %t2556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t2555, i64 37)
  %t2557 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2554, %nyx_string* %t2556)
  %t2558 = load %nyx_string*, %nyx_string** %t2520
  %t2559 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2557, %nyx_string* %t2558)
  %t2560 = getelementptr [24 x i8], [24 x i8]* @.str275, i32 0, i32 0
  %t2561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t2560, i64 23)
  %t2562 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2559, %nyx_string* %t2561)
  %t2563 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2564 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2562, %nyx_string* %t2563)
  %t2565 = getelementptr [21 x i8], [21 x i8]* @.str276, i32 0, i32 0
  %t2566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t2565, i64 20)
  %t2567 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2564, %nyx_string* %t2566)
  %t2568 = getelementptr [7 x i8], [7 x i8]* @.str277, i32 0, i32 0
  %t2569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t2568, i64 6)
  %t2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2567, %nyx_string* %t2569)
  %t2571 = getelementptr [17 x i8], [17 x i8]* @.str278, i32 0, i32 0
  %t2572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t2571, i64 16)
  %t2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2570, %nyx_string* %t2572)
  %t2574 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2575 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2573, %nyx_string* %t2574)
  %t2576 = getelementptr [19 x i8], [19 x i8]* @.str279, i32 0, i32 0
  %t2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t2576, i64 18)
  %t2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2575, %nyx_string* %t2577)
  %t2579 = getelementptr [10 x i8], [10 x i8]* @.str280, i32 0, i32 0
  %t2580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t2579, i64 9)
  %t2581 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2578, %nyx_string* %t2580)
  store %nyx_string* %t2581, %nyx_string** %t2582
  %t2583 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2584 = getelementptr [13 x i8], [13 x i8]* @.str281, i32 0, i32 0
  %t2585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t2584, i64 12)
  %t2586 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2583, %nyx_string* %t2585)
  %t2587 = load %nyx_string*, %nyx_string** %t2582
  %t2588 = ptrtoint %nyx_string* %t2587 to i64
  %t2589 = call i8* @nyx_string_to_cstr(%nyx_string* %t2586)
  %t2590 = inttoptr i64 %t2588 to %nyx_string*
  %t2591 = call i1 @nyx_write_file_safe(i8* %t2589, %nyx_string* %t2590)
  %t2592 = getelementptr [7 x i8], [7 x i8]* @.str282, i32 0, i32 0
  %t2593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t2592, i64 6)
  %t2594 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2595 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2593, %nyx_string* %t2594)
  %t2596 = getelementptr [14 x i8], [14 x i8]* @.str283, i32 0, i32 0
  %t2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t2596, i64 13)
  %t2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2595, %nyx_string* %t2597)
  %t2599 = call i8* @nyx_string_to_cstr(%nyx_string* %t2598)
  %t2600 = call i64 @nyx_exec_code(i8* %t2599)
  %t2601 = load %nyx_string*, %nyx_string** %t2520
  ret %nyx_string* %t2601
}

define internal i64 @cov_report(
%nyx_string* %cov_dir.param, { i64, i8* }* %run_files.param, { i64, i8* }* %run_idx.param, %nyx_string* %profdata.param, i1 %want_lcov.param) {
  %cov_dir.ptr = alloca %nyx_string*
  %run_files.ptr = alloca { i64, i8* }*
  %run_idx.ptr = alloca { i64, i8* }*
  %profdata.ptr = alloca %nyx_string*
  %want_lcov.ptr = alloca i1
  %t2606 = alloca %nyx_string*
  %t2611 = alloca %nyx_string*
  %t2620 = alloca %nyx_string*
  %t2621 = alloca i64
  %t2623 = alloca i8*
  %t2625 = alloca { i64, i8* }*
  %t2626 = alloca i64
  %t2629 = alloca %nyx_string*
  %t2632 = alloca %nyx_string*
  %t2635 = alloca %nyx_string*
  %t2638 = alloca %nyx_string*
  %t2641 = alloca %nyx_string*
  %t2650 = alloca %nyx_string*
  %t2655 = alloca %nyx_string*
  %t2663 = alloca %nyx_string*
  %t2686 = alloca i8*
  %t2693 = alloca %nyx_string*
  %t2715 = alloca i64
  %t2752 = alloca i8*
  %t2754 = alloca i8*
  %t2756 = alloca i8*
  %t2758 = alloca i8*
  %t2761 = alloca %nyx_string*
  %t2764 = alloca %nyx_string*
  %t2767 = alloca %nyx_string*
  %t2770 = alloca %nyx_string*
  %t2773 = alloca %nyx_string*
  %t2776 = alloca %nyx_string*
  %t2785 = alloca %nyx_string*
  %t2793 = alloca %nyx_string*
  %t2802 = alloca { i64, i8* }*
  %t2803 = alloca i64
  %t2812 = alloca %nyx_string*
  %t2815 = alloca { i64, i8* }*
  %t2822 = alloca %nyx_string*
  %t2826 = alloca %nyx_string*
  %t2830 = alloca %nyx_string*
  %t2834 = alloca %nyx_string*
  %t2853 = alloca i1
  %t2877 = alloca { i64, i8* }*
  %t2889 = alloca %nyx_string*
  %t2916 = alloca { i64, i8* }*
  %t2918 = alloca { i64, i8* }*
  %t2919 = alloca i64
  %t2922 = alloca %nyx_string*
  %t2925 = alloca %nyx_string*
  %t2928 = alloca %nyx_string*
  %t2931 = alloca %nyx_string*
  %t2934 = alloca %nyx_string*
  %t2937 = alloca %nyx_string*
  %t2940 = alloca %nyx_string*
  %t2943 = alloca %nyx_string*
  %t2946 = alloca %nyx_string*
  %t2949 = alloca %nyx_string*
  %t2952 = alloca %nyx_string*
  %t2961 = alloca %nyx_string*
  %t2964 = alloca { i64, i8* }*
  %t2971 = alloca %nyx_string*
  %t2975 = alloca %nyx_string*
  %t2979 = alloca %nyx_string*
  %t2983 = alloca %nyx_string*
  %t2987 = alloca %nyx_string*
  %t2988 = alloca i1
  %t2989 = alloca i1
  %t2990 = alloca i1
  %t3006 = alloca i1
  %t3007 = alloca i1
  %t3008 = alloca i1
  %t3023 = alloca i1
  %t3032 = alloca %nyx_string*
  %t3035 = alloca i1
  %t3072 = alloca { i64, i8* }*
  %t3075 = alloca %nyx_string*
  %t3076 = alloca i64
  %t3077 = alloca i64
  %t3078 = alloca i64
  %t3081 = alloca %nyx_string*
  %t3084 = alloca %nyx_string*
  %t3087 = alloca %nyx_string*
  %t3090 = alloca %nyx_string*
  %t3093 = alloca %nyx_string*
  %t3096 = alloca %nyx_string*
  %t3099 = alloca %nyx_string*
  %t3102 = alloca %nyx_string*
  %t3105 = alloca %nyx_string*
  %t3108 = alloca %nyx_string*
  %t3111 = alloca %nyx_string*
  %t3114 = alloca %nyx_string*
  %t3117 = alloca %nyx_string*
  %t3120 = alloca %nyx_string*
  %t3123 = alloca %nyx_string*
  %t3126 = alloca %nyx_string*
  %t3129 = alloca %nyx_string*
  %t3132 = alloca %nyx_string*
  %t3135 = alloca %nyx_string*
  %t3138 = alloca %nyx_string*
  %t3141 = alloca %nyx_string*
  %t3144 = alloca %nyx_string*
  %t3147 = alloca %nyx_string*
  %t3156 = alloca %nyx_string*
  %t3159 = alloca { i64, i8* }*
  %t3163 = alloca %nyx_string*
  %t3167 = alloca %nyx_string*
  %t3168 = alloca i64
  %t3169 = alloca i64
  %t3170 = alloca i64
  %t3172 = alloca { i64, i8* }*
  %t3174 = alloca %nyx_string*
  %t3176 = alloca %nyx_string*
  %t3178 = alloca i64
  %t3179 = alloca i1
  %t3180 = alloca i1
  %t3191 = alloca %nyx_string*
  %t3194 = alloca { i64, i8* }*
  %t3198 = alloca %nyx_string*
  %t3207 = alloca i64
  %t3211 = alloca %nyx_string*
  %t3215 = alloca %nyx_string*
  %t3224 = alloca %nyx_string*
  %t3285 = alloca %nyx_string*
  %t3306 = alloca i64
  %t3315 = alloca %nyx_string*
  %t3356 = alloca i64
  %t3359 = alloca %nyx_string*
  %t3368 = alloca %nyx_string*
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  store { i64, i8* }* %run_files.param, { i64, i8* }** %run_files.ptr
  store { i64, i8* }* %run_idx.param, { i64, i8* }** %run_idx.ptr
  store %nyx_string* %profdata.param, %nyx_string** %profdata.ptr
  store i1 %want_lcov.param, i1* %want_lcov.ptr
  %t2602 = getelementptr [9 x i8], [9 x i8]* @.str284, i32 0, i32 0
  %t2603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t2602, i64 8)
  %t2604 = call i8* @nyx_string_to_cstr(%nyx_string* %t2603)
  %t2605 = call %nyx_string* @nyx_getenv(i8* %t2604)
  store %nyx_string* %t2605, %nyx_string** %t2606
  %t2607 = getelementptr [4 x i8], [4 x i8]* @.str285, i32 0, i32 0
  %t2608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t2607, i64 3)
  %t2609 = call i8* @nyx_string_to_cstr(%nyx_string* %t2608)
  %t2610 = call %nyx_string* @nyx_getenv(i8* %t2609)
  store %nyx_string* %t2610, %nyx_string** %t2611
  %t2612 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %t2613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t2612, i64 0)
  %t2614 = call i8* @nyx_string_to_cstr(%nyx_string* %t2613)
  call void @nyx_print_string(i8* %t2614)
  %t2615 = getelementptr [36 x i8], [36 x i8]* @.str287, i32 0, i32 0
  %t2616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t2615, i64 35)
  %t2617 = call i8* @nyx_string_to_cstr(%nyx_string* %t2616)
  call void @nyx_print_string(i8* %t2617)
  %t2618 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %t2619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t2618, i64 0)
  store %nyx_string* %t2619, %nyx_string** %t2620
  store i64 0, i64* %t2621
  %t2622 = call i8* @nyx_map_new(i32 0)
  store i8* %t2622, i8** %t2623
  %t2624 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2624, { i64, i8* }** %t2625
  store i64 0, i64* %t2626
  %t2627 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %t2628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t2627, i64 1)
  store %nyx_string* %t2628, %nyx_string** %t2629
  %t2630 = getelementptr [9 x i8], [9 x i8]* @.str290, i32 0, i32 0
  %t2631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t2630, i64 8)
  store %nyx_string* %t2631, %nyx_string** %t2632
  %t2633 = getelementptr [3 x i8], [3 x i8]* @.str291, i32 0, i32 0
  %t2634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t2633, i64 2)
  store %nyx_string* %t2634, %nyx_string** %t2635
  %t2636 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %t2637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %t2636, i64 1)
  store %nyx_string* %t2637, %nyx_string** %t2638
  %t2639 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %t2640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %t2639, i64 1)
  store %nyx_string* %t2640, %nyx_string** %t2641
  br label %while_cond476
while_cond476:
  %t2642 = load i64, i64* %t2626
  %t2643 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %t2644 = call i64 @nyx_array_length({ i64, i8* }* %t2643)
  %t2645 = icmp slt i64 %t2642, %t2644
  br i1 %t2645, label %while_body477, label %while_end478
while_body477:
  %t2646 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %t2647 = load i64, i64* %t2626
  %t2648 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2646, i64 %t2647, i64 2)
  %t2649 = inttoptr i64 %t2648 to %nyx_string*
  store %nyx_string* %t2649, %nyx_string** %t2650
  %t2651 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %t2652 = load i64, i64* %t2626
  %t2653 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2651, i64 %t2652, i64 2)
  %t2654 = inttoptr i64 %t2653 to %nyx_string*
  store %nyx_string* %t2654, %nyx_string** %t2655
  %t2656 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2657 = load %nyx_string*, %nyx_string** %t2629
  %t2658 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2656, %nyx_string* %t2657)
  %t2659 = load %nyx_string*, %nyx_string** %t2650
  %t2660 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2658, %nyx_string* %t2659)
  %t2661 = load %nyx_string*, %nyx_string** %t2632
  %t2662 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2660, %nyx_string* %t2661)
  store %nyx_string* %t2662, %nyx_string** %t2663
  %t2664 = load %nyx_string*, %nyx_string** %t2663
  %t2665 = call i1 @cov_profraw_valid(%nyx_string* %t2664)
  br i1 %t2665, label %then479, label %else480
then479:
  %t2666 = load %nyx_string*, %nyx_string** %t2620
  %t2667 = load %nyx_string*, %nyx_string** %t2635
  %t2668 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2666, %nyx_string* %t2667)
  %t2669 = load %nyx_string*, %nyx_string** %t2663
  %t2670 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2668, %nyx_string* %t2669)
  %t2671 = load %nyx_string*, %nyx_string** %t2638
  %t2672 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2670, %nyx_string* %t2671)
  store %nyx_string* %t2672, %nyx_string** %t2620
  %t2673 = load i64, i64* %t2621
  %t2674 = add i64 %t2673, 1
  store i64 %t2674, i64* %t2621
  %t2675 = load i8*, i8** %t2623
  %t2676 = load %nyx_string*, %nyx_string** %t2650
  %t2677 = load %nyx_string*, %nyx_string** %t2641
  %t2678 = call i8* @nyx_string_to_cstr(%nyx_string* %t2676)
  %t2679 = bitcast %nyx_string* %t2677 to i8*
  call void @nyx_map_insert_str(i8* %t2675, i8* %t2678, i8* %t2679)
  br label %merge481
else480:
  %t2680 = load { i64, i8* }*, { i64, i8* }** %t2625
  %t2681 = load %nyx_string*, %nyx_string** %t2655
  %t2682 = ptrtoint %nyx_string* %t2681 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2680, i64 %t2682, i64 2)
  br label %merge481
merge481:
  %t2683 = load i64, i64* %t2626
  %t2684 = add i64 %t2683, 1
  store i64 %t2684, i64* %t2626
  br label %while_cond476
while_end478:
  %t2685 = call i8* @nyx_map_new(i32 0)
  store i8* %t2685, i8** %t2686
  %t2687 = load i64, i64* %t2621
  %t2688 = icmp sgt i64 %t2687, 0
  br i1 %t2688, label %then482, label %else483
then482:
  %t2689 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2690 = getelementptr [17 x i8], [17 x i8]* @.str294, i32 0, i32 0
  %t2691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %t2690, i64 16)
  %t2692 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2689, %nyx_string* %t2691)
  store %nyx_string* %t2692, %nyx_string** %t2693
  %t2694 = load %nyx_string*, %nyx_string** %profdata.ptr
  %t2695 = getelementptr [12 x i8], [12 x i8]* @.str295, i32 0, i32 0
  %t2696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %t2695, i64 11)
  %t2697 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2694, %nyx_string* %t2696)
  %t2698 = load %nyx_string*, %nyx_string** %t2693
  %t2699 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2697, %nyx_string* %t2698)
  %t2700 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %t2701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %t2700, i64 1)
  %t2702 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2699, %nyx_string* %t2701)
  %t2703 = load %nyx_string*, %nyx_string** %t2620
  %t2704 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2702, %nyx_string* %t2703)
  %t2705 = getelementptr [5 x i8], [5 x i8]* @.str297, i32 0, i32 0
  %t2706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t2705, i64 4)
  %t2707 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2704, %nyx_string* %t2706)
  %t2708 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2709 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2707, %nyx_string* %t2708)
  %t2710 = getelementptr [17 x i8], [17 x i8]* @.str298, i32 0, i32 0
  %t2711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %t2710, i64 16)
  %t2712 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2709, %nyx_string* %t2711)
  %t2713 = call i8* @nyx_string_to_cstr(%nyx_string* %t2712)
  %t2714 = call i64 @nyx_exec_code(i8* %t2713)
  store i64 %t2714, i64* %t2715
  %t2716 = load i64, i64* %t2715
  %t2717 = icmp ne i64 %t2716, 0
  br i1 %t2717, label %then485, label %else486
then485:
  %t2718 = getelementptr [36 x i8], [36 x i8]* @.str299, i32 0, i32 0
  %t2719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t2718, i64 35)
  %t2720 = call i8* @nyx_string_to_cstr(%nyx_string* %t2719)
  call void @nyx_print_string(i8* %t2720)
  %t2721 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2722 = getelementptr [11 x i8], [11 x i8]* @.str300, i32 0, i32 0
  %t2723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %t2722, i64 10)
  %t2724 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2721, %nyx_string* %t2723)
  %t2725 = call i8* @nyx_string_to_cstr(%nyx_string* %t2724)
  %t2726 = call %nyx_string* @nyx_read_file(i8* %t2725)
  %t2727 = call i8* @nyx_string_to_cstr(%nyx_string* %t2726)
  call void @nyx_print_string(i8* %t2727)
  ret i64 1
else486:
  br label %merge487
merge487:
  %t2728 = load %nyx_string*, %nyx_string** %profdata.ptr
  %t2729 = getelementptr [33 x i8], [33 x i8]* @.str301, i32 0, i32 0
  %t2730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %t2729, i64 32)
  %t2731 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2728, %nyx_string* %t2730)
  %t2732 = load %nyx_string*, %nyx_string** %t2693
  %t2733 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2731, %nyx_string* %t2732)
  %t2734 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %t2735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %t2734, i64 5)
  %t2736 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2733, %nyx_string* %t2735)
  %t2737 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2738 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2736, %nyx_string* %t2737)
  %t2739 = getelementptr [16 x i8], [16 x i8]* @.str303, i32 0, i32 0
  %t2740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %t2739, i64 15)
  %t2741 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2738, %nyx_string* %t2740)
  %t2742 = call i8* @nyx_string_to_cstr(%nyx_string* %t2741)
  %t2743 = call i64 @nyx_exec_code(i8* %t2742)
  %t2744 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2745 = getelementptr [10 x i8], [10 x i8]* @.str304, i32 0, i32 0
  %t2746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t2745, i64 9)
  %t2747 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2744, %nyx_string* %t2746)
  %t2748 = call i8* @nyx_string_to_cstr(%nyx_string* %t2747)
  %t2749 = call %nyx_string* @nyx_read_file(i8* %t2748)
  %t2750 = call i8* @cov_called_from_show(%nyx_string* %t2749)
  store i8* %t2750, i8** %t2686
  br label %merge484
else483:
  br label %merge484
merge484:
  %t2751 = call i8* @nyx_map_new(i32 0)
  store i8* %t2751, i8** %t2752
  %t2753 = call i8* @nyx_map_new(i32 0)
  store i8* %t2753, i8** %t2754
  %t2755 = call i8* @nyx_map_new(i32 0)
  store i8* %t2755, i8** %t2756
  %t2757 = call i8* @nyx_map_new(i32 0)
  store i8* %t2757, i8** %t2758
  store i64 0, i64* %t2626
  %t2759 = getelementptr [2 x i8], [2 x i8]* @.str305, i32 0, i32 0
  %t2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t2759, i64 1)
  store %nyx_string* %t2760, %nyx_string** %t2761
  %t2762 = getelementptr [5 x i8], [5 x i8]* @.str306, i32 0, i32 0
  %t2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t2762, i64 4)
  store %nyx_string* %t2763, %nyx_string** %t2764
  %t2765 = getelementptr [2 x i8], [2 x i8]* @.str307, i32 0, i32 0
  %t2766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t2765, i64 1)
  store %nyx_string* %t2766, %nyx_string** %t2767
  %t2768 = getelementptr [1 x i8], [1 x i8]* @.str308, i32 0, i32 0
  %t2769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t2768, i64 0)
  store %nyx_string* %t2769, %nyx_string** %t2770
  %t2771 = getelementptr [2 x i8], [2 x i8]* @.str309, i32 0, i32 0
  %t2772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t2771, i64 1)
  store %nyx_string* %t2772, %nyx_string** %t2773
  %t2774 = getelementptr [5 x i8], [5 x i8]* @.str310, i32 0, i32 0
  %t2775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %t2774, i64 4)
  store %nyx_string* %t2775, %nyx_string** %t2776
  br label %while_cond488
while_cond488:
  %t2777 = load i64, i64* %t2626
  %t2778 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %t2779 = call i64 @nyx_array_length({ i64, i8* }* %t2778)
  %t2780 = icmp slt i64 %t2777, %t2779
  br i1 %t2780, label %while_body489, label %while_end490
while_body489:
  %t2781 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %t2782 = load i64, i64* %t2626
  %t2783 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2781, i64 %t2782, i64 2)
  %t2784 = inttoptr i64 %t2783 to %nyx_string*
  store %nyx_string* %t2784, %nyx_string** %t2785
  %t2786 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2787 = load %nyx_string*, %nyx_string** %t2761
  %t2788 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2786, %nyx_string* %t2787)
  %t2789 = load %nyx_string*, %nyx_string** %t2785
  %t2790 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2788, %nyx_string* %t2789)
  %t2791 = load %nyx_string*, %nyx_string** %t2764
  %t2792 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2790, %nyx_string* %t2791)
  store %nyx_string* %t2792, %nyx_string** %t2793
  %t2794 = load %nyx_string*, %nyx_string** %t2793
  %t2795 = call i8* @nyx_string_to_cstr(%nyx_string* %t2794)
  %t2796 = call i1 @nyx_file_exists(i8* %t2795)
  br i1 %t2796, label %then491, label %else492
then491:
  %t2797 = load %nyx_string*, %nyx_string** %t2793
  %t2798 = call i8* @nyx_string_to_cstr(%nyx_string* %t2797)
  %t2799 = call %nyx_string* @nyx_read_file(i8* %t2798)
  %t2800 = load %nyx_string*, %nyx_string** %t2767
  %t2801 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2799, %nyx_string* %t2800)
  store { i64, i8* }* %t2801, { i64, i8* }** %t2802
  store i64 0, i64* %t2803
  br label %while_cond494
while_cond494:
  %t2804 = load i64, i64* %t2803
  %t2805 = load { i64, i8* }*, { i64, i8* }** %t2802
  %t2806 = call i64 @nyx_array_length({ i64, i8* }* %t2805)
  %t2807 = icmp slt i64 %t2804, %t2806
  br i1 %t2807, label %while_body495, label %while_end496
while_body495:
  %t2808 = load { i64, i8* }*, { i64, i8* }** %t2802
  %t2809 = load i64, i64* %t2803
  %t2810 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2808, i64 %t2809, i64 2)
  %t2811 = inttoptr i64 %t2810 to %nyx_string*
  store %nyx_string* %t2811, %nyx_string** %t2812
  %t2813 = load %nyx_string*, %nyx_string** %t2812
  %t2814 = call { i64, i8* }* @cov_fields(%nyx_string* %t2813)
  store { i64, i8* }* %t2814, { i64, i8* }** %t2815
  %t2816 = load { i64, i8* }*, { i64, i8* }** %t2815
  %t2817 = call i64 @nyx_array_length({ i64, i8* }* %t2816)
  %t2818 = icmp sge i64 %t2817, 5
  br i1 %t2818, label %then497, label %else498
then497:
  %t2819 = load { i64, i8* }*, { i64, i8* }** %t2815
  %t2820 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2819, i64 0, i64 2)
  %t2821 = inttoptr i64 %t2820 to %nyx_string*
  store %nyx_string* %t2821, %nyx_string** %t2822
  %t2823 = load { i64, i8* }*, { i64, i8* }** %t2815
  %t2824 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2823, i64 1, i64 2)
  %t2825 = inttoptr i64 %t2824 to %nyx_string*
  store %nyx_string* %t2825, %nyx_string** %t2826
  %t2827 = load { i64, i8* }*, { i64, i8* }** %t2815
  %t2828 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2827, i64 3, i64 2)
  %t2829 = inttoptr i64 %t2828 to %nyx_string*
  store %nyx_string* %t2829, %nyx_string** %t2830
  %t2831 = load { i64, i8* }*, { i64, i8* }** %t2815
  %t2832 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2831, i64 4, i64 2)
  %t2833 = inttoptr i64 %t2832 to %nyx_string*
  store %nyx_string* %t2833, %nyx_string** %t2834
  %t2835 = load %nyx_string*, %nyx_string** %t2826
  %t2836 = load %nyx_string*, %nyx_string** %t2770
  %t2837 = call i1 @nyx_string_equals(%nyx_string* %t2835, %nyx_string* %t2836)
  %t2838 = xor i1 %t2837, true
  br i1 %t2838, label %then500, label %else501
then500:
  %t2839 = load i8*, i8** %t2758
  %t2840 = load %nyx_string*, %nyx_string** %t2826
  %t2841 = load %nyx_string*, %nyx_string** %t2773
  %t2842 = call i8* @nyx_string_to_cstr(%nyx_string* %t2840)
  %t2843 = bitcast %nyx_string* %t2841 to i8*
  call void @nyx_map_insert_str(i8* %t2839, i8* %t2842, i8* %t2843)
  br label %merge502
else501:
  br label %merge502
merge502:
  %t2844 = load i8*, i8** %t2623
  %t2845 = load %nyx_string*, %nyx_string** %t2785
  %t2846 = call i8* @nyx_string_to_cstr(%nyx_string* %t2845)
  %t2847 = call i1 @nyx_map_contains_str(i8* %t2844, i8* %t2846)
  br i1 %t2847, label %then503, label %else504
then503:
  %t2848 = load i8*, i8** %t2752
  %t2849 = load %nyx_string*, %nyx_string** %t2822
  %t2850 = load %nyx_string*, %nyx_string** %t2773
  %t2851 = call i8* @nyx_string_to_cstr(%nyx_string* %t2849)
  %t2852 = bitcast %nyx_string* %t2850 to i8*
  call void @nyx_map_insert_str(i8* %t2848, i8* %t2851, i8* %t2852)
  store i1 false, i1* %t2853
  %t2854 = load %nyx_string*, %nyx_string** %t2834
  %t2855 = load %nyx_string*, %nyx_string** %t2776
  %t2856 = call i1 @nyx_string_equals(%nyx_string* %t2854, %nyx_string* %t2855)
  br i1 %t2856, label %sc_and_rhs506, label %sc_and_end507
sc_and_rhs506:
  %t2857 = load i8*, i8** %t2686
  %t2858 = load %nyx_string*, %nyx_string** %t2822
  %t2859 = call i8* @nyx_string_to_cstr(%nyx_string* %t2858)
  %t2860 = call i1 @nyx_map_contains_str(i8* %t2857, i8* %t2859)
  store i1 %t2860, i1* %t2853
  br label %sc_and_end507
sc_and_end507:
  %t2861 = load i1, i1* %t2853
  br i1 %t2861, label %then508, label %else509
then508:
  %t2862 = load i8*, i8** %t2756
  %t2863 = load %nyx_string*, %nyx_string** %t2830
  %t2864 = load %nyx_string*, %nyx_string** %t2773
  %t2865 = call i8* @nyx_string_to_cstr(%nyx_string* %t2863)
  %t2866 = bitcast %nyx_string* %t2864 to i8*
  call void @nyx_map_insert_str(i8* %t2862, i8* %t2865, i8* %t2866)
  br label %merge510
else509:
  br label %merge510
merge510:
  br label %merge505
else504:
  %t2867 = load i8*, i8** %t2754
  %t2868 = load %nyx_string*, %nyx_string** %t2822
  %t2869 = load %nyx_string*, %nyx_string** %t2773
  %t2870 = call i8* @nyx_string_to_cstr(%nyx_string* %t2868)
  %t2871 = bitcast %nyx_string* %t2869 to i8*
  call void @nyx_map_insert_str(i8* %t2867, i8* %t2870, i8* %t2871)
  br label %merge505
merge505:
  br label %merge499
else498:
  br label %merge499
merge499:
  %t2872 = load i64, i64* %t2803
  %t2873 = add i64 %t2872, 1
  store i64 %t2873, i64* %t2803
  br label %while_cond494
while_end496:
  br label %merge493
else492:
  br label %merge493
merge493:
  %t2874 = load i64, i64* %t2626
  %t2875 = add i64 %t2874, 1
  store i64 %t2875, i64* %t2626
  br label %while_cond488
while_end490:
  %t2876 = call { i64, i8* }* @cov_src_modules()
  store { i64, i8* }* %t2876, { i64, i8* }** %t2877
  %t2878 = load { i64, i8* }*, { i64, i8* }** %t2877
  %t2879 = call i64 @nyx_array_length({ i64, i8* }* %t2878)
  %t2880 = icmp eq i64 %t2879, 0
  br i1 %t2880, label %then511, label %else512
then511:
  %t2881 = getelementptr [27 x i8], [27 x i8]* @.str311, i32 0, i32 0
  %t2882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %t2881, i64 26)
  %t2883 = call i8* @nyx_string_to_cstr(%nyx_string* %t2882)
  call void @nyx_print_string(i8* %t2883)
  ret i64 0
else512:
  br label %merge513
merge513:
  %t2884 = load %nyx_string*, %nyx_string** %t2606
  %t2885 = load %nyx_string*, %nyx_string** %t2611
  %t2886 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2887 = load { i64, i8* }*, { i64, i8* }** %t2877
  %t2888 = call %nyx_string* @cov_universe(%nyx_string* %t2884, %nyx_string* %t2885, %nyx_string* %t2886, { i64, i8* }* %t2887)
  store %nyx_string* %t2888, %nyx_string** %t2889
  %t2890 = load %nyx_string*, %nyx_string** %t2889
  %t2891 = call i8* @nyx_string_to_cstr(%nyx_string* %t2890)
  %t2892 = call i1 @nyx_file_exists(i8* %t2891)
  %t2893 = xor i1 %t2892, true
  br i1 %t2893, label %then514, label %else515
then514:
  %t2894 = getelementptr [68 x i8], [68 x i8]* @.str312, i32 0, i32 0
  %t2895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %t2894, i64 67)
  %t2896 = call i8* @nyx_string_to_cstr(%nyx_string* %t2895)
  call void @nyx_print_string(i8* %t2896)
  %t2897 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2898 = getelementptr [14 x i8], [14 x i8]* @.str313, i32 0, i32 0
  %t2899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %t2898, i64 13)
  %t2900 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2897, %nyx_string* %t2899)
  %t2901 = call i8* @nyx_string_to_cstr(%nyx_string* %t2900)
  %t2902 = call i1 @nyx_file_exists(i8* %t2901)
  br i1 %t2902, label %then517, label %else518
then517:
  %t2903 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %t2904 = getelementptr [14 x i8], [14 x i8]* @.str314, i32 0, i32 0
  %t2905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %t2904, i64 13)
  %t2906 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2903, %nyx_string* %t2905)
  %t2907 = call i8* @nyx_string_to_cstr(%nyx_string* %t2906)
  %t2908 = call %nyx_string* @nyx_read_file(i8* %t2907)
  %t2909 = call i8* @nyx_string_to_cstr(%nyx_string* %t2908)
  call void @nyx_print_string(i8* %t2909)
  br label %merge519
else518:
  br label %merge519
merge519:
  ret i64 1
else515:
  br label %merge516
merge516:
  %t2910 = load %nyx_string*, %nyx_string** %t2889
  %t2911 = call i8* @nyx_string_to_cstr(%nyx_string* %t2910)
  %t2912 = call %nyx_string* @nyx_read_file(i8* %t2911)
  %t2913 = getelementptr [2 x i8], [2 x i8]* @.str315, i32 0, i32 0
  %t2914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %t2913, i64 1)
  %t2915 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2912, %nyx_string* %t2914)
  store { i64, i8* }* %t2915, { i64, i8* }** %t2916
  %t2917 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2917, { i64, i8* }** %t2918
  store i64 0, i64* %t2919
  %t2920 = getelementptr [3 x i8], [3 x i8]* @.str316, i32 0, i32 0
  %t2921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %t2920, i64 2)
  store %nyx_string* %t2921, %nyx_string** %t2922
  %t2923 = getelementptr [7 x i8], [7 x i8]* @.str317, i32 0, i32 0
  %t2924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %t2923, i64 6)
  store %nyx_string* %t2924, %nyx_string** %t2925
  %t2926 = getelementptr [6 x i8], [6 x i8]* @.str318, i32 0, i32 0
  %t2927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %t2926, i64 5)
  store %nyx_string* %t2927, %nyx_string** %t2928
  %t2929 = getelementptr [9 x i8], [9 x i8]* @.str319, i32 0, i32 0
  %t2930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %t2929, i64 8)
  store %nyx_string* %t2930, %nyx_string** %t2931
  %t2932 = getelementptr [5 x i8], [5 x i8]* @.str320, i32 0, i32 0
  %t2933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %t2932, i64 4)
  store %nyx_string* %t2933, %nyx_string** %t2934
  %t2935 = getelementptr [5 x i8], [5 x i8]* @.str321, i32 0, i32 0
  %t2936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %t2935, i64 4)
  store %nyx_string* %t2936, %nyx_string** %t2937
  %t2938 = getelementptr [3 x i8], [3 x i8]* @.str322, i32 0, i32 0
  %t2939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %t2938, i64 2)
  store %nyx_string* %t2939, %nyx_string** %t2940
  %t2941 = getelementptr [3 x i8], [3 x i8]* @.str323, i32 0, i32 0
  %t2942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %t2941, i64 2)
  store %nyx_string* %t2942, %nyx_string** %t2943
  %t2944 = getelementptr [10 x i8], [10 x i8]* @.str324, i32 0, i32 0
  %t2945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %t2944, i64 9)
  store %nyx_string* %t2945, %nyx_string** %t2946
  %t2947 = getelementptr [5 x i8], [5 x i8]* @.str325, i32 0, i32 0
  %t2948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %t2947, i64 4)
  store %nyx_string* %t2948, %nyx_string** %t2949
  %t2950 = getelementptr [2 x i8], [2 x i8]* @.str326, i32 0, i32 0
  %t2951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %t2950, i64 1)
  store %nyx_string* %t2951, %nyx_string** %t2952
  br label %while_cond520
while_cond520:
  %t2953 = load i64, i64* %t2919
  %t2954 = load { i64, i8* }*, { i64, i8* }** %t2916
  %t2955 = call i64 @nyx_array_length({ i64, i8* }* %t2954)
  %t2956 = icmp slt i64 %t2953, %t2955
  br i1 %t2956, label %while_body521, label %while_end522
while_body521:
  %t2957 = load { i64, i8* }*, { i64, i8* }** %t2916
  %t2958 = load i64, i64* %t2919
  %t2959 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2957, i64 %t2958, i64 2)
  %t2960 = inttoptr i64 %t2959 to %nyx_string*
  store %nyx_string* %t2960, %nyx_string** %t2961
  %t2962 = load %nyx_string*, %nyx_string** %t2961
  %t2963 = call { i64, i8* }* @cov_fields(%nyx_string* %t2962)
  store { i64, i8* }* %t2963, { i64, i8* }** %t2964
  %t2965 = load { i64, i8* }*, { i64, i8* }** %t2964
  %t2966 = call i64 @nyx_array_length({ i64, i8* }* %t2965)
  %t2967 = icmp sge i64 %t2966, 5
  br i1 %t2967, label %then523, label %else524
then523:
  %t2968 = load { i64, i8* }*, { i64, i8* }** %t2964
  %t2969 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2968, i64 0, i64 2)
  %t2970 = inttoptr i64 %t2969 to %nyx_string*
  store %nyx_string* %t2970, %nyx_string** %t2971
  %t2972 = load { i64, i8* }*, { i64, i8* }** %t2964
  %t2973 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2972, i64 1, i64 2)
  %t2974 = inttoptr i64 %t2973 to %nyx_string*
  store %nyx_string* %t2974, %nyx_string** %t2975
  %t2976 = load { i64, i8* }*, { i64, i8* }** %t2964
  %t2977 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2976, i64 2, i64 2)
  %t2978 = inttoptr i64 %t2977 to %nyx_string*
  store %nyx_string* %t2978, %nyx_string** %t2979
  %t2980 = load { i64, i8* }*, { i64, i8* }** %t2964
  %t2981 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2980, i64 3, i64 2)
  %t2982 = inttoptr i64 %t2981 to %nyx_string*
  store %nyx_string* %t2982, %nyx_string** %t2983
  %t2984 = load { i64, i8* }*, { i64, i8* }** %t2964
  %t2985 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2984, i64 4, i64 2)
  %t2986 = inttoptr i64 %t2985 to %nyx_string*
  store %nyx_string* %t2986, %nyx_string** %t2987
  store i1 true, i1* %t2988
  store i1 true, i1* %t2989
  store i1 true, i1* %t2990
  %t2991 = load %nyx_string*, %nyx_string** %t2987
  %t2992 = load %nyx_string*, %nyx_string** %t2922
  %t2993 = call i1 @nyx_string_equals(%nyx_string* %t2991, %nyx_string* %t2992)
  br i1 %t2993, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %t2994 = load %nyx_string*, %nyx_string** %t2987
  %t2995 = load %nyx_string*, %nyx_string** %t2925
  %t2996 = call i1 @nyx_string_equals(%nyx_string* %t2994, %nyx_string* %t2995)
  store i1 %t2996, i1* %t2990
  br label %sc_or_end527
sc_or_end527:
  %t2997 = load i1, i1* %t2990
  br i1 %t2997, label %sc_or_end529, label %sc_or_rhs528
sc_or_rhs528:
  %t2998 = load %nyx_string*, %nyx_string** %t2987
  %t2999 = load %nyx_string*, %nyx_string** %t2928
  %t3000 = call i1 @nyx_string_equals(%nyx_string* %t2998, %nyx_string* %t2999)
  store i1 %t3000, i1* %t2989
  br label %sc_or_end529
sc_or_end529:
  %t3001 = load i1, i1* %t2989
  br i1 %t3001, label %sc_or_end531, label %sc_or_rhs530
sc_or_rhs530:
  %t3002 = load %nyx_string*, %nyx_string** %t2987
  %t3003 = load %nyx_string*, %nyx_string** %t2931
  %t3004 = call i1 @nyx_string_equals(%nyx_string* %t3002, %nyx_string* %t3003)
  store i1 %t3004, i1* %t2988
  br label %sc_or_end531
sc_or_end531:
  %t3005 = load i1, i1* %t2988
  store i1 %t3005, i1* %t3006
  store i1 false, i1* %t3007
  store i1 false, i1* %t3008
  %t3009 = load i1, i1* %t3006
  br i1 %t3009, label %sc_and_rhs532, label %sc_and_end533
sc_and_rhs532:
  %t3010 = load %nyx_string*, %nyx_string** %t2975
  %t3011 = load %nyx_string*, %nyx_string** %t2934
  %t3012 = call i1 @nyx_string_starts_with(%nyx_string* %t3010, %nyx_string* %t3011)
  store i1 %t3012, i1* %t3008
  br label %sc_and_end533
sc_and_end533:
  %t3013 = load i1, i1* %t3008
  br i1 %t3013, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %t3014 = load %nyx_string*, %nyx_string** %t2983
  %t3015 = load %nyx_string*, %nyx_string** %t2937
  %t3016 = call i1 @nyx_string_equals(%nyx_string* %t3014, %nyx_string* %t3015)
  %t3017 = xor i1 %t3016, true
  store i1 %t3017, i1* %t3007
  br label %sc_and_end535
sc_and_end535:
  %t3018 = load i1, i1* %t3007
  br i1 %t3018, label %then536, label %else537
then536:
  %t3019 = load i8*, i8** %t2686
  %t3020 = load %nyx_string*, %nyx_string** %t2971
  %t3021 = call i8* @nyx_string_to_cstr(%nyx_string* %t3020)
  %t3022 = call i1 @nyx_map_contains_str(i8* %t3019, i8* %t3021)
  store i1 %t3022, i1* %t3023
  %t3024 = load %nyx_string*, %nyx_string** %t2987
  %t3025 = load %nyx_string*, %nyx_string** %t2931
  %t3026 = call i1 @nyx_string_equals(%nyx_string* %t3024, %nyx_string* %t3025)
  br i1 %t3026, label %then539, label %else540
then539:
  %t3027 = load i8*, i8** %t2756
  %t3028 = load %nyx_string*, %nyx_string** %t2971
  %t3029 = call i8* @nyx_string_to_cstr(%nyx_string* %t3028)
  %t3030 = call i1 @nyx_map_contains_str(i8* %t3027, i8* %t3029)
  store i1 %t3030, i1* %t3023
  br label %merge541
else540:
  br label %merge541
merge541:
  %t3031 = load %nyx_string*, %nyx_string** %t2940
  store %nyx_string* %t3031, %nyx_string** %t3032
  %t3033 = load i1, i1* %t3023
  br i1 %t3033, label %then542, label %else543
then542:
  %t3034 = load %nyx_string*, %nyx_string** %t2943
  store %nyx_string* %t3034, %nyx_string** %t3032
  br label %merge544
else543:
  store i1 false, i1* %t3035
  %t3036 = load i8*, i8** %t2752
  %t3037 = load %nyx_string*, %nyx_string** %t2971
  %t3038 = call i8* @nyx_string_to_cstr(%nyx_string* %t3037)
  %t3039 = call i1 @nyx_map_contains_str(i8* %t3036, i8* %t3038)
  %t3040 = xor i1 %t3039, true
  br i1 %t3040, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %t3041 = load i8*, i8** %t2754
  %t3042 = load %nyx_string*, %nyx_string** %t2971
  %t3043 = call i8* @nyx_string_to_cstr(%nyx_string* %t3042)
  %t3044 = call i1 @nyx_map_contains_str(i8* %t3041, i8* %t3043)
  store i1 %t3044, i1* %t3035
  br label %sc_and_end546
sc_and_end546:
  %t3045 = load i1, i1* %t3035
  br i1 %t3045, label %then547, label %else548
then547:
  %t3046 = load %nyx_string*, %nyx_string** %t2946
  store %nyx_string* %t3046, %nyx_string** %t3032
  br label %merge549
else548:
  br label %merge549
merge549:
  br label %merge544
merge544:
  %t3047 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t3048 = load %nyx_string*, %nyx_string** %t2975
  %t3049 = load %nyx_string*, %nyx_string** %t2949
  %t3050 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3048, %nyx_string* %t3049)
  %t3051 = load %nyx_string*, %nyx_string** %t2979
  %t3052 = call i64 @nyx_string_to_int(%nyx_string* %t3051)
  %t3053 = call %nyx_string* @cov_pad(i64 %t3052)
  %t3054 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3050, %nyx_string* %t3053)
  %t3055 = load %nyx_string*, %nyx_string** %t2952
  %t3056 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3054, %nyx_string* %t3055)
  %t3057 = load %nyx_string*, %nyx_string** %t2983
  %t3058 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3056, %nyx_string* %t3057)
  %t3059 = load %nyx_string*, %nyx_string** %t2952
  %t3060 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3058, %nyx_string* %t3059)
  %t3061 = load %nyx_string*, %nyx_string** %t3032
  %t3062 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3060, %nyx_string* %t3061)
  %t3063 = load %nyx_string*, %nyx_string** %t2952
  %t3064 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3062, %nyx_string* %t3063)
  %t3065 = load %nyx_string*, %nyx_string** %t2975
  %t3066 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3064, %nyx_string* %t3065)
  %t3067 = ptrtoint %nyx_string* %t3066 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3047, i64 %t3067, i64 2)
  br label %merge538
else537:
  br label %merge538
merge538:
  br label %merge525
else524:
  br label %merge525
merge525:
  %t3068 = load i64, i64* %t2919
  %t3069 = add i64 %t3068, 1
  store i64 %t3069, i64* %t2919
  br label %while_cond520
while_end522:
  %t3070 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t3071 = call { i64, i8* }* @sort_str({ i64, i8* }* %t3070)
  store { i64, i8* }* %t3071, { i64, i8* }** %t3072
  %t3073 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %t3074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %t3073, i64 0)
  store %nyx_string* %t3074, %nyx_string** %t3075
  store i64 0, i64* %t3076
  store i64 0, i64* %t3077
  store i64 0, i64* %t3078
  %t3079 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %t3080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %t3079, i64 0)
  store %nyx_string* %t3080, %nyx_string** %t3081
  %t3082 = getelementptr [10 x i8], [10 x i8]* @.str329, i32 0, i32 0
  %t3083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %t3082, i64 9)
  store %nyx_string* %t3083, %nyx_string** %t3084
  %t3085 = getelementptr [2 x i8], [2 x i8]* @.str330, i32 0, i32 0
  %t3086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %t3085, i64 1)
  store %nyx_string* %t3086, %nyx_string** %t3087
  %t3088 = getelementptr [3 x i8], [3 x i8]* @.str331, i32 0, i32 0
  %t3089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %t3088, i64 2)
  store %nyx_string* %t3089, %nyx_string** %t3090
  %t3091 = getelementptr [2 x i8], [2 x i8]* @.str332, i32 0, i32 0
  %t3092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %t3091, i64 1)
  store %nyx_string* %t3092, %nyx_string** %t3093
  %t3094 = getelementptr [5 x i8], [5 x i8]* @.str333, i32 0, i32 0
  %t3095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %t3094, i64 4)
  store %nyx_string* %t3095, %nyx_string** %t3096
  %t3097 = getelementptr [2 x i8], [2 x i8]* @.str334, i32 0, i32 0
  %t3098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %t3097, i64 1)
  store %nyx_string* %t3098, %nyx_string** %t3099
  %t3100 = getelementptr [2 x i8], [2 x i8]* @.str335, i32 0, i32 0
  %t3101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %t3100, i64 1)
  store %nyx_string* %t3101, %nyx_string** %t3102
  %t3103 = getelementptr [4 x i8], [4 x i8]* @.str336, i32 0, i32 0
  %t3104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %t3103, i64 3)
  store %nyx_string* %t3104, %nyx_string** %t3105
  %t3106 = getelementptr [2 x i8], [2 x i8]* @.str337, i32 0, i32 0
  %t3107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %t3106, i64 1)
  store %nyx_string* %t3107, %nyx_string** %t3108
  %t3109 = getelementptr [2 x i8], [2 x i8]* @.str338, i32 0, i32 0
  %t3110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %t3109, i64 1)
  store %nyx_string* %t3110, %nyx_string** %t3111
  %t3112 = getelementptr [6 x i8], [6 x i8]* @.str339, i32 0, i32 0
  %t3113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %t3112, i64 5)
  store %nyx_string* %t3113, %nyx_string** %t3114
  %t3115 = getelementptr [3 x i8], [3 x i8]* @.str340, i32 0, i32 0
  %t3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %t3115, i64 2)
  store %nyx_string* %t3116, %nyx_string** %t3117
  %t3118 = getelementptr [3 x i8], [3 x i8]* @.str341, i32 0, i32 0
  %t3119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %t3118, i64 2)
  store %nyx_string* %t3119, %nyx_string** %t3120
  %t3121 = getelementptr [2 x i8], [2 x i8]* @.str342, i32 0, i32 0
  %t3122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %t3121, i64 1)
  store %nyx_string* %t3122, %nyx_string** %t3123
  %t3124 = getelementptr [10 x i8], [10 x i8]* @.str343, i32 0, i32 0
  %t3125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %t3124, i64 9)
  store %nyx_string* %t3125, %nyx_string** %t3126
  %t3127 = getelementptr [29 x i8], [29 x i8]* @.str344, i32 0, i32 0
  %t3128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %t3127, i64 28)
  store %nyx_string* %t3128, %nyx_string** %t3129
  %t3130 = getelementptr [3 x i8], [3 x i8]* @.str345, i32 0, i32 0
  %t3131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %t3130, i64 2)
  store %nyx_string* %t3131, %nyx_string** %t3132
  %t3133 = getelementptr [38 x i8], [38 x i8]* @.str346, i32 0, i32 0
  %t3134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %t3133, i64 37)
  store %nyx_string* %t3134, %nyx_string** %t3135
  %t3136 = getelementptr [4 x i8], [4 x i8]* @.str347, i32 0, i32 0
  %t3137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %t3136, i64 3)
  store %nyx_string* %t3137, %nyx_string** %t3138
  %t3139 = getelementptr [5 x i8], [5 x i8]* @.str348, i32 0, i32 0
  %t3140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %t3139, i64 4)
  store %nyx_string* %t3140, %nyx_string** %t3141
  %t3142 = getelementptr [6 x i8], [6 x i8]* @.str349, i32 0, i32 0
  %t3143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %t3142, i64 5)
  store %nyx_string* %t3143, %nyx_string** %t3144
  %t3145 = getelementptr [16 x i8], [16 x i8]* @.str350, i32 0, i32 0
  %t3146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %t3145, i64 15)
  store %nyx_string* %t3146, %nyx_string** %t3147
  br label %while_cond550
while_cond550:
  %t3148 = load i64, i64* %t3078
  %t3149 = load { i64, i8* }*, { i64, i8* }** %t3072
  %t3150 = call i64 @nyx_array_length({ i64, i8* }* %t3149)
  %t3151 = icmp slt i64 %t3148, %t3150
  br i1 %t3151, label %while_body551, label %while_end552
while_body551:
  %t3152 = load { i64, i8* }*, { i64, i8* }** %t3072
  %t3153 = load i64, i64* %t3078
  %t3154 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3152, i64 %t3153, i64 2)
  %t3155 = inttoptr i64 %t3154 to %nyx_string*
  store %nyx_string* %t3155, %nyx_string** %t3156
  %t3157 = load %nyx_string*, %nyx_string** %t3156
  %t3158 = call { i64, i8* }* @cov_fields(%nyx_string* %t3157)
  store { i64, i8* }* %t3158, { i64, i8* }** %t3159
  %t3160 = load { i64, i8* }*, { i64, i8* }** %t3159
  %t3161 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3160, i64 0, i64 2)
  %t3162 = inttoptr i64 %t3161 to %nyx_string*
  store %nyx_string* %t3162, %nyx_string** %t3163
  %t3164 = load { i64, i8* }*, { i64, i8* }** %t3159
  %t3165 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3164, i64 4, i64 2)
  %t3166 = inttoptr i64 %t3165 to %nyx_string*
  store %nyx_string* %t3166, %nyx_string** %t3167
  store i64 0, i64* %t3168
  store i64 0, i64* %t3169
  store i64 0, i64* %t3170
  %t3171 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3171, { i64, i8* }** %t3172
  %t3173 = load %nyx_string*, %nyx_string** %t3081
  store %nyx_string* %t3173, %nyx_string** %t3174
  %t3175 = load %nyx_string*, %nyx_string** %t3081
  store %nyx_string* %t3175, %nyx_string** %t3176
  %t3177 = load i64, i64* %t3078
  store i64 %t3177, i64* %t3178
  store i1 1, i1* %t3179
  br label %while_cond553
while_cond553:
  store i1 false, i1* %t3180
  %t3181 = load i64, i64* %t3178
  %t3182 = load { i64, i8* }*, { i64, i8* }** %t3072
  %t3183 = call i64 @nyx_array_length({ i64, i8* }* %t3182)
  %t3184 = icmp slt i64 %t3181, %t3183
  br i1 %t3184, label %sc_and_rhs556, label %sc_and_end557
sc_and_rhs556:
  %t3185 = load i1, i1* %t3179
  store i1 %t3185, i1* %t3180
  br label %sc_and_end557
sc_and_end557:
  %t3186 = load i1, i1* %t3180
  br i1 %t3186, label %while_body554, label %while_end555
while_body554:
  %t3187 = load { i64, i8* }*, { i64, i8* }** %t3072
  %t3188 = load i64, i64* %t3178
  %t3189 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3187, i64 %t3188, i64 2)
  %t3190 = inttoptr i64 %t3189 to %nyx_string*
  store %nyx_string* %t3190, %nyx_string** %t3191
  %t3192 = load %nyx_string*, %nyx_string** %t3191
  %t3193 = call { i64, i8* }* @cov_fields(%nyx_string* %t3192)
  store { i64, i8* }* %t3193, { i64, i8* }** %t3194
  %t3195 = load { i64, i8* }*, { i64, i8* }** %t3194
  %t3196 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3195, i64 0, i64 2)
  %t3197 = inttoptr i64 %t3196 to %nyx_string*
  store %nyx_string* %t3197, %nyx_string** %t3198
  %t3199 = load %nyx_string*, %nyx_string** %t3198
  %t3200 = load %nyx_string*, %nyx_string** %t3163
  %t3201 = call i1 @nyx_string_equals(%nyx_string* %t3199, %nyx_string* %t3200)
  %t3202 = xor i1 %t3201, true
  br i1 %t3202, label %then558, label %else559
then558:
  store i1 0, i1* %t3179
  br label %merge560
else559:
  %t3203 = load { i64, i8* }*, { i64, i8* }** %t3194
  %t3204 = call i64 @nyx_array_get({ i64, i8* }* %t3203, i64 1)
  %t3205 = inttoptr i64 %t3204 to %nyx_string*
  %t3206 = call i64 @nyx_string_to_int(%nyx_string* %t3205)
  store i64 %t3206, i64* %t3207
  %t3208 = load { i64, i8* }*, { i64, i8* }** %t3194
  %t3209 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3208, i64 2, i64 2)
  %t3210 = inttoptr i64 %t3209 to %nyx_string*
  store %nyx_string* %t3210, %nyx_string** %t3211
  %t3212 = load { i64, i8* }*, { i64, i8* }** %t3194
  %t3213 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3212, i64 3, i64 2)
  %t3214 = inttoptr i64 %t3213 to %nyx_string*
  store %nyx_string* %t3214, %nyx_string** %t3215
  %t3216 = load %nyx_string*, %nyx_string** %t3215
  %t3217 = load %nyx_string*, %nyx_string** %t3084
  %t3218 = call i1 @nyx_string_equals(%nyx_string* %t3216, %nyx_string* %t3217)
  br i1 %t3218, label %then561, label %else562
then561:
  %t3219 = load i64, i64* %t3170
  %t3220 = add i64 %t3219, 1
  store i64 %t3220, i64* %t3170
  br label %merge563
else562:
  %t3221 = load i64, i64* %t3169
  %t3222 = add i64 %t3221, 1
  store i64 %t3222, i64* %t3169
  %t3223 = load %nyx_string*, %nyx_string** %t3087
  store %nyx_string* %t3223, %nyx_string** %t3224
  %t3225 = load %nyx_string*, %nyx_string** %t3215
  %t3226 = load %nyx_string*, %nyx_string** %t3090
  %t3227 = call i1 @nyx_string_equals(%nyx_string* %t3225, %nyx_string* %t3226)
  br i1 %t3227, label %then564, label %else565
then564:
  %t3228 = load i64, i64* %t3168
  %t3229 = add i64 %t3228, 1
  store i64 %t3229, i64* %t3168
  %t3230 = load %nyx_string*, %nyx_string** %t3093
  store %nyx_string* %t3230, %nyx_string** %t3224
  br label %merge566
else565:
  %t3231 = load { i64, i8* }*, { i64, i8* }** %t3172
  %t3232 = load %nyx_string*, %nyx_string** %t3096
  %t3233 = load %nyx_string*, %nyx_string** %t3163
  %t3234 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3232, %nyx_string* %t3233)
  %t3235 = load %nyx_string*, %nyx_string** %t3099
  %t3236 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3234, %nyx_string* %t3235)
  %t3237 = load i64, i64* %t3207
  %t3238 = call %nyx_string* @nyx_string_from_int(i64 %t3237)
  %t3239 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3236, %nyx_string* %t3238)
  %t3240 = load %nyx_string*, %nyx_string** %t3102
  %t3241 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3239, %nyx_string* %t3240)
  %t3242 = load %nyx_string*, %nyx_string** %t3211
  %t3243 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3241, %nyx_string* %t3242)
  %t3244 = ptrtoint %nyx_string* %t3243 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3231, i64 %t3244, i64 2)
  br label %merge566
merge566:
  %t3245 = load %nyx_string*, %nyx_string** %t3174
  %t3246 = load %nyx_string*, %nyx_string** %t3105
  %t3247 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3245, %nyx_string* %t3246)
  %t3248 = load i64, i64* %t3207
  %t3249 = call %nyx_string* @nyx_string_from_int(i64 %t3248)
  %t3250 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3247, %nyx_string* %t3249)
  %t3251 = load %nyx_string*, %nyx_string** %t3108
  %t3252 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3250, %nyx_string* %t3251)
  %t3253 = load %nyx_string*, %nyx_string** %t3211
  %t3254 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3252, %nyx_string* %t3253)
  %t3255 = load %nyx_string*, %nyx_string** %t3111
  %t3256 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3254, %nyx_string* %t3255)
  store %nyx_string* %t3256, %nyx_string** %t3174
  %t3257 = load %nyx_string*, %nyx_string** %t3176
  %t3258 = load %nyx_string*, %nyx_string** %t3114
  %t3259 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3257, %nyx_string* %t3258)
  %t3260 = load %nyx_string*, %nyx_string** %t3224
  %t3261 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3259, %nyx_string* %t3260)
  %t3262 = load %nyx_string*, %nyx_string** %t3108
  %t3263 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3261, %nyx_string* %t3262)
  %t3264 = load %nyx_string*, %nyx_string** %t3211
  %t3265 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3263, %nyx_string* %t3264)
  %t3266 = load %nyx_string*, %nyx_string** %t3111
  %t3267 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3265, %nyx_string* %t3266)
  store %nyx_string* %t3267, %nyx_string** %t3176
  br label %merge563
merge563:
  %t3268 = load i64, i64* %t3178
  %t3269 = add i64 %t3268, 1
  store i64 %t3269, i64* %t3178
  br label %merge560
merge560:
  br label %while_cond553
while_end555:
  %t3270 = load %nyx_string*, %nyx_string** %t3117
  %t3271 = load %nyx_string*, %nyx_string** %t3163
  %t3272 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3270, %nyx_string* %t3271)
  %t3273 = load %nyx_string*, %nyx_string** %t3120
  %t3274 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3272, %nyx_string* %t3273)
  %t3275 = load i64, i64* %t3168
  %t3276 = call %nyx_string* @nyx_string_from_int(i64 %t3275)
  %t3277 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3274, %nyx_string* %t3276)
  %t3278 = load %nyx_string*, %nyx_string** %t3123
  %t3279 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3277, %nyx_string* %t3278)
  %t3280 = load i64, i64* %t3169
  %t3281 = call %nyx_string* @nyx_string_from_int(i64 %t3280)
  %t3282 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3279, %nyx_string* %t3281)
  %t3283 = load %nyx_string*, %nyx_string** %t3126
  %t3284 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3282, %nyx_string* %t3283)
  store %nyx_string* %t3284, %nyx_string** %t3285
  %t3286 = load i8*, i8** %t2758
  %t3287 = load %nyx_string*, %nyx_string** %t3167
  %t3288 = call i8* @nyx_string_to_cstr(%nyx_string* %t3287)
  %t3289 = call i1 @nyx_map_contains_str(i8* %t3286, i8* %t3288)
  %t3290 = xor i1 %t3289, true
  br i1 %t3290, label %then567, label %else568
then567:
  %t3291 = load %nyx_string*, %nyx_string** %t3285
  %t3292 = load %nyx_string*, %nyx_string** %t3129
  %t3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3291, %nyx_string* %t3292)
  store %nyx_string* %t3293, %nyx_string** %t3285
  br label %merge569
else568:
  br label %merge569
merge569:
  %t3294 = load i64, i64* %t3170
  %t3295 = icmp sgt i64 %t3294, 0
  br i1 %t3295, label %then570, label %else571
then570:
  %t3296 = load %nyx_string*, %nyx_string** %t3285
  %t3297 = load %nyx_string*, %nyx_string** %t3132
  %t3298 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3296, %nyx_string* %t3297)
  %t3299 = load i64, i64* %t3170
  %t3300 = call %nyx_string* @nyx_string_from_int(i64 %t3299)
  %t3301 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3298, %nyx_string* %t3300)
  %t3302 = load %nyx_string*, %nyx_string** %t3135
  %t3303 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3301, %nyx_string* %t3302)
  store %nyx_string* %t3303, %nyx_string** %t3285
  br label %merge572
else571:
  br label %merge572
merge572:
  %t3304 = load %nyx_string*, %nyx_string** %t3285
  %t3305 = call i8* @nyx_string_to_cstr(%nyx_string* %t3304)
  call void @nyx_print_string(i8* %t3305)
  store i64 0, i64* %t3306
  br label %while_cond573
while_cond573:
  %t3307 = load i64, i64* %t3306
  %t3308 = load { i64, i8* }*, { i64, i8* }** %t3172
  %t3309 = call i64 @nyx_array_length({ i64, i8* }* %t3308)
  %t3310 = icmp slt i64 %t3307, %t3309
  br i1 %t3310, label %while_body574, label %while_end575
while_body574:
  %t3311 = load { i64, i8* }*, { i64, i8* }** %t3172
  %t3312 = load i64, i64* %t3306
  %t3313 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3311, i64 %t3312, i64 2)
  %t3314 = inttoptr i64 %t3313 to %nyx_string*
  store %nyx_string* %t3314, %nyx_string** %t3315
  %t3316 = load %nyx_string*, %nyx_string** %t3315
  %t3317 = call i8* @nyx_string_to_cstr(%nyx_string* %t3316)
  call void @nyx_print_string(i8* %t3317)
  %t3318 = load i64, i64* %t3306
  %t3319 = add i64 %t3318, 1
  store i64 %t3319, i64* %t3306
  br label %while_cond573
while_end575:
  %t3320 = load i64, i64* %t3076
  %t3321 = load i64, i64* %t3168
  %t3322 = add i64 %t3320, %t3321
  store i64 %t3322, i64* %t3076
  %t3323 = load i64, i64* %t3077
  %t3324 = load i64, i64* %t3169
  %t3325 = add i64 %t3323, %t3324
  store i64 %t3325, i64* %t3077
  %t3326 = load %nyx_string*, %nyx_string** %t3075
  %t3327 = load %nyx_string*, %nyx_string** %t3138
  %t3328 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3326, %nyx_string* %t3327)
  %t3329 = load %nyx_string*, %nyx_string** %t3163
  %t3330 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3328, %nyx_string* %t3329)
  %t3331 = load %nyx_string*, %nyx_string** %t3111
  %t3332 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3330, %nyx_string* %t3331)
  %t3333 = load %nyx_string*, %nyx_string** %t3174
  %t3334 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3332, %nyx_string* %t3333)
  %t3335 = load %nyx_string*, %nyx_string** %t3176
  %t3336 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3334, %nyx_string* %t3335)
  %t3337 = load %nyx_string*, %nyx_string** %t3141
  %t3338 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3336, %nyx_string* %t3337)
  %t3339 = load i64, i64* %t3169
  %t3340 = call %nyx_string* @nyx_string_from_int(i64 %t3339)
  %t3341 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3338, %nyx_string* %t3340)
  %t3342 = load %nyx_string*, %nyx_string** %t3144
  %t3343 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3341, %nyx_string* %t3342)
  %t3344 = load i64, i64* %t3168
  %t3345 = call %nyx_string* @nyx_string_from_int(i64 %t3344)
  %t3346 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3343, %nyx_string* %t3345)
  %t3347 = load %nyx_string*, %nyx_string** %t3147
  %t3348 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3346, %nyx_string* %t3347)
  store %nyx_string* %t3348, %nyx_string** %t3075
  %t3349 = load i64, i64* %t3178
  store i64 %t3349, i64* %t3078
  br label %while_cond550
while_end552:
  %t3350 = load { i64, i8* }*, { i64, i8* }** %t2625
  %t3351 = call i64 @nyx_array_length({ i64, i8* }* %t3350)
  %t3352 = icmp sgt i64 %t3351, 0
  br i1 %t3352, label %then576, label %else577
then576:
  %t3353 = getelementptr [70 x i8], [70 x i8]* @.str351, i32 0, i32 0
  %t3354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %t3353, i64 69)
  %t3355 = call i8* @nyx_string_to_cstr(%nyx_string* %t3354)
  call void @nyx_print_string(i8* %t3355)
  store i64 0, i64* %t3356
  %t3357 = getelementptr [5 x i8], [5 x i8]* @.str352, i32 0, i32 0
  %t3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %t3357, i64 4)
  store %nyx_string* %t3358, %nyx_string** %t3359
  br label %while_cond579
while_cond579:
  %t3360 = load i64, i64* %t3356
  %t3361 = load { i64, i8* }*, { i64, i8* }** %t2625
  %t3362 = call i64 @nyx_array_length({ i64, i8* }* %t3361)
  %t3363 = icmp slt i64 %t3360, %t3362
  br i1 %t3363, label %while_body580, label %while_end581
while_body580:
  %t3364 = load { i64, i8* }*, { i64, i8* }** %t2625
  %t3365 = load i64, i64* %t3356
  %t3366 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3364, i64 %t3365, i64 2)
  %t3367 = inttoptr i64 %t3366 to %nyx_string*
  store %nyx_string* %t3367, %nyx_string** %t3368
  %t3369 = load %nyx_string*, %nyx_string** %t3359
  %t3370 = load %nyx_string*, %nyx_string** %t3368
  %t3371 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3369, %nyx_string* %t3370)
  %t3372 = call i8* @nyx_string_to_cstr(%nyx_string* %t3371)
  call void @nyx_print_string(i8* %t3372)
  %t3373 = load i64, i64* %t3356
  %t3374 = add i64 %t3373, 1
  store i64 %t3374, i64* %t3356
  br label %while_cond579
while_end581:
  br label %merge578
else577:
  br label %merge578
merge578:
  %t3375 = getelementptr [10 x i8], [10 x i8]* @.str353, i32 0, i32 0
  %t3376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %t3375, i64 9)
  %t3377 = load i64, i64* %t3076
  %t3378 = call %nyx_string* @nyx_string_from_int(i64 %t3377)
  %t3379 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3376, %nyx_string* %t3378)
  %t3380 = getelementptr [2 x i8], [2 x i8]* @.str354, i32 0, i32 0
  %t3381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %t3380, i64 1)
  %t3382 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3379, %nyx_string* %t3381)
  %t3383 = load i64, i64* %t3077
  %t3384 = call %nyx_string* @nyx_string_from_int(i64 %t3383)
  %t3385 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3382, %nyx_string* %t3384)
  %t3386 = getelementptr [20 x i8], [20 x i8]* @.str355, i32 0, i32 0
  %t3387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %t3386, i64 19)
  %t3388 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3385, %nyx_string* %t3387)
  %t3389 = call i8* @nyx_string_to_cstr(%nyx_string* %t3388)
  call void @nyx_print_string(i8* %t3389)
  %t3390 = load i1, i1* %want_lcov.ptr
  br i1 %t3390, label %then582, label %else583
then582:
  %t3391 = getelementptr [11 x i8], [11 x i8]* @.str356, i32 0, i32 0
  %t3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %t3391, i64 10)
  %t3393 = load %nyx_string*, %nyx_string** %t2611
  %t3394 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3392, %nyx_string* %t3393)
  %t3395 = getelementptr [9 x i8], [9 x i8]* @.str357, i32 0, i32 0
  %t3396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %t3395, i64 8)
  %t3397 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3394, %nyx_string* %t3396)
  %t3398 = call i8* @nyx_string_to_cstr(%nyx_string* %t3397)
  %t3399 = call i64 @nyx_exec_code(i8* %t3398)
  %t3400 = load %nyx_string*, %nyx_string** %t2611
  %t3401 = getelementptr [22 x i8], [22 x i8]* @.str358, i32 0, i32 0
  %t3402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %t3401, i64 21)
  %t3403 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3400, %nyx_string* %t3402)
  %t3404 = load %nyx_string*, %nyx_string** %t3075
  %t3405 = ptrtoint %nyx_string* %t3404 to i64
  %t3406 = call i8* @nyx_string_to_cstr(%nyx_string* %t3403)
  %t3407 = inttoptr i64 %t3405 to %nyx_string*
  %t3408 = call i1 @nyx_write_file_safe(i8* %t3406, %nyx_string* %t3407)
  %t3409 = getelementptr [29 x i8], [29 x i8]* @.str359, i32 0, i32 0
  %t3410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %t3409, i64 28)
  %t3411 = call i8* @nyx_string_to_cstr(%nyx_string* %t3410)
  call void @nyx_print_string(i8* %t3411)
  br label %merge584
else583:
  br label %merge584
merge584:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %t3412 = getelementptr [115 x i8], [115 x i8]* @.str360, i32 0, i32 0
  %t3413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %t3412, i64 114)
  %t3414 = call i8* @nyx_string_to_cstr(%nyx_string* %t3413)
  call void @nyx_print_string(i8* %t3414)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %t3415 = getelementptr [5 x i8], [5 x i8]* @.str361, i32 0, i32 0
  %t3416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %t3415, i64 4)
  %t3417 = load %nyx_string*, %nyx_string** %nh.ptr
  %t3418 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3416, %nyx_string* %t3417)
  %t3419 = getelementptr [66 x i8], [66 x i8]* @.str362, i32 0, i32 0
  %t3420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %t3419, i64 65)
  %t3421 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3418, %nyx_string* %t3420)
  %t3422 = call i8* @nyx_string_to_cstr(%nyx_string* %t3421)
  %t3423 = call %nyx_string* @nyx_exec(i8* %t3422)
  %t3424 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3423)
  ret %nyx_string* %t3424
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %t3425 = getelementptr [5 x i8], [5 x i8]* @.str363, i32 0, i32 0
  %t3426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %t3425, i64 4)
  %t3427 = load %nyx_string*, %nyx_string** %nh.ptr
  %t3428 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3426, %nyx_string* %t3427)
  %t3429 = getelementptr [74 x i8], [74 x i8]* @.str364, i32 0, i32 0
  %t3430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %t3429, i64 73)
  %t3431 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3428, %nyx_string* %t3430)
  %t3432 = call i8* @nyx_string_to_cstr(%nyx_string* %t3431)
  %t3433 = call %nyx_string* @nyx_exec(i8* %t3432)
  %t3434 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3433)
  ret %nyx_string* %t3434
}

define i64 @main(
i32 %argc, i8** %argv) {
  %t3440 = alloca i64
  %t3445 = alloca %nyx_string*
  %t3453 = alloca %nyx_string*
  %t3456 = alloca %nyx_string*
  %t3459 = alloca %nyx_string*
  %t3474 = alloca %TestConfig
  %t3476 = alloca { i64, i8* }*
  %t3479 = alloca %nyx_string*
  %t3480 = alloca i64
  %t3483 = alloca %nyx_string*
  %t3486 = alloca %nyx_string*
  %t3489 = alloca %nyx_string*
  %t3492 = alloca %nyx_string*
  %t3495 = alloca %nyx_string*
  %t3498 = alloca %nyx_string*
  %t3501 = alloca %nyx_string*
  %t3504 = alloca %nyx_string*
  %t3507 = alloca %nyx_string*
  %t3510 = alloca %nyx_string*
  %t3513 = alloca %nyx_string*
  %t3516 = alloca %nyx_string*
  %t3519 = alloca %nyx_string*
  %t3522 = alloca %nyx_string*
  %t3525 = alloca %nyx_string*
  %t3528 = alloca %nyx_string*
  %t3537 = alloca %nyx_string*
  %t3538 = alloca i1
  %t3554 = alloca %nyx_string*
  %t3557 = alloca i1
  %t3566 = alloca i1
  %t3582 = alloca %nyx_string*
  %t3599 = alloca i1
  %t3614 = alloca i1
  %t3623 = alloca i1
  %t3639 = alloca %nyx_string*
  %t3645 = alloca i1
  %t3691 = alloca %nyx_string*
  %t3694 = alloca %nyx_string*
  %t3703 = alloca %nyx_string*
  %t3706 = alloca %nyx_string*
  %t3750 = alloca { i64, i8* }*
  %t3832 = alloca i1
  %t3847 = alloca %nyx_string*
  %t3852 = alloca %nyx_string*
  %t3863 = alloca %nyx_string*
  %t3880 = alloca %nyx_string*
  %t3900 = alloca i64
  %t3904 = alloca %nyx_string*
  %t3925 = alloca { i64, i8* }*
  %t3926 = alloca i64
  %t3927 = alloca i64
  %t3928 = alloca i64
  %t3931 = alloca %nyx_string*
  %t3934 = alloca %nyx_string*
  %t3937 = alloca %nyx_string*
  %t3940 = alloca %nyx_string*
  %t3949 = alloca %nyx_string*
  %t3995 = alloca { i64, i8* }*
  %t3997 = alloca { i64, i8* }*
  %t3999 = alloca { i64, i8* }*
  %t4000 = alloca i64
  %t4001 = alloca i64
  %t4002 = alloca i64
  %t4011 = alloca %nyx_string*
  %t4022 = alloca %TestResult
  %t4077 = alloca %nyx_string*
  %t4080 = alloca %nyx_string*
  %t4081 = alloca i1
  %t4143 = alloca i64
  %t4144 = alloca i64
  %t4155 = alloca %TestResult
  %t4163 = alloca i1
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %t3435 = getelementptr [24 x i8], [24 x i8]* @.str365, i32 0, i32 0
  %t3436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %t3435, i64 23)
  %t3437 = call i8* @nyx_string_to_cstr(%nyx_string* %t3436)
  call void @nyx_print_string(i8* %t3437)
  %t3438 = call %nyx_string* @tmp_base()
  %t3439 = call i64 @barrer_huerfanos(%nyx_string* %t3438)
  store i64 %t3439, i64* %t3440
  %t3441 = getelementptr [9 x i8], [9 x i8]* @.str366, i32 0, i32 0
  %t3442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %t3441, i64 8)
  %t3443 = call i8* @nyx_string_to_cstr(%nyx_string* %t3442)
  %t3444 = call %nyx_string* @nyx_getenv(i8* %t3443)
  store %nyx_string* %t3444, %nyx_string** %t3445
  %t3446 = load %nyx_string*, %nyx_string** %t3445
  %t3447 = getelementptr [9 x i8], [9 x i8]* @.str367, i32 0, i32 0
  %t3448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %t3447, i64 8)
  %t3449 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3446, %nyx_string* %t3448)
  %t3450 = call i8* @nyx_string_to_cstr(%nyx_string* %t3449)
  %t3451 = call %nyx_string* @nyx_read_file(i8* %t3450)
  %t3452 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3451)
  store %nyx_string* %t3452, %nyx_string** %t3453
  %t3454 = load %nyx_string*, %nyx_string** %t3445
  %t3455 = call %nyx_string* @huella_compilador(%nyx_string* %t3454)
  store %nyx_string* %t3455, %nyx_string** %t3456
  %t3457 = load %nyx_string*, %nyx_string** %t3445
  %t3458 = call %nyx_string* @huella_resto(%nyx_string* %t3457)
  store %nyx_string* %t3458, %nyx_string** %t3459
  %t3460 = getelementptr [18 x i8], [18 x i8]* @.str368, i32 0, i32 0
  %t3461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %t3460, i64 17)
  %t3462 = load %nyx_string*, %nyx_string** %t3453
  %t3463 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3461, %nyx_string* %t3462)
  %t3464 = getelementptr [17 x i8], [17 x i8]* @.str369, i32 0, i32 0
  %t3465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %t3464, i64 16)
  %t3466 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3463, %nyx_string* %t3465)
  %t3467 = load %nyx_string*, %nyx_string** %t3456
  %t3468 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3466, %nyx_string* %t3467)
  %t3469 = getelementptr [2 x i8], [2 x i8]* @.str370, i32 0, i32 0
  %t3470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %t3469, i64 1)
  %t3471 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3468, %nyx_string* %t3470)
  %t3472 = call i8* @nyx_string_to_cstr(%nyx_string* %t3471)
  call void @nyx_print_string(i8* %t3472)
  %t3473 = call %TestConfig @load_test_config()
  store %TestConfig %t3473, %TestConfig* %t3474
  %t3475 = call { i64, i8* }* @nyx_get_args()
  store { i64, i8* }* %t3475, { i64, i8* }** %t3476
  %t3477 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %t3478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %t3477, i64 0)
  store %nyx_string* %t3478, %nyx_string** %t3479
  store i64 1, i64* %t3480
  %t3481 = getelementptr [9 x i8], [9 x i8]* @.str372, i32 0, i32 0
  %t3482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %t3481, i64 8)
  store %nyx_string* %t3482, %nyx_string** %t3483
  %t3484 = getelementptr [10 x i8], [10 x i8]* @.str373, i32 0, i32 0
  %t3485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %t3484, i64 9)
  store %nyx_string* %t3485, %nyx_string** %t3486
  %t3487 = getelementptr [3 x i8], [3 x i8]* @.str374, i32 0, i32 0
  %t3488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %t3487, i64 2)
  store %nyx_string* %t3488, %nyx_string** %t3489
  %t3490 = getelementptr [10 x i8], [10 x i8]* @.str375, i32 0, i32 0
  %t3491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %t3490, i64 9)
  store %nyx_string* %t3491, %nyx_string** %t3492
  %t3493 = getelementptr [10 x i8], [10 x i8]* @.str376, i32 0, i32 0
  %t3494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %t3493, i64 9)
  store %nyx_string* %t3494, %nyx_string** %t3495
  %t3496 = getelementptr [11 x i8], [11 x i8]* @.str377, i32 0, i32 0
  %t3497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %t3496, i64 10)
  store %nyx_string* %t3497, %nyx_string** %t3498
  %t3499 = getelementptr [16 x i8], [16 x i8]* @.str378, i32 0, i32 0
  %t3500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %t3499, i64 15)
  store %nyx_string* %t3500, %nyx_string** %t3501
  %t3502 = getelementptr [8 x i8], [8 x i8]* @.str379, i32 0, i32 0
  %t3503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %t3502, i64 7)
  store %nyx_string* %t3503, %nyx_string** %t3504
  %t3505 = getelementptr [12 x i8], [12 x i8]* @.str380, i32 0, i32 0
  %t3506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %t3505, i64 11)
  store %nyx_string* %t3506, %nyx_string** %t3507
  %t3508 = getelementptr [24 x i8], [24 x i8]* @.str381, i32 0, i32 0
  %t3509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %t3508, i64 23)
  store %nyx_string* %t3509, %nyx_string** %t3510
  %t3511 = getelementptr [106 x i8], [106 x i8]* @.str382, i32 0, i32 0
  %t3512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %t3511, i64 105)
  store %nyx_string* %t3512, %nyx_string** %t3513
  %t3514 = getelementptr [9 x i8], [9 x i8]* @.str383, i32 0, i32 0
  %t3515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %t3514, i64 8)
  store %nyx_string* %t3515, %nyx_string** %t3516
  %t3517 = getelementptr [10 x i8], [10 x i8]* @.str384, i32 0, i32 0
  %t3518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %t3517, i64 9)
  store %nyx_string* %t3518, %nyx_string** %t3519
  %t3520 = getelementptr [2 x i8], [2 x i8]* @.str385, i32 0, i32 0
  %t3521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %t3520, i64 1)
  store %nyx_string* %t3521, %nyx_string** %t3522
  %t3523 = getelementptr [4 x i8], [4 x i8]* @.str386, i32 0, i32 0
  %t3524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %t3523, i64 3)
  store %nyx_string* %t3524, %nyx_string** %t3525
  %t3526 = getelementptr [2 x i8], [2 x i8]* @.str387, i32 0, i32 0
  %t3527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %t3526, i64 1)
  store %nyx_string* %t3527, %nyx_string** %t3528
  br label %while_cond585
while_cond585:
  %t3529 = load i64, i64* %t3480
  %t3530 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3531 = call i64 @nyx_array_length({ i64, i8* }* %t3530)
  %t3532 = icmp slt i64 %t3529, %t3531
  br i1 %t3532, label %while_body586, label %while_end587
while_body586:
  %t3533 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3534 = load i64, i64* %t3480
  %t3535 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3533, i64 %t3534, i64 2)
  %t3536 = inttoptr i64 %t3535 to %nyx_string*
  store %nyx_string* %t3536, %nyx_string** %t3537
  store i1 false, i1* %t3538
  %t3539 = load %nyx_string*, %nyx_string** %t3537
  %t3540 = load %nyx_string*, %nyx_string** %t3483
  %t3541 = call i1 @nyx_string_equals(%nyx_string* %t3539, %nyx_string* %t3540)
  br i1 %t3541, label %sc_and_rhs588, label %sc_and_end589
sc_and_rhs588:
  %t3542 = load i64, i64* %t3480
  %t3543 = add i64 %t3542, 1
  %t3544 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3545 = call i64 @nyx_array_length({ i64, i8* }* %t3544)
  %t3546 = icmp slt i64 %t3543, %t3545
  store i1 %t3546, i1* %t3538
  br label %sc_and_end589
sc_and_end589:
  %t3547 = load i1, i1* %t3538
  br i1 %t3547, label %then590, label %else591
then590:
  %t3548 = load i64, i64* %t3480
  %t3549 = add i64 %t3548, 1
  store i64 %t3549, i64* %t3480
  %t3550 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3551 = load i64, i64* %t3480
  %t3552 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3550, i64 %t3551, i64 2)
  %t3553 = inttoptr i64 %t3552 to %nyx_string*
  store %nyx_string* %t3553, %nyx_string** %t3554
  %t3555 = load %nyx_string*, %nyx_string** %t3554
  %t3556 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 2
  store %nyx_string* %t3555, %nyx_string** %t3556
  br label %merge592
else591:
  store i1 true, i1* %t3557
  %t3558 = load %nyx_string*, %nyx_string** %t3537
  %t3559 = load %nyx_string*, %nyx_string** %t3486
  %t3560 = call i1 @nyx_string_equals(%nyx_string* %t3558, %nyx_string* %t3559)
  br i1 %t3560, label %sc_or_end594, label %sc_or_rhs593
sc_or_rhs593:
  %t3561 = load %nyx_string*, %nyx_string** %t3537
  %t3562 = load %nyx_string*, %nyx_string** %t3489
  %t3563 = call i1 @nyx_string_equals(%nyx_string* %t3561, %nyx_string* %t3562)
  store i1 %t3563, i1* %t3557
  br label %sc_or_end594
sc_or_end594:
  %t3564 = load i1, i1* %t3557
  br i1 %t3564, label %then595, label %else596
then595:
  %t3565 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 3
  store i1 1, i1* %t3565
  br label %merge597
else596:
  store i1 false, i1* %t3566
  %t3567 = load %nyx_string*, %nyx_string** %t3537
  %t3568 = load %nyx_string*, %nyx_string** %t3492
  %t3569 = call i1 @nyx_string_equals(%nyx_string* %t3567, %nyx_string* %t3568)
  br i1 %t3569, label %sc_and_rhs598, label %sc_and_end599
sc_and_rhs598:
  %t3570 = load i64, i64* %t3480
  %t3571 = add i64 %t3570, 1
  %t3572 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3573 = call i64 @nyx_array_length({ i64, i8* }* %t3572)
  %t3574 = icmp slt i64 %t3571, %t3573
  store i1 %t3574, i1* %t3566
  br label %sc_and_end599
sc_and_end599:
  %t3575 = load i1, i1* %t3566
  br i1 %t3575, label %then600, label %else601
then600:
  %t3576 = load i64, i64* %t3480
  %t3577 = add i64 %t3576, 1
  store i64 %t3577, i64* %t3480
  %t3578 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3579 = load i64, i64* %t3480
  %t3580 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3578, i64 %t3579, i64 2)
  %t3581 = inttoptr i64 %t3580 to %nyx_string*
  store %nyx_string* %t3581, %nyx_string** %t3582
  %t3583 = load %nyx_string*, %nyx_string** %t3582
  %t3584 = call i64 @nyx_string_to_int(%nyx_string* %t3583)
  %t3585 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 1
  store i64 %t3584, i64* %t3585
  br label %merge602
else601:
  %t3586 = load %nyx_string*, %nyx_string** %t3537
  %t3587 = load %nyx_string*, %nyx_string** %t3495
  %t3588 = call i1 @nyx_string_equals(%nyx_string* %t3586, %nyx_string* %t3587)
  br i1 %t3588, label %then603, label %else604
then603:
  %t3589 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 7
  store i1 1, i1* %t3589
  br label %merge605
else604:
  %t3590 = load %nyx_string*, %nyx_string** %t3537
  %t3591 = load %nyx_string*, %nyx_string** %t3498
  %t3592 = call i1 @nyx_string_equals(%nyx_string* %t3590, %nyx_string* %t3591)
  br i1 %t3592, label %then606, label %else607
then606:
  %t3593 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 5
  store i1 1, i1* %t3593
  br label %merge608
else607:
  %t3594 = load %nyx_string*, %nyx_string** %t3537
  %t3595 = load %nyx_string*, %nyx_string** %t3501
  %t3596 = call i1 @nyx_string_equals(%nyx_string* %t3594, %nyx_string* %t3595)
  br i1 %t3596, label %then609, label %else610
then609:
  %t3597 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 5
  store i1 1, i1* %t3597
  %t3598 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 6
  store i1 1, i1* %t3598
  br label %merge611
else610:
  store i1 true, i1* %t3599
  %t3600 = load %nyx_string*, %nyx_string** %t3537
  %t3601 = load %nyx_string*, %nyx_string** %t3504
  %t3602 = call i1 @nyx_string_equals(%nyx_string* %t3600, %nyx_string* %t3601)
  br i1 %t3602, label %sc_or_end613, label %sc_or_rhs612
sc_or_rhs612:
  %t3603 = load %nyx_string*, %nyx_string** %t3537
  %t3604 = load %nyx_string*, %nyx_string** %t3507
  %t3605 = call i1 @nyx_string_starts_with(%nyx_string* %t3603, %nyx_string* %t3604)
  store i1 %t3605, i1* %t3599
  br label %sc_or_end613
sc_or_end613:
  %t3606 = load i1, i1* %t3599
  br i1 %t3606, label %then614, label %else615
then614:
  %t3607 = load %nyx_string*, %nyx_string** %t3510
  %t3608 = load %nyx_string*, %nyx_string** %t3537
  %t3609 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3607, %nyx_string* %t3608)
  %t3610 = call i8* @nyx_string_to_cstr(%nyx_string* %t3609)
  call void @nyx_print_string(i8* %t3610)
  %t3611 = load %nyx_string*, %nyx_string** %t3513
  %t3612 = call i8* @nyx_string_to_cstr(%nyx_string* %t3611)
  call void @nyx_print_string(i8* %t3612)
  %t3613 = call i64 @print_valid_options()
  ret i64 1
else615:
  store i1 true, i1* %t3614
  %t3615 = load %nyx_string*, %nyx_string** %t3537
  %t3616 = load %nyx_string*, %nyx_string** %t3516
  %t3617 = call i1 @nyx_string_equals(%nyx_string* %t3615, %nyx_string* %t3616)
  br i1 %t3617, label %sc_or_end618, label %sc_or_rhs617
sc_or_rhs617:
  %t3618 = load %nyx_string*, %nyx_string** %t3537
  %t3619 = load %nyx_string*, %nyx_string** %t3519
  %t3620 = call i1 @nyx_string_starts_with(%nyx_string* %t3618, %nyx_string* %t3619)
  store i1 %t3620, i1* %t3614
  br label %sc_or_end618
sc_or_end618:
  %t3621 = load i1, i1* %t3614
  br i1 %t3621, label %then619, label %else620
then619:
  %t3622 = load %nyx_string*, %nyx_string** %t3537
  store %nyx_string* %t3622, %nyx_string** %t3479
  store i1 false, i1* %t3623
  %t3624 = load %nyx_string*, %nyx_string** %t3537
  %t3625 = load %nyx_string*, %nyx_string** %t3516
  %t3626 = call i1 @nyx_string_equals(%nyx_string* %t3624, %nyx_string* %t3625)
  br i1 %t3626, label %sc_and_rhs622, label %sc_and_end623
sc_and_rhs622:
  %t3627 = load i64, i64* %t3480
  %t3628 = add i64 %t3627, 1
  %t3629 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3630 = call i64 @nyx_array_length({ i64, i8* }* %t3629)
  %t3631 = icmp slt i64 %t3628, %t3630
  store i1 %t3631, i1* %t3623
  br label %sc_and_end623
sc_and_end623:
  %t3632 = load i1, i1* %t3623
  br i1 %t3632, label %then624, label %else625
then624:
  %t3633 = load i64, i64* %t3480
  %t3634 = add i64 %t3633, 1
  store i64 %t3634, i64* %t3480
  %t3635 = load { i64, i8* }*, { i64, i8* }** %t3476
  %t3636 = load i64, i64* %t3480
  %t3637 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3635, i64 %t3636, i64 2)
  %t3638 = inttoptr i64 %t3637 to %nyx_string*
  store %nyx_string* %t3638, %nyx_string** %t3639
  %t3640 = load %nyx_string*, %nyx_string** %t3537
  %t3641 = load %nyx_string*, %nyx_string** %t3522
  %t3642 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3640, %nyx_string* %t3641)
  %t3643 = load %nyx_string*, %nyx_string** %t3639
  %t3644 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3642, %nyx_string* %t3643)
  store %nyx_string* %t3644, %nyx_string** %t3479
  br label %merge626
else625:
  br label %merge626
merge626:
  br label %merge621
else620:
  store i1 true, i1* %t3645
  %t3646 = load %nyx_string*, %nyx_string** %t3537
  %t3647 = load %nyx_string*, %nyx_string** %t3483
  %t3648 = call i1 @nyx_string_equals(%nyx_string* %t3646, %nyx_string* %t3647)
  br i1 %t3648, label %sc_or_end628, label %sc_or_rhs627
sc_or_rhs627:
  %t3649 = load %nyx_string*, %nyx_string** %t3537
  %t3650 = load %nyx_string*, %nyx_string** %t3492
  %t3651 = call i1 @nyx_string_equals(%nyx_string* %t3649, %nyx_string* %t3650)
  store i1 %t3651, i1* %t3645
  br label %sc_or_end628
sc_or_end628:
  %t3652 = load i1, i1* %t3645
  br i1 %t3652, label %then629, label %else630
then629:
  br label %merge631
else630:
  %t3653 = load %nyx_string*, %nyx_string** %t3537
  %t3654 = load %nyx_string*, %nyx_string** %t3525
  %t3655 = call i1 @nyx_string_ends_with(%nyx_string* %t3653, %nyx_string* %t3654)
  br i1 %t3655, label %then632, label %else633
then632:
  %t3656 = load %nyx_string*, %nyx_string** %t3537
  %t3657 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 4
  store %nyx_string* %t3656, %nyx_string** %t3657
  br label %merge634
else633:
  %t3658 = load %nyx_string*, %nyx_string** %t3537
  %t3659 = load %nyx_string*, %nyx_string** %t3528
  %t3660 = call i1 @nyx_string_starts_with(%nyx_string* %t3658, %nyx_string* %t3659)
  br i1 %t3660, label %then635, label %else636
then635:
  %t3661 = load %nyx_string*, %nyx_string** %t3510
  %t3662 = load %nyx_string*, %nyx_string** %t3537
  %t3663 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3661, %nyx_string* %t3662)
  %t3664 = call i8* @nyx_string_to_cstr(%nyx_string* %t3663)
  call void @nyx_print_string(i8* %t3664)
  %t3665 = call i64 @print_valid_options()
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
  %t3666 = load i64, i64* %t3480
  %t3667 = add i64 %t3666, 1
  store i64 %t3667, i64* %t3480
  br label %while_cond585
while_end587:
  %t3668 = load %nyx_string*, %nyx_string** %t3479
  %t3669 = getelementptr [1 x i8], [1 x i8]* @.str388, i32 0, i32 0
  %t3670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %t3669, i64 0)
  %t3671 = call i1 @nyx_string_equals(%nyx_string* %t3668, %nyx_string* %t3670)
  %t3672 = xor i1 %t3671, true
  br i1 %t3672, label %then638, label %else639
then638:
  %t3673 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 5
  %t3674 = load i1, i1* %t3673
  br i1 %t3674, label %then641, label %else642
then641:
  %t3675 = getelementptr [47 x i8], [47 x i8]* @.str389, i32 0, i32 0
  %t3676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %t3675, i64 46)
  %t3677 = load %nyx_string*, %nyx_string** %t3479
  %t3678 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3676, %nyx_string* %t3677)
  %t3679 = getelementptr [58 x i8], [58 x i8]* @.str390, i32 0, i32 0
  %t3680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %t3679, i64 57)
  %t3681 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3678, %nyx_string* %t3680)
  %t3682 = call i8* @nyx_string_to_cstr(%nyx_string* %t3681)
  call void @nyx_print_string(i8* %t3682)
  br label %merge643
else642:
  %t3683 = getelementptr [24 x i8], [24 x i8]* @.str391, i32 0, i32 0
  %t3684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %t3683, i64 23)
  %t3685 = load %nyx_string*, %nyx_string** %t3479
  %t3686 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3684, %nyx_string* %t3685)
  %t3687 = call i8* @nyx_string_to_cstr(%nyx_string* %t3686)
  call void @nyx_print_string(i8* %t3687)
  br label %merge643
merge643:
  %t3688 = call i64 @print_valid_options()
  ret i64 1
else639:
  br label %merge640
merge640:
  %t3689 = getelementptr [1 x i8], [1 x i8]* @.str392, i32 0, i32 0
  %t3690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %t3689, i64 0)
  store %nyx_string* %t3690, %nyx_string** %t3691
  %t3692 = getelementptr [1 x i8], [1 x i8]* @.str393, i32 0, i32 0
  %t3693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %t3692, i64 0)
  store %nyx_string* %t3693, %nyx_string** %t3694
  %t3695 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 5
  %t3696 = load i1, i1* %t3695
  br i1 %t3696, label %then644, label %else645
then644:
  %t3697 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %t3697, %nyx_string** %t3691
  %t3698 = load %nyx_string*, %nyx_string** %t3691
  %t3699 = getelementptr [1 x i8], [1 x i8]* @.str394, i32 0, i32 0
  %t3700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %t3699, i64 0)
  %t3701 = call i1 @nyx_string_equals(%nyx_string* %t3698, %nyx_string* %t3700)
  br i1 %t3701, label %then647, label %else648
then647:
  %t3702 = call %nyx_string* @cov_clang_major()
  store %nyx_string* %t3702, %nyx_string** %t3703
  %t3704 = getelementptr [5 x i8], [5 x i8]* @.str395, i32 0, i32 0
  %t3705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %t3704, i64 4)
  store %nyx_string* %t3705, %nyx_string** %t3706
  %t3707 = load %nyx_string*, %nyx_string** %t3703
  %t3708 = getelementptr [1 x i8], [1 x i8]* @.str396, i32 0, i32 0
  %t3709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %t3708, i64 0)
  %t3710 = call i1 @nyx_string_equals(%nyx_string* %t3707, %nyx_string* %t3709)
  %t3711 = xor i1 %t3710, true
  br i1 %t3711, label %then650, label %else651
then650:
  %t3712 = getelementptr [6 x i8], [6 x i8]* @.str397, i32 0, i32 0
  %t3713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %t3712, i64 5)
  %t3714 = load %nyx_string*, %nyx_string** %t3703
  %t3715 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3713, %nyx_string* %t3714)
  store %nyx_string* %t3715, %nyx_string** %t3706
  br label %merge652
else651:
  br label %merge652
merge652:
  %t3716 = getelementptr [101 x i8], [101 x i8]* @.str398, i32 0, i32 0
  %t3717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %t3716, i64 100)
  %t3718 = call i8* @nyx_string_to_cstr(%nyx_string* %t3717)
  call void @nyx_print_string(i8* %t3718)
  %t3719 = getelementptr [35 x i8], [35 x i8]* @.str399, i32 0, i32 0
  %t3720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %t3719, i64 34)
  %t3721 = load %nyx_string*, %nyx_string** %t3706
  %t3722 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3720, %nyx_string* %t3721)
  %t3723 = call i8* @nyx_string_to_cstr(%nyx_string* %t3722)
  call void @nyx_print_string(i8* %t3723)
  %t3724 = getelementptr [82 x i8], [82 x i8]* @.str400, i32 0, i32 0
  %t3725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %t3724, i64 81)
  %t3726 = call i8* @nyx_string_to_cstr(%nyx_string* %t3725)
  call void @nyx_print_string(i8* %t3726)
  %t3727 = getelementptr [82 x i8], [82 x i8]* @.str401, i32 0, i32 0
  %t3728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %t3727, i64 81)
  %t3729 = call i8* @nyx_string_to_cstr(%nyx_string* %t3728)
  call void @nyx_print_string(i8* %t3729)
  ret i64 1
else648:
  br label %merge649
merge649:
  %t3730 = getelementptr [12 x i8], [12 x i8]* @.str402, i32 0, i32 0
  %t3731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %t3730, i64 11)
  %t3732 = getelementptr [5 x i8], [5 x i8]* @.str403, i32 0, i32 0
  %t3733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %t3732, i64 4)
  %t3734 = call %nyx_string* @tmp_plantilla(%nyx_string* %t3733)
  %t3735 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3731, %nyx_string* %t3734)
  %t3736 = getelementptr [2 x i8], [2 x i8]* @.str404, i32 0, i32 0
  %t3737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %t3736, i64 1)
  %t3738 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3735, %nyx_string* %t3737)
  %t3739 = call i8* @nyx_string_to_cstr(%nyx_string* %t3738)
  %t3740 = call %nyx_string* @nyx_exec(i8* %t3739)
  %t3741 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3740)
  store %nyx_string* %t3741, %nyx_string** %t3694
  %t3742 = load %nyx_string*, %nyx_string** %t3694
  %t3743 = getelementptr [1 x i8], [1 x i8]* @.str405, i32 0, i32 0
  %t3744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %t3743, i64 0)
  %t3745 = call i1 @nyx_string_equals(%nyx_string* %t3742, %nyx_string* %t3744)
  br i1 %t3745, label %then653, label %else654
then653:
  %t3746 = getelementptr [55 x i8], [55 x i8]* @.str406, i32 0, i32 0
  %t3747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %t3746, i64 54)
  %t3748 = call i8* @nyx_string_to_cstr(%nyx_string* %t3747)
  call void @nyx_print_string(i8* %t3748)
  ret i64 1
else654:
  br label %merge655
merge655:
  br label %merge646
else645:
  br label %merge646
merge646:
  %t3749 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3749, { i64, i8* }** %t3750
  %t3751 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 4
  %t3752 = load %nyx_string*, %nyx_string** %t3751
  %t3753 = getelementptr [1 x i8], [1 x i8]* @.str407, i32 0, i32 0
  %t3754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %t3753, i64 0)
  %t3755 = call i1 @nyx_string_equals(%nyx_string* %t3752, %nyx_string* %t3754)
  %t3756 = xor i1 %t3755, true
  br i1 %t3756, label %then656, label %else657
then656:
  %t3757 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 4
  %t3758 = load %nyx_string*, %nyx_string** %t3757
  %t3759 = call i8* @nyx_string_to_cstr(%nyx_string* %t3758)
  %t3760 = call i1 @nyx_file_exists(i8* %t3759)
  %t3761 = xor i1 %t3760, true
  br i1 %t3761, label %then659, label %else660
then659:
  %t3762 = getelementptr [24 x i8], [24 x i8]* @.str408, i32 0, i32 0
  %t3763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %t3762, i64 23)
  %t3764 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 4
  %t3765 = load %nyx_string*, %nyx_string** %t3764
  %t3766 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3763, %nyx_string* %t3765)
  %t3767 = call i8* @nyx_string_to_cstr(%nyx_string* %t3766)
  call void @nyx_print_string(i8* %t3767)
  ret i64 1
else660:
  br label %merge661
merge661:
  %t3768 = load { i64, i8* }*, { i64, i8* }** %t3750
  %t3769 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 4
  %t3770 = load %nyx_string*, %nyx_string** %t3769
  %t3771 = ptrtoint %nyx_string* %t3770 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3768, i64 %t3771, i64 2)
  br label %merge658
else657:
  %t3772 = load %TestConfig, %TestConfig* %t3474
  %t3773 = call { i64, i8* }* @discover_tests(%TestConfig %t3772)
  store { i64, i8* }* %t3773, { i64, i8* }** %t3750
  br label %merge658
merge658:
  %t3774 = load { i64, i8* }*, { i64, i8* }** %t3750
  %t3775 = call i64 @nyx_array_length({ i64, i8* }* %t3774)
  %t3776 = icmp eq i64 %t3775, 0
  br i1 %t3776, label %then662, label %else663
then662:
  %t3777 = getelementptr [23 x i8], [23 x i8]* @.str409, i32 0, i32 0
  %t3778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %t3777, i64 22)
  %t3779 = call i8* @nyx_string_to_cstr(%nyx_string* %t3778)
  call void @nyx_print_string(i8* %t3779)
  %t3780 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 2
  %t3781 = load %nyx_string*, %nyx_string** %t3780
  %t3782 = getelementptr [1 x i8], [1 x i8]* @.str410, i32 0, i32 0
  %t3783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %t3782, i64 0)
  %t3784 = call i1 @nyx_string_equals(%nyx_string* %t3781, %nyx_string* %t3783)
  %t3785 = xor i1 %t3784, true
  br i1 %t3785, label %then665, label %else666
then665:
  %t3786 = getelementptr [12 x i8], [12 x i8]* @.str411, i32 0, i32 0
  %t3787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %t3786, i64 11)
  %t3788 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 2
  %t3789 = load %nyx_string*, %nyx_string** %t3788
  %t3790 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3787, %nyx_string* %t3789)
  %t3791 = getelementptr [2 x i8], [2 x i8]* @.str412, i32 0, i32 0
  %t3792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %t3791, i64 1)
  %t3793 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3790, %nyx_string* %t3792)
  %t3794 = call i8* @nyx_string_to_cstr(%nyx_string* %t3793)
  call void @nyx_print_string(i8* %t3794)
  br label %merge667
else666:
  br label %merge667
merge667:
  %t3795 = getelementptr [14 x i8], [14 x i8]* @.str413, i32 0, i32 0
  %t3796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %t3795, i64 13)
  %t3797 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 0
  %t3798 = load %nyx_string*, %nyx_string** %t3797
  %t3799 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3796, %nyx_string* %t3798)
  %t3800 = getelementptr [2 x i8], [2 x i8]* @.str414, i32 0, i32 0
  %t3801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %t3800, i64 1)
  %t3802 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3799, %nyx_string* %t3801)
  %t3803 = call i8* @nyx_string_to_cstr(%nyx_string* %t3802)
  call void @nyx_print_string(i8* %t3803)
  ret i64 0
else663:
  br label %merge664
merge664:
  %t3804 = getelementptr [9 x i8], [9 x i8]* @.str415, i32 0, i32 0
  %t3805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %t3804, i64 8)
  %t3806 = load { i64, i8* }*, { i64, i8* }** %t3750
  %t3807 = call i64 @nyx_array_length({ i64, i8* }* %t3806)
  %t3808 = call %nyx_string* @nyx_string_from_int(i64 %t3807)
  %t3809 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3805, %nyx_string* %t3808)
  %t3810 = getelementptr [14 x i8], [14 x i8]* @.str416, i32 0, i32 0
  %t3811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %t3810, i64 13)
  %t3812 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3809, %nyx_string* %t3811)
  %t3813 = call i8* @nyx_string_to_cstr(%nyx_string* %t3812)
  call void @nyx_print_string(i8* %t3813)
  %t3814 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 2
  %t3815 = load %nyx_string*, %nyx_string** %t3814
  %t3816 = getelementptr [1 x i8], [1 x i8]* @.str417, i32 0, i32 0
  %t3817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %t3816, i64 0)
  %t3818 = call i1 @nyx_string_equals(%nyx_string* %t3815, %nyx_string* %t3817)
  %t3819 = xor i1 %t3818, true
  br i1 %t3819, label %then668, label %else669
then668:
  %t3820 = getelementptr [12 x i8], [12 x i8]* @.str418, i32 0, i32 0
  %t3821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %t3820, i64 11)
  %t3822 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 2
  %t3823 = load %nyx_string*, %nyx_string** %t3822
  %t3824 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3821, %nyx_string* %t3823)
  %t3825 = getelementptr [2 x i8], [2 x i8]* @.str419, i32 0, i32 0
  %t3826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %t3825, i64 1)
  %t3827 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3824, %nyx_string* %t3826)
  %t3828 = call i8* @nyx_string_to_cstr(%nyx_string* %t3827)
  call void @nyx_print_string(i8* %t3828)
  br label %merge670
else669:
  br label %merge670
merge670:
  %t3829 = getelementptr [1 x i8], [1 x i8]* @.str420, i32 0, i32 0
  %t3830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %t3829, i64 0)
  %t3831 = call i8* @nyx_string_to_cstr(%nyx_string* %t3830)
  call void @nyx_print_string(i8* %t3831)
  store i1 false, i1* %t3832
  %t3833 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 8
  %t3834 = load %nyx_string*, %nyx_string** %t3833
  %t3835 = getelementptr [1 x i8], [1 x i8]* @.str421, i32 0, i32 0
  %t3836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %t3835, i64 0)
  %t3837 = call i1 @nyx_string_equals(%nyx_string* %t3834, %nyx_string* %t3836)
  %t3838 = xor i1 %t3837, true
  br i1 %t3838, label %sc_and_rhs671, label %sc_and_end672
sc_and_rhs671:
  %t3839 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 5
  %t3840 = load i1, i1* %t3839
  %t3841 = xor i1 %t3840, true
  store i1 %t3841, i1* %t3832
  br label %sc_and_end672
sc_and_end672:
  %t3842 = load i1, i1* %t3832
  br i1 %t3842, label %then673, label %else674
then673:
  %t3843 = getelementptr [9 x i8], [9 x i8]* @.str422, i32 0, i32 0
  %t3844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %t3843, i64 8)
  %t3845 = call i8* @nyx_string_to_cstr(%nyx_string* %t3844)
  %t3846 = call %nyx_string* @nyx_getenv(i8* %t3845)
  store %nyx_string* %t3846, %nyx_string** %t3847
  %t3848 = load %nyx_string*, %nyx_string** %t3847
  %t3849 = getelementptr [11 x i8], [11 x i8]* @.str423, i32 0, i32 0
  %t3850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %t3849, i64 10)
  %t3851 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3848, %nyx_string* %t3850)
  store %nyx_string* %t3851, %nyx_string** %t3852
  %t3853 = load %nyx_string*, %nyx_string** %t3852
  %t3854 = call i8* @nyx_string_to_cstr(%nyx_string* %t3853)
  %t3855 = call i1 @nyx_file_exists(i8* %t3854)
  %t3856 = xor i1 %t3855, true
  br i1 %t3856, label %then676, label %else677
then676:
  %t3857 = load %nyx_string*, %nyx_string** %t3847
  %t3858 = getelementptr [15 x i8], [15 x i8]* @.str424, i32 0, i32 0
  %t3859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %t3858, i64 14)
  %t3860 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3857, %nyx_string* %t3859)
  store %nyx_string* %t3860, %nyx_string** %t3852
  br label %merge678
else677:
  br label %merge678
merge678:
  %t3861 = getelementptr [1 x i8], [1 x i8]* @.str425, i32 0, i32 0
  %t3862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %t3861, i64 0)
  store %nyx_string* %t3862, %nyx_string** %t3863
  %t3864 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 7
  %t3865 = load i1, i1* %t3864
  br i1 %t3865, label %then679, label %else680
then679:
  %t3866 = getelementptr [11 x i8], [11 x i8]* @.str426, i32 0, i32 0
  %t3867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %t3866, i64 10)
  store %nyx_string* %t3867, %nyx_string** %t3863
  br label %merge681
else680:
  br label %merge681
merge681:
  %t3868 = getelementptr [9 x i8], [9 x i8]* @.str427, i32 0, i32 0
  %t3869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %t3868, i64 8)
  %t3870 = getelementptr [11 x i8], [11 x i8]* @.str428, i32 0, i32 0
  %t3871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %t3870, i64 10)
  %t3872 = call %nyx_string* @tmp_plantilla(%nyx_string* %t3871)
  %t3873 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3869, %nyx_string* %t3872)
  %t3874 = getelementptr [2 x i8], [2 x i8]* @.str429, i32 0, i32 0
  %t3875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %t3874, i64 1)
  %t3876 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3873, %nyx_string* %t3875)
  %t3877 = call i8* @nyx_string_to_cstr(%nyx_string* %t3876)
  %t3878 = call %nyx_string* @nyx_exec(i8* %t3877)
  %t3879 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3878)
  store %nyx_string* %t3879, %nyx_string** %t3880
  %t3881 = getelementptr [2 x i8], [2 x i8]* @.str430, i32 0, i32 0
  %t3882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %t3881, i64 1)
  %t3883 = load %nyx_string*, %nyx_string** %t3852
  %t3884 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3882, %nyx_string* %t3883)
  %t3885 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %t3886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %t3885, i64 6)
  %t3887 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3884, %nyx_string* %t3886)
  %t3888 = load %nyx_string*, %nyx_string** %t3863
  %t3889 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3887, %nyx_string* %t3888)
  %t3890 = getelementptr [5 x i8], [5 x i8]* @.str432, i32 0, i32 0
  %t3891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %t3890, i64 4)
  %t3892 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3889, %nyx_string* %t3891)
  %t3893 = load %nyx_string*, %nyx_string** %t3880
  %t3894 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3892, %nyx_string* %t3893)
  %t3895 = getelementptr [7 x i8], [7 x i8]* @.str433, i32 0, i32 0
  %t3896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %t3895, i64 6)
  %t3897 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3894, %nyx_string* %t3896)
  %t3898 = call i8* @nyx_string_to_cstr(%nyx_string* %t3897)
  %t3899 = call i64 @nyx_exec_code(i8* %t3898)
  store i64 %t3899, i64* %t3900
  %t3901 = load %nyx_string*, %nyx_string** %t3880
  %t3902 = call i8* @nyx_string_to_cstr(%nyx_string* %t3901)
  %t3903 = call %nyx_string* @nyx_read_file(i8* %t3902)
  store %nyx_string* %t3903, %nyx_string** %t3904
  %t3905 = getelementptr [8 x i8], [8 x i8]* @.str434, i32 0, i32 0
  %t3906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %t3905, i64 7)
  %t3907 = load %nyx_string*, %nyx_string** %t3880
  %t3908 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3906, %nyx_string* %t3907)
  %t3909 = getelementptr [2 x i8], [2 x i8]* @.str435, i32 0, i32 0
  %t3910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %t3909, i64 1)
  %t3911 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3908, %nyx_string* %t3910)
  %t3912 = call i8* @nyx_string_to_cstr(%nyx_string* %t3911)
  %t3913 = call i64 @nyx_exec_code(i8* %t3912)
  %t3914 = load i64, i64* %t3900
  %t3915 = icmp ne i64 %t3914, 0
  br i1 %t3915, label %then682, label %else683
then682:
  %t3916 = getelementptr [65 x i8], [65 x i8]* @.str436, i32 0, i32 0
  %t3917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %t3916, i64 64)
  %t3918 = call i8* @nyx_string_to_cstr(%nyx_string* %t3917)
  call void @nyx_print_string(i8* %t3918)
  %t3919 = load %nyx_string*, %nyx_string** %t3904
  %t3920 = call i8* @nyx_string_to_cstr(%nyx_string* %t3919)
  call void @nyx_print_string(i8* %t3920)
  ret i64 1
else683:
  br label %merge684
merge684:
  %t3921 = load %nyx_string*, %nyx_string** %t3904
  %t3922 = getelementptr [2 x i8], [2 x i8]* @.str437, i32 0, i32 0
  %t3923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %t3922, i64 1)
  %t3924 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t3921, %nyx_string* %t3923)
  store { i64, i8* }* %t3924, { i64, i8* }** %t3925
  store i64 0, i64* %t3926
  store i64 0, i64* %t3927
  store i64 0, i64* %t3928
  %t3929 = getelementptr [13 x i8], [13 x i8]* @.str438, i32 0, i32 0
  %t3930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %t3929, i64 12)
  store %nyx_string* %t3930, %nyx_string** %t3931
  %t3932 = getelementptr [6 x i8], [6 x i8]* @.str439, i32 0, i32 0
  %t3933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %t3932, i64 5)
  store %nyx_string* %t3933, %nyx_string** %t3934
  %t3935 = getelementptr [8 x i8], [8 x i8]* @.str440, i32 0, i32 0
  %t3936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %t3935, i64 7)
  store %nyx_string* %t3936, %nyx_string** %t3937
  %t3938 = getelementptr [4 x i8], [4 x i8]* @.str441, i32 0, i32 0
  %t3939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %t3938, i64 3)
  store %nyx_string* %t3939, %nyx_string** %t3940
  br label %while_cond685
while_cond685:
  %t3941 = load i64, i64* %t3926
  %t3942 = load { i64, i8* }*, { i64, i8* }** %t3925
  %t3943 = call i64 @nyx_array_length({ i64, i8* }* %t3942)
  %t3944 = icmp slt i64 %t3941, %t3943
  br i1 %t3944, label %while_body686, label %while_end687
while_body686:
  %t3945 = load { i64, i8* }*, { i64, i8* }** %t3925
  %t3946 = load i64, i64* %t3926
  %t3947 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3945, i64 %t3946, i64 2)
  %t3948 = inttoptr i64 %t3947 to %nyx_string*
  store %nyx_string* %t3948, %nyx_string** %t3949
  %t3950 = load %nyx_string*, %nyx_string** %t3949
  %t3951 = load %nyx_string*, %nyx_string** %t3931
  %t3952 = call i1 @nyx_string_starts_with(%nyx_string* %t3950, %nyx_string* %t3951)
  br i1 %t3952, label %then688, label %else689
then688:
  %t3953 = load %nyx_string*, %nyx_string** %t3949
  %t3954 = load %nyx_string*, %nyx_string** %t3949
  %t3955 = call i64 @nyx_string_byte_length(%nyx_string* %t3954)
  %t3956 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3953, i64 12, i64 %t3955)
  %t3957 = call %nyx_string* @nyx_string_trim(%nyx_string* %t3956)
  %t3958 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 9
  store %nyx_string* %t3957, %nyx_string** %t3958
  br label %merge690
else689:
  br label %merge690
merge690:
  %t3959 = load %nyx_string*, %nyx_string** %t3949
  %t3960 = load %nyx_string*, %nyx_string** %t3934
  %t3961 = call i1 @nyx_string_contains(%nyx_string* %t3959, %nyx_string* %t3960)
  br i1 %t3961, label %then691, label %else692
then691:
  %t3962 = load i64, i64* %t3927
  %t3963 = add i64 %t3962, 1
  store i64 %t3963, i64* %t3927
  br label %merge693
else692:
  br label %merge693
merge693:
  %t3964 = load %nyx_string*, %nyx_string** %t3949
  %t3965 = load %nyx_string*, %nyx_string** %t3937
  %t3966 = call i1 @nyx_string_contains(%nyx_string* %t3964, %nyx_string* %t3965)
  br i1 %t3966, label %then694, label %else695
then694:
  %t3967 = load i64, i64* %t3928
  %t3968 = add i64 %t3967, 1
  store i64 %t3968, i64* %t3928
  br label %merge696
else695:
  br label %merge696
merge696:
  %t3969 = load %nyx_string*, %nyx_string** %t3949
  %t3970 = load %nyx_string*, %nyx_string** %t3940
  %t3971 = call i1 @nyx_string_contains(%nyx_string* %t3969, %nyx_string* %t3970)
  br i1 %t3971, label %then697, label %else698
then697:
  %t3972 = load %nyx_string*, %nyx_string** %t3949
  %t3973 = call i8* @nyx_string_to_cstr(%nyx_string* %t3972)
  call void @nyx_print_string(i8* %t3973)
  br label %merge699
else698:
  br label %merge699
merge699:
  %t3974 = load i64, i64* %t3926
  %t3975 = add i64 %t3974, 1
  store i64 %t3975, i64* %t3926
  br label %while_cond685
while_end687:
  %t3976 = getelementptr [18 x i8], [18 x i8]* @.str442, i32 0, i32 0
  %t3977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %t3976, i64 17)
  %t3978 = load i64, i64* %t3927
  %t3979 = call %nyx_string* @nyx_string_from_int(i64 %t3978)
  %t3980 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3977, %nyx_string* %t3979)
  %t3981 = getelementptr [16 x i8], [16 x i8]* @.str443, i32 0, i32 0
  %t3982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %t3981, i64 15)
  %t3983 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3980, %nyx_string* %t3982)
  %t3984 = load i64, i64* %t3928
  %t3985 = call %nyx_string* @nyx_string_from_int(i64 %t3984)
  %t3986 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3983, %nyx_string* %t3985)
  %t3987 = getelementptr [16 x i8], [16 x i8]* @.str444, i32 0, i32 0
  %t3988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %t3987, i64 15)
  %t3989 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3986, %nyx_string* %t3988)
  %t3990 = call i8* @nyx_string_to_cstr(%nyx_string* %t3989)
  call void @nyx_print_string(i8* %t3990)
  %t3991 = getelementptr [1 x i8], [1 x i8]* @.str445, i32 0, i32 0
  %t3992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %t3991, i64 0)
  %t3993 = call i8* @nyx_string_to_cstr(%nyx_string* %t3992)
  call void @nyx_print_string(i8* %t3993)
  br label %merge675
else674:
  br label %merge675
merge675:
  %t3994 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3994, { i64, i8* }** %t3995
  %t3996 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3996, { i64, i8* }** %t3997
  %t3998 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3998, { i64, i8* }** %t3999
  store i64 0, i64* %t4000
  store i64 0, i64* %t4001
  store i64 0, i64* %t4002
  br label %while_cond700
while_cond700:
  %t4003 = load i64, i64* %t4002
  %t4004 = load { i64, i8* }*, { i64, i8* }** %t3750
  %t4005 = call i64 @nyx_array_length({ i64, i8* }* %t4004)
  %t4006 = icmp slt i64 %t4003, %t4005
  br i1 %t4006, label %while_body701, label %while_end702
while_body701:
  %t4007 = load { i64, i8* }*, { i64, i8* }** %t3750
  %t4008 = load i64, i64* %t4002
  %t4009 = call i64 @nyx_array_get_checked({ i64, i8* }* %t4007, i64 %t4008, i64 2)
  %t4010 = inttoptr i64 %t4009 to %nyx_string*
  store %nyx_string* %t4010, %nyx_string** %t4011
  %t4012 = load %nyx_string*, %nyx_string** %t4011
  %t4013 = call i1 @file_has_test_blocks(%nyx_string* %t4012)
  %t4014 = xor i1 %t4013, true
  br i1 %t4014, label %then703, label %else704
then703:
  %t4015 = load i64, i64* %t4002
  %t4016 = add i64 %t4015, 1
  store i64 %t4016, i64* %t4002
  br label %merge705
else704:
  %t4017 = load %nyx_string*, %nyx_string** %t4011
  %t4018 = load %TestConfig, %TestConfig* %t3474
  %t4019 = load %nyx_string*, %nyx_string** %t3694
  %t4020 = load i64, i64* %t4002
  %t4021 = call %TestResult @compile_and_run(%nyx_string* %t4017, %TestConfig %t4018, %nyx_string* %t4019, i64 %t4020)
  store %TestResult %t4021, %TestResult* %t4022
  %t4023 = load { i64, i8* }*, { i64, i8* }** %t3995
  %t4024 = load %TestResult, %TestResult* %t4022
  %t4025 = getelementptr %TestResult, %TestResult* null, i32 1
  %t4026 = ptrtoint %TestResult* %t4025 to i64
  %t4027 = call i8* @GC_malloc(i64 %t4026)
  %t4028 = bitcast i8* %t4027 to %TestResult*
  store %TestResult %t4024, %TestResult* %t4028
  %t4029 = ptrtoint %TestResult* %t4028 to i64
  call void @nyx_array_push({ i64, i8* }* %t4023, i64 %t4029)
  %t4030 = load { i64, i8* }*, { i64, i8* }** %t3997
  %t4031 = load %nyx_string*, %nyx_string** %t4011
  %t4032 = ptrtoint %nyx_string* %t4031 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4030, i64 %t4032, i64 2)
  %t4033 = load { i64, i8* }*, { i64, i8* }** %t3999
  %t4034 = load i64, i64* %t4002
  %t4035 = call %nyx_string* @nyx_string_from_int(i64 %t4034)
  %t4036 = ptrtoint %nyx_string* %t4035 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4033, i64 %t4036, i64 2)
  %t4037 = load i64, i64* %t4000
  %t4038 = getelementptr %TestResult, %TestResult* %t4022, i32 0, i32 1
  %t4039 = load i64, i64* %t4038
  %t4040 = add i64 %t4037, %t4039
  store i64 %t4040, i64* %t4000
  %t4041 = load i64, i64* %t4001
  %t4042 = getelementptr %TestResult, %TestResult* %t4022, i32 0, i32 2
  %t4043 = load i64, i64* %t4042
  %t4044 = add i64 %t4041, %t4043
  store i64 %t4044, i64* %t4001
  %t4045 = load %TestResult, %TestResult* %t4022
  %t4046 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 3
  %t4047 = load i1, i1* %t4046
  %t4048 = call i64 @print_result(%TestResult %t4045, i1 %t4047)
  %t4049 = load i64, i64* %t4002
  %t4050 = add i64 %t4049, 1
  store i64 %t4050, i64* %t4002
  br label %merge705
merge705:
  br label %while_cond700
while_end702:
  %t4051 = load { i64, i8* }*, { i64, i8* }** %t3995
  %t4052 = call i64 @nyx_array_length({ i64, i8* }* %t4051)
  %t4053 = icmp eq i64 %t4052, 0
  br i1 %t4053, label %then706, label %else707
then706:
  %t4054 = getelementptr [35 x i8], [35 x i8]* @.str446, i32 0, i32 0
  %t4055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %t4054, i64 34)
  %t4056 = call i8* @nyx_string_to_cstr(%nyx_string* %t4055)
  call void @nyx_print_string(i8* %t4056)
  %t4057 = load %nyx_string*, %nyx_string** %t3694
  %t4058 = getelementptr [1 x i8], [1 x i8]* @.str447, i32 0, i32 0
  %t4059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %t4058, i64 0)
  %t4060 = call i1 @nyx_string_equals(%nyx_string* %t4057, %nyx_string* %t4059)
  %t4061 = xor i1 %t4060, true
  br i1 %t4061, label %then709, label %else710
then709:
  %t4062 = getelementptr [9 x i8], [9 x i8]* @.str448, i32 0, i32 0
  %t4063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %t4062, i64 8)
  %t4064 = load %nyx_string*, %nyx_string** %t3694
  %t4065 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4063, %nyx_string* %t4064)
  %t4066 = getelementptr [2 x i8], [2 x i8]* @.str449, i32 0, i32 0
  %t4067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %t4066, i64 1)
  %t4068 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4065, %nyx_string* %t4067)
  %t4069 = call i8* @nyx_string_to_cstr(%nyx_string* %t4068)
  %t4070 = call %nyx_string* @nyx_exec(i8* %t4069)
  br label %merge711
else710:
  br label %merge711
merge711:
  ret i64 0
else707:
  br label %merge708
merge708:
  %t4071 = load { i64, i8* }*, { i64, i8* }** %t3995
  %t4072 = load i64, i64* %t4000
  %t4073 = load i64, i64* %t4001
  %t4074 = call i64 @print_summary({ i64, i8* }* %t4071, i64 %t4072, i64 %t4073)
  %t4075 = load %nyx_string*, %nyx_string** %t3445
  %t4076 = call %nyx_string* @huella_compilador(%nyx_string* %t4075)
  store %nyx_string* %t4076, %nyx_string** %t4077
  %t4078 = load %nyx_string*, %nyx_string** %t3445
  %t4079 = call %nyx_string* @huella_resto(%nyx_string* %t4078)
  store %nyx_string* %t4079, %nyx_string** %t4080
  store i1 true, i1* %t4081
  %t4082 = load %nyx_string*, %nyx_string** %t4077
  %t4083 = load %nyx_string*, %nyx_string** %t3456
  %t4084 = call i1 @nyx_string_equals(%nyx_string* %t4082, %nyx_string* %t4083)
  %t4085 = xor i1 %t4084, true
  br i1 %t4085, label %sc_or_end713, label %sc_or_rhs712
sc_or_rhs712:
  %t4086 = load %nyx_string*, %nyx_string** %t4080
  %t4087 = load %nyx_string*, %nyx_string** %t3459
  %t4088 = call i1 @nyx_string_equals(%nyx_string* %t4086, %nyx_string* %t4087)
  %t4089 = xor i1 %t4088, true
  store i1 %t4089, i1* %t4081
  br label %sc_or_end713
sc_or_end713:
  %t4090 = load i1, i1* %t4081
  br i1 %t4090, label %then714, label %else715
then714:
  %t4091 = getelementptr [1 x i8], [1 x i8]* @.str450, i32 0, i32 0
  %t4092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %t4091, i64 0)
  %t4093 = call i8* @nyx_string_to_cstr(%nyx_string* %t4092)
  call void @nyx_print_string(i8* %t4093)
  %t4094 = getelementptr [48 x i8], [48 x i8]* @.str451, i32 0, i32 0
  %t4095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %t4094, i64 47)
  %t4096 = load %nyx_string*, %nyx_string** %t3445
  %t4097 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4095, %nyx_string* %t4096)
  %t4098 = getelementptr [2 x i8], [2 x i8]* @.str452, i32 0, i32 0
  %t4099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %t4098, i64 1)
  %t4100 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4097, %nyx_string* %t4099)
  %t4101 = call i8* @nyx_string_to_cstr(%nyx_string* %t4100)
  call void @nyx_print_string(i8* %t4101)
  %t4102 = load %nyx_string*, %nyx_string** %t4077
  %t4103 = load %nyx_string*, %nyx_string** %t3456
  %t4104 = call i1 @nyx_string_equals(%nyx_string* %t4102, %nyx_string* %t4103)
  %t4105 = xor i1 %t4104, true
  br i1 %t4105, label %then717, label %else718
then717:
  %t4106 = getelementptr [31 x i8], [31 x i8]* @.str453, i32 0, i32 0
  %t4107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %t4106, i64 30)
  %t4108 = load %nyx_string*, %nyx_string** %t3456
  %t4109 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4107, %nyx_string* %t4108)
  %t4110 = getelementptr [5 x i8], [5 x i8]* @.str454, i32 0, i32 0
  %t4111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %t4110, i64 4)
  %t4112 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4109, %nyx_string* %t4111)
  %t4113 = load %nyx_string*, %nyx_string** %t4077
  %t4114 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4112, %nyx_string* %t4113)
  %t4115 = call i8* @nyx_string_to_cstr(%nyx_string* %t4114)
  call void @nyx_print_string(i8* %t4115)
  br label %merge719
else718:
  %t4116 = getelementptr [53 x i8], [53 x i8]* @.str455, i32 0, i32 0
  %t4117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %t4116, i64 52)
  %t4118 = call i8* @nyx_string_to_cstr(%nyx_string* %t4117)
  call void @nyx_print_string(i8* %t4118)
  br label %merge719
merge719:
  %t4119 = getelementptr [71 x i8], [71 x i8]* @.str456, i32 0, i32 0
  %t4120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %t4119, i64 70)
  %t4121 = call i8* @nyx_string_to_cstr(%nyx_string* %t4120)
  call void @nyx_print_string(i8* %t4121)
  %t4122 = getelementptr [69 x i8], [69 x i8]* @.str457, i32 0, i32 0
  %t4123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %t4122, i64 68)
  %t4124 = call i8* @nyx_string_to_cstr(%nyx_string* %t4123)
  call void @nyx_print_string(i8* %t4124)
  br label %merge716
else715:
  br label %merge716
merge716:
  %t4125 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 5
  %t4126 = load i1, i1* %t4125
  br i1 %t4126, label %then720, label %else721
then720:
  %t4127 = load %nyx_string*, %nyx_string** %t3694
  %t4128 = load { i64, i8* }*, { i64, i8* }** %t3997
  %t4129 = load { i64, i8* }*, { i64, i8* }** %t3999
  %t4130 = load %nyx_string*, %nyx_string** %t3691
  %t4131 = getelementptr %TestConfig, %TestConfig* %t3474, i32 0, i32 6
  %t4132 = load i1, i1* %t4131
  %t4133 = call i64 @cov_report(%nyx_string* %t4127, { i64, i8* }* %t4128, { i64, i8* }* %t4129, %nyx_string* %t4130, i1 %t4132)
  %t4134 = getelementptr [9 x i8], [9 x i8]* @.str458, i32 0, i32 0
  %t4135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %t4134, i64 8)
  %t4136 = load %nyx_string*, %nyx_string** %t3694
  %t4137 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4135, %nyx_string* %t4136)
  %t4138 = getelementptr [2 x i8], [2 x i8]* @.str459, i32 0, i32 0
  %t4139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %t4138, i64 1)
  %t4140 = call %nyx_string* @nyx_string_concat(%nyx_string* %t4137, %nyx_string* %t4139)
  %t4141 = call i8* @nyx_string_to_cstr(%nyx_string* %t4140)
  %t4142 = call %nyx_string* @nyx_exec(i8* %t4141)
  br label %merge722
else721:
  br label %merge722
merge722:
  store i64 0, i64* %t4143
  store i64 0, i64* %t4144
  br label %while_cond723
while_cond723:
  %t4145 = load i64, i64* %t4144
  %t4146 = load { i64, i8* }*, { i64, i8* }** %t3995
  %t4147 = call i64 @nyx_array_length({ i64, i8* }* %t4146)
  %t4148 = icmp slt i64 %t4145, %t4147
  br i1 %t4148, label %while_body724, label %while_end725
while_body724:
  %t4149 = load { i64, i8* }*, { i64, i8* }** %t3995
  %t4150 = load i64, i64* %t4144
  %t4151 = getelementptr [11 x i8], [11 x i8]* @.slotT460, i32 0, i32 0
  %t4152 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t4149, i64 %t4150, i8* %t4151)
  %t4153 = inttoptr i64 %t4152 to %TestResult*
  %t4154 = load %TestResult, %TestResult* %t4153
  store %TestResult %t4154, %TestResult* %t4155
  %t4156 = getelementptr %TestResult, %TestResult* %t4155, i32 0, i32 4
  %t4157 = load i1, i1* %t4156
  %t4158 = xor i1 %t4157, true
  br i1 %t4158, label %then726, label %else727
then726:
  %t4159 = load i64, i64* %t4143
  %t4160 = add i64 %t4159, 1
  store i64 %t4160, i64* %t4143
  br label %merge728
else727:
  br label %merge728
merge728:
  %t4161 = load i64, i64* %t4144
  %t4162 = add i64 %t4161, 1
  store i64 %t4162, i64* %t4144
  br label %while_cond723
while_end725:
  store i1 true, i1* %t4163
  %t4164 = load i64, i64* %t4001
  %t4165 = icmp sgt i64 %t4164, 0
  br i1 %t4165, label %sc_or_end730, label %sc_or_rhs729
sc_or_rhs729:
  %t4166 = load i64, i64* %t4143
  %t4167 = icmp sgt i64 %t4166, 0
  store i1 %t4167, i1* %t4163
  br label %sc_or_end730
sc_or_end730:
  %t4168 = load i1, i1* %t4163
  br i1 %t4168, label %then731, label %else732
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
  %t4169 = sub i64 0, 9223372036854775808
  store i64 %t4169, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

