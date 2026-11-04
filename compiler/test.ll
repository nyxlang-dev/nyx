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
@.str218 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [9 x i8] c"version \00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [1 x i8] c"\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [1 x i8] c"\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [1 x i8] c"\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [1 x i8] c"\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [2 x i8] c"0\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [1 x i8] c"\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [3 x i8] c"  \00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [4 x i8] c"   \00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c":\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [2 x i8] c";\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [1 x i8] c"\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [2 x i8] c"[\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"]\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [2 x i8] c",\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c"1\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [4 x i8] c"src\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [1 x i8] c"\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [1 x i8] c"\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [2 x i8] c"/\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [2 x i8] c"1\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [2 x i8] c"/\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [1 x i8] c"\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [2 x i8] c"1\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [6 x i8] c"async\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [5 x i8] c"main\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [3 x i8] c"no\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [3 x i8] c"si\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [1 x i8] c"\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [1 x i8] c"\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [2 x i8] c"0\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [3 x i8] c"si\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [2 x i8] c"1\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [5 x i8] c"    \00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [2 x i8] c":\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [2 x i8] c" \00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [2 x i8] c",\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [3 x i8] c"  \00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [3 x i8] c": \00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [2 x i8] c"/\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [3 x i8] c" (\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [5 x i8] c"    \00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [2 x i8] c"/\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [66 x i8] c"\22 2>/dev/null && sha256sum nyx_bootstrap 2>/dev/null | cut -c1-12\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [74 x i8] c"\22 2>/dev/null && cat std/*.nx runtime/*.c runtime/*.h 2>/dev/null | cksum\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [18 x i8] c"  compiler: nyx v\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [17 x i8] c" (nyx_bootstrap \00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [2 x i8] c")\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [1 x i8] c"\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [2 x i8] c" \00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [2 x i8] c"-\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [1 x i8] c"\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [1 x i8] c"\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [1 x i8] c"\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [1 x i8] c"\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [1 x i8] c"\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [12 x i8] c"mktemp -d \22\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [5 x i8] c"cov_\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [1 x i8] c"\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [1 x i8] c"\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [1 x i8] c"\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [2 x i8] c"/\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [1 x i8] c"\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [1 x i8] c"\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [1 x i8] c"\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [1 x i8] c"\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [9 x i8] c"mktemp \22\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [11 x i8] c"test_libs_\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [1 x i8] c"\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [1 x i8] c"\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [1 x i8] c"\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [48 x i8] c"  ⚠ EL TOOLCHAIN CAMBIÓ DURANTE LA CORRIDA (\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [2 x i8] c")\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [31 x i8] c"    compilador: nyx_bootstrap \00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [53 x i8] c"    compilador igual; cambió la stdlib o el runtime\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [71 x i8] c"    Algunos archivos se probaron con una versión y otros con la otra:\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [69 x i8] c"    este resultado no sirve para integrar. Vuelve a correr la suite.\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [9 x i8] c"rm -rf \22\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str458.c = internal global %nyx_string* null
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
declare i64 @nyx_slot_eq({ i64, i8* }*, i64, { i64, i8* }*, i64)
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
  %2107 = call i64 @nyx_array_get({ i64, i8* }* %2105, i64 %2106)
  %2108 = inttoptr i64 %2107 to %TestResult*
  %2109 = load %TestResult, %TestResult* %2108
  %2110 = alloca %TestResult
  store %TestResult %2109, %TestResult* %2110
  %2111 = getelementptr %TestResult, %TestResult* %2110, i32 0, i32 4
  %2112 = load i1, i1* %2111
  br i1 %2112, label %then399, label %else400
then399:
  %2113 = load i64, i64* %2097
  %2114 = add i64 %2113, 1
  store i64 %2114, i64* %2097
  br label %merge401
else400:
  %2115 = load i64, i64* %2098
  %2116 = add i64 %2115, 1
  store i64 %2116, i64* %2098
  br label %merge401
merge401:
  %2117 = load i64, i64* %2099
  %2118 = add i64 %2117, 1
  store i64 %2118, i64* %2099
  br label %while_cond396
while_end398:
  %2119 = getelementptr [11 x i8], [11 x i8]* @.str218, i32 0, i32 0
  %2120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2119, i64 10)
  %2121 = load i64, i64* %2097
  %2122 = call %nyx_string* @nyx_string_from_int(i64 %2121)
  %2123 = call %nyx_string* @nyx_string_concat(%nyx_string* %2120, %nyx_string* %2122)
  %2124 = getelementptr [10 x i8], [10 x i8]* @.str219, i32 0, i32 0
  %2125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2124, i64 9)
  %2126 = call %nyx_string* @nyx_string_concat(%nyx_string* %2123, %nyx_string* %2125)
  %2127 = load i64, i64* %2098
  %2128 = call %nyx_string* @nyx_string_from_int(i64 %2127)
  %2129 = call %nyx_string* @nyx_string_concat(%nyx_string* %2126, %nyx_string* %2128)
  %2130 = getelementptr [10 x i8], [10 x i8]* @.str220, i32 0, i32 0
  %2131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2130, i64 9)
  %2132 = call %nyx_string* @nyx_string_concat(%nyx_string* %2129, %nyx_string* %2131)
  %2133 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %2134 = call i64 @nyx_array_length({ i64, i8* }* %2133)
  %2135 = call %nyx_string* @nyx_string_from_int(i64 %2134)
  %2136 = call %nyx_string* @nyx_string_concat(%nyx_string* %2132, %nyx_string* %2135)
  %2137 = getelementptr [8 x i8], [8 x i8]* @.str221, i32 0, i32 0
  %2138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2137, i64 7)
  %2139 = call %nyx_string* @nyx_string_concat(%nyx_string* %2136, %nyx_string* %2138)
  %2140 = call i8* @nyx_string_to_cstr(%nyx_string* %2139)
  call void @nyx_print_string(i8* %2140)
  %2141 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %2142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2141, i64 10)
  %2143 = load i64, i64* %total_passed.ptr
  %2144 = call %nyx_string* @nyx_string_from_int(i64 %2143)
  %2145 = call %nyx_string* @nyx_string_concat(%nyx_string* %2142, %nyx_string* %2144)
  %2146 = getelementptr [10 x i8], [10 x i8]* @.str223, i32 0, i32 0
  %2147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2146, i64 9)
  %2148 = call %nyx_string* @nyx_string_concat(%nyx_string* %2145, %nyx_string* %2147)
  %2149 = load i64, i64* %total_failed.ptr
  %2150 = call %nyx_string* @nyx_string_from_int(i64 %2149)
  %2151 = call %nyx_string* @nyx_string_concat(%nyx_string* %2148, %nyx_string* %2150)
  %2152 = getelementptr [10 x i8], [10 x i8]* @.str224, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2152, i64 9)
  %2154 = call %nyx_string* @nyx_string_concat(%nyx_string* %2151, %nyx_string* %2153)
  %2155 = load i64, i64* %total_passed.ptr
  %2156 = load i64, i64* %total_failed.ptr
  %2157 = add i64 %2155, %2156
  %2158 = call %nyx_string* @nyx_string_from_int(i64 %2157)
  %2159 = call %nyx_string* @nyx_string_concat(%nyx_string* %2154, %nyx_string* %2158)
  %2160 = getelementptr [8 x i8], [8 x i8]* @.str225, i32 0, i32 0
  %2161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2160, i64 7)
  %2162 = call %nyx_string* @nyx_string_concat(%nyx_string* %2159, %nyx_string* %2161)
  %2163 = call i8* @nyx_string_to_cstr(%nyx_string* %2162)
  call void @nyx_print_string(i8* %2163)
  %2164 = alloca i1
  store i1 false, i1* %2164
  %2165 = load i64, i64* %total_failed.ptr
  %2166 = icmp eq i64 %2165, 0
  br i1 %2166, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %2167 = load i64, i64* %2098
  %2168 = icmp eq i64 %2167, 0
  store i1 %2168, i1* %2164
  br label %sc_and_end403
sc_and_end403:
  %2169 = load i1, i1* %2164
  br i1 %2169, label %then404, label %else405
then404:
  %2170 = getelementptr [27 x i8], [27 x i8]* @.str226, i32 0, i32 0
  %2171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2170, i64 26)
  %2172 = call i8* @nyx_string_to_cstr(%nyx_string* %2171)
  call void @nyx_print_string(i8* %2172)
  br label %merge406
else405:
  %2173 = getelementptr [28 x i8], [28 x i8]* @.str227, i32 0, i32 0
  %2174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2173, i64 27)
  %2175 = call i8* @nyx_string_to_cstr(%nyx_string* %2174)
  call void @nyx_print_string(i8* %2175)
  br label %merge406
merge406:
  %2176 = getelementptr [36 x i8], [36 x i8]* @.str228, i32 0, i32 0
  %2177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2176, i64 35)
  %2178 = call i8* @nyx_string_to_cstr(%nyx_string* %2177)
  call void @nyx_print_string(i8* %2178)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %2179 = getelementptr [28 x i8], [28 x i8]* @.str229, i32 0, i32 0
  %2180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2179, i64 27)
  %2181 = call i8* @nyx_string_to_cstr(%nyx_string* %2180)
  %2182 = call %nyx_string* @nyx_exec(i8* %2181)
  %2183 = alloca %nyx_string*
  store %nyx_string* %2182, %nyx_string** %2183
  %2184 = load %nyx_string*, %nyx_string** %2183
  %2185 = getelementptr [9 x i8], [9 x i8]* @.str230, i32 0, i32 0
  %2186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2185, i64 8)
  %2187 = call i64 @nyx_string_index_of(%nyx_string* %2184, %nyx_string* %2186)
  %2188 = alloca i64
  store i64 %2187, i64* %2188
  %2189 = load i64, i64* %2188
  %2190 = icmp slt i64 %2189, 0
  br i1 %2190, label %then407, label %else408
then407:
  %2191 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %2192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2191, i64 0)
  ret %nyx_string* %2192
else408:
  br label %merge409
merge409:
  %2193 = load i64, i64* %2188
  %2194 = add i64 %2193, 8
  %2195 = alloca i64
  store i64 %2194, i64* %2195
  %2196 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %2197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2196, i64 0)
  %2198 = alloca %nyx_string*
  store %nyx_string* %2197, %nyx_string** %2198
  %2199 = call i8* @llvm.stacksave()
  br label %while_cond410
while_cond410:
  %2200 = load i64, i64* %2195
  %2201 = load %nyx_string*, %nyx_string** %2183
  %2202 = call i64 @nyx_string_byte_length(%nyx_string* %2201)
  %2203 = icmp slt i64 %2200, %2202
  br i1 %2203, label %while_body411, label %while_end412
while_body411:
  call void @llvm.stackrestore(i8* %2199)
  %2204 = load %nyx_string*, %nyx_string** %2183
  %2205 = load i64, i64* %2195
  %2206 = call i8 @nyx_string_char_at(%nyx_string* %2204, i64 %2205)
  %2207 = zext i8 %2206 to i64
  %2208 = alloca i64
  store i64 %2207, i64* %2208
  %2209 = alloca i1
  store i1 false, i1* %2209
  %2210 = load i64, i64* %2208
  %2211 = icmp sge i64 %2210, 48
  br i1 %2211, label %sc_and_rhs413, label %sc_and_end414
sc_and_rhs413:
  %2212 = load i64, i64* %2208
  %2213 = icmp sle i64 %2212, 57
  store i1 %2213, i1* %2209
  br label %sc_and_end414
sc_and_end414:
  %2214 = load i1, i1* %2209
  br i1 %2214, label %then415, label %else416
then415:
  %2215 = load %nyx_string*, %nyx_string** %2198
  %2216 = load %nyx_string*, %nyx_string** %2183
  %2217 = load i64, i64* %2195
  %2218 = load i64, i64* %2195
  %2219 = add i64 %2218, 1
  %2220 = call %nyx_string* @nyx_string_substring(%nyx_string* %2216, i64 %2217, i64 %2219)
  %2221 = call %nyx_string* @nyx_string_concat(%nyx_string* %2215, %nyx_string* %2220)
  store %nyx_string* %2221, %nyx_string** %2198
  %2222 = load i64, i64* %2195
  %2223 = add i64 %2222, 1
  store i64 %2223, i64* %2195
  br label %merge417
else416:
  %2224 = load %nyx_string*, %nyx_string** %2183
  %2225 = call i64 @nyx_string_byte_length(%nyx_string* %2224)
  store i64 %2225, i64* %2195
  br label %merge417
merge417:
  br label %while_cond410
while_end412:
  %2226 = load %nyx_string*, %nyx_string** %2198
  ret %nyx_string* %2226
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %2227 = getelementptr [10 x i8], [10 x i8]* @.str233, i32 0, i32 0
  %2228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2227, i64 9)
  %2229 = load %nyx_string*, %nyx_string** %path.ptr
  %2230 = call %nyx_string* @nyx_string_concat(%nyx_string* %2228, %nyx_string* %2229)
  %2231 = getelementptr [2 x i8], [2 x i8]* @.str234, i32 0, i32 0
  %2232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2231, i64 1)
  %2233 = call %nyx_string* @nyx_string_concat(%nyx_string* %2230, %nyx_string* %2232)
  %2234 = call i8* @nyx_string_to_cstr(%nyx_string* %2233)
  %2235 = call i64 @nyx_exec_code(i8* %2234)
  %2236 = icmp eq i64 %2235, 0
  ret i1 %2236
}

define internal %nyx_string* @cov_find_profdata(
) {
  %2237 = call %nyx_string* @cov_clang_major()
  %2238 = alloca %nyx_string*
  store %nyx_string* %2237, %nyx_string** %2238
  %2239 = load %nyx_string*, %nyx_string** %2238
  %2240 = getelementptr [1 x i8], [1 x i8]* @.str235, i32 0, i32 0
  %2241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2240, i64 0)
  %2242 = call i1 @nyx_string_equals(%nyx_string* %2239, %nyx_string* %2241)
  %2243 = xor i1 %2242, true
  br i1 %2243, label %then418, label %else419
then418:
  %2244 = getelementptr [26 x i8], [26 x i8]* @.str236, i32 0, i32 0
  %2245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2244, i64 25)
  %2246 = load %nyx_string*, %nyx_string** %2238
  %2247 = call %nyx_string* @nyx_string_concat(%nyx_string* %2245, %nyx_string* %2246)
  %2248 = getelementptr [13 x i8], [13 x i8]* @.str237, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2248, i64 12)
  %2250 = call %nyx_string* @nyx_string_concat(%nyx_string* %2247, %nyx_string* %2249)
  %2251 = call i8* @nyx_string_to_cstr(%nyx_string* %2250)
  %2252 = call %nyx_string* @nyx_exec(i8* %2251)
  %2253 = call %nyx_string* @nyx_string_trim(%nyx_string* %2252)
  %2254 = alloca %nyx_string*
  store %nyx_string* %2253, %nyx_string** %2254
  %2255 = load %nyx_string*, %nyx_string** %2254
  %2256 = getelementptr [1 x i8], [1 x i8]* @.str238, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2256, i64 0)
  %2258 = call i1 @nyx_string_equals(%nyx_string* %2255, %nyx_string* %2257)
  %2259 = xor i1 %2258, true
  br i1 %2259, label %then421, label %else422
then421:
  %2260 = load %nyx_string*, %nyx_string** %2254
  ret %nyx_string* %2260
else422:
  br label %merge423
merge423:
  br label %merge420
else419:
  br label %merge420
merge420:
  %2261 = getelementptr [37 x i8], [37 x i8]* @.str239, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2261, i64 36)
  %2263 = call i8* @nyx_string_to_cstr(%nyx_string* %2262)
  %2264 = call %nyx_string* @nyx_exec(i8* %2263)
  %2265 = call %nyx_string* @nyx_string_trim(%nyx_string* %2264)
  ret %nyx_string* %2265
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %2266 = call { i64, i8* }* @nyx_array_new_ptr()
  %2267 = alloca { i64, i8* }*
  store { i64, i8* }* %2266, { i64, i8* }** %2267
  %2268 = alloca i64
  store i64 0, i64* %2268
  %2269 = alloca i64
  store i64 0, i64* %2269
  %2270 = call i8* @llvm.stacksave()
  br label %while_cond424
while_cond424:
  %2271 = load i64, i64* %2269
  %2272 = load %nyx_string*, %nyx_string** %line.ptr
  %2273 = call i64 @nyx_string_byte_length(%nyx_string* %2272)
  %2274 = icmp slt i64 %2271, %2273
  br i1 %2274, label %while_body425, label %while_end426
while_body425:
  call void @llvm.stackrestore(i8* %2270)
  %2275 = load %nyx_string*, %nyx_string** %line.ptr
  %2276 = load i64, i64* %2269
  %2277 = call i8 @nyx_string_char_at(%nyx_string* %2275, i64 %2276)
  %2278 = zext i8 %2277 to i64
  %2279 = icmp eq i64 %2278, 9
  br i1 %2279, label %then427, label %else428
then427:
  %2280 = load { i64, i8* }*, { i64, i8* }** %2267
  %2281 = load %nyx_string*, %nyx_string** %line.ptr
  %2282 = load i64, i64* %2268
  %2283 = load i64, i64* %2269
  %2284 = call %nyx_string* @nyx_string_substring(%nyx_string* %2281, i64 %2282, i64 %2283)
  %2285 = ptrtoint %nyx_string* %2284 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2280, i64 %2285, i64 2)
  %2286 = load i64, i64* %2269
  %2287 = add i64 %2286, 1
  store i64 %2287, i64* %2268
  br label %merge429
else428:
  br label %merge429
merge429:
  %2288 = load i64, i64* %2269
  %2289 = add i64 %2288, 1
  store i64 %2289, i64* %2269
  br label %while_cond424
while_end426:
  %2290 = load { i64, i8* }*, { i64, i8* }** %2267
  %2291 = load %nyx_string*, %nyx_string** %line.ptr
  %2292 = load i64, i64* %2268
  %2293 = load %nyx_string*, %nyx_string** %line.ptr
  %2294 = call i64 @nyx_string_byte_length(%nyx_string* %2293)
  %2295 = call %nyx_string* @nyx_string_substring(%nyx_string* %2291, i64 %2292, i64 %2294)
  %2296 = ptrtoint %nyx_string* %2295 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2290, i64 %2296, i64 2)
  %2297 = load { i64, i8* }*, { i64, i8* }** %2267
  ret { i64, i8* }* %2297
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %2298 = load i64, i64* %n.ptr
  %2299 = call %nyx_string* @nyx_string_from_int(i64 %2298)
  %2300 = alloca %nyx_string*
  store %nyx_string* %2299, %nyx_string** %2300
  %2301 = getelementptr [2 x i8], [2 x i8]* @.str240, i32 0, i32 0
  %2302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2301, i64 1)
  %2303 = alloca %nyx_string*
  store %nyx_string* %2302, %nyx_string** %2303
  %2304 = call i8* @llvm.stacksave()
  br label %while_cond430
while_cond430:
  %2305 = load %nyx_string*, %nyx_string** %2300
  %2306 = call i64 @nyx_string_byte_length(%nyx_string* %2305)
  %2307 = icmp slt i64 %2306, 9
  br i1 %2307, label %while_body431, label %while_end432
while_body431:
  call void @llvm.stackrestore(i8* %2304)
  %2308 = load %nyx_string*, %nyx_string** %2303
  %2309 = load %nyx_string*, %nyx_string** %2300
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2308, %nyx_string* %2309)
  store %nyx_string* %2310, %nyx_string** %2300
  br label %while_cond430
while_end432:
  %2311 = load %nyx_string*, %nyx_string** %2300
  ret %nyx_string* %2311
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %2312 = call i8* @nyx_map_new(i32 0)
  %2313 = alloca i8*
  store i8* %2312, i8** %2313
  %2314 = load %nyx_string*, %nyx_string** %show.ptr
  %2315 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2315, i64 1)
  %2317 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2314, %nyx_string* %2316)
  %2318 = alloca { i64, i8* }*
  store { i64, i8* }* %2317, { i64, i8* }** %2318
  %2319 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %2320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2319, i64 0)
  %2321 = alloca %nyx_string*
  store %nyx_string* %2320, %nyx_string** %2321
  %2322 = alloca i64
  store i64 0, i64* %2322
  %2323 = getelementptr [3 x i8], [3 x i8]* @.str243, i32 0, i32 0
  %2324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2323, i64 2)
  %2325 = alloca %nyx_string*
  store %nyx_string* %2324, %nyx_string** %2325
  %2326 = getelementptr [4 x i8], [4 x i8]* @.str244, i32 0, i32 0
  %2327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2326, i64 3)
  %2328 = alloca %nyx_string*
  store %nyx_string* %2327, %nyx_string** %2328
  %2329 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %2330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2329, i64 1)
  %2331 = alloca %nyx_string*
  store %nyx_string* %2330, %nyx_string** %2331
  %2332 = getelementptr [2 x i8], [2 x i8]* @.str246, i32 0, i32 0
  %2333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2332, i64 1)
  %2334 = alloca %nyx_string*
  store %nyx_string* %2333, %nyx_string** %2334
  %2335 = getelementptr [1 x i8], [1 x i8]* @.str247, i32 0, i32 0
  %2336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2335, i64 0)
  %2337 = alloca %nyx_string*
  store %nyx_string* %2336, %nyx_string** %2337
  %2338 = getelementptr [14 x i8], [14 x i8]* @.str248, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2338, i64 13)
  %2340 = alloca %nyx_string*
  store %nyx_string* %2339, %nyx_string** %2340
  %2341 = getelementptr [2 x i8], [2 x i8]* @.str249, i32 0, i32 0
  %2342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2341, i64 1)
  %2343 = alloca %nyx_string*
  store %nyx_string* %2342, %nyx_string** %2343
  %2344 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %2345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2344, i64 1)
  %2346 = alloca %nyx_string*
  store %nyx_string* %2345, %nyx_string** %2346
  %2347 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %2348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2347, i64 1)
  %2349 = alloca %nyx_string*
  store %nyx_string* %2348, %nyx_string** %2349
  %2350 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2350, i64 1)
  %2352 = alloca %nyx_string*
  store %nyx_string* %2351, %nyx_string** %2352
  %2353 = call i8* @llvm.stacksave()
  br label %while_cond433
