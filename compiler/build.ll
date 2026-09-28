source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%ProjectConfig = type { %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }*, %nyx_string*, %nyx_string*, { i64, i8* }* }

%AgentsMerge = type { %nyx_string*, { i64, i8* }* }

%AgentsSeccion = type { %nyx_string*, { i64, i8* }* }

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
@.str200 = private unnamed_addr constant [20 x i8] c"<!-- nyx:inicio -->\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [17 x i8] c"<!-- nyx:fin -->\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [3 x i8] c"es\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [183 x i8] c"<!-- Reglas de ESTE proyecto: escríbelas acá arriba, antes del bloque de nyx; mandan sobre él. `nyx update --sync-docs` solo reemplaza lo que está entre nyx:inicio y nyx:fin. -->\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [173 x i8] c"<!-- Rules for THIS project: write them up here, above the nyx block; they override it. `nyx update --sync-docs` only replaces what sits between nyx:inicio and nyx:fin. -->\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [18 x i8] c"<!-- nyx-version:\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [1 x i8] c"\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [1 x i8] c"\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [1 x i8] c"\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [4 x i8] c"```\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [4 x i8] c"## \00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [25 x i8] c"<!-- proyecto:inicio -->\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [22 x i8] c"<!-- proyecto:fin -->\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [56 x i8] c"se conservó el bloque proyecto:inicio … proyecto:fin\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [21 x i8] c"<!-- sdd:trigger -->\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [1 x i8] c"\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [52 x i8] c"se conservó el disparador de nyx sdd (sdd:trigger)\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [1 x i8] c"\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [1 x i8] c"\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [10 x i8] c"<!-- gen:\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [1 x i8] c"\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [3 x i8] c"«\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [36 x i8] c"» se reemplazó por la plantilla; \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [111 x i8] c" línea(s) suya(s) no están en la plantilla nueva (texto viejo de nyx o ediciones tuyas): quedaron en el .bak\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [50 x i8] c"la introducción se reemplazó por la plantilla; \00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [64 x i8] c" línea(s) no están en la plantilla nueva: quedaron en el .bak\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [16 x i8] c"se conservó «\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [27 x i8] c"» (no es de la plantilla)\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [1 x i8] c"\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [31 x i8] c"error: no existe la plantilla \00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [1 x i8] c"\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [18 x i8] c"  → AGENTS.md: \00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [1 x i8] c"\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [21 x i8] c"/templates/gitignore\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [11 x i8] c"{{binary}}\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [1 x i8] c"\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [2 x i8] c",\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [28 x i8] c"error: --agent inválido: '\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [46 x i8] c"' (valores válidos: claude, cursor, copilot)\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [72 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot]\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [1 x i8] c"\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [1 x i8] c"\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [20 x i8] c"/templates/adapters\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [2 x i8] c",\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [1 x i8] c"\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [2 x i8] c"/\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [2 x i8] c".\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [4 x i8] c".md\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [10 x i8] c"/.github'\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [44 x i8] c"warning: falta la plantilla del adaptador '\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [20 x i8] c") — no se sembró\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [2 x i8] c"/\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [1 x i8] c"\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [74 x i8] c"error: no encuentro la toolchain de Nyx (NYX_HOME vacío o sin templates/\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [84 x i8] c"/): el contexto para agentes (AGENTS.md, CAPABILITIES.md, docs/nyx/) NO se sembró.\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [82 x i8] c"  Exporta NYX_HOME (o reinstala con install.sh) y ejecuta: nyx update --sync-docs\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [17 x i8] c"/CAPABILITIES.md\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides'\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [20 x i8] c"/en/docs/nyx/LLM.md\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [17 x i8] c"/docs/nyx/LLM.md\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [14 x i8] c"error: falta \00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [71 x i8] c" en la toolchain: docs/nyx/LLM.md (la referencia densa) NO se sembró.\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [111 x i8] c"  Reinstala con install.sh (o ejecuta make install-local desde el monorepo) y después: nyx update --sync-docs\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [17 x i8] c"/docs/nyx/guides\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [2 x i8] c"/\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides/\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [28 x i8] c"GENERATED by `nyx sdd init`\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [3 x i8] c"es\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [28 x i8] c"  skipped (already there): \00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [25 x i8] c"  salteado (ya existe): \00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [2 x i8] c"/\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [27 x i8] c"error: falta la plantilla \00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [19 x i8] c" en la toolchain: \00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [16 x i8] c" NO se sembró.\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [3 x i8] c"  \00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [1 x i8] c"\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [1 x i8] c"\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [20 x i8] c"# Evidence — nyx \00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [21 x i8] c"# Evidencia — nyx \00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [7 x i8] c"\0a<!-- \00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [110 x i8] c" from the gotcha table of the installed toolchain — do not edit by hand; `nyx update` regenerates it. -->\0a\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [319 x i8] c"Traps and rules that are LIVE in the toolchain this project was seeded with. Each\0aline carries the stable id, the anchor term to look up in `AGENTS.md` and\0a`docs/nyx/LLM.md`, and the test in the language repo that proves it. This file is\0aevidence, not advice: if a line here contradicts a manual, the manual is stale.\0a\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [334 x i8] c"Trampas y reglas VIVAS en la toolchain con la que se sembró este proyecto. Cada\0alínea trae el id estable, el término ancla para buscar en `AGENTS.md` y en\0a`docs/nyx/LLM.md`, y el test del repo del lenguaje que la prueba. Este archivo es\0aevidencia, no consejo: si una línea de acá contradice a un manual, el manual quedó viejo.\0a\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [1 x i8] c"\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [3 x i8] c"id\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [6 x i8] c"since\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [5 x i8] c"test\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [3 x i8] c"es\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [5 x i8] c"** (\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [9 x i8] c", since \00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [7 x i8] c") — \00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [14 x i8] c" — anchor `\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [2 x i8] c"`\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [12 x i8] c" — test `\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [14 x i8] c"\0a## Retired\0a\0a\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [16 x i8] c"\0a## Retirados\0a\0a\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [139 x i8] c"These were real traps and are not any more: if a manual, a blog post or an older\0aagent still repeats them, it is wrong for this version.\0a\0a\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [150 x i8] c"Estas fueron trampas reales y ya no lo son: si un manual, un artículo o un agente\0aviejo las sigue repitiendo, está equivocado para esta versión.\0a\0a\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [1 x i8] c"\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [3 x i8] c"id\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [3 x i8] c"es\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [14 x i8] c"** (fixed in \00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [7 x i8] c") — \00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [4 x i8] c".md\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [1 x i8] c"\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [4 x i8] c"// \00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [80 x i8] c" from the installed toolchain's gotcha table — regenerate with `nyx update`.\0a\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [96 x i8] c"// Edit it and it becomes yours: with this header gone, `nyx sdd init` never touches it again.\0a\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [72 x i8] c"// Each block greps src/ for a trap the compiler cannot catch for you.\0a\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [20 x i8] c"import \22std/regex\22\0a\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [83 x i8] c"// `nyx test` compiles and runs every test INSIDE the toolchain (cwd = NYX_HOME),\0a\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [85 x i8] c"// not inside the project: a bare readdir(\22src\22) would read the wrong directory and\0a\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [83 x i8] c"// this file would pass without looking at anything. The project directory is the\0a\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [83 x i8] c"// one the runner came from (OLDPWD). If it cannot be found, the first test below\0a\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [56 x i8] c"// FAILS out loud instead of passing on an empty scan.\0a\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [31 x i8] c"fn project_root() -> String {\0a\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [47 x i8] c"    if file_exists(\22nyx.toml\22) { return \22.\22 }\0a\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [40 x i8] c"    let old: String = getenv(\22OLDPWD\22)\0a\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [20 x i8] c"    if old != \22\22 {\0a\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [58 x i8] c"        if file_exists(old + \22/nyx.toml\22) { return old }\0a\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [15 x i8] c"    return \22\22\0a\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [79 x i8] c"// Every .nx under `dir`, recursively. readdir() never returns \22.\22 or \22..\22; a\0a\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [57 x i8] c"// directory is told apart by file_exists(path + \22/.\22).\0a\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [37 x i8] c"fn nx_files(dir: String) -> Array {\0a\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [25 x i8] c"    var out: Array = []\0a\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [49 x i8] c"    if file_exists(dir) == false { return out }\0a\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [39 x i8] c"    let entries: Array = readdir(dir)\0a\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [34 x i8] c"    while i < entries.length() {\0a\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [36 x i8] c"        let e: String = entries[i]\0a\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [39 x i8] c"        let p: String = dir + \22/\22 + e\0a\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [32 x i8] c"        if e.endsWith(\22.nx\22) {\0a\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [25 x i8] c"            out.push(p)\0a\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [18 x i8] c"        } else {\0a\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [40 x i8] c"            if file_exists(p + \22/.\22) {\0a\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [46 x i8] c"                let sub: Array = nx_files(p)\0a\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [32 x i8] c"                var j: int = 0\0a\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [42 x i8] c"                while j < sub.length() {\0a\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [44 x i8] c"                    let s: String = sub[j]\0a\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [33 x i8] c"                    out.push(s)\0a\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [31 x i8] c"                    j = j + 1\0a\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [19 x i8] c"                }\0a\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [15 x i8] c"            }\0a\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [16 x i8] c"    return out\0a\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [77 x i8] c"// Lines of src/ matching `pattern`, as `src/file.nx:LINE` (relative to the\0a\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [53 x i8] c"// project, so the message is a path you can open).\0a\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [45 x i8] c"fn grep_sources(pattern: String) -> Array {\0a\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [26 x i8] c"    var hits: Array = []\0a\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [35 x i8] c"    if root == \22\22 { return hits }\0a\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [48 x i8] c"    let files: Array = nx_files(root + \22/src\22)\0a\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [20 x i8] c"    var f: int = 0\0a\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [32 x i8] c"    while f < files.length() {\0a\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [37 x i8] c"        let path: String = files[f]\0a\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [34 x i8] c"        var shown: String = path\0a\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [101 x i8] c"        if path.startsWith(root + \22/\22) { shown = path.substring(root.length() + 1, path.length()) }\0a\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [56 x i8] c"        let lines: Array = read_file(path).split(\22\5cn\22)\0a\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [24 x i8] c"        var i: int = 0\0a\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [36 x i8] c"        while i < lines.length() {\0a\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [41 x i8] c"            let line: String = lines[i]\0a\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [58 x i8] c"            let scanned: String = gotcha_scan_line(line)\0a\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [99 x i8] c"            if regex_is_match(scanned, pattern) { hits.push(shown + \22:\22 + int_to_string(i + 1)) }\0a\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [23 x i8] c"            i = i + 1\0a\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [19 x i8] c"        f = f + 1\0a\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [17 x i8] c"    return hits\0a\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [52 x i8] c"test \22the project sources are visible from here\22 {\0a\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [126 x i8] c"    assert(root != \22\22, \22cannot find the project root (no nyx.toml): every check below would pass without scanning anything\22)\0a\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [89 x i8] c"    assert(file_exists(root + \22/src\22), \22no src/ in the project root: nothing to check\22)\0a\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [1 x i8] c"\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [3 x i8] c"id\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [14 x i8] c"test \22gotcha \00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [3 x i8] c": \00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [5 x i8] c"\22 {\0a\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [37 x i8] c"    let hits: Array = grep_sources(\22\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [33 x i8] c"    assert(hits.length() == 0, \22\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [3 x i8] c" (\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [28 x i8] c") at: \22 + hits.join(\22, \22))\0a\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [47 x i8] c"test \22every file in tests/ has test blocks\22 {\0a\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [50 x i8] c"    let files: Array = nx_files(root + \22/tests\22)\0a\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [32 x i8] c"    while i < files.length() {\0a\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [34 x i8] c"        let p: String = files[i]\0a\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [114 x i8] c"        assert(read_file(p).indexOf(\22test \5c\22\22) >= 0, p + \22 has no test blocks: nyx test would skip it silently\22)\0a\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [30 x i8] c"warning: no hay AGENTS.md en \00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [80 x i8] c": el disparador del andamiaje NO se insertó (ejecuta `nyx update --sync-docs`)\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [21 x i8] c"<!-- sdd:trigger -->\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [47 x i8] c"  skipped (already there): AGENTS.md (trigger)\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [47 x i8] c"  salteado (ya existe): AGENTS.md (disparador)\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [22 x i8] c"<!-- sdd:trigger -->\0a\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [3 x i8] c"es\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [150 x i8] c"- Si `docs/constitution.md` todavía contiene `SDD_INCOMPLETE`, no escribas código: sigue `docs/sdd/onboarding.md` y ofrece al usuario completarla.\0a\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [122 x i8] c"- Ante una funcionalidad nueva sin `specs/NNN-feature/spec.md`, ofrece escribir la spec primero (ver `specs/README.md`).\0a\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [152 x i8] c"- If `docs/constitution.md` still contains `SDD_INCOMPLETE`, do not write code yet: follow `docs/sdd/onboarding.md` and offer the user to complete it.\0a\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [113 x i8] c"- For a new feature with no `specs/NNN-feature/spec.md`, offer to write the spec first (see `specs/README.md`).\0a\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [36 x i8] c"  AGENTS.md (+2 lines: the trigger)\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [40 x i8] c"  AGENTS.md (+2 líneas: el disparador)\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [36 x i8] c"  AGENTS.md (+2 lines: the trigger)\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [40 x i8] c"  AGENTS.md (+2 líneas: el disparador)\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [16 x i8] c"/docs/evidence'\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [59 x i8] c"  skipped (yours, no GENERATED header): docs/evidence/nyx-\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [4 x i8] c".md\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [65 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): docs/evidence/nyx-\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [4 x i8] c".md\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [34 x i8] c"  regenerated: docs/evidence/nyx-\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [4 x i8] c".md\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [33 x i8] c"  regenerado: docs/evidence/nyx-\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [4 x i8] c".md\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [41 x i8] c"  already up to date: docs/evidence/nyx-\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [4 x i8] c".md\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [39 x i8] c"  ya está al día: docs/evidence/nyx-\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [4 x i8] c".md\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [42 x i8] c"  regenerated: tests/constitution_test.nx\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [41 x i8] c"  regenerado: tests/constitution_test.nx\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [67 x i8] c"  skipped (yours, no GENERATED header): tests/constitution_test.nx\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [73 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): tests/constitution_test.nx\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [49 x i8] c"  already up to date: tests/constitution_test.nx\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [47 x i8] c"  ya está al día: tests/constitution_test.nx\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [12 x i8] c"/templates/\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [5 x i8] c"/sdd\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [1 x i8] c"\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [17 x i8] c"/constitution.md\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [49 x i8] c"error: the SDD scaffolding templates (templates/\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [59 x i8] c"/sdd/) are missing from the toolchain: NOTHING was seeded.\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [61 x i8] c"error: no encuentro las plantillas del andamiaje (templates/\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [44 x i8] c"/sdd/) en la toolchain: NO se sembró nada.\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [104 x i8] c"  Reinstall with install.sh (or run `make install-local` from the monorepo) and try again: nyx sdd init\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [109 x i8] c"  Reinstala con install.sh (o corre `make install-local` desde el monorepo) e intenta de nuevo: nyx sdd init\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [13 x i8] c"/docs/adr' '\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [13 x i8] c"/docs/sdd' '\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [18 x i8] c"/docs/evidence' '\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [10 x i8] c"/specs' '\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [8 x i8] c"/tests'\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [40 x i8] c"SDD scaffolding (optional, reversible):\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [38 x i8] c"Andamiaje SDD (opcional, reversible):\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [16 x i8] c"constitution.md\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [22 x i8] c"/docs/constitution.md\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [12 x i8] c"glossary.md\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [18 x i8] c"/docs/glossary.md\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [16 x i8] c"adr-template.md\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [27 x i8] c"/docs/adr/0000-template.md\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [16 x i8] c"specs-README.md\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [17 x i8] c"/specs/README.md\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [14 x i8] c"onboarding.md\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [24 x i8] c"/docs/sdd/onboarding.md\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [4 x i8] c".md\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [3 x i8] c"  \00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [3 x i8] c"  \00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [1 x i8] c"\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [94 x i8] c"  Next: an agent reading AGENTS.md will offer to complete docs/constitution.md (7 questions).\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [98 x i8] c"  Ahora: un agente que lea AGENTS.md va a ofrecerte completar docs/constitution.md (7 preguntas).\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [89 x i8] c"  Reversible: to go back to a plain init, delete docs/constitution.md, docs/glossary.md,\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [90 x i8] c"  Reversible: para volver a un init normal, borra docs/constitution.md, docs/glossary.md,\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [78 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ and tests/constitution_test.nx\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [76 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ y tests/constitution_test.nx\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [1 x i8] c"\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [19 x i8] c"error: directory '\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [17 x i8] c"' already exists\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [10 x i8] c"/nyx.toml\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [13 x i8] c"/src/main.nx\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [12 x i8] c"  Created: \00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [2 x i8] c"/\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [15 x i8] c"  Next:    cd \00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [12 x i8] c" && nyx run\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [31 x i8] c"error: nyx.toml already exists\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [6 x i8] c"myapp\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [13 x i8] c"mkdir -p src\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [2 x i8] c".\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [2 x i8] c".\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [33 x i8] c"  Created: nyx.toml, src/main.nx\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [21 x i8] c"  Build:   nyx build\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [19 x i8] c"  Run:     nyx run\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [14 x i8] c"   resolving \00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [5 x i8] c"http\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [4 x i8] c"git\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [2 x i8] c" \00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [26 x i8] c"  error: failed to fetch \00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [7 x i8] c" from \00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [12 x i8] c"  Fetched: \00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [128 x i8] c"use of undefined value|defined with type .* but expected|expected instruction|invalid redefinition of|invalid forward reference\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [37 x i8] c"undefined reference|undefined symbol\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [14 x i8] c"if grep -qE '\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [99 x i8] c"echo \22  -> esto es casi seguro un BUG del compilador Nyx (IR invalido), no de tu codigo (archivo: \00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [74 x i8] c"). Repórtalo con 'nyx report' (el reporte incluye contexto util).\22 >&2; \00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [6 x i8] c"else \00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [91 x i8] c"echo \22  -> this is almost certainly a Nyx compiler BUG (invalid IR), not your code (file: \00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [76 x i8] c"). Report it with 'nyx report' (the report includes useful context).\22 >&2; \00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [16 x i8] c"elif grep -qE '\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [176 x i8] c"echo \22  -> simbolo no encontrado al linkear: si es una funcion extern C tuya, revisa el nombre/lib; si es de la stdlib de Nyx, es un bug -- repórtalo con 'nyx report'.\22 >&2; \00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [6 x i8] c"else \00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [184 x i8] c"echo \22  -> symbol not found at link time: if this is your own extern C function, check the name/lib; if it is a stdlib function, it is a Nyx bug -- report it with 'nyx report'.\22 >&2; \00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [6 x i8] c"else \00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [127 x i8] c"echo \22  -> fallo de link sin patron reconocido; si sospechas que es un bug del compilador, repórtalo con 'nyx report'.\22 >&2; \00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [6 x i8] c"else \00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [119 x i8] c"echo \22  -> link failure with no recognized pattern; if you suspect a compiler bug, report it with 'nyx report'.\22 >&2; \00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [326 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22 >&2; return 0; }\0a\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [22 x i8] c"nyx_pista_import() {\0a\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [99 x i8] c"  for n in $(grep -oE \22'[A-Za-z_][A-Za-z0-9_]*' not declared\22 \22$1\22 | cut -d\22'\22 -f2 | sort -u); do\0a\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [95 x i8] c"    def=$(grep -rlE \22^(pub |export )?(async )?fn $n\5c(\22 \22$ORIG_DIR/src\22 2>/dev/null | head -1)\0a\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [31 x i8] c"    [ -n \22$def\22 ] || continue\0a\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [59 x i8] c"    rel=$(echo \22$def\22 | sed \22s|^$ORIG_DIR/||; s|\5c.nx$||\22)\0a\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [81 x i8] c"    priv=''; grep -qE \22^fn $n\5c(\22 \22$def\22 && priv=' (y es privada: le falta pub)'\0a\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [243 x i8] c"    echo \22nota: '$n' está en $rel$priv y este módulo no lo importa. Sin [lib] compilaba porque el programa inlineado comparte un solo espacio de nombres; una biblioteca se compila sola y ve solo lo que importa: agrega  import \5c\22$rel\5c\22\22 >&2\0a\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [8 x i8] c"  done\0a\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [12 x i8] c"  return 0\0a\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [2 x i8] c"/\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [8 x i8] c"import \00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [1 x i8] c"\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [1 x i8] c"\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [1 x i8] c"a"
@.str654 = private unnamed_addr constant [1 x i8] c"z"
@.str655 = private unnamed_addr constant [1 x i8] c"A"
@.str656 = private unnamed_addr constant [1 x i8] c"Z"
@.str657 = private unnamed_addr constant [1 x i8] c"0"
@.str658 = private unnamed_addr constant [1 x i8] c"9"
@.str659 = private unnamed_addr constant [1 x i8] c"_"
@.str660 = private unnamed_addr constant [1 x i8] c"r"
@.str661 = private unnamed_addr constant [1 x i8] c"\22"
@.str662 = private unnamed_addr constant [1 x i8] c"\22"
@.str663 = private unnamed_addr constant [1 x i8] c"\22"
@.str664 = private unnamed_addr constant [1 x i8] c"\22"
@.str665 = private unnamed_addr constant [1 x i8] c"\22"
@.str666 = private unnamed_addr constant [1 x i8] c"\22"
@.str667 = private unnamed_addr constant [1 x i8] c"\22"
@.str668 = private unnamed_addr constant [1 x i8] c"\22"
@.str669 = private unnamed_addr constant [1 x i8] c"\5c"
@.str670 = private unnamed_addr constant [1 x i8] c"\22"
@.str671 = private unnamed_addr constant [1 x i8] c"'"
@.str672 = private unnamed_addr constant [1 x i8] c"\5c"
@.str673 = private unnamed_addr constant [1 x i8] c"'"
@.str674 = private unnamed_addr constant [2 x i8] c" \00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [3 x i8] c"{}\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [1 x i8] c"/"
@.str677 = private unnamed_addr constant [1 x i8] c"/"
@.str678 = private unnamed_addr constant [1 x i8] c"\0a"
@.str679 = private unnamed_addr constant [1 x i8] c"/"
@.str680 = private unnamed_addr constant [1 x i8] c"*"
@.str681 = private unnamed_addr constant [1 x i8] c"/"
@.str682 = private unnamed_addr constant [1 x i8] c"*"
@.str683 = private unnamed_addr constant [1 x i8] c"*"
@.str684 = private unnamed_addr constant [1 x i8] c"/"
@.str685 = private unnamed_addr constant [1 x i8] c"{"
@.str686 = private unnamed_addr constant [1 x i8] c"}"
@.str687 = private unnamed_addr constant [1 x i8] c" "
@.str688 = private unnamed_addr constant [1 x i8] c"\09"
@.str689 = private unnamed_addr constant [1 x i8] c"\0d"
@.str690 = private unnamed_addr constant [1 x i8] c"\0a"
@.str691 = private unnamed_addr constant [1 x i8] c"\0a"
@.str692 = private unnamed_addr constant [1 x i8] c"f"
@.str693 = private unnamed_addr constant [1 x i8] c"n"
@.str694 = private unnamed_addr constant [1 x i8] c"("
@.str695 = private unnamed_addr constant [1 x i8] c")"
@.str696 = private unnamed_addr constant [1 x i8] c"{"
@.str697 = private unnamed_addr constant [1 x i8] c"{"
@.str698 = private unnamed_addr constant [1 x i8] c"}"
@.str699 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [6 x i8] c"impl \00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [6 x i8] c"impl<\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [7 x i8] c"trait \00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [11 x i8] c"pub trait \00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [14 x i8] c"export trait \00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [1 x i8] c"\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [10 x i8] c"interfaz:\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [1 x i8] c"\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [3 x i8] c"i:\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [2 x i8] c"|\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [12 x i8] c"/prelude.nx\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [2 x i8] c"|\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [2 x i8] c"=\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [1 x i8] c"\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [2 x i8] c",\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [2 x i8] c":\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [2 x i8] c":\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [2 x i8] c"|\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [2 x i8] c"|\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [2 x i8] c"|\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [60 x i8] c"LIB_OBJS=\22\22\0aLIB_MAP=\22\22\0amkdir -p \22$ORIG_DIR/target/nyx-lib\22\0a\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [2 x i8] c"/\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [2 x i8] c"_\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [26 x i8] c"$ORIG_DIR/target/nyx-lib/\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [2 x i8] c"-\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [3 x i8] c".o\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [8 x i8] c".inline\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [30 x i8] c"NYX_LIB_UNIT=1 NYX_LIB_SELF=\22\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [20 x i8] c"\22 NYX_LIB_MODULES=\22\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [39 x i8] c"\22 NYX_SRC=\22$LSRC.nx\22 NYX_SRC_DISPLAY=\22\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [35 x i8] c".nx\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [4 x i8] c"\22 )\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [10 x i8] c"if [ -f \22\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [28 x i8] c"\22 ]; then echo '   reusing \00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [43 x i8] c" (lib, sin cambios)'; LIB_OBJS=\22$LIB_OBJS \00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [22 x i8] c"\22; LIB_MAP=\22$LIB_MAP \00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [2 x i8] c"=\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [12 x i8] c"elif [ -f \22\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [13 x i8] c"\22 ]; then :\0a\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [27 x i8] c"else\0a  echo '   compiling \00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [9 x i8] c" (lib)'\0a\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [35 x i8] c"  rm -f \22$ORIG_DIR/target/nyx-lib/\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [5 x i8] c"-\22*\0a\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [55 x i8] c"  LSRC=\22$(mktemp /tmp/nyx_lib_XXXXXX)\22; cp \22$ORIG_DIR/\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [17 x i8] c".nx\22 \22$LSRC.nx\22\0a\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [10 x i8] c"  lrc=0; \00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [26 x i8] c" > \22$LOG\22 2>&1 || lrc=$?\0a\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [66 x i8] c"  if [ $lrc -eq 3 ]; then grep -F '⚠' \22$LOG\22 >&2 || true; : > \22\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [62 x i8] c"  elif [ $lrc -ne 0 ]; then echo \22error: nyx compile failed (\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [111 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; nyx_pista $lrc; nyx_pista_import \22$LOG\22; rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22; exit 1\0a\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [45 x i8] c"  else\0a    grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [14 x i8] c"    clang -c \00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [38 x i8] c" -Wno-override-module \22$LSRC.ll\22 -o \22\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [45 x i8] c"\22 2> \22$LOG\22 || { echo \22error: clang failed (\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [36 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [25 x i8] c"    LIB_OBJS=\22$LIB_OBJS \00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [8 x i8] c"\22\0a  fi\0a\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [42 x i8] c"  rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22\0afi\0a\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [1 x i8] c"\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [1 x i8] c"\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [24 x i8] c"/.nyx/runtime/runtime.c\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [1 x i8] c"\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [2 x i8] c".\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [1 x i8] c"\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [1 x i8] c"\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [1 x i8] c"\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [86 x i8] c"ORIG_DIR=\22$(pwd)\22\0aLOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0atrap 'rm -f \22$LOG\22' EXIT\0a\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [29 x i8] c"echo \22NYX_LIB_MAP:$LIB_MAP\22\0a\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [15 x i8] c"/tmp/nyx_libs_\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [1 x i8] c"\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [1 x i8] c"\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [1 x i8] c"\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [3 x i8] c" [\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [2 x i8] c"]\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [3 x i8] c" v\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [1 x i8] c"\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [1 x i8] c"\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [1 x i8] c"\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [1 x i8] c"\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [1 x i8] c"\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [1 x i8] c"\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [1 x i8] c"\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [1 x i8] c"\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [2 x i8] c".\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [1 x i8] c"\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [77 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c $RT/net.c $RT/thread.c $RT/regex.c \00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [89 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c $RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [83 x i8] c"$RT/compress.c $RT/random.c $RT/url.c $RT/msgpack.c $RT/websocket.c $RT/persist.c \00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [65 x i8] c"$RT/http2.c $RT/process.c $RT/llama_adapter.c $RT/os/os_posix.c \00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [17 x i8] c"if nyx_rt_auto \22\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [31 x i8] c"; then RT_IN=(\22$RT_AUTO\22); fi\0a\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [1 x i8] c"\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [2 x i8] c"/\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [2 x i8] c"/\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [3 x i8] c"\22$\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [13 x i8] c"{RT_IN[@]}\22 \00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [1 x i8] c"\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [1 x i8] c"\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [18 x i8] c"NYX_LIB_MODULES=\22\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [2 x i8] c",\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [19 x i8] c"\22 ) > \22$LOG\22 2>&1 \00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [93 x i8] c"|| { rc=$?; echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; nyx_pista $rc; exit 1; }\0a\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [34 x i8] c"grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [22 x i8] c" \22$SRC.ll\22 $LIB_OBJS \00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [1 x i8] c"\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [2 x i8] c"#\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [95 x i8] c"ASY=\22$(grep -m1 '^; nyx-asyncify-imports: ' \22$SRC.ll\22 | sed 's/^; nyx-asyncify-imports: //')\22\0a\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [24 x i8] c"if [ -n \22$ASY\22 ]; then\0a\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [10 x i8] c"  WOPT=\22$\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [49 x i8] c"{NYX_WASM_OPT:-$(command -v wasm-opt || true)}\22\0a\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [207 x i8] c"  test -n \22$WOPT\22 || { echo \22error: el programa usa imports que suspenden (await que espera al anfitrion: $ASY) y falta wasm-opt - sudo apt install binaryen, o NYX_WASM_OPT=/ruta/a/wasm-opt\22 >&2; exit 1; }\0a\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [41 x i8] c"  \22$WOPT\22 \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [58 x i8] c".wasm\22 --asyncify --pass-arg=asyncify-imports@\22$ASY\22 -O2 \00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [78 x i8] c"|| { echo \22error: wasm-opt --asyncify fallo:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [1 x i8] c"\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [1 x i8] c"\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [2 x i8] c"/\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [1 x i8] c"\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [3 x i8] c"./\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [1 x i8] c"\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [1 x i8] c"\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [1 x i8] c"\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [1 x i8] c"/"
@.str960 = private unnamed_addr constant [2 x i8] c"-\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [1 x i8] c"\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [1 x i8] c"\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [1 x i8] c"\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [7 x i8] c"0.34.0\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [73 x i8] c"> Completa las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [80 x i8] c"FRICTION.md ya existe con contenido — avísale al usuario para que lo revise.\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [78 x i8] c"creado FRICTION.md — completa las secciones (tu asistente IA puede hacerlo)\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [72 x i8] c"y AVÍSALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [1 x i8] c"\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [66 x i8] c"error: el reporte parece vacío — completa la plantilla primero\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [1 x i8] c"\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [1 x i8] c"\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [1 x i8] c"\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [17 x i8] c"nyx_rt_auto() {\0a\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [41 x i8] c"  [ -n \22$NYX_NO_RT_CACHE\22 ] && return 1\0a\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [24 x i8] c"  local fl=\22$1\22; shift\0a\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [92 x i8] c"  local base=\22$XDG_CACHE_HOME\22; [ -n \22$base\22 ] || base=\22$HOME/.cache\22; base=\22$base/nyx/rt\22\0a\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [177 x i8] c"  local key; key=$( { printf '%s\5cn' \22$fl\22 \22$*\22; clang --version 2>/dev/null | head -1; cat \22$@\22 runtime/*.h runtime/os/*.h 2>/dev/null; } | sha256sum | cut -c1-16) || return 1\0a\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [35 x i8] c"  local a=\22$base/$key/libnyxrt.a\22\0a\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [83 x i8] c"  if [ -f \22$a\22 ]; then touch \22$base/$key\22 2>/dev/null; RT_AUTO=\22$a\22; return 0; fi\0a\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [49 x i8] c"  mkdir -p \22$base/$key\22 2>/dev/null || return 1\0a\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [89 x i8] c"  find \22$base\22 -mindepth 1 -maxdepth 1 -type d -mtime +14 -exec rm -rf {} + 2>/dev/null\0a\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [68 x i8] c"  local tmp; tmp=$(mktemp -d \22$base/$key/.tmp.XXXXXX\22) || return 1\0a\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [15 x i8] c"  local f n=0\0a\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [114 x i8] c"  for f in \22$@\22; do n=$((n+1)); clang $fl -Wno-deprecated-declarations -c \22$f\22 -o \22$tmp/$n.o\22 2>/dev/null & done\0a\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [8 x i8] c"  wait\0a\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [138 x i8] c"  if [ \22$(ls \22$tmp\22 | grep -c '\5c.o$')\22 = \22$n\22 ] && ar rcs \22$tmp/libnyxrt.a\22 \22$tmp\22/*.o 2>/dev/null && mv -f \22$tmp/libnyxrt.a\22 \22$a\22; then\0a\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [43 x i8] c"    rm -rf \22$tmp\22; RT_AUTO=\22$a\22; return 0\0a\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [6 x i8] c"  fi\0a\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [27 x i8] c"  rm -rf \22$tmp\22; return 1\0a\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [1 x i8] c"\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [1 x i8] c"\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [1 x i8] c"\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [4 x i8] c"std\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [2 x i8] c".\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [1 x i8] c"\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [1 x i8] c"\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [5 x i8] c"http\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [4 x i8] c"web\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [8 x i8] c"browser\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [4 x i8] c"dom\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [5 x i8] c"vdom\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [3 x i8] c"db\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [5 x i8] c"json\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [8 x i8] c"barcode\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [4 x i8] c"pdf\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [5 x i8] c"file\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [3 x i8] c"io\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [5 x i8] c"path\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [4 x i8] c"net\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [4 x i8] c"url\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [5 x i8] c"smtp\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [6 x i8] c"async\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [7 x i8] c"random\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [5 x i8] c"time\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [7 x i8] c"string\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [4 x i8] c"set\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [4 x i8] c"box\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [5 x i8] c"args\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [4 x i8] c"log\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [1 x i8] c"\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [1 x i8] c"("
@.str1118 = private unnamed_addr constant [1 x i8] c")"
@.str1119 = private unnamed_addr constant [2 x i8] c"/\00"
@.str1119.c = internal global %nyx_string* null
@.str1120 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [1 x i8] c"\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [1 x i8] c"\00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [4 x i8] c"///\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [1 x i8] c"\00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [2 x i8] c" \00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [14 x i8] c"pub async fn \00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [17 x i8] c"export async fn \00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [2 x i8] c"`\00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [1 x i8] c"("
@.str1135 = private unnamed_addr constant [1 x i8] c"{"
@.str1136 = private unnamed_addr constant [1 x i8] c"\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [1 x i8] c"\00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [1 x i8] c"\00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [1 x i8] c"\00"
@.str1149.c = internal global %nyx_string* null
@.str1150 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str1150.c = internal global %nyx_string* null
@.str1151 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str1151.c = internal global %nyx_string* null
@.str1152 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str1152.c = internal global %nyx_string* null
@.str1153 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1153.c = internal global %nyx_string* null
@.str1154 = private unnamed_addr constant [2 x i8] c"s\00"
@.str1154.c = internal global %nyx_string* null
@.str1155 = private unnamed_addr constant [2 x i8] c")\00"
@.str1155.c = internal global %nyx_string* null
@.str1156 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1156.c = internal global %nyx_string* null
@.str1157 = private unnamed_addr constant [8 x i8] c"no-wasm\00"
@.str1157.c = internal global %nyx_string* null
@.str1158 = private unnamed_addr constant [31 x i8] c" · *no existe en wasm32-wasi*\00"
@.str1158.c = internal global %nyx_string* null
@.str1159 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1159.c = internal global %nyx_string* null
@.str1160 = private unnamed_addr constant [1 x i8] c"\00"
@.str1160.c = internal global %nyx_string* null
@.str1161 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str1161.c = internal global %nyx_string* null
@.str1162 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1162.c = internal global %nyx_string* null
@.str1163 = private unnamed_addr constant [1 x i8] c"\00"
@.str1163.c = internal global %nyx_string* null
@.str1164 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str1164.c = internal global %nyx_string* null
@.str1165 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str1165.c = internal global %nyx_string* null
@.str1166 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str1166.c = internal global %nyx_string* null
@.str1167 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str1167.c = internal global %nyx_string* null
@.str1168 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str1168.c = internal global %nyx_string* null
@.str1169 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str1169.c = internal global %nyx_string* null
@.str1170 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str1170.c = internal global %nyx_string* null
@.str1171 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str1171.c = internal global %nyx_string* null
@.str1172 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str1172.c = internal global %nyx_string* null
@.str1173 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str1173.c = internal global %nyx_string* null
@.str1174 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str1174.c = internal global %nyx_string* null
@.str1175 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str1175.c = internal global %nyx_string* null
@.str1176 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str1176.c = internal global %nyx_string* null
@.str1177 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str1177.c = internal global %nyx_string* null
@.str1178 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1178.c = internal global %nyx_string* null
@.str1179 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str1179.c = internal global %nyx_string* null
@.str1180 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str1180.c = internal global %nyx_string* null
@.str1181 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str1181.c = internal global %nyx_string* null
@.str1182 = private unnamed_addr constant [15 x i8] c"NYX_CAPS_STAMP\00"
@.str1182.c = internal global %nyx_string* null
@.str1183 = private unnamed_addr constant [1 x i8] c"\00"
@.str1183.c = internal global %nyx_string* null
@.str1184 = private unnamed_addr constant [18 x i8] c"<!-- nyx-stdlib: \00"
@.str1184.c = internal global %nyx_string* null
@.str1185 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str1185.c = internal global %nyx_string* null
@.str1186 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str1186.c = internal global %nyx_string* null
@.str1187 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str1187.c = internal global %nyx_string* null
@.str1188 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str1188.c = internal global %nyx_string* null
@.str1189 = private unnamed_addr constant [1 x i8] c"\00"
@.str1189.c = internal global %nyx_string* null
@.str1190 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str1190.c = internal global %nyx_string* null
@.str1191 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1191.c = internal global %nyx_string* null
@.str1192 = private unnamed_addr constant [4 x i8] c"## \00"
@.str1192.c = internal global %nyx_string* null
@.str1193 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str1193.c = internal global %nyx_string* null
@.str1194 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str1194.c = internal global %nyx_string* null
@.str1195 = private unnamed_addr constant [1 x i8] c"\00"
@.str1195.c = internal global %nyx_string* null
@.str1196 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str1196.c = internal global %nyx_string* null
@.str1197 = private unnamed_addr constant [3 x i8] c" (\00"
@.str1197.c = internal global %nyx_string* null
@.str1198 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str1198.c = internal global %nyx_string* null
@.str1199 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1199.c = internal global %nyx_string* null
@.str1200 = private unnamed_addr constant [1 x i8] c"\00"
@.str1200.c = internal global %nyx_string* null
@.str1201 = private unnamed_addr constant [1 x i8] c"\00"
@.str1201.c = internal global %nyx_string* null
@.str1202 = private unnamed_addr constant [1 x i8] c"\00"
@.str1202.c = internal global %nyx_string* null
@.str1203 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1203.c = internal global %nyx_string* null
@.str1204 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1204.c = internal global %nyx_string* null
@.str1205 = private unnamed_addr constant [5 x i8] c"test\00"
@.str1205.c = internal global %nyx_string* null
@.str1206 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1206.c = internal global %nyx_string* null
@.str1207 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1207.c = internal global %nyx_string* null
@.str1208 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1208.c = internal global %nyx_string* null
@.str1209 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1209.c = internal global %nyx_string* null
@.str1210 = private unnamed_addr constant [1 x i8] c"\00"
@.str1210.c = internal global %nyx_string* null
@.str1211 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str1211.c = internal global %nyx_string* null
@.str1212 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1212.c = internal global %nyx_string* null
@.str1213 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1213.c = internal global %nyx_string* null
@.str1214 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1214.c = internal global %nyx_string* null
@.str1215 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str1215.c = internal global %nyx_string* null
@.str1216 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str1216.c = internal global %nyx_string* null
@.str1217 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str1217.c = internal global %nyx_string* null
@.str1218 = private unnamed_addr constant [1 x i8] c"-"
@.str1219 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str1219.c = internal global %nyx_string* null
@.str1220 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str1220.c = internal global %nyx_string* null
@.str1221 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str1221.c = internal global %nyx_string* null
@.str1222 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str1222.c = internal global %nyx_string* null
@.str1223 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str1223.c = internal global %nyx_string* null
@.str1224 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str1224.c = internal global %nyx_string* null
@.str1225 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str1225.c = internal global %nyx_string* null
@.str1226 = private unnamed_addr constant [1 x i8] c"\00"
@.str1226.c = internal global %nyx_string* null
@.str1227 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str1227.c = internal global %nyx_string* null
@.str1228 = private unnamed_addr constant [1 x i8] c"\00"
@.str1228.c = internal global %nyx_string* null
@.str1229 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1229.c = internal global %nyx_string* null
@.str1230 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str1230.c = internal global %nyx_string* null
@.str1231 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str1231.c = internal global %nyx_string* null
@.str1232 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str1232.c = internal global %nyx_string* null
@.str1233 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1233.c = internal global %nyx_string* null
@.str1234 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1234.c = internal global %nyx_string* null
@.str1235 = private unnamed_addr constant [1 x i8] c"\00"
@.str1235.c = internal global %nyx_string* null
@.str1236 = private unnamed_addr constant [1 x i8] c"\00"
@.str1236.c = internal global %nyx_string* null
@.str1237 = private unnamed_addr constant [1 x i8] c"\00"
@.str1237.c = internal global %nyx_string* null
@.str1238 = private unnamed_addr constant [1 x i8] c"\00"
@.str1238.c = internal global %nyx_string* null
@.str1239 = private unnamed_addr constant [1 x i8] c"\00"
@.str1239.c = internal global %nyx_string* null
@.str1240 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str1240.c = internal global %nyx_string* null
@.str1241 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str1241.c = internal global %nyx_string* null
@.str1242 = private unnamed_addr constant [1 x i8] c"\00"
@.str1242.c = internal global %nyx_string* null
@.str1243 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1243.c = internal global %nyx_string* null
@.str1244 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str1244.c = internal global %nyx_string* null
@.str1245 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str1245.c = internal global %nyx_string* null
@.str1246 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str1246.c = internal global %nyx_string* null
@.str1247 = private unnamed_addr constant [1 x i8] c"\00"
@.str1247.c = internal global %nyx_string* null
@.str1248 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str1248.c = internal global %nyx_string* null
@.str1249 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1249.c = internal global %nyx_string* null
@.str1250 = private unnamed_addr constant [1 x i8] c"\00"
@.str1250.c = internal global %nyx_string* null
@.str1251 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1251.c = internal global %nyx_string* null
@.str1252 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str1252.c = internal global %nyx_string* null
@.str1253 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1253.c = internal global %nyx_string* null
@.str1254 = private unnamed_addr constant [1 x i8] c"\00"
@.str1254.c = internal global %nyx_string* null
@.str1255 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str1255.c = internal global %nyx_string* null
@.str1256 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1256.c = internal global %nyx_string* null
@.str1257 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1257.c = internal global %nyx_string* null
@.str1258 = private unnamed_addr constant [1 x i8] c"\00"
@.str1258.c = internal global %nyx_string* null
@.str1259 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1259.c = internal global %nyx_string* null
@.str1260 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1260.c = internal global %nyx_string* null
@.str1261 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1261.c = internal global %nyx_string* null
@.str1262 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str1262.c = internal global %nyx_string* null
@.str1263 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str1263.c = internal global %nyx_string* null
@.str1264 = private unnamed_addr constant [1 x i8] c"\00"
@.str1264.c = internal global %nyx_string* null
@.str1265 = private unnamed_addr constant [2 x i8] c".\00"
@.str1265.c = internal global %nyx_string* null
@.str1266 = private unnamed_addr constant [1 x i8] c"\00"
@.str1266.c = internal global %nyx_string* null
@.str1267 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str1267.c = internal global %nyx_string* null
@.str1268 = private unnamed_addr constant [1 x i8] c"\00"
@.str1268.c = internal global %nyx_string* null
@.str1269 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1269.c = internal global %nyx_string* null
@.str1270 = private unnamed_addr constant [2 x i8] c".\00"
@.str1270.c = internal global %nyx_string* null
@.str1271 = private unnamed_addr constant [2 x i8] c".\00"
@.str1271.c = internal global %nyx_string* null
@.str1272 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str1272.c = internal global %nyx_string* null
@.str1273 = private unnamed_addr constant [2 x i8] c".\00"
@.str1273.c = internal global %nyx_string* null
@.str1274 = private unnamed_addr constant [2 x i8] c".\00"
@.str1274.c = internal global %nyx_string* null
@.str1275 = private unnamed_addr constant [1 x i8] c"\00"
@.str1275.c = internal global %nyx_string* null
@.str1276 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str1276.c = internal global %nyx_string* null
@.str1277 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str1277.c = internal global %nyx_string* null
@.str1278 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str1278.c = internal global %nyx_string* null
@.str1279 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str1279.c = internal global %nyx_string* null
@.str1280 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str1280.c = internal global %nyx_string* null
@.str1281 = private unnamed_addr constant [4 x i8] c"add\00"
@.str1281.c = internal global %nyx_string* null
@.str1282 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str1282.c = internal global %nyx_string* null
@.str1283 = private unnamed_addr constant [1 x i8] c"\00"
@.str1283.c = internal global %nyx_string* null
@.str1284 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str1284.c = internal global %nyx_string* null
@.str1285 = private unnamed_addr constant [8 x i8] c"project\00"
@.str1285.c = internal global %nyx_string* null
@.str1286 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str1286.c = internal global %nyx_string* null
@.str1287 = private unnamed_addr constant [1 x i8] c"\00"
@.str1287.c = internal global %nyx_string* null
@.str1288 = private unnamed_addr constant [1 x i8] c"\00"
@.str1288.c = internal global %nyx_string* null
@.str1289 = private unnamed_addr constant [1 x i8] c"\00"
@.str1289.c = internal global %nyx_string* null
@.str1290 = private unnamed_addr constant [1 x i8] c"\00"
@.str1290.c = internal global %nyx_string* null
@.str1291 = private unnamed_addr constant [1 x i8] c"\00"
@.str1291.c = internal global %nyx_string* null
@.str1292 = private unnamed_addr constant [1 x i8] c"\00"
@.str1292.c = internal global %nyx_string* null
@.str1293 = private unnamed_addr constant [7 x i8] c"report\00"
@.str1293.c = internal global %nyx_string* null
@.str1294 = private unnamed_addr constant [1 x i8] c"\00"
@.str1294.c = internal global %nyx_string* null
@.str1295 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str1295.c = internal global %nyx_string* null
@.str1296 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1296.c = internal global %nyx_string* null
@.str1297 = private unnamed_addr constant [13 x i8] c"agents-merge\00"
@.str1297.c = internal global %nyx_string* null
@.str1298 = private unnamed_addr constant [68 x i8] c"uso: nyx_build agents-merge <AGENTS.md> <plantilla> <lang> <salida>\00"
@.str1298.c = internal global %nyx_string* null
@.str1299 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str1299.c = internal global %nyx_string* null
@.str1300 = private unnamed_addr constant [1 x i8] c"\00"
@.str1300.c = internal global %nyx_string* null
@.str1301 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1301.c = internal global %nyx_string* null
@.str1302 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1302.c = internal global %nyx_string* null
@.str1303 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str1303.c = internal global %nyx_string* null
@.str1304 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str1304.c = internal global %nyx_string* null
@.str1305 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1305.c = internal global %nyx_string* null
@.str1306 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1306.c = internal global %nyx_string* null
@.str1307 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1307.c = internal global %nyx_string* null
@.str1308 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1308.c = internal global %nyx_string* null
@.str1309 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1309.c = internal global %nyx_string* null
@.str1310 = private unnamed_addr constant [1 x i8] c"\00"
@.str1310.c = internal global %nyx_string* null
@.str1311 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1311.c = internal global %nyx_string* null
@.str1312 = private unnamed_addr constant [1 x i8] c"\00"
@.str1312.c = internal global %nyx_string* null
@.str1313 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1313.c = internal global %nyx_string* null
@.str1314 = private unnamed_addr constant [1 x i8] c"\00"
@.str1314.c = internal global %nyx_string* null
@.str1315 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1315.c = internal global %nyx_string* null
@.str1316 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1316.c = internal global %nyx_string* null
@.str1317 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1317.c = internal global %nyx_string* null
@.str1318 = private unnamed_addr constant [1 x i8] c"\00"
@.str1318.c = internal global %nyx_string* null
@.str1319 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1319.c = internal global %nyx_string* null
@.str1320 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1320.c = internal global %nyx_string* null
@.str1321 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1321.c = internal global %nyx_string* null
@.str1322 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1322.c = internal global %nyx_string* null
@.str1323 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1323.c = internal global %nyx_string* null
@.str1324 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1324.c = internal global %nyx_string* null
@.str1325 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1325.c = internal global %nyx_string* null
@.str1326 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1326.c = internal global %nyx_string* null
@.str1327 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1327.c = internal global %nyx_string* null
@.str1328 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1328.c = internal global %nyx_string* null
@.str1329 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1329.c = internal global %nyx_string* null
@.str1330 = private unnamed_addr constant [1 x i8] c"\00"
@.str1330.c = internal global %nyx_string* null
@.str1331 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1331.c = internal global %nyx_string* null
@.str1332 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1332.c = internal global %nyx_string* null
@.str1333 = private unnamed_addr constant [1 x i8] c"\00"
@.str1333.c = internal global %nyx_string* null
@.str1334 = private unnamed_addr constant [1 x i8] c"\00"
@.str1334.c = internal global %nyx_string* null
@.str1335 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1335.c = internal global %nyx_string* null
@.str1336 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1336.c = internal global %nyx_string* null
@.str1337 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1337.c = internal global %nyx_string* null
@.str1338 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1338.c = internal global %nyx_string* null
@.str1339 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1339.c = internal global %nyx_string* null
@.str1340 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1340.c = internal global %nyx_string* null
@.str1341 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1341.c = internal global %nyx_string* null
@.str1342 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1342.c = internal global %nyx_string* null
@.str1343 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1343.c = internal global %nyx_string* null
@.str1344 = private unnamed_addr constant [2 x i8] c" \00"
@.str1344.c = internal global %nyx_string* null
@.str1345 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1345.c = internal global %nyx_string* null
@.str1346 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1346.c = internal global %nyx_string* null
@.str1347 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1347.c = internal global %nyx_string* null
@.str1348 = private unnamed_addr constant [1 x i8] c"\00"
@.str1348.c = internal global %nyx_string* null
@.str1349 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1349.c = internal global %nyx_string* null
@.str1350 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1350.c = internal global %nyx_string* null
@.str1351 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1351.c = internal global %nyx_string* null
@.str1352 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1352.c = internal global %nyx_string* null
@.str1353 = private unnamed_addr constant [1 x i8] c"\00"
@.str1353.c = internal global %nyx_string* null
@.str1354 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1354.c = internal global %nyx_string* null
@.str1355 = private unnamed_addr constant [2 x i8] c" \00"
@.str1355.c = internal global %nyx_string* null
@.str1356 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1356.c = internal global %nyx_string* null
@.str1357 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1357.c = internal global %nyx_string* null
@.str1358 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1358.c = internal global %nyx_string* null
@.str1359 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1359.c = internal global %nyx_string* null
@.str1360 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1360.c = internal global %nyx_string* null
@.str1361 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1361.c = internal global %nyx_string* null
@.str1362 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1362.c = internal global %nyx_string* null
@.str1363 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1363.c = internal global %nyx_string* null
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

define i64 @std_kvclient__kv_connect_auth(
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
  %343 = call %nyx_string* @std_kvclient__kv_cmd(i64 %341, { i64, i8* }* %342)
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

define i64 @std_kvclient__kv_close(
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

define internal %nyx_string* @std_kvclient__tls_read_line_local(
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

define %nyx_string* @std_kvclient__read_bulk(
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

define internal i64 @std_kvclient__send_cmd(
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

define %nyx_string* @std_kvclient__kv_cmd(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %474 = load i64, i64* %h.ptr
  %475 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %476 = call i64 @std_kvclient__send_cmd(i64 %474, { i64, i8* }* %475)
  %477 = load i64, i64* %h.ptr
  %478 = call %nyx_string* @std_kvclient__tls_read_line_local(i64 %477)
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
  %493 = call %nyx_string* @std_kvclient__read_bulk(i64 %491, %nyx_string* %492)
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

define { i64, i8* }* @std_kvclient__kv_cmd_array(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %507 = load i64, i64* %h.ptr
  %508 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %509 = call i64 @std_kvclient__send_cmd(i64 %507, { i64, i8* }* %508)
  %510 = load i64, i64* %h.ptr
  %511 = call %nyx_string* @std_kvclient__tls_read_line_local(i64 %510)
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
  %541 = call %nyx_string* @std_kvclient__tls_read_line_local(i64 %540)
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
  %555 = call %nyx_string* @std_kvclient__read_bulk(i64 %553, %nyx_string* %554)
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

define i1 @std_kvclient__kv_set(
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
  %581 = call %nyx_string* @std_kvclient__kv_cmd(i64 %579, { i64, i8* }* %580)
  %582 = getelementptr [3 x i8], [3 x i8]* @.str42, i32 0, i32 0
  %583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %582, i64 2)
  %584 = call i1 @nyx_string_equals(%nyx_string* %581, %nyx_string* %583)
  ret i1 %584
}

define i1 @std_kvclient__kv_setex(
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
  %599 = call %nyx_string* @std_kvclient__kv_cmd(i64 %597, { i64, i8* }* %598)
  %600 = getelementptr [3 x i8], [3 x i8]* @.str44, i32 0, i32 0
  %601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %600, i64 2)
  %602 = call i1 @nyx_string_equals(%nyx_string* %599, %nyx_string* %601)
  ret i1 %602
}

define %nyx_string* @std_kvclient__kv_get(
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
  %612 = call %nyx_string* @std_kvclient__kv_cmd(i64 %610, { i64, i8* }* %611)
  ret %nyx_string* %612
}

define i64 @std_kvclient__kv_del(
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
  %622 = call %nyx_string* @std_kvclient__kv_cmd(i64 %620, { i64, i8* }* %621)
  %623 = call i64 @nyx_string_to_int(%nyx_string* %622)
  ret i64 %623
}

define i64 @std_kvclient__kv_rpush(
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
  %635 = call %nyx_string* @std_kvclient__kv_cmd(i64 %633, { i64, i8* }* %634)
  %636 = call i64 @nyx_string_to_int(%nyx_string* %635)
  ret i64 %636
}

define { i64, i8* }* @std_kvclient__kv_lrange(
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
  %652 = call { i64, i8* }* @std_kvclient__kv_cmd_array(i64 %650, { i64, i8* }* %651)
  ret { i64, i8* }* %652
}

define i64 @std_kvclient__kv_llen(
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
  %662 = call %nyx_string* @std_kvclient__kv_cmd(i64 %660, { i64, i8* }* %661)
  %663 = call i64 @nyx_string_to_int(%nyx_string* %662)
  ret i64 %663
}

define i64 @std_kvclient__kv_sadd(
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
  %675 = call %nyx_string* @std_kvclient__kv_cmd(i64 %673, { i64, i8* }* %674)
  %676 = call i64 @nyx_string_to_int(%nyx_string* %675)
  ret i64 %676
}

define { i64, i8* }* @std_kvclient__kv_smembers(
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
  %686 = call { i64, i8* }* @std_kvclient__kv_cmd_array(i64 %684, { i64, i8* }* %685)
  ret { i64, i8* }* %686
}

define %nyx_string* @std_kvclient__kv_whoami(
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
  %694 = call %nyx_string* @std_kvclient__kv_cmd(i64 %692, { i64, i8* }* %693)
  ret %nyx_string* %694
}

define %nyx_string* @std_kvclient__kv_token_create(
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
  %709 = call %nyx_string* @std_kvclient__kv_cmd(i64 %707, { i64, i8* }* %708)
  ret %nyx_string* %709
}

define i1 @std_kvclient__kv_exists(
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
  %719 = call %nyx_string* @std_kvclient__kv_cmd(i64 %717, { i64, i8* }* %718)
  %720 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %720, i64 1)
  %722 = call i1 @nyx_string_equals(%nyx_string* %719, %nyx_string* %721)
  ret i1 %722
}

define i64 @std_kvclient__kv_srem(
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
  %734 = call %nyx_string* @std_kvclient__kv_cmd(i64 %732, { i64, i8* }* %733)
  %735 = call i64 @nyx_string_to_int(%nyx_string* %734)
  ret i64 %735
}

define { i64, i8* }* @std_kvclient__kv_token_list(
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
  %743 = call { i64, i8* }* @std_kvclient__kv_cmd_array(i64 %741, { i64, i8* }* %742)
  ret { i64, i8* }* %743
}

define i1 @std_kvclient__kv_token_revoke(
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
  %753 = call %nyx_string* @std_kvclient__kv_cmd(i64 %751, { i64, i8* }* %752)
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
  %1696 = ptrtoint %nyx_string* %1695 to i64
  %1697 = call i8* @nyx_string_to_cstr(%nyx_string* %1694)
  %1698 = inttoptr i64 %1696 to %nyx_string*
  %1699 = call i1 @nyx_write_file_safe(i8* %1697, %nyx_string* %1698)
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
  %1700 = getelementptr [17 x i8], [17 x i8]* @.str151, i32 0, i32 0
  %1701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1700, i64 16)
  %1702 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1703 = call %nyx_string* @nyx_string_concat(%nyx_string* %1701, %nyx_string* %1702)
  %1704 = call i8* @nyx_string_to_cstr(%nyx_string* %1703)
  call void @nyx_print_string(i8* %1704)
  %1705 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1706 = alloca %nyx_string*
  store %nyx_string* %1705, %nyx_string** %1706
  %1707 = load %nyx_string*, %nyx_string** %1706
  %1708 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1708, i64 0)
  %1710 = call i1 @nyx_string_equals(%nyx_string* %1707, %nyx_string* %1709)
  br i1 %1710, label %then388, label %else389
then388:
  %1711 = getelementptr [32 x i8], [32 x i8]* @.str153, i32 0, i32 0
  %1712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1711, i64 31)
  %1713 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1714 = call %nyx_string* @nyx_string_concat(%nyx_string* %1712, %nyx_string* %1713)
  store %nyx_string* %1714, %nyx_string** %1706
  br label %merge390
else389:
  br label %merge390
merge390:
  %1715 = getelementptr [9 x i8], [9 x i8]* @.str154, i32 0, i32 0
  %1716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1715, i64 8)
  %1717 = call i8* @nyx_string_to_cstr(%nyx_string* %1716)
  %1718 = call i1 @nyx_file_exists(i8* %1717)
  br i1 %1718, label %then391, label %else392
then391:
  %1719 = getelementptr [9 x i8], [9 x i8]* @.str155, i32 0, i32 0
  %1720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1719, i64 8)
  %1721 = call i8* @nyx_string_to_cstr(%nyx_string* %1720)
  %1722 = call %nyx_string* @nyx_read_file(i8* %1721)
  %1723 = alloca %nyx_string*
  store %nyx_string* %1722, %nyx_string** %1723
  %1724 = load %nyx_string*, %nyx_string** %1723
  %1725 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1726 = getelementptr [3 x i8], [3 x i8]* @.str156, i32 0, i32 0
  %1727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1726, i64 2)
  %1728 = call %nyx_string* @nyx_string_concat(%nyx_string* %1725, %nyx_string* %1727)
  %1729 = call i1 @nyx_string_contains(%nyx_string* %1724, %nyx_string* %1728)
  br i1 %1729, label %then394, label %else395
then394:
  %1730 = getelementptr [12 x i8], [12 x i8]* @.str157, i32 0, i32 0
  %1731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1730, i64 11)
  %1732 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1733 = call %nyx_string* @nyx_string_concat(%nyx_string* %1731, %nyx_string* %1732)
  %1734 = getelementptr [27 x i8], [27 x i8]* @.str158, i32 0, i32 0
  %1735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1734, i64 26)
  %1736 = call %nyx_string* @nyx_string_concat(%nyx_string* %1733, %nyx_string* %1735)
  %1737 = call i8* @nyx_string_to_cstr(%nyx_string* %1736)
  call void @nyx_print_string(i8* %1737)
  ret i1 1
else395:
  br label %merge396
merge396:
  br label %merge393
else392:
  br label %merge393
merge393:
  %1738 = getelementptr [10 x i8], [10 x i8]* @.str159, i32 0, i32 0
  %1739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1738, i64 9)
  %1740 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1741 = call %nyx_string* @nyx_string_concat(%nyx_string* %1739, %nyx_string* %1740)
  %1742 = alloca %nyx_string*
  store %nyx_string* %1741, %nyx_string** %1742
  %1743 = load %nyx_string*, %nyx_string** %1742
  %1744 = call i8* @nyx_string_to_cstr(%nyx_string* %1743)
  %1745 = call i1 @nyx_file_exists(i8* %1744)
  br i1 %1745, label %then397, label %else398
then397:
  %1746 = getelementptr [19 x i8], [19 x i8]* @.str160, i32 0, i32 0
  %1747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1746, i64 18)
  %1748 = load %nyx_string*, %nyx_string** %1742
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1747, %nyx_string* %1748)
  %1750 = call i8* @nyx_string_to_cstr(%nyx_string* %1749)
  call void @nyx_print_string(i8* %1750)
  br label %merge399
else398:
  %1751 = getelementptr [13 x i8], [13 x i8]* @.str161, i32 0, i32 0
  %1752 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1751, i64 12)
  %1753 = load %nyx_string*, %nyx_string** %1706
  %1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %1752, %nyx_string* %1753)
  %1755 = call i8* @nyx_string_to_cstr(%nyx_string* %1754)
  call void @nyx_print_string(i8* %1755)
  %1756 = getelementptr [43 x i8], [43 x i8]* @.str162, i32 0, i32 0
  %1757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1756, i64 42)
  %1758 = load %nyx_string*, %nyx_string** %1706
  %1759 = call %nyx_string* @nyx_string_concat(%nyx_string* %1757, %nyx_string* %1758)
  %1760 = getelementptr [2 x i8], [2 x i8]* @.str163, i32 0, i32 0
  %1761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1760, i64 1)
  %1762 = call %nyx_string* @nyx_string_concat(%nyx_string* %1759, %nyx_string* %1761)
  %1763 = load %nyx_string*, %nyx_string** %1742
  %1764 = call %nyx_string* @nyx_string_concat(%nyx_string* %1762, %nyx_string* %1763)
  %1765 = getelementptr [13 x i8], [13 x i8]* @.str164, i32 0, i32 0
  %1766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1765, i64 12)
  %1767 = call %nyx_string* @nyx_string_concat(%nyx_string* %1764, %nyx_string* %1766)
  %1768 = alloca %nyx_string*
  store %nyx_string* %1767, %nyx_string** %1768
  %1769 = load %nyx_string*, %nyx_string** %1768
  %1770 = call i8* @nyx_string_to_cstr(%nyx_string* %1769)
  %1771 = call i64 @nyx_exec_code(i8* %1770)
  %1772 = alloca i64
  store i64 %1771, i64* %1772
  %1773 = load i64, i64* %1772
  %1774 = icmp ne i64 %1773, 0
  br i1 %1774, label %then400, label %else401
then400:
  %1775 = getelementptr [26 x i8], [26 x i8]* @.str165, i32 0, i32 0
  %1776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1775, i64 25)
  %1777 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1778 = call %nyx_string* @nyx_string_concat(%nyx_string* %1776, %nyx_string* %1777)
  %1779 = getelementptr [7 x i8], [7 x i8]* @.str166, i32 0, i32 0
  %1780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1779, i64 6)
  %1781 = call %nyx_string* @nyx_string_concat(%nyx_string* %1778, %nyx_string* %1780)
  %1782 = load %nyx_string*, %nyx_string** %1706
  %1783 = call %nyx_string* @nyx_string_concat(%nyx_string* %1781, %nyx_string* %1782)
  %1784 = call i8* @nyx_string_to_cstr(%nyx_string* %1783)
  call void @nyx_print_string(i8* %1784)
  ret i1 0
else401:
  br label %merge402
merge402:
  br label %merge399
merge399:
  %1785 = getelementptr [9 x i8], [9 x i8]* @.str167, i32 0, i32 0
  %1786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1785, i64 8)
  %1787 = call i8* @nyx_string_to_cstr(%nyx_string* %1786)
  %1788 = call i1 @nyx_file_exists(i8* %1787)
  br i1 %1788, label %then403, label %else404
then403:
  %1789 = getelementptr [9 x i8], [9 x i8]* @.str168, i32 0, i32 0
  %1790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1789, i64 8)
  %1791 = call i8* @nyx_string_to_cstr(%nyx_string* %1790)
  %1792 = call %nyx_string* @nyx_read_file(i8* %1791)
  %1793 = alloca %nyx_string*
  store %nyx_string* %1792, %nyx_string** %1793
  %1794 = load %nyx_string*, %nyx_string** %1793
  %1795 = alloca %nyx_string*
  store %nyx_string* %1794, %nyx_string** %1795
  %1796 = load %nyx_string*, %nyx_string** %1793
  %1797 = getelementptr [15 x i8], [15 x i8]* @.str169, i32 0, i32 0
  %1798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1797, i64 14)
  %1799 = call i1 @nyx_string_contains(%nyx_string* %1796, %nyx_string* %1798)
  %1800 = xor i1 %1799, true
  br i1 %1800, label %then406, label %else407
then406:
  %1801 = load %nyx_string*, %nyx_string** %1793
  %1802 = getelementptr [17 x i8], [17 x i8]* @.str170, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1802, i64 16)
  %1804 = call %nyx_string* @nyx_string_concat(%nyx_string* %1801, %nyx_string* %1803)
  %1805 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1806 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1805)
  %1807 = getelementptr [8 x i8], [8 x i8]* @.str171, i32 0, i32 0
  %1808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1807, i64 7)
  %1809 = call %nyx_string* @nyx_string_concat(%nyx_string* %1806, %nyx_string* %1808)
  store %nyx_string* %1809, %nyx_string** %1795
  br label %merge408
else407:
  %1810 = load %nyx_string*, %nyx_string** %1793
  %1811 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1812 = call %nyx_string* @nyx_string_concat(%nyx_string* %1810, %nyx_string* %1811)
  %1813 = getelementptr [8 x i8], [8 x i8]* @.str172, i32 0, i32 0
  %1814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1813, i64 7)
  %1815 = call %nyx_string* @nyx_string_concat(%nyx_string* %1812, %nyx_string* %1814)
  store %nyx_string* %1815, %nyx_string** %1795
  br label %merge408
merge408:
  %1816 = getelementptr [9 x i8], [9 x i8]* @.str173, i32 0, i32 0
  %1817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1816, i64 8)
  %1818 = load %nyx_string*, %nyx_string** %1795
  %1819 = ptrtoint %nyx_string* %1818 to i64
  %1820 = call i8* @nyx_string_to_cstr(%nyx_string* %1817)
  %1821 = inttoptr i64 %1819 to %nyx_string*
  %1822 = call i1 @nyx_write_file_safe(i8* %1820, %nyx_string* %1821)
  %1823 = getelementptr [19 x i8], [19 x i8]* @.str174, i32 0, i32 0
  %1824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1823, i64 18)
  %1825 = call i8* @nyx_string_to_cstr(%nyx_string* %1824)
  call void @nyx_print_string(i8* %1825)
  br label %merge405
else404:
  br label %merge405
merge405:
  %1826 = getelementptr [10 x i8], [10 x i8]* @.str175, i32 0, i32 0
  %1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1826, i64 9)
  %1828 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1829 = call %nyx_string* @nyx_string_concat(%nyx_string* %1827, %nyx_string* %1828)
  %1830 = getelementptr [9 x i8], [9 x i8]* @.str176, i32 0, i32 0
  %1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1830, i64 8)
  %1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %1829, %nyx_string* %1831)
  %1833 = call i8* @nyx_string_to_cstr(%nyx_string* %1832)
  call void @nyx_print_string(i8* %1833)
  ret i1 1
}

define internal %nyx_string* @resolve_seed_home(
) {
  %1834 = getelementptr [9 x i8], [9 x i8]* @.str177, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1834, i64 8)
  %1836 = call i8* @nyx_string_to_cstr(%nyx_string* %1835)
  %1837 = call %nyx_string* @nyx_getenv(i8* %1836)
  %1838 = alloca %nyx_string*
  store %nyx_string* %1837, %nyx_string** %1838
  %1839 = load %nyx_string*, %nyx_string** %1838
  %1840 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %1841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1840, i64 0)
  %1842 = call i1 @nyx_string_equals(%nyx_string* %1839, %nyx_string* %1841)
  %1843 = xor i1 %1842, true
  br i1 %1843, label %then409, label %else410
then409:
  %1844 = load %nyx_string*, %nyx_string** %1838
  ret %nyx_string* %1844
else410:
  br label %merge411
merge411:
  %1845 = getelementptr [5 x i8], [5 x i8]* @.str179, i32 0, i32 0
  %1846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1845, i64 4)
  %1847 = call i8* @nyx_string_to_cstr(%nyx_string* %1846)
  %1848 = call %nyx_string* @nyx_getenv(i8* %1847)
  %1849 = alloca %nyx_string*
  store %nyx_string* %1848, %nyx_string** %1849
  %1850 = load %nyx_string*, %nyx_string** %1849
  %1851 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %1852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1851, i64 0)
  %1853 = call i1 @nyx_string_equals(%nyx_string* %1850, %nyx_string* %1852)
  %1854 = xor i1 %1853, true
  br i1 %1854, label %then412, label %else413
then412:
  %1855 = load %nyx_string*, %nyx_string** %1849
  %1856 = getelementptr [6 x i8], [6 x i8]* @.str181, i32 0, i32 0
  %1857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1856, i64 5)
  %1858 = call %nyx_string* @nyx_string_concat(%nyx_string* %1855, %nyx_string* %1857)
  %1859 = alloca %nyx_string*
  store %nyx_string* %1858, %nyx_string** %1859
  %1860 = load %nyx_string*, %nyx_string** %1859
  %1861 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1861, i64 10)
  %1863 = call %nyx_string* @nyx_string_concat(%nyx_string* %1860, %nyx_string* %1862)
  %1864 = call i8* @nyx_string_to_cstr(%nyx_string* %1863)
  %1865 = call i1 @nyx_file_exists(i8* %1864)
  br i1 %1865, label %then415, label %else416
then415:
  %1866 = load %nyx_string*, %nyx_string** %1859
  ret %nyx_string* %1866
else416:
  br label %merge417
merge417:
  br label %merge414
else413:
  br label %merge414
merge414:
  %1867 = getelementptr [14 x i8], [14 x i8]* @.str183, i32 0, i32 0
  %1868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1867, i64 13)
  %1869 = call i8* @nyx_string_to_cstr(%nyx_string* %1868)
  %1870 = call i1 @nyx_file_exists(i8* %1869)
  br i1 %1870, label %then418, label %else419
then418:
  %1871 = getelementptr [2 x i8], [2 x i8]* @.str184, i32 0, i32 0
  %1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1871, i64 1)
  ret %nyx_string* %1872
else419:
  br label %merge420
merge420:
  %1873 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %1874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1873, i64 0)
  ret %nyx_string* %1874
}

define internal %nyx_string* @seed_stamp(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1875 = getelementptr [19 x i8], [19 x i8]* @.str186, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1875, i64 18)
  %1877 = call %nyx_string* @toolchain_version()
  %1878 = call %nyx_string* @nyx_string_concat(%nyx_string* %1876, %nyx_string* %1877)
  %1879 = getelementptr [12 x i8], [12 x i8]* @.str187, i32 0, i32 0
  %1880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1879, i64 11)
  %1881 = call %nyx_string* @nyx_string_concat(%nyx_string* %1878, %nyx_string* %1880)
  %1882 = load %nyx_string*, %nyx_string** %lang.ptr
  %1883 = call %nyx_string* @nyx_string_concat(%nyx_string* %1881, %nyx_string* %1882)
  %1884 = getelementptr [6 x i8], [6 x i8]* @.str188, i32 0, i32 0
  %1885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1884, i64 5)
  %1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %1883, %nyx_string* %1885)
  ret %nyx_string* %1886
}

define internal %nyx_string* @project_lang(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1887 = load %nyx_string*, %nyx_string** %dir.ptr
  %1888 = getelementptr [11 x i8], [11 x i8]* @.str189, i32 0, i32 0
  %1889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1888, i64 10)
  %1890 = call %nyx_string* @nyx_string_concat(%nyx_string* %1887, %nyx_string* %1889)
  %1891 = alloca %nyx_string*
  store %nyx_string* %1890, %nyx_string** %1891
  %1892 = load %nyx_string*, %nyx_string** %1891
  %1893 = call i8* @nyx_string_to_cstr(%nyx_string* %1892)
  %1894 = call i1 @nyx_file_exists(i8* %1893)
  %1895 = icmp eq i1 %1894, 0
  br i1 %1895, label %then421, label %else422
then421:
  %1896 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %1897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1896, i64 2)
  ret %nyx_string* %1897
else422:
  br label %merge423
merge423:
  %1898 = load %nyx_string*, %nyx_string** %1891
  %1899 = call i8* @nyx_string_to_cstr(%nyx_string* %1898)
  %1900 = call %nyx_string* @nyx_read_file(i8* %1899)
  %1901 = alloca %nyx_string*
  store %nyx_string* %1900, %nyx_string** %1901
  %1902 = getelementptr [11 x i8], [11 x i8]* @.str191, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1902, i64 10)
  %1904 = alloca %nyx_string*
  store %nyx_string* %1903, %nyx_string** %1904
  %1905 = load %nyx_string*, %nyx_string** %1901
  %1906 = load %nyx_string*, %nyx_string** %1904
  %1907 = call i64 @nyx_string_index_of(%nyx_string* %1905, %nyx_string* %1906)
  %1908 = alloca i64
  store i64 %1907, i64* %1908
  %1909 = load i64, i64* %1908
  %1910 = icmp slt i64 %1909, 0
  br i1 %1910, label %then424, label %else425
then424:
  %1911 = getelementptr [3 x i8], [3 x i8]* @.str192, i32 0, i32 0
  %1912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1911, i64 2)
  ret %nyx_string* %1912
else425:
  br label %merge426
merge426:
  %1913 = load i64, i64* %1908
  %1914 = load %nyx_string*, %nyx_string** %1904
  %1915 = call i64 @nyx_string_byte_length(%nyx_string* %1914)
  %1916 = add i64 %1913, %1915
  %1917 = alloca i64
  store i64 %1916, i64* %1917
  %1918 = load i64, i64* %1917
  %1919 = add i64 %1918, 2
  %1920 = load %nyx_string*, %nyx_string** %1901
  %1921 = call i64 @nyx_string_byte_length(%nyx_string* %1920)
  %1922 = icmp sgt i64 %1919, %1921
  br i1 %1922, label %then427, label %else428
then427:
  %1923 = getelementptr [3 x i8], [3 x i8]* @.str193, i32 0, i32 0
  %1924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1923, i64 2)
  ret %nyx_string* %1924
else428:
  br label %merge429
merge429:
  %1925 = load %nyx_string*, %nyx_string** %1901
  %1926 = load i64, i64* %1917
  %1927 = load i64, i64* %1917
  %1928 = add i64 %1927, 2
  %1929 = call %nyx_string* @nyx_string_substring(%nyx_string* %1925, i64 %1926, i64 %1928)
  %1930 = alloca %nyx_string*
  store %nyx_string* %1929, %nyx_string** %1930
  %1931 = load %nyx_string*, %nyx_string** %1930
  %1932 = getelementptr [3 x i8], [3 x i8]* @.str194, i32 0, i32 0
  %1933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1932, i64 2)
  %1934 = call i1 @nyx_string_equals(%nyx_string* %1931, %nyx_string* %1933)
  br i1 %1934, label %then430, label %else431
then430:
  %1935 = getelementptr [3 x i8], [3 x i8]* @.str195, i32 0, i32 0
  %1936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1935, i64 2)
  ret %nyx_string* %1936
else431:
  br label %merge432
merge432:
  %1937 = getelementptr [3 x i8], [3 x i8]* @.str196, i32 0, i32 0
  %1938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1937, i64 2)
  ret %nyx_string* %1938
}

define internal %nyx_string* @seed_body(
%nyx_string* %content.param, %nyx_string* %lang.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1939 = load %nyx_string*, %nyx_string** %content.ptr
  %1940 = alloca %nyx_string*
  store %nyx_string* %1939, %nyx_string** %1940
  %1941 = load %nyx_string*, %nyx_string** %1940
  %1942 = call i64 @nyx_string_byte_length(%nyx_string* %1941)
  %1943 = alloca i64
  store i64 %1942, i64* %1943
  %1944 = alloca i1
  store i1 1, i1* %1944
  %1945 = load i64, i64* %1943
  %1946 = icmp sgt i64 %1945, 0
  br i1 %1946, label %then433, label %else434
then433:
  %1947 = load %nyx_string*, %nyx_string** %1940
  %1948 = load i64, i64* %1943
  %1949 = sub i64 %1948, 1
  %1950 = load i64, i64* %1943
  %1951 = call %nyx_string* @nyx_string_substring(%nyx_string* %1947, i64 %1949, i64 %1950)
  %1952 = getelementptr [2 x i8], [2 x i8]* @.str197, i32 0, i32 0
  %1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1952, i64 1)
  %1954 = call i1 @nyx_string_equals(%nyx_string* %1951, %nyx_string* %1953)
  br i1 %1954, label %then436, label %else437
then436:
  store i1 0, i1* %1944
  br label %merge438
else437:
  br label %merge438
merge438:
  br label %merge435
else434:
  br label %merge435
merge435:
  %1955 = load i1, i1* %1944
  br i1 %1955, label %then439, label %else440
then439:
  %1956 = load %nyx_string*, %nyx_string** %1940
  %1957 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1957, i64 1)
  %1959 = call %nyx_string* @nyx_string_concat(%nyx_string* %1956, %nyx_string* %1958)
  store %nyx_string* %1959, %nyx_string** %1940
  br label %merge441
else440:
  br label %merge441
merge441:
  %1960 = load %nyx_string*, %nyx_string** %1940
  %1961 = getelementptr [2 x i8], [2 x i8]* @.str199, i32 0, i32 0
  %1962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1961, i64 1)
  %1963 = call %nyx_string* @nyx_string_concat(%nyx_string* %1960, %nyx_string* %1962)
  %1964 = load %nyx_string*, %nyx_string** %lang.ptr
  %1965 = call %nyx_string* @seed_stamp(%nyx_string* %1964)
  %1966 = call %nyx_string* @nyx_string_concat(%nyx_string* %1963, %nyx_string* %1965)
  ret %nyx_string* %1966
}

define internal i64 @seed_file(
%nyx_string* %dst.param, %nyx_string* %content.param, %nyx_string* %lang.param) {
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1967 = load %nyx_string*, %nyx_string** %dst.ptr
  %1968 = load %nyx_string*, %nyx_string** %content.ptr
  %1969 = load %nyx_string*, %nyx_string** %lang.ptr
  %1970 = call %nyx_string* @seed_body(%nyx_string* %1968, %nyx_string* %1969)
  %1971 = ptrtoint %nyx_string* %1970 to i64
  %1972 = call i8* @nyx_string_to_cstr(%nyx_string* %1967)
  %1973 = inttoptr i64 %1971 to %nyx_string*
  %1974 = call i1 @nyx_write_file_safe(i8* %1972, %nyx_string* %1973)
  ret i64 0
}

define internal %nyx_string* @agents_ini(
) {
  %1975 = getelementptr [20 x i8], [20 x i8]* @.str200, i32 0, i32 0
  %1976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1975, i64 19)
  ret %nyx_string* %1976
}

define internal %nyx_string* @agents_fin(
) {
  %1977 = getelementptr [17 x i8], [17 x i8]* @.str201, i32 0, i32 0
  %1978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1977, i64 16)
  ret %nyx_string* %1978
}

define internal %nyx_string* @agents_cabecera(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1979 = load %nyx_string*, %nyx_string** %lang.ptr
  %1980 = getelementptr [3 x i8], [3 x i8]* @.str202, i32 0, i32 0
  %1981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1980, i64 2)
  %1982 = call i1 @nyx_string_equals(%nyx_string* %1979, %nyx_string* %1981)
  br i1 %1982, label %then442, label %else443
then442:
  %1983 = getelementptr [183 x i8], [183 x i8]* @.str203, i32 0, i32 0
  %1984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1983, i64 182)
  ret %nyx_string* %1984
else443:
  br label %merge444
merge444:
  %1985 = getelementptr [173 x i8], [173 x i8]* @.str204, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1985, i64 172)
  ret %nyx_string* %1986
}

define internal %nyx_string* @agents_bloque(
%nyx_string* %template.param) {
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %1987 = load %nyx_string*, %nyx_string** %template.ptr
  %1988 = alloca %nyx_string*
  store %nyx_string* %1987, %nyx_string** %1988
  %1989 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %1990 = load %nyx_string*, %nyx_string** %1988
  %1991 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %1992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1991, i64 1)
  %1993 = call i1 @nyx_string_ends_with(%nyx_string* %1990, %nyx_string* %1992)
  br i1 %1993, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %1989)
  %1994 = load %nyx_string*, %nyx_string** %1988
  %1995 = load %nyx_string*, %nyx_string** %1988
  %1996 = call i64 @nyx_string_byte_length(%nyx_string* %1995)
  %1997 = sub i64 %1996, 1
  %1998 = call %nyx_string* @nyx_string_substring(%nyx_string* %1994, i64 0, i64 %1997)
  store %nyx_string* %1998, %nyx_string** %1988
  br label %while_cond445
while_end447:
  %1999 = call %nyx_string* @agents_ini()
  %2000 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %2001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2000, i64 1)
  %2002 = call %nyx_string* @nyx_string_concat(%nyx_string* %1999, %nyx_string* %2001)
  %2003 = load %nyx_string*, %nyx_string** %1988
  %2004 = call %nyx_string* @nyx_string_concat(%nyx_string* %2002, %nyx_string* %2003)
  %2005 = getelementptr [2 x i8], [2 x i8]* @.str207, i32 0, i32 0
  %2006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2005, i64 1)
  %2007 = call %nyx_string* @nyx_string_concat(%nyx_string* %2004, %nyx_string* %2006)
  %2008 = call %nyx_string* @agents_fin()
  %2009 = call %nyx_string* @nyx_string_concat(%nyx_string* %2007, %nyx_string* %2008)
  %2010 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2010, i64 1)
  %2012 = call %nyx_string* @nyx_string_concat(%nyx_string* %2009, %nyx_string* %2011)
  ret %nyx_string* %2012
}

define internal %nyx_string* @agents_seed(
%nyx_string* %template.param, %nyx_string* %lang.param) {
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2013 = load %nyx_string*, %nyx_string** %lang.ptr
  %2014 = call %nyx_string* @agents_cabecera(%nyx_string* %2013)
  %2015 = getelementptr [3 x i8], [3 x i8]* @.str209, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2015, i64 2)
  %2017 = call %nyx_string* @nyx_string_concat(%nyx_string* %2014, %nyx_string* %2016)
  %2018 = load %nyx_string*, %nyx_string** %template.ptr
  %2019 = call %nyx_string* @agents_bloque(%nyx_string* %2018)
  %2020 = call %nyx_string* @nyx_string_concat(%nyx_string* %2017, %nyx_string* %2019)
  %2021 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2021, i64 1)
  %2023 = call %nyx_string* @nyx_string_concat(%nyx_string* %2020, %nyx_string* %2022)
  %2024 = load %nyx_string*, %nyx_string** %lang.ptr
  %2025 = call %nyx_string* @seed_stamp(%nyx_string* %2024)
  %2026 = call %nyx_string* @nyx_string_concat(%nyx_string* %2023, %nyx_string* %2025)
  ret %nyx_string* %2026
}

define internal i1 @agents_es_sello(
%nyx_string* %linea.param) {
  %linea.ptr = alloca %nyx_string*
  store %nyx_string* %linea.param, %nyx_string** %linea.ptr
  %2027 = load %nyx_string*, %nyx_string** %linea.ptr
  %2028 = call %nyx_string* @nyx_string_trim(%nyx_string* %2027)
  %2029 = getelementptr [18 x i8], [18 x i8]* @.str211, i32 0, i32 0
  %2030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2029, i64 17)
  %2031 = call i1 @nyx_string_starts_with(%nyx_string* %2028, %nyx_string* %2030)
  ret i1 %2031
}

define internal i64 @agents_linea_idx(
{ i64, i8* }* %lineas.param, %nyx_string* %marca.param, i64 %desde.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %marca.ptr = alloca %nyx_string*
  store %nyx_string* %marca.param, %nyx_string** %marca.ptr
  %desde.ptr = alloca i64
  store i64 %desde.param, i64* %desde.ptr
  %2032 = load i64, i64* %desde.ptr
  %2033 = alloca i64
  store i64 %2032, i64* %2033
  %2034 = call i8* @llvm.stacksave()
  br label %while_cond448
while_cond448:
  %2035 = load i64, i64* %2033
  %2036 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2037 = call i64 @nyx_array_length({ i64, i8* }* %2036)
  %2038 = icmp slt i64 %2035, %2037
  br i1 %2038, label %while_body449, label %while_end450
while_body449:
  call void @llvm.stackrestore(i8* %2034)
  %2039 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2040 = load i64, i64* %2033
  %2041 = call i64 @nyx_array_get_checked({ i64, i8* }* %2039, i64 %2040, i64 2)
  %2042 = inttoptr i64 %2041 to %nyx_string*
  %2043 = alloca %nyx_string*
  store %nyx_string* %2042, %nyx_string** %2043
  %2044 = load %nyx_string*, %nyx_string** %2043
  %2045 = call %nyx_string* @nyx_string_trim(%nyx_string* %2044)
  %2046 = load %nyx_string*, %nyx_string** %marca.ptr
  %2047 = call i1 @nyx_string_equals(%nyx_string* %2045, %nyx_string* %2046)
  br i1 %2047, label %then451, label %else452
then451:
  %2048 = load i64, i64* %2033
  ret i64 %2048
else452:
  br label %merge453
merge453:
  %2049 = load i64, i64* %2033
  %2050 = add i64 %2049, 1
  store i64 %2050, i64* %2033
  br label %while_cond448
while_end450:
  %2051 = sub i64 0, 1
  ret i64 %2051
}

define internal %nyx_string* @agents_unir(
{ i64, i8* }* %lineas.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %2052 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2053 = call i64 @nyx_array_length({ i64, i8* }* %2052)
  %2054 = alloca i64
  store i64 %2053, i64* %2054
  %2055 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %2056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2055, i64 0)
  %2057 = alloca %nyx_string*
  store %nyx_string* %2056, %nyx_string** %2057
  %2058 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %2059 = load i64, i64* %2054
  %2060 = icmp sgt i64 %2059, 0
  br i1 %2060, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %2058)
  %2061 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2062 = load i64, i64* %2054
  %2063 = sub i64 %2062, 1
  %2064 = call i64 @nyx_array_get_checked({ i64, i8* }* %2061, i64 %2063, i64 2)
  %2065 = inttoptr i64 %2064 to %nyx_string*
  %2066 = alloca %nyx_string*
  store %nyx_string* %2065, %nyx_string** %2066
  %2067 = load %nyx_string*, %nyx_string** %2066
  %2068 = call %nyx_string* @nyx_string_trim(%nyx_string* %2067)
  %2069 = load %nyx_string*, %nyx_string** %2057
  %2070 = call i1 @nyx_string_equals(%nyx_string* %2068, %nyx_string* %2069)
  %2071 = xor i1 %2070, true
  br i1 %2071, label %then457, label %else458
then457:
  br label %while_end456
else458:
  br label %merge459
merge459:
  %2072 = load i64, i64* %2054
  %2073 = sub i64 %2072, 1
  store i64 %2073, i64* %2054
  br label %while_cond454
while_end456:
  %2074 = call { i64, i8* }* @nyx_array_new_ptr()
  %2075 = alloca { i64, i8* }*
  store { i64, i8* }* %2074, { i64, i8* }** %2075
  %2076 = alloca i64
  store i64 0, i64* %2076
  %2077 = call i8* @llvm.stacksave()
  br label %while_cond460
while_cond460:
  %2078 = load i64, i64* %2076
  %2079 = load i64, i64* %2054
  %2080 = icmp slt i64 %2078, %2079
  br i1 %2080, label %while_body461, label %while_end462
while_body461:
  call void @llvm.stackrestore(i8* %2077)
  %2081 = load { i64, i8* }*, { i64, i8* }** %2075
  %2082 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2083 = load i64, i64* %2076
  %2084 = call i64 @nyx_array_get({ i64, i8* }* %2082, i64 %2083)
  %2085 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2086 = load i64, i64* %2076
  %2087 = call i64 @nyx_array_get_tag({ i64, i8* }* %2085, i64 %2086)
  call void @nyx_array_push_tagged({ i64, i8* }* %2081, i64 %2084, i64 %2087)
  %2088 = load i64, i64* %2076
  %2089 = add i64 %2088, 1
  store i64 %2089, i64* %2076
  br label %while_cond460
while_end462:
  %2090 = load { i64, i8* }*, { i64, i8* }** %2075
  %2091 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2091, i64 1)
  %2093 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2090, %nyx_string* %2092)
  ret %nyx_string* %2093
}

define internal %nyx_string* @agents_merge_bloque(
{ i64, i8* }* %lineas.param, i64 %ini.param, i64 %fin.param, %nyx_string* %template.param, %nyx_string* %lang.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %ini.ptr = alloca i64
  store i64 %ini.param, i64* %ini.ptr
  %fin.ptr = alloca i64
  store i64 %fin.param, i64* %fin.ptr
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2094 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %2095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2094, i64 0)
  %2096 = alloca %nyx_string*
  store %nyx_string* %2095, %nyx_string** %2096
  %2097 = alloca i64
  store i64 0, i64* %2097
  %2098 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2098, i64 1)
  %2100 = alloca %nyx_string*
  store %nyx_string* %2099, %nyx_string** %2100
  %2101 = call i8* @llvm.stacksave()
  br label %while_cond463
while_cond463:
  %2102 = load i64, i64* %2097
  %2103 = load i64, i64* %ini.ptr
  %2104 = icmp slt i64 %2102, %2103
  br i1 %2104, label %while_body464, label %while_end465
while_body464:
  call void @llvm.stackrestore(i8* %2101)
  %2105 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2106 = load i64, i64* %2097
  %2107 = call i64 @nyx_array_get_checked({ i64, i8* }* %2105, i64 %2106, i64 2)
  %2108 = inttoptr i64 %2107 to %nyx_string*
  %2109 = alloca %nyx_string*
  store %nyx_string* %2108, %nyx_string** %2109
  %2110 = load %nyx_string*, %nyx_string** %2096
  %2111 = load %nyx_string*, %nyx_string** %2109
  %2112 = call %nyx_string* @nyx_string_concat(%nyx_string* %2110, %nyx_string* %2111)
  %2113 = load %nyx_string*, %nyx_string** %2100
  %2114 = call %nyx_string* @nyx_string_concat(%nyx_string* %2112, %nyx_string* %2113)
  store %nyx_string* %2114, %nyx_string** %2096
  %2115 = load i64, i64* %2097
  %2116 = add i64 %2115, 1
  store i64 %2116, i64* %2097
  br label %while_cond463
while_end465:
  %2117 = call { i64, i8* }* @nyx_array_new_ptr()
  %2118 = alloca { i64, i8* }*
  store { i64, i8* }* %2117, { i64, i8* }** %2118
  %2119 = load i64, i64* %fin.ptr
  %2120 = add i64 %2119, 1
  %2121 = alloca i64
  store i64 %2120, i64* %2121
  %2122 = call i8* @llvm.stacksave()
  br label %while_cond466
while_cond466:
  %2123 = load i64, i64* %2121
  %2124 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2125 = call i64 @nyx_array_length({ i64, i8* }* %2124)
  %2126 = icmp slt i64 %2123, %2125
  br i1 %2126, label %while_body467, label %while_end468
while_body467:
  call void @llvm.stackrestore(i8* %2122)
  %2127 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2128 = load i64, i64* %2121
  %2129 = call i64 @nyx_array_get_checked({ i64, i8* }* %2127, i64 %2128, i64 2)
  %2130 = inttoptr i64 %2129 to %nyx_string*
  %2131 = alloca %nyx_string*
  store %nyx_string* %2130, %nyx_string** %2131
  %2132 = load %nyx_string*, %nyx_string** %2131
  %2133 = call i1 @agents_es_sello(%nyx_string* %2132)
  %2134 = icmp eq i1 %2133, 0
  br i1 %2134, label %then469, label %else470
then469:
  %2135 = load { i64, i8* }*, { i64, i8* }** %2118
  %2136 = load %nyx_string*, %nyx_string** %2131
  %2137 = ptrtoint %nyx_string* %2136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2135, i64 %2137, i64 2)
  br label %merge471
else470:
  br label %merge471
merge471:
  %2138 = load i64, i64* %2121
  %2139 = add i64 %2138, 1
  store i64 %2139, i64* %2121
  br label %while_cond466
while_end468:
  %2140 = load { i64, i8* }*, { i64, i8* }** %2118
  %2141 = call %nyx_string* @agents_unir({ i64, i8* }* %2140)
  %2142 = alloca %nyx_string*
  store %nyx_string* %2141, %nyx_string** %2142
  %2143 = load %nyx_string*, %nyx_string** %2142
  %2144 = call %nyx_string* @nyx_string_trim(%nyx_string* %2143)
  %2145 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %2146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2145, i64 0)
  %2147 = call i1 @nyx_string_equals(%nyx_string* %2144, %nyx_string* %2146)
  %2148 = xor i1 %2147, true
  br i1 %2148, label %then472, label %else473
then472:
  %2149 = load %nyx_string*, %nyx_string** %2142
  %2150 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2150, i64 1)
  %2152 = call %nyx_string* @nyx_string_concat(%nyx_string* %2149, %nyx_string* %2151)
  store %nyx_string* %2152, %nyx_string** %2142
  br label %merge474
else473:
  br label %merge474
merge474:
  %2153 = load %nyx_string*, %nyx_string** %2096
  %2154 = load %nyx_string*, %nyx_string** %template.ptr
  %2155 = call %nyx_string* @agents_bloque(%nyx_string* %2154)
  %2156 = call %nyx_string* @nyx_string_concat(%nyx_string* %2153, %nyx_string* %2155)
  %2157 = load %nyx_string*, %nyx_string** %2142
  %2158 = call %nyx_string* @nyx_string_concat(%nyx_string* %2156, %nyx_string* %2157)
  %2159 = getelementptr [2 x i8], [2 x i8]* @.str218, i32 0, i32 0
  %2160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2159, i64 1)
  %2161 = call %nyx_string* @nyx_string_concat(%nyx_string* %2158, %nyx_string* %2160)
  %2162 = load %nyx_string*, %nyx_string** %lang.ptr
  %2163 = call %nyx_string* @seed_stamp(%nyx_string* %2162)
  %2164 = call %nyx_string* @nyx_string_concat(%nyx_string* %2161, %nyx_string* %2163)
  ret %nyx_string* %2164
}

define internal { i64, i8* }* @agents_secciones(
{ i64, i8* }* %lineas.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %2165 = call { i64, i8* }* @nyx_array_new_ptr()
  %2166 = alloca { i64, i8* }*
  store { i64, i8* }* %2165, { i64, i8* }** %2166
  %2167 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2168 = ptrtoint %AgentsSeccion* %2167 to i64
  %2169 = call i8* @GC_malloc(i64 %2168)
  %2170 = bitcast i8* %2169 to %AgentsSeccion*
  %2171 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %2172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2171, i64 0)
  %2173 = getelementptr %AgentsSeccion, %AgentsSeccion* %2170, i32 0, i32 0
  store %nyx_string* %2172, %nyx_string** %2173
  %2174 = call { i64, i8* }* @nyx_array_new_ptr()
  %2175 = getelementptr %AgentsSeccion, %AgentsSeccion* %2170, i32 0, i32 1
  store { i64, i8* }* %2174, { i64, i8* }** %2175
  %2176 = load %AgentsSeccion, %AgentsSeccion* %2170
  %2177 = alloca %AgentsSeccion
  store %AgentsSeccion %2176, %AgentsSeccion* %2177
  %2178 = alloca i1
  store i1 0, i1* %2178
  %2179 = alloca i64
  store i64 0, i64* %2179
  %2180 = getelementptr [4 x i8], [4 x i8]* @.str220, i32 0, i32 0
  %2181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2180, i64 3)
  %2182 = alloca %nyx_string*
  store %nyx_string* %2181, %nyx_string** %2182
  %2183 = getelementptr [4 x i8], [4 x i8]* @.str221, i32 0, i32 0
  %2184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2183, i64 3)
  %2185 = alloca %nyx_string*
  store %nyx_string* %2184, %nyx_string** %2185
  %2186 = call i8* @llvm.stacksave()
  br label %while_cond475
while_cond475:
  %2187 = load i64, i64* %2179
  %2188 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2189 = call i64 @nyx_array_length({ i64, i8* }* %2188)
  %2190 = icmp slt i64 %2187, %2189
  br i1 %2190, label %while_body476, label %while_end477
while_body476:
  call void @llvm.stackrestore(i8* %2186)
  %2191 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2192 = load i64, i64* %2179
  %2193 = call i64 @nyx_array_get_checked({ i64, i8* }* %2191, i64 %2192, i64 2)
  %2194 = inttoptr i64 %2193 to %nyx_string*
  %2195 = alloca %nyx_string*
  store %nyx_string* %2194, %nyx_string** %2195
  %2196 = load %nyx_string*, %nyx_string** %2195
  %2197 = call %nyx_string* @nyx_string_trim(%nyx_string* %2196)
  %2198 = load %nyx_string*, %nyx_string** %2182
  %2199 = call i1 @nyx_string_starts_with(%nyx_string* %2197, %nyx_string* %2198)
  br i1 %2199, label %then478, label %else479
then478:
  %2200 = load i1, i1* %2178
  %2201 = xor i1 %2200, true
  store i1 %2201, i1* %2178
  br label %merge480
else479:
  br label %merge480
merge480:
  %2202 = alloca i1
  store i1 false, i1* %2202
  %2203 = load i1, i1* %2178
  %2204 = icmp eq i1 %2203, 0
  br i1 %2204, label %sc_and_rhs481, label %sc_and_end482
sc_and_rhs481:
  %2205 = load %nyx_string*, %nyx_string** %2195
  %2206 = load %nyx_string*, %nyx_string** %2185
  %2207 = call i1 @nyx_string_starts_with(%nyx_string* %2205, %nyx_string* %2206)
  store i1 %2207, i1* %2202
  br label %sc_and_end482
sc_and_end482:
  %2208 = load i1, i1* %2202
  br i1 %2208, label %then483, label %else484
then483:
  %2209 = load { i64, i8* }*, { i64, i8* }** %2166
  %2210 = load %AgentsSeccion, %AgentsSeccion* %2177
  %2211 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2212 = ptrtoint %AgentsSeccion* %2211 to i64
  %2213 = call i8* @GC_malloc(i64 %2212)
  %2214 = bitcast i8* %2213 to %AgentsSeccion*
  store %AgentsSeccion %2210, %AgentsSeccion* %2214
  %2215 = ptrtoint %AgentsSeccion* %2214 to i64
  call void @nyx_array_push({ i64, i8* }* %2209, i64 %2215)
  %2216 = call { i64, i8* }* @nyx_array_new_ptr()
  %2217 = alloca { i64, i8* }*
  store { i64, i8* }* %2216, { i64, i8* }** %2217
  %2218 = load { i64, i8* }*, { i64, i8* }** %2217
  %2219 = load %nyx_string*, %nyx_string** %2195
  %2220 = ptrtoint %nyx_string* %2219 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2218, i64 %2220, i64 2)
  %2221 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2222 = ptrtoint %AgentsSeccion* %2221 to i64
  %2223 = call i8* @GC_malloc(i64 %2222)
  %2224 = bitcast i8* %2223 to %AgentsSeccion*
  %2225 = load %nyx_string*, %nyx_string** %2195
  %2226 = call %nyx_string* @nyx_string_trim(%nyx_string* %2225)
  %2227 = getelementptr %AgentsSeccion, %AgentsSeccion* %2224, i32 0, i32 0
  store %nyx_string* %2226, %nyx_string** %2227
  %2228 = load { i64, i8* }*, { i64, i8* }** %2217
  %2229 = getelementptr %AgentsSeccion, %AgentsSeccion* %2224, i32 0, i32 1
  store { i64, i8* }* %2228, { i64, i8* }** %2229
  %2230 = load %AgentsSeccion, %AgentsSeccion* %2224
  store %AgentsSeccion %2230, %AgentsSeccion* %2177
  br label %merge485
else484:
  %2231 = getelementptr %AgentsSeccion, %AgentsSeccion* %2177, i32 0, i32 1
  %2232 = load { i64, i8* }*, { i64, i8* }** %2231
  %2233 = load %nyx_string*, %nyx_string** %2195
  %2234 = ptrtoint %nyx_string* %2233 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2232, i64 %2234, i64 2)
  br label %merge485
merge485:
  %2235 = load i64, i64* %2179
  %2236 = add i64 %2235, 1
  store i64 %2236, i64* %2179
  br label %while_cond475
while_end477:
  %2237 = load { i64, i8* }*, { i64, i8* }** %2166
  %2238 = load %AgentsSeccion, %AgentsSeccion* %2177
  %2239 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2240 = ptrtoint %AgentsSeccion* %2239 to i64
  %2241 = call i8* @GC_malloc(i64 %2240)
  %2242 = bitcast i8* %2241 to %AgentsSeccion*
  store %AgentsSeccion %2238, %AgentsSeccion* %2242
  %2243 = ptrtoint %AgentsSeccion* %2242 to i64
  call void @nyx_array_push({ i64, i8* }* %2237, i64 %2243)
  %2244 = load { i64, i8* }*, { i64, i8* }** %2166
  ret { i64, i8* }* %2244
}

define internal %AgentsMerge @agents_merge_legado(
{ i64, i8* }* %lineas.param, %nyx_string* %template.param, %nyx_string* %lang.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2245 = call { i64, i8* }* @nyx_array_new_ptr()
  %2246 = alloca { i64, i8* }*
  store { i64, i8* }* %2245, { i64, i8* }** %2246
  %2247 = call { i64, i8* }* @nyx_array_new_ptr()
  %2248 = alloca { i64, i8* }*
  store { i64, i8* }* %2247, { i64, i8* }** %2248
  %2249 = call { i64, i8* }* @nyx_array_new_ptr()
  %2250 = alloca { i64, i8* }*
  store { i64, i8* }* %2249, { i64, i8* }** %2250
  %2251 = alloca i64
  store i64 0, i64* %2251
  %2252 = getelementptr [25 x i8], [25 x i8]* @.str222, i32 0, i32 0
  %2253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2252, i64 24)
  %2254 = alloca %nyx_string*
  store %nyx_string* %2253, %nyx_string** %2254
  %2255 = getelementptr [22 x i8], [22 x i8]* @.str223, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2255, i64 21)
  %2257 = alloca %nyx_string*
  store %nyx_string* %2256, %nyx_string** %2257
  %2258 = getelementptr [56 x i8], [56 x i8]* @.str224, i32 0, i32 0
  %2259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2258, i64 55)
  %2260 = alloca %nyx_string*
  store %nyx_string* %2259, %nyx_string** %2260
  %2261 = getelementptr [21 x i8], [21 x i8]* @.str225, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2261, i64 20)
  %2263 = alloca %nyx_string*
  store %nyx_string* %2262, %nyx_string** %2263
  %2264 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2264, i64 0)
  %2266 = alloca %nyx_string*
  store %nyx_string* %2265, %nyx_string** %2266
  %2267 = getelementptr [52 x i8], [52 x i8]* @.str227, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2267, i64 51)
  %2269 = alloca %nyx_string*
  store %nyx_string* %2268, %nyx_string** %2269
  %2270 = call i8* @llvm.stacksave()
  br label %while_cond486
while_cond486:
  %2271 = load i64, i64* %2251
  %2272 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2273 = call i64 @nyx_array_length({ i64, i8* }* %2272)
  %2274 = icmp slt i64 %2271, %2273
  br i1 %2274, label %while_body487, label %while_end488
while_body487:
  call void @llvm.stackrestore(i8* %2270)
  %2275 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2276 = load i64, i64* %2251
  %2277 = call i64 @nyx_array_get_checked({ i64, i8* }* %2275, i64 %2276, i64 2)
  %2278 = inttoptr i64 %2277 to %nyx_string*
  %2279 = alloca %nyx_string*
  store %nyx_string* %2278, %nyx_string** %2279
  %2280 = load %nyx_string*, %nyx_string** %2279
  %2281 = call %nyx_string* @nyx_string_trim(%nyx_string* %2280)
  %2282 = alloca %nyx_string*
  store %nyx_string* %2281, %nyx_string** %2282
  %2283 = load %nyx_string*, %nyx_string** %2282
  %2284 = load %nyx_string*, %nyx_string** %2254
  %2285 = call i1 @nyx_string_equals(%nyx_string* %2283, %nyx_string* %2284)
  br i1 %2285, label %then489, label %else490
then489:
  %2286 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2287 = load %nyx_string*, %nyx_string** %2257
  %2288 = load i64, i64* %2251
  %2289 = add i64 %2288, 1
  %2290 = call i64 @agents_linea_idx({ i64, i8* }* %2286, %nyx_string* %2287, i64 %2289)
  %2291 = alloca i64
  store i64 %2290, i64* %2291
  %2292 = load i64, i64* %2291
  %2293 = icmp sge i64 %2292, 0
  br i1 %2293, label %then492, label %else493
then492:
  %2294 = call { i64, i8* }* @nyx_array_new_ptr()
  %2295 = alloca { i64, i8* }*
  store { i64, i8* }* %2294, { i64, i8* }** %2295
  %2296 = load i64, i64* %2251
  %2297 = alloca i64
  store i64 %2296, i64* %2297
  %2298 = call i8* @llvm.stacksave()
  br label %while_cond495
while_cond495:
  %2299 = load i64, i64* %2297
  %2300 = load i64, i64* %2291
  %2301 = icmp sle i64 %2299, %2300
  br i1 %2301, label %while_body496, label %while_end497
while_body496:
  call void @llvm.stackrestore(i8* %2298)
  %2302 = load { i64, i8* }*, { i64, i8* }** %2295
  %2303 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2304 = load i64, i64* %2297
  %2305 = call i64 @nyx_array_get({ i64, i8* }* %2303, i64 %2304)
  %2306 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2307 = load i64, i64* %2297
  %2308 = call i64 @nyx_array_get_tag({ i64, i8* }* %2306, i64 %2307)
  call void @nyx_array_push_tagged({ i64, i8* }* %2302, i64 %2305, i64 %2308)
  %2309 = load i64, i64* %2297
  %2310 = add i64 %2309, 1
  store i64 %2310, i64* %2297
  br label %while_cond495
while_end497:
  %2311 = load { i64, i8* }*, { i64, i8* }** %2248
  %2312 = load { i64, i8* }*, { i64, i8* }** %2295
  %2313 = call %nyx_string* @agents_unir({ i64, i8* }* %2312)
  %2314 = ptrtoint %nyx_string* %2313 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2311, i64 %2314, i64 2)
  %2315 = load { i64, i8* }*, { i64, i8* }** %2246
  %2316 = load %nyx_string*, %nyx_string** %2260
  %2317 = ptrtoint %nyx_string* %2316 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2315, i64 %2317, i64 2)
  %2318 = load i64, i64* %2291
  %2319 = add i64 %2318, 1
  store i64 %2319, i64* %2251
  br label %while_cond486
else493:
  br label %merge494
merge494:
  br label %merge491
else490:
  br label %merge491
merge491:
  %2320 = load %nyx_string*, %nyx_string** %2282
  %2321 = load %nyx_string*, %nyx_string** %2263
  %2322 = call i1 @nyx_string_equals(%nyx_string* %2320, %nyx_string* %2321)
  br i1 %2322, label %then498, label %else499
then498:
  %2323 = call { i64, i8* }* @nyx_array_new_ptr()
  %2324 = alloca { i64, i8* }*
  store { i64, i8* }* %2323, { i64, i8* }** %2324
  %2325 = load { i64, i8* }*, { i64, i8* }** %2324
  %2326 = load %nyx_string*, %nyx_string** %2279
  %2327 = ptrtoint %nyx_string* %2326 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2325, i64 %2327, i64 2)
  %2328 = load i64, i64* %2251
  %2329 = add i64 %2328, 1
  %2330 = alloca i64
  store i64 %2329, i64* %2330
  %2331 = call i8* @llvm.stacksave()
  br label %while_cond501
while_cond501:
  %2332 = load i64, i64* %2330
  %2333 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2334 = call i64 @nyx_array_length({ i64, i8* }* %2333)
  %2335 = icmp slt i64 %2332, %2334
  br i1 %2335, label %while_body502, label %while_end503
while_body502:
  call void @llvm.stackrestore(i8* %2331)
  %2336 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2337 = load i64, i64* %2330
  %2338 = call i64 @nyx_array_get_checked({ i64, i8* }* %2336, i64 %2337, i64 2)
  %2339 = inttoptr i64 %2338 to %nyx_string*
  %2340 = alloca %nyx_string*
  store %nyx_string* %2339, %nyx_string** %2340
  %2341 = alloca i1
  store i1 true, i1* %2341
  %2342 = load %nyx_string*, %nyx_string** %2340
  %2343 = call %nyx_string* @nyx_string_trim(%nyx_string* %2342)
  %2344 = load %nyx_string*, %nyx_string** %2266
  %2345 = call i1 @nyx_string_equals(%nyx_string* %2343, %nyx_string* %2344)
  br i1 %2345, label %sc_or_end505, label %sc_or_rhs504
sc_or_rhs504:
  %2346 = load %nyx_string*, %nyx_string** %2340
  %2347 = call i1 @agents_es_sello(%nyx_string* %2346)
  store i1 %2347, i1* %2341
  br label %sc_or_end505
sc_or_end505:
  %2348 = load i1, i1* %2341
  br i1 %2348, label %then506, label %else507
then506:
  br label %while_end503
else507:
  br label %merge508
merge508:
  %2349 = load { i64, i8* }*, { i64, i8* }** %2324
  %2350 = load %nyx_string*, %nyx_string** %2340
  %2351 = ptrtoint %nyx_string* %2350 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2349, i64 %2351, i64 2)
  %2352 = load i64, i64* %2330
  %2353 = add i64 %2352, 1
  store i64 %2353, i64* %2330
  br label %while_cond501
while_end503:
  %2354 = load { i64, i8* }*, { i64, i8* }** %2248
  %2355 = load { i64, i8* }*, { i64, i8* }** %2324
  %2356 = call %nyx_string* @agents_unir({ i64, i8* }* %2355)
  %2357 = ptrtoint %nyx_string* %2356 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2354, i64 %2357, i64 2)
  %2358 = load { i64, i8* }*, { i64, i8* }** %2246
  %2359 = load %nyx_string*, %nyx_string** %2269
  %2360 = ptrtoint %nyx_string* %2359 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2358, i64 %2360, i64 2)
  %2361 = load i64, i64* %2330
  store i64 %2361, i64* %2251
  br label %while_cond486
else499:
  br label %merge500
merge500:
  %2362 = load %nyx_string*, %nyx_string** %2279
  %2363 = call i1 @agents_es_sello(%nyx_string* %2362)
  %2364 = icmp eq i1 %2363, 0
  br i1 %2364, label %then509, label %else510
then509:
  %2365 = load { i64, i8* }*, { i64, i8* }** %2250
  %2366 = load %nyx_string*, %nyx_string** %2279
  %2367 = ptrtoint %nyx_string* %2366 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2365, i64 %2367, i64 2)
  br label %merge511
else510:
  br label %merge511
merge511:
  %2368 = load i64, i64* %2251
  %2369 = add i64 %2368, 1
  store i64 %2369, i64* %2251
  br label %while_cond486
while_end488:
  %2370 = load %nyx_string*, %nyx_string** %template.ptr
  %2371 = getelementptr [2 x i8], [2 x i8]* @.str228, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2371, i64 1)
  %2373 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2370, %nyx_string* %2372)
  %2374 = alloca { i64, i8* }*
  store { i64, i8* }* %2373, { i64, i8* }** %2374
  %2375 = call i8* @nyx_map_new(i32 0)
  %2376 = alloca i8*
  store i8* %2375, i8** %2376
  %2377 = call i8* @nyx_map_new(i32 0)
  %2378 = alloca i8*
  store i8* %2377, i8** %2378
  %2379 = load { i64, i8* }*, { i64, i8* }** %2374
  %2380 = call { i64, i8* }* @agents_secciones({ i64, i8* }* %2379)
  %2381 = alloca { i64, i8* }*
  store { i64, i8* }* %2380, { i64, i8* }** %2381
  %2382 = alloca i64
  store i64 0, i64* %2382
  %2383 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %2384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2383, i64 0)
  %2385 = alloca %nyx_string*
  store %nyx_string* %2384, %nyx_string** %2385
  %2386 = call i8* @llvm.stacksave()
  br label %while_cond512
while_cond512:
  %2387 = load i64, i64* %2382
  %2388 = load { i64, i8* }*, { i64, i8* }** %2381
  %2389 = call i64 @nyx_array_length({ i64, i8* }* %2388)
  %2390 = icmp slt i64 %2387, %2389
  br i1 %2390, label %while_body513, label %while_end514
while_body513:
  call void @llvm.stackrestore(i8* %2386)
  %2391 = load { i64, i8* }*, { i64, i8* }** %2381
  %2392 = load i64, i64* %2382
  %2393 = call i64 @nyx_array_get({ i64, i8* }* %2391, i64 %2392)
  %2394 = inttoptr i64 %2393 to %AgentsSeccion*
  %2395 = load %AgentsSeccion, %AgentsSeccion* %2394
  %2396 = alloca %AgentsSeccion
  store %AgentsSeccion %2395, %AgentsSeccion* %2396
  %2397 = getelementptr %AgentsSeccion, %AgentsSeccion* %2396, i32 0, i32 0
  %2398 = load %nyx_string*, %nyx_string** %2397
  %2399 = load %nyx_string*, %nyx_string** %2385
  %2400 = call i1 @nyx_string_equals(%nyx_string* %2398, %nyx_string* %2399)
  %2401 = xor i1 %2400, true
  br i1 %2401, label %then515, label %else516
then515:
  %2402 = load i8*, i8** %2376
  %2403 = getelementptr %AgentsSeccion, %AgentsSeccion* %2396, i32 0, i32 0
  %2404 = load %nyx_string*, %nyx_string** %2403
  %2405 = call i8* @nyx_string_to_cstr(%nyx_string* %2404)
  call void @nyx_map_insert_int(i8* %2402, i8* %2405, i64 1)
  br label %merge517
else516:
  br label %merge517
merge517:
  %2406 = load i64, i64* %2382
  %2407 = add i64 %2406, 1
  store i64 %2407, i64* %2382
  br label %while_cond512
while_end514:
  %2408 = alloca i64
  store i64 0, i64* %2408
  %2409 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2409, i64 0)
  %2411 = alloca %nyx_string*
  store %nyx_string* %2410, %nyx_string** %2411
  %2412 = call i8* @llvm.stacksave()
  br label %while_cond518
while_cond518:
  %2413 = load i64, i64* %2408
  %2414 = load { i64, i8* }*, { i64, i8* }** %2374
  %2415 = call i64 @nyx_array_length({ i64, i8* }* %2414)
  %2416 = icmp slt i64 %2413, %2415
  br i1 %2416, label %while_body519, label %while_end520
while_body519:
  call void @llvm.stackrestore(i8* %2412)
  %2417 = load { i64, i8* }*, { i64, i8* }** %2374
  %2418 = load i64, i64* %2408
  %2419 = call i64 @nyx_array_get_checked({ i64, i8* }* %2417, i64 %2418, i64 2)
  %2420 = inttoptr i64 %2419 to %nyx_string*
  %2421 = alloca %nyx_string*
  store %nyx_string* %2420, %nyx_string** %2421
  %2422 = load %nyx_string*, %nyx_string** %2421
  %2423 = call %nyx_string* @nyx_string_trim(%nyx_string* %2422)
  %2424 = alloca %nyx_string*
  store %nyx_string* %2423, %nyx_string** %2424
  %2425 = load %nyx_string*, %nyx_string** %2424
  %2426 = load %nyx_string*, %nyx_string** %2411
  %2427 = call i1 @nyx_string_equals(%nyx_string* %2425, %nyx_string* %2426)
  %2428 = xor i1 %2427, true
  br i1 %2428, label %then521, label %else522
then521:
  %2429 = load i8*, i8** %2378
  %2430 = load %nyx_string*, %nyx_string** %2424
  %2431 = call i8* @nyx_string_to_cstr(%nyx_string* %2430)
  call void @nyx_map_insert_int(i8* %2429, i8* %2431, i64 1)
  br label %merge523
else522:
  br label %merge523
merge523:
  %2432 = load i64, i64* %2408
  %2433 = add i64 %2432, 1
  store i64 %2433, i64* %2408
  br label %while_cond518
while_end520:
  %2434 = load { i64, i8* }*, { i64, i8* }** %2250
  %2435 = call { i64, i8* }* @agents_secciones({ i64, i8* }* %2434)
  %2436 = alloca { i64, i8* }*
  store { i64, i8* }* %2435, { i64, i8* }** %2436
  %2437 = alloca i64
  store i64 0, i64* %2437
  %2438 = getelementptr [10 x i8], [10 x i8]* @.str231, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2438, i64 9)
  %2440 = alloca %nyx_string*
  store %nyx_string* %2439, %nyx_string** %2440
  %2441 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2441, i64 0)
  %2443 = alloca %nyx_string*
  store %nyx_string* %2442, %nyx_string** %2443
  %2444 = getelementptr [3 x i8], [3 x i8]* @.str233, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2444, i64 2)
  %2446 = alloca %nyx_string*
  store %nyx_string* %2445, %nyx_string** %2446
  %2447 = getelementptr [36 x i8], [36 x i8]* @.str234, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2447, i64 35)
  %2449 = alloca %nyx_string*
  store %nyx_string* %2448, %nyx_string** %2449
  %2450 = getelementptr [111 x i8], [111 x i8]* @.str235, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2450, i64 110)
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = getelementptr [50 x i8], [50 x i8]* @.str236, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2453, i64 49)
  %2455 = alloca %nyx_string*
  store %nyx_string* %2454, %nyx_string** %2455
  %2456 = getelementptr [64 x i8], [64 x i8]* @.str237, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2456, i64 63)
  %2458 = alloca %nyx_string*
  store %nyx_string* %2457, %nyx_string** %2458
  %2459 = getelementptr [16 x i8], [16 x i8]* @.str238, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2459, i64 15)
  %2461 = alloca %nyx_string*
  store %nyx_string* %2460, %nyx_string** %2461
  %2462 = getelementptr [27 x i8], [27 x i8]* @.str239, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2462, i64 26)
  %2464 = alloca %nyx_string*
  store %nyx_string* %2463, %nyx_string** %2464
  %2465 = call i8* @llvm.stacksave()
  br label %while_cond524
while_cond524:
  %2466 = load i64, i64* %2437
  %2467 = load { i64, i8* }*, { i64, i8* }** %2436
  %2468 = call i64 @nyx_array_length({ i64, i8* }* %2467)
  %2469 = icmp slt i64 %2466, %2468
  br i1 %2469, label %while_body525, label %while_end526
while_body525:
  call void @llvm.stackrestore(i8* %2465)
  %2470 = load { i64, i8* }*, { i64, i8* }** %2436
  %2471 = load i64, i64* %2437
  %2472 = call i64 @nyx_array_get({ i64, i8* }* %2470, i64 %2471)
  %2473 = inttoptr i64 %2472 to %AgentsSeccion*
  %2474 = load %AgentsSeccion, %AgentsSeccion* %2473
  %2475 = alloca %AgentsSeccion
  store %AgentsSeccion %2474, %AgentsSeccion* %2475
  %2476 = alloca i64
  store i64 0, i64* %2476
  %2477 = alloca i64
  store i64 0, i64* %2477
  %2478 = alloca i1
  store i1 0, i1* %2478
  %2479 = alloca i64
  store i64 0, i64* %2479
  %2480 = call i8* @llvm.stacksave()
  br label %while_cond527
while_cond527:
  %2481 = load i64, i64* %2479
  %2482 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 1
  %2483 = load { i64, i8* }*, { i64, i8* }** %2482
  %2484 = call i64 @nyx_array_length({ i64, i8* }* %2483)
  %2485 = icmp slt i64 %2481, %2484
  br i1 %2485, label %while_body528, label %while_end529
while_body528:
  call void @llvm.stackrestore(i8* %2480)
  %2486 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 1
  %2487 = load { i64, i8* }*, { i64, i8* }** %2486
  %2488 = load i64, i64* %2479
  %2489 = call i64 @nyx_array_get({ i64, i8* }* %2487, i64 %2488)
  %2490 = inttoptr i64 %2489 to %nyx_string*
  %2491 = alloca %nyx_string*
  store %nyx_string* %2490, %nyx_string** %2491
  %2492 = load %nyx_string*, %nyx_string** %2491
  %2493 = call %nyx_string* @nyx_string_trim(%nyx_string* %2492)
  %2494 = alloca %nyx_string*
  store %nyx_string* %2493, %nyx_string** %2494
  %2495 = load %nyx_string*, %nyx_string** %2494
  %2496 = load %nyx_string*, %nyx_string** %2440
  %2497 = call i1 @nyx_string_starts_with(%nyx_string* %2495, %nyx_string* %2496)
  br i1 %2497, label %then530, label %else531
then530:
  store i1 1, i1* %2478
  br label %merge532
else531:
  br label %merge532
merge532:
  %2498 = alloca i1
  store i1 false, i1* %2498
  %2499 = load %nyx_string*, %nyx_string** %2494
  %2500 = load %nyx_string*, %nyx_string** %2443
  %2501 = call i1 @nyx_string_equals(%nyx_string* %2499, %nyx_string* %2500)
  %2502 = xor i1 %2501, true
  br i1 %2502, label %sc_and_rhs533, label %sc_and_end534
sc_and_rhs533:
  %2503 = load %nyx_string*, %nyx_string** %2494
  %2504 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 0
  %2505 = load %nyx_string*, %nyx_string** %2504
  %2506 = call i1 @nyx_string_equals(%nyx_string* %2503, %nyx_string* %2505)
  %2507 = xor i1 %2506, true
  store i1 %2507, i1* %2498
  br label %sc_and_end534
sc_and_end534:
  %2508 = load i1, i1* %2498
  br i1 %2508, label %then535, label %else536
then535:
  %2509 = load i64, i64* %2476
  %2510 = add i64 %2509, 1
  store i64 %2510, i64* %2476
  %2511 = load i8*, i8** %2378
  %2512 = load %nyx_string*, %nyx_string** %2494
  %2513 = call i8* @nyx_string_to_cstr(%nyx_string* %2512)
  %2514 = call i1 @nyx_map_contains_str(i8* %2511, i8* %2513)
  br i1 %2514, label %then538, label %else539
then538:
  %2515 = load i64, i64* %2477
  %2516 = add i64 %2515, 1
  store i64 %2516, i64* %2477
  br label %merge540
else539:
  br label %merge540
merge540:
  br label %merge537
else536:
  br label %merge537
merge537:
  %2517 = load i64, i64* %2479
  %2518 = add i64 %2517, 1
  store i64 %2518, i64* %2479
  br label %while_cond527
while_end529:
  %2519 = alloca i1
  store i1 0, i1* %2519
  %2520 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 0
  %2521 = load %nyx_string*, %nyx_string** %2520
  %2522 = load %nyx_string*, %nyx_string** %2443
  %2523 = call i1 @nyx_string_equals(%nyx_string* %2521, %nyx_string* %2522)
  br i1 %2523, label %then541, label %else542
then541:
  store i1 1, i1* %2519
  br label %merge543
else542:
  br label %merge543
merge543:
  %2524 = load i8*, i8** %2376
  %2525 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 0
  %2526 = load %nyx_string*, %nyx_string** %2525
  %2527 = call i8* @nyx_string_to_cstr(%nyx_string* %2526)
  %2528 = call i1 @nyx_map_contains_str(i8* %2524, i8* %2527)
  br i1 %2528, label %then544, label %else545
then544:
  store i1 1, i1* %2519
  br label %merge546
else545:
  br label %merge546
merge546:
  %2529 = load i1, i1* %2478
  br i1 %2529, label %then547, label %else548
then547:
  store i1 1, i1* %2519
  br label %merge549
else548:
  br label %merge549
merge549:
  %2530 = alloca i1
  store i1 false, i1* %2530
  %2531 = load i64, i64* %2476
  %2532 = icmp sgt i64 %2531, 0
  br i1 %2532, label %sc_and_rhs550, label %sc_and_end551
sc_and_rhs550:
  %2533 = load i64, i64* %2477
  %2534 = mul i64 %2533, 10
  %2535 = load i64, i64* %2476
  %2536 = mul i64 %2535, 6
  %2537 = icmp sge i64 %2534, %2536
  store i1 %2537, i1* %2530
  br label %sc_and_end551
sc_and_end551:
  %2538 = load i1, i1* %2530
  br i1 %2538, label %then552, label %else553
then552:
  store i1 1, i1* %2519
  br label %merge554
else553:
  br label %merge554
merge554:
  %2539 = load i1, i1* %2519
  br i1 %2539, label %then555, label %else556
then555:
  %2540 = load i64, i64* %2476
  %2541 = load i64, i64* %2477
  %2542 = sub i64 %2540, %2541
  %2543 = alloca i64
  store i64 %2542, i64* %2543
  %2544 = alloca i1
  store i1 false, i1* %2544
  %2545 = load i64, i64* %2543
  %2546 = icmp sgt i64 %2545, 0
  br i1 %2546, label %sc_and_rhs558, label %sc_and_end559
sc_and_rhs558:
  %2547 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 0
  %2548 = load %nyx_string*, %nyx_string** %2547
  %2549 = load %nyx_string*, %nyx_string** %2443
  %2550 = call i1 @nyx_string_equals(%nyx_string* %2548, %nyx_string* %2549)
  %2551 = xor i1 %2550, true
  store i1 %2551, i1* %2544
  br label %sc_and_end559
sc_and_end559:
  %2552 = load i1, i1* %2544
  br i1 %2552, label %then560, label %else561
then560:
  %2553 = load { i64, i8* }*, { i64, i8* }** %2246
  %2554 = load %nyx_string*, %nyx_string** %2446
  %2555 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 0
  %2556 = load %nyx_string*, %nyx_string** %2555
  %2557 = call %nyx_string* @nyx_string_concat(%nyx_string* %2554, %nyx_string* %2556)
  %2558 = load %nyx_string*, %nyx_string** %2449
  %2559 = call %nyx_string* @nyx_string_concat(%nyx_string* %2557, %nyx_string* %2558)
  %2560 = load i64, i64* %2543
  %2561 = call %nyx_string* @nyx_string_from_int(i64 %2560)
  %2562 = call %nyx_string* @nyx_string_concat(%nyx_string* %2559, %nyx_string* %2561)
  %2563 = load %nyx_string*, %nyx_string** %2452
  %2564 = call %nyx_string* @nyx_string_concat(%nyx_string* %2562, %nyx_string* %2563)
  %2565 = ptrtoint %nyx_string* %2564 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2553, i64 %2565, i64 2)
  br label %merge562
else561:
  br label %merge562
merge562:
  %2566 = alloca i1
  store i1 false, i1* %2566
  %2567 = load i64, i64* %2543
  %2568 = icmp sgt i64 %2567, 0
  br i1 %2568, label %sc_and_rhs563, label %sc_and_end564
sc_and_rhs563:
  %2569 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 0
  %2570 = load %nyx_string*, %nyx_string** %2569
  %2571 = load %nyx_string*, %nyx_string** %2443
  %2572 = call i1 @nyx_string_equals(%nyx_string* %2570, %nyx_string* %2571)
  store i1 %2572, i1* %2566
  br label %sc_and_end564
sc_and_end564:
  %2573 = load i1, i1* %2566
  br i1 %2573, label %then565, label %else566
then565:
  %2574 = load { i64, i8* }*, { i64, i8* }** %2246
  %2575 = load %nyx_string*, %nyx_string** %2455
  %2576 = load i64, i64* %2543
  %2577 = call %nyx_string* @nyx_string_from_int(i64 %2576)
  %2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %2575, %nyx_string* %2577)
  %2579 = load %nyx_string*, %nyx_string** %2458
  %2580 = call %nyx_string* @nyx_string_concat(%nyx_string* %2578, %nyx_string* %2579)
  %2581 = ptrtoint %nyx_string* %2580 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2574, i64 %2581, i64 2)
  br label %merge567
else566:
  br label %merge567
merge567:
  br label %merge557
else556:
  %2582 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 1
  %2583 = load { i64, i8* }*, { i64, i8* }** %2582
  %2584 = call %nyx_string* @agents_unir({ i64, i8* }* %2583)
  %2585 = alloca %nyx_string*
  store %nyx_string* %2584, %nyx_string** %2585
  %2586 = load %nyx_string*, %nyx_string** %2585
  %2587 = call %nyx_string* @nyx_string_trim(%nyx_string* %2586)
  %2588 = load %nyx_string*, %nyx_string** %2443
  %2589 = call i1 @nyx_string_equals(%nyx_string* %2587, %nyx_string* %2588)
  %2590 = xor i1 %2589, true
  br i1 %2590, label %then568, label %else569
then568:
  %2591 = load { i64, i8* }*, { i64, i8* }** %2248
  %2592 = load %nyx_string*, %nyx_string** %2585
  %2593 = ptrtoint %nyx_string* %2592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2591, i64 %2593, i64 2)
  %2594 = load { i64, i8* }*, { i64, i8* }** %2246
  %2595 = load %nyx_string*, %nyx_string** %2461
  %2596 = getelementptr %AgentsSeccion, %AgentsSeccion* %2475, i32 0, i32 0
  %2597 = load %nyx_string*, %nyx_string** %2596
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2597)
  %2599 = load %nyx_string*, %nyx_string** %2464
  %2600 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2599)
  %2601 = ptrtoint %nyx_string* %2600 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2594, i64 %2601, i64 2)
  br label %merge570
else569:
  br label %merge570
merge570:
  br label %merge557
merge557:
  %2602 = load i64, i64* %2437
  %2603 = add i64 %2602, 1
  store i64 %2603, i64* %2437
  br label %while_cond524
while_end526:
  %2604 = load %nyx_string*, %nyx_string** %lang.ptr
  %2605 = call %nyx_string* @agents_cabecera(%nyx_string* %2604)
  %2606 = getelementptr [3 x i8], [3 x i8]* @.str240, i32 0, i32 0
  %2607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2606, i64 2)
  %2608 = call %nyx_string* @nyx_string_concat(%nyx_string* %2605, %nyx_string* %2607)
  %2609 = alloca %nyx_string*
  store %nyx_string* %2608, %nyx_string** %2609
  %2610 = alloca i64
  store i64 0, i64* %2610
  %2611 = getelementptr [3 x i8], [3 x i8]* @.str241, i32 0, i32 0
  %2612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2611, i64 2)
  %2613 = alloca %nyx_string*
  store %nyx_string* %2612, %nyx_string** %2613
  %2614 = call i8* @llvm.stacksave()
  br label %while_cond571
while_cond571:
  %2615 = load i64, i64* %2610
  %2616 = load { i64, i8* }*, { i64, i8* }** %2248
  %2617 = call i64 @nyx_array_length({ i64, i8* }* %2616)
  %2618 = icmp slt i64 %2615, %2617
  br i1 %2618, label %while_body572, label %while_end573
while_body572:
  call void @llvm.stackrestore(i8* %2614)
  %2619 = load { i64, i8* }*, { i64, i8* }** %2248
  %2620 = load i64, i64* %2610
  %2621 = call i64 @nyx_array_get_checked({ i64, i8* }* %2619, i64 %2620, i64 2)
  %2622 = inttoptr i64 %2621 to %nyx_string*
  %2623 = alloca %nyx_string*
  store %nyx_string* %2622, %nyx_string** %2623
  %2624 = load %nyx_string*, %nyx_string** %2609
  %2625 = load %nyx_string*, %nyx_string** %2623
  %2626 = call %nyx_string* @nyx_string_concat(%nyx_string* %2624, %nyx_string* %2625)
  %2627 = load %nyx_string*, %nyx_string** %2613
  %2628 = call %nyx_string* @nyx_string_concat(%nyx_string* %2626, %nyx_string* %2627)
  store %nyx_string* %2628, %nyx_string** %2609
  %2629 = load i64, i64* %2610
  %2630 = add i64 %2629, 1
  store i64 %2630, i64* %2610
  br label %while_cond571
while_end573:
  %2631 = load %nyx_string*, %nyx_string** %2609
  %2632 = load %nyx_string*, %nyx_string** %template.ptr
  %2633 = call %nyx_string* @agents_bloque(%nyx_string* %2632)
  %2634 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2633)
  %2635 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %2636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2635, i64 1)
  %2637 = call %nyx_string* @nyx_string_concat(%nyx_string* %2634, %nyx_string* %2636)
  %2638 = load %nyx_string*, %nyx_string** %lang.ptr
  %2639 = call %nyx_string* @seed_stamp(%nyx_string* %2638)
  %2640 = call %nyx_string* @nyx_string_concat(%nyx_string* %2637, %nyx_string* %2639)
  store %nyx_string* %2640, %nyx_string** %2609
  %2641 = getelementptr %AgentsMerge, %AgentsMerge* null, i32 1
  %2642 = ptrtoint %AgentsMerge* %2641 to i64
  %2643 = call i8* @GC_malloc(i64 %2642)
  %2644 = bitcast i8* %2643 to %AgentsMerge*
  %2645 = load %nyx_string*, %nyx_string** %2609
  %2646 = getelementptr %AgentsMerge, %AgentsMerge* %2644, i32 0, i32 0
  store %nyx_string* %2645, %nyx_string** %2646
  %2647 = load { i64, i8* }*, { i64, i8* }** %2246
  %2648 = getelementptr %AgentsMerge, %AgentsMerge* %2644, i32 0, i32 1
  store { i64, i8* }* %2647, { i64, i8* }** %2648
  %2649 = load %AgentsMerge, %AgentsMerge* %2644
  ret %AgentsMerge %2649
}

define internal %AgentsMerge @agents_merge(
%nyx_string* %existente.param, %nyx_string* %template.param, %nyx_string* %lang.param) {
  %existente.ptr = alloca %nyx_string*
  store %nyx_string* %existente.param, %nyx_string** %existente.ptr
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2650 = call { i64, i8* }* @nyx_array_new_ptr()
  %2651 = alloca { i64, i8* }*
  store { i64, i8* }* %2650, { i64, i8* }** %2651
  %2652 = load %nyx_string*, %nyx_string** %existente.ptr
  %2653 = call %nyx_string* @nyx_string_trim(%nyx_string* %2652)
  %2654 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %2655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2654, i64 0)
  %2656 = call i1 @nyx_string_equals(%nyx_string* %2653, %nyx_string* %2655)
  br i1 %2656, label %then574, label %else575
then574:
  %2657 = getelementptr %AgentsMerge, %AgentsMerge* null, i32 1
  %2658 = ptrtoint %AgentsMerge* %2657 to i64
  %2659 = call i8* @GC_malloc(i64 %2658)
  %2660 = bitcast i8* %2659 to %AgentsMerge*
  %2661 = load %nyx_string*, %nyx_string** %template.ptr
  %2662 = load %nyx_string*, %nyx_string** %lang.ptr
  %2663 = call %nyx_string* @agents_seed(%nyx_string* %2661, %nyx_string* %2662)
  %2664 = getelementptr %AgentsMerge, %AgentsMerge* %2660, i32 0, i32 0
  store %nyx_string* %2663, %nyx_string** %2664
  %2665 = load { i64, i8* }*, { i64, i8* }** %2651
  %2666 = getelementptr %AgentsMerge, %AgentsMerge* %2660, i32 0, i32 1
  store { i64, i8* }* %2665, { i64, i8* }** %2666
  %2667 = load %AgentsMerge, %AgentsMerge* %2660
  ret %AgentsMerge %2667
else575:
  br label %merge576
merge576:
  %2668 = load %nyx_string*, %nyx_string** %existente.ptr
  %2669 = getelementptr [2 x i8], [2 x i8]* @.str244, i32 0, i32 0
  %2670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2669, i64 1)
  %2671 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2668, %nyx_string* %2670)
  %2672 = alloca { i64, i8* }*
  store { i64, i8* }* %2671, { i64, i8* }** %2672
  %2673 = load { i64, i8* }*, { i64, i8* }** %2672
  %2674 = call %nyx_string* @agents_ini()
  %2675 = call i64 @agents_linea_idx({ i64, i8* }* %2673, %nyx_string* %2674, i64 0)
  %2676 = alloca i64
  store i64 %2675, i64* %2676
  %2677 = load i64, i64* %2676
  %2678 = icmp sge i64 %2677, 0
  br i1 %2678, label %then577, label %else578
then577:
  %2679 = load { i64, i8* }*, { i64, i8* }** %2672
  %2680 = call %nyx_string* @agents_fin()
  %2681 = load i64, i64* %2676
  %2682 = add i64 %2681, 1
  %2683 = call i64 @agents_linea_idx({ i64, i8* }* %2679, %nyx_string* %2680, i64 %2682)
  %2684 = alloca i64
  store i64 %2683, i64* %2684
  %2685 = load i64, i64* %2684
  %2686 = icmp sge i64 %2685, 0
  br i1 %2686, label %then580, label %else581
then580:
  %2687 = getelementptr %AgentsMerge, %AgentsMerge* null, i32 1
  %2688 = ptrtoint %AgentsMerge* %2687 to i64
  %2689 = call i8* @GC_malloc(i64 %2688)
  %2690 = bitcast i8* %2689 to %AgentsMerge*
  %2691 = load { i64, i8* }*, { i64, i8* }** %2672
  %2692 = load i64, i64* %2676
  %2693 = load i64, i64* %2684
  %2694 = load %nyx_string*, %nyx_string** %template.ptr
  %2695 = load %nyx_string*, %nyx_string** %lang.ptr
  %2696 = call %nyx_string* @agents_merge_bloque({ i64, i8* }* %2691, i64 %2692, i64 %2693, %nyx_string* %2694, %nyx_string* %2695)
  %2697 = getelementptr %AgentsMerge, %AgentsMerge* %2690, i32 0, i32 0
  store %nyx_string* %2696, %nyx_string** %2697
  %2698 = load { i64, i8* }*, { i64, i8* }** %2651
  %2699 = getelementptr %AgentsMerge, %AgentsMerge* %2690, i32 0, i32 1
  store { i64, i8* }* %2698, { i64, i8* }** %2699
  %2700 = load %AgentsMerge, %AgentsMerge* %2690
  ret %AgentsMerge %2700
else581:
  br label %merge582
merge582:
  br label %merge579
else578:
  br label %merge579
merge579:
  %2701 = load { i64, i8* }*, { i64, i8* }** %2672
  %2702 = load %nyx_string*, %nyx_string** %template.ptr
  %2703 = load %nyx_string*, %nyx_string** %lang.ptr
  %2704 = call %AgentsMerge @agents_merge_legado({ i64, i8* }* %2701, %nyx_string* %2702, %nyx_string* %2703)
  ret %AgentsMerge %2704
}

define internal i1 @run_agents_merge(
%nyx_string* %dst.param, %nyx_string* %tpl.param, %nyx_string* %lang.param, %nyx_string* %salida.param) {
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %tpl.ptr = alloca %nyx_string*
  store %nyx_string* %tpl.param, %nyx_string** %tpl.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %salida.ptr = alloca %nyx_string*
  store %nyx_string* %salida.param, %nyx_string** %salida.ptr
  %2705 = load %nyx_string*, %nyx_string** %tpl.ptr
  %2706 = call i8* @nyx_string_to_cstr(%nyx_string* %2705)
  %2707 = call i1 @nyx_file_exists(i8* %2706)
  %2708 = icmp eq i1 %2707, 0
  br i1 %2708, label %then583, label %else584
then583:
  %2709 = getelementptr [31 x i8], [31 x i8]* @.str245, i32 0, i32 0
  %2710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2709, i64 30)
  %2711 = load %nyx_string*, %nyx_string** %tpl.ptr
  %2712 = call %nyx_string* @nyx_string_concat(%nyx_string* %2710, %nyx_string* %2711)
  %2713 = call i8* @nyx_string_to_cstr(%nyx_string* %2712)
  call void @nyx_print_string(i8* %2713)
  ret i1 0
else584:
  br label %merge585
merge585:
  %2714 = getelementptr [1 x i8], [1 x i8]* @.str246, i32 0, i32 0
  %2715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2714, i64 0)
  %2716 = alloca %nyx_string*
  store %nyx_string* %2715, %nyx_string** %2716
  %2717 = load %nyx_string*, %nyx_string** %dst.ptr
  %2718 = call i8* @nyx_string_to_cstr(%nyx_string* %2717)
  %2719 = call i1 @nyx_file_exists(i8* %2718)
  br i1 %2719, label %then586, label %else587
then586:
  %2720 = load %nyx_string*, %nyx_string** %dst.ptr
  %2721 = call i8* @nyx_string_to_cstr(%nyx_string* %2720)
  %2722 = call %nyx_string* @nyx_read_file(i8* %2721)
  store %nyx_string* %2722, %nyx_string** %2716
  br label %merge588
else587:
  br label %merge588
merge588:
  %2723 = load %nyx_string*, %nyx_string** %2716
  %2724 = load %nyx_string*, %nyx_string** %tpl.ptr
  %2725 = call i8* @nyx_string_to_cstr(%nyx_string* %2724)
  %2726 = call %nyx_string* @nyx_read_file(i8* %2725)
  %2727 = load %nyx_string*, %nyx_string** %lang.ptr
  %2728 = call %AgentsMerge @agents_merge(%nyx_string* %2723, %nyx_string* %2726, %nyx_string* %2727)
  %2729 = alloca %AgentsMerge
  store %AgentsMerge %2728, %AgentsMerge* %2729
  %2730 = load %nyx_string*, %nyx_string** %salida.ptr
  %2731 = getelementptr %AgentsMerge, %AgentsMerge* %2729, i32 0, i32 0
  %2732 = load %nyx_string*, %nyx_string** %2731
  %2733 = ptrtoint %nyx_string* %2732 to i64
  %2734 = call i8* @nyx_string_to_cstr(%nyx_string* %2730)
  %2735 = inttoptr i64 %2733 to %nyx_string*
  %2736 = call i1 @nyx_write_file_safe(i8* %2734, %nyx_string* %2735)
  %2737 = alloca i64
  store i64 0, i64* %2737
  %2738 = getelementptr [18 x i8], [18 x i8]* @.str247, i32 0, i32 0
  %2739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2738, i64 17)
  %2740 = alloca %nyx_string*
  store %nyx_string* %2739, %nyx_string** %2740
  %2741 = call i8* @llvm.stacksave()
  br label %while_cond589
while_cond589:
  %2742 = load i64, i64* %2737
  %2743 = getelementptr %AgentsMerge, %AgentsMerge* %2729, i32 0, i32 1
  %2744 = load { i64, i8* }*, { i64, i8* }** %2743
  %2745 = call i64 @nyx_array_length({ i64, i8* }* %2744)
  %2746 = icmp slt i64 %2742, %2745
  br i1 %2746, label %while_body590, label %while_end591
while_body590:
  call void @llvm.stackrestore(i8* %2741)
  %2747 = getelementptr %AgentsMerge, %AgentsMerge* %2729, i32 0, i32 1
  %2748 = load { i64, i8* }*, { i64, i8* }** %2747
  %2749 = load i64, i64* %2737
  %2750 = call i64 @nyx_array_get({ i64, i8* }* %2748, i64 %2749)
  %2751 = inttoptr i64 %2750 to %nyx_string*
  %2752 = alloca %nyx_string*
  store %nyx_string* %2751, %nyx_string** %2752
  %2753 = load %nyx_string*, %nyx_string** %2740
  %2754 = load %nyx_string*, %nyx_string** %2752
  %2755 = call %nyx_string* @nyx_string_concat(%nyx_string* %2753, %nyx_string* %2754)
  %2756 = call i8* @nyx_string_to_cstr(%nyx_string* %2755)
  call void @nyx_print_string(i8* %2756)
  %2757 = load i64, i64* %2737
  %2758 = add i64 %2757, 1
  store i64 %2758, i64* %2737
  br label %while_cond589
while_end591:
  ret i1 1
}

define internal i64 @seed_gitignore(
%nyx_string* %dir.param, %nyx_string* %project_name.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %project_name.ptr = alloca %nyx_string*
  store %nyx_string* %project_name.param, %nyx_string** %project_name.ptr
  %2759 = call %nyx_string* @resolve_seed_home()
  %2760 = alloca %nyx_string*
  store %nyx_string* %2759, %nyx_string** %2760
  %2761 = load %nyx_string*, %nyx_string** %2760
  %2762 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2762, i64 0)
  %2764 = call i1 @nyx_string_equals(%nyx_string* %2761, %nyx_string* %2763)
  br i1 %2764, label %then592, label %else593
then592:
  ret i64 0
else593:
  br label %merge594
merge594:
  %2765 = load %nyx_string*, %nyx_string** %2760
  %2766 = getelementptr [21 x i8], [21 x i8]* @.str249, i32 0, i32 0
  %2767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2766, i64 20)
  %2768 = call %nyx_string* @nyx_string_concat(%nyx_string* %2765, %nyx_string* %2767)
  %2769 = alloca %nyx_string*
  store %nyx_string* %2768, %nyx_string** %2769
  %2770 = load %nyx_string*, %nyx_string** %2769
  %2771 = call i8* @nyx_string_to_cstr(%nyx_string* %2770)
  %2772 = call i1 @nyx_file_exists(i8* %2771)
  %2773 = icmp eq i1 %2772, 0
  br i1 %2773, label %then595, label %else596
then595:
  ret i64 0
else596:
  br label %merge597
merge597:
  %2774 = load %nyx_string*, %nyx_string** %dir.ptr
  %2775 = getelementptr [12 x i8], [12 x i8]* @.str250, i32 0, i32 0
  %2776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2775, i64 11)
  %2777 = call %nyx_string* @nyx_string_concat(%nyx_string* %2774, %nyx_string* %2776)
  %2778 = call i8* @nyx_string_to_cstr(%nyx_string* %2777)
  %2779 = call i1 @nyx_file_exists(i8* %2778)
  br i1 %2779, label %then598, label %else599
then598:
  ret i64 0
else599:
  br label %merge600
merge600:
  %2780 = load %nyx_string*, %nyx_string** %2769
  %2781 = call i8* @nyx_string_to_cstr(%nyx_string* %2780)
  %2782 = call %nyx_string* @nyx_read_file(i8* %2781)
  %2783 = alloca %nyx_string*
  store %nyx_string* %2782, %nyx_string** %2783
  %2784 = load %nyx_string*, %nyx_string** %dir.ptr
  %2785 = getelementptr [12 x i8], [12 x i8]* @.str251, i32 0, i32 0
  %2786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2785, i64 11)
  %2787 = call %nyx_string* @nyx_string_concat(%nyx_string* %2784, %nyx_string* %2786)
  %2788 = load %nyx_string*, %nyx_string** %2783
  %2789 = getelementptr [11 x i8], [11 x i8]* @.str252, i32 0, i32 0
  %2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2789, i64 10)
  %2791 = load %nyx_string*, %nyx_string** %project_name.ptr
  %2792 = call %nyx_string* @nyx_string_replace(%nyx_string* %2788, %nyx_string* %2790, %nyx_string* %2791)
  %2793 = ptrtoint %nyx_string* %2792 to i64
  %2794 = call i8* @nyx_string_to_cstr(%nyx_string* %2787)
  %2795 = inttoptr i64 %2793 to %nyx_string*
  %2796 = call i1 @nyx_write_file_safe(i8* %2794, %nyx_string* %2795)
  ret i64 0
}

define internal i1 @validate_agents(
%nyx_string* %agents.param) {
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %2797 = load %nyx_string*, %nyx_string** %agents.ptr
  %2798 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %2799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2798, i64 0)
  %2800 = call i1 @nyx_string_equals(%nyx_string* %2797, %nyx_string* %2799)
  br i1 %2800, label %then601, label %else602
then601:
  ret i1 1
else602:
  br label %merge603
merge603:
  %2801 = load %nyx_string*, %nyx_string** %agents.ptr
  %2802 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %2803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2802, i64 1)
  %2804 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2801, %nyx_string* %2803)
  %2805 = alloca { i64, i8* }*
  store { i64, i8* }* %2804, { i64, i8* }** %2805
  %2806 = alloca i64
  store i64 0, i64* %2806
  %2807 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2807, i64 6)
  %2809 = alloca %nyx_string*
  store %nyx_string* %2808, %nyx_string** %2809
  %2810 = getelementptr [7 x i8], [7 x i8]* @.str256, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2810, i64 6)
  %2812 = alloca %nyx_string*
  store %nyx_string* %2811, %nyx_string** %2812
  %2813 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2813, i64 7)
  %2815 = alloca %nyx_string*
  store %nyx_string* %2814, %nyx_string** %2815
  %2816 = getelementptr [28 x i8], [28 x i8]* @.str258, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2816, i64 27)
  %2818 = alloca %nyx_string*
  store %nyx_string* %2817, %nyx_string** %2818
  %2819 = getelementptr [46 x i8], [46 x i8]* @.str259, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2819, i64 45)
  %2821 = alloca %nyx_string*
  store %nyx_string* %2820, %nyx_string** %2821
  %2822 = getelementptr [72 x i8], [72 x i8]* @.str260, i32 0, i32 0
  %2823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2822, i64 71)
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = call i8* @llvm.stacksave()
  br label %while_cond604
while_cond604:
  %2826 = load i64, i64* %2806
  %2827 = load { i64, i8* }*, { i64, i8* }** %2805
  %2828 = call i64 @nyx_array_length({ i64, i8* }* %2827)
  %2829 = icmp slt i64 %2826, %2828
  br i1 %2829, label %while_body605, label %while_end606
while_body605:
  call void @llvm.stackrestore(i8* %2825)
  %2830 = load { i64, i8* }*, { i64, i8* }** %2805
  %2831 = load i64, i64* %2806
  %2832 = call i64 @nyx_array_get_checked({ i64, i8* }* %2830, i64 %2831, i64 2)
  %2833 = inttoptr i64 %2832 to %nyx_string*
  %2834 = alloca %nyx_string*
  store %nyx_string* %2833, %nyx_string** %2834
  %2835 = load %nyx_string*, %nyx_string** %2834
  %2836 = call %nyx_string* @nyx_string_trim(%nyx_string* %2835)
  %2837 = alloca %nyx_string*
  store %nyx_string* %2836, %nyx_string** %2837
  %2838 = alloca i1
  store i1 false, i1* %2838
  %2839 = alloca i1
  store i1 false, i1* %2839
  %2840 = load %nyx_string*, %nyx_string** %2837
  %2841 = load %nyx_string*, %nyx_string** %2809
  %2842 = call i1 @nyx_string_equals(%nyx_string* %2840, %nyx_string* %2841)
  %2843 = xor i1 %2842, true
  br i1 %2843, label %sc_and_rhs607, label %sc_and_end608
sc_and_rhs607:
  %2844 = load %nyx_string*, %nyx_string** %2837
  %2845 = load %nyx_string*, %nyx_string** %2812
  %2846 = call i1 @nyx_string_equals(%nyx_string* %2844, %nyx_string* %2845)
  %2847 = xor i1 %2846, true
  store i1 %2847, i1* %2839
  br label %sc_and_end608
sc_and_end608:
  %2848 = load i1, i1* %2839
  br i1 %2848, label %sc_and_rhs609, label %sc_and_end610
sc_and_rhs609:
  %2849 = load %nyx_string*, %nyx_string** %2837
  %2850 = load %nyx_string*, %nyx_string** %2815
  %2851 = call i1 @nyx_string_equals(%nyx_string* %2849, %nyx_string* %2850)
  %2852 = xor i1 %2851, true
  store i1 %2852, i1* %2838
  br label %sc_and_end610
sc_and_end610:
  %2853 = load i1, i1* %2838
  br i1 %2853, label %then611, label %else612
then611:
  %2854 = load %nyx_string*, %nyx_string** %2818
  %2855 = load %nyx_string*, %nyx_string** %2837
  %2856 = call %nyx_string* @nyx_string_concat(%nyx_string* %2854, %nyx_string* %2855)
  %2857 = load %nyx_string*, %nyx_string** %2821
  %2858 = call %nyx_string* @nyx_string_concat(%nyx_string* %2856, %nyx_string* %2857)
  %2859 = call i8* @nyx_string_to_cstr(%nyx_string* %2858)
  call void @nyx_print_string(i8* %2859)
  %2860 = load %nyx_string*, %nyx_string** %2824
  %2861 = call i8* @nyx_string_to_cstr(%nyx_string* %2860)
  call void @nyx_print_string(i8* %2861)
  ret i1 0
else612:
  br label %merge613
merge613:
  %2862 = load i64, i64* %2806
  %2863 = add i64 %2862, 1
  store i64 %2863, i64* %2806
  br label %while_cond604
while_end606:
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
  %2864 = load %nyx_string*, %nyx_string** %agents.ptr
  %2865 = getelementptr [1 x i8], [1 x i8]* @.str261, i32 0, i32 0
  %2866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2865, i64 0)
  %2867 = call i1 @nyx_string_equals(%nyx_string* %2864, %nyx_string* %2866)
  br i1 %2867, label %then614, label %else615
then614:
  ret i64 0
else615:
  br label %merge616
merge616:
  %2868 = call %nyx_string* @resolve_seed_home()
  %2869 = alloca %nyx_string*
  store %nyx_string* %2868, %nyx_string** %2869
  %2870 = load %nyx_string*, %nyx_string** %2869
  %2871 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %2872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2871, i64 0)
  %2873 = call i1 @nyx_string_equals(%nyx_string* %2870, %nyx_string* %2872)
  br i1 %2873, label %then617, label %else618
then617:
  ret i64 0
else618:
  br label %merge619
merge619:
  %2874 = load %nyx_string*, %nyx_string** %2869
  %2875 = getelementptr [20 x i8], [20 x i8]* @.str263, i32 0, i32 0
  %2876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2875, i64 19)
  %2877 = call %nyx_string* @nyx_string_concat(%nyx_string* %2874, %nyx_string* %2876)
  %2878 = alloca %nyx_string*
  store %nyx_string* %2877, %nyx_string** %2878
  %2879 = load %nyx_string*, %nyx_string** %agents.ptr
  %2880 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %2881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2880, i64 1)
  %2882 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2879, %nyx_string* %2881)
  %2883 = alloca { i64, i8* }*
  store { i64, i8* }* %2882, { i64, i8* }** %2883
  %2884 = alloca i64
  store i64 0, i64* %2884
  %2885 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %2886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2885, i64 0)
  %2887 = alloca %nyx_string*
  store %nyx_string* %2886, %nyx_string** %2887
  %2888 = getelementptr [2 x i8], [2 x i8]* @.str266, i32 0, i32 0
  %2889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2888, i64 1)
  %2890 = alloca %nyx_string*
  store %nyx_string* %2889, %nyx_string** %2890
  %2891 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %2892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2891, i64 1)
  %2893 = alloca %nyx_string*
  store %nyx_string* %2892, %nyx_string** %2893
  %2894 = getelementptr [4 x i8], [4 x i8]* @.str268, i32 0, i32 0
  %2895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2894, i64 3)
  %2896 = alloca %nyx_string*
  store %nyx_string* %2895, %nyx_string** %2896
  %2897 = getelementptr [7 x i8], [7 x i8]* @.str269, i32 0, i32 0
  %2898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2897, i64 6)
  %2899 = alloca %nyx_string*
  store %nyx_string* %2898, %nyx_string** %2899
  %2900 = getelementptr [11 x i8], [11 x i8]* @.str270, i32 0, i32 0
  %2901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2900, i64 10)
  %2902 = alloca %nyx_string*
  store %nyx_string* %2901, %nyx_string** %2902
  %2903 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %2904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2903, i64 6)
  %2905 = alloca %nyx_string*
  store %nyx_string* %2904, %nyx_string** %2905
  %2906 = getelementptr [14 x i8], [14 x i8]* @.str272, i32 0, i32 0
  %2907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2906, i64 13)
  %2908 = alloca %nyx_string*
  store %nyx_string* %2907, %nyx_string** %2908
  %2909 = getelementptr [8 x i8], [8 x i8]* @.str273, i32 0, i32 0
  %2910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2909, i64 7)
  %2911 = alloca %nyx_string*
  store %nyx_string* %2910, %nyx_string** %2911
  %2912 = getelementptr [11 x i8], [11 x i8]* @.str274, i32 0, i32 0
  %2913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2912, i64 10)
  %2914 = alloca %nyx_string*
  store %nyx_string* %2913, %nyx_string** %2914
  %2915 = getelementptr [10 x i8], [10 x i8]* @.str275, i32 0, i32 0
  %2916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2915, i64 9)
  %2917 = alloca %nyx_string*
  store %nyx_string* %2916, %nyx_string** %2917
  %2918 = getelementptr [33 x i8], [33 x i8]* @.str276, i32 0, i32 0
  %2919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2918, i64 32)
  %2920 = alloca %nyx_string*
  store %nyx_string* %2919, %nyx_string** %2920
  %2921 = getelementptr [44 x i8], [44 x i8]* @.str277, i32 0, i32 0
  %2922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2921, i64 43)
  %2923 = alloca %nyx_string*
  store %nyx_string* %2922, %nyx_string** %2923
  %2924 = getelementptr [4 x i8], [4 x i8]* @.str278, i32 0, i32 0
  %2925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2924, i64 3)
  %2926 = alloca %nyx_string*
  store %nyx_string* %2925, %nyx_string** %2926
  %2927 = getelementptr [20 x i8], [20 x i8]* @.str279, i32 0, i32 0
  %2928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2927, i64 19)
  %2929 = alloca %nyx_string*
  store %nyx_string* %2928, %nyx_string** %2929
  %2930 = call i8* @llvm.stacksave()
  br label %while_cond620
while_cond620:
  %2931 = load i64, i64* %2884
  %2932 = load { i64, i8* }*, { i64, i8* }** %2883
  %2933 = call i64 @nyx_array_length({ i64, i8* }* %2932)
  %2934 = icmp slt i64 %2931, %2933
  br i1 %2934, label %while_body621, label %while_end622
while_body621:
  call void @llvm.stackrestore(i8* %2930)
  %2935 = load { i64, i8* }*, { i64, i8* }** %2883
  %2936 = load i64, i64* %2884
  %2937 = call i64 @nyx_array_get_checked({ i64, i8* }* %2935, i64 %2936, i64 2)
  %2938 = inttoptr i64 %2937 to %nyx_string*
  %2939 = alloca %nyx_string*
  store %nyx_string* %2938, %nyx_string** %2939
  %2940 = load %nyx_string*, %nyx_string** %2939
  %2941 = call %nyx_string* @nyx_string_trim(%nyx_string* %2940)
  %2942 = alloca %nyx_string*
  store %nyx_string* %2941, %nyx_string** %2942
  %2943 = load %nyx_string*, %nyx_string** %2942
  %2944 = load %nyx_string*, %nyx_string** %2887
  %2945 = call i1 @nyx_string_equals(%nyx_string* %2943, %nyx_string* %2944)
  %2946 = xor i1 %2945, true
  br i1 %2946, label %then623, label %else624
then623:
  %2947 = load %nyx_string*, %nyx_string** %2878
  %2948 = load %nyx_string*, %nyx_string** %2890
  %2949 = call %nyx_string* @nyx_string_concat(%nyx_string* %2947, %nyx_string* %2948)
  %2950 = load %nyx_string*, %nyx_string** %2942
  %2951 = call %nyx_string* @nyx_string_concat(%nyx_string* %2949, %nyx_string* %2950)
  %2952 = load %nyx_string*, %nyx_string** %2893
  %2953 = call %nyx_string* @nyx_string_concat(%nyx_string* %2951, %nyx_string* %2952)
  %2954 = load %nyx_string*, %nyx_string** %lang.ptr
  %2955 = call %nyx_string* @nyx_string_concat(%nyx_string* %2953, %nyx_string* %2954)
  %2956 = load %nyx_string*, %nyx_string** %2896
  %2957 = call %nyx_string* @nyx_string_concat(%nyx_string* %2955, %nyx_string* %2956)
  %2958 = alloca %nyx_string*
  store %nyx_string* %2957, %nyx_string** %2958
  %2959 = load %nyx_string*, %nyx_string** %2958
  %2960 = call i8* @nyx_string_to_cstr(%nyx_string* %2959)
  %2961 = call i1 @nyx_file_exists(i8* %2960)
  br i1 %2961, label %then626, label %else627
then626:
  %2962 = load %nyx_string*, %nyx_string** %2958
  %2963 = call i8* @nyx_string_to_cstr(%nyx_string* %2962)
  %2964 = call %nyx_string* @nyx_read_file(i8* %2963)
  %2965 = alloca %nyx_string*
  store %nyx_string* %2964, %nyx_string** %2965
  %2966 = load %nyx_string*, %nyx_string** %2942
  %2967 = load %nyx_string*, %nyx_string** %2899
  %2968 = call i1 @nyx_string_equals(%nyx_string* %2966, %nyx_string* %2967)
  br i1 %2968, label %then629, label %else630
then629:
  %2969 = load %nyx_string*, %nyx_string** %dir.ptr
  %2970 = load %nyx_string*, %nyx_string** %2902
  %2971 = call %nyx_string* @nyx_string_concat(%nyx_string* %2969, %nyx_string* %2970)
  %2972 = load %nyx_string*, %nyx_string** %2965
  %2973 = load %nyx_string*, %nyx_string** %lang.ptr
  %2974 = call i64 @seed_file(%nyx_string* %2971, %nyx_string* %2972, %nyx_string* %2973)
  br label %merge631
else630:
  br label %merge631
merge631:
  %2975 = load %nyx_string*, %nyx_string** %2942
  %2976 = load %nyx_string*, %nyx_string** %2905
  %2977 = call i1 @nyx_string_equals(%nyx_string* %2975, %nyx_string* %2976)
  br i1 %2977, label %then632, label %else633
then632:
  %2978 = load %nyx_string*, %nyx_string** %dir.ptr
  %2979 = load %nyx_string*, %nyx_string** %2908
  %2980 = call %nyx_string* @nyx_string_concat(%nyx_string* %2978, %nyx_string* %2979)
  %2981 = load %nyx_string*, %nyx_string** %2965
  %2982 = load %nyx_string*, %nyx_string** %lang.ptr
  %2983 = call i64 @seed_file(%nyx_string* %2980, %nyx_string* %2981, %nyx_string* %2982)
  br label %merge634
else633:
  br label %merge634
merge634:
  %2984 = load %nyx_string*, %nyx_string** %2942
  %2985 = load %nyx_string*, %nyx_string** %2911
  %2986 = call i1 @nyx_string_equals(%nyx_string* %2984, %nyx_string* %2985)
  br i1 %2986, label %then635, label %else636
then635:
  %2987 = load %nyx_string*, %nyx_string** %2914
  %2988 = load %nyx_string*, %nyx_string** %dir.ptr
  %2989 = call %nyx_string* @nyx_string_concat(%nyx_string* %2987, %nyx_string* %2988)
  %2990 = load %nyx_string*, %nyx_string** %2917
  %2991 = call %nyx_string* @nyx_string_concat(%nyx_string* %2989, %nyx_string* %2990)
  %2992 = call i8* @nyx_string_to_cstr(%nyx_string* %2991)
  %2993 = call %nyx_string* @nyx_exec(i8* %2992)
  %2994 = load %nyx_string*, %nyx_string** %dir.ptr
  %2995 = load %nyx_string*, %nyx_string** %2920
  %2996 = call %nyx_string* @nyx_string_concat(%nyx_string* %2994, %nyx_string* %2995)
  %2997 = load %nyx_string*, %nyx_string** %2965
  %2998 = load %nyx_string*, %nyx_string** %lang.ptr
  %2999 = call i64 @seed_file(%nyx_string* %2996, %nyx_string* %2997, %nyx_string* %2998)
  br label %merge637
else636:
  br label %merge637
merge637:
  br label %merge628
else627:
  %3000 = load %nyx_string*, %nyx_string** %2923
  %3001 = load %nyx_string*, %nyx_string** %2942
  %3002 = call %nyx_string* @nyx_string_concat(%nyx_string* %3000, %nyx_string* %3001)
  %3003 = load %nyx_string*, %nyx_string** %2926
  %3004 = call %nyx_string* @nyx_string_concat(%nyx_string* %3002, %nyx_string* %3003)
  %3005 = load %nyx_string*, %nyx_string** %2958
  %3006 = call %nyx_string* @nyx_string_concat(%nyx_string* %3004, %nyx_string* %3005)
  %3007 = load %nyx_string*, %nyx_string** %2929
  %3008 = call %nyx_string* @nyx_string_concat(%nyx_string* %3006, %nyx_string* %3007)
  %3009 = call i8* @nyx_string_to_cstr(%nyx_string* %3008)
  call void @nyx_print_string(i8* %3009)
  br label %merge628
merge628:
  br label %merge625
else624:
  br label %merge625
merge625:
  %3010 = load i64, i64* %2884
  %3011 = add i64 %3010, 1
  store i64 %3011, i64* %2884
  br label %while_cond620
while_end622:
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
  %3012 = call %nyx_string* @resolve_seed_home()
  %3013 = alloca %nyx_string*
  store %nyx_string* %3012, %nyx_string** %3013
  %3014 = load %nyx_string*, %nyx_string** %3013
  %3015 = getelementptr [11 x i8], [11 x i8]* @.str280, i32 0, i32 0
  %3016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %3015, i64 10)
  %3017 = call %nyx_string* @nyx_string_concat(%nyx_string* %3014, %nyx_string* %3016)
  %3018 = alloca %nyx_string*
  store %nyx_string* %3017, %nyx_string** %3018
  %3019 = load %nyx_string*, %nyx_string** %3018
  %3020 = getelementptr [2 x i8], [2 x i8]* @.str281, i32 0, i32 0
  %3021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %3020, i64 1)
  %3022 = call %nyx_string* @nyx_string_concat(%nyx_string* %3019, %nyx_string* %3021)
  %3023 = load %nyx_string*, %nyx_string** %lang.ptr
  %3024 = call %nyx_string* @nyx_string_concat(%nyx_string* %3022, %nyx_string* %3023)
  %3025 = alloca %nyx_string*
  store %nyx_string* %3024, %nyx_string** %3025
  %3026 = alloca i1
  store i1 0, i1* %3026
  %3027 = load %nyx_string*, %nyx_string** %3013
  %3028 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %3029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %3028, i64 0)
  %3030 = call i1 @nyx_string_equals(%nyx_string* %3027, %nyx_string* %3029)
  %3031 = xor i1 %3030, true
  br i1 %3031, label %then638, label %else639
then638:
  %3032 = load %nyx_string*, %nyx_string** %3025
  %3033 = getelementptr [11 x i8], [11 x i8]* @.str283, i32 0, i32 0
  %3034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %3033, i64 10)
  %3035 = call %nyx_string* @nyx_string_concat(%nyx_string* %3032, %nyx_string* %3034)
  %3036 = call i8* @nyx_string_to_cstr(%nyx_string* %3035)
  %3037 = call i1 @nyx_file_exists(i8* %3036)
  br i1 %3037, label %then641, label %else642
then641:
  store i1 1, i1* %3026
  br label %merge643
else642:
  br label %merge643
merge643:
  br label %merge640
else639:
  br label %merge640
merge640:
  %3038 = load i1, i1* %3026
  %3039 = icmp eq i1 %3038, 0
  br i1 %3039, label %then644, label %else645
then644:
  %3040 = getelementptr [74 x i8], [74 x i8]* @.str284, i32 0, i32 0
  %3041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %3040, i64 73)
  %3042 = load %nyx_string*, %nyx_string** %lang.ptr
  %3043 = call %nyx_string* @nyx_string_concat(%nyx_string* %3041, %nyx_string* %3042)
  %3044 = getelementptr [84 x i8], [84 x i8]* @.str285, i32 0, i32 0
  %3045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %3044, i64 83)
  %3046 = call %nyx_string* @nyx_string_concat(%nyx_string* %3043, %nyx_string* %3045)
  %3047 = call i8* @nyx_string_to_cstr(%nyx_string* %3046)
  call void @nyx_print_string(i8* %3047)
  %3048 = getelementptr [82 x i8], [82 x i8]* @.str286, i32 0, i32 0
  %3049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %3048, i64 81)
  %3050 = call i8* @nyx_string_to_cstr(%nyx_string* %3049)
  call void @nyx_print_string(i8* %3050)
  ret i64 0
else645:
  br label %merge646
merge646:
  %3051 = load %nyx_string*, %nyx_string** %3025
  %3052 = getelementptr [11 x i8], [11 x i8]* @.str287, i32 0, i32 0
  %3053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %3052, i64 10)
  %3054 = call %nyx_string* @nyx_string_concat(%nyx_string* %3051, %nyx_string* %3053)
  %3055 = call i8* @nyx_string_to_cstr(%nyx_string* %3054)
  %3056 = call %nyx_string* @nyx_read_file(i8* %3055)
  %3057 = alloca %nyx_string*
  store %nyx_string* %3056, %nyx_string** %3057
  %3058 = load %nyx_string*, %nyx_string** %dir.ptr
  %3059 = getelementptr [11 x i8], [11 x i8]* @.str288, i32 0, i32 0
  %3060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %3059, i64 10)
  %3061 = call %nyx_string* @nyx_string_concat(%nyx_string* %3058, %nyx_string* %3060)
  %3062 = load %nyx_string*, %nyx_string** %3057
  %3063 = load %nyx_string*, %nyx_string** %lang.ptr
  %3064 = call %nyx_string* @agents_seed(%nyx_string* %3062, %nyx_string* %3063)
  %3065 = ptrtoint %nyx_string* %3064 to i64
  %3066 = call i8* @nyx_string_to_cstr(%nyx_string* %3061)
  %3067 = inttoptr i64 %3065 to %nyx_string*
  %3068 = call i1 @nyx_write_file_safe(i8* %3066, %nyx_string* %3067)
  %3069 = load %nyx_string*, %nyx_string** %dir.ptr
  %3070 = getelementptr [17 x i8], [17 x i8]* @.str289, i32 0, i32 0
  %3071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %3070, i64 16)
  %3072 = call %nyx_string* @nyx_string_concat(%nyx_string* %3069, %nyx_string* %3071)
  %3073 = call i1 @run_capabilities(%nyx_string* %3072)
  %3074 = alloca i1
  store i1 %3073, i1* %3074
  %3075 = getelementptr [11 x i8], [11 x i8]* @.str290, i32 0, i32 0
  %3076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %3075, i64 10)
  %3077 = load %nyx_string*, %nyx_string** %dir.ptr
  %3078 = call %nyx_string* @nyx_string_concat(%nyx_string* %3076, %nyx_string* %3077)
  %3079 = getelementptr [18 x i8], [18 x i8]* @.str291, i32 0, i32 0
  %3080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %3079, i64 17)
  %3081 = call %nyx_string* @nyx_string_concat(%nyx_string* %3078, %nyx_string* %3080)
  %3082 = call i8* @nyx_string_to_cstr(%nyx_string* %3081)
  %3083 = call %nyx_string* @nyx_exec(i8* %3082)
  %3084 = load %nyx_string*, %nyx_string** %3018
  %3085 = getelementptr [20 x i8], [20 x i8]* @.str292, i32 0, i32 0
  %3086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %3085, i64 19)
  %3087 = call %nyx_string* @nyx_string_concat(%nyx_string* %3084, %nyx_string* %3086)
  %3088 = alloca %nyx_string*
  store %nyx_string* %3087, %nyx_string** %3088
  %3089 = load %nyx_string*, %nyx_string** %3088
  %3090 = call i8* @nyx_string_to_cstr(%nyx_string* %3089)
  %3091 = call i1 @nyx_file_exists(i8* %3090)
  br i1 %3091, label %then647, label %else648
then647:
  %3092 = load %nyx_string*, %nyx_string** %3088
  %3093 = call i8* @nyx_string_to_cstr(%nyx_string* %3092)
  %3094 = call %nyx_string* @nyx_read_file(i8* %3093)
  %3095 = alloca %nyx_string*
  store %nyx_string* %3094, %nyx_string** %3095
  %3096 = load %nyx_string*, %nyx_string** %dir.ptr
  %3097 = getelementptr [17 x i8], [17 x i8]* @.str293, i32 0, i32 0
  %3098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %3097, i64 16)
  %3099 = call %nyx_string* @nyx_string_concat(%nyx_string* %3096, %nyx_string* %3098)
  %3100 = load %nyx_string*, %nyx_string** %3095
  %3101 = load %nyx_string*, %nyx_string** %lang.ptr
  %3102 = call i64 @seed_file(%nyx_string* %3099, %nyx_string* %3100, %nyx_string* %3101)
  br label %merge649
else648:
  %3103 = getelementptr [14 x i8], [14 x i8]* @.str294, i32 0, i32 0
  %3104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %3103, i64 13)
  %3105 = load %nyx_string*, %nyx_string** %3088
  %3106 = call %nyx_string* @nyx_string_concat(%nyx_string* %3104, %nyx_string* %3105)
  %3107 = getelementptr [71 x i8], [71 x i8]* @.str295, i32 0, i32 0
  %3108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %3107, i64 70)
  %3109 = call %nyx_string* @nyx_string_concat(%nyx_string* %3106, %nyx_string* %3108)
  %3110 = call i8* @nyx_string_to_cstr(%nyx_string* %3109)
  call void @nyx_print_string(i8* %3110)
  %3111 = getelementptr [111 x i8], [111 x i8]* @.str296, i32 0, i32 0
  %3112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %3111, i64 110)
  %3113 = call i8* @nyx_string_to_cstr(%nyx_string* %3112)
  call void @nyx_print_string(i8* %3113)
  br label %merge649
merge649:
  %3114 = load %nyx_string*, %nyx_string** %3025
  %3115 = getelementptr [17 x i8], [17 x i8]* @.str297, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %3115, i64 16)
  %3117 = call %nyx_string* @nyx_string_concat(%nyx_string* %3114, %nyx_string* %3116)
  %3118 = alloca %nyx_string*
  store %nyx_string* %3117, %nyx_string** %3118
  %3119 = load %nyx_string*, %nyx_string** %3118
  %3120 = call i8* @nyx_string_to_cstr(%nyx_string* %3119)
  %3121 = call i1 @nyx_file_exists(i8* %3120)
  br i1 %3121, label %then650, label %else651
then650:
  %3122 = load %nyx_string*, %nyx_string** %3118
  %3123 = call i8* @nyx_string_to_cstr(%nyx_string* %3122)
  %3124 = call { i64, i8* }* @nyx_readdir(i8* %3123)
  %3125 = alloca { i64, i8* }*
  store { i64, i8* }* %3124, { i64, i8* }** %3125
  %3126 = alloca i64
  store i64 0, i64* %3126
  %3127 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %3128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %3127, i64 1)
  %3129 = alloca %nyx_string*
  store %nyx_string* %3128, %nyx_string** %3129
  %3130 = getelementptr [18 x i8], [18 x i8]* @.str299, i32 0, i32 0
  %3131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %3130, i64 17)
  %3132 = alloca %nyx_string*
  store %nyx_string* %3131, %nyx_string** %3132
  %3133 = call i8* @llvm.stacksave()
  br label %while_cond653
while_cond653:
  %3134 = load i64, i64* %3126
  %3135 = load { i64, i8* }*, { i64, i8* }** %3125
  %3136 = call i64 @nyx_array_length({ i64, i8* }* %3135)
  %3137 = icmp slt i64 %3134, %3136
  br i1 %3137, label %while_body654, label %while_end655
while_body654:
  call void @llvm.stackrestore(i8* %3133)
  %3138 = load { i64, i8* }*, { i64, i8* }** %3125
  %3139 = load i64, i64* %3126
  %3140 = call i64 @nyx_array_get_checked({ i64, i8* }* %3138, i64 %3139, i64 2)
  %3141 = inttoptr i64 %3140 to %nyx_string*
  %3142 = alloca %nyx_string*
  store %nyx_string* %3141, %nyx_string** %3142
  %3143 = load %nyx_string*, %nyx_string** %3118
  %3144 = load %nyx_string*, %nyx_string** %3129
  %3145 = call %nyx_string* @nyx_string_concat(%nyx_string* %3143, %nyx_string* %3144)
  %3146 = load %nyx_string*, %nyx_string** %3142
  %3147 = call %nyx_string* @nyx_string_concat(%nyx_string* %3145, %nyx_string* %3146)
  %3148 = alloca %nyx_string*
  store %nyx_string* %3147, %nyx_string** %3148
  %3149 = load %nyx_string*, %nyx_string** %3148
  %3150 = call i8* @nyx_string_to_cstr(%nyx_string* %3149)
  %3151 = call i1 @nyx_file_exists(i8* %3150)
  br i1 %3151, label %then656, label %else657
then656:
  %3152 = load %nyx_string*, %nyx_string** %3148
  %3153 = call i8* @nyx_string_to_cstr(%nyx_string* %3152)
  %3154 = call %nyx_string* @nyx_read_file(i8* %3153)
  %3155 = alloca %nyx_string*
  store %nyx_string* %3154, %nyx_string** %3155
  %3156 = load %nyx_string*, %nyx_string** %dir.ptr
  %3157 = load %nyx_string*, %nyx_string** %3132
  %3158 = call %nyx_string* @nyx_string_concat(%nyx_string* %3156, %nyx_string* %3157)
  %3159 = load %nyx_string*, %nyx_string** %3142
  %3160 = call %nyx_string* @nyx_string_concat(%nyx_string* %3158, %nyx_string* %3159)
  %3161 = load %nyx_string*, %nyx_string** %3155
  %3162 = load %nyx_string*, %nyx_string** %lang.ptr
  %3163 = call i64 @seed_file(%nyx_string* %3160, %nyx_string* %3161, %nyx_string* %3162)
  br label %merge658
else657:
  br label %merge658
merge658:
  %3164 = load i64, i64* %3126
  %3165 = add i64 %3164, 1
  store i64 %3165, i64* %3126
  br label %while_cond653
while_end655:
  br label %merge652
else651:
  br label %merge652
merge652:
  %3166 = load %nyx_string*, %nyx_string** %dir.ptr
  %3167 = load %nyx_string*, %nyx_string** %lang.ptr
  %3168 = load %nyx_string*, %nyx_string** %agents.ptr
  %3169 = call i64 @seed_adapters(%nyx_string* %3166, %nyx_string* %3167, %nyx_string* %3168)
  ret i64 0
}

define internal %nyx_string* @sdd_generated_marker(
) {
  %3170 = getelementptr [28 x i8], [28 x i8]* @.str300, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %3170, i64 27)
  ret %nyx_string* %3171
}

define internal %nyx_string* @sdd_msg(
%nyx_string* %lang.param, %nyx_string* %en.param, %nyx_string* %es.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %3172 = load %nyx_string*, %nyx_string** %lang.ptr
  %3173 = getelementptr [3 x i8], [3 x i8]* @.str301, i32 0, i32 0
  %3174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %3173, i64 2)
  %3175 = call i1 @nyx_string_equals(%nyx_string* %3172, %nyx_string* %3174)
  br i1 %3175, label %then659, label %else660
then659:
  %3176 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %3176
else660:
  br label %merge661
merge661:
  %3177 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %3177
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
  %3178 = load %nyx_string*, %nyx_string** %dst.ptr
  %3179 = call i8* @nyx_string_to_cstr(%nyx_string* %3178)
  %3180 = call i1 @nyx_file_exists(i8* %3179)
  br i1 %3180, label %then662, label %else663
then662:
  %3181 = load %nyx_string*, %nyx_string** %lang.ptr
  %3182 = getelementptr [28 x i8], [28 x i8]* @.str302, i32 0, i32 0
  %3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %3182, i64 27)
  %3184 = load %nyx_string*, %nyx_string** %dst.ptr
  %3185 = call %nyx_string* @nyx_string_concat(%nyx_string* %3183, %nyx_string* %3184)
  %3186 = getelementptr [25 x i8], [25 x i8]* @.str303, i32 0, i32 0
  %3187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %3186, i64 24)
  %3188 = load %nyx_string*, %nyx_string** %dst.ptr
  %3189 = call %nyx_string* @nyx_string_concat(%nyx_string* %3187, %nyx_string* %3188)
  %3190 = call %nyx_string* @sdd_msg(%nyx_string* %3181, %nyx_string* %3185, %nyx_string* %3189)
  %3191 = call i8* @nyx_string_to_cstr(%nyx_string* %3190)
  call void @nyx_print_string(i8* %3191)
  ret i1 0
else663:
  br label %merge664
merge664:
  %3192 = load %nyx_string*, %nyx_string** %tpl_dir.ptr
  %3193 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %3194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3193, i64 1)
  %3195 = call %nyx_string* @nyx_string_concat(%nyx_string* %3192, %nyx_string* %3194)
  %3196 = load %nyx_string*, %nyx_string** %name.ptr
  %3197 = call %nyx_string* @nyx_string_concat(%nyx_string* %3195, %nyx_string* %3196)
  %3198 = alloca %nyx_string*
  store %nyx_string* %3197, %nyx_string** %3198
  %3199 = load %nyx_string*, %nyx_string** %3198
  %3200 = call i8* @nyx_string_to_cstr(%nyx_string* %3199)
  %3201 = call i1 @nyx_file_exists(i8* %3200)
  %3202 = icmp eq i1 %3201, 0
  br i1 %3202, label %then665, label %else666
then665:
  %3203 = getelementptr [27 x i8], [27 x i8]* @.str305, i32 0, i32 0
  %3204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3203, i64 26)
  %3205 = load %nyx_string*, %nyx_string** %3198
  %3206 = call %nyx_string* @nyx_string_concat(%nyx_string* %3204, %nyx_string* %3205)
  %3207 = getelementptr [19 x i8], [19 x i8]* @.str306, i32 0, i32 0
  %3208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3207, i64 18)
  %3209 = call %nyx_string* @nyx_string_concat(%nyx_string* %3206, %nyx_string* %3208)
  %3210 = load %nyx_string*, %nyx_string** %dst.ptr
  %3211 = call %nyx_string* @nyx_string_concat(%nyx_string* %3209, %nyx_string* %3210)
  %3212 = getelementptr [16 x i8], [16 x i8]* @.str307, i32 0, i32 0
  %3213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3212, i64 15)
  %3214 = call %nyx_string* @nyx_string_concat(%nyx_string* %3211, %nyx_string* %3213)
  %3215 = call i8* @nyx_string_to_cstr(%nyx_string* %3214)
  call void @nyx_print_string(i8* %3215)
  ret i1 0
else666:
  br label %merge667
merge667:
  %3216 = load %nyx_string*, %nyx_string** %3198
  %3217 = call i8* @nyx_string_to_cstr(%nyx_string* %3216)
  %3218 = call %nyx_string* @nyx_read_file(i8* %3217)
  %3219 = alloca %nyx_string*
  store %nyx_string* %3218, %nyx_string** %3219
  %3220 = load %nyx_string*, %nyx_string** %dst.ptr
  %3221 = load %nyx_string*, %nyx_string** %3219
  %3222 = load %nyx_string*, %nyx_string** %lang.ptr
  %3223 = call i64 @seed_file(%nyx_string* %3220, %nyx_string* %3221, %nyx_string* %3222)
  %3224 = getelementptr [3 x i8], [3 x i8]* @.str308, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3224, i64 2)
  %3226 = load %nyx_string*, %nyx_string** %dst.ptr
  %3227 = call %nyx_string* @nyx_string_concat(%nyx_string* %3225, %nyx_string* %3226)
  %3228 = call i8* @nyx_string_to_cstr(%nyx_string* %3227)
  call void @nyx_print_string(i8* %3228)
  ret i1 1
}

define internal %nyx_string* @nx_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %3229 = getelementptr [1 x i8], [1 x i8]* @.str309, i32 0, i32 0
  %3230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3229, i64 0)
  %3231 = alloca %nyx_string*
  store %nyx_string* %3230, %nyx_string** %3231
  %3232 = alloca i64
  store i64 0, i64* %3232
  %3233 = getelementptr [2 x i8], [2 x i8]* @.str310, i32 0, i32 0
  %3234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3233, i64 1)
  %3235 = alloca %nyx_string*
  store %nyx_string* %3234, %nyx_string** %3235
  %3236 = getelementptr [3 x i8], [3 x i8]* @.str311, i32 0, i32 0
  %3237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3236, i64 2)
  %3238 = alloca %nyx_string*
  store %nyx_string* %3237, %nyx_string** %3238
  %3239 = getelementptr [2 x i8], [2 x i8]* @.str312, i32 0, i32 0
  %3240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3239, i64 1)
  %3241 = alloca %nyx_string*
  store %nyx_string* %3240, %nyx_string** %3241
  %3242 = getelementptr [3 x i8], [3 x i8]* @.str313, i32 0, i32 0
  %3243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3242, i64 2)
  %3244 = alloca %nyx_string*
  store %nyx_string* %3243, %nyx_string** %3244
  %3245 = call i8* @llvm.stacksave()
  br label %while_cond668
while_cond668:
  %3246 = load i64, i64* %3232
  %3247 = load %nyx_string*, %nyx_string** %s.ptr
  %3248 = call i64 @nyx_string_byte_length(%nyx_string* %3247)
  %3249 = icmp slt i64 %3246, %3248
  br i1 %3249, label %while_body669, label %while_end670
while_body669:
  call void @llvm.stackrestore(i8* %3245)
  %3250 = load %nyx_string*, %nyx_string** %s.ptr
  %3251 = load i64, i64* %3232
  %3252 = load i64, i64* %3232
  %3253 = add i64 %3252, 1
  %3254 = call %nyx_string* @nyx_string_substring(%nyx_string* %3250, i64 %3251, i64 %3253)
  %3255 = alloca %nyx_string*
  store %nyx_string* %3254, %nyx_string** %3255
  %3256 = load %nyx_string*, %nyx_string** %3255
  %3257 = load %nyx_string*, %nyx_string** %3235
  %3258 = call i1 @nyx_string_equals(%nyx_string* %3256, %nyx_string* %3257)
  br i1 %3258, label %then671, label %else672
then671:
  %3259 = load %nyx_string*, %nyx_string** %3231
  %3260 = load %nyx_string*, %nyx_string** %3238
  %3261 = call %nyx_string* @nyx_string_concat(%nyx_string* %3259, %nyx_string* %3260)
  store %nyx_string* %3261, %nyx_string** %3231
  br label %merge673
else672:
  %3262 = load %nyx_string*, %nyx_string** %3255
  %3263 = load %nyx_string*, %nyx_string** %3241
  %3264 = call i1 @nyx_string_equals(%nyx_string* %3262, %nyx_string* %3263)
  br i1 %3264, label %then674, label %else675
then674:
  %3265 = load %nyx_string*, %nyx_string** %3231
  %3266 = load %nyx_string*, %nyx_string** %3244
  %3267 = call %nyx_string* @nyx_string_concat(%nyx_string* %3265, %nyx_string* %3266)
  store %nyx_string* %3267, %nyx_string** %3231
  br label %merge676
else675:
  %3268 = load %nyx_string*, %nyx_string** %3231
  %3269 = load %nyx_string*, %nyx_string** %3255
  %3270 = call %nyx_string* @nyx_string_concat(%nyx_string* %3268, %nyx_string* %3269)
  store %nyx_string* %3270, %nyx_string** %3231
  br label %merge676
merge676:
  br label %merge673
merge673:
  %3271 = load i64, i64* %3232
  %3272 = add i64 %3271, 1
  store i64 %3272, i64* %3232
  br label %while_cond668
while_end670:
  %3273 = load %nyx_string*, %nyx_string** %3231
  ret %nyx_string* %3273
}

define internal %nyx_string* @evidence_body(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3274 = call %nyx_string* @toolchain_version()
  %3275 = alloca %nyx_string*
  store %nyx_string* %3274, %nyx_string** %3275
  %3276 = getelementptr [1 x i8], [1 x i8]* @.str314, i32 0, i32 0
  %3277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3276, i64 0)
  %3278 = alloca %nyx_string*
  store %nyx_string* %3277, %nyx_string** %3278
  %3279 = load %nyx_string*, %nyx_string** %3278
  %3280 = load %nyx_string*, %nyx_string** %lang.ptr
  %3281 = getelementptr [20 x i8], [20 x i8]* @.str315, i32 0, i32 0
  %3282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3281, i64 19)
  %3283 = load %nyx_string*, %nyx_string** %3275
  %3284 = call %nyx_string* @nyx_string_concat(%nyx_string* %3282, %nyx_string* %3283)
  %3285 = getelementptr [2 x i8], [2 x i8]* @.str316, i32 0, i32 0
  %3286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3285, i64 1)
  %3287 = call %nyx_string* @nyx_string_concat(%nyx_string* %3284, %nyx_string* %3286)
  %3288 = getelementptr [21 x i8], [21 x i8]* @.str317, i32 0, i32 0
  %3289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3288, i64 20)
  %3290 = load %nyx_string*, %nyx_string** %3275
  %3291 = call %nyx_string* @nyx_string_concat(%nyx_string* %3289, %nyx_string* %3290)
  %3292 = getelementptr [2 x i8], [2 x i8]* @.str318, i32 0, i32 0
  %3293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3292, i64 1)
  %3294 = call %nyx_string* @nyx_string_concat(%nyx_string* %3291, %nyx_string* %3293)
  %3295 = call %nyx_string* @sdd_msg(%nyx_string* %3280, %nyx_string* %3287, %nyx_string* %3294)
  %3296 = call %nyx_string* @nyx_string_concat(%nyx_string* %3279, %nyx_string* %3295)
  store %nyx_string* %3296, %nyx_string** %3278
  %3297 = load %nyx_string*, %nyx_string** %3278
  %3298 = getelementptr [7 x i8], [7 x i8]* @.str319, i32 0, i32 0
  %3299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3298, i64 6)
  %3300 = call %nyx_string* @nyx_string_concat(%nyx_string* %3297, %nyx_string* %3299)
  %3301 = call %nyx_string* @sdd_generated_marker()
  %3302 = call %nyx_string* @nyx_string_concat(%nyx_string* %3300, %nyx_string* %3301)
  %3303 = getelementptr [110 x i8], [110 x i8]* @.str320, i32 0, i32 0
  %3304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3303, i64 109)
  %3305 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3304)
  store %nyx_string* %3305, %nyx_string** %3278
  %3306 = load %nyx_string*, %nyx_string** %3278
  %3307 = load %nyx_string*, %nyx_string** %lang.ptr
  %3308 = getelementptr [319 x i8], [319 x i8]* @.str321, i32 0, i32 0
  %3309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3308, i64 318)
  %3310 = getelementptr [334 x i8], [334 x i8]* @.str322, i32 0, i32 0
  %3311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3310, i64 333)
  %3312 = call %nyx_string* @sdd_msg(%nyx_string* %3307, %nyx_string* %3309, %nyx_string* %3311)
  %3313 = call %nyx_string* @nyx_string_concat(%nyx_string* %3306, %nyx_string* %3312)
  store %nyx_string* %3313, %nyx_string** %3278
  %3314 = load %nyx_string*, %nyx_string** %3278
  %3315 = getelementptr [2 x i8], [2 x i8]* @.str323, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3315, i64 1)
  %3317 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3316)
  store %nyx_string* %3317, %nyx_string** %3278
  %3318 = call { i64, i8* }* @gotchas_table()
  %3319 = alloca { i64, i8* }*
  store { i64, i8* }* %3318, { i64, i8* }** %3319
  %3320 = alloca i64
  store i64 0, i64* %3320
  %3321 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %3322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3321, i64 4)
  %3323 = alloca %nyx_string*
  store %nyx_string* %3322, %nyx_string** %3323
  %3324 = getelementptr [9 x i8], [9 x i8]* @.str325, i32 0, i32 0
  %3325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3324, i64 8)
  %3326 = alloca %nyx_string*
  store %nyx_string* %3325, %nyx_string** %3326
  %3327 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %3328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3327, i64 0)
  %3329 = alloca %nyx_string*
  store %nyx_string* %3328, %nyx_string** %3329
  %3330 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %3331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3330, i64 4)
  %3332 = alloca %nyx_string*
  store %nyx_string* %3331, %nyx_string** %3332
  %3333 = getelementptr [5 x i8], [5 x i8]* @.str328, i32 0, i32 0
  %3334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3333, i64 4)
  %3335 = alloca %nyx_string*
  store %nyx_string* %3334, %nyx_string** %3335
  %3336 = getelementptr [3 x i8], [3 x i8]* @.str329, i32 0, i32 0
  %3337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3336, i64 2)
  %3338 = alloca %nyx_string*
  store %nyx_string* %3337, %nyx_string** %3338
  %3339 = getelementptr [6 x i8], [6 x i8]* @.str330, i32 0, i32 0
  %3340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3339, i64 5)
  %3341 = alloca %nyx_string*
  store %nyx_string* %3340, %nyx_string** %3341
  %3342 = getelementptr [7 x i8], [7 x i8]* @.str331, i32 0, i32 0
  %3343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3342, i64 6)
  %3344 = alloca %nyx_string*
  store %nyx_string* %3343, %nyx_string** %3344
  %3345 = getelementptr [5 x i8], [5 x i8]* @.str332, i32 0, i32 0
  %3346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3345, i64 4)
  %3347 = alloca %nyx_string*
  store %nyx_string* %3346, %nyx_string** %3347
  %3348 = getelementptr [9 x i8], [9 x i8]* @.str333, i32 0, i32 0
  %3349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3348, i64 8)
  %3350 = alloca %nyx_string*
  store %nyx_string* %3349, %nyx_string** %3350
  %3351 = getelementptr [3 x i8], [3 x i8]* @.str334, i32 0, i32 0
  %3352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3351, i64 2)
  %3353 = alloca %nyx_string*
  store %nyx_string* %3352, %nyx_string** %3353
  %3354 = getelementptr [9 x i8], [9 x i8]* @.str335, i32 0, i32 0
  %3355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3354, i64 8)
  %3356 = alloca %nyx_string*
  store %nyx_string* %3355, %nyx_string** %3356
  %3357 = getelementptr [5 x i8], [5 x i8]* @.str336, i32 0, i32 0
  %3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3357, i64 4)
  %3359 = alloca %nyx_string*
  store %nyx_string* %3358, %nyx_string** %3359
  %3360 = getelementptr [5 x i8], [5 x i8]* @.str337, i32 0, i32 0
  %3361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3360, i64 4)
  %3362 = alloca %nyx_string*
  store %nyx_string* %3361, %nyx_string** %3362
  %3363 = getelementptr [9 x i8], [9 x i8]* @.str338, i32 0, i32 0
  %3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3363, i64 8)
  %3365 = alloca %nyx_string*
  store %nyx_string* %3364, %nyx_string** %3365
  %3366 = getelementptr [7 x i8], [7 x i8]* @.str339, i32 0, i32 0
  %3367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3366, i64 6)
  %3368 = alloca %nyx_string*
  store %nyx_string* %3367, %nyx_string** %3368
  %3369 = getelementptr [14 x i8], [14 x i8]* @.str340, i32 0, i32 0
  %3370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3369, i64 13)
  %3371 = alloca %nyx_string*
  store %nyx_string* %3370, %nyx_string** %3371
  %3372 = getelementptr [2 x i8], [2 x i8]* @.str341, i32 0, i32 0
  %3373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3372, i64 1)
  %3374 = alloca %nyx_string*
  store %nyx_string* %3373, %nyx_string** %3374
  %3375 = getelementptr [12 x i8], [12 x i8]* @.str342, i32 0, i32 0
  %3376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3375, i64 11)
  %3377 = alloca %nyx_string*
  store %nyx_string* %3376, %nyx_string** %3377
  %3378 = getelementptr [2 x i8], [2 x i8]* @.str343, i32 0, i32 0
  %3379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3378, i64 1)
  %3380 = alloca %nyx_string*
  store %nyx_string* %3379, %nyx_string** %3380
  %3381 = call i8* @llvm.stacksave()
  br label %while_cond677
while_cond677:
  %3382 = load i64, i64* %3320
  %3383 = load { i64, i8* }*, { i64, i8* }** %3319
  %3384 = call i64 @nyx_array_length({ i64, i8* }* %3383)
  %3385 = icmp slt i64 %3382, %3384
  br i1 %3385, label %while_body678, label %while_end679
while_body678:
  call void @llvm.stackrestore(i8* %3381)
  %3386 = load { i64, i8* }*, { i64, i8* }** %3319
  %3387 = load i64, i64* %3320
  %3388 = call i64 @nyx_array_get({ i64, i8* }* %3386, i64 %3387)
  %3389 = inttoptr i64 %3388 to { i64, i8* }*
  %3390 = alloca { i64, i8* }*
  store { i64, i8* }* %3389, { i64, i8* }** %3390
  %3391 = load { i64, i8* }*, { i64, i8* }** %3390
  %3392 = load %nyx_string*, %nyx_string** %3323
  %3393 = call %nyx_string* @gotcha_field({ i64, i8* }* %3391, %nyx_string* %3392)
  %3394 = alloca %nyx_string*
  store %nyx_string* %3393, %nyx_string** %3394
  %3395 = load { i64, i8* }*, { i64, i8* }** %3390
  %3396 = load %nyx_string*, %nyx_string** %3326
  %3397 = call %nyx_string* @gotcha_field({ i64, i8* }* %3395, %nyx_string* %3396)
  %3398 = alloca %nyx_string*
  store %nyx_string* %3397, %nyx_string** %3398
  %3399 = load %nyx_string*, %nyx_string** %3398
  %3400 = load %nyx_string*, %nyx_string** %3329
  %3401 = call i1 @nyx_string_equals(%nyx_string* %3399, %nyx_string* %3400)
  br i1 %3401, label %then680, label %else681
then680:
  %3402 = alloca i1
  store i1 true, i1* %3402
  %3403 = load %nyx_string*, %nyx_string** %3394
  %3404 = load %nyx_string*, %nyx_string** %3332
  %3405 = call i1 @nyx_string_equals(%nyx_string* %3403, %nyx_string* %3404)
  br i1 %3405, label %sc_or_end684, label %sc_or_rhs683
sc_or_rhs683:
  %3406 = load %nyx_string*, %nyx_string** %3394
  %3407 = load %nyx_string*, %nyx_string** %3335
  %3408 = call i1 @nyx_string_equals(%nyx_string* %3406, %nyx_string* %3407)
  store i1 %3408, i1* %3402
  br label %sc_or_end684
sc_or_end684:
  %3409 = load i1, i1* %3402
  br i1 %3409, label %then685, label %else686
then685:
  %3410 = load { i64, i8* }*, { i64, i8* }** %3390
  %3411 = load %nyx_string*, %nyx_string** %3338
  %3412 = call %nyx_string* @gotcha_field({ i64, i8* }* %3410, %nyx_string* %3411)
  %3413 = alloca %nyx_string*
  store %nyx_string* %3412, %nyx_string** %3413
  %3414 = load { i64, i8* }*, { i64, i8* }** %3390
  %3415 = load %nyx_string*, %nyx_string** %3341
  %3416 = call %nyx_string* @gotcha_field({ i64, i8* }* %3414, %nyx_string* %3415)
  %3417 = alloca %nyx_string*
  store %nyx_string* %3416, %nyx_string** %3417
  %3418 = load { i64, i8* }*, { i64, i8* }** %3390
  %3419 = load %nyx_string*, %nyx_string** %3344
  %3420 = call %nyx_string* @gotcha_field({ i64, i8* }* %3418, %nyx_string* %3419)
  %3421 = alloca %nyx_string*
  store %nyx_string* %3420, %nyx_string** %3421
  %3422 = load { i64, i8* }*, { i64, i8* }** %3390
  %3423 = load %nyx_string*, %nyx_string** %3347
  %3424 = call %nyx_string* @gotcha_field({ i64, i8* }* %3422, %nyx_string* %3423)
  %3425 = alloca %nyx_string*
  store %nyx_string* %3424, %nyx_string** %3425
  %3426 = load { i64, i8* }*, { i64, i8* }** %3390
  %3427 = load %nyx_string*, %nyx_string** %3350
  %3428 = call %nyx_string* @gotcha_field({ i64, i8* }* %3426, %nyx_string* %3427)
  %3429 = alloca %nyx_string*
  store %nyx_string* %3428, %nyx_string** %3429
  %3430 = load %nyx_string*, %nyx_string** %lang.ptr
  %3431 = load %nyx_string*, %nyx_string** %3353
  %3432 = call i1 @nyx_string_equals(%nyx_string* %3430, %nyx_string* %3431)
  br i1 %3432, label %then688, label %else689
then688:
  %3433 = load { i64, i8* }*, { i64, i8* }** %3390
  %3434 = load %nyx_string*, %nyx_string** %3356
  %3435 = call %nyx_string* @gotcha_field({ i64, i8* }* %3433, %nyx_string* %3434)
  store %nyx_string* %3435, %nyx_string** %3429
  br label %merge690
else689:
  br label %merge690
merge690:
  %3436 = load %nyx_string*, %nyx_string** %3278
  %3437 = load %nyx_string*, %nyx_string** %3359
  %3438 = call %nyx_string* @nyx_string_concat(%nyx_string* %3436, %nyx_string* %3437)
  %3439 = load %nyx_string*, %nyx_string** %3413
  %3440 = call %nyx_string* @nyx_string_concat(%nyx_string* %3438, %nyx_string* %3439)
  %3441 = load %nyx_string*, %nyx_string** %3362
  %3442 = call %nyx_string* @nyx_string_concat(%nyx_string* %3440, %nyx_string* %3441)
  %3443 = load %nyx_string*, %nyx_string** %3394
  %3444 = call %nyx_string* @nyx_string_concat(%nyx_string* %3442, %nyx_string* %3443)
  %3445 = load %nyx_string*, %nyx_string** %3365
  %3446 = call %nyx_string* @nyx_string_concat(%nyx_string* %3444, %nyx_string* %3445)
  %3447 = load %nyx_string*, %nyx_string** %3417
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3446, %nyx_string* %3447)
  %3449 = load %nyx_string*, %nyx_string** %3368
  %3450 = call %nyx_string* @nyx_string_concat(%nyx_string* %3448, %nyx_string* %3449)
  %3451 = load %nyx_string*, %nyx_string** %3429
  %3452 = call %nyx_string* @nyx_string_concat(%nyx_string* %3450, %nyx_string* %3451)
  store %nyx_string* %3452, %nyx_string** %3278
  %3453 = load %nyx_string*, %nyx_string** %3421
  %3454 = load %nyx_string*, %nyx_string** %3329
  %3455 = call i1 @nyx_string_equals(%nyx_string* %3453, %nyx_string* %3454)
  %3456 = xor i1 %3455, true
  br i1 %3456, label %then691, label %else692
then691:
  %3457 = load %nyx_string*, %nyx_string** %3278
  %3458 = load %nyx_string*, %nyx_string** %3371
  %3459 = call %nyx_string* @nyx_string_concat(%nyx_string* %3457, %nyx_string* %3458)
  %3460 = load %nyx_string*, %nyx_string** %3421
  %3461 = call %nyx_string* @nyx_string_concat(%nyx_string* %3459, %nyx_string* %3460)
  %3462 = load %nyx_string*, %nyx_string** %3374
  %3463 = call %nyx_string* @nyx_string_concat(%nyx_string* %3461, %nyx_string* %3462)
  store %nyx_string* %3463, %nyx_string** %3278
  br label %merge693
else692:
  br label %merge693
merge693:
  %3464 = load %nyx_string*, %nyx_string** %3425
  %3465 = load %nyx_string*, %nyx_string** %3329
  %3466 = call i1 @nyx_string_equals(%nyx_string* %3464, %nyx_string* %3465)
  %3467 = xor i1 %3466, true
  br i1 %3467, label %then694, label %else695
then694:
  %3468 = load %nyx_string*, %nyx_string** %3278
  %3469 = load %nyx_string*, %nyx_string** %3377
  %3470 = call %nyx_string* @nyx_string_concat(%nyx_string* %3468, %nyx_string* %3469)
  %3471 = load %nyx_string*, %nyx_string** %3425
  %3472 = call %nyx_string* @nyx_string_concat(%nyx_string* %3470, %nyx_string* %3471)
  %3473 = load %nyx_string*, %nyx_string** %3374
  %3474 = call %nyx_string* @nyx_string_concat(%nyx_string* %3472, %nyx_string* %3473)
  store %nyx_string* %3474, %nyx_string** %3278
  br label %merge696
else695:
  br label %merge696
merge696:
  %3475 = load %nyx_string*, %nyx_string** %3278
  %3476 = load %nyx_string*, %nyx_string** %3380
  %3477 = call %nyx_string* @nyx_string_concat(%nyx_string* %3475, %nyx_string* %3476)
  store %nyx_string* %3477, %nyx_string** %3278
  br label %merge687
else686:
  br label %merge687
merge687:
  br label %merge682
else681:
  br label %merge682
merge682:
  %3478 = load i64, i64* %3320
  %3479 = add i64 %3478, 1
  store i64 %3479, i64* %3320
  br label %while_cond677
while_end679:
  %3480 = load %nyx_string*, %nyx_string** %3278
  %3481 = load %nyx_string*, %nyx_string** %lang.ptr
  %3482 = getelementptr [14 x i8], [14 x i8]* @.str344, i32 0, i32 0
  %3483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3482, i64 13)
  %3484 = getelementptr [16 x i8], [16 x i8]* @.str345, i32 0, i32 0
  %3485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3484, i64 15)
  %3486 = call %nyx_string* @sdd_msg(%nyx_string* %3481, %nyx_string* %3483, %nyx_string* %3485)
  %3487 = call %nyx_string* @nyx_string_concat(%nyx_string* %3480, %nyx_string* %3486)
  store %nyx_string* %3487, %nyx_string** %3278
  %3488 = load %nyx_string*, %nyx_string** %3278
  %3489 = load %nyx_string*, %nyx_string** %lang.ptr
  %3490 = getelementptr [139 x i8], [139 x i8]* @.str346, i32 0, i32 0
  %3491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3490, i64 138)
  %3492 = getelementptr [150 x i8], [150 x i8]* @.str347, i32 0, i32 0
  %3493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3492, i64 149)
  %3494 = call %nyx_string* @sdd_msg(%nyx_string* %3489, %nyx_string* %3491, %nyx_string* %3493)
  %3495 = call %nyx_string* @nyx_string_concat(%nyx_string* %3488, %nyx_string* %3494)
  store %nyx_string* %3495, %nyx_string** %3278
  %3496 = alloca i64
  store i64 0, i64* %3496
  %3497 = getelementptr [9 x i8], [9 x i8]* @.str348, i32 0, i32 0
  %3498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3497, i64 8)
  %3499 = alloca %nyx_string*
  store %nyx_string* %3498, %nyx_string** %3499
  %3500 = getelementptr [1 x i8], [1 x i8]* @.str349, i32 0, i32 0
  %3501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3500, i64 0)
  %3502 = alloca %nyx_string*
  store %nyx_string* %3501, %nyx_string** %3502
  %3503 = getelementptr [3 x i8], [3 x i8]* @.str350, i32 0, i32 0
  %3504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3503, i64 2)
  %3505 = alloca %nyx_string*
  store %nyx_string* %3504, %nyx_string** %3505
  %3506 = getelementptr [9 x i8], [9 x i8]* @.str351, i32 0, i32 0
  %3507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3506, i64 8)
  %3508 = alloca %nyx_string*
  store %nyx_string* %3507, %nyx_string** %3508
  %3509 = getelementptr [3 x i8], [3 x i8]* @.str352, i32 0, i32 0
  %3510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3509, i64 2)
  %3511 = alloca %nyx_string*
  store %nyx_string* %3510, %nyx_string** %3511
  %3512 = getelementptr [9 x i8], [9 x i8]* @.str353, i32 0, i32 0
  %3513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3512, i64 8)
  %3514 = alloca %nyx_string*
  store %nyx_string* %3513, %nyx_string** %3514
  %3515 = getelementptr [5 x i8], [5 x i8]* @.str354, i32 0, i32 0
  %3516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3515, i64 4)
  %3517 = alloca %nyx_string*
  store %nyx_string* %3516, %nyx_string** %3517
  %3518 = getelementptr [14 x i8], [14 x i8]* @.str355, i32 0, i32 0
  %3519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3518, i64 13)
  %3520 = alloca %nyx_string*
  store %nyx_string* %3519, %nyx_string** %3520
  %3521 = getelementptr [7 x i8], [7 x i8]* @.str356, i32 0, i32 0
  %3522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3521, i64 6)
  %3523 = alloca %nyx_string*
  store %nyx_string* %3522, %nyx_string** %3523
  %3524 = getelementptr [2 x i8], [2 x i8]* @.str357, i32 0, i32 0
  %3525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3524, i64 1)
  %3526 = alloca %nyx_string*
  store %nyx_string* %3525, %nyx_string** %3526
  %3527 = call i8* @llvm.stacksave()
  br label %while_cond697
while_cond697:
  %3528 = load i64, i64* %3496
  %3529 = load { i64, i8* }*, { i64, i8* }** %3319
  %3530 = call i64 @nyx_array_length({ i64, i8* }* %3529)
  %3531 = icmp slt i64 %3528, %3530
  br i1 %3531, label %while_body698, label %while_end699
while_body698:
  call void @llvm.stackrestore(i8* %3527)
  %3532 = load { i64, i8* }*, { i64, i8* }** %3319
  %3533 = load i64, i64* %3496
  %3534 = call i64 @nyx_array_get({ i64, i8* }* %3532, i64 %3533)
  %3535 = inttoptr i64 %3534 to { i64, i8* }*
  %3536 = alloca { i64, i8* }*
  store { i64, i8* }* %3535, { i64, i8* }** %3536
  %3537 = load { i64, i8* }*, { i64, i8* }** %3536
  %3538 = load %nyx_string*, %nyx_string** %3499
  %3539 = call %nyx_string* @gotcha_field({ i64, i8* }* %3537, %nyx_string* %3538)
  %3540 = alloca %nyx_string*
  store %nyx_string* %3539, %nyx_string** %3540
  %3541 = load %nyx_string*, %nyx_string** %3540
  %3542 = load %nyx_string*, %nyx_string** %3502
  %3543 = call i1 @nyx_string_equals(%nyx_string* %3541, %nyx_string* %3542)
  %3544 = xor i1 %3543, true
  br i1 %3544, label %then700, label %else701
then700:
  %3545 = load { i64, i8* }*, { i64, i8* }** %3536
  %3546 = load %nyx_string*, %nyx_string** %3505
  %3547 = call %nyx_string* @gotcha_field({ i64, i8* }* %3545, %nyx_string* %3546)
  %3548 = alloca %nyx_string*
  store %nyx_string* %3547, %nyx_string** %3548
  %3549 = load { i64, i8* }*, { i64, i8* }** %3536
  %3550 = load %nyx_string*, %nyx_string** %3508
  %3551 = call %nyx_string* @gotcha_field({ i64, i8* }* %3549, %nyx_string* %3550)
  %3552 = alloca %nyx_string*
  store %nyx_string* %3551, %nyx_string** %3552
  %3553 = load %nyx_string*, %nyx_string** %lang.ptr
  %3554 = load %nyx_string*, %nyx_string** %3511
  %3555 = call i1 @nyx_string_equals(%nyx_string* %3553, %nyx_string* %3554)
  br i1 %3555, label %then703, label %else704
then703:
  %3556 = load { i64, i8* }*, { i64, i8* }** %3536
  %3557 = load %nyx_string*, %nyx_string** %3514
  %3558 = call %nyx_string* @gotcha_field({ i64, i8* }* %3556, %nyx_string* %3557)
  store %nyx_string* %3558, %nyx_string** %3552
  br label %merge705
else704:
  br label %merge705
merge705:
  %3559 = load %nyx_string*, %nyx_string** %3278
  %3560 = load %nyx_string*, %nyx_string** %3517
  %3561 = call %nyx_string* @nyx_string_concat(%nyx_string* %3559, %nyx_string* %3560)
  %3562 = load %nyx_string*, %nyx_string** %3548
  %3563 = call %nyx_string* @nyx_string_concat(%nyx_string* %3561, %nyx_string* %3562)
  %3564 = load %nyx_string*, %nyx_string** %3520
  %3565 = call %nyx_string* @nyx_string_concat(%nyx_string* %3563, %nyx_string* %3564)
  %3566 = load %nyx_string*, %nyx_string** %3540
  %3567 = call %nyx_string* @nyx_string_concat(%nyx_string* %3565, %nyx_string* %3566)
  %3568 = load %nyx_string*, %nyx_string** %3523
  %3569 = call %nyx_string* @nyx_string_concat(%nyx_string* %3567, %nyx_string* %3568)
  %3570 = load %nyx_string*, %nyx_string** %3552
  %3571 = call %nyx_string* @nyx_string_concat(%nyx_string* %3569, %nyx_string* %3570)
  %3572 = load %nyx_string*, %nyx_string** %3526
  %3573 = call %nyx_string* @nyx_string_concat(%nyx_string* %3571, %nyx_string* %3572)
  store %nyx_string* %3573, %nyx_string** %3278
  br label %merge702
else701:
  br label %merge702
merge702:
  %3574 = load i64, i64* %3496
  %3575 = add i64 %3574, 1
  store i64 %3575, i64* %3496
  br label %while_cond697
while_end699:
  %3576 = load %nyx_string*, %nyx_string** %3278
  ret %nyx_string* %3576
}

define internal i64 @write_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3577 = load %nyx_string*, %nyx_string** %dir.ptr
  %3578 = getelementptr [20 x i8], [20 x i8]* @.str358, i32 0, i32 0
  %3579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3578, i64 19)
  %3580 = call %nyx_string* @nyx_string_concat(%nyx_string* %3577, %nyx_string* %3579)
  %3581 = call %nyx_string* @toolchain_version()
  %3582 = call %nyx_string* @nyx_string_concat(%nyx_string* %3580, %nyx_string* %3581)
  %3583 = getelementptr [4 x i8], [4 x i8]* @.str359, i32 0, i32 0
  %3584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3583, i64 3)
  %3585 = call %nyx_string* @nyx_string_concat(%nyx_string* %3582, %nyx_string* %3584)
  %3586 = alloca %nyx_string*
  store %nyx_string* %3585, %nyx_string** %3586
  %3587 = load %nyx_string*, %nyx_string** %lang.ptr
  %3588 = call %nyx_string* @evidence_body(%nyx_string* %3587)
  %3589 = load %nyx_string*, %nyx_string** %lang.ptr
  %3590 = call %nyx_string* @seed_body(%nyx_string* %3588, %nyx_string* %3589)
  %3591 = alloca %nyx_string*
  store %nyx_string* %3590, %nyx_string** %3591
  %3592 = load %nyx_string*, %nyx_string** %3586
  %3593 = call i8* @nyx_string_to_cstr(%nyx_string* %3592)
  %3594 = call i1 @nyx_file_exists(i8* %3593)
  br i1 %3594, label %then706, label %else707
then706:
  %3595 = load %nyx_string*, %nyx_string** %3586
  %3596 = call i8* @nyx_string_to_cstr(%nyx_string* %3595)
  %3597 = call %nyx_string* @nyx_read_file(i8* %3596)
  %3598 = alloca %nyx_string*
  store %nyx_string* %3597, %nyx_string** %3598
  %3599 = load %nyx_string*, %nyx_string** %3598
  %3600 = load %nyx_string*, %nyx_string** %3591
  %3601 = call i1 @nyx_string_equals(%nyx_string* %3599, %nyx_string* %3600)
  br i1 %3601, label %then709, label %else710
then709:
  ret i64 0
else710:
  br label %merge711
merge711:
  %3602 = load %nyx_string*, %nyx_string** %3598
  %3603 = call %nyx_string* @sdd_generated_marker()
  %3604 = call i64 @nyx_string_index_of(%nyx_string* %3602, %nyx_string* %3603)
  %3605 = icmp slt i64 %3604, 0
  br i1 %3605, label %then712, label %else713
then712:
  ret i64 2
else713:
  br label %merge714
merge714:
  br label %merge708
else707:
  br label %merge708
merge708:
  %3606 = load %nyx_string*, %nyx_string** %3586
  %3607 = load %nyx_string*, %nyx_string** %3591
  %3608 = ptrtoint %nyx_string* %3607 to i64
  %3609 = call i8* @nyx_string_to_cstr(%nyx_string* %3606)
  %3610 = inttoptr i64 %3608 to %nyx_string*
  %3611 = call i1 @nyx_write_file_safe(i8* %3609, %nyx_string* %3610)
  ret i64 1
}

define internal %nyx_string* @constitution_test_body(
) {
  %3612 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %3613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3612, i64 0)
  %3614 = alloca %nyx_string*
  store %nyx_string* %3613, %nyx_string** %3614
  %3615 = load %nyx_string*, %nyx_string** %3614
  %3616 = getelementptr [4 x i8], [4 x i8]* @.str361, i32 0, i32 0
  %3617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3616, i64 3)
  %3618 = call %nyx_string* @nyx_string_concat(%nyx_string* %3615, %nyx_string* %3617)
  %3619 = call %nyx_string* @sdd_generated_marker()
  %3620 = call %nyx_string* @nyx_string_concat(%nyx_string* %3618, %nyx_string* %3619)
  %3621 = getelementptr [80 x i8], [80 x i8]* @.str362, i32 0, i32 0
  %3622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3621, i64 79)
  %3623 = call %nyx_string* @nyx_string_concat(%nyx_string* %3620, %nyx_string* %3622)
  store %nyx_string* %3623, %nyx_string** %3614
  %3624 = load %nyx_string*, %nyx_string** %3614
  %3625 = getelementptr [96 x i8], [96 x i8]* @.str363, i32 0, i32 0
  %3626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3625, i64 95)
  %3627 = call %nyx_string* @nyx_string_concat(%nyx_string* %3624, %nyx_string* %3626)
  store %nyx_string* %3627, %nyx_string** %3614
  %3628 = load %nyx_string*, %nyx_string** %3614
  %3629 = getelementptr [72 x i8], [72 x i8]* @.str364, i32 0, i32 0
  %3630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3629, i64 71)
  %3631 = call %nyx_string* @nyx_string_concat(%nyx_string* %3628, %nyx_string* %3630)
  store %nyx_string* %3631, %nyx_string** %3614
  %3632 = load %nyx_string*, %nyx_string** %3614
  %3633 = getelementptr [20 x i8], [20 x i8]* @.str365, i32 0, i32 0
  %3634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3633, i64 19)
  %3635 = call %nyx_string* @nyx_string_concat(%nyx_string* %3632, %nyx_string* %3634)
  store %nyx_string* %3635, %nyx_string** %3614
  %3636 = load %nyx_string*, %nyx_string** %3614
  %3637 = getelementptr [2 x i8], [2 x i8]* @.str366, i32 0, i32 0
  %3638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3637, i64 1)
  %3639 = call %nyx_string* @nyx_string_concat(%nyx_string* %3636, %nyx_string* %3638)
  store %nyx_string* %3639, %nyx_string** %3614
  %3640 = load %nyx_string*, %nyx_string** %3614
  %3641 = call %nyx_string* @gotcha_scan_src()
  %3642 = call %nyx_string* @nyx_string_concat(%nyx_string* %3640, %nyx_string* %3641)
  store %nyx_string* %3642, %nyx_string** %3614
  %3643 = load %nyx_string*, %nyx_string** %3614
  %3644 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %3645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3644, i64 1)
  %3646 = call %nyx_string* @nyx_string_concat(%nyx_string* %3643, %nyx_string* %3645)
  store %nyx_string* %3646, %nyx_string** %3614
  %3647 = load %nyx_string*, %nyx_string** %3614
  %3648 = getelementptr [83 x i8], [83 x i8]* @.str368, i32 0, i32 0
  %3649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3648, i64 82)
  %3650 = call %nyx_string* @nyx_string_concat(%nyx_string* %3647, %nyx_string* %3649)
  store %nyx_string* %3650, %nyx_string** %3614
  %3651 = load %nyx_string*, %nyx_string** %3614
  %3652 = getelementptr [85 x i8], [85 x i8]* @.str369, i32 0, i32 0
  %3653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3652, i64 84)
  %3654 = call %nyx_string* @nyx_string_concat(%nyx_string* %3651, %nyx_string* %3653)
  store %nyx_string* %3654, %nyx_string** %3614
  %3655 = load %nyx_string*, %nyx_string** %3614
  %3656 = getelementptr [83 x i8], [83 x i8]* @.str370, i32 0, i32 0
  %3657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3656, i64 82)
  %3658 = call %nyx_string* @nyx_string_concat(%nyx_string* %3655, %nyx_string* %3657)
  store %nyx_string* %3658, %nyx_string** %3614
  %3659 = load %nyx_string*, %nyx_string** %3614
  %3660 = getelementptr [83 x i8], [83 x i8]* @.str371, i32 0, i32 0
  %3661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3660, i64 82)
  %3662 = call %nyx_string* @nyx_string_concat(%nyx_string* %3659, %nyx_string* %3661)
  store %nyx_string* %3662, %nyx_string** %3614
  %3663 = load %nyx_string*, %nyx_string** %3614
  %3664 = getelementptr [56 x i8], [56 x i8]* @.str372, i32 0, i32 0
  %3665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3664, i64 55)
  %3666 = call %nyx_string* @nyx_string_concat(%nyx_string* %3663, %nyx_string* %3665)
  store %nyx_string* %3666, %nyx_string** %3614
  %3667 = load %nyx_string*, %nyx_string** %3614
  %3668 = getelementptr [31 x i8], [31 x i8]* @.str373, i32 0, i32 0
  %3669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3668, i64 30)
  %3670 = call %nyx_string* @nyx_string_concat(%nyx_string* %3667, %nyx_string* %3669)
  store %nyx_string* %3670, %nyx_string** %3614
  %3671 = load %nyx_string*, %nyx_string** %3614
  %3672 = getelementptr [47 x i8], [47 x i8]* @.str374, i32 0, i32 0
  %3673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3672, i64 46)
  %3674 = call %nyx_string* @nyx_string_concat(%nyx_string* %3671, %nyx_string* %3673)
  store %nyx_string* %3674, %nyx_string** %3614
  %3675 = load %nyx_string*, %nyx_string** %3614
  %3676 = getelementptr [40 x i8], [40 x i8]* @.str375, i32 0, i32 0
  %3677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3676, i64 39)
  %3678 = call %nyx_string* @nyx_string_concat(%nyx_string* %3675, %nyx_string* %3677)
  store %nyx_string* %3678, %nyx_string** %3614
  %3679 = load %nyx_string*, %nyx_string** %3614
  %3680 = getelementptr [20 x i8], [20 x i8]* @.str376, i32 0, i32 0
  %3681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3680, i64 19)
  %3682 = call %nyx_string* @nyx_string_concat(%nyx_string* %3679, %nyx_string* %3681)
  store %nyx_string* %3682, %nyx_string** %3614
  %3683 = load %nyx_string*, %nyx_string** %3614
  %3684 = getelementptr [58 x i8], [58 x i8]* @.str377, i32 0, i32 0
  %3685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3684, i64 57)
  %3686 = call %nyx_string* @nyx_string_concat(%nyx_string* %3683, %nyx_string* %3685)
  store %nyx_string* %3686, %nyx_string** %3614
  %3687 = load %nyx_string*, %nyx_string** %3614
  %3688 = getelementptr [7 x i8], [7 x i8]* @.str378, i32 0, i32 0
  %3689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3688, i64 6)
  %3690 = call %nyx_string* @nyx_string_concat(%nyx_string* %3687, %nyx_string* %3689)
  store %nyx_string* %3690, %nyx_string** %3614
  %3691 = load %nyx_string*, %nyx_string** %3614
  %3692 = getelementptr [15 x i8], [15 x i8]* @.str379, i32 0, i32 0
  %3693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3692, i64 14)
  %3694 = call %nyx_string* @nyx_string_concat(%nyx_string* %3691, %nyx_string* %3693)
  store %nyx_string* %3694, %nyx_string** %3614
  %3695 = load %nyx_string*, %nyx_string** %3614
  %3696 = getelementptr [3 x i8], [3 x i8]* @.str380, i32 0, i32 0
  %3697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3696, i64 2)
  %3698 = call %nyx_string* @nyx_string_concat(%nyx_string* %3695, %nyx_string* %3697)
  store %nyx_string* %3698, %nyx_string** %3614
  %3699 = load %nyx_string*, %nyx_string** %3614
  %3700 = getelementptr [2 x i8], [2 x i8]* @.str381, i32 0, i32 0
  %3701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3700, i64 1)
  %3702 = call %nyx_string* @nyx_string_concat(%nyx_string* %3699, %nyx_string* %3701)
  store %nyx_string* %3702, %nyx_string** %3614
  %3703 = load %nyx_string*, %nyx_string** %3614
  %3704 = getelementptr [79 x i8], [79 x i8]* @.str382, i32 0, i32 0
  %3705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3704, i64 78)
  %3706 = call %nyx_string* @nyx_string_concat(%nyx_string* %3703, %nyx_string* %3705)
  store %nyx_string* %3706, %nyx_string** %3614
  %3707 = load %nyx_string*, %nyx_string** %3614
  %3708 = getelementptr [57 x i8], [57 x i8]* @.str383, i32 0, i32 0
  %3709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3708, i64 56)
  %3710 = call %nyx_string* @nyx_string_concat(%nyx_string* %3707, %nyx_string* %3709)
  store %nyx_string* %3710, %nyx_string** %3614
  %3711 = load %nyx_string*, %nyx_string** %3614
  %3712 = getelementptr [37 x i8], [37 x i8]* @.str384, i32 0, i32 0
  %3713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3712, i64 36)
  %3714 = call %nyx_string* @nyx_string_concat(%nyx_string* %3711, %nyx_string* %3713)
  store %nyx_string* %3714, %nyx_string** %3614
  %3715 = load %nyx_string*, %nyx_string** %3614
  %3716 = getelementptr [25 x i8], [25 x i8]* @.str385, i32 0, i32 0
  %3717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3716, i64 24)
  %3718 = call %nyx_string* @nyx_string_concat(%nyx_string* %3715, %nyx_string* %3717)
  store %nyx_string* %3718, %nyx_string** %3614
  %3719 = load %nyx_string*, %nyx_string** %3614
  %3720 = getelementptr [49 x i8], [49 x i8]* @.str386, i32 0, i32 0
  %3721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3720, i64 48)
  %3722 = call %nyx_string* @nyx_string_concat(%nyx_string* %3719, %nyx_string* %3721)
  store %nyx_string* %3722, %nyx_string** %3614
  %3723 = load %nyx_string*, %nyx_string** %3614
  %3724 = getelementptr [39 x i8], [39 x i8]* @.str387, i32 0, i32 0
  %3725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3724, i64 38)
  %3726 = call %nyx_string* @nyx_string_concat(%nyx_string* %3723, %nyx_string* %3725)
  store %nyx_string* %3726, %nyx_string** %3614
  %3727 = load %nyx_string*, %nyx_string** %3614
  %3728 = getelementptr [20 x i8], [20 x i8]* @.str388, i32 0, i32 0
  %3729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3728, i64 19)
  %3730 = call %nyx_string* @nyx_string_concat(%nyx_string* %3727, %nyx_string* %3729)
  store %nyx_string* %3730, %nyx_string** %3614
  %3731 = load %nyx_string*, %nyx_string** %3614
  %3732 = getelementptr [34 x i8], [34 x i8]* @.str389, i32 0, i32 0
  %3733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3732, i64 33)
  %3734 = call %nyx_string* @nyx_string_concat(%nyx_string* %3731, %nyx_string* %3733)
  store %nyx_string* %3734, %nyx_string** %3614
  %3735 = load %nyx_string*, %nyx_string** %3614
  %3736 = getelementptr [36 x i8], [36 x i8]* @.str390, i32 0, i32 0
  %3737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3736, i64 35)
  %3738 = call %nyx_string* @nyx_string_concat(%nyx_string* %3735, %nyx_string* %3737)
  store %nyx_string* %3738, %nyx_string** %3614
  %3739 = load %nyx_string*, %nyx_string** %3614
  %3740 = getelementptr [39 x i8], [39 x i8]* @.str391, i32 0, i32 0
  %3741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3740, i64 38)
  %3742 = call %nyx_string* @nyx_string_concat(%nyx_string* %3739, %nyx_string* %3741)
  store %nyx_string* %3742, %nyx_string** %3614
  %3743 = load %nyx_string*, %nyx_string** %3614
  %3744 = getelementptr [32 x i8], [32 x i8]* @.str392, i32 0, i32 0
  %3745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3744, i64 31)
  %3746 = call %nyx_string* @nyx_string_concat(%nyx_string* %3743, %nyx_string* %3745)
  store %nyx_string* %3746, %nyx_string** %3614
  %3747 = load %nyx_string*, %nyx_string** %3614
  %3748 = getelementptr [25 x i8], [25 x i8]* @.str393, i32 0, i32 0
  %3749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3748, i64 24)
  %3750 = call %nyx_string* @nyx_string_concat(%nyx_string* %3747, %nyx_string* %3749)
  store %nyx_string* %3750, %nyx_string** %3614
  %3751 = load %nyx_string*, %nyx_string** %3614
  %3752 = getelementptr [18 x i8], [18 x i8]* @.str394, i32 0, i32 0
  %3753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3752, i64 17)
  %3754 = call %nyx_string* @nyx_string_concat(%nyx_string* %3751, %nyx_string* %3753)
  store %nyx_string* %3754, %nyx_string** %3614
  %3755 = load %nyx_string*, %nyx_string** %3614
  %3756 = getelementptr [40 x i8], [40 x i8]* @.str395, i32 0, i32 0
  %3757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3756, i64 39)
  %3758 = call %nyx_string* @nyx_string_concat(%nyx_string* %3755, %nyx_string* %3757)
  store %nyx_string* %3758, %nyx_string** %3614
  %3759 = load %nyx_string*, %nyx_string** %3614
  %3760 = getelementptr [46 x i8], [46 x i8]* @.str396, i32 0, i32 0
  %3761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3760, i64 45)
  %3762 = call %nyx_string* @nyx_string_concat(%nyx_string* %3759, %nyx_string* %3761)
  store %nyx_string* %3762, %nyx_string** %3614
  %3763 = load %nyx_string*, %nyx_string** %3614
  %3764 = getelementptr [32 x i8], [32 x i8]* @.str397, i32 0, i32 0
  %3765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3764, i64 31)
  %3766 = call %nyx_string* @nyx_string_concat(%nyx_string* %3763, %nyx_string* %3765)
  store %nyx_string* %3766, %nyx_string** %3614
  %3767 = load %nyx_string*, %nyx_string** %3614
  %3768 = getelementptr [42 x i8], [42 x i8]* @.str398, i32 0, i32 0
  %3769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3768, i64 41)
  %3770 = call %nyx_string* @nyx_string_concat(%nyx_string* %3767, %nyx_string* %3769)
  store %nyx_string* %3770, %nyx_string** %3614
  %3771 = load %nyx_string*, %nyx_string** %3614
  %3772 = getelementptr [44 x i8], [44 x i8]* @.str399, i32 0, i32 0
  %3773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3772, i64 43)
  %3774 = call %nyx_string* @nyx_string_concat(%nyx_string* %3771, %nyx_string* %3773)
  store %nyx_string* %3774, %nyx_string** %3614
  %3775 = load %nyx_string*, %nyx_string** %3614
  %3776 = getelementptr [33 x i8], [33 x i8]* @.str400, i32 0, i32 0
  %3777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3776, i64 32)
  %3778 = call %nyx_string* @nyx_string_concat(%nyx_string* %3775, %nyx_string* %3777)
  store %nyx_string* %3778, %nyx_string** %3614
  %3779 = load %nyx_string*, %nyx_string** %3614
  %3780 = getelementptr [31 x i8], [31 x i8]* @.str401, i32 0, i32 0
  %3781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3780, i64 30)
  %3782 = call %nyx_string* @nyx_string_concat(%nyx_string* %3779, %nyx_string* %3781)
  store %nyx_string* %3782, %nyx_string** %3614
  %3783 = load %nyx_string*, %nyx_string** %3614
  %3784 = getelementptr [19 x i8], [19 x i8]* @.str402, i32 0, i32 0
  %3785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3784, i64 18)
  %3786 = call %nyx_string* @nyx_string_concat(%nyx_string* %3783, %nyx_string* %3785)
  store %nyx_string* %3786, %nyx_string** %3614
  %3787 = load %nyx_string*, %nyx_string** %3614
  %3788 = getelementptr [15 x i8], [15 x i8]* @.str403, i32 0, i32 0
  %3789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3788, i64 14)
  %3790 = call %nyx_string* @nyx_string_concat(%nyx_string* %3787, %nyx_string* %3789)
  store %nyx_string* %3790, %nyx_string** %3614
  %3791 = load %nyx_string*, %nyx_string** %3614
  %3792 = getelementptr [11 x i8], [11 x i8]* @.str404, i32 0, i32 0
  %3793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3792, i64 10)
  %3794 = call %nyx_string* @nyx_string_concat(%nyx_string* %3791, %nyx_string* %3793)
  store %nyx_string* %3794, %nyx_string** %3614
  %3795 = load %nyx_string*, %nyx_string** %3614
  %3796 = getelementptr [19 x i8], [19 x i8]* @.str405, i32 0, i32 0
  %3797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3796, i64 18)
  %3798 = call %nyx_string* @nyx_string_concat(%nyx_string* %3795, %nyx_string* %3797)
  store %nyx_string* %3798, %nyx_string** %3614
  %3799 = load %nyx_string*, %nyx_string** %3614
  %3800 = getelementptr [7 x i8], [7 x i8]* @.str406, i32 0, i32 0
  %3801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3800, i64 6)
  %3802 = call %nyx_string* @nyx_string_concat(%nyx_string* %3799, %nyx_string* %3801)
  store %nyx_string* %3802, %nyx_string** %3614
  %3803 = load %nyx_string*, %nyx_string** %3614
  %3804 = getelementptr [16 x i8], [16 x i8]* @.str407, i32 0, i32 0
  %3805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3804, i64 15)
  %3806 = call %nyx_string* @nyx_string_concat(%nyx_string* %3803, %nyx_string* %3805)
  store %nyx_string* %3806, %nyx_string** %3614
  %3807 = load %nyx_string*, %nyx_string** %3614
  %3808 = getelementptr [3 x i8], [3 x i8]* @.str408, i32 0, i32 0
  %3809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3808, i64 2)
  %3810 = call %nyx_string* @nyx_string_concat(%nyx_string* %3807, %nyx_string* %3809)
  store %nyx_string* %3810, %nyx_string** %3614
  %3811 = load %nyx_string*, %nyx_string** %3614
  %3812 = getelementptr [2 x i8], [2 x i8]* @.str409, i32 0, i32 0
  %3813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3812, i64 1)
  %3814 = call %nyx_string* @nyx_string_concat(%nyx_string* %3811, %nyx_string* %3813)
  store %nyx_string* %3814, %nyx_string** %3614
  %3815 = load %nyx_string*, %nyx_string** %3614
  %3816 = getelementptr [77 x i8], [77 x i8]* @.str410, i32 0, i32 0
  %3817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3816, i64 76)
  %3818 = call %nyx_string* @nyx_string_concat(%nyx_string* %3815, %nyx_string* %3817)
  store %nyx_string* %3818, %nyx_string** %3614
  %3819 = load %nyx_string*, %nyx_string** %3614
  %3820 = getelementptr [53 x i8], [53 x i8]* @.str411, i32 0, i32 0
  %3821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3820, i64 52)
  %3822 = call %nyx_string* @nyx_string_concat(%nyx_string* %3819, %nyx_string* %3821)
  store %nyx_string* %3822, %nyx_string** %3614
  %3823 = load %nyx_string*, %nyx_string** %3614
  %3824 = getelementptr [45 x i8], [45 x i8]* @.str412, i32 0, i32 0
  %3825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3824, i64 44)
  %3826 = call %nyx_string* @nyx_string_concat(%nyx_string* %3823, %nyx_string* %3825)
  store %nyx_string* %3826, %nyx_string** %3614
  %3827 = load %nyx_string*, %nyx_string** %3614
  %3828 = getelementptr [26 x i8], [26 x i8]* @.str413, i32 0, i32 0
  %3829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3828, i64 25)
  %3830 = call %nyx_string* @nyx_string_concat(%nyx_string* %3827, %nyx_string* %3829)
  store %nyx_string* %3830, %nyx_string** %3614
  %3831 = load %nyx_string*, %nyx_string** %3614
  %3832 = getelementptr [39 x i8], [39 x i8]* @.str414, i32 0, i32 0
  %3833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3832, i64 38)
  %3834 = call %nyx_string* @nyx_string_concat(%nyx_string* %3831, %nyx_string* %3833)
  store %nyx_string* %3834, %nyx_string** %3614
  %3835 = load %nyx_string*, %nyx_string** %3614
  %3836 = getelementptr [35 x i8], [35 x i8]* @.str415, i32 0, i32 0
  %3837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3836, i64 34)
  %3838 = call %nyx_string* @nyx_string_concat(%nyx_string* %3835, %nyx_string* %3837)
  store %nyx_string* %3838, %nyx_string** %3614
  %3839 = load %nyx_string*, %nyx_string** %3614
  %3840 = getelementptr [48 x i8], [48 x i8]* @.str416, i32 0, i32 0
  %3841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3840, i64 47)
  %3842 = call %nyx_string* @nyx_string_concat(%nyx_string* %3839, %nyx_string* %3841)
  store %nyx_string* %3842, %nyx_string** %3614
  %3843 = load %nyx_string*, %nyx_string** %3614
  %3844 = getelementptr [20 x i8], [20 x i8]* @.str417, i32 0, i32 0
  %3845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3844, i64 19)
  %3846 = call %nyx_string* @nyx_string_concat(%nyx_string* %3843, %nyx_string* %3845)
  store %nyx_string* %3846, %nyx_string** %3614
  %3847 = load %nyx_string*, %nyx_string** %3614
  %3848 = getelementptr [32 x i8], [32 x i8]* @.str418, i32 0, i32 0
  %3849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3848, i64 31)
  %3850 = call %nyx_string* @nyx_string_concat(%nyx_string* %3847, %nyx_string* %3849)
  store %nyx_string* %3850, %nyx_string** %3614
  %3851 = load %nyx_string*, %nyx_string** %3614
  %3852 = getelementptr [37 x i8], [37 x i8]* @.str419, i32 0, i32 0
  %3853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3852, i64 36)
  %3854 = call %nyx_string* @nyx_string_concat(%nyx_string* %3851, %nyx_string* %3853)
  store %nyx_string* %3854, %nyx_string** %3614
  %3855 = load %nyx_string*, %nyx_string** %3614
  %3856 = getelementptr [34 x i8], [34 x i8]* @.str420, i32 0, i32 0
  %3857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3856, i64 33)
  %3858 = call %nyx_string* @nyx_string_concat(%nyx_string* %3855, %nyx_string* %3857)
  store %nyx_string* %3858, %nyx_string** %3614
  %3859 = load %nyx_string*, %nyx_string** %3614
  %3860 = getelementptr [101 x i8], [101 x i8]* @.str421, i32 0, i32 0
  %3861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3860, i64 100)
  %3862 = call %nyx_string* @nyx_string_concat(%nyx_string* %3859, %nyx_string* %3861)
  store %nyx_string* %3862, %nyx_string** %3614
  %3863 = load %nyx_string*, %nyx_string** %3614
  %3864 = getelementptr [56 x i8], [56 x i8]* @.str422, i32 0, i32 0
  %3865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3864, i64 55)
  %3866 = call %nyx_string* @nyx_string_concat(%nyx_string* %3863, %nyx_string* %3865)
  store %nyx_string* %3866, %nyx_string** %3614
  %3867 = load %nyx_string*, %nyx_string** %3614
  %3868 = getelementptr [24 x i8], [24 x i8]* @.str423, i32 0, i32 0
  %3869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3868, i64 23)
  %3870 = call %nyx_string* @nyx_string_concat(%nyx_string* %3867, %nyx_string* %3869)
  store %nyx_string* %3870, %nyx_string** %3614
  %3871 = load %nyx_string*, %nyx_string** %3614
  %3872 = getelementptr [36 x i8], [36 x i8]* @.str424, i32 0, i32 0
  %3873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3872, i64 35)
  %3874 = call %nyx_string* @nyx_string_concat(%nyx_string* %3871, %nyx_string* %3873)
  store %nyx_string* %3874, %nyx_string** %3614
  %3875 = load %nyx_string*, %nyx_string** %3614
  %3876 = getelementptr [41 x i8], [41 x i8]* @.str425, i32 0, i32 0
  %3877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3876, i64 40)
  %3878 = call %nyx_string* @nyx_string_concat(%nyx_string* %3875, %nyx_string* %3877)
  store %nyx_string* %3878, %nyx_string** %3614
  %3879 = load %nyx_string*, %nyx_string** %3614
  %3880 = getelementptr [58 x i8], [58 x i8]* @.str426, i32 0, i32 0
  %3881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3880, i64 57)
  %3882 = call %nyx_string* @nyx_string_concat(%nyx_string* %3879, %nyx_string* %3881)
  store %nyx_string* %3882, %nyx_string** %3614
  %3883 = load %nyx_string*, %nyx_string** %3614
  %3884 = getelementptr [99 x i8], [99 x i8]* @.str427, i32 0, i32 0
  %3885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3884, i64 98)
  %3886 = call %nyx_string* @nyx_string_concat(%nyx_string* %3883, %nyx_string* %3885)
  store %nyx_string* %3886, %nyx_string** %3614
  %3887 = load %nyx_string*, %nyx_string** %3614
  %3888 = getelementptr [23 x i8], [23 x i8]* @.str428, i32 0, i32 0
  %3889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3888, i64 22)
  %3890 = call %nyx_string* @nyx_string_concat(%nyx_string* %3887, %nyx_string* %3889)
  store %nyx_string* %3890, %nyx_string** %3614
  %3891 = load %nyx_string*, %nyx_string** %3614
  %3892 = getelementptr [11 x i8], [11 x i8]* @.str429, i32 0, i32 0
  %3893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3892, i64 10)
  %3894 = call %nyx_string* @nyx_string_concat(%nyx_string* %3891, %nyx_string* %3893)
  store %nyx_string* %3894, %nyx_string** %3614
  %3895 = load %nyx_string*, %nyx_string** %3614
  %3896 = getelementptr [19 x i8], [19 x i8]* @.str430, i32 0, i32 0
  %3897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3896, i64 18)
  %3898 = call %nyx_string* @nyx_string_concat(%nyx_string* %3895, %nyx_string* %3897)
  store %nyx_string* %3898, %nyx_string** %3614
  %3899 = load %nyx_string*, %nyx_string** %3614
  %3900 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %3901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3900, i64 6)
  %3902 = call %nyx_string* @nyx_string_concat(%nyx_string* %3899, %nyx_string* %3901)
  store %nyx_string* %3902, %nyx_string** %3614
  %3903 = load %nyx_string*, %nyx_string** %3614
  %3904 = getelementptr [17 x i8], [17 x i8]* @.str432, i32 0, i32 0
  %3905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3904, i64 16)
  %3906 = call %nyx_string* @nyx_string_concat(%nyx_string* %3903, %nyx_string* %3905)
  store %nyx_string* %3906, %nyx_string** %3614
  %3907 = load %nyx_string*, %nyx_string** %3614
  %3908 = getelementptr [3 x i8], [3 x i8]* @.str433, i32 0, i32 0
  %3909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3908, i64 2)
  %3910 = call %nyx_string* @nyx_string_concat(%nyx_string* %3907, %nyx_string* %3909)
  store %nyx_string* %3910, %nyx_string** %3614
  %3911 = load %nyx_string*, %nyx_string** %3614
  %3912 = getelementptr [2 x i8], [2 x i8]* @.str434, i32 0, i32 0
  %3913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3912, i64 1)
  %3914 = call %nyx_string* @nyx_string_concat(%nyx_string* %3911, %nyx_string* %3913)
  store %nyx_string* %3914, %nyx_string** %3614
  %3915 = load %nyx_string*, %nyx_string** %3614
  %3916 = getelementptr [52 x i8], [52 x i8]* @.str435, i32 0, i32 0
  %3917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3916, i64 51)
  %3918 = call %nyx_string* @nyx_string_concat(%nyx_string* %3915, %nyx_string* %3917)
  store %nyx_string* %3918, %nyx_string** %3614
  %3919 = load %nyx_string*, %nyx_string** %3614
  %3920 = getelementptr [39 x i8], [39 x i8]* @.str436, i32 0, i32 0
  %3921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3920, i64 38)
  %3922 = call %nyx_string* @nyx_string_concat(%nyx_string* %3919, %nyx_string* %3921)
  store %nyx_string* %3922, %nyx_string** %3614
  %3923 = load %nyx_string*, %nyx_string** %3614
  %3924 = getelementptr [126 x i8], [126 x i8]* @.str437, i32 0, i32 0
  %3925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3924, i64 125)
  %3926 = call %nyx_string* @nyx_string_concat(%nyx_string* %3923, %nyx_string* %3925)
  store %nyx_string* %3926, %nyx_string** %3614
  %3927 = load %nyx_string*, %nyx_string** %3614
  %3928 = getelementptr [89 x i8], [89 x i8]* @.str438, i32 0, i32 0
  %3929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3928, i64 88)
  %3930 = call %nyx_string* @nyx_string_concat(%nyx_string* %3927, %nyx_string* %3929)
  store %nyx_string* %3930, %nyx_string** %3614
  %3931 = load %nyx_string*, %nyx_string** %3614
  %3932 = getelementptr [3 x i8], [3 x i8]* @.str439, i32 0, i32 0
  %3933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3932, i64 2)
  %3934 = call %nyx_string* @nyx_string_concat(%nyx_string* %3931, %nyx_string* %3933)
  store %nyx_string* %3934, %nyx_string** %3614
  %3935 = call { i64, i8* }* @gotchas_table()
  %3936 = alloca { i64, i8* }*
  store { i64, i8* }* %3935, { i64, i8* }** %3936
  %3937 = alloca i64
  store i64 0, i64* %3937
  %3938 = getelementptr [8 x i8], [8 x i8]* @.str440, i32 0, i32 0
  %3939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3938, i64 7)
  %3940 = alloca %nyx_string*
  store %nyx_string* %3939, %nyx_string** %3940
  %3941 = getelementptr [1 x i8], [1 x i8]* @.str441, i32 0, i32 0
  %3942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3941, i64 0)
  %3943 = alloca %nyx_string*
  store %nyx_string* %3942, %nyx_string** %3943
  %3944 = getelementptr [3 x i8], [3 x i8]* @.str442, i32 0, i32 0
  %3945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %3944, i64 2)
  %3946 = alloca %nyx_string*
  store %nyx_string* %3945, %nyx_string** %3946
  %3947 = getelementptr [9 x i8], [9 x i8]* @.str443, i32 0, i32 0
  %3948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %3947, i64 8)
  %3949 = alloca %nyx_string*
  store %nyx_string* %3948, %nyx_string** %3949
  %3950 = getelementptr [9 x i8], [9 x i8]* @.str444, i32 0, i32 0
  %3951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %3950, i64 8)
  %3952 = alloca %nyx_string*
  store %nyx_string* %3951, %nyx_string** %3952
  %3953 = getelementptr [2 x i8], [2 x i8]* @.str445, i32 0, i32 0
  %3954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %3953, i64 1)
  %3955 = alloca %nyx_string*
  store %nyx_string* %3954, %nyx_string** %3955
  %3956 = getelementptr [14 x i8], [14 x i8]* @.str446, i32 0, i32 0
  %3957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %3956, i64 13)
  %3958 = alloca %nyx_string*
  store %nyx_string* %3957, %nyx_string** %3958
  %3959 = getelementptr [3 x i8], [3 x i8]* @.str447, i32 0, i32 0
  %3960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %3959, i64 2)
  %3961 = alloca %nyx_string*
  store %nyx_string* %3960, %nyx_string** %3961
  %3962 = getelementptr [5 x i8], [5 x i8]* @.str448, i32 0, i32 0
  %3963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %3962, i64 4)
  %3964 = alloca %nyx_string*
  store %nyx_string* %3963, %nyx_string** %3964
  %3965 = getelementptr [37 x i8], [37 x i8]* @.str449, i32 0, i32 0
  %3966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %3965, i64 36)
  %3967 = alloca %nyx_string*
  store %nyx_string* %3966, %nyx_string** %3967
  %3968 = getelementptr [4 x i8], [4 x i8]* @.str450, i32 0, i32 0
  %3969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %3968, i64 3)
  %3970 = alloca %nyx_string*
  store %nyx_string* %3969, %nyx_string** %3970
  %3971 = getelementptr [33 x i8], [33 x i8]* @.str451, i32 0, i32 0
  %3972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %3971, i64 32)
  %3973 = alloca %nyx_string*
  store %nyx_string* %3972, %nyx_string** %3973
  %3974 = getelementptr [3 x i8], [3 x i8]* @.str452, i32 0, i32 0
  %3975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %3974, i64 2)
  %3976 = alloca %nyx_string*
  store %nyx_string* %3975, %nyx_string** %3976
  %3977 = getelementptr [28 x i8], [28 x i8]* @.str453, i32 0, i32 0
  %3978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %3977, i64 27)
  %3979 = alloca %nyx_string*
  store %nyx_string* %3978, %nyx_string** %3979
  %3980 = getelementptr [3 x i8], [3 x i8]* @.str454, i32 0, i32 0
  %3981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %3980, i64 2)
  %3982 = alloca %nyx_string*
  store %nyx_string* %3981, %nyx_string** %3982
  %3983 = call i8* @llvm.stacksave()
  br label %while_cond715
while_cond715:
  %3984 = load i64, i64* %3937
  %3985 = load { i64, i8* }*, { i64, i8* }** %3936
  %3986 = call i64 @nyx_array_length({ i64, i8* }* %3985)
  %3987 = icmp slt i64 %3984, %3986
  br i1 %3987, label %while_body716, label %while_end717
while_body716:
  call void @llvm.stackrestore(i8* %3983)
  %3988 = load { i64, i8* }*, { i64, i8* }** %3936
  %3989 = load i64, i64* %3937
  %3990 = call i64 @nyx_array_get({ i64, i8* }* %3988, i64 %3989)
  %3991 = inttoptr i64 %3990 to { i64, i8* }*
  %3992 = alloca { i64, i8* }*
  store { i64, i8* }* %3991, { i64, i8* }** %3992
  %3993 = load { i64, i8* }*, { i64, i8* }** %3992
  %3994 = load %nyx_string*, %nyx_string** %3940
  %3995 = call %nyx_string* @gotcha_field({ i64, i8* }* %3993, %nyx_string* %3994)
  %3996 = alloca %nyx_string*
  store %nyx_string* %3995, %nyx_string** %3996
  %3997 = load %nyx_string*, %nyx_string** %3996
  %3998 = load %nyx_string*, %nyx_string** %3943
  %3999 = call i1 @nyx_string_equals(%nyx_string* %3997, %nyx_string* %3998)
  %4000 = xor i1 %3999, true
  br i1 %4000, label %then718, label %else719
then718:
  %4001 = load { i64, i8* }*, { i64, i8* }** %3992
  %4002 = load %nyx_string*, %nyx_string** %3946
  %4003 = call %nyx_string* @gotcha_field({ i64, i8* }* %4001, %nyx_string* %4002)
  %4004 = alloca %nyx_string*
  store %nyx_string* %4003, %nyx_string** %4004
  %4005 = load { i64, i8* }*, { i64, i8* }** %3992
  %4006 = load %nyx_string*, %nyx_string** %3949
  %4007 = call %nyx_string* @gotcha_field({ i64, i8* }* %4005, %nyx_string* %4006)
  %4008 = alloca %nyx_string*
  store %nyx_string* %4007, %nyx_string** %4008
  %4009 = load { i64, i8* }*, { i64, i8* }** %3992
  %4010 = load %nyx_string*, %nyx_string** %3952
  %4011 = call %nyx_string* @gotcha_field({ i64, i8* }* %4009, %nyx_string* %4010)
  %4012 = alloca %nyx_string*
  store %nyx_string* %4011, %nyx_string** %4012
  %4013 = load %nyx_string*, %nyx_string** %3614
  %4014 = load %nyx_string*, %nyx_string** %3955
  %4015 = call %nyx_string* @nyx_string_concat(%nyx_string* %4013, %nyx_string* %4014)
  store %nyx_string* %4015, %nyx_string** %3614
  %4016 = load %nyx_string*, %nyx_string** %3614
  %4017 = load %nyx_string*, %nyx_string** %3958
  %4018 = call %nyx_string* @nyx_string_concat(%nyx_string* %4016, %nyx_string* %4017)
  %4019 = load %nyx_string*, %nyx_string** %4004
  %4020 = call %nyx_string* @nyx_string_concat(%nyx_string* %4018, %nyx_string* %4019)
  %4021 = load %nyx_string*, %nyx_string** %3961
  %4022 = call %nyx_string* @nyx_string_concat(%nyx_string* %4020, %nyx_string* %4021)
  %4023 = load %nyx_string*, %nyx_string** %4008
  %4024 = call %nyx_string* @nx_escape(%nyx_string* %4023)
  %4025 = call %nyx_string* @nyx_string_concat(%nyx_string* %4022, %nyx_string* %4024)
  %4026 = load %nyx_string*, %nyx_string** %3964
  %4027 = call %nyx_string* @nyx_string_concat(%nyx_string* %4025, %nyx_string* %4026)
  store %nyx_string* %4027, %nyx_string** %3614
  %4028 = load %nyx_string*, %nyx_string** %3614
  %4029 = load %nyx_string*, %nyx_string** %3967
  %4030 = call %nyx_string* @nyx_string_concat(%nyx_string* %4028, %nyx_string* %4029)
  %4031 = load %nyx_string*, %nyx_string** %3996
  %4032 = call %nyx_string* @nx_escape(%nyx_string* %4031)
  %4033 = call %nyx_string* @nyx_string_concat(%nyx_string* %4030, %nyx_string* %4032)
  %4034 = load %nyx_string*, %nyx_string** %3970
  %4035 = call %nyx_string* @nyx_string_concat(%nyx_string* %4033, %nyx_string* %4034)
  store %nyx_string* %4035, %nyx_string** %3614
  %4036 = load %nyx_string*, %nyx_string** %3614
  %4037 = load %nyx_string*, %nyx_string** %3973
  %4038 = call %nyx_string* @nyx_string_concat(%nyx_string* %4036, %nyx_string* %4037)
  %4039 = load %nyx_string*, %nyx_string** %4004
  %4040 = call %nyx_string* @nyx_string_concat(%nyx_string* %4038, %nyx_string* %4039)
  %4041 = load %nyx_string*, %nyx_string** %3976
  %4042 = call %nyx_string* @nyx_string_concat(%nyx_string* %4040, %nyx_string* %4041)
  %4043 = load %nyx_string*, %nyx_string** %4012
  %4044 = call %nyx_string* @nyx_string_concat(%nyx_string* %4042, %nyx_string* %4043)
  %4045 = load %nyx_string*, %nyx_string** %3979
  %4046 = call %nyx_string* @nyx_string_concat(%nyx_string* %4044, %nyx_string* %4045)
  store %nyx_string* %4046, %nyx_string** %3614
  %4047 = load %nyx_string*, %nyx_string** %3614
  %4048 = load %nyx_string*, %nyx_string** %3982
  %4049 = call %nyx_string* @nyx_string_concat(%nyx_string* %4047, %nyx_string* %4048)
  store %nyx_string* %4049, %nyx_string** %3614
  br label %merge720
else719:
  br label %merge720
merge720:
  %4050 = load i64, i64* %3937
  %4051 = add i64 %4050, 1
  store i64 %4051, i64* %3937
  br label %while_cond715
while_end717:
  %4052 = load %nyx_string*, %nyx_string** %3614
  %4053 = getelementptr [2 x i8], [2 x i8]* @.str455, i32 0, i32 0
  %4054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %4053, i64 1)
  %4055 = call %nyx_string* @nyx_string_concat(%nyx_string* %4052, %nyx_string* %4054)
  store %nyx_string* %4055, %nyx_string** %3614
  %4056 = load %nyx_string*, %nyx_string** %3614
  %4057 = getelementptr [47 x i8], [47 x i8]* @.str456, i32 0, i32 0
  %4058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %4057, i64 46)
  %4059 = call %nyx_string* @nyx_string_concat(%nyx_string* %4056, %nyx_string* %4058)
  store %nyx_string* %4059, %nyx_string** %3614
  %4060 = load %nyx_string*, %nyx_string** %3614
  %4061 = getelementptr [39 x i8], [39 x i8]* @.str457, i32 0, i32 0
  %4062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %4061, i64 38)
  %4063 = call %nyx_string* @nyx_string_concat(%nyx_string* %4060, %nyx_string* %4062)
  store %nyx_string* %4063, %nyx_string** %3614
  %4064 = load %nyx_string*, %nyx_string** %3614
  %4065 = getelementptr [50 x i8], [50 x i8]* @.str458, i32 0, i32 0
  %4066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %4065, i64 49)
  %4067 = call %nyx_string* @nyx_string_concat(%nyx_string* %4064, %nyx_string* %4066)
  store %nyx_string* %4067, %nyx_string** %3614
  %4068 = load %nyx_string*, %nyx_string** %3614
  %4069 = getelementptr [20 x i8], [20 x i8]* @.str459, i32 0, i32 0
  %4070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %4069, i64 19)
  %4071 = call %nyx_string* @nyx_string_concat(%nyx_string* %4068, %nyx_string* %4070)
  store %nyx_string* %4071, %nyx_string** %3614
  %4072 = load %nyx_string*, %nyx_string** %3614
  %4073 = getelementptr [32 x i8], [32 x i8]* @.str460, i32 0, i32 0
  %4074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %4073, i64 31)
  %4075 = call %nyx_string* @nyx_string_concat(%nyx_string* %4072, %nyx_string* %4074)
  store %nyx_string* %4075, %nyx_string** %3614
  %4076 = load %nyx_string*, %nyx_string** %3614
  %4077 = getelementptr [34 x i8], [34 x i8]* @.str461, i32 0, i32 0
  %4078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %4077, i64 33)
  %4079 = call %nyx_string* @nyx_string_concat(%nyx_string* %4076, %nyx_string* %4078)
  store %nyx_string* %4079, %nyx_string** %3614
  %4080 = load %nyx_string*, %nyx_string** %3614
  %4081 = getelementptr [114 x i8], [114 x i8]* @.str462, i32 0, i32 0
  %4082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %4081, i64 113)
  %4083 = call %nyx_string* @nyx_string_concat(%nyx_string* %4080, %nyx_string* %4082)
  store %nyx_string* %4083, %nyx_string** %3614
  %4084 = load %nyx_string*, %nyx_string** %3614
  %4085 = getelementptr [19 x i8], [19 x i8]* @.str463, i32 0, i32 0
  %4086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %4085, i64 18)
  %4087 = call %nyx_string* @nyx_string_concat(%nyx_string* %4084, %nyx_string* %4086)
  store %nyx_string* %4087, %nyx_string** %3614
  %4088 = load %nyx_string*, %nyx_string** %3614
  %4089 = getelementptr [7 x i8], [7 x i8]* @.str464, i32 0, i32 0
  %4090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %4089, i64 6)
  %4091 = call %nyx_string* @nyx_string_concat(%nyx_string* %4088, %nyx_string* %4090)
  store %nyx_string* %4091, %nyx_string** %3614
  %4092 = load %nyx_string*, %nyx_string** %3614
  %4093 = getelementptr [3 x i8], [3 x i8]* @.str465, i32 0, i32 0
  %4094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %4093, i64 2)
  %4095 = call %nyx_string* @nyx_string_concat(%nyx_string* %4092, %nyx_string* %4094)
  store %nyx_string* %4095, %nyx_string** %3614
  %4096 = load %nyx_string*, %nyx_string** %3614
  ret %nyx_string* %4096
}

define internal i64 @write_constitution_test(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %4097 = load %nyx_string*, %nyx_string** %dir.ptr
  %4098 = getelementptr [28 x i8], [28 x i8]* @.str466, i32 0, i32 0
  %4099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %4098, i64 27)
  %4100 = call %nyx_string* @nyx_string_concat(%nyx_string* %4097, %nyx_string* %4099)
  %4101 = alloca %nyx_string*
  store %nyx_string* %4100, %nyx_string** %4101
  %4102 = call %nyx_string* @constitution_test_body()
  %4103 = alloca %nyx_string*
  store %nyx_string* %4102, %nyx_string** %4103
  %4104 = load %nyx_string*, %nyx_string** %4101
  %4105 = call i8* @nyx_string_to_cstr(%nyx_string* %4104)
  %4106 = call i1 @nyx_file_exists(i8* %4105)
  br i1 %4106, label %then721, label %else722
then721:
  %4107 = load %nyx_string*, %nyx_string** %4101
  %4108 = call i8* @nyx_string_to_cstr(%nyx_string* %4107)
  %4109 = call %nyx_string* @nyx_read_file(i8* %4108)
  %4110 = alloca %nyx_string*
  store %nyx_string* %4109, %nyx_string** %4110
  %4111 = load %nyx_string*, %nyx_string** %4110
  %4112 = load %nyx_string*, %nyx_string** %4103
  %4113 = call i1 @nyx_string_equals(%nyx_string* %4111, %nyx_string* %4112)
  br i1 %4113, label %then724, label %else725
then724:
  ret i64 0
else725:
  br label %merge726
merge726:
  %4114 = load %nyx_string*, %nyx_string** %4110
  %4115 = call %nyx_string* @sdd_generated_marker()
  %4116 = call i64 @nyx_string_index_of(%nyx_string* %4114, %nyx_string* %4115)
  %4117 = icmp slt i64 %4116, 0
  br i1 %4117, label %then727, label %else728
then727:
  ret i64 2
else728:
  br label %merge729
merge729:
  br label %merge723
else722:
  br label %merge723
merge723:
  %4118 = load %nyx_string*, %nyx_string** %4101
  %4119 = load %nyx_string*, %nyx_string** %4103
  %4120 = ptrtoint %nyx_string* %4119 to i64
  %4121 = call i8* @nyx_string_to_cstr(%nyx_string* %4118)
  %4122 = inttoptr i64 %4120 to %nyx_string*
  %4123 = call i1 @nyx_write_file_safe(i8* %4121, %nyx_string* %4122)
  ret i64 1
}

define internal i1 @add_agents_triggers(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %4124 = load %nyx_string*, %nyx_string** %dir.ptr
  %4125 = getelementptr [11 x i8], [11 x i8]* @.str467, i32 0, i32 0
  %4126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %4125, i64 10)
  %4127 = call %nyx_string* @nyx_string_concat(%nyx_string* %4124, %nyx_string* %4126)
  %4128 = alloca %nyx_string*
  store %nyx_string* %4127, %nyx_string** %4128
  %4129 = load %nyx_string*, %nyx_string** %4128
  %4130 = call i8* @nyx_string_to_cstr(%nyx_string* %4129)
  %4131 = call i1 @nyx_file_exists(i8* %4130)
  %4132 = icmp eq i1 %4131, 0
  br i1 %4132, label %then730, label %else731
then730:
  %4133 = getelementptr [30 x i8], [30 x i8]* @.str468, i32 0, i32 0
  %4134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %4133, i64 29)
  %4135 = load %nyx_string*, %nyx_string** %dir.ptr
  %4136 = call %nyx_string* @nyx_string_concat(%nyx_string* %4134, %nyx_string* %4135)
  %4137 = getelementptr [80 x i8], [80 x i8]* @.str469, i32 0, i32 0
  %4138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %4137, i64 79)
  %4139 = call %nyx_string* @nyx_string_concat(%nyx_string* %4136, %nyx_string* %4138)
  %4140 = call i8* @nyx_string_to_cstr(%nyx_string* %4139)
  call void @nyx_print_string(i8* %4140)
  ret i1 0
else731:
  br label %merge732
merge732:
  %4141 = load %nyx_string*, %nyx_string** %4128
  %4142 = call i8* @nyx_string_to_cstr(%nyx_string* %4141)
  %4143 = call %nyx_string* @nyx_read_file(i8* %4142)
  %4144 = alloca %nyx_string*
  store %nyx_string* %4143, %nyx_string** %4144
  %4145 = load %nyx_string*, %nyx_string** %4144
  %4146 = getelementptr [21 x i8], [21 x i8]* @.str470, i32 0, i32 0
  %4147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %4146, i64 20)
  %4148 = call i64 @nyx_string_index_of(%nyx_string* %4145, %nyx_string* %4147)
  %4149 = icmp sge i64 %4148, 0
  br i1 %4149, label %then733, label %else734
then733:
  %4150 = load %nyx_string*, %nyx_string** %lang.ptr
  %4151 = getelementptr [47 x i8], [47 x i8]* @.str471, i32 0, i32 0
  %4152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %4151, i64 46)
  %4153 = getelementptr [47 x i8], [47 x i8]* @.str472, i32 0, i32 0
  %4154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %4153, i64 46)
  %4155 = call %nyx_string* @sdd_msg(%nyx_string* %4150, %nyx_string* %4152, %nyx_string* %4154)
  %4156 = call i8* @nyx_string_to_cstr(%nyx_string* %4155)
  call void @nyx_print_string(i8* %4156)
  ret i1 0
else734:
  br label %merge735
merge735:
  %4157 = getelementptr [22 x i8], [22 x i8]* @.str473, i32 0, i32 0
  %4158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %4157, i64 21)
  %4159 = alloca %nyx_string*
  store %nyx_string* %4158, %nyx_string** %4159
  %4160 = load %nyx_string*, %nyx_string** %lang.ptr
  %4161 = getelementptr [3 x i8], [3 x i8]* @.str474, i32 0, i32 0
  %4162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %4161, i64 2)
  %4163 = call i1 @nyx_string_equals(%nyx_string* %4160, %nyx_string* %4162)
  br i1 %4163, label %then736, label %else737
then736:
  %4164 = load %nyx_string*, %nyx_string** %4159
  %4165 = getelementptr [150 x i8], [150 x i8]* @.str475, i32 0, i32 0
  %4166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %4165, i64 149)
  %4167 = call %nyx_string* @nyx_string_concat(%nyx_string* %4164, %nyx_string* %4166)
  store %nyx_string* %4167, %nyx_string** %4159
  %4168 = load %nyx_string*, %nyx_string** %4159
  %4169 = getelementptr [122 x i8], [122 x i8]* @.str476, i32 0, i32 0
  %4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %4169, i64 121)
  %4171 = call %nyx_string* @nyx_string_concat(%nyx_string* %4168, %nyx_string* %4170)
  store %nyx_string* %4171, %nyx_string** %4159
  br label %merge738
else737:
  %4172 = load %nyx_string*, %nyx_string** %4159
  %4173 = getelementptr [152 x i8], [152 x i8]* @.str477, i32 0, i32 0
  %4174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %4173, i64 151)
  %4175 = call %nyx_string* @nyx_string_concat(%nyx_string* %4172, %nyx_string* %4174)
  store %nyx_string* %4175, %nyx_string** %4159
  %4176 = load %nyx_string*, %nyx_string** %4159
  %4177 = getelementptr [113 x i8], [113 x i8]* @.str478, i32 0, i32 0
  %4178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %4177, i64 112)
  %4179 = call %nyx_string* @nyx_string_concat(%nyx_string* %4176, %nyx_string* %4178)
  store %nyx_string* %4179, %nyx_string** %4159
  br label %merge738
merge738:
  %4180 = load %nyx_string*, %nyx_string** %4144
  %4181 = getelementptr [2 x i8], [2 x i8]* @.str479, i32 0, i32 0
  %4182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %4181, i64 1)
  %4183 = call %nyx_string* @agents_ini()
  %4184 = call %nyx_string* @nyx_string_concat(%nyx_string* %4182, %nyx_string* %4183)
  %4185 = getelementptr [2 x i8], [2 x i8]* @.str480, i32 0, i32 0
  %4186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %4185, i64 1)
  %4187 = call %nyx_string* @nyx_string_concat(%nyx_string* %4184, %nyx_string* %4186)
  %4188 = call i64 @nyx_string_index_of(%nyx_string* %4180, %nyx_string* %4187)
  %4189 = alloca i64
  store i64 %4188, i64* %4189
  %4190 = load i64, i64* %4189
  %4191 = icmp sge i64 %4190, 0
  br i1 %4191, label %then739, label %else740
then739:
  %4192 = load %nyx_string*, %nyx_string** %4128
  %4193 = load %nyx_string*, %nyx_string** %4144
  %4194 = load i64, i64* %4189
  %4195 = add i64 %4194, 1
  %4196 = call %nyx_string* @nyx_string_substring(%nyx_string* %4193, i64 0, i64 %4195)
  %4197 = load %nyx_string*, %nyx_string** %4159
  %4198 = call %nyx_string* @nyx_string_concat(%nyx_string* %4196, %nyx_string* %4197)
  %4199 = getelementptr [2 x i8], [2 x i8]* @.str481, i32 0, i32 0
  %4200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %4199, i64 1)
  %4201 = call %nyx_string* @nyx_string_concat(%nyx_string* %4198, %nyx_string* %4200)
  %4202 = load %nyx_string*, %nyx_string** %4144
  %4203 = load i64, i64* %4189
  %4204 = add i64 %4203, 1
  %4205 = load %nyx_string*, %nyx_string** %4144
  %4206 = call i64 @nyx_string_byte_length(%nyx_string* %4205)
  %4207 = call %nyx_string* @nyx_string_substring(%nyx_string* %4202, i64 %4204, i64 %4206)
  %4208 = call %nyx_string* @nyx_string_concat(%nyx_string* %4201, %nyx_string* %4207)
  %4209 = ptrtoint %nyx_string* %4208 to i64
  %4210 = call i8* @nyx_string_to_cstr(%nyx_string* %4192)
  %4211 = inttoptr i64 %4209 to %nyx_string*
  %4212 = call i1 @nyx_write_file_safe(i8* %4210, %nyx_string* %4211)
  %4213 = load %nyx_string*, %nyx_string** %lang.ptr
  %4214 = getelementptr [36 x i8], [36 x i8]* @.str482, i32 0, i32 0
  %4215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %4214, i64 35)
  %4216 = getelementptr [40 x i8], [40 x i8]* @.str483, i32 0, i32 0
  %4217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %4216, i64 39)
  %4218 = call %nyx_string* @sdd_msg(%nyx_string* %4213, %nyx_string* %4215, %nyx_string* %4217)
  %4219 = call i8* @nyx_string_to_cstr(%nyx_string* %4218)
  call void @nyx_print_string(i8* %4219)
  ret i1 1
else740:
  br label %merge741
merge741:
  %4220 = getelementptr [19 x i8], [19 x i8]* @.str484, i32 0, i32 0
  %4221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %4220, i64 18)
  %4222 = alloca %nyx_string*
  store %nyx_string* %4221, %nyx_string** %4222
  %4223 = load %nyx_string*, %nyx_string** %4144
  %4224 = load %nyx_string*, %nyx_string** %4222
  %4225 = call i64 @nyx_string_index_of(%nyx_string* %4223, %nyx_string* %4224)
  %4226 = alloca i64
  store i64 %4225, i64* %4226
  %4227 = load i64, i64* %4226
  %4228 = icmp slt i64 %4227, 0
  br i1 %4228, label %then742, label %else743
then742:
  %4229 = load %nyx_string*, %nyx_string** %4128
  %4230 = load %nyx_string*, %nyx_string** %4144
  %4231 = getelementptr [2 x i8], [2 x i8]* @.str485, i32 0, i32 0
  %4232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %4231, i64 1)
  %4233 = call %nyx_string* @nyx_string_concat(%nyx_string* %4230, %nyx_string* %4232)
  %4234 = load %nyx_string*, %nyx_string** %4159
  %4235 = call %nyx_string* @nyx_string_concat(%nyx_string* %4233, %nyx_string* %4234)
  %4236 = ptrtoint %nyx_string* %4235 to i64
  %4237 = call i8* @nyx_string_to_cstr(%nyx_string* %4229)
  %4238 = inttoptr i64 %4236 to %nyx_string*
  %4239 = call i1 @nyx_write_file_safe(i8* %4237, %nyx_string* %4238)
  br label %merge744
else743:
  %4240 = load %nyx_string*, %nyx_string** %4128
  %4241 = load %nyx_string*, %nyx_string** %4144
  %4242 = load i64, i64* %4226
  %4243 = call %nyx_string* @nyx_string_substring(%nyx_string* %4241, i64 0, i64 %4242)
  %4244 = load %nyx_string*, %nyx_string** %4159
  %4245 = call %nyx_string* @nyx_string_concat(%nyx_string* %4243, %nyx_string* %4244)
  %4246 = getelementptr [2 x i8], [2 x i8]* @.str486, i32 0, i32 0
  %4247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %4246, i64 1)
  %4248 = call %nyx_string* @nyx_string_concat(%nyx_string* %4245, %nyx_string* %4247)
  %4249 = load %nyx_string*, %nyx_string** %4144
  %4250 = load i64, i64* %4226
  %4251 = load %nyx_string*, %nyx_string** %4144
  %4252 = call i64 @nyx_string_byte_length(%nyx_string* %4251)
  %4253 = call %nyx_string* @nyx_string_substring(%nyx_string* %4249, i64 %4250, i64 %4252)
  %4254 = call %nyx_string* @nyx_string_concat(%nyx_string* %4248, %nyx_string* %4253)
  %4255 = ptrtoint %nyx_string* %4254 to i64
  %4256 = call i8* @nyx_string_to_cstr(%nyx_string* %4240)
  %4257 = inttoptr i64 %4255 to %nyx_string*
  %4258 = call i1 @nyx_write_file_safe(i8* %4256, %nyx_string* %4257)
  br label %merge744
merge744:
  %4259 = load %nyx_string*, %nyx_string** %lang.ptr
  %4260 = getelementptr [36 x i8], [36 x i8]* @.str487, i32 0, i32 0
  %4261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %4260, i64 35)
  %4262 = getelementptr [40 x i8], [40 x i8]* @.str488, i32 0, i32 0
  %4263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %4262, i64 39)
  %4264 = call %nyx_string* @sdd_msg(%nyx_string* %4259, %nyx_string* %4261, %nyx_string* %4263)
  %4265 = call i8* @nyx_string_to_cstr(%nyx_string* %4264)
  call void @nyx_print_string(i8* %4265)
  ret i1 1
}

define internal i1 @run_sdd_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %4266 = getelementptr [11 x i8], [11 x i8]* @.str489, i32 0, i32 0
  %4267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %4266, i64 10)
  %4268 = load %nyx_string*, %nyx_string** %dir.ptr
  %4269 = call %nyx_string* @nyx_string_concat(%nyx_string* %4267, %nyx_string* %4268)
  %4270 = getelementptr [16 x i8], [16 x i8]* @.str490, i32 0, i32 0
  %4271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %4270, i64 15)
  %4272 = call %nyx_string* @nyx_string_concat(%nyx_string* %4269, %nyx_string* %4271)
  %4273 = call i8* @nyx_string_to_cstr(%nyx_string* %4272)
  %4274 = call %nyx_string* @nyx_exec(i8* %4273)
  %4275 = load %nyx_string*, %nyx_string** %dir.ptr
  %4276 = load %nyx_string*, %nyx_string** %lang.ptr
  %4277 = call i64 @write_evidence(%nyx_string* %4275, %nyx_string* %4276)
  %4278 = alloca i64
  store i64 %4277, i64* %4278
  %4279 = load i64, i64* %4278
  %4280 = icmp eq i64 %4279, 2
  br i1 %4280, label %then745, label %else746
then745:
  %4281 = load %nyx_string*, %nyx_string** %lang.ptr
  %4282 = getelementptr [59 x i8], [59 x i8]* @.str491, i32 0, i32 0
  %4283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %4282, i64 58)
  %4284 = call %nyx_string* @toolchain_version()
  %4285 = call %nyx_string* @nyx_string_concat(%nyx_string* %4283, %nyx_string* %4284)
  %4286 = getelementptr [4 x i8], [4 x i8]* @.str492, i32 0, i32 0
  %4287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %4286, i64 3)
  %4288 = call %nyx_string* @nyx_string_concat(%nyx_string* %4285, %nyx_string* %4287)
  %4289 = getelementptr [65 x i8], [65 x i8]* @.str493, i32 0, i32 0
  %4290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %4289, i64 64)
  %4291 = call %nyx_string* @toolchain_version()
  %4292 = call %nyx_string* @nyx_string_concat(%nyx_string* %4290, %nyx_string* %4291)
  %4293 = getelementptr [4 x i8], [4 x i8]* @.str494, i32 0, i32 0
  %4294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %4293, i64 3)
  %4295 = call %nyx_string* @nyx_string_concat(%nyx_string* %4292, %nyx_string* %4294)
  %4296 = call %nyx_string* @sdd_msg(%nyx_string* %4281, %nyx_string* %4288, %nyx_string* %4295)
  %4297 = call i8* @nyx_string_to_cstr(%nyx_string* %4296)
  call void @nyx_print_string(i8* %4297)
  br label %merge747
else746:
  br label %merge747
merge747:
  %4298 = load i64, i64* %4278
  %4299 = icmp eq i64 %4298, 1
  br i1 %4299, label %then748, label %else749
then748:
  %4300 = load %nyx_string*, %nyx_string** %lang.ptr
  %4301 = getelementptr [34 x i8], [34 x i8]* @.str495, i32 0, i32 0
  %4302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %4301, i64 33)
  %4303 = call %nyx_string* @toolchain_version()
  %4304 = call %nyx_string* @nyx_string_concat(%nyx_string* %4302, %nyx_string* %4303)
  %4305 = getelementptr [4 x i8], [4 x i8]* @.str496, i32 0, i32 0
  %4306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %4305, i64 3)
  %4307 = call %nyx_string* @nyx_string_concat(%nyx_string* %4304, %nyx_string* %4306)
  %4308 = getelementptr [33 x i8], [33 x i8]* @.str497, i32 0, i32 0
  %4309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %4308, i64 32)
  %4310 = call %nyx_string* @toolchain_version()
  %4311 = call %nyx_string* @nyx_string_concat(%nyx_string* %4309, %nyx_string* %4310)
  %4312 = getelementptr [4 x i8], [4 x i8]* @.str498, i32 0, i32 0
  %4313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %4312, i64 3)
  %4314 = call %nyx_string* @nyx_string_concat(%nyx_string* %4311, %nyx_string* %4313)
  %4315 = call %nyx_string* @sdd_msg(%nyx_string* %4300, %nyx_string* %4307, %nyx_string* %4314)
  %4316 = call i8* @nyx_string_to_cstr(%nyx_string* %4315)
  call void @nyx_print_string(i8* %4316)
  br label %merge750
else749:
  br label %merge750
merge750:
  %4317 = load i64, i64* %4278
  %4318 = icmp eq i64 %4317, 0
  br i1 %4318, label %then751, label %else752
then751:
  %4319 = load %nyx_string*, %nyx_string** %lang.ptr
  %4320 = getelementptr [41 x i8], [41 x i8]* @.str499, i32 0, i32 0
  %4321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %4320, i64 40)
  %4322 = call %nyx_string* @toolchain_version()
  %4323 = call %nyx_string* @nyx_string_concat(%nyx_string* %4321, %nyx_string* %4322)
  %4324 = getelementptr [4 x i8], [4 x i8]* @.str500, i32 0, i32 0
  %4325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %4324, i64 3)
  %4326 = call %nyx_string* @nyx_string_concat(%nyx_string* %4323, %nyx_string* %4325)
  %4327 = getelementptr [39 x i8], [39 x i8]* @.str501, i32 0, i32 0
  %4328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %4327, i64 38)
  %4329 = call %nyx_string* @toolchain_version()
  %4330 = call %nyx_string* @nyx_string_concat(%nyx_string* %4328, %nyx_string* %4329)
  %4331 = getelementptr [4 x i8], [4 x i8]* @.str502, i32 0, i32 0
  %4332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %4331, i64 3)
  %4333 = call %nyx_string* @nyx_string_concat(%nyx_string* %4330, %nyx_string* %4332)
  %4334 = call %nyx_string* @sdd_msg(%nyx_string* %4319, %nyx_string* %4326, %nyx_string* %4333)
  %4335 = call i8* @nyx_string_to_cstr(%nyx_string* %4334)
  call void @nyx_print_string(i8* %4335)
  br label %merge753
else752:
  br label %merge753
merge753:
  %4336 = load %nyx_string*, %nyx_string** %dir.ptr
  %4337 = getelementptr [28 x i8], [28 x i8]* @.str503, i32 0, i32 0
  %4338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %4337, i64 27)
  %4339 = call %nyx_string* @nyx_string_concat(%nyx_string* %4336, %nyx_string* %4338)
  %4340 = call i8* @nyx_string_to_cstr(%nyx_string* %4339)
  %4341 = call i1 @nyx_file_exists(i8* %4340)
  br i1 %4341, label %then754, label %else755
then754:
  %4342 = load %nyx_string*, %nyx_string** %dir.ptr
  %4343 = call i64 @write_constitution_test(%nyx_string* %4342)
  %4344 = alloca i64
  store i64 %4343, i64* %4344
  %4345 = load i64, i64* %4344
  %4346 = icmp eq i64 %4345, 1
  br i1 %4346, label %then757, label %else758
then757:
  %4347 = load %nyx_string*, %nyx_string** %lang.ptr
  %4348 = getelementptr [42 x i8], [42 x i8]* @.str504, i32 0, i32 0
  %4349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %4348, i64 41)
  %4350 = getelementptr [41 x i8], [41 x i8]* @.str505, i32 0, i32 0
  %4351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %4350, i64 40)
  %4352 = call %nyx_string* @sdd_msg(%nyx_string* %4347, %nyx_string* %4349, %nyx_string* %4351)
  %4353 = call i8* @nyx_string_to_cstr(%nyx_string* %4352)
  call void @nyx_print_string(i8* %4353)
  br label %merge759
else758:
  br label %merge759
merge759:
  %4354 = load i64, i64* %4344
  %4355 = icmp eq i64 %4354, 2
  br i1 %4355, label %then760, label %else761
then760:
  %4356 = load %nyx_string*, %nyx_string** %lang.ptr
  %4357 = getelementptr [67 x i8], [67 x i8]* @.str506, i32 0, i32 0
  %4358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %4357, i64 66)
  %4359 = getelementptr [73 x i8], [73 x i8]* @.str507, i32 0, i32 0
  %4360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %4359, i64 72)
  %4361 = call %nyx_string* @sdd_msg(%nyx_string* %4356, %nyx_string* %4358, %nyx_string* %4360)
  %4362 = call i8* @nyx_string_to_cstr(%nyx_string* %4361)
  call void @nyx_print_string(i8* %4362)
  br label %merge762
else761:
  br label %merge762
merge762:
  %4363 = load i64, i64* %4344
  %4364 = icmp eq i64 %4363, 0
  br i1 %4364, label %then763, label %else764
then763:
  %4365 = load %nyx_string*, %nyx_string** %lang.ptr
  %4366 = getelementptr [49 x i8], [49 x i8]* @.str508, i32 0, i32 0
  %4367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %4366, i64 48)
  %4368 = getelementptr [47 x i8], [47 x i8]* @.str509, i32 0, i32 0
  %4369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %4368, i64 46)
  %4370 = call %nyx_string* @sdd_msg(%nyx_string* %4365, %nyx_string* %4367, %nyx_string* %4369)
  %4371 = call i8* @nyx_string_to_cstr(%nyx_string* %4370)
  call void @nyx_print_string(i8* %4371)
  br label %merge765
else764:
  br label %merge765
merge765:
  br label %merge756
else755:
  br label %merge756
merge756:
  ret i1 1
}

define internal i1 @run_sdd_init(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %4372 = call %nyx_string* @resolve_seed_home()
  %4373 = alloca %nyx_string*
  store %nyx_string* %4372, %nyx_string** %4373
  %4374 = load %nyx_string*, %nyx_string** %4373
  %4375 = getelementptr [12 x i8], [12 x i8]* @.str510, i32 0, i32 0
  %4376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %4375, i64 11)
  %4377 = call %nyx_string* @nyx_string_concat(%nyx_string* %4374, %nyx_string* %4376)
  %4378 = load %nyx_string*, %nyx_string** %lang.ptr
  %4379 = call %nyx_string* @nyx_string_concat(%nyx_string* %4377, %nyx_string* %4378)
  %4380 = getelementptr [5 x i8], [5 x i8]* @.str511, i32 0, i32 0
  %4381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %4380, i64 4)
  %4382 = call %nyx_string* @nyx_string_concat(%nyx_string* %4379, %nyx_string* %4381)
  %4383 = alloca %nyx_string*
  store %nyx_string* %4382, %nyx_string** %4383
  %4384 = alloca i1
  store i1 true, i1* %4384
  %4385 = load %nyx_string*, %nyx_string** %4373
  %4386 = getelementptr [1 x i8], [1 x i8]* @.str512, i32 0, i32 0
  %4387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %4386, i64 0)
  %4388 = call i1 @nyx_string_equals(%nyx_string* %4385, %nyx_string* %4387)
  br i1 %4388, label %sc_or_end767, label %sc_or_rhs766
sc_or_rhs766:
  %4389 = load %nyx_string*, %nyx_string** %4383
  %4390 = getelementptr [17 x i8], [17 x i8]* @.str513, i32 0, i32 0
  %4391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %4390, i64 16)
  %4392 = call %nyx_string* @nyx_string_concat(%nyx_string* %4389, %nyx_string* %4391)
  %4393 = call i8* @nyx_string_to_cstr(%nyx_string* %4392)
  %4394 = call i1 @nyx_file_exists(i8* %4393)
  %4395 = icmp eq i1 %4394, 0
  store i1 %4395, i1* %4384
  br label %sc_or_end767
sc_or_end767:
  %4396 = load i1, i1* %4384
  br i1 %4396, label %then768, label %else769
then768:
  %4397 = load %nyx_string*, %nyx_string** %lang.ptr
  %4398 = getelementptr [49 x i8], [49 x i8]* @.str514, i32 0, i32 0
  %4399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %4398, i64 48)
  %4400 = load %nyx_string*, %nyx_string** %lang.ptr
  %4401 = call %nyx_string* @nyx_string_concat(%nyx_string* %4399, %nyx_string* %4400)
  %4402 = getelementptr [59 x i8], [59 x i8]* @.str515, i32 0, i32 0
  %4403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %4402, i64 58)
  %4404 = call %nyx_string* @nyx_string_concat(%nyx_string* %4401, %nyx_string* %4403)
  %4405 = getelementptr [61 x i8], [61 x i8]* @.str516, i32 0, i32 0
  %4406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %4405, i64 60)
  %4407 = load %nyx_string*, %nyx_string** %lang.ptr
  %4408 = call %nyx_string* @nyx_string_concat(%nyx_string* %4406, %nyx_string* %4407)
  %4409 = getelementptr [44 x i8], [44 x i8]* @.str517, i32 0, i32 0
  %4410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %4409, i64 43)
  %4411 = call %nyx_string* @nyx_string_concat(%nyx_string* %4408, %nyx_string* %4410)
  %4412 = call %nyx_string* @sdd_msg(%nyx_string* %4397, %nyx_string* %4404, %nyx_string* %4411)
  %4413 = call i8* @nyx_string_to_cstr(%nyx_string* %4412)
  call void @nyx_print_string(i8* %4413)
  %4414 = load %nyx_string*, %nyx_string** %lang.ptr
  %4415 = getelementptr [104 x i8], [104 x i8]* @.str518, i32 0, i32 0
  %4416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %4415, i64 103)
  %4417 = getelementptr [109 x i8], [109 x i8]* @.str519, i32 0, i32 0
  %4418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %4417, i64 108)
  %4419 = call %nyx_string* @sdd_msg(%nyx_string* %4414, %nyx_string* %4416, %nyx_string* %4418)
  %4420 = call i8* @nyx_string_to_cstr(%nyx_string* %4419)
  call void @nyx_print_string(i8* %4420)
  ret i1 0
else769:
  br label %merge770
merge770:
  %4421 = getelementptr [11 x i8], [11 x i8]* @.str520, i32 0, i32 0
  %4422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %4421, i64 10)
  %4423 = load %nyx_string*, %nyx_string** %dir.ptr
  %4424 = call %nyx_string* @nyx_string_concat(%nyx_string* %4422, %nyx_string* %4423)
  %4425 = getelementptr [13 x i8], [13 x i8]* @.str521, i32 0, i32 0
  %4426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %4425, i64 12)
  %4427 = call %nyx_string* @nyx_string_concat(%nyx_string* %4424, %nyx_string* %4426)
  %4428 = load %nyx_string*, %nyx_string** %dir.ptr
  %4429 = call %nyx_string* @nyx_string_concat(%nyx_string* %4427, %nyx_string* %4428)
  %4430 = getelementptr [13 x i8], [13 x i8]* @.str522, i32 0, i32 0
  %4431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %4430, i64 12)
  %4432 = call %nyx_string* @nyx_string_concat(%nyx_string* %4429, %nyx_string* %4431)
  %4433 = load %nyx_string*, %nyx_string** %dir.ptr
  %4434 = call %nyx_string* @nyx_string_concat(%nyx_string* %4432, %nyx_string* %4433)
  %4435 = getelementptr [18 x i8], [18 x i8]* @.str523, i32 0, i32 0
  %4436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %4435, i64 17)
  %4437 = call %nyx_string* @nyx_string_concat(%nyx_string* %4434, %nyx_string* %4436)
  %4438 = load %nyx_string*, %nyx_string** %dir.ptr
  %4439 = call %nyx_string* @nyx_string_concat(%nyx_string* %4437, %nyx_string* %4438)
  %4440 = getelementptr [10 x i8], [10 x i8]* @.str524, i32 0, i32 0
  %4441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %4440, i64 9)
  %4442 = call %nyx_string* @nyx_string_concat(%nyx_string* %4439, %nyx_string* %4441)
  %4443 = load %nyx_string*, %nyx_string** %dir.ptr
  %4444 = call %nyx_string* @nyx_string_concat(%nyx_string* %4442, %nyx_string* %4443)
  %4445 = getelementptr [8 x i8], [8 x i8]* @.str525, i32 0, i32 0
  %4446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %4445, i64 7)
  %4447 = call %nyx_string* @nyx_string_concat(%nyx_string* %4444, %nyx_string* %4446)
  %4448 = call i8* @nyx_string_to_cstr(%nyx_string* %4447)
  %4449 = call %nyx_string* @nyx_exec(i8* %4448)
  %4450 = load %nyx_string*, %nyx_string** %lang.ptr
  %4451 = getelementptr [40 x i8], [40 x i8]* @.str526, i32 0, i32 0
  %4452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %4451, i64 39)
  %4453 = getelementptr [38 x i8], [38 x i8]* @.str527, i32 0, i32 0
  %4454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %4453, i64 37)
  %4455 = call %nyx_string* @sdd_msg(%nyx_string* %4450, %nyx_string* %4452, %nyx_string* %4454)
  %4456 = call i8* @nyx_string_to_cstr(%nyx_string* %4455)
  call void @nyx_print_string(i8* %4456)
  %4457 = load %nyx_string*, %nyx_string** %4383
  %4458 = getelementptr [16 x i8], [16 x i8]* @.str528, i32 0, i32 0
  %4459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %4458, i64 15)
  %4460 = load %nyx_string*, %nyx_string** %dir.ptr
  %4461 = getelementptr [22 x i8], [22 x i8]* @.str529, i32 0, i32 0
  %4462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %4461, i64 21)
  %4463 = call %nyx_string* @nyx_string_concat(%nyx_string* %4460, %nyx_string* %4462)
  %4464 = load %nyx_string*, %nyx_string** %lang.ptr
  %4465 = call i1 @sdd_seed_template(%nyx_string* %4457, %nyx_string* %4459, %nyx_string* %4463, %nyx_string* %4464)
  %4466 = load %nyx_string*, %nyx_string** %4383
  %4467 = getelementptr [12 x i8], [12 x i8]* @.str530, i32 0, i32 0
  %4468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %4467, i64 11)
  %4469 = load %nyx_string*, %nyx_string** %dir.ptr
  %4470 = getelementptr [18 x i8], [18 x i8]* @.str531, i32 0, i32 0
  %4471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %4470, i64 17)
  %4472 = call %nyx_string* @nyx_string_concat(%nyx_string* %4469, %nyx_string* %4471)
  %4473 = load %nyx_string*, %nyx_string** %lang.ptr
  %4474 = call i1 @sdd_seed_template(%nyx_string* %4466, %nyx_string* %4468, %nyx_string* %4472, %nyx_string* %4473)
  %4475 = load %nyx_string*, %nyx_string** %4383
  %4476 = getelementptr [16 x i8], [16 x i8]* @.str532, i32 0, i32 0
  %4477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %4476, i64 15)
  %4478 = load %nyx_string*, %nyx_string** %dir.ptr
  %4479 = getelementptr [27 x i8], [27 x i8]* @.str533, i32 0, i32 0
  %4480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %4479, i64 26)
  %4481 = call %nyx_string* @nyx_string_concat(%nyx_string* %4478, %nyx_string* %4480)
  %4482 = load %nyx_string*, %nyx_string** %lang.ptr
  %4483 = call i1 @sdd_seed_template(%nyx_string* %4475, %nyx_string* %4477, %nyx_string* %4481, %nyx_string* %4482)
  %4484 = load %nyx_string*, %nyx_string** %4383
  %4485 = getelementptr [16 x i8], [16 x i8]* @.str534, i32 0, i32 0
  %4486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %4485, i64 15)
  %4487 = load %nyx_string*, %nyx_string** %dir.ptr
  %4488 = getelementptr [17 x i8], [17 x i8]* @.str535, i32 0, i32 0
  %4489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %4488, i64 16)
  %4490 = call %nyx_string* @nyx_string_concat(%nyx_string* %4487, %nyx_string* %4489)
  %4491 = load %nyx_string*, %nyx_string** %lang.ptr
  %4492 = call i1 @sdd_seed_template(%nyx_string* %4484, %nyx_string* %4486, %nyx_string* %4490, %nyx_string* %4491)
  %4493 = load %nyx_string*, %nyx_string** %4383
  %4494 = getelementptr [14 x i8], [14 x i8]* @.str536, i32 0, i32 0
  %4495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %4494, i64 13)
  %4496 = load %nyx_string*, %nyx_string** %dir.ptr
  %4497 = getelementptr [24 x i8], [24 x i8]* @.str537, i32 0, i32 0
  %4498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %4497, i64 23)
  %4499 = call %nyx_string* @nyx_string_concat(%nyx_string* %4496, %nyx_string* %4498)
  %4500 = load %nyx_string*, %nyx_string** %lang.ptr
  %4501 = call i1 @sdd_seed_template(%nyx_string* %4493, %nyx_string* %4495, %nyx_string* %4499, %nyx_string* %4500)
  %4502 = load %nyx_string*, %nyx_string** %dir.ptr
  %4503 = load %nyx_string*, %nyx_string** %lang.ptr
  %4504 = call i64 @write_evidence(%nyx_string* %4502, %nyx_string* %4503)
  %4505 = alloca i64
  store i64 %4504, i64* %4505
  %4506 = load %nyx_string*, %nyx_string** %dir.ptr
  %4507 = getelementptr [20 x i8], [20 x i8]* @.str538, i32 0, i32 0
  %4508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %4507, i64 19)
  %4509 = call %nyx_string* @nyx_string_concat(%nyx_string* %4506, %nyx_string* %4508)
  %4510 = call %nyx_string* @toolchain_version()
  %4511 = call %nyx_string* @nyx_string_concat(%nyx_string* %4509, %nyx_string* %4510)
  %4512 = getelementptr [4 x i8], [4 x i8]* @.str539, i32 0, i32 0
  %4513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %4512, i64 3)
  %4514 = call %nyx_string* @nyx_string_concat(%nyx_string* %4511, %nyx_string* %4513)
  %4515 = alloca %nyx_string*
  store %nyx_string* %4514, %nyx_string** %4515
  %4516 = load i64, i64* %4505
  %4517 = icmp eq i64 %4516, 1
  br i1 %4517, label %then771, label %else772
then771:
  %4518 = getelementptr [3 x i8], [3 x i8]* @.str540, i32 0, i32 0
  %4519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %4518, i64 2)
  %4520 = load %nyx_string*, %nyx_string** %4515
  %4521 = call %nyx_string* @nyx_string_concat(%nyx_string* %4519, %nyx_string* %4520)
  %4522 = load %nyx_string*, %nyx_string** %lang.ptr
  %4523 = getelementptr [13 x i8], [13 x i8]* @.str541, i32 0, i32 0
  %4524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %4523, i64 12)
  %4525 = getelementptr [12 x i8], [12 x i8]* @.str542, i32 0, i32 0
  %4526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %4525, i64 11)
  %4527 = call %nyx_string* @sdd_msg(%nyx_string* %4522, %nyx_string* %4524, %nyx_string* %4526)
  %4528 = call %nyx_string* @nyx_string_concat(%nyx_string* %4521, %nyx_string* %4527)
  %4529 = call i8* @nyx_string_to_cstr(%nyx_string* %4528)
  call void @nyx_print_string(i8* %4529)
  br label %merge773
else772:
  br label %merge773
merge773:
  %4530 = load i64, i64* %4505
  %4531 = icmp eq i64 %4530, 2
  br i1 %4531, label %then774, label %else775
then774:
  %4532 = load %nyx_string*, %nyx_string** %lang.ptr
  %4533 = getelementptr [41 x i8], [41 x i8]* @.str543, i32 0, i32 0
  %4534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %4533, i64 40)
  %4535 = load %nyx_string*, %nyx_string** %4515
  %4536 = call %nyx_string* @nyx_string_concat(%nyx_string* %4534, %nyx_string* %4535)
  %4537 = getelementptr [47 x i8], [47 x i8]* @.str544, i32 0, i32 0
  %4538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %4537, i64 46)
  %4539 = load %nyx_string*, %nyx_string** %4515
  %4540 = call %nyx_string* @nyx_string_concat(%nyx_string* %4538, %nyx_string* %4539)
  %4541 = call %nyx_string* @sdd_msg(%nyx_string* %4532, %nyx_string* %4536, %nyx_string* %4540)
  %4542 = call i8* @nyx_string_to_cstr(%nyx_string* %4541)
  call void @nyx_print_string(i8* %4542)
  br label %merge776
else775:
  br label %merge776
merge776:
  %4543 = load i64, i64* %4505
  %4544 = icmp eq i64 %4543, 0
  br i1 %4544, label %then777, label %else778
then777:
  %4545 = load %nyx_string*, %nyx_string** %lang.ptr
  %4546 = getelementptr [23 x i8], [23 x i8]* @.str545, i32 0, i32 0
  %4547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %4546, i64 22)
  %4548 = load %nyx_string*, %nyx_string** %4515
  %4549 = call %nyx_string* @nyx_string_concat(%nyx_string* %4547, %nyx_string* %4548)
  %4550 = getelementptr [21 x i8], [21 x i8]* @.str546, i32 0, i32 0
  %4551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %4550, i64 20)
  %4552 = load %nyx_string*, %nyx_string** %4515
  %4553 = call %nyx_string* @nyx_string_concat(%nyx_string* %4551, %nyx_string* %4552)
  %4554 = call %nyx_string* @sdd_msg(%nyx_string* %4545, %nyx_string* %4549, %nyx_string* %4553)
  %4555 = call i8* @nyx_string_to_cstr(%nyx_string* %4554)
  call void @nyx_print_string(i8* %4555)
  br label %merge779
else778:
  br label %merge779
merge779:
  %4556 = load %nyx_string*, %nyx_string** %dir.ptr
  %4557 = call i64 @write_constitution_test(%nyx_string* %4556)
  %4558 = alloca i64
  store i64 %4557, i64* %4558
  %4559 = load %nyx_string*, %nyx_string** %dir.ptr
  %4560 = getelementptr [28 x i8], [28 x i8]* @.str547, i32 0, i32 0
  %4561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %4560, i64 27)
  %4562 = call %nyx_string* @nyx_string_concat(%nyx_string* %4559, %nyx_string* %4561)
  %4563 = alloca %nyx_string*
  store %nyx_string* %4562, %nyx_string** %4563
  %4564 = load i64, i64* %4558
  %4565 = icmp eq i64 %4564, 1
  br i1 %4565, label %then780, label %else781
then780:
  %4566 = getelementptr [3 x i8], [3 x i8]* @.str548, i32 0, i32 0
  %4567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %4566, i64 2)
  %4568 = load %nyx_string*, %nyx_string** %4563
  %4569 = call %nyx_string* @nyx_string_concat(%nyx_string* %4567, %nyx_string* %4568)
  %4570 = load %nyx_string*, %nyx_string** %lang.ptr
  %4571 = getelementptr [13 x i8], [13 x i8]* @.str549, i32 0, i32 0
  %4572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %4571, i64 12)
  %4573 = getelementptr [12 x i8], [12 x i8]* @.str550, i32 0, i32 0
  %4574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %4573, i64 11)
  %4575 = call %nyx_string* @sdd_msg(%nyx_string* %4570, %nyx_string* %4572, %nyx_string* %4574)
  %4576 = call %nyx_string* @nyx_string_concat(%nyx_string* %4569, %nyx_string* %4575)
  %4577 = call i8* @nyx_string_to_cstr(%nyx_string* %4576)
  call void @nyx_print_string(i8* %4577)
  br label %merge782
else781:
  br label %merge782
merge782:
  %4578 = load i64, i64* %4558
  %4579 = icmp eq i64 %4578, 2
  br i1 %4579, label %then783, label %else784
then783:
  %4580 = load %nyx_string*, %nyx_string** %lang.ptr
  %4581 = getelementptr [41 x i8], [41 x i8]* @.str551, i32 0, i32 0
  %4582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %4581, i64 40)
  %4583 = load %nyx_string*, %nyx_string** %4563
  %4584 = call %nyx_string* @nyx_string_concat(%nyx_string* %4582, %nyx_string* %4583)
  %4585 = getelementptr [47 x i8], [47 x i8]* @.str552, i32 0, i32 0
  %4586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %4585, i64 46)
  %4587 = load %nyx_string*, %nyx_string** %4563
  %4588 = call %nyx_string* @nyx_string_concat(%nyx_string* %4586, %nyx_string* %4587)
  %4589 = call %nyx_string* @sdd_msg(%nyx_string* %4580, %nyx_string* %4584, %nyx_string* %4588)
  %4590 = call i8* @nyx_string_to_cstr(%nyx_string* %4589)
  call void @nyx_print_string(i8* %4590)
  br label %merge785
else784:
  br label %merge785
merge785:
  %4591 = load i64, i64* %4558
  %4592 = icmp eq i64 %4591, 0
  br i1 %4592, label %then786, label %else787
then786:
  %4593 = load %nyx_string*, %nyx_string** %lang.ptr
  %4594 = getelementptr [23 x i8], [23 x i8]* @.str553, i32 0, i32 0
  %4595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %4594, i64 22)
  %4596 = load %nyx_string*, %nyx_string** %4563
  %4597 = call %nyx_string* @nyx_string_concat(%nyx_string* %4595, %nyx_string* %4596)
  %4598 = getelementptr [21 x i8], [21 x i8]* @.str554, i32 0, i32 0
  %4599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %4598, i64 20)
  %4600 = load %nyx_string*, %nyx_string** %4563
  %4601 = call %nyx_string* @nyx_string_concat(%nyx_string* %4599, %nyx_string* %4600)
  %4602 = call %nyx_string* @sdd_msg(%nyx_string* %4593, %nyx_string* %4597, %nyx_string* %4601)
  %4603 = call i8* @nyx_string_to_cstr(%nyx_string* %4602)
  call void @nyx_print_string(i8* %4603)
  br label %merge788
else787:
  br label %merge788
merge788:
  %4604 = load %nyx_string*, %nyx_string** %dir.ptr
  %4605 = load %nyx_string*, %nyx_string** %lang.ptr
  %4606 = call i1 @add_agents_triggers(%nyx_string* %4604, %nyx_string* %4605)
  %4607 = getelementptr [1 x i8], [1 x i8]* @.str555, i32 0, i32 0
  %4608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %4607, i64 0)
  %4609 = call i8* @nyx_string_to_cstr(%nyx_string* %4608)
  call void @nyx_print_string(i8* %4609)
  %4610 = load %nyx_string*, %nyx_string** %lang.ptr
  %4611 = getelementptr [94 x i8], [94 x i8]* @.str556, i32 0, i32 0
  %4612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %4611, i64 93)
  %4613 = getelementptr [98 x i8], [98 x i8]* @.str557, i32 0, i32 0
  %4614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %4613, i64 97)
  %4615 = call %nyx_string* @sdd_msg(%nyx_string* %4610, %nyx_string* %4612, %nyx_string* %4614)
  %4616 = call i8* @nyx_string_to_cstr(%nyx_string* %4615)
  call void @nyx_print_string(i8* %4616)
  %4617 = load %nyx_string*, %nyx_string** %lang.ptr
  %4618 = getelementptr [89 x i8], [89 x i8]* @.str558, i32 0, i32 0
  %4619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %4618, i64 88)
  %4620 = getelementptr [90 x i8], [90 x i8]* @.str559, i32 0, i32 0
  %4621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %4620, i64 89)
  %4622 = call %nyx_string* @sdd_msg(%nyx_string* %4617, %nyx_string* %4619, %nyx_string* %4621)
  %4623 = call i8* @nyx_string_to_cstr(%nyx_string* %4622)
  call void @nyx_print_string(i8* %4623)
  %4624 = load %nyx_string*, %nyx_string** %lang.ptr
  %4625 = getelementptr [78 x i8], [78 x i8]* @.str560, i32 0, i32 0
  %4626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %4625, i64 77)
  %4627 = getelementptr [76 x i8], [76 x i8]* @.str561, i32 0, i32 0
  %4628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %4627, i64 75)
  %4629 = call %nyx_string* @sdd_msg(%nyx_string* %4624, %nyx_string* %4626, %nyx_string* %4628)
  %4630 = call i8* @nyx_string_to_cstr(%nyx_string* %4629)
  call void @nyx_print_string(i8* %4630)
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
  %4631 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %4632 = alloca %nyx_string*
  store %nyx_string* %4631, %nyx_string** %4632
  %4633 = load %nyx_string*, %nyx_string** %4632
  %4634 = getelementptr [1 x i8], [1 x i8]* @.str562, i32 0, i32 0
  %4635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %4634, i64 0)
  %4636 = call i1 @nyx_string_equals(%nyx_string* %4633, %nyx_string* %4635)
  %4637 = xor i1 %4636, true
  br i1 %4637, label %then789, label %else790
then789:
  %4638 = load %nyx_string*, %nyx_string** %4632
  %4639 = call i8* @nyx_string_to_cstr(%nyx_string* %4638)
  %4640 = call i1 @nyx_file_exists(i8* %4639)
  br i1 %4640, label %then792, label %else793
then792:
  %4641 = getelementptr [19 x i8], [19 x i8]* @.str563, i32 0, i32 0
  %4642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %4641, i64 18)
  %4643 = load %nyx_string*, %nyx_string** %4632
  %4644 = call %nyx_string* @nyx_string_concat(%nyx_string* %4642, %nyx_string* %4643)
  %4645 = getelementptr [17 x i8], [17 x i8]* @.str564, i32 0, i32 0
  %4646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %4645, i64 16)
  %4647 = call %nyx_string* @nyx_string_concat(%nyx_string* %4644, %nyx_string* %4646)
  %4648 = call i8* @nyx_string_to_cstr(%nyx_string* %4647)
  call void @nyx_print_string(i8* %4648)
  ret i1 0
else793:
  br label %merge794
merge794:
  %4649 = getelementptr [10 x i8], [10 x i8]* @.str565, i32 0, i32 0
  %4650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %4649, i64 9)
  %4651 = load %nyx_string*, %nyx_string** %4632
  %4652 = call %nyx_string* @nyx_string_concat(%nyx_string* %4650, %nyx_string* %4651)
  %4653 = getelementptr [5 x i8], [5 x i8]* @.str566, i32 0, i32 0
  %4654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %4653, i64 4)
  %4655 = call %nyx_string* @nyx_string_concat(%nyx_string* %4652, %nyx_string* %4654)
  %4656 = call i8* @nyx_string_to_cstr(%nyx_string* %4655)
  %4657 = call %nyx_string* @nyx_exec(i8* %4656)
  %4658 = getelementptr [19 x i8], [19 x i8]* @.str567, i32 0, i32 0
  %4659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %4658, i64 18)
  %4660 = load %nyx_string*, %nyx_string** %4632
  %4661 = call %nyx_string* @nyx_string_concat(%nyx_string* %4659, %nyx_string* %4660)
  %4662 = getelementptr [58 x i8], [58 x i8]* @.str568, i32 0, i32 0
  %4663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %4662, i64 57)
  %4664 = call %nyx_string* @nyx_string_concat(%nyx_string* %4661, %nyx_string* %4663)
  %4665 = alloca %nyx_string*
  store %nyx_string* %4664, %nyx_string** %4665
  %4666 = load %nyx_string*, %nyx_string** %4632
  %4667 = getelementptr [10 x i8], [10 x i8]* @.str569, i32 0, i32 0
  %4668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %4667, i64 9)
  %4669 = call %nyx_string* @nyx_string_concat(%nyx_string* %4666, %nyx_string* %4668)
  %4670 = load %nyx_string*, %nyx_string** %4665
  %4671 = ptrtoint %nyx_string* %4670 to i64
  %4672 = call i8* @nyx_string_to_cstr(%nyx_string* %4669)
  %4673 = inttoptr i64 %4671 to %nyx_string*
  %4674 = call i1 @nyx_write_file_safe(i8* %4672, %nyx_string* %4673)
  %4675 = load %nyx_string*, %nyx_string** %4632
  %4676 = getelementptr [13 x i8], [13 x i8]* @.str570, i32 0, i32 0
  %4677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %4676, i64 12)
  %4678 = call %nyx_string* @nyx_string_concat(%nyx_string* %4675, %nyx_string* %4677)
  %4679 = getelementptr [35 x i8], [35 x i8]* @.str571, i32 0, i32 0
  %4680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %4679, i64 34)
  %4681 = load %nyx_string*, %nyx_string** %4632
  %4682 = call %nyx_string* @nyx_string_concat(%nyx_string* %4680, %nyx_string* %4681)
  %4683 = getelementptr [7 x i8], [7 x i8]* @.str572, i32 0, i32 0
  %4684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %4683, i64 6)
  %4685 = call %nyx_string* @nyx_string_concat(%nyx_string* %4682, %nyx_string* %4684)
  %4686 = ptrtoint %nyx_string* %4685 to i64
  %4687 = call i8* @nyx_string_to_cstr(%nyx_string* %4678)
  %4688 = inttoptr i64 %4686 to %nyx_string*
  %4689 = call i1 @nyx_write_file_safe(i8* %4687, %nyx_string* %4688)
  %4690 = load %nyx_string*, %nyx_string** %4632
  %4691 = load %nyx_string*, %nyx_string** %lang.ptr
  %4692 = load %nyx_string*, %nyx_string** %agents.ptr
  %4693 = call i64 @scaffold_project_files(%nyx_string* %4690, %nyx_string* %4691, %nyx_string* %4692)
  %4694 = load %nyx_string*, %nyx_string** %4632
  %4695 = load %nyx_string*, %nyx_string** %4632
  %4696 = call i64 @seed_gitignore(%nyx_string* %4694, %nyx_string* %4695)
  %4697 = getelementptr [22 x i8], [22 x i8]* @.str573, i32 0, i32 0
  %4698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %4697, i64 21)
  %4699 = load %nyx_string*, %nyx_string** %4632
  %4700 = call %nyx_string* @nyx_string_concat(%nyx_string* %4698, %nyx_string* %4699)
  %4701 = call i8* @nyx_string_to_cstr(%nyx_string* %4700)
  call void @nyx_print_string(i8* %4701)
  %4702 = getelementptr [12 x i8], [12 x i8]* @.str574, i32 0, i32 0
  %4703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %4702, i64 11)
  %4704 = load %nyx_string*, %nyx_string** %4632
  %4705 = call %nyx_string* @nyx_string_concat(%nyx_string* %4703, %nyx_string* %4704)
  %4706 = getelementptr [2 x i8], [2 x i8]* @.str575, i32 0, i32 0
  %4707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %4706, i64 1)
  %4708 = call %nyx_string* @nyx_string_concat(%nyx_string* %4705, %nyx_string* %4707)
  %4709 = call i8* @nyx_string_to_cstr(%nyx_string* %4708)
  call void @nyx_print_string(i8* %4709)
  %4710 = getelementptr [15 x i8], [15 x i8]* @.str576, i32 0, i32 0
  %4711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %4710, i64 14)
  %4712 = load %nyx_string*, %nyx_string** %4632
  %4713 = call %nyx_string* @nyx_string_concat(%nyx_string* %4711, %nyx_string* %4712)
  %4714 = getelementptr [12 x i8], [12 x i8]* @.str577, i32 0, i32 0
  %4715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %4714, i64 11)
  %4716 = call %nyx_string* @nyx_string_concat(%nyx_string* %4713, %nyx_string* %4715)
  %4717 = call i8* @nyx_string_to_cstr(%nyx_string* %4716)
  call void @nyx_print_string(i8* %4717)
  ret i1 1
else790:
  br label %merge791
merge791:
  %4718 = getelementptr [9 x i8], [9 x i8]* @.str578, i32 0, i32 0
  %4719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %4718, i64 8)
  %4720 = call i8* @nyx_string_to_cstr(%nyx_string* %4719)
  %4721 = call i1 @nyx_file_exists(i8* %4720)
  br i1 %4721, label %then795, label %else796
then795:
  %4722 = getelementptr [31 x i8], [31 x i8]* @.str579, i32 0, i32 0
  %4723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %4722, i64 30)
  %4724 = call i8* @nyx_string_to_cstr(%nyx_string* %4723)
  call void @nyx_print_string(i8* %4724)
  ret i1 0
else796:
  br label %merge797
merge797:
  %4725 = getelementptr [4 x i8], [4 x i8]* @.str580, i32 0, i32 0
  %4726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %4725, i64 3)
  %4727 = call i8* @nyx_string_to_cstr(%nyx_string* %4726)
  %4728 = call %nyx_string* @nyx_getenv(i8* %4727)
  %4729 = alloca %nyx_string*
  store %nyx_string* %4728, %nyx_string** %4729
  %4730 = getelementptr [6 x i8], [6 x i8]* @.str581, i32 0, i32 0
  %4731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4730, i64 5)
  store %nyx_string* %4731, %nyx_string** %4632
  %4732 = sub i64 0, 1
  %4733 = alloca i64
  store i64 %4732, i64* %4733
  %4734 = alloca i64
  store i64 0, i64* %4734
  %4735 = call i8* @llvm.stacksave()
  br label %while_cond798
while_cond798:
  %4736 = load i64, i64* %4734
  %4737 = load %nyx_string*, %nyx_string** %4729
  %4738 = call i64 @nyx_string_byte_length(%nyx_string* %4737)
  %4739 = icmp slt i64 %4736, %4738
  br i1 %4739, label %while_body799, label %while_end800
while_body799:
  call void @llvm.stackrestore(i8* %4735)
  %4740 = load %nyx_string*, %nyx_string** %4729
  %4741 = load i64, i64* %4734
  %4742 = call i8 @nyx_string_char_at(%nyx_string* %4740, i64 %4741)
  %4743 = zext i8 %4742 to i64
  %4744 = icmp eq i64 %4743, 47
  br i1 %4744, label %then801, label %else802
then801:
  %4745 = load i64, i64* %4734
  store i64 %4745, i64* %4733
  br label %merge803
else802:
  br label %merge803
merge803:
  %4746 = load i64, i64* %4734
  %4747 = add i64 %4746, 1
  store i64 %4747, i64* %4734
  br label %while_cond798
while_end800:
  %4748 = load i64, i64* %4733
  %4749 = icmp sge i64 %4748, 0
  br i1 %4749, label %then804, label %else805
then804:
  %4750 = load %nyx_string*, %nyx_string** %4729
  %4751 = load i64, i64* %4733
  %4752 = add i64 %4751, 1
  %4753 = load %nyx_string*, %nyx_string** %4729
  %4754 = call i64 @nyx_string_byte_length(%nyx_string* %4753)
  %4755 = call %nyx_string* @nyx_string_substring(%nyx_string* %4750, i64 %4752, i64 %4754)
  store %nyx_string* %4755, %nyx_string** %4632
  br label %merge806
else805:
  br label %merge806
merge806:
  %4756 = getelementptr [19 x i8], [19 x i8]* @.str582, i32 0, i32 0
  %4757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4756, i64 18)
  %4758 = load %nyx_string*, %nyx_string** %4632
  %4759 = call %nyx_string* @nyx_string_concat(%nyx_string* %4757, %nyx_string* %4758)
  %4760 = getelementptr [58 x i8], [58 x i8]* @.str583, i32 0, i32 0
  %4761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4760, i64 57)
  %4762 = call %nyx_string* @nyx_string_concat(%nyx_string* %4759, %nyx_string* %4761)
  %4763 = alloca %nyx_string*
  store %nyx_string* %4762, %nyx_string** %4763
  %4764 = getelementptr [9 x i8], [9 x i8]* @.str584, i32 0, i32 0
  %4765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4764, i64 8)
  %4766 = load %nyx_string*, %nyx_string** %4763
  %4767 = ptrtoint %nyx_string* %4766 to i64
  %4768 = call i8* @nyx_string_to_cstr(%nyx_string* %4765)
  %4769 = inttoptr i64 %4767 to %nyx_string*
  %4770 = call i1 @nyx_write_file_safe(i8* %4768, %nyx_string* %4769)
  %4771 = getelementptr [13 x i8], [13 x i8]* @.str585, i32 0, i32 0
  %4772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4771, i64 12)
  %4773 = call i8* @nyx_string_to_cstr(%nyx_string* %4772)
  %4774 = call %nyx_string* @nyx_exec(i8* %4773)
  %4775 = getelementptr [12 x i8], [12 x i8]* @.str586, i32 0, i32 0
  %4776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4775, i64 11)
  %4777 = call i8* @nyx_string_to_cstr(%nyx_string* %4776)
  %4778 = call i1 @nyx_file_exists(i8* %4777)
  %4779 = icmp eq i1 %4778, 0
  br i1 %4779, label %then807, label %else808
then807:
  %4780 = getelementptr [12 x i8], [12 x i8]* @.str587, i32 0, i32 0
  %4781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4780, i64 11)
  %4782 = getelementptr [35 x i8], [35 x i8]* @.str588, i32 0, i32 0
  %4783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4782, i64 34)
  %4784 = load %nyx_string*, %nyx_string** %4632
  %4785 = call %nyx_string* @nyx_string_concat(%nyx_string* %4783, %nyx_string* %4784)
  %4786 = getelementptr [7 x i8], [7 x i8]* @.str589, i32 0, i32 0
  %4787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4786, i64 6)
  %4788 = call %nyx_string* @nyx_string_concat(%nyx_string* %4785, %nyx_string* %4787)
  %4789 = ptrtoint %nyx_string* %4788 to i64
  %4790 = call i8* @nyx_string_to_cstr(%nyx_string* %4781)
  %4791 = inttoptr i64 %4789 to %nyx_string*
  %4792 = call i1 @nyx_write_file_safe(i8* %4790, %nyx_string* %4791)
  br label %merge809
else808:
  br label %merge809
merge809:
  %4793 = getelementptr [2 x i8], [2 x i8]* @.str590, i32 0, i32 0
  %4794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4793, i64 1)
  %4795 = load %nyx_string*, %nyx_string** %lang.ptr
  %4796 = load %nyx_string*, %nyx_string** %agents.ptr
  %4797 = call i64 @scaffold_project_files(%nyx_string* %4794, %nyx_string* %4795, %nyx_string* %4796)
  %4798 = getelementptr [2 x i8], [2 x i8]* @.str591, i32 0, i32 0
  %4799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4798, i64 1)
  %4800 = load %nyx_string*, %nyx_string** %4632
  %4801 = call i64 @seed_gitignore(%nyx_string* %4799, %nyx_string* %4800)
  %4802 = getelementptr [22 x i8], [22 x i8]* @.str592, i32 0, i32 0
  %4803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4802, i64 21)
  %4804 = load %nyx_string*, %nyx_string** %4632
  %4805 = call %nyx_string* @nyx_string_concat(%nyx_string* %4803, %nyx_string* %4804)
  %4806 = call i8* @nyx_string_to_cstr(%nyx_string* %4805)
  call void @nyx_print_string(i8* %4806)
  %4807 = getelementptr [33 x i8], [33 x i8]* @.str593, i32 0, i32 0
  %4808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4807, i64 32)
  %4809 = call i8* @nyx_string_to_cstr(%nyx_string* %4808)
  call void @nyx_print_string(i8* %4809)
  %4810 = getelementptr [21 x i8], [21 x i8]* @.str594, i32 0, i32 0
  %4811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4810, i64 20)
  %4812 = call i8* @nyx_string_to_cstr(%nyx_string* %4811)
  call void @nyx_print_string(i8* %4812)
  %4813 = getelementptr [19 x i8], [19 x i8]* @.str595, i32 0, i32 0
  %4814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4813, i64 18)
  %4815 = call i8* @nyx_string_to_cstr(%nyx_string* %4814)
  call void @nyx_print_string(i8* %4815)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %4816 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4817 = load { i64, i8* }*, { i64, i8* }** %4816
  %4818 = call i64 @nyx_array_length({ i64, i8* }* %4817)
  %4819 = icmp eq i64 %4818, 0
  br i1 %4819, label %then810, label %else811
then810:
  ret i1 1
else811:
  br label %merge812
merge812:
  %4820 = alloca i64
  store i64 0, i64* %4820
  %4821 = getelementptr [10 x i8], [10 x i8]* @.str596, i32 0, i32 0
  %4822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4821, i64 9)
  %4823 = alloca %nyx_string*
  store %nyx_string* %4822, %nyx_string** %4823
  %4824 = getelementptr [14 x i8], [14 x i8]* @.str597, i32 0, i32 0
  %4825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4824, i64 13)
  %4826 = alloca %nyx_string*
  store %nyx_string* %4825, %nyx_string** %4826
  %4827 = getelementptr [5 x i8], [5 x i8]* @.str598, i32 0, i32 0
  %4828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4827, i64 4)
  %4829 = alloca %nyx_string*
  store %nyx_string* %4828, %nyx_string** %4829
  %4830 = getelementptr [4 x i8], [4 x i8]* @.str599, i32 0, i32 0
  %4831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4830, i64 3)
  %4832 = alloca %nyx_string*
  store %nyx_string* %4831, %nyx_string** %4832
  %4833 = getelementptr [32 x i8], [32 x i8]* @.str600, i32 0, i32 0
  %4834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4833, i64 31)
  %4835 = alloca %nyx_string*
  store %nyx_string* %4834, %nyx_string** %4835
  %4836 = getelementptr [43 x i8], [43 x i8]* @.str601, i32 0, i32 0
  %4837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4836, i64 42)
  %4838 = alloca %nyx_string*
  store %nyx_string* %4837, %nyx_string** %4838
  %4839 = getelementptr [2 x i8], [2 x i8]* @.str602, i32 0, i32 0
  %4840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4839, i64 1)
  %4841 = alloca %nyx_string*
  store %nyx_string* %4840, %nyx_string** %4841
  %4842 = getelementptr [13 x i8], [13 x i8]* @.str603, i32 0, i32 0
  %4843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4842, i64 12)
  %4844 = alloca %nyx_string*
  store %nyx_string* %4843, %nyx_string** %4844
  %4845 = getelementptr [26 x i8], [26 x i8]* @.str604, i32 0, i32 0
  %4846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4845, i64 25)
  %4847 = alloca %nyx_string*
  store %nyx_string* %4846, %nyx_string** %4847
  %4848 = getelementptr [7 x i8], [7 x i8]* @.str605, i32 0, i32 0
  %4849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4848, i64 6)
  %4850 = alloca %nyx_string*
  store %nyx_string* %4849, %nyx_string** %4850
  %4851 = getelementptr [12 x i8], [12 x i8]* @.str606, i32 0, i32 0
  %4852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4851, i64 11)
  %4853 = alloca %nyx_string*
  store %nyx_string* %4852, %nyx_string** %4853
  %4854 = call i8* @llvm.stacksave()
  br label %while_cond813
while_cond813:
  %4855 = load i64, i64* %4820
  %4856 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4857 = load { i64, i8* }*, { i64, i8* }** %4856
  %4858 = call i64 @nyx_array_length({ i64, i8* }* %4857)
  %4859 = icmp slt i64 %4855, %4858
  br i1 %4859, label %while_body814, label %while_end815
while_body814:
  call void @llvm.stackrestore(i8* %4854)
  %4860 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4861 = load { i64, i8* }*, { i64, i8* }** %4860
  %4862 = load i64, i64* %4820
  %4863 = call i64 @nyx_array_get({ i64, i8* }* %4861, i64 %4862)
  %4864 = inttoptr i64 %4863 to %nyx_string*
  %4865 = alloca %nyx_string*
  store %nyx_string* %4864, %nyx_string** %4865
  %4866 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %4867 = load { i64, i8* }*, { i64, i8* }** %4866
  %4868 = load i64, i64* %4820
  %4869 = call i64 @nyx_array_get({ i64, i8* }* %4867, i64 %4868)
  %4870 = inttoptr i64 %4869 to %nyx_string*
  %4871 = alloca %nyx_string*
  store %nyx_string* %4870, %nyx_string** %4871
  %4872 = load %nyx_string*, %nyx_string** %4823
  %4873 = load %nyx_string*, %nyx_string** %4865
  %4874 = call %nyx_string* @nyx_string_concat(%nyx_string* %4872, %nyx_string* %4873)
  %4875 = alloca %nyx_string*
  store %nyx_string* %4874, %nyx_string** %4875
  %4876 = load %nyx_string*, %nyx_string** %4875
  %4877 = call i8* @nyx_string_to_cstr(%nyx_string* %4876)
  %4878 = call i1 @nyx_file_exists(i8* %4877)
  %4879 = icmp eq i1 %4878, 0
  br i1 %4879, label %then816, label %else817
then816:
  %4880 = load %nyx_string*, %nyx_string** %4826
  %4881 = load %nyx_string*, %nyx_string** %4865
  %4882 = call %nyx_string* @nyx_string_concat(%nyx_string* %4880, %nyx_string* %4881)
  %4883 = call i8* @nyx_string_to_cstr(%nyx_string* %4882)
  call void @nyx_print_string(i8* %4883)
  %4884 = load %nyx_string*, %nyx_string** %4871
  %4885 = alloca %nyx_string*
  store %nyx_string* %4884, %nyx_string** %4885
  %4886 = alloca i1
  store i1 false, i1* %4886
  %4887 = load %nyx_string*, %nyx_string** %4885
  %4888 = load %nyx_string*, %nyx_string** %4829
  %4889 = call i1 @nyx_string_starts_with(%nyx_string* %4887, %nyx_string* %4888)
  %4890 = icmp eq i1 %4889, 0
  br i1 %4890, label %sc_and_rhs819, label %sc_and_end820
sc_and_rhs819:
  %4891 = load %nyx_string*, %nyx_string** %4885
  %4892 = load %nyx_string*, %nyx_string** %4832
  %4893 = call i1 @nyx_string_starts_with(%nyx_string* %4891, %nyx_string* %4892)
  %4894 = icmp eq i1 %4893, 0
  store i1 %4894, i1* %4886
  br label %sc_and_end820
sc_and_end820:
  %4895 = load i1, i1* %4886
  br i1 %4895, label %then821, label %else822
then821:
  %4896 = load %nyx_string*, %nyx_string** %4835
  %4897 = load %nyx_string*, %nyx_string** %4865
  %4898 = call %nyx_string* @nyx_string_concat(%nyx_string* %4896, %nyx_string* %4897)
  store %nyx_string* %4898, %nyx_string** %4885
  br label %merge823
else822:
  br label %merge823
merge823:
  %4899 = load %nyx_string*, %nyx_string** %4838
  %4900 = load %nyx_string*, %nyx_string** %4885
  %4901 = call %nyx_string* @nyx_string_concat(%nyx_string* %4899, %nyx_string* %4900)
  %4902 = load %nyx_string*, %nyx_string** %4841
  %4903 = call %nyx_string* @nyx_string_concat(%nyx_string* %4901, %nyx_string* %4902)
  %4904 = load %nyx_string*, %nyx_string** %4875
  %4905 = call %nyx_string* @nyx_string_concat(%nyx_string* %4903, %nyx_string* %4904)
  %4906 = load %nyx_string*, %nyx_string** %4844
  %4907 = call %nyx_string* @nyx_string_concat(%nyx_string* %4905, %nyx_string* %4906)
  %4908 = alloca %nyx_string*
  store %nyx_string* %4907, %nyx_string** %4908
  %4909 = load %nyx_string*, %nyx_string** %4908
  %4910 = call i8* @nyx_string_to_cstr(%nyx_string* %4909)
  %4911 = call i64 @nyx_exec_code(i8* %4910)
  %4912 = alloca i64
  store i64 %4911, i64* %4912
  %4913 = load i64, i64* %4912
  %4914 = icmp ne i64 %4913, 0
  br i1 %4914, label %then824, label %else825
then824:
  %4915 = load %nyx_string*, %nyx_string** %4847
  %4916 = load %nyx_string*, %nyx_string** %4865
  %4917 = call %nyx_string* @nyx_string_concat(%nyx_string* %4915, %nyx_string* %4916)
  %4918 = load %nyx_string*, %nyx_string** %4850
  %4919 = call %nyx_string* @nyx_string_concat(%nyx_string* %4917, %nyx_string* %4918)
  %4920 = load %nyx_string*, %nyx_string** %4885
  %4921 = call %nyx_string* @nyx_string_concat(%nyx_string* %4919, %nyx_string* %4920)
  %4922 = call i8* @nyx_string_to_cstr(%nyx_string* %4921)
  call void @nyx_print_string(i8* %4922)
  ret i1 0
else825:
  br label %merge826
merge826:
  %4923 = load %nyx_string*, %nyx_string** %4853
  %4924 = load %nyx_string*, %nyx_string** %4865
  %4925 = call %nyx_string* @nyx_string_concat(%nyx_string* %4923, %nyx_string* %4924)
  %4926 = call i8* @nyx_string_to_cstr(%nyx_string* %4925)
  call void @nyx_print_string(i8* %4926)
  br label %merge818
else817:
  br label %merge818
merge818:
  %4927 = load i64, i64* %4820
  %4928 = add i64 %4927, 1
  store i64 %4928, i64* %4820
  br label %while_cond813
while_end815:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %4929 = getelementptr [128 x i8], [128 x i8]* @.str607, i32 0, i32 0
  %4930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4929, i64 127)
  %4931 = alloca %nyx_string*
  store %nyx_string* %4930, %nyx_string** %4931
  %4932 = getelementptr [37 x i8], [37 x i8]* @.str608, i32 0, i32 0
  %4933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4932, i64 36)
  %4934 = alloca %nyx_string*
  store %nyx_string* %4933, %nyx_string** %4934
  %4935 = getelementptr [14 x i8], [14 x i8]* @.str609, i32 0, i32 0
  %4936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4935, i64 13)
  %4937 = load %nyx_string*, %nyx_string** %4931
  %4938 = call %nyx_string* @nyx_string_concat(%nyx_string* %4936, %nyx_string* %4937)
  %4939 = getelementptr [16 x i8], [16 x i8]* @.str610, i32 0, i32 0
  %4940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4939, i64 15)
  %4941 = call %nyx_string* @nyx_string_concat(%nyx_string* %4938, %nyx_string* %4940)
  %4942 = getelementptr [33 x i8], [33 x i8]* @.str611, i32 0, i32 0
  %4943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4942, i64 32)
  %4944 = call %nyx_string* @nyx_string_concat(%nyx_string* %4941, %nyx_string* %4943)
  %4945 = getelementptr [99 x i8], [99 x i8]* @.str612, i32 0, i32 0
  %4946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4945, i64 98)
  %4947 = call %nyx_string* @nyx_string_concat(%nyx_string* %4944, %nyx_string* %4946)
  %4948 = load %nyx_string*, %nyx_string** %main_file.ptr
  %4949 = call %nyx_string* @nyx_string_concat(%nyx_string* %4947, %nyx_string* %4948)
  %4950 = getelementptr [74 x i8], [74 x i8]* @.str613, i32 0, i32 0
  %4951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4950, i64 73)
  %4952 = call %nyx_string* @nyx_string_concat(%nyx_string* %4949, %nyx_string* %4951)
  %4953 = getelementptr [6 x i8], [6 x i8]* @.str614, i32 0, i32 0
  %4954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4953, i64 5)
  %4955 = call %nyx_string* @nyx_string_concat(%nyx_string* %4952, %nyx_string* %4954)
  %4956 = getelementptr [91 x i8], [91 x i8]* @.str615, i32 0, i32 0
  %4957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %4956, i64 90)
  %4958 = call %nyx_string* @nyx_string_concat(%nyx_string* %4955, %nyx_string* %4957)
  %4959 = load %nyx_string*, %nyx_string** %main_file.ptr
  %4960 = call %nyx_string* @nyx_string_concat(%nyx_string* %4958, %nyx_string* %4959)
  %4961 = getelementptr [76 x i8], [76 x i8]* @.str616, i32 0, i32 0
  %4962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %4961, i64 75)
  %4963 = call %nyx_string* @nyx_string_concat(%nyx_string* %4960, %nyx_string* %4962)
  %4964 = getelementptr [5 x i8], [5 x i8]* @.str617, i32 0, i32 0
  %4965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4964, i64 4)
  %4966 = call %nyx_string* @nyx_string_concat(%nyx_string* %4963, %nyx_string* %4965)
  %4967 = getelementptr [16 x i8], [16 x i8]* @.str618, i32 0, i32 0
  %4968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4967, i64 15)
  %4969 = call %nyx_string* @nyx_string_concat(%nyx_string* %4966, %nyx_string* %4968)
  %4970 = load %nyx_string*, %nyx_string** %4934
  %4971 = call %nyx_string* @nyx_string_concat(%nyx_string* %4969, %nyx_string* %4970)
  %4972 = getelementptr [16 x i8], [16 x i8]* @.str619, i32 0, i32 0
  %4973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4972, i64 15)
  %4974 = call %nyx_string* @nyx_string_concat(%nyx_string* %4971, %nyx_string* %4973)
  %4975 = getelementptr [33 x i8], [33 x i8]* @.str620, i32 0, i32 0
  %4976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4975, i64 32)
  %4977 = call %nyx_string* @nyx_string_concat(%nyx_string* %4974, %nyx_string* %4976)
  %4978 = getelementptr [176 x i8], [176 x i8]* @.str621, i32 0, i32 0
  %4979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4978, i64 175)
  %4980 = call %nyx_string* @nyx_string_concat(%nyx_string* %4977, %nyx_string* %4979)
  %4981 = getelementptr [6 x i8], [6 x i8]* @.str622, i32 0, i32 0
  %4982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4981, i64 5)
  %4983 = call %nyx_string* @nyx_string_concat(%nyx_string* %4980, %nyx_string* %4982)
  %4984 = getelementptr [184 x i8], [184 x i8]* @.str623, i32 0, i32 0
  %4985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4984, i64 183)
  %4986 = call %nyx_string* @nyx_string_concat(%nyx_string* %4983, %nyx_string* %4985)
  %4987 = getelementptr [5 x i8], [5 x i8]* @.str624, i32 0, i32 0
  %4988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4987, i64 4)
  %4989 = call %nyx_string* @nyx_string_concat(%nyx_string* %4986, %nyx_string* %4988)
  %4990 = getelementptr [6 x i8], [6 x i8]* @.str625, i32 0, i32 0
  %4991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4990, i64 5)
  %4992 = call %nyx_string* @nyx_string_concat(%nyx_string* %4989, %nyx_string* %4991)
  %4993 = getelementptr [33 x i8], [33 x i8]* @.str626, i32 0, i32 0
  %4994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4993, i64 32)
  %4995 = call %nyx_string* @nyx_string_concat(%nyx_string* %4992, %nyx_string* %4994)
  %4996 = getelementptr [127 x i8], [127 x i8]* @.str627, i32 0, i32 0
  %4997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4996, i64 126)
  %4998 = call %nyx_string* @nyx_string_concat(%nyx_string* %4995, %nyx_string* %4997)
  %4999 = getelementptr [6 x i8], [6 x i8]* @.str628, i32 0, i32 0
  %5000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4999, i64 5)
  %5001 = call %nyx_string* @nyx_string_concat(%nyx_string* %4998, %nyx_string* %5000)
  %5002 = getelementptr [119 x i8], [119 x i8]* @.str629, i32 0, i32 0
  %5003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %5002, i64 118)
  %5004 = call %nyx_string* @nyx_string_concat(%nyx_string* %5001, %nyx_string* %5003)
  %5005 = getelementptr [5 x i8], [5 x i8]* @.str630, i32 0, i32 0
  %5006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %5005, i64 4)
  %5007 = call %nyx_string* @nyx_string_concat(%nyx_string* %5004, %nyx_string* %5006)
  %5008 = getelementptr [4 x i8], [4 x i8]* @.str631, i32 0, i32 0
  %5009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %5008, i64 3)
  %5010 = call %nyx_string* @nyx_string_concat(%nyx_string* %5007, %nyx_string* %5009)
  ret %nyx_string* %5010
}

define internal %nyx_string* @pila_compilador_sh(
) {
  %5011 = getelementptr [180 x i8], [180 x i8]* @.str632, i32 0, i32 0
  %5012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %5011, i64 179)
  ret %nyx_string* %5012
}

define internal %nyx_string* @pila_compilador_pista_sh(
) {
  %5013 = getelementptr [326 x i8], [326 x i8]* @.str633, i32 0, i32 0
  %5014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %5013, i64 325)
  ret %nyx_string* %5014
}

define internal %nyx_string* @lib_pista_import_sh(
) {
  %5015 = getelementptr [22 x i8], [22 x i8]* @.str634, i32 0, i32 0
  %5016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %5015, i64 21)
  %5017 = alloca %nyx_string*
  store %nyx_string* %5016, %nyx_string** %5017
  %5018 = load %nyx_string*, %nyx_string** %5017
  %5019 = getelementptr [99 x i8], [99 x i8]* @.str635, i32 0, i32 0
  %5020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %5019, i64 98)
  %5021 = call %nyx_string* @nyx_string_concat(%nyx_string* %5018, %nyx_string* %5020)
  store %nyx_string* %5021, %nyx_string** %5017
  %5022 = load %nyx_string*, %nyx_string** %5017
  %5023 = getelementptr [95 x i8], [95 x i8]* @.str636, i32 0, i32 0
  %5024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %5023, i64 94)
  %5025 = call %nyx_string* @nyx_string_concat(%nyx_string* %5022, %nyx_string* %5024)
  store %nyx_string* %5025, %nyx_string** %5017
  %5026 = load %nyx_string*, %nyx_string** %5017
  %5027 = getelementptr [31 x i8], [31 x i8]* @.str637, i32 0, i32 0
  %5028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %5027, i64 30)
  %5029 = call %nyx_string* @nyx_string_concat(%nyx_string* %5026, %nyx_string* %5028)
  store %nyx_string* %5029, %nyx_string** %5017
  %5030 = load %nyx_string*, %nyx_string** %5017
  %5031 = getelementptr [59 x i8], [59 x i8]* @.str638, i32 0, i32 0
  %5032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %5031, i64 58)
  %5033 = call %nyx_string* @nyx_string_concat(%nyx_string* %5030, %nyx_string* %5032)
  store %nyx_string* %5033, %nyx_string** %5017
  %5034 = load %nyx_string*, %nyx_string** %5017
  %5035 = getelementptr [81 x i8], [81 x i8]* @.str639, i32 0, i32 0
  %5036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %5035, i64 80)
  %5037 = call %nyx_string* @nyx_string_concat(%nyx_string* %5034, %nyx_string* %5036)
  store %nyx_string* %5037, %nyx_string** %5017
  %5038 = load %nyx_string*, %nyx_string** %5017
  %5039 = getelementptr [243 x i8], [243 x i8]* @.str640, i32 0, i32 0
  %5040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %5039, i64 242)
  %5041 = call %nyx_string* @nyx_string_concat(%nyx_string* %5038, %nyx_string* %5040)
  store %nyx_string* %5041, %nyx_string** %5017
  %5042 = load %nyx_string*, %nyx_string** %5017
  %5043 = getelementptr [8 x i8], [8 x i8]* @.str641, i32 0, i32 0
  %5044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %5043, i64 7)
  %5045 = call %nyx_string* @nyx_string_concat(%nyx_string* %5042, %nyx_string* %5044)
  store %nyx_string* %5045, %nyx_string** %5017
  %5046 = load %nyx_string*, %nyx_string** %5017
  %5047 = getelementptr [12 x i8], [12 x i8]* @.str642, i32 0, i32 0
  %5048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %5047, i64 11)
  %5049 = call %nyx_string* @nyx_string_concat(%nyx_string* %5046, %nyx_string* %5048)
  store %nyx_string* %5049, %nyx_string** %5017
  %5050 = load %nyx_string*, %nyx_string** %5017
  %5051 = getelementptr [3 x i8], [3 x i8]* @.str643, i32 0, i32 0
  %5052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %5051, i64 2)
  %5053 = call %nyx_string* @nyx_string_concat(%nyx_string* %5050, %nyx_string* %5052)
  store %nyx_string* %5053, %nyx_string** %5017
  %5054 = load %nyx_string*, %nyx_string** %5017
  ret %nyx_string* %5054
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
  %5055 = load %nyx_string*, %nyx_string** %path.ptr
  %5056 = getelementptr [4 x i8], [4 x i8]* @.str644, i32 0, i32 0
  %5057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %5056, i64 3)
  %5058 = call %nyx_string* @nyx_string_concat(%nyx_string* %5055, %nyx_string* %5057)
  %5059 = alloca %nyx_string*
  store %nyx_string* %5058, %nyx_string** %5059
  %5060 = load %nyx_string*, %nyx_string** %path.ptr
  %5061 = getelementptr [5 x i8], [5 x i8]* @.str645, i32 0, i32 0
  %5062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %5061, i64 4)
  %5063 = call i1 @nyx_string_starts_with(%nyx_string* %5060, %nyx_string* %5062)
  br i1 %5063, label %then827, label %else828
then827:
  %5064 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5065 = getelementptr [2 x i8], [2 x i8]* @.str646, i32 0, i32 0
  %5066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %5065, i64 1)
  %5067 = call %nyx_string* @nyx_string_concat(%nyx_string* %5064, %nyx_string* %5066)
  %5068 = load %nyx_string*, %nyx_string** %path.ptr
  %5069 = load %nyx_string*, %nyx_string** %path.ptr
  %5070 = call i64 @nyx_string_byte_length(%nyx_string* %5069)
  %5071 = call %nyx_string* @nyx_string_substring(%nyx_string* %5068, i64 4, i64 %5070)
  %5072 = call %nyx_string* @nyx_string_concat(%nyx_string* %5067, %nyx_string* %5071)
  %5073 = getelementptr [4 x i8], [4 x i8]* @.str647, i32 0, i32 0
  %5074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %5073, i64 3)
  %5075 = call %nyx_string* @nyx_string_concat(%nyx_string* %5072, %nyx_string* %5074)
  store %nyx_string* %5075, %nyx_string** %5059
  br label %merge829
else828:
  br label %merge829
merge829:
  %5076 = load i8*, i8** %vistos.ptr
  %5077 = load %nyx_string*, %nyx_string** %5059
  %5078 = call i8* @nyx_string_to_cstr(%nyx_string* %5077)
  %5079 = call i1 @nyx_map_contains_str(i8* %5076, i8* %5078)
  br i1 %5079, label %then830, label %else831
then830:
  ret i64 0
else831:
  br label %merge832
merge832:
  %5080 = load i8*, i8** %vistos.ptr
  %5081 = load %nyx_string*, %nyx_string** %5059
  %5082 = call i8* @nyx_string_to_cstr(%nyx_string* %5081)
  call void @nyx_map_insert_int(i8* %5080, i8* %5082, i64 1)
  %5083 = load i8*, i8** %imports_de.ptr
  %5084 = load %nyx_string*, %nyx_string** %5059
  %5085 = call i8* @nyx_string_to_cstr(%nyx_string* %5084)
  %5086 = call i1 @nyx_map_contains_str(i8* %5083, i8* %5085)
  %5087 = xor i1 %5086, true
  br i1 %5087, label %then833, label %else834
then833:
  %5088 = call { i64, i8* }* @nyx_array_new_ptr()
  %5089 = alloca { i64, i8* }*
  store { i64, i8* }* %5088, { i64, i8* }** %5089
  %5090 = load %nyx_string*, %nyx_string** %5059
  %5091 = call i8* @nyx_string_to_cstr(%nyx_string* %5090)
  %5092 = call i1 @nyx_file_exists(i8* %5091)
  br i1 %5092, label %then836, label %else837
then836:
  %5093 = load %nyx_string*, %nyx_string** %5059
  %5094 = call i8* @nyx_string_to_cstr(%nyx_string* %5093)
  %5095 = call %nyx_string* @nyx_read_file(i8* %5094)
  %5096 = getelementptr [2 x i8], [2 x i8]* @.str648, i32 0, i32 0
  %5097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %5096, i64 1)
  %5098 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5095, %nyx_string* %5097)
  %5099 = alloca { i64, i8* }*
  store { i64, i8* }* %5098, { i64, i8* }** %5099
  %5100 = alloca i64
  store i64 0, i64* %5100
  %5101 = getelementptr [8 x i8], [8 x i8]* @.str649, i32 0, i32 0
  %5102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %5101, i64 7)
  %5103 = alloca %nyx_string*
  store %nyx_string* %5102, %nyx_string** %5103
  %5104 = getelementptr [2 x i8], [2 x i8]* @.str650, i32 0, i32 0
  %5105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %5104, i64 1)
  %5106 = alloca %nyx_string*
  store %nyx_string* %5105, %nyx_string** %5106
  %5107 = call i8* @llvm.stacksave()
  br label %while_cond839
while_cond839:
  %5108 = load i64, i64* %5100
  %5109 = load { i64, i8* }*, { i64, i8* }** %5099
  %5110 = call i64 @nyx_array_length({ i64, i8* }* %5109)
  %5111 = icmp slt i64 %5108, %5110
  br i1 %5111, label %while_body840, label %while_end841
while_body840:
  call void @llvm.stackrestore(i8* %5107)
  %5112 = load { i64, i8* }*, { i64, i8* }** %5099
  %5113 = load i64, i64* %5100
  %5114 = call i64 @nyx_array_get_checked({ i64, i8* }* %5112, i64 %5113, i64 2)
  %5115 = inttoptr i64 %5114 to %nyx_string*
  %5116 = alloca %nyx_string*
  store %nyx_string* %5115, %nyx_string** %5116
  %5117 = load %nyx_string*, %nyx_string** %5116
  %5118 = call %nyx_string* @nyx_string_trim(%nyx_string* %5117)
  %5119 = alloca %nyx_string*
  store %nyx_string* %5118, %nyx_string** %5119
  %5120 = load %nyx_string*, %nyx_string** %5119
  %5121 = load %nyx_string*, %nyx_string** %5103
  %5122 = call i1 @nyx_string_starts_with(%nyx_string* %5120, %nyx_string* %5121)
  br i1 %5122, label %then842, label %else843
then842:
  %5123 = load %nyx_string*, %nyx_string** %5119
  %5124 = load %nyx_string*, %nyx_string** %5106
  %5125 = call i64 @nyx_string_index_of(%nyx_string* %5123, %nyx_string* %5124)
  %5126 = alloca i64
  store i64 %5125, i64* %5126
  %5127 = load i64, i64* %5126
  %5128 = icmp sge i64 %5127, 0
  br i1 %5128, label %then845, label %else846
then845:
  %5129 = load %nyx_string*, %nyx_string** %5119
  %5130 = load i64, i64* %5126
  %5131 = add i64 %5130, 1
  %5132 = load %nyx_string*, %nyx_string** %5119
  %5133 = call i64 @nyx_string_byte_length(%nyx_string* %5132)
  %5134 = call %nyx_string* @nyx_string_substring(%nyx_string* %5129, i64 %5131, i64 %5133)
  %5135 = alloca %nyx_string*
  store %nyx_string* %5134, %nyx_string** %5135
  %5136 = load %nyx_string*, %nyx_string** %5135
  %5137 = load %nyx_string*, %nyx_string** %5106
  %5138 = call i64 @nyx_string_index_of(%nyx_string* %5136, %nyx_string* %5137)
  %5139 = alloca i64
  store i64 %5138, i64* %5139
  %5140 = load i64, i64* %5139
  %5141 = icmp sgt i64 %5140, 0
  br i1 %5141, label %then848, label %else849
then848:
  %5142 = load { i64, i8* }*, { i64, i8* }** %5089
  %5143 = load %nyx_string*, %nyx_string** %5135
  %5144 = load i64, i64* %5139
  %5145 = call %nyx_string* @nyx_string_substring(%nyx_string* %5143, i64 0, i64 %5144)
  %5146 = ptrtoint %nyx_string* %5145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5142, i64 %5146, i64 2)
  br label %merge850
else849:
  br label %merge850
merge850:
  br label %merge847
else846:
  br label %merge847
merge847:
  br label %merge844
else843:
  br label %merge844
merge844:
  %5147 = load i64, i64* %5100
  %5148 = add i64 %5147, 1
  store i64 %5148, i64* %5100
  br label %while_cond839
while_end841:
  br label %merge838
else837:
  %5149 = load { i64, i8* }*, { i64, i8* }** %5089
  %5150 = getelementptr [1 x i8], [1 x i8]* @.str651, i32 0, i32 0
  %5151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %5150, i64 0)
  %5152 = ptrtoint %nyx_string* %5151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5149, i64 %5152, i64 2)
  br label %merge838
merge838:
  %5153 = load i8*, i8** %imports_de.ptr
  %5154 = load %nyx_string*, %nyx_string** %5059
  %5155 = load { i64, i8* }*, { i64, i8* }** %5089
  %5156 = call i8* @nyx_string_to_cstr(%nyx_string* %5154)
  %5157 = ptrtoint { i64, i8* }* %5155 to i64
  call void @nyx_map_insert_int(i8* %5153, i8* %5156, i64 %5157)
  br label %merge835
else834:
  br label %merge835
merge835:
  %5158 = load i8*, i8** %imports_de.ptr
  %5159 = load %nyx_string*, %nyx_string** %5059
  %5160 = call i8* @nyx_string_to_cstr(%nyx_string* %5159)
  %5161 = call i64 @nyx_map_get_int(i8* %5158, i8* %5160)
  %5162 = inttoptr i64 %5161 to { i64, i8* }*
  %5163 = alloca { i64, i8* }*
  store { i64, i8* }* %5162, { i64, i8* }** %5163
  %5164 = load { i64, i8* }*, { i64, i8* }** %5163
  %5165 = call i64 @nyx_array_length({ i64, i8* }* %5164)
  %5166 = icmp eq i64 %5165, 1
  br i1 %5166, label %then851, label %else852
then851:
  %5167 = load { i64, i8* }*, { i64, i8* }** %5163
  %5168 = call i64 @nyx_array_get_checked({ i64, i8* }* %5167, i64 0, i64 2)
  %5169 = inttoptr i64 %5168 to %nyx_string*
  %5170 = alloca %nyx_string*
  store %nyx_string* %5169, %nyx_string** %5170
  %5171 = load %nyx_string*, %nyx_string** %5170
  %5172 = getelementptr [1 x i8], [1 x i8]* @.str652, i32 0, i32 0
  %5173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %5172, i64 0)
  %5174 = call i1 @nyx_string_equals(%nyx_string* %5171, %nyx_string* %5173)
  br i1 %5174, label %then854, label %else855
then854:
  ret i64 0
else855:
  br label %merge856
merge856:
  br label %merge853
else852:
  br label %merge853
merge853:
  %5175 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %5176 = load %nyx_string*, %nyx_string** %5059
  %5177 = ptrtoint %nyx_string* %5176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5175, i64 %5177, i64 2)
  %5178 = alloca i64
  store i64 0, i64* %5178
  %5179 = call i8* @llvm.stacksave()
  br label %while_cond857
while_cond857:
  %5180 = load i64, i64* %5178
  %5181 = load { i64, i8* }*, { i64, i8* }** %5163
  %5182 = call i64 @nyx_array_length({ i64, i8* }* %5181)
  %5183 = icmp slt i64 %5180, %5182
  br i1 %5183, label %while_body858, label %while_end859
while_body858:
  call void @llvm.stackrestore(i8* %5179)
  %5184 = load { i64, i8* }*, { i64, i8* }** %5163
  %5185 = load i64, i64* %5178
  %5186 = call i64 @nyx_array_get_checked({ i64, i8* }* %5184, i64 %5185, i64 2)
  %5187 = inttoptr i64 %5186 to %nyx_string*
  %5188 = alloca %nyx_string*
  store %nyx_string* %5187, %nyx_string** %5188
  %5189 = load %nyx_string*, %nyx_string** %5188
  %5190 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5191 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %5192 = load i8*, i8** %vistos.ptr
  %5193 = load i8*, i8** %imports_de.ptr
  %5194 = call i64 @lib_cierre(%nyx_string* %5189, %nyx_string* %5190, { i64, i8* }* %5191, i8* %5192, i8* %5193)
  %5195 = load i64, i64* %5178
  %5196 = add i64 %5195, 1
  store i64 %5196, i64* %5178
  br label %while_cond857
while_end859:
  ret i64 0
}

define internal %nyx_string* @hash_archivo(
%nyx_string* %f.param, i8* %hashes.param) {
  %f.ptr = alloca %nyx_string*
  store %nyx_string* %f.param, %nyx_string** %f.ptr
  %hashes.ptr = alloca i8*
  store i8* %hashes.param, i8** %hashes.ptr
  %5197 = load i8*, i8** %hashes.ptr
  %5198 = load %nyx_string*, %nyx_string** %f.ptr
  %5199 = call i8* @nyx_string_to_cstr(%nyx_string* %5198)
  %5200 = call i1 @nyx_map_contains_str(i8* %5197, i8* %5199)
  br i1 %5200, label %then860, label %else861
then860:
  %5201 = load i8*, i8** %hashes.ptr
  %5202 = load %nyx_string*, %nyx_string** %f.ptr
  %5203 = call i8* @nyx_string_to_cstr(%nyx_string* %5202)
  %5204 = call i8* @nyx_map_get_str(i8* %5201, i8* %5203)
  %5205 = call %nyx_string* @nyx_string_from_cstr(i8* %5204)
  %5206 = alloca %nyx_string*
  store %nyx_string* %5205, %nyx_string** %5206
  %5207 = load %nyx_string*, %nyx_string** %5206
  ret %nyx_string* %5207
else861:
  br label %merge862
merge862:
  %5208 = load %nyx_string*, %nyx_string** %f.ptr
  %5209 = call i8* @nyx_string_to_cstr(%nyx_string* %5208)
  %5210 = call %nyx_string* @nyx_read_file(i8* %5209)
  %5211 = call %nyx_string* @nyx_sha256(%nyx_string* %5210)
  %5212 = alloca %nyx_string*
  store %nyx_string* %5211, %nyx_string** %5212
  %5213 = load i8*, i8** %hashes.ptr
  %5214 = load %nyx_string*, %nyx_string** %f.ptr
  %5215 = load %nyx_string*, %nyx_string** %5212
  %5216 = call i8* @nyx_string_to_cstr(%nyx_string* %5214)
  %5217 = call i8* @nyx_string_to_cstr(%nyx_string* %5215)
  call void @nyx_map_insert_str(i8* %5213, i8* %5216, i8* %5217)
  %5218 = load %nyx_string*, %nyx_string** %5212
  ret %nyx_string* %5218
}

define internal i1 @es_ident_c(
i64 %c.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %5219 = alloca i1
  store i1 true, i1* %5219
  %5220 = alloca i1
  store i1 true, i1* %5220
  %5221 = alloca i1
  store i1 true, i1* %5221
  %5222 = alloca i1
  store i1 false, i1* %5222
  %5223 = load i64, i64* %c.ptr
  %5224 = getelementptr [1 x i8], [1 x i8]* @.str653, i32 0, i32 0
  %5225 = load i8, i8* %5224
  %5226 = zext i8 %5225 to i64
  %5227 = icmp sge i64 %5223, %5226
  br i1 %5227, label %sc_and_rhs863, label %sc_and_end864
sc_and_rhs863:
  %5228 = load i64, i64* %c.ptr
  %5229 = getelementptr [1 x i8], [1 x i8]* @.str654, i32 0, i32 0
  %5230 = load i8, i8* %5229
  %5231 = zext i8 %5230 to i64
  %5232 = icmp sle i64 %5228, %5231
  store i1 %5232, i1* %5222
  br label %sc_and_end864
sc_and_end864:
  %5233 = load i1, i1* %5222
  br i1 %5233, label %sc_or_end866, label %sc_or_rhs865
sc_or_rhs865:
  %5234 = alloca i1
  store i1 false, i1* %5234
  %5235 = load i64, i64* %c.ptr
  %5236 = getelementptr [1 x i8], [1 x i8]* @.str655, i32 0, i32 0
  %5237 = load i8, i8* %5236
  %5238 = zext i8 %5237 to i64
  %5239 = icmp sge i64 %5235, %5238
  br i1 %5239, label %sc_and_rhs867, label %sc_and_end868
sc_and_rhs867:
  %5240 = load i64, i64* %c.ptr
  %5241 = getelementptr [1 x i8], [1 x i8]* @.str656, i32 0, i32 0
  %5242 = load i8, i8* %5241
  %5243 = zext i8 %5242 to i64
  %5244 = icmp sle i64 %5240, %5243
  store i1 %5244, i1* %5234
  br label %sc_and_end868
sc_and_end868:
  %5245 = load i1, i1* %5234
  store i1 %5245, i1* %5221
  br label %sc_or_end866
sc_or_end866:
  %5246 = load i1, i1* %5221
  br i1 %5246, label %sc_or_end870, label %sc_or_rhs869
sc_or_rhs869:
  %5247 = alloca i1
  store i1 false, i1* %5247
  %5248 = load i64, i64* %c.ptr
  %5249 = getelementptr [1 x i8], [1 x i8]* @.str657, i32 0, i32 0
  %5250 = load i8, i8* %5249
  %5251 = zext i8 %5250 to i64
  %5252 = icmp sge i64 %5248, %5251
  br i1 %5252, label %sc_and_rhs871, label %sc_and_end872
sc_and_rhs871:
  %5253 = load i64, i64* %c.ptr
  %5254 = getelementptr [1 x i8], [1 x i8]* @.str658, i32 0, i32 0
  %5255 = load i8, i8* %5254
  %5256 = zext i8 %5255 to i64
  %5257 = icmp sle i64 %5253, %5256
  store i1 %5257, i1* %5247
  br label %sc_and_end872
sc_and_end872:
  %5258 = load i1, i1* %5247
  store i1 %5258, i1* %5220
  br label %sc_or_end870
sc_or_end870:
  %5259 = load i1, i1* %5220
  br i1 %5259, label %sc_or_end874, label %sc_or_rhs873
sc_or_rhs873:
  %5260 = load i64, i64* %c.ptr
  %5261 = getelementptr [1 x i8], [1 x i8]* @.str659, i32 0, i32 0
  %5262 = load i8, i8* %5261
  %5263 = zext i8 %5262 to i64
  %5264 = icmp eq i64 %5260, %5263
  store i1 %5264, i1* %5219
  br label %sc_or_end874
sc_or_end874:
  %5265 = load i1, i1* %5219
  ret i1 %5265
}

define internal i64 @fin_de_literal(
%nyx_string* %src.param, i64 %i.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %5266 = load %nyx_string*, %nyx_string** %src.ptr
  %5267 = call i64 @nyx_string_byte_length(%nyx_string* %5266)
  %5268 = alloca i64
  store i64 %5267, i64* %5268
  %5269 = load %nyx_string*, %nyx_string** %src.ptr
  %5270 = load i64, i64* %i.ptr
  %5271 = call i8 @nyx_string_char_at(%nyx_string* %5269, i64 %5270)
  %5272 = zext i8 %5271 to i64
  %5273 = alloca i64
  store i64 %5272, i64* %5273
  %5274 = alloca i1
  store i1 false, i1* %5274
  %5275 = load i64, i64* %5273
  %5276 = getelementptr [1 x i8], [1 x i8]* @.str660, i32 0, i32 0
  %5277 = load i8, i8* %5276
  %5278 = zext i8 %5277 to i64
  %5279 = icmp eq i64 %5275, %5278
  br i1 %5279, label %sc_and_rhs875, label %sc_and_end876
sc_and_rhs875:
  %5280 = load i64, i64* %i.ptr
  %5281 = add i64 %5280, 1
  %5282 = load i64, i64* %5268
  %5283 = icmp slt i64 %5281, %5282
  store i1 %5283, i1* %5274
  br label %sc_and_end876
sc_and_end876:
  %5284 = load i1, i1* %5274
  br i1 %5284, label %then877, label %else878
then877:
  %5285 = load %nyx_string*, %nyx_string** %src.ptr
  %5286 = load i64, i64* %i.ptr
  %5287 = add i64 %5286, 1
  %5288 = call i8 @nyx_string_char_at(%nyx_string* %5285, i64 %5287)
  %5289 = zext i8 %5288 to i64
  %5290 = alloca i64
  store i64 %5289, i64* %5290
  %5291 = load i64, i64* %5290
  %5292 = getelementptr [1 x i8], [1 x i8]* @.str661, i32 0, i32 0
  %5293 = load i8, i8* %5292
  %5294 = zext i8 %5293 to i64
  %5295 = icmp eq i64 %5291, %5294
  br i1 %5295, label %then880, label %else881
then880:
  %5296 = load i64, i64* %i.ptr
  %5297 = icmp sgt i64 %5296, 0
  br i1 %5297, label %then883, label %else884
then883:
  %5298 = load %nyx_string*, %nyx_string** %src.ptr
  %5299 = load i64, i64* %i.ptr
  %5300 = sub i64 %5299, 1
  %5301 = call i8 @nyx_string_char_at(%nyx_string* %5298, i64 %5300)
  %5302 = zext i8 %5301 to i64
  %5303 = alloca i64
  store i64 %5302, i64* %5303
  %5304 = load i64, i64* %5303
  %5305 = call i1 @es_ident_c(i64 %5304)
  br i1 %5305, label %then886, label %else887
then886:
  %5306 = sub i64 0, 1
  ret i64 %5306
else887:
  br label %merge888
merge888:
  br label %merge885
else884:
  br label %merge885
merge885:
  %5307 = load i64, i64* %i.ptr
  %5308 = add i64 %5307, 2
  %5309 = alloca i64
  store i64 %5308, i64* %5309
  %5310 = call i8* @llvm.stacksave()
  br label %while_cond889
while_cond889:
  %5311 = load i64, i64* %5309
  %5312 = load i64, i64* %5268
  %5313 = icmp slt i64 %5311, %5312
  br i1 %5313, label %while_body890, label %while_end891
while_body890:
  call void @llvm.stackrestore(i8* %5310)
  %5314 = load %nyx_string*, %nyx_string** %src.ptr
  %5315 = load i64, i64* %5309
  %5316 = call i8 @nyx_string_char_at(%nyx_string* %5314, i64 %5315)
  %5317 = zext i8 %5316 to i64
  %5318 = alloca i64
  store i64 %5317, i64* %5318
  %5319 = load i64, i64* %5318
  %5320 = getelementptr [1 x i8], [1 x i8]* @.str662, i32 0, i32 0
  %5321 = load i8, i8* %5320
  %5322 = zext i8 %5321 to i64
  %5323 = icmp eq i64 %5319, %5322
  br i1 %5323, label %then892, label %else893
then892:
  %5324 = load i64, i64* %5309
  %5325 = add i64 %5324, 1
  ret i64 %5325
else893:
  br label %merge894
merge894:
  %5326 = load i64, i64* %5309
  %5327 = add i64 %5326, 1
  store i64 %5327, i64* %5309
  br label %while_cond889
while_end891:
  %5328 = load i64, i64* %5268
  ret i64 %5328
else881:
  br label %merge882
merge882:
  br label %merge879
else878:
  br label %merge879
merge879:
  %5329 = load i64, i64* %5273
  %5330 = getelementptr [1 x i8], [1 x i8]* @.str663, i32 0, i32 0
  %5331 = load i8, i8* %5330
  %5332 = zext i8 %5331 to i64
  %5333 = icmp eq i64 %5329, %5332
  br i1 %5333, label %then895, label %else896
then895:
  %5334 = load i64, i64* %i.ptr
  %5335 = add i64 %5334, 2
  %5336 = load i64, i64* %5268
  %5337 = icmp slt i64 %5335, %5336
  br i1 %5337, label %then898, label %else899
then898:
  %5338 = load %nyx_string*, %nyx_string** %src.ptr
  %5339 = load i64, i64* %i.ptr
  %5340 = add i64 %5339, 1
  %5341 = call i8 @nyx_string_char_at(%nyx_string* %5338, i64 %5340)
  %5342 = zext i8 %5341 to i64
  %5343 = alloca i64
  store i64 %5342, i64* %5343
  %5344 = load %nyx_string*, %nyx_string** %src.ptr
  %5345 = load i64, i64* %i.ptr
  %5346 = add i64 %5345, 2
  %5347 = call i8 @nyx_string_char_at(%nyx_string* %5344, i64 %5346)
  %5348 = zext i8 %5347 to i64
  %5349 = alloca i64
  store i64 %5348, i64* %5349
  %5350 = alloca i1
  store i1 false, i1* %5350
  %5351 = load i64, i64* %5343
  %5352 = getelementptr [1 x i8], [1 x i8]* @.str664, i32 0, i32 0
  %5353 = load i8, i8* %5352
  %5354 = zext i8 %5353 to i64
  %5355 = icmp eq i64 %5351, %5354
  br i1 %5355, label %sc_and_rhs901, label %sc_and_end902
sc_and_rhs901:
  %5356 = load i64, i64* %5349
  %5357 = getelementptr [1 x i8], [1 x i8]* @.str665, i32 0, i32 0
  %5358 = load i8, i8* %5357
  %5359 = zext i8 %5358 to i64
  %5360 = icmp eq i64 %5356, %5359
  store i1 %5360, i1* %5350
  br label %sc_and_end902
sc_and_end902:
  %5361 = load i1, i1* %5350
  br i1 %5361, label %then903, label %else904
then903:
  %5362 = load i64, i64* %i.ptr
  %5363 = add i64 %5362, 3
  %5364 = alloca i64
  store i64 %5363, i64* %5364
  %5365 = call i8* @llvm.stacksave()
  br label %while_cond906
while_cond906:
  %5366 = load i64, i64* %5364
  %5367 = add i64 %5366, 2
  %5368 = load i64, i64* %5268
  %5369 = icmp slt i64 %5367, %5368
  br i1 %5369, label %while_body907, label %while_end908
while_body907:
  call void @llvm.stackrestore(i8* %5365)
  %5370 = load %nyx_string*, %nyx_string** %src.ptr
  %5371 = load i64, i64* %5364
  %5372 = call i8 @nyx_string_char_at(%nyx_string* %5370, i64 %5371)
  %5373 = zext i8 %5372 to i64
  %5374 = alloca i64
  store i64 %5373, i64* %5374
  %5375 = load %nyx_string*, %nyx_string** %src.ptr
  %5376 = load i64, i64* %5364
  %5377 = add i64 %5376, 1
  %5378 = call i8 @nyx_string_char_at(%nyx_string* %5375, i64 %5377)
  %5379 = zext i8 %5378 to i64
  %5380 = alloca i64
  store i64 %5379, i64* %5380
  %5381 = load %nyx_string*, %nyx_string** %src.ptr
  %5382 = load i64, i64* %5364
  %5383 = add i64 %5382, 2
  %5384 = call i8 @nyx_string_char_at(%nyx_string* %5381, i64 %5383)
  %5385 = zext i8 %5384 to i64
  %5386 = alloca i64
  store i64 %5385, i64* %5386
  %5387 = alloca i1
  store i1 false, i1* %5387
  %5388 = alloca i1
  store i1 false, i1* %5388
  %5389 = load i64, i64* %5374
  %5390 = getelementptr [1 x i8], [1 x i8]* @.str666, i32 0, i32 0
  %5391 = load i8, i8* %5390
  %5392 = zext i8 %5391 to i64
  %5393 = icmp eq i64 %5389, %5392
  br i1 %5393, label %sc_and_rhs909, label %sc_and_end910
sc_and_rhs909:
  %5394 = load i64, i64* %5380
  %5395 = getelementptr [1 x i8], [1 x i8]* @.str667, i32 0, i32 0
  %5396 = load i8, i8* %5395
  %5397 = zext i8 %5396 to i64
  %5398 = icmp eq i64 %5394, %5397
  store i1 %5398, i1* %5388
  br label %sc_and_end910
sc_and_end910:
  %5399 = load i1, i1* %5388
  br i1 %5399, label %sc_and_rhs911, label %sc_and_end912
sc_and_rhs911:
  %5400 = load i64, i64* %5386
  %5401 = getelementptr [1 x i8], [1 x i8]* @.str668, i32 0, i32 0
  %5402 = load i8, i8* %5401
  %5403 = zext i8 %5402 to i64
  %5404 = icmp eq i64 %5400, %5403
  store i1 %5404, i1* %5387
  br label %sc_and_end912
sc_and_end912:
  %5405 = load i1, i1* %5387
  br i1 %5405, label %then913, label %else914
then913:
  %5406 = load i64, i64* %5364
  %5407 = add i64 %5406, 3
  ret i64 %5407
else914:
  br label %merge915
merge915:
  %5408 = load i64, i64* %5364
  %5409 = add i64 %5408, 1
  store i64 %5409, i64* %5364
  br label %while_cond906
while_end908:
  %5410 = load i64, i64* %5268
  ret i64 %5410
else904:
  br label %merge905
merge905:
  br label %merge900
else899:
  br label %merge900
merge900:
  %5411 = load i64, i64* %i.ptr
  %5412 = add i64 %5411, 1
  %5413 = alloca i64
  store i64 %5412, i64* %5413
  %5414 = call i8* @llvm.stacksave()
  br label %while_cond916
while_cond916:
  %5415 = load i64, i64* %5413
  %5416 = load i64, i64* %5268
  %5417 = icmp slt i64 %5415, %5416
  br i1 %5417, label %while_body917, label %while_end918
while_body917:
  call void @llvm.stackrestore(i8* %5414)
  %5418 = load %nyx_string*, %nyx_string** %src.ptr
  %5419 = load i64, i64* %5413
  %5420 = call i8 @nyx_string_char_at(%nyx_string* %5418, i64 %5419)
  %5421 = zext i8 %5420 to i64
  %5422 = alloca i64
  store i64 %5421, i64* %5422
  %5423 = load i64, i64* %5422
  %5424 = getelementptr [1 x i8], [1 x i8]* @.str669, i32 0, i32 0
  %5425 = load i8, i8* %5424
  %5426 = zext i8 %5425 to i64
  %5427 = icmp eq i64 %5423, %5426
  br i1 %5427, label %then919, label %else920
then919:
  %5428 = load i64, i64* %5413
  %5429 = add i64 %5428, 2
  store i64 %5429, i64* %5413
  br label %merge921
else920:
  %5430 = load i64, i64* %5422
  %5431 = getelementptr [1 x i8], [1 x i8]* @.str670, i32 0, i32 0
  %5432 = load i8, i8* %5431
  %5433 = zext i8 %5432 to i64
  %5434 = icmp eq i64 %5430, %5433
  br i1 %5434, label %then922, label %else923
then922:
  %5435 = load i64, i64* %5413
  %5436 = add i64 %5435, 1
  ret i64 %5436
else923:
  %5437 = load i64, i64* %5413
  %5438 = add i64 %5437, 1
  store i64 %5438, i64* %5413
  br label %merge924
merge924:
  br label %merge921
merge921:
  br label %while_cond916
while_end918:
  %5439 = load i64, i64* %5268
  ret i64 %5439
else896:
  br label %merge897
merge897:
  %5440 = load i64, i64* %5273
  %5441 = getelementptr [1 x i8], [1 x i8]* @.str671, i32 0, i32 0
  %5442 = load i8, i8* %5441
  %5443 = zext i8 %5442 to i64
  %5444 = icmp eq i64 %5440, %5443
  br i1 %5444, label %then925, label %else926
then925:
  %5445 = load i64, i64* %i.ptr
  %5446 = add i64 %5445, 1
  %5447 = alloca i64
  store i64 %5446, i64* %5447
  %5448 = call i8* @llvm.stacksave()
  br label %while_cond928
while_cond928:
  %5449 = alloca i1
  store i1 false, i1* %5449
  %5450 = load i64, i64* %5447
  %5451 = load i64, i64* %5268
  %5452 = icmp slt i64 %5450, %5451
  br i1 %5452, label %sc_and_rhs931, label %sc_and_end932
sc_and_rhs931:
  %5453 = load i64, i64* %5447
  %5454 = load i64, i64* %i.ptr
  %5455 = add i64 %5454, 12
  %5456 = icmp slt i64 %5453, %5455
  store i1 %5456, i1* %5449
  br label %sc_and_end932
sc_and_end932:
  %5457 = load i1, i1* %5449
  br i1 %5457, label %while_body929, label %while_end930
while_body929:
  call void @llvm.stackrestore(i8* %5448)
  %5458 = load %nyx_string*, %nyx_string** %src.ptr
  %5459 = load i64, i64* %5447
  %5460 = call i8 @nyx_string_char_at(%nyx_string* %5458, i64 %5459)
  %5461 = zext i8 %5460 to i64
  %5462 = alloca i64
  store i64 %5461, i64* %5462
  %5463 = load i64, i64* %5462
  %5464 = getelementptr [1 x i8], [1 x i8]* @.str672, i32 0, i32 0
  %5465 = load i8, i8* %5464
  %5466 = zext i8 %5465 to i64
  %5467 = icmp eq i64 %5463, %5466
  br i1 %5467, label %then933, label %else934
then933:
  %5468 = load i64, i64* %5447
  %5469 = add i64 %5468, 2
  store i64 %5469, i64* %5447
  br label %merge935
else934:
  %5470 = load i64, i64* %5462
  %5471 = getelementptr [1 x i8], [1 x i8]* @.str673, i32 0, i32 0
  %5472 = load i8, i8* %5471
  %5473 = zext i8 %5472 to i64
  %5474 = icmp eq i64 %5470, %5473
  br i1 %5474, label %then936, label %else937
then936:
  %5475 = load i64, i64* %5447
  %5476 = add i64 %5475, 1
  ret i64 %5476
else937:
  %5477 = load i64, i64* %5447
  %5478 = add i64 %5477, 1
  store i64 %5478, i64* %5447
  br label %merge938
merge938:
  br label %merge935
merge935:
  br label %while_cond928
while_end930:
  %5479 = load i64, i64* %5447
  ret i64 %5479
else926:
  br label %merge927
merge927:
  %5480 = sub i64 0, 1
  ret i64 %5480
}

define internal %nyx_string* @interfaz_de(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %5481 = call i8* @nyx_sb_new(i64 1024)
  %5482 = alloca i8*
  store i8* %5481, i8** %5482
  %5483 = load %nyx_string*, %nyx_string** %src.ptr
  %5484 = call i64 @nyx_string_byte_length(%nyx_string* %5483)
  %5485 = alloca i64
  store i64 %5484, i64* %5485
  %5486 = alloca i64
  store i64 0, i64* %5486
  %5487 = alloca i64
  store i64 0, i64* %5487
  %5488 = alloca i64
  store i64 0, i64* %5488
  %5489 = alloca i1
  store i1 0, i1* %5489
  %5490 = alloca i1
  store i1 0, i1* %5490
  %5491 = alloca i64
  store i64 0, i64* %5491
  %5492 = alloca i1
  store i1 0, i1* %5492
  %5493 = alloca i1
  store i1 0, i1* %5493
  %5494 = getelementptr [2 x i8], [2 x i8]* @.str674, i32 0, i32 0
  %5495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %5494, i64 1)
  %5496 = alloca %nyx_string*
  store %nyx_string* %5495, %nyx_string** %5496
  %5497 = getelementptr [3 x i8], [3 x i8]* @.str675, i32 0, i32 0
  %5498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %5497, i64 2)
  %5499 = alloca %nyx_string*
  store %nyx_string* %5498, %nyx_string** %5499
  %5500 = call i8* @llvm.stacksave()
  br label %while_cond939
while_cond939:
  %5501 = load i64, i64* %5486
  %5502 = load i64, i64* %5485
  %5503 = icmp slt i64 %5501, %5502
  br i1 %5503, label %while_body940, label %while_end941
while_body940:
  call void @llvm.stackrestore(i8* %5500)
  %5504 = load %nyx_string*, %nyx_string** %src.ptr
  %5505 = load i64, i64* %5486
  %5506 = call i8 @nyx_string_char_at(%nyx_string* %5504, i64 %5505)
  %5507 = zext i8 %5506 to i64
  %5508 = alloca i64
  store i64 %5507, i64* %5508
  %5509 = alloca i64
  store i64 0, i64* %5509
  %5510 = load i64, i64* %5486
  %5511 = add i64 %5510, 1
  %5512 = load i64, i64* %5485
  %5513 = icmp slt i64 %5511, %5512
  br i1 %5513, label %then942, label %else943
then942:
  %5514 = load %nyx_string*, %nyx_string** %src.ptr
  %5515 = load i64, i64* %5486
  %5516 = add i64 %5515, 1
  %5517 = call i8 @nyx_string_char_at(%nyx_string* %5514, i64 %5516)
  %5518 = zext i8 %5517 to i64
  %5519 = alloca i64
  store i64 %5518, i64* %5519
  %5520 = load i64, i64* %5519
  store i64 %5520, i64* %5509
  br label %merge944
else943:
  br label %merge944
merge944:
  %5521 = alloca i1
  store i1 false, i1* %5521
  %5522 = load i64, i64* %5508
  %5523 = getelementptr [1 x i8], [1 x i8]* @.str676, i32 0, i32 0
  %5524 = load i8, i8* %5523
  %5525 = zext i8 %5524 to i64
  %5526 = icmp eq i64 %5522, %5525
  br i1 %5526, label %sc_and_rhs945, label %sc_and_end946
sc_and_rhs945:
  %5527 = load i64, i64* %5509
  %5528 = getelementptr [1 x i8], [1 x i8]* @.str677, i32 0, i32 0
  %5529 = load i8, i8* %5528
  %5530 = zext i8 %5529 to i64
  %5531 = icmp eq i64 %5527, %5530
  store i1 %5531, i1* %5521
  br label %sc_and_end946
sc_and_end946:
  %5532 = load i1, i1* %5521
  br i1 %5532, label %then947, label %else948
then947:
  %5533 = alloca i1
  store i1 0, i1* %5533
  %5534 = call i8* @llvm.stacksave()
  br label %while_cond950
while_cond950:
  %5535 = alloca i1
  store i1 false, i1* %5535
  %5536 = load i64, i64* %5486
  %5537 = load i64, i64* %5485
  %5538 = icmp slt i64 %5536, %5537
  br i1 %5538, label %sc_and_rhs953, label %sc_and_end954
sc_and_rhs953:
  %5539 = load i1, i1* %5533
  %5540 = xor i1 %5539, true
  store i1 %5540, i1* %5535
  br label %sc_and_end954
sc_and_end954:
  %5541 = load i1, i1* %5535
  br i1 %5541, label %while_body951, label %while_end952
while_body951:
  call void @llvm.stackrestore(i8* %5534)
  %5542 = load %nyx_string*, %nyx_string** %src.ptr
  %5543 = load i64, i64* %5486
  %5544 = call i8 @nyx_string_char_at(%nyx_string* %5542, i64 %5543)
  %5545 = zext i8 %5544 to i64
  %5546 = alloca i64
  store i64 %5545, i64* %5546
  %5547 = load i64, i64* %5546
  %5548 = getelementptr [1 x i8], [1 x i8]* @.str678, i32 0, i32 0
  %5549 = load i8, i8* %5548
  %5550 = zext i8 %5549 to i64
  %5551 = icmp eq i64 %5547, %5550
  br i1 %5551, label %then955, label %else956
then955:
  store i1 1, i1* %5533
  br label %merge957
else956:
  %5552 = load i64, i64* %5486
  %5553 = add i64 %5552, 1
  store i64 %5553, i64* %5486
  br label %merge957
merge957:
  br label %while_cond950
while_end952:
  store i1 1, i1* %5492
  br label %merge949
else948:
  %5554 = alloca i1
  store i1 false, i1* %5554
  %5555 = load i64, i64* %5508
  %5556 = getelementptr [1 x i8], [1 x i8]* @.str679, i32 0, i32 0
  %5557 = load i8, i8* %5556
  %5558 = zext i8 %5557 to i64
  %5559 = icmp eq i64 %5555, %5558
  br i1 %5559, label %sc_and_rhs958, label %sc_and_end959
sc_and_rhs958:
  %5560 = load i64, i64* %5509
  %5561 = getelementptr [1 x i8], [1 x i8]* @.str680, i32 0, i32 0
  %5562 = load i8, i8* %5561
  %5563 = zext i8 %5562 to i64
  %5564 = icmp eq i64 %5560, %5563
  store i1 %5564, i1* %5554
  br label %sc_and_end959
sc_and_end959:
  %5565 = load i1, i1* %5554
  br i1 %5565, label %then960, label %else961
then960:
  %5566 = alloca i64
  store i64 1, i64* %5566
  %5567 = load i64, i64* %5486
  %5568 = add i64 %5567, 2
  store i64 %5568, i64* %5486
  %5569 = call i8* @llvm.stacksave()
  br label %while_cond963
while_cond963:
  %5570 = alloca i1
  store i1 false, i1* %5570
  %5571 = load i64, i64* %5486
  %5572 = load i64, i64* %5485
  %5573 = icmp slt i64 %5571, %5572
  br i1 %5573, label %sc_and_rhs966, label %sc_and_end967
sc_and_rhs966:
  %5574 = load i64, i64* %5566
  %5575 = icmp sgt i64 %5574, 0
  store i1 %5575, i1* %5570
  br label %sc_and_end967
sc_and_end967:
  %5576 = load i1, i1* %5570
  br i1 %5576, label %while_body964, label %while_end965
while_body964:
  call void @llvm.stackrestore(i8* %5569)
  %5577 = load %nyx_string*, %nyx_string** %src.ptr
  %5578 = load i64, i64* %5486
  %5579 = call i8 @nyx_string_char_at(%nyx_string* %5577, i64 %5578)
  %5580 = zext i8 %5579 to i64
  %5581 = alloca i64
  store i64 %5580, i64* %5581
  %5582 = alloca i64
  store i64 0, i64* %5582
  %5583 = load i64, i64* %5486
  %5584 = add i64 %5583, 1
  %5585 = load i64, i64* %5485
  %5586 = icmp slt i64 %5584, %5585
  br i1 %5586, label %then968, label %else969
then968:
  %5587 = load %nyx_string*, %nyx_string** %src.ptr
  %5588 = load i64, i64* %5486
  %5589 = add i64 %5588, 1
  %5590 = call i8 @nyx_string_char_at(%nyx_string* %5587, i64 %5589)
  %5591 = zext i8 %5590 to i64
  %5592 = alloca i64
  store i64 %5591, i64* %5592
  %5593 = load i64, i64* %5592
  store i64 %5593, i64* %5582
  br label %merge970
else969:
  br label %merge970
merge970:
  %5594 = alloca i1
  store i1 false, i1* %5594
  %5595 = load i64, i64* %5581
  %5596 = getelementptr [1 x i8], [1 x i8]* @.str681, i32 0, i32 0
  %5597 = load i8, i8* %5596
  %5598 = zext i8 %5597 to i64
  %5599 = icmp eq i64 %5595, %5598
  br i1 %5599, label %sc_and_rhs971, label %sc_and_end972
sc_and_rhs971:
  %5600 = load i64, i64* %5582
  %5601 = getelementptr [1 x i8], [1 x i8]* @.str682, i32 0, i32 0
  %5602 = load i8, i8* %5601
  %5603 = zext i8 %5602 to i64
  %5604 = icmp eq i64 %5600, %5603
  store i1 %5604, i1* %5594
  br label %sc_and_end972
sc_and_end972:
  %5605 = load i1, i1* %5594
  br i1 %5605, label %then973, label %else974
then973:
  %5606 = load i64, i64* %5566
  %5607 = add i64 %5606, 1
  store i64 %5607, i64* %5566
  %5608 = load i64, i64* %5486
  %5609 = add i64 %5608, 2
  store i64 %5609, i64* %5486
  br label %merge975
else974:
  %5610 = alloca i1
  store i1 false, i1* %5610
  %5611 = load i64, i64* %5581
  %5612 = getelementptr [1 x i8], [1 x i8]* @.str683, i32 0, i32 0
  %5613 = load i8, i8* %5612
  %5614 = zext i8 %5613 to i64
  %5615 = icmp eq i64 %5611, %5614
  br i1 %5615, label %sc_and_rhs976, label %sc_and_end977
sc_and_rhs976:
  %5616 = load i64, i64* %5582
  %5617 = getelementptr [1 x i8], [1 x i8]* @.str684, i32 0, i32 0
  %5618 = load i8, i8* %5617
  %5619 = zext i8 %5618 to i64
  %5620 = icmp eq i64 %5616, %5619
  store i1 %5620, i1* %5610
  br label %sc_and_end977
sc_and_end977:
  %5621 = load i1, i1* %5610
  br i1 %5621, label %then978, label %else979
then978:
  %5622 = load i64, i64* %5566
  %5623 = sub i64 %5622, 1
  store i64 %5623, i64* %5566
  %5624 = load i64, i64* %5486
  %5625 = add i64 %5624, 2
  store i64 %5625, i64* %5486
  br label %merge980
else979:
  %5626 = load i64, i64* %5486
  %5627 = add i64 %5626, 1
  store i64 %5627, i64* %5486
  br label %merge980
merge980:
  br label %merge975
merge975:
  br label %while_cond963
while_end965:
  store i1 1, i1* %5492
  br label %merge962
else961:
  %5628 = load %nyx_string*, %nyx_string** %src.ptr
  %5629 = load i64, i64* %5486
  %5630 = call i64 @fin_de_literal(%nyx_string* %5628, i64 %5629)
  %5631 = alloca i64
  store i64 %5630, i64* %5631
  %5632 = load i64, i64* %5631
  %5633 = icmp sgt i64 %5632, 0
  br i1 %5633, label %then981, label %else982
then981:
  %5634 = load i1, i1* %5490
  %5635 = xor i1 %5634, true
  br i1 %5635, label %then984, label %else985
then984:
  %5636 = alloca i1
  store i1 false, i1* %5636
  %5637 = load i1, i1* %5492
  br i1 %5637, label %sc_and_rhs987, label %sc_and_end988
sc_and_rhs987:
  %5638 = load i1, i1* %5493
  store i1 %5638, i1* %5636
  br label %sc_and_end988
sc_and_end988:
  %5639 = load i1, i1* %5636
  br i1 %5639, label %then989, label %else990
then989:
  %5640 = load i8*, i8** %5482
  %5641 = load %nyx_string*, %nyx_string** %5496
  call void @nyx_sb_append(i8* %5640, %nyx_string* %5641)
  br label %merge991
else990:
  br label %merge991
merge991:
  store i1 0, i1* %5492
  %5642 = load i8*, i8** %5482
  %5643 = load %nyx_string*, %nyx_string** %src.ptr
  %5644 = load i64, i64* %5486
  %5645 = load i64, i64* %5631
  %5646 = call %nyx_string* @nyx_string_substring(%nyx_string* %5643, i64 %5644, i64 %5645)
  call void @nyx_sb_append(i8* %5642, %nyx_string* %5646)
  store i1 1, i1* %5493
  br label %merge986
else985:
  br label %merge986
merge986:
  %5647 = load i64, i64* %5631
  store i64 %5647, i64* %5486
  br label %merge983
else982:
  %5648 = load i1, i1* %5490
  br i1 %5648, label %then992, label %else993
then992:
  %5649 = load i64, i64* %5508
  %5650 = getelementptr [1 x i8], [1 x i8]* @.str685, i32 0, i32 0
  %5651 = load i8, i8* %5650
  %5652 = zext i8 %5651 to i64
  %5653 = icmp eq i64 %5649, %5652
  br i1 %5653, label %then995, label %else996
then995:
  %5654 = load i64, i64* %5491
  %5655 = add i64 %5654, 1
  store i64 %5655, i64* %5491
  br label %merge997
else996:
  br label %merge997
merge997:
  %5656 = load i64, i64* %5508
  %5657 = getelementptr [1 x i8], [1 x i8]* @.str686, i32 0, i32 0
  %5658 = load i8, i8* %5657
  %5659 = zext i8 %5658 to i64
  %5660 = icmp eq i64 %5656, %5659
  br i1 %5660, label %then998, label %else999
then998:
  %5661 = load i64, i64* %5491
  %5662 = sub i64 %5661, 1
  store i64 %5662, i64* %5491
  %5663 = load i64, i64* %5491
  %5664 = icmp eq i64 %5663, 0
  br i1 %5664, label %then1001, label %else1002
then1001:
  store i1 0, i1* %5490
  %5665 = load i8*, i8** %5482
  %5666 = load %nyx_string*, %nyx_string** %5499
  call void @nyx_sb_append(i8* %5665, %nyx_string* %5666)
  br label %merge1003
else1002:
  br label %merge1003
merge1003:
  br label %merge1000
else999:
  br label %merge1000
merge1000:
  %5667 = load i64, i64* %5486
  %5668 = add i64 %5667, 1
  store i64 %5668, i64* %5486
  br label %merge994
else993:
  %5669 = alloca i1
  store i1 true, i1* %5669
  %5670 = alloca i1
  store i1 true, i1* %5670
  %5671 = alloca i1
  store i1 true, i1* %5671
  %5672 = load i64, i64* %5508
  %5673 = getelementptr [1 x i8], [1 x i8]* @.str687, i32 0, i32 0
  %5674 = load i8, i8* %5673
  %5675 = zext i8 %5674 to i64
  %5676 = icmp eq i64 %5672, %5675
  br i1 %5676, label %sc_or_end1005, label %sc_or_rhs1004
sc_or_rhs1004:
  %5677 = load i64, i64* %5508
  %5678 = getelementptr [1 x i8], [1 x i8]* @.str688, i32 0, i32 0
  %5679 = load i8, i8* %5678
  %5680 = zext i8 %5679 to i64
  %5681 = icmp eq i64 %5677, %5680
  store i1 %5681, i1* %5671
  br label %sc_or_end1005
sc_or_end1005:
  %5682 = load i1, i1* %5671
  br i1 %5682, label %sc_or_end1007, label %sc_or_rhs1006
sc_or_rhs1006:
  %5683 = load i64, i64* %5508
  %5684 = getelementptr [1 x i8], [1 x i8]* @.str689, i32 0, i32 0
  %5685 = load i8, i8* %5684
  %5686 = zext i8 %5685 to i64
  %5687 = icmp eq i64 %5683, %5686
  store i1 %5687, i1* %5670
  br label %sc_or_end1007
sc_or_end1007:
  %5688 = load i1, i1* %5670
  br i1 %5688, label %sc_or_end1009, label %sc_or_rhs1008
sc_or_rhs1008:
  %5689 = load i64, i64* %5508
  %5690 = getelementptr [1 x i8], [1 x i8]* @.str690, i32 0, i32 0
  %5691 = load i8, i8* %5690
  %5692 = zext i8 %5691 to i64
  %5693 = icmp eq i64 %5689, %5692
  store i1 %5693, i1* %5669
  br label %sc_or_end1009
sc_or_end1009:
  %5694 = load i1, i1* %5669
  br i1 %5694, label %then1010, label %else1011
then1010:
  %5695 = alloca i1
  store i1 false, i1* %5695
  %5696 = load i64, i64* %5508
  %5697 = getelementptr [1 x i8], [1 x i8]* @.str691, i32 0, i32 0
  %5698 = load i8, i8* %5697
  %5699 = zext i8 %5698 to i64
  %5700 = icmp eq i64 %5696, %5699
  br i1 %5700, label %sc_and_rhs1013, label %sc_and_end1014
sc_and_rhs1013:
  %5701 = load i64, i64* %5488
  %5702 = icmp eq i64 %5701, 0
  store i1 %5702, i1* %5695
  br label %sc_and_end1014
sc_and_end1014:
  %5703 = load i1, i1* %5695
  br i1 %5703, label %then1015, label %else1016
then1015:
  store i1 0, i1* %5489
  br label %merge1017
else1016:
  br label %merge1017
merge1017:
  store i1 1, i1* %5492
  %5704 = load i64, i64* %5486
  %5705 = add i64 %5704, 1
  store i64 %5705, i64* %5486
  br label %merge1012
else1011:
  %5706 = alloca i1
  store i1 false, i1* %5706
  %5707 = alloca i1
  store i1 false, i1* %5707
  %5708 = load i64, i64* %5487
  %5709 = icmp eq i64 %5708, 0
  br i1 %5709, label %sc_and_rhs1018, label %sc_and_end1019
sc_and_rhs1018:
  %5710 = load i64, i64* %5508
  %5711 = getelementptr [1 x i8], [1 x i8]* @.str692, i32 0, i32 0
  %5712 = load i8, i8* %5711
  %5713 = zext i8 %5712 to i64
  %5714 = icmp eq i64 %5710, %5713
  store i1 %5714, i1* %5707
  br label %sc_and_end1019
sc_and_end1019:
  %5715 = load i1, i1* %5707
  br i1 %5715, label %sc_and_rhs1020, label %sc_and_end1021
sc_and_rhs1020:
  %5716 = load i64, i64* %5509
  %5717 = getelementptr [1 x i8], [1 x i8]* @.str693, i32 0, i32 0
  %5718 = load i8, i8* %5717
  %5719 = zext i8 %5718 to i64
  %5720 = icmp eq i64 %5716, %5719
  store i1 %5720, i1* %5706
  br label %sc_and_end1021
sc_and_end1021:
  %5721 = load i1, i1* %5706
  br i1 %5721, label %then1022, label %else1023
then1022:
  %5722 = alloca i1
  store i1 1, i1* %5722
  %5723 = load i64, i64* %5486
  %5724 = icmp sgt i64 %5723, 0
  br i1 %5724, label %then1025, label %else1026
then1025:
  %5725 = load %nyx_string*, %nyx_string** %src.ptr
  %5726 = load i64, i64* %5486
  %5727 = sub i64 %5726, 1
  %5728 = call i8 @nyx_string_char_at(%nyx_string* %5725, i64 %5727)
  %5729 = zext i8 %5728 to i64
  %5730 = alloca i64
  store i64 %5729, i64* %5730
  %5731 = load i64, i64* %5730
  %5732 = call i1 @es_ident_c(i64 %5731)
  br i1 %5732, label %then1028, label %else1029
then1028:
  store i1 0, i1* %5722
  br label %merge1030
else1029:
  br label %merge1030
merge1030:
  br label %merge1027
else1026:
  br label %merge1027
merge1027:
  %5733 = alloca i1
  store i1 1, i1* %5733
  %5734 = load i64, i64* %5486
  %5735 = add i64 %5734, 2
  %5736 = load i64, i64* %5485
  %5737 = icmp slt i64 %5735, %5736
  br i1 %5737, label %then1031, label %else1032
then1031:
  %5738 = load %nyx_string*, %nyx_string** %src.ptr
  %5739 = load i64, i64* %5486
  %5740 = add i64 %5739, 2
  %5741 = call i8 @nyx_string_char_at(%nyx_string* %5738, i64 %5740)
  %5742 = zext i8 %5741 to i64
  %5743 = alloca i64
  store i64 %5742, i64* %5743
  %5744 = load i64, i64* %5743
  %5745 = call i1 @es_ident_c(i64 %5744)
  br i1 %5745, label %then1034, label %else1035
then1034:
  store i1 0, i1* %5733
  br label %merge1036
else1035:
  br label %merge1036
merge1036:
  br label %merge1033
else1032:
  br label %merge1033
merge1033:
  %5746 = alloca i1
  store i1 false, i1* %5746
  %5747 = load i1, i1* %5722
  br i1 %5747, label %sc_and_rhs1037, label %sc_and_end1038
sc_and_rhs1037:
  %5748 = load i1, i1* %5733
  store i1 %5748, i1* %5746
  br label %sc_and_end1038
sc_and_end1038:
  %5749 = load i1, i1* %5746
  br i1 %5749, label %then1039, label %else1040
then1039:
  store i1 1, i1* %5489
  br label %merge1041
else1040:
  br label %merge1041
merge1041:
  br label %merge1024
else1023:
  br label %merge1024
merge1024:
  %5750 = load i64, i64* %5508
  %5751 = getelementptr [1 x i8], [1 x i8]* @.str694, i32 0, i32 0
  %5752 = load i8, i8* %5751
  %5753 = zext i8 %5752 to i64
  %5754 = icmp eq i64 %5750, %5753
  br i1 %5754, label %then1042, label %else1043
then1042:
  %5755 = load i64, i64* %5488
  %5756 = add i64 %5755, 1
  store i64 %5756, i64* %5488
  br label %merge1044
else1043:
  br label %merge1044
merge1044:
  %5757 = load i64, i64* %5508
  %5758 = getelementptr [1 x i8], [1 x i8]* @.str695, i32 0, i32 0
  %5759 = load i8, i8* %5758
  %5760 = zext i8 %5759 to i64
  %5761 = icmp eq i64 %5757, %5760
  br i1 %5761, label %then1045, label %else1046
then1045:
  %5762 = load i64, i64* %5488
  %5763 = sub i64 %5762, 1
  store i64 %5763, i64* %5488
  br label %merge1047
else1046:
  br label %merge1047
merge1047:
  %5764 = alloca i1
  store i1 false, i1* %5764
  %5765 = load i1, i1* %5492
  br i1 %5765, label %sc_and_rhs1048, label %sc_and_end1049
sc_and_rhs1048:
  %5766 = load i1, i1* %5493
  store i1 %5766, i1* %5764
  br label %sc_and_end1049
sc_and_end1049:
  %5767 = load i1, i1* %5764
  br i1 %5767, label %then1050, label %else1051
then1050:
  %5768 = load i8*, i8** %5482
  %5769 = load %nyx_string*, %nyx_string** %5496
  call void @nyx_sb_append(i8* %5768, %nyx_string* %5769)
  br label %merge1052
else1051:
  br label %merge1052
merge1052:
  store i1 0, i1* %5492
  %5770 = alloca i1
  store i1 false, i1* %5770
  %5771 = alloca i1
  store i1 false, i1* %5771
  %5772 = load i64, i64* %5508
  %5773 = getelementptr [1 x i8], [1 x i8]* @.str696, i32 0, i32 0
  %5774 = load i8, i8* %5773
  %5775 = zext i8 %5774 to i64
  %5776 = icmp eq i64 %5772, %5775
  br i1 %5776, label %sc_and_rhs1053, label %sc_and_end1054
sc_and_rhs1053:
  %5777 = load i64, i64* %5487
  %5778 = icmp eq i64 %5777, 0
  store i1 %5778, i1* %5771
  br label %sc_and_end1054
sc_and_end1054:
  %5779 = load i1, i1* %5771
  br i1 %5779, label %sc_and_rhs1055, label %sc_and_end1056
sc_and_rhs1055:
  %5780 = load i1, i1* %5489
  store i1 %5780, i1* %5770
  br label %sc_and_end1056
sc_and_end1056:
  %5781 = load i1, i1* %5770
  br i1 %5781, label %then1057, label %else1058
then1057:
  store i1 0, i1* %5489
  store i1 1, i1* %5490
  store i64 1, i64* %5491
  br label %merge1059
else1058:
  %5782 = load i64, i64* %5508
  %5783 = getelementptr [1 x i8], [1 x i8]* @.str697, i32 0, i32 0
  %5784 = load i8, i8* %5783
  %5785 = zext i8 %5784 to i64
  %5786 = icmp eq i64 %5782, %5785
  br i1 %5786, label %then1060, label %else1061
then1060:
  %5787 = load i64, i64* %5487
  %5788 = add i64 %5787, 1
  store i64 %5788, i64* %5487
  br label %merge1062
else1061:
  br label %merge1062
merge1062:
  %5789 = load i64, i64* %5508
  %5790 = getelementptr [1 x i8], [1 x i8]* @.str698, i32 0, i32 0
  %5791 = load i8, i8* %5790
  %5792 = zext i8 %5791 to i64
  %5793 = icmp eq i64 %5789, %5792
  br i1 %5793, label %then1063, label %else1064
then1063:
  %5794 = load i64, i64* %5487
  %5795 = sub i64 %5794, 1
  store i64 %5795, i64* %5487
  br label %merge1065
else1064:
  br label %merge1065
merge1065:
  %5796 = load i8*, i8** %5482
  %5797 = load %nyx_string*, %nyx_string** %src.ptr
  %5798 = load i64, i64* %5486
  %5799 = load i64, i64* %5486
  %5800 = add i64 %5799, 1
  %5801 = call %nyx_string* @nyx_string_substring(%nyx_string* %5797, i64 %5798, i64 %5800)
  call void @nyx_sb_append(i8* %5796, %nyx_string* %5801)
  store i1 1, i1* %5493
  br label %merge1059
merge1059:
  %5802 = load i64, i64* %5486
  %5803 = add i64 %5802, 1
  store i64 %5803, i64* %5486
  br label %merge1012
merge1012:
  br label %merge994
merge994:
  br label %merge983
merge983:
  br label %merge962
merge962:
  br label %merge949
merge949:
  br label %while_cond939
while_end941:
  %5804 = load i8*, i8** %5482
  %5805 = call %nyx_string* @nyx_sb_to_string(i8* %5804)
  ret %nyx_string* %5805
}

define internal i1 @separable_texto(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %5806 = load %nyx_string*, %nyx_string** %src.ptr
  %5807 = getelementptr [2 x i8], [2 x i8]* @.str699, i32 0, i32 0
  %5808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %5807, i64 1)
  %5809 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5806, %nyx_string* %5808)
  %5810 = alloca { i64, i8* }*
  store { i64, i8* }* %5809, { i64, i8* }** %5810
  %5811 = alloca i64
  store i64 0, i64* %5811
  %5812 = getelementptr [6 x i8], [6 x i8]* @.str700, i32 0, i32 0
  %5813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %5812, i64 5)
  %5814 = alloca %nyx_string*
  store %nyx_string* %5813, %nyx_string** %5814
  %5815 = getelementptr [6 x i8], [6 x i8]* @.str701, i32 0, i32 0
  %5816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %5815, i64 5)
  %5817 = alloca %nyx_string*
  store %nyx_string* %5816, %nyx_string** %5817
  %5818 = getelementptr [7 x i8], [7 x i8]* @.str702, i32 0, i32 0
  %5819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %5818, i64 6)
  %5820 = alloca %nyx_string*
  store %nyx_string* %5819, %nyx_string** %5820
  %5821 = getelementptr [11 x i8], [11 x i8]* @.str703, i32 0, i32 0
  %5822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %5821, i64 10)
  %5823 = alloca %nyx_string*
  store %nyx_string* %5822, %nyx_string** %5823
  %5824 = getelementptr [14 x i8], [14 x i8]* @.str704, i32 0, i32 0
  %5825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %5824, i64 13)
  %5826 = alloca %nyx_string*
  store %nyx_string* %5825, %nyx_string** %5826
  %5827 = getelementptr [1 x i8], [1 x i8]* @.str705, i32 0, i32 0
  %5828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %5827, i64 0)
  %5829 = alloca %nyx_string*
  store %nyx_string* %5828, %nyx_string** %5829
  %5830 = getelementptr [8 x i8], [8 x i8]* @.str706, i32 0, i32 0
  %5831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %5830, i64 7)
  %5832 = alloca %nyx_string*
  store %nyx_string* %5831, %nyx_string** %5832
  %5833 = getelementptr [11 x i8], [11 x i8]* @.str707, i32 0, i32 0
  %5834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %5833, i64 10)
  %5835 = alloca %nyx_string*
  store %nyx_string* %5834, %nyx_string** %5835
  %5836 = call i8* @llvm.stacksave()
  br label %while_cond1066
while_cond1066:
  %5837 = load i64, i64* %5811
  %5838 = load { i64, i8* }*, { i64, i8* }** %5810
  %5839 = call i64 @nyx_array_length({ i64, i8* }* %5838)
  %5840 = icmp slt i64 %5837, %5839
  br i1 %5840, label %while_body1067, label %while_end1068
while_body1067:
  call void @llvm.stackrestore(i8* %5836)
  %5841 = load { i64, i8* }*, { i64, i8* }** %5810
  %5842 = load i64, i64* %5811
  %5843 = call i64 @nyx_array_get_checked({ i64, i8* }* %5841, i64 %5842, i64 2)
  %5844 = inttoptr i64 %5843 to %nyx_string*
  %5845 = alloca %nyx_string*
  store %nyx_string* %5844, %nyx_string** %5845
  %5846 = load %nyx_string*, %nyx_string** %5845
  %5847 = call %nyx_string* @nyx_string_trim(%nyx_string* %5846)
  %5848 = alloca %nyx_string*
  store %nyx_string* %5847, %nyx_string** %5848
  %5849 = alloca i1
  store i1 true, i1* %5849
  %5850 = load %nyx_string*, %nyx_string** %5848
  %5851 = load %nyx_string*, %nyx_string** %5814
  %5852 = call i1 @nyx_string_starts_with(%nyx_string* %5850, %nyx_string* %5851)
  br i1 %5852, label %sc_or_end1070, label %sc_or_rhs1069
sc_or_rhs1069:
  %5853 = load %nyx_string*, %nyx_string** %5848
  %5854 = load %nyx_string*, %nyx_string** %5817
  %5855 = call i1 @nyx_string_starts_with(%nyx_string* %5853, %nyx_string* %5854)
  store i1 %5855, i1* %5849
  br label %sc_or_end1070
sc_or_end1070:
  %5856 = load i1, i1* %5849
  br i1 %5856, label %then1071, label %else1072
then1071:
  ret i1 0
else1072:
  br label %merge1073
merge1073:
  %5857 = alloca i1
  store i1 true, i1* %5857
  %5858 = alloca i1
  store i1 true, i1* %5858
  %5859 = load %nyx_string*, %nyx_string** %5848
  %5860 = load %nyx_string*, %nyx_string** %5820
  %5861 = call i1 @nyx_string_starts_with(%nyx_string* %5859, %nyx_string* %5860)
  br i1 %5861, label %sc_or_end1075, label %sc_or_rhs1074
sc_or_rhs1074:
  %5862 = load %nyx_string*, %nyx_string** %5848
  %5863 = load %nyx_string*, %nyx_string** %5823
  %5864 = call i1 @nyx_string_starts_with(%nyx_string* %5862, %nyx_string* %5863)
  store i1 %5864, i1* %5858
  br label %sc_or_end1075
sc_or_end1075:
  %5865 = load i1, i1* %5858
  br i1 %5865, label %sc_or_end1077, label %sc_or_rhs1076
sc_or_rhs1076:
  %5866 = load %nyx_string*, %nyx_string** %5848
  %5867 = load %nyx_string*, %nyx_string** %5826
  %5868 = call i1 @nyx_string_starts_with(%nyx_string* %5866, %nyx_string* %5867)
  store i1 %5868, i1* %5857
  br label %sc_or_end1077
sc_or_end1077:
  %5869 = load i1, i1* %5857
  br i1 %5869, label %then1078, label %else1079
then1078:
  ret i1 0
else1079:
  br label %merge1080
merge1080:
  %5870 = load %nyx_string*, %nyx_string** %5829
  %5871 = alloca %nyx_string*
  store %nyx_string* %5870, %nyx_string** %5871
  %5872 = load %nyx_string*, %nyx_string** %5848
  %5873 = load %nyx_string*, %nyx_string** %5832
  %5874 = call i1 @nyx_string_starts_with(%nyx_string* %5872, %nyx_string* %5873)
  br i1 %5874, label %then1081, label %else1082
then1081:
  %5875 = load %nyx_string*, %nyx_string** %5832
  store %nyx_string* %5875, %nyx_string** %5871
  br label %merge1083
else1082:
  br label %merge1083
merge1083:
  %5876 = load %nyx_string*, %nyx_string** %5848
  %5877 = load %nyx_string*, %nyx_string** %5835
  %5878 = call i1 @nyx_string_starts_with(%nyx_string* %5876, %nyx_string* %5877)
  br i1 %5878, label %then1084, label %else1085
then1084:
  %5879 = load %nyx_string*, %nyx_string** %5835
  store %nyx_string* %5879, %nyx_string** %5871
  br label %merge1086
else1085:
  br label %merge1086
merge1086:
  %5880 = load %nyx_string*, %nyx_string** %5871
  %5881 = load %nyx_string*, %nyx_string** %5829
  %5882 = call i1 @nyx_string_equals(%nyx_string* %5880, %nyx_string* %5881)
  %5883 = xor i1 %5882, true
  br i1 %5883, label %then1087, label %else1088
then1087:
  %5884 = load %nyx_string*, %nyx_string** %5848
  %5885 = load %nyx_string*, %nyx_string** %5871
  %5886 = call i64 @nyx_string_byte_length(%nyx_string* %5885)
  %5887 = load %nyx_string*, %nyx_string** %5848
  %5888 = call i64 @nyx_string_byte_length(%nyx_string* %5887)
  %5889 = call %nyx_string* @nyx_string_substring(%nyx_string* %5884, i64 %5886, i64 %5888)
  %5890 = alloca %nyx_string*
  store %nyx_string* %5889, %nyx_string** %5890
  %5891 = alloca i64
  store i64 0, i64* %5891
  %5892 = alloca i1
  store i1 1, i1* %5892
  %5893 = call i8* @llvm.stacksave()
  br label %while_cond1090
while_cond1090:
  %5894 = alloca i1
  store i1 false, i1* %5894
  %5895 = load i64, i64* %5891
  %5896 = load %nyx_string*, %nyx_string** %5890
  %5897 = call i64 @nyx_string_byte_length(%nyx_string* %5896)
  %5898 = icmp slt i64 %5895, %5897
  br i1 %5898, label %sc_and_rhs1093, label %sc_and_end1094
sc_and_rhs1093:
  %5899 = load i1, i1* %5892
  store i1 %5899, i1* %5894
  br label %sc_and_end1094
sc_and_end1094:
  %5900 = load i1, i1* %5894
  br i1 %5900, label %while_body1091, label %while_end1092
while_body1091:
  call void @llvm.stackrestore(i8* %5893)
  %5901 = load %nyx_string*, %nyx_string** %5890
  %5902 = load i64, i64* %5891
  %5903 = call i8 @nyx_string_char_at(%nyx_string* %5901, i64 %5902)
  %5904 = zext i8 %5903 to i64
  %5905 = alloca i64
  store i64 %5904, i64* %5905
  %5906 = load i64, i64* %5905
  %5907 = call i1 @es_ident_c(i64 %5906)
  br i1 %5907, label %then1095, label %else1096
then1095:
  %5908 = load i64, i64* %5891
  %5909 = add i64 %5908, 1
  store i64 %5909, i64* %5891
  br label %merge1097
else1096:
  store i1 0, i1* %5892
  br label %merge1097
merge1097:
  br label %while_cond1090
while_end1092:
  %5910 = load i64, i64* %5891
  %5911 = load %nyx_string*, %nyx_string** %5890
  %5912 = call i64 @nyx_string_byte_length(%nyx_string* %5911)
  %5913 = icmp slt i64 %5910, %5912
  br i1 %5913, label %then1098, label %else1099
then1098:
  %5914 = load %nyx_string*, %nyx_string** %5890
  %5915 = load i64, i64* %5891
  %5916 = call i8 @nyx_string_char_at(%nyx_string* %5914, i64 %5915)
  %5917 = zext i8 %5916 to i64
  %5918 = alloca i64
  store i64 %5917, i64* %5918
  %5919 = load i64, i64* %5918
  %5920 = icmp eq i64 %5919, 60
  br i1 %5920, label %then1101, label %else1102
then1101:
  ret i1 0
else1102:
  br label %merge1103
merge1103:
  br label %merge1100
else1099:
  br label %merge1100
merge1100:
  br label %merge1089
else1088:
  br label %merge1089
merge1089:
  %5921 = load i64, i64* %5811
  %5922 = add i64 %5921, 1
  store i64 %5922, i64* %5811
  br label %while_cond1066
while_end1068:
  ret i1 1
}

define internal %nyx_string* @hash_para_huella(
%nyx_string* %f.param, %nyx_string* %propio.param, i8* %libs.param, i8* %hashes.param) {
  %f.ptr = alloca %nyx_string*
  store %nyx_string* %f.param, %nyx_string** %f.ptr
  %propio.ptr = alloca %nyx_string*
  store %nyx_string* %propio.param, %nyx_string** %propio.ptr
  %libs.ptr = alloca i8*
  store i8* %libs.param, i8** %libs.ptr
  %hashes.ptr = alloca i8*
  store i8* %hashes.param, i8** %hashes.ptr
  %5923 = alloca i1
  store i1 true, i1* %5923
  %5924 = load %nyx_string*, %nyx_string** %f.ptr
  %5925 = load %nyx_string*, %nyx_string** %propio.ptr
  %5926 = call i1 @nyx_string_equals(%nyx_string* %5924, %nyx_string* %5925)
  br i1 %5926, label %sc_or_end1105, label %sc_or_rhs1104
sc_or_rhs1104:
  %5927 = load %nyx_string*, %nyx_string** %f.ptr
  %5928 = getelementptr [4 x i8], [4 x i8]* @.str708, i32 0, i32 0
  %5929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %5928, i64 3)
  %5930 = call i1 @nyx_string_ends_with(%nyx_string* %5927, %nyx_string* %5929)
  %5931 = xor i1 %5930, true
  store i1 %5931, i1* %5923
  br label %sc_or_end1105
sc_or_end1105:
  %5932 = load i1, i1* %5923
  br i1 %5932, label %then1106, label %else1107
then1106:
  %5933 = load %nyx_string*, %nyx_string** %f.ptr
  %5934 = load i8*, i8** %hashes.ptr
  %5935 = call %nyx_string* @hash_archivo(%nyx_string* %5933, i8* %5934)
  ret %nyx_string* %5935
else1107:
  br label %merge1108
merge1108:
  %5936 = load %nyx_string*, %nyx_string** %f.ptr
  %5937 = load %nyx_string*, %nyx_string** %f.ptr
  %5938 = call i64 @nyx_string_byte_length(%nyx_string* %5937)
  %5939 = sub i64 %5938, 3
  %5940 = call %nyx_string* @nyx_string_substring(%nyx_string* %5936, i64 0, i64 %5939)
  %5941 = alloca %nyx_string*
  store %nyx_string* %5940, %nyx_string** %5941
  %5942 = load i8*, i8** %libs.ptr
  %5943 = load %nyx_string*, %nyx_string** %5941
  %5944 = call i8* @nyx_string_to_cstr(%nyx_string* %5943)
  %5945 = call i1 @nyx_map_contains_str(i8* %5942, i8* %5944)
  %5946 = xor i1 %5945, true
  br i1 %5946, label %then1109, label %else1110
then1109:
  %5947 = load %nyx_string*, %nyx_string** %f.ptr
  %5948 = load i8*, i8** %hashes.ptr
  %5949 = call %nyx_string* @hash_archivo(%nyx_string* %5947, i8* %5948)
  ret %nyx_string* %5949
else1110:
  br label %merge1111
merge1111:
  %5950 = getelementptr [10 x i8], [10 x i8]* @.str709, i32 0, i32 0
  %5951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %5950, i64 9)
  %5952 = load %nyx_string*, %nyx_string** %f.ptr
  %5953 = call %nyx_string* @nyx_string_concat(%nyx_string* %5951, %nyx_string* %5952)
  %5954 = alloca %nyx_string*
  store %nyx_string* %5953, %nyx_string** %5954
  %5955 = load i8*, i8** %hashes.ptr
  %5956 = load %nyx_string*, %nyx_string** %5954
  %5957 = call i8* @nyx_string_to_cstr(%nyx_string* %5956)
  %5958 = call i1 @nyx_map_contains_str(i8* %5955, i8* %5957)
  br i1 %5958, label %then1112, label %else1113
then1112:
  %5959 = load i8*, i8** %hashes.ptr
  %5960 = load %nyx_string*, %nyx_string** %5954
  %5961 = call i8* @nyx_string_to_cstr(%nyx_string* %5960)
  %5962 = call i8* @nyx_map_get_str(i8* %5959, i8* %5961)
  %5963 = call %nyx_string* @nyx_string_from_cstr(i8* %5962)
  %5964 = alloca %nyx_string*
  store %nyx_string* %5963, %nyx_string** %5964
  %5965 = load %nyx_string*, %nyx_string** %5964
  ret %nyx_string* %5965
else1113:
  br label %merge1114
merge1114:
  %5966 = load %nyx_string*, %nyx_string** %f.ptr
  %5967 = call i8* @nyx_string_to_cstr(%nyx_string* %5966)
  %5968 = call %nyx_string* @nyx_read_file(i8* %5967)
  %5969 = alloca %nyx_string*
  store %nyx_string* %5968, %nyx_string** %5969
  %5970 = getelementptr [1 x i8], [1 x i8]* @.str710, i32 0, i32 0
  %5971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %5970, i64 0)
  %5972 = alloca %nyx_string*
  store %nyx_string* %5971, %nyx_string** %5972
  %5973 = load %nyx_string*, %nyx_string** %5969
  %5974 = call i1 @separable_texto(%nyx_string* %5973)
  br i1 %5974, label %then1115, label %else1116
then1115:
  %5975 = getelementptr [3 x i8], [3 x i8]* @.str711, i32 0, i32 0
  %5976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %5975, i64 2)
  %5977 = load %nyx_string*, %nyx_string** %5969
  %5978 = call %nyx_string* @interfaz_de(%nyx_string* %5977)
  %5979 = call %nyx_string* @nyx_sha256(%nyx_string* %5978)
  %5980 = call %nyx_string* @nyx_string_concat(%nyx_string* %5976, %nyx_string* %5979)
  store %nyx_string* %5980, %nyx_string** %5972
  br label %merge1117
else1116:
  %5981 = load %nyx_string*, %nyx_string** %5969
  %5982 = call %nyx_string* @nyx_sha256(%nyx_string* %5981)
  store %nyx_string* %5982, %nyx_string** %5972
  br label %merge1117
merge1117:
  %5983 = load i8*, i8** %hashes.ptr
  %5984 = load %nyx_string*, %nyx_string** %5954
  %5985 = load %nyx_string*, %nyx_string** %5972
  %5986 = call i8* @nyx_string_to_cstr(%nyx_string* %5984)
  %5987 = call i8* @nyx_string_to_cstr(%nyx_string* %5985)
  call void @nyx_map_insert_str(i8* %5983, i8* %5986, i8* %5987)
  %5988 = load %nyx_string*, %nyx_string** %5972
  ret %nyx_string* %5988
}

define internal %nyx_string* @lib_huella(
%nyx_string* %modulo.param, %nyx_string* %base.param, %nyx_string* %std_dir.param, i8* %hashes.param, i8* %imports_de.param, i8* %libs.param) {
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
  %libs.ptr = alloca i8*
  store i8* %libs.param, i8** %libs.ptr
  %5989 = call { i64, i8* }* @nyx_array_new_ptr()
  %5990 = alloca { i64, i8* }*
  store { i64, i8* }* %5989, { i64, i8* }** %5990
  %5991 = call i8* @nyx_map_new(i32 0)
  %5992 = alloca i8*
  store i8* %5991, i8** %5992
  %5993 = load %nyx_string*, %nyx_string** %modulo.ptr
  %5994 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5995 = load { i64, i8* }*, { i64, i8* }** %5990
  %5996 = load i8*, i8** %5992
  %5997 = load i8*, i8** %imports_de.ptr
  %5998 = call i64 @lib_cierre(%nyx_string* %5993, %nyx_string* %5994, { i64, i8* }* %5995, i8* %5996, i8* %5997)
  %5999 = load %nyx_string*, %nyx_string** %base.ptr
  %6000 = getelementptr [2 x i8], [2 x i8]* @.str712, i32 0, i32 0
  %6001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %6000, i64 1)
  %6002 = call %nyx_string* @nyx_string_concat(%nyx_string* %5999, %nyx_string* %6001)
  %6003 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %6004 = getelementptr [12 x i8], [12 x i8]* @.str713, i32 0, i32 0
  %6005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %6004, i64 11)
  %6006 = call %nyx_string* @nyx_string_concat(%nyx_string* %6003, %nyx_string* %6005)
  %6007 = load i8*, i8** %hashes.ptr
  %6008 = call %nyx_string* @hash_archivo(%nyx_string* %6006, i8* %6007)
  %6009 = call %nyx_string* @nyx_string_concat(%nyx_string* %6002, %nyx_string* %6008)
  %6010 = alloca %nyx_string*
  store %nyx_string* %6009, %nyx_string** %6010
  %6011 = load %nyx_string*, %nyx_string** %modulo.ptr
  %6012 = getelementptr [4 x i8], [4 x i8]* @.str714, i32 0, i32 0
  %6013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %6012, i64 3)
  %6014 = call %nyx_string* @nyx_string_concat(%nyx_string* %6011, %nyx_string* %6013)
  %6015 = alloca %nyx_string*
  store %nyx_string* %6014, %nyx_string** %6015
  %6016 = alloca i64
  store i64 0, i64* %6016
  %6017 = getelementptr [2 x i8], [2 x i8]* @.str715, i32 0, i32 0
  %6018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %6017, i64 1)
  %6019 = alloca %nyx_string*
  store %nyx_string* %6018, %nyx_string** %6019
  %6020 = getelementptr [2 x i8], [2 x i8]* @.str716, i32 0, i32 0
  %6021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %6020, i64 1)
  %6022 = alloca %nyx_string*
  store %nyx_string* %6021, %nyx_string** %6022
  %6023 = call i8* @llvm.stacksave()
  br label %while_cond1118
while_cond1118:
  %6024 = load i64, i64* %6016
  %6025 = load { i64, i8* }*, { i64, i8* }** %5990
  %6026 = call i64 @nyx_array_length({ i64, i8* }* %6025)
  %6027 = icmp slt i64 %6024, %6026
  br i1 %6027, label %while_body1119, label %while_end1120
while_body1119:
  call void @llvm.stackrestore(i8* %6023)
  %6028 = load { i64, i8* }*, { i64, i8* }** %5990
  %6029 = load i64, i64* %6016
  %6030 = call i64 @nyx_array_get_checked({ i64, i8* }* %6028, i64 %6029, i64 2)
  %6031 = inttoptr i64 %6030 to %nyx_string*
  %6032 = alloca %nyx_string*
  store %nyx_string* %6031, %nyx_string** %6032
  %6033 = load %nyx_string*, %nyx_string** %6010
  %6034 = load %nyx_string*, %nyx_string** %6019
  %6035 = call %nyx_string* @nyx_string_concat(%nyx_string* %6033, %nyx_string* %6034)
  %6036 = load %nyx_string*, %nyx_string** %6032
  %6037 = call %nyx_string* @nyx_string_concat(%nyx_string* %6035, %nyx_string* %6036)
  %6038 = load %nyx_string*, %nyx_string** %6022
  %6039 = call %nyx_string* @nyx_string_concat(%nyx_string* %6037, %nyx_string* %6038)
  %6040 = load %nyx_string*, %nyx_string** %6032
  %6041 = load %nyx_string*, %nyx_string** %6015
  %6042 = load i8*, i8** %libs.ptr
  %6043 = load i8*, i8** %hashes.ptr
  %6044 = call %nyx_string* @hash_para_huella(%nyx_string* %6040, %nyx_string* %6041, i8* %6042, i8* %6043)
  %6045 = call %nyx_string* @nyx_string_concat(%nyx_string* %6039, %nyx_string* %6044)
  store %nyx_string* %6045, %nyx_string** %6010
  %6046 = load i64, i64* %6016
  %6047 = add i64 %6046, 1
  store i64 %6047, i64* %6016
  br label %while_cond1118
while_end1120:
  %6048 = load %nyx_string*, %nyx_string** %6010
  %6049 = call %nyx_string* @nyx_sha256(%nyx_string* %6048)
  ret %nyx_string* %6049
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
  %6050 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6051 = load { i64, i8* }*, { i64, i8* }** %6050
  %6052 = call i64 @nyx_array_length({ i64, i8* }* %6051)
  %6053 = icmp eq i64 %6052, 0
  br i1 %6053, label %then1121, label %else1122
then1121:
  %6054 = getelementptr [1 x i8], [1 x i8]* @.str717, i32 0, i32 0
  %6055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %6054, i64 0)
  ret %nyx_string* %6055
else1122:
  br label %merge1123
merge1123:
  %6056 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6057 = load { i64, i8* }*, { i64, i8* }** %6056
  %6058 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6059 = load { i64, i8* }*, { i64, i8* }** %6058
  %6060 = getelementptr [2 x i8], [2 x i8]* @.str718, i32 0, i32 0
  %6061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %6060, i64 1)
  %6062 = call %nyx_string* @nyx_string_join({ i64, i8* }* %6059, %nyx_string* %6061)
  %6063 = alloca %nyx_string*
  store %nyx_string* %6062, %nyx_string** %6063
  %6064 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %6065 = call { i64, i8* }* @nyx_stat(%nyx_string* %6064)
  %6066 = alloca { i64, i8* }*
  store { i64, i8* }* %6065, { i64, i8* }** %6066
  %6067 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %6068 = alloca %nyx_string*
  store %nyx_string* %6067, %nyx_string** %6068
  %6069 = load { i64, i8* }*, { i64, i8* }** %6066
  %6070 = call i64 @nyx_array_length({ i64, i8* }* %6069)
  %6071 = icmp sge i64 %6070, 3
  br i1 %6071, label %then1124, label %else1125
then1124:
  %6072 = load { i64, i8* }*, { i64, i8* }** %6066
  %6073 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %6072, i64 0)
  %6074 = alloca i64
  store i64 %6073, i64* %6074
  %6075 = load { i64, i8* }*, { i64, i8* }** %6066
  %6076 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %6075, i64 2)
  %6077 = alloca i64
  store i64 %6076, i64* %6077
  %6078 = load %nyx_string*, %nyx_string** %6068
  %6079 = getelementptr [2 x i8], [2 x i8]* @.str719, i32 0, i32 0
  %6080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %6079, i64 1)
  %6081 = call %nyx_string* @nyx_string_concat(%nyx_string* %6078, %nyx_string* %6080)
  %6082 = load i64, i64* %6074
  %6083 = call %nyx_string* @nyx_string_from_int(i64 %6082)
  %6084 = call %nyx_string* @nyx_string_concat(%nyx_string* %6081, %nyx_string* %6083)
  %6085 = getelementptr [2 x i8], [2 x i8]* @.str720, i32 0, i32 0
  %6086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %6085, i64 1)
  %6087 = call %nyx_string* @nyx_string_concat(%nyx_string* %6084, %nyx_string* %6086)
  %6088 = load i64, i64* %6077
  %6089 = call %nyx_string* @nyx_string_from_int(i64 %6088)
  %6090 = call %nyx_string* @nyx_string_concat(%nyx_string* %6087, %nyx_string* %6089)
  store %nyx_string* %6090, %nyx_string** %6068
  br label %merge1126
else1125:
  br label %merge1126
merge1126:
  %6091 = load %nyx_string*, %nyx_string** %6068
  %6092 = getelementptr [2 x i8], [2 x i8]* @.str721, i32 0, i32 0
  %6093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %6092, i64 1)
  %6094 = call %nyx_string* @nyx_string_concat(%nyx_string* %6091, %nyx_string* %6093)
  %6095 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %6096 = call %nyx_string* @nyx_string_concat(%nyx_string* %6094, %nyx_string* %6095)
  %6097 = getelementptr [2 x i8], [2 x i8]* @.str722, i32 0, i32 0
  %6098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %6097, i64 1)
  %6099 = call %nyx_string* @nyx_string_concat(%nyx_string* %6096, %nyx_string* %6098)
  %6100 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %6101 = call %nyx_string* @nyx_string_concat(%nyx_string* %6099, %nyx_string* %6100)
  %6102 = getelementptr [2 x i8], [2 x i8]* @.str723, i32 0, i32 0
  %6103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %6102, i64 1)
  %6104 = call %nyx_string* @nyx_string_concat(%nyx_string* %6101, %nyx_string* %6103)
  %6105 = load %nyx_string*, %nyx_string** %6063
  %6106 = call %nyx_string* @nyx_string_concat(%nyx_string* %6104, %nyx_string* %6105)
  %6107 = alloca %nyx_string*
  store %nyx_string* %6106, %nyx_string** %6107
  %6108 = call i8* @nyx_map_new(i32 0)
  %6109 = alloca i8*
  store i8* %6108, i8** %6109
  %6110 = call i8* @nyx_map_new(i32 0)
  %6111 = alloca i8*
  store i8* %6110, i8** %6111
  %6112 = call i8* @nyx_map_new(i32 0)
  %6113 = alloca i8*
  store i8* %6112, i8** %6113
  %6114 = alloca i64
  store i64 0, i64* %6114
  %6115 = call i8* @llvm.stacksave()
  br label %while_cond1127
while_cond1127:
  %6116 = load i64, i64* %6114
  %6117 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6118 = load { i64, i8* }*, { i64, i8* }** %6117
  %6119 = call i64 @nyx_array_length({ i64, i8* }* %6118)
  %6120 = icmp slt i64 %6116, %6119
  br i1 %6120, label %while_body1128, label %while_end1129
while_body1128:
  call void @llvm.stackrestore(i8* %6115)
  %6121 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6122 = load { i64, i8* }*, { i64, i8* }** %6121
  %6123 = load i64, i64* %6114
  %6124 = call i64 @nyx_array_get({ i64, i8* }* %6122, i64 %6123)
  %6125 = inttoptr i64 %6124 to %nyx_string*
  %6126 = alloca %nyx_string*
  store %nyx_string* %6125, %nyx_string** %6126
  %6127 = load i8*, i8** %6113
  %6128 = load %nyx_string*, %nyx_string** %6126
  %6129 = call i8* @nyx_string_to_cstr(%nyx_string* %6128)
  call void @nyx_map_insert_int(i8* %6127, i8* %6129, i64 1)
  %6130 = load i64, i64* %6114
  %6131 = add i64 %6130, 1
  store i64 %6131, i64* %6114
  br label %while_cond1127
while_end1129:
  %6132 = call i8* @nyx_sb_new(i64 1024)
  %6133 = alloca i8*
  store i8* %6132, i8** %6133
  %6134 = load i8*, i8** %6133
  %6135 = call %nyx_string* @lib_pista_import_sh()
  call void @nyx_sb_append(i8* %6134, %nyx_string* %6135)
  %6136 = load i8*, i8** %6133
  %6137 = getelementptr [60 x i8], [60 x i8]* @.str724, i32 0, i32 0
  %6138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %6137, i64 59)
  call void @nyx_sb_append(i8* %6136, %nyx_string* %6138)
  %6139 = alloca i64
  store i64 0, i64* %6139
  %6140 = getelementptr [2 x i8], [2 x i8]* @.str725, i32 0, i32 0
  %6141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %6140, i64 1)
  %6142 = alloca %nyx_string*
  store %nyx_string* %6141, %nyx_string** %6142
  %6143 = getelementptr [2 x i8], [2 x i8]* @.str726, i32 0, i32 0
  %6144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %6143, i64 1)
  %6145 = alloca %nyx_string*
  store %nyx_string* %6144, %nyx_string** %6145
  %6146 = getelementptr [5 x i8], [5 x i8]* @.str727, i32 0, i32 0
  %6147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %6146, i64 4)
  %6148 = alloca %nyx_string*
  store %nyx_string* %6147, %nyx_string** %6148
  %6149 = getelementptr [26 x i8], [26 x i8]* @.str728, i32 0, i32 0
  %6150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %6149, i64 25)
  %6151 = alloca %nyx_string*
  store %nyx_string* %6150, %nyx_string** %6151
  %6152 = getelementptr [2 x i8], [2 x i8]* @.str729, i32 0, i32 0
  %6153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %6152, i64 1)
  %6154 = alloca %nyx_string*
  store %nyx_string* %6153, %nyx_string** %6154
  %6155 = getelementptr [3 x i8], [3 x i8]* @.str730, i32 0, i32 0
  %6156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %6155, i64 2)
  %6157 = alloca %nyx_string*
  store %nyx_string* %6156, %nyx_string** %6157
  %6158 = getelementptr [8 x i8], [8 x i8]* @.str731, i32 0, i32 0
  %6159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %6158, i64 7)
  %6160 = alloca %nyx_string*
  store %nyx_string* %6159, %nyx_string** %6160
  %6161 = getelementptr [13 x i8], [13 x i8]* @.str732, i32 0, i32 0
  %6162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %6161, i64 12)
  %6163 = alloca %nyx_string*
  store %nyx_string* %6162, %nyx_string** %6163
  %6164 = getelementptr [30 x i8], [30 x i8]* @.str733, i32 0, i32 0
  %6165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %6164, i64 29)
  %6166 = alloca %nyx_string*
  store %nyx_string* %6165, %nyx_string** %6166
  %6167 = getelementptr [20 x i8], [20 x i8]* @.str734, i32 0, i32 0
  %6168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %6167, i64 19)
  %6169 = alloca %nyx_string*
  store %nyx_string* %6168, %nyx_string** %6169
  %6170 = getelementptr [39 x i8], [39 x i8]* @.str735, i32 0, i32 0
  %6171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %6170, i64 38)
  %6172 = alloca %nyx_string*
  store %nyx_string* %6171, %nyx_string** %6172
  %6173 = getelementptr [35 x i8], [35 x i8]* @.str736, i32 0, i32 0
  %6174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %6173, i64 34)
  %6175 = alloca %nyx_string*
  store %nyx_string* %6174, %nyx_string** %6175
  %6176 = getelementptr [4 x i8], [4 x i8]* @.str737, i32 0, i32 0
  %6177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %6176, i64 3)
  %6178 = alloca %nyx_string*
  store %nyx_string* %6177, %nyx_string** %6178
  %6179 = getelementptr [10 x i8], [10 x i8]* @.str738, i32 0, i32 0
  %6180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %6179, i64 9)
  %6181 = alloca %nyx_string*
  store %nyx_string* %6180, %nyx_string** %6181
  %6182 = getelementptr [28 x i8], [28 x i8]* @.str739, i32 0, i32 0
  %6183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %6182, i64 27)
  %6184 = alloca %nyx_string*
  store %nyx_string* %6183, %nyx_string** %6184
  %6185 = getelementptr [43 x i8], [43 x i8]* @.str740, i32 0, i32 0
  %6186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %6185, i64 42)
  %6187 = alloca %nyx_string*
  store %nyx_string* %6186, %nyx_string** %6187
  %6188 = getelementptr [22 x i8], [22 x i8]* @.str741, i32 0, i32 0
  %6189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %6188, i64 21)
  %6190 = alloca %nyx_string*
  store %nyx_string* %6189, %nyx_string** %6190
  %6191 = getelementptr [2 x i8], [2 x i8]* @.str742, i32 0, i32 0
  %6192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %6191, i64 1)
  %6193 = alloca %nyx_string*
  store %nyx_string* %6192, %nyx_string** %6193
  %6194 = getelementptr [3 x i8], [3 x i8]* @.str743, i32 0, i32 0
  %6195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %6194, i64 2)
  %6196 = alloca %nyx_string*
  store %nyx_string* %6195, %nyx_string** %6196
  %6197 = getelementptr [12 x i8], [12 x i8]* @.str744, i32 0, i32 0
  %6198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %6197, i64 11)
  %6199 = alloca %nyx_string*
  store %nyx_string* %6198, %nyx_string** %6199
  %6200 = getelementptr [13 x i8], [13 x i8]* @.str745, i32 0, i32 0
  %6201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %6200, i64 12)
  %6202 = alloca %nyx_string*
  store %nyx_string* %6201, %nyx_string** %6202
  %6203 = getelementptr [27 x i8], [27 x i8]* @.str746, i32 0, i32 0
  %6204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %6203, i64 26)
  %6205 = alloca %nyx_string*
  store %nyx_string* %6204, %nyx_string** %6205
  %6206 = getelementptr [9 x i8], [9 x i8]* @.str747, i32 0, i32 0
  %6207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %6206, i64 8)
  %6208 = alloca %nyx_string*
  store %nyx_string* %6207, %nyx_string** %6208
  %6209 = getelementptr [35 x i8], [35 x i8]* @.str748, i32 0, i32 0
  %6210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %6209, i64 34)
  %6211 = alloca %nyx_string*
  store %nyx_string* %6210, %nyx_string** %6211
  %6212 = getelementptr [5 x i8], [5 x i8]* @.str749, i32 0, i32 0
  %6213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %6212, i64 4)
  %6214 = alloca %nyx_string*
  store %nyx_string* %6213, %nyx_string** %6214
  %6215 = getelementptr [55 x i8], [55 x i8]* @.str750, i32 0, i32 0
  %6216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %6215, i64 54)
  %6217 = alloca %nyx_string*
  store %nyx_string* %6216, %nyx_string** %6217
  %6218 = getelementptr [17 x i8], [17 x i8]* @.str751, i32 0, i32 0
  %6219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %6218, i64 16)
  %6220 = alloca %nyx_string*
  store %nyx_string* %6219, %nyx_string** %6220
  %6221 = getelementptr [10 x i8], [10 x i8]* @.str752, i32 0, i32 0
  %6222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %6221, i64 9)
  %6223 = alloca %nyx_string*
  store %nyx_string* %6222, %nyx_string** %6223
  %6224 = getelementptr [26 x i8], [26 x i8]* @.str753, i32 0, i32 0
  %6225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %6224, i64 25)
  %6226 = alloca %nyx_string*
  store %nyx_string* %6225, %nyx_string** %6226
  %6227 = getelementptr [66 x i8], [66 x i8]* @.str754, i32 0, i32 0
  %6228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %6227, i64 65)
  %6229 = alloca %nyx_string*
  store %nyx_string* %6228, %nyx_string** %6229
  %6230 = getelementptr [62 x i8], [62 x i8]* @.str755, i32 0, i32 0
  %6231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %6230, i64 61)
  %6232 = alloca %nyx_string*
  store %nyx_string* %6231, %nyx_string** %6232
  %6233 = getelementptr [111 x i8], [111 x i8]* @.str756, i32 0, i32 0
  %6234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %6233, i64 110)
  %6235 = alloca %nyx_string*
  store %nyx_string* %6234, %nyx_string** %6235
  %6236 = getelementptr [45 x i8], [45 x i8]* @.str757, i32 0, i32 0
  %6237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %6236, i64 44)
  %6238 = alloca %nyx_string*
  store %nyx_string* %6237, %nyx_string** %6238
  %6239 = getelementptr [14 x i8], [14 x i8]* @.str758, i32 0, i32 0
  %6240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %6239, i64 13)
  %6241 = alloca %nyx_string*
  store %nyx_string* %6240, %nyx_string** %6241
  %6242 = getelementptr [38 x i8], [38 x i8]* @.str759, i32 0, i32 0
  %6243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %6242, i64 37)
  %6244 = alloca %nyx_string*
  store %nyx_string* %6243, %nyx_string** %6244
  %6245 = getelementptr [45 x i8], [45 x i8]* @.str760, i32 0, i32 0
  %6246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %6245, i64 44)
  %6247 = alloca %nyx_string*
  store %nyx_string* %6246, %nyx_string** %6247
  %6248 = getelementptr [36 x i8], [36 x i8]* @.str761, i32 0, i32 0
  %6249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %6248, i64 35)
  %6250 = alloca %nyx_string*
  store %nyx_string* %6249, %nyx_string** %6250
  %6251 = getelementptr [25 x i8], [25 x i8]* @.str762, i32 0, i32 0
  %6252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %6251, i64 24)
  %6253 = alloca %nyx_string*
  store %nyx_string* %6252, %nyx_string** %6253
  %6254 = getelementptr [8 x i8], [8 x i8]* @.str763, i32 0, i32 0
  %6255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %6254, i64 7)
  %6256 = alloca %nyx_string*
  store %nyx_string* %6255, %nyx_string** %6256
  %6257 = getelementptr [42 x i8], [42 x i8]* @.str764, i32 0, i32 0
  %6258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %6257, i64 41)
  %6259 = alloca %nyx_string*
  store %nyx_string* %6258, %nyx_string** %6259
  %6260 = call i8* @llvm.stacksave()
  br label %while_cond1130
while_cond1130:
  %6261 = load i64, i64* %6139
  %6262 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6263 = load { i64, i8* }*, { i64, i8* }** %6262
  %6264 = call i64 @nyx_array_length({ i64, i8* }* %6263)
  %6265 = icmp slt i64 %6261, %6264
  br i1 %6265, label %while_body1131, label %while_end1132
while_body1131:
  call void @llvm.stackrestore(i8* %6260)
  %6266 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6267 = load { i64, i8* }*, { i64, i8* }** %6266
  %6268 = load i64, i64* %6139
  %6269 = call i64 @nyx_array_get({ i64, i8* }* %6267, i64 %6268)
  %6270 = inttoptr i64 %6269 to %nyx_string*
  %6271 = alloca %nyx_string*
  store %nyx_string* %6270, %nyx_string** %6271
  %6272 = load %nyx_string*, %nyx_string** %6271
  %6273 = load %nyx_string*, %nyx_string** %6142
  %6274 = load %nyx_string*, %nyx_string** %6145
  %6275 = call %nyx_string* @nyx_string_replace(%nyx_string* %6272, %nyx_string* %6273, %nyx_string* %6274)
  %6276 = alloca %nyx_string*
  store %nyx_string* %6275, %nyx_string** %6276
  %6277 = load %nyx_string*, %nyx_string** %6271
  %6278 = load %nyx_string*, %nyx_string** %6107
  %6279 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %6280 = load %nyx_string*, %nyx_string** %6148
  %6281 = call %nyx_string* @nyx_string_concat(%nyx_string* %6279, %nyx_string* %6280)
  %6282 = load i8*, i8** %6109
  %6283 = load i8*, i8** %6111
  %6284 = load i8*, i8** %6113
  %6285 = call %nyx_string* @lib_huella(%nyx_string* %6277, %nyx_string* %6278, %nyx_string* %6281, i8* %6282, i8* %6283, i8* %6284)
  %6286 = call %nyx_string* @nyx_string_substring(%nyx_string* %6285, i64 0, i64 16)
  %6287 = alloca %nyx_string*
  store %nyx_string* %6286, %nyx_string** %6287
  %6288 = load %nyx_string*, %nyx_string** %6151
  %6289 = load %nyx_string*, %nyx_string** %6276
  %6290 = call %nyx_string* @nyx_string_concat(%nyx_string* %6288, %nyx_string* %6289)
  %6291 = load %nyx_string*, %nyx_string** %6154
  %6292 = call %nyx_string* @nyx_string_concat(%nyx_string* %6290, %nyx_string* %6291)
  %6293 = load %nyx_string*, %nyx_string** %6287
  %6294 = call %nyx_string* @nyx_string_concat(%nyx_string* %6292, %nyx_string* %6293)
  %6295 = load %nyx_string*, %nyx_string** %6157
  %6296 = call %nyx_string* @nyx_string_concat(%nyx_string* %6294, %nyx_string* %6295)
  %6297 = alloca %nyx_string*
  store %nyx_string* %6296, %nyx_string** %6297
  %6298 = load %nyx_string*, %nyx_string** %6151
  %6299 = load %nyx_string*, %nyx_string** %6276
  %6300 = call %nyx_string* @nyx_string_concat(%nyx_string* %6298, %nyx_string* %6299)
  %6301 = load %nyx_string*, %nyx_string** %6154
  %6302 = call %nyx_string* @nyx_string_concat(%nyx_string* %6300, %nyx_string* %6301)
  %6303 = load %nyx_string*, %nyx_string** %6287
  %6304 = call %nyx_string* @nyx_string_concat(%nyx_string* %6302, %nyx_string* %6303)
  %6305 = load %nyx_string*, %nyx_string** %6160
  %6306 = call %nyx_string* @nyx_string_concat(%nyx_string* %6304, %nyx_string* %6305)
  %6307 = alloca %nyx_string*
  store %nyx_string* %6306, %nyx_string** %6307
  %6308 = load %nyx_string*, %nyx_string** %6163
  %6309 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %6310 = call %nyx_string* @nyx_string_concat(%nyx_string* %6308, %nyx_string* %6309)
  %6311 = load %nyx_string*, %nyx_string** %6166
  %6312 = call %nyx_string* @nyx_string_concat(%nyx_string* %6310, %nyx_string* %6311)
  %6313 = load %nyx_string*, %nyx_string** %6271
  %6314 = call %nyx_string* @nyx_string_concat(%nyx_string* %6312, %nyx_string* %6313)
  %6315 = load %nyx_string*, %nyx_string** %6169
  %6316 = call %nyx_string* @nyx_string_concat(%nyx_string* %6314, %nyx_string* %6315)
  %6317 = load %nyx_string*, %nyx_string** %6063
  %6318 = call %nyx_string* @nyx_string_concat(%nyx_string* %6316, %nyx_string* %6317)
  %6319 = load %nyx_string*, %nyx_string** %6172
  %6320 = call %nyx_string* @nyx_string_concat(%nyx_string* %6318, %nyx_string* %6319)
  %6321 = load %nyx_string*, %nyx_string** %6271
  %6322 = call %nyx_string* @nyx_string_concat(%nyx_string* %6320, %nyx_string* %6321)
  %6323 = load %nyx_string*, %nyx_string** %6175
  %6324 = call %nyx_string* @nyx_string_concat(%nyx_string* %6322, %nyx_string* %6323)
  %6325 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %6326 = call %nyx_string* @nyx_string_concat(%nyx_string* %6324, %nyx_string* %6325)
  %6327 = load %nyx_string*, %nyx_string** %6178
  %6328 = call %nyx_string* @nyx_string_concat(%nyx_string* %6326, %nyx_string* %6327)
  %6329 = alloca %nyx_string*
  store %nyx_string* %6328, %nyx_string** %6329
  %6330 = load i8*, i8** %6133
  %6331 = load %nyx_string*, %nyx_string** %6181
  %6332 = load %nyx_string*, %nyx_string** %6297
  %6333 = call %nyx_string* @nyx_string_concat(%nyx_string* %6331, %nyx_string* %6332)
  %6334 = load %nyx_string*, %nyx_string** %6184
  %6335 = call %nyx_string* @nyx_string_concat(%nyx_string* %6333, %nyx_string* %6334)
  %6336 = load %nyx_string*, %nyx_string** %6271
  %6337 = call %nyx_string* @nyx_string_concat(%nyx_string* %6335, %nyx_string* %6336)
  %6338 = load %nyx_string*, %nyx_string** %6187
  %6339 = call %nyx_string* @nyx_string_concat(%nyx_string* %6337, %nyx_string* %6338)
  %6340 = load %nyx_string*, %nyx_string** %6297
  %6341 = call %nyx_string* @nyx_string_concat(%nyx_string* %6339, %nyx_string* %6340)
  %6342 = load %nyx_string*, %nyx_string** %6190
  %6343 = call %nyx_string* @nyx_string_concat(%nyx_string* %6341, %nyx_string* %6342)
  %6344 = load %nyx_string*, %nyx_string** %6271
  %6345 = call %nyx_string* @nyx_string_concat(%nyx_string* %6343, %nyx_string* %6344)
  %6346 = load %nyx_string*, %nyx_string** %6193
  %6347 = call %nyx_string* @nyx_string_concat(%nyx_string* %6345, %nyx_string* %6346)
  %6348 = load %nyx_string*, %nyx_string** %6297
  %6349 = call %nyx_string* @nyx_string_concat(%nyx_string* %6347, %nyx_string* %6348)
  %6350 = load %nyx_string*, %nyx_string** %6196
  %6351 = call %nyx_string* @nyx_string_concat(%nyx_string* %6349, %nyx_string* %6350)
  call void @nyx_sb_append(i8* %6330, %nyx_string* %6351)
  %6352 = load i8*, i8** %6133
  %6353 = load %nyx_string*, %nyx_string** %6199
  %6354 = load %nyx_string*, %nyx_string** %6307
  %6355 = call %nyx_string* @nyx_string_concat(%nyx_string* %6353, %nyx_string* %6354)
  %6356 = load %nyx_string*, %nyx_string** %6202
  %6357 = call %nyx_string* @nyx_string_concat(%nyx_string* %6355, %nyx_string* %6356)
  call void @nyx_sb_append(i8* %6352, %nyx_string* %6357)
  %6358 = load i8*, i8** %6133
  %6359 = load %nyx_string*, %nyx_string** %6205
  %6360 = load %nyx_string*, %nyx_string** %6271
  %6361 = call %nyx_string* @nyx_string_concat(%nyx_string* %6359, %nyx_string* %6360)
  %6362 = load %nyx_string*, %nyx_string** %6208
  %6363 = call %nyx_string* @nyx_string_concat(%nyx_string* %6361, %nyx_string* %6362)
  call void @nyx_sb_append(i8* %6358, %nyx_string* %6363)
  %6364 = load i8*, i8** %6133
  %6365 = load %nyx_string*, %nyx_string** %6211
  %6366 = load %nyx_string*, %nyx_string** %6276
  %6367 = call %nyx_string* @nyx_string_concat(%nyx_string* %6365, %nyx_string* %6366)
  %6368 = load %nyx_string*, %nyx_string** %6214
  %6369 = call %nyx_string* @nyx_string_concat(%nyx_string* %6367, %nyx_string* %6368)
  call void @nyx_sb_append(i8* %6364, %nyx_string* %6369)
  %6370 = load i8*, i8** %6133
  %6371 = load %nyx_string*, %nyx_string** %6217
  %6372 = load %nyx_string*, %nyx_string** %6271
  %6373 = call %nyx_string* @nyx_string_concat(%nyx_string* %6371, %nyx_string* %6372)
  %6374 = load %nyx_string*, %nyx_string** %6220
  %6375 = call %nyx_string* @nyx_string_concat(%nyx_string* %6373, %nyx_string* %6374)
  call void @nyx_sb_append(i8* %6370, %nyx_string* %6375)
  %6376 = load i8*, i8** %6133
  %6377 = load %nyx_string*, %nyx_string** %6223
  %6378 = load %nyx_string*, %nyx_string** %6329
  %6379 = call %nyx_string* @nyx_string_concat(%nyx_string* %6377, %nyx_string* %6378)
  %6380 = load %nyx_string*, %nyx_string** %6226
  %6381 = call %nyx_string* @nyx_string_concat(%nyx_string* %6379, %nyx_string* %6380)
  call void @nyx_sb_append(i8* %6376, %nyx_string* %6381)
  %6382 = load i8*, i8** %6133
  %6383 = load %nyx_string*, %nyx_string** %6229
  %6384 = load %nyx_string*, %nyx_string** %6307
  %6385 = call %nyx_string* @nyx_string_concat(%nyx_string* %6383, %nyx_string* %6384)
  %6386 = load %nyx_string*, %nyx_string** %6196
  %6387 = call %nyx_string* @nyx_string_concat(%nyx_string* %6385, %nyx_string* %6386)
  call void @nyx_sb_append(i8* %6382, %nyx_string* %6387)
  %6388 = load i8*, i8** %6133
  %6389 = load %nyx_string*, %nyx_string** %6232
  %6390 = load %nyx_string*, %nyx_string** %6271
  %6391 = call %nyx_string* @nyx_string_concat(%nyx_string* %6389, %nyx_string* %6390)
  %6392 = load %nyx_string*, %nyx_string** %6235
  %6393 = call %nyx_string* @nyx_string_concat(%nyx_string* %6391, %nyx_string* %6392)
  call void @nyx_sb_append(i8* %6388, %nyx_string* %6393)
  %6394 = load i8*, i8** %6133
  %6395 = load %nyx_string*, %nyx_string** %6238
  call void @nyx_sb_append(i8* %6394, %nyx_string* %6395)
  %6396 = load i8*, i8** %6133
  %6397 = load %nyx_string*, %nyx_string** %6241
  %6398 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %6399 = call %nyx_string* @nyx_string_concat(%nyx_string* %6397, %nyx_string* %6398)
  %6400 = load %nyx_string*, %nyx_string** %6244
  %6401 = call %nyx_string* @nyx_string_concat(%nyx_string* %6399, %nyx_string* %6400)
  %6402 = load %nyx_string*, %nyx_string** %6297
  %6403 = call %nyx_string* @nyx_string_concat(%nyx_string* %6401, %nyx_string* %6402)
  %6404 = load %nyx_string*, %nyx_string** %6247
  %6405 = call %nyx_string* @nyx_string_concat(%nyx_string* %6403, %nyx_string* %6404)
  %6406 = load %nyx_string*, %nyx_string** %6271
  %6407 = call %nyx_string* @nyx_string_concat(%nyx_string* %6405, %nyx_string* %6406)
  %6408 = load %nyx_string*, %nyx_string** %6250
  %6409 = call %nyx_string* @nyx_string_concat(%nyx_string* %6407, %nyx_string* %6408)
  call void @nyx_sb_append(i8* %6396, %nyx_string* %6409)
  %6410 = load i8*, i8** %6133
  %6411 = load %nyx_string*, %nyx_string** %6253
  %6412 = load %nyx_string*, %nyx_string** %6297
  %6413 = call %nyx_string* @nyx_string_concat(%nyx_string* %6411, %nyx_string* %6412)
  %6414 = load %nyx_string*, %nyx_string** %6190
  %6415 = call %nyx_string* @nyx_string_concat(%nyx_string* %6413, %nyx_string* %6414)
  %6416 = load %nyx_string*, %nyx_string** %6271
  %6417 = call %nyx_string* @nyx_string_concat(%nyx_string* %6415, %nyx_string* %6416)
  %6418 = load %nyx_string*, %nyx_string** %6193
  %6419 = call %nyx_string* @nyx_string_concat(%nyx_string* %6417, %nyx_string* %6418)
  %6420 = load %nyx_string*, %nyx_string** %6297
  %6421 = call %nyx_string* @nyx_string_concat(%nyx_string* %6419, %nyx_string* %6420)
  %6422 = load %nyx_string*, %nyx_string** %6256
  %6423 = call %nyx_string* @nyx_string_concat(%nyx_string* %6421, %nyx_string* %6422)
  call void @nyx_sb_append(i8* %6410, %nyx_string* %6423)
  %6424 = load i8*, i8** %6133
  %6425 = load %nyx_string*, %nyx_string** %6259
  call void @nyx_sb_append(i8* %6424, %nyx_string* %6425)
  %6426 = load i64, i64* %6139
  %6427 = add i64 %6426, 1
  store i64 %6427, i64* %6139
  br label %while_cond1130
while_end1132:
  %6428 = load i8*, i8** %6133
  %6429 = call %nyx_string* @nyx_sb_to_string(i8* %6428)
  ret %nyx_string* %6429
}

define internal i1 @run_libs(
%ProjectConfig %config.param, i1 %release.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %6430 = getelementptr [9 x i8], [9 x i8]* @.str765, i32 0, i32 0
  %6431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %6430, i64 8)
  %6432 = call i8* @nyx_string_to_cstr(%nyx_string* %6431)
  %6433 = call %nyx_string* @nyx_getenv(i8* %6432)
  %6434 = alloca %nyx_string*
  store %nyx_string* %6433, %nyx_string** %6434
  %6435 = load %nyx_string*, %nyx_string** %6434
  %6436 = getelementptr [1 x i8], [1 x i8]* @.str766, i32 0, i32 0
  %6437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %6436, i64 0)
  %6438 = call i1 @nyx_string_equals(%nyx_string* %6435, %nyx_string* %6437)
  br i1 %6438, label %then1133, label %else1134
then1133:
  %6439 = getelementptr [5 x i8], [5 x i8]* @.str767, i32 0, i32 0
  %6440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %6439, i64 4)
  %6441 = call i8* @nyx_string_to_cstr(%nyx_string* %6440)
  %6442 = call %nyx_string* @nyx_getenv(i8* %6441)
  %6443 = alloca %nyx_string*
  store %nyx_string* %6442, %nyx_string** %6443
  %6444 = alloca i1
  store i1 false, i1* %6444
  %6445 = load %nyx_string*, %nyx_string** %6443
  %6446 = getelementptr [1 x i8], [1 x i8]* @.str768, i32 0, i32 0
  %6447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %6446, i64 0)
  %6448 = call i1 @nyx_string_equals(%nyx_string* %6445, %nyx_string* %6447)
  %6449 = xor i1 %6448, true
  br i1 %6449, label %sc_and_rhs1136, label %sc_and_end1137
sc_and_rhs1136:
  %6450 = load %nyx_string*, %nyx_string** %6443
  %6451 = getelementptr [24 x i8], [24 x i8]* @.str769, i32 0, i32 0
  %6452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %6451, i64 23)
  %6453 = call %nyx_string* @nyx_string_concat(%nyx_string* %6450, %nyx_string* %6452)
  %6454 = call i8* @nyx_string_to_cstr(%nyx_string* %6453)
  %6455 = call i1 @nyx_file_exists(i8* %6454)
  store i1 %6455, i1* %6444
  br label %sc_and_end1137
sc_and_end1137:
  %6456 = load i1, i1* %6444
  br i1 %6456, label %then1138, label %else1139
then1138:
  %6457 = load %nyx_string*, %nyx_string** %6443
  %6458 = getelementptr [6 x i8], [6 x i8]* @.str770, i32 0, i32 0
  %6459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %6458, i64 5)
  %6460 = call %nyx_string* @nyx_string_concat(%nyx_string* %6457, %nyx_string* %6459)
  store %nyx_string* %6460, %nyx_string** %6434
  br label %merge1140
else1139:
  br label %merge1140
merge1140:
  br label %merge1135
else1134:
  br label %merge1135
merge1135:
  %6461 = alloca i1
  store i1 false, i1* %6461
  %6462 = load %nyx_string*, %nyx_string** %6434
  %6463 = getelementptr [1 x i8], [1 x i8]* @.str771, i32 0, i32 0
  %6464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %6463, i64 0)
  %6465 = call i1 @nyx_string_equals(%nyx_string* %6462, %nyx_string* %6464)
  br i1 %6465, label %sc_and_rhs1141, label %sc_and_end1142
sc_and_rhs1141:
  %6466 = getelementptr [14 x i8], [14 x i8]* @.str772, i32 0, i32 0
  %6467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %6466, i64 13)
  %6468 = call i8* @nyx_string_to_cstr(%nyx_string* %6467)
  %6469 = call i1 @nyx_file_exists(i8* %6468)
  store i1 %6469, i1* %6461
  br label %sc_and_end1142
sc_and_end1142:
  %6470 = load i1, i1* %6461
  br i1 %6470, label %then1143, label %else1144
then1143:
  %6471 = getelementptr [2 x i8], [2 x i8]* @.str773, i32 0, i32 0
  %6472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %6471, i64 1)
  store %nyx_string* %6472, %nyx_string** %6434
  br label %merge1145
else1144:
  br label %merge1145
merge1145:
  %6473 = load %nyx_string*, %nyx_string** %6434
  %6474 = getelementptr [1 x i8], [1 x i8]* @.str774, i32 0, i32 0
  %6475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %6474, i64 0)
  %6476 = call i1 @nyx_string_equals(%nyx_string* %6473, %nyx_string* %6475)
  br i1 %6476, label %then1146, label %else1147
then1146:
  %6477 = getelementptr [56 x i8], [56 x i8]* @.str775, i32 0, i32 0
  %6478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %6477, i64 55)
  %6479 = call i8* @nyx_string_to_cstr(%nyx_string* %6478)
  call void @nyx_print_string(i8* %6479)
  ret i1 0
else1147:
  br label %merge1148
merge1148:
  %6480 = load %nyx_string*, %nyx_string** %6434
  %6481 = getelementptr [15 x i8], [15 x i8]* @.str776, i32 0, i32 0
  %6482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %6481, i64 14)
  %6483 = call %nyx_string* @nyx_string_concat(%nyx_string* %6480, %nyx_string* %6482)
  %6484 = alloca %nyx_string*
  store %nyx_string* %6483, %nyx_string** %6484
  %6485 = load %nyx_string*, %nyx_string** %6484
  %6486 = call i8* @nyx_string_to_cstr(%nyx_string* %6485)
  %6487 = call i1 @nyx_file_exists(i8* %6486)
  %6488 = xor i1 %6487, true
  br i1 %6488, label %then1149, label %else1150
then1149:
  %6489 = load %nyx_string*, %nyx_string** %6434
  %6490 = getelementptr [9 x i8], [9 x i8]* @.str777, i32 0, i32 0
  %6491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %6490, i64 8)
  %6492 = call %nyx_string* @nyx_string_concat(%nyx_string* %6489, %nyx_string* %6491)
  store %nyx_string* %6492, %nyx_string** %6484
  br label %merge1151
else1150:
  br label %merge1151
merge1151:
  %6493 = getelementptr [1 x i8], [1 x i8]* @.str778, i32 0, i32 0
  %6494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %6493, i64 0)
  %6495 = alloca %nyx_string*
  store %nyx_string* %6494, %nyx_string** %6495
  %6496 = load i1, i1* %release.ptr
  br i1 %6496, label %then1152, label %else1153
then1152:
  %6497 = getelementptr [4 x i8], [4 x i8]* @.str779, i32 0, i32 0
  %6498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %6497, i64 3)
  store %nyx_string* %6498, %nyx_string** %6495
  br label %merge1154
else1153:
  br label %merge1154
merge1154:
  %6499 = getelementptr [1 x i8], [1 x i8]* @.str780, i32 0, i32 0
  %6500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %6499, i64 0)
  %6501 = alloca %nyx_string*
  store %nyx_string* %6500, %nyx_string** %6501
  %6502 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %6503 = load i1, i1* %6502
  br i1 %6503, label %then1155, label %else1156
then1155:
  %6504 = getelementptr [13 x i8], [13 x i8]* @.str781, i32 0, i32 0
  %6505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %6504, i64 12)
  store %nyx_string* %6505, %nyx_string** %6501
  br label %merge1157
else1156:
  br label %merge1157
merge1157:
  %6506 = getelementptr [20 x i8], [20 x i8]* @.str782, i32 0, i32 0
  %6507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %6506, i64 19)
  %6508 = call %nyx_string* @pila_compilador_sh()
  %6509 = call %nyx_string* @nyx_string_concat(%nyx_string* %6507, %nyx_string* %6508)
  %6510 = call %nyx_string* @pila_compilador_pista_sh()
  %6511 = call %nyx_string* @nyx_string_concat(%nyx_string* %6509, %nyx_string* %6510)
  %6512 = alloca %nyx_string*
  store %nyx_string* %6511, %nyx_string** %6512
  %6513 = load %nyx_string*, %nyx_string** %6512
  %6514 = getelementptr [86 x i8], [86 x i8]* @.str783, i32 0, i32 0
  %6515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %6514, i64 85)
  %6516 = call %nyx_string* @nyx_string_concat(%nyx_string* %6513, %nyx_string* %6515)
  store %nyx_string* %6516, %nyx_string** %6512
  %6517 = load %nyx_string*, %nyx_string** %6512
  %6518 = getelementptr [5 x i8], [5 x i8]* @.str784, i32 0, i32 0
  %6519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %6518, i64 4)
  %6520 = call %nyx_string* @nyx_string_concat(%nyx_string* %6517, %nyx_string* %6519)
  %6521 = load %nyx_string*, %nyx_string** %6434
  %6522 = call %nyx_string* @nyx_string_concat(%nyx_string* %6520, %nyx_string* %6521)
  %6523 = getelementptr [3 x i8], [3 x i8]* @.str785, i32 0, i32 0
  %6524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %6523, i64 2)
  %6525 = call %nyx_string* @nyx_string_concat(%nyx_string* %6522, %nyx_string* %6524)
  store %nyx_string* %6525, %nyx_string** %6512
  %6526 = load %nyx_string*, %nyx_string** %6512
  %6527 = getelementptr [51 x i8], [51 x i8]* @.str786, i32 0, i32 0
  %6528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %6527, i64 50)
  %6529 = call %nyx_string* @nyx_string_concat(%nyx_string* %6526, %nyx_string* %6528)
  %6530 = load %nyx_string*, %nyx_string** %6434
  %6531 = call %nyx_string* @nyx_string_concat(%nyx_string* %6529, %nyx_string* %6530)
  %6532 = getelementptr [35 x i8], [35 x i8]* @.str787, i32 0, i32 0
  %6533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %6532, i64 34)
  %6534 = call %nyx_string* @nyx_string_concat(%nyx_string* %6531, %nyx_string* %6533)
  store %nyx_string* %6534, %nyx_string** %6512
  %6535 = load %nyx_string*, %nyx_string** %6512
  %6536 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %6537 = load %nyx_string*, %nyx_string** %6434
  %6538 = load %nyx_string*, %nyx_string** %6484
  %6539 = load %nyx_string*, %nyx_string** %6495
  %6540 = load %nyx_string*, %nyx_string** %6501
  %6541 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %6536, %nyx_string* %6537, %nyx_string* %6538, %nyx_string* %6539, %nyx_string* %6540)
  %6542 = call %nyx_string* @nyx_string_concat(%nyx_string* %6535, %nyx_string* %6541)
  store %nyx_string* %6542, %nyx_string** %6512
  %6543 = load %nyx_string*, %nyx_string** %6512
  %6544 = getelementptr [29 x i8], [29 x i8]* @.str788, i32 0, i32 0
  %6545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %6544, i64 28)
  %6546 = call %nyx_string* @nyx_string_concat(%nyx_string* %6543, %nyx_string* %6545)
  store %nyx_string* %6546, %nyx_string** %6512
  %6547 = getelementptr [15 x i8], [15 x i8]* @.str789, i32 0, i32 0
  %6548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %6547, i64 14)
  %6549 = call i64 @nyx_getpid()
  %6550 = call %nyx_string* @nyx_string_from_int(i64 %6549)
  %6551 = call %nyx_string* @nyx_string_concat(%nyx_string* %6548, %nyx_string* %6550)
  %6552 = getelementptr [4 x i8], [4 x i8]* @.str790, i32 0, i32 0
  %6553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %6552, i64 3)
  %6554 = call %nyx_string* @nyx_string_concat(%nyx_string* %6551, %nyx_string* %6553)
  %6555 = alloca %nyx_string*
  store %nyx_string* %6554, %nyx_string** %6555
  %6556 = load %nyx_string*, %nyx_string** %6555
  %6557 = load %nyx_string*, %nyx_string** %6512
  %6558 = ptrtoint %nyx_string* %6557 to i64
  %6559 = call i8* @nyx_string_to_cstr(%nyx_string* %6556)
  %6560 = inttoptr i64 %6558 to %nyx_string*
  %6561 = call i1 @nyx_write_file_safe(i8* %6559, %nyx_string* %6560)
  %6562 = getelementptr [7 x i8], [7 x i8]* @.str791, i32 0, i32 0
  %6563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %6562, i64 6)
  %6564 = load %nyx_string*, %nyx_string** %6555
  %6565 = call %nyx_string* @nyx_string_concat(%nyx_string* %6563, %nyx_string* %6564)
  %6566 = getelementptr [22 x i8], [22 x i8]* @.str792, i32 0, i32 0
  %6567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %6566, i64 21)
  %6568 = call %nyx_string* @nyx_string_concat(%nyx_string* %6565, %nyx_string* %6567)
  %6569 = load %nyx_string*, %nyx_string** %6555
  %6570 = call %nyx_string* @nyx_string_concat(%nyx_string* %6568, %nyx_string* %6569)
  %6571 = getelementptr [16 x i8], [16 x i8]* @.str793, i32 0, i32 0
  %6572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %6571, i64 15)
  %6573 = call %nyx_string* @nyx_string_concat(%nyx_string* %6570, %nyx_string* %6572)
  %6574 = call i8* @nyx_string_to_cstr(%nyx_string* %6573)
  %6575 = call i64 @nyx_exec_code(i8* %6574)
  %6576 = alloca i64
  store i64 %6575, i64* %6576
  %6577 = load i64, i64* %6576
  %6578 = icmp eq i64 %6577, 0
  ret i1 %6578
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %6579 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %6580 = load %nyx_string*, %nyx_string** %6579
  %6581 = alloca %nyx_string*
  store %nyx_string* %6580, %nyx_string** %6581
  %6582 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %6583 = getelementptr [1 x i8], [1 x i8]* @.str794, i32 0, i32 0
  %6584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %6583, i64 0)
  %6585 = call i1 @nyx_string_equals(%nyx_string* %6582, %nyx_string* %6584)
  %6586 = xor i1 %6585, true
  br i1 %6586, label %then1158, label %else1159
then1158:
  %6587 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %6587, %nyx_string** %6581
  br label %merge1160
else1159:
  br label %merge1160
merge1160:
  %6588 = getelementptr [1 x i8], [1 x i8]* @.str795, i32 0, i32 0
  %6589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %6588, i64 0)
  %6590 = alloca %nyx_string*
  store %nyx_string* %6589, %nyx_string** %6590
  %6591 = load %nyx_string*, %nyx_string** %6581
  %6592 = getelementptr [1 x i8], [1 x i8]* @.str796, i32 0, i32 0
  %6593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %6592, i64 0)
  %6594 = call i1 @nyx_string_equals(%nyx_string* %6591, %nyx_string* %6593)
  %6595 = xor i1 %6594, true
  br i1 %6595, label %then1161, label %else1162
then1161:
  %6596 = getelementptr [3 x i8], [3 x i8]* @.str797, i32 0, i32 0
  %6597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %6596, i64 2)
  %6598 = load %nyx_string*, %nyx_string** %6581
  %6599 = call %nyx_string* @nyx_string_concat(%nyx_string* %6597, %nyx_string* %6598)
  %6600 = getelementptr [2 x i8], [2 x i8]* @.str798, i32 0, i32 0
  %6601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %6600, i64 1)
  %6602 = call %nyx_string* @nyx_string_concat(%nyx_string* %6599, %nyx_string* %6601)
  store %nyx_string* %6602, %nyx_string** %6590
  br label %merge1163
else1162:
  br label %merge1163
merge1163:
  %6603 = getelementptr [13 x i8], [13 x i8]* @.str799, i32 0, i32 0
  %6604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %6603, i64 12)
  %6605 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %6606 = load %nyx_string*, %nyx_string** %6605
  %6607 = call %nyx_string* @nyx_string_concat(%nyx_string* %6604, %nyx_string* %6606)
  %6608 = getelementptr [3 x i8], [3 x i8]* @.str800, i32 0, i32 0
  %6609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %6608, i64 2)
  %6610 = call %nyx_string* @nyx_string_concat(%nyx_string* %6607, %nyx_string* %6609)
  %6611 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %6612 = load %nyx_string*, %nyx_string** %6611
  %6613 = call %nyx_string* @nyx_string_concat(%nyx_string* %6610, %nyx_string* %6612)
  %6614 = load %nyx_string*, %nyx_string** %6590
  %6615 = call %nyx_string* @nyx_string_concat(%nyx_string* %6613, %nyx_string* %6614)
  %6616 = call i8* @nyx_string_to_cstr(%nyx_string* %6615)
  call void @nyx_print_string(i8* %6616)
  %6617 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %6618 = call i1 @resolve_deps(%ProjectConfig %6617)
  %6619 = alloca i1
  store i1 %6618, i1* %6619
  %6620 = load i1, i1* %6619
  %6621 = icmp eq i1 %6620, 0
  br i1 %6621, label %then1164, label %else1165
then1164:
  ret i1 0
else1165:
  br label %merge1166
merge1166:
  %6622 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6623 = load %nyx_string*, %nyx_string** %6622
  %6624 = call i8* @nyx_string_to_cstr(%nyx_string* %6623)
  %6625 = call i1 @nyx_file_exists(i8* %6624)
  %6626 = xor i1 %6625, true
  br i1 %6626, label %then1167, label %else1168
then1167:
  %6627 = getelementptr [29 x i8], [29 x i8]* @.str801, i32 0, i32 0
  %6628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %6627, i64 28)
  %6629 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6630 = load %nyx_string*, %nyx_string** %6629
  %6631 = call %nyx_string* @nyx_string_concat(%nyx_string* %6628, %nyx_string* %6630)
  %6632 = call i8* @nyx_string_to_cstr(%nyx_string* %6631)
  call void @nyx_print_string(i8* %6632)
  ret i1 0
else1168:
  br label %merge1169
merge1169:
  %6633 = getelementptr [1 x i8], [1 x i8]* @.str802, i32 0, i32 0
  %6634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %6633, i64 0)
  %6635 = alloca %nyx_string*
  store %nyx_string* %6634, %nyx_string** %6635
  %6636 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %6637 = load i1, i1* %6636
  br i1 %6637, label %then1170, label %else1171
then1170:
  %6638 = getelementptr [13 x i8], [13 x i8]* @.str803, i32 0, i32 0
  %6639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %6638, i64 12)
  store %nyx_string* %6639, %nyx_string** %6635
  br label %merge1172
else1171:
  br label %merge1172
merge1172:
  %6640 = getelementptr [14 x i8], [14 x i8]* @.str804, i32 0, i32 0
  %6641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %6640, i64 13)
  %6642 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6643 = load %nyx_string*, %nyx_string** %6642
  %6644 = call %nyx_string* @nyx_string_concat(%nyx_string* %6641, %nyx_string* %6643)
  %6645 = call i8* @nyx_string_to_cstr(%nyx_string* %6644)
  call void @nyx_print_string(i8* %6645)
  %6646 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %6647 = load %nyx_string*, %nyx_string** %6646
  %6648 = alloca %nyx_string*
  store %nyx_string* %6647, %nyx_string** %6648
  %6649 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %6650 = load %nyx_string*, %nyx_string** %6649
  %6651 = getelementptr [1 x i8], [1 x i8]* @.str805, i32 0, i32 0
  %6652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %6651, i64 0)
  %6653 = call i1 @nyx_string_equals(%nyx_string* %6650, %nyx_string* %6652)
  %6654 = xor i1 %6653, true
  br i1 %6654, label %then1173, label %else1174
then1173:
  %6655 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %6656 = load %nyx_string*, %nyx_string** %6655
  store %nyx_string* %6656, %nyx_string** %6648
  br label %merge1175
else1174:
  br label %merge1175
merge1175:
  %6657 = load %nyx_string*, %nyx_string** %6648
  %6658 = alloca %nyx_string*
  store %nyx_string* %6657, %nyx_string** %6658
  %6659 = getelementptr [1 x i8], [1 x i8]* @.str806, i32 0, i32 0
  %6660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %6659, i64 0)
  %6661 = alloca %nyx_string*
  store %nyx_string* %6660, %nyx_string** %6661
  %6662 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %6663 = load %nyx_string*, %nyx_string** %6662
  %6664 = getelementptr [1 x i8], [1 x i8]* @.str807, i32 0, i32 0
  %6665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %6664, i64 0)
  %6666 = call i1 @nyx_string_equals(%nyx_string* %6663, %nyx_string* %6665)
  %6667 = xor i1 %6666, true
  br i1 %6667, label %then1176, label %else1177
then1176:
  %6668 = getelementptr [8 x i8], [8 x i8]* @.str808, i32 0, i32 0
  %6669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %6668, i64 7)
  %6670 = load %nyx_string*, %nyx_string** %6648
  %6671 = call %nyx_string* @nyx_string_concat(%nyx_string* %6669, %nyx_string* %6670)
  store %nyx_string* %6671, %nyx_string** %6658
  %6672 = getelementptr [29 x i8], [29 x i8]* @.str809, i32 0, i32 0
  %6673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %6672, i64 28)
  store %nyx_string* %6673, %nyx_string** %6661
  br label %merge1178
else1177:
  br label %merge1178
merge1178:
  %6674 = getelementptr [1 x i8], [1 x i8]* @.str810, i32 0, i32 0
  %6675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %6674, i64 0)
  %6676 = alloca %nyx_string*
  store %nyx_string* %6675, %nyx_string** %6676
  %6677 = load i1, i1* %release.ptr
  br i1 %6677, label %then1179, label %else1180
then1179:
  %6678 = getelementptr [4 x i8], [4 x i8]* @.str811, i32 0, i32 0
  %6679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %6678, i64 3)
  store %nyx_string* %6679, %nyx_string** %6676
  br label %merge1181
else1180:
  br label %merge1181
merge1181:
  %6680 = getelementptr [9 x i8], [9 x i8]* @.str812, i32 0, i32 0
  %6681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %6680, i64 8)
  %6682 = call i8* @nyx_string_to_cstr(%nyx_string* %6681)
  %6683 = call %nyx_string* @nyx_getenv(i8* %6682)
  %6684 = alloca %nyx_string*
  store %nyx_string* %6683, %nyx_string** %6684
  %6685 = load %nyx_string*, %nyx_string** %6684
  %6686 = getelementptr [1 x i8], [1 x i8]* @.str813, i32 0, i32 0
  %6687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %6686, i64 0)
  %6688 = call i1 @nyx_string_equals(%nyx_string* %6685, %nyx_string* %6687)
  br i1 %6688, label %then1182, label %else1183
then1182:
  %6689 = getelementptr [5 x i8], [5 x i8]* @.str814, i32 0, i32 0
  %6690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %6689, i64 4)
  %6691 = call i8* @nyx_string_to_cstr(%nyx_string* %6690)
  %6692 = call %nyx_string* @nyx_getenv(i8* %6691)
  %6693 = alloca %nyx_string*
  store %nyx_string* %6692, %nyx_string** %6693
  %6694 = load %nyx_string*, %nyx_string** %6693
  %6695 = getelementptr [6 x i8], [6 x i8]* @.str815, i32 0, i32 0
  %6696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %6695, i64 5)
  %6697 = call %nyx_string* @nyx_string_concat(%nyx_string* %6694, %nyx_string* %6696)
  %6698 = alloca %nyx_string*
  store %nyx_string* %6697, %nyx_string** %6698
  %6699 = alloca i1
  store i1 false, i1* %6699
  %6700 = load %nyx_string*, %nyx_string** %6693
  %6701 = getelementptr [1 x i8], [1 x i8]* @.str816, i32 0, i32 0
  %6702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %6701, i64 0)
  %6703 = call i1 @nyx_string_equals(%nyx_string* %6700, %nyx_string* %6702)
  %6704 = xor i1 %6703, true
  br i1 %6704, label %sc_and_rhs1185, label %sc_and_end1186
sc_and_rhs1185:
  %6705 = load %nyx_string*, %nyx_string** %6698
  %6706 = getelementptr [19 x i8], [19 x i8]* @.str817, i32 0, i32 0
  %6707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %6706, i64 18)
  %6708 = call %nyx_string* @nyx_string_concat(%nyx_string* %6705, %nyx_string* %6707)
  %6709 = call i8* @nyx_string_to_cstr(%nyx_string* %6708)
  %6710 = call i1 @nyx_file_exists(i8* %6709)
  store i1 %6710, i1* %6699
  br label %sc_and_end1186
sc_and_end1186:
  %6711 = load i1, i1* %6699
  br i1 %6711, label %then1187, label %else1188
then1187:
  %6712 = load %nyx_string*, %nyx_string** %6698
  store %nyx_string* %6712, %nyx_string** %6684
  br label %merge1189
else1188:
  br label %merge1189
merge1189:
  br label %merge1184
else1183:
  br label %merge1184
merge1184:
  %6713 = load %nyx_string*, %nyx_string** %6684
  %6714 = getelementptr [1 x i8], [1 x i8]* @.str818, i32 0, i32 0
  %6715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %6714, i64 0)
  %6716 = call i1 @nyx_string_equals(%nyx_string* %6713, %nyx_string* %6715)
  br i1 %6716, label %then1190, label %else1191
then1190:
  %6717 = getelementptr [14 x i8], [14 x i8]* @.str819, i32 0, i32 0
  %6718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %6717, i64 13)
  %6719 = call i8* @nyx_string_to_cstr(%nyx_string* %6718)
  %6720 = call i1 @nyx_file_exists(i8* %6719)
  br i1 %6720, label %then1193, label %else1194
then1193:
  %6721 = getelementptr [2 x i8], [2 x i8]* @.str820, i32 0, i32 0
  %6722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %6721, i64 1)
  store %nyx_string* %6722, %nyx_string** %6684
  br label %merge1195
else1194:
  br label %merge1195
merge1195:
  br label %merge1192
else1191:
  br label %merge1192
merge1192:
  %6723 = load %nyx_string*, %nyx_string** %6684
  %6724 = getelementptr [1 x i8], [1 x i8]* @.str821, i32 0, i32 0
  %6725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %6724, i64 0)
  %6726 = call i1 @nyx_string_equals(%nyx_string* %6723, %nyx_string* %6725)
  br i1 %6726, label %then1196, label %else1197
then1196:
  %6727 = getelementptr [56 x i8], [56 x i8]* @.str822, i32 0, i32 0
  %6728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %6727, i64 55)
  %6729 = call i8* @nyx_string_to_cstr(%nyx_string* %6728)
  call void @nyx_print_string(i8* %6729)
  ret i1 0
else1197:
  br label %merge1198
merge1198:
  %6730 = load %nyx_string*, %nyx_string** %6684
  %6731 = getelementptr [15 x i8], [15 x i8]* @.str823, i32 0, i32 0
  %6732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %6731, i64 14)
  %6733 = call %nyx_string* @nyx_string_concat(%nyx_string* %6730, %nyx_string* %6732)
  %6734 = alloca %nyx_string*
  store %nyx_string* %6733, %nyx_string** %6734
  %6735 = load %nyx_string*, %nyx_string** %6734
  %6736 = call i8* @nyx_string_to_cstr(%nyx_string* %6735)
  %6737 = call i1 @nyx_file_exists(i8* %6736)
  %6738 = xor i1 %6737, true
  br i1 %6738, label %then1199, label %else1200
then1199:
  %6739 = load %nyx_string*, %nyx_string** %6684
  %6740 = getelementptr [9 x i8], [9 x i8]* @.str824, i32 0, i32 0
  %6741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %6740, i64 8)
  %6742 = call %nyx_string* @nyx_string_concat(%nyx_string* %6739, %nyx_string* %6741)
  store %nyx_string* %6742, %nyx_string** %6734
  br label %merge1201
else1200:
  br label %merge1201
merge1201:
  %6743 = load %nyx_string*, %nyx_string** %6684
  %6744 = getelementptr [9 x i8], [9 x i8]* @.str825, i32 0, i32 0
  %6745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %6744, i64 8)
  %6746 = call %nyx_string* @nyx_string_concat(%nyx_string* %6743, %nyx_string* %6745)
  %6747 = alloca %nyx_string*
  store %nyx_string* %6746, %nyx_string** %6747
  %6748 = getelementptr [50 x i8], [50 x i8]* @.str826, i32 0, i32 0
  %6749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %6748, i64 49)
  %6750 = getelementptr [77 x i8], [77 x i8]* @.str827, i32 0, i32 0
  %6751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %6750, i64 76)
  %6752 = call %nyx_string* @nyx_string_concat(%nyx_string* %6749, %nyx_string* %6751)
  %6753 = getelementptr [89 x i8], [89 x i8]* @.str828, i32 0, i32 0
  %6754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %6753, i64 88)
  %6755 = call %nyx_string* @nyx_string_concat(%nyx_string* %6752, %nyx_string* %6754)
  %6756 = getelementptr [83 x i8], [83 x i8]* @.str829, i32 0, i32 0
  %6757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %6756, i64 82)
  %6758 = call %nyx_string* @nyx_string_concat(%nyx_string* %6755, %nyx_string* %6757)
  %6759 = getelementptr [65 x i8], [65 x i8]* @.str830, i32 0, i32 0
  %6760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %6759, i64 64)
  %6761 = call %nyx_string* @nyx_string_concat(%nyx_string* %6758, %nyx_string* %6760)
  %6762 = alloca %nyx_string*
  store %nyx_string* %6761, %nyx_string** %6762
  %6763 = getelementptr [15 x i8], [15 x i8]* @.str831, i32 0, i32 0
  %6764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %6763, i64 14)
  %6765 = call i8* @nyx_string_to_cstr(%nyx_string* %6764)
  %6766 = call %nyx_string* @nyx_getenv(i8* %6765)
  %6767 = alloca %nyx_string*
  store %nyx_string* %6766, %nyx_string** %6767
  %6768 = call %nyx_string* @rt_cache_sh()
  %6769 = getelementptr [8 x i8], [8 x i8]* @.str832, i32 0, i32 0
  %6770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %6769, i64 7)
  %6771 = call %nyx_string* @nyx_string_concat(%nyx_string* %6768, %nyx_string* %6770)
  %6772 = load %nyx_string*, %nyx_string** %6762
  %6773 = call %nyx_string* @nyx_string_concat(%nyx_string* %6771, %nyx_string* %6772)
  %6774 = getelementptr [3 x i8], [3 x i8]* @.str833, i32 0, i32 0
  %6775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %6774, i64 2)
  %6776 = call %nyx_string* @nyx_string_concat(%nyx_string* %6773, %nyx_string* %6775)
  %6777 = alloca %nyx_string*
  store %nyx_string* %6776, %nyx_string** %6777
  %6778 = load %nyx_string*, %nyx_string** %6777
  %6779 = getelementptr [17 x i8], [17 x i8]* @.str834, i32 0, i32 0
  %6780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %6779, i64 16)
  %6781 = call %nyx_string* @nyx_string_concat(%nyx_string* %6778, %nyx_string* %6780)
  %6782 = load %nyx_string*, %nyx_string** %6676
  %6783 = call %nyx_string* @nyx_string_concat(%nyx_string* %6781, %nyx_string* %6782)
  %6784 = getelementptr [3 x i8], [3 x i8]* @.str835, i32 0, i32 0
  %6785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %6784, i64 2)
  %6786 = call %nyx_string* @nyx_string_concat(%nyx_string* %6783, %nyx_string* %6785)
  %6787 = load %nyx_string*, %nyx_string** %6762
  %6788 = call %nyx_string* @nyx_string_concat(%nyx_string* %6786, %nyx_string* %6787)
  %6789 = getelementptr [31 x i8], [31 x i8]* @.str836, i32 0, i32 0
  %6790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %6789, i64 30)
  %6791 = call %nyx_string* @nyx_string_concat(%nyx_string* %6788, %nyx_string* %6790)
  store %nyx_string* %6791, %nyx_string** %6777
  %6792 = alloca i1
  store i1 false, i1* %6792
  %6793 = load %nyx_string*, %nyx_string** %6767
  %6794 = getelementptr [1 x i8], [1 x i8]* @.str837, i32 0, i32 0
  %6795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %6794, i64 0)
  %6796 = call i1 @nyx_string_equals(%nyx_string* %6793, %nyx_string* %6795)
  %6797 = xor i1 %6796, true
  br i1 %6797, label %sc_and_rhs1202, label %sc_and_end1203
sc_and_rhs1202:
  %6798 = load %nyx_string*, %nyx_string** %6767
  %6799 = call i8* @nyx_string_to_cstr(%nyx_string* %6798)
  %6800 = call i1 @nyx_file_exists(i8* %6799)
  store i1 %6800, i1* %6792
  br label %sc_and_end1203
sc_and_end1203:
  %6801 = load i1, i1* %6792
  br i1 %6801, label %then1204, label %else1205
then1204:
  %6802 = load %nyx_string*, %nyx_string** %6767
  %6803 = getelementptr [2 x i8], [2 x i8]* @.str838, i32 0, i32 0
  %6804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %6803, i64 1)
  %6805 = call i1 @nyx_string_starts_with(%nyx_string* %6802, %nyx_string* %6804)
  %6806 = xor i1 %6805, true
  br i1 %6806, label %then1207, label %else1208
then1207:
  %6807 = call %nyx_string* @nyx_getcwd()
  %6808 = getelementptr [2 x i8], [2 x i8]* @.str839, i32 0, i32 0
  %6809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %6808, i64 1)
  %6810 = call %nyx_string* @nyx_string_concat(%nyx_string* %6807, %nyx_string* %6809)
  %6811 = load %nyx_string*, %nyx_string** %6767
  %6812 = call %nyx_string* @nyx_string_concat(%nyx_string* %6810, %nyx_string* %6811)
  store %nyx_string* %6812, %nyx_string** %6767
  br label %merge1209
else1208:
  br label %merge1209
merge1209:
  %6813 = getelementptr [9 x i8], [9 x i8]* @.str840, i32 0, i32 0
  %6814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %6813, i64 8)
  %6815 = load %nyx_string*, %nyx_string** %6767
  %6816 = call %nyx_string* @nyx_string_concat(%nyx_string* %6814, %nyx_string* %6815)
  %6817 = getelementptr [4 x i8], [4 x i8]* @.str841, i32 0, i32 0
  %6818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %6817, i64 3)
  %6819 = call %nyx_string* @nyx_string_concat(%nyx_string* %6816, %nyx_string* %6818)
  store %nyx_string* %6819, %nyx_string** %6777
  br label %merge1206
else1205:
  br label %merge1206
merge1206:
  %6820 = getelementptr [3 x i8], [3 x i8]* @.str842, i32 0, i32 0
  %6821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %6820, i64 2)
  %6822 = getelementptr [13 x i8], [13 x i8]* @.str843, i32 0, i32 0
  %6823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %6822, i64 12)
  %6824 = call %nyx_string* @nyx_string_concat(%nyx_string* %6821, %nyx_string* %6823)
  store %nyx_string* %6824, %nyx_string** %6762
  %6825 = getelementptr [20 x i8], [20 x i8]* @.str844, i32 0, i32 0
  %6826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %6825, i64 19)
  %6827 = call %nyx_string* @pila_compilador_sh()
  %6828 = call %nyx_string* @nyx_string_concat(%nyx_string* %6826, %nyx_string* %6827)
  %6829 = call %nyx_string* @pila_compilador_pista_sh()
  %6830 = call %nyx_string* @nyx_string_concat(%nyx_string* %6828, %nyx_string* %6829)
  %6831 = alloca %nyx_string*
  store %nyx_string* %6830, %nyx_string** %6831
  %6832 = getelementptr [1 x i8], [1 x i8]* @.str845, i32 0, i32 0
  %6833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %6832, i64 0)
  %6834 = alloca %nyx_string*
  store %nyx_string* %6833, %nyx_string** %6834
  %6835 = getelementptr [1 x i8], [1 x i8]* @.str846, i32 0, i32 0
  %6836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %6835, i64 0)
  %6837 = alloca %nyx_string*
  store %nyx_string* %6836, %nyx_string** %6837
  %6838 = alloca i1
  store i1 false, i1* %6838
  %6839 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6840 = load { i64, i8* }*, { i64, i8* }** %6839
  %6841 = call i64 @nyx_array_length({ i64, i8* }* %6840)
  %6842 = icmp sgt i64 %6841, 0
  br i1 %6842, label %sc_and_rhs1210, label %sc_and_end1211
sc_and_rhs1210:
  %6843 = load %nyx_string*, %nyx_string** %6581
  %6844 = getelementptr [12 x i8], [12 x i8]* @.str847, i32 0, i32 0
  %6845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %6844, i64 11)
  %6846 = call i1 @nyx_string_equals(%nyx_string* %6843, %nyx_string* %6845)
  %6847 = xor i1 %6846, true
  store i1 %6847, i1* %6838
  br label %sc_and_end1211
sc_and_end1211:
  %6848 = load i1, i1* %6838
  br i1 %6848, label %then1212, label %else1213
then1212:
  %6849 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %6850 = load %nyx_string*, %nyx_string** %6684
  %6851 = load %nyx_string*, %nyx_string** %6734
  %6852 = load %nyx_string*, %nyx_string** %6676
  %6853 = load %nyx_string*, %nyx_string** %6635
  %6854 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %6849, %nyx_string* %6850, %nyx_string* %6851, %nyx_string* %6852, %nyx_string* %6853)
  store %nyx_string* %6854, %nyx_string** %6834
  %6855 = getelementptr [18 x i8], [18 x i8]* @.str848, i32 0, i32 0
  %6856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %6855, i64 17)
  %6857 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6858 = load { i64, i8* }*, { i64, i8* }** %6857
  %6859 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6860 = load { i64, i8* }*, { i64, i8* }** %6859
  %6861 = getelementptr [2 x i8], [2 x i8]* @.str849, i32 0, i32 0
  %6862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %6861, i64 1)
  %6863 = call %nyx_string* @nyx_string_join({ i64, i8* }* %6860, %nyx_string* %6862)
  %6864 = call %nyx_string* @nyx_string_concat(%nyx_string* %6856, %nyx_string* %6863)
  %6865 = getelementptr [3 x i8], [3 x i8]* @.str850, i32 0, i32 0
  %6866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %6865, i64 2)
  %6867 = call %nyx_string* @nyx_string_concat(%nyx_string* %6864, %nyx_string* %6866)
  store %nyx_string* %6867, %nyx_string** %6837
  br label %merge1214
else1213:
  br label %merge1214
merge1214:
  %6868 = load %nyx_string*, %nyx_string** %6777
  %6869 = load %nyx_string*, %nyx_string** %6834
  %6870 = call %nyx_string* @nyx_string_concat(%nyx_string* %6868, %nyx_string* %6869)
  store %nyx_string* %6870, %nyx_string** %6834
  %6871 = getelementptr [13 x i8], [13 x i8]* @.str851, i32 0, i32 0
  %6872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %6871, i64 12)
  %6873 = load %nyx_string*, %nyx_string** %6635
  %6874 = call %nyx_string* @nyx_string_concat(%nyx_string* %6872, %nyx_string* %6873)
  %6875 = load %nyx_string*, %nyx_string** %6837
  %6876 = call %nyx_string* @nyx_string_concat(%nyx_string* %6874, %nyx_string* %6875)
  %6877 = alloca %nyx_string*
  store %nyx_string* %6876, %nyx_string** %6877
  %6878 = load %nyx_string*, %nyx_string** %6831
  %6879 = getelementptr [19 x i8], [19 x i8]* @.str852, i32 0, i32 0
  %6880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %6879, i64 18)
  %6881 = call %nyx_string* @nyx_string_concat(%nyx_string* %6878, %nyx_string* %6880)
  %6882 = getelementptr [5 x i8], [5 x i8]* @.str853, i32 0, i32 0
  %6883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %6882, i64 4)
  %6884 = call %nyx_string* @nyx_string_concat(%nyx_string* %6881, %nyx_string* %6883)
  %6885 = load %nyx_string*, %nyx_string** %6747
  %6886 = call %nyx_string* @nyx_string_concat(%nyx_string* %6884, %nyx_string* %6885)
  %6887 = getelementptr [3 x i8], [3 x i8]* @.str854, i32 0, i32 0
  %6888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %6887, i64 2)
  %6889 = call %nyx_string* @nyx_string_concat(%nyx_string* %6886, %nyx_string* %6888)
  %6890 = getelementptr [43 x i8], [43 x i8]* @.str855, i32 0, i32 0
  %6891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %6890, i64 42)
  %6892 = call %nyx_string* @nyx_string_concat(%nyx_string* %6889, %nyx_string* %6891)
  %6893 = getelementptr [37 x i8], [37 x i8]* @.str856, i32 0, i32 0
  %6894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %6893, i64 36)
  %6895 = call %nyx_string* @nyx_string_concat(%nyx_string* %6892, %nyx_string* %6894)
  %6896 = getelementptr [17 x i8], [17 x i8]* @.str857, i32 0, i32 0
  %6897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %6896, i64 16)
  %6898 = call %nyx_string* @nyx_string_concat(%nyx_string* %6895, %nyx_string* %6897)
  %6899 = getelementptr [38 x i8], [38 x i8]* @.str858, i32 0, i32 0
  %6900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %6899, i64 37)
  %6901 = call %nyx_string* @nyx_string_concat(%nyx_string* %6898, %nyx_string* %6900)
  %6902 = getelementptr [17 x i8], [17 x i8]* @.str859, i32 0, i32 0
  %6903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %6902, i64 16)
  %6904 = call %nyx_string* @nyx_string_concat(%nyx_string* %6901, %nyx_string* %6903)
  %6905 = getelementptr [15 x i8], [15 x i8]* @.str860, i32 0, i32 0
  %6906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %6905, i64 14)
  %6907 = call %nyx_string* @nyx_string_concat(%nyx_string* %6904, %nyx_string* %6906)
  %6908 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6909 = load %nyx_string*, %nyx_string** %6908
  %6910 = call %nyx_string* @nyx_string_concat(%nyx_string* %6907, %nyx_string* %6909)
  %6911 = getelementptr [12 x i8], [12 x i8]* @.str861, i32 0, i32 0
  %6912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %6911, i64 11)
  %6913 = call %nyx_string* @nyx_string_concat(%nyx_string* %6910, %nyx_string* %6912)
  %6914 = getelementptr [5 x i8], [5 x i8]* @.str862, i32 0, i32 0
  %6915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %6914, i64 4)
  %6916 = call %nyx_string* @nyx_string_concat(%nyx_string* %6913, %nyx_string* %6915)
  %6917 = load %nyx_string*, %nyx_string** %6684
  %6918 = call %nyx_string* @nyx_string_concat(%nyx_string* %6916, %nyx_string* %6917)
  %6919 = getelementptr [3 x i8], [3 x i8]* @.str863, i32 0, i32 0
  %6920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %6919, i64 2)
  %6921 = call %nyx_string* @nyx_string_concat(%nyx_string* %6918, %nyx_string* %6920)
  %6922 = getelementptr [51 x i8], [51 x i8]* @.str864, i32 0, i32 0
  %6923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %6922, i64 50)
  %6924 = call %nyx_string* @nyx_string_concat(%nyx_string* %6921, %nyx_string* %6923)
  %6925 = load %nyx_string*, %nyx_string** %6684
  %6926 = call %nyx_string* @nyx_string_concat(%nyx_string* %6924, %nyx_string* %6925)
  %6927 = getelementptr [35 x i8], [35 x i8]* @.str865, i32 0, i32 0
  %6928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %6927, i64 34)
  %6929 = call %nyx_string* @nyx_string_concat(%nyx_string* %6926, %nyx_string* %6928)
  %6930 = load %nyx_string*, %nyx_string** %6834
  %6931 = call %nyx_string* @nyx_string_concat(%nyx_string* %6929, %nyx_string* %6930)
  %6932 = load %nyx_string*, %nyx_string** %6877
  %6933 = call %nyx_string* @nyx_string_concat(%nyx_string* %6931, %nyx_string* %6932)
  %6934 = getelementptr [35 x i8], [35 x i8]* @.str866, i32 0, i32 0
  %6935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %6934, i64 34)
  %6936 = call %nyx_string* @nyx_string_concat(%nyx_string* %6933, %nyx_string* %6935)
  %6937 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6938 = load %nyx_string*, %nyx_string** %6937
  %6939 = call %nyx_string* @nyx_string_concat(%nyx_string* %6936, %nyx_string* %6938)
  %6940 = getelementptr [32 x i8], [32 x i8]* @.str867, i32 0, i32 0
  %6941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %6940, i64 31)
  %6942 = call %nyx_string* @nyx_string_concat(%nyx_string* %6939, %nyx_string* %6941)
  %6943 = load %nyx_string*, %nyx_string** %6734
  %6944 = call %nyx_string* @nyx_string_concat(%nyx_string* %6942, %nyx_string* %6943)
  %6945 = getelementptr [19 x i8], [19 x i8]* @.str868, i32 0, i32 0
  %6946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %6945, i64 18)
  %6947 = call %nyx_string* @nyx_string_concat(%nyx_string* %6944, %nyx_string* %6946)
  %6948 = getelementptr [93 x i8], [93 x i8]* @.str869, i32 0, i32 0
  %6949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %6948, i64 92)
  %6950 = call %nyx_string* @nyx_string_concat(%nyx_string* %6947, %nyx_string* %6949)
  %6951 = getelementptr [34 x i8], [34 x i8]* @.str870, i32 0, i32 0
  %6952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %6951, i64 33)
  %6953 = call %nyx_string* @nyx_string_concat(%nyx_string* %6950, %nyx_string* %6952)
  %6954 = load %nyx_string*, %nyx_string** %6661
  %6955 = call %nyx_string* @nyx_string_concat(%nyx_string* %6953, %nyx_string* %6954)
  %6956 = getelementptr [7 x i8], [7 x i8]* @.str871, i32 0, i32 0
  %6957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %6956, i64 6)
  %6958 = call %nyx_string* @nyx_string_concat(%nyx_string* %6955, %nyx_string* %6957)
  %6959 = load %nyx_string*, %nyx_string** %6676
  %6960 = call %nyx_string* @nyx_string_concat(%nyx_string* %6958, %nyx_string* %6959)
  %6961 = getelementptr [22 x i8], [22 x i8]* @.str872, i32 0, i32 0
  %6962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %6961, i64 21)
  %6963 = call %nyx_string* @nyx_string_concat(%nyx_string* %6960, %nyx_string* %6962)
  %6964 = load %nyx_string*, %nyx_string** %6762
  %6965 = call %nyx_string* @nyx_string_concat(%nyx_string* %6963, %nyx_string* %6964)
  %6966 = getelementptr [44 x i8], [44 x i8]* @.str873, i32 0, i32 0
  %6967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %6966, i64 43)
  %6968 = call %nyx_string* @nyx_string_concat(%nyx_string* %6965, %nyx_string* %6967)
  %6969 = getelementptr [15 x i8], [15 x i8]* @.str874, i32 0, i32 0
  %6970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %6969, i64 14)
  %6971 = call %nyx_string* @nyx_string_concat(%nyx_string* %6968, %nyx_string* %6970)
  %6972 = load %nyx_string*, %nyx_string** %6658
  %6973 = call %nyx_string* @nyx_string_concat(%nyx_string* %6971, %nyx_string* %6972)
  %6974 = getelementptr [13 x i8], [13 x i8]* @.str875, i32 0, i32 0
  %6975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %6974, i64 12)
  %6976 = call %nyx_string* @nyx_string_concat(%nyx_string* %6973, %nyx_string* %6975)
  %6977 = getelementptr [44 x i8], [44 x i8]* @.str876, i32 0, i32 0
  %6978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %6977, i64 43)
  %6979 = call %nyx_string* @nyx_string_concat(%nyx_string* %6976, %nyx_string* %6978)
  %6980 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6981 = load %nyx_string*, %nyx_string** %6980
  %6982 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %6981)
  %6983 = call %nyx_string* @nyx_string_concat(%nyx_string* %6979, %nyx_string* %6982)
  %6984 = getelementptr [27 x i8], [27 x i8]* @.str877, i32 0, i32 0
  %6985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %6984, i64 26)
  %6986 = call %nyx_string* @nyx_string_concat(%nyx_string* %6983, %nyx_string* %6985)
  %6987 = getelementptr [18 x i8], [18 x i8]* @.str878, i32 0, i32 0
  %6988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %6987, i64 17)
  %6989 = call %nyx_string* @nyx_string_concat(%nyx_string* %6986, %nyx_string* %6988)
  %6990 = load %nyx_string*, %nyx_string** %6658
  %6991 = call %nyx_string* @nyx_string_concat(%nyx_string* %6989, %nyx_string* %6990)
  %6992 = getelementptr [3 x i8], [3 x i8]* @.str879, i32 0, i32 0
  %6993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %6992, i64 2)
  %6994 = call %nyx_string* @nyx_string_concat(%nyx_string* %6991, %nyx_string* %6993)
  %6995 = alloca %nyx_string*
  store %nyx_string* %6994, %nyx_string** %6995
  %6996 = alloca i1
  store i1 false, i1* %6996
  %6997 = load %nyx_string*, %nyx_string** %6581
  %6998 = getelementptr [1 x i8], [1 x i8]* @.str880, i32 0, i32 0
  %6999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %6998, i64 0)
  %7000 = call i1 @nyx_string_equals(%nyx_string* %6997, %nyx_string* %6999)
  %7001 = xor i1 %7000, true
  br i1 %7001, label %sc_and_rhs1215, label %sc_and_end1216
sc_and_rhs1215:
  %7002 = load %nyx_string*, %nyx_string** %6581
  %7003 = getelementptr [12 x i8], [12 x i8]* @.str881, i32 0, i32 0
  %7004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %7003, i64 11)
  %7005 = call i1 @nyx_string_equals(%nyx_string* %7002, %nyx_string* %7004)
  %7006 = xor i1 %7005, true
  store i1 %7006, i1* %6996
  br label %sc_and_end1216
sc_and_end1216:
  %7007 = load i1, i1* %6996
  br i1 %7007, label %then1217, label %else1218
then1217:
  %7008 = alloca i1
  store i1 false, i1* %7008
  %7009 = load %nyx_string*, %nyx_string** %6581
  %7010 = getelementptr [23 x i8], [23 x i8]* @.str882, i32 0, i32 0
  %7011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %7010, i64 22)
  %7012 = call i1 @nyx_string_equals(%nyx_string* %7009, %nyx_string* %7011)
  %7013 = xor i1 %7012, true
  br i1 %7013, label %sc_and_rhs1220, label %sc_and_end1221
sc_and_rhs1220:
  %7014 = load %nyx_string*, %nyx_string** %6581
  %7015 = getelementptr [24 x i8], [24 x i8]* @.str883, i32 0, i32 0
  %7016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %7015, i64 23)
  %7017 = call i1 @nyx_string_equals(%nyx_string* %7014, %nyx_string* %7016)
  %7018 = xor i1 %7017, true
  store i1 %7018, i1* %7008
  br label %sc_and_end1221
sc_and_end1221:
  %7019 = load i1, i1* %7008
  br i1 %7019, label %then1222, label %else1223
then1222:
  %7020 = getelementptr [28 x i8], [28 x i8]* @.str884, i32 0, i32 0
  %7021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %7020, i64 27)
  %7022 = load %nyx_string*, %nyx_string** %6581
  %7023 = call %nyx_string* @nyx_string_concat(%nyx_string* %7021, %nyx_string* %7022)
  %7024 = call i8* @nyx_string_to_cstr(%nyx_string* %7023)
  call void @nyx_print_string(i8* %7024)
  %7025 = getelementptr [83 x i8], [83 x i8]* @.str885, i32 0, i32 0
  %7026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %7025, i64 82)
  %7027 = call i8* @nyx_string_to_cstr(%nyx_string* %7026)
  call void @nyx_print_string(i8* %7027)
  %7028 = getelementptr [52 x i8], [52 x i8]* @.str886, i32 0, i32 0
  %7029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %7028, i64 51)
  %7030 = call i8* @nyx_string_to_cstr(%nyx_string* %7029)
  call void @nyx_print_string(i8* %7030)
  ret i1 0
else1223:
  br label %merge1224
merge1224:
  br label %merge1219
else1218:
  br label %merge1219
merge1219:
  %7031 = load %nyx_string*, %nyx_string** %6995
  %7032 = alloca %nyx_string*
  store %nyx_string* %7031, %nyx_string** %7032
  %7033 = load %nyx_string*, %nyx_string** %6581
  %7034 = getelementptr [12 x i8], [12 x i8]* @.str887, i32 0, i32 0
  %7035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %7034, i64 11)
  %7036 = call i1 @nyx_string_equals(%nyx_string* %7033, %nyx_string* %7035)
  br i1 %7036, label %then1225, label %else1226
then1225:
  %7037 = getelementptr [20 x i8], [20 x i8]* @.str888, i32 0, i32 0
  %7038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %7037, i64 19)
  %7039 = getelementptr [19 x i8], [19 x i8]* @.str889, i32 0, i32 0
  %7040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %7039, i64 18)
  %7041 = call %nyx_string* @nyx_string_concat(%nyx_string* %7038, %nyx_string* %7040)
  %7042 = getelementptr [5 x i8], [5 x i8]* @.str890, i32 0, i32 0
  %7043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %7042, i64 4)
  %7044 = call %nyx_string* @nyx_string_concat(%nyx_string* %7041, %nyx_string* %7043)
  %7045 = load %nyx_string*, %nyx_string** %6747
  %7046 = call %nyx_string* @nyx_string_concat(%nyx_string* %7044, %nyx_string* %7045)
  %7047 = getelementptr [3 x i8], [3 x i8]* @.str891, i32 0, i32 0
  %7048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %7047, i64 2)
  %7049 = call %nyx_string* @nyx_string_concat(%nyx_string* %7046, %nyx_string* %7048)
  %7050 = getelementptr [11 x i8], [11 x i8]* @.str892, i32 0, i32 0
  %7051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %7050, i64 10)
  %7052 = call %nyx_string* @nyx_string_concat(%nyx_string* %7049, %nyx_string* %7051)
  %7053 = getelementptr [23 x i8], [23 x i8]* @.str893, i32 0, i32 0
  %7054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %7053, i64 22)
  %7055 = call %nyx_string* @nyx_string_concat(%nyx_string* %7052, %nyx_string* %7054)
  %7056 = getelementptr [43 x i8], [43 x i8]* @.str894, i32 0, i32 0
  %7057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %7056, i64 42)
  %7058 = call %nyx_string* @nyx_string_concat(%nyx_string* %7055, %nyx_string* %7057)
  %7059 = getelementptr [37 x i8], [37 x i8]* @.str895, i32 0, i32 0
  %7060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %7059, i64 36)
  %7061 = call %nyx_string* @nyx_string_concat(%nyx_string* %7058, %nyx_string* %7060)
  %7062 = getelementptr [17 x i8], [17 x i8]* @.str896, i32 0, i32 0
  %7063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %7062, i64 16)
  %7064 = call %nyx_string* @nyx_string_concat(%nyx_string* %7061, %nyx_string* %7063)
  %7065 = getelementptr [38 x i8], [38 x i8]* @.str897, i32 0, i32 0
  %7066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %7065, i64 37)
  %7067 = call %nyx_string* @nyx_string_concat(%nyx_string* %7064, %nyx_string* %7066)
  %7068 = getelementptr [17 x i8], [17 x i8]* @.str898, i32 0, i32 0
  %7069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %7068, i64 16)
  %7070 = call %nyx_string* @nyx_string_concat(%nyx_string* %7067, %nyx_string* %7069)
  %7071 = getelementptr [163 x i8], [163 x i8]* @.str899, i32 0, i32 0
  %7072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %7071, i64 162)
  %7073 = call %nyx_string* @nyx_string_concat(%nyx_string* %7070, %nyx_string* %7072)
  %7074 = getelementptr [15 x i8], [15 x i8]* @.str900, i32 0, i32 0
  %7075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %7074, i64 14)
  %7076 = call %nyx_string* @nyx_string_concat(%nyx_string* %7073, %nyx_string* %7075)
  %7077 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %7078 = load %nyx_string*, %nyx_string** %7077
  %7079 = call %nyx_string* @nyx_string_concat(%nyx_string* %7076, %nyx_string* %7078)
  %7080 = getelementptr [12 x i8], [12 x i8]* @.str901, i32 0, i32 0
  %7081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %7080, i64 11)
  %7082 = call %nyx_string* @nyx_string_concat(%nyx_string* %7079, %nyx_string* %7081)
  %7083 = getelementptr [5 x i8], [5 x i8]* @.str902, i32 0, i32 0
  %7084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %7083, i64 4)
  %7085 = call %nyx_string* @nyx_string_concat(%nyx_string* %7082, %nyx_string* %7084)
  %7086 = load %nyx_string*, %nyx_string** %6684
  %7087 = call %nyx_string* @nyx_string_concat(%nyx_string* %7085, %nyx_string* %7086)
  %7088 = getelementptr [3 x i8], [3 x i8]* @.str903, i32 0, i32 0
  %7089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %7088, i64 2)
  %7090 = call %nyx_string* @nyx_string_concat(%nyx_string* %7087, %nyx_string* %7089)
  %7091 = getelementptr [70 x i8], [70 x i8]* @.str904, i32 0, i32 0
  %7092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %7091, i64 69)
  %7093 = call %nyx_string* @nyx_string_concat(%nyx_string* %7090, %nyx_string* %7092)
  %7094 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %7095 = load %nyx_string*, %nyx_string** %7094
  %7096 = call %nyx_string* @nyx_string_concat(%nyx_string* %7093, %nyx_string* %7095)
  %7097 = getelementptr [32 x i8], [32 x i8]* @.str905, i32 0, i32 0
  %7098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %7097, i64 31)
  %7099 = call %nyx_string* @nyx_string_concat(%nyx_string* %7096, %nyx_string* %7098)
  %7100 = load %nyx_string*, %nyx_string** %6734
  %7101 = call %nyx_string* @nyx_string_concat(%nyx_string* %7099, %nyx_string* %7100)
  %7102 = getelementptr [17 x i8], [17 x i8]* @.str906, i32 0, i32 0
  %7103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %7102, i64 16)
  %7104 = call %nyx_string* @nyx_string_concat(%nyx_string* %7101, %nyx_string* %7103)
  %7105 = getelementptr [71 x i8], [71 x i8]* @.str907, i32 0, i32 0
  %7106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %7105, i64 70)
  %7107 = call %nyx_string* @nyx_string_concat(%nyx_string* %7104, %nyx_string* %7106)
  %7108 = getelementptr [24 x i8], [24 x i8]* @.str908, i32 0, i32 0
  %7109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %7108, i64 23)
  %7110 = call %nyx_string* @nyx_string_concat(%nyx_string* %7107, %nyx_string* %7109)
  %7111 = getelementptr [2 x i8], [2 x i8]* @.str909, i32 0, i32 0
  %7112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %7111, i64 1)
  %7113 = call %nyx_string* @nyx_string_concat(%nyx_string* %7110, %nyx_string* %7112)
  %7114 = getelementptr [76 x i8], [76 x i8]* @.str910, i32 0, i32 0
  %7115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %7114, i64 75)
  %7116 = call %nyx_string* @nyx_string_concat(%nyx_string* %7113, %nyx_string* %7115)
  %7117 = getelementptr [98 x i8], [98 x i8]* @.str911, i32 0, i32 0
  %7118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %7117, i64 97)
  %7119 = call %nyx_string* @nyx_string_concat(%nyx_string* %7116, %nyx_string* %7118)
  %7120 = getelementptr [41 x i8], [41 x i8]* @.str912, i32 0, i32 0
  %7121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %7120, i64 40)
  %7122 = call %nyx_string* @nyx_string_concat(%nyx_string* %7119, %nyx_string* %7121)
  %7123 = getelementptr [64 x i8], [64 x i8]* @.str913, i32 0, i32 0
  %7124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %7123, i64 63)
  %7125 = call %nyx_string* @nyx_string_concat(%nyx_string* %7122, %nyx_string* %7124)
  %7126 = getelementptr [56 x i8], [56 x i8]* @.str914, i32 0, i32 0
  %7127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %7126, i64 55)
  %7128 = call %nyx_string* @nyx_string_concat(%nyx_string* %7125, %nyx_string* %7127)
  %7129 = getelementptr [12 x i8], [12 x i8]* @.str915, i32 0, i32 0
  %7130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %7129, i64 11)
  %7131 = call %nyx_string* @nyx_string_concat(%nyx_string* %7128, %nyx_string* %7130)
  %7132 = getelementptr [34 x i8], [34 x i8]* @.str916, i32 0, i32 0
  %7133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %7132, i64 33)
  %7134 = call %nyx_string* @nyx_string_concat(%nyx_string* %7131, %nyx_string* %7133)
  %7135 = load %nyx_string*, %nyx_string** %6648
  %7136 = call %nyx_string* @nyx_string_concat(%nyx_string* %7134, %nyx_string* %7135)
  %7137 = getelementptr [18 x i8], [18 x i8]* @.str917, i32 0, i32 0
  %7138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %7137, i64 17)
  %7139 = call %nyx_string* @nyx_string_concat(%nyx_string* %7136, %nyx_string* %7138)
  %7140 = getelementptr [49 x i8], [49 x i8]* @.str918, i32 0, i32 0
  %7141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %7140, i64 48)
  %7142 = call %nyx_string* @nyx_string_concat(%nyx_string* %7139, %nyx_string* %7141)
  %7143 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %7144 = load %nyx_string*, %nyx_string** %7143
  %7145 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %7144)
  %7146 = call %nyx_string* @nyx_string_concat(%nyx_string* %7142, %nyx_string* %7145)
  %7147 = getelementptr [27 x i8], [27 x i8]* @.str919, i32 0, i32 0
  %7148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %7147, i64 26)
  %7149 = call %nyx_string* @nyx_string_concat(%nyx_string* %7146, %nyx_string* %7148)
  store %nyx_string* %7149, %nyx_string** %7032
  %7150 = load %nyx_string*, %nyx_string** %7032
  %7151 = getelementptr [95 x i8], [95 x i8]* @.str920, i32 0, i32 0
  %7152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %7151, i64 94)
  %7153 = call %nyx_string* @nyx_string_concat(%nyx_string* %7150, %nyx_string* %7152)
  %7154 = getelementptr [24 x i8], [24 x i8]* @.str921, i32 0, i32 0
  %7155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %7154, i64 23)
  %7156 = call %nyx_string* @nyx_string_concat(%nyx_string* %7153, %nyx_string* %7155)
  %7157 = getelementptr [10 x i8], [10 x i8]* @.str922, i32 0, i32 0
  %7158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %7157, i64 9)
  %7159 = call %nyx_string* @nyx_string_concat(%nyx_string* %7156, %nyx_string* %7158)
  %7160 = getelementptr [49 x i8], [49 x i8]* @.str923, i32 0, i32 0
  %7161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %7160, i64 48)
  %7162 = call %nyx_string* @nyx_string_concat(%nyx_string* %7159, %nyx_string* %7161)
  %7163 = getelementptr [207 x i8], [207 x i8]* @.str924, i32 0, i32 0
  %7164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %7163, i64 206)
  %7165 = call %nyx_string* @nyx_string_concat(%nyx_string* %7162, %nyx_string* %7164)
  %7166 = getelementptr [41 x i8], [41 x i8]* @.str925, i32 0, i32 0
  %7167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %7166, i64 40)
  %7168 = call %nyx_string* @nyx_string_concat(%nyx_string* %7165, %nyx_string* %7167)
  %7169 = load %nyx_string*, %nyx_string** %6648
  %7170 = call %nyx_string* @nyx_string_concat(%nyx_string* %7168, %nyx_string* %7169)
  %7171 = getelementptr [58 x i8], [58 x i8]* @.str926, i32 0, i32 0
  %7172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %7171, i64 57)
  %7173 = call %nyx_string* @nyx_string_concat(%nyx_string* %7170, %nyx_string* %7172)
  %7174 = getelementptr [34 x i8], [34 x i8]* @.str927, i32 0, i32 0
  %7175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %7174, i64 33)
  %7176 = call %nyx_string* @nyx_string_concat(%nyx_string* %7173, %nyx_string* %7175)
  %7177 = load %nyx_string*, %nyx_string** %6648
  %7178 = call %nyx_string* @nyx_string_concat(%nyx_string* %7176, %nyx_string* %7177)
  %7179 = getelementptr [18 x i8], [18 x i8]* @.str928, i32 0, i32 0
  %7180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %7179, i64 17)
  %7181 = call %nyx_string* @nyx_string_concat(%nyx_string* %7178, %nyx_string* %7180)
  %7182 = getelementptr [78 x i8], [78 x i8]* @.str929, i32 0, i32 0
  %7183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %7182, i64 77)
  %7184 = call %nyx_string* @nyx_string_concat(%nyx_string* %7181, %nyx_string* %7183)
  %7185 = getelementptr [4 x i8], [4 x i8]* @.str930, i32 0, i32 0
  %7186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %7185, i64 3)
  %7187 = call %nyx_string* @nyx_string_concat(%nyx_string* %7184, %nyx_string* %7186)
  %7188 = getelementptr [32 x i8], [32 x i8]* @.str931, i32 0, i32 0
  %7189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %7188, i64 31)
  %7190 = call %nyx_string* @nyx_string_concat(%nyx_string* %7187, %nyx_string* %7189)
  %7191 = load %nyx_string*, %nyx_string** %6648
  %7192 = call %nyx_string* @nyx_string_concat(%nyx_string* %7190, %nyx_string* %7191)
  %7193 = getelementptr [41 x i8], [41 x i8]* @.str932, i32 0, i32 0
  %7194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %7193, i64 40)
  %7195 = call %nyx_string* @nyx_string_concat(%nyx_string* %7192, %nyx_string* %7194)
  %7196 = load %nyx_string*, %nyx_string** %6648
  %7197 = call %nyx_string* @nyx_string_concat(%nyx_string* %7195, %nyx_string* %7196)
  %7198 = getelementptr [9 x i8], [9 x i8]* @.str933, i32 0, i32 0
  %7199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %7198, i64 8)
  %7200 = call %nyx_string* @nyx_string_concat(%nyx_string* %7197, %nyx_string* %7199)
  store %nyx_string* %7200, %nyx_string** %7032
  br label %merge1227
else1226:
  br label %merge1227
merge1227:
  %7201 = getelementptr [16 x i8], [16 x i8]* @.str934, i32 0, i32 0
  %7202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %7201, i64 15)
  %7203 = call i64 @nyx_getpid()
  %7204 = call %nyx_string* @nyx_string_from_int(i64 %7203)
  %7205 = call %nyx_string* @nyx_string_concat(%nyx_string* %7202, %nyx_string* %7204)
  %7206 = getelementptr [4 x i8], [4 x i8]* @.str935, i32 0, i32 0
  %7207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %7206, i64 3)
  %7208 = call %nyx_string* @nyx_string_concat(%nyx_string* %7205, %nyx_string* %7207)
  %7209 = alloca %nyx_string*
  store %nyx_string* %7208, %nyx_string** %7209
  %7210 = load %nyx_string*, %nyx_string** %7209
  %7211 = load %nyx_string*, %nyx_string** %7032
  %7212 = ptrtoint %nyx_string* %7211 to i64
  %7213 = call i8* @nyx_string_to_cstr(%nyx_string* %7210)
  %7214 = inttoptr i64 %7212 to %nyx_string*
  %7215 = call i1 @nyx_write_file_safe(i8* %7213, %nyx_string* %7214)
  %7216 = getelementptr [7 x i8], [7 x i8]* @.str936, i32 0, i32 0
  %7217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %7216, i64 6)
  %7218 = load %nyx_string*, %nyx_string** %7209
  %7219 = call %nyx_string* @nyx_string_concat(%nyx_string* %7217, %nyx_string* %7218)
  %7220 = getelementptr [22 x i8], [22 x i8]* @.str937, i32 0, i32 0
  %7221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %7220, i64 21)
  %7222 = call %nyx_string* @nyx_string_concat(%nyx_string* %7219, %nyx_string* %7221)
  %7223 = load %nyx_string*, %nyx_string** %7209
  %7224 = call %nyx_string* @nyx_string_concat(%nyx_string* %7222, %nyx_string* %7223)
  %7225 = getelementptr [16 x i8], [16 x i8]* @.str938, i32 0, i32 0
  %7226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %7225, i64 15)
  %7227 = call %nyx_string* @nyx_string_concat(%nyx_string* %7224, %nyx_string* %7226)
  %7228 = call i8* @nyx_string_to_cstr(%nyx_string* %7227)
  %7229 = call i64 @nyx_exec_code(i8* %7228)
  %7230 = alloca i64
  store i64 %7229, i64* %7230
  %7231 = load i64, i64* %7230
  %7232 = icmp eq i64 %7231, 0
  ret i1 %7232
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %7233 = getelementptr [10 x i8], [10 x i8]* @.str939, i32 0, i32 0
  %7234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %7233, i64 9)
  %7235 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %7236 = load %nyx_string*, %nyx_string** %7235
  %7237 = call %nyx_string* @nyx_string_concat(%nyx_string* %7234, %nyx_string* %7236)
  %7238 = call i8* @nyx_string_to_cstr(%nyx_string* %7237)
  call void @nyx_print_string(i8* %7238)
  %7239 = getelementptr [10 x i8], [10 x i8]* @.str940, i32 0, i32 0
  %7240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %7239, i64 9)
  %7241 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %7242 = load %nyx_string*, %nyx_string** %7241
  %7243 = call %nyx_string* @nyx_string_concat(%nyx_string* %7240, %nyx_string* %7242)
  %7244 = call i8* @nyx_string_to_cstr(%nyx_string* %7243)
  call void @nyx_print_string(i8* %7244)
  %7245 = getelementptr [10 x i8], [10 x i8]* @.str941, i32 0, i32 0
  %7246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %7245, i64 9)
  %7247 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %7248 = load %nyx_string*, %nyx_string** %7247
  %7249 = call %nyx_string* @nyx_string_concat(%nyx_string* %7246, %nyx_string* %7248)
  %7250 = call i8* @nyx_string_to_cstr(%nyx_string* %7249)
  call void @nyx_print_string(i8* %7250)
  %7251 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %7252 = load %nyx_string*, %nyx_string** %7251
  %7253 = getelementptr [1 x i8], [1 x i8]* @.str942, i32 0, i32 0
  %7254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %7253, i64 0)
  %7255 = call i1 @nyx_string_equals(%nyx_string* %7252, %nyx_string* %7254)
  %7256 = xor i1 %7255, true
  br i1 %7256, label %then1228, label %else1229
then1228:
  %7257 = getelementptr [10 x i8], [10 x i8]* @.str943, i32 0, i32 0
  %7258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %7257, i64 9)
  %7259 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %7260 = load %nyx_string*, %nyx_string** %7259
  %7261 = call %nyx_string* @nyx_string_concat(%nyx_string* %7258, %nyx_string* %7260)
  %7262 = call i8* @nyx_string_to_cstr(%nyx_string* %7261)
  call void @nyx_print_string(i8* %7262)
  br label %merge1230
else1229:
  br label %merge1230
merge1230:
  %7263 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %7264 = load %nyx_string*, %nyx_string** %7263
  %7265 = getelementptr [1 x i8], [1 x i8]* @.str944, i32 0, i32 0
  %7266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %7265, i64 0)
  %7267 = call i1 @nyx_string_equals(%nyx_string* %7264, %nyx_string* %7266)
  %7268 = xor i1 %7267, true
  br i1 %7268, label %then1231, label %else1232
then1231:
  %7269 = getelementptr [10 x i8], [10 x i8]* @.str945, i32 0, i32 0
  %7270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %7269, i64 9)
  %7271 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %7272 = load %nyx_string*, %nyx_string** %7271
  %7273 = call %nyx_string* @nyx_string_concat(%nyx_string* %7270, %nyx_string* %7272)
  %7274 = call i8* @nyx_string_to_cstr(%nyx_string* %7273)
  call void @nyx_print_string(i8* %7274)
  br label %merge1233
else1232:
  br label %merge1233
merge1233:
  %7275 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %7276 = load i1, i1* %7275
  br i1 %7276, label %then1234, label %else1235
then1234:
  %7277 = getelementptr [25 x i8], [25 x i8]* @.str946, i32 0, i32 0
  %7278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %7277, i64 24)
  %7279 = call i8* @nyx_string_to_cstr(%nyx_string* %7278)
  call void @nyx_print_string(i8* %7279)
  br label %merge1236
else1235:
  %7280 = getelementptr [22 x i8], [22 x i8]* @.str947, i32 0, i32 0
  %7281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %7280, i64 21)
  %7282 = call i8* @nyx_string_to_cstr(%nyx_string* %7281)
  call void @nyx_print_string(i8* %7282)
  br label %merge1236
merge1236:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %7283 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7284 = getelementptr [2 x i8], [2 x i8]* @.str948, i32 0, i32 0
  %7285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %7284, i64 1)
  %7286 = call i1 @nyx_string_starts_with(%nyx_string* %7283, %nyx_string* %7285)
  br i1 %7286, label %then1237, label %else1238
then1237:
  %7287 = getelementptr [98 x i8], [98 x i8]* @.str949, i32 0, i32 0
  %7288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %7287, i64 97)
  %7289 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7290 = call %nyx_string* @nyx_string_concat(%nyx_string* %7288, %nyx_string* %7289)
  ret %nyx_string* %7290
else1238:
  br label %merge1239
merge1239:
  %7291 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7292 = getelementptr [4 x i8], [4 x i8]* @.str950, i32 0, i32 0
  %7293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %7292, i64 3)
  %7294 = call i1 @nyx_string_ends_with(%nyx_string* %7291, %nyx_string* %7293)
  %7295 = xor i1 %7294, true
  br i1 %7295, label %then1240, label %else1241
then1240:
  %7296 = getelementptr [31 x i8], [31 x i8]* @.str951, i32 0, i32 0
  %7297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %7296, i64 30)
  %7298 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7299 = call %nyx_string* @nyx_string_concat(%nyx_string* %7297, %nyx_string* %7298)
  ret %nyx_string* %7299
else1241:
  br label %merge1242
merge1242:
  %7300 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7301 = call i8* @nyx_string_to_cstr(%nyx_string* %7300)
  %7302 = call i1 @nyx_file_exists(i8* %7301)
  %7303 = xor i1 %7302, true
  br i1 %7303, label %then1243, label %else1244
then1243:
  %7304 = getelementptr [31 x i8], [31 x i8]* @.str952, i32 0, i32 0
  %7305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %7304, i64 30)
  %7306 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7307 = call %nyx_string* @nyx_string_concat(%nyx_string* %7305, %nyx_string* %7306)
  %7308 = getelementptr [48 x i8], [48 x i8]* @.str953, i32 0, i32 0
  %7309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %7308, i64 47)
  %7310 = call %nyx_string* @nyx_string_concat(%nyx_string* %7307, %nyx_string* %7309)
  ret %nyx_string* %7310
else1244:
  br label %merge1245
merge1245:
  %7311 = getelementptr [1 x i8], [1 x i8]* @.str954, i32 0, i32 0
  %7312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %7311, i64 0)
  ret %nyx_string* %7312
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %7313 = load %nyx_string*, %nyx_string** %p.ptr
  %7314 = getelementptr [3 x i8], [3 x i8]* @.str955, i32 0, i32 0
  %7315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %7314, i64 2)
  %7316 = call i1 @nyx_string_starts_with(%nyx_string* %7313, %nyx_string* %7315)
  br i1 %7316, label %then1246, label %else1247
then1246:
  %7317 = load %nyx_string*, %nyx_string** %p.ptr
  %7318 = load %nyx_string*, %nyx_string** %p.ptr
  %7319 = call i64 @nyx_string_byte_length(%nyx_string* %7318)
  %7320 = call %nyx_string* @nyx_string_substring(%nyx_string* %7317, i64 2, i64 %7319)
  ret %nyx_string* %7320
else1247:
  br label %merge1248
merge1248:
  %7321 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %7321
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %7322 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7323 = getelementptr [1 x i8], [1 x i8]* @.str956, i32 0, i32 0
  %7324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %7323, i64 0)
  %7325 = call i1 @nyx_string_equals(%nyx_string* %7322, %nyx_string* %7324)
  br i1 %7325, label %then1249, label %else1250
then1249:
  %7326 = getelementptr [1 x i8], [1 x i8]* @.str957, i32 0, i32 0
  %7327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %7326, i64 0)
  ret %nyx_string* %7327
else1250:
  br label %merge1251
merge1251:
  %7328 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7329 = call %nyx_string* @strip_dot_slash(%nyx_string* %7328)
  %7330 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %7331 = load %nyx_string*, %nyx_string** %7330
  %7332 = call %nyx_string* @strip_dot_slash(%nyx_string* %7331)
  %7333 = call i1 @nyx_string_equals(%nyx_string* %7329, %nyx_string* %7332)
  br i1 %7333, label %then1252, label %else1253
then1252:
  %7334 = getelementptr [1 x i8], [1 x i8]* @.str958, i32 0, i32 0
  %7335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %7334, i64 0)
  ret %nyx_string* %7335
else1253:
  br label %merge1254
merge1254:
  %7336 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7337 = alloca %nyx_string*
  store %nyx_string* %7336, %nyx_string** %7337
  %7338 = alloca i64
  store i64 0, i64* %7338
  %7339 = call i8* @llvm.stacksave()
  br label %while_cond1255
while_cond1255:
  %7340 = load i64, i64* %7338
  %7341 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7342 = call i64 @nyx_string_byte_length(%nyx_string* %7341)
  %7343 = icmp slt i64 %7340, %7342
  br i1 %7343, label %while_body1256, label %while_end1257
while_body1256:
  call void @llvm.stackrestore(i8* %7339)
  %7344 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7345 = load i64, i64* %7338
  %7346 = call i8 @nyx_string_char_at(%nyx_string* %7344, i64 %7345)
  %7347 = zext i8 %7346 to i64
  %7348 = trunc i64 %7347 to i8
  %7349 = alloca i8
  store i8 %7348, i8* %7349
  %7350 = load i8, i8* %7349
  %7351 = getelementptr [1 x i8], [1 x i8]* @.str959, i32 0, i32 0
  %7352 = load i8, i8* %7351
  %7353 = zext i8 %7352 to i64
  %7354 = zext i8 %7350 to i64
  %7355 = icmp eq i64 %7354, %7353
  br i1 %7355, label %then1258, label %else1259
then1258:
  %7356 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7357 = load i64, i64* %7338
  %7358 = add i64 %7357, 1
  %7359 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7360 = call i64 @nyx_string_byte_length(%nyx_string* %7359)
  %7361 = call %nyx_string* @nyx_string_substring(%nyx_string* %7356, i64 %7358, i64 %7360)
  store %nyx_string* %7361, %nyx_string** %7337
  br label %merge1260
else1259:
  br label %merge1260
merge1260:
  %7362 = load i64, i64* %7338
  %7363 = add i64 %7362, 1
  store i64 %7363, i64* %7338
  br label %while_cond1255
while_end1257:
  %7364 = load %nyx_string*, %nyx_string** %7337
  %7365 = load %nyx_string*, %nyx_string** %7337
  %7366 = call i64 @nyx_string_byte_length(%nyx_string* %7365)
  %7367 = sub i64 %7366, 3
  %7368 = call %nyx_string* @nyx_string_substring(%nyx_string* %7364, i64 0, i64 %7367)
  %7369 = alloca %nyx_string*
  store %nyx_string* %7368, %nyx_string** %7369
  %7370 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %7371 = load %nyx_string*, %nyx_string** %7370
  %7372 = getelementptr [2 x i8], [2 x i8]* @.str960, i32 0, i32 0
  %7373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %7372, i64 1)
  %7374 = call %nyx_string* @nyx_string_concat(%nyx_string* %7371, %nyx_string* %7373)
  %7375 = load %nyx_string*, %nyx_string** %7369
  %7376 = call %nyx_string* @nyx_string_concat(%nyx_string* %7374, %nyx_string* %7375)
  ret %nyx_string* %7376
}

define internal %nyx_string* @toolchain_version(
) {
  %7377 = getelementptr [9 x i8], [9 x i8]* @.str961, i32 0, i32 0
  %7378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %7377, i64 8)
  %7379 = call i8* @nyx_string_to_cstr(%nyx_string* %7378)
  %7380 = call %nyx_string* @nyx_getenv(i8* %7379)
  %7381 = alloca %nyx_string*
  store %nyx_string* %7380, %nyx_string** %7381
  %7382 = load %nyx_string*, %nyx_string** %7381
  %7383 = getelementptr [1 x i8], [1 x i8]* @.str962, i32 0, i32 0
  %7384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %7383, i64 0)
  %7385 = call i1 @nyx_string_equals(%nyx_string* %7382, %nyx_string* %7384)
  br i1 %7385, label %then1261, label %else1262
then1261:
  %7386 = getelementptr [5 x i8], [5 x i8]* @.str963, i32 0, i32 0
  %7387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %7386, i64 4)
  %7388 = call i8* @nyx_string_to_cstr(%nyx_string* %7387)
  %7389 = call %nyx_string* @nyx_getenv(i8* %7388)
  %7390 = alloca %nyx_string*
  store %nyx_string* %7389, %nyx_string** %7390
  %7391 = load %nyx_string*, %nyx_string** %7390
  %7392 = getelementptr [1 x i8], [1 x i8]* @.str964, i32 0, i32 0
  %7393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %7392, i64 0)
  %7394 = call i1 @nyx_string_equals(%nyx_string* %7391, %nyx_string* %7393)
  %7395 = xor i1 %7394, true
  br i1 %7395, label %then1264, label %else1265
then1264:
  %7396 = load %nyx_string*, %nyx_string** %7390
  %7397 = getelementptr [6 x i8], [6 x i8]* @.str965, i32 0, i32 0
  %7398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %7397, i64 5)
  %7399 = call %nyx_string* @nyx_string_concat(%nyx_string* %7396, %nyx_string* %7398)
  store %nyx_string* %7399, %nyx_string** %7381
  br label %merge1266
else1265:
  br label %merge1266
merge1266:
  br label %merge1263
else1262:
  br label %merge1263
merge1263:
  %7400 = load %nyx_string*, %nyx_string** %7381
  %7401 = getelementptr [1 x i8], [1 x i8]* @.str966, i32 0, i32 0
  %7402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %7401, i64 0)
  %7403 = call i1 @nyx_string_equals(%nyx_string* %7400, %nyx_string* %7402)
  %7404 = xor i1 %7403, true
  br i1 %7404, label %then1267, label %else1268
then1267:
  %7405 = load %nyx_string*, %nyx_string** %7381
  %7406 = getelementptr [9 x i8], [9 x i8]* @.str967, i32 0, i32 0
  %7407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %7406, i64 8)
  %7408 = call %nyx_string* @nyx_string_concat(%nyx_string* %7405, %nyx_string* %7407)
  %7409 = call i8* @nyx_string_to_cstr(%nyx_string* %7408)
  %7410 = call i1 @nyx_file_exists(i8* %7409)
  br i1 %7410, label %then1270, label %else1271
then1270:
  %7411 = load %nyx_string*, %nyx_string** %7381
  %7412 = getelementptr [9 x i8], [9 x i8]* @.str968, i32 0, i32 0
  %7413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %7412, i64 8)
  %7414 = call %nyx_string* @nyx_string_concat(%nyx_string* %7411, %nyx_string* %7413)
  %7415 = call i8* @nyx_string_to_cstr(%nyx_string* %7414)
  %7416 = call %nyx_string* @nyx_read_file(i8* %7415)
  %7417 = alloca %nyx_string*
  store %nyx_string* %7416, %nyx_string** %7417
  %7418 = load %nyx_string*, %nyx_string** %7417
  %7419 = call %nyx_string* @nyx_string_trim(%nyx_string* %7418)
  ret %nyx_string* %7419
else1271:
  br label %merge1272
merge1272:
  br label %merge1269
else1268:
  br label %merge1269
merge1269:
  %7420 = getelementptr [8 x i8], [8 x i8]* @.str969, i32 0, i32 0
  %7421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %7420, i64 7)
  %7422 = call i8* @nyx_string_to_cstr(%nyx_string* %7421)
  %7423 = call i1 @nyx_file_exists(i8* %7422)
  br i1 %7423, label %then1273, label %else1274
then1273:
  %7424 = getelementptr [8 x i8], [8 x i8]* @.str970, i32 0, i32 0
  %7425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %7424, i64 7)
  %7426 = call i8* @nyx_string_to_cstr(%nyx_string* %7425)
  %7427 = call %nyx_string* @nyx_read_file(i8* %7426)
  %7428 = alloca %nyx_string*
  store %nyx_string* %7427, %nyx_string** %7428
  %7429 = load %nyx_string*, %nyx_string** %7428
  %7430 = call %nyx_string* @nyx_string_trim(%nyx_string* %7429)
  ret %nyx_string* %7430
else1274:
  br label %merge1275
merge1275:
  %7431 = getelementptr [7 x i8], [7 x i8]* @.str971, i32 0, i32 0
  %7432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %7431, i64 6)
  ret %nyx_string* %7432
}

define internal %nyx_string* @report_template(
) {
  %7433 = getelementptr [51 x i8], [51 x i8]* @.str972, i32 0, i32 0
  %7434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %7433, i64 50)
  %7435 = alloca %nyx_string*
  store %nyx_string* %7434, %nyx_string** %7435
  %7436 = load %nyx_string*, %nyx_string** %7435
  %7437 = getelementptr [73 x i8], [73 x i8]* @.str973, i32 0, i32 0
  %7438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %7437, i64 72)
  %7439 = call %nyx_string* @nyx_string_concat(%nyx_string* %7436, %nyx_string* %7438)
  store %nyx_string* %7439, %nyx_string** %7435
  %7440 = load %nyx_string*, %nyx_string** %7435
  %7441 = getelementptr [88 x i8], [88 x i8]* @.str974, i32 0, i32 0
  %7442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %7441, i64 87)
  %7443 = call %nyx_string* @nyx_string_concat(%nyx_string* %7440, %nyx_string* %7442)
  store %nyx_string* %7443, %nyx_string** %7435
  %7444 = load %nyx_string*, %nyx_string** %7435
  %7445 = getelementptr [51 x i8], [51 x i8]* @.str975, i32 0, i32 0
  %7446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %7445, i64 50)
  %7447 = call %nyx_string* @nyx_string_concat(%nyx_string* %7444, %nyx_string* %7446)
  store %nyx_string* %7447, %nyx_string** %7435
  %7448 = load %nyx_string*, %nyx_string** %7435
  %7449 = getelementptr [90 x i8], [90 x i8]* @.str976, i32 0, i32 0
  %7450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %7449, i64 89)
  %7451 = call %nyx_string* @nyx_string_concat(%nyx_string* %7448, %nyx_string* %7450)
  store %nyx_string* %7451, %nyx_string** %7435
  %7452 = load %nyx_string*, %nyx_string** %7435
  %7453 = getelementptr [104 x i8], [104 x i8]* @.str977, i32 0, i32 0
  %7454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %7453, i64 103)
  %7455 = call %nyx_string* @nyx_string_concat(%nyx_string* %7452, %nyx_string* %7454)
  store %nyx_string* %7455, %nyx_string** %7435
  %7456 = load %nyx_string*, %nyx_string** %7435
  %7457 = getelementptr [99 x i8], [99 x i8]* @.str978, i32 0, i32 0
  %7458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %7457, i64 98)
  %7459 = call %nyx_string* @nyx_string_concat(%nyx_string* %7456, %nyx_string* %7458)
  store %nyx_string* %7459, %nyx_string** %7435
  %7460 = load %nyx_string*, %nyx_string** %7435
  %7461 = getelementptr [126 x i8], [126 x i8]* @.str979, i32 0, i32 0
  %7462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %7461, i64 125)
  %7463 = call %nyx_string* @nyx_string_concat(%nyx_string* %7460, %nyx_string* %7462)
  store %nyx_string* %7463, %nyx_string** %7435
  %7464 = load %nyx_string*, %nyx_string** %7435
  %7465 = getelementptr [21 x i8], [21 x i8]* @.str980, i32 0, i32 0
  %7466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %7465, i64 20)
  %7467 = call %nyx_string* @nyx_string_concat(%nyx_string* %7464, %nyx_string* %7466)
  %7468 = call %nyx_string* @toolchain_version()
  %7469 = call %nyx_string* @nyx_string_concat(%nyx_string* %7467, %nyx_string* %7468)
  %7470 = getelementptr [25 x i8], [25 x i8]* @.str981, i32 0, i32 0
  %7471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %7470, i64 24)
  %7472 = call %nyx_string* @nyx_string_concat(%nyx_string* %7469, %nyx_string* %7471)
  store %nyx_string* %7472, %nyx_string** %7435
  %7473 = load %nyx_string*, %nyx_string** %7435
  ret %nyx_string* %7473
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %7474 = getelementptr [12 x i8], [12 x i8]* @.str982, i32 0, i32 0
  %7475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %7474, i64 11)
  %7476 = alloca %nyx_string*
  store %nyx_string* %7475, %nyx_string** %7476
  %7477 = load i1, i1* %do_send.ptr
  %7478 = xor i1 %7477, true
  br i1 %7478, label %then1276, label %else1277
then1276:
  %7479 = load %nyx_string*, %nyx_string** %7476
  %7480 = call i8* @nyx_string_to_cstr(%nyx_string* %7479)
  %7481 = call i1 @nyx_file_exists(i8* %7480)
  br i1 %7481, label %then1279, label %else1280
then1279:
  %7482 = load %nyx_string*, %nyx_string** %7476
  %7483 = call i8* @nyx_string_to_cstr(%nyx_string* %7482)
  %7484 = call %nyx_string* @nyx_read_file(i8* %7483)
  %7485 = alloca %nyx_string*
  store %nyx_string* %7484, %nyx_string** %7485
  %7486 = load %nyx_string*, %nyx_string** %7485
  %7487 = call i64 @nyx_string_byte_length(%nyx_string* %7486)
  %7488 = icmp sge i64 %7487, 40
  br i1 %7488, label %then1282, label %else1283
then1282:
  %7489 = getelementptr [80 x i8], [80 x i8]* @.str983, i32 0, i32 0
  %7490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %7489, i64 79)
  %7491 = call i8* @nyx_string_to_cstr(%nyx_string* %7490)
  call void @nyx_print_string(i8* %7491)
  %7492 = getelementptr [62 x i8], [62 x i8]* @.str984, i32 0, i32 0
  %7493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %7492, i64 61)
  %7494 = call i8* @nyx_string_to_cstr(%nyx_string* %7493)
  call void @nyx_print_string(i8* %7494)
  ret i1 1
else1283:
  br label %merge1284
merge1284:
  br label %merge1281
else1280:
  br label %merge1281
merge1281:
  %7495 = load %nyx_string*, %nyx_string** %7476
  %7496 = call %nyx_string* @report_template()
  %7497 = ptrtoint %nyx_string* %7496 to i64
  %7498 = call i8* @nyx_string_to_cstr(%nyx_string* %7495)
  %7499 = inttoptr i64 %7497 to %nyx_string*
  %7500 = call i1 @nyx_write_file_safe(i8* %7498, %nyx_string* %7499)
  %7501 = getelementptr [78 x i8], [78 x i8]* @.str985, i32 0, i32 0
  %7502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %7501, i64 77)
  %7503 = call i8* @nyx_string_to_cstr(%nyx_string* %7502)
  call void @nyx_print_string(i8* %7503)
  %7504 = getelementptr [72 x i8], [72 x i8]* @.str986, i32 0, i32 0
  %7505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %7504, i64 71)
  %7506 = call i8* @nyx_string_to_cstr(%nyx_string* %7505)
  call void @nyx_print_string(i8* %7506)
  %7507 = getelementptr [53 x i8], [53 x i8]* @.str987, i32 0, i32 0
  %7508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %7507, i64 52)
  %7509 = call i8* @nyx_string_to_cstr(%nyx_string* %7508)
  call void @nyx_print_string(i8* %7509)
  ret i1 1
else1277:
  br label %merge1278
merge1278:
  %7510 = load %nyx_string*, %nyx_string** %7476
  %7511 = alloca %nyx_string*
  store %nyx_string* %7510, %nyx_string** %7511
  %7512 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %7513 = getelementptr [1 x i8], [1 x i8]* @.str988, i32 0, i32 0
  %7514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %7513, i64 0)
  %7515 = call i1 @nyx_string_equals(%nyx_string* %7512, %nyx_string* %7514)
  %7516 = xor i1 %7515, true
  br i1 %7516, label %then1285, label %else1286
then1285:
  %7517 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %7517, %nyx_string** %7511
  br label %merge1287
else1286:
  br label %merge1287
merge1287:
  %7518 = load %nyx_string*, %nyx_string** %7511
  %7519 = call i8* @nyx_string_to_cstr(%nyx_string* %7518)
  %7520 = call i1 @nyx_file_exists(i8* %7519)
  %7521 = xor i1 %7520, true
  br i1 %7521, label %then1288, label %else1289
then1288:
  %7522 = getelementptr [18 x i8], [18 x i8]* @.str989, i32 0, i32 0
  %7523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %7522, i64 17)
  %7524 = load %nyx_string*, %nyx_string** %7511
  %7525 = call %nyx_string* @nyx_string_concat(%nyx_string* %7523, %nyx_string* %7524)
  %7526 = getelementptr [57 x i8], [57 x i8]* @.str990, i32 0, i32 0
  %7527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %7526, i64 56)
  %7528 = call %nyx_string* @nyx_string_concat(%nyx_string* %7525, %nyx_string* %7527)
  %7529 = call i8* @nyx_string_to_cstr(%nyx_string* %7528)
  call void @nyx_print_string(i8* %7529)
  ret i1 0
else1289:
  br label %merge1290
merge1290:
  %7530 = load %nyx_string*, %nyx_string** %7511
  %7531 = call i8* @nyx_string_to_cstr(%nyx_string* %7530)
  %7532 = call %nyx_string* @nyx_read_file(i8* %7531)
  %7533 = alloca %nyx_string*
  store %nyx_string* %7532, %nyx_string** %7533
  %7534 = load %nyx_string*, %nyx_string** %7533
  %7535 = call i64 @nyx_string_byte_length(%nyx_string* %7534)
  %7536 = icmp slt i64 %7535, 40
  br i1 %7536, label %then1291, label %else1292
then1291:
  %7537 = getelementptr [66 x i8], [66 x i8]* @.str991, i32 0, i32 0
  %7538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %7537, i64 65)
  %7539 = call i8* @nyx_string_to_cstr(%nyx_string* %7538)
  call void @nyx_print_string(i8* %7539)
  ret i1 0
else1292:
  br label %merge1293
merge1293:
  %7540 = getelementptr [1 x i8], [1 x i8]* @.str992, i32 0, i32 0
  %7541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %7540, i64 0)
  %7542 = alloca %nyx_string*
  store %nyx_string* %7541, %nyx_string** %7542
  %7543 = getelementptr [5 x i8], [5 x i8]* @.str993, i32 0, i32 0
  %7544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %7543, i64 4)
  %7545 = call i8* @nyx_string_to_cstr(%nyx_string* %7544)
  %7546 = call %nyx_string* @nyx_getenv(i8* %7545)
  %7547 = alloca %nyx_string*
  store %nyx_string* %7546, %nyx_string** %7547
  %7548 = load %nyx_string*, %nyx_string** %7547
  %7549 = getelementptr [1 x i8], [1 x i8]* @.str994, i32 0, i32 0
  %7550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %7549, i64 0)
  %7551 = call i1 @nyx_string_equals(%nyx_string* %7548, %nyx_string* %7550)
  %7552 = xor i1 %7551, true
  br i1 %7552, label %then1294, label %else1295
then1294:
  %7553 = load %nyx_string*, %nyx_string** %7547
  %7554 = getelementptr [15 x i8], [15 x i8]* @.str995, i32 0, i32 0
  %7555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %7554, i64 14)
  %7556 = call %nyx_string* @nyx_string_concat(%nyx_string* %7553, %nyx_string* %7555)
  %7557 = call i8* @nyx_string_to_cstr(%nyx_string* %7556)
  %7558 = call i1 @nyx_file_exists(i8* %7557)
  br i1 %7558, label %then1297, label %else1298
then1297:
  %7559 = load %nyx_string*, %nyx_string** %7547
  %7560 = getelementptr [15 x i8], [15 x i8]* @.str996, i32 0, i32 0
  %7561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %7560, i64 14)
  %7562 = call %nyx_string* @nyx_string_concat(%nyx_string* %7559, %nyx_string* %7561)
  %7563 = call i8* @nyx_string_to_cstr(%nyx_string* %7562)
  %7564 = call %nyx_string* @nyx_read_file(i8* %7563)
  %7565 = alloca %nyx_string*
  store %nyx_string* %7564, %nyx_string** %7565
  %7566 = load %nyx_string*, %nyx_string** %7565
  %7567 = call %nyx_string* @nyx_string_trim(%nyx_string* %7566)
  store %nyx_string* %7567, %nyx_string** %7542
  br label %merge1299
else1298:
  br label %merge1299
merge1299:
  br label %merge1296
else1295:
  br label %merge1296
merge1296:
  %7568 = load %nyx_string*, %nyx_string** %7542
  %7569 = getelementptr [1 x i8], [1 x i8]* @.str997, i32 0, i32 0
  %7570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %7569, i64 0)
  %7571 = call i1 @nyx_string_equals(%nyx_string* %7568, %nyx_string* %7570)
  br i1 %7571, label %then1300, label %else1301
then1300:
  %7572 = getelementptr [77 x i8], [77 x i8]* @.str998, i32 0, i32 0
  %7573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %7572, i64 76)
  %7574 = call i8* @nyx_string_to_cstr(%nyx_string* %7573)
  call void @nyx_print_string(i8* %7574)
  br label %merge1302
else1301:
  br label %merge1302
merge1302:
  %7575 = getelementptr [10 x i8], [10 x i8]* @.str999, i32 0, i32 0
  %7576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %7575, i64 9)
  %7577 = load %nyx_string*, %nyx_string** %7542
  %7578 = call i64 @std_kvclient__kv_connect_auth(%nyx_string* %7576, i64 6380, %nyx_string* %7577)
  %7579 = alloca i64
  store i64 %7578, i64* %7579
  %7580 = load i64, i64* %7579
  %7581 = icmp slt i64 %7580, 0
  br i1 %7581, label %then1303, label %else1304
then1303:
  %7582 = getelementptr [54 x i8], [54 x i8]* @.str1000, i32 0, i32 0
  %7583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %7582, i64 53)
  %7584 = call i8* @nyx_string_to_cstr(%nyx_string* %7583)
  call void @nyx_print_string(i8* %7584)
  %7585 = getelementptr [22 x i8], [22 x i8]* @.str1001, i32 0, i32 0
  %7586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %7585, i64 21)
  %7587 = load %nyx_string*, %nyx_string** %7511
  %7588 = call %nyx_string* @nyx_string_concat(%nyx_string* %7586, %nyx_string* %7587)
  %7589 = getelementptr [28 x i8], [28 x i8]* @.str1002, i32 0, i32 0
  %7590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %7589, i64 27)
  %7591 = call %nyx_string* @nyx_string_concat(%nyx_string* %7588, %nyx_string* %7590)
  %7592 = call i8* @nyx_string_to_cstr(%nyx_string* %7591)
  call void @nyx_print_string(i8* %7592)
  %7593 = getelementptr [44 x i8], [44 x i8]* @.str1003, i32 0, i32 0
  %7594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %7593, i64 43)
  %7595 = call i8* @nyx_string_to_cstr(%nyx_string* %7594)
  call void @nyx_print_string(i8* %7595)
  ret i1 0
else1304:
  br label %merge1305
merge1305:
  %7596 = getelementptr [5 x i8], [5 x i8]* @.str1004, i32 0, i32 0
  %7597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %7596, i64 4)
  %7598 = load %nyx_string*, %nyx_string** %7533
  %7599 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %7598)
  %7600 = call %nyx_string* @nyx_string_concat(%nyx_string* %7597, %nyx_string* %7599)
  %7601 = alloca %nyx_string*
  store %nyx_string* %7600, %nyx_string** %7601
  %7602 = load i64, i64* %7579
  %7603 = getelementptr [11 x i8], [11 x i8]* @.str1005, i32 0, i32 0
  %7604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %7603, i64 10)
  %7605 = load %nyx_string*, %nyx_string** %7601
  %7606 = call i64 @std_kvclient__kv_rpush(i64 %7602, %nyx_string* %7604, %nyx_string* %7605)
  %7607 = alloca i64
  store i64 %7606, i64* %7607
  %7608 = load i64, i64* %7579
  %7609 = call i64 @std_kvclient__kv_close(i64 %7608)
  %7610 = load i64, i64* %7607
  %7611 = icmp sle i64 %7610, 0
  br i1 %7611, label %then1306, label %else1307
then1306:
  %7612 = getelementptr [37 x i8], [37 x i8]* @.str1006, i32 0, i32 0
  %7613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %7612, i64 36)
  %7614 = call i8* @nyx_string_to_cstr(%nyx_string* %7613)
  call void @nyx_print_string(i8* %7614)
  ret i1 0
else1307:
  br label %merge1308
merge1308:
  %7615 = getelementptr [55 x i8], [55 x i8]* @.str1007, i32 0, i32 0
  %7616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %7615, i64 54)
  %7617 = load i64, i64* %7607
  %7618 = call %nyx_string* @nyx_string_from_int(i64 %7617)
  %7619 = call %nyx_string* @nyx_string_concat(%nyx_string* %7616, %nyx_string* %7618)
  %7620 = getelementptr [15 x i8], [15 x i8]* @.str1008, i32 0, i32 0
  %7621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %7620, i64 14)
  %7622 = call %nyx_string* @nyx_string_concat(%nyx_string* %7619, %nyx_string* %7621)
  %7623 = call i8* @nyx_string_to_cstr(%nyx_string* %7622)
  call void @nyx_print_string(i8* %7623)
  ret i1 1
}

define internal %nyx_string* @rt_cache_sh(
) {
  %7624 = getelementptr [17 x i8], [17 x i8]* @.str1009, i32 0, i32 0
  %7625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %7624, i64 16)
  %7626 = alloca %nyx_string*
  store %nyx_string* %7625, %nyx_string** %7626
  %7627 = load %nyx_string*, %nyx_string** %7626
  %7628 = getelementptr [41 x i8], [41 x i8]* @.str1010, i32 0, i32 0
  %7629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %7628, i64 40)
  %7630 = call %nyx_string* @nyx_string_concat(%nyx_string* %7627, %nyx_string* %7629)
  store %nyx_string* %7630, %nyx_string** %7626
  %7631 = load %nyx_string*, %nyx_string** %7626
  %7632 = getelementptr [24 x i8], [24 x i8]* @.str1011, i32 0, i32 0
  %7633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %7632, i64 23)
  %7634 = call %nyx_string* @nyx_string_concat(%nyx_string* %7631, %nyx_string* %7633)
  store %nyx_string* %7634, %nyx_string** %7626
  %7635 = load %nyx_string*, %nyx_string** %7626
  %7636 = getelementptr [92 x i8], [92 x i8]* @.str1012, i32 0, i32 0
  %7637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %7636, i64 91)
  %7638 = call %nyx_string* @nyx_string_concat(%nyx_string* %7635, %nyx_string* %7637)
  store %nyx_string* %7638, %nyx_string** %7626
  %7639 = load %nyx_string*, %nyx_string** %7626
  %7640 = getelementptr [177 x i8], [177 x i8]* @.str1013, i32 0, i32 0
  %7641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %7640, i64 176)
  %7642 = call %nyx_string* @nyx_string_concat(%nyx_string* %7639, %nyx_string* %7641)
  store %nyx_string* %7642, %nyx_string** %7626
  %7643 = load %nyx_string*, %nyx_string** %7626
  %7644 = getelementptr [35 x i8], [35 x i8]* @.str1014, i32 0, i32 0
  %7645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %7644, i64 34)
  %7646 = call %nyx_string* @nyx_string_concat(%nyx_string* %7643, %nyx_string* %7645)
  store %nyx_string* %7646, %nyx_string** %7626
  %7647 = load %nyx_string*, %nyx_string** %7626
  %7648 = getelementptr [83 x i8], [83 x i8]* @.str1015, i32 0, i32 0
  %7649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %7648, i64 82)
  %7650 = call %nyx_string* @nyx_string_concat(%nyx_string* %7647, %nyx_string* %7649)
  store %nyx_string* %7650, %nyx_string** %7626
  %7651 = load %nyx_string*, %nyx_string** %7626
  %7652 = getelementptr [49 x i8], [49 x i8]* @.str1016, i32 0, i32 0
  %7653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %7652, i64 48)
  %7654 = call %nyx_string* @nyx_string_concat(%nyx_string* %7651, %nyx_string* %7653)
  store %nyx_string* %7654, %nyx_string** %7626
  %7655 = load %nyx_string*, %nyx_string** %7626
  %7656 = getelementptr [89 x i8], [89 x i8]* @.str1017, i32 0, i32 0
  %7657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %7656, i64 88)
  %7658 = call %nyx_string* @nyx_string_concat(%nyx_string* %7655, %nyx_string* %7657)
  store %nyx_string* %7658, %nyx_string** %7626
  %7659 = load %nyx_string*, %nyx_string** %7626
  %7660 = getelementptr [68 x i8], [68 x i8]* @.str1018, i32 0, i32 0
  %7661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %7660, i64 67)
  %7662 = call %nyx_string* @nyx_string_concat(%nyx_string* %7659, %nyx_string* %7661)
  store %nyx_string* %7662, %nyx_string** %7626
  %7663 = load %nyx_string*, %nyx_string** %7626
  %7664 = getelementptr [15 x i8], [15 x i8]* @.str1019, i32 0, i32 0
  %7665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %7664, i64 14)
  %7666 = call %nyx_string* @nyx_string_concat(%nyx_string* %7663, %nyx_string* %7665)
  store %nyx_string* %7666, %nyx_string** %7626
  %7667 = load %nyx_string*, %nyx_string** %7626
  %7668 = getelementptr [114 x i8], [114 x i8]* @.str1020, i32 0, i32 0
  %7669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %7668, i64 113)
  %7670 = call %nyx_string* @nyx_string_concat(%nyx_string* %7667, %nyx_string* %7669)
  store %nyx_string* %7670, %nyx_string** %7626
  %7671 = load %nyx_string*, %nyx_string** %7626
  %7672 = getelementptr [8 x i8], [8 x i8]* @.str1021, i32 0, i32 0
  %7673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %7672, i64 7)
  %7674 = call %nyx_string* @nyx_string_concat(%nyx_string* %7671, %nyx_string* %7673)
  store %nyx_string* %7674, %nyx_string** %7626
  %7675 = load %nyx_string*, %nyx_string** %7626
  %7676 = getelementptr [138 x i8], [138 x i8]* @.str1022, i32 0, i32 0
  %7677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %7676, i64 137)
  %7678 = call %nyx_string* @nyx_string_concat(%nyx_string* %7675, %nyx_string* %7677)
  store %nyx_string* %7678, %nyx_string** %7626
  %7679 = load %nyx_string*, %nyx_string** %7626
  %7680 = getelementptr [43 x i8], [43 x i8]* @.str1023, i32 0, i32 0
  %7681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %7680, i64 42)
  %7682 = call %nyx_string* @nyx_string_concat(%nyx_string* %7679, %nyx_string* %7681)
  store %nyx_string* %7682, %nyx_string** %7626
  %7683 = load %nyx_string*, %nyx_string** %7626
  %7684 = getelementptr [6 x i8], [6 x i8]* @.str1024, i32 0, i32 0
  %7685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %7684, i64 5)
  %7686 = call %nyx_string* @nyx_string_concat(%nyx_string* %7683, %nyx_string* %7685)
  store %nyx_string* %7686, %nyx_string** %7626
  %7687 = load %nyx_string*, %nyx_string** %7626
  %7688 = getelementptr [27 x i8], [27 x i8]* @.str1025, i32 0, i32 0
  %7689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %7688, i64 26)
  %7690 = call %nyx_string* @nyx_string_concat(%nyx_string* %7687, %nyx_string* %7689)
  store %nyx_string* %7690, %nyx_string** %7626
  %7691 = load %nyx_string*, %nyx_string** %7626
  %7692 = getelementptr [3 x i8], [3 x i8]* @.str1026, i32 0, i32 0
  %7693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %7692, i64 2)
  %7694 = call %nyx_string* @nyx_string_concat(%nyx_string* %7691, %nyx_string* %7693)
  store %nyx_string* %7694, %nyx_string** %7626
  %7695 = load %nyx_string*, %nyx_string** %7626
  ret %nyx_string* %7695
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %7696 = getelementptr [9 x i8], [9 x i8]* @.str1027, i32 0, i32 0
  %7697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %7696, i64 8)
  %7698 = call i8* @nyx_string_to_cstr(%nyx_string* %7697)
  %7699 = call %nyx_string* @nyx_getenv(i8* %7698)
  %7700 = alloca %nyx_string*
  store %nyx_string* %7699, %nyx_string** %7700
  %7701 = load %nyx_string*, %nyx_string** %7700
  %7702 = getelementptr [1 x i8], [1 x i8]* @.str1028, i32 0, i32 0
  %7703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %7702, i64 0)
  %7704 = call i1 @nyx_string_equals(%nyx_string* %7701, %nyx_string* %7703)
  br i1 %7704, label %then1309, label %else1310
then1309:
  %7705 = getelementptr [5 x i8], [5 x i8]* @.str1029, i32 0, i32 0
  %7706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %7705, i64 4)
  %7707 = call i8* @nyx_string_to_cstr(%nyx_string* %7706)
  %7708 = call %nyx_string* @nyx_getenv(i8* %7707)
  %7709 = alloca %nyx_string*
  store %nyx_string* %7708, %nyx_string** %7709
  %7710 = load %nyx_string*, %nyx_string** %7709
  %7711 = getelementptr [6 x i8], [6 x i8]* @.str1030, i32 0, i32 0
  %7712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %7711, i64 5)
  %7713 = call %nyx_string* @nyx_string_concat(%nyx_string* %7710, %nyx_string* %7712)
  %7714 = alloca %nyx_string*
  store %nyx_string* %7713, %nyx_string** %7714
  %7715 = alloca i1
  store i1 false, i1* %7715
  %7716 = load %nyx_string*, %nyx_string** %7709
  %7717 = getelementptr [1 x i8], [1 x i8]* @.str1031, i32 0, i32 0
  %7718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %7717, i64 0)
  %7719 = call i1 @nyx_string_equals(%nyx_string* %7716, %nyx_string* %7718)
  %7720 = xor i1 %7719, true
  br i1 %7720, label %sc_and_rhs1312, label %sc_and_end1313
sc_and_rhs1312:
  %7721 = load %nyx_string*, %nyx_string** %7714
  %7722 = getelementptr [5 x i8], [5 x i8]* @.str1032, i32 0, i32 0
  %7723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %7722, i64 4)
  %7724 = call %nyx_string* @nyx_string_concat(%nyx_string* %7721, %nyx_string* %7723)
  %7725 = call i8* @nyx_string_to_cstr(%nyx_string* %7724)
  %7726 = call i1 @nyx_file_exists(i8* %7725)
  store i1 %7726, i1* %7715
  br label %sc_and_end1313
sc_and_end1313:
  %7727 = load i1, i1* %7715
  br i1 %7727, label %then1314, label %else1315
then1314:
  %7728 = load %nyx_string*, %nyx_string** %7714
  store %nyx_string* %7728, %nyx_string** %7700
  br label %merge1316
else1315:
  br label %merge1316
merge1316:
  br label %merge1311
else1310:
  br label %merge1311
merge1311:
  %7729 = load %nyx_string*, %nyx_string** %7700
  %7730 = getelementptr [1 x i8], [1 x i8]* @.str1033, i32 0, i32 0
  %7731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %7730, i64 0)
  %7732 = call i1 @nyx_string_equals(%nyx_string* %7729, %nyx_string* %7731)
  br i1 %7732, label %then1317, label %else1318
then1317:
  %7733 = getelementptr [4 x i8], [4 x i8]* @.str1034, i32 0, i32 0
  %7734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %7733, i64 3)
  %7735 = call i8* @nyx_string_to_cstr(%nyx_string* %7734)
  %7736 = call i1 @nyx_file_exists(i8* %7735)
  br i1 %7736, label %then1320, label %else1321
then1320:
  %7737 = getelementptr [2 x i8], [2 x i8]* @.str1035, i32 0, i32 0
  %7738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %7737, i64 1)
  store %nyx_string* %7738, %nyx_string** %7700
  br label %merge1322
else1321:
  br label %merge1322
merge1322:
  br label %merge1319
else1318:
  br label %merge1319
merge1319:
  %7739 = load %nyx_string*, %nyx_string** %7700
  %7740 = getelementptr [1 x i8], [1 x i8]* @.str1036, i32 0, i32 0
  %7741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %7740, i64 0)
  %7742 = call i1 @nyx_string_equals(%nyx_string* %7739, %nyx_string* %7741)
  br i1 %7742, label %then1323, label %else1324
then1323:
  %7743 = getelementptr [1 x i8], [1 x i8]* @.str1037, i32 0, i32 0
  %7744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %7743, i64 0)
  ret %nyx_string* %7744
else1324:
  br label %merge1325
merge1325:
  %7745 = load %nyx_string*, %nyx_string** %7700
  %7746 = getelementptr [5 x i8], [5 x i8]* @.str1038, i32 0, i32 0
  %7747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %7746, i64 4)
  %7748 = call %nyx_string* @nyx_string_concat(%nyx_string* %7745, %nyx_string* %7747)
  ret %nyx_string* %7748
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %7749 = alloca i1
  store i1 true, i1* %7749
  %7750 = alloca i1
  store i1 true, i1* %7750
  %7751 = alloca i1
  store i1 true, i1* %7751
  %7752 = load %nyx_string*, %nyx_string** %name.ptr
  %7753 = getelementptr [5 x i8], [5 x i8]* @.str1039, i32 0, i32 0
  %7754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %7753, i64 4)
  %7755 = call i1 @nyx_string_equals(%nyx_string* %7752, %nyx_string* %7754)
  br i1 %7755, label %sc_or_end1327, label %sc_or_rhs1326
sc_or_rhs1326:
  %7756 = load %nyx_string*, %nyx_string** %name.ptr
  %7757 = getelementptr [4 x i8], [4 x i8]* @.str1040, i32 0, i32 0
  %7758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %7757, i64 3)
  %7759 = call i1 @nyx_string_equals(%nyx_string* %7756, %nyx_string* %7758)
  store i1 %7759, i1* %7751
  br label %sc_or_end1327
sc_or_end1327:
  %7760 = load i1, i1* %7751
  br i1 %7760, label %sc_or_end1329, label %sc_or_rhs1328
sc_or_rhs1328:
  %7761 = load %nyx_string*, %nyx_string** %name.ptr
  %7762 = getelementptr [10 x i8], [10 x i8]* @.str1041, i32 0, i32 0
  %7763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %7762, i64 9)
  %7764 = call i1 @nyx_string_equals(%nyx_string* %7761, %nyx_string* %7763)
  store i1 %7764, i1* %7750
  br label %sc_or_end1329
sc_or_end1329:
  %7765 = load i1, i1* %7750
  br i1 %7765, label %sc_or_end1331, label %sc_or_rhs1330
sc_or_rhs1330:
  %7766 = load %nyx_string*, %nyx_string** %name.ptr
  %7767 = getelementptr [7 x i8], [7 x i8]* @.str1042, i32 0, i32 0
  %7768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %7767, i64 6)
  %7769 = call i1 @nyx_string_equals(%nyx_string* %7766, %nyx_string* %7768)
  store i1 %7769, i1* %7749
  br label %sc_or_end1331
sc_or_end1331:
  %7770 = load i1, i1* %7749
  br i1 %7770, label %then1332, label %else1333
then1332:
  %7771 = getelementptr [11 x i8], [11 x i8]* @.str1043, i32 0, i32 0
  %7772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %7771, i64 10)
  ret %nyx_string* %7772
else1333:
  br label %merge1334
merge1334:
  %7773 = alloca i1
  store i1 true, i1* %7773
  %7774 = alloca i1
  store i1 true, i1* %7774
  %7775 = load %nyx_string*, %nyx_string** %name.ptr
  %7776 = getelementptr [8 x i8], [8 x i8]* @.str1044, i32 0, i32 0
  %7777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %7776, i64 7)
  %7778 = call i1 @nyx_string_starts_with(%nyx_string* %7775, %nyx_string* %7777)
  br i1 %7778, label %sc_or_end1336, label %sc_or_rhs1335
sc_or_rhs1335:
  %7779 = load %nyx_string*, %nyx_string** %name.ptr
  %7780 = getelementptr [4 x i8], [4 x i8]* @.str1045, i32 0, i32 0
  %7781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %7780, i64 3)
  %7782 = call i1 @nyx_string_equals(%nyx_string* %7779, %nyx_string* %7781)
  store i1 %7782, i1* %7774
  br label %sc_or_end1336
sc_or_end1336:
  %7783 = load i1, i1* %7774
  br i1 %7783, label %sc_or_end1338, label %sc_or_rhs1337
sc_or_rhs1337:
  %7784 = load %nyx_string*, %nyx_string** %name.ptr
  %7785 = getelementptr [5 x i8], [5 x i8]* @.str1046, i32 0, i32 0
  %7786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %7785, i64 4)
  %7787 = call i1 @nyx_string_equals(%nyx_string* %7784, %nyx_string* %7786)
  store i1 %7787, i1* %7773
  br label %sc_or_end1338
sc_or_end1338:
  %7788 = load i1, i1* %7773
  br i1 %7788, label %then1339, label %else1340
then1339:
  %7789 = getelementptr [11 x i8], [11 x i8]* @.str1047, i32 0, i32 0
  %7790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %7789, i64 10)
  ret %nyx_string* %7790
else1340:
  br label %merge1341
merge1341:
  %7791 = alloca i1
  store i1 true, i1* %7791
  %7792 = alloca i1
  store i1 true, i1* %7792
  %7793 = load %nyx_string*, %nyx_string** %name.ptr
  %7794 = getelementptr [7 x i8], [7 x i8]* @.str1048, i32 0, i32 0
  %7795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %7794, i64 6)
  %7796 = call i1 @nyx_string_equals(%nyx_string* %7793, %nyx_string* %7795)
  br i1 %7796, label %sc_or_end1343, label %sc_or_rhs1342
sc_or_rhs1342:
  %7797 = load %nyx_string*, %nyx_string** %name.ptr
  %7798 = getelementptr [3 x i8], [3 x i8]* @.str1049, i32 0, i32 0
  %7799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %7798, i64 2)
  %7800 = call i1 @nyx_string_equals(%nyx_string* %7797, %nyx_string* %7799)
  store i1 %7800, i1* %7792
  br label %sc_or_end1343
sc_or_end1343:
  %7801 = load i1, i1* %7792
  br i1 %7801, label %sc_or_end1345, label %sc_or_rhs1344
sc_or_rhs1344:
  %7802 = load %nyx_string*, %nyx_string** %name.ptr
  %7803 = getelementptr [9 x i8], [9 x i8]* @.str1050, i32 0, i32 0
  %7804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %7803, i64 8)
  %7805 = call i1 @nyx_string_equals(%nyx_string* %7802, %nyx_string* %7804)
  store i1 %7805, i1* %7791
  br label %sc_or_end1345
sc_or_end1345:
  %7806 = load i1, i1* %7791
  br i1 %7806, label %then1346, label %else1347
then1346:
  %7807 = getelementptr [20 x i8], [20 x i8]* @.str1051, i32 0, i32 0
  %7808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %7807, i64 19)
  ret %nyx_string* %7808
else1347:
  br label %merge1348
merge1348:
  %7809 = alloca i1
  store i1 true, i1* %7809
  %7810 = alloca i1
  store i1 true, i1* %7810
  %7811 = alloca i1
  store i1 true, i1* %7811
  %7812 = alloca i1
  store i1 true, i1* %7812
  %7813 = alloca i1
  store i1 true, i1* %7813
  %7814 = alloca i1
  store i1 true, i1* %7814
  %7815 = alloca i1
  store i1 true, i1* %7815
  %7816 = load %nyx_string*, %nyx_string** %name.ptr
  %7817 = getelementptr [5 x i8], [5 x i8]* @.str1052, i32 0, i32 0
  %7818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %7817, i64 4)
  %7819 = call i1 @nyx_string_equals(%nyx_string* %7816, %nyx_string* %7818)
  br i1 %7819, label %sc_or_end1350, label %sc_or_rhs1349
sc_or_rhs1349:
  %7820 = load %nyx_string*, %nyx_string** %name.ptr
  %7821 = getelementptr [8 x i8], [8 x i8]* @.str1053, i32 0, i32 0
  %7822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %7821, i64 7)
  %7823 = call i1 @nyx_string_equals(%nyx_string* %7820, %nyx_string* %7822)
  store i1 %7823, i1* %7815
  br label %sc_or_end1350
sc_or_end1350:
  %7824 = load i1, i1* %7815
  br i1 %7824, label %sc_or_end1352, label %sc_or_rhs1351
sc_or_rhs1351:
  %7825 = load %nyx_string*, %nyx_string** %name.ptr
  %7826 = getelementptr [5 x i8], [5 x i8]* @.str1054, i32 0, i32 0
  %7827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %7826, i64 4)
  %7828 = call i1 @nyx_string_equals(%nyx_string* %7825, %nyx_string* %7827)
  store i1 %7828, i1* %7814
  br label %sc_or_end1352
sc_or_end1352:
  %7829 = load i1, i1* %7814
  br i1 %7829, label %sc_or_end1354, label %sc_or_rhs1353
sc_or_rhs1353:
  %7830 = load %nyx_string*, %nyx_string** %name.ptr
  %7831 = getelementptr [4 x i8], [4 x i8]* @.str1055, i32 0, i32 0
  %7832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %7831, i64 3)
  %7833 = call i1 @nyx_string_equals(%nyx_string* %7830, %nyx_string* %7832)
  store i1 %7833, i1* %7813
  br label %sc_or_end1354
sc_or_end1354:
  %7834 = load i1, i1* %7813
  br i1 %7834, label %sc_or_end1356, label %sc_or_rhs1355
sc_or_rhs1355:
  %7835 = load %nyx_string*, %nyx_string** %name.ptr
  %7836 = getelementptr [7 x i8], [7 x i8]* @.str1056, i32 0, i32 0
  %7837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %7836, i64 6)
  %7838 = call i1 @nyx_string_equals(%nyx_string* %7835, %nyx_string* %7837)
  store i1 %7838, i1* %7812
  br label %sc_or_end1356
sc_or_end1356:
  %7839 = load i1, i1* %7812
  br i1 %7839, label %sc_or_end1358, label %sc_or_rhs1357
sc_or_rhs1357:
  %7840 = load %nyx_string*, %nyx_string** %name.ptr
  %7841 = getelementptr [9 x i8], [9 x i8]* @.str1057, i32 0, i32 0
  %7842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %7841, i64 8)
  %7843 = call i1 @nyx_string_equals(%nyx_string* %7840, %nyx_string* %7842)
  store i1 %7843, i1* %7811
  br label %sc_or_end1358
sc_or_end1358:
  %7844 = load i1, i1* %7811
  br i1 %7844, label %sc_or_end1360, label %sc_or_rhs1359
sc_or_rhs1359:
  %7845 = load %nyx_string*, %nyx_string** %name.ptr
  %7846 = getelementptr [8 x i8], [8 x i8]* @.str1058, i32 0, i32 0
  %7847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %7846, i64 7)
  %7848 = call i1 @nyx_string_equals(%nyx_string* %7845, %nyx_string* %7847)
  store i1 %7848, i1* %7810
  br label %sc_or_end1360
sc_or_end1360:
  %7849 = load i1, i1* %7810
  br i1 %7849, label %sc_or_end1362, label %sc_or_rhs1361
sc_or_rhs1361:
  %7850 = load %nyx_string*, %nyx_string** %name.ptr
  %7851 = getelementptr [4 x i8], [4 x i8]* @.str1059, i32 0, i32 0
  %7852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %7851, i64 3)
  %7853 = call i1 @nyx_string_equals(%nyx_string* %7850, %nyx_string* %7852)
  store i1 %7853, i1* %7809
  br label %sc_or_end1362
sc_or_end1362:
  %7854 = load i1, i1* %7809
  br i1 %7854, label %then1363, label %else1364
then1363:
  %7855 = getelementptr [23 x i8], [23 x i8]* @.str1060, i32 0, i32 0
  %7856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %7855, i64 22)
  ret %nyx_string* %7856
else1364:
  br label %merge1365
merge1365:
  %7857 = alloca i1
  store i1 true, i1* %7857
  %7858 = alloca i1
  store i1 true, i1* %7858
  %7859 = alloca i1
  store i1 true, i1* %7859
  %7860 = load %nyx_string*, %nyx_string** %name.ptr
  %7861 = getelementptr [3 x i8], [3 x i8]* @.str1061, i32 0, i32 0
  %7862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %7861, i64 2)
  %7863 = call i1 @nyx_string_equals(%nyx_string* %7860, %nyx_string* %7862)
  br i1 %7863, label %sc_or_end1367, label %sc_or_rhs1366
sc_or_rhs1366:
  %7864 = load %nyx_string*, %nyx_string** %name.ptr
  %7865 = getelementptr [5 x i8], [5 x i8]* @.str1062, i32 0, i32 0
  %7866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %7865, i64 4)
  %7867 = call i1 @nyx_string_equals(%nyx_string* %7864, %nyx_string* %7866)
  store i1 %7867, i1* %7859
  br label %sc_or_end1367
sc_or_end1367:
  %7868 = load i1, i1* %7859
  br i1 %7868, label %sc_or_end1369, label %sc_or_rhs1368
sc_or_rhs1368:
  %7869 = load %nyx_string*, %nyx_string** %name.ptr
  %7870 = getelementptr [3 x i8], [3 x i8]* @.str1063, i32 0, i32 0
  %7871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %7870, i64 2)
  %7872 = call i1 @nyx_string_equals(%nyx_string* %7869, %nyx_string* %7871)
  store i1 %7872, i1* %7858
  br label %sc_or_end1369
sc_or_end1369:
  %7873 = load i1, i1* %7858
  br i1 %7873, label %sc_or_end1371, label %sc_or_rhs1370
sc_or_rhs1370:
  %7874 = load %nyx_string*, %nyx_string** %name.ptr
  %7875 = getelementptr [5 x i8], [5 x i8]* @.str1064, i32 0, i32 0
  %7876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %7875, i64 4)
  %7877 = call i1 @nyx_string_equals(%nyx_string* %7874, %nyx_string* %7876)
  store i1 %7877, i1* %7857
  br label %sc_or_end1371
sc_or_end1371:
  %7878 = load i1, i1* %7857
  br i1 %7878, label %then1372, label %else1373
then1372:
  %7879 = getelementptr [15 x i8], [15 x i8]* @.str1065, i32 0, i32 0
  %7880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %7879, i64 14)
  ret %nyx_string* %7880
else1373:
  br label %merge1374
merge1374:
  %7881 = alloca i1
  store i1 true, i1* %7881
  %7882 = alloca i1
  store i1 true, i1* %7882
  %7883 = alloca i1
  store i1 true, i1* %7883
  %7884 = alloca i1
  store i1 true, i1* %7884
  %7885 = alloca i1
  store i1 true, i1* %7885
  %7886 = alloca i1
  store i1 true, i1* %7886
  %7887 = load %nyx_string*, %nyx_string** %name.ptr
  %7888 = getelementptr [4 x i8], [4 x i8]* @.str1066, i32 0, i32 0
  %7889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %7888, i64 3)
  %7890 = call i1 @nyx_string_equals(%nyx_string* %7887, %nyx_string* %7889)
  br i1 %7890, label %sc_or_end1376, label %sc_or_rhs1375
sc_or_rhs1375:
  %7891 = load %nyx_string*, %nyx_string** %name.ptr
  %7892 = getelementptr [4 x i8], [4 x i8]* @.str1067, i32 0, i32 0
  %7893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %7892, i64 3)
  %7894 = call i1 @nyx_string_equals(%nyx_string* %7891, %nyx_string* %7893)
  store i1 %7894, i1* %7886
  br label %sc_or_end1376
sc_or_end1376:
  %7895 = load i1, i1* %7886
  br i1 %7895, label %sc_or_end1378, label %sc_or_rhs1377
sc_or_rhs1377:
  %7896 = load %nyx_string*, %nyx_string** %name.ptr
  %7897 = getelementptr [4 x i8], [4 x i8]* @.str1068, i32 0, i32 0
  %7898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %7897, i64 3)
  %7899 = call i1 @nyx_string_equals(%nyx_string* %7896, %nyx_string* %7898)
  store i1 %7899, i1* %7885
  br label %sc_or_end1378
sc_or_end1378:
  %7900 = load i1, i1* %7885
  br i1 %7900, label %sc_or_end1380, label %sc_or_rhs1379
sc_or_rhs1379:
  %7901 = load %nyx_string*, %nyx_string** %name.ptr
  %7902 = getelementptr [6 x i8], [6 x i8]* @.str1069, i32 0, i32 0
  %7903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %7902, i64 5)
  %7904 = call i1 @nyx_string_equals(%nyx_string* %7901, %nyx_string* %7903)
  store i1 %7904, i1* %7884
  br label %sc_or_end1380
sc_or_end1380:
  %7905 = load i1, i1* %7884
  br i1 %7905, label %sc_or_end1382, label %sc_or_rhs1381
sc_or_rhs1381:
  %7906 = load %nyx_string*, %nyx_string** %name.ptr
  %7907 = getelementptr [4 x i8], [4 x i8]* @.str1070, i32 0, i32 0
  %7908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %7907, i64 3)
  %7909 = call i1 @nyx_string_equals(%nyx_string* %7906, %nyx_string* %7908)
  store i1 %7909, i1* %7883
  br label %sc_or_end1382
sc_or_end1382:
  %7910 = load i1, i1* %7883
  br i1 %7910, label %sc_or_end1384, label %sc_or_rhs1383
sc_or_rhs1383:
  %7911 = load %nyx_string*, %nyx_string** %name.ptr
  %7912 = getelementptr [4 x i8], [4 x i8]* @.str1071, i32 0, i32 0
  %7913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %7912, i64 3)
  %7914 = call i1 @nyx_string_equals(%nyx_string* %7911, %nyx_string* %7913)
  store i1 %7914, i1* %7882
  br label %sc_or_end1384
sc_or_end1384:
  %7915 = load i1, i1* %7882
  br i1 %7915, label %sc_or_end1386, label %sc_or_rhs1385
sc_or_rhs1385:
  %7916 = load %nyx_string*, %nyx_string** %name.ptr
  %7917 = getelementptr [5 x i8], [5 x i8]* @.str1072, i32 0, i32 0
  %7918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %7917, i64 4)
  %7919 = call i1 @nyx_string_equals(%nyx_string* %7916, %nyx_string* %7918)
  store i1 %7919, i1* %7881
  br label %sc_or_end1386
sc_or_end1386:
  %7920 = load i1, i1* %7881
  br i1 %7920, label %then1387, label %else1388
then1387:
  %7921 = getelementptr [4 x i8], [4 x i8]* @.str1073, i32 0, i32 0
  %7922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %7921, i64 3)
  ret %nyx_string* %7922
else1388:
  br label %merge1389
merge1389:
  %7923 = alloca i1
  store i1 true, i1* %7923
  %7924 = alloca i1
  store i1 true, i1* %7924
  %7925 = alloca i1
  store i1 true, i1* %7925
  %7926 = alloca i1
  store i1 true, i1* %7926
  %7927 = load %nyx_string*, %nyx_string** %name.ptr
  %7928 = getelementptr [7 x i8], [7 x i8]* @.str1074, i32 0, i32 0
  %7929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %7928, i64 6)
  %7930 = call i1 @nyx_string_equals(%nyx_string* %7927, %nyx_string* %7929)
  br i1 %7930, label %sc_or_end1391, label %sc_or_rhs1390
sc_or_rhs1390:
  %7931 = load %nyx_string*, %nyx_string** %name.ptr
  %7932 = getelementptr [8 x i8], [8 x i8]* @.str1075, i32 0, i32 0
  %7933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %7932, i64 7)
  %7934 = call i1 @nyx_string_equals(%nyx_string* %7931, %nyx_string* %7933)
  store i1 %7934, i1* %7926
  br label %sc_or_end1391
sc_or_end1391:
  %7935 = load i1, i1* %7926
  br i1 %7935, label %sc_or_end1393, label %sc_or_rhs1392
sc_or_rhs1392:
  %7936 = load %nyx_string*, %nyx_string** %name.ptr
  %7937 = getelementptr [10 x i8], [10 x i8]* @.str1076, i32 0, i32 0
  %7938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %7937, i64 9)
  %7939 = call i1 @nyx_string_equals(%nyx_string* %7936, %nyx_string* %7938)
  store i1 %7939, i1* %7925
  br label %sc_or_end1393
sc_or_end1393:
  %7940 = load i1, i1* %7925
  br i1 %7940, label %sc_or_end1395, label %sc_or_rhs1394
sc_or_rhs1394:
  %7941 = load %nyx_string*, %nyx_string** %name.ptr
  %7942 = getelementptr [5 x i8], [5 x i8]* @.str1077, i32 0, i32 0
  %7943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %7942, i64 4)
  %7944 = call i1 @nyx_string_equals(%nyx_string* %7941, %nyx_string* %7943)
  store i1 %7944, i1* %7924
  br label %sc_or_end1395
sc_or_end1395:
  %7945 = load i1, i1* %7924
  br i1 %7945, label %sc_or_end1397, label %sc_or_rhs1396
sc_or_rhs1396:
  %7946 = load %nyx_string*, %nyx_string** %name.ptr
  %7947 = getelementptr [6 x i8], [6 x i8]* @.str1078, i32 0, i32 0
  %7948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %7947, i64 5)
  %7949 = call i1 @nyx_string_equals(%nyx_string* %7946, %nyx_string* %7948)
  store i1 %7949, i1* %7923
  br label %sc_or_end1397
sc_or_end1397:
  %7950 = load i1, i1* %7923
  br i1 %7950, label %then1398, label %else1399
then1398:
  %7951 = getelementptr [13 x i8], [13 x i8]* @.str1079, i32 0, i32 0
  %7952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %7951, i64 12)
  ret %nyx_string* %7952
else1399:
  br label %merge1400
merge1400:
  %7953 = alloca i1
  store i1 true, i1* %7953
  %7954 = alloca i1
  store i1 true, i1* %7954
  %7955 = alloca i1
  store i1 true, i1* %7955
  %7956 = alloca i1
  store i1 true, i1* %7956
  %7957 = load %nyx_string*, %nyx_string** %name.ptr
  %7958 = getelementptr [7 x i8], [7 x i8]* @.str1080, i32 0, i32 0
  %7959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %7958, i64 6)
  %7960 = call i1 @nyx_string_equals(%nyx_string* %7957, %nyx_string* %7959)
  br i1 %7960, label %sc_or_end1402, label %sc_or_rhs1401
sc_or_rhs1401:
  %7961 = load %nyx_string*, %nyx_string** %name.ptr
  %7962 = getelementptr [4 x i8], [4 x i8]* @.str1081, i32 0, i32 0
  %7963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %7962, i64 3)
  %7964 = call i1 @nyx_string_equals(%nyx_string* %7961, %nyx_string* %7963)
  store i1 %7964, i1* %7956
  br label %sc_or_end1402
sc_or_end1402:
  %7965 = load i1, i1* %7956
  br i1 %7965, label %sc_or_end1404, label %sc_or_rhs1403
sc_or_rhs1403:
  %7966 = load %nyx_string*, %nyx_string** %name.ptr
  %7967 = getelementptr [5 x i8], [5 x i8]* @.str1082, i32 0, i32 0
  %7968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %7967, i64 4)
  %7969 = call i1 @nyx_string_equals(%nyx_string* %7966, %nyx_string* %7968)
  store i1 %7969, i1* %7955
  br label %sc_or_end1404
sc_or_end1404:
  %7970 = load i1, i1* %7955
  br i1 %7970, label %sc_or_end1406, label %sc_or_rhs1405
sc_or_rhs1405:
  %7971 = load %nyx_string*, %nyx_string** %name.ptr
  %7972 = getelementptr [7 x i8], [7 x i8]* @.str1083, i32 0, i32 0
  %7973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %7972, i64 6)
  %7974 = call i1 @nyx_string_equals(%nyx_string* %7971, %nyx_string* %7973)
  store i1 %7974, i1* %7954
  br label %sc_or_end1406
sc_or_end1406:
  %7975 = load i1, i1* %7954
  br i1 %7975, label %sc_or_end1408, label %sc_or_rhs1407
sc_or_rhs1407:
  %7976 = load %nyx_string*, %nyx_string** %name.ptr
  %7977 = getelementptr [5 x i8], [5 x i8]* @.str1084, i32 0, i32 0
  %7978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %7977, i64 4)
  %7979 = call i1 @nyx_string_equals(%nyx_string* %7976, %nyx_string* %7978)
  store i1 %7979, i1* %7953
  br label %sc_or_end1408
sc_or_end1408:
  %7980 = load i1, i1* %7953
  br i1 %7980, label %then1409, label %else1410
then1409:
  %7981 = getelementptr [19 x i8], [19 x i8]* @.str1085, i32 0, i32 0
  %7982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %7981, i64 18)
  ret %nyx_string* %7982
else1410:
  br label %merge1411
merge1411:
  %7983 = alloca i1
  store i1 true, i1* %7983
  %7984 = load %nyx_string*, %nyx_string** %name.ptr
  %7985 = getelementptr [5 x i8], [5 x i8]* @.str1086, i32 0, i32 0
  %7986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %7985, i64 4)
  %7987 = call i1 @nyx_string_equals(%nyx_string* %7984, %nyx_string* %7986)
  br i1 %7987, label %sc_or_end1413, label %sc_or_rhs1412
sc_or_rhs1412:
  %7988 = load %nyx_string*, %nyx_string** %name.ptr
  %7989 = getelementptr [9 x i8], [9 x i8]* @.str1087, i32 0, i32 0
  %7990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %7989, i64 8)
  %7991 = call i1 @nyx_string_equals(%nyx_string* %7988, %nyx_string* %7990)
  store i1 %7991, i1* %7983
  br label %sc_or_end1413
sc_or_end1413:
  %7992 = load i1, i1* %7983
  br i1 %7992, label %then1414, label %else1415
then1414:
  %7993 = getelementptr [7 x i8], [7 x i8]* @.str1088, i32 0, i32 0
  %7994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %7993, i64 6)
  ret %nyx_string* %7994
else1415:
  br label %merge1416
merge1416:
  %7995 = alloca i1
  store i1 true, i1* %7995
  %7996 = alloca i1
  store i1 true, i1* %7996
  %7997 = alloca i1
  store i1 true, i1* %7997
  %7998 = load %nyx_string*, %nyx_string** %name.ptr
  %7999 = getelementptr [7 x i8], [7 x i8]* @.str1089, i32 0, i32 0
  %8000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %7999, i64 6)
  %8001 = call i1 @nyx_string_equals(%nyx_string* %7998, %nyx_string* %8000)
  br i1 %8001, label %sc_or_end1418, label %sc_or_rhs1417
sc_or_rhs1417:
  %8002 = load %nyx_string*, %nyx_string** %name.ptr
  %8003 = getelementptr [8 x i8], [8 x i8]* @.str1090, i32 0, i32 0
  %8004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %8003, i64 7)
  %8005 = call i1 @nyx_string_equals(%nyx_string* %8002, %nyx_string* %8004)
  store i1 %8005, i1* %7997
  br label %sc_or_end1418
sc_or_end1418:
  %8006 = load i1, i1* %7997
  br i1 %8006, label %sc_or_end1420, label %sc_or_rhs1419
sc_or_rhs1419:
  %8007 = load %nyx_string*, %nyx_string** %name.ptr
  %8008 = getelementptr [14 x i8], [14 x i8]* @.str1091, i32 0, i32 0
  %8009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %8008, i64 13)
  %8010 = call i1 @nyx_string_equals(%nyx_string* %8007, %nyx_string* %8009)
  store i1 %8010, i1* %7996
  br label %sc_or_end1420
sc_or_end1420:
  %8011 = load i1, i1* %7996
  br i1 %8011, label %sc_or_end1422, label %sc_or_rhs1421
sc_or_rhs1421:
  %8012 = load %nyx_string*, %nyx_string** %name.ptr
  %8013 = getelementptr [6 x i8], [6 x i8]* @.str1092, i32 0, i32 0
  %8014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %8013, i64 5)
  %8015 = call i1 @nyx_string_equals(%nyx_string* %8012, %nyx_string* %8014)
  store i1 %8015, i1* %7995
  br label %sc_or_end1422
sc_or_end1422:
  %8016 = load i1, i1* %7995
  br i1 %8016, label %then1423, label %else1424
then1423:
  %8017 = getelementptr [16 x i8], [16 x i8]* @.str1093, i32 0, i32 0
  %8018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %8017, i64 15)
  ret %nyx_string* %8018
else1424:
  br label %merge1425
merge1425:
  %8019 = alloca i1
  store i1 true, i1* %8019
  %8020 = alloca i1
  store i1 true, i1* %8020
  %8021 = alloca i1
  store i1 true, i1* %8021
  %8022 = alloca i1
  store i1 true, i1* %8022
  %8023 = alloca i1
  store i1 true, i1* %8023
  %8024 = alloca i1
  store i1 true, i1* %8024
  %8025 = alloca i1
  store i1 true, i1* %8025
  %8026 = load %nyx_string*, %nyx_string** %name.ptr
  %8027 = getelementptr [4 x i8], [4 x i8]* @.str1094, i32 0, i32 0
  %8028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %8027, i64 3)
  %8029 = call i1 @nyx_string_equals(%nyx_string* %8026, %nyx_string* %8028)
  br i1 %8029, label %sc_or_end1427, label %sc_or_rhs1426
sc_or_rhs1426:
  %8030 = load %nyx_string*, %nyx_string** %name.ptr
  %8031 = getelementptr [6 x i8], [6 x i8]* @.str1095, i32 0, i32 0
  %8032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %8031, i64 5)
  %8033 = call i1 @nyx_string_equals(%nyx_string* %8030, %nyx_string* %8032)
  store i1 %8033, i1* %8025
  br label %sc_or_end1427
sc_or_end1427:
  %8034 = load i1, i1* %8025
  br i1 %8034, label %sc_or_end1429, label %sc_or_rhs1428
sc_or_rhs1428:
  %8035 = load %nyx_string*, %nyx_string** %name.ptr
  %8036 = getelementptr [11 x i8], [11 x i8]* @.str1096, i32 0, i32 0
  %8037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %8036, i64 10)
  %8038 = call i1 @nyx_string_equals(%nyx_string* %8035, %nyx_string* %8037)
  store i1 %8038, i1* %8024
  br label %sc_or_end1429
sc_or_end1429:
  %8039 = load i1, i1* %8024
  br i1 %8039, label %sc_or_end1431, label %sc_or_rhs1430
sc_or_rhs1430:
  %8040 = load %nyx_string*, %nyx_string** %name.ptr
  %8041 = getelementptr [6 x i8], [6 x i8]* @.str1097, i32 0, i32 0
  %8042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %8041, i64 5)
  %8043 = call i1 @nyx_string_equals(%nyx_string* %8040, %nyx_string* %8042)
  store i1 %8043, i1* %8023
  br label %sc_or_end1431
sc_or_end1431:
  %8044 = load i1, i1* %8023
  br i1 %8044, label %sc_or_end1433, label %sc_or_rhs1432
sc_or_rhs1432:
  %8045 = load %nyx_string*, %nyx_string** %name.ptr
  %8046 = getelementptr [9 x i8], [9 x i8]* @.str1098, i32 0, i32 0
  %8047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %8046, i64 8)
  %8048 = call i1 @nyx_string_equals(%nyx_string* %8045, %nyx_string* %8047)
  store i1 %8048, i1* %8022
  br label %sc_or_end1433
sc_or_end1433:
  %8049 = load i1, i1* %8022
  br i1 %8049, label %sc_or_end1435, label %sc_or_rhs1434
sc_or_rhs1434:
  %8050 = load %nyx_string*, %nyx_string** %name.ptr
  %8051 = getelementptr [14 x i8], [14 x i8]* @.str1099, i32 0, i32 0
  %8052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %8051, i64 13)
  %8053 = call i1 @nyx_string_equals(%nyx_string* %8050, %nyx_string* %8052)
  store i1 %8053, i1* %8021
  br label %sc_or_end1435
sc_or_end1435:
  %8054 = load i1, i1* %8021
  br i1 %8054, label %sc_or_end1437, label %sc_or_rhs1436
sc_or_rhs1436:
  %8055 = load %nyx_string*, %nyx_string** %name.ptr
  %8056 = getelementptr [6 x i8], [6 x i8]* @.str1100, i32 0, i32 0
  %8057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %8056, i64 5)
  %8058 = call i1 @nyx_string_equals(%nyx_string* %8055, %nyx_string* %8057)
  store i1 %8058, i1* %8020
  br label %sc_or_end1437
sc_or_end1437:
  %8059 = load i1, i1* %8020
  br i1 %8059, label %sc_or_end1439, label %sc_or_rhs1438
sc_or_rhs1438:
  %8060 = load %nyx_string*, %nyx_string** %name.ptr
  %8061 = getelementptr [7 x i8], [7 x i8]* @.str1101, i32 0, i32 0
  %8062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %8061, i64 6)
  %8063 = call i1 @nyx_string_equals(%nyx_string* %8060, %nyx_string* %8062)
  store i1 %8063, i1* %8019
  br label %sc_or_end1439
sc_or_end1439:
  %8064 = load i1, i1* %8019
  br i1 %8064, label %then1440, label %else1441
then1440:
  %8065 = getelementptr [26 x i8], [26 x i8]* @.str1102, i32 0, i32 0
  %8066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %8065, i64 25)
  ret %nyx_string* %8066
else1441:
  br label %merge1442
merge1442:
  %8067 = alloca i1
  store i1 true, i1* %8067
  %8068 = alloca i1
  store i1 true, i1* %8068
  %8069 = alloca i1
  store i1 true, i1* %8069
  %8070 = load %nyx_string*, %nyx_string** %name.ptr
  %8071 = getelementptr [6 x i8], [6 x i8]* @.str1103, i32 0, i32 0
  %8072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %8071, i64 5)
  %8073 = call i1 @nyx_string_equals(%nyx_string* %8070, %nyx_string* %8072)
  br i1 %8073, label %sc_or_end1444, label %sc_or_rhs1443
sc_or_rhs1443:
  %8074 = load %nyx_string*, %nyx_string** %name.ptr
  %8075 = getelementptr [4 x i8], [4 x i8]* @.str1104, i32 0, i32 0
  %8076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %8075, i64 3)
  %8077 = call i1 @nyx_string_equals(%nyx_string* %8074, %nyx_string* %8076)
  store i1 %8077, i1* %8069
  br label %sc_or_end1444
sc_or_end1444:
  %8078 = load i1, i1* %8069
  br i1 %8078, label %sc_or_end1446, label %sc_or_rhs1445
sc_or_rhs1445:
  %8079 = load %nyx_string*, %nyx_string** %name.ptr
  %8080 = getelementptr [3 x i8], [3 x i8]* @.str1105, i32 0, i32 0
  %8081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %8080, i64 2)
  %8082 = call i1 @nyx_string_equals(%nyx_string* %8079, %nyx_string* %8081)
  store i1 %8082, i1* %8068
  br label %sc_or_end1446
sc_or_end1446:
  %8083 = load i1, i1* %8068
  br i1 %8083, label %sc_or_end1448, label %sc_or_rhs1447
sc_or_rhs1447:
  %8084 = load %nyx_string*, %nyx_string** %name.ptr
  %8085 = getelementptr [10 x i8], [10 x i8]* @.str1106, i32 0, i32 0
  %8086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %8085, i64 9)
  %8087 = call i1 @nyx_string_equals(%nyx_string* %8084, %nyx_string* %8086)
  store i1 %8087, i1* %8067
  br label %sc_or_end1448
sc_or_end1448:
  %8088 = load i1, i1* %8067
  br i1 %8088, label %then1449, label %else1450
then1449:
  %8089 = getelementptr [8 x i8], [8 x i8]* @.str1107, i32 0, i32 0
  %8090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %8089, i64 7)
  ret %nyx_string* %8090
else1450:
  br label %merge1451
merge1451:
  %8091 = alloca i1
  store i1 true, i1* %8091
  %8092 = alloca i1
  store i1 true, i1* %8092
  %8093 = alloca i1
  store i1 true, i1* %8093
  %8094 = alloca i1
  store i1 true, i1* %8094
  %8095 = alloca i1
  store i1 true, i1* %8095
  %8096 = alloca i1
  store i1 true, i1* %8096
  %8097 = load %nyx_string*, %nyx_string** %name.ptr
  %8098 = getelementptr [5 x i8], [5 x i8]* @.str1108, i32 0, i32 0
  %8099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %8098, i64 4)
  %8100 = call i1 @nyx_string_equals(%nyx_string* %8097, %nyx_string* %8099)
  br i1 %8100, label %sc_or_end1453, label %sc_or_rhs1452
sc_or_rhs1452:
  %8101 = load %nyx_string*, %nyx_string** %name.ptr
  %8102 = getelementptr [4 x i8], [4 x i8]* @.str1109, i32 0, i32 0
  %8103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %8102, i64 3)
  %8104 = call i1 @nyx_string_equals(%nyx_string* %8101, %nyx_string* %8103)
  store i1 %8104, i1* %8096
  br label %sc_or_end1453
sc_or_end1453:
  %8105 = load i1, i1* %8096
  br i1 %8105, label %sc_or_end1455, label %sc_or_rhs1454
sc_or_rhs1454:
  %8106 = load %nyx_string*, %nyx_string** %name.ptr
  %8107 = getelementptr [4 x i8], [4 x i8]* @.str1110, i32 0, i32 0
  %8108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %8107, i64 3)
  %8109 = call i1 @nyx_string_equals(%nyx_string* %8106, %nyx_string* %8108)
  store i1 %8109, i1* %8095
  br label %sc_or_end1455
sc_or_end1455:
  %8110 = load i1, i1* %8095
  br i1 %8110, label %sc_or_end1457, label %sc_or_rhs1456
sc_or_rhs1456:
  %8111 = load %nyx_string*, %nyx_string** %name.ptr
  %8112 = getelementptr [8 x i8], [8 x i8]* @.str1111, i32 0, i32 0
  %8113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %8112, i64 7)
  %8114 = call i1 @nyx_string_equals(%nyx_string* %8111, %nyx_string* %8113)
  store i1 %8114, i1* %8094
  br label %sc_or_end1457
sc_or_end1457:
  %8115 = load i1, i1* %8094
  br i1 %8115, label %sc_or_end1459, label %sc_or_rhs1458
sc_or_rhs1458:
  %8116 = load %nyx_string*, %nyx_string** %name.ptr
  %8117 = getelementptr [7 x i8], [7 x i8]* @.str1112, i32 0, i32 0
  %8118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %8117, i64 6)
  %8119 = call i1 @nyx_string_equals(%nyx_string* %8116, %nyx_string* %8118)
  store i1 %8119, i1* %8093
  br label %sc_or_end1459
sc_or_end1459:
  %8120 = load i1, i1* %8093
  br i1 %8120, label %sc_or_end1461, label %sc_or_rhs1460
sc_or_rhs1460:
  %8121 = load %nyx_string*, %nyx_string** %name.ptr
  %8122 = getelementptr [8 x i8], [8 x i8]* @.str1113, i32 0, i32 0
  %8123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %8122, i64 7)
  %8124 = call i1 @nyx_string_equals(%nyx_string* %8121, %nyx_string* %8123)
  store i1 %8124, i1* %8092
  br label %sc_or_end1461
sc_or_end1461:
  %8125 = load i1, i1* %8092
  br i1 %8125, label %sc_or_end1463, label %sc_or_rhs1462
sc_or_rhs1462:
  %8126 = load %nyx_string*, %nyx_string** %name.ptr
  %8127 = getelementptr [11 x i8], [11 x i8]* @.str1114, i32 0, i32 0
  %8128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %8127, i64 10)
  %8129 = call i1 @nyx_string_equals(%nyx_string* %8126, %nyx_string* %8128)
  store i1 %8129, i1* %8091
  br label %sc_or_end1463
sc_or_end1463:
  %8130 = load i1, i1* %8091
  br i1 %8130, label %then1464, label %else1465
then1464:
  %8131 = getelementptr [14 x i8], [14 x i8]* @.str1115, i32 0, i32 0
  %8132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %8131, i64 13)
  ret %nyx_string* %8132
else1465:
  br label %merge1466
merge1466:
  %8133 = getelementptr [1 x i8], [1 x i8]* @.str1116, i32 0, i32 0
  %8134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %8133, i64 0)
  ret %nyx_string* %8134
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %8135 = alloca i64
  store i64 0, i64* %8135
  %8136 = alloca i64
  store i64 0, i64* %8136
  %8137 = call i8* @llvm.stacksave()
  br label %while_cond1467
while_cond1467:
  %8138 = load i64, i64* %8136
  %8139 = load %nyx_string*, %nyx_string** %s.ptr
  %8140 = call i64 @nyx_string_byte_length(%nyx_string* %8139)
  %8141 = icmp slt i64 %8138, %8140
  br i1 %8141, label %while_body1468, label %while_end1469
while_body1468:
  call void @llvm.stackrestore(i8* %8137)
  %8142 = load %nyx_string*, %nyx_string** %s.ptr
  %8143 = load i64, i64* %8136
  %8144 = call i8 @nyx_string_char_at(%nyx_string* %8142, i64 %8143)
  %8145 = zext i8 %8144 to i64
  %8146 = trunc i64 %8145 to i8
  %8147 = alloca i8
  store i8 %8146, i8* %8147
  %8148 = load i8, i8* %8147
  %8149 = getelementptr [1 x i8], [1 x i8]* @.str1117, i32 0, i32 0
  %8150 = load i8, i8* %8149
  %8151 = zext i8 %8150 to i64
  %8152 = zext i8 %8148 to i64
  %8153 = icmp eq i64 %8152, %8151
  br i1 %8153, label %then1470, label %else1471
then1470:
  %8154 = load i64, i64* %8135
  %8155 = add i64 %8154, 1
  store i64 %8155, i64* %8135
  br label %merge1472
else1471:
  br label %merge1472
merge1472:
  %8156 = load i8, i8* %8147
  %8157 = getelementptr [1 x i8], [1 x i8]* @.str1118, i32 0, i32 0
  %8158 = load i8, i8* %8157
  %8159 = zext i8 %8158 to i64
  %8160 = zext i8 %8156 to i64
  %8161 = icmp eq i64 %8160, %8159
  br i1 %8161, label %then1473, label %else1474
then1473:
  %8162 = load i64, i64* %8135
  %8163 = sub i64 %8162, 1
  store i64 %8163, i64* %8135
  br label %merge1475
else1474:
  br label %merge1475
merge1475:
  %8164 = load i64, i64* %8136
  %8165 = add i64 %8164, 1
  store i64 %8165, i64* %8136
  br label %while_cond1467
while_end1469:
  %8166 = load i64, i64* %8135
  ret i64 %8166
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %8167 = load %nyx_string*, %nyx_string** %filename.ptr
  %8168 = load %nyx_string*, %nyx_string** %filename.ptr
  %8169 = call i64 @nyx_string_byte_length(%nyx_string* %8168)
  %8170 = sub i64 %8169, 3
  %8171 = call %nyx_string* @nyx_string_substring(%nyx_string* %8167, i64 0, i64 %8170)
  %8172 = alloca %nyx_string*
  store %nyx_string* %8171, %nyx_string** %8172
  %8173 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %8174 = getelementptr [2 x i8], [2 x i8]* @.str1119, i32 0, i32 0
  %8175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1119.c, i8* %8174, i64 1)
  %8176 = call %nyx_string* @nyx_string_concat(%nyx_string* %8173, %nyx_string* %8175)
  %8177 = load %nyx_string*, %nyx_string** %filename.ptr
  %8178 = call %nyx_string* @nyx_string_concat(%nyx_string* %8176, %nyx_string* %8177)
  %8179 = call i8* @nyx_string_to_cstr(%nyx_string* %8178)
  %8180 = call %nyx_string* @nyx_read_file(i8* %8179)
  %8181 = alloca %nyx_string*
  store %nyx_string* %8180, %nyx_string** %8181
  %8182 = load %nyx_string*, %nyx_string** %8181
  %8183 = getelementptr [2 x i8], [2 x i8]* @.str1120, i32 0, i32 0
  %8184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %8183, i64 1)
  %8185 = call { i64, i8* }* @nyx_string_split(%nyx_string* %8182, %nyx_string* %8184)
  %8186 = alloca { i64, i8* }*
  store { i64, i8* }* %8185, { i64, i8* }** %8186
  %8187 = getelementptr [1 x i8], [1 x i8]* @.str1121, i32 0, i32 0
  %8188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %8187, i64 0)
  %8189 = alloca %nyx_string*
  store %nyx_string* %8188, %nyx_string** %8189
  %8190 = getelementptr [1 x i8], [1 x i8]* @.str1122, i32 0, i32 0
  %8191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %8190, i64 0)
  %8192 = alloca %nyx_string*
  store %nyx_string* %8191, %nyx_string** %8192
  %8193 = alloca i64
  store i64 0, i64* %8193
  %8194 = alloca i64
  store i64 0, i64* %8194
  %8195 = getelementptr [4 x i8], [4 x i8]* @.str1123, i32 0, i32 0
  %8196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %8195, i64 3)
  %8197 = alloca %nyx_string*
  store %nyx_string* %8196, %nyx_string** %8197
  %8198 = getelementptr [1 x i8], [1 x i8]* @.str1124, i32 0, i32 0
  %8199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %8198, i64 0)
  %8200 = alloca %nyx_string*
  store %nyx_string* %8199, %nyx_string** %8200
  %8201 = getelementptr [2 x i8], [2 x i8]* @.str1125, i32 0, i32 0
  %8202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %8201, i64 1)
  %8203 = alloca %nyx_string*
  store %nyx_string* %8202, %nyx_string** %8203
  %8204 = getelementptr [8 x i8], [8 x i8]* @.str1126, i32 0, i32 0
  %8205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %8204, i64 7)
  %8206 = alloca %nyx_string*
  store %nyx_string* %8205, %nyx_string** %8206
  %8207 = getelementptr [11 x i8], [11 x i8]* @.str1127, i32 0, i32 0
  %8208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %8207, i64 10)
  %8209 = alloca %nyx_string*
  store %nyx_string* %8208, %nyx_string** %8209
  %8210 = getelementptr [14 x i8], [14 x i8]* @.str1128, i32 0, i32 0
  %8211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %8210, i64 13)
  %8212 = alloca %nyx_string*
  store %nyx_string* %8211, %nyx_string** %8212
  %8213 = getelementptr [17 x i8], [17 x i8]* @.str1129, i32 0, i32 0
  %8214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %8213, i64 16)
  %8215 = alloca %nyx_string*
  store %nyx_string* %8214, %nyx_string** %8215
  %8216 = getelementptr [4 x i8], [4 x i8]* @.str1130, i32 0, i32 0
  %8217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %8216, i64 3)
  %8218 = alloca %nyx_string*
  store %nyx_string* %8217, %nyx_string** %8218
  %8219 = getelementptr [2 x i8], [2 x i8]* @.str1131, i32 0, i32 0
  %8220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %8219, i64 1)
  %8221 = alloca %nyx_string*
  store %nyx_string* %8220, %nyx_string** %8221
  %8222 = getelementptr [6 x i8], [6 x i8]* @.str1132, i32 0, i32 0
  %8223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %8222, i64 5)
  %8224 = alloca %nyx_string*
  store %nyx_string* %8223, %nyx_string** %8224
  %8225 = getelementptr [2 x i8], [2 x i8]* @.str1133, i32 0, i32 0
  %8226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %8225, i64 1)
  %8227 = alloca %nyx_string*
  store %nyx_string* %8226, %nyx_string** %8227
  %8228 = call i8* @llvm.stacksave()
  br label %while_cond1476
while_cond1476:
  %8229 = load i64, i64* %8194
  %8230 = load { i64, i8* }*, { i64, i8* }** %8186
  %8231 = call i64 @nyx_array_length({ i64, i8* }* %8230)
  %8232 = icmp slt i64 %8229, %8231
  br i1 %8232, label %while_body1477, label %while_end1478
while_body1477:
  call void @llvm.stackrestore(i8* %8228)
  %8233 = load { i64, i8* }*, { i64, i8* }** %8186
  %8234 = load i64, i64* %8194
  %8235 = call i64 @nyx_array_get_checked({ i64, i8* }* %8233, i64 %8234, i64 2)
  %8236 = inttoptr i64 %8235 to %nyx_string*
  %8237 = alloca %nyx_string*
  store %nyx_string* %8236, %nyx_string** %8237
  %8238 = load %nyx_string*, %nyx_string** %8237
  %8239 = call %nyx_string* @nyx_string_trim(%nyx_string* %8238)
  %8240 = alloca %nyx_string*
  store %nyx_string* %8239, %nyx_string** %8240
  %8241 = load %nyx_string*, %nyx_string** %8240
  %8242 = load %nyx_string*, %nyx_string** %8197
  %8243 = call i1 @nyx_string_starts_with(%nyx_string* %8241, %nyx_string* %8242)
  br i1 %8243, label %then1479, label %else1480
then1479:
  %8244 = load %nyx_string*, %nyx_string** %8240
  %8245 = load %nyx_string*, %nyx_string** %8240
  %8246 = call i64 @nyx_string_byte_length(%nyx_string* %8245)
  %8247 = call %nyx_string* @nyx_string_substring(%nyx_string* %8244, i64 3, i64 %8246)
  %8248 = alloca %nyx_string*
  store %nyx_string* %8247, %nyx_string** %8248
  %8249 = load %nyx_string*, %nyx_string** %8248
  %8250 = call %nyx_string* @nyx_string_trim(%nyx_string* %8249)
  %8251 = alloca %nyx_string*
  store %nyx_string* %8250, %nyx_string** %8251
  %8252 = load %nyx_string*, %nyx_string** %8192
  %8253 = load %nyx_string*, %nyx_string** %8200
  %8254 = call i1 @nyx_string_equals(%nyx_string* %8252, %nyx_string* %8253)
  br i1 %8254, label %then1482, label %else1483
then1482:
  %8255 = load %nyx_string*, %nyx_string** %8251
  store %nyx_string* %8255, %nyx_string** %8192
  br label %merge1484
else1483:
  %8256 = load %nyx_string*, %nyx_string** %8192
  %8257 = load %nyx_string*, %nyx_string** %8203
  %8258 = call %nyx_string* @nyx_string_concat(%nyx_string* %8256, %nyx_string* %8257)
  %8259 = load %nyx_string*, %nyx_string** %8251
  %8260 = call %nyx_string* @nyx_string_concat(%nyx_string* %8258, %nyx_string* %8259)
  store %nyx_string* %8260, %nyx_string** %8192
  br label %merge1484
merge1484:
  br label %merge1481
else1480:
  %8261 = alloca i1
  store i1 true, i1* %8261
  %8262 = alloca i1
  store i1 true, i1* %8262
  %8263 = alloca i1
  store i1 true, i1* %8263
  %8264 = load %nyx_string*, %nyx_string** %8240
  %8265 = load %nyx_string*, %nyx_string** %8206
  %8266 = call i1 @nyx_string_starts_with(%nyx_string* %8264, %nyx_string* %8265)
  br i1 %8266, label %sc_or_end1486, label %sc_or_rhs1485
sc_or_rhs1485:
  %8267 = load %nyx_string*, %nyx_string** %8240
  %8268 = load %nyx_string*, %nyx_string** %8209
  %8269 = call i1 @nyx_string_starts_with(%nyx_string* %8267, %nyx_string* %8268)
  store i1 %8269, i1* %8263
  br label %sc_or_end1486
sc_or_end1486:
  %8270 = load i1, i1* %8263
  br i1 %8270, label %sc_or_end1488, label %sc_or_rhs1487
sc_or_rhs1487:
  %8271 = load %nyx_string*, %nyx_string** %8240
  %8272 = load %nyx_string*, %nyx_string** %8212
  %8273 = call i1 @nyx_string_starts_with(%nyx_string* %8271, %nyx_string* %8272)
  store i1 %8273, i1* %8262
  br label %sc_or_end1488
sc_or_end1488:
  %8274 = load i1, i1* %8262
  br i1 %8274, label %sc_or_end1490, label %sc_or_rhs1489
sc_or_rhs1489:
  %8275 = load %nyx_string*, %nyx_string** %8240
  %8276 = load %nyx_string*, %nyx_string** %8215
  %8277 = call i1 @nyx_string_starts_with(%nyx_string* %8275, %nyx_string* %8276)
  store i1 %8277, i1* %8261
  br label %sc_or_end1490
sc_or_end1490:
  %8278 = load i1, i1* %8261
  %8279 = alloca i1
  store i1 %8278, i1* %8279
  %8280 = load i1, i1* %8279
  br i1 %8280, label %then1491, label %else1492
then1491:
  %8281 = load %nyx_string*, %nyx_string** %8240
  %8282 = alloca %nyx_string*
  store %nyx_string* %8281, %nyx_string** %8282
  %8283 = load %nyx_string*, %nyx_string** %8282
  %8284 = call i64 @capabilities_paren_delta(%nyx_string* %8283)
  %8285 = alloca i64
  store i64 %8284, i64* %8285
  %8286 = call i8* @llvm.stacksave()
  br label %while_cond1494
while_cond1494:
  %8287 = alloca i1
  store i1 false, i1* %8287
  %8288 = load i64, i64* %8285
  %8289 = icmp sgt i64 %8288, 0
  br i1 %8289, label %sc_and_rhs1497, label %sc_and_end1498
sc_and_rhs1497:
  %8290 = load i64, i64* %8194
  %8291 = add i64 %8290, 1
  %8292 = load { i64, i8* }*, { i64, i8* }** %8186
  %8293 = call i64 @nyx_array_length({ i64, i8* }* %8292)
  %8294 = icmp slt i64 %8291, %8293
  store i1 %8294, i1* %8287
  br label %sc_and_end1498
sc_and_end1498:
  %8295 = load i1, i1* %8287
  br i1 %8295, label %while_body1495, label %while_end1496
while_body1495:
  call void @llvm.stackrestore(i8* %8286)
  %8296 = load i64, i64* %8194
  %8297 = add i64 %8296, 1
  store i64 %8297, i64* %8194
  %8298 = load { i64, i8* }*, { i64, i8* }** %8186
  %8299 = load i64, i64* %8194
  %8300 = call i64 @nyx_array_get_checked({ i64, i8* }* %8298, i64 %8299, i64 2)
  %8301 = inttoptr i64 %8300 to %nyx_string*
  %8302 = call %nyx_string* @nyx_string_trim(%nyx_string* %8301)
  %8303 = alloca %nyx_string*
  store %nyx_string* %8302, %nyx_string** %8303
  %8304 = load %nyx_string*, %nyx_string** %8303
  %8305 = load %nyx_string*, %nyx_string** %8200
  %8306 = call i1 @nyx_string_equals(%nyx_string* %8304, %nyx_string* %8305)
  %8307 = xor i1 %8306, true
  br i1 %8307, label %then1499, label %else1500
then1499:
  %8308 = alloca i1
  store i1 false, i1* %8308
  %8309 = load %nyx_string*, %nyx_string** %8282
  %8310 = call i64 @nyx_string_byte_length(%nyx_string* %8309)
  %8311 = icmp sgt i64 %8310, 0
  br i1 %8311, label %sc_and_rhs1502, label %sc_and_end1503
sc_and_rhs1502:
  %8312 = load %nyx_string*, %nyx_string** %8282
  %8313 = load %nyx_string*, %nyx_string** %8282
  %8314 = call i64 @nyx_string_byte_length(%nyx_string* %8313)
  %8315 = sub i64 %8314, 1
  %8316 = call i8 @nyx_string_char_at(%nyx_string* %8312, i64 %8315)
  %8317 = zext i8 %8316 to i64
  %8318 = getelementptr [1 x i8], [1 x i8]* @.str1134, i32 0, i32 0
  %8319 = load i8, i8* %8318
  %8320 = zext i8 %8319 to i64
  %8321 = icmp eq i64 %8317, %8320
  store i1 %8321, i1* %8308
  br label %sc_and_end1503
sc_and_end1503:
  %8322 = load i1, i1* %8308
  br i1 %8322, label %then1504, label %else1505
then1504:
  %8323 = load %nyx_string*, %nyx_string** %8282
  %8324 = load %nyx_string*, %nyx_string** %8303
  %8325 = call %nyx_string* @nyx_string_concat(%nyx_string* %8323, %nyx_string* %8324)
  store %nyx_string* %8325, %nyx_string** %8282
  br label %merge1506
else1505:
  %8326 = load %nyx_string*, %nyx_string** %8282
  %8327 = load %nyx_string*, %nyx_string** %8203
  %8328 = call %nyx_string* @nyx_string_concat(%nyx_string* %8326, %nyx_string* %8327)
  %8329 = load %nyx_string*, %nyx_string** %8303
  %8330 = call %nyx_string* @nyx_string_concat(%nyx_string* %8328, %nyx_string* %8329)
  store %nyx_string* %8330, %nyx_string** %8282
  br label %merge1506
merge1506:
  br label %merge1501
else1500:
  br label %merge1501
merge1501:
  %8331 = load i64, i64* %8285
  %8332 = load %nyx_string*, %nyx_string** %8303
  %8333 = call i64 @capabilities_paren_delta(%nyx_string* %8332)
  %8334 = add i64 %8331, %8333
  store i64 %8334, i64* %8285
  br label %while_cond1494
while_end1496:
  %8335 = sub i64 0, 1
  %8336 = alloca i64
  store i64 %8335, i64* %8336
  %8337 = alloca i64
  store i64 0, i64* %8337
  %8338 = call i8* @llvm.stacksave()
  br label %while_cond1507
while_cond1507:
  %8339 = load i64, i64* %8337
  %8340 = load %nyx_string*, %nyx_string** %8282
  %8341 = call i64 @nyx_string_byte_length(%nyx_string* %8340)
  %8342 = icmp slt i64 %8339, %8341
  br i1 %8342, label %while_body1508, label %while_end1509
while_body1508:
  call void @llvm.stackrestore(i8* %8338)
  %8343 = load %nyx_string*, %nyx_string** %8282
  %8344 = load i64, i64* %8337
  %8345 = call i8 @nyx_string_char_at(%nyx_string* %8343, i64 %8344)
  %8346 = zext i8 %8345 to i64
  %8347 = trunc i64 %8346 to i8
  %8348 = alloca i8
  store i8 %8347, i8* %8348
  %8349 = alloca i1
  store i1 false, i1* %8349
  %8350 = load i8, i8* %8348
  %8351 = getelementptr [1 x i8], [1 x i8]* @.str1135, i32 0, i32 0
  %8352 = load i8, i8* %8351
  %8353 = zext i8 %8352 to i64
  %8354 = zext i8 %8350 to i64
  %8355 = icmp eq i64 %8354, %8353
  br i1 %8355, label %sc_and_rhs1510, label %sc_and_end1511
sc_and_rhs1510:
  %8356 = load i64, i64* %8336
  %8357 = sub i64 0, 1
  %8358 = icmp eq i64 %8356, %8357
  store i1 %8358, i1* %8349
  br label %sc_and_end1511
sc_and_end1511:
  %8359 = load i1, i1* %8349
  br i1 %8359, label %then1512, label %else1513
then1512:
  %8360 = load i64, i64* %8337
  store i64 %8360, i64* %8336
  br label %merge1514
else1513:
  br label %merge1514
merge1514:
  %8361 = load i64, i64* %8337
  %8362 = add i64 %8361, 1
  store i64 %8362, i64* %8337
  br label %while_cond1507
while_end1509:
  %8363 = load i64, i64* %8336
  %8364 = icmp sge i64 %8363, 0
  br i1 %8364, label %then1515, label %else1516
then1515:
  %8365 = load %nyx_string*, %nyx_string** %8282
  %8366 = load i64, i64* %8336
  %8367 = call %nyx_string* @nyx_string_substring(%nyx_string* %8365, i64 0, i64 %8366)
  store %nyx_string* %8367, %nyx_string** %8282
  br label %merge1517
else1516:
  br label %merge1517
merge1517:
  %8368 = load %nyx_string*, %nyx_string** %8282
  %8369 = call %nyx_string* @nyx_string_trim(%nyx_string* %8368)
  %8370 = alloca %nyx_string*
  store %nyx_string* %8369, %nyx_string** %8370
  %8371 = load %nyx_string*, %nyx_string** %8189
  %8372 = load %nyx_string*, %nyx_string** %8218
  %8373 = call %nyx_string* @nyx_string_concat(%nyx_string* %8371, %nyx_string* %8372)
  %8374 = load %nyx_string*, %nyx_string** %8370
  %8375 = call %nyx_string* @nyx_string_concat(%nyx_string* %8373, %nyx_string* %8374)
  %8376 = load %nyx_string*, %nyx_string** %8221
  %8377 = call %nyx_string* @nyx_string_concat(%nyx_string* %8375, %nyx_string* %8376)
  store %nyx_string* %8377, %nyx_string** %8189
  %8378 = load %nyx_string*, %nyx_string** %8192
  %8379 = load %nyx_string*, %nyx_string** %8200
  %8380 = call i1 @nyx_string_equals(%nyx_string* %8378, %nyx_string* %8379)
  %8381 = xor i1 %8380, true
  br i1 %8381, label %then1518, label %else1519
then1518:
  %8382 = load %nyx_string*, %nyx_string** %8189
  %8383 = load %nyx_string*, %nyx_string** %8224
  %8384 = call %nyx_string* @nyx_string_concat(%nyx_string* %8382, %nyx_string* %8383)
  %8385 = load %nyx_string*, %nyx_string** %8192
  %8386 = call %nyx_string* @nyx_string_concat(%nyx_string* %8384, %nyx_string* %8385)
  store %nyx_string* %8386, %nyx_string** %8189
  br label %merge1520
else1519:
  br label %merge1520
merge1520:
  %8387 = load %nyx_string*, %nyx_string** %8189
  %8388 = load %nyx_string*, %nyx_string** %8227
  %8389 = call %nyx_string* @nyx_string_concat(%nyx_string* %8387, %nyx_string* %8388)
  store %nyx_string* %8389, %nyx_string** %8189
  %8390 = load i64, i64* %8193
  %8391 = add i64 %8390, 1
  store i64 %8391, i64* %8193
  br label %merge1493
else1492:
  br label %merge1493
merge1493:
  %8392 = load %nyx_string*, %nyx_string** %8200
  store %nyx_string* %8392, %nyx_string** %8192
  br label %merge1481
merge1481:
  %8393 = load i64, i64* %8194
  %8394 = add i64 %8393, 1
  store i64 %8394, i64* %8194
  br label %while_cond1476
while_end1478:
  %8395 = load i64, i64* %8193
  %8396 = icmp eq i64 %8395, 0
  br i1 %8396, label %then1521, label %else1522
then1521:
  %8397 = getelementptr [1 x i8], [1 x i8]* @.str1136, i32 0, i32 0
  %8398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %8397, i64 0)
  ret %nyx_string* %8398
else1522:
  br label %merge1523
merge1523:
  %8399 = getelementptr [10 x i8], [10 x i8]* @.str1137, i32 0, i32 0
  %8400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %8399, i64 9)
  %8401 = load %nyx_string*, %nyx_string** %8172
  %8402 = call %nyx_string* @nyx_string_concat(%nyx_string* %8400, %nyx_string* %8401)
  %8403 = getelementptr [4 x i8], [4 x i8]* @.str1138, i32 0, i32 0
  %8404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %8403, i64 3)
  %8405 = call %nyx_string* @nyx_string_concat(%nyx_string* %8402, %nyx_string* %8404)
  %8406 = alloca %nyx_string*
  store %nyx_string* %8405, %nyx_string** %8406
  %8407 = load %nyx_string*, %nyx_string** %8406
  %8408 = getelementptr [14 x i8], [14 x i8]* @.str1139, i32 0, i32 0
  %8409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %8408, i64 13)
  %8410 = call %nyx_string* @nyx_string_concat(%nyx_string* %8407, %nyx_string* %8409)
  %8411 = load %nyx_string*, %nyx_string** %8172
  %8412 = call %nyx_string* @nyx_string_concat(%nyx_string* %8410, %nyx_string* %8411)
  %8413 = getelementptr [8 x i8], [8 x i8]* @.str1140, i32 0, i32 0
  %8414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %8413, i64 7)
  %8415 = call %nyx_string* @nyx_string_concat(%nyx_string* %8412, %nyx_string* %8414)
  %8416 = load i64, i64* %8193
  %8417 = call %nyx_string* @nyx_string_from_int(i64 %8416)
  %8418 = call %nyx_string* @nyx_string_concat(%nyx_string* %8415, %nyx_string* %8417)
  %8419 = getelementptr [14 x i8], [14 x i8]* @.str1141, i32 0, i32 0
  %8420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %8419, i64 13)
  %8421 = call %nyx_string* @nyx_string_concat(%nyx_string* %8418, %nyx_string* %8420)
  store %nyx_string* %8421, %nyx_string** %8406
  %8422 = load %nyx_string*, %nyx_string** %8406
  %8423 = load %nyx_string*, %nyx_string** %8189
  %8424 = call %nyx_string* @nyx_string_concat(%nyx_string* %8422, %nyx_string* %8423)
  %8425 = getelementptr [2 x i8], [2 x i8]* @.str1142, i32 0, i32 0
  %8426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %8425, i64 1)
  %8427 = call %nyx_string* @nyx_string_concat(%nyx_string* %8424, %nyx_string* %8426)
  store %nyx_string* %8427, %nyx_string** %8406
  %8428 = load %nyx_string*, %nyx_string** %8406
  ret %nyx_string* %8428
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %8429 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %8430 = getelementptr [16 x i8], [16 x i8]* @.str1143, i32 0, i32 0
  %8431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %8430, i64 15)
  %8432 = call %nyx_string* @nyx_string_concat(%nyx_string* %8429, %nyx_string* %8431)
  %8433 = alloca %nyx_string*
  store %nyx_string* %8432, %nyx_string** %8433
  %8434 = load %nyx_string*, %nyx_string** %8433
  %8435 = call i8* @nyx_string_to_cstr(%nyx_string* %8434)
  %8436 = call i1 @nyx_file_exists(i8* %8435)
  %8437 = xor i1 %8436, true
  br i1 %8437, label %then1524, label %else1525
then1524:
  %8438 = getelementptr [1 x i8], [1 x i8]* @.str1144, i32 0, i32 0
  %8439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %8438, i64 0)
  ret %nyx_string* %8439
else1525:
  br label %merge1526
merge1526:
  %8440 = load %nyx_string*, %nyx_string** %8433
  %8441 = call i8* @nyx_string_to_cstr(%nyx_string* %8440)
  %8442 = call %nyx_string* @nyx_read_file(i8* %8441)
  %8443 = alloca %nyx_string*
  store %nyx_string* %8442, %nyx_string** %8443
  %8444 = load %nyx_string*, %nyx_string** %8443
  %8445 = getelementptr [2 x i8], [2 x i8]* @.str1145, i32 0, i32 0
  %8446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %8445, i64 1)
  %8447 = call { i64, i8* }* @nyx_string_split(%nyx_string* %8444, %nyx_string* %8446)
  %8448 = alloca { i64, i8* }*
  store { i64, i8* }* %8447, { i64, i8* }** %8448
  %8449 = getelementptr [1 x i8], [1 x i8]* @.str1146, i32 0, i32 0
  %8450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %8449, i64 0)
  %8451 = alloca %nyx_string*
  store %nyx_string* %8450, %nyx_string** %8451
  %8452 = alloca i64
  store i64 0, i64* %8452
  %8453 = alloca i64
  store i64 0, i64* %8453
  %8454 = getelementptr [9 x i8], [9 x i8]* @.str1147, i32 0, i32 0
  %8455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %8454, i64 8)
  %8456 = alloca %nyx_string*
  store %nyx_string* %8455, %nyx_string** %8456
  %8457 = getelementptr [2 x i8], [2 x i8]* @.str1148, i32 0, i32 0
  %8458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %8457, i64 1)
  %8459 = alloca %nyx_string*
  store %nyx_string* %8458, %nyx_string** %8459
  %8460 = getelementptr [1 x i8], [1 x i8]* @.str1149, i32 0, i32 0
  %8461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %8460, i64 0)
  %8462 = alloca %nyx_string*
  store %nyx_string* %8461, %nyx_string** %8462
  %8463 = getelementptr [4 x i8], [4 x i8]* @.str1150, i32 0, i32 0
  %8464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1150.c, i8* %8463, i64 3)
  %8465 = alloca %nyx_string*
  store %nyx_string* %8464, %nyx_string** %8465
  %8466 = getelementptr [4 x i8], [4 x i8]* @.str1151, i32 0, i32 0
  %8467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1151.c, i8* %8466, i64 3)
  %8468 = alloca %nyx_string*
  store %nyx_string* %8467, %nyx_string** %8468
  %8469 = getelementptr [5 x i8], [5 x i8]* @.str1152, i32 0, i32 0
  %8470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1152.c, i8* %8469, i64 4)
  %8471 = alloca %nyx_string*
  store %nyx_string* %8470, %nyx_string** %8471
  %8472 = getelementptr [2 x i8], [2 x i8]* @.str1153, i32 0, i32 0
  %8473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1153.c, i8* %8472, i64 1)
  %8474 = alloca %nyx_string*
  store %nyx_string* %8473, %nyx_string** %8474
  %8475 = getelementptr [2 x i8], [2 x i8]* @.str1154, i32 0, i32 0
  %8476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1154.c, i8* %8475, i64 1)
  %8477 = alloca %nyx_string*
  store %nyx_string* %8476, %nyx_string** %8477
  %8478 = getelementptr [2 x i8], [2 x i8]* @.str1155, i32 0, i32 0
  %8479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1155.c, i8* %8478, i64 1)
  %8480 = alloca %nyx_string*
  store %nyx_string* %8479, %nyx_string** %8480
  %8481 = getelementptr [6 x i8], [6 x i8]* @.str1156, i32 0, i32 0
  %8482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1156.c, i8* %8481, i64 5)
  %8483 = alloca %nyx_string*
  store %nyx_string* %8482, %nyx_string** %8483
  %8484 = getelementptr [8 x i8], [8 x i8]* @.str1157, i32 0, i32 0
  %8485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1157.c, i8* %8484, i64 7)
  %8486 = alloca %nyx_string*
  store %nyx_string* %8485, %nyx_string** %8486
  %8487 = getelementptr [31 x i8], [31 x i8]* @.str1158, i32 0, i32 0
  %8488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1158.c, i8* %8487, i64 30)
  %8489 = alloca %nyx_string*
  store %nyx_string* %8488, %nyx_string** %8489
  %8490 = getelementptr [2 x i8], [2 x i8]* @.str1159, i32 0, i32 0
  %8491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1159.c, i8* %8490, i64 1)
  %8492 = alloca %nyx_string*
  store %nyx_string* %8491, %nyx_string** %8492
  %8493 = call i8* @llvm.stacksave()
  br label %while_cond1527
while_cond1527:
  %8494 = load i64, i64* %8453
  %8495 = load { i64, i8* }*, { i64, i8* }** %8448
  %8496 = call i64 @nyx_array_length({ i64, i8* }* %8495)
  %8497 = icmp slt i64 %8494, %8496
  br i1 %8497, label %while_body1528, label %while_end1529
while_body1528:
  call void @llvm.stackrestore(i8* %8493)
  %8498 = load { i64, i8* }*, { i64, i8* }** %8448
  %8499 = load i64, i64* %8453
  %8500 = call i64 @nyx_array_get_checked({ i64, i8* }* %8498, i64 %8499, i64 2)
  %8501 = inttoptr i64 %8500 to %nyx_string*
  %8502 = alloca %nyx_string*
  store %nyx_string* %8501, %nyx_string** %8502
  %8503 = load %nyx_string*, %nyx_string** %8502
  %8504 = call i64 @nyx_string_byte_length(%nyx_string* %8503)
  %8505 = icmp sgt i64 %8504, 8
  br i1 %8505, label %then1530, label %else1531
then1530:
  %8506 = load %nyx_string*, %nyx_string** %8502
  %8507 = call %nyx_string* @nyx_string_substring(%nyx_string* %8506, i64 0, i64 8)
  %8508 = load %nyx_string*, %nyx_string** %8456
  %8509 = call i1 @nyx_string_equals(%nyx_string* %8507, %nyx_string* %8508)
  br i1 %8509, label %then1533, label %else1534
then1533:
  %8510 = load %nyx_string*, %nyx_string** %8502
  %8511 = load %nyx_string*, %nyx_string** %8459
  %8512 = call { i64, i8* }* @nyx_string_split(%nyx_string* %8510, %nyx_string* %8511)
  %8513 = alloca { i64, i8* }*
  store { i64, i8* }* %8512, { i64, i8* }** %8513
  %8514 = load { i64, i8* }*, { i64, i8* }** %8513
  %8515 = call i64 @nyx_array_length({ i64, i8* }* %8514)
  %8516 = icmp sge i64 %8515, 5
  br i1 %8516, label %then1536, label %else1537
then1536:
  %8517 = load { i64, i8* }*, { i64, i8* }** %8513
  %8518 = call i64 @nyx_array_get_checked({ i64, i8* }* %8517, i64 1, i64 2)
  %8519 = inttoptr i64 %8518 to %nyx_string*
  %8520 = alloca %nyx_string*
  store %nyx_string* %8519, %nyx_string** %8520
  %8521 = load { i64, i8* }*, { i64, i8* }** %8513
  %8522 = call i64 @nyx_array_get_checked({ i64, i8* }* %8521, i64 2, i64 2)
  %8523 = inttoptr i64 %8522 to %nyx_string*
  %8524 = alloca %nyx_string*
  store %nyx_string* %8523, %nyx_string** %8524
  %8525 = load { i64, i8* }*, { i64, i8* }** %8513
  %8526 = call i64 @nyx_array_get_checked({ i64, i8* }* %8525, i64 3, i64 2)
  %8527 = inttoptr i64 %8526 to %nyx_string*
  %8528 = alloca %nyx_string*
  store %nyx_string* %8527, %nyx_string** %8528
  %8529 = load { i64, i8* }*, { i64, i8* }** %8513
  %8530 = call i64 @nyx_array_get_checked({ i64, i8* }* %8529, i64 4, i64 2)
  %8531 = inttoptr i64 %8530 to %nyx_string*
  %8532 = alloca %nyx_string*
  store %nyx_string* %8531, %nyx_string** %8532
  %8533 = load %nyx_string*, %nyx_string** %8462
  %8534 = alloca %nyx_string*
  store %nyx_string* %8533, %nyx_string** %8534
  %8535 = load { i64, i8* }*, { i64, i8* }** %8513
  %8536 = call i64 @nyx_array_length({ i64, i8* }* %8535)
  %8537 = icmp sge i64 %8536, 6
  br i1 %8537, label %then1539, label %else1540
then1539:
  %8538 = load { i64, i8* }*, { i64, i8* }** %8513
  %8539 = call i64 @nyx_array_get_checked({ i64, i8* }* %8538, i64 5, i64 2)
  %8540 = inttoptr i64 %8539 to %nyx_string*
  %8541 = alloca %nyx_string*
  store %nyx_string* %8540, %nyx_string** %8541
  %8542 = load %nyx_string*, %nyx_string** %8541
  store %nyx_string* %8542, %nyx_string** %8534
  br label %merge1541
else1540:
  br label %merge1541
merge1541:
  %8543 = load %nyx_string*, %nyx_string** %8528
  %8544 = load %nyx_string*, %nyx_string** %cat.ptr
  %8545 = call i1 @nyx_string_equals(%nyx_string* %8543, %nyx_string* %8544)
  br i1 %8545, label %then1542, label %else1543
then1542:
  %8546 = load %nyx_string*, %nyx_string** %8465
  %8547 = load %nyx_string*, %nyx_string** %8520
  %8548 = call %nyx_string* @nyx_string_concat(%nyx_string* %8546, %nyx_string* %8547)
  %8549 = load %nyx_string*, %nyx_string** %8468
  %8550 = call %nyx_string* @nyx_string_concat(%nyx_string* %8548, %nyx_string* %8549)
  %8551 = load %nyx_string*, %nyx_string** %8524
  %8552 = call %nyx_string* @nyx_string_concat(%nyx_string* %8550, %nyx_string* %8551)
  %8553 = load %nyx_string*, %nyx_string** %8471
  %8554 = call %nyx_string* @nyx_string_concat(%nyx_string* %8552, %nyx_string* %8553)
  %8555 = alloca %nyx_string*
  store %nyx_string* %8554, %nyx_string** %8555
  %8556 = load %nyx_string*, %nyx_string** %8524
  %8557 = load %nyx_string*, %nyx_string** %8474
  %8558 = call i1 @nyx_string_equals(%nyx_string* %8556, %nyx_string* %8557)
  %8559 = xor i1 %8558, true
  br i1 %8559, label %then1545, label %else1546
then1545:
  %8560 = load %nyx_string*, %nyx_string** %8555
  %8561 = load %nyx_string*, %nyx_string** %8477
  %8562 = call %nyx_string* @nyx_string_concat(%nyx_string* %8560, %nyx_string* %8561)
  store %nyx_string* %8562, %nyx_string** %8555
  br label %merge1547
else1546:
  br label %merge1547
merge1547:
  %8563 = load %nyx_string*, %nyx_string** %8555
  %8564 = load %nyx_string*, %nyx_string** %8480
  %8565 = call %nyx_string* @nyx_string_concat(%nyx_string* %8563, %nyx_string* %8564)
  store %nyx_string* %8565, %nyx_string** %8555
  %8566 = load %nyx_string*, %nyx_string** %8532
  %8567 = load %nyx_string*, %nyx_string** %8462
  %8568 = call i1 @nyx_string_equals(%nyx_string* %8566, %nyx_string* %8567)
  %8569 = xor i1 %8568, true
  br i1 %8569, label %then1548, label %else1549
then1548:
  %8570 = load %nyx_string*, %nyx_string** %8555
  %8571 = load %nyx_string*, %nyx_string** %8483
  %8572 = call %nyx_string* @nyx_string_concat(%nyx_string* %8570, %nyx_string* %8571)
  %8573 = load %nyx_string*, %nyx_string** %8532
  %8574 = call %nyx_string* @nyx_string_concat(%nyx_string* %8572, %nyx_string* %8573)
  store %nyx_string* %8574, %nyx_string** %8555
  br label %merge1550
else1549:
  br label %merge1550
merge1550:
  %8575 = load %nyx_string*, %nyx_string** %8534
  %8576 = load %nyx_string*, %nyx_string** %8486
  %8577 = call i1 @nyx_string_equals(%nyx_string* %8575, %nyx_string* %8576)
  br i1 %8577, label %then1551, label %else1552
then1551:
  %8578 = load %nyx_string*, %nyx_string** %8555
  %8579 = load %nyx_string*, %nyx_string** %8489
  %8580 = call %nyx_string* @nyx_string_concat(%nyx_string* %8578, %nyx_string* %8579)
  store %nyx_string* %8580, %nyx_string** %8555
  br label %merge1553
else1552:
  br label %merge1553
merge1553:
  %8581 = load %nyx_string*, %nyx_string** %8451
  %8582 = load %nyx_string*, %nyx_string** %8555
  %8583 = call %nyx_string* @nyx_string_concat(%nyx_string* %8581, %nyx_string* %8582)
  %8584 = load %nyx_string*, %nyx_string** %8492
  %8585 = call %nyx_string* @nyx_string_concat(%nyx_string* %8583, %nyx_string* %8584)
  store %nyx_string* %8585, %nyx_string** %8451
  %8586 = load i64, i64* %8452
  %8587 = add i64 %8586, 1
  store i64 %8587, i64* %8452
  br label %merge1544
else1543:
  br label %merge1544
merge1544:
  br label %merge1538
else1537:
  br label %merge1538
merge1538:
  br label %merge1535
else1534:
  br label %merge1535
merge1535:
  br label %merge1532
else1531:
  br label %merge1532
merge1532:
  %8588 = load i64, i64* %8453
  %8589 = add i64 %8588, 1
  store i64 %8589, i64* %8453
  br label %while_cond1527
while_end1529:
  %8590 = load i64, i64* %8452
  %8591 = icmp eq i64 %8590, 0
  br i1 %8591, label %then1554, label %else1555
then1554:
  %8592 = getelementptr [1 x i8], [1 x i8]* @.str1160, i32 0, i32 0
  %8593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1160.c, i8* %8592, i64 0)
  ret %nyx_string* %8593
else1555:
  br label %merge1556
merge1556:
  %8594 = getelementptr [39 x i8], [39 x i8]* @.str1161, i32 0, i32 0
  %8595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1161.c, i8* %8594, i64 38)
  %8596 = load %nyx_string*, %nyx_string** %8451
  %8597 = call %nyx_string* @nyx_string_concat(%nyx_string* %8595, %nyx_string* %8596)
  %8598 = getelementptr [2 x i8], [2 x i8]* @.str1162, i32 0, i32 0
  %8599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1162.c, i8* %8598, i64 1)
  %8600 = call %nyx_string* @nyx_string_concat(%nyx_string* %8597, %nyx_string* %8599)
  ret %nyx_string* %8600
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %8601 = call %nyx_string* @capabilities_std_dir()
  %8602 = alloca %nyx_string*
  store %nyx_string* %8601, %nyx_string** %8602
  %8603 = load %nyx_string*, %nyx_string** %8602
  %8604 = getelementptr [1 x i8], [1 x i8]* @.str1163, i32 0, i32 0
  %8605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1163.c, i8* %8604, i64 0)
  %8606 = call i1 @nyx_string_equals(%nyx_string* %8603, %nyx_string* %8605)
  br i1 %8606, label %then1557, label %else1558
then1557:
  %8607 = getelementptr [71 x i8], [71 x i8]* @.str1164, i32 0, i32 0
  %8608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1164.c, i8* %8607, i64 70)
  %8609 = call i8* @nyx_string_to_cstr(%nyx_string* %8608)
  call void @nyx_print_string(i8* %8609)
  ret i1 0
else1558:
  br label %merge1559
merge1559:
  %8610 = load %nyx_string*, %nyx_string** %8602
  %8611 = call i8* @nyx_string_to_cstr(%nyx_string* %8610)
  %8612 = call { i64, i8* }* @nyx_readdir(i8* %8611)
  %8613 = alloca { i64, i8* }*
  store { i64, i8* }* %8612, { i64, i8* }** %8613
  %8614 = call { i64, i8* }* @nyx_array_new_ptr()
  %8615 = getelementptr [11 x i8], [11 x i8]* @.str1165, i32 0, i32 0
  %8616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1165.c, i8* %8615, i64 10)
  %8617 = ptrtoint %nyx_string* %8616 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8617, i64 2)
  %8618 = getelementptr [20 x i8], [20 x i8]* @.str1166, i32 0, i32 0
  %8619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1166.c, i8* %8618, i64 19)
  %8620 = ptrtoint %nyx_string* %8619 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8620, i64 2)
  %8621 = getelementptr [23 x i8], [23 x i8]* @.str1167, i32 0, i32 0
  %8622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1167.c, i8* %8621, i64 22)
  %8623 = ptrtoint %nyx_string* %8622 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8623, i64 2)
  %8624 = getelementptr [15 x i8], [15 x i8]* @.str1168, i32 0, i32 0
  %8625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1168.c, i8* %8624, i64 14)
  %8626 = ptrtoint %nyx_string* %8625 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8626, i64 2)
  %8627 = getelementptr [4 x i8], [4 x i8]* @.str1169, i32 0, i32 0
  %8628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1169.c, i8* %8627, i64 3)
  %8629 = ptrtoint %nyx_string* %8628 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8629, i64 2)
  %8630 = getelementptr [13 x i8], [13 x i8]* @.str1170, i32 0, i32 0
  %8631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1170.c, i8* %8630, i64 12)
  %8632 = ptrtoint %nyx_string* %8631 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8632, i64 2)
  %8633 = getelementptr [19 x i8], [19 x i8]* @.str1171, i32 0, i32 0
  %8634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1171.c, i8* %8633, i64 18)
  %8635 = ptrtoint %nyx_string* %8634 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8635, i64 2)
  %8636 = getelementptr [7 x i8], [7 x i8]* @.str1172, i32 0, i32 0
  %8637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1172.c, i8* %8636, i64 6)
  %8638 = ptrtoint %nyx_string* %8637 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8638, i64 2)
  %8639 = getelementptr [16 x i8], [16 x i8]* @.str1173, i32 0, i32 0
  %8640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1173.c, i8* %8639, i64 15)
  %8641 = ptrtoint %nyx_string* %8640 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8641, i64 2)
  %8642 = getelementptr [12 x i8], [12 x i8]* @.str1174, i32 0, i32 0
  %8643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1174.c, i8* %8642, i64 11)
  %8644 = ptrtoint %nyx_string* %8643 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8644, i64 2)
  %8645 = getelementptr [26 x i8], [26 x i8]* @.str1175, i32 0, i32 0
  %8646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1175.c, i8* %8645, i64 25)
  %8647 = ptrtoint %nyx_string* %8646 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8647, i64 2)
  %8648 = getelementptr [8 x i8], [8 x i8]* @.str1176, i32 0, i32 0
  %8649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1176.c, i8* %8648, i64 7)
  %8650 = ptrtoint %nyx_string* %8649 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8650, i64 2)
  %8651 = getelementptr [14 x i8], [14 x i8]* @.str1177, i32 0, i32 0
  %8652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1177.c, i8* %8651, i64 13)
  %8653 = ptrtoint %nyx_string* %8652 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8653, i64 2)
  %8654 = getelementptr [6 x i8], [6 x i8]* @.str1178, i32 0, i32 0
  %8655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1178.c, i8* %8654, i64 5)
  %8656 = ptrtoint %nyx_string* %8655 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8614, i64 %8656, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %8614, i64 2)
  %8657 = alloca { i64, i8* }*
  store { i64, i8* }* %8614, { i64, i8* }** %8657
  %8658 = getelementptr [49 x i8], [49 x i8]* @.str1179, i32 0, i32 0
  %8659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1179.c, i8* %8658, i64 48)
  %8660 = alloca %nyx_string*
  store %nyx_string* %8659, %nyx_string** %8660
  %8661 = load %nyx_string*, %nyx_string** %8660
  %8662 = getelementptr [19 x i8], [19 x i8]* @.str1180, i32 0, i32 0
  %8663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1180.c, i8* %8662, i64 18)
  %8664 = call %nyx_string* @nyx_string_concat(%nyx_string* %8661, %nyx_string* %8663)
  %8665 = call %nyx_string* @toolchain_version()
  %8666 = call %nyx_string* @nyx_string_concat(%nyx_string* %8664, %nyx_string* %8665)
  %8667 = getelementptr [6 x i8], [6 x i8]* @.str1181, i32 0, i32 0
  %8668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1181.c, i8* %8667, i64 5)
  %8669 = call %nyx_string* @nyx_string_concat(%nyx_string* %8666, %nyx_string* %8668)
  store %nyx_string* %8669, %nyx_string** %8660
  %8670 = getelementptr [15 x i8], [15 x i8]* @.str1182, i32 0, i32 0
  %8671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1182.c, i8* %8670, i64 14)
  %8672 = call i8* @nyx_string_to_cstr(%nyx_string* %8671)
  %8673 = call %nyx_string* @nyx_getenv(i8* %8672)
  %8674 = alloca %nyx_string*
  store %nyx_string* %8673, %nyx_string** %8674
  %8675 = load %nyx_string*, %nyx_string** %8674
  %8676 = getelementptr [1 x i8], [1 x i8]* @.str1183, i32 0, i32 0
  %8677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1183.c, i8* %8676, i64 0)
  %8678 = call i1 @nyx_string_equals(%nyx_string* %8675, %nyx_string* %8677)
  %8679 = xor i1 %8678, true
  br i1 %8679, label %then1560, label %else1561
then1560:
  %8680 = load %nyx_string*, %nyx_string** %8660
  %8681 = getelementptr [18 x i8], [18 x i8]* @.str1184, i32 0, i32 0
  %8682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1184.c, i8* %8681, i64 17)
  %8683 = call %nyx_string* @nyx_string_concat(%nyx_string* %8680, %nyx_string* %8682)
  %8684 = load %nyx_string*, %nyx_string** %8674
  %8685 = call %nyx_string* @nyx_string_concat(%nyx_string* %8683, %nyx_string* %8684)
  %8686 = getelementptr [6 x i8], [6 x i8]* @.str1185, i32 0, i32 0
  %8687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1185.c, i8* %8686, i64 5)
  %8688 = call %nyx_string* @nyx_string_concat(%nyx_string* %8685, %nyx_string* %8687)
  store %nyx_string* %8688, %nyx_string** %8660
  br label %merge1562
else1561:
  br label %merge1562
merge1562:
  %8689 = load %nyx_string*, %nyx_string** %8660
  %8690 = getelementptr [103 x i8], [103 x i8]* @.str1186, i32 0, i32 0
  %8691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1186.c, i8* %8690, i64 102)
  %8692 = call %nyx_string* @nyx_string_concat(%nyx_string* %8689, %nyx_string* %8691)
  store %nyx_string* %8692, %nyx_string** %8660
  %8693 = load %nyx_string*, %nyx_string** %8660
  %8694 = getelementptr [103 x i8], [103 x i8]* @.str1187, i32 0, i32 0
  %8695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1187.c, i8* %8694, i64 102)
  %8696 = call %nyx_string* @nyx_string_concat(%nyx_string* %8693, %nyx_string* %8695)
  store %nyx_string* %8696, %nyx_string** %8660
  %8697 = load %nyx_string*, %nyx_string** %8660
  %8698 = getelementptr [95 x i8], [95 x i8]* @.str1188, i32 0, i32 0
  %8699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1188.c, i8* %8698, i64 94)
  %8700 = call %nyx_string* @nyx_string_concat(%nyx_string* %8697, %nyx_string* %8699)
  store %nyx_string* %8700, %nyx_string** %8660
  %8701 = alloca i64
  store i64 0, i64* %8701
  %8702 = getelementptr [1 x i8], [1 x i8]* @.str1189, i32 0, i32 0
  %8703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1189.c, i8* %8702, i64 0)
  %8704 = alloca %nyx_string*
  store %nyx_string* %8703, %nyx_string** %8704
  %8705 = getelementptr [4 x i8], [4 x i8]* @.str1190, i32 0, i32 0
  %8706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1190.c, i8* %8705, i64 3)
  %8707 = alloca %nyx_string*
  store %nyx_string* %8706, %nyx_string** %8707
  %8708 = getelementptr [6 x i8], [6 x i8]* @.str1191, i32 0, i32 0
  %8709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1191.c, i8* %8708, i64 5)
  %8710 = alloca %nyx_string*
  store %nyx_string* %8709, %nyx_string** %8710
  %8711 = getelementptr [4 x i8], [4 x i8]* @.str1192, i32 0, i32 0
  %8712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1192.c, i8* %8711, i64 3)
  %8713 = alloca %nyx_string*
  store %nyx_string* %8712, %nyx_string** %8713
  %8714 = getelementptr [3 x i8], [3 x i8]* @.str1193, i32 0, i32 0
  %8715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1193.c, i8* %8714, i64 2)
  %8716 = alloca %nyx_string*
  store %nyx_string* %8715, %nyx_string** %8716
  %8717 = call i8* @llvm.stacksave()
  br label %while_cond1563
while_cond1563:
  %8718 = load i64, i64* %8701
  %8719 = load { i64, i8* }*, { i64, i8* }** %8657
  %8720 = call i64 @nyx_array_length({ i64, i8* }* %8719)
  %8721 = icmp slt i64 %8718, %8720
  br i1 %8721, label %while_body1564, label %while_end1565
while_body1564:
  call void @llvm.stackrestore(i8* %8717)
  %8722 = load { i64, i8* }*, { i64, i8* }** %8657
  %8723 = load i64, i64* %8701
  %8724 = call i64 @nyx_array_get_checked({ i64, i8* }* %8722, i64 %8723, i64 2)
  %8725 = inttoptr i64 %8724 to %nyx_string*
  %8726 = alloca %nyx_string*
  store %nyx_string* %8725, %nyx_string** %8726
  %8727 = load %nyx_string*, %nyx_string** %8704
  %8728 = alloca %nyx_string*
  store %nyx_string* %8727, %nyx_string** %8728
  %8729 = alloca i64
  store i64 0, i64* %8729
  %8730 = call i8* @llvm.stacksave()
  br label %while_cond1566
while_cond1566:
  %8731 = load i64, i64* %8729
  %8732 = load { i64, i8* }*, { i64, i8* }** %8613
  %8733 = call i64 @nyx_array_length({ i64, i8* }* %8732)
  %8734 = icmp slt i64 %8731, %8733
  br i1 %8734, label %while_body1567, label %while_end1568
while_body1567:
  call void @llvm.stackrestore(i8* %8730)
  %8735 = load { i64, i8* }*, { i64, i8* }** %8613
  %8736 = load i64, i64* %8729
  %8737 = call i64 @nyx_array_get_checked({ i64, i8* }* %8735, i64 %8736, i64 2)
  %8738 = inttoptr i64 %8737 to %nyx_string*
  %8739 = alloca %nyx_string*
  store %nyx_string* %8738, %nyx_string** %8739
  %8740 = load %nyx_string*, %nyx_string** %8739
  %8741 = load %nyx_string*, %nyx_string** %8707
  %8742 = call i1 @nyx_string_ends_with(%nyx_string* %8740, %nyx_string* %8741)
  br i1 %8742, label %then1569, label %else1570
then1569:
  %8743 = load %nyx_string*, %nyx_string** %8739
  %8744 = load %nyx_string*, %nyx_string** %8739
  %8745 = call i64 @nyx_string_byte_length(%nyx_string* %8744)
  %8746 = sub i64 %8745, 3
  %8747 = call %nyx_string* @nyx_string_substring(%nyx_string* %8743, i64 0, i64 %8746)
  %8748 = alloca %nyx_string*
  store %nyx_string* %8747, %nyx_string** %8748
  %8749 = load %nyx_string*, %nyx_string** %8748
  %8750 = call %nyx_string* @module_category(%nyx_string* %8749)
  %8751 = alloca %nyx_string*
  store %nyx_string* %8750, %nyx_string** %8751
  %8752 = load %nyx_string*, %nyx_string** %8751
  %8753 = load %nyx_string*, %nyx_string** %8704
  %8754 = call i1 @nyx_string_equals(%nyx_string* %8752, %nyx_string* %8753)
  br i1 %8754, label %then1572, label %else1573
then1572:
  %8755 = load %nyx_string*, %nyx_string** %8710
  store %nyx_string* %8755, %nyx_string** %8751
  br label %merge1574
else1573:
  br label %merge1574
merge1574:
  %8756 = load %nyx_string*, %nyx_string** %8751
  %8757 = load %nyx_string*, %nyx_string** %8726
  %8758 = call i1 @nyx_string_equals(%nyx_string* %8756, %nyx_string* %8757)
  br i1 %8758, label %then1575, label %else1576
then1575:
  %8759 = load %nyx_string*, %nyx_string** %8602
  %8760 = load %nyx_string*, %nyx_string** %8739
  %8761 = call %nyx_string* @capabilities_module_section(%nyx_string* %8759, %nyx_string* %8760)
  %8762 = alloca %nyx_string*
  store %nyx_string* %8761, %nyx_string** %8762
  %8763 = load %nyx_string*, %nyx_string** %8762
  %8764 = load %nyx_string*, %nyx_string** %8704
  %8765 = call i1 @nyx_string_equals(%nyx_string* %8763, %nyx_string* %8764)
  %8766 = xor i1 %8765, true
  br i1 %8766, label %then1578, label %else1579
then1578:
  %8767 = load %nyx_string*, %nyx_string** %8728
  %8768 = load %nyx_string*, %nyx_string** %8762
  %8769 = call %nyx_string* @nyx_string_concat(%nyx_string* %8767, %nyx_string* %8768)
  store %nyx_string* %8769, %nyx_string** %8728
  br label %merge1580
else1579:
  br label %merge1580
merge1580:
  br label %merge1577
else1576:
  br label %merge1577
merge1577:
  br label %merge1571
else1570:
  br label %merge1571
merge1571:
  %8770 = load i64, i64* %8729
  %8771 = add i64 %8770, 1
  store i64 %8771, i64* %8729
  br label %while_cond1566
while_end1568:
  %8772 = load %nyx_string*, %nyx_string** %8602
  %8773 = load %nyx_string*, %nyx_string** %8726
  %8774 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %8772, %nyx_string* %8773)
  %8775 = alloca %nyx_string*
  store %nyx_string* %8774, %nyx_string** %8775
  %8776 = alloca i1
  store i1 true, i1* %8776
  %8777 = load %nyx_string*, %nyx_string** %8728
  %8778 = load %nyx_string*, %nyx_string** %8704
  %8779 = call i1 @nyx_string_equals(%nyx_string* %8777, %nyx_string* %8778)
  %8780 = xor i1 %8779, true
  br i1 %8780, label %sc_or_end1582, label %sc_or_rhs1581
sc_or_rhs1581:
  %8781 = load %nyx_string*, %nyx_string** %8775
  %8782 = load %nyx_string*, %nyx_string** %8704
  %8783 = call i1 @nyx_string_equals(%nyx_string* %8781, %nyx_string* %8782)
  %8784 = xor i1 %8783, true
  store i1 %8784, i1* %8776
  br label %sc_or_end1582
sc_or_end1582:
  %8785 = load i1, i1* %8776
  br i1 %8785, label %then1583, label %else1584
then1583:
  %8786 = load %nyx_string*, %nyx_string** %8660
  %8787 = load %nyx_string*, %nyx_string** %8713
  %8788 = call %nyx_string* @nyx_string_concat(%nyx_string* %8786, %nyx_string* %8787)
  %8789 = load %nyx_string*, %nyx_string** %8726
  %8790 = call %nyx_string* @nyx_string_concat(%nyx_string* %8788, %nyx_string* %8789)
  %8791 = load %nyx_string*, %nyx_string** %8716
  %8792 = call %nyx_string* @nyx_string_concat(%nyx_string* %8790, %nyx_string* %8791)
  %8793 = load %nyx_string*, %nyx_string** %8728
  %8794 = call %nyx_string* @nyx_string_concat(%nyx_string* %8792, %nyx_string* %8793)
  %8795 = load %nyx_string*, %nyx_string** %8775
  %8796 = call %nyx_string* @nyx_string_concat(%nyx_string* %8794, %nyx_string* %8795)
  store %nyx_string* %8796, %nyx_string** %8660
  br label %merge1585
else1584:
  br label %merge1585
merge1585:
  %8797 = load i64, i64* %8701
  %8798 = add i64 %8797, 1
  store i64 %8798, i64* %8701
  br label %while_cond1563
while_end1565:
  %8799 = getelementptr [16 x i8], [16 x i8]* @.str1194, i32 0, i32 0
  %8800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1194.c, i8* %8799, i64 15)
  %8801 = alloca %nyx_string*
  store %nyx_string* %8800, %nyx_string** %8801
  %8802 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %8803 = getelementptr [1 x i8], [1 x i8]* @.str1195, i32 0, i32 0
  %8804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1195.c, i8* %8803, i64 0)
  %8805 = call i1 @nyx_string_equals(%nyx_string* %8802, %nyx_string* %8804)
  %8806 = xor i1 %8805, true
  br i1 %8806, label %then1586, label %else1587
then1586:
  %8807 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %8807, %nyx_string** %8801
  br label %merge1588
else1587:
  br label %merge1588
merge1588:
  %8808 = load %nyx_string*, %nyx_string** %8801
  %8809 = load %nyx_string*, %nyx_string** %8660
  %8810 = ptrtoint %nyx_string* %8809 to i64
  %8811 = call i8* @nyx_string_to_cstr(%nyx_string* %8808)
  %8812 = inttoptr i64 %8810 to %nyx_string*
  %8813 = call i1 @nyx_write_file_safe(i8* %8811, %nyx_string* %8812)
  %8814 = getelementptr [32 x i8], [32 x i8]* @.str1196, i32 0, i32 0
  %8815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1196.c, i8* %8814, i64 31)
  %8816 = load %nyx_string*, %nyx_string** %8602
  %8817 = call %nyx_string* @nyx_string_concat(%nyx_string* %8815, %nyx_string* %8816)
  %8818 = getelementptr [3 x i8], [3 x i8]* @.str1197, i32 0, i32 0
  %8819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1197.c, i8* %8818, i64 2)
  %8820 = call %nyx_string* @nyx_string_concat(%nyx_string* %8817, %nyx_string* %8819)
  %8821 = load { i64, i8* }*, { i64, i8* }** %8613
  %8822 = call i64 @nyx_array_length({ i64, i8* }* %8821)
  %8823 = call %nyx_string* @nyx_string_from_int(i64 %8822)
  %8824 = call %nyx_string* @nyx_string_concat(%nyx_string* %8820, %nyx_string* %8823)
  %8825 = getelementptr [22 x i8], [22 x i8]* @.str1198, i32 0, i32 0
  %8826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1198.c, i8* %8825, i64 21)
  %8827 = call %nyx_string* @nyx_string_concat(%nyx_string* %8824, %nyx_string* %8826)
  %8828 = call i8* @nyx_string_to_cstr(%nyx_string* %8827)
  call void @nyx_print_string(i8* %8828)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %8829 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %8830 = ptrtoint %SharedEnv_main* %8829 to i64
  %8831 = call i8* @GC_malloc(i64 %8830)
  %8832 = bitcast i8* %8831 to %SharedEnv_main*
  %8833 = call { i64, i8* }* @nyx_get_args()
  %8834 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 0
  store { i64, i8* }* %8833, { i64, i8* }** %8834
  %8835 = getelementptr [6 x i8], [6 x i8]* @.str1199, i32 0, i32 0
  %8836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1199.c, i8* %8835, i64 5)
  %8837 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 1
  store %nyx_string* %8836, %nyx_string** %8837
  %8838 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 2
  store i1 0, i1* %8838
  %8839 = getelementptr [1 x i8], [1 x i8]* @.str1200, i32 0, i32 0
  %8840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1200.c, i8* %8839, i64 0)
  %8841 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 3
  store %nyx_string* %8840, %nyx_string** %8841
  %8842 = getelementptr [1 x i8], [1 x i8]* @.str1201, i32 0, i32 0
  %8843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1201.c, i8* %8842, i64 0)
  %8844 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 4
  store %nyx_string* %8843, %nyx_string** %8844
  %8845 = load { i64, i8* }*, { i64, i8* }** %8834
  %8846 = call i64 @nyx_array_length({ i64, i8* }* %8845)
  %8847 = icmp sge i64 %8846, 2
  br i1 %8847, label %then1589, label %else1590
then1589:
  %8848 = load { i64, i8* }*, { i64, i8* }** %8834
  %8849 = call i64 @nyx_array_get_checked({ i64, i8* }* %8848, i64 1, i64 2)
  %8850 = inttoptr i64 %8849 to %nyx_string*
  %8851 = alloca %nyx_string*
  store %nyx_string* %8850, %nyx_string** %8851
  %8852 = load %nyx_string*, %nyx_string** %8851
  store %nyx_string* %8852, %nyx_string** %8837
  br label %merge1591
else1590:
  br label %merge1591
merge1591:
  %8853 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 5
  store i64 2, i64* %8853
  %8854 = getelementptr [1 x i8], [1 x i8]* @.str1202, i32 0, i32 0
  %8855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1202.c, i8* %8854, i64 0)
  %8856 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 6
  store %nyx_string* %8855, %nyx_string** %8856
  %8857 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 7
  store i1 0, i1* %8857
  %8858 = alloca i1
  store i1 true, i1* %8858
  %8859 = alloca i1
  store i1 true, i1* %8859
  %8860 = alloca i1
  store i1 true, i1* %8860
  %8861 = load %nyx_string*, %nyx_string** %8837
  %8862 = getelementptr [6 x i8], [6 x i8]* @.str1203, i32 0, i32 0
  %8863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1203.c, i8* %8862, i64 5)
  %8864 = call i1 @nyx_string_equals(%nyx_string* %8861, %nyx_string* %8863)
  br i1 %8864, label %sc_or_end1593, label %sc_or_rhs1592
sc_or_rhs1592:
  %8865 = load %nyx_string*, %nyx_string** %8837
  %8866 = getelementptr [4 x i8], [4 x i8]* @.str1204, i32 0, i32 0
  %8867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1204.c, i8* %8866, i64 3)
  %8868 = call i1 @nyx_string_equals(%nyx_string* %8865, %nyx_string* %8867)
  store i1 %8868, i1* %8860
  br label %sc_or_end1593
sc_or_end1593:
  %8869 = load i1, i1* %8860
  br i1 %8869, label %sc_or_end1595, label %sc_or_rhs1594
sc_or_rhs1594:
  %8870 = load %nyx_string*, %nyx_string** %8837
  %8871 = getelementptr [5 x i8], [5 x i8]* @.str1205, i32 0, i32 0
  %8872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1205.c, i8* %8871, i64 4)
  %8873 = call i1 @nyx_string_equals(%nyx_string* %8870, %nyx_string* %8872)
  store i1 %8873, i1* %8859
  br label %sc_or_end1595
sc_or_end1595:
  %8874 = load i1, i1* %8859
  br i1 %8874, label %sc_or_end1597, label %sc_or_rhs1596
sc_or_rhs1596:
  %8875 = load %nyx_string*, %nyx_string** %8837
  %8876 = getelementptr [5 x i8], [5 x i8]* @.str1206, i32 0, i32 0
  %8877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1206.c, i8* %8876, i64 4)
  %8878 = call i1 @nyx_string_equals(%nyx_string* %8875, %nyx_string* %8877)
  store i1 %8878, i1* %8858
  br label %sc_or_end1597
sc_or_end1597:
  %8879 = load i1, i1* %8858
  %8880 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 8
  store i1 %8879, i1* %8880
  %8881 = getelementptr [3 x i8], [3 x i8]* @.str1207, i32 0, i32 0
  %8882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1207.c, i8* %8881, i64 2)
  %8883 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 9
  store %nyx_string* %8882, %nyx_string** %8883
  %8884 = getelementptr [10 x i8], [10 x i8]* @.str1208, i32 0, i32 0
  %8885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1208.c, i8* %8884, i64 9)
  %8886 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 10
  store %nyx_string* %8885, %nyx_string** %8886
  %8887 = getelementptr [7 x i8], [7 x i8]* @.str1209, i32 0, i32 0
  %8888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1209.c, i8* %8887, i64 6)
  %8889 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 11
  store %nyx_string* %8888, %nyx_string** %8889
  %8890 = getelementptr [1 x i8], [1 x i8]* @.str1210, i32 0, i32 0
  %8891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1210.c, i8* %8890, i64 0)
  %8892 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 12
  store %nyx_string* %8891, %nyx_string** %8892
  %8893 = getelementptr [66 x i8], [66 x i8]* @.str1211, i32 0, i32 0
  %8894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1211.c, i8* %8893, i64 65)
  %8895 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 13
  store %nyx_string* %8894, %nyx_string** %8895
  %8896 = getelementptr [7 x i8], [7 x i8]* @.str1212, i32 0, i32 0
  %8897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1212.c, i8* %8896, i64 6)
  %8898 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 14
  store %nyx_string* %8897, %nyx_string** %8898
  %8899 = getelementptr [3 x i8], [3 x i8]* @.str1213, i32 0, i32 0
  %8900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1213.c, i8* %8899, i64 2)
  %8901 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 15
  store %nyx_string* %8900, %nyx_string** %8901
  %8902 = getelementptr [9 x i8], [9 x i8]* @.str1214, i32 0, i32 0
  %8903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1214.c, i8* %8902, i64 8)
  %8904 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 16
  store %nyx_string* %8903, %nyx_string** %8904
  %8905 = getelementptr [63 x i8], [63 x i8]* @.str1215, i32 0, i32 0
  %8906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1215.c, i8* %8905, i64 62)
  %8907 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 17
  store %nyx_string* %8906, %nyx_string** %8907
  %8908 = getelementptr [28 x i8], [28 x i8]* @.str1216, i32 0, i32 0
  %8909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1216.c, i8* %8908, i64 27)
  %8910 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 18
  store %nyx_string* %8909, %nyx_string** %8910
  %8911 = getelementptr [4 x i8], [4 x i8]* @.str1217, i32 0, i32 0
  %8912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1217.c, i8* %8911, i64 3)
  %8913 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 19
  store %nyx_string* %8912, %nyx_string** %8913
  %8914 = call i8* @llvm.stacksave()
  br label %while_cond1598
while_cond1598:
  %8915 = load i64, i64* %8853
  %8916 = load { i64, i8* }*, { i64, i8* }** %8834
  %8917 = call i64 @nyx_array_length({ i64, i8* }* %8916)
  %8918 = icmp slt i64 %8915, %8917
  br i1 %8918, label %while_body1599, label %while_end1600
while_body1599:
  call void @llvm.stackrestore(i8* %8914)
  %8919 = load { i64, i8* }*, { i64, i8* }** %8834
  %8920 = load i64, i64* %8853
  %8921 = call i64 @nyx_array_get_checked({ i64, i8* }* %8919, i64 %8920, i64 2)
  %8922 = inttoptr i64 %8921 to %nyx_string*
  %8923 = alloca %nyx_string*
  store %nyx_string* %8922, %nyx_string** %8923
  %8924 = load %nyx_string*, %nyx_string** %8923
  %8925 = load %nyx_string*, %nyx_string** %8883
  %8926 = call i1 @nyx_string_equals(%nyx_string* %8924, %nyx_string* %8925)
  br i1 %8926, label %then1601, label %else1602
then1601:
  %8927 = load { i64, i8* }*, { i64, i8* }** %8834
  %8928 = call i64 @nyx_array_length({ i64, i8* }* %8927)
  store i64 %8928, i64* %8853
  br label %merge1603
else1602:
  %8929 = load %nyx_string*, %nyx_string** %8923
  %8930 = load %nyx_string*, %nyx_string** %8886
  %8931 = call i1 @nyx_string_equals(%nyx_string* %8929, %nyx_string* %8930)
  br i1 %8931, label %then1604, label %else1605
then1604:
  store i1 1, i1* %8838
  br label %merge1606
else1605:
  %8932 = load %nyx_string*, %nyx_string** %8923
  %8933 = load %nyx_string*, %nyx_string** %8889
  %8934 = call i1 @nyx_string_equals(%nyx_string* %8932, %nyx_string* %8933)
  br i1 %8934, label %then1607, label %else1608
then1607:
  %8935 = load %nyx_string*, %nyx_string** %8892
  %8936 = alloca %nyx_string*
  store %nyx_string* %8935, %nyx_string** %8936
  %8937 = load i64, i64* %8853
  %8938 = add i64 %8937, 1
  %8939 = load { i64, i8* }*, { i64, i8* }** %8834
  %8940 = call i64 @nyx_array_length({ i64, i8* }* %8939)
  %8941 = icmp slt i64 %8938, %8940
  br i1 %8941, label %then1610, label %else1611
then1610:
  %8942 = load { i64, i8* }*, { i64, i8* }** %8834
  %8943 = load i64, i64* %8853
  %8944 = add i64 %8943, 1
  %8945 = call i64 @nyx_array_get_checked({ i64, i8* }* %8942, i64 %8944, i64 2)
  %8946 = inttoptr i64 %8945 to %nyx_string*
  %8947 = alloca %nyx_string*
  store %nyx_string* %8946, %nyx_string** %8947
  %8948 = load %nyx_string*, %nyx_string** %8947
  %8949 = load %nyx_string*, %nyx_string** %8883
  %8950 = call i1 @nyx_string_starts_with(%nyx_string* %8948, %nyx_string* %8949)
  %8951 = xor i1 %8950, true
  br i1 %8951, label %then1613, label %else1614
then1613:
  %8952 = load %nyx_string*, %nyx_string** %8947
  store %nyx_string* %8952, %nyx_string** %8936
  br label %merge1615
else1614:
  br label %merge1615
merge1615:
  br label %merge1612
else1611:
  br label %merge1612
merge1612:
  %8953 = load %nyx_string*, %nyx_string** %8936
  %8954 = load %nyx_string*, %nyx_string** %8892
  %8955 = call i1 @nyx_string_equals(%nyx_string* %8953, %nyx_string* %8954)
  br i1 %8955, label %then1616, label %else1617
then1616:
  %8956 = load %nyx_string*, %nyx_string** %8856
  %8957 = load %nyx_string*, %nyx_string** %8892
  %8958 = call i1 @nyx_string_equals(%nyx_string* %8956, %nyx_string* %8957)
  br i1 %8958, label %then1619, label %else1620
then1619:
  %8959 = load %nyx_string*, %nyx_string** %8895
  store %nyx_string* %8959, %nyx_string** %8856
  br label %merge1621
else1620:
  br label %merge1621
merge1621:
  br label %merge1618
else1617:
  %8960 = load %nyx_string*, %nyx_string** %8936
  store %nyx_string* %8960, %nyx_string** %8844
  %8961 = load i64, i64* %8853
  %8962 = add i64 %8961, 1
  store i64 %8962, i64* %8853
  br label %merge1618
merge1618:
  br label %merge1609
else1608:
  %8963 = alloca i1
  store i1 true, i1* %8963
  %8964 = load %nyx_string*, %nyx_string** %8923
  %8965 = load %nyx_string*, %nyx_string** %8898
  %8966 = call i1 @nyx_string_equals(%nyx_string* %8964, %nyx_string* %8965)
  br i1 %8966, label %sc_or_end1623, label %sc_or_rhs1622
sc_or_rhs1622:
  %8967 = load %nyx_string*, %nyx_string** %8923
  %8968 = load %nyx_string*, %nyx_string** %8901
  %8969 = call i1 @nyx_string_equals(%nyx_string* %8967, %nyx_string* %8968)
  store i1 %8969, i1* %8963
  br label %sc_or_end1623
sc_or_end1623:
  %8970 = load i1, i1* %8963
  br i1 %8970, label %then1624, label %else1625
then1624:
  store i1 1, i1* %8857
  br label %merge1626
else1625:
  %8971 = load %nyx_string*, %nyx_string** %8923
  %8972 = load %nyx_string*, %nyx_string** %8904
  %8973 = call i1 @nyx_string_equals(%nyx_string* %8971, %nyx_string* %8972)
  br i1 %8973, label %then1627, label %else1628
then1627:
  %8974 = load i64, i64* %8853
  %8975 = add i64 %8974, 1
  %8976 = load { i64, i8* }*, { i64, i8* }** %8834
  %8977 = call i64 @nyx_array_length({ i64, i8* }* %8976)
  %8978 = icmp slt i64 %8975, %8977
  br i1 %8978, label %then1630, label %else1631
then1630:
  %8979 = load { i64, i8* }*, { i64, i8* }** %8834
  %8980 = load i64, i64* %8853
  %8981 = add i64 %8980, 1
  %8982 = call i64 @nyx_array_get_checked({ i64, i8* }* %8979, i64 %8981, i64 2)
  %8983 = inttoptr i64 %8982 to %nyx_string*
  %8984 = alloca %nyx_string*
  store %nyx_string* %8983, %nyx_string** %8984
  %8985 = load %nyx_string*, %nyx_string** %8984
  store %nyx_string* %8985, %nyx_string** %8841
  %8986 = load i64, i64* %8853
  %8987 = add i64 %8986, 1
  store i64 %8987, i64* %8853
  br label %merge1632
else1631:
  %8988 = load %nyx_string*, %nyx_string** %8907
  store %nyx_string* %8988, %nyx_string** %8856
  br label %merge1632
merge1632:
  br label %merge1629
else1628:
  %8989 = alloca i1
  store i1 false, i1* %8989
  %8990 = load i1, i1* %8880
  br i1 %8990, label %sc_and_rhs1633, label %sc_and_end1634
sc_and_rhs1633:
  %8991 = load %nyx_string*, %nyx_string** %8923
  %8992 = call i64 @nyx_string_byte_length(%nyx_string* %8991)
  %8993 = icmp sgt i64 %8992, 1
  store i1 %8993, i1* %8989
  br label %sc_and_end1634
sc_and_end1634:
  %8994 = load i1, i1* %8989
  br i1 %8994, label %then1635, label %else1636
then1635:
  %8995 = alloca i1
  store i1 false, i1* %8995
  %8996 = load %nyx_string*, %nyx_string** %8923
  %8997 = call i8 @nyx_string_char_at(%nyx_string* %8996, i64 0)
  %8998 = zext i8 %8997 to i64
  %8999 = getelementptr [1 x i8], [1 x i8]* @.str1218, i32 0, i32 0
  %9000 = load i8, i8* %8999
  %9001 = zext i8 %9000 to i64
  %9002 = icmp eq i64 %8998, %9001
  br i1 %9002, label %sc_and_rhs1638, label %sc_and_end1639
sc_and_rhs1638:
  %9003 = load %nyx_string*, %nyx_string** %8856
  %9004 = load %nyx_string*, %nyx_string** %8892
  %9005 = call i1 @nyx_string_equals(%nyx_string* %9003, %nyx_string* %9004)
  store i1 %9005, i1* %8995
  br label %sc_and_end1639
sc_and_end1639:
  %9006 = load i1, i1* %8995
  br i1 %9006, label %then1640, label %else1641
then1640:
  %9007 = load %nyx_string*, %nyx_string** %8910
  %9008 = load %nyx_string*, %nyx_string** %8837
  %9009 = call %nyx_string* @nyx_string_concat(%nyx_string* %9007, %nyx_string* %9008)
  %9010 = load %nyx_string*, %nyx_string** %8913
  %9011 = call %nyx_string* @nyx_string_concat(%nyx_string* %9009, %nyx_string* %9010)
  %9012 = load %nyx_string*, %nyx_string** %8923
  %9013 = call %nyx_string* @nyx_string_concat(%nyx_string* %9011, %nyx_string* %9012)
  store %nyx_string* %9013, %nyx_string** %8856
  br label %merge1642
else1641:
  br label %merge1642
merge1642:
  br label %merge1637
else1636:
  br label %merge1637
merge1637:
  br label %merge1629
merge1629:
  br label %merge1626
merge1626:
  br label %merge1609
merge1609:
  br label %merge1606
merge1606:
  br label %merge1603
merge1603:
  %9014 = load i64, i64* %8853
  %9015 = add i64 %9014, 1
  store i64 %9015, i64* %8853
  br label %while_cond1598
while_end1600:
  %9016 = alloca i1
  store i1 false, i1* %9016
  %9017 = load i1, i1* %8857
  br i1 %9017, label %sc_and_rhs1643, label %sc_and_end1644
sc_and_rhs1643:
  %9018 = load i1, i1* %8880
  store i1 %9018, i1* %9016
  br label %sc_and_end1644
sc_and_end1644:
  %9019 = load i1, i1* %9016
  br i1 %9019, label %then1645, label %else1646
then1645:
  %9020 = getelementptr [5 x i8], [5 x i8]* @.str1219, i32 0, i32 0
  %9021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1219.c, i8* %9020, i64 4)
  %9022 = load %nyx_string*, %nyx_string** %8837
  %9023 = call %nyx_string* @nyx_string_concat(%nyx_string* %9021, %nyx_string* %9022)
  %9024 = getelementptr [24 x i8], [24 x i8]* @.str1220, i32 0, i32 0
  %9025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1220.c, i8* %9024, i64 23)
  %9026 = call %nyx_string* @nyx_string_concat(%nyx_string* %9023, %nyx_string* %9025)
  %9027 = call i8* @nyx_string_to_cstr(%nyx_string* %9026)
  call void @nyx_print_string(i8* %9027)
  %9028 = getelementptr [42 x i8], [42 x i8]* @.str1221, i32 0, i32 0
  %9029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1221.c, i8* %9028, i64 41)
  %9030 = call i8* @nyx_string_to_cstr(%nyx_string* %9029)
  call void @nyx_print_string(i8* %9030)
  %9031 = getelementptr [88 x i8], [88 x i8]* @.str1222, i32 0, i32 0
  %9032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1222.c, i8* %9031, i64 87)
  %9033 = call i8* @nyx_string_to_cstr(%nyx_string* %9032)
  call void @nyx_print_string(i8* %9033)
  %9034 = getelementptr [94 x i8], [94 x i8]* @.str1223, i32 0, i32 0
  %9035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1223.c, i8* %9034, i64 93)
  %9036 = call i8* @nyx_string_to_cstr(%nyx_string* %9035)
  call void @nyx_print_string(i8* %9036)
  %9037 = getelementptr [94 x i8], [94 x i8]* @.str1224, i32 0, i32 0
  %9038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1224.c, i8* %9037, i64 93)
  %9039 = call i8* @nyx_string_to_cstr(%nyx_string* %9038)
  call void @nyx_print_string(i8* %9039)
  %9040 = getelementptr [34 x i8], [34 x i8]* @.str1225, i32 0, i32 0
  %9041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1225.c, i8* %9040, i64 33)
  %9042 = call i8* @nyx_string_to_cstr(%nyx_string* %9041)
  call void @nyx_print_string(i8* %9042)
  %9043 = getelementptr [1 x i8], [1 x i8]* @.str1226, i32 0, i32 0
  %9044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1226.c, i8* %9043, i64 0)
  %9045 = call i8* @nyx_string_to_cstr(%nyx_string* %9044)
  call void @nyx_print_string(i8* %9045)
  %9046 = getelementptr [71 x i8], [71 x i8]* @.str1227, i32 0, i32 0
  %9047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1227.c, i8* %9046, i64 70)
  %9048 = call i8* @nyx_string_to_cstr(%nyx_string* %9047)
  call void @nyx_print_string(i8* %9048)
  ret i64 0
else1646:
  br label %merge1647
merge1647:
  %9049 = load %nyx_string*, %nyx_string** %8856
  %9050 = getelementptr [1 x i8], [1 x i8]* @.str1228, i32 0, i32 0
  %9051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1228.c, i8* %9050, i64 0)
  %9052 = call i1 @nyx_string_equals(%nyx_string* %9049, %nyx_string* %9051)
  %9053 = xor i1 %9052, true
  br i1 %9053, label %then1648, label %else1649
then1648:
  %9054 = getelementptr [8 x i8], [8 x i8]* @.str1229, i32 0, i32 0
  %9055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1229.c, i8* %9054, i64 7)
  %9056 = load %nyx_string*, %nyx_string** %8856
  %9057 = call %nyx_string* @nyx_string_concat(%nyx_string* %9055, %nyx_string* %9056)
  %9058 = call i8* @nyx_string_to_cstr(%nyx_string* %9057)
  call void @nyx_print_string(i8* %9058)
  %9059 = getelementptr [8 x i8], [8 x i8]* @.str1230, i32 0, i32 0
  %9060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1230.c, i8* %9059, i64 7)
  %9061 = load %nyx_string*, %nyx_string** %8837
  %9062 = call %nyx_string* @nyx_string_concat(%nyx_string* %9060, %nyx_string* %9061)
  %9063 = getelementptr [37 x i8], [37 x i8]* @.str1231, i32 0, i32 0
  %9064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1231.c, i8* %9063, i64 36)
  %9065 = call %nyx_string* @nyx_string_concat(%nyx_string* %9062, %nyx_string* %9064)
  %9066 = call i8* @nyx_string_to_cstr(%nyx_string* %9065)
  call void @nyx_print_string(i8* %9066)
  ret i64 1
else1649:
  br label %merge1650
merge1650:
  %9067 = getelementptr [6 x i8], [6 x i8]* @.str1232, i32 0, i32 0
  %9068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1232.c, i8* %9067, i64 5)
  %9069 = call %nyx_string* @toolchain_version()
  %9070 = call %nyx_string* @nyx_string_concat(%nyx_string* %9068, %nyx_string* %9069)
  %9071 = getelementptr [6 x i8], [6 x i8]* @.str1233, i32 0, i32 0
  %9072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1233.c, i8* %9071, i64 5)
  %9073 = call %nyx_string* @nyx_string_concat(%nyx_string* %9070, %nyx_string* %9072)
  %9074 = load %nyx_string*, %nyx_string** %8837
  %9075 = call %nyx_string* @nyx_string_concat(%nyx_string* %9073, %nyx_string* %9074)
  %9076 = call i8* @nyx_string_to_cstr(%nyx_string* %9075)
  call void @nyx_print_string(i8* %9076)
  %9077 = load %nyx_string*, %nyx_string** %8837
  %9078 = getelementptr [5 x i8], [5 x i8]* @.str1234, i32 0, i32 0
  %9079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1234.c, i8* %9078, i64 4)
  %9080 = call i1 @nyx_string_equals(%nyx_string* %9077, %nyx_string* %9079)
  br i1 %9080, label %then1651, label %else1652
then1651:
  %9081 = getelementptr [1 x i8], [1 x i8]* @.str1235, i32 0, i32 0
  %9082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1235.c, i8* %9081, i64 0)
  %9083 = alloca %nyx_string*
  store %nyx_string* %9082, %nyx_string** %9083
  %9084 = getelementptr [1 x i8], [1 x i8]* @.str1236, i32 0, i32 0
  %9085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1236.c, i8* %9084, i64 0)
  %9086 = alloca %nyx_string*
  store %nyx_string* %9085, %nyx_string** %9086
  %9087 = getelementptr [1 x i8], [1 x i8]* @.str1237, i32 0, i32 0
  %9088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1237.c, i8* %9087, i64 0)
  %9089 = alloca %nyx_string*
  store %nyx_string* %9088, %nyx_string** %9089
  %9090 = alloca i1
  store i1 0, i1* %9090
  %9091 = getelementptr [1 x i8], [1 x i8]* @.str1238, i32 0, i32 0
  %9092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1238.c, i8* %9091, i64 0)
  %9093 = alloca %nyx_string*
  store %nyx_string* %9092, %nyx_string** %9093
  %9094 = getelementptr [1 x i8], [1 x i8]* @.str1239, i32 0, i32 0
  %9095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1239.c, i8* %9094, i64 0)
  %9096 = alloca %nyx_string*
  store %nyx_string* %9095, %nyx_string** %9096
  %9097 = alloca i64
  store i64 2, i64* %9097
  %9098 = getelementptr [7 x i8], [7 x i8]* @.str1240, i32 0, i32 0
  %9099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1240.c, i8* %9098, i64 6)
  %9100 = alloca %nyx_string*
  store %nyx_string* %9099, %nyx_string** %9100
  %9101 = getelementptr [8 x i8], [8 x i8]* @.str1241, i32 0, i32 0
  %9102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1241.c, i8* %9101, i64 7)
  %9103 = alloca %nyx_string*
  store %nyx_string* %9102, %nyx_string** %9103
  %9104 = getelementptr [1 x i8], [1 x i8]* @.str1242, i32 0, i32 0
  %9105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1242.c, i8* %9104, i64 0)
  %9106 = alloca %nyx_string*
  store %nyx_string* %9105, %nyx_string** %9106
  %9107 = getelementptr [3 x i8], [3 x i8]* @.str1243, i32 0, i32 0
  %9108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1243.c, i8* %9107, i64 2)
  %9109 = alloca %nyx_string*
  store %nyx_string* %9108, %nyx_string** %9109
  %9110 = getelementptr [8 x i8], [8 x i8]* @.str1244, i32 0, i32 0
  %9111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1244.c, i8* %9110, i64 7)
  %9112 = alloca %nyx_string*
  store %nyx_string* %9111, %nyx_string** %9112
  %9113 = getelementptr [9 x i8], [9 x i8]* @.str1245, i32 0, i32 0
  %9114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1245.c, i8* %9113, i64 8)
  %9115 = alloca %nyx_string*
  store %nyx_string* %9114, %nyx_string** %9115
  %9116 = getelementptr [6 x i8], [6 x i8]* @.str1246, i32 0, i32 0
  %9117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1246.c, i8* %9116, i64 5)
  %9118 = alloca %nyx_string*
  store %nyx_string* %9117, %nyx_string** %9118
  %9119 = call i8* @llvm.stacksave()
  br label %while_cond1654
while_cond1654:
  %9120 = load i64, i64* %9097
  %9121 = load { i64, i8* }*, { i64, i8* }** %8834
  %9122 = call i64 @nyx_array_length({ i64, i8* }* %9121)
  %9123 = icmp slt i64 %9120, %9122
  br i1 %9123, label %while_body1655, label %while_end1656
while_body1655:
  call void @llvm.stackrestore(i8* %9119)
  %9124 = load { i64, i8* }*, { i64, i8* }** %8834
  %9125 = load i64, i64* %9097
  %9126 = call i64 @nyx_array_get_checked({ i64, i8* }* %9124, i64 %9125, i64 2)
  %9127 = inttoptr i64 %9126 to %nyx_string*
  %9128 = alloca %nyx_string*
  store %nyx_string* %9127, %nyx_string** %9128
  %9129 = alloca i1
  store i1 0, i1* %9129
  %9130 = alloca i1
  store i1 true, i1* %9130
  %9131 = load %nyx_string*, %nyx_string** %9128
  %9132 = load %nyx_string*, %nyx_string** %9100
  %9133 = call i1 @nyx_string_equals(%nyx_string* %9131, %nyx_string* %9132)
  br i1 %9133, label %sc_or_end1658, label %sc_or_rhs1657
sc_or_rhs1657:
  %9134 = load %nyx_string*, %nyx_string** %9128
  %9135 = load %nyx_string*, %nyx_string** %9103
  %9136 = call i1 @nyx_string_equals(%nyx_string* %9134, %nyx_string* %9135)
  store i1 %9136, i1* %9130
  br label %sc_or_end1658
sc_or_end1658:
  %9137 = load i1, i1* %9130
  br i1 %9137, label %then1659, label %else1660
then1659:
  store i1 1, i1* %9129
  %9138 = load %nyx_string*, %nyx_string** %9106
  %9139 = alloca %nyx_string*
  store %nyx_string* %9138, %nyx_string** %9139
  %9140 = load i64, i64* %9097
  %9141 = add i64 %9140, 1
  %9142 = load { i64, i8* }*, { i64, i8* }** %8834
  %9143 = call i64 @nyx_array_length({ i64, i8* }* %9142)
  %9144 = icmp slt i64 %9141, %9143
  br i1 %9144, label %then1662, label %else1663
then1662:
  %9145 = load { i64, i8* }*, { i64, i8* }** %8834
  %9146 = load i64, i64* %9097
  %9147 = add i64 %9146, 1
  %9148 = call i64 @nyx_array_get_checked({ i64, i8* }* %9145, i64 %9147, i64 2)
  %9149 = inttoptr i64 %9148 to %nyx_string*
  %9150 = alloca %nyx_string*
  store %nyx_string* %9149, %nyx_string** %9150
  %9151 = load %nyx_string*, %nyx_string** %9150
  %9152 = load %nyx_string*, %nyx_string** %9109
  %9153 = call i1 @nyx_string_starts_with(%nyx_string* %9151, %nyx_string* %9152)
  %9154 = icmp eq i1 %9153, 0
  br i1 %9154, label %then1665, label %else1666
then1665:
  %9155 = load %nyx_string*, %nyx_string** %9150
  store %nyx_string* %9155, %nyx_string** %9139
  br label %merge1667
else1666:
  br label %merge1667
merge1667:
  br label %merge1664
else1663:
  br label %merge1664
merge1664:
  %9156 = load %nyx_string*, %nyx_string** %9139
  %9157 = load %nyx_string*, %nyx_string** %9106
  %9158 = call i1 @nyx_string_equals(%nyx_string* %9156, %nyx_string* %9157)
  br i1 %9158, label %then1668, label %else1669
then1668:
  %9159 = load %nyx_string*, %nyx_string** %9128
  store %nyx_string* %9159, %nyx_string** %9096
  br label %merge1670
else1669:
  %9160 = load %nyx_string*, %nyx_string** %9128
  %9161 = load %nyx_string*, %nyx_string** %9100
  %9162 = call i1 @nyx_string_equals(%nyx_string* %9160, %nyx_string* %9161)
  br i1 %9162, label %then1671, label %else1672
then1671:
  %9163 = load %nyx_string*, %nyx_string** %9139
  store %nyx_string* %9163, %nyx_string** %9086
  br label %merge1673
else1672:
  br label %merge1673
merge1673:
  %9164 = load %nyx_string*, %nyx_string** %9128
  %9165 = load %nyx_string*, %nyx_string** %9103
  %9166 = call i1 @nyx_string_equals(%nyx_string* %9164, %nyx_string* %9165)
  br i1 %9166, label %then1674, label %else1675
then1674:
  %9167 = load %nyx_string*, %nyx_string** %9139
  store %nyx_string* %9167, %nyx_string** %9089
  br label %merge1676
else1675:
  br label %merge1676
merge1676:
  %9168 = load i64, i64* %9097
  %9169 = add i64 %9168, 1
  store i64 %9169, i64* %9097
  br label %merge1670
merge1670:
  br label %merge1661
else1660:
  br label %merge1661
merge1661:
  %9170 = alloca i1
  store i1 false, i1* %9170
  %9171 = load i1, i1* %9129
  %9172 = icmp eq i1 %9171, 0
  br i1 %9172, label %sc_and_rhs1677, label %sc_and_end1678
sc_and_rhs1677:
  %9173 = load %nyx_string*, %nyx_string** %9128
  %9174 = load %nyx_string*, %nyx_string** %9112
  %9175 = call i1 @nyx_string_starts_with(%nyx_string* %9173, %nyx_string* %9174)
  store i1 %9175, i1* %9170
  br label %sc_and_end1678
sc_and_end1678:
  %9176 = load i1, i1* %9170
  br i1 %9176, label %then1679, label %else1680
then1679:
  store i1 1, i1* %9129
  %9177 = load %nyx_string*, %nyx_string** %9128
  %9178 = load %nyx_string*, %nyx_string** %9128
  %9179 = call i64 @nyx_string_byte_length(%nyx_string* %9178)
  %9180 = call %nyx_string* @nyx_string_substring(%nyx_string* %9177, i64 7, i64 %9179)
  store %nyx_string* %9180, %nyx_string** %9086
  %9181 = load %nyx_string*, %nyx_string** %9086
  %9182 = load %nyx_string*, %nyx_string** %9106
  %9183 = call i1 @nyx_string_equals(%nyx_string* %9181, %nyx_string* %9182)
  br i1 %9183, label %then1682, label %else1683
then1682:
  %9184 = load %nyx_string*, %nyx_string** %9100
  store %nyx_string* %9184, %nyx_string** %9096
  br label %merge1684
else1683:
  br label %merge1684
merge1684:
  br label %merge1681
else1680:
  br label %merge1681
merge1681:
  %9185 = alloca i1
  store i1 false, i1* %9185
  %9186 = load i1, i1* %9129
  %9187 = icmp eq i1 %9186, 0
  br i1 %9187, label %sc_and_rhs1685, label %sc_and_end1686
sc_and_rhs1685:
  %9188 = load %nyx_string*, %nyx_string** %9128
  %9189 = load %nyx_string*, %nyx_string** %9115
  %9190 = call i1 @nyx_string_starts_with(%nyx_string* %9188, %nyx_string* %9189)
  store i1 %9190, i1* %9185
  br label %sc_and_end1686
sc_and_end1686:
  %9191 = load i1, i1* %9185
  br i1 %9191, label %then1687, label %else1688
then1687:
  store i1 1, i1* %9129
  %9192 = load %nyx_string*, %nyx_string** %9128
  %9193 = load %nyx_string*, %nyx_string** %9128
  %9194 = call i64 @nyx_string_byte_length(%nyx_string* %9193)
  %9195 = call %nyx_string* @nyx_string_substring(%nyx_string* %9192, i64 8, i64 %9194)
  store %nyx_string* %9195, %nyx_string** %9089
  %9196 = load %nyx_string*, %nyx_string** %9089
  %9197 = load %nyx_string*, %nyx_string** %9106
  %9198 = call i1 @nyx_string_equals(%nyx_string* %9196, %nyx_string* %9197)
  br i1 %9198, label %then1690, label %else1691
then1690:
  %9199 = load %nyx_string*, %nyx_string** %9103
  store %nyx_string* %9199, %nyx_string** %9096
  br label %merge1692
else1691:
  br label %merge1692
merge1692:
  br label %merge1689
else1688:
  br label %merge1689
merge1689:
  %9200 = alloca i1
  store i1 false, i1* %9200
  %9201 = load i1, i1* %9129
  %9202 = icmp eq i1 %9201, 0
  br i1 %9202, label %sc_and_rhs1693, label %sc_and_end1694
sc_and_rhs1693:
  %9203 = load %nyx_string*, %nyx_string** %9128
  %9204 = load %nyx_string*, %nyx_string** %9118
  %9205 = call i1 @nyx_string_equals(%nyx_string* %9203, %nyx_string* %9204)
  store i1 %9205, i1* %9200
  br label %sc_and_end1694
sc_and_end1694:
  %9206 = load i1, i1* %9200
  br i1 %9206, label %then1695, label %else1696
then1695:
  store i1 1, i1* %9129
  store i1 1, i1* %9090
  br label %merge1697
else1696:
  br label %merge1697
merge1697:
  %9207 = alloca i1
  store i1 false, i1* %9207
  %9208 = load i1, i1* %9129
  %9209 = icmp eq i1 %9208, 0
  br i1 %9209, label %sc_and_rhs1698, label %sc_and_end1699
sc_and_rhs1698:
  %9210 = load %nyx_string*, %nyx_string** %9128
  %9211 = load %nyx_string*, %nyx_string** %9109
  %9212 = call i1 @nyx_string_starts_with(%nyx_string* %9210, %nyx_string* %9211)
  store i1 %9212, i1* %9207
  br label %sc_and_end1699
sc_and_end1699:
  %9213 = load i1, i1* %9207
  br i1 %9213, label %then1700, label %else1701
then1700:
  store i1 1, i1* %9129
  %9214 = load %nyx_string*, %nyx_string** %9128
  store %nyx_string* %9214, %nyx_string** %9093
  br label %merge1702
else1701:
  br label %merge1702
merge1702:
  %9215 = load i1, i1* %9129
  %9216 = icmp eq i1 %9215, 0
  br i1 %9216, label %then1703, label %else1704
then1703:
  %9217 = load %nyx_string*, %nyx_string** %9083
  %9218 = load %nyx_string*, %nyx_string** %9106
  %9219 = call i1 @nyx_string_equals(%nyx_string* %9217, %nyx_string* %9218)
  br i1 %9219, label %then1706, label %else1707
then1706:
  %9220 = load %nyx_string*, %nyx_string** %9128
  store %nyx_string* %9220, %nyx_string** %9083
  br label %merge1708
else1707:
  br label %merge1708
merge1708:
  br label %merge1705
else1704:
  br label %merge1705
merge1705:
  %9221 = load i64, i64* %9097
  %9222 = add i64 %9221, 1
  store i64 %9222, i64* %9097
  br label %while_cond1654
while_end1656:
  %9223 = load %nyx_string*, %nyx_string** %9093
  %9224 = getelementptr [1 x i8], [1 x i8]* @.str1247, i32 0, i32 0
  %9225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1247.c, i8* %9224, i64 0)
  %9226 = call i1 @nyx_string_equals(%nyx_string* %9223, %nyx_string* %9225)
  %9227 = xor i1 %9226, true
  br i1 %9227, label %then1709, label %else1710
then1709:
  %9228 = getelementptr [42 x i8], [42 x i8]* @.str1248, i32 0, i32 0
  %9229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1248.c, i8* %9228, i64 41)
  %9230 = load %nyx_string*, %nyx_string** %9093
  %9231 = call %nyx_string* @nyx_string_concat(%nyx_string* %9229, %nyx_string* %9230)
  %9232 = call i8* @nyx_string_to_cstr(%nyx_string* %9231)
  call void @nyx_print_string(i8* %9232)
  %9233 = getelementptr [80 x i8], [80 x i8]* @.str1249, i32 0, i32 0
  %9234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1249.c, i8* %9233, i64 79)
  %9235 = call i8* @nyx_string_to_cstr(%nyx_string* %9234)
  call void @nyx_print_string(i8* %9235)
  ret i64 1
else1710:
  br label %merge1711
merge1711:
  %9236 = load %nyx_string*, %nyx_string** %9096
  %9237 = getelementptr [1 x i8], [1 x i8]* @.str1250, i32 0, i32 0
  %9238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1250.c, i8* %9237, i64 0)
  %9239 = call i1 @nyx_string_equals(%nyx_string* %9236, %nyx_string* %9238)
  %9240 = xor i1 %9239, true
  br i1 %9240, label %then1712, label %else1713
then1712:
  %9241 = getelementptr [8 x i8], [8 x i8]* @.str1251, i32 0, i32 0
  %9242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1251.c, i8* %9241, i64 7)
  %9243 = load %nyx_string*, %nyx_string** %9096
  %9244 = call %nyx_string* @nyx_string_concat(%nyx_string* %9242, %nyx_string* %9243)
  %9245 = getelementptr [19 x i8], [19 x i8]* @.str1252, i32 0, i32 0
  %9246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1252.c, i8* %9245, i64 18)
  %9247 = call %nyx_string* @nyx_string_concat(%nyx_string* %9244, %nyx_string* %9246)
  %9248 = call i8* @nyx_string_to_cstr(%nyx_string* %9247)
  call void @nyx_print_string(i8* %9248)
  %9249 = getelementptr [80 x i8], [80 x i8]* @.str1253, i32 0, i32 0
  %9250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1253.c, i8* %9249, i64 79)
  %9251 = call i8* @nyx_string_to_cstr(%nyx_string* %9250)
  call void @nyx_print_string(i8* %9251)
  ret i64 1
else1713:
  br label %merge1714
merge1714:
  %9252 = load %nyx_string*, %nyx_string** %9086
  %9253 = getelementptr [1 x i8], [1 x i8]* @.str1254, i32 0, i32 0
  %9254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1254.c, i8* %9253, i64 0)
  %9255 = call i1 @nyx_string_equals(%nyx_string* %9252, %nyx_string* %9254)
  br i1 %9255, label %then1715, label %else1716
then1715:
  %9256 = getelementptr [9 x i8], [9 x i8]* @.str1255, i32 0, i32 0
  %9257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1255.c, i8* %9256, i64 8)
  %9258 = call i8* @nyx_string_to_cstr(%nyx_string* %9257)
  %9259 = call %nyx_string* @nyx_getenv(i8* %9258)
  %9260 = alloca %nyx_string*
  store %nyx_string* %9259, %nyx_string** %9260
  %9261 = load %nyx_string*, %nyx_string** %9260
  %9262 = getelementptr [3 x i8], [3 x i8]* @.str1256, i32 0, i32 0
  %9263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1256.c, i8* %9262, i64 2)
  %9264 = call i1 @nyx_string_equals(%nyx_string* %9261, %nyx_string* %9263)
  br i1 %9264, label %then1718, label %else1719
then1718:
  %9265 = getelementptr [3 x i8], [3 x i8]* @.str1257, i32 0, i32 0
  %9266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1257.c, i8* %9265, i64 2)
  store %nyx_string* %9266, %nyx_string** %9086
  br label %merge1720
else1719:
  br label %merge1720
merge1720:
  %9267 = load %nyx_string*, %nyx_string** %9086
  %9268 = getelementptr [1 x i8], [1 x i8]* @.str1258, i32 0, i32 0
  %9269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1258.c, i8* %9268, i64 0)
  %9270 = call i1 @nyx_string_equals(%nyx_string* %9267, %nyx_string* %9269)
  br i1 %9270, label %then1721, label %else1722
then1721:
  %9271 = getelementptr [3 x i8], [3 x i8]* @.str1259, i32 0, i32 0
  %9272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1259.c, i8* %9271, i64 2)
  store %nyx_string* %9272, %nyx_string** %9086
  br label %merge1723
else1722:
  br label %merge1723
merge1723:
  br label %merge1717
else1716:
  br label %merge1717
merge1717:
  %9273 = alloca i1
  store i1 false, i1* %9273
  %9274 = load %nyx_string*, %nyx_string** %9086
  %9275 = getelementptr [3 x i8], [3 x i8]* @.str1260, i32 0, i32 0
  %9276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1260.c, i8* %9275, i64 2)
  %9277 = call i1 @nyx_string_equals(%nyx_string* %9274, %nyx_string* %9276)
  %9278 = xor i1 %9277, true
  br i1 %9278, label %sc_and_rhs1724, label %sc_and_end1725
sc_and_rhs1724:
  %9279 = load %nyx_string*, %nyx_string** %9086
  %9280 = getelementptr [3 x i8], [3 x i8]* @.str1261, i32 0, i32 0
  %9281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1261.c, i8* %9280, i64 2)
  %9282 = call i1 @nyx_string_equals(%nyx_string* %9279, %nyx_string* %9281)
  %9283 = xor i1 %9282, true
  store i1 %9283, i1* %9273
  br label %sc_and_end1725
sc_and_end1725:
  %9284 = load i1, i1* %9273
  br i1 %9284, label %then1726, label %else1727
then1726:
  %9285 = getelementptr [27 x i8], [27 x i8]* @.str1262, i32 0, i32 0
  %9286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1262.c, i8* %9285, i64 26)
  %9287 = load %nyx_string*, %nyx_string** %9086
  %9288 = call %nyx_string* @nyx_string_concat(%nyx_string* %9286, %nyx_string* %9287)
  %9289 = getelementptr [29 x i8], [29 x i8]* @.str1263, i32 0, i32 0
  %9290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1263.c, i8* %9289, i64 28)
  %9291 = call %nyx_string* @nyx_string_concat(%nyx_string* %9288, %nyx_string* %9290)
  %9292 = call i8* @nyx_string_to_cstr(%nyx_string* %9291)
  call void @nyx_print_string(i8* %9292)
  ret i64 1
else1727:
  br label %merge1728
merge1728:
  %9293 = load %nyx_string*, %nyx_string** %9089
  %9294 = call i1 @validate_agents(%nyx_string* %9293)
  %9295 = icmp eq i1 %9294, 0
  br i1 %9295, label %then1729, label %else1730
then1729:
  ret i64 1
else1730:
  br label %merge1731
merge1731:
  %9296 = load %nyx_string*, %nyx_string** %9083
  %9297 = load %nyx_string*, %nyx_string** %9086
  %9298 = load %nyx_string*, %nyx_string** %9089
  %9299 = call i1 @run_init(%nyx_string* %9296, %nyx_string* %9297, %nyx_string* %9298)
  %9300 = alloca i1
  store i1 %9299, i1* %9300
  %9301 = load i1, i1* %9300
  %9302 = icmp eq i1 %9301, 0
  br i1 %9302, label %then1732, label %else1733
then1732:
  ret i64 1
else1733:
  br label %merge1734
merge1734:
  %9303 = load i1, i1* %9090
  br i1 %9303, label %then1735, label %else1736
then1735:
  %9304 = load %nyx_string*, %nyx_string** %9083
  %9305 = alloca %nyx_string*
  store %nyx_string* %9304, %nyx_string** %9305
  %9306 = load %nyx_string*, %nyx_string** %9305
  %9307 = getelementptr [1 x i8], [1 x i8]* @.str1264, i32 0, i32 0
  %9308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1264.c, i8* %9307, i64 0)
  %9309 = call i1 @nyx_string_equals(%nyx_string* %9306, %nyx_string* %9308)
  br i1 %9309, label %then1738, label %else1739
then1738:
  %9310 = getelementptr [2 x i8], [2 x i8]* @.str1265, i32 0, i32 0
  %9311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1265.c, i8* %9310, i64 1)
  store %nyx_string* %9311, %nyx_string** %9305
  br label %merge1740
else1739:
  br label %merge1740
merge1740:
  %9312 = getelementptr [1 x i8], [1 x i8]* @.str1266, i32 0, i32 0
  %9313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1266.c, i8* %9312, i64 0)
  %9314 = call i8* @nyx_string_to_cstr(%nyx_string* %9313)
  call void @nyx_print_string(i8* %9314)
  %9315 = load %nyx_string*, %nyx_string** %9305
  %9316 = load %nyx_string*, %nyx_string** %9086
  %9317 = call i1 @run_sdd_init(%nyx_string* %9315, %nyx_string* %9316)
  %9318 = alloca i1
  store i1 %9317, i1* %9318
  %9319 = load i1, i1* %9318
  %9320 = icmp eq i1 %9319, 0
  br i1 %9320, label %then1741, label %else1742
then1741:
  ret i64 1
else1742:
  br label %merge1743
merge1743:
  br label %merge1737
else1736:
  br label %merge1737
merge1737:
  ret i64 0
else1652:
  br label %merge1653
merge1653:
  %9321 = load %nyx_string*, %nyx_string** %8837
  %9322 = getelementptr [4 x i8], [4 x i8]* @.str1267, i32 0, i32 0
  %9323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1267.c, i8* %9322, i64 3)
  %9324 = call i1 @nyx_string_equals(%nyx_string* %9321, %nyx_string* %9323)
  br i1 %9324, label %then1744, label %else1745
then1744:
  %9325 = getelementptr [1 x i8], [1 x i8]* @.str1268, i32 0, i32 0
  %9326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1268.c, i8* %9325, i64 0)
  %9327 = alloca %nyx_string*
  store %nyx_string* %9326, %nyx_string** %9327
  %9328 = load { i64, i8* }*, { i64, i8* }** %8834
  %9329 = call i64 @nyx_array_length({ i64, i8* }* %9328)
  %9330 = icmp sge i64 %9329, 3
  br i1 %9330, label %then1747, label %else1748
then1747:
  %9331 = load { i64, i8* }*, { i64, i8* }** %8834
  %9332 = call i64 @nyx_array_get_checked({ i64, i8* }* %9331, i64 2, i64 2)
  %9333 = inttoptr i64 %9332 to %nyx_string*
  %9334 = alloca %nyx_string*
  store %nyx_string* %9333, %nyx_string** %9334
  %9335 = load %nyx_string*, %nyx_string** %9334
  store %nyx_string* %9335, %nyx_string** %9327
  br label %merge1749
else1748:
  br label %merge1749
merge1749:
  %9336 = load %nyx_string*, %nyx_string** %9327
  %9337 = getelementptr [5 x i8], [5 x i8]* @.str1269, i32 0, i32 0
  %9338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1269.c, i8* %9337, i64 4)
  %9339 = call i1 @nyx_string_equals(%nyx_string* %9336, %nyx_string* %9338)
  br i1 %9339, label %then1750, label %else1751
then1750:
  %9340 = getelementptr [2 x i8], [2 x i8]* @.str1270, i32 0, i32 0
  %9341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1270.c, i8* %9340, i64 1)
  %9342 = getelementptr [2 x i8], [2 x i8]* @.str1271, i32 0, i32 0
  %9343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1271.c, i8* %9342, i64 1)
  %9344 = call %nyx_string* @project_lang(%nyx_string* %9343)
  %9345 = call i1 @run_sdd_init(%nyx_string* %9341, %nyx_string* %9344)
  %9346 = alloca i1
  store i1 %9345, i1* %9346
  %9347 = load i1, i1* %9346
  br i1 %9347, label %then1753, label %else1754
then1753:
  ret i64 0
else1754:
  br label %merge1755
merge1755:
  ret i64 1
else1751:
  br label %merge1752
merge1752:
  %9348 = load %nyx_string*, %nyx_string** %9327
  %9349 = getelementptr [9 x i8], [9 x i8]* @.str1272, i32 0, i32 0
  %9350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1272.c, i8* %9349, i64 8)
  %9351 = call i1 @nyx_string_equals(%nyx_string* %9348, %nyx_string* %9350)
  br i1 %9351, label %then1756, label %else1757
then1756:
  %9352 = getelementptr [2 x i8], [2 x i8]* @.str1273, i32 0, i32 0
  %9353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1273.c, i8* %9352, i64 1)
  %9354 = getelementptr [2 x i8], [2 x i8]* @.str1274, i32 0, i32 0
  %9355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1274.c, i8* %9354, i64 1)
  %9356 = call %nyx_string* @project_lang(%nyx_string* %9355)
  %9357 = call i1 @run_sdd_evidence(%nyx_string* %9353, %nyx_string* %9356)
  %9358 = alloca i1
  store i1 %9357, i1* %9358
  %9359 = load i1, i1* %9358
  br i1 %9359, label %then1759, label %else1760
then1759:
  ret i64 0
else1760:
  br label %merge1761
merge1761:
  ret i64 1
else1757:
  br label %merge1758
merge1758:
  %9360 = load %nyx_string*, %nyx_string** %9327
  %9361 = getelementptr [1 x i8], [1 x i8]* @.str1275, i32 0, i32 0
  %9362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1275.c, i8* %9361, i64 0)
  %9363 = call i1 @nyx_string_equals(%nyx_string* %9360, %nyx_string* %9362)
  br i1 %9363, label %then1762, label %else1763
then1762:
  %9364 = getelementptr [57 x i8], [57 x i8]* @.str1276, i32 0, i32 0
  %9365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1276.c, i8* %9364, i64 56)
  %9366 = call i8* @nyx_string_to_cstr(%nyx_string* %9365)
  call void @nyx_print_string(i8* %9366)
  br label %merge1764
else1763:
  %9367 = getelementptr [48 x i8], [48 x i8]* @.str1277, i32 0, i32 0
  %9368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1277.c, i8* %9367, i64 47)
  %9369 = load %nyx_string*, %nyx_string** %9327
  %9370 = call %nyx_string* @nyx_string_concat(%nyx_string* %9368, %nyx_string* %9369)
  %9371 = getelementptr [29 x i8], [29 x i8]* @.str1278, i32 0, i32 0
  %9372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1278.c, i8* %9371, i64 28)
  %9373 = call %nyx_string* @nyx_string_concat(%nyx_string* %9370, %nyx_string* %9372)
  %9374 = call i8* @nyx_string_to_cstr(%nyx_string* %9373)
  call void @nyx_print_string(i8* %9374)
  br label %merge1764
merge1764:
  %9375 = getelementptr [69 x i8], [69 x i8]* @.str1279, i32 0, i32 0
  %9376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1279.c, i8* %9375, i64 68)
  %9377 = call i8* @nyx_string_to_cstr(%nyx_string* %9376)
  call void @nyx_print_string(i8* %9377)
  %9378 = getelementptr [79 x i8], [79 x i8]* @.str1280, i32 0, i32 0
  %9379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1280.c, i8* %9378, i64 78)
  %9380 = call i8* @nyx_string_to_cstr(%nyx_string* %9379)
  call void @nyx_print_string(i8* %9380)
  ret i64 1
else1745:
  br label %merge1746
merge1746:
  %9381 = load %nyx_string*, %nyx_string** %8837
  %9382 = getelementptr [4 x i8], [4 x i8]* @.str1281, i32 0, i32 0
  %9383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1281.c, i8* %9382, i64 3)
  %9384 = call i1 @nyx_string_equals(%nyx_string* %9381, %nyx_string* %9383)
  br i1 %9384, label %then1765, label %else1766
then1765:
  %9385 = load { i64, i8* }*, { i64, i8* }** %8834
  %9386 = call i64 @nyx_array_length({ i64, i8* }* %9385)
  %9387 = icmp slt i64 %9386, 3
  br i1 %9387, label %then1768, label %else1769
then1768:
  %9388 = getelementptr [51 x i8], [51 x i8]* @.str1282, i32 0, i32 0
  %9389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1282.c, i8* %9388, i64 50)
  %9390 = call i8* @nyx_string_to_cstr(%nyx_string* %9389)
  call void @nyx_print_string(i8* %9390)
  ret i64 1
else1769:
  br label %merge1770
merge1770:
  %9391 = load { i64, i8* }*, { i64, i8* }** %8834
  %9392 = call i64 @nyx_array_get_checked({ i64, i8* }* %9391, i64 2, i64 2)
  %9393 = inttoptr i64 %9392 to %nyx_string*
  %9394 = alloca %nyx_string*
  store %nyx_string* %9393, %nyx_string** %9394
  %9395 = getelementptr [1 x i8], [1 x i8]* @.str1283, i32 0, i32 0
  %9396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1283.c, i8* %9395, i64 0)
  %9397 = alloca %nyx_string*
  store %nyx_string* %9396, %nyx_string** %9397
  %9398 = load { i64, i8* }*, { i64, i8* }** %8834
  %9399 = call i64 @nyx_array_length({ i64, i8* }* %9398)
  %9400 = icmp sge i64 %9399, 5
  br i1 %9400, label %then1771, label %else1772
then1771:
  %9401 = load { i64, i8* }*, { i64, i8* }** %8834
  %9402 = call i64 @nyx_array_get_checked({ i64, i8* }* %9401, i64 3, i64 2)
  %9403 = inttoptr i64 %9402 to %nyx_string*
  %9404 = alloca %nyx_string*
  store %nyx_string* %9403, %nyx_string** %9404
  %9405 = load %nyx_string*, %nyx_string** %9404
  %9406 = getelementptr [7 x i8], [7 x i8]* @.str1284, i32 0, i32 0
  %9407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1284.c, i8* %9406, i64 6)
  %9408 = call i1 @nyx_string_equals(%nyx_string* %9405, %nyx_string* %9407)
  br i1 %9408, label %then1774, label %else1775
then1774:
  %9409 = load { i64, i8* }*, { i64, i8* }** %8834
  %9410 = call i64 @nyx_array_get_checked({ i64, i8* }* %9409, i64 4, i64 2)
  %9411 = inttoptr i64 %9410 to %nyx_string*
  %9412 = alloca %nyx_string*
  store %nyx_string* %9411, %nyx_string** %9412
  %9413 = load %nyx_string*, %nyx_string** %9412
  store %nyx_string* %9413, %nyx_string** %9397
  br label %merge1776
else1775:
  br label %merge1776
merge1776:
  br label %merge1773
else1772:
  br label %merge1773
merge1773:
  %9414 = call { i64, i8* }* @nyx_array_new_ptr()
  %9415 = alloca { i64, i8* }*
  store { i64, i8* }* %9414, { i64, i8* }** %9415
  %9416 = call { i64, i8* }* @nyx_array_new_ptr()
  %9417 = alloca { i64, i8* }*
  store { i64, i8* }* %9416, { i64, i8* }** %9417
  %9418 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %9419 = ptrtoint %ProjectConfig* %9418 to i64
  %9420 = call i8* @GC_malloc(i64 %9419)
  %9421 = bitcast i8* %9420 to %ProjectConfig*
  %9422 = getelementptr [8 x i8], [8 x i8]* @.str1285, i32 0, i32 0
  %9423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1285.c, i8* %9422, i64 7)
  %9424 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 0
  store %nyx_string* %9423, %nyx_string** %9424
  %9425 = getelementptr [6 x i8], [6 x i8]* @.str1286, i32 0, i32 0
  %9426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1286.c, i8* %9425, i64 5)
  %9427 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 1
  store %nyx_string* %9426, %nyx_string** %9427
  %9428 = getelementptr [1 x i8], [1 x i8]* @.str1287, i32 0, i32 0
  %9429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1287.c, i8* %9428, i64 0)
  %9430 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 2
  store %nyx_string* %9429, %nyx_string** %9430
  %9431 = getelementptr [1 x i8], [1 x i8]* @.str1288, i32 0, i32 0
  %9432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1288.c, i8* %9431, i64 0)
  %9433 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 3
  store %nyx_string* %9432, %nyx_string** %9433
  %9434 = getelementptr [1 x i8], [1 x i8]* @.str1289, i32 0, i32 0
  %9435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1289.c, i8* %9434, i64 0)
  %9436 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 4
  store %nyx_string* %9435, %nyx_string** %9436
  %9437 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 5
  store i1 0, i1* %9437
  %9438 = getelementptr [1 x i8], [1 x i8]* @.str1290, i32 0, i32 0
  %9439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1290.c, i8* %9438, i64 0)
  %9440 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 6
  store %nyx_string* %9439, %nyx_string** %9440
  %9441 = load { i64, i8* }*, { i64, i8* }** %9415
  %9442 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 7
  store { i64, i8* }* %9441, { i64, i8* }** %9442
  %9443 = load { i64, i8* }*, { i64, i8* }** %9417
  %9444 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 8
  store { i64, i8* }* %9443, { i64, i8* }** %9444
  %9445 = getelementptr [1 x i8], [1 x i8]* @.str1291, i32 0, i32 0
  %9446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1291.c, i8* %9445, i64 0)
  %9447 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 9
  store %nyx_string* %9446, %nyx_string** %9447
  %9448 = getelementptr [1 x i8], [1 x i8]* @.str1292, i32 0, i32 0
  %9449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1292.c, i8* %9448, i64 0)
  %9450 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 10
  store %nyx_string* %9449, %nyx_string** %9450
  %9451 = call { i64, i8* }* @nyx_array_new_ptr()
  %9452 = getelementptr %ProjectConfig, %ProjectConfig* %9421, i32 0, i32 11
  store { i64, i8* }* %9451, { i64, i8* }** %9452
  %9453 = load %ProjectConfig, %ProjectConfig* %9421
  %9454 = alloca %ProjectConfig
  store %ProjectConfig %9453, %ProjectConfig* %9454
  %9455 = load %nyx_string*, %nyx_string** %9394
  %9456 = load %nyx_string*, %nyx_string** %9397
  %9457 = load %ProjectConfig, %ProjectConfig* %9454
  %9458 = call i1 @run_add(%nyx_string* %9455, %nyx_string* %9456, %ProjectConfig %9457)
  %9459 = alloca i1
  store i1 %9458, i1* %9459
  %9460 = load i1, i1* %9459
  br i1 %9460, label %then1777, label %else1778
then1777:
  ret i64 0
else1778:
  br label %merge1779
merge1779:
  ret i64 1
else1766:
  br label %merge1767
merge1767:
  %9461 = load %nyx_string*, %nyx_string** %8837
  %9462 = getelementptr [7 x i8], [7 x i8]* @.str1293, i32 0, i32 0
  %9463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1293.c, i8* %9462, i64 6)
  %9464 = call i1 @nyx_string_equals(%nyx_string* %9461, %nyx_string* %9463)
  br i1 %9464, label %then1780, label %else1781
then1780:
  %9465 = getelementptr [1 x i8], [1 x i8]* @.str1294, i32 0, i32 0
  %9466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1294.c, i8* %9465, i64 0)
  %9467 = alloca %nyx_string*
  store %nyx_string* %9466, %nyx_string** %9467
  %9468 = alloca i1
  store i1 0, i1* %9468
  %9469 = alloca i64
  store i64 2, i64* %9469
  %9470 = getelementptr [7 x i8], [7 x i8]* @.str1295, i32 0, i32 0
  %9471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1295.c, i8* %9470, i64 6)
  %9472 = alloca %nyx_string*
  store %nyx_string* %9471, %nyx_string** %9472
  %9473 = getelementptr [10 x i8], [10 x i8]* @.str1296, i32 0, i32 0
  %9474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1296.c, i8* %9473, i64 9)
  %9475 = alloca %nyx_string*
  store %nyx_string* %9474, %nyx_string** %9475
  %9476 = call i8* @llvm.stacksave()
  br label %while_cond1783
while_cond1783:
  %9477 = load i64, i64* %9469
  %9478 = load { i64, i8* }*, { i64, i8* }** %8834
  %9479 = call i64 @nyx_array_length({ i64, i8* }* %9478)
  %9480 = icmp slt i64 %9477, %9479
  br i1 %9480, label %while_body1784, label %while_end1785
while_body1784:
  call void @llvm.stackrestore(i8* %9476)
  %9481 = load { i64, i8* }*, { i64, i8* }** %8834
  %9482 = load i64, i64* %9469
  %9483 = call i64 @nyx_array_get_checked({ i64, i8* }* %9481, i64 %9482, i64 2)
  %9484 = inttoptr i64 %9483 to %nyx_string*
  %9485 = alloca %nyx_string*
  store %nyx_string* %9484, %nyx_string** %9485
  %9486 = load %nyx_string*, %nyx_string** %9485
  %9487 = load %nyx_string*, %nyx_string** %9472
  %9488 = call i1 @nyx_string_equals(%nyx_string* %9486, %nyx_string* %9487)
  br i1 %9488, label %then1786, label %else1787
then1786:
  store i1 1, i1* %9468
  br label %merge1788
else1787:
  %9489 = load %nyx_string*, %nyx_string** %9485
  %9490 = load %nyx_string*, %nyx_string** %9475
  %9491 = call i1 @nyx_string_equals(%nyx_string* %9489, %nyx_string* %9490)
  %9492 = xor i1 %9491, true
  br i1 %9492, label %then1789, label %else1790
then1789:
  %9493 = load %nyx_string*, %nyx_string** %9485
  store %nyx_string* %9493, %nyx_string** %9467
  br label %merge1791
else1790:
  br label %merge1791
merge1791:
  br label %merge1788
merge1788:
  %9494 = load i64, i64* %9469
  %9495 = add i64 %9494, 1
  store i64 %9495, i64* %9469
  br label %while_cond1783
while_end1785:
  %9496 = load %nyx_string*, %nyx_string** %9467
  %9497 = load i1, i1* %9468
  %9498 = call i1 @run_report(%nyx_string* %9496, i1 %9497)
  %9499 = alloca i1
  store i1 %9498, i1* %9499
  %9500 = load i1, i1* %9499
  br i1 %9500, label %then1792, label %else1793
then1792:
  ret i64 0
else1793:
  br label %merge1794
merge1794:
  ret i64 1
else1781:
  br label %merge1782
merge1782:
  %9501 = load %nyx_string*, %nyx_string** %8837
  %9502 = getelementptr [13 x i8], [13 x i8]* @.str1297, i32 0, i32 0
  %9503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1297.c, i8* %9502, i64 12)
  %9504 = call i1 @nyx_string_equals(%nyx_string* %9501, %nyx_string* %9503)
  br i1 %9504, label %then1795, label %else1796
then1795:
  %9505 = load { i64, i8* }*, { i64, i8* }** %8834
  %9506 = call i64 @nyx_array_length({ i64, i8* }* %9505)
  %9507 = icmp slt i64 %9506, 6
  br i1 %9507, label %then1798, label %else1799
then1798:
  %9508 = getelementptr [68 x i8], [68 x i8]* @.str1298, i32 0, i32 0
  %9509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1298.c, i8* %9508, i64 67)
  %9510 = call i8* @nyx_string_to_cstr(%nyx_string* %9509)
  call void @nyx_print_string(i8* %9510)
  ret i64 1
else1799:
  br label %merge1800
merge1800:
  %9511 = load { i64, i8* }*, { i64, i8* }** %8834
  %9512 = call i64 @nyx_array_get_checked({ i64, i8* }* %9511, i64 2, i64 2)
  %9513 = inttoptr i64 %9512 to %nyx_string*
  %9514 = alloca %nyx_string*
  store %nyx_string* %9513, %nyx_string** %9514
  %9515 = load { i64, i8* }*, { i64, i8* }** %8834
  %9516 = call i64 @nyx_array_get_checked({ i64, i8* }* %9515, i64 3, i64 2)
  %9517 = inttoptr i64 %9516 to %nyx_string*
  %9518 = alloca %nyx_string*
  store %nyx_string* %9517, %nyx_string** %9518
  %9519 = load { i64, i8* }*, { i64, i8* }** %8834
  %9520 = call i64 @nyx_array_get_checked({ i64, i8* }* %9519, i64 4, i64 2)
  %9521 = inttoptr i64 %9520 to %nyx_string*
  %9522 = alloca %nyx_string*
  store %nyx_string* %9521, %nyx_string** %9522
  %9523 = load { i64, i8* }*, { i64, i8* }** %8834
  %9524 = call i64 @nyx_array_get_checked({ i64, i8* }* %9523, i64 5, i64 2)
  %9525 = inttoptr i64 %9524 to %nyx_string*
  %9526 = alloca %nyx_string*
  store %nyx_string* %9525, %nyx_string** %9526
  %9527 = load %nyx_string*, %nyx_string** %9514
  %9528 = load %nyx_string*, %nyx_string** %9518
  %9529 = load %nyx_string*, %nyx_string** %9522
  %9530 = load %nyx_string*, %nyx_string** %9526
  %9531 = call i1 @run_agents_merge(%nyx_string* %9527, %nyx_string* %9528, %nyx_string* %9529, %nyx_string* %9530)
  br i1 %9531, label %then1801, label %else1802
then1801:
  ret i64 0
else1802:
  br label %merge1803
merge1803:
  ret i64 1
else1796:
  br label %merge1797
merge1797:
  %9532 = load %nyx_string*, %nyx_string** %8837
  %9533 = getelementptr [13 x i8], [13 x i8]* @.str1299, i32 0, i32 0
  %9534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1299.c, i8* %9533, i64 12)
  %9535 = call i1 @nyx_string_equals(%nyx_string* %9532, %nyx_string* %9534)
  br i1 %9535, label %then1804, label %else1805
then1804:
  %9536 = getelementptr [1 x i8], [1 x i8]* @.str1300, i32 0, i32 0
  %9537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1300.c, i8* %9536, i64 0)
  %9538 = alloca %nyx_string*
  store %nyx_string* %9537, %nyx_string** %9538
  %9539 = load { i64, i8* }*, { i64, i8* }** %8834
  %9540 = call i64 @nyx_array_length({ i64, i8* }* %9539)
  %9541 = icmp sge i64 %9540, 3
  br i1 %9541, label %then1807, label %else1808
then1807:
  %9542 = load { i64, i8* }*, { i64, i8* }** %8834
  %9543 = call i64 @nyx_array_get_checked({ i64, i8* }* %9542, i64 2, i64 2)
  %9544 = inttoptr i64 %9543 to %nyx_string*
  %9545 = alloca %nyx_string*
  store %nyx_string* %9544, %nyx_string** %9545
  %9546 = load %nyx_string*, %nyx_string** %9545
  %9547 = getelementptr [10 x i8], [10 x i8]* @.str1301, i32 0, i32 0
  %9548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1301.c, i8* %9547, i64 9)
  %9549 = call i1 @nyx_string_equals(%nyx_string* %9546, %nyx_string* %9548)
  %9550 = xor i1 %9549, true
  br i1 %9550, label %then1810, label %else1811
then1810:
  %9551 = load %nyx_string*, %nyx_string** %9545
  store %nyx_string* %9551, %nyx_string** %9538
  br label %merge1812
else1811:
  br label %merge1812
merge1812:
  br label %merge1809
else1808:
  br label %merge1809
merge1809:
  %9552 = load %nyx_string*, %nyx_string** %9538
  %9553 = call i1 @run_capabilities(%nyx_string* %9552)
  %9554 = alloca i1
  store i1 %9553, i1* %9554
  %9555 = load i1, i1* %9554
  br i1 %9555, label %then1813, label %else1814
then1813:
  ret i64 0
else1814:
  br label %merge1815
merge1815:
  ret i64 1
else1805:
  br label %merge1806
merge1806:
  %9556 = getelementptr [9 x i8], [9 x i8]* @.str1302, i32 0, i32 0
  %9557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1302.c, i8* %9556, i64 8)
  %9558 = call i8* @nyx_string_to_cstr(%nyx_string* %9557)
  %9559 = call i1 @nyx_file_exists(i8* %9558)
  %9560 = xor i1 %9559, true
  br i1 %9560, label %then1816, label %else1817
then1816:
  %9561 = getelementptr [47 x i8], [47 x i8]* @.str1303, i32 0, i32 0
  %9562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1303.c, i8* %9561, i64 46)
  %9563 = call i8* @nyx_string_to_cstr(%nyx_string* %9562)
  call void @nyx_print_string(i8* %9563)
  %9564 = getelementptr [24 x i8], [24 x i8]* @.str1304, i32 0, i32 0
  %9565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1304.c, i8* %9564, i64 23)
  %9566 = call i8* @nyx_string_to_cstr(%nyx_string* %9565)
  call void @nyx_print_string(i8* %9566)
  %9567 = getelementptr [12 x i8], [12 x i8]* @.str1305, i32 0, i32 0
  %9568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1305.c, i8* %9567, i64 11)
  %9569 = call i8* @nyx_string_to_cstr(%nyx_string* %9568)
  call void @nyx_print_string(i8* %9569)
  %9570 = getelementptr [17 x i8], [17 x i8]* @.str1306, i32 0, i32 0
  %9571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1306.c, i8* %9570, i64 16)
  %9572 = call i8* @nyx_string_to_cstr(%nyx_string* %9571)
  call void @nyx_print_string(i8* %9572)
  %9573 = getelementptr [20 x i8], [20 x i8]* @.str1307, i32 0, i32 0
  %9574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1307.c, i8* %9573, i64 19)
  %9575 = call i8* @nyx_string_to_cstr(%nyx_string* %9574)
  call void @nyx_print_string(i8* %9575)
  %9576 = getelementptr [23 x i8], [23 x i8]* @.str1308, i32 0, i32 0
  %9577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1308.c, i8* %9576, i64 22)
  %9578 = call i8* @nyx_string_to_cstr(%nyx_string* %9577)
  call void @nyx_print_string(i8* %9578)
  ret i64 1
else1817:
  br label %merge1818
merge1818:
  %9579 = getelementptr [9 x i8], [9 x i8]* @.str1309, i32 0, i32 0
  %9580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1309.c, i8* %9579, i64 8)
  %9581 = call i8* @nyx_string_to_cstr(%nyx_string* %9580)
  %9582 = call %nyx_string* @nyx_read_file(i8* %9581)
  %9583 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 20
  store %nyx_string* %9582, %nyx_string** %9583
  %9584 = load %nyx_string*, %nyx_string** %9583
  %9585 = call %ProjectConfig @parse_toml(%nyx_string* %9584)
  %9586 = getelementptr %SharedEnv_main, %SharedEnv_main* %8832, i32 0, i32 21
  store %ProjectConfig %9585, %ProjectConfig* %9586
  %9587 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 9
  %9588 = load %nyx_string*, %nyx_string** %9587
  %9589 = getelementptr [1 x i8], [1 x i8]* @.str1310, i32 0, i32 0
  %9590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1310.c, i8* %9589, i64 0)
  %9591 = call i1 @nyx_string_equals(%nyx_string* %9588, %nyx_string* %9590)
  %9592 = xor i1 %9591, true
  br i1 %9592, label %then1819, label %else1820
then1819:
  %9593 = getelementptr [8 x i8], [8 x i8]* @.str1311, i32 0, i32 0
  %9594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1311.c, i8* %9593, i64 7)
  %9595 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 9
  %9596 = load %nyx_string*, %nyx_string** %9595
  %9597 = call %nyx_string* @nyx_string_concat(%nyx_string* %9594, %nyx_string* %9596)
  %9598 = call i8* @nyx_string_to_cstr(%nyx_string* %9597)
  call void @nyx_print_string(i8* %9598)
  ret i64 1
else1820:
  br label %merge1821
merge1821:
  %9599 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 0
  %9600 = load %nyx_string*, %nyx_string** %9599
  %9601 = getelementptr [1 x i8], [1 x i8]* @.str1312, i32 0, i32 0
  %9602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1312.c, i8* %9601, i64 0)
  %9603 = call i1 @nyx_string_equals(%nyx_string* %9600, %nyx_string* %9602)
  br i1 %9603, label %then1822, label %else1823
then1822:
  %9604 = getelementptr [45 x i8], [45 x i8]* @.str1313, i32 0, i32 0
  %9605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1313.c, i8* %9604, i64 44)
  %9606 = call i8* @nyx_string_to_cstr(%nyx_string* %9605)
  call void @nyx_print_string(i8* %9606)
  ret i64 1
else1823:
  br label %merge1824
merge1824:
  %9607 = load %nyx_string*, %nyx_string** %8844
  %9608 = getelementptr [1 x i8], [1 x i8]* @.str1314, i32 0, i32 0
  %9609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1314.c, i8* %9608, i64 0)
  %9610 = call i1 @nyx_string_equals(%nyx_string* %9607, %nyx_string* %9609)
  %9611 = xor i1 %9610, true
  br i1 %9611, label %then1825, label %else1826
then1825:
  %9612 = alloca i1
  store i1 false, i1* %9612
  %9613 = load %nyx_string*, %nyx_string** %8837
  %9614 = getelementptr [6 x i8], [6 x i8]* @.str1315, i32 0, i32 0
  %9615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1315.c, i8* %9614, i64 5)
  %9616 = call i1 @nyx_string_equals(%nyx_string* %9613, %nyx_string* %9615)
  %9617 = xor i1 %9616, true
  br i1 %9617, label %sc_and_rhs1828, label %sc_and_end1829
sc_and_rhs1828:
  %9618 = load %nyx_string*, %nyx_string** %8837
  %9619 = getelementptr [4 x i8], [4 x i8]* @.str1316, i32 0, i32 0
  %9620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1316.c, i8* %9619, i64 3)
  %9621 = call i1 @nyx_string_equals(%nyx_string* %9618, %nyx_string* %9620)
  %9622 = xor i1 %9621, true
  store i1 %9622, i1* %9612
  br label %sc_and_end1829
sc_and_end1829:
  %9623 = load i1, i1* %9612
  br i1 %9623, label %then1830, label %else1831
then1830:
  %9624 = getelementptr [53 x i8], [53 x i8]* @.str1317, i32 0, i32 0
  %9625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1317.c, i8* %9624, i64 52)
  %9626 = call i8* @nyx_string_to_cstr(%nyx_string* %9625)
  call void @nyx_print_string(i8* %9626)
  ret i64 1
else1831:
  br label %merge1832
merge1832:
  %9627 = load %nyx_string*, %nyx_string** %8844
  %9628 = call %nyx_string* @main_flag_error(%nyx_string* %9627)
  %9629 = alloca %nyx_string*
  store %nyx_string* %9628, %nyx_string** %9629
  %9630 = load %nyx_string*, %nyx_string** %9629
  %9631 = getelementptr [1 x i8], [1 x i8]* @.str1318, i32 0, i32 0
  %9632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1318.c, i8* %9631, i64 0)
  %9633 = call i1 @nyx_string_equals(%nyx_string* %9630, %nyx_string* %9632)
  %9634 = xor i1 %9633, true
  br i1 %9634, label %then1833, label %else1834
then1833:
  %9635 = getelementptr [8 x i8], [8 x i8]* @.str1319, i32 0, i32 0
  %9636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1319.c, i8* %9635, i64 7)
  %9637 = load %nyx_string*, %nyx_string** %9629
  %9638 = call %nyx_string* @nyx_string_concat(%nyx_string* %9636, %nyx_string* %9637)
  %9639 = call i8* @nyx_string_to_cstr(%nyx_string* %9638)
  call void @nyx_print_string(i8* %9639)
  ret i64 1
else1834:
  br label %merge1835
merge1835:
  %9640 = load %ProjectConfig, %ProjectConfig* %9586
  %9641 = load %nyx_string*, %nyx_string** %8844
  %9642 = call %nyx_string* @bin_name_for_main(%ProjectConfig %9640, %nyx_string* %9641)
  %9643 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 10
  store %nyx_string* %9642, %nyx_string** %9643
  %9644 = load %nyx_string*, %nyx_string** %8844
  %9645 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 2
  store %nyx_string* %9644, %nyx_string** %9645
  br label %merge1827
else1826:
  br label %merge1827
merge1827:
  %9646 = load %nyx_string*, %nyx_string** %8837
  %9647 = getelementptr [5 x i8], [5 x i8]* @.str1320, i32 0, i32 0
  %9648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1320.c, i8* %9647, i64 4)
  %9649 = call i1 @nyx_string_equals(%nyx_string* %9646, %nyx_string* %9648)
  br i1 %9649, label %then1836, label %else1837
then1836:
  %9650 = load %ProjectConfig, %ProjectConfig* %9586
  %9651 = call i64 @print_info(%ProjectConfig %9650)
  ret i64 0
else1837:
  br label %merge1838
merge1838:
  %9652 = load %nyx_string*, %nyx_string** %8837
  %9653 = getelementptr [5 x i8], [5 x i8]* @.str1321, i32 0, i32 0
  %9654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1321.c, i8* %9653, i64 4)
  %9655 = call i1 @nyx_string_equals(%nyx_string* %9652, %nyx_string* %9654)
  br i1 %9655, label %then1839, label %else1840
then1839:
  %9656 = load %ProjectConfig, %ProjectConfig* %9586
  %9657 = load i1, i1* %8838
  %9658 = call i1 @run_libs(%ProjectConfig %9656, i1 %9657)
  br i1 %9658, label %then1842, label %else1843
then1842:
  ret i64 0
else1843:
  br label %merge1844
merge1844:
  ret i64 1
else1840:
  br label %merge1841
merge1841:
  %9659 = load %nyx_string*, %nyx_string** %8837
  %9660 = getelementptr [6 x i8], [6 x i8]* @.str1322, i32 0, i32 0
  %9661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1322.c, i8* %9660, i64 5)
  %9662 = call i1 @nyx_string_equals(%nyx_string* %9659, %nyx_string* %9661)
  br i1 %9662, label %then1845, label %else1846
then1845:
  %9663 = load %ProjectConfig, %ProjectConfig* %9586
  %9664 = load i1, i1* %8838
  %9665 = load %nyx_string*, %nyx_string** %8841
  %9666 = call i1 @run_build(%ProjectConfig %9663, i1 %9664, %nyx_string* %9665)
  %9667 = alloca i1
  store i1 %9666, i1* %9667
  %9668 = load i1, i1* %9667
  br i1 %9668, label %then1848, label %else1849
then1848:
  %9669 = load %ProjectConfig, %ProjectConfig* %9586
  %9670 = call i64 @write_lockfile(%ProjectConfig %9669)
  %9671 = getelementptr [15 x i8], [15 x i8]* @.str1323, i32 0, i32 0
  %9672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1323.c, i8* %9671, i64 14)
  %9673 = call i8* @nyx_string_to_cstr(%nyx_string* %9672)
  call void @nyx_print_string(i8* %9673)
  ret i64 0
else1849:
  br label %merge1850
merge1850:
  ret i64 1
else1846:
  br label %merge1847
merge1847:
  %9674 = load %nyx_string*, %nyx_string** %8837
  %9675 = getelementptr [4 x i8], [4 x i8]* @.str1324, i32 0, i32 0
  %9676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1324.c, i8* %9675, i64 3)
  %9677 = call i1 @nyx_string_equals(%nyx_string* %9674, %nyx_string* %9676)
  br i1 %9677, label %then1851, label %else1852
then1851:
  %9678 = alloca i64
  store i64 2, i64* %9678
  %9679 = getelementptr [3 x i8], [3 x i8]* @.str1325, i32 0, i32 0
  %9680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1325.c, i8* %9679, i64 2)
  %9681 = alloca %nyx_string*
  store %nyx_string* %9680, %nyx_string** %9681
  %9682 = getelementptr [7 x i8], [7 x i8]* @.str1326, i32 0, i32 0
  %9683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1326.c, i8* %9682, i64 6)
  %9684 = alloca %nyx_string*
  store %nyx_string* %9683, %nyx_string** %9684
  %9685 = getelementptr [3 x i8], [3 x i8]* @.str1327, i32 0, i32 0
  %9686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1327.c, i8* %9685, i64 2)
  %9687 = alloca %nyx_string*
  store %nyx_string* %9686, %nyx_string** %9687
  %9688 = getelementptr [79 x i8], [79 x i8]* @.str1328, i32 0, i32 0
  %9689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1328.c, i8* %9688, i64 78)
  %9690 = alloca %nyx_string*
  store %nyx_string* %9689, %nyx_string** %9690
  %9691 = getelementptr [60 x i8], [60 x i8]* @.str1329, i32 0, i32 0
  %9692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1329.c, i8* %9691, i64 59)
  %9693 = alloca %nyx_string*
  store %nyx_string* %9692, %nyx_string** %9693
  %9694 = getelementptr [1 x i8], [1 x i8]* @.str1330, i32 0, i32 0
  %9695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1330.c, i8* %9694, i64 0)
  %9696 = alloca %nyx_string*
  store %nyx_string* %9695, %nyx_string** %9696
  %9697 = getelementptr [56 x i8], [56 x i8]* @.str1331, i32 0, i32 0
  %9698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1331.c, i8* %9697, i64 55)
  %9699 = alloca %nyx_string*
  store %nyx_string* %9698, %nyx_string** %9699
  %9700 = getelementptr [38 x i8], [38 x i8]* @.str1332, i32 0, i32 0
  %9701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1332.c, i8* %9700, i64 37)
  %9702 = alloca %nyx_string*
  store %nyx_string* %9701, %nyx_string** %9702
  %9703 = call i8* @llvm.stacksave()
  br label %while_cond1854
while_cond1854:
  %9704 = load i64, i64* %9678
  %9705 = load { i64, i8* }*, { i64, i8* }** %8834
  %9706 = call i64 @nyx_array_length({ i64, i8* }* %9705)
  %9707 = icmp slt i64 %9704, %9706
  br i1 %9707, label %while_body1855, label %while_end1856
while_body1855:
  call void @llvm.stackrestore(i8* %9703)
  %9708 = load { i64, i8* }*, { i64, i8* }** %8834
  %9709 = load i64, i64* %9678
  %9710 = call i64 @nyx_array_get_checked({ i64, i8* }* %9708, i64 %9709, i64 2)
  %9711 = inttoptr i64 %9710 to %nyx_string*
  %9712 = alloca %nyx_string*
  store %nyx_string* %9711, %nyx_string** %9712
  %9713 = load %nyx_string*, %nyx_string** %9712
  %9714 = load %nyx_string*, %nyx_string** %9681
  %9715 = call i1 @nyx_string_equals(%nyx_string* %9713, %nyx_string* %9714)
  br i1 %9715, label %then1857, label %else1858
then1857:
  %9716 = load { i64, i8* }*, { i64, i8* }** %8834
  %9717 = call i64 @nyx_array_length({ i64, i8* }* %9716)
  store i64 %9717, i64* %9678
  br label %merge1859
else1858:
  %9718 = alloca i1
  store i1 true, i1* %9718
  %9719 = load %nyx_string*, %nyx_string** %9712
  %9720 = load %nyx_string*, %nyx_string** %9684
  %9721 = call i1 @nyx_string_equals(%nyx_string* %9719, %nyx_string* %9720)
  br i1 %9721, label %sc_or_end1861, label %sc_or_rhs1860
sc_or_rhs1860:
  %9722 = load %nyx_string*, %nyx_string** %9712
  %9723 = load %nyx_string*, %nyx_string** %9687
  %9724 = call i1 @nyx_string_equals(%nyx_string* %9722, %nyx_string* %9723)
  store i1 %9724, i1* %9718
  br label %sc_or_end1861
sc_or_end1861:
  %9725 = load i1, i1* %9718
  br i1 %9725, label %then1862, label %else1863
then1862:
  %9726 = load %nyx_string*, %nyx_string** %9690
  %9727 = call i8* @nyx_string_to_cstr(%nyx_string* %9726)
  call void @nyx_print_string(i8* %9727)
  %9728 = load %nyx_string*, %nyx_string** %9693
  %9729 = call i8* @nyx_string_to_cstr(%nyx_string* %9728)
  call void @nyx_print_string(i8* %9729)
  %9730 = load %nyx_string*, %nyx_string** %9696
  %9731 = call i8* @nyx_string_to_cstr(%nyx_string* %9730)
  call void @nyx_print_string(i8* %9731)
  %9732 = load %nyx_string*, %nyx_string** %9699
  %9733 = call i8* @nyx_string_to_cstr(%nyx_string* %9732)
  call void @nyx_print_string(i8* %9733)
  %9734 = load %nyx_string*, %nyx_string** %9702
  %9735 = call i8* @nyx_string_to_cstr(%nyx_string* %9734)
  call void @nyx_print_string(i8* %9735)
  ret i64 0
else1863:
  br label %merge1864
merge1864:
  %9736 = load i64, i64* %9678
  %9737 = add i64 %9736, 1
  store i64 %9737, i64* %9678
  br label %merge1859
merge1859:
  br label %while_cond1854
while_end1856:
  %9738 = load %ProjectConfig, %ProjectConfig* %9586
  %9739 = load %nyx_string*, %nyx_string** %8841
  %9740 = call i1 @run_build(%ProjectConfig %9738, i1 0, %nyx_string* %9739)
  %9741 = alloca i1
  store i1 %9740, i1* %9741
  %9742 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 0
  %9743 = load %nyx_string*, %nyx_string** %9742
  %9744 = alloca %nyx_string*
  store %nyx_string* %9743, %nyx_string** %9744
  %9745 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 10
  %9746 = load %nyx_string*, %nyx_string** %9745
  %9747 = getelementptr [1 x i8], [1 x i8]* @.str1333, i32 0, i32 0
  %9748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1333.c, i8* %9747, i64 0)
  %9749 = call i1 @nyx_string_equals(%nyx_string* %9746, %nyx_string* %9748)
  %9750 = xor i1 %9749, true
  br i1 %9750, label %then1865, label %else1866
then1865:
  %9751 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 10
  %9752 = load %nyx_string*, %nyx_string** %9751
  store %nyx_string* %9752, %nyx_string** %9744
  br label %merge1867
else1866:
  br label %merge1867
merge1867:
  %9753 = load i1, i1* %9741
  br i1 %9753, label %then1868, label %else1869
then1868:
  %9754 = load %ProjectConfig, %ProjectConfig* %9586
  %9755 = call i64 @write_lockfile(%ProjectConfig %9754)
  %9756 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 6
  %9757 = load %nyx_string*, %nyx_string** %9756
  %9758 = alloca %nyx_string*
  store %nyx_string* %9757, %nyx_string** %9758
  %9759 = load %nyx_string*, %nyx_string** %8841
  %9760 = getelementptr [1 x i8], [1 x i8]* @.str1334, i32 0, i32 0
  %9761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1334.c, i8* %9760, i64 0)
  %9762 = call i1 @nyx_string_equals(%nyx_string* %9759, %nyx_string* %9761)
  %9763 = xor i1 %9762, true
  br i1 %9763, label %then1871, label %else1872
then1871:
  %9764 = load %nyx_string*, %nyx_string** %8841
  store %nyx_string* %9764, %nyx_string** %9758
  br label %merge1873
else1872:
  br label %merge1873
merge1873:
  %9765 = load %nyx_string*, %nyx_string** %9758
  %9766 = getelementptr [12 x i8], [12 x i8]* @.str1335, i32 0, i32 0
  %9767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1335.c, i8* %9766, i64 11)
  %9768 = call i1 @nyx_string_equals(%nyx_string* %9765, %nyx_string* %9767)
  br i1 %9768, label %then1874, label %else1875
then1874:
  %9769 = getelementptr [20 x i8], [20 x i8]* @.str1336, i32 0, i32 0
  %9770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1336.c, i8* %9769, i64 19)
  %9771 = load %nyx_string*, %nyx_string** %9744
  %9772 = call %nyx_string* @nyx_string_concat(%nyx_string* %9770, %nyx_string* %9771)
  %9773 = getelementptr [6 x i8], [6 x i8]* @.str1337, i32 0, i32 0
  %9774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1337.c, i8* %9773, i64 5)
  %9775 = call %nyx_string* @nyx_string_concat(%nyx_string* %9772, %nyx_string* %9774)
  %9776 = alloca %nyx_string*
  store %nyx_string* %9775, %nyx_string** %9776
  %9777 = load %nyx_string*, %nyx_string** %9776
  %9778 = call i8* @nyx_string_to_cstr(%nyx_string* %9777)
  %9779 = call i1 @nyx_file_exists(i8* %9778)
  %9780 = xor i1 %9779, true
  br i1 %9780, label %then1877, label %else1878
then1877:
  %9781 = getelementptr [24 x i8], [24 x i8]* @.str1338, i32 0, i32 0
  %9782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1338.c, i8* %9781, i64 23)
  %9783 = load %nyx_string*, %nyx_string** %9776
  %9784 = call %nyx_string* @nyx_string_concat(%nyx_string* %9782, %nyx_string* %9783)
  %9785 = call i8* @nyx_string_to_cstr(%nyx_string* %9784)
  call void @nyx_print_string(i8* %9785)
  ret i64 1
else1878:
  br label %merge1879
merge1879:
  %9786 = getelementptr [36 x i8], [36 x i8]* @.str1339, i32 0, i32 0
  %9787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1339.c, i8* %9786, i64 35)
  %9788 = call i8* @nyx_string_to_cstr(%nyx_string* %9787)
  %9789 = call i64 @nyx_exec_code(i8* %9788)
  %9790 = icmp ne i64 %9789, 0
  br i1 %9790, label %then1880, label %else1881
then1880:
  %9791 = getelementptr [24 x i8], [24 x i8]* @.str1340, i32 0, i32 0
  %9792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1340.c, i8* %9791, i64 23)
  %9793 = load %nyx_string*, %nyx_string** %9776
  %9794 = call %nyx_string* @nyx_string_concat(%nyx_string* %9792, %nyx_string* %9793)
  %9795 = getelementptr [45 x i8], [45 x i8]* @.str1341, i32 0, i32 0
  %9796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1341.c, i8* %9795, i64 44)
  %9797 = call %nyx_string* @nyx_string_concat(%nyx_string* %9794, %nyx_string* %9796)
  %9798 = call i8* @nyx_string_to_cstr(%nyx_string* %9797)
  call void @nyx_print_string(i8* %9798)
  %9799 = getelementptr [54 x i8], [54 x i8]* @.str1342, i32 0, i32 0
  %9800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1342.c, i8* %9799, i64 53)
  %9801 = load %nyx_string*, %nyx_string** %9776
  %9802 = call %nyx_string* @nyx_string_concat(%nyx_string* %9800, %nyx_string* %9801)
  %9803 = call i8* @nyx_string_to_cstr(%nyx_string* %9802)
  call void @nyx_print_string(i8* %9803)
  ret i64 1
else1881:
  br label %merge1882
merge1882:
  %9804 = getelementptr [10 x i8], [10 x i8]* @.str1343, i32 0, i32 0
  %9805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1343.c, i8* %9804, i64 9)
  %9806 = load %nyx_string*, %nyx_string** %9776
  %9807 = call %nyx_string* @nyx_string_concat(%nyx_string* %9805, %nyx_string* %9806)
  %9808 = alloca %nyx_string*
  store %nyx_string* %9807, %nyx_string** %9808
  %9809 = alloca i64
  store i64 2, i64* %9809
  %9810 = alloca i1
  store i1 0, i1* %9810
  %9811 = getelementptr [2 x i8], [2 x i8]* @.str1344, i32 0, i32 0
  %9812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1344.c, i8* %9811, i64 1)
  %9813 = alloca %nyx_string*
  store %nyx_string* %9812, %nyx_string** %9813
  %9814 = getelementptr [3 x i8], [3 x i8]* @.str1345, i32 0, i32 0
  %9815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1345.c, i8* %9814, i64 2)
  %9816 = alloca %nyx_string*
  store %nyx_string* %9815, %nyx_string** %9816
  %9817 = getelementptr [9 x i8], [9 x i8]* @.str1346, i32 0, i32 0
  %9818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1346.c, i8* %9817, i64 8)
  %9819 = alloca %nyx_string*
  store %nyx_string* %9818, %nyx_string** %9819
  %9820 = getelementptr [7 x i8], [7 x i8]* @.str1347, i32 0, i32 0
  %9821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1347.c, i8* %9820, i64 6)
  %9822 = alloca %nyx_string*
  store %nyx_string* %9821, %nyx_string** %9822
  %9823 = call i8* @llvm.stacksave()
  br label %while_cond1883
while_cond1883:
  %9824 = load i64, i64* %9809
  %9825 = load { i64, i8* }*, { i64, i8* }** %8834
  %9826 = call i64 @nyx_array_length({ i64, i8* }* %9825)
  %9827 = icmp slt i64 %9824, %9826
  br i1 %9827, label %while_body1884, label %while_end1885
while_body1884:
  call void @llvm.stackrestore(i8* %9823)
  %9828 = load { i64, i8* }*, { i64, i8* }** %8834
  %9829 = load i64, i64* %9809
  %9830 = call i64 @nyx_array_get_checked({ i64, i8* }* %9828, i64 %9829, i64 2)
  %9831 = inttoptr i64 %9830 to %nyx_string*
  %9832 = alloca %nyx_string*
  store %nyx_string* %9831, %nyx_string** %9832
  %9833 = load i1, i1* %9810
  br i1 %9833, label %then1886, label %else1887
then1886:
  %9834 = load %nyx_string*, %nyx_string** %9808
  %9835 = load %nyx_string*, %nyx_string** %9813
  %9836 = call %nyx_string* @nyx_string_concat(%nyx_string* %9834, %nyx_string* %9835)
  %9837 = load %nyx_string*, %nyx_string** %9832
  %9838 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %8832, %nyx_string* %9837)
  %9839 = call %nyx_string* @nyx_string_concat(%nyx_string* %9836, %nyx_string* %9838)
  store %nyx_string* %9839, %nyx_string** %9808
  br label %merge1888
else1887:
  %9840 = load %nyx_string*, %nyx_string** %9832
  %9841 = load %nyx_string*, %nyx_string** %9816
  %9842 = call i1 @nyx_string_equals(%nyx_string* %9840, %nyx_string* %9841)
  br i1 %9842, label %then1889, label %else1890
then1889:
  store i1 1, i1* %9810
  br label %merge1891
else1890:
  %9843 = alloca i1
  store i1 true, i1* %9843
  %9844 = load %nyx_string*, %nyx_string** %9832
  %9845 = load %nyx_string*, %nyx_string** %9819
  %9846 = call i1 @nyx_string_equals(%nyx_string* %9844, %nyx_string* %9845)
  br i1 %9846, label %sc_or_end1893, label %sc_or_rhs1892
sc_or_rhs1892:
  %9847 = load %nyx_string*, %nyx_string** %9832
  %9848 = load %nyx_string*, %nyx_string** %9822
  %9849 = call i1 @nyx_string_equals(%nyx_string* %9847, %nyx_string* %9848)
  store i1 %9849, i1* %9843
  br label %sc_or_end1893
sc_or_end1893:
  %9850 = load i1, i1* %9843
  br i1 %9850, label %then1894, label %else1895
then1894:
  %9851 = load i64, i64* %9809
  %9852 = add i64 %9851, 1
  store i64 %9852, i64* %9809
  br label %merge1896
else1895:
  br label %merge1896
merge1896:
  br label %merge1891
merge1891:
  br label %merge1888
merge1888:
  %9853 = load i64, i64* %9809
  %9854 = add i64 %9853, 1
  store i64 %9854, i64* %9809
  br label %while_cond1883
while_end1885:
  %9855 = load %nyx_string*, %nyx_string** %9808
  %9856 = call i8* @nyx_string_to_cstr(%nyx_string* %9855)
  %9857 = call i64 @nyx_exec_code(i8* %9856)
  ret i64 %9857
else1875:
  br label %merge1876
merge1876:
  %9858 = load %nyx_string*, %nyx_string** %9758
  %9859 = getelementptr [1 x i8], [1 x i8]* @.str1348, i32 0, i32 0
  %9860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1348.c, i8* %9859, i64 0)
  %9861 = call i1 @nyx_string_equals(%nyx_string* %9858, %nyx_string* %9860)
  %9862 = xor i1 %9861, true
  br i1 %9862, label %then1897, label %else1898
then1897:
  %9863 = getelementptr [51 x i8], [51 x i8]* @.str1349, i32 0, i32 0
  %9864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1349.c, i8* %9863, i64 50)
  %9865 = load %nyx_string*, %nyx_string** %9758
  %9866 = call %nyx_string* @nyx_string_concat(%nyx_string* %9864, %nyx_string* %9865)
  %9867 = call i8* @nyx_string_to_cstr(%nyx_string* %9866)
  call void @nyx_print_string(i8* %9867)
  %9868 = getelementptr [27 x i8], [27 x i8]* @.str1350, i32 0, i32 0
  %9869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1350.c, i8* %9868, i64 26)
  %9870 = load %nyx_string*, %nyx_string** %9758
  %9871 = call %nyx_string* @nyx_string_concat(%nyx_string* %9869, %nyx_string* %9870)
  %9872 = getelementptr [47 x i8], [47 x i8]* @.str1351, i32 0, i32 0
  %9873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1351.c, i8* %9872, i64 46)
  %9874 = call %nyx_string* @nyx_string_concat(%nyx_string* %9871, %nyx_string* %9873)
  %9875 = call i8* @nyx_string_to_cstr(%nyx_string* %9874)
  call void @nyx_print_string(i8* %9875)
  ret i64 1
else1898:
  br label %merge1899
merge1899:
  %9876 = getelementptr [3 x i8], [3 x i8]* @.str1352, i32 0, i32 0
  %9877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1352.c, i8* %9876, i64 2)
  %9878 = load %nyx_string*, %nyx_string** %9744
  %9879 = call %nyx_string* @nyx_string_concat(%nyx_string* %9877, %nyx_string* %9878)
  %9880 = alloca %nyx_string*
  store %nyx_string* %9879, %nyx_string** %9880
  %9881 = getelementptr %ProjectConfig, %ProjectConfig* %9586, i32 0, i32 10
  %9882 = load %nyx_string*, %nyx_string** %9881
  %9883 = getelementptr [1 x i8], [1 x i8]* @.str1353, i32 0, i32 0
  %9884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1353.c, i8* %9883, i64 0)
  %9885 = call i1 @nyx_string_equals(%nyx_string* %9882, %nyx_string* %9884)
  %9886 = xor i1 %9885, true
  br i1 %9886, label %then1900, label %else1901
then1900:
  %9887 = getelementptr [10 x i8], [10 x i8]* @.str1354, i32 0, i32 0
  %9888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1354.c, i8* %9887, i64 9)
  %9889 = load %nyx_string*, %nyx_string** %9744
  %9890 = call %nyx_string* @nyx_string_concat(%nyx_string* %9888, %nyx_string* %9889)
  store %nyx_string* %9890, %nyx_string** %9880
  br label %merge1902
else1901:
  br label %merge1902
merge1902:
  %9891 = alloca i64
  store i64 2, i64* %9891
  %9892 = alloca i1
  store i1 0, i1* %9892
  %9893 = getelementptr [2 x i8], [2 x i8]* @.str1355, i32 0, i32 0
  %9894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1355.c, i8* %9893, i64 1)
  %9895 = alloca %nyx_string*
  store %nyx_string* %9894, %nyx_string** %9895
  %9896 = getelementptr [3 x i8], [3 x i8]* @.str1356, i32 0, i32 0
  %9897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1356.c, i8* %9896, i64 2)
  %9898 = alloca %nyx_string*
  store %nyx_string* %9897, %nyx_string** %9898
  %9899 = getelementptr [10 x i8], [10 x i8]* @.str1357, i32 0, i32 0
  %9900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1357.c, i8* %9899, i64 9)
  %9901 = alloca %nyx_string*
  store %nyx_string* %9900, %nyx_string** %9901
  %9902 = getelementptr [9 x i8], [9 x i8]* @.str1358, i32 0, i32 0
  %9903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1358.c, i8* %9902, i64 8)
  %9904 = alloca %nyx_string*
  store %nyx_string* %9903, %nyx_string** %9904
  %9905 = getelementptr [7 x i8], [7 x i8]* @.str1359, i32 0, i32 0
  %9906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1359.c, i8* %9905, i64 6)
  %9907 = alloca %nyx_string*
  store %nyx_string* %9906, %nyx_string** %9907
  %9908 = call i8* @llvm.stacksave()
  br label %while_cond1903
while_cond1903:
  %9909 = load i64, i64* %9891
  %9910 = load { i64, i8* }*, { i64, i8* }** %8834
  %9911 = call i64 @nyx_array_length({ i64, i8* }* %9910)
  %9912 = icmp slt i64 %9909, %9911
  br i1 %9912, label %while_body1904, label %while_end1905
while_body1904:
  call void @llvm.stackrestore(i8* %9908)
  %9913 = load { i64, i8* }*, { i64, i8* }** %8834
  %9914 = load i64, i64* %9891
  %9915 = call i64 @nyx_array_get_checked({ i64, i8* }* %9913, i64 %9914, i64 2)
  %9916 = inttoptr i64 %9915 to %nyx_string*
  %9917 = alloca %nyx_string*
  store %nyx_string* %9916, %nyx_string** %9917
  %9918 = load i1, i1* %9892
  br i1 %9918, label %then1906, label %else1907
then1906:
  %9919 = load %nyx_string*, %nyx_string** %9880
  %9920 = load %nyx_string*, %nyx_string** %9895
  %9921 = call %nyx_string* @nyx_string_concat(%nyx_string* %9919, %nyx_string* %9920)
  %9922 = load %nyx_string*, %nyx_string** %9917
  %9923 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %8832, %nyx_string* %9922)
  %9924 = call %nyx_string* @nyx_string_concat(%nyx_string* %9921, %nyx_string* %9923)
  store %nyx_string* %9924, %nyx_string** %9880
  br label %merge1908
else1907:
  %9925 = load %nyx_string*, %nyx_string** %9917
  %9926 = load %nyx_string*, %nyx_string** %9898
  %9927 = call i1 @nyx_string_equals(%nyx_string* %9925, %nyx_string* %9926)
  br i1 %9927, label %then1909, label %else1910
then1909:
  store i1 1, i1* %9892
  br label %merge1911
else1910:
  %9928 = load %nyx_string*, %nyx_string** %9917
  %9929 = load %nyx_string*, %nyx_string** %9901
  %9930 = call i1 @nyx_string_equals(%nyx_string* %9928, %nyx_string* %9929)
  br i1 %9930, label %then1912, label %else1913
then1912:
  %9931 = load i64, i64* %9891
  store i64 %9931, i64* %9891
  br label %merge1914
else1913:
  %9932 = alloca i1
  store i1 true, i1* %9932
  %9933 = load %nyx_string*, %nyx_string** %9917
  %9934 = load %nyx_string*, %nyx_string** %9904
  %9935 = call i1 @nyx_string_equals(%nyx_string* %9933, %nyx_string* %9934)
  br i1 %9935, label %sc_or_end1916, label %sc_or_rhs1915
sc_or_rhs1915:
  %9936 = load %nyx_string*, %nyx_string** %9917
  %9937 = load %nyx_string*, %nyx_string** %9907
  %9938 = call i1 @nyx_string_equals(%nyx_string* %9936, %nyx_string* %9937)
  store i1 %9938, i1* %9932
  br label %sc_or_end1916
sc_or_end1916:
  %9939 = load i1, i1* %9932
  br i1 %9939, label %then1917, label %else1918
then1917:
  %9940 = load i64, i64* %9891
  %9941 = add i64 %9940, 1
  store i64 %9941, i64* %9891
  br label %merge1919
else1918:
  %9942 = load %nyx_string*, %nyx_string** %9880
  %9943 = load %nyx_string*, %nyx_string** %9895
  %9944 = call %nyx_string* @nyx_string_concat(%nyx_string* %9942, %nyx_string* %9943)
  %9945 = load %nyx_string*, %nyx_string** %9917
  %9946 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %8832, %nyx_string* %9945)
  %9947 = call %nyx_string* @nyx_string_concat(%nyx_string* %9944, %nyx_string* %9946)
  store %nyx_string* %9947, %nyx_string** %9880
  br label %merge1919
merge1919:
  br label %merge1914
merge1914:
  br label %merge1911
merge1911:
  br label %merge1908
merge1908:
  %9948 = load i64, i64* %9891
  %9949 = add i64 %9948, 1
  store i64 %9949, i64* %9891
  br label %while_cond1903
while_end1905:
  %9950 = load %nyx_string*, %nyx_string** %9880
  %9951 = call i8* @nyx_string_to_cstr(%nyx_string* %9950)
  %9952 = call i64 @nyx_exec_code(i8* %9951)
  %9953 = alloca i64
  store i64 %9952, i64* %9953
  %9954 = load i64, i64* %9953
  ret i64 %9954
else1869:
  br label %merge1870
merge1870:
  ret i64 1
else1852:
  br label %merge1853
merge1853:
  %9955 = getelementptr [24 x i8], [24 x i8]* @.str1360, i32 0, i32 0
  %9956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1360.c, i8* %9955, i64 23)
  %9957 = load %nyx_string*, %nyx_string** %8837
  %9958 = call %nyx_string* @nyx_string_concat(%nyx_string* %9956, %nyx_string* %9957)
  %9959 = call i8* @nyx_string_to_cstr(%nyx_string* %9958)
  call void @nyx_print_string(i8* %9959)
  %9960 = getelementptr [110 x i8], [110 x i8]* @.str1361, i32 0, i32 0
  %9961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1361.c, i8* %9960, i64 109)
  %9962 = call i8* @nyx_string_to_cstr(%nyx_string* %9961)
  call void @nyx_print_string(i8* %9962)
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
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1362, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1362.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1363, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1363.c, i8* %30, i64 1)
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
  %9963 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %9964 = call %nyx_string* @nyx_string_from_ptr(i8* %9963, i64 64)
  store %nyx_string* %9964, %nyx_string** @std_base64____b64_chars
  %9965 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %9966 = call %nyx_string* @nyx_string_from_ptr(i8* %9965, i64 64)
  store %nyx_string* %9966, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

