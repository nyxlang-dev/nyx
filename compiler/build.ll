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
@.str653 = private unnamed_addr constant [2 x i8] c" \00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [3 x i8] c"{}\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [6 x i8] c"impl \00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [6 x i8] c"impl<\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [7 x i8] c"trait \00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [11 x i8] c"pub trait \00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [14 x i8] c"export trait \00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [1 x i8] c"\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [10 x i8] c"interfaz:\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [1 x i8] c"\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [3 x i8] c"i:\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [2 x i8] c"|\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [12 x i8] c"/prelude.nx\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [2 x i8] c"|\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [2 x i8] c"=\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [1 x i8] c"\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [2 x i8] c",\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [2 x i8] c":\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [2 x i8] c":\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [2 x i8] c"|\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [2 x i8] c"|\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [2 x i8] c"|\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [60 x i8] c"LIB_OBJS=\22\22\0aLIB_MAP=\22\22\0amkdir -p \22$ORIG_DIR/target/nyx-lib\22\0a\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [2 x i8] c"/\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [2 x i8] c"_\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [26 x i8] c"$ORIG_DIR/target/nyx-lib/\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [2 x i8] c"-\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [3 x i8] c".o\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [8 x i8] c".inline\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [30 x i8] c"NYX_LIB_UNIT=1 NYX_LIB_SELF=\22\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [20 x i8] c"\22 NYX_LIB_MODULES=\22\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [39 x i8] c"\22 NYX_SRC=\22$LSRC.nx\22 NYX_SRC_DISPLAY=\22\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [35 x i8] c".nx\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [4 x i8] c"\22 )\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [10 x i8] c"if [ -f \22\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [28 x i8] c"\22 ]; then echo '   reusing \00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [43 x i8] c" (lib, sin cambios)'; LIB_OBJS=\22$LIB_OBJS \00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [22 x i8] c"\22; LIB_MAP=\22$LIB_MAP \00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [2 x i8] c"=\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [12 x i8] c"elif [ -f \22\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [13 x i8] c"\22 ]; then :\0a\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [27 x i8] c"else\0a  echo '   compiling \00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [9 x i8] c" (lib)'\0a\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [35 x i8] c"  rm -f \22$ORIG_DIR/target/nyx-lib/\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [5 x i8] c"-\22*\0a\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [55 x i8] c"  LSRC=\22$(mktemp /tmp/nyx_lib_XXXXXX)\22; cp \22$ORIG_DIR/\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [17 x i8] c".nx\22 \22$LSRC.nx\22\0a\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [10 x i8] c"  lrc=0; \00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [26 x i8] c" > \22$LOG\22 2>&1 || lrc=$?\0a\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [66 x i8] c"  if [ $lrc -eq 3 ]; then grep -F '⚠' \22$LOG\22 >&2 || true; : > \22\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [62 x i8] c"  elif [ $lrc -ne 0 ]; then echo \22error: nyx compile failed (\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [111 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; nyx_pista $lrc; nyx_pista_import \22$LOG\22; rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22; exit 1\0a\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [45 x i8] c"  else\0a    grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [14 x i8] c"    clang -c \00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [38 x i8] c" -Wno-override-module \22$LSRC.ll\22 -o \22\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [45 x i8] c"\22 2> \22$LOG\22 || { echo \22error: clang failed (\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [36 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [25 x i8] c"    LIB_OBJS=\22$LIB_OBJS \00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [8 x i8] c"\22\0a  fi\0a\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [42 x i8] c"  rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22\0afi\0a\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [1 x i8] c"\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [1 x i8] c"\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [24 x i8] c"/.nyx/runtime/runtime.c\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [1 x i8] c"\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [2 x i8] c".\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [1 x i8] c"\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [1 x i8] c"\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [1 x i8] c"\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [86 x i8] c"ORIG_DIR=\22$(pwd)\22\0aLOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0atrap 'rm -f \22$LOG\22' EXIT\0a\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [29 x i8] c"echo \22NYX_LIB_MAP:$LIB_MAP\22\0a\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [15 x i8] c"/tmp/nyx_libs_\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [1 x i8] c"\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [1 x i8] c"\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [1 x i8] c"\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [3 x i8] c" [\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [2 x i8] c"]\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [3 x i8] c" v\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [1 x i8] c"\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [1 x i8] c"\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [1 x i8] c"\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [1 x i8] c"\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [1 x i8] c"\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [1 x i8] c"\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [1 x i8] c"\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [1 x i8] c"\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [2 x i8] c".\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [1 x i8] c"\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [77 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c $RT/net.c $RT/thread.c $RT/regex.c \00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [89 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c $RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [83 x i8] c"$RT/compress.c $RT/random.c $RT/url.c $RT/msgpack.c $RT/websocket.c $RT/persist.c \00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [65 x i8] c"$RT/http2.c $RT/process.c $RT/llama_adapter.c $RT/os/os_posix.c \00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [17 x i8] c"if nyx_rt_auto \22\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [31 x i8] c"; then RT_IN=(\22$RT_AUTO\22); fi\0a\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [1 x i8] c"\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [2 x i8] c"/\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [2 x i8] c"/\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [3 x i8] c"\22$\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [13 x i8] c"{RT_IN[@]}\22 \00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [1 x i8] c"\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [1 x i8] c"\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [18 x i8] c"NYX_LIB_MODULES=\22\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [2 x i8] c",\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [19 x i8] c"\22 ) > \22$LOG\22 2>&1 \00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [93 x i8] c"|| { rc=$?; echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; nyx_pista $rc; exit 1; }\0a\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [34 x i8] c"grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [22 x i8] c" \22$SRC.ll\22 $LIB_OBJS \00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [1 x i8] c"\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [2 x i8] c"#\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [95 x i8] c"ASY=\22$(grep -m1 '^; nyx-asyncify-imports: ' \22$SRC.ll\22 | sed 's/^; nyx-asyncify-imports: //')\22\0a\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [24 x i8] c"if [ -n \22$ASY\22 ]; then\0a\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [10 x i8] c"  WOPT=\22$\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [49 x i8] c"{NYX_WASM_OPT:-$(command -v wasm-opt || true)}\22\0a\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [207 x i8] c"  test -n \22$WOPT\22 || { echo \22error: el programa usa imports que suspenden (await que espera al anfitrion: $ASY) y falta wasm-opt - sudo apt install binaryen, o NYX_WASM_OPT=/ruta/a/wasm-opt\22 >&2; exit 1; }\0a\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [41 x i8] c"  \22$WOPT\22 \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [58 x i8] c".wasm\22 --asyncify --pass-arg=asyncify-imports@\22$ASY\22 -O2 \00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [78 x i8] c"|| { echo \22error: wasm-opt --asyncify fallo:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [1 x i8] c"\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [1 x i8] c"\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [2 x i8] c"/\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [1 x i8] c"\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [3 x i8] c"./\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [1 x i8] c"\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [1 x i8] c"\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [1 x i8] c"\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [1 x i8] c"/"
@.str916 = private unnamed_addr constant [2 x i8] c"-\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [1 x i8] c"\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [1 x i8] c"\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [1 x i8] c"\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [7 x i8] c"0.34.0\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [73 x i8] c"> Completa las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [80 x i8] c"FRICTION.md ya existe con contenido — avísale al usuario para que lo revise.\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [78 x i8] c"creado FRICTION.md — completa las secciones (tu asistente IA puede hacerlo)\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [72 x i8] c"y AVÍSALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [1 x i8] c"\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [66 x i8] c"error: el reporte parece vacío — completa la plantilla primero\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [1 x i8] c"\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [1 x i8] c"\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [1 x i8] c"\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [17 x i8] c"nyx_rt_auto() {\0a\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [41 x i8] c"  [ -n \22$NYX_NO_RT_CACHE\22 ] && return 1\0a\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [24 x i8] c"  local fl=\22$1\22; shift\0a\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [92 x i8] c"  local base=\22$XDG_CACHE_HOME\22; [ -n \22$base\22 ] || base=\22$HOME/.cache\22; base=\22$base/nyx/rt\22\0a\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [177 x i8] c"  local key; key=$( { printf '%s\5cn' \22$fl\22 \22$*\22; clang --version 2>/dev/null | head -1; cat \22$@\22 runtime/*.h runtime/os/*.h 2>/dev/null; } | sha256sum | cut -c1-16) || return 1\0a\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [35 x i8] c"  local a=\22$base/$key/libnyxrt.a\22\0a\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [83 x i8] c"  if [ -f \22$a\22 ]; then touch \22$base/$key\22 2>/dev/null; RT_AUTO=\22$a\22; return 0; fi\0a\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [49 x i8] c"  mkdir -p \22$base/$key\22 2>/dev/null || return 1\0a\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [89 x i8] c"  find \22$base\22 -mindepth 1 -maxdepth 1 -type d -mtime +14 -exec rm -rf {} + 2>/dev/null\0a\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [68 x i8] c"  local tmp; tmp=$(mktemp -d \22$base/$key/.tmp.XXXXXX\22) || return 1\0a\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [15 x i8] c"  local f n=0\0a\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [114 x i8] c"  for f in \22$@\22; do n=$((n+1)); clang $fl -Wno-deprecated-declarations -c \22$f\22 -o \22$tmp/$n.o\22 2>/dev/null & done\0a\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [8 x i8] c"  wait\0a\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [138 x i8] c"  if [ \22$(ls \22$tmp\22 | grep -c '\5c.o$')\22 = \22$n\22 ] && ar rcs \22$tmp/libnyxrt.a\22 \22$tmp\22/*.o 2>/dev/null && mv -f \22$tmp/libnyxrt.a\22 \22$a\22; then\0a\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [43 x i8] c"    rm -rf \22$tmp\22; RT_AUTO=\22$a\22; return 0\0a\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [6 x i8] c"  fi\0a\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [27 x i8] c"  rm -rf \22$tmp\22; return 1\0a\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [1 x i8] c"\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [1 x i8] c"\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [1 x i8] c"\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [4 x i8] c"std\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [2 x i8] c".\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [1 x i8] c"\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [1 x i8] c"\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [5 x i8] c"http\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [4 x i8] c"web\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [8 x i8] c"browser\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [4 x i8] c"dom\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [5 x i8] c"vdom\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [3 x i8] c"db\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [5 x i8] c"json\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [8 x i8] c"barcode\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [4 x i8] c"pdf\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [5 x i8] c"file\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [3 x i8] c"io\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [5 x i8] c"path\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [4 x i8] c"net\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [4 x i8] c"url\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [5 x i8] c"smtp\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [6 x i8] c"async\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [7 x i8] c"random\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [5 x i8] c"time\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [7 x i8] c"string\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [4 x i8] c"set\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [4 x i8] c"box\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [5 x i8] c"args\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [4 x i8] c"log\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [1 x i8] c"\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [1 x i8] c"("
@.str1074 = private unnamed_addr constant [1 x i8] c")"
@.str1075 = private unnamed_addr constant [2 x i8] c"/\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [1 x i8] c"\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [1 x i8] c"\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [4 x i8] c"///\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [1 x i8] c"\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [2 x i8] c" \00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [14 x i8] c"pub async fn \00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [17 x i8] c"export async fn \00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [2 x i8] c"`\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [1 x i8] c"("
@.str1091 = private unnamed_addr constant [1 x i8] c"{"
@.str1092 = private unnamed_addr constant [1 x i8] c"\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [1 x i8] c"\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [1 x i8] c"\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [2 x i8] c"s\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [2 x i8] c")\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [1 x i8] c"\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [1 x i8] c"\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [1 x i8] c"\00"
@.str1117.c = internal global %nyx_string* null
@.str1118 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str1118.c = internal global %nyx_string* null
@.str1119 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str1119.c = internal global %nyx_string* null
@.str1120 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str1134.c = internal global %nyx_string* null
@.str1135 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str1135.c = internal global %nyx_string* null
@.str1136 = private unnamed_addr constant [15 x i8] c"NYX_CAPS_STAMP\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [1 x i8] c"\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [18 x i8] c"<!-- nyx-stdlib: \00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [1 x i8] c"\00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [4 x i8] c"## \00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [1 x i8] c"\00"
@.str1149.c = internal global %nyx_string* null
@.str1150 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str1150.c = internal global %nyx_string* null
@.str1151 = private unnamed_addr constant [3 x i8] c" (\00"
@.str1151.c = internal global %nyx_string* null
@.str1152 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str1152.c = internal global %nyx_string* null
@.str1153 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1153.c = internal global %nyx_string* null
@.str1154 = private unnamed_addr constant [1 x i8] c"\00"
@.str1154.c = internal global %nyx_string* null
@.str1155 = private unnamed_addr constant [1 x i8] c"\00"
@.str1155.c = internal global %nyx_string* null
@.str1156 = private unnamed_addr constant [1 x i8] c"\00"
@.str1156.c = internal global %nyx_string* null
@.str1157 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1157.c = internal global %nyx_string* null
@.str1158 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1158.c = internal global %nyx_string* null
@.str1159 = private unnamed_addr constant [5 x i8] c"test\00"
@.str1159.c = internal global %nyx_string* null
@.str1160 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1160.c = internal global %nyx_string* null
@.str1161 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1161.c = internal global %nyx_string* null
@.str1162 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1162.c = internal global %nyx_string* null
@.str1163 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1163.c = internal global %nyx_string* null
@.str1164 = private unnamed_addr constant [1 x i8] c"\00"
@.str1164.c = internal global %nyx_string* null
@.str1165 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str1165.c = internal global %nyx_string* null
@.str1166 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1166.c = internal global %nyx_string* null
@.str1167 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1167.c = internal global %nyx_string* null
@.str1168 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1168.c = internal global %nyx_string* null
@.str1169 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str1169.c = internal global %nyx_string* null
@.str1170 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str1170.c = internal global %nyx_string* null
@.str1171 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str1171.c = internal global %nyx_string* null
@.str1172 = private unnamed_addr constant [1 x i8] c"-"
@.str1173 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str1173.c = internal global %nyx_string* null
@.str1174 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str1174.c = internal global %nyx_string* null
@.str1175 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str1175.c = internal global %nyx_string* null
@.str1176 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str1176.c = internal global %nyx_string* null
@.str1177 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str1177.c = internal global %nyx_string* null
@.str1178 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str1178.c = internal global %nyx_string* null
@.str1179 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str1179.c = internal global %nyx_string* null
@.str1180 = private unnamed_addr constant [1 x i8] c"\00"
@.str1180.c = internal global %nyx_string* null
@.str1181 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str1181.c = internal global %nyx_string* null
@.str1182 = private unnamed_addr constant [1 x i8] c"\00"
@.str1182.c = internal global %nyx_string* null
@.str1183 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1183.c = internal global %nyx_string* null
@.str1184 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str1184.c = internal global %nyx_string* null
@.str1185 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str1185.c = internal global %nyx_string* null
@.str1186 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str1186.c = internal global %nyx_string* null
@.str1187 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1187.c = internal global %nyx_string* null
@.str1188 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1188.c = internal global %nyx_string* null
@.str1189 = private unnamed_addr constant [1 x i8] c"\00"
@.str1189.c = internal global %nyx_string* null
@.str1190 = private unnamed_addr constant [1 x i8] c"\00"
@.str1190.c = internal global %nyx_string* null
@.str1191 = private unnamed_addr constant [1 x i8] c"\00"
@.str1191.c = internal global %nyx_string* null
@.str1192 = private unnamed_addr constant [1 x i8] c"\00"
@.str1192.c = internal global %nyx_string* null
@.str1193 = private unnamed_addr constant [1 x i8] c"\00"
@.str1193.c = internal global %nyx_string* null
@.str1194 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str1194.c = internal global %nyx_string* null
@.str1195 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str1195.c = internal global %nyx_string* null
@.str1196 = private unnamed_addr constant [1 x i8] c"\00"
@.str1196.c = internal global %nyx_string* null
@.str1197 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1197.c = internal global %nyx_string* null
@.str1198 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str1198.c = internal global %nyx_string* null
@.str1199 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str1199.c = internal global %nyx_string* null
@.str1200 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str1200.c = internal global %nyx_string* null
@.str1201 = private unnamed_addr constant [1 x i8] c"\00"
@.str1201.c = internal global %nyx_string* null
@.str1202 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str1202.c = internal global %nyx_string* null
@.str1203 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1203.c = internal global %nyx_string* null
@.str1204 = private unnamed_addr constant [1 x i8] c"\00"
@.str1204.c = internal global %nyx_string* null
@.str1205 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1205.c = internal global %nyx_string* null
@.str1206 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str1206.c = internal global %nyx_string* null
@.str1207 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1207.c = internal global %nyx_string* null
@.str1208 = private unnamed_addr constant [1 x i8] c"\00"
@.str1208.c = internal global %nyx_string* null
@.str1209 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str1209.c = internal global %nyx_string* null
@.str1210 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1210.c = internal global %nyx_string* null
@.str1211 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1211.c = internal global %nyx_string* null
@.str1212 = private unnamed_addr constant [1 x i8] c"\00"
@.str1212.c = internal global %nyx_string* null
@.str1213 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1213.c = internal global %nyx_string* null
@.str1214 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1214.c = internal global %nyx_string* null
@.str1215 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1215.c = internal global %nyx_string* null
@.str1216 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str1216.c = internal global %nyx_string* null
@.str1217 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str1217.c = internal global %nyx_string* null
@.str1218 = private unnamed_addr constant [1 x i8] c"\00"
@.str1218.c = internal global %nyx_string* null
@.str1219 = private unnamed_addr constant [2 x i8] c".\00"
@.str1219.c = internal global %nyx_string* null
@.str1220 = private unnamed_addr constant [1 x i8] c"\00"
@.str1220.c = internal global %nyx_string* null
@.str1221 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str1221.c = internal global %nyx_string* null
@.str1222 = private unnamed_addr constant [1 x i8] c"\00"
@.str1222.c = internal global %nyx_string* null
@.str1223 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1223.c = internal global %nyx_string* null
@.str1224 = private unnamed_addr constant [2 x i8] c".\00"
@.str1224.c = internal global %nyx_string* null
@.str1225 = private unnamed_addr constant [2 x i8] c".\00"
@.str1225.c = internal global %nyx_string* null
@.str1226 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str1226.c = internal global %nyx_string* null
@.str1227 = private unnamed_addr constant [2 x i8] c".\00"
@.str1227.c = internal global %nyx_string* null
@.str1228 = private unnamed_addr constant [2 x i8] c".\00"
@.str1228.c = internal global %nyx_string* null
@.str1229 = private unnamed_addr constant [1 x i8] c"\00"
@.str1229.c = internal global %nyx_string* null
@.str1230 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str1230.c = internal global %nyx_string* null
@.str1231 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str1231.c = internal global %nyx_string* null
@.str1232 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str1232.c = internal global %nyx_string* null
@.str1233 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str1233.c = internal global %nyx_string* null
@.str1234 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str1234.c = internal global %nyx_string* null
@.str1235 = private unnamed_addr constant [4 x i8] c"add\00"
@.str1235.c = internal global %nyx_string* null
@.str1236 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str1236.c = internal global %nyx_string* null
@.str1237 = private unnamed_addr constant [1 x i8] c"\00"
@.str1237.c = internal global %nyx_string* null
@.str1238 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str1238.c = internal global %nyx_string* null
@.str1239 = private unnamed_addr constant [8 x i8] c"project\00"
@.str1239.c = internal global %nyx_string* null
@.str1240 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str1240.c = internal global %nyx_string* null
@.str1241 = private unnamed_addr constant [1 x i8] c"\00"
@.str1241.c = internal global %nyx_string* null
@.str1242 = private unnamed_addr constant [1 x i8] c"\00"
@.str1242.c = internal global %nyx_string* null
@.str1243 = private unnamed_addr constant [1 x i8] c"\00"
@.str1243.c = internal global %nyx_string* null
@.str1244 = private unnamed_addr constant [1 x i8] c"\00"
@.str1244.c = internal global %nyx_string* null
@.str1245 = private unnamed_addr constant [1 x i8] c"\00"
@.str1245.c = internal global %nyx_string* null
@.str1246 = private unnamed_addr constant [1 x i8] c"\00"
@.str1246.c = internal global %nyx_string* null
@.str1247 = private unnamed_addr constant [7 x i8] c"report\00"
@.str1247.c = internal global %nyx_string* null
@.str1248 = private unnamed_addr constant [1 x i8] c"\00"
@.str1248.c = internal global %nyx_string* null
@.str1249 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str1249.c = internal global %nyx_string* null
@.str1250 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1250.c = internal global %nyx_string* null
@.str1251 = private unnamed_addr constant [13 x i8] c"agents-merge\00"
@.str1251.c = internal global %nyx_string* null
@.str1252 = private unnamed_addr constant [68 x i8] c"uso: nyx_build agents-merge <AGENTS.md> <plantilla> <lang> <salida>\00"
@.str1252.c = internal global %nyx_string* null
@.str1253 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str1253.c = internal global %nyx_string* null
@.str1254 = private unnamed_addr constant [1 x i8] c"\00"
@.str1254.c = internal global %nyx_string* null
@.str1255 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1255.c = internal global %nyx_string* null
@.str1256 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1256.c = internal global %nyx_string* null
@.str1257 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str1257.c = internal global %nyx_string* null
@.str1258 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str1258.c = internal global %nyx_string* null
@.str1259 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1259.c = internal global %nyx_string* null
@.str1260 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1260.c = internal global %nyx_string* null
@.str1261 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1261.c = internal global %nyx_string* null
@.str1262 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1262.c = internal global %nyx_string* null
@.str1263 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1263.c = internal global %nyx_string* null
@.str1264 = private unnamed_addr constant [1 x i8] c"\00"
@.str1264.c = internal global %nyx_string* null
@.str1265 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1265.c = internal global %nyx_string* null
@.str1266 = private unnamed_addr constant [1 x i8] c"\00"
@.str1266.c = internal global %nyx_string* null
@.str1267 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1267.c = internal global %nyx_string* null
@.str1268 = private unnamed_addr constant [1 x i8] c"\00"
@.str1268.c = internal global %nyx_string* null
@.str1269 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1269.c = internal global %nyx_string* null
@.str1270 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1270.c = internal global %nyx_string* null
@.str1271 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1271.c = internal global %nyx_string* null
@.str1272 = private unnamed_addr constant [1 x i8] c"\00"
@.str1272.c = internal global %nyx_string* null
@.str1273 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1273.c = internal global %nyx_string* null
@.str1274 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1274.c = internal global %nyx_string* null
@.str1275 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1275.c = internal global %nyx_string* null
@.str1276 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1276.c = internal global %nyx_string* null
@.str1277 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1277.c = internal global %nyx_string* null
@.str1278 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1278.c = internal global %nyx_string* null
@.str1279 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1279.c = internal global %nyx_string* null
@.str1280 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1280.c = internal global %nyx_string* null
@.str1281 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1281.c = internal global %nyx_string* null
@.str1282 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1282.c = internal global %nyx_string* null
@.str1283 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1283.c = internal global %nyx_string* null
@.str1284 = private unnamed_addr constant [1 x i8] c"\00"
@.str1284.c = internal global %nyx_string* null
@.str1285 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1285.c = internal global %nyx_string* null
@.str1286 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1286.c = internal global %nyx_string* null
@.str1287 = private unnamed_addr constant [1 x i8] c"\00"
@.str1287.c = internal global %nyx_string* null
@.str1288 = private unnamed_addr constant [1 x i8] c"\00"
@.str1288.c = internal global %nyx_string* null
@.str1289 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1289.c = internal global %nyx_string* null
@.str1290 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1290.c = internal global %nyx_string* null
@.str1291 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1291.c = internal global %nyx_string* null
@.str1292 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1292.c = internal global %nyx_string* null
@.str1293 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1293.c = internal global %nyx_string* null
@.str1294 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1294.c = internal global %nyx_string* null
@.str1295 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1295.c = internal global %nyx_string* null
@.str1296 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1296.c = internal global %nyx_string* null
@.str1297 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1297.c = internal global %nyx_string* null
@.str1298 = private unnamed_addr constant [2 x i8] c" \00"
@.str1298.c = internal global %nyx_string* null
@.str1299 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1299.c = internal global %nyx_string* null
@.str1300 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1300.c = internal global %nyx_string* null
@.str1301 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1301.c = internal global %nyx_string* null
@.str1302 = private unnamed_addr constant [1 x i8] c"\00"
@.str1302.c = internal global %nyx_string* null
@.str1303 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1303.c = internal global %nyx_string* null
@.str1304 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1304.c = internal global %nyx_string* null
@.str1305 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1305.c = internal global %nyx_string* null
@.str1306 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1306.c = internal global %nyx_string* null
@.str1307 = private unnamed_addr constant [1 x i8] c"\00"
@.str1307.c = internal global %nyx_string* null
@.str1308 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1308.c = internal global %nyx_string* null
@.str1309 = private unnamed_addr constant [2 x i8] c" \00"
@.str1309.c = internal global %nyx_string* null
@.str1310 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1310.c = internal global %nyx_string* null
@.str1311 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1311.c = internal global %nyx_string* null
@.str1312 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1312.c = internal global %nyx_string* null
@.str1313 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1313.c = internal global %nyx_string* null
@.str1314 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1314.c = internal global %nyx_string* null
@.str1315 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1315.c = internal global %nyx_string* null
@.str1316 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1316.c = internal global %nyx_string* null
@.str1317 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1317.c = internal global %nyx_string* null
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

define internal %nyx_string* @agents_ini(
) {
  %1969 = getelementptr [20 x i8], [20 x i8]* @.str200, i32 0, i32 0
  %1970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1969, i64 19)
  ret %nyx_string* %1970
}

define internal %nyx_string* @agents_fin(
) {
  %1971 = getelementptr [17 x i8], [17 x i8]* @.str201, i32 0, i32 0
  %1972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1971, i64 16)
  ret %nyx_string* %1972
}

define internal %nyx_string* @agents_cabecera(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1973 = load %nyx_string*, %nyx_string** %lang.ptr
  %1974 = getelementptr [3 x i8], [3 x i8]* @.str202, i32 0, i32 0
  %1975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1974, i64 2)
  %1976 = call i1 @nyx_string_equals(%nyx_string* %1973, %nyx_string* %1975)
  br i1 %1976, label %then442, label %else443
then442:
  %1977 = getelementptr [183 x i8], [183 x i8]* @.str203, i32 0, i32 0
  %1978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1977, i64 182)
  ret %nyx_string* %1978
else443:
  br label %merge444
merge444:
  %1979 = getelementptr [173 x i8], [173 x i8]* @.str204, i32 0, i32 0
  %1980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1979, i64 172)
  ret %nyx_string* %1980
}

define internal %nyx_string* @agents_bloque(
%nyx_string* %template.param) {
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %1981 = load %nyx_string*, %nyx_string** %template.ptr
  %1982 = alloca %nyx_string*
  store %nyx_string* %1981, %nyx_string** %1982
  %1983 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %1984 = load %nyx_string*, %nyx_string** %1982
  %1985 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1985, i64 1)
  %1987 = call i1 @nyx_string_ends_with(%nyx_string* %1984, %nyx_string* %1986)
  br i1 %1987, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %1983)
  %1988 = load %nyx_string*, %nyx_string** %1982
  %1989 = load %nyx_string*, %nyx_string** %1982
  %1990 = call i64 @nyx_string_byte_length(%nyx_string* %1989)
  %1991 = sub i64 %1990, 1
  %1992 = call %nyx_string* @nyx_string_substring(%nyx_string* %1988, i64 0, i64 %1991)
  store %nyx_string* %1992, %nyx_string** %1982
  br label %while_cond445
while_end447:
  %1993 = call %nyx_string* @agents_ini()
  %1994 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %1995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1994, i64 1)
  %1996 = call %nyx_string* @nyx_string_concat(%nyx_string* %1993, %nyx_string* %1995)
  %1997 = load %nyx_string*, %nyx_string** %1982
  %1998 = call %nyx_string* @nyx_string_concat(%nyx_string* %1996, %nyx_string* %1997)
  %1999 = getelementptr [2 x i8], [2 x i8]* @.str207, i32 0, i32 0
  %2000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1999, i64 1)
  %2001 = call %nyx_string* @nyx_string_concat(%nyx_string* %1998, %nyx_string* %2000)
  %2002 = call %nyx_string* @agents_fin()
  %2003 = call %nyx_string* @nyx_string_concat(%nyx_string* %2001, %nyx_string* %2002)
  %2004 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %2005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2004, i64 1)
  %2006 = call %nyx_string* @nyx_string_concat(%nyx_string* %2003, %nyx_string* %2005)
  ret %nyx_string* %2006
}

define internal %nyx_string* @agents_seed(
%nyx_string* %template.param, %nyx_string* %lang.param) {
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2007 = load %nyx_string*, %nyx_string** %lang.ptr
  %2008 = call %nyx_string* @agents_cabecera(%nyx_string* %2007)
  %2009 = getelementptr [3 x i8], [3 x i8]* @.str209, i32 0, i32 0
  %2010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2009, i64 2)
  %2011 = call %nyx_string* @nyx_string_concat(%nyx_string* %2008, %nyx_string* %2010)
  %2012 = load %nyx_string*, %nyx_string** %template.ptr
  %2013 = call %nyx_string* @agents_bloque(%nyx_string* %2012)
  %2014 = call %nyx_string* @nyx_string_concat(%nyx_string* %2011, %nyx_string* %2013)
  %2015 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2015, i64 1)
  %2017 = call %nyx_string* @nyx_string_concat(%nyx_string* %2014, %nyx_string* %2016)
  %2018 = load %nyx_string*, %nyx_string** %lang.ptr
  %2019 = call %nyx_string* @seed_stamp(%nyx_string* %2018)
  %2020 = call %nyx_string* @nyx_string_concat(%nyx_string* %2017, %nyx_string* %2019)
  ret %nyx_string* %2020
}

define internal i1 @agents_es_sello(
%nyx_string* %linea.param) {
  %linea.ptr = alloca %nyx_string*
  store %nyx_string* %linea.param, %nyx_string** %linea.ptr
  %2021 = load %nyx_string*, %nyx_string** %linea.ptr
  %2022 = call %nyx_string* @nyx_string_trim(%nyx_string* %2021)
  %2023 = getelementptr [18 x i8], [18 x i8]* @.str211, i32 0, i32 0
  %2024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2023, i64 17)
  %2025 = call i1 @nyx_string_starts_with(%nyx_string* %2022, %nyx_string* %2024)
  ret i1 %2025
}

define internal i64 @agents_linea_idx(
{ i64, i8* }* %lineas.param, %nyx_string* %marca.param, i64 %desde.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %marca.ptr = alloca %nyx_string*
  store %nyx_string* %marca.param, %nyx_string** %marca.ptr
  %desde.ptr = alloca i64
  store i64 %desde.param, i64* %desde.ptr
  %2026 = load i64, i64* %desde.ptr
  %2027 = alloca i64
  store i64 %2026, i64* %2027
  %2028 = call i8* @llvm.stacksave()
  br label %while_cond448
while_cond448:
  %2029 = load i64, i64* %2027
  %2030 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2031 = call i64 @nyx_array_length({ i64, i8* }* %2030)
  %2032 = icmp slt i64 %2029, %2031
  br i1 %2032, label %while_body449, label %while_end450
while_body449:
  call void @llvm.stackrestore(i8* %2028)
  %2033 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2034 = load i64, i64* %2027
  %2035 = call i64 @nyx_array_get_checked({ i64, i8* }* %2033, i64 %2034, i64 2)
  %2036 = inttoptr i64 %2035 to %nyx_string*
  %2037 = alloca %nyx_string*
  store %nyx_string* %2036, %nyx_string** %2037
  %2038 = load %nyx_string*, %nyx_string** %2037
  %2039 = call %nyx_string* @nyx_string_trim(%nyx_string* %2038)
  %2040 = load %nyx_string*, %nyx_string** %marca.ptr
  %2041 = call i1 @nyx_string_equals(%nyx_string* %2039, %nyx_string* %2040)
  br i1 %2041, label %then451, label %else452
then451:
  %2042 = load i64, i64* %2027
  ret i64 %2042
else452:
  br label %merge453
merge453:
  %2043 = load i64, i64* %2027
  %2044 = add i64 %2043, 1
  store i64 %2044, i64* %2027
  br label %while_cond448
while_end450:
  %2045 = sub i64 0, 1
  ret i64 %2045
}

define internal %nyx_string* @agents_unir(
{ i64, i8* }* %lineas.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %2046 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2047 = call i64 @nyx_array_length({ i64, i8* }* %2046)
  %2048 = alloca i64
  store i64 %2047, i64* %2048
  %2049 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %2050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2049, i64 0)
  %2051 = alloca %nyx_string*
  store %nyx_string* %2050, %nyx_string** %2051
  %2052 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %2053 = load i64, i64* %2048
  %2054 = icmp sgt i64 %2053, 0
  br i1 %2054, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %2052)
  %2055 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2056 = load i64, i64* %2048
  %2057 = sub i64 %2056, 1
  %2058 = call i64 @nyx_array_get_checked({ i64, i8* }* %2055, i64 %2057, i64 2)
  %2059 = inttoptr i64 %2058 to %nyx_string*
  %2060 = alloca %nyx_string*
  store %nyx_string* %2059, %nyx_string** %2060
  %2061 = load %nyx_string*, %nyx_string** %2060
  %2062 = call %nyx_string* @nyx_string_trim(%nyx_string* %2061)
  %2063 = load %nyx_string*, %nyx_string** %2051
  %2064 = call i1 @nyx_string_equals(%nyx_string* %2062, %nyx_string* %2063)
  %2065 = xor i1 %2064, true
  br i1 %2065, label %then457, label %else458
then457:
  br label %while_end456
else458:
  br label %merge459
merge459:
  %2066 = load i64, i64* %2048
  %2067 = sub i64 %2066, 1
  store i64 %2067, i64* %2048
  br label %while_cond454
while_end456:
  %2068 = call { i64, i8* }* @nyx_array_new_ptr()
  %2069 = alloca { i64, i8* }*
  store { i64, i8* }* %2068, { i64, i8* }** %2069
  %2070 = alloca i64
  store i64 0, i64* %2070
  %2071 = call i8* @llvm.stacksave()
  br label %while_cond460
while_cond460:
  %2072 = load i64, i64* %2070
  %2073 = load i64, i64* %2048
  %2074 = icmp slt i64 %2072, %2073
  br i1 %2074, label %while_body461, label %while_end462
while_body461:
  call void @llvm.stackrestore(i8* %2071)
  %2075 = load { i64, i8* }*, { i64, i8* }** %2069
  %2076 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2077 = load i64, i64* %2070
  %2078 = call i64 @nyx_array_get({ i64, i8* }* %2076, i64 %2077)
  %2079 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2080 = load i64, i64* %2070
  %2081 = call i64 @nyx_array_get_tag({ i64, i8* }* %2079, i64 %2080)
  call void @nyx_array_push_tagged({ i64, i8* }* %2075, i64 %2078, i64 %2081)
  %2082 = load i64, i64* %2070
  %2083 = add i64 %2082, 1
  store i64 %2083, i64* %2070
  br label %while_cond460
while_end462:
  %2084 = load { i64, i8* }*, { i64, i8* }** %2069
  %2085 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2085, i64 1)
  %2087 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2084, %nyx_string* %2086)
  ret %nyx_string* %2087
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
  %2088 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %2089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2088, i64 0)
  %2090 = alloca %nyx_string*
  store %nyx_string* %2089, %nyx_string** %2090
  %2091 = alloca i64
  store i64 0, i64* %2091
  %2092 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2092, i64 1)
  %2094 = alloca %nyx_string*
  store %nyx_string* %2093, %nyx_string** %2094
  %2095 = call i8* @llvm.stacksave()
  br label %while_cond463
while_cond463:
  %2096 = load i64, i64* %2091
  %2097 = load i64, i64* %ini.ptr
  %2098 = icmp slt i64 %2096, %2097
  br i1 %2098, label %while_body464, label %while_end465
while_body464:
  call void @llvm.stackrestore(i8* %2095)
  %2099 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2100 = load i64, i64* %2091
  %2101 = call i64 @nyx_array_get_checked({ i64, i8* }* %2099, i64 %2100, i64 2)
  %2102 = inttoptr i64 %2101 to %nyx_string*
  %2103 = alloca %nyx_string*
  store %nyx_string* %2102, %nyx_string** %2103
  %2104 = load %nyx_string*, %nyx_string** %2090
  %2105 = load %nyx_string*, %nyx_string** %2103
  %2106 = call %nyx_string* @nyx_string_concat(%nyx_string* %2104, %nyx_string* %2105)
  %2107 = load %nyx_string*, %nyx_string** %2094
  %2108 = call %nyx_string* @nyx_string_concat(%nyx_string* %2106, %nyx_string* %2107)
  store %nyx_string* %2108, %nyx_string** %2090
  %2109 = load i64, i64* %2091
  %2110 = add i64 %2109, 1
  store i64 %2110, i64* %2091
  br label %while_cond463
while_end465:
  %2111 = call { i64, i8* }* @nyx_array_new_ptr()
  %2112 = alloca { i64, i8* }*
  store { i64, i8* }* %2111, { i64, i8* }** %2112
  %2113 = load i64, i64* %fin.ptr
  %2114 = add i64 %2113, 1
  %2115 = alloca i64
  store i64 %2114, i64* %2115
  %2116 = call i8* @llvm.stacksave()
  br label %while_cond466
while_cond466:
  %2117 = load i64, i64* %2115
  %2118 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2119 = call i64 @nyx_array_length({ i64, i8* }* %2118)
  %2120 = icmp slt i64 %2117, %2119
  br i1 %2120, label %while_body467, label %while_end468
while_body467:
  call void @llvm.stackrestore(i8* %2116)
  %2121 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2122 = load i64, i64* %2115
  %2123 = call i64 @nyx_array_get_checked({ i64, i8* }* %2121, i64 %2122, i64 2)
  %2124 = inttoptr i64 %2123 to %nyx_string*
  %2125 = alloca %nyx_string*
  store %nyx_string* %2124, %nyx_string** %2125
  %2126 = load %nyx_string*, %nyx_string** %2125
  %2127 = call i1 @agents_es_sello(%nyx_string* %2126)
  %2128 = icmp eq i1 %2127, 0
  br i1 %2128, label %then469, label %else470
then469:
  %2129 = load { i64, i8* }*, { i64, i8* }** %2112
  %2130 = load %nyx_string*, %nyx_string** %2125
  %2131 = ptrtoint %nyx_string* %2130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2129, i64 %2131, i64 2)
  br label %merge471
else470:
  br label %merge471
merge471:
  %2132 = load i64, i64* %2115
  %2133 = add i64 %2132, 1
  store i64 %2133, i64* %2115
  br label %while_cond466
while_end468:
  %2134 = load { i64, i8* }*, { i64, i8* }** %2112
  %2135 = call %nyx_string* @agents_unir({ i64, i8* }* %2134)
  %2136 = alloca %nyx_string*
  store %nyx_string* %2135, %nyx_string** %2136
  %2137 = load %nyx_string*, %nyx_string** %2136
  %2138 = call %nyx_string* @nyx_string_trim(%nyx_string* %2137)
  %2139 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %2140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2139, i64 0)
  %2141 = call i1 @nyx_string_equals(%nyx_string* %2138, %nyx_string* %2140)
  %2142 = xor i1 %2141, true
  br i1 %2142, label %then472, label %else473
then472:
  %2143 = load %nyx_string*, %nyx_string** %2136
  %2144 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2144, i64 1)
  %2146 = call %nyx_string* @nyx_string_concat(%nyx_string* %2143, %nyx_string* %2145)
  store %nyx_string* %2146, %nyx_string** %2136
  br label %merge474
else473:
  br label %merge474
merge474:
  %2147 = load %nyx_string*, %nyx_string** %2090
  %2148 = load %nyx_string*, %nyx_string** %template.ptr
  %2149 = call %nyx_string* @agents_bloque(%nyx_string* %2148)
  %2150 = call %nyx_string* @nyx_string_concat(%nyx_string* %2147, %nyx_string* %2149)
  %2151 = load %nyx_string*, %nyx_string** %2136
  %2152 = call %nyx_string* @nyx_string_concat(%nyx_string* %2150, %nyx_string* %2151)
  %2153 = getelementptr [2 x i8], [2 x i8]* @.str218, i32 0, i32 0
  %2154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2153, i64 1)
  %2155 = call %nyx_string* @nyx_string_concat(%nyx_string* %2152, %nyx_string* %2154)
  %2156 = load %nyx_string*, %nyx_string** %lang.ptr
  %2157 = call %nyx_string* @seed_stamp(%nyx_string* %2156)
  %2158 = call %nyx_string* @nyx_string_concat(%nyx_string* %2155, %nyx_string* %2157)
  ret %nyx_string* %2158
}

define internal { i64, i8* }* @agents_secciones(
{ i64, i8* }* %lineas.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %2159 = call { i64, i8* }* @nyx_array_new_ptr()
  %2160 = alloca { i64, i8* }*
  store { i64, i8* }* %2159, { i64, i8* }** %2160
  %2161 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2162 = ptrtoint %AgentsSeccion* %2161 to i64
  %2163 = call i8* @GC_malloc(i64 %2162)
  %2164 = bitcast i8* %2163 to %AgentsSeccion*
  %2165 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %2166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2165, i64 0)
  %2167 = getelementptr %AgentsSeccion, %AgentsSeccion* %2164, i32 0, i32 0
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = call { i64, i8* }* @nyx_array_new_ptr()
  %2169 = getelementptr %AgentsSeccion, %AgentsSeccion* %2164, i32 0, i32 1
  store { i64, i8* }* %2168, { i64, i8* }** %2169
  %2170 = load %AgentsSeccion, %AgentsSeccion* %2164
  %2171 = alloca %AgentsSeccion
  store %AgentsSeccion %2170, %AgentsSeccion* %2171
  %2172 = alloca i1
  store i1 0, i1* %2172
  %2173 = alloca i64
  store i64 0, i64* %2173
  %2174 = getelementptr [4 x i8], [4 x i8]* @.str220, i32 0, i32 0
  %2175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2174, i64 3)
  %2176 = alloca %nyx_string*
  store %nyx_string* %2175, %nyx_string** %2176
  %2177 = getelementptr [4 x i8], [4 x i8]* @.str221, i32 0, i32 0
  %2178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2177, i64 3)
  %2179 = alloca %nyx_string*
  store %nyx_string* %2178, %nyx_string** %2179
  %2180 = call i8* @llvm.stacksave()
  br label %while_cond475
while_cond475:
  %2181 = load i64, i64* %2173
  %2182 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2183 = call i64 @nyx_array_length({ i64, i8* }* %2182)
  %2184 = icmp slt i64 %2181, %2183
  br i1 %2184, label %while_body476, label %while_end477
while_body476:
  call void @llvm.stackrestore(i8* %2180)
  %2185 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2186 = load i64, i64* %2173
  %2187 = call i64 @nyx_array_get_checked({ i64, i8* }* %2185, i64 %2186, i64 2)
  %2188 = inttoptr i64 %2187 to %nyx_string*
  %2189 = alloca %nyx_string*
  store %nyx_string* %2188, %nyx_string** %2189
  %2190 = load %nyx_string*, %nyx_string** %2189
  %2191 = call %nyx_string* @nyx_string_trim(%nyx_string* %2190)
  %2192 = load %nyx_string*, %nyx_string** %2176
  %2193 = call i1 @nyx_string_starts_with(%nyx_string* %2191, %nyx_string* %2192)
  br i1 %2193, label %then478, label %else479
then478:
  %2194 = load i1, i1* %2172
  %2195 = xor i1 %2194, true
  store i1 %2195, i1* %2172
  br label %merge480
else479:
  br label %merge480
merge480:
  %2196 = alloca i1
  store i1 false, i1* %2196
  %2197 = load i1, i1* %2172
  %2198 = icmp eq i1 %2197, 0
  br i1 %2198, label %sc_and_rhs481, label %sc_and_end482
sc_and_rhs481:
  %2199 = load %nyx_string*, %nyx_string** %2189
  %2200 = load %nyx_string*, %nyx_string** %2179
  %2201 = call i1 @nyx_string_starts_with(%nyx_string* %2199, %nyx_string* %2200)
  store i1 %2201, i1* %2196
  br label %sc_and_end482
sc_and_end482:
  %2202 = load i1, i1* %2196
  br i1 %2202, label %then483, label %else484
then483:
  %2203 = load { i64, i8* }*, { i64, i8* }** %2160
  %2204 = load %AgentsSeccion, %AgentsSeccion* %2171
  %2205 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2206 = ptrtoint %AgentsSeccion* %2205 to i64
  %2207 = call i8* @GC_malloc(i64 %2206)
  %2208 = bitcast i8* %2207 to %AgentsSeccion*
  store %AgentsSeccion %2204, %AgentsSeccion* %2208
  %2209 = ptrtoint %AgentsSeccion* %2208 to i64
  call void @nyx_array_push({ i64, i8* }* %2203, i64 %2209)
  %2210 = call { i64, i8* }* @nyx_array_new_ptr()
  %2211 = alloca { i64, i8* }*
  store { i64, i8* }* %2210, { i64, i8* }** %2211
  %2212 = load { i64, i8* }*, { i64, i8* }** %2211
  %2213 = load %nyx_string*, %nyx_string** %2189
  %2214 = ptrtoint %nyx_string* %2213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2212, i64 %2214, i64 2)
  %2215 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2216 = ptrtoint %AgentsSeccion* %2215 to i64
  %2217 = call i8* @GC_malloc(i64 %2216)
  %2218 = bitcast i8* %2217 to %AgentsSeccion*
  %2219 = load %nyx_string*, %nyx_string** %2189
  %2220 = call %nyx_string* @nyx_string_trim(%nyx_string* %2219)
  %2221 = getelementptr %AgentsSeccion, %AgentsSeccion* %2218, i32 0, i32 0
  store %nyx_string* %2220, %nyx_string** %2221
  %2222 = load { i64, i8* }*, { i64, i8* }** %2211
  %2223 = getelementptr %AgentsSeccion, %AgentsSeccion* %2218, i32 0, i32 1
  store { i64, i8* }* %2222, { i64, i8* }** %2223
  %2224 = load %AgentsSeccion, %AgentsSeccion* %2218
  store %AgentsSeccion %2224, %AgentsSeccion* %2171
  br label %merge485
else484:
  %2225 = getelementptr %AgentsSeccion, %AgentsSeccion* %2171, i32 0, i32 1
  %2226 = load { i64, i8* }*, { i64, i8* }** %2225
  %2227 = load %nyx_string*, %nyx_string** %2189
  %2228 = ptrtoint %nyx_string* %2227 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2226, i64 %2228, i64 2)
  br label %merge485
merge485:
  %2229 = load i64, i64* %2173
  %2230 = add i64 %2229, 1
  store i64 %2230, i64* %2173
  br label %while_cond475
while_end477:
  %2231 = load { i64, i8* }*, { i64, i8* }** %2160
  %2232 = load %AgentsSeccion, %AgentsSeccion* %2171
  %2233 = getelementptr %AgentsSeccion, %AgentsSeccion* null, i32 1
  %2234 = ptrtoint %AgentsSeccion* %2233 to i64
  %2235 = call i8* @GC_malloc(i64 %2234)
  %2236 = bitcast i8* %2235 to %AgentsSeccion*
  store %AgentsSeccion %2232, %AgentsSeccion* %2236
  %2237 = ptrtoint %AgentsSeccion* %2236 to i64
  call void @nyx_array_push({ i64, i8* }* %2231, i64 %2237)
  %2238 = load { i64, i8* }*, { i64, i8* }** %2160
  ret { i64, i8* }* %2238
}

define internal %AgentsMerge @agents_merge_legado(
{ i64, i8* }* %lineas.param, %nyx_string* %template.param, %nyx_string* %lang.param) {
  %lineas.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lineas.param, { i64, i8* }** %lineas.ptr
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2239 = call { i64, i8* }* @nyx_array_new_ptr()
  %2240 = alloca { i64, i8* }*
  store { i64, i8* }* %2239, { i64, i8* }** %2240
  %2241 = call { i64, i8* }* @nyx_array_new_ptr()
  %2242 = alloca { i64, i8* }*
  store { i64, i8* }* %2241, { i64, i8* }** %2242
  %2243 = call { i64, i8* }* @nyx_array_new_ptr()
  %2244 = alloca { i64, i8* }*
  store { i64, i8* }* %2243, { i64, i8* }** %2244
  %2245 = alloca i64
  store i64 0, i64* %2245
  %2246 = getelementptr [25 x i8], [25 x i8]* @.str222, i32 0, i32 0
  %2247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2246, i64 24)
  %2248 = alloca %nyx_string*
  store %nyx_string* %2247, %nyx_string** %2248
  %2249 = getelementptr [22 x i8], [22 x i8]* @.str223, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2249, i64 21)
  %2251 = alloca %nyx_string*
  store %nyx_string* %2250, %nyx_string** %2251
  %2252 = getelementptr [56 x i8], [56 x i8]* @.str224, i32 0, i32 0
  %2253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2252, i64 55)
  %2254 = alloca %nyx_string*
  store %nyx_string* %2253, %nyx_string** %2254
  %2255 = getelementptr [21 x i8], [21 x i8]* @.str225, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2255, i64 20)
  %2257 = alloca %nyx_string*
  store %nyx_string* %2256, %nyx_string** %2257
  %2258 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %2259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2258, i64 0)
  %2260 = alloca %nyx_string*
  store %nyx_string* %2259, %nyx_string** %2260
  %2261 = getelementptr [52 x i8], [52 x i8]* @.str227, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2261, i64 51)
  %2263 = alloca %nyx_string*
  store %nyx_string* %2262, %nyx_string** %2263
  %2264 = call i8* @llvm.stacksave()
  br label %while_cond486
while_cond486:
  %2265 = load i64, i64* %2245
  %2266 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2267 = call i64 @nyx_array_length({ i64, i8* }* %2266)
  %2268 = icmp slt i64 %2265, %2267
  br i1 %2268, label %while_body487, label %while_end488
while_body487:
  call void @llvm.stackrestore(i8* %2264)
  %2269 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2270 = load i64, i64* %2245
  %2271 = call i64 @nyx_array_get_checked({ i64, i8* }* %2269, i64 %2270, i64 2)
  %2272 = inttoptr i64 %2271 to %nyx_string*
  %2273 = alloca %nyx_string*
  store %nyx_string* %2272, %nyx_string** %2273
  %2274 = load %nyx_string*, %nyx_string** %2273
  %2275 = call %nyx_string* @nyx_string_trim(%nyx_string* %2274)
  %2276 = alloca %nyx_string*
  store %nyx_string* %2275, %nyx_string** %2276
  %2277 = load %nyx_string*, %nyx_string** %2276
  %2278 = load %nyx_string*, %nyx_string** %2248
  %2279 = call i1 @nyx_string_equals(%nyx_string* %2277, %nyx_string* %2278)
  br i1 %2279, label %then489, label %else490
then489:
  %2280 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2281 = load %nyx_string*, %nyx_string** %2251
  %2282 = load i64, i64* %2245
  %2283 = add i64 %2282, 1
  %2284 = call i64 @agents_linea_idx({ i64, i8* }* %2280, %nyx_string* %2281, i64 %2283)
  %2285 = alloca i64
  store i64 %2284, i64* %2285
  %2286 = load i64, i64* %2285
  %2287 = icmp sge i64 %2286, 0
  br i1 %2287, label %then492, label %else493
then492:
  %2288 = call { i64, i8* }* @nyx_array_new_ptr()
  %2289 = alloca { i64, i8* }*
  store { i64, i8* }* %2288, { i64, i8* }** %2289
  %2290 = load i64, i64* %2245
  %2291 = alloca i64
  store i64 %2290, i64* %2291
  %2292 = call i8* @llvm.stacksave()
  br label %while_cond495
while_cond495:
  %2293 = load i64, i64* %2291
  %2294 = load i64, i64* %2285
  %2295 = icmp sle i64 %2293, %2294
  br i1 %2295, label %while_body496, label %while_end497
while_body496:
  call void @llvm.stackrestore(i8* %2292)
  %2296 = load { i64, i8* }*, { i64, i8* }** %2289
  %2297 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2298 = load i64, i64* %2291
  %2299 = call i64 @nyx_array_get({ i64, i8* }* %2297, i64 %2298)
  %2300 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2301 = load i64, i64* %2291
  %2302 = call i64 @nyx_array_get_tag({ i64, i8* }* %2300, i64 %2301)
  call void @nyx_array_push_tagged({ i64, i8* }* %2296, i64 %2299, i64 %2302)
  %2303 = load i64, i64* %2291
  %2304 = add i64 %2303, 1
  store i64 %2304, i64* %2291
  br label %while_cond495
while_end497:
  %2305 = load { i64, i8* }*, { i64, i8* }** %2242
  %2306 = load { i64, i8* }*, { i64, i8* }** %2289
  %2307 = call %nyx_string* @agents_unir({ i64, i8* }* %2306)
  %2308 = ptrtoint %nyx_string* %2307 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2305, i64 %2308, i64 2)
  %2309 = load { i64, i8* }*, { i64, i8* }** %2240
  %2310 = load %nyx_string*, %nyx_string** %2254
  %2311 = ptrtoint %nyx_string* %2310 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2309, i64 %2311, i64 2)
  %2312 = load i64, i64* %2285
  %2313 = add i64 %2312, 1
  store i64 %2313, i64* %2245
  br label %while_cond486
else493:
  br label %merge494
merge494:
  br label %merge491
else490:
  br label %merge491
merge491:
  %2314 = load %nyx_string*, %nyx_string** %2276
  %2315 = load %nyx_string*, %nyx_string** %2257
  %2316 = call i1 @nyx_string_equals(%nyx_string* %2314, %nyx_string* %2315)
  br i1 %2316, label %then498, label %else499
then498:
  %2317 = call { i64, i8* }* @nyx_array_new_ptr()
  %2318 = alloca { i64, i8* }*
  store { i64, i8* }* %2317, { i64, i8* }** %2318
  %2319 = load { i64, i8* }*, { i64, i8* }** %2318
  %2320 = load %nyx_string*, %nyx_string** %2273
  %2321 = ptrtoint %nyx_string* %2320 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2319, i64 %2321, i64 2)
  %2322 = load i64, i64* %2245
  %2323 = add i64 %2322, 1
  %2324 = alloca i64
  store i64 %2323, i64* %2324
  %2325 = call i8* @llvm.stacksave()
  br label %while_cond501
while_cond501:
  %2326 = load i64, i64* %2324
  %2327 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2328 = call i64 @nyx_array_length({ i64, i8* }* %2327)
  %2329 = icmp slt i64 %2326, %2328
  br i1 %2329, label %while_body502, label %while_end503
while_body502:
  call void @llvm.stackrestore(i8* %2325)
  %2330 = load { i64, i8* }*, { i64, i8* }** %lineas.ptr
  %2331 = load i64, i64* %2324
  %2332 = call i64 @nyx_array_get_checked({ i64, i8* }* %2330, i64 %2331, i64 2)
  %2333 = inttoptr i64 %2332 to %nyx_string*
  %2334 = alloca %nyx_string*
  store %nyx_string* %2333, %nyx_string** %2334
  %2335 = alloca i1
  store i1 true, i1* %2335
  %2336 = load %nyx_string*, %nyx_string** %2334
  %2337 = call %nyx_string* @nyx_string_trim(%nyx_string* %2336)
  %2338 = load %nyx_string*, %nyx_string** %2260
  %2339 = call i1 @nyx_string_equals(%nyx_string* %2337, %nyx_string* %2338)
  br i1 %2339, label %sc_or_end505, label %sc_or_rhs504
sc_or_rhs504:
  %2340 = load %nyx_string*, %nyx_string** %2334
  %2341 = call i1 @agents_es_sello(%nyx_string* %2340)
  store i1 %2341, i1* %2335
  br label %sc_or_end505
sc_or_end505:
  %2342 = load i1, i1* %2335
  br i1 %2342, label %then506, label %else507
then506:
  br label %while_end503
else507:
  br label %merge508
merge508:
  %2343 = load { i64, i8* }*, { i64, i8* }** %2318
  %2344 = load %nyx_string*, %nyx_string** %2334
  %2345 = ptrtoint %nyx_string* %2344 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2343, i64 %2345, i64 2)
  %2346 = load i64, i64* %2324
  %2347 = add i64 %2346, 1
  store i64 %2347, i64* %2324
  br label %while_cond501
while_end503:
  %2348 = load { i64, i8* }*, { i64, i8* }** %2242
  %2349 = load { i64, i8* }*, { i64, i8* }** %2318
  %2350 = call %nyx_string* @agents_unir({ i64, i8* }* %2349)
  %2351 = ptrtoint %nyx_string* %2350 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2348, i64 %2351, i64 2)
  %2352 = load { i64, i8* }*, { i64, i8* }** %2240
  %2353 = load %nyx_string*, %nyx_string** %2263
  %2354 = ptrtoint %nyx_string* %2353 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2352, i64 %2354, i64 2)
  %2355 = load i64, i64* %2324
  store i64 %2355, i64* %2245
  br label %while_cond486
else499:
  br label %merge500
merge500:
  %2356 = load %nyx_string*, %nyx_string** %2273
  %2357 = call i1 @agents_es_sello(%nyx_string* %2356)
  %2358 = icmp eq i1 %2357, 0
  br i1 %2358, label %then509, label %else510
then509:
  %2359 = load { i64, i8* }*, { i64, i8* }** %2244
  %2360 = load %nyx_string*, %nyx_string** %2273
  %2361 = ptrtoint %nyx_string* %2360 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2359, i64 %2361, i64 2)
  br label %merge511
else510:
  br label %merge511
merge511:
  %2362 = load i64, i64* %2245
  %2363 = add i64 %2362, 1
  store i64 %2363, i64* %2245
  br label %while_cond486
while_end488:
  %2364 = load %nyx_string*, %nyx_string** %template.ptr
  %2365 = getelementptr [2 x i8], [2 x i8]* @.str228, i32 0, i32 0
  %2366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2365, i64 1)
  %2367 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2364, %nyx_string* %2366)
  %2368 = alloca { i64, i8* }*
  store { i64, i8* }* %2367, { i64, i8* }** %2368
  %2369 = call i8* @nyx_map_new(i32 0)
  %2370 = alloca i8*
  store i8* %2369, i8** %2370
  %2371 = call i8* @nyx_map_new(i32 0)
  %2372 = alloca i8*
  store i8* %2371, i8** %2372
  %2373 = load { i64, i8* }*, { i64, i8* }** %2368
  %2374 = call { i64, i8* }* @agents_secciones({ i64, i8* }* %2373)
  %2375 = alloca { i64, i8* }*
  store { i64, i8* }* %2374, { i64, i8* }** %2375
  %2376 = alloca i64
  store i64 0, i64* %2376
  %2377 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2377, i64 0)
  %2379 = alloca %nyx_string*
  store %nyx_string* %2378, %nyx_string** %2379
  %2380 = call i8* @llvm.stacksave()
  br label %while_cond512
while_cond512:
  %2381 = load i64, i64* %2376
  %2382 = load { i64, i8* }*, { i64, i8* }** %2375
  %2383 = call i64 @nyx_array_length({ i64, i8* }* %2382)
  %2384 = icmp slt i64 %2381, %2383
  br i1 %2384, label %while_body513, label %while_end514
while_body513:
  call void @llvm.stackrestore(i8* %2380)
  %2385 = load { i64, i8* }*, { i64, i8* }** %2375
  %2386 = load i64, i64* %2376
  %2387 = call i64 @nyx_array_get({ i64, i8* }* %2385, i64 %2386)
  %2388 = inttoptr i64 %2387 to %AgentsSeccion*
  %2389 = load %AgentsSeccion, %AgentsSeccion* %2388
  %2390 = alloca %AgentsSeccion
  store %AgentsSeccion %2389, %AgentsSeccion* %2390
  %2391 = getelementptr %AgentsSeccion, %AgentsSeccion* %2390, i32 0, i32 0
  %2392 = load %nyx_string*, %nyx_string** %2391
  %2393 = load %nyx_string*, %nyx_string** %2379
  %2394 = call i1 @nyx_string_equals(%nyx_string* %2392, %nyx_string* %2393)
  %2395 = xor i1 %2394, true
  br i1 %2395, label %then515, label %else516
then515:
  %2396 = load i8*, i8** %2370
  %2397 = getelementptr %AgentsSeccion, %AgentsSeccion* %2390, i32 0, i32 0
  %2398 = load %nyx_string*, %nyx_string** %2397
  %2399 = call i8* @nyx_string_to_cstr(%nyx_string* %2398)
  call void @nyx_map_insert_int(i8* %2396, i8* %2399, i64 1)
  br label %merge517
else516:
  br label %merge517
merge517:
  %2400 = load i64, i64* %2376
  %2401 = add i64 %2400, 1
  store i64 %2401, i64* %2376
  br label %while_cond512
while_end514:
  %2402 = alloca i64
  store i64 0, i64* %2402
  %2403 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %2404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2403, i64 0)
  %2405 = alloca %nyx_string*
  store %nyx_string* %2404, %nyx_string** %2405
  %2406 = call i8* @llvm.stacksave()
  br label %while_cond518
while_cond518:
  %2407 = load i64, i64* %2402
  %2408 = load { i64, i8* }*, { i64, i8* }** %2368
  %2409 = call i64 @nyx_array_length({ i64, i8* }* %2408)
  %2410 = icmp slt i64 %2407, %2409
  br i1 %2410, label %while_body519, label %while_end520
while_body519:
  call void @llvm.stackrestore(i8* %2406)
  %2411 = load { i64, i8* }*, { i64, i8* }** %2368
  %2412 = load i64, i64* %2402
  %2413 = call i64 @nyx_array_get_checked({ i64, i8* }* %2411, i64 %2412, i64 2)
  %2414 = inttoptr i64 %2413 to %nyx_string*
  %2415 = alloca %nyx_string*
  store %nyx_string* %2414, %nyx_string** %2415
  %2416 = load %nyx_string*, %nyx_string** %2415
  %2417 = call %nyx_string* @nyx_string_trim(%nyx_string* %2416)
  %2418 = alloca %nyx_string*
  store %nyx_string* %2417, %nyx_string** %2418
  %2419 = load %nyx_string*, %nyx_string** %2418
  %2420 = load %nyx_string*, %nyx_string** %2405
  %2421 = call i1 @nyx_string_equals(%nyx_string* %2419, %nyx_string* %2420)
  %2422 = xor i1 %2421, true
  br i1 %2422, label %then521, label %else522
then521:
  %2423 = load i8*, i8** %2372
  %2424 = load %nyx_string*, %nyx_string** %2418
  %2425 = call i8* @nyx_string_to_cstr(%nyx_string* %2424)
  call void @nyx_map_insert_int(i8* %2423, i8* %2425, i64 1)
  br label %merge523
else522:
  br label %merge523
merge523:
  %2426 = load i64, i64* %2402
  %2427 = add i64 %2426, 1
  store i64 %2427, i64* %2402
  br label %while_cond518
while_end520:
  %2428 = load { i64, i8* }*, { i64, i8* }** %2244
  %2429 = call { i64, i8* }* @agents_secciones({ i64, i8* }* %2428)
  %2430 = alloca { i64, i8* }*
  store { i64, i8* }* %2429, { i64, i8* }** %2430
  %2431 = alloca i64
  store i64 0, i64* %2431
  %2432 = getelementptr [10 x i8], [10 x i8]* @.str231, i32 0, i32 0
  %2433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2432, i64 9)
  %2434 = alloca %nyx_string*
  store %nyx_string* %2433, %nyx_string** %2434
  %2435 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %2436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2435, i64 0)
  %2437 = alloca %nyx_string*
  store %nyx_string* %2436, %nyx_string** %2437
  %2438 = getelementptr [3 x i8], [3 x i8]* @.str233, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2438, i64 2)
  %2440 = alloca %nyx_string*
  store %nyx_string* %2439, %nyx_string** %2440
  %2441 = getelementptr [36 x i8], [36 x i8]* @.str234, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2441, i64 35)
  %2443 = alloca %nyx_string*
  store %nyx_string* %2442, %nyx_string** %2443
  %2444 = getelementptr [111 x i8], [111 x i8]* @.str235, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2444, i64 110)
  %2446 = alloca %nyx_string*
  store %nyx_string* %2445, %nyx_string** %2446
  %2447 = getelementptr [50 x i8], [50 x i8]* @.str236, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2447, i64 49)
  %2449 = alloca %nyx_string*
  store %nyx_string* %2448, %nyx_string** %2449
  %2450 = getelementptr [64 x i8], [64 x i8]* @.str237, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2450, i64 63)
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = getelementptr [16 x i8], [16 x i8]* @.str238, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2453, i64 15)
  %2455 = alloca %nyx_string*
  store %nyx_string* %2454, %nyx_string** %2455
  %2456 = getelementptr [27 x i8], [27 x i8]* @.str239, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2456, i64 26)
  %2458 = alloca %nyx_string*
  store %nyx_string* %2457, %nyx_string** %2458
  %2459 = call i8* @llvm.stacksave()
  br label %while_cond524
while_cond524:
  %2460 = load i64, i64* %2431
  %2461 = load { i64, i8* }*, { i64, i8* }** %2430
  %2462 = call i64 @nyx_array_length({ i64, i8* }* %2461)
  %2463 = icmp slt i64 %2460, %2462
  br i1 %2463, label %while_body525, label %while_end526
while_body525:
  call void @llvm.stackrestore(i8* %2459)
  %2464 = load { i64, i8* }*, { i64, i8* }** %2430
  %2465 = load i64, i64* %2431
  %2466 = call i64 @nyx_array_get({ i64, i8* }* %2464, i64 %2465)
  %2467 = inttoptr i64 %2466 to %AgentsSeccion*
  %2468 = load %AgentsSeccion, %AgentsSeccion* %2467
  %2469 = alloca %AgentsSeccion
  store %AgentsSeccion %2468, %AgentsSeccion* %2469
  %2470 = alloca i64
  store i64 0, i64* %2470
  %2471 = alloca i64
  store i64 0, i64* %2471
  %2472 = alloca i1
  store i1 0, i1* %2472
  %2473 = alloca i64
  store i64 0, i64* %2473
  %2474 = call i8* @llvm.stacksave()
  br label %while_cond527
while_cond527:
  %2475 = load i64, i64* %2473
  %2476 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 1
  %2477 = load { i64, i8* }*, { i64, i8* }** %2476
  %2478 = call i64 @nyx_array_length({ i64, i8* }* %2477)
  %2479 = icmp slt i64 %2475, %2478
  br i1 %2479, label %while_body528, label %while_end529
while_body528:
  call void @llvm.stackrestore(i8* %2474)
  %2480 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 1
  %2481 = load { i64, i8* }*, { i64, i8* }** %2480
  %2482 = load i64, i64* %2473
  %2483 = call i64 @nyx_array_get({ i64, i8* }* %2481, i64 %2482)
  %2484 = inttoptr i64 %2483 to %nyx_string*
  %2485 = alloca %nyx_string*
  store %nyx_string* %2484, %nyx_string** %2485
  %2486 = load %nyx_string*, %nyx_string** %2485
  %2487 = call %nyx_string* @nyx_string_trim(%nyx_string* %2486)
  %2488 = alloca %nyx_string*
  store %nyx_string* %2487, %nyx_string** %2488
  %2489 = load %nyx_string*, %nyx_string** %2488
  %2490 = load %nyx_string*, %nyx_string** %2434
  %2491 = call i1 @nyx_string_starts_with(%nyx_string* %2489, %nyx_string* %2490)
  br i1 %2491, label %then530, label %else531
then530:
  store i1 1, i1* %2472
  br label %merge532
else531:
  br label %merge532
merge532:
  %2492 = alloca i1
  store i1 false, i1* %2492
  %2493 = load %nyx_string*, %nyx_string** %2488
  %2494 = load %nyx_string*, %nyx_string** %2437
  %2495 = call i1 @nyx_string_equals(%nyx_string* %2493, %nyx_string* %2494)
  %2496 = xor i1 %2495, true
  br i1 %2496, label %sc_and_rhs533, label %sc_and_end534
sc_and_rhs533:
  %2497 = load %nyx_string*, %nyx_string** %2488
  %2498 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 0
  %2499 = load %nyx_string*, %nyx_string** %2498
  %2500 = call i1 @nyx_string_equals(%nyx_string* %2497, %nyx_string* %2499)
  %2501 = xor i1 %2500, true
  store i1 %2501, i1* %2492
  br label %sc_and_end534
sc_and_end534:
  %2502 = load i1, i1* %2492
  br i1 %2502, label %then535, label %else536
then535:
  %2503 = load i64, i64* %2470
  %2504 = add i64 %2503, 1
  store i64 %2504, i64* %2470
  %2505 = load i8*, i8** %2372
  %2506 = load %nyx_string*, %nyx_string** %2488
  %2507 = call i8* @nyx_string_to_cstr(%nyx_string* %2506)
  %2508 = call i1 @nyx_map_contains_str(i8* %2505, i8* %2507)
  br i1 %2508, label %then538, label %else539
then538:
  %2509 = load i64, i64* %2471
  %2510 = add i64 %2509, 1
  store i64 %2510, i64* %2471
  br label %merge540
else539:
  br label %merge540
merge540:
  br label %merge537
else536:
  br label %merge537
merge537:
  %2511 = load i64, i64* %2473
  %2512 = add i64 %2511, 1
  store i64 %2512, i64* %2473
  br label %while_cond527
while_end529:
  %2513 = alloca i1
  store i1 0, i1* %2513
  %2514 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 0
  %2515 = load %nyx_string*, %nyx_string** %2514
  %2516 = load %nyx_string*, %nyx_string** %2437
  %2517 = call i1 @nyx_string_equals(%nyx_string* %2515, %nyx_string* %2516)
  br i1 %2517, label %then541, label %else542
then541:
  store i1 1, i1* %2513
  br label %merge543
else542:
  br label %merge543
merge543:
  %2518 = load i8*, i8** %2370
  %2519 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 0
  %2520 = load %nyx_string*, %nyx_string** %2519
  %2521 = call i8* @nyx_string_to_cstr(%nyx_string* %2520)
  %2522 = call i1 @nyx_map_contains_str(i8* %2518, i8* %2521)
  br i1 %2522, label %then544, label %else545
then544:
  store i1 1, i1* %2513
  br label %merge546
else545:
  br label %merge546
merge546:
  %2523 = load i1, i1* %2472
  br i1 %2523, label %then547, label %else548
then547:
  store i1 1, i1* %2513
  br label %merge549
else548:
  br label %merge549
merge549:
  %2524 = alloca i1
  store i1 false, i1* %2524
  %2525 = load i64, i64* %2470
  %2526 = icmp sgt i64 %2525, 0
  br i1 %2526, label %sc_and_rhs550, label %sc_and_end551
sc_and_rhs550:
  %2527 = load i64, i64* %2471
  %2528 = mul i64 %2527, 10
  %2529 = load i64, i64* %2470
  %2530 = mul i64 %2529, 6
  %2531 = icmp sge i64 %2528, %2530
  store i1 %2531, i1* %2524
  br label %sc_and_end551
sc_and_end551:
  %2532 = load i1, i1* %2524
  br i1 %2532, label %then552, label %else553
then552:
  store i1 1, i1* %2513
  br label %merge554
else553:
  br label %merge554
merge554:
  %2533 = load i1, i1* %2513
  br i1 %2533, label %then555, label %else556
then555:
  %2534 = load i64, i64* %2470
  %2535 = load i64, i64* %2471
  %2536 = sub i64 %2534, %2535
  %2537 = alloca i64
  store i64 %2536, i64* %2537
  %2538 = alloca i1
  store i1 false, i1* %2538
  %2539 = load i64, i64* %2537
  %2540 = icmp sgt i64 %2539, 0
  br i1 %2540, label %sc_and_rhs558, label %sc_and_end559
sc_and_rhs558:
  %2541 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 0
  %2542 = load %nyx_string*, %nyx_string** %2541
  %2543 = load %nyx_string*, %nyx_string** %2437
  %2544 = call i1 @nyx_string_equals(%nyx_string* %2542, %nyx_string* %2543)
  %2545 = xor i1 %2544, true
  store i1 %2545, i1* %2538
  br label %sc_and_end559
sc_and_end559:
  %2546 = load i1, i1* %2538
  br i1 %2546, label %then560, label %else561
then560:
  %2547 = load { i64, i8* }*, { i64, i8* }** %2240
  %2548 = load %nyx_string*, %nyx_string** %2440
  %2549 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 0
  %2550 = load %nyx_string*, %nyx_string** %2549
  %2551 = call %nyx_string* @nyx_string_concat(%nyx_string* %2548, %nyx_string* %2550)
  %2552 = load %nyx_string*, %nyx_string** %2443
  %2553 = call %nyx_string* @nyx_string_concat(%nyx_string* %2551, %nyx_string* %2552)
  %2554 = load i64, i64* %2537
  %2555 = call %nyx_string* @nyx_string_from_int(i64 %2554)
  %2556 = call %nyx_string* @nyx_string_concat(%nyx_string* %2553, %nyx_string* %2555)
  %2557 = load %nyx_string*, %nyx_string** %2446
  %2558 = call %nyx_string* @nyx_string_concat(%nyx_string* %2556, %nyx_string* %2557)
  %2559 = ptrtoint %nyx_string* %2558 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2547, i64 %2559, i64 2)
  br label %merge562
else561:
  br label %merge562
merge562:
  %2560 = alloca i1
  store i1 false, i1* %2560
  %2561 = load i64, i64* %2537
  %2562 = icmp sgt i64 %2561, 0
  br i1 %2562, label %sc_and_rhs563, label %sc_and_end564
sc_and_rhs563:
  %2563 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 0
  %2564 = load %nyx_string*, %nyx_string** %2563
  %2565 = load %nyx_string*, %nyx_string** %2437
  %2566 = call i1 @nyx_string_equals(%nyx_string* %2564, %nyx_string* %2565)
  store i1 %2566, i1* %2560
  br label %sc_and_end564
sc_and_end564:
  %2567 = load i1, i1* %2560
  br i1 %2567, label %then565, label %else566
then565:
  %2568 = load { i64, i8* }*, { i64, i8* }** %2240
  %2569 = load %nyx_string*, %nyx_string** %2449
  %2570 = load i64, i64* %2537
  %2571 = call %nyx_string* @nyx_string_from_int(i64 %2570)
  %2572 = call %nyx_string* @nyx_string_concat(%nyx_string* %2569, %nyx_string* %2571)
  %2573 = load %nyx_string*, %nyx_string** %2452
  %2574 = call %nyx_string* @nyx_string_concat(%nyx_string* %2572, %nyx_string* %2573)
  %2575 = ptrtoint %nyx_string* %2574 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2568, i64 %2575, i64 2)
  br label %merge567
else566:
  br label %merge567
merge567:
  br label %merge557
else556:
  %2576 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 1
  %2577 = load { i64, i8* }*, { i64, i8* }** %2576
  %2578 = call %nyx_string* @agents_unir({ i64, i8* }* %2577)
  %2579 = alloca %nyx_string*
  store %nyx_string* %2578, %nyx_string** %2579
  %2580 = load %nyx_string*, %nyx_string** %2579
  %2581 = call %nyx_string* @nyx_string_trim(%nyx_string* %2580)
  %2582 = load %nyx_string*, %nyx_string** %2437
  %2583 = call i1 @nyx_string_equals(%nyx_string* %2581, %nyx_string* %2582)
  %2584 = xor i1 %2583, true
  br i1 %2584, label %then568, label %else569
then568:
  %2585 = load { i64, i8* }*, { i64, i8* }** %2242
  %2586 = load %nyx_string*, %nyx_string** %2579
  %2587 = ptrtoint %nyx_string* %2586 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2585, i64 %2587, i64 2)
  %2588 = load { i64, i8* }*, { i64, i8* }** %2240
  %2589 = load %nyx_string*, %nyx_string** %2455
  %2590 = getelementptr %AgentsSeccion, %AgentsSeccion* %2469, i32 0, i32 0
  %2591 = load %nyx_string*, %nyx_string** %2590
  %2592 = call %nyx_string* @nyx_string_concat(%nyx_string* %2589, %nyx_string* %2591)
  %2593 = load %nyx_string*, %nyx_string** %2458
  %2594 = call %nyx_string* @nyx_string_concat(%nyx_string* %2592, %nyx_string* %2593)
  %2595 = ptrtoint %nyx_string* %2594 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2588, i64 %2595, i64 2)
  br label %merge570
else569:
  br label %merge570
merge570:
  br label %merge557
merge557:
  %2596 = load i64, i64* %2431
  %2597 = add i64 %2596, 1
  store i64 %2597, i64* %2431
  br label %while_cond524
while_end526:
  %2598 = load %nyx_string*, %nyx_string** %lang.ptr
  %2599 = call %nyx_string* @agents_cabecera(%nyx_string* %2598)
  %2600 = getelementptr [3 x i8], [3 x i8]* @.str240, i32 0, i32 0
  %2601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2600, i64 2)
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2599, %nyx_string* %2601)
  %2603 = alloca %nyx_string*
  store %nyx_string* %2602, %nyx_string** %2603
  %2604 = alloca i64
  store i64 0, i64* %2604
  %2605 = getelementptr [3 x i8], [3 x i8]* @.str241, i32 0, i32 0
  %2606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2605, i64 2)
  %2607 = alloca %nyx_string*
  store %nyx_string* %2606, %nyx_string** %2607
  %2608 = call i8* @llvm.stacksave()
  br label %while_cond571
while_cond571:
  %2609 = load i64, i64* %2604
  %2610 = load { i64, i8* }*, { i64, i8* }** %2242
  %2611 = call i64 @nyx_array_length({ i64, i8* }* %2610)
  %2612 = icmp slt i64 %2609, %2611
  br i1 %2612, label %while_body572, label %while_end573
while_body572:
  call void @llvm.stackrestore(i8* %2608)
  %2613 = load { i64, i8* }*, { i64, i8* }** %2242
  %2614 = load i64, i64* %2604
  %2615 = call i64 @nyx_array_get_checked({ i64, i8* }* %2613, i64 %2614, i64 2)
  %2616 = inttoptr i64 %2615 to %nyx_string*
  %2617 = alloca %nyx_string*
  store %nyx_string* %2616, %nyx_string** %2617
  %2618 = load %nyx_string*, %nyx_string** %2603
  %2619 = load %nyx_string*, %nyx_string** %2617
  %2620 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2619)
  %2621 = load %nyx_string*, %nyx_string** %2607
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2620, %nyx_string* %2621)
  store %nyx_string* %2622, %nyx_string** %2603
  %2623 = load i64, i64* %2604
  %2624 = add i64 %2623, 1
  store i64 %2624, i64* %2604
  br label %while_cond571
while_end573:
  %2625 = load %nyx_string*, %nyx_string** %2603
  %2626 = load %nyx_string*, %nyx_string** %template.ptr
  %2627 = call %nyx_string* @agents_bloque(%nyx_string* %2626)
  %2628 = call %nyx_string* @nyx_string_concat(%nyx_string* %2625, %nyx_string* %2627)
  %2629 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2629, i64 1)
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2628, %nyx_string* %2630)
  %2632 = load %nyx_string*, %nyx_string** %lang.ptr
  %2633 = call %nyx_string* @seed_stamp(%nyx_string* %2632)
  %2634 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2633)
  store %nyx_string* %2634, %nyx_string** %2603
  %2635 = getelementptr %AgentsMerge, %AgentsMerge* null, i32 1
  %2636 = ptrtoint %AgentsMerge* %2635 to i64
  %2637 = call i8* @GC_malloc(i64 %2636)
  %2638 = bitcast i8* %2637 to %AgentsMerge*
  %2639 = load %nyx_string*, %nyx_string** %2603
  %2640 = getelementptr %AgentsMerge, %AgentsMerge* %2638, i32 0, i32 0
  store %nyx_string* %2639, %nyx_string** %2640
  %2641 = load { i64, i8* }*, { i64, i8* }** %2240
  %2642 = getelementptr %AgentsMerge, %AgentsMerge* %2638, i32 0, i32 1
  store { i64, i8* }* %2641, { i64, i8* }** %2642
  %2643 = load %AgentsMerge, %AgentsMerge* %2638
  ret %AgentsMerge %2643
}

define internal %AgentsMerge @agents_merge(
%nyx_string* %existente.param, %nyx_string* %template.param, %nyx_string* %lang.param) {
  %existente.ptr = alloca %nyx_string*
  store %nyx_string* %existente.param, %nyx_string** %existente.ptr
  %template.ptr = alloca %nyx_string*
  store %nyx_string* %template.param, %nyx_string** %template.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2644 = call { i64, i8* }* @nyx_array_new_ptr()
  %2645 = alloca { i64, i8* }*
  store { i64, i8* }* %2644, { i64, i8* }** %2645
  %2646 = load %nyx_string*, %nyx_string** %existente.ptr
  %2647 = call %nyx_string* @nyx_string_trim(%nyx_string* %2646)
  %2648 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %2649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2648, i64 0)
  %2650 = call i1 @nyx_string_equals(%nyx_string* %2647, %nyx_string* %2649)
  br i1 %2650, label %then574, label %else575
then574:
  %2651 = getelementptr %AgentsMerge, %AgentsMerge* null, i32 1
  %2652 = ptrtoint %AgentsMerge* %2651 to i64
  %2653 = call i8* @GC_malloc(i64 %2652)
  %2654 = bitcast i8* %2653 to %AgentsMerge*
  %2655 = load %nyx_string*, %nyx_string** %template.ptr
  %2656 = load %nyx_string*, %nyx_string** %lang.ptr
  %2657 = call %nyx_string* @agents_seed(%nyx_string* %2655, %nyx_string* %2656)
  %2658 = getelementptr %AgentsMerge, %AgentsMerge* %2654, i32 0, i32 0
  store %nyx_string* %2657, %nyx_string** %2658
  %2659 = load { i64, i8* }*, { i64, i8* }** %2645
  %2660 = getelementptr %AgentsMerge, %AgentsMerge* %2654, i32 0, i32 1
  store { i64, i8* }* %2659, { i64, i8* }** %2660
  %2661 = load %AgentsMerge, %AgentsMerge* %2654
  ret %AgentsMerge %2661
else575:
  br label %merge576
merge576:
  %2662 = load %nyx_string*, %nyx_string** %existente.ptr
  %2663 = getelementptr [2 x i8], [2 x i8]* @.str244, i32 0, i32 0
  %2664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2663, i64 1)
  %2665 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2662, %nyx_string* %2664)
  %2666 = alloca { i64, i8* }*
  store { i64, i8* }* %2665, { i64, i8* }** %2666
  %2667 = load { i64, i8* }*, { i64, i8* }** %2666
  %2668 = call %nyx_string* @agents_ini()
  %2669 = call i64 @agents_linea_idx({ i64, i8* }* %2667, %nyx_string* %2668, i64 0)
  %2670 = alloca i64
  store i64 %2669, i64* %2670
  %2671 = load i64, i64* %2670
  %2672 = icmp sge i64 %2671, 0
  br i1 %2672, label %then577, label %else578
then577:
  %2673 = load { i64, i8* }*, { i64, i8* }** %2666
  %2674 = call %nyx_string* @agents_fin()
  %2675 = load i64, i64* %2670
  %2676 = add i64 %2675, 1
  %2677 = call i64 @agents_linea_idx({ i64, i8* }* %2673, %nyx_string* %2674, i64 %2676)
  %2678 = alloca i64
  store i64 %2677, i64* %2678
  %2679 = load i64, i64* %2678
  %2680 = icmp sge i64 %2679, 0
  br i1 %2680, label %then580, label %else581
then580:
  %2681 = getelementptr %AgentsMerge, %AgentsMerge* null, i32 1
  %2682 = ptrtoint %AgentsMerge* %2681 to i64
  %2683 = call i8* @GC_malloc(i64 %2682)
  %2684 = bitcast i8* %2683 to %AgentsMerge*
  %2685 = load { i64, i8* }*, { i64, i8* }** %2666
  %2686 = load i64, i64* %2670
  %2687 = load i64, i64* %2678
  %2688 = load %nyx_string*, %nyx_string** %template.ptr
  %2689 = load %nyx_string*, %nyx_string** %lang.ptr
  %2690 = call %nyx_string* @agents_merge_bloque({ i64, i8* }* %2685, i64 %2686, i64 %2687, %nyx_string* %2688, %nyx_string* %2689)
  %2691 = getelementptr %AgentsMerge, %AgentsMerge* %2684, i32 0, i32 0
  store %nyx_string* %2690, %nyx_string** %2691
  %2692 = load { i64, i8* }*, { i64, i8* }** %2645
  %2693 = getelementptr %AgentsMerge, %AgentsMerge* %2684, i32 0, i32 1
  store { i64, i8* }* %2692, { i64, i8* }** %2693
  %2694 = load %AgentsMerge, %AgentsMerge* %2684
  ret %AgentsMerge %2694
else581:
  br label %merge582
merge582:
  br label %merge579
else578:
  br label %merge579
merge579:
  %2695 = load { i64, i8* }*, { i64, i8* }** %2666
  %2696 = load %nyx_string*, %nyx_string** %template.ptr
  %2697 = load %nyx_string*, %nyx_string** %lang.ptr
  %2698 = call %AgentsMerge @agents_merge_legado({ i64, i8* }* %2695, %nyx_string* %2696, %nyx_string* %2697)
  ret %AgentsMerge %2698
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
  %2699 = load %nyx_string*, %nyx_string** %tpl.ptr
  %2700 = call i8* @nyx_string_to_cstr(%nyx_string* %2699)
  %2701 = call i1 @nyx_file_exists(i8* %2700)
  %2702 = icmp eq i1 %2701, 0
  br i1 %2702, label %then583, label %else584
then583:
  %2703 = getelementptr [31 x i8], [31 x i8]* @.str245, i32 0, i32 0
  %2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2703, i64 30)
  %2705 = load %nyx_string*, %nyx_string** %tpl.ptr
  %2706 = call %nyx_string* @nyx_string_concat(%nyx_string* %2704, %nyx_string* %2705)
  %2707 = call i8* @nyx_string_to_cstr(%nyx_string* %2706)
  call void @nyx_print_string(i8* %2707)
  ret i1 0
else584:
  br label %merge585
merge585:
  %2708 = getelementptr [1 x i8], [1 x i8]* @.str246, i32 0, i32 0
  %2709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2708, i64 0)
  %2710 = alloca %nyx_string*
  store %nyx_string* %2709, %nyx_string** %2710
  %2711 = load %nyx_string*, %nyx_string** %dst.ptr
  %2712 = call i8* @nyx_string_to_cstr(%nyx_string* %2711)
  %2713 = call i1 @nyx_file_exists(i8* %2712)
  br i1 %2713, label %then586, label %else587
then586:
  %2714 = load %nyx_string*, %nyx_string** %dst.ptr
  %2715 = call i8* @nyx_string_to_cstr(%nyx_string* %2714)
  %2716 = call %nyx_string* @nyx_read_file(i8* %2715)
  store %nyx_string* %2716, %nyx_string** %2710
  br label %merge588
else587:
  br label %merge588
merge588:
  %2717 = load %nyx_string*, %nyx_string** %2710
  %2718 = load %nyx_string*, %nyx_string** %tpl.ptr
  %2719 = call i8* @nyx_string_to_cstr(%nyx_string* %2718)
  %2720 = call %nyx_string* @nyx_read_file(i8* %2719)
  %2721 = load %nyx_string*, %nyx_string** %lang.ptr
  %2722 = call %AgentsMerge @agents_merge(%nyx_string* %2717, %nyx_string* %2720, %nyx_string* %2721)
  %2723 = alloca %AgentsMerge
  store %AgentsMerge %2722, %AgentsMerge* %2723
  %2724 = load %nyx_string*, %nyx_string** %salida.ptr
  %2725 = getelementptr %AgentsMerge, %AgentsMerge* %2723, i32 0, i32 0
  %2726 = load %nyx_string*, %nyx_string** %2725
  %2727 = call i8* @nyx_string_to_cstr(%nyx_string* %2724)
  %2728 = call i1 @nyx_write_file_safe(i8* %2727, %nyx_string* %2726)
  %2729 = alloca i64
  store i64 0, i64* %2729
  %2730 = getelementptr [18 x i8], [18 x i8]* @.str247, i32 0, i32 0
  %2731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2730, i64 17)
  %2732 = alloca %nyx_string*
  store %nyx_string* %2731, %nyx_string** %2732
  %2733 = call i8* @llvm.stacksave()
  br label %while_cond589
while_cond589:
  %2734 = load i64, i64* %2729
  %2735 = getelementptr %AgentsMerge, %AgentsMerge* %2723, i32 0, i32 1
  %2736 = load { i64, i8* }*, { i64, i8* }** %2735
  %2737 = call i64 @nyx_array_length({ i64, i8* }* %2736)
  %2738 = icmp slt i64 %2734, %2737
  br i1 %2738, label %while_body590, label %while_end591
while_body590:
  call void @llvm.stackrestore(i8* %2733)
  %2739 = getelementptr %AgentsMerge, %AgentsMerge* %2723, i32 0, i32 1
  %2740 = load { i64, i8* }*, { i64, i8* }** %2739
  %2741 = load i64, i64* %2729
  %2742 = call i64 @nyx_array_get({ i64, i8* }* %2740, i64 %2741)
  %2743 = inttoptr i64 %2742 to %nyx_string*
  %2744 = alloca %nyx_string*
  store %nyx_string* %2743, %nyx_string** %2744
  %2745 = load %nyx_string*, %nyx_string** %2732
  %2746 = load %nyx_string*, %nyx_string** %2744
  %2747 = call %nyx_string* @nyx_string_concat(%nyx_string* %2745, %nyx_string* %2746)
  %2748 = call i8* @nyx_string_to_cstr(%nyx_string* %2747)
  call void @nyx_print_string(i8* %2748)
  %2749 = load i64, i64* %2729
  %2750 = add i64 %2749, 1
  store i64 %2750, i64* %2729
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
  %2751 = call %nyx_string* @resolve_seed_home()
  %2752 = alloca %nyx_string*
  store %nyx_string* %2751, %nyx_string** %2752
  %2753 = load %nyx_string*, %nyx_string** %2752
  %2754 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %2755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2754, i64 0)
  %2756 = call i1 @nyx_string_equals(%nyx_string* %2753, %nyx_string* %2755)
  br i1 %2756, label %then592, label %else593
then592:
  ret i64 0
else593:
  br label %merge594
merge594:
  %2757 = load %nyx_string*, %nyx_string** %2752
  %2758 = getelementptr [21 x i8], [21 x i8]* @.str249, i32 0, i32 0
  %2759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2758, i64 20)
  %2760 = call %nyx_string* @nyx_string_concat(%nyx_string* %2757, %nyx_string* %2759)
  %2761 = alloca %nyx_string*
  store %nyx_string* %2760, %nyx_string** %2761
  %2762 = load %nyx_string*, %nyx_string** %2761
  %2763 = call i8* @nyx_string_to_cstr(%nyx_string* %2762)
  %2764 = call i1 @nyx_file_exists(i8* %2763)
  %2765 = icmp eq i1 %2764, 0
  br i1 %2765, label %then595, label %else596
then595:
  ret i64 0
else596:
  br label %merge597
merge597:
  %2766 = load %nyx_string*, %nyx_string** %dir.ptr
  %2767 = getelementptr [12 x i8], [12 x i8]* @.str250, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2767, i64 11)
  %2769 = call %nyx_string* @nyx_string_concat(%nyx_string* %2766, %nyx_string* %2768)
  %2770 = call i8* @nyx_string_to_cstr(%nyx_string* %2769)
  %2771 = call i1 @nyx_file_exists(i8* %2770)
  br i1 %2771, label %then598, label %else599
then598:
  ret i64 0
else599:
  br label %merge600
merge600:
  %2772 = load %nyx_string*, %nyx_string** %2761
  %2773 = call i8* @nyx_string_to_cstr(%nyx_string* %2772)
  %2774 = call %nyx_string* @nyx_read_file(i8* %2773)
  %2775 = alloca %nyx_string*
  store %nyx_string* %2774, %nyx_string** %2775
  %2776 = load %nyx_string*, %nyx_string** %dir.ptr
  %2777 = getelementptr [12 x i8], [12 x i8]* @.str251, i32 0, i32 0
  %2778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2777, i64 11)
  %2779 = call %nyx_string* @nyx_string_concat(%nyx_string* %2776, %nyx_string* %2778)
  %2780 = load %nyx_string*, %nyx_string** %2775
  %2781 = getelementptr [11 x i8], [11 x i8]* @.str252, i32 0, i32 0
  %2782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2781, i64 10)
  %2783 = load %nyx_string*, %nyx_string** %project_name.ptr
  %2784 = call %nyx_string* @nyx_string_replace(%nyx_string* %2780, %nyx_string* %2782, %nyx_string* %2783)
  %2785 = call i8* @nyx_string_to_cstr(%nyx_string* %2779)
  %2786 = call i1 @nyx_write_file_safe(i8* %2785, %nyx_string* %2784)
  ret i64 0
}

define internal i1 @validate_agents(
%nyx_string* %agents.param) {
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %2787 = load %nyx_string*, %nyx_string** %agents.ptr
  %2788 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %2789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2788, i64 0)
  %2790 = call i1 @nyx_string_equals(%nyx_string* %2787, %nyx_string* %2789)
  br i1 %2790, label %then601, label %else602
then601:
  ret i1 1
else602:
  br label %merge603
merge603:
  %2791 = load %nyx_string*, %nyx_string** %agents.ptr
  %2792 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %2793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2792, i64 1)
  %2794 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2791, %nyx_string* %2793)
  %2795 = alloca { i64, i8* }*
  store { i64, i8* }* %2794, { i64, i8* }** %2795
  %2796 = alloca i64
  store i64 0, i64* %2796
  %2797 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %2798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2797, i64 6)
  %2799 = alloca %nyx_string*
  store %nyx_string* %2798, %nyx_string** %2799
  %2800 = getelementptr [7 x i8], [7 x i8]* @.str256, i32 0, i32 0
  %2801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2800, i64 6)
  %2802 = alloca %nyx_string*
  store %nyx_string* %2801, %nyx_string** %2802
  %2803 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %2804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2803, i64 7)
  %2805 = alloca %nyx_string*
  store %nyx_string* %2804, %nyx_string** %2805
  %2806 = getelementptr [28 x i8], [28 x i8]* @.str258, i32 0, i32 0
  %2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2806, i64 27)
  %2808 = alloca %nyx_string*
  store %nyx_string* %2807, %nyx_string** %2808
  %2809 = getelementptr [46 x i8], [46 x i8]* @.str259, i32 0, i32 0
  %2810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2809, i64 45)
  %2811 = alloca %nyx_string*
  store %nyx_string* %2810, %nyx_string** %2811
  %2812 = getelementptr [72 x i8], [72 x i8]* @.str260, i32 0, i32 0
  %2813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2812, i64 71)
  %2814 = alloca %nyx_string*
  store %nyx_string* %2813, %nyx_string** %2814
  %2815 = call i8* @llvm.stacksave()
  br label %while_cond604
while_cond604:
  %2816 = load i64, i64* %2796
  %2817 = load { i64, i8* }*, { i64, i8* }** %2795
  %2818 = call i64 @nyx_array_length({ i64, i8* }* %2817)
  %2819 = icmp slt i64 %2816, %2818
  br i1 %2819, label %while_body605, label %while_end606
while_body605:
  call void @llvm.stackrestore(i8* %2815)
  %2820 = load { i64, i8* }*, { i64, i8* }** %2795
  %2821 = load i64, i64* %2796
  %2822 = call i64 @nyx_array_get_checked({ i64, i8* }* %2820, i64 %2821, i64 2)
  %2823 = inttoptr i64 %2822 to %nyx_string*
  %2824 = alloca %nyx_string*
  store %nyx_string* %2823, %nyx_string** %2824
  %2825 = load %nyx_string*, %nyx_string** %2824
  %2826 = call %nyx_string* @nyx_string_trim(%nyx_string* %2825)
  %2827 = alloca %nyx_string*
  store %nyx_string* %2826, %nyx_string** %2827
  %2828 = alloca i1
  store i1 false, i1* %2828
  %2829 = alloca i1
  store i1 false, i1* %2829
  %2830 = load %nyx_string*, %nyx_string** %2827
  %2831 = load %nyx_string*, %nyx_string** %2799
  %2832 = call i1 @nyx_string_equals(%nyx_string* %2830, %nyx_string* %2831)
  %2833 = xor i1 %2832, true
  br i1 %2833, label %sc_and_rhs607, label %sc_and_end608
sc_and_rhs607:
  %2834 = load %nyx_string*, %nyx_string** %2827
  %2835 = load %nyx_string*, %nyx_string** %2802
  %2836 = call i1 @nyx_string_equals(%nyx_string* %2834, %nyx_string* %2835)
  %2837 = xor i1 %2836, true
  store i1 %2837, i1* %2829
  br label %sc_and_end608
sc_and_end608:
  %2838 = load i1, i1* %2829
  br i1 %2838, label %sc_and_rhs609, label %sc_and_end610
sc_and_rhs609:
  %2839 = load %nyx_string*, %nyx_string** %2827
  %2840 = load %nyx_string*, %nyx_string** %2805
  %2841 = call i1 @nyx_string_equals(%nyx_string* %2839, %nyx_string* %2840)
  %2842 = xor i1 %2841, true
  store i1 %2842, i1* %2828
  br label %sc_and_end610
sc_and_end610:
  %2843 = load i1, i1* %2828
  br i1 %2843, label %then611, label %else612
then611:
  %2844 = load %nyx_string*, %nyx_string** %2808
  %2845 = load %nyx_string*, %nyx_string** %2827
  %2846 = call %nyx_string* @nyx_string_concat(%nyx_string* %2844, %nyx_string* %2845)
  %2847 = load %nyx_string*, %nyx_string** %2811
  %2848 = call %nyx_string* @nyx_string_concat(%nyx_string* %2846, %nyx_string* %2847)
  %2849 = call i8* @nyx_string_to_cstr(%nyx_string* %2848)
  call void @nyx_print_string(i8* %2849)
  %2850 = load %nyx_string*, %nyx_string** %2814
  %2851 = call i8* @nyx_string_to_cstr(%nyx_string* %2850)
  call void @nyx_print_string(i8* %2851)
  ret i1 0
else612:
  br label %merge613
merge613:
  %2852 = load i64, i64* %2796
  %2853 = add i64 %2852, 1
  store i64 %2853, i64* %2796
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
  %2854 = load %nyx_string*, %nyx_string** %agents.ptr
  %2855 = getelementptr [1 x i8], [1 x i8]* @.str261, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2855, i64 0)
  %2857 = call i1 @nyx_string_equals(%nyx_string* %2854, %nyx_string* %2856)
  br i1 %2857, label %then614, label %else615
then614:
  ret i64 0
else615:
  br label %merge616
merge616:
  %2858 = call %nyx_string* @resolve_seed_home()
  %2859 = alloca %nyx_string*
  store %nyx_string* %2858, %nyx_string** %2859
  %2860 = load %nyx_string*, %nyx_string** %2859
  %2861 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %2862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2861, i64 0)
  %2863 = call i1 @nyx_string_equals(%nyx_string* %2860, %nyx_string* %2862)
  br i1 %2863, label %then617, label %else618
then617:
  ret i64 0
else618:
  br label %merge619
merge619:
  %2864 = load %nyx_string*, %nyx_string** %2859
  %2865 = getelementptr [20 x i8], [20 x i8]* @.str263, i32 0, i32 0
  %2866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2865, i64 19)
  %2867 = call %nyx_string* @nyx_string_concat(%nyx_string* %2864, %nyx_string* %2866)
  %2868 = alloca %nyx_string*
  store %nyx_string* %2867, %nyx_string** %2868
  %2869 = load %nyx_string*, %nyx_string** %agents.ptr
  %2870 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %2871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2870, i64 1)
  %2872 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2869, %nyx_string* %2871)
  %2873 = alloca { i64, i8* }*
  store { i64, i8* }* %2872, { i64, i8* }** %2873
  %2874 = alloca i64
  store i64 0, i64* %2874
  %2875 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %2876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2875, i64 0)
  %2877 = alloca %nyx_string*
  store %nyx_string* %2876, %nyx_string** %2877
  %2878 = getelementptr [2 x i8], [2 x i8]* @.str266, i32 0, i32 0
  %2879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2878, i64 1)
  %2880 = alloca %nyx_string*
  store %nyx_string* %2879, %nyx_string** %2880
  %2881 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %2882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2881, i64 1)
  %2883 = alloca %nyx_string*
  store %nyx_string* %2882, %nyx_string** %2883
  %2884 = getelementptr [4 x i8], [4 x i8]* @.str268, i32 0, i32 0
  %2885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2884, i64 3)
  %2886 = alloca %nyx_string*
  store %nyx_string* %2885, %nyx_string** %2886
  %2887 = getelementptr [7 x i8], [7 x i8]* @.str269, i32 0, i32 0
  %2888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2887, i64 6)
  %2889 = alloca %nyx_string*
  store %nyx_string* %2888, %nyx_string** %2889
  %2890 = getelementptr [11 x i8], [11 x i8]* @.str270, i32 0, i32 0
  %2891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2890, i64 10)
  %2892 = alloca %nyx_string*
  store %nyx_string* %2891, %nyx_string** %2892
  %2893 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %2894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2893, i64 6)
  %2895 = alloca %nyx_string*
  store %nyx_string* %2894, %nyx_string** %2895
  %2896 = getelementptr [14 x i8], [14 x i8]* @.str272, i32 0, i32 0
  %2897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2896, i64 13)
  %2898 = alloca %nyx_string*
  store %nyx_string* %2897, %nyx_string** %2898
  %2899 = getelementptr [8 x i8], [8 x i8]* @.str273, i32 0, i32 0
  %2900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2899, i64 7)
  %2901 = alloca %nyx_string*
  store %nyx_string* %2900, %nyx_string** %2901
  %2902 = getelementptr [11 x i8], [11 x i8]* @.str274, i32 0, i32 0
  %2903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2902, i64 10)
  %2904 = alloca %nyx_string*
  store %nyx_string* %2903, %nyx_string** %2904
  %2905 = getelementptr [10 x i8], [10 x i8]* @.str275, i32 0, i32 0
  %2906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2905, i64 9)
  %2907 = alloca %nyx_string*
  store %nyx_string* %2906, %nyx_string** %2907
  %2908 = getelementptr [33 x i8], [33 x i8]* @.str276, i32 0, i32 0
  %2909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2908, i64 32)
  %2910 = alloca %nyx_string*
  store %nyx_string* %2909, %nyx_string** %2910
  %2911 = getelementptr [44 x i8], [44 x i8]* @.str277, i32 0, i32 0
  %2912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2911, i64 43)
  %2913 = alloca %nyx_string*
  store %nyx_string* %2912, %nyx_string** %2913
  %2914 = getelementptr [4 x i8], [4 x i8]* @.str278, i32 0, i32 0
  %2915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2914, i64 3)
  %2916 = alloca %nyx_string*
  store %nyx_string* %2915, %nyx_string** %2916
  %2917 = getelementptr [20 x i8], [20 x i8]* @.str279, i32 0, i32 0
  %2918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2917, i64 19)
  %2919 = alloca %nyx_string*
  store %nyx_string* %2918, %nyx_string** %2919
  %2920 = call i8* @llvm.stacksave()
  br label %while_cond620
while_cond620:
  %2921 = load i64, i64* %2874
  %2922 = load { i64, i8* }*, { i64, i8* }** %2873
  %2923 = call i64 @nyx_array_length({ i64, i8* }* %2922)
  %2924 = icmp slt i64 %2921, %2923
  br i1 %2924, label %while_body621, label %while_end622
while_body621:
  call void @llvm.stackrestore(i8* %2920)
  %2925 = load { i64, i8* }*, { i64, i8* }** %2873
  %2926 = load i64, i64* %2874
  %2927 = call i64 @nyx_array_get_checked({ i64, i8* }* %2925, i64 %2926, i64 2)
  %2928 = inttoptr i64 %2927 to %nyx_string*
  %2929 = alloca %nyx_string*
  store %nyx_string* %2928, %nyx_string** %2929
  %2930 = load %nyx_string*, %nyx_string** %2929
  %2931 = call %nyx_string* @nyx_string_trim(%nyx_string* %2930)
  %2932 = alloca %nyx_string*
  store %nyx_string* %2931, %nyx_string** %2932
  %2933 = load %nyx_string*, %nyx_string** %2932
  %2934 = load %nyx_string*, %nyx_string** %2877
  %2935 = call i1 @nyx_string_equals(%nyx_string* %2933, %nyx_string* %2934)
  %2936 = xor i1 %2935, true
  br i1 %2936, label %then623, label %else624
then623:
  %2937 = load %nyx_string*, %nyx_string** %2868
  %2938 = load %nyx_string*, %nyx_string** %2880
  %2939 = call %nyx_string* @nyx_string_concat(%nyx_string* %2937, %nyx_string* %2938)
  %2940 = load %nyx_string*, %nyx_string** %2932
  %2941 = call %nyx_string* @nyx_string_concat(%nyx_string* %2939, %nyx_string* %2940)
  %2942 = load %nyx_string*, %nyx_string** %2883
  %2943 = call %nyx_string* @nyx_string_concat(%nyx_string* %2941, %nyx_string* %2942)
  %2944 = load %nyx_string*, %nyx_string** %lang.ptr
  %2945 = call %nyx_string* @nyx_string_concat(%nyx_string* %2943, %nyx_string* %2944)
  %2946 = load %nyx_string*, %nyx_string** %2886
  %2947 = call %nyx_string* @nyx_string_concat(%nyx_string* %2945, %nyx_string* %2946)
  %2948 = alloca %nyx_string*
  store %nyx_string* %2947, %nyx_string** %2948
  %2949 = load %nyx_string*, %nyx_string** %2948
  %2950 = call i8* @nyx_string_to_cstr(%nyx_string* %2949)
  %2951 = call i1 @nyx_file_exists(i8* %2950)
  br i1 %2951, label %then626, label %else627
then626:
  %2952 = load %nyx_string*, %nyx_string** %2948
  %2953 = call i8* @nyx_string_to_cstr(%nyx_string* %2952)
  %2954 = call %nyx_string* @nyx_read_file(i8* %2953)
  %2955 = alloca %nyx_string*
  store %nyx_string* %2954, %nyx_string** %2955
  %2956 = load %nyx_string*, %nyx_string** %2932
  %2957 = load %nyx_string*, %nyx_string** %2889
  %2958 = call i1 @nyx_string_equals(%nyx_string* %2956, %nyx_string* %2957)
  br i1 %2958, label %then629, label %else630
then629:
  %2959 = load %nyx_string*, %nyx_string** %dir.ptr
  %2960 = load %nyx_string*, %nyx_string** %2892
  %2961 = call %nyx_string* @nyx_string_concat(%nyx_string* %2959, %nyx_string* %2960)
  %2962 = load %nyx_string*, %nyx_string** %2955
  %2963 = load %nyx_string*, %nyx_string** %lang.ptr
  %2964 = call i64 @seed_file(%nyx_string* %2961, %nyx_string* %2962, %nyx_string* %2963)
  br label %merge631
else630:
  br label %merge631
merge631:
  %2965 = load %nyx_string*, %nyx_string** %2932
  %2966 = load %nyx_string*, %nyx_string** %2895
  %2967 = call i1 @nyx_string_equals(%nyx_string* %2965, %nyx_string* %2966)
  br i1 %2967, label %then632, label %else633
then632:
  %2968 = load %nyx_string*, %nyx_string** %dir.ptr
  %2969 = load %nyx_string*, %nyx_string** %2898
  %2970 = call %nyx_string* @nyx_string_concat(%nyx_string* %2968, %nyx_string* %2969)
  %2971 = load %nyx_string*, %nyx_string** %2955
  %2972 = load %nyx_string*, %nyx_string** %lang.ptr
  %2973 = call i64 @seed_file(%nyx_string* %2970, %nyx_string* %2971, %nyx_string* %2972)
  br label %merge634
else633:
  br label %merge634
merge634:
  %2974 = load %nyx_string*, %nyx_string** %2932
  %2975 = load %nyx_string*, %nyx_string** %2901
  %2976 = call i1 @nyx_string_equals(%nyx_string* %2974, %nyx_string* %2975)
  br i1 %2976, label %then635, label %else636
then635:
  %2977 = load %nyx_string*, %nyx_string** %2904
  %2978 = load %nyx_string*, %nyx_string** %dir.ptr
  %2979 = call %nyx_string* @nyx_string_concat(%nyx_string* %2977, %nyx_string* %2978)
  %2980 = load %nyx_string*, %nyx_string** %2907
  %2981 = call %nyx_string* @nyx_string_concat(%nyx_string* %2979, %nyx_string* %2980)
  %2982 = call i8* @nyx_string_to_cstr(%nyx_string* %2981)
  %2983 = call %nyx_string* @nyx_exec(i8* %2982)
  %2984 = load %nyx_string*, %nyx_string** %dir.ptr
  %2985 = load %nyx_string*, %nyx_string** %2910
  %2986 = call %nyx_string* @nyx_string_concat(%nyx_string* %2984, %nyx_string* %2985)
  %2987 = load %nyx_string*, %nyx_string** %2955
  %2988 = load %nyx_string*, %nyx_string** %lang.ptr
  %2989 = call i64 @seed_file(%nyx_string* %2986, %nyx_string* %2987, %nyx_string* %2988)
  br label %merge637
else636:
  br label %merge637
merge637:
  br label %merge628
else627:
  %2990 = load %nyx_string*, %nyx_string** %2913
  %2991 = load %nyx_string*, %nyx_string** %2932
  %2992 = call %nyx_string* @nyx_string_concat(%nyx_string* %2990, %nyx_string* %2991)
  %2993 = load %nyx_string*, %nyx_string** %2916
  %2994 = call %nyx_string* @nyx_string_concat(%nyx_string* %2992, %nyx_string* %2993)
  %2995 = load %nyx_string*, %nyx_string** %2948
  %2996 = call %nyx_string* @nyx_string_concat(%nyx_string* %2994, %nyx_string* %2995)
  %2997 = load %nyx_string*, %nyx_string** %2919
  %2998 = call %nyx_string* @nyx_string_concat(%nyx_string* %2996, %nyx_string* %2997)
  %2999 = call i8* @nyx_string_to_cstr(%nyx_string* %2998)
  call void @nyx_print_string(i8* %2999)
  br label %merge628
merge628:
  br label %merge625
else624:
  br label %merge625
merge625:
  %3000 = load i64, i64* %2874
  %3001 = add i64 %3000, 1
  store i64 %3001, i64* %2874
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
  %3002 = call %nyx_string* @resolve_seed_home()
  %3003 = alloca %nyx_string*
  store %nyx_string* %3002, %nyx_string** %3003
  %3004 = load %nyx_string*, %nyx_string** %3003
  %3005 = getelementptr [11 x i8], [11 x i8]* @.str280, i32 0, i32 0
  %3006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %3005, i64 10)
  %3007 = call %nyx_string* @nyx_string_concat(%nyx_string* %3004, %nyx_string* %3006)
  %3008 = alloca %nyx_string*
  store %nyx_string* %3007, %nyx_string** %3008
  %3009 = load %nyx_string*, %nyx_string** %3008
  %3010 = getelementptr [2 x i8], [2 x i8]* @.str281, i32 0, i32 0
  %3011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %3010, i64 1)
  %3012 = call %nyx_string* @nyx_string_concat(%nyx_string* %3009, %nyx_string* %3011)
  %3013 = load %nyx_string*, %nyx_string** %lang.ptr
  %3014 = call %nyx_string* @nyx_string_concat(%nyx_string* %3012, %nyx_string* %3013)
  %3015 = alloca %nyx_string*
  store %nyx_string* %3014, %nyx_string** %3015
  %3016 = alloca i1
  store i1 0, i1* %3016
  %3017 = load %nyx_string*, %nyx_string** %3003
  %3018 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %3019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %3018, i64 0)
  %3020 = call i1 @nyx_string_equals(%nyx_string* %3017, %nyx_string* %3019)
  %3021 = xor i1 %3020, true
  br i1 %3021, label %then638, label %else639
then638:
  %3022 = load %nyx_string*, %nyx_string** %3015
  %3023 = getelementptr [11 x i8], [11 x i8]* @.str283, i32 0, i32 0
  %3024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %3023, i64 10)
  %3025 = call %nyx_string* @nyx_string_concat(%nyx_string* %3022, %nyx_string* %3024)
  %3026 = call i8* @nyx_string_to_cstr(%nyx_string* %3025)
  %3027 = call i1 @nyx_file_exists(i8* %3026)
  br i1 %3027, label %then641, label %else642
then641:
  store i1 1, i1* %3016
  br label %merge643
else642:
  br label %merge643
merge643:
  br label %merge640
else639:
  br label %merge640
merge640:
  %3028 = load i1, i1* %3016
  %3029 = icmp eq i1 %3028, 0
  br i1 %3029, label %then644, label %else645
then644:
  %3030 = getelementptr [74 x i8], [74 x i8]* @.str284, i32 0, i32 0
  %3031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %3030, i64 73)
  %3032 = load %nyx_string*, %nyx_string** %lang.ptr
  %3033 = call %nyx_string* @nyx_string_concat(%nyx_string* %3031, %nyx_string* %3032)
  %3034 = getelementptr [84 x i8], [84 x i8]* @.str285, i32 0, i32 0
  %3035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %3034, i64 83)
  %3036 = call %nyx_string* @nyx_string_concat(%nyx_string* %3033, %nyx_string* %3035)
  %3037 = call i8* @nyx_string_to_cstr(%nyx_string* %3036)
  call void @nyx_print_string(i8* %3037)
  %3038 = getelementptr [82 x i8], [82 x i8]* @.str286, i32 0, i32 0
  %3039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %3038, i64 81)
  %3040 = call i8* @nyx_string_to_cstr(%nyx_string* %3039)
  call void @nyx_print_string(i8* %3040)
  ret i64 0
else645:
  br label %merge646
merge646:
  %3041 = load %nyx_string*, %nyx_string** %3015
  %3042 = getelementptr [11 x i8], [11 x i8]* @.str287, i32 0, i32 0
  %3043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %3042, i64 10)
  %3044 = call %nyx_string* @nyx_string_concat(%nyx_string* %3041, %nyx_string* %3043)
  %3045 = call i8* @nyx_string_to_cstr(%nyx_string* %3044)
  %3046 = call %nyx_string* @nyx_read_file(i8* %3045)
  %3047 = alloca %nyx_string*
  store %nyx_string* %3046, %nyx_string** %3047
  %3048 = load %nyx_string*, %nyx_string** %dir.ptr
  %3049 = getelementptr [11 x i8], [11 x i8]* @.str288, i32 0, i32 0
  %3050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %3049, i64 10)
  %3051 = call %nyx_string* @nyx_string_concat(%nyx_string* %3048, %nyx_string* %3050)
  %3052 = load %nyx_string*, %nyx_string** %3047
  %3053 = load %nyx_string*, %nyx_string** %lang.ptr
  %3054 = call %nyx_string* @agents_seed(%nyx_string* %3052, %nyx_string* %3053)
  %3055 = call i8* @nyx_string_to_cstr(%nyx_string* %3051)
  %3056 = call i1 @nyx_write_file_safe(i8* %3055, %nyx_string* %3054)
  %3057 = load %nyx_string*, %nyx_string** %dir.ptr
  %3058 = getelementptr [17 x i8], [17 x i8]* @.str289, i32 0, i32 0
  %3059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %3058, i64 16)
  %3060 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3059)
  %3061 = call i1 @run_capabilities(%nyx_string* %3060)
  %3062 = alloca i1
  store i1 %3061, i1* %3062
  %3063 = getelementptr [11 x i8], [11 x i8]* @.str290, i32 0, i32 0
  %3064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %3063, i64 10)
  %3065 = load %nyx_string*, %nyx_string** %dir.ptr
  %3066 = call %nyx_string* @nyx_string_concat(%nyx_string* %3064, %nyx_string* %3065)
  %3067 = getelementptr [18 x i8], [18 x i8]* @.str291, i32 0, i32 0
  %3068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %3067, i64 17)
  %3069 = call %nyx_string* @nyx_string_concat(%nyx_string* %3066, %nyx_string* %3068)
  %3070 = call i8* @nyx_string_to_cstr(%nyx_string* %3069)
  %3071 = call %nyx_string* @nyx_exec(i8* %3070)
  %3072 = load %nyx_string*, %nyx_string** %3008
  %3073 = getelementptr [20 x i8], [20 x i8]* @.str292, i32 0, i32 0
  %3074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %3073, i64 19)
  %3075 = call %nyx_string* @nyx_string_concat(%nyx_string* %3072, %nyx_string* %3074)
  %3076 = alloca %nyx_string*
  store %nyx_string* %3075, %nyx_string** %3076
  %3077 = load %nyx_string*, %nyx_string** %3076
  %3078 = call i8* @nyx_string_to_cstr(%nyx_string* %3077)
  %3079 = call i1 @nyx_file_exists(i8* %3078)
  br i1 %3079, label %then647, label %else648
then647:
  %3080 = load %nyx_string*, %nyx_string** %3076
  %3081 = call i8* @nyx_string_to_cstr(%nyx_string* %3080)
  %3082 = call %nyx_string* @nyx_read_file(i8* %3081)
  %3083 = alloca %nyx_string*
  store %nyx_string* %3082, %nyx_string** %3083
  %3084 = load %nyx_string*, %nyx_string** %dir.ptr
  %3085 = getelementptr [17 x i8], [17 x i8]* @.str293, i32 0, i32 0
  %3086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %3085, i64 16)
  %3087 = call %nyx_string* @nyx_string_concat(%nyx_string* %3084, %nyx_string* %3086)
  %3088 = load %nyx_string*, %nyx_string** %3083
  %3089 = load %nyx_string*, %nyx_string** %lang.ptr
  %3090 = call i64 @seed_file(%nyx_string* %3087, %nyx_string* %3088, %nyx_string* %3089)
  br label %merge649
else648:
  %3091 = getelementptr [14 x i8], [14 x i8]* @.str294, i32 0, i32 0
  %3092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %3091, i64 13)
  %3093 = load %nyx_string*, %nyx_string** %3076
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3092, %nyx_string* %3093)
  %3095 = getelementptr [71 x i8], [71 x i8]* @.str295, i32 0, i32 0
  %3096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %3095, i64 70)
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3096)
  %3098 = call i8* @nyx_string_to_cstr(%nyx_string* %3097)
  call void @nyx_print_string(i8* %3098)
  %3099 = getelementptr [111 x i8], [111 x i8]* @.str296, i32 0, i32 0
  %3100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %3099, i64 110)
  %3101 = call i8* @nyx_string_to_cstr(%nyx_string* %3100)
  call void @nyx_print_string(i8* %3101)
  br label %merge649
merge649:
  %3102 = load %nyx_string*, %nyx_string** %3015
  %3103 = getelementptr [17 x i8], [17 x i8]* @.str297, i32 0, i32 0
  %3104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %3103, i64 16)
  %3105 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3104)
  %3106 = alloca %nyx_string*
  store %nyx_string* %3105, %nyx_string** %3106
  %3107 = load %nyx_string*, %nyx_string** %3106
  %3108 = call i8* @nyx_string_to_cstr(%nyx_string* %3107)
  %3109 = call i1 @nyx_file_exists(i8* %3108)
  br i1 %3109, label %then650, label %else651
then650:
  %3110 = load %nyx_string*, %nyx_string** %3106
  %3111 = call i8* @nyx_string_to_cstr(%nyx_string* %3110)
  %3112 = call { i64, i8* }* @nyx_readdir(i8* %3111)
  %3113 = alloca { i64, i8* }*
  store { i64, i8* }* %3112, { i64, i8* }** %3113
  %3114 = alloca i64
  store i64 0, i64* %3114
  %3115 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %3115, i64 1)
  %3117 = alloca %nyx_string*
  store %nyx_string* %3116, %nyx_string** %3117
  %3118 = getelementptr [18 x i8], [18 x i8]* @.str299, i32 0, i32 0
  %3119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %3118, i64 17)
  %3120 = alloca %nyx_string*
  store %nyx_string* %3119, %nyx_string** %3120
  %3121 = call i8* @llvm.stacksave()
  br label %while_cond653
while_cond653:
  %3122 = load i64, i64* %3114
  %3123 = load { i64, i8* }*, { i64, i8* }** %3113
  %3124 = call i64 @nyx_array_length({ i64, i8* }* %3123)
  %3125 = icmp slt i64 %3122, %3124
  br i1 %3125, label %while_body654, label %while_end655
while_body654:
  call void @llvm.stackrestore(i8* %3121)
  %3126 = load { i64, i8* }*, { i64, i8* }** %3113
  %3127 = load i64, i64* %3114
  %3128 = call i64 @nyx_array_get_checked({ i64, i8* }* %3126, i64 %3127, i64 2)
  %3129 = inttoptr i64 %3128 to %nyx_string*
  %3130 = alloca %nyx_string*
  store %nyx_string* %3129, %nyx_string** %3130
  %3131 = load %nyx_string*, %nyx_string** %3106
  %3132 = load %nyx_string*, %nyx_string** %3117
  %3133 = call %nyx_string* @nyx_string_concat(%nyx_string* %3131, %nyx_string* %3132)
  %3134 = load %nyx_string*, %nyx_string** %3130
  %3135 = call %nyx_string* @nyx_string_concat(%nyx_string* %3133, %nyx_string* %3134)
  %3136 = alloca %nyx_string*
  store %nyx_string* %3135, %nyx_string** %3136
  %3137 = load %nyx_string*, %nyx_string** %3136
  %3138 = call i8* @nyx_string_to_cstr(%nyx_string* %3137)
  %3139 = call i1 @nyx_file_exists(i8* %3138)
  br i1 %3139, label %then656, label %else657
then656:
  %3140 = load %nyx_string*, %nyx_string** %3136
  %3141 = call i8* @nyx_string_to_cstr(%nyx_string* %3140)
  %3142 = call %nyx_string* @nyx_read_file(i8* %3141)
  %3143 = alloca %nyx_string*
  store %nyx_string* %3142, %nyx_string** %3143
  %3144 = load %nyx_string*, %nyx_string** %dir.ptr
  %3145 = load %nyx_string*, %nyx_string** %3120
  %3146 = call %nyx_string* @nyx_string_concat(%nyx_string* %3144, %nyx_string* %3145)
  %3147 = load %nyx_string*, %nyx_string** %3130
  %3148 = call %nyx_string* @nyx_string_concat(%nyx_string* %3146, %nyx_string* %3147)
  %3149 = load %nyx_string*, %nyx_string** %3143
  %3150 = load %nyx_string*, %nyx_string** %lang.ptr
  %3151 = call i64 @seed_file(%nyx_string* %3148, %nyx_string* %3149, %nyx_string* %3150)
  br label %merge658
else657:
  br label %merge658
merge658:
  %3152 = load i64, i64* %3114
  %3153 = add i64 %3152, 1
  store i64 %3153, i64* %3114
  br label %while_cond653
while_end655:
  br label %merge652
else651:
  br label %merge652
merge652:
  %3154 = load %nyx_string*, %nyx_string** %dir.ptr
  %3155 = load %nyx_string*, %nyx_string** %lang.ptr
  %3156 = load %nyx_string*, %nyx_string** %agents.ptr
  %3157 = call i64 @seed_adapters(%nyx_string* %3154, %nyx_string* %3155, %nyx_string* %3156)
  ret i64 0
}

define internal %nyx_string* @sdd_generated_marker(
) {
  %3158 = getelementptr [28 x i8], [28 x i8]* @.str300, i32 0, i32 0
  %3159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %3158, i64 27)
  ret %nyx_string* %3159
}

define internal %nyx_string* @sdd_msg(
%nyx_string* %lang.param, %nyx_string* %en.param, %nyx_string* %es.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %3160 = load %nyx_string*, %nyx_string** %lang.ptr
  %3161 = getelementptr [3 x i8], [3 x i8]* @.str301, i32 0, i32 0
  %3162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %3161, i64 2)
  %3163 = call i1 @nyx_string_equals(%nyx_string* %3160, %nyx_string* %3162)
  br i1 %3163, label %then659, label %else660
then659:
  %3164 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %3164
else660:
  br label %merge661
merge661:
  %3165 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %3165
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
  %3166 = load %nyx_string*, %nyx_string** %dst.ptr
  %3167 = call i8* @nyx_string_to_cstr(%nyx_string* %3166)
  %3168 = call i1 @nyx_file_exists(i8* %3167)
  br i1 %3168, label %then662, label %else663
then662:
  %3169 = load %nyx_string*, %nyx_string** %lang.ptr
  %3170 = getelementptr [28 x i8], [28 x i8]* @.str302, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %3170, i64 27)
  %3172 = load %nyx_string*, %nyx_string** %dst.ptr
  %3173 = call %nyx_string* @nyx_string_concat(%nyx_string* %3171, %nyx_string* %3172)
  %3174 = getelementptr [25 x i8], [25 x i8]* @.str303, i32 0, i32 0
  %3175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %3174, i64 24)
  %3176 = load %nyx_string*, %nyx_string** %dst.ptr
  %3177 = call %nyx_string* @nyx_string_concat(%nyx_string* %3175, %nyx_string* %3176)
  %3178 = call %nyx_string* @sdd_msg(%nyx_string* %3169, %nyx_string* %3173, %nyx_string* %3177)
  %3179 = call i8* @nyx_string_to_cstr(%nyx_string* %3178)
  call void @nyx_print_string(i8* %3179)
  ret i1 0
else663:
  br label %merge664
merge664:
  %3180 = load %nyx_string*, %nyx_string** %tpl_dir.ptr
  %3181 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %3182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3181, i64 1)
  %3183 = call %nyx_string* @nyx_string_concat(%nyx_string* %3180, %nyx_string* %3182)
  %3184 = load %nyx_string*, %nyx_string** %name.ptr
  %3185 = call %nyx_string* @nyx_string_concat(%nyx_string* %3183, %nyx_string* %3184)
  %3186 = alloca %nyx_string*
  store %nyx_string* %3185, %nyx_string** %3186
  %3187 = load %nyx_string*, %nyx_string** %3186
  %3188 = call i8* @nyx_string_to_cstr(%nyx_string* %3187)
  %3189 = call i1 @nyx_file_exists(i8* %3188)
  %3190 = icmp eq i1 %3189, 0
  br i1 %3190, label %then665, label %else666
then665:
  %3191 = getelementptr [27 x i8], [27 x i8]* @.str305, i32 0, i32 0
  %3192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3191, i64 26)
  %3193 = load %nyx_string*, %nyx_string** %3186
  %3194 = call %nyx_string* @nyx_string_concat(%nyx_string* %3192, %nyx_string* %3193)
  %3195 = getelementptr [19 x i8], [19 x i8]* @.str306, i32 0, i32 0
  %3196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3195, i64 18)
  %3197 = call %nyx_string* @nyx_string_concat(%nyx_string* %3194, %nyx_string* %3196)
  %3198 = load %nyx_string*, %nyx_string** %dst.ptr
  %3199 = call %nyx_string* @nyx_string_concat(%nyx_string* %3197, %nyx_string* %3198)
  %3200 = getelementptr [16 x i8], [16 x i8]* @.str307, i32 0, i32 0
  %3201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3200, i64 15)
  %3202 = call %nyx_string* @nyx_string_concat(%nyx_string* %3199, %nyx_string* %3201)
  %3203 = call i8* @nyx_string_to_cstr(%nyx_string* %3202)
  call void @nyx_print_string(i8* %3203)
  ret i1 0
else666:
  br label %merge667
merge667:
  %3204 = load %nyx_string*, %nyx_string** %3186
  %3205 = call i8* @nyx_string_to_cstr(%nyx_string* %3204)
  %3206 = call %nyx_string* @nyx_read_file(i8* %3205)
  %3207 = alloca %nyx_string*
  store %nyx_string* %3206, %nyx_string** %3207
  %3208 = load %nyx_string*, %nyx_string** %dst.ptr
  %3209 = load %nyx_string*, %nyx_string** %3207
  %3210 = load %nyx_string*, %nyx_string** %lang.ptr
  %3211 = call i64 @seed_file(%nyx_string* %3208, %nyx_string* %3209, %nyx_string* %3210)
  %3212 = getelementptr [3 x i8], [3 x i8]* @.str308, i32 0, i32 0
  %3213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3212, i64 2)
  %3214 = load %nyx_string*, %nyx_string** %dst.ptr
  %3215 = call %nyx_string* @nyx_string_concat(%nyx_string* %3213, %nyx_string* %3214)
  %3216 = call i8* @nyx_string_to_cstr(%nyx_string* %3215)
  call void @nyx_print_string(i8* %3216)
  ret i1 1
}

define internal %nyx_string* @nx_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %3217 = getelementptr [1 x i8], [1 x i8]* @.str309, i32 0, i32 0
  %3218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3217, i64 0)
  %3219 = alloca %nyx_string*
  store %nyx_string* %3218, %nyx_string** %3219
  %3220 = alloca i64
  store i64 0, i64* %3220
  %3221 = getelementptr [2 x i8], [2 x i8]* @.str310, i32 0, i32 0
  %3222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3221, i64 1)
  %3223 = alloca %nyx_string*
  store %nyx_string* %3222, %nyx_string** %3223
  %3224 = getelementptr [3 x i8], [3 x i8]* @.str311, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3224, i64 2)
  %3226 = alloca %nyx_string*
  store %nyx_string* %3225, %nyx_string** %3226
  %3227 = getelementptr [2 x i8], [2 x i8]* @.str312, i32 0, i32 0
  %3228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3227, i64 1)
  %3229 = alloca %nyx_string*
  store %nyx_string* %3228, %nyx_string** %3229
  %3230 = getelementptr [3 x i8], [3 x i8]* @.str313, i32 0, i32 0
  %3231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3230, i64 2)
  %3232 = alloca %nyx_string*
  store %nyx_string* %3231, %nyx_string** %3232
  %3233 = call i8* @llvm.stacksave()
  br label %while_cond668
while_cond668:
  %3234 = load i64, i64* %3220
  %3235 = load %nyx_string*, %nyx_string** %s.ptr
  %3236 = call i64 @nyx_string_byte_length(%nyx_string* %3235)
  %3237 = icmp slt i64 %3234, %3236
  br i1 %3237, label %while_body669, label %while_end670
while_body669:
  call void @llvm.stackrestore(i8* %3233)
  %3238 = load %nyx_string*, %nyx_string** %s.ptr
  %3239 = load i64, i64* %3220
  %3240 = load i64, i64* %3220
  %3241 = add i64 %3240, 1
  %3242 = call %nyx_string* @nyx_string_substring(%nyx_string* %3238, i64 %3239, i64 %3241)
  %3243 = alloca %nyx_string*
  store %nyx_string* %3242, %nyx_string** %3243
  %3244 = load %nyx_string*, %nyx_string** %3243
  %3245 = load %nyx_string*, %nyx_string** %3223
  %3246 = call i1 @nyx_string_equals(%nyx_string* %3244, %nyx_string* %3245)
  br i1 %3246, label %then671, label %else672
then671:
  %3247 = load %nyx_string*, %nyx_string** %3219
  %3248 = load %nyx_string*, %nyx_string** %3226
  %3249 = call %nyx_string* @nyx_string_concat(%nyx_string* %3247, %nyx_string* %3248)
  store %nyx_string* %3249, %nyx_string** %3219
  br label %merge673
else672:
  %3250 = load %nyx_string*, %nyx_string** %3243
  %3251 = load %nyx_string*, %nyx_string** %3229
  %3252 = call i1 @nyx_string_equals(%nyx_string* %3250, %nyx_string* %3251)
  br i1 %3252, label %then674, label %else675
then674:
  %3253 = load %nyx_string*, %nyx_string** %3219
  %3254 = load %nyx_string*, %nyx_string** %3232
  %3255 = call %nyx_string* @nyx_string_concat(%nyx_string* %3253, %nyx_string* %3254)
  store %nyx_string* %3255, %nyx_string** %3219
  br label %merge676
else675:
  %3256 = load %nyx_string*, %nyx_string** %3219
  %3257 = load %nyx_string*, %nyx_string** %3243
  %3258 = call %nyx_string* @nyx_string_concat(%nyx_string* %3256, %nyx_string* %3257)
  store %nyx_string* %3258, %nyx_string** %3219
  br label %merge676
merge676:
  br label %merge673
merge673:
  %3259 = load i64, i64* %3220
  %3260 = add i64 %3259, 1
  store i64 %3260, i64* %3220
  br label %while_cond668
while_end670:
  %3261 = load %nyx_string*, %nyx_string** %3219
  ret %nyx_string* %3261
}

define internal %nyx_string* @evidence_body(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3262 = call %nyx_string* @toolchain_version()
  %3263 = alloca %nyx_string*
  store %nyx_string* %3262, %nyx_string** %3263
  %3264 = getelementptr [1 x i8], [1 x i8]* @.str314, i32 0, i32 0
  %3265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3264, i64 0)
  %3266 = alloca %nyx_string*
  store %nyx_string* %3265, %nyx_string** %3266
  %3267 = load %nyx_string*, %nyx_string** %3266
  %3268 = load %nyx_string*, %nyx_string** %lang.ptr
  %3269 = getelementptr [20 x i8], [20 x i8]* @.str315, i32 0, i32 0
  %3270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3269, i64 19)
  %3271 = load %nyx_string*, %nyx_string** %3263
  %3272 = call %nyx_string* @nyx_string_concat(%nyx_string* %3270, %nyx_string* %3271)
  %3273 = getelementptr [2 x i8], [2 x i8]* @.str316, i32 0, i32 0
  %3274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3273, i64 1)
  %3275 = call %nyx_string* @nyx_string_concat(%nyx_string* %3272, %nyx_string* %3274)
  %3276 = getelementptr [21 x i8], [21 x i8]* @.str317, i32 0, i32 0
  %3277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3276, i64 20)
  %3278 = load %nyx_string*, %nyx_string** %3263
  %3279 = call %nyx_string* @nyx_string_concat(%nyx_string* %3277, %nyx_string* %3278)
  %3280 = getelementptr [2 x i8], [2 x i8]* @.str318, i32 0, i32 0
  %3281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3280, i64 1)
  %3282 = call %nyx_string* @nyx_string_concat(%nyx_string* %3279, %nyx_string* %3281)
  %3283 = call %nyx_string* @sdd_msg(%nyx_string* %3268, %nyx_string* %3275, %nyx_string* %3282)
  %3284 = call %nyx_string* @nyx_string_concat(%nyx_string* %3267, %nyx_string* %3283)
  store %nyx_string* %3284, %nyx_string** %3266
  %3285 = load %nyx_string*, %nyx_string** %3266
  %3286 = getelementptr [7 x i8], [7 x i8]* @.str319, i32 0, i32 0
  %3287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3286, i64 6)
  %3288 = call %nyx_string* @nyx_string_concat(%nyx_string* %3285, %nyx_string* %3287)
  %3289 = call %nyx_string* @sdd_generated_marker()
  %3290 = call %nyx_string* @nyx_string_concat(%nyx_string* %3288, %nyx_string* %3289)
  %3291 = getelementptr [110 x i8], [110 x i8]* @.str320, i32 0, i32 0
  %3292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3291, i64 109)
  %3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %3290, %nyx_string* %3292)
  store %nyx_string* %3293, %nyx_string** %3266
  %3294 = load %nyx_string*, %nyx_string** %3266
  %3295 = load %nyx_string*, %nyx_string** %lang.ptr
  %3296 = getelementptr [319 x i8], [319 x i8]* @.str321, i32 0, i32 0
  %3297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3296, i64 318)
  %3298 = getelementptr [334 x i8], [334 x i8]* @.str322, i32 0, i32 0
  %3299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3298, i64 333)
  %3300 = call %nyx_string* @sdd_msg(%nyx_string* %3295, %nyx_string* %3297, %nyx_string* %3299)
  %3301 = call %nyx_string* @nyx_string_concat(%nyx_string* %3294, %nyx_string* %3300)
  store %nyx_string* %3301, %nyx_string** %3266
  %3302 = load %nyx_string*, %nyx_string** %3266
  %3303 = getelementptr [2 x i8], [2 x i8]* @.str323, i32 0, i32 0
  %3304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3303, i64 1)
  %3305 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3304)
  store %nyx_string* %3305, %nyx_string** %3266
  %3306 = call { i64, i8* }* @gotchas_table()
  %3307 = alloca { i64, i8* }*
  store { i64, i8* }* %3306, { i64, i8* }** %3307
  %3308 = alloca i64
  store i64 0, i64* %3308
  %3309 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %3310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3309, i64 4)
  %3311 = alloca %nyx_string*
  store %nyx_string* %3310, %nyx_string** %3311
  %3312 = getelementptr [9 x i8], [9 x i8]* @.str325, i32 0, i32 0
  %3313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3312, i64 8)
  %3314 = alloca %nyx_string*
  store %nyx_string* %3313, %nyx_string** %3314
  %3315 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3315, i64 0)
  %3317 = alloca %nyx_string*
  store %nyx_string* %3316, %nyx_string** %3317
  %3318 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %3319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3318, i64 4)
  %3320 = alloca %nyx_string*
  store %nyx_string* %3319, %nyx_string** %3320
  %3321 = getelementptr [5 x i8], [5 x i8]* @.str328, i32 0, i32 0
  %3322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3321, i64 4)
  %3323 = alloca %nyx_string*
  store %nyx_string* %3322, %nyx_string** %3323
  %3324 = getelementptr [3 x i8], [3 x i8]* @.str329, i32 0, i32 0
  %3325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3324, i64 2)
  %3326 = alloca %nyx_string*
  store %nyx_string* %3325, %nyx_string** %3326
  %3327 = getelementptr [6 x i8], [6 x i8]* @.str330, i32 0, i32 0
  %3328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3327, i64 5)
  %3329 = alloca %nyx_string*
  store %nyx_string* %3328, %nyx_string** %3329
  %3330 = getelementptr [7 x i8], [7 x i8]* @.str331, i32 0, i32 0
  %3331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3330, i64 6)
  %3332 = alloca %nyx_string*
  store %nyx_string* %3331, %nyx_string** %3332
  %3333 = getelementptr [5 x i8], [5 x i8]* @.str332, i32 0, i32 0
  %3334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3333, i64 4)
  %3335 = alloca %nyx_string*
  store %nyx_string* %3334, %nyx_string** %3335
  %3336 = getelementptr [9 x i8], [9 x i8]* @.str333, i32 0, i32 0
  %3337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3336, i64 8)
  %3338 = alloca %nyx_string*
  store %nyx_string* %3337, %nyx_string** %3338
  %3339 = getelementptr [3 x i8], [3 x i8]* @.str334, i32 0, i32 0
  %3340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3339, i64 2)
  %3341 = alloca %nyx_string*
  store %nyx_string* %3340, %nyx_string** %3341
  %3342 = getelementptr [9 x i8], [9 x i8]* @.str335, i32 0, i32 0
  %3343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3342, i64 8)
  %3344 = alloca %nyx_string*
  store %nyx_string* %3343, %nyx_string** %3344
  %3345 = getelementptr [5 x i8], [5 x i8]* @.str336, i32 0, i32 0
  %3346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3345, i64 4)
  %3347 = alloca %nyx_string*
  store %nyx_string* %3346, %nyx_string** %3347
  %3348 = getelementptr [5 x i8], [5 x i8]* @.str337, i32 0, i32 0
  %3349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3348, i64 4)
  %3350 = alloca %nyx_string*
  store %nyx_string* %3349, %nyx_string** %3350
  %3351 = getelementptr [9 x i8], [9 x i8]* @.str338, i32 0, i32 0
  %3352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3351, i64 8)
  %3353 = alloca %nyx_string*
  store %nyx_string* %3352, %nyx_string** %3353
  %3354 = getelementptr [7 x i8], [7 x i8]* @.str339, i32 0, i32 0
  %3355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3354, i64 6)
  %3356 = alloca %nyx_string*
  store %nyx_string* %3355, %nyx_string** %3356
  %3357 = getelementptr [14 x i8], [14 x i8]* @.str340, i32 0, i32 0
  %3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3357, i64 13)
  %3359 = alloca %nyx_string*
  store %nyx_string* %3358, %nyx_string** %3359
  %3360 = getelementptr [2 x i8], [2 x i8]* @.str341, i32 0, i32 0
  %3361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3360, i64 1)
  %3362 = alloca %nyx_string*
  store %nyx_string* %3361, %nyx_string** %3362
  %3363 = getelementptr [12 x i8], [12 x i8]* @.str342, i32 0, i32 0
  %3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3363, i64 11)
  %3365 = alloca %nyx_string*
  store %nyx_string* %3364, %nyx_string** %3365
  %3366 = getelementptr [2 x i8], [2 x i8]* @.str343, i32 0, i32 0
  %3367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3366, i64 1)
  %3368 = alloca %nyx_string*
  store %nyx_string* %3367, %nyx_string** %3368
  %3369 = call i8* @llvm.stacksave()
  br label %while_cond677
while_cond677:
  %3370 = load i64, i64* %3308
  %3371 = load { i64, i8* }*, { i64, i8* }** %3307
  %3372 = call i64 @nyx_array_length({ i64, i8* }* %3371)
  %3373 = icmp slt i64 %3370, %3372
  br i1 %3373, label %while_body678, label %while_end679
while_body678:
  call void @llvm.stackrestore(i8* %3369)
  %3374 = load { i64, i8* }*, { i64, i8* }** %3307
  %3375 = load i64, i64* %3308
  %3376 = call i64 @nyx_array_get({ i64, i8* }* %3374, i64 %3375)
  %3377 = inttoptr i64 %3376 to { i64, i8* }*
  %3378 = alloca { i64, i8* }*
  store { i64, i8* }* %3377, { i64, i8* }** %3378
  %3379 = load { i64, i8* }*, { i64, i8* }** %3378
  %3380 = load %nyx_string*, %nyx_string** %3311
  %3381 = call %nyx_string* @gotcha_field({ i64, i8* }* %3379, %nyx_string* %3380)
  %3382 = alloca %nyx_string*
  store %nyx_string* %3381, %nyx_string** %3382
  %3383 = load { i64, i8* }*, { i64, i8* }** %3378
  %3384 = load %nyx_string*, %nyx_string** %3314
  %3385 = call %nyx_string* @gotcha_field({ i64, i8* }* %3383, %nyx_string* %3384)
  %3386 = alloca %nyx_string*
  store %nyx_string* %3385, %nyx_string** %3386
  %3387 = load %nyx_string*, %nyx_string** %3386
  %3388 = load %nyx_string*, %nyx_string** %3317
  %3389 = call i1 @nyx_string_equals(%nyx_string* %3387, %nyx_string* %3388)
  br i1 %3389, label %then680, label %else681
then680:
  %3390 = alloca i1
  store i1 true, i1* %3390
  %3391 = load %nyx_string*, %nyx_string** %3382
  %3392 = load %nyx_string*, %nyx_string** %3320
  %3393 = call i1 @nyx_string_equals(%nyx_string* %3391, %nyx_string* %3392)
  br i1 %3393, label %sc_or_end684, label %sc_or_rhs683
sc_or_rhs683:
  %3394 = load %nyx_string*, %nyx_string** %3382
  %3395 = load %nyx_string*, %nyx_string** %3323
  %3396 = call i1 @nyx_string_equals(%nyx_string* %3394, %nyx_string* %3395)
  store i1 %3396, i1* %3390
  br label %sc_or_end684
sc_or_end684:
  %3397 = load i1, i1* %3390
  br i1 %3397, label %then685, label %else686
then685:
  %3398 = load { i64, i8* }*, { i64, i8* }** %3378
  %3399 = load %nyx_string*, %nyx_string** %3326
  %3400 = call %nyx_string* @gotcha_field({ i64, i8* }* %3398, %nyx_string* %3399)
  %3401 = alloca %nyx_string*
  store %nyx_string* %3400, %nyx_string** %3401
  %3402 = load { i64, i8* }*, { i64, i8* }** %3378
  %3403 = load %nyx_string*, %nyx_string** %3329
  %3404 = call %nyx_string* @gotcha_field({ i64, i8* }* %3402, %nyx_string* %3403)
  %3405 = alloca %nyx_string*
  store %nyx_string* %3404, %nyx_string** %3405
  %3406 = load { i64, i8* }*, { i64, i8* }** %3378
  %3407 = load %nyx_string*, %nyx_string** %3332
  %3408 = call %nyx_string* @gotcha_field({ i64, i8* }* %3406, %nyx_string* %3407)
  %3409 = alloca %nyx_string*
  store %nyx_string* %3408, %nyx_string** %3409
  %3410 = load { i64, i8* }*, { i64, i8* }** %3378
  %3411 = load %nyx_string*, %nyx_string** %3335
  %3412 = call %nyx_string* @gotcha_field({ i64, i8* }* %3410, %nyx_string* %3411)
  %3413 = alloca %nyx_string*
  store %nyx_string* %3412, %nyx_string** %3413
  %3414 = load { i64, i8* }*, { i64, i8* }** %3378
  %3415 = load %nyx_string*, %nyx_string** %3338
  %3416 = call %nyx_string* @gotcha_field({ i64, i8* }* %3414, %nyx_string* %3415)
  %3417 = alloca %nyx_string*
  store %nyx_string* %3416, %nyx_string** %3417
  %3418 = load %nyx_string*, %nyx_string** %lang.ptr
  %3419 = load %nyx_string*, %nyx_string** %3341
  %3420 = call i1 @nyx_string_equals(%nyx_string* %3418, %nyx_string* %3419)
  br i1 %3420, label %then688, label %else689
then688:
  %3421 = load { i64, i8* }*, { i64, i8* }** %3378
  %3422 = load %nyx_string*, %nyx_string** %3344
  %3423 = call %nyx_string* @gotcha_field({ i64, i8* }* %3421, %nyx_string* %3422)
  store %nyx_string* %3423, %nyx_string** %3417
  br label %merge690
else689:
  br label %merge690
merge690:
  %3424 = load %nyx_string*, %nyx_string** %3266
  %3425 = load %nyx_string*, %nyx_string** %3347
  %3426 = call %nyx_string* @nyx_string_concat(%nyx_string* %3424, %nyx_string* %3425)
  %3427 = load %nyx_string*, %nyx_string** %3401
  %3428 = call %nyx_string* @nyx_string_concat(%nyx_string* %3426, %nyx_string* %3427)
  %3429 = load %nyx_string*, %nyx_string** %3350
  %3430 = call %nyx_string* @nyx_string_concat(%nyx_string* %3428, %nyx_string* %3429)
  %3431 = load %nyx_string*, %nyx_string** %3382
  %3432 = call %nyx_string* @nyx_string_concat(%nyx_string* %3430, %nyx_string* %3431)
  %3433 = load %nyx_string*, %nyx_string** %3353
  %3434 = call %nyx_string* @nyx_string_concat(%nyx_string* %3432, %nyx_string* %3433)
  %3435 = load %nyx_string*, %nyx_string** %3405
  %3436 = call %nyx_string* @nyx_string_concat(%nyx_string* %3434, %nyx_string* %3435)
  %3437 = load %nyx_string*, %nyx_string** %3356
  %3438 = call %nyx_string* @nyx_string_concat(%nyx_string* %3436, %nyx_string* %3437)
  %3439 = load %nyx_string*, %nyx_string** %3417
  %3440 = call %nyx_string* @nyx_string_concat(%nyx_string* %3438, %nyx_string* %3439)
  store %nyx_string* %3440, %nyx_string** %3266
  %3441 = load %nyx_string*, %nyx_string** %3409
  %3442 = load %nyx_string*, %nyx_string** %3317
  %3443 = call i1 @nyx_string_equals(%nyx_string* %3441, %nyx_string* %3442)
  %3444 = xor i1 %3443, true
  br i1 %3444, label %then691, label %else692
then691:
  %3445 = load %nyx_string*, %nyx_string** %3266
  %3446 = load %nyx_string*, %nyx_string** %3359
  %3447 = call %nyx_string* @nyx_string_concat(%nyx_string* %3445, %nyx_string* %3446)
  %3448 = load %nyx_string*, %nyx_string** %3409
  %3449 = call %nyx_string* @nyx_string_concat(%nyx_string* %3447, %nyx_string* %3448)
  %3450 = load %nyx_string*, %nyx_string** %3362
  %3451 = call %nyx_string* @nyx_string_concat(%nyx_string* %3449, %nyx_string* %3450)
  store %nyx_string* %3451, %nyx_string** %3266
  br label %merge693
else692:
  br label %merge693
merge693:
  %3452 = load %nyx_string*, %nyx_string** %3413
  %3453 = load %nyx_string*, %nyx_string** %3317
  %3454 = call i1 @nyx_string_equals(%nyx_string* %3452, %nyx_string* %3453)
  %3455 = xor i1 %3454, true
  br i1 %3455, label %then694, label %else695
then694:
  %3456 = load %nyx_string*, %nyx_string** %3266
  %3457 = load %nyx_string*, %nyx_string** %3365
  %3458 = call %nyx_string* @nyx_string_concat(%nyx_string* %3456, %nyx_string* %3457)
  %3459 = load %nyx_string*, %nyx_string** %3413
  %3460 = call %nyx_string* @nyx_string_concat(%nyx_string* %3458, %nyx_string* %3459)
  %3461 = load %nyx_string*, %nyx_string** %3362
  %3462 = call %nyx_string* @nyx_string_concat(%nyx_string* %3460, %nyx_string* %3461)
  store %nyx_string* %3462, %nyx_string** %3266
  br label %merge696
else695:
  br label %merge696
merge696:
  %3463 = load %nyx_string*, %nyx_string** %3266
  %3464 = load %nyx_string*, %nyx_string** %3368
  %3465 = call %nyx_string* @nyx_string_concat(%nyx_string* %3463, %nyx_string* %3464)
  store %nyx_string* %3465, %nyx_string** %3266
  br label %merge687
else686:
  br label %merge687
merge687:
  br label %merge682
else681:
  br label %merge682
merge682:
  %3466 = load i64, i64* %3308
  %3467 = add i64 %3466, 1
  store i64 %3467, i64* %3308
  br label %while_cond677
while_end679:
  %3468 = load %nyx_string*, %nyx_string** %3266
  %3469 = load %nyx_string*, %nyx_string** %lang.ptr
  %3470 = getelementptr [14 x i8], [14 x i8]* @.str344, i32 0, i32 0
  %3471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3470, i64 13)
  %3472 = getelementptr [16 x i8], [16 x i8]* @.str345, i32 0, i32 0
  %3473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3472, i64 15)
  %3474 = call %nyx_string* @sdd_msg(%nyx_string* %3469, %nyx_string* %3471, %nyx_string* %3473)
  %3475 = call %nyx_string* @nyx_string_concat(%nyx_string* %3468, %nyx_string* %3474)
  store %nyx_string* %3475, %nyx_string** %3266
  %3476 = load %nyx_string*, %nyx_string** %3266
  %3477 = load %nyx_string*, %nyx_string** %lang.ptr
  %3478 = getelementptr [139 x i8], [139 x i8]* @.str346, i32 0, i32 0
  %3479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3478, i64 138)
  %3480 = getelementptr [150 x i8], [150 x i8]* @.str347, i32 0, i32 0
  %3481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3480, i64 149)
  %3482 = call %nyx_string* @sdd_msg(%nyx_string* %3477, %nyx_string* %3479, %nyx_string* %3481)
  %3483 = call %nyx_string* @nyx_string_concat(%nyx_string* %3476, %nyx_string* %3482)
  store %nyx_string* %3483, %nyx_string** %3266
  %3484 = alloca i64
  store i64 0, i64* %3484
  %3485 = getelementptr [9 x i8], [9 x i8]* @.str348, i32 0, i32 0
  %3486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3485, i64 8)
  %3487 = alloca %nyx_string*
  store %nyx_string* %3486, %nyx_string** %3487
  %3488 = getelementptr [1 x i8], [1 x i8]* @.str349, i32 0, i32 0
  %3489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3488, i64 0)
  %3490 = alloca %nyx_string*
  store %nyx_string* %3489, %nyx_string** %3490
  %3491 = getelementptr [3 x i8], [3 x i8]* @.str350, i32 0, i32 0
  %3492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3491, i64 2)
  %3493 = alloca %nyx_string*
  store %nyx_string* %3492, %nyx_string** %3493
  %3494 = getelementptr [9 x i8], [9 x i8]* @.str351, i32 0, i32 0
  %3495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3494, i64 8)
  %3496 = alloca %nyx_string*
  store %nyx_string* %3495, %nyx_string** %3496
  %3497 = getelementptr [3 x i8], [3 x i8]* @.str352, i32 0, i32 0
  %3498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3497, i64 2)
  %3499 = alloca %nyx_string*
  store %nyx_string* %3498, %nyx_string** %3499
  %3500 = getelementptr [9 x i8], [9 x i8]* @.str353, i32 0, i32 0
  %3501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3500, i64 8)
  %3502 = alloca %nyx_string*
  store %nyx_string* %3501, %nyx_string** %3502
  %3503 = getelementptr [5 x i8], [5 x i8]* @.str354, i32 0, i32 0
  %3504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3503, i64 4)
  %3505 = alloca %nyx_string*
  store %nyx_string* %3504, %nyx_string** %3505
  %3506 = getelementptr [14 x i8], [14 x i8]* @.str355, i32 0, i32 0
  %3507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3506, i64 13)
  %3508 = alloca %nyx_string*
  store %nyx_string* %3507, %nyx_string** %3508
  %3509 = getelementptr [7 x i8], [7 x i8]* @.str356, i32 0, i32 0
  %3510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3509, i64 6)
  %3511 = alloca %nyx_string*
  store %nyx_string* %3510, %nyx_string** %3511
  %3512 = getelementptr [2 x i8], [2 x i8]* @.str357, i32 0, i32 0
  %3513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3512, i64 1)
  %3514 = alloca %nyx_string*
  store %nyx_string* %3513, %nyx_string** %3514
  %3515 = call i8* @llvm.stacksave()
  br label %while_cond697
while_cond697:
  %3516 = load i64, i64* %3484
  %3517 = load { i64, i8* }*, { i64, i8* }** %3307
  %3518 = call i64 @nyx_array_length({ i64, i8* }* %3517)
  %3519 = icmp slt i64 %3516, %3518
  br i1 %3519, label %while_body698, label %while_end699
while_body698:
  call void @llvm.stackrestore(i8* %3515)
  %3520 = load { i64, i8* }*, { i64, i8* }** %3307
  %3521 = load i64, i64* %3484
  %3522 = call i64 @nyx_array_get({ i64, i8* }* %3520, i64 %3521)
  %3523 = inttoptr i64 %3522 to { i64, i8* }*
  %3524 = alloca { i64, i8* }*
  store { i64, i8* }* %3523, { i64, i8* }** %3524
  %3525 = load { i64, i8* }*, { i64, i8* }** %3524
  %3526 = load %nyx_string*, %nyx_string** %3487
  %3527 = call %nyx_string* @gotcha_field({ i64, i8* }* %3525, %nyx_string* %3526)
  %3528 = alloca %nyx_string*
  store %nyx_string* %3527, %nyx_string** %3528
  %3529 = load %nyx_string*, %nyx_string** %3528
  %3530 = load %nyx_string*, %nyx_string** %3490
  %3531 = call i1 @nyx_string_equals(%nyx_string* %3529, %nyx_string* %3530)
  %3532 = xor i1 %3531, true
  br i1 %3532, label %then700, label %else701
then700:
  %3533 = load { i64, i8* }*, { i64, i8* }** %3524
  %3534 = load %nyx_string*, %nyx_string** %3493
  %3535 = call %nyx_string* @gotcha_field({ i64, i8* }* %3533, %nyx_string* %3534)
  %3536 = alloca %nyx_string*
  store %nyx_string* %3535, %nyx_string** %3536
  %3537 = load { i64, i8* }*, { i64, i8* }** %3524
  %3538 = load %nyx_string*, %nyx_string** %3496
  %3539 = call %nyx_string* @gotcha_field({ i64, i8* }* %3537, %nyx_string* %3538)
  %3540 = alloca %nyx_string*
  store %nyx_string* %3539, %nyx_string** %3540
  %3541 = load %nyx_string*, %nyx_string** %lang.ptr
  %3542 = load %nyx_string*, %nyx_string** %3499
  %3543 = call i1 @nyx_string_equals(%nyx_string* %3541, %nyx_string* %3542)
  br i1 %3543, label %then703, label %else704
then703:
  %3544 = load { i64, i8* }*, { i64, i8* }** %3524
  %3545 = load %nyx_string*, %nyx_string** %3502
  %3546 = call %nyx_string* @gotcha_field({ i64, i8* }* %3544, %nyx_string* %3545)
  store %nyx_string* %3546, %nyx_string** %3540
  br label %merge705
else704:
  br label %merge705
merge705:
  %3547 = load %nyx_string*, %nyx_string** %3266
  %3548 = load %nyx_string*, %nyx_string** %3505
  %3549 = call %nyx_string* @nyx_string_concat(%nyx_string* %3547, %nyx_string* %3548)
  %3550 = load %nyx_string*, %nyx_string** %3536
  %3551 = call %nyx_string* @nyx_string_concat(%nyx_string* %3549, %nyx_string* %3550)
  %3552 = load %nyx_string*, %nyx_string** %3508
  %3553 = call %nyx_string* @nyx_string_concat(%nyx_string* %3551, %nyx_string* %3552)
  %3554 = load %nyx_string*, %nyx_string** %3528
  %3555 = call %nyx_string* @nyx_string_concat(%nyx_string* %3553, %nyx_string* %3554)
  %3556 = load %nyx_string*, %nyx_string** %3511
  %3557 = call %nyx_string* @nyx_string_concat(%nyx_string* %3555, %nyx_string* %3556)
  %3558 = load %nyx_string*, %nyx_string** %3540
  %3559 = call %nyx_string* @nyx_string_concat(%nyx_string* %3557, %nyx_string* %3558)
  %3560 = load %nyx_string*, %nyx_string** %3514
  %3561 = call %nyx_string* @nyx_string_concat(%nyx_string* %3559, %nyx_string* %3560)
  store %nyx_string* %3561, %nyx_string** %3266
  br label %merge702
else701:
  br label %merge702
merge702:
  %3562 = load i64, i64* %3484
  %3563 = add i64 %3562, 1
  store i64 %3563, i64* %3484
  br label %while_cond697
while_end699:
  %3564 = load %nyx_string*, %nyx_string** %3266
  ret %nyx_string* %3564
}

define internal i64 @write_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3565 = load %nyx_string*, %nyx_string** %dir.ptr
  %3566 = getelementptr [20 x i8], [20 x i8]* @.str358, i32 0, i32 0
  %3567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3566, i64 19)
  %3568 = call %nyx_string* @nyx_string_concat(%nyx_string* %3565, %nyx_string* %3567)
  %3569 = call %nyx_string* @toolchain_version()
  %3570 = call %nyx_string* @nyx_string_concat(%nyx_string* %3568, %nyx_string* %3569)
  %3571 = getelementptr [4 x i8], [4 x i8]* @.str359, i32 0, i32 0
  %3572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3571, i64 3)
  %3573 = call %nyx_string* @nyx_string_concat(%nyx_string* %3570, %nyx_string* %3572)
  %3574 = alloca %nyx_string*
  store %nyx_string* %3573, %nyx_string** %3574
  %3575 = load %nyx_string*, %nyx_string** %lang.ptr
  %3576 = call %nyx_string* @evidence_body(%nyx_string* %3575)
  %3577 = load %nyx_string*, %nyx_string** %lang.ptr
  %3578 = call %nyx_string* @seed_body(%nyx_string* %3576, %nyx_string* %3577)
  %3579 = alloca %nyx_string*
  store %nyx_string* %3578, %nyx_string** %3579
  %3580 = load %nyx_string*, %nyx_string** %3574
  %3581 = call i8* @nyx_string_to_cstr(%nyx_string* %3580)
  %3582 = call i1 @nyx_file_exists(i8* %3581)
  br i1 %3582, label %then706, label %else707
then706:
  %3583 = load %nyx_string*, %nyx_string** %3574
  %3584 = call i8* @nyx_string_to_cstr(%nyx_string* %3583)
  %3585 = call %nyx_string* @nyx_read_file(i8* %3584)
  %3586 = alloca %nyx_string*
  store %nyx_string* %3585, %nyx_string** %3586
  %3587 = load %nyx_string*, %nyx_string** %3586
  %3588 = load %nyx_string*, %nyx_string** %3579
  %3589 = call i1 @nyx_string_equals(%nyx_string* %3587, %nyx_string* %3588)
  br i1 %3589, label %then709, label %else710
then709:
  ret i64 0
else710:
  br label %merge711
merge711:
  %3590 = load %nyx_string*, %nyx_string** %3586
  %3591 = call %nyx_string* @sdd_generated_marker()
  %3592 = call i64 @nyx_string_index_of(%nyx_string* %3590, %nyx_string* %3591)
  %3593 = icmp slt i64 %3592, 0
  br i1 %3593, label %then712, label %else713
then712:
  ret i64 2
else713:
  br label %merge714
merge714:
  br label %merge708
else707:
  br label %merge708
merge708:
  %3594 = load %nyx_string*, %nyx_string** %3574
  %3595 = load %nyx_string*, %nyx_string** %3579
  %3596 = call i8* @nyx_string_to_cstr(%nyx_string* %3594)
  %3597 = call i1 @nyx_write_file_safe(i8* %3596, %nyx_string* %3595)
  ret i64 1
}

define internal %nyx_string* @constitution_test_body(
) {
  %3598 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %3599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3598, i64 0)
  %3600 = alloca %nyx_string*
  store %nyx_string* %3599, %nyx_string** %3600
  %3601 = load %nyx_string*, %nyx_string** %3600
  %3602 = getelementptr [4 x i8], [4 x i8]* @.str361, i32 0, i32 0
  %3603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3602, i64 3)
  %3604 = call %nyx_string* @nyx_string_concat(%nyx_string* %3601, %nyx_string* %3603)
  %3605 = call %nyx_string* @sdd_generated_marker()
  %3606 = call %nyx_string* @nyx_string_concat(%nyx_string* %3604, %nyx_string* %3605)
  %3607 = getelementptr [80 x i8], [80 x i8]* @.str362, i32 0, i32 0
  %3608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3607, i64 79)
  %3609 = call %nyx_string* @nyx_string_concat(%nyx_string* %3606, %nyx_string* %3608)
  store %nyx_string* %3609, %nyx_string** %3600
  %3610 = load %nyx_string*, %nyx_string** %3600
  %3611 = getelementptr [96 x i8], [96 x i8]* @.str363, i32 0, i32 0
  %3612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3611, i64 95)
  %3613 = call %nyx_string* @nyx_string_concat(%nyx_string* %3610, %nyx_string* %3612)
  store %nyx_string* %3613, %nyx_string** %3600
  %3614 = load %nyx_string*, %nyx_string** %3600
  %3615 = getelementptr [72 x i8], [72 x i8]* @.str364, i32 0, i32 0
  %3616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3615, i64 71)
  %3617 = call %nyx_string* @nyx_string_concat(%nyx_string* %3614, %nyx_string* %3616)
  store %nyx_string* %3617, %nyx_string** %3600
  %3618 = load %nyx_string*, %nyx_string** %3600
  %3619 = getelementptr [20 x i8], [20 x i8]* @.str365, i32 0, i32 0
  %3620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3619, i64 19)
  %3621 = call %nyx_string* @nyx_string_concat(%nyx_string* %3618, %nyx_string* %3620)
  store %nyx_string* %3621, %nyx_string** %3600
  %3622 = load %nyx_string*, %nyx_string** %3600
  %3623 = getelementptr [2 x i8], [2 x i8]* @.str366, i32 0, i32 0
  %3624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3623, i64 1)
  %3625 = call %nyx_string* @nyx_string_concat(%nyx_string* %3622, %nyx_string* %3624)
  store %nyx_string* %3625, %nyx_string** %3600
  %3626 = load %nyx_string*, %nyx_string** %3600
  %3627 = call %nyx_string* @gotcha_scan_src()
  %3628 = call %nyx_string* @nyx_string_concat(%nyx_string* %3626, %nyx_string* %3627)
  store %nyx_string* %3628, %nyx_string** %3600
  %3629 = load %nyx_string*, %nyx_string** %3600
  %3630 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %3631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3630, i64 1)
  %3632 = call %nyx_string* @nyx_string_concat(%nyx_string* %3629, %nyx_string* %3631)
  store %nyx_string* %3632, %nyx_string** %3600
  %3633 = load %nyx_string*, %nyx_string** %3600
  %3634 = getelementptr [83 x i8], [83 x i8]* @.str368, i32 0, i32 0
  %3635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3634, i64 82)
  %3636 = call %nyx_string* @nyx_string_concat(%nyx_string* %3633, %nyx_string* %3635)
  store %nyx_string* %3636, %nyx_string** %3600
  %3637 = load %nyx_string*, %nyx_string** %3600
  %3638 = getelementptr [85 x i8], [85 x i8]* @.str369, i32 0, i32 0
  %3639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3638, i64 84)
  %3640 = call %nyx_string* @nyx_string_concat(%nyx_string* %3637, %nyx_string* %3639)
  store %nyx_string* %3640, %nyx_string** %3600
  %3641 = load %nyx_string*, %nyx_string** %3600
  %3642 = getelementptr [83 x i8], [83 x i8]* @.str370, i32 0, i32 0
  %3643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3642, i64 82)
  %3644 = call %nyx_string* @nyx_string_concat(%nyx_string* %3641, %nyx_string* %3643)
  store %nyx_string* %3644, %nyx_string** %3600
  %3645 = load %nyx_string*, %nyx_string** %3600
  %3646 = getelementptr [83 x i8], [83 x i8]* @.str371, i32 0, i32 0
  %3647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3646, i64 82)
  %3648 = call %nyx_string* @nyx_string_concat(%nyx_string* %3645, %nyx_string* %3647)
  store %nyx_string* %3648, %nyx_string** %3600
  %3649 = load %nyx_string*, %nyx_string** %3600
  %3650 = getelementptr [56 x i8], [56 x i8]* @.str372, i32 0, i32 0
  %3651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3650, i64 55)
  %3652 = call %nyx_string* @nyx_string_concat(%nyx_string* %3649, %nyx_string* %3651)
  store %nyx_string* %3652, %nyx_string** %3600
  %3653 = load %nyx_string*, %nyx_string** %3600
  %3654 = getelementptr [31 x i8], [31 x i8]* @.str373, i32 0, i32 0
  %3655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3654, i64 30)
  %3656 = call %nyx_string* @nyx_string_concat(%nyx_string* %3653, %nyx_string* %3655)
  store %nyx_string* %3656, %nyx_string** %3600
  %3657 = load %nyx_string*, %nyx_string** %3600
  %3658 = getelementptr [47 x i8], [47 x i8]* @.str374, i32 0, i32 0
  %3659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3658, i64 46)
  %3660 = call %nyx_string* @nyx_string_concat(%nyx_string* %3657, %nyx_string* %3659)
  store %nyx_string* %3660, %nyx_string** %3600
  %3661 = load %nyx_string*, %nyx_string** %3600
  %3662 = getelementptr [40 x i8], [40 x i8]* @.str375, i32 0, i32 0
  %3663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3662, i64 39)
  %3664 = call %nyx_string* @nyx_string_concat(%nyx_string* %3661, %nyx_string* %3663)
  store %nyx_string* %3664, %nyx_string** %3600
  %3665 = load %nyx_string*, %nyx_string** %3600
  %3666 = getelementptr [20 x i8], [20 x i8]* @.str376, i32 0, i32 0
  %3667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3666, i64 19)
  %3668 = call %nyx_string* @nyx_string_concat(%nyx_string* %3665, %nyx_string* %3667)
  store %nyx_string* %3668, %nyx_string** %3600
  %3669 = load %nyx_string*, %nyx_string** %3600
  %3670 = getelementptr [58 x i8], [58 x i8]* @.str377, i32 0, i32 0
  %3671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3670, i64 57)
  %3672 = call %nyx_string* @nyx_string_concat(%nyx_string* %3669, %nyx_string* %3671)
  store %nyx_string* %3672, %nyx_string** %3600
  %3673 = load %nyx_string*, %nyx_string** %3600
  %3674 = getelementptr [7 x i8], [7 x i8]* @.str378, i32 0, i32 0
  %3675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3674, i64 6)
  %3676 = call %nyx_string* @nyx_string_concat(%nyx_string* %3673, %nyx_string* %3675)
  store %nyx_string* %3676, %nyx_string** %3600
  %3677 = load %nyx_string*, %nyx_string** %3600
  %3678 = getelementptr [15 x i8], [15 x i8]* @.str379, i32 0, i32 0
  %3679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3678, i64 14)
  %3680 = call %nyx_string* @nyx_string_concat(%nyx_string* %3677, %nyx_string* %3679)
  store %nyx_string* %3680, %nyx_string** %3600
  %3681 = load %nyx_string*, %nyx_string** %3600
  %3682 = getelementptr [3 x i8], [3 x i8]* @.str380, i32 0, i32 0
  %3683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3682, i64 2)
  %3684 = call %nyx_string* @nyx_string_concat(%nyx_string* %3681, %nyx_string* %3683)
  store %nyx_string* %3684, %nyx_string** %3600
  %3685 = load %nyx_string*, %nyx_string** %3600
  %3686 = getelementptr [2 x i8], [2 x i8]* @.str381, i32 0, i32 0
  %3687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3686, i64 1)
  %3688 = call %nyx_string* @nyx_string_concat(%nyx_string* %3685, %nyx_string* %3687)
  store %nyx_string* %3688, %nyx_string** %3600
  %3689 = load %nyx_string*, %nyx_string** %3600
  %3690 = getelementptr [79 x i8], [79 x i8]* @.str382, i32 0, i32 0
  %3691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3690, i64 78)
  %3692 = call %nyx_string* @nyx_string_concat(%nyx_string* %3689, %nyx_string* %3691)
  store %nyx_string* %3692, %nyx_string** %3600
  %3693 = load %nyx_string*, %nyx_string** %3600
  %3694 = getelementptr [57 x i8], [57 x i8]* @.str383, i32 0, i32 0
  %3695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3694, i64 56)
  %3696 = call %nyx_string* @nyx_string_concat(%nyx_string* %3693, %nyx_string* %3695)
  store %nyx_string* %3696, %nyx_string** %3600
  %3697 = load %nyx_string*, %nyx_string** %3600
  %3698 = getelementptr [37 x i8], [37 x i8]* @.str384, i32 0, i32 0
  %3699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3698, i64 36)
  %3700 = call %nyx_string* @nyx_string_concat(%nyx_string* %3697, %nyx_string* %3699)
  store %nyx_string* %3700, %nyx_string** %3600
  %3701 = load %nyx_string*, %nyx_string** %3600
  %3702 = getelementptr [25 x i8], [25 x i8]* @.str385, i32 0, i32 0
  %3703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3702, i64 24)
  %3704 = call %nyx_string* @nyx_string_concat(%nyx_string* %3701, %nyx_string* %3703)
  store %nyx_string* %3704, %nyx_string** %3600
  %3705 = load %nyx_string*, %nyx_string** %3600
  %3706 = getelementptr [49 x i8], [49 x i8]* @.str386, i32 0, i32 0
  %3707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3706, i64 48)
  %3708 = call %nyx_string* @nyx_string_concat(%nyx_string* %3705, %nyx_string* %3707)
  store %nyx_string* %3708, %nyx_string** %3600
  %3709 = load %nyx_string*, %nyx_string** %3600
  %3710 = getelementptr [39 x i8], [39 x i8]* @.str387, i32 0, i32 0
  %3711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3710, i64 38)
  %3712 = call %nyx_string* @nyx_string_concat(%nyx_string* %3709, %nyx_string* %3711)
  store %nyx_string* %3712, %nyx_string** %3600
  %3713 = load %nyx_string*, %nyx_string** %3600
  %3714 = getelementptr [20 x i8], [20 x i8]* @.str388, i32 0, i32 0
  %3715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3714, i64 19)
  %3716 = call %nyx_string* @nyx_string_concat(%nyx_string* %3713, %nyx_string* %3715)
  store %nyx_string* %3716, %nyx_string** %3600
  %3717 = load %nyx_string*, %nyx_string** %3600
  %3718 = getelementptr [34 x i8], [34 x i8]* @.str389, i32 0, i32 0
  %3719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3718, i64 33)
  %3720 = call %nyx_string* @nyx_string_concat(%nyx_string* %3717, %nyx_string* %3719)
  store %nyx_string* %3720, %nyx_string** %3600
  %3721 = load %nyx_string*, %nyx_string** %3600
  %3722 = getelementptr [36 x i8], [36 x i8]* @.str390, i32 0, i32 0
  %3723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3722, i64 35)
  %3724 = call %nyx_string* @nyx_string_concat(%nyx_string* %3721, %nyx_string* %3723)
  store %nyx_string* %3724, %nyx_string** %3600
  %3725 = load %nyx_string*, %nyx_string** %3600
  %3726 = getelementptr [39 x i8], [39 x i8]* @.str391, i32 0, i32 0
  %3727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3726, i64 38)
  %3728 = call %nyx_string* @nyx_string_concat(%nyx_string* %3725, %nyx_string* %3727)
  store %nyx_string* %3728, %nyx_string** %3600
  %3729 = load %nyx_string*, %nyx_string** %3600
  %3730 = getelementptr [32 x i8], [32 x i8]* @.str392, i32 0, i32 0
  %3731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3730, i64 31)
  %3732 = call %nyx_string* @nyx_string_concat(%nyx_string* %3729, %nyx_string* %3731)
  store %nyx_string* %3732, %nyx_string** %3600
  %3733 = load %nyx_string*, %nyx_string** %3600
  %3734 = getelementptr [25 x i8], [25 x i8]* @.str393, i32 0, i32 0
  %3735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3734, i64 24)
  %3736 = call %nyx_string* @nyx_string_concat(%nyx_string* %3733, %nyx_string* %3735)
  store %nyx_string* %3736, %nyx_string** %3600
  %3737 = load %nyx_string*, %nyx_string** %3600
  %3738 = getelementptr [18 x i8], [18 x i8]* @.str394, i32 0, i32 0
  %3739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3738, i64 17)
  %3740 = call %nyx_string* @nyx_string_concat(%nyx_string* %3737, %nyx_string* %3739)
  store %nyx_string* %3740, %nyx_string** %3600
  %3741 = load %nyx_string*, %nyx_string** %3600
  %3742 = getelementptr [40 x i8], [40 x i8]* @.str395, i32 0, i32 0
  %3743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3742, i64 39)
  %3744 = call %nyx_string* @nyx_string_concat(%nyx_string* %3741, %nyx_string* %3743)
  store %nyx_string* %3744, %nyx_string** %3600
  %3745 = load %nyx_string*, %nyx_string** %3600
  %3746 = getelementptr [46 x i8], [46 x i8]* @.str396, i32 0, i32 0
  %3747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3746, i64 45)
  %3748 = call %nyx_string* @nyx_string_concat(%nyx_string* %3745, %nyx_string* %3747)
  store %nyx_string* %3748, %nyx_string** %3600
  %3749 = load %nyx_string*, %nyx_string** %3600
  %3750 = getelementptr [32 x i8], [32 x i8]* @.str397, i32 0, i32 0
  %3751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3750, i64 31)
  %3752 = call %nyx_string* @nyx_string_concat(%nyx_string* %3749, %nyx_string* %3751)
  store %nyx_string* %3752, %nyx_string** %3600
  %3753 = load %nyx_string*, %nyx_string** %3600
  %3754 = getelementptr [42 x i8], [42 x i8]* @.str398, i32 0, i32 0
  %3755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3754, i64 41)
  %3756 = call %nyx_string* @nyx_string_concat(%nyx_string* %3753, %nyx_string* %3755)
  store %nyx_string* %3756, %nyx_string** %3600
  %3757 = load %nyx_string*, %nyx_string** %3600
  %3758 = getelementptr [44 x i8], [44 x i8]* @.str399, i32 0, i32 0
  %3759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3758, i64 43)
  %3760 = call %nyx_string* @nyx_string_concat(%nyx_string* %3757, %nyx_string* %3759)
  store %nyx_string* %3760, %nyx_string** %3600
  %3761 = load %nyx_string*, %nyx_string** %3600
  %3762 = getelementptr [33 x i8], [33 x i8]* @.str400, i32 0, i32 0
  %3763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3762, i64 32)
  %3764 = call %nyx_string* @nyx_string_concat(%nyx_string* %3761, %nyx_string* %3763)
  store %nyx_string* %3764, %nyx_string** %3600
  %3765 = load %nyx_string*, %nyx_string** %3600
  %3766 = getelementptr [31 x i8], [31 x i8]* @.str401, i32 0, i32 0
  %3767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3766, i64 30)
  %3768 = call %nyx_string* @nyx_string_concat(%nyx_string* %3765, %nyx_string* %3767)
  store %nyx_string* %3768, %nyx_string** %3600
  %3769 = load %nyx_string*, %nyx_string** %3600
  %3770 = getelementptr [19 x i8], [19 x i8]* @.str402, i32 0, i32 0
  %3771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3770, i64 18)
  %3772 = call %nyx_string* @nyx_string_concat(%nyx_string* %3769, %nyx_string* %3771)
  store %nyx_string* %3772, %nyx_string** %3600
  %3773 = load %nyx_string*, %nyx_string** %3600
  %3774 = getelementptr [15 x i8], [15 x i8]* @.str403, i32 0, i32 0
  %3775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3774, i64 14)
  %3776 = call %nyx_string* @nyx_string_concat(%nyx_string* %3773, %nyx_string* %3775)
  store %nyx_string* %3776, %nyx_string** %3600
  %3777 = load %nyx_string*, %nyx_string** %3600
  %3778 = getelementptr [11 x i8], [11 x i8]* @.str404, i32 0, i32 0
  %3779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3778, i64 10)
  %3780 = call %nyx_string* @nyx_string_concat(%nyx_string* %3777, %nyx_string* %3779)
  store %nyx_string* %3780, %nyx_string** %3600
  %3781 = load %nyx_string*, %nyx_string** %3600
  %3782 = getelementptr [19 x i8], [19 x i8]* @.str405, i32 0, i32 0
  %3783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3782, i64 18)
  %3784 = call %nyx_string* @nyx_string_concat(%nyx_string* %3781, %nyx_string* %3783)
  store %nyx_string* %3784, %nyx_string** %3600
  %3785 = load %nyx_string*, %nyx_string** %3600
  %3786 = getelementptr [7 x i8], [7 x i8]* @.str406, i32 0, i32 0
  %3787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3786, i64 6)
  %3788 = call %nyx_string* @nyx_string_concat(%nyx_string* %3785, %nyx_string* %3787)
  store %nyx_string* %3788, %nyx_string** %3600
  %3789 = load %nyx_string*, %nyx_string** %3600
  %3790 = getelementptr [16 x i8], [16 x i8]* @.str407, i32 0, i32 0
  %3791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3790, i64 15)
  %3792 = call %nyx_string* @nyx_string_concat(%nyx_string* %3789, %nyx_string* %3791)
  store %nyx_string* %3792, %nyx_string** %3600
  %3793 = load %nyx_string*, %nyx_string** %3600
  %3794 = getelementptr [3 x i8], [3 x i8]* @.str408, i32 0, i32 0
  %3795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3794, i64 2)
  %3796 = call %nyx_string* @nyx_string_concat(%nyx_string* %3793, %nyx_string* %3795)
  store %nyx_string* %3796, %nyx_string** %3600
  %3797 = load %nyx_string*, %nyx_string** %3600
  %3798 = getelementptr [2 x i8], [2 x i8]* @.str409, i32 0, i32 0
  %3799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3798, i64 1)
  %3800 = call %nyx_string* @nyx_string_concat(%nyx_string* %3797, %nyx_string* %3799)
  store %nyx_string* %3800, %nyx_string** %3600
  %3801 = load %nyx_string*, %nyx_string** %3600
  %3802 = getelementptr [77 x i8], [77 x i8]* @.str410, i32 0, i32 0
  %3803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3802, i64 76)
  %3804 = call %nyx_string* @nyx_string_concat(%nyx_string* %3801, %nyx_string* %3803)
  store %nyx_string* %3804, %nyx_string** %3600
  %3805 = load %nyx_string*, %nyx_string** %3600
  %3806 = getelementptr [53 x i8], [53 x i8]* @.str411, i32 0, i32 0
  %3807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3806, i64 52)
  %3808 = call %nyx_string* @nyx_string_concat(%nyx_string* %3805, %nyx_string* %3807)
  store %nyx_string* %3808, %nyx_string** %3600
  %3809 = load %nyx_string*, %nyx_string** %3600
  %3810 = getelementptr [45 x i8], [45 x i8]* @.str412, i32 0, i32 0
  %3811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3810, i64 44)
  %3812 = call %nyx_string* @nyx_string_concat(%nyx_string* %3809, %nyx_string* %3811)
  store %nyx_string* %3812, %nyx_string** %3600
  %3813 = load %nyx_string*, %nyx_string** %3600
  %3814 = getelementptr [26 x i8], [26 x i8]* @.str413, i32 0, i32 0
  %3815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3814, i64 25)
  %3816 = call %nyx_string* @nyx_string_concat(%nyx_string* %3813, %nyx_string* %3815)
  store %nyx_string* %3816, %nyx_string** %3600
  %3817 = load %nyx_string*, %nyx_string** %3600
  %3818 = getelementptr [39 x i8], [39 x i8]* @.str414, i32 0, i32 0
  %3819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3818, i64 38)
  %3820 = call %nyx_string* @nyx_string_concat(%nyx_string* %3817, %nyx_string* %3819)
  store %nyx_string* %3820, %nyx_string** %3600
  %3821 = load %nyx_string*, %nyx_string** %3600
  %3822 = getelementptr [35 x i8], [35 x i8]* @.str415, i32 0, i32 0
  %3823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3822, i64 34)
  %3824 = call %nyx_string* @nyx_string_concat(%nyx_string* %3821, %nyx_string* %3823)
  store %nyx_string* %3824, %nyx_string** %3600
  %3825 = load %nyx_string*, %nyx_string** %3600
  %3826 = getelementptr [48 x i8], [48 x i8]* @.str416, i32 0, i32 0
  %3827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3826, i64 47)
  %3828 = call %nyx_string* @nyx_string_concat(%nyx_string* %3825, %nyx_string* %3827)
  store %nyx_string* %3828, %nyx_string** %3600
  %3829 = load %nyx_string*, %nyx_string** %3600
  %3830 = getelementptr [20 x i8], [20 x i8]* @.str417, i32 0, i32 0
  %3831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3830, i64 19)
  %3832 = call %nyx_string* @nyx_string_concat(%nyx_string* %3829, %nyx_string* %3831)
  store %nyx_string* %3832, %nyx_string** %3600
  %3833 = load %nyx_string*, %nyx_string** %3600
  %3834 = getelementptr [32 x i8], [32 x i8]* @.str418, i32 0, i32 0
  %3835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3834, i64 31)
  %3836 = call %nyx_string* @nyx_string_concat(%nyx_string* %3833, %nyx_string* %3835)
  store %nyx_string* %3836, %nyx_string** %3600
  %3837 = load %nyx_string*, %nyx_string** %3600
  %3838 = getelementptr [37 x i8], [37 x i8]* @.str419, i32 0, i32 0
  %3839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3838, i64 36)
  %3840 = call %nyx_string* @nyx_string_concat(%nyx_string* %3837, %nyx_string* %3839)
  store %nyx_string* %3840, %nyx_string** %3600
  %3841 = load %nyx_string*, %nyx_string** %3600
  %3842 = getelementptr [34 x i8], [34 x i8]* @.str420, i32 0, i32 0
  %3843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3842, i64 33)
  %3844 = call %nyx_string* @nyx_string_concat(%nyx_string* %3841, %nyx_string* %3843)
  store %nyx_string* %3844, %nyx_string** %3600
  %3845 = load %nyx_string*, %nyx_string** %3600
  %3846 = getelementptr [101 x i8], [101 x i8]* @.str421, i32 0, i32 0
  %3847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3846, i64 100)
  %3848 = call %nyx_string* @nyx_string_concat(%nyx_string* %3845, %nyx_string* %3847)
  store %nyx_string* %3848, %nyx_string** %3600
  %3849 = load %nyx_string*, %nyx_string** %3600
  %3850 = getelementptr [56 x i8], [56 x i8]* @.str422, i32 0, i32 0
  %3851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3850, i64 55)
  %3852 = call %nyx_string* @nyx_string_concat(%nyx_string* %3849, %nyx_string* %3851)
  store %nyx_string* %3852, %nyx_string** %3600
  %3853 = load %nyx_string*, %nyx_string** %3600
  %3854 = getelementptr [24 x i8], [24 x i8]* @.str423, i32 0, i32 0
  %3855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3854, i64 23)
  %3856 = call %nyx_string* @nyx_string_concat(%nyx_string* %3853, %nyx_string* %3855)
  store %nyx_string* %3856, %nyx_string** %3600
  %3857 = load %nyx_string*, %nyx_string** %3600
  %3858 = getelementptr [36 x i8], [36 x i8]* @.str424, i32 0, i32 0
  %3859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3858, i64 35)
  %3860 = call %nyx_string* @nyx_string_concat(%nyx_string* %3857, %nyx_string* %3859)
  store %nyx_string* %3860, %nyx_string** %3600
  %3861 = load %nyx_string*, %nyx_string** %3600
  %3862 = getelementptr [41 x i8], [41 x i8]* @.str425, i32 0, i32 0
  %3863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3862, i64 40)
  %3864 = call %nyx_string* @nyx_string_concat(%nyx_string* %3861, %nyx_string* %3863)
  store %nyx_string* %3864, %nyx_string** %3600
  %3865 = load %nyx_string*, %nyx_string** %3600
  %3866 = getelementptr [58 x i8], [58 x i8]* @.str426, i32 0, i32 0
  %3867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3866, i64 57)
  %3868 = call %nyx_string* @nyx_string_concat(%nyx_string* %3865, %nyx_string* %3867)
  store %nyx_string* %3868, %nyx_string** %3600
  %3869 = load %nyx_string*, %nyx_string** %3600
  %3870 = getelementptr [99 x i8], [99 x i8]* @.str427, i32 0, i32 0
  %3871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3870, i64 98)
  %3872 = call %nyx_string* @nyx_string_concat(%nyx_string* %3869, %nyx_string* %3871)
  store %nyx_string* %3872, %nyx_string** %3600
  %3873 = load %nyx_string*, %nyx_string** %3600
  %3874 = getelementptr [23 x i8], [23 x i8]* @.str428, i32 0, i32 0
  %3875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3874, i64 22)
  %3876 = call %nyx_string* @nyx_string_concat(%nyx_string* %3873, %nyx_string* %3875)
  store %nyx_string* %3876, %nyx_string** %3600
  %3877 = load %nyx_string*, %nyx_string** %3600
  %3878 = getelementptr [11 x i8], [11 x i8]* @.str429, i32 0, i32 0
  %3879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3878, i64 10)
  %3880 = call %nyx_string* @nyx_string_concat(%nyx_string* %3877, %nyx_string* %3879)
  store %nyx_string* %3880, %nyx_string** %3600
  %3881 = load %nyx_string*, %nyx_string** %3600
  %3882 = getelementptr [19 x i8], [19 x i8]* @.str430, i32 0, i32 0
  %3883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3882, i64 18)
  %3884 = call %nyx_string* @nyx_string_concat(%nyx_string* %3881, %nyx_string* %3883)
  store %nyx_string* %3884, %nyx_string** %3600
  %3885 = load %nyx_string*, %nyx_string** %3600
  %3886 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %3887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3886, i64 6)
  %3888 = call %nyx_string* @nyx_string_concat(%nyx_string* %3885, %nyx_string* %3887)
  store %nyx_string* %3888, %nyx_string** %3600
  %3889 = load %nyx_string*, %nyx_string** %3600
  %3890 = getelementptr [17 x i8], [17 x i8]* @.str432, i32 0, i32 0
  %3891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3890, i64 16)
  %3892 = call %nyx_string* @nyx_string_concat(%nyx_string* %3889, %nyx_string* %3891)
  store %nyx_string* %3892, %nyx_string** %3600
  %3893 = load %nyx_string*, %nyx_string** %3600
  %3894 = getelementptr [3 x i8], [3 x i8]* @.str433, i32 0, i32 0
  %3895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3894, i64 2)
  %3896 = call %nyx_string* @nyx_string_concat(%nyx_string* %3893, %nyx_string* %3895)
  store %nyx_string* %3896, %nyx_string** %3600
  %3897 = load %nyx_string*, %nyx_string** %3600
  %3898 = getelementptr [2 x i8], [2 x i8]* @.str434, i32 0, i32 0
  %3899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3898, i64 1)
  %3900 = call %nyx_string* @nyx_string_concat(%nyx_string* %3897, %nyx_string* %3899)
  store %nyx_string* %3900, %nyx_string** %3600
  %3901 = load %nyx_string*, %nyx_string** %3600
  %3902 = getelementptr [52 x i8], [52 x i8]* @.str435, i32 0, i32 0
  %3903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3902, i64 51)
  %3904 = call %nyx_string* @nyx_string_concat(%nyx_string* %3901, %nyx_string* %3903)
  store %nyx_string* %3904, %nyx_string** %3600
  %3905 = load %nyx_string*, %nyx_string** %3600
  %3906 = getelementptr [39 x i8], [39 x i8]* @.str436, i32 0, i32 0
  %3907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3906, i64 38)
  %3908 = call %nyx_string* @nyx_string_concat(%nyx_string* %3905, %nyx_string* %3907)
  store %nyx_string* %3908, %nyx_string** %3600
  %3909 = load %nyx_string*, %nyx_string** %3600
  %3910 = getelementptr [126 x i8], [126 x i8]* @.str437, i32 0, i32 0
  %3911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3910, i64 125)
  %3912 = call %nyx_string* @nyx_string_concat(%nyx_string* %3909, %nyx_string* %3911)
  store %nyx_string* %3912, %nyx_string** %3600
  %3913 = load %nyx_string*, %nyx_string** %3600
  %3914 = getelementptr [89 x i8], [89 x i8]* @.str438, i32 0, i32 0
  %3915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3914, i64 88)
  %3916 = call %nyx_string* @nyx_string_concat(%nyx_string* %3913, %nyx_string* %3915)
  store %nyx_string* %3916, %nyx_string** %3600
  %3917 = load %nyx_string*, %nyx_string** %3600
  %3918 = getelementptr [3 x i8], [3 x i8]* @.str439, i32 0, i32 0
  %3919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3918, i64 2)
  %3920 = call %nyx_string* @nyx_string_concat(%nyx_string* %3917, %nyx_string* %3919)
  store %nyx_string* %3920, %nyx_string** %3600
  %3921 = call { i64, i8* }* @gotchas_table()
  %3922 = alloca { i64, i8* }*
  store { i64, i8* }* %3921, { i64, i8* }** %3922
  %3923 = alloca i64
  store i64 0, i64* %3923
  %3924 = getelementptr [8 x i8], [8 x i8]* @.str440, i32 0, i32 0
  %3925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3924, i64 7)
  %3926 = alloca %nyx_string*
  store %nyx_string* %3925, %nyx_string** %3926
  %3927 = getelementptr [1 x i8], [1 x i8]* @.str441, i32 0, i32 0
  %3928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3927, i64 0)
  %3929 = alloca %nyx_string*
  store %nyx_string* %3928, %nyx_string** %3929
  %3930 = getelementptr [3 x i8], [3 x i8]* @.str442, i32 0, i32 0
  %3931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %3930, i64 2)
  %3932 = alloca %nyx_string*
  store %nyx_string* %3931, %nyx_string** %3932
  %3933 = getelementptr [9 x i8], [9 x i8]* @.str443, i32 0, i32 0
  %3934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %3933, i64 8)
  %3935 = alloca %nyx_string*
  store %nyx_string* %3934, %nyx_string** %3935
  %3936 = getelementptr [9 x i8], [9 x i8]* @.str444, i32 0, i32 0
  %3937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %3936, i64 8)
  %3938 = alloca %nyx_string*
  store %nyx_string* %3937, %nyx_string** %3938
  %3939 = getelementptr [2 x i8], [2 x i8]* @.str445, i32 0, i32 0
  %3940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %3939, i64 1)
  %3941 = alloca %nyx_string*
  store %nyx_string* %3940, %nyx_string** %3941
  %3942 = getelementptr [14 x i8], [14 x i8]* @.str446, i32 0, i32 0
  %3943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %3942, i64 13)
  %3944 = alloca %nyx_string*
  store %nyx_string* %3943, %nyx_string** %3944
  %3945 = getelementptr [3 x i8], [3 x i8]* @.str447, i32 0, i32 0
  %3946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %3945, i64 2)
  %3947 = alloca %nyx_string*
  store %nyx_string* %3946, %nyx_string** %3947
  %3948 = getelementptr [5 x i8], [5 x i8]* @.str448, i32 0, i32 0
  %3949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %3948, i64 4)
  %3950 = alloca %nyx_string*
  store %nyx_string* %3949, %nyx_string** %3950
  %3951 = getelementptr [37 x i8], [37 x i8]* @.str449, i32 0, i32 0
  %3952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %3951, i64 36)
  %3953 = alloca %nyx_string*
  store %nyx_string* %3952, %nyx_string** %3953
  %3954 = getelementptr [4 x i8], [4 x i8]* @.str450, i32 0, i32 0
  %3955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %3954, i64 3)
  %3956 = alloca %nyx_string*
  store %nyx_string* %3955, %nyx_string** %3956
  %3957 = getelementptr [33 x i8], [33 x i8]* @.str451, i32 0, i32 0
  %3958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %3957, i64 32)
  %3959 = alloca %nyx_string*
  store %nyx_string* %3958, %nyx_string** %3959
  %3960 = getelementptr [3 x i8], [3 x i8]* @.str452, i32 0, i32 0
  %3961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %3960, i64 2)
  %3962 = alloca %nyx_string*
  store %nyx_string* %3961, %nyx_string** %3962
  %3963 = getelementptr [28 x i8], [28 x i8]* @.str453, i32 0, i32 0
  %3964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %3963, i64 27)
  %3965 = alloca %nyx_string*
  store %nyx_string* %3964, %nyx_string** %3965
  %3966 = getelementptr [3 x i8], [3 x i8]* @.str454, i32 0, i32 0
  %3967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %3966, i64 2)
  %3968 = alloca %nyx_string*
  store %nyx_string* %3967, %nyx_string** %3968
  %3969 = call i8* @llvm.stacksave()
  br label %while_cond715
while_cond715:
  %3970 = load i64, i64* %3923
  %3971 = load { i64, i8* }*, { i64, i8* }** %3922
  %3972 = call i64 @nyx_array_length({ i64, i8* }* %3971)
  %3973 = icmp slt i64 %3970, %3972
  br i1 %3973, label %while_body716, label %while_end717
while_body716:
  call void @llvm.stackrestore(i8* %3969)
  %3974 = load { i64, i8* }*, { i64, i8* }** %3922
  %3975 = load i64, i64* %3923
  %3976 = call i64 @nyx_array_get({ i64, i8* }* %3974, i64 %3975)
  %3977 = inttoptr i64 %3976 to { i64, i8* }*
  %3978 = alloca { i64, i8* }*
  store { i64, i8* }* %3977, { i64, i8* }** %3978
  %3979 = load { i64, i8* }*, { i64, i8* }** %3978
  %3980 = load %nyx_string*, %nyx_string** %3926
  %3981 = call %nyx_string* @gotcha_field({ i64, i8* }* %3979, %nyx_string* %3980)
  %3982 = alloca %nyx_string*
  store %nyx_string* %3981, %nyx_string** %3982
  %3983 = load %nyx_string*, %nyx_string** %3982
  %3984 = load %nyx_string*, %nyx_string** %3929
  %3985 = call i1 @nyx_string_equals(%nyx_string* %3983, %nyx_string* %3984)
  %3986 = xor i1 %3985, true
  br i1 %3986, label %then718, label %else719
then718:
  %3987 = load { i64, i8* }*, { i64, i8* }** %3978
  %3988 = load %nyx_string*, %nyx_string** %3932
  %3989 = call %nyx_string* @gotcha_field({ i64, i8* }* %3987, %nyx_string* %3988)
  %3990 = alloca %nyx_string*
  store %nyx_string* %3989, %nyx_string** %3990
  %3991 = load { i64, i8* }*, { i64, i8* }** %3978
  %3992 = load %nyx_string*, %nyx_string** %3935
  %3993 = call %nyx_string* @gotcha_field({ i64, i8* }* %3991, %nyx_string* %3992)
  %3994 = alloca %nyx_string*
  store %nyx_string* %3993, %nyx_string** %3994
  %3995 = load { i64, i8* }*, { i64, i8* }** %3978
  %3996 = load %nyx_string*, %nyx_string** %3938
  %3997 = call %nyx_string* @gotcha_field({ i64, i8* }* %3995, %nyx_string* %3996)
  %3998 = alloca %nyx_string*
  store %nyx_string* %3997, %nyx_string** %3998
  %3999 = load %nyx_string*, %nyx_string** %3600
  %4000 = load %nyx_string*, %nyx_string** %3941
  %4001 = call %nyx_string* @nyx_string_concat(%nyx_string* %3999, %nyx_string* %4000)
  store %nyx_string* %4001, %nyx_string** %3600
  %4002 = load %nyx_string*, %nyx_string** %3600
  %4003 = load %nyx_string*, %nyx_string** %3944
  %4004 = call %nyx_string* @nyx_string_concat(%nyx_string* %4002, %nyx_string* %4003)
  %4005 = load %nyx_string*, %nyx_string** %3990
  %4006 = call %nyx_string* @nyx_string_concat(%nyx_string* %4004, %nyx_string* %4005)
  %4007 = load %nyx_string*, %nyx_string** %3947
  %4008 = call %nyx_string* @nyx_string_concat(%nyx_string* %4006, %nyx_string* %4007)
  %4009 = load %nyx_string*, %nyx_string** %3994
  %4010 = call %nyx_string* @nx_escape(%nyx_string* %4009)
  %4011 = call %nyx_string* @nyx_string_concat(%nyx_string* %4008, %nyx_string* %4010)
  %4012 = load %nyx_string*, %nyx_string** %3950
  %4013 = call %nyx_string* @nyx_string_concat(%nyx_string* %4011, %nyx_string* %4012)
  store %nyx_string* %4013, %nyx_string** %3600
  %4014 = load %nyx_string*, %nyx_string** %3600
  %4015 = load %nyx_string*, %nyx_string** %3953
  %4016 = call %nyx_string* @nyx_string_concat(%nyx_string* %4014, %nyx_string* %4015)
  %4017 = load %nyx_string*, %nyx_string** %3982
  %4018 = call %nyx_string* @nx_escape(%nyx_string* %4017)
  %4019 = call %nyx_string* @nyx_string_concat(%nyx_string* %4016, %nyx_string* %4018)
  %4020 = load %nyx_string*, %nyx_string** %3956
  %4021 = call %nyx_string* @nyx_string_concat(%nyx_string* %4019, %nyx_string* %4020)
  store %nyx_string* %4021, %nyx_string** %3600
  %4022 = load %nyx_string*, %nyx_string** %3600
  %4023 = load %nyx_string*, %nyx_string** %3959
  %4024 = call %nyx_string* @nyx_string_concat(%nyx_string* %4022, %nyx_string* %4023)
  %4025 = load %nyx_string*, %nyx_string** %3990
  %4026 = call %nyx_string* @nyx_string_concat(%nyx_string* %4024, %nyx_string* %4025)
  %4027 = load %nyx_string*, %nyx_string** %3962
  %4028 = call %nyx_string* @nyx_string_concat(%nyx_string* %4026, %nyx_string* %4027)
  %4029 = load %nyx_string*, %nyx_string** %3998
  %4030 = call %nyx_string* @nyx_string_concat(%nyx_string* %4028, %nyx_string* %4029)
  %4031 = load %nyx_string*, %nyx_string** %3965
  %4032 = call %nyx_string* @nyx_string_concat(%nyx_string* %4030, %nyx_string* %4031)
  store %nyx_string* %4032, %nyx_string** %3600
  %4033 = load %nyx_string*, %nyx_string** %3600
  %4034 = load %nyx_string*, %nyx_string** %3968
  %4035 = call %nyx_string* @nyx_string_concat(%nyx_string* %4033, %nyx_string* %4034)
  store %nyx_string* %4035, %nyx_string** %3600
  br label %merge720
else719:
  br label %merge720
merge720:
  %4036 = load i64, i64* %3923
  %4037 = add i64 %4036, 1
  store i64 %4037, i64* %3923
  br label %while_cond715
while_end717:
  %4038 = load %nyx_string*, %nyx_string** %3600
  %4039 = getelementptr [2 x i8], [2 x i8]* @.str455, i32 0, i32 0
  %4040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %4039, i64 1)
  %4041 = call %nyx_string* @nyx_string_concat(%nyx_string* %4038, %nyx_string* %4040)
  store %nyx_string* %4041, %nyx_string** %3600
  %4042 = load %nyx_string*, %nyx_string** %3600
  %4043 = getelementptr [47 x i8], [47 x i8]* @.str456, i32 0, i32 0
  %4044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %4043, i64 46)
  %4045 = call %nyx_string* @nyx_string_concat(%nyx_string* %4042, %nyx_string* %4044)
  store %nyx_string* %4045, %nyx_string** %3600
  %4046 = load %nyx_string*, %nyx_string** %3600
  %4047 = getelementptr [39 x i8], [39 x i8]* @.str457, i32 0, i32 0
  %4048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %4047, i64 38)
  %4049 = call %nyx_string* @nyx_string_concat(%nyx_string* %4046, %nyx_string* %4048)
  store %nyx_string* %4049, %nyx_string** %3600
  %4050 = load %nyx_string*, %nyx_string** %3600
  %4051 = getelementptr [50 x i8], [50 x i8]* @.str458, i32 0, i32 0
  %4052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %4051, i64 49)
  %4053 = call %nyx_string* @nyx_string_concat(%nyx_string* %4050, %nyx_string* %4052)
  store %nyx_string* %4053, %nyx_string** %3600
  %4054 = load %nyx_string*, %nyx_string** %3600
  %4055 = getelementptr [20 x i8], [20 x i8]* @.str459, i32 0, i32 0
  %4056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %4055, i64 19)
  %4057 = call %nyx_string* @nyx_string_concat(%nyx_string* %4054, %nyx_string* %4056)
  store %nyx_string* %4057, %nyx_string** %3600
  %4058 = load %nyx_string*, %nyx_string** %3600
  %4059 = getelementptr [32 x i8], [32 x i8]* @.str460, i32 0, i32 0
  %4060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %4059, i64 31)
  %4061 = call %nyx_string* @nyx_string_concat(%nyx_string* %4058, %nyx_string* %4060)
  store %nyx_string* %4061, %nyx_string** %3600
  %4062 = load %nyx_string*, %nyx_string** %3600
  %4063 = getelementptr [34 x i8], [34 x i8]* @.str461, i32 0, i32 0
  %4064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %4063, i64 33)
  %4065 = call %nyx_string* @nyx_string_concat(%nyx_string* %4062, %nyx_string* %4064)
  store %nyx_string* %4065, %nyx_string** %3600
  %4066 = load %nyx_string*, %nyx_string** %3600
  %4067 = getelementptr [114 x i8], [114 x i8]* @.str462, i32 0, i32 0
  %4068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %4067, i64 113)
  %4069 = call %nyx_string* @nyx_string_concat(%nyx_string* %4066, %nyx_string* %4068)
  store %nyx_string* %4069, %nyx_string** %3600
  %4070 = load %nyx_string*, %nyx_string** %3600
  %4071 = getelementptr [19 x i8], [19 x i8]* @.str463, i32 0, i32 0
  %4072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %4071, i64 18)
  %4073 = call %nyx_string* @nyx_string_concat(%nyx_string* %4070, %nyx_string* %4072)
  store %nyx_string* %4073, %nyx_string** %3600
  %4074 = load %nyx_string*, %nyx_string** %3600
  %4075 = getelementptr [7 x i8], [7 x i8]* @.str464, i32 0, i32 0
  %4076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %4075, i64 6)
  %4077 = call %nyx_string* @nyx_string_concat(%nyx_string* %4074, %nyx_string* %4076)
  store %nyx_string* %4077, %nyx_string** %3600
  %4078 = load %nyx_string*, %nyx_string** %3600
  %4079 = getelementptr [3 x i8], [3 x i8]* @.str465, i32 0, i32 0
  %4080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %4079, i64 2)
  %4081 = call %nyx_string* @nyx_string_concat(%nyx_string* %4078, %nyx_string* %4080)
  store %nyx_string* %4081, %nyx_string** %3600
  %4082 = load %nyx_string*, %nyx_string** %3600
  ret %nyx_string* %4082
}

define internal i64 @write_constitution_test(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %4083 = load %nyx_string*, %nyx_string** %dir.ptr
  %4084 = getelementptr [28 x i8], [28 x i8]* @.str466, i32 0, i32 0
  %4085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %4084, i64 27)
  %4086 = call %nyx_string* @nyx_string_concat(%nyx_string* %4083, %nyx_string* %4085)
  %4087 = alloca %nyx_string*
  store %nyx_string* %4086, %nyx_string** %4087
  %4088 = call %nyx_string* @constitution_test_body()
  %4089 = alloca %nyx_string*
  store %nyx_string* %4088, %nyx_string** %4089
  %4090 = load %nyx_string*, %nyx_string** %4087
  %4091 = call i8* @nyx_string_to_cstr(%nyx_string* %4090)
  %4092 = call i1 @nyx_file_exists(i8* %4091)
  br i1 %4092, label %then721, label %else722
then721:
  %4093 = load %nyx_string*, %nyx_string** %4087
  %4094 = call i8* @nyx_string_to_cstr(%nyx_string* %4093)
  %4095 = call %nyx_string* @nyx_read_file(i8* %4094)
  %4096 = alloca %nyx_string*
  store %nyx_string* %4095, %nyx_string** %4096
  %4097 = load %nyx_string*, %nyx_string** %4096
  %4098 = load %nyx_string*, %nyx_string** %4089
  %4099 = call i1 @nyx_string_equals(%nyx_string* %4097, %nyx_string* %4098)
  br i1 %4099, label %then724, label %else725
then724:
  ret i64 0
else725:
  br label %merge726
merge726:
  %4100 = load %nyx_string*, %nyx_string** %4096
  %4101 = call %nyx_string* @sdd_generated_marker()
  %4102 = call i64 @nyx_string_index_of(%nyx_string* %4100, %nyx_string* %4101)
  %4103 = icmp slt i64 %4102, 0
  br i1 %4103, label %then727, label %else728
then727:
  ret i64 2
else728:
  br label %merge729
merge729:
  br label %merge723
else722:
  br label %merge723
merge723:
  %4104 = load %nyx_string*, %nyx_string** %4087
  %4105 = load %nyx_string*, %nyx_string** %4089
  %4106 = call i8* @nyx_string_to_cstr(%nyx_string* %4104)
  %4107 = call i1 @nyx_write_file_safe(i8* %4106, %nyx_string* %4105)
  ret i64 1
}

define internal i1 @add_agents_triggers(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %4108 = load %nyx_string*, %nyx_string** %dir.ptr
  %4109 = getelementptr [11 x i8], [11 x i8]* @.str467, i32 0, i32 0
  %4110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %4109, i64 10)
  %4111 = call %nyx_string* @nyx_string_concat(%nyx_string* %4108, %nyx_string* %4110)
  %4112 = alloca %nyx_string*
  store %nyx_string* %4111, %nyx_string** %4112
  %4113 = load %nyx_string*, %nyx_string** %4112
  %4114 = call i8* @nyx_string_to_cstr(%nyx_string* %4113)
  %4115 = call i1 @nyx_file_exists(i8* %4114)
  %4116 = icmp eq i1 %4115, 0
  br i1 %4116, label %then730, label %else731
then730:
  %4117 = getelementptr [30 x i8], [30 x i8]* @.str468, i32 0, i32 0
  %4118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %4117, i64 29)
  %4119 = load %nyx_string*, %nyx_string** %dir.ptr
  %4120 = call %nyx_string* @nyx_string_concat(%nyx_string* %4118, %nyx_string* %4119)
  %4121 = getelementptr [80 x i8], [80 x i8]* @.str469, i32 0, i32 0
  %4122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %4121, i64 79)
  %4123 = call %nyx_string* @nyx_string_concat(%nyx_string* %4120, %nyx_string* %4122)
  %4124 = call i8* @nyx_string_to_cstr(%nyx_string* %4123)
  call void @nyx_print_string(i8* %4124)
  ret i1 0
else731:
  br label %merge732
merge732:
  %4125 = load %nyx_string*, %nyx_string** %4112
  %4126 = call i8* @nyx_string_to_cstr(%nyx_string* %4125)
  %4127 = call %nyx_string* @nyx_read_file(i8* %4126)
  %4128 = alloca %nyx_string*
  store %nyx_string* %4127, %nyx_string** %4128
  %4129 = load %nyx_string*, %nyx_string** %4128
  %4130 = getelementptr [21 x i8], [21 x i8]* @.str470, i32 0, i32 0
  %4131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %4130, i64 20)
  %4132 = call i64 @nyx_string_index_of(%nyx_string* %4129, %nyx_string* %4131)
  %4133 = icmp sge i64 %4132, 0
  br i1 %4133, label %then733, label %else734
then733:
  %4134 = load %nyx_string*, %nyx_string** %lang.ptr
  %4135 = getelementptr [47 x i8], [47 x i8]* @.str471, i32 0, i32 0
  %4136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %4135, i64 46)
  %4137 = getelementptr [47 x i8], [47 x i8]* @.str472, i32 0, i32 0
  %4138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %4137, i64 46)
  %4139 = call %nyx_string* @sdd_msg(%nyx_string* %4134, %nyx_string* %4136, %nyx_string* %4138)
  %4140 = call i8* @nyx_string_to_cstr(%nyx_string* %4139)
  call void @nyx_print_string(i8* %4140)
  ret i1 0
else734:
  br label %merge735
merge735:
  %4141 = getelementptr [22 x i8], [22 x i8]* @.str473, i32 0, i32 0
  %4142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %4141, i64 21)
  %4143 = alloca %nyx_string*
  store %nyx_string* %4142, %nyx_string** %4143
  %4144 = load %nyx_string*, %nyx_string** %lang.ptr
  %4145 = getelementptr [3 x i8], [3 x i8]* @.str474, i32 0, i32 0
  %4146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %4145, i64 2)
  %4147 = call i1 @nyx_string_equals(%nyx_string* %4144, %nyx_string* %4146)
  br i1 %4147, label %then736, label %else737
then736:
  %4148 = load %nyx_string*, %nyx_string** %4143
  %4149 = getelementptr [150 x i8], [150 x i8]* @.str475, i32 0, i32 0
  %4150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %4149, i64 149)
  %4151 = call %nyx_string* @nyx_string_concat(%nyx_string* %4148, %nyx_string* %4150)
  store %nyx_string* %4151, %nyx_string** %4143
  %4152 = load %nyx_string*, %nyx_string** %4143
  %4153 = getelementptr [122 x i8], [122 x i8]* @.str476, i32 0, i32 0
  %4154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %4153, i64 121)
  %4155 = call %nyx_string* @nyx_string_concat(%nyx_string* %4152, %nyx_string* %4154)
  store %nyx_string* %4155, %nyx_string** %4143
  br label %merge738
else737:
  %4156 = load %nyx_string*, %nyx_string** %4143
  %4157 = getelementptr [152 x i8], [152 x i8]* @.str477, i32 0, i32 0
  %4158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %4157, i64 151)
  %4159 = call %nyx_string* @nyx_string_concat(%nyx_string* %4156, %nyx_string* %4158)
  store %nyx_string* %4159, %nyx_string** %4143
  %4160 = load %nyx_string*, %nyx_string** %4143
  %4161 = getelementptr [113 x i8], [113 x i8]* @.str478, i32 0, i32 0
  %4162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %4161, i64 112)
  %4163 = call %nyx_string* @nyx_string_concat(%nyx_string* %4160, %nyx_string* %4162)
  store %nyx_string* %4163, %nyx_string** %4143
  br label %merge738
merge738:
  %4164 = load %nyx_string*, %nyx_string** %4128
  %4165 = getelementptr [2 x i8], [2 x i8]* @.str479, i32 0, i32 0
  %4166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %4165, i64 1)
  %4167 = call %nyx_string* @agents_ini()
  %4168 = call %nyx_string* @nyx_string_concat(%nyx_string* %4166, %nyx_string* %4167)
  %4169 = getelementptr [2 x i8], [2 x i8]* @.str480, i32 0, i32 0
  %4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %4169, i64 1)
  %4171 = call %nyx_string* @nyx_string_concat(%nyx_string* %4168, %nyx_string* %4170)
  %4172 = call i64 @nyx_string_index_of(%nyx_string* %4164, %nyx_string* %4171)
  %4173 = alloca i64
  store i64 %4172, i64* %4173
  %4174 = load i64, i64* %4173
  %4175 = icmp sge i64 %4174, 0
  br i1 %4175, label %then739, label %else740
then739:
  %4176 = load %nyx_string*, %nyx_string** %4112
  %4177 = load %nyx_string*, %nyx_string** %4128
  %4178 = load i64, i64* %4173
  %4179 = add i64 %4178, 1
  %4180 = call %nyx_string* @nyx_string_substring(%nyx_string* %4177, i64 0, i64 %4179)
  %4181 = load %nyx_string*, %nyx_string** %4143
  %4182 = call %nyx_string* @nyx_string_concat(%nyx_string* %4180, %nyx_string* %4181)
  %4183 = getelementptr [2 x i8], [2 x i8]* @.str481, i32 0, i32 0
  %4184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %4183, i64 1)
  %4185 = call %nyx_string* @nyx_string_concat(%nyx_string* %4182, %nyx_string* %4184)
  %4186 = load %nyx_string*, %nyx_string** %4128
  %4187 = load i64, i64* %4173
  %4188 = add i64 %4187, 1
  %4189 = load %nyx_string*, %nyx_string** %4128
  %4190 = call i64 @nyx_string_byte_length(%nyx_string* %4189)
  %4191 = call %nyx_string* @nyx_string_substring(%nyx_string* %4186, i64 %4188, i64 %4190)
  %4192 = call %nyx_string* @nyx_string_concat(%nyx_string* %4185, %nyx_string* %4191)
  %4193 = call i8* @nyx_string_to_cstr(%nyx_string* %4176)
  %4194 = call i1 @nyx_write_file_safe(i8* %4193, %nyx_string* %4192)
  %4195 = load %nyx_string*, %nyx_string** %lang.ptr
  %4196 = getelementptr [36 x i8], [36 x i8]* @.str482, i32 0, i32 0
  %4197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %4196, i64 35)
  %4198 = getelementptr [40 x i8], [40 x i8]* @.str483, i32 0, i32 0
  %4199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %4198, i64 39)
  %4200 = call %nyx_string* @sdd_msg(%nyx_string* %4195, %nyx_string* %4197, %nyx_string* %4199)
  %4201 = call i8* @nyx_string_to_cstr(%nyx_string* %4200)
  call void @nyx_print_string(i8* %4201)
  ret i1 1
else740:
  br label %merge741
merge741:
  %4202 = getelementptr [19 x i8], [19 x i8]* @.str484, i32 0, i32 0
  %4203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %4202, i64 18)
  %4204 = alloca %nyx_string*
  store %nyx_string* %4203, %nyx_string** %4204
  %4205 = load %nyx_string*, %nyx_string** %4128
  %4206 = load %nyx_string*, %nyx_string** %4204
  %4207 = call i64 @nyx_string_index_of(%nyx_string* %4205, %nyx_string* %4206)
  %4208 = alloca i64
  store i64 %4207, i64* %4208
  %4209 = load i64, i64* %4208
  %4210 = icmp slt i64 %4209, 0
  br i1 %4210, label %then742, label %else743
then742:
  %4211 = load %nyx_string*, %nyx_string** %4112
  %4212 = load %nyx_string*, %nyx_string** %4128
  %4213 = getelementptr [2 x i8], [2 x i8]* @.str485, i32 0, i32 0
  %4214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %4213, i64 1)
  %4215 = call %nyx_string* @nyx_string_concat(%nyx_string* %4212, %nyx_string* %4214)
  %4216 = load %nyx_string*, %nyx_string** %4143
  %4217 = call %nyx_string* @nyx_string_concat(%nyx_string* %4215, %nyx_string* %4216)
  %4218 = call i8* @nyx_string_to_cstr(%nyx_string* %4211)
  %4219 = call i1 @nyx_write_file_safe(i8* %4218, %nyx_string* %4217)
  br label %merge744
else743:
  %4220 = load %nyx_string*, %nyx_string** %4112
  %4221 = load %nyx_string*, %nyx_string** %4128
  %4222 = load i64, i64* %4208
  %4223 = call %nyx_string* @nyx_string_substring(%nyx_string* %4221, i64 0, i64 %4222)
  %4224 = load %nyx_string*, %nyx_string** %4143
  %4225 = call %nyx_string* @nyx_string_concat(%nyx_string* %4223, %nyx_string* %4224)
  %4226 = getelementptr [2 x i8], [2 x i8]* @.str486, i32 0, i32 0
  %4227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %4226, i64 1)
  %4228 = call %nyx_string* @nyx_string_concat(%nyx_string* %4225, %nyx_string* %4227)
  %4229 = load %nyx_string*, %nyx_string** %4128
  %4230 = load i64, i64* %4208
  %4231 = load %nyx_string*, %nyx_string** %4128
  %4232 = call i64 @nyx_string_byte_length(%nyx_string* %4231)
  %4233 = call %nyx_string* @nyx_string_substring(%nyx_string* %4229, i64 %4230, i64 %4232)
  %4234 = call %nyx_string* @nyx_string_concat(%nyx_string* %4228, %nyx_string* %4233)
  %4235 = call i8* @nyx_string_to_cstr(%nyx_string* %4220)
  %4236 = call i1 @nyx_write_file_safe(i8* %4235, %nyx_string* %4234)
  br label %merge744
merge744:
  %4237 = load %nyx_string*, %nyx_string** %lang.ptr
  %4238 = getelementptr [36 x i8], [36 x i8]* @.str487, i32 0, i32 0
  %4239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %4238, i64 35)
  %4240 = getelementptr [40 x i8], [40 x i8]* @.str488, i32 0, i32 0
  %4241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %4240, i64 39)
  %4242 = call %nyx_string* @sdd_msg(%nyx_string* %4237, %nyx_string* %4239, %nyx_string* %4241)
  %4243 = call i8* @nyx_string_to_cstr(%nyx_string* %4242)
  call void @nyx_print_string(i8* %4243)
  ret i1 1
}

define internal i1 @run_sdd_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %4244 = getelementptr [11 x i8], [11 x i8]* @.str489, i32 0, i32 0
  %4245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %4244, i64 10)
  %4246 = load %nyx_string*, %nyx_string** %dir.ptr
  %4247 = call %nyx_string* @nyx_string_concat(%nyx_string* %4245, %nyx_string* %4246)
  %4248 = getelementptr [16 x i8], [16 x i8]* @.str490, i32 0, i32 0
  %4249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %4248, i64 15)
  %4250 = call %nyx_string* @nyx_string_concat(%nyx_string* %4247, %nyx_string* %4249)
  %4251 = call i8* @nyx_string_to_cstr(%nyx_string* %4250)
  %4252 = call %nyx_string* @nyx_exec(i8* %4251)
  %4253 = load %nyx_string*, %nyx_string** %dir.ptr
  %4254 = load %nyx_string*, %nyx_string** %lang.ptr
  %4255 = call i64 @write_evidence(%nyx_string* %4253, %nyx_string* %4254)
  %4256 = alloca i64
  store i64 %4255, i64* %4256
  %4257 = load i64, i64* %4256
  %4258 = icmp eq i64 %4257, 2
  br i1 %4258, label %then745, label %else746
then745:
  %4259 = load %nyx_string*, %nyx_string** %lang.ptr
  %4260 = getelementptr [59 x i8], [59 x i8]* @.str491, i32 0, i32 0
  %4261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %4260, i64 58)
  %4262 = call %nyx_string* @toolchain_version()
  %4263 = call %nyx_string* @nyx_string_concat(%nyx_string* %4261, %nyx_string* %4262)
  %4264 = getelementptr [4 x i8], [4 x i8]* @.str492, i32 0, i32 0
  %4265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %4264, i64 3)
  %4266 = call %nyx_string* @nyx_string_concat(%nyx_string* %4263, %nyx_string* %4265)
  %4267 = getelementptr [65 x i8], [65 x i8]* @.str493, i32 0, i32 0
  %4268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %4267, i64 64)
  %4269 = call %nyx_string* @toolchain_version()
  %4270 = call %nyx_string* @nyx_string_concat(%nyx_string* %4268, %nyx_string* %4269)
  %4271 = getelementptr [4 x i8], [4 x i8]* @.str494, i32 0, i32 0
  %4272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %4271, i64 3)
  %4273 = call %nyx_string* @nyx_string_concat(%nyx_string* %4270, %nyx_string* %4272)
  %4274 = call %nyx_string* @sdd_msg(%nyx_string* %4259, %nyx_string* %4266, %nyx_string* %4273)
  %4275 = call i8* @nyx_string_to_cstr(%nyx_string* %4274)
  call void @nyx_print_string(i8* %4275)
  br label %merge747
else746:
  br label %merge747
merge747:
  %4276 = load i64, i64* %4256
  %4277 = icmp eq i64 %4276, 1
  br i1 %4277, label %then748, label %else749
then748:
  %4278 = load %nyx_string*, %nyx_string** %lang.ptr
  %4279 = getelementptr [34 x i8], [34 x i8]* @.str495, i32 0, i32 0
  %4280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %4279, i64 33)
  %4281 = call %nyx_string* @toolchain_version()
  %4282 = call %nyx_string* @nyx_string_concat(%nyx_string* %4280, %nyx_string* %4281)
  %4283 = getelementptr [4 x i8], [4 x i8]* @.str496, i32 0, i32 0
  %4284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %4283, i64 3)
  %4285 = call %nyx_string* @nyx_string_concat(%nyx_string* %4282, %nyx_string* %4284)
  %4286 = getelementptr [33 x i8], [33 x i8]* @.str497, i32 0, i32 0
  %4287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %4286, i64 32)
  %4288 = call %nyx_string* @toolchain_version()
  %4289 = call %nyx_string* @nyx_string_concat(%nyx_string* %4287, %nyx_string* %4288)
  %4290 = getelementptr [4 x i8], [4 x i8]* @.str498, i32 0, i32 0
  %4291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %4290, i64 3)
  %4292 = call %nyx_string* @nyx_string_concat(%nyx_string* %4289, %nyx_string* %4291)
  %4293 = call %nyx_string* @sdd_msg(%nyx_string* %4278, %nyx_string* %4285, %nyx_string* %4292)
  %4294 = call i8* @nyx_string_to_cstr(%nyx_string* %4293)
  call void @nyx_print_string(i8* %4294)
  br label %merge750
else749:
  br label %merge750
merge750:
  %4295 = load i64, i64* %4256
  %4296 = icmp eq i64 %4295, 0
  br i1 %4296, label %then751, label %else752
then751:
  %4297 = load %nyx_string*, %nyx_string** %lang.ptr
  %4298 = getelementptr [41 x i8], [41 x i8]* @.str499, i32 0, i32 0
  %4299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %4298, i64 40)
  %4300 = call %nyx_string* @toolchain_version()
  %4301 = call %nyx_string* @nyx_string_concat(%nyx_string* %4299, %nyx_string* %4300)
  %4302 = getelementptr [4 x i8], [4 x i8]* @.str500, i32 0, i32 0
  %4303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %4302, i64 3)
  %4304 = call %nyx_string* @nyx_string_concat(%nyx_string* %4301, %nyx_string* %4303)
  %4305 = getelementptr [39 x i8], [39 x i8]* @.str501, i32 0, i32 0
  %4306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %4305, i64 38)
  %4307 = call %nyx_string* @toolchain_version()
  %4308 = call %nyx_string* @nyx_string_concat(%nyx_string* %4306, %nyx_string* %4307)
  %4309 = getelementptr [4 x i8], [4 x i8]* @.str502, i32 0, i32 0
  %4310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %4309, i64 3)
  %4311 = call %nyx_string* @nyx_string_concat(%nyx_string* %4308, %nyx_string* %4310)
  %4312 = call %nyx_string* @sdd_msg(%nyx_string* %4297, %nyx_string* %4304, %nyx_string* %4311)
  %4313 = call i8* @nyx_string_to_cstr(%nyx_string* %4312)
  call void @nyx_print_string(i8* %4313)
  br label %merge753
else752:
  br label %merge753
merge753:
  %4314 = load %nyx_string*, %nyx_string** %dir.ptr
  %4315 = getelementptr [28 x i8], [28 x i8]* @.str503, i32 0, i32 0
  %4316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %4315, i64 27)
  %4317 = call %nyx_string* @nyx_string_concat(%nyx_string* %4314, %nyx_string* %4316)
  %4318 = call i8* @nyx_string_to_cstr(%nyx_string* %4317)
  %4319 = call i1 @nyx_file_exists(i8* %4318)
  br i1 %4319, label %then754, label %else755
then754:
  %4320 = load %nyx_string*, %nyx_string** %dir.ptr
  %4321 = call i64 @write_constitution_test(%nyx_string* %4320)
  %4322 = alloca i64
  store i64 %4321, i64* %4322
  %4323 = load i64, i64* %4322
  %4324 = icmp eq i64 %4323, 1
  br i1 %4324, label %then757, label %else758
then757:
  %4325 = load %nyx_string*, %nyx_string** %lang.ptr
  %4326 = getelementptr [42 x i8], [42 x i8]* @.str504, i32 0, i32 0
  %4327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %4326, i64 41)
  %4328 = getelementptr [41 x i8], [41 x i8]* @.str505, i32 0, i32 0
  %4329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %4328, i64 40)
  %4330 = call %nyx_string* @sdd_msg(%nyx_string* %4325, %nyx_string* %4327, %nyx_string* %4329)
  %4331 = call i8* @nyx_string_to_cstr(%nyx_string* %4330)
  call void @nyx_print_string(i8* %4331)
  br label %merge759
else758:
  br label %merge759
merge759:
  %4332 = load i64, i64* %4322
  %4333 = icmp eq i64 %4332, 2
  br i1 %4333, label %then760, label %else761
then760:
  %4334 = load %nyx_string*, %nyx_string** %lang.ptr
  %4335 = getelementptr [67 x i8], [67 x i8]* @.str506, i32 0, i32 0
  %4336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %4335, i64 66)
  %4337 = getelementptr [73 x i8], [73 x i8]* @.str507, i32 0, i32 0
  %4338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %4337, i64 72)
  %4339 = call %nyx_string* @sdd_msg(%nyx_string* %4334, %nyx_string* %4336, %nyx_string* %4338)
  %4340 = call i8* @nyx_string_to_cstr(%nyx_string* %4339)
  call void @nyx_print_string(i8* %4340)
  br label %merge762
else761:
  br label %merge762
merge762:
  %4341 = load i64, i64* %4322
  %4342 = icmp eq i64 %4341, 0
  br i1 %4342, label %then763, label %else764
then763:
  %4343 = load %nyx_string*, %nyx_string** %lang.ptr
  %4344 = getelementptr [49 x i8], [49 x i8]* @.str508, i32 0, i32 0
  %4345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %4344, i64 48)
  %4346 = getelementptr [47 x i8], [47 x i8]* @.str509, i32 0, i32 0
  %4347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %4346, i64 46)
  %4348 = call %nyx_string* @sdd_msg(%nyx_string* %4343, %nyx_string* %4345, %nyx_string* %4347)
  %4349 = call i8* @nyx_string_to_cstr(%nyx_string* %4348)
  call void @nyx_print_string(i8* %4349)
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
  %4350 = call %nyx_string* @resolve_seed_home()
  %4351 = alloca %nyx_string*
  store %nyx_string* %4350, %nyx_string** %4351
  %4352 = load %nyx_string*, %nyx_string** %4351
  %4353 = getelementptr [12 x i8], [12 x i8]* @.str510, i32 0, i32 0
  %4354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %4353, i64 11)
  %4355 = call %nyx_string* @nyx_string_concat(%nyx_string* %4352, %nyx_string* %4354)
  %4356 = load %nyx_string*, %nyx_string** %lang.ptr
  %4357 = call %nyx_string* @nyx_string_concat(%nyx_string* %4355, %nyx_string* %4356)
  %4358 = getelementptr [5 x i8], [5 x i8]* @.str511, i32 0, i32 0
  %4359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %4358, i64 4)
  %4360 = call %nyx_string* @nyx_string_concat(%nyx_string* %4357, %nyx_string* %4359)
  %4361 = alloca %nyx_string*
  store %nyx_string* %4360, %nyx_string** %4361
  %4362 = alloca i1
  store i1 true, i1* %4362
  %4363 = load %nyx_string*, %nyx_string** %4351
  %4364 = getelementptr [1 x i8], [1 x i8]* @.str512, i32 0, i32 0
  %4365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %4364, i64 0)
  %4366 = call i1 @nyx_string_equals(%nyx_string* %4363, %nyx_string* %4365)
  br i1 %4366, label %sc_or_end767, label %sc_or_rhs766
sc_or_rhs766:
  %4367 = load %nyx_string*, %nyx_string** %4361
  %4368 = getelementptr [17 x i8], [17 x i8]* @.str513, i32 0, i32 0
  %4369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %4368, i64 16)
  %4370 = call %nyx_string* @nyx_string_concat(%nyx_string* %4367, %nyx_string* %4369)
  %4371 = call i8* @nyx_string_to_cstr(%nyx_string* %4370)
  %4372 = call i1 @nyx_file_exists(i8* %4371)
  %4373 = icmp eq i1 %4372, 0
  store i1 %4373, i1* %4362
  br label %sc_or_end767
sc_or_end767:
  %4374 = load i1, i1* %4362
  br i1 %4374, label %then768, label %else769
then768:
  %4375 = load %nyx_string*, %nyx_string** %lang.ptr
  %4376 = getelementptr [49 x i8], [49 x i8]* @.str514, i32 0, i32 0
  %4377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %4376, i64 48)
  %4378 = load %nyx_string*, %nyx_string** %lang.ptr
  %4379 = call %nyx_string* @nyx_string_concat(%nyx_string* %4377, %nyx_string* %4378)
  %4380 = getelementptr [59 x i8], [59 x i8]* @.str515, i32 0, i32 0
  %4381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %4380, i64 58)
  %4382 = call %nyx_string* @nyx_string_concat(%nyx_string* %4379, %nyx_string* %4381)
  %4383 = getelementptr [61 x i8], [61 x i8]* @.str516, i32 0, i32 0
  %4384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %4383, i64 60)
  %4385 = load %nyx_string*, %nyx_string** %lang.ptr
  %4386 = call %nyx_string* @nyx_string_concat(%nyx_string* %4384, %nyx_string* %4385)
  %4387 = getelementptr [44 x i8], [44 x i8]* @.str517, i32 0, i32 0
  %4388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %4387, i64 43)
  %4389 = call %nyx_string* @nyx_string_concat(%nyx_string* %4386, %nyx_string* %4388)
  %4390 = call %nyx_string* @sdd_msg(%nyx_string* %4375, %nyx_string* %4382, %nyx_string* %4389)
  %4391 = call i8* @nyx_string_to_cstr(%nyx_string* %4390)
  call void @nyx_print_string(i8* %4391)
  %4392 = load %nyx_string*, %nyx_string** %lang.ptr
  %4393 = getelementptr [104 x i8], [104 x i8]* @.str518, i32 0, i32 0
  %4394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %4393, i64 103)
  %4395 = getelementptr [109 x i8], [109 x i8]* @.str519, i32 0, i32 0
  %4396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %4395, i64 108)
  %4397 = call %nyx_string* @sdd_msg(%nyx_string* %4392, %nyx_string* %4394, %nyx_string* %4396)
  %4398 = call i8* @nyx_string_to_cstr(%nyx_string* %4397)
  call void @nyx_print_string(i8* %4398)
  ret i1 0
else769:
  br label %merge770
merge770:
  %4399 = getelementptr [11 x i8], [11 x i8]* @.str520, i32 0, i32 0
  %4400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %4399, i64 10)
  %4401 = load %nyx_string*, %nyx_string** %dir.ptr
  %4402 = call %nyx_string* @nyx_string_concat(%nyx_string* %4400, %nyx_string* %4401)
  %4403 = getelementptr [13 x i8], [13 x i8]* @.str521, i32 0, i32 0
  %4404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %4403, i64 12)
  %4405 = call %nyx_string* @nyx_string_concat(%nyx_string* %4402, %nyx_string* %4404)
  %4406 = load %nyx_string*, %nyx_string** %dir.ptr
  %4407 = call %nyx_string* @nyx_string_concat(%nyx_string* %4405, %nyx_string* %4406)
  %4408 = getelementptr [13 x i8], [13 x i8]* @.str522, i32 0, i32 0
  %4409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %4408, i64 12)
  %4410 = call %nyx_string* @nyx_string_concat(%nyx_string* %4407, %nyx_string* %4409)
  %4411 = load %nyx_string*, %nyx_string** %dir.ptr
  %4412 = call %nyx_string* @nyx_string_concat(%nyx_string* %4410, %nyx_string* %4411)
  %4413 = getelementptr [18 x i8], [18 x i8]* @.str523, i32 0, i32 0
  %4414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %4413, i64 17)
  %4415 = call %nyx_string* @nyx_string_concat(%nyx_string* %4412, %nyx_string* %4414)
  %4416 = load %nyx_string*, %nyx_string** %dir.ptr
  %4417 = call %nyx_string* @nyx_string_concat(%nyx_string* %4415, %nyx_string* %4416)
  %4418 = getelementptr [10 x i8], [10 x i8]* @.str524, i32 0, i32 0
  %4419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %4418, i64 9)
  %4420 = call %nyx_string* @nyx_string_concat(%nyx_string* %4417, %nyx_string* %4419)
  %4421 = load %nyx_string*, %nyx_string** %dir.ptr
  %4422 = call %nyx_string* @nyx_string_concat(%nyx_string* %4420, %nyx_string* %4421)
  %4423 = getelementptr [8 x i8], [8 x i8]* @.str525, i32 0, i32 0
  %4424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %4423, i64 7)
  %4425 = call %nyx_string* @nyx_string_concat(%nyx_string* %4422, %nyx_string* %4424)
  %4426 = call i8* @nyx_string_to_cstr(%nyx_string* %4425)
  %4427 = call %nyx_string* @nyx_exec(i8* %4426)
  %4428 = load %nyx_string*, %nyx_string** %lang.ptr
  %4429 = getelementptr [40 x i8], [40 x i8]* @.str526, i32 0, i32 0
  %4430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %4429, i64 39)
  %4431 = getelementptr [38 x i8], [38 x i8]* @.str527, i32 0, i32 0
  %4432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %4431, i64 37)
  %4433 = call %nyx_string* @sdd_msg(%nyx_string* %4428, %nyx_string* %4430, %nyx_string* %4432)
  %4434 = call i8* @nyx_string_to_cstr(%nyx_string* %4433)
  call void @nyx_print_string(i8* %4434)
  %4435 = load %nyx_string*, %nyx_string** %4361
  %4436 = getelementptr [16 x i8], [16 x i8]* @.str528, i32 0, i32 0
  %4437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %4436, i64 15)
  %4438 = load %nyx_string*, %nyx_string** %dir.ptr
  %4439 = getelementptr [22 x i8], [22 x i8]* @.str529, i32 0, i32 0
  %4440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %4439, i64 21)
  %4441 = call %nyx_string* @nyx_string_concat(%nyx_string* %4438, %nyx_string* %4440)
  %4442 = load %nyx_string*, %nyx_string** %lang.ptr
  %4443 = call i1 @sdd_seed_template(%nyx_string* %4435, %nyx_string* %4437, %nyx_string* %4441, %nyx_string* %4442)
  %4444 = load %nyx_string*, %nyx_string** %4361
  %4445 = getelementptr [12 x i8], [12 x i8]* @.str530, i32 0, i32 0
  %4446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %4445, i64 11)
  %4447 = load %nyx_string*, %nyx_string** %dir.ptr
  %4448 = getelementptr [18 x i8], [18 x i8]* @.str531, i32 0, i32 0
  %4449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %4448, i64 17)
  %4450 = call %nyx_string* @nyx_string_concat(%nyx_string* %4447, %nyx_string* %4449)
  %4451 = load %nyx_string*, %nyx_string** %lang.ptr
  %4452 = call i1 @sdd_seed_template(%nyx_string* %4444, %nyx_string* %4446, %nyx_string* %4450, %nyx_string* %4451)
  %4453 = load %nyx_string*, %nyx_string** %4361
  %4454 = getelementptr [16 x i8], [16 x i8]* @.str532, i32 0, i32 0
  %4455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %4454, i64 15)
  %4456 = load %nyx_string*, %nyx_string** %dir.ptr
  %4457 = getelementptr [27 x i8], [27 x i8]* @.str533, i32 0, i32 0
  %4458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %4457, i64 26)
  %4459 = call %nyx_string* @nyx_string_concat(%nyx_string* %4456, %nyx_string* %4458)
  %4460 = load %nyx_string*, %nyx_string** %lang.ptr
  %4461 = call i1 @sdd_seed_template(%nyx_string* %4453, %nyx_string* %4455, %nyx_string* %4459, %nyx_string* %4460)
  %4462 = load %nyx_string*, %nyx_string** %4361
  %4463 = getelementptr [16 x i8], [16 x i8]* @.str534, i32 0, i32 0
  %4464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %4463, i64 15)
  %4465 = load %nyx_string*, %nyx_string** %dir.ptr
  %4466 = getelementptr [17 x i8], [17 x i8]* @.str535, i32 0, i32 0
  %4467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %4466, i64 16)
  %4468 = call %nyx_string* @nyx_string_concat(%nyx_string* %4465, %nyx_string* %4467)
  %4469 = load %nyx_string*, %nyx_string** %lang.ptr
  %4470 = call i1 @sdd_seed_template(%nyx_string* %4462, %nyx_string* %4464, %nyx_string* %4468, %nyx_string* %4469)
  %4471 = load %nyx_string*, %nyx_string** %4361
  %4472 = getelementptr [14 x i8], [14 x i8]* @.str536, i32 0, i32 0
  %4473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %4472, i64 13)
  %4474 = load %nyx_string*, %nyx_string** %dir.ptr
  %4475 = getelementptr [24 x i8], [24 x i8]* @.str537, i32 0, i32 0
  %4476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %4475, i64 23)
  %4477 = call %nyx_string* @nyx_string_concat(%nyx_string* %4474, %nyx_string* %4476)
  %4478 = load %nyx_string*, %nyx_string** %lang.ptr
  %4479 = call i1 @sdd_seed_template(%nyx_string* %4471, %nyx_string* %4473, %nyx_string* %4477, %nyx_string* %4478)
  %4480 = load %nyx_string*, %nyx_string** %dir.ptr
  %4481 = load %nyx_string*, %nyx_string** %lang.ptr
  %4482 = call i64 @write_evidence(%nyx_string* %4480, %nyx_string* %4481)
  %4483 = alloca i64
  store i64 %4482, i64* %4483
  %4484 = load %nyx_string*, %nyx_string** %dir.ptr
  %4485 = getelementptr [20 x i8], [20 x i8]* @.str538, i32 0, i32 0
  %4486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %4485, i64 19)
  %4487 = call %nyx_string* @nyx_string_concat(%nyx_string* %4484, %nyx_string* %4486)
  %4488 = call %nyx_string* @toolchain_version()
  %4489 = call %nyx_string* @nyx_string_concat(%nyx_string* %4487, %nyx_string* %4488)
  %4490 = getelementptr [4 x i8], [4 x i8]* @.str539, i32 0, i32 0
  %4491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %4490, i64 3)
  %4492 = call %nyx_string* @nyx_string_concat(%nyx_string* %4489, %nyx_string* %4491)
  %4493 = alloca %nyx_string*
  store %nyx_string* %4492, %nyx_string** %4493
  %4494 = load i64, i64* %4483
  %4495 = icmp eq i64 %4494, 1
  br i1 %4495, label %then771, label %else772
then771:
  %4496 = getelementptr [3 x i8], [3 x i8]* @.str540, i32 0, i32 0
  %4497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %4496, i64 2)
  %4498 = load %nyx_string*, %nyx_string** %4493
  %4499 = call %nyx_string* @nyx_string_concat(%nyx_string* %4497, %nyx_string* %4498)
  %4500 = load %nyx_string*, %nyx_string** %lang.ptr
  %4501 = getelementptr [13 x i8], [13 x i8]* @.str541, i32 0, i32 0
  %4502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %4501, i64 12)
  %4503 = getelementptr [12 x i8], [12 x i8]* @.str542, i32 0, i32 0
  %4504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %4503, i64 11)
  %4505 = call %nyx_string* @sdd_msg(%nyx_string* %4500, %nyx_string* %4502, %nyx_string* %4504)
  %4506 = call %nyx_string* @nyx_string_concat(%nyx_string* %4499, %nyx_string* %4505)
  %4507 = call i8* @nyx_string_to_cstr(%nyx_string* %4506)
  call void @nyx_print_string(i8* %4507)
  br label %merge773
else772:
  br label %merge773
merge773:
  %4508 = load i64, i64* %4483
  %4509 = icmp eq i64 %4508, 2
  br i1 %4509, label %then774, label %else775
then774:
  %4510 = load %nyx_string*, %nyx_string** %lang.ptr
  %4511 = getelementptr [41 x i8], [41 x i8]* @.str543, i32 0, i32 0
  %4512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %4511, i64 40)
  %4513 = load %nyx_string*, %nyx_string** %4493
  %4514 = call %nyx_string* @nyx_string_concat(%nyx_string* %4512, %nyx_string* %4513)
  %4515 = getelementptr [47 x i8], [47 x i8]* @.str544, i32 0, i32 0
  %4516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %4515, i64 46)
  %4517 = load %nyx_string*, %nyx_string** %4493
  %4518 = call %nyx_string* @nyx_string_concat(%nyx_string* %4516, %nyx_string* %4517)
  %4519 = call %nyx_string* @sdd_msg(%nyx_string* %4510, %nyx_string* %4514, %nyx_string* %4518)
  %4520 = call i8* @nyx_string_to_cstr(%nyx_string* %4519)
  call void @nyx_print_string(i8* %4520)
  br label %merge776
else775:
  br label %merge776
merge776:
  %4521 = load i64, i64* %4483
  %4522 = icmp eq i64 %4521, 0
  br i1 %4522, label %then777, label %else778
then777:
  %4523 = load %nyx_string*, %nyx_string** %lang.ptr
  %4524 = getelementptr [23 x i8], [23 x i8]* @.str545, i32 0, i32 0
  %4525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %4524, i64 22)
  %4526 = load %nyx_string*, %nyx_string** %4493
  %4527 = call %nyx_string* @nyx_string_concat(%nyx_string* %4525, %nyx_string* %4526)
  %4528 = getelementptr [21 x i8], [21 x i8]* @.str546, i32 0, i32 0
  %4529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %4528, i64 20)
  %4530 = load %nyx_string*, %nyx_string** %4493
  %4531 = call %nyx_string* @nyx_string_concat(%nyx_string* %4529, %nyx_string* %4530)
  %4532 = call %nyx_string* @sdd_msg(%nyx_string* %4523, %nyx_string* %4527, %nyx_string* %4531)
  %4533 = call i8* @nyx_string_to_cstr(%nyx_string* %4532)
  call void @nyx_print_string(i8* %4533)
  br label %merge779
else778:
  br label %merge779
merge779:
  %4534 = load %nyx_string*, %nyx_string** %dir.ptr
  %4535 = call i64 @write_constitution_test(%nyx_string* %4534)
  %4536 = alloca i64
  store i64 %4535, i64* %4536
  %4537 = load %nyx_string*, %nyx_string** %dir.ptr
  %4538 = getelementptr [28 x i8], [28 x i8]* @.str547, i32 0, i32 0
  %4539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %4538, i64 27)
  %4540 = call %nyx_string* @nyx_string_concat(%nyx_string* %4537, %nyx_string* %4539)
  %4541 = alloca %nyx_string*
  store %nyx_string* %4540, %nyx_string** %4541
  %4542 = load i64, i64* %4536
  %4543 = icmp eq i64 %4542, 1
  br i1 %4543, label %then780, label %else781
then780:
  %4544 = getelementptr [3 x i8], [3 x i8]* @.str548, i32 0, i32 0
  %4545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %4544, i64 2)
  %4546 = load %nyx_string*, %nyx_string** %4541
  %4547 = call %nyx_string* @nyx_string_concat(%nyx_string* %4545, %nyx_string* %4546)
  %4548 = load %nyx_string*, %nyx_string** %lang.ptr
  %4549 = getelementptr [13 x i8], [13 x i8]* @.str549, i32 0, i32 0
  %4550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %4549, i64 12)
  %4551 = getelementptr [12 x i8], [12 x i8]* @.str550, i32 0, i32 0
  %4552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %4551, i64 11)
  %4553 = call %nyx_string* @sdd_msg(%nyx_string* %4548, %nyx_string* %4550, %nyx_string* %4552)
  %4554 = call %nyx_string* @nyx_string_concat(%nyx_string* %4547, %nyx_string* %4553)
  %4555 = call i8* @nyx_string_to_cstr(%nyx_string* %4554)
  call void @nyx_print_string(i8* %4555)
  br label %merge782
else781:
  br label %merge782
merge782:
  %4556 = load i64, i64* %4536
  %4557 = icmp eq i64 %4556, 2
  br i1 %4557, label %then783, label %else784
then783:
  %4558 = load %nyx_string*, %nyx_string** %lang.ptr
  %4559 = getelementptr [41 x i8], [41 x i8]* @.str551, i32 0, i32 0
  %4560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %4559, i64 40)
  %4561 = load %nyx_string*, %nyx_string** %4541
  %4562 = call %nyx_string* @nyx_string_concat(%nyx_string* %4560, %nyx_string* %4561)
  %4563 = getelementptr [47 x i8], [47 x i8]* @.str552, i32 0, i32 0
  %4564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %4563, i64 46)
  %4565 = load %nyx_string*, %nyx_string** %4541
  %4566 = call %nyx_string* @nyx_string_concat(%nyx_string* %4564, %nyx_string* %4565)
  %4567 = call %nyx_string* @sdd_msg(%nyx_string* %4558, %nyx_string* %4562, %nyx_string* %4566)
  %4568 = call i8* @nyx_string_to_cstr(%nyx_string* %4567)
  call void @nyx_print_string(i8* %4568)
  br label %merge785
else784:
  br label %merge785
merge785:
  %4569 = load i64, i64* %4536
  %4570 = icmp eq i64 %4569, 0
  br i1 %4570, label %then786, label %else787
then786:
  %4571 = load %nyx_string*, %nyx_string** %lang.ptr
  %4572 = getelementptr [23 x i8], [23 x i8]* @.str553, i32 0, i32 0
  %4573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %4572, i64 22)
  %4574 = load %nyx_string*, %nyx_string** %4541
  %4575 = call %nyx_string* @nyx_string_concat(%nyx_string* %4573, %nyx_string* %4574)
  %4576 = getelementptr [21 x i8], [21 x i8]* @.str554, i32 0, i32 0
  %4577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %4576, i64 20)
  %4578 = load %nyx_string*, %nyx_string** %4541
  %4579 = call %nyx_string* @nyx_string_concat(%nyx_string* %4577, %nyx_string* %4578)
  %4580 = call %nyx_string* @sdd_msg(%nyx_string* %4571, %nyx_string* %4575, %nyx_string* %4579)
  %4581 = call i8* @nyx_string_to_cstr(%nyx_string* %4580)
  call void @nyx_print_string(i8* %4581)
  br label %merge788
else787:
  br label %merge788
merge788:
  %4582 = load %nyx_string*, %nyx_string** %dir.ptr
  %4583 = load %nyx_string*, %nyx_string** %lang.ptr
  %4584 = call i1 @add_agents_triggers(%nyx_string* %4582, %nyx_string* %4583)
  %4585 = getelementptr [1 x i8], [1 x i8]* @.str555, i32 0, i32 0
  %4586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %4585, i64 0)
  %4587 = call i8* @nyx_string_to_cstr(%nyx_string* %4586)
  call void @nyx_print_string(i8* %4587)
  %4588 = load %nyx_string*, %nyx_string** %lang.ptr
  %4589 = getelementptr [94 x i8], [94 x i8]* @.str556, i32 0, i32 0
  %4590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %4589, i64 93)
  %4591 = getelementptr [98 x i8], [98 x i8]* @.str557, i32 0, i32 0
  %4592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %4591, i64 97)
  %4593 = call %nyx_string* @sdd_msg(%nyx_string* %4588, %nyx_string* %4590, %nyx_string* %4592)
  %4594 = call i8* @nyx_string_to_cstr(%nyx_string* %4593)
  call void @nyx_print_string(i8* %4594)
  %4595 = load %nyx_string*, %nyx_string** %lang.ptr
  %4596 = getelementptr [89 x i8], [89 x i8]* @.str558, i32 0, i32 0
  %4597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %4596, i64 88)
  %4598 = getelementptr [90 x i8], [90 x i8]* @.str559, i32 0, i32 0
  %4599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %4598, i64 89)
  %4600 = call %nyx_string* @sdd_msg(%nyx_string* %4595, %nyx_string* %4597, %nyx_string* %4599)
  %4601 = call i8* @nyx_string_to_cstr(%nyx_string* %4600)
  call void @nyx_print_string(i8* %4601)
  %4602 = load %nyx_string*, %nyx_string** %lang.ptr
  %4603 = getelementptr [78 x i8], [78 x i8]* @.str560, i32 0, i32 0
  %4604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %4603, i64 77)
  %4605 = getelementptr [76 x i8], [76 x i8]* @.str561, i32 0, i32 0
  %4606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %4605, i64 75)
  %4607 = call %nyx_string* @sdd_msg(%nyx_string* %4602, %nyx_string* %4604, %nyx_string* %4606)
  %4608 = call i8* @nyx_string_to_cstr(%nyx_string* %4607)
  call void @nyx_print_string(i8* %4608)
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
  %4609 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %4610 = alloca %nyx_string*
  store %nyx_string* %4609, %nyx_string** %4610
  %4611 = load %nyx_string*, %nyx_string** %4610
  %4612 = getelementptr [1 x i8], [1 x i8]* @.str562, i32 0, i32 0
  %4613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %4612, i64 0)
  %4614 = call i1 @nyx_string_equals(%nyx_string* %4611, %nyx_string* %4613)
  %4615 = xor i1 %4614, true
  br i1 %4615, label %then789, label %else790
then789:
  %4616 = load %nyx_string*, %nyx_string** %4610
  %4617 = call i8* @nyx_string_to_cstr(%nyx_string* %4616)
  %4618 = call i1 @nyx_file_exists(i8* %4617)
  br i1 %4618, label %then792, label %else793
then792:
  %4619 = getelementptr [19 x i8], [19 x i8]* @.str563, i32 0, i32 0
  %4620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %4619, i64 18)
  %4621 = load %nyx_string*, %nyx_string** %4610
  %4622 = call %nyx_string* @nyx_string_concat(%nyx_string* %4620, %nyx_string* %4621)
  %4623 = getelementptr [17 x i8], [17 x i8]* @.str564, i32 0, i32 0
  %4624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %4623, i64 16)
  %4625 = call %nyx_string* @nyx_string_concat(%nyx_string* %4622, %nyx_string* %4624)
  %4626 = call i8* @nyx_string_to_cstr(%nyx_string* %4625)
  call void @nyx_print_string(i8* %4626)
  ret i1 0
else793:
  br label %merge794
merge794:
  %4627 = getelementptr [10 x i8], [10 x i8]* @.str565, i32 0, i32 0
  %4628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %4627, i64 9)
  %4629 = load %nyx_string*, %nyx_string** %4610
  %4630 = call %nyx_string* @nyx_string_concat(%nyx_string* %4628, %nyx_string* %4629)
  %4631 = getelementptr [5 x i8], [5 x i8]* @.str566, i32 0, i32 0
  %4632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %4631, i64 4)
  %4633 = call %nyx_string* @nyx_string_concat(%nyx_string* %4630, %nyx_string* %4632)
  %4634 = call i8* @nyx_string_to_cstr(%nyx_string* %4633)
  %4635 = call %nyx_string* @nyx_exec(i8* %4634)
  %4636 = getelementptr [19 x i8], [19 x i8]* @.str567, i32 0, i32 0
  %4637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %4636, i64 18)
  %4638 = load %nyx_string*, %nyx_string** %4610
  %4639 = call %nyx_string* @nyx_string_concat(%nyx_string* %4637, %nyx_string* %4638)
  %4640 = getelementptr [58 x i8], [58 x i8]* @.str568, i32 0, i32 0
  %4641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %4640, i64 57)
  %4642 = call %nyx_string* @nyx_string_concat(%nyx_string* %4639, %nyx_string* %4641)
  %4643 = alloca %nyx_string*
  store %nyx_string* %4642, %nyx_string** %4643
  %4644 = load %nyx_string*, %nyx_string** %4610
  %4645 = getelementptr [10 x i8], [10 x i8]* @.str569, i32 0, i32 0
  %4646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %4645, i64 9)
  %4647 = call %nyx_string* @nyx_string_concat(%nyx_string* %4644, %nyx_string* %4646)
  %4648 = load %nyx_string*, %nyx_string** %4643
  %4649 = call i8* @nyx_string_to_cstr(%nyx_string* %4647)
  %4650 = call i1 @nyx_write_file_safe(i8* %4649, %nyx_string* %4648)
  %4651 = load %nyx_string*, %nyx_string** %4610
  %4652 = getelementptr [13 x i8], [13 x i8]* @.str570, i32 0, i32 0
  %4653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %4652, i64 12)
  %4654 = call %nyx_string* @nyx_string_concat(%nyx_string* %4651, %nyx_string* %4653)
  %4655 = getelementptr [35 x i8], [35 x i8]* @.str571, i32 0, i32 0
  %4656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %4655, i64 34)
  %4657 = load %nyx_string*, %nyx_string** %4610
  %4658 = call %nyx_string* @nyx_string_concat(%nyx_string* %4656, %nyx_string* %4657)
  %4659 = getelementptr [7 x i8], [7 x i8]* @.str572, i32 0, i32 0
  %4660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %4659, i64 6)
  %4661 = call %nyx_string* @nyx_string_concat(%nyx_string* %4658, %nyx_string* %4660)
  %4662 = call i8* @nyx_string_to_cstr(%nyx_string* %4654)
  %4663 = call i1 @nyx_write_file_safe(i8* %4662, %nyx_string* %4661)
  %4664 = load %nyx_string*, %nyx_string** %4610
  %4665 = load %nyx_string*, %nyx_string** %lang.ptr
  %4666 = load %nyx_string*, %nyx_string** %agents.ptr
  %4667 = call i64 @scaffold_project_files(%nyx_string* %4664, %nyx_string* %4665, %nyx_string* %4666)
  %4668 = load %nyx_string*, %nyx_string** %4610
  %4669 = load %nyx_string*, %nyx_string** %4610
  %4670 = call i64 @seed_gitignore(%nyx_string* %4668, %nyx_string* %4669)
  %4671 = getelementptr [22 x i8], [22 x i8]* @.str573, i32 0, i32 0
  %4672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %4671, i64 21)
  %4673 = load %nyx_string*, %nyx_string** %4610
  %4674 = call %nyx_string* @nyx_string_concat(%nyx_string* %4672, %nyx_string* %4673)
  %4675 = call i8* @nyx_string_to_cstr(%nyx_string* %4674)
  call void @nyx_print_string(i8* %4675)
  %4676 = getelementptr [12 x i8], [12 x i8]* @.str574, i32 0, i32 0
  %4677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %4676, i64 11)
  %4678 = load %nyx_string*, %nyx_string** %4610
  %4679 = call %nyx_string* @nyx_string_concat(%nyx_string* %4677, %nyx_string* %4678)
  %4680 = getelementptr [2 x i8], [2 x i8]* @.str575, i32 0, i32 0
  %4681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %4680, i64 1)
  %4682 = call %nyx_string* @nyx_string_concat(%nyx_string* %4679, %nyx_string* %4681)
  %4683 = call i8* @nyx_string_to_cstr(%nyx_string* %4682)
  call void @nyx_print_string(i8* %4683)
  %4684 = getelementptr [15 x i8], [15 x i8]* @.str576, i32 0, i32 0
  %4685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %4684, i64 14)
  %4686 = load %nyx_string*, %nyx_string** %4610
  %4687 = call %nyx_string* @nyx_string_concat(%nyx_string* %4685, %nyx_string* %4686)
  %4688 = getelementptr [12 x i8], [12 x i8]* @.str577, i32 0, i32 0
  %4689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %4688, i64 11)
  %4690 = call %nyx_string* @nyx_string_concat(%nyx_string* %4687, %nyx_string* %4689)
  %4691 = call i8* @nyx_string_to_cstr(%nyx_string* %4690)
  call void @nyx_print_string(i8* %4691)
  ret i1 1
else790:
  br label %merge791
merge791:
  %4692 = getelementptr [9 x i8], [9 x i8]* @.str578, i32 0, i32 0
  %4693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %4692, i64 8)
  %4694 = call i8* @nyx_string_to_cstr(%nyx_string* %4693)
  %4695 = call i1 @nyx_file_exists(i8* %4694)
  br i1 %4695, label %then795, label %else796
then795:
  %4696 = getelementptr [31 x i8], [31 x i8]* @.str579, i32 0, i32 0
  %4697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %4696, i64 30)
  %4698 = call i8* @nyx_string_to_cstr(%nyx_string* %4697)
  call void @nyx_print_string(i8* %4698)
  ret i1 0
else796:
  br label %merge797
merge797:
  %4699 = getelementptr [4 x i8], [4 x i8]* @.str580, i32 0, i32 0
  %4700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %4699, i64 3)
  %4701 = call i8* @nyx_string_to_cstr(%nyx_string* %4700)
  %4702 = call %nyx_string* @nyx_getenv(i8* %4701)
  %4703 = alloca %nyx_string*
  store %nyx_string* %4702, %nyx_string** %4703
  %4704 = getelementptr [6 x i8], [6 x i8]* @.str581, i32 0, i32 0
  %4705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4704, i64 5)
  store %nyx_string* %4705, %nyx_string** %4610
  %4706 = sub i64 0, 1
  %4707 = alloca i64
  store i64 %4706, i64* %4707
  %4708 = alloca i64
  store i64 0, i64* %4708
  %4709 = call i8* @llvm.stacksave()
  br label %while_cond798
while_cond798:
  %4710 = load i64, i64* %4708
  %4711 = load %nyx_string*, %nyx_string** %4703
  %4712 = call i64 @nyx_string_byte_length(%nyx_string* %4711)
  %4713 = icmp slt i64 %4710, %4712
  br i1 %4713, label %while_body799, label %while_end800
while_body799:
  call void @llvm.stackrestore(i8* %4709)
  %4714 = load %nyx_string*, %nyx_string** %4703
  %4715 = load i64, i64* %4708
  %4716 = call i8 @nyx_string_char_at(%nyx_string* %4714, i64 %4715)
  %4717 = zext i8 %4716 to i64
  %4718 = icmp eq i64 %4717, 47
  br i1 %4718, label %then801, label %else802
then801:
  %4719 = load i64, i64* %4708
  store i64 %4719, i64* %4707
  br label %merge803
else802:
  br label %merge803
merge803:
  %4720 = load i64, i64* %4708
  %4721 = add i64 %4720, 1
  store i64 %4721, i64* %4708
  br label %while_cond798
while_end800:
  %4722 = load i64, i64* %4707
  %4723 = icmp sge i64 %4722, 0
  br i1 %4723, label %then804, label %else805
then804:
  %4724 = load %nyx_string*, %nyx_string** %4703
  %4725 = load i64, i64* %4707
  %4726 = add i64 %4725, 1
  %4727 = load %nyx_string*, %nyx_string** %4703
  %4728 = call i64 @nyx_string_byte_length(%nyx_string* %4727)
  %4729 = call %nyx_string* @nyx_string_substring(%nyx_string* %4724, i64 %4726, i64 %4728)
  store %nyx_string* %4729, %nyx_string** %4610
  br label %merge806
else805:
  br label %merge806
merge806:
  %4730 = getelementptr [19 x i8], [19 x i8]* @.str582, i32 0, i32 0
  %4731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4730, i64 18)
  %4732 = load %nyx_string*, %nyx_string** %4610
  %4733 = call %nyx_string* @nyx_string_concat(%nyx_string* %4731, %nyx_string* %4732)
  %4734 = getelementptr [58 x i8], [58 x i8]* @.str583, i32 0, i32 0
  %4735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4734, i64 57)
  %4736 = call %nyx_string* @nyx_string_concat(%nyx_string* %4733, %nyx_string* %4735)
  %4737 = alloca %nyx_string*
  store %nyx_string* %4736, %nyx_string** %4737
  %4738 = getelementptr [9 x i8], [9 x i8]* @.str584, i32 0, i32 0
  %4739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4738, i64 8)
  %4740 = load %nyx_string*, %nyx_string** %4737
  %4741 = call i8* @nyx_string_to_cstr(%nyx_string* %4739)
  %4742 = call i1 @nyx_write_file_safe(i8* %4741, %nyx_string* %4740)
  %4743 = getelementptr [13 x i8], [13 x i8]* @.str585, i32 0, i32 0
  %4744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4743, i64 12)
  %4745 = call i8* @nyx_string_to_cstr(%nyx_string* %4744)
  %4746 = call %nyx_string* @nyx_exec(i8* %4745)
  %4747 = getelementptr [12 x i8], [12 x i8]* @.str586, i32 0, i32 0
  %4748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4747, i64 11)
  %4749 = call i8* @nyx_string_to_cstr(%nyx_string* %4748)
  %4750 = call i1 @nyx_file_exists(i8* %4749)
  %4751 = icmp eq i1 %4750, 0
  br i1 %4751, label %then807, label %else808
then807:
  %4752 = getelementptr [12 x i8], [12 x i8]* @.str587, i32 0, i32 0
  %4753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4752, i64 11)
  %4754 = getelementptr [35 x i8], [35 x i8]* @.str588, i32 0, i32 0
  %4755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4754, i64 34)
  %4756 = load %nyx_string*, %nyx_string** %4610
  %4757 = call %nyx_string* @nyx_string_concat(%nyx_string* %4755, %nyx_string* %4756)
  %4758 = getelementptr [7 x i8], [7 x i8]* @.str589, i32 0, i32 0
  %4759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4758, i64 6)
  %4760 = call %nyx_string* @nyx_string_concat(%nyx_string* %4757, %nyx_string* %4759)
  %4761 = call i8* @nyx_string_to_cstr(%nyx_string* %4753)
  %4762 = call i1 @nyx_write_file_safe(i8* %4761, %nyx_string* %4760)
  br label %merge809
else808:
  br label %merge809
merge809:
  %4763 = getelementptr [2 x i8], [2 x i8]* @.str590, i32 0, i32 0
  %4764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4763, i64 1)
  %4765 = load %nyx_string*, %nyx_string** %lang.ptr
  %4766 = load %nyx_string*, %nyx_string** %agents.ptr
  %4767 = call i64 @scaffold_project_files(%nyx_string* %4764, %nyx_string* %4765, %nyx_string* %4766)
  %4768 = getelementptr [2 x i8], [2 x i8]* @.str591, i32 0, i32 0
  %4769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4768, i64 1)
  %4770 = load %nyx_string*, %nyx_string** %4610
  %4771 = call i64 @seed_gitignore(%nyx_string* %4769, %nyx_string* %4770)
  %4772 = getelementptr [22 x i8], [22 x i8]* @.str592, i32 0, i32 0
  %4773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4772, i64 21)
  %4774 = load %nyx_string*, %nyx_string** %4610
  %4775 = call %nyx_string* @nyx_string_concat(%nyx_string* %4773, %nyx_string* %4774)
  %4776 = call i8* @nyx_string_to_cstr(%nyx_string* %4775)
  call void @nyx_print_string(i8* %4776)
  %4777 = getelementptr [33 x i8], [33 x i8]* @.str593, i32 0, i32 0
  %4778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4777, i64 32)
  %4779 = call i8* @nyx_string_to_cstr(%nyx_string* %4778)
  call void @nyx_print_string(i8* %4779)
  %4780 = getelementptr [21 x i8], [21 x i8]* @.str594, i32 0, i32 0
  %4781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4780, i64 20)
  %4782 = call i8* @nyx_string_to_cstr(%nyx_string* %4781)
  call void @nyx_print_string(i8* %4782)
  %4783 = getelementptr [19 x i8], [19 x i8]* @.str595, i32 0, i32 0
  %4784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4783, i64 18)
  %4785 = call i8* @nyx_string_to_cstr(%nyx_string* %4784)
  call void @nyx_print_string(i8* %4785)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %4786 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4787 = load { i64, i8* }*, { i64, i8* }** %4786
  %4788 = call i64 @nyx_array_length({ i64, i8* }* %4787)
  %4789 = icmp eq i64 %4788, 0
  br i1 %4789, label %then810, label %else811
then810:
  ret i1 1
else811:
  br label %merge812
merge812:
  %4790 = alloca i64
  store i64 0, i64* %4790
  %4791 = getelementptr [10 x i8], [10 x i8]* @.str596, i32 0, i32 0
  %4792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4791, i64 9)
  %4793 = alloca %nyx_string*
  store %nyx_string* %4792, %nyx_string** %4793
  %4794 = getelementptr [14 x i8], [14 x i8]* @.str597, i32 0, i32 0
  %4795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4794, i64 13)
  %4796 = alloca %nyx_string*
  store %nyx_string* %4795, %nyx_string** %4796
  %4797 = getelementptr [5 x i8], [5 x i8]* @.str598, i32 0, i32 0
  %4798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4797, i64 4)
  %4799 = alloca %nyx_string*
  store %nyx_string* %4798, %nyx_string** %4799
  %4800 = getelementptr [4 x i8], [4 x i8]* @.str599, i32 0, i32 0
  %4801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4800, i64 3)
  %4802 = alloca %nyx_string*
  store %nyx_string* %4801, %nyx_string** %4802
  %4803 = getelementptr [32 x i8], [32 x i8]* @.str600, i32 0, i32 0
  %4804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4803, i64 31)
  %4805 = alloca %nyx_string*
  store %nyx_string* %4804, %nyx_string** %4805
  %4806 = getelementptr [43 x i8], [43 x i8]* @.str601, i32 0, i32 0
  %4807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4806, i64 42)
  %4808 = alloca %nyx_string*
  store %nyx_string* %4807, %nyx_string** %4808
  %4809 = getelementptr [2 x i8], [2 x i8]* @.str602, i32 0, i32 0
  %4810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4809, i64 1)
  %4811 = alloca %nyx_string*
  store %nyx_string* %4810, %nyx_string** %4811
  %4812 = getelementptr [13 x i8], [13 x i8]* @.str603, i32 0, i32 0
  %4813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4812, i64 12)
  %4814 = alloca %nyx_string*
  store %nyx_string* %4813, %nyx_string** %4814
  %4815 = getelementptr [26 x i8], [26 x i8]* @.str604, i32 0, i32 0
  %4816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4815, i64 25)
  %4817 = alloca %nyx_string*
  store %nyx_string* %4816, %nyx_string** %4817
  %4818 = getelementptr [7 x i8], [7 x i8]* @.str605, i32 0, i32 0
  %4819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4818, i64 6)
  %4820 = alloca %nyx_string*
  store %nyx_string* %4819, %nyx_string** %4820
  %4821 = getelementptr [12 x i8], [12 x i8]* @.str606, i32 0, i32 0
  %4822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4821, i64 11)
  %4823 = alloca %nyx_string*
  store %nyx_string* %4822, %nyx_string** %4823
  %4824 = call i8* @llvm.stacksave()
  br label %while_cond813
while_cond813:
  %4825 = load i64, i64* %4790
  %4826 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4827 = load { i64, i8* }*, { i64, i8* }** %4826
  %4828 = call i64 @nyx_array_length({ i64, i8* }* %4827)
  %4829 = icmp slt i64 %4825, %4828
  br i1 %4829, label %while_body814, label %while_end815
while_body814:
  call void @llvm.stackrestore(i8* %4824)
  %4830 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %4831 = load { i64, i8* }*, { i64, i8* }** %4830
  %4832 = load i64, i64* %4790
  %4833 = call i64 @nyx_array_get({ i64, i8* }* %4831, i64 %4832)
  %4834 = inttoptr i64 %4833 to %nyx_string*
  %4835 = alloca %nyx_string*
  store %nyx_string* %4834, %nyx_string** %4835
  %4836 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %4837 = load { i64, i8* }*, { i64, i8* }** %4836
  %4838 = load i64, i64* %4790
  %4839 = call i64 @nyx_array_get({ i64, i8* }* %4837, i64 %4838)
  %4840 = inttoptr i64 %4839 to %nyx_string*
  %4841 = alloca %nyx_string*
  store %nyx_string* %4840, %nyx_string** %4841
  %4842 = load %nyx_string*, %nyx_string** %4793
  %4843 = load %nyx_string*, %nyx_string** %4835
  %4844 = call %nyx_string* @nyx_string_concat(%nyx_string* %4842, %nyx_string* %4843)
  %4845 = alloca %nyx_string*
  store %nyx_string* %4844, %nyx_string** %4845
  %4846 = load %nyx_string*, %nyx_string** %4845
  %4847 = call i8* @nyx_string_to_cstr(%nyx_string* %4846)
  %4848 = call i1 @nyx_file_exists(i8* %4847)
  %4849 = icmp eq i1 %4848, 0
  br i1 %4849, label %then816, label %else817
then816:
  %4850 = load %nyx_string*, %nyx_string** %4796
  %4851 = load %nyx_string*, %nyx_string** %4835
  %4852 = call %nyx_string* @nyx_string_concat(%nyx_string* %4850, %nyx_string* %4851)
  %4853 = call i8* @nyx_string_to_cstr(%nyx_string* %4852)
  call void @nyx_print_string(i8* %4853)
  %4854 = load %nyx_string*, %nyx_string** %4841
  %4855 = alloca %nyx_string*
  store %nyx_string* %4854, %nyx_string** %4855
  %4856 = alloca i1
  store i1 false, i1* %4856
  %4857 = load %nyx_string*, %nyx_string** %4855
  %4858 = load %nyx_string*, %nyx_string** %4799
  %4859 = call i1 @nyx_string_starts_with(%nyx_string* %4857, %nyx_string* %4858)
  %4860 = icmp eq i1 %4859, 0
  br i1 %4860, label %sc_and_rhs819, label %sc_and_end820
sc_and_rhs819:
  %4861 = load %nyx_string*, %nyx_string** %4855
  %4862 = load %nyx_string*, %nyx_string** %4802
  %4863 = call i1 @nyx_string_starts_with(%nyx_string* %4861, %nyx_string* %4862)
  %4864 = icmp eq i1 %4863, 0
  store i1 %4864, i1* %4856
  br label %sc_and_end820
sc_and_end820:
  %4865 = load i1, i1* %4856
  br i1 %4865, label %then821, label %else822
then821:
  %4866 = load %nyx_string*, %nyx_string** %4805
  %4867 = load %nyx_string*, %nyx_string** %4835
  %4868 = call %nyx_string* @nyx_string_concat(%nyx_string* %4866, %nyx_string* %4867)
  store %nyx_string* %4868, %nyx_string** %4855
  br label %merge823
else822:
  br label %merge823
merge823:
  %4869 = load %nyx_string*, %nyx_string** %4808
  %4870 = load %nyx_string*, %nyx_string** %4855
  %4871 = call %nyx_string* @nyx_string_concat(%nyx_string* %4869, %nyx_string* %4870)
  %4872 = load %nyx_string*, %nyx_string** %4811
  %4873 = call %nyx_string* @nyx_string_concat(%nyx_string* %4871, %nyx_string* %4872)
  %4874 = load %nyx_string*, %nyx_string** %4845
  %4875 = call %nyx_string* @nyx_string_concat(%nyx_string* %4873, %nyx_string* %4874)
  %4876 = load %nyx_string*, %nyx_string** %4814
  %4877 = call %nyx_string* @nyx_string_concat(%nyx_string* %4875, %nyx_string* %4876)
  %4878 = alloca %nyx_string*
  store %nyx_string* %4877, %nyx_string** %4878
  %4879 = load %nyx_string*, %nyx_string** %4878
  %4880 = call i8* @nyx_string_to_cstr(%nyx_string* %4879)
  %4881 = call i64 @nyx_exec_code(i8* %4880)
  %4882 = alloca i64
  store i64 %4881, i64* %4882
  %4883 = load i64, i64* %4882
  %4884 = icmp ne i64 %4883, 0
  br i1 %4884, label %then824, label %else825
then824:
  %4885 = load %nyx_string*, %nyx_string** %4817
  %4886 = load %nyx_string*, %nyx_string** %4835
  %4887 = call %nyx_string* @nyx_string_concat(%nyx_string* %4885, %nyx_string* %4886)
  %4888 = load %nyx_string*, %nyx_string** %4820
  %4889 = call %nyx_string* @nyx_string_concat(%nyx_string* %4887, %nyx_string* %4888)
  %4890 = load %nyx_string*, %nyx_string** %4855
  %4891 = call %nyx_string* @nyx_string_concat(%nyx_string* %4889, %nyx_string* %4890)
  %4892 = call i8* @nyx_string_to_cstr(%nyx_string* %4891)
  call void @nyx_print_string(i8* %4892)
  ret i1 0
else825:
  br label %merge826
merge826:
  %4893 = load %nyx_string*, %nyx_string** %4823
  %4894 = load %nyx_string*, %nyx_string** %4835
  %4895 = call %nyx_string* @nyx_string_concat(%nyx_string* %4893, %nyx_string* %4894)
  %4896 = call i8* @nyx_string_to_cstr(%nyx_string* %4895)
  call void @nyx_print_string(i8* %4896)
  br label %merge818
else817:
  br label %merge818
merge818:
  %4897 = load i64, i64* %4790
  %4898 = add i64 %4897, 1
  store i64 %4898, i64* %4790
  br label %while_cond813
while_end815:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %4899 = getelementptr [128 x i8], [128 x i8]* @.str607, i32 0, i32 0
  %4900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4899, i64 127)
  %4901 = alloca %nyx_string*
  store %nyx_string* %4900, %nyx_string** %4901
  %4902 = getelementptr [37 x i8], [37 x i8]* @.str608, i32 0, i32 0
  %4903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4902, i64 36)
  %4904 = alloca %nyx_string*
  store %nyx_string* %4903, %nyx_string** %4904
  %4905 = getelementptr [14 x i8], [14 x i8]* @.str609, i32 0, i32 0
  %4906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4905, i64 13)
  %4907 = load %nyx_string*, %nyx_string** %4901
  %4908 = call %nyx_string* @nyx_string_concat(%nyx_string* %4906, %nyx_string* %4907)
  %4909 = getelementptr [16 x i8], [16 x i8]* @.str610, i32 0, i32 0
  %4910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4909, i64 15)
  %4911 = call %nyx_string* @nyx_string_concat(%nyx_string* %4908, %nyx_string* %4910)
  %4912 = getelementptr [33 x i8], [33 x i8]* @.str611, i32 0, i32 0
  %4913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4912, i64 32)
  %4914 = call %nyx_string* @nyx_string_concat(%nyx_string* %4911, %nyx_string* %4913)
  %4915 = getelementptr [99 x i8], [99 x i8]* @.str612, i32 0, i32 0
  %4916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4915, i64 98)
  %4917 = call %nyx_string* @nyx_string_concat(%nyx_string* %4914, %nyx_string* %4916)
  %4918 = load %nyx_string*, %nyx_string** %main_file.ptr
  %4919 = call %nyx_string* @nyx_string_concat(%nyx_string* %4917, %nyx_string* %4918)
  %4920 = getelementptr [74 x i8], [74 x i8]* @.str613, i32 0, i32 0
  %4921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4920, i64 73)
  %4922 = call %nyx_string* @nyx_string_concat(%nyx_string* %4919, %nyx_string* %4921)
  %4923 = getelementptr [6 x i8], [6 x i8]* @.str614, i32 0, i32 0
  %4924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4923, i64 5)
  %4925 = call %nyx_string* @nyx_string_concat(%nyx_string* %4922, %nyx_string* %4924)
  %4926 = getelementptr [91 x i8], [91 x i8]* @.str615, i32 0, i32 0
  %4927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %4926, i64 90)
  %4928 = call %nyx_string* @nyx_string_concat(%nyx_string* %4925, %nyx_string* %4927)
  %4929 = load %nyx_string*, %nyx_string** %main_file.ptr
  %4930 = call %nyx_string* @nyx_string_concat(%nyx_string* %4928, %nyx_string* %4929)
  %4931 = getelementptr [76 x i8], [76 x i8]* @.str616, i32 0, i32 0
  %4932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %4931, i64 75)
  %4933 = call %nyx_string* @nyx_string_concat(%nyx_string* %4930, %nyx_string* %4932)
  %4934 = getelementptr [5 x i8], [5 x i8]* @.str617, i32 0, i32 0
  %4935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4934, i64 4)
  %4936 = call %nyx_string* @nyx_string_concat(%nyx_string* %4933, %nyx_string* %4935)
  %4937 = getelementptr [16 x i8], [16 x i8]* @.str618, i32 0, i32 0
  %4938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4937, i64 15)
  %4939 = call %nyx_string* @nyx_string_concat(%nyx_string* %4936, %nyx_string* %4938)
  %4940 = load %nyx_string*, %nyx_string** %4904
  %4941 = call %nyx_string* @nyx_string_concat(%nyx_string* %4939, %nyx_string* %4940)
  %4942 = getelementptr [16 x i8], [16 x i8]* @.str619, i32 0, i32 0
  %4943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4942, i64 15)
  %4944 = call %nyx_string* @nyx_string_concat(%nyx_string* %4941, %nyx_string* %4943)
  %4945 = getelementptr [33 x i8], [33 x i8]* @.str620, i32 0, i32 0
  %4946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4945, i64 32)
  %4947 = call %nyx_string* @nyx_string_concat(%nyx_string* %4944, %nyx_string* %4946)
  %4948 = getelementptr [176 x i8], [176 x i8]* @.str621, i32 0, i32 0
  %4949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4948, i64 175)
  %4950 = call %nyx_string* @nyx_string_concat(%nyx_string* %4947, %nyx_string* %4949)
  %4951 = getelementptr [6 x i8], [6 x i8]* @.str622, i32 0, i32 0
  %4952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4951, i64 5)
  %4953 = call %nyx_string* @nyx_string_concat(%nyx_string* %4950, %nyx_string* %4952)
  %4954 = getelementptr [184 x i8], [184 x i8]* @.str623, i32 0, i32 0
  %4955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4954, i64 183)
  %4956 = call %nyx_string* @nyx_string_concat(%nyx_string* %4953, %nyx_string* %4955)
  %4957 = getelementptr [5 x i8], [5 x i8]* @.str624, i32 0, i32 0
  %4958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4957, i64 4)
  %4959 = call %nyx_string* @nyx_string_concat(%nyx_string* %4956, %nyx_string* %4958)
  %4960 = getelementptr [6 x i8], [6 x i8]* @.str625, i32 0, i32 0
  %4961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4960, i64 5)
  %4962 = call %nyx_string* @nyx_string_concat(%nyx_string* %4959, %nyx_string* %4961)
  %4963 = getelementptr [33 x i8], [33 x i8]* @.str626, i32 0, i32 0
  %4964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4963, i64 32)
  %4965 = call %nyx_string* @nyx_string_concat(%nyx_string* %4962, %nyx_string* %4964)
  %4966 = getelementptr [127 x i8], [127 x i8]* @.str627, i32 0, i32 0
  %4967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4966, i64 126)
  %4968 = call %nyx_string* @nyx_string_concat(%nyx_string* %4965, %nyx_string* %4967)
  %4969 = getelementptr [6 x i8], [6 x i8]* @.str628, i32 0, i32 0
  %4970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4969, i64 5)
  %4971 = call %nyx_string* @nyx_string_concat(%nyx_string* %4968, %nyx_string* %4970)
  %4972 = getelementptr [119 x i8], [119 x i8]* @.str629, i32 0, i32 0
  %4973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %4972, i64 118)
  %4974 = call %nyx_string* @nyx_string_concat(%nyx_string* %4971, %nyx_string* %4973)
  %4975 = getelementptr [5 x i8], [5 x i8]* @.str630, i32 0, i32 0
  %4976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %4975, i64 4)
  %4977 = call %nyx_string* @nyx_string_concat(%nyx_string* %4974, %nyx_string* %4976)
  %4978 = getelementptr [4 x i8], [4 x i8]* @.str631, i32 0, i32 0
  %4979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %4978, i64 3)
  %4980 = call %nyx_string* @nyx_string_concat(%nyx_string* %4977, %nyx_string* %4979)
  ret %nyx_string* %4980
}

define internal %nyx_string* @pila_compilador_sh(
) {
  %4981 = getelementptr [180 x i8], [180 x i8]* @.str632, i32 0, i32 0
  %4982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %4981, i64 179)
  ret %nyx_string* %4982
}

define internal %nyx_string* @pila_compilador_pista_sh(
) {
  %4983 = getelementptr [326 x i8], [326 x i8]* @.str633, i32 0, i32 0
  %4984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %4983, i64 325)
  ret %nyx_string* %4984
}

define internal %nyx_string* @lib_pista_import_sh(
) {
  %4985 = getelementptr [22 x i8], [22 x i8]* @.str634, i32 0, i32 0
  %4986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %4985, i64 21)
  %4987 = alloca %nyx_string*
  store %nyx_string* %4986, %nyx_string** %4987
  %4988 = load %nyx_string*, %nyx_string** %4987
  %4989 = getelementptr [99 x i8], [99 x i8]* @.str635, i32 0, i32 0
  %4990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %4989, i64 98)
  %4991 = call %nyx_string* @nyx_string_concat(%nyx_string* %4988, %nyx_string* %4990)
  store %nyx_string* %4991, %nyx_string** %4987
  %4992 = load %nyx_string*, %nyx_string** %4987
  %4993 = getelementptr [95 x i8], [95 x i8]* @.str636, i32 0, i32 0
  %4994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %4993, i64 94)
  %4995 = call %nyx_string* @nyx_string_concat(%nyx_string* %4992, %nyx_string* %4994)
  store %nyx_string* %4995, %nyx_string** %4987
  %4996 = load %nyx_string*, %nyx_string** %4987
  %4997 = getelementptr [31 x i8], [31 x i8]* @.str637, i32 0, i32 0
  %4998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %4997, i64 30)
  %4999 = call %nyx_string* @nyx_string_concat(%nyx_string* %4996, %nyx_string* %4998)
  store %nyx_string* %4999, %nyx_string** %4987
  %5000 = load %nyx_string*, %nyx_string** %4987
  %5001 = getelementptr [59 x i8], [59 x i8]* @.str638, i32 0, i32 0
  %5002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %5001, i64 58)
  %5003 = call %nyx_string* @nyx_string_concat(%nyx_string* %5000, %nyx_string* %5002)
  store %nyx_string* %5003, %nyx_string** %4987
  %5004 = load %nyx_string*, %nyx_string** %4987
  %5005 = getelementptr [81 x i8], [81 x i8]* @.str639, i32 0, i32 0
  %5006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %5005, i64 80)
  %5007 = call %nyx_string* @nyx_string_concat(%nyx_string* %5004, %nyx_string* %5006)
  store %nyx_string* %5007, %nyx_string** %4987
  %5008 = load %nyx_string*, %nyx_string** %4987
  %5009 = getelementptr [243 x i8], [243 x i8]* @.str640, i32 0, i32 0
  %5010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %5009, i64 242)
  %5011 = call %nyx_string* @nyx_string_concat(%nyx_string* %5008, %nyx_string* %5010)
  store %nyx_string* %5011, %nyx_string** %4987
  %5012 = load %nyx_string*, %nyx_string** %4987
  %5013 = getelementptr [8 x i8], [8 x i8]* @.str641, i32 0, i32 0
  %5014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %5013, i64 7)
  %5015 = call %nyx_string* @nyx_string_concat(%nyx_string* %5012, %nyx_string* %5014)
  store %nyx_string* %5015, %nyx_string** %4987
  %5016 = load %nyx_string*, %nyx_string** %4987
  %5017 = getelementptr [12 x i8], [12 x i8]* @.str642, i32 0, i32 0
  %5018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %5017, i64 11)
  %5019 = call %nyx_string* @nyx_string_concat(%nyx_string* %5016, %nyx_string* %5018)
  store %nyx_string* %5019, %nyx_string** %4987
  %5020 = load %nyx_string*, %nyx_string** %4987
  %5021 = getelementptr [3 x i8], [3 x i8]* @.str643, i32 0, i32 0
  %5022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %5021, i64 2)
  %5023 = call %nyx_string* @nyx_string_concat(%nyx_string* %5020, %nyx_string* %5022)
  store %nyx_string* %5023, %nyx_string** %4987
  %5024 = load %nyx_string*, %nyx_string** %4987
  ret %nyx_string* %5024
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
  %5025 = load %nyx_string*, %nyx_string** %path.ptr
  %5026 = getelementptr [4 x i8], [4 x i8]* @.str644, i32 0, i32 0
  %5027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %5026, i64 3)
  %5028 = call %nyx_string* @nyx_string_concat(%nyx_string* %5025, %nyx_string* %5027)
  %5029 = alloca %nyx_string*
  store %nyx_string* %5028, %nyx_string** %5029
  %5030 = load %nyx_string*, %nyx_string** %path.ptr
  %5031 = getelementptr [5 x i8], [5 x i8]* @.str645, i32 0, i32 0
  %5032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %5031, i64 4)
  %5033 = call i1 @nyx_string_starts_with(%nyx_string* %5030, %nyx_string* %5032)
  br i1 %5033, label %then827, label %else828
then827:
  %5034 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5035 = getelementptr [2 x i8], [2 x i8]* @.str646, i32 0, i32 0
  %5036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %5035, i64 1)
  %5037 = call %nyx_string* @nyx_string_concat(%nyx_string* %5034, %nyx_string* %5036)
  %5038 = load %nyx_string*, %nyx_string** %path.ptr
  %5039 = load %nyx_string*, %nyx_string** %path.ptr
  %5040 = call i64 @nyx_string_byte_length(%nyx_string* %5039)
  %5041 = call %nyx_string* @nyx_string_substring(%nyx_string* %5038, i64 4, i64 %5040)
  %5042 = call %nyx_string* @nyx_string_concat(%nyx_string* %5037, %nyx_string* %5041)
  %5043 = getelementptr [4 x i8], [4 x i8]* @.str647, i32 0, i32 0
  %5044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %5043, i64 3)
  %5045 = call %nyx_string* @nyx_string_concat(%nyx_string* %5042, %nyx_string* %5044)
  store %nyx_string* %5045, %nyx_string** %5029
  br label %merge829
else828:
  br label %merge829
merge829:
  %5046 = load i8*, i8** %vistos.ptr
  %5047 = load %nyx_string*, %nyx_string** %5029
  %5048 = call i8* @nyx_string_to_cstr(%nyx_string* %5047)
  %5049 = call i1 @nyx_map_contains_str(i8* %5046, i8* %5048)
  br i1 %5049, label %then830, label %else831
then830:
  ret i64 0
else831:
  br label %merge832
merge832:
  %5050 = load i8*, i8** %vistos.ptr
  %5051 = load %nyx_string*, %nyx_string** %5029
  %5052 = call i8* @nyx_string_to_cstr(%nyx_string* %5051)
  call void @nyx_map_insert_int(i8* %5050, i8* %5052, i64 1)
  %5053 = load i8*, i8** %imports_de.ptr
  %5054 = load %nyx_string*, %nyx_string** %5029
  %5055 = call i8* @nyx_string_to_cstr(%nyx_string* %5054)
  %5056 = call i1 @nyx_map_contains_str(i8* %5053, i8* %5055)
  %5057 = xor i1 %5056, true
  br i1 %5057, label %then833, label %else834
then833:
  %5058 = call { i64, i8* }* @nyx_array_new_ptr()
  %5059 = alloca { i64, i8* }*
  store { i64, i8* }* %5058, { i64, i8* }** %5059
  %5060 = load %nyx_string*, %nyx_string** %5029
  %5061 = call i8* @nyx_string_to_cstr(%nyx_string* %5060)
  %5062 = call i1 @nyx_file_exists(i8* %5061)
  br i1 %5062, label %then836, label %else837
then836:
  %5063 = load %nyx_string*, %nyx_string** %5029
  %5064 = call i8* @nyx_string_to_cstr(%nyx_string* %5063)
  %5065 = call %nyx_string* @nyx_read_file(i8* %5064)
  %5066 = getelementptr [2 x i8], [2 x i8]* @.str648, i32 0, i32 0
  %5067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %5066, i64 1)
  %5068 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5065, %nyx_string* %5067)
  %5069 = alloca { i64, i8* }*
  store { i64, i8* }* %5068, { i64, i8* }** %5069
  %5070 = alloca i64
  store i64 0, i64* %5070
  %5071 = getelementptr [8 x i8], [8 x i8]* @.str649, i32 0, i32 0
  %5072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %5071, i64 7)
  %5073 = alloca %nyx_string*
  store %nyx_string* %5072, %nyx_string** %5073
  %5074 = getelementptr [2 x i8], [2 x i8]* @.str650, i32 0, i32 0
  %5075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %5074, i64 1)
  %5076 = alloca %nyx_string*
  store %nyx_string* %5075, %nyx_string** %5076
  %5077 = call i8* @llvm.stacksave()
  br label %while_cond839
while_cond839:
  %5078 = load i64, i64* %5070
  %5079 = load { i64, i8* }*, { i64, i8* }** %5069
  %5080 = call i64 @nyx_array_length({ i64, i8* }* %5079)
  %5081 = icmp slt i64 %5078, %5080
  br i1 %5081, label %while_body840, label %while_end841
while_body840:
  call void @llvm.stackrestore(i8* %5077)
  %5082 = load { i64, i8* }*, { i64, i8* }** %5069
  %5083 = load i64, i64* %5070
  %5084 = call i64 @nyx_array_get_checked({ i64, i8* }* %5082, i64 %5083, i64 2)
  %5085 = inttoptr i64 %5084 to %nyx_string*
  %5086 = alloca %nyx_string*
  store %nyx_string* %5085, %nyx_string** %5086
  %5087 = load %nyx_string*, %nyx_string** %5086
  %5088 = call %nyx_string* @nyx_string_trim(%nyx_string* %5087)
  %5089 = alloca %nyx_string*
  store %nyx_string* %5088, %nyx_string** %5089
  %5090 = load %nyx_string*, %nyx_string** %5089
  %5091 = load %nyx_string*, %nyx_string** %5073
  %5092 = call i1 @nyx_string_starts_with(%nyx_string* %5090, %nyx_string* %5091)
  br i1 %5092, label %then842, label %else843
then842:
  %5093 = load %nyx_string*, %nyx_string** %5089
  %5094 = load %nyx_string*, %nyx_string** %5076
  %5095 = call i64 @nyx_string_index_of(%nyx_string* %5093, %nyx_string* %5094)
  %5096 = alloca i64
  store i64 %5095, i64* %5096
  %5097 = load i64, i64* %5096
  %5098 = icmp sge i64 %5097, 0
  br i1 %5098, label %then845, label %else846
then845:
  %5099 = load %nyx_string*, %nyx_string** %5089
  %5100 = load i64, i64* %5096
  %5101 = add i64 %5100, 1
  %5102 = load %nyx_string*, %nyx_string** %5089
  %5103 = call i64 @nyx_string_byte_length(%nyx_string* %5102)
  %5104 = call %nyx_string* @nyx_string_substring(%nyx_string* %5099, i64 %5101, i64 %5103)
  %5105 = alloca %nyx_string*
  store %nyx_string* %5104, %nyx_string** %5105
  %5106 = load %nyx_string*, %nyx_string** %5105
  %5107 = load %nyx_string*, %nyx_string** %5076
  %5108 = call i64 @nyx_string_index_of(%nyx_string* %5106, %nyx_string* %5107)
  %5109 = alloca i64
  store i64 %5108, i64* %5109
  %5110 = load i64, i64* %5109
  %5111 = icmp sgt i64 %5110, 0
  br i1 %5111, label %then848, label %else849
then848:
  %5112 = load { i64, i8* }*, { i64, i8* }** %5059
  %5113 = load %nyx_string*, %nyx_string** %5105
  %5114 = load i64, i64* %5109
  %5115 = call %nyx_string* @nyx_string_substring(%nyx_string* %5113, i64 0, i64 %5114)
  %5116 = ptrtoint %nyx_string* %5115 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5112, i64 %5116, i64 2)
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
  %5117 = load i64, i64* %5070
  %5118 = add i64 %5117, 1
  store i64 %5118, i64* %5070
  br label %while_cond839
while_end841:
  br label %merge838
else837:
  %5119 = load { i64, i8* }*, { i64, i8* }** %5059
  %5120 = getelementptr [1 x i8], [1 x i8]* @.str651, i32 0, i32 0
  %5121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %5120, i64 0)
  %5122 = ptrtoint %nyx_string* %5121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5119, i64 %5122, i64 2)
  br label %merge838
merge838:
  %5123 = load i8*, i8** %imports_de.ptr
  %5124 = load %nyx_string*, %nyx_string** %5029
  %5125 = load { i64, i8* }*, { i64, i8* }** %5059
  %5126 = call i8* @nyx_string_to_cstr(%nyx_string* %5124)
  %5127 = ptrtoint { i64, i8* }* %5125 to i64
  call void @nyx_map_insert_int(i8* %5123, i8* %5126, i64 %5127)
  br label %merge835
else834:
  br label %merge835
merge835:
  %5128 = load i8*, i8** %imports_de.ptr
  %5129 = load %nyx_string*, %nyx_string** %5029
  %5130 = call i8* @nyx_string_to_cstr(%nyx_string* %5129)
  %5131 = call i64 @nyx_map_get_int(i8* %5128, i8* %5130)
  %5132 = inttoptr i64 %5131 to { i64, i8* }*
  %5133 = alloca { i64, i8* }*
  store { i64, i8* }* %5132, { i64, i8* }** %5133
  %5134 = load { i64, i8* }*, { i64, i8* }** %5133
  %5135 = call i64 @nyx_array_length({ i64, i8* }* %5134)
  %5136 = icmp eq i64 %5135, 1
  br i1 %5136, label %then851, label %else852
then851:
  %5137 = load { i64, i8* }*, { i64, i8* }** %5133
  %5138 = call i64 @nyx_array_get_checked({ i64, i8* }* %5137, i64 0, i64 2)
  %5139 = inttoptr i64 %5138 to %nyx_string*
  %5140 = alloca %nyx_string*
  store %nyx_string* %5139, %nyx_string** %5140
  %5141 = load %nyx_string*, %nyx_string** %5140
  %5142 = getelementptr [1 x i8], [1 x i8]* @.str652, i32 0, i32 0
  %5143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %5142, i64 0)
  %5144 = call i1 @nyx_string_equals(%nyx_string* %5141, %nyx_string* %5143)
  br i1 %5144, label %then854, label %else855
then854:
  ret i64 0
else855:
  br label %merge856
merge856:
  br label %merge853
else852:
  br label %merge853
merge853:
  %5145 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %5146 = load %nyx_string*, %nyx_string** %5029
  %5147 = ptrtoint %nyx_string* %5146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5145, i64 %5147, i64 2)
  %5148 = alloca i64
  store i64 0, i64* %5148
  %5149 = call i8* @llvm.stacksave()
  br label %while_cond857
while_cond857:
  %5150 = load i64, i64* %5148
  %5151 = load { i64, i8* }*, { i64, i8* }** %5133
  %5152 = call i64 @nyx_array_length({ i64, i8* }* %5151)
  %5153 = icmp slt i64 %5150, %5152
  br i1 %5153, label %while_body858, label %while_end859
while_body858:
  call void @llvm.stackrestore(i8* %5149)
  %5154 = load { i64, i8* }*, { i64, i8* }** %5133
  %5155 = load i64, i64* %5148
  %5156 = call i64 @nyx_array_get_checked({ i64, i8* }* %5154, i64 %5155, i64 2)
  %5157 = inttoptr i64 %5156 to %nyx_string*
  %5158 = alloca %nyx_string*
  store %nyx_string* %5157, %nyx_string** %5158
  %5159 = load %nyx_string*, %nyx_string** %5158
  %5160 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5161 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %5162 = load i8*, i8** %vistos.ptr
  %5163 = load i8*, i8** %imports_de.ptr
  %5164 = call i64 @lib_cierre(%nyx_string* %5159, %nyx_string* %5160, { i64, i8* }* %5161, i8* %5162, i8* %5163)
  %5165 = load i64, i64* %5148
  %5166 = add i64 %5165, 1
  store i64 %5166, i64* %5148
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
  %5167 = load i8*, i8** %hashes.ptr
  %5168 = load %nyx_string*, %nyx_string** %f.ptr
  %5169 = call i8* @nyx_string_to_cstr(%nyx_string* %5168)
  %5170 = call i1 @nyx_map_contains_str(i8* %5167, i8* %5169)
  br i1 %5170, label %then860, label %else861
then860:
  %5171 = load i8*, i8** %hashes.ptr
  %5172 = load %nyx_string*, %nyx_string** %f.ptr
  %5173 = call i8* @nyx_string_to_cstr(%nyx_string* %5172)
  %5174 = call i8* @nyx_map_get_str(i8* %5171, i8* %5173)
  %5175 = call %nyx_string* @nyx_string_from_cstr(i8* %5174)
  %5176 = alloca %nyx_string*
  store %nyx_string* %5175, %nyx_string** %5176
  %5177 = load %nyx_string*, %nyx_string** %5176
  ret %nyx_string* %5177
else861:
  br label %merge862
merge862:
  %5178 = load %nyx_string*, %nyx_string** %f.ptr
  %5179 = call i8* @nyx_string_to_cstr(%nyx_string* %5178)
  %5180 = call %nyx_string* @nyx_read_file(i8* %5179)
  %5181 = call %nyx_string* @nyx_sha256(%nyx_string* %5180)
  %5182 = alloca %nyx_string*
  store %nyx_string* %5181, %nyx_string** %5182
  %5183 = load i8*, i8** %hashes.ptr
  %5184 = load %nyx_string*, %nyx_string** %f.ptr
  %5185 = load %nyx_string*, %nyx_string** %5182
  %5186 = call i8* @nyx_string_to_cstr(%nyx_string* %5184)
  %5187 = call i8* @nyx_string_to_cstr(%nyx_string* %5185)
  call void @nyx_map_insert_str(i8* %5183, i8* %5186, i8* %5187)
  %5188 = load %nyx_string*, %nyx_string** %5182
  ret %nyx_string* %5188
}

define internal i1 @es_ident_c(
i64 %c.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %5189 = alloca i1
  store i1 true, i1* %5189
  %5190 = alloca i1
  store i1 true, i1* %5190
  %5191 = alloca i1
  store i1 true, i1* %5191
  %5192 = alloca i1
  store i1 false, i1* %5192
  %5193 = load i64, i64* %c.ptr
  %5194 = icmp sge i64 %5193, 97
  br i1 %5194, label %sc_and_rhs863, label %sc_and_end864
sc_and_rhs863:
  %5195 = load i64, i64* %c.ptr
  %5196 = icmp sle i64 %5195, 122
  store i1 %5196, i1* %5192
  br label %sc_and_end864
sc_and_end864:
  %5197 = load i1, i1* %5192
  br i1 %5197, label %sc_or_end866, label %sc_or_rhs865
sc_or_rhs865:
  %5198 = alloca i1
  store i1 false, i1* %5198
  %5199 = load i64, i64* %c.ptr
  %5200 = icmp sge i64 %5199, 65
  br i1 %5200, label %sc_and_rhs867, label %sc_and_end868
sc_and_rhs867:
  %5201 = load i64, i64* %c.ptr
  %5202 = icmp sle i64 %5201, 90
  store i1 %5202, i1* %5198
  br label %sc_and_end868
sc_and_end868:
  %5203 = load i1, i1* %5198
  store i1 %5203, i1* %5191
  br label %sc_or_end866
sc_or_end866:
  %5204 = load i1, i1* %5191
  br i1 %5204, label %sc_or_end870, label %sc_or_rhs869
sc_or_rhs869:
  %5205 = alloca i1
  store i1 false, i1* %5205
  %5206 = load i64, i64* %c.ptr
  %5207 = icmp sge i64 %5206, 48
  br i1 %5207, label %sc_and_rhs871, label %sc_and_end872
sc_and_rhs871:
  %5208 = load i64, i64* %c.ptr
  %5209 = icmp sle i64 %5208, 57
  store i1 %5209, i1* %5205
  br label %sc_and_end872
sc_and_end872:
  %5210 = load i1, i1* %5205
  store i1 %5210, i1* %5190
  br label %sc_or_end870
sc_or_end870:
  %5211 = load i1, i1* %5190
  br i1 %5211, label %sc_or_end874, label %sc_or_rhs873
sc_or_rhs873:
  %5212 = load i64, i64* %c.ptr
  %5213 = icmp eq i64 %5212, 95
  store i1 %5213, i1* %5189
  br label %sc_or_end874
sc_or_end874:
  %5214 = load i1, i1* %5189
  ret i1 %5214
}

define internal i64 @fin_de_literal(
%nyx_string* %src.param, i64 %i.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %5215 = load %nyx_string*, %nyx_string** %src.ptr
  %5216 = call i64 @nyx_string_byte_length(%nyx_string* %5215)
  %5217 = alloca i64
  store i64 %5216, i64* %5217
  %5218 = load %nyx_string*, %nyx_string** %src.ptr
  %5219 = load i64, i64* %i.ptr
  %5220 = call i8 @nyx_string_char_at(%nyx_string* %5218, i64 %5219)
  %5221 = zext i8 %5220 to i64
  %5222 = alloca i64
  store i64 %5221, i64* %5222
  %5223 = alloca i1
  store i1 false, i1* %5223
  %5224 = load i64, i64* %5222
  %5225 = icmp eq i64 %5224, 114
  br i1 %5225, label %sc_and_rhs875, label %sc_and_end876
sc_and_rhs875:
  %5226 = load i64, i64* %i.ptr
  %5227 = add i64 %5226, 1
  %5228 = load i64, i64* %5217
  %5229 = icmp slt i64 %5227, %5228
  store i1 %5229, i1* %5223
  br label %sc_and_end876
sc_and_end876:
  %5230 = load i1, i1* %5223
  br i1 %5230, label %then877, label %else878
then877:
  %5231 = load %nyx_string*, %nyx_string** %src.ptr
  %5232 = load i64, i64* %i.ptr
  %5233 = add i64 %5232, 1
  %5234 = call i8 @nyx_string_char_at(%nyx_string* %5231, i64 %5233)
  %5235 = zext i8 %5234 to i64
  %5236 = alloca i64
  store i64 %5235, i64* %5236
  %5237 = load i64, i64* %5236
  %5238 = icmp eq i64 %5237, 34
  br i1 %5238, label %then880, label %else881
then880:
  %5239 = load i64, i64* %i.ptr
  %5240 = icmp sgt i64 %5239, 0
  br i1 %5240, label %then883, label %else884
then883:
  %5241 = load %nyx_string*, %nyx_string** %src.ptr
  %5242 = load i64, i64* %i.ptr
  %5243 = sub i64 %5242, 1
  %5244 = call i8 @nyx_string_char_at(%nyx_string* %5241, i64 %5243)
  %5245 = zext i8 %5244 to i64
  %5246 = alloca i64
  store i64 %5245, i64* %5246
  %5247 = load i64, i64* %5246
  %5248 = call i1 @es_ident_c(i64 %5247)
  br i1 %5248, label %then886, label %else887
then886:
  %5249 = sub i64 0, 1
  ret i64 %5249
else887:
  br label %merge888
merge888:
  br label %merge885
else884:
  br label %merge885
merge885:
  %5250 = load i64, i64* %i.ptr
  %5251 = add i64 %5250, 2
  %5252 = alloca i64
  store i64 %5251, i64* %5252
  %5253 = call i8* @llvm.stacksave()
  br label %while_cond889
while_cond889:
  %5254 = load i64, i64* %5252
  %5255 = load i64, i64* %5217
  %5256 = icmp slt i64 %5254, %5255
  br i1 %5256, label %while_body890, label %while_end891
while_body890:
  call void @llvm.stackrestore(i8* %5253)
  %5257 = load %nyx_string*, %nyx_string** %src.ptr
  %5258 = load i64, i64* %5252
  %5259 = call i8 @nyx_string_char_at(%nyx_string* %5257, i64 %5258)
  %5260 = zext i8 %5259 to i64
  %5261 = alloca i64
  store i64 %5260, i64* %5261
  %5262 = load i64, i64* %5261
  %5263 = icmp eq i64 %5262, 34
  br i1 %5263, label %then892, label %else893
then892:
  %5264 = load i64, i64* %5252
  %5265 = add i64 %5264, 1
  ret i64 %5265
else893:
  br label %merge894
merge894:
  %5266 = load i64, i64* %5252
  %5267 = add i64 %5266, 1
  store i64 %5267, i64* %5252
  br label %while_cond889
while_end891:
  %5268 = load i64, i64* %5217
  ret i64 %5268
else881:
  br label %merge882
merge882:
  br label %merge879
else878:
  br label %merge879
merge879:
  %5269 = load i64, i64* %5222
  %5270 = icmp eq i64 %5269, 34
  br i1 %5270, label %then895, label %else896
then895:
  %5271 = load i64, i64* %i.ptr
  %5272 = add i64 %5271, 2
  %5273 = load i64, i64* %5217
  %5274 = icmp slt i64 %5272, %5273
  br i1 %5274, label %then898, label %else899
then898:
  %5275 = load %nyx_string*, %nyx_string** %src.ptr
  %5276 = load i64, i64* %i.ptr
  %5277 = add i64 %5276, 1
  %5278 = call i8 @nyx_string_char_at(%nyx_string* %5275, i64 %5277)
  %5279 = zext i8 %5278 to i64
  %5280 = alloca i64
  store i64 %5279, i64* %5280
  %5281 = load %nyx_string*, %nyx_string** %src.ptr
  %5282 = load i64, i64* %i.ptr
  %5283 = add i64 %5282, 2
  %5284 = call i8 @nyx_string_char_at(%nyx_string* %5281, i64 %5283)
  %5285 = zext i8 %5284 to i64
  %5286 = alloca i64
  store i64 %5285, i64* %5286
  %5287 = alloca i1
  store i1 false, i1* %5287
  %5288 = load i64, i64* %5280
  %5289 = icmp eq i64 %5288, 34
  br i1 %5289, label %sc_and_rhs901, label %sc_and_end902
sc_and_rhs901:
  %5290 = load i64, i64* %5286
  %5291 = icmp eq i64 %5290, 34
  store i1 %5291, i1* %5287
  br label %sc_and_end902
sc_and_end902:
  %5292 = load i1, i1* %5287
  br i1 %5292, label %then903, label %else904
then903:
  %5293 = load i64, i64* %i.ptr
  %5294 = add i64 %5293, 3
  %5295 = alloca i64
  store i64 %5294, i64* %5295
  %5296 = call i8* @llvm.stacksave()
  br label %while_cond906
while_cond906:
  %5297 = load i64, i64* %5295
  %5298 = add i64 %5297, 2
  %5299 = load i64, i64* %5217
  %5300 = icmp slt i64 %5298, %5299
  br i1 %5300, label %while_body907, label %while_end908
while_body907:
  call void @llvm.stackrestore(i8* %5296)
  %5301 = load %nyx_string*, %nyx_string** %src.ptr
  %5302 = load i64, i64* %5295
  %5303 = call i8 @nyx_string_char_at(%nyx_string* %5301, i64 %5302)
  %5304 = zext i8 %5303 to i64
  %5305 = alloca i64
  store i64 %5304, i64* %5305
  %5306 = load %nyx_string*, %nyx_string** %src.ptr
  %5307 = load i64, i64* %5295
  %5308 = add i64 %5307, 1
  %5309 = call i8 @nyx_string_char_at(%nyx_string* %5306, i64 %5308)
  %5310 = zext i8 %5309 to i64
  %5311 = alloca i64
  store i64 %5310, i64* %5311
  %5312 = load %nyx_string*, %nyx_string** %src.ptr
  %5313 = load i64, i64* %5295
  %5314 = add i64 %5313, 2
  %5315 = call i8 @nyx_string_char_at(%nyx_string* %5312, i64 %5314)
  %5316 = zext i8 %5315 to i64
  %5317 = alloca i64
  store i64 %5316, i64* %5317
  %5318 = alloca i1
  store i1 false, i1* %5318
  %5319 = alloca i1
  store i1 false, i1* %5319
  %5320 = load i64, i64* %5305
  %5321 = icmp eq i64 %5320, 34
  br i1 %5321, label %sc_and_rhs909, label %sc_and_end910
sc_and_rhs909:
  %5322 = load i64, i64* %5311
  %5323 = icmp eq i64 %5322, 34
  store i1 %5323, i1* %5319
  br label %sc_and_end910
sc_and_end910:
  %5324 = load i1, i1* %5319
  br i1 %5324, label %sc_and_rhs911, label %sc_and_end912
sc_and_rhs911:
  %5325 = load i64, i64* %5317
  %5326 = icmp eq i64 %5325, 34
  store i1 %5326, i1* %5318
  br label %sc_and_end912
sc_and_end912:
  %5327 = load i1, i1* %5318
  br i1 %5327, label %then913, label %else914
then913:
  %5328 = load i64, i64* %5295
  %5329 = add i64 %5328, 3
  ret i64 %5329
else914:
  br label %merge915
merge915:
  %5330 = load i64, i64* %5295
  %5331 = add i64 %5330, 1
  store i64 %5331, i64* %5295
  br label %while_cond906
while_end908:
  %5332 = load i64, i64* %5217
  ret i64 %5332
else904:
  br label %merge905
merge905:
  br label %merge900
else899:
  br label %merge900
merge900:
  %5333 = load i64, i64* %i.ptr
  %5334 = add i64 %5333, 1
  %5335 = alloca i64
  store i64 %5334, i64* %5335
  %5336 = call i8* @llvm.stacksave()
  br label %while_cond916
while_cond916:
  %5337 = load i64, i64* %5335
  %5338 = load i64, i64* %5217
  %5339 = icmp slt i64 %5337, %5338
  br i1 %5339, label %while_body917, label %while_end918
while_body917:
  call void @llvm.stackrestore(i8* %5336)
  %5340 = load %nyx_string*, %nyx_string** %src.ptr
  %5341 = load i64, i64* %5335
  %5342 = call i8 @nyx_string_char_at(%nyx_string* %5340, i64 %5341)
  %5343 = zext i8 %5342 to i64
  %5344 = alloca i64
  store i64 %5343, i64* %5344
  %5345 = load i64, i64* %5344
  %5346 = icmp eq i64 %5345, 92
  br i1 %5346, label %then919, label %else920
then919:
  %5347 = load i64, i64* %5335
  %5348 = add i64 %5347, 2
  store i64 %5348, i64* %5335
  br label %merge921
else920:
  %5349 = load i64, i64* %5344
  %5350 = icmp eq i64 %5349, 34
  br i1 %5350, label %then922, label %else923
then922:
  %5351 = load i64, i64* %5335
  %5352 = add i64 %5351, 1
  ret i64 %5352
else923:
  %5353 = load i64, i64* %5335
  %5354 = add i64 %5353, 1
  store i64 %5354, i64* %5335
  br label %merge924
merge924:
  br label %merge921
merge921:
  br label %while_cond916
while_end918:
  %5355 = load i64, i64* %5217
  ret i64 %5355
else896:
  br label %merge897
merge897:
  %5356 = load i64, i64* %5222
  %5357 = icmp eq i64 %5356, 39
  br i1 %5357, label %then925, label %else926
then925:
  %5358 = load i64, i64* %i.ptr
  %5359 = add i64 %5358, 1
  %5360 = alloca i64
  store i64 %5359, i64* %5360
  %5361 = call i8* @llvm.stacksave()
  br label %while_cond928
while_cond928:
  %5362 = alloca i1
  store i1 false, i1* %5362
  %5363 = load i64, i64* %5360
  %5364 = load i64, i64* %5217
  %5365 = icmp slt i64 %5363, %5364
  br i1 %5365, label %sc_and_rhs931, label %sc_and_end932
sc_and_rhs931:
  %5366 = load i64, i64* %5360
  %5367 = load i64, i64* %i.ptr
  %5368 = add i64 %5367, 12
  %5369 = icmp slt i64 %5366, %5368
  store i1 %5369, i1* %5362
  br label %sc_and_end932
sc_and_end932:
  %5370 = load i1, i1* %5362
  br i1 %5370, label %while_body929, label %while_end930
while_body929:
  call void @llvm.stackrestore(i8* %5361)
  %5371 = load %nyx_string*, %nyx_string** %src.ptr
  %5372 = load i64, i64* %5360
  %5373 = call i8 @nyx_string_char_at(%nyx_string* %5371, i64 %5372)
  %5374 = zext i8 %5373 to i64
  %5375 = alloca i64
  store i64 %5374, i64* %5375
  %5376 = load i64, i64* %5375
  %5377 = icmp eq i64 %5376, 92
  br i1 %5377, label %then933, label %else934
then933:
  %5378 = load i64, i64* %5360
  %5379 = add i64 %5378, 2
  store i64 %5379, i64* %5360
  br label %merge935
else934:
  %5380 = load i64, i64* %5375
  %5381 = icmp eq i64 %5380, 39
  br i1 %5381, label %then936, label %else937
then936:
  %5382 = load i64, i64* %5360
  %5383 = add i64 %5382, 1
  ret i64 %5383
else937:
  %5384 = load i64, i64* %5360
  %5385 = add i64 %5384, 1
  store i64 %5385, i64* %5360
  br label %merge938
merge938:
  br label %merge935
merge935:
  br label %while_cond928
while_end930:
  %5386 = load i64, i64* %5360
  ret i64 %5386
else926:
  br label %merge927
merge927:
  %5387 = sub i64 0, 1
  ret i64 %5387
}

define internal %nyx_string* @interfaz_de(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %5388 = call i8* @nyx_sb_new(i64 1024)
  %5389 = alloca i8*
  store i8* %5388, i8** %5389
  %5390 = load %nyx_string*, %nyx_string** %src.ptr
  %5391 = call i64 @nyx_string_byte_length(%nyx_string* %5390)
  %5392 = alloca i64
  store i64 %5391, i64* %5392
  %5393 = alloca i64
  store i64 0, i64* %5393
  %5394 = alloca i64
  store i64 0, i64* %5394
  %5395 = alloca i64
  store i64 0, i64* %5395
  %5396 = alloca i1
  store i1 0, i1* %5396
  %5397 = alloca i1
  store i1 0, i1* %5397
  %5398 = alloca i64
  store i64 0, i64* %5398
  %5399 = alloca i1
  store i1 0, i1* %5399
  %5400 = alloca i1
  store i1 0, i1* %5400
  %5401 = getelementptr [2 x i8], [2 x i8]* @.str653, i32 0, i32 0
  %5402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %5401, i64 1)
  %5403 = alloca %nyx_string*
  store %nyx_string* %5402, %nyx_string** %5403
  %5404 = getelementptr [3 x i8], [3 x i8]* @.str654, i32 0, i32 0
  %5405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %5404, i64 2)
  %5406 = alloca %nyx_string*
  store %nyx_string* %5405, %nyx_string** %5406
  %5407 = call i8* @llvm.stacksave()
  br label %while_cond939
while_cond939:
  %5408 = load i64, i64* %5393
  %5409 = load i64, i64* %5392
  %5410 = icmp slt i64 %5408, %5409
  br i1 %5410, label %while_body940, label %while_end941
while_body940:
  call void @llvm.stackrestore(i8* %5407)
  %5411 = load %nyx_string*, %nyx_string** %src.ptr
  %5412 = load i64, i64* %5393
  %5413 = call i8 @nyx_string_char_at(%nyx_string* %5411, i64 %5412)
  %5414 = zext i8 %5413 to i64
  %5415 = alloca i64
  store i64 %5414, i64* %5415
  %5416 = alloca i64
  store i64 0, i64* %5416
  %5417 = load i64, i64* %5393
  %5418 = add i64 %5417, 1
  %5419 = load i64, i64* %5392
  %5420 = icmp slt i64 %5418, %5419
  br i1 %5420, label %then942, label %else943
then942:
  %5421 = load %nyx_string*, %nyx_string** %src.ptr
  %5422 = load i64, i64* %5393
  %5423 = add i64 %5422, 1
  %5424 = call i8 @nyx_string_char_at(%nyx_string* %5421, i64 %5423)
  %5425 = zext i8 %5424 to i64
  %5426 = alloca i64
  store i64 %5425, i64* %5426
  %5427 = load i64, i64* %5426
  store i64 %5427, i64* %5416
  br label %merge944
else943:
  br label %merge944
merge944:
  %5428 = alloca i1
  store i1 false, i1* %5428
  %5429 = load i64, i64* %5415
  %5430 = icmp eq i64 %5429, 47
  br i1 %5430, label %sc_and_rhs945, label %sc_and_end946
sc_and_rhs945:
  %5431 = load i64, i64* %5416
  %5432 = icmp eq i64 %5431, 47
  store i1 %5432, i1* %5428
  br label %sc_and_end946
sc_and_end946:
  %5433 = load i1, i1* %5428
  br i1 %5433, label %then947, label %else948
then947:
  %5434 = alloca i1
  store i1 0, i1* %5434
  %5435 = call i8* @llvm.stacksave()
  br label %while_cond950
while_cond950:
  %5436 = alloca i1
  store i1 false, i1* %5436
  %5437 = load i64, i64* %5393
  %5438 = load i64, i64* %5392
  %5439 = icmp slt i64 %5437, %5438
  br i1 %5439, label %sc_and_rhs953, label %sc_and_end954
sc_and_rhs953:
  %5440 = load i1, i1* %5434
  %5441 = xor i1 %5440, true
  store i1 %5441, i1* %5436
  br label %sc_and_end954
sc_and_end954:
  %5442 = load i1, i1* %5436
  br i1 %5442, label %while_body951, label %while_end952
while_body951:
  call void @llvm.stackrestore(i8* %5435)
  %5443 = load %nyx_string*, %nyx_string** %src.ptr
  %5444 = load i64, i64* %5393
  %5445 = call i8 @nyx_string_char_at(%nyx_string* %5443, i64 %5444)
  %5446 = zext i8 %5445 to i64
  %5447 = alloca i64
  store i64 %5446, i64* %5447
  %5448 = load i64, i64* %5447
  %5449 = icmp eq i64 %5448, 10
  br i1 %5449, label %then955, label %else956
then955:
  store i1 1, i1* %5434
  br label %merge957
else956:
  %5450 = load i64, i64* %5393
  %5451 = add i64 %5450, 1
  store i64 %5451, i64* %5393
  br label %merge957
merge957:
  br label %while_cond950
while_end952:
  store i1 1, i1* %5399
  br label %merge949
else948:
  %5452 = alloca i1
  store i1 false, i1* %5452
  %5453 = load i64, i64* %5415
  %5454 = icmp eq i64 %5453, 47
  br i1 %5454, label %sc_and_rhs958, label %sc_and_end959
sc_and_rhs958:
  %5455 = load i64, i64* %5416
  %5456 = icmp eq i64 %5455, 42
  store i1 %5456, i1* %5452
  br label %sc_and_end959
sc_and_end959:
  %5457 = load i1, i1* %5452
  br i1 %5457, label %then960, label %else961
then960:
  %5458 = alloca i64
  store i64 1, i64* %5458
  %5459 = load i64, i64* %5393
  %5460 = add i64 %5459, 2
  store i64 %5460, i64* %5393
  %5461 = call i8* @llvm.stacksave()
  br label %while_cond963
while_cond963:
  %5462 = alloca i1
  store i1 false, i1* %5462
  %5463 = load i64, i64* %5393
  %5464 = load i64, i64* %5392
  %5465 = icmp slt i64 %5463, %5464
  br i1 %5465, label %sc_and_rhs966, label %sc_and_end967
sc_and_rhs966:
  %5466 = load i64, i64* %5458
  %5467 = icmp sgt i64 %5466, 0
  store i1 %5467, i1* %5462
  br label %sc_and_end967
sc_and_end967:
  %5468 = load i1, i1* %5462
  br i1 %5468, label %while_body964, label %while_end965
while_body964:
  call void @llvm.stackrestore(i8* %5461)
  %5469 = load %nyx_string*, %nyx_string** %src.ptr
  %5470 = load i64, i64* %5393
  %5471 = call i8 @nyx_string_char_at(%nyx_string* %5469, i64 %5470)
  %5472 = zext i8 %5471 to i64
  %5473 = alloca i64
  store i64 %5472, i64* %5473
  %5474 = alloca i64
  store i64 0, i64* %5474
  %5475 = load i64, i64* %5393
  %5476 = add i64 %5475, 1
  %5477 = load i64, i64* %5392
  %5478 = icmp slt i64 %5476, %5477
  br i1 %5478, label %then968, label %else969
then968:
  %5479 = load %nyx_string*, %nyx_string** %src.ptr
  %5480 = load i64, i64* %5393
  %5481 = add i64 %5480, 1
  %5482 = call i8 @nyx_string_char_at(%nyx_string* %5479, i64 %5481)
  %5483 = zext i8 %5482 to i64
  %5484 = alloca i64
  store i64 %5483, i64* %5484
  %5485 = load i64, i64* %5484
  store i64 %5485, i64* %5474
  br label %merge970
else969:
  br label %merge970
merge970:
  %5486 = alloca i1
  store i1 false, i1* %5486
  %5487 = load i64, i64* %5473
  %5488 = icmp eq i64 %5487, 47
  br i1 %5488, label %sc_and_rhs971, label %sc_and_end972
sc_and_rhs971:
  %5489 = load i64, i64* %5474
  %5490 = icmp eq i64 %5489, 42
  store i1 %5490, i1* %5486
  br label %sc_and_end972
sc_and_end972:
  %5491 = load i1, i1* %5486
  br i1 %5491, label %then973, label %else974
then973:
  %5492 = load i64, i64* %5458
  %5493 = add i64 %5492, 1
  store i64 %5493, i64* %5458
  %5494 = load i64, i64* %5393
  %5495 = add i64 %5494, 2
  store i64 %5495, i64* %5393
  br label %merge975
else974:
  %5496 = alloca i1
  store i1 false, i1* %5496
  %5497 = load i64, i64* %5473
  %5498 = icmp eq i64 %5497, 42
  br i1 %5498, label %sc_and_rhs976, label %sc_and_end977
sc_and_rhs976:
  %5499 = load i64, i64* %5474
  %5500 = icmp eq i64 %5499, 47
  store i1 %5500, i1* %5496
  br label %sc_and_end977
sc_and_end977:
  %5501 = load i1, i1* %5496
  br i1 %5501, label %then978, label %else979
then978:
  %5502 = load i64, i64* %5458
  %5503 = sub i64 %5502, 1
  store i64 %5503, i64* %5458
  %5504 = load i64, i64* %5393
  %5505 = add i64 %5504, 2
  store i64 %5505, i64* %5393
  br label %merge980
else979:
  %5506 = load i64, i64* %5393
  %5507 = add i64 %5506, 1
  store i64 %5507, i64* %5393
  br label %merge980
merge980:
  br label %merge975
merge975:
  br label %while_cond963
while_end965:
  store i1 1, i1* %5399
  br label %merge962
else961:
  %5508 = load %nyx_string*, %nyx_string** %src.ptr
  %5509 = load i64, i64* %5393
  %5510 = call i64 @fin_de_literal(%nyx_string* %5508, i64 %5509)
  %5511 = alloca i64
  store i64 %5510, i64* %5511
  %5512 = load i64, i64* %5511
  %5513 = icmp sgt i64 %5512, 0
  br i1 %5513, label %then981, label %else982
then981:
  %5514 = load i1, i1* %5397
  %5515 = xor i1 %5514, true
  br i1 %5515, label %then984, label %else985
then984:
  %5516 = alloca i1
  store i1 false, i1* %5516
  %5517 = load i1, i1* %5399
  br i1 %5517, label %sc_and_rhs987, label %sc_and_end988
sc_and_rhs987:
  %5518 = load i1, i1* %5400
  store i1 %5518, i1* %5516
  br label %sc_and_end988
sc_and_end988:
  %5519 = load i1, i1* %5516
  br i1 %5519, label %then989, label %else990
then989:
  %5520 = load i8*, i8** %5389
  %5521 = load %nyx_string*, %nyx_string** %5403
  call void @nyx_sb_append(i8* %5520, %nyx_string* %5521)
  br label %merge991
else990:
  br label %merge991
merge991:
  store i1 0, i1* %5399
  %5522 = load i8*, i8** %5389
  %5523 = load %nyx_string*, %nyx_string** %src.ptr
  %5524 = load i64, i64* %5393
  %5525 = load i64, i64* %5511
  %5526 = call %nyx_string* @nyx_string_substring(%nyx_string* %5523, i64 %5524, i64 %5525)
  call void @nyx_sb_append(i8* %5522, %nyx_string* %5526)
  store i1 1, i1* %5400
  br label %merge986
else985:
  br label %merge986
merge986:
  %5527 = load i64, i64* %5511
  store i64 %5527, i64* %5393
  br label %merge983
else982:
  %5528 = load i1, i1* %5397
  br i1 %5528, label %then992, label %else993
then992:
  %5529 = load i64, i64* %5415
  %5530 = icmp eq i64 %5529, 123
  br i1 %5530, label %then995, label %else996
then995:
  %5531 = load i64, i64* %5398
  %5532 = add i64 %5531, 1
  store i64 %5532, i64* %5398
  br label %merge997
else996:
  br label %merge997
merge997:
  %5533 = load i64, i64* %5415
  %5534 = icmp eq i64 %5533, 125
  br i1 %5534, label %then998, label %else999
then998:
  %5535 = load i64, i64* %5398
  %5536 = sub i64 %5535, 1
  store i64 %5536, i64* %5398
  %5537 = load i64, i64* %5398
  %5538 = icmp eq i64 %5537, 0
  br i1 %5538, label %then1001, label %else1002
then1001:
  store i1 0, i1* %5397
  %5539 = load i8*, i8** %5389
  %5540 = load %nyx_string*, %nyx_string** %5406
  call void @nyx_sb_append(i8* %5539, %nyx_string* %5540)
  br label %merge1003
else1002:
  br label %merge1003
merge1003:
  br label %merge1000
else999:
  br label %merge1000
merge1000:
  %5541 = load i64, i64* %5393
  %5542 = add i64 %5541, 1
  store i64 %5542, i64* %5393
  br label %merge994
else993:
  %5543 = alloca i1
  store i1 true, i1* %5543
  %5544 = alloca i1
  store i1 true, i1* %5544
  %5545 = alloca i1
  store i1 true, i1* %5545
  %5546 = load i64, i64* %5415
  %5547 = icmp eq i64 %5546, 32
  br i1 %5547, label %sc_or_end1005, label %sc_or_rhs1004
sc_or_rhs1004:
  %5548 = load i64, i64* %5415
  %5549 = icmp eq i64 %5548, 9
  store i1 %5549, i1* %5545
  br label %sc_or_end1005
sc_or_end1005:
  %5550 = load i1, i1* %5545
  br i1 %5550, label %sc_or_end1007, label %sc_or_rhs1006
sc_or_rhs1006:
  %5551 = load i64, i64* %5415
  %5552 = icmp eq i64 %5551, 13
  store i1 %5552, i1* %5544
  br label %sc_or_end1007
sc_or_end1007:
  %5553 = load i1, i1* %5544
  br i1 %5553, label %sc_or_end1009, label %sc_or_rhs1008
sc_or_rhs1008:
  %5554 = load i64, i64* %5415
  %5555 = icmp eq i64 %5554, 10
  store i1 %5555, i1* %5543
  br label %sc_or_end1009
sc_or_end1009:
  %5556 = load i1, i1* %5543
  br i1 %5556, label %then1010, label %else1011
then1010:
  %5557 = alloca i1
  store i1 false, i1* %5557
  %5558 = load i64, i64* %5415
  %5559 = icmp eq i64 %5558, 10
  br i1 %5559, label %sc_and_rhs1013, label %sc_and_end1014
sc_and_rhs1013:
  %5560 = load i64, i64* %5395
  %5561 = icmp eq i64 %5560, 0
  store i1 %5561, i1* %5557
  br label %sc_and_end1014
sc_and_end1014:
  %5562 = load i1, i1* %5557
  br i1 %5562, label %then1015, label %else1016
then1015:
  store i1 0, i1* %5396
  br label %merge1017
else1016:
  br label %merge1017
merge1017:
  store i1 1, i1* %5399
  %5563 = load i64, i64* %5393
  %5564 = add i64 %5563, 1
  store i64 %5564, i64* %5393
  br label %merge1012
else1011:
  %5565 = alloca i1
  store i1 false, i1* %5565
  %5566 = alloca i1
  store i1 false, i1* %5566
  %5567 = load i64, i64* %5394
  %5568 = icmp eq i64 %5567, 0
  br i1 %5568, label %sc_and_rhs1018, label %sc_and_end1019
sc_and_rhs1018:
  %5569 = load i64, i64* %5415
  %5570 = icmp eq i64 %5569, 102
  store i1 %5570, i1* %5566
  br label %sc_and_end1019
sc_and_end1019:
  %5571 = load i1, i1* %5566
  br i1 %5571, label %sc_and_rhs1020, label %sc_and_end1021
sc_and_rhs1020:
  %5572 = load i64, i64* %5416
  %5573 = icmp eq i64 %5572, 110
  store i1 %5573, i1* %5565
  br label %sc_and_end1021
sc_and_end1021:
  %5574 = load i1, i1* %5565
  br i1 %5574, label %then1022, label %else1023
then1022:
  %5575 = alloca i1
  store i1 1, i1* %5575
  %5576 = load i64, i64* %5393
  %5577 = icmp sgt i64 %5576, 0
  br i1 %5577, label %then1025, label %else1026
then1025:
  %5578 = load %nyx_string*, %nyx_string** %src.ptr
  %5579 = load i64, i64* %5393
  %5580 = sub i64 %5579, 1
  %5581 = call i8 @nyx_string_char_at(%nyx_string* %5578, i64 %5580)
  %5582 = zext i8 %5581 to i64
  %5583 = alloca i64
  store i64 %5582, i64* %5583
  %5584 = load i64, i64* %5583
  %5585 = call i1 @es_ident_c(i64 %5584)
  br i1 %5585, label %then1028, label %else1029
then1028:
  store i1 0, i1* %5575
  br label %merge1030
else1029:
  br label %merge1030
merge1030:
  br label %merge1027
else1026:
  br label %merge1027
merge1027:
  %5586 = alloca i1
  store i1 1, i1* %5586
  %5587 = load i64, i64* %5393
  %5588 = add i64 %5587, 2
  %5589 = load i64, i64* %5392
  %5590 = icmp slt i64 %5588, %5589
  br i1 %5590, label %then1031, label %else1032
then1031:
  %5591 = load %nyx_string*, %nyx_string** %src.ptr
  %5592 = load i64, i64* %5393
  %5593 = add i64 %5592, 2
  %5594 = call i8 @nyx_string_char_at(%nyx_string* %5591, i64 %5593)
  %5595 = zext i8 %5594 to i64
  %5596 = alloca i64
  store i64 %5595, i64* %5596
  %5597 = load i64, i64* %5596
  %5598 = call i1 @es_ident_c(i64 %5597)
  br i1 %5598, label %then1034, label %else1035
then1034:
  store i1 0, i1* %5586
  br label %merge1036
else1035:
  br label %merge1036
merge1036:
  br label %merge1033
else1032:
  br label %merge1033
merge1033:
  %5599 = alloca i1
  store i1 false, i1* %5599
  %5600 = load i1, i1* %5575
  br i1 %5600, label %sc_and_rhs1037, label %sc_and_end1038
sc_and_rhs1037:
  %5601 = load i1, i1* %5586
  store i1 %5601, i1* %5599
  br label %sc_and_end1038
sc_and_end1038:
  %5602 = load i1, i1* %5599
  br i1 %5602, label %then1039, label %else1040
then1039:
  store i1 1, i1* %5396
  br label %merge1041
else1040:
  br label %merge1041
merge1041:
  br label %merge1024
else1023:
  br label %merge1024
merge1024:
  %5603 = load i64, i64* %5415
  %5604 = icmp eq i64 %5603, 40
  br i1 %5604, label %then1042, label %else1043
then1042:
  %5605 = load i64, i64* %5395
  %5606 = add i64 %5605, 1
  store i64 %5606, i64* %5395
  br label %merge1044
else1043:
  br label %merge1044
merge1044:
  %5607 = load i64, i64* %5415
  %5608 = icmp eq i64 %5607, 41
  br i1 %5608, label %then1045, label %else1046
then1045:
  %5609 = load i64, i64* %5395
  %5610 = sub i64 %5609, 1
  store i64 %5610, i64* %5395
  br label %merge1047
else1046:
  br label %merge1047
merge1047:
  %5611 = alloca i1
  store i1 false, i1* %5611
  %5612 = load i1, i1* %5399
  br i1 %5612, label %sc_and_rhs1048, label %sc_and_end1049
sc_and_rhs1048:
  %5613 = load i1, i1* %5400
  store i1 %5613, i1* %5611
  br label %sc_and_end1049
sc_and_end1049:
  %5614 = load i1, i1* %5611
  br i1 %5614, label %then1050, label %else1051
then1050:
  %5615 = load i8*, i8** %5389
  %5616 = load %nyx_string*, %nyx_string** %5403
  call void @nyx_sb_append(i8* %5615, %nyx_string* %5616)
  br label %merge1052
else1051:
  br label %merge1052
merge1052:
  store i1 0, i1* %5399
  %5617 = alloca i1
  store i1 false, i1* %5617
  %5618 = alloca i1
  store i1 false, i1* %5618
  %5619 = load i64, i64* %5415
  %5620 = icmp eq i64 %5619, 123
  br i1 %5620, label %sc_and_rhs1053, label %sc_and_end1054
sc_and_rhs1053:
  %5621 = load i64, i64* %5394
  %5622 = icmp eq i64 %5621, 0
  store i1 %5622, i1* %5618
  br label %sc_and_end1054
sc_and_end1054:
  %5623 = load i1, i1* %5618
  br i1 %5623, label %sc_and_rhs1055, label %sc_and_end1056
sc_and_rhs1055:
  %5624 = load i1, i1* %5396
  store i1 %5624, i1* %5617
  br label %sc_and_end1056
sc_and_end1056:
  %5625 = load i1, i1* %5617
  br i1 %5625, label %then1057, label %else1058
then1057:
  store i1 0, i1* %5396
  store i1 1, i1* %5397
  store i64 1, i64* %5398
  br label %merge1059
else1058:
  %5626 = load i64, i64* %5415
  %5627 = icmp eq i64 %5626, 123
  br i1 %5627, label %then1060, label %else1061
then1060:
  %5628 = load i64, i64* %5394
  %5629 = add i64 %5628, 1
  store i64 %5629, i64* %5394
  br label %merge1062
else1061:
  br label %merge1062
merge1062:
  %5630 = load i64, i64* %5415
  %5631 = icmp eq i64 %5630, 125
  br i1 %5631, label %then1063, label %else1064
then1063:
  %5632 = load i64, i64* %5394
  %5633 = sub i64 %5632, 1
  store i64 %5633, i64* %5394
  br label %merge1065
else1064:
  br label %merge1065
merge1065:
  %5634 = load i8*, i8** %5389
  %5635 = load %nyx_string*, %nyx_string** %src.ptr
  %5636 = load i64, i64* %5393
  %5637 = load i64, i64* %5393
  %5638 = add i64 %5637, 1
  %5639 = call %nyx_string* @nyx_string_substring(%nyx_string* %5635, i64 %5636, i64 %5638)
  call void @nyx_sb_append(i8* %5634, %nyx_string* %5639)
  store i1 1, i1* %5400
  br label %merge1059
merge1059:
  %5640 = load i64, i64* %5393
  %5641 = add i64 %5640, 1
  store i64 %5641, i64* %5393
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
  %5642 = load i8*, i8** %5389
  %5643 = call %nyx_string* @nyx_sb_to_string(i8* %5642)
  ret %nyx_string* %5643
}

define internal i1 @separable_texto(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %5644 = load %nyx_string*, %nyx_string** %src.ptr
  %5645 = getelementptr [2 x i8], [2 x i8]* @.str655, i32 0, i32 0
  %5646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %5645, i64 1)
  %5647 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5644, %nyx_string* %5646)
  %5648 = alloca { i64, i8* }*
  store { i64, i8* }* %5647, { i64, i8* }** %5648
  %5649 = alloca i64
  store i64 0, i64* %5649
  %5650 = getelementptr [6 x i8], [6 x i8]* @.str656, i32 0, i32 0
  %5651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %5650, i64 5)
  %5652 = alloca %nyx_string*
  store %nyx_string* %5651, %nyx_string** %5652
  %5653 = getelementptr [6 x i8], [6 x i8]* @.str657, i32 0, i32 0
  %5654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %5653, i64 5)
  %5655 = alloca %nyx_string*
  store %nyx_string* %5654, %nyx_string** %5655
  %5656 = getelementptr [7 x i8], [7 x i8]* @.str658, i32 0, i32 0
  %5657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %5656, i64 6)
  %5658 = alloca %nyx_string*
  store %nyx_string* %5657, %nyx_string** %5658
  %5659 = getelementptr [11 x i8], [11 x i8]* @.str659, i32 0, i32 0
  %5660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %5659, i64 10)
  %5661 = alloca %nyx_string*
  store %nyx_string* %5660, %nyx_string** %5661
  %5662 = getelementptr [14 x i8], [14 x i8]* @.str660, i32 0, i32 0
  %5663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %5662, i64 13)
  %5664 = alloca %nyx_string*
  store %nyx_string* %5663, %nyx_string** %5664
  %5665 = getelementptr [1 x i8], [1 x i8]* @.str661, i32 0, i32 0
  %5666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %5665, i64 0)
  %5667 = alloca %nyx_string*
  store %nyx_string* %5666, %nyx_string** %5667
  %5668 = getelementptr [8 x i8], [8 x i8]* @.str662, i32 0, i32 0
  %5669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %5668, i64 7)
  %5670 = alloca %nyx_string*
  store %nyx_string* %5669, %nyx_string** %5670
  %5671 = getelementptr [11 x i8], [11 x i8]* @.str663, i32 0, i32 0
  %5672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %5671, i64 10)
  %5673 = alloca %nyx_string*
  store %nyx_string* %5672, %nyx_string** %5673
  %5674 = call i8* @llvm.stacksave()
  br label %while_cond1066
while_cond1066:
  %5675 = load i64, i64* %5649
  %5676 = load { i64, i8* }*, { i64, i8* }** %5648
  %5677 = call i64 @nyx_array_length({ i64, i8* }* %5676)
  %5678 = icmp slt i64 %5675, %5677
  br i1 %5678, label %while_body1067, label %while_end1068
while_body1067:
  call void @llvm.stackrestore(i8* %5674)
  %5679 = load { i64, i8* }*, { i64, i8* }** %5648
  %5680 = load i64, i64* %5649
  %5681 = call i64 @nyx_array_get_checked({ i64, i8* }* %5679, i64 %5680, i64 2)
  %5682 = inttoptr i64 %5681 to %nyx_string*
  %5683 = alloca %nyx_string*
  store %nyx_string* %5682, %nyx_string** %5683
  %5684 = load %nyx_string*, %nyx_string** %5683
  %5685 = call %nyx_string* @nyx_string_trim(%nyx_string* %5684)
  %5686 = alloca %nyx_string*
  store %nyx_string* %5685, %nyx_string** %5686
  %5687 = alloca i1
  store i1 true, i1* %5687
  %5688 = load %nyx_string*, %nyx_string** %5686
  %5689 = load %nyx_string*, %nyx_string** %5652
  %5690 = call i1 @nyx_string_starts_with(%nyx_string* %5688, %nyx_string* %5689)
  br i1 %5690, label %sc_or_end1070, label %sc_or_rhs1069
sc_or_rhs1069:
  %5691 = load %nyx_string*, %nyx_string** %5686
  %5692 = load %nyx_string*, %nyx_string** %5655
  %5693 = call i1 @nyx_string_starts_with(%nyx_string* %5691, %nyx_string* %5692)
  store i1 %5693, i1* %5687
  br label %sc_or_end1070
sc_or_end1070:
  %5694 = load i1, i1* %5687
  br i1 %5694, label %then1071, label %else1072
then1071:
  ret i1 0
else1072:
  br label %merge1073
merge1073:
  %5695 = alloca i1
  store i1 true, i1* %5695
  %5696 = alloca i1
  store i1 true, i1* %5696
  %5697 = load %nyx_string*, %nyx_string** %5686
  %5698 = load %nyx_string*, %nyx_string** %5658
  %5699 = call i1 @nyx_string_starts_with(%nyx_string* %5697, %nyx_string* %5698)
  br i1 %5699, label %sc_or_end1075, label %sc_or_rhs1074
sc_or_rhs1074:
  %5700 = load %nyx_string*, %nyx_string** %5686
  %5701 = load %nyx_string*, %nyx_string** %5661
  %5702 = call i1 @nyx_string_starts_with(%nyx_string* %5700, %nyx_string* %5701)
  store i1 %5702, i1* %5696
  br label %sc_or_end1075
sc_or_end1075:
  %5703 = load i1, i1* %5696
  br i1 %5703, label %sc_or_end1077, label %sc_or_rhs1076
sc_or_rhs1076:
  %5704 = load %nyx_string*, %nyx_string** %5686
  %5705 = load %nyx_string*, %nyx_string** %5664
  %5706 = call i1 @nyx_string_starts_with(%nyx_string* %5704, %nyx_string* %5705)
  store i1 %5706, i1* %5695
  br label %sc_or_end1077
sc_or_end1077:
  %5707 = load i1, i1* %5695
  br i1 %5707, label %then1078, label %else1079
then1078:
  ret i1 0
else1079:
  br label %merge1080
merge1080:
  %5708 = load %nyx_string*, %nyx_string** %5667
  %5709 = alloca %nyx_string*
  store %nyx_string* %5708, %nyx_string** %5709
  %5710 = load %nyx_string*, %nyx_string** %5686
  %5711 = load %nyx_string*, %nyx_string** %5670
  %5712 = call i1 @nyx_string_starts_with(%nyx_string* %5710, %nyx_string* %5711)
  br i1 %5712, label %then1081, label %else1082
then1081:
  %5713 = load %nyx_string*, %nyx_string** %5670
  store %nyx_string* %5713, %nyx_string** %5709
  br label %merge1083
else1082:
  br label %merge1083
merge1083:
  %5714 = load %nyx_string*, %nyx_string** %5686
  %5715 = load %nyx_string*, %nyx_string** %5673
  %5716 = call i1 @nyx_string_starts_with(%nyx_string* %5714, %nyx_string* %5715)
  br i1 %5716, label %then1084, label %else1085
then1084:
  %5717 = load %nyx_string*, %nyx_string** %5673
  store %nyx_string* %5717, %nyx_string** %5709
  br label %merge1086
else1085:
  br label %merge1086
merge1086:
  %5718 = load %nyx_string*, %nyx_string** %5709
  %5719 = load %nyx_string*, %nyx_string** %5667
  %5720 = call i1 @nyx_string_equals(%nyx_string* %5718, %nyx_string* %5719)
  %5721 = xor i1 %5720, true
  br i1 %5721, label %then1087, label %else1088
then1087:
  %5722 = load %nyx_string*, %nyx_string** %5686
  %5723 = load %nyx_string*, %nyx_string** %5709
  %5724 = call i64 @nyx_string_byte_length(%nyx_string* %5723)
  %5725 = load %nyx_string*, %nyx_string** %5686
  %5726 = call i64 @nyx_string_byte_length(%nyx_string* %5725)
  %5727 = call %nyx_string* @nyx_string_substring(%nyx_string* %5722, i64 %5724, i64 %5726)
  %5728 = alloca %nyx_string*
  store %nyx_string* %5727, %nyx_string** %5728
  %5729 = alloca i64
  store i64 0, i64* %5729
  %5730 = alloca i1
  store i1 1, i1* %5730
  %5731 = call i8* @llvm.stacksave()
  br label %while_cond1090
while_cond1090:
  %5732 = alloca i1
  store i1 false, i1* %5732
  %5733 = load i64, i64* %5729
  %5734 = load %nyx_string*, %nyx_string** %5728
  %5735 = call i64 @nyx_string_byte_length(%nyx_string* %5734)
  %5736 = icmp slt i64 %5733, %5735
  br i1 %5736, label %sc_and_rhs1093, label %sc_and_end1094
sc_and_rhs1093:
  %5737 = load i1, i1* %5730
  store i1 %5737, i1* %5732
  br label %sc_and_end1094
sc_and_end1094:
  %5738 = load i1, i1* %5732
  br i1 %5738, label %while_body1091, label %while_end1092
while_body1091:
  call void @llvm.stackrestore(i8* %5731)
  %5739 = load %nyx_string*, %nyx_string** %5728
  %5740 = load i64, i64* %5729
  %5741 = call i8 @nyx_string_char_at(%nyx_string* %5739, i64 %5740)
  %5742 = zext i8 %5741 to i64
  %5743 = alloca i64
  store i64 %5742, i64* %5743
  %5744 = load i64, i64* %5743
  %5745 = call i1 @es_ident_c(i64 %5744)
  br i1 %5745, label %then1095, label %else1096
then1095:
  %5746 = load i64, i64* %5729
  %5747 = add i64 %5746, 1
  store i64 %5747, i64* %5729
  br label %merge1097
else1096:
  store i1 0, i1* %5730
  br label %merge1097
merge1097:
  br label %while_cond1090
while_end1092:
  %5748 = load i64, i64* %5729
  %5749 = load %nyx_string*, %nyx_string** %5728
  %5750 = call i64 @nyx_string_byte_length(%nyx_string* %5749)
  %5751 = icmp slt i64 %5748, %5750
  br i1 %5751, label %then1098, label %else1099
then1098:
  %5752 = load %nyx_string*, %nyx_string** %5728
  %5753 = load i64, i64* %5729
  %5754 = call i8 @nyx_string_char_at(%nyx_string* %5752, i64 %5753)
  %5755 = zext i8 %5754 to i64
  %5756 = alloca i64
  store i64 %5755, i64* %5756
  %5757 = load i64, i64* %5756
  %5758 = icmp eq i64 %5757, 60
  br i1 %5758, label %then1101, label %else1102
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
  %5759 = load i64, i64* %5649
  %5760 = add i64 %5759, 1
  store i64 %5760, i64* %5649
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
  %5761 = alloca i1
  store i1 true, i1* %5761
  %5762 = load %nyx_string*, %nyx_string** %f.ptr
  %5763 = load %nyx_string*, %nyx_string** %propio.ptr
  %5764 = call i1 @nyx_string_equals(%nyx_string* %5762, %nyx_string* %5763)
  br i1 %5764, label %sc_or_end1105, label %sc_or_rhs1104
sc_or_rhs1104:
  %5765 = load %nyx_string*, %nyx_string** %f.ptr
  %5766 = getelementptr [4 x i8], [4 x i8]* @.str664, i32 0, i32 0
  %5767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %5766, i64 3)
  %5768 = call i1 @nyx_string_ends_with(%nyx_string* %5765, %nyx_string* %5767)
  %5769 = xor i1 %5768, true
  store i1 %5769, i1* %5761
  br label %sc_or_end1105
sc_or_end1105:
  %5770 = load i1, i1* %5761
  br i1 %5770, label %then1106, label %else1107
then1106:
  %5771 = load %nyx_string*, %nyx_string** %f.ptr
  %5772 = load i8*, i8** %hashes.ptr
  %5773 = call %nyx_string* @hash_archivo(%nyx_string* %5771, i8* %5772)
  ret %nyx_string* %5773
else1107:
  br label %merge1108
merge1108:
  %5774 = load %nyx_string*, %nyx_string** %f.ptr
  %5775 = load %nyx_string*, %nyx_string** %f.ptr
  %5776 = call i64 @nyx_string_byte_length(%nyx_string* %5775)
  %5777 = sub i64 %5776, 3
  %5778 = call %nyx_string* @nyx_string_substring(%nyx_string* %5774, i64 0, i64 %5777)
  %5779 = alloca %nyx_string*
  store %nyx_string* %5778, %nyx_string** %5779
  %5780 = load i8*, i8** %libs.ptr
  %5781 = load %nyx_string*, %nyx_string** %5779
  %5782 = call i8* @nyx_string_to_cstr(%nyx_string* %5781)
  %5783 = call i1 @nyx_map_contains_str(i8* %5780, i8* %5782)
  %5784 = xor i1 %5783, true
  br i1 %5784, label %then1109, label %else1110
then1109:
  %5785 = load %nyx_string*, %nyx_string** %f.ptr
  %5786 = load i8*, i8** %hashes.ptr
  %5787 = call %nyx_string* @hash_archivo(%nyx_string* %5785, i8* %5786)
  ret %nyx_string* %5787
else1110:
  br label %merge1111
merge1111:
  %5788 = getelementptr [10 x i8], [10 x i8]* @.str665, i32 0, i32 0
  %5789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %5788, i64 9)
  %5790 = load %nyx_string*, %nyx_string** %f.ptr
  %5791 = call %nyx_string* @nyx_string_concat(%nyx_string* %5789, %nyx_string* %5790)
  %5792 = alloca %nyx_string*
  store %nyx_string* %5791, %nyx_string** %5792
  %5793 = load i8*, i8** %hashes.ptr
  %5794 = load %nyx_string*, %nyx_string** %5792
  %5795 = call i8* @nyx_string_to_cstr(%nyx_string* %5794)
  %5796 = call i1 @nyx_map_contains_str(i8* %5793, i8* %5795)
  br i1 %5796, label %then1112, label %else1113
then1112:
  %5797 = load i8*, i8** %hashes.ptr
  %5798 = load %nyx_string*, %nyx_string** %5792
  %5799 = call i8* @nyx_string_to_cstr(%nyx_string* %5798)
  %5800 = call i8* @nyx_map_get_str(i8* %5797, i8* %5799)
  %5801 = call %nyx_string* @nyx_string_from_cstr(i8* %5800)
  %5802 = alloca %nyx_string*
  store %nyx_string* %5801, %nyx_string** %5802
  %5803 = load %nyx_string*, %nyx_string** %5802
  ret %nyx_string* %5803
else1113:
  br label %merge1114
merge1114:
  %5804 = load %nyx_string*, %nyx_string** %f.ptr
  %5805 = call i8* @nyx_string_to_cstr(%nyx_string* %5804)
  %5806 = call %nyx_string* @nyx_read_file(i8* %5805)
  %5807 = alloca %nyx_string*
  store %nyx_string* %5806, %nyx_string** %5807
  %5808 = getelementptr [1 x i8], [1 x i8]* @.str666, i32 0, i32 0
  %5809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %5808, i64 0)
  %5810 = alloca %nyx_string*
  store %nyx_string* %5809, %nyx_string** %5810
  %5811 = load %nyx_string*, %nyx_string** %5807
  %5812 = call i1 @separable_texto(%nyx_string* %5811)
  br i1 %5812, label %then1115, label %else1116
then1115:
  %5813 = getelementptr [3 x i8], [3 x i8]* @.str667, i32 0, i32 0
  %5814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %5813, i64 2)
  %5815 = load %nyx_string*, %nyx_string** %5807
  %5816 = call %nyx_string* @interfaz_de(%nyx_string* %5815)
  %5817 = call %nyx_string* @nyx_sha256(%nyx_string* %5816)
  %5818 = call %nyx_string* @nyx_string_concat(%nyx_string* %5814, %nyx_string* %5817)
  store %nyx_string* %5818, %nyx_string** %5810
  br label %merge1117
else1116:
  %5819 = load %nyx_string*, %nyx_string** %5807
  %5820 = call %nyx_string* @nyx_sha256(%nyx_string* %5819)
  store %nyx_string* %5820, %nyx_string** %5810
  br label %merge1117
merge1117:
  %5821 = load i8*, i8** %hashes.ptr
  %5822 = load %nyx_string*, %nyx_string** %5792
  %5823 = load %nyx_string*, %nyx_string** %5810
  %5824 = call i8* @nyx_string_to_cstr(%nyx_string* %5822)
  %5825 = call i8* @nyx_string_to_cstr(%nyx_string* %5823)
  call void @nyx_map_insert_str(i8* %5821, i8* %5824, i8* %5825)
  %5826 = load %nyx_string*, %nyx_string** %5810
  ret %nyx_string* %5826
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
  %5827 = call { i64, i8* }* @nyx_array_new_ptr()
  %5828 = alloca { i64, i8* }*
  store { i64, i8* }* %5827, { i64, i8* }** %5828
  %5829 = call i8* @nyx_map_new(i32 0)
  %5830 = alloca i8*
  store i8* %5829, i8** %5830
  %5831 = load %nyx_string*, %nyx_string** %modulo.ptr
  %5832 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5833 = load { i64, i8* }*, { i64, i8* }** %5828
  %5834 = load i8*, i8** %5830
  %5835 = load i8*, i8** %imports_de.ptr
  %5836 = call i64 @lib_cierre(%nyx_string* %5831, %nyx_string* %5832, { i64, i8* }* %5833, i8* %5834, i8* %5835)
  %5837 = load %nyx_string*, %nyx_string** %base.ptr
  %5838 = getelementptr [2 x i8], [2 x i8]* @.str668, i32 0, i32 0
  %5839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %5838, i64 1)
  %5840 = call %nyx_string* @nyx_string_concat(%nyx_string* %5837, %nyx_string* %5839)
  %5841 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5842 = getelementptr [12 x i8], [12 x i8]* @.str669, i32 0, i32 0
  %5843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %5842, i64 11)
  %5844 = call %nyx_string* @nyx_string_concat(%nyx_string* %5841, %nyx_string* %5843)
  %5845 = load i8*, i8** %hashes.ptr
  %5846 = call %nyx_string* @hash_archivo(%nyx_string* %5844, i8* %5845)
  %5847 = call %nyx_string* @nyx_string_concat(%nyx_string* %5840, %nyx_string* %5846)
  %5848 = alloca %nyx_string*
  store %nyx_string* %5847, %nyx_string** %5848
  %5849 = load %nyx_string*, %nyx_string** %modulo.ptr
  %5850 = getelementptr [4 x i8], [4 x i8]* @.str670, i32 0, i32 0
  %5851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %5850, i64 3)
  %5852 = call %nyx_string* @nyx_string_concat(%nyx_string* %5849, %nyx_string* %5851)
  %5853 = alloca %nyx_string*
  store %nyx_string* %5852, %nyx_string** %5853
  %5854 = alloca i64
  store i64 0, i64* %5854
  %5855 = getelementptr [2 x i8], [2 x i8]* @.str671, i32 0, i32 0
  %5856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %5855, i64 1)
  %5857 = alloca %nyx_string*
  store %nyx_string* %5856, %nyx_string** %5857
  %5858 = getelementptr [2 x i8], [2 x i8]* @.str672, i32 0, i32 0
  %5859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %5858, i64 1)
  %5860 = alloca %nyx_string*
  store %nyx_string* %5859, %nyx_string** %5860
  %5861 = call i8* @llvm.stacksave()
  br label %while_cond1118
while_cond1118:
  %5862 = load i64, i64* %5854
  %5863 = load { i64, i8* }*, { i64, i8* }** %5828
  %5864 = call i64 @nyx_array_length({ i64, i8* }* %5863)
  %5865 = icmp slt i64 %5862, %5864
  br i1 %5865, label %while_body1119, label %while_end1120
while_body1119:
  call void @llvm.stackrestore(i8* %5861)
  %5866 = load { i64, i8* }*, { i64, i8* }** %5828
  %5867 = load i64, i64* %5854
  %5868 = call i64 @nyx_array_get_checked({ i64, i8* }* %5866, i64 %5867, i64 2)
  %5869 = inttoptr i64 %5868 to %nyx_string*
  %5870 = alloca %nyx_string*
  store %nyx_string* %5869, %nyx_string** %5870
  %5871 = load %nyx_string*, %nyx_string** %5848
  %5872 = load %nyx_string*, %nyx_string** %5857
  %5873 = call %nyx_string* @nyx_string_concat(%nyx_string* %5871, %nyx_string* %5872)
  %5874 = load %nyx_string*, %nyx_string** %5870
  %5875 = call %nyx_string* @nyx_string_concat(%nyx_string* %5873, %nyx_string* %5874)
  %5876 = load %nyx_string*, %nyx_string** %5860
  %5877 = call %nyx_string* @nyx_string_concat(%nyx_string* %5875, %nyx_string* %5876)
  %5878 = load %nyx_string*, %nyx_string** %5870
  %5879 = load %nyx_string*, %nyx_string** %5853
  %5880 = load i8*, i8** %libs.ptr
  %5881 = load i8*, i8** %hashes.ptr
  %5882 = call %nyx_string* @hash_para_huella(%nyx_string* %5878, %nyx_string* %5879, i8* %5880, i8* %5881)
  %5883 = call %nyx_string* @nyx_string_concat(%nyx_string* %5877, %nyx_string* %5882)
  store %nyx_string* %5883, %nyx_string** %5848
  %5884 = load i64, i64* %5854
  %5885 = add i64 %5884, 1
  store i64 %5885, i64* %5854
  br label %while_cond1118
while_end1120:
  %5886 = load %nyx_string*, %nyx_string** %5848
  %5887 = call %nyx_string* @nyx_sha256(%nyx_string* %5886)
  ret %nyx_string* %5887
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
  %5888 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5889 = load { i64, i8* }*, { i64, i8* }** %5888
  %5890 = call i64 @nyx_array_length({ i64, i8* }* %5889)
  %5891 = icmp eq i64 %5890, 0
  br i1 %5891, label %then1121, label %else1122
then1121:
  %5892 = getelementptr [1 x i8], [1 x i8]* @.str673, i32 0, i32 0
  %5893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %5892, i64 0)
  ret %nyx_string* %5893
else1122:
  br label %merge1123
merge1123:
  %5894 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5895 = load { i64, i8* }*, { i64, i8* }** %5894
  %5896 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5897 = load { i64, i8* }*, { i64, i8* }** %5896
  %5898 = getelementptr [2 x i8], [2 x i8]* @.str674, i32 0, i32 0
  %5899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %5898, i64 1)
  %5900 = call %nyx_string* @nyx_string_join({ i64, i8* }* %5897, %nyx_string* %5899)
  %5901 = alloca %nyx_string*
  store %nyx_string* %5900, %nyx_string** %5901
  %5902 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %5903 = call { i64, i8* }* @nyx_stat(%nyx_string* %5902)
  %5904 = alloca { i64, i8* }*
  store { i64, i8* }* %5903, { i64, i8* }** %5904
  %5905 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %5906 = alloca %nyx_string*
  store %nyx_string* %5905, %nyx_string** %5906
  %5907 = load { i64, i8* }*, { i64, i8* }** %5904
  %5908 = call i64 @nyx_array_length({ i64, i8* }* %5907)
  %5909 = icmp sge i64 %5908, 3
  br i1 %5909, label %then1124, label %else1125
then1124:
  %5910 = load { i64, i8* }*, { i64, i8* }** %5904
  %5911 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %5910, i64 0)
  %5912 = alloca i64
  store i64 %5911, i64* %5912
  %5913 = load { i64, i8* }*, { i64, i8* }** %5904
  %5914 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %5913, i64 2)
  %5915 = alloca i64
  store i64 %5914, i64* %5915
  %5916 = load %nyx_string*, %nyx_string** %5906
  %5917 = getelementptr [2 x i8], [2 x i8]* @.str675, i32 0, i32 0
  %5918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %5917, i64 1)
  %5919 = call %nyx_string* @nyx_string_concat(%nyx_string* %5916, %nyx_string* %5918)
  %5920 = load i64, i64* %5912
  %5921 = call %nyx_string* @nyx_string_from_int(i64 %5920)
  %5922 = call %nyx_string* @nyx_string_concat(%nyx_string* %5919, %nyx_string* %5921)
  %5923 = getelementptr [2 x i8], [2 x i8]* @.str676, i32 0, i32 0
  %5924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %5923, i64 1)
  %5925 = call %nyx_string* @nyx_string_concat(%nyx_string* %5922, %nyx_string* %5924)
  %5926 = load i64, i64* %5915
  %5927 = call %nyx_string* @nyx_string_from_int(i64 %5926)
  %5928 = call %nyx_string* @nyx_string_concat(%nyx_string* %5925, %nyx_string* %5927)
  store %nyx_string* %5928, %nyx_string** %5906
  br label %merge1126
else1125:
  br label %merge1126
merge1126:
  %5929 = load %nyx_string*, %nyx_string** %5906
  %5930 = getelementptr [2 x i8], [2 x i8]* @.str677, i32 0, i32 0
  %5931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %5930, i64 1)
  %5932 = call %nyx_string* @nyx_string_concat(%nyx_string* %5929, %nyx_string* %5931)
  %5933 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %5934 = call %nyx_string* @nyx_string_concat(%nyx_string* %5932, %nyx_string* %5933)
  %5935 = getelementptr [2 x i8], [2 x i8]* @.str678, i32 0, i32 0
  %5936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %5935, i64 1)
  %5937 = call %nyx_string* @nyx_string_concat(%nyx_string* %5934, %nyx_string* %5936)
  %5938 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %5939 = call %nyx_string* @nyx_string_concat(%nyx_string* %5937, %nyx_string* %5938)
  %5940 = getelementptr [2 x i8], [2 x i8]* @.str679, i32 0, i32 0
  %5941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %5940, i64 1)
  %5942 = call %nyx_string* @nyx_string_concat(%nyx_string* %5939, %nyx_string* %5941)
  %5943 = load %nyx_string*, %nyx_string** %5901
  %5944 = call %nyx_string* @nyx_string_concat(%nyx_string* %5942, %nyx_string* %5943)
  %5945 = alloca %nyx_string*
  store %nyx_string* %5944, %nyx_string** %5945
  %5946 = call i8* @nyx_map_new(i32 0)
  %5947 = alloca i8*
  store i8* %5946, i8** %5947
  %5948 = call i8* @nyx_map_new(i32 0)
  %5949 = alloca i8*
  store i8* %5948, i8** %5949
  %5950 = call i8* @nyx_map_new(i32 0)
  %5951 = alloca i8*
  store i8* %5950, i8** %5951
  %5952 = alloca i64
  store i64 0, i64* %5952
  %5953 = call i8* @llvm.stacksave()
  br label %while_cond1127
while_cond1127:
  %5954 = load i64, i64* %5952
  %5955 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5956 = load { i64, i8* }*, { i64, i8* }** %5955
  %5957 = call i64 @nyx_array_length({ i64, i8* }* %5956)
  %5958 = icmp slt i64 %5954, %5957
  br i1 %5958, label %while_body1128, label %while_end1129
while_body1128:
  call void @llvm.stackrestore(i8* %5953)
  %5959 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5960 = load { i64, i8* }*, { i64, i8* }** %5959
  %5961 = load i64, i64* %5952
  %5962 = call i64 @nyx_array_get({ i64, i8* }* %5960, i64 %5961)
  %5963 = inttoptr i64 %5962 to %nyx_string*
  %5964 = alloca %nyx_string*
  store %nyx_string* %5963, %nyx_string** %5964
  %5965 = load i8*, i8** %5951
  %5966 = load %nyx_string*, %nyx_string** %5964
  %5967 = call i8* @nyx_string_to_cstr(%nyx_string* %5966)
  call void @nyx_map_insert_int(i8* %5965, i8* %5967, i64 1)
  %5968 = load i64, i64* %5952
  %5969 = add i64 %5968, 1
  store i64 %5969, i64* %5952
  br label %while_cond1127
while_end1129:
  %5970 = call i8* @nyx_sb_new(i64 1024)
  %5971 = alloca i8*
  store i8* %5970, i8** %5971
  %5972 = load i8*, i8** %5971
  %5973 = call %nyx_string* @lib_pista_import_sh()
  call void @nyx_sb_append(i8* %5972, %nyx_string* %5973)
  %5974 = load i8*, i8** %5971
  %5975 = getelementptr [60 x i8], [60 x i8]* @.str680, i32 0, i32 0
  %5976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %5975, i64 59)
  call void @nyx_sb_append(i8* %5974, %nyx_string* %5976)
  %5977 = alloca i64
  store i64 0, i64* %5977
  %5978 = getelementptr [2 x i8], [2 x i8]* @.str681, i32 0, i32 0
  %5979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %5978, i64 1)
  %5980 = alloca %nyx_string*
  store %nyx_string* %5979, %nyx_string** %5980
  %5981 = getelementptr [2 x i8], [2 x i8]* @.str682, i32 0, i32 0
  %5982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %5981, i64 1)
  %5983 = alloca %nyx_string*
  store %nyx_string* %5982, %nyx_string** %5983
  %5984 = getelementptr [5 x i8], [5 x i8]* @.str683, i32 0, i32 0
  %5985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %5984, i64 4)
  %5986 = alloca %nyx_string*
  store %nyx_string* %5985, %nyx_string** %5986
  %5987 = getelementptr [26 x i8], [26 x i8]* @.str684, i32 0, i32 0
  %5988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %5987, i64 25)
  %5989 = alloca %nyx_string*
  store %nyx_string* %5988, %nyx_string** %5989
  %5990 = getelementptr [2 x i8], [2 x i8]* @.str685, i32 0, i32 0
  %5991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %5990, i64 1)
  %5992 = alloca %nyx_string*
  store %nyx_string* %5991, %nyx_string** %5992
  %5993 = getelementptr [3 x i8], [3 x i8]* @.str686, i32 0, i32 0
  %5994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %5993, i64 2)
  %5995 = alloca %nyx_string*
  store %nyx_string* %5994, %nyx_string** %5995
  %5996 = getelementptr [8 x i8], [8 x i8]* @.str687, i32 0, i32 0
  %5997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %5996, i64 7)
  %5998 = alloca %nyx_string*
  store %nyx_string* %5997, %nyx_string** %5998
  %5999 = getelementptr [13 x i8], [13 x i8]* @.str688, i32 0, i32 0
  %6000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %5999, i64 12)
  %6001 = alloca %nyx_string*
  store %nyx_string* %6000, %nyx_string** %6001
  %6002 = getelementptr [30 x i8], [30 x i8]* @.str689, i32 0, i32 0
  %6003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %6002, i64 29)
  %6004 = alloca %nyx_string*
  store %nyx_string* %6003, %nyx_string** %6004
  %6005 = getelementptr [20 x i8], [20 x i8]* @.str690, i32 0, i32 0
  %6006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %6005, i64 19)
  %6007 = alloca %nyx_string*
  store %nyx_string* %6006, %nyx_string** %6007
  %6008 = getelementptr [39 x i8], [39 x i8]* @.str691, i32 0, i32 0
  %6009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %6008, i64 38)
  %6010 = alloca %nyx_string*
  store %nyx_string* %6009, %nyx_string** %6010
  %6011 = getelementptr [35 x i8], [35 x i8]* @.str692, i32 0, i32 0
  %6012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %6011, i64 34)
  %6013 = alloca %nyx_string*
  store %nyx_string* %6012, %nyx_string** %6013
  %6014 = getelementptr [4 x i8], [4 x i8]* @.str693, i32 0, i32 0
  %6015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %6014, i64 3)
  %6016 = alloca %nyx_string*
  store %nyx_string* %6015, %nyx_string** %6016
  %6017 = getelementptr [10 x i8], [10 x i8]* @.str694, i32 0, i32 0
  %6018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %6017, i64 9)
  %6019 = alloca %nyx_string*
  store %nyx_string* %6018, %nyx_string** %6019
  %6020 = getelementptr [28 x i8], [28 x i8]* @.str695, i32 0, i32 0
  %6021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %6020, i64 27)
  %6022 = alloca %nyx_string*
  store %nyx_string* %6021, %nyx_string** %6022
  %6023 = getelementptr [43 x i8], [43 x i8]* @.str696, i32 0, i32 0
  %6024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %6023, i64 42)
  %6025 = alloca %nyx_string*
  store %nyx_string* %6024, %nyx_string** %6025
  %6026 = getelementptr [22 x i8], [22 x i8]* @.str697, i32 0, i32 0
  %6027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %6026, i64 21)
  %6028 = alloca %nyx_string*
  store %nyx_string* %6027, %nyx_string** %6028
  %6029 = getelementptr [2 x i8], [2 x i8]* @.str698, i32 0, i32 0
  %6030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %6029, i64 1)
  %6031 = alloca %nyx_string*
  store %nyx_string* %6030, %nyx_string** %6031
  %6032 = getelementptr [3 x i8], [3 x i8]* @.str699, i32 0, i32 0
  %6033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %6032, i64 2)
  %6034 = alloca %nyx_string*
  store %nyx_string* %6033, %nyx_string** %6034
  %6035 = getelementptr [12 x i8], [12 x i8]* @.str700, i32 0, i32 0
  %6036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %6035, i64 11)
  %6037 = alloca %nyx_string*
  store %nyx_string* %6036, %nyx_string** %6037
  %6038 = getelementptr [13 x i8], [13 x i8]* @.str701, i32 0, i32 0
  %6039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %6038, i64 12)
  %6040 = alloca %nyx_string*
  store %nyx_string* %6039, %nyx_string** %6040
  %6041 = getelementptr [27 x i8], [27 x i8]* @.str702, i32 0, i32 0
  %6042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %6041, i64 26)
  %6043 = alloca %nyx_string*
  store %nyx_string* %6042, %nyx_string** %6043
  %6044 = getelementptr [9 x i8], [9 x i8]* @.str703, i32 0, i32 0
  %6045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %6044, i64 8)
  %6046 = alloca %nyx_string*
  store %nyx_string* %6045, %nyx_string** %6046
  %6047 = getelementptr [35 x i8], [35 x i8]* @.str704, i32 0, i32 0
  %6048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %6047, i64 34)
  %6049 = alloca %nyx_string*
  store %nyx_string* %6048, %nyx_string** %6049
  %6050 = getelementptr [5 x i8], [5 x i8]* @.str705, i32 0, i32 0
  %6051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %6050, i64 4)
  %6052 = alloca %nyx_string*
  store %nyx_string* %6051, %nyx_string** %6052
  %6053 = getelementptr [55 x i8], [55 x i8]* @.str706, i32 0, i32 0
  %6054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %6053, i64 54)
  %6055 = alloca %nyx_string*
  store %nyx_string* %6054, %nyx_string** %6055
  %6056 = getelementptr [17 x i8], [17 x i8]* @.str707, i32 0, i32 0
  %6057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %6056, i64 16)
  %6058 = alloca %nyx_string*
  store %nyx_string* %6057, %nyx_string** %6058
  %6059 = getelementptr [10 x i8], [10 x i8]* @.str708, i32 0, i32 0
  %6060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %6059, i64 9)
  %6061 = alloca %nyx_string*
  store %nyx_string* %6060, %nyx_string** %6061
  %6062 = getelementptr [26 x i8], [26 x i8]* @.str709, i32 0, i32 0
  %6063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %6062, i64 25)
  %6064 = alloca %nyx_string*
  store %nyx_string* %6063, %nyx_string** %6064
  %6065 = getelementptr [66 x i8], [66 x i8]* @.str710, i32 0, i32 0
  %6066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %6065, i64 65)
  %6067 = alloca %nyx_string*
  store %nyx_string* %6066, %nyx_string** %6067
  %6068 = getelementptr [62 x i8], [62 x i8]* @.str711, i32 0, i32 0
  %6069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %6068, i64 61)
  %6070 = alloca %nyx_string*
  store %nyx_string* %6069, %nyx_string** %6070
  %6071 = getelementptr [111 x i8], [111 x i8]* @.str712, i32 0, i32 0
  %6072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %6071, i64 110)
  %6073 = alloca %nyx_string*
  store %nyx_string* %6072, %nyx_string** %6073
  %6074 = getelementptr [45 x i8], [45 x i8]* @.str713, i32 0, i32 0
  %6075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %6074, i64 44)
  %6076 = alloca %nyx_string*
  store %nyx_string* %6075, %nyx_string** %6076
  %6077 = getelementptr [14 x i8], [14 x i8]* @.str714, i32 0, i32 0
  %6078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %6077, i64 13)
  %6079 = alloca %nyx_string*
  store %nyx_string* %6078, %nyx_string** %6079
  %6080 = getelementptr [38 x i8], [38 x i8]* @.str715, i32 0, i32 0
  %6081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %6080, i64 37)
  %6082 = alloca %nyx_string*
  store %nyx_string* %6081, %nyx_string** %6082
  %6083 = getelementptr [45 x i8], [45 x i8]* @.str716, i32 0, i32 0
  %6084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %6083, i64 44)
  %6085 = alloca %nyx_string*
  store %nyx_string* %6084, %nyx_string** %6085
  %6086 = getelementptr [36 x i8], [36 x i8]* @.str717, i32 0, i32 0
  %6087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %6086, i64 35)
  %6088 = alloca %nyx_string*
  store %nyx_string* %6087, %nyx_string** %6088
  %6089 = getelementptr [25 x i8], [25 x i8]* @.str718, i32 0, i32 0
  %6090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %6089, i64 24)
  %6091 = alloca %nyx_string*
  store %nyx_string* %6090, %nyx_string** %6091
  %6092 = getelementptr [8 x i8], [8 x i8]* @.str719, i32 0, i32 0
  %6093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %6092, i64 7)
  %6094 = alloca %nyx_string*
  store %nyx_string* %6093, %nyx_string** %6094
  %6095 = getelementptr [42 x i8], [42 x i8]* @.str720, i32 0, i32 0
  %6096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %6095, i64 41)
  %6097 = alloca %nyx_string*
  store %nyx_string* %6096, %nyx_string** %6097
  %6098 = call i8* @llvm.stacksave()
  br label %while_cond1130
while_cond1130:
  %6099 = load i64, i64* %5977
  %6100 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6101 = load { i64, i8* }*, { i64, i8* }** %6100
  %6102 = call i64 @nyx_array_length({ i64, i8* }* %6101)
  %6103 = icmp slt i64 %6099, %6102
  br i1 %6103, label %while_body1131, label %while_end1132
while_body1131:
  call void @llvm.stackrestore(i8* %6098)
  %6104 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6105 = load { i64, i8* }*, { i64, i8* }** %6104
  %6106 = load i64, i64* %5977
  %6107 = call i64 @nyx_array_get({ i64, i8* }* %6105, i64 %6106)
  %6108 = inttoptr i64 %6107 to %nyx_string*
  %6109 = alloca %nyx_string*
  store %nyx_string* %6108, %nyx_string** %6109
  %6110 = load %nyx_string*, %nyx_string** %6109
  %6111 = load %nyx_string*, %nyx_string** %5980
  %6112 = load %nyx_string*, %nyx_string** %5983
  %6113 = call %nyx_string* @nyx_string_replace(%nyx_string* %6110, %nyx_string* %6111, %nyx_string* %6112)
  %6114 = alloca %nyx_string*
  store %nyx_string* %6113, %nyx_string** %6114
  %6115 = load %nyx_string*, %nyx_string** %6109
  %6116 = load %nyx_string*, %nyx_string** %5945
  %6117 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %6118 = load %nyx_string*, %nyx_string** %5986
  %6119 = call %nyx_string* @nyx_string_concat(%nyx_string* %6117, %nyx_string* %6118)
  %6120 = load i8*, i8** %5947
  %6121 = load i8*, i8** %5949
  %6122 = load i8*, i8** %5951
  %6123 = call %nyx_string* @lib_huella(%nyx_string* %6115, %nyx_string* %6116, %nyx_string* %6119, i8* %6120, i8* %6121, i8* %6122)
  %6124 = call %nyx_string* @nyx_string_substring(%nyx_string* %6123, i64 0, i64 16)
  %6125 = alloca %nyx_string*
  store %nyx_string* %6124, %nyx_string** %6125
  %6126 = load %nyx_string*, %nyx_string** %5989
  %6127 = load %nyx_string*, %nyx_string** %6114
  %6128 = call %nyx_string* @nyx_string_concat(%nyx_string* %6126, %nyx_string* %6127)
  %6129 = load %nyx_string*, %nyx_string** %5992
  %6130 = call %nyx_string* @nyx_string_concat(%nyx_string* %6128, %nyx_string* %6129)
  %6131 = load %nyx_string*, %nyx_string** %6125
  %6132 = call %nyx_string* @nyx_string_concat(%nyx_string* %6130, %nyx_string* %6131)
  %6133 = load %nyx_string*, %nyx_string** %5995
  %6134 = call %nyx_string* @nyx_string_concat(%nyx_string* %6132, %nyx_string* %6133)
  %6135 = alloca %nyx_string*
  store %nyx_string* %6134, %nyx_string** %6135
  %6136 = load %nyx_string*, %nyx_string** %5989
  %6137 = load %nyx_string*, %nyx_string** %6114
  %6138 = call %nyx_string* @nyx_string_concat(%nyx_string* %6136, %nyx_string* %6137)
  %6139 = load %nyx_string*, %nyx_string** %5992
  %6140 = call %nyx_string* @nyx_string_concat(%nyx_string* %6138, %nyx_string* %6139)
  %6141 = load %nyx_string*, %nyx_string** %6125
  %6142 = call %nyx_string* @nyx_string_concat(%nyx_string* %6140, %nyx_string* %6141)
  %6143 = load %nyx_string*, %nyx_string** %5998
  %6144 = call %nyx_string* @nyx_string_concat(%nyx_string* %6142, %nyx_string* %6143)
  %6145 = alloca %nyx_string*
  store %nyx_string* %6144, %nyx_string** %6145
  %6146 = load %nyx_string*, %nyx_string** %6001
  %6147 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %6148 = call %nyx_string* @nyx_string_concat(%nyx_string* %6146, %nyx_string* %6147)
  %6149 = load %nyx_string*, %nyx_string** %6004
  %6150 = call %nyx_string* @nyx_string_concat(%nyx_string* %6148, %nyx_string* %6149)
  %6151 = load %nyx_string*, %nyx_string** %6109
  %6152 = call %nyx_string* @nyx_string_concat(%nyx_string* %6150, %nyx_string* %6151)
  %6153 = load %nyx_string*, %nyx_string** %6007
  %6154 = call %nyx_string* @nyx_string_concat(%nyx_string* %6152, %nyx_string* %6153)
  %6155 = load %nyx_string*, %nyx_string** %5901
  %6156 = call %nyx_string* @nyx_string_concat(%nyx_string* %6154, %nyx_string* %6155)
  %6157 = load %nyx_string*, %nyx_string** %6010
  %6158 = call %nyx_string* @nyx_string_concat(%nyx_string* %6156, %nyx_string* %6157)
  %6159 = load %nyx_string*, %nyx_string** %6109
  %6160 = call %nyx_string* @nyx_string_concat(%nyx_string* %6158, %nyx_string* %6159)
  %6161 = load %nyx_string*, %nyx_string** %6013
  %6162 = call %nyx_string* @nyx_string_concat(%nyx_string* %6160, %nyx_string* %6161)
  %6163 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %6164 = call %nyx_string* @nyx_string_concat(%nyx_string* %6162, %nyx_string* %6163)
  %6165 = load %nyx_string*, %nyx_string** %6016
  %6166 = call %nyx_string* @nyx_string_concat(%nyx_string* %6164, %nyx_string* %6165)
  %6167 = alloca %nyx_string*
  store %nyx_string* %6166, %nyx_string** %6167
  %6168 = load i8*, i8** %5971
  %6169 = load %nyx_string*, %nyx_string** %6019
  %6170 = load %nyx_string*, %nyx_string** %6135
  %6171 = call %nyx_string* @nyx_string_concat(%nyx_string* %6169, %nyx_string* %6170)
  %6172 = load %nyx_string*, %nyx_string** %6022
  %6173 = call %nyx_string* @nyx_string_concat(%nyx_string* %6171, %nyx_string* %6172)
  %6174 = load %nyx_string*, %nyx_string** %6109
  %6175 = call %nyx_string* @nyx_string_concat(%nyx_string* %6173, %nyx_string* %6174)
  %6176 = load %nyx_string*, %nyx_string** %6025
  %6177 = call %nyx_string* @nyx_string_concat(%nyx_string* %6175, %nyx_string* %6176)
  %6178 = load %nyx_string*, %nyx_string** %6135
  %6179 = call %nyx_string* @nyx_string_concat(%nyx_string* %6177, %nyx_string* %6178)
  %6180 = load %nyx_string*, %nyx_string** %6028
  %6181 = call %nyx_string* @nyx_string_concat(%nyx_string* %6179, %nyx_string* %6180)
  %6182 = load %nyx_string*, %nyx_string** %6109
  %6183 = call %nyx_string* @nyx_string_concat(%nyx_string* %6181, %nyx_string* %6182)
  %6184 = load %nyx_string*, %nyx_string** %6031
  %6185 = call %nyx_string* @nyx_string_concat(%nyx_string* %6183, %nyx_string* %6184)
  %6186 = load %nyx_string*, %nyx_string** %6135
  %6187 = call %nyx_string* @nyx_string_concat(%nyx_string* %6185, %nyx_string* %6186)
  %6188 = load %nyx_string*, %nyx_string** %6034
  %6189 = call %nyx_string* @nyx_string_concat(%nyx_string* %6187, %nyx_string* %6188)
  call void @nyx_sb_append(i8* %6168, %nyx_string* %6189)
  %6190 = load i8*, i8** %5971
  %6191 = load %nyx_string*, %nyx_string** %6037
  %6192 = load %nyx_string*, %nyx_string** %6145
  %6193 = call %nyx_string* @nyx_string_concat(%nyx_string* %6191, %nyx_string* %6192)
  %6194 = load %nyx_string*, %nyx_string** %6040
  %6195 = call %nyx_string* @nyx_string_concat(%nyx_string* %6193, %nyx_string* %6194)
  call void @nyx_sb_append(i8* %6190, %nyx_string* %6195)
  %6196 = load i8*, i8** %5971
  %6197 = load %nyx_string*, %nyx_string** %6043
  %6198 = load %nyx_string*, %nyx_string** %6109
  %6199 = call %nyx_string* @nyx_string_concat(%nyx_string* %6197, %nyx_string* %6198)
  %6200 = load %nyx_string*, %nyx_string** %6046
  %6201 = call %nyx_string* @nyx_string_concat(%nyx_string* %6199, %nyx_string* %6200)
  call void @nyx_sb_append(i8* %6196, %nyx_string* %6201)
  %6202 = load i8*, i8** %5971
  %6203 = load %nyx_string*, %nyx_string** %6049
  %6204 = load %nyx_string*, %nyx_string** %6114
  %6205 = call %nyx_string* @nyx_string_concat(%nyx_string* %6203, %nyx_string* %6204)
  %6206 = load %nyx_string*, %nyx_string** %6052
  %6207 = call %nyx_string* @nyx_string_concat(%nyx_string* %6205, %nyx_string* %6206)
  call void @nyx_sb_append(i8* %6202, %nyx_string* %6207)
  %6208 = load i8*, i8** %5971
  %6209 = load %nyx_string*, %nyx_string** %6055
  %6210 = load %nyx_string*, %nyx_string** %6109
  %6211 = call %nyx_string* @nyx_string_concat(%nyx_string* %6209, %nyx_string* %6210)
  %6212 = load %nyx_string*, %nyx_string** %6058
  %6213 = call %nyx_string* @nyx_string_concat(%nyx_string* %6211, %nyx_string* %6212)
  call void @nyx_sb_append(i8* %6208, %nyx_string* %6213)
  %6214 = load i8*, i8** %5971
  %6215 = load %nyx_string*, %nyx_string** %6061
  %6216 = load %nyx_string*, %nyx_string** %6167
  %6217 = call %nyx_string* @nyx_string_concat(%nyx_string* %6215, %nyx_string* %6216)
  %6218 = load %nyx_string*, %nyx_string** %6064
  %6219 = call %nyx_string* @nyx_string_concat(%nyx_string* %6217, %nyx_string* %6218)
  call void @nyx_sb_append(i8* %6214, %nyx_string* %6219)
  %6220 = load i8*, i8** %5971
  %6221 = load %nyx_string*, %nyx_string** %6067
  %6222 = load %nyx_string*, %nyx_string** %6145
  %6223 = call %nyx_string* @nyx_string_concat(%nyx_string* %6221, %nyx_string* %6222)
  %6224 = load %nyx_string*, %nyx_string** %6034
  %6225 = call %nyx_string* @nyx_string_concat(%nyx_string* %6223, %nyx_string* %6224)
  call void @nyx_sb_append(i8* %6220, %nyx_string* %6225)
  %6226 = load i8*, i8** %5971
  %6227 = load %nyx_string*, %nyx_string** %6070
  %6228 = load %nyx_string*, %nyx_string** %6109
  %6229 = call %nyx_string* @nyx_string_concat(%nyx_string* %6227, %nyx_string* %6228)
  %6230 = load %nyx_string*, %nyx_string** %6073
  %6231 = call %nyx_string* @nyx_string_concat(%nyx_string* %6229, %nyx_string* %6230)
  call void @nyx_sb_append(i8* %6226, %nyx_string* %6231)
  %6232 = load i8*, i8** %5971
  %6233 = load %nyx_string*, %nyx_string** %6076
  call void @nyx_sb_append(i8* %6232, %nyx_string* %6233)
  %6234 = load i8*, i8** %5971
  %6235 = load %nyx_string*, %nyx_string** %6079
  %6236 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %6237 = call %nyx_string* @nyx_string_concat(%nyx_string* %6235, %nyx_string* %6236)
  %6238 = load %nyx_string*, %nyx_string** %6082
  %6239 = call %nyx_string* @nyx_string_concat(%nyx_string* %6237, %nyx_string* %6238)
  %6240 = load %nyx_string*, %nyx_string** %6135
  %6241 = call %nyx_string* @nyx_string_concat(%nyx_string* %6239, %nyx_string* %6240)
  %6242 = load %nyx_string*, %nyx_string** %6085
  %6243 = call %nyx_string* @nyx_string_concat(%nyx_string* %6241, %nyx_string* %6242)
  %6244 = load %nyx_string*, %nyx_string** %6109
  %6245 = call %nyx_string* @nyx_string_concat(%nyx_string* %6243, %nyx_string* %6244)
  %6246 = load %nyx_string*, %nyx_string** %6088
  %6247 = call %nyx_string* @nyx_string_concat(%nyx_string* %6245, %nyx_string* %6246)
  call void @nyx_sb_append(i8* %6234, %nyx_string* %6247)
  %6248 = load i8*, i8** %5971
  %6249 = load %nyx_string*, %nyx_string** %6091
  %6250 = load %nyx_string*, %nyx_string** %6135
  %6251 = call %nyx_string* @nyx_string_concat(%nyx_string* %6249, %nyx_string* %6250)
  %6252 = load %nyx_string*, %nyx_string** %6028
  %6253 = call %nyx_string* @nyx_string_concat(%nyx_string* %6251, %nyx_string* %6252)
  %6254 = load %nyx_string*, %nyx_string** %6109
  %6255 = call %nyx_string* @nyx_string_concat(%nyx_string* %6253, %nyx_string* %6254)
  %6256 = load %nyx_string*, %nyx_string** %6031
  %6257 = call %nyx_string* @nyx_string_concat(%nyx_string* %6255, %nyx_string* %6256)
  %6258 = load %nyx_string*, %nyx_string** %6135
  %6259 = call %nyx_string* @nyx_string_concat(%nyx_string* %6257, %nyx_string* %6258)
  %6260 = load %nyx_string*, %nyx_string** %6094
  %6261 = call %nyx_string* @nyx_string_concat(%nyx_string* %6259, %nyx_string* %6260)
  call void @nyx_sb_append(i8* %6248, %nyx_string* %6261)
  %6262 = load i8*, i8** %5971
  %6263 = load %nyx_string*, %nyx_string** %6097
  call void @nyx_sb_append(i8* %6262, %nyx_string* %6263)
  %6264 = load i64, i64* %5977
  %6265 = add i64 %6264, 1
  store i64 %6265, i64* %5977
  br label %while_cond1130
while_end1132:
  %6266 = load i8*, i8** %5971
  %6267 = call %nyx_string* @nyx_sb_to_string(i8* %6266)
  ret %nyx_string* %6267
}

define internal i1 @run_libs(
%ProjectConfig %config.param, i1 %release.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %6268 = getelementptr [9 x i8], [9 x i8]* @.str721, i32 0, i32 0
  %6269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %6268, i64 8)
  %6270 = call i8* @nyx_string_to_cstr(%nyx_string* %6269)
  %6271 = call %nyx_string* @nyx_getenv(i8* %6270)
  %6272 = alloca %nyx_string*
  store %nyx_string* %6271, %nyx_string** %6272
  %6273 = load %nyx_string*, %nyx_string** %6272
  %6274 = getelementptr [1 x i8], [1 x i8]* @.str722, i32 0, i32 0
  %6275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %6274, i64 0)
  %6276 = call i1 @nyx_string_equals(%nyx_string* %6273, %nyx_string* %6275)
  br i1 %6276, label %then1133, label %else1134
then1133:
  %6277 = getelementptr [5 x i8], [5 x i8]* @.str723, i32 0, i32 0
  %6278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %6277, i64 4)
  %6279 = call i8* @nyx_string_to_cstr(%nyx_string* %6278)
  %6280 = call %nyx_string* @nyx_getenv(i8* %6279)
  %6281 = alloca %nyx_string*
  store %nyx_string* %6280, %nyx_string** %6281
  %6282 = alloca i1
  store i1 false, i1* %6282
  %6283 = load %nyx_string*, %nyx_string** %6281
  %6284 = getelementptr [1 x i8], [1 x i8]* @.str724, i32 0, i32 0
  %6285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %6284, i64 0)
  %6286 = call i1 @nyx_string_equals(%nyx_string* %6283, %nyx_string* %6285)
  %6287 = xor i1 %6286, true
  br i1 %6287, label %sc_and_rhs1136, label %sc_and_end1137
sc_and_rhs1136:
  %6288 = load %nyx_string*, %nyx_string** %6281
  %6289 = getelementptr [24 x i8], [24 x i8]* @.str725, i32 0, i32 0
  %6290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %6289, i64 23)
  %6291 = call %nyx_string* @nyx_string_concat(%nyx_string* %6288, %nyx_string* %6290)
  %6292 = call i8* @nyx_string_to_cstr(%nyx_string* %6291)
  %6293 = call i1 @nyx_file_exists(i8* %6292)
  store i1 %6293, i1* %6282
  br label %sc_and_end1137
sc_and_end1137:
  %6294 = load i1, i1* %6282
  br i1 %6294, label %then1138, label %else1139
then1138:
  %6295 = load %nyx_string*, %nyx_string** %6281
  %6296 = getelementptr [6 x i8], [6 x i8]* @.str726, i32 0, i32 0
  %6297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %6296, i64 5)
  %6298 = call %nyx_string* @nyx_string_concat(%nyx_string* %6295, %nyx_string* %6297)
  store %nyx_string* %6298, %nyx_string** %6272
  br label %merge1140
else1139:
  br label %merge1140
merge1140:
  br label %merge1135
else1134:
  br label %merge1135
merge1135:
  %6299 = alloca i1
  store i1 false, i1* %6299
  %6300 = load %nyx_string*, %nyx_string** %6272
  %6301 = getelementptr [1 x i8], [1 x i8]* @.str727, i32 0, i32 0
  %6302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %6301, i64 0)
  %6303 = call i1 @nyx_string_equals(%nyx_string* %6300, %nyx_string* %6302)
  br i1 %6303, label %sc_and_rhs1141, label %sc_and_end1142
sc_and_rhs1141:
  %6304 = getelementptr [14 x i8], [14 x i8]* @.str728, i32 0, i32 0
  %6305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %6304, i64 13)
  %6306 = call i8* @nyx_string_to_cstr(%nyx_string* %6305)
  %6307 = call i1 @nyx_file_exists(i8* %6306)
  store i1 %6307, i1* %6299
  br label %sc_and_end1142
sc_and_end1142:
  %6308 = load i1, i1* %6299
  br i1 %6308, label %then1143, label %else1144
then1143:
  %6309 = getelementptr [2 x i8], [2 x i8]* @.str729, i32 0, i32 0
  %6310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %6309, i64 1)
  store %nyx_string* %6310, %nyx_string** %6272
  br label %merge1145
else1144:
  br label %merge1145
merge1145:
  %6311 = load %nyx_string*, %nyx_string** %6272
  %6312 = getelementptr [1 x i8], [1 x i8]* @.str730, i32 0, i32 0
  %6313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %6312, i64 0)
  %6314 = call i1 @nyx_string_equals(%nyx_string* %6311, %nyx_string* %6313)
  br i1 %6314, label %then1146, label %else1147
then1146:
  %6315 = getelementptr [56 x i8], [56 x i8]* @.str731, i32 0, i32 0
  %6316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %6315, i64 55)
  %6317 = call i8* @nyx_string_to_cstr(%nyx_string* %6316)
  call void @nyx_print_string(i8* %6317)
  ret i1 0
else1147:
  br label %merge1148
merge1148:
  %6318 = load %nyx_string*, %nyx_string** %6272
  %6319 = getelementptr [15 x i8], [15 x i8]* @.str732, i32 0, i32 0
  %6320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %6319, i64 14)
  %6321 = call %nyx_string* @nyx_string_concat(%nyx_string* %6318, %nyx_string* %6320)
  %6322 = alloca %nyx_string*
  store %nyx_string* %6321, %nyx_string** %6322
  %6323 = load %nyx_string*, %nyx_string** %6322
  %6324 = call i8* @nyx_string_to_cstr(%nyx_string* %6323)
  %6325 = call i1 @nyx_file_exists(i8* %6324)
  %6326 = xor i1 %6325, true
  br i1 %6326, label %then1149, label %else1150
then1149:
  %6327 = load %nyx_string*, %nyx_string** %6272
  %6328 = getelementptr [9 x i8], [9 x i8]* @.str733, i32 0, i32 0
  %6329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %6328, i64 8)
  %6330 = call %nyx_string* @nyx_string_concat(%nyx_string* %6327, %nyx_string* %6329)
  store %nyx_string* %6330, %nyx_string** %6322
  br label %merge1151
else1150:
  br label %merge1151
merge1151:
  %6331 = getelementptr [1 x i8], [1 x i8]* @.str734, i32 0, i32 0
  %6332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %6331, i64 0)
  %6333 = alloca %nyx_string*
  store %nyx_string* %6332, %nyx_string** %6333
  %6334 = load i1, i1* %release.ptr
  br i1 %6334, label %then1152, label %else1153
then1152:
  %6335 = getelementptr [4 x i8], [4 x i8]* @.str735, i32 0, i32 0
  %6336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %6335, i64 3)
  store %nyx_string* %6336, %nyx_string** %6333
  br label %merge1154
else1153:
  br label %merge1154
merge1154:
  %6337 = getelementptr [1 x i8], [1 x i8]* @.str736, i32 0, i32 0
  %6338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %6337, i64 0)
  %6339 = alloca %nyx_string*
  store %nyx_string* %6338, %nyx_string** %6339
  %6340 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %6341 = load i1, i1* %6340
  br i1 %6341, label %then1155, label %else1156
then1155:
  %6342 = getelementptr [13 x i8], [13 x i8]* @.str737, i32 0, i32 0
  %6343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %6342, i64 12)
  store %nyx_string* %6343, %nyx_string** %6339
  br label %merge1157
else1156:
  br label %merge1157
merge1157:
  %6344 = getelementptr [20 x i8], [20 x i8]* @.str738, i32 0, i32 0
  %6345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %6344, i64 19)
  %6346 = call %nyx_string* @pila_compilador_sh()
  %6347 = call %nyx_string* @nyx_string_concat(%nyx_string* %6345, %nyx_string* %6346)
  %6348 = call %nyx_string* @pila_compilador_pista_sh()
  %6349 = call %nyx_string* @nyx_string_concat(%nyx_string* %6347, %nyx_string* %6348)
  %6350 = alloca %nyx_string*
  store %nyx_string* %6349, %nyx_string** %6350
  %6351 = load %nyx_string*, %nyx_string** %6350
  %6352 = getelementptr [86 x i8], [86 x i8]* @.str739, i32 0, i32 0
  %6353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %6352, i64 85)
  %6354 = call %nyx_string* @nyx_string_concat(%nyx_string* %6351, %nyx_string* %6353)
  store %nyx_string* %6354, %nyx_string** %6350
  %6355 = load %nyx_string*, %nyx_string** %6350
  %6356 = getelementptr [5 x i8], [5 x i8]* @.str740, i32 0, i32 0
  %6357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %6356, i64 4)
  %6358 = call %nyx_string* @nyx_string_concat(%nyx_string* %6355, %nyx_string* %6357)
  %6359 = load %nyx_string*, %nyx_string** %6272
  %6360 = call %nyx_string* @nyx_string_concat(%nyx_string* %6358, %nyx_string* %6359)
  %6361 = getelementptr [3 x i8], [3 x i8]* @.str741, i32 0, i32 0
  %6362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %6361, i64 2)
  %6363 = call %nyx_string* @nyx_string_concat(%nyx_string* %6360, %nyx_string* %6362)
  store %nyx_string* %6363, %nyx_string** %6350
  %6364 = load %nyx_string*, %nyx_string** %6350
  %6365 = getelementptr [51 x i8], [51 x i8]* @.str742, i32 0, i32 0
  %6366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %6365, i64 50)
  %6367 = call %nyx_string* @nyx_string_concat(%nyx_string* %6364, %nyx_string* %6366)
  %6368 = load %nyx_string*, %nyx_string** %6272
  %6369 = call %nyx_string* @nyx_string_concat(%nyx_string* %6367, %nyx_string* %6368)
  %6370 = getelementptr [35 x i8], [35 x i8]* @.str743, i32 0, i32 0
  %6371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %6370, i64 34)
  %6372 = call %nyx_string* @nyx_string_concat(%nyx_string* %6369, %nyx_string* %6371)
  store %nyx_string* %6372, %nyx_string** %6350
  %6373 = load %nyx_string*, %nyx_string** %6350
  %6374 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %6375 = load %nyx_string*, %nyx_string** %6272
  %6376 = load %nyx_string*, %nyx_string** %6322
  %6377 = load %nyx_string*, %nyx_string** %6333
  %6378 = load %nyx_string*, %nyx_string** %6339
  %6379 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %6374, %nyx_string* %6375, %nyx_string* %6376, %nyx_string* %6377, %nyx_string* %6378)
  %6380 = call %nyx_string* @nyx_string_concat(%nyx_string* %6373, %nyx_string* %6379)
  store %nyx_string* %6380, %nyx_string** %6350
  %6381 = load %nyx_string*, %nyx_string** %6350
  %6382 = getelementptr [29 x i8], [29 x i8]* @.str744, i32 0, i32 0
  %6383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %6382, i64 28)
  %6384 = call %nyx_string* @nyx_string_concat(%nyx_string* %6381, %nyx_string* %6383)
  store %nyx_string* %6384, %nyx_string** %6350
  %6385 = getelementptr [15 x i8], [15 x i8]* @.str745, i32 0, i32 0
  %6386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %6385, i64 14)
  %6387 = call i64 @nyx_getpid()
  %6388 = call %nyx_string* @nyx_string_from_int(i64 %6387)
  %6389 = call %nyx_string* @nyx_string_concat(%nyx_string* %6386, %nyx_string* %6388)
  %6390 = getelementptr [4 x i8], [4 x i8]* @.str746, i32 0, i32 0
  %6391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %6390, i64 3)
  %6392 = call %nyx_string* @nyx_string_concat(%nyx_string* %6389, %nyx_string* %6391)
  %6393 = alloca %nyx_string*
  store %nyx_string* %6392, %nyx_string** %6393
  %6394 = load %nyx_string*, %nyx_string** %6393
  %6395 = load %nyx_string*, %nyx_string** %6350
  %6396 = call i8* @nyx_string_to_cstr(%nyx_string* %6394)
  %6397 = call i1 @nyx_write_file_safe(i8* %6396, %nyx_string* %6395)
  %6398 = getelementptr [7 x i8], [7 x i8]* @.str747, i32 0, i32 0
  %6399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %6398, i64 6)
  %6400 = load %nyx_string*, %nyx_string** %6393
  %6401 = call %nyx_string* @nyx_string_concat(%nyx_string* %6399, %nyx_string* %6400)
  %6402 = getelementptr [22 x i8], [22 x i8]* @.str748, i32 0, i32 0
  %6403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %6402, i64 21)
  %6404 = call %nyx_string* @nyx_string_concat(%nyx_string* %6401, %nyx_string* %6403)
  %6405 = load %nyx_string*, %nyx_string** %6393
  %6406 = call %nyx_string* @nyx_string_concat(%nyx_string* %6404, %nyx_string* %6405)
  %6407 = getelementptr [16 x i8], [16 x i8]* @.str749, i32 0, i32 0
  %6408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %6407, i64 15)
  %6409 = call %nyx_string* @nyx_string_concat(%nyx_string* %6406, %nyx_string* %6408)
  %6410 = call i8* @nyx_string_to_cstr(%nyx_string* %6409)
  %6411 = call i64 @nyx_exec_code(i8* %6410)
  %6412 = alloca i64
  store i64 %6411, i64* %6412
  %6413 = load i64, i64* %6412
  %6414 = icmp eq i64 %6413, 0
  ret i1 %6414
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %6415 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %6416 = load %nyx_string*, %nyx_string** %6415
  %6417 = alloca %nyx_string*
  store %nyx_string* %6416, %nyx_string** %6417
  %6418 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %6419 = getelementptr [1 x i8], [1 x i8]* @.str750, i32 0, i32 0
  %6420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %6419, i64 0)
  %6421 = call i1 @nyx_string_equals(%nyx_string* %6418, %nyx_string* %6420)
  %6422 = xor i1 %6421, true
  br i1 %6422, label %then1158, label %else1159
then1158:
  %6423 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %6423, %nyx_string** %6417
  br label %merge1160
else1159:
  br label %merge1160
merge1160:
  %6424 = getelementptr [1 x i8], [1 x i8]* @.str751, i32 0, i32 0
  %6425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %6424, i64 0)
  %6426 = alloca %nyx_string*
  store %nyx_string* %6425, %nyx_string** %6426
  %6427 = load %nyx_string*, %nyx_string** %6417
  %6428 = getelementptr [1 x i8], [1 x i8]* @.str752, i32 0, i32 0
  %6429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %6428, i64 0)
  %6430 = call i1 @nyx_string_equals(%nyx_string* %6427, %nyx_string* %6429)
  %6431 = xor i1 %6430, true
  br i1 %6431, label %then1161, label %else1162
then1161:
  %6432 = getelementptr [3 x i8], [3 x i8]* @.str753, i32 0, i32 0
  %6433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %6432, i64 2)
  %6434 = load %nyx_string*, %nyx_string** %6417
  %6435 = call %nyx_string* @nyx_string_concat(%nyx_string* %6433, %nyx_string* %6434)
  %6436 = getelementptr [2 x i8], [2 x i8]* @.str754, i32 0, i32 0
  %6437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %6436, i64 1)
  %6438 = call %nyx_string* @nyx_string_concat(%nyx_string* %6435, %nyx_string* %6437)
  store %nyx_string* %6438, %nyx_string** %6426
  br label %merge1163
else1162:
  br label %merge1163
merge1163:
  %6439 = getelementptr [13 x i8], [13 x i8]* @.str755, i32 0, i32 0
  %6440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %6439, i64 12)
  %6441 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %6442 = load %nyx_string*, %nyx_string** %6441
  %6443 = call %nyx_string* @nyx_string_concat(%nyx_string* %6440, %nyx_string* %6442)
  %6444 = getelementptr [3 x i8], [3 x i8]* @.str756, i32 0, i32 0
  %6445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %6444, i64 2)
  %6446 = call %nyx_string* @nyx_string_concat(%nyx_string* %6443, %nyx_string* %6445)
  %6447 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %6448 = load %nyx_string*, %nyx_string** %6447
  %6449 = call %nyx_string* @nyx_string_concat(%nyx_string* %6446, %nyx_string* %6448)
  %6450 = load %nyx_string*, %nyx_string** %6426
  %6451 = call %nyx_string* @nyx_string_concat(%nyx_string* %6449, %nyx_string* %6450)
  %6452 = call i8* @nyx_string_to_cstr(%nyx_string* %6451)
  call void @nyx_print_string(i8* %6452)
  %6453 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %6454 = call i1 @resolve_deps(%ProjectConfig %6453)
  %6455 = alloca i1
  store i1 %6454, i1* %6455
  %6456 = load i1, i1* %6455
  %6457 = icmp eq i1 %6456, 0
  br i1 %6457, label %then1164, label %else1165
then1164:
  ret i1 0
else1165:
  br label %merge1166
merge1166:
  %6458 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6459 = load %nyx_string*, %nyx_string** %6458
  %6460 = call i8* @nyx_string_to_cstr(%nyx_string* %6459)
  %6461 = call i1 @nyx_file_exists(i8* %6460)
  %6462 = xor i1 %6461, true
  br i1 %6462, label %then1167, label %else1168
then1167:
  %6463 = getelementptr [29 x i8], [29 x i8]* @.str757, i32 0, i32 0
  %6464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %6463, i64 28)
  %6465 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6466 = load %nyx_string*, %nyx_string** %6465
  %6467 = call %nyx_string* @nyx_string_concat(%nyx_string* %6464, %nyx_string* %6466)
  %6468 = call i8* @nyx_string_to_cstr(%nyx_string* %6467)
  call void @nyx_print_string(i8* %6468)
  ret i1 0
else1168:
  br label %merge1169
merge1169:
  %6469 = getelementptr [1 x i8], [1 x i8]* @.str758, i32 0, i32 0
  %6470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %6469, i64 0)
  %6471 = alloca %nyx_string*
  store %nyx_string* %6470, %nyx_string** %6471
  %6472 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %6473 = load i1, i1* %6472
  br i1 %6473, label %then1170, label %else1171
then1170:
  %6474 = getelementptr [13 x i8], [13 x i8]* @.str759, i32 0, i32 0
  %6475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %6474, i64 12)
  store %nyx_string* %6475, %nyx_string** %6471
  br label %merge1172
else1171:
  br label %merge1172
merge1172:
  %6476 = getelementptr [14 x i8], [14 x i8]* @.str760, i32 0, i32 0
  %6477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %6476, i64 13)
  %6478 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6479 = load %nyx_string*, %nyx_string** %6478
  %6480 = call %nyx_string* @nyx_string_concat(%nyx_string* %6477, %nyx_string* %6479)
  %6481 = call i8* @nyx_string_to_cstr(%nyx_string* %6480)
  call void @nyx_print_string(i8* %6481)
  %6482 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %6483 = load %nyx_string*, %nyx_string** %6482
  %6484 = alloca %nyx_string*
  store %nyx_string* %6483, %nyx_string** %6484
  %6485 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %6486 = load %nyx_string*, %nyx_string** %6485
  %6487 = getelementptr [1 x i8], [1 x i8]* @.str761, i32 0, i32 0
  %6488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %6487, i64 0)
  %6489 = call i1 @nyx_string_equals(%nyx_string* %6486, %nyx_string* %6488)
  %6490 = xor i1 %6489, true
  br i1 %6490, label %then1173, label %else1174
then1173:
  %6491 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %6492 = load %nyx_string*, %nyx_string** %6491
  store %nyx_string* %6492, %nyx_string** %6484
  br label %merge1175
else1174:
  br label %merge1175
merge1175:
  %6493 = load %nyx_string*, %nyx_string** %6484
  %6494 = alloca %nyx_string*
  store %nyx_string* %6493, %nyx_string** %6494
  %6495 = getelementptr [1 x i8], [1 x i8]* @.str762, i32 0, i32 0
  %6496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %6495, i64 0)
  %6497 = alloca %nyx_string*
  store %nyx_string* %6496, %nyx_string** %6497
  %6498 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %6499 = load %nyx_string*, %nyx_string** %6498
  %6500 = getelementptr [1 x i8], [1 x i8]* @.str763, i32 0, i32 0
  %6501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %6500, i64 0)
  %6502 = call i1 @nyx_string_equals(%nyx_string* %6499, %nyx_string* %6501)
  %6503 = xor i1 %6502, true
  br i1 %6503, label %then1176, label %else1177
then1176:
  %6504 = getelementptr [8 x i8], [8 x i8]* @.str764, i32 0, i32 0
  %6505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %6504, i64 7)
  %6506 = load %nyx_string*, %nyx_string** %6484
  %6507 = call %nyx_string* @nyx_string_concat(%nyx_string* %6505, %nyx_string* %6506)
  store %nyx_string* %6507, %nyx_string** %6494
  %6508 = getelementptr [29 x i8], [29 x i8]* @.str765, i32 0, i32 0
  %6509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %6508, i64 28)
  store %nyx_string* %6509, %nyx_string** %6497
  br label %merge1178
else1177:
  br label %merge1178
merge1178:
  %6510 = getelementptr [1 x i8], [1 x i8]* @.str766, i32 0, i32 0
  %6511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %6510, i64 0)
  %6512 = alloca %nyx_string*
  store %nyx_string* %6511, %nyx_string** %6512
  %6513 = load i1, i1* %release.ptr
  br i1 %6513, label %then1179, label %else1180
then1179:
  %6514 = getelementptr [4 x i8], [4 x i8]* @.str767, i32 0, i32 0
  %6515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %6514, i64 3)
  store %nyx_string* %6515, %nyx_string** %6512
  br label %merge1181
else1180:
  br label %merge1181
merge1181:
  %6516 = getelementptr [9 x i8], [9 x i8]* @.str768, i32 0, i32 0
  %6517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %6516, i64 8)
  %6518 = call i8* @nyx_string_to_cstr(%nyx_string* %6517)
  %6519 = call %nyx_string* @nyx_getenv(i8* %6518)
  %6520 = alloca %nyx_string*
  store %nyx_string* %6519, %nyx_string** %6520
  %6521 = load %nyx_string*, %nyx_string** %6520
  %6522 = getelementptr [1 x i8], [1 x i8]* @.str769, i32 0, i32 0
  %6523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %6522, i64 0)
  %6524 = call i1 @nyx_string_equals(%nyx_string* %6521, %nyx_string* %6523)
  br i1 %6524, label %then1182, label %else1183
then1182:
  %6525 = getelementptr [5 x i8], [5 x i8]* @.str770, i32 0, i32 0
  %6526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %6525, i64 4)
  %6527 = call i8* @nyx_string_to_cstr(%nyx_string* %6526)
  %6528 = call %nyx_string* @nyx_getenv(i8* %6527)
  %6529 = alloca %nyx_string*
  store %nyx_string* %6528, %nyx_string** %6529
  %6530 = load %nyx_string*, %nyx_string** %6529
  %6531 = getelementptr [6 x i8], [6 x i8]* @.str771, i32 0, i32 0
  %6532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %6531, i64 5)
  %6533 = call %nyx_string* @nyx_string_concat(%nyx_string* %6530, %nyx_string* %6532)
  %6534 = alloca %nyx_string*
  store %nyx_string* %6533, %nyx_string** %6534
  %6535 = alloca i1
  store i1 false, i1* %6535
  %6536 = load %nyx_string*, %nyx_string** %6529
  %6537 = getelementptr [1 x i8], [1 x i8]* @.str772, i32 0, i32 0
  %6538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %6537, i64 0)
  %6539 = call i1 @nyx_string_equals(%nyx_string* %6536, %nyx_string* %6538)
  %6540 = xor i1 %6539, true
  br i1 %6540, label %sc_and_rhs1185, label %sc_and_end1186
sc_and_rhs1185:
  %6541 = load %nyx_string*, %nyx_string** %6534
  %6542 = getelementptr [19 x i8], [19 x i8]* @.str773, i32 0, i32 0
  %6543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %6542, i64 18)
  %6544 = call %nyx_string* @nyx_string_concat(%nyx_string* %6541, %nyx_string* %6543)
  %6545 = call i8* @nyx_string_to_cstr(%nyx_string* %6544)
  %6546 = call i1 @nyx_file_exists(i8* %6545)
  store i1 %6546, i1* %6535
  br label %sc_and_end1186
sc_and_end1186:
  %6547 = load i1, i1* %6535
  br i1 %6547, label %then1187, label %else1188
then1187:
  %6548 = load %nyx_string*, %nyx_string** %6534
  store %nyx_string* %6548, %nyx_string** %6520
  br label %merge1189
else1188:
  br label %merge1189
merge1189:
  br label %merge1184
else1183:
  br label %merge1184
merge1184:
  %6549 = load %nyx_string*, %nyx_string** %6520
  %6550 = getelementptr [1 x i8], [1 x i8]* @.str774, i32 0, i32 0
  %6551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %6550, i64 0)
  %6552 = call i1 @nyx_string_equals(%nyx_string* %6549, %nyx_string* %6551)
  br i1 %6552, label %then1190, label %else1191
then1190:
  %6553 = getelementptr [14 x i8], [14 x i8]* @.str775, i32 0, i32 0
  %6554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %6553, i64 13)
  %6555 = call i8* @nyx_string_to_cstr(%nyx_string* %6554)
  %6556 = call i1 @nyx_file_exists(i8* %6555)
  br i1 %6556, label %then1193, label %else1194
then1193:
  %6557 = getelementptr [2 x i8], [2 x i8]* @.str776, i32 0, i32 0
  %6558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %6557, i64 1)
  store %nyx_string* %6558, %nyx_string** %6520
  br label %merge1195
else1194:
  br label %merge1195
merge1195:
  br label %merge1192
else1191:
  br label %merge1192
merge1192:
  %6559 = load %nyx_string*, %nyx_string** %6520
  %6560 = getelementptr [1 x i8], [1 x i8]* @.str777, i32 0, i32 0
  %6561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %6560, i64 0)
  %6562 = call i1 @nyx_string_equals(%nyx_string* %6559, %nyx_string* %6561)
  br i1 %6562, label %then1196, label %else1197
then1196:
  %6563 = getelementptr [56 x i8], [56 x i8]* @.str778, i32 0, i32 0
  %6564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %6563, i64 55)
  %6565 = call i8* @nyx_string_to_cstr(%nyx_string* %6564)
  call void @nyx_print_string(i8* %6565)
  ret i1 0
else1197:
  br label %merge1198
merge1198:
  %6566 = load %nyx_string*, %nyx_string** %6520
  %6567 = getelementptr [15 x i8], [15 x i8]* @.str779, i32 0, i32 0
  %6568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %6567, i64 14)
  %6569 = call %nyx_string* @nyx_string_concat(%nyx_string* %6566, %nyx_string* %6568)
  %6570 = alloca %nyx_string*
  store %nyx_string* %6569, %nyx_string** %6570
  %6571 = load %nyx_string*, %nyx_string** %6570
  %6572 = call i8* @nyx_string_to_cstr(%nyx_string* %6571)
  %6573 = call i1 @nyx_file_exists(i8* %6572)
  %6574 = xor i1 %6573, true
  br i1 %6574, label %then1199, label %else1200
then1199:
  %6575 = load %nyx_string*, %nyx_string** %6520
  %6576 = getelementptr [9 x i8], [9 x i8]* @.str780, i32 0, i32 0
  %6577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %6576, i64 8)
  %6578 = call %nyx_string* @nyx_string_concat(%nyx_string* %6575, %nyx_string* %6577)
  store %nyx_string* %6578, %nyx_string** %6570
  br label %merge1201
else1200:
  br label %merge1201
merge1201:
  %6579 = load %nyx_string*, %nyx_string** %6520
  %6580 = getelementptr [9 x i8], [9 x i8]* @.str781, i32 0, i32 0
  %6581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %6580, i64 8)
  %6582 = call %nyx_string* @nyx_string_concat(%nyx_string* %6579, %nyx_string* %6581)
  %6583 = alloca %nyx_string*
  store %nyx_string* %6582, %nyx_string** %6583
  %6584 = getelementptr [50 x i8], [50 x i8]* @.str782, i32 0, i32 0
  %6585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %6584, i64 49)
  %6586 = getelementptr [77 x i8], [77 x i8]* @.str783, i32 0, i32 0
  %6587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %6586, i64 76)
  %6588 = call %nyx_string* @nyx_string_concat(%nyx_string* %6585, %nyx_string* %6587)
  %6589 = getelementptr [89 x i8], [89 x i8]* @.str784, i32 0, i32 0
  %6590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %6589, i64 88)
  %6591 = call %nyx_string* @nyx_string_concat(%nyx_string* %6588, %nyx_string* %6590)
  %6592 = getelementptr [83 x i8], [83 x i8]* @.str785, i32 0, i32 0
  %6593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %6592, i64 82)
  %6594 = call %nyx_string* @nyx_string_concat(%nyx_string* %6591, %nyx_string* %6593)
  %6595 = getelementptr [65 x i8], [65 x i8]* @.str786, i32 0, i32 0
  %6596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %6595, i64 64)
  %6597 = call %nyx_string* @nyx_string_concat(%nyx_string* %6594, %nyx_string* %6596)
  %6598 = alloca %nyx_string*
  store %nyx_string* %6597, %nyx_string** %6598
  %6599 = getelementptr [15 x i8], [15 x i8]* @.str787, i32 0, i32 0
  %6600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %6599, i64 14)
  %6601 = call i8* @nyx_string_to_cstr(%nyx_string* %6600)
  %6602 = call %nyx_string* @nyx_getenv(i8* %6601)
  %6603 = alloca %nyx_string*
  store %nyx_string* %6602, %nyx_string** %6603
  %6604 = call %nyx_string* @rt_cache_sh()
  %6605 = getelementptr [8 x i8], [8 x i8]* @.str788, i32 0, i32 0
  %6606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %6605, i64 7)
  %6607 = call %nyx_string* @nyx_string_concat(%nyx_string* %6604, %nyx_string* %6606)
  %6608 = load %nyx_string*, %nyx_string** %6598
  %6609 = call %nyx_string* @nyx_string_concat(%nyx_string* %6607, %nyx_string* %6608)
  %6610 = getelementptr [3 x i8], [3 x i8]* @.str789, i32 0, i32 0
  %6611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %6610, i64 2)
  %6612 = call %nyx_string* @nyx_string_concat(%nyx_string* %6609, %nyx_string* %6611)
  %6613 = alloca %nyx_string*
  store %nyx_string* %6612, %nyx_string** %6613
  %6614 = load %nyx_string*, %nyx_string** %6613
  %6615 = getelementptr [17 x i8], [17 x i8]* @.str790, i32 0, i32 0
  %6616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %6615, i64 16)
  %6617 = call %nyx_string* @nyx_string_concat(%nyx_string* %6614, %nyx_string* %6616)
  %6618 = load %nyx_string*, %nyx_string** %6512
  %6619 = call %nyx_string* @nyx_string_concat(%nyx_string* %6617, %nyx_string* %6618)
  %6620 = getelementptr [3 x i8], [3 x i8]* @.str791, i32 0, i32 0
  %6621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %6620, i64 2)
  %6622 = call %nyx_string* @nyx_string_concat(%nyx_string* %6619, %nyx_string* %6621)
  %6623 = load %nyx_string*, %nyx_string** %6598
  %6624 = call %nyx_string* @nyx_string_concat(%nyx_string* %6622, %nyx_string* %6623)
  %6625 = getelementptr [31 x i8], [31 x i8]* @.str792, i32 0, i32 0
  %6626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %6625, i64 30)
  %6627 = call %nyx_string* @nyx_string_concat(%nyx_string* %6624, %nyx_string* %6626)
  store %nyx_string* %6627, %nyx_string** %6613
  %6628 = alloca i1
  store i1 false, i1* %6628
  %6629 = load %nyx_string*, %nyx_string** %6603
  %6630 = getelementptr [1 x i8], [1 x i8]* @.str793, i32 0, i32 0
  %6631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %6630, i64 0)
  %6632 = call i1 @nyx_string_equals(%nyx_string* %6629, %nyx_string* %6631)
  %6633 = xor i1 %6632, true
  br i1 %6633, label %sc_and_rhs1202, label %sc_and_end1203
sc_and_rhs1202:
  %6634 = load %nyx_string*, %nyx_string** %6603
  %6635 = call i8* @nyx_string_to_cstr(%nyx_string* %6634)
  %6636 = call i1 @nyx_file_exists(i8* %6635)
  store i1 %6636, i1* %6628
  br label %sc_and_end1203
sc_and_end1203:
  %6637 = load i1, i1* %6628
  br i1 %6637, label %then1204, label %else1205
then1204:
  %6638 = load %nyx_string*, %nyx_string** %6603
  %6639 = getelementptr [2 x i8], [2 x i8]* @.str794, i32 0, i32 0
  %6640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %6639, i64 1)
  %6641 = call i1 @nyx_string_starts_with(%nyx_string* %6638, %nyx_string* %6640)
  %6642 = xor i1 %6641, true
  br i1 %6642, label %then1207, label %else1208
then1207:
  %6643 = call %nyx_string* @nyx_getcwd()
  %6644 = getelementptr [2 x i8], [2 x i8]* @.str795, i32 0, i32 0
  %6645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %6644, i64 1)
  %6646 = call %nyx_string* @nyx_string_concat(%nyx_string* %6643, %nyx_string* %6645)
  %6647 = load %nyx_string*, %nyx_string** %6603
  %6648 = call %nyx_string* @nyx_string_concat(%nyx_string* %6646, %nyx_string* %6647)
  store %nyx_string* %6648, %nyx_string** %6603
  br label %merge1209
else1208:
  br label %merge1209
merge1209:
  %6649 = getelementptr [9 x i8], [9 x i8]* @.str796, i32 0, i32 0
  %6650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %6649, i64 8)
  %6651 = load %nyx_string*, %nyx_string** %6603
  %6652 = call %nyx_string* @nyx_string_concat(%nyx_string* %6650, %nyx_string* %6651)
  %6653 = getelementptr [4 x i8], [4 x i8]* @.str797, i32 0, i32 0
  %6654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %6653, i64 3)
  %6655 = call %nyx_string* @nyx_string_concat(%nyx_string* %6652, %nyx_string* %6654)
  store %nyx_string* %6655, %nyx_string** %6613
  br label %merge1206
else1205:
  br label %merge1206
merge1206:
  %6656 = getelementptr [3 x i8], [3 x i8]* @.str798, i32 0, i32 0
  %6657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %6656, i64 2)
  %6658 = getelementptr [13 x i8], [13 x i8]* @.str799, i32 0, i32 0
  %6659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %6658, i64 12)
  %6660 = call %nyx_string* @nyx_string_concat(%nyx_string* %6657, %nyx_string* %6659)
  store %nyx_string* %6660, %nyx_string** %6598
  %6661 = getelementptr [20 x i8], [20 x i8]* @.str800, i32 0, i32 0
  %6662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %6661, i64 19)
  %6663 = call %nyx_string* @pila_compilador_sh()
  %6664 = call %nyx_string* @nyx_string_concat(%nyx_string* %6662, %nyx_string* %6663)
  %6665 = call %nyx_string* @pila_compilador_pista_sh()
  %6666 = call %nyx_string* @nyx_string_concat(%nyx_string* %6664, %nyx_string* %6665)
  %6667 = alloca %nyx_string*
  store %nyx_string* %6666, %nyx_string** %6667
  %6668 = getelementptr [1 x i8], [1 x i8]* @.str801, i32 0, i32 0
  %6669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %6668, i64 0)
  %6670 = alloca %nyx_string*
  store %nyx_string* %6669, %nyx_string** %6670
  %6671 = getelementptr [1 x i8], [1 x i8]* @.str802, i32 0, i32 0
  %6672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %6671, i64 0)
  %6673 = alloca %nyx_string*
  store %nyx_string* %6672, %nyx_string** %6673
  %6674 = alloca i1
  store i1 false, i1* %6674
  %6675 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6676 = load { i64, i8* }*, { i64, i8* }** %6675
  %6677 = call i64 @nyx_array_length({ i64, i8* }* %6676)
  %6678 = icmp sgt i64 %6677, 0
  br i1 %6678, label %sc_and_rhs1210, label %sc_and_end1211
sc_and_rhs1210:
  %6679 = load %nyx_string*, %nyx_string** %6417
  %6680 = getelementptr [12 x i8], [12 x i8]* @.str803, i32 0, i32 0
  %6681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %6680, i64 11)
  %6682 = call i1 @nyx_string_equals(%nyx_string* %6679, %nyx_string* %6681)
  %6683 = xor i1 %6682, true
  store i1 %6683, i1* %6674
  br label %sc_and_end1211
sc_and_end1211:
  %6684 = load i1, i1* %6674
  br i1 %6684, label %then1212, label %else1213
then1212:
  %6685 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %6686 = load %nyx_string*, %nyx_string** %6520
  %6687 = load %nyx_string*, %nyx_string** %6570
  %6688 = load %nyx_string*, %nyx_string** %6512
  %6689 = load %nyx_string*, %nyx_string** %6471
  %6690 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %6685, %nyx_string* %6686, %nyx_string* %6687, %nyx_string* %6688, %nyx_string* %6689)
  store %nyx_string* %6690, %nyx_string** %6670
  %6691 = getelementptr [18 x i8], [18 x i8]* @.str804, i32 0, i32 0
  %6692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %6691, i64 17)
  %6693 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6694 = load { i64, i8* }*, { i64, i8* }** %6693
  %6695 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %6696 = load { i64, i8* }*, { i64, i8* }** %6695
  %6697 = getelementptr [2 x i8], [2 x i8]* @.str805, i32 0, i32 0
  %6698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %6697, i64 1)
  %6699 = call %nyx_string* @nyx_string_join({ i64, i8* }* %6696, %nyx_string* %6698)
  %6700 = call %nyx_string* @nyx_string_concat(%nyx_string* %6692, %nyx_string* %6699)
  %6701 = getelementptr [3 x i8], [3 x i8]* @.str806, i32 0, i32 0
  %6702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %6701, i64 2)
  %6703 = call %nyx_string* @nyx_string_concat(%nyx_string* %6700, %nyx_string* %6702)
  store %nyx_string* %6703, %nyx_string** %6673
  br label %merge1214
else1213:
  br label %merge1214
merge1214:
  %6704 = load %nyx_string*, %nyx_string** %6613
  %6705 = load %nyx_string*, %nyx_string** %6670
  %6706 = call %nyx_string* @nyx_string_concat(%nyx_string* %6704, %nyx_string* %6705)
  store %nyx_string* %6706, %nyx_string** %6670
  %6707 = getelementptr [13 x i8], [13 x i8]* @.str807, i32 0, i32 0
  %6708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %6707, i64 12)
  %6709 = load %nyx_string*, %nyx_string** %6471
  %6710 = call %nyx_string* @nyx_string_concat(%nyx_string* %6708, %nyx_string* %6709)
  %6711 = load %nyx_string*, %nyx_string** %6673
  %6712 = call %nyx_string* @nyx_string_concat(%nyx_string* %6710, %nyx_string* %6711)
  %6713 = alloca %nyx_string*
  store %nyx_string* %6712, %nyx_string** %6713
  %6714 = load %nyx_string*, %nyx_string** %6667
  %6715 = getelementptr [19 x i8], [19 x i8]* @.str808, i32 0, i32 0
  %6716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %6715, i64 18)
  %6717 = call %nyx_string* @nyx_string_concat(%nyx_string* %6714, %nyx_string* %6716)
  %6718 = getelementptr [5 x i8], [5 x i8]* @.str809, i32 0, i32 0
  %6719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %6718, i64 4)
  %6720 = call %nyx_string* @nyx_string_concat(%nyx_string* %6717, %nyx_string* %6719)
  %6721 = load %nyx_string*, %nyx_string** %6583
  %6722 = call %nyx_string* @nyx_string_concat(%nyx_string* %6720, %nyx_string* %6721)
  %6723 = getelementptr [3 x i8], [3 x i8]* @.str810, i32 0, i32 0
  %6724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %6723, i64 2)
  %6725 = call %nyx_string* @nyx_string_concat(%nyx_string* %6722, %nyx_string* %6724)
  %6726 = getelementptr [43 x i8], [43 x i8]* @.str811, i32 0, i32 0
  %6727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %6726, i64 42)
  %6728 = call %nyx_string* @nyx_string_concat(%nyx_string* %6725, %nyx_string* %6727)
  %6729 = getelementptr [37 x i8], [37 x i8]* @.str812, i32 0, i32 0
  %6730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %6729, i64 36)
  %6731 = call %nyx_string* @nyx_string_concat(%nyx_string* %6728, %nyx_string* %6730)
  %6732 = getelementptr [17 x i8], [17 x i8]* @.str813, i32 0, i32 0
  %6733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %6732, i64 16)
  %6734 = call %nyx_string* @nyx_string_concat(%nyx_string* %6731, %nyx_string* %6733)
  %6735 = getelementptr [38 x i8], [38 x i8]* @.str814, i32 0, i32 0
  %6736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %6735, i64 37)
  %6737 = call %nyx_string* @nyx_string_concat(%nyx_string* %6734, %nyx_string* %6736)
  %6738 = getelementptr [17 x i8], [17 x i8]* @.str815, i32 0, i32 0
  %6739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %6738, i64 16)
  %6740 = call %nyx_string* @nyx_string_concat(%nyx_string* %6737, %nyx_string* %6739)
  %6741 = getelementptr [15 x i8], [15 x i8]* @.str816, i32 0, i32 0
  %6742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %6741, i64 14)
  %6743 = call %nyx_string* @nyx_string_concat(%nyx_string* %6740, %nyx_string* %6742)
  %6744 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6745 = load %nyx_string*, %nyx_string** %6744
  %6746 = call %nyx_string* @nyx_string_concat(%nyx_string* %6743, %nyx_string* %6745)
  %6747 = getelementptr [12 x i8], [12 x i8]* @.str817, i32 0, i32 0
  %6748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %6747, i64 11)
  %6749 = call %nyx_string* @nyx_string_concat(%nyx_string* %6746, %nyx_string* %6748)
  %6750 = getelementptr [5 x i8], [5 x i8]* @.str818, i32 0, i32 0
  %6751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %6750, i64 4)
  %6752 = call %nyx_string* @nyx_string_concat(%nyx_string* %6749, %nyx_string* %6751)
  %6753 = load %nyx_string*, %nyx_string** %6520
  %6754 = call %nyx_string* @nyx_string_concat(%nyx_string* %6752, %nyx_string* %6753)
  %6755 = getelementptr [3 x i8], [3 x i8]* @.str819, i32 0, i32 0
  %6756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %6755, i64 2)
  %6757 = call %nyx_string* @nyx_string_concat(%nyx_string* %6754, %nyx_string* %6756)
  %6758 = getelementptr [51 x i8], [51 x i8]* @.str820, i32 0, i32 0
  %6759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %6758, i64 50)
  %6760 = call %nyx_string* @nyx_string_concat(%nyx_string* %6757, %nyx_string* %6759)
  %6761 = load %nyx_string*, %nyx_string** %6520
  %6762 = call %nyx_string* @nyx_string_concat(%nyx_string* %6760, %nyx_string* %6761)
  %6763 = getelementptr [35 x i8], [35 x i8]* @.str821, i32 0, i32 0
  %6764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %6763, i64 34)
  %6765 = call %nyx_string* @nyx_string_concat(%nyx_string* %6762, %nyx_string* %6764)
  %6766 = load %nyx_string*, %nyx_string** %6670
  %6767 = call %nyx_string* @nyx_string_concat(%nyx_string* %6765, %nyx_string* %6766)
  %6768 = load %nyx_string*, %nyx_string** %6713
  %6769 = call %nyx_string* @nyx_string_concat(%nyx_string* %6767, %nyx_string* %6768)
  %6770 = getelementptr [35 x i8], [35 x i8]* @.str822, i32 0, i32 0
  %6771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %6770, i64 34)
  %6772 = call %nyx_string* @nyx_string_concat(%nyx_string* %6769, %nyx_string* %6771)
  %6773 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6774 = load %nyx_string*, %nyx_string** %6773
  %6775 = call %nyx_string* @nyx_string_concat(%nyx_string* %6772, %nyx_string* %6774)
  %6776 = getelementptr [32 x i8], [32 x i8]* @.str823, i32 0, i32 0
  %6777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %6776, i64 31)
  %6778 = call %nyx_string* @nyx_string_concat(%nyx_string* %6775, %nyx_string* %6777)
  %6779 = load %nyx_string*, %nyx_string** %6570
  %6780 = call %nyx_string* @nyx_string_concat(%nyx_string* %6778, %nyx_string* %6779)
  %6781 = getelementptr [19 x i8], [19 x i8]* @.str824, i32 0, i32 0
  %6782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %6781, i64 18)
  %6783 = call %nyx_string* @nyx_string_concat(%nyx_string* %6780, %nyx_string* %6782)
  %6784 = getelementptr [93 x i8], [93 x i8]* @.str825, i32 0, i32 0
  %6785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %6784, i64 92)
  %6786 = call %nyx_string* @nyx_string_concat(%nyx_string* %6783, %nyx_string* %6785)
  %6787 = getelementptr [34 x i8], [34 x i8]* @.str826, i32 0, i32 0
  %6788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %6787, i64 33)
  %6789 = call %nyx_string* @nyx_string_concat(%nyx_string* %6786, %nyx_string* %6788)
  %6790 = load %nyx_string*, %nyx_string** %6497
  %6791 = call %nyx_string* @nyx_string_concat(%nyx_string* %6789, %nyx_string* %6790)
  %6792 = getelementptr [7 x i8], [7 x i8]* @.str827, i32 0, i32 0
  %6793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %6792, i64 6)
  %6794 = call %nyx_string* @nyx_string_concat(%nyx_string* %6791, %nyx_string* %6793)
  %6795 = load %nyx_string*, %nyx_string** %6512
  %6796 = call %nyx_string* @nyx_string_concat(%nyx_string* %6794, %nyx_string* %6795)
  %6797 = getelementptr [22 x i8], [22 x i8]* @.str828, i32 0, i32 0
  %6798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %6797, i64 21)
  %6799 = call %nyx_string* @nyx_string_concat(%nyx_string* %6796, %nyx_string* %6798)
  %6800 = load %nyx_string*, %nyx_string** %6598
  %6801 = call %nyx_string* @nyx_string_concat(%nyx_string* %6799, %nyx_string* %6800)
  %6802 = getelementptr [44 x i8], [44 x i8]* @.str829, i32 0, i32 0
  %6803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %6802, i64 43)
  %6804 = call %nyx_string* @nyx_string_concat(%nyx_string* %6801, %nyx_string* %6803)
  %6805 = getelementptr [15 x i8], [15 x i8]* @.str830, i32 0, i32 0
  %6806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %6805, i64 14)
  %6807 = call %nyx_string* @nyx_string_concat(%nyx_string* %6804, %nyx_string* %6806)
  %6808 = load %nyx_string*, %nyx_string** %6494
  %6809 = call %nyx_string* @nyx_string_concat(%nyx_string* %6807, %nyx_string* %6808)
  %6810 = getelementptr [13 x i8], [13 x i8]* @.str831, i32 0, i32 0
  %6811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %6810, i64 12)
  %6812 = call %nyx_string* @nyx_string_concat(%nyx_string* %6809, %nyx_string* %6811)
  %6813 = getelementptr [44 x i8], [44 x i8]* @.str832, i32 0, i32 0
  %6814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %6813, i64 43)
  %6815 = call %nyx_string* @nyx_string_concat(%nyx_string* %6812, %nyx_string* %6814)
  %6816 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6817 = load %nyx_string*, %nyx_string** %6816
  %6818 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %6817)
  %6819 = call %nyx_string* @nyx_string_concat(%nyx_string* %6815, %nyx_string* %6818)
  %6820 = getelementptr [27 x i8], [27 x i8]* @.str833, i32 0, i32 0
  %6821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %6820, i64 26)
  %6822 = call %nyx_string* @nyx_string_concat(%nyx_string* %6819, %nyx_string* %6821)
  %6823 = getelementptr [18 x i8], [18 x i8]* @.str834, i32 0, i32 0
  %6824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %6823, i64 17)
  %6825 = call %nyx_string* @nyx_string_concat(%nyx_string* %6822, %nyx_string* %6824)
  %6826 = load %nyx_string*, %nyx_string** %6494
  %6827 = call %nyx_string* @nyx_string_concat(%nyx_string* %6825, %nyx_string* %6826)
  %6828 = getelementptr [3 x i8], [3 x i8]* @.str835, i32 0, i32 0
  %6829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %6828, i64 2)
  %6830 = call %nyx_string* @nyx_string_concat(%nyx_string* %6827, %nyx_string* %6829)
  %6831 = alloca %nyx_string*
  store %nyx_string* %6830, %nyx_string** %6831
  %6832 = alloca i1
  store i1 false, i1* %6832
  %6833 = load %nyx_string*, %nyx_string** %6417
  %6834 = getelementptr [1 x i8], [1 x i8]* @.str836, i32 0, i32 0
  %6835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %6834, i64 0)
  %6836 = call i1 @nyx_string_equals(%nyx_string* %6833, %nyx_string* %6835)
  %6837 = xor i1 %6836, true
  br i1 %6837, label %sc_and_rhs1215, label %sc_and_end1216
sc_and_rhs1215:
  %6838 = load %nyx_string*, %nyx_string** %6417
  %6839 = getelementptr [12 x i8], [12 x i8]* @.str837, i32 0, i32 0
  %6840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %6839, i64 11)
  %6841 = call i1 @nyx_string_equals(%nyx_string* %6838, %nyx_string* %6840)
  %6842 = xor i1 %6841, true
  store i1 %6842, i1* %6832
  br label %sc_and_end1216
sc_and_end1216:
  %6843 = load i1, i1* %6832
  br i1 %6843, label %then1217, label %else1218
then1217:
  %6844 = alloca i1
  store i1 false, i1* %6844
  %6845 = load %nyx_string*, %nyx_string** %6417
  %6846 = getelementptr [23 x i8], [23 x i8]* @.str838, i32 0, i32 0
  %6847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %6846, i64 22)
  %6848 = call i1 @nyx_string_equals(%nyx_string* %6845, %nyx_string* %6847)
  %6849 = xor i1 %6848, true
  br i1 %6849, label %sc_and_rhs1220, label %sc_and_end1221
sc_and_rhs1220:
  %6850 = load %nyx_string*, %nyx_string** %6417
  %6851 = getelementptr [24 x i8], [24 x i8]* @.str839, i32 0, i32 0
  %6852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %6851, i64 23)
  %6853 = call i1 @nyx_string_equals(%nyx_string* %6850, %nyx_string* %6852)
  %6854 = xor i1 %6853, true
  store i1 %6854, i1* %6844
  br label %sc_and_end1221
sc_and_end1221:
  %6855 = load i1, i1* %6844
  br i1 %6855, label %then1222, label %else1223
then1222:
  %6856 = getelementptr [28 x i8], [28 x i8]* @.str840, i32 0, i32 0
  %6857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %6856, i64 27)
  %6858 = load %nyx_string*, %nyx_string** %6417
  %6859 = call %nyx_string* @nyx_string_concat(%nyx_string* %6857, %nyx_string* %6858)
  %6860 = call i8* @nyx_string_to_cstr(%nyx_string* %6859)
  call void @nyx_print_string(i8* %6860)
  %6861 = getelementptr [83 x i8], [83 x i8]* @.str841, i32 0, i32 0
  %6862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %6861, i64 82)
  %6863 = call i8* @nyx_string_to_cstr(%nyx_string* %6862)
  call void @nyx_print_string(i8* %6863)
  %6864 = getelementptr [52 x i8], [52 x i8]* @.str842, i32 0, i32 0
  %6865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %6864, i64 51)
  %6866 = call i8* @nyx_string_to_cstr(%nyx_string* %6865)
  call void @nyx_print_string(i8* %6866)
  ret i1 0
else1223:
  br label %merge1224
merge1224:
  br label %merge1219
else1218:
  br label %merge1219
merge1219:
  %6867 = load %nyx_string*, %nyx_string** %6831
  %6868 = alloca %nyx_string*
  store %nyx_string* %6867, %nyx_string** %6868
  %6869 = load %nyx_string*, %nyx_string** %6417
  %6870 = getelementptr [12 x i8], [12 x i8]* @.str843, i32 0, i32 0
  %6871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %6870, i64 11)
  %6872 = call i1 @nyx_string_equals(%nyx_string* %6869, %nyx_string* %6871)
  br i1 %6872, label %then1225, label %else1226
then1225:
  %6873 = getelementptr [20 x i8], [20 x i8]* @.str844, i32 0, i32 0
  %6874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %6873, i64 19)
  %6875 = getelementptr [19 x i8], [19 x i8]* @.str845, i32 0, i32 0
  %6876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %6875, i64 18)
  %6877 = call %nyx_string* @nyx_string_concat(%nyx_string* %6874, %nyx_string* %6876)
  %6878 = getelementptr [5 x i8], [5 x i8]* @.str846, i32 0, i32 0
  %6879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %6878, i64 4)
  %6880 = call %nyx_string* @nyx_string_concat(%nyx_string* %6877, %nyx_string* %6879)
  %6881 = load %nyx_string*, %nyx_string** %6583
  %6882 = call %nyx_string* @nyx_string_concat(%nyx_string* %6880, %nyx_string* %6881)
  %6883 = getelementptr [3 x i8], [3 x i8]* @.str847, i32 0, i32 0
  %6884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %6883, i64 2)
  %6885 = call %nyx_string* @nyx_string_concat(%nyx_string* %6882, %nyx_string* %6884)
  %6886 = getelementptr [11 x i8], [11 x i8]* @.str848, i32 0, i32 0
  %6887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %6886, i64 10)
  %6888 = call %nyx_string* @nyx_string_concat(%nyx_string* %6885, %nyx_string* %6887)
  %6889 = getelementptr [23 x i8], [23 x i8]* @.str849, i32 0, i32 0
  %6890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %6889, i64 22)
  %6891 = call %nyx_string* @nyx_string_concat(%nyx_string* %6888, %nyx_string* %6890)
  %6892 = getelementptr [43 x i8], [43 x i8]* @.str850, i32 0, i32 0
  %6893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %6892, i64 42)
  %6894 = call %nyx_string* @nyx_string_concat(%nyx_string* %6891, %nyx_string* %6893)
  %6895 = getelementptr [37 x i8], [37 x i8]* @.str851, i32 0, i32 0
  %6896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %6895, i64 36)
  %6897 = call %nyx_string* @nyx_string_concat(%nyx_string* %6894, %nyx_string* %6896)
  %6898 = getelementptr [17 x i8], [17 x i8]* @.str852, i32 0, i32 0
  %6899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %6898, i64 16)
  %6900 = call %nyx_string* @nyx_string_concat(%nyx_string* %6897, %nyx_string* %6899)
  %6901 = getelementptr [38 x i8], [38 x i8]* @.str853, i32 0, i32 0
  %6902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %6901, i64 37)
  %6903 = call %nyx_string* @nyx_string_concat(%nyx_string* %6900, %nyx_string* %6902)
  %6904 = getelementptr [17 x i8], [17 x i8]* @.str854, i32 0, i32 0
  %6905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %6904, i64 16)
  %6906 = call %nyx_string* @nyx_string_concat(%nyx_string* %6903, %nyx_string* %6905)
  %6907 = getelementptr [163 x i8], [163 x i8]* @.str855, i32 0, i32 0
  %6908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %6907, i64 162)
  %6909 = call %nyx_string* @nyx_string_concat(%nyx_string* %6906, %nyx_string* %6908)
  %6910 = getelementptr [15 x i8], [15 x i8]* @.str856, i32 0, i32 0
  %6911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %6910, i64 14)
  %6912 = call %nyx_string* @nyx_string_concat(%nyx_string* %6909, %nyx_string* %6911)
  %6913 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6914 = load %nyx_string*, %nyx_string** %6913
  %6915 = call %nyx_string* @nyx_string_concat(%nyx_string* %6912, %nyx_string* %6914)
  %6916 = getelementptr [12 x i8], [12 x i8]* @.str857, i32 0, i32 0
  %6917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %6916, i64 11)
  %6918 = call %nyx_string* @nyx_string_concat(%nyx_string* %6915, %nyx_string* %6917)
  %6919 = getelementptr [5 x i8], [5 x i8]* @.str858, i32 0, i32 0
  %6920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %6919, i64 4)
  %6921 = call %nyx_string* @nyx_string_concat(%nyx_string* %6918, %nyx_string* %6920)
  %6922 = load %nyx_string*, %nyx_string** %6520
  %6923 = call %nyx_string* @nyx_string_concat(%nyx_string* %6921, %nyx_string* %6922)
  %6924 = getelementptr [3 x i8], [3 x i8]* @.str859, i32 0, i32 0
  %6925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %6924, i64 2)
  %6926 = call %nyx_string* @nyx_string_concat(%nyx_string* %6923, %nyx_string* %6925)
  %6927 = getelementptr [70 x i8], [70 x i8]* @.str860, i32 0, i32 0
  %6928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %6927, i64 69)
  %6929 = call %nyx_string* @nyx_string_concat(%nyx_string* %6926, %nyx_string* %6928)
  %6930 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6931 = load %nyx_string*, %nyx_string** %6930
  %6932 = call %nyx_string* @nyx_string_concat(%nyx_string* %6929, %nyx_string* %6931)
  %6933 = getelementptr [32 x i8], [32 x i8]* @.str861, i32 0, i32 0
  %6934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %6933, i64 31)
  %6935 = call %nyx_string* @nyx_string_concat(%nyx_string* %6932, %nyx_string* %6934)
  %6936 = load %nyx_string*, %nyx_string** %6570
  %6937 = call %nyx_string* @nyx_string_concat(%nyx_string* %6935, %nyx_string* %6936)
  %6938 = getelementptr [17 x i8], [17 x i8]* @.str862, i32 0, i32 0
  %6939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %6938, i64 16)
  %6940 = call %nyx_string* @nyx_string_concat(%nyx_string* %6937, %nyx_string* %6939)
  %6941 = getelementptr [71 x i8], [71 x i8]* @.str863, i32 0, i32 0
  %6942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %6941, i64 70)
  %6943 = call %nyx_string* @nyx_string_concat(%nyx_string* %6940, %nyx_string* %6942)
  %6944 = getelementptr [24 x i8], [24 x i8]* @.str864, i32 0, i32 0
  %6945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %6944, i64 23)
  %6946 = call %nyx_string* @nyx_string_concat(%nyx_string* %6943, %nyx_string* %6945)
  %6947 = getelementptr [2 x i8], [2 x i8]* @.str865, i32 0, i32 0
  %6948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %6947, i64 1)
  %6949 = call %nyx_string* @nyx_string_concat(%nyx_string* %6946, %nyx_string* %6948)
  %6950 = getelementptr [76 x i8], [76 x i8]* @.str866, i32 0, i32 0
  %6951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %6950, i64 75)
  %6952 = call %nyx_string* @nyx_string_concat(%nyx_string* %6949, %nyx_string* %6951)
  %6953 = getelementptr [98 x i8], [98 x i8]* @.str867, i32 0, i32 0
  %6954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %6953, i64 97)
  %6955 = call %nyx_string* @nyx_string_concat(%nyx_string* %6952, %nyx_string* %6954)
  %6956 = getelementptr [41 x i8], [41 x i8]* @.str868, i32 0, i32 0
  %6957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %6956, i64 40)
  %6958 = call %nyx_string* @nyx_string_concat(%nyx_string* %6955, %nyx_string* %6957)
  %6959 = getelementptr [64 x i8], [64 x i8]* @.str869, i32 0, i32 0
  %6960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %6959, i64 63)
  %6961 = call %nyx_string* @nyx_string_concat(%nyx_string* %6958, %nyx_string* %6960)
  %6962 = getelementptr [56 x i8], [56 x i8]* @.str870, i32 0, i32 0
  %6963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %6962, i64 55)
  %6964 = call %nyx_string* @nyx_string_concat(%nyx_string* %6961, %nyx_string* %6963)
  %6965 = getelementptr [12 x i8], [12 x i8]* @.str871, i32 0, i32 0
  %6966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %6965, i64 11)
  %6967 = call %nyx_string* @nyx_string_concat(%nyx_string* %6964, %nyx_string* %6966)
  %6968 = getelementptr [34 x i8], [34 x i8]* @.str872, i32 0, i32 0
  %6969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %6968, i64 33)
  %6970 = call %nyx_string* @nyx_string_concat(%nyx_string* %6967, %nyx_string* %6969)
  %6971 = load %nyx_string*, %nyx_string** %6484
  %6972 = call %nyx_string* @nyx_string_concat(%nyx_string* %6970, %nyx_string* %6971)
  %6973 = getelementptr [18 x i8], [18 x i8]* @.str873, i32 0, i32 0
  %6974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %6973, i64 17)
  %6975 = call %nyx_string* @nyx_string_concat(%nyx_string* %6972, %nyx_string* %6974)
  %6976 = getelementptr [49 x i8], [49 x i8]* @.str874, i32 0, i32 0
  %6977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %6976, i64 48)
  %6978 = call %nyx_string* @nyx_string_concat(%nyx_string* %6975, %nyx_string* %6977)
  %6979 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6980 = load %nyx_string*, %nyx_string** %6979
  %6981 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %6980)
  %6982 = call %nyx_string* @nyx_string_concat(%nyx_string* %6978, %nyx_string* %6981)
  %6983 = getelementptr [27 x i8], [27 x i8]* @.str875, i32 0, i32 0
  %6984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %6983, i64 26)
  %6985 = call %nyx_string* @nyx_string_concat(%nyx_string* %6982, %nyx_string* %6984)
  store %nyx_string* %6985, %nyx_string** %6868
  %6986 = load %nyx_string*, %nyx_string** %6868
  %6987 = getelementptr [95 x i8], [95 x i8]* @.str876, i32 0, i32 0
  %6988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %6987, i64 94)
  %6989 = call %nyx_string* @nyx_string_concat(%nyx_string* %6986, %nyx_string* %6988)
  %6990 = getelementptr [24 x i8], [24 x i8]* @.str877, i32 0, i32 0
  %6991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %6990, i64 23)
  %6992 = call %nyx_string* @nyx_string_concat(%nyx_string* %6989, %nyx_string* %6991)
  %6993 = getelementptr [10 x i8], [10 x i8]* @.str878, i32 0, i32 0
  %6994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %6993, i64 9)
  %6995 = call %nyx_string* @nyx_string_concat(%nyx_string* %6992, %nyx_string* %6994)
  %6996 = getelementptr [49 x i8], [49 x i8]* @.str879, i32 0, i32 0
  %6997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %6996, i64 48)
  %6998 = call %nyx_string* @nyx_string_concat(%nyx_string* %6995, %nyx_string* %6997)
  %6999 = getelementptr [207 x i8], [207 x i8]* @.str880, i32 0, i32 0
  %7000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %6999, i64 206)
  %7001 = call %nyx_string* @nyx_string_concat(%nyx_string* %6998, %nyx_string* %7000)
  %7002 = getelementptr [41 x i8], [41 x i8]* @.str881, i32 0, i32 0
  %7003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %7002, i64 40)
  %7004 = call %nyx_string* @nyx_string_concat(%nyx_string* %7001, %nyx_string* %7003)
  %7005 = load %nyx_string*, %nyx_string** %6484
  %7006 = call %nyx_string* @nyx_string_concat(%nyx_string* %7004, %nyx_string* %7005)
  %7007 = getelementptr [58 x i8], [58 x i8]* @.str882, i32 0, i32 0
  %7008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %7007, i64 57)
  %7009 = call %nyx_string* @nyx_string_concat(%nyx_string* %7006, %nyx_string* %7008)
  %7010 = getelementptr [34 x i8], [34 x i8]* @.str883, i32 0, i32 0
  %7011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %7010, i64 33)
  %7012 = call %nyx_string* @nyx_string_concat(%nyx_string* %7009, %nyx_string* %7011)
  %7013 = load %nyx_string*, %nyx_string** %6484
  %7014 = call %nyx_string* @nyx_string_concat(%nyx_string* %7012, %nyx_string* %7013)
  %7015 = getelementptr [18 x i8], [18 x i8]* @.str884, i32 0, i32 0
  %7016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %7015, i64 17)
  %7017 = call %nyx_string* @nyx_string_concat(%nyx_string* %7014, %nyx_string* %7016)
  %7018 = getelementptr [78 x i8], [78 x i8]* @.str885, i32 0, i32 0
  %7019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %7018, i64 77)
  %7020 = call %nyx_string* @nyx_string_concat(%nyx_string* %7017, %nyx_string* %7019)
  %7021 = getelementptr [4 x i8], [4 x i8]* @.str886, i32 0, i32 0
  %7022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %7021, i64 3)
  %7023 = call %nyx_string* @nyx_string_concat(%nyx_string* %7020, %nyx_string* %7022)
  %7024 = getelementptr [32 x i8], [32 x i8]* @.str887, i32 0, i32 0
  %7025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %7024, i64 31)
  %7026 = call %nyx_string* @nyx_string_concat(%nyx_string* %7023, %nyx_string* %7025)
  %7027 = load %nyx_string*, %nyx_string** %6484
  %7028 = call %nyx_string* @nyx_string_concat(%nyx_string* %7026, %nyx_string* %7027)
  %7029 = getelementptr [41 x i8], [41 x i8]* @.str888, i32 0, i32 0
  %7030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %7029, i64 40)
  %7031 = call %nyx_string* @nyx_string_concat(%nyx_string* %7028, %nyx_string* %7030)
  %7032 = load %nyx_string*, %nyx_string** %6484
  %7033 = call %nyx_string* @nyx_string_concat(%nyx_string* %7031, %nyx_string* %7032)
  %7034 = getelementptr [9 x i8], [9 x i8]* @.str889, i32 0, i32 0
  %7035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %7034, i64 8)
  %7036 = call %nyx_string* @nyx_string_concat(%nyx_string* %7033, %nyx_string* %7035)
  store %nyx_string* %7036, %nyx_string** %6868
  br label %merge1227
else1226:
  br label %merge1227
merge1227:
  %7037 = getelementptr [16 x i8], [16 x i8]* @.str890, i32 0, i32 0
  %7038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %7037, i64 15)
  %7039 = call i64 @nyx_getpid()
  %7040 = call %nyx_string* @nyx_string_from_int(i64 %7039)
  %7041 = call %nyx_string* @nyx_string_concat(%nyx_string* %7038, %nyx_string* %7040)
  %7042 = getelementptr [4 x i8], [4 x i8]* @.str891, i32 0, i32 0
  %7043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %7042, i64 3)
  %7044 = call %nyx_string* @nyx_string_concat(%nyx_string* %7041, %nyx_string* %7043)
  %7045 = alloca %nyx_string*
  store %nyx_string* %7044, %nyx_string** %7045
  %7046 = load %nyx_string*, %nyx_string** %7045
  %7047 = load %nyx_string*, %nyx_string** %6868
  %7048 = call i8* @nyx_string_to_cstr(%nyx_string* %7046)
  %7049 = call i1 @nyx_write_file_safe(i8* %7048, %nyx_string* %7047)
  %7050 = getelementptr [7 x i8], [7 x i8]* @.str892, i32 0, i32 0
  %7051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %7050, i64 6)
  %7052 = load %nyx_string*, %nyx_string** %7045
  %7053 = call %nyx_string* @nyx_string_concat(%nyx_string* %7051, %nyx_string* %7052)
  %7054 = getelementptr [22 x i8], [22 x i8]* @.str893, i32 0, i32 0
  %7055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %7054, i64 21)
  %7056 = call %nyx_string* @nyx_string_concat(%nyx_string* %7053, %nyx_string* %7055)
  %7057 = load %nyx_string*, %nyx_string** %7045
  %7058 = call %nyx_string* @nyx_string_concat(%nyx_string* %7056, %nyx_string* %7057)
  %7059 = getelementptr [16 x i8], [16 x i8]* @.str894, i32 0, i32 0
  %7060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %7059, i64 15)
  %7061 = call %nyx_string* @nyx_string_concat(%nyx_string* %7058, %nyx_string* %7060)
  %7062 = call i8* @nyx_string_to_cstr(%nyx_string* %7061)
  %7063 = call i64 @nyx_exec_code(i8* %7062)
  %7064 = alloca i64
  store i64 %7063, i64* %7064
  %7065 = load i64, i64* %7064
  %7066 = icmp eq i64 %7065, 0
  ret i1 %7066
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %7067 = getelementptr [10 x i8], [10 x i8]* @.str895, i32 0, i32 0
  %7068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %7067, i64 9)
  %7069 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %7070 = load %nyx_string*, %nyx_string** %7069
  %7071 = call %nyx_string* @nyx_string_concat(%nyx_string* %7068, %nyx_string* %7070)
  %7072 = call i8* @nyx_string_to_cstr(%nyx_string* %7071)
  call void @nyx_print_string(i8* %7072)
  %7073 = getelementptr [10 x i8], [10 x i8]* @.str896, i32 0, i32 0
  %7074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %7073, i64 9)
  %7075 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %7076 = load %nyx_string*, %nyx_string** %7075
  %7077 = call %nyx_string* @nyx_string_concat(%nyx_string* %7074, %nyx_string* %7076)
  %7078 = call i8* @nyx_string_to_cstr(%nyx_string* %7077)
  call void @nyx_print_string(i8* %7078)
  %7079 = getelementptr [10 x i8], [10 x i8]* @.str897, i32 0, i32 0
  %7080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %7079, i64 9)
  %7081 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %7082 = load %nyx_string*, %nyx_string** %7081
  %7083 = call %nyx_string* @nyx_string_concat(%nyx_string* %7080, %nyx_string* %7082)
  %7084 = call i8* @nyx_string_to_cstr(%nyx_string* %7083)
  call void @nyx_print_string(i8* %7084)
  %7085 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %7086 = load %nyx_string*, %nyx_string** %7085
  %7087 = getelementptr [1 x i8], [1 x i8]* @.str898, i32 0, i32 0
  %7088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %7087, i64 0)
  %7089 = call i1 @nyx_string_equals(%nyx_string* %7086, %nyx_string* %7088)
  %7090 = xor i1 %7089, true
  br i1 %7090, label %then1228, label %else1229
then1228:
  %7091 = getelementptr [10 x i8], [10 x i8]* @.str899, i32 0, i32 0
  %7092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %7091, i64 9)
  %7093 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %7094 = load %nyx_string*, %nyx_string** %7093
  %7095 = call %nyx_string* @nyx_string_concat(%nyx_string* %7092, %nyx_string* %7094)
  %7096 = call i8* @nyx_string_to_cstr(%nyx_string* %7095)
  call void @nyx_print_string(i8* %7096)
  br label %merge1230
else1229:
  br label %merge1230
merge1230:
  %7097 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %7098 = load %nyx_string*, %nyx_string** %7097
  %7099 = getelementptr [1 x i8], [1 x i8]* @.str900, i32 0, i32 0
  %7100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %7099, i64 0)
  %7101 = call i1 @nyx_string_equals(%nyx_string* %7098, %nyx_string* %7100)
  %7102 = xor i1 %7101, true
  br i1 %7102, label %then1231, label %else1232
then1231:
  %7103 = getelementptr [10 x i8], [10 x i8]* @.str901, i32 0, i32 0
  %7104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %7103, i64 9)
  %7105 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %7106 = load %nyx_string*, %nyx_string** %7105
  %7107 = call %nyx_string* @nyx_string_concat(%nyx_string* %7104, %nyx_string* %7106)
  %7108 = call i8* @nyx_string_to_cstr(%nyx_string* %7107)
  call void @nyx_print_string(i8* %7108)
  br label %merge1233
else1232:
  br label %merge1233
merge1233:
  %7109 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %7110 = load i1, i1* %7109
  br i1 %7110, label %then1234, label %else1235
then1234:
  %7111 = getelementptr [25 x i8], [25 x i8]* @.str902, i32 0, i32 0
  %7112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %7111, i64 24)
  %7113 = call i8* @nyx_string_to_cstr(%nyx_string* %7112)
  call void @nyx_print_string(i8* %7113)
  br label %merge1236
else1235:
  %7114 = getelementptr [22 x i8], [22 x i8]* @.str903, i32 0, i32 0
  %7115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %7114, i64 21)
  %7116 = call i8* @nyx_string_to_cstr(%nyx_string* %7115)
  call void @nyx_print_string(i8* %7116)
  br label %merge1236
merge1236:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %7117 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7118 = getelementptr [2 x i8], [2 x i8]* @.str904, i32 0, i32 0
  %7119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %7118, i64 1)
  %7120 = call i1 @nyx_string_starts_with(%nyx_string* %7117, %nyx_string* %7119)
  br i1 %7120, label %then1237, label %else1238
then1237:
  %7121 = getelementptr [98 x i8], [98 x i8]* @.str905, i32 0, i32 0
  %7122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %7121, i64 97)
  %7123 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7124 = call %nyx_string* @nyx_string_concat(%nyx_string* %7122, %nyx_string* %7123)
  ret %nyx_string* %7124
else1238:
  br label %merge1239
merge1239:
  %7125 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7126 = getelementptr [4 x i8], [4 x i8]* @.str906, i32 0, i32 0
  %7127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %7126, i64 3)
  %7128 = call i1 @nyx_string_ends_with(%nyx_string* %7125, %nyx_string* %7127)
  %7129 = xor i1 %7128, true
  br i1 %7129, label %then1240, label %else1241
then1240:
  %7130 = getelementptr [31 x i8], [31 x i8]* @.str907, i32 0, i32 0
  %7131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %7130, i64 30)
  %7132 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7133 = call %nyx_string* @nyx_string_concat(%nyx_string* %7131, %nyx_string* %7132)
  ret %nyx_string* %7133
else1241:
  br label %merge1242
merge1242:
  %7134 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7135 = call i8* @nyx_string_to_cstr(%nyx_string* %7134)
  %7136 = call i1 @nyx_file_exists(i8* %7135)
  %7137 = xor i1 %7136, true
  br i1 %7137, label %then1243, label %else1244
then1243:
  %7138 = getelementptr [31 x i8], [31 x i8]* @.str908, i32 0, i32 0
  %7139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %7138, i64 30)
  %7140 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7141 = call %nyx_string* @nyx_string_concat(%nyx_string* %7139, %nyx_string* %7140)
  %7142 = getelementptr [48 x i8], [48 x i8]* @.str909, i32 0, i32 0
  %7143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %7142, i64 47)
  %7144 = call %nyx_string* @nyx_string_concat(%nyx_string* %7141, %nyx_string* %7143)
  ret %nyx_string* %7144
else1244:
  br label %merge1245
merge1245:
  %7145 = getelementptr [1 x i8], [1 x i8]* @.str910, i32 0, i32 0
  %7146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %7145, i64 0)
  ret %nyx_string* %7146
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %7147 = load %nyx_string*, %nyx_string** %p.ptr
  %7148 = getelementptr [3 x i8], [3 x i8]* @.str911, i32 0, i32 0
  %7149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %7148, i64 2)
  %7150 = call i1 @nyx_string_starts_with(%nyx_string* %7147, %nyx_string* %7149)
  br i1 %7150, label %then1246, label %else1247
then1246:
  %7151 = load %nyx_string*, %nyx_string** %p.ptr
  %7152 = load %nyx_string*, %nyx_string** %p.ptr
  %7153 = call i64 @nyx_string_byte_length(%nyx_string* %7152)
  %7154 = call %nyx_string* @nyx_string_substring(%nyx_string* %7151, i64 2, i64 %7153)
  ret %nyx_string* %7154
else1247:
  br label %merge1248
merge1248:
  %7155 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %7155
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %7156 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7157 = getelementptr [1 x i8], [1 x i8]* @.str912, i32 0, i32 0
  %7158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %7157, i64 0)
  %7159 = call i1 @nyx_string_equals(%nyx_string* %7156, %nyx_string* %7158)
  br i1 %7159, label %then1249, label %else1250
then1249:
  %7160 = getelementptr [1 x i8], [1 x i8]* @.str913, i32 0, i32 0
  %7161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %7160, i64 0)
  ret %nyx_string* %7161
else1250:
  br label %merge1251
merge1251:
  %7162 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7163 = call %nyx_string* @strip_dot_slash(%nyx_string* %7162)
  %7164 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %7165 = load %nyx_string*, %nyx_string** %7164
  %7166 = call %nyx_string* @strip_dot_slash(%nyx_string* %7165)
  %7167 = call i1 @nyx_string_equals(%nyx_string* %7163, %nyx_string* %7166)
  br i1 %7167, label %then1252, label %else1253
then1252:
  %7168 = getelementptr [1 x i8], [1 x i8]* @.str914, i32 0, i32 0
  %7169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %7168, i64 0)
  ret %nyx_string* %7169
else1253:
  br label %merge1254
merge1254:
  %7170 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7171 = alloca %nyx_string*
  store %nyx_string* %7170, %nyx_string** %7171
  %7172 = alloca i64
  store i64 0, i64* %7172
  %7173 = call i8* @llvm.stacksave()
  br label %while_cond1255
while_cond1255:
  %7174 = load i64, i64* %7172
  %7175 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7176 = call i64 @nyx_string_byte_length(%nyx_string* %7175)
  %7177 = icmp slt i64 %7174, %7176
  br i1 %7177, label %while_body1256, label %while_end1257
while_body1256:
  call void @llvm.stackrestore(i8* %7173)
  %7178 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7179 = load i64, i64* %7172
  %7180 = call i8 @nyx_string_char_at(%nyx_string* %7178, i64 %7179)
  %7181 = zext i8 %7180 to i64
  %7182 = trunc i64 %7181 to i8
  %7183 = alloca i8
  store i8 %7182, i8* %7183
  %7184 = load i8, i8* %7183
  %7185 = getelementptr [1 x i8], [1 x i8]* @.str915, i32 0, i32 0
  %7186 = load i8, i8* %7185
  %7187 = zext i8 %7186 to i64
  %7188 = zext i8 %7184 to i64
  %7189 = icmp eq i64 %7188, %7187
  br i1 %7189, label %then1258, label %else1259
then1258:
  %7190 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7191 = load i64, i64* %7172
  %7192 = add i64 %7191, 1
  %7193 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %7194 = call i64 @nyx_string_byte_length(%nyx_string* %7193)
  %7195 = call %nyx_string* @nyx_string_substring(%nyx_string* %7190, i64 %7192, i64 %7194)
  store %nyx_string* %7195, %nyx_string** %7171
  br label %merge1260
else1259:
  br label %merge1260
merge1260:
  %7196 = load i64, i64* %7172
  %7197 = add i64 %7196, 1
  store i64 %7197, i64* %7172
  br label %while_cond1255
while_end1257:
  %7198 = load %nyx_string*, %nyx_string** %7171
  %7199 = load %nyx_string*, %nyx_string** %7171
  %7200 = call i64 @nyx_string_byte_length(%nyx_string* %7199)
  %7201 = sub i64 %7200, 3
  %7202 = call %nyx_string* @nyx_string_substring(%nyx_string* %7198, i64 0, i64 %7201)
  %7203 = alloca %nyx_string*
  store %nyx_string* %7202, %nyx_string** %7203
  %7204 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %7205 = load %nyx_string*, %nyx_string** %7204
  %7206 = getelementptr [2 x i8], [2 x i8]* @.str916, i32 0, i32 0
  %7207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %7206, i64 1)
  %7208 = call %nyx_string* @nyx_string_concat(%nyx_string* %7205, %nyx_string* %7207)
  %7209 = load %nyx_string*, %nyx_string** %7203
  %7210 = call %nyx_string* @nyx_string_concat(%nyx_string* %7208, %nyx_string* %7209)
  ret %nyx_string* %7210
}

define internal %nyx_string* @toolchain_version(
) {
  %7211 = getelementptr [9 x i8], [9 x i8]* @.str917, i32 0, i32 0
  %7212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %7211, i64 8)
  %7213 = call i8* @nyx_string_to_cstr(%nyx_string* %7212)
  %7214 = call %nyx_string* @nyx_getenv(i8* %7213)
  %7215 = alloca %nyx_string*
  store %nyx_string* %7214, %nyx_string** %7215
  %7216 = load %nyx_string*, %nyx_string** %7215
  %7217 = getelementptr [1 x i8], [1 x i8]* @.str918, i32 0, i32 0
  %7218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %7217, i64 0)
  %7219 = call i1 @nyx_string_equals(%nyx_string* %7216, %nyx_string* %7218)
  br i1 %7219, label %then1261, label %else1262
then1261:
  %7220 = getelementptr [5 x i8], [5 x i8]* @.str919, i32 0, i32 0
  %7221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %7220, i64 4)
  %7222 = call i8* @nyx_string_to_cstr(%nyx_string* %7221)
  %7223 = call %nyx_string* @nyx_getenv(i8* %7222)
  %7224 = alloca %nyx_string*
  store %nyx_string* %7223, %nyx_string** %7224
  %7225 = load %nyx_string*, %nyx_string** %7224
  %7226 = getelementptr [1 x i8], [1 x i8]* @.str920, i32 0, i32 0
  %7227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %7226, i64 0)
  %7228 = call i1 @nyx_string_equals(%nyx_string* %7225, %nyx_string* %7227)
  %7229 = xor i1 %7228, true
  br i1 %7229, label %then1264, label %else1265
then1264:
  %7230 = load %nyx_string*, %nyx_string** %7224
  %7231 = getelementptr [6 x i8], [6 x i8]* @.str921, i32 0, i32 0
  %7232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %7231, i64 5)
  %7233 = call %nyx_string* @nyx_string_concat(%nyx_string* %7230, %nyx_string* %7232)
  store %nyx_string* %7233, %nyx_string** %7215
  br label %merge1266
else1265:
  br label %merge1266
merge1266:
  br label %merge1263
else1262:
  br label %merge1263
merge1263:
  %7234 = load %nyx_string*, %nyx_string** %7215
  %7235 = getelementptr [1 x i8], [1 x i8]* @.str922, i32 0, i32 0
  %7236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %7235, i64 0)
  %7237 = call i1 @nyx_string_equals(%nyx_string* %7234, %nyx_string* %7236)
  %7238 = xor i1 %7237, true
  br i1 %7238, label %then1267, label %else1268
then1267:
  %7239 = load %nyx_string*, %nyx_string** %7215
  %7240 = getelementptr [9 x i8], [9 x i8]* @.str923, i32 0, i32 0
  %7241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %7240, i64 8)
  %7242 = call %nyx_string* @nyx_string_concat(%nyx_string* %7239, %nyx_string* %7241)
  %7243 = call i8* @nyx_string_to_cstr(%nyx_string* %7242)
  %7244 = call i1 @nyx_file_exists(i8* %7243)
  br i1 %7244, label %then1270, label %else1271
then1270:
  %7245 = load %nyx_string*, %nyx_string** %7215
  %7246 = getelementptr [9 x i8], [9 x i8]* @.str924, i32 0, i32 0
  %7247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %7246, i64 8)
  %7248 = call %nyx_string* @nyx_string_concat(%nyx_string* %7245, %nyx_string* %7247)
  %7249 = call i8* @nyx_string_to_cstr(%nyx_string* %7248)
  %7250 = call %nyx_string* @nyx_read_file(i8* %7249)
  %7251 = alloca %nyx_string*
  store %nyx_string* %7250, %nyx_string** %7251
  %7252 = load %nyx_string*, %nyx_string** %7251
  %7253 = call %nyx_string* @nyx_string_trim(%nyx_string* %7252)
  ret %nyx_string* %7253
else1271:
  br label %merge1272
merge1272:
  br label %merge1269
else1268:
  br label %merge1269
merge1269:
  %7254 = getelementptr [8 x i8], [8 x i8]* @.str925, i32 0, i32 0
  %7255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %7254, i64 7)
  %7256 = call i8* @nyx_string_to_cstr(%nyx_string* %7255)
  %7257 = call i1 @nyx_file_exists(i8* %7256)
  br i1 %7257, label %then1273, label %else1274
then1273:
  %7258 = getelementptr [8 x i8], [8 x i8]* @.str926, i32 0, i32 0
  %7259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %7258, i64 7)
  %7260 = call i8* @nyx_string_to_cstr(%nyx_string* %7259)
  %7261 = call %nyx_string* @nyx_read_file(i8* %7260)
  %7262 = alloca %nyx_string*
  store %nyx_string* %7261, %nyx_string** %7262
  %7263 = load %nyx_string*, %nyx_string** %7262
  %7264 = call %nyx_string* @nyx_string_trim(%nyx_string* %7263)
  ret %nyx_string* %7264
else1274:
  br label %merge1275
merge1275:
  %7265 = getelementptr [7 x i8], [7 x i8]* @.str927, i32 0, i32 0
  %7266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %7265, i64 6)
  ret %nyx_string* %7266
}

define internal %nyx_string* @report_template(
) {
  %7267 = getelementptr [51 x i8], [51 x i8]* @.str928, i32 0, i32 0
  %7268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %7267, i64 50)
  %7269 = alloca %nyx_string*
  store %nyx_string* %7268, %nyx_string** %7269
  %7270 = load %nyx_string*, %nyx_string** %7269
  %7271 = getelementptr [73 x i8], [73 x i8]* @.str929, i32 0, i32 0
  %7272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %7271, i64 72)
  %7273 = call %nyx_string* @nyx_string_concat(%nyx_string* %7270, %nyx_string* %7272)
  store %nyx_string* %7273, %nyx_string** %7269
  %7274 = load %nyx_string*, %nyx_string** %7269
  %7275 = getelementptr [88 x i8], [88 x i8]* @.str930, i32 0, i32 0
  %7276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %7275, i64 87)
  %7277 = call %nyx_string* @nyx_string_concat(%nyx_string* %7274, %nyx_string* %7276)
  store %nyx_string* %7277, %nyx_string** %7269
  %7278 = load %nyx_string*, %nyx_string** %7269
  %7279 = getelementptr [51 x i8], [51 x i8]* @.str931, i32 0, i32 0
  %7280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %7279, i64 50)
  %7281 = call %nyx_string* @nyx_string_concat(%nyx_string* %7278, %nyx_string* %7280)
  store %nyx_string* %7281, %nyx_string** %7269
  %7282 = load %nyx_string*, %nyx_string** %7269
  %7283 = getelementptr [90 x i8], [90 x i8]* @.str932, i32 0, i32 0
  %7284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %7283, i64 89)
  %7285 = call %nyx_string* @nyx_string_concat(%nyx_string* %7282, %nyx_string* %7284)
  store %nyx_string* %7285, %nyx_string** %7269
  %7286 = load %nyx_string*, %nyx_string** %7269
  %7287 = getelementptr [104 x i8], [104 x i8]* @.str933, i32 0, i32 0
  %7288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %7287, i64 103)
  %7289 = call %nyx_string* @nyx_string_concat(%nyx_string* %7286, %nyx_string* %7288)
  store %nyx_string* %7289, %nyx_string** %7269
  %7290 = load %nyx_string*, %nyx_string** %7269
  %7291 = getelementptr [99 x i8], [99 x i8]* @.str934, i32 0, i32 0
  %7292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %7291, i64 98)
  %7293 = call %nyx_string* @nyx_string_concat(%nyx_string* %7290, %nyx_string* %7292)
  store %nyx_string* %7293, %nyx_string** %7269
  %7294 = load %nyx_string*, %nyx_string** %7269
  %7295 = getelementptr [126 x i8], [126 x i8]* @.str935, i32 0, i32 0
  %7296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %7295, i64 125)
  %7297 = call %nyx_string* @nyx_string_concat(%nyx_string* %7294, %nyx_string* %7296)
  store %nyx_string* %7297, %nyx_string** %7269
  %7298 = load %nyx_string*, %nyx_string** %7269
  %7299 = getelementptr [21 x i8], [21 x i8]* @.str936, i32 0, i32 0
  %7300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %7299, i64 20)
  %7301 = call %nyx_string* @nyx_string_concat(%nyx_string* %7298, %nyx_string* %7300)
  %7302 = call %nyx_string* @toolchain_version()
  %7303 = call %nyx_string* @nyx_string_concat(%nyx_string* %7301, %nyx_string* %7302)
  %7304 = getelementptr [25 x i8], [25 x i8]* @.str937, i32 0, i32 0
  %7305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %7304, i64 24)
  %7306 = call %nyx_string* @nyx_string_concat(%nyx_string* %7303, %nyx_string* %7305)
  store %nyx_string* %7306, %nyx_string** %7269
  %7307 = load %nyx_string*, %nyx_string** %7269
  ret %nyx_string* %7307
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %7308 = getelementptr [12 x i8], [12 x i8]* @.str938, i32 0, i32 0
  %7309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %7308, i64 11)
  %7310 = alloca %nyx_string*
  store %nyx_string* %7309, %nyx_string** %7310
  %7311 = load i1, i1* %do_send.ptr
  %7312 = xor i1 %7311, true
  br i1 %7312, label %then1276, label %else1277
then1276:
  %7313 = load %nyx_string*, %nyx_string** %7310
  %7314 = call i8* @nyx_string_to_cstr(%nyx_string* %7313)
  %7315 = call i1 @nyx_file_exists(i8* %7314)
  br i1 %7315, label %then1279, label %else1280
then1279:
  %7316 = load %nyx_string*, %nyx_string** %7310
  %7317 = call i8* @nyx_string_to_cstr(%nyx_string* %7316)
  %7318 = call %nyx_string* @nyx_read_file(i8* %7317)
  %7319 = alloca %nyx_string*
  store %nyx_string* %7318, %nyx_string** %7319
  %7320 = load %nyx_string*, %nyx_string** %7319
  %7321 = call i64 @nyx_string_byte_length(%nyx_string* %7320)
  %7322 = icmp sge i64 %7321, 40
  br i1 %7322, label %then1282, label %else1283
then1282:
  %7323 = getelementptr [80 x i8], [80 x i8]* @.str939, i32 0, i32 0
  %7324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %7323, i64 79)
  %7325 = call i8* @nyx_string_to_cstr(%nyx_string* %7324)
  call void @nyx_print_string(i8* %7325)
  %7326 = getelementptr [62 x i8], [62 x i8]* @.str940, i32 0, i32 0
  %7327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %7326, i64 61)
  %7328 = call i8* @nyx_string_to_cstr(%nyx_string* %7327)
  call void @nyx_print_string(i8* %7328)
  ret i1 1
else1283:
  br label %merge1284
merge1284:
  br label %merge1281
else1280:
  br label %merge1281
merge1281:
  %7329 = load %nyx_string*, %nyx_string** %7310
  %7330 = call %nyx_string* @report_template()
  %7331 = call i8* @nyx_string_to_cstr(%nyx_string* %7329)
  %7332 = call i1 @nyx_write_file_safe(i8* %7331, %nyx_string* %7330)
  %7333 = getelementptr [78 x i8], [78 x i8]* @.str941, i32 0, i32 0
  %7334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %7333, i64 77)
  %7335 = call i8* @nyx_string_to_cstr(%nyx_string* %7334)
  call void @nyx_print_string(i8* %7335)
  %7336 = getelementptr [72 x i8], [72 x i8]* @.str942, i32 0, i32 0
  %7337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %7336, i64 71)
  %7338 = call i8* @nyx_string_to_cstr(%nyx_string* %7337)
  call void @nyx_print_string(i8* %7338)
  %7339 = getelementptr [53 x i8], [53 x i8]* @.str943, i32 0, i32 0
  %7340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %7339, i64 52)
  %7341 = call i8* @nyx_string_to_cstr(%nyx_string* %7340)
  call void @nyx_print_string(i8* %7341)
  ret i1 1
else1277:
  br label %merge1278
merge1278:
  %7342 = load %nyx_string*, %nyx_string** %7310
  %7343 = alloca %nyx_string*
  store %nyx_string* %7342, %nyx_string** %7343
  %7344 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %7345 = getelementptr [1 x i8], [1 x i8]* @.str944, i32 0, i32 0
  %7346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %7345, i64 0)
  %7347 = call i1 @nyx_string_equals(%nyx_string* %7344, %nyx_string* %7346)
  %7348 = xor i1 %7347, true
  br i1 %7348, label %then1285, label %else1286
then1285:
  %7349 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %7349, %nyx_string** %7343
  br label %merge1287
else1286:
  br label %merge1287
merge1287:
  %7350 = load %nyx_string*, %nyx_string** %7343
  %7351 = call i8* @nyx_string_to_cstr(%nyx_string* %7350)
  %7352 = call i1 @nyx_file_exists(i8* %7351)
  %7353 = xor i1 %7352, true
  br i1 %7353, label %then1288, label %else1289
then1288:
  %7354 = getelementptr [18 x i8], [18 x i8]* @.str945, i32 0, i32 0
  %7355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %7354, i64 17)
  %7356 = load %nyx_string*, %nyx_string** %7343
  %7357 = call %nyx_string* @nyx_string_concat(%nyx_string* %7355, %nyx_string* %7356)
  %7358 = getelementptr [57 x i8], [57 x i8]* @.str946, i32 0, i32 0
  %7359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %7358, i64 56)
  %7360 = call %nyx_string* @nyx_string_concat(%nyx_string* %7357, %nyx_string* %7359)
  %7361 = call i8* @nyx_string_to_cstr(%nyx_string* %7360)
  call void @nyx_print_string(i8* %7361)
  ret i1 0
else1289:
  br label %merge1290
merge1290:
  %7362 = load %nyx_string*, %nyx_string** %7343
  %7363 = call i8* @nyx_string_to_cstr(%nyx_string* %7362)
  %7364 = call %nyx_string* @nyx_read_file(i8* %7363)
  %7365 = alloca %nyx_string*
  store %nyx_string* %7364, %nyx_string** %7365
  %7366 = load %nyx_string*, %nyx_string** %7365
  %7367 = call i64 @nyx_string_byte_length(%nyx_string* %7366)
  %7368 = icmp slt i64 %7367, 40
  br i1 %7368, label %then1291, label %else1292
then1291:
  %7369 = getelementptr [66 x i8], [66 x i8]* @.str947, i32 0, i32 0
  %7370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %7369, i64 65)
  %7371 = call i8* @nyx_string_to_cstr(%nyx_string* %7370)
  call void @nyx_print_string(i8* %7371)
  ret i1 0
else1292:
  br label %merge1293
merge1293:
  %7372 = getelementptr [1 x i8], [1 x i8]* @.str948, i32 0, i32 0
  %7373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %7372, i64 0)
  %7374 = alloca %nyx_string*
  store %nyx_string* %7373, %nyx_string** %7374
  %7375 = getelementptr [5 x i8], [5 x i8]* @.str949, i32 0, i32 0
  %7376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %7375, i64 4)
  %7377 = call i8* @nyx_string_to_cstr(%nyx_string* %7376)
  %7378 = call %nyx_string* @nyx_getenv(i8* %7377)
  %7379 = alloca %nyx_string*
  store %nyx_string* %7378, %nyx_string** %7379
  %7380 = load %nyx_string*, %nyx_string** %7379
  %7381 = getelementptr [1 x i8], [1 x i8]* @.str950, i32 0, i32 0
  %7382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %7381, i64 0)
  %7383 = call i1 @nyx_string_equals(%nyx_string* %7380, %nyx_string* %7382)
  %7384 = xor i1 %7383, true
  br i1 %7384, label %then1294, label %else1295
then1294:
  %7385 = load %nyx_string*, %nyx_string** %7379
  %7386 = getelementptr [15 x i8], [15 x i8]* @.str951, i32 0, i32 0
  %7387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %7386, i64 14)
  %7388 = call %nyx_string* @nyx_string_concat(%nyx_string* %7385, %nyx_string* %7387)
  %7389 = call i8* @nyx_string_to_cstr(%nyx_string* %7388)
  %7390 = call i1 @nyx_file_exists(i8* %7389)
  br i1 %7390, label %then1297, label %else1298
then1297:
  %7391 = load %nyx_string*, %nyx_string** %7379
  %7392 = getelementptr [15 x i8], [15 x i8]* @.str952, i32 0, i32 0
  %7393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %7392, i64 14)
  %7394 = call %nyx_string* @nyx_string_concat(%nyx_string* %7391, %nyx_string* %7393)
  %7395 = call i8* @nyx_string_to_cstr(%nyx_string* %7394)
  %7396 = call %nyx_string* @nyx_read_file(i8* %7395)
  %7397 = alloca %nyx_string*
  store %nyx_string* %7396, %nyx_string** %7397
  %7398 = load %nyx_string*, %nyx_string** %7397
  %7399 = call %nyx_string* @nyx_string_trim(%nyx_string* %7398)
  store %nyx_string* %7399, %nyx_string** %7374
  br label %merge1299
else1298:
  br label %merge1299
merge1299:
  br label %merge1296
else1295:
  br label %merge1296
merge1296:
  %7400 = load %nyx_string*, %nyx_string** %7374
  %7401 = getelementptr [1 x i8], [1 x i8]* @.str953, i32 0, i32 0
  %7402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %7401, i64 0)
  %7403 = call i1 @nyx_string_equals(%nyx_string* %7400, %nyx_string* %7402)
  br i1 %7403, label %then1300, label %else1301
then1300:
  %7404 = getelementptr [77 x i8], [77 x i8]* @.str954, i32 0, i32 0
  %7405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %7404, i64 76)
  %7406 = call i8* @nyx_string_to_cstr(%nyx_string* %7405)
  call void @nyx_print_string(i8* %7406)
  br label %merge1302
else1301:
  br label %merge1302
merge1302:
  %7407 = getelementptr [10 x i8], [10 x i8]* @.str955, i32 0, i32 0
  %7408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %7407, i64 9)
  %7409 = load %nyx_string*, %nyx_string** %7374
  %7410 = call i64 @std_kvclient__kv_connect_auth(%nyx_string* %7408, i64 6380, %nyx_string* %7409)
  %7411 = alloca i64
  store i64 %7410, i64* %7411
  %7412 = load i64, i64* %7411
  %7413 = icmp slt i64 %7412, 0
  br i1 %7413, label %then1303, label %else1304
then1303:
  %7414 = getelementptr [54 x i8], [54 x i8]* @.str956, i32 0, i32 0
  %7415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %7414, i64 53)
  %7416 = call i8* @nyx_string_to_cstr(%nyx_string* %7415)
  call void @nyx_print_string(i8* %7416)
  %7417 = getelementptr [22 x i8], [22 x i8]* @.str957, i32 0, i32 0
  %7418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %7417, i64 21)
  %7419 = load %nyx_string*, %nyx_string** %7343
  %7420 = call %nyx_string* @nyx_string_concat(%nyx_string* %7418, %nyx_string* %7419)
  %7421 = getelementptr [28 x i8], [28 x i8]* @.str958, i32 0, i32 0
  %7422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %7421, i64 27)
  %7423 = call %nyx_string* @nyx_string_concat(%nyx_string* %7420, %nyx_string* %7422)
  %7424 = call i8* @nyx_string_to_cstr(%nyx_string* %7423)
  call void @nyx_print_string(i8* %7424)
  %7425 = getelementptr [44 x i8], [44 x i8]* @.str959, i32 0, i32 0
  %7426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %7425, i64 43)
  %7427 = call i8* @nyx_string_to_cstr(%nyx_string* %7426)
  call void @nyx_print_string(i8* %7427)
  ret i1 0
else1304:
  br label %merge1305
merge1305:
  %7428 = getelementptr [5 x i8], [5 x i8]* @.str960, i32 0, i32 0
  %7429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %7428, i64 4)
  %7430 = load %nyx_string*, %nyx_string** %7365
  %7431 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %7430)
  %7432 = call %nyx_string* @nyx_string_concat(%nyx_string* %7429, %nyx_string* %7431)
  %7433 = alloca %nyx_string*
  store %nyx_string* %7432, %nyx_string** %7433
  %7434 = load i64, i64* %7411
  %7435 = getelementptr [11 x i8], [11 x i8]* @.str961, i32 0, i32 0
  %7436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %7435, i64 10)
  %7437 = load %nyx_string*, %nyx_string** %7433
  %7438 = call i64 @std_kvclient__kv_rpush(i64 %7434, %nyx_string* %7436, %nyx_string* %7437)
  %7439 = alloca i64
  store i64 %7438, i64* %7439
  %7440 = load i64, i64* %7411
  %7441 = call i64 @std_kvclient__kv_close(i64 %7440)
  %7442 = load i64, i64* %7439
  %7443 = icmp sle i64 %7442, 0
  br i1 %7443, label %then1306, label %else1307
then1306:
  %7444 = getelementptr [37 x i8], [37 x i8]* @.str962, i32 0, i32 0
  %7445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %7444, i64 36)
  %7446 = call i8* @nyx_string_to_cstr(%nyx_string* %7445)
  call void @nyx_print_string(i8* %7446)
  ret i1 0
else1307:
  br label %merge1308
merge1308:
  %7447 = getelementptr [55 x i8], [55 x i8]* @.str963, i32 0, i32 0
  %7448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %7447, i64 54)
  %7449 = load i64, i64* %7439
  %7450 = call %nyx_string* @nyx_string_from_int(i64 %7449)
  %7451 = call %nyx_string* @nyx_string_concat(%nyx_string* %7448, %nyx_string* %7450)
  %7452 = getelementptr [15 x i8], [15 x i8]* @.str964, i32 0, i32 0
  %7453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %7452, i64 14)
  %7454 = call %nyx_string* @nyx_string_concat(%nyx_string* %7451, %nyx_string* %7453)
  %7455 = call i8* @nyx_string_to_cstr(%nyx_string* %7454)
  call void @nyx_print_string(i8* %7455)
  ret i1 1
}

define internal %nyx_string* @rt_cache_sh(
) {
  %7456 = getelementptr [17 x i8], [17 x i8]* @.str965, i32 0, i32 0
  %7457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %7456, i64 16)
  %7458 = alloca %nyx_string*
  store %nyx_string* %7457, %nyx_string** %7458
  %7459 = load %nyx_string*, %nyx_string** %7458
  %7460 = getelementptr [41 x i8], [41 x i8]* @.str966, i32 0, i32 0
  %7461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %7460, i64 40)
  %7462 = call %nyx_string* @nyx_string_concat(%nyx_string* %7459, %nyx_string* %7461)
  store %nyx_string* %7462, %nyx_string** %7458
  %7463 = load %nyx_string*, %nyx_string** %7458
  %7464 = getelementptr [24 x i8], [24 x i8]* @.str967, i32 0, i32 0
  %7465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %7464, i64 23)
  %7466 = call %nyx_string* @nyx_string_concat(%nyx_string* %7463, %nyx_string* %7465)
  store %nyx_string* %7466, %nyx_string** %7458
  %7467 = load %nyx_string*, %nyx_string** %7458
  %7468 = getelementptr [92 x i8], [92 x i8]* @.str968, i32 0, i32 0
  %7469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %7468, i64 91)
  %7470 = call %nyx_string* @nyx_string_concat(%nyx_string* %7467, %nyx_string* %7469)
  store %nyx_string* %7470, %nyx_string** %7458
  %7471 = load %nyx_string*, %nyx_string** %7458
  %7472 = getelementptr [177 x i8], [177 x i8]* @.str969, i32 0, i32 0
  %7473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %7472, i64 176)
  %7474 = call %nyx_string* @nyx_string_concat(%nyx_string* %7471, %nyx_string* %7473)
  store %nyx_string* %7474, %nyx_string** %7458
  %7475 = load %nyx_string*, %nyx_string** %7458
  %7476 = getelementptr [35 x i8], [35 x i8]* @.str970, i32 0, i32 0
  %7477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %7476, i64 34)
  %7478 = call %nyx_string* @nyx_string_concat(%nyx_string* %7475, %nyx_string* %7477)
  store %nyx_string* %7478, %nyx_string** %7458
  %7479 = load %nyx_string*, %nyx_string** %7458
  %7480 = getelementptr [83 x i8], [83 x i8]* @.str971, i32 0, i32 0
  %7481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %7480, i64 82)
  %7482 = call %nyx_string* @nyx_string_concat(%nyx_string* %7479, %nyx_string* %7481)
  store %nyx_string* %7482, %nyx_string** %7458
  %7483 = load %nyx_string*, %nyx_string** %7458
  %7484 = getelementptr [49 x i8], [49 x i8]* @.str972, i32 0, i32 0
  %7485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %7484, i64 48)
  %7486 = call %nyx_string* @nyx_string_concat(%nyx_string* %7483, %nyx_string* %7485)
  store %nyx_string* %7486, %nyx_string** %7458
  %7487 = load %nyx_string*, %nyx_string** %7458
  %7488 = getelementptr [89 x i8], [89 x i8]* @.str973, i32 0, i32 0
  %7489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %7488, i64 88)
  %7490 = call %nyx_string* @nyx_string_concat(%nyx_string* %7487, %nyx_string* %7489)
  store %nyx_string* %7490, %nyx_string** %7458
  %7491 = load %nyx_string*, %nyx_string** %7458
  %7492 = getelementptr [68 x i8], [68 x i8]* @.str974, i32 0, i32 0
  %7493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %7492, i64 67)
  %7494 = call %nyx_string* @nyx_string_concat(%nyx_string* %7491, %nyx_string* %7493)
  store %nyx_string* %7494, %nyx_string** %7458
  %7495 = load %nyx_string*, %nyx_string** %7458
  %7496 = getelementptr [15 x i8], [15 x i8]* @.str975, i32 0, i32 0
  %7497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %7496, i64 14)
  %7498 = call %nyx_string* @nyx_string_concat(%nyx_string* %7495, %nyx_string* %7497)
  store %nyx_string* %7498, %nyx_string** %7458
  %7499 = load %nyx_string*, %nyx_string** %7458
  %7500 = getelementptr [114 x i8], [114 x i8]* @.str976, i32 0, i32 0
  %7501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %7500, i64 113)
  %7502 = call %nyx_string* @nyx_string_concat(%nyx_string* %7499, %nyx_string* %7501)
  store %nyx_string* %7502, %nyx_string** %7458
  %7503 = load %nyx_string*, %nyx_string** %7458
  %7504 = getelementptr [8 x i8], [8 x i8]* @.str977, i32 0, i32 0
  %7505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %7504, i64 7)
  %7506 = call %nyx_string* @nyx_string_concat(%nyx_string* %7503, %nyx_string* %7505)
  store %nyx_string* %7506, %nyx_string** %7458
  %7507 = load %nyx_string*, %nyx_string** %7458
  %7508 = getelementptr [138 x i8], [138 x i8]* @.str978, i32 0, i32 0
  %7509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %7508, i64 137)
  %7510 = call %nyx_string* @nyx_string_concat(%nyx_string* %7507, %nyx_string* %7509)
  store %nyx_string* %7510, %nyx_string** %7458
  %7511 = load %nyx_string*, %nyx_string** %7458
  %7512 = getelementptr [43 x i8], [43 x i8]* @.str979, i32 0, i32 0
  %7513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %7512, i64 42)
  %7514 = call %nyx_string* @nyx_string_concat(%nyx_string* %7511, %nyx_string* %7513)
  store %nyx_string* %7514, %nyx_string** %7458
  %7515 = load %nyx_string*, %nyx_string** %7458
  %7516 = getelementptr [6 x i8], [6 x i8]* @.str980, i32 0, i32 0
  %7517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %7516, i64 5)
  %7518 = call %nyx_string* @nyx_string_concat(%nyx_string* %7515, %nyx_string* %7517)
  store %nyx_string* %7518, %nyx_string** %7458
  %7519 = load %nyx_string*, %nyx_string** %7458
  %7520 = getelementptr [27 x i8], [27 x i8]* @.str981, i32 0, i32 0
  %7521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %7520, i64 26)
  %7522 = call %nyx_string* @nyx_string_concat(%nyx_string* %7519, %nyx_string* %7521)
  store %nyx_string* %7522, %nyx_string** %7458
  %7523 = load %nyx_string*, %nyx_string** %7458
  %7524 = getelementptr [3 x i8], [3 x i8]* @.str982, i32 0, i32 0
  %7525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %7524, i64 2)
  %7526 = call %nyx_string* @nyx_string_concat(%nyx_string* %7523, %nyx_string* %7525)
  store %nyx_string* %7526, %nyx_string** %7458
  %7527 = load %nyx_string*, %nyx_string** %7458
  ret %nyx_string* %7527
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %7528 = getelementptr [9 x i8], [9 x i8]* @.str983, i32 0, i32 0
  %7529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %7528, i64 8)
  %7530 = call i8* @nyx_string_to_cstr(%nyx_string* %7529)
  %7531 = call %nyx_string* @nyx_getenv(i8* %7530)
  %7532 = alloca %nyx_string*
  store %nyx_string* %7531, %nyx_string** %7532
  %7533 = load %nyx_string*, %nyx_string** %7532
  %7534 = getelementptr [1 x i8], [1 x i8]* @.str984, i32 0, i32 0
  %7535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %7534, i64 0)
  %7536 = call i1 @nyx_string_equals(%nyx_string* %7533, %nyx_string* %7535)
  br i1 %7536, label %then1309, label %else1310
then1309:
  %7537 = getelementptr [5 x i8], [5 x i8]* @.str985, i32 0, i32 0
  %7538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %7537, i64 4)
  %7539 = call i8* @nyx_string_to_cstr(%nyx_string* %7538)
  %7540 = call %nyx_string* @nyx_getenv(i8* %7539)
  %7541 = alloca %nyx_string*
  store %nyx_string* %7540, %nyx_string** %7541
  %7542 = load %nyx_string*, %nyx_string** %7541
  %7543 = getelementptr [6 x i8], [6 x i8]* @.str986, i32 0, i32 0
  %7544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %7543, i64 5)
  %7545 = call %nyx_string* @nyx_string_concat(%nyx_string* %7542, %nyx_string* %7544)
  %7546 = alloca %nyx_string*
  store %nyx_string* %7545, %nyx_string** %7546
  %7547 = alloca i1
  store i1 false, i1* %7547
  %7548 = load %nyx_string*, %nyx_string** %7541
  %7549 = getelementptr [1 x i8], [1 x i8]* @.str987, i32 0, i32 0
  %7550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %7549, i64 0)
  %7551 = call i1 @nyx_string_equals(%nyx_string* %7548, %nyx_string* %7550)
  %7552 = xor i1 %7551, true
  br i1 %7552, label %sc_and_rhs1312, label %sc_and_end1313
sc_and_rhs1312:
  %7553 = load %nyx_string*, %nyx_string** %7546
  %7554 = getelementptr [5 x i8], [5 x i8]* @.str988, i32 0, i32 0
  %7555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %7554, i64 4)
  %7556 = call %nyx_string* @nyx_string_concat(%nyx_string* %7553, %nyx_string* %7555)
  %7557 = call i8* @nyx_string_to_cstr(%nyx_string* %7556)
  %7558 = call i1 @nyx_file_exists(i8* %7557)
  store i1 %7558, i1* %7547
  br label %sc_and_end1313
sc_and_end1313:
  %7559 = load i1, i1* %7547
  br i1 %7559, label %then1314, label %else1315
then1314:
  %7560 = load %nyx_string*, %nyx_string** %7546
  store %nyx_string* %7560, %nyx_string** %7532
  br label %merge1316
else1315:
  br label %merge1316
merge1316:
  br label %merge1311
else1310:
  br label %merge1311
merge1311:
  %7561 = load %nyx_string*, %nyx_string** %7532
  %7562 = getelementptr [1 x i8], [1 x i8]* @.str989, i32 0, i32 0
  %7563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %7562, i64 0)
  %7564 = call i1 @nyx_string_equals(%nyx_string* %7561, %nyx_string* %7563)
  br i1 %7564, label %then1317, label %else1318
then1317:
  %7565 = getelementptr [4 x i8], [4 x i8]* @.str990, i32 0, i32 0
  %7566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %7565, i64 3)
  %7567 = call i8* @nyx_string_to_cstr(%nyx_string* %7566)
  %7568 = call i1 @nyx_file_exists(i8* %7567)
  br i1 %7568, label %then1320, label %else1321
then1320:
  %7569 = getelementptr [2 x i8], [2 x i8]* @.str991, i32 0, i32 0
  %7570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %7569, i64 1)
  store %nyx_string* %7570, %nyx_string** %7532
  br label %merge1322
else1321:
  br label %merge1322
merge1322:
  br label %merge1319
else1318:
  br label %merge1319
merge1319:
  %7571 = load %nyx_string*, %nyx_string** %7532
  %7572 = getelementptr [1 x i8], [1 x i8]* @.str992, i32 0, i32 0
  %7573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %7572, i64 0)
  %7574 = call i1 @nyx_string_equals(%nyx_string* %7571, %nyx_string* %7573)
  br i1 %7574, label %then1323, label %else1324
then1323:
  %7575 = getelementptr [1 x i8], [1 x i8]* @.str993, i32 0, i32 0
  %7576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %7575, i64 0)
  ret %nyx_string* %7576
else1324:
  br label %merge1325
merge1325:
  %7577 = load %nyx_string*, %nyx_string** %7532
  %7578 = getelementptr [5 x i8], [5 x i8]* @.str994, i32 0, i32 0
  %7579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %7578, i64 4)
  %7580 = call %nyx_string* @nyx_string_concat(%nyx_string* %7577, %nyx_string* %7579)
  ret %nyx_string* %7580
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %7581 = alloca i1
  store i1 true, i1* %7581
  %7582 = alloca i1
  store i1 true, i1* %7582
  %7583 = alloca i1
  store i1 true, i1* %7583
  %7584 = load %nyx_string*, %nyx_string** %name.ptr
  %7585 = getelementptr [5 x i8], [5 x i8]* @.str995, i32 0, i32 0
  %7586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %7585, i64 4)
  %7587 = call i1 @nyx_string_equals(%nyx_string* %7584, %nyx_string* %7586)
  br i1 %7587, label %sc_or_end1327, label %sc_or_rhs1326
sc_or_rhs1326:
  %7588 = load %nyx_string*, %nyx_string** %name.ptr
  %7589 = getelementptr [4 x i8], [4 x i8]* @.str996, i32 0, i32 0
  %7590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %7589, i64 3)
  %7591 = call i1 @nyx_string_equals(%nyx_string* %7588, %nyx_string* %7590)
  store i1 %7591, i1* %7583
  br label %sc_or_end1327
sc_or_end1327:
  %7592 = load i1, i1* %7583
  br i1 %7592, label %sc_or_end1329, label %sc_or_rhs1328
sc_or_rhs1328:
  %7593 = load %nyx_string*, %nyx_string** %name.ptr
  %7594 = getelementptr [10 x i8], [10 x i8]* @.str997, i32 0, i32 0
  %7595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %7594, i64 9)
  %7596 = call i1 @nyx_string_equals(%nyx_string* %7593, %nyx_string* %7595)
  store i1 %7596, i1* %7582
  br label %sc_or_end1329
sc_or_end1329:
  %7597 = load i1, i1* %7582
  br i1 %7597, label %sc_or_end1331, label %sc_or_rhs1330
sc_or_rhs1330:
  %7598 = load %nyx_string*, %nyx_string** %name.ptr
  %7599 = getelementptr [7 x i8], [7 x i8]* @.str998, i32 0, i32 0
  %7600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %7599, i64 6)
  %7601 = call i1 @nyx_string_equals(%nyx_string* %7598, %nyx_string* %7600)
  store i1 %7601, i1* %7581
  br label %sc_or_end1331
sc_or_end1331:
  %7602 = load i1, i1* %7581
  br i1 %7602, label %then1332, label %else1333
then1332:
  %7603 = getelementptr [11 x i8], [11 x i8]* @.str999, i32 0, i32 0
  %7604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %7603, i64 10)
  ret %nyx_string* %7604
else1333:
  br label %merge1334
merge1334:
  %7605 = alloca i1
  store i1 true, i1* %7605
  %7606 = alloca i1
  store i1 true, i1* %7606
  %7607 = load %nyx_string*, %nyx_string** %name.ptr
  %7608 = getelementptr [8 x i8], [8 x i8]* @.str1000, i32 0, i32 0
  %7609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %7608, i64 7)
  %7610 = call i1 @nyx_string_starts_with(%nyx_string* %7607, %nyx_string* %7609)
  br i1 %7610, label %sc_or_end1336, label %sc_or_rhs1335
sc_or_rhs1335:
  %7611 = load %nyx_string*, %nyx_string** %name.ptr
  %7612 = getelementptr [4 x i8], [4 x i8]* @.str1001, i32 0, i32 0
  %7613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %7612, i64 3)
  %7614 = call i1 @nyx_string_equals(%nyx_string* %7611, %nyx_string* %7613)
  store i1 %7614, i1* %7606
  br label %sc_or_end1336
sc_or_end1336:
  %7615 = load i1, i1* %7606
  br i1 %7615, label %sc_or_end1338, label %sc_or_rhs1337
sc_or_rhs1337:
  %7616 = load %nyx_string*, %nyx_string** %name.ptr
  %7617 = getelementptr [5 x i8], [5 x i8]* @.str1002, i32 0, i32 0
  %7618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %7617, i64 4)
  %7619 = call i1 @nyx_string_equals(%nyx_string* %7616, %nyx_string* %7618)
  store i1 %7619, i1* %7605
  br label %sc_or_end1338
sc_or_end1338:
  %7620 = load i1, i1* %7605
  br i1 %7620, label %then1339, label %else1340
then1339:
  %7621 = getelementptr [11 x i8], [11 x i8]* @.str1003, i32 0, i32 0
  %7622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %7621, i64 10)
  ret %nyx_string* %7622
else1340:
  br label %merge1341
merge1341:
  %7623 = alloca i1
  store i1 true, i1* %7623
  %7624 = alloca i1
  store i1 true, i1* %7624
  %7625 = load %nyx_string*, %nyx_string** %name.ptr
  %7626 = getelementptr [7 x i8], [7 x i8]* @.str1004, i32 0, i32 0
  %7627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %7626, i64 6)
  %7628 = call i1 @nyx_string_equals(%nyx_string* %7625, %nyx_string* %7627)
  br i1 %7628, label %sc_or_end1343, label %sc_or_rhs1342
sc_or_rhs1342:
  %7629 = load %nyx_string*, %nyx_string** %name.ptr
  %7630 = getelementptr [3 x i8], [3 x i8]* @.str1005, i32 0, i32 0
  %7631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %7630, i64 2)
  %7632 = call i1 @nyx_string_equals(%nyx_string* %7629, %nyx_string* %7631)
  store i1 %7632, i1* %7624
  br label %sc_or_end1343
sc_or_end1343:
  %7633 = load i1, i1* %7624
  br i1 %7633, label %sc_or_end1345, label %sc_or_rhs1344
sc_or_rhs1344:
  %7634 = load %nyx_string*, %nyx_string** %name.ptr
  %7635 = getelementptr [9 x i8], [9 x i8]* @.str1006, i32 0, i32 0
  %7636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %7635, i64 8)
  %7637 = call i1 @nyx_string_equals(%nyx_string* %7634, %nyx_string* %7636)
  store i1 %7637, i1* %7623
  br label %sc_or_end1345
sc_or_end1345:
  %7638 = load i1, i1* %7623
  br i1 %7638, label %then1346, label %else1347
then1346:
  %7639 = getelementptr [20 x i8], [20 x i8]* @.str1007, i32 0, i32 0
  %7640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %7639, i64 19)
  ret %nyx_string* %7640
else1347:
  br label %merge1348
merge1348:
  %7641 = alloca i1
  store i1 true, i1* %7641
  %7642 = alloca i1
  store i1 true, i1* %7642
  %7643 = alloca i1
  store i1 true, i1* %7643
  %7644 = alloca i1
  store i1 true, i1* %7644
  %7645 = alloca i1
  store i1 true, i1* %7645
  %7646 = alloca i1
  store i1 true, i1* %7646
  %7647 = alloca i1
  store i1 true, i1* %7647
  %7648 = load %nyx_string*, %nyx_string** %name.ptr
  %7649 = getelementptr [5 x i8], [5 x i8]* @.str1008, i32 0, i32 0
  %7650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %7649, i64 4)
  %7651 = call i1 @nyx_string_equals(%nyx_string* %7648, %nyx_string* %7650)
  br i1 %7651, label %sc_or_end1350, label %sc_or_rhs1349
sc_or_rhs1349:
  %7652 = load %nyx_string*, %nyx_string** %name.ptr
  %7653 = getelementptr [8 x i8], [8 x i8]* @.str1009, i32 0, i32 0
  %7654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %7653, i64 7)
  %7655 = call i1 @nyx_string_equals(%nyx_string* %7652, %nyx_string* %7654)
  store i1 %7655, i1* %7647
  br label %sc_or_end1350
sc_or_end1350:
  %7656 = load i1, i1* %7647
  br i1 %7656, label %sc_or_end1352, label %sc_or_rhs1351
sc_or_rhs1351:
  %7657 = load %nyx_string*, %nyx_string** %name.ptr
  %7658 = getelementptr [5 x i8], [5 x i8]* @.str1010, i32 0, i32 0
  %7659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %7658, i64 4)
  %7660 = call i1 @nyx_string_equals(%nyx_string* %7657, %nyx_string* %7659)
  store i1 %7660, i1* %7646
  br label %sc_or_end1352
sc_or_end1352:
  %7661 = load i1, i1* %7646
  br i1 %7661, label %sc_or_end1354, label %sc_or_rhs1353
sc_or_rhs1353:
  %7662 = load %nyx_string*, %nyx_string** %name.ptr
  %7663 = getelementptr [4 x i8], [4 x i8]* @.str1011, i32 0, i32 0
  %7664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %7663, i64 3)
  %7665 = call i1 @nyx_string_equals(%nyx_string* %7662, %nyx_string* %7664)
  store i1 %7665, i1* %7645
  br label %sc_or_end1354
sc_or_end1354:
  %7666 = load i1, i1* %7645
  br i1 %7666, label %sc_or_end1356, label %sc_or_rhs1355
sc_or_rhs1355:
  %7667 = load %nyx_string*, %nyx_string** %name.ptr
  %7668 = getelementptr [7 x i8], [7 x i8]* @.str1012, i32 0, i32 0
  %7669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %7668, i64 6)
  %7670 = call i1 @nyx_string_equals(%nyx_string* %7667, %nyx_string* %7669)
  store i1 %7670, i1* %7644
  br label %sc_or_end1356
sc_or_end1356:
  %7671 = load i1, i1* %7644
  br i1 %7671, label %sc_or_end1358, label %sc_or_rhs1357
sc_or_rhs1357:
  %7672 = load %nyx_string*, %nyx_string** %name.ptr
  %7673 = getelementptr [9 x i8], [9 x i8]* @.str1013, i32 0, i32 0
  %7674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %7673, i64 8)
  %7675 = call i1 @nyx_string_equals(%nyx_string* %7672, %nyx_string* %7674)
  store i1 %7675, i1* %7643
  br label %sc_or_end1358
sc_or_end1358:
  %7676 = load i1, i1* %7643
  br i1 %7676, label %sc_or_end1360, label %sc_or_rhs1359
sc_or_rhs1359:
  %7677 = load %nyx_string*, %nyx_string** %name.ptr
  %7678 = getelementptr [8 x i8], [8 x i8]* @.str1014, i32 0, i32 0
  %7679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %7678, i64 7)
  %7680 = call i1 @nyx_string_equals(%nyx_string* %7677, %nyx_string* %7679)
  store i1 %7680, i1* %7642
  br label %sc_or_end1360
sc_or_end1360:
  %7681 = load i1, i1* %7642
  br i1 %7681, label %sc_or_end1362, label %sc_or_rhs1361
sc_or_rhs1361:
  %7682 = load %nyx_string*, %nyx_string** %name.ptr
  %7683 = getelementptr [4 x i8], [4 x i8]* @.str1015, i32 0, i32 0
  %7684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %7683, i64 3)
  %7685 = call i1 @nyx_string_equals(%nyx_string* %7682, %nyx_string* %7684)
  store i1 %7685, i1* %7641
  br label %sc_or_end1362
sc_or_end1362:
  %7686 = load i1, i1* %7641
  br i1 %7686, label %then1363, label %else1364
then1363:
  %7687 = getelementptr [23 x i8], [23 x i8]* @.str1016, i32 0, i32 0
  %7688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %7687, i64 22)
  ret %nyx_string* %7688
else1364:
  br label %merge1365
merge1365:
  %7689 = alloca i1
  store i1 true, i1* %7689
  %7690 = alloca i1
  store i1 true, i1* %7690
  %7691 = alloca i1
  store i1 true, i1* %7691
  %7692 = load %nyx_string*, %nyx_string** %name.ptr
  %7693 = getelementptr [3 x i8], [3 x i8]* @.str1017, i32 0, i32 0
  %7694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %7693, i64 2)
  %7695 = call i1 @nyx_string_equals(%nyx_string* %7692, %nyx_string* %7694)
  br i1 %7695, label %sc_or_end1367, label %sc_or_rhs1366
sc_or_rhs1366:
  %7696 = load %nyx_string*, %nyx_string** %name.ptr
  %7697 = getelementptr [5 x i8], [5 x i8]* @.str1018, i32 0, i32 0
  %7698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %7697, i64 4)
  %7699 = call i1 @nyx_string_equals(%nyx_string* %7696, %nyx_string* %7698)
  store i1 %7699, i1* %7691
  br label %sc_or_end1367
sc_or_end1367:
  %7700 = load i1, i1* %7691
  br i1 %7700, label %sc_or_end1369, label %sc_or_rhs1368
sc_or_rhs1368:
  %7701 = load %nyx_string*, %nyx_string** %name.ptr
  %7702 = getelementptr [3 x i8], [3 x i8]* @.str1019, i32 0, i32 0
  %7703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %7702, i64 2)
  %7704 = call i1 @nyx_string_equals(%nyx_string* %7701, %nyx_string* %7703)
  store i1 %7704, i1* %7690
  br label %sc_or_end1369
sc_or_end1369:
  %7705 = load i1, i1* %7690
  br i1 %7705, label %sc_or_end1371, label %sc_or_rhs1370
sc_or_rhs1370:
  %7706 = load %nyx_string*, %nyx_string** %name.ptr
  %7707 = getelementptr [5 x i8], [5 x i8]* @.str1020, i32 0, i32 0
  %7708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %7707, i64 4)
  %7709 = call i1 @nyx_string_equals(%nyx_string* %7706, %nyx_string* %7708)
  store i1 %7709, i1* %7689
  br label %sc_or_end1371
sc_or_end1371:
  %7710 = load i1, i1* %7689
  br i1 %7710, label %then1372, label %else1373
then1372:
  %7711 = getelementptr [15 x i8], [15 x i8]* @.str1021, i32 0, i32 0
  %7712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %7711, i64 14)
  ret %nyx_string* %7712
else1373:
  br label %merge1374
merge1374:
  %7713 = alloca i1
  store i1 true, i1* %7713
  %7714 = alloca i1
  store i1 true, i1* %7714
  %7715 = alloca i1
  store i1 true, i1* %7715
  %7716 = alloca i1
  store i1 true, i1* %7716
  %7717 = alloca i1
  store i1 true, i1* %7717
  %7718 = alloca i1
  store i1 true, i1* %7718
  %7719 = load %nyx_string*, %nyx_string** %name.ptr
  %7720 = getelementptr [4 x i8], [4 x i8]* @.str1022, i32 0, i32 0
  %7721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %7720, i64 3)
  %7722 = call i1 @nyx_string_equals(%nyx_string* %7719, %nyx_string* %7721)
  br i1 %7722, label %sc_or_end1376, label %sc_or_rhs1375
sc_or_rhs1375:
  %7723 = load %nyx_string*, %nyx_string** %name.ptr
  %7724 = getelementptr [4 x i8], [4 x i8]* @.str1023, i32 0, i32 0
  %7725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %7724, i64 3)
  %7726 = call i1 @nyx_string_equals(%nyx_string* %7723, %nyx_string* %7725)
  store i1 %7726, i1* %7718
  br label %sc_or_end1376
sc_or_end1376:
  %7727 = load i1, i1* %7718
  br i1 %7727, label %sc_or_end1378, label %sc_or_rhs1377
sc_or_rhs1377:
  %7728 = load %nyx_string*, %nyx_string** %name.ptr
  %7729 = getelementptr [4 x i8], [4 x i8]* @.str1024, i32 0, i32 0
  %7730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %7729, i64 3)
  %7731 = call i1 @nyx_string_equals(%nyx_string* %7728, %nyx_string* %7730)
  store i1 %7731, i1* %7717
  br label %sc_or_end1378
sc_or_end1378:
  %7732 = load i1, i1* %7717
  br i1 %7732, label %sc_or_end1380, label %sc_or_rhs1379
sc_or_rhs1379:
  %7733 = load %nyx_string*, %nyx_string** %name.ptr
  %7734 = getelementptr [6 x i8], [6 x i8]* @.str1025, i32 0, i32 0
  %7735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %7734, i64 5)
  %7736 = call i1 @nyx_string_equals(%nyx_string* %7733, %nyx_string* %7735)
  store i1 %7736, i1* %7716
  br label %sc_or_end1380
sc_or_end1380:
  %7737 = load i1, i1* %7716
  br i1 %7737, label %sc_or_end1382, label %sc_or_rhs1381
sc_or_rhs1381:
  %7738 = load %nyx_string*, %nyx_string** %name.ptr
  %7739 = getelementptr [4 x i8], [4 x i8]* @.str1026, i32 0, i32 0
  %7740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %7739, i64 3)
  %7741 = call i1 @nyx_string_equals(%nyx_string* %7738, %nyx_string* %7740)
  store i1 %7741, i1* %7715
  br label %sc_or_end1382
sc_or_end1382:
  %7742 = load i1, i1* %7715
  br i1 %7742, label %sc_or_end1384, label %sc_or_rhs1383
sc_or_rhs1383:
  %7743 = load %nyx_string*, %nyx_string** %name.ptr
  %7744 = getelementptr [4 x i8], [4 x i8]* @.str1027, i32 0, i32 0
  %7745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %7744, i64 3)
  %7746 = call i1 @nyx_string_equals(%nyx_string* %7743, %nyx_string* %7745)
  store i1 %7746, i1* %7714
  br label %sc_or_end1384
sc_or_end1384:
  %7747 = load i1, i1* %7714
  br i1 %7747, label %sc_or_end1386, label %sc_or_rhs1385
sc_or_rhs1385:
  %7748 = load %nyx_string*, %nyx_string** %name.ptr
  %7749 = getelementptr [5 x i8], [5 x i8]* @.str1028, i32 0, i32 0
  %7750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %7749, i64 4)
  %7751 = call i1 @nyx_string_equals(%nyx_string* %7748, %nyx_string* %7750)
  store i1 %7751, i1* %7713
  br label %sc_or_end1386
sc_or_end1386:
  %7752 = load i1, i1* %7713
  br i1 %7752, label %then1387, label %else1388
then1387:
  %7753 = getelementptr [4 x i8], [4 x i8]* @.str1029, i32 0, i32 0
  %7754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %7753, i64 3)
  ret %nyx_string* %7754
else1388:
  br label %merge1389
merge1389:
  %7755 = alloca i1
  store i1 true, i1* %7755
  %7756 = alloca i1
  store i1 true, i1* %7756
  %7757 = alloca i1
  store i1 true, i1* %7757
  %7758 = alloca i1
  store i1 true, i1* %7758
  %7759 = load %nyx_string*, %nyx_string** %name.ptr
  %7760 = getelementptr [7 x i8], [7 x i8]* @.str1030, i32 0, i32 0
  %7761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %7760, i64 6)
  %7762 = call i1 @nyx_string_equals(%nyx_string* %7759, %nyx_string* %7761)
  br i1 %7762, label %sc_or_end1391, label %sc_or_rhs1390
sc_or_rhs1390:
  %7763 = load %nyx_string*, %nyx_string** %name.ptr
  %7764 = getelementptr [8 x i8], [8 x i8]* @.str1031, i32 0, i32 0
  %7765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %7764, i64 7)
  %7766 = call i1 @nyx_string_equals(%nyx_string* %7763, %nyx_string* %7765)
  store i1 %7766, i1* %7758
  br label %sc_or_end1391
sc_or_end1391:
  %7767 = load i1, i1* %7758
  br i1 %7767, label %sc_or_end1393, label %sc_or_rhs1392
sc_or_rhs1392:
  %7768 = load %nyx_string*, %nyx_string** %name.ptr
  %7769 = getelementptr [10 x i8], [10 x i8]* @.str1032, i32 0, i32 0
  %7770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %7769, i64 9)
  %7771 = call i1 @nyx_string_equals(%nyx_string* %7768, %nyx_string* %7770)
  store i1 %7771, i1* %7757
  br label %sc_or_end1393
sc_or_end1393:
  %7772 = load i1, i1* %7757
  br i1 %7772, label %sc_or_end1395, label %sc_or_rhs1394
sc_or_rhs1394:
  %7773 = load %nyx_string*, %nyx_string** %name.ptr
  %7774 = getelementptr [5 x i8], [5 x i8]* @.str1033, i32 0, i32 0
  %7775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %7774, i64 4)
  %7776 = call i1 @nyx_string_equals(%nyx_string* %7773, %nyx_string* %7775)
  store i1 %7776, i1* %7756
  br label %sc_or_end1395
sc_or_end1395:
  %7777 = load i1, i1* %7756
  br i1 %7777, label %sc_or_end1397, label %sc_or_rhs1396
sc_or_rhs1396:
  %7778 = load %nyx_string*, %nyx_string** %name.ptr
  %7779 = getelementptr [6 x i8], [6 x i8]* @.str1034, i32 0, i32 0
  %7780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %7779, i64 5)
  %7781 = call i1 @nyx_string_equals(%nyx_string* %7778, %nyx_string* %7780)
  store i1 %7781, i1* %7755
  br label %sc_or_end1397
sc_or_end1397:
  %7782 = load i1, i1* %7755
  br i1 %7782, label %then1398, label %else1399
then1398:
  %7783 = getelementptr [13 x i8], [13 x i8]* @.str1035, i32 0, i32 0
  %7784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %7783, i64 12)
  ret %nyx_string* %7784
else1399:
  br label %merge1400
merge1400:
  %7785 = alloca i1
  store i1 true, i1* %7785
  %7786 = alloca i1
  store i1 true, i1* %7786
  %7787 = alloca i1
  store i1 true, i1* %7787
  %7788 = alloca i1
  store i1 true, i1* %7788
  %7789 = load %nyx_string*, %nyx_string** %name.ptr
  %7790 = getelementptr [7 x i8], [7 x i8]* @.str1036, i32 0, i32 0
  %7791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %7790, i64 6)
  %7792 = call i1 @nyx_string_equals(%nyx_string* %7789, %nyx_string* %7791)
  br i1 %7792, label %sc_or_end1402, label %sc_or_rhs1401
sc_or_rhs1401:
  %7793 = load %nyx_string*, %nyx_string** %name.ptr
  %7794 = getelementptr [4 x i8], [4 x i8]* @.str1037, i32 0, i32 0
  %7795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %7794, i64 3)
  %7796 = call i1 @nyx_string_equals(%nyx_string* %7793, %nyx_string* %7795)
  store i1 %7796, i1* %7788
  br label %sc_or_end1402
sc_or_end1402:
  %7797 = load i1, i1* %7788
  br i1 %7797, label %sc_or_end1404, label %sc_or_rhs1403
sc_or_rhs1403:
  %7798 = load %nyx_string*, %nyx_string** %name.ptr
  %7799 = getelementptr [5 x i8], [5 x i8]* @.str1038, i32 0, i32 0
  %7800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %7799, i64 4)
  %7801 = call i1 @nyx_string_equals(%nyx_string* %7798, %nyx_string* %7800)
  store i1 %7801, i1* %7787
  br label %sc_or_end1404
sc_or_end1404:
  %7802 = load i1, i1* %7787
  br i1 %7802, label %sc_or_end1406, label %sc_or_rhs1405
sc_or_rhs1405:
  %7803 = load %nyx_string*, %nyx_string** %name.ptr
  %7804 = getelementptr [7 x i8], [7 x i8]* @.str1039, i32 0, i32 0
  %7805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %7804, i64 6)
  %7806 = call i1 @nyx_string_equals(%nyx_string* %7803, %nyx_string* %7805)
  store i1 %7806, i1* %7786
  br label %sc_or_end1406
sc_or_end1406:
  %7807 = load i1, i1* %7786
  br i1 %7807, label %sc_or_end1408, label %sc_or_rhs1407
sc_or_rhs1407:
  %7808 = load %nyx_string*, %nyx_string** %name.ptr
  %7809 = getelementptr [5 x i8], [5 x i8]* @.str1040, i32 0, i32 0
  %7810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %7809, i64 4)
  %7811 = call i1 @nyx_string_equals(%nyx_string* %7808, %nyx_string* %7810)
  store i1 %7811, i1* %7785
  br label %sc_or_end1408
sc_or_end1408:
  %7812 = load i1, i1* %7785
  br i1 %7812, label %then1409, label %else1410
then1409:
  %7813 = getelementptr [19 x i8], [19 x i8]* @.str1041, i32 0, i32 0
  %7814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %7813, i64 18)
  ret %nyx_string* %7814
else1410:
  br label %merge1411
merge1411:
  %7815 = alloca i1
  store i1 true, i1* %7815
  %7816 = load %nyx_string*, %nyx_string** %name.ptr
  %7817 = getelementptr [5 x i8], [5 x i8]* @.str1042, i32 0, i32 0
  %7818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %7817, i64 4)
  %7819 = call i1 @nyx_string_equals(%nyx_string* %7816, %nyx_string* %7818)
  br i1 %7819, label %sc_or_end1413, label %sc_or_rhs1412
sc_or_rhs1412:
  %7820 = load %nyx_string*, %nyx_string** %name.ptr
  %7821 = getelementptr [9 x i8], [9 x i8]* @.str1043, i32 0, i32 0
  %7822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %7821, i64 8)
  %7823 = call i1 @nyx_string_equals(%nyx_string* %7820, %nyx_string* %7822)
  store i1 %7823, i1* %7815
  br label %sc_or_end1413
sc_or_end1413:
  %7824 = load i1, i1* %7815
  br i1 %7824, label %then1414, label %else1415
then1414:
  %7825 = getelementptr [7 x i8], [7 x i8]* @.str1044, i32 0, i32 0
  %7826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %7825, i64 6)
  ret %nyx_string* %7826
else1415:
  br label %merge1416
merge1416:
  %7827 = alloca i1
  store i1 true, i1* %7827
  %7828 = alloca i1
  store i1 true, i1* %7828
  %7829 = alloca i1
  store i1 true, i1* %7829
  %7830 = load %nyx_string*, %nyx_string** %name.ptr
  %7831 = getelementptr [7 x i8], [7 x i8]* @.str1045, i32 0, i32 0
  %7832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %7831, i64 6)
  %7833 = call i1 @nyx_string_equals(%nyx_string* %7830, %nyx_string* %7832)
  br i1 %7833, label %sc_or_end1418, label %sc_or_rhs1417
sc_or_rhs1417:
  %7834 = load %nyx_string*, %nyx_string** %name.ptr
  %7835 = getelementptr [8 x i8], [8 x i8]* @.str1046, i32 0, i32 0
  %7836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %7835, i64 7)
  %7837 = call i1 @nyx_string_equals(%nyx_string* %7834, %nyx_string* %7836)
  store i1 %7837, i1* %7829
  br label %sc_or_end1418
sc_or_end1418:
  %7838 = load i1, i1* %7829
  br i1 %7838, label %sc_or_end1420, label %sc_or_rhs1419
sc_or_rhs1419:
  %7839 = load %nyx_string*, %nyx_string** %name.ptr
  %7840 = getelementptr [14 x i8], [14 x i8]* @.str1047, i32 0, i32 0
  %7841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %7840, i64 13)
  %7842 = call i1 @nyx_string_equals(%nyx_string* %7839, %nyx_string* %7841)
  store i1 %7842, i1* %7828
  br label %sc_or_end1420
sc_or_end1420:
  %7843 = load i1, i1* %7828
  br i1 %7843, label %sc_or_end1422, label %sc_or_rhs1421
sc_or_rhs1421:
  %7844 = load %nyx_string*, %nyx_string** %name.ptr
  %7845 = getelementptr [6 x i8], [6 x i8]* @.str1048, i32 0, i32 0
  %7846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %7845, i64 5)
  %7847 = call i1 @nyx_string_equals(%nyx_string* %7844, %nyx_string* %7846)
  store i1 %7847, i1* %7827
  br label %sc_or_end1422
sc_or_end1422:
  %7848 = load i1, i1* %7827
  br i1 %7848, label %then1423, label %else1424
then1423:
  %7849 = getelementptr [16 x i8], [16 x i8]* @.str1049, i32 0, i32 0
  %7850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %7849, i64 15)
  ret %nyx_string* %7850
else1424:
  br label %merge1425
merge1425:
  %7851 = alloca i1
  store i1 true, i1* %7851
  %7852 = alloca i1
  store i1 true, i1* %7852
  %7853 = alloca i1
  store i1 true, i1* %7853
  %7854 = alloca i1
  store i1 true, i1* %7854
  %7855 = alloca i1
  store i1 true, i1* %7855
  %7856 = alloca i1
  store i1 true, i1* %7856
  %7857 = alloca i1
  store i1 true, i1* %7857
  %7858 = load %nyx_string*, %nyx_string** %name.ptr
  %7859 = getelementptr [4 x i8], [4 x i8]* @.str1050, i32 0, i32 0
  %7860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %7859, i64 3)
  %7861 = call i1 @nyx_string_equals(%nyx_string* %7858, %nyx_string* %7860)
  br i1 %7861, label %sc_or_end1427, label %sc_or_rhs1426
sc_or_rhs1426:
  %7862 = load %nyx_string*, %nyx_string** %name.ptr
  %7863 = getelementptr [6 x i8], [6 x i8]* @.str1051, i32 0, i32 0
  %7864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %7863, i64 5)
  %7865 = call i1 @nyx_string_equals(%nyx_string* %7862, %nyx_string* %7864)
  store i1 %7865, i1* %7857
  br label %sc_or_end1427
sc_or_end1427:
  %7866 = load i1, i1* %7857
  br i1 %7866, label %sc_or_end1429, label %sc_or_rhs1428
sc_or_rhs1428:
  %7867 = load %nyx_string*, %nyx_string** %name.ptr
  %7868 = getelementptr [11 x i8], [11 x i8]* @.str1052, i32 0, i32 0
  %7869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %7868, i64 10)
  %7870 = call i1 @nyx_string_equals(%nyx_string* %7867, %nyx_string* %7869)
  store i1 %7870, i1* %7856
  br label %sc_or_end1429
sc_or_end1429:
  %7871 = load i1, i1* %7856
  br i1 %7871, label %sc_or_end1431, label %sc_or_rhs1430
sc_or_rhs1430:
  %7872 = load %nyx_string*, %nyx_string** %name.ptr
  %7873 = getelementptr [6 x i8], [6 x i8]* @.str1053, i32 0, i32 0
  %7874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %7873, i64 5)
  %7875 = call i1 @nyx_string_equals(%nyx_string* %7872, %nyx_string* %7874)
  store i1 %7875, i1* %7855
  br label %sc_or_end1431
sc_or_end1431:
  %7876 = load i1, i1* %7855
  br i1 %7876, label %sc_or_end1433, label %sc_or_rhs1432
sc_or_rhs1432:
  %7877 = load %nyx_string*, %nyx_string** %name.ptr
  %7878 = getelementptr [9 x i8], [9 x i8]* @.str1054, i32 0, i32 0
  %7879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %7878, i64 8)
  %7880 = call i1 @nyx_string_equals(%nyx_string* %7877, %nyx_string* %7879)
  store i1 %7880, i1* %7854
  br label %sc_or_end1433
sc_or_end1433:
  %7881 = load i1, i1* %7854
  br i1 %7881, label %sc_or_end1435, label %sc_or_rhs1434
sc_or_rhs1434:
  %7882 = load %nyx_string*, %nyx_string** %name.ptr
  %7883 = getelementptr [14 x i8], [14 x i8]* @.str1055, i32 0, i32 0
  %7884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %7883, i64 13)
  %7885 = call i1 @nyx_string_equals(%nyx_string* %7882, %nyx_string* %7884)
  store i1 %7885, i1* %7853
  br label %sc_or_end1435
sc_or_end1435:
  %7886 = load i1, i1* %7853
  br i1 %7886, label %sc_or_end1437, label %sc_or_rhs1436
sc_or_rhs1436:
  %7887 = load %nyx_string*, %nyx_string** %name.ptr
  %7888 = getelementptr [6 x i8], [6 x i8]* @.str1056, i32 0, i32 0
  %7889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %7888, i64 5)
  %7890 = call i1 @nyx_string_equals(%nyx_string* %7887, %nyx_string* %7889)
  store i1 %7890, i1* %7852
  br label %sc_or_end1437
sc_or_end1437:
  %7891 = load i1, i1* %7852
  br i1 %7891, label %sc_or_end1439, label %sc_or_rhs1438
sc_or_rhs1438:
  %7892 = load %nyx_string*, %nyx_string** %name.ptr
  %7893 = getelementptr [7 x i8], [7 x i8]* @.str1057, i32 0, i32 0
  %7894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %7893, i64 6)
  %7895 = call i1 @nyx_string_equals(%nyx_string* %7892, %nyx_string* %7894)
  store i1 %7895, i1* %7851
  br label %sc_or_end1439
sc_or_end1439:
  %7896 = load i1, i1* %7851
  br i1 %7896, label %then1440, label %else1441
then1440:
  %7897 = getelementptr [26 x i8], [26 x i8]* @.str1058, i32 0, i32 0
  %7898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %7897, i64 25)
  ret %nyx_string* %7898
else1441:
  br label %merge1442
merge1442:
  %7899 = alloca i1
  store i1 true, i1* %7899
  %7900 = alloca i1
  store i1 true, i1* %7900
  %7901 = alloca i1
  store i1 true, i1* %7901
  %7902 = load %nyx_string*, %nyx_string** %name.ptr
  %7903 = getelementptr [6 x i8], [6 x i8]* @.str1059, i32 0, i32 0
  %7904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %7903, i64 5)
  %7905 = call i1 @nyx_string_equals(%nyx_string* %7902, %nyx_string* %7904)
  br i1 %7905, label %sc_or_end1444, label %sc_or_rhs1443
sc_or_rhs1443:
  %7906 = load %nyx_string*, %nyx_string** %name.ptr
  %7907 = getelementptr [4 x i8], [4 x i8]* @.str1060, i32 0, i32 0
  %7908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %7907, i64 3)
  %7909 = call i1 @nyx_string_equals(%nyx_string* %7906, %nyx_string* %7908)
  store i1 %7909, i1* %7901
  br label %sc_or_end1444
sc_or_end1444:
  %7910 = load i1, i1* %7901
  br i1 %7910, label %sc_or_end1446, label %sc_or_rhs1445
sc_or_rhs1445:
  %7911 = load %nyx_string*, %nyx_string** %name.ptr
  %7912 = getelementptr [3 x i8], [3 x i8]* @.str1061, i32 0, i32 0
  %7913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %7912, i64 2)
  %7914 = call i1 @nyx_string_equals(%nyx_string* %7911, %nyx_string* %7913)
  store i1 %7914, i1* %7900
  br label %sc_or_end1446
sc_or_end1446:
  %7915 = load i1, i1* %7900
  br i1 %7915, label %sc_or_end1448, label %sc_or_rhs1447
sc_or_rhs1447:
  %7916 = load %nyx_string*, %nyx_string** %name.ptr
  %7917 = getelementptr [10 x i8], [10 x i8]* @.str1062, i32 0, i32 0
  %7918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %7917, i64 9)
  %7919 = call i1 @nyx_string_equals(%nyx_string* %7916, %nyx_string* %7918)
  store i1 %7919, i1* %7899
  br label %sc_or_end1448
sc_or_end1448:
  %7920 = load i1, i1* %7899
  br i1 %7920, label %then1449, label %else1450
then1449:
  %7921 = getelementptr [8 x i8], [8 x i8]* @.str1063, i32 0, i32 0
  %7922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %7921, i64 7)
  ret %nyx_string* %7922
else1450:
  br label %merge1451
merge1451:
  %7923 = alloca i1
  store i1 true, i1* %7923
  %7924 = alloca i1
  store i1 true, i1* %7924
  %7925 = alloca i1
  store i1 true, i1* %7925
  %7926 = alloca i1
  store i1 true, i1* %7926
  %7927 = alloca i1
  store i1 true, i1* %7927
  %7928 = alloca i1
  store i1 true, i1* %7928
  %7929 = load %nyx_string*, %nyx_string** %name.ptr
  %7930 = getelementptr [5 x i8], [5 x i8]* @.str1064, i32 0, i32 0
  %7931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %7930, i64 4)
  %7932 = call i1 @nyx_string_equals(%nyx_string* %7929, %nyx_string* %7931)
  br i1 %7932, label %sc_or_end1453, label %sc_or_rhs1452
sc_or_rhs1452:
  %7933 = load %nyx_string*, %nyx_string** %name.ptr
  %7934 = getelementptr [4 x i8], [4 x i8]* @.str1065, i32 0, i32 0
  %7935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %7934, i64 3)
  %7936 = call i1 @nyx_string_equals(%nyx_string* %7933, %nyx_string* %7935)
  store i1 %7936, i1* %7928
  br label %sc_or_end1453
sc_or_end1453:
  %7937 = load i1, i1* %7928
  br i1 %7937, label %sc_or_end1455, label %sc_or_rhs1454
sc_or_rhs1454:
  %7938 = load %nyx_string*, %nyx_string** %name.ptr
  %7939 = getelementptr [4 x i8], [4 x i8]* @.str1066, i32 0, i32 0
  %7940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %7939, i64 3)
  %7941 = call i1 @nyx_string_equals(%nyx_string* %7938, %nyx_string* %7940)
  store i1 %7941, i1* %7927
  br label %sc_or_end1455
sc_or_end1455:
  %7942 = load i1, i1* %7927
  br i1 %7942, label %sc_or_end1457, label %sc_or_rhs1456
sc_or_rhs1456:
  %7943 = load %nyx_string*, %nyx_string** %name.ptr
  %7944 = getelementptr [8 x i8], [8 x i8]* @.str1067, i32 0, i32 0
  %7945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %7944, i64 7)
  %7946 = call i1 @nyx_string_equals(%nyx_string* %7943, %nyx_string* %7945)
  store i1 %7946, i1* %7926
  br label %sc_or_end1457
sc_or_end1457:
  %7947 = load i1, i1* %7926
  br i1 %7947, label %sc_or_end1459, label %sc_or_rhs1458
sc_or_rhs1458:
  %7948 = load %nyx_string*, %nyx_string** %name.ptr
  %7949 = getelementptr [7 x i8], [7 x i8]* @.str1068, i32 0, i32 0
  %7950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %7949, i64 6)
  %7951 = call i1 @nyx_string_equals(%nyx_string* %7948, %nyx_string* %7950)
  store i1 %7951, i1* %7925
  br label %sc_or_end1459
sc_or_end1459:
  %7952 = load i1, i1* %7925
  br i1 %7952, label %sc_or_end1461, label %sc_or_rhs1460
sc_or_rhs1460:
  %7953 = load %nyx_string*, %nyx_string** %name.ptr
  %7954 = getelementptr [8 x i8], [8 x i8]* @.str1069, i32 0, i32 0
  %7955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %7954, i64 7)
  %7956 = call i1 @nyx_string_equals(%nyx_string* %7953, %nyx_string* %7955)
  store i1 %7956, i1* %7924
  br label %sc_or_end1461
sc_or_end1461:
  %7957 = load i1, i1* %7924
  br i1 %7957, label %sc_or_end1463, label %sc_or_rhs1462
sc_or_rhs1462:
  %7958 = load %nyx_string*, %nyx_string** %name.ptr
  %7959 = getelementptr [11 x i8], [11 x i8]* @.str1070, i32 0, i32 0
  %7960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %7959, i64 10)
  %7961 = call i1 @nyx_string_equals(%nyx_string* %7958, %nyx_string* %7960)
  store i1 %7961, i1* %7923
  br label %sc_or_end1463
sc_or_end1463:
  %7962 = load i1, i1* %7923
  br i1 %7962, label %then1464, label %else1465
then1464:
  %7963 = getelementptr [14 x i8], [14 x i8]* @.str1071, i32 0, i32 0
  %7964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %7963, i64 13)
  ret %nyx_string* %7964
else1465:
  br label %merge1466
merge1466:
  %7965 = getelementptr [1 x i8], [1 x i8]* @.str1072, i32 0, i32 0
  %7966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %7965, i64 0)
  ret %nyx_string* %7966
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %7967 = alloca i64
  store i64 0, i64* %7967
  %7968 = alloca i64
  store i64 0, i64* %7968
  %7969 = call i8* @llvm.stacksave()
  br label %while_cond1467
while_cond1467:
  %7970 = load i64, i64* %7968
  %7971 = load %nyx_string*, %nyx_string** %s.ptr
  %7972 = call i64 @nyx_string_byte_length(%nyx_string* %7971)
  %7973 = icmp slt i64 %7970, %7972
  br i1 %7973, label %while_body1468, label %while_end1469
while_body1468:
  call void @llvm.stackrestore(i8* %7969)
  %7974 = load %nyx_string*, %nyx_string** %s.ptr
  %7975 = load i64, i64* %7968
  %7976 = call i8 @nyx_string_char_at(%nyx_string* %7974, i64 %7975)
  %7977 = zext i8 %7976 to i64
  %7978 = trunc i64 %7977 to i8
  %7979 = alloca i8
  store i8 %7978, i8* %7979
  %7980 = load i8, i8* %7979
  %7981 = getelementptr [1 x i8], [1 x i8]* @.str1073, i32 0, i32 0
  %7982 = load i8, i8* %7981
  %7983 = zext i8 %7982 to i64
  %7984 = zext i8 %7980 to i64
  %7985 = icmp eq i64 %7984, %7983
  br i1 %7985, label %then1470, label %else1471
then1470:
  %7986 = load i64, i64* %7967
  %7987 = add i64 %7986, 1
  store i64 %7987, i64* %7967
  br label %merge1472
else1471:
  br label %merge1472
merge1472:
  %7988 = load i8, i8* %7979
  %7989 = getelementptr [1 x i8], [1 x i8]* @.str1074, i32 0, i32 0
  %7990 = load i8, i8* %7989
  %7991 = zext i8 %7990 to i64
  %7992 = zext i8 %7988 to i64
  %7993 = icmp eq i64 %7992, %7991
  br i1 %7993, label %then1473, label %else1474
then1473:
  %7994 = load i64, i64* %7967
  %7995 = sub i64 %7994, 1
  store i64 %7995, i64* %7967
  br label %merge1475
else1474:
  br label %merge1475
merge1475:
  %7996 = load i64, i64* %7968
  %7997 = add i64 %7996, 1
  store i64 %7997, i64* %7968
  br label %while_cond1467
while_end1469:
  %7998 = load i64, i64* %7967
  ret i64 %7998
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %7999 = load %nyx_string*, %nyx_string** %filename.ptr
  %8000 = load %nyx_string*, %nyx_string** %filename.ptr
  %8001 = call i64 @nyx_string_byte_length(%nyx_string* %8000)
  %8002 = sub i64 %8001, 3
  %8003 = call %nyx_string* @nyx_string_substring(%nyx_string* %7999, i64 0, i64 %8002)
  %8004 = alloca %nyx_string*
  store %nyx_string* %8003, %nyx_string** %8004
  %8005 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %8006 = getelementptr [2 x i8], [2 x i8]* @.str1075, i32 0, i32 0
  %8007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %8006, i64 1)
  %8008 = call %nyx_string* @nyx_string_concat(%nyx_string* %8005, %nyx_string* %8007)
  %8009 = load %nyx_string*, %nyx_string** %filename.ptr
  %8010 = call %nyx_string* @nyx_string_concat(%nyx_string* %8008, %nyx_string* %8009)
  %8011 = call i8* @nyx_string_to_cstr(%nyx_string* %8010)
  %8012 = call %nyx_string* @nyx_read_file(i8* %8011)
  %8013 = alloca %nyx_string*
  store %nyx_string* %8012, %nyx_string** %8013
  %8014 = load %nyx_string*, %nyx_string** %8013
  %8015 = getelementptr [2 x i8], [2 x i8]* @.str1076, i32 0, i32 0
  %8016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %8015, i64 1)
  %8017 = call { i64, i8* }* @nyx_string_split(%nyx_string* %8014, %nyx_string* %8016)
  %8018 = alloca { i64, i8* }*
  store { i64, i8* }* %8017, { i64, i8* }** %8018
  %8019 = getelementptr [1 x i8], [1 x i8]* @.str1077, i32 0, i32 0
  %8020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %8019, i64 0)
  %8021 = alloca %nyx_string*
  store %nyx_string* %8020, %nyx_string** %8021
  %8022 = getelementptr [1 x i8], [1 x i8]* @.str1078, i32 0, i32 0
  %8023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %8022, i64 0)
  %8024 = alloca %nyx_string*
  store %nyx_string* %8023, %nyx_string** %8024
  %8025 = alloca i64
  store i64 0, i64* %8025
  %8026 = alloca i64
  store i64 0, i64* %8026
  %8027 = getelementptr [4 x i8], [4 x i8]* @.str1079, i32 0, i32 0
  %8028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %8027, i64 3)
  %8029 = alloca %nyx_string*
  store %nyx_string* %8028, %nyx_string** %8029
  %8030 = getelementptr [1 x i8], [1 x i8]* @.str1080, i32 0, i32 0
  %8031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %8030, i64 0)
  %8032 = alloca %nyx_string*
  store %nyx_string* %8031, %nyx_string** %8032
  %8033 = getelementptr [2 x i8], [2 x i8]* @.str1081, i32 0, i32 0
  %8034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %8033, i64 1)
  %8035 = alloca %nyx_string*
  store %nyx_string* %8034, %nyx_string** %8035
  %8036 = getelementptr [8 x i8], [8 x i8]* @.str1082, i32 0, i32 0
  %8037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %8036, i64 7)
  %8038 = alloca %nyx_string*
  store %nyx_string* %8037, %nyx_string** %8038
  %8039 = getelementptr [11 x i8], [11 x i8]* @.str1083, i32 0, i32 0
  %8040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %8039, i64 10)
  %8041 = alloca %nyx_string*
  store %nyx_string* %8040, %nyx_string** %8041
  %8042 = getelementptr [14 x i8], [14 x i8]* @.str1084, i32 0, i32 0
  %8043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %8042, i64 13)
  %8044 = alloca %nyx_string*
  store %nyx_string* %8043, %nyx_string** %8044
  %8045 = getelementptr [17 x i8], [17 x i8]* @.str1085, i32 0, i32 0
  %8046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %8045, i64 16)
  %8047 = alloca %nyx_string*
  store %nyx_string* %8046, %nyx_string** %8047
  %8048 = getelementptr [4 x i8], [4 x i8]* @.str1086, i32 0, i32 0
  %8049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %8048, i64 3)
  %8050 = alloca %nyx_string*
  store %nyx_string* %8049, %nyx_string** %8050
  %8051 = getelementptr [2 x i8], [2 x i8]* @.str1087, i32 0, i32 0
  %8052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %8051, i64 1)
  %8053 = alloca %nyx_string*
  store %nyx_string* %8052, %nyx_string** %8053
  %8054 = getelementptr [6 x i8], [6 x i8]* @.str1088, i32 0, i32 0
  %8055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %8054, i64 5)
  %8056 = alloca %nyx_string*
  store %nyx_string* %8055, %nyx_string** %8056
  %8057 = getelementptr [2 x i8], [2 x i8]* @.str1089, i32 0, i32 0
  %8058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %8057, i64 1)
  %8059 = alloca %nyx_string*
  store %nyx_string* %8058, %nyx_string** %8059
  %8060 = call i8* @llvm.stacksave()
  br label %while_cond1476
while_cond1476:
  %8061 = load i64, i64* %8026
  %8062 = load { i64, i8* }*, { i64, i8* }** %8018
  %8063 = call i64 @nyx_array_length({ i64, i8* }* %8062)
  %8064 = icmp slt i64 %8061, %8063
  br i1 %8064, label %while_body1477, label %while_end1478
while_body1477:
  call void @llvm.stackrestore(i8* %8060)
  %8065 = load { i64, i8* }*, { i64, i8* }** %8018
  %8066 = load i64, i64* %8026
  %8067 = call i64 @nyx_array_get_checked({ i64, i8* }* %8065, i64 %8066, i64 2)
  %8068 = inttoptr i64 %8067 to %nyx_string*
  %8069 = alloca %nyx_string*
  store %nyx_string* %8068, %nyx_string** %8069
  %8070 = load %nyx_string*, %nyx_string** %8069
  %8071 = call %nyx_string* @nyx_string_trim(%nyx_string* %8070)
  %8072 = alloca %nyx_string*
  store %nyx_string* %8071, %nyx_string** %8072
  %8073 = load %nyx_string*, %nyx_string** %8072
  %8074 = load %nyx_string*, %nyx_string** %8029
  %8075 = call i1 @nyx_string_starts_with(%nyx_string* %8073, %nyx_string* %8074)
  br i1 %8075, label %then1479, label %else1480
then1479:
  %8076 = load %nyx_string*, %nyx_string** %8072
  %8077 = load %nyx_string*, %nyx_string** %8072
  %8078 = call i64 @nyx_string_byte_length(%nyx_string* %8077)
  %8079 = call %nyx_string* @nyx_string_substring(%nyx_string* %8076, i64 3, i64 %8078)
  %8080 = alloca %nyx_string*
  store %nyx_string* %8079, %nyx_string** %8080
  %8081 = load %nyx_string*, %nyx_string** %8080
  %8082 = call %nyx_string* @nyx_string_trim(%nyx_string* %8081)
  %8083 = alloca %nyx_string*
  store %nyx_string* %8082, %nyx_string** %8083
  %8084 = load %nyx_string*, %nyx_string** %8024
  %8085 = load %nyx_string*, %nyx_string** %8032
  %8086 = call i1 @nyx_string_equals(%nyx_string* %8084, %nyx_string* %8085)
  br i1 %8086, label %then1482, label %else1483
then1482:
  %8087 = load %nyx_string*, %nyx_string** %8083
  store %nyx_string* %8087, %nyx_string** %8024
  br label %merge1484
else1483:
  %8088 = load %nyx_string*, %nyx_string** %8024
  %8089 = load %nyx_string*, %nyx_string** %8035
  %8090 = call %nyx_string* @nyx_string_concat(%nyx_string* %8088, %nyx_string* %8089)
  %8091 = load %nyx_string*, %nyx_string** %8083
  %8092 = call %nyx_string* @nyx_string_concat(%nyx_string* %8090, %nyx_string* %8091)
  store %nyx_string* %8092, %nyx_string** %8024
  br label %merge1484
merge1484:
  br label %merge1481
else1480:
  %8093 = alloca i1
  store i1 true, i1* %8093
  %8094 = alloca i1
  store i1 true, i1* %8094
  %8095 = alloca i1
  store i1 true, i1* %8095
  %8096 = load %nyx_string*, %nyx_string** %8072
  %8097 = load %nyx_string*, %nyx_string** %8038
  %8098 = call i1 @nyx_string_starts_with(%nyx_string* %8096, %nyx_string* %8097)
  br i1 %8098, label %sc_or_end1486, label %sc_or_rhs1485
sc_or_rhs1485:
  %8099 = load %nyx_string*, %nyx_string** %8072
  %8100 = load %nyx_string*, %nyx_string** %8041
  %8101 = call i1 @nyx_string_starts_with(%nyx_string* %8099, %nyx_string* %8100)
  store i1 %8101, i1* %8095
  br label %sc_or_end1486
sc_or_end1486:
  %8102 = load i1, i1* %8095
  br i1 %8102, label %sc_or_end1488, label %sc_or_rhs1487
sc_or_rhs1487:
  %8103 = load %nyx_string*, %nyx_string** %8072
  %8104 = load %nyx_string*, %nyx_string** %8044
  %8105 = call i1 @nyx_string_starts_with(%nyx_string* %8103, %nyx_string* %8104)
  store i1 %8105, i1* %8094
  br label %sc_or_end1488
sc_or_end1488:
  %8106 = load i1, i1* %8094
  br i1 %8106, label %sc_or_end1490, label %sc_or_rhs1489
sc_or_rhs1489:
  %8107 = load %nyx_string*, %nyx_string** %8072
  %8108 = load %nyx_string*, %nyx_string** %8047
  %8109 = call i1 @nyx_string_starts_with(%nyx_string* %8107, %nyx_string* %8108)
  store i1 %8109, i1* %8093
  br label %sc_or_end1490
sc_or_end1490:
  %8110 = load i1, i1* %8093
  %8111 = alloca i1
  store i1 %8110, i1* %8111
  %8112 = load i1, i1* %8111
  br i1 %8112, label %then1491, label %else1492
then1491:
  %8113 = load %nyx_string*, %nyx_string** %8072
  %8114 = alloca %nyx_string*
  store %nyx_string* %8113, %nyx_string** %8114
  %8115 = load %nyx_string*, %nyx_string** %8114
  %8116 = call i64 @capabilities_paren_delta(%nyx_string* %8115)
  %8117 = alloca i64
  store i64 %8116, i64* %8117
  %8118 = call i8* @llvm.stacksave()
  br label %while_cond1494
while_cond1494:
  %8119 = alloca i1
  store i1 false, i1* %8119
  %8120 = load i64, i64* %8117
  %8121 = icmp sgt i64 %8120, 0
  br i1 %8121, label %sc_and_rhs1497, label %sc_and_end1498
sc_and_rhs1497:
  %8122 = load i64, i64* %8026
  %8123 = add i64 %8122, 1
  %8124 = load { i64, i8* }*, { i64, i8* }** %8018
  %8125 = call i64 @nyx_array_length({ i64, i8* }* %8124)
  %8126 = icmp slt i64 %8123, %8125
  store i1 %8126, i1* %8119
  br label %sc_and_end1498
sc_and_end1498:
  %8127 = load i1, i1* %8119
  br i1 %8127, label %while_body1495, label %while_end1496
while_body1495:
  call void @llvm.stackrestore(i8* %8118)
  %8128 = load i64, i64* %8026
  %8129 = add i64 %8128, 1
  store i64 %8129, i64* %8026
  %8130 = load { i64, i8* }*, { i64, i8* }** %8018
  %8131 = load i64, i64* %8026
  %8132 = call i64 @nyx_array_get_checked({ i64, i8* }* %8130, i64 %8131, i64 2)
  %8133 = inttoptr i64 %8132 to %nyx_string*
  %8134 = call %nyx_string* @nyx_string_trim(%nyx_string* %8133)
  %8135 = alloca %nyx_string*
  store %nyx_string* %8134, %nyx_string** %8135
  %8136 = load %nyx_string*, %nyx_string** %8135
  %8137 = load %nyx_string*, %nyx_string** %8032
  %8138 = call i1 @nyx_string_equals(%nyx_string* %8136, %nyx_string* %8137)
  %8139 = xor i1 %8138, true
  br i1 %8139, label %then1499, label %else1500
then1499:
  %8140 = alloca i1
  store i1 false, i1* %8140
  %8141 = load %nyx_string*, %nyx_string** %8114
  %8142 = call i64 @nyx_string_byte_length(%nyx_string* %8141)
  %8143 = icmp sgt i64 %8142, 0
  br i1 %8143, label %sc_and_rhs1502, label %sc_and_end1503
sc_and_rhs1502:
  %8144 = load %nyx_string*, %nyx_string** %8114
  %8145 = load %nyx_string*, %nyx_string** %8114
  %8146 = call i64 @nyx_string_byte_length(%nyx_string* %8145)
  %8147 = sub i64 %8146, 1
  %8148 = call i8 @nyx_string_char_at(%nyx_string* %8144, i64 %8147)
  %8149 = zext i8 %8148 to i64
  %8150 = getelementptr [1 x i8], [1 x i8]* @.str1090, i32 0, i32 0
  %8151 = load i8, i8* %8150
  %8152 = zext i8 %8151 to i64
  %8153 = icmp eq i64 %8149, %8152
  store i1 %8153, i1* %8140
  br label %sc_and_end1503
sc_and_end1503:
  %8154 = load i1, i1* %8140
  br i1 %8154, label %then1504, label %else1505
then1504:
  %8155 = load %nyx_string*, %nyx_string** %8114
  %8156 = load %nyx_string*, %nyx_string** %8135
  %8157 = call %nyx_string* @nyx_string_concat(%nyx_string* %8155, %nyx_string* %8156)
  store %nyx_string* %8157, %nyx_string** %8114
  br label %merge1506
else1505:
  %8158 = load %nyx_string*, %nyx_string** %8114
  %8159 = load %nyx_string*, %nyx_string** %8035
  %8160 = call %nyx_string* @nyx_string_concat(%nyx_string* %8158, %nyx_string* %8159)
  %8161 = load %nyx_string*, %nyx_string** %8135
  %8162 = call %nyx_string* @nyx_string_concat(%nyx_string* %8160, %nyx_string* %8161)
  store %nyx_string* %8162, %nyx_string** %8114
  br label %merge1506
merge1506:
  br label %merge1501
else1500:
  br label %merge1501
merge1501:
  %8163 = load i64, i64* %8117
  %8164 = load %nyx_string*, %nyx_string** %8135
  %8165 = call i64 @capabilities_paren_delta(%nyx_string* %8164)
  %8166 = add i64 %8163, %8165
  store i64 %8166, i64* %8117
  br label %while_cond1494
while_end1496:
  %8167 = sub i64 0, 1
  %8168 = alloca i64
  store i64 %8167, i64* %8168
  %8169 = alloca i64
  store i64 0, i64* %8169
  %8170 = call i8* @llvm.stacksave()
  br label %while_cond1507
while_cond1507:
  %8171 = load i64, i64* %8169
  %8172 = load %nyx_string*, %nyx_string** %8114
  %8173 = call i64 @nyx_string_byte_length(%nyx_string* %8172)
  %8174 = icmp slt i64 %8171, %8173
  br i1 %8174, label %while_body1508, label %while_end1509
while_body1508:
  call void @llvm.stackrestore(i8* %8170)
  %8175 = load %nyx_string*, %nyx_string** %8114
  %8176 = load i64, i64* %8169
  %8177 = call i8 @nyx_string_char_at(%nyx_string* %8175, i64 %8176)
  %8178 = zext i8 %8177 to i64
  %8179 = trunc i64 %8178 to i8
  %8180 = alloca i8
  store i8 %8179, i8* %8180
  %8181 = alloca i1
  store i1 false, i1* %8181
  %8182 = load i8, i8* %8180
  %8183 = getelementptr [1 x i8], [1 x i8]* @.str1091, i32 0, i32 0
  %8184 = load i8, i8* %8183
  %8185 = zext i8 %8184 to i64
  %8186 = zext i8 %8182 to i64
  %8187 = icmp eq i64 %8186, %8185
  br i1 %8187, label %sc_and_rhs1510, label %sc_and_end1511
sc_and_rhs1510:
  %8188 = load i64, i64* %8168
  %8189 = sub i64 0, 1
  %8190 = icmp eq i64 %8188, %8189
  store i1 %8190, i1* %8181
  br label %sc_and_end1511
sc_and_end1511:
  %8191 = load i1, i1* %8181
  br i1 %8191, label %then1512, label %else1513
then1512:
  %8192 = load i64, i64* %8169
  store i64 %8192, i64* %8168
  br label %merge1514
else1513:
  br label %merge1514
merge1514:
  %8193 = load i64, i64* %8169
  %8194 = add i64 %8193, 1
  store i64 %8194, i64* %8169
  br label %while_cond1507
while_end1509:
  %8195 = load i64, i64* %8168
  %8196 = icmp sge i64 %8195, 0
  br i1 %8196, label %then1515, label %else1516
then1515:
  %8197 = load %nyx_string*, %nyx_string** %8114
  %8198 = load i64, i64* %8168
  %8199 = call %nyx_string* @nyx_string_substring(%nyx_string* %8197, i64 0, i64 %8198)
  store %nyx_string* %8199, %nyx_string** %8114
  br label %merge1517
else1516:
  br label %merge1517
merge1517:
  %8200 = load %nyx_string*, %nyx_string** %8114
  %8201 = call %nyx_string* @nyx_string_trim(%nyx_string* %8200)
  %8202 = alloca %nyx_string*
  store %nyx_string* %8201, %nyx_string** %8202
  %8203 = load %nyx_string*, %nyx_string** %8021
  %8204 = load %nyx_string*, %nyx_string** %8050
  %8205 = call %nyx_string* @nyx_string_concat(%nyx_string* %8203, %nyx_string* %8204)
  %8206 = load %nyx_string*, %nyx_string** %8202
  %8207 = call %nyx_string* @nyx_string_concat(%nyx_string* %8205, %nyx_string* %8206)
  %8208 = load %nyx_string*, %nyx_string** %8053
  %8209 = call %nyx_string* @nyx_string_concat(%nyx_string* %8207, %nyx_string* %8208)
  store %nyx_string* %8209, %nyx_string** %8021
  %8210 = load %nyx_string*, %nyx_string** %8024
  %8211 = load %nyx_string*, %nyx_string** %8032
  %8212 = call i1 @nyx_string_equals(%nyx_string* %8210, %nyx_string* %8211)
  %8213 = xor i1 %8212, true
  br i1 %8213, label %then1518, label %else1519
then1518:
  %8214 = load %nyx_string*, %nyx_string** %8021
  %8215 = load %nyx_string*, %nyx_string** %8056
  %8216 = call %nyx_string* @nyx_string_concat(%nyx_string* %8214, %nyx_string* %8215)
  %8217 = load %nyx_string*, %nyx_string** %8024
  %8218 = call %nyx_string* @nyx_string_concat(%nyx_string* %8216, %nyx_string* %8217)
  store %nyx_string* %8218, %nyx_string** %8021
  br label %merge1520
else1519:
  br label %merge1520
merge1520:
  %8219 = load %nyx_string*, %nyx_string** %8021
  %8220 = load %nyx_string*, %nyx_string** %8059
  %8221 = call %nyx_string* @nyx_string_concat(%nyx_string* %8219, %nyx_string* %8220)
  store %nyx_string* %8221, %nyx_string** %8021
  %8222 = load i64, i64* %8025
  %8223 = add i64 %8222, 1
  store i64 %8223, i64* %8025
  br label %merge1493
else1492:
  br label %merge1493
merge1493:
  %8224 = load %nyx_string*, %nyx_string** %8032
  store %nyx_string* %8224, %nyx_string** %8024
  br label %merge1481
merge1481:
  %8225 = load i64, i64* %8026
  %8226 = add i64 %8225, 1
  store i64 %8226, i64* %8026
  br label %while_cond1476
while_end1478:
  %8227 = load i64, i64* %8025
  %8228 = icmp eq i64 %8227, 0
  br i1 %8228, label %then1521, label %else1522
then1521:
  %8229 = getelementptr [1 x i8], [1 x i8]* @.str1092, i32 0, i32 0
  %8230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %8229, i64 0)
  ret %nyx_string* %8230
else1522:
  br label %merge1523
merge1523:
  %8231 = getelementptr [10 x i8], [10 x i8]* @.str1093, i32 0, i32 0
  %8232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %8231, i64 9)
  %8233 = load %nyx_string*, %nyx_string** %8004
  %8234 = call %nyx_string* @nyx_string_concat(%nyx_string* %8232, %nyx_string* %8233)
  %8235 = getelementptr [4 x i8], [4 x i8]* @.str1094, i32 0, i32 0
  %8236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %8235, i64 3)
  %8237 = call %nyx_string* @nyx_string_concat(%nyx_string* %8234, %nyx_string* %8236)
  %8238 = alloca %nyx_string*
  store %nyx_string* %8237, %nyx_string** %8238
  %8239 = load %nyx_string*, %nyx_string** %8238
  %8240 = getelementptr [14 x i8], [14 x i8]* @.str1095, i32 0, i32 0
  %8241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %8240, i64 13)
  %8242 = call %nyx_string* @nyx_string_concat(%nyx_string* %8239, %nyx_string* %8241)
  %8243 = load %nyx_string*, %nyx_string** %8004
  %8244 = call %nyx_string* @nyx_string_concat(%nyx_string* %8242, %nyx_string* %8243)
  %8245 = getelementptr [8 x i8], [8 x i8]* @.str1096, i32 0, i32 0
  %8246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %8245, i64 7)
  %8247 = call %nyx_string* @nyx_string_concat(%nyx_string* %8244, %nyx_string* %8246)
  %8248 = load i64, i64* %8025
  %8249 = call %nyx_string* @nyx_string_from_int(i64 %8248)
  %8250 = call %nyx_string* @nyx_string_concat(%nyx_string* %8247, %nyx_string* %8249)
  %8251 = getelementptr [14 x i8], [14 x i8]* @.str1097, i32 0, i32 0
  %8252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %8251, i64 13)
  %8253 = call %nyx_string* @nyx_string_concat(%nyx_string* %8250, %nyx_string* %8252)
  store %nyx_string* %8253, %nyx_string** %8238
  %8254 = load %nyx_string*, %nyx_string** %8238
  %8255 = load %nyx_string*, %nyx_string** %8021
  %8256 = call %nyx_string* @nyx_string_concat(%nyx_string* %8254, %nyx_string* %8255)
  %8257 = getelementptr [2 x i8], [2 x i8]* @.str1098, i32 0, i32 0
  %8258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %8257, i64 1)
  %8259 = call %nyx_string* @nyx_string_concat(%nyx_string* %8256, %nyx_string* %8258)
  store %nyx_string* %8259, %nyx_string** %8238
  %8260 = load %nyx_string*, %nyx_string** %8238
  ret %nyx_string* %8260
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %8261 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %8262 = getelementptr [16 x i8], [16 x i8]* @.str1099, i32 0, i32 0
  %8263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %8262, i64 15)
  %8264 = call %nyx_string* @nyx_string_concat(%nyx_string* %8261, %nyx_string* %8263)
  %8265 = alloca %nyx_string*
  store %nyx_string* %8264, %nyx_string** %8265
  %8266 = load %nyx_string*, %nyx_string** %8265
  %8267 = call i8* @nyx_string_to_cstr(%nyx_string* %8266)
  %8268 = call i1 @nyx_file_exists(i8* %8267)
  %8269 = xor i1 %8268, true
  br i1 %8269, label %then1524, label %else1525
then1524:
  %8270 = getelementptr [1 x i8], [1 x i8]* @.str1100, i32 0, i32 0
  %8271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %8270, i64 0)
  ret %nyx_string* %8271
else1525:
  br label %merge1526
merge1526:
  %8272 = load %nyx_string*, %nyx_string** %8265
  %8273 = call i8* @nyx_string_to_cstr(%nyx_string* %8272)
  %8274 = call %nyx_string* @nyx_read_file(i8* %8273)
  %8275 = alloca %nyx_string*
  store %nyx_string* %8274, %nyx_string** %8275
  %8276 = load %nyx_string*, %nyx_string** %8275
  %8277 = getelementptr [2 x i8], [2 x i8]* @.str1101, i32 0, i32 0
  %8278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %8277, i64 1)
  %8279 = call { i64, i8* }* @nyx_string_split(%nyx_string* %8276, %nyx_string* %8278)
  %8280 = alloca { i64, i8* }*
  store { i64, i8* }* %8279, { i64, i8* }** %8280
  %8281 = getelementptr [1 x i8], [1 x i8]* @.str1102, i32 0, i32 0
  %8282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %8281, i64 0)
  %8283 = alloca %nyx_string*
  store %nyx_string* %8282, %nyx_string** %8283
  %8284 = alloca i64
  store i64 0, i64* %8284
  %8285 = alloca i64
  store i64 0, i64* %8285
  %8286 = getelementptr [9 x i8], [9 x i8]* @.str1103, i32 0, i32 0
  %8287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %8286, i64 8)
  %8288 = alloca %nyx_string*
  store %nyx_string* %8287, %nyx_string** %8288
  %8289 = getelementptr [2 x i8], [2 x i8]* @.str1104, i32 0, i32 0
  %8290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %8289, i64 1)
  %8291 = alloca %nyx_string*
  store %nyx_string* %8290, %nyx_string** %8291
  %8292 = getelementptr [4 x i8], [4 x i8]* @.str1105, i32 0, i32 0
  %8293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %8292, i64 3)
  %8294 = alloca %nyx_string*
  store %nyx_string* %8293, %nyx_string** %8294
  %8295 = getelementptr [4 x i8], [4 x i8]* @.str1106, i32 0, i32 0
  %8296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %8295, i64 3)
  %8297 = alloca %nyx_string*
  store %nyx_string* %8296, %nyx_string** %8297
  %8298 = getelementptr [5 x i8], [5 x i8]* @.str1107, i32 0, i32 0
  %8299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %8298, i64 4)
  %8300 = alloca %nyx_string*
  store %nyx_string* %8299, %nyx_string** %8300
  %8301 = getelementptr [2 x i8], [2 x i8]* @.str1108, i32 0, i32 0
  %8302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %8301, i64 1)
  %8303 = alloca %nyx_string*
  store %nyx_string* %8302, %nyx_string** %8303
  %8304 = getelementptr [2 x i8], [2 x i8]* @.str1109, i32 0, i32 0
  %8305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %8304, i64 1)
  %8306 = alloca %nyx_string*
  store %nyx_string* %8305, %nyx_string** %8306
  %8307 = getelementptr [2 x i8], [2 x i8]* @.str1110, i32 0, i32 0
  %8308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %8307, i64 1)
  %8309 = alloca %nyx_string*
  store %nyx_string* %8308, %nyx_string** %8309
  %8310 = getelementptr [1 x i8], [1 x i8]* @.str1111, i32 0, i32 0
  %8311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %8310, i64 0)
  %8312 = alloca %nyx_string*
  store %nyx_string* %8311, %nyx_string** %8312
  %8313 = getelementptr [6 x i8], [6 x i8]* @.str1112, i32 0, i32 0
  %8314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %8313, i64 5)
  %8315 = alloca %nyx_string*
  store %nyx_string* %8314, %nyx_string** %8315
  %8316 = getelementptr [2 x i8], [2 x i8]* @.str1113, i32 0, i32 0
  %8317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %8316, i64 1)
  %8318 = alloca %nyx_string*
  store %nyx_string* %8317, %nyx_string** %8318
  %8319 = call i8* @llvm.stacksave()
  br label %while_cond1527
while_cond1527:
  %8320 = load i64, i64* %8285
  %8321 = load { i64, i8* }*, { i64, i8* }** %8280
  %8322 = call i64 @nyx_array_length({ i64, i8* }* %8321)
  %8323 = icmp slt i64 %8320, %8322
  br i1 %8323, label %while_body1528, label %while_end1529
while_body1528:
  call void @llvm.stackrestore(i8* %8319)
  %8324 = load { i64, i8* }*, { i64, i8* }** %8280
  %8325 = load i64, i64* %8285
  %8326 = call i64 @nyx_array_get_checked({ i64, i8* }* %8324, i64 %8325, i64 2)
  %8327 = inttoptr i64 %8326 to %nyx_string*
  %8328 = alloca %nyx_string*
  store %nyx_string* %8327, %nyx_string** %8328
  %8329 = load %nyx_string*, %nyx_string** %8328
  %8330 = call i64 @nyx_string_byte_length(%nyx_string* %8329)
  %8331 = icmp sgt i64 %8330, 8
  br i1 %8331, label %then1530, label %else1531
then1530:
  %8332 = load %nyx_string*, %nyx_string** %8328
  %8333 = call %nyx_string* @nyx_string_substring(%nyx_string* %8332, i64 0, i64 8)
  %8334 = load %nyx_string*, %nyx_string** %8288
  %8335 = call i1 @nyx_string_equals(%nyx_string* %8333, %nyx_string* %8334)
  br i1 %8335, label %then1533, label %else1534
then1533:
  %8336 = load %nyx_string*, %nyx_string** %8328
  %8337 = load %nyx_string*, %nyx_string** %8291
  %8338 = call { i64, i8* }* @nyx_string_split(%nyx_string* %8336, %nyx_string* %8337)
  %8339 = alloca { i64, i8* }*
  store { i64, i8* }* %8338, { i64, i8* }** %8339
  %8340 = load { i64, i8* }*, { i64, i8* }** %8339
  %8341 = call i64 @nyx_array_length({ i64, i8* }* %8340)
  %8342 = icmp sge i64 %8341, 5
  br i1 %8342, label %then1536, label %else1537
then1536:
  %8343 = load { i64, i8* }*, { i64, i8* }** %8339
  %8344 = call i64 @nyx_array_get_checked({ i64, i8* }* %8343, i64 1, i64 2)
  %8345 = inttoptr i64 %8344 to %nyx_string*
  %8346 = alloca %nyx_string*
  store %nyx_string* %8345, %nyx_string** %8346
  %8347 = load { i64, i8* }*, { i64, i8* }** %8339
  %8348 = call i64 @nyx_array_get_checked({ i64, i8* }* %8347, i64 2, i64 2)
  %8349 = inttoptr i64 %8348 to %nyx_string*
  %8350 = alloca %nyx_string*
  store %nyx_string* %8349, %nyx_string** %8350
  %8351 = load { i64, i8* }*, { i64, i8* }** %8339
  %8352 = call i64 @nyx_array_get_checked({ i64, i8* }* %8351, i64 3, i64 2)
  %8353 = inttoptr i64 %8352 to %nyx_string*
  %8354 = alloca %nyx_string*
  store %nyx_string* %8353, %nyx_string** %8354
  %8355 = load { i64, i8* }*, { i64, i8* }** %8339
  %8356 = call i64 @nyx_array_get_checked({ i64, i8* }* %8355, i64 4, i64 2)
  %8357 = inttoptr i64 %8356 to %nyx_string*
  %8358 = alloca %nyx_string*
  store %nyx_string* %8357, %nyx_string** %8358
  %8359 = load %nyx_string*, %nyx_string** %8354
  %8360 = load %nyx_string*, %nyx_string** %cat.ptr
  %8361 = call i1 @nyx_string_equals(%nyx_string* %8359, %nyx_string* %8360)
  br i1 %8361, label %then1539, label %else1540
then1539:
  %8362 = load %nyx_string*, %nyx_string** %8294
  %8363 = load %nyx_string*, %nyx_string** %8346
  %8364 = call %nyx_string* @nyx_string_concat(%nyx_string* %8362, %nyx_string* %8363)
  %8365 = load %nyx_string*, %nyx_string** %8297
  %8366 = call %nyx_string* @nyx_string_concat(%nyx_string* %8364, %nyx_string* %8365)
  %8367 = load %nyx_string*, %nyx_string** %8350
  %8368 = call %nyx_string* @nyx_string_concat(%nyx_string* %8366, %nyx_string* %8367)
  %8369 = load %nyx_string*, %nyx_string** %8300
  %8370 = call %nyx_string* @nyx_string_concat(%nyx_string* %8368, %nyx_string* %8369)
  %8371 = alloca %nyx_string*
  store %nyx_string* %8370, %nyx_string** %8371
  %8372 = load %nyx_string*, %nyx_string** %8350
  %8373 = load %nyx_string*, %nyx_string** %8303
  %8374 = call i1 @nyx_string_equals(%nyx_string* %8372, %nyx_string* %8373)
  %8375 = xor i1 %8374, true
  br i1 %8375, label %then1542, label %else1543
then1542:
  %8376 = load %nyx_string*, %nyx_string** %8371
  %8377 = load %nyx_string*, %nyx_string** %8306
  %8378 = call %nyx_string* @nyx_string_concat(%nyx_string* %8376, %nyx_string* %8377)
  store %nyx_string* %8378, %nyx_string** %8371
  br label %merge1544
else1543:
  br label %merge1544
merge1544:
  %8379 = load %nyx_string*, %nyx_string** %8371
  %8380 = load %nyx_string*, %nyx_string** %8309
  %8381 = call %nyx_string* @nyx_string_concat(%nyx_string* %8379, %nyx_string* %8380)
  store %nyx_string* %8381, %nyx_string** %8371
  %8382 = load %nyx_string*, %nyx_string** %8358
  %8383 = load %nyx_string*, %nyx_string** %8312
  %8384 = call i1 @nyx_string_equals(%nyx_string* %8382, %nyx_string* %8383)
  %8385 = xor i1 %8384, true
  br i1 %8385, label %then1545, label %else1546
then1545:
  %8386 = load %nyx_string*, %nyx_string** %8371
  %8387 = load %nyx_string*, %nyx_string** %8315
  %8388 = call %nyx_string* @nyx_string_concat(%nyx_string* %8386, %nyx_string* %8387)
  %8389 = load %nyx_string*, %nyx_string** %8358
  %8390 = call %nyx_string* @nyx_string_concat(%nyx_string* %8388, %nyx_string* %8389)
  store %nyx_string* %8390, %nyx_string** %8371
  br label %merge1547
else1546:
  br label %merge1547
merge1547:
  %8391 = load %nyx_string*, %nyx_string** %8283
  %8392 = load %nyx_string*, %nyx_string** %8371
  %8393 = call %nyx_string* @nyx_string_concat(%nyx_string* %8391, %nyx_string* %8392)
  %8394 = load %nyx_string*, %nyx_string** %8318
  %8395 = call %nyx_string* @nyx_string_concat(%nyx_string* %8393, %nyx_string* %8394)
  store %nyx_string* %8395, %nyx_string** %8283
  %8396 = load i64, i64* %8284
  %8397 = add i64 %8396, 1
  store i64 %8397, i64* %8284
  br label %merge1541
else1540:
  br label %merge1541
merge1541:
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
  %8398 = load i64, i64* %8285
  %8399 = add i64 %8398, 1
  store i64 %8399, i64* %8285
  br label %while_cond1527
while_end1529:
  %8400 = load i64, i64* %8284
  %8401 = icmp eq i64 %8400, 0
  br i1 %8401, label %then1548, label %else1549
then1548:
  %8402 = getelementptr [1 x i8], [1 x i8]* @.str1114, i32 0, i32 0
  %8403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %8402, i64 0)
  ret %nyx_string* %8403
else1549:
  br label %merge1550
merge1550:
  %8404 = getelementptr [39 x i8], [39 x i8]* @.str1115, i32 0, i32 0
  %8405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %8404, i64 38)
  %8406 = load %nyx_string*, %nyx_string** %8283
  %8407 = call %nyx_string* @nyx_string_concat(%nyx_string* %8405, %nyx_string* %8406)
  %8408 = getelementptr [2 x i8], [2 x i8]* @.str1116, i32 0, i32 0
  %8409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %8408, i64 1)
  %8410 = call %nyx_string* @nyx_string_concat(%nyx_string* %8407, %nyx_string* %8409)
  ret %nyx_string* %8410
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %8411 = call %nyx_string* @capabilities_std_dir()
  %8412 = alloca %nyx_string*
  store %nyx_string* %8411, %nyx_string** %8412
  %8413 = load %nyx_string*, %nyx_string** %8412
  %8414 = getelementptr [1 x i8], [1 x i8]* @.str1117, i32 0, i32 0
  %8415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1117.c, i8* %8414, i64 0)
  %8416 = call i1 @nyx_string_equals(%nyx_string* %8413, %nyx_string* %8415)
  br i1 %8416, label %then1551, label %else1552
then1551:
  %8417 = getelementptr [71 x i8], [71 x i8]* @.str1118, i32 0, i32 0
  %8418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1118.c, i8* %8417, i64 70)
  %8419 = call i8* @nyx_string_to_cstr(%nyx_string* %8418)
  call void @nyx_print_string(i8* %8419)
  ret i1 0
else1552:
  br label %merge1553
merge1553:
  %8420 = load %nyx_string*, %nyx_string** %8412
  %8421 = call i8* @nyx_string_to_cstr(%nyx_string* %8420)
  %8422 = call { i64, i8* }* @nyx_readdir(i8* %8421)
  %8423 = alloca { i64, i8* }*
  store { i64, i8* }* %8422, { i64, i8* }** %8423
  %8424 = call { i64, i8* }* @nyx_array_new_ptr()
  %8425 = getelementptr [11 x i8], [11 x i8]* @.str1119, i32 0, i32 0
  %8426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1119.c, i8* %8425, i64 10)
  %8427 = ptrtoint %nyx_string* %8426 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8427, i64 2)
  %8428 = getelementptr [20 x i8], [20 x i8]* @.str1120, i32 0, i32 0
  %8429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %8428, i64 19)
  %8430 = ptrtoint %nyx_string* %8429 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8430, i64 2)
  %8431 = getelementptr [23 x i8], [23 x i8]* @.str1121, i32 0, i32 0
  %8432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %8431, i64 22)
  %8433 = ptrtoint %nyx_string* %8432 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8433, i64 2)
  %8434 = getelementptr [15 x i8], [15 x i8]* @.str1122, i32 0, i32 0
  %8435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %8434, i64 14)
  %8436 = ptrtoint %nyx_string* %8435 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8436, i64 2)
  %8437 = getelementptr [4 x i8], [4 x i8]* @.str1123, i32 0, i32 0
  %8438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %8437, i64 3)
  %8439 = ptrtoint %nyx_string* %8438 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8439, i64 2)
  %8440 = getelementptr [13 x i8], [13 x i8]* @.str1124, i32 0, i32 0
  %8441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %8440, i64 12)
  %8442 = ptrtoint %nyx_string* %8441 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8442, i64 2)
  %8443 = getelementptr [19 x i8], [19 x i8]* @.str1125, i32 0, i32 0
  %8444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %8443, i64 18)
  %8445 = ptrtoint %nyx_string* %8444 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8445, i64 2)
  %8446 = getelementptr [7 x i8], [7 x i8]* @.str1126, i32 0, i32 0
  %8447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %8446, i64 6)
  %8448 = ptrtoint %nyx_string* %8447 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8448, i64 2)
  %8449 = getelementptr [16 x i8], [16 x i8]* @.str1127, i32 0, i32 0
  %8450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %8449, i64 15)
  %8451 = ptrtoint %nyx_string* %8450 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8451, i64 2)
  %8452 = getelementptr [12 x i8], [12 x i8]* @.str1128, i32 0, i32 0
  %8453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %8452, i64 11)
  %8454 = ptrtoint %nyx_string* %8453 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8454, i64 2)
  %8455 = getelementptr [26 x i8], [26 x i8]* @.str1129, i32 0, i32 0
  %8456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %8455, i64 25)
  %8457 = ptrtoint %nyx_string* %8456 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8457, i64 2)
  %8458 = getelementptr [8 x i8], [8 x i8]* @.str1130, i32 0, i32 0
  %8459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %8458, i64 7)
  %8460 = ptrtoint %nyx_string* %8459 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8460, i64 2)
  %8461 = getelementptr [14 x i8], [14 x i8]* @.str1131, i32 0, i32 0
  %8462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %8461, i64 13)
  %8463 = ptrtoint %nyx_string* %8462 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8463, i64 2)
  %8464 = getelementptr [6 x i8], [6 x i8]* @.str1132, i32 0, i32 0
  %8465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %8464, i64 5)
  %8466 = ptrtoint %nyx_string* %8465 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %8424, i64 %8466, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %8424, i64 2)
  %8467 = alloca { i64, i8* }*
  store { i64, i8* }* %8424, { i64, i8* }** %8467
  %8468 = getelementptr [49 x i8], [49 x i8]* @.str1133, i32 0, i32 0
  %8469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %8468, i64 48)
  %8470 = alloca %nyx_string*
  store %nyx_string* %8469, %nyx_string** %8470
  %8471 = load %nyx_string*, %nyx_string** %8470
  %8472 = getelementptr [19 x i8], [19 x i8]* @.str1134, i32 0, i32 0
  %8473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1134.c, i8* %8472, i64 18)
  %8474 = call %nyx_string* @nyx_string_concat(%nyx_string* %8471, %nyx_string* %8473)
  %8475 = call %nyx_string* @toolchain_version()
  %8476 = call %nyx_string* @nyx_string_concat(%nyx_string* %8474, %nyx_string* %8475)
  %8477 = getelementptr [6 x i8], [6 x i8]* @.str1135, i32 0, i32 0
  %8478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1135.c, i8* %8477, i64 5)
  %8479 = call %nyx_string* @nyx_string_concat(%nyx_string* %8476, %nyx_string* %8478)
  store %nyx_string* %8479, %nyx_string** %8470
  %8480 = getelementptr [15 x i8], [15 x i8]* @.str1136, i32 0, i32 0
  %8481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %8480, i64 14)
  %8482 = call i8* @nyx_string_to_cstr(%nyx_string* %8481)
  %8483 = call %nyx_string* @nyx_getenv(i8* %8482)
  %8484 = alloca %nyx_string*
  store %nyx_string* %8483, %nyx_string** %8484
  %8485 = load %nyx_string*, %nyx_string** %8484
  %8486 = getelementptr [1 x i8], [1 x i8]* @.str1137, i32 0, i32 0
  %8487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %8486, i64 0)
  %8488 = call i1 @nyx_string_equals(%nyx_string* %8485, %nyx_string* %8487)
  %8489 = xor i1 %8488, true
  br i1 %8489, label %then1554, label %else1555
then1554:
  %8490 = load %nyx_string*, %nyx_string** %8470
  %8491 = getelementptr [18 x i8], [18 x i8]* @.str1138, i32 0, i32 0
  %8492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %8491, i64 17)
  %8493 = call %nyx_string* @nyx_string_concat(%nyx_string* %8490, %nyx_string* %8492)
  %8494 = load %nyx_string*, %nyx_string** %8484
  %8495 = call %nyx_string* @nyx_string_concat(%nyx_string* %8493, %nyx_string* %8494)
  %8496 = getelementptr [6 x i8], [6 x i8]* @.str1139, i32 0, i32 0
  %8497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %8496, i64 5)
  %8498 = call %nyx_string* @nyx_string_concat(%nyx_string* %8495, %nyx_string* %8497)
  store %nyx_string* %8498, %nyx_string** %8470
  br label %merge1556
else1555:
  br label %merge1556
merge1556:
  %8499 = load %nyx_string*, %nyx_string** %8470
  %8500 = getelementptr [103 x i8], [103 x i8]* @.str1140, i32 0, i32 0
  %8501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %8500, i64 102)
  %8502 = call %nyx_string* @nyx_string_concat(%nyx_string* %8499, %nyx_string* %8501)
  store %nyx_string* %8502, %nyx_string** %8470
  %8503 = load %nyx_string*, %nyx_string** %8470
  %8504 = getelementptr [103 x i8], [103 x i8]* @.str1141, i32 0, i32 0
  %8505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %8504, i64 102)
  %8506 = call %nyx_string* @nyx_string_concat(%nyx_string* %8503, %nyx_string* %8505)
  store %nyx_string* %8506, %nyx_string** %8470
  %8507 = load %nyx_string*, %nyx_string** %8470
  %8508 = getelementptr [95 x i8], [95 x i8]* @.str1142, i32 0, i32 0
  %8509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %8508, i64 94)
  %8510 = call %nyx_string* @nyx_string_concat(%nyx_string* %8507, %nyx_string* %8509)
  store %nyx_string* %8510, %nyx_string** %8470
  %8511 = alloca i64
  store i64 0, i64* %8511
  %8512 = getelementptr [1 x i8], [1 x i8]* @.str1143, i32 0, i32 0
  %8513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %8512, i64 0)
  %8514 = alloca %nyx_string*
  store %nyx_string* %8513, %nyx_string** %8514
  %8515 = getelementptr [4 x i8], [4 x i8]* @.str1144, i32 0, i32 0
  %8516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %8515, i64 3)
  %8517 = alloca %nyx_string*
  store %nyx_string* %8516, %nyx_string** %8517
  %8518 = getelementptr [6 x i8], [6 x i8]* @.str1145, i32 0, i32 0
  %8519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %8518, i64 5)
  %8520 = alloca %nyx_string*
  store %nyx_string* %8519, %nyx_string** %8520
  %8521 = getelementptr [4 x i8], [4 x i8]* @.str1146, i32 0, i32 0
  %8522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %8521, i64 3)
  %8523 = alloca %nyx_string*
  store %nyx_string* %8522, %nyx_string** %8523
  %8524 = getelementptr [3 x i8], [3 x i8]* @.str1147, i32 0, i32 0
  %8525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %8524, i64 2)
  %8526 = alloca %nyx_string*
  store %nyx_string* %8525, %nyx_string** %8526
  %8527 = call i8* @llvm.stacksave()
  br label %while_cond1557
while_cond1557:
  %8528 = load i64, i64* %8511
  %8529 = load { i64, i8* }*, { i64, i8* }** %8467
  %8530 = call i64 @nyx_array_length({ i64, i8* }* %8529)
  %8531 = icmp slt i64 %8528, %8530
  br i1 %8531, label %while_body1558, label %while_end1559
while_body1558:
  call void @llvm.stackrestore(i8* %8527)
  %8532 = load { i64, i8* }*, { i64, i8* }** %8467
  %8533 = load i64, i64* %8511
  %8534 = call i64 @nyx_array_get_checked({ i64, i8* }* %8532, i64 %8533, i64 2)
  %8535 = inttoptr i64 %8534 to %nyx_string*
  %8536 = alloca %nyx_string*
  store %nyx_string* %8535, %nyx_string** %8536
  %8537 = load %nyx_string*, %nyx_string** %8514
  %8538 = alloca %nyx_string*
  store %nyx_string* %8537, %nyx_string** %8538
  %8539 = alloca i64
  store i64 0, i64* %8539
  %8540 = call i8* @llvm.stacksave()
  br label %while_cond1560
while_cond1560:
  %8541 = load i64, i64* %8539
  %8542 = load { i64, i8* }*, { i64, i8* }** %8423
  %8543 = call i64 @nyx_array_length({ i64, i8* }* %8542)
  %8544 = icmp slt i64 %8541, %8543
  br i1 %8544, label %while_body1561, label %while_end1562
while_body1561:
  call void @llvm.stackrestore(i8* %8540)
  %8545 = load { i64, i8* }*, { i64, i8* }** %8423
  %8546 = load i64, i64* %8539
  %8547 = call i64 @nyx_array_get_checked({ i64, i8* }* %8545, i64 %8546, i64 2)
  %8548 = inttoptr i64 %8547 to %nyx_string*
  %8549 = alloca %nyx_string*
  store %nyx_string* %8548, %nyx_string** %8549
  %8550 = load %nyx_string*, %nyx_string** %8549
  %8551 = load %nyx_string*, %nyx_string** %8517
  %8552 = call i1 @nyx_string_ends_with(%nyx_string* %8550, %nyx_string* %8551)
  br i1 %8552, label %then1563, label %else1564
then1563:
  %8553 = load %nyx_string*, %nyx_string** %8549
  %8554 = load %nyx_string*, %nyx_string** %8549
  %8555 = call i64 @nyx_string_byte_length(%nyx_string* %8554)
  %8556 = sub i64 %8555, 3
  %8557 = call %nyx_string* @nyx_string_substring(%nyx_string* %8553, i64 0, i64 %8556)
  %8558 = alloca %nyx_string*
  store %nyx_string* %8557, %nyx_string** %8558
  %8559 = load %nyx_string*, %nyx_string** %8558
  %8560 = call %nyx_string* @module_category(%nyx_string* %8559)
  %8561 = alloca %nyx_string*
  store %nyx_string* %8560, %nyx_string** %8561
  %8562 = load %nyx_string*, %nyx_string** %8561
  %8563 = load %nyx_string*, %nyx_string** %8514
  %8564 = call i1 @nyx_string_equals(%nyx_string* %8562, %nyx_string* %8563)
  br i1 %8564, label %then1566, label %else1567
then1566:
  %8565 = load %nyx_string*, %nyx_string** %8520
  store %nyx_string* %8565, %nyx_string** %8561
  br label %merge1568
else1567:
  br label %merge1568
merge1568:
  %8566 = load %nyx_string*, %nyx_string** %8561
  %8567 = load %nyx_string*, %nyx_string** %8536
  %8568 = call i1 @nyx_string_equals(%nyx_string* %8566, %nyx_string* %8567)
  br i1 %8568, label %then1569, label %else1570
then1569:
  %8569 = load %nyx_string*, %nyx_string** %8412
  %8570 = load %nyx_string*, %nyx_string** %8549
  %8571 = call %nyx_string* @capabilities_module_section(%nyx_string* %8569, %nyx_string* %8570)
  %8572 = alloca %nyx_string*
  store %nyx_string* %8571, %nyx_string** %8572
  %8573 = load %nyx_string*, %nyx_string** %8572
  %8574 = load %nyx_string*, %nyx_string** %8514
  %8575 = call i1 @nyx_string_equals(%nyx_string* %8573, %nyx_string* %8574)
  %8576 = xor i1 %8575, true
  br i1 %8576, label %then1572, label %else1573
then1572:
  %8577 = load %nyx_string*, %nyx_string** %8538
  %8578 = load %nyx_string*, %nyx_string** %8572
  %8579 = call %nyx_string* @nyx_string_concat(%nyx_string* %8577, %nyx_string* %8578)
  store %nyx_string* %8579, %nyx_string** %8538
  br label %merge1574
else1573:
  br label %merge1574
merge1574:
  br label %merge1571
else1570:
  br label %merge1571
merge1571:
  br label %merge1565
else1564:
  br label %merge1565
merge1565:
  %8580 = load i64, i64* %8539
  %8581 = add i64 %8580, 1
  store i64 %8581, i64* %8539
  br label %while_cond1560
while_end1562:
  %8582 = load %nyx_string*, %nyx_string** %8412
  %8583 = load %nyx_string*, %nyx_string** %8536
  %8584 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %8582, %nyx_string* %8583)
  %8585 = alloca %nyx_string*
  store %nyx_string* %8584, %nyx_string** %8585
  %8586 = alloca i1
  store i1 true, i1* %8586
  %8587 = load %nyx_string*, %nyx_string** %8538
  %8588 = load %nyx_string*, %nyx_string** %8514
  %8589 = call i1 @nyx_string_equals(%nyx_string* %8587, %nyx_string* %8588)
  %8590 = xor i1 %8589, true
  br i1 %8590, label %sc_or_end1576, label %sc_or_rhs1575
sc_or_rhs1575:
  %8591 = load %nyx_string*, %nyx_string** %8585
  %8592 = load %nyx_string*, %nyx_string** %8514
  %8593 = call i1 @nyx_string_equals(%nyx_string* %8591, %nyx_string* %8592)
  %8594 = xor i1 %8593, true
  store i1 %8594, i1* %8586
  br label %sc_or_end1576
sc_or_end1576:
  %8595 = load i1, i1* %8586
  br i1 %8595, label %then1577, label %else1578
then1577:
  %8596 = load %nyx_string*, %nyx_string** %8470
  %8597 = load %nyx_string*, %nyx_string** %8523
  %8598 = call %nyx_string* @nyx_string_concat(%nyx_string* %8596, %nyx_string* %8597)
  %8599 = load %nyx_string*, %nyx_string** %8536
  %8600 = call %nyx_string* @nyx_string_concat(%nyx_string* %8598, %nyx_string* %8599)
  %8601 = load %nyx_string*, %nyx_string** %8526
  %8602 = call %nyx_string* @nyx_string_concat(%nyx_string* %8600, %nyx_string* %8601)
  %8603 = load %nyx_string*, %nyx_string** %8538
  %8604 = call %nyx_string* @nyx_string_concat(%nyx_string* %8602, %nyx_string* %8603)
  %8605 = load %nyx_string*, %nyx_string** %8585
  %8606 = call %nyx_string* @nyx_string_concat(%nyx_string* %8604, %nyx_string* %8605)
  store %nyx_string* %8606, %nyx_string** %8470
  br label %merge1579
else1578:
  br label %merge1579
merge1579:
  %8607 = load i64, i64* %8511
  %8608 = add i64 %8607, 1
  store i64 %8608, i64* %8511
  br label %while_cond1557
while_end1559:
  %8609 = getelementptr [16 x i8], [16 x i8]* @.str1148, i32 0, i32 0
  %8610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %8609, i64 15)
  %8611 = alloca %nyx_string*
  store %nyx_string* %8610, %nyx_string** %8611
  %8612 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %8613 = getelementptr [1 x i8], [1 x i8]* @.str1149, i32 0, i32 0
  %8614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %8613, i64 0)
  %8615 = call i1 @nyx_string_equals(%nyx_string* %8612, %nyx_string* %8614)
  %8616 = xor i1 %8615, true
  br i1 %8616, label %then1580, label %else1581
then1580:
  %8617 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %8617, %nyx_string** %8611
  br label %merge1582
else1581:
  br label %merge1582
merge1582:
  %8618 = load %nyx_string*, %nyx_string** %8611
  %8619 = load %nyx_string*, %nyx_string** %8470
  %8620 = call i8* @nyx_string_to_cstr(%nyx_string* %8618)
  %8621 = call i1 @nyx_write_file_safe(i8* %8620, %nyx_string* %8619)
  %8622 = getelementptr [32 x i8], [32 x i8]* @.str1150, i32 0, i32 0
  %8623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1150.c, i8* %8622, i64 31)
  %8624 = load %nyx_string*, %nyx_string** %8412
  %8625 = call %nyx_string* @nyx_string_concat(%nyx_string* %8623, %nyx_string* %8624)
  %8626 = getelementptr [3 x i8], [3 x i8]* @.str1151, i32 0, i32 0
  %8627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1151.c, i8* %8626, i64 2)
  %8628 = call %nyx_string* @nyx_string_concat(%nyx_string* %8625, %nyx_string* %8627)
  %8629 = load { i64, i8* }*, { i64, i8* }** %8423
  %8630 = call i64 @nyx_array_length({ i64, i8* }* %8629)
  %8631 = call %nyx_string* @nyx_string_from_int(i64 %8630)
  %8632 = call %nyx_string* @nyx_string_concat(%nyx_string* %8628, %nyx_string* %8631)
  %8633 = getelementptr [22 x i8], [22 x i8]* @.str1152, i32 0, i32 0
  %8634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1152.c, i8* %8633, i64 21)
  %8635 = call %nyx_string* @nyx_string_concat(%nyx_string* %8632, %nyx_string* %8634)
  %8636 = call i8* @nyx_string_to_cstr(%nyx_string* %8635)
  call void @nyx_print_string(i8* %8636)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %8637 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %8638 = ptrtoint %SharedEnv_main* %8637 to i64
  %8639 = call i8* @GC_malloc(i64 %8638)
  %8640 = bitcast i8* %8639 to %SharedEnv_main*
  %8641 = call { i64, i8* }* @nyx_get_args()
  %8642 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 0
  store { i64, i8* }* %8641, { i64, i8* }** %8642
  %8643 = getelementptr [6 x i8], [6 x i8]* @.str1153, i32 0, i32 0
  %8644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1153.c, i8* %8643, i64 5)
  %8645 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 1
  store %nyx_string* %8644, %nyx_string** %8645
  %8646 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 2
  store i1 0, i1* %8646
  %8647 = getelementptr [1 x i8], [1 x i8]* @.str1154, i32 0, i32 0
  %8648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1154.c, i8* %8647, i64 0)
  %8649 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 3
  store %nyx_string* %8648, %nyx_string** %8649
  %8650 = getelementptr [1 x i8], [1 x i8]* @.str1155, i32 0, i32 0
  %8651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1155.c, i8* %8650, i64 0)
  %8652 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 4
  store %nyx_string* %8651, %nyx_string** %8652
  %8653 = load { i64, i8* }*, { i64, i8* }** %8642
  %8654 = call i64 @nyx_array_length({ i64, i8* }* %8653)
  %8655 = icmp sge i64 %8654, 2
  br i1 %8655, label %then1583, label %else1584
then1583:
  %8656 = load { i64, i8* }*, { i64, i8* }** %8642
  %8657 = call i64 @nyx_array_get_checked({ i64, i8* }* %8656, i64 1, i64 2)
  %8658 = inttoptr i64 %8657 to %nyx_string*
  %8659 = alloca %nyx_string*
  store %nyx_string* %8658, %nyx_string** %8659
  %8660 = load %nyx_string*, %nyx_string** %8659
  store %nyx_string* %8660, %nyx_string** %8645
  br label %merge1585
else1584:
  br label %merge1585
merge1585:
  %8661 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 5
  store i64 2, i64* %8661
  %8662 = getelementptr [1 x i8], [1 x i8]* @.str1156, i32 0, i32 0
  %8663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1156.c, i8* %8662, i64 0)
  %8664 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 6
  store %nyx_string* %8663, %nyx_string** %8664
  %8665 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 7
  store i1 0, i1* %8665
  %8666 = alloca i1
  store i1 true, i1* %8666
  %8667 = alloca i1
  store i1 true, i1* %8667
  %8668 = alloca i1
  store i1 true, i1* %8668
  %8669 = load %nyx_string*, %nyx_string** %8645
  %8670 = getelementptr [6 x i8], [6 x i8]* @.str1157, i32 0, i32 0
  %8671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1157.c, i8* %8670, i64 5)
  %8672 = call i1 @nyx_string_equals(%nyx_string* %8669, %nyx_string* %8671)
  br i1 %8672, label %sc_or_end1587, label %sc_or_rhs1586
sc_or_rhs1586:
  %8673 = load %nyx_string*, %nyx_string** %8645
  %8674 = getelementptr [4 x i8], [4 x i8]* @.str1158, i32 0, i32 0
  %8675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1158.c, i8* %8674, i64 3)
  %8676 = call i1 @nyx_string_equals(%nyx_string* %8673, %nyx_string* %8675)
  store i1 %8676, i1* %8668
  br label %sc_or_end1587
sc_or_end1587:
  %8677 = load i1, i1* %8668
  br i1 %8677, label %sc_or_end1589, label %sc_or_rhs1588
sc_or_rhs1588:
  %8678 = load %nyx_string*, %nyx_string** %8645
  %8679 = getelementptr [5 x i8], [5 x i8]* @.str1159, i32 0, i32 0
  %8680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1159.c, i8* %8679, i64 4)
  %8681 = call i1 @nyx_string_equals(%nyx_string* %8678, %nyx_string* %8680)
  store i1 %8681, i1* %8667
  br label %sc_or_end1589
sc_or_end1589:
  %8682 = load i1, i1* %8667
  br i1 %8682, label %sc_or_end1591, label %sc_or_rhs1590
sc_or_rhs1590:
  %8683 = load %nyx_string*, %nyx_string** %8645
  %8684 = getelementptr [5 x i8], [5 x i8]* @.str1160, i32 0, i32 0
  %8685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1160.c, i8* %8684, i64 4)
  %8686 = call i1 @nyx_string_equals(%nyx_string* %8683, %nyx_string* %8685)
  store i1 %8686, i1* %8666
  br label %sc_or_end1591
sc_or_end1591:
  %8687 = load i1, i1* %8666
  %8688 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 8
  store i1 %8687, i1* %8688
  %8689 = getelementptr [3 x i8], [3 x i8]* @.str1161, i32 0, i32 0
  %8690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1161.c, i8* %8689, i64 2)
  %8691 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 9
  store %nyx_string* %8690, %nyx_string** %8691
  %8692 = getelementptr [10 x i8], [10 x i8]* @.str1162, i32 0, i32 0
  %8693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1162.c, i8* %8692, i64 9)
  %8694 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 10
  store %nyx_string* %8693, %nyx_string** %8694
  %8695 = getelementptr [7 x i8], [7 x i8]* @.str1163, i32 0, i32 0
  %8696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1163.c, i8* %8695, i64 6)
  %8697 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 11
  store %nyx_string* %8696, %nyx_string** %8697
  %8698 = getelementptr [1 x i8], [1 x i8]* @.str1164, i32 0, i32 0
  %8699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1164.c, i8* %8698, i64 0)
  %8700 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 12
  store %nyx_string* %8699, %nyx_string** %8700
  %8701 = getelementptr [66 x i8], [66 x i8]* @.str1165, i32 0, i32 0
  %8702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1165.c, i8* %8701, i64 65)
  %8703 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 13
  store %nyx_string* %8702, %nyx_string** %8703
  %8704 = getelementptr [7 x i8], [7 x i8]* @.str1166, i32 0, i32 0
  %8705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1166.c, i8* %8704, i64 6)
  %8706 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 14
  store %nyx_string* %8705, %nyx_string** %8706
  %8707 = getelementptr [3 x i8], [3 x i8]* @.str1167, i32 0, i32 0
  %8708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1167.c, i8* %8707, i64 2)
  %8709 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 15
  store %nyx_string* %8708, %nyx_string** %8709
  %8710 = getelementptr [9 x i8], [9 x i8]* @.str1168, i32 0, i32 0
  %8711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1168.c, i8* %8710, i64 8)
  %8712 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 16
  store %nyx_string* %8711, %nyx_string** %8712
  %8713 = getelementptr [63 x i8], [63 x i8]* @.str1169, i32 0, i32 0
  %8714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1169.c, i8* %8713, i64 62)
  %8715 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 17
  store %nyx_string* %8714, %nyx_string** %8715
  %8716 = getelementptr [28 x i8], [28 x i8]* @.str1170, i32 0, i32 0
  %8717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1170.c, i8* %8716, i64 27)
  %8718 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 18
  store %nyx_string* %8717, %nyx_string** %8718
  %8719 = getelementptr [4 x i8], [4 x i8]* @.str1171, i32 0, i32 0
  %8720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1171.c, i8* %8719, i64 3)
  %8721 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 19
  store %nyx_string* %8720, %nyx_string** %8721
  %8722 = call i8* @llvm.stacksave()
  br label %while_cond1592
while_cond1592:
  %8723 = load i64, i64* %8661
  %8724 = load { i64, i8* }*, { i64, i8* }** %8642
  %8725 = call i64 @nyx_array_length({ i64, i8* }* %8724)
  %8726 = icmp slt i64 %8723, %8725
  br i1 %8726, label %while_body1593, label %while_end1594
while_body1593:
  call void @llvm.stackrestore(i8* %8722)
  %8727 = load { i64, i8* }*, { i64, i8* }** %8642
  %8728 = load i64, i64* %8661
  %8729 = call i64 @nyx_array_get_checked({ i64, i8* }* %8727, i64 %8728, i64 2)
  %8730 = inttoptr i64 %8729 to %nyx_string*
  %8731 = alloca %nyx_string*
  store %nyx_string* %8730, %nyx_string** %8731
  %8732 = load %nyx_string*, %nyx_string** %8731
  %8733 = load %nyx_string*, %nyx_string** %8691
  %8734 = call i1 @nyx_string_equals(%nyx_string* %8732, %nyx_string* %8733)
  br i1 %8734, label %then1595, label %else1596
then1595:
  %8735 = load { i64, i8* }*, { i64, i8* }** %8642
  %8736 = call i64 @nyx_array_length({ i64, i8* }* %8735)
  store i64 %8736, i64* %8661
  br label %merge1597
else1596:
  %8737 = load %nyx_string*, %nyx_string** %8731
  %8738 = load %nyx_string*, %nyx_string** %8694
  %8739 = call i1 @nyx_string_equals(%nyx_string* %8737, %nyx_string* %8738)
  br i1 %8739, label %then1598, label %else1599
then1598:
  store i1 1, i1* %8646
  br label %merge1600
else1599:
  %8740 = load %nyx_string*, %nyx_string** %8731
  %8741 = load %nyx_string*, %nyx_string** %8697
  %8742 = call i1 @nyx_string_equals(%nyx_string* %8740, %nyx_string* %8741)
  br i1 %8742, label %then1601, label %else1602
then1601:
  %8743 = load %nyx_string*, %nyx_string** %8700
  %8744 = alloca %nyx_string*
  store %nyx_string* %8743, %nyx_string** %8744
  %8745 = load i64, i64* %8661
  %8746 = add i64 %8745, 1
  %8747 = load { i64, i8* }*, { i64, i8* }** %8642
  %8748 = call i64 @nyx_array_length({ i64, i8* }* %8747)
  %8749 = icmp slt i64 %8746, %8748
  br i1 %8749, label %then1604, label %else1605
then1604:
  %8750 = load { i64, i8* }*, { i64, i8* }** %8642
  %8751 = load i64, i64* %8661
  %8752 = add i64 %8751, 1
  %8753 = call i64 @nyx_array_get_checked({ i64, i8* }* %8750, i64 %8752, i64 2)
  %8754 = inttoptr i64 %8753 to %nyx_string*
  %8755 = alloca %nyx_string*
  store %nyx_string* %8754, %nyx_string** %8755
  %8756 = load %nyx_string*, %nyx_string** %8755
  %8757 = load %nyx_string*, %nyx_string** %8691
  %8758 = call i1 @nyx_string_starts_with(%nyx_string* %8756, %nyx_string* %8757)
  %8759 = xor i1 %8758, true
  br i1 %8759, label %then1607, label %else1608
then1607:
  %8760 = load %nyx_string*, %nyx_string** %8755
  store %nyx_string* %8760, %nyx_string** %8744
  br label %merge1609
else1608:
  br label %merge1609
merge1609:
  br label %merge1606
else1605:
  br label %merge1606
merge1606:
  %8761 = load %nyx_string*, %nyx_string** %8744
  %8762 = load %nyx_string*, %nyx_string** %8700
  %8763 = call i1 @nyx_string_equals(%nyx_string* %8761, %nyx_string* %8762)
  br i1 %8763, label %then1610, label %else1611
then1610:
  %8764 = load %nyx_string*, %nyx_string** %8664
  %8765 = load %nyx_string*, %nyx_string** %8700
  %8766 = call i1 @nyx_string_equals(%nyx_string* %8764, %nyx_string* %8765)
  br i1 %8766, label %then1613, label %else1614
then1613:
  %8767 = load %nyx_string*, %nyx_string** %8703
  store %nyx_string* %8767, %nyx_string** %8664
  br label %merge1615
else1614:
  br label %merge1615
merge1615:
  br label %merge1612
else1611:
  %8768 = load %nyx_string*, %nyx_string** %8744
  store %nyx_string* %8768, %nyx_string** %8652
  %8769 = load i64, i64* %8661
  %8770 = add i64 %8769, 1
  store i64 %8770, i64* %8661
  br label %merge1612
merge1612:
  br label %merge1603
else1602:
  %8771 = alloca i1
  store i1 true, i1* %8771
  %8772 = load %nyx_string*, %nyx_string** %8731
  %8773 = load %nyx_string*, %nyx_string** %8706
  %8774 = call i1 @nyx_string_equals(%nyx_string* %8772, %nyx_string* %8773)
  br i1 %8774, label %sc_or_end1617, label %sc_or_rhs1616
sc_or_rhs1616:
  %8775 = load %nyx_string*, %nyx_string** %8731
  %8776 = load %nyx_string*, %nyx_string** %8709
  %8777 = call i1 @nyx_string_equals(%nyx_string* %8775, %nyx_string* %8776)
  store i1 %8777, i1* %8771
  br label %sc_or_end1617
sc_or_end1617:
  %8778 = load i1, i1* %8771
  br i1 %8778, label %then1618, label %else1619
then1618:
  store i1 1, i1* %8665
  br label %merge1620
else1619:
  %8779 = load %nyx_string*, %nyx_string** %8731
  %8780 = load %nyx_string*, %nyx_string** %8712
  %8781 = call i1 @nyx_string_equals(%nyx_string* %8779, %nyx_string* %8780)
  br i1 %8781, label %then1621, label %else1622
then1621:
  %8782 = load i64, i64* %8661
  %8783 = add i64 %8782, 1
  %8784 = load { i64, i8* }*, { i64, i8* }** %8642
  %8785 = call i64 @nyx_array_length({ i64, i8* }* %8784)
  %8786 = icmp slt i64 %8783, %8785
  br i1 %8786, label %then1624, label %else1625
then1624:
  %8787 = load { i64, i8* }*, { i64, i8* }** %8642
  %8788 = load i64, i64* %8661
  %8789 = add i64 %8788, 1
  %8790 = call i64 @nyx_array_get_checked({ i64, i8* }* %8787, i64 %8789, i64 2)
  %8791 = inttoptr i64 %8790 to %nyx_string*
  %8792 = alloca %nyx_string*
  store %nyx_string* %8791, %nyx_string** %8792
  %8793 = load %nyx_string*, %nyx_string** %8792
  store %nyx_string* %8793, %nyx_string** %8649
  %8794 = load i64, i64* %8661
  %8795 = add i64 %8794, 1
  store i64 %8795, i64* %8661
  br label %merge1626
else1625:
  %8796 = load %nyx_string*, %nyx_string** %8715
  store %nyx_string* %8796, %nyx_string** %8664
  br label %merge1626
merge1626:
  br label %merge1623
else1622:
  %8797 = alloca i1
  store i1 false, i1* %8797
  %8798 = load i1, i1* %8688
  br i1 %8798, label %sc_and_rhs1627, label %sc_and_end1628
sc_and_rhs1627:
  %8799 = load %nyx_string*, %nyx_string** %8731
  %8800 = call i64 @nyx_string_byte_length(%nyx_string* %8799)
  %8801 = icmp sgt i64 %8800, 1
  store i1 %8801, i1* %8797
  br label %sc_and_end1628
sc_and_end1628:
  %8802 = load i1, i1* %8797
  br i1 %8802, label %then1629, label %else1630
then1629:
  %8803 = alloca i1
  store i1 false, i1* %8803
  %8804 = load %nyx_string*, %nyx_string** %8731
  %8805 = call i8 @nyx_string_char_at(%nyx_string* %8804, i64 0)
  %8806 = zext i8 %8805 to i64
  %8807 = getelementptr [1 x i8], [1 x i8]* @.str1172, i32 0, i32 0
  %8808 = load i8, i8* %8807
  %8809 = zext i8 %8808 to i64
  %8810 = icmp eq i64 %8806, %8809
  br i1 %8810, label %sc_and_rhs1632, label %sc_and_end1633
sc_and_rhs1632:
  %8811 = load %nyx_string*, %nyx_string** %8664
  %8812 = load %nyx_string*, %nyx_string** %8700
  %8813 = call i1 @nyx_string_equals(%nyx_string* %8811, %nyx_string* %8812)
  store i1 %8813, i1* %8803
  br label %sc_and_end1633
sc_and_end1633:
  %8814 = load i1, i1* %8803
  br i1 %8814, label %then1634, label %else1635
then1634:
  %8815 = load %nyx_string*, %nyx_string** %8718
  %8816 = load %nyx_string*, %nyx_string** %8645
  %8817 = call %nyx_string* @nyx_string_concat(%nyx_string* %8815, %nyx_string* %8816)
  %8818 = load %nyx_string*, %nyx_string** %8721
  %8819 = call %nyx_string* @nyx_string_concat(%nyx_string* %8817, %nyx_string* %8818)
  %8820 = load %nyx_string*, %nyx_string** %8731
  %8821 = call %nyx_string* @nyx_string_concat(%nyx_string* %8819, %nyx_string* %8820)
  store %nyx_string* %8821, %nyx_string** %8664
  br label %merge1636
else1635:
  br label %merge1636
merge1636:
  br label %merge1631
else1630:
  br label %merge1631
merge1631:
  br label %merge1623
merge1623:
  br label %merge1620
merge1620:
  br label %merge1603
merge1603:
  br label %merge1600
merge1600:
  br label %merge1597
merge1597:
  %8822 = load i64, i64* %8661
  %8823 = add i64 %8822, 1
  store i64 %8823, i64* %8661
  br label %while_cond1592
while_end1594:
  %8824 = alloca i1
  store i1 false, i1* %8824
  %8825 = load i1, i1* %8665
  br i1 %8825, label %sc_and_rhs1637, label %sc_and_end1638
sc_and_rhs1637:
  %8826 = load i1, i1* %8688
  store i1 %8826, i1* %8824
  br label %sc_and_end1638
sc_and_end1638:
  %8827 = load i1, i1* %8824
  br i1 %8827, label %then1639, label %else1640
then1639:
  %8828 = getelementptr [5 x i8], [5 x i8]* @.str1173, i32 0, i32 0
  %8829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1173.c, i8* %8828, i64 4)
  %8830 = load %nyx_string*, %nyx_string** %8645
  %8831 = call %nyx_string* @nyx_string_concat(%nyx_string* %8829, %nyx_string* %8830)
  %8832 = getelementptr [24 x i8], [24 x i8]* @.str1174, i32 0, i32 0
  %8833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1174.c, i8* %8832, i64 23)
  %8834 = call %nyx_string* @nyx_string_concat(%nyx_string* %8831, %nyx_string* %8833)
  %8835 = call i8* @nyx_string_to_cstr(%nyx_string* %8834)
  call void @nyx_print_string(i8* %8835)
  %8836 = getelementptr [42 x i8], [42 x i8]* @.str1175, i32 0, i32 0
  %8837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1175.c, i8* %8836, i64 41)
  %8838 = call i8* @nyx_string_to_cstr(%nyx_string* %8837)
  call void @nyx_print_string(i8* %8838)
  %8839 = getelementptr [88 x i8], [88 x i8]* @.str1176, i32 0, i32 0
  %8840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1176.c, i8* %8839, i64 87)
  %8841 = call i8* @nyx_string_to_cstr(%nyx_string* %8840)
  call void @nyx_print_string(i8* %8841)
  %8842 = getelementptr [94 x i8], [94 x i8]* @.str1177, i32 0, i32 0
  %8843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1177.c, i8* %8842, i64 93)
  %8844 = call i8* @nyx_string_to_cstr(%nyx_string* %8843)
  call void @nyx_print_string(i8* %8844)
  %8845 = getelementptr [94 x i8], [94 x i8]* @.str1178, i32 0, i32 0
  %8846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1178.c, i8* %8845, i64 93)
  %8847 = call i8* @nyx_string_to_cstr(%nyx_string* %8846)
  call void @nyx_print_string(i8* %8847)
  %8848 = getelementptr [34 x i8], [34 x i8]* @.str1179, i32 0, i32 0
  %8849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1179.c, i8* %8848, i64 33)
  %8850 = call i8* @nyx_string_to_cstr(%nyx_string* %8849)
  call void @nyx_print_string(i8* %8850)
  %8851 = getelementptr [1 x i8], [1 x i8]* @.str1180, i32 0, i32 0
  %8852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1180.c, i8* %8851, i64 0)
  %8853 = call i8* @nyx_string_to_cstr(%nyx_string* %8852)
  call void @nyx_print_string(i8* %8853)
  %8854 = getelementptr [71 x i8], [71 x i8]* @.str1181, i32 0, i32 0
  %8855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1181.c, i8* %8854, i64 70)
  %8856 = call i8* @nyx_string_to_cstr(%nyx_string* %8855)
  call void @nyx_print_string(i8* %8856)
  ret i64 0
else1640:
  br label %merge1641
merge1641:
  %8857 = load %nyx_string*, %nyx_string** %8664
  %8858 = getelementptr [1 x i8], [1 x i8]* @.str1182, i32 0, i32 0
  %8859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1182.c, i8* %8858, i64 0)
  %8860 = call i1 @nyx_string_equals(%nyx_string* %8857, %nyx_string* %8859)
  %8861 = xor i1 %8860, true
  br i1 %8861, label %then1642, label %else1643
then1642:
  %8862 = getelementptr [8 x i8], [8 x i8]* @.str1183, i32 0, i32 0
  %8863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1183.c, i8* %8862, i64 7)
  %8864 = load %nyx_string*, %nyx_string** %8664
  %8865 = call %nyx_string* @nyx_string_concat(%nyx_string* %8863, %nyx_string* %8864)
  %8866 = call i8* @nyx_string_to_cstr(%nyx_string* %8865)
  call void @nyx_print_string(i8* %8866)
  %8867 = getelementptr [8 x i8], [8 x i8]* @.str1184, i32 0, i32 0
  %8868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1184.c, i8* %8867, i64 7)
  %8869 = load %nyx_string*, %nyx_string** %8645
  %8870 = call %nyx_string* @nyx_string_concat(%nyx_string* %8868, %nyx_string* %8869)
  %8871 = getelementptr [37 x i8], [37 x i8]* @.str1185, i32 0, i32 0
  %8872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1185.c, i8* %8871, i64 36)
  %8873 = call %nyx_string* @nyx_string_concat(%nyx_string* %8870, %nyx_string* %8872)
  %8874 = call i8* @nyx_string_to_cstr(%nyx_string* %8873)
  call void @nyx_print_string(i8* %8874)
  ret i64 1
else1643:
  br label %merge1644
merge1644:
  %8875 = getelementptr [6 x i8], [6 x i8]* @.str1186, i32 0, i32 0
  %8876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1186.c, i8* %8875, i64 5)
  %8877 = call %nyx_string* @toolchain_version()
  %8878 = call %nyx_string* @nyx_string_concat(%nyx_string* %8876, %nyx_string* %8877)
  %8879 = getelementptr [6 x i8], [6 x i8]* @.str1187, i32 0, i32 0
  %8880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1187.c, i8* %8879, i64 5)
  %8881 = call %nyx_string* @nyx_string_concat(%nyx_string* %8878, %nyx_string* %8880)
  %8882 = load %nyx_string*, %nyx_string** %8645
  %8883 = call %nyx_string* @nyx_string_concat(%nyx_string* %8881, %nyx_string* %8882)
  %8884 = call i8* @nyx_string_to_cstr(%nyx_string* %8883)
  call void @nyx_print_string(i8* %8884)
  %8885 = load %nyx_string*, %nyx_string** %8645
  %8886 = getelementptr [5 x i8], [5 x i8]* @.str1188, i32 0, i32 0
  %8887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1188.c, i8* %8886, i64 4)
  %8888 = call i1 @nyx_string_equals(%nyx_string* %8885, %nyx_string* %8887)
  br i1 %8888, label %then1645, label %else1646
then1645:
  %8889 = getelementptr [1 x i8], [1 x i8]* @.str1189, i32 0, i32 0
  %8890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1189.c, i8* %8889, i64 0)
  %8891 = alloca %nyx_string*
  store %nyx_string* %8890, %nyx_string** %8891
  %8892 = getelementptr [1 x i8], [1 x i8]* @.str1190, i32 0, i32 0
  %8893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1190.c, i8* %8892, i64 0)
  %8894 = alloca %nyx_string*
  store %nyx_string* %8893, %nyx_string** %8894
  %8895 = getelementptr [1 x i8], [1 x i8]* @.str1191, i32 0, i32 0
  %8896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1191.c, i8* %8895, i64 0)
  %8897 = alloca %nyx_string*
  store %nyx_string* %8896, %nyx_string** %8897
  %8898 = alloca i1
  store i1 0, i1* %8898
  %8899 = getelementptr [1 x i8], [1 x i8]* @.str1192, i32 0, i32 0
  %8900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1192.c, i8* %8899, i64 0)
  %8901 = alloca %nyx_string*
  store %nyx_string* %8900, %nyx_string** %8901
  %8902 = getelementptr [1 x i8], [1 x i8]* @.str1193, i32 0, i32 0
  %8903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1193.c, i8* %8902, i64 0)
  %8904 = alloca %nyx_string*
  store %nyx_string* %8903, %nyx_string** %8904
  %8905 = alloca i64
  store i64 2, i64* %8905
  %8906 = getelementptr [7 x i8], [7 x i8]* @.str1194, i32 0, i32 0
  %8907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1194.c, i8* %8906, i64 6)
  %8908 = alloca %nyx_string*
  store %nyx_string* %8907, %nyx_string** %8908
  %8909 = getelementptr [8 x i8], [8 x i8]* @.str1195, i32 0, i32 0
  %8910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1195.c, i8* %8909, i64 7)
  %8911 = alloca %nyx_string*
  store %nyx_string* %8910, %nyx_string** %8911
  %8912 = getelementptr [1 x i8], [1 x i8]* @.str1196, i32 0, i32 0
  %8913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1196.c, i8* %8912, i64 0)
  %8914 = alloca %nyx_string*
  store %nyx_string* %8913, %nyx_string** %8914
  %8915 = getelementptr [3 x i8], [3 x i8]* @.str1197, i32 0, i32 0
  %8916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1197.c, i8* %8915, i64 2)
  %8917 = alloca %nyx_string*
  store %nyx_string* %8916, %nyx_string** %8917
  %8918 = getelementptr [8 x i8], [8 x i8]* @.str1198, i32 0, i32 0
  %8919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1198.c, i8* %8918, i64 7)
  %8920 = alloca %nyx_string*
  store %nyx_string* %8919, %nyx_string** %8920
  %8921 = getelementptr [9 x i8], [9 x i8]* @.str1199, i32 0, i32 0
  %8922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1199.c, i8* %8921, i64 8)
  %8923 = alloca %nyx_string*
  store %nyx_string* %8922, %nyx_string** %8923
  %8924 = getelementptr [6 x i8], [6 x i8]* @.str1200, i32 0, i32 0
  %8925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1200.c, i8* %8924, i64 5)
  %8926 = alloca %nyx_string*
  store %nyx_string* %8925, %nyx_string** %8926
  %8927 = call i8* @llvm.stacksave()
  br label %while_cond1648
while_cond1648:
  %8928 = load i64, i64* %8905
  %8929 = load { i64, i8* }*, { i64, i8* }** %8642
  %8930 = call i64 @nyx_array_length({ i64, i8* }* %8929)
  %8931 = icmp slt i64 %8928, %8930
  br i1 %8931, label %while_body1649, label %while_end1650
while_body1649:
  call void @llvm.stackrestore(i8* %8927)
  %8932 = load { i64, i8* }*, { i64, i8* }** %8642
  %8933 = load i64, i64* %8905
  %8934 = call i64 @nyx_array_get_checked({ i64, i8* }* %8932, i64 %8933, i64 2)
  %8935 = inttoptr i64 %8934 to %nyx_string*
  %8936 = alloca %nyx_string*
  store %nyx_string* %8935, %nyx_string** %8936
  %8937 = alloca i1
  store i1 0, i1* %8937
  %8938 = alloca i1
  store i1 true, i1* %8938
  %8939 = load %nyx_string*, %nyx_string** %8936
  %8940 = load %nyx_string*, %nyx_string** %8908
  %8941 = call i1 @nyx_string_equals(%nyx_string* %8939, %nyx_string* %8940)
  br i1 %8941, label %sc_or_end1652, label %sc_or_rhs1651
sc_or_rhs1651:
  %8942 = load %nyx_string*, %nyx_string** %8936
  %8943 = load %nyx_string*, %nyx_string** %8911
  %8944 = call i1 @nyx_string_equals(%nyx_string* %8942, %nyx_string* %8943)
  store i1 %8944, i1* %8938
  br label %sc_or_end1652
sc_or_end1652:
  %8945 = load i1, i1* %8938
  br i1 %8945, label %then1653, label %else1654
then1653:
  store i1 1, i1* %8937
  %8946 = load %nyx_string*, %nyx_string** %8914
  %8947 = alloca %nyx_string*
  store %nyx_string* %8946, %nyx_string** %8947
  %8948 = load i64, i64* %8905
  %8949 = add i64 %8948, 1
  %8950 = load { i64, i8* }*, { i64, i8* }** %8642
  %8951 = call i64 @nyx_array_length({ i64, i8* }* %8950)
  %8952 = icmp slt i64 %8949, %8951
  br i1 %8952, label %then1656, label %else1657
then1656:
  %8953 = load { i64, i8* }*, { i64, i8* }** %8642
  %8954 = load i64, i64* %8905
  %8955 = add i64 %8954, 1
  %8956 = call i64 @nyx_array_get_checked({ i64, i8* }* %8953, i64 %8955, i64 2)
  %8957 = inttoptr i64 %8956 to %nyx_string*
  %8958 = alloca %nyx_string*
  store %nyx_string* %8957, %nyx_string** %8958
  %8959 = load %nyx_string*, %nyx_string** %8958
  %8960 = load %nyx_string*, %nyx_string** %8917
  %8961 = call i1 @nyx_string_starts_with(%nyx_string* %8959, %nyx_string* %8960)
  %8962 = icmp eq i1 %8961, 0
  br i1 %8962, label %then1659, label %else1660
then1659:
  %8963 = load %nyx_string*, %nyx_string** %8958
  store %nyx_string* %8963, %nyx_string** %8947
  br label %merge1661
else1660:
  br label %merge1661
merge1661:
  br label %merge1658
else1657:
  br label %merge1658
merge1658:
  %8964 = load %nyx_string*, %nyx_string** %8947
  %8965 = load %nyx_string*, %nyx_string** %8914
  %8966 = call i1 @nyx_string_equals(%nyx_string* %8964, %nyx_string* %8965)
  br i1 %8966, label %then1662, label %else1663
then1662:
  %8967 = load %nyx_string*, %nyx_string** %8936
  store %nyx_string* %8967, %nyx_string** %8904
  br label %merge1664
else1663:
  %8968 = load %nyx_string*, %nyx_string** %8936
  %8969 = load %nyx_string*, %nyx_string** %8908
  %8970 = call i1 @nyx_string_equals(%nyx_string* %8968, %nyx_string* %8969)
  br i1 %8970, label %then1665, label %else1666
then1665:
  %8971 = load %nyx_string*, %nyx_string** %8947
  store %nyx_string* %8971, %nyx_string** %8894
  br label %merge1667
else1666:
  br label %merge1667
merge1667:
  %8972 = load %nyx_string*, %nyx_string** %8936
  %8973 = load %nyx_string*, %nyx_string** %8911
  %8974 = call i1 @nyx_string_equals(%nyx_string* %8972, %nyx_string* %8973)
  br i1 %8974, label %then1668, label %else1669
then1668:
  %8975 = load %nyx_string*, %nyx_string** %8947
  store %nyx_string* %8975, %nyx_string** %8897
  br label %merge1670
else1669:
  br label %merge1670
merge1670:
  %8976 = load i64, i64* %8905
  %8977 = add i64 %8976, 1
  store i64 %8977, i64* %8905
  br label %merge1664
merge1664:
  br label %merge1655
else1654:
  br label %merge1655
merge1655:
  %8978 = alloca i1
  store i1 false, i1* %8978
  %8979 = load i1, i1* %8937
  %8980 = icmp eq i1 %8979, 0
  br i1 %8980, label %sc_and_rhs1671, label %sc_and_end1672
sc_and_rhs1671:
  %8981 = load %nyx_string*, %nyx_string** %8936
  %8982 = load %nyx_string*, %nyx_string** %8920
  %8983 = call i1 @nyx_string_starts_with(%nyx_string* %8981, %nyx_string* %8982)
  store i1 %8983, i1* %8978
  br label %sc_and_end1672
sc_and_end1672:
  %8984 = load i1, i1* %8978
  br i1 %8984, label %then1673, label %else1674
then1673:
  store i1 1, i1* %8937
  %8985 = load %nyx_string*, %nyx_string** %8936
  %8986 = load %nyx_string*, %nyx_string** %8936
  %8987 = call i64 @nyx_string_byte_length(%nyx_string* %8986)
  %8988 = call %nyx_string* @nyx_string_substring(%nyx_string* %8985, i64 7, i64 %8987)
  store %nyx_string* %8988, %nyx_string** %8894
  %8989 = load %nyx_string*, %nyx_string** %8894
  %8990 = load %nyx_string*, %nyx_string** %8914
  %8991 = call i1 @nyx_string_equals(%nyx_string* %8989, %nyx_string* %8990)
  br i1 %8991, label %then1676, label %else1677
then1676:
  %8992 = load %nyx_string*, %nyx_string** %8908
  store %nyx_string* %8992, %nyx_string** %8904
  br label %merge1678
else1677:
  br label %merge1678
merge1678:
  br label %merge1675
else1674:
  br label %merge1675
merge1675:
  %8993 = alloca i1
  store i1 false, i1* %8993
  %8994 = load i1, i1* %8937
  %8995 = icmp eq i1 %8994, 0
  br i1 %8995, label %sc_and_rhs1679, label %sc_and_end1680
sc_and_rhs1679:
  %8996 = load %nyx_string*, %nyx_string** %8936
  %8997 = load %nyx_string*, %nyx_string** %8923
  %8998 = call i1 @nyx_string_starts_with(%nyx_string* %8996, %nyx_string* %8997)
  store i1 %8998, i1* %8993
  br label %sc_and_end1680
sc_and_end1680:
  %8999 = load i1, i1* %8993
  br i1 %8999, label %then1681, label %else1682
then1681:
  store i1 1, i1* %8937
  %9000 = load %nyx_string*, %nyx_string** %8936
  %9001 = load %nyx_string*, %nyx_string** %8936
  %9002 = call i64 @nyx_string_byte_length(%nyx_string* %9001)
  %9003 = call %nyx_string* @nyx_string_substring(%nyx_string* %9000, i64 8, i64 %9002)
  store %nyx_string* %9003, %nyx_string** %8897
  %9004 = load %nyx_string*, %nyx_string** %8897
  %9005 = load %nyx_string*, %nyx_string** %8914
  %9006 = call i1 @nyx_string_equals(%nyx_string* %9004, %nyx_string* %9005)
  br i1 %9006, label %then1684, label %else1685
then1684:
  %9007 = load %nyx_string*, %nyx_string** %8911
  store %nyx_string* %9007, %nyx_string** %8904
  br label %merge1686
else1685:
  br label %merge1686
merge1686:
  br label %merge1683
else1682:
  br label %merge1683
merge1683:
  %9008 = alloca i1
  store i1 false, i1* %9008
  %9009 = load i1, i1* %8937
  %9010 = icmp eq i1 %9009, 0
  br i1 %9010, label %sc_and_rhs1687, label %sc_and_end1688
sc_and_rhs1687:
  %9011 = load %nyx_string*, %nyx_string** %8936
  %9012 = load %nyx_string*, %nyx_string** %8926
  %9013 = call i1 @nyx_string_equals(%nyx_string* %9011, %nyx_string* %9012)
  store i1 %9013, i1* %9008
  br label %sc_and_end1688
sc_and_end1688:
  %9014 = load i1, i1* %9008
  br i1 %9014, label %then1689, label %else1690
then1689:
  store i1 1, i1* %8937
  store i1 1, i1* %8898
  br label %merge1691
else1690:
  br label %merge1691
merge1691:
  %9015 = alloca i1
  store i1 false, i1* %9015
  %9016 = load i1, i1* %8937
  %9017 = icmp eq i1 %9016, 0
  br i1 %9017, label %sc_and_rhs1692, label %sc_and_end1693
sc_and_rhs1692:
  %9018 = load %nyx_string*, %nyx_string** %8936
  %9019 = load %nyx_string*, %nyx_string** %8917
  %9020 = call i1 @nyx_string_starts_with(%nyx_string* %9018, %nyx_string* %9019)
  store i1 %9020, i1* %9015
  br label %sc_and_end1693
sc_and_end1693:
  %9021 = load i1, i1* %9015
  br i1 %9021, label %then1694, label %else1695
then1694:
  store i1 1, i1* %8937
  %9022 = load %nyx_string*, %nyx_string** %8936
  store %nyx_string* %9022, %nyx_string** %8901
  br label %merge1696
else1695:
  br label %merge1696
merge1696:
  %9023 = load i1, i1* %8937
  %9024 = icmp eq i1 %9023, 0
  br i1 %9024, label %then1697, label %else1698
then1697:
  %9025 = load %nyx_string*, %nyx_string** %8891
  %9026 = load %nyx_string*, %nyx_string** %8914
  %9027 = call i1 @nyx_string_equals(%nyx_string* %9025, %nyx_string* %9026)
  br i1 %9027, label %then1700, label %else1701
then1700:
  %9028 = load %nyx_string*, %nyx_string** %8936
  store %nyx_string* %9028, %nyx_string** %8891
  br label %merge1702
else1701:
  br label %merge1702
merge1702:
  br label %merge1699
else1698:
  br label %merge1699
merge1699:
  %9029 = load i64, i64* %8905
  %9030 = add i64 %9029, 1
  store i64 %9030, i64* %8905
  br label %while_cond1648
while_end1650:
  %9031 = load %nyx_string*, %nyx_string** %8901
  %9032 = getelementptr [1 x i8], [1 x i8]* @.str1201, i32 0, i32 0
  %9033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1201.c, i8* %9032, i64 0)
  %9034 = call i1 @nyx_string_equals(%nyx_string* %9031, %nyx_string* %9033)
  %9035 = xor i1 %9034, true
  br i1 %9035, label %then1703, label %else1704
then1703:
  %9036 = getelementptr [42 x i8], [42 x i8]* @.str1202, i32 0, i32 0
  %9037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1202.c, i8* %9036, i64 41)
  %9038 = load %nyx_string*, %nyx_string** %8901
  %9039 = call %nyx_string* @nyx_string_concat(%nyx_string* %9037, %nyx_string* %9038)
  %9040 = call i8* @nyx_string_to_cstr(%nyx_string* %9039)
  call void @nyx_print_string(i8* %9040)
  %9041 = getelementptr [80 x i8], [80 x i8]* @.str1203, i32 0, i32 0
  %9042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1203.c, i8* %9041, i64 79)
  %9043 = call i8* @nyx_string_to_cstr(%nyx_string* %9042)
  call void @nyx_print_string(i8* %9043)
  ret i64 1
else1704:
  br label %merge1705
merge1705:
  %9044 = load %nyx_string*, %nyx_string** %8904
  %9045 = getelementptr [1 x i8], [1 x i8]* @.str1204, i32 0, i32 0
  %9046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1204.c, i8* %9045, i64 0)
  %9047 = call i1 @nyx_string_equals(%nyx_string* %9044, %nyx_string* %9046)
  %9048 = xor i1 %9047, true
  br i1 %9048, label %then1706, label %else1707
then1706:
  %9049 = getelementptr [8 x i8], [8 x i8]* @.str1205, i32 0, i32 0
  %9050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1205.c, i8* %9049, i64 7)
  %9051 = load %nyx_string*, %nyx_string** %8904
  %9052 = call %nyx_string* @nyx_string_concat(%nyx_string* %9050, %nyx_string* %9051)
  %9053 = getelementptr [19 x i8], [19 x i8]* @.str1206, i32 0, i32 0
  %9054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1206.c, i8* %9053, i64 18)
  %9055 = call %nyx_string* @nyx_string_concat(%nyx_string* %9052, %nyx_string* %9054)
  %9056 = call i8* @nyx_string_to_cstr(%nyx_string* %9055)
  call void @nyx_print_string(i8* %9056)
  %9057 = getelementptr [80 x i8], [80 x i8]* @.str1207, i32 0, i32 0
  %9058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1207.c, i8* %9057, i64 79)
  %9059 = call i8* @nyx_string_to_cstr(%nyx_string* %9058)
  call void @nyx_print_string(i8* %9059)
  ret i64 1
else1707:
  br label %merge1708
merge1708:
  %9060 = load %nyx_string*, %nyx_string** %8894
  %9061 = getelementptr [1 x i8], [1 x i8]* @.str1208, i32 0, i32 0
  %9062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1208.c, i8* %9061, i64 0)
  %9063 = call i1 @nyx_string_equals(%nyx_string* %9060, %nyx_string* %9062)
  br i1 %9063, label %then1709, label %else1710
then1709:
  %9064 = getelementptr [9 x i8], [9 x i8]* @.str1209, i32 0, i32 0
  %9065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1209.c, i8* %9064, i64 8)
  %9066 = call i8* @nyx_string_to_cstr(%nyx_string* %9065)
  %9067 = call %nyx_string* @nyx_getenv(i8* %9066)
  %9068 = alloca %nyx_string*
  store %nyx_string* %9067, %nyx_string** %9068
  %9069 = load %nyx_string*, %nyx_string** %9068
  %9070 = getelementptr [3 x i8], [3 x i8]* @.str1210, i32 0, i32 0
  %9071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1210.c, i8* %9070, i64 2)
  %9072 = call i1 @nyx_string_equals(%nyx_string* %9069, %nyx_string* %9071)
  br i1 %9072, label %then1712, label %else1713
then1712:
  %9073 = getelementptr [3 x i8], [3 x i8]* @.str1211, i32 0, i32 0
  %9074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1211.c, i8* %9073, i64 2)
  store %nyx_string* %9074, %nyx_string** %8894
  br label %merge1714
else1713:
  br label %merge1714
merge1714:
  %9075 = load %nyx_string*, %nyx_string** %8894
  %9076 = getelementptr [1 x i8], [1 x i8]* @.str1212, i32 0, i32 0
  %9077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1212.c, i8* %9076, i64 0)
  %9078 = call i1 @nyx_string_equals(%nyx_string* %9075, %nyx_string* %9077)
  br i1 %9078, label %then1715, label %else1716
then1715:
  %9079 = getelementptr [3 x i8], [3 x i8]* @.str1213, i32 0, i32 0
  %9080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1213.c, i8* %9079, i64 2)
  store %nyx_string* %9080, %nyx_string** %8894
  br label %merge1717
else1716:
  br label %merge1717
merge1717:
  br label %merge1711
else1710:
  br label %merge1711
merge1711:
  %9081 = alloca i1
  store i1 false, i1* %9081
  %9082 = load %nyx_string*, %nyx_string** %8894
  %9083 = getelementptr [3 x i8], [3 x i8]* @.str1214, i32 0, i32 0
  %9084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1214.c, i8* %9083, i64 2)
  %9085 = call i1 @nyx_string_equals(%nyx_string* %9082, %nyx_string* %9084)
  %9086 = xor i1 %9085, true
  br i1 %9086, label %sc_and_rhs1718, label %sc_and_end1719
sc_and_rhs1718:
  %9087 = load %nyx_string*, %nyx_string** %8894
  %9088 = getelementptr [3 x i8], [3 x i8]* @.str1215, i32 0, i32 0
  %9089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1215.c, i8* %9088, i64 2)
  %9090 = call i1 @nyx_string_equals(%nyx_string* %9087, %nyx_string* %9089)
  %9091 = xor i1 %9090, true
  store i1 %9091, i1* %9081
  br label %sc_and_end1719
sc_and_end1719:
  %9092 = load i1, i1* %9081
  br i1 %9092, label %then1720, label %else1721
then1720:
  %9093 = getelementptr [27 x i8], [27 x i8]* @.str1216, i32 0, i32 0
  %9094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1216.c, i8* %9093, i64 26)
  %9095 = load %nyx_string*, %nyx_string** %8894
  %9096 = call %nyx_string* @nyx_string_concat(%nyx_string* %9094, %nyx_string* %9095)
  %9097 = getelementptr [29 x i8], [29 x i8]* @.str1217, i32 0, i32 0
  %9098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1217.c, i8* %9097, i64 28)
  %9099 = call %nyx_string* @nyx_string_concat(%nyx_string* %9096, %nyx_string* %9098)
  %9100 = call i8* @nyx_string_to_cstr(%nyx_string* %9099)
  call void @nyx_print_string(i8* %9100)
  ret i64 1
else1721:
  br label %merge1722
merge1722:
  %9101 = load %nyx_string*, %nyx_string** %8897
  %9102 = call i1 @validate_agents(%nyx_string* %9101)
  %9103 = icmp eq i1 %9102, 0
  br i1 %9103, label %then1723, label %else1724
then1723:
  ret i64 1
else1724:
  br label %merge1725
merge1725:
  %9104 = load %nyx_string*, %nyx_string** %8891
  %9105 = load %nyx_string*, %nyx_string** %8894
  %9106 = load %nyx_string*, %nyx_string** %8897
  %9107 = call i1 @run_init(%nyx_string* %9104, %nyx_string* %9105, %nyx_string* %9106)
  %9108 = alloca i1
  store i1 %9107, i1* %9108
  %9109 = load i1, i1* %9108
  %9110 = icmp eq i1 %9109, 0
  br i1 %9110, label %then1726, label %else1727
then1726:
  ret i64 1
else1727:
  br label %merge1728
merge1728:
  %9111 = load i1, i1* %8898
  br i1 %9111, label %then1729, label %else1730
then1729:
  %9112 = load %nyx_string*, %nyx_string** %8891
  %9113 = alloca %nyx_string*
  store %nyx_string* %9112, %nyx_string** %9113
  %9114 = load %nyx_string*, %nyx_string** %9113
  %9115 = getelementptr [1 x i8], [1 x i8]* @.str1218, i32 0, i32 0
  %9116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1218.c, i8* %9115, i64 0)
  %9117 = call i1 @nyx_string_equals(%nyx_string* %9114, %nyx_string* %9116)
  br i1 %9117, label %then1732, label %else1733
then1732:
  %9118 = getelementptr [2 x i8], [2 x i8]* @.str1219, i32 0, i32 0
  %9119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1219.c, i8* %9118, i64 1)
  store %nyx_string* %9119, %nyx_string** %9113
  br label %merge1734
else1733:
  br label %merge1734
merge1734:
  %9120 = getelementptr [1 x i8], [1 x i8]* @.str1220, i32 0, i32 0
  %9121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1220.c, i8* %9120, i64 0)
  %9122 = call i8* @nyx_string_to_cstr(%nyx_string* %9121)
  call void @nyx_print_string(i8* %9122)
  %9123 = load %nyx_string*, %nyx_string** %9113
  %9124 = load %nyx_string*, %nyx_string** %8894
  %9125 = call i1 @run_sdd_init(%nyx_string* %9123, %nyx_string* %9124)
  %9126 = alloca i1
  store i1 %9125, i1* %9126
  %9127 = load i1, i1* %9126
  %9128 = icmp eq i1 %9127, 0
  br i1 %9128, label %then1735, label %else1736
then1735:
  ret i64 1
else1736:
  br label %merge1737
merge1737:
  br label %merge1731
else1730:
  br label %merge1731
merge1731:
  ret i64 0
else1646:
  br label %merge1647
merge1647:
  %9129 = load %nyx_string*, %nyx_string** %8645
  %9130 = getelementptr [4 x i8], [4 x i8]* @.str1221, i32 0, i32 0
  %9131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1221.c, i8* %9130, i64 3)
  %9132 = call i1 @nyx_string_equals(%nyx_string* %9129, %nyx_string* %9131)
  br i1 %9132, label %then1738, label %else1739
then1738:
  %9133 = getelementptr [1 x i8], [1 x i8]* @.str1222, i32 0, i32 0
  %9134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1222.c, i8* %9133, i64 0)
  %9135 = alloca %nyx_string*
  store %nyx_string* %9134, %nyx_string** %9135
  %9136 = load { i64, i8* }*, { i64, i8* }** %8642
  %9137 = call i64 @nyx_array_length({ i64, i8* }* %9136)
  %9138 = icmp sge i64 %9137, 3
  br i1 %9138, label %then1741, label %else1742
then1741:
  %9139 = load { i64, i8* }*, { i64, i8* }** %8642
  %9140 = call i64 @nyx_array_get_checked({ i64, i8* }* %9139, i64 2, i64 2)
  %9141 = inttoptr i64 %9140 to %nyx_string*
  %9142 = alloca %nyx_string*
  store %nyx_string* %9141, %nyx_string** %9142
  %9143 = load %nyx_string*, %nyx_string** %9142
  store %nyx_string* %9143, %nyx_string** %9135
  br label %merge1743
else1742:
  br label %merge1743
merge1743:
  %9144 = load %nyx_string*, %nyx_string** %9135
  %9145 = getelementptr [5 x i8], [5 x i8]* @.str1223, i32 0, i32 0
  %9146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1223.c, i8* %9145, i64 4)
  %9147 = call i1 @nyx_string_equals(%nyx_string* %9144, %nyx_string* %9146)
  br i1 %9147, label %then1744, label %else1745
then1744:
  %9148 = getelementptr [2 x i8], [2 x i8]* @.str1224, i32 0, i32 0
  %9149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1224.c, i8* %9148, i64 1)
  %9150 = getelementptr [2 x i8], [2 x i8]* @.str1225, i32 0, i32 0
  %9151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1225.c, i8* %9150, i64 1)
  %9152 = call %nyx_string* @project_lang(%nyx_string* %9151)
  %9153 = call i1 @run_sdd_init(%nyx_string* %9149, %nyx_string* %9152)
  %9154 = alloca i1
  store i1 %9153, i1* %9154
  %9155 = load i1, i1* %9154
  br i1 %9155, label %then1747, label %else1748
then1747:
  ret i64 0
else1748:
  br label %merge1749
merge1749:
  ret i64 1
else1745:
  br label %merge1746
merge1746:
  %9156 = load %nyx_string*, %nyx_string** %9135
  %9157 = getelementptr [9 x i8], [9 x i8]* @.str1226, i32 0, i32 0
  %9158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1226.c, i8* %9157, i64 8)
  %9159 = call i1 @nyx_string_equals(%nyx_string* %9156, %nyx_string* %9158)
  br i1 %9159, label %then1750, label %else1751
then1750:
  %9160 = getelementptr [2 x i8], [2 x i8]* @.str1227, i32 0, i32 0
  %9161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1227.c, i8* %9160, i64 1)
  %9162 = getelementptr [2 x i8], [2 x i8]* @.str1228, i32 0, i32 0
  %9163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1228.c, i8* %9162, i64 1)
  %9164 = call %nyx_string* @project_lang(%nyx_string* %9163)
  %9165 = call i1 @run_sdd_evidence(%nyx_string* %9161, %nyx_string* %9164)
  %9166 = alloca i1
  store i1 %9165, i1* %9166
  %9167 = load i1, i1* %9166
  br i1 %9167, label %then1753, label %else1754
then1753:
  ret i64 0
else1754:
  br label %merge1755
merge1755:
  ret i64 1
else1751:
  br label %merge1752
merge1752:
  %9168 = load %nyx_string*, %nyx_string** %9135
  %9169 = getelementptr [1 x i8], [1 x i8]* @.str1229, i32 0, i32 0
  %9170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1229.c, i8* %9169, i64 0)
  %9171 = call i1 @nyx_string_equals(%nyx_string* %9168, %nyx_string* %9170)
  br i1 %9171, label %then1756, label %else1757
then1756:
  %9172 = getelementptr [57 x i8], [57 x i8]* @.str1230, i32 0, i32 0
  %9173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1230.c, i8* %9172, i64 56)
  %9174 = call i8* @nyx_string_to_cstr(%nyx_string* %9173)
  call void @nyx_print_string(i8* %9174)
  br label %merge1758
else1757:
  %9175 = getelementptr [48 x i8], [48 x i8]* @.str1231, i32 0, i32 0
  %9176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1231.c, i8* %9175, i64 47)
  %9177 = load %nyx_string*, %nyx_string** %9135
  %9178 = call %nyx_string* @nyx_string_concat(%nyx_string* %9176, %nyx_string* %9177)
  %9179 = getelementptr [29 x i8], [29 x i8]* @.str1232, i32 0, i32 0
  %9180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1232.c, i8* %9179, i64 28)
  %9181 = call %nyx_string* @nyx_string_concat(%nyx_string* %9178, %nyx_string* %9180)
  %9182 = call i8* @nyx_string_to_cstr(%nyx_string* %9181)
  call void @nyx_print_string(i8* %9182)
  br label %merge1758
merge1758:
  %9183 = getelementptr [69 x i8], [69 x i8]* @.str1233, i32 0, i32 0
  %9184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1233.c, i8* %9183, i64 68)
  %9185 = call i8* @nyx_string_to_cstr(%nyx_string* %9184)
  call void @nyx_print_string(i8* %9185)
  %9186 = getelementptr [79 x i8], [79 x i8]* @.str1234, i32 0, i32 0
  %9187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1234.c, i8* %9186, i64 78)
  %9188 = call i8* @nyx_string_to_cstr(%nyx_string* %9187)
  call void @nyx_print_string(i8* %9188)
  ret i64 1
else1739:
  br label %merge1740
merge1740:
  %9189 = load %nyx_string*, %nyx_string** %8645
  %9190 = getelementptr [4 x i8], [4 x i8]* @.str1235, i32 0, i32 0
  %9191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1235.c, i8* %9190, i64 3)
  %9192 = call i1 @nyx_string_equals(%nyx_string* %9189, %nyx_string* %9191)
  br i1 %9192, label %then1759, label %else1760
then1759:
  %9193 = load { i64, i8* }*, { i64, i8* }** %8642
  %9194 = call i64 @nyx_array_length({ i64, i8* }* %9193)
  %9195 = icmp slt i64 %9194, 3
  br i1 %9195, label %then1762, label %else1763
then1762:
  %9196 = getelementptr [51 x i8], [51 x i8]* @.str1236, i32 0, i32 0
  %9197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1236.c, i8* %9196, i64 50)
  %9198 = call i8* @nyx_string_to_cstr(%nyx_string* %9197)
  call void @nyx_print_string(i8* %9198)
  ret i64 1
else1763:
  br label %merge1764
merge1764:
  %9199 = load { i64, i8* }*, { i64, i8* }** %8642
  %9200 = call i64 @nyx_array_get_checked({ i64, i8* }* %9199, i64 2, i64 2)
  %9201 = inttoptr i64 %9200 to %nyx_string*
  %9202 = alloca %nyx_string*
  store %nyx_string* %9201, %nyx_string** %9202
  %9203 = getelementptr [1 x i8], [1 x i8]* @.str1237, i32 0, i32 0
  %9204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1237.c, i8* %9203, i64 0)
  %9205 = alloca %nyx_string*
  store %nyx_string* %9204, %nyx_string** %9205
  %9206 = load { i64, i8* }*, { i64, i8* }** %8642
  %9207 = call i64 @nyx_array_length({ i64, i8* }* %9206)
  %9208 = icmp sge i64 %9207, 5
  br i1 %9208, label %then1765, label %else1766
then1765:
  %9209 = load { i64, i8* }*, { i64, i8* }** %8642
  %9210 = call i64 @nyx_array_get_checked({ i64, i8* }* %9209, i64 3, i64 2)
  %9211 = inttoptr i64 %9210 to %nyx_string*
  %9212 = alloca %nyx_string*
  store %nyx_string* %9211, %nyx_string** %9212
  %9213 = load %nyx_string*, %nyx_string** %9212
  %9214 = getelementptr [7 x i8], [7 x i8]* @.str1238, i32 0, i32 0
  %9215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1238.c, i8* %9214, i64 6)
  %9216 = call i1 @nyx_string_equals(%nyx_string* %9213, %nyx_string* %9215)
  br i1 %9216, label %then1768, label %else1769
then1768:
  %9217 = load { i64, i8* }*, { i64, i8* }** %8642
  %9218 = call i64 @nyx_array_get_checked({ i64, i8* }* %9217, i64 4, i64 2)
  %9219 = inttoptr i64 %9218 to %nyx_string*
  %9220 = alloca %nyx_string*
  store %nyx_string* %9219, %nyx_string** %9220
  %9221 = load %nyx_string*, %nyx_string** %9220
  store %nyx_string* %9221, %nyx_string** %9205
  br label %merge1770
else1769:
  br label %merge1770
merge1770:
  br label %merge1767
else1766:
  br label %merge1767
merge1767:
  %9222 = call { i64, i8* }* @nyx_array_new_ptr()
  %9223 = alloca { i64, i8* }*
  store { i64, i8* }* %9222, { i64, i8* }** %9223
  %9224 = call { i64, i8* }* @nyx_array_new_ptr()
  %9225 = alloca { i64, i8* }*
  store { i64, i8* }* %9224, { i64, i8* }** %9225
  %9226 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %9227 = ptrtoint %ProjectConfig* %9226 to i64
  %9228 = call i8* @GC_malloc(i64 %9227)
  %9229 = bitcast i8* %9228 to %ProjectConfig*
  %9230 = getelementptr [8 x i8], [8 x i8]* @.str1239, i32 0, i32 0
  %9231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1239.c, i8* %9230, i64 7)
  %9232 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 0
  store %nyx_string* %9231, %nyx_string** %9232
  %9233 = getelementptr [6 x i8], [6 x i8]* @.str1240, i32 0, i32 0
  %9234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1240.c, i8* %9233, i64 5)
  %9235 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 1
  store %nyx_string* %9234, %nyx_string** %9235
  %9236 = getelementptr [1 x i8], [1 x i8]* @.str1241, i32 0, i32 0
  %9237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1241.c, i8* %9236, i64 0)
  %9238 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 2
  store %nyx_string* %9237, %nyx_string** %9238
  %9239 = getelementptr [1 x i8], [1 x i8]* @.str1242, i32 0, i32 0
  %9240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1242.c, i8* %9239, i64 0)
  %9241 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 3
  store %nyx_string* %9240, %nyx_string** %9241
  %9242 = getelementptr [1 x i8], [1 x i8]* @.str1243, i32 0, i32 0
  %9243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1243.c, i8* %9242, i64 0)
  %9244 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 4
  store %nyx_string* %9243, %nyx_string** %9244
  %9245 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 5
  store i1 0, i1* %9245
  %9246 = getelementptr [1 x i8], [1 x i8]* @.str1244, i32 0, i32 0
  %9247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1244.c, i8* %9246, i64 0)
  %9248 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 6
  store %nyx_string* %9247, %nyx_string** %9248
  %9249 = load { i64, i8* }*, { i64, i8* }** %9223
  %9250 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 7
  store { i64, i8* }* %9249, { i64, i8* }** %9250
  %9251 = load { i64, i8* }*, { i64, i8* }** %9225
  %9252 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 8
  store { i64, i8* }* %9251, { i64, i8* }** %9252
  %9253 = getelementptr [1 x i8], [1 x i8]* @.str1245, i32 0, i32 0
  %9254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1245.c, i8* %9253, i64 0)
  %9255 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 9
  store %nyx_string* %9254, %nyx_string** %9255
  %9256 = getelementptr [1 x i8], [1 x i8]* @.str1246, i32 0, i32 0
  %9257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1246.c, i8* %9256, i64 0)
  %9258 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 10
  store %nyx_string* %9257, %nyx_string** %9258
  %9259 = call { i64, i8* }* @nyx_array_new_ptr()
  %9260 = getelementptr %ProjectConfig, %ProjectConfig* %9229, i32 0, i32 11
  store { i64, i8* }* %9259, { i64, i8* }** %9260
  %9261 = load %ProjectConfig, %ProjectConfig* %9229
  %9262 = alloca %ProjectConfig
  store %ProjectConfig %9261, %ProjectConfig* %9262
  %9263 = load %nyx_string*, %nyx_string** %9202
  %9264 = load %nyx_string*, %nyx_string** %9205
  %9265 = load %ProjectConfig, %ProjectConfig* %9262
  %9266 = call i1 @run_add(%nyx_string* %9263, %nyx_string* %9264, %ProjectConfig %9265)
  %9267 = alloca i1
  store i1 %9266, i1* %9267
  %9268 = load i1, i1* %9267
  br i1 %9268, label %then1771, label %else1772
then1771:
  ret i64 0
else1772:
  br label %merge1773
merge1773:
  ret i64 1
else1760:
  br label %merge1761
merge1761:
  %9269 = load %nyx_string*, %nyx_string** %8645
  %9270 = getelementptr [7 x i8], [7 x i8]* @.str1247, i32 0, i32 0
  %9271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1247.c, i8* %9270, i64 6)
  %9272 = call i1 @nyx_string_equals(%nyx_string* %9269, %nyx_string* %9271)
  br i1 %9272, label %then1774, label %else1775
then1774:
  %9273 = getelementptr [1 x i8], [1 x i8]* @.str1248, i32 0, i32 0
  %9274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1248.c, i8* %9273, i64 0)
  %9275 = alloca %nyx_string*
  store %nyx_string* %9274, %nyx_string** %9275
  %9276 = alloca i1
  store i1 0, i1* %9276
  %9277 = alloca i64
  store i64 2, i64* %9277
  %9278 = getelementptr [7 x i8], [7 x i8]* @.str1249, i32 0, i32 0
  %9279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1249.c, i8* %9278, i64 6)
  %9280 = alloca %nyx_string*
  store %nyx_string* %9279, %nyx_string** %9280
  %9281 = getelementptr [10 x i8], [10 x i8]* @.str1250, i32 0, i32 0
  %9282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1250.c, i8* %9281, i64 9)
  %9283 = alloca %nyx_string*
  store %nyx_string* %9282, %nyx_string** %9283
  %9284 = call i8* @llvm.stacksave()
  br label %while_cond1777
while_cond1777:
  %9285 = load i64, i64* %9277
  %9286 = load { i64, i8* }*, { i64, i8* }** %8642
  %9287 = call i64 @nyx_array_length({ i64, i8* }* %9286)
  %9288 = icmp slt i64 %9285, %9287
  br i1 %9288, label %while_body1778, label %while_end1779
while_body1778:
  call void @llvm.stackrestore(i8* %9284)
  %9289 = load { i64, i8* }*, { i64, i8* }** %8642
  %9290 = load i64, i64* %9277
  %9291 = call i64 @nyx_array_get_checked({ i64, i8* }* %9289, i64 %9290, i64 2)
  %9292 = inttoptr i64 %9291 to %nyx_string*
  %9293 = alloca %nyx_string*
  store %nyx_string* %9292, %nyx_string** %9293
  %9294 = load %nyx_string*, %nyx_string** %9293
  %9295 = load %nyx_string*, %nyx_string** %9280
  %9296 = call i1 @nyx_string_equals(%nyx_string* %9294, %nyx_string* %9295)
  br i1 %9296, label %then1780, label %else1781
then1780:
  store i1 1, i1* %9276
  br label %merge1782
else1781:
  %9297 = load %nyx_string*, %nyx_string** %9293
  %9298 = load %nyx_string*, %nyx_string** %9283
  %9299 = call i1 @nyx_string_equals(%nyx_string* %9297, %nyx_string* %9298)
  %9300 = xor i1 %9299, true
  br i1 %9300, label %then1783, label %else1784
then1783:
  %9301 = load %nyx_string*, %nyx_string** %9293
  store %nyx_string* %9301, %nyx_string** %9275
  br label %merge1785
else1784:
  br label %merge1785
merge1785:
  br label %merge1782
merge1782:
  %9302 = load i64, i64* %9277
  %9303 = add i64 %9302, 1
  store i64 %9303, i64* %9277
  br label %while_cond1777
while_end1779:
  %9304 = load %nyx_string*, %nyx_string** %9275
  %9305 = load i1, i1* %9276
  %9306 = call i1 @run_report(%nyx_string* %9304, i1 %9305)
  %9307 = alloca i1
  store i1 %9306, i1* %9307
  %9308 = load i1, i1* %9307
  br i1 %9308, label %then1786, label %else1787
then1786:
  ret i64 0
else1787:
  br label %merge1788
merge1788:
  ret i64 1
else1775:
  br label %merge1776
merge1776:
  %9309 = load %nyx_string*, %nyx_string** %8645
  %9310 = getelementptr [13 x i8], [13 x i8]* @.str1251, i32 0, i32 0
  %9311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1251.c, i8* %9310, i64 12)
  %9312 = call i1 @nyx_string_equals(%nyx_string* %9309, %nyx_string* %9311)
  br i1 %9312, label %then1789, label %else1790
then1789:
  %9313 = load { i64, i8* }*, { i64, i8* }** %8642
  %9314 = call i64 @nyx_array_length({ i64, i8* }* %9313)
  %9315 = icmp slt i64 %9314, 6
  br i1 %9315, label %then1792, label %else1793
then1792:
  %9316 = getelementptr [68 x i8], [68 x i8]* @.str1252, i32 0, i32 0
  %9317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1252.c, i8* %9316, i64 67)
  %9318 = call i8* @nyx_string_to_cstr(%nyx_string* %9317)
  call void @nyx_print_string(i8* %9318)
  ret i64 1
else1793:
  br label %merge1794
merge1794:
  %9319 = load { i64, i8* }*, { i64, i8* }** %8642
  %9320 = call i64 @nyx_array_get_checked({ i64, i8* }* %9319, i64 2, i64 2)
  %9321 = inttoptr i64 %9320 to %nyx_string*
  %9322 = alloca %nyx_string*
  store %nyx_string* %9321, %nyx_string** %9322
  %9323 = load { i64, i8* }*, { i64, i8* }** %8642
  %9324 = call i64 @nyx_array_get_checked({ i64, i8* }* %9323, i64 3, i64 2)
  %9325 = inttoptr i64 %9324 to %nyx_string*
  %9326 = alloca %nyx_string*
  store %nyx_string* %9325, %nyx_string** %9326
  %9327 = load { i64, i8* }*, { i64, i8* }** %8642
  %9328 = call i64 @nyx_array_get_checked({ i64, i8* }* %9327, i64 4, i64 2)
  %9329 = inttoptr i64 %9328 to %nyx_string*
  %9330 = alloca %nyx_string*
  store %nyx_string* %9329, %nyx_string** %9330
  %9331 = load { i64, i8* }*, { i64, i8* }** %8642
  %9332 = call i64 @nyx_array_get_checked({ i64, i8* }* %9331, i64 5, i64 2)
  %9333 = inttoptr i64 %9332 to %nyx_string*
  %9334 = alloca %nyx_string*
  store %nyx_string* %9333, %nyx_string** %9334
  %9335 = load %nyx_string*, %nyx_string** %9322
  %9336 = load %nyx_string*, %nyx_string** %9326
  %9337 = load %nyx_string*, %nyx_string** %9330
  %9338 = load %nyx_string*, %nyx_string** %9334
  %9339 = call i1 @run_agents_merge(%nyx_string* %9335, %nyx_string* %9336, %nyx_string* %9337, %nyx_string* %9338)
  br i1 %9339, label %then1795, label %else1796
then1795:
  ret i64 0
else1796:
  br label %merge1797
merge1797:
  ret i64 1
else1790:
  br label %merge1791
merge1791:
  %9340 = load %nyx_string*, %nyx_string** %8645
  %9341 = getelementptr [13 x i8], [13 x i8]* @.str1253, i32 0, i32 0
  %9342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1253.c, i8* %9341, i64 12)
  %9343 = call i1 @nyx_string_equals(%nyx_string* %9340, %nyx_string* %9342)
  br i1 %9343, label %then1798, label %else1799
then1798:
  %9344 = getelementptr [1 x i8], [1 x i8]* @.str1254, i32 0, i32 0
  %9345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1254.c, i8* %9344, i64 0)
  %9346 = alloca %nyx_string*
  store %nyx_string* %9345, %nyx_string** %9346
  %9347 = load { i64, i8* }*, { i64, i8* }** %8642
  %9348 = call i64 @nyx_array_length({ i64, i8* }* %9347)
  %9349 = icmp sge i64 %9348, 3
  br i1 %9349, label %then1801, label %else1802
then1801:
  %9350 = load { i64, i8* }*, { i64, i8* }** %8642
  %9351 = call i64 @nyx_array_get_checked({ i64, i8* }* %9350, i64 2, i64 2)
  %9352 = inttoptr i64 %9351 to %nyx_string*
  %9353 = alloca %nyx_string*
  store %nyx_string* %9352, %nyx_string** %9353
  %9354 = load %nyx_string*, %nyx_string** %9353
  %9355 = getelementptr [10 x i8], [10 x i8]* @.str1255, i32 0, i32 0
  %9356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1255.c, i8* %9355, i64 9)
  %9357 = call i1 @nyx_string_equals(%nyx_string* %9354, %nyx_string* %9356)
  %9358 = xor i1 %9357, true
  br i1 %9358, label %then1804, label %else1805
then1804:
  %9359 = load %nyx_string*, %nyx_string** %9353
  store %nyx_string* %9359, %nyx_string** %9346
  br label %merge1806
else1805:
  br label %merge1806
merge1806:
  br label %merge1803
else1802:
  br label %merge1803
merge1803:
  %9360 = load %nyx_string*, %nyx_string** %9346
  %9361 = call i1 @run_capabilities(%nyx_string* %9360)
  %9362 = alloca i1
  store i1 %9361, i1* %9362
  %9363 = load i1, i1* %9362
  br i1 %9363, label %then1807, label %else1808
then1807:
  ret i64 0
else1808:
  br label %merge1809
merge1809:
  ret i64 1
else1799:
  br label %merge1800
merge1800:
  %9364 = getelementptr [9 x i8], [9 x i8]* @.str1256, i32 0, i32 0
  %9365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1256.c, i8* %9364, i64 8)
  %9366 = call i8* @nyx_string_to_cstr(%nyx_string* %9365)
  %9367 = call i1 @nyx_file_exists(i8* %9366)
  %9368 = xor i1 %9367, true
  br i1 %9368, label %then1810, label %else1811
then1810:
  %9369 = getelementptr [47 x i8], [47 x i8]* @.str1257, i32 0, i32 0
  %9370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1257.c, i8* %9369, i64 46)
  %9371 = call i8* @nyx_string_to_cstr(%nyx_string* %9370)
  call void @nyx_print_string(i8* %9371)
  %9372 = getelementptr [24 x i8], [24 x i8]* @.str1258, i32 0, i32 0
  %9373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1258.c, i8* %9372, i64 23)
  %9374 = call i8* @nyx_string_to_cstr(%nyx_string* %9373)
  call void @nyx_print_string(i8* %9374)
  %9375 = getelementptr [12 x i8], [12 x i8]* @.str1259, i32 0, i32 0
  %9376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1259.c, i8* %9375, i64 11)
  %9377 = call i8* @nyx_string_to_cstr(%nyx_string* %9376)
  call void @nyx_print_string(i8* %9377)
  %9378 = getelementptr [17 x i8], [17 x i8]* @.str1260, i32 0, i32 0
  %9379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1260.c, i8* %9378, i64 16)
  %9380 = call i8* @nyx_string_to_cstr(%nyx_string* %9379)
  call void @nyx_print_string(i8* %9380)
  %9381 = getelementptr [20 x i8], [20 x i8]* @.str1261, i32 0, i32 0
  %9382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1261.c, i8* %9381, i64 19)
  %9383 = call i8* @nyx_string_to_cstr(%nyx_string* %9382)
  call void @nyx_print_string(i8* %9383)
  %9384 = getelementptr [23 x i8], [23 x i8]* @.str1262, i32 0, i32 0
  %9385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1262.c, i8* %9384, i64 22)
  %9386 = call i8* @nyx_string_to_cstr(%nyx_string* %9385)
  call void @nyx_print_string(i8* %9386)
  ret i64 1
else1811:
  br label %merge1812
merge1812:
  %9387 = getelementptr [9 x i8], [9 x i8]* @.str1263, i32 0, i32 0
  %9388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1263.c, i8* %9387, i64 8)
  %9389 = call i8* @nyx_string_to_cstr(%nyx_string* %9388)
  %9390 = call %nyx_string* @nyx_read_file(i8* %9389)
  %9391 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 20
  store %nyx_string* %9390, %nyx_string** %9391
  %9392 = load %nyx_string*, %nyx_string** %9391
  %9393 = call %ProjectConfig @parse_toml(%nyx_string* %9392)
  %9394 = getelementptr %SharedEnv_main, %SharedEnv_main* %8640, i32 0, i32 21
  store %ProjectConfig %9393, %ProjectConfig* %9394
  %9395 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 9
  %9396 = load %nyx_string*, %nyx_string** %9395
  %9397 = getelementptr [1 x i8], [1 x i8]* @.str1264, i32 0, i32 0
  %9398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1264.c, i8* %9397, i64 0)
  %9399 = call i1 @nyx_string_equals(%nyx_string* %9396, %nyx_string* %9398)
  %9400 = xor i1 %9399, true
  br i1 %9400, label %then1813, label %else1814
then1813:
  %9401 = getelementptr [8 x i8], [8 x i8]* @.str1265, i32 0, i32 0
  %9402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1265.c, i8* %9401, i64 7)
  %9403 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 9
  %9404 = load %nyx_string*, %nyx_string** %9403
  %9405 = call %nyx_string* @nyx_string_concat(%nyx_string* %9402, %nyx_string* %9404)
  %9406 = call i8* @nyx_string_to_cstr(%nyx_string* %9405)
  call void @nyx_print_string(i8* %9406)
  ret i64 1
else1814:
  br label %merge1815
merge1815:
  %9407 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 0
  %9408 = load %nyx_string*, %nyx_string** %9407
  %9409 = getelementptr [1 x i8], [1 x i8]* @.str1266, i32 0, i32 0
  %9410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1266.c, i8* %9409, i64 0)
  %9411 = call i1 @nyx_string_equals(%nyx_string* %9408, %nyx_string* %9410)
  br i1 %9411, label %then1816, label %else1817
then1816:
  %9412 = getelementptr [45 x i8], [45 x i8]* @.str1267, i32 0, i32 0
  %9413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1267.c, i8* %9412, i64 44)
  %9414 = call i8* @nyx_string_to_cstr(%nyx_string* %9413)
  call void @nyx_print_string(i8* %9414)
  ret i64 1
else1817:
  br label %merge1818
merge1818:
  %9415 = load %nyx_string*, %nyx_string** %8652
  %9416 = getelementptr [1 x i8], [1 x i8]* @.str1268, i32 0, i32 0
  %9417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1268.c, i8* %9416, i64 0)
  %9418 = call i1 @nyx_string_equals(%nyx_string* %9415, %nyx_string* %9417)
  %9419 = xor i1 %9418, true
  br i1 %9419, label %then1819, label %else1820
then1819:
  %9420 = alloca i1
  store i1 false, i1* %9420
  %9421 = load %nyx_string*, %nyx_string** %8645
  %9422 = getelementptr [6 x i8], [6 x i8]* @.str1269, i32 0, i32 0
  %9423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1269.c, i8* %9422, i64 5)
  %9424 = call i1 @nyx_string_equals(%nyx_string* %9421, %nyx_string* %9423)
  %9425 = xor i1 %9424, true
  br i1 %9425, label %sc_and_rhs1822, label %sc_and_end1823
sc_and_rhs1822:
  %9426 = load %nyx_string*, %nyx_string** %8645
  %9427 = getelementptr [4 x i8], [4 x i8]* @.str1270, i32 0, i32 0
  %9428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1270.c, i8* %9427, i64 3)
  %9429 = call i1 @nyx_string_equals(%nyx_string* %9426, %nyx_string* %9428)
  %9430 = xor i1 %9429, true
  store i1 %9430, i1* %9420
  br label %sc_and_end1823
sc_and_end1823:
  %9431 = load i1, i1* %9420
  br i1 %9431, label %then1824, label %else1825
then1824:
  %9432 = getelementptr [53 x i8], [53 x i8]* @.str1271, i32 0, i32 0
  %9433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1271.c, i8* %9432, i64 52)
  %9434 = call i8* @nyx_string_to_cstr(%nyx_string* %9433)
  call void @nyx_print_string(i8* %9434)
  ret i64 1
else1825:
  br label %merge1826
merge1826:
  %9435 = load %nyx_string*, %nyx_string** %8652
  %9436 = call %nyx_string* @main_flag_error(%nyx_string* %9435)
  %9437 = alloca %nyx_string*
  store %nyx_string* %9436, %nyx_string** %9437
  %9438 = load %nyx_string*, %nyx_string** %9437
  %9439 = getelementptr [1 x i8], [1 x i8]* @.str1272, i32 0, i32 0
  %9440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1272.c, i8* %9439, i64 0)
  %9441 = call i1 @nyx_string_equals(%nyx_string* %9438, %nyx_string* %9440)
  %9442 = xor i1 %9441, true
  br i1 %9442, label %then1827, label %else1828
then1827:
  %9443 = getelementptr [8 x i8], [8 x i8]* @.str1273, i32 0, i32 0
  %9444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1273.c, i8* %9443, i64 7)
  %9445 = load %nyx_string*, %nyx_string** %9437
  %9446 = call %nyx_string* @nyx_string_concat(%nyx_string* %9444, %nyx_string* %9445)
  %9447 = call i8* @nyx_string_to_cstr(%nyx_string* %9446)
  call void @nyx_print_string(i8* %9447)
  ret i64 1
else1828:
  br label %merge1829
merge1829:
  %9448 = load %ProjectConfig, %ProjectConfig* %9394
  %9449 = load %nyx_string*, %nyx_string** %8652
  %9450 = call %nyx_string* @bin_name_for_main(%ProjectConfig %9448, %nyx_string* %9449)
  %9451 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 10
  store %nyx_string* %9450, %nyx_string** %9451
  %9452 = load %nyx_string*, %nyx_string** %8652
  %9453 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 2
  store %nyx_string* %9452, %nyx_string** %9453
  br label %merge1821
else1820:
  br label %merge1821
merge1821:
  %9454 = load %nyx_string*, %nyx_string** %8645
  %9455 = getelementptr [5 x i8], [5 x i8]* @.str1274, i32 0, i32 0
  %9456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1274.c, i8* %9455, i64 4)
  %9457 = call i1 @nyx_string_equals(%nyx_string* %9454, %nyx_string* %9456)
  br i1 %9457, label %then1830, label %else1831
then1830:
  %9458 = load %ProjectConfig, %ProjectConfig* %9394
  %9459 = call i64 @print_info(%ProjectConfig %9458)
  ret i64 0
else1831:
  br label %merge1832
merge1832:
  %9460 = load %nyx_string*, %nyx_string** %8645
  %9461 = getelementptr [5 x i8], [5 x i8]* @.str1275, i32 0, i32 0
  %9462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1275.c, i8* %9461, i64 4)
  %9463 = call i1 @nyx_string_equals(%nyx_string* %9460, %nyx_string* %9462)
  br i1 %9463, label %then1833, label %else1834
then1833:
  %9464 = load %ProjectConfig, %ProjectConfig* %9394
  %9465 = load i1, i1* %8646
  %9466 = call i1 @run_libs(%ProjectConfig %9464, i1 %9465)
  br i1 %9466, label %then1836, label %else1837
then1836:
  ret i64 0
else1837:
  br label %merge1838
merge1838:
  ret i64 1
else1834:
  br label %merge1835
merge1835:
  %9467 = load %nyx_string*, %nyx_string** %8645
  %9468 = getelementptr [6 x i8], [6 x i8]* @.str1276, i32 0, i32 0
  %9469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1276.c, i8* %9468, i64 5)
  %9470 = call i1 @nyx_string_equals(%nyx_string* %9467, %nyx_string* %9469)
  br i1 %9470, label %then1839, label %else1840
then1839:
  %9471 = load %ProjectConfig, %ProjectConfig* %9394
  %9472 = load i1, i1* %8646
  %9473 = load %nyx_string*, %nyx_string** %8649
  %9474 = call i1 @run_build(%ProjectConfig %9471, i1 %9472, %nyx_string* %9473)
  %9475 = alloca i1
  store i1 %9474, i1* %9475
  %9476 = load i1, i1* %9475
  br i1 %9476, label %then1842, label %else1843
then1842:
  %9477 = load %ProjectConfig, %ProjectConfig* %9394
  %9478 = call i64 @write_lockfile(%ProjectConfig %9477)
  %9479 = getelementptr [15 x i8], [15 x i8]* @.str1277, i32 0, i32 0
  %9480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1277.c, i8* %9479, i64 14)
  %9481 = call i8* @nyx_string_to_cstr(%nyx_string* %9480)
  call void @nyx_print_string(i8* %9481)
  ret i64 0
else1843:
  br label %merge1844
merge1844:
  ret i64 1
else1840:
  br label %merge1841
merge1841:
  %9482 = load %nyx_string*, %nyx_string** %8645
  %9483 = getelementptr [4 x i8], [4 x i8]* @.str1278, i32 0, i32 0
  %9484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1278.c, i8* %9483, i64 3)
  %9485 = call i1 @nyx_string_equals(%nyx_string* %9482, %nyx_string* %9484)
  br i1 %9485, label %then1845, label %else1846
then1845:
  %9486 = alloca i64
  store i64 2, i64* %9486
  %9487 = getelementptr [3 x i8], [3 x i8]* @.str1279, i32 0, i32 0
  %9488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1279.c, i8* %9487, i64 2)
  %9489 = alloca %nyx_string*
  store %nyx_string* %9488, %nyx_string** %9489
  %9490 = getelementptr [7 x i8], [7 x i8]* @.str1280, i32 0, i32 0
  %9491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1280.c, i8* %9490, i64 6)
  %9492 = alloca %nyx_string*
  store %nyx_string* %9491, %nyx_string** %9492
  %9493 = getelementptr [3 x i8], [3 x i8]* @.str1281, i32 0, i32 0
  %9494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1281.c, i8* %9493, i64 2)
  %9495 = alloca %nyx_string*
  store %nyx_string* %9494, %nyx_string** %9495
  %9496 = getelementptr [79 x i8], [79 x i8]* @.str1282, i32 0, i32 0
  %9497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1282.c, i8* %9496, i64 78)
  %9498 = alloca %nyx_string*
  store %nyx_string* %9497, %nyx_string** %9498
  %9499 = getelementptr [60 x i8], [60 x i8]* @.str1283, i32 0, i32 0
  %9500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1283.c, i8* %9499, i64 59)
  %9501 = alloca %nyx_string*
  store %nyx_string* %9500, %nyx_string** %9501
  %9502 = getelementptr [1 x i8], [1 x i8]* @.str1284, i32 0, i32 0
  %9503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1284.c, i8* %9502, i64 0)
  %9504 = alloca %nyx_string*
  store %nyx_string* %9503, %nyx_string** %9504
  %9505 = getelementptr [56 x i8], [56 x i8]* @.str1285, i32 0, i32 0
  %9506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1285.c, i8* %9505, i64 55)
  %9507 = alloca %nyx_string*
  store %nyx_string* %9506, %nyx_string** %9507
  %9508 = getelementptr [38 x i8], [38 x i8]* @.str1286, i32 0, i32 0
  %9509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1286.c, i8* %9508, i64 37)
  %9510 = alloca %nyx_string*
  store %nyx_string* %9509, %nyx_string** %9510
  %9511 = call i8* @llvm.stacksave()
  br label %while_cond1848
while_cond1848:
  %9512 = load i64, i64* %9486
  %9513 = load { i64, i8* }*, { i64, i8* }** %8642
  %9514 = call i64 @nyx_array_length({ i64, i8* }* %9513)
  %9515 = icmp slt i64 %9512, %9514
  br i1 %9515, label %while_body1849, label %while_end1850
while_body1849:
  call void @llvm.stackrestore(i8* %9511)
  %9516 = load { i64, i8* }*, { i64, i8* }** %8642
  %9517 = load i64, i64* %9486
  %9518 = call i64 @nyx_array_get_checked({ i64, i8* }* %9516, i64 %9517, i64 2)
  %9519 = inttoptr i64 %9518 to %nyx_string*
  %9520 = alloca %nyx_string*
  store %nyx_string* %9519, %nyx_string** %9520
  %9521 = load %nyx_string*, %nyx_string** %9520
  %9522 = load %nyx_string*, %nyx_string** %9489
  %9523 = call i1 @nyx_string_equals(%nyx_string* %9521, %nyx_string* %9522)
  br i1 %9523, label %then1851, label %else1852
then1851:
  %9524 = load { i64, i8* }*, { i64, i8* }** %8642
  %9525 = call i64 @nyx_array_length({ i64, i8* }* %9524)
  store i64 %9525, i64* %9486
  br label %merge1853
else1852:
  %9526 = alloca i1
  store i1 true, i1* %9526
  %9527 = load %nyx_string*, %nyx_string** %9520
  %9528 = load %nyx_string*, %nyx_string** %9492
  %9529 = call i1 @nyx_string_equals(%nyx_string* %9527, %nyx_string* %9528)
  br i1 %9529, label %sc_or_end1855, label %sc_or_rhs1854
sc_or_rhs1854:
  %9530 = load %nyx_string*, %nyx_string** %9520
  %9531 = load %nyx_string*, %nyx_string** %9495
  %9532 = call i1 @nyx_string_equals(%nyx_string* %9530, %nyx_string* %9531)
  store i1 %9532, i1* %9526
  br label %sc_or_end1855
sc_or_end1855:
  %9533 = load i1, i1* %9526
  br i1 %9533, label %then1856, label %else1857
then1856:
  %9534 = load %nyx_string*, %nyx_string** %9498
  %9535 = call i8* @nyx_string_to_cstr(%nyx_string* %9534)
  call void @nyx_print_string(i8* %9535)
  %9536 = load %nyx_string*, %nyx_string** %9501
  %9537 = call i8* @nyx_string_to_cstr(%nyx_string* %9536)
  call void @nyx_print_string(i8* %9537)
  %9538 = load %nyx_string*, %nyx_string** %9504
  %9539 = call i8* @nyx_string_to_cstr(%nyx_string* %9538)
  call void @nyx_print_string(i8* %9539)
  %9540 = load %nyx_string*, %nyx_string** %9507
  %9541 = call i8* @nyx_string_to_cstr(%nyx_string* %9540)
  call void @nyx_print_string(i8* %9541)
  %9542 = load %nyx_string*, %nyx_string** %9510
  %9543 = call i8* @nyx_string_to_cstr(%nyx_string* %9542)
  call void @nyx_print_string(i8* %9543)
  ret i64 0
else1857:
  br label %merge1858
merge1858:
  %9544 = load i64, i64* %9486
  %9545 = add i64 %9544, 1
  store i64 %9545, i64* %9486
  br label %merge1853
merge1853:
  br label %while_cond1848
while_end1850:
  %9546 = load %ProjectConfig, %ProjectConfig* %9394
  %9547 = load %nyx_string*, %nyx_string** %8649
  %9548 = call i1 @run_build(%ProjectConfig %9546, i1 0, %nyx_string* %9547)
  %9549 = alloca i1
  store i1 %9548, i1* %9549
  %9550 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 0
  %9551 = load %nyx_string*, %nyx_string** %9550
  %9552 = alloca %nyx_string*
  store %nyx_string* %9551, %nyx_string** %9552
  %9553 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 10
  %9554 = load %nyx_string*, %nyx_string** %9553
  %9555 = getelementptr [1 x i8], [1 x i8]* @.str1287, i32 0, i32 0
  %9556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1287.c, i8* %9555, i64 0)
  %9557 = call i1 @nyx_string_equals(%nyx_string* %9554, %nyx_string* %9556)
  %9558 = xor i1 %9557, true
  br i1 %9558, label %then1859, label %else1860
then1859:
  %9559 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 10
  %9560 = load %nyx_string*, %nyx_string** %9559
  store %nyx_string* %9560, %nyx_string** %9552
  br label %merge1861
else1860:
  br label %merge1861
merge1861:
  %9561 = load i1, i1* %9549
  br i1 %9561, label %then1862, label %else1863
then1862:
  %9562 = load %ProjectConfig, %ProjectConfig* %9394
  %9563 = call i64 @write_lockfile(%ProjectConfig %9562)
  %9564 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 6
  %9565 = load %nyx_string*, %nyx_string** %9564
  %9566 = alloca %nyx_string*
  store %nyx_string* %9565, %nyx_string** %9566
  %9567 = load %nyx_string*, %nyx_string** %8649
  %9568 = getelementptr [1 x i8], [1 x i8]* @.str1288, i32 0, i32 0
  %9569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1288.c, i8* %9568, i64 0)
  %9570 = call i1 @nyx_string_equals(%nyx_string* %9567, %nyx_string* %9569)
  %9571 = xor i1 %9570, true
  br i1 %9571, label %then1865, label %else1866
then1865:
  %9572 = load %nyx_string*, %nyx_string** %8649
  store %nyx_string* %9572, %nyx_string** %9566
  br label %merge1867
else1866:
  br label %merge1867
merge1867:
  %9573 = load %nyx_string*, %nyx_string** %9566
  %9574 = getelementptr [12 x i8], [12 x i8]* @.str1289, i32 0, i32 0
  %9575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1289.c, i8* %9574, i64 11)
  %9576 = call i1 @nyx_string_equals(%nyx_string* %9573, %nyx_string* %9575)
  br i1 %9576, label %then1868, label %else1869
then1868:
  %9577 = getelementptr [20 x i8], [20 x i8]* @.str1290, i32 0, i32 0
  %9578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1290.c, i8* %9577, i64 19)
  %9579 = load %nyx_string*, %nyx_string** %9552
  %9580 = call %nyx_string* @nyx_string_concat(%nyx_string* %9578, %nyx_string* %9579)
  %9581 = getelementptr [6 x i8], [6 x i8]* @.str1291, i32 0, i32 0
  %9582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1291.c, i8* %9581, i64 5)
  %9583 = call %nyx_string* @nyx_string_concat(%nyx_string* %9580, %nyx_string* %9582)
  %9584 = alloca %nyx_string*
  store %nyx_string* %9583, %nyx_string** %9584
  %9585 = load %nyx_string*, %nyx_string** %9584
  %9586 = call i8* @nyx_string_to_cstr(%nyx_string* %9585)
  %9587 = call i1 @nyx_file_exists(i8* %9586)
  %9588 = xor i1 %9587, true
  br i1 %9588, label %then1871, label %else1872
then1871:
  %9589 = getelementptr [24 x i8], [24 x i8]* @.str1292, i32 0, i32 0
  %9590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1292.c, i8* %9589, i64 23)
  %9591 = load %nyx_string*, %nyx_string** %9584
  %9592 = call %nyx_string* @nyx_string_concat(%nyx_string* %9590, %nyx_string* %9591)
  %9593 = call i8* @nyx_string_to_cstr(%nyx_string* %9592)
  call void @nyx_print_string(i8* %9593)
  ret i64 1
else1872:
  br label %merge1873
merge1873:
  %9594 = getelementptr [36 x i8], [36 x i8]* @.str1293, i32 0, i32 0
  %9595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1293.c, i8* %9594, i64 35)
  %9596 = call i8* @nyx_string_to_cstr(%nyx_string* %9595)
  %9597 = call i64 @nyx_exec_code(i8* %9596)
  %9598 = icmp ne i64 %9597, 0
  br i1 %9598, label %then1874, label %else1875
then1874:
  %9599 = getelementptr [24 x i8], [24 x i8]* @.str1294, i32 0, i32 0
  %9600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1294.c, i8* %9599, i64 23)
  %9601 = load %nyx_string*, %nyx_string** %9584
  %9602 = call %nyx_string* @nyx_string_concat(%nyx_string* %9600, %nyx_string* %9601)
  %9603 = getelementptr [45 x i8], [45 x i8]* @.str1295, i32 0, i32 0
  %9604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1295.c, i8* %9603, i64 44)
  %9605 = call %nyx_string* @nyx_string_concat(%nyx_string* %9602, %nyx_string* %9604)
  %9606 = call i8* @nyx_string_to_cstr(%nyx_string* %9605)
  call void @nyx_print_string(i8* %9606)
  %9607 = getelementptr [54 x i8], [54 x i8]* @.str1296, i32 0, i32 0
  %9608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1296.c, i8* %9607, i64 53)
  %9609 = load %nyx_string*, %nyx_string** %9584
  %9610 = call %nyx_string* @nyx_string_concat(%nyx_string* %9608, %nyx_string* %9609)
  %9611 = call i8* @nyx_string_to_cstr(%nyx_string* %9610)
  call void @nyx_print_string(i8* %9611)
  ret i64 1
else1875:
  br label %merge1876
merge1876:
  %9612 = getelementptr [10 x i8], [10 x i8]* @.str1297, i32 0, i32 0
  %9613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1297.c, i8* %9612, i64 9)
  %9614 = load %nyx_string*, %nyx_string** %9584
  %9615 = call %nyx_string* @nyx_string_concat(%nyx_string* %9613, %nyx_string* %9614)
  %9616 = alloca %nyx_string*
  store %nyx_string* %9615, %nyx_string** %9616
  %9617 = alloca i64
  store i64 2, i64* %9617
  %9618 = alloca i1
  store i1 0, i1* %9618
  %9619 = getelementptr [2 x i8], [2 x i8]* @.str1298, i32 0, i32 0
  %9620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1298.c, i8* %9619, i64 1)
  %9621 = alloca %nyx_string*
  store %nyx_string* %9620, %nyx_string** %9621
  %9622 = getelementptr [3 x i8], [3 x i8]* @.str1299, i32 0, i32 0
  %9623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1299.c, i8* %9622, i64 2)
  %9624 = alloca %nyx_string*
  store %nyx_string* %9623, %nyx_string** %9624
  %9625 = getelementptr [9 x i8], [9 x i8]* @.str1300, i32 0, i32 0
  %9626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1300.c, i8* %9625, i64 8)
  %9627 = alloca %nyx_string*
  store %nyx_string* %9626, %nyx_string** %9627
  %9628 = getelementptr [7 x i8], [7 x i8]* @.str1301, i32 0, i32 0
  %9629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1301.c, i8* %9628, i64 6)
  %9630 = alloca %nyx_string*
  store %nyx_string* %9629, %nyx_string** %9630
  %9631 = call i8* @llvm.stacksave()
  br label %while_cond1877
while_cond1877:
  %9632 = load i64, i64* %9617
  %9633 = load { i64, i8* }*, { i64, i8* }** %8642
  %9634 = call i64 @nyx_array_length({ i64, i8* }* %9633)
  %9635 = icmp slt i64 %9632, %9634
  br i1 %9635, label %while_body1878, label %while_end1879
while_body1878:
  call void @llvm.stackrestore(i8* %9631)
  %9636 = load { i64, i8* }*, { i64, i8* }** %8642
  %9637 = load i64, i64* %9617
  %9638 = call i64 @nyx_array_get_checked({ i64, i8* }* %9636, i64 %9637, i64 2)
  %9639 = inttoptr i64 %9638 to %nyx_string*
  %9640 = alloca %nyx_string*
  store %nyx_string* %9639, %nyx_string** %9640
  %9641 = load i1, i1* %9618
  br i1 %9641, label %then1880, label %else1881
then1880:
  %9642 = load %nyx_string*, %nyx_string** %9616
  %9643 = load %nyx_string*, %nyx_string** %9621
  %9644 = call %nyx_string* @nyx_string_concat(%nyx_string* %9642, %nyx_string* %9643)
  %9645 = load %nyx_string*, %nyx_string** %9640
  %9646 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %8640, %nyx_string* %9645)
  %9647 = call %nyx_string* @nyx_string_concat(%nyx_string* %9644, %nyx_string* %9646)
  store %nyx_string* %9647, %nyx_string** %9616
  br label %merge1882
else1881:
  %9648 = load %nyx_string*, %nyx_string** %9640
  %9649 = load %nyx_string*, %nyx_string** %9624
  %9650 = call i1 @nyx_string_equals(%nyx_string* %9648, %nyx_string* %9649)
  br i1 %9650, label %then1883, label %else1884
then1883:
  store i1 1, i1* %9618
  br label %merge1885
else1884:
  %9651 = alloca i1
  store i1 true, i1* %9651
  %9652 = load %nyx_string*, %nyx_string** %9640
  %9653 = load %nyx_string*, %nyx_string** %9627
  %9654 = call i1 @nyx_string_equals(%nyx_string* %9652, %nyx_string* %9653)
  br i1 %9654, label %sc_or_end1887, label %sc_or_rhs1886
sc_or_rhs1886:
  %9655 = load %nyx_string*, %nyx_string** %9640
  %9656 = load %nyx_string*, %nyx_string** %9630
  %9657 = call i1 @nyx_string_equals(%nyx_string* %9655, %nyx_string* %9656)
  store i1 %9657, i1* %9651
  br label %sc_or_end1887
sc_or_end1887:
  %9658 = load i1, i1* %9651
  br i1 %9658, label %then1888, label %else1889
then1888:
  %9659 = load i64, i64* %9617
  %9660 = add i64 %9659, 1
  store i64 %9660, i64* %9617
  br label %merge1890
else1889:
  br label %merge1890
merge1890:
  br label %merge1885
merge1885:
  br label %merge1882
merge1882:
  %9661 = load i64, i64* %9617
  %9662 = add i64 %9661, 1
  store i64 %9662, i64* %9617
  br label %while_cond1877
while_end1879:
  %9663 = load %nyx_string*, %nyx_string** %9616
  %9664 = call i8* @nyx_string_to_cstr(%nyx_string* %9663)
  %9665 = call i64 @nyx_exec_code(i8* %9664)
  ret i64 %9665
else1869:
  br label %merge1870
merge1870:
  %9666 = load %nyx_string*, %nyx_string** %9566
  %9667 = getelementptr [1 x i8], [1 x i8]* @.str1302, i32 0, i32 0
  %9668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1302.c, i8* %9667, i64 0)
  %9669 = call i1 @nyx_string_equals(%nyx_string* %9666, %nyx_string* %9668)
  %9670 = xor i1 %9669, true
  br i1 %9670, label %then1891, label %else1892
then1891:
  %9671 = getelementptr [51 x i8], [51 x i8]* @.str1303, i32 0, i32 0
  %9672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1303.c, i8* %9671, i64 50)
  %9673 = load %nyx_string*, %nyx_string** %9566
  %9674 = call %nyx_string* @nyx_string_concat(%nyx_string* %9672, %nyx_string* %9673)
  %9675 = call i8* @nyx_string_to_cstr(%nyx_string* %9674)
  call void @nyx_print_string(i8* %9675)
  %9676 = getelementptr [27 x i8], [27 x i8]* @.str1304, i32 0, i32 0
  %9677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1304.c, i8* %9676, i64 26)
  %9678 = load %nyx_string*, %nyx_string** %9566
  %9679 = call %nyx_string* @nyx_string_concat(%nyx_string* %9677, %nyx_string* %9678)
  %9680 = getelementptr [47 x i8], [47 x i8]* @.str1305, i32 0, i32 0
  %9681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1305.c, i8* %9680, i64 46)
  %9682 = call %nyx_string* @nyx_string_concat(%nyx_string* %9679, %nyx_string* %9681)
  %9683 = call i8* @nyx_string_to_cstr(%nyx_string* %9682)
  call void @nyx_print_string(i8* %9683)
  ret i64 1
else1892:
  br label %merge1893
merge1893:
  %9684 = getelementptr [3 x i8], [3 x i8]* @.str1306, i32 0, i32 0
  %9685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1306.c, i8* %9684, i64 2)
  %9686 = load %nyx_string*, %nyx_string** %9552
  %9687 = call %nyx_string* @nyx_string_concat(%nyx_string* %9685, %nyx_string* %9686)
  %9688 = alloca %nyx_string*
  store %nyx_string* %9687, %nyx_string** %9688
  %9689 = getelementptr %ProjectConfig, %ProjectConfig* %9394, i32 0, i32 10
  %9690 = load %nyx_string*, %nyx_string** %9689
  %9691 = getelementptr [1 x i8], [1 x i8]* @.str1307, i32 0, i32 0
  %9692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1307.c, i8* %9691, i64 0)
  %9693 = call i1 @nyx_string_equals(%nyx_string* %9690, %nyx_string* %9692)
  %9694 = xor i1 %9693, true
  br i1 %9694, label %then1894, label %else1895
then1894:
  %9695 = getelementptr [10 x i8], [10 x i8]* @.str1308, i32 0, i32 0
  %9696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1308.c, i8* %9695, i64 9)
  %9697 = load %nyx_string*, %nyx_string** %9552
  %9698 = call %nyx_string* @nyx_string_concat(%nyx_string* %9696, %nyx_string* %9697)
  store %nyx_string* %9698, %nyx_string** %9688
  br label %merge1896
else1895:
  br label %merge1896
merge1896:
  %9699 = alloca i64
  store i64 2, i64* %9699
  %9700 = alloca i1
  store i1 0, i1* %9700
  %9701 = getelementptr [2 x i8], [2 x i8]* @.str1309, i32 0, i32 0
  %9702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1309.c, i8* %9701, i64 1)
  %9703 = alloca %nyx_string*
  store %nyx_string* %9702, %nyx_string** %9703
  %9704 = getelementptr [3 x i8], [3 x i8]* @.str1310, i32 0, i32 0
  %9705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1310.c, i8* %9704, i64 2)
  %9706 = alloca %nyx_string*
  store %nyx_string* %9705, %nyx_string** %9706
  %9707 = getelementptr [10 x i8], [10 x i8]* @.str1311, i32 0, i32 0
  %9708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1311.c, i8* %9707, i64 9)
  %9709 = alloca %nyx_string*
  store %nyx_string* %9708, %nyx_string** %9709
  %9710 = getelementptr [9 x i8], [9 x i8]* @.str1312, i32 0, i32 0
  %9711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1312.c, i8* %9710, i64 8)
  %9712 = alloca %nyx_string*
  store %nyx_string* %9711, %nyx_string** %9712
  %9713 = getelementptr [7 x i8], [7 x i8]* @.str1313, i32 0, i32 0
  %9714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1313.c, i8* %9713, i64 6)
  %9715 = alloca %nyx_string*
  store %nyx_string* %9714, %nyx_string** %9715
  %9716 = call i8* @llvm.stacksave()
  br label %while_cond1897
while_cond1897:
  %9717 = load i64, i64* %9699
  %9718 = load { i64, i8* }*, { i64, i8* }** %8642
  %9719 = call i64 @nyx_array_length({ i64, i8* }* %9718)
  %9720 = icmp slt i64 %9717, %9719
  br i1 %9720, label %while_body1898, label %while_end1899
while_body1898:
  call void @llvm.stackrestore(i8* %9716)
  %9721 = load { i64, i8* }*, { i64, i8* }** %8642
  %9722 = load i64, i64* %9699
  %9723 = call i64 @nyx_array_get_checked({ i64, i8* }* %9721, i64 %9722, i64 2)
  %9724 = inttoptr i64 %9723 to %nyx_string*
  %9725 = alloca %nyx_string*
  store %nyx_string* %9724, %nyx_string** %9725
  %9726 = load i1, i1* %9700
  br i1 %9726, label %then1900, label %else1901
then1900:
  %9727 = load %nyx_string*, %nyx_string** %9688
  %9728 = load %nyx_string*, %nyx_string** %9703
  %9729 = call %nyx_string* @nyx_string_concat(%nyx_string* %9727, %nyx_string* %9728)
  %9730 = load %nyx_string*, %nyx_string** %9725
  %9731 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %8640, %nyx_string* %9730)
  %9732 = call %nyx_string* @nyx_string_concat(%nyx_string* %9729, %nyx_string* %9731)
  store %nyx_string* %9732, %nyx_string** %9688
  br label %merge1902
else1901:
  %9733 = load %nyx_string*, %nyx_string** %9725
  %9734 = load %nyx_string*, %nyx_string** %9706
  %9735 = call i1 @nyx_string_equals(%nyx_string* %9733, %nyx_string* %9734)
  br i1 %9735, label %then1903, label %else1904
then1903:
  store i1 1, i1* %9700
  br label %merge1905
else1904:
  %9736 = load %nyx_string*, %nyx_string** %9725
  %9737 = load %nyx_string*, %nyx_string** %9709
  %9738 = call i1 @nyx_string_equals(%nyx_string* %9736, %nyx_string* %9737)
  br i1 %9738, label %then1906, label %else1907
then1906:
  %9739 = load i64, i64* %9699
  store i64 %9739, i64* %9699
  br label %merge1908
else1907:
  %9740 = alloca i1
  store i1 true, i1* %9740
  %9741 = load %nyx_string*, %nyx_string** %9725
  %9742 = load %nyx_string*, %nyx_string** %9712
  %9743 = call i1 @nyx_string_equals(%nyx_string* %9741, %nyx_string* %9742)
  br i1 %9743, label %sc_or_end1910, label %sc_or_rhs1909
sc_or_rhs1909:
  %9744 = load %nyx_string*, %nyx_string** %9725
  %9745 = load %nyx_string*, %nyx_string** %9715
  %9746 = call i1 @nyx_string_equals(%nyx_string* %9744, %nyx_string* %9745)
  store i1 %9746, i1* %9740
  br label %sc_or_end1910
sc_or_end1910:
  %9747 = load i1, i1* %9740
  br i1 %9747, label %then1911, label %else1912
then1911:
  %9748 = load i64, i64* %9699
  %9749 = add i64 %9748, 1
  store i64 %9749, i64* %9699
  br label %merge1913
else1912:
  %9750 = load %nyx_string*, %nyx_string** %9688
  %9751 = load %nyx_string*, %nyx_string** %9703
  %9752 = call %nyx_string* @nyx_string_concat(%nyx_string* %9750, %nyx_string* %9751)
  %9753 = load %nyx_string*, %nyx_string** %9725
  %9754 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %8640, %nyx_string* %9753)
  %9755 = call %nyx_string* @nyx_string_concat(%nyx_string* %9752, %nyx_string* %9754)
  store %nyx_string* %9755, %nyx_string** %9688
  br label %merge1913
merge1913:
  br label %merge1908
merge1908:
  br label %merge1905
merge1905:
  br label %merge1902
merge1902:
  %9756 = load i64, i64* %9699
  %9757 = add i64 %9756, 1
  store i64 %9757, i64* %9699
  br label %while_cond1897
while_end1899:
  %9758 = load %nyx_string*, %nyx_string** %9688
  %9759 = call i8* @nyx_string_to_cstr(%nyx_string* %9758)
  %9760 = call i64 @nyx_exec_code(i8* %9759)
  %9761 = alloca i64
  store i64 %9760, i64* %9761
  %9762 = load i64, i64* %9761
  ret i64 %9762
else1863:
  br label %merge1864
merge1864:
  ret i64 1
else1846:
  br label %merge1847
merge1847:
  %9763 = getelementptr [24 x i8], [24 x i8]* @.str1314, i32 0, i32 0
  %9764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1314.c, i8* %9763, i64 23)
  %9765 = load %nyx_string*, %nyx_string** %8645
  %9766 = call %nyx_string* @nyx_string_concat(%nyx_string* %9764, %nyx_string* %9765)
  %9767 = call i8* @nyx_string_to_cstr(%nyx_string* %9766)
  call void @nyx_print_string(i8* %9767)
  %9768 = getelementptr [110 x i8], [110 x i8]* @.str1315, i32 0, i32 0
  %9769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1315.c, i8* %9768, i64 109)
  %9770 = call i8* @nyx_string_to_cstr(%nyx_string* %9769)
  call void @nyx_print_string(i8* %9770)
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
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1316, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1316.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1317, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1317.c, i8* %30, i64 1)
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
  %9771 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %9772 = call %nyx_string* @nyx_string_from_ptr(i8* %9771, i64 64)
  store %nyx_string* %9772, %nyx_string** @std_base64____b64_chars
  %9773 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %9774 = call %nyx_string* @nyx_string_from_ptr(i8* %9773, i64 64)
  store %nyx_string* %9774, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