while_cond433:
  %2354 = load i64, i64* %2322
  %2355 = load { i64, i8* }*, { i64, i8* }** %2318
  %2356 = call i64 @nyx_array_length({ i64, i8* }* %2355)
  %2357 = icmp slt i64 %2354, %2356
  br i1 %2357, label %while_body434, label %while_end435
while_body434:
  call void @llvm.stackrestore(i8* %2353)
  %2358 = load { i64, i8* }*, { i64, i8* }** %2318
  %2359 = load i64, i64* %2322
  %2360 = call i64 @nyx_array_get_checked({ i64, i8* }* %2358, i64 %2359, i64 2)
  %2361 = inttoptr i64 %2360 to %nyx_string*
  %2362 = alloca %nyx_string*
  store %nyx_string* %2361, %nyx_string** %2362
  %2363 = alloca i1
  store i1 false, i1* %2363
  %2364 = alloca i1
  store i1 false, i1* %2364
  %2365 = load %nyx_string*, %nyx_string** %2362
  %2366 = load %nyx_string*, %nyx_string** %2325
  %2367 = call i1 @nyx_string_starts_with(%nyx_string* %2365, %nyx_string* %2366)
  br i1 %2367, label %sc_and_rhs436, label %sc_and_end437
sc_and_rhs436:
  %2368 = load %nyx_string*, %nyx_string** %2362
  %2369 = load %nyx_string*, %nyx_string** %2328
  %2370 = call i1 @nyx_string_starts_with(%nyx_string* %2368, %nyx_string* %2369)
  %2371 = xor i1 %2370, true
  store i1 %2371, i1* %2364
  br label %sc_and_end437
sc_and_end437:
  %2372 = load i1, i1* %2364
  br i1 %2372, label %sc_and_rhs438, label %sc_and_end439
sc_and_rhs438:
  %2373 = load %nyx_string*, %nyx_string** %2362
  %2374 = load %nyx_string*, %nyx_string** %2331
  %2375 = call i1 @nyx_string_ends_with(%nyx_string* %2373, %nyx_string* %2374)
  store i1 %2375, i1* %2363
  br label %sc_and_end439
sc_and_end439:
  %2376 = load i1, i1* %2363
  br i1 %2376, label %then440, label %else441
then440:
  %2377 = load %nyx_string*, %nyx_string** %2362
  %2378 = load %nyx_string*, %nyx_string** %2362
  %2379 = call i64 @nyx_string_byte_length(%nyx_string* %2378)
  %2380 = sub i64 %2379, 1
  %2381 = call %nyx_string* @nyx_string_substring(%nyx_string* %2377, i64 2, i64 %2380)
  %2382 = alloca %nyx_string*
  store %nyx_string* %2381, %nyx_string** %2382
  %2383 = load %nyx_string*, %nyx_string** %2382
  %2384 = load %nyx_string*, %nyx_string** %2334
  %2385 = call i64 @nyx_string_index_of(%nyx_string* %2383, %nyx_string* %2384)
  %2386 = alloca i64
  store i64 %2385, i64* %2386
  %2387 = load i64, i64* %2386
  %2388 = icmp sge i64 %2387, 0
  br i1 %2388, label %then443, label %else444
then443:
  %2389 = load %nyx_string*, %nyx_string** %2382
  %2390 = load i64, i64* %2386
  %2391 = add i64 %2390, 1
  %2392 = load %nyx_string*, %nyx_string** %2382
  %2393 = call i64 @nyx_string_byte_length(%nyx_string* %2392)
  %2394 = call %nyx_string* @nyx_string_substring(%nyx_string* %2389, i64 %2391, i64 %2393)
  store %nyx_string* %2394, %nyx_string** %2382
  br label %merge445
else444:
  br label %merge445
merge445:
  %2395 = load %nyx_string*, %nyx_string** %2382
  store %nyx_string* %2395, %nyx_string** %2321
  br label %merge442
else441:
  %2396 = alloca i1
  store i1 false, i1* %2396
  %2397 = load %nyx_string*, %nyx_string** %2321
  %2398 = load %nyx_string*, %nyx_string** %2337
  %2399 = call i1 @nyx_string_equals(%nyx_string* %2397, %nyx_string* %2398)
  %2400 = xor i1 %2399, true
  br i1 %2400, label %sc_and_rhs446, label %sc_and_end447
sc_and_rhs446:
  %2401 = load %nyx_string*, %nyx_string** %2362
  %2402 = load %nyx_string*, %nyx_string** %2340
  %2403 = call i1 @nyx_string_contains(%nyx_string* %2401, %nyx_string* %2402)
  store i1 %2403, i1* %2396
  br label %sc_and_end447
sc_and_end447:
  %2404 = load i1, i1* %2396
  br i1 %2404, label %then448, label %else449
then448:
  %2405 = load %nyx_string*, %nyx_string** %2362
  %2406 = load %nyx_string*, %nyx_string** %2343
  %2407 = call i64 @nyx_string_index_of(%nyx_string* %2405, %nyx_string* %2406)
  %2408 = alloca i64
  store i64 %2407, i64* %2408
  %2409 = load %nyx_string*, %nyx_string** %2362
  %2410 = load %nyx_string*, %nyx_string** %2346
  %2411 = call i64 @nyx_string_index_of(%nyx_string* %2409, %nyx_string* %2410)
  %2412 = alloca i64
  store i64 %2411, i64* %2412
  %2413 = alloca i1
  store i1 false, i1* %2413
  %2414 = load i64, i64* %2408
  %2415 = icmp sge i64 %2414, 0
  br i1 %2415, label %sc_and_rhs451, label %sc_and_end452
sc_and_rhs451:
  %2416 = load i64, i64* %2412
  %2417 = load i64, i64* %2408
  %2418 = icmp sgt i64 %2416, %2417
  store i1 %2418, i1* %2413
  br label %sc_and_end452
sc_and_end452:
  %2419 = load i1, i1* %2413
  br i1 %2419, label %then453, label %else454
then453:
  %2420 = load %nyx_string*, %nyx_string** %2362
  %2421 = load i64, i64* %2408
  %2422 = add i64 %2421, 1
  %2423 = load i64, i64* %2412
  %2424 = call %nyx_string* @nyx_string_substring(%nyx_string* %2420, i64 %2422, i64 %2423)
  %2425 = load %nyx_string*, %nyx_string** %2349
  %2426 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2424, %nyx_string* %2425)
  %2427 = alloca { i64, i8* }*
  store { i64, i8* }* %2426, { i64, i8* }** %2427
  %2428 = alloca i64
  store i64 0, i64* %2428
  %2429 = call i8* @llvm.stacksave()
  br label %while_cond456
while_cond456:
  %2430 = load i64, i64* %2428
  %2431 = load { i64, i8* }*, { i64, i8* }** %2427
  %2432 = call i64 @nyx_array_length({ i64, i8* }* %2431)
  %2433 = icmp slt i64 %2430, %2432
  br i1 %2433, label %while_body457, label %while_end458
while_body457:
  call void @llvm.stackrestore(i8* %2429)
  %2434 = load { i64, i8* }*, { i64, i8* }** %2427
  %2435 = load i64, i64* %2428
  %2436 = call i64 @nyx_array_get_checked({ i64, i8* }* %2434, i64 %2435, i64 2)
  %2437 = inttoptr i64 %2436 to %nyx_string*
  %2438 = alloca %nyx_string*
  store %nyx_string* %2437, %nyx_string** %2438
  %2439 = load %nyx_string*, %nyx_string** %2438
  %2440 = call %nyx_string* @nyx_string_trim(%nyx_string* %2439)
  %2441 = call i64 @nyx_string_to_int(%nyx_string* %2440)
  %2442 = icmp sgt i64 %2441, 0
  br i1 %2442, label %then459, label %else460
then459:
  %2443 = load i8*, i8** %2313
  %2444 = load %nyx_string*, %nyx_string** %2321
  %2445 = load %nyx_string*, %nyx_string** %2352
  %2446 = call i8* @nyx_string_to_cstr(%nyx_string* %2444)
  %2447 = bitcast %nyx_string* %2445 to i8*
  call void @nyx_map_insert_str(i8* %2443, i8* %2446, i8* %2447)
  br label %merge461
else460:
  br label %merge461
merge461:
  %2448 = load i64, i64* %2428
  %2449 = add i64 %2448, 1
  store i64 %2449, i64* %2428
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
  %2450 = load i64, i64* %2322
  %2451 = add i64 %2450, 1
  store i64 %2451, i64* %2322
  br label %while_cond433
while_end435:
  %2452 = load i8*, i8** %2313
  ret i8* %2452
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %2453 = call { i64, i8* }* @nyx_array_new_ptr()
  %2454 = alloca { i64, i8* }*
  store { i64, i8* }* %2453, { i64, i8* }** %2454
  %2455 = getelementptr [4 x i8], [4 x i8]* @.str253, i32 0, i32 0
  %2456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2455, i64 3)
  %2457 = call i8* @nyx_string_to_cstr(%nyx_string* %2456)
  %2458 = call i1 @nyx_file_exists(i8* %2457)
  %2459 = xor i1 %2458, true
  br i1 %2459, label %then462, label %else463
then462:
  %2460 = load { i64, i8* }*, { i64, i8* }** %2454
  ret { i64, i8* }* %2460
else463:
  br label %merge464
merge464:
  %2461 = getelementptr [50 x i8], [50 x i8]* @.str254, i32 0, i32 0
  %2462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2461, i64 49)
  %2463 = call i8* @nyx_string_to_cstr(%nyx_string* %2462)
  %2464 = call %nyx_string* @nyx_exec(i8* %2463)
  %2465 = alloca %nyx_string*
  store %nyx_string* %2464, %nyx_string** %2465
  %2466 = load %nyx_string*, %nyx_string** %2465
  %2467 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2467, i64 1)
  %2469 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2466, %nyx_string* %2468)
  %2470 = alloca { i64, i8* }*
  store { i64, i8* }* %2469, { i64, i8* }** %2470
  %2471 = alloca i64
  store i64 0, i64* %2471
  %2472 = getelementptr [4 x i8], [4 x i8]* @.str256, i32 0, i32 0
  %2473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2472, i64 3)
  %2474 = alloca %nyx_string*
  store %nyx_string* %2473, %nyx_string** %2474
  %2475 = getelementptr [9 x i8], [9 x i8]* @.str257, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2475, i64 8)
  %2477 = alloca %nyx_string*
  store %nyx_string* %2476, %nyx_string** %2477
  %2478 = call i8* @llvm.stacksave()
  br label %while_cond465
while_cond465:
  %2479 = load i64, i64* %2471
  %2480 = load { i64, i8* }*, { i64, i8* }** %2470
  %2481 = call i64 @nyx_array_length({ i64, i8* }* %2480)
  %2482 = icmp slt i64 %2479, %2481
  br i1 %2482, label %while_body466, label %while_end467
while_body466:
  call void @llvm.stackrestore(i8* %2478)
  %2483 = load { i64, i8* }*, { i64, i8* }** %2470
  %2484 = load i64, i64* %2471
  %2485 = call i64 @nyx_array_get_checked({ i64, i8* }* %2483, i64 %2484, i64 2)
  %2486 = inttoptr i64 %2485 to %nyx_string*
  %2487 = alloca %nyx_string*
  store %nyx_string* %2486, %nyx_string** %2487
  %2488 = load %nyx_string*, %nyx_string** %2487
  %2489 = call %nyx_string* @nyx_string_trim(%nyx_string* %2488)
  %2490 = alloca %nyx_string*
  store %nyx_string* %2489, %nyx_string** %2490
  %2491 = alloca i1
  store i1 false, i1* %2491
  %2492 = load %nyx_string*, %nyx_string** %2490
  %2493 = load %nyx_string*, %nyx_string** %2474
  %2494 = call i1 @nyx_string_ends_with(%nyx_string* %2492, %nyx_string* %2493)
  br i1 %2494, label %sc_and_rhs468, label %sc_and_end469
sc_and_rhs468:
  %2495 = load %nyx_string*, %nyx_string** %2490
  %2496 = load %nyx_string*, %nyx_string** %2477
  %2497 = call i1 @nyx_string_ends_with(%nyx_string* %2495, %nyx_string* %2496)
  %2498 = xor i1 %2497, true
  store i1 %2498, i1* %2491
  br label %sc_and_end469
sc_and_end469:
  %2499 = load i1, i1* %2491
  br i1 %2499, label %then470, label %else471
then470:
  %2500 = load { i64, i8* }*, { i64, i8* }** %2454
  %2501 = load %nyx_string*, %nyx_string** %2490
  %2502 = load %nyx_string*, %nyx_string** %2490
  %2503 = call i64 @nyx_string_byte_length(%nyx_string* %2502)
  %2504 = sub i64 %2503, 3
  %2505 = call %nyx_string* @nyx_string_substring(%nyx_string* %2501, i64 0, i64 %2504)
  %2506 = ptrtoint %nyx_string* %2505 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2500, i64 %2506, i64 2)
  br label %merge472
else471:
  br label %merge472
merge472:
  %2507 = load i64, i64* %2471
  %2508 = add i64 %2507, 1
  store i64 %2508, i64* %2471
  br label %while_cond465
while_end467:
  %2509 = load { i64, i8* }*, { i64, i8* }** %2454
  ret { i64, i8* }* %2509
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
  %2510 = getelementptr [1 x i8], [1 x i8]* @.str258, i32 0, i32 0
  %2511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2510, i64 0)
  %2512 = alloca %nyx_string*
  store %nyx_string* %2511, %nyx_string** %2512
  %2513 = alloca i64
  store i64 0, i64* %2513
  %2514 = getelementptr [9 x i8], [9 x i8]* @.str259, i32 0, i32 0
  %2515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2514, i64 8)
  %2516 = alloca %nyx_string*
  store %nyx_string* %2515, %nyx_string** %2516
  %2517 = getelementptr [3 x i8], [3 x i8]* @.str260, i32 0, i32 0
  %2518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2517, i64 2)
  %2519 = alloca %nyx_string*
  store %nyx_string* %2518, %nyx_string** %2519
  %2520 = call i8* @llvm.stacksave()
  br label %while_cond473
while_cond473:
  %2521 = load i64, i64* %2513
  %2522 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2523 = call i64 @nyx_array_length({ i64, i8* }* %2522)
  %2524 = icmp slt i64 %2521, %2523
  br i1 %2524, label %while_body474, label %while_end475
while_body474:
  call void @llvm.stackrestore(i8* %2520)
  %2525 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2526 = load i64, i64* %2513
  %2527 = call i64 @nyx_array_get_checked({ i64, i8* }* %2525, i64 %2526, i64 2)
  %2528 = inttoptr i64 %2527 to %nyx_string*
  %2529 = alloca %nyx_string*
  store %nyx_string* %2528, %nyx_string** %2529
  %2530 = load %nyx_string*, %nyx_string** %2512
  %2531 = load %nyx_string*, %nyx_string** %2516
  %2532 = call %nyx_string* @nyx_string_concat(%nyx_string* %2530, %nyx_string* %2531)
  %2533 = load %nyx_string*, %nyx_string** %2529
  %2534 = call %nyx_string* @nyx_string_concat(%nyx_string* %2532, %nyx_string* %2533)
  %2535 = load %nyx_string*, %nyx_string** %2519
  %2536 = call %nyx_string* @nyx_string_concat(%nyx_string* %2534, %nyx_string* %2535)
  store %nyx_string* %2536, %nyx_string** %2512
  %2537 = load i64, i64* %2513
  %2538 = add i64 %2537, 1
  store i64 %2538, i64* %2513
  br label %while_cond473
while_end475:
  %2539 = load %nyx_string*, %nyx_string** %2512
  %2540 = getelementptr [36 x i8], [36 x i8]* @.str261, i32 0, i32 0
  %2541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2540, i64 35)
  %2542 = call %nyx_string* @nyx_string_concat(%nyx_string* %2539, %nyx_string* %2541)
  store %nyx_string* %2542, %nyx_string** %2512
  %2543 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2544 = getelementptr [13 x i8], [13 x i8]* @.str262, i32 0, i32 0
  %2545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2544, i64 12)
  %2546 = call %nyx_string* @nyx_string_concat(%nyx_string* %2543, %nyx_string* %2545)
  %2547 = load %nyx_string*, %nyx_string** %2512
  %2548 = ptrtoint %nyx_string* %2547 to i64
  %2549 = call i8* @nyx_string_to_cstr(%nyx_string* %2546)
  %2550 = inttoptr i64 %2548 to %nyx_string*
  %2551 = call i1 @nyx_write_file_safe(i8* %2549, %nyx_string* %2550)
  %2552 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2553 = getelementptr [14 x i8], [14 x i8]* @.str263, i32 0, i32 0
  %2554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2553, i64 13)
  %2555 = call %nyx_string* @nyx_string_concat(%nyx_string* %2552, %nyx_string* %2554)
  %2556 = alloca %nyx_string*
  store %nyx_string* %2555, %nyx_string** %2556
  %2557 = getelementptr [13 x i8], [13 x i8]* @.str264, i32 0, i32 0
  %2558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2557, i64 12)
  %2559 = getelementptr [8 x i8], [8 x i8]* @.str265, i32 0, i32 0
  %2560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2559, i64 7)
  %2561 = call %nyx_string* @nyx_string_concat(%nyx_string* %2558, %nyx_string* %2560)
  %2562 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2563 = call %nyx_string* @nyx_string_concat(%nyx_string* %2561, %nyx_string* %2562)
  %2564 = getelementptr [19 x i8], [19 x i8]* @.str266, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2564, i64 18)
  %2566 = call %nyx_string* @nyx_string_concat(%nyx_string* %2563, %nyx_string* %2565)
  %2567 = getelementptr [5 x i8], [5 x i8]* @.str267, i32 0, i32 0
  %2568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2567, i64 4)
  %2569 = call %nyx_string* @nyx_string_concat(%nyx_string* %2566, %nyx_string* %2568)
  %2570 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2571 = call %nyx_string* @nyx_string_concat(%nyx_string* %2569, %nyx_string* %2570)
  %2572 = getelementptr [24 x i8], [24 x i8]* @.str268, i32 0, i32 0
  %2573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2572, i64 23)
  %2574 = call %nyx_string* @nyx_string_concat(%nyx_string* %2571, %nyx_string* %2573)
  %2575 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2575, i64 4)
  %2577 = call %nyx_string* @nyx_string_concat(%nyx_string* %2574, %nyx_string* %2576)
  %2578 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2579 = call %nyx_string* @nyx_string_concat(%nyx_string* %2577, %nyx_string* %2578)
  %2580 = getelementptr [3 x i8], [3 x i8]* @.str270, i32 0, i32 0
  %2581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2580, i64 2)
  %2582 = call %nyx_string* @nyx_string_concat(%nyx_string* %2579, %nyx_string* %2581)
  %2583 = getelementptr [137 x i8], [137 x i8]* @.str271, i32 0, i32 0
  %2584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2583, i64 136)
  %2585 = call %nyx_string* @nyx_string_concat(%nyx_string* %2582, %nyx_string* %2584)
  %2586 = getelementptr [43 x i8], [43 x i8]* @.str272, i32 0, i32 0
  %2587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2586, i64 42)
  %2588 = call %nyx_string* @nyx_string_concat(%nyx_string* %2585, %nyx_string* %2587)
  %2589 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2590 = call %nyx_string* @nyx_string_concat(%nyx_string* %2588, %nyx_string* %2589)
  %2591 = getelementptr [38 x i8], [38 x i8]* @.str273, i32 0, i32 0
  %2592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2591, i64 37)
  %2593 = call %nyx_string* @nyx_string_concat(%nyx_string* %2590, %nyx_string* %2592)
  %2594 = load %nyx_string*, %nyx_string** %2556
  %2595 = call %nyx_string* @nyx_string_concat(%nyx_string* %2593, %nyx_string* %2594)
  %2596 = getelementptr [24 x i8], [24 x i8]* @.str274, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2596, i64 23)
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2597)
  %2599 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2600 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2599)
  %2601 = getelementptr [21 x i8], [21 x i8]* @.str275, i32 0, i32 0
  %2602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2601, i64 20)
  %2603 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2602)
  %2604 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %2605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2604, i64 6)
  %2606 = call %nyx_string* @nyx_string_concat(%nyx_string* %2603, %nyx_string* %2605)
  %2607 = getelementptr [17 x i8], [17 x i8]* @.str277, i32 0, i32 0
  %2608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2607, i64 16)
  %2609 = call %nyx_string* @nyx_string_concat(%nyx_string* %2606, %nyx_string* %2608)
  %2610 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2611 = call %nyx_string* @nyx_string_concat(%nyx_string* %2609, %nyx_string* %2610)
  %2612 = getelementptr [19 x i8], [19 x i8]* @.str278, i32 0, i32 0
  %2613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2612, i64 18)
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2611, %nyx_string* %2613)
  %2615 = getelementptr [10 x i8], [10 x i8]* @.str279, i32 0, i32 0
  %2616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2615, i64 9)
  %2617 = call %nyx_string* @nyx_string_concat(%nyx_string* %2614, %nyx_string* %2616)
  %2618 = alloca %nyx_string*
  store %nyx_string* %2617, %nyx_string** %2618
  %2619 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2620 = getelementptr [13 x i8], [13 x i8]* @.str280, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2620, i64 12)
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2619, %nyx_string* %2621)
  %2623 = load %nyx_string*, %nyx_string** %2618
  %2624 = ptrtoint %nyx_string* %2623 to i64
  %2625 = call i8* @nyx_string_to_cstr(%nyx_string* %2622)
  %2626 = inttoptr i64 %2624 to %nyx_string*
  %2627 = call i1 @nyx_write_file_safe(i8* %2625, %nyx_string* %2626)
  %2628 = getelementptr [7 x i8], [7 x i8]* @.str281, i32 0, i32 0
  %2629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2628, i64 6)
  %2630 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2630)
  %2632 = getelementptr [14 x i8], [14 x i8]* @.str282, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2632, i64 13)
  %2634 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2633)
  %2635 = call i8* @nyx_string_to_cstr(%nyx_string* %2634)
  %2636 = call i64 @nyx_exec_code(i8* %2635)
  %2637 = load %nyx_string*, %nyx_string** %2556
  ret %nyx_string* %2637
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
  %2638 = getelementptr [9 x i8], [9 x i8]* @.str283, i32 0, i32 0
  %2639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2638, i64 8)
  %2640 = call i8* @nyx_string_to_cstr(%nyx_string* %2639)
  %2641 = call %nyx_string* @nyx_getenv(i8* %2640)
  %2642 = alloca %nyx_string*
  store %nyx_string* %2641, %nyx_string** %2642
  %2643 = getelementptr [4 x i8], [4 x i8]* @.str284, i32 0, i32 0
  %2644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2643, i64 3)
  %2645 = call i8* @nyx_string_to_cstr(%nyx_string* %2644)
  %2646 = call %nyx_string* @nyx_getenv(i8* %2645)
  %2647 = alloca %nyx_string*
  store %nyx_string* %2646, %nyx_string** %2647
  %2648 = getelementptr [1 x i8], [1 x i8]* @.str285, i32 0, i32 0
  %2649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2648, i64 0)
  %2650 = call i8* @nyx_string_to_cstr(%nyx_string* %2649)
  call void @nyx_print_string(i8* %2650)
  %2651 = getelementptr [36 x i8], [36 x i8]* @.str286, i32 0, i32 0
  %2652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2651, i64 35)
  %2653 = call i8* @nyx_string_to_cstr(%nyx_string* %2652)
  call void @nyx_print_string(i8* %2653)
  %2654 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2654, i64 0)
  %2656 = alloca %nyx_string*
  store %nyx_string* %2655, %nyx_string** %2656
  %2657 = alloca i64
  store i64 0, i64* %2657
  %2658 = call i8* @nyx_map_new(i32 0)
  %2659 = alloca i8*
  store i8* %2658, i8** %2659
  %2660 = call { i64, i8* }* @nyx_array_new_ptr()
  %2661 = alloca { i64, i8* }*
  store { i64, i8* }* %2660, { i64, i8* }** %2661
  %2662 = alloca i64
  store i64 0, i64* %2662
  %2663 = getelementptr [2 x i8], [2 x i8]* @.str288, i32 0, i32 0
  %2664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2663, i64 1)
  %2665 = alloca %nyx_string*
  store %nyx_string* %2664, %nyx_string** %2665
  %2666 = getelementptr [9 x i8], [9 x i8]* @.str289, i32 0, i32 0
  %2667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2666, i64 8)
  %2668 = alloca %nyx_string*
  store %nyx_string* %2667, %nyx_string** %2668
  %2669 = getelementptr [3 x i8], [3 x i8]* @.str290, i32 0, i32 0
  %2670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2669, i64 2)
  %2671 = alloca %nyx_string*
  store %nyx_string* %2670, %nyx_string** %2671
  %2672 = getelementptr [2 x i8], [2 x i8]* @.str291, i32 0, i32 0
  %2673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2672, i64 1)
  %2674 = alloca %nyx_string*
  store %nyx_string* %2673, %nyx_string** %2674
  %2675 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %2676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2675, i64 1)
  %2677 = alloca %nyx_string*
  store %nyx_string* %2676, %nyx_string** %2677
  %2678 = call i8* @llvm.stacksave()
  br label %while_cond476
