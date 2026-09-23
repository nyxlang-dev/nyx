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
@.str601 = private unnamed_addr constant [60 x i8] c"LIB_OBJS=\22\22\0aLIB_MAP=\22\22\0amkdir -p \22$ORIG_DIR/target/nyx-lib\22\0a\00"
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
@.str617 = private unnamed_addr constant [22 x i8] c"\22; LIB_MAP=\22$LIB_MAP \00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [2 x i8] c"=\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [12 x i8] c"elif [ -f \22\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [13 x i8] c"\22 ]; then :\0a\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [27 x i8] c"else\0a  echo '   compiling \00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [9 x i8] c" (lib)'\0a\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [35 x i8] c"  rm -f \22$ORIG_DIR/target/nyx-lib/\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [5 x i8] c"-\22*\0a\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [55 x i8] c"  LSRC=\22$(mktemp /tmp/nyx_lib_XXXXXX)\22; cp \22$ORIG_DIR/\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [17 x i8] c".nx\22 \22$LSRC.nx\22\0a\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [10 x i8] c"  lrc=0; \00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [26 x i8] c" > \22$LOG\22 2>&1 || lrc=$?\0a\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [66 x i8] c"  if [ $lrc -eq 3 ]; then grep -F '⚠' \22$LOG\22 >&2 || true; : > \22\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [62 x i8] c"  elif [ $lrc -ne 0 ]; then echo \22error: nyx compile failed (\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [86 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; nyx_pista $lrc; rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22; exit 1\0a\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [45 x i8] c"  else\0a    grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [14 x i8] c"    clang -c \00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [38 x i8] c" -Wno-override-module \22$LSRC.ll\22 -o \22\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [45 x i8] c"\22 2> \22$LOG\22 || { echo \22error: clang failed (\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [36 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [25 x i8] c"    LIB_OBJS=\22$LIB_OBJS \00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [8 x i8] c"\22\0a  fi\0a\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [42 x i8] c"  rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22\0afi\0a\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [1 x i8] c"\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [1 x i8] c"\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [24 x i8] c"/.nyx/runtime/runtime.c\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [1 x i8] c"\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [2 x i8] c".\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [1 x i8] c"\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [1 x i8] c"\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [1 x i8] c"\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [86 x i8] c"ORIG_DIR=\22$(pwd)\22\0aLOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0atrap 'rm -f \22$LOG\22' EXIT\0a\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [29 x i8] c"echo \22NYX_LIB_MAP:$LIB_MAP\22\0a\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [15 x i8] c"/tmp/nyx_libs_\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [1 x i8] c"\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [1 x i8] c"\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [1 x i8] c"\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [3 x i8] c" [\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [2 x i8] c"]\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [3 x i8] c" v\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [1 x i8] c"\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [1 x i8] c"\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [1 x i8] c"\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [1 x i8] c"\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [1 x i8] c"\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [1 x i8] c"\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [1 x i8] c"\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [1 x i8] c"\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [2 x i8] c".\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [1 x i8] c"\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [77 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c $RT/net.c $RT/thread.c $RT/regex.c \00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [89 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c $RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [83 x i8] c"$RT/compress.c $RT/random.c $RT/url.c $RT/msgpack.c $RT/websocket.c $RT/persist.c \00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [65 x i8] c"$RT/http2.c $RT/process.c $RT/llama_adapter.c $RT/os/os_posix.c \00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [1 x i8] c"\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [2 x i8] c"/\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [2 x i8] c"/\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [1 x i8] c"\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [1 x i8] c"\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [18 x i8] c"NYX_LIB_MODULES=\22\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [2 x i8] c",\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [19 x i8] c"\22 ) > \22$LOG\22 2>&1 \00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [93 x i8] c"|| { rc=$?; echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; nyx_pista $rc; exit 1; }\0a\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [34 x i8] c"grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [22 x i8] c" \22$SRC.ll\22 $LIB_OBJS \00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [1 x i8] c"\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [2 x i8] c"#\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [95 x i8] c"ASY=\22$(grep -m1 '^; nyx-asyncify-imports: ' \22$SRC.ll\22 | sed 's/^; nyx-asyncify-imports: //')\22\0a\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [24 x i8] c"if [ -n \22$ASY\22 ]; then\0a\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [10 x i8] c"  WOPT=\22$\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [49 x i8] c"{NYX_WASM_OPT:-$(command -v wasm-opt || true)}\22\0a\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [207 x i8] c"  test -n \22$WOPT\22 || { echo \22error: el programa usa imports que suspenden (await que espera al anfitrion: $ASY) y falta wasm-opt - sudo apt install binaryen, o NYX_WASM_OPT=/ruta/a/wasm-opt\22 >&2; exit 1; }\0a\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [41 x i8] c"  \22$WOPT\22 \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [58 x i8] c".wasm\22 --asyncify --pass-arg=asyncify-imports@\22$ASY\22 -O2 \00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [78 x i8] c"|| { echo \22error: wasm-opt --asyncify fallo:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [1 x i8] c"\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [1 x i8] c"\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [2 x i8] c"/\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [1 x i8] c"\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [3 x i8] c"./\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [1 x i8] c"\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [1 x i8] c"\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [1 x i8] c"\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [1 x i8] c"/"
@.str829 = private unnamed_addr constant [2 x i8] c"-\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [1 x i8] c"\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [1 x i8] c"\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [1 x i8] c"\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [7 x i8] c"0.33.0\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [73 x i8] c"> Completa las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [80 x i8] c"FRICTION.md ya existe con contenido — avísale al usuario para que lo revise.\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [78 x i8] c"creado FRICTION.md — completa las secciones (tu asistente IA puede hacerlo)\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [72 x i8] c"y AVÍSALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [1 x i8] c"\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [66 x i8] c"error: el reporte parece vacío — completa la plantilla primero\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [1 x i8] c"\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [1 x i8] c"\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [1 x i8] c"\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [1 x i8] c"\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [1 x i8] c"\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [1 x i8] c"\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [4 x i8] c"std\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [2 x i8] c".\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [1 x i8] c"\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [1 x i8] c"\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [5 x i8] c"http\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [4 x i8] c"web\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [3 x i8] c"db\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [5 x i8] c"json\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [5 x i8] c"file\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [3 x i8] c"io\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [5 x i8] c"path\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [4 x i8] c"net\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [4 x i8] c"url\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [5 x i8] c"smtp\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [6 x i8] c"async\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [7 x i8] c"random\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [5 x i8] c"time\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [7 x i8] c"string\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [4 x i8] c"set\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [4 x i8] c"box\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [5 x i8] c"args\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [4 x i8] c"log\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [1 x i8] c"\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [1 x i8] c"("
@.str963 = private unnamed_addr constant [1 x i8] c")"
@.str964 = private unnamed_addr constant [2 x i8] c"/\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [1 x i8] c"\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [1 x i8] c"\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [4 x i8] c"///\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [1 x i8] c"\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [2 x i8] c" \00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [2 x i8] c"`\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [6 x i8] c" — \00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [1 x i8] c"("
@.str978 = private unnamed_addr constant [1 x i8] c"{"
@.str979 = private unnamed_addr constant [1 x i8] c"\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [1 x i8] c"\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [1 x i8] c"\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [2 x i8] c"1\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [2 x i8] c"s\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [2 x i8] c")\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [1 x i8] c"\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [6 x i8] c" — \00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [1 x i8] c"\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [1 x i8] c"\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [1 x i8] c"\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [4 x i8] c"## \00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [1 x i8] c"\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [3 x i8] c" (\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [1 x i8] c"\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [1 x i8] c"\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [1 x i8] c"\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [5 x i8] c"test\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [1 x i8] c"\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [1 x i8] c"-"
@.str1056 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [1 x i8] c"\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [1 x i8] c"\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [1 x i8] c"\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [1 x i8] c"\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [1 x i8] c"\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [1 x i8] c"\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [1 x i8] c"\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [1 x i8] c"\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [1 x i8] c"\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [1 x i8] c"\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [1 x i8] c"\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [1 x i8] c"\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [1 x i8] c"\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [2 x i8] c".\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [1 x i8] c"\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [1 x i8] c"\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [2 x i8] c".\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [2 x i8] c".\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [2 x i8] c".\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [2 x i8] c".\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [1 x i8] c"\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str1117.c = internal global %nyx_string* null
@.str1118 = private unnamed_addr constant [4 x i8] c"add\00"
@.str1118.c = internal global %nyx_string* null
@.str1119 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str1119.c = internal global %nyx_string* null
@.str1120 = private unnamed_addr constant [1 x i8] c"\00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [8 x i8] c"project\00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [1 x i8] c"\00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [1 x i8] c"\00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [1 x i8] c"\00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [1 x i8] c"\00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [1 x i8] c"\00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [1 x i8] c"\00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [7 x i8] c"report\00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [1 x i8] c"\00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str1134.c = internal global %nyx_string* null
@.str1135 = private unnamed_addr constant [1 x i8] c"\00"
@.str1135.c = internal global %nyx_string* null
@.str1136 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [1 x i8] c"\00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [1 x i8] c"\00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [1 x i8] c"\00"
@.str1149.c = internal global %nyx_string* null
@.str1150 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1150.c = internal global %nyx_string* null
@.str1151 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1151.c = internal global %nyx_string* null
@.str1152 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1152.c = internal global %nyx_string* null
@.str1153 = private unnamed_addr constant [1 x i8] c"\00"
@.str1153.c = internal global %nyx_string* null
@.str1154 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1154.c = internal global %nyx_string* null
@.str1155 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1155.c = internal global %nyx_string* null
@.str1156 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1156.c = internal global %nyx_string* null
@.str1157 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1157.c = internal global %nyx_string* null
@.str1158 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1158.c = internal global %nyx_string* null
@.str1159 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1159.c = internal global %nyx_string* null
@.str1160 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1160.c = internal global %nyx_string* null
@.str1161 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1161.c = internal global %nyx_string* null
@.str1162 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1162.c = internal global %nyx_string* null
@.str1163 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1163.c = internal global %nyx_string* null
@.str1164 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1164.c = internal global %nyx_string* null
@.str1165 = private unnamed_addr constant [1 x i8] c"\00"
@.str1165.c = internal global %nyx_string* null
@.str1166 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1166.c = internal global %nyx_string* null
@.str1167 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1167.c = internal global %nyx_string* null
@.str1168 = private unnamed_addr constant [1 x i8] c"\00"
@.str1168.c = internal global %nyx_string* null
@.str1169 = private unnamed_addr constant [1 x i8] c"\00"
@.str1169.c = internal global %nyx_string* null
@.str1170 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1170.c = internal global %nyx_string* null
@.str1171 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1171.c = internal global %nyx_string* null
@.str1172 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1172.c = internal global %nyx_string* null
@.str1173 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1173.c = internal global %nyx_string* null
@.str1174 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1174.c = internal global %nyx_string* null
@.str1175 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1175.c = internal global %nyx_string* null
@.str1176 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1176.c = internal global %nyx_string* null
@.str1177 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1177.c = internal global %nyx_string* null
@.str1178 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1178.c = internal global %nyx_string* null
@.str1179 = private unnamed_addr constant [2 x i8] c" \00"
@.str1179.c = internal global %nyx_string* null
@.str1180 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1180.c = internal global %nyx_string* null
@.str1181 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1181.c = internal global %nyx_string* null
@.str1182 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1182.c = internal global %nyx_string* null
@.str1183 = private unnamed_addr constant [1 x i8] c"\00"
@.str1183.c = internal global %nyx_string* null
@.str1184 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1184.c = internal global %nyx_string* null
@.str1185 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1185.c = internal global %nyx_string* null
@.str1186 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1186.c = internal global %nyx_string* null
@.str1187 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1187.c = internal global %nyx_string* null
@.str1188 = private unnamed_addr constant [1 x i8] c"\00"
@.str1188.c = internal global %nyx_string* null
@.str1189 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1189.c = internal global %nyx_string* null
@.str1190 = private unnamed_addr constant [2 x i8] c" \00"
@.str1190.c = internal global %nyx_string* null
@.str1191 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1191.c = internal global %nyx_string* null
@.str1192 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1192.c = internal global %nyx_string* null
@.str1193 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1193.c = internal global %nyx_string* null
@.str1194 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1194.c = internal global %nyx_string* null
@.str1195 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1195.c = internal global %nyx_string* null
@.str1196 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1196.c = internal global %nyx_string* null
@.str1197 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1197.c = internal global %nyx_string* null
@.str1198 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1198.c = internal global %nyx_string* null
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
  %4446 = getelementptr [60 x i8], [60 x i8]* @.str601, i32 0, i32 0
  %4447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4446, i64 59)
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
  %4494 = getelementptr [22 x i8], [22 x i8]* @.str617, i32 0, i32 0
  %4495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4494, i64 21)
  %4496 = alloca %nyx_string*
  store %nyx_string* %4495, %nyx_string** %4496
  %4497 = getelementptr [2 x i8], [2 x i8]* @.str618, i32 0, i32 0
  %4498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4497, i64 1)
  %4499 = alloca %nyx_string*
  store %nyx_string* %4498, %nyx_string** %4499
  %4500 = getelementptr [3 x i8], [3 x i8]* @.str619, i32 0, i32 0
  %4501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4500, i64 2)
  %4502 = alloca %nyx_string*
  store %nyx_string* %4501, %nyx_string** %4502
  %4503 = getelementptr [12 x i8], [12 x i8]* @.str620, i32 0, i32 0
  %4504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4503, i64 11)
  %4505 = alloca %nyx_string*
  store %nyx_string* %4504, %nyx_string** %4505
  %4506 = getelementptr [13 x i8], [13 x i8]* @.str621, i32 0, i32 0
  %4507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4506, i64 12)
  %4508 = alloca %nyx_string*
  store %nyx_string* %4507, %nyx_string** %4508
  %4509 = getelementptr [27 x i8], [27 x i8]* @.str622, i32 0, i32 0
  %4510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4509, i64 26)
  %4511 = alloca %nyx_string*
  store %nyx_string* %4510, %nyx_string** %4511
  %4512 = getelementptr [9 x i8], [9 x i8]* @.str623, i32 0, i32 0
  %4513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4512, i64 8)
  %4514 = alloca %nyx_string*
  store %nyx_string* %4513, %nyx_string** %4514
  %4515 = getelementptr [35 x i8], [35 x i8]* @.str624, i32 0, i32 0
  %4516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4515, i64 34)
  %4517 = alloca %nyx_string*
  store %nyx_string* %4516, %nyx_string** %4517
  %4518 = getelementptr [5 x i8], [5 x i8]* @.str625, i32 0, i32 0
  %4519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4518, i64 4)
  %4520 = alloca %nyx_string*
  store %nyx_string* %4519, %nyx_string** %4520
  %4521 = getelementptr [55 x i8], [55 x i8]* @.str626, i32 0, i32 0
  %4522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4521, i64 54)
  %4523 = alloca %nyx_string*
  store %nyx_string* %4522, %nyx_string** %4523
  %4524 = getelementptr [17 x i8], [17 x i8]* @.str627, i32 0, i32 0
  %4525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4524, i64 16)
  %4526 = alloca %nyx_string*
  store %nyx_string* %4525, %nyx_string** %4526
  %4527 = getelementptr [10 x i8], [10 x i8]* @.str628, i32 0, i32 0
  %4528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4527, i64 9)
  %4529 = alloca %nyx_string*
  store %nyx_string* %4528, %nyx_string** %4529
  %4530 = getelementptr [26 x i8], [26 x i8]* @.str629, i32 0, i32 0
  %4531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %4530, i64 25)
  %4532 = alloca %nyx_string*
  store %nyx_string* %4531, %nyx_string** %4532
  %4533 = getelementptr [66 x i8], [66 x i8]* @.str630, i32 0, i32 0
  %4534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %4533, i64 65)
  %4535 = alloca %nyx_string*
  store %nyx_string* %4534, %nyx_string** %4535
  %4536 = getelementptr [62 x i8], [62 x i8]* @.str631, i32 0, i32 0
  %4537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %4536, i64 61)
  %4538 = alloca %nyx_string*
  store %nyx_string* %4537, %nyx_string** %4538
  %4539 = getelementptr [86 x i8], [86 x i8]* @.str632, i32 0, i32 0
  %4540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %4539, i64 85)
  %4541 = alloca %nyx_string*
  store %nyx_string* %4540, %nyx_string** %4541
  %4542 = getelementptr [45 x i8], [45 x i8]* @.str633, i32 0, i32 0
  %4543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %4542, i64 44)
  %4544 = alloca %nyx_string*
  store %nyx_string* %4543, %nyx_string** %4544
  %4545 = getelementptr [14 x i8], [14 x i8]* @.str634, i32 0, i32 0
  %4546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %4545, i64 13)
  %4547 = alloca %nyx_string*
  store %nyx_string* %4546, %nyx_string** %4547
  %4548 = getelementptr [38 x i8], [38 x i8]* @.str635, i32 0, i32 0
  %4549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %4548, i64 37)
  %4550 = alloca %nyx_string*
  store %nyx_string* %4549, %nyx_string** %4550
  %4551 = getelementptr [45 x i8], [45 x i8]* @.str636, i32 0, i32 0
  %4552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %4551, i64 44)
  %4553 = alloca %nyx_string*
  store %nyx_string* %4552, %nyx_string** %4553
  %4554 = getelementptr [36 x i8], [36 x i8]* @.str637, i32 0, i32 0
  %4555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %4554, i64 35)
  %4556 = alloca %nyx_string*
  store %nyx_string* %4555, %nyx_string** %4556
  %4557 = getelementptr [25 x i8], [25 x i8]* @.str638, i32 0, i32 0
  %4558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %4557, i64 24)
  %4559 = alloca %nyx_string*
  store %nyx_string* %4558, %nyx_string** %4559
  %4560 = getelementptr [8 x i8], [8 x i8]* @.str639, i32 0, i32 0
  %4561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %4560, i64 7)
  %4562 = alloca %nyx_string*
  store %nyx_string* %4561, %nyx_string** %4562
  %4563 = getelementptr [42 x i8], [42 x i8]* @.str640, i32 0, i32 0
  %4564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %4563, i64 41)
  %4565 = alloca %nyx_string*
  store %nyx_string* %4564, %nyx_string** %4565
  %4566 = call i8* @llvm.stacksave()
  br label %while_cond719
while_cond719:
  %4567 = load i64, i64* %4448
  %4568 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4569 = load { i64, i8* }*, { i64, i8* }** %4568
  %4570 = call i64 @nyx_array_length({ i64, i8* }* %4569)
  %4571 = icmp slt i64 %4567, %4570
  br i1 %4571, label %while_body720, label %while_end721
while_body720:
  call void @llvm.stackrestore(i8* %4566)
  %4572 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %4573 = load { i64, i8* }*, { i64, i8* }** %4572
  %4574 = load i64, i64* %4448
  %4575 = call i64 @nyx_array_get({ i64, i8* }* %4573, i64 %4574)
  %4576 = inttoptr i64 %4575 to %nyx_string*
  %4577 = alloca %nyx_string*
  store %nyx_string* %4576, %nyx_string** %4577
  %4578 = load %nyx_string*, %nyx_string** %4577
  %4579 = load %nyx_string*, %nyx_string** %4451
  %4580 = load %nyx_string*, %nyx_string** %4454
  %4581 = call %nyx_string* @nyx_string_replace(%nyx_string* %4578, %nyx_string* %4579, %nyx_string* %4580)
  %4582 = alloca %nyx_string*
  store %nyx_string* %4581, %nyx_string** %4582
  %4583 = load %nyx_string*, %nyx_string** %4577
  %4584 = load %nyx_string*, %nyx_string** %4438
  %4585 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %4586 = load %nyx_string*, %nyx_string** %4457
  %4587 = call %nyx_string* @nyx_string_concat(%nyx_string* %4585, %nyx_string* %4586)
  %4588 = load i8*, i8** %4440
  %4589 = load i8*, i8** %4442
  %4590 = call %nyx_string* @lib_huella(%nyx_string* %4583, %nyx_string* %4584, %nyx_string* %4587, i8* %4588, i8* %4589)
  %4591 = call %nyx_string* @nyx_string_substring(%nyx_string* %4590, i64 0, i64 16)
  %4592 = alloca %nyx_string*
  store %nyx_string* %4591, %nyx_string** %4592
  %4593 = load %nyx_string*, %nyx_string** %4460
  %4594 = load %nyx_string*, %nyx_string** %4582
  %4595 = call %nyx_string* @nyx_string_concat(%nyx_string* %4593, %nyx_string* %4594)
  %4596 = load %nyx_string*, %nyx_string** %4463
  %4597 = call %nyx_string* @nyx_string_concat(%nyx_string* %4595, %nyx_string* %4596)
  %4598 = load %nyx_string*, %nyx_string** %4592
  %4599 = call %nyx_string* @nyx_string_concat(%nyx_string* %4597, %nyx_string* %4598)
  %4600 = load %nyx_string*, %nyx_string** %4466
  %4601 = call %nyx_string* @nyx_string_concat(%nyx_string* %4599, %nyx_string* %4600)
  %4602 = alloca %nyx_string*
  store %nyx_string* %4601, %nyx_string** %4602
  %4603 = load %nyx_string*, %nyx_string** %4460
  %4604 = load %nyx_string*, %nyx_string** %4582
  %4605 = call %nyx_string* @nyx_string_concat(%nyx_string* %4603, %nyx_string* %4604)
  %4606 = load %nyx_string*, %nyx_string** %4463
  %4607 = call %nyx_string* @nyx_string_concat(%nyx_string* %4605, %nyx_string* %4606)
  %4608 = load %nyx_string*, %nyx_string** %4592
  %4609 = call %nyx_string* @nyx_string_concat(%nyx_string* %4607, %nyx_string* %4608)
  %4610 = load %nyx_string*, %nyx_string** %4469
  %4611 = call %nyx_string* @nyx_string_concat(%nyx_string* %4609, %nyx_string* %4610)
  %4612 = alloca %nyx_string*
  store %nyx_string* %4611, %nyx_string** %4612
  %4613 = load %nyx_string*, %nyx_string** %4472
  %4614 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %4615 = call %nyx_string* @nyx_string_concat(%nyx_string* %4613, %nyx_string* %4614)
  %4616 = load %nyx_string*, %nyx_string** %4475
  %4617 = call %nyx_string* @nyx_string_concat(%nyx_string* %4615, %nyx_string* %4616)
  %4618 = load %nyx_string*, %nyx_string** %4394
  %4619 = call %nyx_string* @nyx_string_concat(%nyx_string* %4617, %nyx_string* %4618)
  %4620 = load %nyx_string*, %nyx_string** %4478
  %4621 = call %nyx_string* @nyx_string_concat(%nyx_string* %4619, %nyx_string* %4620)
  %4622 = load %nyx_string*, %nyx_string** %4577
  %4623 = call %nyx_string* @nyx_string_concat(%nyx_string* %4621, %nyx_string* %4622)
  %4624 = load %nyx_string*, %nyx_string** %4481
  %4625 = call %nyx_string* @nyx_string_concat(%nyx_string* %4623, %nyx_string* %4624)
  %4626 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %4627 = call %nyx_string* @nyx_string_concat(%nyx_string* %4625, %nyx_string* %4626)
  %4628 = load %nyx_string*, %nyx_string** %4484
  %4629 = call %nyx_string* @nyx_string_concat(%nyx_string* %4627, %nyx_string* %4628)
  %4630 = alloca %nyx_string*
  store %nyx_string* %4629, %nyx_string** %4630
  %4631 = load i8*, i8** %4444
  %4632 = load %nyx_string*, %nyx_string** %4487
  %4633 = load %nyx_string*, %nyx_string** %4602
  %4634 = call %nyx_string* @nyx_string_concat(%nyx_string* %4632, %nyx_string* %4633)
  %4635 = load %nyx_string*, %nyx_string** %4490
  %4636 = call %nyx_string* @nyx_string_concat(%nyx_string* %4634, %nyx_string* %4635)
  %4637 = load %nyx_string*, %nyx_string** %4577
  %4638 = call %nyx_string* @nyx_string_concat(%nyx_string* %4636, %nyx_string* %4637)
  %4639 = load %nyx_string*, %nyx_string** %4493
  %4640 = call %nyx_string* @nyx_string_concat(%nyx_string* %4638, %nyx_string* %4639)
  %4641 = load %nyx_string*, %nyx_string** %4602
  %4642 = call %nyx_string* @nyx_string_concat(%nyx_string* %4640, %nyx_string* %4641)
  %4643 = load %nyx_string*, %nyx_string** %4496
  %4644 = call %nyx_string* @nyx_string_concat(%nyx_string* %4642, %nyx_string* %4643)
  %4645 = load %nyx_string*, %nyx_string** %4577
  %4646 = call %nyx_string* @nyx_string_concat(%nyx_string* %4644, %nyx_string* %4645)
  %4647 = load %nyx_string*, %nyx_string** %4499
  %4648 = call %nyx_string* @nyx_string_concat(%nyx_string* %4646, %nyx_string* %4647)
  %4649 = load %nyx_string*, %nyx_string** %4602
  %4650 = call %nyx_string* @nyx_string_concat(%nyx_string* %4648, %nyx_string* %4649)
  %4651 = load %nyx_string*, %nyx_string** %4502
  %4652 = call %nyx_string* @nyx_string_concat(%nyx_string* %4650, %nyx_string* %4651)
  call void @nyx_sb_append(i8* %4631, %nyx_string* %4652)
  %4653 = load i8*, i8** %4444
  %4654 = load %nyx_string*, %nyx_string** %4505
  %4655 = load %nyx_string*, %nyx_string** %4612
  %4656 = call %nyx_string* @nyx_string_concat(%nyx_string* %4654, %nyx_string* %4655)
  %4657 = load %nyx_string*, %nyx_string** %4508
  %4658 = call %nyx_string* @nyx_string_concat(%nyx_string* %4656, %nyx_string* %4657)
  call void @nyx_sb_append(i8* %4653, %nyx_string* %4658)
  %4659 = load i8*, i8** %4444
  %4660 = load %nyx_string*, %nyx_string** %4511
  %4661 = load %nyx_string*, %nyx_string** %4577
  %4662 = call %nyx_string* @nyx_string_concat(%nyx_string* %4660, %nyx_string* %4661)
  %4663 = load %nyx_string*, %nyx_string** %4514
  %4664 = call %nyx_string* @nyx_string_concat(%nyx_string* %4662, %nyx_string* %4663)
  call void @nyx_sb_append(i8* %4659, %nyx_string* %4664)
  %4665 = load i8*, i8** %4444
  %4666 = load %nyx_string*, %nyx_string** %4517
  %4667 = load %nyx_string*, %nyx_string** %4582
  %4668 = call %nyx_string* @nyx_string_concat(%nyx_string* %4666, %nyx_string* %4667)
  %4669 = load %nyx_string*, %nyx_string** %4520
  %4670 = call %nyx_string* @nyx_string_concat(%nyx_string* %4668, %nyx_string* %4669)
  call void @nyx_sb_append(i8* %4665, %nyx_string* %4670)
  %4671 = load i8*, i8** %4444
  %4672 = load %nyx_string*, %nyx_string** %4523
  %4673 = load %nyx_string*, %nyx_string** %4577
  %4674 = call %nyx_string* @nyx_string_concat(%nyx_string* %4672, %nyx_string* %4673)
  %4675 = load %nyx_string*, %nyx_string** %4526
  %4676 = call %nyx_string* @nyx_string_concat(%nyx_string* %4674, %nyx_string* %4675)
  call void @nyx_sb_append(i8* %4671, %nyx_string* %4676)
  %4677 = load i8*, i8** %4444
  %4678 = load %nyx_string*, %nyx_string** %4529
  %4679 = load %nyx_string*, %nyx_string** %4630
  %4680 = call %nyx_string* @nyx_string_concat(%nyx_string* %4678, %nyx_string* %4679)
  %4681 = load %nyx_string*, %nyx_string** %4532
  %4682 = call %nyx_string* @nyx_string_concat(%nyx_string* %4680, %nyx_string* %4681)
  call void @nyx_sb_append(i8* %4677, %nyx_string* %4682)
  %4683 = load i8*, i8** %4444
  %4684 = load %nyx_string*, %nyx_string** %4535
  %4685 = load %nyx_string*, %nyx_string** %4612
  %4686 = call %nyx_string* @nyx_string_concat(%nyx_string* %4684, %nyx_string* %4685)
  %4687 = load %nyx_string*, %nyx_string** %4502
  %4688 = call %nyx_string* @nyx_string_concat(%nyx_string* %4686, %nyx_string* %4687)
  call void @nyx_sb_append(i8* %4683, %nyx_string* %4688)
  %4689 = load i8*, i8** %4444
  %4690 = load %nyx_string*, %nyx_string** %4538
  %4691 = load %nyx_string*, %nyx_string** %4577
  %4692 = call %nyx_string* @nyx_string_concat(%nyx_string* %4690, %nyx_string* %4691)
  %4693 = load %nyx_string*, %nyx_string** %4541
  %4694 = call %nyx_string* @nyx_string_concat(%nyx_string* %4692, %nyx_string* %4693)
  call void @nyx_sb_append(i8* %4689, %nyx_string* %4694)
  %4695 = load i8*, i8** %4444
  %4696 = load %nyx_string*, %nyx_string** %4544
  call void @nyx_sb_append(i8* %4695, %nyx_string* %4696)
  %4697 = load i8*, i8** %4444
  %4698 = load %nyx_string*, %nyx_string** %4547
  %4699 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %4700 = call %nyx_string* @nyx_string_concat(%nyx_string* %4698, %nyx_string* %4699)
  %4701 = load %nyx_string*, %nyx_string** %4550
  %4702 = call %nyx_string* @nyx_string_concat(%nyx_string* %4700, %nyx_string* %4701)
  %4703 = load %nyx_string*, %nyx_string** %4602
  %4704 = call %nyx_string* @nyx_string_concat(%nyx_string* %4702, %nyx_string* %4703)
  %4705 = load %nyx_string*, %nyx_string** %4553
  %4706 = call %nyx_string* @nyx_string_concat(%nyx_string* %4704, %nyx_string* %4705)
  %4707 = load %nyx_string*, %nyx_string** %4577
  %4708 = call %nyx_string* @nyx_string_concat(%nyx_string* %4706, %nyx_string* %4707)
  %4709 = load %nyx_string*, %nyx_string** %4556
  %4710 = call %nyx_string* @nyx_string_concat(%nyx_string* %4708, %nyx_string* %4709)
  call void @nyx_sb_append(i8* %4697, %nyx_string* %4710)
  %4711 = load i8*, i8** %4444
  %4712 = load %nyx_string*, %nyx_string** %4559
  %4713 = load %nyx_string*, %nyx_string** %4602
  %4714 = call %nyx_string* @nyx_string_concat(%nyx_string* %4712, %nyx_string* %4713)
  %4715 = load %nyx_string*, %nyx_string** %4496
  %4716 = call %nyx_string* @nyx_string_concat(%nyx_string* %4714, %nyx_string* %4715)
  %4717 = load %nyx_string*, %nyx_string** %4577
  %4718 = call %nyx_string* @nyx_string_concat(%nyx_string* %4716, %nyx_string* %4717)
  %4719 = load %nyx_string*, %nyx_string** %4499
  %4720 = call %nyx_string* @nyx_string_concat(%nyx_string* %4718, %nyx_string* %4719)
  %4721 = load %nyx_string*, %nyx_string** %4602
  %4722 = call %nyx_string* @nyx_string_concat(%nyx_string* %4720, %nyx_string* %4721)
  %4723 = load %nyx_string*, %nyx_string** %4562
  %4724 = call %nyx_string* @nyx_string_concat(%nyx_string* %4722, %nyx_string* %4723)
  call void @nyx_sb_append(i8* %4711, %nyx_string* %4724)
  %4725 = load i8*, i8** %4444
  %4726 = load %nyx_string*, %nyx_string** %4565
  call void @nyx_sb_append(i8* %4725, %nyx_string* %4726)
  %4727 = load i64, i64* %4448
  %4728 = add i64 %4727, 1
  store i64 %4728, i64* %4448
  br label %while_cond719
while_end721:
  %4729 = load i8*, i8** %4444
  %4730 = call %nyx_string* @nyx_sb_to_string(i8* %4729)
  ret %nyx_string* %4730
}

define internal i1 @run_libs(
%ProjectConfig %config.param, i1 %release.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %4731 = getelementptr [9 x i8], [9 x i8]* @.str641, i32 0, i32 0
  %4732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %4731, i64 8)
  %4733 = call i8* @nyx_string_to_cstr(%nyx_string* %4732)
  %4734 = call %nyx_string* @nyx_getenv(i8* %4733)
  %4735 = alloca %nyx_string*
  store %nyx_string* %4734, %nyx_string** %4735
  %4736 = load %nyx_string*, %nyx_string** %4735
  %4737 = getelementptr [1 x i8], [1 x i8]* @.str642, i32 0, i32 0
  %4738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %4737, i64 0)
  %4739 = call i1 @nyx_string_equals(%nyx_string* %4736, %nyx_string* %4738)
  br i1 %4739, label %then722, label %else723
then722:
  %4740 = getelementptr [5 x i8], [5 x i8]* @.str643, i32 0, i32 0
  %4741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %4740, i64 4)
  %4742 = call i8* @nyx_string_to_cstr(%nyx_string* %4741)
  %4743 = call %nyx_string* @nyx_getenv(i8* %4742)
  %4744 = alloca %nyx_string*
  store %nyx_string* %4743, %nyx_string** %4744
  %4745 = alloca i1
  store i1 false, i1* %4745
  %4746 = load %nyx_string*, %nyx_string** %4744
  %4747 = getelementptr [1 x i8], [1 x i8]* @.str644, i32 0, i32 0
  %4748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %4747, i64 0)
  %4749 = call i1 @nyx_string_equals(%nyx_string* %4746, %nyx_string* %4748)
  %4750 = xor i1 %4749, true
  br i1 %4750, label %sc_and_rhs725, label %sc_and_end726
sc_and_rhs725:
  %4751 = load %nyx_string*, %nyx_string** %4744
  %4752 = getelementptr [24 x i8], [24 x i8]* @.str645, i32 0, i32 0
  %4753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %4752, i64 23)
  %4754 = call %nyx_string* @nyx_string_concat(%nyx_string* %4751, %nyx_string* %4753)
  %4755 = call i8* @nyx_string_to_cstr(%nyx_string* %4754)
  %4756 = call i1 @nyx_file_exists(i8* %4755)
  store i1 %4756, i1* %4745
  br label %sc_and_end726
sc_and_end726:
  %4757 = load i1, i1* %4745
  br i1 %4757, label %then727, label %else728
then727:
  %4758 = load %nyx_string*, %nyx_string** %4744
  %4759 = getelementptr [6 x i8], [6 x i8]* @.str646, i32 0, i32 0
  %4760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %4759, i64 5)
  %4761 = call %nyx_string* @nyx_string_concat(%nyx_string* %4758, %nyx_string* %4760)
  store %nyx_string* %4761, %nyx_string** %4735
  br label %merge729
else728:
  br label %merge729
merge729:
  br label %merge724
else723:
  br label %merge724
merge724:
  %4762 = alloca i1
  store i1 false, i1* %4762
  %4763 = load %nyx_string*, %nyx_string** %4735
  %4764 = getelementptr [1 x i8], [1 x i8]* @.str647, i32 0, i32 0
  %4765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %4764, i64 0)
  %4766 = call i1 @nyx_string_equals(%nyx_string* %4763, %nyx_string* %4765)
  br i1 %4766, label %sc_and_rhs730, label %sc_and_end731
sc_and_rhs730:
  %4767 = getelementptr [14 x i8], [14 x i8]* @.str648, i32 0, i32 0
  %4768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %4767, i64 13)
  %4769 = call i8* @nyx_string_to_cstr(%nyx_string* %4768)
  %4770 = call i1 @nyx_file_exists(i8* %4769)
  store i1 %4770, i1* %4762
  br label %sc_and_end731
sc_and_end731:
  %4771 = load i1, i1* %4762
  br i1 %4771, label %then732, label %else733
then732:
  %4772 = getelementptr [2 x i8], [2 x i8]* @.str649, i32 0, i32 0
  %4773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %4772, i64 1)
  store %nyx_string* %4773, %nyx_string** %4735
  br label %merge734
else733:
  br label %merge734
merge734:
  %4774 = load %nyx_string*, %nyx_string** %4735
  %4775 = getelementptr [1 x i8], [1 x i8]* @.str650, i32 0, i32 0
  %4776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %4775, i64 0)
  %4777 = call i1 @nyx_string_equals(%nyx_string* %4774, %nyx_string* %4776)
  br i1 %4777, label %then735, label %else736
then735:
  %4778 = getelementptr [56 x i8], [56 x i8]* @.str651, i32 0, i32 0
  %4779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %4778, i64 55)
  %4780 = call i8* @nyx_string_to_cstr(%nyx_string* %4779)
  call void @nyx_print_string(i8* %4780)
  ret i1 0
else736:
  br label %merge737
merge737:
  %4781 = load %nyx_string*, %nyx_string** %4735
  %4782 = getelementptr [15 x i8], [15 x i8]* @.str652, i32 0, i32 0
  %4783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %4782, i64 14)
  %4784 = call %nyx_string* @nyx_string_concat(%nyx_string* %4781, %nyx_string* %4783)
  %4785 = alloca %nyx_string*
  store %nyx_string* %4784, %nyx_string** %4785
  %4786 = load %nyx_string*, %nyx_string** %4785
  %4787 = call i8* @nyx_string_to_cstr(%nyx_string* %4786)
  %4788 = call i1 @nyx_file_exists(i8* %4787)
  %4789 = xor i1 %4788, true
  br i1 %4789, label %then738, label %else739
then738:
  %4790 = load %nyx_string*, %nyx_string** %4735
  %4791 = getelementptr [9 x i8], [9 x i8]* @.str653, i32 0, i32 0
  %4792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %4791, i64 8)
  %4793 = call %nyx_string* @nyx_string_concat(%nyx_string* %4790, %nyx_string* %4792)
  store %nyx_string* %4793, %nyx_string** %4785
  br label %merge740
else739:
  br label %merge740
merge740:
  %4794 = getelementptr [1 x i8], [1 x i8]* @.str654, i32 0, i32 0
  %4795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %4794, i64 0)
  %4796 = alloca %nyx_string*
  store %nyx_string* %4795, %nyx_string** %4796
  %4797 = load i1, i1* %release.ptr
  br i1 %4797, label %then741, label %else742
then741:
  %4798 = getelementptr [4 x i8], [4 x i8]* @.str655, i32 0, i32 0
  %4799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %4798, i64 3)
  store %nyx_string* %4799, %nyx_string** %4796
  br label %merge743
else742:
  br label %merge743
merge743:
  %4800 = getelementptr [1 x i8], [1 x i8]* @.str656, i32 0, i32 0
  %4801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %4800, i64 0)
  %4802 = alloca %nyx_string*
  store %nyx_string* %4801, %nyx_string** %4802
  %4803 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4804 = load i1, i1* %4803
  br i1 %4804, label %then744, label %else745
then744:
  %4805 = getelementptr [13 x i8], [13 x i8]* @.str657, i32 0, i32 0
  %4806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %4805, i64 12)
  store %nyx_string* %4806, %nyx_string** %4802
  br label %merge746
else745:
  br label %merge746
merge746:
  %4807 = getelementptr [20 x i8], [20 x i8]* @.str658, i32 0, i32 0
  %4808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %4807, i64 19)
  %4809 = call %nyx_string* @pila_compilador_sh()
  %4810 = call %nyx_string* @nyx_string_concat(%nyx_string* %4808, %nyx_string* %4809)
  %4811 = call %nyx_string* @pila_compilador_pista_sh()
  %4812 = call %nyx_string* @nyx_string_concat(%nyx_string* %4810, %nyx_string* %4811)
  %4813 = alloca %nyx_string*
  store %nyx_string* %4812, %nyx_string** %4813
  %4814 = load %nyx_string*, %nyx_string** %4813
  %4815 = getelementptr [86 x i8], [86 x i8]* @.str659, i32 0, i32 0
  %4816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %4815, i64 85)
  %4817 = call %nyx_string* @nyx_string_concat(%nyx_string* %4814, %nyx_string* %4816)
  store %nyx_string* %4817, %nyx_string** %4813
  %4818 = load %nyx_string*, %nyx_string** %4813
  %4819 = getelementptr [5 x i8], [5 x i8]* @.str660, i32 0, i32 0
  %4820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %4819, i64 4)
  %4821 = call %nyx_string* @nyx_string_concat(%nyx_string* %4818, %nyx_string* %4820)
  %4822 = load %nyx_string*, %nyx_string** %4735
  %4823 = call %nyx_string* @nyx_string_concat(%nyx_string* %4821, %nyx_string* %4822)
  %4824 = getelementptr [3 x i8], [3 x i8]* @.str661, i32 0, i32 0
  %4825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %4824, i64 2)
  %4826 = call %nyx_string* @nyx_string_concat(%nyx_string* %4823, %nyx_string* %4825)
  store %nyx_string* %4826, %nyx_string** %4813
  %4827 = load %nyx_string*, %nyx_string** %4813
  %4828 = getelementptr [51 x i8], [51 x i8]* @.str662, i32 0, i32 0
  %4829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %4828, i64 50)
  %4830 = call %nyx_string* @nyx_string_concat(%nyx_string* %4827, %nyx_string* %4829)
  %4831 = load %nyx_string*, %nyx_string** %4735
  %4832 = call %nyx_string* @nyx_string_concat(%nyx_string* %4830, %nyx_string* %4831)
  %4833 = getelementptr [35 x i8], [35 x i8]* @.str663, i32 0, i32 0
  %4834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %4833, i64 34)
  %4835 = call %nyx_string* @nyx_string_concat(%nyx_string* %4832, %nyx_string* %4834)
  store %nyx_string* %4835, %nyx_string** %4813
  %4836 = load %nyx_string*, %nyx_string** %4813
  %4837 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %4838 = load %nyx_string*, %nyx_string** %4735
  %4839 = load %nyx_string*, %nyx_string** %4785
  %4840 = load %nyx_string*, %nyx_string** %4796
  %4841 = load %nyx_string*, %nyx_string** %4802
  %4842 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %4837, %nyx_string* %4838, %nyx_string* %4839, %nyx_string* %4840, %nyx_string* %4841)
  %4843 = call %nyx_string* @nyx_string_concat(%nyx_string* %4836, %nyx_string* %4842)
  store %nyx_string* %4843, %nyx_string** %4813
  %4844 = load %nyx_string*, %nyx_string** %4813
  %4845 = getelementptr [29 x i8], [29 x i8]* @.str664, i32 0, i32 0
  %4846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %4845, i64 28)
  %4847 = call %nyx_string* @nyx_string_concat(%nyx_string* %4844, %nyx_string* %4846)
  store %nyx_string* %4847, %nyx_string** %4813
  %4848 = getelementptr [15 x i8], [15 x i8]* @.str665, i32 0, i32 0
  %4849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %4848, i64 14)
  %4850 = call i64 @nyx_getpid()
  %4851 = call %nyx_string* @nyx_string_from_int(i64 %4850)
  %4852 = call %nyx_string* @nyx_string_concat(%nyx_string* %4849, %nyx_string* %4851)
  %4853 = getelementptr [4 x i8], [4 x i8]* @.str666, i32 0, i32 0
  %4854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %4853, i64 3)
  %4855 = call %nyx_string* @nyx_string_concat(%nyx_string* %4852, %nyx_string* %4854)
  %4856 = alloca %nyx_string*
  store %nyx_string* %4855, %nyx_string** %4856
  %4857 = load %nyx_string*, %nyx_string** %4856
  %4858 = load %nyx_string*, %nyx_string** %4813
  %4859 = call i8* @nyx_string_to_cstr(%nyx_string* %4857)
  %4860 = call i1 @nyx_write_file_safe(i8* %4859, %nyx_string* %4858)
  %4861 = getelementptr [7 x i8], [7 x i8]* @.str667, i32 0, i32 0
  %4862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %4861, i64 6)
  %4863 = load %nyx_string*, %nyx_string** %4856
  %4864 = call %nyx_string* @nyx_string_concat(%nyx_string* %4862, %nyx_string* %4863)
  %4865 = getelementptr [22 x i8], [22 x i8]* @.str668, i32 0, i32 0
  %4866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %4865, i64 21)
  %4867 = call %nyx_string* @nyx_string_concat(%nyx_string* %4864, %nyx_string* %4866)
  %4868 = load %nyx_string*, %nyx_string** %4856
  %4869 = call %nyx_string* @nyx_string_concat(%nyx_string* %4867, %nyx_string* %4868)
  %4870 = getelementptr [16 x i8], [16 x i8]* @.str669, i32 0, i32 0
  %4871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %4870, i64 15)
  %4872 = call %nyx_string* @nyx_string_concat(%nyx_string* %4869, %nyx_string* %4871)
  %4873 = call i8* @nyx_string_to_cstr(%nyx_string* %4872)
  %4874 = call i64 @nyx_exec_code(i8* %4873)
  %4875 = alloca i64
  store i64 %4874, i64* %4875
  %4876 = load i64, i64* %4875
  %4877 = icmp eq i64 %4876, 0
  ret i1 %4877
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %4878 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4879 = load %nyx_string*, %nyx_string** %4878
  %4880 = alloca %nyx_string*
  store %nyx_string* %4879, %nyx_string** %4880
  %4881 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %4882 = getelementptr [1 x i8], [1 x i8]* @.str670, i32 0, i32 0
  %4883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %4882, i64 0)
  %4884 = call i1 @nyx_string_equals(%nyx_string* %4881, %nyx_string* %4883)
  %4885 = xor i1 %4884, true
  br i1 %4885, label %then747, label %else748
then747:
  %4886 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %4886, %nyx_string** %4880
  br label %merge749
else748:
  br label %merge749
merge749:
  %4887 = getelementptr [1 x i8], [1 x i8]* @.str671, i32 0, i32 0
  %4888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %4887, i64 0)
  %4889 = alloca %nyx_string*
  store %nyx_string* %4888, %nyx_string** %4889
  %4890 = load %nyx_string*, %nyx_string** %4880
  %4891 = getelementptr [1 x i8], [1 x i8]* @.str672, i32 0, i32 0
  %4892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %4891, i64 0)
  %4893 = call i1 @nyx_string_equals(%nyx_string* %4890, %nyx_string* %4892)
  %4894 = xor i1 %4893, true
  br i1 %4894, label %then750, label %else751
then750:
  %4895 = getelementptr [3 x i8], [3 x i8]* @.str673, i32 0, i32 0
  %4896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %4895, i64 2)
  %4897 = load %nyx_string*, %nyx_string** %4880
  %4898 = call %nyx_string* @nyx_string_concat(%nyx_string* %4896, %nyx_string* %4897)
  %4899 = getelementptr [2 x i8], [2 x i8]* @.str674, i32 0, i32 0
  %4900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %4899, i64 1)
  %4901 = call %nyx_string* @nyx_string_concat(%nyx_string* %4898, %nyx_string* %4900)
  store %nyx_string* %4901, %nyx_string** %4889
  br label %merge752
else751:
  br label %merge752
merge752:
  %4902 = getelementptr [13 x i8], [13 x i8]* @.str675, i32 0, i32 0
  %4903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %4902, i64 12)
  %4904 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4905 = load %nyx_string*, %nyx_string** %4904
  %4906 = call %nyx_string* @nyx_string_concat(%nyx_string* %4903, %nyx_string* %4905)
  %4907 = getelementptr [3 x i8], [3 x i8]* @.str676, i32 0, i32 0
  %4908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %4907, i64 2)
  %4909 = call %nyx_string* @nyx_string_concat(%nyx_string* %4906, %nyx_string* %4908)
  %4910 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4911 = load %nyx_string*, %nyx_string** %4910
  %4912 = call %nyx_string* @nyx_string_concat(%nyx_string* %4909, %nyx_string* %4911)
  %4913 = load %nyx_string*, %nyx_string** %4889
  %4914 = call %nyx_string* @nyx_string_concat(%nyx_string* %4912, %nyx_string* %4913)
  %4915 = call i8* @nyx_string_to_cstr(%nyx_string* %4914)
  call void @nyx_print_string(i8* %4915)
  %4916 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %4917 = call i1 @resolve_deps(%ProjectConfig %4916)
  %4918 = alloca i1
  store i1 %4917, i1* %4918
  %4919 = load i1, i1* %4918
  %4920 = icmp eq i1 %4919, 0
  br i1 %4920, label %then753, label %else754
then753:
  ret i1 0
else754:
  br label %merge755
merge755:
  %4921 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4922 = load %nyx_string*, %nyx_string** %4921
  %4923 = call i8* @nyx_string_to_cstr(%nyx_string* %4922)
  %4924 = call i1 @nyx_file_exists(i8* %4923)
  %4925 = xor i1 %4924, true
  br i1 %4925, label %then756, label %else757
then756:
  %4926 = getelementptr [29 x i8], [29 x i8]* @.str677, i32 0, i32 0
  %4927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %4926, i64 28)
  %4928 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4929 = load %nyx_string*, %nyx_string** %4928
  %4930 = call %nyx_string* @nyx_string_concat(%nyx_string* %4927, %nyx_string* %4929)
  %4931 = call i8* @nyx_string_to_cstr(%nyx_string* %4930)
  call void @nyx_print_string(i8* %4931)
  ret i1 0
else757:
  br label %merge758
merge758:
  %4932 = getelementptr [1 x i8], [1 x i8]* @.str678, i32 0, i32 0
  %4933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %4932, i64 0)
  %4934 = alloca %nyx_string*
  store %nyx_string* %4933, %nyx_string** %4934
  %4935 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4936 = load i1, i1* %4935
  br i1 %4936, label %then759, label %else760
then759:
  %4937 = getelementptr [13 x i8], [13 x i8]* @.str679, i32 0, i32 0
  %4938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %4937, i64 12)
  store %nyx_string* %4938, %nyx_string** %4934
  br label %merge761
else760:
  br label %merge761
merge761:
  %4939 = getelementptr [14 x i8], [14 x i8]* @.str680, i32 0, i32 0
  %4940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %4939, i64 13)
  %4941 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4942 = load %nyx_string*, %nyx_string** %4941
  %4943 = call %nyx_string* @nyx_string_concat(%nyx_string* %4940, %nyx_string* %4942)
  %4944 = call i8* @nyx_string_to_cstr(%nyx_string* %4943)
  call void @nyx_print_string(i8* %4944)
  %4945 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4946 = load %nyx_string*, %nyx_string** %4945
  %4947 = alloca %nyx_string*
  store %nyx_string* %4946, %nyx_string** %4947
  %4948 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4949 = load %nyx_string*, %nyx_string** %4948
  %4950 = getelementptr [1 x i8], [1 x i8]* @.str681, i32 0, i32 0
  %4951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %4950, i64 0)
  %4952 = call i1 @nyx_string_equals(%nyx_string* %4949, %nyx_string* %4951)
  %4953 = xor i1 %4952, true
  br i1 %4953, label %then762, label %else763
then762:
  %4954 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4955 = load %nyx_string*, %nyx_string** %4954
  store %nyx_string* %4955, %nyx_string** %4947
  br label %merge764
else763:
  br label %merge764
merge764:
  %4956 = load %nyx_string*, %nyx_string** %4947
  %4957 = alloca %nyx_string*
  store %nyx_string* %4956, %nyx_string** %4957
  %4958 = getelementptr [1 x i8], [1 x i8]* @.str682, i32 0, i32 0
  %4959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %4958, i64 0)
  %4960 = alloca %nyx_string*
  store %nyx_string* %4959, %nyx_string** %4960
  %4961 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4962 = load %nyx_string*, %nyx_string** %4961
  %4963 = getelementptr [1 x i8], [1 x i8]* @.str683, i32 0, i32 0
  %4964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %4963, i64 0)
  %4965 = call i1 @nyx_string_equals(%nyx_string* %4962, %nyx_string* %4964)
  %4966 = xor i1 %4965, true
  br i1 %4966, label %then765, label %else766
then765:
  %4967 = getelementptr [8 x i8], [8 x i8]* @.str684, i32 0, i32 0
  %4968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %4967, i64 7)
  %4969 = load %nyx_string*, %nyx_string** %4947
  %4970 = call %nyx_string* @nyx_string_concat(%nyx_string* %4968, %nyx_string* %4969)
  store %nyx_string* %4970, %nyx_string** %4957
  %4971 = getelementptr [29 x i8], [29 x i8]* @.str685, i32 0, i32 0
  %4972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %4971, i64 28)
  store %nyx_string* %4972, %nyx_string** %4960
  br label %merge767
else766:
  br label %merge767
merge767:
  %4973 = getelementptr [1 x i8], [1 x i8]* @.str686, i32 0, i32 0
  %4974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %4973, i64 0)
  %4975 = alloca %nyx_string*
  store %nyx_string* %4974, %nyx_string** %4975
  %4976 = load i1, i1* %release.ptr
  br i1 %4976, label %then768, label %else769
then768:
  %4977 = getelementptr [4 x i8], [4 x i8]* @.str687, i32 0, i32 0
  %4978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %4977, i64 3)
  store %nyx_string* %4978, %nyx_string** %4975
  br label %merge770
else769:
  br label %merge770
merge770:
  %4979 = getelementptr [9 x i8], [9 x i8]* @.str688, i32 0, i32 0
  %4980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %4979, i64 8)
  %4981 = call i8* @nyx_string_to_cstr(%nyx_string* %4980)
  %4982 = call %nyx_string* @nyx_getenv(i8* %4981)
  %4983 = alloca %nyx_string*
  store %nyx_string* %4982, %nyx_string** %4983
  %4984 = load %nyx_string*, %nyx_string** %4983
  %4985 = getelementptr [1 x i8], [1 x i8]* @.str689, i32 0, i32 0
  %4986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %4985, i64 0)
  %4987 = call i1 @nyx_string_equals(%nyx_string* %4984, %nyx_string* %4986)
  br i1 %4987, label %then771, label %else772
then771:
  %4988 = getelementptr [5 x i8], [5 x i8]* @.str690, i32 0, i32 0
  %4989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %4988, i64 4)
  %4990 = call i8* @nyx_string_to_cstr(%nyx_string* %4989)
  %4991 = call %nyx_string* @nyx_getenv(i8* %4990)
  %4992 = alloca %nyx_string*
  store %nyx_string* %4991, %nyx_string** %4992
  %4993 = load %nyx_string*, %nyx_string** %4992
  %4994 = getelementptr [6 x i8], [6 x i8]* @.str691, i32 0, i32 0
  %4995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %4994, i64 5)
  %4996 = call %nyx_string* @nyx_string_concat(%nyx_string* %4993, %nyx_string* %4995)
  %4997 = alloca %nyx_string*
  store %nyx_string* %4996, %nyx_string** %4997
  %4998 = alloca i1
  store i1 false, i1* %4998
  %4999 = load %nyx_string*, %nyx_string** %4992
  %5000 = getelementptr [1 x i8], [1 x i8]* @.str692, i32 0, i32 0
  %5001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %5000, i64 0)
  %5002 = call i1 @nyx_string_equals(%nyx_string* %4999, %nyx_string* %5001)
  %5003 = xor i1 %5002, true
  br i1 %5003, label %sc_and_rhs774, label %sc_and_end775
sc_and_rhs774:
  %5004 = load %nyx_string*, %nyx_string** %4997
  %5005 = getelementptr [19 x i8], [19 x i8]* @.str693, i32 0, i32 0
  %5006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %5005, i64 18)
  %5007 = call %nyx_string* @nyx_string_concat(%nyx_string* %5004, %nyx_string* %5006)
  %5008 = call i8* @nyx_string_to_cstr(%nyx_string* %5007)
  %5009 = call i1 @nyx_file_exists(i8* %5008)
  store i1 %5009, i1* %4998
  br label %sc_and_end775
sc_and_end775:
  %5010 = load i1, i1* %4998
  br i1 %5010, label %then776, label %else777
then776:
  %5011 = load %nyx_string*, %nyx_string** %4997
  store %nyx_string* %5011, %nyx_string** %4983
  br label %merge778
else777:
  br label %merge778
merge778:
  br label %merge773
else772:
  br label %merge773
merge773:
  %5012 = load %nyx_string*, %nyx_string** %4983
  %5013 = getelementptr [1 x i8], [1 x i8]* @.str694, i32 0, i32 0
  %5014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %5013, i64 0)
  %5015 = call i1 @nyx_string_equals(%nyx_string* %5012, %nyx_string* %5014)
  br i1 %5015, label %then779, label %else780
then779:
  %5016 = getelementptr [14 x i8], [14 x i8]* @.str695, i32 0, i32 0
  %5017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %5016, i64 13)
  %5018 = call i8* @nyx_string_to_cstr(%nyx_string* %5017)
  %5019 = call i1 @nyx_file_exists(i8* %5018)
  br i1 %5019, label %then782, label %else783
then782:
  %5020 = getelementptr [2 x i8], [2 x i8]* @.str696, i32 0, i32 0
  %5021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %5020, i64 1)
  store %nyx_string* %5021, %nyx_string** %4983
  br label %merge784
else783:
  br label %merge784
merge784:
  br label %merge781
else780:
  br label %merge781
merge781:
  %5022 = load %nyx_string*, %nyx_string** %4983
  %5023 = getelementptr [1 x i8], [1 x i8]* @.str697, i32 0, i32 0
  %5024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %5023, i64 0)
  %5025 = call i1 @nyx_string_equals(%nyx_string* %5022, %nyx_string* %5024)
  br i1 %5025, label %then785, label %else786
then785:
  %5026 = getelementptr [56 x i8], [56 x i8]* @.str698, i32 0, i32 0
  %5027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %5026, i64 55)
  %5028 = call i8* @nyx_string_to_cstr(%nyx_string* %5027)
  call void @nyx_print_string(i8* %5028)
  ret i1 0
else786:
  br label %merge787
merge787:
  %5029 = load %nyx_string*, %nyx_string** %4983
  %5030 = getelementptr [15 x i8], [15 x i8]* @.str699, i32 0, i32 0
  %5031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %5030, i64 14)
  %5032 = call %nyx_string* @nyx_string_concat(%nyx_string* %5029, %nyx_string* %5031)
  %5033 = alloca %nyx_string*
  store %nyx_string* %5032, %nyx_string** %5033
  %5034 = load %nyx_string*, %nyx_string** %5033
  %5035 = call i8* @nyx_string_to_cstr(%nyx_string* %5034)
  %5036 = call i1 @nyx_file_exists(i8* %5035)
  %5037 = xor i1 %5036, true
  br i1 %5037, label %then788, label %else789
then788:
  %5038 = load %nyx_string*, %nyx_string** %4983
  %5039 = getelementptr [9 x i8], [9 x i8]* @.str700, i32 0, i32 0
  %5040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %5039, i64 8)
  %5041 = call %nyx_string* @nyx_string_concat(%nyx_string* %5038, %nyx_string* %5040)
  store %nyx_string* %5041, %nyx_string** %5033
  br label %merge790
else789:
  br label %merge790
merge790:
  %5042 = load %nyx_string*, %nyx_string** %4983
  %5043 = getelementptr [9 x i8], [9 x i8]* @.str701, i32 0, i32 0
  %5044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %5043, i64 8)
  %5045 = call %nyx_string* @nyx_string_concat(%nyx_string* %5042, %nyx_string* %5044)
  %5046 = alloca %nyx_string*
  store %nyx_string* %5045, %nyx_string** %5046
  %5047 = getelementptr [50 x i8], [50 x i8]* @.str702, i32 0, i32 0
  %5048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %5047, i64 49)
  %5049 = getelementptr [77 x i8], [77 x i8]* @.str703, i32 0, i32 0
  %5050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %5049, i64 76)
  %5051 = call %nyx_string* @nyx_string_concat(%nyx_string* %5048, %nyx_string* %5050)
  %5052 = getelementptr [89 x i8], [89 x i8]* @.str704, i32 0, i32 0
  %5053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %5052, i64 88)
  %5054 = call %nyx_string* @nyx_string_concat(%nyx_string* %5051, %nyx_string* %5053)
  %5055 = getelementptr [83 x i8], [83 x i8]* @.str705, i32 0, i32 0
  %5056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %5055, i64 82)
  %5057 = call %nyx_string* @nyx_string_concat(%nyx_string* %5054, %nyx_string* %5056)
  %5058 = getelementptr [65 x i8], [65 x i8]* @.str706, i32 0, i32 0
  %5059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %5058, i64 64)
  %5060 = call %nyx_string* @nyx_string_concat(%nyx_string* %5057, %nyx_string* %5059)
  %5061 = alloca %nyx_string*
  store %nyx_string* %5060, %nyx_string** %5061
  %5062 = getelementptr [15 x i8], [15 x i8]* @.str707, i32 0, i32 0
  %5063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %5062, i64 14)
  %5064 = call i8* @nyx_string_to_cstr(%nyx_string* %5063)
  %5065 = call %nyx_string* @nyx_getenv(i8* %5064)
  %5066 = alloca %nyx_string*
  store %nyx_string* %5065, %nyx_string** %5066
  %5067 = alloca i1
  store i1 false, i1* %5067
  %5068 = load %nyx_string*, %nyx_string** %5066
  %5069 = getelementptr [1 x i8], [1 x i8]* @.str708, i32 0, i32 0
  %5070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %5069, i64 0)
  %5071 = call i1 @nyx_string_equals(%nyx_string* %5068, %nyx_string* %5070)
  %5072 = xor i1 %5071, true
  br i1 %5072, label %sc_and_rhs791, label %sc_and_end792
sc_and_rhs791:
  %5073 = load %nyx_string*, %nyx_string** %5066
  %5074 = call i8* @nyx_string_to_cstr(%nyx_string* %5073)
  %5075 = call i1 @nyx_file_exists(i8* %5074)
  store i1 %5075, i1* %5067
  br label %sc_and_end792
sc_and_end792:
  %5076 = load i1, i1* %5067
  br i1 %5076, label %then793, label %else794
then793:
  %5077 = load %nyx_string*, %nyx_string** %5066
  %5078 = getelementptr [2 x i8], [2 x i8]* @.str709, i32 0, i32 0
  %5079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %5078, i64 1)
  %5080 = call i1 @nyx_string_starts_with(%nyx_string* %5077, %nyx_string* %5079)
  %5081 = xor i1 %5080, true
  br i1 %5081, label %then796, label %else797
then796:
  %5082 = call %nyx_string* @nyx_getcwd()
  %5083 = getelementptr [2 x i8], [2 x i8]* @.str710, i32 0, i32 0
  %5084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %5083, i64 1)
  %5085 = call %nyx_string* @nyx_string_concat(%nyx_string* %5082, %nyx_string* %5084)
  %5086 = load %nyx_string*, %nyx_string** %5066
  %5087 = call %nyx_string* @nyx_string_concat(%nyx_string* %5085, %nyx_string* %5086)
  store %nyx_string* %5087, %nyx_string** %5066
  br label %merge798
else797:
  br label %merge798
merge798:
  %5088 = getelementptr [2 x i8], [2 x i8]* @.str711, i32 0, i32 0
  %5089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %5088, i64 1)
  %5090 = load %nyx_string*, %nyx_string** %5066
  %5091 = call %nyx_string* @nyx_string_concat(%nyx_string* %5089, %nyx_string* %5090)
  %5092 = getelementptr [3 x i8], [3 x i8]* @.str712, i32 0, i32 0
  %5093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %5092, i64 2)
  %5094 = call %nyx_string* @nyx_string_concat(%nyx_string* %5091, %nyx_string* %5093)
  store %nyx_string* %5094, %nyx_string** %5061
  br label %merge795
else794:
  br label %merge795
merge795:
  %5095 = getelementptr [20 x i8], [20 x i8]* @.str713, i32 0, i32 0
  %5096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %5095, i64 19)
  %5097 = call %nyx_string* @pila_compilador_sh()
  %5098 = call %nyx_string* @nyx_string_concat(%nyx_string* %5096, %nyx_string* %5097)
  %5099 = call %nyx_string* @pila_compilador_pista_sh()
  %5100 = call %nyx_string* @nyx_string_concat(%nyx_string* %5098, %nyx_string* %5099)
  %5101 = alloca %nyx_string*
  store %nyx_string* %5100, %nyx_string** %5101
  %5102 = getelementptr [1 x i8], [1 x i8]* @.str714, i32 0, i32 0
  %5103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %5102, i64 0)
  %5104 = alloca %nyx_string*
  store %nyx_string* %5103, %nyx_string** %5104
  %5105 = getelementptr [1 x i8], [1 x i8]* @.str715, i32 0, i32 0
  %5106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %5105, i64 0)
  %5107 = alloca %nyx_string*
  store %nyx_string* %5106, %nyx_string** %5107
  %5108 = alloca i1
  store i1 false, i1* %5108
  %5109 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5110 = load { i64, i8* }*, { i64, i8* }** %5109
  %5111 = call i64 @nyx_array_length({ i64, i8* }* %5110)
  %5112 = icmp sgt i64 %5111, 0
  br i1 %5112, label %sc_and_rhs799, label %sc_and_end800
sc_and_rhs799:
  %5113 = load %nyx_string*, %nyx_string** %4880
  %5114 = getelementptr [12 x i8], [12 x i8]* @.str716, i32 0, i32 0
  %5115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %5114, i64 11)
  %5116 = call i1 @nyx_string_equals(%nyx_string* %5113, %nyx_string* %5115)
  %5117 = xor i1 %5116, true
  store i1 %5117, i1* %5108
  br label %sc_and_end800
sc_and_end800:
  %5118 = load i1, i1* %5108
  br i1 %5118, label %then801, label %else802
then801:
  %5119 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %5120 = load %nyx_string*, %nyx_string** %4983
  %5121 = load %nyx_string*, %nyx_string** %5033
  %5122 = load %nyx_string*, %nyx_string** %4975
  %5123 = load %nyx_string*, %nyx_string** %4934
  %5124 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %5119, %nyx_string* %5120, %nyx_string* %5121, %nyx_string* %5122, %nyx_string* %5123)
  store %nyx_string* %5124, %nyx_string** %5104
  %5125 = getelementptr [18 x i8], [18 x i8]* @.str717, i32 0, i32 0
  %5126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %5125, i64 17)
  %5127 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5128 = load { i64, i8* }*, { i64, i8* }** %5127
  %5129 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5130 = load { i64, i8* }*, { i64, i8* }** %5129
  %5131 = getelementptr [2 x i8], [2 x i8]* @.str718, i32 0, i32 0
  %5132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %5131, i64 1)
  %5133 = call %nyx_string* @nyx_string_join({ i64, i8* }* %5130, %nyx_string* %5132)
  %5134 = call %nyx_string* @nyx_string_concat(%nyx_string* %5126, %nyx_string* %5133)
  %5135 = getelementptr [3 x i8], [3 x i8]* @.str719, i32 0, i32 0
  %5136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %5135, i64 2)
  %5137 = call %nyx_string* @nyx_string_concat(%nyx_string* %5134, %nyx_string* %5136)
  store %nyx_string* %5137, %nyx_string** %5107
  br label %merge803
else802:
  br label %merge803
merge803:
  %5138 = getelementptr [13 x i8], [13 x i8]* @.str720, i32 0, i32 0
  %5139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %5138, i64 12)
  %5140 = load %nyx_string*, %nyx_string** %4934
  %5141 = call %nyx_string* @nyx_string_concat(%nyx_string* %5139, %nyx_string* %5140)
  %5142 = load %nyx_string*, %nyx_string** %5107
  %5143 = call %nyx_string* @nyx_string_concat(%nyx_string* %5141, %nyx_string* %5142)
  %5144 = alloca %nyx_string*
  store %nyx_string* %5143, %nyx_string** %5144
  %5145 = load %nyx_string*, %nyx_string** %5101
  %5146 = getelementptr [19 x i8], [19 x i8]* @.str721, i32 0, i32 0
  %5147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %5146, i64 18)
  %5148 = call %nyx_string* @nyx_string_concat(%nyx_string* %5145, %nyx_string* %5147)
  %5149 = getelementptr [5 x i8], [5 x i8]* @.str722, i32 0, i32 0
  %5150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %5149, i64 4)
  %5151 = call %nyx_string* @nyx_string_concat(%nyx_string* %5148, %nyx_string* %5150)
  %5152 = load %nyx_string*, %nyx_string** %5046
  %5153 = call %nyx_string* @nyx_string_concat(%nyx_string* %5151, %nyx_string* %5152)
  %5154 = getelementptr [3 x i8], [3 x i8]* @.str723, i32 0, i32 0
  %5155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %5154, i64 2)
  %5156 = call %nyx_string* @nyx_string_concat(%nyx_string* %5153, %nyx_string* %5155)
  %5157 = getelementptr [43 x i8], [43 x i8]* @.str724, i32 0, i32 0
  %5158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %5157, i64 42)
  %5159 = call %nyx_string* @nyx_string_concat(%nyx_string* %5156, %nyx_string* %5158)
  %5160 = getelementptr [37 x i8], [37 x i8]* @.str725, i32 0, i32 0
  %5161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %5160, i64 36)
  %5162 = call %nyx_string* @nyx_string_concat(%nyx_string* %5159, %nyx_string* %5161)
  %5163 = getelementptr [17 x i8], [17 x i8]* @.str726, i32 0, i32 0
  %5164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %5163, i64 16)
  %5165 = call %nyx_string* @nyx_string_concat(%nyx_string* %5162, %nyx_string* %5164)
  %5166 = getelementptr [38 x i8], [38 x i8]* @.str727, i32 0, i32 0
  %5167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %5166, i64 37)
  %5168 = call %nyx_string* @nyx_string_concat(%nyx_string* %5165, %nyx_string* %5167)
  %5169 = getelementptr [17 x i8], [17 x i8]* @.str728, i32 0, i32 0
  %5170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %5169, i64 16)
  %5171 = call %nyx_string* @nyx_string_concat(%nyx_string* %5168, %nyx_string* %5170)
  %5172 = getelementptr [15 x i8], [15 x i8]* @.str729, i32 0, i32 0
  %5173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %5172, i64 14)
  %5174 = call %nyx_string* @nyx_string_concat(%nyx_string* %5171, %nyx_string* %5173)
  %5175 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5176 = load %nyx_string*, %nyx_string** %5175
  %5177 = call %nyx_string* @nyx_string_concat(%nyx_string* %5174, %nyx_string* %5176)
  %5178 = getelementptr [12 x i8], [12 x i8]* @.str730, i32 0, i32 0
  %5179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %5178, i64 11)
  %5180 = call %nyx_string* @nyx_string_concat(%nyx_string* %5177, %nyx_string* %5179)
  %5181 = getelementptr [5 x i8], [5 x i8]* @.str731, i32 0, i32 0
  %5182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %5181, i64 4)
  %5183 = call %nyx_string* @nyx_string_concat(%nyx_string* %5180, %nyx_string* %5182)
  %5184 = load %nyx_string*, %nyx_string** %4983
  %5185 = call %nyx_string* @nyx_string_concat(%nyx_string* %5183, %nyx_string* %5184)
  %5186 = getelementptr [3 x i8], [3 x i8]* @.str732, i32 0, i32 0
  %5187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %5186, i64 2)
  %5188 = call %nyx_string* @nyx_string_concat(%nyx_string* %5185, %nyx_string* %5187)
  %5189 = getelementptr [51 x i8], [51 x i8]* @.str733, i32 0, i32 0
  %5190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %5189, i64 50)
  %5191 = call %nyx_string* @nyx_string_concat(%nyx_string* %5188, %nyx_string* %5190)
  %5192 = load %nyx_string*, %nyx_string** %4983
  %5193 = call %nyx_string* @nyx_string_concat(%nyx_string* %5191, %nyx_string* %5192)
  %5194 = getelementptr [35 x i8], [35 x i8]* @.str734, i32 0, i32 0
  %5195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %5194, i64 34)
  %5196 = call %nyx_string* @nyx_string_concat(%nyx_string* %5193, %nyx_string* %5195)
  %5197 = load %nyx_string*, %nyx_string** %5104
  %5198 = call %nyx_string* @nyx_string_concat(%nyx_string* %5196, %nyx_string* %5197)
  %5199 = load %nyx_string*, %nyx_string** %5144
  %5200 = call %nyx_string* @nyx_string_concat(%nyx_string* %5198, %nyx_string* %5199)
  %5201 = getelementptr [35 x i8], [35 x i8]* @.str735, i32 0, i32 0
  %5202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %5201, i64 34)
  %5203 = call %nyx_string* @nyx_string_concat(%nyx_string* %5200, %nyx_string* %5202)
  %5204 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5205 = load %nyx_string*, %nyx_string** %5204
  %5206 = call %nyx_string* @nyx_string_concat(%nyx_string* %5203, %nyx_string* %5205)
  %5207 = getelementptr [32 x i8], [32 x i8]* @.str736, i32 0, i32 0
  %5208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %5207, i64 31)
  %5209 = call %nyx_string* @nyx_string_concat(%nyx_string* %5206, %nyx_string* %5208)
  %5210 = load %nyx_string*, %nyx_string** %5033
  %5211 = call %nyx_string* @nyx_string_concat(%nyx_string* %5209, %nyx_string* %5210)
  %5212 = getelementptr [19 x i8], [19 x i8]* @.str737, i32 0, i32 0
  %5213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %5212, i64 18)
  %5214 = call %nyx_string* @nyx_string_concat(%nyx_string* %5211, %nyx_string* %5213)
  %5215 = getelementptr [93 x i8], [93 x i8]* @.str738, i32 0, i32 0
  %5216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %5215, i64 92)
  %5217 = call %nyx_string* @nyx_string_concat(%nyx_string* %5214, %nyx_string* %5216)
  %5218 = getelementptr [34 x i8], [34 x i8]* @.str739, i32 0, i32 0
  %5219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %5218, i64 33)
  %5220 = call %nyx_string* @nyx_string_concat(%nyx_string* %5217, %nyx_string* %5219)
  %5221 = load %nyx_string*, %nyx_string** %4960
  %5222 = call %nyx_string* @nyx_string_concat(%nyx_string* %5220, %nyx_string* %5221)
  %5223 = getelementptr [7 x i8], [7 x i8]* @.str740, i32 0, i32 0
  %5224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %5223, i64 6)
  %5225 = call %nyx_string* @nyx_string_concat(%nyx_string* %5222, %nyx_string* %5224)
  %5226 = load %nyx_string*, %nyx_string** %4975
  %5227 = call %nyx_string* @nyx_string_concat(%nyx_string* %5225, %nyx_string* %5226)
  %5228 = getelementptr [22 x i8], [22 x i8]* @.str741, i32 0, i32 0
  %5229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %5228, i64 21)
  %5230 = call %nyx_string* @nyx_string_concat(%nyx_string* %5227, %nyx_string* %5229)
  %5231 = load %nyx_string*, %nyx_string** %5061
  %5232 = call %nyx_string* @nyx_string_concat(%nyx_string* %5230, %nyx_string* %5231)
  %5233 = getelementptr [44 x i8], [44 x i8]* @.str742, i32 0, i32 0
  %5234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %5233, i64 43)
  %5235 = call %nyx_string* @nyx_string_concat(%nyx_string* %5232, %nyx_string* %5234)
  %5236 = getelementptr [15 x i8], [15 x i8]* @.str743, i32 0, i32 0
  %5237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %5236, i64 14)
  %5238 = call %nyx_string* @nyx_string_concat(%nyx_string* %5235, %nyx_string* %5237)
  %5239 = load %nyx_string*, %nyx_string** %4957
  %5240 = call %nyx_string* @nyx_string_concat(%nyx_string* %5238, %nyx_string* %5239)
  %5241 = getelementptr [13 x i8], [13 x i8]* @.str744, i32 0, i32 0
  %5242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %5241, i64 12)
  %5243 = call %nyx_string* @nyx_string_concat(%nyx_string* %5240, %nyx_string* %5242)
  %5244 = getelementptr [44 x i8], [44 x i8]* @.str745, i32 0, i32 0
  %5245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %5244, i64 43)
  %5246 = call %nyx_string* @nyx_string_concat(%nyx_string* %5243, %nyx_string* %5245)
  %5247 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5248 = load %nyx_string*, %nyx_string** %5247
  %5249 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %5248)
  %5250 = call %nyx_string* @nyx_string_concat(%nyx_string* %5246, %nyx_string* %5249)
  %5251 = getelementptr [27 x i8], [27 x i8]* @.str746, i32 0, i32 0
  %5252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %5251, i64 26)
  %5253 = call %nyx_string* @nyx_string_concat(%nyx_string* %5250, %nyx_string* %5252)
  %5254 = getelementptr [18 x i8], [18 x i8]* @.str747, i32 0, i32 0
  %5255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %5254, i64 17)
  %5256 = call %nyx_string* @nyx_string_concat(%nyx_string* %5253, %nyx_string* %5255)
  %5257 = load %nyx_string*, %nyx_string** %4957
  %5258 = call %nyx_string* @nyx_string_concat(%nyx_string* %5256, %nyx_string* %5257)
  %5259 = getelementptr [3 x i8], [3 x i8]* @.str748, i32 0, i32 0
  %5260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %5259, i64 2)
  %5261 = call %nyx_string* @nyx_string_concat(%nyx_string* %5258, %nyx_string* %5260)
  %5262 = alloca %nyx_string*
  store %nyx_string* %5261, %nyx_string** %5262
  %5263 = alloca i1
  store i1 false, i1* %5263
  %5264 = load %nyx_string*, %nyx_string** %4880
  %5265 = getelementptr [1 x i8], [1 x i8]* @.str749, i32 0, i32 0
  %5266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %5265, i64 0)
  %5267 = call i1 @nyx_string_equals(%nyx_string* %5264, %nyx_string* %5266)
  %5268 = xor i1 %5267, true
  br i1 %5268, label %sc_and_rhs804, label %sc_and_end805
sc_and_rhs804:
  %5269 = load %nyx_string*, %nyx_string** %4880
  %5270 = getelementptr [12 x i8], [12 x i8]* @.str750, i32 0, i32 0
  %5271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %5270, i64 11)
  %5272 = call i1 @nyx_string_equals(%nyx_string* %5269, %nyx_string* %5271)
  %5273 = xor i1 %5272, true
  store i1 %5273, i1* %5263
  br label %sc_and_end805
sc_and_end805:
  %5274 = load i1, i1* %5263
  br i1 %5274, label %then806, label %else807
then806:
  %5275 = alloca i1
  store i1 false, i1* %5275
  %5276 = load %nyx_string*, %nyx_string** %4880
  %5277 = getelementptr [23 x i8], [23 x i8]* @.str751, i32 0, i32 0
  %5278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %5277, i64 22)
  %5279 = call i1 @nyx_string_equals(%nyx_string* %5276, %nyx_string* %5278)
  %5280 = xor i1 %5279, true
  br i1 %5280, label %sc_and_rhs809, label %sc_and_end810
sc_and_rhs809:
  %5281 = load %nyx_string*, %nyx_string** %4880
  %5282 = getelementptr [24 x i8], [24 x i8]* @.str752, i32 0, i32 0
  %5283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %5282, i64 23)
  %5284 = call i1 @nyx_string_equals(%nyx_string* %5281, %nyx_string* %5283)
  %5285 = xor i1 %5284, true
  store i1 %5285, i1* %5275
  br label %sc_and_end810
sc_and_end810:
  %5286 = load i1, i1* %5275
  br i1 %5286, label %then811, label %else812
then811:
  %5287 = getelementptr [28 x i8], [28 x i8]* @.str753, i32 0, i32 0
  %5288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %5287, i64 27)
  %5289 = load %nyx_string*, %nyx_string** %4880
  %5290 = call %nyx_string* @nyx_string_concat(%nyx_string* %5288, %nyx_string* %5289)
  %5291 = call i8* @nyx_string_to_cstr(%nyx_string* %5290)
  call void @nyx_print_string(i8* %5291)
  %5292 = getelementptr [83 x i8], [83 x i8]* @.str754, i32 0, i32 0
  %5293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %5292, i64 82)
  %5294 = call i8* @nyx_string_to_cstr(%nyx_string* %5293)
  call void @nyx_print_string(i8* %5294)
  %5295 = getelementptr [52 x i8], [52 x i8]* @.str755, i32 0, i32 0
  %5296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %5295, i64 51)
  %5297 = call i8* @nyx_string_to_cstr(%nyx_string* %5296)
  call void @nyx_print_string(i8* %5297)
  ret i1 0
else812:
  br label %merge813
merge813:
  br label %merge808
else807:
  br label %merge808
merge808:
  %5298 = load %nyx_string*, %nyx_string** %5262
  %5299 = alloca %nyx_string*
  store %nyx_string* %5298, %nyx_string** %5299
  %5300 = load %nyx_string*, %nyx_string** %4880
  %5301 = getelementptr [12 x i8], [12 x i8]* @.str756, i32 0, i32 0
  %5302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %5301, i64 11)
  %5303 = call i1 @nyx_string_equals(%nyx_string* %5300, %nyx_string* %5302)
  br i1 %5303, label %then814, label %else815
then814:
  %5304 = getelementptr [20 x i8], [20 x i8]* @.str757, i32 0, i32 0
  %5305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %5304, i64 19)
  %5306 = getelementptr [19 x i8], [19 x i8]* @.str758, i32 0, i32 0
  %5307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %5306, i64 18)
  %5308 = call %nyx_string* @nyx_string_concat(%nyx_string* %5305, %nyx_string* %5307)
  %5309 = getelementptr [5 x i8], [5 x i8]* @.str759, i32 0, i32 0
  %5310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %5309, i64 4)
  %5311 = call %nyx_string* @nyx_string_concat(%nyx_string* %5308, %nyx_string* %5310)
  %5312 = load %nyx_string*, %nyx_string** %5046
  %5313 = call %nyx_string* @nyx_string_concat(%nyx_string* %5311, %nyx_string* %5312)
  %5314 = getelementptr [3 x i8], [3 x i8]* @.str760, i32 0, i32 0
  %5315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %5314, i64 2)
  %5316 = call %nyx_string* @nyx_string_concat(%nyx_string* %5313, %nyx_string* %5315)
  %5317 = getelementptr [11 x i8], [11 x i8]* @.str761, i32 0, i32 0
  %5318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %5317, i64 10)
  %5319 = call %nyx_string* @nyx_string_concat(%nyx_string* %5316, %nyx_string* %5318)
  %5320 = getelementptr [23 x i8], [23 x i8]* @.str762, i32 0, i32 0
  %5321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %5320, i64 22)
  %5322 = call %nyx_string* @nyx_string_concat(%nyx_string* %5319, %nyx_string* %5321)
  %5323 = getelementptr [43 x i8], [43 x i8]* @.str763, i32 0, i32 0
  %5324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %5323, i64 42)
  %5325 = call %nyx_string* @nyx_string_concat(%nyx_string* %5322, %nyx_string* %5324)
  %5326 = getelementptr [37 x i8], [37 x i8]* @.str764, i32 0, i32 0
  %5327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %5326, i64 36)
  %5328 = call %nyx_string* @nyx_string_concat(%nyx_string* %5325, %nyx_string* %5327)
  %5329 = getelementptr [17 x i8], [17 x i8]* @.str765, i32 0, i32 0
  %5330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %5329, i64 16)
  %5331 = call %nyx_string* @nyx_string_concat(%nyx_string* %5328, %nyx_string* %5330)
  %5332 = getelementptr [38 x i8], [38 x i8]* @.str766, i32 0, i32 0
  %5333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %5332, i64 37)
  %5334 = call %nyx_string* @nyx_string_concat(%nyx_string* %5331, %nyx_string* %5333)
  %5335 = getelementptr [17 x i8], [17 x i8]* @.str767, i32 0, i32 0
  %5336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %5335, i64 16)
  %5337 = call %nyx_string* @nyx_string_concat(%nyx_string* %5334, %nyx_string* %5336)
  %5338 = getelementptr [163 x i8], [163 x i8]* @.str768, i32 0, i32 0
  %5339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %5338, i64 162)
  %5340 = call %nyx_string* @nyx_string_concat(%nyx_string* %5337, %nyx_string* %5339)
  %5341 = getelementptr [15 x i8], [15 x i8]* @.str769, i32 0, i32 0
  %5342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %5341, i64 14)
  %5343 = call %nyx_string* @nyx_string_concat(%nyx_string* %5340, %nyx_string* %5342)
  %5344 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5345 = load %nyx_string*, %nyx_string** %5344
  %5346 = call %nyx_string* @nyx_string_concat(%nyx_string* %5343, %nyx_string* %5345)
  %5347 = getelementptr [12 x i8], [12 x i8]* @.str770, i32 0, i32 0
  %5348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %5347, i64 11)
  %5349 = call %nyx_string* @nyx_string_concat(%nyx_string* %5346, %nyx_string* %5348)
  %5350 = getelementptr [5 x i8], [5 x i8]* @.str771, i32 0, i32 0
  %5351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %5350, i64 4)
  %5352 = call %nyx_string* @nyx_string_concat(%nyx_string* %5349, %nyx_string* %5351)
  %5353 = load %nyx_string*, %nyx_string** %4983
  %5354 = call %nyx_string* @nyx_string_concat(%nyx_string* %5352, %nyx_string* %5353)
  %5355 = getelementptr [3 x i8], [3 x i8]* @.str772, i32 0, i32 0
  %5356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %5355, i64 2)
  %5357 = call %nyx_string* @nyx_string_concat(%nyx_string* %5354, %nyx_string* %5356)
  %5358 = getelementptr [70 x i8], [70 x i8]* @.str773, i32 0, i32 0
  %5359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %5358, i64 69)
  %5360 = call %nyx_string* @nyx_string_concat(%nyx_string* %5357, %nyx_string* %5359)
  %5361 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5362 = load %nyx_string*, %nyx_string** %5361
  %5363 = call %nyx_string* @nyx_string_concat(%nyx_string* %5360, %nyx_string* %5362)
  %5364 = getelementptr [32 x i8], [32 x i8]* @.str774, i32 0, i32 0
  %5365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %5364, i64 31)
  %5366 = call %nyx_string* @nyx_string_concat(%nyx_string* %5363, %nyx_string* %5365)
  %5367 = load %nyx_string*, %nyx_string** %5033
  %5368 = call %nyx_string* @nyx_string_concat(%nyx_string* %5366, %nyx_string* %5367)
  %5369 = getelementptr [17 x i8], [17 x i8]* @.str775, i32 0, i32 0
  %5370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %5369, i64 16)
  %5371 = call %nyx_string* @nyx_string_concat(%nyx_string* %5368, %nyx_string* %5370)
  %5372 = getelementptr [71 x i8], [71 x i8]* @.str776, i32 0, i32 0
  %5373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %5372, i64 70)
  %5374 = call %nyx_string* @nyx_string_concat(%nyx_string* %5371, %nyx_string* %5373)
  %5375 = getelementptr [24 x i8], [24 x i8]* @.str777, i32 0, i32 0
  %5376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %5375, i64 23)
  %5377 = call %nyx_string* @nyx_string_concat(%nyx_string* %5374, %nyx_string* %5376)
  %5378 = getelementptr [2 x i8], [2 x i8]* @.str778, i32 0, i32 0
  %5379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %5378, i64 1)
  %5380 = call %nyx_string* @nyx_string_concat(%nyx_string* %5377, %nyx_string* %5379)
  %5381 = getelementptr [76 x i8], [76 x i8]* @.str779, i32 0, i32 0
  %5382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %5381, i64 75)
  %5383 = call %nyx_string* @nyx_string_concat(%nyx_string* %5380, %nyx_string* %5382)
  %5384 = getelementptr [98 x i8], [98 x i8]* @.str780, i32 0, i32 0
  %5385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %5384, i64 97)
  %5386 = call %nyx_string* @nyx_string_concat(%nyx_string* %5383, %nyx_string* %5385)
  %5387 = getelementptr [41 x i8], [41 x i8]* @.str781, i32 0, i32 0
  %5388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %5387, i64 40)
  %5389 = call %nyx_string* @nyx_string_concat(%nyx_string* %5386, %nyx_string* %5388)
  %5390 = getelementptr [64 x i8], [64 x i8]* @.str782, i32 0, i32 0
  %5391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %5390, i64 63)
  %5392 = call %nyx_string* @nyx_string_concat(%nyx_string* %5389, %nyx_string* %5391)
  %5393 = getelementptr [56 x i8], [56 x i8]* @.str783, i32 0, i32 0
  %5394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %5393, i64 55)
  %5395 = call %nyx_string* @nyx_string_concat(%nyx_string* %5392, %nyx_string* %5394)
  %5396 = getelementptr [12 x i8], [12 x i8]* @.str784, i32 0, i32 0
  %5397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %5396, i64 11)
  %5398 = call %nyx_string* @nyx_string_concat(%nyx_string* %5395, %nyx_string* %5397)
  %5399 = getelementptr [34 x i8], [34 x i8]* @.str785, i32 0, i32 0
  %5400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %5399, i64 33)
  %5401 = call %nyx_string* @nyx_string_concat(%nyx_string* %5398, %nyx_string* %5400)
  %5402 = load %nyx_string*, %nyx_string** %4947
  %5403 = call %nyx_string* @nyx_string_concat(%nyx_string* %5401, %nyx_string* %5402)
  %5404 = getelementptr [18 x i8], [18 x i8]* @.str786, i32 0, i32 0
  %5405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %5404, i64 17)
  %5406 = call %nyx_string* @nyx_string_concat(%nyx_string* %5403, %nyx_string* %5405)
  %5407 = getelementptr [49 x i8], [49 x i8]* @.str787, i32 0, i32 0
  %5408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %5407, i64 48)
  %5409 = call %nyx_string* @nyx_string_concat(%nyx_string* %5406, %nyx_string* %5408)
  %5410 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5411 = load %nyx_string*, %nyx_string** %5410
  %5412 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %5411)
  %5413 = call %nyx_string* @nyx_string_concat(%nyx_string* %5409, %nyx_string* %5412)
  %5414 = getelementptr [27 x i8], [27 x i8]* @.str788, i32 0, i32 0
  %5415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %5414, i64 26)
  %5416 = call %nyx_string* @nyx_string_concat(%nyx_string* %5413, %nyx_string* %5415)
  store %nyx_string* %5416, %nyx_string** %5299
  %5417 = load %nyx_string*, %nyx_string** %5299
  %5418 = getelementptr [95 x i8], [95 x i8]* @.str789, i32 0, i32 0
  %5419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %5418, i64 94)
  %5420 = call %nyx_string* @nyx_string_concat(%nyx_string* %5417, %nyx_string* %5419)
  %5421 = getelementptr [24 x i8], [24 x i8]* @.str790, i32 0, i32 0
  %5422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %5421, i64 23)
  %5423 = call %nyx_string* @nyx_string_concat(%nyx_string* %5420, %nyx_string* %5422)
  %5424 = getelementptr [10 x i8], [10 x i8]* @.str791, i32 0, i32 0
  %5425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %5424, i64 9)
  %5426 = call %nyx_string* @nyx_string_concat(%nyx_string* %5423, %nyx_string* %5425)
  %5427 = getelementptr [49 x i8], [49 x i8]* @.str792, i32 0, i32 0
  %5428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %5427, i64 48)
  %5429 = call %nyx_string* @nyx_string_concat(%nyx_string* %5426, %nyx_string* %5428)
  %5430 = getelementptr [207 x i8], [207 x i8]* @.str793, i32 0, i32 0
  %5431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %5430, i64 206)
  %5432 = call %nyx_string* @nyx_string_concat(%nyx_string* %5429, %nyx_string* %5431)
  %5433 = getelementptr [41 x i8], [41 x i8]* @.str794, i32 0, i32 0
  %5434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %5433, i64 40)
  %5435 = call %nyx_string* @nyx_string_concat(%nyx_string* %5432, %nyx_string* %5434)
  %5436 = load %nyx_string*, %nyx_string** %4947
  %5437 = call %nyx_string* @nyx_string_concat(%nyx_string* %5435, %nyx_string* %5436)
  %5438 = getelementptr [58 x i8], [58 x i8]* @.str795, i32 0, i32 0
  %5439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %5438, i64 57)
  %5440 = call %nyx_string* @nyx_string_concat(%nyx_string* %5437, %nyx_string* %5439)
  %5441 = getelementptr [34 x i8], [34 x i8]* @.str796, i32 0, i32 0
  %5442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %5441, i64 33)
  %5443 = call %nyx_string* @nyx_string_concat(%nyx_string* %5440, %nyx_string* %5442)
  %5444 = load %nyx_string*, %nyx_string** %4947
  %5445 = call %nyx_string* @nyx_string_concat(%nyx_string* %5443, %nyx_string* %5444)
  %5446 = getelementptr [18 x i8], [18 x i8]* @.str797, i32 0, i32 0
  %5447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %5446, i64 17)
  %5448 = call %nyx_string* @nyx_string_concat(%nyx_string* %5445, %nyx_string* %5447)
  %5449 = getelementptr [78 x i8], [78 x i8]* @.str798, i32 0, i32 0
  %5450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %5449, i64 77)
  %5451 = call %nyx_string* @nyx_string_concat(%nyx_string* %5448, %nyx_string* %5450)
  %5452 = getelementptr [4 x i8], [4 x i8]* @.str799, i32 0, i32 0
  %5453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %5452, i64 3)
  %5454 = call %nyx_string* @nyx_string_concat(%nyx_string* %5451, %nyx_string* %5453)
  %5455 = getelementptr [32 x i8], [32 x i8]* @.str800, i32 0, i32 0
  %5456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %5455, i64 31)
  %5457 = call %nyx_string* @nyx_string_concat(%nyx_string* %5454, %nyx_string* %5456)
  %5458 = load %nyx_string*, %nyx_string** %4947
  %5459 = call %nyx_string* @nyx_string_concat(%nyx_string* %5457, %nyx_string* %5458)
  %5460 = getelementptr [41 x i8], [41 x i8]* @.str801, i32 0, i32 0
  %5461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %5460, i64 40)
  %5462 = call %nyx_string* @nyx_string_concat(%nyx_string* %5459, %nyx_string* %5461)
  %5463 = load %nyx_string*, %nyx_string** %4947
  %5464 = call %nyx_string* @nyx_string_concat(%nyx_string* %5462, %nyx_string* %5463)
  %5465 = getelementptr [9 x i8], [9 x i8]* @.str802, i32 0, i32 0
  %5466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %5465, i64 8)
  %5467 = call %nyx_string* @nyx_string_concat(%nyx_string* %5464, %nyx_string* %5466)
  store %nyx_string* %5467, %nyx_string** %5299
  br label %merge816
else815:
  br label %merge816
merge816:
  %5468 = getelementptr [16 x i8], [16 x i8]* @.str803, i32 0, i32 0
  %5469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %5468, i64 15)
  %5470 = call i64 @nyx_getpid()
  %5471 = call %nyx_string* @nyx_string_from_int(i64 %5470)
  %5472 = call %nyx_string* @nyx_string_concat(%nyx_string* %5469, %nyx_string* %5471)
  %5473 = getelementptr [4 x i8], [4 x i8]* @.str804, i32 0, i32 0
  %5474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %5473, i64 3)
  %5475 = call %nyx_string* @nyx_string_concat(%nyx_string* %5472, %nyx_string* %5474)
  %5476 = alloca %nyx_string*
  store %nyx_string* %5475, %nyx_string** %5476
  %5477 = load %nyx_string*, %nyx_string** %5476
  %5478 = load %nyx_string*, %nyx_string** %5299
  %5479 = call i8* @nyx_string_to_cstr(%nyx_string* %5477)
  %5480 = call i1 @nyx_write_file_safe(i8* %5479, %nyx_string* %5478)
  %5481 = getelementptr [7 x i8], [7 x i8]* @.str805, i32 0, i32 0
  %5482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %5481, i64 6)
  %5483 = load %nyx_string*, %nyx_string** %5476
  %5484 = call %nyx_string* @nyx_string_concat(%nyx_string* %5482, %nyx_string* %5483)
  %5485 = getelementptr [22 x i8], [22 x i8]* @.str806, i32 0, i32 0
  %5486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %5485, i64 21)
  %5487 = call %nyx_string* @nyx_string_concat(%nyx_string* %5484, %nyx_string* %5486)
  %5488 = load %nyx_string*, %nyx_string** %5476
  %5489 = call %nyx_string* @nyx_string_concat(%nyx_string* %5487, %nyx_string* %5488)
  %5490 = getelementptr [16 x i8], [16 x i8]* @.str807, i32 0, i32 0
  %5491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %5490, i64 15)
  %5492 = call %nyx_string* @nyx_string_concat(%nyx_string* %5489, %nyx_string* %5491)
  %5493 = call i8* @nyx_string_to_cstr(%nyx_string* %5492)
  %5494 = call i64 @nyx_exec_code(i8* %5493)
  %5495 = alloca i64
  store i64 %5494, i64* %5495
  %5496 = load i64, i64* %5495
  %5497 = icmp eq i64 %5496, 0
  ret i1 %5497
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %5498 = getelementptr [10 x i8], [10 x i8]* @.str808, i32 0, i32 0
  %5499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %5498, i64 9)
  %5500 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %5501 = load %nyx_string*, %nyx_string** %5500
  %5502 = call %nyx_string* @nyx_string_concat(%nyx_string* %5499, %nyx_string* %5501)
  %5503 = call i8* @nyx_string_to_cstr(%nyx_string* %5502)
  call void @nyx_print_string(i8* %5503)
  %5504 = getelementptr [10 x i8], [10 x i8]* @.str809, i32 0, i32 0
  %5505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %5504, i64 9)
  %5506 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %5507 = load %nyx_string*, %nyx_string** %5506
  %5508 = call %nyx_string* @nyx_string_concat(%nyx_string* %5505, %nyx_string* %5507)
  %5509 = call i8* @nyx_string_to_cstr(%nyx_string* %5508)
  call void @nyx_print_string(i8* %5509)
  %5510 = getelementptr [10 x i8], [10 x i8]* @.str810, i32 0, i32 0
  %5511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %5510, i64 9)
  %5512 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5513 = load %nyx_string*, %nyx_string** %5512
  %5514 = call %nyx_string* @nyx_string_concat(%nyx_string* %5511, %nyx_string* %5513)
  %5515 = call i8* @nyx_string_to_cstr(%nyx_string* %5514)
  call void @nyx_print_string(i8* %5515)
  %5516 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %5517 = load %nyx_string*, %nyx_string** %5516
  %5518 = getelementptr [1 x i8], [1 x i8]* @.str811, i32 0, i32 0
  %5519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %5518, i64 0)
  %5520 = call i1 @nyx_string_equals(%nyx_string* %5517, %nyx_string* %5519)
  %5521 = xor i1 %5520, true
  br i1 %5521, label %then817, label %else818
then817:
  %5522 = getelementptr [10 x i8], [10 x i8]* @.str812, i32 0, i32 0
  %5523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %5522, i64 9)
  %5524 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %5525 = load %nyx_string*, %nyx_string** %5524
  %5526 = call %nyx_string* @nyx_string_concat(%nyx_string* %5523, %nyx_string* %5525)
  %5527 = call i8* @nyx_string_to_cstr(%nyx_string* %5526)
  call void @nyx_print_string(i8* %5527)
  br label %merge819
else818:
  br label %merge819
merge819:
  %5528 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %5529 = load %nyx_string*, %nyx_string** %5528
  %5530 = getelementptr [1 x i8], [1 x i8]* @.str813, i32 0, i32 0
  %5531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %5530, i64 0)
  %5532 = call i1 @nyx_string_equals(%nyx_string* %5529, %nyx_string* %5531)
  %5533 = xor i1 %5532, true
  br i1 %5533, label %then820, label %else821
then820:
  %5534 = getelementptr [10 x i8], [10 x i8]* @.str814, i32 0, i32 0
  %5535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %5534, i64 9)
  %5536 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %5537 = load %nyx_string*, %nyx_string** %5536
  %5538 = call %nyx_string* @nyx_string_concat(%nyx_string* %5535, %nyx_string* %5537)
  %5539 = call i8* @nyx_string_to_cstr(%nyx_string* %5538)
  call void @nyx_print_string(i8* %5539)
  br label %merge822
else821:
  br label %merge822
merge822:
  %5540 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %5541 = load i1, i1* %5540
  br i1 %5541, label %then823, label %else824
then823:
  %5542 = getelementptr [25 x i8], [25 x i8]* @.str815, i32 0, i32 0
  %5543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %5542, i64 24)
  %5544 = call i8* @nyx_string_to_cstr(%nyx_string* %5543)
  call void @nyx_print_string(i8* %5544)
  br label %merge825
else824:
  %5545 = getelementptr [22 x i8], [22 x i8]* @.str816, i32 0, i32 0
  %5546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %5545, i64 21)
  %5547 = call i8* @nyx_string_to_cstr(%nyx_string* %5546)
  call void @nyx_print_string(i8* %5547)
  br label %merge825
merge825:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %5548 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5549 = getelementptr [2 x i8], [2 x i8]* @.str817, i32 0, i32 0
  %5550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %5549, i64 1)
  %5551 = call i1 @nyx_string_starts_with(%nyx_string* %5548, %nyx_string* %5550)
  br i1 %5551, label %then826, label %else827
then826:
  %5552 = getelementptr [98 x i8], [98 x i8]* @.str818, i32 0, i32 0
  %5553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %5552, i64 97)
  %5554 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5555 = call %nyx_string* @nyx_string_concat(%nyx_string* %5553, %nyx_string* %5554)
  ret %nyx_string* %5555
else827:
  br label %merge828
merge828:
  %5556 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5557 = getelementptr [4 x i8], [4 x i8]* @.str819, i32 0, i32 0
  %5558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %5557, i64 3)
  %5559 = call i1 @nyx_string_ends_with(%nyx_string* %5556, %nyx_string* %5558)
  %5560 = xor i1 %5559, true
  br i1 %5560, label %then829, label %else830
then829:
  %5561 = getelementptr [31 x i8], [31 x i8]* @.str820, i32 0, i32 0
  %5562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %5561, i64 30)
  %5563 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5564 = call %nyx_string* @nyx_string_concat(%nyx_string* %5562, %nyx_string* %5563)
  ret %nyx_string* %5564
else830:
  br label %merge831
merge831:
  %5565 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5566 = call i8* @nyx_string_to_cstr(%nyx_string* %5565)
  %5567 = call i1 @nyx_file_exists(i8* %5566)
  %5568 = xor i1 %5567, true
  br i1 %5568, label %then832, label %else833
then832:
  %5569 = getelementptr [31 x i8], [31 x i8]* @.str821, i32 0, i32 0
  %5570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %5569, i64 30)
  %5571 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5572 = call %nyx_string* @nyx_string_concat(%nyx_string* %5570, %nyx_string* %5571)
  %5573 = getelementptr [48 x i8], [48 x i8]* @.str822, i32 0, i32 0
  %5574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %5573, i64 47)
  %5575 = call %nyx_string* @nyx_string_concat(%nyx_string* %5572, %nyx_string* %5574)
  ret %nyx_string* %5575
else833:
  br label %merge834
merge834:
  %5576 = getelementptr [1 x i8], [1 x i8]* @.str823, i32 0, i32 0
  %5577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %5576, i64 0)
  ret %nyx_string* %5577
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %5578 = load %nyx_string*, %nyx_string** %p.ptr
  %5579 = getelementptr [3 x i8], [3 x i8]* @.str824, i32 0, i32 0
  %5580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %5579, i64 2)
  %5581 = call i1 @nyx_string_starts_with(%nyx_string* %5578, %nyx_string* %5580)
  br i1 %5581, label %then835, label %else836
then835:
  %5582 = load %nyx_string*, %nyx_string** %p.ptr
  %5583 = load %nyx_string*, %nyx_string** %p.ptr
  %5584 = call i64 @nyx_string_byte_length(%nyx_string* %5583)
  %5585 = call %nyx_string* @nyx_string_substring(%nyx_string* %5582, i64 2, i64 %5584)
  ret %nyx_string* %5585
else836:
  br label %merge837
merge837:
  %5586 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %5586
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %5587 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5588 = getelementptr [1 x i8], [1 x i8]* @.str825, i32 0, i32 0
  %5589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %5588, i64 0)
  %5590 = call i1 @nyx_string_equals(%nyx_string* %5587, %nyx_string* %5589)
  br i1 %5590, label %then838, label %else839
then838:
  %5591 = getelementptr [1 x i8], [1 x i8]* @.str826, i32 0, i32 0
  %5592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %5591, i64 0)
  ret %nyx_string* %5592
else839:
  br label %merge840
merge840:
  %5593 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5594 = call %nyx_string* @strip_dot_slash(%nyx_string* %5593)
  %5595 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5596 = load %nyx_string*, %nyx_string** %5595
  %5597 = call %nyx_string* @strip_dot_slash(%nyx_string* %5596)
  %5598 = call i1 @nyx_string_equals(%nyx_string* %5594, %nyx_string* %5597)
  br i1 %5598, label %then841, label %else842
then841:
  %5599 = getelementptr [1 x i8], [1 x i8]* @.str827, i32 0, i32 0
  %5600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %5599, i64 0)
  ret %nyx_string* %5600
else842:
  br label %merge843
merge843:
  %5601 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5602 = alloca %nyx_string*
  store %nyx_string* %5601, %nyx_string** %5602
  %5603 = alloca i64
  store i64 0, i64* %5603
  %5604 = call i8* @llvm.stacksave()
  br label %while_cond844
while_cond844:
  %5605 = load i64, i64* %5603
  %5606 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5607 = call i64 @nyx_string_byte_length(%nyx_string* %5606)
  %5608 = icmp slt i64 %5605, %5607
  br i1 %5608, label %while_body845, label %while_end846
while_body845:
  call void @llvm.stackrestore(i8* %5604)
  %5609 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5610 = load i64, i64* %5603
  %5611 = call i8 @nyx_string_char_at(%nyx_string* %5609, i64 %5610)
  %5612 = zext i8 %5611 to i64
  %5613 = trunc i64 %5612 to i8
  %5614 = alloca i8
  store i8 %5613, i8* %5614
  %5615 = load i8, i8* %5614
  %5616 = getelementptr [1 x i8], [1 x i8]* @.str828, i32 0, i32 0
  %5617 = load i8, i8* %5616
  %5618 = zext i8 %5617 to i64
  %5619 = zext i8 %5615 to i64
  %5620 = icmp eq i64 %5619, %5618
  br i1 %5620, label %then847, label %else848
then847:
  %5621 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5622 = load i64, i64* %5603
  %5623 = add i64 %5622, 1
  %5624 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %5625 = call i64 @nyx_string_byte_length(%nyx_string* %5624)
  %5626 = call %nyx_string* @nyx_string_substring(%nyx_string* %5621, i64 %5623, i64 %5625)
  store %nyx_string* %5626, %nyx_string** %5602
  br label %merge849
else848:
  br label %merge849
merge849:
  %5627 = load i64, i64* %5603
  %5628 = add i64 %5627, 1
  store i64 %5628, i64* %5603
  br label %while_cond844
while_end846:
  %5629 = load %nyx_string*, %nyx_string** %5602
  %5630 = load %nyx_string*, %nyx_string** %5602
  %5631 = call i64 @nyx_string_byte_length(%nyx_string* %5630)
  %5632 = sub i64 %5631, 3
  %5633 = call %nyx_string* @nyx_string_substring(%nyx_string* %5629, i64 0, i64 %5632)
  %5634 = alloca %nyx_string*
  store %nyx_string* %5633, %nyx_string** %5634
  %5635 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %5636 = load %nyx_string*, %nyx_string** %5635
  %5637 = getelementptr [2 x i8], [2 x i8]* @.str829, i32 0, i32 0
  %5638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %5637, i64 1)
  %5639 = call %nyx_string* @nyx_string_concat(%nyx_string* %5636, %nyx_string* %5638)
  %5640 = load %nyx_string*, %nyx_string** %5634
  %5641 = call %nyx_string* @nyx_string_concat(%nyx_string* %5639, %nyx_string* %5640)
  ret %nyx_string* %5641
}

define internal %nyx_string* @toolchain_version(
) {
  %5642 = getelementptr [9 x i8], [9 x i8]* @.str830, i32 0, i32 0
  %5643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %5642, i64 8)
  %5644 = call i8* @nyx_string_to_cstr(%nyx_string* %5643)
  %5645 = call %nyx_string* @nyx_getenv(i8* %5644)
  %5646 = alloca %nyx_string*
  store %nyx_string* %5645, %nyx_string** %5646
  %5647 = load %nyx_string*, %nyx_string** %5646
  %5648 = getelementptr [1 x i8], [1 x i8]* @.str831, i32 0, i32 0
  %5649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %5648, i64 0)
  %5650 = call i1 @nyx_string_equals(%nyx_string* %5647, %nyx_string* %5649)
  br i1 %5650, label %then850, label %else851
then850:
  %5651 = getelementptr [5 x i8], [5 x i8]* @.str832, i32 0, i32 0
  %5652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %5651, i64 4)
  %5653 = call i8* @nyx_string_to_cstr(%nyx_string* %5652)
  %5654 = call %nyx_string* @nyx_getenv(i8* %5653)
  %5655 = alloca %nyx_string*
  store %nyx_string* %5654, %nyx_string** %5655
  %5656 = load %nyx_string*, %nyx_string** %5655
  %5657 = getelementptr [1 x i8], [1 x i8]* @.str833, i32 0, i32 0
  %5658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %5657, i64 0)
  %5659 = call i1 @nyx_string_equals(%nyx_string* %5656, %nyx_string* %5658)
  %5660 = xor i1 %5659, true
  br i1 %5660, label %then853, label %else854
then853:
  %5661 = load %nyx_string*, %nyx_string** %5655
  %5662 = getelementptr [6 x i8], [6 x i8]* @.str834, i32 0, i32 0
  %5663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %5662, i64 5)
  %5664 = call %nyx_string* @nyx_string_concat(%nyx_string* %5661, %nyx_string* %5663)
  store %nyx_string* %5664, %nyx_string** %5646
  br label %merge855
else854:
  br label %merge855
merge855:
  br label %merge852
else851:
  br label %merge852
merge852:
  %5665 = load %nyx_string*, %nyx_string** %5646
  %5666 = getelementptr [1 x i8], [1 x i8]* @.str835, i32 0, i32 0
  %5667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %5666, i64 0)
  %5668 = call i1 @nyx_string_equals(%nyx_string* %5665, %nyx_string* %5667)
  %5669 = xor i1 %5668, true
  br i1 %5669, label %then856, label %else857
then856:
  %5670 = load %nyx_string*, %nyx_string** %5646
  %5671 = getelementptr [9 x i8], [9 x i8]* @.str836, i32 0, i32 0
  %5672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %5671, i64 8)
  %5673 = call %nyx_string* @nyx_string_concat(%nyx_string* %5670, %nyx_string* %5672)
  %5674 = call i8* @nyx_string_to_cstr(%nyx_string* %5673)
  %5675 = call i1 @nyx_file_exists(i8* %5674)
  br i1 %5675, label %then859, label %else860
then859:
  %5676 = load %nyx_string*, %nyx_string** %5646
  %5677 = getelementptr [9 x i8], [9 x i8]* @.str837, i32 0, i32 0
  %5678 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %5677, i64 8)
  %5679 = call %nyx_string* @nyx_string_concat(%nyx_string* %5676, %nyx_string* %5678)
  %5680 = call i8* @nyx_string_to_cstr(%nyx_string* %5679)
  %5681 = call %nyx_string* @nyx_read_file(i8* %5680)
  %5682 = alloca %nyx_string*
  store %nyx_string* %5681, %nyx_string** %5682
  %5683 = load %nyx_string*, %nyx_string** %5682
  %5684 = call %nyx_string* @nyx_string_trim(%nyx_string* %5683)
  ret %nyx_string* %5684
else860:
  br label %merge861
merge861:
  br label %merge858
else857:
  br label %merge858
merge858:
  %5685 = getelementptr [8 x i8], [8 x i8]* @.str838, i32 0, i32 0
  %5686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %5685, i64 7)
  %5687 = call i8* @nyx_string_to_cstr(%nyx_string* %5686)
  %5688 = call i1 @nyx_file_exists(i8* %5687)
  br i1 %5688, label %then862, label %else863
then862:
  %5689 = getelementptr [8 x i8], [8 x i8]* @.str839, i32 0, i32 0
  %5690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %5689, i64 7)
  %5691 = call i8* @nyx_string_to_cstr(%nyx_string* %5690)
  %5692 = call %nyx_string* @nyx_read_file(i8* %5691)
  %5693 = alloca %nyx_string*
  store %nyx_string* %5692, %nyx_string** %5693
  %5694 = load %nyx_string*, %nyx_string** %5693
  %5695 = call %nyx_string* @nyx_string_trim(%nyx_string* %5694)
  ret %nyx_string* %5695
else863:
  br label %merge864
merge864:
  %5696 = getelementptr [7 x i8], [7 x i8]* @.str840, i32 0, i32 0
  %5697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %5696, i64 6)
  ret %nyx_string* %5697
}

define internal %nyx_string* @report_template(
) {
  %5698 = getelementptr [51 x i8], [51 x i8]* @.str841, i32 0, i32 0
  %5699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %5698, i64 50)
  %5700 = alloca %nyx_string*
  store %nyx_string* %5699, %nyx_string** %5700
  %5701 = load %nyx_string*, %nyx_string** %5700
  %5702 = getelementptr [73 x i8], [73 x i8]* @.str842, i32 0, i32 0
  %5703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %5702, i64 72)
  %5704 = call %nyx_string* @nyx_string_concat(%nyx_string* %5701, %nyx_string* %5703)
  store %nyx_string* %5704, %nyx_string** %5700
  %5705 = load %nyx_string*, %nyx_string** %5700
  %5706 = getelementptr [88 x i8], [88 x i8]* @.str843, i32 0, i32 0
  %5707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %5706, i64 87)
  %5708 = call %nyx_string* @nyx_string_concat(%nyx_string* %5705, %nyx_string* %5707)
  store %nyx_string* %5708, %nyx_string** %5700
  %5709 = load %nyx_string*, %nyx_string** %5700
  %5710 = getelementptr [51 x i8], [51 x i8]* @.str844, i32 0, i32 0
  %5711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %5710, i64 50)
  %5712 = call %nyx_string* @nyx_string_concat(%nyx_string* %5709, %nyx_string* %5711)
  store %nyx_string* %5712, %nyx_string** %5700
  %5713 = load %nyx_string*, %nyx_string** %5700
  %5714 = getelementptr [90 x i8], [90 x i8]* @.str845, i32 0, i32 0
  %5715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %5714, i64 89)
  %5716 = call %nyx_string* @nyx_string_concat(%nyx_string* %5713, %nyx_string* %5715)
  store %nyx_string* %5716, %nyx_string** %5700
  %5717 = load %nyx_string*, %nyx_string** %5700
  %5718 = getelementptr [104 x i8], [104 x i8]* @.str846, i32 0, i32 0
  %5719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %5718, i64 103)
  %5720 = call %nyx_string* @nyx_string_concat(%nyx_string* %5717, %nyx_string* %5719)
  store %nyx_string* %5720, %nyx_string** %5700
  %5721 = load %nyx_string*, %nyx_string** %5700
  %5722 = getelementptr [99 x i8], [99 x i8]* @.str847, i32 0, i32 0
  %5723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %5722, i64 98)
  %5724 = call %nyx_string* @nyx_string_concat(%nyx_string* %5721, %nyx_string* %5723)
  store %nyx_string* %5724, %nyx_string** %5700
  %5725 = load %nyx_string*, %nyx_string** %5700
  %5726 = getelementptr [126 x i8], [126 x i8]* @.str848, i32 0, i32 0
  %5727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %5726, i64 125)
  %5728 = call %nyx_string* @nyx_string_concat(%nyx_string* %5725, %nyx_string* %5727)
  store %nyx_string* %5728, %nyx_string** %5700
  %5729 = load %nyx_string*, %nyx_string** %5700
  %5730 = getelementptr [21 x i8], [21 x i8]* @.str849, i32 0, i32 0
  %5731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %5730, i64 20)
  %5732 = call %nyx_string* @nyx_string_concat(%nyx_string* %5729, %nyx_string* %5731)
  %5733 = call %nyx_string* @toolchain_version()
  %5734 = call %nyx_string* @nyx_string_concat(%nyx_string* %5732, %nyx_string* %5733)
  %5735 = getelementptr [25 x i8], [25 x i8]* @.str850, i32 0, i32 0
  %5736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %5735, i64 24)
  %5737 = call %nyx_string* @nyx_string_concat(%nyx_string* %5734, %nyx_string* %5736)
  store %nyx_string* %5737, %nyx_string** %5700
  %5738 = load %nyx_string*, %nyx_string** %5700
  ret %nyx_string* %5738
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %5739 = getelementptr [12 x i8], [12 x i8]* @.str851, i32 0, i32 0
  %5740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %5739, i64 11)
  %5741 = alloca %nyx_string*
  store %nyx_string* %5740, %nyx_string** %5741
  %5742 = load i1, i1* %do_send.ptr
  %5743 = xor i1 %5742, true
  br i1 %5743, label %then865, label %else866
then865:
  %5744 = load %nyx_string*, %nyx_string** %5741
  %5745 = call i8* @nyx_string_to_cstr(%nyx_string* %5744)
  %5746 = call i1 @nyx_file_exists(i8* %5745)
  br i1 %5746, label %then868, label %else869
then868:
  %5747 = load %nyx_string*, %nyx_string** %5741
  %5748 = call i8* @nyx_string_to_cstr(%nyx_string* %5747)
  %5749 = call %nyx_string* @nyx_read_file(i8* %5748)
  %5750 = alloca %nyx_string*
  store %nyx_string* %5749, %nyx_string** %5750
  %5751 = load %nyx_string*, %nyx_string** %5750
  %5752 = call i64 @nyx_string_byte_length(%nyx_string* %5751)
  %5753 = icmp sge i64 %5752, 40
  br i1 %5753, label %then871, label %else872
then871:
  %5754 = getelementptr [80 x i8], [80 x i8]* @.str852, i32 0, i32 0
  %5755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %5754, i64 79)
  %5756 = call i8* @nyx_string_to_cstr(%nyx_string* %5755)
  call void @nyx_print_string(i8* %5756)
  %5757 = getelementptr [62 x i8], [62 x i8]* @.str853, i32 0, i32 0
  %5758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %5757, i64 61)
  %5759 = call i8* @nyx_string_to_cstr(%nyx_string* %5758)
  call void @nyx_print_string(i8* %5759)
  ret i1 1
else872:
  br label %merge873
merge873:
  br label %merge870
else869:
  br label %merge870
merge870:
  %5760 = load %nyx_string*, %nyx_string** %5741
  %5761 = call %nyx_string* @report_template()
  %5762 = call i8* @nyx_string_to_cstr(%nyx_string* %5760)
  %5763 = call i1 @nyx_write_file_safe(i8* %5762, %nyx_string* %5761)
  %5764 = getelementptr [78 x i8], [78 x i8]* @.str854, i32 0, i32 0
  %5765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %5764, i64 77)
  %5766 = call i8* @nyx_string_to_cstr(%nyx_string* %5765)
  call void @nyx_print_string(i8* %5766)
  %5767 = getelementptr [72 x i8], [72 x i8]* @.str855, i32 0, i32 0
  %5768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %5767, i64 71)
  %5769 = call i8* @nyx_string_to_cstr(%nyx_string* %5768)
  call void @nyx_print_string(i8* %5769)
  %5770 = getelementptr [53 x i8], [53 x i8]* @.str856, i32 0, i32 0
  %5771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %5770, i64 52)
  %5772 = call i8* @nyx_string_to_cstr(%nyx_string* %5771)
  call void @nyx_print_string(i8* %5772)
  ret i1 1
else866:
  br label %merge867
merge867:
  %5773 = load %nyx_string*, %nyx_string** %5741
  %5774 = alloca %nyx_string*
  store %nyx_string* %5773, %nyx_string** %5774
  %5775 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %5776 = getelementptr [1 x i8], [1 x i8]* @.str857, i32 0, i32 0
  %5777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %5776, i64 0)
  %5778 = call i1 @nyx_string_equals(%nyx_string* %5775, %nyx_string* %5777)
  %5779 = xor i1 %5778, true
  br i1 %5779, label %then874, label %else875
then874:
  %5780 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %5780, %nyx_string** %5774
  br label %merge876
else875:
  br label %merge876
merge876:
  %5781 = load %nyx_string*, %nyx_string** %5774
  %5782 = call i8* @nyx_string_to_cstr(%nyx_string* %5781)
  %5783 = call i1 @nyx_file_exists(i8* %5782)
  %5784 = xor i1 %5783, true
  br i1 %5784, label %then877, label %else878
then877:
  %5785 = getelementptr [18 x i8], [18 x i8]* @.str858, i32 0, i32 0
  %5786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %5785, i64 17)
  %5787 = load %nyx_string*, %nyx_string** %5774
  %5788 = call %nyx_string* @nyx_string_concat(%nyx_string* %5786, %nyx_string* %5787)
  %5789 = getelementptr [57 x i8], [57 x i8]* @.str859, i32 0, i32 0
  %5790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %5789, i64 56)
  %5791 = call %nyx_string* @nyx_string_concat(%nyx_string* %5788, %nyx_string* %5790)
  %5792 = call i8* @nyx_string_to_cstr(%nyx_string* %5791)
  call void @nyx_print_string(i8* %5792)
  ret i1 0
else878:
  br label %merge879
merge879:
  %5793 = load %nyx_string*, %nyx_string** %5774
  %5794 = call i8* @nyx_string_to_cstr(%nyx_string* %5793)
  %5795 = call %nyx_string* @nyx_read_file(i8* %5794)
  %5796 = alloca %nyx_string*
  store %nyx_string* %5795, %nyx_string** %5796
  %5797 = load %nyx_string*, %nyx_string** %5796
  %5798 = call i64 @nyx_string_byte_length(%nyx_string* %5797)
  %5799 = icmp slt i64 %5798, 40
  br i1 %5799, label %then880, label %else881
then880:
  %5800 = getelementptr [66 x i8], [66 x i8]* @.str860, i32 0, i32 0
  %5801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %5800, i64 65)
  %5802 = call i8* @nyx_string_to_cstr(%nyx_string* %5801)
  call void @nyx_print_string(i8* %5802)
  ret i1 0
else881:
  br label %merge882
merge882:
  %5803 = getelementptr [1 x i8], [1 x i8]* @.str861, i32 0, i32 0
  %5804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %5803, i64 0)
  %5805 = alloca %nyx_string*
  store %nyx_string* %5804, %nyx_string** %5805
  %5806 = getelementptr [5 x i8], [5 x i8]* @.str862, i32 0, i32 0
  %5807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %5806, i64 4)
  %5808 = call i8* @nyx_string_to_cstr(%nyx_string* %5807)
  %5809 = call %nyx_string* @nyx_getenv(i8* %5808)
  %5810 = alloca %nyx_string*
  store %nyx_string* %5809, %nyx_string** %5810
  %5811 = load %nyx_string*, %nyx_string** %5810
  %5812 = getelementptr [1 x i8], [1 x i8]* @.str863, i32 0, i32 0
  %5813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %5812, i64 0)
  %5814 = call i1 @nyx_string_equals(%nyx_string* %5811, %nyx_string* %5813)
  %5815 = xor i1 %5814, true
  br i1 %5815, label %then883, label %else884
then883:
  %5816 = load %nyx_string*, %nyx_string** %5810
  %5817 = getelementptr [15 x i8], [15 x i8]* @.str864, i32 0, i32 0
  %5818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %5817, i64 14)
  %5819 = call %nyx_string* @nyx_string_concat(%nyx_string* %5816, %nyx_string* %5818)
  %5820 = call i8* @nyx_string_to_cstr(%nyx_string* %5819)
  %5821 = call i1 @nyx_file_exists(i8* %5820)
  br i1 %5821, label %then886, label %else887
then886:
  %5822 = load %nyx_string*, %nyx_string** %5810
  %5823 = getelementptr [15 x i8], [15 x i8]* @.str865, i32 0, i32 0
  %5824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %5823, i64 14)
  %5825 = call %nyx_string* @nyx_string_concat(%nyx_string* %5822, %nyx_string* %5824)
  %5826 = call i8* @nyx_string_to_cstr(%nyx_string* %5825)
  %5827 = call %nyx_string* @nyx_read_file(i8* %5826)
  %5828 = alloca %nyx_string*
  store %nyx_string* %5827, %nyx_string** %5828
  %5829 = load %nyx_string*, %nyx_string** %5828
  %5830 = call %nyx_string* @nyx_string_trim(%nyx_string* %5829)
  store %nyx_string* %5830, %nyx_string** %5805
  br label %merge888
else887:
  br label %merge888
merge888:
  br label %merge885
else884:
  br label %merge885
merge885:
  %5831 = load %nyx_string*, %nyx_string** %5805
  %5832 = getelementptr [1 x i8], [1 x i8]* @.str866, i32 0, i32 0
  %5833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %5832, i64 0)
  %5834 = call i1 @nyx_string_equals(%nyx_string* %5831, %nyx_string* %5833)
  br i1 %5834, label %then889, label %else890
then889:
  %5835 = getelementptr [77 x i8], [77 x i8]* @.str867, i32 0, i32 0
  %5836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %5835, i64 76)
  %5837 = call i8* @nyx_string_to_cstr(%nyx_string* %5836)
  call void @nyx_print_string(i8* %5837)
  br label %merge891
else890:
  br label %merge891
merge891:
  %5838 = getelementptr [10 x i8], [10 x i8]* @.str868, i32 0, i32 0
  %5839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %5838, i64 9)
  %5840 = load %nyx_string*, %nyx_string** %5805
  %5841 = call i64 @kv_connect_auth(%nyx_string* %5839, i64 6380, %nyx_string* %5840)
  %5842 = alloca i64
  store i64 %5841, i64* %5842
  %5843 = load i64, i64* %5842
  %5844 = icmp slt i64 %5843, 0
  br i1 %5844, label %then892, label %else893
then892:
  %5845 = getelementptr [54 x i8], [54 x i8]* @.str869, i32 0, i32 0
  %5846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %5845, i64 53)
  %5847 = call i8* @nyx_string_to_cstr(%nyx_string* %5846)
  call void @nyx_print_string(i8* %5847)
  %5848 = getelementptr [22 x i8], [22 x i8]* @.str870, i32 0, i32 0
  %5849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %5848, i64 21)
  %5850 = load %nyx_string*, %nyx_string** %5774
  %5851 = call %nyx_string* @nyx_string_concat(%nyx_string* %5849, %nyx_string* %5850)
  %5852 = getelementptr [28 x i8], [28 x i8]* @.str871, i32 0, i32 0
  %5853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %5852, i64 27)
  %5854 = call %nyx_string* @nyx_string_concat(%nyx_string* %5851, %nyx_string* %5853)
  %5855 = call i8* @nyx_string_to_cstr(%nyx_string* %5854)
  call void @nyx_print_string(i8* %5855)
  %5856 = getelementptr [44 x i8], [44 x i8]* @.str872, i32 0, i32 0
  %5857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %5856, i64 43)
  %5858 = call i8* @nyx_string_to_cstr(%nyx_string* %5857)
  call void @nyx_print_string(i8* %5858)
  ret i1 0
else893:
  br label %merge894
merge894:
  %5859 = getelementptr [5 x i8], [5 x i8]* @.str873, i32 0, i32 0
  %5860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %5859, i64 4)
  %5861 = load %nyx_string*, %nyx_string** %5796
  %5862 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %5861)
  %5863 = call %nyx_string* @nyx_string_concat(%nyx_string* %5860, %nyx_string* %5862)
  %5864 = alloca %nyx_string*
  store %nyx_string* %5863, %nyx_string** %5864
  %5865 = load i64, i64* %5842
  %5866 = getelementptr [11 x i8], [11 x i8]* @.str874, i32 0, i32 0
  %5867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %5866, i64 10)
  %5868 = load %nyx_string*, %nyx_string** %5864
  %5869 = call i64 @kv_rpush(i64 %5865, %nyx_string* %5867, %nyx_string* %5868)
  %5870 = alloca i64
  store i64 %5869, i64* %5870
  %5871 = load i64, i64* %5842
  %5872 = call i64 @kv_close(i64 %5871)
  %5873 = load i64, i64* %5870
  %5874 = icmp sle i64 %5873, 0
  br i1 %5874, label %then895, label %else896
then895:
  %5875 = getelementptr [37 x i8], [37 x i8]* @.str875, i32 0, i32 0
  %5876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %5875, i64 36)
  %5877 = call i8* @nyx_string_to_cstr(%nyx_string* %5876)
  call void @nyx_print_string(i8* %5877)
  ret i1 0
else896:
  br label %merge897
merge897:
  %5878 = getelementptr [55 x i8], [55 x i8]* @.str876, i32 0, i32 0
  %5879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %5878, i64 54)
  %5880 = load i64, i64* %5870
  %5881 = call %nyx_string* @nyx_string_from_int(i64 %5880)
  %5882 = call %nyx_string* @nyx_string_concat(%nyx_string* %5879, %nyx_string* %5881)
  %5883 = getelementptr [15 x i8], [15 x i8]* @.str877, i32 0, i32 0
  %5884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %5883, i64 14)
  %5885 = call %nyx_string* @nyx_string_concat(%nyx_string* %5882, %nyx_string* %5884)
  %5886 = call i8* @nyx_string_to_cstr(%nyx_string* %5885)
  call void @nyx_print_string(i8* %5886)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %5887 = getelementptr [9 x i8], [9 x i8]* @.str878, i32 0, i32 0
  %5888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %5887, i64 8)
  %5889 = call i8* @nyx_string_to_cstr(%nyx_string* %5888)
  %5890 = call %nyx_string* @nyx_getenv(i8* %5889)
  %5891 = alloca %nyx_string*
  store %nyx_string* %5890, %nyx_string** %5891
  %5892 = load %nyx_string*, %nyx_string** %5891
  %5893 = getelementptr [1 x i8], [1 x i8]* @.str879, i32 0, i32 0
  %5894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %5893, i64 0)
  %5895 = call i1 @nyx_string_equals(%nyx_string* %5892, %nyx_string* %5894)
  br i1 %5895, label %then898, label %else899
then898:
  %5896 = getelementptr [5 x i8], [5 x i8]* @.str880, i32 0, i32 0
  %5897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %5896, i64 4)
  %5898 = call i8* @nyx_string_to_cstr(%nyx_string* %5897)
  %5899 = call %nyx_string* @nyx_getenv(i8* %5898)
  %5900 = alloca %nyx_string*
  store %nyx_string* %5899, %nyx_string** %5900
  %5901 = load %nyx_string*, %nyx_string** %5900
  %5902 = getelementptr [6 x i8], [6 x i8]* @.str881, i32 0, i32 0
  %5903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %5902, i64 5)
  %5904 = call %nyx_string* @nyx_string_concat(%nyx_string* %5901, %nyx_string* %5903)
  %5905 = alloca %nyx_string*
  store %nyx_string* %5904, %nyx_string** %5905
  %5906 = alloca i1
  store i1 false, i1* %5906
  %5907 = load %nyx_string*, %nyx_string** %5900
  %5908 = getelementptr [1 x i8], [1 x i8]* @.str882, i32 0, i32 0
  %5909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %5908, i64 0)
  %5910 = call i1 @nyx_string_equals(%nyx_string* %5907, %nyx_string* %5909)
  %5911 = xor i1 %5910, true
  br i1 %5911, label %sc_and_rhs901, label %sc_and_end902
sc_and_rhs901:
  %5912 = load %nyx_string*, %nyx_string** %5905
  %5913 = getelementptr [5 x i8], [5 x i8]* @.str883, i32 0, i32 0
  %5914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %5913, i64 4)
  %5915 = call %nyx_string* @nyx_string_concat(%nyx_string* %5912, %nyx_string* %5914)
  %5916 = call i8* @nyx_string_to_cstr(%nyx_string* %5915)
  %5917 = call i1 @nyx_file_exists(i8* %5916)
  store i1 %5917, i1* %5906
  br label %sc_and_end902
sc_and_end902:
  %5918 = load i1, i1* %5906
  br i1 %5918, label %then903, label %else904
then903:
  %5919 = load %nyx_string*, %nyx_string** %5905
  store %nyx_string* %5919, %nyx_string** %5891
  br label %merge905
else904:
  br label %merge905
merge905:
  br label %merge900
else899:
  br label %merge900
merge900:
  %5920 = load %nyx_string*, %nyx_string** %5891
  %5921 = getelementptr [1 x i8], [1 x i8]* @.str884, i32 0, i32 0
  %5922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %5921, i64 0)
  %5923 = call i1 @nyx_string_equals(%nyx_string* %5920, %nyx_string* %5922)
  br i1 %5923, label %then906, label %else907
then906:
  %5924 = getelementptr [4 x i8], [4 x i8]* @.str885, i32 0, i32 0
  %5925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %5924, i64 3)
  %5926 = call i8* @nyx_string_to_cstr(%nyx_string* %5925)
  %5927 = call i1 @nyx_file_exists(i8* %5926)
  br i1 %5927, label %then909, label %else910
then909:
  %5928 = getelementptr [2 x i8], [2 x i8]* @.str886, i32 0, i32 0
  %5929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %5928, i64 1)
  store %nyx_string* %5929, %nyx_string** %5891
  br label %merge911
else910:
  br label %merge911
merge911:
  br label %merge908
else907:
  br label %merge908
merge908:
  %5930 = load %nyx_string*, %nyx_string** %5891
  %5931 = getelementptr [1 x i8], [1 x i8]* @.str887, i32 0, i32 0
  %5932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %5931, i64 0)
  %5933 = call i1 @nyx_string_equals(%nyx_string* %5930, %nyx_string* %5932)
  br i1 %5933, label %then912, label %else913
then912:
  %5934 = getelementptr [1 x i8], [1 x i8]* @.str888, i32 0, i32 0
  %5935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %5934, i64 0)
  ret %nyx_string* %5935
else913:
  br label %merge914
merge914:
  %5936 = load %nyx_string*, %nyx_string** %5891
  %5937 = getelementptr [5 x i8], [5 x i8]* @.str889, i32 0, i32 0
  %5938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %5937, i64 4)
  %5939 = call %nyx_string* @nyx_string_concat(%nyx_string* %5936, %nyx_string* %5938)
  ret %nyx_string* %5939
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %5940 = alloca i1
  store i1 true, i1* %5940
  %5941 = alloca i1
  store i1 true, i1* %5941
  %5942 = alloca i1
  store i1 true, i1* %5942
  %5943 = load %nyx_string*, %nyx_string** %name.ptr
  %5944 = getelementptr [5 x i8], [5 x i8]* @.str890, i32 0, i32 0
  %5945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %5944, i64 4)
  %5946 = call i1 @nyx_string_equals(%nyx_string* %5943, %nyx_string* %5945)
  br i1 %5946, label %sc_or_end916, label %sc_or_rhs915
sc_or_rhs915:
  %5947 = load %nyx_string*, %nyx_string** %name.ptr
  %5948 = getelementptr [4 x i8], [4 x i8]* @.str891, i32 0, i32 0
  %5949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %5948, i64 3)
  %5950 = call i1 @nyx_string_equals(%nyx_string* %5947, %nyx_string* %5949)
  store i1 %5950, i1* %5942
  br label %sc_or_end916
sc_or_end916:
  %5951 = load i1, i1* %5942
  br i1 %5951, label %sc_or_end918, label %sc_or_rhs917
sc_or_rhs917:
  %5952 = load %nyx_string*, %nyx_string** %name.ptr
  %5953 = getelementptr [10 x i8], [10 x i8]* @.str892, i32 0, i32 0
  %5954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %5953, i64 9)
  %5955 = call i1 @nyx_string_equals(%nyx_string* %5952, %nyx_string* %5954)
  store i1 %5955, i1* %5941
  br label %sc_or_end918
sc_or_end918:
  %5956 = load i1, i1* %5941
  br i1 %5956, label %sc_or_end920, label %sc_or_rhs919
sc_or_rhs919:
  %5957 = load %nyx_string*, %nyx_string** %name.ptr
  %5958 = getelementptr [7 x i8], [7 x i8]* @.str893, i32 0, i32 0
  %5959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %5958, i64 6)
  %5960 = call i1 @nyx_string_equals(%nyx_string* %5957, %nyx_string* %5959)
  store i1 %5960, i1* %5940
  br label %sc_or_end920
sc_or_end920:
  %5961 = load i1, i1* %5940
  br i1 %5961, label %then921, label %else922
then921:
  %5962 = getelementptr [11 x i8], [11 x i8]* @.str894, i32 0, i32 0
  %5963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %5962, i64 10)
  ret %nyx_string* %5963
else922:
  br label %merge923
merge923:
  %5964 = alloca i1
  store i1 true, i1* %5964
  %5965 = alloca i1
  store i1 true, i1* %5965
  %5966 = load %nyx_string*, %nyx_string** %name.ptr
  %5967 = getelementptr [7 x i8], [7 x i8]* @.str895, i32 0, i32 0
  %5968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %5967, i64 6)
  %5969 = call i1 @nyx_string_equals(%nyx_string* %5966, %nyx_string* %5968)
  br i1 %5969, label %sc_or_end925, label %sc_or_rhs924
sc_or_rhs924:
  %5970 = load %nyx_string*, %nyx_string** %name.ptr
  %5971 = getelementptr [3 x i8], [3 x i8]* @.str896, i32 0, i32 0
  %5972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %5971, i64 2)
  %5973 = call i1 @nyx_string_equals(%nyx_string* %5970, %nyx_string* %5972)
  store i1 %5973, i1* %5965
  br label %sc_or_end925
sc_or_end925:
  %5974 = load i1, i1* %5965
  br i1 %5974, label %sc_or_end927, label %sc_or_rhs926
sc_or_rhs926:
  %5975 = load %nyx_string*, %nyx_string** %name.ptr
  %5976 = getelementptr [9 x i8], [9 x i8]* @.str897, i32 0, i32 0
  %5977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %5976, i64 8)
  %5978 = call i1 @nyx_string_equals(%nyx_string* %5975, %nyx_string* %5977)
  store i1 %5978, i1* %5964
  br label %sc_or_end927
sc_or_end927:
  %5979 = load i1, i1* %5964
  br i1 %5979, label %then928, label %else929
then928:
  %5980 = getelementptr [20 x i8], [20 x i8]* @.str898, i32 0, i32 0
  %5981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %5980, i64 19)
  ret %nyx_string* %5981
else929:
  br label %merge930
merge930:
  %5982 = alloca i1
  store i1 true, i1* %5982
  %5983 = alloca i1
  store i1 true, i1* %5983
  %5984 = alloca i1
  store i1 true, i1* %5984
  %5985 = alloca i1
  store i1 true, i1* %5985
  %5986 = alloca i1
  store i1 true, i1* %5986
  %5987 = load %nyx_string*, %nyx_string** %name.ptr
  %5988 = getelementptr [5 x i8], [5 x i8]* @.str899, i32 0, i32 0
  %5989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %5988, i64 4)
  %5990 = call i1 @nyx_string_equals(%nyx_string* %5987, %nyx_string* %5989)
  br i1 %5990, label %sc_or_end932, label %sc_or_rhs931
sc_or_rhs931:
  %5991 = load %nyx_string*, %nyx_string** %name.ptr
  %5992 = getelementptr [8 x i8], [8 x i8]* @.str900, i32 0, i32 0
  %5993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %5992, i64 7)
  %5994 = call i1 @nyx_string_equals(%nyx_string* %5991, %nyx_string* %5993)
  store i1 %5994, i1* %5986
  br label %sc_or_end932
sc_or_end932:
  %5995 = load i1, i1* %5986
  br i1 %5995, label %sc_or_end934, label %sc_or_rhs933
sc_or_rhs933:
  %5996 = load %nyx_string*, %nyx_string** %name.ptr
  %5997 = getelementptr [5 x i8], [5 x i8]* @.str901, i32 0, i32 0
  %5998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %5997, i64 4)
  %5999 = call i1 @nyx_string_equals(%nyx_string* %5996, %nyx_string* %5998)
  store i1 %5999, i1* %5985
  br label %sc_or_end934
sc_or_end934:
  %6000 = load i1, i1* %5985
  br i1 %6000, label %sc_or_end936, label %sc_or_rhs935
sc_or_rhs935:
  %6001 = load %nyx_string*, %nyx_string** %name.ptr
  %6002 = getelementptr [4 x i8], [4 x i8]* @.str902, i32 0, i32 0
  %6003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %6002, i64 3)
  %6004 = call i1 @nyx_string_equals(%nyx_string* %6001, %nyx_string* %6003)
  store i1 %6004, i1* %5984
  br label %sc_or_end936
sc_or_end936:
  %6005 = load i1, i1* %5984
  br i1 %6005, label %sc_or_end938, label %sc_or_rhs937
sc_or_rhs937:
  %6006 = load %nyx_string*, %nyx_string** %name.ptr
  %6007 = getelementptr [7 x i8], [7 x i8]* @.str903, i32 0, i32 0
  %6008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %6007, i64 6)
  %6009 = call i1 @nyx_string_equals(%nyx_string* %6006, %nyx_string* %6008)
  store i1 %6009, i1* %5983
  br label %sc_or_end938
sc_or_end938:
  %6010 = load i1, i1* %5983
  br i1 %6010, label %sc_or_end940, label %sc_or_rhs939
sc_or_rhs939:
  %6011 = load %nyx_string*, %nyx_string** %name.ptr
  %6012 = getelementptr [9 x i8], [9 x i8]* @.str904, i32 0, i32 0
  %6013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %6012, i64 8)
  %6014 = call i1 @nyx_string_equals(%nyx_string* %6011, %nyx_string* %6013)
  store i1 %6014, i1* %5982
  br label %sc_or_end940
sc_or_end940:
  %6015 = load i1, i1* %5982
  br i1 %6015, label %then941, label %else942
then941:
  %6016 = getelementptr [23 x i8], [23 x i8]* @.str905, i32 0, i32 0
  %6017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %6016, i64 22)
  ret %nyx_string* %6017
else942:
  br label %merge943
merge943:
  %6018 = alloca i1
  store i1 true, i1* %6018
  %6019 = alloca i1
  store i1 true, i1* %6019
  %6020 = alloca i1
  store i1 true, i1* %6020
  %6021 = load %nyx_string*, %nyx_string** %name.ptr
  %6022 = getelementptr [3 x i8], [3 x i8]* @.str906, i32 0, i32 0
  %6023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %6022, i64 2)
  %6024 = call i1 @nyx_string_equals(%nyx_string* %6021, %nyx_string* %6023)
  br i1 %6024, label %sc_or_end945, label %sc_or_rhs944
sc_or_rhs944:
  %6025 = load %nyx_string*, %nyx_string** %name.ptr
  %6026 = getelementptr [5 x i8], [5 x i8]* @.str907, i32 0, i32 0
  %6027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %6026, i64 4)
  %6028 = call i1 @nyx_string_equals(%nyx_string* %6025, %nyx_string* %6027)
  store i1 %6028, i1* %6020
  br label %sc_or_end945
sc_or_end945:
  %6029 = load i1, i1* %6020
  br i1 %6029, label %sc_or_end947, label %sc_or_rhs946
sc_or_rhs946:
  %6030 = load %nyx_string*, %nyx_string** %name.ptr
  %6031 = getelementptr [3 x i8], [3 x i8]* @.str908, i32 0, i32 0
  %6032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %6031, i64 2)
  %6033 = call i1 @nyx_string_equals(%nyx_string* %6030, %nyx_string* %6032)
  store i1 %6033, i1* %6019
  br label %sc_or_end947
sc_or_end947:
  %6034 = load i1, i1* %6019
  br i1 %6034, label %sc_or_end949, label %sc_or_rhs948
sc_or_rhs948:
  %6035 = load %nyx_string*, %nyx_string** %name.ptr
  %6036 = getelementptr [5 x i8], [5 x i8]* @.str909, i32 0, i32 0
  %6037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %6036, i64 4)
  %6038 = call i1 @nyx_string_equals(%nyx_string* %6035, %nyx_string* %6037)
  store i1 %6038, i1* %6018
  br label %sc_or_end949
sc_or_end949:
  %6039 = load i1, i1* %6018
  br i1 %6039, label %then950, label %else951
then950:
  %6040 = getelementptr [15 x i8], [15 x i8]* @.str910, i32 0, i32 0
  %6041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %6040, i64 14)
  ret %nyx_string* %6041
else951:
  br label %merge952
merge952:
  %6042 = alloca i1
  store i1 true, i1* %6042
  %6043 = alloca i1
  store i1 true, i1* %6043
  %6044 = alloca i1
  store i1 true, i1* %6044
  %6045 = alloca i1
  store i1 true, i1* %6045
  %6046 = alloca i1
  store i1 true, i1* %6046
  %6047 = alloca i1
  store i1 true, i1* %6047
  %6048 = load %nyx_string*, %nyx_string** %name.ptr
  %6049 = getelementptr [4 x i8], [4 x i8]* @.str911, i32 0, i32 0
  %6050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %6049, i64 3)
  %6051 = call i1 @nyx_string_equals(%nyx_string* %6048, %nyx_string* %6050)
  br i1 %6051, label %sc_or_end954, label %sc_or_rhs953
sc_or_rhs953:
  %6052 = load %nyx_string*, %nyx_string** %name.ptr
  %6053 = getelementptr [4 x i8], [4 x i8]* @.str912, i32 0, i32 0
  %6054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %6053, i64 3)
  %6055 = call i1 @nyx_string_equals(%nyx_string* %6052, %nyx_string* %6054)
  store i1 %6055, i1* %6047
  br label %sc_or_end954
sc_or_end954:
  %6056 = load i1, i1* %6047
  br i1 %6056, label %sc_or_end956, label %sc_or_rhs955
sc_or_rhs955:
  %6057 = load %nyx_string*, %nyx_string** %name.ptr
  %6058 = getelementptr [4 x i8], [4 x i8]* @.str913, i32 0, i32 0
  %6059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %6058, i64 3)
  %6060 = call i1 @nyx_string_equals(%nyx_string* %6057, %nyx_string* %6059)
  store i1 %6060, i1* %6046
  br label %sc_or_end956
sc_or_end956:
  %6061 = load i1, i1* %6046
  br i1 %6061, label %sc_or_end958, label %sc_or_rhs957
sc_or_rhs957:
  %6062 = load %nyx_string*, %nyx_string** %name.ptr
  %6063 = getelementptr [6 x i8], [6 x i8]* @.str914, i32 0, i32 0
  %6064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %6063, i64 5)
  %6065 = call i1 @nyx_string_equals(%nyx_string* %6062, %nyx_string* %6064)
  store i1 %6065, i1* %6045
  br label %sc_or_end958
sc_or_end958:
  %6066 = load i1, i1* %6045
  br i1 %6066, label %sc_or_end960, label %sc_or_rhs959
sc_or_rhs959:
  %6067 = load %nyx_string*, %nyx_string** %name.ptr
  %6068 = getelementptr [4 x i8], [4 x i8]* @.str915, i32 0, i32 0
  %6069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %6068, i64 3)
  %6070 = call i1 @nyx_string_equals(%nyx_string* %6067, %nyx_string* %6069)
  store i1 %6070, i1* %6044
  br label %sc_or_end960
sc_or_end960:
  %6071 = load i1, i1* %6044
  br i1 %6071, label %sc_or_end962, label %sc_or_rhs961
sc_or_rhs961:
  %6072 = load %nyx_string*, %nyx_string** %name.ptr
  %6073 = getelementptr [4 x i8], [4 x i8]* @.str916, i32 0, i32 0
  %6074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %6073, i64 3)
  %6075 = call i1 @nyx_string_equals(%nyx_string* %6072, %nyx_string* %6074)
  store i1 %6075, i1* %6043
  br label %sc_or_end962
sc_or_end962:
  %6076 = load i1, i1* %6043
  br i1 %6076, label %sc_or_end964, label %sc_or_rhs963
sc_or_rhs963:
  %6077 = load %nyx_string*, %nyx_string** %name.ptr
  %6078 = getelementptr [5 x i8], [5 x i8]* @.str917, i32 0, i32 0
  %6079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %6078, i64 4)
  %6080 = call i1 @nyx_string_equals(%nyx_string* %6077, %nyx_string* %6079)
  store i1 %6080, i1* %6042
  br label %sc_or_end964
sc_or_end964:
  %6081 = load i1, i1* %6042
  br i1 %6081, label %then965, label %else966
then965:
  %6082 = getelementptr [4 x i8], [4 x i8]* @.str918, i32 0, i32 0
  %6083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %6082, i64 3)
  ret %nyx_string* %6083
else966:
  br label %merge967
merge967:
  %6084 = alloca i1
  store i1 true, i1* %6084
  %6085 = alloca i1
  store i1 true, i1* %6085
  %6086 = alloca i1
  store i1 true, i1* %6086
  %6087 = alloca i1
  store i1 true, i1* %6087
  %6088 = load %nyx_string*, %nyx_string** %name.ptr
  %6089 = getelementptr [7 x i8], [7 x i8]* @.str919, i32 0, i32 0
  %6090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %6089, i64 6)
  %6091 = call i1 @nyx_string_equals(%nyx_string* %6088, %nyx_string* %6090)
  br i1 %6091, label %sc_or_end969, label %sc_or_rhs968
sc_or_rhs968:
  %6092 = load %nyx_string*, %nyx_string** %name.ptr
  %6093 = getelementptr [8 x i8], [8 x i8]* @.str920, i32 0, i32 0
  %6094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %6093, i64 7)
  %6095 = call i1 @nyx_string_equals(%nyx_string* %6092, %nyx_string* %6094)
  store i1 %6095, i1* %6087
  br label %sc_or_end969
sc_or_end969:
  %6096 = load i1, i1* %6087
  br i1 %6096, label %sc_or_end971, label %sc_or_rhs970
sc_or_rhs970:
  %6097 = load %nyx_string*, %nyx_string** %name.ptr
  %6098 = getelementptr [10 x i8], [10 x i8]* @.str921, i32 0, i32 0
  %6099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %6098, i64 9)
  %6100 = call i1 @nyx_string_equals(%nyx_string* %6097, %nyx_string* %6099)
  store i1 %6100, i1* %6086
  br label %sc_or_end971
sc_or_end971:
  %6101 = load i1, i1* %6086
  br i1 %6101, label %sc_or_end973, label %sc_or_rhs972
sc_or_rhs972:
  %6102 = load %nyx_string*, %nyx_string** %name.ptr
  %6103 = getelementptr [5 x i8], [5 x i8]* @.str922, i32 0, i32 0
  %6104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %6103, i64 4)
  %6105 = call i1 @nyx_string_equals(%nyx_string* %6102, %nyx_string* %6104)
  store i1 %6105, i1* %6085
  br label %sc_or_end973
sc_or_end973:
  %6106 = load i1, i1* %6085
  br i1 %6106, label %sc_or_end975, label %sc_or_rhs974
sc_or_rhs974:
  %6107 = load %nyx_string*, %nyx_string** %name.ptr
  %6108 = getelementptr [6 x i8], [6 x i8]* @.str923, i32 0, i32 0
  %6109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %6108, i64 5)
  %6110 = call i1 @nyx_string_equals(%nyx_string* %6107, %nyx_string* %6109)
  store i1 %6110, i1* %6084
  br label %sc_or_end975
sc_or_end975:
  %6111 = load i1, i1* %6084
  br i1 %6111, label %then976, label %else977
then976:
  %6112 = getelementptr [13 x i8], [13 x i8]* @.str924, i32 0, i32 0
  %6113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %6112, i64 12)
  ret %nyx_string* %6113
else977:
  br label %merge978
merge978:
  %6114 = alloca i1
  store i1 true, i1* %6114
  %6115 = alloca i1
  store i1 true, i1* %6115
  %6116 = alloca i1
  store i1 true, i1* %6116
  %6117 = alloca i1
  store i1 true, i1* %6117
  %6118 = load %nyx_string*, %nyx_string** %name.ptr
  %6119 = getelementptr [7 x i8], [7 x i8]* @.str925, i32 0, i32 0
  %6120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %6119, i64 6)
  %6121 = call i1 @nyx_string_equals(%nyx_string* %6118, %nyx_string* %6120)
  br i1 %6121, label %sc_or_end980, label %sc_or_rhs979
sc_or_rhs979:
  %6122 = load %nyx_string*, %nyx_string** %name.ptr
  %6123 = getelementptr [4 x i8], [4 x i8]* @.str926, i32 0, i32 0
  %6124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %6123, i64 3)
  %6125 = call i1 @nyx_string_equals(%nyx_string* %6122, %nyx_string* %6124)
  store i1 %6125, i1* %6117
  br label %sc_or_end980
sc_or_end980:
  %6126 = load i1, i1* %6117
  br i1 %6126, label %sc_or_end982, label %sc_or_rhs981
sc_or_rhs981:
  %6127 = load %nyx_string*, %nyx_string** %name.ptr
  %6128 = getelementptr [5 x i8], [5 x i8]* @.str927, i32 0, i32 0
  %6129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %6128, i64 4)
  %6130 = call i1 @nyx_string_equals(%nyx_string* %6127, %nyx_string* %6129)
  store i1 %6130, i1* %6116
  br label %sc_or_end982
sc_or_end982:
  %6131 = load i1, i1* %6116
  br i1 %6131, label %sc_or_end984, label %sc_or_rhs983
sc_or_rhs983:
  %6132 = load %nyx_string*, %nyx_string** %name.ptr
  %6133 = getelementptr [7 x i8], [7 x i8]* @.str928, i32 0, i32 0
  %6134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %6133, i64 6)
  %6135 = call i1 @nyx_string_equals(%nyx_string* %6132, %nyx_string* %6134)
  store i1 %6135, i1* %6115
  br label %sc_or_end984
sc_or_end984:
  %6136 = load i1, i1* %6115
  br i1 %6136, label %sc_or_end986, label %sc_or_rhs985
sc_or_rhs985:
  %6137 = load %nyx_string*, %nyx_string** %name.ptr
  %6138 = getelementptr [5 x i8], [5 x i8]* @.str929, i32 0, i32 0
  %6139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %6138, i64 4)
  %6140 = call i1 @nyx_string_equals(%nyx_string* %6137, %nyx_string* %6139)
  store i1 %6140, i1* %6114
  br label %sc_or_end986
sc_or_end986:
  %6141 = load i1, i1* %6114
  br i1 %6141, label %then987, label %else988
then987:
  %6142 = getelementptr [19 x i8], [19 x i8]* @.str930, i32 0, i32 0
  %6143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %6142, i64 18)
  ret %nyx_string* %6143
else988:
  br label %merge989
merge989:
  %6144 = alloca i1
  store i1 true, i1* %6144
  %6145 = load %nyx_string*, %nyx_string** %name.ptr
  %6146 = getelementptr [5 x i8], [5 x i8]* @.str931, i32 0, i32 0
  %6147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %6146, i64 4)
  %6148 = call i1 @nyx_string_equals(%nyx_string* %6145, %nyx_string* %6147)
  br i1 %6148, label %sc_or_end991, label %sc_or_rhs990
sc_or_rhs990:
  %6149 = load %nyx_string*, %nyx_string** %name.ptr
  %6150 = getelementptr [9 x i8], [9 x i8]* @.str932, i32 0, i32 0
  %6151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %6150, i64 8)
  %6152 = call i1 @nyx_string_equals(%nyx_string* %6149, %nyx_string* %6151)
  store i1 %6152, i1* %6144
  br label %sc_or_end991
sc_or_end991:
  %6153 = load i1, i1* %6144
  br i1 %6153, label %then992, label %else993
then992:
  %6154 = getelementptr [7 x i8], [7 x i8]* @.str933, i32 0, i32 0
  %6155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %6154, i64 6)
  ret %nyx_string* %6155
else993:
  br label %merge994
merge994:
  %6156 = alloca i1
  store i1 true, i1* %6156
  %6157 = alloca i1
  store i1 true, i1* %6157
  %6158 = alloca i1
  store i1 true, i1* %6158
  %6159 = load %nyx_string*, %nyx_string** %name.ptr
  %6160 = getelementptr [7 x i8], [7 x i8]* @.str934, i32 0, i32 0
  %6161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %6160, i64 6)
  %6162 = call i1 @nyx_string_equals(%nyx_string* %6159, %nyx_string* %6161)
  br i1 %6162, label %sc_or_end996, label %sc_or_rhs995
sc_or_rhs995:
  %6163 = load %nyx_string*, %nyx_string** %name.ptr
  %6164 = getelementptr [8 x i8], [8 x i8]* @.str935, i32 0, i32 0
  %6165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %6164, i64 7)
  %6166 = call i1 @nyx_string_equals(%nyx_string* %6163, %nyx_string* %6165)
  store i1 %6166, i1* %6158
  br label %sc_or_end996
sc_or_end996:
  %6167 = load i1, i1* %6158
  br i1 %6167, label %sc_or_end998, label %sc_or_rhs997
sc_or_rhs997:
  %6168 = load %nyx_string*, %nyx_string** %name.ptr
  %6169 = getelementptr [14 x i8], [14 x i8]* @.str936, i32 0, i32 0
  %6170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %6169, i64 13)
  %6171 = call i1 @nyx_string_equals(%nyx_string* %6168, %nyx_string* %6170)
  store i1 %6171, i1* %6157
  br label %sc_or_end998
sc_or_end998:
  %6172 = load i1, i1* %6157
  br i1 %6172, label %sc_or_end1000, label %sc_or_rhs999
sc_or_rhs999:
  %6173 = load %nyx_string*, %nyx_string** %name.ptr
  %6174 = getelementptr [6 x i8], [6 x i8]* @.str937, i32 0, i32 0
  %6175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %6174, i64 5)
  %6176 = call i1 @nyx_string_equals(%nyx_string* %6173, %nyx_string* %6175)
  store i1 %6176, i1* %6156
  br label %sc_or_end1000
sc_or_end1000:
  %6177 = load i1, i1* %6156
  br i1 %6177, label %then1001, label %else1002
then1001:
  %6178 = getelementptr [16 x i8], [16 x i8]* @.str938, i32 0, i32 0
  %6179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %6178, i64 15)
  ret %nyx_string* %6179
else1002:
  br label %merge1003
merge1003:
  %6180 = alloca i1
  store i1 true, i1* %6180
  %6181 = alloca i1
  store i1 true, i1* %6181
  %6182 = alloca i1
  store i1 true, i1* %6182
  %6183 = alloca i1
  store i1 true, i1* %6183
  %6184 = alloca i1
  store i1 true, i1* %6184
  %6185 = alloca i1
  store i1 true, i1* %6185
  %6186 = alloca i1
  store i1 true, i1* %6186
  %6187 = load %nyx_string*, %nyx_string** %name.ptr
  %6188 = getelementptr [4 x i8], [4 x i8]* @.str939, i32 0, i32 0
  %6189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %6188, i64 3)
  %6190 = call i1 @nyx_string_equals(%nyx_string* %6187, %nyx_string* %6189)
  br i1 %6190, label %sc_or_end1005, label %sc_or_rhs1004
sc_or_rhs1004:
  %6191 = load %nyx_string*, %nyx_string** %name.ptr
  %6192 = getelementptr [6 x i8], [6 x i8]* @.str940, i32 0, i32 0
  %6193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %6192, i64 5)
  %6194 = call i1 @nyx_string_equals(%nyx_string* %6191, %nyx_string* %6193)
  store i1 %6194, i1* %6186
  br label %sc_or_end1005
sc_or_end1005:
  %6195 = load i1, i1* %6186
  br i1 %6195, label %sc_or_end1007, label %sc_or_rhs1006
sc_or_rhs1006:
  %6196 = load %nyx_string*, %nyx_string** %name.ptr
  %6197 = getelementptr [11 x i8], [11 x i8]* @.str941, i32 0, i32 0
  %6198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %6197, i64 10)
  %6199 = call i1 @nyx_string_equals(%nyx_string* %6196, %nyx_string* %6198)
  store i1 %6199, i1* %6185
  br label %sc_or_end1007
sc_or_end1007:
  %6200 = load i1, i1* %6185
  br i1 %6200, label %sc_or_end1009, label %sc_or_rhs1008
sc_or_rhs1008:
  %6201 = load %nyx_string*, %nyx_string** %name.ptr
  %6202 = getelementptr [6 x i8], [6 x i8]* @.str942, i32 0, i32 0
  %6203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %6202, i64 5)
  %6204 = call i1 @nyx_string_equals(%nyx_string* %6201, %nyx_string* %6203)
  store i1 %6204, i1* %6184
  br label %sc_or_end1009
sc_or_end1009:
  %6205 = load i1, i1* %6184
  br i1 %6205, label %sc_or_end1011, label %sc_or_rhs1010
sc_or_rhs1010:
  %6206 = load %nyx_string*, %nyx_string** %name.ptr
  %6207 = getelementptr [9 x i8], [9 x i8]* @.str943, i32 0, i32 0
  %6208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %6207, i64 8)
  %6209 = call i1 @nyx_string_equals(%nyx_string* %6206, %nyx_string* %6208)
  store i1 %6209, i1* %6183
  br label %sc_or_end1011
sc_or_end1011:
  %6210 = load i1, i1* %6183
  br i1 %6210, label %sc_or_end1013, label %sc_or_rhs1012
sc_or_rhs1012:
  %6211 = load %nyx_string*, %nyx_string** %name.ptr
  %6212 = getelementptr [14 x i8], [14 x i8]* @.str944, i32 0, i32 0
  %6213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %6212, i64 13)
  %6214 = call i1 @nyx_string_equals(%nyx_string* %6211, %nyx_string* %6213)
  store i1 %6214, i1* %6182
  br label %sc_or_end1013
sc_or_end1013:
  %6215 = load i1, i1* %6182
  br i1 %6215, label %sc_or_end1015, label %sc_or_rhs1014
sc_or_rhs1014:
  %6216 = load %nyx_string*, %nyx_string** %name.ptr
  %6217 = getelementptr [6 x i8], [6 x i8]* @.str945, i32 0, i32 0
  %6218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %6217, i64 5)
  %6219 = call i1 @nyx_string_equals(%nyx_string* %6216, %nyx_string* %6218)
  store i1 %6219, i1* %6181
  br label %sc_or_end1015
sc_or_end1015:
  %6220 = load i1, i1* %6181
  br i1 %6220, label %sc_or_end1017, label %sc_or_rhs1016
sc_or_rhs1016:
  %6221 = load %nyx_string*, %nyx_string** %name.ptr
  %6222 = getelementptr [7 x i8], [7 x i8]* @.str946, i32 0, i32 0
  %6223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %6222, i64 6)
  %6224 = call i1 @nyx_string_equals(%nyx_string* %6221, %nyx_string* %6223)
  store i1 %6224, i1* %6180
  br label %sc_or_end1017
sc_or_end1017:
  %6225 = load i1, i1* %6180
  br i1 %6225, label %then1018, label %else1019
then1018:
  %6226 = getelementptr [26 x i8], [26 x i8]* @.str947, i32 0, i32 0
  %6227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %6226, i64 25)
  ret %nyx_string* %6227
else1019:
  br label %merge1020
merge1020:
  %6228 = alloca i1
  store i1 true, i1* %6228
  %6229 = alloca i1
  store i1 true, i1* %6229
  %6230 = alloca i1
  store i1 true, i1* %6230
  %6231 = load %nyx_string*, %nyx_string** %name.ptr
  %6232 = getelementptr [6 x i8], [6 x i8]* @.str948, i32 0, i32 0
  %6233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %6232, i64 5)
  %6234 = call i1 @nyx_string_equals(%nyx_string* %6231, %nyx_string* %6233)
  br i1 %6234, label %sc_or_end1022, label %sc_or_rhs1021
sc_or_rhs1021:
  %6235 = load %nyx_string*, %nyx_string** %name.ptr
  %6236 = getelementptr [4 x i8], [4 x i8]* @.str949, i32 0, i32 0
  %6237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %6236, i64 3)
  %6238 = call i1 @nyx_string_equals(%nyx_string* %6235, %nyx_string* %6237)
  store i1 %6238, i1* %6230
  br label %sc_or_end1022
sc_or_end1022:
  %6239 = load i1, i1* %6230
  br i1 %6239, label %sc_or_end1024, label %sc_or_rhs1023
sc_or_rhs1023:
  %6240 = load %nyx_string*, %nyx_string** %name.ptr
  %6241 = getelementptr [3 x i8], [3 x i8]* @.str950, i32 0, i32 0
  %6242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %6241, i64 2)
  %6243 = call i1 @nyx_string_equals(%nyx_string* %6240, %nyx_string* %6242)
  store i1 %6243, i1* %6229
  br label %sc_or_end1024
sc_or_end1024:
  %6244 = load i1, i1* %6229
  br i1 %6244, label %sc_or_end1026, label %sc_or_rhs1025
sc_or_rhs1025:
  %6245 = load %nyx_string*, %nyx_string** %name.ptr
  %6246 = getelementptr [10 x i8], [10 x i8]* @.str951, i32 0, i32 0
  %6247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %6246, i64 9)
  %6248 = call i1 @nyx_string_equals(%nyx_string* %6245, %nyx_string* %6247)
  store i1 %6248, i1* %6228
  br label %sc_or_end1026
sc_or_end1026:
  %6249 = load i1, i1* %6228
  br i1 %6249, label %then1027, label %else1028
then1027:
  %6250 = getelementptr [8 x i8], [8 x i8]* @.str952, i32 0, i32 0
  %6251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %6250, i64 7)
  ret %nyx_string* %6251
else1028:
  br label %merge1029
merge1029:
  %6252 = alloca i1
  store i1 true, i1* %6252
  %6253 = alloca i1
  store i1 true, i1* %6253
  %6254 = alloca i1
  store i1 true, i1* %6254
  %6255 = alloca i1
  store i1 true, i1* %6255
  %6256 = alloca i1
  store i1 true, i1* %6256
  %6257 = alloca i1
  store i1 true, i1* %6257
  %6258 = load %nyx_string*, %nyx_string** %name.ptr
  %6259 = getelementptr [5 x i8], [5 x i8]* @.str953, i32 0, i32 0
  %6260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %6259, i64 4)
  %6261 = call i1 @nyx_string_equals(%nyx_string* %6258, %nyx_string* %6260)
  br i1 %6261, label %sc_or_end1031, label %sc_or_rhs1030
sc_or_rhs1030:
  %6262 = load %nyx_string*, %nyx_string** %name.ptr
  %6263 = getelementptr [4 x i8], [4 x i8]* @.str954, i32 0, i32 0
  %6264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %6263, i64 3)
  %6265 = call i1 @nyx_string_equals(%nyx_string* %6262, %nyx_string* %6264)
  store i1 %6265, i1* %6257
  br label %sc_or_end1031
sc_or_end1031:
  %6266 = load i1, i1* %6257
  br i1 %6266, label %sc_or_end1033, label %sc_or_rhs1032
sc_or_rhs1032:
  %6267 = load %nyx_string*, %nyx_string** %name.ptr
  %6268 = getelementptr [4 x i8], [4 x i8]* @.str955, i32 0, i32 0
  %6269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %6268, i64 3)
  %6270 = call i1 @nyx_string_equals(%nyx_string* %6267, %nyx_string* %6269)
  store i1 %6270, i1* %6256
  br label %sc_or_end1033
sc_or_end1033:
  %6271 = load i1, i1* %6256
  br i1 %6271, label %sc_or_end1035, label %sc_or_rhs1034
sc_or_rhs1034:
  %6272 = load %nyx_string*, %nyx_string** %name.ptr
  %6273 = getelementptr [8 x i8], [8 x i8]* @.str956, i32 0, i32 0
  %6274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %6273, i64 7)
  %6275 = call i1 @nyx_string_equals(%nyx_string* %6272, %nyx_string* %6274)
  store i1 %6275, i1* %6255
  br label %sc_or_end1035
sc_or_end1035:
  %6276 = load i1, i1* %6255
  br i1 %6276, label %sc_or_end1037, label %sc_or_rhs1036
sc_or_rhs1036:
  %6277 = load %nyx_string*, %nyx_string** %name.ptr
  %6278 = getelementptr [7 x i8], [7 x i8]* @.str957, i32 0, i32 0
  %6279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %6278, i64 6)
  %6280 = call i1 @nyx_string_equals(%nyx_string* %6277, %nyx_string* %6279)
  store i1 %6280, i1* %6254
  br label %sc_or_end1037
sc_or_end1037:
  %6281 = load i1, i1* %6254
  br i1 %6281, label %sc_or_end1039, label %sc_or_rhs1038
sc_or_rhs1038:
  %6282 = load %nyx_string*, %nyx_string** %name.ptr
  %6283 = getelementptr [8 x i8], [8 x i8]* @.str958, i32 0, i32 0
  %6284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %6283, i64 7)
  %6285 = call i1 @nyx_string_equals(%nyx_string* %6282, %nyx_string* %6284)
  store i1 %6285, i1* %6253
  br label %sc_or_end1039
sc_or_end1039:
  %6286 = load i1, i1* %6253
  br i1 %6286, label %sc_or_end1041, label %sc_or_rhs1040
sc_or_rhs1040:
  %6287 = load %nyx_string*, %nyx_string** %name.ptr
  %6288 = getelementptr [11 x i8], [11 x i8]* @.str959, i32 0, i32 0
  %6289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %6288, i64 10)
  %6290 = call i1 @nyx_string_equals(%nyx_string* %6287, %nyx_string* %6289)
  store i1 %6290, i1* %6252
  br label %sc_or_end1041
sc_or_end1041:
  %6291 = load i1, i1* %6252
  br i1 %6291, label %then1042, label %else1043
then1042:
  %6292 = getelementptr [14 x i8], [14 x i8]* @.str960, i32 0, i32 0
  %6293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %6292, i64 13)
  ret %nyx_string* %6293
else1043:
  br label %merge1044
merge1044:
  %6294 = getelementptr [1 x i8], [1 x i8]* @.str961, i32 0, i32 0
  %6295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %6294, i64 0)
  ret %nyx_string* %6295
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %6296 = alloca i64
  store i64 0, i64* %6296
  %6297 = alloca i64
  store i64 0, i64* %6297
  %6298 = call i8* @llvm.stacksave()
  br label %while_cond1045
while_cond1045:
  %6299 = load i64, i64* %6297
  %6300 = load %nyx_string*, %nyx_string** %s.ptr
  %6301 = call i64 @nyx_string_byte_length(%nyx_string* %6300)
  %6302 = icmp slt i64 %6299, %6301
  br i1 %6302, label %while_body1046, label %while_end1047
while_body1046:
  call void @llvm.stackrestore(i8* %6298)
  %6303 = load %nyx_string*, %nyx_string** %s.ptr
  %6304 = load i64, i64* %6297
  %6305 = call i8 @nyx_string_char_at(%nyx_string* %6303, i64 %6304)
  %6306 = zext i8 %6305 to i64
  %6307 = trunc i64 %6306 to i8
  %6308 = alloca i8
  store i8 %6307, i8* %6308
  %6309 = load i8, i8* %6308
  %6310 = getelementptr [1 x i8], [1 x i8]* @.str962, i32 0, i32 0
  %6311 = load i8, i8* %6310
  %6312 = zext i8 %6311 to i64
  %6313 = zext i8 %6309 to i64
  %6314 = icmp eq i64 %6313, %6312
  br i1 %6314, label %then1048, label %else1049
then1048:
  %6315 = load i64, i64* %6296
  %6316 = add i64 %6315, 1
  store i64 %6316, i64* %6296
  br label %merge1050
else1049:
  br label %merge1050
merge1050:
  %6317 = load i8, i8* %6308
  %6318 = getelementptr [1 x i8], [1 x i8]* @.str963, i32 0, i32 0
  %6319 = load i8, i8* %6318
  %6320 = zext i8 %6319 to i64
  %6321 = zext i8 %6317 to i64
  %6322 = icmp eq i64 %6321, %6320
  br i1 %6322, label %then1051, label %else1052
then1051:
  %6323 = load i64, i64* %6296
  %6324 = sub i64 %6323, 1
  store i64 %6324, i64* %6296
  br label %merge1053
else1052:
  br label %merge1053
merge1053:
  %6325 = load i64, i64* %6297
  %6326 = add i64 %6325, 1
  store i64 %6326, i64* %6297
  br label %while_cond1045
while_end1047:
  %6327 = load i64, i64* %6296
  ret i64 %6327
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %6328 = load %nyx_string*, %nyx_string** %filename.ptr
  %6329 = load %nyx_string*, %nyx_string** %filename.ptr
  %6330 = call i64 @nyx_string_byte_length(%nyx_string* %6329)
  %6331 = sub i64 %6330, 3
  %6332 = call %nyx_string* @nyx_string_substring(%nyx_string* %6328, i64 0, i64 %6331)
  %6333 = alloca %nyx_string*
  store %nyx_string* %6332, %nyx_string** %6333
  %6334 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %6335 = getelementptr [2 x i8], [2 x i8]* @.str964, i32 0, i32 0
  %6336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %6335, i64 1)
  %6337 = call %nyx_string* @nyx_string_concat(%nyx_string* %6334, %nyx_string* %6336)
  %6338 = load %nyx_string*, %nyx_string** %filename.ptr
  %6339 = call %nyx_string* @nyx_string_concat(%nyx_string* %6337, %nyx_string* %6338)
  %6340 = call i8* @nyx_string_to_cstr(%nyx_string* %6339)
  %6341 = call %nyx_string* @nyx_read_file(i8* %6340)
  %6342 = alloca %nyx_string*
  store %nyx_string* %6341, %nyx_string** %6342
  %6343 = load %nyx_string*, %nyx_string** %6342
  %6344 = getelementptr [2 x i8], [2 x i8]* @.str965, i32 0, i32 0
  %6345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %6344, i64 1)
  %6346 = call { i64, i8* }* @nyx_string_split(%nyx_string* %6343, %nyx_string* %6345)
  %6347 = alloca { i64, i8* }*
  store { i64, i8* }* %6346, { i64, i8* }** %6347
  %6348 = getelementptr [1 x i8], [1 x i8]* @.str966, i32 0, i32 0
  %6349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %6348, i64 0)
  %6350 = alloca %nyx_string*
  store %nyx_string* %6349, %nyx_string** %6350
  %6351 = getelementptr [1 x i8], [1 x i8]* @.str967, i32 0, i32 0
  %6352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %6351, i64 0)
  %6353 = alloca %nyx_string*
  store %nyx_string* %6352, %nyx_string** %6353
  %6354 = alloca i64
  store i64 0, i64* %6354
  %6355 = alloca i64
  store i64 0, i64* %6355
  %6356 = getelementptr [4 x i8], [4 x i8]* @.str968, i32 0, i32 0
  %6357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %6356, i64 3)
  %6358 = alloca %nyx_string*
  store %nyx_string* %6357, %nyx_string** %6358
  %6359 = getelementptr [1 x i8], [1 x i8]* @.str969, i32 0, i32 0
  %6360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %6359, i64 0)
  %6361 = alloca %nyx_string*
  store %nyx_string* %6360, %nyx_string** %6361
  %6362 = getelementptr [2 x i8], [2 x i8]* @.str970, i32 0, i32 0
  %6363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %6362, i64 1)
  %6364 = alloca %nyx_string*
  store %nyx_string* %6363, %nyx_string** %6364
  %6365 = getelementptr [8 x i8], [8 x i8]* @.str971, i32 0, i32 0
  %6366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %6365, i64 7)
  %6367 = alloca %nyx_string*
  store %nyx_string* %6366, %nyx_string** %6367
  %6368 = getelementptr [11 x i8], [11 x i8]* @.str972, i32 0, i32 0
  %6369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %6368, i64 10)
  %6370 = alloca %nyx_string*
  store %nyx_string* %6369, %nyx_string** %6370
  %6371 = getelementptr [4 x i8], [4 x i8]* @.str973, i32 0, i32 0
  %6372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %6371, i64 3)
  %6373 = alloca %nyx_string*
  store %nyx_string* %6372, %nyx_string** %6373
  %6374 = getelementptr [2 x i8], [2 x i8]* @.str974, i32 0, i32 0
  %6375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %6374, i64 1)
  %6376 = alloca %nyx_string*
  store %nyx_string* %6375, %nyx_string** %6376
  %6377 = getelementptr [6 x i8], [6 x i8]* @.str975, i32 0, i32 0
  %6378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %6377, i64 5)
  %6379 = alloca %nyx_string*
  store %nyx_string* %6378, %nyx_string** %6379
  %6380 = getelementptr [2 x i8], [2 x i8]* @.str976, i32 0, i32 0
  %6381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %6380, i64 1)
  %6382 = alloca %nyx_string*
  store %nyx_string* %6381, %nyx_string** %6382
  %6383 = call i8* @llvm.stacksave()
  br label %while_cond1054
while_cond1054:
  %6384 = load i64, i64* %6355
  %6385 = load { i64, i8* }*, { i64, i8* }** %6347
  %6386 = call i64 @nyx_array_length({ i64, i8* }* %6385)
  %6387 = icmp slt i64 %6384, %6386
  br i1 %6387, label %while_body1055, label %while_end1056
while_body1055:
  call void @llvm.stackrestore(i8* %6383)
  %6388 = load { i64, i8* }*, { i64, i8* }** %6347
  %6389 = load i64, i64* %6355
  %6390 = call i64 @nyx_array_get_checked({ i64, i8* }* %6388, i64 %6389, i64 2)
  %6391 = inttoptr i64 %6390 to %nyx_string*
  %6392 = alloca %nyx_string*
  store %nyx_string* %6391, %nyx_string** %6392
  %6393 = load %nyx_string*, %nyx_string** %6392
  %6394 = call %nyx_string* @nyx_string_trim(%nyx_string* %6393)
  %6395 = alloca %nyx_string*
  store %nyx_string* %6394, %nyx_string** %6395
  %6396 = load %nyx_string*, %nyx_string** %6395
  %6397 = load %nyx_string*, %nyx_string** %6358
  %6398 = call i1 @nyx_string_starts_with(%nyx_string* %6396, %nyx_string* %6397)
  br i1 %6398, label %then1057, label %else1058
then1057:
  %6399 = load %nyx_string*, %nyx_string** %6395
  %6400 = load %nyx_string*, %nyx_string** %6395
  %6401 = call i64 @nyx_string_byte_length(%nyx_string* %6400)
  %6402 = call %nyx_string* @nyx_string_substring(%nyx_string* %6399, i64 3, i64 %6401)
  %6403 = alloca %nyx_string*
  store %nyx_string* %6402, %nyx_string** %6403
  %6404 = load %nyx_string*, %nyx_string** %6403
  %6405 = call %nyx_string* @nyx_string_trim(%nyx_string* %6404)
  %6406 = alloca %nyx_string*
  store %nyx_string* %6405, %nyx_string** %6406
  %6407 = load %nyx_string*, %nyx_string** %6353
  %6408 = load %nyx_string*, %nyx_string** %6361
  %6409 = call i1 @nyx_string_equals(%nyx_string* %6407, %nyx_string* %6408)
  br i1 %6409, label %then1060, label %else1061
then1060:
  %6410 = load %nyx_string*, %nyx_string** %6406
  store %nyx_string* %6410, %nyx_string** %6353
  br label %merge1062
else1061:
  %6411 = load %nyx_string*, %nyx_string** %6353
  %6412 = load %nyx_string*, %nyx_string** %6364
  %6413 = call %nyx_string* @nyx_string_concat(%nyx_string* %6411, %nyx_string* %6412)
  %6414 = load %nyx_string*, %nyx_string** %6406
  %6415 = call %nyx_string* @nyx_string_concat(%nyx_string* %6413, %nyx_string* %6414)
  store %nyx_string* %6415, %nyx_string** %6353
  br label %merge1062
merge1062:
  br label %merge1059
else1058:
  %6416 = alloca i1
  store i1 true, i1* %6416
  %6417 = load %nyx_string*, %nyx_string** %6395
  %6418 = load %nyx_string*, %nyx_string** %6367
  %6419 = call i1 @nyx_string_starts_with(%nyx_string* %6417, %nyx_string* %6418)
  br i1 %6419, label %sc_or_end1064, label %sc_or_rhs1063
sc_or_rhs1063:
  %6420 = load %nyx_string*, %nyx_string** %6395
  %6421 = load %nyx_string*, %nyx_string** %6370
  %6422 = call i1 @nyx_string_starts_with(%nyx_string* %6420, %nyx_string* %6421)
  store i1 %6422, i1* %6416
  br label %sc_or_end1064
sc_or_end1064:
  %6423 = load i1, i1* %6416
  %6424 = alloca i1
  store i1 %6423, i1* %6424
  %6425 = load i1, i1* %6424
  br i1 %6425, label %then1065, label %else1066
then1065:
  %6426 = load %nyx_string*, %nyx_string** %6395
  %6427 = alloca %nyx_string*
  store %nyx_string* %6426, %nyx_string** %6427
  %6428 = load %nyx_string*, %nyx_string** %6427
  %6429 = call i64 @capabilities_paren_delta(%nyx_string* %6428)
  %6430 = alloca i64
  store i64 %6429, i64* %6430
  %6431 = call i8* @llvm.stacksave()
  br label %while_cond1068
while_cond1068:
  %6432 = alloca i1
  store i1 false, i1* %6432
  %6433 = load i64, i64* %6430
  %6434 = icmp sgt i64 %6433, 0
  br i1 %6434, label %sc_and_rhs1071, label %sc_and_end1072
sc_and_rhs1071:
  %6435 = load i64, i64* %6355
  %6436 = add i64 %6435, 1
  %6437 = load { i64, i8* }*, { i64, i8* }** %6347
  %6438 = call i64 @nyx_array_length({ i64, i8* }* %6437)
  %6439 = icmp slt i64 %6436, %6438
  store i1 %6439, i1* %6432
  br label %sc_and_end1072
sc_and_end1072:
  %6440 = load i1, i1* %6432
  br i1 %6440, label %while_body1069, label %while_end1070
while_body1069:
  call void @llvm.stackrestore(i8* %6431)
  %6441 = load i64, i64* %6355
  %6442 = add i64 %6441, 1
  store i64 %6442, i64* %6355
  %6443 = load { i64, i8* }*, { i64, i8* }** %6347
  %6444 = load i64, i64* %6355
  %6445 = call i64 @nyx_array_get_checked({ i64, i8* }* %6443, i64 %6444, i64 2)
  %6446 = inttoptr i64 %6445 to %nyx_string*
  %6447 = call %nyx_string* @nyx_string_trim(%nyx_string* %6446)
  %6448 = alloca %nyx_string*
  store %nyx_string* %6447, %nyx_string** %6448
  %6449 = load %nyx_string*, %nyx_string** %6448
  %6450 = load %nyx_string*, %nyx_string** %6361
  %6451 = call i1 @nyx_string_equals(%nyx_string* %6449, %nyx_string* %6450)
  %6452 = xor i1 %6451, true
  br i1 %6452, label %then1073, label %else1074
then1073:
  %6453 = alloca i1
  store i1 false, i1* %6453
  %6454 = load %nyx_string*, %nyx_string** %6427
  %6455 = call i64 @nyx_string_byte_length(%nyx_string* %6454)
  %6456 = icmp sgt i64 %6455, 0
  br i1 %6456, label %sc_and_rhs1076, label %sc_and_end1077
sc_and_rhs1076:
  %6457 = load %nyx_string*, %nyx_string** %6427
  %6458 = load %nyx_string*, %nyx_string** %6427
  %6459 = call i64 @nyx_string_byte_length(%nyx_string* %6458)
  %6460 = sub i64 %6459, 1
  %6461 = call i8 @nyx_string_char_at(%nyx_string* %6457, i64 %6460)
  %6462 = zext i8 %6461 to i64
  %6463 = getelementptr [1 x i8], [1 x i8]* @.str977, i32 0, i32 0
  %6464 = load i8, i8* %6463
  %6465 = zext i8 %6464 to i64
  %6466 = icmp eq i64 %6462, %6465
  store i1 %6466, i1* %6453
  br label %sc_and_end1077
sc_and_end1077:
  %6467 = load i1, i1* %6453
  br i1 %6467, label %then1078, label %else1079
then1078:
  %6468 = load %nyx_string*, %nyx_string** %6427
  %6469 = load %nyx_string*, %nyx_string** %6448
  %6470 = call %nyx_string* @nyx_string_concat(%nyx_string* %6468, %nyx_string* %6469)
  store %nyx_string* %6470, %nyx_string** %6427
  br label %merge1080
else1079:
  %6471 = load %nyx_string*, %nyx_string** %6427
  %6472 = load %nyx_string*, %nyx_string** %6364
  %6473 = call %nyx_string* @nyx_string_concat(%nyx_string* %6471, %nyx_string* %6472)
  %6474 = load %nyx_string*, %nyx_string** %6448
  %6475 = call %nyx_string* @nyx_string_concat(%nyx_string* %6473, %nyx_string* %6474)
  store %nyx_string* %6475, %nyx_string** %6427
  br label %merge1080
merge1080:
  br label %merge1075
else1074:
  br label %merge1075
merge1075:
  %6476 = load i64, i64* %6430
  %6477 = load %nyx_string*, %nyx_string** %6448
  %6478 = call i64 @capabilities_paren_delta(%nyx_string* %6477)
  %6479 = add i64 %6476, %6478
  store i64 %6479, i64* %6430
  br label %while_cond1068
while_end1070:
  %6480 = sub i64 0, 1
  %6481 = alloca i64
  store i64 %6480, i64* %6481
  %6482 = alloca i64
  store i64 0, i64* %6482
  %6483 = call i8* @llvm.stacksave()
  br label %while_cond1081
while_cond1081:
  %6484 = load i64, i64* %6482
  %6485 = load %nyx_string*, %nyx_string** %6427
  %6486 = call i64 @nyx_string_byte_length(%nyx_string* %6485)
  %6487 = icmp slt i64 %6484, %6486
  br i1 %6487, label %while_body1082, label %while_end1083
while_body1082:
  call void @llvm.stackrestore(i8* %6483)
  %6488 = load %nyx_string*, %nyx_string** %6427
  %6489 = load i64, i64* %6482
  %6490 = call i8 @nyx_string_char_at(%nyx_string* %6488, i64 %6489)
  %6491 = zext i8 %6490 to i64
  %6492 = trunc i64 %6491 to i8
  %6493 = alloca i8
  store i8 %6492, i8* %6493
  %6494 = alloca i1
  store i1 false, i1* %6494
  %6495 = load i8, i8* %6493
  %6496 = getelementptr [1 x i8], [1 x i8]* @.str978, i32 0, i32 0
  %6497 = load i8, i8* %6496
  %6498 = zext i8 %6497 to i64
  %6499 = zext i8 %6495 to i64
  %6500 = icmp eq i64 %6499, %6498
  br i1 %6500, label %sc_and_rhs1084, label %sc_and_end1085
sc_and_rhs1084:
  %6501 = load i64, i64* %6481
  %6502 = sub i64 0, 1
  %6503 = icmp eq i64 %6501, %6502
  store i1 %6503, i1* %6494
  br label %sc_and_end1085
sc_and_end1085:
  %6504 = load i1, i1* %6494
  br i1 %6504, label %then1086, label %else1087
then1086:
  %6505 = load i64, i64* %6482
  store i64 %6505, i64* %6481
  br label %merge1088
else1087:
  br label %merge1088
merge1088:
  %6506 = load i64, i64* %6482
  %6507 = add i64 %6506, 1
  store i64 %6507, i64* %6482
  br label %while_cond1081
while_end1083:
  %6508 = load i64, i64* %6481
  %6509 = icmp sge i64 %6508, 0
  br i1 %6509, label %then1089, label %else1090
then1089:
  %6510 = load %nyx_string*, %nyx_string** %6427
  %6511 = load i64, i64* %6481
  %6512 = call %nyx_string* @nyx_string_substring(%nyx_string* %6510, i64 0, i64 %6511)
  store %nyx_string* %6512, %nyx_string** %6427
  br label %merge1091
else1090:
  br label %merge1091
merge1091:
  %6513 = load %nyx_string*, %nyx_string** %6427
  %6514 = call %nyx_string* @nyx_string_trim(%nyx_string* %6513)
  %6515 = alloca %nyx_string*
  store %nyx_string* %6514, %nyx_string** %6515
  %6516 = load %nyx_string*, %nyx_string** %6350
  %6517 = load %nyx_string*, %nyx_string** %6373
  %6518 = call %nyx_string* @nyx_string_concat(%nyx_string* %6516, %nyx_string* %6517)
  %6519 = load %nyx_string*, %nyx_string** %6515
  %6520 = call %nyx_string* @nyx_string_concat(%nyx_string* %6518, %nyx_string* %6519)
  %6521 = load %nyx_string*, %nyx_string** %6376
  %6522 = call %nyx_string* @nyx_string_concat(%nyx_string* %6520, %nyx_string* %6521)
  store %nyx_string* %6522, %nyx_string** %6350
  %6523 = load %nyx_string*, %nyx_string** %6353
  %6524 = load %nyx_string*, %nyx_string** %6361
  %6525 = call i1 @nyx_string_equals(%nyx_string* %6523, %nyx_string* %6524)
  %6526 = xor i1 %6525, true
  br i1 %6526, label %then1092, label %else1093
then1092:
  %6527 = load %nyx_string*, %nyx_string** %6350
  %6528 = load %nyx_string*, %nyx_string** %6379
  %6529 = call %nyx_string* @nyx_string_concat(%nyx_string* %6527, %nyx_string* %6528)
  %6530 = load %nyx_string*, %nyx_string** %6353
  %6531 = call %nyx_string* @nyx_string_concat(%nyx_string* %6529, %nyx_string* %6530)
  store %nyx_string* %6531, %nyx_string** %6350
  br label %merge1094
else1093:
  br label %merge1094
merge1094:
  %6532 = load %nyx_string*, %nyx_string** %6350
  %6533 = load %nyx_string*, %nyx_string** %6382
  %6534 = call %nyx_string* @nyx_string_concat(%nyx_string* %6532, %nyx_string* %6533)
  store %nyx_string* %6534, %nyx_string** %6350
  %6535 = load i64, i64* %6354
  %6536 = add i64 %6535, 1
  store i64 %6536, i64* %6354
  br label %merge1067
else1066:
  br label %merge1067
merge1067:
  %6537 = load %nyx_string*, %nyx_string** %6361
  store %nyx_string* %6537, %nyx_string** %6353
  br label %merge1059
merge1059:
  %6538 = load i64, i64* %6355
  %6539 = add i64 %6538, 1
  store i64 %6539, i64* %6355
  br label %while_cond1054
while_end1056:
  %6540 = load i64, i64* %6354
  %6541 = icmp eq i64 %6540, 0
  br i1 %6541, label %then1095, label %else1096
then1095:
  %6542 = getelementptr [1 x i8], [1 x i8]* @.str979, i32 0, i32 0
  %6543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %6542, i64 0)
  ret %nyx_string* %6543
else1096:
  br label %merge1097
merge1097:
  %6544 = getelementptr [10 x i8], [10 x i8]* @.str980, i32 0, i32 0
  %6545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %6544, i64 9)
  %6546 = load %nyx_string*, %nyx_string** %6333
  %6547 = call %nyx_string* @nyx_string_concat(%nyx_string* %6545, %nyx_string* %6546)
  %6548 = getelementptr [4 x i8], [4 x i8]* @.str981, i32 0, i32 0
  %6549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %6548, i64 3)
  %6550 = call %nyx_string* @nyx_string_concat(%nyx_string* %6547, %nyx_string* %6549)
  %6551 = alloca %nyx_string*
  store %nyx_string* %6550, %nyx_string** %6551
  %6552 = load %nyx_string*, %nyx_string** %6551
  %6553 = getelementptr [14 x i8], [14 x i8]* @.str982, i32 0, i32 0
  %6554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %6553, i64 13)
  %6555 = call %nyx_string* @nyx_string_concat(%nyx_string* %6552, %nyx_string* %6554)
  %6556 = load %nyx_string*, %nyx_string** %6333
  %6557 = call %nyx_string* @nyx_string_concat(%nyx_string* %6555, %nyx_string* %6556)
  %6558 = getelementptr [8 x i8], [8 x i8]* @.str983, i32 0, i32 0
  %6559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %6558, i64 7)
  %6560 = call %nyx_string* @nyx_string_concat(%nyx_string* %6557, %nyx_string* %6559)
  %6561 = load i64, i64* %6354
  %6562 = call %nyx_string* @nyx_string_from_int(i64 %6561)
  %6563 = call %nyx_string* @nyx_string_concat(%nyx_string* %6560, %nyx_string* %6562)
  %6564 = getelementptr [14 x i8], [14 x i8]* @.str984, i32 0, i32 0
  %6565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %6564, i64 13)
  %6566 = call %nyx_string* @nyx_string_concat(%nyx_string* %6563, %nyx_string* %6565)
  store %nyx_string* %6566, %nyx_string** %6551
  %6567 = load %nyx_string*, %nyx_string** %6551
  %6568 = load %nyx_string*, %nyx_string** %6350
  %6569 = call %nyx_string* @nyx_string_concat(%nyx_string* %6567, %nyx_string* %6568)
  %6570 = getelementptr [2 x i8], [2 x i8]* @.str985, i32 0, i32 0
  %6571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %6570, i64 1)
  %6572 = call %nyx_string* @nyx_string_concat(%nyx_string* %6569, %nyx_string* %6571)
  store %nyx_string* %6572, %nyx_string** %6551
  %6573 = load %nyx_string*, %nyx_string** %6551
  ret %nyx_string* %6573
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %6574 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %6575 = getelementptr [16 x i8], [16 x i8]* @.str986, i32 0, i32 0
  %6576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %6575, i64 15)
  %6577 = call %nyx_string* @nyx_string_concat(%nyx_string* %6574, %nyx_string* %6576)
  %6578 = alloca %nyx_string*
  store %nyx_string* %6577, %nyx_string** %6578
  %6579 = load %nyx_string*, %nyx_string** %6578
  %6580 = call i8* @nyx_string_to_cstr(%nyx_string* %6579)
  %6581 = call i1 @nyx_file_exists(i8* %6580)
  %6582 = xor i1 %6581, true
  br i1 %6582, label %then1098, label %else1099
then1098:
  %6583 = getelementptr [1 x i8], [1 x i8]* @.str987, i32 0, i32 0
  %6584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %6583, i64 0)
  ret %nyx_string* %6584
else1099:
  br label %merge1100
merge1100:
  %6585 = load %nyx_string*, %nyx_string** %6578
  %6586 = call i8* @nyx_string_to_cstr(%nyx_string* %6585)
  %6587 = call %nyx_string* @nyx_read_file(i8* %6586)
  %6588 = alloca %nyx_string*
  store %nyx_string* %6587, %nyx_string** %6588
  %6589 = load %nyx_string*, %nyx_string** %6588
  %6590 = getelementptr [2 x i8], [2 x i8]* @.str988, i32 0, i32 0
  %6591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %6590, i64 1)
  %6592 = call { i64, i8* }* @nyx_string_split(%nyx_string* %6589, %nyx_string* %6591)
  %6593 = alloca { i64, i8* }*
  store { i64, i8* }* %6592, { i64, i8* }** %6593
  %6594 = getelementptr [1 x i8], [1 x i8]* @.str989, i32 0, i32 0
  %6595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %6594, i64 0)
  %6596 = alloca %nyx_string*
  store %nyx_string* %6595, %nyx_string** %6596
  %6597 = alloca i64
  store i64 0, i64* %6597
  %6598 = alloca i64
  store i64 0, i64* %6598
  %6599 = getelementptr [9 x i8], [9 x i8]* @.str990, i32 0, i32 0
  %6600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %6599, i64 8)
  %6601 = alloca %nyx_string*
  store %nyx_string* %6600, %nyx_string** %6601
  %6602 = getelementptr [2 x i8], [2 x i8]* @.str991, i32 0, i32 0
  %6603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %6602, i64 1)
  %6604 = alloca %nyx_string*
  store %nyx_string* %6603, %nyx_string** %6604
  %6605 = getelementptr [4 x i8], [4 x i8]* @.str992, i32 0, i32 0
  %6606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %6605, i64 3)
  %6607 = alloca %nyx_string*
  store %nyx_string* %6606, %nyx_string** %6607
  %6608 = getelementptr [4 x i8], [4 x i8]* @.str993, i32 0, i32 0
  %6609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %6608, i64 3)
  %6610 = alloca %nyx_string*
  store %nyx_string* %6609, %nyx_string** %6610
  %6611 = getelementptr [5 x i8], [5 x i8]* @.str994, i32 0, i32 0
  %6612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %6611, i64 4)
  %6613 = alloca %nyx_string*
  store %nyx_string* %6612, %nyx_string** %6613
  %6614 = getelementptr [2 x i8], [2 x i8]* @.str995, i32 0, i32 0
  %6615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %6614, i64 1)
  %6616 = alloca %nyx_string*
  store %nyx_string* %6615, %nyx_string** %6616
  %6617 = getelementptr [2 x i8], [2 x i8]* @.str996, i32 0, i32 0
  %6618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %6617, i64 1)
  %6619 = alloca %nyx_string*
  store %nyx_string* %6618, %nyx_string** %6619
  %6620 = getelementptr [2 x i8], [2 x i8]* @.str997, i32 0, i32 0
  %6621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %6620, i64 1)
  %6622 = alloca %nyx_string*
  store %nyx_string* %6621, %nyx_string** %6622
  %6623 = getelementptr [1 x i8], [1 x i8]* @.str998, i32 0, i32 0
  %6624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %6623, i64 0)
  %6625 = alloca %nyx_string*
  store %nyx_string* %6624, %nyx_string** %6625
  %6626 = getelementptr [6 x i8], [6 x i8]* @.str999, i32 0, i32 0
  %6627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %6626, i64 5)
  %6628 = alloca %nyx_string*
  store %nyx_string* %6627, %nyx_string** %6628
  %6629 = getelementptr [2 x i8], [2 x i8]* @.str1000, i32 0, i32 0
  %6630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %6629, i64 1)
  %6631 = alloca %nyx_string*
  store %nyx_string* %6630, %nyx_string** %6631
  %6632 = call i8* @llvm.stacksave()
  br label %while_cond1101
while_cond1101:
  %6633 = load i64, i64* %6598
  %6634 = load { i64, i8* }*, { i64, i8* }** %6593
  %6635 = call i64 @nyx_array_length({ i64, i8* }* %6634)
  %6636 = icmp slt i64 %6633, %6635
  br i1 %6636, label %while_body1102, label %while_end1103
while_body1102:
  call void @llvm.stackrestore(i8* %6632)
  %6637 = load { i64, i8* }*, { i64, i8* }** %6593
  %6638 = load i64, i64* %6598
  %6639 = call i64 @nyx_array_get_checked({ i64, i8* }* %6637, i64 %6638, i64 2)
  %6640 = inttoptr i64 %6639 to %nyx_string*
  %6641 = alloca %nyx_string*
  store %nyx_string* %6640, %nyx_string** %6641
  %6642 = load %nyx_string*, %nyx_string** %6641
  %6643 = call i64 @nyx_string_byte_length(%nyx_string* %6642)
  %6644 = icmp sgt i64 %6643, 8
  br i1 %6644, label %then1104, label %else1105
then1104:
  %6645 = load %nyx_string*, %nyx_string** %6641
  %6646 = call %nyx_string* @nyx_string_substring(%nyx_string* %6645, i64 0, i64 8)
  %6647 = load %nyx_string*, %nyx_string** %6601
  %6648 = call i1 @nyx_string_equals(%nyx_string* %6646, %nyx_string* %6647)
  br i1 %6648, label %then1107, label %else1108
then1107:
  %6649 = load %nyx_string*, %nyx_string** %6641
  %6650 = load %nyx_string*, %nyx_string** %6604
  %6651 = call { i64, i8* }* @nyx_string_split(%nyx_string* %6649, %nyx_string* %6650)
  %6652 = alloca { i64, i8* }*
  store { i64, i8* }* %6651, { i64, i8* }** %6652
  %6653 = load { i64, i8* }*, { i64, i8* }** %6652
  %6654 = call i64 @nyx_array_length({ i64, i8* }* %6653)
  %6655 = icmp sge i64 %6654, 5
  br i1 %6655, label %then1110, label %else1111
then1110:
  %6656 = load { i64, i8* }*, { i64, i8* }** %6652
  %6657 = call i64 @nyx_array_get_checked({ i64, i8* }* %6656, i64 1, i64 2)
  %6658 = inttoptr i64 %6657 to %nyx_string*
  %6659 = alloca %nyx_string*
  store %nyx_string* %6658, %nyx_string** %6659
  %6660 = load { i64, i8* }*, { i64, i8* }** %6652
  %6661 = call i64 @nyx_array_get_checked({ i64, i8* }* %6660, i64 2, i64 2)
  %6662 = inttoptr i64 %6661 to %nyx_string*
  %6663 = alloca %nyx_string*
  store %nyx_string* %6662, %nyx_string** %6663
  %6664 = load { i64, i8* }*, { i64, i8* }** %6652
  %6665 = call i64 @nyx_array_get_checked({ i64, i8* }* %6664, i64 3, i64 2)
  %6666 = inttoptr i64 %6665 to %nyx_string*
  %6667 = alloca %nyx_string*
  store %nyx_string* %6666, %nyx_string** %6667
  %6668 = load { i64, i8* }*, { i64, i8* }** %6652
  %6669 = call i64 @nyx_array_get_checked({ i64, i8* }* %6668, i64 4, i64 2)
  %6670 = inttoptr i64 %6669 to %nyx_string*
  %6671 = alloca %nyx_string*
  store %nyx_string* %6670, %nyx_string** %6671
  %6672 = load %nyx_string*, %nyx_string** %6667
  %6673 = load %nyx_string*, %nyx_string** %cat.ptr
  %6674 = call i1 @nyx_string_equals(%nyx_string* %6672, %nyx_string* %6673)
  br i1 %6674, label %then1113, label %else1114
then1113:
  %6675 = load %nyx_string*, %nyx_string** %6607
  %6676 = load %nyx_string*, %nyx_string** %6659
  %6677 = call %nyx_string* @nyx_string_concat(%nyx_string* %6675, %nyx_string* %6676)
  %6678 = load %nyx_string*, %nyx_string** %6610
  %6679 = call %nyx_string* @nyx_string_concat(%nyx_string* %6677, %nyx_string* %6678)
  %6680 = load %nyx_string*, %nyx_string** %6663
  %6681 = call %nyx_string* @nyx_string_concat(%nyx_string* %6679, %nyx_string* %6680)
  %6682 = load %nyx_string*, %nyx_string** %6613
  %6683 = call %nyx_string* @nyx_string_concat(%nyx_string* %6681, %nyx_string* %6682)
  %6684 = alloca %nyx_string*
  store %nyx_string* %6683, %nyx_string** %6684
  %6685 = load %nyx_string*, %nyx_string** %6663
  %6686 = load %nyx_string*, %nyx_string** %6616
  %6687 = call i1 @nyx_string_equals(%nyx_string* %6685, %nyx_string* %6686)
  %6688 = xor i1 %6687, true
  br i1 %6688, label %then1116, label %else1117
then1116:
  %6689 = load %nyx_string*, %nyx_string** %6684
  %6690 = load %nyx_string*, %nyx_string** %6619
  %6691 = call %nyx_string* @nyx_string_concat(%nyx_string* %6689, %nyx_string* %6690)
  store %nyx_string* %6691, %nyx_string** %6684
  br label %merge1118
else1117:
  br label %merge1118
merge1118:
  %6692 = load %nyx_string*, %nyx_string** %6684
  %6693 = load %nyx_string*, %nyx_string** %6622
  %6694 = call %nyx_string* @nyx_string_concat(%nyx_string* %6692, %nyx_string* %6693)
  store %nyx_string* %6694, %nyx_string** %6684
  %6695 = load %nyx_string*, %nyx_string** %6671
  %6696 = load %nyx_string*, %nyx_string** %6625
  %6697 = call i1 @nyx_string_equals(%nyx_string* %6695, %nyx_string* %6696)
  %6698 = xor i1 %6697, true
  br i1 %6698, label %then1119, label %else1120
then1119:
  %6699 = load %nyx_string*, %nyx_string** %6684
  %6700 = load %nyx_string*, %nyx_string** %6628
  %6701 = call %nyx_string* @nyx_string_concat(%nyx_string* %6699, %nyx_string* %6700)
  %6702 = load %nyx_string*, %nyx_string** %6671
  %6703 = call %nyx_string* @nyx_string_concat(%nyx_string* %6701, %nyx_string* %6702)
  store %nyx_string* %6703, %nyx_string** %6684
  br label %merge1121
else1120:
  br label %merge1121
merge1121:
  %6704 = load %nyx_string*, %nyx_string** %6596
  %6705 = load %nyx_string*, %nyx_string** %6684
  %6706 = call %nyx_string* @nyx_string_concat(%nyx_string* %6704, %nyx_string* %6705)
  %6707 = load %nyx_string*, %nyx_string** %6631
  %6708 = call %nyx_string* @nyx_string_concat(%nyx_string* %6706, %nyx_string* %6707)
  store %nyx_string* %6708, %nyx_string** %6596
  %6709 = load i64, i64* %6597
  %6710 = add i64 %6709, 1
  store i64 %6710, i64* %6597
  br label %merge1115
else1114:
  br label %merge1115
merge1115:
  br label %merge1112
else1111:
  br label %merge1112
merge1112:
  br label %merge1109
else1108:
  br label %merge1109
merge1109:
  br label %merge1106
else1105:
  br label %merge1106
merge1106:
  %6711 = load i64, i64* %6598
  %6712 = add i64 %6711, 1
  store i64 %6712, i64* %6598
  br label %while_cond1101
while_end1103:
  %6713 = load i64, i64* %6597
  %6714 = icmp eq i64 %6713, 0
  br i1 %6714, label %then1122, label %else1123
then1122:
  %6715 = getelementptr [1 x i8], [1 x i8]* @.str1001, i32 0, i32 0
  %6716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %6715, i64 0)
  ret %nyx_string* %6716
else1123:
  br label %merge1124
merge1124:
  %6717 = getelementptr [39 x i8], [39 x i8]* @.str1002, i32 0, i32 0
  %6718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %6717, i64 38)
  %6719 = load %nyx_string*, %nyx_string** %6596
  %6720 = call %nyx_string* @nyx_string_concat(%nyx_string* %6718, %nyx_string* %6719)
  %6721 = getelementptr [2 x i8], [2 x i8]* @.str1003, i32 0, i32 0
  %6722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %6721, i64 1)
  %6723 = call %nyx_string* @nyx_string_concat(%nyx_string* %6720, %nyx_string* %6722)
  ret %nyx_string* %6723
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %6724 = call %nyx_string* @capabilities_std_dir()
  %6725 = alloca %nyx_string*
  store %nyx_string* %6724, %nyx_string** %6725
  %6726 = load %nyx_string*, %nyx_string** %6725
  %6727 = getelementptr [1 x i8], [1 x i8]* @.str1004, i32 0, i32 0
  %6728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %6727, i64 0)
  %6729 = call i1 @nyx_string_equals(%nyx_string* %6726, %nyx_string* %6728)
  br i1 %6729, label %then1125, label %else1126
then1125:
  %6730 = getelementptr [71 x i8], [71 x i8]* @.str1005, i32 0, i32 0
  %6731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %6730, i64 70)
  %6732 = call i8* @nyx_string_to_cstr(%nyx_string* %6731)
  call void @nyx_print_string(i8* %6732)
  ret i1 0
else1126:
  br label %merge1127
merge1127:
  %6733 = load %nyx_string*, %nyx_string** %6725
  %6734 = call i8* @nyx_string_to_cstr(%nyx_string* %6733)
  %6735 = call { i64, i8* }* @nyx_readdir(i8* %6734)
  %6736 = alloca { i64, i8* }*
  store { i64, i8* }* %6735, { i64, i8* }** %6736
  %6737 = call { i64, i8* }* @nyx_array_new_ptr()
  %6738 = getelementptr [11 x i8], [11 x i8]* @.str1006, i32 0, i32 0
  %6739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %6738, i64 10)
  %6740 = ptrtoint %nyx_string* %6739 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6740, i64 2)
  %6741 = getelementptr [20 x i8], [20 x i8]* @.str1007, i32 0, i32 0
  %6742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %6741, i64 19)
  %6743 = ptrtoint %nyx_string* %6742 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6743, i64 2)
  %6744 = getelementptr [23 x i8], [23 x i8]* @.str1008, i32 0, i32 0
  %6745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %6744, i64 22)
  %6746 = ptrtoint %nyx_string* %6745 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6746, i64 2)
  %6747 = getelementptr [15 x i8], [15 x i8]* @.str1009, i32 0, i32 0
  %6748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %6747, i64 14)
  %6749 = ptrtoint %nyx_string* %6748 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6749, i64 2)
  %6750 = getelementptr [4 x i8], [4 x i8]* @.str1010, i32 0, i32 0
  %6751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %6750, i64 3)
  %6752 = ptrtoint %nyx_string* %6751 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6752, i64 2)
  %6753 = getelementptr [13 x i8], [13 x i8]* @.str1011, i32 0, i32 0
  %6754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %6753, i64 12)
  %6755 = ptrtoint %nyx_string* %6754 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6755, i64 2)
  %6756 = getelementptr [19 x i8], [19 x i8]* @.str1012, i32 0, i32 0
  %6757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %6756, i64 18)
  %6758 = ptrtoint %nyx_string* %6757 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6758, i64 2)
  %6759 = getelementptr [7 x i8], [7 x i8]* @.str1013, i32 0, i32 0
  %6760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %6759, i64 6)
  %6761 = ptrtoint %nyx_string* %6760 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6761, i64 2)
  %6762 = getelementptr [16 x i8], [16 x i8]* @.str1014, i32 0, i32 0
  %6763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %6762, i64 15)
  %6764 = ptrtoint %nyx_string* %6763 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6764, i64 2)
  %6765 = getelementptr [12 x i8], [12 x i8]* @.str1015, i32 0, i32 0
  %6766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %6765, i64 11)
  %6767 = ptrtoint %nyx_string* %6766 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6767, i64 2)
  %6768 = getelementptr [26 x i8], [26 x i8]* @.str1016, i32 0, i32 0
  %6769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %6768, i64 25)
  %6770 = ptrtoint %nyx_string* %6769 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6770, i64 2)
  %6771 = getelementptr [8 x i8], [8 x i8]* @.str1017, i32 0, i32 0
  %6772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %6771, i64 7)
  %6773 = ptrtoint %nyx_string* %6772 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6773, i64 2)
  %6774 = getelementptr [14 x i8], [14 x i8]* @.str1018, i32 0, i32 0
  %6775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %6774, i64 13)
  %6776 = ptrtoint %nyx_string* %6775 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6776, i64 2)
  %6777 = getelementptr [6 x i8], [6 x i8]* @.str1019, i32 0, i32 0
  %6778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %6777, i64 5)
  %6779 = ptrtoint %nyx_string* %6778 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %6737, i64 %6779, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %6737, i64 2)
  %6780 = alloca { i64, i8* }*
  store { i64, i8* }* %6737, { i64, i8* }** %6780
  %6781 = getelementptr [49 x i8], [49 x i8]* @.str1020, i32 0, i32 0
  %6782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %6781, i64 48)
  %6783 = alloca %nyx_string*
  store %nyx_string* %6782, %nyx_string** %6783
  %6784 = load %nyx_string*, %nyx_string** %6783
  %6785 = getelementptr [19 x i8], [19 x i8]* @.str1021, i32 0, i32 0
  %6786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %6785, i64 18)
  %6787 = call %nyx_string* @nyx_string_concat(%nyx_string* %6784, %nyx_string* %6786)
  %6788 = call %nyx_string* @toolchain_version()
  %6789 = call %nyx_string* @nyx_string_concat(%nyx_string* %6787, %nyx_string* %6788)
  %6790 = getelementptr [6 x i8], [6 x i8]* @.str1022, i32 0, i32 0
  %6791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %6790, i64 5)
  %6792 = call %nyx_string* @nyx_string_concat(%nyx_string* %6789, %nyx_string* %6791)
  store %nyx_string* %6792, %nyx_string** %6783
  %6793 = load %nyx_string*, %nyx_string** %6783
  %6794 = getelementptr [103 x i8], [103 x i8]* @.str1023, i32 0, i32 0
  %6795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %6794, i64 102)
  %6796 = call %nyx_string* @nyx_string_concat(%nyx_string* %6793, %nyx_string* %6795)
  store %nyx_string* %6796, %nyx_string** %6783
  %6797 = load %nyx_string*, %nyx_string** %6783
  %6798 = getelementptr [103 x i8], [103 x i8]* @.str1024, i32 0, i32 0
  %6799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %6798, i64 102)
  %6800 = call %nyx_string* @nyx_string_concat(%nyx_string* %6797, %nyx_string* %6799)
  store %nyx_string* %6800, %nyx_string** %6783
  %6801 = load %nyx_string*, %nyx_string** %6783
  %6802 = getelementptr [95 x i8], [95 x i8]* @.str1025, i32 0, i32 0
  %6803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %6802, i64 94)
  %6804 = call %nyx_string* @nyx_string_concat(%nyx_string* %6801, %nyx_string* %6803)
  store %nyx_string* %6804, %nyx_string** %6783
  %6805 = alloca i64
  store i64 0, i64* %6805
  %6806 = getelementptr [1 x i8], [1 x i8]* @.str1026, i32 0, i32 0
  %6807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %6806, i64 0)
  %6808 = alloca %nyx_string*
  store %nyx_string* %6807, %nyx_string** %6808
  %6809 = getelementptr [4 x i8], [4 x i8]* @.str1027, i32 0, i32 0
  %6810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %6809, i64 3)
  %6811 = alloca %nyx_string*
  store %nyx_string* %6810, %nyx_string** %6811
  %6812 = getelementptr [6 x i8], [6 x i8]* @.str1028, i32 0, i32 0
  %6813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %6812, i64 5)
  %6814 = alloca %nyx_string*
  store %nyx_string* %6813, %nyx_string** %6814
  %6815 = getelementptr [4 x i8], [4 x i8]* @.str1029, i32 0, i32 0
  %6816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %6815, i64 3)
  %6817 = alloca %nyx_string*
  store %nyx_string* %6816, %nyx_string** %6817
  %6818 = getelementptr [3 x i8], [3 x i8]* @.str1030, i32 0, i32 0
  %6819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %6818, i64 2)
  %6820 = alloca %nyx_string*
  store %nyx_string* %6819, %nyx_string** %6820
  %6821 = call i8* @llvm.stacksave()
  br label %while_cond1128
while_cond1128:
  %6822 = load i64, i64* %6805
  %6823 = load { i64, i8* }*, { i64, i8* }** %6780
  %6824 = call i64 @nyx_array_length({ i64, i8* }* %6823)
  %6825 = icmp slt i64 %6822, %6824
  br i1 %6825, label %while_body1129, label %while_end1130
while_body1129:
  call void @llvm.stackrestore(i8* %6821)
  %6826 = load { i64, i8* }*, { i64, i8* }** %6780
  %6827 = load i64, i64* %6805
  %6828 = call i64 @nyx_array_get_checked({ i64, i8* }* %6826, i64 %6827, i64 2)
  %6829 = inttoptr i64 %6828 to %nyx_string*
  %6830 = alloca %nyx_string*
  store %nyx_string* %6829, %nyx_string** %6830
  %6831 = load %nyx_string*, %nyx_string** %6808
  %6832 = alloca %nyx_string*
  store %nyx_string* %6831, %nyx_string** %6832
  %6833 = alloca i64
  store i64 0, i64* %6833
  %6834 = call i8* @llvm.stacksave()
  br label %while_cond1131
while_cond1131:
  %6835 = load i64, i64* %6833
  %6836 = load { i64, i8* }*, { i64, i8* }** %6736
  %6837 = call i64 @nyx_array_length({ i64, i8* }* %6836)
  %6838 = icmp slt i64 %6835, %6837
  br i1 %6838, label %while_body1132, label %while_end1133
while_body1132:
  call void @llvm.stackrestore(i8* %6834)
  %6839 = load { i64, i8* }*, { i64, i8* }** %6736
  %6840 = load i64, i64* %6833
  %6841 = call i64 @nyx_array_get_checked({ i64, i8* }* %6839, i64 %6840, i64 2)
  %6842 = inttoptr i64 %6841 to %nyx_string*
  %6843 = alloca %nyx_string*
  store %nyx_string* %6842, %nyx_string** %6843
  %6844 = load %nyx_string*, %nyx_string** %6843
  %6845 = load %nyx_string*, %nyx_string** %6811
  %6846 = call i1 @nyx_string_ends_with(%nyx_string* %6844, %nyx_string* %6845)
  br i1 %6846, label %then1134, label %else1135
then1134:
  %6847 = load %nyx_string*, %nyx_string** %6843
  %6848 = load %nyx_string*, %nyx_string** %6843
  %6849 = call i64 @nyx_string_byte_length(%nyx_string* %6848)
  %6850 = sub i64 %6849, 3
  %6851 = call %nyx_string* @nyx_string_substring(%nyx_string* %6847, i64 0, i64 %6850)
  %6852 = alloca %nyx_string*
  store %nyx_string* %6851, %nyx_string** %6852
  %6853 = load %nyx_string*, %nyx_string** %6852
  %6854 = call %nyx_string* @module_category(%nyx_string* %6853)
  %6855 = alloca %nyx_string*
  store %nyx_string* %6854, %nyx_string** %6855
  %6856 = load %nyx_string*, %nyx_string** %6855
  %6857 = load %nyx_string*, %nyx_string** %6808
  %6858 = call i1 @nyx_string_equals(%nyx_string* %6856, %nyx_string* %6857)
  br i1 %6858, label %then1137, label %else1138
then1137:
  %6859 = load %nyx_string*, %nyx_string** %6814
  store %nyx_string* %6859, %nyx_string** %6855
  br label %merge1139
else1138:
  br label %merge1139
merge1139:
  %6860 = load %nyx_string*, %nyx_string** %6855
  %6861 = load %nyx_string*, %nyx_string** %6830
  %6862 = call i1 @nyx_string_equals(%nyx_string* %6860, %nyx_string* %6861)
  br i1 %6862, label %then1140, label %else1141
then1140:
  %6863 = load %nyx_string*, %nyx_string** %6725
  %6864 = load %nyx_string*, %nyx_string** %6843
  %6865 = call %nyx_string* @capabilities_module_section(%nyx_string* %6863, %nyx_string* %6864)
  %6866 = alloca %nyx_string*
  store %nyx_string* %6865, %nyx_string** %6866
  %6867 = load %nyx_string*, %nyx_string** %6866
  %6868 = load %nyx_string*, %nyx_string** %6808
  %6869 = call i1 @nyx_string_equals(%nyx_string* %6867, %nyx_string* %6868)
  %6870 = xor i1 %6869, true
  br i1 %6870, label %then1143, label %else1144
then1143:
  %6871 = load %nyx_string*, %nyx_string** %6832
  %6872 = load %nyx_string*, %nyx_string** %6866
  %6873 = call %nyx_string* @nyx_string_concat(%nyx_string* %6871, %nyx_string* %6872)
  store %nyx_string* %6873, %nyx_string** %6832
  br label %merge1145
else1144:
  br label %merge1145
merge1145:
  br label %merge1142
else1141:
  br label %merge1142
merge1142:
  br label %merge1136
else1135:
  br label %merge1136
merge1136:
  %6874 = load i64, i64* %6833
  %6875 = add i64 %6874, 1
  store i64 %6875, i64* %6833
  br label %while_cond1131
while_end1133:
  %6876 = load %nyx_string*, %nyx_string** %6725
  %6877 = load %nyx_string*, %nyx_string** %6830
  %6878 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %6876, %nyx_string* %6877)
  %6879 = alloca %nyx_string*
  store %nyx_string* %6878, %nyx_string** %6879
  %6880 = alloca i1
  store i1 true, i1* %6880
  %6881 = load %nyx_string*, %nyx_string** %6832
  %6882 = load %nyx_string*, %nyx_string** %6808
  %6883 = call i1 @nyx_string_equals(%nyx_string* %6881, %nyx_string* %6882)
  %6884 = xor i1 %6883, true
  br i1 %6884, label %sc_or_end1147, label %sc_or_rhs1146
sc_or_rhs1146:
  %6885 = load %nyx_string*, %nyx_string** %6879
  %6886 = load %nyx_string*, %nyx_string** %6808
  %6887 = call i1 @nyx_string_equals(%nyx_string* %6885, %nyx_string* %6886)
  %6888 = xor i1 %6887, true
  store i1 %6888, i1* %6880
  br label %sc_or_end1147
sc_or_end1147:
  %6889 = load i1, i1* %6880
  br i1 %6889, label %then1148, label %else1149
then1148:
  %6890 = load %nyx_string*, %nyx_string** %6783
  %6891 = load %nyx_string*, %nyx_string** %6817
  %6892 = call %nyx_string* @nyx_string_concat(%nyx_string* %6890, %nyx_string* %6891)
  %6893 = load %nyx_string*, %nyx_string** %6830
  %6894 = call %nyx_string* @nyx_string_concat(%nyx_string* %6892, %nyx_string* %6893)
  %6895 = load %nyx_string*, %nyx_string** %6820
  %6896 = call %nyx_string* @nyx_string_concat(%nyx_string* %6894, %nyx_string* %6895)
  %6897 = load %nyx_string*, %nyx_string** %6832
  %6898 = call %nyx_string* @nyx_string_concat(%nyx_string* %6896, %nyx_string* %6897)
  %6899 = load %nyx_string*, %nyx_string** %6879
  %6900 = call %nyx_string* @nyx_string_concat(%nyx_string* %6898, %nyx_string* %6899)
  store %nyx_string* %6900, %nyx_string** %6783
  br label %merge1150
else1149:
  br label %merge1150
merge1150:
  %6901 = load i64, i64* %6805
  %6902 = add i64 %6901, 1
  store i64 %6902, i64* %6805
  br label %while_cond1128
while_end1130:
  %6903 = getelementptr [16 x i8], [16 x i8]* @.str1031, i32 0, i32 0
  %6904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %6903, i64 15)
  %6905 = alloca %nyx_string*
  store %nyx_string* %6904, %nyx_string** %6905
  %6906 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %6907 = getelementptr [1 x i8], [1 x i8]* @.str1032, i32 0, i32 0
  %6908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %6907, i64 0)
  %6909 = call i1 @nyx_string_equals(%nyx_string* %6906, %nyx_string* %6908)
  %6910 = xor i1 %6909, true
  br i1 %6910, label %then1151, label %else1152
then1151:
  %6911 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %6911, %nyx_string** %6905
  br label %merge1153
else1152:
  br label %merge1153
merge1153:
  %6912 = load %nyx_string*, %nyx_string** %6905
  %6913 = load %nyx_string*, %nyx_string** %6783
  %6914 = call i8* @nyx_string_to_cstr(%nyx_string* %6912)
  %6915 = call i1 @nyx_write_file_safe(i8* %6914, %nyx_string* %6913)
  %6916 = getelementptr [32 x i8], [32 x i8]* @.str1033, i32 0, i32 0
  %6917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %6916, i64 31)
  %6918 = load %nyx_string*, %nyx_string** %6725
  %6919 = call %nyx_string* @nyx_string_concat(%nyx_string* %6917, %nyx_string* %6918)
  %6920 = getelementptr [3 x i8], [3 x i8]* @.str1034, i32 0, i32 0
  %6921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %6920, i64 2)
  %6922 = call %nyx_string* @nyx_string_concat(%nyx_string* %6919, %nyx_string* %6921)
  %6923 = load { i64, i8* }*, { i64, i8* }** %6736
  %6924 = call i64 @nyx_array_length({ i64, i8* }* %6923)
  %6925 = call %nyx_string* @nyx_string_from_int(i64 %6924)
  %6926 = call %nyx_string* @nyx_string_concat(%nyx_string* %6922, %nyx_string* %6925)
  %6927 = getelementptr [22 x i8], [22 x i8]* @.str1035, i32 0, i32 0
  %6928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %6927, i64 21)
  %6929 = call %nyx_string* @nyx_string_concat(%nyx_string* %6926, %nyx_string* %6928)
  %6930 = call i8* @nyx_string_to_cstr(%nyx_string* %6929)
  call void @nyx_print_string(i8* %6930)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %6931 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %6932 = ptrtoint %SharedEnv_main* %6931 to i64
  %6933 = call i8* @GC_malloc(i64 %6932)
  %6934 = bitcast i8* %6933 to %SharedEnv_main*
  %6935 = call { i64, i8* }* @nyx_get_args()
  %6936 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 0
  store { i64, i8* }* %6935, { i64, i8* }** %6936
  %6937 = getelementptr [6 x i8], [6 x i8]* @.str1036, i32 0, i32 0
  %6938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %6937, i64 5)
  %6939 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 1
  store %nyx_string* %6938, %nyx_string** %6939
  %6940 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 2
  store i1 0, i1* %6940
  %6941 = getelementptr [1 x i8], [1 x i8]* @.str1037, i32 0, i32 0
  %6942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %6941, i64 0)
  %6943 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 3
  store %nyx_string* %6942, %nyx_string** %6943
  %6944 = getelementptr [1 x i8], [1 x i8]* @.str1038, i32 0, i32 0
  %6945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %6944, i64 0)
  %6946 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 4
  store %nyx_string* %6945, %nyx_string** %6946
  %6947 = load { i64, i8* }*, { i64, i8* }** %6936
  %6948 = call i64 @nyx_array_length({ i64, i8* }* %6947)
  %6949 = icmp sge i64 %6948, 2
  br i1 %6949, label %then1154, label %else1155
then1154:
  %6950 = load { i64, i8* }*, { i64, i8* }** %6936
  %6951 = call i64 @nyx_array_get_checked({ i64, i8* }* %6950, i64 1, i64 2)
  %6952 = inttoptr i64 %6951 to %nyx_string*
  %6953 = alloca %nyx_string*
  store %nyx_string* %6952, %nyx_string** %6953
  %6954 = load %nyx_string*, %nyx_string** %6953
  store %nyx_string* %6954, %nyx_string** %6939
  br label %merge1156
else1155:
  br label %merge1156
merge1156:
  %6955 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 5
  store i64 2, i64* %6955
  %6956 = getelementptr [1 x i8], [1 x i8]* @.str1039, i32 0, i32 0
  %6957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %6956, i64 0)
  %6958 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 6
  store %nyx_string* %6957, %nyx_string** %6958
  %6959 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 7
  store i1 0, i1* %6959
  %6960 = alloca i1
  store i1 true, i1* %6960
  %6961 = alloca i1
  store i1 true, i1* %6961
  %6962 = alloca i1
  store i1 true, i1* %6962
  %6963 = load %nyx_string*, %nyx_string** %6939
  %6964 = getelementptr [6 x i8], [6 x i8]* @.str1040, i32 0, i32 0
  %6965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %6964, i64 5)
  %6966 = call i1 @nyx_string_equals(%nyx_string* %6963, %nyx_string* %6965)
  br i1 %6966, label %sc_or_end1158, label %sc_or_rhs1157
sc_or_rhs1157:
  %6967 = load %nyx_string*, %nyx_string** %6939
  %6968 = getelementptr [4 x i8], [4 x i8]* @.str1041, i32 0, i32 0
  %6969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %6968, i64 3)
  %6970 = call i1 @nyx_string_equals(%nyx_string* %6967, %nyx_string* %6969)
  store i1 %6970, i1* %6962
  br label %sc_or_end1158
sc_or_end1158:
  %6971 = load i1, i1* %6962
  br i1 %6971, label %sc_or_end1160, label %sc_or_rhs1159
sc_or_rhs1159:
  %6972 = load %nyx_string*, %nyx_string** %6939
  %6973 = getelementptr [5 x i8], [5 x i8]* @.str1042, i32 0, i32 0
  %6974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %6973, i64 4)
  %6975 = call i1 @nyx_string_equals(%nyx_string* %6972, %nyx_string* %6974)
  store i1 %6975, i1* %6961
  br label %sc_or_end1160
sc_or_end1160:
  %6976 = load i1, i1* %6961
  br i1 %6976, label %sc_or_end1162, label %sc_or_rhs1161
sc_or_rhs1161:
  %6977 = load %nyx_string*, %nyx_string** %6939
  %6978 = getelementptr [5 x i8], [5 x i8]* @.str1043, i32 0, i32 0
  %6979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %6978, i64 4)
  %6980 = call i1 @nyx_string_equals(%nyx_string* %6977, %nyx_string* %6979)
  store i1 %6980, i1* %6960
  br label %sc_or_end1162
sc_or_end1162:
  %6981 = load i1, i1* %6960
  %6982 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 8
  store i1 %6981, i1* %6982
  %6983 = getelementptr [3 x i8], [3 x i8]* @.str1044, i32 0, i32 0
  %6984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %6983, i64 2)
  %6985 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 9
  store %nyx_string* %6984, %nyx_string** %6985
  %6986 = getelementptr [10 x i8], [10 x i8]* @.str1045, i32 0, i32 0
  %6987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %6986, i64 9)
  %6988 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 10
  store %nyx_string* %6987, %nyx_string** %6988
  %6989 = getelementptr [7 x i8], [7 x i8]* @.str1046, i32 0, i32 0
  %6990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %6989, i64 6)
  %6991 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 11
  store %nyx_string* %6990, %nyx_string** %6991
  %6992 = getelementptr [1 x i8], [1 x i8]* @.str1047, i32 0, i32 0
  %6993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %6992, i64 0)
  %6994 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 12
  store %nyx_string* %6993, %nyx_string** %6994
  %6995 = getelementptr [66 x i8], [66 x i8]* @.str1048, i32 0, i32 0
  %6996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %6995, i64 65)
  %6997 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 13
  store %nyx_string* %6996, %nyx_string** %6997
  %6998 = getelementptr [7 x i8], [7 x i8]* @.str1049, i32 0, i32 0
  %6999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %6998, i64 6)
  %7000 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 14
  store %nyx_string* %6999, %nyx_string** %7000
  %7001 = getelementptr [3 x i8], [3 x i8]* @.str1050, i32 0, i32 0
  %7002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %7001, i64 2)
  %7003 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 15
  store %nyx_string* %7002, %nyx_string** %7003
  %7004 = getelementptr [9 x i8], [9 x i8]* @.str1051, i32 0, i32 0
  %7005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %7004, i64 8)
  %7006 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 16
  store %nyx_string* %7005, %nyx_string** %7006
  %7007 = getelementptr [63 x i8], [63 x i8]* @.str1052, i32 0, i32 0
  %7008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %7007, i64 62)
  %7009 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 17
  store %nyx_string* %7008, %nyx_string** %7009
  %7010 = getelementptr [28 x i8], [28 x i8]* @.str1053, i32 0, i32 0
  %7011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %7010, i64 27)
  %7012 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 18
  store %nyx_string* %7011, %nyx_string** %7012
  %7013 = getelementptr [4 x i8], [4 x i8]* @.str1054, i32 0, i32 0
  %7014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %7013, i64 3)
  %7015 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 19
  store %nyx_string* %7014, %nyx_string** %7015
  %7016 = call i8* @llvm.stacksave()
  br label %while_cond1163
while_cond1163:
  %7017 = load i64, i64* %6955
  %7018 = load { i64, i8* }*, { i64, i8* }** %6936
  %7019 = call i64 @nyx_array_length({ i64, i8* }* %7018)
  %7020 = icmp slt i64 %7017, %7019
  br i1 %7020, label %while_body1164, label %while_end1165
while_body1164:
  call void @llvm.stackrestore(i8* %7016)
  %7021 = load { i64, i8* }*, { i64, i8* }** %6936
  %7022 = load i64, i64* %6955
  %7023 = call i64 @nyx_array_get_checked({ i64, i8* }* %7021, i64 %7022, i64 2)
  %7024 = inttoptr i64 %7023 to %nyx_string*
  %7025 = alloca %nyx_string*
  store %nyx_string* %7024, %nyx_string** %7025
  %7026 = load %nyx_string*, %nyx_string** %7025
  %7027 = load %nyx_string*, %nyx_string** %6985
  %7028 = call i1 @nyx_string_equals(%nyx_string* %7026, %nyx_string* %7027)
  br i1 %7028, label %then1166, label %else1167
then1166:
  %7029 = load { i64, i8* }*, { i64, i8* }** %6936
  %7030 = call i64 @nyx_array_length({ i64, i8* }* %7029)
  store i64 %7030, i64* %6955
  br label %merge1168
else1167:
  %7031 = load %nyx_string*, %nyx_string** %7025
  %7032 = load %nyx_string*, %nyx_string** %6988
  %7033 = call i1 @nyx_string_equals(%nyx_string* %7031, %nyx_string* %7032)
  br i1 %7033, label %then1169, label %else1170
then1169:
  store i1 1, i1* %6940
  br label %merge1171
else1170:
  %7034 = load %nyx_string*, %nyx_string** %7025
  %7035 = load %nyx_string*, %nyx_string** %6991
  %7036 = call i1 @nyx_string_equals(%nyx_string* %7034, %nyx_string* %7035)
  br i1 %7036, label %then1172, label %else1173
then1172:
  %7037 = load %nyx_string*, %nyx_string** %6994
  %7038 = alloca %nyx_string*
  store %nyx_string* %7037, %nyx_string** %7038
  %7039 = load i64, i64* %6955
  %7040 = add i64 %7039, 1
  %7041 = load { i64, i8* }*, { i64, i8* }** %6936
  %7042 = call i64 @nyx_array_length({ i64, i8* }* %7041)
  %7043 = icmp slt i64 %7040, %7042
  br i1 %7043, label %then1175, label %else1176
then1175:
  %7044 = load { i64, i8* }*, { i64, i8* }** %6936
  %7045 = load i64, i64* %6955
  %7046 = add i64 %7045, 1
  %7047 = call i64 @nyx_array_get_checked({ i64, i8* }* %7044, i64 %7046, i64 2)
  %7048 = inttoptr i64 %7047 to %nyx_string*
  %7049 = alloca %nyx_string*
  store %nyx_string* %7048, %nyx_string** %7049
  %7050 = load %nyx_string*, %nyx_string** %7049
  %7051 = load %nyx_string*, %nyx_string** %6985
  %7052 = call i1 @nyx_string_starts_with(%nyx_string* %7050, %nyx_string* %7051)
  %7053 = xor i1 %7052, true
  br i1 %7053, label %then1178, label %else1179
then1178:
  %7054 = load %nyx_string*, %nyx_string** %7049
  store %nyx_string* %7054, %nyx_string** %7038
  br label %merge1180
else1179:
  br label %merge1180
merge1180:
  br label %merge1177
else1176:
  br label %merge1177
merge1177:
  %7055 = load %nyx_string*, %nyx_string** %7038
  %7056 = load %nyx_string*, %nyx_string** %6994
  %7057 = call i1 @nyx_string_equals(%nyx_string* %7055, %nyx_string* %7056)
  br i1 %7057, label %then1181, label %else1182
then1181:
  %7058 = load %nyx_string*, %nyx_string** %6958
  %7059 = load %nyx_string*, %nyx_string** %6994
  %7060 = call i1 @nyx_string_equals(%nyx_string* %7058, %nyx_string* %7059)
  br i1 %7060, label %then1184, label %else1185
then1184:
  %7061 = load %nyx_string*, %nyx_string** %6997
  store %nyx_string* %7061, %nyx_string** %6958
  br label %merge1186
else1185:
  br label %merge1186
merge1186:
  br label %merge1183
else1182:
  %7062 = load %nyx_string*, %nyx_string** %7038
  store %nyx_string* %7062, %nyx_string** %6946
  %7063 = load i64, i64* %6955
  %7064 = add i64 %7063, 1
  store i64 %7064, i64* %6955
  br label %merge1183
merge1183:
  br label %merge1174
else1173:
  %7065 = alloca i1
  store i1 true, i1* %7065
  %7066 = load %nyx_string*, %nyx_string** %7025
  %7067 = load %nyx_string*, %nyx_string** %7000
  %7068 = call i1 @nyx_string_equals(%nyx_string* %7066, %nyx_string* %7067)
  br i1 %7068, label %sc_or_end1188, label %sc_or_rhs1187
sc_or_rhs1187:
  %7069 = load %nyx_string*, %nyx_string** %7025
  %7070 = load %nyx_string*, %nyx_string** %7003
  %7071 = call i1 @nyx_string_equals(%nyx_string* %7069, %nyx_string* %7070)
  store i1 %7071, i1* %7065
  br label %sc_or_end1188
sc_or_end1188:
  %7072 = load i1, i1* %7065
  br i1 %7072, label %then1189, label %else1190
then1189:
  store i1 1, i1* %6959
  br label %merge1191
else1190:
  %7073 = load %nyx_string*, %nyx_string** %7025
  %7074 = load %nyx_string*, %nyx_string** %7006
  %7075 = call i1 @nyx_string_equals(%nyx_string* %7073, %nyx_string* %7074)
  br i1 %7075, label %then1192, label %else1193
then1192:
  %7076 = load i64, i64* %6955
  %7077 = add i64 %7076, 1
  %7078 = load { i64, i8* }*, { i64, i8* }** %6936
  %7079 = call i64 @nyx_array_length({ i64, i8* }* %7078)
  %7080 = icmp slt i64 %7077, %7079
  br i1 %7080, label %then1195, label %else1196
then1195:
  %7081 = load { i64, i8* }*, { i64, i8* }** %6936
  %7082 = load i64, i64* %6955
  %7083 = add i64 %7082, 1
  %7084 = call i64 @nyx_array_get_checked({ i64, i8* }* %7081, i64 %7083, i64 2)
  %7085 = inttoptr i64 %7084 to %nyx_string*
  %7086 = alloca %nyx_string*
  store %nyx_string* %7085, %nyx_string** %7086
  %7087 = load %nyx_string*, %nyx_string** %7086
  store %nyx_string* %7087, %nyx_string** %6943
  %7088 = load i64, i64* %6955
  %7089 = add i64 %7088, 1
  store i64 %7089, i64* %6955
  br label %merge1197
else1196:
  %7090 = load %nyx_string*, %nyx_string** %7009
  store %nyx_string* %7090, %nyx_string** %6958
  br label %merge1197
merge1197:
  br label %merge1194
else1193:
  %7091 = alloca i1
  store i1 false, i1* %7091
  %7092 = load i1, i1* %6982
  br i1 %7092, label %sc_and_rhs1198, label %sc_and_end1199
sc_and_rhs1198:
  %7093 = load %nyx_string*, %nyx_string** %7025
  %7094 = call i64 @nyx_string_byte_length(%nyx_string* %7093)
  %7095 = icmp sgt i64 %7094, 1
  store i1 %7095, i1* %7091
  br label %sc_and_end1199
sc_and_end1199:
  %7096 = load i1, i1* %7091
  br i1 %7096, label %then1200, label %else1201
then1200:
  %7097 = alloca i1
  store i1 false, i1* %7097
  %7098 = load %nyx_string*, %nyx_string** %7025
  %7099 = call i8 @nyx_string_char_at(%nyx_string* %7098, i64 0)
  %7100 = zext i8 %7099 to i64
  %7101 = getelementptr [1 x i8], [1 x i8]* @.str1055, i32 0, i32 0
  %7102 = load i8, i8* %7101
  %7103 = zext i8 %7102 to i64
  %7104 = icmp eq i64 %7100, %7103
  br i1 %7104, label %sc_and_rhs1203, label %sc_and_end1204
sc_and_rhs1203:
  %7105 = load %nyx_string*, %nyx_string** %6958
  %7106 = load %nyx_string*, %nyx_string** %6994
  %7107 = call i1 @nyx_string_equals(%nyx_string* %7105, %nyx_string* %7106)
  store i1 %7107, i1* %7097
  br label %sc_and_end1204
sc_and_end1204:
  %7108 = load i1, i1* %7097
  br i1 %7108, label %then1205, label %else1206
then1205:
  %7109 = load %nyx_string*, %nyx_string** %7012
  %7110 = load %nyx_string*, %nyx_string** %6939
  %7111 = call %nyx_string* @nyx_string_concat(%nyx_string* %7109, %nyx_string* %7110)
  %7112 = load %nyx_string*, %nyx_string** %7015
  %7113 = call %nyx_string* @nyx_string_concat(%nyx_string* %7111, %nyx_string* %7112)
  %7114 = load %nyx_string*, %nyx_string** %7025
  %7115 = call %nyx_string* @nyx_string_concat(%nyx_string* %7113, %nyx_string* %7114)
  store %nyx_string* %7115, %nyx_string** %6958
  br label %merge1207
else1206:
  br label %merge1207
merge1207:
  br label %merge1202
else1201:
  br label %merge1202
merge1202:
  br label %merge1194
merge1194:
  br label %merge1191
merge1191:
  br label %merge1174
merge1174:
  br label %merge1171
merge1171:
  br label %merge1168
merge1168:
  %7116 = load i64, i64* %6955
  %7117 = add i64 %7116, 1
  store i64 %7117, i64* %6955
  br label %while_cond1163
while_end1165:
  %7118 = alloca i1
  store i1 false, i1* %7118
  %7119 = load i1, i1* %6959
  br i1 %7119, label %sc_and_rhs1208, label %sc_and_end1209
sc_and_rhs1208:
  %7120 = load i1, i1* %6982
  store i1 %7120, i1* %7118
  br label %sc_and_end1209
sc_and_end1209:
  %7121 = load i1, i1* %7118
  br i1 %7121, label %then1210, label %else1211
then1210:
  %7122 = getelementptr [5 x i8], [5 x i8]* @.str1056, i32 0, i32 0
  %7123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %7122, i64 4)
  %7124 = load %nyx_string*, %nyx_string** %6939
  %7125 = call %nyx_string* @nyx_string_concat(%nyx_string* %7123, %nyx_string* %7124)
  %7126 = getelementptr [24 x i8], [24 x i8]* @.str1057, i32 0, i32 0
  %7127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %7126, i64 23)
  %7128 = call %nyx_string* @nyx_string_concat(%nyx_string* %7125, %nyx_string* %7127)
  %7129 = call i8* @nyx_string_to_cstr(%nyx_string* %7128)
  call void @nyx_print_string(i8* %7129)
  %7130 = getelementptr [42 x i8], [42 x i8]* @.str1058, i32 0, i32 0
  %7131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %7130, i64 41)
  %7132 = call i8* @nyx_string_to_cstr(%nyx_string* %7131)
  call void @nyx_print_string(i8* %7132)
  %7133 = getelementptr [88 x i8], [88 x i8]* @.str1059, i32 0, i32 0
  %7134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %7133, i64 87)
  %7135 = call i8* @nyx_string_to_cstr(%nyx_string* %7134)
  call void @nyx_print_string(i8* %7135)
  %7136 = getelementptr [94 x i8], [94 x i8]* @.str1060, i32 0, i32 0
  %7137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %7136, i64 93)
  %7138 = call i8* @nyx_string_to_cstr(%nyx_string* %7137)
  call void @nyx_print_string(i8* %7138)
  %7139 = getelementptr [94 x i8], [94 x i8]* @.str1061, i32 0, i32 0
  %7140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %7139, i64 93)
  %7141 = call i8* @nyx_string_to_cstr(%nyx_string* %7140)
  call void @nyx_print_string(i8* %7141)
  %7142 = getelementptr [34 x i8], [34 x i8]* @.str1062, i32 0, i32 0
  %7143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %7142, i64 33)
  %7144 = call i8* @nyx_string_to_cstr(%nyx_string* %7143)
  call void @nyx_print_string(i8* %7144)
  %7145 = getelementptr [1 x i8], [1 x i8]* @.str1063, i32 0, i32 0
  %7146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %7145, i64 0)
  %7147 = call i8* @nyx_string_to_cstr(%nyx_string* %7146)
  call void @nyx_print_string(i8* %7147)
  %7148 = getelementptr [71 x i8], [71 x i8]* @.str1064, i32 0, i32 0
  %7149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %7148, i64 70)
  %7150 = call i8* @nyx_string_to_cstr(%nyx_string* %7149)
  call void @nyx_print_string(i8* %7150)
  ret i64 0
else1211:
  br label %merge1212
merge1212:
  %7151 = load %nyx_string*, %nyx_string** %6958
  %7152 = getelementptr [1 x i8], [1 x i8]* @.str1065, i32 0, i32 0
  %7153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %7152, i64 0)
  %7154 = call i1 @nyx_string_equals(%nyx_string* %7151, %nyx_string* %7153)
  %7155 = xor i1 %7154, true
  br i1 %7155, label %then1213, label %else1214
then1213:
  %7156 = getelementptr [8 x i8], [8 x i8]* @.str1066, i32 0, i32 0
  %7157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %7156, i64 7)
  %7158 = load %nyx_string*, %nyx_string** %6958
  %7159 = call %nyx_string* @nyx_string_concat(%nyx_string* %7157, %nyx_string* %7158)
  %7160 = call i8* @nyx_string_to_cstr(%nyx_string* %7159)
  call void @nyx_print_string(i8* %7160)
  %7161 = getelementptr [8 x i8], [8 x i8]* @.str1067, i32 0, i32 0
  %7162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %7161, i64 7)
  %7163 = load %nyx_string*, %nyx_string** %6939
  %7164 = call %nyx_string* @nyx_string_concat(%nyx_string* %7162, %nyx_string* %7163)
  %7165 = getelementptr [37 x i8], [37 x i8]* @.str1068, i32 0, i32 0
  %7166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %7165, i64 36)
  %7167 = call %nyx_string* @nyx_string_concat(%nyx_string* %7164, %nyx_string* %7166)
  %7168 = call i8* @nyx_string_to_cstr(%nyx_string* %7167)
  call void @nyx_print_string(i8* %7168)
  ret i64 1
else1214:
  br label %merge1215
merge1215:
  %7169 = getelementptr [6 x i8], [6 x i8]* @.str1069, i32 0, i32 0
  %7170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %7169, i64 5)
  %7171 = call %nyx_string* @toolchain_version()
  %7172 = call %nyx_string* @nyx_string_concat(%nyx_string* %7170, %nyx_string* %7171)
  %7173 = getelementptr [6 x i8], [6 x i8]* @.str1070, i32 0, i32 0
  %7174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %7173, i64 5)
  %7175 = call %nyx_string* @nyx_string_concat(%nyx_string* %7172, %nyx_string* %7174)
  %7176 = load %nyx_string*, %nyx_string** %6939
  %7177 = call %nyx_string* @nyx_string_concat(%nyx_string* %7175, %nyx_string* %7176)
  %7178 = call i8* @nyx_string_to_cstr(%nyx_string* %7177)
  call void @nyx_print_string(i8* %7178)
  %7179 = load %nyx_string*, %nyx_string** %6939
  %7180 = getelementptr [5 x i8], [5 x i8]* @.str1071, i32 0, i32 0
  %7181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %7180, i64 4)
  %7182 = call i1 @nyx_string_equals(%nyx_string* %7179, %nyx_string* %7181)
  br i1 %7182, label %then1216, label %else1217
then1216:
  %7183 = getelementptr [1 x i8], [1 x i8]* @.str1072, i32 0, i32 0
  %7184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %7183, i64 0)
  %7185 = alloca %nyx_string*
  store %nyx_string* %7184, %nyx_string** %7185
  %7186 = getelementptr [1 x i8], [1 x i8]* @.str1073, i32 0, i32 0
  %7187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %7186, i64 0)
  %7188 = alloca %nyx_string*
  store %nyx_string* %7187, %nyx_string** %7188
  %7189 = getelementptr [1 x i8], [1 x i8]* @.str1074, i32 0, i32 0
  %7190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %7189, i64 0)
  %7191 = alloca %nyx_string*
  store %nyx_string* %7190, %nyx_string** %7191
  %7192 = alloca i1
  store i1 0, i1* %7192
  %7193 = getelementptr [1 x i8], [1 x i8]* @.str1075, i32 0, i32 0
  %7194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %7193, i64 0)
  %7195 = alloca %nyx_string*
  store %nyx_string* %7194, %nyx_string** %7195
  %7196 = getelementptr [1 x i8], [1 x i8]* @.str1076, i32 0, i32 0
  %7197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %7196, i64 0)
  %7198 = alloca %nyx_string*
  store %nyx_string* %7197, %nyx_string** %7198
  %7199 = alloca i64
  store i64 2, i64* %7199
  %7200 = getelementptr [7 x i8], [7 x i8]* @.str1077, i32 0, i32 0
  %7201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %7200, i64 6)
  %7202 = alloca %nyx_string*
  store %nyx_string* %7201, %nyx_string** %7202
  %7203 = getelementptr [8 x i8], [8 x i8]* @.str1078, i32 0, i32 0
  %7204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %7203, i64 7)
  %7205 = alloca %nyx_string*
  store %nyx_string* %7204, %nyx_string** %7205
  %7206 = getelementptr [1 x i8], [1 x i8]* @.str1079, i32 0, i32 0
  %7207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %7206, i64 0)
  %7208 = alloca %nyx_string*
  store %nyx_string* %7207, %nyx_string** %7208
  %7209 = getelementptr [3 x i8], [3 x i8]* @.str1080, i32 0, i32 0
  %7210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %7209, i64 2)
  %7211 = alloca %nyx_string*
  store %nyx_string* %7210, %nyx_string** %7211
  %7212 = getelementptr [8 x i8], [8 x i8]* @.str1081, i32 0, i32 0
  %7213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %7212, i64 7)
  %7214 = alloca %nyx_string*
  store %nyx_string* %7213, %nyx_string** %7214
  %7215 = getelementptr [9 x i8], [9 x i8]* @.str1082, i32 0, i32 0
  %7216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %7215, i64 8)
  %7217 = alloca %nyx_string*
  store %nyx_string* %7216, %nyx_string** %7217
  %7218 = getelementptr [6 x i8], [6 x i8]* @.str1083, i32 0, i32 0
  %7219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %7218, i64 5)
  %7220 = alloca %nyx_string*
  store %nyx_string* %7219, %nyx_string** %7220
  %7221 = call i8* @llvm.stacksave()
  br label %while_cond1219
while_cond1219:
  %7222 = load i64, i64* %7199
  %7223 = load { i64, i8* }*, { i64, i8* }** %6936
  %7224 = call i64 @nyx_array_length({ i64, i8* }* %7223)
  %7225 = icmp slt i64 %7222, %7224
  br i1 %7225, label %while_body1220, label %while_end1221
while_body1220:
  call void @llvm.stackrestore(i8* %7221)
  %7226 = load { i64, i8* }*, { i64, i8* }** %6936
  %7227 = load i64, i64* %7199
  %7228 = call i64 @nyx_array_get_checked({ i64, i8* }* %7226, i64 %7227, i64 2)
  %7229 = inttoptr i64 %7228 to %nyx_string*
  %7230 = alloca %nyx_string*
  store %nyx_string* %7229, %nyx_string** %7230
  %7231 = alloca i1
  store i1 0, i1* %7231
  %7232 = alloca i1
  store i1 true, i1* %7232
  %7233 = load %nyx_string*, %nyx_string** %7230
  %7234 = load %nyx_string*, %nyx_string** %7202
  %7235 = call i1 @nyx_string_equals(%nyx_string* %7233, %nyx_string* %7234)
  br i1 %7235, label %sc_or_end1223, label %sc_or_rhs1222
sc_or_rhs1222:
  %7236 = load %nyx_string*, %nyx_string** %7230
  %7237 = load %nyx_string*, %nyx_string** %7205
  %7238 = call i1 @nyx_string_equals(%nyx_string* %7236, %nyx_string* %7237)
  store i1 %7238, i1* %7232
  br label %sc_or_end1223
sc_or_end1223:
  %7239 = load i1, i1* %7232
  br i1 %7239, label %then1224, label %else1225
then1224:
  store i1 1, i1* %7231
  %7240 = load %nyx_string*, %nyx_string** %7208
  %7241 = alloca %nyx_string*
  store %nyx_string* %7240, %nyx_string** %7241
  %7242 = load i64, i64* %7199
  %7243 = add i64 %7242, 1
  %7244 = load { i64, i8* }*, { i64, i8* }** %6936
  %7245 = call i64 @nyx_array_length({ i64, i8* }* %7244)
  %7246 = icmp slt i64 %7243, %7245
  br i1 %7246, label %then1227, label %else1228
then1227:
  %7247 = load { i64, i8* }*, { i64, i8* }** %6936
  %7248 = load i64, i64* %7199
  %7249 = add i64 %7248, 1
  %7250 = call i64 @nyx_array_get_checked({ i64, i8* }* %7247, i64 %7249, i64 2)
  %7251 = inttoptr i64 %7250 to %nyx_string*
  %7252 = alloca %nyx_string*
  store %nyx_string* %7251, %nyx_string** %7252
  %7253 = load %nyx_string*, %nyx_string** %7252
  %7254 = load %nyx_string*, %nyx_string** %7211
  %7255 = call i1 @nyx_string_starts_with(%nyx_string* %7253, %nyx_string* %7254)
  %7256 = icmp eq i1 %7255, 0
  br i1 %7256, label %then1230, label %else1231
then1230:
  %7257 = load %nyx_string*, %nyx_string** %7252
  store %nyx_string* %7257, %nyx_string** %7241
  br label %merge1232
else1231:
  br label %merge1232
merge1232:
  br label %merge1229
else1228:
  br label %merge1229
merge1229:
  %7258 = load %nyx_string*, %nyx_string** %7241
  %7259 = load %nyx_string*, %nyx_string** %7208
  %7260 = call i1 @nyx_string_equals(%nyx_string* %7258, %nyx_string* %7259)
  br i1 %7260, label %then1233, label %else1234
then1233:
  %7261 = load %nyx_string*, %nyx_string** %7230
  store %nyx_string* %7261, %nyx_string** %7198
  br label %merge1235
else1234:
  %7262 = load %nyx_string*, %nyx_string** %7230
  %7263 = load %nyx_string*, %nyx_string** %7202
  %7264 = call i1 @nyx_string_equals(%nyx_string* %7262, %nyx_string* %7263)
  br i1 %7264, label %then1236, label %else1237
then1236:
  %7265 = load %nyx_string*, %nyx_string** %7241
  store %nyx_string* %7265, %nyx_string** %7188
  br label %merge1238
else1237:
  br label %merge1238
merge1238:
  %7266 = load %nyx_string*, %nyx_string** %7230
  %7267 = load %nyx_string*, %nyx_string** %7205
  %7268 = call i1 @nyx_string_equals(%nyx_string* %7266, %nyx_string* %7267)
  br i1 %7268, label %then1239, label %else1240
then1239:
  %7269 = load %nyx_string*, %nyx_string** %7241
  store %nyx_string* %7269, %nyx_string** %7191
  br label %merge1241
else1240:
  br label %merge1241
merge1241:
  %7270 = load i64, i64* %7199
  %7271 = add i64 %7270, 1
  store i64 %7271, i64* %7199
  br label %merge1235
merge1235:
  br label %merge1226
else1225:
  br label %merge1226
merge1226:
  %7272 = alloca i1
  store i1 false, i1* %7272
  %7273 = load i1, i1* %7231
  %7274 = icmp eq i1 %7273, 0
  br i1 %7274, label %sc_and_rhs1242, label %sc_and_end1243
sc_and_rhs1242:
  %7275 = load %nyx_string*, %nyx_string** %7230
  %7276 = load %nyx_string*, %nyx_string** %7214
  %7277 = call i1 @nyx_string_starts_with(%nyx_string* %7275, %nyx_string* %7276)
  store i1 %7277, i1* %7272
  br label %sc_and_end1243
sc_and_end1243:
  %7278 = load i1, i1* %7272
  br i1 %7278, label %then1244, label %else1245
then1244:
  store i1 1, i1* %7231
  %7279 = load %nyx_string*, %nyx_string** %7230
  %7280 = load %nyx_string*, %nyx_string** %7230
  %7281 = call i64 @nyx_string_byte_length(%nyx_string* %7280)
  %7282 = call %nyx_string* @nyx_string_substring(%nyx_string* %7279, i64 7, i64 %7281)
  store %nyx_string* %7282, %nyx_string** %7188
  %7283 = load %nyx_string*, %nyx_string** %7188
  %7284 = load %nyx_string*, %nyx_string** %7208
  %7285 = call i1 @nyx_string_equals(%nyx_string* %7283, %nyx_string* %7284)
  br i1 %7285, label %then1247, label %else1248
then1247:
  %7286 = load %nyx_string*, %nyx_string** %7202
  store %nyx_string* %7286, %nyx_string** %7198
  br label %merge1249
else1248:
  br label %merge1249
merge1249:
  br label %merge1246
else1245:
  br label %merge1246
merge1246:
  %7287 = alloca i1
  store i1 false, i1* %7287
  %7288 = load i1, i1* %7231
  %7289 = icmp eq i1 %7288, 0
  br i1 %7289, label %sc_and_rhs1250, label %sc_and_end1251
sc_and_rhs1250:
  %7290 = load %nyx_string*, %nyx_string** %7230
  %7291 = load %nyx_string*, %nyx_string** %7217
  %7292 = call i1 @nyx_string_starts_with(%nyx_string* %7290, %nyx_string* %7291)
  store i1 %7292, i1* %7287
  br label %sc_and_end1251
sc_and_end1251:
  %7293 = load i1, i1* %7287
  br i1 %7293, label %then1252, label %else1253
then1252:
  store i1 1, i1* %7231
  %7294 = load %nyx_string*, %nyx_string** %7230
  %7295 = load %nyx_string*, %nyx_string** %7230
  %7296 = call i64 @nyx_string_byte_length(%nyx_string* %7295)
  %7297 = call %nyx_string* @nyx_string_substring(%nyx_string* %7294, i64 8, i64 %7296)
  store %nyx_string* %7297, %nyx_string** %7191
  %7298 = load %nyx_string*, %nyx_string** %7191
  %7299 = load %nyx_string*, %nyx_string** %7208
  %7300 = call i1 @nyx_string_equals(%nyx_string* %7298, %nyx_string* %7299)
  br i1 %7300, label %then1255, label %else1256
then1255:
  %7301 = load %nyx_string*, %nyx_string** %7205
  store %nyx_string* %7301, %nyx_string** %7198
  br label %merge1257
else1256:
  br label %merge1257
merge1257:
  br label %merge1254
else1253:
  br label %merge1254
merge1254:
  %7302 = alloca i1
  store i1 false, i1* %7302
  %7303 = load i1, i1* %7231
  %7304 = icmp eq i1 %7303, 0
  br i1 %7304, label %sc_and_rhs1258, label %sc_and_end1259
sc_and_rhs1258:
  %7305 = load %nyx_string*, %nyx_string** %7230
  %7306 = load %nyx_string*, %nyx_string** %7220
  %7307 = call i1 @nyx_string_equals(%nyx_string* %7305, %nyx_string* %7306)
  store i1 %7307, i1* %7302
  br label %sc_and_end1259
sc_and_end1259:
  %7308 = load i1, i1* %7302
  br i1 %7308, label %then1260, label %else1261
then1260:
  store i1 1, i1* %7231
  store i1 1, i1* %7192
  br label %merge1262
else1261:
  br label %merge1262
merge1262:
  %7309 = alloca i1
  store i1 false, i1* %7309
  %7310 = load i1, i1* %7231
  %7311 = icmp eq i1 %7310, 0
  br i1 %7311, label %sc_and_rhs1263, label %sc_and_end1264
sc_and_rhs1263:
  %7312 = load %nyx_string*, %nyx_string** %7230
  %7313 = load %nyx_string*, %nyx_string** %7211
  %7314 = call i1 @nyx_string_starts_with(%nyx_string* %7312, %nyx_string* %7313)
  store i1 %7314, i1* %7309
  br label %sc_and_end1264
sc_and_end1264:
  %7315 = load i1, i1* %7309
  br i1 %7315, label %then1265, label %else1266
then1265:
  store i1 1, i1* %7231
  %7316 = load %nyx_string*, %nyx_string** %7230
  store %nyx_string* %7316, %nyx_string** %7195
  br label %merge1267
else1266:
  br label %merge1267
merge1267:
  %7317 = load i1, i1* %7231
  %7318 = icmp eq i1 %7317, 0
  br i1 %7318, label %then1268, label %else1269
then1268:
  %7319 = load %nyx_string*, %nyx_string** %7185
  %7320 = load %nyx_string*, %nyx_string** %7208
  %7321 = call i1 @nyx_string_equals(%nyx_string* %7319, %nyx_string* %7320)
  br i1 %7321, label %then1271, label %else1272
then1271:
  %7322 = load %nyx_string*, %nyx_string** %7230
  store %nyx_string* %7322, %nyx_string** %7185
  br label %merge1273
else1272:
  br label %merge1273
merge1273:
  br label %merge1270
else1269:
  br label %merge1270
merge1270:
  %7323 = load i64, i64* %7199
  %7324 = add i64 %7323, 1
  store i64 %7324, i64* %7199
  br label %while_cond1219
while_end1221:
  %7325 = load %nyx_string*, %nyx_string** %7195
  %7326 = getelementptr [1 x i8], [1 x i8]* @.str1084, i32 0, i32 0
  %7327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %7326, i64 0)
  %7328 = call i1 @nyx_string_equals(%nyx_string* %7325, %nyx_string* %7327)
  %7329 = xor i1 %7328, true
  br i1 %7329, label %then1274, label %else1275
then1274:
  %7330 = getelementptr [42 x i8], [42 x i8]* @.str1085, i32 0, i32 0
  %7331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %7330, i64 41)
  %7332 = load %nyx_string*, %nyx_string** %7195
  %7333 = call %nyx_string* @nyx_string_concat(%nyx_string* %7331, %nyx_string* %7332)
  %7334 = call i8* @nyx_string_to_cstr(%nyx_string* %7333)
  call void @nyx_print_string(i8* %7334)
  %7335 = getelementptr [80 x i8], [80 x i8]* @.str1086, i32 0, i32 0
  %7336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %7335, i64 79)
  %7337 = call i8* @nyx_string_to_cstr(%nyx_string* %7336)
  call void @nyx_print_string(i8* %7337)
  ret i64 1
else1275:
  br label %merge1276
merge1276:
  %7338 = load %nyx_string*, %nyx_string** %7198
  %7339 = getelementptr [1 x i8], [1 x i8]* @.str1087, i32 0, i32 0
  %7340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %7339, i64 0)
  %7341 = call i1 @nyx_string_equals(%nyx_string* %7338, %nyx_string* %7340)
  %7342 = xor i1 %7341, true
  br i1 %7342, label %then1277, label %else1278
then1277:
  %7343 = getelementptr [8 x i8], [8 x i8]* @.str1088, i32 0, i32 0
  %7344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %7343, i64 7)
  %7345 = load %nyx_string*, %nyx_string** %7198
  %7346 = call %nyx_string* @nyx_string_concat(%nyx_string* %7344, %nyx_string* %7345)
  %7347 = getelementptr [19 x i8], [19 x i8]* @.str1089, i32 0, i32 0
  %7348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %7347, i64 18)
  %7349 = call %nyx_string* @nyx_string_concat(%nyx_string* %7346, %nyx_string* %7348)
  %7350 = call i8* @nyx_string_to_cstr(%nyx_string* %7349)
  call void @nyx_print_string(i8* %7350)
  %7351 = getelementptr [80 x i8], [80 x i8]* @.str1090, i32 0, i32 0
  %7352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %7351, i64 79)
  %7353 = call i8* @nyx_string_to_cstr(%nyx_string* %7352)
  call void @nyx_print_string(i8* %7353)
  ret i64 1
else1278:
  br label %merge1279
merge1279:
  %7354 = load %nyx_string*, %nyx_string** %7188
  %7355 = getelementptr [1 x i8], [1 x i8]* @.str1091, i32 0, i32 0
  %7356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %7355, i64 0)
  %7357 = call i1 @nyx_string_equals(%nyx_string* %7354, %nyx_string* %7356)
  br i1 %7357, label %then1280, label %else1281
then1280:
  %7358 = getelementptr [9 x i8], [9 x i8]* @.str1092, i32 0, i32 0
  %7359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %7358, i64 8)
  %7360 = call i8* @nyx_string_to_cstr(%nyx_string* %7359)
  %7361 = call %nyx_string* @nyx_getenv(i8* %7360)
  %7362 = alloca %nyx_string*
  store %nyx_string* %7361, %nyx_string** %7362
  %7363 = load %nyx_string*, %nyx_string** %7362
  %7364 = getelementptr [3 x i8], [3 x i8]* @.str1093, i32 0, i32 0
  %7365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %7364, i64 2)
  %7366 = call i1 @nyx_string_equals(%nyx_string* %7363, %nyx_string* %7365)
  br i1 %7366, label %then1283, label %else1284
then1283:
  %7367 = getelementptr [3 x i8], [3 x i8]* @.str1094, i32 0, i32 0
  %7368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %7367, i64 2)
  store %nyx_string* %7368, %nyx_string** %7188
  br label %merge1285
else1284:
  br label %merge1285
merge1285:
  %7369 = load %nyx_string*, %nyx_string** %7188
  %7370 = getelementptr [1 x i8], [1 x i8]* @.str1095, i32 0, i32 0
  %7371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %7370, i64 0)
  %7372 = call i1 @nyx_string_equals(%nyx_string* %7369, %nyx_string* %7371)
  br i1 %7372, label %then1286, label %else1287
then1286:
  %7373 = getelementptr [3 x i8], [3 x i8]* @.str1096, i32 0, i32 0
  %7374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %7373, i64 2)
  store %nyx_string* %7374, %nyx_string** %7188
  br label %merge1288
else1287:
  br label %merge1288
merge1288:
  br label %merge1282
else1281:
  br label %merge1282
merge1282:
  %7375 = alloca i1
  store i1 false, i1* %7375
  %7376 = load %nyx_string*, %nyx_string** %7188
  %7377 = getelementptr [3 x i8], [3 x i8]* @.str1097, i32 0, i32 0
  %7378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %7377, i64 2)
  %7379 = call i1 @nyx_string_equals(%nyx_string* %7376, %nyx_string* %7378)
  %7380 = xor i1 %7379, true
  br i1 %7380, label %sc_and_rhs1289, label %sc_and_end1290
sc_and_rhs1289:
  %7381 = load %nyx_string*, %nyx_string** %7188
  %7382 = getelementptr [3 x i8], [3 x i8]* @.str1098, i32 0, i32 0
  %7383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %7382, i64 2)
  %7384 = call i1 @nyx_string_equals(%nyx_string* %7381, %nyx_string* %7383)
  %7385 = xor i1 %7384, true
  store i1 %7385, i1* %7375
  br label %sc_and_end1290
sc_and_end1290:
  %7386 = load i1, i1* %7375
  br i1 %7386, label %then1291, label %else1292
then1291:
  %7387 = getelementptr [27 x i8], [27 x i8]* @.str1099, i32 0, i32 0
  %7388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %7387, i64 26)
  %7389 = load %nyx_string*, %nyx_string** %7188
  %7390 = call %nyx_string* @nyx_string_concat(%nyx_string* %7388, %nyx_string* %7389)
  %7391 = getelementptr [29 x i8], [29 x i8]* @.str1100, i32 0, i32 0
  %7392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %7391, i64 28)
  %7393 = call %nyx_string* @nyx_string_concat(%nyx_string* %7390, %nyx_string* %7392)
  %7394 = call i8* @nyx_string_to_cstr(%nyx_string* %7393)
  call void @nyx_print_string(i8* %7394)
  ret i64 1
else1292:
  br label %merge1293
merge1293:
  %7395 = load %nyx_string*, %nyx_string** %7191
  %7396 = call i1 @validate_agents(%nyx_string* %7395)
  %7397 = icmp eq i1 %7396, 0
  br i1 %7397, label %then1294, label %else1295
then1294:
  ret i64 1
else1295:
  br label %merge1296
merge1296:
  %7398 = load %nyx_string*, %nyx_string** %7185
  %7399 = load %nyx_string*, %nyx_string** %7188
  %7400 = load %nyx_string*, %nyx_string** %7191
  %7401 = call i1 @run_init(%nyx_string* %7398, %nyx_string* %7399, %nyx_string* %7400)
  %7402 = alloca i1
  store i1 %7401, i1* %7402
  %7403 = load i1, i1* %7402
  %7404 = icmp eq i1 %7403, 0
  br i1 %7404, label %then1297, label %else1298
then1297:
  ret i64 1
else1298:
  br label %merge1299
merge1299:
  %7405 = load i1, i1* %7192
  br i1 %7405, label %then1300, label %else1301
then1300:
  %7406 = load %nyx_string*, %nyx_string** %7185
  %7407 = alloca %nyx_string*
  store %nyx_string* %7406, %nyx_string** %7407
  %7408 = load %nyx_string*, %nyx_string** %7407
  %7409 = getelementptr [1 x i8], [1 x i8]* @.str1101, i32 0, i32 0
  %7410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %7409, i64 0)
  %7411 = call i1 @nyx_string_equals(%nyx_string* %7408, %nyx_string* %7410)
  br i1 %7411, label %then1303, label %else1304
then1303:
  %7412 = getelementptr [2 x i8], [2 x i8]* @.str1102, i32 0, i32 0
  %7413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %7412, i64 1)
  store %nyx_string* %7413, %nyx_string** %7407
  br label %merge1305
else1304:
  br label %merge1305
merge1305:
  %7414 = getelementptr [1 x i8], [1 x i8]* @.str1103, i32 0, i32 0
  %7415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %7414, i64 0)
  %7416 = call i8* @nyx_string_to_cstr(%nyx_string* %7415)
  call void @nyx_print_string(i8* %7416)
  %7417 = load %nyx_string*, %nyx_string** %7407
  %7418 = load %nyx_string*, %nyx_string** %7188
  %7419 = call i1 @run_sdd_init(%nyx_string* %7417, %nyx_string* %7418)
  %7420 = alloca i1
  store i1 %7419, i1* %7420
  %7421 = load i1, i1* %7420
  %7422 = icmp eq i1 %7421, 0
  br i1 %7422, label %then1306, label %else1307
then1306:
  ret i64 1
else1307:
  br label %merge1308
merge1308:
  br label %merge1302
else1301:
  br label %merge1302
merge1302:
  ret i64 0
else1217:
  br label %merge1218
merge1218:
  %7423 = load %nyx_string*, %nyx_string** %6939
  %7424 = getelementptr [4 x i8], [4 x i8]* @.str1104, i32 0, i32 0
  %7425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %7424, i64 3)
  %7426 = call i1 @nyx_string_equals(%nyx_string* %7423, %nyx_string* %7425)
  br i1 %7426, label %then1309, label %else1310
then1309:
  %7427 = getelementptr [1 x i8], [1 x i8]* @.str1105, i32 0, i32 0
  %7428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %7427, i64 0)
  %7429 = alloca %nyx_string*
  store %nyx_string* %7428, %nyx_string** %7429
  %7430 = load { i64, i8* }*, { i64, i8* }** %6936
  %7431 = call i64 @nyx_array_length({ i64, i8* }* %7430)
  %7432 = icmp sge i64 %7431, 3
  br i1 %7432, label %then1312, label %else1313
then1312:
  %7433 = load { i64, i8* }*, { i64, i8* }** %6936
  %7434 = call i64 @nyx_array_get_checked({ i64, i8* }* %7433, i64 2, i64 2)
  %7435 = inttoptr i64 %7434 to %nyx_string*
  %7436 = alloca %nyx_string*
  store %nyx_string* %7435, %nyx_string** %7436
  %7437 = load %nyx_string*, %nyx_string** %7436
  store %nyx_string* %7437, %nyx_string** %7429
  br label %merge1314
else1313:
  br label %merge1314
merge1314:
  %7438 = load %nyx_string*, %nyx_string** %7429
  %7439 = getelementptr [5 x i8], [5 x i8]* @.str1106, i32 0, i32 0
  %7440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %7439, i64 4)
  %7441 = call i1 @nyx_string_equals(%nyx_string* %7438, %nyx_string* %7440)
  br i1 %7441, label %then1315, label %else1316
then1315:
  %7442 = getelementptr [2 x i8], [2 x i8]* @.str1107, i32 0, i32 0
  %7443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %7442, i64 1)
  %7444 = getelementptr [2 x i8], [2 x i8]* @.str1108, i32 0, i32 0
  %7445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %7444, i64 1)
  %7446 = call %nyx_string* @project_lang(%nyx_string* %7445)
  %7447 = call i1 @run_sdd_init(%nyx_string* %7443, %nyx_string* %7446)
  %7448 = alloca i1
  store i1 %7447, i1* %7448
  %7449 = load i1, i1* %7448
  br i1 %7449, label %then1318, label %else1319
then1318:
  ret i64 0
else1319:
  br label %merge1320
merge1320:
  ret i64 1
else1316:
  br label %merge1317
merge1317:
  %7450 = load %nyx_string*, %nyx_string** %7429
  %7451 = getelementptr [9 x i8], [9 x i8]* @.str1109, i32 0, i32 0
  %7452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %7451, i64 8)
  %7453 = call i1 @nyx_string_equals(%nyx_string* %7450, %nyx_string* %7452)
  br i1 %7453, label %then1321, label %else1322
then1321:
  %7454 = getelementptr [2 x i8], [2 x i8]* @.str1110, i32 0, i32 0
  %7455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %7454, i64 1)
  %7456 = getelementptr [2 x i8], [2 x i8]* @.str1111, i32 0, i32 0
  %7457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %7456, i64 1)
  %7458 = call %nyx_string* @project_lang(%nyx_string* %7457)
  %7459 = call i1 @run_sdd_evidence(%nyx_string* %7455, %nyx_string* %7458)
  %7460 = alloca i1
  store i1 %7459, i1* %7460
  %7461 = load i1, i1* %7460
  br i1 %7461, label %then1324, label %else1325
then1324:
  ret i64 0
else1325:
  br label %merge1326
merge1326:
  ret i64 1
else1322:
  br label %merge1323
merge1323:
  %7462 = load %nyx_string*, %nyx_string** %7429
  %7463 = getelementptr [1 x i8], [1 x i8]* @.str1112, i32 0, i32 0
  %7464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %7463, i64 0)
  %7465 = call i1 @nyx_string_equals(%nyx_string* %7462, %nyx_string* %7464)
  br i1 %7465, label %then1327, label %else1328
then1327:
  %7466 = getelementptr [57 x i8], [57 x i8]* @.str1113, i32 0, i32 0
  %7467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %7466, i64 56)
  %7468 = call i8* @nyx_string_to_cstr(%nyx_string* %7467)
  call void @nyx_print_string(i8* %7468)
  br label %merge1329
else1328:
  %7469 = getelementptr [48 x i8], [48 x i8]* @.str1114, i32 0, i32 0
  %7470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %7469, i64 47)
  %7471 = load %nyx_string*, %nyx_string** %7429
  %7472 = call %nyx_string* @nyx_string_concat(%nyx_string* %7470, %nyx_string* %7471)
  %7473 = getelementptr [29 x i8], [29 x i8]* @.str1115, i32 0, i32 0
  %7474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %7473, i64 28)
  %7475 = call %nyx_string* @nyx_string_concat(%nyx_string* %7472, %nyx_string* %7474)
  %7476 = call i8* @nyx_string_to_cstr(%nyx_string* %7475)
  call void @nyx_print_string(i8* %7476)
  br label %merge1329
merge1329:
  %7477 = getelementptr [69 x i8], [69 x i8]* @.str1116, i32 0, i32 0
  %7478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %7477, i64 68)
  %7479 = call i8* @nyx_string_to_cstr(%nyx_string* %7478)
  call void @nyx_print_string(i8* %7479)
  %7480 = getelementptr [79 x i8], [79 x i8]* @.str1117, i32 0, i32 0
  %7481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1117.c, i8* %7480, i64 78)
  %7482 = call i8* @nyx_string_to_cstr(%nyx_string* %7481)
  call void @nyx_print_string(i8* %7482)
  ret i64 1
else1310:
  br label %merge1311
merge1311:
  %7483 = load %nyx_string*, %nyx_string** %6939
  %7484 = getelementptr [4 x i8], [4 x i8]* @.str1118, i32 0, i32 0
  %7485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1118.c, i8* %7484, i64 3)
  %7486 = call i1 @nyx_string_equals(%nyx_string* %7483, %nyx_string* %7485)
  br i1 %7486, label %then1330, label %else1331
then1330:
  %7487 = load { i64, i8* }*, { i64, i8* }** %6936
  %7488 = call i64 @nyx_array_length({ i64, i8* }* %7487)
  %7489 = icmp slt i64 %7488, 3
  br i1 %7489, label %then1333, label %else1334
then1333:
  %7490 = getelementptr [51 x i8], [51 x i8]* @.str1119, i32 0, i32 0
  %7491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1119.c, i8* %7490, i64 50)
  %7492 = call i8* @nyx_string_to_cstr(%nyx_string* %7491)
  call void @nyx_print_string(i8* %7492)
  ret i64 1
else1334:
  br label %merge1335
merge1335:
  %7493 = load { i64, i8* }*, { i64, i8* }** %6936
  %7494 = call i64 @nyx_array_get_checked({ i64, i8* }* %7493, i64 2, i64 2)
  %7495 = inttoptr i64 %7494 to %nyx_string*
  %7496 = alloca %nyx_string*
  store %nyx_string* %7495, %nyx_string** %7496
  %7497 = getelementptr [1 x i8], [1 x i8]* @.str1120, i32 0, i32 0
  %7498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %7497, i64 0)
  %7499 = alloca %nyx_string*
  store %nyx_string* %7498, %nyx_string** %7499
  %7500 = load { i64, i8* }*, { i64, i8* }** %6936
  %7501 = call i64 @nyx_array_length({ i64, i8* }* %7500)
  %7502 = icmp sge i64 %7501, 5
  br i1 %7502, label %then1336, label %else1337
then1336:
  %7503 = load { i64, i8* }*, { i64, i8* }** %6936
  %7504 = call i64 @nyx_array_get_checked({ i64, i8* }* %7503, i64 3, i64 2)
  %7505 = inttoptr i64 %7504 to %nyx_string*
  %7506 = alloca %nyx_string*
  store %nyx_string* %7505, %nyx_string** %7506
  %7507 = load %nyx_string*, %nyx_string** %7506
  %7508 = getelementptr [7 x i8], [7 x i8]* @.str1121, i32 0, i32 0
  %7509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %7508, i64 6)
  %7510 = call i1 @nyx_string_equals(%nyx_string* %7507, %nyx_string* %7509)
  br i1 %7510, label %then1339, label %else1340
then1339:
  %7511 = load { i64, i8* }*, { i64, i8* }** %6936
  %7512 = call i64 @nyx_array_get_checked({ i64, i8* }* %7511, i64 4, i64 2)
  %7513 = inttoptr i64 %7512 to %nyx_string*
  %7514 = alloca %nyx_string*
  store %nyx_string* %7513, %nyx_string** %7514
  %7515 = load %nyx_string*, %nyx_string** %7514
  store %nyx_string* %7515, %nyx_string** %7499
  br label %merge1341
else1340:
  br label %merge1341
merge1341:
  br label %merge1338
else1337:
  br label %merge1338
merge1338:
  %7516 = call { i64, i8* }* @nyx_array_new_ptr()
  %7517 = alloca { i64, i8* }*
  store { i64, i8* }* %7516, { i64, i8* }** %7517
  %7518 = call { i64, i8* }* @nyx_array_new_ptr()
  %7519 = alloca { i64, i8* }*
  store { i64, i8* }* %7518, { i64, i8* }** %7519
  %7520 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %7521 = ptrtoint %ProjectConfig* %7520 to i64
  %7522 = call i8* @GC_malloc(i64 %7521)
  %7523 = bitcast i8* %7522 to %ProjectConfig*
  %7524 = getelementptr [8 x i8], [8 x i8]* @.str1122, i32 0, i32 0
  %7525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %7524, i64 7)
  %7526 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 0
  store %nyx_string* %7525, %nyx_string** %7526
  %7527 = getelementptr [6 x i8], [6 x i8]* @.str1123, i32 0, i32 0
  %7528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %7527, i64 5)
  %7529 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 1
  store %nyx_string* %7528, %nyx_string** %7529
  %7530 = getelementptr [1 x i8], [1 x i8]* @.str1124, i32 0, i32 0
  %7531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %7530, i64 0)
  %7532 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 2
  store %nyx_string* %7531, %nyx_string** %7532
  %7533 = getelementptr [1 x i8], [1 x i8]* @.str1125, i32 0, i32 0
  %7534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %7533, i64 0)
  %7535 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 3
  store %nyx_string* %7534, %nyx_string** %7535
  %7536 = getelementptr [1 x i8], [1 x i8]* @.str1126, i32 0, i32 0
  %7537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %7536, i64 0)
  %7538 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 4
  store %nyx_string* %7537, %nyx_string** %7538
  %7539 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 5
  store i1 0, i1* %7539
  %7540 = getelementptr [1 x i8], [1 x i8]* @.str1127, i32 0, i32 0
  %7541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %7540, i64 0)
  %7542 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 6
  store %nyx_string* %7541, %nyx_string** %7542
  %7543 = load { i64, i8* }*, { i64, i8* }** %7517
  %7544 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 7
  store { i64, i8* }* %7543, { i64, i8* }** %7544
  %7545 = load { i64, i8* }*, { i64, i8* }** %7519
  %7546 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 8
  store { i64, i8* }* %7545, { i64, i8* }** %7546
  %7547 = getelementptr [1 x i8], [1 x i8]* @.str1128, i32 0, i32 0
  %7548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %7547, i64 0)
  %7549 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 9
  store %nyx_string* %7548, %nyx_string** %7549
  %7550 = getelementptr [1 x i8], [1 x i8]* @.str1129, i32 0, i32 0
  %7551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %7550, i64 0)
  %7552 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 10
  store %nyx_string* %7551, %nyx_string** %7552
  %7553 = call { i64, i8* }* @nyx_array_new_ptr()
  %7554 = getelementptr %ProjectConfig, %ProjectConfig* %7523, i32 0, i32 11
  store { i64, i8* }* %7553, { i64, i8* }** %7554
  %7555 = load %ProjectConfig, %ProjectConfig* %7523
  %7556 = alloca %ProjectConfig
  store %ProjectConfig %7555, %ProjectConfig* %7556
  %7557 = load %nyx_string*, %nyx_string** %7496
  %7558 = load %nyx_string*, %nyx_string** %7499
  %7559 = load %ProjectConfig, %ProjectConfig* %7556
  %7560 = call i1 @run_add(%nyx_string* %7557, %nyx_string* %7558, %ProjectConfig %7559)
  %7561 = alloca i1
  store i1 %7560, i1* %7561
  %7562 = load i1, i1* %7561
  br i1 %7562, label %then1342, label %else1343
then1342:
  ret i64 0
else1343:
  br label %merge1344
merge1344:
  ret i64 1
else1331:
  br label %merge1332
merge1332:
  %7563 = load %nyx_string*, %nyx_string** %6939
  %7564 = getelementptr [7 x i8], [7 x i8]* @.str1130, i32 0, i32 0
  %7565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %7564, i64 6)
  %7566 = call i1 @nyx_string_equals(%nyx_string* %7563, %nyx_string* %7565)
  br i1 %7566, label %then1345, label %else1346
then1345:
  %7567 = getelementptr [1 x i8], [1 x i8]* @.str1131, i32 0, i32 0
  %7568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %7567, i64 0)
  %7569 = alloca %nyx_string*
  store %nyx_string* %7568, %nyx_string** %7569
  %7570 = alloca i1
  store i1 0, i1* %7570
  %7571 = alloca i64
  store i64 2, i64* %7571
  %7572 = getelementptr [7 x i8], [7 x i8]* @.str1132, i32 0, i32 0
  %7573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %7572, i64 6)
  %7574 = alloca %nyx_string*
  store %nyx_string* %7573, %nyx_string** %7574
  %7575 = getelementptr [10 x i8], [10 x i8]* @.str1133, i32 0, i32 0
  %7576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %7575, i64 9)
  %7577 = alloca %nyx_string*
  store %nyx_string* %7576, %nyx_string** %7577
  %7578 = call i8* @llvm.stacksave()
  br label %while_cond1348
while_cond1348:
  %7579 = load i64, i64* %7571
  %7580 = load { i64, i8* }*, { i64, i8* }** %6936
  %7581 = call i64 @nyx_array_length({ i64, i8* }* %7580)
  %7582 = icmp slt i64 %7579, %7581
  br i1 %7582, label %while_body1349, label %while_end1350
while_body1349:
  call void @llvm.stackrestore(i8* %7578)
  %7583 = load { i64, i8* }*, { i64, i8* }** %6936
  %7584 = load i64, i64* %7571
  %7585 = call i64 @nyx_array_get_checked({ i64, i8* }* %7583, i64 %7584, i64 2)
  %7586 = inttoptr i64 %7585 to %nyx_string*
  %7587 = alloca %nyx_string*
  store %nyx_string* %7586, %nyx_string** %7587
  %7588 = load %nyx_string*, %nyx_string** %7587
  %7589 = load %nyx_string*, %nyx_string** %7574
  %7590 = call i1 @nyx_string_equals(%nyx_string* %7588, %nyx_string* %7589)
  br i1 %7590, label %then1351, label %else1352
then1351:
  store i1 1, i1* %7570
  br label %merge1353
else1352:
  %7591 = load %nyx_string*, %nyx_string** %7587
  %7592 = load %nyx_string*, %nyx_string** %7577
  %7593 = call i1 @nyx_string_equals(%nyx_string* %7591, %nyx_string* %7592)
  %7594 = xor i1 %7593, true
  br i1 %7594, label %then1354, label %else1355
then1354:
  %7595 = load %nyx_string*, %nyx_string** %7587
  store %nyx_string* %7595, %nyx_string** %7569
  br label %merge1356
else1355:
  br label %merge1356
merge1356:
  br label %merge1353
merge1353:
  %7596 = load i64, i64* %7571
  %7597 = add i64 %7596, 1
  store i64 %7597, i64* %7571
  br label %while_cond1348
while_end1350:
  %7598 = load %nyx_string*, %nyx_string** %7569
  %7599 = load i1, i1* %7570
  %7600 = call i1 @run_report(%nyx_string* %7598, i1 %7599)
  %7601 = alloca i1
  store i1 %7600, i1* %7601
  %7602 = load i1, i1* %7601
  br i1 %7602, label %then1357, label %else1358
then1357:
  ret i64 0
else1358:
  br label %merge1359
merge1359:
  ret i64 1
else1346:
  br label %merge1347
merge1347:
  %7603 = load %nyx_string*, %nyx_string** %6939
  %7604 = getelementptr [13 x i8], [13 x i8]* @.str1134, i32 0, i32 0
  %7605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1134.c, i8* %7604, i64 12)
  %7606 = call i1 @nyx_string_equals(%nyx_string* %7603, %nyx_string* %7605)
  br i1 %7606, label %then1360, label %else1361
then1360:
  %7607 = getelementptr [1 x i8], [1 x i8]* @.str1135, i32 0, i32 0
  %7608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1135.c, i8* %7607, i64 0)
  %7609 = alloca %nyx_string*
  store %nyx_string* %7608, %nyx_string** %7609
  %7610 = load { i64, i8* }*, { i64, i8* }** %6936
  %7611 = call i64 @nyx_array_length({ i64, i8* }* %7610)
  %7612 = icmp sge i64 %7611, 3
  br i1 %7612, label %then1363, label %else1364
then1363:
  %7613 = load { i64, i8* }*, { i64, i8* }** %6936
  %7614 = call i64 @nyx_array_get_checked({ i64, i8* }* %7613, i64 2, i64 2)
  %7615 = inttoptr i64 %7614 to %nyx_string*
  %7616 = alloca %nyx_string*
  store %nyx_string* %7615, %nyx_string** %7616
  %7617 = load %nyx_string*, %nyx_string** %7616
  %7618 = getelementptr [10 x i8], [10 x i8]* @.str1136, i32 0, i32 0
  %7619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %7618, i64 9)
  %7620 = call i1 @nyx_string_equals(%nyx_string* %7617, %nyx_string* %7619)
  %7621 = xor i1 %7620, true
  br i1 %7621, label %then1366, label %else1367
then1366:
  %7622 = load %nyx_string*, %nyx_string** %7616
  store %nyx_string* %7622, %nyx_string** %7609
  br label %merge1368
else1367:
  br label %merge1368
merge1368:
  br label %merge1365
else1364:
  br label %merge1365
merge1365:
  %7623 = load %nyx_string*, %nyx_string** %7609
  %7624 = call i1 @run_capabilities(%nyx_string* %7623)
  %7625 = alloca i1
  store i1 %7624, i1* %7625
  %7626 = load i1, i1* %7625
  br i1 %7626, label %then1369, label %else1370
then1369:
  ret i64 0
else1370:
  br label %merge1371
merge1371:
  ret i64 1
else1361:
  br label %merge1362
merge1362:
  %7627 = getelementptr [9 x i8], [9 x i8]* @.str1137, i32 0, i32 0
  %7628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %7627, i64 8)
  %7629 = call i8* @nyx_string_to_cstr(%nyx_string* %7628)
  %7630 = call i1 @nyx_file_exists(i8* %7629)
  %7631 = xor i1 %7630, true
  br i1 %7631, label %then1372, label %else1373
then1372:
  %7632 = getelementptr [47 x i8], [47 x i8]* @.str1138, i32 0, i32 0
  %7633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %7632, i64 46)
  %7634 = call i8* @nyx_string_to_cstr(%nyx_string* %7633)
  call void @nyx_print_string(i8* %7634)
  %7635 = getelementptr [24 x i8], [24 x i8]* @.str1139, i32 0, i32 0
  %7636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %7635, i64 23)
  %7637 = call i8* @nyx_string_to_cstr(%nyx_string* %7636)
  call void @nyx_print_string(i8* %7637)
  %7638 = getelementptr [12 x i8], [12 x i8]* @.str1140, i32 0, i32 0
  %7639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %7638, i64 11)
  %7640 = call i8* @nyx_string_to_cstr(%nyx_string* %7639)
  call void @nyx_print_string(i8* %7640)
  %7641 = getelementptr [17 x i8], [17 x i8]* @.str1141, i32 0, i32 0
  %7642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %7641, i64 16)
  %7643 = call i8* @nyx_string_to_cstr(%nyx_string* %7642)
  call void @nyx_print_string(i8* %7643)
  %7644 = getelementptr [20 x i8], [20 x i8]* @.str1142, i32 0, i32 0
  %7645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %7644, i64 19)
  %7646 = call i8* @nyx_string_to_cstr(%nyx_string* %7645)
  call void @nyx_print_string(i8* %7646)
  %7647 = getelementptr [23 x i8], [23 x i8]* @.str1143, i32 0, i32 0
  %7648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %7647, i64 22)
  %7649 = call i8* @nyx_string_to_cstr(%nyx_string* %7648)
  call void @nyx_print_string(i8* %7649)
  ret i64 1
else1373:
  br label %merge1374
merge1374:
  %7650 = getelementptr [9 x i8], [9 x i8]* @.str1144, i32 0, i32 0
  %7651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %7650, i64 8)
  %7652 = call i8* @nyx_string_to_cstr(%nyx_string* %7651)
  %7653 = call %nyx_string* @nyx_read_file(i8* %7652)
  %7654 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 20
  store %nyx_string* %7653, %nyx_string** %7654
  %7655 = load %nyx_string*, %nyx_string** %7654
  %7656 = call %ProjectConfig @parse_toml(%nyx_string* %7655)
  %7657 = getelementptr %SharedEnv_main, %SharedEnv_main* %6934, i32 0, i32 21
  store %ProjectConfig %7656, %ProjectConfig* %7657
  %7658 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 9
  %7659 = load %nyx_string*, %nyx_string** %7658
  %7660 = getelementptr [1 x i8], [1 x i8]* @.str1145, i32 0, i32 0
  %7661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %7660, i64 0)
  %7662 = call i1 @nyx_string_equals(%nyx_string* %7659, %nyx_string* %7661)
  %7663 = xor i1 %7662, true
  br i1 %7663, label %then1375, label %else1376
then1375:
  %7664 = getelementptr [8 x i8], [8 x i8]* @.str1146, i32 0, i32 0
  %7665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %7664, i64 7)
  %7666 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 9
  %7667 = load %nyx_string*, %nyx_string** %7666
  %7668 = call %nyx_string* @nyx_string_concat(%nyx_string* %7665, %nyx_string* %7667)
  %7669 = call i8* @nyx_string_to_cstr(%nyx_string* %7668)
  call void @nyx_print_string(i8* %7669)
  ret i64 1
else1376:
  br label %merge1377
merge1377:
  %7670 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 0
  %7671 = load %nyx_string*, %nyx_string** %7670
  %7672 = getelementptr [1 x i8], [1 x i8]* @.str1147, i32 0, i32 0
  %7673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %7672, i64 0)
  %7674 = call i1 @nyx_string_equals(%nyx_string* %7671, %nyx_string* %7673)
  br i1 %7674, label %then1378, label %else1379
then1378:
  %7675 = getelementptr [45 x i8], [45 x i8]* @.str1148, i32 0, i32 0
  %7676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %7675, i64 44)
  %7677 = call i8* @nyx_string_to_cstr(%nyx_string* %7676)
  call void @nyx_print_string(i8* %7677)
  ret i64 1
else1379:
  br label %merge1380
merge1380:
  %7678 = load %nyx_string*, %nyx_string** %6946
  %7679 = getelementptr [1 x i8], [1 x i8]* @.str1149, i32 0, i32 0
  %7680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %7679, i64 0)
  %7681 = call i1 @nyx_string_equals(%nyx_string* %7678, %nyx_string* %7680)
  %7682 = xor i1 %7681, true
  br i1 %7682, label %then1381, label %else1382
then1381:
  %7683 = alloca i1
  store i1 false, i1* %7683
  %7684 = load %nyx_string*, %nyx_string** %6939
  %7685 = getelementptr [6 x i8], [6 x i8]* @.str1150, i32 0, i32 0
  %7686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1150.c, i8* %7685, i64 5)
  %7687 = call i1 @nyx_string_equals(%nyx_string* %7684, %nyx_string* %7686)
  %7688 = xor i1 %7687, true
  br i1 %7688, label %sc_and_rhs1384, label %sc_and_end1385
sc_and_rhs1384:
  %7689 = load %nyx_string*, %nyx_string** %6939
  %7690 = getelementptr [4 x i8], [4 x i8]* @.str1151, i32 0, i32 0
  %7691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1151.c, i8* %7690, i64 3)
  %7692 = call i1 @nyx_string_equals(%nyx_string* %7689, %nyx_string* %7691)
  %7693 = xor i1 %7692, true
  store i1 %7693, i1* %7683
  br label %sc_and_end1385
sc_and_end1385:
  %7694 = load i1, i1* %7683
  br i1 %7694, label %then1386, label %else1387
then1386:
  %7695 = getelementptr [53 x i8], [53 x i8]* @.str1152, i32 0, i32 0
  %7696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1152.c, i8* %7695, i64 52)
  %7697 = call i8* @nyx_string_to_cstr(%nyx_string* %7696)
  call void @nyx_print_string(i8* %7697)
  ret i64 1
else1387:
  br label %merge1388
merge1388:
  %7698 = load %nyx_string*, %nyx_string** %6946
  %7699 = call %nyx_string* @main_flag_error(%nyx_string* %7698)
  %7700 = alloca %nyx_string*
  store %nyx_string* %7699, %nyx_string** %7700
  %7701 = load %nyx_string*, %nyx_string** %7700
  %7702 = getelementptr [1 x i8], [1 x i8]* @.str1153, i32 0, i32 0
  %7703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1153.c, i8* %7702, i64 0)
  %7704 = call i1 @nyx_string_equals(%nyx_string* %7701, %nyx_string* %7703)
  %7705 = xor i1 %7704, true
  br i1 %7705, label %then1389, label %else1390
then1389:
  %7706 = getelementptr [8 x i8], [8 x i8]* @.str1154, i32 0, i32 0
  %7707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1154.c, i8* %7706, i64 7)
  %7708 = load %nyx_string*, %nyx_string** %7700
  %7709 = call %nyx_string* @nyx_string_concat(%nyx_string* %7707, %nyx_string* %7708)
  %7710 = call i8* @nyx_string_to_cstr(%nyx_string* %7709)
  call void @nyx_print_string(i8* %7710)
  ret i64 1
else1390:
  br label %merge1391
merge1391:
  %7711 = load %ProjectConfig, %ProjectConfig* %7657
  %7712 = load %nyx_string*, %nyx_string** %6946
  %7713 = call %nyx_string* @bin_name_for_main(%ProjectConfig %7711, %nyx_string* %7712)
  %7714 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 10
  store %nyx_string* %7713, %nyx_string** %7714
  %7715 = load %nyx_string*, %nyx_string** %6946
  %7716 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 2
  store %nyx_string* %7715, %nyx_string** %7716
  br label %merge1383
else1382:
  br label %merge1383
merge1383:
  %7717 = load %nyx_string*, %nyx_string** %6939
  %7718 = getelementptr [5 x i8], [5 x i8]* @.str1155, i32 0, i32 0
  %7719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1155.c, i8* %7718, i64 4)
  %7720 = call i1 @nyx_string_equals(%nyx_string* %7717, %nyx_string* %7719)
  br i1 %7720, label %then1392, label %else1393
then1392:
  %7721 = load %ProjectConfig, %ProjectConfig* %7657
  %7722 = call i64 @print_info(%ProjectConfig %7721)
  ret i64 0
else1393:
  br label %merge1394
merge1394:
  %7723 = load %nyx_string*, %nyx_string** %6939
  %7724 = getelementptr [5 x i8], [5 x i8]* @.str1156, i32 0, i32 0
  %7725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1156.c, i8* %7724, i64 4)
  %7726 = call i1 @nyx_string_equals(%nyx_string* %7723, %nyx_string* %7725)
  br i1 %7726, label %then1395, label %else1396
then1395:
  %7727 = load %ProjectConfig, %ProjectConfig* %7657
  %7728 = load i1, i1* %6940
  %7729 = call i1 @run_libs(%ProjectConfig %7727, i1 %7728)
  br i1 %7729, label %then1398, label %else1399
then1398:
  ret i64 0
else1399:
  br label %merge1400
merge1400:
  ret i64 1
else1396:
  br label %merge1397
merge1397:
  %7730 = load %nyx_string*, %nyx_string** %6939
  %7731 = getelementptr [6 x i8], [6 x i8]* @.str1157, i32 0, i32 0
  %7732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1157.c, i8* %7731, i64 5)
  %7733 = call i1 @nyx_string_equals(%nyx_string* %7730, %nyx_string* %7732)
  br i1 %7733, label %then1401, label %else1402
then1401:
  %7734 = load %ProjectConfig, %ProjectConfig* %7657
  %7735 = load i1, i1* %6940
  %7736 = load %nyx_string*, %nyx_string** %6943
  %7737 = call i1 @run_build(%ProjectConfig %7734, i1 %7735, %nyx_string* %7736)
  %7738 = alloca i1
  store i1 %7737, i1* %7738
  %7739 = load i1, i1* %7738
  br i1 %7739, label %then1404, label %else1405
then1404:
  %7740 = load %ProjectConfig, %ProjectConfig* %7657
  %7741 = call i64 @write_lockfile(%ProjectConfig %7740)
  %7742 = getelementptr [15 x i8], [15 x i8]* @.str1158, i32 0, i32 0
  %7743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1158.c, i8* %7742, i64 14)
  %7744 = call i8* @nyx_string_to_cstr(%nyx_string* %7743)
  call void @nyx_print_string(i8* %7744)
  ret i64 0
else1405:
  br label %merge1406
merge1406:
  ret i64 1
else1402:
  br label %merge1403
merge1403:
  %7745 = load %nyx_string*, %nyx_string** %6939
  %7746 = getelementptr [4 x i8], [4 x i8]* @.str1159, i32 0, i32 0
  %7747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1159.c, i8* %7746, i64 3)
  %7748 = call i1 @nyx_string_equals(%nyx_string* %7745, %nyx_string* %7747)
  br i1 %7748, label %then1407, label %else1408
then1407:
  %7749 = alloca i64
  store i64 2, i64* %7749
  %7750 = getelementptr [3 x i8], [3 x i8]* @.str1160, i32 0, i32 0
  %7751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1160.c, i8* %7750, i64 2)
  %7752 = alloca %nyx_string*
  store %nyx_string* %7751, %nyx_string** %7752
  %7753 = getelementptr [7 x i8], [7 x i8]* @.str1161, i32 0, i32 0
  %7754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1161.c, i8* %7753, i64 6)
  %7755 = alloca %nyx_string*
  store %nyx_string* %7754, %nyx_string** %7755
  %7756 = getelementptr [3 x i8], [3 x i8]* @.str1162, i32 0, i32 0
  %7757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1162.c, i8* %7756, i64 2)
  %7758 = alloca %nyx_string*
  store %nyx_string* %7757, %nyx_string** %7758
  %7759 = getelementptr [79 x i8], [79 x i8]* @.str1163, i32 0, i32 0
  %7760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1163.c, i8* %7759, i64 78)
  %7761 = alloca %nyx_string*
  store %nyx_string* %7760, %nyx_string** %7761
  %7762 = getelementptr [60 x i8], [60 x i8]* @.str1164, i32 0, i32 0
  %7763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1164.c, i8* %7762, i64 59)
  %7764 = alloca %nyx_string*
  store %nyx_string* %7763, %nyx_string** %7764
  %7765 = getelementptr [1 x i8], [1 x i8]* @.str1165, i32 0, i32 0
  %7766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1165.c, i8* %7765, i64 0)
  %7767 = alloca %nyx_string*
  store %nyx_string* %7766, %nyx_string** %7767
  %7768 = getelementptr [56 x i8], [56 x i8]* @.str1166, i32 0, i32 0
  %7769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1166.c, i8* %7768, i64 55)
  %7770 = alloca %nyx_string*
  store %nyx_string* %7769, %nyx_string** %7770
  %7771 = getelementptr [38 x i8], [38 x i8]* @.str1167, i32 0, i32 0
  %7772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1167.c, i8* %7771, i64 37)
  %7773 = alloca %nyx_string*
  store %nyx_string* %7772, %nyx_string** %7773
  %7774 = call i8* @llvm.stacksave()
  br label %while_cond1410
while_cond1410:
  %7775 = load i64, i64* %7749
  %7776 = load { i64, i8* }*, { i64, i8* }** %6936
  %7777 = call i64 @nyx_array_length({ i64, i8* }* %7776)
  %7778 = icmp slt i64 %7775, %7777
  br i1 %7778, label %while_body1411, label %while_end1412
while_body1411:
  call void @llvm.stackrestore(i8* %7774)
  %7779 = load { i64, i8* }*, { i64, i8* }** %6936
  %7780 = load i64, i64* %7749
  %7781 = call i64 @nyx_array_get_checked({ i64, i8* }* %7779, i64 %7780, i64 2)
  %7782 = inttoptr i64 %7781 to %nyx_string*
  %7783 = alloca %nyx_string*
  store %nyx_string* %7782, %nyx_string** %7783
  %7784 = load %nyx_string*, %nyx_string** %7783
  %7785 = load %nyx_string*, %nyx_string** %7752
  %7786 = call i1 @nyx_string_equals(%nyx_string* %7784, %nyx_string* %7785)
  br i1 %7786, label %then1413, label %else1414
then1413:
  %7787 = load { i64, i8* }*, { i64, i8* }** %6936
  %7788 = call i64 @nyx_array_length({ i64, i8* }* %7787)
  store i64 %7788, i64* %7749
  br label %merge1415
else1414:
  %7789 = alloca i1
  store i1 true, i1* %7789
  %7790 = load %nyx_string*, %nyx_string** %7783
  %7791 = load %nyx_string*, %nyx_string** %7755
  %7792 = call i1 @nyx_string_equals(%nyx_string* %7790, %nyx_string* %7791)
  br i1 %7792, label %sc_or_end1417, label %sc_or_rhs1416
sc_or_rhs1416:
  %7793 = load %nyx_string*, %nyx_string** %7783
  %7794 = load %nyx_string*, %nyx_string** %7758
  %7795 = call i1 @nyx_string_equals(%nyx_string* %7793, %nyx_string* %7794)
  store i1 %7795, i1* %7789
  br label %sc_or_end1417
sc_or_end1417:
  %7796 = load i1, i1* %7789
  br i1 %7796, label %then1418, label %else1419
then1418:
  %7797 = load %nyx_string*, %nyx_string** %7761
  %7798 = call i8* @nyx_string_to_cstr(%nyx_string* %7797)
  call void @nyx_print_string(i8* %7798)
  %7799 = load %nyx_string*, %nyx_string** %7764
  %7800 = call i8* @nyx_string_to_cstr(%nyx_string* %7799)
  call void @nyx_print_string(i8* %7800)
  %7801 = load %nyx_string*, %nyx_string** %7767
  %7802 = call i8* @nyx_string_to_cstr(%nyx_string* %7801)
  call void @nyx_print_string(i8* %7802)
  %7803 = load %nyx_string*, %nyx_string** %7770
  %7804 = call i8* @nyx_string_to_cstr(%nyx_string* %7803)
  call void @nyx_print_string(i8* %7804)
  %7805 = load %nyx_string*, %nyx_string** %7773
  %7806 = call i8* @nyx_string_to_cstr(%nyx_string* %7805)
  call void @nyx_print_string(i8* %7806)
  ret i64 0
else1419:
  br label %merge1420
merge1420:
  %7807 = load i64, i64* %7749
  %7808 = add i64 %7807, 1
  store i64 %7808, i64* %7749
  br label %merge1415
merge1415:
  br label %while_cond1410
while_end1412:
  %7809 = load %ProjectConfig, %ProjectConfig* %7657
  %7810 = load %nyx_string*, %nyx_string** %6943
  %7811 = call i1 @run_build(%ProjectConfig %7809, i1 0, %nyx_string* %7810)
  %7812 = alloca i1
  store i1 %7811, i1* %7812
  %7813 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 0
  %7814 = load %nyx_string*, %nyx_string** %7813
  %7815 = alloca %nyx_string*
  store %nyx_string* %7814, %nyx_string** %7815
  %7816 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 10
  %7817 = load %nyx_string*, %nyx_string** %7816
  %7818 = getelementptr [1 x i8], [1 x i8]* @.str1168, i32 0, i32 0
  %7819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1168.c, i8* %7818, i64 0)
  %7820 = call i1 @nyx_string_equals(%nyx_string* %7817, %nyx_string* %7819)
  %7821 = xor i1 %7820, true
  br i1 %7821, label %then1421, label %else1422
then1421:
  %7822 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 10
  %7823 = load %nyx_string*, %nyx_string** %7822
  store %nyx_string* %7823, %nyx_string** %7815
  br label %merge1423
else1422:
  br label %merge1423
merge1423:
  %7824 = load i1, i1* %7812
  br i1 %7824, label %then1424, label %else1425
then1424:
  %7825 = load %ProjectConfig, %ProjectConfig* %7657
  %7826 = call i64 @write_lockfile(%ProjectConfig %7825)
  %7827 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 6
  %7828 = load %nyx_string*, %nyx_string** %7827
  %7829 = alloca %nyx_string*
  store %nyx_string* %7828, %nyx_string** %7829
  %7830 = load %nyx_string*, %nyx_string** %6943
  %7831 = getelementptr [1 x i8], [1 x i8]* @.str1169, i32 0, i32 0
  %7832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1169.c, i8* %7831, i64 0)
  %7833 = call i1 @nyx_string_equals(%nyx_string* %7830, %nyx_string* %7832)
  %7834 = xor i1 %7833, true
  br i1 %7834, label %then1427, label %else1428
then1427:
  %7835 = load %nyx_string*, %nyx_string** %6943
  store %nyx_string* %7835, %nyx_string** %7829
  br label %merge1429
else1428:
  br label %merge1429
merge1429:
  %7836 = load %nyx_string*, %nyx_string** %7829
  %7837 = getelementptr [12 x i8], [12 x i8]* @.str1170, i32 0, i32 0
  %7838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1170.c, i8* %7837, i64 11)
  %7839 = call i1 @nyx_string_equals(%nyx_string* %7836, %nyx_string* %7838)
  br i1 %7839, label %then1430, label %else1431
then1430:
  %7840 = getelementptr [20 x i8], [20 x i8]* @.str1171, i32 0, i32 0
  %7841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1171.c, i8* %7840, i64 19)
  %7842 = load %nyx_string*, %nyx_string** %7815
  %7843 = call %nyx_string* @nyx_string_concat(%nyx_string* %7841, %nyx_string* %7842)
  %7844 = getelementptr [6 x i8], [6 x i8]* @.str1172, i32 0, i32 0
  %7845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1172.c, i8* %7844, i64 5)
  %7846 = call %nyx_string* @nyx_string_concat(%nyx_string* %7843, %nyx_string* %7845)
  %7847 = alloca %nyx_string*
  store %nyx_string* %7846, %nyx_string** %7847
  %7848 = load %nyx_string*, %nyx_string** %7847
  %7849 = call i8* @nyx_string_to_cstr(%nyx_string* %7848)
  %7850 = call i1 @nyx_file_exists(i8* %7849)
  %7851 = xor i1 %7850, true
  br i1 %7851, label %then1433, label %else1434
then1433:
  %7852 = getelementptr [24 x i8], [24 x i8]* @.str1173, i32 0, i32 0
  %7853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1173.c, i8* %7852, i64 23)
  %7854 = load %nyx_string*, %nyx_string** %7847
  %7855 = call %nyx_string* @nyx_string_concat(%nyx_string* %7853, %nyx_string* %7854)
  %7856 = call i8* @nyx_string_to_cstr(%nyx_string* %7855)
  call void @nyx_print_string(i8* %7856)
  ret i64 1
else1434:
  br label %merge1435
merge1435:
  %7857 = getelementptr [36 x i8], [36 x i8]* @.str1174, i32 0, i32 0
  %7858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1174.c, i8* %7857, i64 35)
  %7859 = call i8* @nyx_string_to_cstr(%nyx_string* %7858)
  %7860 = call i64 @nyx_exec_code(i8* %7859)
  %7861 = icmp ne i64 %7860, 0
  br i1 %7861, label %then1436, label %else1437
then1436:
  %7862 = getelementptr [24 x i8], [24 x i8]* @.str1175, i32 0, i32 0
  %7863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1175.c, i8* %7862, i64 23)
  %7864 = load %nyx_string*, %nyx_string** %7847
  %7865 = call %nyx_string* @nyx_string_concat(%nyx_string* %7863, %nyx_string* %7864)
  %7866 = getelementptr [45 x i8], [45 x i8]* @.str1176, i32 0, i32 0
  %7867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1176.c, i8* %7866, i64 44)
  %7868 = call %nyx_string* @nyx_string_concat(%nyx_string* %7865, %nyx_string* %7867)
  %7869 = call i8* @nyx_string_to_cstr(%nyx_string* %7868)
  call void @nyx_print_string(i8* %7869)
  %7870 = getelementptr [54 x i8], [54 x i8]* @.str1177, i32 0, i32 0
  %7871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1177.c, i8* %7870, i64 53)
  %7872 = load %nyx_string*, %nyx_string** %7847
  %7873 = call %nyx_string* @nyx_string_concat(%nyx_string* %7871, %nyx_string* %7872)
  %7874 = call i8* @nyx_string_to_cstr(%nyx_string* %7873)
  call void @nyx_print_string(i8* %7874)
  ret i64 1
else1437:
  br label %merge1438
merge1438:
  %7875 = getelementptr [10 x i8], [10 x i8]* @.str1178, i32 0, i32 0
  %7876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1178.c, i8* %7875, i64 9)
  %7877 = load %nyx_string*, %nyx_string** %7847
  %7878 = call %nyx_string* @nyx_string_concat(%nyx_string* %7876, %nyx_string* %7877)
  %7879 = alloca %nyx_string*
  store %nyx_string* %7878, %nyx_string** %7879
  %7880 = alloca i64
  store i64 2, i64* %7880
  %7881 = alloca i1
  store i1 0, i1* %7881
  %7882 = getelementptr [2 x i8], [2 x i8]* @.str1179, i32 0, i32 0
  %7883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1179.c, i8* %7882, i64 1)
  %7884 = alloca %nyx_string*
  store %nyx_string* %7883, %nyx_string** %7884
  %7885 = getelementptr [3 x i8], [3 x i8]* @.str1180, i32 0, i32 0
  %7886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1180.c, i8* %7885, i64 2)
  %7887 = alloca %nyx_string*
  store %nyx_string* %7886, %nyx_string** %7887
  %7888 = getelementptr [9 x i8], [9 x i8]* @.str1181, i32 0, i32 0
  %7889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1181.c, i8* %7888, i64 8)
  %7890 = alloca %nyx_string*
  store %nyx_string* %7889, %nyx_string** %7890
  %7891 = getelementptr [7 x i8], [7 x i8]* @.str1182, i32 0, i32 0
  %7892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1182.c, i8* %7891, i64 6)
  %7893 = alloca %nyx_string*
  store %nyx_string* %7892, %nyx_string** %7893
  %7894 = call i8* @llvm.stacksave()
  br label %while_cond1439
while_cond1439:
  %7895 = load i64, i64* %7880
  %7896 = load { i64, i8* }*, { i64, i8* }** %6936
  %7897 = call i64 @nyx_array_length({ i64, i8* }* %7896)
  %7898 = icmp slt i64 %7895, %7897
  br i1 %7898, label %while_body1440, label %while_end1441
while_body1440:
  call void @llvm.stackrestore(i8* %7894)
  %7899 = load { i64, i8* }*, { i64, i8* }** %6936
  %7900 = load i64, i64* %7880
  %7901 = call i64 @nyx_array_get_checked({ i64, i8* }* %7899, i64 %7900, i64 2)
  %7902 = inttoptr i64 %7901 to %nyx_string*
  %7903 = alloca %nyx_string*
  store %nyx_string* %7902, %nyx_string** %7903
  %7904 = load i1, i1* %7881
  br i1 %7904, label %then1442, label %else1443
then1442:
  %7905 = load %nyx_string*, %nyx_string** %7879
  %7906 = load %nyx_string*, %nyx_string** %7884
  %7907 = call %nyx_string* @nyx_string_concat(%nyx_string* %7905, %nyx_string* %7906)
  %7908 = load %nyx_string*, %nyx_string** %7903
  %7909 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %6934, %nyx_string* %7908)
  %7910 = call %nyx_string* @nyx_string_concat(%nyx_string* %7907, %nyx_string* %7909)
  store %nyx_string* %7910, %nyx_string** %7879
  br label %merge1444
else1443:
  %7911 = load %nyx_string*, %nyx_string** %7903
  %7912 = load %nyx_string*, %nyx_string** %7887
  %7913 = call i1 @nyx_string_equals(%nyx_string* %7911, %nyx_string* %7912)
  br i1 %7913, label %then1445, label %else1446
then1445:
  store i1 1, i1* %7881
  br label %merge1447
else1446:
  %7914 = alloca i1
  store i1 true, i1* %7914
  %7915 = load %nyx_string*, %nyx_string** %7903
  %7916 = load %nyx_string*, %nyx_string** %7890
  %7917 = call i1 @nyx_string_equals(%nyx_string* %7915, %nyx_string* %7916)
  br i1 %7917, label %sc_or_end1449, label %sc_or_rhs1448
sc_or_rhs1448:
  %7918 = load %nyx_string*, %nyx_string** %7903
  %7919 = load %nyx_string*, %nyx_string** %7893
  %7920 = call i1 @nyx_string_equals(%nyx_string* %7918, %nyx_string* %7919)
  store i1 %7920, i1* %7914
  br label %sc_or_end1449
sc_or_end1449:
  %7921 = load i1, i1* %7914
  br i1 %7921, label %then1450, label %else1451
then1450:
  %7922 = load i64, i64* %7880
  %7923 = add i64 %7922, 1
  store i64 %7923, i64* %7880
  br label %merge1452
else1451:
  br label %merge1452
merge1452:
  br label %merge1447
merge1447:
  br label %merge1444
merge1444:
  %7924 = load i64, i64* %7880
  %7925 = add i64 %7924, 1
  store i64 %7925, i64* %7880
  br label %while_cond1439
while_end1441:
  %7926 = load %nyx_string*, %nyx_string** %7879
  %7927 = call i8* @nyx_string_to_cstr(%nyx_string* %7926)
  %7928 = call i64 @nyx_exec_code(i8* %7927)
  ret i64 %7928
else1431:
  br label %merge1432
merge1432:
  %7929 = load %nyx_string*, %nyx_string** %7829
  %7930 = getelementptr [1 x i8], [1 x i8]* @.str1183, i32 0, i32 0
  %7931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1183.c, i8* %7930, i64 0)
  %7932 = call i1 @nyx_string_equals(%nyx_string* %7929, %nyx_string* %7931)
  %7933 = xor i1 %7932, true
  br i1 %7933, label %then1453, label %else1454
then1453:
  %7934 = getelementptr [51 x i8], [51 x i8]* @.str1184, i32 0, i32 0
  %7935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1184.c, i8* %7934, i64 50)
  %7936 = load %nyx_string*, %nyx_string** %7829
  %7937 = call %nyx_string* @nyx_string_concat(%nyx_string* %7935, %nyx_string* %7936)
  %7938 = call i8* @nyx_string_to_cstr(%nyx_string* %7937)
  call void @nyx_print_string(i8* %7938)
  %7939 = getelementptr [27 x i8], [27 x i8]* @.str1185, i32 0, i32 0
  %7940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1185.c, i8* %7939, i64 26)
  %7941 = load %nyx_string*, %nyx_string** %7829
  %7942 = call %nyx_string* @nyx_string_concat(%nyx_string* %7940, %nyx_string* %7941)
  %7943 = getelementptr [47 x i8], [47 x i8]* @.str1186, i32 0, i32 0
  %7944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1186.c, i8* %7943, i64 46)
  %7945 = call %nyx_string* @nyx_string_concat(%nyx_string* %7942, %nyx_string* %7944)
  %7946 = call i8* @nyx_string_to_cstr(%nyx_string* %7945)
  call void @nyx_print_string(i8* %7946)
  ret i64 1
else1454:
  br label %merge1455
merge1455:
  %7947 = getelementptr [3 x i8], [3 x i8]* @.str1187, i32 0, i32 0
  %7948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1187.c, i8* %7947, i64 2)
  %7949 = load %nyx_string*, %nyx_string** %7815
  %7950 = call %nyx_string* @nyx_string_concat(%nyx_string* %7948, %nyx_string* %7949)
  %7951 = alloca %nyx_string*
  store %nyx_string* %7950, %nyx_string** %7951
  %7952 = getelementptr %ProjectConfig, %ProjectConfig* %7657, i32 0, i32 10
  %7953 = load %nyx_string*, %nyx_string** %7952
  %7954 = getelementptr [1 x i8], [1 x i8]* @.str1188, i32 0, i32 0
  %7955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1188.c, i8* %7954, i64 0)
  %7956 = call i1 @nyx_string_equals(%nyx_string* %7953, %nyx_string* %7955)
  %7957 = xor i1 %7956, true
  br i1 %7957, label %then1456, label %else1457
then1456:
  %7958 = getelementptr [10 x i8], [10 x i8]* @.str1189, i32 0, i32 0
  %7959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1189.c, i8* %7958, i64 9)
  %7960 = load %nyx_string*, %nyx_string** %7815
  %7961 = call %nyx_string* @nyx_string_concat(%nyx_string* %7959, %nyx_string* %7960)
  store %nyx_string* %7961, %nyx_string** %7951
  br label %merge1458
else1457:
  br label %merge1458
merge1458:
  %7962 = alloca i64
  store i64 2, i64* %7962
  %7963 = alloca i1
  store i1 0, i1* %7963
  %7964 = getelementptr [2 x i8], [2 x i8]* @.str1190, i32 0, i32 0
  %7965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1190.c, i8* %7964, i64 1)
  %7966 = alloca %nyx_string*
  store %nyx_string* %7965, %nyx_string** %7966
  %7967 = getelementptr [3 x i8], [3 x i8]* @.str1191, i32 0, i32 0
  %7968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1191.c, i8* %7967, i64 2)
  %7969 = alloca %nyx_string*
  store %nyx_string* %7968, %nyx_string** %7969
  %7970 = getelementptr [10 x i8], [10 x i8]* @.str1192, i32 0, i32 0
  %7971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1192.c, i8* %7970, i64 9)
  %7972 = alloca %nyx_string*
  store %nyx_string* %7971, %nyx_string** %7972
  %7973 = getelementptr [9 x i8], [9 x i8]* @.str1193, i32 0, i32 0
  %7974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1193.c, i8* %7973, i64 8)
  %7975 = alloca %nyx_string*
  store %nyx_string* %7974, %nyx_string** %7975
  %7976 = getelementptr [7 x i8], [7 x i8]* @.str1194, i32 0, i32 0
  %7977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1194.c, i8* %7976, i64 6)
  %7978 = alloca %nyx_string*
  store %nyx_string* %7977, %nyx_string** %7978
  %7979 = call i8* @llvm.stacksave()
  br label %while_cond1459
while_cond1459:
  %7980 = load i64, i64* %7962
  %7981 = load { i64, i8* }*, { i64, i8* }** %6936
  %7982 = call i64 @nyx_array_length({ i64, i8* }* %7981)
  %7983 = icmp slt i64 %7980, %7982
  br i1 %7983, label %while_body1460, label %while_end1461
while_body1460:
  call void @llvm.stackrestore(i8* %7979)
  %7984 = load { i64, i8* }*, { i64, i8* }** %6936
  %7985 = load i64, i64* %7962
  %7986 = call i64 @nyx_array_get_checked({ i64, i8* }* %7984, i64 %7985, i64 2)
  %7987 = inttoptr i64 %7986 to %nyx_string*
  %7988 = alloca %nyx_string*
  store %nyx_string* %7987, %nyx_string** %7988
  %7989 = load i1, i1* %7963
  br i1 %7989, label %then1462, label %else1463
then1462:
  %7990 = load %nyx_string*, %nyx_string** %7951
  %7991 = load %nyx_string*, %nyx_string** %7966
  %7992 = call %nyx_string* @nyx_string_concat(%nyx_string* %7990, %nyx_string* %7991)
  %7993 = load %nyx_string*, %nyx_string** %7988
  %7994 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %6934, %nyx_string* %7993)
  %7995 = call %nyx_string* @nyx_string_concat(%nyx_string* %7992, %nyx_string* %7994)
  store %nyx_string* %7995, %nyx_string** %7951
  br label %merge1464
else1463:
  %7996 = load %nyx_string*, %nyx_string** %7988
  %7997 = load %nyx_string*, %nyx_string** %7969
  %7998 = call i1 @nyx_string_equals(%nyx_string* %7996, %nyx_string* %7997)
  br i1 %7998, label %then1465, label %else1466
then1465:
  store i1 1, i1* %7963
  br label %merge1467
else1466:
  %7999 = load %nyx_string*, %nyx_string** %7988
  %8000 = load %nyx_string*, %nyx_string** %7972
  %8001 = call i1 @nyx_string_equals(%nyx_string* %7999, %nyx_string* %8000)
  br i1 %8001, label %then1468, label %else1469
then1468:
  %8002 = load i64, i64* %7962
  store i64 %8002, i64* %7962
  br label %merge1470
else1469:
  %8003 = alloca i1
  store i1 true, i1* %8003
  %8004 = load %nyx_string*, %nyx_string** %7988
  %8005 = load %nyx_string*, %nyx_string** %7975
  %8006 = call i1 @nyx_string_equals(%nyx_string* %8004, %nyx_string* %8005)
  br i1 %8006, label %sc_or_end1472, label %sc_or_rhs1471
sc_or_rhs1471:
  %8007 = load %nyx_string*, %nyx_string** %7988
  %8008 = load %nyx_string*, %nyx_string** %7978
  %8009 = call i1 @nyx_string_equals(%nyx_string* %8007, %nyx_string* %8008)
  store i1 %8009, i1* %8003
  br label %sc_or_end1472
sc_or_end1472:
  %8010 = load i1, i1* %8003
  br i1 %8010, label %then1473, label %else1474
then1473:
  %8011 = load i64, i64* %7962
  %8012 = add i64 %8011, 1
  store i64 %8012, i64* %7962
  br label %merge1475
else1474:
  %8013 = load %nyx_string*, %nyx_string** %7951
  %8014 = load %nyx_string*, %nyx_string** %7966
  %8015 = call %nyx_string* @nyx_string_concat(%nyx_string* %8013, %nyx_string* %8014)
  %8016 = load %nyx_string*, %nyx_string** %7988
  %8017 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %6934, %nyx_string* %8016)
  %8018 = call %nyx_string* @nyx_string_concat(%nyx_string* %8015, %nyx_string* %8017)
  store %nyx_string* %8018, %nyx_string** %7951
  br label %merge1475
merge1475:
  br label %merge1470
merge1470:
  br label %merge1467
merge1467:
  br label %merge1464
merge1464:
  %8019 = load i64, i64* %7962
  %8020 = add i64 %8019, 1
  store i64 %8020, i64* %7962
  br label %while_cond1459
while_end1461:
  %8021 = load %nyx_string*, %nyx_string** %7951
  %8022 = call i8* @nyx_string_to_cstr(%nyx_string* %8021)
  %8023 = call i64 @nyx_exec_code(i8* %8022)
  %8024 = alloca i64
  store i64 %8023, i64* %8024
  %8025 = load i64, i64* %8024
  ret i64 %8025
else1425:
  br label %merge1426
merge1426:
  ret i64 1
else1408:
  br label %merge1409
merge1409:
  %8026 = getelementptr [24 x i8], [24 x i8]* @.str1195, i32 0, i32 0
  %8027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1195.c, i8* %8026, i64 23)
  %8028 = load %nyx_string*, %nyx_string** %6939
  %8029 = call %nyx_string* @nyx_string_concat(%nyx_string* %8027, %nyx_string* %8028)
  %8030 = call i8* @nyx_string_to_cstr(%nyx_string* %8029)
  call void @nyx_print_string(i8* %8030)
  %8031 = getelementptr [110 x i8], [110 x i8]* @.str1196, i32 0, i32 0
  %8032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1196.c, i8* %8031, i64 109)
  %8033 = call i8* @nyx_string_to_cstr(%nyx_string* %8032)
  call void @nyx_print_string(i8* %8033)
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
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1197, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1197.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1198, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1198.c, i8* %30, i64 1)
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
  %8034 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %8035 = call %nyx_string* @nyx_string_from_ptr(i8* %8034, i64 64)
  store %nyx_string* %8035, %nyx_string** @std_base64____b64_chars
  %8036 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %8037 = call %nyx_string* @nyx_string_from_ptr(i8* %8036, i64 64)
  store %nyx_string* %8037, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

