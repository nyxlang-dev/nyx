source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%ProjectConfig = type { %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }*, %nyx_string*, %nyx_string*, { i64, i8* }* }

@.str0 = private unnamed_addr constant [2 x i8] c" \00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [1 x i8] c"\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c"+\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [6 x i8] c"-ERR \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [2 x i8] c":\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [2 x i8] c"$\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"$-1\0d\0a\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [2 x i8] c"*\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [2 x i8] c"*\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"$\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [2 x i8] c"*\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [2 x i8] c"$\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [6 x i8] c"$-1\0d\0a\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [5 x i8] c"AUTH\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [2 x i8] c"\0d\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [1 x i8] c"\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [1 x i8] c"\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [1 x i8] c"\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [1 x i8] c"\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c"*\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [2 x i8] c"$\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [1 x i8] c"\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [1 x i8] c"\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [1 x i8] c"\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [1 x i8] c"\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [4 x i8] c"SET\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [6 x i8] c"SETEX\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [4 x i8] c"GET\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [4 x i8] c"DEL\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [6 x i8] c"RPUSH\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [7 x i8] c"LRANGE\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [5 x i8] c"LLEN\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [5 x i8] c"SADD\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [9 x i8] c"SMEMBERS\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [7 x i8] c"WHOAMI\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [13 x i8] c"TOKEN_CREATE\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [7 x i8] c"EXISTS\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [2 x i8] c"1\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [5 x i8] c"SREM\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [11 x i8] c"TOKEN_LIST\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [13 x i8] c"TOKEN_REVOKE\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [1 x i8] c"\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [2 x i8] c"=\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [1 x i8] c"\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [1 x i8] c"="
@.str64 = private unnamed_addr constant [1 x i8] c"\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [5 x i8] c"true\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [5 x i8] c"true\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [6 x i8] c"false\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [6 x i8] c"false\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [1 x i8] c"="
@.str72 = private unnamed_addr constant [1 x i8] c"\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [2 x i8] c"[\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [2 x i8] c"]\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [94 x i8] c"[lib] modules en nyx.toml tiene que ser una lista en UNA línea: modules = [\22src/a\22, \22src/b\22]\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [1 x i8] c"\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [1 x i8] c"\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [2 x i8] c",\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [60 x i8] c"[lib] modules en nyx.toml: cada módulo va entre comillas (\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [2 x i8] c")\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [78 x i8] c"[lib] modules en nyx.toml: el módulo se escribe como en el import, sin .nx (\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [60 x i8] c"[lib] modules en nyx.toml: la stdlib no se compila aparte (\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [1 x i8] c"\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [1 x i8] c"\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [1 x i8] c"\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [1 x i8] c"\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [1 x i8] c"\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [1 x i8] c"\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [1 x i8] c"\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [1 x i8] c"\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [1 x i8] c"\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [1 x i8] c"\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [1 x i8] c"\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [1 x i8] c"\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [2 x i8] c"#\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [2 x i8] c"[\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [2 x i8] c"]\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [8 x i8] c"package\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [5 x i8] c"name\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [8 x i8] c"version\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [5 x i8] c"main\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [12 x i8] c"description\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [6 x i8] c"no_gc\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [5 x i8] c"true\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [7 x i8] c"target\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [6 x i8] c"build\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [44 x i8] c"clave desconocida en [build] de nyx.toml: '\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [34 x i8] c"' (claves válidas: main, target)\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [4 x i8] c"lib\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [8 x i8] c"modules\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [42 x i8] c"clave desconocida en [lib] de nyx.toml: '\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [27 x i8] c"' (clave válida: modules)\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [13 x i8] c"dependencies\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [1 x i8] c"\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [1 x i8] c"\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [1 x i8] c"\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [74 x i8] c"nyx.toml declara main dos veces con valores distintos: [package] main = \22\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [21 x i8] c"\22 y [build] main = \22\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [1 x i8] c"\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [1 x i8] c"\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [1 x i8] c"\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [78 x i8] c"nyx.toml declara target dos veces con valores distintos: [package] target = \22\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [23 x i8] c"\22 y [build] target = \22\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [1 x i8] c"\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [1 x i8] c"\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [1 x i8] c"\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [57 x i8] c"# nyx.lock — auto-generated by nyx build, do not edit\0a\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [11 x i8] c"[package]\0a\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [9 x i8] c"name = \22\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [12 x i8] c"version = \22\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [9 x i8] c"main = \22\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [17 x i8] c"Adding package: \00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [1 x i8] c"\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [3 x i8] c" =\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [12 x i8] c"  Package '\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [27 x i8] c"' is already a dependency.\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [19 x i8] c"  Using existing: \00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [13 x i8] c"  Fetching: \00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [2 x i8] c" \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [26 x i8] c"  error: could not fetch \00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [7 x i8] c" from \00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [15 x i8] c"[dependencies]\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [19 x i8] c"  Updated nyx.toml\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [10 x i8] c"Package '\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [9 x i8] c"' added.\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [1 x i8] c"\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [1 x i8] c"\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [2 x i8] c".\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [1 x i8] c"\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [12 x i8] c" nyx-lang: \00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [3 x i8] c"en\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [11 x i8] c"nyx-lang: \00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [3 x i8] c"en\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [3 x i8] c"en\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [3 x i8] c"es\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [3 x i8] c"es\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [3 x i8] c"en\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [1 x i8] c"\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [21 x i8] c"/templates/gitignore\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [11 x i8] c"{{binary}}\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [1 x i8] c"\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c",\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [28 x i8] c"error: --agent inválido: '\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [46 x i8] c"' (valores válidos: claude, cursor, copilot)\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [72 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot]\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [1 x i8] c"\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [20 x i8] c"/templates/adapters\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [2 x i8] c",\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [1 x i8] c"\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [2 x i8] c"/\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [2 x i8] c".\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [4 x i8] c".md\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [10 x i8] c"/.github'\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [44 x i8] c"warning: falta la plantilla del adaptador '\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [20 x i8] c") — no se sembró\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [2 x i8] c"/\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [1 x i8] c"\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [74 x i8] c"error: no encuentro la toolchain de Nyx (NYX_HOME vacío o sin templates/\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [84 x i8] c"/): el contexto para agentes (AGENTS.md, CAPABILITIES.md, docs/nyx/) NO se sembró.\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [82 x i8] c"  Exporta NYX_HOME (o reinstala con install.sh) y ejecuta: nyx update --sync-docs\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [17 x i8] c"/CAPABILITIES.md\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides'\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [20 x i8] c"/en/docs/nyx/LLM.md\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [17 x i8] c"/docs/nyx/LLM.md\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [14 x i8] c"error: falta \00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [71 x i8] c" en la toolchain: docs/nyx/LLM.md (la referencia densa) NO se sembró.\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [111 x i8] c"  Reinstala con install.sh (o ejecuta make install-local desde el monorepo) y después: nyx update --sync-docs\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [17 x i8] c"/docs/nyx/guides\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"/\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides/\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [28 x i8] c"GENERATED by `nyx sdd init`\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [3 x i8] c"es\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [28 x i8] c"  skipped (already there): \00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [25 x i8] c"  salteado (ya existe): \00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"/\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [27 x i8] c"error: falta la plantilla \00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [19 x i8] c" en la toolchain: \00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [16 x i8] c" NO se sembró.\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [3 x i8] c"  \00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [1 x i8] c"\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [1 x i8] c"\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [20 x i8] c"# Evidence — nyx \00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [21 x i8] c"# Evidencia — nyx \00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [7 x i8] c"\0a<!-- \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [110 x i8] c" from the gotcha table of the installed toolchain — do not edit by hand; `nyx update` regenerates it. -->\0a\0a\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [319 x i8] c"Traps and rules that are LIVE in the toolchain this project was seeded with. Each\0aline carries the stable id, the anchor term to look up in `AGENTS.md` and\0a`docs/nyx/LLM.md`, and the test in the language repo that proves it. This file is\0aevidence, not advice: if a line here contradicts a manual, the manual is stale.\0a\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [334 x i8] c"Trampas y reglas VIVAS en la toolchain con la que se sembró este proyecto. Cada\0alínea trae el id estable, el término ancla para buscar en `AGENTS.md` y en\0a`docs/nyx/LLM.md`, y el test del repo del lenguaje que la prueba. Este archivo es\0aevidencia, no consejo: si una línea de acá contradice a un manual, el manual quedó viejo.\0a\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [1 x i8] c"\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [3 x i8] c"id\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [6 x i8] c"since\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [5 x i8] c"test\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [3 x i8] c"es\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [5 x i8] c"** (\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [9 x i8] c", since \00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [7 x i8] c") — \00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [14 x i8] c" — anchor `\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [2 x i8] c"`\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [12 x i8] c" — test `\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [14 x i8] c"\0a## Retired\0a\0a\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [16 x i8] c"\0a## Retirados\0a\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [139 x i8] c"These were real traps and are not any more: if a manual, a blog post or an older\0aagent still repeats them, it is wrong for this version.\0a\0a\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [150 x i8] c"Estas fueron trampas reales y ya no lo son: si un manual, un artículo o un agente\0aviejo las sigue repitiendo, está equivocado para esta versión.\0a\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [1 x i8] c"\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [3 x i8] c"id\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [3 x i8] c"es\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [14 x i8] c"** (fixed in \00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [7 x i8] c") — \00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [4 x i8] c".md\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [1 x i8] c"\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [4 x i8] c"// \00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [80 x i8] c" from the installed toolchain's gotcha table — regenerate with `nyx update`.\0a\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [96 x i8] c"// Edit it and it becomes yours: with this header gone, `nyx sdd init` never touches it again.\0a\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [72 x i8] c"// Each block greps src/ for a trap the compiler cannot catch for you.\0a\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [20 x i8] c"import \22std/regex\22\0a\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [83 x i8] c"// `nyx test` compiles and runs every test INSIDE the toolchain (cwd = NYX_HOME),\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [85 x i8] c"// not inside the project: a bare readdir(\22src\22) would read the wrong directory and\0a\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [83 x i8] c"// this file would pass without looking at anything. The project directory is the\0a\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [83 x i8] c"// one the runner came from (OLDPWD). If it cannot be found, the first test below\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [56 x i8] c"// FAILS out loud instead of passing on an empty scan.\0a\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [31 x i8] c"fn project_root() -> String {\0a\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [47 x i8] c"    if file_exists(\22nyx.toml\22) { return \22.\22 }\0a\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [40 x i8] c"    let old: String = getenv(\22OLDPWD\22)\0a\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [20 x i8] c"    if old != \22\22 {\0a\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [58 x i8] c"        if file_exists(old + \22/nyx.toml\22) { return old }\0a\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [15 x i8] c"    return \22\22\0a\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [79 x i8] c"// Every .nx under `dir`, recursively. readdir() never returns \22.\22 or \22..\22; a\0a\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [57 x i8] c"// directory is told apart by file_exists(path + \22/.\22).\0a\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [37 x i8] c"fn nx_files(dir: String) -> Array {\0a\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [25 x i8] c"    var out: Array = []\0a\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [49 x i8] c"    if file_exists(dir) == false { return out }\0a\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [39 x i8] c"    let entries: Array = readdir(dir)\0a\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [34 x i8] c"    while i < entries.length() {\0a\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [36 x i8] c"        let e: String = entries[i]\0a\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [39 x i8] c"        let p: String = dir + \22/\22 + e\0a\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [32 x i8] c"        if e.endsWith(\22.nx\22) {\0a\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [25 x i8] c"            out.push(p)\0a\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [18 x i8] c"        } else {\0a\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [40 x i8] c"            if file_exists(p + \22/.\22) {\0a\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [46 x i8] c"                let sub: Array = nx_files(p)\0a\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [32 x i8] c"                var j: int = 0\0a\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [42 x i8] c"                while j < sub.length() {\0a\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [44 x i8] c"                    let s: String = sub[j]\0a\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [33 x i8] c"                    out.push(s)\0a\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [31 x i8] c"                    j = j + 1\0a\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [19 x i8] c"                }\0a\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [15 x i8] c"            }\0a\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [16 x i8] c"    return out\0a\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [77 x i8] c"// Lines of src/ matching `pattern`, as `src/file.nx:LINE` (relative to the\0a\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [53 x i8] c"// project, so the message is a path you can open).\0a\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [45 x i8] c"fn grep_sources(pattern: String) -> Array {\0a\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [26 x i8] c"    var hits: Array = []\0a\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [35 x i8] c"    if root == \22\22 { return hits }\0a\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [48 x i8] c"    let files: Array = nx_files(root + \22/src\22)\0a\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [20 x i8] c"    var f: int = 0\0a\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [32 x i8] c"    while f < files.length() {\0a\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [37 x i8] c"        let path: String = files[f]\0a\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [34 x i8] c"        var shown: String = path\0a\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [101 x i8] c"        if path.startsWith(root + \22/\22) { shown = path.substring(root.length() + 1, path.length()) }\0a\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [56 x i8] c"        let lines: Array = read_file(path).split(\22\5cn\22)\0a\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [24 x i8] c"        var i: int = 0\0a\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [36 x i8] c"        while i < lines.length() {\0a\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [41 x i8] c"            let line: String = lines[i]\0a\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [58 x i8] c"            let scanned: String = gotcha_scan_line(line)\0a\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [99 x i8] c"            if regex_is_match(scanned, pattern) { hits.push(shown + \22:\22 + int_to_string(i + 1)) }\0a\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [23 x i8] c"            i = i + 1\0a\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [19 x i8] c"        f = f + 1\0a\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [17 x i8] c"    return hits\0a\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [52 x i8] c"test \22the project sources are visible from here\22 {\0a\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [126 x i8] c"    assert(root != \22\22, \22cannot find the project root (no nyx.toml): every check below would pass without scanning anything\22)\0a\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [89 x i8] c"    assert(file_exists(root + \22/src\22), \22no src/ in the project root: nothing to check\22)\0a\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [1 x i8] c"\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [3 x i8] c"id\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [14 x i8] c"test \22gotcha \00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [3 x i8] c": \00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [5 x i8] c"\22 {\0a\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [37 x i8] c"    let hits: Array = grep_sources(\22\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [33 x i8] c"    assert(hits.length() == 0, \22\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [3 x i8] c" (\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [28 x i8] c") at: \22 + hits.join(\22, \22))\0a\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [47 x i8] c"test \22every file in tests/ has test blocks\22 {\0a\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [50 x i8] c"    let files: Array = nx_files(root + \22/tests\22)\0a\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [32 x i8] c"    while i < files.length() {\0a\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [34 x i8] c"        let p: String = files[i]\0a\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [114 x i8] c"        assert(read_file(p).indexOf(\22test \5c\22\22) >= 0, p + \22 has no test blocks: nyx test would skip it silently\22)\0a\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [30 x i8] c"warning: no hay AGENTS.md en \00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [80 x i8] c": el disparador del andamiaje NO se insertó (ejecuta `nyx update --sync-docs`)\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [21 x i8] c"<!-- sdd:trigger -->\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [47 x i8] c"  skipped (already there): AGENTS.md (trigger)\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [47 x i8] c"  salteado (ya existe): AGENTS.md (disparador)\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [22 x i8] c"<!-- sdd:trigger -->\0a\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [3 x i8] c"es\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [150 x i8] c"- Si `docs/constitution.md` todavía contiene `SDD_INCOMPLETE`, no escribas código: sigue `docs/sdd/onboarding.md` y ofrece al usuario completarla.\0a\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [122 x i8] c"- Ante una funcionalidad nueva sin `specs/NNN-feature/spec.md`, ofrece escribir la spec primero (ver `specs/README.md`).\0a\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [152 x i8] c"- If `docs/constitution.md` still contains `SDD_INCOMPLETE`, do not write code yet: follow `docs/sdd/onboarding.md` and offer the user to complete it.\0a\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [113 x i8] c"- For a new feature with no `specs/NNN-feature/spec.md`, offer to write the spec first (see `specs/README.md`).\0a\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [36 x i8] c"  AGENTS.md (+2 lines: the trigger)\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [40 x i8] c"  AGENTS.md (+2 líneas: el disparador)\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [16 x i8] c"/docs/evidence'\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [59 x i8] c"  skipped (yours, no GENERATED header): docs/evidence/nyx-\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [4 x i8] c".md\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [65 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): docs/evidence/nyx-\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [4 x i8] c".md\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [34 x i8] c"  regenerated: docs/evidence/nyx-\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [4 x i8] c".md\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [33 x i8] c"  regenerado: docs/evidence/nyx-\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [4 x i8] c".md\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [41 x i8] c"  already up to date: docs/evidence/nyx-\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [4 x i8] c".md\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [39 x i8] c"  ya está al día: docs/evidence/nyx-\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [4 x i8] c".md\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [42 x i8] c"  regenerated: tests/constitution_test.nx\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [41 x i8] c"  regenerado: tests/constitution_test.nx\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [67 x i8] c"  skipped (yours, no GENERATED header): tests/constitution_test.nx\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [73 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): tests/constitution_test.nx\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [49 x i8] c"  already up to date: tests/constitution_test.nx\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [47 x i8] c"  ya está al día: tests/constitution_test.nx\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [12 x i8] c"/templates/\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [5 x i8] c"/sdd\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [1 x i8] c"\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [17 x i8] c"/constitution.md\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [49 x i8] c"error: the SDD scaffolding templates (templates/\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [59 x i8] c"/sdd/) are missing from the toolchain: NOTHING was seeded.\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [61 x i8] c"error: no encuentro las plantillas del andamiaje (templates/\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [44 x i8] c"/sdd/) en la toolchain: NO se sembró nada.\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [104 x i8] c"  Reinstall with install.sh (or run `make install-local` from the monorepo) and try again: nyx sdd init\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [109 x i8] c"  Reinstala con install.sh (o corre `make install-local` desde el monorepo) e intenta de nuevo: nyx sdd init\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [13 x i8] c"/docs/adr' '\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [13 x i8] c"/docs/sdd' '\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [18 x i8] c"/docs/evidence' '\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [10 x i8] c"/specs' '\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [8 x i8] c"/tests'\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [40 x i8] c"SDD scaffolding (optional, reversible):\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [38 x i8] c"Andamiaje SDD (opcional, reversible):\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [16 x i8] c"constitution.md\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [22 x i8] c"/docs/constitution.md\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [12 x i8] c"glossary.md\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [18 x i8] c"/docs/glossary.md\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [16 x i8] c"adr-template.md\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [27 x i8] c"/docs/adr/0000-template.md\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [16 x i8] c"specs-README.md\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [17 x i8] c"/specs/README.md\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [14 x i8] c"onboarding.md\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [24 x i8] c"/docs/sdd/onboarding.md\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [4 x i8] c".md\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [3 x i8] c"  \00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [3 x i8] c"  \00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [1 x i8] c"\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [94 x i8] c"  Next: an agent reading AGENTS.md will offer to complete docs/constitution.md (7 questions).\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [98 x i8] c"  Ahora: un agente que lea AGENTS.md va a ofrecerte completar docs/constitution.md (7 preguntas).\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [89 x i8] c"  Reversible: to go back to a plain init, delete docs/constitution.md, docs/glossary.md,\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [90 x i8] c"  Reversible: para volver a un init normal, borra docs/constitution.md, docs/glossary.md,\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [78 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ and tests/constitution_test.nx\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [76 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ y tests/constitution_test.nx\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [1 x i8] c"\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [19 x i8] c"error: directory '\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [17 x i8] c"' already exists\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [10 x i8] c"/nyx.toml\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [13 x i8] c"/src/main.nx\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [12 x i8] c"  Created: \00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [2 x i8] c"/\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [15 x i8] c"  Next:    cd \00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [12 x i8] c" && nyx run\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [31 x i8] c"error: nyx.toml already exists\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [6 x i8] c"myapp\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [13 x i8] c"mkdir -p src\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [2 x i8] c".\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [2 x i8] c".\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [33 x i8] c"  Created: nyx.toml, src/main.nx\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [21 x i8] c"  Build:   nyx build\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [19 x i8] c"  Run:     nyx run\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [14 x i8] c"   resolving \00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [5 x i8] c"http\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [4 x i8] c"git\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [2 x i8] c" \00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [26 x i8] c"  error: failed to fetch \00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [7 x i8] c" from \00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [12 x i8] c"  Fetched: \00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [128 x i8] c"use of undefined value|defined with type .* but expected|expected instruction|invalid redefinition of|invalid forward reference\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [37 x i8] c"undefined reference|undefined symbol\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [14 x i8] c"if grep -qE '\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [99 x i8] c"echo \22  -> esto es casi seguro un BUG del compilador Nyx (IR invalido), no de tu codigo (archivo: \00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [74 x i8] c"). Repórtalo con 'nyx report' (el reporte incluye contexto util).\22 >&2; \00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [6 x i8] c"else \00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [91 x i8] c"echo \22  -> this is almost certainly a Nyx compiler BUG (invalid IR), not your code (file: \00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [76 x i8] c"). Report it with 'nyx report' (the report includes useful context).\22 >&2; \00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [16 x i8] c"elif grep -qE '\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [176 x i8] c"echo \22  -> simbolo no encontrado al linkear: si es una funcion extern C tuya, revisa el nombre/lib; si es de la stdlib de Nyx, es un bug -- repórtalo con 'nyx report'.\22 >&2; \00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [6 x i8] c"else \00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [184 x i8] c"echo \22  -> symbol not found at link time: if this is your own extern C function, check the name/lib; if it is a stdlib function, it is a Nyx bug -- report it with 'nyx report'.\22 >&2; \00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [6 x i8] c"else \00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [127 x i8] c"echo \22  -> fallo de link sin patron reconocido; si sospechas que es un bug del compilador, repórtalo con 'nyx report'.\22 >&2; \00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [6 x i8] c"else \00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [119 x i8] c"echo \22  -> link failure with no recognized pattern; if you suspect a compiler bug, report it with 'nyx report'.\22 >&2; \00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [326 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22 >&2; return 0; }\0a\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [2 x i8] c"/\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [8 x i8] c"import \00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [1 x i8] c"\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [1 x i8] c"\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [2 x i8] c"|\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [12 x i8] c"/prelude.nx\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [2 x i8] c"|\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [2 x i8] c"=\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [1 x i8] c"\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [2 x i8] c",\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [2 x i8] c":\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [2 x i8] c":\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [2 x i8] c"|\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [2 x i8] c"|\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [2 x i8] c"|\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [49 x i8] c"LIB_OBJS=\22\22\0amkdir -p \22$ORIG_DIR/target/nyx-lib\22\0a\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [2 x i8] c"/\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [2 x i8] c"_\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [26 x i8] c"$ORIG_DIR/target/nyx-lib/\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [2 x i8] c"-\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [3 x i8] c".o\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [8 x i8] c".inline\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [33 x i8] c"NYX_LIB_UNIT=1 NYX_LIB_MODULES=\22\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [39 x i8] c"\22 NYX_SRC=\22$LSRC.nx\22 NYX_SRC_DISPLAY=\22\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [35 x i8] c".nx\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [4 x i8] c"\22 )\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [10 x i8] c"if [ -f \22\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [28 x i8] c"\22 ]; then echo '   reusing \00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [43 x i8] c" (lib, sin cambios)'; LIB_OBJS=\22$LIB_OBJS \00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [12 x i8] c"elif [ -f \22\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [13 x i8] c"\22 ]; then :\0a\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [27 x i8] c"else\0a  echo '   compiling \00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [9 x i8] c" (lib)'\0a\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [35 x i8] c"  rm -f \22$ORIG_DIR/target/nyx-lib/\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [5 x i8] c"-\22*\0a\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [55 x i8] c"  LSRC=\22$(mktemp /tmp/nyx_lib_XXXXXX)\22; cp \22$ORIG_DIR/\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [17 x i8] c".nx\22 \22$LSRC.nx\22\0a\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [10 x i8] c"  lrc=0; \00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [26 x i8] c" > \22$LOG\22 2>&1 || lrc=$?\0a\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [66 x i8] c"  if [ $lrc -eq 3 ]; then grep -F '⚠' \22$LOG\22 >&2 || true; : > \22\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [62 x i8] c"  elif [ $lrc -ne 0 ]; then echo \22error: nyx compile failed (\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [86 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; nyx_pista $lrc; rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22; exit 1\0a\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [45 x i8] c"  else\0a    grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [14 x i8] c"    clang -c \00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [38 x i8] c" -Wno-override-module \22$LSRC.ll\22 -o \22\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [45 x i8] c"\22 2> \22$LOG\22 || { echo \22error: clang failed (\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [36 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [25 x i8] c"    LIB_OBJS=\22$LIB_OBJS \00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [8 x i8] c"\22\0a  fi\0a\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [42 x i8] c"  rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22\0afi\0a\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [1 x i8] c"\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [1 x i8] c"\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [1 x i8] c"\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [3 x i8] c" [\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [2 x i8] c"]\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [3 x i8] c" v\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [1 x i8] c"\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [1 x i8] c"\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [1 x i8] c"\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [1 x i8] c"\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [1 x i8] c"\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [1 x i8] c"\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [1 x i8] c"\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [1 x i8] c"\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [2 x i8] c".\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [1 x i8] c"\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [77 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c $RT/net.c $RT/thread.c $RT/regex.c \00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [89 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c $RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [83 x i8] c"$RT/compress.c $RT/random.c $RT/url.c $RT/msgpack.c $RT/websocket.c $RT/persist.c \00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [65 x i8] c"$RT/http2.c $RT/process.c $RT/llama_adapter.c $RT/os/os_posix.c \00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [1 x i8] c"\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [2 x i8] c"/\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [2 x i8] c"/\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [1 x i8] c"\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [1 x i8] c"\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [18 x i8] c"NYX_LIB_MODULES=\22\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [2 x i8] c",\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [19 x i8] c"\22 ) > \22$LOG\22 2>&1 \00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [93 x i8] c"|| { rc=$?; echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; nyx_pista $rc; exit 1; }\0a\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [34 x i8] c"grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [22 x i8] c" \22$SRC.ll\22 $LIB_OBJS \00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [1 x i8] c"\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [2 x i8] c"#\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [95 x i8] c"ASY=\22$(grep -m1 '^; nyx-asyncify-imports: ' \22$SRC.ll\22 | sed 's/^; nyx-asyncify-imports: //')\22\0a\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [24 x i8] c"if [ -n \22$ASY\22 ]; then\0a\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [10 x i8] c"  WOPT=\22$\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [49 x i8] c"{NYX_WASM_OPT:-$(command -v wasm-opt || true)}\22\0a\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [207 x i8] c"  test -n \22$WOPT\22 || { echo \22error: el programa usa imports que suspenden (await que espera al anfitrion: $ASY) y falta wasm-opt - sudo apt install binaryen, o NYX_WASM_OPT=/ruta/a/wasm-opt\22 >&2; exit 1; }\0a\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [41 x i8] c"  \22$WOPT\22 \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [58 x i8] c".wasm\22 --asyncify --pass-arg=asyncify-imports@\22$ASY\22 -O2 \00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [78 x i8] c"|| { echo \22error: wasm-opt --asyncify fallo:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [1 x i8] c"\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [1 x i8] c"\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [2 x i8] c"/\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [1 x i8] c"\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [3 x i8] c"./\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [1 x i8] c"\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [1 x i8] c"\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [1 x i8] c"\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [1 x i8] c"/"
@.str798 = private unnamed_addr constant [2 x i8] c"-\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [1 x i8] c"\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [1 x i8] c"\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [1 x i8] c"\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [7 x i8] c"0.33.0\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [73 x i8] c"> Completa las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [80 x i8] c"FRICTION.md ya existe con contenido — avísale al usuario para que lo revise.\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [78 x i8] c"creado FRICTION.md — completa las secciones (tu asistente IA puede hacerlo)\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [72 x i8] c"y AVÍSALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [1 x i8] c"\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [66 x i8] c"error: el reporte parece vacío — completa la plantilla primero\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [1 x i8] c"\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [1 x i8] c"\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [1 x i8] c"\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [1 x i8] c"\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [1 x i8] c"\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [1 x i8] c"\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [4 x i8] c"std\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [2 x i8] c".\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [1 x i8] c"\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [1 x i8] c"\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [5 x i8] c"http\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [4 x i8] c"web\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [3 x i8] c"db\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [5 x i8] c"json\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [5 x i8] c"file\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [3 x i8] c"io\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [5 x i8] c"path\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [4 x i8] c"net\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [4 x i8] c"url\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [5 x i8] c"smtp\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [6 x i8] c"async\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [7 x i8] c"random\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [5 x i8] c"time\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [7 x i8] c"string\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [4 x i8] c"set\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [4 x i8] c"box\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [5 x i8] c"args\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [4 x i8] c"log\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [1 x i8] c"\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [1 x i8] c"("
@.str932 = private unnamed_addr constant [1 x i8] c")"
@.str933 = private unnamed_addr constant [2 x i8] c"/\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [1 x i8] c"\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [1 x i8] c"\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [4 x i8] c"///\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [1 x i8] c"\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [2 x i8] c" \00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [2 x i8] c"`\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [6 x i8] c" — \00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [1 x i8] c"("
@.str947 = private unnamed_addr constant [1 x i8] c"{"
@.str948 = private unnamed_addr constant [1 x i8] c"\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [1 x i8] c"\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [1 x i8] c"\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [2 x i8] c"1\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [2 x i8] c"s\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [2 x i8] c")\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [1 x i8] c"\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [6 x i8] c" — \00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [1 x i8] c"\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [1 x i8] c"\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [1 x i8] c"\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [4 x i8] c"## \00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [1 x i8] c"\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [3 x i8] c" (\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [1 x i8] c"\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [1 x i8] c"\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [1 x i8] c"\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [5 x i8] c"test\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [1 x i8] c"\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [1 x i8] c"-"
@.str1024 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [1 x i8] c"\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [1 x i8] c"\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [1 x i8] c"\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [1 x i8] c"\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [1 x i8] c"\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [1 x i8] c"\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [1 x i8] c"\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [1 x i8] c"\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [1 x i8] c"\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [1 x i8] c"\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [1 x i8] c"\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [1 x i8] c"\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [1 x i8] c"\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [2 x i8] c".\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [1 x i8] c"\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [1 x i8] c"\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [2 x i8] c".\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [2 x i8] c".\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [2 x i8] c".\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [2 x i8] c".\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [1 x i8] c"\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [4 x i8] c"add\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [1 x i8] c"\00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [8 x i8] c"project\00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [1 x i8] c"\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [1 x i8] c"\00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [1 x i8] c"\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [1 x i8] c"\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [1 x i8] c"\00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [1 x i8] c"\00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [7 x i8] c"report\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [1 x i8] c"\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [1 x i8] c"\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [1 x i8] c"\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [1 x i8] c"\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [1 x i8] c"\00"
@.str1117.c = internal global %nyx_string* null
@.str1118 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1118.c = internal global %nyx_string* null
@.str1119 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1119.c = internal global %nyx_string* null
@.str1120 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [1 x i8] c"\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [1 x i8] c"\00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1134.c = internal global %nyx_string* null
@.str1135 = private unnamed_addr constant [1 x i8] c"\00"
@.str1135.c = internal global %nyx_string* null
@.str1136 = private unnamed_addr constant [1 x i8] c"\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [2 x i8] c" \00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1149.c = internal global %nyx_string* null
@.str1150 = private unnamed_addr constant [1 x i8] c"\00"
@.str1150.c = internal global %nyx_string* null
@.str1151 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1151.c = internal global %nyx_string* null
@.str1152 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1152.c = internal global %nyx_string* null
@.str1153 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1153.c = internal global %nyx_string* null
@.str1154 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1154.c = internal global %nyx_string* null
@.str1155 = private unnamed_addr constant [1 x i8] c"\00"
@.str1155.c = internal global %nyx_string* null
@.str1156 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1156.c = internal global %nyx_string* null
@.str1157 = private unnamed_addr constant [2 x i8] c" \00"
@.str1157.c = internal global %nyx_string* null
@.str1158 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1158.c = internal global %nyx_string* null
@.str1159 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1159.c = internal global %nyx_string* null
@.str1160 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1160.c = internal global %nyx_string* null
@.str1161 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1161.c = internal global %nyx_string* null
@.str1162 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1162.c = internal global %nyx_string* null
@.str1163 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1163.c = internal global %nyx_string* null
@.str1164 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1164.c = internal global %nyx_string* null
@.str1165 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1165.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
@.str.init.0 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00"
@.str.init.1 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\00"
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

@std_base64____b64_chars = global %nyx_string* null
@std_base64____b64url_chars = global %nyx_string* null

declare { i64, i8* }* @gotchas_table()
declare %nyx_string* @gotcha_field({ i64, i8* }*, %nyx_string*)
declare %nyx_string* @gotcha_scan_src()

define i64 @std_resp__resp_parse_len(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %1 = load %nyx_string*, %nyx_string** %s.ptr
  %2 = call i64 @nyx_string_byte_length(%nyx_string* %1)
  %3 = alloca i64
  store i64 %2, i64* %3
  %4 = load i64, i64* %3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %then0, label %else1
then0:
  %6 = sub i64 0, 2
  ret i64 %6
else1:
  br label %merge2
merge2:
  %7 = load %nyx_string*, %nyx_string** %s.ptr
  %8 = call i8 @nyx_string_char_at(%nyx_string* %7, i64 0)
  %9 = zext i8 %8 to i64
  %10 = icmp eq i64 %9, 45
  br i1 %10, label %then3, label %else4
then3:
  %11 = alloca i1
  store i1 false, i1* %11
  %12 = load i64, i64* %3
  %13 = icmp eq i64 %12, 2
  br i1 %13, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %14 = load %nyx_string*, %nyx_string** %s.ptr
  %15 = call i8 @nyx_string_char_at(%nyx_string* %14, i64 1)
  %16 = zext i8 %15 to i64
  %17 = icmp eq i64 %16, 49
  store i1 %17, i1* %11
  br label %sc_and_end7
sc_and_end7:
  %18 = load i1, i1* %11
  br i1 %18, label %then8, label %else9
then8:
  %19 = sub i64 0, 1
  ret i64 %19
else9:
  br label %merge10
merge10:
  %20 = sub i64 0, 2
  ret i64 %20
else4:
  br label %merge5
merge5:
  %21 = alloca i64
  store i64 0, i64* %21
  %22 = alloca i64
  store i64 0, i64* %22
  %23 = call i8* @llvm.stacksave()
  br label %while_cond11
while_cond11:
  %24 = load i64, i64* %22
  %25 = load i64, i64* %3
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %while_body12, label %while_end13
while_body12:
  call void @llvm.stackrestore(i8* %23)
  %27 = load %nyx_string*, %nyx_string** %s.ptr
  %28 = load i64, i64* %22
  %29 = call i8 @nyx_string_char_at(%nyx_string* %27, i64 %28)
  %30 = zext i8 %29 to i64
  %31 = alloca i64
  store i64 %30, i64* %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = load i64, i64* %31
  %34 = icmp slt i64 %33, 48
  br i1 %34, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %35 = load i64, i64* %31
  %36 = icmp sgt i64 %35, 57
  store i1 %36, i1* %32
  br label %sc_or_end15
sc_or_end15:
  %37 = load i1, i1* %32
  br i1 %37, label %then16, label %else17
then16:
  %38 = sub i64 0, 2
  ret i64 %38
else17:
  br label %merge18
merge18:
  %39 = load i64, i64* %21
  %40 = mul i64 %39, 10
  %41 = load i64, i64* %31
  %42 = sub i64 %41, 48
  %43 = add i64 %40, %42
  store i64 %43, i64* %21
  %44 = load i64, i64* %21
  %45 = icmp sgt i64 %44, 16777216
  br i1 %45, label %then19, label %else20
then19:
  %46 = sub i64 0, 2
  ret i64 %46
else20:
  br label %merge21
merge21:
  %47 = load i64, i64* %22
  %48 = add i64 %47, 1
  store i64 %48, i64* %22
  br label %while_cond11
while_end13:
  %49 = load i64, i64* %21
  ret i64 %49
}

define internal %nyx_string* @std_resp__resp_rl(
i64 %handle.param, i1 %is_tls.param) {
  %handle.ptr = alloca i64
  store i64 %handle.param, i64* %handle.ptr
  %is_tls.ptr = alloca i1
  store i1 %is_tls.param, i1* %is_tls.ptr
  %50 = load i1, i1* %is_tls.ptr
  br i1 %50, label %then22, label %else23
then22:
  %51 = load i64, i64* %handle.ptr
  %52 = call %nyx_string* @nyx_tls_read_line(i64 %51)
  ret %nyx_string* %52
else23:
  br label %merge24
merge24:
  %53 = load i64, i64* %handle.ptr
  %54 = call %nyx_string* @nyx_tcp_read_line(i64 %53)
  ret %nyx_string* %54
}

define internal %nyx_string* @std_resp__resp_rx(
i64 %handle.param, i1 %is_tls.param, i64 %n.param) {
  %handle.ptr = alloca i64
  store i64 %handle.param, i64* %handle.ptr
  %is_tls.ptr = alloca i1
  store i1 %is_tls.param, i1* %is_tls.ptr
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %55 = load i1, i1* %is_tls.ptr
  br i1 %55, label %then25, label %else26
then25:
  %56 = load i64, i64* %handle.ptr
  %57 = load i64, i64* %n.ptr
  %58 = call %nyx_string* @nyx_tls_read(i64 %56, i64 %57)
  ret %nyx_string* %58
else26:
  br label %merge27
merge27:
  %59 = load i64, i64* %handle.ptr
  %60 = load i64, i64* %n.ptr
  %61 = call %nyx_string* @nyx_tcp_read_exact(i64 %59, i64 %60)
  ret %nyx_string* %61
}

define { i64, i8* }* @std_resp__resp_read_framed(
i64 %handle.param, i1 %is_tls.param) {
  %handle.ptr = alloca i64
  store i64 %handle.param, i64* %handle.ptr
  %is_tls.ptr = alloca i1
  store i1 %is_tls.param, i1* %is_tls.ptr
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = load i64, i64* %handle.ptr
  %65 = load i1, i1* %is_tls.ptr
  %66 = call %nyx_string* @std_resp__resp_rl(i64 %64, i1 %65)
  %67 = alloca %nyx_string*
  store %nyx_string* %66, %nyx_string** %67
  %68 = load %nyx_string*, %nyx_string** %67
  %69 = call i64 @nyx_string_byte_length(%nyx_string* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %then28, label %else29
then28:
  %71 = load { i64, i8* }*, { i64, i8* }** %63
  ret { i64, i8* }* %71
else29:
  br label %merge30
merge30:
  %72 = load %nyx_string*, %nyx_string** %67
  %73 = call i8 @nyx_string_char_at(%nyx_string* %72, i64 0)
  %74 = zext i8 %73 to i64
  %75 = icmp ne i64 %74, 42
  br i1 %75, label %then31, label %else32
then31:
  %76 = load %nyx_string*, %nyx_string** %67
  %77 = getelementptr [2 x i8], [2 x i8]* @.str0, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %77, i64 1)
  %79 = call { i64, i8* }* @nyx_string_split(%nyx_string* %76, %nyx_string* %78)
  ret { i64, i8* }* %79
else32:
  br label %merge33
merge33:
  %80 = load %nyx_string*, %nyx_string** %67
  %81 = load %nyx_string*, %nyx_string** %67
  %82 = call i64 @nyx_string_byte_length(%nyx_string* %81)
  %83 = call %nyx_string* @nyx_string_substring(%nyx_string* %80, i64 1, i64 %82)
  %84 = call i64 @std_resp__resp_parse_len(%nyx_string* %83)
  %85 = alloca i64
  store i64 %84, i64* %85
  %86 = load i64, i64* %85
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %then34, label %else35
then34:
  %88 = load { i64, i8* }*, { i64, i8* }** %63
  ret { i64, i8* }* %88
else35:
  br label %merge36
merge36:
  %89 = load i64, i64* %85
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %then37, label %else38
then37:
  %91 = load { i64, i8* }*, { i64, i8* }** %63
  ret { i64, i8* }* %91
else38:
  br label %merge39
merge39:
  %92 = load i64, i64* %85
  %93 = icmp sgt i64 %92, 1048576
  br i1 %93, label %then40, label %else41
then40:
  %94 = load { i64, i8* }*, { i64, i8* }** %63
  ret { i64, i8* }* %94
else41:
  br label %merge42
merge42:
  %95 = alloca i64
  store i64 0, i64* %95
  %96 = call i8* @llvm.stacksave()
  br label %while_cond43
while_cond43:
  %97 = load i64, i64* %95
  %98 = load i64, i64* %85
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %while_body44, label %while_end45
while_body44:
  call void @llvm.stackrestore(i8* %96)
  %100 = load i64, i64* %handle.ptr
  %101 = load i1, i1* %is_tls.ptr
  %102 = call %nyx_string* @std_resp__resp_rl(i64 %100, i1 %101)
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  %104 = load %nyx_string*, %nyx_string** %103
  %105 = call i64 @nyx_string_byte_length(%nyx_string* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %then46, label %else47
then46:
  %107 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %107
else47:
  br label %merge48
merge48:
  %108 = load %nyx_string*, %nyx_string** %103
  %109 = call i8 @nyx_string_char_at(%nyx_string* %108, i64 0)
  %110 = zext i8 %109 to i64
  %111 = icmp ne i64 %110, 36
  br i1 %111, label %then49, label %else50
then49:
  %112 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %112
else50:
  br label %merge51
merge51:
  %113 = load %nyx_string*, %nyx_string** %103
  %114 = load %nyx_string*, %nyx_string** %103
  %115 = call i64 @nyx_string_byte_length(%nyx_string* %114)
  %116 = call %nyx_string* @nyx_string_substring(%nyx_string* %113, i64 1, i64 %115)
  %117 = call i64 @std_resp__resp_parse_len(%nyx_string* %116)
  %118 = alloca i64
  store i64 %117, i64* %118
  %119 = load i64, i64* %118
  %120 = sub i64 0, 2
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %then52, label %else53
then52:
  %122 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %122
else53:
  br label %merge54
merge54:
  %123 = load i64, i64* %118
  %124 = icmp sgt i64 %123, 16777216
  br i1 %124, label %then55, label %else56
then55:
  %125 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %125
else56:
  br label %merge57
merge57:
  %126 = load i64, i64* %118
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %then58, label %else59
then58:
  %128 = load { i64, i8* }*, { i64, i8* }** %63
  %129 = getelementptr [1 x i8], [1 x i8]* @.str1, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %129, i64 0)
  %131 = ptrtoint %nyx_string* %130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %131, i64 2)
  br label %merge60
else59:
  %132 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %132, i64 0)
  %134 = alloca %nyx_string*
  store %nyx_string* %133, %nyx_string** %134
  %135 = load i64, i64* %118
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %then61, label %else62
then61:
  %137 = load i64, i64* %handle.ptr
  %138 = load i1, i1* %is_tls.ptr
  %139 = load i64, i64* %118
  %140 = call %nyx_string* @std_resp__resp_rx(i64 %137, i1 %138, i64 %139)
  store %nyx_string* %140, %nyx_string** %134
  %141 = load %nyx_string*, %nyx_string** %134
  %142 = call i64 @nyx_string_byte_length(%nyx_string* %141)
  %143 = load i64, i64* %118
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %then64, label %else65
then64:
  %145 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %145
else65:
  br label %merge66
merge66:
  br label %merge63
else62:
  br label %merge63
merge63:
  %146 = load i64, i64* %handle.ptr
  %147 = load i1, i1* %is_tls.ptr
  %148 = call %nyx_string* @std_resp__resp_rx(i64 %146, i1 %147, i64 2)
  %149 = alloca %nyx_string*
  store %nyx_string* %148, %nyx_string** %149
  %150 = load %nyx_string*, %nyx_string** %149
  %151 = call i64 @nyx_string_byte_length(%nyx_string* %150)
  %152 = icmp ne i64 %151, 2
  br i1 %152, label %then67, label %else68
then67:
  %153 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %153
else68:
  br label %merge69
merge69:
  %154 = load { i64, i8* }*, { i64, i8* }** %63
  %155 = load %nyx_string*, %nyx_string** %134
  %156 = ptrtoint %nyx_string* %155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %154, i64 %156, i64 2)
  br label %merge60
merge60:
  %157 = load i64, i64* %95
  %158 = add i64 %157, 1
  store i64 %158, i64* %95
  br label %while_cond43
while_end45:
  %159 = load { i64, i8* }*, { i64, i8* }** %63
  ret { i64, i8* }* %159
}

define { i64, i8* }* @std_resp__resp_read_command(
i64 %fd.param) {
  %fd.ptr = alloca i64
  store i64 %fd.param, i64* %fd.ptr
  %160 = load i64, i64* %fd.ptr
  %161 = call { i64, i8* }* @std_resp__resp_read_framed(i64 %160, i1 0)
  ret { i64, i8* }* %161
}

define %nyx_string* @std_resp__resp_simple_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %162 = call i8* @nyx_sb_new(i64 1024)
  %163 = alloca i8*
  store i8* %162, i8** %163
  %164 = load i8*, i8** %163
  %165 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %165, i64 1)
  call void @nyx_sb_append(i8* %164, %nyx_string* %166)
  %167 = load i8*, i8** %163
  %168 = load %nyx_string*, %nyx_string** %s.ptr
  call void @nyx_sb_append(i8* %167, %nyx_string* %168)
  %169 = load i8*, i8** %163
  %170 = getelementptr [3 x i8], [3 x i8]* @.str4, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %170, i64 2)
  call void @nyx_sb_append(i8* %169, %nyx_string* %171)
  %172 = load i8*, i8** %163
  %173 = call %nyx_string* @nyx_sb_to_string(i8* %172)
  ret %nyx_string* %173
}

define %nyx_string* @std_resp__resp_error(
%nyx_string* %msg.param) {
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %174 = call i8* @nyx_sb_new(i64 1024)
  %175 = alloca i8*
  store i8* %174, i8** %175
  %176 = load i8*, i8** %175
  %177 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %177, i64 5)
  call void @nyx_sb_append(i8* %176, %nyx_string* %178)
  %179 = load i8*, i8** %175
  %180 = load %nyx_string*, %nyx_string** %msg.ptr
  call void @nyx_sb_append(i8* %179, %nyx_string* %180)
  %181 = load i8*, i8** %175
  %182 = getelementptr [3 x i8], [3 x i8]* @.str6, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %182, i64 2)
  call void @nyx_sb_append(i8* %181, %nyx_string* %183)
  %184 = load i8*, i8** %175
  %185 = call %nyx_string* @nyx_sb_to_string(i8* %184)
  ret %nyx_string* %185
}

define %nyx_string* @std_resp__resp_integer(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %186 = call i8* @nyx_sb_new(i64 1024)
  %187 = alloca i8*
  store i8* %186, i8** %187
  %188 = load i8*, i8** %187
  %189 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %189, i64 1)
  call void @nyx_sb_append(i8* %188, %nyx_string* %190)
  %191 = load i8*, i8** %187
  %192 = load i64, i64* %n.ptr
  %193 = call %nyx_string* @nyx_string_from_int(i64 %192)
  call void @nyx_sb_append(i8* %191, %nyx_string* %193)
  %194 = load i8*, i8** %187
  %195 = getelementptr [3 x i8], [3 x i8]* @.str8, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %195, i64 2)
  call void @nyx_sb_append(i8* %194, %nyx_string* %196)
  %197 = load i8*, i8** %187
  %198 = call %nyx_string* @nyx_sb_to_string(i8* %197)
  ret %nyx_string* %198
}

define %nyx_string* @std_resp__resp_bulk_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %199 = call i8* @nyx_sb_new(i64 1024)
  %200 = alloca i8*
  store i8* %199, i8** %200
  %201 = load i8*, i8** %200
  %202 = getelementptr [2 x i8], [2 x i8]* @.str9, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %202, i64 1)
  call void @nyx_sb_append(i8* %201, %nyx_string* %203)
  %204 = load i8*, i8** %200
  %205 = load %nyx_string*, %nyx_string** %s.ptr
  %206 = call i64 @nyx_string_byte_length(%nyx_string* %205)
  %207 = call %nyx_string* @nyx_string_from_int(i64 %206)
  call void @nyx_sb_append(i8* %204, %nyx_string* %207)
  %208 = load i8*, i8** %200
  %209 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %209, i64 2)
  call void @nyx_sb_append(i8* %208, %nyx_string* %210)
  %211 = load i8*, i8** %200
  %212 = load %nyx_string*, %nyx_string** %s.ptr
  call void @nyx_sb_append(i8* %211, %nyx_string* %212)
  %213 = load i8*, i8** %200
  %214 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %214, i64 2)
  call void @nyx_sb_append(i8* %213, %nyx_string* %215)
  %216 = load i8*, i8** %200
  %217 = call %nyx_string* @nyx_sb_to_string(i8* %216)
  ret %nyx_string* %217
}

define %nyx_string* @std_resp__resp_null_bulk(
) {
  %218 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %218, i64 5)
  ret %nyx_string* %219
}

define %nyx_string* @std_resp__resp_array_header(
i64 %count.param) {
  %count.ptr = alloca i64
  store i64 %count.param, i64* %count.ptr
  %220 = call i8* @nyx_sb_new(i64 1024)
  %221 = alloca i8*
  store i8* %220, i8** %221
  %222 = load i8*, i8** %221
  %223 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %223, i64 1)
  call void @nyx_sb_append(i8* %222, %nyx_string* %224)
  %225 = load i8*, i8** %221
  %226 = load i64, i64* %count.ptr
  %227 = call %nyx_string* @nyx_string_from_int(i64 %226)
  call void @nyx_sb_append(i8* %225, %nyx_string* %227)
  %228 = load i8*, i8** %221
  %229 = getelementptr [3 x i8], [3 x i8]* @.str14, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %229, i64 2)
  call void @nyx_sb_append(i8* %228, %nyx_string* %230)
  %231 = load i8*, i8** %221
  %232 = call %nyx_string* @nyx_sb_to_string(i8* %231)
  ret %nyx_string* %232
}

define %nyx_string* @std_resp__resp_bulk_array(
{ i64, i8* }* %items.param) {
  %items.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %items.param, { i64, i8* }** %items.ptr
  %233 = call i8* @nyx_sb_new(i64 1024)
  %234 = alloca i8*
  store i8* %233, i8** %234
  %235 = load i8*, i8** %234
  %236 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %236, i64 1)
  call void @nyx_sb_append(i8* %235, %nyx_string* %237)
  %238 = load i8*, i8** %234
  %239 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %240 = call i64 @nyx_array_length({ i64, i8* }* %239)
  %241 = call %nyx_string* @nyx_string_from_int(i64 %240)
  call void @nyx_sb_append(i8* %238, %nyx_string* %241)
  %242 = load i8*, i8** %234
  %243 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %243, i64 2)
  call void @nyx_sb_append(i8* %242, %nyx_string* %244)
  %245 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %246 = call i64 @nyx_array_length({ i64, i8* }* %245)
  %for_idx74 = alloca i64
  store i64 0, i64* %for_idx74
  %247 = call i8* @llvm.stacksave()
  br label %for_cond70
for_cond70:
  %248 = load i64, i64* %for_idx74
  %249 = icmp slt i64 %248, %246
  br i1 %249, label %for_body71, label %for_end72
for_body71:
  call void @llvm.stackrestore(i8* %247)
  %250 = call i64 @nyx_array_get_checked({ i64, i8* }* %245, i64 %248, i64 2)
  %251 = inttoptr i64 %250 to %nyx_string*
  %252 = alloca %nyx_string*
  store %nyx_string* %251, %nyx_string** %252
  %253 = load i8*, i8** %234
  %254 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %254, i64 1)
  call void @nyx_sb_append(i8* %253, %nyx_string* %255)
  %256 = load i8*, i8** %234
  %257 = load %nyx_string*, %nyx_string** %252
  %258 = call i64 @nyx_string_byte_length(%nyx_string* %257)
  %259 = call %nyx_string* @nyx_string_from_int(i64 %258)
  call void @nyx_sb_append(i8* %256, %nyx_string* %259)
  %260 = load i8*, i8** %234
  %261 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %261, i64 2)
  call void @nyx_sb_append(i8* %260, %nyx_string* %262)
  %263 = load i8*, i8** %234
  %264 = load %nyx_string*, %nyx_string** %252
  call void @nyx_sb_append(i8* %263, %nyx_string* %264)
  %265 = load i8*, i8** %234
  %266 = getelementptr [3 x i8], [3 x i8]* @.str19, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %266, i64 2)
  call void @nyx_sb_append(i8* %265, %nyx_string* %267)
  br label %for_step73
for_step73:
  %268 = load i64, i64* %for_idx74
  %269 = add i64 %268, 1
  store i64 %269, i64* %for_idx74
  br label %for_cond70
for_end72:
  %270 = load i8*, i8** %234
  %271 = call %nyx_string* @nyx_sb_to_string(i8* %270)
  ret %nyx_string* %271
}

define %nyx_string* @std_resp__resp_mixed_array(
{ i64, i8* }* %items.param, { i64, i8* }* %flags.param) {
  %items.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %items.param, { i64, i8* }** %items.ptr
  %flags.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %flags.param, { i64, i8* }** %flags.ptr
  %272 = call i8* @nyx_sb_new(i64 1024)
  %273 = alloca i8*
  store i8* %272, i8** %273
  %274 = load i8*, i8** %273
  %275 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %275, i64 1)
  call void @nyx_sb_append(i8* %274, %nyx_string* %276)
  %277 = load i8*, i8** %273
  %278 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %279 = call i64 @nyx_array_length({ i64, i8* }* %278)
  %280 = call %nyx_string* @nyx_string_from_int(i64 %279)
  call void @nyx_sb_append(i8* %277, %nyx_string* %280)
  %281 = load i8*, i8** %273
  %282 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %282, i64 2)
  call void @nyx_sb_append(i8* %281, %nyx_string* %283)
  %284 = alloca i64
  store i64 0, i64* %284
  %285 = call i8* @llvm.stacksave()
  br label %while_cond75
while_cond75:
  %286 = load i64, i64* %284
  %287 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %288 = call i64 @nyx_array_length({ i64, i8* }* %287)
  %289 = icmp slt i64 %286, %288
  br i1 %289, label %while_body76, label %while_end77
while_body76:
  call void @llvm.stackrestore(i8* %285)
  %290 = load { i64, i8* }*, { i64, i8* }** %flags.ptr
  %291 = load i64, i64* %284
  %292 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %290, i64 %291)
  %293 = alloca i64
  store i64 %292, i64* %293
  %294 = load i64, i64* %293
  %295 = icmp eq i64 %294, 1
  br i1 %295, label %then78, label %else79
then78:
  %296 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %297 = load i64, i64* %284
  %298 = call i64 @nyx_array_get_checked({ i64, i8* }* %296, i64 %297, i64 2)
  %299 = inttoptr i64 %298 to %nyx_string*
  %300 = alloca %nyx_string*
  store %nyx_string* %299, %nyx_string** %300
  %301 = load i8*, i8** %273
  %302 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %302, i64 1)
  call void @nyx_sb_append(i8* %301, %nyx_string* %303)
  %304 = load i8*, i8** %273
  %305 = load %nyx_string*, %nyx_string** %300
  %306 = call i64 @nyx_string_byte_length(%nyx_string* %305)
  %307 = call %nyx_string* @nyx_string_from_int(i64 %306)
  call void @nyx_sb_append(i8* %304, %nyx_string* %307)
  %308 = load i8*, i8** %273
  %309 = getelementptr [3 x i8], [3 x i8]* @.str23, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %309, i64 2)
  call void @nyx_sb_append(i8* %308, %nyx_string* %310)
  %311 = load i8*, i8** %273
  %312 = load %nyx_string*, %nyx_string** %300
  call void @nyx_sb_append(i8* %311, %nyx_string* %312)
  %313 = load i8*, i8** %273
  %314 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %314, i64 2)
  call void @nyx_sb_append(i8* %313, %nyx_string* %315)
  br label %merge80
else79:
  %316 = load i8*, i8** %273
  %317 = getelementptr [6 x i8], [6 x i8]* @.str25, i32 0, i32 0
  %318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %317, i64 5)
  call void @nyx_sb_append(i8* %316, %nyx_string* %318)
  br label %merge80
merge80:
  %319 = load i64, i64* %284
  %320 = add i64 %319, 1
  store i64 %320, i64* %284
  br label %while_cond75
while_end77:
  %321 = load i8*, i8** %273
  %322 = call %nyx_string* @nyx_sb_to_string(i8* %321)
  ret %nyx_string* %322
}

define i64 @kv_connect_auth(
%nyx_string* %host.param, i64 %port.param, %nyx_string* %token.param) {
  %host.ptr = alloca %nyx_string*
  store %nyx_string* %host.param, %nyx_string** %host.ptr
  %port.ptr = alloca i64
  store i64 %port.param, i64* %port.ptr
  %token.ptr = alloca %nyx_string*
  store %nyx_string* %token.param, %nyx_string** %token.ptr
  %323 = load %nyx_string*, %nyx_string** %host.ptr
  %324 = load i64, i64* %port.ptr
  %325 = call i64 @nyx_tls_connect(%nyx_string* %323, i64 %324)
  %326 = alloca i64
  store i64 %325, i64* %326
  %327 = load i64, i64* %326
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %then81, label %else82
then81:
  %329 = sub i64 0, 1
  ret i64 %329
else82:
  br label %merge83
merge83:
  %330 = load %nyx_string*, %nyx_string** %token.ptr
  %331 = call i64 @nyx_string_byte_length(%nyx_string* %330)
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %then84, label %else85
then84:
  %333 = load i64, i64* %326
  ret i64 %333
else85:
  br label %merge86
merge86:
  %334 = call { i64, i8* }* @nyx_array_new_ptr()
  %335 = getelementptr [5 x i8], [5 x i8]* @.str26, i32 0, i32 0
  %336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %335, i64 4)
  %337 = ptrtoint %nyx_string* %336 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %334, i64 %337, i64 2)
  %338 = load %nyx_string*, %nyx_string** %token.ptr
  %339 = ptrtoint %nyx_string* %338 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %334, i64 %339, i64 2)
  %340 = alloca { i64, i8* }*
  store { i64, i8* }* %334, { i64, i8* }** %340
  %341 = load i64, i64* %326
  %342 = load { i64, i8* }*, { i64, i8* }** %340
  %343 = call %nyx_string* @kv_cmd(i64 %341, { i64, i8* }* %342)
  %344 = alloca %nyx_string*
  store %nyx_string* %343, %nyx_string** %344
  %345 = load %nyx_string*, %nyx_string** %344
  %346 = getelementptr [3 x i8], [3 x i8]* @.str27, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %346, i64 2)
  %348 = call i1 @nyx_string_equals(%nyx_string* %345, %nyx_string* %347)
  %349 = xor i1 %348, true
  br i1 %349, label %then87, label %else88
then87:
  %350 = load i64, i64* %326
  call void @nyx_tls_close(i64 %350)
  %351 = sub i64 0, 1
  ret i64 %351
else88:
  br label %merge89
merge89:
  %352 = load i64, i64* %326
  ret i64 %352
}

define i64 @kv_close(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %353 = load i64, i64* %h.ptr
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %then90, label %else91
then90:
  %355 = load i64, i64* %h.ptr
  call void @nyx_tls_close(i64 %355)
  br label %merge92
else91:
  br label %merge92
merge92:
  ret i64 0
}

define internal %nyx_string* @tls_read_line_local(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %356 = call i8* @nyx_sb_new(i64 1024)
  %357 = alloca i8*
  store i8* %356, i8** %357
  %358 = alloca i1
  store i1 0, i1* %358
  %359 = alloca i1
  store i1 0, i1* %359
  %360 = getelementptr [2 x i8], [2 x i8]* @.str28, i32 0, i32 0
  %361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %360, i64 1)
  %362 = alloca %nyx_string*
  store %nyx_string* %361, %nyx_string** %362
  %363 = call i8* @llvm.stacksave()
  br label %while_cond93
while_cond93:
  %364 = load i1, i1* %359
  %365 = xor i1 %364, true
  br i1 %365, label %while_body94, label %while_end95
while_body94:
  call void @llvm.stackrestore(i8* %363)
  %366 = load i64, i64* %h.ptr
  %367 = call %nyx_string* @nyx_tls_read(i64 %366, i64 1)
  %368 = alloca %nyx_string*
  store %nyx_string* %367, %nyx_string** %368
  %369 = load %nyx_string*, %nyx_string** %368
  %370 = call i64 @nyx_string_byte_length(%nyx_string* %369)
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %then96, label %else97
then96:
  %372 = load i8*, i8** %357
  %373 = call %nyx_string* @nyx_sb_to_string(i8* %372)
  ret %nyx_string* %373
else97:
  br label %merge98
merge98:
  %374 = load %nyx_string*, %nyx_string** %368
  %375 = call i8 @nyx_string_char_at(%nyx_string* %374, i64 0)
  %376 = zext i8 %375 to i64
  %377 = alloca i64
  store i64 %376, i64* %377
  %378 = alloca i1
  store i1 false, i1* %378
  %379 = load i1, i1* %358
  br i1 %379, label %sc_and_rhs99, label %sc_and_end100
sc_and_rhs99:
  %380 = load i64, i64* %377
  %381 = icmp eq i64 %380, 10
  store i1 %381, i1* %378
  br label %sc_and_end100
sc_and_end100:
  %382 = load i1, i1* %378
  br i1 %382, label %then101, label %else102
then101:
  store i1 1, i1* %359
  br label %merge103
else102:
  %383 = load i1, i1* %358
  br i1 %383, label %then104, label %else105
then104:
  %384 = load i8*, i8** %357
  %385 = load %nyx_string*, %nyx_string** %362
  call void @nyx_sb_append(i8* %384, %nyx_string* %385)
  store i1 0, i1* %358
  br label %merge106
else105:
  br label %merge106
merge106:
  %386 = load i64, i64* %377
  %387 = icmp eq i64 %386, 13
  br i1 %387, label %then107, label %else108
then107:
  store i1 1, i1* %358
  br label %merge109
else108:
  %388 = load i8*, i8** %357
  %389 = load %nyx_string*, %nyx_string** %368
  call void @nyx_sb_append(i8* %388, %nyx_string* %389)
  br label %merge109
merge109:
  br label %merge103
merge103:
  br label %while_cond93
while_end95:
  %390 = load i8*, i8** %357
  %391 = call %nyx_string* @nyx_sb_to_string(i8* %390)
  ret %nyx_string* %391
}

define %nyx_string* @read_bulk(
i64 %h.param, %nyx_string* %header.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %header.ptr = alloca %nyx_string*
  store %nyx_string* %header.param, %nyx_string** %header.ptr
  %392 = load %nyx_string*, %nyx_string** %header.ptr
  %393 = load %nyx_string*, %nyx_string** %header.ptr
  %394 = call i64 @nyx_string_byte_length(%nyx_string* %393)
  %395 = call %nyx_string* @nyx_string_substring(%nyx_string* %392, i64 1, i64 %394)
  %396 = call i64 @std_resp__resp_parse_len(%nyx_string* %395)
  %397 = alloca i64
  store i64 %396, i64* %397
  %398 = load i64, i64* %397
  %399 = icmp slt i64 %398, 0
  br i1 %399, label %then110, label %else111
then110:
  %400 = getelementptr [1 x i8], [1 x i8]* @.str29, i32 0, i32 0
  %401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %400, i64 0)
  ret %nyx_string* %401
else111:
  br label %merge112
merge112:
  %402 = load i64, i64* %397
  %403 = icmp sgt i64 %402, 16777216
  br i1 %403, label %then113, label %else114
then113:
  %404 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %404, i64 0)
  ret %nyx_string* %405
else114:
  br label %merge115
merge115:
  %406 = load i64, i64* %397
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %then116, label %else117
then116:
  %408 = load i64, i64* %h.ptr
  %409 = call %nyx_string* @nyx_tls_read(i64 %408, i64 2)
  %410 = alloca %nyx_string*
  store %nyx_string* %409, %nyx_string** %410
  %411 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %411, i64 0)
  ret %nyx_string* %412
else117:
  br label %merge118
merge118:
  %413 = load i64, i64* %h.ptr
  %414 = load i64, i64* %397
  %415 = call %nyx_string* @nyx_tls_read(i64 %413, i64 %414)
  %416 = alloca %nyx_string*
  store %nyx_string* %415, %nyx_string** %416
  %417 = load %nyx_string*, %nyx_string** %416
  %418 = call i64 @nyx_string_byte_length(%nyx_string* %417)
  %419 = load i64, i64* %397
  %420 = icmp ne i64 %418, %419
  br i1 %420, label %then119, label %else120
then119:
  %421 = getelementptr [1 x i8], [1 x i8]* @.str32, i32 0, i32 0
  %422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %421, i64 0)
  ret %nyx_string* %422
else120:
  br label %merge121
merge121:
  %423 = load i64, i64* %h.ptr
  %424 = call %nyx_string* @nyx_tls_read(i64 %423, i64 2)
  %425 = alloca %nyx_string*
  store %nyx_string* %424, %nyx_string** %425
  %426 = load %nyx_string*, %nyx_string** %416
  ret %nyx_string* %426
}

define internal i64 @send_cmd(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %427 = call i8* @nyx_sb_new(i64 1024)
  %428 = alloca i8*
  store i8* %427, i8** %428
  %429 = load i8*, i8** %428
  %430 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %430, i64 1)
  call void @nyx_sb_append(i8* %429, %nyx_string* %431)
  %432 = load i8*, i8** %428
  %433 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %434 = call i64 @nyx_array_length({ i64, i8* }* %433)
  %435 = call %nyx_string* @nyx_string_from_int(i64 %434)
  call void @nyx_sb_append(i8* %432, %nyx_string* %435)
  %436 = load i8*, i8** %428
  %437 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %437, i64 2)
  call void @nyx_sb_append(i8* %436, %nyx_string* %438)
  %439 = alloca i64
  store i64 0, i64* %439
  %440 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %440, i64 1)
  %442 = alloca %nyx_string*
  store %nyx_string* %441, %nyx_string** %442
  %443 = getelementptr [3 x i8], [3 x i8]* @.str36, i32 0, i32 0
  %444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %443, i64 2)
  %445 = alloca %nyx_string*
  store %nyx_string* %444, %nyx_string** %445
  %446 = call i8* @llvm.stacksave()
  br label %while_cond122
while_cond122:
  %447 = load i64, i64* %439
  %448 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %449 = call i64 @nyx_array_length({ i64, i8* }* %448)
  %450 = icmp slt i64 %447, %449
  br i1 %450, label %while_body123, label %while_end124
while_body123:
  call void @llvm.stackrestore(i8* %446)
  %451 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %452 = load i64, i64* %439
  %453 = call i64 @nyx_array_get_checked({ i64, i8* }* %451, i64 %452, i64 2)
  %454 = inttoptr i64 %453 to %nyx_string*
  %455 = alloca %nyx_string*
  store %nyx_string* %454, %nyx_string** %455
  %456 = load i8*, i8** %428
  %457 = load %nyx_string*, %nyx_string** %442
  call void @nyx_sb_append(i8* %456, %nyx_string* %457)
  %458 = load i8*, i8** %428
  %459 = load %nyx_string*, %nyx_string** %455
  %460 = call i64 @nyx_string_byte_length(%nyx_string* %459)
  %461 = call %nyx_string* @nyx_string_from_int(i64 %460)
  call void @nyx_sb_append(i8* %458, %nyx_string* %461)
  %462 = load i8*, i8** %428
  %463 = load %nyx_string*, %nyx_string** %445
  call void @nyx_sb_append(i8* %462, %nyx_string* %463)
  %464 = load i8*, i8** %428
  %465 = load %nyx_string*, %nyx_string** %455
  call void @nyx_sb_append(i8* %464, %nyx_string* %465)
  %466 = load i8*, i8** %428
  %467 = load %nyx_string*, %nyx_string** %445
  call void @nyx_sb_append(i8* %466, %nyx_string* %467)
  %468 = load i64, i64* %439
  %469 = add i64 %468, 1
  store i64 %469, i64* %439
  br label %while_cond122
while_end124:
  %470 = load i64, i64* %h.ptr
  %471 = load i8*, i8** %428
  %472 = call %nyx_string* @nyx_sb_to_string(i8* %471)
  %473 = call i64 @nyx_tls_write(i64 %470, %nyx_string* %472)
  ret i64 0
}

define %nyx_string* @kv_cmd(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %474 = load i64, i64* %h.ptr
  %475 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %476 = call i64 @send_cmd(i64 %474, { i64, i8* }* %475)
  %477 = load i64, i64* %h.ptr
  %478 = call %nyx_string* @tls_read_line_local(i64 %477)
  %479 = alloca %nyx_string*
  store %nyx_string* %478, %nyx_string** %479
  %480 = load %nyx_string*, %nyx_string** %479
  %481 = call i64 @nyx_string_byte_length(%nyx_string* %480)
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %then125, label %else126
then125:
  %483 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %483, i64 0)
  ret %nyx_string* %484
else126:
  br label %merge127
merge127:
  %485 = load %nyx_string*, %nyx_string** %479
  %486 = call i8 @nyx_string_char_at(%nyx_string* %485, i64 0)
  %487 = zext i8 %486 to i64
  %488 = alloca i64
  store i64 %487, i64* %488
  %489 = load i64, i64* %488
  %490 = icmp eq i64 %489, 36
  br i1 %490, label %then128, label %else129
then128:
  %491 = load i64, i64* %h.ptr
  %492 = load %nyx_string*, %nyx_string** %479
  %493 = call %nyx_string* @read_bulk(i64 %491, %nyx_string* %492)
  ret %nyx_string* %493
else129:
  br label %merge130
merge130:
  %494 = load i64, i64* %488
  %495 = icmp eq i64 %494, 45
  br i1 %495, label %then131, label %else132
then131:
  %496 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %496, i64 0)
  ret %nyx_string* %497
else132:
  br label %merge133
merge133:
  %498 = load %nyx_string*, %nyx_string** %479
  %499 = call i64 @nyx_string_byte_length(%nyx_string* %498)
  %500 = icmp sgt i64 %499, 1
  br i1 %500, label %then134, label %else135
then134:
  %501 = load %nyx_string*, %nyx_string** %479
  %502 = load %nyx_string*, %nyx_string** %479
  %503 = call i64 @nyx_string_byte_length(%nyx_string* %502)
  %504 = call %nyx_string* @nyx_string_substring(%nyx_string* %501, i64 1, i64 %503)
  ret %nyx_string* %504
else135:
  br label %merge136
merge136:
  %505 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %505, i64 0)
  ret %nyx_string* %506
}

define { i64, i8* }* @kv_cmd_array(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %507 = load i64, i64* %h.ptr
  %508 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %509 = call i64 @send_cmd(i64 %507, { i64, i8* }* %508)
  %510 = load i64, i64* %h.ptr
  %511 = call %nyx_string* @tls_read_line_local(i64 %510)
  %512 = alloca %nyx_string*
  store %nyx_string* %511, %nyx_string** %512
  %513 = call { i64, i8* }* @nyx_array_new_ptr()
  %514 = alloca { i64, i8* }*
  store { i64, i8* }* %513, { i64, i8* }** %514
  %515 = load %nyx_string*, %nyx_string** %512
  %516 = call i64 @nyx_string_byte_length(%nyx_string* %515)
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %then137, label %else138
then137:
  %518 = load { i64, i8* }*, { i64, i8* }** %514
  ret { i64, i8* }* %518
else138:
  br label %merge139
merge139:
  %519 = load %nyx_string*, %nyx_string** %512
  %520 = call i8 @nyx_string_char_at(%nyx_string* %519, i64 0)
  %521 = zext i8 %520 to i64
  %522 = alloca i64
  store i64 %521, i64* %522
  %523 = load i64, i64* %522
  %524 = icmp ne i64 %523, 42
  br i1 %524, label %then140, label %else141
then140:
  %525 = load { i64, i8* }*, { i64, i8* }** %514
  ret { i64, i8* }* %525
else141:
  br label %merge142
merge142:
  %526 = load %nyx_string*, %nyx_string** %512
  %527 = load %nyx_string*, %nyx_string** %512
  %528 = call i64 @nyx_string_byte_length(%nyx_string* %527)
  %529 = call %nyx_string* @nyx_string_substring(%nyx_string* %526, i64 1, i64 %528)
  %530 = call i64 @std_resp__resp_parse_len(%nyx_string* %529)
  %531 = alloca i64
  store i64 %530, i64* %531
  %532 = load i64, i64* %531
  %533 = icmp slt i64 %532, 0
  br i1 %533, label %then143, label %else144
then143:
  %534 = load { i64, i8* }*, { i64, i8* }** %514
  ret { i64, i8* }* %534
else144:
  br label %merge145
merge145:
  %535 = alloca i64
  store i64 0, i64* %535
  %536 = call i8* @llvm.stacksave()
  br label %while_cond146
while_cond146:
  %537 = load i64, i64* %535
  %538 = load i64, i64* %531
  %539 = icmp slt i64 %537, %538
  br i1 %539, label %while_body147, label %while_end148
while_body147:
  call void @llvm.stackrestore(i8* %536)
  %540 = load i64, i64* %h.ptr
  %541 = call %nyx_string* @tls_read_line_local(i64 %540)
  %542 = alloca %nyx_string*
  store %nyx_string* %541, %nyx_string** %542
  %543 = load %nyx_string*, %nyx_string** %542
  %544 = call i64 @nyx_string_byte_length(%nyx_string* %543)
  %545 = icmp sgt i64 %544, 0
  br i1 %545, label %then149, label %else150
then149:
  %546 = load %nyx_string*, %nyx_string** %542
  %547 = call i8 @nyx_string_char_at(%nyx_string* %546, i64 0)
  %548 = zext i8 %547 to i64
  %549 = alloca i64
  store i64 %548, i64* %549
  %550 = load i64, i64* %549
  %551 = icmp eq i64 %550, 36
  br i1 %551, label %then152, label %else153
then152:
  %552 = load { i64, i8* }*, { i64, i8* }** %514
  %553 = load i64, i64* %h.ptr
  %554 = load %nyx_string*, %nyx_string** %542
  %555 = call %nyx_string* @read_bulk(i64 %553, %nyx_string* %554)
  %556 = ptrtoint %nyx_string* %555 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %552, i64 %556, i64 2)
  br label %merge154
else153:
  %557 = load { i64, i8* }*, { i64, i8* }** %514
  %558 = load %nyx_string*, %nyx_string** %542
  %559 = load %nyx_string*, %nyx_string** %542
  %560 = call i64 @nyx_string_byte_length(%nyx_string* %559)
  %561 = call %nyx_string* @nyx_string_substring(%nyx_string* %558, i64 1, i64 %560)
  %562 = ptrtoint %nyx_string* %561 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %562, i64 2)
  br label %merge154
merge154:
  br label %merge151
else150:
  %563 = load { i64, i8* }*, { i64, i8* }** %514
  %564 = getelementptr [1 x i8], [1 x i8]* @.str40, i32 0, i32 0
  %565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %564, i64 0)
  %566 = ptrtoint %nyx_string* %565 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %563, i64 %566, i64 2)
  br label %merge151
merge151:
  %567 = load i64, i64* %535
  %568 = add i64 %567, 1
  store i64 %568, i64* %535
  br label %while_cond146
while_end148:
  %569 = load { i64, i8* }*, { i64, i8* }** %514
  ret { i64, i8* }* %569
}

define i1 @kv_set(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %value.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %value.ptr = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %value.ptr
  %570 = call { i64, i8* }* @nyx_array_new_ptr()
  %571 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %571, i64 3)
  %573 = ptrtoint %nyx_string* %572 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %570, i64 %573, i64 2)
  %574 = load %nyx_string*, %nyx_string** %key.ptr
  %575 = ptrtoint %nyx_string* %574 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %570, i64 %575, i64 2)
  %576 = load %nyx_string*, %nyx_string** %value.ptr
  %577 = ptrtoint %nyx_string* %576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %570, i64 %577, i64 2)
  %578 = alloca { i64, i8* }*
  store { i64, i8* }* %570, { i64, i8* }** %578
  %579 = load i64, i64* %h.ptr
  %580 = load { i64, i8* }*, { i64, i8* }** %578
  %581 = call %nyx_string* @kv_cmd(i64 %579, { i64, i8* }* %580)
  %582 = getelementptr [3 x i8], [3 x i8]* @.str42, i32 0, i32 0
  %583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %582, i64 2)
  %584 = call i1 @nyx_string_equals(%nyx_string* %581, %nyx_string* %583)
  ret i1 %584
}

define i1 @kv_setex(
i64 %h.param, %nyx_string* %key.param, i64 %ttl.param, %nyx_string* %value.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %ttl.ptr = alloca i64
  store i64 %ttl.param, i64* %ttl.ptr
  %value.ptr = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %value.ptr
  %585 = call { i64, i8* }* @nyx_array_new_ptr()
  %586 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %586, i64 5)
  %588 = ptrtoint %nyx_string* %587 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %585, i64 %588, i64 2)
  %589 = load %nyx_string*, %nyx_string** %key.ptr
  %590 = ptrtoint %nyx_string* %589 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %585, i64 %590, i64 2)
  %591 = load i64, i64* %ttl.ptr
  %592 = call %nyx_string* @nyx_string_from_int(i64 %591)
  %593 = ptrtoint %nyx_string* %592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %585, i64 %593, i64 2)
  %594 = load %nyx_string*, %nyx_string** %value.ptr
  %595 = ptrtoint %nyx_string* %594 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %585, i64 %595, i64 2)
  %596 = alloca { i64, i8* }*
  store { i64, i8* }* %585, { i64, i8* }** %596
  %597 = load i64, i64* %h.ptr
  %598 = load { i64, i8* }*, { i64, i8* }** %596
  %599 = call %nyx_string* @kv_cmd(i64 %597, { i64, i8* }* %598)
  %600 = getelementptr [3 x i8], [3 x i8]* @.str44, i32 0, i32 0
  %601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %600, i64 2)
  %602 = call i1 @nyx_string_equals(%nyx_string* %599, %nyx_string* %601)
  ret i1 %602
}

define %nyx_string* @kv_get(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %603 = call { i64, i8* }* @nyx_array_new_ptr()
  %604 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %604, i64 3)
  %606 = ptrtoint %nyx_string* %605 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %603, i64 %606, i64 2)
  %607 = load %nyx_string*, %nyx_string** %key.ptr
  %608 = ptrtoint %nyx_string* %607 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %603, i64 %608, i64 2)
  %609 = alloca { i64, i8* }*
  store { i64, i8* }* %603, { i64, i8* }** %609
  %610 = load i64, i64* %h.ptr
  %611 = load { i64, i8* }*, { i64, i8* }** %609
  %612 = call %nyx_string* @kv_cmd(i64 %610, { i64, i8* }* %611)
  ret %nyx_string* %612
}

define i64 @kv_del(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %613 = call { i64, i8* }* @nyx_array_new_ptr()
  %614 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %614, i64 3)
  %616 = ptrtoint %nyx_string* %615 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %613, i64 %616, i64 2)
  %617 = load %nyx_string*, %nyx_string** %key.ptr
  %618 = ptrtoint %nyx_string* %617 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %613, i64 %618, i64 2)
  %619 = alloca { i64, i8* }*
  store { i64, i8* }* %613, { i64, i8* }** %619
  %620 = load i64, i64* %h.ptr
  %621 = load { i64, i8* }*, { i64, i8* }** %619
  %622 = call %nyx_string* @kv_cmd(i64 %620, { i64, i8* }* %621)
  %623 = call i64 @nyx_string_to_int(%nyx_string* %622)
  ret i64 %623
}

define i64 @kv_rpush(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %value.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %value.ptr = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %value.ptr
  %624 = call { i64, i8* }* @nyx_array_new_ptr()
  %625 = getelementptr [6 x i8], [6 x i8]* @.str47, i32 0, i32 0
  %626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %625, i64 5)
  %627 = ptrtoint %nyx_string* %626 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %624, i64 %627, i64 2)
  %628 = load %nyx_string*, %nyx_string** %key.ptr
  %629 = ptrtoint %nyx_string* %628 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %624, i64 %629, i64 2)
  %630 = load %nyx_string*, %nyx_string** %value.ptr
  %631 = ptrtoint %nyx_string* %630 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %624, i64 %631, i64 2)
  %632 = alloca { i64, i8* }*
  store { i64, i8* }* %624, { i64, i8* }** %632
  %633 = load i64, i64* %h.ptr
  %634 = load { i64, i8* }*, { i64, i8* }** %632
  %635 = call %nyx_string* @kv_cmd(i64 %633, { i64, i8* }* %634)
  %636 = call i64 @nyx_string_to_int(%nyx_string* %635)
  ret i64 %636
}

define { i64, i8* }* @kv_lrange(
i64 %h.param, %nyx_string* %key.param, i64 %start.param, i64 %stop.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %start.ptr = alloca i64
  store i64 %start.param, i64* %start.ptr
  %stop.ptr = alloca i64
  store i64 %stop.param, i64* %stop.ptr
  %637 = call { i64, i8* }* @nyx_array_new_ptr()
  %638 = getelementptr [7 x i8], [7 x i8]* @.str48, i32 0, i32 0
  %639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %638, i64 6)
  %640 = ptrtoint %nyx_string* %639 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %637, i64 %640, i64 2)
  %641 = load %nyx_string*, %nyx_string** %key.ptr
  %642 = ptrtoint %nyx_string* %641 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %637, i64 %642, i64 2)
  %643 = load i64, i64* %start.ptr
  %644 = call %nyx_string* @nyx_string_from_int(i64 %643)
  %645 = ptrtoint %nyx_string* %644 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %637, i64 %645, i64 2)
  %646 = load i64, i64* %stop.ptr
  %647 = call %nyx_string* @nyx_string_from_int(i64 %646)
  %648 = ptrtoint %nyx_string* %647 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %637, i64 %648, i64 2)
  %649 = alloca { i64, i8* }*
  store { i64, i8* }* %637, { i64, i8* }** %649
  %650 = load i64, i64* %h.ptr
  %651 = load { i64, i8* }*, { i64, i8* }** %649
  %652 = call { i64, i8* }* @kv_cmd_array(i64 %650, { i64, i8* }* %651)
  ret { i64, i8* }* %652
}

define i64 @kv_llen(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %653 = call { i64, i8* }* @nyx_array_new_ptr()
  %654 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %654, i64 4)
  %656 = ptrtoint %nyx_string* %655 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %653, i64 %656, i64 2)
  %657 = load %nyx_string*, %nyx_string** %key.ptr
  %658 = ptrtoint %nyx_string* %657 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %653, i64 %658, i64 2)
  %659 = alloca { i64, i8* }*
  store { i64, i8* }* %653, { i64, i8* }** %659
  %660 = load i64, i64* %h.ptr
  %661 = load { i64, i8* }*, { i64, i8* }** %659
  %662 = call %nyx_string* @kv_cmd(i64 %660, { i64, i8* }* %661)
  %663 = call i64 @nyx_string_to_int(%nyx_string* %662)
  ret i64 %663
}

define i64 @kv_sadd(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %member.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %member.ptr = alloca %nyx_string*
  store %nyx_string* %member.param, %nyx_string** %member.ptr
  %664 = call { i64, i8* }* @nyx_array_new_ptr()
  %665 = getelementptr [5 x i8], [5 x i8]* @.str50, i32 0, i32 0
  %666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %665, i64 4)
  %667 = ptrtoint %nyx_string* %666 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %664, i64 %667, i64 2)
  %668 = load %nyx_string*, %nyx_string** %key.ptr
  %669 = ptrtoint %nyx_string* %668 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %664, i64 %669, i64 2)
  %670 = load %nyx_string*, %nyx_string** %member.ptr
  %671 = ptrtoint %nyx_string* %670 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %664, i64 %671, i64 2)
  %672 = alloca { i64, i8* }*
  store { i64, i8* }* %664, { i64, i8* }** %672
  %673 = load i64, i64* %h.ptr
  %674 = load { i64, i8* }*, { i64, i8* }** %672
  %675 = call %nyx_string* @kv_cmd(i64 %673, { i64, i8* }* %674)
  %676 = call i64 @nyx_string_to_int(%nyx_string* %675)
  ret i64 %676
}

define { i64, i8* }* @kv_smembers(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %677 = call { i64, i8* }* @nyx_array_new_ptr()
  %678 = getelementptr [9 x i8], [9 x i8]* @.str51, i32 0, i32 0
  %679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %678, i64 8)
  %680 = ptrtoint %nyx_string* %679 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %677, i64 %680, i64 2)
  %681 = load %nyx_string*, %nyx_string** %key.ptr
  %682 = ptrtoint %nyx_string* %681 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %677, i64 %682, i64 2)
  %683 = alloca { i64, i8* }*
  store { i64, i8* }* %677, { i64, i8* }** %683
  %684 = load i64, i64* %h.ptr
  %685 = load { i64, i8* }*, { i64, i8* }** %683
  %686 = call { i64, i8* }* @kv_cmd_array(i64 %684, { i64, i8* }* %685)
  ret { i64, i8* }* %686
}

define %nyx_string* @kv_whoami(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %687 = call { i64, i8* }* @nyx_array_new_ptr()
  %688 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %688, i64 6)
  %690 = ptrtoint %nyx_string* %689 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %687, i64 %690, i64 2)
  %691 = alloca { i64, i8* }*
  store { i64, i8* }* %687, { i64, i8* }** %691
  %692 = load i64, i64* %h.ptr
  %693 = load { i64, i8* }*, { i64, i8* }** %691
  %694 = call %nyx_string* @kv_cmd(i64 %692, { i64, i8* }* %693)
  ret %nyx_string* %694
}

define %nyx_string* @kv_token_create(
i64 %h.param, %nyx_string* %user_id.param, %nyx_string* %plan.param, i64 %ttl.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %user_id.ptr = alloca %nyx_string*
  store %nyx_string* %user_id.param, %nyx_string** %user_id.ptr
  %plan.ptr = alloca %nyx_string*
  store %nyx_string* %plan.param, %nyx_string** %plan.ptr
  %ttl.ptr = alloca i64
  store i64 %ttl.param, i64* %ttl.ptr
  %695 = call { i64, i8* }* @nyx_array_new_ptr()
  %696 = getelementptr [13 x i8], [13 x i8]* @.str53, i32 0, i32 0
  %697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %696, i64 12)
  %698 = ptrtoint %nyx_string* %697 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %695, i64 %698, i64 2)
  %699 = load %nyx_string*, %nyx_string** %user_id.ptr
  %700 = ptrtoint %nyx_string* %699 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %695, i64 %700, i64 2)
  %701 = load %nyx_string*, %nyx_string** %plan.ptr
  %702 = ptrtoint %nyx_string* %701 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %695, i64 %702, i64 2)
  %703 = load i64, i64* %ttl.ptr
  %704 = call %nyx_string* @nyx_string_from_int(i64 %703)
  %705 = ptrtoint %nyx_string* %704 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %695, i64 %705, i64 2)
  %706 = alloca { i64, i8* }*
  store { i64, i8* }* %695, { i64, i8* }** %706
  %707 = load i64, i64* %h.ptr
  %708 = load { i64, i8* }*, { i64, i8* }** %706
  %709 = call %nyx_string* @kv_cmd(i64 %707, { i64, i8* }* %708)
  ret %nyx_string* %709
}

define i1 @kv_exists(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %710 = call { i64, i8* }* @nyx_array_new_ptr()
  %711 = getelementptr [7 x i8], [7 x i8]* @.str54, i32 0, i32 0
  %712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %711, i64 6)
  %713 = ptrtoint %nyx_string* %712 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %710, i64 %713, i64 2)
  %714 = load %nyx_string*, %nyx_string** %key.ptr
  %715 = ptrtoint %nyx_string* %714 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %710, i64 %715, i64 2)
  %716 = alloca { i64, i8* }*
  store { i64, i8* }* %710, { i64, i8* }** %716
  %717 = load i64, i64* %h.ptr
  %718 = load { i64, i8* }*, { i64, i8* }** %716
  %719 = call %nyx_string* @kv_cmd(i64 %717, { i64, i8* }* %718)
  %720 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %720, i64 1)
  %722 = call i1 @nyx_string_equals(%nyx_string* %719, %nyx_string* %721)
  ret i1 %722
}

define i64 @kv_srem(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %member.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %member.ptr = alloca %nyx_string*
  store %nyx_string* %member.param, %nyx_string** %member.ptr
  %723 = call { i64, i8* }* @nyx_array_new_ptr()
  %724 = getelementptr [5 x i8], [5 x i8]* @.str56, i32 0, i32 0
  %725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %724, i64 4)
  %726 = ptrtoint %nyx_string* %725 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %723, i64 %726, i64 2)
  %727 = load %nyx_string*, %nyx_string** %key.ptr
  %728 = ptrtoint %nyx_string* %727 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %723, i64 %728, i64 2)
  %729 = load %nyx_string*, %nyx_string** %member.ptr
  %730 = ptrtoint %nyx_string* %729 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %723, i64 %730, i64 2)
  %731 = alloca { i64, i8* }*
  store { i64, i8* }* %723, { i64, i8* }** %731
  %732 = load i64, i64* %h.ptr
  %733 = load { i64, i8* }*, { i64, i8* }** %731
  %734 = call %nyx_string* @kv_cmd(i64 %732, { i64, i8* }* %733)
  %735 = call i64 @nyx_string_to_int(%nyx_string* %734)
  ret i64 %735
}

define { i64, i8* }* @kv_token_list(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %736 = call { i64, i8* }* @nyx_array_new_ptr()
  %737 = getelementptr [11 x i8], [11 x i8]* @.str57, i32 0, i32 0
  %738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %737, i64 10)
  %739 = ptrtoint %nyx_string* %738 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %736, i64 %739, i64 2)
  %740 = alloca { i64, i8* }*
  store { i64, i8* }* %736, { i64, i8* }** %740
  %741 = load i64, i64* %h.ptr
  %742 = load { i64, i8* }*, { i64, i8* }** %740
  %743 = call { i64, i8* }* @kv_cmd_array(i64 %741, { i64, i8* }* %742)
  ret { i64, i8* }* %743
}

define i1 @kv_token_revoke(
i64 %h.param, %nyx_string* %token.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %token.ptr = alloca %nyx_string*
  store %nyx_string* %token.param, %nyx_string** %token.ptr
  %744 = call { i64, i8* }* @nyx_array_new_ptr()
  %745 = getelementptr [13 x i8], [13 x i8]* @.str58, i32 0, i32 0
  %746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %745, i64 12)
  %747 = ptrtoint %nyx_string* %746 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %744, i64 %747, i64 2)
  %748 = load %nyx_string*, %nyx_string** %token.ptr
  %749 = ptrtoint %nyx_string* %748 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %744, i64 %749, i64 2)
  %750 = alloca { i64, i8* }*
  store { i64, i8* }* %744, { i64, i8* }** %750
  %751 = load i64, i64* %h.ptr
  %752 = load { i64, i8* }*, { i64, i8* }** %750
  %753 = call %nyx_string* @kv_cmd(i64 %751, { i64, i8* }* %752)
  %754 = getelementptr [3 x i8], [3 x i8]* @.str59, i32 0, i32 0
  %755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %754, i64 2)
  %756 = call i1 @nyx_string_equals(%nyx_string* %753, %nyx_string* %755)
  ret i1 %756
}

define internal %nyx_string* @std_base64____b64_encode_with(
%nyx_string* %input.param, %nyx_string* %alphabet.param, i1 %pad.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %pad.ptr = alloca i1
  store i1 %pad.param, i1* %pad.ptr
  %757 = load %nyx_string*, %nyx_string** %input.ptr
  %758 = call i64 @nyx_string_byte_length(%nyx_string* %757)
  %759 = alloca i64
  store i64 %758, i64* %759
  %760 = load i64, i64* %759
  %761 = icmp eq i64 %760, 0
  br i1 %761, label %then155, label %else156
then155:
  %762 = getelementptr [1 x i8], [1 x i8]* @.str60, i32 0, i32 0
  %763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %762, i64 0)
  ret %nyx_string* %763
else156:
  br label %merge157
merge157:
  %764 = call i8* @nyx_sb_new(i64 1024)
  %765 = alloca i8*
  store i8* %764, i8** %765
  %766 = alloca i64
  store i64 0, i64* %766
  %767 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %767, i64 1)
  %769 = alloca %nyx_string*
  store %nyx_string* %768, %nyx_string** %769
  %770 = call i8* @llvm.stacksave()
  br label %while_cond158
while_cond158:
  %771 = load i64, i64* %766
  %772 = load i64, i64* %759
  %773 = icmp slt i64 %771, %772
  br i1 %773, label %while_body159, label %while_end160
while_body159:
  call void @llvm.stackrestore(i8* %770)
  %774 = load %nyx_string*, %nyx_string** %input.ptr
  %775 = load i64, i64* %766
  %776 = call i8 @nyx_string_char_at(%nyx_string* %774, i64 %775)
  %777 = zext i8 %776 to i64
  %778 = alloca i64
  store i64 %777, i64* %778
  %779 = alloca i64
  store i64 0, i64* %779
  %780 = alloca i64
  store i64 0, i64* %780
  %781 = load i64, i64* %759
  %782 = load i64, i64* %766
  %783 = sub i64 %781, %782
  %784 = alloca i64
  store i64 %783, i64* %784
  %785 = load i64, i64* %784
  %786 = icmp sge i64 %785, 2
  br i1 %786, label %then161, label %else162
then161:
  %787 = load %nyx_string*, %nyx_string** %input.ptr
  %788 = load i64, i64* %766
  %789 = add i64 %788, 1
  %790 = call i8 @nyx_string_char_at(%nyx_string* %787, i64 %789)
  %791 = zext i8 %790 to i64
  store i64 %791, i64* %779
  br label %merge163
else162:
  br label %merge163
merge163:
  %792 = load i64, i64* %784
  %793 = icmp sge i64 %792, 3
  br i1 %793, label %then164, label %else165
then164:
  %794 = load %nyx_string*, %nyx_string** %input.ptr
  %795 = load i64, i64* %766
  %796 = add i64 %795, 2
  %797 = call i8 @nyx_string_char_at(%nyx_string* %794, i64 %796)
  %798 = zext i8 %797 to i64
  store i64 %798, i64* %780
  br label %merge166
else165:
  br label %merge166
merge166:
  %799 = load i64, i64* %778
  %800 = sdiv i64 %799, 4
  %801 = alloca i64
  store i64 %800, i64* %801
  %802 = load i64, i64* %778
  %803 = srem i64 %802, 4
  %804 = mul i64 %803, 16
  %805 = load i64, i64* %779
  %806 = sdiv i64 %805, 16
  %807 = add i64 %804, %806
  %808 = alloca i64
  store i64 %807, i64* %808
  %809 = load i64, i64* %779
  %810 = srem i64 %809, 16
  %811 = mul i64 %810, 4
  %812 = load i64, i64* %780
  %813 = sdiv i64 %812, 64
  %814 = add i64 %811, %813
  %815 = alloca i64
  store i64 %814, i64* %815
  %816 = load i64, i64* %780
  %817 = srem i64 %816, 64
  %818 = alloca i64
  store i64 %817, i64* %818
  %819 = load i8*, i8** %765
  %820 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %821 = load i64, i64* %801
  %822 = load i64, i64* %801
  %823 = add i64 %822, 1
  %824 = call %nyx_string* @nyx_string_substring(%nyx_string* %820, i64 %821, i64 %823)
  call void @nyx_sb_append(i8* %819, %nyx_string* %824)
  %825 = load i8*, i8** %765
  %826 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %827 = load i64, i64* %808
  %828 = load i64, i64* %808
  %829 = add i64 %828, 1
  %830 = call %nyx_string* @nyx_string_substring(%nyx_string* %826, i64 %827, i64 %829)
  call void @nyx_sb_append(i8* %825, %nyx_string* %830)
  %831 = load i64, i64* %784
  %832 = icmp sge i64 %831, 2
  br i1 %832, label %then167, label %else168
then167:
  %833 = load i8*, i8** %765
  %834 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %835 = load i64, i64* %815
  %836 = load i64, i64* %815
  %837 = add i64 %836, 1
  %838 = call %nyx_string* @nyx_string_substring(%nyx_string* %834, i64 %835, i64 %837)
  call void @nyx_sb_append(i8* %833, %nyx_string* %838)
  br label %merge169
else168:
  %839 = load i1, i1* %pad.ptr
  br i1 %839, label %then170, label %else171
then170:
  %840 = load i8*, i8** %765
  %841 = load %nyx_string*, %nyx_string** %769
  call void @nyx_sb_append(i8* %840, %nyx_string* %841)
  br label %merge172
else171:
  br label %merge172
merge172:
  br label %merge169
merge169:
  %842 = load i64, i64* %784
  %843 = icmp sge i64 %842, 3
  br i1 %843, label %then173, label %else174
then173:
  %844 = load i8*, i8** %765
  %845 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %846 = load i64, i64* %818
  %847 = load i64, i64* %818
  %848 = add i64 %847, 1
  %849 = call %nyx_string* @nyx_string_substring(%nyx_string* %845, i64 %846, i64 %848)
  call void @nyx_sb_append(i8* %844, %nyx_string* %849)
  br label %merge175
else174:
  %850 = load i1, i1* %pad.ptr
  br i1 %850, label %then176, label %else177
then176:
  %851 = load i8*, i8** %765
  %852 = load %nyx_string*, %nyx_string** %769
  call void @nyx_sb_append(i8* %851, %nyx_string* %852)
  br label %merge178
else177:
  br label %merge178
merge178:
  br label %merge175
merge175:
  %853 = load i64, i64* %766
  %854 = add i64 %853, 3
  store i64 %854, i64* %766
  br label %while_cond158
while_end160:
  %855 = load i8*, i8** %765
  %856 = call %nyx_string* @nyx_sb_to_string(i8* %855)
  ret %nyx_string* %856
}

define internal %nyx_string* @std_base64____b64_byte_to_string(
i64 %b.param) {
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %857 = call { i64, i8* }* @nyx_array_new_ptr()
  %858 = load i64, i64* %b.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %857, i64 %858, i64 1)
  %859 = alloca { i64, i8* }*
  store { i64, i8* }* %857, { i64, i8* }** %859
  %860 = load { i64, i8* }*, { i64, i8* }** %859
  %861 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %860, i64 0, i64 1)
  ret %nyx_string* %861
}

define internal i64 @std_base64____b64_char_value(
i64 %c.param, %nyx_string* %alphabet.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %862 = alloca i64
  store i64 0, i64* %862
  %863 = call i8* @llvm.stacksave()
  br label %while_cond179
while_cond179:
  %864 = load i64, i64* %862
  %865 = icmp slt i64 %864, 64
  br i1 %865, label %while_body180, label %while_end181
while_body180:
  call void @llvm.stackrestore(i8* %863)
  %866 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %867 = load i64, i64* %862
  %868 = call i8 @nyx_string_char_at(%nyx_string* %866, i64 %867)
  %869 = zext i8 %868 to i64
  %870 = load i64, i64* %c.ptr
  %871 = icmp eq i64 %869, %870
  br i1 %871, label %then182, label %else183
then182:
  %872 = load i64, i64* %862
  ret i64 %872
else183:
  br label %merge184
merge184:
  %873 = load i64, i64* %862
  %874 = add i64 %873, 1
  store i64 %874, i64* %862
  br label %while_cond179
while_end181:
  %875 = sub i64 0, 1
  ret i64 %875
}

define internal %nyx_string* @std_base64____b64_decode_with(
%nyx_string* %input.param, %nyx_string* %alphabet.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %876 = load %nyx_string*, %nyx_string** %input.ptr
  %877 = call i64 @nyx_string_byte_length(%nyx_string* %876)
  %878 = alloca i64
  store i64 %877, i64* %878
  %879 = load i64, i64* %878
  %880 = icmp eq i64 %879, 0
  br i1 %880, label %then185, label %else186
then185:
  %881 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %881, i64 0)
  ret %nyx_string* %882
else186:
  br label %merge187
merge187:
  %883 = call i8* @nyx_sb_new(i64 1024)
  %884 = alloca i8*
  store i8* %883, i8** %884
  %885 = alloca i64
  store i64 0, i64* %885
  %886 = call i8* @llvm.stacksave()
  br label %while_cond188
while_cond188:
  %887 = load i64, i64* %885
  %888 = load i64, i64* %878
  %889 = icmp slt i64 %887, %888
  br i1 %889, label %while_body189, label %while_end190
while_body189:
  call void @llvm.stackrestore(i8* %886)
  %890 = load %nyx_string*, %nyx_string** %input.ptr
  %891 = load i64, i64* %885
  %892 = call i8 @nyx_string_char_at(%nyx_string* %890, i64 %891)
  %893 = zext i8 %892 to i64
  %894 = alloca i64
  store i64 %893, i64* %894
  %895 = load i64, i64* %894
  %896 = icmp eq i64 %895, 61
  br i1 %896, label %then191, label %else192
then191:
  br label %while_end190
else192:
  br label %merge193
merge193:
  %897 = load i64, i64* %894
  %898 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %899 = call i64 @std_base64____b64_char_value(i64 %897, %nyx_string* %898)
  %900 = alloca i64
  store i64 %899, i64* %900
  %901 = load i64, i64* %900
  %902 = icmp slt i64 %901, 0
  br i1 %902, label %then194, label %else195
then194:
  br label %while_end190
else195:
  br label %merge196
merge196:
  %903 = alloca i64
  store i64 0, i64* %903
  %904 = sub i64 0, 1
  %905 = alloca i64
  store i64 %904, i64* %905
  %906 = sub i64 0, 1
  %907 = alloca i64
  store i64 %906, i64* %907
  %908 = load i64, i64* %885
  %909 = add i64 %908, 1
  %910 = load i64, i64* %878
  %911 = icmp slt i64 %909, %910
  br i1 %911, label %then197, label %else198
then197:
  %912 = load %nyx_string*, %nyx_string** %input.ptr
  %913 = load i64, i64* %885
  %914 = add i64 %913, 1
  %915 = call i8 @nyx_string_char_at(%nyx_string* %912, i64 %914)
  %916 = zext i8 %915 to i64
  %917 = alloca i64
  store i64 %916, i64* %917
  %918 = load i64, i64* %917
  %919 = icmp ne i64 %918, 61
  br i1 %919, label %then200, label %else201
then200:
  %920 = load i64, i64* %917
  %921 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %922 = call i64 @std_base64____b64_char_value(i64 %920, %nyx_string* %921)
  store i64 %922, i64* %903
  br label %merge202
else201:
  br label %merge202
merge202:
  br label %merge199
else198:
  br label %merge199
merge199:
  %923 = load i64, i64* %885
  %924 = add i64 %923, 2
  %925 = load i64, i64* %878
  %926 = icmp slt i64 %924, %925
  br i1 %926, label %then203, label %else204
then203:
  %927 = load %nyx_string*, %nyx_string** %input.ptr
  %928 = load i64, i64* %885
  %929 = add i64 %928, 2
  %930 = call i8 @nyx_string_char_at(%nyx_string* %927, i64 %929)
  %931 = zext i8 %930 to i64
  %932 = alloca i64
  store i64 %931, i64* %932
  %933 = load i64, i64* %932
  %934 = icmp ne i64 %933, 61
  br i1 %934, label %then206, label %else207
then206:
  %935 = load i64, i64* %932
  %936 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %937 = call i64 @std_base64____b64_char_value(i64 %935, %nyx_string* %936)
  store i64 %937, i64* %905
  br label %merge208
else207:
  br label %merge208
merge208:
  br label %merge205
else204:
  br label %merge205
merge205:
  %938 = load i64, i64* %885
  %939 = add i64 %938, 3
  %940 = load i64, i64* %878
  %941 = icmp slt i64 %939, %940
  br i1 %941, label %then209, label %else210
then209:
  %942 = load %nyx_string*, %nyx_string** %input.ptr
  %943 = load i64, i64* %885
  %944 = add i64 %943, 3
  %945 = call i8 @nyx_string_char_at(%nyx_string* %942, i64 %944)
  %946 = zext i8 %945 to i64
  %947 = alloca i64
  store i64 %946, i64* %947
  %948 = load i64, i64* %947
  %949 = icmp ne i64 %948, 61
  br i1 %949, label %then212, label %else213
then212:
  %950 = load i64, i64* %947
  %951 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %952 = call i64 @std_base64____b64_char_value(i64 %950, %nyx_string* %951)
  store i64 %952, i64* %907
  br label %merge214
else213:
  br label %merge214
merge214:
  br label %merge211
else210:
  br label %merge211
merge211:
  %953 = load i64, i64* %900
  %954 = mul i64 %953, 4
  %955 = load i64, i64* %903
  %956 = sdiv i64 %955, 16
  %957 = add i64 %954, %956
  %958 = alloca i64
  store i64 %957, i64* %958
  %959 = load i8*, i8** %884
  %960 = load i64, i64* %958
  %961 = call %nyx_string* @std_base64____b64_byte_to_string(i64 %960)
  call void @nyx_sb_append(i8* %959, %nyx_string* %961)
  %962 = load i64, i64* %905
  %963 = icmp sge i64 %962, 0
  br i1 %963, label %then215, label %else216
then215:
  %964 = load i64, i64* %903
  %965 = srem i64 %964, 16
  %966 = mul i64 %965, 16
  %967 = load i64, i64* %905
  %968 = sdiv i64 %967, 4
  %969 = add i64 %966, %968
  %970 = alloca i64
  store i64 %969, i64* %970
  %971 = load i8*, i8** %884
  %972 = load i64, i64* %970
  %973 = call %nyx_string* @std_base64____b64_byte_to_string(i64 %972)
  call void @nyx_sb_append(i8* %971, %nyx_string* %973)
  br label %merge217
else216:
  br label %merge217
merge217:
  %974 = load i64, i64* %907
  %975 = icmp sge i64 %974, 0
  br i1 %975, label %then218, label %else219
then218:
  %976 = load i64, i64* %905
  %977 = srem i64 %976, 4
  %978 = mul i64 %977, 64
  %979 = load i64, i64* %907
  %980 = add i64 %978, %979
  %981 = alloca i64
  store i64 %980, i64* %981
  %982 = load i8*, i8** %884
  %983 = load i64, i64* %981
  %984 = call %nyx_string* @std_base64____b64_byte_to_string(i64 %983)
  call void @nyx_sb_append(i8* %982, %nyx_string* %984)
  br label %merge220
else219:
  br label %merge220
merge220:
  %985 = load i64, i64* %885
  %986 = add i64 %985, 4
  store i64 %986, i64* %885
  br label %while_cond188
while_end190:
  %987 = load i8*, i8** %884
  %988 = call %nyx_string* @nyx_sb_to_string(i8* %987)
  ret %nyx_string* %988
}

define %nyx_string* @std_base64__base64_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %989 = load %nyx_string*, %nyx_string** %input.ptr
  %990 = load %nyx_string*, %nyx_string** @std_base64____b64_chars
  %991 = call %nyx_string* @std_base64____b64_encode_with(%nyx_string* %989, %nyx_string* %990, i1 1)
  ret %nyx_string* %991
}

define %nyx_string* @std_base64__base64_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %992 = load %nyx_string*, %nyx_string** %input.ptr
  %993 = load %nyx_string*, %nyx_string** @std_base64____b64_chars
  %994 = call %nyx_string* @std_base64____b64_decode_with(%nyx_string* %992, %nyx_string* %993)
  ret %nyx_string* %994
}

define %nyx_string* @std_base64__base64url_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %995 = load %nyx_string*, %nyx_string** %input.ptr
  %996 = load %nyx_string*, %nyx_string** @std_base64____b64url_chars
  %997 = call %nyx_string* @std_base64____b64_encode_with(%nyx_string* %995, %nyx_string* %996, i1 0)
  ret %nyx_string* %997
}

define %nyx_string* @std_base64__base64url_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %998 = load %nyx_string*, %nyx_string** %input.ptr
  %999 = load %nyx_string*, %nyx_string** @std_base64____b64url_chars
  %1000 = call %nyx_string* @std_base64____b64_decode_with(%nyx_string* %998, %nyx_string* %999)
  ret %nyx_string* %1000
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1001 = load %nyx_string*, %nyx_string** %line.ptr
  %1002 = call %nyx_string* @nyx_string_trim(%nyx_string* %1001)
  %1003 = alloca %nyx_string*
  store %nyx_string* %1002, %nyx_string** %1003
  %1004 = sub i64 0, 1
  %1005 = alloca i64
  store i64 %1004, i64* %1005
  %1006 = alloca i64
  store i64 0, i64* %1006
  %1007 = call i8* @llvm.stacksave()
  br label %while_cond221
while_cond221:
  %1008 = load i64, i64* %1006
  %1009 = load %nyx_string*, %nyx_string** %1003
  %1010 = call i64 @nyx_string_byte_length(%nyx_string* %1009)
  %1011 = icmp slt i64 %1008, %1010
  br i1 %1011, label %while_body222, label %while_end223
while_body222:
  call void @llvm.stackrestore(i8* %1007)
  %1012 = load %nyx_string*, %nyx_string** %1003
  %1013 = load i64, i64* %1006
  %1014 = call i8 @nyx_string_char_at(%nyx_string* %1012, i64 %1013)
  %1015 = zext i8 %1014 to i64
  %1016 = trunc i64 %1015 to i8
  %1017 = alloca i8
  store i8 %1016, i8* %1017
  %1018 = load i8, i8* %1017
  %1019 = getelementptr [1 x i8], [1 x i8]* @.str63, i32 0, i32 0
  %1020 = load i8, i8* %1019
  %1021 = zext i8 %1020 to i64
  %1022 = zext i8 %1018 to i64
  %1023 = icmp eq i64 %1022, %1021
  br i1 %1023, label %then224, label %else225
then224:
  %1024 = load i64, i64* %1006
  store i64 %1024, i64* %1005
  %1025 = load %nyx_string*, %nyx_string** %1003
  %1026 = call i64 @nyx_string_byte_length(%nyx_string* %1025)
  store i64 %1026, i64* %1006
  br label %merge226
else225:
  %1027 = load i64, i64* %1006
  %1028 = add i64 %1027, 1
  store i64 %1028, i64* %1006
  br label %merge226
merge226:
  br label %while_cond221
while_end223:
  %1029 = load i64, i64* %1005
  %1030 = icmp slt i64 %1029, 0
  br i1 %1030, label %then227, label %else228
then227:
  %1031 = getelementptr [1 x i8], [1 x i8]* @.str64, i32 0, i32 0
  %1032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1031, i64 0)
  ret %nyx_string* %1032
else228:
  br label %merge229
merge229:
  %1033 = load %nyx_string*, %nyx_string** %1003
  %1034 = load i64, i64* %1005
  %1035 = add i64 %1034, 1
  %1036 = load %nyx_string*, %nyx_string** %1003
  %1037 = call i64 @nyx_string_byte_length(%nyx_string* %1036)
  %1038 = call %nyx_string* @nyx_string_substring(%nyx_string* %1033, i64 %1035, i64 %1037)
  %1039 = call %nyx_string* @nyx_string_trim(%nyx_string* %1038)
  %1040 = alloca %nyx_string*
  store %nyx_string* %1039, %nyx_string** %1040
  %1041 = alloca i1
  store i1 false, i1* %1041
  %1042 = load %nyx_string*, %nyx_string** %1040
  %1043 = getelementptr [2 x i8], [2 x i8]* @.str65, i32 0, i32 0
  %1044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1043, i64 1)
  %1045 = call i1 @nyx_string_starts_with(%nyx_string* %1042, %nyx_string* %1044)
  br i1 %1045, label %sc_and_rhs230, label %sc_and_end231
sc_and_rhs230:
  %1046 = load %nyx_string*, %nyx_string** %1040
  %1047 = getelementptr [2 x i8], [2 x i8]* @.str66, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1047, i64 1)
  %1049 = call i1 @nyx_string_ends_with(%nyx_string* %1046, %nyx_string* %1048)
  store i1 %1049, i1* %1041
  br label %sc_and_end231
sc_and_end231:
  %1050 = load i1, i1* %1041
  br i1 %1050, label %then232, label %else233
then232:
  %1051 = load %nyx_string*, %nyx_string** %1040
  %1052 = load %nyx_string*, %nyx_string** %1040
  %1053 = call i64 @nyx_string_byte_length(%nyx_string* %1052)
  %1054 = sub i64 %1053, 1
  %1055 = call %nyx_string* @nyx_string_substring(%nyx_string* %1051, i64 1, i64 %1054)
  ret %nyx_string* %1055
else233:
  br label %merge234
merge234:
  %1056 = load %nyx_string*, %nyx_string** %1040
  %1057 = getelementptr [5 x i8], [5 x i8]* @.str67, i32 0, i32 0
  %1058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1057, i64 4)
  %1059 = call i1 @nyx_string_equals(%nyx_string* %1056, %nyx_string* %1058)
  br i1 %1059, label %then235, label %else236
then235:
  %1060 = getelementptr [5 x i8], [5 x i8]* @.str68, i32 0, i32 0
  %1061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1060, i64 4)
  ret %nyx_string* %1061
else236:
  br label %merge237
merge237:
  %1062 = load %nyx_string*, %nyx_string** %1040
  %1063 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %1064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1063, i64 5)
  %1065 = call i1 @nyx_string_equals(%nyx_string* %1062, %nyx_string* %1064)
  br i1 %1065, label %then238, label %else239
then238:
  %1066 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %1067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1066, i64 5)
  ret %nyx_string* %1067
else239:
  br label %merge240
merge240:
  %1068 = load %nyx_string*, %nyx_string** %1040
  ret %nyx_string* %1068
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1069 = load %nyx_string*, %nyx_string** %line.ptr
  %1070 = call %nyx_string* @nyx_string_trim(%nyx_string* %1069)
  %1071 = alloca %nyx_string*
  store %nyx_string* %1070, %nyx_string** %1071
  %1072 = sub i64 0, 1
  %1073 = alloca i64
  store i64 %1072, i64* %1073
  %1074 = alloca i64
  store i64 0, i64* %1074
  %1075 = call i8* @llvm.stacksave()
  br label %while_cond241
while_cond241:
  %1076 = load i64, i64* %1074
  %1077 = load %nyx_string*, %nyx_string** %1071
  %1078 = call i64 @nyx_string_byte_length(%nyx_string* %1077)
  %1079 = icmp slt i64 %1076, %1078
  br i1 %1079, label %while_body242, label %while_end243
while_body242:
  call void @llvm.stackrestore(i8* %1075)
  %1080 = load %nyx_string*, %nyx_string** %1071
  %1081 = load i64, i64* %1074
  %1082 = call i8 @nyx_string_char_at(%nyx_string* %1080, i64 %1081)
  %1083 = zext i8 %1082 to i64
  %1084 = trunc i64 %1083 to i8
  %1085 = alloca i8
  store i8 %1084, i8* %1085
  %1086 = load i8, i8* %1085
  %1087 = getelementptr [1 x i8], [1 x i8]* @.str71, i32 0, i32 0
  %1088 = load i8, i8* %1087
  %1089 = zext i8 %1088 to i64
  %1090 = zext i8 %1086 to i64
  %1091 = icmp eq i64 %1090, %1089
  br i1 %1091, label %then244, label %else245
then244:
  %1092 = load i64, i64* %1074
  store i64 %1092, i64* %1073
  %1093 = load %nyx_string*, %nyx_string** %1071
  %1094 = call i64 @nyx_string_byte_length(%nyx_string* %1093)
  store i64 %1094, i64* %1074
  br label %merge246
else245:
  %1095 = load i64, i64* %1074
  %1096 = add i64 %1095, 1
  store i64 %1096, i64* %1074
  br label %merge246
merge246:
  br label %while_cond241
while_end243:
  %1097 = load i64, i64* %1073
  %1098 = icmp slt i64 %1097, 0
  br i1 %1098, label %then247, label %else248
then247:
  %1099 = getelementptr [1 x i8], [1 x i8]* @.str72, i32 0, i32 0
  %1100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1099, i64 0)
  ret %nyx_string* %1100
else248:
  br label %merge249
merge249:
  %1101 = load %nyx_string*, %nyx_string** %1071
  %1102 = load i64, i64* %1073
  %1103 = call %nyx_string* @nyx_string_substring(%nyx_string* %1101, i64 0, i64 %1102)
  %1104 = call %nyx_string* @nyx_string_trim(%nyx_string* %1103)
  ret %nyx_string* %1104
}

define internal %nyx_string* @parse_lib_modules(
%nyx_string* %val.param, { i64, i8* }* %out.param) {
  %val.ptr = alloca %nyx_string*
  store %nyx_string* %val.param, %nyx_string** %val.ptr
  %out.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %out.param, { i64, i8* }** %out.ptr
  %1105 = load %nyx_string*, %nyx_string** %val.ptr
  %1106 = call %nyx_string* @nyx_string_trim(%nyx_string* %1105)
  %1107 = alloca %nyx_string*
  store %nyx_string* %1106, %nyx_string** %1107
  %1108 = alloca i1
  store i1 true, i1* %1108
  %1109 = load %nyx_string*, %nyx_string** %1107
  %1110 = getelementptr [2 x i8], [2 x i8]* @.str73, i32 0, i32 0
  %1111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1110, i64 1)
  %1112 = call i1 @nyx_string_starts_with(%nyx_string* %1109, %nyx_string* %1111)
  %1113 = xor i1 %1112, true
  br i1 %1113, label %sc_or_end251, label %sc_or_rhs250
sc_or_rhs250:
  %1114 = load %nyx_string*, %nyx_string** %1107
  %1115 = getelementptr [2 x i8], [2 x i8]* @.str74, i32 0, i32 0
  %1116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1115, i64 1)
  %1117 = call i1 @nyx_string_ends_with(%nyx_string* %1114, %nyx_string* %1116)
  %1118 = xor i1 %1117, true
  store i1 %1118, i1* %1108
  br label %sc_or_end251
sc_or_end251:
  %1119 = load i1, i1* %1108
  br i1 %1119, label %then252, label %else253
then252:
  %1120 = getelementptr [94 x i8], [94 x i8]* @.str75, i32 0, i32 0
  %1121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1120, i64 93)
  ret %nyx_string* %1121
else253:
  br label %merge254
merge254:
  %1122 = load %nyx_string*, %nyx_string** %1107
  %1123 = load %nyx_string*, %nyx_string** %1107
  %1124 = call i64 @nyx_string_byte_length(%nyx_string* %1123)
  %1125 = sub i64 %1124, 1
  %1126 = call %nyx_string* @nyx_string_substring(%nyx_string* %1122, i64 1, i64 %1125)
  %1127 = call %nyx_string* @nyx_string_trim(%nyx_string* %1126)
  %1128 = alloca %nyx_string*
  store %nyx_string* %1127, %nyx_string** %1128
  %1129 = load %nyx_string*, %nyx_string** %1128
  %1130 = getelementptr [1 x i8], [1 x i8]* @.str76, i32 0, i32 0
  %1131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1130, i64 0)
  %1132 = call i1 @nyx_string_equals(%nyx_string* %1129, %nyx_string* %1131)
  br i1 %1132, label %then255, label %else256
then255:
  %1133 = getelementptr [1 x i8], [1 x i8]* @.str77, i32 0, i32 0
  %1134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1133, i64 0)
  ret %nyx_string* %1134
else256:
  br label %merge257
merge257:
  %1135 = load %nyx_string*, %nyx_string** %1128
  %1136 = getelementptr [2 x i8], [2 x i8]* @.str78, i32 0, i32 0
  %1137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1136, i64 1)
  %1138 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1135, %nyx_string* %1137)
  %1139 = alloca { i64, i8* }*
  store { i64, i8* }* %1138, { i64, i8* }** %1139
  %1140 = alloca i64
  store i64 0, i64* %1140
  %1141 = getelementptr [2 x i8], [2 x i8]* @.str79, i32 0, i32 0
  %1142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1141, i64 1)
  %1143 = alloca %nyx_string*
  store %nyx_string* %1142, %nyx_string** %1143
  %1144 = getelementptr [60 x i8], [60 x i8]* @.str80, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1144, i64 59)
  %1146 = alloca %nyx_string*
  store %nyx_string* %1145, %nyx_string** %1146
  %1147 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1147, i64 1)
  %1149 = alloca %nyx_string*
  store %nyx_string* %1148, %nyx_string** %1149
  %1150 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %1151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1150, i64 3)
  %1152 = alloca %nyx_string*
  store %nyx_string* %1151, %nyx_string** %1152
  %1153 = getelementptr [78 x i8], [78 x i8]* @.str83, i32 0, i32 0
  %1154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1153, i64 77)
  %1155 = alloca %nyx_string*
  store %nyx_string* %1154, %nyx_string** %1155
  %1156 = getelementptr [5 x i8], [5 x i8]* @.str84, i32 0, i32 0
  %1157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1156, i64 4)
  %1158 = alloca %nyx_string*
  store %nyx_string* %1157, %nyx_string** %1158
  %1159 = getelementptr [60 x i8], [60 x i8]* @.str85, i32 0, i32 0
  %1160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1159, i64 59)
  %1161 = alloca %nyx_string*
  store %nyx_string* %1160, %nyx_string** %1161
  %1162 = call i8* @llvm.stacksave()
  br label %while_cond258
while_cond258:
  %1163 = load i64, i64* %1140
  %1164 = load { i64, i8* }*, { i64, i8* }** %1139
  %1165 = call i64 @nyx_array_length({ i64, i8* }* %1164)
  %1166 = icmp slt i64 %1163, %1165
  br i1 %1166, label %while_body259, label %while_end260
while_body259:
  call void @llvm.stackrestore(i8* %1162)
  %1167 = load { i64, i8* }*, { i64, i8* }** %1139
  %1168 = load i64, i64* %1140
  %1169 = call i64 @nyx_array_get_checked({ i64, i8* }* %1167, i64 %1168, i64 2)
  %1170 = inttoptr i64 %1169 to %nyx_string*
  %1171 = alloca %nyx_string*
  store %nyx_string* %1170, %nyx_string** %1171
  %1172 = load %nyx_string*, %nyx_string** %1171
  %1173 = call %nyx_string* @nyx_string_trim(%nyx_string* %1172)
  %1174 = alloca %nyx_string*
  store %nyx_string* %1173, %nyx_string** %1174
  %1175 = alloca i1
  store i1 false, i1* %1175
  %1176 = alloca i1
  store i1 false, i1* %1176
  %1177 = load %nyx_string*, %nyx_string** %1174
  %1178 = load %nyx_string*, %nyx_string** %1143
  %1179 = call i1 @nyx_string_starts_with(%nyx_string* %1177, %nyx_string* %1178)
  br i1 %1179, label %sc_and_rhs261, label %sc_and_end262
sc_and_rhs261:
  %1180 = load %nyx_string*, %nyx_string** %1174
  %1181 = load %nyx_string*, %nyx_string** %1143
  %1182 = call i1 @nyx_string_ends_with(%nyx_string* %1180, %nyx_string* %1181)
  store i1 %1182, i1* %1176
  br label %sc_and_end262
sc_and_end262:
  %1183 = load i1, i1* %1176
  br i1 %1183, label %sc_and_rhs263, label %sc_and_end264
sc_and_rhs263:
  %1184 = load %nyx_string*, %nyx_string** %1174
  %1185 = call i64 @nyx_string_byte_length(%nyx_string* %1184)
  %1186 = icmp sge i64 %1185, 2
  store i1 %1186, i1* %1175
  br label %sc_and_end264
sc_and_end264:
  %1187 = load i1, i1* %1175
  br i1 %1187, label %then265, label %else266
then265:
  %1188 = load %nyx_string*, %nyx_string** %1174
  %1189 = load %nyx_string*, %nyx_string** %1174
  %1190 = call i64 @nyx_string_byte_length(%nyx_string* %1189)
  %1191 = sub i64 %1190, 1
  %1192 = call %nyx_string* @nyx_string_substring(%nyx_string* %1188, i64 1, i64 %1191)
  store %nyx_string* %1192, %nyx_string** %1174
  br label %merge267
else266:
  %1193 = load %nyx_string*, %nyx_string** %1146
  %1194 = load %nyx_string*, %nyx_string** %1174
  %1195 = call %nyx_string* @nyx_string_concat(%nyx_string* %1193, %nyx_string* %1194)
  %1196 = load %nyx_string*, %nyx_string** %1149
  %1197 = call %nyx_string* @nyx_string_concat(%nyx_string* %1195, %nyx_string* %1196)
  ret %nyx_string* %1197
merge267:
  %1198 = load %nyx_string*, %nyx_string** %1174
  %1199 = load %nyx_string*, %nyx_string** %1152
  %1200 = call i1 @nyx_string_ends_with(%nyx_string* %1198, %nyx_string* %1199)
  br i1 %1200, label %then268, label %else269
then268:
  %1201 = load %nyx_string*, %nyx_string** %1155
  %1202 = load %nyx_string*, %nyx_string** %1174
  %1203 = call %nyx_string* @nyx_string_concat(%nyx_string* %1201, %nyx_string* %1202)
  %1204 = load %nyx_string*, %nyx_string** %1149
  %1205 = call %nyx_string* @nyx_string_concat(%nyx_string* %1203, %nyx_string* %1204)
  ret %nyx_string* %1205
else269:
  br label %merge270
merge270:
  %1206 = load %nyx_string*, %nyx_string** %1174
  %1207 = load %nyx_string*, %nyx_string** %1158
  %1208 = call i1 @nyx_string_starts_with(%nyx_string* %1206, %nyx_string* %1207)
  br i1 %1208, label %then271, label %else272
then271:
  %1209 = load %nyx_string*, %nyx_string** %1161
  %1210 = load %nyx_string*, %nyx_string** %1174
  %1211 = call %nyx_string* @nyx_string_concat(%nyx_string* %1209, %nyx_string* %1210)
  %1212 = load %nyx_string*, %nyx_string** %1149
  %1213 = call %nyx_string* @nyx_string_concat(%nyx_string* %1211, %nyx_string* %1212)
  ret %nyx_string* %1213
else272:
  br label %merge273
merge273:
  %1214 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %1215 = load %nyx_string*, %nyx_string** %1174
  %1216 = ptrtoint %nyx_string* %1215 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1214, i64 %1216, i64 2)
  %1217 = load i64, i64* %1140
  %1218 = add i64 %1217, 1
  store i64 %1218, i64* %1140
  br label %while_cond258
while_end260:
  %1219 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1219, i64 0)
  ret %nyx_string* %1220
}

define internal %ProjectConfig @parse_toml(
%nyx_string* %content.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %1221 = call { i64, i8* }* @nyx_array_new_ptr()
  %1222 = alloca { i64, i8* }*
  store { i64, i8* }* %1221, { i64, i8* }** %1222
  %1223 = call { i64, i8* }* @nyx_array_new_ptr()
  %1224 = alloca { i64, i8* }*
  store { i64, i8* }* %1223, { i64, i8* }** %1224
  %1225 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %1226 = ptrtoint %ProjectConfig* %1225 to i64
  %1227 = call i8* @GC_malloc(i64 %1226)
  %1228 = bitcast i8* %1227 to %ProjectConfig*
  %1229 = getelementptr [1 x i8], [1 x i8]* @.str87, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1229, i64 0)
  %1231 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 0
  store %nyx_string* %1230, %nyx_string** %1231
  %1232 = getelementptr [6 x i8], [6 x i8]* @.str88, i32 0, i32 0
  %1233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1232, i64 5)
  %1234 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 1
  store %nyx_string* %1233, %nyx_string** %1234
  %1235 = getelementptr [12 x i8], [12 x i8]* @.str89, i32 0, i32 0
  %1236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1235, i64 11)
  %1237 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 2
  store %nyx_string* %1236, %nyx_string** %1237
  %1238 = getelementptr [12 x i8], [12 x i8]* @.str90, i32 0, i32 0
  %1239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1238, i64 11)
  %1240 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 3
  store %nyx_string* %1239, %nyx_string** %1240
  %1241 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1241, i64 0)
  %1243 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 4
  store %nyx_string* %1242, %nyx_string** %1243
  %1244 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 5
  store i1 0, i1* %1244
  %1245 = getelementptr [1 x i8], [1 x i8]* @.str92, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1245, i64 0)
  %1247 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 6
  store %nyx_string* %1246, %nyx_string** %1247
  %1248 = load { i64, i8* }*, { i64, i8* }** %1222
  %1249 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 7
  store { i64, i8* }* %1248, { i64, i8* }** %1249
  %1250 = load { i64, i8* }*, { i64, i8* }** %1224
  %1251 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 8
  store { i64, i8* }* %1250, { i64, i8* }** %1251
  %1252 = getelementptr [1 x i8], [1 x i8]* @.str93, i32 0, i32 0
  %1253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1252, i64 0)
  %1254 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 9
  store %nyx_string* %1253, %nyx_string** %1254
  %1255 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %1256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1255, i64 0)
  %1257 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 10
  store %nyx_string* %1256, %nyx_string** %1257
  %1258 = call { i64, i8* }* @nyx_array_new_ptr()
  %1259 = getelementptr %ProjectConfig, %ProjectConfig* %1228, i32 0, i32 11
  store { i64, i8* }* %1258, { i64, i8* }** %1259
  %1260 = load %ProjectConfig, %ProjectConfig* %1228
  %1261 = alloca %ProjectConfig
  store %ProjectConfig %1260, %ProjectConfig* %1261
  %1262 = getelementptr [1 x i8], [1 x i8]* @.str95, i32 0, i32 0
  %1263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1262, i64 0)
  %1264 = alloca %nyx_string*
  store %nyx_string* %1263, %nyx_string** %1264
  %1265 = getelementptr [1 x i8], [1 x i8]* @.str96, i32 0, i32 0
  %1266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1265, i64 0)
  %1267 = alloca %nyx_string*
  store %nyx_string* %1266, %nyx_string** %1267
  %1268 = getelementptr [1 x i8], [1 x i8]* @.str97, i32 0, i32 0
  %1269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1268, i64 0)
  %1270 = alloca %nyx_string*
  store %nyx_string* %1269, %nyx_string** %1270
  %1271 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1271, i64 0)
  %1273 = alloca %nyx_string*
  store %nyx_string* %1272, %nyx_string** %1273
  %1274 = load %nyx_string*, %nyx_string** %content.ptr
  %1275 = getelementptr [2 x i8], [2 x i8]* @.str99, i32 0, i32 0
  %1276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1275, i64 1)
  %1277 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1274, %nyx_string* %1276)
  %1278 = alloca { i64, i8* }*
  store { i64, i8* }* %1277, { i64, i8* }** %1278
  %1279 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1279, i64 0)
  %1281 = alloca %nyx_string*
  store %nyx_string* %1280, %nyx_string** %1281
  %1282 = alloca i64
  store i64 0, i64* %1282
  %1283 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1283, i64 0)
  %1285 = alloca %nyx_string*
  store %nyx_string* %1284, %nyx_string** %1285
  %1286 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %1287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1286, i64 1)
  %1288 = alloca %nyx_string*
  store %nyx_string* %1287, %nyx_string** %1288
  %1289 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1289, i64 1)
  %1291 = alloca %nyx_string*
  store %nyx_string* %1290, %nyx_string** %1291
  %1292 = getelementptr [2 x i8], [2 x i8]* @.str104, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1292, i64 1)
  %1294 = alloca %nyx_string*
  store %nyx_string* %1293, %nyx_string** %1294
  %1295 = getelementptr [8 x i8], [8 x i8]* @.str105, i32 0, i32 0
  %1296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1295, i64 7)
  %1297 = alloca %nyx_string*
  store %nyx_string* %1296, %nyx_string** %1297
  %1298 = getelementptr [5 x i8], [5 x i8]* @.str106, i32 0, i32 0
  %1299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1298, i64 4)
  %1300 = alloca %nyx_string*
  store %nyx_string* %1299, %nyx_string** %1300
  %1301 = getelementptr [8 x i8], [8 x i8]* @.str107, i32 0, i32 0
  %1302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1301, i64 7)
  %1303 = alloca %nyx_string*
  store %nyx_string* %1302, %nyx_string** %1303
  %1304 = getelementptr [5 x i8], [5 x i8]* @.str108, i32 0, i32 0
  %1305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1304, i64 4)
  %1306 = alloca %nyx_string*
  store %nyx_string* %1305, %nyx_string** %1306
  %1307 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %1308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1307, i64 11)
  %1309 = alloca %nyx_string*
  store %nyx_string* %1308, %nyx_string** %1309
  %1310 = getelementptr [6 x i8], [6 x i8]* @.str110, i32 0, i32 0
  %1311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1310, i64 5)
  %1312 = alloca %nyx_string*
  store %nyx_string* %1311, %nyx_string** %1312
  %1313 = getelementptr [5 x i8], [5 x i8]* @.str111, i32 0, i32 0
  %1314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1313, i64 4)
  %1315 = alloca %nyx_string*
  store %nyx_string* %1314, %nyx_string** %1315
  %1316 = getelementptr [7 x i8], [7 x i8]* @.str112, i32 0, i32 0
  %1317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1316, i64 6)
  %1318 = alloca %nyx_string*
  store %nyx_string* %1317, %nyx_string** %1318
  %1319 = getelementptr [6 x i8], [6 x i8]* @.str113, i32 0, i32 0
  %1320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1319, i64 5)
  %1321 = alloca %nyx_string*
  store %nyx_string* %1320, %nyx_string** %1321
  %1322 = getelementptr [44 x i8], [44 x i8]* @.str114, i32 0, i32 0
  %1323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1322, i64 43)
  %1324 = alloca %nyx_string*
  store %nyx_string* %1323, %nyx_string** %1324
  %1325 = getelementptr [34 x i8], [34 x i8]* @.str115, i32 0, i32 0
  %1326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1325, i64 33)
  %1327 = alloca %nyx_string*
  store %nyx_string* %1326, %nyx_string** %1327
  %1328 = getelementptr [4 x i8], [4 x i8]* @.str116, i32 0, i32 0
  %1329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1328, i64 3)
  %1330 = alloca %nyx_string*
  store %nyx_string* %1329, %nyx_string** %1330
  %1331 = getelementptr [8 x i8], [8 x i8]* @.str117, i32 0, i32 0
  %1332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1331, i64 7)
  %1333 = alloca %nyx_string*
  store %nyx_string* %1332, %nyx_string** %1333
  %1334 = getelementptr [42 x i8], [42 x i8]* @.str118, i32 0, i32 0
  %1335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1334, i64 41)
  %1336 = alloca %nyx_string*
  store %nyx_string* %1335, %nyx_string** %1336
  %1337 = getelementptr [27 x i8], [27 x i8]* @.str119, i32 0, i32 0
  %1338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1337, i64 26)
  %1339 = alloca %nyx_string*
  store %nyx_string* %1338, %nyx_string** %1339
  %1340 = getelementptr [13 x i8], [13 x i8]* @.str120, i32 0, i32 0
  %1341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1340, i64 12)
  %1342 = alloca %nyx_string*
  store %nyx_string* %1341, %nyx_string** %1342
  %1343 = call i8* @llvm.stacksave()
  br label %while_cond274
while_cond274:
  %1344 = load i64, i64* %1282
  %1345 = load { i64, i8* }*, { i64, i8* }** %1278
  %1346 = call i64 @nyx_array_length({ i64, i8* }* %1345)
  %1347 = icmp slt i64 %1344, %1346
  br i1 %1347, label %while_body275, label %while_end276
while_body275:
  call void @llvm.stackrestore(i8* %1343)
  %1348 = load { i64, i8* }*, { i64, i8* }** %1278
  %1349 = load i64, i64* %1282
  %1350 = call i64 @nyx_array_get_checked({ i64, i8* }* %1348, i64 %1349, i64 2)
  %1351 = inttoptr i64 %1350 to %nyx_string*
  %1352 = alloca %nyx_string*
  store %nyx_string* %1351, %nyx_string** %1352
  %1353 = load %nyx_string*, %nyx_string** %1352
  %1354 = call %nyx_string* @nyx_string_trim(%nyx_string* %1353)
  %1355 = alloca %nyx_string*
  store %nyx_string* %1354, %nyx_string** %1355
  %1356 = alloca i1
  store i1 true, i1* %1356
  %1357 = load %nyx_string*, %nyx_string** %1355
  %1358 = load %nyx_string*, %nyx_string** %1285
  %1359 = call i1 @nyx_string_equals(%nyx_string* %1357, %nyx_string* %1358)
  br i1 %1359, label %sc_or_end278, label %sc_or_rhs277
sc_or_rhs277:
  %1360 = load %nyx_string*, %nyx_string** %1355
  %1361 = load %nyx_string*, %nyx_string** %1288
  %1362 = call i1 @nyx_string_starts_with(%nyx_string* %1360, %nyx_string* %1361)
  store i1 %1362, i1* %1356
  br label %sc_or_end278
sc_or_end278:
  %1363 = load i1, i1* %1356
  br i1 %1363, label %then279, label %else280
then279:
  %1364 = load i64, i64* %1282
  %1365 = add i64 %1364, 1
  store i64 %1365, i64* %1282
  br label %merge281
else280:
  %1366 = alloca i1
  store i1 false, i1* %1366
  %1367 = load %nyx_string*, %nyx_string** %1355
  %1368 = load %nyx_string*, %nyx_string** %1291
  %1369 = call i1 @nyx_string_starts_with(%nyx_string* %1367, %nyx_string* %1368)
  br i1 %1369, label %sc_and_rhs282, label %sc_and_end283
sc_and_rhs282:
  %1370 = load %nyx_string*, %nyx_string** %1355
  %1371 = load %nyx_string*, %nyx_string** %1294
  %1372 = call i1 @nyx_string_ends_with(%nyx_string* %1370, %nyx_string* %1371)
  store i1 %1372, i1* %1366
  br label %sc_and_end283
sc_and_end283:
  %1373 = load i1, i1* %1366
  br i1 %1373, label %then284, label %else285
then284:
  %1374 = load %nyx_string*, %nyx_string** %1355
  %1375 = load %nyx_string*, %nyx_string** %1355
  %1376 = call i64 @nyx_string_byte_length(%nyx_string* %1375)
  %1377 = sub i64 %1376, 1
  %1378 = call %nyx_string* @nyx_string_substring(%nyx_string* %1374, i64 1, i64 %1377)
  %1379 = call %nyx_string* @nyx_string_trim(%nyx_string* %1378)
  store %nyx_string* %1379, %nyx_string** %1281
  %1380 = load i64, i64* %1282
  %1381 = add i64 %1380, 1
  store i64 %1381, i64* %1282
  br label %merge286
else285:
  %1382 = load %nyx_string*, %nyx_string** %1355
  %1383 = call %nyx_string* @parse_toml_key(%nyx_string* %1382)
  %1384 = alloca %nyx_string*
  store %nyx_string* %1383, %nyx_string** %1384
  %1385 = load %nyx_string*, %nyx_string** %1355
  %1386 = call %nyx_string* @parse_toml_value(%nyx_string* %1385)
  %1387 = alloca %nyx_string*
  store %nyx_string* %1386, %nyx_string** %1387
  %1388 = load %nyx_string*, %nyx_string** %1281
  %1389 = load %nyx_string*, %nyx_string** %1297
  %1390 = call i1 @nyx_string_equals(%nyx_string* %1388, %nyx_string* %1389)
  br i1 %1390, label %then287, label %else288
then287:
  %1391 = load %nyx_string*, %nyx_string** %1384
  %1392 = load %nyx_string*, %nyx_string** %1300
  %1393 = call i1 @nyx_string_equals(%nyx_string* %1391, %nyx_string* %1392)
  br i1 %1393, label %then290, label %else291
then290:
  %1394 = load %nyx_string*, %nyx_string** %1387
  %1395 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 0
  store %nyx_string* %1394, %nyx_string** %1395
  br label %merge292
else291:
  br label %merge292
merge292:
  %1396 = load %nyx_string*, %nyx_string** %1384
  %1397 = load %nyx_string*, %nyx_string** %1303
  %1398 = call i1 @nyx_string_equals(%nyx_string* %1396, %nyx_string* %1397)
  br i1 %1398, label %then293, label %else294
then293:
  %1399 = load %nyx_string*, %nyx_string** %1387
  %1400 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 1
  store %nyx_string* %1399, %nyx_string** %1400
  br label %merge295
else294:
  br label %merge295
merge295:
  %1401 = load %nyx_string*, %nyx_string** %1384
  %1402 = load %nyx_string*, %nyx_string** %1306
  %1403 = call i1 @nyx_string_equals(%nyx_string* %1401, %nyx_string* %1402)
  br i1 %1403, label %then296, label %else297
then296:
  %1404 = load %nyx_string*, %nyx_string** %1387
  store %nyx_string* %1404, %nyx_string** %1264
  br label %merge298
else297:
  br label %merge298
merge298:
  %1405 = load %nyx_string*, %nyx_string** %1384
  %1406 = load %nyx_string*, %nyx_string** %1309
  %1407 = call i1 @nyx_string_equals(%nyx_string* %1405, %nyx_string* %1406)
  br i1 %1407, label %then299, label %else300
then299:
  %1408 = load %nyx_string*, %nyx_string** %1387
  %1409 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 4
  store %nyx_string* %1408, %nyx_string** %1409
  br label %merge301
else300:
  br label %merge301
merge301:
  %1410 = alloca i1
  store i1 false, i1* %1410
  %1411 = load %nyx_string*, %nyx_string** %1384
  %1412 = load %nyx_string*, %nyx_string** %1312
  %1413 = call i1 @nyx_string_equals(%nyx_string* %1411, %nyx_string* %1412)
  br i1 %1413, label %sc_and_rhs302, label %sc_and_end303
sc_and_rhs302:
  %1414 = load %nyx_string*, %nyx_string** %1387
  %1415 = load %nyx_string*, %nyx_string** %1315
  %1416 = call i1 @nyx_string_equals(%nyx_string* %1414, %nyx_string* %1415)
  store i1 %1416, i1* %1410
  br label %sc_and_end303
sc_and_end303:
  %1417 = load i1, i1* %1410
  br i1 %1417, label %then304, label %else305
then304:
  %1418 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 5
  store i1 1, i1* %1418
  br label %merge306
else305:
  br label %merge306
merge306:
  %1419 = load %nyx_string*, %nyx_string** %1384
  %1420 = load %nyx_string*, %nyx_string** %1318
  %1421 = call i1 @nyx_string_equals(%nyx_string* %1419, %nyx_string* %1420)
  br i1 %1421, label %then307, label %else308
then307:
  %1422 = load %nyx_string*, %nyx_string** %1387
  store %nyx_string* %1422, %nyx_string** %1270
  br label %merge309
else308:
  br label %merge309
merge309:
  br label %merge289
else288:
  br label %merge289
merge289:
  %1423 = load %nyx_string*, %nyx_string** %1281
  %1424 = load %nyx_string*, %nyx_string** %1321
  %1425 = call i1 @nyx_string_equals(%nyx_string* %1423, %nyx_string* %1424)
  br i1 %1425, label %then310, label %else311
then310:
  %1426 = load %nyx_string*, %nyx_string** %1384
  %1427 = load %nyx_string*, %nyx_string** %1306
  %1428 = call i1 @nyx_string_equals(%nyx_string* %1426, %nyx_string* %1427)
  br i1 %1428, label %then313, label %else314
then313:
  %1429 = load %nyx_string*, %nyx_string** %1387
  store %nyx_string* %1429, %nyx_string** %1267
  br label %merge315
else314:
  %1430 = load %nyx_string*, %nyx_string** %1384
  %1431 = load %nyx_string*, %nyx_string** %1318
  %1432 = call i1 @nyx_string_equals(%nyx_string* %1430, %nyx_string* %1431)
  br i1 %1432, label %then316, label %else317
then316:
  %1433 = load %nyx_string*, %nyx_string** %1387
  store %nyx_string* %1433, %nyx_string** %1273
  br label %merge318
else317:
  %1434 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  %1435 = load %nyx_string*, %nyx_string** %1434
  %1436 = load %nyx_string*, %nyx_string** %1285
  %1437 = call i1 @nyx_string_equals(%nyx_string* %1435, %nyx_string* %1436)
  br i1 %1437, label %then319, label %else320
then319:
  %1438 = load %nyx_string*, %nyx_string** %1324
  %1439 = load %nyx_string*, %nyx_string** %1384
  %1440 = call %nyx_string* @nyx_string_concat(%nyx_string* %1438, %nyx_string* %1439)
  %1441 = load %nyx_string*, %nyx_string** %1327
  %1442 = call %nyx_string* @nyx_string_concat(%nyx_string* %1440, %nyx_string* %1441)
  %1443 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  store %nyx_string* %1442, %nyx_string** %1443
  br label %merge321
else320:
  br label %merge321
merge321:
  br label %merge318
merge318:
  br label %merge315
merge315:
  br label %merge312
else311:
  br label %merge312
merge312:
  %1444 = load %nyx_string*, %nyx_string** %1281
  %1445 = load %nyx_string*, %nyx_string** %1330
  %1446 = call i1 @nyx_string_equals(%nyx_string* %1444, %nyx_string* %1445)
  br i1 %1446, label %then322, label %else323
then322:
  %1447 = load %nyx_string*, %nyx_string** %1384
  %1448 = load %nyx_string*, %nyx_string** %1333
  %1449 = call i1 @nyx_string_equals(%nyx_string* %1447, %nyx_string* %1448)
  br i1 %1449, label %then325, label %else326
then325:
  %1450 = load %nyx_string*, %nyx_string** %1387
  %1451 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 11
  %1452 = load { i64, i8* }*, { i64, i8* }** %1451
  %1453 = call %nyx_string* @parse_lib_modules(%nyx_string* %1450, { i64, i8* }* %1452)
  %1454 = alloca %nyx_string*
  store %nyx_string* %1453, %nyx_string** %1454
  %1455 = alloca i1
  store i1 false, i1* %1455
  %1456 = load %nyx_string*, %nyx_string** %1454
  %1457 = load %nyx_string*, %nyx_string** %1285
  %1458 = call i1 @nyx_string_equals(%nyx_string* %1456, %nyx_string* %1457)
  %1459 = xor i1 %1458, true
  br i1 %1459, label %sc_and_rhs328, label %sc_and_end329
sc_and_rhs328:
  %1460 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  %1461 = load %nyx_string*, %nyx_string** %1460
  %1462 = load %nyx_string*, %nyx_string** %1285
  %1463 = call i1 @nyx_string_equals(%nyx_string* %1461, %nyx_string* %1462)
  store i1 %1463, i1* %1455
  br label %sc_and_end329
sc_and_end329:
  %1464 = load i1, i1* %1455
  br i1 %1464, label %then330, label %else331
then330:
  %1465 = load %nyx_string*, %nyx_string** %1454
  %1466 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  store %nyx_string* %1465, %nyx_string** %1466
  br label %merge332
else331:
  br label %merge332
merge332:
  br label %merge327
else326:
  %1467 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  %1468 = load %nyx_string*, %nyx_string** %1467
  %1469 = load %nyx_string*, %nyx_string** %1285
  %1470 = call i1 @nyx_string_equals(%nyx_string* %1468, %nyx_string* %1469)
  br i1 %1470, label %then333, label %else334
then333:
  %1471 = load %nyx_string*, %nyx_string** %1336
  %1472 = load %nyx_string*, %nyx_string** %1384
  %1473 = call %nyx_string* @nyx_string_concat(%nyx_string* %1471, %nyx_string* %1472)
  %1474 = load %nyx_string*, %nyx_string** %1339
  %1475 = call %nyx_string* @nyx_string_concat(%nyx_string* %1473, %nyx_string* %1474)
  %1476 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  store %nyx_string* %1475, %nyx_string** %1476
  br label %merge335
else334:
  br label %merge335
merge335:
  br label %merge327
merge327:
  br label %merge324
else323:
  br label %merge324
merge324:
  %1477 = load %nyx_string*, %nyx_string** %1281
  %1478 = load %nyx_string*, %nyx_string** %1342
  %1479 = call i1 @nyx_string_equals(%nyx_string* %1477, %nyx_string* %1478)
  br i1 %1479, label %then336, label %else337
then336:
  %1480 = alloca i1
  store i1 false, i1* %1480
  %1481 = load %nyx_string*, %nyx_string** %1384
  %1482 = load %nyx_string*, %nyx_string** %1285
  %1483 = call i1 @nyx_string_equals(%nyx_string* %1481, %nyx_string* %1482)
  %1484 = xor i1 %1483, true
  br i1 %1484, label %sc_and_rhs339, label %sc_and_end340
sc_and_rhs339:
  %1485 = load %nyx_string*, %nyx_string** %1387
  %1486 = load %nyx_string*, %nyx_string** %1285
  %1487 = call i1 @nyx_string_equals(%nyx_string* %1485, %nyx_string* %1486)
  %1488 = xor i1 %1487, true
  store i1 %1488, i1* %1480
  br label %sc_and_end340
sc_and_end340:
  %1489 = load i1, i1* %1480
  br i1 %1489, label %then341, label %else342
then341:
  %1490 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 7
  %1491 = load { i64, i8* }*, { i64, i8* }** %1490
  %1492 = load %nyx_string*, %nyx_string** %1384
  %1493 = ptrtoint %nyx_string* %1492 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1491, i64 %1493, i64 2)
  %1494 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 8
  %1495 = load { i64, i8* }*, { i64, i8* }** %1494
  %1496 = load %nyx_string*, %nyx_string** %1387
  %1497 = ptrtoint %nyx_string* %1496 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1495, i64 %1497, i64 2)
  br label %merge343
else342:
  br label %merge343
merge343:
  br label %merge338
else337:
  br label %merge338
merge338:
  %1498 = load i64, i64* %1282
  %1499 = add i64 %1498, 1
  store i64 %1499, i64* %1282
  br label %merge286
merge286:
  br label %merge281
merge281:
  br label %while_cond274
while_end276:
  %1500 = alloca i1
  store i1 false, i1* %1500
  %1501 = alloca i1
  store i1 false, i1* %1501
  %1502 = load %nyx_string*, %nyx_string** %1264
  %1503 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %1504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1503, i64 0)
  %1505 = call i1 @nyx_string_equals(%nyx_string* %1502, %nyx_string* %1504)
  %1506 = xor i1 %1505, true
  br i1 %1506, label %sc_and_rhs344, label %sc_and_end345
sc_and_rhs344:
  %1507 = load %nyx_string*, %nyx_string** %1267
  %1508 = getelementptr [1 x i8], [1 x i8]* @.str122, i32 0, i32 0
  %1509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1508, i64 0)
  %1510 = call i1 @nyx_string_equals(%nyx_string* %1507, %nyx_string* %1509)
  %1511 = xor i1 %1510, true
  store i1 %1511, i1* %1501
  br label %sc_and_end345
sc_and_end345:
  %1512 = load i1, i1* %1501
  br i1 %1512, label %sc_and_rhs346, label %sc_and_end347
sc_and_rhs346:
  %1513 = load %nyx_string*, %nyx_string** %1264
  %1514 = load %nyx_string*, %nyx_string** %1267
  %1515 = call i1 @nyx_string_equals(%nyx_string* %1513, %nyx_string* %1514)
  %1516 = xor i1 %1515, true
  store i1 %1516, i1* %1500
  br label %sc_and_end347
sc_and_end347:
  %1517 = load i1, i1* %1500
  br i1 %1517, label %then348, label %else349
then348:
  %1518 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  %1519 = load %nyx_string*, %nyx_string** %1518
  %1520 = getelementptr [1 x i8], [1 x i8]* @.str123, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1520, i64 0)
  %1522 = call i1 @nyx_string_equals(%nyx_string* %1519, %nyx_string* %1521)
  br i1 %1522, label %then351, label %else352
then351:
  %1523 = getelementptr [74 x i8], [74 x i8]* @.str124, i32 0, i32 0
  %1524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1523, i64 73)
  %1525 = load %nyx_string*, %nyx_string** %1264
  %1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %1524, %nyx_string* %1525)
  %1527 = getelementptr [21 x i8], [21 x i8]* @.str125, i32 0, i32 0
  %1528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1527, i64 20)
  %1529 = call %nyx_string* @nyx_string_concat(%nyx_string* %1526, %nyx_string* %1528)
  %1530 = load %nyx_string*, %nyx_string** %1267
  %1531 = call %nyx_string* @nyx_string_concat(%nyx_string* %1529, %nyx_string* %1530)
  %1532 = getelementptr [18 x i8], [18 x i8]* @.str126, i32 0, i32 0
  %1533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1532, i64 17)
  %1534 = call %nyx_string* @nyx_string_concat(%nyx_string* %1531, %nyx_string* %1533)
  %1535 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  store %nyx_string* %1534, %nyx_string** %1535
  br label %merge353
else352:
  br label %merge353
merge353:
  br label %merge350
else349:
  br label %merge350
merge350:
  %1536 = alloca i1
  store i1 false, i1* %1536
  %1537 = alloca i1
  store i1 false, i1* %1537
  %1538 = load %nyx_string*, %nyx_string** %1270
  %1539 = getelementptr [1 x i8], [1 x i8]* @.str127, i32 0, i32 0
  %1540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1539, i64 0)
  %1541 = call i1 @nyx_string_equals(%nyx_string* %1538, %nyx_string* %1540)
  %1542 = xor i1 %1541, true
  br i1 %1542, label %sc_and_rhs354, label %sc_and_end355
sc_and_rhs354:
  %1543 = load %nyx_string*, %nyx_string** %1273
  %1544 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %1545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1544, i64 0)
  %1546 = call i1 @nyx_string_equals(%nyx_string* %1543, %nyx_string* %1545)
  %1547 = xor i1 %1546, true
  store i1 %1547, i1* %1537
  br label %sc_and_end355
sc_and_end355:
  %1548 = load i1, i1* %1537
  br i1 %1548, label %sc_and_rhs356, label %sc_and_end357
sc_and_rhs356:
  %1549 = load %nyx_string*, %nyx_string** %1270
  %1550 = load %nyx_string*, %nyx_string** %1273
  %1551 = call i1 @nyx_string_equals(%nyx_string* %1549, %nyx_string* %1550)
  %1552 = xor i1 %1551, true
  store i1 %1552, i1* %1536
  br label %sc_and_end357
sc_and_end357:
  %1553 = load i1, i1* %1536
  br i1 %1553, label %then358, label %else359
then358:
  %1554 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  %1555 = load %nyx_string*, %nyx_string** %1554
  %1556 = getelementptr [1 x i8], [1 x i8]* @.str129, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1556, i64 0)
  %1558 = call i1 @nyx_string_equals(%nyx_string* %1555, %nyx_string* %1557)
  br i1 %1558, label %then361, label %else362
then361:
  %1559 = getelementptr [78 x i8], [78 x i8]* @.str130, i32 0, i32 0
  %1560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1559, i64 77)
  %1561 = load %nyx_string*, %nyx_string** %1270
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1560, %nyx_string* %1561)
  %1563 = getelementptr [23 x i8], [23 x i8]* @.str131, i32 0, i32 0
  %1564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1563, i64 22)
  %1565 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1564)
  %1566 = load %nyx_string*, %nyx_string** %1273
  %1567 = call %nyx_string* @nyx_string_concat(%nyx_string* %1565, %nyx_string* %1566)
  %1568 = getelementptr [18 x i8], [18 x i8]* @.str132, i32 0, i32 0
  %1569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1568, i64 17)
  %1570 = call %nyx_string* @nyx_string_concat(%nyx_string* %1567, %nyx_string* %1569)
  %1571 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 9
  store %nyx_string* %1570, %nyx_string** %1571
  br label %merge363
else362:
  br label %merge363
merge363:
  br label %merge360
else359:
  br label %merge360
merge360:
  %1572 = load %nyx_string*, %nyx_string** %1267
  %1573 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1573, i64 0)
  %1575 = call i1 @nyx_string_equals(%nyx_string* %1572, %nyx_string* %1574)
  %1576 = xor i1 %1575, true
  br i1 %1576, label %then364, label %else365
then364:
  %1577 = load %nyx_string*, %nyx_string** %1267
  %1578 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 2
  store %nyx_string* %1577, %nyx_string** %1578
  br label %merge366
else365:
  %1579 = load %nyx_string*, %nyx_string** %1264
  %1580 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %1581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1580, i64 0)
  %1582 = call i1 @nyx_string_equals(%nyx_string* %1579, %nyx_string* %1581)
  %1583 = xor i1 %1582, true
  br i1 %1583, label %then367, label %else368
then367:
  %1584 = load %nyx_string*, %nyx_string** %1264
  %1585 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 2
  store %nyx_string* %1584, %nyx_string** %1585
  br label %merge369
else368:
  br label %merge369
merge369:
  br label %merge366
merge366:
  %1586 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 2
  %1587 = load %nyx_string*, %nyx_string** %1586
  %1588 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 3
  store %nyx_string* %1587, %nyx_string** %1588
  %1589 = load %nyx_string*, %nyx_string** %1273
  %1590 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1590, i64 0)
  %1592 = call i1 @nyx_string_equals(%nyx_string* %1589, %nyx_string* %1591)
  %1593 = xor i1 %1592, true
  br i1 %1593, label %then370, label %else371
then370:
  %1594 = load %nyx_string*, %nyx_string** %1273
  %1595 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 6
  store %nyx_string* %1594, %nyx_string** %1595
  br label %merge372
else371:
  %1596 = load %nyx_string*, %nyx_string** %1270
  %1597 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %1598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1597, i64 0)
  %1599 = call i1 @nyx_string_equals(%nyx_string* %1596, %nyx_string* %1598)
  %1600 = xor i1 %1599, true
  br i1 %1600, label %then373, label %else374
then373:
  %1601 = load %nyx_string*, %nyx_string** %1270
  %1602 = getelementptr %ProjectConfig, %ProjectConfig* %1261, i32 0, i32 6
  store %nyx_string* %1601, %nyx_string** %1602
  br label %merge375
else374:
  br label %merge375
merge375:
  br label %merge372
merge372:
  %1603 = load %ProjectConfig, %ProjectConfig* %1261
  ret %ProjectConfig %1603
}

define internal i64 @write_lockfile(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1604 = getelementptr [57 x i8], [57 x i8]* @.str137, i32 0, i32 0
  %1605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1604, i64 56)
  %1606 = getelementptr [11 x i8], [11 x i8]* @.str138, i32 0, i32 0
  %1607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1606, i64 10)
  %1608 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1607)
  %1609 = getelementptr [9 x i8], [9 x i8]* @.str139, i32 0, i32 0
  %1610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1609, i64 8)
  %1611 = call %nyx_string* @nyx_string_concat(%nyx_string* %1608, %nyx_string* %1610)
  %1612 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %1613 = load %nyx_string*, %nyx_string** %1612
  %1614 = call %nyx_string* @nyx_string_concat(%nyx_string* %1611, %nyx_string* %1613)
  %1615 = getelementptr [3 x i8], [3 x i8]* @.str140, i32 0, i32 0
  %1616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1615, i64 2)
  %1617 = call %nyx_string* @nyx_string_concat(%nyx_string* %1614, %nyx_string* %1616)
  %1618 = getelementptr [12 x i8], [12 x i8]* @.str141, i32 0, i32 0
  %1619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1618, i64 11)
  %1620 = call %nyx_string* @nyx_string_concat(%nyx_string* %1617, %nyx_string* %1619)
  %1621 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %1622 = load %nyx_string*, %nyx_string** %1621
  %1623 = call %nyx_string* @nyx_string_concat(%nyx_string* %1620, %nyx_string* %1622)
  %1624 = getelementptr [3 x i8], [3 x i8]* @.str142, i32 0, i32 0
  %1625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1624, i64 2)
  %1626 = call %nyx_string* @nyx_string_concat(%nyx_string* %1623, %nyx_string* %1625)
  %1627 = getelementptr [9 x i8], [9 x i8]* @.str143, i32 0, i32 0
  %1628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1627, i64 8)
  %1629 = call %nyx_string* @nyx_string_concat(%nyx_string* %1626, %nyx_string* %1628)
  %1630 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %1631 = load %nyx_string*, %nyx_string** %1630
  %1632 = call %nyx_string* @nyx_string_concat(%nyx_string* %1629, %nyx_string* %1631)
  %1633 = getelementptr [3 x i8], [3 x i8]* @.str144, i32 0, i32 0
  %1634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1633, i64 2)
  %1635 = call %nyx_string* @nyx_string_concat(%nyx_string* %1632, %nyx_string* %1634)
  %1636 = alloca %nyx_string*
  store %nyx_string* %1635, %nyx_string** %1636
  %1637 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1638 = load { i64, i8* }*, { i64, i8* }** %1637
  %1639 = call i64 @nyx_array_length({ i64, i8* }* %1638)
  %1640 = icmp sgt i64 %1639, 0
  br i1 %1640, label %then376, label %else377
then376:
  %1641 = load %nyx_string*, %nyx_string** %1636
  %1642 = getelementptr [17 x i8], [17 x i8]* @.str145, i32 0, i32 0
  %1643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1642, i64 16)
  %1644 = call %nyx_string* @nyx_string_concat(%nyx_string* %1641, %nyx_string* %1643)
  store %nyx_string* %1644, %nyx_string** %1636
  %1645 = alloca i64
  store i64 0, i64* %1645
  %1646 = getelementptr [5 x i8], [5 x i8]* @.str146, i32 0, i32 0
  %1647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1646, i64 4)
  %1648 = alloca %nyx_string*
  store %nyx_string* %1647, %nyx_string** %1648
  %1649 = getelementptr [3 x i8], [3 x i8]* @.str147, i32 0, i32 0
  %1650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1649, i64 2)
  %1651 = alloca %nyx_string*
  store %nyx_string* %1650, %nyx_string** %1651
  %1652 = call i8* @llvm.stacksave()
  br label %while_cond379
while_cond379:
  %1653 = load i64, i64* %1645
  %1654 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1655 = load { i64, i8* }*, { i64, i8* }** %1654
  %1656 = call i64 @nyx_array_length({ i64, i8* }* %1655)
  %1657 = icmp slt i64 %1653, %1656
  br i1 %1657, label %while_body380, label %while_end381
while_body380:
  call void @llvm.stackrestore(i8* %1652)
  %1658 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1659 = load { i64, i8* }*, { i64, i8* }** %1658
  %1660 = load i64, i64* %1645
  %1661 = call i64 @nyx_array_get({ i64, i8* }* %1659, i64 %1660)
  %1662 = inttoptr i64 %1661 to %nyx_string*
  %1663 = alloca %nyx_string*
  store %nyx_string* %1662, %nyx_string** %1663
  %1664 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %1665 = load { i64, i8* }*, { i64, i8* }** %1664
  %1666 = load i64, i64* %1645
  %1667 = call i64 @nyx_array_get({ i64, i8* }* %1665, i64 %1666)
  %1668 = inttoptr i64 %1667 to %nyx_string*
  %1669 = alloca %nyx_string*
  store %nyx_string* %1668, %nyx_string** %1669
  %1670 = load %nyx_string*, %nyx_string** %1636
  %1671 = load %nyx_string*, %nyx_string** %1663
  %1672 = call %nyx_string* @nyx_string_concat(%nyx_string* %1670, %nyx_string* %1671)
  %1673 = load %nyx_string*, %nyx_string** %1648
  %1674 = call %nyx_string* @nyx_string_concat(%nyx_string* %1672, %nyx_string* %1673)
  %1675 = load %nyx_string*, %nyx_string** %1669
  %1676 = call %nyx_string* @nyx_string_concat(%nyx_string* %1674, %nyx_string* %1675)
  %1677 = load %nyx_string*, %nyx_string** %1651
  %1678 = call %nyx_string* @nyx_string_concat(%nyx_string* %1676, %nyx_string* %1677)
  store %nyx_string* %1678, %nyx_string** %1636
  %1679 = load i64, i64* %1645
  %1680 = add i64 %1679, 1
  store i64 %1680, i64* %1645
  br label %while_cond379
while_end381:
  br label %merge378
else377:
  br label %merge378
merge378:
  %1681 = getelementptr [9 x i8], [9 x i8]* @.str148, i32 0, i32 0
  %1682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1681, i64 8)
  %1683 = call i8* @nyx_string_to_cstr(%nyx_string* %1682)
  %1684 = call i1 @nyx_file_exists(i8* %1683)
  br i1 %1684, label %then382, label %else383
then382:
  %1685 = getelementptr [9 x i8], [9 x i8]* @.str149, i32 0, i32 0
  %1686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1685, i64 8)
  %1687 = call i8* @nyx_string_to_cstr(%nyx_string* %1686)
  %1688 = call %nyx_string* @nyx_read_file(i8* %1687)
  %1689 = alloca %nyx_string*
  store %nyx_string* %1688, %nyx_string** %1689
  %1690 = load %nyx_string*, %nyx_string** %1689
  %1691 = load %nyx_string*, %nyx_string** %1636
  %1692 = call i1 @nyx_string_equals(%nyx_string* %1690, %nyx_string* %1691)
  br i1 %1692, label %then385, label %else386
then385:
  ret i64 0
else386:
  br label %merge387
merge387:
  br label %merge384
else383:
  br label %merge384
merge384:
  %1693 = getelementptr [9 x i8], [9 x i8]* @.str150, i32 0, i32 0
  %1694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1693, i64 8)
  %1695 = load %nyx_string*, %nyx_string** %1636
  %1696 = call i8* @nyx_string_to_cstr(%nyx_string* %1694)
  %1697 = call i1 @nyx_write_file_safe(i8* %1696, %nyx_string* %1695)
  ret i64 0
}

define internal i1 @run_add(
%nyx_string* %pkg_name.param, %nyx_string* %pkg_url.param, %ProjectConfig %config.param) {
  %pkg_name.ptr = alloca %nyx_string*
  store %nyx_string* %pkg_name.param, %nyx_string** %pkg_name.ptr
  %pkg_url.ptr = alloca %nyx_string*
  store %nyx_string* %pkg_url.param, %nyx_string** %pkg_url.ptr
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1698 = getelementptr [17 x i8], [17 x i8]* @.str151, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1698, i64 16)
  %1700 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1701 = call %nyx_string* @nyx_string_concat(%nyx_string* %1699, %nyx_string* %1700)
  %1702 = call i8* @nyx_string_to_cstr(%nyx_string* %1701)
  call void @nyx_print_string(i8* %1702)
  %1703 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1704 = alloca %nyx_string*
  store %nyx_string* %1703, %nyx_string** %1704
  %1705 = load %nyx_string*, %nyx_string** %1704
  %1706 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %1707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1706, i64 0)
  %1708 = call i1 @nyx_string_equals(%nyx_string* %1705, %nyx_string* %1707)
  br i1 %1708, label %then388, label %else389
then388:
  %1709 = getelementptr [32 x i8], [32 x i8]* @.str153, i32 0, i32 0
  %1710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1709, i64 31)
  %1711 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1712 = call %nyx_string* @nyx_string_concat(%nyx_string* %1710, %nyx_string* %1711)
  store %nyx_string* %1712, %nyx_string** %1704
  br label %merge390
else389:
  br label %merge390
merge390:
  %1713 = getelementptr [9 x i8], [9 x i8]* @.str154, i32 0, i32 0
  %1714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1713, i64 8)
  %1715 = call i8* @nyx_string_to_cstr(%nyx_string* %1714)
  %1716 = call i1 @nyx_file_exists(i8* %1715)
  br i1 %1716, label %then391, label %else392
then391:
  %1717 = getelementptr [9 x i8], [9 x i8]* @.str155, i32 0, i32 0
  %1718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1717, i64 8)
  %1719 = call i8* @nyx_string_to_cstr(%nyx_string* %1718)
  %1720 = call %nyx_string* @nyx_read_file(i8* %1719)
  %1721 = alloca %nyx_string*
  store %nyx_string* %1720, %nyx_string** %1721
  %1722 = load %nyx_string*, %nyx_string** %1721
  %1723 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1724 = getelementptr [3 x i8], [3 x i8]* @.str156, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1724, i64 2)
  %1726 = call %nyx_string* @nyx_string_concat(%nyx_string* %1723, %nyx_string* %1725)
  %1727 = call i1 @nyx_string_contains(%nyx_string* %1722, %nyx_string* %1726)
  br i1 %1727, label %then394, label %else395
then394:
  %1728 = getelementptr [12 x i8], [12 x i8]* @.str157, i32 0, i32 0
  %1729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1728, i64 11)
  %1730 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1731 = call %nyx_string* @nyx_string_concat(%nyx_string* %1729, %nyx_string* %1730)
  %1732 = getelementptr [27 x i8], [27 x i8]* @.str158, i32 0, i32 0
  %1733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1732, i64 26)
  %1734 = call %nyx_string* @nyx_string_concat(%nyx_string* %1731, %nyx_string* %1733)
  %1735 = call i8* @nyx_string_to_cstr(%nyx_string* %1734)
  call void @nyx_print_string(i8* %1735)
  ret i1 1
else395:
  br label %merge396
merge396:
  br label %merge393
else392:
  br label %merge393
merge393:
  %1736 = getelementptr [10 x i8], [10 x i8]* @.str159, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1736, i64 9)
  %1738 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1739 = call %nyx_string* @nyx_string_concat(%nyx_string* %1737, %nyx_string* %1738)
  %1740 = alloca %nyx_string*
  store %nyx_string* %1739, %nyx_string** %1740
  %1741 = load %nyx_string*, %nyx_string** %1740
  %1742 = call i8* @nyx_string_to_cstr(%nyx_string* %1741)
  %1743 = call i1 @nyx_file_exists(i8* %1742)
  br i1 %1743, label %then397, label %else398
then397:
  %1744 = getelementptr [19 x i8], [19 x i8]* @.str160, i32 0, i32 0
  %1745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1744, i64 18)
  %1746 = load %nyx_string*, %nyx_string** %1740
  %1747 = call %nyx_string* @nyx_string_concat(%nyx_string* %1745, %nyx_string* %1746)
  %1748 = call i8* @nyx_string_to_cstr(%nyx_string* %1747)
  call void @nyx_print_string(i8* %1748)
  br label %merge399
else398:
  %1749 = getelementptr [13 x i8], [13 x i8]* @.str161, i32 0, i32 0
  %1750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1749, i64 12)
  %1751 = load %nyx_string*, %nyx_string** %1704
  %1752 = call %nyx_string* @nyx_string_concat(%nyx_string* %1750, %nyx_string* %1751)
  %1753 = call i8* @nyx_string_to_cstr(%nyx_string* %1752)
  call void @nyx_print_string(i8* %1753)
  %1754 = getelementptr [43 x i8], [43 x i8]* @.str162, i32 0, i32 0
  %1755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1754, i64 42)
  %1756 = load %nyx_string*, %nyx_string** %1704
  %1757 = call %nyx_string* @nyx_string_concat(%nyx_string* %1755, %nyx_string* %1756)
  %1758 = getelementptr [2 x i8], [2 x i8]* @.str163, i32 0, i32 0
  %1759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1758, i64 1)
  %1760 = call %nyx_string* @nyx_string_concat(%nyx_string* %1757, %nyx_string* %1759)
  %1761 = load %nyx_string*, %nyx_string** %1740
  %1762 = call %nyx_string* @nyx_string_concat(%nyx_string* %1760, %nyx_string* %1761)
  %1763 = getelementptr [13 x i8], [13 x i8]* @.str164, i32 0, i32 0
  %1764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1763, i64 12)
  %1765 = call %nyx_string* @nyx_string_concat(%nyx_string* %1762, %nyx_string* %1764)
  %1766 = alloca %nyx_string*
  store %nyx_string* %1765, %nyx_string** %1766
  %1767 = load %nyx_string*, %nyx_string** %1766
  %1768 = call i8* @nyx_string_to_cstr(%nyx_string* %1767)
  %1769 = call i64 @nyx_exec_code(i8* %1768)
  %1770 = alloca i64
  store i64 %1769, i64* %1770
  %1771 = load i64, i64* %1770
  %1772 = icmp ne i64 %1771, 0
  br i1 %1772, label %then400, label %else401
then400:
  %1773 = getelementptr [26 x i8], [26 x i8]* @.str165, i32 0, i32 0
  %1774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1773, i64 25)
  %1775 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1776 = call %nyx_string* @nyx_string_concat(%nyx_string* %1774, %nyx_string* %1775)
  %1777 = getelementptr [7 x i8], [7 x i8]* @.str166, i32 0, i32 0
  %1778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1777, i64 6)
  %1779 = call %nyx_string* @nyx_string_concat(%nyx_string* %1776, %nyx_string* %1778)
  %1780 = load %nyx_string*, %nyx_string** %1704
  %1781 = call %nyx_string* @nyx_string_concat(%nyx_string* %1779, %nyx_string* %1780)
  %1782 = call i8* @nyx_string_to_cstr(%nyx_string* %1781)
  call void @nyx_print_string(i8* %1782)
  ret i1 0
else401:
  br label %merge402
merge402:
  br label %merge399
merge399:
  %1783 = getelementptr [9 x i8], [9 x i8]* @.str167, i32 0, i32 0
  %1784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1783, i64 8)
  %1785 = call i8* @nyx_string_to_cstr(%nyx_string* %1784)
  %1786 = call i1 @nyx_file_exists(i8* %1785)
  br i1 %1786, label %then403, label %else404
then403:
  %1787 = getelementptr [9 x i8], [9 x i8]* @.str168, i32 0, i32 0
  %1788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1787, i64 8)
  %1789 = call i8* @nyx_string_to_cstr(%nyx_string* %1788)
  %1790 = call %nyx_string* @nyx_read_file(i8* %1789)
  %1791 = alloca %nyx_string*
  store %nyx_string* %1790, %nyx_string** %1791
  %1792 = load %nyx_string*, %nyx_string** %1791
  %1793 = alloca %nyx_string*
  store %nyx_string* %1792, %nyx_string** %1793
  %1794 = load %nyx_string*, %nyx_string** %1791
  %1795 = getelementptr [15 x i8], [15 x i8]* @.str169, i32 0, i32 0
  %1796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1795, i64 14)
  %1797 = call i1 @nyx_string_contains(%nyx_string* %1794, %nyx_string* %1796)
  %1798 = xor i1 %1797, true
  br i1 %1798, label %then406, label %else407
then406:
  %1799 = load %nyx_string*, %nyx_string** %1791
  %1800 = getelementptr [17 x i8], [17 x i8]* @.str170, i32 0, i32 0
  %1801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1800, i64 16)
  %1802 = call %nyx_string* @nyx_string_concat(%nyx_string* %1799, %nyx_string* %1801)
  %1803 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1804 = call %nyx_string* @nyx_string_concat(%nyx_string* %1802, %nyx_string* %1803)
  %1805 = getelementptr [8 x i8], [8 x i8]* @.str171, i32 0, i32 0
  %1806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1805, i64 7)
  %1807 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1806)
  store %nyx_string* %1807, %nyx_string** %1793
  br label %merge408
else407:
  %1808 = load %nyx_string*, %nyx_string** %1791
  %1809 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1810 = call %nyx_string* @nyx_string_concat(%nyx_string* %1808, %nyx_string* %1809)
  %1811 = getelementptr [8 x i8], [8 x i8]* @.str172, i32 0, i32 0
  %1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1811, i64 7)
  %1813 = call %nyx_string* @nyx_string_concat(%nyx_string* %1810, %nyx_string* %1812)
  store %nyx_string* %1813, %nyx_string** %1793
  br label %merge408
merge408:
  %1814 = getelementptr [9 x i8], [9 x i8]* @.str173, i32 0, i32 0
  %1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1814, i64 8)
  %1816 = load %nyx_string*, %nyx_string** %1793
  %1817 = call i8* @nyx_string_to_cstr(%nyx_string* %1815)
  %1818 = call i1 @nyx_write_file_safe(i8* %1817, %nyx_string* %1816)
  %1819 = getelementptr [19 x i8], [19 x i8]* @.str174, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1819, i64 18)
  %1821 = call i8* @nyx_string_to_cstr(%nyx_string* %1820)
  call void @nyx_print_string(i8* %1821)
  br label %merge405
else404:
  br label %merge405
merge405:
  %1822 = getelementptr [10 x i8], [10 x i8]* @.str175, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1822, i64 9)
  %1824 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1825 = call %nyx_string* @nyx_string_concat(%nyx_string* %1823, %nyx_string* %1824)
  %1826 = getelementptr [9 x i8], [9 x i8]* @.str176, i32 0, i32 0
  %1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1826, i64 8)
  %1828 = call %nyx_string* @nyx_string_concat(%nyx_string* %1825, %nyx_string* %1827)
  %1829 = call i8* @nyx_string_to_cstr(%nyx_string* %1828)
  call void @nyx_print_string(i8* %1829)
  ret i1 1
}

define internal %nyx_string* @resolve_seed_home(
) {
  %1830 = getelementptr [9 x i8], [9 x i8]* @.str177, i32 0, i32 0
  %1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1830, i64 8)
  %1832 = call i8* @nyx_string_to_cstr(%nyx_string* %1831)
  %1833 = call %nyx_string* @nyx_getenv(i8* %1832)
  %1834 = alloca %nyx_string*
  store %nyx_string* %1833, %nyx_string** %1834
  %1835 = load %nyx_string*, %nyx_string** %1834
  %1836 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %1837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1836, i64 0)
  %1838 = call i1 @nyx_string_equals(%nyx_string* %1835, %nyx_string* %1837)
  %1839 = xor i1 %1838, true
  br i1 %1839, label %then409, label %else410
then409:
  %1840 = load %nyx_string*, %nyx_string** %1834
  ret %nyx_string* %1840
else410:
  br label %merge411
merge411:
  %1841 = getelementptr [5 x i8], [5 x i8]* @.str179, i32 0, i32 0
  %1842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1841, i64 4)
  %1843 = call i8* @nyx_string_to_cstr(%nyx_string* %1842)
  %1844 = call %nyx_string* @nyx_getenv(i8* %1843)
  %1845 = alloca %nyx_string*
  store %nyx_string* %1844, %nyx_string** %1845
  %1846 = load %nyx_string*, %nyx_string** %1845
  %1847 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1847, i64 0)
  %1849 = call i1 @nyx_string_equals(%nyx_string* %1846, %nyx_string* %1848)
  %1850 = xor i1 %1849, true
  br i1 %1850, label %then412, label %else413
then412:
  %1851 = load %nyx_string*, %nyx_string** %1845
  %1852 = getelementptr [6 x i8], [6 x i8]* @.str181, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1852, i64 5)
  %1854 = call %nyx_string* @nyx_string_concat(%nyx_string* %1851, %nyx_string* %1853)
  %1855 = alloca %nyx_string*
  store %nyx_string* %1854, %nyx_string** %1855
  %1856 = load %nyx_string*, %nyx_string** %1855
  %1857 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1857, i64 10)
  %1859 = call %nyx_string* @nyx_string_concat(%nyx_string* %1856, %nyx_string* %1858)
  %1860 = call i8* @nyx_string_to_cstr(%nyx_string* %1859)
  %1861 = call i1 @nyx_file_exists(i8* %1860)
  br i1 %1861, label %then415, label %else416
then415:
  %1862 = load %nyx_string*, %nyx_string** %1855
  ret %nyx_string* %1862
else416:
  br label %merge417
merge417:
  br label %merge414
else413:
  br label %merge414
merge414:
  %1863 = getelementptr [14 x i8], [14 x i8]* @.str183, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1863, i64 13)
  %1865 = call i8* @nyx_string_to_cstr(%nyx_string* %1864)
  %1866 = call i1 @nyx_file_exists(i8* %1865)
  br i1 %1866, label %then418, label %else419
then418:
  %1867 = getelementptr [2 x i8], [2 x i8]* @.str184, i32 0, i32 0
  %1868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1867, i64 1)
  ret %nyx_string* %1868
else419:
  br label %merge420
merge420:
  %1869 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1869, i64 0)
  ret %nyx_string* %1870
}

define internal %nyx_string* @seed_stamp(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1871 = getelementptr [19 x i8], [19 x i8]* @.str186, i32 0, i32 0
  %1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1871, i64 18)
  %1873 = call %nyx_string* @toolchain_version()
  %1874 = call %nyx_string* @nyx_string_concat(%nyx_string* %1872, %nyx_string* %1873)
  %1875 = getelementptr [12 x i8], [12 x i8]* @.str187, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1875, i64 11)
  %1877 = call %nyx_string* @nyx_string_concat(%nyx_string* %1874, %nyx_string* %1876)
  %1878 = load %nyx_string*, %nyx_string** %lang.ptr
  %1879 = call %nyx_string* @nyx_string_concat(%nyx_string* %1877, %nyx_string* %1878)
  %1880 = getelementptr [6 x i8], [6 x i8]* @.str188, i32 0, i32 0
  %1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1880, i64 5)
  %1882 = call %nyx_string* @nyx_string_concat(%nyx_string* %1879, %nyx_string* %1881)
  ret %nyx_string* %1882
}

define internal %nyx_string* @project_lang(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1883 = load %nyx_string*, %nyx_string** %dir.ptr
  %1884 = getelementptr [11 x i8], [11 x i8]* @.str189, i32 0, i32 0
  %1885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1884, i64 10)
  %1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %1883, %nyx_string* %1885)
  %1887 = alloca %nyx_string*
  store %nyx_string* %1886, %nyx_string** %1887
  %1888 = load %nyx_string*, %nyx_string** %1887
  %1889 = call i8* @nyx_string_to_cstr(%nyx_string* %1888)
  %1890 = call i1 @nyx_file_exists(i8* %1889)
  %1891 = icmp eq i1 %1890, 0
  br i1 %1891, label %then421, label %else422
then421:
  %1892 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %1893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1892, i64 2)
  ret %nyx_string* %1893
else422:
  br label %merge423
merge423:
  %1894 = load %nyx_string*, %nyx_string** %1887
  %1895 = call i8* @nyx_string_to_cstr(%nyx_string* %1894)
  %1896 = call %nyx_string* @nyx_read_file(i8* %1895)
  %1897 = alloca %nyx_string*
  store %nyx_string* %1896, %nyx_string** %1897
  %1898 = getelementptr [11 x i8], [11 x i8]* @.str191, i32 0, i32 0
  %1899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1898, i64 10)
  %1900 = alloca %nyx_string*
  store %nyx_string* %1899, %nyx_string** %1900
  %1901 = load %nyx_string*, %nyx_string** %1897
  %1902 = load %nyx_string*, %nyx_string** %1900
  %1903 = call i64 @nyx_string_index_of(%nyx_string* %1901, %nyx_string* %1902)
  %1904 = alloca i64
  store i64 %1903, i64* %1904
  %1905 = load i64, i64* %1904
  %1906 = icmp slt i64 %1905, 0
  br i1 %1906, label %then424, label %else425
then424:
  %1907 = getelementptr [3 x i8], [3 x i8]* @.str192, i32 0, i32 0
  %1908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1907, i64 2)
  ret %nyx_string* %1908
else425:
  br label %merge426
merge426:
  %1909 = load i64, i64* %1904
  %1910 = load %nyx_string*, %nyx_string** %1900
  %1911 = call i64 @nyx_string_byte_length(%nyx_string* %1910)
  %1912 = add i64 %1909, %1911
  %1913 = alloca i64
  store i64 %1912, i64* %1913
  %1914 = load i64, i64* %1913
  %1915 = add i64 %1914, 2
  %1916 = load %nyx_string*, %nyx_string** %1897
  %1917 = call i64 @nyx_string_byte_length(%nyx_string* %1916)
  %1918 = icmp sgt i64 %1915, %1917
  br i1 %1918, label %then427, label %else428
then427:
  %1919 = getelementptr [3 x i8], [3 x i8]* @.str193, i32 0, i32 0
  %1920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1919, i64 2)
  ret %nyx_string* %1920
else428:
  br label %merge429
merge429:
  %1921 = load %nyx_string*, %nyx_string** %1897
  %1922 = load i64, i64* %1913
  %1923 = load i64, i64* %1913
  %1924 = add i64 %1923, 2
  %1925 = call %nyx_string* @nyx_string_substring(%nyx_string* %1921, i64 %1922, i64 %1924)
  %1926 = alloca %nyx_string*
  store %nyx_string* %1925, %nyx_string** %1926
  %1927 = load %nyx_string*, %nyx_string** %1926
  %1928 = getelementptr [3 x i8], [3 x i8]* @.str194, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1928, i64 2)
  %1930 = call i1 @nyx_string_equals(%nyx_string* %1927, %nyx_string* %1929)
  br i1 %1930, label %then430, label %else431
then430:
  %1931 = getelementptr [3 x i8], [3 x i8]* @.str195, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1931, i64 2)
  ret %nyx_string* %1932
else431:
  br label %merge432
merge432:
  %1933 = getelementptr [3 x i8], [3 x i8]* @.str196, i32 0, i32 0
  %1934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1933, i64 2)
  ret %nyx_string* %1934
}

define internal %nyx_string* @seed_body(
%nyx_string* %content.param, %nyx_string* %lang.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1935 = load %nyx_string*, %nyx_string** %content.ptr
  %1936 = alloca %nyx_string*
  store %nyx_string* %1935, %nyx_string** %1936
  %1937 = load %nyx_string*, %nyx_string** %1936
  %1938 = call i64 @nyx_string_byte_length(%nyx_string* %1937)
  %1939 = alloca i64
  store i64 %1938, i64* %1939
  %1940 = alloca i1
  store i1 1, i1* %1940
  %1941 = load i64, i64* %1939
  %1942 = icmp sgt i64 %1941, 0
  br i1 %1942, label %then433, label %else434
then433:
  %1943 = load %nyx_string*, %nyx_string** %1936
  %1944 = load i64, i64* %1939
  %1945 = sub i64 %1944, 1
  %1946 = load i64, i64* %1939
  %1947 = call %nyx_string* @nyx_string_substring(%nyx_string* %1943, i64 %1945, i64 %1946)
  %1948 = getelementptr [2 x i8], [2 x i8]* @.str197, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1948, i64 1)
  %1950 = call i1 @nyx_string_equals(%nyx_string* %1947, %nyx_string* %1949)
  br i1 %1950, label %then436, label %else437
then436:
  store i1 0, i1* %1940
  br label %merge438
else437:
  br label %merge438
merge438:
  br label %merge435
else434:
  br label %merge435
merge435:
  %1951 = load i1, i1* %1940
  br i1 %1951, label %then439, label %else440
then439:
  %1952 = load %nyx_string*, %nyx_string** %1936
  %1953 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %1954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1953, i64 1)
  %1955 = call %nyx_string* @nyx_string_concat(%nyx_string* %1952, %nyx_string* %1954)
  store %nyx_string* %1955, %nyx_string** %1936
  br label %merge441
else440:
  br label %merge441
merge441:
  %1956 = load %nyx_string*, %nyx_string** %1936
  %1957 = getelementptr [2 x i8], [2 x i8]* @.str199, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1957, i64 1)
  %1959 = call %nyx_string* @nyx_string_concat(%nyx_string* %1956, %nyx_string* %1958)
  %1960 = load %nyx_string*, %nyx_string** %lang.ptr
  %1961 = call %nyx_string* @seed_stamp(%nyx_string* %1960)
  %1962 = call %nyx_string* @nyx_string_concat(%nyx_string* %1959, %nyx_string* %1961)
  ret %nyx_string* %1962
}

define internal i64 @seed_file(
%nyx_string* %dst.param, %nyx_string* %content.param, %nyx_string* %lang.param) {
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1963 = load %nyx_string*, %nyx_string** %dst.ptr
  %1964 = load %nyx_string*, %nyx_string** %content.ptr
  %1965 = load %nyx_string*, %nyx_string** %lang.ptr
  %1966 = call %nyx_string* @seed_body(%nyx_string* %1964, %nyx_string* %1965)
  %1967 = call i8* @nyx_string_to_cstr(%nyx_string* %1963)
  %1968 = call i1 @nyx_write_file_safe(i8* %1967, %nyx_string* %1966)
  ret i64 0
}

define internal i64 @seed_gitignore(
%nyx_string* %dir.param, %nyx_string* %project_name.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %project_name.ptr = alloca %nyx_string*
  store %nyx_string* %project_name.param, %nyx_string** %project_name.ptr
  %1969 = call %nyx_string* @resolve_seed_home()
  %1970 = alloca %nyx_string*
  store %nyx_string* %1969, %nyx_string** %1970
  %1971 = load %nyx_string*, %nyx_string** %1970
  %1972 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %1973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1972, i64 0)
  %1974 = call i1 @nyx_string_equals(%nyx_string* %1971, %nyx_string* %1973)
  br i1 %1974, label %then442, label %else443
then442:
  ret i64 0
else443:
  br label %merge444
merge444:
  %1975 = load %nyx_string*, %nyx_string** %1970
  %1976 = getelementptr [21 x i8], [21 x i8]* @.str201, i32 0, i32 0
  %1977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1976, i64 20)
  %1978 = call %nyx_string* @nyx_string_concat(%nyx_string* %1975, %nyx_string* %1977)
  %1979 = alloca %nyx_string*
  store %nyx_string* %1978, %nyx_string** %1979
  %1980 = load %nyx_string*, %nyx_string** %1979
  %1981 = call i8* @nyx_string_to_cstr(%nyx_string* %1980)
  %1982 = call i1 @nyx_file_exists(i8* %1981)
  %1983 = icmp eq i1 %1982, 0
  br i1 %1983, label %then445, label %else446
then445:
  ret i64 0
else446:
  br label %merge447
merge447:
  %1984 = load %nyx_string*, %nyx_string** %dir.ptr
  %1985 = getelementptr [12 x i8], [12 x i8]* @.str202, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1985, i64 11)
  %1987 = call %nyx_string* @nyx_string_concat(%nyx_string* %1984, %nyx_string* %1986)
  %1988 = call i8* @nyx_string_to_cstr(%nyx_string* %1987)
  %1989 = call i1 @nyx_file_exists(i8* %1988)
  br i1 %1989, label %then448, label %else449
then448:
  ret i64 0
else449:
  br label %merge450
merge450:
  %1990 = load %nyx_string*, %nyx_string** %1979
  %1991 = call i8* @nyx_string_to_cstr(%nyx_string* %1990)
  %1992 = call %nyx_string* @nyx_read_file(i8* %1991)
  %1993 = alloca %nyx_string*
  store %nyx_string* %1992, %nyx_string** %1993
  %1994 = load %nyx_string*, %nyx_string** %dir.ptr
  %1995 = getelementptr [12 x i8], [12 x i8]* @.str203, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1995, i64 11)
  %1997 = call %nyx_string* @nyx_string_concat(%nyx_string* %1994, %nyx_string* %1996)
  %1998 = load %nyx_string*, %nyx_string** %1993
  %1999 = getelementptr [11 x i8], [11 x i8]* @.str204, i32 0, i32 0
  %2000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1999, i64 10)
  %2001 = load %nyx_string*, %nyx_string** %project_name.ptr
  %2002 = call %nyx_string* @nyx_string_replace(%nyx_string* %1998, %nyx_string* %2000, %nyx_string* %2001)
  %2003 = call i8* @nyx_string_to_cstr(%nyx_string* %1997)
  %2004 = call i1 @nyx_write_file_safe(i8* %2003, %nyx_string* %2002)
  ret i64 0
}

define internal i1 @validate_agents(
%nyx_string* %agents.param) {
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %2005 = load %nyx_string*, %nyx_string** %agents.ptr
  %2006 = getelementptr [1 x i8], [1 x i8]* @.str205, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2006, i64 0)
  %2008 = call i1 @nyx_string_equals(%nyx_string* %2005, %nyx_string* %2007)
  br i1 %2008, label %then451, label %else452
then451:
  ret i1 1
else452:
  br label %merge453
merge453:
  %2009 = load %nyx_string*, %nyx_string** %agents.ptr
  %2010 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2010, i64 1)
  %2012 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2009, %nyx_string* %2011)
  %2013 = alloca { i64, i8* }*
  store { i64, i8* }* %2012, { i64, i8* }** %2013
  %2014 = alloca i64
  store i64 0, i64* %2014
  %2015 = getelementptr [7 x i8], [7 x i8]* @.str207, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2015, i64 6)
  %2017 = alloca %nyx_string*
  store %nyx_string* %2016, %nyx_string** %2017
  %2018 = getelementptr [7 x i8], [7 x i8]* @.str208, i32 0, i32 0
  %2019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2018, i64 6)
  %2020 = alloca %nyx_string*
  store %nyx_string* %2019, %nyx_string** %2020
  %2021 = getelementptr [8 x i8], [8 x i8]* @.str209, i32 0, i32 0
  %2022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2021, i64 7)
  %2023 = alloca %nyx_string*
  store %nyx_string* %2022, %nyx_string** %2023
  %2024 = getelementptr [28 x i8], [28 x i8]* @.str210, i32 0, i32 0
  %2025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2024, i64 27)
  %2026 = alloca %nyx_string*
  store %nyx_string* %2025, %nyx_string** %2026
  %2027 = getelementptr [46 x i8], [46 x i8]* @.str211, i32 0, i32 0
  %2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2027, i64 45)
  %2029 = alloca %nyx_string*
  store %nyx_string* %2028, %nyx_string** %2029
  %2030 = getelementptr [72 x i8], [72 x i8]* @.str212, i32 0, i32 0
  %2031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2030, i64 71)
  %2032 = alloca %nyx_string*
  store %nyx_string* %2031, %nyx_string** %2032
  %2033 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %2034 = load i64, i64* %2014
  %2035 = load { i64, i8* }*, { i64, i8* }** %2013
  %2036 = call i64 @nyx_array_length({ i64, i8* }* %2035)
  %2037 = icmp slt i64 %2034, %2036
  br i1 %2037, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %2033)
  %2038 = load { i64, i8* }*, { i64, i8* }** %2013
  %2039 = load i64, i64* %2014
  %2040 = call i64 @nyx_array_get_checked({ i64, i8* }* %2038, i64 %2039, i64 2)
  %2041 = inttoptr i64 %2040 to %nyx_string*
  %2042 = alloca %nyx_string*
  store %nyx_string* %2041, %nyx_string** %2042
  %2043 = load %nyx_string*, %nyx_string** %2042
  %2044 = call %nyx_string* @nyx_string_trim(%nyx_string* %2043)
  %2045 = alloca %nyx_string*
  store %nyx_string* %2044, %nyx_string** %2045
  %2046 = alloca i1
  store i1 false, i1* %2046
  %2047 = alloca i1
  store i1 false, i1* %2047
  %2048 = load %nyx_string*, %nyx_string** %2045
  %2049 = load %nyx_string*, %nyx_string** %2017
  %2050 = call i1 @nyx_string_equals(%nyx_string* %2048, %nyx_string* %2049)
  %2051 = xor i1 %2050, true
  br i1 %2051, label %sc_and_rhs457, label %sc_and_end458
sc_and_rhs457:
  %2052 = load %nyx_string*, %nyx_string** %2045
  %2053 = load %nyx_string*, %nyx_string** %2020
  %2054 = call i1 @nyx_string_equals(%nyx_string* %2052, %nyx_string* %2053)
  %2055 = xor i1 %2054, true
  store i1 %2055, i1* %2047
  br label %sc_and_end458
sc_and_end458:
  %2056 = load i1, i1* %2047
  br i1 %2056, label %sc_and_rhs459, label %sc_and_end460
sc_and_rhs459:
  %2057 = load %nyx_string*, %nyx_string** %2045
  %2058 = load %nyx_string*, %nyx_string** %2023
  %2059 = call i1 @nyx_string_equals(%nyx_string* %2057, %nyx_string* %2058)
  %2060 = xor i1 %2059, true
  store i1 %2060, i1* %2046
  br label %sc_and_end460
sc_and_end460:
  %2061 = load i1, i1* %2046
  br i1 %2061, label %then461, label %else462
then461:
  %2062 = load %nyx_string*, %nyx_string** %2026
  %2063 = load %nyx_string*, %nyx_string** %2045
  %2064 = call %nyx_string* @nyx_string_concat(%nyx_string* %2062, %nyx_string* %2063)
  %2065 = load %nyx_string*, %nyx_string** %2029
  %2066 = call %nyx_string* @nyx_string_concat(%nyx_string* %2064, %nyx_string* %2065)
  %2067 = call i8* @nyx_string_to_cstr(%nyx_string* %2066)
  call void @nyx_print_string(i8* %2067)
  %2068 = load %nyx_string*, %nyx_string** %2032
  %2069 = call i8* @nyx_string_to_cstr(%nyx_string* %2068)
  call void @nyx_print_string(i8* %2069)
  ret i1 0
else462:
  br label %merge463
merge463:
  %2070 = load i64, i64* %2014
  %2071 = add i64 %2070, 1
  store i64 %2071, i64* %2014
  br label %while_cond454
while_end456:
  ret i1 1
}

define internal i64 @seed_adapters(
%nyx_string* %dir.param, %nyx_string* %lang.param, %nyx_string* %agents.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %2072 = load %nyx_string*, %nyx_string** %agents.ptr
  %2073 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %2074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2073, i64 0)
  %2075 = call i1 @nyx_string_equals(%nyx_string* %2072, %nyx_string* %2074)
  br i1 %2075, label %then464, label %else465
then464:
  ret i64 0
else465:
  br label %merge466
merge466:
  %2076 = call %nyx_string* @resolve_seed_home()
  %2077 = alloca %nyx_string*
  store %nyx_string* %2076, %nyx_string** %2077
  %2078 = load %nyx_string*, %nyx_string** %2077
  %2079 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %2080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2079, i64 0)
  %2081 = call i1 @nyx_string_equals(%nyx_string* %2078, %nyx_string* %2080)
  br i1 %2081, label %then467, label %else468
then467:
  ret i64 0
else468:
  br label %merge469
merge469:
  %2082 = load %nyx_string*, %nyx_string** %2077
  %2083 = getelementptr [20 x i8], [20 x i8]* @.str215, i32 0, i32 0
  %2084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2083, i64 19)
  %2085 = call %nyx_string* @nyx_string_concat(%nyx_string* %2082, %nyx_string* %2084)
  %2086 = alloca %nyx_string*
  store %nyx_string* %2085, %nyx_string** %2086
  %2087 = load %nyx_string*, %nyx_string** %agents.ptr
  %2088 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2088, i64 1)
  %2090 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2087, %nyx_string* %2089)
  %2091 = alloca { i64, i8* }*
  store { i64, i8* }* %2090, { i64, i8* }** %2091
  %2092 = alloca i64
  store i64 0, i64* %2092
  %2093 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2093, i64 0)
  %2095 = alloca %nyx_string*
  store %nyx_string* %2094, %nyx_string** %2095
  %2096 = getelementptr [2 x i8], [2 x i8]* @.str218, i32 0, i32 0
  %2097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2096, i64 1)
  %2098 = alloca %nyx_string*
  store %nyx_string* %2097, %nyx_string** %2098
  %2099 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %2100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2099, i64 1)
  %2101 = alloca %nyx_string*
  store %nyx_string* %2100, %nyx_string** %2101
  %2102 = getelementptr [4 x i8], [4 x i8]* @.str220, i32 0, i32 0
  %2103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2102, i64 3)
  %2104 = alloca %nyx_string*
  store %nyx_string* %2103, %nyx_string** %2104
  %2105 = getelementptr [7 x i8], [7 x i8]* @.str221, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2105, i64 6)
  %2107 = alloca %nyx_string*
  store %nyx_string* %2106, %nyx_string** %2107
  %2108 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %2109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2108, i64 10)
  %2110 = alloca %nyx_string*
  store %nyx_string* %2109, %nyx_string** %2110
  %2111 = getelementptr [7 x i8], [7 x i8]* @.str223, i32 0, i32 0
  %2112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2111, i64 6)
  %2113 = alloca %nyx_string*
  store %nyx_string* %2112, %nyx_string** %2113
  %2114 = getelementptr [14 x i8], [14 x i8]* @.str224, i32 0, i32 0
  %2115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2114, i64 13)
  %2116 = alloca %nyx_string*
  store %nyx_string* %2115, %nyx_string** %2116
  %2117 = getelementptr [8 x i8], [8 x i8]* @.str225, i32 0, i32 0
  %2118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2117, i64 7)
  %2119 = alloca %nyx_string*
  store %nyx_string* %2118, %nyx_string** %2119
  %2120 = getelementptr [11 x i8], [11 x i8]* @.str226, i32 0, i32 0
  %2121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2120, i64 10)
  %2122 = alloca %nyx_string*
  store %nyx_string* %2121, %nyx_string** %2122
  %2123 = getelementptr [10 x i8], [10 x i8]* @.str227, i32 0, i32 0
  %2124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2123, i64 9)
  %2125 = alloca %nyx_string*
  store %nyx_string* %2124, %nyx_string** %2125
  %2126 = getelementptr [33 x i8], [33 x i8]* @.str228, i32 0, i32 0
  %2127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2126, i64 32)
  %2128 = alloca %nyx_string*
  store %nyx_string* %2127, %nyx_string** %2128
  %2129 = getelementptr [44 x i8], [44 x i8]* @.str229, i32 0, i32 0
  %2130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2129, i64 43)
  %2131 = alloca %nyx_string*
  store %nyx_string* %2130, %nyx_string** %2131
  %2132 = getelementptr [4 x i8], [4 x i8]* @.str230, i32 0, i32 0
  %2133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2132, i64 3)
  %2134 = alloca %nyx_string*
  store %nyx_string* %2133, %nyx_string** %2134
  %2135 = getelementptr [20 x i8], [20 x i8]* @.str231, i32 0, i32 0
  %2136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2135, i64 19)
  %2137 = alloca %nyx_string*
  store %nyx_string* %2136, %nyx_string** %2137
  %2138 = call i8* @llvm.stacksave()
  br label %while_cond470
while_cond470:
  %2139 = load i64, i64* %2092
  %2140 = load { i64, i8* }*, { i64, i8* }** %2091
  %2141 = call i64 @nyx_array_length({ i64, i8* }* %2140)
  %2142 = icmp slt i64 %2139, %2141
  br i1 %2142, label %while_body471, label %while_end472
while_body471:
  call void @llvm.stackrestore(i8* %2138)
  %2143 = load { i64, i8* }*, { i64, i8* }** %2091
  %2144 = load i64, i64* %2092
  %2145 = call i64 @nyx_array_get_checked({ i64, i8* }* %2143, i64 %2144, i64 2)
  %2146 = inttoptr i64 %2145 to %nyx_string*
  %2147 = alloca %nyx_string*
  store %nyx_string* %2146, %nyx_string** %2147
  %2148 = load %nyx_string*, %nyx_string** %2147
  %2149 = call %nyx_string* @nyx_string_trim(%nyx_string* %2148)
  %2150 = alloca %nyx_string*
  store %nyx_string* %2149, %nyx_string** %2150
  %2151 = load %nyx_string*, %nyx_string** %2150
  %2152 = load %nyx_string*, %nyx_string** %2095
  %2153 = call i1 @nyx_string_equals(%nyx_string* %2151, %nyx_string* %2152)
  %2154 = xor i1 %2153, true
  br i1 %2154, label %then473, label %else474
then473:
  %2155 = load %nyx_string*, %nyx_string** %2086
  %2156 = load %nyx_string*, %nyx_string** %2098
  %2157 = call %nyx_string* @nyx_string_concat(%nyx_string* %2155, %nyx_string* %2156)
  %2158 = load %nyx_string*, %nyx_string** %2150
  %2159 = call %nyx_string* @nyx_string_concat(%nyx_string* %2157, %nyx_string* %2158)
  %2160 = load %nyx_string*, %nyx_string** %2101
  %2161 = call %nyx_string* @nyx_string_concat(%nyx_string* %2159, %nyx_string* %2160)
  %2162 = load %nyx_string*, %nyx_string** %lang.ptr
  %2163 = call %nyx_string* @nyx_string_concat(%nyx_string* %2161, %nyx_string* %2162)
  %2164 = load %nyx_string*, %nyx_string** %2104
  %2165 = call %nyx_string* @nyx_string_concat(%nyx_string* %2163, %nyx_string* %2164)
  %2166 = alloca %nyx_string*
  store %nyx_string* %2165, %nyx_string** %2166
  %2167 = load %nyx_string*, %nyx_string** %2166
  %2168 = call i8* @nyx_string_to_cstr(%nyx_string* %2167)
  %2169 = call i1 @nyx_file_exists(i8* %2168)
  br i1 %2169, label %then476, label %else477
then476:
  %2170 = load %nyx_string*, %nyx_string** %2166
  %2171 = call i8* @nyx_string_to_cstr(%nyx_string* %2170)
  %2172 = call %nyx_string* @nyx_read_file(i8* %2171)
  %2173 = alloca %nyx_string*
  store %nyx_string* %2172, %nyx_string** %2173
  %2174 = load %nyx_string*, %nyx_string** %2150
  %2175 = load %nyx_string*, %nyx_string** %2107
  %2176 = call i1 @nyx_string_equals(%nyx_string* %2174, %nyx_string* %2175)
  br i1 %2176, label %then479, label %else480
then479:
  %2177 = load %nyx_string*, %nyx_string** %dir.ptr
  %2178 = load %nyx_string*, %nyx_string** %2110
  %2179 = call %nyx_string* @nyx_string_concat(%nyx_string* %2177, %nyx_string* %2178)
  %2180 = load %nyx_string*, %nyx_string** %2173
  %2181 = load %nyx_string*, %nyx_string** %lang.ptr
  %2182 = call i64 @seed_file(%nyx_string* %2179, %nyx_string* %2180, %nyx_string* %2181)
  br label %merge481
else480:
  br label %merge481
merge481:
  %2183 = load %nyx_string*, %nyx_string** %2150
  %2184 = load %nyx_string*, %nyx_string** %2113
  %2185 = call i1 @nyx_string_equals(%nyx_string* %2183, %nyx_string* %2184)
  br i1 %2185, label %then482, label %else483
then482:
  %2186 = load %nyx_string*, %nyx_string** %dir.ptr
  %2187 = load %nyx_string*, %nyx_string** %2116
  %2188 = call %nyx_string* @nyx_string_concat(%nyx_string* %2186, %nyx_string* %2187)
  %2189 = load %nyx_string*, %nyx_string** %2173
  %2190 = load %nyx_string*, %nyx_string** %lang.ptr
  %2191 = call i64 @seed_file(%nyx_string* %2188, %nyx_string* %2189, %nyx_string* %2190)
  br label %merge484
else483:
  br label %merge484
merge484:
  %2192 = load %nyx_string*, %nyx_string** %2150
  %2193 = load %nyx_string*, %nyx_string** %2119
  %2194 = call i1 @nyx_string_equals(%nyx_string* %2192, %nyx_string* %2193)
  br i1 %2194, label %then485, label %else486
then485:
  %2195 = load %nyx_string*, %nyx_string** %2122
  %2196 = load %nyx_string*, %nyx_string** %dir.ptr
  %2197 = call %nyx_string* @nyx_string_concat(%nyx_string* %2195, %nyx_string* %2196)
  %2198 = load %nyx_string*, %nyx_string** %2125
  %2199 = call %nyx_string* @nyx_string_concat(%nyx_string* %2197, %nyx_string* %2198)
  %2200 = call i8* @nyx_string_to_cstr(%nyx_string* %2199)
  %2201 = call %nyx_string* @nyx_exec(i8* %2200)
  %2202 = load %nyx_string*, %nyx_string** %dir.ptr
  %2203 = load %nyx_string*, %nyx_string** %2128
  %2204 = call %nyx_string* @nyx_string_concat(%nyx_string* %2202, %nyx_string* %2203)
  %2205 = load %nyx_string*, %nyx_string** %2173
  %2206 = load %nyx_string*, %nyx_string** %lang.ptr
  %2207 = call i64 @seed_file(%nyx_string* %2204, %nyx_string* %2205, %nyx_string* %2206)
  br label %merge487
else486:
  br label %merge487
merge487:
  br label %merge478
else477:
  %2208 = load %nyx_string*, %nyx_string** %2131
  %2209 = load %nyx_string*, %nyx_string** %2150
  %2210 = call %nyx_string* @nyx_string_concat(%nyx_string* %2208, %nyx_string* %2209)
  %2211 = load %nyx_string*, %nyx_string** %2134
  %2212 = call %nyx_string* @nyx_string_concat(%nyx_string* %2210, %nyx_string* %2211)
  %2213 = load %nyx_string*, %nyx_string** %2166
  %2214 = call %nyx_string* @nyx_string_concat(%nyx_string* %2212, %nyx_string* %2213)
  %2215 = load %nyx_string*, %nyx_string** %2137
  %2216 = call %nyx_string* @nyx_string_concat(%nyx_string* %2214, %nyx_string* %2215)
  %2217 = call i8* @nyx_string_to_cstr(%nyx_string* %2216)
  call void @nyx_print_string(i8* %2217)
  br label %merge478
merge478:
  br label %merge475
else474:
  br label %merge475
merge475:
  %2218 = load i64, i64* %2092
  %2219 = add i64 %2218, 1
  store i64 %2219, i64* %2092
  br label %while_cond470
while_end472:
  ret i64 0
}

define internal i64 @scaffold_project_files(
%nyx_string* %dir.param, %nyx_string* %lang.param, %nyx_string* %agents.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %2220 = call %nyx_string* @resolve_seed_home()
  %2221 = alloca %nyx_string*
  store %nyx_string* %2220, %nyx_string** %2221
  %2222 = load %nyx_string*, %nyx_string** %2221
  %2223 = getelementptr [11 x i8], [11 x i8]* @.str232, i32 0, i32 0
  %2224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2223, i64 10)
  %2225 = call %nyx_string* @nyx_string_concat(%nyx_string* %2222, %nyx_string* %2224)
  %2226 = alloca %nyx_string*
  store %nyx_string* %2225, %nyx_string** %2226
  %2227 = load %nyx_string*, %nyx_string** %2226
  %2228 = getelementptr [2 x i8], [2 x i8]* @.str233, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2228, i64 1)
  %2230 = call %nyx_string* @nyx_string_concat(%nyx_string* %2227, %nyx_string* %2229)
  %2231 = load %nyx_string*, %nyx_string** %lang.ptr
  %2232 = call %nyx_string* @nyx_string_concat(%nyx_string* %2230, %nyx_string* %2231)
  %2233 = alloca %nyx_string*
  store %nyx_string* %2232, %nyx_string** %2233
  %2234 = alloca i1
  store i1 0, i1* %2234
  %2235 = load %nyx_string*, %nyx_string** %2221
  %2236 = getelementptr [1 x i8], [1 x i8]* @.str234, i32 0, i32 0
  %2237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2236, i64 0)
  %2238 = call i1 @nyx_string_equals(%nyx_string* %2235, %nyx_string* %2237)
  %2239 = xor i1 %2238, true
  br i1 %2239, label %then488, label %else489
then488:
  %2240 = load %nyx_string*, %nyx_string** %2233
  %2241 = getelementptr [11 x i8], [11 x i8]* @.str235, i32 0, i32 0
  %2242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2241, i64 10)
  %2243 = call %nyx_string* @nyx_string_concat(%nyx_string* %2240, %nyx_string* %2242)
  %2244 = call i8* @nyx_string_to_cstr(%nyx_string* %2243)
  %2245 = call i1 @nyx_file_exists(i8* %2244)
  br i1 %2245, label %then491, label %else492
then491:
  store i1 1, i1* %2234
  br label %merge493
else492:
  br label %merge493
merge493:
  br label %merge490
else489:
  br label %merge490
merge490:
  %2246 = load i1, i1* %2234
  %2247 = icmp eq i1 %2246, 0
  br i1 %2247, label %then494, label %else495
then494:
  %2248 = getelementptr [74 x i8], [74 x i8]* @.str236, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2248, i64 73)
  %2250 = load %nyx_string*, %nyx_string** %lang.ptr
  %2251 = call %nyx_string* @nyx_string_concat(%nyx_string* %2249, %nyx_string* %2250)
  %2252 = getelementptr [84 x i8], [84 x i8]* @.str237, i32 0, i32 0
  %2253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2252, i64 83)
  %2254 = call %nyx_string* @nyx_string_concat(%nyx_string* %2251, %nyx_string* %2253)
  %2255 = call i8* @nyx_string_to_cstr(%nyx_string* %2254)
  call void @nyx_print_string(i8* %2255)
  %2256 = getelementptr [82 x i8], [82 x i8]* @.str238, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2256, i64 81)
  %2258 = call i8* @nyx_string_to_cstr(%nyx_string* %2257)
  call void @nyx_print_string(i8* %2258)
  ret i64 0
else495:
  br label %merge496
merge496:
  %2259 = load %nyx_string*, %nyx_string** %2233
  %2260 = getelementptr [11 x i8], [11 x i8]* @.str239, i32 0, i32 0
  %2261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2260, i64 10)
  %2262 = call %nyx_string* @nyx_string_concat(%nyx_string* %2259, %nyx_string* %2261)
  %2263 = call i8* @nyx_string_to_cstr(%nyx_string* %2262)
  %2264 = call %nyx_string* @nyx_read_file(i8* %2263)
  %2265 = alloca %nyx_string*
  store %nyx_string* %2264, %nyx_string** %2265
  %2266 = load %nyx_string*, %nyx_string** %dir.ptr
  %2267 = getelementptr [11 x i8], [11 x i8]* @.str240, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2267, i64 10)
  %2269 = call %nyx_string* @nyx_string_concat(%nyx_string* %2266, %nyx_string* %2268)
  %2270 = load %nyx_string*, %nyx_string** %2265
  %2271 = load %nyx_string*, %nyx_string** %lang.ptr
  %2272 = call i64 @seed_file(%nyx_string* %2269, %nyx_string* %2270, %nyx_string* %2271)
  %2273 = load %nyx_string*, %nyx_string** %dir.ptr
  %2274 = getelementptr [17 x i8], [17 x i8]* @.str241, i32 0, i32 0
  %2275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2274, i64 16)
  %2276 = call %nyx_string* @nyx_string_concat(%nyx_string* %2273, %nyx_string* %2275)
  %2277 = call i1 @run_capabilities(%nyx_string* %2276)
  %2278 = alloca i1
  store i1 %2277, i1* %2278
  %2279 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2279, i64 10)
  %2281 = load %nyx_string*, %nyx_string** %dir.ptr
  %2282 = call %nyx_string* @nyx_string_concat(%nyx_string* %2280, %nyx_string* %2281)
  %2283 = getelementptr [18 x i8], [18 x i8]* @.str243, i32 0, i32 0
  %2284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2283, i64 17)
  %2285 = call %nyx_string* @nyx_string_concat(%nyx_string* %2282, %nyx_string* %2284)
  %2286 = call i8* @nyx_string_to_cstr(%nyx_string* %2285)
  %2287 = call %nyx_string* @nyx_exec(i8* %2286)
  %2288 = load %nyx_string*, %nyx_string** %2226
  %2289 = getelementptr [20 x i8], [20 x i8]* @.str244, i32 0, i32 0
  %2290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2289, i64 19)
  %2291 = call %nyx_string* @nyx_string_concat(%nyx_string* %2288, %nyx_string* %2290)
  %2292 = alloca %nyx_string*
  store %nyx_string* %2291, %nyx_string** %2292
  %2293 = load %nyx_string*, %nyx_string** %2292
  %2294 = call i8* @nyx_string_to_cstr(%nyx_string* %2293)
  %2295 = call i1 @nyx_file_exists(i8* %2294)
  br i1 %2295, label %then497, label %else498
then497:
  %2296 = load %nyx_string*, %nyx_string** %2292
  %2297 = call i8* @nyx_string_to_cstr(%nyx_string* %2296)
  %2298 = call %nyx_string* @nyx_read_file(i8* %2297)
  %2299 = alloca %nyx_string*
  store %nyx_string* %2298, %nyx_string** %2299
  %2300 = load %nyx_string*, %nyx_string** %dir.ptr
  %2301 = getelementptr [17 x i8], [17 x i8]* @.str245, i32 0, i32 0
  %2302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2301, i64 16)
  %2303 = call %nyx_string* @nyx_string_concat(%nyx_string* %2300, %nyx_string* %2302)
  %2304 = load %nyx_string*, %nyx_string** %2299
  %2305 = load %nyx_string*, %nyx_string** %lang.ptr
  %2306 = call i64 @seed_file(%nyx_string* %2303, %nyx_string* %2304, %nyx_string* %2305)
  br label %merge499
else498:
  %2307 = getelementptr [14 x i8], [14 x i8]* @.str246, i32 0, i32 0
  %2308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2307, i64 13)
  %2309 = load %nyx_string*, %nyx_string** %2292
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2308, %nyx_string* %2309)
  %2311 = getelementptr [71 x i8], [71 x i8]* @.str247, i32 0, i32 0
  %2312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2311, i64 70)
  %2313 = call %nyx_string* @nyx_string_concat(%nyx_string* %2310, %nyx_string* %2312)
  %2314 = call i8* @nyx_string_to_cstr(%nyx_string* %2313)
  call void @nyx_print_string(i8* %2314)
  %2315 = getelementptr [111 x i8], [111 x i8]* @.str248, i32 0, i32 0
  %2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2315, i64 110)
  %2317 = call i8* @nyx_string_to_cstr(%nyx_string* %2316)
  call void @nyx_print_string(i8* %2317)
  br label %merge499
merge499:
  %2318 = load %nyx_string*, %nyx_string** %2233
  %2319 = getelementptr [17 x i8], [17 x i8]* @.str249, i32 0, i32 0
  %2320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2319, i64 16)
  %2321 = call %nyx_string* @nyx_string_concat(%nyx_string* %2318, %nyx_string* %2320)
  %2322 = alloca %nyx_string*
  store %nyx_string* %2321, %nyx_string** %2322
  %2323 = load %nyx_string*, %nyx_string** %2322
  %2324 = call i8* @nyx_string_to_cstr(%nyx_string* %2323)
  %2325 = call i1 @nyx_file_exists(i8* %2324)
  br i1 %2325, label %then500, label %else501
then500:
  %2326 = load %nyx_string*, %nyx_string** %2322
  %2327 = call i8* @nyx_string_to_cstr(%nyx_string* %2326)
  %2328 = call { i64, i8* }* @nyx_readdir(i8* %2327)
  %2329 = alloca { i64, i8* }*
  store { i64, i8* }* %2328, { i64, i8* }** %2329
  %2330 = alloca i64
  store i64 0, i64* %2330
  %2331 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %2332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2331, i64 1)
  %2333 = alloca %nyx_string*
  store %nyx_string* %2332, %nyx_string** %2333
  %2334 = getelementptr [18 x i8], [18 x i8]* @.str251, i32 0, i32 0
  %2335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2334, i64 17)
  %2336 = alloca %nyx_string*
  store %nyx_string* %2335, %nyx_string** %2336
  %2337 = call i8* @llvm.stacksave()
  br label %while_cond503
while_cond503:
  %2338 = load i64, i64* %2330
  %2339 = load { i64, i8* }*, { i64, i8* }** %2329
  %2340 = call i64 @nyx_array_length({ i64, i8* }* %2339)
  %2341 = icmp slt i64 %2338, %2340
  br i1 %2341, label %while_body504, label %while_end505
while_body504:
  call void @llvm.stackrestore(i8* %2337)
  %2342 = load { i64, i8* }*, { i64, i8* }** %2329
  %2343 = load i64, i64* %2330
  %2344 = call i64 @nyx_array_get_checked({ i64, i8* }* %2342, i64 %2343, i64 2)
  %2345 = inttoptr i64 %2344 to %nyx_string*
  %2346 = alloca %nyx_string*
  store %nyx_string* %2345, %nyx_string** %2346
  %2347 = load %nyx_string*, %nyx_string** %2322
  %2348 = load %nyx_string*, %nyx_string** %2333
  %2349 = call %nyx_string* @nyx_string_concat(%nyx_string* %2347, %nyx_string* %2348)
  %2350 = load %nyx_string*, %nyx_string** %2346
  %2351 = call %nyx_string* @nyx_string_concat(%nyx_string* %2349, %nyx_string* %2350)
  %2352 = alloca %nyx_string*
  store %nyx_string* %2351, %nyx_string** %2352
  %2353 = load %nyx_string*, %nyx_string** %2352
  %2354 = call i8* @nyx_string_to_cstr(%nyx_string* %2353)
  %2355 = call i1 @nyx_file_exists(i8* %2354)
  br i1 %2355, label %then506, label %else507
then506:
  %2356 = load %nyx_string*, %nyx_string** %2352
  %2357 = call i8* @nyx_string_to_cstr(%nyx_string* %2356)
  %2358 = call %nyx_string* @nyx_read_file(i8* %2357)
  %2359 = alloca %nyx_string*
  store %nyx_string* %2358, %nyx_string** %2359
  %2360 = load %nyx_string*, %nyx_string** %dir.ptr
  %2361 = load %nyx_string*, %nyx_string** %2336
  %2362 = call %nyx_string* @nyx_string_concat(%nyx_string* %2360, %nyx_string* %2361)
  %2363 = load %nyx_string*, %nyx_string** %2346
  %2364 = call %nyx_string* @nyx_string_concat(%nyx_string* %2362, %nyx_string* %2363)
  %2365 = load %nyx_string*, %nyx_string** %2359
  %2366 = load %nyx_string*, %nyx_string** %lang.ptr
  %2367 = call i64 @seed_file(%nyx_string* %2364, %nyx_string* %2365, %nyx_string* %2366)
  br label %merge508
else507:
  br label %merge508
merge508:
  %2368 = load i64, i64* %2330
  %2369 = add i64 %2368, 1
  store i64 %2369, i64* %2330
  br label %while_cond503
while_end505:
  br label %merge502
else501:
  br label %merge502
merge502:
  %2370 = load %nyx_string*, %nyx_string** %dir.ptr
  %2371 = load %nyx_string*, %nyx_string** %lang.ptr
  %2372 = load %nyx_string*, %nyx_string** %agents.ptr
  %2373 = call i64 @seed_adapters(%nyx_string* %2370, %nyx_string* %2371, %nyx_string* %2372)
  ret i64 0
}

define internal %nyx_string* @sdd_generated_marker(
) {
  %2374 = getelementptr [28 x i8], [28 x i8]* @.str252, i32 0, i32 0
  %2375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2374, i64 27)
  ret %nyx_string* %2375
}

define internal %nyx_string* @sdd_msg(
%nyx_string* %lang.param, %nyx_string* %en.param, %nyx_string* %es.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %2376 = load %nyx_string*, %nyx_string** %lang.ptr
  %2377 = getelementptr [3 x i8], [3 x i8]* @.str253, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2377, i64 2)
  %2379 = call i1 @nyx_string_equals(%nyx_string* %2376, %nyx_string* %2378)
  br i1 %2379, label %then509, label %else510
then509:
  %2380 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %2380
else510:
  br label %merge511
merge511:
  %2381 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %2381
}

define internal i1 @sdd_seed_template(
%nyx_string* %tpl_dir.param, %nyx_string* %name.param, %nyx_string* %dst.param, %nyx_string* %lang.param) {
  %tpl_dir.ptr = alloca %nyx_string*
  store %nyx_string* %tpl_dir.param, %nyx_string** %tpl_dir.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2382 = load %nyx_string*, %nyx_string** %dst.ptr
  %2383 = call i8* @nyx_string_to_cstr(%nyx_string* %2382)
  %2384 = call i1 @nyx_file_exists(i8* %2383)
  br i1 %2384, label %then512, label %else513
then512:
  %2385 = load %nyx_string*, %nyx_string** %lang.ptr
  %2386 = getelementptr [28 x i8], [28 x i8]* @.str254, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2386, i64 27)
  %2388 = load %nyx_string*, %nyx_string** %dst.ptr
  %2389 = call %nyx_string* @nyx_string_concat(%nyx_string* %2387, %nyx_string* %2388)
  %2390 = getelementptr [25 x i8], [25 x i8]* @.str255, i32 0, i32 0
  %2391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2390, i64 24)
  %2392 = load %nyx_string*, %nyx_string** %dst.ptr
  %2393 = call %nyx_string* @nyx_string_concat(%nyx_string* %2391, %nyx_string* %2392)
  %2394 = call %nyx_string* @sdd_msg(%nyx_string* %2385, %nyx_string* %2389, %nyx_string* %2393)
  %2395 = call i8* @nyx_string_to_cstr(%nyx_string* %2394)
  call void @nyx_print_string(i8* %2395)
  ret i1 0
else513:
  br label %merge514
merge514:
  %2396 = load %nyx_string*, %nyx_string** %tpl_dir.ptr
  %2397 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2397, i64 1)
  %2399 = call %nyx_string* @nyx_string_concat(%nyx_string* %2396, %nyx_string* %2398)
  %2400 = load %nyx_string*, %nyx_string** %name.ptr
  %2401 = call %nyx_string* @nyx_string_concat(%nyx_string* %2399, %nyx_string* %2400)
  %2402 = alloca %nyx_string*
  store %nyx_string* %2401, %nyx_string** %2402
  %2403 = load %nyx_string*, %nyx_string** %2402
  %2404 = call i8* @nyx_string_to_cstr(%nyx_string* %2403)
  %2405 = call i1 @nyx_file_exists(i8* %2404)
  %2406 = icmp eq i1 %2405, 0
  br i1 %2406, label %then515, label %else516
then515:
  %2407 = getelementptr [27 x i8], [27 x i8]* @.str257, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2407, i64 26)
  %2409 = load %nyx_string*, %nyx_string** %2402
  %2410 = call %nyx_string* @nyx_string_concat(%nyx_string* %2408, %nyx_string* %2409)
  %2411 = getelementptr [19 x i8], [19 x i8]* @.str258, i32 0, i32 0
  %2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2411, i64 18)
  %2413 = call %nyx_string* @nyx_string_concat(%nyx_string* %2410, %nyx_string* %2412)
  %2414 = load %nyx_string*, %nyx_string** %dst.ptr
  %2415 = call %nyx_string* @nyx_string_concat(%nyx_string* %2413, %nyx_string* %2414)
  %2416 = getelementptr [16 x i8], [16 x i8]* @.str259, i32 0, i32 0
  %2417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2416, i64 15)
  %2418 = call %nyx_string* @nyx_string_concat(%nyx_string* %2415, %nyx_string* %2417)
  %2419 = call i8* @nyx_string_to_cstr(%nyx_string* %2418)
  call void @nyx_print_string(i8* %2419)
  ret i1 0
else516:
  br label %merge517
merge517:
  %2420 = load %nyx_string*, %nyx_string** %2402
  %2421 = call i8* @nyx_string_to_cstr(%nyx_string* %2420)
  %2422 = call %nyx_string* @nyx_read_file(i8* %2421)
  %2423 = alloca %nyx_string*
  store %nyx_string* %2422, %nyx_string** %2423
  %2424 = load %nyx_string*, %nyx_string** %dst.ptr
  %2425 = load %nyx_string*, %nyx_string** %2423
  %2426 = load %nyx_string*, %nyx_string** %lang.ptr
  %2427 = call i64 @seed_file(%nyx_string* %2424, %nyx_string* %2425, %nyx_string* %2426)
  %2428 = getelementptr [3 x i8], [3 x i8]* @.str260, i32 0, i32 0
  %2429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2428, i64 2)
  %2430 = load %nyx_string*, %nyx_string** %dst.ptr
  %2431 = call %nyx_string* @nyx_string_concat(%nyx_string* %2429, %nyx_string* %2430)
  %2432 = call i8* @nyx_string_to_cstr(%nyx_string* %2431)
  call void @nyx_print_string(i8* %2432)
  ret i1 1
}

define internal %nyx_string* @nx_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %2433 = getelementptr [1 x i8], [1 x i8]* @.str261, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2433, i64 0)
  %2435 = alloca %nyx_string*
  store %nyx_string* %2434, %nyx_string** %2435
  %2436 = alloca i64
  store i64 0, i64* %2436
  %2437 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2437, i64 1)
  %2439 = alloca %nyx_string*
  store %nyx_string* %2438, %nyx_string** %2439
  %2440 = getelementptr [3 x i8], [3 x i8]* @.str263, i32 0, i32 0
  %2441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2440, i64 2)
  %2442 = alloca %nyx_string*
  store %nyx_string* %2441, %nyx_string** %2442
  %2443 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %2444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2443, i64 1)
  %2445 = alloca %nyx_string*
  store %nyx_string* %2444, %nyx_string** %2445
  %2446 = getelementptr [3 x i8], [3 x i8]* @.str265, i32 0, i32 0
  %2447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2446, i64 2)
  %2448 = alloca %nyx_string*
  store %nyx_string* %2447, %nyx_string** %2448
  %2449 = call i8* @llvm.stacksave()
  br label %while_cond518
while_cond518:
  %2450 = load i64, i64* %2436
  %2451 = load %nyx_string*, %nyx_string** %s.ptr
  %2452 = call i64 @nyx_string_byte_length(%nyx_string* %2451)
  %2453 = icmp slt i64 %2450, %2452
  br i1 %2453, label %while_body519, label %while_end520
while_body519:
  call void @llvm.stackrestore(i8* %2449)
  %2454 = load %nyx_string*, %nyx_string** %s.ptr
  %2455 = load i64, i64* %2436
  %2456 = load i64, i64* %2436
  %2457 = add i64 %2456, 1
  %2458 = call %nyx_string* @nyx_string_substring(%nyx_string* %2454, i64 %2455, i64 %2457)
  %2459 = alloca %nyx_string*
  store %nyx_string* %2458, %nyx_string** %2459
  %2460 = load %nyx_string*, %nyx_string** %2459
  %2461 = load %nyx_string*, %nyx_string** %2439
  %2462 = call i1 @nyx_string_equals(%nyx_string* %2460, %nyx_string* %2461)
  br i1 %2462, label %then521, label %else522
then521:
  %2463 = load %nyx_string*, %nyx_string** %2435
  %2464 = load %nyx_string*, %nyx_string** %2442
  %2465 = call %nyx_string* @nyx_string_concat(%nyx_string* %2463, %nyx_string* %2464)
  store %nyx_string* %2465, %nyx_string** %2435
  br label %merge523
else522:
  %2466 = load %nyx_string*, %nyx_string** %2459
  %2467 = load %nyx_string*, %nyx_string** %2445
  %2468 = call i1 @nyx_string_equals(%nyx_string* %2466, %nyx_string* %2467)
  br i1 %2468, label %then524, label %else525
then524:
  %2469 = load %nyx_string*, %nyx_string** %2435
  %2470 = load %nyx_string*, %nyx_string** %2448
  %2471 = call %nyx_string* @nyx_string_concat(%nyx_string* %2469, %nyx_string* %2470)
  store %nyx_string* %2471, %nyx_string** %2435
  br label %merge526
else525:
  %2472 = load %nyx_string*, %nyx_string** %2435
  %2473 = load %nyx_string*, %nyx_string** %2459
  %2474 = call %nyx_string* @nyx_string_concat(%nyx_string* %2472, %nyx_string* %2473)
  store %nyx_string* %2474, %nyx_string** %2435
  br label %merge526
merge526:
  br label %merge523
merge523:
  %2475 = load i64, i64* %2436
  %2476 = add i64 %2475, 1
  store i64 %2476, i64* %2436
  br label %while_cond518
while_end520:
  %2477 = load %nyx_string*, %nyx_string** %2435
  ret %nyx_string* %2477
}

define internal %nyx_string* @evidence_body(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2478 = call %nyx_string* @toolchain_version()
  %2479 = alloca %nyx_string*
  store %nyx_string* %2478, %nyx_string** %2479
  %2480 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %2481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2480, i64 0)
  %2482 = alloca %nyx_string*
  store %nyx_string* %2481, %nyx_string** %2482
  %2483 = load %nyx_string*, %nyx_string** %2482
  %2484 = load %nyx_string*, %nyx_string** %lang.ptr
  %2485 = getelementptr [20 x i8], [20 x i8]* @.str267, i32 0, i32 0
  %2486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2485, i64 19)
  %2487 = load %nyx_string*, %nyx_string** %2479
  %2488 = call %nyx_string* @nyx_string_concat(%nyx_string* %2486, %nyx_string* %2487)
  %2489 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %2490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2489, i64 1)
  %2491 = call %nyx_string* @nyx_string_concat(%nyx_string* %2488, %nyx_string* %2490)
  %2492 = getelementptr [21 x i8], [21 x i8]* @.str269, i32 0, i32 0
  %2493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2492, i64 20)
  %2494 = load %nyx_string*, %nyx_string** %2479
  %2495 = call %nyx_string* @nyx_string_concat(%nyx_string* %2493, %nyx_string* %2494)
  %2496 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2496, i64 1)
  %2498 = call %nyx_string* @nyx_string_concat(%nyx_string* %2495, %nyx_string* %2497)
  %2499 = call %nyx_string* @sdd_msg(%nyx_string* %2484, %nyx_string* %2491, %nyx_string* %2498)
  %2500 = call %nyx_string* @nyx_string_concat(%nyx_string* %2483, %nyx_string* %2499)
  store %nyx_string* %2500, %nyx_string** %2482
  %2501 = load %nyx_string*, %nyx_string** %2482
  %2502 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %2503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2502, i64 6)
  %2504 = call %nyx_string* @nyx_string_concat(%nyx_string* %2501, %nyx_string* %2503)
  %2505 = call %nyx_string* @sdd_generated_marker()
  %2506 = call %nyx_string* @nyx_string_concat(%nyx_string* %2504, %nyx_string* %2505)
  %2507 = getelementptr [110 x i8], [110 x i8]* @.str272, i32 0, i32 0
  %2508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2507, i64 109)
  %2509 = call %nyx_string* @nyx_string_concat(%nyx_string* %2506, %nyx_string* %2508)
  store %nyx_string* %2509, %nyx_string** %2482
  %2510 = load %nyx_string*, %nyx_string** %2482
  %2511 = load %nyx_string*, %nyx_string** %lang.ptr
  %2512 = getelementptr [319 x i8], [319 x i8]* @.str273, i32 0, i32 0
  %2513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2512, i64 318)
  %2514 = getelementptr [334 x i8], [334 x i8]* @.str274, i32 0, i32 0
  %2515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2514, i64 333)
  %2516 = call %nyx_string* @sdd_msg(%nyx_string* %2511, %nyx_string* %2513, %nyx_string* %2515)
  %2517 = call %nyx_string* @nyx_string_concat(%nyx_string* %2510, %nyx_string* %2516)
  store %nyx_string* %2517, %nyx_string** %2482
  %2518 = load %nyx_string*, %nyx_string** %2482
  %2519 = getelementptr [2 x i8], [2 x i8]* @.str275, i32 0, i32 0
  %2520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2519, i64 1)
  %2521 = call %nyx_string* @nyx_string_concat(%nyx_string* %2518, %nyx_string* %2520)
  store %nyx_string* %2521, %nyx_string** %2482
  %2522 = call { i64, i8* }* @gotchas_table()
  %2523 = alloca { i64, i8* }*
  store { i64, i8* }* %2522, { i64, i8* }** %2523
  %2524 = alloca i64
  store i64 0, i64* %2524
  %2525 = getelementptr [5 x i8], [5 x i8]* @.str276, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2525, i64 4)
  %2527 = alloca %nyx_string*
  store %nyx_string* %2526, %nyx_string** %2527
  %2528 = getelementptr [9 x i8], [9 x i8]* @.str277, i32 0, i32 0
  %2529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2528, i64 8)
  %2530 = alloca %nyx_string*
  store %nyx_string* %2529, %nyx_string** %2530
  %2531 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %2532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2531, i64 0)
  %2533 = alloca %nyx_string*
  store %nyx_string* %2532, %nyx_string** %2533
  %2534 = getelementptr [5 x i8], [5 x i8]* @.str279, i32 0, i32 0
  %2535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2534, i64 4)
  %2536 = alloca %nyx_string*
  store %nyx_string* %2535, %nyx_string** %2536
  %2537 = getelementptr [5 x i8], [5 x i8]* @.str280, i32 0, i32 0
  %2538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2537, i64 4)
  %2539 = alloca %nyx_string*
  store %nyx_string* %2538, %nyx_string** %2539
  %2540 = getelementptr [3 x i8], [3 x i8]* @.str281, i32 0, i32 0
  %2541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2540, i64 2)
  %2542 = alloca %nyx_string*
  store %nyx_string* %2541, %nyx_string** %2542
  %2543 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %2544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2543, i64 5)
  %2545 = alloca %nyx_string*
  store %nyx_string* %2544, %nyx_string** %2545
  %2546 = getelementptr [7 x i8], [7 x i8]* @.str283, i32 0, i32 0
  %2547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2546, i64 6)
  %2548 = alloca %nyx_string*
  store %nyx_string* %2547, %nyx_string** %2548
  %2549 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2549, i64 4)
  %2551 = alloca %nyx_string*
  store %nyx_string* %2550, %nyx_string** %2551
  %2552 = getelementptr [9 x i8], [9 x i8]* @.str285, i32 0, i32 0
  %2553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2552, i64 8)
  %2554 = alloca %nyx_string*
  store %nyx_string* %2553, %nyx_string** %2554
  %2555 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2555, i64 2)
  %2557 = alloca %nyx_string*
  store %nyx_string* %2556, %nyx_string** %2557
  %2558 = getelementptr [9 x i8], [9 x i8]* @.str287, i32 0, i32 0
  %2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2558, i64 8)
  %2560 = alloca %nyx_string*
  store %nyx_string* %2559, %nyx_string** %2560
  %2561 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %2562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2561, i64 4)
  %2563 = alloca %nyx_string*
  store %nyx_string* %2562, %nyx_string** %2563
  %2564 = getelementptr [5 x i8], [5 x i8]* @.str289, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2564, i64 4)
  %2566 = alloca %nyx_string*
  store %nyx_string* %2565, %nyx_string** %2566
  %2567 = getelementptr [9 x i8], [9 x i8]* @.str290, i32 0, i32 0
  %2568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2567, i64 8)
  %2569 = alloca %nyx_string*
  store %nyx_string* %2568, %nyx_string** %2569
  %2570 = getelementptr [7 x i8], [7 x i8]* @.str291, i32 0, i32 0
  %2571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2570, i64 6)
  %2572 = alloca %nyx_string*
  store %nyx_string* %2571, %nyx_string** %2572
  %2573 = getelementptr [14 x i8], [14 x i8]* @.str292, i32 0, i32 0
  %2574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2573, i64 13)
  %2575 = alloca %nyx_string*
  store %nyx_string* %2574, %nyx_string** %2575
  %2576 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2576, i64 1)
  %2578 = alloca %nyx_string*
  store %nyx_string* %2577, %nyx_string** %2578
  %2579 = getelementptr [12 x i8], [12 x i8]* @.str294, i32 0, i32 0
  %2580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2579, i64 11)
  %2581 = alloca %nyx_string*
  store %nyx_string* %2580, %nyx_string** %2581
  %2582 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2582, i64 1)
  %2584 = alloca %nyx_string*
  store %nyx_string* %2583, %nyx_string** %2584
  %2585 = call i8* @llvm.stacksave()
  br label %while_cond527
while_cond527:
  %2586 = load i64, i64* %2524
  %2587 = load { i64, i8* }*, { i64, i8* }** %2523
  %2588 = call i64 @nyx_array_length({ i64, i8* }* %2587)
  %2589 = icmp slt i64 %2586, %2588
  br i1 %2589, label %while_body528, label %while_end529
while_body528:
  call void @llvm.stackrestore(i8* %2585)
  %2590 = load { i64, i8* }*, { i64, i8* }** %2523
  %2591 = load i64, i64* %2524
  %2592 = call i64 @nyx_array_get({ i64, i8* }* %2590, i64 %2591)
  %2593 = inttoptr i64 %2592 to { i64, i8* }*
  %2594 = alloca { i64, i8* }*
  store { i64, i8* }* %2593, { i64, i8* }** %2594
  %2595 = load { i64, i8* }*, { i64, i8* }** %2594
  %2596 = load %nyx_string*, %nyx_string** %2527
  %2597 = call %nyx_string* @gotcha_field({ i64, i8* }* %2595, %nyx_string* %2596)
  %2598 = alloca %nyx_string*
  store %nyx_string* %2597, %nyx_string** %2598
  %2599 = load { i64, i8* }*, { i64, i8* }** %2594
  %2600 = load %nyx_string*, %nyx_string** %2530
  %2601 = call %nyx_string* @gotcha_field({ i64, i8* }* %2599, %nyx_string* %2600)
  %2602 = alloca %nyx_string*
  store %nyx_string* %2601, %nyx_string** %2602
  %2603 = load %nyx_string*, %nyx_string** %2602
  %2604 = load %nyx_string*, %nyx_string** %2533
  %2605 = call i1 @nyx_string_equals(%nyx_string* %2603, %nyx_string* %2604)
  br i1 %2605, label %then530, label %else531
then530:
  %2606 = alloca i1
  store i1 true, i1* %2606
  %2607 = load %nyx_string*, %nyx_string** %2598
  %2608 = load %nyx_string*, %nyx_string** %2536
  %2609 = call i1 @nyx_string_equals(%nyx_string* %2607, %nyx_string* %2608)
  br i1 %2609, label %sc_or_end534, label %sc_or_rhs533
sc_or_rhs533:
  %2610 = load %nyx_string*, %nyx_string** %2598
  %2611 = load %nyx_string*, %nyx_string** %2539
  %2612 = call i1 @nyx_string_equals(%nyx_string* %2610, %nyx_string* %2611)
  store i1 %2612, i1* %2606
  br label %sc_or_end534
sc_or_end534:
  %2613 = load i1, i1* %2606
  br i1 %2613, label %then535, label %else536
then535:
  %2614 = load { i64, i8* }*, { i64, i8* }** %2594
  %2615 = load %nyx_string*, %nyx_string** %2542
  %2616 = call %nyx_string* @gotcha_field({ i64, i8* }* %2614, %nyx_string* %2615)
  %2617 = alloca %nyx_string*
  store %nyx_string* %2616, %nyx_string** %2617
  %2618 = load { i64, i8* }*, { i64, i8* }** %2594
  %2619 = load %nyx_string*, %nyx_string** %2545
  %2620 = call %nyx_string* @gotcha_field({ i64, i8* }* %2618, %nyx_string* %2619)
  %2621 = alloca %nyx_string*
  store %nyx_string* %2620, %nyx_string** %2621
  %2622 = load { i64, i8* }*, { i64, i8* }** %2594
  %2623 = load %nyx_string*, %nyx_string** %2548
  %2624 = call %nyx_string* @gotcha_field({ i64, i8* }* %2622, %nyx_string* %2623)
  %2625 = alloca %nyx_string*
  store %nyx_string* %2624, %nyx_string** %2625
  %2626 = load { i64, i8* }*, { i64, i8* }** %2594
  %2627 = load %nyx_string*, %nyx_string** %2551
  %2628 = call %nyx_string* @gotcha_field({ i64, i8* }* %2626, %nyx_string* %2627)
  %2629 = alloca %nyx_string*
  store %nyx_string* %2628, %nyx_string** %2629
  %2630 = load { i64, i8* }*, { i64, i8* }** %2594
  %2631 = load %nyx_string*, %nyx_string** %2554
  %2632 = call %nyx_string* @gotcha_field({ i64, i8* }* %2630, %nyx_string* %2631)
  %2633 = alloca %nyx_string*
  store %nyx_string* %2632, %nyx_string** %2633
  %2634 = load %nyx_string*, %nyx_string** %lang.ptr
  %2635 = load %nyx_string*, %nyx_string** %2557
  %2636 = call i1 @nyx_string_equals(%nyx_string* %2634, %nyx_string* %2635)
  br i1 %2636, label %then538, label %else539
then538:
  %2637 = load { i64, i8* }*, { i64, i8* }** %2594
  %2638 = load %nyx_string*, %nyx_string** %2560
  %2639 = call %nyx_string* @gotcha_field({ i64, i8* }* %2637, %nyx_string* %2638)
  store %nyx_string* %2639, %nyx_string** %2633
  br label %merge540
else539:
  br label %merge540
merge540:
  %2640 = load %nyx_string*, %nyx_string** %2482
  %2641 = load %nyx_string*, %nyx_string** %2563
  %2642 = call %nyx_string* @nyx_string_concat(%nyx_string* %2640, %nyx_string* %2641)
  %2643 = load %nyx_string*, %nyx_string** %2617
  %2644 = call %nyx_string* @nyx_string_concat(%nyx_string* %2642, %nyx_string* %2643)
  %2645 = load %nyx_string*, %nyx_string** %2566
  %2646 = call %nyx_string* @nyx_string_concat(%nyx_string* %2644, %nyx_string* %2645)
  %2647 = load %nyx_string*, %nyx_string** %2598
  %2648 = call %nyx_string* @nyx_string_concat(%nyx_string* %2646, %nyx_string* %2647)
  %2649 = load %nyx_string*, %nyx_string** %2569
  %2650 = call %nyx_string* @nyx_string_concat(%nyx_string* %2648, %nyx_string* %2649)
  %2651 = load %nyx_string*, %nyx_string** %2621
  %2652 = call %nyx_string* @nyx_string_concat(%nyx_string* %2650, %nyx_string* %2651)
  %2653 = load %nyx_string*, %nyx_string** %2572
  %2654 = call %nyx_string* @nyx_string_concat(%nyx_string* %2652, %nyx_string* %2653)
  %2655 = load %nyx_string*, %nyx_string** %2633
  %2656 = call %nyx_string* @nyx_string_concat(%nyx_string* %2654, %nyx_string* %2655)
  store %nyx_string* %2656, %nyx_string** %2482
  %2657 = load %nyx_string*, %nyx_string** %2625
  %2658 = load %nyx_string*, %nyx_string** %2533
  %2659 = call i1 @nyx_string_equals(%nyx_string* %2657, %nyx_string* %2658)
  %2660 = xor i1 %2659, true
  br i1 %2660, label %then541, label %else542
then541:
  %2661 = load %nyx_string*, %nyx_string** %2482
  %2662 = load %nyx_string*, %nyx_string** %2575
  %2663 = call %nyx_string* @nyx_string_concat(%nyx_string* %2661, %nyx_string* %2662)
  %2664 = load %nyx_string*, %nyx_string** %2625
  %2665 = call %nyx_string* @nyx_string_concat(%nyx_string* %2663, %nyx_string* %2664)
  %2666 = load %nyx_string*, %nyx_string** %2578
  %2667 = call %nyx_string* @nyx_string_concat(%nyx_string* %2665, %nyx_string* %2666)
  store %nyx_string* %2667, %nyx_string** %2482
  br label %merge543
else542:
  br label %merge543
merge543:
  %2668 = load %nyx_string*, %nyx_string** %2629
  %2669 = load %nyx_string*, %nyx_string** %2533
  %2670 = call i1 @nyx_string_equals(%nyx_string* %2668, %nyx_string* %2669)
  %2671 = xor i1 %2670, true
  br i1 %2671, label %then544, label %else545
then544:
  %2672 = load %nyx_string*, %nyx_string** %2482
  %2673 = load %nyx_string*, %nyx_string** %2581
  %2674 = call %nyx_string* @nyx_string_concat(%nyx_string* %2672, %nyx_string* %2673)
  %2675 = load %nyx_string*, %nyx_string** %2629
  %2676 = call %nyx_string* @nyx_string_concat(%nyx_string* %2674, %nyx_string* %2675)
  %2677 = load %nyx_string*, %nyx_string** %2578
  %2678 = call %nyx_string* @nyx_string_concat(%nyx_string* %2676, %nyx_string* %2677)
  store %nyx_string* %2678, %nyx_string** %2482
  br label %merge546
else545:
  br label %merge546
merge546:
  %2679 = load %nyx_string*, %nyx_string** %2482
  %2680 = load %nyx_string*, %nyx_string** %2584
  %2681 = call %nyx_string* @nyx_string_concat(%nyx_string* %2679, %nyx_string* %2680)
  store %nyx_string* %2681, %nyx_string** %2482
  br label %merge537
else536:
  br label %merge537
merge537:
  br label %merge532
else531:
  br label %merge532
merge532:
  %2682 = load i64, i64* %2524
  %2683 = add i64 %2682, 1
  store i64 %2683, i64* %2524
  br label %while_cond527
while_end529:
  %2684 = load %nyx_string*, %nyx_string** %2482
  %2685 = load %nyx_string*, %nyx_string** %lang.ptr
  %2686 = getelementptr [14 x i8], [14 x i8]* @.str296, i32 0, i32 0
  %2687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2686, i64 13)
  %2688 = getelementptr [16 x i8], [16 x i8]* @.str297, i32 0, i32 0
  %2689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2688, i64 15)
  %2690 = call %nyx_string* @sdd_msg(%nyx_string* %2685, %nyx_string* %2687, %nyx_string* %2689)
  %2691 = call %nyx_string* @nyx_string_concat(%nyx_string* %2684, %nyx_string* %2690)
  store %nyx_string* %2691, %nyx_string** %2482
  %2692 = load %nyx_string*, %nyx_string** %2482
  %2693 = load %nyx_string*, %nyx_string** %lang.ptr
  %2694 = getelementptr [139 x i8], [139 x i8]* @.str298, i32 0, i32 0
  %2695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2694, i64 138)
  %2696 = getelementptr [150 x i8], [150 x i8]* @.str299, i32 0, i32 0
  %2697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2696, i64 149)
  %2698 = call %nyx_string* @sdd_msg(%nyx_string* %2693, %nyx_string* %2695, %nyx_string* %2697)
  %2699 = call %nyx_string* @nyx_string_concat(%nyx_string* %2692, %nyx_string* %2698)
  store %nyx_string* %2699, %nyx_string** %2482
  %2700 = alloca i64
  store i64 0, i64* %2700
  %2701 = getelementptr [9 x i8], [9 x i8]* @.str300, i32 0, i32 0
  %2702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2701, i64 8)
  %2703 = alloca %nyx_string*
  store %nyx_string* %2702, %nyx_string** %2703
  %2704 = getelementptr [1 x i8], [1 x i8]* @.str301, i32 0, i32 0
  %2705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2704, i64 0)
  %2706 = alloca %nyx_string*
  store %nyx_string* %2705, %nyx_string** %2706
  %2707 = getelementptr [3 x i8], [3 x i8]* @.str302, i32 0, i32 0
  %2708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2707, i64 2)
  %2709 = alloca %nyx_string*
  store %nyx_string* %2708, %nyx_string** %2709
  %2710 = getelementptr [9 x i8], [9 x i8]* @.str303, i32 0, i32 0
  %2711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2710, i64 8)
  %2712 = alloca %nyx_string*
  store %nyx_string* %2711, %nyx_string** %2712
  %2713 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %2714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2713, i64 2)
  %2715 = alloca %nyx_string*
  store %nyx_string* %2714, %nyx_string** %2715
  %2716 = getelementptr [9 x i8], [9 x i8]* @.str305, i32 0, i32 0
  %2717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2716, i64 8)
  %2718 = alloca %nyx_string*
  store %nyx_string* %2717, %nyx_string** %2718
  %2719 = getelementptr [5 x i8], [5 x i8]* @.str306, i32 0, i32 0
  %2720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2719, i64 4)
  %2721 = alloca %nyx_string*
  store %nyx_string* %2720, %nyx_string** %2721
  %2722 = getelementptr [14 x i8], [14 x i8]* @.str307, i32 0, i32 0
  %2723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2722, i64 13)
  %2724 = alloca %nyx_string*
  store %nyx_string* %2723, %nyx_string** %2724
  %2725 = getelementptr [7 x i8], [7 x i8]* @.str308, i32 0, i32 0
  %2726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2725, i64 6)
  %2727 = alloca %nyx_string*
  store %nyx_string* %2726, %nyx_string** %2727
  %2728 = getelementptr [2 x i8], [2 x i8]* @.str309, i32 0, i32 0
  %2729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2728, i64 1)
  %2730 = alloca %nyx_string*
  store %nyx_string* %2729, %nyx_string** %2730
  %2731 = call i8* @llvm.stacksave()
  br label %while_cond547
while_cond547:
  %2732 = load i64, i64* %2700
  %2733 = load { i64, i8* }*, { i64, i8* }** %2523
  %2734 = call i64 @nyx_array_length({ i64, i8* }* %2733)
  %2735 = icmp slt i64 %2732, %2734
  br i1 %2735, label %while_body548, label %while_end549
while_body548:
  call void @llvm.stackrestore(i8* %2731)
  %2736 = load { i64, i8* }*, { i64, i8* }** %2523
  %2737 = load i64, i64* %2700
  %2738 = call i64 @nyx_array_get({ i64, i8* }* %2736, i64 %2737)
  %2739 = inttoptr i64 %2738 to { i64, i8* }*
  %2740 = alloca { i64, i8* }*
  store { i64, i8* }* %2739, { i64, i8* }** %2740
  %2741 = load { i64, i8* }*, { i64, i8* }** %2740
  %2742 = load %nyx_string*, %nyx_string** %2703
  %2743 = call %nyx_string* @gotcha_field({ i64, i8* }* %2741, %nyx_string* %2742)
  %2744 = alloca %nyx_string*
  store %nyx_string* %2743, %nyx_string** %2744
  %2745 = load %nyx_string*, %nyx_string** %2744
  %2746 = load %nyx_string*, %nyx_string** %2706
  %2747 = call i1 @nyx_string_equals(%nyx_string* %2745, %nyx_string* %2746)
  %2748 = xor i1 %2747, true
  br i1 %2748, label %then550, label %else551
then550:
  %2749 = load { i64, i8* }*, { i64, i8* }** %2740
  %2750 = load %nyx_string*, %nyx_string** %2709
  %2751 = call %nyx_string* @gotcha_field({ i64, i8* }* %2749, %nyx_string* %2750)
  %2752 = alloca %nyx_string*
  store %nyx_string* %2751, %nyx_string** %2752
  %2753 = load { i64, i8* }*, { i64, i8* }** %2740
  %2754 = load %nyx_string*, %nyx_string** %2712
  %2755 = call %nyx_string* @gotcha_field({ i64, i8* }* %2753, %nyx_string* %2754)
  %2756 = alloca %nyx_string*
  store %nyx_string* %2755, %nyx_string** %2756
  %2757 = load %nyx_string*, %nyx_string** %lang.ptr
  %2758 = load %nyx_string*, %nyx_string** %2715
  %2759 = call i1 @nyx_string_equals(%nyx_string* %2757, %nyx_string* %2758)
  br i1 %2759, label %then553, label %else554
then553:
  %2760 = load { i64, i8* }*, { i64, i8* }** %2740
  %2761 = load %nyx_string*, %nyx_string** %2718
  %2762 = call %nyx_string* @gotcha_field({ i64, i8* }* %2760, %nyx_string* %2761)
  store %nyx_string* %2762, %nyx_string** %2756
  br label %merge555
else554:
  br label %merge555
merge555:
  %2763 = load %nyx_string*, %nyx_string** %2482
  %2764 = load %nyx_string*, %nyx_string** %2721
  %2765 = call %nyx_string* @nyx_string_concat(%nyx_string* %2763, %nyx_string* %2764)
  %2766 = load %nyx_string*, %nyx_string** %2752
  %2767 = call %nyx_string* @nyx_string_concat(%nyx_string* %2765, %nyx_string* %2766)
  %2768 = load %nyx_string*, %nyx_string** %2724
  %2769 = call %nyx_string* @nyx_string_concat(%nyx_string* %2767, %nyx_string* %2768)
  %2770 = load %nyx_string*, %nyx_string** %2744
  %2771 = call %nyx_string* @nyx_string_concat(%nyx_string* %2769, %nyx_string* %2770)
  %2772 = load %nyx_string*, %nyx_string** %2727
  %2773 = call %nyx_string* @nyx_string_concat(%nyx_string* %2771, %nyx_string* %2772)
  %2774 = load %nyx_string*, %nyx_string** %2756
  %2775 = call %nyx_string* @nyx_string_concat(%nyx_string* %2773, %nyx_string* %2774)
  %2776 = load %nyx_string*, %nyx_string** %2730
  %2777 = call %nyx_string* @nyx_string_concat(%nyx_string* %2775, %nyx_string* %2776)
  store %nyx_string* %2777, %nyx_string** %2482
  br label %merge552
else551:
  br label %merge552
merge552:
  %2778 = load i64, i64* %2700
  %2779 = add i64 %2778, 1
  store i64 %2779, i64* %2700
  br label %while_cond547
while_end549:
  %2780 = load %nyx_string*, %nyx_string** %2482
  ret %nyx_string* %2780
}

define internal i64 @write_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2781 = load %nyx_string*, %nyx_string** %dir.ptr
  %2782 = getelementptr [20 x i8], [20 x i8]* @.str310, i32 0, i32 0
  %2783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2782, i64 19)
  %2784 = call %nyx_string* @nyx_string_concat(%nyx_string* %2781, %nyx_string* %2783)
  %2785 = call %nyx_string* @toolchain_version()
  %2786 = call %nyx_string* @nyx_string_concat(%nyx_string* %2784, %nyx_string* %2785)
  %2787 = getelementptr [4 x i8], [4 x i8]* @.str311, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2787, i64 3)
  %2789 = call %nyx_string* @nyx_string_concat(%nyx_string* %2786, %nyx_string* %2788)
  %2790 = alloca %nyx_string*
  store %nyx_string* %2789, %nyx_string** %2790
  %2791 = load %nyx_string*, %nyx_string** %lang.ptr
  %2792 = call %nyx_string* @evidence_body(%nyx_string* %2791)
  %2793 = load %nyx_string*, %nyx_string** %lang.ptr
  %2794 = call %nyx_string* @seed_body(%nyx_string* %2792, %nyx_string* %2793)
  %2795 = alloca %nyx_string*
  store %nyx_string* %2794, %nyx_string** %2795
  %2796 = load %nyx_string*, %nyx_string** %2790
  %2797 = call i8* @nyx_string_to_cstr(%nyx_string* %2796)
  %2798 = call i1 @nyx_file_exists(i8* %2797)
  br i1 %2798, label %then556, label %else557
then556:
  %2799 = load %nyx_string*, %nyx_string** %2790
  %2800 = call i8* @nyx_string_to_cstr(%nyx_string* %2799)
  %2801 = call %nyx_string* @nyx_read_file(i8* %2800)
  %2802 = alloca %nyx_string*
  store %nyx_string* %2801, %nyx_string** %2802
  %2803 = load %nyx_string*, %nyx_string** %2802
  %2804 = load %nyx_string*, %nyx_string** %2795
  %2805 = call i1 @nyx_string_equals(%nyx_string* %2803, %nyx_string* %2804)
  br i1 %2805, label %then559, label %else560
then559:
  ret i64 0
else560:
  br label %merge561
merge561:
  %2806 = load %nyx_string*, %nyx_string** %2802
  %2807 = call %nyx_string* @sdd_generated_marker()
  %2808 = call i64 @nyx_string_index_of(%nyx_string* %2806, %nyx_string* %2807)
  %2809 = icmp slt i64 %2808, 0
  br i1 %2809, label %then562, label %else563
then562:
  ret i64 2
else563:
  br label %merge564
merge564:
  br label %merge558
else557:
  br label %merge558
merge558:
  %2810 = load %nyx_string*, %nyx_string** %2790
  %2811 = load %nyx_string*, %nyx_string** %2795
  %2812 = call i8* @nyx_string_to_cstr(%nyx_string* %2810)
  %2813 = call i1 @nyx_write_file_safe(i8* %2812, %nyx_string* %2811)
  ret i64 1
}

define internal %nyx_string* @constitution_test_body(
) {
  %2814 = getelementptr [1 x i8], [1 x i8]* @.str312, i32 0, i32 0
  %2815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2814, i64 0)
  %2816 = alloca %nyx_string*
  store %nyx_string* %2815, %nyx_string** %2816
  %2817 = load %nyx_string*, %nyx_string** %2816
  %2818 = getelementptr [4 x i8], [4 x i8]* @.str313, i32 0, i32 0
  %2819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2818, i64 3)
  %2820 = call %nyx_string* @nyx_string_concat(%nyx_string* %2817, %nyx_string* %2819)
  %2821 = call %nyx_string* @sdd_generated_marker()
  %2822 = call %nyx_string* @nyx_string_concat(%nyx_string* %2820, %nyx_string* %2821)
  %2823 = getelementptr [80 x i8], [80 x i8]* @.str314, i32 0, i32 0
  %2824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2823, i64 79)
  %2825 = call %nyx_string* @nyx_string_concat(%nyx_string* %2822, %nyx_string* %2824)
  store %nyx_string* %2825, %nyx_string** %2816
  %2826 = load %nyx_string*, %nyx_string** %2816
  %2827 = getelementptr [96 x i8], [96 x i8]* @.str315, i32 0, i32 0
  %2828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2827, i64 95)
  %2829 = call %nyx_string* @nyx_string_concat(%nyx_string* %2826, %nyx_string* %2828)
  store %nyx_string* %2829, %nyx_string** %2816
  %2830 = load %nyx_string*, %nyx_string** %2816
  %2831 = getelementptr [72 x i8], [72 x i8]* @.str316, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %2831, i64 71)
  %2833 = call %nyx_string* @nyx_string_concat(%nyx_string* %2830, %nyx_string* %2832)
  store %nyx_string* %2833, %nyx_string** %2816
  %2834 = load %nyx_string*, %nyx_string** %2816
  %2835 = getelementptr [20 x i8], [20 x i8]* @.str317, i32 0, i32 0
  %2836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %2835, i64 19)
  %2837 = call %nyx_string* @nyx_string_concat(%nyx_string* %2834, %nyx_string* %2836)
  store %nyx_string* %2837, %nyx_string** %2816
  %2838 = load %nyx_string*, %nyx_string** %2816
  %2839 = getelementptr [2 x i8], [2 x i8]* @.str318, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %2839, i64 1)
  %2841 = call %nyx_string* @nyx_string_concat(%nyx_string* %2838, %nyx_string* %2840)
  store %nyx_string* %2841, %nyx_string** %2816
  %2842 = load %nyx_string*, %nyx_string** %2816
  %2843 = call %nyx_string* @gotcha_scan_src()
  %2844 = call %nyx_string* @nyx_string_concat(%nyx_string* %2842, %nyx_string* %2843)
  store %nyx_string* %2844, %nyx_string** %2816
  %2845 = load %nyx_string*, %nyx_string** %2816
  %2846 = getelementptr [2 x i8], [2 x i8]* @.str319, i32 0, i32 0
  %2847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %2846, i64 1)
  %2848 = call %nyx_string* @nyx_string_concat(%nyx_string* %2845, %nyx_string* %2847)
  store %nyx_string* %2848, %nyx_string** %2816
  %2849 = load %nyx_string*, %nyx_string** %2816
  %2850 = getelementptr [83 x i8], [83 x i8]* @.str320, i32 0, i32 0
  %2851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %2850, i64 82)
  %2852 = call %nyx_string* @nyx_string_concat(%nyx_string* %2849, %nyx_string* %2851)
  store %nyx_string* %2852, %nyx_string** %2816
  %2853 = load %nyx_string*, %nyx_string** %2816
  %2854 = getelementptr [85 x i8], [85 x i8]* @.str321, i32 0, i32 0
  %2855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %2854, i64 84)
  %2856 = call %nyx_string* @nyx_string_concat(%nyx_string* %2853, %nyx_string* %2855)
  store %nyx_string* %2856, %nyx_string** %2816
  %2857 = load %nyx_string*, %nyx_string** %2816
  %2858 = getelementptr [83 x i8], [83 x i8]* @.str322, i32 0, i32 0
  %2859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %2858, i64 82)
  %2860 = call %nyx_string* @nyx_string_concat(%nyx_string* %2857, %nyx_string* %2859)
  store %nyx_string* %2860, %nyx_string** %2816
  %2861 = load %nyx_string*, %nyx_string** %2816
  %2862 = getelementptr [83 x i8], [83 x i8]* @.str323, i32 0, i32 0
  %2863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %2862, i64 82)
  %2864 = call %nyx_string* @nyx_string_concat(%nyx_string* %2861, %nyx_string* %2863)
  store %nyx_string* %2864, %nyx_string** %2816
  %2865 = load %nyx_string*, %nyx_string** %2816
  %2866 = getelementptr [56 x i8], [56 x i8]* @.str324, i32 0, i32 0
  %2867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %2866, i64 55)
  %2868 = call %nyx_string* @nyx_string_concat(%nyx_string* %2865, %nyx_string* %2867)
  store %nyx_string* %2868, %nyx_string** %2816
  %2869 = load %nyx_string*, %nyx_string** %2816
  %2870 = getelementptr [31 x i8], [31 x i8]* @.str325, i32 0, i32 0
  %2871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %2870, i64 30)
  %2872 = call %nyx_string* @nyx_string_concat(%nyx_string* %2869, %nyx_string* %2871)
  store %nyx_string* %2872, %nyx_string** %2816
  %2873 = load %nyx_string*, %nyx_string** %2816
  %2874 = getelementptr [47 x i8], [47 x i8]* @.str326, i32 0, i32 0
  %2875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %2874, i64 46)
  %2876 = call %nyx_string* @nyx_string_concat(%nyx_string* %2873, %nyx_string* %2875)
  store %nyx_string* %2876, %nyx_string** %2816
  %2877 = load %nyx_string*, %nyx_string** %2816
  %2878 = getelementptr [40 x i8], [40 x i8]* @.str327, i32 0, i32 0
  %2879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %2878, i64 39)
  %2880 = call %nyx_string* @nyx_string_concat(%nyx_string* %2877, %nyx_string* %2879)
  store %nyx_string* %2880, %nyx_string** %2816
  %2881 = load %nyx_string*, %nyx_string** %2816
  %2882 = getelementptr [20 x i8], [20 x i8]* @.str328, i32 0, i32 0
  %2883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %2882, i64 19)
  %2884 = call %nyx_string* @nyx_string_concat(%nyx_string* %2881, %nyx_string* %2883)
  store %nyx_string* %2884, %nyx_string** %2816
  %2885 = load %nyx_string*, %nyx_string** %2816
  %2886 = getelementptr [58 x i8], [58 x i8]* @.str329, i32 0, i32 0
  %2887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %2886, i64 57)
  %2888 = call %nyx_string* @nyx_string_concat(%nyx_string* %2885, %nyx_string* %2887)
  store %nyx_string* %2888, %nyx_string** %2816
  %2889 = load %nyx_string*, %nyx_string** %2816
  %2890 = getelementptr [7 x i8], [7 x i8]* @.str330, i32 0, i32 0
  %2891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %2890, i64 6)
  %2892 = call %nyx_string* @nyx_string_concat(%nyx_string* %2889, %nyx_string* %2891)
  store %nyx_string* %2892, %nyx_string** %2816
  %2893 = load %nyx_string*, %nyx_string** %2816
  %2894 = getelementptr [15 x i8], [15 x i8]* @.str331, i32 0, i32 0
  %2895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %2894, i64 14)
  %2896 = call %nyx_string* @nyx_string_concat(%nyx_string* %2893, %nyx_string* %2895)
  store %nyx_string* %2896, %nyx_string** %2816
  %2897 = load %nyx_string*, %nyx_string** %2816
  %2898 = getelementptr [3 x i8], [3 x i8]* @.str332, i32 0, i32 0
  %2899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %2898, i64 2)
  %2900 = call %nyx_string* @nyx_string_concat(%nyx_string* %2897, %nyx_string* %2899)
  store %nyx_string* %2900, %nyx_string** %2816
  %2901 = load %nyx_string*, %nyx_string** %2816
  %2902 = getelementptr [2 x i8], [2 x i8]* @.str333, i32 0, i32 0
  %2903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %2902, i64 1)
  %2904 = call %nyx_string* @nyx_string_concat(%nyx_string* %2901, %nyx_string* %2903)
  store %nyx_string* %2904, %nyx_string** %2816
  %2905 = load %nyx_string*, %nyx_string** %2816
  %2906 = getelementptr [79 x i8], [79 x i8]* @.str334, i32 0, i32 0
  %2907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %2906, i64 78)
  %2908 = call %nyx_string* @nyx_string_concat(%nyx_string* %2905, %nyx_string* %2907)
  store %nyx_string* %2908, %nyx_string** %2816
  %2909 = load %nyx_string*, %nyx_string** %2816
  %2910 = getelementptr [57 x i8], [57 x i8]* @.str335, i32 0, i32 0
  %2911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %2910, i64 56)
  %2912 = call %nyx_string* @nyx_string_concat(%nyx_string* %2909, %nyx_string* %2911)
  store %nyx_string* %2912, %nyx_string** %2816
  %2913 = load %nyx_string*, %nyx_string** %2816
  %2914 = getelementptr [37 x i8], [37 x i8]* @.str336, i32 0, i32 0
  %2915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %2914, i64 36)
  %2916 = call %nyx_string* @nyx_string_concat(%nyx_string* %2913, %nyx_string* %2915)
  store %nyx_string* %2916, %nyx_string** %2816
  %2917 = load %nyx_string*, %nyx_string** %2816
  %2918 = getelementptr [25 x i8], [25 x i8]* @.str337, i32 0, i32 0
  %2919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %2918, i64 24)
  %2920 = call %nyx_string* @nyx_string_concat(%nyx_string* %2917, %nyx_string* %2919)
  store %nyx_string* %2920, %nyx_string** %2816
  %2921 = load %nyx_string*, %nyx_string** %2816
  %2922 = getelementptr [49 x i8], [49 x i8]* @.str338, i32 0, i32 0
  %2923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %2922, i64 48)
  %2924 = call %nyx_string* @nyx_string_concat(%nyx_string* %2921, %nyx_string* %2923)
  store %nyx_string* %2924, %nyx_string** %2816
  %2925 = load %nyx_string*, %nyx_string** %2816
  %2926 = getelementptr [39 x i8], [39 x i8]* @.str339, i32 0, i32 0
  %2927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %2926, i64 38)
  %2928 = call %nyx_string* @nyx_string_concat(%nyx_string* %2925, %nyx_string* %2927)
  store %nyx_string* %2928, %nyx_string** %2816
  %2929 = load %nyx_string*, %nyx_string** %2816
  %2930 = getelementptr [20 x i8], [20 x i8]* @.str340, i32 0, i32 0
  %2931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %2930, i64 19)
  %2932 = call %nyx_string* @nyx_string_concat(%nyx_string* %2929, %nyx_string* %2931)
  store %nyx_string* %2932, %nyx_string** %2816
  %2933 = load %nyx_string*, %nyx_string** %2816
  %2934 = getelementptr [34 x i8], [34 x i8]* @.str341, i32 0, i32 0
  %2935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %2934, i64 33)
  %2936 = call %nyx_string* @nyx_string_concat(%nyx_string* %2933, %nyx_string* %2935)
  store %nyx_string* %2936, %nyx_string** %2816
  %2937 = load %nyx_string*, %nyx_string** %2816
  %2938 = getelementptr [36 x i8], [36 x i8]* @.str342, i32 0, i32 0
  %2939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %2938, i64 35)
  %2940 = call %nyx_string* @nyx_string_concat(%nyx_string* %2937, %nyx_string* %2939)
  store %nyx_string* %2940, %nyx_string** %2816
  %2941 = load %nyx_string*, %nyx_string** %2816
  %2942 = getelementptr [39 x i8], [39 x i8]* @.str343, i32 0, i32 0
  %2943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %2942, i64 38)
  %2944 = call %nyx_string* @nyx_string_concat(%nyx_string* %2941, %nyx_string* %2943)
  store %nyx_string* %2944, %nyx_string** %2816
  %2945 = load %nyx_string*, %nyx_string** %2816
  %2946 = getelementptr [32 x i8], [32 x i8]* @.str344, i32 0, i32 0
  %2947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %2946, i64 31)
  %2948 = call %nyx_string* @nyx_string_concat(%nyx_string* %2945, %nyx_string* %2947)
  store %nyx_string* %2948, %nyx_string** %2816
  %2949 = load %nyx_string*, %nyx_string** %2816
  %2950 = getelementptr [25 x i8], [25 x i8]* @.str345, i32 0, i32 0
  %2951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %2950, i64 24)
  %2952 = call %nyx_string* @nyx_string_concat(%nyx_string* %2949, %nyx_string* %2951)
  store %nyx_string* %2952, %nyx_string** %2816
  %2953 = load %nyx_string*, %nyx_string** %2816
  %2954 = getelementptr [18 x i8], [18 x i8]* @.str346, i32 0, i32 0
  %2955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %2954, i64 17)
  %2956 = call %nyx_string* @nyx_string_concat(%nyx_string* %2953, %nyx_string* %2955)
  store %nyx_string* %2956, %nyx_string** %2816
  %2957 = load %nyx_string*, %nyx_string** %2816
  %2958 = getelementptr [40 x i8], [40 x i8]* @.str347, i32 0, i32 0
  %2959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %2958, i64 39)
  %2960 = call %nyx_string* @nyx_string_concat(%nyx_string* %2957, %nyx_string* %2959)
  store %nyx_string* %2960, %nyx_string** %2816
  %2961 = load %nyx_string*, %nyx_string** %2816
  %2962 = getelementptr [46 x i8], [46 x i8]* @.str348, i32 0, i32 0
  %2963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %2962, i64 45)
  %2964 = call %nyx_string* @nyx_string_concat(%nyx_string* %2961, %nyx_string* %2963)
  store %nyx_string* %2964, %nyx_string** %2816
  %2965 = load %nyx_string*, %nyx_string** %2816
  %2966 = getelementptr [32 x i8], [32 x i8]* @.str349, i32 0, i32 0
  %2967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %2966, i64 31)
  %2968 = call %nyx_string* @nyx_string_concat(%nyx_string* %2965, %nyx_string* %2967)
  store %nyx_string* %2968, %nyx_string** %2816
  %2969 = load %nyx_string*, %nyx_string** %2816
  %2970 = getelementptr [42 x i8], [42 x i8]* @.str350, i32 0, i32 0
  %2971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %2970, i64 41)
  %2972 = call %nyx_string* @nyx_string_concat(%nyx_string* %2969, %nyx_string* %2971)
  store %nyx_string* %2972, %nyx_string** %2816
  %2973 = load %nyx_string*, %nyx_string** %2816
  %2974 = getelementptr [44 x i8], [44 x i8]* @.str351, i32 0, i32 0
  %2975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %2974, i64 43)
  %2976 = call %nyx_string* @nyx_string_concat(%nyx_string* %2973, %nyx_string* %2975)
  store %nyx_string* %2976, %nyx_string** %2816
  %2977 = load %nyx_string*, %nyx_string** %2816
  %2978 = getelementptr [33 x i8], [33 x i8]* @.str352, i32 0, i32 0
  %2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %2978, i64 32)
  %2980 = call %nyx_string* @nyx_string_concat(%nyx_string* %2977, %nyx_string* %2979)
  store %nyx_string* %2980, %nyx_string** %2816
  %2981 = load %nyx_string*, %nyx_string** %2816
  %2982 = getelementptr [31 x i8], [31 x i8]* @.str353, i32 0, i32 0
  %2983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %2982, i64 30)
  %2984 = call %nyx_string* @nyx_string_concat(%nyx_string* %2981, %nyx_string* %2983)
  store %nyx_string* %2984, %nyx_string** %2816
  %2985 = load %nyx_string*, %nyx_string** %2816
  %2986 = getelementptr [19 x i8], [19 x i8]* @.str354, i32 0, i32 0
  %2987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %2986, i64 18)
  %2988 = call %nyx_string* @nyx_string_concat(%nyx_string* %2985, %nyx_string* %2987)
  store %nyx_string* %2988, %nyx_string** %2816
  %2989 = load %nyx_string*, %nyx_string** %2816
  %2990 = getelementptr [15 x i8], [15 x i8]* @.str355, i32 0, i32 0
  %2991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %2990, i64 14)
  %2992 = call %nyx_string* @nyx_string_concat(%nyx_string* %2989, %nyx_string* %2991)
  store %nyx_string* %2992, %nyx_string** %2816
  %2993 = load %nyx_string*, %nyx_string** %2816
  %2994 = getelementptr [11 x i8], [11 x i8]* @.str356, i32 0, i32 0
  %2995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %2994, i64 10)
  %2996 = call %nyx_string* @nyx_string_concat(%nyx_string* %2993, %nyx_string* %2995)
  store %nyx_string* %2996, %nyx_string** %2816
  %2997 = load %nyx_string*, %nyx_string** %2816
  %2998 = getelementptr [19 x i8], [19 x i8]* @.str357, i32 0, i32 0
  %2999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %2998, i64 18)
  %3000 = call %nyx_string* @nyx_string_concat(%nyx_string* %2997, %nyx_string* %2999)
  store %nyx_string* %3000, %nyx_string** %2816
  %3001 = load %nyx_string*, %nyx_string** %2816
  %3002 = getelementptr [7 x i8], [7 x i8]* @.str358, i32 0, i32 0
  %3003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3002, i64 6)
  %3004 = call %nyx_string* @nyx_string_concat(%nyx_string* %3001, %nyx_string* %3003)
  store %nyx_string* %3004, %nyx_string** %2816
  %3005 = load %nyx_string*, %nyx_string** %2816
  %3006 = getelementptr [16 x i8], [16 x i8]* @.str359, i32 0, i32 0
  %3007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3006, i64 15)
  %3008 = call %nyx_string* @nyx_string_concat(%nyx_string* %3005, %nyx_string* %3007)
  store %nyx_string* %3008, %nyx_string** %2816
  %3009 = load %nyx_string*, %nyx_string** %2816
  %3010 = getelementptr [3 x i8], [3 x i8]* @.str360, i32 0, i32 0
  %3011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3010, i64 2)
  %3012 = call %nyx_string* @nyx_string_concat(%nyx_string* %3009, %nyx_string* %3011)
  store %nyx_string* %3012, %nyx_string** %2816
  %3013 = load %nyx_string*, %nyx_string** %2816
  %3014 = getelementptr [2 x i8], [2 x i8]* @.str361, i32 0, i32 0
  %3015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3014, i64 1)
  %3016 = call %nyx_string* @nyx_string_concat(%nyx_string* %3013, %nyx_string* %3015)
  store %nyx_string* %3016, %nyx_string** %2816
  %3017 = load %nyx_string*, %nyx_string** %2816
  %3018 = getelementptr [77 x i8], [77 x i8]* @.str362, i32 0, i32 0
  %3019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3018, i64 76)
  %3020 = call %nyx_string* @nyx_string_concat(%nyx_string* %3017, %nyx_string* %3019)
  store %nyx_string* %3020, %nyx_string** %2816
  %3021 = load %nyx_string*, %nyx_string** %2816
  %3022 = getelementptr [53 x i8], [53 x i8]* @.str363, i32 0, i32 0
  %3023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3022, i64 52)
  %3024 = call %nyx_string* @nyx_string_concat(%nyx_string* %3021, %nyx_string* %3023)
  store %nyx_string* %3024, %nyx_string** %2816
  %3025 = load %nyx_string*, %nyx_string** %2816
  %3026 = getelementptr [45 x i8], [45 x i8]* @.str364, i32 0, i32 0
  %3027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3026, i64 44)
  %3028 = call %nyx_string* @nyx_string_concat(%nyx_string* %3025, %nyx_string* %3027)
  store %nyx_string* %3028, %nyx_string** %2816
  %3029 = load %nyx_string*, %nyx_string** %2816
  %3030 = getelementptr [26 x i8], [26 x i8]* @.str365, i32 0, i32 0
  %3031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3030, i64 25)
  %3032 = call %nyx_string* @nyx_string_concat(%nyx_string* %3029, %nyx_string* %3031)
  store %nyx_string* %3032, %nyx_string** %2816
  %3033 = load %nyx_string*, %nyx_string** %2816
  %3034 = getelementptr [39 x i8], [39 x i8]* @.str366, i32 0, i32 0
  %3035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3034, i64 38)
  %3036 = call %nyx_string* @nyx_string_concat(%nyx_string* %3033, %nyx_string* %3035)
  store %nyx_string* %3036, %nyx_string** %2816
  %3037 = load %nyx_string*, %nyx_string** %2816
  %3038 = getelementptr [35 x i8], [35 x i8]* @.str367, i32 0, i32 0
  %3039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3038, i64 34)
  %3040 = call %nyx_string* @nyx_string_concat(%nyx_string* %3037, %nyx_string* %3039)
  store %nyx_string* %3040, %nyx_string** %2816
  %3041 = load %nyx_string*, %nyx_string** %2816
  %3042 = getelementptr [48 x i8], [48 x i8]* @.str368, i32 0, i32 0
  %3043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3042, i64 47)
  %3044 = call %nyx_string* @nyx_string_concat(%nyx_string* %3041, %nyx_string* %3043)
  store %nyx_string* %3044, %nyx_string** %2816
  %3045 = load %nyx_string*, %nyx_string** %2816
  %3046 = getelementptr [20 x i8], [20 x i8]* @.str369, i32 0, i32 0
  %3047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3046, i64 19)
  %3048 = call %nyx_string* @nyx_string_concat(%nyx_string* %3045, %nyx_string* %3047)
  store %nyx_string* %3048, %nyx_string** %2816
  %3049 = load %nyx_string*, %nyx_string** %2816
  %3050 = getelementptr [32 x i8], [32 x i8]* @.str370, i32 0, i32 0
  %3051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3050, i64 31)
  %3052 = call %nyx_string* @nyx_string_concat(%nyx_string* %3049, %nyx_string* %3051)
  store %nyx_string* %3052, %nyx_string** %2816
  %3053 = load %nyx_string*, %nyx_string** %2816
  %3054 = getelementptr [37 x i8], [37 x i8]* @.str371, i32 0, i32 0
  %3055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3054, i64 36)
  %3056 = call %nyx_string* @nyx_string_concat(%nyx_string* %3053, %nyx_string* %3055)
  store %nyx_string* %3056, %nyx_string** %2816
  %3057 = load %nyx_string*, %nyx_string** %2816
  %3058 = getelementptr [34 x i8], [34 x i8]* @.str372, i32 0, i32 0
  %3059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3058, i64 33)
  %3060 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3059)
  store %nyx_string* %3060, %nyx_string** %2816
  %3061 = load %nyx_string*, %nyx_string** %2816
  %3062 = getelementptr [101 x i8], [101 x i8]* @.str373, i32 0, i32 0
  %3063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3062, i64 100)
  %3064 = call %nyx_string* @nyx_string_concat(%nyx_string* %3061, %nyx_string* %3063)
  store %nyx_string* %3064, %nyx_string** %2816
  %3065 = load %nyx_string*, %nyx_string** %2816
  %3066 = getelementptr [56 x i8], [56 x i8]* @.str374, i32 0, i32 0
  %3067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3066, i64 55)
  %3068 = call %nyx_string* @nyx_string_concat(%nyx_string* %3065, %nyx_string* %3067)
  store %nyx_string* %3068, %nyx_string** %2816
  %3069 = load %nyx_string*, %nyx_string** %2816
  %3070 = getelementptr [24 x i8], [24 x i8]* @.str375, i32 0, i32 0
  %3071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3070, i64 23)
  %3072 = call %nyx_string* @nyx_string_concat(%nyx_string* %3069, %nyx_string* %3071)
  store %nyx_string* %3072, %nyx_string** %2816
  %3073 = load %nyx_string*, %nyx_string** %2816
  %3074 = getelementptr [36 x i8], [36 x i8]* @.str376, i32 0, i32 0
  %3075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3074, i64 35)
  %3076 = call %nyx_string* @nyx_string_concat(%nyx_string* %3073, %nyx_string* %3075)
  store %nyx_string* %3076, %nyx_string** %2816
  %3077 = load %nyx_string*, %nyx_string** %2816
  %3078 = getelementptr [41 x i8], [41 x i8]* @.str377, i32 0, i32 0
  %3079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3078, i64 40)
  %3080 = call %nyx_string* @nyx_string_concat(%nyx_string* %3077, %nyx_string* %3079)
  store %nyx_string* %3080, %nyx_string** %2816
  %3081 = load %nyx_string*, %nyx_string** %2816
  %3082 = getelementptr [58 x i8], [58 x i8]* @.str378, i32 0, i32 0
  %3083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3082, i64 57)
  %3084 = call %nyx_string* @nyx_string_concat(%nyx_string* %3081, %nyx_string* %3083)
  store %nyx_string* %3084, %nyx_string** %2816
  %3085 = load %nyx_string*, %nyx_string** %2816
  %3086 = getelementptr [99 x i8], [99 x i8]* @.str379, i32 0, i32 0
  %3087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3086, i64 98)
  %3088 = call %nyx_string* @nyx_string_concat(%nyx_string* %3085, %nyx_string* %3087)
  store %nyx_string* %3088, %nyx_string** %2816
  %3089 = load %nyx_string*, %nyx_string** %2816
  %3090 = getelementptr [23 x i8], [23 x i8]* @.str380, i32 0, i32 0
  %3091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3090, i64 22)
  %3092 = call %nyx_string* @nyx_string_concat(%nyx_string* %3089, %nyx_string* %3091)
  store %nyx_string* %3092, %nyx_string** %2816
  %3093 = load %nyx_string*, %nyx_string** %2816
  %3094 = getelementptr [11 x i8], [11 x i8]* @.str381, i32 0, i32 0
  %3095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3094, i64 10)
  %3096 = call %nyx_string* @nyx_string_concat(%nyx_string* %3093, %nyx_string* %3095)
  store %nyx_string* %3096, %nyx_string** %2816
  %3097 = load %nyx_string*, %nyx_string** %2816
  %3098 = getelementptr [19 x i8], [19 x i8]* @.str382, i32 0, i32 0
  %3099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3098, i64 18)
  %3100 = call %nyx_string* @nyx_string_concat(%nyx_string* %3097, %nyx_string* %3099)
  store %nyx_string* %3100, %nyx_string** %2816
  %3101 = load %nyx_string*, %nyx_string** %2816
  %3102 = getelementptr [7 x i8], [7 x i8]* @.str383, i32 0, i32 0
  %3103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3102, i64 6)
  %3104 = call %nyx_string* @nyx_string_concat(%nyx_string* %3101, %nyx_string* %3103)
  store %nyx_string* %3104, %nyx_string** %2816
  %3105 = load %nyx_string*, %nyx_string** %2816
  %3106 = getelementptr [17 x i8], [17 x i8]* @.str384, i32 0, i32 0
  %3107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3106, i64 16)
  %3108 = call %nyx_string* @nyx_string_concat(%nyx_string* %3105, %nyx_string* %3107)
  store %nyx_string* %3108, %nyx_string** %2816
  %3109 = load %nyx_string*, %nyx_string** %2816
  %3110 = getelementptr [3 x i8], [3 x i8]* @.str385, i32 0, i32 0
  %3111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3110, i64 2)
  %3112 = call %nyx_string* @nyx_string_concat(%nyx_string* %3109, %nyx_string* %3111)
  store %nyx_string* %3112, %nyx_string** %2816
  %3113 = load %nyx_string*, %nyx_string** %2816
  %3114 = getelementptr [2 x i8], [2 x i8]* @.str386, i32 0, i32 0
  %3115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3114, i64 1)
  %3116 = call %nyx_string* @nyx_string_concat(%nyx_string* %3113, %nyx_string* %3115)
  store %nyx_string* %3116, %nyx_string** %2816
  %3117 = load %nyx_string*, %nyx_string** %2816
  %3118 = getelementptr [52 x i8], [52 x i8]* @.str387, i32 0, i32 0
  %3119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3118, i64 51)
  %3120 = call %nyx_string* @nyx_string_concat(%nyx_string* %3117, %nyx_string* %3119)
  store %nyx_string* %3120, %nyx_string** %2816
  %3121 = load %nyx_string*, %nyx_string** %2816
  %3122 = getelementptr [39 x i8], [39 x i8]* @.str388, i32 0, i32 0
  %3123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3122, i64 38)
  %3124 = call %nyx_string* @nyx_string_concat(%nyx_string* %3121, %nyx_string* %3123)
  store %nyx_string* %3124, %nyx_string** %2816
  %3125 = load %nyx_string*, %nyx_string** %2816
  %3126 = getelementptr [126 x i8], [126 x i8]* @.str389, i32 0, i32 0
  %3127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3126, i64 125)
  %3128 = call %nyx_string* @nyx_string_concat(%nyx_string* %3125, %nyx_string* %3127)
  store %nyx_string* %3128, %nyx_string** %2816
  %3129 = load %nyx_string*, %nyx_string** %2816
  %3130 = getelementptr [89 x i8], [89 x i8]* @.str390, i32 0, i32 0
  %3131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3130, i64 88)
  %3132 = call %nyx_string* @nyx_string_concat(%nyx_string* %3129, %nyx_string* %3131)
  store %nyx_string* %3132, %nyx_string** %2816
  %3133 = load %nyx_string*, %nyx_string** %2816
  %3134 = getelementptr [3 x i8], [3 x i8]* @.str391, i32 0, i32 0
  %3135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3134, i64 2)
  %3136 = call %nyx_string* @nyx_string_concat(%nyx_string* %3133, %nyx_string* %3135)
  store %nyx_string* %3136, %nyx_string** %2816
  %3137 = call { i64, i8* }* @gotchas_table()
  %3138 = alloca { i64, i8* }*
  store { i64, i8* }* %3137, { i64, i8* }** %3138
  %3139 = alloca i64
  store i64 0, i64* %3139
  %3140 = getelementptr [8 x i8], [8 x i8]* @.str392, i32 0, i32 0
  %3141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3140, i64 7)
  %3142 = alloca %nyx_string*
  store %nyx_string* %3141, %nyx_string** %3142
  %3143 = getelementptr [1 x i8], [1 x i8]* @.str393, i32 0, i32 0
  %3144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3143, i64 0)
  %3145 = alloca %nyx_string*
  store %nyx_string* %3144, %nyx_string** %3145
  %3146 = getelementptr [3 x i8], [3 x i8]* @.str394, i32 0, i32 0
  %3147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3146, i64 2)
  %3148 = alloca %nyx_string*
  store %nyx_string* %3147, %nyx_string** %3148
  %3149 = getelementptr [9 x i8], [9 x i8]* @.str395, i32 0, i32 0
  %3150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3149, i64 8)
  %3151 = alloca %nyx_string*
  store %nyx_string* %3150, %nyx_string** %3151
  %3152 = getelementptr [9 x i8], [9 x i8]* @.str396, i32 0, i32 0
  %3153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3152, i64 8)
  %3154 = alloca %nyx_string*
  store %nyx_string* %3153, %nyx_string** %3154
  %3155 = getelementptr [2 x i8], [2 x i8]* @.str397, i32 0, i32 0
  %3156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3155, i64 1)
  %3157 = alloca %nyx_string*
  store %nyx_string* %3156, %nyx_string** %3157
  %3158 = getelementptr [14 x i8], [14 x i8]* @.str398, i32 0, i32 0
  %3159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3158, i64 13)
  %3160 = alloca %nyx_string*
  store %nyx_string* %3159, %nyx_string** %3160
  %3161 = getelementptr [3 x i8], [3 x i8]* @.str399, i32 0, i32 0
  %3162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3161, i64 2)
  %3163 = alloca %nyx_string*
  store %nyx_string* %3162, %nyx_string** %3163
  %3164 = getelementptr [5 x i8], [5 x i8]* @.str400, i32 0, i32 0
  %3165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3164, i64 4)
  %3166 = alloca %nyx_string*
  store %nyx_string* %3165, %nyx_string** %3166
  %3167 = getelementptr [37 x i8], [37 x i8]* @.str401, i32 0, i32 0
  %3168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3167, i64 36)
  %3169 = alloca %nyx_string*
  store %nyx_string* %3168, %nyx_string** %3169
  %3170 = getelementptr [4 x i8], [4 x i8]* @.str402, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3170, i64 3)
  %3172 = alloca %nyx_string*
  store %nyx_string* %3171, %nyx_string** %3172
  %3173 = getelementptr [33 x i8], [33 x i8]* @.str403, i32 0, i32 0
  %3174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3173, i64 32)
  %3175 = alloca %nyx_string*
  store %nyx_string* %3174, %nyx_string** %3175
  %3176 = getelementptr [3 x i8], [3 x i8]* @.str404, i32 0, i32 0
  %3177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3176, i64 2)
  %3178 = alloca %nyx_string*
  store %nyx_string* %3177, %nyx_string** %3178
  %3179 = getelementptr [28 x i8], [28 x i8]* @.str405, i32 0, i32 0
  %3180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3179, i64 27)
  %3181 = alloca %nyx_string*
  store %nyx_string* %3180, %nyx_string** %3181
  %3182 = getelementptr [3 x i8], [3 x i8]* @.str406, i32 0, i32 0
  %3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3182, i64 2)
  %3184 = alloca %nyx_string*
  store %nyx_string* %3183, %nyx_string** %3184
  %3185 = call i8* @llvm.stacksave()
  br label %while_cond565
while_cond565:
  %3186 = load i64, i64* %3139
  %3187 = load { i64, i8* }*, { i64, i8* }** %3138
  %3188 = call i64 @nyx_array_length({ i64, i8* }* %3187)
  %3189 = icmp slt i64 %3186, %3188
  br i1 %3189, label %while_body566, label %while_end567
while_body566:
  call void @llvm.stackrestore(i8* %3185)
  %3190 = load { i64, i8* }*, { i64, i8* }** %3138
  %3191 = load i64, i64* %3139
  %3192 = call i64 @nyx_array_get({ i64, i8* }* %3190, i64 %3191)
  %3193 = inttoptr i64 %3192 to { i64, i8* }*
  %3194 = alloca { i64, i8* }*
  store { i64, i8* }* %3193, { i64, i8* }** %3194
  %3195 = load { i64, i8* }*, { i64, i8* }** %3194
  %3196 = load %nyx_string*, %nyx_string** %3142
  %3197 = call %nyx_string* @gotcha_field({ i64, i8* }* %3195, %nyx_string* %3196)
  %3198 = alloca %nyx_string*
  store %nyx_string* %3197, %nyx_string** %3198
  %3199 = load %nyx_string*, %nyx_string** %3198
  %3200 = load %nyx_string*, %nyx_string** %3145
  %3201 = call i1 @nyx_string_equals(%nyx_string* %3199, %nyx_string* %3200)
  %3202 = xor i1 %3201, true
  br i1 %3202, label %then568, label %else569
then568:
  %3203 = load { i64, i8* }*, { i64, i8* }** %3194
  %3204 = load %nyx_string*, %nyx_string** %3148
  %3205 = call %nyx_string* @gotcha_field({ i64, i8* }* %3203, %nyx_string* %3204)
  %3206 = alloca %nyx_string*
  store %nyx_string* %3205, %nyx_string** %3206
  %3207 = load { i64, i8* }*, { i64, i8* }** %3194
  %3208 = load %nyx_string*, %nyx_string** %3151
  %3209 = call %nyx_string* @gotcha_field({ i64, i8* }* %3207, %nyx_string* %3208)
  %3210 = alloca %nyx_string*
  store %nyx_string* %3209, %nyx_string** %3210
  %3211 = load { i64, i8* }*, { i64, i8* }** %3194
  %3212 = load %nyx_string*, %nyx_string** %3154
  %3213 = call %nyx_string* @gotcha_field({ i64, i8* }* %3211, %nyx_string* %3212)
  %3214 = alloca %nyx_string*
  store %nyx_string* %3213, %nyx_string** %3214
  %3215 = load %nyx_string*, %nyx_string** %2816
  %3216 = load %nyx_string*, %nyx_string** %3157
  %3217 = call %nyx_string* @nyx_string_concat(%nyx_string* %3215, %nyx_string* %3216)
  store %nyx_string* %3217, %nyx_string** %2816
  %3218 = load %nyx_string*, %nyx_string** %2816
  %3219 = load %nyx_string*, %nyx_string** %3160
  %3220 = call %nyx_string* @nyx_string_concat(%nyx_string* %3218, %nyx_string* %3219)
  %3221 = load %nyx_string*, %nyx_string** %3206
  %3222 = call %nyx_string* @nyx_string_concat(%nyx_string* %3220, %nyx_string* %3221)
  %3223 = load %nyx_string*, %nyx_string** %3163
  %3224 = call %nyx_string* @nyx_string_concat(%nyx_string* %3222, %nyx_string* %3223)
  %3225 = load %nyx_string*, %nyx_string** %3210
  %3226 = call %nyx_string* @nx_escape(%nyx_string* %3225)
  %3227 = call %nyx_string* @nyx_string_concat(%nyx_string* %3224, %nyx_string* %3226)
  %3228 = load %nyx_string*, %nyx_string** %3166
  %3229 = call %nyx_string* @nyx_string_concat(%nyx_string* %3227, %nyx_string* %3228)
  store %nyx_string* %3229, %nyx_string** %2816
  %3230 = load %nyx_string*, %nyx_string** %2816
  %3231 = load %nyx_string*, %nyx_string** %3169
  %3232 = call %nyx_string* @nyx_string_concat(%nyx_string* %3230, %nyx_string* %3231)
  %3233 = load %nyx_string*, %nyx_string** %3198
  %3234 = call %nyx_string* @nx_escape(%nyx_string* %3233)
  %3235 = call %nyx_string* @nyx_string_concat(%nyx_string* %3232, %nyx_string* %3234)
  %3236 = load %nyx_string*, %nyx_string** %3172
  %3237 = call %nyx_string* @nyx_string_concat(%nyx_string* %3235, %nyx_string* %3236)
  store %nyx_string* %3237, %nyx_string** %2816
  %3238 = load %nyx_string*, %nyx_string** %2816
  %3239 = load %nyx_string*, %nyx_string** %3175
  %3240 = call %nyx_string* @nyx_string_concat(%nyx_string* %3238, %nyx_string* %3239)
  %3241 = load %nyx_string*, %nyx_string** %3206
  %3242 = call %nyx_string* @nyx_string_concat(%nyx_string* %3240, %nyx_string* %3241)
  %3243 = load %nyx_string*, %nyx_string** %3178
  %3244 = call %nyx_string* @nyx_string_concat(%nyx_string* %3242, %nyx_string* %3243)
  %3245 = load %nyx_string*, %nyx_string** %3214
  %3246 = call %nyx_string* @nyx_string_concat(%nyx_string* %3244, %nyx_string* %3245)
  %3247 = load %nyx_string*, %nyx_string** %3181
  %3248 = call %nyx_string* @nyx_string_concat(%nyx_string* %3246, %nyx_string* %3247)
  store %nyx_string* %3248, %nyx_string** %2816
  %3249 = load %nyx_string*, %nyx_string** %2816
  %3250 = load %nyx_string*, %nyx_string** %3184
  %3251 = call %nyx_string* @nyx_string_concat(%nyx_string* %3249, %nyx_string* %3250)
  store %nyx_string* %3251, %nyx_string** %2816
  br label %merge570
else569:
  br label %merge570
merge570:
  %3252 = load i64, i64* %3139
  %3253 = add i64 %3252, 1
  store i64 %3253, i64* %3139
  br label %while_cond565
while_end567:
  %3254 = load %nyx_string*, %nyx_string** %2816
  %3255 = getelementptr [2 x i8], [2 x i8]* @.str407, i32 0, i32 0
  %3256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3255, i64 1)
  %3257 = call %nyx_string* @nyx_string_concat(%nyx_string* %3254, %nyx_string* %3256)
  store %nyx_string* %3257, %nyx_string** %2816
  %3258 = load %nyx_string*, %nyx_string** %2816
  %3259 = getelementptr [47 x i8], [47 x i8]* @.str408, i32 0, i32 0
  %3260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3259, i64 46)
  %3261 = call %nyx_string* @nyx_string_concat(%nyx_string* %3258, %nyx_string* %3260)
  store %nyx_string* %3261, %nyx_string** %2816
  %3262 = load %nyx_string*, %nyx_string** %2816
  %3263 = getelementptr [39 x i8], [39 x i8]* @.str409, i32 0, i32 0
  %3264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3263, i64 38)
  %3265 = call %nyx_string* @nyx_string_concat(%nyx_string* %3262, %nyx_string* %3264)
  store %nyx_string* %3265, %nyx_string** %2816
  %3266 = load %nyx_string*, %nyx_string** %2816
  %3267 = getelementptr [50 x i8], [50 x i8]* @.str410, i32 0, i32 0
  %3268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3267, i64 49)
  %3269 = call %nyx_string* @nyx_string_concat(%nyx_string* %3266, %nyx_string* %3268)
  store %nyx_string* %3269, %nyx_string** %2816
  %3270 = load %nyx_string*, %nyx_string** %2816
  %3271 = getelementptr [20 x i8], [20 x i8]* @.str411, i32 0, i32 0
  %3272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3271, i64 19)
  %3273 = call %nyx_string* @nyx_string_concat(%nyx_string* %3270, %nyx_string* %3272)
  store %nyx_string* %3273, %nyx_string** %2816
  %3274 = load %nyx_string*, %nyx_string** %2816
  %3275 = getelementptr [32 x i8], [32 x i8]* @.str412, i32 0, i32 0
  %3276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3275, i64 31)
  %3277 = call %nyx_string* @nyx_string_concat(%nyx_string* %3274, %nyx_string* %3276)
  store %nyx_string* %3277, %nyx_string** %2816
  %3278 = load %nyx_string*, %nyx_string** %2816
  %3279 = getelementptr [34 x i8], [34 x i8]* @.str413, i32 0, i32 0
  %3280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3279, i64 33)
  %3281 = call %nyx_string* @nyx_string_concat(%nyx_string* %3278, %nyx_string* %3280)
  store %nyx_string* %3281, %nyx_string** %2816
  %3282 = load %nyx_string*, %nyx_string** %2816
  %3283 = getelementptr [114 x i8], [114 x i8]* @.str414, i32 0, i32 0
  %3284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3283, i64 113)
  %3285 = call %nyx_string* @nyx_string_concat(%nyx_string* %3282, %nyx_string* %3284)
  store %nyx_string* %3285, %nyx_string** %2816
  %3286 = load %nyx_string*, %nyx_string** %2816
  %3287 = getelementptr [19 x i8], [19 x i8]* @.str415, i32 0, i32 0
  %3288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3287, i64 18)
  %3289 = call %nyx_string* @nyx_string_concat(%nyx_string* %3286, %nyx_string* %3288)
  store %nyx_string* %3289, %nyx_string** %2816
  %3290 = load %nyx_string*, %nyx_string** %2816
  %3291 = getelementptr [7 x i8], [7 x i8]* @.str416, i32 0, i32 0
  %3292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3291, i64 6)
  %3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %3290, %nyx_string* %3292)
  store %nyx_string* %3293, %nyx_string** %2816
  %3294 = load %nyx_string*, %nyx_string** %2816
  %3295 = getelementptr [3 x i8], [3 x i8]* @.str417, i32 0, i32 0
  %3296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3295, i64 2)
  %3297 = call %nyx_string* @nyx_string_concat(%nyx_string* %3294, %nyx_string* %3296)
  store %nyx_string* %3297, %nyx_string** %2816
  %3298 = load %nyx_string*, %nyx_string** %2816
  ret %nyx_string* %3298
}

define internal i64 @write_constitution_test(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %3299 = load %nyx_string*, %nyx_string** %dir.ptr
  %3300 = getelementptr [28 x i8], [28 x i8]* @.str418, i32 0, i32 0
  %3301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3300, i64 27)
  %3302 = call %nyx_string* @nyx_string_concat(%nyx_string* %3299, %nyx_string* %3301)
  %3303 = alloca %nyx_string*
  store %nyx_string* %3302, %nyx_string** %3303
  %3304 = call %nyx_string* @constitution_test_body()
  %3305 = alloca %nyx_string*
  store %nyx_string* %3304, %nyx_string** %3305
  %3306 = load %nyx_string*, %nyx_string** %3303
  %3307 = call i8* @nyx_string_to_cstr(%nyx_string* %3306)
  %3308 = call i1 @nyx_file_exists(i8* %3307)
  br i1 %3308, label %then571, label %else572
then571:
  %3309 = load %nyx_string*, %nyx_string** %3303
  %3310 = call i8* @nyx_string_to_cstr(%nyx_string* %3309)
  %3311 = call %nyx_string* @nyx_read_file(i8* %3310)
  %3312 = alloca %nyx_string*
  store %nyx_string* %3311, %nyx_string** %3312
  %3313 = load %nyx_string*, %nyx_string** %3312
  %3314 = load %nyx_string*, %nyx_string** %3305
  %3315 = call i1 @nyx_string_equals(%nyx_string* %3313, %nyx_string* %3314)
  br i1 %3315, label %then574, label %else575
then574:
  ret i64 0
else575:
  br label %merge576
merge576:
  %3316 = load %nyx_string*, %nyx_string** %3312
  %3317 = call %nyx_string* @sdd_generated_marker()
  %3318 = call i64 @nyx_string_index_of(%nyx_string* %3316, %nyx_string* %3317)
  %3319 = icmp slt i64 %3318, 0
  br i1 %3319, label %then577, label %else578
then577:
  ret i64 2
else578:
  br label %merge579
merge579:
  br label %merge573
else572:
  br label %merge573
merge573:
  %3320 = load %nyx_string*, %nyx_string** %3303
  %3321 = load %nyx_string*, %nyx_string** %3305
  %3322 = call i8* @nyx_string_to_cstr(%nyx_string* %3320)
  %3323 = call i1 @nyx_write_file_safe(i8* %3322, %nyx_string* %3321)
  ret i64 1
}

define internal i1 @add_agents_triggers(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3324 = load %nyx_string*, %nyx_string** %dir.ptr
  %3325 = getelementptr [11 x i8], [11 x i8]* @.str419, i32 0, i32 0
  %3326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3325, i64 10)
  %3327 = call %nyx_string* @nyx_string_concat(%nyx_string* %3324, %nyx_string* %3326)
  %3328 = alloca %nyx_string*
  store %nyx_string* %3327, %nyx_string** %3328
  %3329 = load %nyx_string*, %nyx_string** %3328
  %3330 = call i8* @nyx_string_to_cstr(%nyx_string* %3329)
  %3331 = call i1 @nyx_file_exists(i8* %3330)
  %3332 = icmp eq i1 %3331, 0
  br i1 %3332, label %then580, label %else581
then580:
  %3333 = getelementptr [30 x i8], [30 x i8]* @.str420, i32 0, i32 0
  %3334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3333, i64 29)
  %3335 = load %nyx_string*, %nyx_string** %dir.ptr
  %3336 = call %nyx_string* @nyx_string_concat(%nyx_string* %3334, %nyx_string* %3335)
  %3337 = getelementptr [80 x i8], [80 x i8]* @.str421, i32 0, i32 0
  %3338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3337, i64 79)
  %3339 = call %nyx_string* @nyx_string_concat(%nyx_string* %3336, %nyx_string* %3338)
  %3340 = call i8* @nyx_string_to_cstr(%nyx_string* %3339)
  call void @nyx_print_string(i8* %3340)
  ret i1 0
else581:
  br label %merge582
merge582:
  %3341 = load %nyx_string*, %nyx_string** %3328
  %3342 = call i8* @nyx_string_to_cstr(%nyx_string* %3341)
  %3343 = call %nyx_string* @nyx_read_file(i8* %3342)
  %3344 = alloca %nyx_string*
  store %nyx_string* %3343, %nyx_string** %3344
  %3345 = load %nyx_string*, %nyx_string** %3344
  %3346 = getelementptr [21 x i8], [21 x i8]* @.str422, i32 0, i32 0
  %3347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3346, i64 20)
  %3348 = call i64 @nyx_string_index_of(%nyx_string* %3345, %nyx_string* %3347)
  %3349 = icmp sge i64 %3348, 0
  br i1 %3349, label %then583, label %else584
then583:
  %3350 = load %nyx_string*, %nyx_string** %lang.ptr
  %3351 = getelementptr [47 x i8], [47 x i8]* @.str423, i32 0, i32 0
  %3352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3351, i64 46)
  %3353 = getelementptr [47 x i8], [47 x i8]* @.str424, i32 0, i32 0
  %3354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3353, i64 46)
  %3355 = call %nyx_string* @sdd_msg(%nyx_string* %3350, %nyx_string* %3352, %nyx_string* %3354)
  %3356 = call i8* @nyx_string_to_cstr(%nyx_string* %3355)
  call void @nyx_print_string(i8* %3356)
  ret i1 0
else584:
  br label %merge585
merge585:
  %3357 = getelementptr [22 x i8], [22 x i8]* @.str425, i32 0, i32 0
  %3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3357, i64 21)
  %3359 = alloca %nyx_string*
  store %nyx_string* %3358, %nyx_string** %3359
  %3360 = load %nyx_string*, %nyx_string** %lang.ptr
  %3361 = getelementptr [3 x i8], [3 x i8]* @.str426, i32 0, i32 0
  %3362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3361, i64 2)
  %3363 = call i1 @nyx_string_equals(%nyx_string* %3360, %nyx_string* %3362)
  br i1 %3363, label %then586, label %else587
then586:
  %3364 = load %nyx_string*, %nyx_string** %3359
  %3365 = getelementptr [150 x i8], [150 x i8]* @.str427, i32 0, i32 0
  %3366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3365, i64 149)
  %3367 = call %nyx_string* @nyx_string_concat(%nyx_string* %3364, %nyx_string* %3366)
  store %nyx_string* %3367, %nyx_string** %3359
  %3368 = load %nyx_string*, %nyx_string** %3359
  %3369 = getelementptr [122 x i8], [122 x i8]* @.str428, i32 0, i32 0
  %3370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3369, i64 121)
  %3371 = call %nyx_string* @nyx_string_concat(%nyx_string* %3368, %nyx_string* %3370)
  store %nyx_string* %3371, %nyx_string** %3359
  br label %merge588
else587:
  %3372 = load %nyx_string*, %nyx_string** %3359
  %3373 = getelementptr [152 x i8], [152 x i8]* @.str429, i32 0, i32 0
  %3374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3373, i64 151)
  %3375 = call %nyx_string* @nyx_string_concat(%nyx_string* %3372, %nyx_string* %3374)
  store %nyx_string* %3375, %nyx_string** %3359
  %3376 = load %nyx_string*, %nyx_string** %3359
  %3377 = getelementptr [113 x i8], [113 x i8]* @.str430, i32 0, i32 0
  %3378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3377, i64 112)
  %3379 = call %nyx_string* @nyx_string_concat(%nyx_string* %3376, %nyx_string* %3378)
  store %nyx_string* %3379, %nyx_string** %3359
  br label %merge588
merge588:
  %3380 = getelementptr [19 x i8], [19 x i8]* @.str431, i32 0, i32 0
  %3381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3380, i64 18)
  %3382 = alloca %nyx_string*
  store %nyx_string* %3381, %nyx_string** %3382
  %3383 = load %nyx_string*, %nyx_string** %3344
  %3384 = load %nyx_string*, %nyx_string** %3382
  %3385 = call i64 @nyx_string_index_of(%nyx_string* %3383, %nyx_string* %3384)
  %3386 = alloca i64
  store i64 %3385, i64* %3386
  %3387 = load i64, i64* %3386
  %3388 = icmp slt i64 %3387, 0
  br i1 %3388, label %then589, label %else590
then589:
  %3389 = load %nyx_string*, %nyx_string** %3328
  %3390 = load %nyx_string*, %nyx_string** %3344
  %3391 = getelementptr [2 x i8], [2 x i8]* @.str432, i32 0, i32 0
  %3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3391, i64 1)
  %3393 = call %nyx_string* @nyx_string_concat(%nyx_string* %3390, %nyx_string* %3392)
  %3394 = load %nyx_string*, %nyx_string** %3359
  %3395 = call %nyx_string* @nyx_string_concat(%nyx_string* %3393, %nyx_string* %3394)
  %3396 = call i8* @nyx_string_to_cstr(%nyx_string* %3389)
  %3397 = call i1 @nyx_write_file_safe(i8* %3396, %nyx_string* %3395)
  br label %merge591
else590:
  %3398 = load %nyx_string*, %nyx_string** %3328
  %3399 = load %nyx_string*, %nyx_string** %3344
  %3400 = load i64, i64* %3386
  %3401 = call %nyx_string* @nyx_string_substring(%nyx_string* %3399, i64 0, i64 %3400)
  %3402 = load %nyx_string*, %nyx_string** %3359
  %3403 = call %nyx_string* @nyx_string_concat(%nyx_string* %3401, %nyx_string* %3402)
  %3404 = getelementptr [2 x i8], [2 x i8]* @.str433, i32 0, i32 0
  %3405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3404, i64 1)
  %3406 = call %nyx_string* @nyx_string_concat(%nyx_string* %3403, %nyx_string* %3405)
  %3407 = load %nyx_string*, %nyx_string** %3344
  %3408 = load i64, i64* %3386
  %3409 = load %nyx_string*, %nyx_string** %3344
  %3410 = call i64 @nyx_string_byte_length(%nyx_string* %3409)
  %3411 = call %nyx_string* @nyx_string_substring(%nyx_string* %3407, i64 %3408, i64 %3410)
  %3412 = call %nyx_string* @nyx_string_concat(%nyx_string* %3406, %nyx_string* %3411)
  %3413 = call i8* @nyx_string_to_cstr(%nyx_string* %3398)
  %3414 = call i1 @nyx_write_file_safe(i8* %3413, %nyx_string* %3412)
  br label %merge591
merge591:
  %3415 = load %nyx_string*, %nyx_string** %lang.ptr
  %3416 = getelementptr [36 x i8], [36 x i8]* @.str434, i32 0, i32 0
  %3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3416, i64 35)
  %3418 = getelementptr [40 x i8], [40 x i8]* @.str435, i32 0, i32 0
  %3419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3418, i64 39)
  %3420 = call %nyx_string* @sdd_msg(%nyx_string* %3415, %nyx_string* %3417, %nyx_string* %3419)
  %3421 = call i8* @nyx_string_to_cstr(%nyx_string* %3420)
  call void @nyx_print_string(i8* %3421)
  ret i1 1
}

define internal i1 @run_sdd_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3422 = getelementptr [11 x i8], [11 x i8]* @.str436, i32 0, i32 0
  %3423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3422, i64 10)
  %3424 = load %nyx_string*, %nyx_string** %dir.ptr
  %3425 = call %nyx_string* @nyx_string_concat(%nyx_string* %3423, %nyx_string* %3424)
  %3426 = getelementptr [16 x i8], [16 x i8]* @.str437, i32 0, i32 0
  %3427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3426, i64 15)
  %3428 = call %nyx_string* @nyx_string_concat(%nyx_string* %3425, %nyx_string* %3427)
  %3429 = call i8* @nyx_string_to_cstr(%nyx_string* %3428)
  %3430 = call %nyx_string* @nyx_exec(i8* %3429)
  %3431 = load %nyx_string*, %nyx_string** %dir.ptr
  %3432 = load %nyx_string*, %nyx_string** %lang.ptr
  %3433 = call i64 @write_evidence(%nyx_string* %3431, %nyx_string* %3432)
  %3434 = alloca i64
  store i64 %3433, i64* %3434
  %3435 = load i64, i64* %3434
  %3436 = icmp eq i64 %3435, 2
  br i1 %3436, label %then592, label %else593
then592:
  %3437 = load %nyx_string*, %nyx_string** %lang.ptr
  %3438 = getelementptr [59 x i8], [59 x i8]* @.str438, i32 0, i32 0
  %3439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3438, i64 58)
  %3440 = call %nyx_string* @toolchain_version()
  %3441 = call %nyx_string* @nyx_string_concat(%nyx_string* %3439, %nyx_string* %3440)
  %3442 = getelementptr [4 x i8], [4 x i8]* @.str439, i32 0, i32 0
  %3443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3442, i64 3)
  %3444 = call %nyx_string* @nyx_string_concat(%nyx_string* %3441, %nyx_string* %3443)
  %3445 = getelementptr [65 x i8], [65 x i8]* @.str440, i32 0, i32 0
  %3446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3445, i64 64)
  %3447 = call %nyx_string* @toolchain_version()
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3446, %nyx_string* %3447)
  %3449 = getelementptr [4 x i8], [4 x i8]* @.str441, i32 0, i32 0
  %3450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3449, i64 3)
  %3451 = call %nyx_string* @nyx_string_concat(%nyx_string* %3448, %nyx_string* %3450)
  %3452 = call %nyx_string* @sdd_msg(%nyx_string* %3437, %nyx_string* %3444, %nyx_string* %3451)
  %3453 = call i8* @nyx_string_to_cstr(%nyx_string* %3452)
  call void @nyx_print_string(i8* %3453)
  br label %merge594
else593:
  br label %merge594
merge594:
  %3454 = load i64, i64* %3434
  %3455 = icmp eq i64 %3454, 1
  br i1 %3455, label %then595, label %else596
then595:
  %3456 = load %nyx_string*, %nyx_string** %lang.ptr
  %3457 = getelementptr [34 x i8], [34 x i8]* @.str442, i32 0, i32 0
  %3458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %3457, i64 33)
  %3459 = call %nyx_string* @toolchain_version()
  %3460 = call %nyx_string* @nyx_string_concat(%nyx_string* %3458, %nyx_string* %3459)
  %3461 = getelementptr [4 x i8], [4 x i8]* @.str443, i32 0, i32 0
  %3462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %3461, i64 3)
  %3463 = call %nyx_string* @nyx_string_concat(%nyx_string* %3460, %nyx_string* %3462)
  %3464 = getelementptr [33 x i8], [33 x i8]* @.str444, i32 0, i32 0
  %3465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %3464, i64 32)
  %3466 = call %nyx_string* @toolchain_version()
  %3467 = call %nyx_string* @nyx_string_concat(%nyx_string* %3465, %nyx_string* %3466)
  %3468 = getelementptr [4 x i8], [4 x i8]* @.str445, i32 0, i32 0
  %3469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %3468, i64 3)
  %3470 = call %nyx_string* @nyx_string_concat(%nyx_string* %3467, %nyx_string* %3469)
  %3471 = call %nyx_string* @sdd_msg(%nyx_string* %3456, %nyx_string* %3463, %nyx_string* %3470)
  %3472 = call i8* @nyx_string_to_cstr(%nyx_string* %3471)
  call void @nyx_print_string(i8* %3472)
  br label %merge597
else596:
  br label %merge597
merge597:
  %3473 = load i64, i64* %3434
  %3474 = icmp eq i64 %3473, 0
  br i1 %3474, label %then598, label %else599
then598:
  %3475 = load %nyx_string*, %nyx_string** %lang.ptr
  %3476 = getelementptr [41 x i8], [41 x i8]* @.str446, i32 0, i32 0
  %3477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %3476, i64 40)
  %3478 = call %nyx_string* @toolchain_version()
  %3479 = call %nyx_string* @nyx_string_concat(%nyx_string* %3477, %nyx_string* %3478)
  %3480 = getelementptr [4 x i8], [4 x i8]* @.str447, i32 0, i32 0
  %3481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %3480, i64 3)
  %3482 = call %nyx_string* @nyx_string_concat(%nyx_string* %3479, %nyx_string* %3481)
  %3483 = getelementptr [39 x i8], [39 x i8]* @.str448, i32 0, i32 0
  %3484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %3483, i64 38)
  %3485 = call %nyx_string* @toolchain_version()
  %3486 = call %nyx_string* @nyx_string_concat(%nyx_string* %3484, %nyx_string* %3485)
  %3487 = getelementptr [4 x i8], [4 x i8]* @.str449, i32 0, i32 0
  %3488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %3487, i64 3)
  %3489 = call %nyx_string* @nyx_string_concat(%nyx_string* %3486, %nyx_string* %3488)
  %3490 = call %nyx_string* @sdd_msg(%nyx_string* %3475, %nyx_string* %3482, %nyx_string* %3489)
  %3491 = call i8* @nyx_string_to_cstr(%nyx_string* %3490)
  call void @nyx_print_string(i8* %3491)
  br label %merge600
else599:
  br label %merge600
merge600:
  %3492 = load %nyx_string*, %nyx_string** %dir.ptr
  %3493 = getelementptr [28 x i8], [28 x i8]* @.str450, i32 0, i32 0
  %3494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %3493, i64 27)
  %3495 = call %nyx_string* @nyx_string_concat(%nyx_string* %3492, %nyx_string* %3494)
  %3496 = call i8* @nyx_string_to_cstr(%nyx_string* %3495)
  %3497 = call i1 @nyx_file_exists(i8* %3496)
  br i1 %3497, label %then601, label %else602
then601:
  %3498 = load %nyx_string*, %nyx_string** %dir.ptr
  %3499 = call i64 @write_constitution_test(%nyx_string* %3498)
  %3500 = alloca i64
  store i64 %3499, i64* %3500
  %3501 = load i64, i64* %3500
  %3502 = icmp eq i64 %3501, 1
  br i1 %3502, label %then604, label %else605
then604:
  %3503 = load %nyx_string*, %nyx_string** %lang.ptr
  %3504 = getelementptr [42 x i8], [42 x i8]* @.str451, i32 0, i32 0
  %3505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %3504, i64 41)
  %3506 = getelementptr [41 x i8], [41 x i8]* @.str452, i32 0, i32 0
  %3507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %3506, i64 40)
  %3508 = call %nyx_string* @sdd_msg(%nyx_string* %3503, %nyx_string* %3505, %nyx_string* %3507)
  %3509 = call i8* @nyx_string_to_cstr(%nyx_string* %3508)
  call void @nyx_print_string(i8* %3509)
  br label %merge606
else605:
  br label %merge606
merge606:
  %3510 = load i64, i64* %3500
  %3511 = icmp eq i64 %3510, 2
  br i1 %3511, label %then607, label %else608
then607:
  %3512 = load %nyx_string*, %nyx_string** %lang.ptr
  %3513 = getelementptr [67 x i8], [67 x i8]* @.str453, i32 0, i32 0
  %3514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %3513, i64 66)
  %3515 = getelementptr [73 x i8], [73 x i8]* @.str454, i32 0, i32 0
  %3516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %3515, i64 72)
  %3517 = call %nyx_string* @sdd_msg(%nyx_string* %3512, %nyx_string* %3514, %nyx_string* %3516)
  %3518 = call i8* @nyx_string_to_cstr(%nyx_string* %3517)
  call void @nyx_print_string(i8* %3518)
  br label %merge609
else608:
  br label %merge609
merge609:
  %3519 = load i64, i64* %3500
  %3520 = icmp eq i64 %3519, 0
  br i1 %3520, label %then610, label %else611
then610:
  %3521 = load %nyx_string*, %nyx_string** %lang.ptr
  %3522 = getelementptr [49 x i8], [49 x i8]* @.str455, i32 0, i32 0
  %3523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %3522, i64 48)
  %3524 = getelementptr [47 x i8], [47 x i8]* @.str456, i32 0, i32 0
  %3525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %3524, i64 46)
  %3526 = call %nyx_string* @sdd_msg(%nyx_string* %3521, %nyx_string* %3523, %nyx_string* %3525)
  %3527 = call i8* @nyx_string_to_cstr(%nyx_string* %3526)
  call void @nyx_print_string(i8* %3527)
  br label %merge612
else611:
  br label %merge612
merge612:
  br label %merge603
else602:
  br label %merge603
merge603:
  ret i1 1
}

define internal i1 @run_sdd_init(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3528 = call %nyx_string* @resolve_seed_home()
  %3529 = alloca %nyx_string*
  store %nyx_string* %3528, %nyx_string** %3529
  %3530 = load %nyx_string*, %nyx_string** %3529
  %3531 = getelementptr [12 x i8], [12 x i8]* @.str457, i32 0, i32 0
  %3532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %3531, i64 11)
  %3533 = call %nyx_string* @nyx_string_concat(%nyx_string* %3530, %nyx_string* %3532)
  %3534 = load %nyx_string*, %nyx_string** %lang.ptr
  %3535 = call %nyx_string* @nyx_string_concat(%nyx_string* %3533, %nyx_string* %3534)
  %3536 = getelementptr [5 x i8], [5 x i8]* @.str458, i32 0, i32 0
  %3537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %3536, i64 4)
  %3538 = call %nyx_string* @nyx_string_concat(%nyx_string* %3535, %nyx_string* %3537)
  %3539 = alloca %nyx_string*
  store %nyx_string* %3538, %nyx_string** %3539
  %3540 = alloca i1
  store i1 true, i1* %3540
  %3541 = load %nyx_string*, %nyx_string** %3529
  %3542 = getelementptr [1 x i8], [1 x i8]* @.str459, i32 0, i32 0
  %3543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %3542, i64 0)
  %3544 = call i1 @nyx_string_equals(%nyx_string* %3541, %nyx_string* %3543)
  br i1 %3544, label %sc_or_end614, label %sc_or_rhs613
sc_or_rhs613:
  %3545 = load %nyx_string*, %nyx_string** %3539
  %3546 = getelementptr [17 x i8], [17 x i8]* @.str460, i32 0, i32 0
  %3547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %3546, i64 16)
  %3548 = call %nyx_string* @nyx_string_concat(%nyx_string* %3545, %nyx_string* %3547)
  %3549 = call i8* @nyx_string_to_cstr(%nyx_string* %3548)
  %3550 = call i1 @nyx_file_exists(i8* %3549)
  %3551 = icmp eq i1 %3550, 0
  store i1 %3551, i1* %3540
  br label %sc_or_end614
sc_or_end614:
  %3552 = load i1, i1* %3540
  br i1 %3552, label %then615, label %else616
then615:
  %3553 = load %nyx_string*, %nyx_string** %lang.ptr
  %3554 = getelementptr [49 x i8], [49 x i8]* @.str461, i32 0, i32 0
  %3555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %3554, i64 48)
  %3556 = load %nyx_string*, %nyx_string** %lang.ptr
  %3557 = call %nyx_string* @nyx_string_concat(%nyx_string* %3555, %nyx_string* %3556)
  %3558 = getelementptr [59 x i8], [59 x i8]* @.str462, i32 0, i32 0
  %3559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %3558, i64 58)
  %3560 = call %nyx_string* @nyx_string_concat(%nyx_string* %3557, %nyx_string* %3559)
  %3561 = getelementptr [61 x i8], [61 x i8]* @.str463, i32 0, i32 0
  %3562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %3561, i64 60)
  %3563 = load %nyx_string*, %nyx_string** %lang.ptr
  %3564 = call %nyx_string* @nyx_string_concat(%nyx_string* %3562, %nyx_string* %3563)
  %3565 = getelementptr [44 x i8], [44 x i8]* @.str464, i32 0, i32 0
  %3566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %3565, i64 43)
  %3567 = call %nyx_string* @nyx_string_concat(%nyx_string* %3564, %nyx_string* %3566)
  %3568 = call %nyx_string* @sdd_msg(%nyx_string* %3553, %nyx_string* %3560, %nyx_string* %3567)
  %3569 = call i8* @nyx_string_to_cstr(%nyx_string* %3568)
  call void @nyx_print_string(i8* %3569)
  %3570 = load %nyx_string*, %nyx_string** %lang.ptr
  %3571 = getelementptr [104 x i8], [104 x i8]* @.str465, i32 0, i32 0
  %3572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %3571, i64 103)
  %3573 = getelementptr [109 x i8], [109 x i8]* @.str466, i32 0, i32 0
  %3574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %3573, i64 108)
  %3575 = call %nyx_string* @sdd_msg(%nyx_string* %3570, %nyx_string* %3572, %nyx_string* %3574)
  %3576 = call i8* @nyx_string_to_cstr(%nyx_string* %3575)
  call void @nyx_print_string(i8* %3576)
  ret i1 0
else616:
  br label %merge617
merge617:
  %3577 = getelementptr [11 x i8], [11 x i8]* @.str467, i32 0, i32 0
  %3578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %3577, i64 10)
  %3579 = load %nyx_string*, %nyx_string** %dir.ptr
  %3580 = call %nyx_string* @nyx_string_concat(%nyx_string* %3578, %nyx_string* %3579)
  %3581 = getelementptr [13 x i8], [13 x i8]* @.str468, i32 0, i32 0
  %3582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %3581, i64 12)
  %3583 = call %nyx_string* @nyx_string_concat(%nyx_string* %3580, %nyx_string* %3582)
  %3584 = load %nyx_string*, %nyx_string** %dir.ptr
  %3585 = call %nyx_string* @nyx_string_concat(%nyx_string* %3583, %nyx_string* %3584)
  %3586 = getelementptr [13 x i8], [13 x i8]* @.str469, i32 0, i32 0
  %3587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %3586, i64 12)
  %3588 = call %nyx_string* @nyx_string_concat(%nyx_string* %3585, %nyx_string* %3587)
  %3589 = load %nyx_string*, %nyx_string** %dir.ptr
  %3590 = call %nyx_string* @nyx_string_concat(%nyx_string* %3588, %nyx_string* %3589)
  %3591 = getelementptr [18 x i8], [18 x i8]* @.str470, i32 0, i32 0
  %3592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %3591, i64 17)
  %3593 = call %nyx_string* @nyx_string_concat(%nyx_string* %3590, %nyx_string* %3592)
  %3594 = load %nyx_string*, %nyx_string** %dir.ptr
  %3595 = call %nyx_string* @nyx_string_concat(%nyx_string* %3593, %nyx_string* %3594)
  %3596 = getelementptr [10 x i8], [10 x i8]* @.str471, i32 0, i32 0
  %3597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %3596, i64 9)
  %3598 = call %nyx_string* @nyx_string_concat(%nyx_string* %3595, %nyx_string* %3597)
  %3599 = load %nyx_string*, %nyx_string** %dir.ptr
  %3600 = call %nyx_string* @nyx_string_concat(%nyx_string* %3598, %nyx_string* %3599)
  %3601 = getelementptr [8 x i8], [8 x i8]* @.str472, i32 0, i32 0
  %3602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %3601, i64 7)
  %3603 = call %nyx_string* @nyx_string_concat(%nyx_string* %3600, %nyx_string* %3602)
  %3604 = call i8* @nyx_string_to_cstr(%nyx_string* %3603)
  %3605 = call %nyx_string* @nyx_exec(i8* %3604)
  %3606 = load %nyx_string*, %nyx_string** %lang.ptr
  %3607 = getelementptr [40 x i8], [40 x i8]* @.str473, i32 0, i32 0
  %3608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %3607, i64 39)
  %3609 = getelementptr [38 x i8], [38 x i8]* @.str474, i32 0, i32 0
  %3610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %3609, i64 37)
  %3611 = call %nyx_string* @sdd_msg(%nyx_string* %3606, %nyx_string* %3608, %nyx_string* %3610)
  %3612 = call i8* @nyx_string_to_cstr(%nyx_string* %3611)
  call void @nyx_print_string(i8* %3612)
  %3613 = load %nyx_string*, %nyx_string** %3539
  %3614 = getelementptr [16 x i8], [16 x i8]* @.str475, i32 0, i32 0
  %3615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %3614, i64 15)
  %3616 = load %nyx_string*, %nyx_string** %dir.ptr
  %3617 = getelementptr [22 x i8], [22 x i8]* @.str476, i32 0, i32 0
  %3618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %3617, i64 21)
  %3619 = call %nyx_string* @nyx_string_concat(%nyx_string* %3616, %nyx_string* %3618)
  %3620 = load %nyx_string*, %nyx_string** %lang.ptr
  %3621 = call i1 @sdd_seed_template(%nyx_string* %3613, %nyx_string* %3615, %nyx_string* %3619, %nyx_string* %3620)
  %3622 = load %nyx_string*, %nyx_string** %3539
  %3623 = getelementptr [12 x i8], [12 x i8]* @.str477, i32 0, i32 0
  %3624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %3623, i64 11)
  %3625 = load %nyx_string*, %nyx_string** %dir.ptr
  %3626 = getelementptr [18 x i8], [18 x i8]* @.str478, i32 0, i32 0
  %3627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %3626, i64 17)
  %3628 = call %nyx_string* @nyx_string_concat(%nyx_string* %3625, %nyx_string* %3627)
  %3629 = load %nyx_string*, %nyx_string** %lang.ptr
  %3630 = call i1 @sdd_seed_template(%nyx_string* %3622, %nyx_string* %3624, %nyx_string* %3628, %nyx_string* %3629)
  %3631 = load %nyx_string*, %nyx_string** %3539
  %3632 = getelementptr [16 x i8], [16 x i8]* @.str479, i32 0, i32 0
  %3633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %3632, i64 15)
  %3634 = load %nyx_string*, %nyx_string** %dir.ptr
  %3635 = getelementptr [27 x i8], [27 x i8]* @.str480, i32 0, i32 0
  %3636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %3635, i64 26)
  %3637 = call %nyx_string* @nyx_string_concat(%nyx_string* %3634, %nyx_string* %3636)
  %3638 = load %nyx_string*, %nyx_string** %lang.ptr
  %3639 = call i1 @sdd_seed_template(%nyx_string* %3631, %nyx_string* %3633, %nyx_string* %3637, %nyx_string* %3638)
  %3640 = load %nyx_string*, %nyx_string** %3539
  %3641 = getelementptr [16 x i8], [16 x i8]* @.str481, i32 0, i32 0
  %3642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %3641, i64 15)
  %3643 = load %nyx_string*, %nyx_string** %dir.ptr
  %3644 = getelementptr [17 x i8], [17 x i8]* @.str482, i32 0, i32 0
  %3645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %3644, i64 16)
  %3646 = call %nyx_string* @nyx_string_concat(%nyx_string* %3643, %nyx_string* %3645)
  %3647 = load %nyx_string*, %nyx_string** %lang.ptr
  %3648 = call i1 @sdd_seed_template(%nyx_string* %3640, %nyx_string* %3642, %nyx_string* %3646, %nyx_string* %3647)
  %3649 = load %nyx_string*, %nyx_string** %3539
  %3650 = getelementptr [14 x i8], [14 x i8]* @.str483, i32 0, i32 0
  %3651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %3650, i64 13)
  %3652 = load %nyx_string*, %nyx_string** %dir.ptr
  %3653 = getelementptr [24 x i8], [24 x i8]* @.str484, i32 0, i32 0
  %3654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %3653, i64 23)
  %3655 = call %nyx_string* @nyx_string_concat(%nyx_string* %3652, %nyx_string* %3654)
  %3656 = load %nyx_string*, %nyx_string** %lang.ptr
  %3657 = call i1 @sdd_seed_template(%nyx_string* %3649, %nyx_string* %3651, %nyx_string* %3655, %nyx_string* %3656)
  %3658 = load %nyx_string*, %nyx_string** %dir.ptr
  %3659 = load %nyx_string*, %nyx_string** %lang.ptr
  %3660 = call i64 @write_evidence(%nyx_string* %3658, %nyx_string* %3659)
  %3661 = alloca i64
  store i64 %3660, i64* %3661
  %3662 = load %nyx_string*, %nyx_string** %dir.ptr
  %3663 = getelementptr [20 x i8], [20 x i8]* @.str485, i32 0, i32 0
  %3664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %3663, i64 19)
  %3665 = call %nyx_string* @nyx_string_concat(%nyx_string* %3662, %nyx_string* %3664)
  %3666 = call %nyx_string* @toolchain_version()
  %3667 = call %nyx_string* @nyx_string_concat(%nyx_string* %3665, %nyx_string* %3666)
  %3668 = getelementptr [4 x i8], [4 x i8]* @.str486, i32 0, i32 0
  %3669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %3668, i64 3)
  %3670 = call %nyx_string* @nyx_string_concat(%nyx_string* %3667, %nyx_string* %3669)
  %3671 = alloca %nyx_string*
  store %nyx_string* %3670, %nyx_string** %3671
  %3672 = load i64, i64* %3661
  %3673 = icmp eq i64 %3672, 1
  br i1 %3673, label %then618, label %else619
then618:
  %3674 = getelementptr [3 x i8], [3 x i8]* @.str487, i32 0, i32 0
  %3675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %3674, i64 2)
  %3676 = load %nyx_string*, %nyx_string** %3671
  %3677 = call %nyx_string* @nyx_string_concat(%nyx_string* %3675, %nyx_string* %3676)
  %3678 = load %nyx_string*, %nyx_string** %lang.ptr
  %3679 = getelementptr [13 x i8], [13 x i8]* @.str488, i32 0, i32 0
  %3680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %3679, i64 12)
  %3681 = getelementptr [12 x i8], [12 x i8]* @.str489, i32 0, i32 0
  %3682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %3681, i64 11)
  %3683 = call %nyx_string* @sdd_msg(%nyx_string* %3678, %nyx_string* %3680, %nyx_string* %3682)
  %3684 = call %nyx_string* @nyx_string_concat(%nyx_string* %3677, %nyx_string* %3683)
  %3685 = call i8* @nyx_string_to_cstr(%nyx_string* %3684)
  call void @nyx_print_string(i8* %3685)
  br label %merge620
else619:
  br label %merge620
merge620:
  %3686 = load i64, i64* %3661
  %3687 = icmp eq i64 %3686, 2
  br i1 %3687, label %then621, label %else622
then621:
  %3688 = load %nyx_string*, %nyx_string** %lang.ptr
  %3689 = getelementptr [41 x i8], [41 x i8]* @.str490, i32 0, i32 0
  %3690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %3689, i64 40)
  %3691 = load %nyx_string*, %nyx_string** %3671
  %3692 = call %nyx_string* @nyx_string_concat(%nyx_string* %3690, %nyx_string* %3691)
  %3693 = getelementptr [47 x i8], [47 x i8]* @.str491, i32 0, i32 0
  %3694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %3693, i64 46)
  %3695 = load %nyx_string*, %nyx_string** %3671
  %3696 = call %nyx_string* @nyx_string_concat(%nyx_string* %3694, %nyx_string* %3695)
  %3697 = call %nyx_string* @sdd_msg(%nyx_string* %3688, %nyx_string* %3692, %nyx_string* %3696)
  %3698 = call i8* @nyx_string_to_cstr(%nyx_string* %3697)
  call void @nyx_print_string(i8* %3698)
  br label %merge623
else622:
  br label %merge623
merge623:
  %3699 = load i64, i64* %3661
  %3700 = icmp eq i64 %3699, 0
  br i1 %3700, label %then624, label %else625
then624:
  %3701 = load %nyx_string*, %nyx_string** %lang.ptr
  %3702 = getelementptr [23 x i8], [23 x i8]* @.str492, i32 0, i32 0
  %3703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %3702, i64 22)
  %3704 = load %nyx_string*, %nyx_string** %3671
  %3705 = call %nyx_string* @nyx_string_concat(%nyx_string* %3703, %nyx_string* %3704)
  %3706 = getelementptr [21 x i8], [21 x i8]* @.str493, i32 0, i32 0
  %3707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %3706, i64 20)
  %3708 = load %nyx_string*, %nyx_string** %3671
  %3709 = call %nyx_string* @nyx_string_concat(%nyx_string* %3707, %nyx_string* %3708)
  %3710 = call %nyx_string* @sdd_msg(%nyx_string* %3701, %nyx_string* %3705, %nyx_string* %3709)
  %3711 = call i8* @nyx_string_to_cstr(%nyx_string* %3710)
  call void @nyx_print_string(i8* %3711)
  br label %merge626
else625:
  br label %merge626
merge626:
  %3712 = load %nyx_string*, %nyx_string** %dir.ptr
  %3713 = call i64 @write_constitution_test(%nyx_string* %3712)
  %3714 = alloca i64
  store i64 %3713, i64* %3714
  %3715 = load %nyx_string*, %nyx_string** %dir.ptr
  %3716 = getelementptr [28 x i8], [28 x i8]* @.str494, i32 0, i32 0
  %3717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %3716, i64 27)
  %3718 = call %nyx_string* @nyx_string_concat(%nyx_string* %3715, %nyx_string* %3717)
  %3719 = alloca %nyx_string*
  store %nyx_string* %3718, %nyx_string** %3719
  %3720 = load i64, i64* %3714
  %3721 = icmp eq i64 %3720, 1
  br i1 %3721, label %then627, label %else628
then627:
  %3722 = getelementptr [3 x i8], [3 x i8]* @.str495, i32 0, i32 0
  %3723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %3722, i64 2)
  %3724 = load %nyx_string*, %nyx_string** %3719
  %3725 = call %nyx_string* @nyx_string_concat(%nyx_string* %3723, %nyx_string* %3724)
  %3726 = load %nyx_string*, %nyx_string** %lang.ptr
  %3727 = getelementptr [13 x i8], [13 x i8]* @.str496, i32 0, i32 0
  %3728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %3727, i64 12)
  %3729 = getelementptr [12 x i8], [12 x i8]* @.str497, i32 0, i32 0
  %3730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %3729, i64 11)
  %3731 = call %nyx_string* @sdd_msg(%nyx_string* %3726, %nyx_string* %3728, %nyx_string* %3730)
  %3732 = call %nyx_string* @nyx_string_concat(%nyx_string* %3725, %nyx_string* %3731)
  %3733 = call i8* @nyx_string_to_cstr(%nyx_string* %3732)
  call void @nyx_print_string(i8* %3733)
  br label %merge629
else628:
  br label %merge629
merge629:
  %3734 = load i64, i64* %3714
  %3735 = icmp eq i64 %3734, 2
  br i1 %3735, label %then630, label %else631
then630:
  %3736 = load %nyx_string*, %nyx_string** %lang.ptr
  %3737 = getelementptr [41 x i8], [41 x i8]* @.str498, i32 0, i32 0
  %3738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %3737, i64 40)
  %3739 = load %nyx_string*, %nyx_string** %3719
  %3740 = call %nyx_string* @nyx_string_concat(%nyx_string* %3738, %nyx_string* %3739)
  %3741 = getelementptr [47 x i8], [47 x i8]* @.str499, i32 0, i32 0
  %3742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %3741, i64 46)
  %3743 = load %nyx_string*, %nyx_string** %3719
  %3744 = call %nyx_string* @nyx_string_concat(%nyx_string* %3742, %nyx_string* %3743)
  %3745 = call %nyx_string* @sdd_msg(%nyx_string* %3736, %nyx_string* %3740, %nyx_string* %3744)
  %3746 = call i8* @nyx_string_to_cstr(%nyx_string* %3745)
  call void @nyx_print_string(i8* %3746)
  br label %merge632
else631:
  br label %merge632
merge632:
  %3747 = load i64, i64* %3714
  %3748 = icmp eq i64 %3747, 0
  br i1 %3748, label %then633, label %else634
then633:
  %3749 = load %nyx_string*, %nyx_string** %lang.ptr
  %3750 = getelementptr [23 x i8], [23 x i8]* @.str500, i32 0, i32 0
  %3751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %3750, i64 22)
  %3752 = load %nyx_string*, %nyx_string** %3719
  %3753 = call %nyx_string* @nyx_string_concat(%nyx_string* %3751, %nyx_string* %3752)
  %3754 = getelementptr [21 x i8], [21 x i8]* @.str501, i32 0, i32 0
  %3755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %3754, i64 20)
  %3756 = load %nyx_string*, %nyx_string** %3719
  %3757 = call %nyx_string* @nyx_string_concat(%nyx_string* %3755, %nyx_string* %3756)
  %3758 = call %nyx_string* @sdd_msg(%nyx_string* %3749, %nyx_string* %3753, %nyx_string* %3757)
  %3759 = call i8* @nyx_string_to_cstr(%nyx_string* %3758)
  call void @nyx_print_string(i8* %3759)
  br label %merge635
else634:
  br label %merge635
merge635:
  %3760 = load %nyx_string*, %nyx_string** %dir.ptr
  %3761 = load %nyx_string*, %nyx_string** %lang.ptr
  %3762 = call i1 @add_agents_triggers(%nyx_string* %3760, %nyx_string* %3761)
  %3763 = getelementptr [1 x i8], [1 x i8]* @.str502, i32 0, i32 0
  %3764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %3763, i64 0)
  %3765 = call i8* @nyx_string_to_cstr(%nyx_string* %3764)
  call void @nyx_print_string(i8* %3765)
  %3766 = load %nyx_string*, %nyx_string** %lang.ptr
  %3767 = getelementptr [94 x i8], [94 x i8]* @.str503, i32 0, i32 0
  %3768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %3767, i64 93)
  %3769 = getelementptr [98 x i8], [98 x i8]* @.str504, i32 0, i32 0
  %3770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %3769, i64 97)
  %3771 = call %nyx_string* @sdd_msg(%nyx_string* %3766, %nyx_string* %3768, %nyx_string* %3770)
  %3772 = call i8* @nyx_string_to_cstr(%nyx_string* %3771)
  call void @nyx_print_string(i8* %3772)
  %3773 = load %nyx_string*, %nyx_string** %lang.ptr
  %3774 = getelementptr [89 x i8], [89 x i8]* @.str505, i32 0, i32 0
  %3775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %3774, i64 88)
  %3776 = getelementptr [90 x i8], [90 x i8]* @.str506, i32 0, i32 0
  %3777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %3776, i64 89)
  %3778 = call %nyx_string* @sdd_msg(%nyx_string* %3773, %nyx_string* %3775, %nyx_string* %3777)
  %3779 = call i8* @nyx_string_to_cstr(%nyx_string* %3778)
  call void @nyx_print_string(i8* %3779)
  %3780 = load %nyx_string*, %nyx_string** %lang.ptr
  %3781 = getelementptr [78 x i8], [78 x i8]* @.str507, i32 0, i32 0
  %3782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %3781, i64 77)
  %3783 = getelementptr [76 x i8], [76 x i8]* @.str508, i32 0, i32 0
  %3784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %3783, i64 75)
  %3785 = call %nyx_string* @sdd_msg(%nyx_string* %3780, %nyx_string* %3782, %nyx_string* %3784)
  %3786 = call i8* @nyx_string_to_cstr(%nyx_string* %3785)
  call void @nyx_print_string(i8* %3786)
  ret i1 1
}

define internal i1 @run_init(
%nyx_string* %name_arg.param, %nyx_string* %lang.param, %nyx_string* %agents.param) {
  %name_arg.ptr = alloca %nyx_string*
  store %nyx_string* %name_arg.param, %nyx_string** %name_arg.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %3787 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %3788 = alloca %nyx_string*
  store %nyx_string* %3787, %nyx_string** %3788
  %3789 = load %nyx_string*, %nyx_string** %3788
  %3790 = getelementptr [1 x i8], [1 x i8]* @.str509, i32 0, i32 0
  %3791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %3790, i64 0)
  %3792 = call i1 @nyx_string_equals(%nyx_string* %3789, %nyx_string* %3791)
  %3793 = xor i1 %3792, true
  br i1 %3793, label %then636, label %else637
then636:
  %3794 = load %nyx_string*, %nyx_string** %3788
  %3795 = call i8* @nyx_string_to_cstr(%nyx_string* %3794)
  %3796 = call i1 @nyx_file_exists(i8* %3795)
  br i1 %3796, label %then639, label %else640
then639:
  %3797 = getelementptr [19 x i8], [19 x i8]* @.str510, i32 0, i32 0
  %3798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %3797, i64 18)
  %3799 = load %nyx_string*, %nyx_string** %3788
  %3800 = call %nyx_string* @nyx_string_concat(%nyx_string* %3798, %nyx_string* %3799)
  %3801 = getelementptr [17 x i8], [17 x i8]* @.str511, i32 0, i32 0
  %3802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %3801, i64 16)
  %3803 = call %nyx_string* @nyx_string_concat(%nyx_string* %3800, %nyx_string* %3802)
  %3804 = call i8* @nyx_string_to_cstr(%nyx_string* %3803)
  call void @nyx_print_string(i8* %3804)
  ret i1 0
else640:
  br label %merge641
merge641:
  %3805 = getelementptr [10 x i8], [10 x i8]* @.str512, i32 0, i32 0
  %3806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %3805, i64 9)
  %3807 = load %nyx_string*, %nyx_string** %3788
  %3808 = call %nyx_string* @nyx_string_concat(%nyx_string* %3806, %nyx_string* %3807)
  %3809 = getelementptr [5 x i8], [5 x i8]* @.str513, i32 0, i32 0
  %3810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %3809, i64 4)
  %3811 = call %nyx_string* @nyx_string_concat(%nyx_string* %3808, %nyx_string* %3810)
  %3812 = call i8* @nyx_string_to_cstr(%nyx_string* %3811)
  %3813 = call %nyx_string* @nyx_exec(i8* %3812)
  %3814 = getelementptr [19 x i8], [19 x i8]* @.str514, i32 0, i32 0
  %3815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %3814, i64 18)
  %3816 = load %nyx_string*, %nyx_string** %3788
  %3817 = call %nyx_string* @nyx_string_concat(%nyx_string* %3815, %nyx_string* %3816)
  %3818 = getelementptr [58 x i8], [58 x i8]* @.str515, i32 0, i32 0
  %3819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %3818, i64 57)
  %3820 = call %nyx_string* @nyx_string_concat(%nyx_string* %3817, %nyx_string* %3819)
  %3821 = alloca %nyx_string*
  store %nyx_string* %3820, %nyx_string** %3821
  %3822 = load %nyx_string*, %nyx_string** %3788
  %3823 = getelementptr [10 x i8], [10 x i8]* @.str516, i32 0, i32 0
  %3824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %3823, i64 9)
  %3825 = call %nyx_string* @nyx_string_concat(%nyx_string* %3822, %nyx_string* %3824)
  %3826 = load %nyx_string*, %nyx_string** %3821
  %3827 = call i8* @nyx_string_to_cstr(%nyx_string* %3825)
  %3828 = call i1 @nyx_write_file_safe(i8* %3827, %nyx_string* %3826)
  %3829 = load %nyx_string*, %nyx_string** %3788
  %3830 = getelementptr [13 x i8], [13 x i8]* @.str517, i32 0, i32 0
  %3831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %3830, i64 12)
  %3832 = call %nyx_string* @nyx_string_concat(%nyx_string* %3829, %nyx_string* %3831)
  %3833 = getelementptr [35 x i8], [35 x i8]* @.str518, i32 0, i32 0
  %3834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %3833, i64 34)
  %3835 = load %nyx_string*, %nyx_string** %3788
  %3836 = call %nyx_string* @nyx_string_concat(%nyx_string* %3834, %nyx_string* %3835)
  %3837 = getelementptr [7 x i8], [7 x i8]* @.str519, i32 0, i32 0
  %3838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %3837, i64 6)
  %3839 = call %nyx_string* @nyx_string_concat(%nyx_string* %3836, %nyx_string* %3838)
  %3840 = call i8* @nyx_string_to_cstr(%nyx_string* %3832)
  %3841 = call i1 @nyx_write_file_safe(i8* %3840, %nyx_string* %3839)
  %3842 = load %nyx_string*, %nyx_string** %3788
  %3843 = load %nyx_string*, %nyx_string** %lang.ptr
  %3844 = load %nyx_string*, %nyx_string** %agents.ptr
  %3845 = call i64 @scaffold_project_files(%nyx_string* %3842, %nyx_string* %3843, %nyx_string* %3844)
  %3846 = load %nyx_string*, %nyx_string** %3788
  %3847 = load %nyx_string*, %nyx_string** %3788
  %3848 = call i64 @seed_gitignore(%nyx_string* %3846, %nyx_string* %3847)
  %3849 = getelementptr [22 x i8], [22 x i8]* @.str520, i32 0, i32 0
  %3850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %3849, i64 21)
  %3851 = load %nyx_string*, %nyx_string** %3788
  %3852 = call %nyx_string* @nyx_string_concat(%nyx_string* %3850, %nyx_string* %3851)
  %3853 = call i8* @nyx_string_to_cstr(%nyx_string* %3852)
  call void @nyx_print_string(i8* %3853)
  %3854 = getelementptr [12 x i8], [12 x i8]* @.str521, i32 0, i32 0
  %3855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %3854, i64 11)
  %3856 = load %nyx_string*, %nyx_string** %3788
  %3857 = call %nyx_string* @nyx_string_concat(%nyx_string* %3855, %nyx_string* %3856)
  %3858 = getelementptr [2 x i8], [2 x i8]* @.str522, i32 0, i32 0
  %3859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %3858, i64 1)
  %3860 = call %nyx_string* @nyx_string_concat(%nyx_string* %3857, %nyx_string* %3859)
  %3861 = call i8* @nyx_string_to_cstr(%nyx_string* %3860)
  call void @nyx_print_string(i8* %3861)
  %3862 = getelementptr [15 x i8], [15 x i8]* @.str523, i32 0, i32 0
  %3863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %3862, i64 14)
  %3864 = load %nyx_string*, %nyx_string** %3788
  %3865 = call %nyx_string* @nyx_string_concat(%nyx_string* %3863, %nyx_string* %3864)
  %3866 = getelementptr [12 x i8], [12 x i8]* @.str524, i32 0, i32 0
  %3867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %3866, i64 11)
  %3868 = call %nyx_string* @nyx_string_concat(%nyx_string* %3865, %nyx_string* %3867)
  %3869 = call i8* @nyx_string_to_cstr(%nyx_string* %3868)
  call void @nyx_print_string(i8* %3869)
  ret i1 1
else637:
  br label %merge638
merge638:
  %3870 = getelementptr [9 x i8], [9 x i8]* @.str525, i32 0, i32 0
  %3871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %3870, i64 8)
  %3872 = call i8* @nyx_string_to_cstr(%nyx_string* %3871)
  %3873 = call i1 @nyx_file_exists(i8* %3872)
  br i1 %3873, label %then642, label %else643
then642:
  %3874 = getelementptr [31 x i8], [31 x i8]* @.str526, i32 0, i32 0
  %3875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %3874, i64 30)
  %3876 = call i8* @nyx_string_to_cstr(%nyx_string* %3875)
  call void @nyx_print_string(i8* %3876)
  ret i1 0
else643:
  br label %merge644
merge644:
  %3877 = getelementptr [4 x i8], [4 x i8]* @.str527, i32 0, i32 0
  %3878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %3877, i64 3)
  %3879 = call i8* @nyx_string_to_cstr(%nyx_string* %3878)
  %3880 = call %nyx_string* @nyx_getenv(i8* %3879)
  %3881 = alloca %nyx_string*
  store %nyx_string* %3880, %nyx_string** %3881
  %3882 = getelementptr [6 x i8], [6 x i8]* @.str528, i32 0, i32 0
  %3883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %3882, i64 5)
  store %nyx_string* %3883, %nyx_string** %3788
  %3884 = sub i64 0, 1
  %3885 = alloca i64
  store i64 %3884, i64* %3885
  %3886 = alloca i64
  store i64 0, i64* %3886
  %3887 = call i8* @llvm.stacksave()
  br label %while_cond645
while_cond645:
  %3888 = load i64, i64* %3886
  %3889 = load %nyx_string*, %nyx_string** %3881
  %3890 = call i64 @nyx_string_byte_length(%nyx_string* %3889)
  %3891 = icmp slt i64 %3888, %3890
  br i1 %3891, label %while_body646, label %while_end647
while_body646:
  call void @llvm.stackrestore(i8* %3887)
  %3892 = load %nyx_string*, %nyx_string** %3881
  %3893 = load i64, i64* %3886
  %3894 = call i8 @nyx_string_char_at(%nyx_string* %3892, i64 %3893)
  %3895 = zext i8 %3894 to i64
  %3896 = icmp eq i64 %3895, 47
  br i1 %3896, label %then648, label %else649
then648:
  %3897 = load i64, i64* %3886
  store i64 %3897, i64* %3885
  br label %merge650
else649:
  br label %merge650
merge650:
  %3898 = load i64, i64* %3886
  %3899 = add i64 %3898, 1
  store i64 %3899, i64* %3886
  br label %while_cond645
while_end647:
  %3900 = load i64, i64* %3885
  %3901 = icmp sge i64 %3900, 0
  br i1 %3901, label %then651, label %else652
then651:
  %3902 = load %nyx_string*, %nyx_string** %3881
  %3903 = load i64, i64* %3885
  %3904 = add i64 %3903, 1
  %3905 = load %nyx_string*, %nyx_string** %3881
  %3906 = call i64 @nyx_string_byte_length(%nyx_string* %3905)
  %3907 = call %nyx_string* @nyx_string_substring(%nyx_string* %3902, i64 %3904, i64 %3906)
  store %nyx_string* %3907, %nyx_string** %3788
  br label %merge653
else652:
  br label %merge653
merge653:
  %3908 = getelementptr [19 x i8], [19 x i8]* @.str529, i32 0, i32 0
  %3909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %3908, i64 18)
  %3910 = load %nyx_string*, %nyx_string** %3788
  %3911 = call %nyx_string* @nyx_string_concat(%nyx_string* %3909, %nyx_string* %3910)
  %3912 = getelementptr [58 x i8], [58 x i8]* @.str530, i32 0, i32 0
  %3913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %3912, i64 57)
  %3914 = call %nyx_string* @nyx_string_concat(%nyx_string* %3911, %nyx_string* %3913)
  %3915 = alloca %nyx_string*
  store %nyx_string* %3914, %nyx_string** %3915
  %3916 = getelementptr [9 x i8], [9 x i8]* @.str531, i32 0, i32 0
  %3917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %3916, i64 8)
  %3918 = load %nyx_string*, %nyx_string** %3915
  %3919 = call i8* @nyx_string_to_cstr(%nyx_string* %3917)
  %3920 = call i1 @nyx_write_file_safe(i8* %3919, %nyx_string* %3918)
  %3921 = getelementptr [13 x i8], [13 x i8]* @.str532, i32 0, i32 0
  %3922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %3921, i64 12)
  %3923 = call i8* @nyx_string_to_cstr(%nyx_string* %3922)
  %3924 = call %nyx_string* @nyx_exec(i8* %3923)
  %3925 = getelementptr [12 x i8], [12 x i8]* @.str533, i32 0, i32 0
  %3926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %3925, i64 11)
  %3927 = call i8* @nyx_string_to_cstr(%nyx_string* %3926)
  %3928 = call i1 @nyx_file_exists(i8* %3927)
  %3929 = icmp eq i1 %3928, 0
  br i1 %3929, label %then654, label %else655
then654:
  %3930 = getelementptr [12 x i8], [12 x i8]* @.str534, i32 0, i32 0
  %3931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %3930, i64 11)
  %3932 = getelementptr [35 x i8], [35 x i8]* @.str535, i32 0, i32 0
  %3933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %3932, i64 34)
  %3934 = load %nyx_string*, %nyx_string** %3788
  %3935 = call %nyx_string* @nyx_string_concat(%nyx_string* %3933, %nyx_string* %3934)
  %3936 = getelementptr [7 x i8], [7 x i8]* @.str536, i32 0, i32 0
  %3937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %3936, i64 6)
  %3938 = call %nyx_string* @nyx_string_concat(%nyx_string* %3935, %nyx_string* %3937)
  %3939 = call i8* @nyx_string_to_cstr(%nyx_string* %3931)
  %3940 = call i1 @nyx_write_file_safe(i8* %3939, %nyx_string* %3938)
  br label %merge656
else655:
  br label %merge656
merge656:
  %3941 = getelementptr [2 x i8], [2 x i8]* @.str537, i32 0, i32 0
  %3942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %3941, i64 1)
  %3943 = load %nyx_string*, %nyx_string** %lang.ptr
  %3944 = load %nyx_string*, %nyx_string** %agents.ptr
  %3945 = call i64 @scaffold_project_files(%nyx_string* %3942, %nyx_string* %3943, %nyx_string* %3944)
  %3946 = getelementptr [2 x i8], [2 x i8]* @.str538, i32 0, i32 0
  %3947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %3946, i64 1)
  %3948 = load %nyx_string*, %nyx_string** %3788
  %3949 = call i64 @seed_gitignore(%nyx_string* %3947, %nyx_string* %3948)
  %3950 = getelementptr [22 x i8], [22 x i8]* @.str539, i32 0, i32 0
  %3951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %3950, i64 21)
  %3952 = load %nyx_string*, %nyx_string** %3788
  %3953 = call %nyx_string* @nyx_string_concat(%nyx_string* %3951, %nyx_string* %3952)
  %3954 = call i8* @nyx_string_to_cstr(%nyx_string* %3953)
  call void @nyx_print_string(i8* %3954)
  %3955 = getelementptr [33 x i8], [33 x i8]* @.str540, i32 0, i32 0
  %3956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %3955, i64 32)
  %3957 = call i8* @nyx_string_to_cstr(%nyx_string* %3956)
  call void @nyx_print_string(i8* %3957)
  %3958 = getelementptr [21 x i8], [21 x i8]* @.str541, i32 0, i32 0
  %3959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %3958, i64 20)
  %3960 = call i8* @nyx_string_to_cstr(%nyx_string* %3959)
  call void @nyx_print_string(i8* %3960)
  %3961 = getelementptr [19 x i8], [19 x i8]* @.str542, i32 0, i32 0
  %3962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %3961, i64 18)
  %3963 = call i8* @nyx_string_to_cstr(%nyx_string* %3962)
  call void @nyx_print_string(i8* %3963)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %3964 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3965 = load { i64, i8* }*, { i64, i8* }** %3964
  %3966 = call i64 @nyx_array_length({ i64, i8* }* %3965)
  %3967 = icmp eq i64 %3966, 0
  br i1 %3967, label %then657, label %else658
then657:
  ret i1 1
else658:
  br label %merge659
merge659:
  %3968 = alloca i64
  store i64 0, i64* %3968
  %3969 = getelementptr [10 x i8], [10 x i8]* @.str543, i32 0, i32 0
  %3970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %3969, i64 9)
  %3971 = alloca %nyx_string*
  store %nyx_string* %3970, %nyx_string** %3971
  %3972 = getelementptr [14 x i8], [14 x i8]* @.str544, i32 0, i32 0
  %3973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %3972, i64 13)
  %3974 = alloca %nyx_string*
  store %nyx_string* %3973, %nyx_string** %3974
  %3975 = getelementptr [5 x i8], [5 x i8]* @.str545, i32 0, i32 0
  %3976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %3975, i64 4)
  %3977 = alloca %nyx_string*
  store %nyx_string* %3976, %nyx_string** %3977
  %3978 = getelementptr [4 x i8], [4 x i8]* @.str546, i32 0, i32 0
  %3979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %3978, i64 3)
  %3980 = alloca %nyx_string*
  store %nyx_string* %3979, %nyx_string** %3980
  %3981 = getelementptr [32 x i8], [32 x i8]* @.str547, i32 0, i32 0
  %3982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %3981, i64 31)
  %3983 = alloca %nyx_string*
  store %nyx_string* %3982, %nyx_string** %3983
  %3984 = getelementptr [43 x i8], [43 x i8]* @.str548, i32 0, i32 0
  %3985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %3984, i64 42)
  %3986 = alloca %nyx_string*
  store %nyx_string* %3985, %nyx_string** %3986
  %3987 = getelementptr [2 x i8], [2 x i8]* @.str549, i32 0, i32 0
  %3988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %3987, i64 1)
  %3989 = alloca %nyx_string*
  store %nyx_string* %3988, %nyx_string** %3989
  %3990 = getelementptr [13 x i8], [13 x i8]* @.str550, i32 0, i32 0
  %3991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %3990, i64 12)
  %3992 = alloca %nyx_string*
  store %nyx_string* %3991, %nyx_string** %3992
  %3993 = getelementptr [26 x i8], [26 x i8]* @.str551, i32 0, i32 0
  %3994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %3993, i64 25)
  %3995 = alloca %nyx_string*
  store %nyx_string* %3994, %nyx_string** %3995
  %3996 = getelementptr [7 x i8], [7 x i8]* @.str552, i32 0, i32 0
  %3997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %3996, i64 6)
  %3998 = alloca %nyx_string*
  store %nyx_string* %3997, %nyx_string** %3998
  %3999 = getelementptr [12 x i8], [12 x i8]* @.str553, i32 0, i32 0
  %4000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %3999, i64 11)
  %4001 = alloca %nyx_string*
  store %nyx_string* %4000, %nyx_string** %4001
  %4002 = call i8* @llvm.stacksave()
  br label %while_cond660
while_cond660:
  %4003 = load i64, i64* %3968
  %4004 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4005 = load { i64, i8* }*, { i64, i8* }** %4004
  %4006 = call i64 @nyx_array_length({ i64, i8* }* %4005)
  %4007 = icmp slt i64 %4003, %4006
  br i1 %4007, label %while_body661, label %while_end662
while_body661:
  call void @llvm.stackrestore(i8* %4002)
  %4008 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4009 = load { i64, i8* }*, { i64, i8* }** %4008
  %4010 = load i64, i64* %3968
  %4011 = call i64 @nyx_array_get({ i64, i8* }* %4009, i64 %4010)
  %4012 = inttoptr i64 %4011 to %nyx_string*
  %4013 = alloca %nyx_string*
  store %nyx_string* %4012, %nyx_string** %4013
  %4014 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %4015 = load { i64, i8* }*, { i64, i8* }** %4014
  %4016 = load i64, i64* %3968
  %4017 = call i64 @nyx_array_get({ i64, i8* }* %4015, i64 %4016)
  %4018 = inttoptr i64 %4017 to %nyx_string*
  %4019 = alloca %nyx_string*
  store %nyx_string* %4018, %nyx_string** %4019
  %4020 = load %nyx_string*, %nyx_string** %3971
  %4021 = load %nyx_string*, %nyx_string** %4013
  %4022 = call %nyx_string* @nyx_string_concat(%nyx_string* %4020, %nyx_string* %4021)
  %4023 = alloca %nyx_string*
  store %nyx_string* %4022, %nyx_string** %4023
  %4024 = load %nyx_string*, %nyx_string** %4023
  %4025 = call i8* @nyx_string_to_cstr(%nyx_string* %4024)
  %4026 = call i1 @nyx_file_exists(i8* %4025)
  %4027 = icmp eq i1 %4026, 0
  br i1 %4027, label %then663, label %else664
then663:
  %4028 = load %nyx_string*, %nyx_string** %3974
  %4029 = load %nyx_string*, %nyx_string** %4013
  %4030 = call %nyx_string* @nyx_string_concat(%nyx_string* %4028, %nyx_string* %4029)
  %4031 = call i8* @nyx_string_to_cstr(%nyx_string* %4030)
  call void @nyx_print_string(i8* %4031)
  %4032 = load %nyx_string*, %nyx_string** %4019
  %4033 = alloca %nyx_string*
  store %nyx_string* %4032, %nyx_string** %4033
  %4034 = alloca i1
  store i1 false, i1* %4034
  %4035 = load %nyx_string*, %nyx_string** %4033
  %4036 = load %nyx_string*, %nyx_string** %3977
  %4037 = call i1 @nyx_string_starts_with(%nyx_string* %4035, %nyx_string* %4036)
  %4038 = icmp eq i1 %4037, 0
  br i1 %4038, label %sc_and_rhs666, label %sc_and_end667
sc_and_rhs666:
  %4039 = load %nyx_string*, %nyx_string** %4033
  %4040 = load %nyx_string*, %nyx_string** %3980
  %4041 = call i1 @nyx_string_starts_with(%nyx_string* %4039, %nyx_string* %4040)
  %4042 = icmp eq i1 %4041, 0
  store i1 %4042, i1* %4034
  br label %sc_and_end667
sc_and_end667:
  %4043 = load i1, i1* %4034
  br i1 %4043, label %then668, label %else669
then668:
  %4044 = load %nyx_string*, %nyx_string** %3983
  %4045 = load %nyx_string*, %nyx_string** %4013
  %4046 = call %nyx_string* @nyx_string_concat(%nyx_string* %4044, %nyx_string* %4045)
  store %nyx_string* %4046, %nyx_string** %4033
  br label %merge670
else669:
  br label %merge670
merge670:
  %4047 = load %nyx_string*, %nyx_string** %3986
  %4048 = load %nyx_string*, %nyx_string** %4033
  %4049 = call %nyx_string* @nyx_string_concat(%nyx_string* %4047, %nyx_string* %4048)
  %4050 = load %nyx_string*, %nyx_string** %3989
  %4051 = call %nyx_string* @nyx_string_concat(%nyx_string* %4049, %nyx_string* %4050)
  %4052 = load %nyx_string*, %nyx_string** %4023
  %4053 = call %nyx_string* @nyx_string_concat(%nyx_string* %4051, %nyx_string* %4052)
  %4054 = load %nyx_string*, %nyx_string** %3992
  %4055 = call %nyx_string* @nyx_string_concat(%nyx_string* %4053, %nyx_string* %4054)
  %4056 = alloca %nyx_string*
  store %nyx_string* %4055, %nyx_string** %4056
  %4057 = load %nyx_string*, %nyx_string** %4056
  %4058 = call i8* @nyx_string_to_cstr(%nyx_string* %4057)
  %4059 = call i64 @nyx_exec_code(i8* %4058)
  %4060 = alloca i64
  store i64 %4059, i64* %4060
  %4061 = load i64, i64* %4060
  %4062 = icmp ne i64 %4061, 0
  br i1 %4062, label %then671, label %else672
then671:
  %4063 = load %nyx_string*, %nyx_string** %3995
  %4064 = load %nyx_string*, %nyx_string** %4013
  %4065 = call %nyx_string* @nyx_string_concat(%nyx_string* %4063, %nyx_string* %4064)
  %4066 = load %nyx_string*, %nyx_string** %3998
  %4067 = call %nyx_string* @nyx_string_concat(%nyx_string* %4065, %nyx_string* %4066)
  %4068 = load %nyx_string*, %nyx_string** %4033
  %4069 = call %nyx_string* @nyx_string_concat(%nyx_string* %4067, %nyx_string* %4068)
  %4070 = call i8* @nyx_string_to_cstr(%nyx_string* %4069)
  call void @nyx_print_string(i8* %4070)
  ret i1 0
else672:
  br label %merge673
merge673:
  %4071 = load %nyx_string*, %nyx_string** %4001
  %4072 = load %nyx_string*, %nyx_string** %4013
  %4073 = call %nyx_string* @nyx_string_concat(%nyx_string* %4071, %nyx_string* %4072)
  %4074 = call i8* @nyx_string_to_cstr(%nyx_string* %4073)
  call void @nyx_print_string(i8* %4074)
  br label %merge665
else664:
  br label %merge665
merge665:
  %4075 = load i64, i64* %3968
  %4076 = add i64 %4075, 1
  store i64 %4076, i64* %3968
  br label %while_cond660
while_end662:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %4077 = getelementptr [128 x i8], [128 x i8]* @.str554, i32 0, i32 0
  %4078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %4077, i64 127)
  %4079 = alloca %nyx_string*
  store %nyx_string* %4078, %nyx_string** %4079
  %4080 = getelementptr [37 x i8], [37 x i8]* @.str555, i32 0, i32 0
  %4081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %4080, i64 36)
  %4082 = alloca %nyx_string*
  store %nyx_string* %4081, %nyx_string** %4082
  %4083 = getelementptr [14 x i8], [14 x i8]* @.str556, i32 0, i32 0
  %4084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %4083, i64 13)
  %4085 = load %nyx_string*, %nyx_string** %4079
  %4086 = call %nyx_string* @nyx_string_concat(%nyx_string* %4084, %nyx_string* %4085)
  %4087 = getelementptr [16 x i8], [16 x i8]* @.str557, i32 0, i32 0
  %4088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %4087, i64 15)
  %4089 = call %nyx_string* @nyx_string_concat(%nyx_string* %4086, %nyx_string* %4088)
  %4090 = getelementptr [33 x i8], [33 x i8]* @.str558, i32 0, i32 0
  %4091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %4090, i64 32)
  %4092 = call %nyx_string* @nyx_string_concat(%nyx_string* %4089, %nyx_string* %4091)
  %4093 = getelementptr [99 x i8], [99 x i8]* @.str559, i32 0, i32 0
  %4094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %4093, i64 98)
  %4095 = call %nyx_string* @nyx_string_concat(%nyx_string* %4092, %nyx_string* %4094)
  %4096 = load %nyx_string*, %nyx_string** %main_file.ptr
  %4097 = call %nyx_string* @nyx_string_concat(%nyx_string* %4095, %nyx_string* %4096)
  %4098 = getelementptr [74 x i8], [74 x i8]* @.str560, i32 0, i32 0
  %4099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %4098, i64 73)
  %4100 = call %nyx_string* @nyx_string_concat(%nyx_string* %4097, %nyx_string* %4099)
  %4101 = getelementptr [6 x i8], [6 x i8]* @.str561, i32 0, i32 0
  %4102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %4101, i64 5)
  %4103 = call %nyx_string* @nyx_string_concat(%nyx_string* %4100, %nyx_string* %4102)
  %4104 = getelementptr [91 x i8], [91 x i8]* @.str562, i32 0, i32 0
  %4105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %4104, i64 90)
  %4106 = call %nyx_string* @nyx_string_concat(%nyx_string* %4103, %nyx_string* %4105)
  %4107 = load %nyx_string*, %nyx_string** %main_file.ptr
  %4108 = call %nyx_string* @nyx_string_concat(%nyx_string* %4106, %nyx_string* %4107)
  %4109 = getelementptr [76 x i8], [76 x i8]* @.str563, i32 0, i32 0
  %4110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %4109, i64 75)
  %4111 = call %nyx_string* @nyx_string_concat(%nyx_string* %4108, %nyx_string* %4110)
  %4112 = getelementptr [5 x i8], [5 x i8]* @.str564, i32 0, i32 0
  %4113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %4112, i64 4)
  %4114 = call %nyx_string* @nyx_string_concat(%nyx_string* %4111, %nyx_string* %4113)
  %4115 = getelementptr [16 x i8], [16 x i8]* @.str565, i32 0, i32 0
  %4116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %4115, i64 15)
  %4117 = call %nyx_string* @nyx_string_concat(%nyx_string* %4114, %nyx_string* %4116)
  %4118 = load %nyx_string*, %nyx_string** %4082
  %4119 = call %nyx_string* @nyx_string_concat(%nyx_string* %4117, %nyx_string* %4118)
  %4120 = getelementptr [16 x i8], [16 x i8]* @.str566, i32 0, i32 0
  %4121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %4120, i64 15)
  %4122 = call %nyx_string* @nyx_string_concat(%nyx_string* %4119, %nyx_string* %4121)
  %4123 = getelementptr [33 x i8], [33 x i8]* @.str567, i32 0, i32 0
  %4124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %4123, i64 32)
  %4125 = call %nyx_string* @nyx_string_concat(%nyx_string* %4122, %nyx_string* %4124)
  %4126 = getelementptr [176 x i8], [176 x i8]* @.str568, i32 0, i32 0
  %4127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %4126, i64 175)
  %4128 = call %nyx_string* @nyx_string_concat(%nyx_string* %4125, %nyx_string* %4127)
  %4129 = getelementptr [6 x i8], [6 x i8]* @.str569, i32 0, i32 0
  %4130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %4129, i64 5)
  %4131 = call %nyx_string* @nyx_string_concat(%nyx_string* %4128, %nyx_string* %4130)
  %4132 = getelementptr [184 x i8], [184 x i8]* @.str570, i32 0, i32 0
  %4133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %4132, i64 183)
  %4134 = call %nyx_string* @nyx_string_concat(%nyx_string* %4131, %nyx_string* %4133)
  %4135 = getelementptr [5 x i8], [5 x i8]* @.str571, i32 0, i32 0
  %4136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %4135, i64 4)
  %4137 = call %nyx_string* @nyx_string_concat(%nyx_string* %4134, %nyx_string* %4136)
  %4138 = getelementptr [6 x i8], [6 x i8]* @.str572, i32 0, i32 0
  %4139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %4138, i64 5)
  %4140 = call %nyx_string* @nyx_string_concat(%nyx_string* %4137, %nyx_string* %4139)
  %4141 = getelementptr [33 x i8], [33 x i8]* @.str573, i32 0, i32 0
  %4142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %4141, i64 32)
  %4143 = call %nyx_string* @nyx_string_concat(%nyx_string* %4140, %nyx_string* %4142)
  %4144 = getelementptr [127 x i8], [127 x i8]* @.str574, i32 0, i32 0
  %4145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %4144, i64 126)
  %4146 = call %nyx_string* @nyx_string_concat(%nyx_string* %4143, %nyx_string* %4145)
  %4147 = getelementptr [6 x i8], [6 x i8]* @.str575, i32 0, i32 0
  %4148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %4147, i64 5)
  %4149 = call %nyx_string* @nyx_string_concat(%nyx_string* %4146, %nyx_string* %4148)
  %4150 = getelementptr [119 x i8], [119 x i8]* @.str576, i32 0, i32 0
  %4151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %4150, i64 118)
  %4152 = call %nyx_string* @nyx_string_concat(%nyx_string* %4149, %nyx_string* %4151)
  %4153 = getelementptr [5 x i8], [5 x i8]* @.str577, i32 0, i32 0
  %4154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %4153, i64 4)
  %4155 = call %nyx_string* @nyx_string_concat(%nyx_string* %4152, %nyx_string* %4154)
  %4156 = getelementptr [4 x i8], [4 x i8]* @.str578, i32 0, i32 0
  %4157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %4156, i64 3)
  %4158 = call %nyx_string* @nyx_string_concat(%nyx_string* %4155, %nyx_string* %4157)
  ret %nyx_string* %4158
}

define internal %nyx_string* @pila_compilador_sh(
) {
  %4159 = getelementptr [180 x i8], [180 x i8]* @.str579, i32 0, i32 0
  %4160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %4159, i64 179)
  ret %nyx_string* %4160
}

define internal %nyx_string* @pila_compilador_pista_sh(
) {
  %4161 = getelementptr [326 x i8], [326 x i8]* @.str580, i32 0, i32 0
  %4162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %4161, i64 325)
  ret %nyx_string* %4162
}

define internal i64 @lib_cierre(
%nyx_string* %path.param, %nyx_string* %std_dir.param, { i64, i8* }* %visitados.param, i8* %vistos.param, i8* %imports_de.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %visitados.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %visitados.param, { i64, i8* }** %visitados.ptr
  %vistos.ptr = alloca i8*
  store i8* %vistos.param, i8** %vistos.ptr
  %imports_de.ptr = alloca i8*
  store i8* %imports_de.param, i8** %imports_de.ptr
  %4163 = load %nyx_string*, %nyx_string** %path.ptr
  %4164 = getelementptr [4 x i8], [4 x i8]* @.str581, i32 0, i32 0
  %4165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4164, i64 3)
  %4166 = call %nyx_string* @nyx_string_concat(%nyx_string* %4163, %nyx_string* %4165)
  %4167 = alloca %nyx_string*
  store %nyx_string* %4166, %nyx_string** %4167
  %4168 = load %nyx_string*, %nyx_string** %path.ptr
  %4169 = getelementptr [5 x i8], [5 x i8]* @.str582, i32 0, i32 0
  %4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4169, i64 4)
  %4171 = call i1 @nyx_string_starts_with(%nyx_string* %4168, %nyx_string* %4170)
  br i1 %4171, label %then674, label %else675
then674:
  %4172 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %4173 = getelementptr [2 x i8], [2 x i8]* @.str583, i32 0, i32 0
  %4174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4173, i64 1)
  %4175 = call %nyx_string* @nyx_string_concat(%nyx_string* %4172, %nyx_string* %4174)
  %4176 = load %nyx_string*, %nyx_string** %path.ptr
  %4177 = load %nyx_string*, %nyx_string** %path.ptr
  %4178 = call i64 @nyx_string_byte_length(%nyx_string* %4177)
  %4179 = call %nyx_string* @nyx_string_substring(%nyx_string* %4176, i64 4, i64 %4178)
  %4180 = call %nyx_string* @nyx_string_concat(%nyx_string* %4175, %nyx_string* %4179)
  %4181 = getelementptr [4 x i8], [4 x i8]* @.str584, i32 0, i32 0
  %4182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4181, i64 3)
  %4183 = call %nyx_string* @nyx_string_concat(%nyx_string* %4180, %nyx_string* %4182)
  store %nyx_string* %4183, %nyx_string** %4167
  br label %merge676
else675:
  br label %merge676
merge676:
  %4184 = load i8*, i8** %vistos.ptr
  %4185 = load %nyx_string*, %nyx_string** %4167
  %4186 = call i8* @nyx_string_to_cstr(%nyx_string* %4185)
  %4187 = call i1 @nyx_map_contains_str(i8* %4184, i8* %4186)
  br i1 %4187, label %then677, label %else678
then677:
  ret i64 0
else678:
  br label %merge679
merge679:
  %4188 = load i8*, i8** %vistos.ptr
  %4189 = load %nyx_string*, %nyx_string** %4167
  %4190 = call i8* @nyx_string_to_cstr(%nyx_string* %4189)
  call void @nyx_map_insert_int(i8* %4188, i8* %4190, i64 1)
  %4191 = load i8*, i8** %imports_de.ptr
  %4192 = load %nyx_string*, %nyx_string** %4167
  %4193 = call i8* @nyx_string_to_cstr(%nyx_string* %4192)
  %4194 = call i1 @nyx_map_contains_str(i8* %4191, i8* %4193)
  %4195 = xor i1 %4194, true
  br i1 %4195, label %then680, label %else681
then680:
  %4196 = call { i64, i8* }* @nyx_array_new_ptr()
  %4197 = alloca { i64, i8* }*
  store { i64, i8* }* %4196, { i64, i8* }** %4197
  %4198 = load %nyx_string*, %nyx_string** %4167
  %4199 = call i8* @nyx_string_to_cstr(%nyx_string* %4198)
  %4200 = call i1 @nyx_file_exists(i8* %4199)
  br i1 %4200, label %then683, label %else684
then683:
  %4201 = load %nyx_string*, %nyx_string** %4167
  %4202 = call i8* @nyx_string_to_cstr(%nyx_string* %4201)
  %4203 = call %nyx_string* @nyx_read_file(i8* %4202)
  %4204 = getelementptr [2 x i8], [2 x i8]* @.str585, i32 0, i32 0
  %4205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4204, i64 1)
  %4206 = call { i64, i8* }* @nyx_string_split(%nyx_string* %4203, %nyx_string* %4205)
  %4207 = alloca { i64, i8* }*
  store { i64, i8* }* %4206, { i64, i8* }** %4207
  %4208 = alloca i64
  store i64 0, i64* %4208
  %4209 = getelementptr [8 x i8], [8 x i8]* @.str586, i32 0, i32 0
  %4210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4209, i64 7)
  %4211 = alloca %nyx_string*
  store %nyx_string* %4210, %nyx_string** %4211
  %4212 = getelementptr [2 x i8], [2 x i8]* @.str587, i32 0, i32 0
  %4213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4212, i64 1)
  %4214 = alloca %nyx_string*
  store %nyx_string* %4213, %nyx_string** %4214
  %4215 = call i8* @llvm.stacksave()
  br label %while_cond686
while_cond686:
  %4216 = load i64, i64* %4208
  %4217 = load { i64, i8* }*, { i64, i8* }** %4207
  %4218 = call i64 @nyx_array_length({ i64, i8* }* %4217)
  %4219 = icmp slt i64 %4216, %4218
  br i1 %4219, label %while_body687, label %while_end688
while_body687:
  call void @llvm.stackrestore(i8* %4215)
  %4220 = load { i64, i8* }*, { i64, i8* }** %4207
  %4221 = load i64, i64* %4208
  %4222 = call i64 @nyx_array_get_checked({ i64, i8* }* %4220, i64 %4221, i64 2)
  %4223 = inttoptr i64 %4222 to %nyx_string*
  %4224 = alloca %nyx_string*
  store %nyx_string* %4223, %nyx_string** %4224
  %4225 = load %nyx_string*, %nyx_string** %4224
  %4226 = call %nyx_string* @nyx_string_trim(%nyx_string* %4225)
  %4227 = alloca %nyx_string*
  store %nyx_string* %4226, %nyx_string** %4227
  %4228 = load %nyx_string*, %nyx_string** %4227
  %4229 = load %nyx_string*, %nyx_string** %4211
  %4230 = call i1 @nyx_string_starts_with(%nyx_string* %4228, %nyx_string* %4229)
  br i1 %4230, label %then689, label %else690
then689:
  %4231 = load %nyx_string*, %nyx_string** %4227
  %4232 = load %nyx_string*, %nyx_string** %4214
  %4233 = call i64 @nyx_string_index_of(%nyx_string* %4231, %nyx_string* %4232)
  %4234 = alloca i64
  store i64 %4233, i64* %4234
  %4235 = load i64, i64* %4234
  %4236 = icmp sge i64 %4235, 0
  br i1 %4236, label %then692, label %else693
then692:
  %4237 = load %nyx_string*, %nyx_string** %4227
  %4238 = load i64, i64* %4234
  %4239 = add i64 %4238, 1
  %4240 = load %nyx_string*, %nyx_string** %4227
  %4241 = call i64 @nyx_string_byte_length(%nyx_string* %4240)
  %4242 = call %nyx_string* @nyx_string_substring(%nyx_string* %4237, i64 %4239, i64 %4241)
  %4243 = alloca %nyx_string*
  store %nyx_string* %4242, %nyx_string** %4243
  %4244 = load %nyx_string*, %nyx_string** %4243
  %4245 = load %nyx_string*, %nyx_string** %4214
  %4246 = call i64 @nyx_string_index_of(%nyx_string* %4244, %nyx_string* %4245)
  %4247 = alloca i64
  store i64 %4246, i64* %4247
  %4248 = load i64, i64* %4247
  %4249 = icmp sgt i64 %4248, 0
  br i1 %4249, label %then695, label %else696
then695:
  %4250 = load { i64, i8* }*, { i64, i8* }** %4197
  %4251 = load %nyx_string*, %nyx_string** %4243
  %4252 = load i64, i64* %4247
  %4253 = call %nyx_string* @nyx_string_substring(%nyx_string* %4251, i64 0, i64 %4252)
  %4254 = ptrtoint %nyx_string* %4253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4250, i64 %4254, i64 2)
  br label %merge697
else696:
  br label %merge697
merge697:
  br label %merge694
else693:
  br label %merge694
merge694:
  br label %merge691
else690:
  br label %merge691
merge691:
  %4255 = load i64, i64* %4208
  %4256 = add i64 %4255, 1
  store i64 %4256, i64* %4208
  br label %while_cond686
while_end688:
  br label %merge685
else684:
  %4257 = load { i64, i8* }*, { i64, i8* }** %4197
  %4258 = getelementptr [1 x i8], [1 x i8]* @.str588, i32 0, i32 0
  %4259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4258, i64 0)
  %4260 = ptrtoint %nyx_string* %4259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4257, i64 %4260, i64 2)
  br label %merge685
merge685:
  %4261 = load i8*, i8** %imports_de.ptr
  %4262 = load %nyx_string*, %nyx_string** %4167
  %4263 = load { i64, i8* }*, { i64, i8* }** %4197
  %4264 = call i8* @nyx_string_to_cstr(%nyx_string* %4262)
  %4265 = ptrtoint { i64, i8* }* %4263 to i64
  call void @nyx_map_insert_int(i8* %4261, i8* %4264, i64 %4265)
  br label %merge682
else681:
  br label %merge682
merge682:
  %4266 = load i8*, i8** %imports_de.ptr
  %4267 = load %nyx_string*, %nyx_string** %4167
  %4268 = call i8* @nyx_string_to_cstr(%nyx_string* %4267)
  %4269 = call i64 @nyx_map_get_int(i8* %4266, i8* %4268)
  %4270 = inttoptr i64 %4269 to { i64, i8* }*
  %4271 = alloca { i64, i8* }*
  store { i64, i8* }* %4270, { i64, i8* }** %4271
  %4272 = load { i64, i8* }*, { i64, i8* }** %4271
  %4273 = call i64 @nyx_array_length({ i64, i8* }* %4272)
  %4274 = icmp eq i64 %4273, 1
  br i1 %4274, label %then698, label %else699
then698:
  %4275 = load { i64, i8* }*, { i64, i8* }** %4271
  %4276 = call i64 @nyx_array_get_checked({ i64, i8* }* %4275, i64 0, i64 2)
  %4277 = inttoptr i64 %4276 to %nyx_string*
  %4278 = alloca %nyx_string*
  store %nyx_string* %4277, %nyx_string** %4278
  %4279 = load %nyx_string*, %nyx_string** %4278
  %4280 = getelementptr [1 x i8], [1 x i8]* @.str589, i32 0, i32 0
  %4281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4280, i64 0)
  %4282 = call i1 @nyx_string_equals(%nyx_string* %4279, %nyx_string* %4281)
  br i1 %4282, label %then701, label %else702
then701:
  ret i64 0
else702:
  br label %merge703
merge703:
  br label %merge700
else699:
  br label %merge700
merge700:
  %4283 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %4284 = load %nyx_string*, %nyx_string** %4167
  %4285 = ptrtoint %nyx_string* %4284 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4283, i64 %4285, i64 2)
  %4286 = alloca i64
  store i64 0, i64* %4286
  %4287 = call i8* @llvm.stacksave()
  br label %while_cond704
while_cond704:
  %4288 = load i64, i64* %4286
  %4289 = load { i64, i8* }*, { i64, i8* }** %4271
  %4290 = call i64 @nyx_array_length({ i64, i8* }* %4289)
  %4291 = icmp slt i64 %4288, %4290
  br i1 %4291, label %while_body705, label %while_end706
while_body705:
  call void @llvm.stackrestore(i8* %4287)
  %4292 = load { i64, i8* }*, { i64, i8* }** %4271
  %4293 = load i64, i64* %4286
  %4294 = call i64 @nyx_array_get_checked({ i64, i8* }* %4292, i64 %4293, i64 2)
  %4295 = inttoptr i64 %4294 to %nyx_string*
  %4296 = alloca %nyx_string*
  store %nyx_string* %4295, %nyx_string** %4296
  %4297 = load %nyx_string*, %nyx_string** %4296
  %4298 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %4299 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %4300 = load i8*, i8** %vistos.ptr
  %4301 = load i8*, i8** %imports_de.ptr
  %4302 = call i64 @lib_cierre(%nyx_string* %4297, %nyx_string* %4298, { i64, i8* }* %4299, i8* %4300, i8* %4301)
  %4303 = load i64, i64* %4286
  %4304 = add i64 %4303, 1
  store i64 %4304, i64* %4286
  br label %while_cond704
while_end706:
  ret i64 0
}

define internal %nyx_string* @hash_archivo(
%nyx_string* %f.param, i8* %hashes.param) {
  %f.ptr = alloca %nyx_string*
  store %nyx_string* %f.param, %nyx_string** %f.ptr
  %hashes.ptr = alloca i8*
  store i8* %hashes.param, i8** %hashes.ptr
  %4305 = load i8*, i8** %hashes.ptr
  %4306 = load %nyx_string*, %nyx_string** %f.ptr
  %4307 = call i8* @nyx_string_to_cstr(%nyx_string* %4306)
  %4308 = call i1 @nyx_map_contains_str(i8* %4305, i8* %4307)
  br i1 %4308, label %then707, label %else708
then707:
  %4309 = load i8*, i8** %hashes.ptr
  %4310 = load %nyx_string*, %nyx_string** %f.ptr
  %4311 = call i8* @nyx_string_to_cstr(%nyx_string* %4310)
  %4312 = call i8* @nyx_map_get_str(i8* %4309, i8* %4311)
  %4313 = call %nyx_string* @nyx_string_from_cstr(i8* %4312)
  %4314 = alloca %nyx_string*
  store %nyx_string* %4313, %nyx_string** %4314
  %4315 = load %nyx_string*, %nyx_string** %4314
  ret %nyx_string* %4315
else708:
  br label %merge709
merge709:
  %4316 = load %nyx_string*, %nyx_string** %f.ptr
  %4317 = call i8* @nyx_string_to_cstr(%nyx_string* %4316)
  %4318 = call %nyx_string* @nyx_read_file(i8* %4317)
  %4319 = call %nyx_string* @nyx_sha256(%nyx_string* %4318)
  %4320 = alloca %nyx_string*
  store %nyx_string* %4319, %nyx_string** %4320
  %4321 = load i8*, i8** %hashes.ptr
  %4322 = load %nyx_string*, %nyx_string** %f.ptr
  %4323 = load %nyx_string*, %nyx_string** %4320
  %4324 = call i8* @nyx_string_to_cstr(%nyx_string* %4322)
  %4325 = call i8* @nyx_string_to_cstr(%nyx_string* %4323)
  call void @nyx_map_insert_str(i8* %4321, i8* %4324, i8* %4325)
  %4326 = load %nyx_string*, %nyx_string** %4320
  ret %nyx_string* %4326
}

define internal %nyx_string* @lib_huella(
%nyx_string* %modulo.param, %nyx_string* %base.param, %nyx_string* %std_dir.param, i8* %hashes.param, i8* %imports_de.param) {
  %modulo.ptr = alloca %nyx_string*
  store %nyx_string* %modulo.param, %nyx_string** %modulo.ptr
  %base.ptr = alloca %nyx_string*
  store %nyx_string* %base.param, %nyx_string** %base.ptr
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %hashes.ptr = alloca i8*
  store i8* %hashes.param, i8** %hashes.ptr
  %imports_de.ptr = alloca i8*
  store i8* %imports_de.param, i8** %imports_de.ptr
  %4327 = call { i64, i8* }* @nyx_array_new_ptr()
  %4328 = alloca { i64, i8* }*
  store { i64, i8* }* %4327, { i64, i8* }** %4328
  %4329 = call i8* @nyx_map_new(i32 0)
  %4330 = alloca i8*
  store i8* %4329, i8** %4330
  %4331 = load %nyx_string*, %nyx_string** %modulo.ptr
  %4332 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %4333 = load { i64, i8* }*, { i64, i8* }** %4328
  %4334 = load i8*, i8** %4330
  %4335 = load i8*, i8** %imports_de.ptr
  %4336 = call i64 @lib_cierre(%nyx_string* %4331, %nyx_string* %4332, { i64, i8* }* %4333, i8* %4334, i8* %4335)
  %4337 = load %nyx_string*, %nyx_string** %base.ptr
  %4338 = getelementptr [2 x i8], [2 x i8]* @.str590, i32 0, i32 0
  %4339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4338, i64 1)
  %4340 = call %nyx_string* @nyx_string_concat(%nyx_string* %4337, %nyx_string* %4339)
  %4341 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %4342 = getelementptr [12 x i8], [12 x i8]* @.str591, i32 0, i32 0
  %4343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4342, i64 11)
  %4344 = call %nyx_string* @nyx_string_concat(%nyx_string* %4341, %nyx_string* %4343)
  %4345 = load i8*, i8** %hashes.ptr
  %4346 = call %nyx_string* @hash_archivo(%nyx_string* %4344, i8* %4345)
  %4347 = call %nyx_string* @nyx_string_concat(%nyx_string* %4340, %nyx_string* %4346)
  %4348 = alloca %nyx_string*
  store %nyx_string* %4347, %nyx_string** %4348
  %4349 = alloca i64
  store i64 0, i64* %4349
  %4350 = getelementptr [2 x i8], [2 x i8]* @.str592, i32 0, i32 0
  %4351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4350, i64 1)
  %4352 = alloca %nyx_string*
  store %nyx_string* %4351, %nyx_string** %4352
  %4353 = getelementptr [2 x i8], [2 x i8]* @.str593, i32 0, i32 0
  %4354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4353, i64 1)
  %4355 = alloca %nyx_string*
  store %nyx_string* %4354, %nyx_string** %4355
  %4356 = call i8* @llvm.stacksave()
  br label %while_cond710
while_cond710:
  %4357 = load i64, i64* %4349
  %4358 = load { i64, i8* }*, { i64, i8* }** %4328
  %4359 = call i64 @nyx_array_length({ i64, i8* }* %4358)
  %4360 = icmp slt i64 %4357, %4359
  br i1 %4360, label %while_body711, label %while_end712
while_body711:
  call void @llvm.stackrestore(i8* %4356)
  %4361 = load { i64, i8* }*, { i64, i8* }** %4328
  %4362 = load i64, i64* %4349
  %4363 = call i64 @nyx_array_get_checked({ i64, i8* }* %4361, i64 %4362, i64 2)
  %4364 = inttoptr i64 %4363 to %nyx_string*
  %4365 = alloca %nyx_string*
  store %nyx_string* %4364, %nyx_string** %4365
  %4366 = load %nyx_string*, %nyx_string** %4348
  %4367 = load %nyx_string*, %nyx_string** %4352
  %4368 = call %nyx_string* @nyx_string_concat(%nyx_string* %4366, %nyx_string* %4367)
  %4369 = load %nyx_string*, %nyx_string** %4365
  %4370 = call %nyx_string* @nyx_string_concat(%nyx_string* %4368, %nyx_string* %4369)
  %4371 = load %nyx_string*, %nyx_string** %4355
  %4372 = call %nyx_string* @nyx_string_concat(%nyx_string* %4370, %nyx_string* %4371)
  %4373 = load %nyx_string*, %nyx_string** %4365
  %4374 = load i8*, i8** %hashes.ptr
  %4375 = call %nyx_string* @hash_archivo(%nyx_string* %4373, i8* %4374)
  %4376 = call %nyx_string* @nyx_string_concat(%nyx_string* %4372, %nyx_string* %4375)
  store %nyx_string* %4376, %nyx_string** %4348
  %4377 = load i64, i64* %4349
  %4378 = add i64 %4377, 1
  store i64 %4378, i64* %4349
  br label %while_cond710
while_end712:
  %4379 = load %nyx_string*, %nyx_string** %4348
  %4380 = call %nyx_string* @nyx_sha256(%nyx_string* %4379)
  ret %nyx_string* %4380
}

define internal %nyx_string* @lib_objetos_sh(
%ProjectConfig %config.param, %nyx_string* %nyx_home.param, %nyx_string* %nyx_bin.param, %nyx_string* %opt_flags.param, %nyx_string* %gc_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %nyx_home.ptr = alloca %nyx_string*
  store %nyx_string* %nyx_home.param, %nyx_string** %nyx_home.ptr
  %nyx_bin.ptr = alloca %nyx_string*
  store %nyx_string* %nyx_bin.param, %nyx_string** %nyx_bin.ptr
  %opt_flags.ptr = alloca %nyx_string*
  store %nyx_string* %opt_flags.param, %nyx_string** %opt_flags.ptr
  %gc_flag.ptr = alloca %nyx_string*
  store %nyx_string* %gc_flag.param, %nyx_string** %gc_flag.ptr
  %4381 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4382 = load { i64, i8* }*, { i64, i8* }** %4381
  %4383 = call i64 @nyx_array_length({ i64, i8* }* %4382)
  %4384 = icmp eq i64 %4383, 0
  br i1 %4384, label %then713, label %else714
then713:
  %4385 = getelementptr [1 x i8], [1 x i8]* @.str594, i32 0, i32 0
  %4386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4385, i64 0)
  ret %nyx_string* %4386
else714:
  br label %merge715
merge715:
  %4387 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4388 = load { i64, i8* }*, { i64, i8* }** %4387
  %4389 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4390 = load { i64, i8* }*, { i64, i8* }** %4389
  %4391 = getelementptr [2 x i8], [2 x i8]* @.str595, i32 0, i32 0
  %4392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4391, i64 1)
  %4393 = call %nyx_string* @nyx_string_join({ i64, i8* }* %4390, %nyx_string* %4392)
  %4394 = alloca %nyx_string*
  store %nyx_string* %4393, %nyx_string** %4394
  %4395 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %4396 = call { i64, i8* }* @nyx_stat(%nyx_string* %4395)
  %4397 = alloca { i64, i8* }*
  store { i64, i8* }* %4396, { i64, i8* }** %4397
  %4398 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %4399 = alloca %nyx_string*
  store %nyx_string* %4398, %nyx_string** %4399
  %4400 = load { i64, i8* }*, { i64, i8* }** %4397
  %4401 = call i64 @nyx_array_length({ i64, i8* }* %4400)
  %4402 = icmp sge i64 %4401, 3
  br i1 %4402, label %then716, label %else717
then716:
  %4403 = load { i64, i8* }*, { i64, i8* }** %4397
  %4404 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %4403, i64 0)
  %4405 = alloca i64
  store i64 %4404, i64* %4405
  %4406 = load { i64, i8* }*, { i64, i8* }** %4397
  %4407 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %4406, i64 2)
  %4408 = alloca i64
  store i64 %4407, i64* %4408
  %4409 = load %nyx_string*, %nyx_string** %4399
  %4410 = getelementptr [2 x i8], [2 x i8]* @.str596, i32 0, i32 0
  %4411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4410, i64 1)
  %4412 = call %nyx_string* @nyx_string_concat(%nyx_string* %4409, %nyx_string* %4411)
  %4413 = load i64, i64* %4405
  %4414 = call %nyx_string* @nyx_string_from_int(i64 %4413)
  %4415 = call %nyx_string* @nyx_string_concat(%nyx_string* %4412, %nyx_string* %4414)
  %4416 = getelementptr [2 x i8], [2 x i8]* @.str597, i32 0, i32 0
  %4417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4416, i64 1)
  %4418 = call %nyx_string* @nyx_string_concat(%nyx_string* %4415, %nyx_string* %4417)
  %4419 = load i64, i64* %4408
  %4420 = call %nyx_string* @nyx_string_from_int(i64 %4419)
  %4421 = call %nyx_string* @nyx_string_concat(%nyx_string* %4418, %nyx_string* %4420)
  store %nyx_string* %4421, %nyx_string** %4399
  br label %merge718
else717:
  br label %merge718
merge718:
  %4422 = load %nyx_string*, %nyx_string** %4399
  %4423 = getelementptr [2 x i8], [2 x i8]* @.str598, i32 0, i32 0
  %4424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4423, i64 1)
  %4425 = call %nyx_string* @nyx_string_concat(%nyx_string* %4422, %nyx_string* %4424)
  %4426 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %4427 = call %nyx_string* @nyx_string_concat(%nyx_string* %4425, %nyx_string* %4426)
  %4428 = getelementptr [2 x i8], [2 x i8]* @.str599, i32 0, i32 0
  %4429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4428, i64 1)
  %4430 = call %nyx_string* @nyx_string_concat(%nyx_string* %4427, %nyx_string* %4429)
  %4431 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %4432 = call %nyx_string* @nyx_string_concat(%nyx_string* %4430, %nyx_string* %4431)
  %4433 = getelementptr [2 x i8], [2 x i8]* @.str600, i32 0, i32 0
  %4434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4433, i64 1)
  %4435 = call %nyx_string* @nyx_string_concat(%nyx_string* %4432, %nyx_string* %4434)
  %4436 = load %nyx_string*, %nyx_string** %4394
  %4437 = call %nyx_string* @nyx_string_concat(%nyx_string* %4435, %nyx_string* %4436)
  %4438 = alloca %nyx_string*
  store %nyx_string* %4437, %nyx_string** %4438
  %4439 = call i8* @nyx_map_new(i32 0)
  %4440 = alloca i8*
  store i8* %4439, i8** %4440
  %4441 = call i8* @nyx_map_new(i32 0)
  %4442 = alloca i8*
  store i8* %4441, i8** %4442
  %4443 = call i8* @nyx_sb_new(i64 1024)
  %4444 = alloca i8*
  store i8* %4443, i8** %4444
  %4445 = load i8*, i8** %4444
  %4446 = getelementptr [49 x i8], [49 x i8]* @.str601, i32 0, i32 0
  %4447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4446, i64 48)
  call void @nyx_sb_append(i8* %4445, %nyx_string* %4447)
  %4448 = alloca i64
  store i64 0, i64* %4448
  %4449 = getelementptr [2 x i8], [2 x i8]* @.str602, i32 0, i32 0
  %4450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4449, i64 1)
  %4451 = alloca %nyx_string*
  store %nyx_string* %4450, %nyx_string** %4451
  %4452 = getelementptr [2 x i8], [2 x i8]* @.str603, i32 0, i32 0
  %4453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4452, i64 1)
  %4454 = alloca %nyx_string*
  store %nyx_string* %4453, %nyx_string** %4454
  %4455 = getelementptr [5 x i8], [5 x i8]* @.str604, i32 0, i32 0
  %4456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4455, i64 4)
  %4457 = alloca %nyx_string*
  store %nyx_string* %4456, %nyx_string** %4457
  %4458 = getelementptr [26 x i8], [26 x i8]* @.str605, i32 0, i32 0
  %4459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4458, i64 25)
  %4460 = alloca %nyx_string*
  store %nyx_string* %4459, %nyx_string** %4460
  %4461 = getelementptr [2 x i8], [2 x i8]* @.str606, i32 0, i32 0
  %4462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4461, i64 1)
  %4463 = alloca %nyx_string*
  store %nyx_string* %4462, %nyx_string** %4463
  %4464 = getelementptr [3 x i8], [3 x i8]* @.str607, i32 0, i32 0
  %4465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4464, i64 2)
  %4466 = alloca %nyx_string*
  store %nyx_string* %4465, %nyx_string** %4466
  %4467 = getelementptr [8 x i8], [8 x i8]* @.str608, i32 0, i32 0
  %4468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4467, i64 7)
  %4469 = alloca %nyx_string*
  store %nyx_string* %4468, %nyx_string** %4469
  %4470 = getelementptr [13 x i8], [13 x i8]* @.str609, i32 0, i32 0
  %4471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4470, i64 12)
  %4472 = alloca %nyx_string*
  store %nyx_string* %4471, %nyx_string** %4472
  %4473 = getelementptr [33 x i8], [33 x i8]* @.str610, i32 0, i32 0
  %4474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4473, i64 32)
  %4475 = alloca %nyx_string*
  store %nyx_string* %4474, %nyx_string** %4475
  %4476 = getelementptr [39 x i8], [39 x i8]* @.str611, i32 0, i32 0
  %4477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4476, i64 38)
  %4478 = alloca %nyx_string*
  store %nyx_string* %4477, %nyx_string** %4478
  %4479 = getelementptr [35 x i8], [35 x i8]* @.str612, i32 0, i32 0
  %4480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4479, i64 34)
  %4481 = alloca %nyx_string*
  store %nyx_string* %4480, %nyx_string** %4481
  %4482 = getelementptr [4 x i8], [4 x i8]* @.str613, i32 0, i32 0
  %4483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4482, i64 3)
  %4484 = alloca %nyx_string*
  store %nyx_string* %4483, %nyx_string** %4484
  %4485 = getelementptr [10 x i8], [10 x i8]* @.str614, i32 0, i32 0
  %4486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4485, i64 9)
  %4487 = alloca %nyx_string*
  store %nyx_string* %4486, %nyx_string** %4487
  %4488 = getelementptr [28 x i8], [28 x i8]* @.str615, i32 0, i32 0
  %4489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %4488, i64 27)
  %4490 = alloca %nyx_string*
  store %nyx_string* %4489, %nyx_string** %4490
  %4491 = getelementptr [43 x i8], [43 x i8]* @.str616, i32 0, i32 0
  %4492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %4491, i64 42)
  %4493 = alloca %nyx_string*
  store %nyx_string* %4492, %nyx_string** %4493
  %4494 = getelementptr [3 x i8], [3 x i8]* @.str617, i32 0, i32 0
  %4495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4494, i64 2)
  %4496 = alloca %nyx_string*
  store %nyx_string* %4495, %nyx_string** %4496
  %4497 = getelementptr [12 x i8], [12 x i8]* @.str618, i32 0, i32 0
  %4498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4497, i64 11)
  %4499 = alloca %nyx_string*
  store %nyx_string* %4498, %nyx_string** %4499
  %4500 = getelementptr [13 x i8], [13 x i8]* @.str619, i32 0, i32 0
  %4501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4500, i64 12)
  %4502 = alloca %nyx_string*
  store %nyx_string* %4501, %nyx_string** %4502
  %4503 = getelementptr [27 x i8], [27 x i8]* @.str620, i32 0, i32 0
  %4504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4503, i64 26)
  %4505 = alloca %nyx_string*
  store %nyx_string* %4504, %nyx_string** %4505
  %4506 = getelementptr [9 x i8], [9 x i8]* @.str621, i32 0, i32 0
  %4507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4506, i64 8)
  %4508 = alloca %nyx_string*
  store %nyx_string* %4507, %nyx_string** %4508
  %4509 = getelementptr [35 x i8], [35 x i8]* @.str622, i32 0, i32 0
  %4510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4509, i64 34)
  %4511 = alloca %nyx_string*
  store %nyx_string* %4510, %nyx_string** %4511
  %4512 = getelementptr [5 x i8], [5 x i8]* @.str623, i32 0, i32 0
  %4513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4512, i64 4)
  %4514 = alloca %nyx_string*
  store %nyx_string* %4513, %nyx_string** %4514
  %4515 = getelementptr [55 x i8], [55 x i8]* @.str624, i32 0, i32 0
  %4516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4515, i64 54)
  %4517 = alloca %nyx_string*
  store %nyx_string* %4516, %nyx_string** %4517
  %4518 = getelementptr [17 x i8], [17 x i8]* @.str625, i32 0, i32 0
  %4519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4518, i64 16)
  %4520 = alloca %nyx_string*
  store %nyx_string* %4519, %nyx_string** %4520
  %4521 = getelementptr [10 x i8], [10 x i8]* @.str626, i32 0, i32 0
  %4522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4521, i64 9)
  %4523 = alloca %nyx_string*
  store %nyx_string* %4522, %nyx_string** %4523
  %4524 = getelementptr [26 x i8], [26 x i8]* @.str627, i32 0, i32 0
  %4525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4524, i64 25)
  %4526 = alloca %nyx_string*
  store %nyx_string* %4525, %nyx_string** %4526
  %4527 = getelementptr [66 x i8], [66 x i8]* @.str628, i32 0, i32 0
  %4528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4527, i64 65)
  %4529 = alloca %nyx_string*
  store %nyx_string* %4528, %nyx_string** %4529
  %4530 = getelementptr [62 x i8], [62 x i8]* @.str629, i32 0, i32 0
  %4531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %4530, i64 61)
  %4532 = alloca %nyx_string*
  store %nyx_string* %4531, %nyx_string** %4532
  %4533 = getelementptr [86 x i8], [86 x i8]* @.str630, i32 0, i32 0
  %4534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %4533, i64 85)
  %4535 = alloca %nyx_string*
  store %nyx_string* %4534, %nyx_string** %4535
  %4536 = getelementptr [45 x i8], [45 x i8]* @.str631, i32 0, i32 0
  %4537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %4536, i64 44)
  %4538 = alloca %nyx_string*
  store %nyx_string* %4537, %nyx_string** %4538
  %4539 = getelementptr [14 x i8], [14 x i8]* @.str632, i32 0, i32 0
  %4540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %4539, i64 13)
  %4541 = alloca %nyx_string*
  store %nyx_string* %4540, %nyx_string** %4541
  %4542 = getelementptr [38 x i8], [38 x i8]* @.str633, i32 0, i32 0
  %4543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %4542, i64 37)
  %4544 = alloca %nyx_string*
  store %nyx_string* %4543, %nyx_string** %4544
  %4545 = getelementptr [45 x i8], [45 x i8]* @.str634, i32 0, i32 0
  %4546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %4545, i64 44)
  %4547 = alloca %nyx_string*
  store %nyx_string* %4546, %nyx_string** %4547
  %4548 = getelementptr [36 x i8], [36 x i8]* @.str635, i32 0, i32 0
  %4549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %4548, i64 35)
  %4550 = alloca %nyx_string*
  store %nyx_string* %4549, %nyx_string** %4550
  %4551 = getelementptr [25 x i8], [25 x i8]* @.str636, i32 0, i32 0
  %4552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %4551, i64 24)
  %4553 = alloca %nyx_string*
  store %nyx_string* %4552, %nyx_string** %4553
  %4554 = getelementptr [8 x i8], [8 x i8]* @.str637, i32 0, i32 0
  %4555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %4554, i64 7)
  %4556 = alloca %nyx_string*
  store %nyx_string* %4555, %nyx_string** %4556
  %4557 = getelementptr [42 x i8], [42 x i8]* @.str638, i32 0, i32 0
  %4558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %4557, i64 41)
  %4559 = alloca %nyx_string*
  store %nyx_string* %4558, %nyx_string** %4559
  %4560 = call i8* @llvm.stacksave()
  br label %while_cond719
while_cond719:
  %4561 = load i64, i64* %4448
  %4562 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4563 = load { i64, i8* }*, { i64, i8* }** %4562
  %4564 = call i64 @nyx_array_length({ i64, i8* }* %4563)
  %4565 = icmp slt i64 %4561, %4564
  br i1 %4565, label %while_body720, label %while_end721
while_body720:
  call void @llvm.stackrestore(i8* %4560)
  %4566 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4567 = load { i64, i8* }*, { i64, i8* }** %4566
  %4568 = load i64, i64* %4448
  %4569 = call i64 @nyx_array_get({ i64, i8* }* %4567, i64 %4568)
  %4570 = inttoptr i64 %4569 to %nyx_string*
  %4571 = alloca %nyx_string*
  store %nyx_string* %4570, %nyx_string** %4571
  %4572 = load %nyx_string*, %nyx_string** %4571
  %4573 = load %nyx_string*, %nyx_string** %4451
  %4574 = load %nyx_string*, %nyx_string** %4454
  %4575 = call %nyx_string* @nyx_string_replace(%nyx_string* %4572, %nyx_string* %4573, %nyx_string* %4574)
  %4576 = alloca %nyx_string*
  store %nyx_string* %4575, %nyx_string** %4576
  %4577 = load %nyx_string*, %nyx_string** %4571
  %4578 = load %nyx_string*, %nyx_string** %4438
  %4579 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %4580 = load %nyx_string*, %nyx_string** %4457
  %4581 = call %nyx_string* @nyx_string_concat(%nyx_string* %4579, %nyx_string* %4580)
  %4582 = load i8*, i8** %4440
  %4583 = load i8*, i8** %4442
  %4584 = call %nyx_string* @lib_huella(%nyx_string* %4577, %nyx_string* %4578, %nyx_string* %4581, i8* %4582, i8* %4583)
  %4585 = call %nyx_string* @nyx_string_substring(%nyx_string* %4584, i64 0, i64 16)
  %4586 = alloca %nyx_string*
  store %nyx_string* %4585, %nyx_string** %4586
  %4587 = load %nyx_string*, %nyx_string** %4460
  %4588 = load %nyx_string*, %nyx_string** %4576
  %4589 = call %nyx_string* @nyx_string_concat(%nyx_string* %4587, %nyx_string* %4588)
  %4590 = load %nyx_string*, %nyx_string** %4463
  %4591 = call %nyx_string* @nyx_string_concat(%nyx_string* %4589, %nyx_string* %4590)
  %4592 = load %nyx_string*, %nyx_string** %4586
  %4593 = call %nyx_string* @nyx_string_concat(%nyx_string* %4591, %nyx_string* %4592)
  %4594 = load %nyx_string*, %nyx_string** %4466
  %4595 = call %nyx_string* @nyx_string_concat(%nyx_string* %4593, %nyx_string* %4594)
  %4596 = alloca %nyx_string*
  store %nyx_string* %4595, %nyx_string** %4596
  %4597 = load %nyx_string*, %nyx_string** %4460
  %4598 = load %nyx_string*, %nyx_string** %4576
  %4599 = call %nyx_string* @nyx_string_concat(%nyx_string* %4597, %nyx_string* %4598)
  %4600 = load %nyx_string*, %nyx_string** %4463
  %4601 = call %nyx_string* @nyx_string_concat(%nyx_string* %4599, %nyx_string* %4600)
  %4602 = load %nyx_string*, %nyx_string** %4586
  %4603 = call %nyx_string* @nyx_string_concat(%nyx_string* %4601, %nyx_string* %4602)
  %4604 = load %nyx_string*, %nyx_string** %4469
  %4605 = call %nyx_string* @nyx_string_concat(%nyx_string* %4603, %nyx_string* %4604)
  %4606 = alloca %nyx_string*
  store %nyx_string* %4605, %nyx_string** %4606
  %4607 = load %nyx_string*, %nyx_string** %4472
  %4608 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %4609 = call %nyx_string* @nyx_string_concat(%nyx_string* %4607, %nyx_string* %4608)
  %4610 = load %nyx_string*, %nyx_string** %4475
  %4611 = call %nyx_string* @nyx_string_concat(%nyx_string* %4609, %nyx_string* %4610)
  %4612 = load %nyx_string*, %nyx_string** %4394
  %4613 = call %nyx_string* @nyx_string_concat(%nyx_string* %4611, %nyx_string* %4612)
  %4614 = load %nyx_string*, %nyx_string** %4478
  %4615 = call %nyx_string* @nyx_string_concat(%nyx_string* %4613, %nyx_string* %4614)
  %4616 = load %nyx_string*, %nyx_string** %4571
  %4617 = call %nyx_string* @nyx_string_concat(%nyx_string* %4615, %nyx_string* %4616)
  %4618 = load %nyx_string*, %nyx_string** %4481
  %4619 = call %nyx_string* @nyx_string_concat(%nyx_string* %4617, %nyx_string* %4618)
  %4620 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %4621 = call %nyx_string* @nyx_string_concat(%nyx_string* %4619, %nyx_string* %4620)
  %4622 = load %nyx_string*, %nyx_string** %4484
  %4623 = call %nyx_string* @nyx_string_concat(%nyx_string* %4621, %nyx_string* %4622)
  %4624 = alloca %nyx_string*
  store %nyx_string* %4623, %nyx_string** %4624
  %4625 = load i8*, i8** %4444
  %4626 = load %nyx_string*, %nyx_string** %4487
  %4627 = load %nyx_string*, %nyx_string** %4596
  %4628 = call %nyx_string* @nyx_string_concat(%nyx_string* %4626, %nyx_string* %4627)
  %4629 = load %nyx_string*, %nyx_string** %4490
  %4630 = call %nyx_string* @nyx_string_concat(%nyx_string* %4628, %nyx_string* %4629)
  %4631 = load %nyx_string*, %nyx_string** %4571
  %4632 = call %nyx_string* @nyx_string_concat(%nyx_string* %4630, %nyx_string* %4631)
  %4633 = load %nyx_string*, %nyx_string** %4493
  %4634 = call %nyx_string* @nyx_string_concat(%nyx_string* %4632, %nyx_string* %4633)
  %4635 = load %nyx_string*, %nyx_string** %4596
  %4636 = call %nyx_string* @nyx_string_concat(%nyx_string* %4634, %nyx_string* %4635)
  %4637 = load %nyx_string*, %nyx_string** %4496
  %4638 = call %nyx_string* @nyx_string_concat(%nyx_string* %4636, %nyx_string* %4637)
  call void @nyx_sb_append(i8* %4625, %nyx_string* %4638)
  %4639 = load i8*, i8** %4444
  %4640 = load %nyx_string*, %nyx_string** %4499
  %4641 = load %nyx_string*, %nyx_string** %4606
  %4642 = call %nyx_string* @nyx_string_concat(%nyx_string* %4640, %nyx_string* %4641)
  %4643 = load %nyx_string*, %nyx_string** %4502
  %4644 = call %nyx_string* @nyx_string_concat(%nyx_string* %4642, %nyx_string* %4643)
  call void @nyx_sb_append(i8* %4639, %nyx_string* %4644)
  %4645 = load i8*, i8** %4444
  %4646 = load %nyx_string*, %nyx_string** %4505
  %4647 = load %nyx_string*, %nyx_string** %4571
  %4648 = call %nyx_string* @nyx_string_concat(%nyx_string* %4646, %nyx_string* %4647)
  %4649 = load %nyx_string*, %nyx_string** %4508
  %4650 = call %nyx_string* @nyx_string_concat(%nyx_string* %4648, %nyx_string* %4649)
  call void @nyx_sb_append(i8* %4645, %nyx_string* %4650)
  %4651 = load i8*, i8** %4444
  %4652 = load %nyx_string*, %nyx_string** %4511
  %4653 = load %nyx_string*, %nyx_string** %4576
  %4654 = call %nyx_string* @nyx_string_concat(%nyx_string* %4652, %nyx_string* %4653)
  %4655 = load %nyx_string*, %nyx_string** %4514
  %4656 = call %nyx_string* @nyx_string_concat(%nyx_string* %4654, %nyx_string* %4655)
  call void @nyx_sb_append(i8* %4651, %nyx_string* %4656)
  %4657 = load i8*, i8** %4444
  %4658 = load %nyx_string*, %nyx_string** %4517
  %4659 = load %nyx_string*, %nyx_string** %4571
  %4660 = call %nyx_string* @nyx_string_concat(%nyx_string* %4658, %nyx_string* %4659)
  %4661 = load %nyx_string*, %nyx_string** %4520
  %4662 = call %nyx_string* @nyx_string_concat(%nyx_string* %4660, %nyx_string* %4661)
  call void @nyx_sb_append(i8* %4657, %nyx_string* %4662)
  %4663 = load i8*, i8** %4444
  %4664 = load %nyx_string*, %nyx_string** %4523
  %4665 = load %nyx_string*, %nyx_string** %4624
  %4666 = call %nyx_string* @nyx_string_concat(%nyx_string* %4664, %nyx_string* %4665)
  %4667 = load %nyx_string*, %nyx_string** %4526
  %4668 = call %nyx_string* @nyx_string_concat(%nyx_string* %4666, %nyx_string* %4667)
  call void @nyx_sb_append(i8* %4663, %nyx_string* %4668)
  %4669 = load i8*, i8** %4444
  %4670 = load %nyx_string*, %nyx_string** %4529
  %4671 = load %nyx_string*, %nyx_string** %4606
  %4672 = call %nyx_string* @nyx_string_concat(%nyx_string* %4670, %nyx_string* %4671)
  %4673 = load %nyx_string*, %nyx_string** %4496
  %4674 = call %nyx_string* @nyx_string_concat(%nyx_string* %4672, %nyx_string* %4673)
  call void @nyx_sb_append(i8* %4669, %nyx_string* %4674)
  %4675 = load i8*, i8** %4444
  %4676 = load %nyx_string*, %nyx_string** %4532
  %4677 = load %nyx_string*, %nyx_string** %4571
  %4678 = call %nyx_string* @nyx_string_concat(%nyx_string* %4676, %nyx_string* %4677)
  %4679 = load %nyx_string*, %nyx_string** %4535
  %4680 = call %nyx_string* @nyx_string_concat(%nyx_string* %4678, %nyx_string* %4679)
  call void @nyx_sb_append(i8* %4675, %nyx_string* %4680)
  %4681 = load i8*, i8** %4444
  %4682 = load %nyx_string*, %nyx_string** %4538
  call void @nyx_sb_append(i8* %4681, %nyx_string* %4682)
  %4683 = load i8*, i8** %4444
  %4684 = load %nyx_string*, %nyx_string** %4541
  %4685 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %4686 = call %nyx_string* @nyx_string_concat(%nyx_string* %4684, %nyx_string* %4685)
  %4687 = load %nyx_string*, %nyx_string** %4544
  %4688 = call %nyx_string* @nyx_string_concat(%nyx_string* %4686, %nyx_string* %4687)
  %4689 = load %nyx_string*, %nyx_string** %4596
  %4690 = call %nyx_string* @nyx_string_concat(%nyx_string* %4688, %nyx_string* %4689)
  %4691 = load %nyx_string*, %nyx_string** %4547
  %4692 = call %nyx_string* @nyx_string_concat(%nyx_string* %4690, %nyx_string* %4691)
  %4693 = load %nyx_string*, %nyx_string** %4571
  %4694 = call %nyx_string* @nyx_string_concat(%nyx_string* %4692, %nyx_string* %4693)
  %4695 = load %nyx_string*, %nyx_string** %4550
  %4696 = call %nyx_string* @nyx_string_concat(%nyx_string* %4694, %nyx_string* %4695)
  call void @nyx_sb_append(i8* %4683, %nyx_string* %4696)
  %4697 = load i8*, i8** %4444
  %4698 = load %nyx_string*, %nyx_string** %4553
  %4699 = load %nyx_string*, %nyx_string** %4596
  %4700 = call %nyx_string* @nyx_string_concat(%nyx_string* %4698, %nyx_string* %4699)
  %4701 = load %nyx_string*, %nyx_string** %4556
  %4702 = call %nyx_string* @nyx_string_concat(%nyx_string* %4700, %nyx_string* %4701)
  call void @nyx_sb_append(i8* %4697, %nyx_string* %4702)
  %4703 = load i8*, i8** %4444
  %4704 = load %nyx_string*, %nyx_string** %4559
  call void @nyx_sb_append(i8* %4703, %nyx_string* %4704)
  %4705 = load i64, i64* %4448
  %4706 = add i64 %4705, 1
  store i64 %4706, i64* %4448
  br label %while_cond719
while_end721:
  %4707 = load i8*, i8** %4444
  %4708 = call %nyx_string* @nyx_sb_to_string(i8* %4707)
  ret %nyx_string* %4708
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %4709 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4710 = load %nyx_string*, %nyx_string** %4709
  %4711 = alloca %nyx_string*
  store %nyx_string* %4710, %nyx_string** %4711
  %4712 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %4713 = getelementptr [1 x i8], [1 x i8]* @.str639, i32 0, i32 0
  %4714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %4713, i64 0)
  %4715 = call i1 @nyx_string_equals(%nyx_string* %4712, %nyx_string* %4714)
  %4716 = xor i1 %4715, true
  br i1 %4716, label %then722, label %else723
then722:
  %4717 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %4717, %nyx_string** %4711
  br label %merge724
else723:
  br label %merge724
merge724:
  %4718 = getelementptr [1 x i8], [1 x i8]* @.str640, i32 0, i32 0
  %4719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %4718, i64 0)
  %4720 = alloca %nyx_string*
  store %nyx_string* %4719, %nyx_string** %4720
  %4721 = load %nyx_string*, %nyx_string** %4711
  %4722 = getelementptr [1 x i8], [1 x i8]* @.str641, i32 0, i32 0
  %4723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %4722, i64 0)
  %4724 = call i1 @nyx_string_equals(%nyx_string* %4721, %nyx_string* %4723)
  %4725 = xor i1 %4724, true
  br i1 %4725, label %then725, label %else726
then725:
  %4726 = getelementptr [3 x i8], [3 x i8]* @.str642, i32 0, i32 0
  %4727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %4726, i64 2)
  %4728 = load %nyx_string*, %nyx_string** %4711
  %4729 = call %nyx_string* @nyx_string_concat(%nyx_string* %4727, %nyx_string* %4728)
  %4730 = getelementptr [2 x i8], [2 x i8]* @.str643, i32 0, i32 0
  %4731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %4730, i64 1)
  %4732 = call %nyx_string* @nyx_string_concat(%nyx_string* %4729, %nyx_string* %4731)
  store %nyx_string* %4732, %nyx_string** %4720
  br label %merge727
else726:
  br label %merge727
merge727:
  %4733 = getelementptr [13 x i8], [13 x i8]* @.str644, i32 0, i32 0
  %4734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %4733, i64 12)
  %4735 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4736 = load %nyx_string*, %nyx_string** %4735
  %4737 = call %nyx_string* @nyx_string_concat(%nyx_string* %4734, %nyx_string* %4736)
  %4738 = getelementptr [3 x i8], [3 x i8]* @.str645, i32 0, i32 0
  %4739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %4738, i64 2)
  %4740 = call %nyx_string* @nyx_string_concat(%nyx_string* %4737, %nyx_string* %4739)
  %4741 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4742 = load %nyx_string*, %nyx_string** %4741
  %4743 = call %nyx_string* @nyx_string_concat(%nyx_string* %4740, %nyx_string* %4742)
  %4744 = load %nyx_string*, %nyx_string** %4720
  %4745 = call %nyx_string* @nyx_string_concat(%nyx_string* %4743, %nyx_string* %4744)
  %4746 = call i8* @nyx_string_to_cstr(%nyx_string* %4745)
  call void @nyx_print_string(i8* %4746)
  %4747 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %4748 = call i1 @resolve_deps(%ProjectConfig %4747)
  %4749 = alloca i1
  store i1 %4748, i1* %4749
  %4750 = load i1, i1* %4749
  %4751 = icmp eq i1 %4750, 0
  br i1 %4751, label %then728, label %else729
then728:
  ret i1 0
else729:
  br label %merge730
merge730:
  %4752 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4753 = load %nyx_string*, %nyx_string** %4752
  %4754 = call i8* @nyx_string_to_cstr(%nyx_string* %4753)
  %4755 = call i1 @nyx_file_exists(i8* %4754)
  %4756 = xor i1 %4755, true
  br i1 %4756, label %then731, label %else732
then731:
  %4757 = getelementptr [29 x i8], [29 x i8]* @.str646, i32 0, i32 0
  %4758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %4757, i64 28)
  %4759 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4760 = load %nyx_string*, %nyx_string** %4759
  %4761 = call %nyx_string* @nyx_string_concat(%nyx_string* %4758, %nyx_string* %4760)
  %4762 = call i8* @nyx_string_to_cstr(%nyx_string* %4761)
  call void @nyx_print_string(i8* %4762)
  ret i1 0
else732:
  br label %merge733
merge733:
  %4763 = getelementptr [1 x i8], [1 x i8]* @.str647, i32 0, i32 0
  %4764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %4763, i64 0)
  %4765 = alloca %nyx_string*
  store %nyx_string* %4764, %nyx_string** %4765
  %4766 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4767 = load i1, i1* %4766
  br i1 %4767, label %then734, label %else735
then734:
  %4768 = getelementptr [13 x i8], [13 x i8]* @.str648, i32 0, i32 0
  %4769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %4768, i64 12)
  store %nyx_string* %4769, %nyx_string** %4765
  br label %merge736
else735:
  br label %merge736
merge736:
  %4770 = getelementptr [14 x i8], [14 x i8]* @.str649, i32 0, i32 0
  %4771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %4770, i64 13)
  %4772 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4773 = load %nyx_string*, %nyx_string** %4772
  %4774 = call %nyx_string* @nyx_string_concat(%nyx_string* %4771, %nyx_string* %4773)
  %4775 = call i8* @nyx_string_to_cstr(%nyx_string* %4774)
  call void @nyx_print_string(i8* %4775)
  %4776 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4777 = load %nyx_string*, %nyx_string** %4776
  %4778 = alloca %nyx_string*
  store %nyx_string* %4777, %nyx_string** %4778
  %4779 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4780 = load %nyx_string*, %nyx_string** %4779
  %4781 = getelementptr [1 x i8], [1 x i8]* @.str650, i32 0, i32 0
  %4782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %4781, i64 0)
  %4783 = call i1 @nyx_string_equals(%nyx_string* %4780, %nyx_string* %4782)
  %4784 = xor i1 %4783, true
  br i1 %4784, label %then737, label %else738
then737:
  %4785 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4786 = load %nyx_string*, %nyx_string** %4785
  store %nyx_string* %4786, %nyx_string** %4778
  br label %merge739
else738:
  br label %merge739
merge739:
  %4787 = load %nyx_string*, %nyx_string** %4778
  %4788 = alloca %nyx_string*
  store %nyx_string* %4787, %nyx_string** %4788
  %4789 = getelementptr [1 x i8], [1 x i8]* @.str651, i32 0, i32 0
  %4790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %4789, i64 0)
  %4791 = alloca %nyx_string*
  store %nyx_string* %4790, %nyx_string** %4791
  %4792 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4793 = load %nyx_string*, %nyx_string** %4792
  %4794 = getelementptr [1 x i8], [1 x i8]* @.str652, i32 0, i32 0
  %4795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %4794, i64 0)
  %4796 = call i1 @nyx_string_equals(%nyx_string* %4793, %nyx_string* %4795)
  %4797 = xor i1 %4796, true
  br i1 %4797, label %then740, label %else741
then740:
  %4798 = getelementptr [8 x i8], [8 x i8]* @.str653, i32 0, i32 0
  %4799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %4798, i64 7)
  %4800 = load %nyx_string*, %nyx_string** %4778
  %4801 = call %nyx_string* @nyx_string_concat(%nyx_string* %4799, %nyx_string* %4800)
  store %nyx_string* %4801, %nyx_string** %4788
  %4802 = getelementptr [29 x i8], [29 x i8]* @.str654, i32 0, i32 0
  %4803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %4802, i64 28)
  store %nyx_string* %4803, %nyx_string** %4791
  br label %merge742
else741:
  br label %merge742
merge742:
  %4804 = getelementptr [1 x i8], [1 x i8]* @.str655, i32 0, i32 0
  %4805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %4804, i64 0)
  %4806 = alloca %nyx_string*
  store %nyx_string* %4805, %nyx_string** %4806
  %4807 = load i1, i1* %release.ptr
  br i1 %4807, label %then743, label %else744
then743:
  %4808 = getelementptr [4 x i8], [4 x i8]* @.str656, i32 0, i32 0
  %4809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %4808, i64 3)
  store %nyx_string* %4809, %nyx_string** %4806
  br label %merge745
else744:
  br label %merge745
merge745:
  %4810 = getelementptr [9 x i8], [9 x i8]* @.str657, i32 0, i32 0
  %4811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %4810, i64 8)
  %4812 = call i8* @nyx_string_to_cstr(%nyx_string* %4811)
  %4813 = call %nyx_string* @nyx_getenv(i8* %4812)
  %4814 = alloca %nyx_string*
  store %nyx_string* %4813, %nyx_string** %4814
  %4815 = load %nyx_string*, %nyx_string** %4814
  %4816 = getelementptr [1 x i8], [1 x i8]* @.str658, i32 0, i32 0
  %4817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %4816, i64 0)
  %4818 = call i1 @nyx_string_equals(%nyx_string* %4815, %nyx_string* %4817)
  br i1 %4818, label %then746, label %else747
then746:
  %4819 = getelementptr [5 x i8], [5 x i8]* @.str659, i32 0, i32 0
  %4820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %4819, i64 4)
  %4821 = call i8* @nyx_string_to_cstr(%nyx_string* %4820)
  %4822 = call %nyx_string* @nyx_getenv(i8* %4821)
  %4823 = alloca %nyx_string*
  store %nyx_string* %4822, %nyx_string** %4823
  %4824 = load %nyx_string*, %nyx_string** %4823
  %4825 = getelementptr [6 x i8], [6 x i8]* @.str660, i32 0, i32 0
  %4826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %4825, i64 5)
  %4827 = call %nyx_string* @nyx_string_concat(%nyx_string* %4824, %nyx_string* %4826)
  %4828 = alloca %nyx_string*
  store %nyx_string* %4827, %nyx_string** %4828
  %4829 = alloca i1
  store i1 false, i1* %4829
  %4830 = load %nyx_string*, %nyx_string** %4823
  %4831 = getelementptr [1 x i8], [1 x i8]* @.str661, i32 0, i32 0
  %4832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %4831, i64 0)
  %4833 = call i1 @nyx_string_equals(%nyx_string* %4830, %nyx_string* %4832)
  %4834 = xor i1 %4833, true
  br i1 %4834, label %sc_and_rhs749, label %sc_and_end750
sc_and_rhs749:
  %4835 = load %nyx_string*, %nyx_string** %4828
  %4836 = getelementptr [19 x i8], [19 x i8]* @.str662, i32 0, i32 0
  %4837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %4836, i64 18)
  %4838 = call %nyx_string* @nyx_string_concat(%nyx_string* %4835, %nyx_string* %4837)
  %4839 = call i8* @nyx_string_to_cstr(%nyx_string* %4838)
  %4840 = call i1 @nyx_file_exists(i8* %4839)
  store i1 %4840, i1* %4829
  br label %sc_and_end750
sc_and_end750:
  %4841 = load i1, i1* %4829
  br i1 %4841, label %then751, label %else752
then751:
  %4842 = load %nyx_string*, %nyx_string** %4828
  store %nyx_string* %4842, %nyx_string** %4814
  br label %merge753
else752:
  br label %merge753
merge753:
  br label %merge748
else747:
  br label %merge748
merge748:
  %4843 = load %nyx_string*, %nyx_string** %4814
  %4844 = getelementptr [1 x i8], [1 x i8]* @.str663, i32 0, i32 0
  %4845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %4844, i64 0)
  %4846 = call i1 @nyx_string_equals(%nyx_string* %4843, %nyx_string* %4845)
  br i1 %4846, label %then754, label %else755
then754:
  %4847 = getelementptr [14 x i8], [14 x i8]* @.str664, i32 0, i32 0
  %4848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %4847, i64 13)
  %4849 = call i8* @nyx_string_to_cstr(%nyx_string* %4848)
  %4850 = call i1 @nyx_file_exists(i8* %4849)
  br i1 %4850, label %then757, label %else758
then757:
  %4851 = getelementptr [2 x i8], [2 x i8]* @.str665, i32 0, i32 0
  %4852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %4851, i64 1)
  store %nyx_string* %4852, %nyx_string** %4814
  br label %merge759
else758:
  br label %merge759
merge759:
  br label %merge756
else755:
  br label %merge756
merge756:
  %4853 = load %nyx_string*, %nyx_string** %4814
  %4854 = getelementptr [1 x i8], [1 x i8]* @.str666, i32 0, i32 0
  %4855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %4854, i64 0)
  %4856 = call i1 @nyx_string_equals(%nyx_string* %4853, %nyx_string* %4855)
  br i1 %4856, label %then760, label %else761
then760:
  %4857 = getelementptr [56 x i8], [56 x i8]* @.str667, i32 0, i32 0
  %4858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %4857, i64 55)
  %4859 = call i8* @nyx_string_to_cstr(%nyx_string* %4858)
  call void @nyx_print_string(i8* %4859)
  ret i1 0
else761:
  br label %merge762
merge762:
  %4860 = load %nyx_string*, %nyx_string** %4814
  %4861 = getelementptr [15 x i8], [15 x i8]* @.str668, i32 0, i32 0
  %4862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %4861, i64 14)
  %4863 = call %nyx_string* @nyx_string_concat(%nyx_string* %4860, %nyx_string* %4862)
  %4864 = alloca %nyx_string*
  store %nyx_string* %4863, %nyx_string** %4864
  %4865 = load %nyx_string*, %nyx_string** %4864
  %4866 = call i8* @nyx_string_to_cstr(%nyx_string* %4865)
  %4867 = call i1 @nyx_file_exists(i8* %4866)
  %4868 = xor i1 %4867, true
  br i1 %4868, label %then763, label %else764
then763:
  %4869 = load %nyx_string*, %nyx_string** %4814
  %4870 = getelementptr [9 x i8], [9 x i8]* @.str669, i32 0, i32 0
  %4871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %4870, i64 8)
  %4872 = call %nyx_string* @nyx_string_concat(%nyx_string* %4869, %nyx_string* %4871)
  store %nyx_string* %4872, %nyx_string** %4864
  br label %merge765
else764:
  br label %merge765
merge765:
  %4873 = load %nyx_string*, %nyx_string** %4814
  %4874 = getelementptr [9 x i8], [9 x i8]* @.str670, i32 0, i32 0
  %4875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %4874, i64 8)
  %4876 = call %nyx_string* @nyx_string_concat(%nyx_string* %4873, %nyx_string* %4875)
  %4877 = alloca %nyx_string*
  store %nyx_string* %4876, %nyx_string** %4877
  %4878 = getelementptr [50 x i8], [50 x i8]* @.str671, i32 0, i32 0
  %4879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %4878, i64 49)
  %4880 = getelementptr [77 x i8], [77 x i8]* @.str672, i32 0, i32 0
  %4881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %4880, i64 76)
  %4882 = call %nyx_string* @nyx_string_concat(%nyx_string* %4879, %nyx_string* %4881)
  %4883 = getelementptr [89 x i8], [89 x i8]* @.str673, i32 0, i32 0
  %4884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %4883, i64 88)
  %4885 = call %nyx_string* @nyx_string_concat(%nyx_string* %4882, %nyx_string* %4884)
  %4886 = getelementptr [83 x i8], [83 x i8]* @.str674, i32 0, i32 0
  %4887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %4886, i64 82)
  %4888 = call %nyx_string* @nyx_string_concat(%nyx_string* %4885, %nyx_string* %4887)
  %4889 = getelementptr [65 x i8], [65 x i8]* @.str675, i32 0, i32 0
  %4890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %4889, i64 64)
  %4891 = call %nyx_string* @nyx_string_concat(%nyx_string* %4888, %nyx_string* %4890)
  %4892 = alloca %nyx_string*
  store %nyx_string* %4891, %nyx_string** %4892
  %4893 = getelementptr [15 x i8], [15 x i8]* @.str676, i32 0, i32 0
  %4894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %4893, i64 14)
  %4895 = call i8* @nyx_string_to_cstr(%nyx_string* %4894)
  %4896 = call %nyx_string* @nyx_getenv(i8* %4895)
  %4897 = alloca %nyx_string*
  store %nyx_string* %4896, %nyx_string** %4897
  %4898 = alloca i1
  store i1 false, i1* %4898
  %4899 = load %nyx_string*, %nyx_string** %4897
  %4900 = getelementptr [1 x i8], [1 x i8]* @.str677, i32 0, i32 0
  %4901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %4900, i64 0)
  %4902 = call i1 @nyx_string_equals(%nyx_string* %4899, %nyx_string* %4901)
  %4903 = xor i1 %4902, true
  br i1 %4903, label %sc_and_rhs766, label %sc_and_end767
sc_and_rhs766:
  %4904 = load %nyx_string*, %nyx_string** %4897
  %4905 = call i8* @nyx_string_to_cstr(%nyx_string* %4904)
  %4906 = call i1 @nyx_file_exists(i8* %4905)
  store i1 %4906, i1* %4898
  br label %sc_and_end767
sc_and_end767:
  %4907 = load i1, i1* %4898
  br i1 %4907, label %then768, label %else769
then768:
  %4908 = load %nyx_string*, %nyx_string** %4897
  %4909 = getelementptr [2 x i8], [2 x i8]* @.str678, i32 0, i32 0
  %4910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %4909, i64 1)
  %4911 = call i1 @nyx_string_starts_with(%nyx_string* %4908, %nyx_string* %4910)
  %4912 = xor i1 %4911, true
  br i1 %4912, label %then771, label %else772
then771:
  %4913 = call %nyx_string* @nyx_getcwd()
  %4914 = getelementptr [2 x i8], [2 x i8]* @.str679, i32 0, i32 0
  %4915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %4914, i64 1)
  %4916 = call %nyx_string* @nyx_string_concat(%nyx_string* %4913, %nyx_string* %4915)
  %4917 = load %nyx_string*, %nyx_string** %4897
  %4918 = call %nyx_string* @nyx_string_concat(%nyx_string* %4916, %nyx_string* %4917)
  store %nyx_string* %4918, %nyx_string** %4897
  br label %merge773
else772:
  br label %merge773
merge773:
  %4919 = getelementptr [2 x i8], [2 x i8]* @.str680, i32 0, i32 0
  %4920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %4919, i64 1)
  %4921 = load %nyx_string*, %nyx_string** %4897
  %4922 = call %nyx_string* @nyx_string_concat(%nyx_string* %4920, %nyx_string* %4921)
  %4923 = getelementptr [3 x i8], [3 x i8]* @.str681, i32 0, i32 0
  %4924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %4923, i64 2)
  %4925 = call %nyx_string* @nyx_string_concat(%nyx_string* %4922, %nyx_string* %4924)
  store %nyx_string* %4925, %nyx_string** %4892
  br label %merge770
else769:
  br label %merge770
merge770:
  %4926 = getelementptr [20 x i8], [20 x i8]* @.str682, i32 0, i32 0
  %4927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %4926, i64 19)
  %4928 = call %nyx_string* @pila_compilador_sh()
  %4929 = call %nyx_string* @nyx_string_concat(%nyx_string* %4927, %nyx_string* %4928)
  %4930 = call %nyx_string* @pila_compilador_pista_sh()
  %4931 = call %nyx_string* @nyx_string_concat(%nyx_string* %4929, %nyx_string* %4930)
  %4932 = alloca %nyx_string*
  store %nyx_string* %4931, %nyx_string** %4932
  %4933 = getelementptr [1 x i8], [1 x i8]* @.str683, i32 0, i32 0
  %4934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %4933, i64 0)
  %4935 = alloca %nyx_string*
  store %nyx_string* %4934, %nyx_string** %4935
  %4936 = getelementptr [1 x i8], [1 x i8]* @.str684, i32 0, i32 0
  %4937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %4936, i64 0)
  %4938 = alloca %nyx_string*
  store %nyx_string* %4937, %nyx_string** %4938
  %4939 = alloca i1
  store i1 false, i1* %4939
  %4940 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4941 = load { i64, i8* }*, { i64, i8* }** %4940
  %4942 = call i64 @nyx_array_length({ i64, i8* }* %4941)
  %4943 = icmp sgt i64 %4942, 0
  br i1 %4943, label %sc_and_rhs774, label %sc_and_end775
sc_and_rhs774:
  %4944 = load %nyx_string*, %nyx_string** %4711
  %4945 = getelementptr [12 x i8], [12 x i8]* @.str685, i32 0, i32 0
  %4946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %4945, i64 11)
  %4947 = call i1 @nyx_string_equals(%nyx_string* %4944, %nyx_string* %4946)
  %4948 = xor i1 %4947, true
  store i1 %4948, i1* %4939
  br label %sc_and_end775
sc_and_end775:
  %4949 = load i1, i1* %4939
  br i1 %4949, label %then776, label %else777
then776:
  %4950 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %4951 = load %nyx_string*, %nyx_string** %4814
  %4952 = load %nyx_string*, %nyx_string** %4864
  %4953 = load %nyx_string*, %nyx_string** %4806
  %4954 = load %nyx_string*, %nyx_string** %4765
  %4955 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %4950, %nyx_string* %4951, %nyx_string* %4952, %nyx_string* %4953, %nyx_string* %4954)
  store %nyx_string* %4955, %nyx_string** %4935
  %4956 = getelementptr [18 x i8], [18 x i8]* @.str686, i32 0, i32 0
  %4957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %4956, i64 17)
  %4958 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4959 = load { i64, i8* }*, { i64, i8* }** %4958
  %4960 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4961 = load { i64, i8* }*, { i64, i8* }** %4960
  %4962 = getelementptr [2 x i8], [2 x i8]* @.str687, i32 0, i32 0
  %4963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %4962, i64 1)
  %4964 = call %nyx_string* @nyx_string_join({ i64, i8* }* %4961, %nyx_string* %4963)
  %4965 = call %nyx_string* @nyx_string_concat(%nyx_string* %4957, %nyx_string* %4964)
  %4966 = getelementptr [3 x i8], [3 x i8]* @.str688, i32 0, i32 0
  %4967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %4966, i64 2)
  %4968 = call %nyx_string* @nyx_string_concat(%nyx_string* %4965, %nyx_string* %4967)
  store %nyx_string* %4968, %nyx_string** %4938
  br label %merge778
else777:
  br label %merge778
merge778:
  %4969 = getelementptr [13 x i8], [13 x i8]* @.str689, i32 0, i32 0
  %4970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %4969, i64 12)
  %4971 = load %nyx_string*, %nyx_string** %4765
  %4972 = call %nyx_string* @nyx_string_concat(%nyx_string* %4970, %nyx_string* %4971)
  %4973 = load %nyx_string*, %nyx_string** %4938
  %4974 = call %nyx_string* @nyx_string_concat(%nyx_string* %4972, %nyx_string* %4973)
  %4975 = alloca %nyx_string*
  store %nyx_string* %4974, %nyx_string** %4975
  %4976 = load %nyx_string*, %nyx_string** %4932
  %4977 = getelementptr [19 x i8], [19 x i8]* @.str690, i32 0, i32 0
  %4978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %4977, i64 18)
  %4979 = call %nyx_string* @nyx_string_concat(%nyx_string* %4976, %nyx_string* %4978)
  %4980 = getelementptr [5 x i8], [5 x i8]* @.str691, i32 0, i32 0
  %4981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %4980, i64 4)
  %4982 = call %nyx_string* @nyx_string_concat(%nyx_string* %4979, %nyx_string* %4981)
  %4983 = load %nyx_string*, %nyx_string** %4877
  %4984 = call %nyx_string* @nyx_string_concat(%nyx_string* %4982, %nyx_string* %4983)
  %4985 = getelementptr [3 x i8], [3 x i8]* @.str692, i32 0, i32 0
  %4986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %4985, i64 2)
  %4987 = call %nyx_string* @nyx_string_concat(%nyx_string* %4984, %nyx_string* %4986)
  %4988 = getelementptr [43 x i8], [43 x i8]* @.str693, i32 0, i32 0
  %4989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %4988, i64 42)
  %4990 = call %nyx_string* @nyx_string_concat(%nyx_string* %4987, %nyx_string* %4989)
  %4991 = getelementptr [37 x i8], [37 x i8]* @.str694, i32 0, i32 0
  %4992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %4991, i64 36)
  %4993 = call %nyx_string* @nyx_string_concat(%nyx_string* %4990, %nyx_string* %4992)
  %4994 = getelementptr [17 x i8], [17 x i8]* @.str695, i32 0, i32 0
  %4995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %4994, i64 16)
  %4996 = call %nyx_string* @nyx_string_concat(%nyx_string* %4993, %nyx_string* %4995)
  %4997 = getelementptr [38 x i8], [38 x i8]* @.str696, i32 0, i32 0
  %4998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %4997, i64 37)
  %4999 = call %nyx_string* @nyx_string_concat(%nyx_string* %4996, %nyx_string* %4998)
  %5000 = getelementptr [17 x i8], [17 x i8]* @.str697, i32 0, i32 0
  %5001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %5000, i64 16)
  %5002 = call %nyx_string* @nyx_string_concat(%nyx_string* %4999, %nyx_string* %5001)
  %5003 = getelementptr [15 x i8], [15 x i8]* @.str698, i32 0, i32 0
  %5004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %5003, i64 14)
  %5005 = call %nyx_string* @nyx_string_concat(%nyx_string* %5002, %nyx_string* %5004)
  %5006 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5007 = load %nyx_string*, %nyx_string** %5006
  %5008 = call %nyx_string* @nyx_string_concat(%nyx_string* %5005, %nyx_string* %5007)
  %5009 = getelementptr [12 x i8], [12 x i8]* @.str699, i32 0, i32 0
  %5010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %5009, i64 11)
  %5011 = call %nyx_string* @nyx_string_concat(%nyx_string* %5008, %nyx_string* %5010)
  %5012 = getelementptr [5 x i8], [5 x i8]* @.str700, i32 0, i32 0
  %5013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %5012, i64 4)
  %5014 = call %nyx_string* @nyx_string_concat(%nyx_string* %5011, %nyx_string* %5013)
  %5015 = load %nyx_string*, %nyx_string** %4814
  %5016 = call %nyx_string* @nyx_string_concat(%nyx_string* %5014, %nyx_string* %5015)
  %5017 = getelementptr [3 x i8], [3 x i8]* @.str701, i32 0, i32 0
  %5018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %5017, i64 2)
  %5019 = call %nyx_string* @nyx_string_concat(%nyx_string* %5016, %nyx_string* %5018)
  %5020 = getelementptr [51 x i8], [51 x i8]* @.str702, i32 0, i32 0
  %5021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %5020, i64 50)
  %5022 = call %nyx_string* @nyx_string_concat(%nyx_string* %5019, %nyx_string* %5021)
  %5023 = load %nyx_string*, %nyx_string** %4814
  %5024 = call %nyx_string* @nyx_string_concat(%nyx_string* %5022, %nyx_string* %5023)
  %5025 = getelementptr [35 x i8], [35 x i8]* @.str703, i32 0, i32 0
  %5026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %5025, i64 34)
  %5027 = call %nyx_string* @nyx_string_concat(%nyx_string* %5024, %nyx_string* %5026)
  %5028 = load %nyx_string*, %nyx_string** %4935
  %5029 = call %nyx_string* @nyx_string_concat(%nyx_string* %5027, %nyx_string* %5028)
  %5030 = load %nyx_string*, %nyx_string** %4975
  %5031 = call %nyx_string* @nyx_string_concat(%nyx_string* %5029, %nyx_string* %5030)
  %5032 = getelementptr [35 x i8], [35 x i8]* @.str704, i32 0, i32 0
  %5033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %5032, i64 34)
  %5034 = call %nyx_string* @nyx_string_concat(%nyx_string* %5031, %nyx_string* %5033)
  %5035 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5036 = load %nyx_string*, %nyx_string** %5035
  %5037 = call %nyx_string* @nyx_string_concat(%nyx_string* %5034, %nyx_string* %5036)
  %5038 = getelementptr [32 x i8], [32 x i8]* @.str705, i32 0, i32 0
  %5039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %5038, i64 31)
  %5040 = call %nyx_string* @nyx_string_concat(%nyx_string* %5037, %nyx_string* %5039)
  %5041 = load %nyx_string*, %nyx_string** %4864
  %5042 = call %nyx_string* @nyx_string_concat(%nyx_string* %5040, %nyx_string* %5041)
  %5043 = getelementptr [19 x i8], [19 x i8]* @.str706, i32 0, i32 0
  %5044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %5043, i64 18)
  %5045 = call %nyx_string* @nyx_string_concat(%nyx_string* %5042, %nyx_string* %5044)
  %5046 = getelementptr [93 x i8], [93 x i8]* @.str707, i32 0, i32 0
  %5047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %5046, i64 92)
  %5048 = call %nyx_string* @nyx_string_concat(%nyx_string* %5045, %nyx_string* %5047)
  %5049 = getelementptr [34 x i8], [34 x i8]* @.str708, i32 0, i32 0
  %5050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %5049, i64 33)
  %5051 = call %nyx_string* @nyx_string_concat(%nyx_string* %5048, %nyx_string* %5050)
  %5052 = load %nyx_string*, %nyx_string** %4791
  %5053 = call %nyx_string* @nyx_string_concat(%nyx_string* %5051, %nyx_string* %5052)
  %5054 = getelementptr [7 x i8], [7 x i8]* @.str709, i32 0, i32 0
  %5055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %5054, i64 6)
  %5056 = call %nyx_string* @nyx_string_concat(%nyx_string* %5053, %nyx_string* %5055)
  %5057 = load %nyx_string*, %nyx_string** %4806
  %5058 = call %nyx_string* @nyx_string_concat(%nyx_string* %5056, %nyx_string* %5057)
  %5059 = getelementptr [22 x i8], [22 x i8]* @.str710, i32 0, i32 0
  %5060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %5059, i64 21)
  %5061 = call %nyx_string* @nyx_string_concat(%nyx_string* %5058, %nyx_string* %5060)
  %5062 = load %nyx_string*, %nyx_string** %4892
  %5063 = call %nyx_string* @nyx_string_concat(%nyx_string* %5061, %nyx_string* %5062)
  %5064 = getelementptr [44 x i8], [44 x i8]* @.str711, i32 0, i32 0
  %5065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %5064, i64 43)
  %5066 = call %nyx_string* @nyx_string_concat(%nyx_string* %5063, %nyx_string* %5065)
  %5067 = getelementptr [15 x i8], [15 x i8]* @.str712, i32 0, i32 0
  %5068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %5067, i64 14)
  %5069 = call %nyx_string* @nyx_string_concat(%nyx_string* %5066, %nyx_string* %5068)
  %5070 = load %nyx_string*, %nyx_string** %4788
  %5071 = call %nyx_string* @nyx_string_concat(%nyx_string* %5069, %nyx_string* %5070)
  %5072 = getelementptr [13 x i8], [13 x i8]* @.str713, i32 0, i32 0
  %5073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %5072, i64 12)
  %5074 = call %nyx_string* @nyx_string_concat(%nyx_string* %5071, %nyx_string* %5073)
  %5075 = getelementptr [44 x i8], [44 x i8]* @.str714, i32 0, i32 0
  %5076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %5075, i64 43)
  %5077 = call %nyx_string* @nyx_string_concat(%nyx_string* %5074, %nyx_string* %5076)
  %5078 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5079 = load %nyx_string*, %nyx_string** %5078
  %5080 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %5079)
  %5081 = call %nyx_string* @nyx_string_concat(%nyx_string* %5077, %nyx_string* %5080)
  %5082 = getelementptr [27 x i8], [27 x i8]* @.str715, i32 0, i32 0
  %5083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %5082, i64 26)
  %5084 = call %nyx_string* @nyx_string_concat(%nyx_string* %5081, %nyx_string* %5083)
  %5085 = getelementptr [18 x i8], [18 x i8]* @.str716, i32 0, i32 0
  %5086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %5085, i64 17)
  %5087 = call %nyx_string* @nyx_string_concat(%nyx_string* %5084, %nyx_string* %5086)
  %5088 = load %nyx_string*, %nyx_string** %4788
  %5089 = call %nyx_string* @nyx_string_concat(%nyx_string* %5087, %nyx_string* %5088)
  %5090 = getelementptr [3 x i8], [3 x i8]* @.str717, i32 0, i32 0
  %5091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %5090, i64 2)
  %5092 = call %nyx_string* @nyx_string_concat(%nyx_string* %5089, %nyx_string* %5091)
  %5093 = alloca %nyx_string*
  store %nyx_string* %5092, %nyx_string** %5093
  %5094 = alloca i1
  store i1 false, i1* %5094
  %5095 = load %nyx_string*, %nyx_string** %4711
  %5096 = getelementptr [1 x i8], [1 x i8]* @.str718, i32 0, i32 0
  %5097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %5096, i64 0)
  %5098 = call i1 @nyx_string_equals(%nyx_string* %5095, %nyx_string* %5097)
  %5099 = xor i1 %5098, true
  br i1 %5099, label %sc_and_rhs779, label %sc_and_end780
sc_and_rhs779:
  %5100 = load %nyx_string*, %nyx_string** %4711
  %5101 = getelementptr [12 x i8], [12 x i8]* @.str719, i32 0, i32 0
  %5102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %5101, i64 11)
  %5103 = call i1 @nyx_string_equals(%nyx_string* %5100, %nyx_string* %5102)
  %5104 = xor i1 %5103, true
  store i1 %5104, i1* %5094
  br label %sc_and_end780
sc_and_end780:
  %5105 = load i1, i1* %5094
  br i1 %5105, label %then781, label %else782
then781:
  %5106 = alloca i1
  store i1 false, i1* %5106
  %5107 = load %nyx_string*, %nyx_string** %4711
  %5108 = getelementptr [23 x i8], [23 x i8]* @.str720, i32 0, i32 0
  %5109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %5108, i64 22)
  %5110 = call i1 @nyx_string_equals(%nyx_string* %5107, %nyx_string* %5109)
  %5111 = xor i1 %5110, true
  br i1 %5111, label %sc_and_rhs784, label %sc_and_end785
sc_and_rhs784:
  %5112 = load %nyx_string*, %nyx_string** %4711
  %5113 = getelementptr [24 x i8], [24 x i8]* @.str721, i32 0, i32 0
  %5114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %5113, i64 23)
  %5115 = call i1 @nyx_string_equals(%nyx_string* %5112, %nyx_string* %5114)
  %5116 = xor i1 %5115, true
  store i1 %5116, i1* %5106
  br label %sc_and_end785
sc_and_end785:
  %5117 = load i1, i1* %5106
  br i1 %5117, label %then786, label %else787
then786:
  %5118 = getelementptr [28 x i8], [28 x i8]* @.str722, i32 0, i32 0
  %5119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %5118, i64 27)
  %5120 = load %nyx_string*, %nyx_string** %4711
  %5121 = call %nyx_string* @nyx_string_concat(%nyx_string* %5119, %nyx_string* %5120)
  %5122 = call i8* @nyx_string_to_cstr(%nyx_string* %5121)
  call void @nyx_print_string(i8* %5122)
  %5123 = getelementptr [83 x i8], [83 x i8]* @.str723, i32 0, i32 0
  %5124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %5123, i64 82)
  %5125 = call i8* @nyx_string_to_cstr(%nyx_string* %5124)
  call void @nyx_print_string(i8* %5125)
  %5126 = getelementptr [52 x i8], [52 x i8]* @.str724, i32 0, i32 0
  %5127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %5126, i64 51)
  %5128 = call i8* @nyx_string_to_cstr(%nyx_string* %5127)
  call void @nyx_print_string(i8* %5128)
  ret i1 0
else787:
  br label %merge788
merge788:
  br label %merge783
else782:
  br label %merge783
merge783:
  %5129 = load %nyx_string*, %nyx_string** %5093
  %5130 = alloca %nyx_string*
  store %nyx_string* %5129, %nyx_string** %5130
  %5131 = load %nyx_string*, %nyx_string** %4711
  %5132 = getelementptr [12 x i8], [12 x i8]* @.str725, i32 0, i32 0
  %5133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %5132, i64 11)
  %5134 = call i1 @nyx_string_equals(%nyx_string* %5131, %nyx_string* %5133)
  br i1 %5134, label %then789, label %else790
then789:
  %5135 = getelementptr [20 x i8], [20 x i8]* @.str726, i32 0, i32 0
  %5136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %5135, i64 19)
  %5137 = getelementptr [19 x i8], [19 x i8]* @.str727, i32 0, i32 0
  %5138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %5137, i64 18)
  %5139 = call %nyx_string* @nyx_string_concat(%nyx_string* %5136, %nyx_string* %5138)
  %5140 = getelementptr [5 x i8], [5 x i8]* @.str728, i32 0, i32 0
  %5141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %5140, i64 4)
  %5142 = call %nyx_string* @nyx_string_concat(%nyx_string* %5139, %nyx_string* %5141)
  %5143 = load %nyx_string*, %nyx_string** %4877
  %5144 = call %nyx_string* @nyx_string_concat(%nyx_string* %5142, %nyx_string* %5143)
  %5145 = getelementptr [3 x i8], [3 x i8]* @.str729, i32 0, i32 0
  %5146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %5145, i64 2)
  %5147 = call %nyx_string* @nyx_string_concat(%nyx_string* %5144, %nyx_string* %5146)
  %5148 = getelementptr [11 x i8], [11 x i8]* @.str730, i32 0, i32 0
  %5149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %5148, i64 10)
  %5150 = call %nyx_string* @nyx_string_concat(%nyx_string* %5147, %nyx_string* %5149)
  %5151 = getelementptr [23 x i8], [23 x i8]* @.str731, i32 0, i32 0
  %5152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %5151, i64 22)
  %5153 = call %nyx_string* @nyx_string_concat(%nyx_string* %5150, %nyx_string* %5152)
  %5154 = getelementptr [43 x i8], [43 x i8]* @.str732, i32 0, i32 0
  %5155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %5154, i64 42)
  %5156 = call %nyx_string* @nyx_string_concat(%nyx_string* %5153, %nyx_string* %5155)
  %5157 = getelementptr [37 x i8], [37 x i8]* @.str733, i32 0, i32 0
  %5158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %5157, i64 36)
  %5159 = call %nyx_string* @nyx_string_concat(%nyx_string* %5156, %nyx_string* %5158)
  %5160 = getelementptr [17 x i8], [17 x i8]* @.str734, i32 0, i32 0
  %5161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %5160, i64 16)
  %5162 = call %nyx_string* @nyx_string_concat(%nyx_string* %5159, %nyx_string* %5161)
  %5163 = getelementptr [38 x i8], [38 x i8]* @.str735, i32 0, i32 0
  %5164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %5163, i64 37)
  %5165 = call %nyx_string* @nyx_string_concat(%nyx_string* %5162, %nyx_string* %5164)
  %5166 = getelementptr [17 x i8], [17 x i8]* @.str736, i32 0, i32 0
  %5167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %5166, i64 16)
  %5168 = call %nyx_string* @nyx_string_concat(%nyx_string* %5165, %nyx_string* %5167)
  %5169 = getelementptr [163 x i8], [163 x i8]* @.str737, i32 0, i32 0
  %5170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %5169, i64 162)
  %5171 = call %nyx_string* @nyx_string_concat(%nyx_string* %5168, %nyx_string* %5170)
  %5172 = getelementptr [15 x i8], [15 x i8]* @.str738, i32 0, i32 0
  %5173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %5172, i64 14)
  %5174 = call %nyx_string* @nyx_string_concat(%nyx_string* %5171, %nyx_string* %5173)
  %5175 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5176 = load %nyx_string*, %nyx_string** %5175
  %5177 = call %nyx_string* @nyx_string_concat(%nyx_string* %5174, %nyx_string* %5176)
  %5178 = getelementptr [12 x i8], [12 x i8]* @.str739, i32 0, i32 0
  %5179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %5178, i64 11)
  %5180 = call %nyx_string* @nyx_string_concat(%nyx_string* %5177, %nyx_string* %5179)
  %5181 = getelementptr [5 x i8], [5 x i8]* @.str740, i32 0, i32 0
  %5182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %5181, i64 4)
  %5183 = call %nyx_string* @nyx_string_concat(%nyx_string* %5180, %nyx_string* %5182)
  %5184 = load %nyx_string*, %nyx_string** %4814
  %5185 = call %nyx_string* @nyx_string_concat(%nyx_string* %5183, %nyx_string* %5184)
  %5186 = getelementptr [3 x i8], [3 x i8]* @.str741, i32 0, i32 0
  %5187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %5186, i64 2)
  %5188 = call %nyx_string* @nyx_string_concat(%nyx_string* %5185, %nyx_string* %5187)
  %5189 = getelementptr [70 x i8], [70 x i8]* @.str742, i32 0, i32 0
  %5190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %5189, i64 69)
  %5191 = call %nyx_string* @nyx_string_concat(%nyx_string* %5188, %nyx_string* %5190)
  %5192 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5193 = load %nyx_string*, %nyx_string** %5192
  %5194 = call %nyx_string* @nyx_string_concat(%nyx_string* %5191, %nyx_string* %5193)
  %5195 = getelementptr [32 x i8], [32 x i8]* @.str743, i32 0, i32 0
  %5196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %5195, i64 31)
  %5197 = call %nyx_string* @nyx_string_concat(%nyx_string* %5194, %nyx_string* %5196)
  %5198 = load %nyx_string*, %nyx_string** %4864
  %5199 = call %nyx_string* @nyx_string_concat(%nyx_string* %5197, %nyx_string* %5198)
  %5200 = getelementptr [17 x i8], [17 x i8]* @.str744, i32 0, i32 0
  %5201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %5200, i64 16)
  %5202 = call %nyx_string* @nyx_string_concat(%nyx_string* %5199, %nyx_string* %5201)
  %5203 = getelementptr [71 x i8], [71 x i8]* @.str745, i32 0, i32 0
  %5204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %5203, i64 70)
  %5205 = call %nyx_string* @nyx_string_concat(%nyx_string* %5202, %nyx_string* %5204)
  %5206 = getelementptr [24 x i8], [24 x i8]* @.str746, i32 0, i32 0
  %5207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %5206, i64 23)
  %5208 = call %nyx_string* @nyx_string_concat(%nyx_string* %5205, %nyx_string* %5207)
  %5209 = getelementptr [2 x i8], [2 x i8]* @.str747, i32 0, i32 0
  %5210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %5209, i64 1)
  %5211 = call %nyx_string* @nyx_string_concat(%nyx_string* %5208, %nyx_string* %5210)
  %5212 = getelementptr [76 x i8], [76 x i8]* @.str748, i32 0, i32 0
  %5213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %5212, i64 75)
  %5214 = call %nyx_string* @nyx_string_concat(%nyx_string* %5211, %nyx_string* %5213)
  %5215 = getelementptr [98 x i8], [98 x i8]* @.str749, i32 0, i32 0
  %5216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %5215, i64 97)
  %5217 = call %nyx_string* @nyx_string_concat(%nyx_string* %5214, %nyx_string* %5216)
  %5218 = getelementptr [41 x i8], [41 x i8]* @.str750, i32 0, i32 0
  %5219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %5218, i64 40)
  %5220 = call %nyx_string* @nyx_string_concat(%nyx_string* %5217, %nyx_string* %5219)
  %5221 = getelementptr [64 x i8], [64 x i8]* @.str751, i32 0, i32 0
  %5222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %5221, i64 63)
  %5223 = call %nyx_string* @nyx_string_concat(%nyx_string* %5220, %nyx_string* %5222)
  %5224 = getelementptr [56 x i8], [56 x i8]* @.str752, i32 0, i32 0
  %5225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %5224, i64 55)
  %5226 = call %nyx_string* @nyx_string_concat(%nyx_string* %5223, %nyx_string* %5225)
  %5227 = getelementptr [12 x i8], [12 x i8]* @.str753, i32 0, i32 0
  %5228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %5227, i64 11)
  %5229 = call %nyx_string* @nyx_string_concat(%nyx_string* %5226, %nyx_string* %5228)
  %5230 = getelementptr [34 x i8], [34 x i8]* @.str754, i32 0, i32 0
  %5231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %5230, i64 33)
  %5232 = call %nyx_string* @nyx_string_concat(%nyx_string* %5229, %nyx_string* %5231)
  %5233 = load %nyx_string*, %nyx_string** %4778
  %5234 = call %nyx_string* @nyx_string_concat(%nyx_string* %5232, %nyx_string* %5233)
  %5235 = getelementptr [18 x i8], [18 x i8]* @.str755, i32 0, i32 0
  %5236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %5235, i64 17)
  %5237 = call %nyx_string* @nyx_string_concat(%nyx_string* %5234, %nyx_string* %5236)
  %5238 = getelementptr [49 x i8], [49 x i8]* @.str756, i32 0, i32 0
  %5239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %5238, i64 48)
  %5240 = call %nyx_string* @nyx_string_concat(%nyx_string* %5237, %nyx_string* %5239)
  %5241 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5242 = load %nyx_string*, %nyx_string** %5241
  %5243 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %5242)
  %5244 = call %nyx_string* @nyx_string_concat(%nyx_string* %5240, %nyx_string* %5243)
  %5245 = getelementptr [27 x i8], [27 x i8]* @.str757, i32 0, i32 0
  %5246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %5245, i64 26)
  %5247 = call %nyx_string* @nyx_string_concat(%nyx_string* %5244, %nyx_string* %5246)
  store %nyx_string* %5247, %nyx_string** %5130
  %5248 = load %nyx_string*, %nyx_string** %5130
  %5249 = getelementptr [95 x i8], [95 x i8]* @.str758, i32 0, i32 0
  %5250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %5249, i64 94)
  %5251 = call %nyx_string* @nyx_string_concat(%nyx_string* %5248, %nyx_string* %5250)
  %5252 = getelementptr [24 x i8], [24 x i8]* @.str759, i32 0, i32 0
  %5253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %5252, i64 23)
  %5254 = call %nyx_string* @nyx_string_concat(%nyx_string* %5251, %nyx_string* %5253)
  %5255 = getelementptr [10 x i8], [10 x i8]* @.str760, i32 0, i32 0
  %5256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %5255, i64 9)
  %5257 = call %nyx_string* @nyx_string_concat(%nyx_string* %5254, %nyx_string* %5256)
  %5258 = getelementptr [49 x i8], [49 x i8]* @.str761, i32 0, i32 0
  %5259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %5258, i64 48)
  %5260 = call %nyx_string* @nyx_string_concat(%nyx_string* %5257, %nyx_string* %5259)
  %5261 = getelementptr [207 x i8], [207 x i8]* @.str762, i32 0, i32 0
  %5262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %5261, i64 206)
  %5263 = call %nyx_string* @nyx_string_concat(%nyx_string* %5260, %nyx_string* %5262)
  %5264 = getelementptr [41 x i8], [41 x i8]* @.str763, i32 0, i32 0
  %5265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %5264, i64 40)
  %5266 = call %nyx_string* @nyx_string_concat(%nyx_string* %5263, %nyx_string* %5265)
  %5267 = load %nyx_string*, %nyx_string** %4778
  %5268 = call %nyx_string* @nyx_string_concat(%nyx_string* %5266, %nyx_string* %5267)
  %5269 = getelementptr [58 x i8], [58 x i8]* @.str764, i32 0, i32 0
  %5270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %5269, i64 57)
  %5271 = call %nyx_string* @nyx_string_concat(%nyx_string* %5268, %nyx_string* %5270)
  %5272 = getelementptr [34 x i8], [34 x i8]* @.str765, i32 0, i32 0
  %5273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %5272, i64 33)
  %5274 = call %nyx_string* @nyx_string_concat(%nyx_string* %5271, %nyx_string* %5273)
  %5275 = load %nyx_string*, %nyx_string** %4778
  %5276 = call %nyx_string* @nyx_string_concat(%nyx_string* %5274, %nyx_string* %5275)
  %5277 = getelementptr [18 x i8], [18 x i8]* @.str766, i32 0, i32 0
  %5278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %5277, i64 17)
  %5279 = call %nyx_string* @nyx_string_concat(%nyx_string* %5276, %nyx_string* %5278)
  %5280 = getelementptr [78 x i8], [78 x i8]* @.str767, i32 0, i32 0
  %5281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %5280, i64 77)
  %5282 = call %nyx_string* @nyx_string_concat(%nyx_string* %5279, %nyx_string* %5281)
  %5283 = getelementptr [4 x i8], [4 x i8]* @.str768, i32 0, i32 0
  %5284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %5283, i64 3)
  %5285 = call %nyx_string* @nyx_string_concat(%nyx_string* %5282, %nyx_string* %5284)
  %5286 = getelementptr [32 x i8], [32 x i8]* @.str769, i32 0, i32 0
  %5287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %5286, i64 31)
  %5288 = call %nyx_string* @nyx_string_concat(%nyx_string* %5285, %nyx_string* %5287)
  %5289 = load %nyx_string*, %nyx_string** %4778
  %5290 = call %nyx_string* @nyx_string_concat(%nyx_string* %5288, %nyx_string* %5289)
  %5291 = getelementptr [41 x i8], [41 x i8]* @.str770, i32 0, i32 0
  %5292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %5291, i64 40)
  %5293 = call %nyx_string* @nyx_string_concat(%nyx_string* %5290, %nyx_string* %5292)
  %5294 = load %nyx_string*, %nyx_string** %4778
  %5295 = call %nyx_string* @nyx_string_concat(%nyx_string* %5293, %nyx_string* %5294)
  %5296 = getelementptr [9 x i8], [9 x i8]* @.str771, i32 0, i32 0
  %5297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %5296, i64 8)
  %5298 = call %nyx_string* @nyx_string_concat(%nyx_string* %5295, %nyx_string* %5297)
  store %nyx_string* %5298, %nyx_string** %5130
  br label %merge791
else790:
  br label %merge791
merge791:
  %5299 = getelementptr [16 x i8], [16 x i8]* @.str772, i32 0, i32 0
  %5300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %5299, i64 15)
  %5301 = call i64 @nyx_getpid()
  %5302 = call %nyx_string* @nyx_string_from_int(i64 %5301)
  %5303 = call %nyx_string* @nyx_string_concat(%nyx_string* %5300, %nyx_string* %5302)
  %5304 = getelementptr [4 x i8], [4 x i8]* @.str773, i32 0, i32 0
  %5305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %5304, i64 3)
  %5306 = call %nyx_string* @nyx_string_concat(%nyx_string* %5303, %nyx_string* %5305)
  %5307 = alloca %nyx_string*
  store %nyx_string* %5306, %nyx_string** %5307
  %5308 = load %nyx_string*, %nyx_string** %5307
  %5309 = load %nyx_string*, %nyx_string** %5130
  %5310 = call i8* @nyx_string_to_cstr(%nyx_string* %5308)
  %5311 = call i1 @nyx_write_file_safe(i8* %5310, %nyx_string* %5309)
  %5312 = getelementptr [7 x i8], [7 x i8]* @.str774, i32 0, i32 0
  %5313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %5312, i64 6)
  %5314 = load %nyx_string*, %nyx_string** %5307
  %5315 = call %nyx_string* @nyx_string_concat(%nyx_string* %5313, %nyx_string* %5314)
  %5316 = getelementptr [22 x i8], [22 x i8]* @.str775, i32 0, i32 0
  %5317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %5316, i64 21)
  %5318 = call %nyx_string* @nyx_string_concat(%nyx_string* %5315, %nyx_string* %5317)
  %5319 = load %nyx_string*, %nyx_string** %5307
  %5320 = call %nyx_string* @nyx_string_concat(%nyx_string* %5318, %nyx_string* %5319)
  %5321 = getelementptr [16 x i8], [16 x i8]* @.str776, i32 0, i32 0
  %5322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %5321, i64 15)
  %5323 = call %nyx_string* @nyx_string_concat(%nyx_string* %5320, %nyx_string* %5322)
  %5324 = call i8* @nyx_string_to_cstr(%nyx_string* %5323)
  %5325 = call i64 @nyx_exec_code(i8* %5324)
  %5326 = alloca i64
  store i64 %5325, i64* %5326
  %5327 = load i64, i64* %5326
  %5328 = icmp eq i64 %5327, 0
  ret i1 %5328
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %5329 = getelementptr [10 x i8], [10 x i8]* @.str777, i32 0, i32 0
  %5330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %5329, i64 9)
  %5331 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %5332 = load %nyx_string*, %nyx_string** %5331
  %5333 = call %nyx_string* @nyx_string_concat(%nyx_string* %5330, %nyx_string* %5332)
  %5334 = call i8* @nyx_string_to_cstr(%nyx_string* %5333)
  call void @nyx_print_string(i8* %5334)
  %5335 = getelementptr [10 x i8], [10 x i8]* @.str778, i32 0, i32 0
  %5336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %5335, i64 9)
  %5337 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %5338 = load %nyx_string*, %nyx_string** %5337
  %5339 = call %nyx_string* @nyx_string_concat(%nyx_string* %5336, %nyx_string* %5338)
  %5340 = call i8* @nyx_string_to_cstr(%nyx_string* %5339)
  call void @nyx_print_string(i8* %5340)
  %5341 = getelementptr [10 x i8], [10 x i8]* @.str779, i32 0, i32 0
  %5342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %5341, i64 9)
  %5343 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5344 = load %nyx_string*, %nyx_string** %5343
  %5345 = call %nyx_string* @nyx_string_concat(%nyx_string* %5342, %nyx_string* %5344)
  %5346 = call i8* @nyx_string_to_cstr(%nyx_string* %5345)
  call void @nyx_print_string(i8* %5346)
  %5347 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %5348 = load %nyx_string*, %nyx_string** %5347
  %5349 = getelementptr [1 x i8], [1 x i8]* @.str780, i32 0, i32 0
  %5350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %5349, i64 0)
  %5351 = call i1 @nyx_string_equals(%nyx_string* %5348, %nyx_string* %5350)
  %5352 = xor i1 %5351, true
  br i1 %5352, label %then792, label %else793
then792:
  %5353 = getelementptr [10 x i8], [10 x i8]* @.str781, i32 0, i32 0
  %5354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %5353, i64 9)
  %5355 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %5356 = load %nyx_string*, %nyx_string** %5355
  %5357 = call %nyx_string* @nyx_string_concat(%nyx_string* %5354, %nyx_string* %5356)
  %5358 = call i8* @nyx_string_to_cstr(%nyx_string* %5357)
  call void @nyx_print_string(i8* %5358)
  br label %merge794
else793:
  br label %merge794
merge794:
  %5359 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %5360 = load %nyx_string*, %nyx_string** %5359
  %5361 = getelementptr [1 x i8], [1 x i8]* @.str782, i32 0, i32 0
  %5362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %5361, i64 0)
  %5363 = call i1 @nyx_string_equals(%nyx_string* %5360, %nyx_string* %5362)
  %5364 = xor i1 %5363, true
  br i1 %5364, label %then795, label %else796
then795:
  %5365 = getelementptr [10 x i8], [10 x i8]* @.str783, i32 0, i32 0
  %5366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %5365, i64 9)
  %5367 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %5368 = load %nyx_string*, %nyx_string** %5367
  %5369 = call %nyx_string* @nyx_string_concat(%nyx_string* %5366, %nyx_string* %5368)
  %5370 = call i8* @nyx_string_to_cstr(%nyx_string* %5369)
  call void @nyx_print_string(i8* %5370)
  br label %merge797
else796:
  br label %merge797
merge797:
  %5371 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %5372 = load i1, i1* %5371
  br i1 %5372, label %then798, label %else799
then798:
  %5373 = getelementptr [25 x i8], [25 x i8]* @.str784, i32 0, i32 0
  %5374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %5373, i64 24)
  %5375 = call i8* @nyx_string_to_cstr(%nyx_string* %5374)
  call void @nyx_print_string(i8* %5375)
  br label %merge800
else799:
  %5376 = getelementptr [22 x i8], [22 x i8]* @.str785, i32 0, i32 0
  %5377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %5376, i64 21)
  %5378 = call i8* @nyx_string_to_cstr(%nyx_string* %5377)
  call void @nyx_print_string(i8* %5378)
  br label %merge800
merge800:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %5379 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5380 = getelementptr [2 x i8], [2 x i8]* @.str786, i32 0, i32 0
  %5381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %5380, i64 1)
  %5382 = call i1 @nyx_string_starts_with(%nyx_string* %5379, %nyx_string* %5381)
  br i1 %5382, label %then801, label %else802
then801:
  %5383 = getelementptr [98 x i8], [98 x i8]* @.str787, i32 0, i32 0
  %5384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %5383, i64 97)
  %5385 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5386 = call %nyx_string* @nyx_string_concat(%nyx_string* %5384, %nyx_string* %5385)
  ret %nyx_string* %5386
else802:
  br label %merge803
merge803:
  %5387 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5388 = getelementptr [4 x i8], [4 x i8]* @.str788, i32 0, i32 0
  %5389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %5388, i64 3)
  %5390 = call i1 @nyx_string_ends_with(%nyx_string* %5387, %nyx_string* %5389)
  %5391 = xor i1 %5390, true
  br i1 %5391, label %then804, label %else805
then804:
  %5392 = getelementptr [31 x i8], [31 x i8]* @.str789, i32 0, i32 0
  %5393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %5392, i64 30)
  %5394 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5395 = call %nyx_string* @nyx_string_concat(%nyx_string* %5393, %nyx_string* %5394)
  ret %nyx_string* %5395
else805:
  br label %merge806
merge806:
  %5396 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5397 = call i8* @nyx_string_to_cstr(%nyx_string* %5396)
  %5398 = call i1 @nyx_file_exists(i8* %5397)
  %5399 = xor i1 %5398, true
  br i1 %5399, label %then807, label %else808
then807:
  %5400 = getelementptr [31 x i8], [31 x i8]* @.str790, i32 0, i32 0
  %5401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %5400, i64 30)
  %5402 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5403 = call %nyx_string* @nyx_string_concat(%nyx_string* %5401, %nyx_string* %5402)
  %5404 = getelementptr [48 x i8], [48 x i8]* @.str791, i32 0, i32 0
  %5405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %5404, i64 47)
  %5406 = call %nyx_string* @nyx_string_concat(%nyx_string* %5403, %nyx_string* %5405)
  ret %nyx_string* %5406
else808:
  br label %merge809
merge809:
  %5407 = getelementptr [1 x i8], [1 x i8]* @.str792, i32 0, i32 0
  %5408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %5407, i64 0)
  ret %nyx_string* %5408
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %5409 = load %nyx_string*, %nyx_string** %p.ptr
  %5410 = getelementptr [3 x i8], [3 x i8]* @.str793, i32 0, i32 0
  %5411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %5410, i64 2)
  %5412 = call i1 @nyx_string_starts_with(%nyx_string* %5409, %nyx_string* %5411)
  br i1 %5412, label %then810, label %else811
then810:
  %5413 = load %nyx_string*, %nyx_string** %p.ptr
  %5414 = load %nyx_string*, %nyx_string** %p.ptr
  %5415 = call i64 @nyx_string_byte_length(%nyx_string* %5414)
  %5416 = call %nyx_string* @nyx_string_substring(%nyx_string* %5413, i64 2, i64 %5415)
  ret %nyx_string* %5416
else811:
  br label %merge812
merge812:
  %5417 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %5417
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %5418 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5419 = getelementptr [1 x i8], [1 x i8]* @.str794, i32 0, i32 0
  %5420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %5419, i64 0)
  %5421 = call i1 @nyx_string_equals(%nyx_string* %5418, %nyx_string* %5420)
  br i1 %5421, label %then813, label %else814
then813:
  %5422 = getelementptr [1 x i8], [1 x i8]* @.str795, i32 0, i32 0
  %5423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %5422, i64 0)
  ret %nyx_string* %5423
else814:
  br label %merge815
merge815:
  %5424 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5425 = call %nyx_string* @strip_dot_slash(%nyx_string* %5424)
  %5426 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5427 = load %nyx_string*, %nyx_string** %5426
  %5428 = call %nyx_string* @strip_dot_slash(%nyx_string* %5427)
  %5429 = call i1 @nyx_string_equals(%nyx_string* %5425, %nyx_string* %5428)
  br i1 %5429, label %then816, label %else817
then816:
  %5430 = getelementptr [1 x i8], [1 x i8]* @.str796, i32 0, i32 0
  %5431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %5430, i64 0)
  ret %nyx_string* %5431
else817:
  br label %merge818
merge818:
  %5432 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5433 = alloca %nyx_string*
  store %nyx_string* %5432, %nyx_string** %5433
  %5434 = alloca i64
  store i64 0, i64* %5434
  %5435 = call i8* @llvm.stacksave()
  br label %while_cond819
while_cond819:
  %5436 = load i64, i64* %5434
  %5437 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5438 = call i64 @nyx_string_byte_length(%nyx_string* %5437)
  %5439 = icmp slt i64 %5436, %5438
  br i1 %5439, label %while_body820, label %while_end821
while_body820:
  call void @llvm.stackrestore(i8* %5435)
  %5440 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5441 = load i64, i64* %5434
  %5442 = call i8 @nyx_string_char_at(%nyx_string* %5440, i64 %5441)
  %5443 = zext i8 %5442 to i64
  %5444 = trunc i64 %5443 to i8
  %5445 = alloca i8
  store i8 %5444, i8* %5445
  %5446 = load i8, i8* %5445
  %5447 = getelementptr [1 x i8], [1 x i8]* @.str797, i32 0, i32 0
  %5448 = load i8, i8* %5447
  %5449 = zext i8 %5448 to i64
  %5450 = zext i8 %5446 to i64
  %5451 = icmp eq i64 %5450, %5449
  br i1 %5451, label %then822, label %else823
then822:
  %5452 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5453 = load i64, i64* %5434
  %5454 = add i64 %5453, 1
  %5455 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5456 = call i64 @nyx_string_byte_length(%nyx_string* %5455)
  %5457 = call %nyx_string* @nyx_string_substring(%nyx_string* %5452, i64 %5454, i64 %5456)
  store %nyx_string* %5457, %nyx_string** %5433
  br label %merge824
else823:
  br label %merge824
merge824:
  %5458 = load i64, i64* %5434
  %5459 = add i64 %5458, 1
  store i64 %5459, i64* %5434
  br label %while_cond819
while_end821:
  %5460 = load %nyx_string*, %nyx_string** %5433
  %5461 = load %nyx_string*, %nyx_string** %5433
  %5462 = call i64 @nyx_string_byte_length(%nyx_string* %5461)
  %5463 = sub i64 %5462, 3
  %5464 = call %nyx_string* @nyx_string_substring(%nyx_string* %5460, i64 0, i64 %5463)
  %5465 = alloca %nyx_string*
  store %nyx_string* %5464, %nyx_string** %5465
  %5466 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %5467 = load %nyx_string*, %nyx_string** %5466
  %5468 = getelementptr [2 x i8], [2 x i8]* @.str798, i32 0, i32 0
  %5469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %5468, i64 1)
  %5470 = call %nyx_string* @nyx_string_concat(%nyx_string* %5467, %nyx_string* %5469)
  %5471 = load %nyx_string*, %nyx_string** %5465
  %5472 = call %nyx_string* @nyx_string_concat(%nyx_string* %5470, %nyx_string* %5471)
  ret %nyx_string* %5472
}

define internal %nyx_string* @toolchain_version(
) {
  %5473 = getelementptr [9 x i8], [9 x i8]* @.str799, i32 0, i32 0
  %5474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %5473, i64 8)
  %5475 = call i8* @nyx_string_to_cstr(%nyx_string* %5474)
  %5476 = call %nyx_string* @nyx_getenv(i8* %5475)
  %5477 = alloca %nyx_string*
  store %nyx_string* %5476, %nyx_string** %5477
  %5478 = load %nyx_string*, %nyx_string** %5477
  %5479 = getelementptr [1 x i8], [1 x i8]* @.str800, i32 0, i32 0
  %5480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %5479, i64 0)
  %5481 = call i1 @nyx_string_equals(%nyx_string* %5478, %nyx_string* %5480)
  br i1 %5481, label %then825, label %else826
then825:
  %5482 = getelementptr [5 x i8], [5 x i8]* @.str801, i32 0, i32 0
  %5483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %5482, i64 4)
  %5484 = call i8* @nyx_string_to_cstr(%nyx_string* %5483)
  %5485 = call %nyx_string* @nyx_getenv(i8* %5484)
  %5486 = alloca %nyx_string*
  store %nyx_string* %5485, %nyx_string** %5486
  %5487 = load %nyx_string*, %nyx_string** %5486
  %5488 = getelementptr [1 x i8], [1 x i8]* @.str802, i32 0, i32 0
  %5489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %5488, i64 0)
  %5490 = call i1 @nyx_string_equals(%nyx_string* %5487, %nyx_string* %5489)
  %5491 = xor i1 %5490, true
  br i1 %5491, label %then828, label %else829
then828:
  %5492 = load %nyx_string*, %nyx_string** %5486
  %5493 = getelementptr [6 x i8], [6 x i8]* @.str803, i32 0, i32 0
  %5494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %5493, i64 5)
  %5495 = call %nyx_string* @nyx_string_concat(%nyx_string* %5492, %nyx_string* %5494)
  store %nyx_string* %5495, %nyx_string** %5477
  br label %merge830
else829:
  br label %merge830
merge830:
  br label %merge827
else826:
  br label %merge827
merge827:
  %5496 = load %nyx_string*, %nyx_string** %5477
  %5497 = getelementptr [1 x i8], [1 x i8]* @.str804, i32 0, i32 0
  %5498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %5497, i64 0)
  %5499 = call i1 @nyx_string_equals(%nyx_string* %5496, %nyx_string* %5498)
  %5500 = xor i1 %5499, true
  br i1 %5500, label %then831, label %else832
then831:
  %5501 = load %nyx_string*, %nyx_string** %5477
  %5502 = getelementptr [9 x i8], [9 x i8]* @.str805, i32 0, i32 0
  %5503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %5502, i64 8)
  %5504 = call %nyx_string* @nyx_string_concat(%nyx_string* %5501, %nyx_string* %5503)
  %5505 = call i8* @nyx_string_to_cstr(%nyx_string* %5504)
  %5506 = call i1 @nyx_file_exists(i8* %5505)
  br i1 %5506, label %then834, label %else835
then834:
  %5507 = load %nyx_string*, %nyx_string** %5477
  %5508 = getelementptr [9 x i8], [9 x i8]* @.str806, i32 0, i32 0
  %5509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %5508, i64 8)
  %5510 = call %nyx_string* @nyx_string_concat(%nyx_string* %5507, %nyx_string* %5509)
  %5511 = call i8* @nyx_string_to_cstr(%nyx_string* %5510)
  %5512 = call %nyx_string* @nyx_read_file(i8* %5511)
  %5513 = alloca %nyx_string*
  store %nyx_string* %5512, %nyx_string** %5513
  %5514 = load %nyx_string*, %nyx_string** %5513
  %5515 = call %nyx_string* @nyx_string_trim(%nyx_string* %5514)
  ret %nyx_string* %5515
else835:
  br label %merge836
merge836:
  br label %merge833
else832:
  br label %merge833
merge833:
  %5516 = getelementptr [8 x i8], [8 x i8]* @.str807, i32 0, i32 0
  %5517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %5516, i64 7)
  %5518 = call i8* @nyx_string_to_cstr(%nyx_string* %5517)
  %5519 = call i1 @nyx_file_exists(i8* %5518)
  br i1 %5519, label %then837, label %else838
then837:
  %5520 = getelementptr [8 x i8], [8 x i8]* @.str808, i32 0, i32 0
  %5521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %5520, i64 7)
  %5522 = call i8* @nyx_string_to_cstr(%nyx_string* %5521)
  %5523 = call %nyx_string* @nyx_read_file(i8* %5522)
  %5524 = alloca %nyx_string*
  store %nyx_string* %5523, %nyx_string** %5524
  %5525 = load %nyx_string*, %nyx_string** %5524
  %5526 = call %nyx_string* @nyx_string_trim(%nyx_string* %5525)
  ret %nyx_string* %5526
else838:
  br label %merge839
merge839:
  %5527 = getelementptr [7 x i8], [7 x i8]* @.str809, i32 0, i32 0
  %5528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %5527, i64 6)
  ret %nyx_string* %5528
}

define internal %nyx_string* @report_template(
) {
  %5529 = getelementptr [51 x i8], [51 x i8]* @.str810, i32 0, i32 0
  %5530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %5529, i64 50)
  %5531 = alloca %nyx_string*
  store %nyx_string* %5530, %nyx_string** %5531
  %5532 = load %nyx_string*, %nyx_string** %5531
  %5533 = getelementptr [73 x i8], [73 x i8]* @.str811, i32 0, i32 0
  %5534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %5533, i64 72)
  %5535 = call %nyx_string* @nyx_string_concat(%nyx_string* %5532, %nyx_string* %5534)
  store %nyx_string* %5535, %nyx_string** %5531
  %5536 = load %nyx_string*, %nyx_string** %5531
  %5537 = getelementptr [88 x i8], [88 x i8]* @.str812, i32 0, i32 0
  %5538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %5537, i64 87)
  %5539 = call %nyx_string* @nyx_string_concat(%nyx_string* %5536, %nyx_string* %5538)
  store %nyx_string* %5539, %nyx_string** %5531
  %5540 = load %nyx_string*, %nyx_string** %5531
  %5541 = getelementptr [51 x i8], [51 x i8]* @.str813, i32 0, i32 0
  %5542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %5541, i64 50)
  %5543 = call %nyx_string* @nyx_string_concat(%nyx_string* %5540, %nyx_string* %5542)
  store %nyx_string* %5543, %nyx_string** %5531
  %5544 = load %nyx_string*, %nyx_string** %5531
  %5545 = getelementptr [90 x i8], [90 x i8]* @.str814, i32 0, i32 0
  %5546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %5545, i64 89)
  %5547 = call %nyx_string* @nyx_string_concat(%nyx_string* %5544, %nyx_string* %5546)
  store %nyx_string* %5547, %nyx_string** %5531
  %5548 = load %nyx_string*, %nyx_string** %5531
  %5549 = getelementptr [104 x i8], [104 x i8]* @.str815, i32 0, i32 0
  %5550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %5549, i64 103)
  %5551 = call %nyx_string* @nyx_string_concat(%nyx_string* %5548, %nyx_string* %5550)
  store %nyx_string* %5551, %nyx_string** %5531
  %5552 = load %nyx_string*, %nyx_string** %5531
  %5553 = getelementptr [99 x i8], [99 x i8]* @.str816, i32 0, i32 0
  %5554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %5553, i64 98)
  %5555 = call %nyx_string* @nyx_string_concat(%nyx_string* %5552, %nyx_string* %5554)
  store %nyx_string* %5555, %nyx_string** %5531
  %5556 = load %nyx_string*, %nyx_string** %5531
  %5557 = getelementptr [126 x i8], [126 x i8]* @.str817, i32 0, i32 0
  %5558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %5557, i64 125)
  %5559 = call %nyx_string* @nyx_string_concat(%nyx_string* %5556, %nyx_string* %5558)
  store %nyx_string* %5559, %nyx_string** %5531
  %5560 = load %nyx_string*, %nyx_string** %5531
  %5561 = getelementptr [21 x i8], [21 x i8]* @.str818, i32 0, i32 0
  %5562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %5561, i64 20)
  %5563 = call %nyx_string* @nyx_string_concat(%nyx_string* %5560, %nyx_string* %5562)
  %5564 = call %nyx_string* @toolchain_version()
  %5565 = call %nyx_string* @nyx_string_concat(%nyx_string* %5563, %nyx_string* %5564)
  %5566 = getelementptr [25 x i8], [25 x i8]* @.str819, i32 0, i32 0
  %5567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %5566, i64 24)
  %5568 = call %nyx_string* @nyx_string_concat(%nyx_string* %5565, %nyx_string* %5567)
  store %nyx_string* %5568, %nyx_string** %5531
  %5569 = load %nyx_string*, %nyx_string** %5531
  ret %nyx_string* %5569
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %5570 = getelementptr [12 x i8], [12 x i8]* @.str820, i32 0, i32 0
  %5571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %5570, i64 11)
  %5572 = alloca %nyx_string*
  store %nyx_string* %5571, %nyx_string** %5572
  %5573 = load i1, i1* %do_send.ptr
  %5574 = xor i1 %5573, true
  br i1 %5574, label %then840, label %else841
then840:
  %5575 = load %nyx_string*, %nyx_string** %5572
  %5576 = call i8* @nyx_string_to_cstr(%nyx_string* %5575)
  %5577 = call i1 @nyx_file_exists(i8* %5576)
  br i1 %5577, label %then843, label %else844
then843:
  %5578 = load %nyx_string*, %nyx_string** %5572
  %5579 = call i8* @nyx_string_to_cstr(%nyx_string* %5578)
  %5580 = call %nyx_string* @nyx_read_file(i8* %5579)
  %5581 = alloca %nyx_string*
  store %nyx_string* %5580, %nyx_string** %5581
  %5582 = load %nyx_string*, %nyx_string** %5581
  %5583 = call i64 @nyx_string_byte_length(%nyx_string* %5582)
  %5584 = icmp sge i64 %5583, 40
  br i1 %5584, label %then846, label %else847
then846:
  %5585 = getelementptr [80 x i8], [80 x i8]* @.str821, i32 0, i32 0
  %5586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %5585, i64 79)
  %5587 = call i8* @nyx_string_to_cstr(%nyx_string* %5586)
  call void @nyx_print_string(i8* %5587)
  %5588 = getelementptr [62 x i8], [62 x i8]* @.str822, i32 0, i32 0
  %5589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %5588, i64 61)
  %5590 = call i8* @nyx_string_to_cstr(%nyx_string* %5589)
  call void @nyx_print_string(i8* %5590)
  ret i1 1
else847:
  br label %merge848
merge848:
  br label %merge845
else844:
  br label %merge845
merge845:
  %5591 = load %nyx_string*, %nyx_string** %5572
  %5592 = call %nyx_string* @report_template()
  %5593 = call i8* @nyx_string_to_cstr(%nyx_string* %5591)
  %5594 = call i1 @nyx_write_file_safe(i8* %5593, %nyx_string* %5592)
  %5595 = getelementptr [78 x i8], [78 x i8]* @.str823, i32 0, i32 0
  %5596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %5595, i64 77)
  %5597 = call i8* @nyx_string_to_cstr(%nyx_string* %5596)
  call void @nyx_print_string(i8* %5597)
  %5598 = getelementptr [72 x i8], [72 x i8]* @.str824, i32 0, i32 0
  %5599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %5598, i64 71)
  %5600 = call i8* @nyx_string_to_cstr(%nyx_string* %5599)
  call void @nyx_print_string(i8* %5600)
  %5601 = getelementptr [53 x i8], [53 x i8]* @.str825, i32 0, i32 0
  %5602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %5601, i64 52)
  %5603 = call i8* @nyx_string_to_cstr(%nyx_string* %5602)
  call void @nyx_print_string(i8* %5603)
  ret i1 1
else841:
  br label %merge842
merge842:
  %5604 = load %nyx_string*, %nyx_string** %5572
  %5605 = alloca %nyx_string*
  store %nyx_string* %5604, %nyx_string** %5605
  %5606 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %5607 = getelementptr [1 x i8], [1 x i8]* @.str826, i32 0, i32 0
  %5608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %5607, i64 0)
  %5609 = call i1 @nyx_string_equals(%nyx_string* %5606, %nyx_string* %5608)
  %5610 = xor i1 %5609, true
  br i1 %5610, label %then849, label %else850
then849:
  %5611 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %5611, %nyx_string** %5605
  br label %merge851
else850:
  br label %merge851
merge851:
  %5612 = load %nyx_string*, %nyx_string** %5605
  %5613 = call i8* @nyx_string_to_cstr(%nyx_string* %5612)
  %5614 = call i1 @nyx_file_exists(i8* %5613)
  %5615 = xor i1 %5614, true
  br i1 %5615, label %then852, label %else853
then852:
  %5616 = getelementptr [18 x i8], [18 x i8]* @.str827, i32 0, i32 0
  %5617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %5616, i64 17)
  %5618 = load %nyx_string*, %nyx_string** %5605
  %5619 = call %nyx_string* @nyx_string_concat(%nyx_string* %5617, %nyx_string* %5618)
  %5620 = getelementptr [57 x i8], [57 x i8]* @.str828, i32 0, i32 0
  %5621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %5620, i64 56)
  %5622 = call %nyx_string* @nyx_string_concat(%nyx_string* %5619, %nyx_string* %5621)
  %5623 = call i8* @nyx_string_to_cstr(%nyx_string* %5622)
  call void @nyx_print_string(i8* %5623)
  ret i1 0
else853:
  br label %merge854
merge854:
  %5624 = load %nyx_string*, %nyx_string** %5605
  %5625 = call i8* @nyx_string_to_cstr(%nyx_string* %5624)
  %5626 = call %nyx_string* @nyx_read_file(i8* %5625)
  %5627 = alloca %nyx_string*
  store %nyx_string* %5626, %nyx_string** %5627
  %5628 = load %nyx_string*, %nyx_string** %5627
  %5629 = call i64 @nyx_string_byte_length(%nyx_string* %5628)
  %5630 = icmp slt i64 %5629, 40
  br i1 %5630, label %then855, label %else856
then855:
  %5631 = getelementptr [66 x i8], [66 x i8]* @.str829, i32 0, i32 0
  %5632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %5631, i64 65)
  %5633 = call i8* @nyx_string_to_cstr(%nyx_string* %5632)
  call void @nyx_print_string(i8* %5633)
  ret i1 0
else856:
  br label %merge857
merge857:
  %5634 = getelementptr [1 x i8], [1 x i8]* @.str830, i32 0, i32 0
  %5635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %5634, i64 0)
  %5636 = alloca %nyx_string*
  store %nyx_string* %5635, %nyx_string** %5636
  %5637 = getelementptr [5 x i8], [5 x i8]* @.str831, i32 0, i32 0
  %5638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %5637, i64 4)
  %5639 = call i8* @nyx_string_to_cstr(%nyx_string* %5638)
  %5640 = call %nyx_string* @nyx_getenv(i8* %5639)
  %5641 = alloca %nyx_string*
  store %nyx_string* %5640, %nyx_string** %5641
  %5642 = load %nyx_string*, %nyx_string** %5641
  %5643 = getelementptr [1 x i8], [1 x i8]* @.str832, i32 0, i32 0
  %5644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %5643, i64 0)
  %5645 = call i1 @nyx_string_equals(%nyx_string* %5642, %nyx_string* %5644)
  %5646 = xor i1 %5645, true
  br i1 %5646, label %then858, label %else859
then858:
  %5647 = load %nyx_string*, %nyx_string** %5641
  %5648 = getelementptr [15 x i8], [15 x i8]* @.str833, i32 0, i32 0
  %5649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %5648, i64 14)
  %5650 = call %nyx_string* @nyx_string_concat(%nyx_string* %5647, %nyx_string* %5649)
  %5651 = call i8* @nyx_string_to_cstr(%nyx_string* %5650)
  %5652 = call i1 @nyx_file_exists(i8* %5651)
  br i1 %5652, label %then861, label %else862
then861:
  %5653 = load %nyx_string*, %nyx_string** %5641
  %5654 = getelementptr [15 x i8], [15 x i8]* @.str834, i32 0, i32 0
  %5655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %5654, i64 14)
  %5656 = call %nyx_string* @nyx_string_concat(%nyx_string* %5653, %nyx_string* %5655)
  %5657 = call i8* @nyx_string_to_cstr(%nyx_string* %5656)
  %5658 = call %nyx_string* @nyx_read_file(i8* %5657)
  %5659 = alloca %nyx_string*
  store %nyx_string* %5658, %nyx_string** %5659
  %5660 = load %nyx_string*, %nyx_string** %5659
  %5661 = call %nyx_string* @nyx_string_trim(%nyx_string* %5660)
  store %nyx_string* %5661, %nyx_string** %5636
  br label %merge863
else862:
  br label %merge863
merge863:
  br label %merge860
else859:
  br label %merge860
merge860:
  %5662 = load %nyx_string*, %nyx_string** %5636
  %5663 = getelementptr [1 x i8], [1 x i8]* @.str835, i32 0, i32 0
  %5664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %5663, i64 0)
  %5665 = call i1 @nyx_string_equals(%nyx_string* %5662, %nyx_string* %5664)
  br i1 %5665, label %then864, label %else865
then864:
  %5666 = getelementptr [77 x i8], [77 x i8]* @.str836, i32 0, i32 0
  %5667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %5666, i64 76)
  %5668 = call i8* @nyx_string_to_cstr(%nyx_string* %5667)
  call void @nyx_print_string(i8* %5668)
  br label %merge866
else865:
  br label %merge866
merge866:
  %5669 = getelementptr [10 x i8], [10 x i8]* @.str837, i32 0, i32 0
  %5670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %5669, i64 9)
  %5671 = load %nyx_string*, %nyx_string** %5636
  %5672 = call i64 @kv_connect_auth(%nyx_string* %5670, i64 6380, %nyx_string* %5671)
  %5673 = alloca i64
  store i64 %5672, i64* %5673
  %5674 = load i64, i64* %5673
  %5675 = icmp slt i64 %5674, 0
  br i1 %5675, label %then867, label %else868
then867:
  %5676 = getelementptr [54 x i8], [54 x i8]* @.str838, i32 0, i32 0
  %5677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %5676, i64 53)
  %5678 = call i8* @nyx_string_to_cstr(%nyx_string* %5677)
  call void @nyx_print_string(i8* %5678)
  %5679 = getelementptr [22 x i8], [22 x i8]* @.str839, i32 0, i32 0
  %5680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %5679, i64 21)
  %5681 = load %nyx_string*, %nyx_string** %5605
  %5682 = call %nyx_string* @nyx_string_concat(%nyx_string* %5680, %nyx_string* %5681)
  %5683 = getelementptr [28 x i8], [28 x i8]* @.str840, i32 0, i32 0
  %5684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %5683, i64 27)
  %5685 = call %nyx_string* @nyx_string_concat(%nyx_string* %5682, %nyx_string* %5684)
  %5686 = call i8* @nyx_string_to_cstr(%nyx_string* %5685)
  call void @nyx_print_string(i8* %5686)
  %5687 = getelementptr [44 x i8], [44 x i8]* @.str841, i32 0, i32 0
  %5688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %5687, i64 43)
  %5689 = call i8* @nyx_string_to_cstr(%nyx_string* %5688)
  call void @nyx_print_string(i8* %5689)
  ret i1 0
else868:
  br label %merge869
merge869:
  %5690 = getelementptr [5 x i8], [5 x i8]* @.str842, i32 0, i32 0
  %5691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %5690, i64 4)
  %5692 = load %nyx_string*, %nyx_string** %5627
  %5693 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %5692)
  %5694 = call %nyx_string* @nyx_string_concat(%nyx_string* %5691, %nyx_string* %5693)
  %5695 = alloca %nyx_string*
  store %nyx_string* %5694, %nyx_string** %5695
  %5696 = load i64, i64* %5673
  %5697 = getelementptr [11 x i8], [11 x i8]* @.str843, i32 0, i32 0
  %5698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %5697, i64 10)
  %5699 = load %nyx_string*, %nyx_string** %5695
  %5700 = call i64 @kv_rpush(i64 %5696, %nyx_string* %5698, %nyx_string* %5699)
  %5701 = alloca i64
  store i64 %5700, i64* %5701
  %5702 = load i64, i64* %5673
  %5703 = call i64 @kv_close(i64 %5702)
  %5704 = load i64, i64* %5701
  %5705 = icmp sle i64 %5704, 0
  br i1 %5705, label %then870, label %else871
then870:
  %5706 = getelementptr [37 x i8], [37 x i8]* @.str844, i32 0, i32 0
  %5707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %5706, i64 36)
  %5708 = call i8* @nyx_string_to_cstr(%nyx_string* %5707)
  call void @nyx_print_string(i8* %5708)
  ret i1 0
else871:
  br label %merge872
merge872:
  %5709 = getelementptr [55 x i8], [55 x i8]* @.str845, i32 0, i32 0
  %5710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %5709, i64 54)
  %5711 = load i64, i64* %5701
  %5712 = call %nyx_string* @nyx_string_from_int(i64 %5711)
  %5713 = call %nyx_string* @nyx_string_concat(%nyx_string* %5710, %nyx_string* %5712)
  %5714 = getelementptr [15 x i8], [15 x i8]* @.str846, i32 0, i32 0
  %5715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %5714, i64 14)
  %5716 = call %nyx_string* @nyx_string_concat(%nyx_string* %5713, %nyx_string* %5715)
  %5717 = call i8* @nyx_string_to_cstr(%nyx_string* %5716)
  call void @nyx_print_string(i8* %5717)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %5718 = getelementptr [9 x i8], [9 x i8]* @.str847, i32 0, i32 0
  %5719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %5718, i64 8)
  %5720 = call i8* @nyx_string_to_cstr(%nyx_string* %5719)
  %5721 = call %nyx_string* @nyx_getenv(i8* %5720)
  %5722 = alloca %nyx_string*
  store %nyx_string* %5721, %nyx_string** %5722
  %5723 = load %nyx_string*, %nyx_string** %5722
  %5724 = getelementptr [1 x i8], [1 x i8]* @.str848, i32 0, i32 0
  %5725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %5724, i64 0)
  %5726 = call i1 @nyx_string_equals(%nyx_string* %5723, %nyx_string* %5725)
  br i1 %5726, label %then873, label %else874
then873:
  %5727 = getelementptr [5 x i8], [5 x i8]* @.str849, i32 0, i32 0
  %5728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %5727, i64 4)
  %5729 = call i8* @nyx_string_to_cstr(%nyx_string* %5728)
  %5730 = call %nyx_string* @nyx_getenv(i8* %5729)
  %5731 = alloca %nyx_string*
  store %nyx_string* %5730, %nyx_string** %5731
  %5732 = load %nyx_string*, %nyx_string** %5731
  %5733 = getelementptr [6 x i8], [6 x i8]* @.str850, i32 0, i32 0
  %5734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %5733, i64 5)
  %5735 = call %nyx_string* @nyx_string_concat(%nyx_string* %5732, %nyx_string* %5734)
  %5736 = alloca %nyx_string*
  store %nyx_string* %5735, %nyx_string** %5736
  %5737 = alloca i1
  store i1 false, i1* %5737
  %5738 = load %nyx_string*, %nyx_string** %5731
  %5739 = getelementptr [1 x i8], [1 x i8]* @.str851, i32 0, i32 0
  %5740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %5739, i64 0)
  %5741 = call i1 @nyx_string_equals(%nyx_string* %5738, %nyx_string* %5740)
  %5742 = xor i1 %5741, true
  br i1 %5742, label %sc_and_rhs876, label %sc_and_end877
sc_and_rhs876:
  %5743 = load %nyx_string*, %nyx_string** %5736
  %5744 = getelementptr [5 x i8], [5 x i8]* @.str852, i32 0, i32 0
  %5745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %5744, i64 4)
  %5746 = call %nyx_string* @nyx_string_concat(%nyx_string* %5743, %nyx_string* %5745)
  %5747 = call i8* @nyx_string_to_cstr(%nyx_string* %5746)
  %5748 = call i1 @nyx_file_exists(i8* %5747)
  store i1 %5748, i1* %5737
  br label %sc_and_end877
sc_and_end877:
  %5749 = load i1, i1* %5737
  br i1 %5749, label %then878, label %else879
then878:
  %5750 = load %nyx_string*, %nyx_string** %5736
  store %nyx_string* %5750, %nyx_string** %5722
  br label %merge880
else879:
  br label %merge880
merge880:
  br label %merge875
else874:
  br label %merge875
merge875:
  %5751 = load %nyx_string*, %nyx_string** %5722
  %5752 = getelementptr [1 x i8], [1 x i8]* @.str853, i32 0, i32 0
  %5753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %5752, i64 0)
  %5754 = call i1 @nyx_string_equals(%nyx_string* %5751, %nyx_string* %5753)
  br i1 %5754, label %then881, label %else882
then881:
  %5755 = getelementptr [4 x i8], [4 x i8]* @.str854, i32 0, i32 0
  %5756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %5755, i64 3)
  %5757 = call i8* @nyx_string_to_cstr(%nyx_string* %5756)
  %5758 = call i1 @nyx_file_exists(i8* %5757)
  br i1 %5758, label %then884, label %else885
then884:
  %5759 = getelementptr [2 x i8], [2 x i8]* @.str855, i32 0, i32 0
  %5760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %5759, i64 1)
  store %nyx_string* %5760, %nyx_string** %5722
  br label %merge886
else885:
  br label %merge886
merge886:
  br label %merge883
else882:
  br label %merge883
merge883:
  %5761 = load %nyx_string*, %nyx_string** %5722
  %5762 = getelementptr [1 x i8], [1 x i8]* @.str856, i32 0, i32 0
  %5763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %5762, i64 0)
  %5764 = call i1 @nyx_string_equals(%nyx_string* %5761, %nyx_string* %5763)
  br i1 %5764, label %then887, label %else888
then887:
  %5765 = getelementptr [1 x i8], [1 x i8]* @.str857, i32 0, i32 0
  %5766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %5765, i64 0)
  ret %nyx_string* %5766
else888:
  br label %merge889
merge889:
  %5767 = load %nyx_string*, %nyx_string** %5722
  %5768 = getelementptr [5 x i8], [5 x i8]* @.str858, i32 0, i32 0
  %5769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %5768, i64 4)
  %5770 = call %nyx_string* @nyx_string_concat(%nyx_string* %5767, %nyx_string* %5769)
  ret %nyx_string* %5770
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %5771 = alloca i1
  store i1 true, i1* %5771
  %5772 = alloca i1
  store i1 true, i1* %5772
  %5773 = alloca i1
  store i1 true, i1* %5773
  %5774 = load %nyx_string*, %nyx_string** %name.ptr
  %5775 = getelementptr [5 x i8], [5 x i8]* @.str859, i32 0, i32 0
  %5776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %5775, i64 4)
  %5777 = call i1 @nyx_string_equals(%nyx_string* %5774, %nyx_string* %5776)
  br i1 %5777, label %sc_or_end891, label %sc_or_rhs890
sc_or_rhs890:
  %5778 = load %nyx_string*, %nyx_string** %name.ptr
  %5779 = getelementptr [4 x i8], [4 x i8]* @.str860, i32 0, i32 0
  %5780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %5779, i64 3)
  %5781 = call i1 @nyx_string_equals(%nyx_string* %5778, %nyx_string* %5780)
  store i1 %5781, i1* %5773
  br label %sc_or_end891
sc_or_end891:
  %5782 = load i1, i1* %5773
  br i1 %5782, label %sc_or_end893, label %sc_or_rhs892
sc_or_rhs892:
  %5783 = load %nyx_string*, %nyx_string** %name.ptr
  %5784 = getelementptr [10 x i8], [10 x i8]* @.str861, i32 0, i32 0
  %5785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %5784, i64 9)
  %5786 = call i1 @nyx_string_equals(%nyx_string* %5783, %nyx_string* %5785)
  store i1 %5786, i1* %5772
  br label %sc_or_end893
sc_or_end893:
  %5787 = load i1, i1* %5772
  br i1 %5787, label %sc_or_end895, label %sc_or_rhs894
sc_or_rhs894:
  %5788 = load %nyx_string*, %nyx_string** %name.ptr
  %5789 = getelementptr [7 x i8], [7 x i8]* @.str862, i32 0, i32 0
  %5790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %5789, i64 6)
  %5791 = call i1 @nyx_string_equals(%nyx_string* %5788, %nyx_string* %5790)
  store i1 %5791, i1* %5771
  br label %sc_or_end895
sc_or_end895:
  %5792 = load i1, i1* %5771
  br i1 %5792, label %then896, label %else897
then896:
  %5793 = getelementptr [11 x i8], [11 x i8]* @.str863, i32 0, i32 0
  %5794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %5793, i64 10)
  ret %nyx_string* %5794
else897:
  br label %merge898
merge898:
  %5795 = alloca i1
  store i1 true, i1* %5795
  %5796 = alloca i1
  store i1 true, i1* %5796
  %5797 = load %nyx_string*, %nyx_string** %name.ptr
  %5798 = getelementptr [7 x i8], [7 x i8]* @.str864, i32 0, i32 0
  %5799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %5798, i64 6)
  %5800 = call i1 @nyx_string_equals(%nyx_string* %5797, %nyx_string* %5799)
  br i1 %5800, label %sc_or_end900, label %sc_or_rhs899
sc_or_rhs899:
  %5801 = load %nyx_string*, %nyx_string** %name.ptr
  %5802 = getelementptr [3 x i8], [3 x i8]* @.str865, i32 0, i32 0
  %5803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %5802, i64 2)
  %5804 = call i1 @nyx_string_equals(%nyx_string* %5801, %nyx_string* %5803)
  store i1 %5804, i1* %5796
  br label %sc_or_end900
sc_or_end900:
  %5805 = load i1, i1* %5796
  br i1 %5805, label %sc_or_end902, label %sc_or_rhs901
sc_or_rhs901:
  %5806 = load %nyx_string*, %nyx_string** %name.ptr
  %5807 = getelementptr [9 x i8], [9 x i8]* @.str866, i32 0, i32 0
  %5808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %5807, i64 8)
  %5809 = call i1 @nyx_string_equals(%nyx_string* %5806, %nyx_string* %5808)
  store i1 %5809, i1* %5795
  br label %sc_or_end902
sc_or_end902:
  %5810 = load i1, i1* %5795
  br i1 %5810, label %then903, label %else904
then903:
  %5811 = getelementptr [20 x i8], [20 x i8]* @.str867, i32 0, i32 0
  %5812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %5811, i64 19)
  ret %nyx_string* %5812
else904:
  br label %merge905
merge905:
  %5813 = alloca i1
  store i1 true, i1* %5813
  %5814 = alloca i1
  store i1 true, i1* %5814
  %5815 = alloca i1
  store i1 true, i1* %5815
  %5816 = alloca i1
  store i1 true, i1* %5816
  %5817 = alloca i1
  store i1 true, i1* %5817
  %5818 = load %nyx_string*, %nyx_string** %name.ptr
  %5819 = getelementptr [5 x i8], [5 x i8]* @.str868, i32 0, i32 0
  %5820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %5819, i64 4)
  %5821 = call i1 @nyx_string_equals(%nyx_string* %5818, %nyx_string* %5820)
  br i1 %5821, label %sc_or_end907, label %sc_or_rhs906
sc_or_rhs906:
  %5822 = load %nyx_string*, %nyx_string** %name.ptr
  %5823 = getelementptr [8 x i8], [8 x i8]* @.str869, i32 0, i32 0
  %5824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %5823, i64 7)
  %5825 = call i1 @nyx_string_equals(%nyx_string* %5822, %nyx_string* %5824)
  store i1 %5825, i1* %5817
  br label %sc_or_end907
sc_or_end907:
  %5826 = load i1, i1* %5817
  br i1 %5826, label %sc_or_end909, label %sc_or_rhs908
sc_or_rhs908:
  %5827 = load %nyx_string*, %nyx_string** %name.ptr
  %5828 = getelementptr [5 x i8], [5 x i8]* @.str870, i32 0, i32 0
  %5829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %5828, i64 4)
  %5830 = call i1 @nyx_string_equals(%nyx_string* %5827, %nyx_string* %5829)
  store i1 %5830, i1* %5816
  br label %sc_or_end909
sc_or_end909:
  %5831 = load i1, i1* %5816
  br i1 %5831, label %sc_or_end911, label %sc_or_rhs910
sc_or_rhs910:
  %5832 = load %nyx_string*, %nyx_string** %name.ptr
  %5833 = getelementptr [4 x i8], [4 x i8]* @.str871, i32 0, i32 0
  %5834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %5833, i64 3)
  %5835 = call i1 @nyx_string_equals(%nyx_string* %5832, %nyx_string* %5834)
  store i1 %5835, i1* %5815
  br label %sc_or_end911
sc_or_end911:
  %5836 = load i1, i1* %5815
  br i1 %5836, label %sc_or_end913, label %sc_or_rhs912
sc_or_rhs912:
  %5837 = load %nyx_string*, %nyx_string** %name.ptr
  %5838 = getelementptr [7 x i8], [7 x i8]* @.str872, i32 0, i32 0
  %5839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %5838, i64 6)
  %5840 = call i1 @nyx_string_equals(%nyx_string* %5837, %nyx_string* %5839)
  store i1 %5840, i1* %5814
  br label %sc_or_end913
sc_or_end913:
  %5841 = load i1, i1* %5814
  br i1 %5841, label %sc_or_end915, label %sc_or_rhs914
sc_or_rhs914:
  %5842 = load %nyx_string*, %nyx_string** %name.ptr
  %5843 = getelementptr [9 x i8], [9 x i8]* @.str873, i32 0, i32 0
  %5844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %5843, i64 8)
  %5845 = call i1 @nyx_string_equals(%nyx_string* %5842, %nyx_string* %5844)
  store i1 %5845, i1* %5813
  br label %sc_or_end915
sc_or_end915:
  %5846 = load i1, i1* %5813
  br i1 %5846, label %then916, label %else917
then916:
  %5847 = getelementptr [23 x i8], [23 x i8]* @.str874, i32 0, i32 0
  %5848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %5847, i64 22)
  ret %nyx_string* %5848
else917:
  br label %merge918
merge918:
  %5849 = alloca i1
  store i1 true, i1* %5849
  %5850 = alloca i1
  store i1 true, i1* %5850
  %5851 = alloca i1
  store i1 true, i1* %5851
  %5852 = load %nyx_string*, %nyx_string** %name.ptr
  %5853 = getelementptr [3 x i8], [3 x i8]* @.str875, i32 0, i32 0
  %5854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %5853, i64 2)
  %5855 = call i1 @nyx_string_equals(%nyx_string* %5852, %nyx_string* %5854)
  br i1 %5855, label %sc_or_end920, label %sc_or_rhs919
sc_or_rhs919:
  %5856 = load %nyx_string*, %nyx_string** %name.ptr
  %5857 = getelementptr [5 x i8], [5 x i8]* @.str876, i32 0, i32 0
  %5858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %5857, i64 4)
  %5859 = call i1 @nyx_string_equals(%nyx_string* %5856, %nyx_string* %5858)
  store i1 %5859, i1* %5851
  br label %sc_or_end920
sc_or_end920:
  %5860 = load i1, i1* %5851
  br i1 %5860, label %sc_or_end922, label %sc_or_rhs921
sc_or_rhs921:
  %5861 = load %nyx_string*, %nyx_string** %name.ptr
  %5862 = getelementptr [3 x i8], [3 x i8]* @.str877, i32 0, i32 0
  %5863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %5862, i64 2)
  %5864 = call i1 @nyx_string_equals(%nyx_string* %5861, %nyx_string* %5863)
  store i1 %5864, i1* %5850
  br label %sc_or_end922
sc_or_end922:
  %5865 = load i1, i1* %5850
  br i1 %5865, label %sc_or_end924, label %sc_or_rhs923
sc_or_rhs923:
  %5866 = load %nyx_string*, %nyx_string** %name.ptr
  %5867 = getelementptr [5 x i8], [5 x i8]* @.str878, i32 0, i32 0
  %5868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %5867, i64 4)
  %5869 = call i1 @nyx_string_equals(%nyx_string* %5866, %nyx_string* %5868)
  store i1 %5869, i1* %5849
  br label %sc_or_end924
sc_or_end924:
  %5870 = load i1, i1* %5849
  br i1 %5870, label %then925, label %else926
then925:
  %5871 = getelementptr [15 x i8], [15 x i8]* @.str879, i32 0, i32 0
  %5872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %5871, i64 14)
  ret %nyx_string* %5872
else926:
  br label %merge927
merge927:
  %5873 = alloca i1
  store i1 true, i1* %5873
  %5874 = alloca i1
  store i1 true, i1* %5874
  %5875 = alloca i1
  store i1 true, i1* %5875
  %5876 = alloca i1
  store i1 true, i1* %5876
  %5877 = alloca i1
  store i1 true, i1* %5877
  %5878 = alloca i1
  store i1 true, i1* %5878
  %5879 = load %nyx_string*, %nyx_string** %name.ptr
  %5880 = getelementptr [4 x i8], [4 x i8]* @.str880, i32 0, i32 0
  %5881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %5880, i64 3)
  %5882 = call i1 @nyx_string_equals(%nyx_string* %5879, %nyx_string* %5881)
  br i1 %5882, label %sc_or_end929, label %sc_or_rhs928
sc_or_rhs928:
  %5883 = load %nyx_string*, %nyx_string** %name.ptr
  %5884 = getelementptr [4 x i8], [4 x i8]* @.str881, i32 0, i32 0
  %5885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %5884, i64 3)
  %5886 = call i1 @nyx_string_equals(%nyx_string* %5883, %nyx_string* %5885)
  store i1 %5886, i1* %5878
  br label %sc_or_end929
sc_or_end929:
  %5887 = load i1, i1* %5878
  br i1 %5887, label %sc_or_end931, label %sc_or_rhs930
sc_or_rhs930:
  %5888 = load %nyx_string*, %nyx_string** %name.ptr
  %5889 = getelementptr [4 x i8], [4 x i8]* @.str882, i32 0, i32 0
  %5890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %5889, i64 3)
  %5891 = call i1 @nyx_string_equals(%nyx_string* %5888, %nyx_string* %5890)
  store i1 %5891, i1* %5877
  br label %sc_or_end931
sc_or_end931:
  %5892 = load i1, i1* %5877
  br i1 %5892, label %sc_or_end933, label %sc_or_rhs932
sc_or_rhs932:
  %5893 = load %nyx_string*, %nyx_string** %name.ptr
  %5894 = getelementptr [6 x i8], [6 x i8]* @.str883, i32 0, i32 0
  %5895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %5894, i64 5)
  %5896 = call i1 @nyx_string_equals(%nyx_string* %5893, %nyx_string* %5895)
  store i1 %5896, i1* %5876
  br label %sc_or_end933
sc_or_end933:
  %5897 = load i1, i1* %5876
  br i1 %5897, label %sc_or_end935, label %sc_or_rhs934
sc_or_rhs934:
  %5898 = load %nyx_string*, %nyx_string** %name.ptr
  %5899 = getelementptr [4 x i8], [4 x i8]* @.str884, i32 0, i32 0
  %5900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %5899, i64 3)
  %5901 = call i1 @nyx_string_equals(%nyx_string* %5898, %nyx_string* %5900)
  store i1 %5901, i1* %5875
  br label %sc_or_end935
sc_or_end935:
  %5902 = load i1, i1* %5875
  br i1 %5902, label %sc_or_end937, label %sc_or_rhs936
sc_or_rhs936:
  %5903 = load %nyx_string*, %nyx_string** %name.ptr
  %5904 = getelementptr [4 x i8], [4 x i8]* @.str885, i32 0, i32 0
  %5905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %5904, i64 3)
  %5906 = call i1 @nyx_string_equals(%nyx_string* %5903, %nyx_string* %5905)
  store i1 %5906, i1* %5874
  br label %sc_or_end937
sc_or_end937:
  %5907 = load i1, i1* %5874
  br i1 %5907, label %sc_or_end939, label %sc_or_rhs938
sc_or_rhs938:
  %5908 = load %nyx_string*, %nyx_string** %name.ptr
  %5909 = getelementptr [5 x i8], [5 x i8]* @.str886, i32 0, i32 0
  %5910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %5909, i64 4)
  %5911 = call i1 @nyx_string_equals(%nyx_string* %5908, %nyx_string* %5910)
  store i1 %5911, i1* %5873
  br label %sc_or_end939
sc_or_end939:
  %5912 = load i1, i1* %5873
  br i1 %5912, label %then940, label %else941
then940:
  %5913 = getelementptr [4 x i8], [4 x i8]* @.str887, i32 0, i32 0
  %5914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %5913, i64 3)
  ret %nyx_string* %5914
else941:
  br label %merge942
merge942:
  %5915 = alloca i1
  store i1 true, i1* %5915
  %5916 = alloca i1
  store i1 true, i1* %5916
  %5917 = alloca i1
  store i1 true, i1* %5917
  %5918 = alloca i1
  store i1 true, i1* %5918
  %5919 = load %nyx_string*, %nyx_string** %name.ptr
  %5920 = getelementptr [7 x i8], [7 x i8]* @.str888, i32 0, i32 0
  %5921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %5920, i64 6)
  %5922 = call i1 @nyx_string_equals(%nyx_string* %5919, %nyx_string* %5921)
  br i1 %5922, label %sc_or_end944, label %sc_or_rhs943
sc_or_rhs943:
  %5923 = load %nyx_string*, %nyx_string** %name.ptr
  %5924 = getelementptr [8 x i8], [8 x i8]* @.str889, i32 0, i32 0
  %5925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %5924, i64 7)
  %5926 = call i1 @nyx_string_equals(%nyx_string* %5923, %nyx_string* %5925)
  store i1 %5926, i1* %5918
  br label %sc_or_end944
sc_or_end944:
  %5927 = load i1, i1* %5918
  br i1 %5927, label %sc_or_end946, label %sc_or_rhs945
sc_or_rhs945:
  %5928 = load %nyx_string*, %nyx_string** %name.ptr
  %5929 = getelementptr [10 x i8], [10 x i8]* @.str890, i32 0, i32 0
  %5930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %5929, i64 9)
  %5931 = call i1 @nyx_string_equals(%nyx_string* %5928, %nyx_string* %5930)
  store i1 %5931, i1* %5917
  br label %sc_or_end946
sc_or_end946:
  %5932 = load i1, i1* %5917
  br i1 %5932, label %sc_or_end948, label %sc_or_rhs947
sc_or_rhs947:
  %5933 = load %nyx_string*, %nyx_string** %name.ptr
  %5934 = getelementptr [5 x i8], [5 x i8]* @.str891, i32 0, i32 0
  %5935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %5934, i64 4)
  %5936 = call i1 @nyx_string_equals(%nyx_string* %5933, %nyx_string* %5935)
  store i1 %5936, i1* %5916
  br label %sc_or_end948
sc_or_end948:
  %5937 = load i1, i1* %5916
  br i1 %5937, label %sc_or_end950, label %sc_or_rhs949
sc_or_rhs949:
  %5938 = load %nyx_string*, %nyx_string** %name.ptr
  %5939 = getelementptr [6 x i8], [6 x i8]* @.str892, i32 0, i32 0
  %5940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %5939, i64 5)
  %5941 = call i1 @nyx_string_equals(%nyx_string* %5938, %nyx_string* %5940)
  store i1 %5941, i1* %5915
  br label %sc_or_end950
sc_or_end950:
  %5942 = load i1, i1* %5915
  br i1 %5942, label %then951, label %else952
then951:
  %5943 = getelementptr [13 x i8], [13 x i8]* @.str893, i32 0, i32 0
  %5944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %5943, i64 12)
  ret %nyx_string* %5944
else952:
  br label %merge953
merge953:
  %5945 = alloca i1
  store i1 true, i1* %5945
  %5946 = alloca i1
  store i1 true, i1* %5946
  %5947 = alloca i1
  store i1 true, i1* %5947
  %5948 = alloca i1
  store i1 true, i1* %5948
  %5949 = load %nyx_string*, %nyx_string** %name.ptr
  %5950 = getelementptr [7 x i8], [7 x i8]* @.str894, i32 0, i32 0
  %5951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %5950, i64 6)
  %5952 = call i1 @nyx_string_equals(%nyx_string* %5949, %nyx_string* %5951)
  br i1 %5952, label %sc_or_end955, label %sc_or_rhs954
sc_or_rhs954:
  %5953 = load %nyx_string*, %nyx_string** %name.ptr
  %5954 = getelementptr [4 x i8], [4 x i8]* @.str895, i32 0, i32 0
  %5955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %5954, i64 3)
  %5956 = call i1 @nyx_string_equals(%nyx_string* %5953, %nyx_string* %5955)
  store i1 %5956, i1* %5948
  br label %sc_or_end955
sc_or_end955:
  %5957 = load i1, i1* %5948
  br i1 %5957, label %sc_or_end957, label %sc_or_rhs956
sc_or_rhs956:
  %5958 = load %nyx_string*, %nyx_string** %name.ptr
  %5959 = getelementptr [5 x i8], [5 x i8]* @.str896, i32 0, i32 0
  %5960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %5959, i64 4)
  %5961 = call i1 @nyx_string_equals(%nyx_string* %5958, %nyx_string* %5960)
  store i1 %5961, i1* %5947
  br label %sc_or_end957
sc_or_end957:
  %5962 = load i1, i1* %5947
  br i1 %5962, label %sc_or_end959, label %sc_or_rhs958
sc_or_rhs958:
  %5963 = load %nyx_string*, %nyx_string** %name.ptr
  %5964 = getelementptr [7 x i8], [7 x i8]* @.str897, i32 0, i32 0
  %5965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %5964, i64 6)
  %5966 = call i1 @nyx_string_equals(%nyx_string* %5963, %nyx_string* %5965)
  store i1 %5966, i1* %5946
  br label %sc_or_end959
sc_or_end959:
  %5967 = load i1, i1* %5946
  br i1 %5967, label %sc_or_end961, label %sc_or_rhs960
sc_or_rhs960:
  %5968 = load %nyx_string*, %nyx_string** %name.ptr
  %5969 = getelementptr [5 x i8], [5 x i8]* @.str898, i32 0, i32 0
  %5970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %5969, i64 4)
  %5971 = call i1 @nyx_string_equals(%nyx_string* %5968, %nyx_string* %5970)
  store i1 %5971, i1* %5945
  br label %sc_or_end961
sc_or_end961:
  %5972 = load i1, i1* %5945
  br i1 %5972, label %then962, label %else963
then962:
  %5973 = getelementptr [19 x i8], [19 x i8]* @.str899, i32 0, i32 0
  %5974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %5973, i64 18)
  ret %nyx_string* %5974
else963:
  br label %merge964
merge964:
  %5975 = alloca i1
  store i1 true, i1* %5975
  %5976 = load %nyx_string*, %nyx_string** %name.ptr
  %5977 = getelementptr [5 x i8], [5 x i8]* @.str900, i32 0, i32 0
  %5978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %5977, i64 4)
  %5979 = call i1 @nyx_string_equals(%nyx_string* %5976, %nyx_string* %5978)
  br i1 %5979, label %sc_or_end966, label %sc_or_rhs965
sc_or_rhs965:
  %5980 = load %nyx_string*, %nyx_string** %name.ptr
  %5981 = getelementptr [9 x i8], [9 x i8]* @.str901, i32 0, i32 0
  %5982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %5981, i64 8)
  %5983 = call i1 @nyx_string_equals(%nyx_string* %5980, %nyx_string* %5982)
  store i1 %5983, i1* %5975
  br label %sc_or_end966
sc_or_end966:
  %5984 = load i1, i1* %5975
  br i1 %5984, label %then967, label %else968
then967:
  %5985 = getelementptr [7 x i8], [7 x i8]* @.str902, i32 0, i32 0
  %5986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %5985, i64 6)
  ret %nyx_string* %5986
else968:
  br label %merge969
merge969:
  %5987 = alloca i1
  store i1 true, i1* %5987
  %5988 = alloca i1
  store i1 true, i1* %5988
  %5989 = alloca i1
  store i1 true, i1* %5989
  %5990 = load %nyx_string*, %nyx_string** %name.ptr
  %5991 = getelementptr [7 x i8], [7 x i8]* @.str903, i32 0, i32 0
  %5992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %5991, i64 6)
  %5993 = call i1 @nyx_string_equals(%nyx_string* %5990, %nyx_string* %5992)
  br i1 %5993, label %sc_or_end971, label %sc_or_rhs970
sc_or_rhs970:
  %5994 = load %nyx_string*, %nyx_string** %name.ptr
  %5995 = getelementptr [8 x i8], [8 x i8]* @.str904, i32 0, i32 0
  %5996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %5995, i64 7)
  %5997 = call i1 @nyx_string_equals(%nyx_string* %5994, %nyx_string* %5996)
  store i1 %5997, i1* %5989
  br label %sc_or_end971
sc_or_end971:
  %5998 = load i1, i1* %5989
  br i1 %5998, label %sc_or_end973, label %sc_or_rhs972
sc_or_rhs972:
  %5999 = load %nyx_string*, %nyx_string** %name.ptr
  %6000 = getelementptr [14 x i8], [14 x i8]* @.str905, i32 0, i32 0
  %6001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %6000, i64 13)
  %6002 = call i1 @nyx_string_equals(%nyx_string* %5999, %nyx_string* %6001)
  store i1 %6002, i1* %5988
  br label %sc_or_end973
sc_or_end973:
  %6003 = load i1, i1* %5988
  br i1 %6003, label %sc_or_end975, label %sc_or_rhs974
sc_or_rhs974:
  %6004 = load %nyx_string*, %nyx_string** %name.ptr
  %6005 = getelementptr [6 x i8], [6 x i8]* @.str906, i32 0, i32 0
  %6006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %6005, i64 5)
  %6007 = call i1 @nyx_string_equals(%nyx_string* %6004, %nyx_string* %6006)
  store i1 %6007, i1* %5987
  br label %sc_or_end975
sc_or_end975:
  %6008 = load i1, i1* %5987
  br i1 %6008, label %then976, label %else977
then976:
  %6009 = getelementptr [16 x i8], [16 x i8]* @.str907, i32 0, i32 0
  %6010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %6009, i64 15)
  ret %nyx_string* %6010
else977:
  br label %merge978
merge978:
  %6011 = alloca i1
  store i1 true, i1* %6011
  %6012 = alloca i1
  store i1 true, i1* %6012
  %6013 = alloca i1
  store i1 true, i1* %6013
  %6014 = alloca i1
  store i1 true, i1* %6014
  %6015 = alloca i1
  store i1 true, i1* %6015
  %6016 = alloca i1
  store i1 true, i1* %6016
  %6017 = alloca i1
  store i1 true, i1* %6017
  %6018 = load %nyx_string*, %nyx_string** %name.ptr
  %6019 = getelementptr [4 x i8], [4 x i8]* @.str908, i32 0, i32 0
  %6020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %6019, i64 3)
  %6021 = call i1 @nyx_string_equals(%nyx_string* %6018, %nyx_string* %6020)
  br i1 %6021, label %sc_or_end980, label %sc_or_rhs979
sc_or_rhs979:
  %6022 = load %nyx_string*, %nyx_string** %name.ptr
  %6023 = getelementptr [6 x i8], [6 x i8]* @.str909, i32 0, i32 0
  %6024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %6023, i64 5)
  %6025 = call i1 @nyx_string_equals(%nyx_string* %6022, %nyx_string* %6024)
  store i1 %6025, i1* %6017
  br label %sc_or_end980
sc_or_end980:
  %6026 = load i1, i1* %6017
  br i1 %6026, label %sc_or_end982, label %sc_or_rhs981
sc_or_rhs981:
  %6027 = load %nyx_string*, %nyx_string** %name.ptr
  %6028 = getelementptr [11 x i8], [11 x i8]* @.str910, i32 0, i32 0
  %6029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %6028, i64 10)
  %6030 = call i1 @nyx_string_equals(%nyx_string* %6027, %nyx_string* %6029)
  store i1 %6030, i1* %6016
  br label %sc_or_end982
sc_or_end982:
  %6031 = load i1, i1* %6016
  br i1 %6031, label %sc_or_end984, label %sc_or_rhs983
sc_or_rhs983:
  %6032 = load %nyx_string*, %nyx_string** %name.ptr
  %6033 = getelementptr [6 x i8], [6 x i8]* @.str911, i32 0, i32 0
  %6034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %6033, i64 5)
  %6035 = call i1 @nyx_string_equals(%nyx_string* %6032, %nyx_string* %6034)
  store i1 %6035, i1* %6015
  br label %sc_or_end984
sc_or_end984:
  %6036 = load i1, i1* %6015
  br i1 %6036, label %sc_or_end986, label %sc_or_rhs985
sc_or_rhs985:
  %6037 = load %nyx_string*, %nyx_string** %name.ptr
  %6038 = getelementptr [9 x i8], [9 x i8]* @.str912, i32 0, i32 0
  %6039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %6038, i64 8)
  %6040 = call i1 @nyx_string_equals(%nyx_string* %6037, %nyx_string* %6039)
  store i1 %6040, i1* %6014
  br label %sc_or_end986
sc_or_end986:
  %6041 = load i1, i1* %6014
  br i1 %6041, label %sc_or_end988, label %sc_or_rhs987
sc_or_rhs987:
  %6042 = load %nyx_string*, %nyx_string** %name.ptr
  %6043 = getelementptr [14 x i8], [14 x i8]* @.str913, i32 0, i32 0
  %6044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %6043, i64 13)
  %6045 = call i1 @nyx_string_equals(%nyx_string* %6042, %nyx_string* %6044)
  store i1 %6045, i1* %6013
  br label %sc_or_end988
sc_or_end988:
  %6046 = load i1, i1* %6013
  br i1 %6046, label %sc_or_end990, label %sc_or_rhs989
sc_or_rhs989:
  %6047 = load %nyx_string*, %nyx_string** %name.ptr
  %6048 = getelementptr [6 x i8], [6 x i8]* @.str914, i32 0, i32 0
  %6049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %6048, i64 5)
  %6050 = call i1 @nyx_string_equals(%nyx_string* %6047, %nyx_string* %6049)
  store i1 %6050, i1* %6012
  br label %sc_or_end990
sc_or_end990:
  %6051 = load i1, i1* %6012
  br i1 %6051, label %sc_or_end992, label %sc_or_rhs991
sc_or_rhs991:
  %6052 = load %nyx_string*, %nyx_string** %name.ptr
  %6053 = getelementptr [7 x i8], [7 x i8]* @.str915, i32 0, i32 0
  %6054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %6053, i64 6)
  %6055 = call i1 @nyx_string_equals(%nyx_string* %6052, %nyx_string* %6054)
  store i1 %6055, i1* %6011
  br label %sc_or_end992
sc_or_end992:
  %6056 = load i1, i1* %6011
  br i1 %6056, label %then993, label %else994
then993:
  %6057 = getelementptr [26 x i8], [26 x i8]* @.str916, i32 0, i32 0
  %6058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %6057, i64 25)
  ret %nyx_string* %6058
else994:
  br label %merge995
merge995:
  %6059 = alloca i1
  store i1 true, i1* %6059
  %6060 = alloca i1
  store i1 true, i1* %6060
  %6061 = alloca i1
  store i1 true, i1* %6061
  %6062 = load %nyx_string*, %nyx_string** %name.ptr
  %6063 = getelementptr [6 x i8], [6 x i8]* @.str917, i32 0, i32 0
  %6064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %6063, i64 5)
  %6065 = call i1 @nyx_string_equals(%nyx_string* %6062, %nyx_string* %6064)
  br i1 %6065, label %sc_or_end997, label %sc_or_rhs996
sc_or_rhs996:
  %6066 = load %nyx_string*, %nyx_string** %name.ptr
  %6067 = getelementptr [4 x i8], [4 x i8]* @.str918, i32 0, i32 0
  %6068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %6067, i64 3)
  %6069 = call i1 @nyx_string_equals(%nyx_string* %6066, %nyx_string* %6068)
  store i1 %6069, i1* %6061
  br label %sc_or_end997
sc_or_end997:
  %6070 = load i1, i1* %6061
  br i1 %6070, label %sc_or_end999, label %sc_or_rhs998
sc_or_rhs998:
  %6071 = load %nyx_string*, %nyx_string** %name.ptr
  %6072 = getelementptr [3 x i8], [3 x i8]* @.str919, i32 0, i32 0
  %6073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %6072, i64 2)
  %6074 = call i1 @nyx_string_equals(%nyx_string* %6071, %nyx_string* %6073)
  store i1 %6074, i1* %6060
  br label %sc_or_end999
sc_or_end999:
  %6075 = load i1, i1* %6060
  br i1 %6075, label %sc_or_end1001, label %sc_or_rhs1000
sc_or_rhs1000:
  %6076 = load %nyx_string*, %nyx_string** %name.ptr
  %6077 = getelementptr [10 x i8], [10 x i8]* @.str920, i32 0, i32 0
  %6078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %6077, i64 9)
  %6079 = call i1 @nyx_string_equals(%nyx_string* %6076, %nyx_string* %6078)
  store i1 %6079, i1* %6059
  br label %sc_or_end1001
sc_or_end1001:
  %6080 = load i1, i1* %6059
  br i1 %6080, label %then1002, label %else1003
then1002:
  %6081 = getelementptr [8 x i8], [8 x i8]* @.str921, i32 0, i32 0
  %6082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %6081, i64 7)
  ret %nyx_string* %6082
else1003:
  br label %merge1004
merge1004:
  %6083 = alloca i1
  store i1 true, i1* %6083
  %6084 = alloca i1
  store i1 true, i1* %6084
  %6085 = alloca i1
  store i1 true, i1* %6085
  %6086 = alloca i1
  store i1 true, i1* %6086
  %6087 = alloca i1
  store i1 true, i1* %6087
  %6088 = alloca i1
  store i1 true, i1* %6088
  %6089 = load %nyx_string*, %nyx_string** %name.ptr
  %6090 = getelementptr [5 x i8], [5 x i8]* @.str922, i32 0, i32 0
  %6091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %6090, i64 4)
  %6092 = call i1 @nyx_string_equals(%nyx_string* %6089, %nyx_string* %6091)
  br i1 %6092, label %sc_or_end1006, label %sc_or_rhs1005
sc_or_rhs1005:
  %6093 = load %nyx_string*, %nyx_string** %name.ptr
  %6094 = getelementptr [4 x i8], [4 x i8]* @.str923, i32 0, i32 0
  %6095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %6094, i64 3)
  %6096 = call i1 @nyx_string_equals(%nyx_string* %6093, %nyx_string* %6095)
  store i1 %6096, i1* %6088
  br label %sc_or_end1006
sc_or_end1006:
  %6097 = load i1, i1* %6088
  br i1 %6097, label %sc_or_end1008, label %sc_or_rhs1007
sc_or_rhs1007:
  %6098 = load %nyx_string*, %nyx_string** %name.ptr
  %6099 = getelementptr [4 x i8], [4 x i8]* @.str924, i32 0, i32 0
  %6100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %6099, i64 3)
  %6101 = call i1 @nyx_string_equals(%nyx_string* %6098, %nyx_string* %6100)
  store i1 %6101, i1* %6087
  br label %sc_or_end1008
sc_or_end1008:
  %6102 = load i1, i1* %6087
  br i1 %6102, label %sc_or_end1010, label %sc_or_rhs1009
sc_or_rhs1009:
  %6103 = load %nyx_string*, %nyx_string** %name.ptr
  %6104 = getelementptr [8 x i8], [8 x i8]* @.str925, i32 0, i32 0
  %6105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %6104, i64 7)
  %6106 = call i1 @nyx_string_equals(%nyx_string* %6103, %nyx_string* %6105)
  store i1 %6106, i1* %6086
  br label %sc_or_end1010
sc_or_end1010:
  %6107 = load i1, i1* %6086
  br i1 %6107, label %sc_or_end1012, label %sc_or_rhs1011
sc_or_rhs1011:
  %6108 = load %nyx_string*, %nyx_string** %name.ptr
  %6109 = getelementptr [7 x i8], [7 x i8]* @.str926, i32 0, i32 0
  %6110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %6109, i64 6)
  %6111 = call i1 @nyx_string_equals(%nyx_string* %6108, %nyx_string* %6110)
  store i1 %6111, i1* %6085
  br label %sc_or_end1012
sc_or_end1012:
  %6112 = load i1, i1* %6085
  br i1 %6112, label %sc_or_end1014, label %sc_or_rhs1013
sc_or_rhs1013:
  %6113 = load %nyx_string*, %nyx_string** %name.ptr
  %6114 = getelementptr [8 x i8], [8 x i8]* @.str927, i32 0, i32 0
  %6115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %6114, i64 7)
  %6116 = call i1 @nyx_string_equals(%nyx_string* %6113, %nyx_string* %6115)
  store i1 %6116, i1* %6084
  br label %sc_or_end1014
sc_or_end1014:
  %6117 = load i1, i1* %6084
  br i1 %6117, label %sc_or_end1016, label %sc_or_rhs1015
sc_or_rhs1015:
  %6118 = load %nyx_string*, %nyx_string** %name.ptr
  %6119 = getelementptr [11 x i8], [11 x i8]* @.str928, i32 0, i32 0
  %6120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %6119, i64 10)
  %6121 = call i1 @nyx_string_equals(%nyx_string* %6118, %nyx_string* %6120)
  store i1 %6121, i1* %6083
  br label %sc_or_end1016
sc_or_end1016:
  %6122 = load i1, i1* %6083
  br i1 %6122, label %then1017, label %else1018
then1017:
  %6123 = getelementptr [14 x i8], [14 x i8]* @.str929, i32 0, i32 0
  %6124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %6123, i64 13)
  ret %nyx_string* %6124
else1018:
  br label %merge1019
merge1019:
  %6125 = getelementptr [1 x i8], [1 x i8]* @.str930, i32 0, i32 0
  %6126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %6125, i64 0)
  ret %nyx_string* %6126
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %6127 = alloca i64
  store i64 0, i64* %6127
  %6128 = alloca i64
  store i64 0, i64* %6128
  %6129 = call i8* @llvm.stacksave()
  br label %while_cond1020
while_cond1020:
  %6130 = load i64, i64* %6128
  %6131 = load %nyx_string*, %nyx_string** %s.ptr
  %6132 = call i64 @nyx_string_byte_length(%nyx_string* %6131)
  %6133 = icmp slt i64 %6130, %6132
  br i1 %6133, label %while_body1021, label %while_end1022
while_body1021:
  call void @llvm.stackrestore(i8* %6129)
  %6134 = load %nyx_string*, %nyx_string** %s.ptr
  %6135 = load i64, i64* %6128
  %6136 = call i8 @nyx_string_char_at(%nyx_string* %6134, i64 %6135)
  %6137 = zext i8 %6136 to i64
  %6138 = trunc i64 %6137 to i8
  %6139 = alloca i8
  store i8 %6138, i8* %6139
  %6140 = load i8, i8* %6139
  %6141 = getelementptr [1 x i8], [1 x i8]* @.str931, i32 0, i32 0
  %6142 = load i8, i8* %6141
  %6143 = zext i8 %6142 to i64
  %6144 = zext i8 %6140 to i64
  %6145 = icmp eq i64 %6144, %6143
  br i1 %6145, label %then1023, label %else1024
then1023:
  %6146 = load i64, i64* %6127
  %6147 = add i64 %6146, 1
  store i64 %6147, i64* %6127
  br label %merge1025
else1024:
  br label %merge1025
merge1025:
  %6148 = load i8, i8* %6139
  %6149 = getelementptr [1 x i8], [1 x i8]* @.str932, i32 0, i32 0
  %6150 = load i8, i8* %6149
  %6151 = zext i8 %6150 to i64
  %6152 = zext i8 %6148 to i64
  %6153 = icmp eq i64 %6152, %6151
  br i1 %6153, label %then1026, label %else1027
then1026:
  %6154 = load i64, i64* %6127
  %6155 = sub i64 %6154, 1
  store i64 %6155, i64* %6127
  br label %merge1028
else1027:
  br label %merge1028
merge1028:
  %6156 = load i64, i64* %6128
  %6157 = add i64 %6156, 1
  store i64 %6157, i64* %6128
  br label %while_cond1020
while_end1022:
  %6158 = load i64, i64* %6127
  ret i64 %6158
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %6159 = load %nyx_string*, %nyx_string** %filename.ptr
  %6160 = load %nyx_string*, %nyx_string** %filename.ptr
  %6161 = call i64 @nyx_string_byte_length(%nyx_string* %6160)
  %6162 = sub i64 %6161, 3
  %6163 = call %nyx_string* @nyx_string_substring(%nyx_string* %6159, i64 0, i64 %6162)
  %6164 = alloca %nyx_string*
  store %nyx_string* %6163, %nyx_string** %6164
  %6165 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %6166 = getelementptr [2 x i8], [2 x i8]* @.str933, i32 0, i32 0
  %6167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %6166, i64 1)
  %6168 = call %nyx_string* @nyx_string_concat(%nyx_string* %6165, %nyx_string* %6167)
  %6169 = load %nyx_string*, %nyx_string** %filename.ptr
  %6170 = call %nyx_string* @nyx_string_concat(%nyx_string* %6168, %nyx_string* %6169)
  %6171 = call i8* @nyx_string_to_cstr(%nyx_string* %6170)
  %6172 = call %nyx_string* @nyx_read_file(i8* %6171)
  %6173 = alloca %nyx_string*
  store %nyx_string* %6172, %nyx_string** %6173
  %6174 = load %nyx_string*, %nyx_string** %6173
  %6175 = getelementptr [2 x i8], [2 x i8]* @.str934, i32 0, i32 0
  %6176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %6175, i64 1)
  %6177 = call { i64, i8* }* @nyx_string_split(%nyx_string* %6174, %nyx_string* %6176)
  %6178 = alloca { i64, i8* }*
  store { i64, i8* }* %6177, { i64, i8* }** %6178
  %6179 = getelementptr [1 x i8], [1 x i8]* @.str935, i32 0, i32 0
  %6180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %6179, i64 0)
  %6181 = alloca %nyx_string*
  store %nyx_string* %6180, %nyx_string** %6181
  %6182 = getelementptr [1 x i8], [1 x i8]* @.str936, i32 0, i32 0
  %6183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %6182, i64 0)
  %6184 = alloca %nyx_string*
  store %nyx_string* %6183, %nyx_string** %6184
  %6185 = alloca i64
  store i64 0, i64* %6185
  %6186 = alloca i64
  store i64 0, i64* %6186
  %6187 = getelementptr [4 x i8], [4 x i8]* @.str937, i32 0, i32 0
  %6188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %6187, i64 3)
  %6189 = alloca %nyx_string*
  store %nyx_string* %6188, %nyx_string** %6189
  %6190 = getelementptr [1 x i8], [1 x i8]* @.str938, i32 0, i32 0
  %6191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %6190, i64 0)
  %6192 = alloca %nyx_string*
  store %nyx_string* %6191, %nyx_string** %6192
  %6193 = getelementptr [2 x i8], [2 x i8]* @.str939, i32 0, i32 0
  %6194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %6193, i64 1)
  %6195 = alloca %nyx_string*
  store %nyx_string* %6194, %nyx_string** %6195
  %6196 = getelementptr [8 x i8], [8 x i8]* @.str940, i32 0, i32 0
  %6197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %6196, i64 7)
  %6198 = alloca %nyx_string*
  store %nyx_string* %6197, %nyx_string** %6198
  %6199 = getelementptr [11 x i8], [11 x i8]* @.str941, i32 0, i32 0
  %6200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %6199, i64 10)
  %6201 = alloca %nyx_string*
  store %nyx_string* %6200, %nyx_string** %6201
  %6202 = getelementptr [4 x i8], [4 x i8]* @.str942, i32 0, i32 0
  %6203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %6202, i64 3)
  %6204 = alloca %nyx_string*
  store %nyx_string* %6203, %nyx_string** %6204
  %6205 = getelementptr [2 x i8], [2 x i8]* @.str943, i32 0, i32 0
  %6206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %6205, i64 1)
  %6207 = alloca %nyx_string*
  store %nyx_string* %6206, %nyx_string** %6207
  %6208 = getelementptr [6 x i8], [6 x i8]* @.str944, i32 0, i32 0
  %6209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %6208, i64 5)
  %6210 = alloca %nyx_string*
  store %nyx_string* %6209, %nyx_string** %6210
  %6211 = getelementptr [2 x i8], [2 x i8]* @.str945, i32 0, i32 0
  %6212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %6211, i64 1)
  %6213 = alloca %nyx_string*
  store %nyx_string* %6212, %nyx_string** %6213
  %6214 = call i8* @llvm.stacksave()
  br label %while_cond1029
while_cond1029:
  %6215 = load i64, i64* %6186
  %6216 = load { i64, i8* }*, { i64, i8* }** %6178
  %6217 = call i64 @nyx_array_length({ i64, i8* }* %6216)
  %6218 = icmp slt i64 %6215, %6217
  br i1 %6218, label %while_body1030, label %while_end1031
while_body1030:
  call void @llvm.stackrestore(i8* %6214)
  %6219 = load { i64, i8* }*, { i64, i8* }** %6178
  %6220 = load i64, i64* %6186
  %6221 = call i64 @nyx_array_get_checked({ i64, i8* }* %6219, i64 %6220, i64 2)
  %6222 = inttoptr i64 %6221 to %nyx_string*
  %6223 = alloca %nyx_string*
  store %nyx_string* %6222, %nyx_string** %6223
  %6224 = load %nyx_string*, %nyx_string** %6223
  %6225 = call %nyx_string* @nyx_string_trim(%nyx_string* %6224)
  %6226 = alloca %nyx_string*
  store %nyx_string* %6225, %nyx_string** %6226
  %6227 = load %nyx_string*, %nyx_string** %6226
  %6228 = load %nyx_string*, %nyx_string** %6189
  %6229 = call i1 @nyx_string_starts_with(%nyx_string* %6227, %nyx_string* %6228)
  br i1 %6229, label %then1032, label %else1033
then1032:
  %6230 = load %nyx_string*, %nyx_string** %6226
  %6231 = load %nyx_string*, %nyx_string** %6226
  %6232 = call i64 @nyx_string_byte_length(%nyx_string* %6231)
  %6233 = call %nyx_string* @nyx_string_substring(%nyx_string* %6230, i64 3, i64 %6232)
  %6234 = alloca %nyx_string*
  store %nyx_string* %6233, %nyx_string** %6234
  %6235 = load %nyx_string*, %nyx_string** %6234
  %6236 = call %nyx_string* @nyx_string_trim(%nyx_string* %6235)
  %6237 = alloca %nyx_string*
  store %nyx_string* %6236, %nyx_string** %6237
  %6238 = load %nyx_string*, %nyx_string** %6184
  %6239 = load %nyx_string*, %nyx_string** %6192
  %6240 = call i1 @nyx_string_equals(%nyx_string* %6238, %nyx_string* %6239)
  br i1 %6240, label %then1035, label %else1036
then1035:
  %6241 = load %nyx_string*, %nyx_string** %6237
  store %nyx_string* %6241, %nyx_string** %6184
  br label %merge1037
else1036:
  %6242 = load %nyx_string*, %nyx_string** %6184
  %6243 = load %nyx_string*, %nyx_string** %6195
  %6244 = call %nyx_string* @nyx_string_concat(%nyx_string* %6242, %nyx_string* %6243)
  %6245 = load %nyx_string*, %nyx_string** %6237
  %6246 = call %nyx_string* @nyx_string_concat(%nyx_string* %6244, %nyx_string* %6245)
  store %nyx_string* %6246, %nyx_string** %6184
  br label %merge1037
merge1037:
  br label %merge1034
else1033:
  %6247 = alloca i1
  store i1 true, i1* %6247
  %6248 = load %nyx_string*, %nyx_string** %6226
  %6249 = load %nyx_string*, %nyx_string** %6198
  %6250 = call i1 @nyx_string_starts_with(%nyx_string* %6248, %nyx_string* %6249)
  br i1 %6250, label %sc_or_end1039, label %sc_or_rhs1038
sc_or_rhs1038:
  %6251 = load %nyx_string*, %nyx_string** %6226
  %6252 = load %nyx_string*, %nyx_string** %6201
  %6253 = call i1 @nyx_string_starts_with(%nyx_string* %6251, %nyx_string* %6252)
  store i1 %6253, i1* %6247
  br label %sc_or_end1039
sc_or_end1039:
  %6254 = load i1, i1* %6247
  %6255 = alloca i1
  store i1 %6254, i1* %6255
  %6256 = load i1, i1* %6255
  br i1 %6256, label %then1040, label %else1041
then1040:
  %6257 = load %nyx_string*, %nyx_string** %6226
  %6258 = alloca %nyx_string*
  store %nyx_string* %6257, %nyx_string** %6258
  %6259 = load %nyx_string*, %nyx_string** %6258
  %6260 = call i64 @capabilities_paren_delta(%nyx_string* %6259)
  %6261 = alloca i64
  store i64 %6260, i64* %6261
  %6262 = call i8* @llvm.stacksave()
  br label %while_cond1043
while_cond1043:
  %6263 = alloca i1
  store i1 false, i1* %6263
  %6264 = load i64, i64* %6261
  %6265 = icmp sgt i64 %6264, 0
  br i1 %6265, label %sc_and_rhs1046, label %sc_and_end1047
sc_and_rhs1046:
  %6266 = load i64, i64* %6186
  %6267 = add i64 %6266, 1
  %6268 = load { i64, i8* }*, { i64, i8* }** %6178
  %6269 = call i64 @nyx_array_length({ i64, i8* }* %6268)
  %6270 = icmp slt i64 %6267, %6269
  store i1 %6270, i1* %6263
  br label %sc_and_end1047
sc_and_end1047:
  %6271 = load i1, i1* %6263
  br i1 %6271, label %while_body1044, label %while_end1045
while_body1044:
  call void @llvm.stackrestore(i8* %6262)
  %6272 = load i64, i64* %6186
  %6273 = add i64 %6272, 1
  store i64 %6273, i64* %6186
  %6274 = load { i64, i8* }*, { i64, i8* }** %6178
  %6275 = load i64, i64* %6186
  %6276 = call i64 @nyx_array_get_checked({ i64, i8* }* %6274, i64 %6275, i64 2)
  %6277 = inttoptr i64 %6276 to %nyx_string*
  %6278 = call %nyx_string* @nyx_string_trim(%nyx_string* %6277)
  %6279 = alloca %nyx_string*
  store %nyx_string* %6278, %nyx_string** %6279
  %6280 = load %nyx_string*, %nyx_string** %6279
  %6281 = load %nyx_string*, %nyx_string** %6192
  %6282 = call i1 @nyx_string_equals(%nyx_string* %6280, %nyx_string* %6281)
  %6283 = xor i1 %6282, true
  br i1 %6283, label %then1048, label %else1049
then1048:
  %6284 = alloca i1
  store i1 false, i1* %6284
  %6285 = load %nyx_string*, %nyx_string** %6258
  %6286 = call i64 @nyx_string_byte_length(%nyx_string* %6285)
  %6287 = icmp sgt i64 %6286, 0
  br i1 %6287, label %sc_and_rhs1051, label %sc_and_end1052
sc_and_rhs1051:
  %6288 = load %nyx_string*, %nyx_string** %6258
  %6289 = load %nyx_string*, %nyx_string** %6258
  %6290 = call i64 @nyx_string_byte_length(%nyx_string* %6289)
  %6291 = sub i64 %6290, 1
  %6292 = call i8 @nyx_string_char_at(%nyx_string* %6288, i64 %6291)
  %6293 = zext i8 %6292 to i64
  %6294 = getelementptr [1 x i8], [1 x i8]* @.str946, i32 0, i32 0
  %6295 = load i8, i8* %6294
  %6296 = zext i8 %6295 to i64
  %6297 = icmp eq i64 %6293, %6296
  store i1 %6297, i1* %6284
  br label %sc_and_end1052
sc_and_end1052:
  %6298 = load i1, i1* %6284
  br i1 %6298, label %then1053, label %else1054
then1053:
  %6299 = load %nyx_string*, %nyx_string** %6258
  %6300 = load %nyx_string*, %nyx_string** %6279
  %6301 = call %nyx_string* @nyx_string_concat(%nyx_string* %6299, %nyx_string* %6300)
  store %nyx_string* %6301, %nyx_string** %6258
  br label %merge1055
else1054:
  %6302 = load %nyx_string*, %nyx_string** %6258
  %6303 = load %nyx_string*, %nyx_string** %6195
  %6304 = call %nyx_string* @nyx_string_concat(%nyx_string* %6302, %nyx_string* %6303)
  %6305 = load %nyx_string*, %nyx_string** %6279
  %6306 = call %nyx_string* @nyx_string_concat(%nyx_string* %6304, %nyx_string* %6305)
  store %nyx_string* %6306, %nyx_string** %6258
  br label %merge1055
merge1055:
  br label %merge1050
else1049:
  br label %merge1050
merge1050:
  %6307 = load i64, i64* %6261
  %6308 = load %nyx_string*, %nyx_string** %6279
  %6309 = call i64 @capabilities_paren_delta(%nyx_string* %6308)
  %6310 = add i64 %6307, %6309
  store i64 %6310, i64* %6261
  br label %while_cond1043
while_end1045:
  %6311 = sub i64 0, 1
  %6312 = alloca i64
  store i64 %6311, i64* %6312
  %6313 = alloca i64
  store i64 0, i64* %6313
  %6314 = call i8* @llvm.stacksave()
  br label %while_cond1056
while_cond1056:
  %6315 = load i64, i64* %6313
  %6316 = load %nyx_string*, %nyx_string** %6258
  %6317 = call i64 @nyx_string_byte_length(%nyx_string* %6316)
  %6318 = icmp slt i64 %6315, %6317
  br i1 %6318, label %while_body1057, label %while_end1058
while_body1057:
  call void @llvm.stackrestore(i8* %6314)
  %6319 = load %nyx_string*, %nyx_string** %6258
  %6320 = load i64, i64* %6313
  %6321 = call i8 @nyx_string_char_at(%nyx_string* %6319, i64 %6320)
  %6322 = zext i8 %6321 to i64
  %6323 = trunc i64 %6322 to i8
  %6324 = alloca i8
  store i8 %6323, i8* %6324
  %6325 = alloca i1
  store i1 false, i1* %6325
  %6326 = load i8, i8* %6324
  %6327 = getelementptr [1 x i8], [1 x i8]* @.str947, i32 0, i32 0
  %6328 = load i8, i8* %6327
  %6329 = zext i8 %6328 to i64
  %6330 = zext i8 %6326 to i64
  %6331 = icmp eq i64 %6330, %6329
  br i1 %6331, label %sc_and_rhs1059, label %sc_and_end1060
sc_and_rhs1059:
  %6332 = load i64, i64* %6312
  %6333 = sub i64 0, 1
  %6334 = icmp eq i64 %6332, %6333
  store i1 %6334, i1* %6325
  br label %sc_and_end1060
sc_and_end1060:
  %6335 = load i1, i1* %6325
  br i1 %6335, label %then1061, label %else1062
then1061:
  %6336 = load i64, i64* %6313
  store i64 %6336, i64* %6312
  br label %merge1063
else1062:
  br label %merge1063
merge1063:
  %6337 = load i64, i64* %6313
  %6338 = add i64 %6337, 1
  store i64 %6338, i64* %6313
  br label %while_cond1056
while_end1058:
  %6339 = load i64, i64* %6312
  %6340 = icmp sge i64 %6339, 0
  br i1 %6340, label %then1064, label %else1065
then1064:
  %6341 = load %nyx_string*, %nyx_string** %6258
  %6342 = load i64, i64* %6312
  %6343 = call %nyx_string* @nyx_string_substring(%nyx_string* %6341, i64 0, i64 %6342)
  store %nyx_string* %6343, %nyx_string** %6258
  br label %merge1066
else1065:
  br label %merge1066
merge1066:
  %6344 = load %nyx_string*, %nyx_string** %6258
  %6345 = call %nyx_string* @nyx_string_trim(%nyx_string* %6344)
  %6346 = alloca %nyx_string*
  store %nyx_string* %6345, %nyx_string** %6346
  %6347 = load %nyx_string*, %nyx_string** %6181
  %6348 = load %nyx_string*, %nyx_string** %6204
  %6349 = call %nyx_string* @nyx_string_concat(%nyx_string* %6347, %nyx_string* %6348)
  %6350 = load %nyx_string*, %nyx_string** %6346
  %6351 = call %nyx_string* @nyx_string_concat(%nyx_string* %6349, %nyx_string* %6350)
  %6352 = load %nyx_string*, %nyx_string** %6207
  %6353 = call %nyx_string* @nyx_string_concat(%nyx_string* %6351, %nyx_string* %6352)
  store %nyx_string* %6353, %nyx_string** %6181
  %6354 = load %nyx_string*, %nyx_string** %6184
  %6355 = load %nyx_string*, %nyx_string** %6192
  %6356 = call i1 @nyx_string_equals(%nyx_string* %6354, %nyx_string* %6355)
  %6357 = xor i1 %6356, true
  br i1 %6357, label %then1067, label %else1068
then1067:
  %6358 = load %nyx_string*, %nyx_string** %6181
  %6359 = load %nyx_string*, %nyx_string** %6210
  %6360 = call %nyx_string* @nyx_string_concat(%nyx_string* %6358, %nyx_string* %6359)
  %6361 = load %nyx_string*, %nyx_string** %6184
  %6362 = call %nyx_string* @nyx_string_concat(%nyx_string* %6360, %nyx_string* %6361)
  store %nyx_string* %6362, %nyx_string** %6181
  br label %merge1069
else1068:
  br label %merge1069
merge1069:
  %6363 = load %nyx_string*, %nyx_string** %6181
  %6364 = load %nyx_string*, %nyx_string** %6213
  %6365 = call %nyx_string* @nyx_string_concat(%nyx_string* %6363, %nyx_string* %6364)
  store %nyx_string* %6365, %nyx_string** %6181
  %6366 = load i64, i64* %6185
  %6367 = add i64 %6366, 1
  store i64 %6367, i64* %6185
  br label %merge1042
else1041:
  br label %merge1042
merge1042:
  %6368 = load %nyx_string*, %nyx_string** %6192
  store %nyx_string* %6368, %nyx_string** %6184
  br label %merge1034
merge1034:
  %6369 = load i64, i64* %6186
  %6370 = add i64 %6369, 1
  store i64 %6370, i64* %6186
  br label %while_cond1029
while_end1031:
  %6371 = load i64, i64* %6185
  %6372 = icmp eq i64 %6371, 0
  br i1 %6372, label %then1070, label %else1071
then1070:
  %6373 = getelementptr [1 x i8], [1 x i8]* @.str948, i32 0, i32 0
  %6374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %6373, i64 0)
  ret %nyx_string* %6374
else1071:
  br label %merge1072
merge1072:
  %6375 = getelementptr [10 x i8], [10 x i8]* @.str949, i32 0, i32 0
  %6376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %6375, i64 9)
  %6377 = load %nyx_string*, %nyx_string** %6164
  %6378 = call %nyx_string* @nyx_string_concat(%nyx_string* %6376, %nyx_string* %6377)
  %6379 = getelementptr [4 x i8], [4 x i8]* @.str950, i32 0, i32 0
  %6380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %6379, i64 3)
  %6381 = call %nyx_string* @nyx_string_concat(%nyx_string* %6378, %nyx_string* %6380)
  %6382 = alloca %nyx_string*
  store %nyx_string* %6381, %nyx_string** %6382
  %6383 = load %nyx_string*, %nyx_string** %6382
  %6384 = getelementptr [14 x i8], [14 x i8]* @.str951, i32 0, i32 0
  %6385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %6384, i64 13)
  %6386 = call %nyx_string* @nyx_string_concat(%nyx_string* %6383, %nyx_string* %6385)
  %6387 = load %nyx_string*, %nyx_string** %6164
  %6388 = call %nyx_string* @nyx_string_concat(%nyx_string* %6386, %nyx_string* %6387)
  %6389 = getelementptr [8 x i8], [8 x i8]* @.str952, i32 0, i32 0
  %6390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %6389, i64 7)
  %6391 = call %nyx_string* @nyx_string_concat(%nyx_string* %6388, %nyx_string* %6390)
  %6392 = load i64, i64* %6185
  %6393 = call %nyx_string* @nyx_string_from_int(i64 %6392)
  %6394 = call %nyx_string* @nyx_string_concat(%nyx_string* %6391, %nyx_string* %6393)
  %6395 = getelementptr [14 x i8], [14 x i8]* @.str953, i32 0, i32 0
  %6396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %6395, i64 13)
  %6397 = call %nyx_string* @nyx_string_concat(%nyx_string* %6394, %nyx_string* %6396)
  store %nyx_string* %6397, %nyx_string** %6382
  %6398 = load %nyx_string*, %nyx_string** %6382
  %6399 = load %nyx_string*, %nyx_string** %6181
  %6400 = call %nyx_string* @nyx_string_concat(%nyx_string* %6398, %nyx_string* %6399)
  %6401 = getelementptr [2 x i8], [2 x i8]* @.str954, i32 0, i32 0
  %6402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %6401, i64 1)
  %6403 = call %nyx_string* @nyx_string_concat(%nyx_string* %6400, %nyx_string* %6402)
  store %nyx_string* %6403, %nyx_string** %6382
  %6404 = load %nyx_string*, %nyx_string** %6382
  ret %nyx_string* %6404
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %6405 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %6406 = getelementptr [16 x i8], [16 x i8]* @.str955, i32 0, i32 0
  %6407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %6406, i64 15)
  %6408 = call %nyx_string* @nyx_string_concat(%nyx_string* %6405, %nyx_string* %6407)
  %6409 = alloca %nyx_string*
  store %nyx_string* %6408, %nyx_string** %6409
  %6410 = load %nyx_string*, %nyx_string** %6409
  %6411 = call i8* @nyx_string_to_cstr(%nyx_string* %6410)
  %6412 = call i1 @nyx_file_exists(i8* %6411)
  %6413 = xor i1 %6412, true
  br i1 %6413, label %then1073, label %else1074
then1073:
  %6414 = getelementptr [1 x i8], [1 x i8]* @.str956, i32 0, i32 0
  %6415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %6414, i64 0)
  ret %nyx_string* %6415
else1074:
  br label %merge1075
merge1075:
  %6416 = load %nyx_string*, %nyx_string** %6409
  %6417 = call i8* @nyx_string_to_cstr(%nyx_string* %6416)
  %6418 = call %nyx_string* @nyx_read_file(i8* %6417)
  %6419 = alloca %nyx_string*
  store %nyx_string* %6418, %nyx_string** %6419
  %6420 = load %nyx_string*, %nyx_string** %6419
  %6421 = getelementptr [2 x i8], [2 x i8]* @.str957, i32 0, i32 0
  %6422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %6421, i64 1)
  %6423 = call { i64, i8* }* @nyx_string_split(%nyx_string* %6420, %nyx_string* %6422)
  %6424 = alloca { i64, i8* }*
  store { i64, i8* }* %6423, { i64, i8* }** %6424
  %6425 = getelementptr [1 x i8], [1 x i8]* @.str958, i32 0, i32 0
  %6426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %6425, i64 0)
  %6427 = alloca %nyx_string*
  store %nyx_string* %6426, %nyx_string** %6427
  %6428 = alloca i64
  store i64 0, i64* %6428
  %6429 = alloca i64
  store i64 0, i64* %6429
  %6430 = getelementptr [9 x i8], [9 x i8]* @.str959, i32 0, i32 0
  %6431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %6430, i64 8)
  %6432 = alloca %nyx_string*
  store %nyx_string* %6431, %nyx_string** %6432
  %6433 = getelementptr [2 x i8], [2 x i8]* @.str960, i32 0, i32 0
  %6434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %6433, i64 1)
  %6435 = alloca %nyx_string*
  store %nyx_string* %6434, %nyx_string** %6435
  %6436 = getelementptr [4 x i8], [4 x i8]* @.str961, i32 0, i32 0
  %6437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %6436, i64 3)
  %6438 = alloca %nyx_string*
  store %nyx_string* %6437, %nyx_string** %6438
  %6439 = getelementptr [4 x i8], [4 x i8]* @.str962, i32 0, i32 0
  %6440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %6439, i64 3)
  %6441 = alloca %nyx_string*
  store %nyx_string* %6440, %nyx_string** %6441
  %6442 = getelementptr [5 x i8], [5 x i8]* @.str963, i32 0, i32 0
  %6443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %6442, i64 4)
  %6444 = alloca %nyx_string*
  store %nyx_string* %6443, %nyx_string** %6444
  %6445 = getelementptr [2 x i8], [2 x i8]* @.str964, i32 0, i32 0
  %6446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %6445, i64 1)
  %6447 = alloca %nyx_string*
  store %nyx_string* %6446, %nyx_string** %6447
  %6448 = getelementptr [2 x i8], [2 x i8]* @.str965, i32 0, i32 0
  %6449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %6448, i64 1)
  %6450 = alloca %nyx_string*
  store %nyx_string* %6449, %nyx_string** %6450
  %6451 = getelementptr [2 x i8], [2 x i8]* @.str966, i32 0, i32 0
  %6452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %6451, i64 1)
  %6453 = alloca %nyx_string*
  store %nyx_string* %6452, %nyx_string** %6453
  %6454 = getelementptr [1 x i8], [1 x i8]* @.str967, i32 0, i32 0
  %6455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %6454, i64 0)
  %6456 = alloca %nyx_string*
  store %nyx_string* %6455, %nyx_string** %6456
  %6457 = getelementptr [6 x i8], [6 x i8]* @.str968, i32 0, i32 0
  %6458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %6457, i64 5)
  %6459 = alloca %nyx_string*
  store %nyx_string* %6458, %nyx_string** %6459
  %6460 = getelementptr [2 x i8], [2 x i8]* @.str969, i32 0, i32 0
  %6461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %6460, i64 1)
  %6462 = alloca %nyx_string*
  store %nyx_string* %6461, %nyx_string** %6462
  %6463 = call i8* @llvm.stacksave()
  br label %while_cond1076
while_cond1076:
  %6464 = load i64, i64* %6429
  %6465 = load { i64, i8* }*, { i64, i8* }** %6424
  %6466 = call i64 @nyx_array_length({ i64, i8* }* %6465)
  %6467 = icmp slt i64 %6464, %6466
  br i1 %6467, label %while_body1077, label %while_end1078
while_body1077:
  call void @llvm.stackrestore(i8* %6463)
  %6468 = load { i64, i8* }*, { i64, i8* }** %6424
  %6469 = load i64, i64* %6429
  %6470 = call i64 @nyx_array_get_checked({ i64, i8* }* %6468, i64 %6469, i64 2)
  %6471 = inttoptr i64 %6470 to %nyx_string*
  %6472 = alloca %nyx_string*
  store %nyx_string* %6471, %nyx_string** %6472
  %6473 = load %nyx_string*, %nyx_string** %6472
  %6474 = call i64 @nyx_string_byte_length(%nyx_string* %6473)
  %6475 = icmp sgt i64 %6474, 8
  br i1 %6475, label %then1079, label %else1080
then1079:
  %6476 = load %nyx_string*, %nyx_string** %6472
  %6477 = call %nyx_string* @nyx_string_substring(%nyx_string* %6476, i64 0, i64 8)
  %6478 = load %nyx_string*, %nyx_string** %6432
  %6479 = call i1 @nyx_string_equals(%nyx_string* %6477, %nyx_string* %6478)
  br i1 %6479, label %then1082, label %else1083
then1082:
  %6480 = load %nyx_string*, %nyx_string** %6472
  %6481 = load %nyx_string*, %nyx_string** %6435
  %6482 = call { i64, i8* }* @nyx_string_split(%nyx_string* %6480, %nyx_string* %6481)
  %6483 = alloca { i64, i8* }*
  store { i64, i8* }* %6482, { i64, i8* }** %6483
  %6484 = load { i64, i8* }*, { i64, i8* }** %6483
  %6485 = call i64 @nyx_array_length({ i64, i8* }* %6484)
  %6486 = icmp sge i64 %6485, 5
  br i1 %6486, label %then1085, label %else1086
then1085:
  %6487 = load { i64, i8* }*, { i64, i8* }** %6483
  %6488 = call i64 @nyx_array_get_checked({ i64, i8* }* %6487, i64 1, i64 2)
  %6489 = inttoptr i64 %6488 to %nyx_string*
  %6490 = alloca %nyx_string*
  store %nyx_string* %6489, %nyx_string** %6490
  %6491 = load { i64, i8* }*, { i64, i8* }** %6483
  %6492 = call i64 @nyx_array_get_checked({ i64, i8* }* %6491, i64 2, i64 2)
  %6493 = inttoptr i64 %6492 to %nyx_string*
  %6494 = alloca %nyx_string*
  store %nyx_string* %6493, %nyx_string** %6494
  %6495 = load { i64, i8* }*, { i64, i8* }** %6483
  %6496 = call i64 @nyx_array_get_checked({ i64, i8* }* %6495, i64 3, i64 2)
  %6497 = inttoptr i64 %6496 to %nyx_string*
  %6498 = alloca %nyx_string*
  store %nyx_string* %6497, %nyx_string** %6498
  %6499 = load { i64, i8* }*, { i64, i8* }** %6483
  %6500 = call i64 @nyx_array_get_checked({ i64, i8* }* %6499, i64 4, i64 2)
  %6501 = inttoptr i64 %6500 to %nyx_string*
  %6502 = alloca %nyx_string*
  store %nyx_string* %6501, %nyx_string** %6502
  %6503 = load %nyx_string*, %nyx_string** %6498
  %6504 = load %nyx_string*, %nyx_string** %cat.ptr
  %6505 = call i1 @nyx_string_equals(%nyx_string* %6503, %nyx_string* %6504)
  br i1 %6505, label %then1088, label %else1089
then1088:
  %6506 = load %nyx_string*, %nyx_string** %6438
  %6507 = load %nyx_string*, %nyx_string** %6490
  %6508 = call %nyx_string* @nyx_string_concat(%nyx_string* %6506, %nyx_string* %6507)
  %6509 = load %nyx_string*, %nyx_string** %6441
  %6510 = call %nyx_string* @nyx_string_concat(%nyx_string* %6508, %nyx_string* %6509)
  %6511 = load %nyx_string*, %nyx_string** %6494
  %6512 = call %nyx_string* @nyx_string_concat(%nyx_string* %6510, %nyx_string* %6511)
  %6513 = load %nyx_string*, %nyx_string** %6444
  %6514 = call %nyx_string* @nyx_string_concat(%nyx_string* %6512, %nyx_string* %6513)
  %6515 = alloca %nyx_string*
  store %nyx_string* %6514, %nyx_string** %6515
  %6516 = load %nyx_string*, %nyx_string** %6494
  %6517 = load %nyx_string*, %nyx_string** %6447
  %6518 = call i1 @nyx_string_equals(%nyx_string* %6516, %nyx_string* %6517)
  %6519 = xor i1 %6518, true
  br i1 %6519, label %then1091, label %else1092
then1091:
  %6520 = load %nyx_string*, %nyx_string** %6515
  %6521 = load %nyx_string*, %nyx_string** %6450
  %6522 = call %nyx_string* @nyx_string_concat(%nyx_string* %6520, %nyx_string* %6521)
  store %nyx_string* %6522, %nyx_string** %6515
  br label %merge1093
else1092:
  br label %merge1093
merge1093:
  %6523 = load %nyx_string*, %nyx_string** %6515
  %6524 = load %nyx_string*, %nyx_string** %6453
  %6525 = call %nyx_string* @nyx_string_concat(%nyx_string* %6523, %nyx_string* %6524)
  store %nyx_string* %6525, %nyx_string** %6515
  %6526 = load %nyx_string*, %nyx_string** %6502
  %6527 = load %nyx_string*, %nyx_string** %6456
  %6528 = call i1 @nyx_string_equals(%nyx_string* %6526, %nyx_string* %6527)
  %6529 = xor i1 %6528, true
  br i1 %6529, label %then1094, label %else1095
then1094:
  %6530 = load %nyx_string*, %nyx_string** %6515
  %6531 = load %nyx_string*, %nyx_string** %6459
  %6532 = call %nyx_string* @nyx_string_concat(%nyx_string* %6530, %nyx_string* %6531)
  %6533 = load %nyx_string*, %nyx_string** %6502
  %6534 = call %nyx_string* @nyx_string_concat(%nyx_string* %6532, %nyx_string* %6533)
  store %nyx_string* %6534, %nyx_string** %6515
  br label %merge1096
else1095:
  br label %merge1096
merge1096:
  %6535 = load %nyx_string*, %nyx_string** %6427
  %6536 = load %nyx_string*, %nyx_string** %6515
  %6537 = call %nyx_string* @nyx_string_concat(%nyx_string* %6535, %nyx_string* %6536)
  %6538 = load %nyx_string*, %nyx_string** %6462
  %6539 = call %nyx_string* @nyx_string_concat(%nyx_string* %6537, %nyx_string* %6538)
  store %nyx_string* %6539, %nyx_string** %6427
  %6540 = load i64, i64* %6428
  %6541 = add i64 %6540, 1
  store i64 %6541, i64* %6428
  br label %merge1090
else1089:
  br label %merge1090
merge1090:
  br label %merge1087
else1086:
  br label %merge1087
merge1087:
  br label %merge1084
else1083:
  br label %merge1084
merge1084:
  br label %merge1081
else1080:
  br label %merge1081
merge1081:
  %6542 = load i64, i64* %6429
  %6543 = add i64 %6542, 1
  store i64 %6543, i64* %6429
  br label %while_cond1076
while_end1078:
  %6544 = load i64, i64* %6428
  %6545 = icmp eq i64 %6544, 0
  br i1 %6545, label %then1097, label %else1098
then1097:
  %6546 = getelementptr [1 x i8], [1 x i8]* @.str970, i32 0, i32 0
  %6547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %6546, i64 0)
  ret %nyx_string* %6547
else1098:
  br label %merge1099
merge1099:
  %6548 = getelementptr [39 x i8], [39 x i8]* @.str971, i32 0, i32 0
  %6549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %6548, i64 38)
  %6550 = load %nyx_string*, %nyx_string** %6427
  %6551 = call %nyx_string* @nyx_string_concat(%nyx_string* %6549, %nyx_string* %6550)
  %6552 = getelementptr [2 x i8], [2 x i8]* @.str972, i32 0, i32 0
  %6553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %6552, i64 1)
  %6554 = call %nyx_string* @nyx_string_concat(%nyx_string* %6551, %nyx_string* %6553)
  ret %nyx_string* %6554
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %6555 = call %nyx_string* @capabilities_std_dir()
  %6556 = alloca %nyx_string*
  store %nyx_string* %6555, %nyx_string** %6556
  %6557 = load %nyx_string*, %nyx_string** %6556
  %6558 = getelementptr [1 x i8], [1 x i8]* @.str973, i32 0, i32 0
  %6559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %6558, i64 0)
  %6560 = call i1 @nyx_string_equals(%nyx_string* %6557, %nyx_string* %6559)
  br i1 %6560, label %then1100, label %else1101
then1100:
  %6561 = getelementptr [71 x i8], [71 x i8]* @.str974, i32 0, i32 0
  %6562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %6561, i64 70)
  %6563 = call i8* @nyx_string_to_cstr(%nyx_string* %6562)
  call void @nyx_print_string(i8* %6563)
  ret i1 0
else1101:
  br label %merge1102
merge1102:
  %6564 = load %nyx_string*, %nyx_string** %6556
  %6565 = call i8* @nyx_string_to_cstr(%nyx_string* %6564)
  %6566 = call { i64, i8* }* @nyx_readdir(i8* %6565)
  %6567 = alloca { i64, i8* }*
  store { i64, i8* }* %6566, { i64, i8* }** %6567
  %6568 = call { i64, i8* }* @nyx_array_new_ptr()
  %6569 = getelementptr [11 x i8], [11 x i8]* @.str975, i32 0, i32 0
  %6570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %6569, i64 10)
  %6571 = ptrtoint %nyx_string* %6570 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6571, i64 2)
  %6572 = getelementptr [20 x i8], [20 x i8]* @.str976, i32 0, i32 0
  %6573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %6572, i64 19)
  %6574 = ptrtoint %nyx_string* %6573 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6574, i64 2)
  %6575 = getelementptr [23 x i8], [23 x i8]* @.str977, i32 0, i32 0
  %6576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %6575, i64 22)
  %6577 = ptrtoint %nyx_string* %6576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6577, i64 2)
  %6578 = getelementptr [15 x i8], [15 x i8]* @.str978, i32 0, i32 0
  %6579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %6578, i64 14)
  %6580 = ptrtoint %nyx_string* %6579 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6580, i64 2)
  %6581 = getelementptr [4 x i8], [4 x i8]* @.str979, i32 0, i32 0
  %6582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %6581, i64 3)
  %6583 = ptrtoint %nyx_string* %6582 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6583, i64 2)
  %6584 = getelementptr [13 x i8], [13 x i8]* @.str980, i32 0, i32 0
  %6585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %6584, i64 12)
  %6586 = ptrtoint %nyx_string* %6585 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6586, i64 2)
  %6587 = getelementptr [19 x i8], [19 x i8]* @.str981, i32 0, i32 0
  %6588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %6587, i64 18)
  %6589 = ptrtoint %nyx_string* %6588 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6589, i64 2)
  %6590 = getelementptr [7 x i8], [7 x i8]* @.str982, i32 0, i32 0
  %6591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %6590, i64 6)
  %6592 = ptrtoint %nyx_string* %6591 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6592, i64 2)
  %6593 = getelementptr [16 x i8], [16 x i8]* @.str983, i32 0, i32 0
  %6594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %6593, i64 15)
  %6595 = ptrtoint %nyx_string* %6594 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6595, i64 2)
  %6596 = getelementptr [12 x i8], [12 x i8]* @.str984, i32 0, i32 0
  %6597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %6596, i64 11)
  %6598 = ptrtoint %nyx_string* %6597 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6598, i64 2)
  %6599 = getelementptr [26 x i8], [26 x i8]* @.str985, i32 0, i32 0
  %6600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %6599, i64 25)
  %6601 = ptrtoint %nyx_string* %6600 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6601, i64 2)
  %6602 = getelementptr [8 x i8], [8 x i8]* @.str986, i32 0, i32 0
  %6603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %6602, i64 7)
  %6604 = ptrtoint %nyx_string* %6603 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6604, i64 2)
  %6605 = getelementptr [14 x i8], [14 x i8]* @.str987, i32 0, i32 0
  %6606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %6605, i64 13)
  %6607 = ptrtoint %nyx_string* %6606 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6607, i64 2)
  %6608 = getelementptr [6 x i8], [6 x i8]* @.str988, i32 0, i32 0
  %6609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %6608, i64 5)
  %6610 = ptrtoint %nyx_string* %6609 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6568, i64 %6610, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %6568, i64 2)
  %6611 = alloca { i64, i8* }*
  store { i64, i8* }* %6568, { i64, i8* }** %6611
  %6612 = getelementptr [49 x i8], [49 x i8]* @.str989, i32 0, i32 0
  %6613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %6612, i64 48)
  %6614 = alloca %nyx_string*
  store %nyx_string* %6613, %nyx_string** %6614
  %6615 = load %nyx_string*, %nyx_string** %6614
  %6616 = getelementptr [19 x i8], [19 x i8]* @.str990, i32 0, i32 0
  %6617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %6616, i64 18)
  %6618 = call %nyx_string* @nyx_string_concat(%nyx_string* %6615, %nyx_string* %6617)
  %6619 = call %nyx_string* @toolchain_version()
  %6620 = call %nyx_string* @nyx_string_concat(%nyx_string* %6618, %nyx_string* %6619)
  %6621 = getelementptr [6 x i8], [6 x i8]* @.str991, i32 0, i32 0
  %6622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %6621, i64 5)
  %6623 = call %nyx_string* @nyx_string_concat(%nyx_string* %6620, %nyx_string* %6622)
  store %nyx_string* %6623, %nyx_string** %6614
  %6624 = load %nyx_string*, %nyx_string** %6614
  %6625 = getelementptr [103 x i8], [103 x i8]* @.str992, i32 0, i32 0
  %6626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %6625, i64 102)
  %6627 = call %nyx_string* @nyx_string_concat(%nyx_string* %6624, %nyx_string* %6626)
  store %nyx_string* %6627, %nyx_string** %6614
  %6628 = load %nyx_string*, %nyx_string** %6614
  %6629 = getelementptr [103 x i8], [103 x i8]* @.str993, i32 0, i32 0
  %6630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %6629, i64 102)
  %6631 = call %nyx_string* @nyx_string_concat(%nyx_string* %6628, %nyx_string* %6630)
  store %nyx_string* %6631, %nyx_string** %6614
  %6632 = load %nyx_string*, %nyx_string** %6614
  %6633 = getelementptr [95 x i8], [95 x i8]* @.str994, i32 0, i32 0
  %6634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %6633, i64 94)
  %6635 = call %nyx_string* @nyx_string_concat(%nyx_string* %6632, %nyx_string* %6634)
  store %nyx_string* %6635, %nyx_string** %6614
  %6636 = alloca i64
  store i64 0, i64* %6636
  %6637 = getelementptr [1 x i8], [1 x i8]* @.str995, i32 0, i32 0
  %6638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %6637, i64 0)
  %6639 = alloca %nyx_string*
  store %nyx_string* %6638, %nyx_string** %6639
  %6640 = getelementptr [4 x i8], [4 x i8]* @.str996, i32 0, i32 0
  %6641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %6640, i64 3)
  %6642 = alloca %nyx_string*
  store %nyx_string* %6641, %nyx_string** %6642
  %6643 = getelementptr [6 x i8], [6 x i8]* @.str997, i32 0, i32 0
  %6644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %6643, i64 5)
  %6645 = alloca %nyx_string*
  store %nyx_string* %6644, %nyx_string** %6645
  %6646 = getelementptr [4 x i8], [4 x i8]* @.str998, i32 0, i32 0
  %6647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %6646, i64 3)
  %6648 = alloca %nyx_string*
  store %nyx_string* %6647, %nyx_string** %6648
  %6649 = getelementptr [3 x i8], [3 x i8]* @.str999, i32 0, i32 0
  %6650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %6649, i64 2)
  %6651 = alloca %nyx_string*
  store %nyx_string* %6650, %nyx_string** %6651
  %6652 = call i8* @llvm.stacksave()
  br label %while_cond1103
while_cond1103:
  %6653 = load i64, i64* %6636
  %6654 = load { i64, i8* }*, { i64, i8* }** %6611
  %6655 = call i64 @nyx_array_length({ i64, i8* }* %6654)
  %6656 = icmp slt i64 %6653, %6655
  br i1 %6656, label %while_body1104, label %while_end1105
while_body1104:
  call void @llvm.stackrestore(i8* %6652)
  %6657 = load { i64, i8* }*, { i64, i8* }** %6611
  %6658 = load i64, i64* %6636
  %6659 = call i64 @nyx_array_get_checked({ i64, i8* }* %6657, i64 %6658, i64 2)
  %6660 = inttoptr i64 %6659 to %nyx_string*
  %6661 = alloca %nyx_string*
  store %nyx_string* %6660, %nyx_string** %6661
  %6662 = load %nyx_string*, %nyx_string** %6639
  %6663 = alloca %nyx_string*
  store %nyx_string* %6662, %nyx_string** %6663
  %6664 = alloca i64
  store i64 0, i64* %6664
  %6665 = call i8* @llvm.stacksave()
  br label %while_cond1106
while_cond1106:
  %6666 = load i64, i64* %6664
  %6667 = load { i64, i8* }*, { i64, i8* }** %6567
  %6668 = call i64 @nyx_array_length({ i64, i8* }* %6667)
  %6669 = icmp slt i64 %6666, %6668
  br i1 %6669, label %while_body1107, label %while_end1108
while_body1107:
  call void @llvm.stackrestore(i8* %6665)
  %6670 = load { i64, i8* }*, { i64, i8* }** %6567
  %6671 = load i64, i64* %6664
  %6672 = call i64 @nyx_array_get_checked({ i64, i8* }* %6670, i64 %6671, i64 2)
  %6673 = inttoptr i64 %6672 to %nyx_string*
  %6674 = alloca %nyx_string*
  store %nyx_string* %6673, %nyx_string** %6674
  %6675 = load %nyx_string*, %nyx_string** %6674
  %6676 = load %nyx_string*, %nyx_string** %6642
  %6677 = call i1 @nyx_string_ends_with(%nyx_string* %6675, %nyx_string* %6676)
  br i1 %6677, label %then1109, label %else1110
then1109:
  %6678 = load %nyx_string*, %nyx_string** %6674
  %6679 = load %nyx_string*, %nyx_string** %6674
  %6680 = call i64 @nyx_string_byte_length(%nyx_string* %6679)
  %6681 = sub i64 %6680, 3
  %6682 = call %nyx_string* @nyx_string_substring(%nyx_string* %6678, i64 0, i64 %6681)
  %6683 = alloca %nyx_string*
  store %nyx_string* %6682, %nyx_string** %6683
  %6684 = load %nyx_string*, %nyx_string** %6683
  %6685 = call %nyx_string* @module_category(%nyx_string* %6684)
  %6686 = alloca %nyx_string*
  store %nyx_string* %6685, %nyx_string** %6686
  %6687 = load %nyx_string*, %nyx_string** %6686
  %6688 = load %nyx_string*, %nyx_string** %6639
  %6689 = call i1 @nyx_string_equals(%nyx_string* %6687, %nyx_string* %6688)
  br i1 %6689, label %then1112, label %else1113
then1112:
  %6690 = load %nyx_string*, %nyx_string** %6645
  store %nyx_string* %6690, %nyx_string** %6686
  br label %merge1114
else1113:
  br label %merge1114
merge1114:
  %6691 = load %nyx_string*, %nyx_string** %6686
  %6692 = load %nyx_string*, %nyx_string** %6661
  %6693 = call i1 @nyx_string_equals(%nyx_string* %6691, %nyx_string* %6692)
  br i1 %6693, label %then1115, label %else1116
then1115:
  %6694 = load %nyx_string*, %nyx_string** %6556
  %6695 = load %nyx_string*, %nyx_string** %6674
  %6696 = call %nyx_string* @capabilities_module_section(%nyx_string* %6694, %nyx_string* %6695)
  %6697 = alloca %nyx_string*
  store %nyx_string* %6696, %nyx_string** %6697
  %6698 = load %nyx_string*, %nyx_string** %6697
  %6699 = load %nyx_string*, %nyx_string** %6639
  %6700 = call i1 @nyx_string_equals(%nyx_string* %6698, %nyx_string* %6699)
  %6701 = xor i1 %6700, true
  br i1 %6701, label %then1118, label %else1119
then1118:
  %6702 = load %nyx_string*, %nyx_string** %6663
  %6703 = load %nyx_string*, %nyx_string** %6697
  %6704 = call %nyx_string* @nyx_string_concat(%nyx_string* %6702, %nyx_string* %6703)
  store %nyx_string* %6704, %nyx_string** %6663
  br label %merge1120
else1119:
  br label %merge1120
merge1120:
  br label %merge1117
else1116:
  br label %merge1117
merge1117:
  br label %merge1111
else1110:
  br label %merge1111
merge1111:
  %6705 = load i64, i64* %6664
  %6706 = add i64 %6705, 1
  store i64 %6706, i64* %6664
  br label %while_cond1106
while_end1108:
  %6707 = load %nyx_string*, %nyx_string** %6556
  %6708 = load %nyx_string*, %nyx_string** %6661
  %6709 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %6707, %nyx_string* %6708)
  %6710 = alloca %nyx_string*
  store %nyx_string* %6709, %nyx_string** %6710
  %6711 = alloca i1
  store i1 true, i1* %6711
  %6712 = load %nyx_string*, %nyx_string** %6663
  %6713 = load %nyx_string*, %nyx_string** %6639
  %6714 = call i1 @nyx_string_equals(%nyx_string* %6712, %nyx_string* %6713)
  %6715 = xor i1 %6714, true
  br i1 %6715, label %sc_or_end1122, label %sc_or_rhs1121
sc_or_rhs1121:
  %6716 = load %nyx_string*, %nyx_string** %6710
  %6717 = load %nyx_string*, %nyx_string** %6639
  %6718 = call i1 @nyx_string_equals(%nyx_string* %6716, %nyx_string* %6717)
  %6719 = xor i1 %6718, true
  store i1 %6719, i1* %6711
  br label %sc_or_end1122
sc_or_end1122:
  %6720 = load i1, i1* %6711
  br i1 %6720, label %then1123, label %else1124
then1123:
  %6721 = load %nyx_string*, %nyx_string** %6614
  %6722 = load %nyx_string*, %nyx_string** %6648
  %6723 = call %nyx_string* @nyx_string_concat(%nyx_string* %6721, %nyx_string* %6722)
  %6724 = load %nyx_string*, %nyx_string** %6661
  %6725 = call %nyx_string* @nyx_string_concat(%nyx_string* %6723, %nyx_string* %6724)
  %6726 = load %nyx_string*, %nyx_string** %6651
  %6727 = call %nyx_string* @nyx_string_concat(%nyx_string* %6725, %nyx_string* %6726)
  %6728 = load %nyx_string*, %nyx_string** %6663
  %6729 = call %nyx_string* @nyx_string_concat(%nyx_string* %6727, %nyx_string* %6728)
  %6730 = load %nyx_string*, %nyx_string** %6710
  %6731 = call %nyx_string* @nyx_string_concat(%nyx_string* %6729, %nyx_string* %6730)
  store %nyx_string* %6731, %nyx_string** %6614
  br label %merge1125
else1124:
  br label %merge1125
merge1125:
  %6732 = load i64, i64* %6636
  %6733 = add i64 %6732, 1
  store i64 %6733, i64* %6636
  br label %while_cond1103
while_end1105:
  %6734 = getelementptr [16 x i8], [16 x i8]* @.str1000, i32 0, i32 0
  %6735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %6734, i64 15)
  %6736 = alloca %nyx_string*
  store %nyx_string* %6735, %nyx_string** %6736
  %6737 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %6738 = getelementptr [1 x i8], [1 x i8]* @.str1001, i32 0, i32 0
  %6739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %6738, i64 0)
  %6740 = call i1 @nyx_string_equals(%nyx_string* %6737, %nyx_string* %6739)
  %6741 = xor i1 %6740, true
  br i1 %6741, label %then1126, label %else1127
then1126:
  %6742 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %6742, %nyx_string** %6736
  br label %merge1128
else1127:
  br label %merge1128
merge1128:
  %6743 = load %nyx_string*, %nyx_string** %6736
  %6744 = load %nyx_string*, %nyx_string** %6614
  %6745 = call i8* @nyx_string_to_cstr(%nyx_string* %6743)
  %6746 = call i1 @nyx_write_file_safe(i8* %6745, %nyx_string* %6744)
  %6747 = getelementptr [32 x i8], [32 x i8]* @.str1002, i32 0, i32 0
  %6748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %6747, i64 31)
  %6749 = load %nyx_string*, %nyx_string** %6556
  %6750 = call %nyx_string* @nyx_string_concat(%nyx_string* %6748, %nyx_string* %6749)
  %6751 = getelementptr [3 x i8], [3 x i8]* @.str1003, i32 0, i32 0
  %6752 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %6751, i64 2)
  %6753 = call %nyx_string* @nyx_string_concat(%nyx_string* %6750, %nyx_string* %6752)
  %6754 = load { i64, i8* }*, { i64, i8* }** %6567
  %6755 = call i64 @nyx_array_length({ i64, i8* }* %6754)
  %6756 = call %nyx_string* @nyx_string_from_int(i64 %6755)
  %6757 = call %nyx_string* @nyx_string_concat(%nyx_string* %6753, %nyx_string* %6756)
  %6758 = getelementptr [22 x i8], [22 x i8]* @.str1004, i32 0, i32 0
  %6759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %6758, i64 21)
  %6760 = call %nyx_string* @nyx_string_concat(%nyx_string* %6757, %nyx_string* %6759)
  %6761 = call i8* @nyx_string_to_cstr(%nyx_string* %6760)
  call void @nyx_print_string(i8* %6761)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %6762 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %6763 = ptrtoint %SharedEnv_main* %6762 to i64
  %6764 = call i8* @GC_malloc(i64 %6763)
  %6765 = bitcast i8* %6764 to %SharedEnv_main*
  %6766 = call { i64, i8* }* @nyx_get_args()
  %6767 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 0
  store { i64, i8* }* %6766, { i64, i8* }** %6767
  %6768 = getelementptr [6 x i8], [6 x i8]* @.str1005, i32 0, i32 0
  %6769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %6768, i64 5)
  %6770 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 1
  store %nyx_string* %6769, %nyx_string** %6770
  %6771 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 2
  store i1 0, i1* %6771
  %6772 = getelementptr [1 x i8], [1 x i8]* @.str1006, i32 0, i32 0
  %6773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %6772, i64 0)
  %6774 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 3
  store %nyx_string* %6773, %nyx_string** %6774
  %6775 = getelementptr [1 x i8], [1 x i8]* @.str1007, i32 0, i32 0
  %6776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %6775, i64 0)
  %6777 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 4
  store %nyx_string* %6776, %nyx_string** %6777
  %6778 = load { i64, i8* }*, { i64, i8* }** %6767
  %6779 = call i64 @nyx_array_length({ i64, i8* }* %6778)
  %6780 = icmp sge i64 %6779, 2
  br i1 %6780, label %then1129, label %else1130
then1129:
  %6781 = load { i64, i8* }*, { i64, i8* }** %6767
  %6782 = call i64 @nyx_array_get_checked({ i64, i8* }* %6781, i64 1, i64 2)
  %6783 = inttoptr i64 %6782 to %nyx_string*
  %6784 = alloca %nyx_string*
  store %nyx_string* %6783, %nyx_string** %6784
  %6785 = load %nyx_string*, %nyx_string** %6784
  store %nyx_string* %6785, %nyx_string** %6770
  br label %merge1131
else1130:
  br label %merge1131
merge1131:
  %6786 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 5
  store i64 2, i64* %6786
  %6787 = getelementptr [1 x i8], [1 x i8]* @.str1008, i32 0, i32 0
  %6788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %6787, i64 0)
  %6789 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 6
  store %nyx_string* %6788, %nyx_string** %6789
  %6790 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 7
  store i1 0, i1* %6790
  %6791 = alloca i1
  store i1 true, i1* %6791
  %6792 = alloca i1
  store i1 true, i1* %6792
  %6793 = load %nyx_string*, %nyx_string** %6770
  %6794 = getelementptr [6 x i8], [6 x i8]* @.str1009, i32 0, i32 0
  %6795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %6794, i64 5)
  %6796 = call i1 @nyx_string_equals(%nyx_string* %6793, %nyx_string* %6795)
  br i1 %6796, label %sc_or_end1133, label %sc_or_rhs1132
sc_or_rhs1132:
  %6797 = load %nyx_string*, %nyx_string** %6770
  %6798 = getelementptr [4 x i8], [4 x i8]* @.str1010, i32 0, i32 0
  %6799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %6798, i64 3)
  %6800 = call i1 @nyx_string_equals(%nyx_string* %6797, %nyx_string* %6799)
  store i1 %6800, i1* %6792
  br label %sc_or_end1133
sc_or_end1133:
  %6801 = load i1, i1* %6792
  br i1 %6801, label %sc_or_end1135, label %sc_or_rhs1134
sc_or_rhs1134:
  %6802 = load %nyx_string*, %nyx_string** %6770
  %6803 = getelementptr [5 x i8], [5 x i8]* @.str1011, i32 0, i32 0
  %6804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %6803, i64 4)
  %6805 = call i1 @nyx_string_equals(%nyx_string* %6802, %nyx_string* %6804)
  store i1 %6805, i1* %6791
  br label %sc_or_end1135
sc_or_end1135:
  %6806 = load i1, i1* %6791
  %6807 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 8
  store i1 %6806, i1* %6807
  %6808 = getelementptr [3 x i8], [3 x i8]* @.str1012, i32 0, i32 0
  %6809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %6808, i64 2)
  %6810 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 9
  store %nyx_string* %6809, %nyx_string** %6810
  %6811 = getelementptr [10 x i8], [10 x i8]* @.str1013, i32 0, i32 0
  %6812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %6811, i64 9)
  %6813 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 10
  store %nyx_string* %6812, %nyx_string** %6813
  %6814 = getelementptr [7 x i8], [7 x i8]* @.str1014, i32 0, i32 0
  %6815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %6814, i64 6)
  %6816 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 11
  store %nyx_string* %6815, %nyx_string** %6816
  %6817 = getelementptr [1 x i8], [1 x i8]* @.str1015, i32 0, i32 0
  %6818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %6817, i64 0)
  %6819 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 12
  store %nyx_string* %6818, %nyx_string** %6819
  %6820 = getelementptr [66 x i8], [66 x i8]* @.str1016, i32 0, i32 0
  %6821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %6820, i64 65)
  %6822 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 13
  store %nyx_string* %6821, %nyx_string** %6822
  %6823 = getelementptr [7 x i8], [7 x i8]* @.str1017, i32 0, i32 0
  %6824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %6823, i64 6)
  %6825 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 14
  store %nyx_string* %6824, %nyx_string** %6825
  %6826 = getelementptr [3 x i8], [3 x i8]* @.str1018, i32 0, i32 0
  %6827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %6826, i64 2)
  %6828 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 15
  store %nyx_string* %6827, %nyx_string** %6828
  %6829 = getelementptr [9 x i8], [9 x i8]* @.str1019, i32 0, i32 0
  %6830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %6829, i64 8)
  %6831 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 16
  store %nyx_string* %6830, %nyx_string** %6831
  %6832 = getelementptr [63 x i8], [63 x i8]* @.str1020, i32 0, i32 0
  %6833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %6832, i64 62)
  %6834 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 17
  store %nyx_string* %6833, %nyx_string** %6834
  %6835 = getelementptr [28 x i8], [28 x i8]* @.str1021, i32 0, i32 0
  %6836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %6835, i64 27)
  %6837 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 18
  store %nyx_string* %6836, %nyx_string** %6837
  %6838 = getelementptr [4 x i8], [4 x i8]* @.str1022, i32 0, i32 0
  %6839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %6838, i64 3)
  %6840 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 19
  store %nyx_string* %6839, %nyx_string** %6840
  %6841 = call i8* @llvm.stacksave()
  br label %while_cond1136
while_cond1136:
  %6842 = load i64, i64* %6786
  %6843 = load { i64, i8* }*, { i64, i8* }** %6767
  %6844 = call i64 @nyx_array_length({ i64, i8* }* %6843)
  %6845 = icmp slt i64 %6842, %6844
  br i1 %6845, label %while_body1137, label %while_end1138
while_body1137:
  call void @llvm.stackrestore(i8* %6841)
  %6846 = load { i64, i8* }*, { i64, i8* }** %6767
  %6847 = load i64, i64* %6786
  %6848 = call i64 @nyx_array_get_checked({ i64, i8* }* %6846, i64 %6847, i64 2)
  %6849 = inttoptr i64 %6848 to %nyx_string*
  %6850 = alloca %nyx_string*
  store %nyx_string* %6849, %nyx_string** %6850
  %6851 = load %nyx_string*, %nyx_string** %6850
  %6852 = load %nyx_string*, %nyx_string** %6810
  %6853 = call i1 @nyx_string_equals(%nyx_string* %6851, %nyx_string* %6852)
  br i1 %6853, label %then1139, label %else1140
then1139:
  %6854 = load { i64, i8* }*, { i64, i8* }** %6767
  %6855 = call i64 @nyx_array_length({ i64, i8* }* %6854)
  store i64 %6855, i64* %6786
  br label %merge1141
else1140:
  %6856 = load %nyx_string*, %nyx_string** %6850
  %6857 = load %nyx_string*, %nyx_string** %6813
  %6858 = call i1 @nyx_string_equals(%nyx_string* %6856, %nyx_string* %6857)
  br i1 %6858, label %then1142, label %else1143
then1142:
  store i1 1, i1* %6771
  br label %merge1144
else1143:
  %6859 = load %nyx_string*, %nyx_string** %6850
  %6860 = load %nyx_string*, %nyx_string** %6816
  %6861 = call i1 @nyx_string_equals(%nyx_string* %6859, %nyx_string* %6860)
  br i1 %6861, label %then1145, label %else1146
then1145:
  %6862 = load %nyx_string*, %nyx_string** %6819
  %6863 = alloca %nyx_string*
  store %nyx_string* %6862, %nyx_string** %6863
  %6864 = load i64, i64* %6786
  %6865 = add i64 %6864, 1
  %6866 = load { i64, i8* }*, { i64, i8* }** %6767
  %6867 = call i64 @nyx_array_length({ i64, i8* }* %6866)
  %6868 = icmp slt i64 %6865, %6867
  br i1 %6868, label %then1148, label %else1149
then1148:
  %6869 = load { i64, i8* }*, { i64, i8* }** %6767
  %6870 = load i64, i64* %6786
  %6871 = add i64 %6870, 1
  %6872 = call i64 @nyx_array_get_checked({ i64, i8* }* %6869, i64 %6871, i64 2)
  %6873 = inttoptr i64 %6872 to %nyx_string*
  %6874 = alloca %nyx_string*
  store %nyx_string* %6873, %nyx_string** %6874
  %6875 = load %nyx_string*, %nyx_string** %6874
  %6876 = load %nyx_string*, %nyx_string** %6810
  %6877 = call i1 @nyx_string_starts_with(%nyx_string* %6875, %nyx_string* %6876)
  %6878 = xor i1 %6877, true
  br i1 %6878, label %then1151, label %else1152
then1151:
  %6879 = load %nyx_string*, %nyx_string** %6874
  store %nyx_string* %6879, %nyx_string** %6863
  br label %merge1153
else1152:
  br label %merge1153
merge1153:
  br label %merge1150
else1149:
  br label %merge1150
merge1150:
  %6880 = load %nyx_string*, %nyx_string** %6863
  %6881 = load %nyx_string*, %nyx_string** %6819
  %6882 = call i1 @nyx_string_equals(%nyx_string* %6880, %nyx_string* %6881)
  br i1 %6882, label %then1154, label %else1155
then1154:
  %6883 = load %nyx_string*, %nyx_string** %6789
  %6884 = load %nyx_string*, %nyx_string** %6819
  %6885 = call i1 @nyx_string_equals(%nyx_string* %6883, %nyx_string* %6884)
  br i1 %6885, label %then1157, label %else1158
then1157:
  %6886 = load %nyx_string*, %nyx_string** %6822
  store %nyx_string* %6886, %nyx_string** %6789
  br label %merge1159
else1158:
  br label %merge1159
merge1159:
  br label %merge1156
else1155:
  %6887 = load %nyx_string*, %nyx_string** %6863
  store %nyx_string* %6887, %nyx_string** %6777
  %6888 = load i64, i64* %6786
  %6889 = add i64 %6888, 1
  store i64 %6889, i64* %6786
  br label %merge1156
merge1156:
  br label %merge1147
else1146:
  %6890 = alloca i1
  store i1 true, i1* %6890
  %6891 = load %nyx_string*, %nyx_string** %6850
  %6892 = load %nyx_string*, %nyx_string** %6825
  %6893 = call i1 @nyx_string_equals(%nyx_string* %6891, %nyx_string* %6892)
  br i1 %6893, label %sc_or_end1161, label %sc_or_rhs1160
sc_or_rhs1160:
  %6894 = load %nyx_string*, %nyx_string** %6850
  %6895 = load %nyx_string*, %nyx_string** %6828
  %6896 = call i1 @nyx_string_equals(%nyx_string* %6894, %nyx_string* %6895)
  store i1 %6896, i1* %6890
  br label %sc_or_end1161
sc_or_end1161:
  %6897 = load i1, i1* %6890
  br i1 %6897, label %then1162, label %else1163
then1162:
  store i1 1, i1* %6790
  br label %merge1164
else1163:
  %6898 = load %nyx_string*, %nyx_string** %6850
  %6899 = load %nyx_string*, %nyx_string** %6831
  %6900 = call i1 @nyx_string_equals(%nyx_string* %6898, %nyx_string* %6899)
  br i1 %6900, label %then1165, label %else1166
then1165:
  %6901 = load i64, i64* %6786
  %6902 = add i64 %6901, 1
  %6903 = load { i64, i8* }*, { i64, i8* }** %6767
  %6904 = call i64 @nyx_array_length({ i64, i8* }* %6903)
  %6905 = icmp slt i64 %6902, %6904
  br i1 %6905, label %then1168, label %else1169
then1168:
  %6906 = load { i64, i8* }*, { i64, i8* }** %6767
  %6907 = load i64, i64* %6786
  %6908 = add i64 %6907, 1
  %6909 = call i64 @nyx_array_get_checked({ i64, i8* }* %6906, i64 %6908, i64 2)
  %6910 = inttoptr i64 %6909 to %nyx_string*
  %6911 = alloca %nyx_string*
  store %nyx_string* %6910, %nyx_string** %6911
  %6912 = load %nyx_string*, %nyx_string** %6911
  store %nyx_string* %6912, %nyx_string** %6774
  %6913 = load i64, i64* %6786
  %6914 = add i64 %6913, 1
  store i64 %6914, i64* %6786
  br label %merge1170
else1169:
  %6915 = load %nyx_string*, %nyx_string** %6834
  store %nyx_string* %6915, %nyx_string** %6789
  br label %merge1170
merge1170:
  br label %merge1167
else1166:
  %6916 = alloca i1
  store i1 false, i1* %6916
  %6917 = load i1, i1* %6807
  br i1 %6917, label %sc_and_rhs1171, label %sc_and_end1172
sc_and_rhs1171:
  %6918 = load %nyx_string*, %nyx_string** %6850
  %6919 = call i64 @nyx_string_byte_length(%nyx_string* %6918)
  %6920 = icmp sgt i64 %6919, 1
  store i1 %6920, i1* %6916
  br label %sc_and_end1172
sc_and_end1172:
  %6921 = load i1, i1* %6916
  br i1 %6921, label %then1173, label %else1174
then1173:
  %6922 = alloca i1
  store i1 false, i1* %6922
  %6923 = load %nyx_string*, %nyx_string** %6850
  %6924 = call i8 @nyx_string_char_at(%nyx_string* %6923, i64 0)
  %6925 = zext i8 %6924 to i64
  %6926 = getelementptr [1 x i8], [1 x i8]* @.str1023, i32 0, i32 0
  %6927 = load i8, i8* %6926
  %6928 = zext i8 %6927 to i64
  %6929 = icmp eq i64 %6925, %6928
  br i1 %6929, label %sc_and_rhs1176, label %sc_and_end1177
sc_and_rhs1176:
  %6930 = load %nyx_string*, %nyx_string** %6789
  %6931 = load %nyx_string*, %nyx_string** %6819
  %6932 = call i1 @nyx_string_equals(%nyx_string* %6930, %nyx_string* %6931)
  store i1 %6932, i1* %6922
  br label %sc_and_end1177
sc_and_end1177:
  %6933 = load i1, i1* %6922
  br i1 %6933, label %then1178, label %else1179
then1178:
  %6934 = load %nyx_string*, %nyx_string** %6837
  %6935 = load %nyx_string*, %nyx_string** %6770
  %6936 = call %nyx_string* @nyx_string_concat(%nyx_string* %6934, %nyx_string* %6935)
  %6937 = load %nyx_string*, %nyx_string** %6840
  %6938 = call %nyx_string* @nyx_string_concat(%nyx_string* %6936, %nyx_string* %6937)
  %6939 = load %nyx_string*, %nyx_string** %6850
  %6940 = call %nyx_string* @nyx_string_concat(%nyx_string* %6938, %nyx_string* %6939)
  store %nyx_string* %6940, %nyx_string** %6789
  br label %merge1180
else1179:
  br label %merge1180
merge1180:
  br label %merge1175
else1174:
  br label %merge1175
merge1175:
  br label %merge1167
merge1167:
  br label %merge1164
merge1164:
  br label %merge1147
merge1147:
  br label %merge1144
merge1144:
  br label %merge1141
merge1141:
  %6941 = load i64, i64* %6786
  %6942 = add i64 %6941, 1
  store i64 %6942, i64* %6786
  br label %while_cond1136
while_end1138:
  %6943 = alloca i1
  store i1 false, i1* %6943
  %6944 = load i1, i1* %6790
  br i1 %6944, label %sc_and_rhs1181, label %sc_and_end1182
sc_and_rhs1181:
  %6945 = load i1, i1* %6807
  store i1 %6945, i1* %6943
  br label %sc_and_end1182
sc_and_end1182:
  %6946 = load i1, i1* %6943
  br i1 %6946, label %then1183, label %else1184
then1183:
  %6947 = getelementptr [5 x i8], [5 x i8]* @.str1024, i32 0, i32 0
  %6948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %6947, i64 4)
  %6949 = load %nyx_string*, %nyx_string** %6770
  %6950 = call %nyx_string* @nyx_string_concat(%nyx_string* %6948, %nyx_string* %6949)
  %6951 = getelementptr [24 x i8], [24 x i8]* @.str1025, i32 0, i32 0
  %6952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %6951, i64 23)
  %6953 = call %nyx_string* @nyx_string_concat(%nyx_string* %6950, %nyx_string* %6952)
  %6954 = call i8* @nyx_string_to_cstr(%nyx_string* %6953)
  call void @nyx_print_string(i8* %6954)
  %6955 = getelementptr [42 x i8], [42 x i8]* @.str1026, i32 0, i32 0
  %6956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %6955, i64 41)
  %6957 = call i8* @nyx_string_to_cstr(%nyx_string* %6956)
  call void @nyx_print_string(i8* %6957)
  %6958 = getelementptr [88 x i8], [88 x i8]* @.str1027, i32 0, i32 0
  %6959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %6958, i64 87)
  %6960 = call i8* @nyx_string_to_cstr(%nyx_string* %6959)
  call void @nyx_print_string(i8* %6960)
  %6961 = getelementptr [94 x i8], [94 x i8]* @.str1028, i32 0, i32 0
  %6962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %6961, i64 93)
  %6963 = call i8* @nyx_string_to_cstr(%nyx_string* %6962)
  call void @nyx_print_string(i8* %6963)
  %6964 = getelementptr [94 x i8], [94 x i8]* @.str1029, i32 0, i32 0
  %6965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %6964, i64 93)
  %6966 = call i8* @nyx_string_to_cstr(%nyx_string* %6965)
  call void @nyx_print_string(i8* %6966)
  %6967 = getelementptr [34 x i8], [34 x i8]* @.str1030, i32 0, i32 0
  %6968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %6967, i64 33)
  %6969 = call i8* @nyx_string_to_cstr(%nyx_string* %6968)
  call void @nyx_print_string(i8* %6969)
  %6970 = getelementptr [1 x i8], [1 x i8]* @.str1031, i32 0, i32 0
  %6971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %6970, i64 0)
  %6972 = call i8* @nyx_string_to_cstr(%nyx_string* %6971)
  call void @nyx_print_string(i8* %6972)
  %6973 = getelementptr [71 x i8], [71 x i8]* @.str1032, i32 0, i32 0
  %6974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %6973, i64 70)
  %6975 = call i8* @nyx_string_to_cstr(%nyx_string* %6974)
  call void @nyx_print_string(i8* %6975)
  ret i64 0
else1184:
  br label %merge1185
merge1185:
  %6976 = load %nyx_string*, %nyx_string** %6789
  %6977 = getelementptr [1 x i8], [1 x i8]* @.str1033, i32 0, i32 0
  %6978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %6977, i64 0)
  %6979 = call i1 @nyx_string_equals(%nyx_string* %6976, %nyx_string* %6978)
  %6980 = xor i1 %6979, true
  br i1 %6980, label %then1186, label %else1187
then1186:
  %6981 = getelementptr [8 x i8], [8 x i8]* @.str1034, i32 0, i32 0
  %6982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %6981, i64 7)
  %6983 = load %nyx_string*, %nyx_string** %6789
  %6984 = call %nyx_string* @nyx_string_concat(%nyx_string* %6982, %nyx_string* %6983)
  %6985 = call i8* @nyx_string_to_cstr(%nyx_string* %6984)
  call void @nyx_print_string(i8* %6985)
  %6986 = getelementptr [8 x i8], [8 x i8]* @.str1035, i32 0, i32 0
  %6987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %6986, i64 7)
  %6988 = load %nyx_string*, %nyx_string** %6770
  %6989 = call %nyx_string* @nyx_string_concat(%nyx_string* %6987, %nyx_string* %6988)
  %6990 = getelementptr [37 x i8], [37 x i8]* @.str1036, i32 0, i32 0
  %6991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %6990, i64 36)
  %6992 = call %nyx_string* @nyx_string_concat(%nyx_string* %6989, %nyx_string* %6991)
  %6993 = call i8* @nyx_string_to_cstr(%nyx_string* %6992)
  call void @nyx_print_string(i8* %6993)
  ret i64 1
else1187:
  br label %merge1188
merge1188:
  %6994 = getelementptr [6 x i8], [6 x i8]* @.str1037, i32 0, i32 0
  %6995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %6994, i64 5)
  %6996 = call %nyx_string* @toolchain_version()
  %6997 = call %nyx_string* @nyx_string_concat(%nyx_string* %6995, %nyx_string* %6996)
  %6998 = getelementptr [6 x i8], [6 x i8]* @.str1038, i32 0, i32 0
  %6999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %6998, i64 5)
  %7000 = call %nyx_string* @nyx_string_concat(%nyx_string* %6997, %nyx_string* %6999)
  %7001 = load %nyx_string*, %nyx_string** %6770
  %7002 = call %nyx_string* @nyx_string_concat(%nyx_string* %7000, %nyx_string* %7001)
  %7003 = call i8* @nyx_string_to_cstr(%nyx_string* %7002)
  call void @nyx_print_string(i8* %7003)
  %7004 = load %nyx_string*, %nyx_string** %6770
  %7005 = getelementptr [5 x i8], [5 x i8]* @.str1039, i32 0, i32 0
  %7006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %7005, i64 4)
  %7007 = call i1 @nyx_string_equals(%nyx_string* %7004, %nyx_string* %7006)
  br i1 %7007, label %then1189, label %else1190
then1189:
  %7008 = getelementptr [1 x i8], [1 x i8]* @.str1040, i32 0, i32 0
  %7009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %7008, i64 0)
  %7010 = alloca %nyx_string*
  store %nyx_string* %7009, %nyx_string** %7010
  %7011 = getelementptr [1 x i8], [1 x i8]* @.str1041, i32 0, i32 0
  %7012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %7011, i64 0)
  %7013 = alloca %nyx_string*
  store %nyx_string* %7012, %nyx_string** %7013
  %7014 = getelementptr [1 x i8], [1 x i8]* @.str1042, i32 0, i32 0
  %7015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %7014, i64 0)
  %7016 = alloca %nyx_string*
  store %nyx_string* %7015, %nyx_string** %7016
  %7017 = alloca i1
  store i1 0, i1* %7017
  %7018 = getelementptr [1 x i8], [1 x i8]* @.str1043, i32 0, i32 0
  %7019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %7018, i64 0)
  %7020 = alloca %nyx_string*
  store %nyx_string* %7019, %nyx_string** %7020
  %7021 = getelementptr [1 x i8], [1 x i8]* @.str1044, i32 0, i32 0
  %7022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %7021, i64 0)
  %7023 = alloca %nyx_string*
  store %nyx_string* %7022, %nyx_string** %7023
  %7024 = alloca i64
  store i64 2, i64* %7024
  %7025 = getelementptr [7 x i8], [7 x i8]* @.str1045, i32 0, i32 0
  %7026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %7025, i64 6)
  %7027 = alloca %nyx_string*
  store %nyx_string* %7026, %nyx_string** %7027
  %7028 = getelementptr [8 x i8], [8 x i8]* @.str1046, i32 0, i32 0
  %7029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %7028, i64 7)
  %7030 = alloca %nyx_string*
  store %nyx_string* %7029, %nyx_string** %7030
  %7031 = getelementptr [1 x i8], [1 x i8]* @.str1047, i32 0, i32 0
  %7032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %7031, i64 0)
  %7033 = alloca %nyx_string*
  store %nyx_string* %7032, %nyx_string** %7033
  %7034 = getelementptr [3 x i8], [3 x i8]* @.str1048, i32 0, i32 0
  %7035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %7034, i64 2)
  %7036 = alloca %nyx_string*
  store %nyx_string* %7035, %nyx_string** %7036
  %7037 = getelementptr [8 x i8], [8 x i8]* @.str1049, i32 0, i32 0
  %7038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %7037, i64 7)
  %7039 = alloca %nyx_string*
  store %nyx_string* %7038, %nyx_string** %7039
  %7040 = getelementptr [9 x i8], [9 x i8]* @.str1050, i32 0, i32 0
  %7041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %7040, i64 8)
  %7042 = alloca %nyx_string*
  store %nyx_string* %7041, %nyx_string** %7042
  %7043 = getelementptr [6 x i8], [6 x i8]* @.str1051, i32 0, i32 0
  %7044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %7043, i64 5)
  %7045 = alloca %nyx_string*
  store %nyx_string* %7044, %nyx_string** %7045
  %7046 = call i8* @llvm.stacksave()
  br label %while_cond1192
while_cond1192:
  %7047 = load i64, i64* %7024
  %7048 = load { i64, i8* }*, { i64, i8* }** %6767
  %7049 = call i64 @nyx_array_length({ i64, i8* }* %7048)
  %7050 = icmp slt i64 %7047, %7049
  br i1 %7050, label %while_body1193, label %while_end1194
while_body1193:
  call void @llvm.stackrestore(i8* %7046)
  %7051 = load { i64, i8* }*, { i64, i8* }** %6767
  %7052 = load i64, i64* %7024
  %7053 = call i64 @nyx_array_get_checked({ i64, i8* }* %7051, i64 %7052, i64 2)
  %7054 = inttoptr i64 %7053 to %nyx_string*
  %7055 = alloca %nyx_string*
  store %nyx_string* %7054, %nyx_string** %7055
  %7056 = alloca i1
  store i1 0, i1* %7056
  %7057 = alloca i1
  store i1 true, i1* %7057
  %7058 = load %nyx_string*, %nyx_string** %7055
  %7059 = load %nyx_string*, %nyx_string** %7027
  %7060 = call i1 @nyx_string_equals(%nyx_string* %7058, %nyx_string* %7059)
  br i1 %7060, label %sc_or_end1196, label %sc_or_rhs1195
sc_or_rhs1195:
  %7061 = load %nyx_string*, %nyx_string** %7055
  %7062 = load %nyx_string*, %nyx_string** %7030
  %7063 = call i1 @nyx_string_equals(%nyx_string* %7061, %nyx_string* %7062)
  store i1 %7063, i1* %7057
  br label %sc_or_end1196
sc_or_end1196:
  %7064 = load i1, i1* %7057
  br i1 %7064, label %then1197, label %else1198
then1197:
  store i1 1, i1* %7056
  %7065 = load %nyx_string*, %nyx_string** %7033
  %7066 = alloca %nyx_string*
  store %nyx_string* %7065, %nyx_string** %7066
  %7067 = load i64, i64* %7024
  %7068 = add i64 %7067, 1
  %7069 = load { i64, i8* }*, { i64, i8* }** %6767
  %7070 = call i64 @nyx_array_length({ i64, i8* }* %7069)
  %7071 = icmp slt i64 %7068, %7070
  br i1 %7071, label %then1200, label %else1201
then1200:
  %7072 = load { i64, i8* }*, { i64, i8* }** %6767
  %7073 = load i64, i64* %7024
  %7074 = add i64 %7073, 1
  %7075 = call i64 @nyx_array_get_checked({ i64, i8* }* %7072, i64 %7074, i64 2)
  %7076 = inttoptr i64 %7075 to %nyx_string*
  %7077 = alloca %nyx_string*
  store %nyx_string* %7076, %nyx_string** %7077
  %7078 = load %nyx_string*, %nyx_string** %7077
  %7079 = load %nyx_string*, %nyx_string** %7036
  %7080 = call i1 @nyx_string_starts_with(%nyx_string* %7078, %nyx_string* %7079)
  %7081 = icmp eq i1 %7080, 0
  br i1 %7081, label %then1203, label %else1204
then1203:
  %7082 = load %nyx_string*, %nyx_string** %7077
  store %nyx_string* %7082, %nyx_string** %7066
  br label %merge1205
else1204:
  br label %merge1205
merge1205:
  br label %merge1202
else1201:
  br label %merge1202
merge1202:
  %7083 = load %nyx_string*, %nyx_string** %7066
  %7084 = load %nyx_string*, %nyx_string** %7033
  %7085 = call i1 @nyx_string_equals(%nyx_string* %7083, %nyx_string* %7084)
  br i1 %7085, label %then1206, label %else1207
then1206:
  %7086 = load %nyx_string*, %nyx_string** %7055
  store %nyx_string* %7086, %nyx_string** %7023
  br label %merge1208
else1207:
  %7087 = load %nyx_string*, %nyx_string** %7055
  %7088 = load %nyx_string*, %nyx_string** %7027
  %7089 = call i1 @nyx_string_equals(%nyx_string* %7087, %nyx_string* %7088)
  br i1 %7089, label %then1209, label %else1210
then1209:
  %7090 = load %nyx_string*, %nyx_string** %7066
  store %nyx_string* %7090, %nyx_string** %7013
  br label %merge1211
else1210:
  br label %merge1211
merge1211:
  %7091 = load %nyx_string*, %nyx_string** %7055
  %7092 = load %nyx_string*, %nyx_string** %7030
  %7093 = call i1 @nyx_string_equals(%nyx_string* %7091, %nyx_string* %7092)
  br i1 %7093, label %then1212, label %else1213
then1212:
  %7094 = load %nyx_string*, %nyx_string** %7066
  store %nyx_string* %7094, %nyx_string** %7016
  br label %merge1214
else1213:
  br label %merge1214
merge1214:
  %7095 = load i64, i64* %7024
  %7096 = add i64 %7095, 1
  store i64 %7096, i64* %7024
  br label %merge1208
merge1208:
  br label %merge1199
else1198:
  br label %merge1199
merge1199:
  %7097 = alloca i1
  store i1 false, i1* %7097
  %7098 = load i1, i1* %7056
  %7099 = icmp eq i1 %7098, 0
  br i1 %7099, label %sc_and_rhs1215, label %sc_and_end1216
sc_and_rhs1215:
  %7100 = load %nyx_string*, %nyx_string** %7055
  %7101 = load %nyx_string*, %nyx_string** %7039
  %7102 = call i1 @nyx_string_starts_with(%nyx_string* %7100, %nyx_string* %7101)
  store i1 %7102, i1* %7097
  br label %sc_and_end1216
sc_and_end1216:
  %7103 = load i1, i1* %7097
  br i1 %7103, label %then1217, label %else1218
then1217:
  store i1 1, i1* %7056
  %7104 = load %nyx_string*, %nyx_string** %7055
  %7105 = load %nyx_string*, %nyx_string** %7055
  %7106 = call i64 @nyx_string_byte_length(%nyx_string* %7105)
  %7107 = call %nyx_string* @nyx_string_substring(%nyx_string* %7104, i64 7, i64 %7106)
  store %nyx_string* %7107, %nyx_string** %7013
  %7108 = load %nyx_string*, %nyx_string** %7013
  %7109 = load %nyx_string*, %nyx_string** %7033
  %7110 = call i1 @nyx_string_equals(%nyx_string* %7108, %nyx_string* %7109)
  br i1 %7110, label %then1220, label %else1221
then1220:
  %7111 = load %nyx_string*, %nyx_string** %7027
  store %nyx_string* %7111, %nyx_string** %7023
  br label %merge1222
else1221:
  br label %merge1222
merge1222:
  br label %merge1219
else1218:
  br label %merge1219
merge1219:
  %7112 = alloca i1
  store i1 false, i1* %7112
  %7113 = load i1, i1* %7056
  %7114 = icmp eq i1 %7113, 0
  br i1 %7114, label %sc_and_rhs1223, label %sc_and_end1224
sc_and_rhs1223:
  %7115 = load %nyx_string*, %nyx_string** %7055
  %7116 = load %nyx_string*, %nyx_string** %7042
  %7117 = call i1 @nyx_string_starts_with(%nyx_string* %7115, %nyx_string* %7116)
  store i1 %7117, i1* %7112
  br label %sc_and_end1224
sc_and_end1224:
  %7118 = load i1, i1* %7112
  br i1 %7118, label %then1225, label %else1226
then1225:
  store i1 1, i1* %7056
  %7119 = load %nyx_string*, %nyx_string** %7055
  %7120 = load %nyx_string*, %nyx_string** %7055
  %7121 = call i64 @nyx_string_byte_length(%nyx_string* %7120)
  %7122 = call %nyx_string* @nyx_string_substring(%nyx_string* %7119, i64 8, i64 %7121)
  store %nyx_string* %7122, %nyx_string** %7016
  %7123 = load %nyx_string*, %nyx_string** %7016
  %7124 = load %nyx_string*, %nyx_string** %7033
  %7125 = call i1 @nyx_string_equals(%nyx_string* %7123, %nyx_string* %7124)
  br i1 %7125, label %then1228, label %else1229
then1228:
  %7126 = load %nyx_string*, %nyx_string** %7030
  store %nyx_string* %7126, %nyx_string** %7023
  br label %merge1230
else1229:
  br label %merge1230
merge1230:
  br label %merge1227
else1226:
  br label %merge1227
merge1227:
  %7127 = alloca i1
  store i1 false, i1* %7127
  %7128 = load i1, i1* %7056
  %7129 = icmp eq i1 %7128, 0
  br i1 %7129, label %sc_and_rhs1231, label %sc_and_end1232
sc_and_rhs1231:
  %7130 = load %nyx_string*, %nyx_string** %7055
  %7131 = load %nyx_string*, %nyx_string** %7045
  %7132 = call i1 @nyx_string_equals(%nyx_string* %7130, %nyx_string* %7131)
  store i1 %7132, i1* %7127
  br label %sc_and_end1232
sc_and_end1232:
  %7133 = load i1, i1* %7127
  br i1 %7133, label %then1233, label %else1234
then1233:
  store i1 1, i1* %7056
  store i1 1, i1* %7017
  br label %merge1235
else1234:
  br label %merge1235
merge1235:
  %7134 = alloca i1
  store i1 false, i1* %7134
  %7135 = load i1, i1* %7056
  %7136 = icmp eq i1 %7135, 0
  br i1 %7136, label %sc_and_rhs1236, label %sc_and_end1237
sc_and_rhs1236:
  %7137 = load %nyx_string*, %nyx_string** %7055
  %7138 = load %nyx_string*, %nyx_string** %7036
  %7139 = call i1 @nyx_string_starts_with(%nyx_string* %7137, %nyx_string* %7138)
  store i1 %7139, i1* %7134
  br label %sc_and_end1237
sc_and_end1237:
  %7140 = load i1, i1* %7134
  br i1 %7140, label %then1238, label %else1239
then1238:
  store i1 1, i1* %7056
  %7141 = load %nyx_string*, %nyx_string** %7055
  store %nyx_string* %7141, %nyx_string** %7020
  br label %merge1240
else1239:
  br label %merge1240
merge1240:
  %7142 = load i1, i1* %7056
  %7143 = icmp eq i1 %7142, 0
  br i1 %7143, label %then1241, label %else1242
then1241:
  %7144 = load %nyx_string*, %nyx_string** %7010
  %7145 = load %nyx_string*, %nyx_string** %7033
  %7146 = call i1 @nyx_string_equals(%nyx_string* %7144, %nyx_string* %7145)
  br i1 %7146, label %then1244, label %else1245
then1244:
  %7147 = load %nyx_string*, %nyx_string** %7055
  store %nyx_string* %7147, %nyx_string** %7010
  br label %merge1246
else1245:
  br label %merge1246
merge1246:
  br label %merge1243
else1242:
  br label %merge1243
merge1243:
  %7148 = load i64, i64* %7024
  %7149 = add i64 %7148, 1
  store i64 %7149, i64* %7024
  br label %while_cond1192
while_end1194:
  %7150 = load %nyx_string*, %nyx_string** %7020
  %7151 = getelementptr [1 x i8], [1 x i8]* @.str1052, i32 0, i32 0
  %7152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %7151, i64 0)
  %7153 = call i1 @nyx_string_equals(%nyx_string* %7150, %nyx_string* %7152)
  %7154 = xor i1 %7153, true
  br i1 %7154, label %then1247, label %else1248
then1247:
  %7155 = getelementptr [42 x i8], [42 x i8]* @.str1053, i32 0, i32 0
  %7156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %7155, i64 41)
  %7157 = load %nyx_string*, %nyx_string** %7020
  %7158 = call %nyx_string* @nyx_string_concat(%nyx_string* %7156, %nyx_string* %7157)
  %7159 = call i8* @nyx_string_to_cstr(%nyx_string* %7158)
  call void @nyx_print_string(i8* %7159)
  %7160 = getelementptr [80 x i8], [80 x i8]* @.str1054, i32 0, i32 0
  %7161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %7160, i64 79)
  %7162 = call i8* @nyx_string_to_cstr(%nyx_string* %7161)
  call void @nyx_print_string(i8* %7162)
  ret i64 1
else1248:
  br label %merge1249
merge1249:
  %7163 = load %nyx_string*, %nyx_string** %7023
  %7164 = getelementptr [1 x i8], [1 x i8]* @.str1055, i32 0, i32 0
  %7165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %7164, i64 0)
  %7166 = call i1 @nyx_string_equals(%nyx_string* %7163, %nyx_string* %7165)
  %7167 = xor i1 %7166, true
  br i1 %7167, label %then1250, label %else1251
then1250:
  %7168 = getelementptr [8 x i8], [8 x i8]* @.str1056, i32 0, i32 0
  %7169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %7168, i64 7)
  %7170 = load %nyx_string*, %nyx_string** %7023
  %7171 = call %nyx_string* @nyx_string_concat(%nyx_string* %7169, %nyx_string* %7170)
  %7172 = getelementptr [19 x i8], [19 x i8]* @.str1057, i32 0, i32 0
  %7173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %7172, i64 18)
  %7174 = call %nyx_string* @nyx_string_concat(%nyx_string* %7171, %nyx_string* %7173)
  %7175 = call i8* @nyx_string_to_cstr(%nyx_string* %7174)
  call void @nyx_print_string(i8* %7175)
  %7176 = getelementptr [80 x i8], [80 x i8]* @.str1058, i32 0, i32 0
  %7177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %7176, i64 79)
  %7178 = call i8* @nyx_string_to_cstr(%nyx_string* %7177)
  call void @nyx_print_string(i8* %7178)
  ret i64 1
else1251:
  br label %merge1252
merge1252:
  %7179 = load %nyx_string*, %nyx_string** %7013
  %7180 = getelementptr [1 x i8], [1 x i8]* @.str1059, i32 0, i32 0
  %7181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %7180, i64 0)
  %7182 = call i1 @nyx_string_equals(%nyx_string* %7179, %nyx_string* %7181)
  br i1 %7182, label %then1253, label %else1254
then1253:
  %7183 = getelementptr [9 x i8], [9 x i8]* @.str1060, i32 0, i32 0
  %7184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %7183, i64 8)
  %7185 = call i8* @nyx_string_to_cstr(%nyx_string* %7184)
  %7186 = call %nyx_string* @nyx_getenv(i8* %7185)
  %7187 = alloca %nyx_string*
  store %nyx_string* %7186, %nyx_string** %7187
  %7188 = load %nyx_string*, %nyx_string** %7187
  %7189 = getelementptr [3 x i8], [3 x i8]* @.str1061, i32 0, i32 0
  %7190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %7189, i64 2)
  %7191 = call i1 @nyx_string_equals(%nyx_string* %7188, %nyx_string* %7190)
  br i1 %7191, label %then1256, label %else1257
then1256:
  %7192 = getelementptr [3 x i8], [3 x i8]* @.str1062, i32 0, i32 0
  %7193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %7192, i64 2)
  store %nyx_string* %7193, %nyx_string** %7013
  br label %merge1258
else1257:
  br label %merge1258
merge1258:
  %7194 = load %nyx_string*, %nyx_string** %7013
  %7195 = getelementptr [1 x i8], [1 x i8]* @.str1063, i32 0, i32 0
  %7196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %7195, i64 0)
  %7197 = call i1 @nyx_string_equals(%nyx_string* %7194, %nyx_string* %7196)
  br i1 %7197, label %then1259, label %else1260
then1259:
  %7198 = getelementptr [3 x i8], [3 x i8]* @.str1064, i32 0, i32 0
  %7199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %7198, i64 2)
  store %nyx_string* %7199, %nyx_string** %7013
  br label %merge1261
else1260:
  br label %merge1261
merge1261:
  br label %merge1255
else1254:
  br label %merge1255
merge1255:
  %7200 = alloca i1
  store i1 false, i1* %7200
  %7201 = load %nyx_string*, %nyx_string** %7013
  %7202 = getelementptr [3 x i8], [3 x i8]* @.str1065, i32 0, i32 0
  %7203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %7202, i64 2)
  %7204 = call i1 @nyx_string_equals(%nyx_string* %7201, %nyx_string* %7203)
  %7205 = xor i1 %7204, true
  br i1 %7205, label %sc_and_rhs1262, label %sc_and_end1263
sc_and_rhs1262:
  %7206 = load %nyx_string*, %nyx_string** %7013
  %7207 = getelementptr [3 x i8], [3 x i8]* @.str1066, i32 0, i32 0
  %7208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %7207, i64 2)
  %7209 = call i1 @nyx_string_equals(%nyx_string* %7206, %nyx_string* %7208)
  %7210 = xor i1 %7209, true
  store i1 %7210, i1* %7200
  br label %sc_and_end1263
sc_and_end1263:
  %7211 = load i1, i1* %7200
  br i1 %7211, label %then1264, label %else1265
then1264:
  %7212 = getelementptr [27 x i8], [27 x i8]* @.str1067, i32 0, i32 0
  %7213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %7212, i64 26)
  %7214 = load %nyx_string*, %nyx_string** %7013
  %7215 = call %nyx_string* @nyx_string_concat(%nyx_string* %7213, %nyx_string* %7214)
  %7216 = getelementptr [29 x i8], [29 x i8]* @.str1068, i32 0, i32 0
  %7217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %7216, i64 28)
  %7218 = call %nyx_string* @nyx_string_concat(%nyx_string* %7215, %nyx_string* %7217)
  %7219 = call i8* @nyx_string_to_cstr(%nyx_string* %7218)
  call void @nyx_print_string(i8* %7219)
  ret i64 1
else1265:
  br label %merge1266
merge1266:
  %7220 = load %nyx_string*, %nyx_string** %7016
  %7221 = call i1 @validate_agents(%nyx_string* %7220)
  %7222 = icmp eq i1 %7221, 0
  br i1 %7222, label %then1267, label %else1268
then1267:
  ret i64 1
else1268:
  br label %merge1269
merge1269:
  %7223 = load %nyx_string*, %nyx_string** %7010
  %7224 = load %nyx_string*, %nyx_string** %7013
  %7225 = load %nyx_string*, %nyx_string** %7016
  %7226 = call i1 @run_init(%nyx_string* %7223, %nyx_string* %7224, %nyx_string* %7225)
  %7227 = alloca i1
  store i1 %7226, i1* %7227
  %7228 = load i1, i1* %7227
  %7229 = icmp eq i1 %7228, 0
  br i1 %7229, label %then1270, label %else1271
then1270:
  ret i64 1
else1271:
  br label %merge1272
merge1272:
  %7230 = load i1, i1* %7017
  br i1 %7230, label %then1273, label %else1274
then1273:
  %7231 = load %nyx_string*, %nyx_string** %7010
  %7232 = alloca %nyx_string*
  store %nyx_string* %7231, %nyx_string** %7232
  %7233 = load %nyx_string*, %nyx_string** %7232
  %7234 = getelementptr [1 x i8], [1 x i8]* @.str1069, i32 0, i32 0
  %7235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %7234, i64 0)
  %7236 = call i1 @nyx_string_equals(%nyx_string* %7233, %nyx_string* %7235)
  br i1 %7236, label %then1276, label %else1277
then1276:
  %7237 = getelementptr [2 x i8], [2 x i8]* @.str1070, i32 0, i32 0
  %7238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %7237, i64 1)
  store %nyx_string* %7238, %nyx_string** %7232
  br label %merge1278
else1277:
  br label %merge1278
merge1278:
  %7239 = getelementptr [1 x i8], [1 x i8]* @.str1071, i32 0, i32 0
  %7240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %7239, i64 0)
  %7241 = call i8* @nyx_string_to_cstr(%nyx_string* %7240)
  call void @nyx_print_string(i8* %7241)
  %7242 = load %nyx_string*, %nyx_string** %7232
  %7243 = load %nyx_string*, %nyx_string** %7013
  %7244 = call i1 @run_sdd_init(%nyx_string* %7242, %nyx_string* %7243)
  %7245 = alloca i1
  store i1 %7244, i1* %7245
  %7246 = load i1, i1* %7245
  %7247 = icmp eq i1 %7246, 0
  br i1 %7247, label %then1279, label %else1280
then1279:
  ret i64 1
else1280:
  br label %merge1281
merge1281:
  br label %merge1275
else1274:
  br label %merge1275
merge1275:
  ret i64 0
else1190:
  br label %merge1191
merge1191:
  %7248 = load %nyx_string*, %nyx_string** %6770
  %7249 = getelementptr [4 x i8], [4 x i8]* @.str1072, i32 0, i32 0
  %7250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %7249, i64 3)
  %7251 = call i1 @nyx_string_equals(%nyx_string* %7248, %nyx_string* %7250)
  br i1 %7251, label %then1282, label %else1283
then1282:
  %7252 = getelementptr [1 x i8], [1 x i8]* @.str1073, i32 0, i32 0
  %7253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %7252, i64 0)
  %7254 = alloca %nyx_string*
  store %nyx_string* %7253, %nyx_string** %7254
  %7255 = load { i64, i8* }*, { i64, i8* }** %6767
  %7256 = call i64 @nyx_array_length({ i64, i8* }* %7255)
  %7257 = icmp sge i64 %7256, 3
  br i1 %7257, label %then1285, label %else1286
then1285:
  %7258 = load { i64, i8* }*, { i64, i8* }** %6767
  %7259 = call i64 @nyx_array_get_checked({ i64, i8* }* %7258, i64 2, i64 2)
  %7260 = inttoptr i64 %7259 to %nyx_string*
  %7261 = alloca %nyx_string*
  store %nyx_string* %7260, %nyx_string** %7261
  %7262 = load %nyx_string*, %nyx_string** %7261
  store %nyx_string* %7262, %nyx_string** %7254
  br label %merge1287
else1286:
  br label %merge1287
merge1287:
  %7263 = load %nyx_string*, %nyx_string** %7254
  %7264 = getelementptr [5 x i8], [5 x i8]* @.str1074, i32 0, i32 0
  %7265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %7264, i64 4)
  %7266 = call i1 @nyx_string_equals(%nyx_string* %7263, %nyx_string* %7265)
  br i1 %7266, label %then1288, label %else1289
then1288:
  %7267 = getelementptr [2 x i8], [2 x i8]* @.str1075, i32 0, i32 0
  %7268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %7267, i64 1)
  %7269 = getelementptr [2 x i8], [2 x i8]* @.str1076, i32 0, i32 0
  %7270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %7269, i64 1)
  %7271 = call %nyx_string* @project_lang(%nyx_string* %7270)
  %7272 = call i1 @run_sdd_init(%nyx_string* %7268, %nyx_string* %7271)
  %7273 = alloca i1
  store i1 %7272, i1* %7273
  %7274 = load i1, i1* %7273
  br i1 %7274, label %then1291, label %else1292
then1291:
  ret i64 0
else1292:
  br label %merge1293
merge1293:
  ret i64 1
else1289:
  br label %merge1290
merge1290:
  %7275 = load %nyx_string*, %nyx_string** %7254
  %7276 = getelementptr [9 x i8], [9 x i8]* @.str1077, i32 0, i32 0
  %7277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %7276, i64 8)
  %7278 = call i1 @nyx_string_equals(%nyx_string* %7275, %nyx_string* %7277)
  br i1 %7278, label %then1294, label %else1295
then1294:
  %7279 = getelementptr [2 x i8], [2 x i8]* @.str1078, i32 0, i32 0
  %7280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %7279, i64 1)
  %7281 = getelementptr [2 x i8], [2 x i8]* @.str1079, i32 0, i32 0
  %7282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %7281, i64 1)
  %7283 = call %nyx_string* @project_lang(%nyx_string* %7282)
  %7284 = call i1 @run_sdd_evidence(%nyx_string* %7280, %nyx_string* %7283)
  %7285 = alloca i1
  store i1 %7284, i1* %7285
  %7286 = load i1, i1* %7285
  br i1 %7286, label %then1297, label %else1298
then1297:
  ret i64 0
else1298:
  br label %merge1299
merge1299:
  ret i64 1
else1295:
  br label %merge1296
merge1296:
  %7287 = load %nyx_string*, %nyx_string** %7254
  %7288 = getelementptr [1 x i8], [1 x i8]* @.str1080, i32 0, i32 0
  %7289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %7288, i64 0)
  %7290 = call i1 @nyx_string_equals(%nyx_string* %7287, %nyx_string* %7289)
  br i1 %7290, label %then1300, label %else1301
then1300:
  %7291 = getelementptr [57 x i8], [57 x i8]* @.str1081, i32 0, i32 0
  %7292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %7291, i64 56)
  %7293 = call i8* @nyx_string_to_cstr(%nyx_string* %7292)
  call void @nyx_print_string(i8* %7293)
  br label %merge1302
else1301:
  %7294 = getelementptr [48 x i8], [48 x i8]* @.str1082, i32 0, i32 0
  %7295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %7294, i64 47)
  %7296 = load %nyx_string*, %nyx_string** %7254
  %7297 = call %nyx_string* @nyx_string_concat(%nyx_string* %7295, %nyx_string* %7296)
  %7298 = getelementptr [29 x i8], [29 x i8]* @.str1083, i32 0, i32 0
  %7299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %7298, i64 28)
  %7300 = call %nyx_string* @nyx_string_concat(%nyx_string* %7297, %nyx_string* %7299)
  %7301 = call i8* @nyx_string_to_cstr(%nyx_string* %7300)
  call void @nyx_print_string(i8* %7301)
  br label %merge1302
merge1302:
  %7302 = getelementptr [69 x i8], [69 x i8]* @.str1084, i32 0, i32 0
  %7303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %7302, i64 68)
  %7304 = call i8* @nyx_string_to_cstr(%nyx_string* %7303)
  call void @nyx_print_string(i8* %7304)
  %7305 = getelementptr [79 x i8], [79 x i8]* @.str1085, i32 0, i32 0
  %7306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %7305, i64 78)
  %7307 = call i8* @nyx_string_to_cstr(%nyx_string* %7306)
  call void @nyx_print_string(i8* %7307)
  ret i64 1
else1283:
  br label %merge1284
merge1284:
  %7308 = load %nyx_string*, %nyx_string** %6770
  %7309 = getelementptr [4 x i8], [4 x i8]* @.str1086, i32 0, i32 0
  %7310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %7309, i64 3)
  %7311 = call i1 @nyx_string_equals(%nyx_string* %7308, %nyx_string* %7310)
  br i1 %7311, label %then1303, label %else1304
then1303:
  %7312 = load { i64, i8* }*, { i64, i8* }** %6767
  %7313 = call i64 @nyx_array_length({ i64, i8* }* %7312)
  %7314 = icmp slt i64 %7313, 3
  br i1 %7314, label %then1306, label %else1307
then1306:
  %7315 = getelementptr [51 x i8], [51 x i8]* @.str1087, i32 0, i32 0
  %7316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %7315, i64 50)
  %7317 = call i8* @nyx_string_to_cstr(%nyx_string* %7316)
  call void @nyx_print_string(i8* %7317)
  ret i64 1
else1307:
  br label %merge1308
merge1308:
  %7318 = load { i64, i8* }*, { i64, i8* }** %6767
  %7319 = call i64 @nyx_array_get_checked({ i64, i8* }* %7318, i64 2, i64 2)
  %7320 = inttoptr i64 %7319 to %nyx_string*
  %7321 = alloca %nyx_string*
  store %nyx_string* %7320, %nyx_string** %7321
  %7322 = getelementptr [1 x i8], [1 x i8]* @.str1088, i32 0, i32 0
  %7323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %7322, i64 0)
  %7324 = alloca %nyx_string*
  store %nyx_string* %7323, %nyx_string** %7324
  %7325 = load { i64, i8* }*, { i64, i8* }** %6767
  %7326 = call i64 @nyx_array_length({ i64, i8* }* %7325)
  %7327 = icmp sge i64 %7326, 5
  br i1 %7327, label %then1309, label %else1310
then1309:
  %7328 = load { i64, i8* }*, { i64, i8* }** %6767
  %7329 = call i64 @nyx_array_get_checked({ i64, i8* }* %7328, i64 3, i64 2)
  %7330 = inttoptr i64 %7329 to %nyx_string*
  %7331 = alloca %nyx_string*
  store %nyx_string* %7330, %nyx_string** %7331
  %7332 = load %nyx_string*, %nyx_string** %7331
  %7333 = getelementptr [7 x i8], [7 x i8]* @.str1089, i32 0, i32 0
  %7334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %7333, i64 6)
  %7335 = call i1 @nyx_string_equals(%nyx_string* %7332, %nyx_string* %7334)
  br i1 %7335, label %then1312, label %else1313
then1312:
  %7336 = load { i64, i8* }*, { i64, i8* }** %6767
  %7337 = call i64 @nyx_array_get_checked({ i64, i8* }* %7336, i64 4, i64 2)
  %7338 = inttoptr i64 %7337 to %nyx_string*
  %7339 = alloca %nyx_string*
  store %nyx_string* %7338, %nyx_string** %7339
  %7340 = load %nyx_string*, %nyx_string** %7339
  store %nyx_string* %7340, %nyx_string** %7324
  br label %merge1314
else1313:
  br label %merge1314
merge1314:
  br label %merge1311
else1310:
  br label %merge1311
merge1311:
  %7341 = call { i64, i8* }* @nyx_array_new_ptr()
  %7342 = alloca { i64, i8* }*
  store { i64, i8* }* %7341, { i64, i8* }** %7342
  %7343 = call { i64, i8* }* @nyx_array_new_ptr()
  %7344 = alloca { i64, i8* }*
  store { i64, i8* }* %7343, { i64, i8* }** %7344
  %7345 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %7346 = ptrtoint %ProjectConfig* %7345 to i64
  %7347 = call i8* @GC_malloc(i64 %7346)
  %7348 = bitcast i8* %7347 to %ProjectConfig*
  %7349 = getelementptr [8 x i8], [8 x i8]* @.str1090, i32 0, i32 0
  %7350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %7349, i64 7)
  %7351 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 0
  store %nyx_string* %7350, %nyx_string** %7351
  %7352 = getelementptr [6 x i8], [6 x i8]* @.str1091, i32 0, i32 0
  %7353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %7352, i64 5)
  %7354 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 1
  store %nyx_string* %7353, %nyx_string** %7354
  %7355 = getelementptr [1 x i8], [1 x i8]* @.str1092, i32 0, i32 0
  %7356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %7355, i64 0)
  %7357 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 2
  store %nyx_string* %7356, %nyx_string** %7357
  %7358 = getelementptr [1 x i8], [1 x i8]* @.str1093, i32 0, i32 0
  %7359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %7358, i64 0)
  %7360 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 3
  store %nyx_string* %7359, %nyx_string** %7360
  %7361 = getelementptr [1 x i8], [1 x i8]* @.str1094, i32 0, i32 0
  %7362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %7361, i64 0)
  %7363 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 4
  store %nyx_string* %7362, %nyx_string** %7363
  %7364 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 5
  store i1 0, i1* %7364
  %7365 = getelementptr [1 x i8], [1 x i8]* @.str1095, i32 0, i32 0
  %7366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %7365, i64 0)
  %7367 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 6
  store %nyx_string* %7366, %nyx_string** %7367
  %7368 = load { i64, i8* }*, { i64, i8* }** %7342
  %7369 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 7
  store { i64, i8* }* %7368, { i64, i8* }** %7369
  %7370 = load { i64, i8* }*, { i64, i8* }** %7344
  %7371 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 8
  store { i64, i8* }* %7370, { i64, i8* }** %7371
  %7372 = getelementptr [1 x i8], [1 x i8]* @.str1096, i32 0, i32 0
  %7373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %7372, i64 0)
  %7374 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 9
  store %nyx_string* %7373, %nyx_string** %7374
  %7375 = getelementptr [1 x i8], [1 x i8]* @.str1097, i32 0, i32 0
  %7376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %7375, i64 0)
  %7377 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 10
  store %nyx_string* %7376, %nyx_string** %7377
  %7378 = call { i64, i8* }* @nyx_array_new_ptr()
  %7379 = getelementptr %ProjectConfig, %ProjectConfig* %7348, i32 0, i32 11
  store { i64, i8* }* %7378, { i64, i8* }** %7379
  %7380 = load %ProjectConfig, %ProjectConfig* %7348
  %7381 = alloca %ProjectConfig
  store %ProjectConfig %7380, %ProjectConfig* %7381
  %7382 = load %nyx_string*, %nyx_string** %7321
  %7383 = load %nyx_string*, %nyx_string** %7324
  %7384 = load %ProjectConfig, %ProjectConfig* %7381
  %7385 = call i1 @run_add(%nyx_string* %7382, %nyx_string* %7383, %ProjectConfig %7384)
  %7386 = alloca i1
  store i1 %7385, i1* %7386
  %7387 = load i1, i1* %7386
  br i1 %7387, label %then1315, label %else1316
then1315:
  ret i64 0
else1316:
  br label %merge1317
merge1317:
  ret i64 1
else1304:
  br label %merge1305
merge1305:
  %7388 = load %nyx_string*, %nyx_string** %6770
  %7389 = getelementptr [7 x i8], [7 x i8]* @.str1098, i32 0, i32 0
  %7390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %7389, i64 6)
  %7391 = call i1 @nyx_string_equals(%nyx_string* %7388, %nyx_string* %7390)
  br i1 %7391, label %then1318, label %else1319
then1318:
  %7392 = getelementptr [1 x i8], [1 x i8]* @.str1099, i32 0, i32 0
  %7393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %7392, i64 0)
  %7394 = alloca %nyx_string*
  store %nyx_string* %7393, %nyx_string** %7394
  %7395 = alloca i1
  store i1 0, i1* %7395
  %7396 = alloca i64
  store i64 2, i64* %7396
  %7397 = getelementptr [7 x i8], [7 x i8]* @.str1100, i32 0, i32 0
  %7398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %7397, i64 6)
  %7399 = alloca %nyx_string*
  store %nyx_string* %7398, %nyx_string** %7399
  %7400 = getelementptr [10 x i8], [10 x i8]* @.str1101, i32 0, i32 0
  %7401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %7400, i64 9)
  %7402 = alloca %nyx_string*
  store %nyx_string* %7401, %nyx_string** %7402
  %7403 = call i8* @llvm.stacksave()
  br label %while_cond1321
while_cond1321:
  %7404 = load i64, i64* %7396
  %7405 = load { i64, i8* }*, { i64, i8* }** %6767
  %7406 = call i64 @nyx_array_length({ i64, i8* }* %7405)
  %7407 = icmp slt i64 %7404, %7406
  br i1 %7407, label %while_body1322, label %while_end1323
while_body1322:
  call void @llvm.stackrestore(i8* %7403)
  %7408 = load { i64, i8* }*, { i64, i8* }** %6767
  %7409 = load i64, i64* %7396
  %7410 = call i64 @nyx_array_get_checked({ i64, i8* }* %7408, i64 %7409, i64 2)
  %7411 = inttoptr i64 %7410 to %nyx_string*
  %7412 = alloca %nyx_string*
  store %nyx_string* %7411, %nyx_string** %7412
  %7413 = load %nyx_string*, %nyx_string** %7412
  %7414 = load %nyx_string*, %nyx_string** %7399
  %7415 = call i1 @nyx_string_equals(%nyx_string* %7413, %nyx_string* %7414)
  br i1 %7415, label %then1324, label %else1325
then1324:
  store i1 1, i1* %7395
  br label %merge1326
else1325:
  %7416 = load %nyx_string*, %nyx_string** %7412
  %7417 = load %nyx_string*, %nyx_string** %7402
  %7418 = call i1 @nyx_string_equals(%nyx_string* %7416, %nyx_string* %7417)
  %7419 = xor i1 %7418, true
  br i1 %7419, label %then1327, label %else1328
then1327:
  %7420 = load %nyx_string*, %nyx_string** %7412
  store %nyx_string* %7420, %nyx_string** %7394
  br label %merge1329
else1328:
  br label %merge1329
merge1329:
  br label %merge1326
merge1326:
  %7421 = load i64, i64* %7396
  %7422 = add i64 %7421, 1
  store i64 %7422, i64* %7396
  br label %while_cond1321
while_end1323:
  %7423 = load %nyx_string*, %nyx_string** %7394
  %7424 = load i1, i1* %7395
  %7425 = call i1 @run_report(%nyx_string* %7423, i1 %7424)
  %7426 = alloca i1
  store i1 %7425, i1* %7426
  %7427 = load i1, i1* %7426
  br i1 %7427, label %then1330, label %else1331
then1330:
  ret i64 0
else1331:
  br label %merge1332
merge1332:
  ret i64 1
else1319:
  br label %merge1320
merge1320:
  %7428 = load %nyx_string*, %nyx_string** %6770
  %7429 = getelementptr [13 x i8], [13 x i8]* @.str1102, i32 0, i32 0
  %7430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %7429, i64 12)
  %7431 = call i1 @nyx_string_equals(%nyx_string* %7428, %nyx_string* %7430)
  br i1 %7431, label %then1333, label %else1334
then1333:
  %7432 = getelementptr [1 x i8], [1 x i8]* @.str1103, i32 0, i32 0
  %7433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %7432, i64 0)
  %7434 = alloca %nyx_string*
  store %nyx_string* %7433, %nyx_string** %7434
  %7435 = load { i64, i8* }*, { i64, i8* }** %6767
  %7436 = call i64 @nyx_array_length({ i64, i8* }* %7435)
  %7437 = icmp sge i64 %7436, 3
  br i1 %7437, label %then1336, label %else1337
then1336:
  %7438 = load { i64, i8* }*, { i64, i8* }** %6767
  %7439 = call i64 @nyx_array_get_checked({ i64, i8* }* %7438, i64 2, i64 2)
  %7440 = inttoptr i64 %7439 to %nyx_string*
  %7441 = alloca %nyx_string*
  store %nyx_string* %7440, %nyx_string** %7441
  %7442 = load %nyx_string*, %nyx_string** %7441
  %7443 = getelementptr [10 x i8], [10 x i8]* @.str1104, i32 0, i32 0
  %7444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %7443, i64 9)
  %7445 = call i1 @nyx_string_equals(%nyx_string* %7442, %nyx_string* %7444)
  %7446 = xor i1 %7445, true
  br i1 %7446, label %then1339, label %else1340
then1339:
  %7447 = load %nyx_string*, %nyx_string** %7441
  store %nyx_string* %7447, %nyx_string** %7434
  br label %merge1341
else1340:
  br label %merge1341
merge1341:
  br label %merge1338
else1337:
  br label %merge1338
merge1338:
  %7448 = load %nyx_string*, %nyx_string** %7434
  %7449 = call i1 @run_capabilities(%nyx_string* %7448)
  %7450 = alloca i1
  store i1 %7449, i1* %7450
  %7451 = load i1, i1* %7450
  br i1 %7451, label %then1342, label %else1343
then1342:
  ret i64 0
else1343:
  br label %merge1344
merge1344:
  ret i64 1
else1334:
  br label %merge1335
merge1335:
  %7452 = getelementptr [9 x i8], [9 x i8]* @.str1105, i32 0, i32 0
  %7453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %7452, i64 8)
  %7454 = call i8* @nyx_string_to_cstr(%nyx_string* %7453)
  %7455 = call i1 @nyx_file_exists(i8* %7454)
  %7456 = xor i1 %7455, true
  br i1 %7456, label %then1345, label %else1346
then1345:
  %7457 = getelementptr [47 x i8], [47 x i8]* @.str1106, i32 0, i32 0
  %7458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %7457, i64 46)
  %7459 = call i8* @nyx_string_to_cstr(%nyx_string* %7458)
  call void @nyx_print_string(i8* %7459)
  %7460 = getelementptr [24 x i8], [24 x i8]* @.str1107, i32 0, i32 0
  %7461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %7460, i64 23)
  %7462 = call i8* @nyx_string_to_cstr(%nyx_string* %7461)
  call void @nyx_print_string(i8* %7462)
  %7463 = getelementptr [12 x i8], [12 x i8]* @.str1108, i32 0, i32 0
  %7464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %7463, i64 11)
  %7465 = call i8* @nyx_string_to_cstr(%nyx_string* %7464)
  call void @nyx_print_string(i8* %7465)
  %7466 = getelementptr [17 x i8], [17 x i8]* @.str1109, i32 0, i32 0
  %7467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %7466, i64 16)
  %7468 = call i8* @nyx_string_to_cstr(%nyx_string* %7467)
  call void @nyx_print_string(i8* %7468)
  %7469 = getelementptr [20 x i8], [20 x i8]* @.str1110, i32 0, i32 0
  %7470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %7469, i64 19)
  %7471 = call i8* @nyx_string_to_cstr(%nyx_string* %7470)
  call void @nyx_print_string(i8* %7471)
  %7472 = getelementptr [23 x i8], [23 x i8]* @.str1111, i32 0, i32 0
  %7473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %7472, i64 22)
  %7474 = call i8* @nyx_string_to_cstr(%nyx_string* %7473)
  call void @nyx_print_string(i8* %7474)
  ret i64 1
else1346:
  br label %merge1347
merge1347:
  %7475 = getelementptr [9 x i8], [9 x i8]* @.str1112, i32 0, i32 0
  %7476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %7475, i64 8)
  %7477 = call i8* @nyx_string_to_cstr(%nyx_string* %7476)
  %7478 = call %nyx_string* @nyx_read_file(i8* %7477)
  %7479 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 20
  store %nyx_string* %7478, %nyx_string** %7479
  %7480 = load %nyx_string*, %nyx_string** %7479
  %7481 = call %ProjectConfig @parse_toml(%nyx_string* %7480)
  %7482 = getelementptr %SharedEnv_main, %SharedEnv_main* %6765, i32 0, i32 21
  store %ProjectConfig %7481, %ProjectConfig* %7482
  %7483 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 9
  %7484 = load %nyx_string*, %nyx_string** %7483
  %7485 = getelementptr [1 x i8], [1 x i8]* @.str1113, i32 0, i32 0
  %7486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %7485, i64 0)
  %7487 = call i1 @nyx_string_equals(%nyx_string* %7484, %nyx_string* %7486)
  %7488 = xor i1 %7487, true
  br i1 %7488, label %then1348, label %else1349
then1348:
  %7489 = getelementptr [8 x i8], [8 x i8]* @.str1114, i32 0, i32 0
  %7490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %7489, i64 7)
  %7491 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 9
  %7492 = load %nyx_string*, %nyx_string** %7491
  %7493 = call %nyx_string* @nyx_string_concat(%nyx_string* %7490, %nyx_string* %7492)
  %7494 = call i8* @nyx_string_to_cstr(%nyx_string* %7493)
  call void @nyx_print_string(i8* %7494)
  ret i64 1
else1349:
  br label %merge1350
merge1350:
  %7495 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 0
  %7496 = load %nyx_string*, %nyx_string** %7495
  %7497 = getelementptr [1 x i8], [1 x i8]* @.str1115, i32 0, i32 0
  %7498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %7497, i64 0)
  %7499 = call i1 @nyx_string_equals(%nyx_string* %7496, %nyx_string* %7498)
  br i1 %7499, label %then1351, label %else1352
then1351:
  %7500 = getelementptr [45 x i8], [45 x i8]* @.str1116, i32 0, i32 0
  %7501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %7500, i64 44)
  %7502 = call i8* @nyx_string_to_cstr(%nyx_string* %7501)
  call void @nyx_print_string(i8* %7502)
  ret i64 1
else1352:
  br label %merge1353
merge1353:
  %7503 = load %nyx_string*, %nyx_string** %6777
  %7504 = getelementptr [1 x i8], [1 x i8]* @.str1117, i32 0, i32 0
  %7505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1117.c, i8* %7504, i64 0)
  %7506 = call i1 @nyx_string_equals(%nyx_string* %7503, %nyx_string* %7505)
  %7507 = xor i1 %7506, true
  br i1 %7507, label %then1354, label %else1355
then1354:
  %7508 = alloca i1
  store i1 false, i1* %7508
  %7509 = load %nyx_string*, %nyx_string** %6770
  %7510 = getelementptr [6 x i8], [6 x i8]* @.str1118, i32 0, i32 0
  %7511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1118.c, i8* %7510, i64 5)
  %7512 = call i1 @nyx_string_equals(%nyx_string* %7509, %nyx_string* %7511)
  %7513 = xor i1 %7512, true
  br i1 %7513, label %sc_and_rhs1357, label %sc_and_end1358
sc_and_rhs1357:
  %7514 = load %nyx_string*, %nyx_string** %6770
  %7515 = getelementptr [4 x i8], [4 x i8]* @.str1119, i32 0, i32 0
  %7516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1119.c, i8* %7515, i64 3)
  %7517 = call i1 @nyx_string_equals(%nyx_string* %7514, %nyx_string* %7516)
  %7518 = xor i1 %7517, true
  store i1 %7518, i1* %7508
  br label %sc_and_end1358
sc_and_end1358:
  %7519 = load i1, i1* %7508
  br i1 %7519, label %then1359, label %else1360
then1359:
  %7520 = getelementptr [53 x i8], [53 x i8]* @.str1120, i32 0, i32 0
  %7521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %7520, i64 52)
  %7522 = call i8* @nyx_string_to_cstr(%nyx_string* %7521)
  call void @nyx_print_string(i8* %7522)
  ret i64 1
else1360:
  br label %merge1361
merge1361:
  %7523 = load %nyx_string*, %nyx_string** %6777
  %7524 = call %nyx_string* @main_flag_error(%nyx_string* %7523)
  %7525 = alloca %nyx_string*
  store %nyx_string* %7524, %nyx_string** %7525
  %7526 = load %nyx_string*, %nyx_string** %7525
  %7527 = getelementptr [1 x i8], [1 x i8]* @.str1121, i32 0, i32 0
  %7528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %7527, i64 0)
  %7529 = call i1 @nyx_string_equals(%nyx_string* %7526, %nyx_string* %7528)
  %7530 = xor i1 %7529, true
  br i1 %7530, label %then1362, label %else1363
then1362:
  %7531 = getelementptr [8 x i8], [8 x i8]* @.str1122, i32 0, i32 0
  %7532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %7531, i64 7)
  %7533 = load %nyx_string*, %nyx_string** %7525
  %7534 = call %nyx_string* @nyx_string_concat(%nyx_string* %7532, %nyx_string* %7533)
  %7535 = call i8* @nyx_string_to_cstr(%nyx_string* %7534)
  call void @nyx_print_string(i8* %7535)
  ret i64 1
else1363:
  br label %merge1364
merge1364:
  %7536 = load %ProjectConfig, %ProjectConfig* %7482
  %7537 = load %nyx_string*, %nyx_string** %6777
  %7538 = call %nyx_string* @bin_name_for_main(%ProjectConfig %7536, %nyx_string* %7537)
  %7539 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 10
  store %nyx_string* %7538, %nyx_string** %7539
  %7540 = load %nyx_string*, %nyx_string** %6777
  %7541 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 2
  store %nyx_string* %7540, %nyx_string** %7541
  br label %merge1356
else1355:
  br label %merge1356
merge1356:
  %7542 = load %nyx_string*, %nyx_string** %6770
  %7543 = getelementptr [5 x i8], [5 x i8]* @.str1123, i32 0, i32 0
  %7544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %7543, i64 4)
  %7545 = call i1 @nyx_string_equals(%nyx_string* %7542, %nyx_string* %7544)
  br i1 %7545, label %then1365, label %else1366
then1365:
  %7546 = load %ProjectConfig, %ProjectConfig* %7482
  %7547 = call i64 @print_info(%ProjectConfig %7546)
  ret i64 0
else1366:
  br label %merge1367
merge1367:
  %7548 = load %nyx_string*, %nyx_string** %6770
  %7549 = getelementptr [6 x i8], [6 x i8]* @.str1124, i32 0, i32 0
  %7550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %7549, i64 5)
  %7551 = call i1 @nyx_string_equals(%nyx_string* %7548, %nyx_string* %7550)
  br i1 %7551, label %then1368, label %else1369
then1368:
  %7552 = load %ProjectConfig, %ProjectConfig* %7482
  %7553 = load i1, i1* %6771
  %7554 = load %nyx_string*, %nyx_string** %6774
  %7555 = call i1 @run_build(%ProjectConfig %7552, i1 %7553, %nyx_string* %7554)
  %7556 = alloca i1
  store i1 %7555, i1* %7556
  %7557 = load i1, i1* %7556
  br i1 %7557, label %then1371, label %else1372
then1371:
  %7558 = load %ProjectConfig, %ProjectConfig* %7482
  %7559 = call i64 @write_lockfile(%ProjectConfig %7558)
  %7560 = getelementptr [15 x i8], [15 x i8]* @.str1125, i32 0, i32 0
  %7561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %7560, i64 14)
  %7562 = call i8* @nyx_string_to_cstr(%nyx_string* %7561)
  call void @nyx_print_string(i8* %7562)
  ret i64 0
else1372:
  br label %merge1373
merge1373:
  ret i64 1
else1369:
  br label %merge1370
merge1370:
  %7563 = load %nyx_string*, %nyx_string** %6770
  %7564 = getelementptr [4 x i8], [4 x i8]* @.str1126, i32 0, i32 0
  %7565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %7564, i64 3)
  %7566 = call i1 @nyx_string_equals(%nyx_string* %7563, %nyx_string* %7565)
  br i1 %7566, label %then1374, label %else1375
then1374:
  %7567 = alloca i64
  store i64 2, i64* %7567
  %7568 = getelementptr [3 x i8], [3 x i8]* @.str1127, i32 0, i32 0
  %7569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %7568, i64 2)
  %7570 = alloca %nyx_string*
  store %nyx_string* %7569, %nyx_string** %7570
  %7571 = getelementptr [7 x i8], [7 x i8]* @.str1128, i32 0, i32 0
  %7572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %7571, i64 6)
  %7573 = alloca %nyx_string*
  store %nyx_string* %7572, %nyx_string** %7573
  %7574 = getelementptr [3 x i8], [3 x i8]* @.str1129, i32 0, i32 0
  %7575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %7574, i64 2)
  %7576 = alloca %nyx_string*
  store %nyx_string* %7575, %nyx_string** %7576
  %7577 = getelementptr [79 x i8], [79 x i8]* @.str1130, i32 0, i32 0
  %7578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %7577, i64 78)
  %7579 = alloca %nyx_string*
  store %nyx_string* %7578, %nyx_string** %7579
  %7580 = getelementptr [60 x i8], [60 x i8]* @.str1131, i32 0, i32 0
  %7581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %7580, i64 59)
  %7582 = alloca %nyx_string*
  store %nyx_string* %7581, %nyx_string** %7582
  %7583 = getelementptr [1 x i8], [1 x i8]* @.str1132, i32 0, i32 0
  %7584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %7583, i64 0)
  %7585 = alloca %nyx_string*
  store %nyx_string* %7584, %nyx_string** %7585
  %7586 = getelementptr [56 x i8], [56 x i8]* @.str1133, i32 0, i32 0
  %7587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %7586, i64 55)
  %7588 = alloca %nyx_string*
  store %nyx_string* %7587, %nyx_string** %7588
  %7589 = getelementptr [38 x i8], [38 x i8]* @.str1134, i32 0, i32 0
  %7590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1134.c, i8* %7589, i64 37)
  %7591 = alloca %nyx_string*
  store %nyx_string* %7590, %nyx_string** %7591
  %7592 = call i8* @llvm.stacksave()
  br label %while_cond1377
while_cond1377:
  %7593 = load i64, i64* %7567
  %7594 = load { i64, i8* }*, { i64, i8* }** %6767
  %7595 = call i64 @nyx_array_length({ i64, i8* }* %7594)
  %7596 = icmp slt i64 %7593, %7595
  br i1 %7596, label %while_body1378, label %while_end1379
while_body1378:
  call void @llvm.stackrestore(i8* %7592)
  %7597 = load { i64, i8* }*, { i64, i8* }** %6767
  %7598 = load i64, i64* %7567
  %7599 = call i64 @nyx_array_get_checked({ i64, i8* }* %7597, i64 %7598, i64 2)
  %7600 = inttoptr i64 %7599 to %nyx_string*
  %7601 = alloca %nyx_string*
  store %nyx_string* %7600, %nyx_string** %7601
  %7602 = load %nyx_string*, %nyx_string** %7601
  %7603 = load %nyx_string*, %nyx_string** %7570
  %7604 = call i1 @nyx_string_equals(%nyx_string* %7602, %nyx_string* %7603)
  br i1 %7604, label %then1380, label %else1381
then1380:
  %7605 = load { i64, i8* }*, { i64, i8* }** %6767
  %7606 = call i64 @nyx_array_length({ i64, i8* }* %7605)
  store i64 %7606, i64* %7567
  br label %merge1382
else1381:
  %7607 = alloca i1
  store i1 true, i1* %7607
  %7608 = load %nyx_string*, %nyx_string** %7601
  %7609 = load %nyx_string*, %nyx_string** %7573
  %7610 = call i1 @nyx_string_equals(%nyx_string* %7608, %nyx_string* %7609)
  br i1 %7610, label %sc_or_end1384, label %sc_or_rhs1383
sc_or_rhs1383:
  %7611 = load %nyx_string*, %nyx_string** %7601
  %7612 = load %nyx_string*, %nyx_string** %7576
  %7613 = call i1 @nyx_string_equals(%nyx_string* %7611, %nyx_string* %7612)
  store i1 %7613, i1* %7607
  br label %sc_or_end1384
sc_or_end1384:
  %7614 = load i1, i1* %7607
  br i1 %7614, label %then1385, label %else1386
then1385:
  %7615 = load %nyx_string*, %nyx_string** %7579
  %7616 = call i8* @nyx_string_to_cstr(%nyx_string* %7615)
  call void @nyx_print_string(i8* %7616)
  %7617 = load %nyx_string*, %nyx_string** %7582
  %7618 = call i8* @nyx_string_to_cstr(%nyx_string* %7617)
  call void @nyx_print_string(i8* %7618)
  %7619 = load %nyx_string*, %nyx_string** %7585
  %7620 = call i8* @nyx_string_to_cstr(%nyx_string* %7619)
  call void @nyx_print_string(i8* %7620)
  %7621 = load %nyx_string*, %nyx_string** %7588
  %7622 = call i8* @nyx_string_to_cstr(%nyx_string* %7621)
  call void @nyx_print_string(i8* %7622)
  %7623 = load %nyx_string*, %nyx_string** %7591
  %7624 = call i8* @nyx_string_to_cstr(%nyx_string* %7623)
  call void @nyx_print_string(i8* %7624)
  ret i64 0
else1386:
  br label %merge1387
merge1387:
  %7625 = load i64, i64* %7567
  %7626 = add i64 %7625, 1
  store i64 %7626, i64* %7567
  br label %merge1382
merge1382:
  br label %while_cond1377
while_end1379:
  %7627 = load %ProjectConfig, %ProjectConfig* %7482
  %7628 = load %nyx_string*, %nyx_string** %6774
  %7629 = call i1 @run_build(%ProjectConfig %7627, i1 0, %nyx_string* %7628)
  %7630 = alloca i1
  store i1 %7629, i1* %7630
  %7631 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 0
  %7632 = load %nyx_string*, %nyx_string** %7631
  %7633 = alloca %nyx_string*
  store %nyx_string* %7632, %nyx_string** %7633
  %7634 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 10
  %7635 = load %nyx_string*, %nyx_string** %7634
  %7636 = getelementptr [1 x i8], [1 x i8]* @.str1135, i32 0, i32 0
  %7637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1135.c, i8* %7636, i64 0)
  %7638 = call i1 @nyx_string_equals(%nyx_string* %7635, %nyx_string* %7637)
  %7639 = xor i1 %7638, true
  br i1 %7639, label %then1388, label %else1389
then1388:
  %7640 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 10
  %7641 = load %nyx_string*, %nyx_string** %7640
  store %nyx_string* %7641, %nyx_string** %7633
  br label %merge1390
else1389:
  br label %merge1390
merge1390:
  %7642 = load i1, i1* %7630
  br i1 %7642, label %then1391, label %else1392
then1391:
  %7643 = load %ProjectConfig, %ProjectConfig* %7482
  %7644 = call i64 @write_lockfile(%ProjectConfig %7643)
  %7645 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 6
  %7646 = load %nyx_string*, %nyx_string** %7645
  %7647 = alloca %nyx_string*
  store %nyx_string* %7646, %nyx_string** %7647
  %7648 = load %nyx_string*, %nyx_string** %6774
  %7649 = getelementptr [1 x i8], [1 x i8]* @.str1136, i32 0, i32 0
  %7650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %7649, i64 0)
  %7651 = call i1 @nyx_string_equals(%nyx_string* %7648, %nyx_string* %7650)
  %7652 = xor i1 %7651, true
  br i1 %7652, label %then1394, label %else1395
then1394:
  %7653 = load %nyx_string*, %nyx_string** %6774
  store %nyx_string* %7653, %nyx_string** %7647
  br label %merge1396
else1395:
  br label %merge1396
merge1396:
  %7654 = load %nyx_string*, %nyx_string** %7647
  %7655 = getelementptr [12 x i8], [12 x i8]* @.str1137, i32 0, i32 0
  %7656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %7655, i64 11)
  %7657 = call i1 @nyx_string_equals(%nyx_string* %7654, %nyx_string* %7656)
  br i1 %7657, label %then1397, label %else1398
then1397:
  %7658 = getelementptr [20 x i8], [20 x i8]* @.str1138, i32 0, i32 0
  %7659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %7658, i64 19)
  %7660 = load %nyx_string*, %nyx_string** %7633
  %7661 = call %nyx_string* @nyx_string_concat(%nyx_string* %7659, %nyx_string* %7660)
  %7662 = getelementptr [6 x i8], [6 x i8]* @.str1139, i32 0, i32 0
  %7663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %7662, i64 5)
  %7664 = call %nyx_string* @nyx_string_concat(%nyx_string* %7661, %nyx_string* %7663)
  %7665 = alloca %nyx_string*
  store %nyx_string* %7664, %nyx_string** %7665
  %7666 = load %nyx_string*, %nyx_string** %7665
  %7667 = call i8* @nyx_string_to_cstr(%nyx_string* %7666)
  %7668 = call i1 @nyx_file_exists(i8* %7667)
  %7669 = xor i1 %7668, true
  br i1 %7669, label %then1400, label %else1401
then1400:
  %7670 = getelementptr [24 x i8], [24 x i8]* @.str1140, i32 0, i32 0
  %7671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %7670, i64 23)
  %7672 = load %nyx_string*, %nyx_string** %7665
  %7673 = call %nyx_string* @nyx_string_concat(%nyx_string* %7671, %nyx_string* %7672)
  %7674 = call i8* @nyx_string_to_cstr(%nyx_string* %7673)
  call void @nyx_print_string(i8* %7674)
  ret i64 1
else1401:
  br label %merge1402
merge1402:
  %7675 = getelementptr [36 x i8], [36 x i8]* @.str1141, i32 0, i32 0
  %7676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %7675, i64 35)
  %7677 = call i8* @nyx_string_to_cstr(%nyx_string* %7676)
  %7678 = call i64 @nyx_exec_code(i8* %7677)
  %7679 = icmp ne i64 %7678, 0
  br i1 %7679, label %then1403, label %else1404
then1403:
  %7680 = getelementptr [24 x i8], [24 x i8]* @.str1142, i32 0, i32 0
  %7681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %7680, i64 23)
  %7682 = load %nyx_string*, %nyx_string** %7665
  %7683 = call %nyx_string* @nyx_string_concat(%nyx_string* %7681, %nyx_string* %7682)
  %7684 = getelementptr [45 x i8], [45 x i8]* @.str1143, i32 0, i32 0
  %7685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %7684, i64 44)
  %7686 = call %nyx_string* @nyx_string_concat(%nyx_string* %7683, %nyx_string* %7685)
  %7687 = call i8* @nyx_string_to_cstr(%nyx_string* %7686)
  call void @nyx_print_string(i8* %7687)
  %7688 = getelementptr [54 x i8], [54 x i8]* @.str1144, i32 0, i32 0
  %7689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %7688, i64 53)
  %7690 = load %nyx_string*, %nyx_string** %7665
  %7691 = call %nyx_string* @nyx_string_concat(%nyx_string* %7689, %nyx_string* %7690)
  %7692 = call i8* @nyx_string_to_cstr(%nyx_string* %7691)
  call void @nyx_print_string(i8* %7692)
  ret i64 1
else1404:
  br label %merge1405
merge1405:
  %7693 = getelementptr [10 x i8], [10 x i8]* @.str1145, i32 0, i32 0
  %7694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %7693, i64 9)
  %7695 = load %nyx_string*, %nyx_string** %7665
  %7696 = call %nyx_string* @nyx_string_concat(%nyx_string* %7694, %nyx_string* %7695)
  %7697 = alloca %nyx_string*
  store %nyx_string* %7696, %nyx_string** %7697
  %7698 = alloca i64
  store i64 2, i64* %7698
  %7699 = alloca i1
  store i1 0, i1* %7699
  %7700 = getelementptr [2 x i8], [2 x i8]* @.str1146, i32 0, i32 0
  %7701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %7700, i64 1)
  %7702 = alloca %nyx_string*
  store %nyx_string* %7701, %nyx_string** %7702
  %7703 = getelementptr [3 x i8], [3 x i8]* @.str1147, i32 0, i32 0
  %7704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %7703, i64 2)
  %7705 = alloca %nyx_string*
  store %nyx_string* %7704, %nyx_string** %7705
  %7706 = getelementptr [9 x i8], [9 x i8]* @.str1148, i32 0, i32 0
  %7707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %7706, i64 8)
  %7708 = alloca %nyx_string*
  store %nyx_string* %7707, %nyx_string** %7708
  %7709 = getelementptr [7 x i8], [7 x i8]* @.str1149, i32 0, i32 0
  %7710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %7709, i64 6)
  %7711 = alloca %nyx_string*
  store %nyx_string* %7710, %nyx_string** %7711
  %7712 = call i8* @llvm.stacksave()
  br label %while_cond1406
while_cond1406:
  %7713 = load i64, i64* %7698
  %7714 = load { i64, i8* }*, { i64, i8* }** %6767
  %7715 = call i64 @nyx_array_length({ i64, i8* }* %7714)
  %7716 = icmp slt i64 %7713, %7715
  br i1 %7716, label %while_body1407, label %while_end1408
while_body1407:
  call void @llvm.stackrestore(i8* %7712)
  %7717 = load { i64, i8* }*, { i64, i8* }** %6767
  %7718 = load i64, i64* %7698
  %7719 = call i64 @nyx_array_get_checked({ i64, i8* }* %7717, i64 %7718, i64 2)
  %7720 = inttoptr i64 %7719 to %nyx_string*
  %7721 = alloca %nyx_string*
  store %nyx_string* %7720, %nyx_string** %7721
  %7722 = load i1, i1* %7699
  br i1 %7722, label %then1409, label %else1410
then1409:
  %7723 = load %nyx_string*, %nyx_string** %7697
  %7724 = load %nyx_string*, %nyx_string** %7702
  %7725 = call %nyx_string* @nyx_string_concat(%nyx_string* %7723, %nyx_string* %7724)
  %7726 = load %nyx_string*, %nyx_string** %7721
  %7727 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %6765, %nyx_string* %7726)
  %7728 = call %nyx_string* @nyx_string_concat(%nyx_string* %7725, %nyx_string* %7727)
  store %nyx_string* %7728, %nyx_string** %7697
  br label %merge1411
else1410:
  %7729 = load %nyx_string*, %nyx_string** %7721
  %7730 = load %nyx_string*, %nyx_string** %7705
  %7731 = call i1 @nyx_string_equals(%nyx_string* %7729, %nyx_string* %7730)
  br i1 %7731, label %then1412, label %else1413
then1412:
  store i1 1, i1* %7699
  br label %merge1414
else1413:
  %7732 = alloca i1
  store i1 true, i1* %7732
  %7733 = load %nyx_string*, %nyx_string** %7721
  %7734 = load %nyx_string*, %nyx_string** %7708
  %7735 = call i1 @nyx_string_equals(%nyx_string* %7733, %nyx_string* %7734)
  br i1 %7735, label %sc_or_end1416, label %sc_or_rhs1415
sc_or_rhs1415:
  %7736 = load %nyx_string*, %nyx_string** %7721
  %7737 = load %nyx_string*, %nyx_string** %7711
  %7738 = call i1 @nyx_string_equals(%nyx_string* %7736, %nyx_string* %7737)
  store i1 %7738, i1* %7732
  br label %sc_or_end1416
sc_or_end1416:
  %7739 = load i1, i1* %7732
  br i1 %7739, label %then1417, label %else1418
then1417:
  %7740 = load i64, i64* %7698
  %7741 = add i64 %7740, 1
  store i64 %7741, i64* %7698
  br label %merge1419
else1418:
  br label %merge1419
merge1419:
  br label %merge1414
merge1414:
  br label %merge1411
merge1411:
  %7742 = load i64, i64* %7698
  %7743 = add i64 %7742, 1
  store i64 %7743, i64* %7698
  br label %while_cond1406
while_end1408:
  %7744 = load %nyx_string*, %nyx_string** %7697
  %7745 = call i8* @nyx_string_to_cstr(%nyx_string* %7744)
  %7746 = call i64 @nyx_exec_code(i8* %7745)
  ret i64 %7746
else1398:
  br label %merge1399
merge1399:
  %7747 = load %nyx_string*, %nyx_string** %7647
  %7748 = getelementptr [1 x i8], [1 x i8]* @.str1150, i32 0, i32 0
  %7749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1150.c, i8* %7748, i64 0)
  %7750 = call i1 @nyx_string_equals(%nyx_string* %7747, %nyx_string* %7749)
  %7751 = xor i1 %7750, true
  br i1 %7751, label %then1420, label %else1421
then1420:
  %7752 = getelementptr [51 x i8], [51 x i8]* @.str1151, i32 0, i32 0
  %7753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1151.c, i8* %7752, i64 50)
  %7754 = load %nyx_string*, %nyx_string** %7647
  %7755 = call %nyx_string* @nyx_string_concat(%nyx_string* %7753, %nyx_string* %7754)
  %7756 = call i8* @nyx_string_to_cstr(%nyx_string* %7755)
  call void @nyx_print_string(i8* %7756)
  %7757 = getelementptr [27 x i8], [27 x i8]* @.str1152, i32 0, i32 0
  %7758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1152.c, i8* %7757, i64 26)
  %7759 = load %nyx_string*, %nyx_string** %7647
  %7760 = call %nyx_string* @nyx_string_concat(%nyx_string* %7758, %nyx_string* %7759)
  %7761 = getelementptr [47 x i8], [47 x i8]* @.str1153, i32 0, i32 0
  %7762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1153.c, i8* %7761, i64 46)
  %7763 = call %nyx_string* @nyx_string_concat(%nyx_string* %7760, %nyx_string* %7762)
  %7764 = call i8* @nyx_string_to_cstr(%nyx_string* %7763)
  call void @nyx_print_string(i8* %7764)
  ret i64 1
else1421:
  br label %merge1422
merge1422:
  %7765 = getelementptr [3 x i8], [3 x i8]* @.str1154, i32 0, i32 0
  %7766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1154.c, i8* %7765, i64 2)
  %7767 = load %nyx_string*, %nyx_string** %7633
  %7768 = call %nyx_string* @nyx_string_concat(%nyx_string* %7766, %nyx_string* %7767)
  %7769 = alloca %nyx_string*
  store %nyx_string* %7768, %nyx_string** %7769
  %7770 = getelementptr %ProjectConfig, %ProjectConfig* %7482, i32 0, i32 10
  %7771 = load %nyx_string*, %nyx_string** %7770
  %7772 = getelementptr [1 x i8], [1 x i8]* @.str1155, i32 0, i32 0
  %7773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1155.c, i8* %7772, i64 0)
  %7774 = call i1 @nyx_string_equals(%nyx_string* %7771, %nyx_string* %7773)
  %7775 = xor i1 %7774, true
  br i1 %7775, label %then1423, label %else1424
then1423:
  %7776 = getelementptr [10 x i8], [10 x i8]* @.str1156, i32 0, i32 0
  %7777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1156.c, i8* %7776, i64 9)
  %7778 = load %nyx_string*, %nyx_string** %7633
  %7779 = call %nyx_string* @nyx_string_concat(%nyx_string* %7777, %nyx_string* %7778)
  store %nyx_string* %7779, %nyx_string** %7769
  br label %merge1425
else1424:
  br label %merge1425
merge1425:
  %7780 = alloca i64
  store i64 2, i64* %7780
  %7781 = alloca i1
  store i1 0, i1* %7781
  %7782 = getelementptr [2 x i8], [2 x i8]* @.str1157, i32 0, i32 0
  %7783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1157.c, i8* %7782, i64 1)
  %7784 = alloca %nyx_string*
  store %nyx_string* %7783, %nyx_string** %7784
  %7785 = getelementptr [3 x i8], [3 x i8]* @.str1158, i32 0, i32 0
  %7786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1158.c, i8* %7785, i64 2)
  %7787 = alloca %nyx_string*
  store %nyx_string* %7786, %nyx_string** %7787
  %7788 = getelementptr [10 x i8], [10 x i8]* @.str1159, i32 0, i32 0
  %7789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1159.c, i8* %7788, i64 9)
  %7790 = alloca %nyx_string*
  store %nyx_string* %7789, %nyx_string** %7790
  %7791 = getelementptr [9 x i8], [9 x i8]* @.str1160, i32 0, i32 0
  %7792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1160.c, i8* %7791, i64 8)
  %7793 = alloca %nyx_string*
  store %nyx_string* %7792, %nyx_string** %7793
  %7794 = getelementptr [7 x i8], [7 x i8]* @.str1161, i32 0, i32 0
  %7795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1161.c, i8* %7794, i64 6)
  %7796 = alloca %nyx_string*
  store %nyx_string* %7795, %nyx_string** %7796
  %7797 = call i8* @llvm.stacksave()
  br label %while_cond1426
while_cond1426:
  %7798 = load i64, i64* %7780
  %7799 = load { i64, i8* }*, { i64, i8* }** %6767
  %7800 = call i64 @nyx_array_length({ i64, i8* }* %7799)
  %7801 = icmp slt i64 %7798, %7800
  br i1 %7801, label %while_body1427, label %while_end1428
while_body1427:
  call void @llvm.stackrestore(i8* %7797)
  %7802 = load { i64, i8* }*, { i64, i8* }** %6767
  %7803 = load i64, i64* %7780
  %7804 = call i64 @nyx_array_get_checked({ i64, i8* }* %7802, i64 %7803, i64 2)
  %7805 = inttoptr i64 %7804 to %nyx_string*
  %7806 = alloca %nyx_string*
  store %nyx_string* %7805, %nyx_string** %7806
  %7807 = load i1, i1* %7781
  br i1 %7807, label %then1429, label %else1430
then1429:
  %7808 = load %nyx_string*, %nyx_string** %7769
  %7809 = load %nyx_string*, %nyx_string** %7784
  %7810 = call %nyx_string* @nyx_string_concat(%nyx_string* %7808, %nyx_string* %7809)
  %7811 = load %nyx_string*, %nyx_string** %7806
  %7812 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %6765, %nyx_string* %7811)
  %7813 = call %nyx_string* @nyx_string_concat(%nyx_string* %7810, %nyx_string* %7812)
  store %nyx_string* %7813, %nyx_string** %7769
  br label %merge1431
else1430:
  %7814 = load %nyx_string*, %nyx_string** %7806
  %7815 = load %nyx_string*, %nyx_string** %7787
  %7816 = call i1 @nyx_string_equals(%nyx_string* %7814, %nyx_string* %7815)
  br i1 %7816, label %then1432, label %else1433
then1432:
  store i1 1, i1* %7781
  br label %merge1434
else1433:
  %7817 = load %nyx_string*, %nyx_string** %7806
  %7818 = load %nyx_string*, %nyx_string** %7790
  %7819 = call i1 @nyx_string_equals(%nyx_string* %7817, %nyx_string* %7818)
  br i1 %7819, label %then1435, label %else1436
then1435:
  %7820 = load i64, i64* %7780
  store i64 %7820, i64* %7780
  br label %merge1437
else1436:
  %7821 = alloca i1
  store i1 true, i1* %7821
  %7822 = load %nyx_string*, %nyx_string** %7806
  %7823 = load %nyx_string*, %nyx_string** %7793
  %7824 = call i1 @nyx_string_equals(%nyx_string* %7822, %nyx_string* %7823)
  br i1 %7824, label %sc_or_end1439, label %sc_or_rhs1438
sc_or_rhs1438:
  %7825 = load %nyx_string*, %nyx_string** %7806
  %7826 = load %nyx_string*, %nyx_string** %7796
  %7827 = call i1 @nyx_string_equals(%nyx_string* %7825, %nyx_string* %7826)
  store i1 %7827, i1* %7821
  br label %sc_or_end1439
sc_or_end1439:
  %7828 = load i1, i1* %7821
  br i1 %7828, label %then1440, label %else1441
then1440:
  %7829 = load i64, i64* %7780
  %7830 = add i64 %7829, 1
  store i64 %7830, i64* %7780
  br label %merge1442
else1441:
  %7831 = load %nyx_string*, %nyx_string** %7769
  %7832 = load %nyx_string*, %nyx_string** %7784
  %7833 = call %nyx_string* @nyx_string_concat(%nyx_string* %7831, %nyx_string* %7832)
  %7834 = load %nyx_string*, %nyx_string** %7806
  %7835 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %6765, %nyx_string* %7834)
  %7836 = call %nyx_string* @nyx_string_concat(%nyx_string* %7833, %nyx_string* %7835)
  store %nyx_string* %7836, %nyx_string** %7769
  br label %merge1442
merge1442:
  br label %merge1437
merge1437:
  br label %merge1434
merge1434:
  br label %merge1431
merge1431:
  %7837 = load i64, i64* %7780
  %7838 = add i64 %7837, 1
  store i64 %7838, i64* %7780
  br label %while_cond1426
while_end1428:
  %7839 = load %nyx_string*, %nyx_string** %7769
  %7840 = call i8* @nyx_string_to_cstr(%nyx_string* %7839)
  %7841 = call i64 @nyx_exec_code(i8* %7840)
  %7842 = alloca i64
  store i64 %7841, i64* %7842
  %7843 = load i64, i64* %7842
  ret i64 %7843
else1392:
  br label %merge1393
merge1393:
  ret i64 1
else1375:
  br label %merge1376
merge1376:
  %7844 = getelementptr [24 x i8], [24 x i8]* @.str1162, i32 0, i32 0
  %7845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1162.c, i8* %7844, i64 23)
  %7846 = load %nyx_string*, %nyx_string** %6770
  %7847 = call %nyx_string* @nyx_string_concat(%nyx_string* %7845, %nyx_string* %7846)
  %7848 = call i8* @nyx_string_to_cstr(%nyx_string* %7847)
  call void @nyx_print_string(i8* %7848)
  %7849 = getelementptr [110 x i8], [110 x i8]* @.str1163, i32 0, i32 0
  %7850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1163.c, i8* %7849, i64 109)
  %7851 = call i8* @nyx_string_to_cstr(%nyx_string* %7850)
  call void @nyx_print_string(i8* %7851)
  ret i64 1
}

define internal %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_main, %SharedEnv_main* %env.param, i32 0, i32 21
  %23 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %23
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1164, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1164.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1165, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1165.c, i8* %30, i64 1)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i64, i64* %29
  %35 = load %nyx_string*, %nyx_string** %23
  %36 = call i64 @nyx_string_byte_length(%nyx_string* %35)
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %38 = load %nyx_string*, %nyx_string** %23
  %39 = load i64, i64* %29
  %40 = load i64, i64* %29
  %41 = add i64 %40, 1
  %42 = call %nyx_string* @nyx_string_substring(%nyx_string* %38, i64 %39, i64 %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = load %nyx_string*, %nyx_string** %43
  %45 = load %nyx_string*, %nyx_string** %26
  %46 = call i1 @nyx_string_equals(%nyx_string* %44, %nyx_string* %45)
  br i1 %46, label %then3, label %else4
then3:
  %47 = load %nyx_string*, %nyx_string** %28
  %48 = load %nyx_string*, %nyx_string** %26
  %49 = call %nyx_string* @nyx_string_concat(%nyx_string* %47, %nyx_string* %48)
  %50 = load %nyx_string*, %nyx_string** %32
  %51 = call %nyx_string* @nyx_string_concat(%nyx_string* %49, %nyx_string* %50)
  %52 = load %nyx_string*, %nyx_string** %26
  %53 = call %nyx_string* @nyx_string_concat(%nyx_string* %51, %nyx_string* %52)
  %54 = load %nyx_string*, %nyx_string** %26
  %55 = call %nyx_string* @nyx_string_concat(%nyx_string* %53, %nyx_string* %54)
  store %nyx_string* %55, %nyx_string** %28
  br label %merge5
else4:
  %56 = load %nyx_string*, %nyx_string** %28
  %57 = load %nyx_string*, %nyx_string** %43
  %58 = call %nyx_string* @nyx_string_concat(%nyx_string* %56, %nyx_string* %57)
  store %nyx_string* %58, %nyx_string** %28
  br label %merge5
merge5:
  %59 = load i64, i64* %29
  %60 = add i64 %59, 1
  store i64 %60, i64* %29
  br label %while_cond0
while_end2:
  %61 = load %nyx_string*, %nyx_string** %28
  %62 = load %nyx_string*, %nyx_string** %26
  %63 = call %nyx_string* @nyx_string_concat(%nyx_string* %61, %nyx_string* %62)
  ret %nyx_string* %63
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %7852 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %7853 = call %nyx_string* @nyx_string_from_ptr(i8* %7852, i64 64)
  store %nyx_string* %7853, %nyx_string** @std_base64____b64_chars
  %7854 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %7855 = call %nyx_string* @nyx_string_from_ptr(i8* %7854, i64 64)
  store %nyx_string* %7855, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