while_cond476:
  %2679 = load i64, i64* %2662
  %2680 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2681 = call i64 @nyx_array_length({ i64, i8* }* %2680)
  %2682 = icmp slt i64 %2679, %2681
  br i1 %2682, label %while_body477, label %while_end478
while_body477:
  call void @llvm.stackrestore(i8* %2678)
  %2683 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2684 = load i64, i64* %2662
  %2685 = call i64 @nyx_array_get_checked({ i64, i8* }* %2683, i64 %2684, i64 2)
  %2686 = inttoptr i64 %2685 to %nyx_string*
  %2687 = alloca %nyx_string*
  store %nyx_string* %2686, %nyx_string** %2687
  %2688 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2689 = load i64, i64* %2662
  %2690 = call i64 @nyx_array_get_checked({ i64, i8* }* %2688, i64 %2689, i64 2)
  %2691 = inttoptr i64 %2690 to %nyx_string*
  %2692 = alloca %nyx_string*
  store %nyx_string* %2691, %nyx_string** %2692
  %2693 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2694 = load %nyx_string*, %nyx_string** %2665
  %2695 = call %nyx_string* @nyx_string_concat(%nyx_string* %2693, %nyx_string* %2694)
  %2696 = load %nyx_string*, %nyx_string** %2687
  %2697 = call %nyx_string* @nyx_string_concat(%nyx_string* %2695, %nyx_string* %2696)
  %2698 = load %nyx_string*, %nyx_string** %2668
  %2699 = call %nyx_string* @nyx_string_concat(%nyx_string* %2697, %nyx_string* %2698)
  %2700 = alloca %nyx_string*
  store %nyx_string* %2699, %nyx_string** %2700
  %2701 = load %nyx_string*, %nyx_string** %2700
  %2702 = call i1 @cov_profraw_valid(%nyx_string* %2701)
  br i1 %2702, label %then479, label %else480
then479:
  %2703 = load %nyx_string*, %nyx_string** %2656
  %2704 = load %nyx_string*, %nyx_string** %2671
  %2705 = call %nyx_string* @nyx_string_concat(%nyx_string* %2703, %nyx_string* %2704)
  %2706 = load %nyx_string*, %nyx_string** %2700
  %2707 = call %nyx_string* @nyx_string_concat(%nyx_string* %2705, %nyx_string* %2706)
  %2708 = load %nyx_string*, %nyx_string** %2674
  %2709 = call %nyx_string* @nyx_string_concat(%nyx_string* %2707, %nyx_string* %2708)
  store %nyx_string* %2709, %nyx_string** %2656
  %2710 = load i64, i64* %2657
  %2711 = add i64 %2710, 1
  store i64 %2711, i64* %2657
  %2712 = load i8*, i8** %2659
  %2713 = load %nyx_string*, %nyx_string** %2687
  %2714 = load %nyx_string*, %nyx_string** %2677
  %2715 = call i8* @nyx_string_to_cstr(%nyx_string* %2713)
  %2716 = bitcast %nyx_string* %2714 to i8*
  call void @nyx_map_insert_str(i8* %2712, i8* %2715, i8* %2716)
  br label %merge481
else480:
  %2717 = load { i64, i8* }*, { i64, i8* }** %2661
  %2718 = load %nyx_string*, %nyx_string** %2692
  %2719 = ptrtoint %nyx_string* %2718 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2717, i64 %2719, i64 2)
  br label %merge481
merge481:
  %2720 = load i64, i64* %2662
  %2721 = add i64 %2720, 1
  store i64 %2721, i64* %2662
  br label %while_cond476
while_end478:
  %2722 = call i8* @nyx_map_new(i32 0)
  %2723 = alloca i8*
  store i8* %2722, i8** %2723
  %2724 = load i64, i64* %2657
  %2725 = icmp sgt i64 %2724, 0
  br i1 %2725, label %then482, label %else483
then482:
  %2726 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2727 = getelementptr [17 x i8], [17 x i8]* @.str293, i32 0, i32 0
  %2728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2727, i64 16)
  %2729 = call %nyx_string* @nyx_string_concat(%nyx_string* %2726, %nyx_string* %2728)
  %2730 = alloca %nyx_string*
  store %nyx_string* %2729, %nyx_string** %2730
  %2731 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2732 = getelementptr [12 x i8], [12 x i8]* @.str294, i32 0, i32 0
  %2733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2732, i64 11)
  %2734 = call %nyx_string* @nyx_string_concat(%nyx_string* %2731, %nyx_string* %2733)
  %2735 = load %nyx_string*, %nyx_string** %2730
  %2736 = call %nyx_string* @nyx_string_concat(%nyx_string* %2734, %nyx_string* %2735)
  %2737 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2737, i64 1)
  %2739 = call %nyx_string* @nyx_string_concat(%nyx_string* %2736, %nyx_string* %2738)
  %2740 = load %nyx_string*, %nyx_string** %2656
  %2741 = call %nyx_string* @nyx_string_concat(%nyx_string* %2739, %nyx_string* %2740)
  %2742 = getelementptr [5 x i8], [5 x i8]* @.str296, i32 0, i32 0
  %2743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2742, i64 4)
  %2744 = call %nyx_string* @nyx_string_concat(%nyx_string* %2741, %nyx_string* %2743)
  %2745 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2746 = call %nyx_string* @nyx_string_concat(%nyx_string* %2744, %nyx_string* %2745)
  %2747 = getelementptr [17 x i8], [17 x i8]* @.str297, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2747, i64 16)
  %2749 = call %nyx_string* @nyx_string_concat(%nyx_string* %2746, %nyx_string* %2748)
  %2750 = call i8* @nyx_string_to_cstr(%nyx_string* %2749)
  %2751 = call i64 @nyx_exec_code(i8* %2750)
  %2752 = alloca i64
  store i64 %2751, i64* %2752
  %2753 = load i64, i64* %2752
  %2754 = icmp ne i64 %2753, 0
  br i1 %2754, label %then485, label %else486
then485:
  %2755 = getelementptr [36 x i8], [36 x i8]* @.str298, i32 0, i32 0
  %2756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2755, i64 35)
  %2757 = call i8* @nyx_string_to_cstr(%nyx_string* %2756)
  call void @nyx_print_string(i8* %2757)
  %2758 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2759 = getelementptr [11 x i8], [11 x i8]* @.str299, i32 0, i32 0
  %2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2759, i64 10)
  %2761 = call %nyx_string* @nyx_string_concat(%nyx_string* %2758, %nyx_string* %2760)
  %2762 = call i8* @nyx_string_to_cstr(%nyx_string* %2761)
  %2763 = call %nyx_string* @nyx_read_file(i8* %2762)
  %2764 = call i8* @nyx_string_to_cstr(%nyx_string* %2763)
  call void @nyx_print_string(i8* %2764)
  ret i64 1
else486:
  br label %merge487
merge487:
  %2765 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2766 = getelementptr [33 x i8], [33 x i8]* @.str300, i32 0, i32 0
  %2767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2766, i64 32)
  %2768 = call %nyx_string* @nyx_string_concat(%nyx_string* %2765, %nyx_string* %2767)
  %2769 = load %nyx_string*, %nyx_string** %2730
  %2770 = call %nyx_string* @nyx_string_concat(%nyx_string* %2768, %nyx_string* %2769)
  %2771 = getelementptr [6 x i8], [6 x i8]* @.str301, i32 0, i32 0
  %2772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2771, i64 5)
  %2773 = call %nyx_string* @nyx_string_concat(%nyx_string* %2770, %nyx_string* %2772)
  %2774 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2775 = call %nyx_string* @nyx_string_concat(%nyx_string* %2773, %nyx_string* %2774)
  %2776 = getelementptr [16 x i8], [16 x i8]* @.str302, i32 0, i32 0
  %2777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2776, i64 15)
  %2778 = call %nyx_string* @nyx_string_concat(%nyx_string* %2775, %nyx_string* %2777)
  %2779 = call i8* @nyx_string_to_cstr(%nyx_string* %2778)
  %2780 = call i64 @nyx_exec_code(i8* %2779)
  %2781 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2782 = getelementptr [10 x i8], [10 x i8]* @.str303, i32 0, i32 0
  %2783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2782, i64 9)
  %2784 = call %nyx_string* @nyx_string_concat(%nyx_string* %2781, %nyx_string* %2783)
  %2785 = call i8* @nyx_string_to_cstr(%nyx_string* %2784)
  %2786 = call %nyx_string* @nyx_read_file(i8* %2785)
  %2787 = call i8* @cov_called_from_show(%nyx_string* %2786)
  store i8* %2787, i8** %2723
  br label %merge484
else483:
  br label %merge484
merge484:
  %2788 = call i8* @nyx_map_new(i32 0)
  %2789 = alloca i8*
  store i8* %2788, i8** %2789
  %2790 = call i8* @nyx_map_new(i32 0)
  %2791 = alloca i8*
  store i8* %2790, i8** %2791
  %2792 = call i8* @nyx_map_new(i32 0)
  %2793 = alloca i8*
  store i8* %2792, i8** %2793
  %2794 = call i8* @nyx_map_new(i32 0)
  %2795 = alloca i8*
  store i8* %2794, i8** %2795
  store i64 0, i64* %2662
  %2796 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %2797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2796, i64 1)
  %2798 = alloca %nyx_string*
  store %nyx_string* %2797, %nyx_string** %2798
  %2799 = getelementptr [5 x i8], [5 x i8]* @.str305, i32 0, i32 0
  %2800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2799, i64 4)
  %2801 = alloca %nyx_string*
  store %nyx_string* %2800, %nyx_string** %2801
  %2802 = getelementptr [2 x i8], [2 x i8]* @.str306, i32 0, i32 0
  %2803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2802, i64 1)
  %2804 = alloca %nyx_string*
  store %nyx_string* %2803, %nyx_string** %2804
  %2805 = getelementptr [1 x i8], [1 x i8]* @.str307, i32 0, i32 0
  %2806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2805, i64 0)
  %2807 = alloca %nyx_string*
  store %nyx_string* %2806, %nyx_string** %2807
  %2808 = getelementptr [2 x i8], [2 x i8]* @.str308, i32 0, i32 0
  %2809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2808, i64 1)
  %2810 = alloca %nyx_string*
  store %nyx_string* %2809, %nyx_string** %2810
  %2811 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %2812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2811, i64 4)
  %2813 = alloca %nyx_string*
  store %nyx_string* %2812, %nyx_string** %2813
  %2814 = call i8* @llvm.stacksave()
  br label %while_cond488
while_cond488:
  %2815 = load i64, i64* %2662
  %2816 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2817 = call i64 @nyx_array_length({ i64, i8* }* %2816)
  %2818 = icmp slt i64 %2815, %2817
  br i1 %2818, label %while_body489, label %while_end490
while_body489:
  call void @llvm.stackrestore(i8* %2814)
  %2819 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2820 = load i64, i64* %2662
  %2821 = call i64 @nyx_array_get_checked({ i64, i8* }* %2819, i64 %2820, i64 2)
  %2822 = inttoptr i64 %2821 to %nyx_string*
  %2823 = alloca %nyx_string*
  store %nyx_string* %2822, %nyx_string** %2823
  %2824 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2825 = load %nyx_string*, %nyx_string** %2798
  %2826 = call %nyx_string* @nyx_string_concat(%nyx_string* %2824, %nyx_string* %2825)
  %2827 = load %nyx_string*, %nyx_string** %2823
  %2828 = call %nyx_string* @nyx_string_concat(%nyx_string* %2826, %nyx_string* %2827)
  %2829 = load %nyx_string*, %nyx_string** %2801
  %2830 = call %nyx_string* @nyx_string_concat(%nyx_string* %2828, %nyx_string* %2829)
  %2831 = alloca %nyx_string*
  store %nyx_string* %2830, %nyx_string** %2831
  %2832 = load %nyx_string*, %nyx_string** %2831
  %2833 = call i8* @nyx_string_to_cstr(%nyx_string* %2832)
  %2834 = call i1 @nyx_file_exists(i8* %2833)
  br i1 %2834, label %then491, label %else492
then491:
  %2835 = load %nyx_string*, %nyx_string** %2831
  %2836 = call i8* @nyx_string_to_cstr(%nyx_string* %2835)
  %2837 = call %nyx_string* @nyx_read_file(i8* %2836)
  %2838 = load %nyx_string*, %nyx_string** %2804
  %2839 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2837, %nyx_string* %2838)
  %2840 = alloca { i64, i8* }*
  store { i64, i8* }* %2839, { i64, i8* }** %2840
  %2841 = alloca i64
  store i64 0, i64* %2841
  %2842 = call i8* @llvm.stacksave()
  br label %while_cond494
while_cond494:
  %2843 = load i64, i64* %2841
  %2844 = load { i64, i8* }*, { i64, i8* }** %2840
  %2845 = call i64 @nyx_array_length({ i64, i8* }* %2844)
  %2846 = icmp slt i64 %2843, %2845
  br i1 %2846, label %while_body495, label %while_end496
while_body495:
  call void @llvm.stackrestore(i8* %2842)
  %2847 = load { i64, i8* }*, { i64, i8* }** %2840
  %2848 = load i64, i64* %2841
  %2849 = call i64 @nyx_array_get_checked({ i64, i8* }* %2847, i64 %2848, i64 2)
  %2850 = inttoptr i64 %2849 to %nyx_string*
  %2851 = alloca %nyx_string*
  store %nyx_string* %2850, %nyx_string** %2851
  %2852 = load %nyx_string*, %nyx_string** %2851
  %2853 = call { i64, i8* }* @cov_fields(%nyx_string* %2852)
  %2854 = alloca { i64, i8* }*
  store { i64, i8* }* %2853, { i64, i8* }** %2854
  %2855 = load { i64, i8* }*, { i64, i8* }** %2854
  %2856 = call i64 @nyx_array_length({ i64, i8* }* %2855)
  %2857 = icmp sge i64 %2856, 5
  br i1 %2857, label %then497, label %else498
then497:
  %2858 = load { i64, i8* }*, { i64, i8* }** %2854
  %2859 = call i64 @nyx_array_get_checked({ i64, i8* }* %2858, i64 0, i64 2)
  %2860 = inttoptr i64 %2859 to %nyx_string*
  %2861 = alloca %nyx_string*
  store %nyx_string* %2860, %nyx_string** %2861
  %2862 = load { i64, i8* }*, { i64, i8* }** %2854
  %2863 = call i64 @nyx_array_get_checked({ i64, i8* }* %2862, i64 1, i64 2)
  %2864 = inttoptr i64 %2863 to %nyx_string*
  %2865 = alloca %nyx_string*
  store %nyx_string* %2864, %nyx_string** %2865
  %2866 = load { i64, i8* }*, { i64, i8* }** %2854
  %2867 = call i64 @nyx_array_get_checked({ i64, i8* }* %2866, i64 3, i64 2)
  %2868 = inttoptr i64 %2867 to %nyx_string*
  %2869 = alloca %nyx_string*
  store %nyx_string* %2868, %nyx_string** %2869
  %2870 = load { i64, i8* }*, { i64, i8* }** %2854
  %2871 = call i64 @nyx_array_get_checked({ i64, i8* }* %2870, i64 4, i64 2)
  %2872 = inttoptr i64 %2871 to %nyx_string*
  %2873 = alloca %nyx_string*
  store %nyx_string* %2872, %nyx_string** %2873
  %2874 = load %nyx_string*, %nyx_string** %2865
  %2875 = load %nyx_string*, %nyx_string** %2807
  %2876 = call i1 @nyx_string_equals(%nyx_string* %2874, %nyx_string* %2875)
  %2877 = xor i1 %2876, true
  br i1 %2877, label %then500, label %else501
then500:
  %2878 = load i8*, i8** %2795
  %2879 = load %nyx_string*, %nyx_string** %2865
  %2880 = load %nyx_string*, %nyx_string** %2810
  %2881 = call i8* @nyx_string_to_cstr(%nyx_string* %2879)
  %2882 = bitcast %nyx_string* %2880 to i8*
  call void @nyx_map_insert_str(i8* %2878, i8* %2881, i8* %2882)
  br label %merge502
else501:
  br label %merge502
merge502:
  %2883 = load i8*, i8** %2659
  %2884 = load %nyx_string*, %nyx_string** %2823
  %2885 = call i8* @nyx_string_to_cstr(%nyx_string* %2884)
  %2886 = call i1 @nyx_map_contains_str(i8* %2883, i8* %2885)
  br i1 %2886, label %then503, label %else504
then503:
  %2887 = load i8*, i8** %2789
  %2888 = load %nyx_string*, %nyx_string** %2861
  %2889 = load %nyx_string*, %nyx_string** %2810
  %2890 = call i8* @nyx_string_to_cstr(%nyx_string* %2888)
  %2891 = bitcast %nyx_string* %2889 to i8*
  call void @nyx_map_insert_str(i8* %2887, i8* %2890, i8* %2891)
  %2892 = alloca i1
  store i1 false, i1* %2892
  %2893 = load %nyx_string*, %nyx_string** %2873
  %2894 = load %nyx_string*, %nyx_string** %2813
  %2895 = call i1 @nyx_string_equals(%nyx_string* %2893, %nyx_string* %2894)
  br i1 %2895, label %sc_and_rhs506, label %sc_and_end507
sc_and_rhs506:
  %2896 = load i8*, i8** %2723
  %2897 = load %nyx_string*, %nyx_string** %2861
  %2898 = call i8* @nyx_string_to_cstr(%nyx_string* %2897)
  %2899 = call i1 @nyx_map_contains_str(i8* %2896, i8* %2898)
  store i1 %2899, i1* %2892
  br label %sc_and_end507
sc_and_end507:
  %2900 = load i1, i1* %2892
  br i1 %2900, label %then508, label %else509
then508:
  %2901 = load i8*, i8** %2793
  %2902 = load %nyx_string*, %nyx_string** %2869
  %2903 = load %nyx_string*, %nyx_string** %2810
  %2904 = call i8* @nyx_string_to_cstr(%nyx_string* %2902)
  %2905 = bitcast %nyx_string* %2903 to i8*
  call void @nyx_map_insert_str(i8* %2901, i8* %2904, i8* %2905)
  br label %merge510
else509:
  br label %merge510
merge510:
  br label %merge505
else504:
  %2906 = load i8*, i8** %2791
  %2907 = load %nyx_string*, %nyx_string** %2861
  %2908 = load %nyx_string*, %nyx_string** %2810
  %2909 = call i8* @nyx_string_to_cstr(%nyx_string* %2907)
  %2910 = bitcast %nyx_string* %2908 to i8*
  call void @nyx_map_insert_str(i8* %2906, i8* %2909, i8* %2910)
  br label %merge505
merge505:
  br label %merge499
else498:
  br label %merge499
merge499:
  %2911 = load i64, i64* %2841
  %2912 = add i64 %2911, 1
  store i64 %2912, i64* %2841
  br label %while_cond494
while_end496:
  br label %merge493
else492:
  br label %merge493
merge493:
  %2913 = load i64, i64* %2662
  %2914 = add i64 %2913, 1
  store i64 %2914, i64* %2662
  br label %while_cond488
while_end490:
  %2915 = call { i64, i8* }* @cov_src_modules()
  %2916 = alloca { i64, i8* }*
  store { i64, i8* }* %2915, { i64, i8* }** %2916
  %2917 = load { i64, i8* }*, { i64, i8* }** %2916
  %2918 = call i64 @nyx_array_length({ i64, i8* }* %2917)
  %2919 = icmp eq i64 %2918, 0
  br i1 %2919, label %then511, label %else512
then511:
  %2920 = getelementptr [27 x i8], [27 x i8]* @.str310, i32 0, i32 0
  %2921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2920, i64 26)
  %2922 = call i8* @nyx_string_to_cstr(%nyx_string* %2921)
  call void @nyx_print_string(i8* %2922)
  ret i64 0
else512:
  br label %merge513
merge513:
  %2923 = load %nyx_string*, %nyx_string** %2642
  %2924 = load %nyx_string*, %nyx_string** %2647
  %2925 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2926 = load { i64, i8* }*, { i64, i8* }** %2916
  %2927 = call %nyx_string* @cov_universe(%nyx_string* %2923, %nyx_string* %2924, %nyx_string* %2925, { i64, i8* }* %2926)
  %2928 = alloca %nyx_string*
  store %nyx_string* %2927, %nyx_string** %2928
  %2929 = load %nyx_string*, %nyx_string** %2928
  %2930 = call i8* @nyx_string_to_cstr(%nyx_string* %2929)
  %2931 = call i1 @nyx_file_exists(i8* %2930)
  %2932 = xor i1 %2931, true
  br i1 %2932, label %then514, label %else515
then514:
  %2933 = getelementptr [68 x i8], [68 x i8]* @.str311, i32 0, i32 0
  %2934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2933, i64 67)
  %2935 = call i8* @nyx_string_to_cstr(%nyx_string* %2934)
  call void @nyx_print_string(i8* %2935)
  %2936 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2937 = getelementptr [14 x i8], [14 x i8]* @.str312, i32 0, i32 0
  %2938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2937, i64 13)
  %2939 = call %nyx_string* @nyx_string_concat(%nyx_string* %2936, %nyx_string* %2938)
  %2940 = call i8* @nyx_string_to_cstr(%nyx_string* %2939)
  %2941 = call i1 @nyx_file_exists(i8* %2940)
  br i1 %2941, label %then517, label %else518
then517:
  %2942 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2943 = getelementptr [14 x i8], [14 x i8]* @.str313, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2943, i64 13)
  %2945 = call %nyx_string* @nyx_string_concat(%nyx_string* %2942, %nyx_string* %2944)
  %2946 = call i8* @nyx_string_to_cstr(%nyx_string* %2945)
  %2947 = call %nyx_string* @nyx_read_file(i8* %2946)
  %2948 = call i8* @nyx_string_to_cstr(%nyx_string* %2947)
  call void @nyx_print_string(i8* %2948)
  br label %merge519
else518:
  br label %merge519
merge519:
  ret i64 1
else515:
  br label %merge516
merge516:
  %2949 = load %nyx_string*, %nyx_string** %2928
  %2950 = call i8* @nyx_string_to_cstr(%nyx_string* %2949)
  %2951 = call %nyx_string* @nyx_read_file(i8* %2950)
  %2952 = getelementptr [2 x i8], [2 x i8]* @.str314, i32 0, i32 0
  %2953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2952, i64 1)
  %2954 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2951, %nyx_string* %2953)
  %2955 = alloca { i64, i8* }*
  store { i64, i8* }* %2954, { i64, i8* }** %2955
  %2956 = call { i64, i8* }* @nyx_array_new_ptr()
  %2957 = alloca { i64, i8* }*
  store { i64, i8* }* %2956, { i64, i8* }** %2957
  %2958 = alloca i64
  store i64 0, i64* %2958
  %2959 = getelementptr [3 x i8], [3 x i8]* @.str315, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2959, i64 2)
  %2961 = alloca %nyx_string*
  store %nyx_string* %2960, %nyx_string** %2961
  %2962 = getelementptr [7 x i8], [7 x i8]* @.str316, i32 0, i32 0
  %2963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %2962, i64 6)
  %2964 = alloca %nyx_string*
  store %nyx_string* %2963, %nyx_string** %2964
  %2965 = getelementptr [6 x i8], [6 x i8]* @.str317, i32 0, i32 0
  %2966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %2965, i64 5)
  %2967 = alloca %nyx_string*
  store %nyx_string* %2966, %nyx_string** %2967
  %2968 = getelementptr [9 x i8], [9 x i8]* @.str318, i32 0, i32 0
  %2969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %2968, i64 8)
  %2970 = alloca %nyx_string*
  store %nyx_string* %2969, %nyx_string** %2970
  %2971 = getelementptr [5 x i8], [5 x i8]* @.str319, i32 0, i32 0
  %2972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %2971, i64 4)
  %2973 = alloca %nyx_string*
  store %nyx_string* %2972, %nyx_string** %2973
  %2974 = getelementptr [5 x i8], [5 x i8]* @.str320, i32 0, i32 0
  %2975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %2974, i64 4)
  %2976 = alloca %nyx_string*
  store %nyx_string* %2975, %nyx_string** %2976
  %2977 = getelementptr [3 x i8], [3 x i8]* @.str321, i32 0, i32 0
  %2978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %2977, i64 2)
  %2979 = alloca %nyx_string*
  store %nyx_string* %2978, %nyx_string** %2979
  %2980 = getelementptr [3 x i8], [3 x i8]* @.str322, i32 0, i32 0
  %2981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %2980, i64 2)
  %2982 = alloca %nyx_string*
  store %nyx_string* %2981, %nyx_string** %2982
  %2983 = getelementptr [10 x i8], [10 x i8]* @.str323, i32 0, i32 0
  %2984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %2983, i64 9)
  %2985 = alloca %nyx_string*
  store %nyx_string* %2984, %nyx_string** %2985
  %2986 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %2987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %2986, i64 4)
  %2988 = alloca %nyx_string*
  store %nyx_string* %2987, %nyx_string** %2988
  %2989 = getelementptr [2 x i8], [2 x i8]* @.str325, i32 0, i32 0
  %2990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %2989, i64 1)
  %2991 = alloca %nyx_string*
  store %nyx_string* %2990, %nyx_string** %2991
  %2992 = call i8* @llvm.stacksave()
  br label %while_cond520
while_cond520:
  %2993 = load i64, i64* %2958
  %2994 = load { i64, i8* }*, { i64, i8* }** %2955
  %2995 = call i64 @nyx_array_length({ i64, i8* }* %2994)
  %2996 = icmp slt i64 %2993, %2995
  br i1 %2996, label %while_body521, label %while_end522
while_body521:
  call void @llvm.stackrestore(i8* %2992)
  %2997 = load { i64, i8* }*, { i64, i8* }** %2955
  %2998 = load i64, i64* %2958
  %2999 = call i64 @nyx_array_get_checked({ i64, i8* }* %2997, i64 %2998, i64 2)
  %3000 = inttoptr i64 %2999 to %nyx_string*
  %3001 = alloca %nyx_string*
  store %nyx_string* %3000, %nyx_string** %3001
  %3002 = load %nyx_string*, %nyx_string** %3001
  %3003 = call { i64, i8* }* @cov_fields(%nyx_string* %3002)
  %3004 = alloca { i64, i8* }*
  store { i64, i8* }* %3003, { i64, i8* }** %3004
  %3005 = load { i64, i8* }*, { i64, i8* }** %3004
  %3006 = call i64 @nyx_array_length({ i64, i8* }* %3005)
  %3007 = icmp sge i64 %3006, 5
  br i1 %3007, label %then523, label %else524
then523:
  %3008 = load { i64, i8* }*, { i64, i8* }** %3004
  %3009 = call i64 @nyx_array_get_checked({ i64, i8* }* %3008, i64 0, i64 2)
  %3010 = inttoptr i64 %3009 to %nyx_string*
  %3011 = alloca %nyx_string*
  store %nyx_string* %3010, %nyx_string** %3011
  %3012 = load { i64, i8* }*, { i64, i8* }** %3004
  %3013 = call i64 @nyx_array_get_checked({ i64, i8* }* %3012, i64 1, i64 2)
  %3014 = inttoptr i64 %3013 to %nyx_string*
  %3015 = alloca %nyx_string*
  store %nyx_string* %3014, %nyx_string** %3015
  %3016 = load { i64, i8* }*, { i64, i8* }** %3004
  %3017 = call i64 @nyx_array_get_checked({ i64, i8* }* %3016, i64 2, i64 2)
  %3018 = inttoptr i64 %3017 to %nyx_string*
  %3019 = alloca %nyx_string*
  store %nyx_string* %3018, %nyx_string** %3019
  %3020 = load { i64, i8* }*, { i64, i8* }** %3004
  %3021 = call i64 @nyx_array_get_checked({ i64, i8* }* %3020, i64 3, i64 2)
  %3022 = inttoptr i64 %3021 to %nyx_string*
  %3023 = alloca %nyx_string*
  store %nyx_string* %3022, %nyx_string** %3023
  %3024 = load { i64, i8* }*, { i64, i8* }** %3004
  %3025 = call i64 @nyx_array_get_checked({ i64, i8* }* %3024, i64 4, i64 2)
  %3026 = inttoptr i64 %3025 to %nyx_string*
  %3027 = alloca %nyx_string*
  store %nyx_string* %3026, %nyx_string** %3027
  %3028 = alloca i1
  store i1 true, i1* %3028
  %3029 = alloca i1
  store i1 true, i1* %3029
  %3030 = alloca i1
  store i1 true, i1* %3030
  %3031 = load %nyx_string*, %nyx_string** %3027
  %3032 = load %nyx_string*, %nyx_string** %2961
  %3033 = call i1 @nyx_string_equals(%nyx_string* %3031, %nyx_string* %3032)
  br i1 %3033, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %3034 = load %nyx_string*, %nyx_string** %3027
  %3035 = load %nyx_string*, %nyx_string** %2964
  %3036 = call i1 @nyx_string_equals(%nyx_string* %3034, %nyx_string* %3035)
  store i1 %3036, i1* %3030
  br label %sc_or_end527
sc_or_end527:
  %3037 = load i1, i1* %3030
  br i1 %3037, label %sc_or_end529, label %sc_or_rhs528
sc_or_rhs528:
  %3038 = load %nyx_string*, %nyx_string** %3027
  %3039 = load %nyx_string*, %nyx_string** %2967
  %3040 = call i1 @nyx_string_equals(%nyx_string* %3038, %nyx_string* %3039)
  store i1 %3040, i1* %3029
  br label %sc_or_end529
sc_or_end529:
  %3041 = load i1, i1* %3029
  br i1 %3041, label %sc_or_end531, label %sc_or_rhs530
sc_or_rhs530:
  %3042 = load %nyx_string*, %nyx_string** %3027
  %3043 = load %nyx_string*, %nyx_string** %2970
  %3044 = call i1 @nyx_string_equals(%nyx_string* %3042, %nyx_string* %3043)
  store i1 %3044, i1* %3028
  br label %sc_or_end531
sc_or_end531:
  %3045 = load i1, i1* %3028
  %3046 = alloca i1
  store i1 %3045, i1* %3046
  %3047 = alloca i1
  store i1 false, i1* %3047
  %3048 = alloca i1
  store i1 false, i1* %3048
  %3049 = load i1, i1* %3046
  br i1 %3049, label %sc_and_rhs532, label %sc_and_end533
sc_and_rhs532:
  %3050 = load %nyx_string*, %nyx_string** %3015
  %3051 = load %nyx_string*, %nyx_string** %2973
  %3052 = call i1 @nyx_string_starts_with(%nyx_string* %3050, %nyx_string* %3051)
  store i1 %3052, i1* %3048
  br label %sc_and_end533
sc_and_end533:
  %3053 = load i1, i1* %3048
  br i1 %3053, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %3054 = load %nyx_string*, %nyx_string** %3023
  %3055 = load %nyx_string*, %nyx_string** %2976
  %3056 = call i1 @nyx_string_equals(%nyx_string* %3054, %nyx_string* %3055)
  %3057 = xor i1 %3056, true
  store i1 %3057, i1* %3047
  br label %sc_and_end535
sc_and_end535:
  %3058 = load i1, i1* %3047
  br i1 %3058, label %then536, label %else537
then536:
  %3059 = load i8*, i8** %2723
  %3060 = load %nyx_string*, %nyx_string** %3011
  %3061 = call i8* @nyx_string_to_cstr(%nyx_string* %3060)
  %3062 = call i1 @nyx_map_contains_str(i8* %3059, i8* %3061)
  %3063 = alloca i1
  store i1 %3062, i1* %3063
  %3064 = load %nyx_string*, %nyx_string** %3027
  %3065 = load %nyx_string*, %nyx_string** %2970
  %3066 = call i1 @nyx_string_equals(%nyx_string* %3064, %nyx_string* %3065)
  br i1 %3066, label %then539, label %else540
then539:
  %3067 = load i8*, i8** %2793
  %3068 = load %nyx_string*, %nyx_string** %3011
  %3069 = call i8* @nyx_string_to_cstr(%nyx_string* %3068)
  %3070 = call i1 @nyx_map_contains_str(i8* %3067, i8* %3069)
  store i1 %3070, i1* %3063
  br label %merge541
else540:
  br label %merge541
merge541:
  %3071 = load %nyx_string*, %nyx_string** %2979
  %3072 = alloca %nyx_string*
  store %nyx_string* %3071, %nyx_string** %3072
  %3073 = load i1, i1* %3063
  br i1 %3073, label %then542, label %else543
then542:
  %3074 = load %nyx_string*, %nyx_string** %2982
  store %nyx_string* %3074, %nyx_string** %3072
  br label %merge544
else543:
  %3075 = alloca i1
  store i1 false, i1* %3075
  %3076 = load i8*, i8** %2789
  %3077 = load %nyx_string*, %nyx_string** %3011
  %3078 = call i8* @nyx_string_to_cstr(%nyx_string* %3077)
  %3079 = call i1 @nyx_map_contains_str(i8* %3076, i8* %3078)
  %3080 = xor i1 %3079, true
  br i1 %3080, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %3081 = load i8*, i8** %2791
  %3082 = load %nyx_string*, %nyx_string** %3011
  %3083 = call i8* @nyx_string_to_cstr(%nyx_string* %3082)
  %3084 = call i1 @nyx_map_contains_str(i8* %3081, i8* %3083)
  store i1 %3084, i1* %3075
  br label %sc_and_end546
sc_and_end546:
  %3085 = load i1, i1* %3075
  br i1 %3085, label %then547, label %else548
then547:
  %3086 = load %nyx_string*, %nyx_string** %2985
  store %nyx_string* %3086, %nyx_string** %3072
  br label %merge549
else548:
  br label %merge549
merge549:
  br label %merge544
merge544:
  %3087 = load { i64, i8* }*, { i64, i8* }** %2957
  %3088 = load %nyx_string*, %nyx_string** %3015
  %3089 = load %nyx_string*, %nyx_string** %2988
  %3090 = call %nyx_string* @nyx_string_concat(%nyx_string* %3088, %nyx_string* %3089)
  %3091 = load %nyx_string*, %nyx_string** %3019
  %3092 = call i64 @nyx_string_to_int(%nyx_string* %3091)
  %3093 = call %nyx_string* @cov_pad(i64 %3092)
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3090, %nyx_string* %3093)
  %3095 = load %nyx_string*, %nyx_string** %2991
  %3096 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3095)
  %3097 = load %nyx_string*, %nyx_string** %3023
  %3098 = call %nyx_string* @nyx_string_concat(%nyx_string* %3096, %nyx_string* %3097)
  %3099 = load %nyx_string*, %nyx_string** %2991
  %3100 = call %nyx_string* @nyx_string_concat(%nyx_string* %3098, %nyx_string* %3099)
  %3101 = load %nyx_string*, %nyx_string** %3072
  %3102 = call %nyx_string* @nyx_string_concat(%nyx_string* %3100, %nyx_string* %3101)
  %3103 = load %nyx_string*, %nyx_string** %2991
  %3104 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3103)
  %3105 = load %nyx_string*, %nyx_string** %3015
  %3106 = call %nyx_string* @nyx_string_concat(%nyx_string* %3104, %nyx_string* %3105)
  %3107 = ptrtoint %nyx_string* %3106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3087, i64 %3107, i64 2)
  br label %merge538
else537:
  br label %merge538
merge538:
  br label %merge525
else524:
  br label %merge525
merge525:
  %3108 = load i64, i64* %2958
  %3109 = add i64 %3108, 1
  store i64 %3109, i64* %2958
  br label %while_cond520
while_end522:
  %3110 = load { i64, i8* }*, { i64, i8* }** %2957
  %3111 = call { i64, i8* }* @sort_str({ i64, i8* }* %3110)
  %3112 = alloca { i64, i8* }*
  store { i64, i8* }* %3111, { i64, i8* }** %3112
  %3113 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %3114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3113, i64 0)
  %3115 = alloca %nyx_string*
  store %nyx_string* %3114, %nyx_string** %3115
  %3116 = alloca i64
  store i64 0, i64* %3116
  %3117 = alloca i64
  store i64 0, i64* %3117
  %3118 = alloca i64
  store i64 0, i64* %3118
  %3119 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %3120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3119, i64 0)
  %3121 = alloca %nyx_string*
  store %nyx_string* %3120, %nyx_string** %3121
  %3122 = getelementptr [10 x i8], [10 x i8]* @.str328, i32 0, i32 0
  %3123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3122, i64 9)
  %3124 = alloca %nyx_string*
  store %nyx_string* %3123, %nyx_string** %3124
  %3125 = getelementptr [2 x i8], [2 x i8]* @.str329, i32 0, i32 0
  %3126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3125, i64 1)
  %3127 = alloca %nyx_string*
  store %nyx_string* %3126, %nyx_string** %3127
  %3128 = getelementptr [3 x i8], [3 x i8]* @.str330, i32 0, i32 0
  %3129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3128, i64 2)
  %3130 = alloca %nyx_string*
  store %nyx_string* %3129, %nyx_string** %3130
  %3131 = getelementptr [2 x i8], [2 x i8]* @.str331, i32 0, i32 0
  %3132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3131, i64 1)
  %3133 = alloca %nyx_string*
  store %nyx_string* %3132, %nyx_string** %3133
  %3134 = getelementptr [5 x i8], [5 x i8]* @.str332, i32 0, i32 0
  %3135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3134, i64 4)
  %3136 = alloca %nyx_string*
  store %nyx_string* %3135, %nyx_string** %3136
  %3137 = getelementptr [2 x i8], [2 x i8]* @.str333, i32 0, i32 0
  %3138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3137, i64 1)
  %3139 = alloca %nyx_string*
  store %nyx_string* %3138, %nyx_string** %3139
  %3140 = getelementptr [2 x i8], [2 x i8]* @.str334, i32 0, i32 0
  %3141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3140, i64 1)
  %3142 = alloca %nyx_string*
  store %nyx_string* %3141, %nyx_string** %3142
  %3143 = getelementptr [4 x i8], [4 x i8]* @.str335, i32 0, i32 0
  %3144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3143, i64 3)
  %3145 = alloca %nyx_string*
  store %nyx_string* %3144, %nyx_string** %3145
  %3146 = getelementptr [2 x i8], [2 x i8]* @.str336, i32 0, i32 0
  %3147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3146, i64 1)
  %3148 = alloca %nyx_string*
  store %nyx_string* %3147, %nyx_string** %3148
  %3149 = getelementptr [2 x i8], [2 x i8]* @.str337, i32 0, i32 0
  %3150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3149, i64 1)
  %3151 = alloca %nyx_string*
  store %nyx_string* %3150, %nyx_string** %3151
  %3152 = getelementptr [6 x i8], [6 x i8]* @.str338, i32 0, i32 0
  %3153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3152, i64 5)
  %3154 = alloca %nyx_string*
  store %nyx_string* %3153, %nyx_string** %3154
  %3155 = getelementptr [3 x i8], [3 x i8]* @.str339, i32 0, i32 0
  %3156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3155, i64 2)
  %3157 = alloca %nyx_string*
  store %nyx_string* %3156, %nyx_string** %3157
  %3158 = getelementptr [3 x i8], [3 x i8]* @.str340, i32 0, i32 0
  %3159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3158, i64 2)
  %3160 = alloca %nyx_string*
  store %nyx_string* %3159, %nyx_string** %3160
  %3161 = getelementptr [2 x i8], [2 x i8]* @.str341, i32 0, i32 0
  %3162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3161, i64 1)
  %3163 = alloca %nyx_string*
  store %nyx_string* %3162, %nyx_string** %3163
  %3164 = getelementptr [10 x i8], [10 x i8]* @.str342, i32 0, i32 0
  %3165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3164, i64 9)
  %3166 = alloca %nyx_string*
  store %nyx_string* %3165, %nyx_string** %3166
  %3167 = getelementptr [29 x i8], [29 x i8]* @.str343, i32 0, i32 0
  %3168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3167, i64 28)
  %3169 = alloca %nyx_string*
  store %nyx_string* %3168, %nyx_string** %3169
  %3170 = getelementptr [3 x i8], [3 x i8]* @.str344, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3170, i64 2)
  %3172 = alloca %nyx_string*
  store %nyx_string* %3171, %nyx_string** %3172
  %3173 = getelementptr [38 x i8], [38 x i8]* @.str345, i32 0, i32 0
  %3174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3173, i64 37)
  %3175 = alloca %nyx_string*
  store %nyx_string* %3174, %nyx_string** %3175
  %3176 = getelementptr [4 x i8], [4 x i8]* @.str346, i32 0, i32 0
  %3177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3176, i64 3)
  %3178 = alloca %nyx_string*
  store %nyx_string* %3177, %nyx_string** %3178
  %3179 = getelementptr [5 x i8], [5 x i8]* @.str347, i32 0, i32 0
  %3180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3179, i64 4)
  %3181 = alloca %nyx_string*
  store %nyx_string* %3180, %nyx_string** %3181
  %3182 = getelementptr [6 x i8], [6 x i8]* @.str348, i32 0, i32 0
  %3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3182, i64 5)
  %3184 = alloca %nyx_string*
  store %nyx_string* %3183, %nyx_string** %3184
  %3185 = getelementptr [16 x i8], [16 x i8]* @.str349, i32 0, i32 0
  %3186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3185, i64 15)
  %3187 = alloca %nyx_string*
  store %nyx_string* %3186, %nyx_string** %3187
  %3188 = call i8* @llvm.stacksave()
  br label %while_cond550
while_cond550:
  %3189 = load i64, i64* %3118
  %3190 = load { i64, i8* }*, { i64, i8* }** %3112
  %3191 = call i64 @nyx_array_length({ i64, i8* }* %3190)
  %3192 = icmp slt i64 %3189, %3191
  br i1 %3192, label %while_body551, label %while_end552
while_body551:
  call void @llvm.stackrestore(i8* %3188)
  %3193 = load { i64, i8* }*, { i64, i8* }** %3112
  %3194 = load i64, i64* %3118
  %3195 = call i64 @nyx_array_get_checked({ i64, i8* }* %3193, i64 %3194, i64 2)
  %3196 = inttoptr i64 %3195 to %nyx_string*
  %3197 = alloca %nyx_string*
  store %nyx_string* %3196, %nyx_string** %3197
  %3198 = load %nyx_string*, %nyx_string** %3197
  %3199 = call { i64, i8* }* @cov_fields(%nyx_string* %3198)
  %3200 = alloca { i64, i8* }*
  store { i64, i8* }* %3199, { i64, i8* }** %3200
  %3201 = load { i64, i8* }*, { i64, i8* }** %3200
  %3202 = call i64 @nyx_array_get_checked({ i64, i8* }* %3201, i64 0, i64 2)
  %3203 = inttoptr i64 %3202 to %nyx_string*
  %3204 = alloca %nyx_string*
  store %nyx_string* %3203, %nyx_string** %3204
  %3205 = load { i64, i8* }*, { i64, i8* }** %3200
  %3206 = call i64 @nyx_array_get_checked({ i64, i8* }* %3205, i64 4, i64 2)
  %3207 = inttoptr i64 %3206 to %nyx_string*
  %3208 = alloca %nyx_string*
  store %nyx_string* %3207, %nyx_string** %3208
  %3209 = alloca i64
  store i64 0, i64* %3209
  %3210 = alloca i64
  store i64 0, i64* %3210
  %3211 = alloca i64
  store i64 0, i64* %3211
  %3212 = call { i64, i8* }* @nyx_array_new_ptr()
  %3213 = alloca { i64, i8* }*
  store { i64, i8* }* %3212, { i64, i8* }** %3213
  %3214 = load %nyx_string*, %nyx_string** %3121
  %3215 = alloca %nyx_string*
  store %nyx_string* %3214, %nyx_string** %3215
  %3216 = load %nyx_string*, %nyx_string** %3121
  %3217 = alloca %nyx_string*
  store %nyx_string* %3216, %nyx_string** %3217
  %3218 = load i64, i64* %3118
  %3219 = alloca i64
  store i64 %3218, i64* %3219
  %3220 = alloca i1
  store i1 1, i1* %3220
  %3221 = call i8* @llvm.stacksave()
  br label %while_cond553
while_cond553:
  %3222 = alloca i1
  store i1 false, i1* %3222
  %3223 = load i64, i64* %3219
  %3224 = load { i64, i8* }*, { i64, i8* }** %3112
  %3225 = call i64 @nyx_array_length({ i64, i8* }* %3224)
  %3226 = icmp slt i64 %3223, %3225
  br i1 %3226, label %sc_and_rhs556, label %sc_and_end557
sc_and_rhs556:
  %3227 = load i1, i1* %3220
  store i1 %3227, i1* %3222
  br label %sc_and_end557
sc_and_end557:
  %3228 = load i1, i1* %3222
  br i1 %3228, label %while_body554, label %while_end555
while_body554:
  call void @llvm.stackrestore(i8* %3221)
  %3229 = load { i64, i8* }*, { i64, i8* }** %3112
  %3230 = load i64, i64* %3219
  %3231 = call i64 @nyx_array_get_checked({ i64, i8* }* %3229, i64 %3230, i64 2)
  %3232 = inttoptr i64 %3231 to %nyx_string*
  %3233 = alloca %nyx_string*
  store %nyx_string* %3232, %nyx_string** %3233
  %3234 = load %nyx_string*, %nyx_string** %3233
  %3235 = call { i64, i8* }* @cov_fields(%nyx_string* %3234)
  %3236 = alloca { i64, i8* }*
  store { i64, i8* }* %3235, { i64, i8* }** %3236
  %3237 = load { i64, i8* }*, { i64, i8* }** %3236
  %3238 = call i64 @nyx_array_get_checked({ i64, i8* }* %3237, i64 0, i64 2)
  %3239 = inttoptr i64 %3238 to %nyx_string*
  %3240 = alloca %nyx_string*
  store %nyx_string* %3239, %nyx_string** %3240
  %3241 = load %nyx_string*, %nyx_string** %3240
  %3242 = load %nyx_string*, %nyx_string** %3204
  %3243 = call i1 @nyx_string_equals(%nyx_string* %3241, %nyx_string* %3242)
  %3244 = xor i1 %3243, true
  br i1 %3244, label %then558, label %else559
then558:
  store i1 0, i1* %3220
  br label %merge560
else559:
  %3245 = load { i64, i8* }*, { i64, i8* }** %3236
  %3246 = call i64 @nyx_array_get({ i64, i8* }* %3245, i64 1)
  %3247 = inttoptr i64 %3246 to %nyx_string*
  %3248 = call i64 @nyx_string_to_int(%nyx_string* %3247)
  %3249 = alloca i64
  store i64 %3248, i64* %3249
  %3250 = load { i64, i8* }*, { i64, i8* }** %3236
  %3251 = call i64 @nyx_array_get_checked({ i64, i8* }* %3250, i64 2, i64 2)
  %3252 = inttoptr i64 %3251 to %nyx_string*
  %3253 = alloca %nyx_string*
  store %nyx_string* %3252, %nyx_string** %3253
  %3254 = load { i64, i8* }*, { i64, i8* }** %3236
  %3255 = call i64 @nyx_array_get_checked({ i64, i8* }* %3254, i64 3, i64 2)
  %3256 = inttoptr i64 %3255 to %nyx_string*
  %3257 = alloca %nyx_string*
  store %nyx_string* %3256, %nyx_string** %3257
  %3258 = load %nyx_string*, %nyx_string** %3257
  %3259 = load %nyx_string*, %nyx_string** %3124
  %3260 = call i1 @nyx_string_equals(%nyx_string* %3258, %nyx_string* %3259)
  br i1 %3260, label %then561, label %else562
then561:
  %3261 = load i64, i64* %3211
  %3262 = add i64 %3261, 1
  store i64 %3262, i64* %3211
  br label %merge563
else562:
  %3263 = load i64, i64* %3210
  %3264 = add i64 %3263, 1
  store i64 %3264, i64* %3210
  %3265 = load %nyx_string*, %nyx_string** %3127
  %3266 = alloca %nyx_string*
  store %nyx_string* %3265, %nyx_string** %3266
  %3267 = load %nyx_string*, %nyx_string** %3257
  %3268 = load %nyx_string*, %nyx_string** %3130
  %3269 = call i1 @nyx_string_equals(%nyx_string* %3267, %nyx_string* %3268)
  br i1 %3269, label %then564, label %else565
then564:
  %3270 = load i64, i64* %3209
  %3271 = add i64 %3270, 1
  store i64 %3271, i64* %3209
  %3272 = load %nyx_string*, %nyx_string** %3133
  store %nyx_string* %3272, %nyx_string** %3266
  br label %merge566
else565:
  %3273 = load { i64, i8* }*, { i64, i8* }** %3213
  %3274 = load %nyx_string*, %nyx_string** %3136
  %3275 = load %nyx_string*, %nyx_string** %3204
  %3276 = call %nyx_string* @nyx_string_concat(%nyx_string* %3274, %nyx_string* %3275)
  %3277 = load %nyx_string*, %nyx_string** %3139
  %3278 = call %nyx_string* @nyx_string_concat(%nyx_string* %3276, %nyx_string* %3277)
  %3279 = load i64, i64* %3249
  %3280 = call %nyx_string* @nyx_string_from_int(i64 %3279)
  %3281 = call %nyx_string* @nyx_string_concat(%nyx_string* %3278, %nyx_string* %3280)
  %3282 = load %nyx_string*, %nyx_string** %3142
  %3283 = call %nyx_string* @nyx_string_concat(%nyx_string* %3281, %nyx_string* %3282)
  %3284 = load %nyx_string*, %nyx_string** %3253
  %3285 = call %nyx_string* @nyx_string_concat(%nyx_string* %3283, %nyx_string* %3284)
  %3286 = ptrtoint %nyx_string* %3285 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3273, i64 %3286, i64 2)
  br label %merge566
merge566:
  %3287 = load %nyx_string*, %nyx_string** %3215
  %3288 = load %nyx_string*, %nyx_string** %3145
  %3289 = call %nyx_string* @nyx_string_concat(%nyx_string* %3287, %nyx_string* %3288)
  %3290 = load i64, i64* %3249
  %3291 = call %nyx_string* @nyx_string_from_int(i64 %3290)
  %3292 = call %nyx_string* @nyx_string_concat(%nyx_string* %3289, %nyx_string* %3291)
  %3293 = load %nyx_string*, %nyx_string** %3148
  %3294 = call %nyx_string* @nyx_string_concat(%nyx_string* %3292, %nyx_string* %3293)
  %3295 = load %nyx_string*, %nyx_string** %3253
  %3296 = call %nyx_string* @nyx_string_concat(%nyx_string* %3294, %nyx_string* %3295)
  %3297 = load %nyx_string*, %nyx_string** %3151
  %3298 = call %nyx_string* @nyx_string_concat(%nyx_string* %3296, %nyx_string* %3297)
  store %nyx_string* %3298, %nyx_string** %3215
  %3299 = load %nyx_string*, %nyx_string** %3217
  %3300 = load %nyx_string*, %nyx_string** %3154
  %3301 = call %nyx_string* @nyx_string_concat(%nyx_string* %3299, %nyx_string* %3300)
  %3302 = load %nyx_string*, %nyx_string** %3266
  %3303 = call %nyx_string* @nyx_string_concat(%nyx_string* %3301, %nyx_string* %3302)
  %3304 = load %nyx_string*, %nyx_string** %3148
  %3305 = call %nyx_string* @nyx_string_concat(%nyx_string* %3303, %nyx_string* %3304)
  %3306 = load %nyx_string*, %nyx_string** %3253
  %3307 = call %nyx_string* @nyx_string_concat(%nyx_string* %3305, %nyx_string* %3306)
  %3308 = load %nyx_string*, %nyx_string** %3151
  %3309 = call %nyx_string* @nyx_string_concat(%nyx_string* %3307, %nyx_string* %3308)
  store %nyx_string* %3309, %nyx_string** %3217
  br label %merge563
merge563:
  %3310 = load i64, i64* %3219
  %3311 = add i64 %3310, 1
  store i64 %3311, i64* %3219
  br label %merge560
merge560:
  br label %while_cond553
while_end555:
  %3312 = load %nyx_string*, %nyx_string** %3157
  %3313 = load %nyx_string*, %nyx_string** %3204
  %3314 = call %nyx_string* @nyx_string_concat(%nyx_string* %3312, %nyx_string* %3313)
  %3315 = load %nyx_string*, %nyx_string** %3160
  %3316 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3315)
  %3317 = load i64, i64* %3209
  %3318 = call %nyx_string* @nyx_string_from_int(i64 %3317)
  %3319 = call %nyx_string* @nyx_string_concat(%nyx_string* %3316, %nyx_string* %3318)
  %3320 = load %nyx_string*, %nyx_string** %3163
  %3321 = call %nyx_string* @nyx_string_concat(%nyx_string* %3319, %nyx_string* %3320)
  %3322 = load i64, i64* %3210
  %3323 = call %nyx_string* @nyx_string_from_int(i64 %3322)
  %3324 = call %nyx_string* @nyx_string_concat(%nyx_string* %3321, %nyx_string* %3323)
  %3325 = load %nyx_string*, %nyx_string** %3166
  %3326 = call %nyx_string* @nyx_string_concat(%nyx_string* %3324, %nyx_string* %3325)
  %3327 = alloca %nyx_string*
  store %nyx_string* %3326, %nyx_string** %3327
  %3328 = load i8*, i8** %2795
  %3329 = load %nyx_string*, %nyx_string** %3208
  %3330 = call i8* @nyx_string_to_cstr(%nyx_string* %3329)
  %3331 = call i1 @nyx_map_contains_str(i8* %3328, i8* %3330)
  %3332 = xor i1 %3331, true
  br i1 %3332, label %then567, label %else568
then567:
  %3333 = load %nyx_string*, %nyx_string** %3327
  %3334 = load %nyx_string*, %nyx_string** %3169
  %3335 = call %nyx_string* @nyx_string_concat(%nyx_string* %3333, %nyx_string* %3334)
  store %nyx_string* %3335, %nyx_string** %3327
  br label %merge569
else568:
  br label %merge569
merge569:
  %3336 = load i64, i64* %3211
  %3337 = icmp sgt i64 %3336, 0
  br i1 %3337, label %then570, label %else571
then570:
  %3338 = load %nyx_string*, %nyx_string** %3327
  %3339 = load %nyx_string*, %nyx_string** %3172
  %3340 = call %nyx_string* @nyx_string_concat(%nyx_string* %3338, %nyx_string* %3339)
  %3341 = load i64, i64* %3211
  %3342 = call %nyx_string* @nyx_string_from_int(i64 %3341)
  %3343 = call %nyx_string* @nyx_string_concat(%nyx_string* %3340, %nyx_string* %3342)
  %3344 = load %nyx_string*, %nyx_string** %3175
  %3345 = call %nyx_string* @nyx_string_concat(%nyx_string* %3343, %nyx_string* %3344)
  store %nyx_string* %3345, %nyx_string** %3327
  br label %merge572
else571:
  br label %merge572
merge572:
  %3346 = load %nyx_string*, %nyx_string** %3327
  %3347 = call i8* @nyx_string_to_cstr(%nyx_string* %3346)
  call void @nyx_print_string(i8* %3347)
  %3348 = alloca i64
  store i64 0, i64* %3348
  %3349 = call i8* @llvm.stacksave()
  br label %while_cond573
while_cond573:
  %3350 = load i64, i64* %3348
  %3351 = load { i64, i8* }*, { i64, i8* }** %3213
  %3352 = call i64 @nyx_array_length({ i64, i8* }* %3351)
  %3353 = icmp slt i64 %3350, %3352
  br i1 %3353, label %while_body574, label %while_end575
while_body574:
  call void @llvm.stackrestore(i8* %3349)
  %3354 = load { i64, i8* }*, { i64, i8* }** %3213
  %3355 = load i64, i64* %3348
  %3356 = call i64 @nyx_array_get_checked({ i64, i8* }* %3354, i64 %3355, i64 2)
  %3357 = inttoptr i64 %3356 to %nyx_string*
  %3358 = alloca %nyx_string*
  store %nyx_string* %3357, %nyx_string** %3358
  %3359 = load %nyx_string*, %nyx_string** %3358
  %3360 = call i8* @nyx_string_to_cstr(%nyx_string* %3359)
  call void @nyx_print_string(i8* %3360)
  %3361 = load i64, i64* %3348
  %3362 = add i64 %3361, 1
  store i64 %3362, i64* %3348
  br label %while_cond573
while_end575:
  %3363 = load i64, i64* %3116
  %3364 = load i64, i64* %3209
  %3365 = add i64 %3363, %3364
  store i64 %3365, i64* %3116
  %3366 = load i64, i64* %3117
  %3367 = load i64, i64* %3210
  %3368 = add i64 %3366, %3367
  store i64 %3368, i64* %3117
  %3369 = load %nyx_string*, %nyx_string** %3115
  %3370 = load %nyx_string*, %nyx_string** %3178
  %3371 = call %nyx_string* @nyx_string_concat(%nyx_string* %3369, %nyx_string* %3370)
  %3372 = load %nyx_string*, %nyx_string** %3204
  %3373 = call %nyx_string* @nyx_string_concat(%nyx_string* %3371, %nyx_string* %3372)
  %3374 = load %nyx_string*, %nyx_string** %3151
  %3375 = call %nyx_string* @nyx_string_concat(%nyx_string* %3373, %nyx_string* %3374)
  %3376 = load %nyx_string*, %nyx_string** %3215
  %3377 = call %nyx_string* @nyx_string_concat(%nyx_string* %3375, %nyx_string* %3376)
  %3378 = load %nyx_string*, %nyx_string** %3217
  %3379 = call %nyx_string* @nyx_string_concat(%nyx_string* %3377, %nyx_string* %3378)
  %3380 = load %nyx_string*, %nyx_string** %3181
  %3381 = call %nyx_string* @nyx_string_concat(%nyx_string* %3379, %nyx_string* %3380)
  %3382 = load i64, i64* %3210
  %3383 = call %nyx_string* @nyx_string_from_int(i64 %3382)
  %3384 = call %nyx_string* @nyx_string_concat(%nyx_string* %3381, %nyx_string* %3383)
  %3385 = load %nyx_string*, %nyx_string** %3184
  %3386 = call %nyx_string* @nyx_string_concat(%nyx_string* %3384, %nyx_string* %3385)
  %3387 = load i64, i64* %3209
  %3388 = call %nyx_string* @nyx_string_from_int(i64 %3387)
  %3389 = call %nyx_string* @nyx_string_concat(%nyx_string* %3386, %nyx_string* %3388)
  %3390 = load %nyx_string*, %nyx_string** %3187
  %3391 = call %nyx_string* @nyx_string_concat(%nyx_string* %3389, %nyx_string* %3390)
  store %nyx_string* %3391, %nyx_string** %3115
  %3392 = load i64, i64* %3219
  store i64 %3392, i64* %3118
  br label %while_cond550
while_end552:
  %3393 = load { i64, i8* }*, { i64, i8* }** %2661
  %3394 = call i64 @nyx_array_length({ i64, i8* }* %3393)
  %3395 = icmp sgt i64 %3394, 0
  br i1 %3395, label %then576, label %else577
then576:
  %3396 = getelementptr [70 x i8], [70 x i8]* @.str350, i32 0, i32 0
  %3397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3396, i64 69)
  %3398 = call i8* @nyx_string_to_cstr(%nyx_string* %3397)
  call void @nyx_print_string(i8* %3398)
  %3399 = alloca i64
  store i64 0, i64* %3399
  %3400 = getelementptr [5 x i8], [5 x i8]* @.str351, i32 0, i32 0
  %3401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3400, i64 4)
  %3402 = alloca %nyx_string*
  store %nyx_string* %3401, %nyx_string** %3402
  %3403 = call i8* @llvm.stacksave()
  br label %while_cond579
while_cond579:
  %3404 = load i64, i64* %3399
  %3405 = load { i64, i8* }*, { i64, i8* }** %2661
  %3406 = call i64 @nyx_array_length({ i64, i8* }* %3405)
  %3407 = icmp slt i64 %3404, %3406
  br i1 %3407, label %while_body580, label %while_end581
while_body580:
  call void @llvm.stackrestore(i8* %3403)
  %3408 = load { i64, i8* }*, { i64, i8* }** %2661
  %3409 = load i64, i64* %3399
  %3410 = call i64 @nyx_array_get_checked({ i64, i8* }* %3408, i64 %3409, i64 2)
  %3411 = inttoptr i64 %3410 to %nyx_string*
  %3412 = alloca %nyx_string*
  store %nyx_string* %3411, %nyx_string** %3412
  %3413 = load %nyx_string*, %nyx_string** %3402
  %3414 = load %nyx_string*, %nyx_string** %3412
  %3415 = call %nyx_string* @nyx_string_concat(%nyx_string* %3413, %nyx_string* %3414)
  %3416 = call i8* @nyx_string_to_cstr(%nyx_string* %3415)
  call void @nyx_print_string(i8* %3416)
  %3417 = load i64, i64* %3399
  %3418 = add i64 %3417, 1
  store i64 %3418, i64* %3399
  br label %while_cond579
while_end581:
  br label %merge578
else577:
  br label %merge578
merge578:
  %3419 = getelementptr [10 x i8], [10 x i8]* @.str352, i32 0, i32 0
  %3420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3419, i64 9)
  %3421 = load i64, i64* %3116
  %3422 = call %nyx_string* @nyx_string_from_int(i64 %3421)
  %3423 = call %nyx_string* @nyx_string_concat(%nyx_string* %3420, %nyx_string* %3422)
  %3424 = getelementptr [2 x i8], [2 x i8]* @.str353, i32 0, i32 0
  %3425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3424, i64 1)
  %3426 = call %nyx_string* @nyx_string_concat(%nyx_string* %3423, %nyx_string* %3425)
  %3427 = load i64, i64* %3117
  %3428 = call %nyx_string* @nyx_string_from_int(i64 %3427)
  %3429 = call %nyx_string* @nyx_string_concat(%nyx_string* %3426, %nyx_string* %3428)
  %3430 = getelementptr [20 x i8], [20 x i8]* @.str354, i32 0, i32 0
  %3431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3430, i64 19)
  %3432 = call %nyx_string* @nyx_string_concat(%nyx_string* %3429, %nyx_string* %3431)
  %3433 = call i8* @nyx_string_to_cstr(%nyx_string* %3432)
  call void @nyx_print_string(i8* %3433)
  %3434 = load i1, i1* %want_lcov.ptr
  br i1 %3434, label %then582, label %else583
then582:
  %3435 = getelementptr [11 x i8], [11 x i8]* @.str355, i32 0, i32 0
  %3436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3435, i64 10)
  %3437 = load %nyx_string*, %nyx_string** %2647
  %3438 = call %nyx_string* @nyx_string_concat(%nyx_string* %3436, %nyx_string* %3437)
  %3439 = getelementptr [9 x i8], [9 x i8]* @.str356, i32 0, i32 0
  %3440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3439, i64 8)
  %3441 = call %nyx_string* @nyx_string_concat(%nyx_string* %3438, %nyx_string* %3440)
  %3442 = call i8* @nyx_string_to_cstr(%nyx_string* %3441)
  %3443 = call i64 @nyx_exec_code(i8* %3442)
  %3444 = load %nyx_string*, %nyx_string** %2647
  %3445 = getelementptr [22 x i8], [22 x i8]* @.str357, i32 0, i32 0
  %3446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3445, i64 21)
  %3447 = call %nyx_string* @nyx_string_concat(%nyx_string* %3444, %nyx_string* %3446)
  %3448 = load %nyx_string*, %nyx_string** %3115
  %3449 = ptrtoint %nyx_string* %3448 to i64
  %3450 = call i8* @nyx_string_to_cstr(%nyx_string* %3447)
  %3451 = inttoptr i64 %3449 to %nyx_string*
  %3452 = call i1 @nyx_write_file_safe(i8* %3450, %nyx_string* %3451)
  %3453 = getelementptr [29 x i8], [29 x i8]* @.str358, i32 0, i32 0
  %3454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3453, i64 28)
  %3455 = call i8* @nyx_string_to_cstr(%nyx_string* %3454)
  call void @nyx_print_string(i8* %3455)
  br label %merge584
else583:
  br label %merge584
merge584:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %3456 = getelementptr [115 x i8], [115 x i8]* @.str359, i32 0, i32 0
  %3457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3456, i64 114)
  %3458 = call i8* @nyx_string_to_cstr(%nyx_string* %3457)
  call void @nyx_print_string(i8* %3458)
  ret i64 0
}

define internal %nyx_string* @huella_compilador(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3459 = getelementptr [5 x i8], [5 x i8]* @.str360, i32 0, i32 0
  %3460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3459, i64 4)
  %3461 = load %nyx_string*, %nyx_string** %nh.ptr
  %3462 = call %nyx_string* @nyx_string_concat(%nyx_string* %3460, %nyx_string* %3461)
  %3463 = getelementptr [66 x i8], [66 x i8]* @.str361, i32 0, i32 0
  %3464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3463, i64 65)
  %3465 = call %nyx_string* @nyx_string_concat(%nyx_string* %3462, %nyx_string* %3464)
  %3466 = call i8* @nyx_string_to_cstr(%nyx_string* %3465)
  %3467 = call %nyx_string* @nyx_exec(i8* %3466)
  %3468 = call %nyx_string* @nyx_string_trim(%nyx_string* %3467)
  ret %nyx_string* %3468
}

define internal %nyx_string* @huella_resto(
%nyx_string* %nh.param) {
  %nh.ptr = alloca %nyx_string*
  store %nyx_string* %nh.param, %nyx_string** %nh.ptr
  %3469 = getelementptr [5 x i8], [5 x i8]* @.str362, i32 0, i32 0
  %3470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3469, i64 4)
  %3471 = load %nyx_string*, %nyx_string** %nh.ptr
  %3472 = call %nyx_string* @nyx_string_concat(%nyx_string* %3470, %nyx_string* %3471)
  %3473 = getelementptr [74 x i8], [74 x i8]* @.str363, i32 0, i32 0
  %3474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3473, i64 73)
  %3475 = call %nyx_string* @nyx_string_concat(%nyx_string* %3472, %nyx_string* %3474)
  %3476 = call i8* @nyx_string_to_cstr(%nyx_string* %3475)
  %3477 = call %nyx_string* @nyx_exec(i8* %3476)
  %3478 = call %nyx_string* @nyx_string_trim(%nyx_string* %3477)
  ret %nyx_string* %3478
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3479 = getelementptr [24 x i8], [24 x i8]* @.str364, i32 0, i32 0
  %3480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3479, i64 23)
  %3481 = call i8* @nyx_string_to_cstr(%nyx_string* %3480)
  call void @nyx_print_string(i8* %3481)
  %3482 = call %nyx_string* @tmp_base()
  %3483 = call i64 @barrer_huerfanos(%nyx_string* %3482)
  %3484 = alloca i64
  store i64 %3483, i64* %3484
  %3485 = getelementptr [9 x i8], [9 x i8]* @.str365, i32 0, i32 0
  %3486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3485, i64 8)
  %3487 = call i8* @nyx_string_to_cstr(%nyx_string* %3486)
  %3488 = call %nyx_string* @nyx_getenv(i8* %3487)
  %3489 = alloca %nyx_string*
  store %nyx_string* %3488, %nyx_string** %3489
  %3490 = load %nyx_string*, %nyx_string** %3489
  %3491 = getelementptr [9 x i8], [9 x i8]* @.str366, i32 0, i32 0
  %3492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3491, i64 8)
  %3493 = call %nyx_string* @nyx_string_concat(%nyx_string* %3490, %nyx_string* %3492)
  %3494 = call i8* @nyx_string_to_cstr(%nyx_string* %3493)
  %3495 = call %nyx_string* @nyx_read_file(i8* %3494)
  %3496 = call %nyx_string* @nyx_string_trim(%nyx_string* %3495)
  %3497 = alloca %nyx_string*
  store %nyx_string* %3496, %nyx_string** %3497
  %3498 = load %nyx_string*, %nyx_string** %3489
  %3499 = call %nyx_string* @huella_compilador(%nyx_string* %3498)
  %3500 = alloca %nyx_string*
  store %nyx_string* %3499, %nyx_string** %3500
  %3501 = load %nyx_string*, %nyx_string** %3489
  %3502 = call %nyx_string* @huella_resto(%nyx_string* %3501)
  %3503 = alloca %nyx_string*
  store %nyx_string* %3502, %nyx_string** %3503
  %3504 = getelementptr [18 x i8], [18 x i8]* @.str367, i32 0, i32 0
  %3505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3504, i64 17)
  %3506 = load %nyx_string*, %nyx_string** %3497
  %3507 = call %nyx_string* @nyx_string_concat(%nyx_string* %3505, %nyx_string* %3506)
  %3508 = getelementptr [17 x i8], [17 x i8]* @.str368, i32 0, i32 0
  %3509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3508, i64 16)
  %3510 = call %nyx_string* @nyx_string_concat(%nyx_string* %3507, %nyx_string* %3509)
  %3511 = load %nyx_string*, %nyx_string** %3500
  %3512 = call %nyx_string* @nyx_string_concat(%nyx_string* %3510, %nyx_string* %3511)
  %3513 = getelementptr [2 x i8], [2 x i8]* @.str369, i32 0, i32 0
  %3514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3513, i64 1)
  %3515 = call %nyx_string* @nyx_string_concat(%nyx_string* %3512, %nyx_string* %3514)
  %3516 = call i8* @nyx_string_to_cstr(%nyx_string* %3515)
  call void @nyx_print_string(i8* %3516)
  %3517 = call %TestConfig @load_test_config()
  %3518 = alloca %TestConfig
  store %TestConfig %3517, %TestConfig* %3518
  %3519 = call { i64, i8* }* @nyx_get_args()
  %3520 = alloca { i64, i8* }*
  store { i64, i8* }* %3519, { i64, i8* }** %3520
  %3521 = getelementptr [1 x i8], [1 x i8]* @.str370, i32 0, i32 0
  %3522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3521, i64 0)
  %3523 = alloca %nyx_string*
  store %nyx_string* %3522, %nyx_string** %3523
  %3524 = alloca i64
  store i64 1, i64* %3524
  %3525 = getelementptr [9 x i8], [9 x i8]* @.str371, i32 0, i32 0
  %3526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3525, i64 8)
  %3527 = alloca %nyx_string*
  store %nyx_string* %3526, %nyx_string** %3527
  %3528 = getelementptr [10 x i8], [10 x i8]* @.str372, i32 0, i32 0
  %3529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3528, i64 9)
  %3530 = alloca %nyx_string*
  store %nyx_string* %3529, %nyx_string** %3530
  %3531 = getelementptr [3 x i8], [3 x i8]* @.str373, i32 0, i32 0
  %3532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3531, i64 2)
  %3533 = alloca %nyx_string*
  store %nyx_string* %3532, %nyx_string** %3533
  %3534 = getelementptr [10 x i8], [10 x i8]* @.str374, i32 0, i32 0
  %3535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3534, i64 9)
  %3536 = alloca %nyx_string*
  store %nyx_string* %3535, %nyx_string** %3536
  %3537 = getelementptr [10 x i8], [10 x i8]* @.str375, i32 0, i32 0
  %3538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3537, i64 9)
  %3539 = alloca %nyx_string*
  store %nyx_string* %3538, %nyx_string** %3539
  %3540 = getelementptr [11 x i8], [11 x i8]* @.str376, i32 0, i32 0
  %3541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3540, i64 10)
  %3542 = alloca %nyx_string*
  store %nyx_string* %3541, %nyx_string** %3542
  %3543 = getelementptr [16 x i8], [16 x i8]* @.str377, i32 0, i32 0
  %3544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3543, i64 15)
  %3545 = alloca %nyx_string*
  store %nyx_string* %3544, %nyx_string** %3545
  %3546 = getelementptr [8 x i8], [8 x i8]* @.str378, i32 0, i32 0
  %3547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3546, i64 7)
  %3548 = alloca %nyx_string*
  store %nyx_string* %3547, %nyx_string** %3548
  %3549 = getelementptr [12 x i8], [12 x i8]* @.str379, i32 0, i32 0
  %3550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3549, i64 11)
  %3551 = alloca %nyx_string*
  store %nyx_string* %3550, %nyx_string** %3551
  %3552 = getelementptr [24 x i8], [24 x i8]* @.str380, i32 0, i32 0
  %3553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3552, i64 23)
  %3554 = alloca %nyx_string*
  store %nyx_string* %3553, %nyx_string** %3554
  %3555 = getelementptr [106 x i8], [106 x i8]* @.str381, i32 0, i32 0
  %3556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3555, i64 105)
  %3557 = alloca %nyx_string*
  store %nyx_string* %3556, %nyx_string** %3557
  %3558 = getelementptr [9 x i8], [9 x i8]* @.str382, i32 0, i32 0
  %3559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3558, i64 8)
  %3560 = alloca %nyx_string*
  store %nyx_string* %3559, %nyx_string** %3560
  %3561 = getelementptr [10 x i8], [10 x i8]* @.str383, i32 0, i32 0
  %3562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3561, i64 9)
  %3563 = alloca %nyx_string*
  store %nyx_string* %3562, %nyx_string** %3563
  %3564 = getelementptr [2 x i8], [2 x i8]* @.str384, i32 0, i32 0
  %3565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3564, i64 1)
  %3566 = alloca %nyx_string*
  store %nyx_string* %3565, %nyx_string** %3566
  %3567 = getelementptr [4 x i8], [4 x i8]* @.str385, i32 0, i32 0
  %3568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3567, i64 3)
  %3569 = alloca %nyx_string*
  store %nyx_string* %3568, %nyx_string** %3569
  %3570 = getelementptr [2 x i8], [2 x i8]* @.str386, i32 0, i32 0
  %3571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3570, i64 1)
  %3572 = alloca %nyx_string*
  store %nyx_string* %3571, %nyx_string** %3572
  %3573 = call i8* @llvm.stacksave()
  br label %while_cond585
while_cond585:
  %3574 = load i64, i64* %3524
  %3575 = load { i64, i8* }*, { i64, i8* }** %3520
  %3576 = call i64 @nyx_array_length({ i64, i8* }* %3575)
  %3577 = icmp slt i64 %3574, %3576
  br i1 %3577, label %while_body586, label %while_end587
while_body586:
  call void @llvm.stackrestore(i8* %3573)
  %3578 = load { i64, i8* }*, { i64, i8* }** %3520
  %3579 = load i64, i64* %3524
  %3580 = call i64 @nyx_array_get_checked({ i64, i8* }* %3578, i64 %3579, i64 2)
  %3581 = inttoptr i64 %3580 to %nyx_string*
  %3582 = alloca %nyx_string*
  store %nyx_string* %3581, %nyx_string** %3582
  %3583 = alloca i1
  store i1 false, i1* %3583
  %3584 = load %nyx_string*, %nyx_string** %3582
  %3585 = load %nyx_string*, %nyx_string** %3527
  %3586 = call i1 @nyx_string_equals(%nyx_string* %3584, %nyx_string* %3585)
  br i1 %3586, label %sc_and_rhs588, label %sc_and_end589
sc_and_rhs588:
  %3587 = load i64, i64* %3524
  %3588 = add i64 %3587, 1
  %3589 = load { i64, i8* }*, { i64, i8* }** %3520
  %3590 = call i64 @nyx_array_length({ i64, i8* }* %3589)
  %3591 = icmp slt i64 %3588, %3590
  store i1 %3591, i1* %3583
  br label %sc_and_end589
sc_and_end589:
  %3592 = load i1, i1* %3583
  br i1 %3592, label %then590, label %else591
then590:
  %3593 = load i64, i64* %3524
  %3594 = add i64 %3593, 1
  store i64 %3594, i64* %3524
  %3595 = load { i64, i8* }*, { i64, i8* }** %3520
  %3596 = load i64, i64* %3524
  %3597 = call i64 @nyx_array_get_checked({ i64, i8* }* %3595, i64 %3596, i64 2)
  %3598 = inttoptr i64 %3597 to %nyx_string*
  %3599 = alloca %nyx_string*
  store %nyx_string* %3598, %nyx_string** %3599
  %3600 = load %nyx_string*, %nyx_string** %3599
  %3601 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 2
  store %nyx_string* %3600, %nyx_string** %3601
  br label %merge592
else591:
  %3602 = alloca i1
  store i1 true, i1* %3602
  %3603 = load %nyx_string*, %nyx_string** %3582
  %3604 = load %nyx_string*, %nyx_string** %3530
  %3605 = call i1 @nyx_string_equals(%nyx_string* %3603, %nyx_string* %3604)
  br i1 %3605, label %sc_or_end594, label %sc_or_rhs593
sc_or_rhs593:
  %3606 = load %nyx_string*, %nyx_string** %3582
  %3607 = load %nyx_string*, %nyx_string** %3533
  %3608 = call i1 @nyx_string_equals(%nyx_string* %3606, %nyx_string* %3607)
  store i1 %3608, i1* %3602
  br label %sc_or_end594
sc_or_end594:
  %3609 = load i1, i1* %3602
  br i1 %3609, label %then595, label %else596
then595:
  %3610 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 3
  store i1 1, i1* %3610
  br label %merge597
else596:
  %3611 = alloca i1
  store i1 false, i1* %3611
  %3612 = load %nyx_string*, %nyx_string** %3582
  %3613 = load %nyx_string*, %nyx_string** %3536
  %3614 = call i1 @nyx_string_equals(%nyx_string* %3612, %nyx_string* %3613)
  br i1 %3614, label %sc_and_rhs598, label %sc_and_end599
sc_and_rhs598:
  %3615 = load i64, i64* %3524
  %3616 = add i64 %3615, 1
  %3617 = load { i64, i8* }*, { i64, i8* }** %3520
  %3618 = call i64 @nyx_array_length({ i64, i8* }* %3617)
  %3619 = icmp slt i64 %3616, %3618
  store i1 %3619, i1* %3611
  br label %sc_and_end599
sc_and_end599:
  %3620 = load i1, i1* %3611
  br i1 %3620, label %then600, label %else601
then600:
  %3621 = load i64, i64* %3524
  %3622 = add i64 %3621, 1
  store i64 %3622, i64* %3524
  %3623 = load { i64, i8* }*, { i64, i8* }** %3520
  %3624 = load i64, i64* %3524
  %3625 = call i64 @nyx_array_get_checked({ i64, i8* }* %3623, i64 %3624, i64 2)
  %3626 = inttoptr i64 %3625 to %nyx_string*
  %3627 = alloca %nyx_string*
  store %nyx_string* %3626, %nyx_string** %3627
  %3628 = load %nyx_string*, %nyx_string** %3627
  %3629 = call i64 @nyx_string_to_int(%nyx_string* %3628)
  %3630 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 1
  store i64 %3629, i64* %3630
  br label %merge602
else601:
  %3631 = load %nyx_string*, %nyx_string** %3582
  %3632 = load %nyx_string*, %nyx_string** %3539
  %3633 = call i1 @nyx_string_equals(%nyx_string* %3631, %nyx_string* %3632)
  br i1 %3633, label %then603, label %else604
then603:
  %3634 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 7
  store i1 1, i1* %3634
  br label %merge605
else604:
  %3635 = load %nyx_string*, %nyx_string** %3582
  %3636 = load %nyx_string*, %nyx_string** %3542
  %3637 = call i1 @nyx_string_equals(%nyx_string* %3635, %nyx_string* %3636)
  br i1 %3637, label %then606, label %else607
then606:
  %3638 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 5
  store i1 1, i1* %3638
  br label %merge608
else607:
  %3639 = load %nyx_string*, %nyx_string** %3582
  %3640 = load %nyx_string*, %nyx_string** %3545
  %3641 = call i1 @nyx_string_equals(%nyx_string* %3639, %nyx_string* %3640)
  br i1 %3641, label %then609, label %else610
then609:
  %3642 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 5
  store i1 1, i1* %3642
  %3643 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 6
  store i1 1, i1* %3643
  br label %merge611
else610:
  %3644 = alloca i1
  store i1 true, i1* %3644
  %3645 = load %nyx_string*, %nyx_string** %3582
  %3646 = load %nyx_string*, %nyx_string** %3548
  %3647 = call i1 @nyx_string_equals(%nyx_string* %3645, %nyx_string* %3646)
  br i1 %3647, label %sc_or_end613, label %sc_or_rhs612
sc_or_rhs612:
  %3648 = load %nyx_string*, %nyx_string** %3582
  %3649 = load %nyx_string*, %nyx_string** %3551
  %3650 = call i1 @nyx_string_starts_with(%nyx_string* %3648, %nyx_string* %3649)
  store i1 %3650, i1* %3644
  br label %sc_or_end613
sc_or_end613:
  %3651 = load i1, i1* %3644
  br i1 %3651, label %then614, label %else615
then614:
  %3652 = load %nyx_string*, %nyx_string** %3554
  %3653 = load %nyx_string*, %nyx_string** %3582
  %3654 = call %nyx_string* @nyx_string_concat(%nyx_string* %3652, %nyx_string* %3653)
  %3655 = call i8* @nyx_string_to_cstr(%nyx_string* %3654)
  call void @nyx_print_string(i8* %3655)
  %3656 = load %nyx_string*, %nyx_string** %3557
  %3657 = call i8* @nyx_string_to_cstr(%nyx_string* %3656)
  call void @nyx_print_string(i8* %3657)
  %3658 = call i64 @print_valid_options()
  ret i64 1
else615:
  %3659 = alloca i1
  store i1 true, i1* %3659
  %3660 = load %nyx_string*, %nyx_string** %3582
  %3661 = load %nyx_string*, %nyx_string** %3560
  %3662 = call i1 @nyx_string_equals(%nyx_string* %3660, %nyx_string* %3661)
  br i1 %3662, label %sc_or_end618, label %sc_or_rhs617
sc_or_rhs617:
  %3663 = load %nyx_string*, %nyx_string** %3582
  %3664 = load %nyx_string*, %nyx_string** %3563
  %3665 = call i1 @nyx_string_starts_with(%nyx_string* %3663, %nyx_string* %3664)
  store i1 %3665, i1* %3659
  br label %sc_or_end618
sc_or_end618:
  %3666 = load i1, i1* %3659
  br i1 %3666, label %then619, label %else620
then619:
  %3667 = load %nyx_string*, %nyx_string** %3582
  store %nyx_string* %3667, %nyx_string** %3523
  %3668 = alloca i1
  store i1 false, i1* %3668
  %3669 = load %nyx_string*, %nyx_string** %3582
  %3670 = load %nyx_string*, %nyx_string** %3560
  %3671 = call i1 @nyx_string_equals(%nyx_string* %3669, %nyx_string* %3670)
  br i1 %3671, label %sc_and_rhs622, label %sc_and_end623
sc_and_rhs622:
  %3672 = load i64, i64* %3524
  %3673 = add i64 %3672, 1
  %3674 = load { i64, i8* }*, { i64, i8* }** %3520
  %3675 = call i64 @nyx_array_length({ i64, i8* }* %3674)
  %3676 = icmp slt i64 %3673, %3675
  store i1 %3676, i1* %3668
  br label %sc_and_end623
sc_and_end623:
  %3677 = load i1, i1* %3668
  br i1 %3677, label %then624, label %else625
then624:
  %3678 = load i64, i64* %3524
  %3679 = add i64 %3678, 1
  store i64 %3679, i64* %3524
  %3680 = load { i64, i8* }*, { i64, i8* }** %3520
  %3681 = load i64, i64* %3524
  %3682 = call i64 @nyx_array_get_checked({ i64, i8* }* %3680, i64 %3681, i64 2)
  %3683 = inttoptr i64 %3682 to %nyx_string*
  %3684 = alloca %nyx_string*
  store %nyx_string* %3683, %nyx_string** %3684
  %3685 = load %nyx_string*, %nyx_string** %3582
  %3686 = load %nyx_string*, %nyx_string** %3566
  %3687 = call %nyx_string* @nyx_string_concat(%nyx_string* %3685, %nyx_string* %3686)
  %3688 = load %nyx_string*, %nyx_string** %3684
  %3689 = call %nyx_string* @nyx_string_concat(%nyx_string* %3687, %nyx_string* %3688)
  store %nyx_string* %3689, %nyx_string** %3523
  br label %merge626
else625:
  br label %merge626
merge626:
  br label %merge621
else620:
  %3690 = alloca i1
  store i1 true, i1* %3690
  %3691 = load %nyx_string*, %nyx_string** %3582
  %3692 = load %nyx_string*, %nyx_string** %3527
  %3693 = call i1 @nyx_string_equals(%nyx_string* %3691, %nyx_string* %3692)
  br i1 %3693, label %sc_or_end628, label %sc_or_rhs627
sc_or_rhs627:
  %3694 = load %nyx_string*, %nyx_string** %3582
  %3695 = load %nyx_string*, %nyx_string** %3536
  %3696 = call i1 @nyx_string_equals(%nyx_string* %3694, %nyx_string* %3695)
  store i1 %3696, i1* %3690
  br label %sc_or_end628
sc_or_end628:
  %3697 = load i1, i1* %3690
  br i1 %3697, label %then629, label %else630
then629:
  br label %merge631
else630:
  %3698 = load %nyx_string*, %nyx_string** %3582
  %3699 = load %nyx_string*, %nyx_string** %3569
  %3700 = call i1 @nyx_string_ends_with(%nyx_string* %3698, %nyx_string* %3699)
  br i1 %3700, label %then632, label %else633
then632:
  %3701 = load %nyx_string*, %nyx_string** %3582
  %3702 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 4
  store %nyx_string* %3701, %nyx_string** %3702
  br label %merge634
else633:
  %3703 = load %nyx_string*, %nyx_string** %3582
  %3704 = load %nyx_string*, %nyx_string** %3572
  %3705 = call i1 @nyx_string_starts_with(%nyx_string* %3703, %nyx_string* %3704)
  br i1 %3705, label %then635, label %else636
then635:
  %3706 = load %nyx_string*, %nyx_string** %3554
  %3707 = load %nyx_string*, %nyx_string** %3582
  %3708 = call %nyx_string* @nyx_string_concat(%nyx_string* %3706, %nyx_string* %3707)
  %3709 = call i8* @nyx_string_to_cstr(%nyx_string* %3708)
  call void @nyx_print_string(i8* %3709)
  %3710 = call i64 @print_valid_options()
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
  %3711 = load i64, i64* %3524
  %3712 = add i64 %3711, 1
  store i64 %3712, i64* %3524
  br label %while_cond585
while_end587:
  %3713 = load %nyx_string*, %nyx_string** %3523
  %3714 = getelementptr [1 x i8], [1 x i8]* @.str387, i32 0, i32 0
  %3715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3714, i64 0)
  %3716 = call i1 @nyx_string_equals(%nyx_string* %3713, %nyx_string* %3715)
  %3717 = xor i1 %3716, true
  br i1 %3717, label %then638, label %else639
then638:
  %3718 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 5
  %3719 = load i1, i1* %3718
  br i1 %3719, label %then641, label %else642
then641:
  %3720 = getelementptr [47 x i8], [47 x i8]* @.str388, i32 0, i32 0
  %3721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3720, i64 46)
  %3722 = load %nyx_string*, %nyx_string** %3523
  %3723 = call %nyx_string* @nyx_string_concat(%nyx_string* %3721, %nyx_string* %3722)
  %3724 = getelementptr [58 x i8], [58 x i8]* @.str389, i32 0, i32 0
  %3725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3724, i64 57)
  %3726 = call %nyx_string* @nyx_string_concat(%nyx_string* %3723, %nyx_string* %3725)
  %3727 = call i8* @nyx_string_to_cstr(%nyx_string* %3726)
  call void @nyx_print_string(i8* %3727)
  br label %merge643
else642:
  %3728 = getelementptr [24 x i8], [24 x i8]* @.str390, i32 0, i32 0
  %3729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3728, i64 23)
  %3730 = load %nyx_string*, %nyx_string** %3523
  %3731 = call %nyx_string* @nyx_string_concat(%nyx_string* %3729, %nyx_string* %3730)
  %3732 = call i8* @nyx_string_to_cstr(%nyx_string* %3731)
  call void @nyx_print_string(i8* %3732)
  br label %merge643
merge643:
  %3733 = call i64 @print_valid_options()
  ret i64 1
else639:
  br label %merge640
merge640:
  %3734 = getelementptr [1 x i8], [1 x i8]* @.str391, i32 0, i32 0
  %3735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3734, i64 0)
  %3736 = alloca %nyx_string*
  store %nyx_string* %3735, %nyx_string** %3736
  %3737 = getelementptr [1 x i8], [1 x i8]* @.str392, i32 0, i32 0
  %3738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3737, i64 0)
  %3739 = alloca %nyx_string*
  store %nyx_string* %3738, %nyx_string** %3739
  %3740 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 5
  %3741 = load i1, i1* %3740
  br i1 %3741, label %then644, label %else645
then644:
  %3742 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3742, %nyx_string** %3736
  %3743 = load %nyx_string*, %nyx_string** %3736
  %3744 = getelementptr [1 x i8], [1 x i8]* @.str393, i32 0, i32 0
  %3745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3744, i64 0)
  %3746 = call i1 @nyx_string_equals(%nyx_string* %3743, %nyx_string* %3745)
  br i1 %3746, label %then647, label %else648
then647:
  %3747 = call %nyx_string* @cov_clang_major()
  %3748 = alloca %nyx_string*
  store %nyx_string* %3747, %nyx_string** %3748
  %3749 = getelementptr [5 x i8], [5 x i8]* @.str394, i32 0, i32 0
  %3750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3749, i64 4)
  %3751 = alloca %nyx_string*
  store %nyx_string* %3750, %nyx_string** %3751
  %3752 = load %nyx_string*, %nyx_string** %3748
  %3753 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %3754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3753, i64 0)
  %3755 = call i1 @nyx_string_equals(%nyx_string* %3752, %nyx_string* %3754)
  %3756 = xor i1 %3755, true
  br i1 %3756, label %then650, label %else651
then650:
  %3757 = getelementptr [6 x i8], [6 x i8]* @.str396, i32 0, i32 0
  %3758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3757, i64 5)
  %3759 = load %nyx_string*, %nyx_string** %3748
  %3760 = call %nyx_string* @nyx_string_concat(%nyx_string* %3758, %nyx_string* %3759)
  store %nyx_string* %3760, %nyx_string** %3751
  br label %merge652
else651:
  br label %merge652
merge652:
  %3761 = getelementptr [101 x i8], [101 x i8]* @.str397, i32 0, i32 0
  %3762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3761, i64 100)
  %3763 = call i8* @nyx_string_to_cstr(%nyx_string* %3762)
  call void @nyx_print_string(i8* %3763)
  %3764 = getelementptr [35 x i8], [35 x i8]* @.str398, i32 0, i32 0
  %3765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3764, i64 34)
  %3766 = load %nyx_string*, %nyx_string** %3751
  %3767 = call %nyx_string* @nyx_string_concat(%nyx_string* %3765, %nyx_string* %3766)
  %3768 = call i8* @nyx_string_to_cstr(%nyx_string* %3767)
  call void @nyx_print_string(i8* %3768)
  %3769 = getelementptr [82 x i8], [82 x i8]* @.str399, i32 0, i32 0
  %3770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3769, i64 81)
  %3771 = call i8* @nyx_string_to_cstr(%nyx_string* %3770)
  call void @nyx_print_string(i8* %3771)
  %3772 = getelementptr [82 x i8], [82 x i8]* @.str400, i32 0, i32 0
  %3773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3772, i64 81)
  %3774 = call i8* @nyx_string_to_cstr(%nyx_string* %3773)
  call void @nyx_print_string(i8* %3774)
  ret i64 1
else648:
  br label %merge649
merge649:
  %3775 = getelementptr [12 x i8], [12 x i8]* @.str401, i32 0, i32 0
  %3776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3775, i64 11)
  %3777 = getelementptr [5 x i8], [5 x i8]* @.str402, i32 0, i32 0
  %3778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3777, i64 4)
  %3779 = call %nyx_string* @tmp_plantilla(%nyx_string* %3778)
  %3780 = call %nyx_string* @nyx_string_concat(%nyx_string* %3776, %nyx_string* %3779)
  %3781 = getelementptr [2 x i8], [2 x i8]* @.str403, i32 0, i32 0
  %3782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3781, i64 1)
  %3783 = call %nyx_string* @nyx_string_concat(%nyx_string* %3780, %nyx_string* %3782)
  %3784 = call i8* @nyx_string_to_cstr(%nyx_string* %3783)
  %3785 = call %nyx_string* @nyx_exec(i8* %3784)
  %3786 = call %nyx_string* @nyx_string_trim(%nyx_string* %3785)
  store %nyx_string* %3786, %nyx_string** %3739
  %3787 = load %nyx_string*, %nyx_string** %3739
  %3788 = getelementptr [1 x i8], [1 x i8]* @.str404, i32 0, i32 0
  %3789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3788, i64 0)
  %3790 = call i1 @nyx_string_equals(%nyx_string* %3787, %nyx_string* %3789)
  br i1 %3790, label %then653, label %else654
then653:
  %3791 = getelementptr [55 x i8], [55 x i8]* @.str405, i32 0, i32 0
  %3792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3791, i64 54)
  %3793 = call i8* @nyx_string_to_cstr(%nyx_string* %3792)
  call void @nyx_print_string(i8* %3793)
  ret i64 1
else654:
  br label %merge655
merge655:
  br label %merge646
else645:
  br label %merge646
merge646:
  %3794 = call { i64, i8* }* @nyx_array_new_ptr()
  %3795 = alloca { i64, i8* }*
  store { i64, i8* }* %3794, { i64, i8* }** %3795
  %3796 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 4
  %3797 = load %nyx_string*, %nyx_string** %3796
  %3798 = getelementptr [1 x i8], [1 x i8]* @.str406, i32 0, i32 0
  %3799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3798, i64 0)
  %3800 = call i1 @nyx_string_equals(%nyx_string* %3797, %nyx_string* %3799)
  %3801 = xor i1 %3800, true
  br i1 %3801, label %then656, label %else657
then656:
  %3802 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 4
  %3803 = load %nyx_string*, %nyx_string** %3802
  %3804 = call i8* @nyx_string_to_cstr(%nyx_string* %3803)
  %3805 = call i1 @nyx_file_exists(i8* %3804)
  %3806 = xor i1 %3805, true
  br i1 %3806, label %then659, label %else660
then659:
  %3807 = getelementptr [24 x i8], [24 x i8]* @.str407, i32 0, i32 0
  %3808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3807, i64 23)
  %3809 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 4
  %3810 = load %nyx_string*, %nyx_string** %3809
  %3811 = call %nyx_string* @nyx_string_concat(%nyx_string* %3808, %nyx_string* %3810)
  %3812 = call i8* @nyx_string_to_cstr(%nyx_string* %3811)
  call void @nyx_print_string(i8* %3812)
  ret i64 1
else660:
  br label %merge661
merge661:
  %3813 = load { i64, i8* }*, { i64, i8* }** %3795
  %3814 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 4
  %3815 = load %nyx_string*, %nyx_string** %3814
  %3816 = ptrtoint %nyx_string* %3815 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3813, i64 %3816, i64 2)
  br label %merge658
else657:
  %3817 = load %TestConfig, %TestConfig* %3518
  %3818 = call { i64, i8* }* @discover_tests(%TestConfig %3817)
  store { i64, i8* }* %3818, { i64, i8* }** %3795
  br label %merge658
merge658:
  %3819 = load { i64, i8* }*, { i64, i8* }** %3795
  %3820 = call i64 @nyx_array_length({ i64, i8* }* %3819)
  %3821 = icmp eq i64 %3820, 0
  br i1 %3821, label %then662, label %else663
then662:
  %3822 = getelementptr [23 x i8], [23 x i8]* @.str408, i32 0, i32 0
  %3823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3822, i64 22)
  %3824 = call i8* @nyx_string_to_cstr(%nyx_string* %3823)
  call void @nyx_print_string(i8* %3824)
  %3825 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 2
  %3826 = load %nyx_string*, %nyx_string** %3825
  %3827 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %3828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3827, i64 0)
  %3829 = call i1 @nyx_string_equals(%nyx_string* %3826, %nyx_string* %3828)
  %3830 = xor i1 %3829, true
  br i1 %3830, label %then665, label %else666
then665:
  %3831 = getelementptr [12 x i8], [12 x i8]* @.str410, i32 0, i32 0
  %3832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3831, i64 11)
  %3833 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 2
  %3834 = load %nyx_string*, %nyx_string** %3833
  %3835 = call %nyx_string* @nyx_string_concat(%nyx_string* %3832, %nyx_string* %3834)
  %3836 = getelementptr [2 x i8], [2 x i8]* @.str411, i32 0, i32 0
  %3837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3836, i64 1)
  %3838 = call %nyx_string* @nyx_string_concat(%nyx_string* %3835, %nyx_string* %3837)
  %3839 = call i8* @nyx_string_to_cstr(%nyx_string* %3838)
  call void @nyx_print_string(i8* %3839)
  br label %merge667
else666:
  br label %merge667
merge667:
  %3840 = getelementptr [14 x i8], [14 x i8]* @.str412, i32 0, i32 0
  %3841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3840, i64 13)
  %3842 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 0
  %3843 = load %nyx_string*, %nyx_string** %3842
  %3844 = call %nyx_string* @nyx_string_concat(%nyx_string* %3841, %nyx_string* %3843)
  %3845 = getelementptr [2 x i8], [2 x i8]* @.str413, i32 0, i32 0
  %3846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3845, i64 1)
  %3847 = call %nyx_string* @nyx_string_concat(%nyx_string* %3844, %nyx_string* %3846)
  %3848 = call i8* @nyx_string_to_cstr(%nyx_string* %3847)
  call void @nyx_print_string(i8* %3848)
  ret i64 0
else663:
  br label %merge664
merge664:
  %3849 = getelementptr [9 x i8], [9 x i8]* @.str414, i32 0, i32 0
  %3850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3849, i64 8)
  %3851 = load { i64, i8* }*, { i64, i8* }** %3795
  %3852 = call i64 @nyx_array_length({ i64, i8* }* %3851)
  %3853 = call %nyx_string* @nyx_string_from_int(i64 %3852)
  %3854 = call %nyx_string* @nyx_string_concat(%nyx_string* %3850, %nyx_string* %3853)
  %3855 = getelementptr [14 x i8], [14 x i8]* @.str415, i32 0, i32 0
  %3856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3855, i64 13)
  %3857 = call %nyx_string* @nyx_string_concat(%nyx_string* %3854, %nyx_string* %3856)
  %3858 = call i8* @nyx_string_to_cstr(%nyx_string* %3857)
  call void @nyx_print_string(i8* %3858)
  %3859 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 2
  %3860 = load %nyx_string*, %nyx_string** %3859
  %3861 = getelementptr [1 x i8], [1 x i8]* @.str416, i32 0, i32 0
  %3862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3861, i64 0)
  %3863 = call i1 @nyx_string_equals(%nyx_string* %3860, %nyx_string* %3862)
  %3864 = xor i1 %3863, true
  br i1 %3864, label %then668, label %else669
then668:
  %3865 = getelementptr [12 x i8], [12 x i8]* @.str417, i32 0, i32 0
  %3866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3865, i64 11)
  %3867 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 2
  %3868 = load %nyx_string*, %nyx_string** %3867
  %3869 = call %nyx_string* @nyx_string_concat(%nyx_string* %3866, %nyx_string* %3868)
  %3870 = getelementptr [2 x i8], [2 x i8]* @.str418, i32 0, i32 0
  %3871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3870, i64 1)
  %3872 = call %nyx_string* @nyx_string_concat(%nyx_string* %3869, %nyx_string* %3871)
  %3873 = call i8* @nyx_string_to_cstr(%nyx_string* %3872)
  call void @nyx_print_string(i8* %3873)
  br label %merge670
else669:
  br label %merge670
merge670:
  %3874 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %3875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3874, i64 0)
  %3876 = call i8* @nyx_string_to_cstr(%nyx_string* %3875)
  call void @nyx_print_string(i8* %3876)
  %3877 = alloca i1
  store i1 false, i1* %3877
  %3878 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 8
  %3879 = load %nyx_string*, %nyx_string** %3878
  %3880 = getelementptr [1 x i8], [1 x i8]* @.str420, i32 0, i32 0
  %3881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3880, i64 0)
  %3882 = call i1 @nyx_string_equals(%nyx_string* %3879, %nyx_string* %3881)
  %3883 = xor i1 %3882, true
  br i1 %3883, label %sc_and_rhs671, label %sc_and_end672
sc_and_rhs671:
  %3884 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 5
  %3885 = load i1, i1* %3884
  %3886 = xor i1 %3885, true
  store i1 %3886, i1* %3877
  br label %sc_and_end672
sc_and_end672:
  %3887 = load i1, i1* %3877
  br i1 %3887, label %then673, label %else674
then673:
  %3888 = getelementptr [9 x i8], [9 x i8]* @.str421, i32 0, i32 0
  %3889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3888, i64 8)
  %3890 = call i8* @nyx_string_to_cstr(%nyx_string* %3889)
  %3891 = call %nyx_string* @nyx_getenv(i8* %3890)
  %3892 = alloca %nyx_string*
  store %nyx_string* %3891, %nyx_string** %3892
  %3893 = load %nyx_string*, %nyx_string** %3892
  %3894 = getelementptr [11 x i8], [11 x i8]* @.str422, i32 0, i32 0
  %3895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3894, i64 10)
  %3896 = call %nyx_string* @nyx_string_concat(%nyx_string* %3893, %nyx_string* %3895)
  %3897 = alloca %nyx_string*
  store %nyx_string* %3896, %nyx_string** %3897
  %3898 = load %nyx_string*, %nyx_string** %3897
  %3899 = call i8* @nyx_string_to_cstr(%nyx_string* %3898)
  %3900 = call i1 @nyx_file_exists(i8* %3899)
  %3901 = xor i1 %3900, true
  br i1 %3901, label %then676, label %else677
then676:
  %3902 = load %nyx_string*, %nyx_string** %3892
  %3903 = getelementptr [15 x i8], [15 x i8]* @.str423, i32 0, i32 0
  %3904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3903, i64 14)
  %3905 = call %nyx_string* @nyx_string_concat(%nyx_string* %3902, %nyx_string* %3904)
  store %nyx_string* %3905, %nyx_string** %3897
  br label %merge678
else677:
  br label %merge678
merge678:
  %3906 = getelementptr [1 x i8], [1 x i8]* @.str424, i32 0, i32 0
  %3907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3906, i64 0)
  %3908 = alloca %nyx_string*
  store %nyx_string* %3907, %nyx_string** %3908
  %3909 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 7
  %3910 = load i1, i1* %3909
  br i1 %3910, label %then679, label %else680
then679:
  %3911 = getelementptr [11 x i8], [11 x i8]* @.str425, i32 0, i32 0
  %3912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3911, i64 10)
  store %nyx_string* %3912, %nyx_string** %3908
  br label %merge681
else680:
  br label %merge681
merge681:
  %3913 = getelementptr [9 x i8], [9 x i8]* @.str426, i32 0, i32 0
  %3914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3913, i64 8)
  %3915 = getelementptr [11 x i8], [11 x i8]* @.str427, i32 0, i32 0
  %3916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3915, i64 10)
  %3917 = call %nyx_string* @tmp_plantilla(%nyx_string* %3916)
  %3918 = call %nyx_string* @nyx_string_concat(%nyx_string* %3914, %nyx_string* %3917)
  %3919 = getelementptr [2 x i8], [2 x i8]* @.str428, i32 0, i32 0
  %3920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3919, i64 1)
  %3921 = call %nyx_string* @nyx_string_concat(%nyx_string* %3918, %nyx_string* %3920)
  %3922 = call i8* @nyx_string_to_cstr(%nyx_string* %3921)
  %3923 = call %nyx_string* @nyx_exec(i8* %3922)
  %3924 = call %nyx_string* @nyx_string_trim(%nyx_string* %3923)
  %3925 = alloca %nyx_string*
  store %nyx_string* %3924, %nyx_string** %3925
  %3926 = getelementptr [2 x i8], [2 x i8]* @.str429, i32 0, i32 0
  %3927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3926, i64 1)
  %3928 = load %nyx_string*, %nyx_string** %3897
  %3929 = call %nyx_string* @nyx_string_concat(%nyx_string* %3927, %nyx_string* %3928)
  %3930 = getelementptr [7 x i8], [7 x i8]* @.str430, i32 0, i32 0
  %3931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3930, i64 6)
  %3932 = call %nyx_string* @nyx_string_concat(%nyx_string* %3929, %nyx_string* %3931)
  %3933 = load %nyx_string*, %nyx_string** %3908
  %3934 = call %nyx_string* @nyx_string_concat(%nyx_string* %3932, %nyx_string* %3933)
  %3935 = getelementptr [5 x i8], [5 x i8]* @.str431, i32 0, i32 0
  %3936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3935, i64 4)
  %3937 = call %nyx_string* @nyx_string_concat(%nyx_string* %3934, %nyx_string* %3936)
  %3938 = load %nyx_string*, %nyx_string** %3925
  %3939 = call %nyx_string* @nyx_string_concat(%nyx_string* %3937, %nyx_string* %3938)
  %3940 = getelementptr [7 x i8], [7 x i8]* @.str432, i32 0, i32 0
  %3941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3940, i64 6)
  %3942 = call %nyx_string* @nyx_string_concat(%nyx_string* %3939, %nyx_string* %3941)
  %3943 = call i8* @nyx_string_to_cstr(%nyx_string* %3942)
  %3944 = call i64 @nyx_exec_code(i8* %3943)
  %3945 = alloca i64
  store i64 %3944, i64* %3945
  %3946 = load %nyx_string*, %nyx_string** %3925
  %3947 = call i8* @nyx_string_to_cstr(%nyx_string* %3946)
  %3948 = call %nyx_string* @nyx_read_file(i8* %3947)
  %3949 = alloca %nyx_string*
  store %nyx_string* %3948, %nyx_string** %3949
  %3950 = getelementptr [8 x i8], [8 x i8]* @.str433, i32 0, i32 0
  %3951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3950, i64 7)
  %3952 = load %nyx_string*, %nyx_string** %3925
  %3953 = call %nyx_string* @nyx_string_concat(%nyx_string* %3951, %nyx_string* %3952)
  %3954 = getelementptr [2 x i8], [2 x i8]* @.str434, i32 0, i32 0
  %3955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3954, i64 1)
  %3956 = call %nyx_string* @nyx_string_concat(%nyx_string* %3953, %nyx_string* %3955)
  %3957 = call i8* @nyx_string_to_cstr(%nyx_string* %3956)
  %3958 = call i64 @nyx_exec_code(i8* %3957)
  %3959 = load i64, i64* %3945
  %3960 = icmp ne i64 %3959, 0
  br i1 %3960, label %then682, label %else683
then682:
  %3961 = getelementptr [65 x i8], [65 x i8]* @.str435, i32 0, i32 0
  %3962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3961, i64 64)
  %3963 = call i8* @nyx_string_to_cstr(%nyx_string* %3962)
  call void @nyx_print_string(i8* %3963)
  %3964 = load %nyx_string*, %nyx_string** %3949
  %3965 = call i8* @nyx_string_to_cstr(%nyx_string* %3964)
  call void @nyx_print_string(i8* %3965)
  ret i64 1
else683:
  br label %merge684
merge684:
  %3966 = load %nyx_string*, %nyx_string** %3949
  %3967 = getelementptr [2 x i8], [2 x i8]* @.str436, i32 0, i32 0
  %3968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3967, i64 1)
  %3969 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3966, %nyx_string* %3968)
  %3970 = alloca { i64, i8* }*
  store { i64, i8* }* %3969, { i64, i8* }** %3970
  %3971 = alloca i64
  store i64 0, i64* %3971
  %3972 = alloca i64
  store i64 0, i64* %3972
  %3973 = alloca i64
  store i64 0, i64* %3973
  %3974 = getelementptr [13 x i8], [13 x i8]* @.str437, i32 0, i32 0
  %3975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3974, i64 12)
  %3976 = alloca %nyx_string*
  store %nyx_string* %3975, %nyx_string** %3976
  %3977 = getelementptr [6 x i8], [6 x i8]* @.str438, i32 0, i32 0
  %3978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3977, i64 5)
  %3979 = alloca %nyx_string*
  store %nyx_string* %3978, %nyx_string** %3979
  %3980 = getelementptr [8 x i8], [8 x i8]* @.str439, i32 0, i32 0
  %3981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3980, i64 7)
  %3982 = alloca %nyx_string*
  store %nyx_string* %3981, %nyx_string** %3982
  %3983 = getelementptr [4 x i8], [4 x i8]* @.str440, i32 0, i32 0
  %3984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3983, i64 3)
  %3985 = alloca %nyx_string*
  store %nyx_string* %3984, %nyx_string** %3985
  %3986 = call i8* @llvm.stacksave()
  br label %while_cond685
while_cond685:
  %3987 = load i64, i64* %3971
  %3988 = load { i64, i8* }*, { i64, i8* }** %3970
  %3989 = call i64 @nyx_array_length({ i64, i8* }* %3988)
  %3990 = icmp slt i64 %3987, %3989
  br i1 %3990, label %while_body686, label %while_end687
while_body686:
  call void @llvm.stackrestore(i8* %3986)
  %3991 = load { i64, i8* }*, { i64, i8* }** %3970
  %3992 = load i64, i64* %3971
  %3993 = call i64 @nyx_array_get_checked({ i64, i8* }* %3991, i64 %3992, i64 2)
  %3994 = inttoptr i64 %3993 to %nyx_string*
  %3995 = alloca %nyx_string*
  store %nyx_string* %3994, %nyx_string** %3995
  %3996 = load %nyx_string*, %nyx_string** %3995
  %3997 = load %nyx_string*, %nyx_string** %3976
  %3998 = call i1 @nyx_string_starts_with(%nyx_string* %3996, %nyx_string* %3997)
  br i1 %3998, label %then688, label %else689
then688:
  %3999 = load %nyx_string*, %nyx_string** %3995
  %4000 = load %nyx_string*, %nyx_string** %3995
  %4001 = call i64 @nyx_string_byte_length(%nyx_string* %4000)
  %4002 = call %nyx_string* @nyx_string_substring(%nyx_string* %3999, i64 12, i64 %4001)
  %4003 = call %nyx_string* @nyx_string_trim(%nyx_string* %4002)
  %4004 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 9
  store %nyx_string* %4003, %nyx_string** %4004
  br label %merge690
else689:
  br label %merge690
merge690:
  %4005 = load %nyx_string*, %nyx_string** %3995
  %4006 = load %nyx_string*, %nyx_string** %3979
  %4007 = call i1 @nyx_string_contains(%nyx_string* %4005, %nyx_string* %4006)
  br i1 %4007, label %then691, label %else692
then691:
  %4008 = load i64, i64* %3972
  %4009 = add i64 %4008, 1
  store i64 %4009, i64* %3972
  br label %merge693
else692:
  br label %merge693
merge693:
  %4010 = load %nyx_string*, %nyx_string** %3995
  %4011 = load %nyx_string*, %nyx_string** %3982
  %4012 = call i1 @nyx_string_contains(%nyx_string* %4010, %nyx_string* %4011)
  br i1 %4012, label %then694, label %else695
then694:
  %4013 = load i64, i64* %3973
  %4014 = add i64 %4013, 1
  store i64 %4014, i64* %3973
  br label %merge696
else695:
  br label %merge696
merge696:
  %4015 = load %nyx_string*, %nyx_string** %3995
  %4016 = load %nyx_string*, %nyx_string** %3985
  %4017 = call i1 @nyx_string_contains(%nyx_string* %4015, %nyx_string* %4016)
  br i1 %4017, label %then697, label %else698
then697:
  %4018 = load %nyx_string*, %nyx_string** %3995
  %4019 = call i8* @nyx_string_to_cstr(%nyx_string* %4018)
  call void @nyx_print_string(i8* %4019)
  br label %merge699
else698:
  br label %merge699
merge699:
  %4020 = load i64, i64* %3971
  %4021 = add i64 %4020, 1
  store i64 %4021, i64* %3971
  br label %while_cond685
while_end687:
  %4022 = getelementptr [18 x i8], [18 x i8]* @.str441, i32 0, i32 0
  %4023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %4022, i64 17)
  %4024 = load i64, i64* %3972
  %4025 = call %nyx_string* @nyx_string_from_int(i64 %4024)
  %4026 = call %nyx_string* @nyx_string_concat(%nyx_string* %4023, %nyx_string* %4025)
  %4027 = getelementptr [16 x i8], [16 x i8]* @.str442, i32 0, i32 0
  %4028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %4027, i64 15)
  %4029 = call %nyx_string* @nyx_string_concat(%nyx_string* %4026, %nyx_string* %4028)
  %4030 = load i64, i64* %3973
  %4031 = call %nyx_string* @nyx_string_from_int(i64 %4030)
  %4032 = call %nyx_string* @nyx_string_concat(%nyx_string* %4029, %nyx_string* %4031)
  %4033 = getelementptr [16 x i8], [16 x i8]* @.str443, i32 0, i32 0
  %4034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %4033, i64 15)
  %4035 = call %nyx_string* @nyx_string_concat(%nyx_string* %4032, %nyx_string* %4034)
  %4036 = call i8* @nyx_string_to_cstr(%nyx_string* %4035)
  call void @nyx_print_string(i8* %4036)
  %4037 = getelementptr [1 x i8], [1 x i8]* @.str444, i32 0, i32 0
  %4038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %4037, i64 0)
  %4039 = call i8* @nyx_string_to_cstr(%nyx_string* %4038)
  call void @nyx_print_string(i8* %4039)
  br label %merge675
else674:
  br label %merge675
merge675:
  %4040 = call { i64, i8* }* @nyx_array_new_ptr()
  %4041 = alloca { i64, i8* }*
  store { i64, i8* }* %4040, { i64, i8* }** %4041
  %4042 = call { i64, i8* }* @nyx_array_new_ptr()
  %4043 = alloca { i64, i8* }*
  store { i64, i8* }* %4042, { i64, i8* }** %4043
  %4044 = call { i64, i8* }* @nyx_array_new_ptr()
  %4045 = alloca { i64, i8* }*
  store { i64, i8* }* %4044, { i64, i8* }** %4045
  %4046 = alloca i64
  store i64 0, i64* %4046
  %4047 = alloca i64
  store i64 0, i64* %4047
  %4048 = alloca i64
  store i64 0, i64* %4048
  %4049 = call i8* @llvm.stacksave()
  br label %while_cond700
while_cond700:
  %4050 = load i64, i64* %4048
  %4051 = load { i64, i8* }*, { i64, i8* }** %3795
  %4052 = call i64 @nyx_array_length({ i64, i8* }* %4051)
  %4053 = icmp slt i64 %4050, %4052
  br i1 %4053, label %while_body701, label %while_end702
while_body701:
  call void @llvm.stackrestore(i8* %4049)
  %4054 = load { i64, i8* }*, { i64, i8* }** %3795
  %4055 = load i64, i64* %4048
  %4056 = call i64 @nyx_array_get_checked({ i64, i8* }* %4054, i64 %4055, i64 2)
  %4057 = inttoptr i64 %4056 to %nyx_string*
  %4058 = alloca %nyx_string*
  store %nyx_string* %4057, %nyx_string** %4058
  %4059 = load %nyx_string*, %nyx_string** %4058
  %4060 = call i1 @file_has_test_blocks(%nyx_string* %4059)
  %4061 = xor i1 %4060, true
  br i1 %4061, label %then703, label %else704
then703:
  %4062 = load i64, i64* %4048
  %4063 = add i64 %4062, 1
  store i64 %4063, i64* %4048
  br label %merge705
else704:
  %4064 = load %nyx_string*, %nyx_string** %4058
  %4065 = load %TestConfig, %TestConfig* %3518
  %4066 = load %nyx_string*, %nyx_string** %3739
  %4067 = load i64, i64* %4048
  %4068 = call %TestResult @compile_and_run(%nyx_string* %4064, %TestConfig %4065, %nyx_string* %4066, i64 %4067)
  %4069 = alloca %TestResult
  store %TestResult %4068, %TestResult* %4069
  %4070 = load { i64, i8* }*, { i64, i8* }** %4041
  %4071 = load %TestResult, %TestResult* %4069
  %4072 = getelementptr %TestResult, %TestResult* null, i32 1
  %4073 = ptrtoint %TestResult* %4072 to i64
  %4074 = call i8* @GC_malloc(i64 %4073)
  %4075 = bitcast i8* %4074 to %TestResult*
  store %TestResult %4071, %TestResult* %4075
  %4076 = ptrtoint %TestResult* %4075 to i64
  call void @nyx_array_push({ i64, i8* }* %4070, i64 %4076)
  %4077 = load { i64, i8* }*, { i64, i8* }** %4043
  %4078 = load %nyx_string*, %nyx_string** %4058
  %4079 = ptrtoint %nyx_string* %4078 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4077, i64 %4079, i64 2)
  %4080 = load { i64, i8* }*, { i64, i8* }** %4045
  %4081 = load i64, i64* %4048
  %4082 = call %nyx_string* @nyx_string_from_int(i64 %4081)
  %4083 = ptrtoint %nyx_string* %4082 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4080, i64 %4083, i64 2)
  %4084 = load i64, i64* %4046
  %4085 = getelementptr %TestResult, %TestResult* %4069, i32 0, i32 1
  %4086 = load i64, i64* %4085
  %4087 = add i64 %4084, %4086
  store i64 %4087, i64* %4046
  %4088 = load i64, i64* %4047
  %4089 = getelementptr %TestResult, %TestResult* %4069, i32 0, i32 2
  %4090 = load i64, i64* %4089
  %4091 = add i64 %4088, %4090
  store i64 %4091, i64* %4047
  %4092 = load %TestResult, %TestResult* %4069
  %4093 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 3
  %4094 = load i1, i1* %4093
  %4095 = call i64 @print_result(%TestResult %4092, i1 %4094)
  %4096 = load i64, i64* %4048
  %4097 = add i64 %4096, 1
  store i64 %4097, i64* %4048
  br label %merge705
merge705:
  br label %while_cond700
while_end702:
  %4098 = load { i64, i8* }*, { i64, i8* }** %4041
  %4099 = call i64 @nyx_array_length({ i64, i8* }* %4098)
  %4100 = icmp eq i64 %4099, 0
  br i1 %4100, label %then706, label %else707
then706:
  %4101 = getelementptr [35 x i8], [35 x i8]* @.str445, i32 0, i32 0
  %4102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %4101, i64 34)
  %4103 = call i8* @nyx_string_to_cstr(%nyx_string* %4102)
  call void @nyx_print_string(i8* %4103)
  %4104 = load %nyx_string*, %nyx_string** %3739
  %4105 = getelementptr [1 x i8], [1 x i8]* @.str446, i32 0, i32 0
  %4106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %4105, i64 0)
  %4107 = call i1 @nyx_string_equals(%nyx_string* %4104, %nyx_string* %4106)
  %4108 = xor i1 %4107, true
  br i1 %4108, label %then709, label %else710
then709:
  %4109 = getelementptr [9 x i8], [9 x i8]* @.str447, i32 0, i32 0
  %4110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %4109, i64 8)
  %4111 = load %nyx_string*, %nyx_string** %3739
  %4112 = call %nyx_string* @nyx_string_concat(%nyx_string* %4110, %nyx_string* %4111)
  %4113 = getelementptr [2 x i8], [2 x i8]* @.str448, i32 0, i32 0
  %4114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %4113, i64 1)
  %4115 = call %nyx_string* @nyx_string_concat(%nyx_string* %4112, %nyx_string* %4114)
  %4116 = call i8* @nyx_string_to_cstr(%nyx_string* %4115)
  %4117 = call %nyx_string* @nyx_exec(i8* %4116)
  br label %merge711
else710:
  br label %merge711
merge711:
  ret i64 0
else707:
  br label %merge708
merge708:
  %4118 = load { i64, i8* }*, { i64, i8* }** %4041
  %4119 = load i64, i64* %4046
  %4120 = load i64, i64* %4047
  %4121 = call i64 @print_summary({ i64, i8* }* %4118, i64 %4119, i64 %4120)
  %4122 = load %nyx_string*, %nyx_string** %3489
  %4123 = call %nyx_string* @huella_compilador(%nyx_string* %4122)
  %4124 = alloca %nyx_string*
  store %nyx_string* %4123, %nyx_string** %4124
  %4125 = load %nyx_string*, %nyx_string** %3489
  %4126 = call %nyx_string* @huella_resto(%nyx_string* %4125)
  %4127 = alloca %nyx_string*
  store %nyx_string* %4126, %nyx_string** %4127
  %4128 = alloca i1
  store i1 true, i1* %4128
  %4129 = load %nyx_string*, %nyx_string** %4124
  %4130 = load %nyx_string*, %nyx_string** %3500
  %4131 = call i1 @nyx_string_equals(%nyx_string* %4129, %nyx_string* %4130)
  %4132 = xor i1 %4131, true
  br i1 %4132, label %sc_or_end713, label %sc_or_rhs712
sc_or_rhs712:
  %4133 = load %nyx_string*, %nyx_string** %4127
  %4134 = load %nyx_string*, %nyx_string** %3503
  %4135 = call i1 @nyx_string_equals(%nyx_string* %4133, %nyx_string* %4134)
  %4136 = xor i1 %4135, true
  store i1 %4136, i1* %4128
  br label %sc_or_end713
sc_or_end713:
  %4137 = load i1, i1* %4128
  br i1 %4137, label %then714, label %else715
then714:
  %4138 = getelementptr [1 x i8], [1 x i8]* @.str449, i32 0, i32 0
  %4139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %4138, i64 0)
  %4140 = call i8* @nyx_string_to_cstr(%nyx_string* %4139)
  call void @nyx_print_string(i8* %4140)
  %4141 = getelementptr [48 x i8], [48 x i8]* @.str450, i32 0, i32 0
  %4142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %4141, i64 47)
  %4143 = load %nyx_string*, %nyx_string** %3489
  %4144 = call %nyx_string* @nyx_string_concat(%nyx_string* %4142, %nyx_string* %4143)
  %4145 = getelementptr [2 x i8], [2 x i8]* @.str451, i32 0, i32 0
  %4146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %4145, i64 1)
  %4147 = call %nyx_string* @nyx_string_concat(%nyx_string* %4144, %nyx_string* %4146)
  %4148 = call i8* @nyx_string_to_cstr(%nyx_string* %4147)
  call void @nyx_print_string(i8* %4148)
  %4149 = load %nyx_string*, %nyx_string** %4124
  %4150 = load %nyx_string*, %nyx_string** %3500
  %4151 = call i1 @nyx_string_equals(%nyx_string* %4149, %nyx_string* %4150)
  %4152 = xor i1 %4151, true
  br i1 %4152, label %then717, label %else718
then717:
  %4153 = getelementptr [31 x i8], [31 x i8]* @.str452, i32 0, i32 0
  %4154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %4153, i64 30)
  %4155 = load %nyx_string*, %nyx_string** %3500
  %4156 = call %nyx_string* @nyx_string_concat(%nyx_string* %4154, %nyx_string* %4155)
  %4157 = getelementptr [5 x i8], [5 x i8]* @.str453, i32 0, i32 0
  %4158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %4157, i64 4)
  %4159 = call %nyx_string* @nyx_string_concat(%nyx_string* %4156, %nyx_string* %4158)
  %4160 = load %nyx_string*, %nyx_string** %4124
  %4161 = call %nyx_string* @nyx_string_concat(%nyx_string* %4159, %nyx_string* %4160)
  %4162 = call i8* @nyx_string_to_cstr(%nyx_string* %4161)
  call void @nyx_print_string(i8* %4162)
  br label %merge719
else718:
  %4163 = getelementptr [53 x i8], [53 x i8]* @.str454, i32 0, i32 0
  %4164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %4163, i64 52)
  %4165 = call i8* @nyx_string_to_cstr(%nyx_string* %4164)
  call void @nyx_print_string(i8* %4165)
  br label %merge719
merge719:
  %4166 = getelementptr [71 x i8], [71 x i8]* @.str455, i32 0, i32 0
  %4167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %4166, i64 70)
  %4168 = call i8* @nyx_string_to_cstr(%nyx_string* %4167)
  call void @nyx_print_string(i8* %4168)
  %4169 = getelementptr [69 x i8], [69 x i8]* @.str456, i32 0, i32 0
  %4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %4169, i64 68)
  %4171 = call i8* @nyx_string_to_cstr(%nyx_string* %4170)
  call void @nyx_print_string(i8* %4171)
  br label %merge716
else715:
  br label %merge716
merge716:
  %4172 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 5
  %4173 = load i1, i1* %4172
  br i1 %4173, label %then720, label %else721
then720:
  %4174 = load %nyx_string*, %nyx_string** %3739
  %4175 = load { i64, i8* }*, { i64, i8* }** %4043
  %4176 = load { i64, i8* }*, { i64, i8* }** %4045
  %4177 = load %nyx_string*, %nyx_string** %3736
  %4178 = getelementptr %TestConfig, %TestConfig* %3518, i32 0, i32 6
  %4179 = load i1, i1* %4178
  %4180 = call i64 @cov_report(%nyx_string* %4174, { i64, i8* }* %4175, { i64, i8* }* %4176, %nyx_string* %4177, i1 %4179)
  %4181 = getelementptr [9 x i8], [9 x i8]* @.str457, i32 0, i32 0
  %4182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %4181, i64 8)
  %4183 = load %nyx_string*, %nyx_string** %3739
  %4184 = call %nyx_string* @nyx_string_concat(%nyx_string* %4182, %nyx_string* %4183)
  %4185 = getelementptr [2 x i8], [2 x i8]* @.str458, i32 0, i32 0
  %4186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %4185, i64 1)
  %4187 = call %nyx_string* @nyx_string_concat(%nyx_string* %4184, %nyx_string* %4186)
  %4188 = call i8* @nyx_string_to_cstr(%nyx_string* %4187)
  %4189 = call %nyx_string* @nyx_exec(i8* %4188)
  br label %merge722
else721:
  br label %merge722
merge722:
  %4190 = alloca i64
  store i64 0, i64* %4190
  %4191 = alloca i64
  store i64 0, i64* %4191
  %4192 = call i8* @llvm.stacksave()
  br label %while_cond723
while_cond723:
  %4193 = load i64, i64* %4191
  %4194 = load { i64, i8* }*, { i64, i8* }** %4041
  %4195 = call i64 @nyx_array_length({ i64, i8* }* %4194)
  %4196 = icmp slt i64 %4193, %4195
  br i1 %4196, label %while_body724, label %while_end725
while_body724:
  call void @llvm.stackrestore(i8* %4192)
  %4197 = load { i64, i8* }*, { i64, i8* }** %4041
  %4198 = load i64, i64* %4191
  %4199 = call i64 @nyx_array_get({ i64, i8* }* %4197, i64 %4198)
  %4200 = inttoptr i64 %4199 to %TestResult*
  %4201 = load %TestResult, %TestResult* %4200
  %4202 = alloca %TestResult
  store %TestResult %4201, %TestResult* %4202
  %4203 = getelementptr %TestResult, %TestResult* %4202, i32 0, i32 4
  %4204 = load i1, i1* %4203
  %4205 = xor i1 %4204, true
  br i1 %4205, label %then726, label %else727
then726:
  %4206 = load i64, i64* %4190
  %4207 = add i64 %4206, 1
  store i64 %4207, i64* %4190
  br label %merge728
else727:
  br label %merge728
merge728:
  %4208 = load i64, i64* %4191
  %4209 = add i64 %4208, 1
  store i64 %4209, i64* %4191
  br label %while_cond723
while_end725:
  %4210 = alloca i1
  store i1 true, i1* %4210
  %4211 = load i64, i64* %4047
  %4212 = icmp sgt i64 %4211, 0
  br i1 %4212, label %sc_or_end730, label %sc_or_rhs729
sc_or_rhs729:
  %4213 = load i64, i64* %4190
  %4214 = icmp sgt i64 %4213, 0
  store i1 %4214, i1* %4210
  br label %sc_or_end730
sc_or_end730:
  %4215 = load i1, i1* %4210
  br i1 %4215, label %then731, label %else732
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
  %4216 = sub i64 0, 9223372036854775808
  store i64 %4216, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

