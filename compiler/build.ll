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
@.str581 = private unnamed_addr constant [22 x i8] c"nyx_pista_import() {\0a\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [99 x i8] c"  for n in $(grep -oE \22'[A-Za-z_][A-Za-z0-9_]*' not declared\22 \22$1\22 | cut -d\22'\22 -f2 | sort -u); do\0a\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [95 x i8] c"    def=$(grep -rlE \22^(pub |export )?(async )?fn $n\5c(\22 \22$ORIG_DIR/src\22 2>/dev/null | head -1)\0a\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [31 x i8] c"    [ -n \22$def\22 ] || continue\0a\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [59 x i8] c"    rel=$(echo \22$def\22 | sed \22s|^$ORIG_DIR/||; s|\5c.nx$||\22)\0a\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [81 x i8] c"    priv=''; grep -qE \22^fn $n\5c(\22 \22$def\22 && priv=' (y es privada: le falta pub)'\0a\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [243 x i8] c"    echo \22nota: '$n' está en $rel$priv y este módulo no lo importa. Sin [lib] compilaba porque el programa inlineado comparte un solo espacio de nombres; una biblioteca se compila sola y ve solo lo que importa: agrega  import \5c\22$rel\5c\22\22 >&2\0a\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [8 x i8] c"  done\0a\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [12 x i8] c"  return 0\0a\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [2 x i8] c"/\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [8 x i8] c"import \00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [1 x i8] c"\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [1 x i8] c"\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [2 x i8] c" \00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [3 x i8] c"{}\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [6 x i8] c"impl \00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [6 x i8] c"impl<\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [7 x i8] c"trait \00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [11 x i8] c"pub trait \00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [14 x i8] c"export trait \00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [1 x i8] c"\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [10 x i8] c"interfaz:\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [1 x i8] c"\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [3 x i8] c"i:\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [2 x i8] c"|\00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [12 x i8] c"/prelude.nx\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [2 x i8] c"|\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [2 x i8] c"=\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [1 x i8] c"\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [2 x i8] c",\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [2 x i8] c":\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [2 x i8] c":\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [2 x i8] c"|\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [2 x i8] c"|\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [2 x i8] c"|\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [60 x i8] c"LIB_OBJS=\22\22\0aLIB_MAP=\22\22\0amkdir -p \22$ORIG_DIR/target/nyx-lib\22\0a\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [2 x i8] c"/\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [2 x i8] c"_\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [26 x i8] c"$ORIG_DIR/target/nyx-lib/\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [2 x i8] c"-\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [3 x i8] c".o\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [8 x i8] c".inline\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [30 x i8] c"NYX_LIB_UNIT=1 NYX_LIB_SELF=\22\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [20 x i8] c"\22 NYX_LIB_MODULES=\22\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [39 x i8] c"\22 NYX_SRC=\22$LSRC.nx\22 NYX_SRC_DISPLAY=\22\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [35 x i8] c".nx\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [4 x i8] c"\22 )\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [10 x i8] c"if [ -f \22\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [28 x i8] c"\22 ]; then echo '   reusing \00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [43 x i8] c" (lib, sin cambios)'; LIB_OBJS=\22$LIB_OBJS \00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [22 x i8] c"\22; LIB_MAP=\22$LIB_MAP \00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [2 x i8] c"=\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [12 x i8] c"elif [ -f \22\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [13 x i8] c"\22 ]; then :\0a\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [27 x i8] c"else\0a  echo '   compiling \00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [9 x i8] c" (lib)'\0a\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [35 x i8] c"  rm -f \22$ORIG_DIR/target/nyx-lib/\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [5 x i8] c"-\22*\0a\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [55 x i8] c"  LSRC=\22$(mktemp /tmp/nyx_lib_XXXXXX)\22; cp \22$ORIG_DIR/\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [17 x i8] c".nx\22 \22$LSRC.nx\22\0a\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [10 x i8] c"  lrc=0; \00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [26 x i8] c" > \22$LOG\22 2>&1 || lrc=$?\0a\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [66 x i8] c"  if [ $lrc -eq 3 ]; then grep -F '⚠' \22$LOG\22 >&2 || true; : > \22\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [62 x i8] c"  elif [ $lrc -ne 0 ]; then echo \22error: nyx compile failed (\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [111 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; nyx_pista $lrc; nyx_pista_import \22$LOG\22; rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22; exit 1\0a\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [45 x i8] c"  else\0a    grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [14 x i8] c"    clang -c \00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [38 x i8] c" -Wno-override-module \22$LSRC.ll\22 -o \22\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [45 x i8] c"\22 2> \22$LOG\22 || { echo \22error: clang failed (\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [36 x i8] c"):\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [25 x i8] c"    LIB_OBJS=\22$LIB_OBJS \00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [8 x i8] c"\22\0a  fi\0a\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [42 x i8] c"  rm -f \22$LSRC\22 \22$LSRC.nx\22 \22$LSRC.ll\22\0afi\0a\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [1 x i8] c"\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [1 x i8] c"\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [24 x i8] c"/.nyx/runtime/runtime.c\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [1 x i8] c"\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [2 x i8] c".\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [1 x i8] c"\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [1 x i8] c"\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [1 x i8] c"\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [86 x i8] c"ORIG_DIR=\22$(pwd)\22\0aLOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0atrap 'rm -f \22$LOG\22' EXIT\0a\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [29 x i8] c"echo \22NYX_LIB_MAP:$LIB_MAP\22\0a\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [15 x i8] c"/tmp/nyx_libs_\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [1 x i8] c"\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [1 x i8] c"\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [1 x i8] c"\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [3 x i8] c" [\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [2 x i8] c"]\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [3 x i8] c" v\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [1 x i8] c"\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [1 x i8] c"\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [1 x i8] c"\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [1 x i8] c"\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [1 x i8] c"\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [1 x i8] c"\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [1 x i8] c"\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [1 x i8] c"\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [2 x i8] c".\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [1 x i8] c"\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [77 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c $RT/net.c $RT/thread.c $RT/regex.c \00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [89 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c $RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [83 x i8] c"$RT/compress.c $RT/random.c $RT/url.c $RT/msgpack.c $RT/websocket.c $RT/persist.c \00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [65 x i8] c"$RT/http2.c $RT/process.c $RT/llama_adapter.c $RT/os/os_posix.c \00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [8 x i8] c"RT_IN=(\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [3 x i8] c")\0a\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [17 x i8] c"if nyx_rt_auto \22\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [31 x i8] c"; then RT_IN=(\22$RT_AUTO\22); fi\0a\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [1 x i8] c"\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [2 x i8] c"/\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [2 x i8] c"/\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [9 x i8] c"RT_IN=(\22\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [3 x i8] c"\22$\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [13 x i8] c"{RT_IN[@]}\22 \00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [1 x i8] c"\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [1 x i8] c"\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [18 x i8] c"NYX_LIB_MODULES=\22\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [2 x i8] c",\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [19 x i8] c"\22 ) > \22$LOG\22 2>&1 \00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [93 x i8] c"|| { rc=$?; echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; nyx_pista $rc; exit 1; }\0a\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [34 x i8] c"grep -F '⚠' \22$LOG\22 >&2 || true\0a\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [22 x i8] c" \22$SRC.ll\22 $LIB_OBJS \00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [1 x i8] c"\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [2 x i8] c"#\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [95 x i8] c"ASY=\22$(grep -m1 '^; nyx-asyncify-imports: ' \22$SRC.ll\22 | sed 's/^; nyx-asyncify-imports: //')\22\0a\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [24 x i8] c"if [ -n \22$ASY\22 ]; then\0a\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [10 x i8] c"  WOPT=\22$\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [49 x i8] c"{NYX_WASM_OPT:-$(command -v wasm-opt || true)}\22\0a\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [207 x i8] c"  test -n \22$WOPT\22 || { echo \22error: el programa usa imports que suspenden (await que espera al anfitrion: $ASY) y falta wasm-opt - sudo apt install binaryen, o NYX_WASM_OPT=/ruta/a/wasm-opt\22 >&2; exit 1; }\0a\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [41 x i8] c"  \22$WOPT\22 \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [58 x i8] c".wasm\22 --asyncify --pass-arg=asyncify-imports@\22$ASY\22 -O2 \00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [78 x i8] c"|| { echo \22error: wasm-opt --asyncify fallo:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [1 x i8] c"\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [1 x i8] c"\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [2 x i8] c"/\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [1 x i8] c"\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [3 x i8] c"./\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [1 x i8] c"\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [1 x i8] c"\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [1 x i8] c"\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [1 x i8] c"/"
@.str863 = private unnamed_addr constant [2 x i8] c"-\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [1 x i8] c"\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [1 x i8] c"\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [1 x i8] c"\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [7 x i8] c"0.33.0\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [73 x i8] c"> Completa las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [80 x i8] c"FRICTION.md ya existe con contenido — avísale al usuario para que lo revise.\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [78 x i8] c"creado FRICTION.md — completa las secciones (tu asistente IA puede hacerlo)\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [72 x i8] c"y AVÍSALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [1 x i8] c"\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [66 x i8] c"error: el reporte parece vacío — completa la plantilla primero\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [1 x i8] c"\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [1 x i8] c"\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [1 x i8] c"\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [17 x i8] c"nyx_rt_auto() {\0a\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [41 x i8] c"  [ -n \22$NYX_NO_RT_CACHE\22 ] && return 1\0a\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [24 x i8] c"  local fl=\22$1\22; shift\0a\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [92 x i8] c"  local base=\22$XDG_CACHE_HOME\22; [ -n \22$base\22 ] || base=\22$HOME/.cache\22; base=\22$base/nyx/rt\22\0a\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [177 x i8] c"  local key; key=$( { printf '%s\5cn' \22$fl\22 \22$*\22; clang --version 2>/dev/null | head -1; cat \22$@\22 runtime/*.h runtime/os/*.h 2>/dev/null; } | sha256sum | cut -c1-16) || return 1\0a\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [35 x i8] c"  local a=\22$base/$key/libnyxrt.a\22\0a\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [83 x i8] c"  if [ -f \22$a\22 ]; then touch \22$base/$key\22 2>/dev/null; RT_AUTO=\22$a\22; return 0; fi\0a\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [49 x i8] c"  mkdir -p \22$base/$key\22 2>/dev/null || return 1\0a\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [89 x i8] c"  find \22$base\22 -mindepth 1 -maxdepth 1 -type d -mtime +14 -exec rm -rf {} + 2>/dev/null\0a\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [68 x i8] c"  local tmp; tmp=$(mktemp -d \22$base/$key/.tmp.XXXXXX\22) || return 1\0a\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [15 x i8] c"  local f n=0\0a\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [114 x i8] c"  for f in \22$@\22; do n=$((n+1)); clang $fl -Wno-deprecated-declarations -c \22$f\22 -o \22$tmp/$n.o\22 2>/dev/null & done\0a\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [8 x i8] c"  wait\0a\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [138 x i8] c"  if [ \22$(ls \22$tmp\22 | grep -c '\5c.o$')\22 = \22$n\22 ] && ar rcs \22$tmp/libnyxrt.a\22 \22$tmp\22/*.o 2>/dev/null && mv -f \22$tmp/libnyxrt.a\22 \22$a\22; then\0a\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [43 x i8] c"    rm -rf \22$tmp\22; RT_AUTO=\22$a\22; return 0\0a\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [6 x i8] c"  fi\0a\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [27 x i8] c"  rm -rf \22$tmp\22; return 1\0a\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [1 x i8] c"\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [1 x i8] c"\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [1 x i8] c"\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [4 x i8] c"std\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [2 x i8] c".\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [1 x i8] c"\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [1 x i8] c"\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [5 x i8] c"http\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [4 x i8] c"web\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [8 x i8] c"browser\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [4 x i8] c"dom\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [5 x i8] c"vdom\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [3 x i8] c"db\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [5 x i8] c"json\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [8 x i8] c"barcode\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [4 x i8] c"pdf\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [5 x i8] c"file\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [3 x i8] c"io\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [5 x i8] c"path\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [4 x i8] c"net\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [4 x i8] c"url\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [5 x i8] c"smtp\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [6 x i8] c"async\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [7 x i8] c"random\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [5 x i8] c"time\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [7 x i8] c"string\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [4 x i8] c"set\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [4 x i8] c"box\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [5 x i8] c"args\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [4 x i8] c"log\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [1 x i8] c"\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [1 x i8] c"("
@.str1021 = private unnamed_addr constant [1 x i8] c")"
@.str1022 = private unnamed_addr constant [2 x i8] c"/\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [1 x i8] c"\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [1 x i8] c"\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [4 x i8] c"///\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [1 x i8] c"\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [2 x i8] c" \00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [14 x i8] c"pub async fn \00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [17 x i8] c"export async fn \00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [2 x i8] c"`\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [1 x i8] c"("
@.str1038 = private unnamed_addr constant [1 x i8] c"{"
@.str1039 = private unnamed_addr constant [1 x i8] c"\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [1 x i8] c"\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [1 x i8] c"\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [2 x i8] c"s\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [2 x i8] c")\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [1 x i8] c"\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [1 x i8] c"\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [1 x i8] c"\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [15 x i8] c"NYX_CAPS_STAMP\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [1 x i8] c"\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [18 x i8] c"<!-- nyx-stdlib: \00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [1 x i8] c"\00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [4 x i8] c"## \00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [1 x i8] c"\00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [3 x i8] c" (\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [1 x i8] c"\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [1 x i8] c"\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [1 x i8] c"\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [5 x i8] c"test\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [1 x i8] c"\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str1117.c = internal global %nyx_string* null
@.str1118 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str1118.c = internal global %nyx_string* null
@.str1119 = private unnamed_addr constant [1 x i8] c"-"
@.str1120 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [1 x i8] c"\00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [1 x i8] c"\00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [6 x i8] c" — \00"
@.str1134.c = internal global %nyx_string* null
@.str1135 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1135.c = internal global %nyx_string* null
@.str1136 = private unnamed_addr constant [1 x i8] c"\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [1 x i8] c"\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [1 x i8] c"\00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [1 x i8] c"\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [1 x i8] c"\00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [1 x i8] c"\00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [1 x i8] c"\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str1149.c = internal global %nyx_string* null
@.str1150 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1150.c = internal global %nyx_string* null
@.str1151 = private unnamed_addr constant [1 x i8] c"\00"
@.str1151.c = internal global %nyx_string* null
@.str1152 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1152.c = internal global %nyx_string* null
@.str1153 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str1153.c = internal global %nyx_string* null
@.str1154 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str1154.c = internal global %nyx_string* null
@.str1155 = private unnamed_addr constant [1 x i8] c"\00"
@.str1155.c = internal global %nyx_string* null
@.str1156 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str1156.c = internal global %nyx_string* null
@.str1157 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1157.c = internal global %nyx_string* null
@.str1158 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1158.c = internal global %nyx_string* null
@.str1159 = private unnamed_addr constant [1 x i8] c"\00"
@.str1159.c = internal global %nyx_string* null
@.str1160 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1160.c = internal global %nyx_string* null
@.str1161 = private unnamed_addr constant [3 x i8] c"en\00"
@.str1161.c = internal global %nyx_string* null
@.str1162 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1162.c = internal global %nyx_string* null
@.str1163 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str1163.c = internal global %nyx_string* null
@.str1164 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str1164.c = internal global %nyx_string* null
@.str1165 = private unnamed_addr constant [1 x i8] c"\00"
@.str1165.c = internal global %nyx_string* null
@.str1166 = private unnamed_addr constant [2 x i8] c".\00"
@.str1166.c = internal global %nyx_string* null
@.str1167 = private unnamed_addr constant [1 x i8] c"\00"
@.str1167.c = internal global %nyx_string* null
@.str1168 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str1168.c = internal global %nyx_string* null
@.str1169 = private unnamed_addr constant [1 x i8] c"\00"
@.str1169.c = internal global %nyx_string* null
@.str1170 = private unnamed_addr constant [5 x i8] c"init\00"
@.str1170.c = internal global %nyx_string* null
@.str1171 = private unnamed_addr constant [2 x i8] c".\00"
@.str1171.c = internal global %nyx_string* null
@.str1172 = private unnamed_addr constant [2 x i8] c".\00"
@.str1172.c = internal global %nyx_string* null
@.str1173 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str1173.c = internal global %nyx_string* null
@.str1174 = private unnamed_addr constant [2 x i8] c".\00"
@.str1174.c = internal global %nyx_string* null
@.str1175 = private unnamed_addr constant [2 x i8] c".\00"
@.str1175.c = internal global %nyx_string* null
@.str1176 = private unnamed_addr constant [1 x i8] c"\00"
@.str1176.c = internal global %nyx_string* null
@.str1177 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str1177.c = internal global %nyx_string* null
@.str1178 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str1178.c = internal global %nyx_string* null
@.str1179 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str1179.c = internal global %nyx_string* null
@.str1180 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str1180.c = internal global %nyx_string* null
@.str1181 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str1181.c = internal global %nyx_string* null
@.str1182 = private unnamed_addr constant [4 x i8] c"add\00"
@.str1182.c = internal global %nyx_string* null
@.str1183 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str1183.c = internal global %nyx_string* null
@.str1184 = private unnamed_addr constant [1 x i8] c"\00"
@.str1184.c = internal global %nyx_string* null
@.str1185 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str1185.c = internal global %nyx_string* null
@.str1186 = private unnamed_addr constant [8 x i8] c"project\00"
@.str1186.c = internal global %nyx_string* null
@.str1187 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str1187.c = internal global %nyx_string* null
@.str1188 = private unnamed_addr constant [1 x i8] c"\00"
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
@.str1194 = private unnamed_addr constant [7 x i8] c"report\00"
@.str1194.c = internal global %nyx_string* null
@.str1195 = private unnamed_addr constant [1 x i8] c"\00"
@.str1195.c = internal global %nyx_string* null
@.str1196 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str1196.c = internal global %nyx_string* null
@.str1197 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1197.c = internal global %nyx_string* null
@.str1198 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str1198.c = internal global %nyx_string* null
@.str1199 = private unnamed_addr constant [1 x i8] c"\00"
@.str1199.c = internal global %nyx_string* null
@.str1200 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1200.c = internal global %nyx_string* null
@.str1201 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1201.c = internal global %nyx_string* null
@.str1202 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str1202.c = internal global %nyx_string* null
@.str1203 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str1203.c = internal global %nyx_string* null
@.str1204 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1204.c = internal global %nyx_string* null
@.str1205 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1205.c = internal global %nyx_string* null
@.str1206 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1206.c = internal global %nyx_string* null
@.str1207 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1207.c = internal global %nyx_string* null
@.str1208 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1208.c = internal global %nyx_string* null
@.str1209 = private unnamed_addr constant [1 x i8] c"\00"
@.str1209.c = internal global %nyx_string* null
@.str1210 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1210.c = internal global %nyx_string* null
@.str1211 = private unnamed_addr constant [1 x i8] c"\00"
@.str1211.c = internal global %nyx_string* null
@.str1212 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1212.c = internal global %nyx_string* null
@.str1213 = private unnamed_addr constant [1 x i8] c"\00"
@.str1213.c = internal global %nyx_string* null
@.str1214 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1214.c = internal global %nyx_string* null
@.str1215 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1215.c = internal global %nyx_string* null
@.str1216 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1216.c = internal global %nyx_string* null
@.str1217 = private unnamed_addr constant [1 x i8] c"\00"
@.str1217.c = internal global %nyx_string* null
@.str1218 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1218.c = internal global %nyx_string* null
@.str1219 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1219.c = internal global %nyx_string* null
@.str1220 = private unnamed_addr constant [5 x i8] c"libs\00"
@.str1220.c = internal global %nyx_string* null
@.str1221 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1221.c = internal global %nyx_string* null
@.str1222 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1222.c = internal global %nyx_string* null
@.str1223 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1223.c = internal global %nyx_string* null
@.str1224 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1224.c = internal global %nyx_string* null
@.str1225 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1225.c = internal global %nyx_string* null
@.str1226 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1226.c = internal global %nyx_string* null
@.str1227 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1227.c = internal global %nyx_string* null
@.str1228 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1228.c = internal global %nyx_string* null
@.str1229 = private unnamed_addr constant [1 x i8] c"\00"
@.str1229.c = internal global %nyx_string* null
@.str1230 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1230.c = internal global %nyx_string* null
@.str1231 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1231.c = internal global %nyx_string* null
@.str1232 = private unnamed_addr constant [1 x i8] c"\00"
@.str1232.c = internal global %nyx_string* null
@.str1233 = private unnamed_addr constant [1 x i8] c"\00"
@.str1233.c = internal global %nyx_string* null
@.str1234 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1234.c = internal global %nyx_string* null
@.str1235 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1235.c = internal global %nyx_string* null
@.str1236 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1236.c = internal global %nyx_string* null
@.str1237 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1237.c = internal global %nyx_string* null
@.str1238 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1238.c = internal global %nyx_string* null
@.str1239 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1239.c = internal global %nyx_string* null
@.str1240 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1240.c = internal global %nyx_string* null
@.str1241 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1241.c = internal global %nyx_string* null
@.str1242 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1242.c = internal global %nyx_string* null
@.str1243 = private unnamed_addr constant [2 x i8] c" \00"
@.str1243.c = internal global %nyx_string* null
@.str1244 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1244.c = internal global %nyx_string* null
@.str1245 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1245.c = internal global %nyx_string* null
@.str1246 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1246.c = internal global %nyx_string* null
@.str1247 = private unnamed_addr constant [1 x i8] c"\00"
@.str1247.c = internal global %nyx_string* null
@.str1248 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1248.c = internal global %nyx_string* null
@.str1249 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1249.c = internal global %nyx_string* null
@.str1250 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1250.c = internal global %nyx_string* null
@.str1251 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1251.c = internal global %nyx_string* null
@.str1252 = private unnamed_addr constant [1 x i8] c"\00"
@.str1252.c = internal global %nyx_string* null
@.str1253 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1253.c = internal global %nyx_string* null
@.str1254 = private unnamed_addr constant [2 x i8] c" \00"
@.str1254.c = internal global %nyx_string* null
@.str1255 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1255.c = internal global %nyx_string* null
@.str1256 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1256.c = internal global %nyx_string* null
@.str1257 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1257.c = internal global %nyx_string* null
@.str1258 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1258.c = internal global %nyx_string* null
@.str1259 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1259.c = internal global %nyx_string* null
@.str1260 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1260.c = internal global %nyx_string* null
@.str1261 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1261.c = internal global %nyx_string* null
@.str1262 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1262.c = internal global %nyx_string* null
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

define internal %nyx_string* @lib_pista_import_sh(
) {
  %4163 = getelementptr [22 x i8], [22 x i8]* @.str581, i32 0, i32 0
  %4164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4163, i64 21)
  %4165 = alloca %nyx_string*
  store %nyx_string* %4164, %nyx_string** %4165
  %4166 = load %nyx_string*, %nyx_string** %4165
  %4167 = getelementptr [99 x i8], [99 x i8]* @.str582, i32 0, i32 0
  %4168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4167, i64 98)
  %4169 = call %nyx_string* @nyx_string_concat(%nyx_string* %4166, %nyx_string* %4168)
  store %nyx_string* %4169, %nyx_string** %4165
  %4170 = load %nyx_string*, %nyx_string** %4165
  %4171 = getelementptr [95 x i8], [95 x i8]* @.str583, i32 0, i32 0
  %4172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4171, i64 94)
  %4173 = call %nyx_string* @nyx_string_concat(%nyx_string* %4170, %nyx_string* %4172)
  store %nyx_string* %4173, %nyx_string** %4165
  %4174 = load %nyx_string*, %nyx_string** %4165
  %4175 = getelementptr [31 x i8], [31 x i8]* @.str584, i32 0, i32 0
  %4176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4175, i64 30)
  %4177 = call %nyx_string* @nyx_string_concat(%nyx_string* %4174, %nyx_string* %4176)
  store %nyx_string* %4177, %nyx_string** %4165
  %4178 = load %nyx_string*, %nyx_string** %4165
  %4179 = getelementptr [59 x i8], [59 x i8]* @.str585, i32 0, i32 0
  %4180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4179, i64 58)
  %4181 = call %nyx_string* @nyx_string_concat(%nyx_string* %4178, %nyx_string* %4180)
  store %nyx_string* %4181, %nyx_string** %4165
  %4182 = load %nyx_string*, %nyx_string** %4165
  %4183 = getelementptr [81 x i8], [81 x i8]* @.str586, i32 0, i32 0
  %4184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4183, i64 80)
  %4185 = call %nyx_string* @nyx_string_concat(%nyx_string* %4182, %nyx_string* %4184)
  store %nyx_string* %4185, %nyx_string** %4165
  %4186 = load %nyx_string*, %nyx_string** %4165
  %4187 = getelementptr [243 x i8], [243 x i8]* @.str587, i32 0, i32 0
  %4188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4187, i64 242)
  %4189 = call %nyx_string* @nyx_string_concat(%nyx_string* %4186, %nyx_string* %4188)
  store %nyx_string* %4189, %nyx_string** %4165
  %4190 = load %nyx_string*, %nyx_string** %4165
  %4191 = getelementptr [8 x i8], [8 x i8]* @.str588, i32 0, i32 0
  %4192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4191, i64 7)
  %4193 = call %nyx_string* @nyx_string_concat(%nyx_string* %4190, %nyx_string* %4192)
  store %nyx_string* %4193, %nyx_string** %4165
  %4194 = load %nyx_string*, %nyx_string** %4165
  %4195 = getelementptr [12 x i8], [12 x i8]* @.str589, i32 0, i32 0
  %4196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4195, i64 11)
  %4197 = call %nyx_string* @nyx_string_concat(%nyx_string* %4194, %nyx_string* %4196)
  store %nyx_string* %4197, %nyx_string** %4165
  %4198 = load %nyx_string*, %nyx_string** %4165
  %4199 = getelementptr [3 x i8], [3 x i8]* @.str590, i32 0, i32 0
  %4200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4199, i64 2)
  %4201 = call %nyx_string* @nyx_string_concat(%nyx_string* %4198, %nyx_string* %4200)
  store %nyx_string* %4201, %nyx_string** %4165
  %4202 = load %nyx_string*, %nyx_string** %4165
  ret %nyx_string* %4202
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
  %4203 = load %nyx_string*, %nyx_string** %path.ptr
  %4204 = getelementptr [4 x i8], [4 x i8]* @.str591, i32 0, i32 0
  %4205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4204, i64 3)
  %4206 = call %nyx_string* @nyx_string_concat(%nyx_string* %4203, %nyx_string* %4205)
  %4207 = alloca %nyx_string*
  store %nyx_string* %4206, %nyx_string** %4207
  %4208 = load %nyx_string*, %nyx_string** %path.ptr
  %4209 = getelementptr [5 x i8], [5 x i8]* @.str592, i32 0, i32 0
  %4210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4209, i64 4)
  %4211 = call i1 @nyx_string_starts_with(%nyx_string* %4208, %nyx_string* %4210)
  br i1 %4211, label %then674, label %else675
then674:
  %4212 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %4213 = getelementptr [2 x i8], [2 x i8]* @.str593, i32 0, i32 0
  %4214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4213, i64 1)
  %4215 = call %nyx_string* @nyx_string_concat(%nyx_string* %4212, %nyx_string* %4214)
  %4216 = load %nyx_string*, %nyx_string** %path.ptr
  %4217 = load %nyx_string*, %nyx_string** %path.ptr
  %4218 = call i64 @nyx_string_byte_length(%nyx_string* %4217)
  %4219 = call %nyx_string* @nyx_string_substring(%nyx_string* %4216, i64 4, i64 %4218)
  %4220 = call %nyx_string* @nyx_string_concat(%nyx_string* %4215, %nyx_string* %4219)
  %4221 = getelementptr [4 x i8], [4 x i8]* @.str594, i32 0, i32 0
  %4222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4221, i64 3)
  %4223 = call %nyx_string* @nyx_string_concat(%nyx_string* %4220, %nyx_string* %4222)
  store %nyx_string* %4223, %nyx_string** %4207
  br label %merge676
else675:
  br label %merge676
merge676:
  %4224 = load i8*, i8** %vistos.ptr
  %4225 = load %nyx_string*, %nyx_string** %4207
  %4226 = call i8* @nyx_string_to_cstr(%nyx_string* %4225)
  %4227 = call i1 @nyx_map_contains_str(i8* %4224, i8* %4226)
  br i1 %4227, label %then677, label %else678
then677:
  ret i64 0
else678:
  br label %merge679
merge679:
  %4228 = load i8*, i8** %vistos.ptr
  %4229 = load %nyx_string*, %nyx_string** %4207
  %4230 = call i8* @nyx_string_to_cstr(%nyx_string* %4229)
  call void @nyx_map_insert_int(i8* %4228, i8* %4230, i64 1)
  %4231 = load i8*, i8** %imports_de.ptr
  %4232 = load %nyx_string*, %nyx_string** %4207
  %4233 = call i8* @nyx_string_to_cstr(%nyx_string* %4232)
  %4234 = call i1 @nyx_map_contains_str(i8* %4231, i8* %4233)
  %4235 = xor i1 %4234, true
  br i1 %4235, label %then680, label %else681
then680:
  %4236 = call { i64, i8* }* @nyx_array_new_ptr()
  %4237 = alloca { i64, i8* }*
  store { i64, i8* }* %4236, { i64, i8* }** %4237
  %4238 = load %nyx_string*, %nyx_string** %4207
  %4239 = call i8* @nyx_string_to_cstr(%nyx_string* %4238)
  %4240 = call i1 @nyx_file_exists(i8* %4239)
  br i1 %4240, label %then683, label %else684
then683:
  %4241 = load %nyx_string*, %nyx_string** %4207
  %4242 = call i8* @nyx_string_to_cstr(%nyx_string* %4241)
  %4243 = call %nyx_string* @nyx_read_file(i8* %4242)
  %4244 = getelementptr [2 x i8], [2 x i8]* @.str595, i32 0, i32 0
  %4245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4244, i64 1)
  %4246 = call { i64, i8* }* @nyx_string_split(%nyx_string* %4243, %nyx_string* %4245)
  %4247 = alloca { i64, i8* }*
  store { i64, i8* }* %4246, { i64, i8* }** %4247
  %4248 = alloca i64
  store i64 0, i64* %4248
  %4249 = getelementptr [8 x i8], [8 x i8]* @.str596, i32 0, i32 0
  %4250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4249, i64 7)
  %4251 = alloca %nyx_string*
  store %nyx_string* %4250, %nyx_string** %4251
  %4252 = getelementptr [2 x i8], [2 x i8]* @.str597, i32 0, i32 0
  %4253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4252, i64 1)
  %4254 = alloca %nyx_string*
  store %nyx_string* %4253, %nyx_string** %4254
  %4255 = call i8* @llvm.stacksave()
  br label %while_cond686
while_cond686:
  %4256 = load i64, i64* %4248
  %4257 = load { i64, i8* }*, { i64, i8* }** %4247
  %4258 = call i64 @nyx_array_length({ i64, i8* }* %4257)
  %4259 = icmp slt i64 %4256, %4258
  br i1 %4259, label %while_body687, label %while_end688
while_body687:
  call void @llvm.stackrestore(i8* %4255)
  %4260 = load { i64, i8* }*, { i64, i8* }** %4247
  %4261 = load i64, i64* %4248
  %4262 = call i64 @nyx_array_get_checked({ i64, i8* }* %4260, i64 %4261, i64 2)
  %4263 = inttoptr i64 %4262 to %nyx_string*
  %4264 = alloca %nyx_string*
  store %nyx_string* %4263, %nyx_string** %4264
  %4265 = load %nyx_string*, %nyx_string** %4264
  %4266 = call %nyx_string* @nyx_string_trim(%nyx_string* %4265)
  %4267 = alloca %nyx_string*
  store %nyx_string* %4266, %nyx_string** %4267
  %4268 = load %nyx_string*, %nyx_string** %4267
  %4269 = load %nyx_string*, %nyx_string** %4251
  %4270 = call i1 @nyx_string_starts_with(%nyx_string* %4268, %nyx_string* %4269)
  br i1 %4270, label %then689, label %else690
then689:
  %4271 = load %nyx_string*, %nyx_string** %4267
  %4272 = load %nyx_string*, %nyx_string** %4254
  %4273 = call i64 @nyx_string_index_of(%nyx_string* %4271, %nyx_string* %4272)
  %4274 = alloca i64
  store i64 %4273, i64* %4274
  %4275 = load i64, i64* %4274
  %4276 = icmp sge i64 %4275, 0
  br i1 %4276, label %then692, label %else693
then692:
  %4277 = load %nyx_string*, %nyx_string** %4267
  %4278 = load i64, i64* %4274
  %4279 = add i64 %4278, 1
  %4280 = load %nyx_string*, %nyx_string** %4267
  %4281 = call i64 @nyx_string_byte_length(%nyx_string* %4280)
  %4282 = call %nyx_string* @nyx_string_substring(%nyx_string* %4277, i64 %4279, i64 %4281)
  %4283 = alloca %nyx_string*
  store %nyx_string* %4282, %nyx_string** %4283
  %4284 = load %nyx_string*, %nyx_string** %4283
  %4285 = load %nyx_string*, %nyx_string** %4254
  %4286 = call i64 @nyx_string_index_of(%nyx_string* %4284, %nyx_string* %4285)
  %4287 = alloca i64
  store i64 %4286, i64* %4287
  %4288 = load i64, i64* %4287
  %4289 = icmp sgt i64 %4288, 0
  br i1 %4289, label %then695, label %else696
then695:
  %4290 = load { i64, i8* }*, { i64, i8* }** %4237
  %4291 = load %nyx_string*, %nyx_string** %4283
  %4292 = load i64, i64* %4287
  %4293 = call %nyx_string* @nyx_string_substring(%nyx_string* %4291, i64 0, i64 %4292)
  %4294 = ptrtoint %nyx_string* %4293 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4290, i64 %4294, i64 2)
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
  %4295 = load i64, i64* %4248
  %4296 = add i64 %4295, 1
  store i64 %4296, i64* %4248
  br label %while_cond686
while_end688:
  br label %merge685
else684:
  %4297 = load { i64, i8* }*, { i64, i8* }** %4237
  %4298 = getelementptr [1 x i8], [1 x i8]* @.str598, i32 0, i32 0
  %4299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4298, i64 0)
  %4300 = ptrtoint %nyx_string* %4299 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4297, i64 %4300, i64 2)
  br label %merge685
merge685:
  %4301 = load i8*, i8** %imports_de.ptr
  %4302 = load %nyx_string*, %nyx_string** %4207
  %4303 = load { i64, i8* }*, { i64, i8* }** %4237
  %4304 = call i8* @nyx_string_to_cstr(%nyx_string* %4302)
  %4305 = ptrtoint { i64, i8* }* %4303 to i64
  call void @nyx_map_insert_int(i8* %4301, i8* %4304, i64 %4305)
  br label %merge682
else681:
  br label %merge682
merge682:
  %4306 = load i8*, i8** %imports_de.ptr
  %4307 = load %nyx_string*, %nyx_string** %4207
  %4308 = call i8* @nyx_string_to_cstr(%nyx_string* %4307)
  %4309 = call i64 @nyx_map_get_int(i8* %4306, i8* %4308)
  %4310 = inttoptr i64 %4309 to { i64, i8* }*
  %4311 = alloca { i64, i8* }*
  store { i64, i8* }* %4310, { i64, i8* }** %4311
  %4312 = load { i64, i8* }*, { i64, i8* }** %4311
  %4313 = call i64 @nyx_array_length({ i64, i8* }* %4312)
  %4314 = icmp eq i64 %4313, 1
  br i1 %4314, label %then698, label %else699
then698:
  %4315 = load { i64, i8* }*, { i64, i8* }** %4311
  %4316 = call i64 @nyx_array_get_checked({ i64, i8* }* %4315, i64 0, i64 2)
  %4317 = inttoptr i64 %4316 to %nyx_string*
  %4318 = alloca %nyx_string*
  store %nyx_string* %4317, %nyx_string** %4318
  %4319 = load %nyx_string*, %nyx_string** %4318
  %4320 = getelementptr [1 x i8], [1 x i8]* @.str599, i32 0, i32 0
  %4321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4320, i64 0)
  %4322 = call i1 @nyx_string_equals(%nyx_string* %4319, %nyx_string* %4321)
  br i1 %4322, label %then701, label %else702
then701:
  ret i64 0
else702:
  br label %merge703
merge703:
  br label %merge700
else699:
  br label %merge700
merge700:
  %4323 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %4324 = load %nyx_string*, %nyx_string** %4207
  %4325 = ptrtoint %nyx_string* %4324 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %4323, i64 %4325, i64 2)
  %4326 = alloca i64
  store i64 0, i64* %4326
  %4327 = call i8* @llvm.stacksave()
  br label %while_cond704
while_cond704:
  %4328 = load i64, i64* %4326
  %4329 = load { i64, i8* }*, { i64, i8* }** %4311
  %4330 = call i64 @nyx_array_length({ i64, i8* }* %4329)
  %4331 = icmp slt i64 %4328, %4330
  br i1 %4331, label %while_body705, label %while_end706
while_body705:
  call void @llvm.stackrestore(i8* %4327)
  %4332 = load { i64, i8* }*, { i64, i8* }** %4311
  %4333 = load i64, i64* %4326
  %4334 = call i64 @nyx_array_get_checked({ i64, i8* }* %4332, i64 %4333, i64 2)
  %4335 = inttoptr i64 %4334 to %nyx_string*
  %4336 = alloca %nyx_string*
  store %nyx_string* %4335, %nyx_string** %4336
  %4337 = load %nyx_string*, %nyx_string** %4336
  %4338 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %4339 = load { i64, i8* }*, { i64, i8* }** %visitados.ptr
  %4340 = load i8*, i8** %vistos.ptr
  %4341 = load i8*, i8** %imports_de.ptr
  %4342 = call i64 @lib_cierre(%nyx_string* %4337, %nyx_string* %4338, { i64, i8* }* %4339, i8* %4340, i8* %4341)
  %4343 = load i64, i64* %4326
  %4344 = add i64 %4343, 1
  store i64 %4344, i64* %4326
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
  %4345 = load i8*, i8** %hashes.ptr
  %4346 = load %nyx_string*, %nyx_string** %f.ptr
  %4347 = call i8* @nyx_string_to_cstr(%nyx_string* %4346)
  %4348 = call i1 @nyx_map_contains_str(i8* %4345, i8* %4347)
  br i1 %4348, label %then707, label %else708
then707:
  %4349 = load i8*, i8** %hashes.ptr
  %4350 = load %nyx_string*, %nyx_string** %f.ptr
  %4351 = call i8* @nyx_string_to_cstr(%nyx_string* %4350)
  %4352 = call i8* @nyx_map_get_str(i8* %4349, i8* %4351)
  %4353 = call %nyx_string* @nyx_string_from_cstr(i8* %4352)
  %4354 = alloca %nyx_string*
  store %nyx_string* %4353, %nyx_string** %4354
  %4355 = load %nyx_string*, %nyx_string** %4354
  ret %nyx_string* %4355
else708:
  br label %merge709
merge709:
  %4356 = load %nyx_string*, %nyx_string** %f.ptr
  %4357 = call i8* @nyx_string_to_cstr(%nyx_string* %4356)
  %4358 = call %nyx_string* @nyx_read_file(i8* %4357)
  %4359 = call %nyx_string* @nyx_sha256(%nyx_string* %4358)
  %4360 = alloca %nyx_string*
  store %nyx_string* %4359, %nyx_string** %4360
  %4361 = load i8*, i8** %hashes.ptr
  %4362 = load %nyx_string*, %nyx_string** %f.ptr
  %4363 = load %nyx_string*, %nyx_string** %4360
  %4364 = call i8* @nyx_string_to_cstr(%nyx_string* %4362)
  %4365 = call i8* @nyx_string_to_cstr(%nyx_string* %4363)
  call void @nyx_map_insert_str(i8* %4361, i8* %4364, i8* %4365)
  %4366 = load %nyx_string*, %nyx_string** %4360
  ret %nyx_string* %4366
}

define internal i1 @es_ident_c(
i64 %c.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %4367 = alloca i1
  store i1 true, i1* %4367
  %4368 = alloca i1
  store i1 true, i1* %4368
  %4369 = alloca i1
  store i1 true, i1* %4369
  %4370 = alloca i1
  store i1 false, i1* %4370
  %4371 = load i64, i64* %c.ptr
  %4372 = icmp sge i64 %4371, 97
  br i1 %4372, label %sc_and_rhs710, label %sc_and_end711
sc_and_rhs710:
  %4373 = load i64, i64* %c.ptr
  %4374 = icmp sle i64 %4373, 122
  store i1 %4374, i1* %4370
  br label %sc_and_end711
sc_and_end711:
  %4375 = load i1, i1* %4370
  br i1 %4375, label %sc_or_end713, label %sc_or_rhs712
sc_or_rhs712:
  %4376 = alloca i1
  store i1 false, i1* %4376
  %4377 = load i64, i64* %c.ptr
  %4378 = icmp sge i64 %4377, 65
  br i1 %4378, label %sc_and_rhs714, label %sc_and_end715
sc_and_rhs714:
  %4379 = load i64, i64* %c.ptr
  %4380 = icmp sle i64 %4379, 90
  store i1 %4380, i1* %4376
  br label %sc_and_end715
sc_and_end715:
  %4381 = load i1, i1* %4376
  store i1 %4381, i1* %4369
  br label %sc_or_end713
sc_or_end713:
  %4382 = load i1, i1* %4369
  br i1 %4382, label %sc_or_end717, label %sc_or_rhs716
sc_or_rhs716:
  %4383 = alloca i1
  store i1 false, i1* %4383
  %4384 = load i64, i64* %c.ptr
  %4385 = icmp sge i64 %4384, 48
  br i1 %4385, label %sc_and_rhs718, label %sc_and_end719
sc_and_rhs718:
  %4386 = load i64, i64* %c.ptr
  %4387 = icmp sle i64 %4386, 57
  store i1 %4387, i1* %4383
  br label %sc_and_end719
sc_and_end719:
  %4388 = load i1, i1* %4383
  store i1 %4388, i1* %4368
  br label %sc_or_end717
sc_or_end717:
  %4389 = load i1, i1* %4368
  br i1 %4389, label %sc_or_end721, label %sc_or_rhs720
sc_or_rhs720:
  %4390 = load i64, i64* %c.ptr
  %4391 = icmp eq i64 %4390, 95
  store i1 %4391, i1* %4367
  br label %sc_or_end721
sc_or_end721:
  %4392 = load i1, i1* %4367
  ret i1 %4392
}

define internal i64 @fin_de_literal(
%nyx_string* %src.param, i64 %i.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %4393 = load %nyx_string*, %nyx_string** %src.ptr
  %4394 = call i64 @nyx_string_byte_length(%nyx_string* %4393)
  %4395 = alloca i64
  store i64 %4394, i64* %4395
  %4396 = load %nyx_string*, %nyx_string** %src.ptr
  %4397 = load i64, i64* %i.ptr
  %4398 = call i8 @nyx_string_char_at(%nyx_string* %4396, i64 %4397)
  %4399 = zext i8 %4398 to i64
  %4400 = alloca i64
  store i64 %4399, i64* %4400
  %4401 = alloca i1
  store i1 false, i1* %4401
  %4402 = load i64, i64* %4400
  %4403 = icmp eq i64 %4402, 114
  br i1 %4403, label %sc_and_rhs722, label %sc_and_end723
sc_and_rhs722:
  %4404 = load i64, i64* %i.ptr
  %4405 = add i64 %4404, 1
  %4406 = load i64, i64* %4395
  %4407 = icmp slt i64 %4405, %4406
  store i1 %4407, i1* %4401
  br label %sc_and_end723
sc_and_end723:
  %4408 = load i1, i1* %4401
  br i1 %4408, label %then724, label %else725
then724:
  %4409 = load %nyx_string*, %nyx_string** %src.ptr
  %4410 = load i64, i64* %i.ptr
  %4411 = add i64 %4410, 1
  %4412 = call i8 @nyx_string_char_at(%nyx_string* %4409, i64 %4411)
  %4413 = zext i8 %4412 to i64
  %4414 = alloca i64
  store i64 %4413, i64* %4414
  %4415 = load i64, i64* %4414
  %4416 = icmp eq i64 %4415, 34
  br i1 %4416, label %then727, label %else728
then727:
  %4417 = load i64, i64* %i.ptr
  %4418 = icmp sgt i64 %4417, 0
  br i1 %4418, label %then730, label %else731
then730:
  %4419 = load %nyx_string*, %nyx_string** %src.ptr
  %4420 = load i64, i64* %i.ptr
  %4421 = sub i64 %4420, 1
  %4422 = call i8 @nyx_string_char_at(%nyx_string* %4419, i64 %4421)
  %4423 = zext i8 %4422 to i64
  %4424 = alloca i64
  store i64 %4423, i64* %4424
  %4425 = load i64, i64* %4424
  %4426 = call i1 @es_ident_c(i64 %4425)
  br i1 %4426, label %then733, label %else734
then733:
  %4427 = sub i64 0, 1
  ret i64 %4427
else734:
  br label %merge735
merge735:
  br label %merge732
else731:
  br label %merge732
merge732:
  %4428 = load i64, i64* %i.ptr
  %4429 = add i64 %4428, 2
  %4430 = alloca i64
  store i64 %4429, i64* %4430
  %4431 = call i8* @llvm.stacksave()
  br label %while_cond736
while_cond736:
  %4432 = load i64, i64* %4430
  %4433 = load i64, i64* %4395
  %4434 = icmp slt i64 %4432, %4433
  br i1 %4434, label %while_body737, label %while_end738
while_body737:
  call void @llvm.stackrestore(i8* %4431)
  %4435 = load %nyx_string*, %nyx_string** %src.ptr
  %4436 = load i64, i64* %4430
  %4437 = call i8 @nyx_string_char_at(%nyx_string* %4435, i64 %4436)
  %4438 = zext i8 %4437 to i64
  %4439 = alloca i64
  store i64 %4438, i64* %4439
  %4440 = load i64, i64* %4439
  %4441 = icmp eq i64 %4440, 34
  br i1 %4441, label %then739, label %else740
then739:
  %4442 = load i64, i64* %4430
  %4443 = add i64 %4442, 1
  ret i64 %4443
else740:
  br label %merge741
merge741:
  %4444 = load i64, i64* %4430
  %4445 = add i64 %4444, 1
  store i64 %4445, i64* %4430
  br label %while_cond736
while_end738:
  %4446 = load i64, i64* %4395
  ret i64 %4446
else728:
  br label %merge729
merge729:
  br label %merge726
else725:
  br label %merge726
merge726:
  %4447 = load i64, i64* %4400
  %4448 = icmp eq i64 %4447, 34
  br i1 %4448, label %then742, label %else743
then742:
  %4449 = load i64, i64* %i.ptr
  %4450 = add i64 %4449, 2
  %4451 = load i64, i64* %4395
  %4452 = icmp slt i64 %4450, %4451
  br i1 %4452, label %then745, label %else746
then745:
  %4453 = load %nyx_string*, %nyx_string** %src.ptr
  %4454 = load i64, i64* %i.ptr
  %4455 = add i64 %4454, 1
  %4456 = call i8 @nyx_string_char_at(%nyx_string* %4453, i64 %4455)
  %4457 = zext i8 %4456 to i64
  %4458 = alloca i64
  store i64 %4457, i64* %4458
  %4459 = load %nyx_string*, %nyx_string** %src.ptr
  %4460 = load i64, i64* %i.ptr
  %4461 = add i64 %4460, 2
  %4462 = call i8 @nyx_string_char_at(%nyx_string* %4459, i64 %4461)
  %4463 = zext i8 %4462 to i64
  %4464 = alloca i64
  store i64 %4463, i64* %4464
  %4465 = alloca i1
  store i1 false, i1* %4465
  %4466 = load i64, i64* %4458
  %4467 = icmp eq i64 %4466, 34
  br i1 %4467, label %sc_and_rhs748, label %sc_and_end749
sc_and_rhs748:
  %4468 = load i64, i64* %4464
  %4469 = icmp eq i64 %4468, 34
  store i1 %4469, i1* %4465
  br label %sc_and_end749
sc_and_end749:
  %4470 = load i1, i1* %4465
  br i1 %4470, label %then750, label %else751
then750:
  %4471 = load i64, i64* %i.ptr
  %4472 = add i64 %4471, 3
  %4473 = alloca i64
  store i64 %4472, i64* %4473
  %4474 = call i8* @llvm.stacksave()
  br label %while_cond753
while_cond753:
  %4475 = load i64, i64* %4473
  %4476 = add i64 %4475, 2
  %4477 = load i64, i64* %4395
  %4478 = icmp slt i64 %4476, %4477
  br i1 %4478, label %while_body754, label %while_end755
while_body754:
  call void @llvm.stackrestore(i8* %4474)
  %4479 = load %nyx_string*, %nyx_string** %src.ptr
  %4480 = load i64, i64* %4473
  %4481 = call i8 @nyx_string_char_at(%nyx_string* %4479, i64 %4480)
  %4482 = zext i8 %4481 to i64
  %4483 = alloca i64
  store i64 %4482, i64* %4483
  %4484 = load %nyx_string*, %nyx_string** %src.ptr
  %4485 = load i64, i64* %4473
  %4486 = add i64 %4485, 1
  %4487 = call i8 @nyx_string_char_at(%nyx_string* %4484, i64 %4486)
  %4488 = zext i8 %4487 to i64
  %4489 = alloca i64
  store i64 %4488, i64* %4489
  %4490 = load %nyx_string*, %nyx_string** %src.ptr
  %4491 = load i64, i64* %4473
  %4492 = add i64 %4491, 2
  %4493 = call i8 @nyx_string_char_at(%nyx_string* %4490, i64 %4492)
  %4494 = zext i8 %4493 to i64
  %4495 = alloca i64
  store i64 %4494, i64* %4495
  %4496 = alloca i1
  store i1 false, i1* %4496
  %4497 = alloca i1
  store i1 false, i1* %4497
  %4498 = load i64, i64* %4483
  %4499 = icmp eq i64 %4498, 34
  br i1 %4499, label %sc_and_rhs756, label %sc_and_end757
sc_and_rhs756:
  %4500 = load i64, i64* %4489
  %4501 = icmp eq i64 %4500, 34
  store i1 %4501, i1* %4497
  br label %sc_and_end757
sc_and_end757:
  %4502 = load i1, i1* %4497
  br i1 %4502, label %sc_and_rhs758, label %sc_and_end759
sc_and_rhs758:
  %4503 = load i64, i64* %4495
  %4504 = icmp eq i64 %4503, 34
  store i1 %4504, i1* %4496
  br label %sc_and_end759
sc_and_end759:
  %4505 = load i1, i1* %4496
  br i1 %4505, label %then760, label %else761
then760:
  %4506 = load i64, i64* %4473
  %4507 = add i64 %4506, 3
  ret i64 %4507
else761:
  br label %merge762
merge762:
  %4508 = load i64, i64* %4473
  %4509 = add i64 %4508, 1
  store i64 %4509, i64* %4473
  br label %while_cond753
while_end755:
  %4510 = load i64, i64* %4395
  ret i64 %4510
else751:
  br label %merge752
merge752:
  br label %merge747
else746:
  br label %merge747
merge747:
  %4511 = load i64, i64* %i.ptr
  %4512 = add i64 %4511, 1
  %4513 = alloca i64
  store i64 %4512, i64* %4513
  %4514 = call i8* @llvm.stacksave()
  br label %while_cond763
while_cond763:
  %4515 = load i64, i64* %4513
  %4516 = load i64, i64* %4395
  %4517 = icmp slt i64 %4515, %4516
  br i1 %4517, label %while_body764, label %while_end765
while_body764:
  call void @llvm.stackrestore(i8* %4514)
  %4518 = load %nyx_string*, %nyx_string** %src.ptr
  %4519 = load i64, i64* %4513
  %4520 = call i8 @nyx_string_char_at(%nyx_string* %4518, i64 %4519)
  %4521 = zext i8 %4520 to i64
  %4522 = alloca i64
  store i64 %4521, i64* %4522
  %4523 = load i64, i64* %4522
  %4524 = icmp eq i64 %4523, 92
  br i1 %4524, label %then766, label %else767
then766:
  %4525 = load i64, i64* %4513
  %4526 = add i64 %4525, 2
  store i64 %4526, i64* %4513
  br label %merge768
else767:
  %4527 = load i64, i64* %4522
  %4528 = icmp eq i64 %4527, 34
  br i1 %4528, label %then769, label %else770
then769:
  %4529 = load i64, i64* %4513
  %4530 = add i64 %4529, 1
  ret i64 %4530
else770:
  %4531 = load i64, i64* %4513
  %4532 = add i64 %4531, 1
  store i64 %4532, i64* %4513
  br label %merge771
merge771:
  br label %merge768
merge768:
  br label %while_cond763
while_end765:
  %4533 = load i64, i64* %4395
  ret i64 %4533
else743:
  br label %merge744
merge744:
  %4534 = load i64, i64* %4400
  %4535 = icmp eq i64 %4534, 39
  br i1 %4535, label %then772, label %else773
then772:
  %4536 = load i64, i64* %i.ptr
  %4537 = add i64 %4536, 1
  %4538 = alloca i64
  store i64 %4537, i64* %4538
  %4539 = call i8* @llvm.stacksave()
  br label %while_cond775
while_cond775:
  %4540 = alloca i1
  store i1 false, i1* %4540
  %4541 = load i64, i64* %4538
  %4542 = load i64, i64* %4395
  %4543 = icmp slt i64 %4541, %4542
  br i1 %4543, label %sc_and_rhs778, label %sc_and_end779
sc_and_rhs778:
  %4544 = load i64, i64* %4538
  %4545 = load i64, i64* %i.ptr
  %4546 = add i64 %4545, 12
  %4547 = icmp slt i64 %4544, %4546
  store i1 %4547, i1* %4540
  br label %sc_and_end779
sc_and_end779:
  %4548 = load i1, i1* %4540
  br i1 %4548, label %while_body776, label %while_end777
while_body776:
  call void @llvm.stackrestore(i8* %4539)
  %4549 = load %nyx_string*, %nyx_string** %src.ptr
  %4550 = load i64, i64* %4538
  %4551 = call i8 @nyx_string_char_at(%nyx_string* %4549, i64 %4550)
  %4552 = zext i8 %4551 to i64
  %4553 = alloca i64
  store i64 %4552, i64* %4553
  %4554 = load i64, i64* %4553
  %4555 = icmp eq i64 %4554, 92
  br i1 %4555, label %then780, label %else781
then780:
  %4556 = load i64, i64* %4538
  %4557 = add i64 %4556, 2
  store i64 %4557, i64* %4538
  br label %merge782
else781:
  %4558 = load i64, i64* %4553
  %4559 = icmp eq i64 %4558, 39
  br i1 %4559, label %then783, label %else784
then783:
  %4560 = load i64, i64* %4538
  %4561 = add i64 %4560, 1
  ret i64 %4561
else784:
  %4562 = load i64, i64* %4538
  %4563 = add i64 %4562, 1
  store i64 %4563, i64* %4538
  br label %merge785
merge785:
  br label %merge782
merge782:
  br label %while_cond775
while_end777:
  %4564 = load i64, i64* %4538
  ret i64 %4564
else773:
  br label %merge774
merge774:
  %4565 = sub i64 0, 1
  ret i64 %4565
}

define internal %nyx_string* @interfaz_de(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %4566 = call i8* @nyx_sb_new(i64 1024)
  %4567 = alloca i8*
  store i8* %4566, i8** %4567
  %4568 = load %nyx_string*, %nyx_string** %src.ptr
  %4569 = call i64 @nyx_string_byte_length(%nyx_string* %4568)
  %4570 = alloca i64
  store i64 %4569, i64* %4570
  %4571 = alloca i64
  store i64 0, i64* %4571
  %4572 = alloca i64
  store i64 0, i64* %4572
  %4573 = alloca i64
  store i64 0, i64* %4573
  %4574 = alloca i1
  store i1 0, i1* %4574
  %4575 = alloca i1
  store i1 0, i1* %4575
  %4576 = alloca i64
  store i64 0, i64* %4576
  %4577 = alloca i1
  store i1 0, i1* %4577
  %4578 = alloca i1
  store i1 0, i1* %4578
  %4579 = getelementptr [2 x i8], [2 x i8]* @.str600, i32 0, i32 0
  %4580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4579, i64 1)
  %4581 = alloca %nyx_string*
  store %nyx_string* %4580, %nyx_string** %4581
  %4582 = getelementptr [3 x i8], [3 x i8]* @.str601, i32 0, i32 0
  %4583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4582, i64 2)
  %4584 = alloca %nyx_string*
  store %nyx_string* %4583, %nyx_string** %4584
  %4585 = call i8* @llvm.stacksave()
  br label %while_cond786
while_cond786:
  %4586 = load i64, i64* %4571
  %4587 = load i64, i64* %4570
  %4588 = icmp slt i64 %4586, %4587
  br i1 %4588, label %while_body787, label %while_end788
while_body787:
  call void @llvm.stackrestore(i8* %4585)
  %4589 = load %nyx_string*, %nyx_string** %src.ptr
  %4590 = load i64, i64* %4571
  %4591 = call i8 @nyx_string_char_at(%nyx_string* %4589, i64 %4590)
  %4592 = zext i8 %4591 to i64
  %4593 = alloca i64
  store i64 %4592, i64* %4593
  %4594 = alloca i64
  store i64 0, i64* %4594
  %4595 = load i64, i64* %4571
  %4596 = add i64 %4595, 1
  %4597 = load i64, i64* %4570
  %4598 = icmp slt i64 %4596, %4597
  br i1 %4598, label %then789, label %else790
then789:
  %4599 = load %nyx_string*, %nyx_string** %src.ptr
  %4600 = load i64, i64* %4571
  %4601 = add i64 %4600, 1
  %4602 = call i8 @nyx_string_char_at(%nyx_string* %4599, i64 %4601)
  %4603 = zext i8 %4602 to i64
  %4604 = alloca i64
  store i64 %4603, i64* %4604
  %4605 = load i64, i64* %4604
  store i64 %4605, i64* %4594
  br label %merge791
else790:
  br label %merge791
merge791:
  %4606 = alloca i1
  store i1 false, i1* %4606
  %4607 = load i64, i64* %4593
  %4608 = icmp eq i64 %4607, 47
  br i1 %4608, label %sc_and_rhs792, label %sc_and_end793
sc_and_rhs792:
  %4609 = load i64, i64* %4594
  %4610 = icmp eq i64 %4609, 47
  store i1 %4610, i1* %4606
  br label %sc_and_end793
sc_and_end793:
  %4611 = load i1, i1* %4606
  br i1 %4611, label %then794, label %else795
then794:
  %4612 = alloca i1
  store i1 0, i1* %4612
  %4613 = call i8* @llvm.stacksave()
  br label %while_cond797
while_cond797:
  %4614 = alloca i1
  store i1 false, i1* %4614
  %4615 = load i64, i64* %4571
  %4616 = load i64, i64* %4570
  %4617 = icmp slt i64 %4615, %4616
  br i1 %4617, label %sc_and_rhs800, label %sc_and_end801
sc_and_rhs800:
  %4618 = load i1, i1* %4612
  %4619 = xor i1 %4618, true
  store i1 %4619, i1* %4614
  br label %sc_and_end801
sc_and_end801:
  %4620 = load i1, i1* %4614
  br i1 %4620, label %while_body798, label %while_end799
while_body798:
  call void @llvm.stackrestore(i8* %4613)
  %4621 = load %nyx_string*, %nyx_string** %src.ptr
  %4622 = load i64, i64* %4571
  %4623 = call i8 @nyx_string_char_at(%nyx_string* %4621, i64 %4622)
  %4624 = zext i8 %4623 to i64
  %4625 = alloca i64
  store i64 %4624, i64* %4625
  %4626 = load i64, i64* %4625
  %4627 = icmp eq i64 %4626, 10
  br i1 %4627, label %then802, label %else803
then802:
  store i1 1, i1* %4612
  br label %merge804
else803:
  %4628 = load i64, i64* %4571
  %4629 = add i64 %4628, 1
  store i64 %4629, i64* %4571
  br label %merge804
merge804:
  br label %while_cond797
while_end799:
  store i1 1, i1* %4577
  br label %merge796
else795:
  %4630 = alloca i1
  store i1 false, i1* %4630
  %4631 = load i64, i64* %4593
  %4632 = icmp eq i64 %4631, 47
  br i1 %4632, label %sc_and_rhs805, label %sc_and_end806
sc_and_rhs805:
  %4633 = load i64, i64* %4594
  %4634 = icmp eq i64 %4633, 42
  store i1 %4634, i1* %4630
  br label %sc_and_end806
sc_and_end806:
  %4635 = load i1, i1* %4630
  br i1 %4635, label %then807, label %else808
then807:
  %4636 = alloca i64
  store i64 1, i64* %4636
  %4637 = load i64, i64* %4571
  %4638 = add i64 %4637, 2
  store i64 %4638, i64* %4571
  %4639 = call i8* @llvm.stacksave()
  br label %while_cond810
while_cond810:
  %4640 = alloca i1
  store i1 false, i1* %4640
  %4641 = load i64, i64* %4571
  %4642 = load i64, i64* %4570
  %4643 = icmp slt i64 %4641, %4642
  br i1 %4643, label %sc_and_rhs813, label %sc_and_end814
sc_and_rhs813:
  %4644 = load i64, i64* %4636
  %4645 = icmp sgt i64 %4644, 0
  store i1 %4645, i1* %4640
  br label %sc_and_end814
sc_and_end814:
  %4646 = load i1, i1* %4640
  br i1 %4646, label %while_body811, label %while_end812
while_body811:
  call void @llvm.stackrestore(i8* %4639)
  %4647 = load %nyx_string*, %nyx_string** %src.ptr
  %4648 = load i64, i64* %4571
  %4649 = call i8 @nyx_string_char_at(%nyx_string* %4647, i64 %4648)
  %4650 = zext i8 %4649 to i64
  %4651 = alloca i64
  store i64 %4650, i64* %4651
  %4652 = alloca i64
  store i64 0, i64* %4652
  %4653 = load i64, i64* %4571
  %4654 = add i64 %4653, 1
  %4655 = load i64, i64* %4570
  %4656 = icmp slt i64 %4654, %4655
  br i1 %4656, label %then815, label %else816
then815:
  %4657 = load %nyx_string*, %nyx_string** %src.ptr
  %4658 = load i64, i64* %4571
  %4659 = add i64 %4658, 1
  %4660 = call i8 @nyx_string_char_at(%nyx_string* %4657, i64 %4659)
  %4661 = zext i8 %4660 to i64
  %4662 = alloca i64
  store i64 %4661, i64* %4662
  %4663 = load i64, i64* %4662
  store i64 %4663, i64* %4652
  br label %merge817
else816:
  br label %merge817
merge817:
  %4664 = alloca i1
  store i1 false, i1* %4664
  %4665 = load i64, i64* %4651
  %4666 = icmp eq i64 %4665, 47
  br i1 %4666, label %sc_and_rhs818, label %sc_and_end819
sc_and_rhs818:
  %4667 = load i64, i64* %4652
  %4668 = icmp eq i64 %4667, 42
  store i1 %4668, i1* %4664
  br label %sc_and_end819
sc_and_end819:
  %4669 = load i1, i1* %4664
  br i1 %4669, label %then820, label %else821
then820:
  %4670 = load i64, i64* %4636
  %4671 = add i64 %4670, 1
  store i64 %4671, i64* %4636
  %4672 = load i64, i64* %4571
  %4673 = add i64 %4672, 2
  store i64 %4673, i64* %4571
  br label %merge822
else821:
  %4674 = alloca i1
  store i1 false, i1* %4674
  %4675 = load i64, i64* %4651
  %4676 = icmp eq i64 %4675, 42
  br i1 %4676, label %sc_and_rhs823, label %sc_and_end824
sc_and_rhs823:
  %4677 = load i64, i64* %4652
  %4678 = icmp eq i64 %4677, 47
  store i1 %4678, i1* %4674
  br label %sc_and_end824
sc_and_end824:
  %4679 = load i1, i1* %4674
  br i1 %4679, label %then825, label %else826
then825:
  %4680 = load i64, i64* %4636
  %4681 = sub i64 %4680, 1
  store i64 %4681, i64* %4636
  %4682 = load i64, i64* %4571
  %4683 = add i64 %4682, 2
  store i64 %4683, i64* %4571
  br label %merge827
else826:
  %4684 = load i64, i64* %4571
  %4685 = add i64 %4684, 1
  store i64 %4685, i64* %4571
  br label %merge827
merge827:
  br label %merge822
merge822:
  br label %while_cond810
while_end812:
  store i1 1, i1* %4577
  br label %merge809
else808:
  %4686 = load %nyx_string*, %nyx_string** %src.ptr
  %4687 = load i64, i64* %4571
  %4688 = call i64 @fin_de_literal(%nyx_string* %4686, i64 %4687)
  %4689 = alloca i64
  store i64 %4688, i64* %4689
  %4690 = load i64, i64* %4689
  %4691 = icmp sgt i64 %4690, 0
  br i1 %4691, label %then828, label %else829
then828:
  %4692 = load i1, i1* %4575
  %4693 = xor i1 %4692, true
  br i1 %4693, label %then831, label %else832
then831:
  %4694 = alloca i1
  store i1 false, i1* %4694
  %4695 = load i1, i1* %4577
  br i1 %4695, label %sc_and_rhs834, label %sc_and_end835
sc_and_rhs834:
  %4696 = load i1, i1* %4578
  store i1 %4696, i1* %4694
  br label %sc_and_end835
sc_and_end835:
  %4697 = load i1, i1* %4694
  br i1 %4697, label %then836, label %else837
then836:
  %4698 = load i8*, i8** %4567
  %4699 = load %nyx_string*, %nyx_string** %4581
  call void @nyx_sb_append(i8* %4698, %nyx_string* %4699)
  br label %merge838
else837:
  br label %merge838
merge838:
  store i1 0, i1* %4577
  %4700 = load i8*, i8** %4567
  %4701 = load %nyx_string*, %nyx_string** %src.ptr
  %4702 = load i64, i64* %4571
  %4703 = load i64, i64* %4689
  %4704 = call %nyx_string* @nyx_string_substring(%nyx_string* %4701, i64 %4702, i64 %4703)
  call void @nyx_sb_append(i8* %4700, %nyx_string* %4704)
  store i1 1, i1* %4578
  br label %merge833
else832:
  br label %merge833
merge833:
  %4705 = load i64, i64* %4689
  store i64 %4705, i64* %4571
  br label %merge830
else829:
  %4706 = load i1, i1* %4575
  br i1 %4706, label %then839, label %else840
then839:
  %4707 = load i64, i64* %4593
  %4708 = icmp eq i64 %4707, 123
  br i1 %4708, label %then842, label %else843
then842:
  %4709 = load i64, i64* %4576
  %4710 = add i64 %4709, 1
  store i64 %4710, i64* %4576
  br label %merge844
else843:
  br label %merge844
merge844:
  %4711 = load i64, i64* %4593
  %4712 = icmp eq i64 %4711, 125
  br i1 %4712, label %then845, label %else846
then845:
  %4713 = load i64, i64* %4576
  %4714 = sub i64 %4713, 1
  store i64 %4714, i64* %4576
  %4715 = load i64, i64* %4576
  %4716 = icmp eq i64 %4715, 0
  br i1 %4716, label %then848, label %else849
then848:
  store i1 0, i1* %4575
  %4717 = load i8*, i8** %4567
  %4718 = load %nyx_string*, %nyx_string** %4584
  call void @nyx_sb_append(i8* %4717, %nyx_string* %4718)
  br label %merge850
else849:
  br label %merge850
merge850:
  br label %merge847
else846:
  br label %merge847
merge847:
  %4719 = load i64, i64* %4571
  %4720 = add i64 %4719, 1
  store i64 %4720, i64* %4571
  br label %merge841
else840:
  %4721 = alloca i1
  store i1 true, i1* %4721
  %4722 = alloca i1
  store i1 true, i1* %4722
  %4723 = alloca i1
  store i1 true, i1* %4723
  %4724 = load i64, i64* %4593
  %4725 = icmp eq i64 %4724, 32
  br i1 %4725, label %sc_or_end852, label %sc_or_rhs851
sc_or_rhs851:
  %4726 = load i64, i64* %4593
  %4727 = icmp eq i64 %4726, 9
  store i1 %4727, i1* %4723
  br label %sc_or_end852
sc_or_end852:
  %4728 = load i1, i1* %4723
  br i1 %4728, label %sc_or_end854, label %sc_or_rhs853
sc_or_rhs853:
  %4729 = load i64, i64* %4593
  %4730 = icmp eq i64 %4729, 13
  store i1 %4730, i1* %4722
  br label %sc_or_end854
sc_or_end854:
  %4731 = load i1, i1* %4722
  br i1 %4731, label %sc_or_end856, label %sc_or_rhs855
sc_or_rhs855:
  %4732 = load i64, i64* %4593
  %4733 = icmp eq i64 %4732, 10
  store i1 %4733, i1* %4721
  br label %sc_or_end856
sc_or_end856:
  %4734 = load i1, i1* %4721
  br i1 %4734, label %then857, label %else858
then857:
  %4735 = alloca i1
  store i1 false, i1* %4735
  %4736 = load i64, i64* %4593
  %4737 = icmp eq i64 %4736, 10
  br i1 %4737, label %sc_and_rhs860, label %sc_and_end861
sc_and_rhs860:
  %4738 = load i64, i64* %4573
  %4739 = icmp eq i64 %4738, 0
  store i1 %4739, i1* %4735
  br label %sc_and_end861
sc_and_end861:
  %4740 = load i1, i1* %4735
  br i1 %4740, label %then862, label %else863
then862:
  store i1 0, i1* %4574
  br label %merge864
else863:
  br label %merge864
merge864:
  store i1 1, i1* %4577
  %4741 = load i64, i64* %4571
  %4742 = add i64 %4741, 1
  store i64 %4742, i64* %4571
  br label %merge859
else858:
  %4743 = alloca i1
  store i1 false, i1* %4743
  %4744 = alloca i1
  store i1 false, i1* %4744
  %4745 = load i64, i64* %4572
  %4746 = icmp eq i64 %4745, 0
  br i1 %4746, label %sc_and_rhs865, label %sc_and_end866
sc_and_rhs865:
  %4747 = load i64, i64* %4593
  %4748 = icmp eq i64 %4747, 102
  store i1 %4748, i1* %4744
  br label %sc_and_end866
sc_and_end866:
  %4749 = load i1, i1* %4744
  br i1 %4749, label %sc_and_rhs867, label %sc_and_end868
sc_and_rhs867:
  %4750 = load i64, i64* %4594
  %4751 = icmp eq i64 %4750, 110
  store i1 %4751, i1* %4743
  br label %sc_and_end868
sc_and_end868:
  %4752 = load i1, i1* %4743
  br i1 %4752, label %then869, label %else870
then869:
  %4753 = alloca i1
  store i1 1, i1* %4753
  %4754 = load i64, i64* %4571
  %4755 = icmp sgt i64 %4754, 0
  br i1 %4755, label %then872, label %else873
then872:
  %4756 = load %nyx_string*, %nyx_string** %src.ptr
  %4757 = load i64, i64* %4571
  %4758 = sub i64 %4757, 1
  %4759 = call i8 @nyx_string_char_at(%nyx_string* %4756, i64 %4758)
  %4760 = zext i8 %4759 to i64
  %4761 = alloca i64
  store i64 %4760, i64* %4761
  %4762 = load i64, i64* %4761
  %4763 = call i1 @es_ident_c(i64 %4762)
  br i1 %4763, label %then875, label %else876
then875:
  store i1 0, i1* %4753
  br label %merge877
else876:
  br label %merge877
merge877:
  br label %merge874
else873:
  br label %merge874
merge874:
  %4764 = alloca i1
  store i1 1, i1* %4764
  %4765 = load i64, i64* %4571
  %4766 = add i64 %4765, 2
  %4767 = load i64, i64* %4570
  %4768 = icmp slt i64 %4766, %4767
  br i1 %4768, label %then878, label %else879
then878:
  %4769 = load %nyx_string*, %nyx_string** %src.ptr
  %4770 = load i64, i64* %4571
  %4771 = add i64 %4770, 2
  %4772 = call i8 @nyx_string_char_at(%nyx_string* %4769, i64 %4771)
  %4773 = zext i8 %4772 to i64
  %4774 = alloca i64
  store i64 %4773, i64* %4774
  %4775 = load i64, i64* %4774
  %4776 = call i1 @es_ident_c(i64 %4775)
  br i1 %4776, label %then881, label %else882
then881:
  store i1 0, i1* %4764
  br label %merge883
else882:
  br label %merge883
merge883:
  br label %merge880
else879:
  br label %merge880
merge880:
  %4777 = alloca i1
  store i1 false, i1* %4777
  %4778 = load i1, i1* %4753
  br i1 %4778, label %sc_and_rhs884, label %sc_and_end885
sc_and_rhs884:
  %4779 = load i1, i1* %4764
  store i1 %4779, i1* %4777
  br label %sc_and_end885
sc_and_end885:
  %4780 = load i1, i1* %4777
  br i1 %4780, label %then886, label %else887
then886:
  store i1 1, i1* %4574
  br label %merge888
else887:
  br label %merge888
merge888:
  br label %merge871
else870:
  br label %merge871
merge871:
  %4781 = load i64, i64* %4593
  %4782 = icmp eq i64 %4781, 40
  br i1 %4782, label %then889, label %else890
then889:
  %4783 = load i64, i64* %4573
  %4784 = add i64 %4783, 1
  store i64 %4784, i64* %4573
  br label %merge891
else890:
  br label %merge891
merge891:
  %4785 = load i64, i64* %4593
  %4786 = icmp eq i64 %4785, 41
  br i1 %4786, label %then892, label %else893
then892:
  %4787 = load i64, i64* %4573
  %4788 = sub i64 %4787, 1
  store i64 %4788, i64* %4573
  br label %merge894
else893:
  br label %merge894
merge894:
  %4789 = alloca i1
  store i1 false, i1* %4789
  %4790 = load i1, i1* %4577
  br i1 %4790, label %sc_and_rhs895, label %sc_and_end896
sc_and_rhs895:
  %4791 = load i1, i1* %4578
  store i1 %4791, i1* %4789
  br label %sc_and_end896
sc_and_end896:
  %4792 = load i1, i1* %4789
  br i1 %4792, label %then897, label %else898
then897:
  %4793 = load i8*, i8** %4567
  %4794 = load %nyx_string*, %nyx_string** %4581
  call void @nyx_sb_append(i8* %4793, %nyx_string* %4794)
  br label %merge899
else898:
  br label %merge899
merge899:
  store i1 0, i1* %4577
  %4795 = alloca i1
  store i1 false, i1* %4795
  %4796 = alloca i1
  store i1 false, i1* %4796
  %4797 = load i64, i64* %4593
  %4798 = icmp eq i64 %4797, 123
  br i1 %4798, label %sc_and_rhs900, label %sc_and_end901
sc_and_rhs900:
  %4799 = load i64, i64* %4572
  %4800 = icmp eq i64 %4799, 0
  store i1 %4800, i1* %4796
  br label %sc_and_end901
sc_and_end901:
  %4801 = load i1, i1* %4796
  br i1 %4801, label %sc_and_rhs902, label %sc_and_end903
sc_and_rhs902:
  %4802 = load i1, i1* %4574
  store i1 %4802, i1* %4795
  br label %sc_and_end903
sc_and_end903:
  %4803 = load i1, i1* %4795
  br i1 %4803, label %then904, label %else905
then904:
  store i1 0, i1* %4574
  store i1 1, i1* %4575
  store i64 1, i64* %4576
  br label %merge906
else905:
  %4804 = load i64, i64* %4593
  %4805 = icmp eq i64 %4804, 123
  br i1 %4805, label %then907, label %else908
then907:
  %4806 = load i64, i64* %4572
  %4807 = add i64 %4806, 1
  store i64 %4807, i64* %4572
  br label %merge909
else908:
  br label %merge909
merge909:
  %4808 = load i64, i64* %4593
  %4809 = icmp eq i64 %4808, 125
  br i1 %4809, label %then910, label %else911
then910:
  %4810 = load i64, i64* %4572
  %4811 = sub i64 %4810, 1
  store i64 %4811, i64* %4572
  br label %merge912
else911:
  br label %merge912
merge912:
  %4812 = load i8*, i8** %4567
  %4813 = load %nyx_string*, %nyx_string** %src.ptr
  %4814 = load i64, i64* %4571
  %4815 = load i64, i64* %4571
  %4816 = add i64 %4815, 1
  %4817 = call %nyx_string* @nyx_string_substring(%nyx_string* %4813, i64 %4814, i64 %4816)
  call void @nyx_sb_append(i8* %4812, %nyx_string* %4817)
  store i1 1, i1* %4578
  br label %merge906
merge906:
  %4818 = load i64, i64* %4571
  %4819 = add i64 %4818, 1
  store i64 %4819, i64* %4571
  br label %merge859
merge859:
  br label %merge841
merge841:
  br label %merge830
merge830:
  br label %merge809
merge809:
  br label %merge796
merge796:
  br label %while_cond786
while_end788:
  %4820 = load i8*, i8** %4567
  %4821 = call %nyx_string* @nyx_sb_to_string(i8* %4820)
  ret %nyx_string* %4821
}

define internal i1 @separable_texto(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %4822 = load %nyx_string*, %nyx_string** %src.ptr
  %4823 = getelementptr [2 x i8], [2 x i8]* @.str602, i32 0, i32 0
  %4824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4823, i64 1)
  %4825 = call { i64, i8* }* @nyx_string_split(%nyx_string* %4822, %nyx_string* %4824)
  %4826 = alloca { i64, i8* }*
  store { i64, i8* }* %4825, { i64, i8* }** %4826
  %4827 = alloca i64
  store i64 0, i64* %4827
  %4828 = getelementptr [6 x i8], [6 x i8]* @.str603, i32 0, i32 0
  %4829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4828, i64 5)
  %4830 = alloca %nyx_string*
  store %nyx_string* %4829, %nyx_string** %4830
  %4831 = getelementptr [6 x i8], [6 x i8]* @.str604, i32 0, i32 0
  %4832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4831, i64 5)
  %4833 = alloca %nyx_string*
  store %nyx_string* %4832, %nyx_string** %4833
  %4834 = getelementptr [7 x i8], [7 x i8]* @.str605, i32 0, i32 0
  %4835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4834, i64 6)
  %4836 = alloca %nyx_string*
  store %nyx_string* %4835, %nyx_string** %4836
  %4837 = getelementptr [11 x i8], [11 x i8]* @.str606, i32 0, i32 0
  %4838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4837, i64 10)
  %4839 = alloca %nyx_string*
  store %nyx_string* %4838, %nyx_string** %4839
  %4840 = getelementptr [14 x i8], [14 x i8]* @.str607, i32 0, i32 0
  %4841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4840, i64 13)
  %4842 = alloca %nyx_string*
  store %nyx_string* %4841, %nyx_string** %4842
  %4843 = getelementptr [1 x i8], [1 x i8]* @.str608, i32 0, i32 0
  %4844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4843, i64 0)
  %4845 = alloca %nyx_string*
  store %nyx_string* %4844, %nyx_string** %4845
  %4846 = getelementptr [8 x i8], [8 x i8]* @.str609, i32 0, i32 0
  %4847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4846, i64 7)
  %4848 = alloca %nyx_string*
  store %nyx_string* %4847, %nyx_string** %4848
  %4849 = getelementptr [11 x i8], [11 x i8]* @.str610, i32 0, i32 0
  %4850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4849, i64 10)
  %4851 = alloca %nyx_string*
  store %nyx_string* %4850, %nyx_string** %4851
  %4852 = call i8* @llvm.stacksave()
  br label %while_cond913
while_cond913:
  %4853 = load i64, i64* %4827
  %4854 = load { i64, i8* }*, { i64, i8* }** %4826
  %4855 = call i64 @nyx_array_length({ i64, i8* }* %4854)
  %4856 = icmp slt i64 %4853, %4855
  br i1 %4856, label %while_body914, label %while_end915
while_body914:
  call void @llvm.stackrestore(i8* %4852)
  %4857 = load { i64, i8* }*, { i64, i8* }** %4826
  %4858 = load i64, i64* %4827
  %4859 = call i64 @nyx_array_get_checked({ i64, i8* }* %4857, i64 %4858, i64 2)
  %4860 = inttoptr i64 %4859 to %nyx_string*
  %4861 = alloca %nyx_string*
  store %nyx_string* %4860, %nyx_string** %4861
  %4862 = load %nyx_string*, %nyx_string** %4861
  %4863 = call %nyx_string* @nyx_string_trim(%nyx_string* %4862)
  %4864 = alloca %nyx_string*
  store %nyx_string* %4863, %nyx_string** %4864
  %4865 = alloca i1
  store i1 true, i1* %4865
  %4866 = load %nyx_string*, %nyx_string** %4864
  %4867 = load %nyx_string*, %nyx_string** %4830
  %4868 = call i1 @nyx_string_starts_with(%nyx_string* %4866, %nyx_string* %4867)
  br i1 %4868, label %sc_or_end917, label %sc_or_rhs916
sc_or_rhs916:
  %4869 = load %nyx_string*, %nyx_string** %4864
  %4870 = load %nyx_string*, %nyx_string** %4833
  %4871 = call i1 @nyx_string_starts_with(%nyx_string* %4869, %nyx_string* %4870)
  store i1 %4871, i1* %4865
  br label %sc_or_end917
sc_or_end917:
  %4872 = load i1, i1* %4865
  br i1 %4872, label %then918, label %else919
then918:
  ret i1 0
else919:
  br label %merge920
merge920:
  %4873 = alloca i1
  store i1 true, i1* %4873
  %4874 = alloca i1
  store i1 true, i1* %4874
  %4875 = load %nyx_string*, %nyx_string** %4864
  %4876 = load %nyx_string*, %nyx_string** %4836
  %4877 = call i1 @nyx_string_starts_with(%nyx_string* %4875, %nyx_string* %4876)
  br i1 %4877, label %sc_or_end922, label %sc_or_rhs921
sc_or_rhs921:
  %4878 = load %nyx_string*, %nyx_string** %4864
  %4879 = load %nyx_string*, %nyx_string** %4839
  %4880 = call i1 @nyx_string_starts_with(%nyx_string* %4878, %nyx_string* %4879)
  store i1 %4880, i1* %4874
  br label %sc_or_end922
sc_or_end922:
  %4881 = load i1, i1* %4874
  br i1 %4881, label %sc_or_end924, label %sc_or_rhs923
sc_or_rhs923:
  %4882 = load %nyx_string*, %nyx_string** %4864
  %4883 = load %nyx_string*, %nyx_string** %4842
  %4884 = call i1 @nyx_string_starts_with(%nyx_string* %4882, %nyx_string* %4883)
  store i1 %4884, i1* %4873
  br label %sc_or_end924
sc_or_end924:
  %4885 = load i1, i1* %4873
  br i1 %4885, label %then925, label %else926
then925:
  ret i1 0
else926:
  br label %merge927
merge927:
  %4886 = load %nyx_string*, %nyx_string** %4845
  %4887 = alloca %nyx_string*
  store %nyx_string* %4886, %nyx_string** %4887
  %4888 = load %nyx_string*, %nyx_string** %4864
  %4889 = load %nyx_string*, %nyx_string** %4848
  %4890 = call i1 @nyx_string_starts_with(%nyx_string* %4888, %nyx_string* %4889)
  br i1 %4890, label %then928, label %else929
then928:
  %4891 = load %nyx_string*, %nyx_string** %4848
  store %nyx_string* %4891, %nyx_string** %4887
  br label %merge930
else929:
  br label %merge930
merge930:
  %4892 = load %nyx_string*, %nyx_string** %4864
  %4893 = load %nyx_string*, %nyx_string** %4851
  %4894 = call i1 @nyx_string_starts_with(%nyx_string* %4892, %nyx_string* %4893)
  br i1 %4894, label %then931, label %else932
then931:
  %4895 = load %nyx_string*, %nyx_string** %4851
  store %nyx_string* %4895, %nyx_string** %4887
  br label %merge933
else932:
  br label %merge933
merge933:
  %4896 = load %nyx_string*, %nyx_string** %4887
  %4897 = load %nyx_string*, %nyx_string** %4845
  %4898 = call i1 @nyx_string_equals(%nyx_string* %4896, %nyx_string* %4897)
  %4899 = xor i1 %4898, true
  br i1 %4899, label %then934, label %else935
then934:
  %4900 = load %nyx_string*, %nyx_string** %4864
  %4901 = load %nyx_string*, %nyx_string** %4887
  %4902 = call i64 @nyx_string_byte_length(%nyx_string* %4901)
  %4903 = load %nyx_string*, %nyx_string** %4864
  %4904 = call i64 @nyx_string_byte_length(%nyx_string* %4903)
  %4905 = call %nyx_string* @nyx_string_substring(%nyx_string* %4900, i64 %4902, i64 %4904)
  %4906 = alloca %nyx_string*
  store %nyx_string* %4905, %nyx_string** %4906
  %4907 = alloca i64
  store i64 0, i64* %4907
  %4908 = alloca i1
  store i1 1, i1* %4908
  %4909 = call i8* @llvm.stacksave()
  br label %while_cond937
while_cond937:
  %4910 = alloca i1
  store i1 false, i1* %4910
  %4911 = load i64, i64* %4907
  %4912 = load %nyx_string*, %nyx_string** %4906
  %4913 = call i64 @nyx_string_byte_length(%nyx_string* %4912)
  %4914 = icmp slt i64 %4911, %4913
  br i1 %4914, label %sc_and_rhs940, label %sc_and_end941
sc_and_rhs940:
  %4915 = load i1, i1* %4908
  store i1 %4915, i1* %4910
  br label %sc_and_end941
sc_and_end941:
  %4916 = load i1, i1* %4910
  br i1 %4916, label %while_body938, label %while_end939
while_body938:
  call void @llvm.stackrestore(i8* %4909)
  %4917 = load %nyx_string*, %nyx_string** %4906
  %4918 = load i64, i64* %4907
  %4919 = call i8 @nyx_string_char_at(%nyx_string* %4917, i64 %4918)
  %4920 = zext i8 %4919 to i64
  %4921 = alloca i64
  store i64 %4920, i64* %4921
  %4922 = load i64, i64* %4921
  %4923 = call i1 @es_ident_c(i64 %4922)
  br i1 %4923, label %then942, label %else943
then942:
  %4924 = load i64, i64* %4907
  %4925 = add i64 %4924, 1
  store i64 %4925, i64* %4907
  br label %merge944
else943:
  store i1 0, i1* %4908
  br label %merge944
merge944:
  br label %while_cond937
while_end939:
  %4926 = load i64, i64* %4907
  %4927 = load %nyx_string*, %nyx_string** %4906
  %4928 = call i64 @nyx_string_byte_length(%nyx_string* %4927)
  %4929 = icmp slt i64 %4926, %4928
  br i1 %4929, label %then945, label %else946
then945:
  %4930 = load %nyx_string*, %nyx_string** %4906
  %4931 = load i64, i64* %4907
  %4932 = call i8 @nyx_string_char_at(%nyx_string* %4930, i64 %4931)
  %4933 = zext i8 %4932 to i64
  %4934 = alloca i64
  store i64 %4933, i64* %4934
  %4935 = load i64, i64* %4934
  %4936 = icmp eq i64 %4935, 60
  br i1 %4936, label %then948, label %else949
then948:
  ret i1 0
else949:
  br label %merge950
merge950:
  br label %merge947
else946:
  br label %merge947
merge947:
  br label %merge936
else935:
  br label %merge936
merge936:
  %4937 = load i64, i64* %4827
  %4938 = add i64 %4937, 1
  store i64 %4938, i64* %4827
  br label %while_cond913
while_end915:
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
  %4939 = alloca i1
  store i1 true, i1* %4939
  %4940 = load %nyx_string*, %nyx_string** %f.ptr
  %4941 = load %nyx_string*, %nyx_string** %propio.ptr
  %4942 = call i1 @nyx_string_equals(%nyx_string* %4940, %nyx_string* %4941)
  br i1 %4942, label %sc_or_end952, label %sc_or_rhs951
sc_or_rhs951:
  %4943 = load %nyx_string*, %nyx_string** %f.ptr
  %4944 = getelementptr [4 x i8], [4 x i8]* @.str611, i32 0, i32 0
  %4945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4944, i64 3)
  %4946 = call i1 @nyx_string_ends_with(%nyx_string* %4943, %nyx_string* %4945)
  %4947 = xor i1 %4946, true
  store i1 %4947, i1* %4939
  br label %sc_or_end952
sc_or_end952:
  %4948 = load i1, i1* %4939
  br i1 %4948, label %then953, label %else954
then953:
  %4949 = load %nyx_string*, %nyx_string** %f.ptr
  %4950 = load i8*, i8** %hashes.ptr
  %4951 = call %nyx_string* @hash_archivo(%nyx_string* %4949, i8* %4950)
  ret %nyx_string* %4951
else954:
  br label %merge955
merge955:
  %4952 = load %nyx_string*, %nyx_string** %f.ptr
  %4953 = load %nyx_string*, %nyx_string** %f.ptr
  %4954 = call i64 @nyx_string_byte_length(%nyx_string* %4953)
  %4955 = sub i64 %4954, 3
  %4956 = call %nyx_string* @nyx_string_substring(%nyx_string* %4952, i64 0, i64 %4955)
  %4957 = alloca %nyx_string*
  store %nyx_string* %4956, %nyx_string** %4957
  %4958 = load i8*, i8** %libs.ptr
  %4959 = load %nyx_string*, %nyx_string** %4957
  %4960 = call i8* @nyx_string_to_cstr(%nyx_string* %4959)
  %4961 = call i1 @nyx_map_contains_str(i8* %4958, i8* %4960)
  %4962 = xor i1 %4961, true
  br i1 %4962, label %then956, label %else957
then956:
  %4963 = load %nyx_string*, %nyx_string** %f.ptr
  %4964 = load i8*, i8** %hashes.ptr
  %4965 = call %nyx_string* @hash_archivo(%nyx_string* %4963, i8* %4964)
  ret %nyx_string* %4965
else957:
  br label %merge958
merge958:
  %4966 = getelementptr [10 x i8], [10 x i8]* @.str612, i32 0, i32 0
  %4967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4966, i64 9)
  %4968 = load %nyx_string*, %nyx_string** %f.ptr
  %4969 = call %nyx_string* @nyx_string_concat(%nyx_string* %4967, %nyx_string* %4968)
  %4970 = alloca %nyx_string*
  store %nyx_string* %4969, %nyx_string** %4970
  %4971 = load i8*, i8** %hashes.ptr
  %4972 = load %nyx_string*, %nyx_string** %4970
  %4973 = call i8* @nyx_string_to_cstr(%nyx_string* %4972)
  %4974 = call i1 @nyx_map_contains_str(i8* %4971, i8* %4973)
  br i1 %4974, label %then959, label %else960
then959:
  %4975 = load i8*, i8** %hashes.ptr
  %4976 = load %nyx_string*, %nyx_string** %4970
  %4977 = call i8* @nyx_string_to_cstr(%nyx_string* %4976)
  %4978 = call i8* @nyx_map_get_str(i8* %4975, i8* %4977)
  %4979 = call %nyx_string* @nyx_string_from_cstr(i8* %4978)
  %4980 = alloca %nyx_string*
  store %nyx_string* %4979, %nyx_string** %4980
  %4981 = load %nyx_string*, %nyx_string** %4980
  ret %nyx_string* %4981
else960:
  br label %merge961
merge961:
  %4982 = load %nyx_string*, %nyx_string** %f.ptr
  %4983 = call i8* @nyx_string_to_cstr(%nyx_string* %4982)
  %4984 = call %nyx_string* @nyx_read_file(i8* %4983)
  %4985 = alloca %nyx_string*
  store %nyx_string* %4984, %nyx_string** %4985
  %4986 = getelementptr [1 x i8], [1 x i8]* @.str613, i32 0, i32 0
  %4987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4986, i64 0)
  %4988 = alloca %nyx_string*
  store %nyx_string* %4987, %nyx_string** %4988
  %4989 = load %nyx_string*, %nyx_string** %4985
  %4990 = call i1 @separable_texto(%nyx_string* %4989)
  br i1 %4990, label %then962, label %else963
then962:
  %4991 = getelementptr [3 x i8], [3 x i8]* @.str614, i32 0, i32 0
  %4992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4991, i64 2)
  %4993 = load %nyx_string*, %nyx_string** %4985
  %4994 = call %nyx_string* @interfaz_de(%nyx_string* %4993)
  %4995 = call %nyx_string* @nyx_sha256(%nyx_string* %4994)
  %4996 = call %nyx_string* @nyx_string_concat(%nyx_string* %4992, %nyx_string* %4995)
  store %nyx_string* %4996, %nyx_string** %4988
  br label %merge964
else963:
  %4997 = load %nyx_string*, %nyx_string** %4985
  %4998 = call %nyx_string* @nyx_sha256(%nyx_string* %4997)
  store %nyx_string* %4998, %nyx_string** %4988
  br label %merge964
merge964:
  %4999 = load i8*, i8** %hashes.ptr
  %5000 = load %nyx_string*, %nyx_string** %4970
  %5001 = load %nyx_string*, %nyx_string** %4988
  %5002 = call i8* @nyx_string_to_cstr(%nyx_string* %5000)
  %5003 = call i8* @nyx_string_to_cstr(%nyx_string* %5001)
  call void @nyx_map_insert_str(i8* %4999, i8* %5002, i8* %5003)
  %5004 = load %nyx_string*, %nyx_string** %4988
  ret %nyx_string* %5004
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
  %5005 = call { i64, i8* }* @nyx_array_new_ptr()
  %5006 = alloca { i64, i8* }*
  store { i64, i8* }* %5005, { i64, i8* }** %5006
  %5007 = call i8* @nyx_map_new(i32 0)
  %5008 = alloca i8*
  store i8* %5007, i8** %5008
  %5009 = load %nyx_string*, %nyx_string** %modulo.ptr
  %5010 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5011 = load { i64, i8* }*, { i64, i8* }** %5006
  %5012 = load i8*, i8** %5008
  %5013 = load i8*, i8** %imports_de.ptr
  %5014 = call i64 @lib_cierre(%nyx_string* %5009, %nyx_string* %5010, { i64, i8* }* %5011, i8* %5012, i8* %5013)
  %5015 = load %nyx_string*, %nyx_string** %base.ptr
  %5016 = getelementptr [2 x i8], [2 x i8]* @.str615, i32 0, i32 0
  %5017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %5016, i64 1)
  %5018 = call %nyx_string* @nyx_string_concat(%nyx_string* %5015, %nyx_string* %5017)
  %5019 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5020 = getelementptr [12 x i8], [12 x i8]* @.str616, i32 0, i32 0
  %5021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %5020, i64 11)
  %5022 = call %nyx_string* @nyx_string_concat(%nyx_string* %5019, %nyx_string* %5021)
  %5023 = load i8*, i8** %hashes.ptr
  %5024 = call %nyx_string* @hash_archivo(%nyx_string* %5022, i8* %5023)
  %5025 = call %nyx_string* @nyx_string_concat(%nyx_string* %5018, %nyx_string* %5024)
  %5026 = alloca %nyx_string*
  store %nyx_string* %5025, %nyx_string** %5026
  %5027 = load %nyx_string*, %nyx_string** %modulo.ptr
  %5028 = getelementptr [4 x i8], [4 x i8]* @.str617, i32 0, i32 0
  %5029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %5028, i64 3)
  %5030 = call %nyx_string* @nyx_string_concat(%nyx_string* %5027, %nyx_string* %5029)
  %5031 = alloca %nyx_string*
  store %nyx_string* %5030, %nyx_string** %5031
  %5032 = alloca i64
  store i64 0, i64* %5032
  %5033 = getelementptr [2 x i8], [2 x i8]* @.str618, i32 0, i32 0
  %5034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %5033, i64 1)
  %5035 = alloca %nyx_string*
  store %nyx_string* %5034, %nyx_string** %5035
  %5036 = getelementptr [2 x i8], [2 x i8]* @.str619, i32 0, i32 0
  %5037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %5036, i64 1)
  %5038 = alloca %nyx_string*
  store %nyx_string* %5037, %nyx_string** %5038
  %5039 = call i8* @llvm.stacksave()
  br label %while_cond965
while_cond965:
  %5040 = load i64, i64* %5032
  %5041 = load { i64, i8* }*, { i64, i8* }** %5006
  %5042 = call i64 @nyx_array_length({ i64, i8* }* %5041)
  %5043 = icmp slt i64 %5040, %5042
  br i1 %5043, label %while_body966, label %while_end967
while_body966:
  call void @llvm.stackrestore(i8* %5039)
  %5044 = load { i64, i8* }*, { i64, i8* }** %5006
  %5045 = load i64, i64* %5032
  %5046 = call i64 @nyx_array_get_checked({ i64, i8* }* %5044, i64 %5045, i64 2)
  %5047 = inttoptr i64 %5046 to %nyx_string*
  %5048 = alloca %nyx_string*
  store %nyx_string* %5047, %nyx_string** %5048
  %5049 = load %nyx_string*, %nyx_string** %5026
  %5050 = load %nyx_string*, %nyx_string** %5035
  %5051 = call %nyx_string* @nyx_string_concat(%nyx_string* %5049, %nyx_string* %5050)
  %5052 = load %nyx_string*, %nyx_string** %5048
  %5053 = call %nyx_string* @nyx_string_concat(%nyx_string* %5051, %nyx_string* %5052)
  %5054 = load %nyx_string*, %nyx_string** %5038
  %5055 = call %nyx_string* @nyx_string_concat(%nyx_string* %5053, %nyx_string* %5054)
  %5056 = load %nyx_string*, %nyx_string** %5048
  %5057 = load %nyx_string*, %nyx_string** %5031
  %5058 = load i8*, i8** %libs.ptr
  %5059 = load i8*, i8** %hashes.ptr
  %5060 = call %nyx_string* @hash_para_huella(%nyx_string* %5056, %nyx_string* %5057, i8* %5058, i8* %5059)
  %5061 = call %nyx_string* @nyx_string_concat(%nyx_string* %5055, %nyx_string* %5060)
  store %nyx_string* %5061, %nyx_string** %5026
  %5062 = load i64, i64* %5032
  %5063 = add i64 %5062, 1
  store i64 %5063, i64* %5032
  br label %while_cond965
while_end967:
  %5064 = load %nyx_string*, %nyx_string** %5026
  %5065 = call %nyx_string* @nyx_sha256(%nyx_string* %5064)
  ret %nyx_string* %5065
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
  %5066 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5067 = load { i64, i8* }*, { i64, i8* }** %5066
  %5068 = call i64 @nyx_array_length({ i64, i8* }* %5067)
  %5069 = icmp eq i64 %5068, 0
  br i1 %5069, label %then968, label %else969
then968:
  %5070 = getelementptr [1 x i8], [1 x i8]* @.str620, i32 0, i32 0
  %5071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %5070, i64 0)
  ret %nyx_string* %5071
else969:
  br label %merge970
merge970:
  %5072 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5073 = load { i64, i8* }*, { i64, i8* }** %5072
  %5074 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5075 = load { i64, i8* }*, { i64, i8* }** %5074
  %5076 = getelementptr [2 x i8], [2 x i8]* @.str621, i32 0, i32 0
  %5077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %5076, i64 1)
  %5078 = call %nyx_string* @nyx_string_join({ i64, i8* }* %5075, %nyx_string* %5077)
  %5079 = alloca %nyx_string*
  store %nyx_string* %5078, %nyx_string** %5079
  %5080 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %5081 = call { i64, i8* }* @nyx_stat(%nyx_string* %5080)
  %5082 = alloca { i64, i8* }*
  store { i64, i8* }* %5081, { i64, i8* }** %5082
  %5083 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %5084 = alloca %nyx_string*
  store %nyx_string* %5083, %nyx_string** %5084
  %5085 = load { i64, i8* }*, { i64, i8* }** %5082
  %5086 = call i64 @nyx_array_length({ i64, i8* }* %5085)
  %5087 = icmp sge i64 %5086, 3
  br i1 %5087, label %then971, label %else972
then971:
  %5088 = load { i64, i8* }*, { i64, i8* }** %5082
  %5089 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %5088, i64 0)
  %5090 = alloca i64
  store i64 %5089, i64* %5090
  %5091 = load { i64, i8* }*, { i64, i8* }** %5082
  %5092 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %5091, i64 2)
  %5093 = alloca i64
  store i64 %5092, i64* %5093
  %5094 = load %nyx_string*, %nyx_string** %5084
  %5095 = getelementptr [2 x i8], [2 x i8]* @.str622, i32 0, i32 0
  %5096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %5095, i64 1)
  %5097 = call %nyx_string* @nyx_string_concat(%nyx_string* %5094, %nyx_string* %5096)
  %5098 = load i64, i64* %5090
  %5099 = call %nyx_string* @nyx_string_from_int(i64 %5098)
  %5100 = call %nyx_string* @nyx_string_concat(%nyx_string* %5097, %nyx_string* %5099)
  %5101 = getelementptr [2 x i8], [2 x i8]* @.str623, i32 0, i32 0
  %5102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %5101, i64 1)
  %5103 = call %nyx_string* @nyx_string_concat(%nyx_string* %5100, %nyx_string* %5102)
  %5104 = load i64, i64* %5093
  %5105 = call %nyx_string* @nyx_string_from_int(i64 %5104)
  %5106 = call %nyx_string* @nyx_string_concat(%nyx_string* %5103, %nyx_string* %5105)
  store %nyx_string* %5106, %nyx_string** %5084
  br label %merge973
else972:
  br label %merge973
merge973:
  %5107 = load %nyx_string*, %nyx_string** %5084
  %5108 = getelementptr [2 x i8], [2 x i8]* @.str624, i32 0, i32 0
  %5109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %5108, i64 1)
  %5110 = call %nyx_string* @nyx_string_concat(%nyx_string* %5107, %nyx_string* %5109)
  %5111 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %5112 = call %nyx_string* @nyx_string_concat(%nyx_string* %5110, %nyx_string* %5111)
  %5113 = getelementptr [2 x i8], [2 x i8]* @.str625, i32 0, i32 0
  %5114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %5113, i64 1)
  %5115 = call %nyx_string* @nyx_string_concat(%nyx_string* %5112, %nyx_string* %5114)
  %5116 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %5117 = call %nyx_string* @nyx_string_concat(%nyx_string* %5115, %nyx_string* %5116)
  %5118 = getelementptr [2 x i8], [2 x i8]* @.str626, i32 0, i32 0
  %5119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %5118, i64 1)
  %5120 = call %nyx_string* @nyx_string_concat(%nyx_string* %5117, %nyx_string* %5119)
  %5121 = load %nyx_string*, %nyx_string** %5079
  %5122 = call %nyx_string* @nyx_string_concat(%nyx_string* %5120, %nyx_string* %5121)
  %5123 = alloca %nyx_string*
  store %nyx_string* %5122, %nyx_string** %5123
  %5124 = call i8* @nyx_map_new(i32 0)
  %5125 = alloca i8*
  store i8* %5124, i8** %5125
  %5126 = call i8* @nyx_map_new(i32 0)
  %5127 = alloca i8*
  store i8* %5126, i8** %5127
  %5128 = call i8* @nyx_map_new(i32 0)
  %5129 = alloca i8*
  store i8* %5128, i8** %5129
  %5130 = alloca i64
  store i64 0, i64* %5130
  %5131 = call i8* @llvm.stacksave()
  br label %while_cond974
while_cond974:
  %5132 = load i64, i64* %5130
  %5133 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5134 = load { i64, i8* }*, { i64, i8* }** %5133
  %5135 = call i64 @nyx_array_length({ i64, i8* }* %5134)
  %5136 = icmp slt i64 %5132, %5135
  br i1 %5136, label %while_body975, label %while_end976
while_body975:
  call void @llvm.stackrestore(i8* %5131)
  %5137 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5138 = load { i64, i8* }*, { i64, i8* }** %5137
  %5139 = load i64, i64* %5130
  %5140 = call i64 @nyx_array_get({ i64, i8* }* %5138, i64 %5139)
  %5141 = inttoptr i64 %5140 to %nyx_string*
  %5142 = alloca %nyx_string*
  store %nyx_string* %5141, %nyx_string** %5142
  %5143 = load i8*, i8** %5129
  %5144 = load %nyx_string*, %nyx_string** %5142
  %5145 = call i8* @nyx_string_to_cstr(%nyx_string* %5144)
  call void @nyx_map_insert_int(i8* %5143, i8* %5145, i64 1)
  %5146 = load i64, i64* %5130
  %5147 = add i64 %5146, 1
  store i64 %5147, i64* %5130
  br label %while_cond974
while_end976:
  %5148 = call i8* @nyx_sb_new(i64 1024)
  %5149 = alloca i8*
  store i8* %5148, i8** %5149
  %5150 = load i8*, i8** %5149
  %5151 = call %nyx_string* @lib_pista_import_sh()
  call void @nyx_sb_append(i8* %5150, %nyx_string* %5151)
  %5152 = load i8*, i8** %5149
  %5153 = getelementptr [60 x i8], [60 x i8]* @.str627, i32 0, i32 0
  %5154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %5153, i64 59)
  call void @nyx_sb_append(i8* %5152, %nyx_string* %5154)
  %5155 = alloca i64
  store i64 0, i64* %5155
  %5156 = getelementptr [2 x i8], [2 x i8]* @.str628, i32 0, i32 0
  %5157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %5156, i64 1)
  %5158 = alloca %nyx_string*
  store %nyx_string* %5157, %nyx_string** %5158
  %5159 = getelementptr [2 x i8], [2 x i8]* @.str629, i32 0, i32 0
  %5160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %5159, i64 1)
  %5161 = alloca %nyx_string*
  store %nyx_string* %5160, %nyx_string** %5161
  %5162 = getelementptr [5 x i8], [5 x i8]* @.str630, i32 0, i32 0
  %5163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %5162, i64 4)
  %5164 = alloca %nyx_string*
  store %nyx_string* %5163, %nyx_string** %5164
  %5165 = getelementptr [26 x i8], [26 x i8]* @.str631, i32 0, i32 0
  %5166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %5165, i64 25)
  %5167 = alloca %nyx_string*
  store %nyx_string* %5166, %nyx_string** %5167
  %5168 = getelementptr [2 x i8], [2 x i8]* @.str632, i32 0, i32 0
  %5169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %5168, i64 1)
  %5170 = alloca %nyx_string*
  store %nyx_string* %5169, %nyx_string** %5170
  %5171 = getelementptr [3 x i8], [3 x i8]* @.str633, i32 0, i32 0
  %5172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %5171, i64 2)
  %5173 = alloca %nyx_string*
  store %nyx_string* %5172, %nyx_string** %5173
  %5174 = getelementptr [8 x i8], [8 x i8]* @.str634, i32 0, i32 0
  %5175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %5174, i64 7)
  %5176 = alloca %nyx_string*
  store %nyx_string* %5175, %nyx_string** %5176
  %5177 = getelementptr [13 x i8], [13 x i8]* @.str635, i32 0, i32 0
  %5178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %5177, i64 12)
  %5179 = alloca %nyx_string*
  store %nyx_string* %5178, %nyx_string** %5179
  %5180 = getelementptr [30 x i8], [30 x i8]* @.str636, i32 0, i32 0
  %5181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %5180, i64 29)
  %5182 = alloca %nyx_string*
  store %nyx_string* %5181, %nyx_string** %5182
  %5183 = getelementptr [20 x i8], [20 x i8]* @.str637, i32 0, i32 0
  %5184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %5183, i64 19)
  %5185 = alloca %nyx_string*
  store %nyx_string* %5184, %nyx_string** %5185
  %5186 = getelementptr [39 x i8], [39 x i8]* @.str638, i32 0, i32 0
  %5187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %5186, i64 38)
  %5188 = alloca %nyx_string*
  store %nyx_string* %5187, %nyx_string** %5188
  %5189 = getelementptr [35 x i8], [35 x i8]* @.str639, i32 0, i32 0
  %5190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %5189, i64 34)
  %5191 = alloca %nyx_string*
  store %nyx_string* %5190, %nyx_string** %5191
  %5192 = getelementptr [4 x i8], [4 x i8]* @.str640, i32 0, i32 0
  %5193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %5192, i64 3)
  %5194 = alloca %nyx_string*
  store %nyx_string* %5193, %nyx_string** %5194
  %5195 = getelementptr [10 x i8], [10 x i8]* @.str641, i32 0, i32 0
  %5196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %5195, i64 9)
  %5197 = alloca %nyx_string*
  store %nyx_string* %5196, %nyx_string** %5197
  %5198 = getelementptr [28 x i8], [28 x i8]* @.str642, i32 0, i32 0
  %5199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %5198, i64 27)
  %5200 = alloca %nyx_string*
  store %nyx_string* %5199, %nyx_string** %5200
  %5201 = getelementptr [43 x i8], [43 x i8]* @.str643, i32 0, i32 0
  %5202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %5201, i64 42)
  %5203 = alloca %nyx_string*
  store %nyx_string* %5202, %nyx_string** %5203
  %5204 = getelementptr [22 x i8], [22 x i8]* @.str644, i32 0, i32 0
  %5205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %5204, i64 21)
  %5206 = alloca %nyx_string*
  store %nyx_string* %5205, %nyx_string** %5206
  %5207 = getelementptr [2 x i8], [2 x i8]* @.str645, i32 0, i32 0
  %5208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %5207, i64 1)
  %5209 = alloca %nyx_string*
  store %nyx_string* %5208, %nyx_string** %5209
  %5210 = getelementptr [3 x i8], [3 x i8]* @.str646, i32 0, i32 0
  %5211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %5210, i64 2)
  %5212 = alloca %nyx_string*
  store %nyx_string* %5211, %nyx_string** %5212
  %5213 = getelementptr [12 x i8], [12 x i8]* @.str647, i32 0, i32 0
  %5214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %5213, i64 11)
  %5215 = alloca %nyx_string*
  store %nyx_string* %5214, %nyx_string** %5215
  %5216 = getelementptr [13 x i8], [13 x i8]* @.str648, i32 0, i32 0
  %5217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %5216, i64 12)
  %5218 = alloca %nyx_string*
  store %nyx_string* %5217, %nyx_string** %5218
  %5219 = getelementptr [27 x i8], [27 x i8]* @.str649, i32 0, i32 0
  %5220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %5219, i64 26)
  %5221 = alloca %nyx_string*
  store %nyx_string* %5220, %nyx_string** %5221
  %5222 = getelementptr [9 x i8], [9 x i8]* @.str650, i32 0, i32 0
  %5223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %5222, i64 8)
  %5224 = alloca %nyx_string*
  store %nyx_string* %5223, %nyx_string** %5224
  %5225 = getelementptr [35 x i8], [35 x i8]* @.str651, i32 0, i32 0
  %5226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %5225, i64 34)
  %5227 = alloca %nyx_string*
  store %nyx_string* %5226, %nyx_string** %5227
  %5228 = getelementptr [5 x i8], [5 x i8]* @.str652, i32 0, i32 0
  %5229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %5228, i64 4)
  %5230 = alloca %nyx_string*
  store %nyx_string* %5229, %nyx_string** %5230
  %5231 = getelementptr [55 x i8], [55 x i8]* @.str653, i32 0, i32 0
  %5232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %5231, i64 54)
  %5233 = alloca %nyx_string*
  store %nyx_string* %5232, %nyx_string** %5233
  %5234 = getelementptr [17 x i8], [17 x i8]* @.str654, i32 0, i32 0
  %5235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %5234, i64 16)
  %5236 = alloca %nyx_string*
  store %nyx_string* %5235, %nyx_string** %5236
  %5237 = getelementptr [10 x i8], [10 x i8]* @.str655, i32 0, i32 0
  %5238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %5237, i64 9)
  %5239 = alloca %nyx_string*
  store %nyx_string* %5238, %nyx_string** %5239
  %5240 = getelementptr [26 x i8], [26 x i8]* @.str656, i32 0, i32 0
  %5241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %5240, i64 25)
  %5242 = alloca %nyx_string*
  store %nyx_string* %5241, %nyx_string** %5242
  %5243 = getelementptr [66 x i8], [66 x i8]* @.str657, i32 0, i32 0
  %5244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %5243, i64 65)
  %5245 = alloca %nyx_string*
  store %nyx_string* %5244, %nyx_string** %5245
  %5246 = getelementptr [62 x i8], [62 x i8]* @.str658, i32 0, i32 0
  %5247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %5246, i64 61)
  %5248 = alloca %nyx_string*
  store %nyx_string* %5247, %nyx_string** %5248
  %5249 = getelementptr [111 x i8], [111 x i8]* @.str659, i32 0, i32 0
  %5250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %5249, i64 110)
  %5251 = alloca %nyx_string*
  store %nyx_string* %5250, %nyx_string** %5251
  %5252 = getelementptr [45 x i8], [45 x i8]* @.str660, i32 0, i32 0
  %5253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %5252, i64 44)
  %5254 = alloca %nyx_string*
  store %nyx_string* %5253, %nyx_string** %5254
  %5255 = getelementptr [14 x i8], [14 x i8]* @.str661, i32 0, i32 0
  %5256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %5255, i64 13)
  %5257 = alloca %nyx_string*
  store %nyx_string* %5256, %nyx_string** %5257
  %5258 = getelementptr [38 x i8], [38 x i8]* @.str662, i32 0, i32 0
  %5259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %5258, i64 37)
  %5260 = alloca %nyx_string*
  store %nyx_string* %5259, %nyx_string** %5260
  %5261 = getelementptr [45 x i8], [45 x i8]* @.str663, i32 0, i32 0
  %5262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %5261, i64 44)
  %5263 = alloca %nyx_string*
  store %nyx_string* %5262, %nyx_string** %5263
  %5264 = getelementptr [36 x i8], [36 x i8]* @.str664, i32 0, i32 0
  %5265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %5264, i64 35)
  %5266 = alloca %nyx_string*
  store %nyx_string* %5265, %nyx_string** %5266
  %5267 = getelementptr [25 x i8], [25 x i8]* @.str665, i32 0, i32 0
  %5268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %5267, i64 24)
  %5269 = alloca %nyx_string*
  store %nyx_string* %5268, %nyx_string** %5269
  %5270 = getelementptr [8 x i8], [8 x i8]* @.str666, i32 0, i32 0
  %5271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %5270, i64 7)
  %5272 = alloca %nyx_string*
  store %nyx_string* %5271, %nyx_string** %5272
  %5273 = getelementptr [42 x i8], [42 x i8]* @.str667, i32 0, i32 0
  %5274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %5273, i64 41)
  %5275 = alloca %nyx_string*
  store %nyx_string* %5274, %nyx_string** %5275
  %5276 = call i8* @llvm.stacksave()
  br label %while_cond977
while_cond977:
  %5277 = load i64, i64* %5155
  %5278 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5279 = load { i64, i8* }*, { i64, i8* }** %5278
  %5280 = call i64 @nyx_array_length({ i64, i8* }* %5279)
  %5281 = icmp slt i64 %5277, %5280
  br i1 %5281, label %while_body978, label %while_end979
while_body978:
  call void @llvm.stackrestore(i8* %5276)
  %5282 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5283 = load { i64, i8* }*, { i64, i8* }** %5282
  %5284 = load i64, i64* %5155
  %5285 = call i64 @nyx_array_get({ i64, i8* }* %5283, i64 %5284)
  %5286 = inttoptr i64 %5285 to %nyx_string*
  %5287 = alloca %nyx_string*
  store %nyx_string* %5286, %nyx_string** %5287
  %5288 = load %nyx_string*, %nyx_string** %5287
  %5289 = load %nyx_string*, %nyx_string** %5158
  %5290 = load %nyx_string*, %nyx_string** %5161
  %5291 = call %nyx_string* @nyx_string_replace(%nyx_string* %5288, %nyx_string* %5289, %nyx_string* %5290)
  %5292 = alloca %nyx_string*
  store %nyx_string* %5291, %nyx_string** %5292
  %5293 = load %nyx_string*, %nyx_string** %5287
  %5294 = load %nyx_string*, %nyx_string** %5123
  %5295 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %5296 = load %nyx_string*, %nyx_string** %5164
  %5297 = call %nyx_string* @nyx_string_concat(%nyx_string* %5295, %nyx_string* %5296)
  %5298 = load i8*, i8** %5125
  %5299 = load i8*, i8** %5127
  %5300 = load i8*, i8** %5129
  %5301 = call %nyx_string* @lib_huella(%nyx_string* %5293, %nyx_string* %5294, %nyx_string* %5297, i8* %5298, i8* %5299, i8* %5300)
  %5302 = call %nyx_string* @nyx_string_substring(%nyx_string* %5301, i64 0, i64 16)
  %5303 = alloca %nyx_string*
  store %nyx_string* %5302, %nyx_string** %5303
  %5304 = load %nyx_string*, %nyx_string** %5167
  %5305 = load %nyx_string*, %nyx_string** %5292
  %5306 = call %nyx_string* @nyx_string_concat(%nyx_string* %5304, %nyx_string* %5305)
  %5307 = load %nyx_string*, %nyx_string** %5170
  %5308 = call %nyx_string* @nyx_string_concat(%nyx_string* %5306, %nyx_string* %5307)
  %5309 = load %nyx_string*, %nyx_string** %5303
  %5310 = call %nyx_string* @nyx_string_concat(%nyx_string* %5308, %nyx_string* %5309)
  %5311 = load %nyx_string*, %nyx_string** %5173
  %5312 = call %nyx_string* @nyx_string_concat(%nyx_string* %5310, %nyx_string* %5311)
  %5313 = alloca %nyx_string*
  store %nyx_string* %5312, %nyx_string** %5313
  %5314 = load %nyx_string*, %nyx_string** %5167
  %5315 = load %nyx_string*, %nyx_string** %5292
  %5316 = call %nyx_string* @nyx_string_concat(%nyx_string* %5314, %nyx_string* %5315)
  %5317 = load %nyx_string*, %nyx_string** %5170
  %5318 = call %nyx_string* @nyx_string_concat(%nyx_string* %5316, %nyx_string* %5317)
  %5319 = load %nyx_string*, %nyx_string** %5303
  %5320 = call %nyx_string* @nyx_string_concat(%nyx_string* %5318, %nyx_string* %5319)
  %5321 = load %nyx_string*, %nyx_string** %5176
  %5322 = call %nyx_string* @nyx_string_concat(%nyx_string* %5320, %nyx_string* %5321)
  %5323 = alloca %nyx_string*
  store %nyx_string* %5322, %nyx_string** %5323
  %5324 = load %nyx_string*, %nyx_string** %5179
  %5325 = load %nyx_string*, %nyx_string** %gc_flag.ptr
  %5326 = call %nyx_string* @nyx_string_concat(%nyx_string* %5324, %nyx_string* %5325)
  %5327 = load %nyx_string*, %nyx_string** %5182
  %5328 = call %nyx_string* @nyx_string_concat(%nyx_string* %5326, %nyx_string* %5327)
  %5329 = load %nyx_string*, %nyx_string** %5287
  %5330 = call %nyx_string* @nyx_string_concat(%nyx_string* %5328, %nyx_string* %5329)
  %5331 = load %nyx_string*, %nyx_string** %5185
  %5332 = call %nyx_string* @nyx_string_concat(%nyx_string* %5330, %nyx_string* %5331)
  %5333 = load %nyx_string*, %nyx_string** %5079
  %5334 = call %nyx_string* @nyx_string_concat(%nyx_string* %5332, %nyx_string* %5333)
  %5335 = load %nyx_string*, %nyx_string** %5188
  %5336 = call %nyx_string* @nyx_string_concat(%nyx_string* %5334, %nyx_string* %5335)
  %5337 = load %nyx_string*, %nyx_string** %5287
  %5338 = call %nyx_string* @nyx_string_concat(%nyx_string* %5336, %nyx_string* %5337)
  %5339 = load %nyx_string*, %nyx_string** %5191
  %5340 = call %nyx_string* @nyx_string_concat(%nyx_string* %5338, %nyx_string* %5339)
  %5341 = load %nyx_string*, %nyx_string** %nyx_bin.ptr
  %5342 = call %nyx_string* @nyx_string_concat(%nyx_string* %5340, %nyx_string* %5341)
  %5343 = load %nyx_string*, %nyx_string** %5194
  %5344 = call %nyx_string* @nyx_string_concat(%nyx_string* %5342, %nyx_string* %5343)
  %5345 = alloca %nyx_string*
  store %nyx_string* %5344, %nyx_string** %5345
  %5346 = load i8*, i8** %5149
  %5347 = load %nyx_string*, %nyx_string** %5197
  %5348 = load %nyx_string*, %nyx_string** %5313
  %5349 = call %nyx_string* @nyx_string_concat(%nyx_string* %5347, %nyx_string* %5348)
  %5350 = load %nyx_string*, %nyx_string** %5200
  %5351 = call %nyx_string* @nyx_string_concat(%nyx_string* %5349, %nyx_string* %5350)
  %5352 = load %nyx_string*, %nyx_string** %5287
  %5353 = call %nyx_string* @nyx_string_concat(%nyx_string* %5351, %nyx_string* %5352)
  %5354 = load %nyx_string*, %nyx_string** %5203
  %5355 = call %nyx_string* @nyx_string_concat(%nyx_string* %5353, %nyx_string* %5354)
  %5356 = load %nyx_string*, %nyx_string** %5313
  %5357 = call %nyx_string* @nyx_string_concat(%nyx_string* %5355, %nyx_string* %5356)
  %5358 = load %nyx_string*, %nyx_string** %5206
  %5359 = call %nyx_string* @nyx_string_concat(%nyx_string* %5357, %nyx_string* %5358)
  %5360 = load %nyx_string*, %nyx_string** %5287
  %5361 = call %nyx_string* @nyx_string_concat(%nyx_string* %5359, %nyx_string* %5360)
  %5362 = load %nyx_string*, %nyx_string** %5209
  %5363 = call %nyx_string* @nyx_string_concat(%nyx_string* %5361, %nyx_string* %5362)
  %5364 = load %nyx_string*, %nyx_string** %5313
  %5365 = call %nyx_string* @nyx_string_concat(%nyx_string* %5363, %nyx_string* %5364)
  %5366 = load %nyx_string*, %nyx_string** %5212
  %5367 = call %nyx_string* @nyx_string_concat(%nyx_string* %5365, %nyx_string* %5366)
  call void @nyx_sb_append(i8* %5346, %nyx_string* %5367)
  %5368 = load i8*, i8** %5149
  %5369 = load %nyx_string*, %nyx_string** %5215
  %5370 = load %nyx_string*, %nyx_string** %5323
  %5371 = call %nyx_string* @nyx_string_concat(%nyx_string* %5369, %nyx_string* %5370)
  %5372 = load %nyx_string*, %nyx_string** %5218
  %5373 = call %nyx_string* @nyx_string_concat(%nyx_string* %5371, %nyx_string* %5372)
  call void @nyx_sb_append(i8* %5368, %nyx_string* %5373)
  %5374 = load i8*, i8** %5149
  %5375 = load %nyx_string*, %nyx_string** %5221
  %5376 = load %nyx_string*, %nyx_string** %5287
  %5377 = call %nyx_string* @nyx_string_concat(%nyx_string* %5375, %nyx_string* %5376)
  %5378 = load %nyx_string*, %nyx_string** %5224
  %5379 = call %nyx_string* @nyx_string_concat(%nyx_string* %5377, %nyx_string* %5378)
  call void @nyx_sb_append(i8* %5374, %nyx_string* %5379)
  %5380 = load i8*, i8** %5149
  %5381 = load %nyx_string*, %nyx_string** %5227
  %5382 = load %nyx_string*, %nyx_string** %5292
  %5383 = call %nyx_string* @nyx_string_concat(%nyx_string* %5381, %nyx_string* %5382)
  %5384 = load %nyx_string*, %nyx_string** %5230
  %5385 = call %nyx_string* @nyx_string_concat(%nyx_string* %5383, %nyx_string* %5384)
  call void @nyx_sb_append(i8* %5380, %nyx_string* %5385)
  %5386 = load i8*, i8** %5149
  %5387 = load %nyx_string*, %nyx_string** %5233
  %5388 = load %nyx_string*, %nyx_string** %5287
  %5389 = call %nyx_string* @nyx_string_concat(%nyx_string* %5387, %nyx_string* %5388)
  %5390 = load %nyx_string*, %nyx_string** %5236
  %5391 = call %nyx_string* @nyx_string_concat(%nyx_string* %5389, %nyx_string* %5390)
  call void @nyx_sb_append(i8* %5386, %nyx_string* %5391)
  %5392 = load i8*, i8** %5149
  %5393 = load %nyx_string*, %nyx_string** %5239
  %5394 = load %nyx_string*, %nyx_string** %5345
  %5395 = call %nyx_string* @nyx_string_concat(%nyx_string* %5393, %nyx_string* %5394)
  %5396 = load %nyx_string*, %nyx_string** %5242
  %5397 = call %nyx_string* @nyx_string_concat(%nyx_string* %5395, %nyx_string* %5396)
  call void @nyx_sb_append(i8* %5392, %nyx_string* %5397)
  %5398 = load i8*, i8** %5149
  %5399 = load %nyx_string*, %nyx_string** %5245
  %5400 = load %nyx_string*, %nyx_string** %5323
  %5401 = call %nyx_string* @nyx_string_concat(%nyx_string* %5399, %nyx_string* %5400)
  %5402 = load %nyx_string*, %nyx_string** %5212
  %5403 = call %nyx_string* @nyx_string_concat(%nyx_string* %5401, %nyx_string* %5402)
  call void @nyx_sb_append(i8* %5398, %nyx_string* %5403)
  %5404 = load i8*, i8** %5149
  %5405 = load %nyx_string*, %nyx_string** %5248
  %5406 = load %nyx_string*, %nyx_string** %5287
  %5407 = call %nyx_string* @nyx_string_concat(%nyx_string* %5405, %nyx_string* %5406)
  %5408 = load %nyx_string*, %nyx_string** %5251
  %5409 = call %nyx_string* @nyx_string_concat(%nyx_string* %5407, %nyx_string* %5408)
  call void @nyx_sb_append(i8* %5404, %nyx_string* %5409)
  %5410 = load i8*, i8** %5149
  %5411 = load %nyx_string*, %nyx_string** %5254
  call void @nyx_sb_append(i8* %5410, %nyx_string* %5411)
  %5412 = load i8*, i8** %5149
  %5413 = load %nyx_string*, %nyx_string** %5257
  %5414 = load %nyx_string*, %nyx_string** %opt_flags.ptr
  %5415 = call %nyx_string* @nyx_string_concat(%nyx_string* %5413, %nyx_string* %5414)
  %5416 = load %nyx_string*, %nyx_string** %5260
  %5417 = call %nyx_string* @nyx_string_concat(%nyx_string* %5415, %nyx_string* %5416)
  %5418 = load %nyx_string*, %nyx_string** %5313
  %5419 = call %nyx_string* @nyx_string_concat(%nyx_string* %5417, %nyx_string* %5418)
  %5420 = load %nyx_string*, %nyx_string** %5263
  %5421 = call %nyx_string* @nyx_string_concat(%nyx_string* %5419, %nyx_string* %5420)
  %5422 = load %nyx_string*, %nyx_string** %5287
  %5423 = call %nyx_string* @nyx_string_concat(%nyx_string* %5421, %nyx_string* %5422)
  %5424 = load %nyx_string*, %nyx_string** %5266
  %5425 = call %nyx_string* @nyx_string_concat(%nyx_string* %5423, %nyx_string* %5424)
  call void @nyx_sb_append(i8* %5412, %nyx_string* %5425)
  %5426 = load i8*, i8** %5149
  %5427 = load %nyx_string*, %nyx_string** %5269
  %5428 = load %nyx_string*, %nyx_string** %5313
  %5429 = call %nyx_string* @nyx_string_concat(%nyx_string* %5427, %nyx_string* %5428)
  %5430 = load %nyx_string*, %nyx_string** %5206
  %5431 = call %nyx_string* @nyx_string_concat(%nyx_string* %5429, %nyx_string* %5430)
  %5432 = load %nyx_string*, %nyx_string** %5287
  %5433 = call %nyx_string* @nyx_string_concat(%nyx_string* %5431, %nyx_string* %5432)
  %5434 = load %nyx_string*, %nyx_string** %5209
  %5435 = call %nyx_string* @nyx_string_concat(%nyx_string* %5433, %nyx_string* %5434)
  %5436 = load %nyx_string*, %nyx_string** %5313
  %5437 = call %nyx_string* @nyx_string_concat(%nyx_string* %5435, %nyx_string* %5436)
  %5438 = load %nyx_string*, %nyx_string** %5272
  %5439 = call %nyx_string* @nyx_string_concat(%nyx_string* %5437, %nyx_string* %5438)
  call void @nyx_sb_append(i8* %5426, %nyx_string* %5439)
  %5440 = load i8*, i8** %5149
  %5441 = load %nyx_string*, %nyx_string** %5275
  call void @nyx_sb_append(i8* %5440, %nyx_string* %5441)
  %5442 = load i64, i64* %5155
  %5443 = add i64 %5442, 1
  store i64 %5443, i64* %5155
  br label %while_cond977
while_end979:
  %5444 = load i8*, i8** %5149
  %5445 = call %nyx_string* @nyx_sb_to_string(i8* %5444)
  ret %nyx_string* %5445
}

define internal i1 @run_libs(
%ProjectConfig %config.param, i1 %release.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %5446 = getelementptr [9 x i8], [9 x i8]* @.str668, i32 0, i32 0
  %5447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %5446, i64 8)
  %5448 = call i8* @nyx_string_to_cstr(%nyx_string* %5447)
  %5449 = call %nyx_string* @nyx_getenv(i8* %5448)
  %5450 = alloca %nyx_string*
  store %nyx_string* %5449, %nyx_string** %5450
  %5451 = load %nyx_string*, %nyx_string** %5450
  %5452 = getelementptr [1 x i8], [1 x i8]* @.str669, i32 0, i32 0
  %5453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %5452, i64 0)
  %5454 = call i1 @nyx_string_equals(%nyx_string* %5451, %nyx_string* %5453)
  br i1 %5454, label %then980, label %else981
then980:
  %5455 = getelementptr [5 x i8], [5 x i8]* @.str670, i32 0, i32 0
  %5456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %5455, i64 4)
  %5457 = call i8* @nyx_string_to_cstr(%nyx_string* %5456)
  %5458 = call %nyx_string* @nyx_getenv(i8* %5457)
  %5459 = alloca %nyx_string*
  store %nyx_string* %5458, %nyx_string** %5459
  %5460 = alloca i1
  store i1 false, i1* %5460
  %5461 = load %nyx_string*, %nyx_string** %5459
  %5462 = getelementptr [1 x i8], [1 x i8]* @.str671, i32 0, i32 0
  %5463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %5462, i64 0)
  %5464 = call i1 @nyx_string_equals(%nyx_string* %5461, %nyx_string* %5463)
  %5465 = xor i1 %5464, true
  br i1 %5465, label %sc_and_rhs983, label %sc_and_end984
sc_and_rhs983:
  %5466 = load %nyx_string*, %nyx_string** %5459
  %5467 = getelementptr [24 x i8], [24 x i8]* @.str672, i32 0, i32 0
  %5468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %5467, i64 23)
  %5469 = call %nyx_string* @nyx_string_concat(%nyx_string* %5466, %nyx_string* %5468)
  %5470 = call i8* @nyx_string_to_cstr(%nyx_string* %5469)
  %5471 = call i1 @nyx_file_exists(i8* %5470)
  store i1 %5471, i1* %5460
  br label %sc_and_end984
sc_and_end984:
  %5472 = load i1, i1* %5460
  br i1 %5472, label %then985, label %else986
then985:
  %5473 = load %nyx_string*, %nyx_string** %5459
  %5474 = getelementptr [6 x i8], [6 x i8]* @.str673, i32 0, i32 0
  %5475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %5474, i64 5)
  %5476 = call %nyx_string* @nyx_string_concat(%nyx_string* %5473, %nyx_string* %5475)
  store %nyx_string* %5476, %nyx_string** %5450
  br label %merge987
else986:
  br label %merge987
merge987:
  br label %merge982
else981:
  br label %merge982
merge982:
  %5477 = alloca i1
  store i1 false, i1* %5477
  %5478 = load %nyx_string*, %nyx_string** %5450
  %5479 = getelementptr [1 x i8], [1 x i8]* @.str674, i32 0, i32 0
  %5480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %5479, i64 0)
  %5481 = call i1 @nyx_string_equals(%nyx_string* %5478, %nyx_string* %5480)
  br i1 %5481, label %sc_and_rhs988, label %sc_and_end989
sc_and_rhs988:
  %5482 = getelementptr [14 x i8], [14 x i8]* @.str675, i32 0, i32 0
  %5483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %5482, i64 13)
  %5484 = call i8* @nyx_string_to_cstr(%nyx_string* %5483)
  %5485 = call i1 @nyx_file_exists(i8* %5484)
  store i1 %5485, i1* %5477
  br label %sc_and_end989
sc_and_end989:
  %5486 = load i1, i1* %5477
  br i1 %5486, label %then990, label %else991
then990:
  %5487 = getelementptr [2 x i8], [2 x i8]* @.str676, i32 0, i32 0
  %5488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %5487, i64 1)
  store %nyx_string* %5488, %nyx_string** %5450
  br label %merge992
else991:
  br label %merge992
merge992:
  %5489 = load %nyx_string*, %nyx_string** %5450
  %5490 = getelementptr [1 x i8], [1 x i8]* @.str677, i32 0, i32 0
  %5491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %5490, i64 0)
  %5492 = call i1 @nyx_string_equals(%nyx_string* %5489, %nyx_string* %5491)
  br i1 %5492, label %then993, label %else994
then993:
  %5493 = getelementptr [56 x i8], [56 x i8]* @.str678, i32 0, i32 0
  %5494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %5493, i64 55)
  %5495 = call i8* @nyx_string_to_cstr(%nyx_string* %5494)
  call void @nyx_print_string(i8* %5495)
  ret i1 0
else994:
  br label %merge995
merge995:
  %5496 = load %nyx_string*, %nyx_string** %5450
  %5497 = getelementptr [15 x i8], [15 x i8]* @.str679, i32 0, i32 0
  %5498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %5497, i64 14)
  %5499 = call %nyx_string* @nyx_string_concat(%nyx_string* %5496, %nyx_string* %5498)
  %5500 = alloca %nyx_string*
  store %nyx_string* %5499, %nyx_string** %5500
  %5501 = load %nyx_string*, %nyx_string** %5500
  %5502 = call i8* @nyx_string_to_cstr(%nyx_string* %5501)
  %5503 = call i1 @nyx_file_exists(i8* %5502)
  %5504 = xor i1 %5503, true
  br i1 %5504, label %then996, label %else997
then996:
  %5505 = load %nyx_string*, %nyx_string** %5450
  %5506 = getelementptr [9 x i8], [9 x i8]* @.str680, i32 0, i32 0
  %5507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %5506, i64 8)
  %5508 = call %nyx_string* @nyx_string_concat(%nyx_string* %5505, %nyx_string* %5507)
  store %nyx_string* %5508, %nyx_string** %5500
  br label %merge998
else997:
  br label %merge998
merge998:
  %5509 = getelementptr [1 x i8], [1 x i8]* @.str681, i32 0, i32 0
  %5510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %5509, i64 0)
  %5511 = alloca %nyx_string*
  store %nyx_string* %5510, %nyx_string** %5511
  %5512 = load i1, i1* %release.ptr
  br i1 %5512, label %then999, label %else1000
then999:
  %5513 = getelementptr [4 x i8], [4 x i8]* @.str682, i32 0, i32 0
  %5514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %5513, i64 3)
  store %nyx_string* %5514, %nyx_string** %5511
  br label %merge1001
else1000:
  br label %merge1001
merge1001:
  %5515 = getelementptr [1 x i8], [1 x i8]* @.str683, i32 0, i32 0
  %5516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %5515, i64 0)
  %5517 = alloca %nyx_string*
  store %nyx_string* %5516, %nyx_string** %5517
  %5518 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %5519 = load i1, i1* %5518
  br i1 %5519, label %then1002, label %else1003
then1002:
  %5520 = getelementptr [13 x i8], [13 x i8]* @.str684, i32 0, i32 0
  %5521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %5520, i64 12)
  store %nyx_string* %5521, %nyx_string** %5517
  br label %merge1004
else1003:
  br label %merge1004
merge1004:
  %5522 = getelementptr [20 x i8], [20 x i8]* @.str685, i32 0, i32 0
  %5523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %5522, i64 19)
  %5524 = call %nyx_string* @pila_compilador_sh()
  %5525 = call %nyx_string* @nyx_string_concat(%nyx_string* %5523, %nyx_string* %5524)
  %5526 = call %nyx_string* @pila_compilador_pista_sh()
  %5527 = call %nyx_string* @nyx_string_concat(%nyx_string* %5525, %nyx_string* %5526)
  %5528 = alloca %nyx_string*
  store %nyx_string* %5527, %nyx_string** %5528
  %5529 = load %nyx_string*, %nyx_string** %5528
  %5530 = getelementptr [86 x i8], [86 x i8]* @.str686, i32 0, i32 0
  %5531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %5530, i64 85)
  %5532 = call %nyx_string* @nyx_string_concat(%nyx_string* %5529, %nyx_string* %5531)
  store %nyx_string* %5532, %nyx_string** %5528
  %5533 = load %nyx_string*, %nyx_string** %5528
  %5534 = getelementptr [5 x i8], [5 x i8]* @.str687, i32 0, i32 0
  %5535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %5534, i64 4)
  %5536 = call %nyx_string* @nyx_string_concat(%nyx_string* %5533, %nyx_string* %5535)
  %5537 = load %nyx_string*, %nyx_string** %5450
  %5538 = call %nyx_string* @nyx_string_concat(%nyx_string* %5536, %nyx_string* %5537)
  %5539 = getelementptr [3 x i8], [3 x i8]* @.str688, i32 0, i32 0
  %5540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %5539, i64 2)
  %5541 = call %nyx_string* @nyx_string_concat(%nyx_string* %5538, %nyx_string* %5540)
  store %nyx_string* %5541, %nyx_string** %5528
  %5542 = load %nyx_string*, %nyx_string** %5528
  %5543 = getelementptr [51 x i8], [51 x i8]* @.str689, i32 0, i32 0
  %5544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %5543, i64 50)
  %5545 = call %nyx_string* @nyx_string_concat(%nyx_string* %5542, %nyx_string* %5544)
  %5546 = load %nyx_string*, %nyx_string** %5450
  %5547 = call %nyx_string* @nyx_string_concat(%nyx_string* %5545, %nyx_string* %5546)
  %5548 = getelementptr [35 x i8], [35 x i8]* @.str690, i32 0, i32 0
  %5549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %5548, i64 34)
  %5550 = call %nyx_string* @nyx_string_concat(%nyx_string* %5547, %nyx_string* %5549)
  store %nyx_string* %5550, %nyx_string** %5528
  %5551 = load %nyx_string*, %nyx_string** %5528
  %5552 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %5553 = load %nyx_string*, %nyx_string** %5450
  %5554 = load %nyx_string*, %nyx_string** %5500
  %5555 = load %nyx_string*, %nyx_string** %5511
  %5556 = load %nyx_string*, %nyx_string** %5517
  %5557 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %5552, %nyx_string* %5553, %nyx_string* %5554, %nyx_string* %5555, %nyx_string* %5556)
  %5558 = call %nyx_string* @nyx_string_concat(%nyx_string* %5551, %nyx_string* %5557)
  store %nyx_string* %5558, %nyx_string** %5528
  %5559 = load %nyx_string*, %nyx_string** %5528
  %5560 = getelementptr [29 x i8], [29 x i8]* @.str691, i32 0, i32 0
  %5561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %5560, i64 28)
  %5562 = call %nyx_string* @nyx_string_concat(%nyx_string* %5559, %nyx_string* %5561)
  store %nyx_string* %5562, %nyx_string** %5528
  %5563 = getelementptr [15 x i8], [15 x i8]* @.str692, i32 0, i32 0
  %5564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %5563, i64 14)
  %5565 = call i64 @nyx_getpid()
  %5566 = call %nyx_string* @nyx_string_from_int(i64 %5565)
  %5567 = call %nyx_string* @nyx_string_concat(%nyx_string* %5564, %nyx_string* %5566)
  %5568 = getelementptr [4 x i8], [4 x i8]* @.str693, i32 0, i32 0
  %5569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %5568, i64 3)
  %5570 = call %nyx_string* @nyx_string_concat(%nyx_string* %5567, %nyx_string* %5569)
  %5571 = alloca %nyx_string*
  store %nyx_string* %5570, %nyx_string** %5571
  %5572 = load %nyx_string*, %nyx_string** %5571
  %5573 = load %nyx_string*, %nyx_string** %5528
  %5574 = call i8* @nyx_string_to_cstr(%nyx_string* %5572)
  %5575 = call i1 @nyx_write_file_safe(i8* %5574, %nyx_string* %5573)
  %5576 = getelementptr [7 x i8], [7 x i8]* @.str694, i32 0, i32 0
  %5577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %5576, i64 6)
  %5578 = load %nyx_string*, %nyx_string** %5571
  %5579 = call %nyx_string* @nyx_string_concat(%nyx_string* %5577, %nyx_string* %5578)
  %5580 = getelementptr [22 x i8], [22 x i8]* @.str695, i32 0, i32 0
  %5581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %5580, i64 21)
  %5582 = call %nyx_string* @nyx_string_concat(%nyx_string* %5579, %nyx_string* %5581)
  %5583 = load %nyx_string*, %nyx_string** %5571
  %5584 = call %nyx_string* @nyx_string_concat(%nyx_string* %5582, %nyx_string* %5583)
  %5585 = getelementptr [16 x i8], [16 x i8]* @.str696, i32 0, i32 0
  %5586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %5585, i64 15)
  %5587 = call %nyx_string* @nyx_string_concat(%nyx_string* %5584, %nyx_string* %5586)
  %5588 = call i8* @nyx_string_to_cstr(%nyx_string* %5587)
  %5589 = call i64 @nyx_exec_code(i8* %5588)
  %5590 = alloca i64
  store i64 %5589, i64* %5590
  %5591 = load i64, i64* %5590
  %5592 = icmp eq i64 %5591, 0
  ret i1 %5592
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %5593 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %5594 = load %nyx_string*, %nyx_string** %5593
  %5595 = alloca %nyx_string*
  store %nyx_string* %5594, %nyx_string** %5595
  %5596 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %5597 = getelementptr [1 x i8], [1 x i8]* @.str697, i32 0, i32 0
  %5598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %5597, i64 0)
  %5599 = call i1 @nyx_string_equals(%nyx_string* %5596, %nyx_string* %5598)
  %5600 = xor i1 %5599, true
  br i1 %5600, label %then1005, label %else1006
then1005:
  %5601 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %5601, %nyx_string** %5595
  br label %merge1007
else1006:
  br label %merge1007
merge1007:
  %5602 = getelementptr [1 x i8], [1 x i8]* @.str698, i32 0, i32 0
  %5603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %5602, i64 0)
  %5604 = alloca %nyx_string*
  store %nyx_string* %5603, %nyx_string** %5604
  %5605 = load %nyx_string*, %nyx_string** %5595
  %5606 = getelementptr [1 x i8], [1 x i8]* @.str699, i32 0, i32 0
  %5607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %5606, i64 0)
  %5608 = call i1 @nyx_string_equals(%nyx_string* %5605, %nyx_string* %5607)
  %5609 = xor i1 %5608, true
  br i1 %5609, label %then1008, label %else1009
then1008:
  %5610 = getelementptr [3 x i8], [3 x i8]* @.str700, i32 0, i32 0
  %5611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %5610, i64 2)
  %5612 = load %nyx_string*, %nyx_string** %5595
  %5613 = call %nyx_string* @nyx_string_concat(%nyx_string* %5611, %nyx_string* %5612)
  %5614 = getelementptr [2 x i8], [2 x i8]* @.str701, i32 0, i32 0
  %5615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %5614, i64 1)
  %5616 = call %nyx_string* @nyx_string_concat(%nyx_string* %5613, %nyx_string* %5615)
  store %nyx_string* %5616, %nyx_string** %5604
  br label %merge1010
else1009:
  br label %merge1010
merge1010:
  %5617 = getelementptr [13 x i8], [13 x i8]* @.str702, i32 0, i32 0
  %5618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %5617, i64 12)
  %5619 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %5620 = load %nyx_string*, %nyx_string** %5619
  %5621 = call %nyx_string* @nyx_string_concat(%nyx_string* %5618, %nyx_string* %5620)
  %5622 = getelementptr [3 x i8], [3 x i8]* @.str703, i32 0, i32 0
  %5623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %5622, i64 2)
  %5624 = call %nyx_string* @nyx_string_concat(%nyx_string* %5621, %nyx_string* %5623)
  %5625 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %5626 = load %nyx_string*, %nyx_string** %5625
  %5627 = call %nyx_string* @nyx_string_concat(%nyx_string* %5624, %nyx_string* %5626)
  %5628 = load %nyx_string*, %nyx_string** %5604
  %5629 = call %nyx_string* @nyx_string_concat(%nyx_string* %5627, %nyx_string* %5628)
  %5630 = call i8* @nyx_string_to_cstr(%nyx_string* %5629)
  call void @nyx_print_string(i8* %5630)
  %5631 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %5632 = call i1 @resolve_deps(%ProjectConfig %5631)
  %5633 = alloca i1
  store i1 %5632, i1* %5633
  %5634 = load i1, i1* %5633
  %5635 = icmp eq i1 %5634, 0
  br i1 %5635, label %then1011, label %else1012
then1011:
  ret i1 0
else1012:
  br label %merge1013
merge1013:
  %5636 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5637 = load %nyx_string*, %nyx_string** %5636
  %5638 = call i8* @nyx_string_to_cstr(%nyx_string* %5637)
  %5639 = call i1 @nyx_file_exists(i8* %5638)
  %5640 = xor i1 %5639, true
  br i1 %5640, label %then1014, label %else1015
then1014:
  %5641 = getelementptr [29 x i8], [29 x i8]* @.str704, i32 0, i32 0
  %5642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %5641, i64 28)
  %5643 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5644 = load %nyx_string*, %nyx_string** %5643
  %5645 = call %nyx_string* @nyx_string_concat(%nyx_string* %5642, %nyx_string* %5644)
  %5646 = call i8* @nyx_string_to_cstr(%nyx_string* %5645)
  call void @nyx_print_string(i8* %5646)
  ret i1 0
else1015:
  br label %merge1016
merge1016:
  %5647 = getelementptr [1 x i8], [1 x i8]* @.str705, i32 0, i32 0
  %5648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %5647, i64 0)
  %5649 = alloca %nyx_string*
  store %nyx_string* %5648, %nyx_string** %5649
  %5650 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %5651 = load i1, i1* %5650
  br i1 %5651, label %then1017, label %else1018
then1017:
  %5652 = getelementptr [13 x i8], [13 x i8]* @.str706, i32 0, i32 0
  %5653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %5652, i64 12)
  store %nyx_string* %5653, %nyx_string** %5649
  br label %merge1019
else1018:
  br label %merge1019
merge1019:
  %5654 = getelementptr [14 x i8], [14 x i8]* @.str707, i32 0, i32 0
  %5655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %5654, i64 13)
  %5656 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5657 = load %nyx_string*, %nyx_string** %5656
  %5658 = call %nyx_string* @nyx_string_concat(%nyx_string* %5655, %nyx_string* %5657)
  %5659 = call i8* @nyx_string_to_cstr(%nyx_string* %5658)
  call void @nyx_print_string(i8* %5659)
  %5660 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %5661 = load %nyx_string*, %nyx_string** %5660
  %5662 = alloca %nyx_string*
  store %nyx_string* %5661, %nyx_string** %5662
  %5663 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %5664 = load %nyx_string*, %nyx_string** %5663
  %5665 = getelementptr [1 x i8], [1 x i8]* @.str708, i32 0, i32 0
  %5666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %5665, i64 0)
  %5667 = call i1 @nyx_string_equals(%nyx_string* %5664, %nyx_string* %5666)
  %5668 = xor i1 %5667, true
  br i1 %5668, label %then1020, label %else1021
then1020:
  %5669 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %5670 = load %nyx_string*, %nyx_string** %5669
  store %nyx_string* %5670, %nyx_string** %5662
  br label %merge1022
else1021:
  br label %merge1022
merge1022:
  %5671 = load %nyx_string*, %nyx_string** %5662
  %5672 = alloca %nyx_string*
  store %nyx_string* %5671, %nyx_string** %5672
  %5673 = getelementptr [1 x i8], [1 x i8]* @.str709, i32 0, i32 0
  %5674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %5673, i64 0)
  %5675 = alloca %nyx_string*
  store %nyx_string* %5674, %nyx_string** %5675
  %5676 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %5677 = load %nyx_string*, %nyx_string** %5676
  %5678 = getelementptr [1 x i8], [1 x i8]* @.str710, i32 0, i32 0
  %5679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %5678, i64 0)
  %5680 = call i1 @nyx_string_equals(%nyx_string* %5677, %nyx_string* %5679)
  %5681 = xor i1 %5680, true
  br i1 %5681, label %then1023, label %else1024
then1023:
  %5682 = getelementptr [8 x i8], [8 x i8]* @.str711, i32 0, i32 0
  %5683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %5682, i64 7)
  %5684 = load %nyx_string*, %nyx_string** %5662
  %5685 = call %nyx_string* @nyx_string_concat(%nyx_string* %5683, %nyx_string* %5684)
  store %nyx_string* %5685, %nyx_string** %5672
  %5686 = getelementptr [29 x i8], [29 x i8]* @.str712, i32 0, i32 0
  %5687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %5686, i64 28)
  store %nyx_string* %5687, %nyx_string** %5675
  br label %merge1025
else1024:
  br label %merge1025
merge1025:
  %5688 = getelementptr [1 x i8], [1 x i8]* @.str713, i32 0, i32 0
  %5689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %5688, i64 0)
  %5690 = alloca %nyx_string*
  store %nyx_string* %5689, %nyx_string** %5690
  %5691 = load i1, i1* %release.ptr
  br i1 %5691, label %then1026, label %else1027
then1026:
  %5692 = getelementptr [4 x i8], [4 x i8]* @.str714, i32 0, i32 0
  %5693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %5692, i64 3)
  store %nyx_string* %5693, %nyx_string** %5690
  br label %merge1028
else1027:
  br label %merge1028
merge1028:
  %5694 = getelementptr [9 x i8], [9 x i8]* @.str715, i32 0, i32 0
  %5695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %5694, i64 8)
  %5696 = call i8* @nyx_string_to_cstr(%nyx_string* %5695)
  %5697 = call %nyx_string* @nyx_getenv(i8* %5696)
  %5698 = alloca %nyx_string*
  store %nyx_string* %5697, %nyx_string** %5698
  %5699 = load %nyx_string*, %nyx_string** %5698
  %5700 = getelementptr [1 x i8], [1 x i8]* @.str716, i32 0, i32 0
  %5701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %5700, i64 0)
  %5702 = call i1 @nyx_string_equals(%nyx_string* %5699, %nyx_string* %5701)
  br i1 %5702, label %then1029, label %else1030
then1029:
  %5703 = getelementptr [5 x i8], [5 x i8]* @.str717, i32 0, i32 0
  %5704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %5703, i64 4)
  %5705 = call i8* @nyx_string_to_cstr(%nyx_string* %5704)
  %5706 = call %nyx_string* @nyx_getenv(i8* %5705)
  %5707 = alloca %nyx_string*
  store %nyx_string* %5706, %nyx_string** %5707
  %5708 = load %nyx_string*, %nyx_string** %5707
  %5709 = getelementptr [6 x i8], [6 x i8]* @.str718, i32 0, i32 0
  %5710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %5709, i64 5)
  %5711 = call %nyx_string* @nyx_string_concat(%nyx_string* %5708, %nyx_string* %5710)
  %5712 = alloca %nyx_string*
  store %nyx_string* %5711, %nyx_string** %5712
  %5713 = alloca i1
  store i1 false, i1* %5713
  %5714 = load %nyx_string*, %nyx_string** %5707
  %5715 = getelementptr [1 x i8], [1 x i8]* @.str719, i32 0, i32 0
  %5716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %5715, i64 0)
  %5717 = call i1 @nyx_string_equals(%nyx_string* %5714, %nyx_string* %5716)
  %5718 = xor i1 %5717, true
  br i1 %5718, label %sc_and_rhs1032, label %sc_and_end1033
sc_and_rhs1032:
  %5719 = load %nyx_string*, %nyx_string** %5712
  %5720 = getelementptr [19 x i8], [19 x i8]* @.str720, i32 0, i32 0
  %5721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %5720, i64 18)
  %5722 = call %nyx_string* @nyx_string_concat(%nyx_string* %5719, %nyx_string* %5721)
  %5723 = call i8* @nyx_string_to_cstr(%nyx_string* %5722)
  %5724 = call i1 @nyx_file_exists(i8* %5723)
  store i1 %5724, i1* %5713
  br label %sc_and_end1033
sc_and_end1033:
  %5725 = load i1, i1* %5713
  br i1 %5725, label %then1034, label %else1035
then1034:
  %5726 = load %nyx_string*, %nyx_string** %5712
  store %nyx_string* %5726, %nyx_string** %5698
  br label %merge1036
else1035:
  br label %merge1036
merge1036:
  br label %merge1031
else1030:
  br label %merge1031
merge1031:
  %5727 = load %nyx_string*, %nyx_string** %5698
  %5728 = getelementptr [1 x i8], [1 x i8]* @.str721, i32 0, i32 0
  %5729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %5728, i64 0)
  %5730 = call i1 @nyx_string_equals(%nyx_string* %5727, %nyx_string* %5729)
  br i1 %5730, label %then1037, label %else1038
then1037:
  %5731 = getelementptr [14 x i8], [14 x i8]* @.str722, i32 0, i32 0
  %5732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %5731, i64 13)
  %5733 = call i8* @nyx_string_to_cstr(%nyx_string* %5732)
  %5734 = call i1 @nyx_file_exists(i8* %5733)
  br i1 %5734, label %then1040, label %else1041
then1040:
  %5735 = getelementptr [2 x i8], [2 x i8]* @.str723, i32 0, i32 0
  %5736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %5735, i64 1)
  store %nyx_string* %5736, %nyx_string** %5698
  br label %merge1042
else1041:
  br label %merge1042
merge1042:
  br label %merge1039
else1038:
  br label %merge1039
merge1039:
  %5737 = load %nyx_string*, %nyx_string** %5698
  %5738 = getelementptr [1 x i8], [1 x i8]* @.str724, i32 0, i32 0
  %5739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %5738, i64 0)
  %5740 = call i1 @nyx_string_equals(%nyx_string* %5737, %nyx_string* %5739)
  br i1 %5740, label %then1043, label %else1044
then1043:
  %5741 = getelementptr [56 x i8], [56 x i8]* @.str725, i32 0, i32 0
  %5742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %5741, i64 55)
  %5743 = call i8* @nyx_string_to_cstr(%nyx_string* %5742)
  call void @nyx_print_string(i8* %5743)
  ret i1 0
else1044:
  br label %merge1045
merge1045:
  %5744 = load %nyx_string*, %nyx_string** %5698
  %5745 = getelementptr [15 x i8], [15 x i8]* @.str726, i32 0, i32 0
  %5746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %5745, i64 14)
  %5747 = call %nyx_string* @nyx_string_concat(%nyx_string* %5744, %nyx_string* %5746)
  %5748 = alloca %nyx_string*
  store %nyx_string* %5747, %nyx_string** %5748
  %5749 = load %nyx_string*, %nyx_string** %5748
  %5750 = call i8* @nyx_string_to_cstr(%nyx_string* %5749)
  %5751 = call i1 @nyx_file_exists(i8* %5750)
  %5752 = xor i1 %5751, true
  br i1 %5752, label %then1046, label %else1047
then1046:
  %5753 = load %nyx_string*, %nyx_string** %5698
  %5754 = getelementptr [9 x i8], [9 x i8]* @.str727, i32 0, i32 0
  %5755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %5754, i64 8)
  %5756 = call %nyx_string* @nyx_string_concat(%nyx_string* %5753, %nyx_string* %5755)
  store %nyx_string* %5756, %nyx_string** %5748
  br label %merge1048
else1047:
  br label %merge1048
merge1048:
  %5757 = load %nyx_string*, %nyx_string** %5698
  %5758 = getelementptr [9 x i8], [9 x i8]* @.str728, i32 0, i32 0
  %5759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %5758, i64 8)
  %5760 = call %nyx_string* @nyx_string_concat(%nyx_string* %5757, %nyx_string* %5759)
  %5761 = alloca %nyx_string*
  store %nyx_string* %5760, %nyx_string** %5761
  %5762 = getelementptr [50 x i8], [50 x i8]* @.str729, i32 0, i32 0
  %5763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %5762, i64 49)
  %5764 = getelementptr [77 x i8], [77 x i8]* @.str730, i32 0, i32 0
  %5765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %5764, i64 76)
  %5766 = call %nyx_string* @nyx_string_concat(%nyx_string* %5763, %nyx_string* %5765)
  %5767 = getelementptr [89 x i8], [89 x i8]* @.str731, i32 0, i32 0
  %5768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %5767, i64 88)
  %5769 = call %nyx_string* @nyx_string_concat(%nyx_string* %5766, %nyx_string* %5768)
  %5770 = getelementptr [83 x i8], [83 x i8]* @.str732, i32 0, i32 0
  %5771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %5770, i64 82)
  %5772 = call %nyx_string* @nyx_string_concat(%nyx_string* %5769, %nyx_string* %5771)
  %5773 = getelementptr [65 x i8], [65 x i8]* @.str733, i32 0, i32 0
  %5774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %5773, i64 64)
  %5775 = call %nyx_string* @nyx_string_concat(%nyx_string* %5772, %nyx_string* %5774)
  %5776 = alloca %nyx_string*
  store %nyx_string* %5775, %nyx_string** %5776
  %5777 = getelementptr [15 x i8], [15 x i8]* @.str734, i32 0, i32 0
  %5778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %5777, i64 14)
  %5779 = call i8* @nyx_string_to_cstr(%nyx_string* %5778)
  %5780 = call %nyx_string* @nyx_getenv(i8* %5779)
  %5781 = alloca %nyx_string*
  store %nyx_string* %5780, %nyx_string** %5781
  %5782 = call %nyx_string* @rt_cache_sh()
  %5783 = getelementptr [8 x i8], [8 x i8]* @.str735, i32 0, i32 0
  %5784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %5783, i64 7)
  %5785 = call %nyx_string* @nyx_string_concat(%nyx_string* %5782, %nyx_string* %5784)
  %5786 = load %nyx_string*, %nyx_string** %5776
  %5787 = call %nyx_string* @nyx_string_concat(%nyx_string* %5785, %nyx_string* %5786)
  %5788 = getelementptr [3 x i8], [3 x i8]* @.str736, i32 0, i32 0
  %5789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %5788, i64 2)
  %5790 = call %nyx_string* @nyx_string_concat(%nyx_string* %5787, %nyx_string* %5789)
  %5791 = alloca %nyx_string*
  store %nyx_string* %5790, %nyx_string** %5791
  %5792 = load %nyx_string*, %nyx_string** %5791
  %5793 = getelementptr [17 x i8], [17 x i8]* @.str737, i32 0, i32 0
  %5794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %5793, i64 16)
  %5795 = call %nyx_string* @nyx_string_concat(%nyx_string* %5792, %nyx_string* %5794)
  %5796 = load %nyx_string*, %nyx_string** %5690
  %5797 = call %nyx_string* @nyx_string_concat(%nyx_string* %5795, %nyx_string* %5796)
  %5798 = getelementptr [3 x i8], [3 x i8]* @.str738, i32 0, i32 0
  %5799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %5798, i64 2)
  %5800 = call %nyx_string* @nyx_string_concat(%nyx_string* %5797, %nyx_string* %5799)
  %5801 = load %nyx_string*, %nyx_string** %5776
  %5802 = call %nyx_string* @nyx_string_concat(%nyx_string* %5800, %nyx_string* %5801)
  %5803 = getelementptr [31 x i8], [31 x i8]* @.str739, i32 0, i32 0
  %5804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %5803, i64 30)
  %5805 = call %nyx_string* @nyx_string_concat(%nyx_string* %5802, %nyx_string* %5804)
  store %nyx_string* %5805, %nyx_string** %5791
  %5806 = alloca i1
  store i1 false, i1* %5806
  %5807 = load %nyx_string*, %nyx_string** %5781
  %5808 = getelementptr [1 x i8], [1 x i8]* @.str740, i32 0, i32 0
  %5809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %5808, i64 0)
  %5810 = call i1 @nyx_string_equals(%nyx_string* %5807, %nyx_string* %5809)
  %5811 = xor i1 %5810, true
  br i1 %5811, label %sc_and_rhs1049, label %sc_and_end1050
sc_and_rhs1049:
  %5812 = load %nyx_string*, %nyx_string** %5781
  %5813 = call i8* @nyx_string_to_cstr(%nyx_string* %5812)
  %5814 = call i1 @nyx_file_exists(i8* %5813)
  store i1 %5814, i1* %5806
  br label %sc_and_end1050
sc_and_end1050:
  %5815 = load i1, i1* %5806
  br i1 %5815, label %then1051, label %else1052
then1051:
  %5816 = load %nyx_string*, %nyx_string** %5781
  %5817 = getelementptr [2 x i8], [2 x i8]* @.str741, i32 0, i32 0
  %5818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %5817, i64 1)
  %5819 = call i1 @nyx_string_starts_with(%nyx_string* %5816, %nyx_string* %5818)
  %5820 = xor i1 %5819, true
  br i1 %5820, label %then1054, label %else1055
then1054:
  %5821 = call %nyx_string* @nyx_getcwd()
  %5822 = getelementptr [2 x i8], [2 x i8]* @.str742, i32 0, i32 0
  %5823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %5822, i64 1)
  %5824 = call %nyx_string* @nyx_string_concat(%nyx_string* %5821, %nyx_string* %5823)
  %5825 = load %nyx_string*, %nyx_string** %5781
  %5826 = call %nyx_string* @nyx_string_concat(%nyx_string* %5824, %nyx_string* %5825)
  store %nyx_string* %5826, %nyx_string** %5781
  br label %merge1056
else1055:
  br label %merge1056
merge1056:
  %5827 = getelementptr [9 x i8], [9 x i8]* @.str743, i32 0, i32 0
  %5828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %5827, i64 8)
  %5829 = load %nyx_string*, %nyx_string** %5781
  %5830 = call %nyx_string* @nyx_string_concat(%nyx_string* %5828, %nyx_string* %5829)
  %5831 = getelementptr [4 x i8], [4 x i8]* @.str744, i32 0, i32 0
  %5832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %5831, i64 3)
  %5833 = call %nyx_string* @nyx_string_concat(%nyx_string* %5830, %nyx_string* %5832)
  store %nyx_string* %5833, %nyx_string** %5791
  br label %merge1053
else1052:
  br label %merge1053
merge1053:
  %5834 = getelementptr [3 x i8], [3 x i8]* @.str745, i32 0, i32 0
  %5835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %5834, i64 2)
  %5836 = getelementptr [13 x i8], [13 x i8]* @.str746, i32 0, i32 0
  %5837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %5836, i64 12)
  %5838 = call %nyx_string* @nyx_string_concat(%nyx_string* %5835, %nyx_string* %5837)
  store %nyx_string* %5838, %nyx_string** %5776
  %5839 = getelementptr [20 x i8], [20 x i8]* @.str747, i32 0, i32 0
  %5840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %5839, i64 19)
  %5841 = call %nyx_string* @pila_compilador_sh()
  %5842 = call %nyx_string* @nyx_string_concat(%nyx_string* %5840, %nyx_string* %5841)
  %5843 = call %nyx_string* @pila_compilador_pista_sh()
  %5844 = call %nyx_string* @nyx_string_concat(%nyx_string* %5842, %nyx_string* %5843)
  %5845 = alloca %nyx_string*
  store %nyx_string* %5844, %nyx_string** %5845
  %5846 = getelementptr [1 x i8], [1 x i8]* @.str748, i32 0, i32 0
  %5847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %5846, i64 0)
  %5848 = alloca %nyx_string*
  store %nyx_string* %5847, %nyx_string** %5848
  %5849 = getelementptr [1 x i8], [1 x i8]* @.str749, i32 0, i32 0
  %5850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %5849, i64 0)
  %5851 = alloca %nyx_string*
  store %nyx_string* %5850, %nyx_string** %5851
  %5852 = alloca i1
  store i1 false, i1* %5852
  %5853 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5854 = load { i64, i8* }*, { i64, i8* }** %5853
  %5855 = call i64 @nyx_array_length({ i64, i8* }* %5854)
  %5856 = icmp sgt i64 %5855, 0
  br i1 %5856, label %sc_and_rhs1057, label %sc_and_end1058
sc_and_rhs1057:
  %5857 = load %nyx_string*, %nyx_string** %5595
  %5858 = getelementptr [12 x i8], [12 x i8]* @.str750, i32 0, i32 0
  %5859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %5858, i64 11)
  %5860 = call i1 @nyx_string_equals(%nyx_string* %5857, %nyx_string* %5859)
  %5861 = xor i1 %5860, true
  store i1 %5861, i1* %5852
  br label %sc_and_end1058
sc_and_end1058:
  %5862 = load i1, i1* %5852
  br i1 %5862, label %then1059, label %else1060
then1059:
  %5863 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %5864 = load %nyx_string*, %nyx_string** %5698
  %5865 = load %nyx_string*, %nyx_string** %5748
  %5866 = load %nyx_string*, %nyx_string** %5690
  %5867 = load %nyx_string*, %nyx_string** %5649
  %5868 = call %nyx_string* @lib_objetos_sh(%ProjectConfig %5863, %nyx_string* %5864, %nyx_string* %5865, %nyx_string* %5866, %nyx_string* %5867)
  store %nyx_string* %5868, %nyx_string** %5848
  %5869 = getelementptr [18 x i8], [18 x i8]* @.str751, i32 0, i32 0
  %5870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %5869, i64 17)
  %5871 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5872 = load { i64, i8* }*, { i64, i8* }** %5871
  %5873 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 11
  %5874 = load { i64, i8* }*, { i64, i8* }** %5873
  %5875 = getelementptr [2 x i8], [2 x i8]* @.str752, i32 0, i32 0
  %5876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %5875, i64 1)
  %5877 = call %nyx_string* @nyx_string_join({ i64, i8* }* %5874, %nyx_string* %5876)
  %5878 = call %nyx_string* @nyx_string_concat(%nyx_string* %5870, %nyx_string* %5877)
  %5879 = getelementptr [3 x i8], [3 x i8]* @.str753, i32 0, i32 0
  %5880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %5879, i64 2)
  %5881 = call %nyx_string* @nyx_string_concat(%nyx_string* %5878, %nyx_string* %5880)
  store %nyx_string* %5881, %nyx_string** %5851
  br label %merge1061
else1060:
  br label %merge1061
merge1061:
  %5882 = load %nyx_string*, %nyx_string** %5791
  %5883 = load %nyx_string*, %nyx_string** %5848
  %5884 = call %nyx_string* @nyx_string_concat(%nyx_string* %5882, %nyx_string* %5883)
  store %nyx_string* %5884, %nyx_string** %5848
  %5885 = getelementptr [13 x i8], [13 x i8]* @.str754, i32 0, i32 0
  %5886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %5885, i64 12)
  %5887 = load %nyx_string*, %nyx_string** %5649
  %5888 = call %nyx_string* @nyx_string_concat(%nyx_string* %5886, %nyx_string* %5887)
  %5889 = load %nyx_string*, %nyx_string** %5851
  %5890 = call %nyx_string* @nyx_string_concat(%nyx_string* %5888, %nyx_string* %5889)
  %5891 = alloca %nyx_string*
  store %nyx_string* %5890, %nyx_string** %5891
  %5892 = load %nyx_string*, %nyx_string** %5845
  %5893 = getelementptr [19 x i8], [19 x i8]* @.str755, i32 0, i32 0
  %5894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %5893, i64 18)
  %5895 = call %nyx_string* @nyx_string_concat(%nyx_string* %5892, %nyx_string* %5894)
  %5896 = getelementptr [5 x i8], [5 x i8]* @.str756, i32 0, i32 0
  %5897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %5896, i64 4)
  %5898 = call %nyx_string* @nyx_string_concat(%nyx_string* %5895, %nyx_string* %5897)
  %5899 = load %nyx_string*, %nyx_string** %5761
  %5900 = call %nyx_string* @nyx_string_concat(%nyx_string* %5898, %nyx_string* %5899)
  %5901 = getelementptr [3 x i8], [3 x i8]* @.str757, i32 0, i32 0
  %5902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %5901, i64 2)
  %5903 = call %nyx_string* @nyx_string_concat(%nyx_string* %5900, %nyx_string* %5902)
  %5904 = getelementptr [43 x i8], [43 x i8]* @.str758, i32 0, i32 0
  %5905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %5904, i64 42)
  %5906 = call %nyx_string* @nyx_string_concat(%nyx_string* %5903, %nyx_string* %5905)
  %5907 = getelementptr [37 x i8], [37 x i8]* @.str759, i32 0, i32 0
  %5908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %5907, i64 36)
  %5909 = call %nyx_string* @nyx_string_concat(%nyx_string* %5906, %nyx_string* %5908)
  %5910 = getelementptr [17 x i8], [17 x i8]* @.str760, i32 0, i32 0
  %5911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %5910, i64 16)
  %5912 = call %nyx_string* @nyx_string_concat(%nyx_string* %5909, %nyx_string* %5911)
  %5913 = getelementptr [38 x i8], [38 x i8]* @.str761, i32 0, i32 0
  %5914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %5913, i64 37)
  %5915 = call %nyx_string* @nyx_string_concat(%nyx_string* %5912, %nyx_string* %5914)
  %5916 = getelementptr [17 x i8], [17 x i8]* @.str762, i32 0, i32 0
  %5917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %5916, i64 16)
  %5918 = call %nyx_string* @nyx_string_concat(%nyx_string* %5915, %nyx_string* %5917)
  %5919 = getelementptr [15 x i8], [15 x i8]* @.str763, i32 0, i32 0
  %5920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %5919, i64 14)
  %5921 = call %nyx_string* @nyx_string_concat(%nyx_string* %5918, %nyx_string* %5920)
  %5922 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5923 = load %nyx_string*, %nyx_string** %5922
  %5924 = call %nyx_string* @nyx_string_concat(%nyx_string* %5921, %nyx_string* %5923)
  %5925 = getelementptr [12 x i8], [12 x i8]* @.str764, i32 0, i32 0
  %5926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %5925, i64 11)
  %5927 = call %nyx_string* @nyx_string_concat(%nyx_string* %5924, %nyx_string* %5926)
  %5928 = getelementptr [5 x i8], [5 x i8]* @.str765, i32 0, i32 0
  %5929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %5928, i64 4)
  %5930 = call %nyx_string* @nyx_string_concat(%nyx_string* %5927, %nyx_string* %5929)
  %5931 = load %nyx_string*, %nyx_string** %5698
  %5932 = call %nyx_string* @nyx_string_concat(%nyx_string* %5930, %nyx_string* %5931)
  %5933 = getelementptr [3 x i8], [3 x i8]* @.str766, i32 0, i32 0
  %5934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %5933, i64 2)
  %5935 = call %nyx_string* @nyx_string_concat(%nyx_string* %5932, %nyx_string* %5934)
  %5936 = getelementptr [51 x i8], [51 x i8]* @.str767, i32 0, i32 0
  %5937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %5936, i64 50)
  %5938 = call %nyx_string* @nyx_string_concat(%nyx_string* %5935, %nyx_string* %5937)
  %5939 = load %nyx_string*, %nyx_string** %5698
  %5940 = call %nyx_string* @nyx_string_concat(%nyx_string* %5938, %nyx_string* %5939)
  %5941 = getelementptr [35 x i8], [35 x i8]* @.str768, i32 0, i32 0
  %5942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %5941, i64 34)
  %5943 = call %nyx_string* @nyx_string_concat(%nyx_string* %5940, %nyx_string* %5942)
  %5944 = load %nyx_string*, %nyx_string** %5848
  %5945 = call %nyx_string* @nyx_string_concat(%nyx_string* %5943, %nyx_string* %5944)
  %5946 = load %nyx_string*, %nyx_string** %5891
  %5947 = call %nyx_string* @nyx_string_concat(%nyx_string* %5945, %nyx_string* %5946)
  %5948 = getelementptr [35 x i8], [35 x i8]* @.str769, i32 0, i32 0
  %5949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %5948, i64 34)
  %5950 = call %nyx_string* @nyx_string_concat(%nyx_string* %5947, %nyx_string* %5949)
  %5951 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5952 = load %nyx_string*, %nyx_string** %5951
  %5953 = call %nyx_string* @nyx_string_concat(%nyx_string* %5950, %nyx_string* %5952)
  %5954 = getelementptr [32 x i8], [32 x i8]* @.str770, i32 0, i32 0
  %5955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %5954, i64 31)
  %5956 = call %nyx_string* @nyx_string_concat(%nyx_string* %5953, %nyx_string* %5955)
  %5957 = load %nyx_string*, %nyx_string** %5748
  %5958 = call %nyx_string* @nyx_string_concat(%nyx_string* %5956, %nyx_string* %5957)
  %5959 = getelementptr [19 x i8], [19 x i8]* @.str771, i32 0, i32 0
  %5960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %5959, i64 18)
  %5961 = call %nyx_string* @nyx_string_concat(%nyx_string* %5958, %nyx_string* %5960)
  %5962 = getelementptr [93 x i8], [93 x i8]* @.str772, i32 0, i32 0
  %5963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %5962, i64 92)
  %5964 = call %nyx_string* @nyx_string_concat(%nyx_string* %5961, %nyx_string* %5963)
  %5965 = getelementptr [34 x i8], [34 x i8]* @.str773, i32 0, i32 0
  %5966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %5965, i64 33)
  %5967 = call %nyx_string* @nyx_string_concat(%nyx_string* %5964, %nyx_string* %5966)
  %5968 = load %nyx_string*, %nyx_string** %5675
  %5969 = call %nyx_string* @nyx_string_concat(%nyx_string* %5967, %nyx_string* %5968)
  %5970 = getelementptr [7 x i8], [7 x i8]* @.str774, i32 0, i32 0
  %5971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %5970, i64 6)
  %5972 = call %nyx_string* @nyx_string_concat(%nyx_string* %5969, %nyx_string* %5971)
  %5973 = load %nyx_string*, %nyx_string** %5690
  %5974 = call %nyx_string* @nyx_string_concat(%nyx_string* %5972, %nyx_string* %5973)
  %5975 = getelementptr [22 x i8], [22 x i8]* @.str775, i32 0, i32 0
  %5976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %5975, i64 21)
  %5977 = call %nyx_string* @nyx_string_concat(%nyx_string* %5974, %nyx_string* %5976)
  %5978 = load %nyx_string*, %nyx_string** %5776
  %5979 = call %nyx_string* @nyx_string_concat(%nyx_string* %5977, %nyx_string* %5978)
  %5980 = getelementptr [44 x i8], [44 x i8]* @.str776, i32 0, i32 0
  %5981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %5980, i64 43)
  %5982 = call %nyx_string* @nyx_string_concat(%nyx_string* %5979, %nyx_string* %5981)
  %5983 = getelementptr [15 x i8], [15 x i8]* @.str777, i32 0, i32 0
  %5984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %5983, i64 14)
  %5985 = call %nyx_string* @nyx_string_concat(%nyx_string* %5982, %nyx_string* %5984)
  %5986 = load %nyx_string*, %nyx_string** %5672
  %5987 = call %nyx_string* @nyx_string_concat(%nyx_string* %5985, %nyx_string* %5986)
  %5988 = getelementptr [13 x i8], [13 x i8]* @.str778, i32 0, i32 0
  %5989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %5988, i64 12)
  %5990 = call %nyx_string* @nyx_string_concat(%nyx_string* %5987, %nyx_string* %5989)
  %5991 = getelementptr [44 x i8], [44 x i8]* @.str779, i32 0, i32 0
  %5992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %5991, i64 43)
  %5993 = call %nyx_string* @nyx_string_concat(%nyx_string* %5990, %nyx_string* %5992)
  %5994 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %5995 = load %nyx_string*, %nyx_string** %5994
  %5996 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %5995)
  %5997 = call %nyx_string* @nyx_string_concat(%nyx_string* %5993, %nyx_string* %5996)
  %5998 = getelementptr [27 x i8], [27 x i8]* @.str780, i32 0, i32 0
  %5999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %5998, i64 26)
  %6000 = call %nyx_string* @nyx_string_concat(%nyx_string* %5997, %nyx_string* %5999)
  %6001 = getelementptr [18 x i8], [18 x i8]* @.str781, i32 0, i32 0
  %6002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %6001, i64 17)
  %6003 = call %nyx_string* @nyx_string_concat(%nyx_string* %6000, %nyx_string* %6002)
  %6004 = load %nyx_string*, %nyx_string** %5672
  %6005 = call %nyx_string* @nyx_string_concat(%nyx_string* %6003, %nyx_string* %6004)
  %6006 = getelementptr [3 x i8], [3 x i8]* @.str782, i32 0, i32 0
  %6007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %6006, i64 2)
  %6008 = call %nyx_string* @nyx_string_concat(%nyx_string* %6005, %nyx_string* %6007)
  %6009 = alloca %nyx_string*
  store %nyx_string* %6008, %nyx_string** %6009
  %6010 = alloca i1
  store i1 false, i1* %6010
  %6011 = load %nyx_string*, %nyx_string** %5595
  %6012 = getelementptr [1 x i8], [1 x i8]* @.str783, i32 0, i32 0
  %6013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %6012, i64 0)
  %6014 = call i1 @nyx_string_equals(%nyx_string* %6011, %nyx_string* %6013)
  %6015 = xor i1 %6014, true
  br i1 %6015, label %sc_and_rhs1062, label %sc_and_end1063
sc_and_rhs1062:
  %6016 = load %nyx_string*, %nyx_string** %5595
  %6017 = getelementptr [12 x i8], [12 x i8]* @.str784, i32 0, i32 0
  %6018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %6017, i64 11)
  %6019 = call i1 @nyx_string_equals(%nyx_string* %6016, %nyx_string* %6018)
  %6020 = xor i1 %6019, true
  store i1 %6020, i1* %6010
  br label %sc_and_end1063
sc_and_end1063:
  %6021 = load i1, i1* %6010
  br i1 %6021, label %then1064, label %else1065
then1064:
  %6022 = alloca i1
  store i1 false, i1* %6022
  %6023 = load %nyx_string*, %nyx_string** %5595
  %6024 = getelementptr [23 x i8], [23 x i8]* @.str785, i32 0, i32 0
  %6025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %6024, i64 22)
  %6026 = call i1 @nyx_string_equals(%nyx_string* %6023, %nyx_string* %6025)
  %6027 = xor i1 %6026, true
  br i1 %6027, label %sc_and_rhs1067, label %sc_and_end1068
sc_and_rhs1067:
  %6028 = load %nyx_string*, %nyx_string** %5595
  %6029 = getelementptr [24 x i8], [24 x i8]* @.str786, i32 0, i32 0
  %6030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %6029, i64 23)
  %6031 = call i1 @nyx_string_equals(%nyx_string* %6028, %nyx_string* %6030)
  %6032 = xor i1 %6031, true
  store i1 %6032, i1* %6022
  br label %sc_and_end1068
sc_and_end1068:
  %6033 = load i1, i1* %6022
  br i1 %6033, label %then1069, label %else1070
then1069:
  %6034 = getelementptr [28 x i8], [28 x i8]* @.str787, i32 0, i32 0
  %6035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %6034, i64 27)
  %6036 = load %nyx_string*, %nyx_string** %5595
  %6037 = call %nyx_string* @nyx_string_concat(%nyx_string* %6035, %nyx_string* %6036)
  %6038 = call i8* @nyx_string_to_cstr(%nyx_string* %6037)
  call void @nyx_print_string(i8* %6038)
  %6039 = getelementptr [83 x i8], [83 x i8]* @.str788, i32 0, i32 0
  %6040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %6039, i64 82)
  %6041 = call i8* @nyx_string_to_cstr(%nyx_string* %6040)
  call void @nyx_print_string(i8* %6041)
  %6042 = getelementptr [52 x i8], [52 x i8]* @.str789, i32 0, i32 0
  %6043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %6042, i64 51)
  %6044 = call i8* @nyx_string_to_cstr(%nyx_string* %6043)
  call void @nyx_print_string(i8* %6044)
  ret i1 0
else1070:
  br label %merge1071
merge1071:
  br label %merge1066
else1065:
  br label %merge1066
merge1066:
  %6045 = load %nyx_string*, %nyx_string** %6009
  %6046 = alloca %nyx_string*
  store %nyx_string* %6045, %nyx_string** %6046
  %6047 = load %nyx_string*, %nyx_string** %5595
  %6048 = getelementptr [12 x i8], [12 x i8]* @.str790, i32 0, i32 0
  %6049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %6048, i64 11)
  %6050 = call i1 @nyx_string_equals(%nyx_string* %6047, %nyx_string* %6049)
  br i1 %6050, label %then1072, label %else1073
then1072:
  %6051 = getelementptr [20 x i8], [20 x i8]* @.str791, i32 0, i32 0
  %6052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %6051, i64 19)
  %6053 = getelementptr [19 x i8], [19 x i8]* @.str792, i32 0, i32 0
  %6054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %6053, i64 18)
  %6055 = call %nyx_string* @nyx_string_concat(%nyx_string* %6052, %nyx_string* %6054)
  %6056 = getelementptr [5 x i8], [5 x i8]* @.str793, i32 0, i32 0
  %6057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %6056, i64 4)
  %6058 = call %nyx_string* @nyx_string_concat(%nyx_string* %6055, %nyx_string* %6057)
  %6059 = load %nyx_string*, %nyx_string** %5761
  %6060 = call %nyx_string* @nyx_string_concat(%nyx_string* %6058, %nyx_string* %6059)
  %6061 = getelementptr [3 x i8], [3 x i8]* @.str794, i32 0, i32 0
  %6062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %6061, i64 2)
  %6063 = call %nyx_string* @nyx_string_concat(%nyx_string* %6060, %nyx_string* %6062)
  %6064 = getelementptr [11 x i8], [11 x i8]* @.str795, i32 0, i32 0
  %6065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %6064, i64 10)
  %6066 = call %nyx_string* @nyx_string_concat(%nyx_string* %6063, %nyx_string* %6065)
  %6067 = getelementptr [23 x i8], [23 x i8]* @.str796, i32 0, i32 0
  %6068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %6067, i64 22)
  %6069 = call %nyx_string* @nyx_string_concat(%nyx_string* %6066, %nyx_string* %6068)
  %6070 = getelementptr [43 x i8], [43 x i8]* @.str797, i32 0, i32 0
  %6071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %6070, i64 42)
  %6072 = call %nyx_string* @nyx_string_concat(%nyx_string* %6069, %nyx_string* %6071)
  %6073 = getelementptr [37 x i8], [37 x i8]* @.str798, i32 0, i32 0
  %6074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %6073, i64 36)
  %6075 = call %nyx_string* @nyx_string_concat(%nyx_string* %6072, %nyx_string* %6074)
  %6076 = getelementptr [17 x i8], [17 x i8]* @.str799, i32 0, i32 0
  %6077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %6076, i64 16)
  %6078 = call %nyx_string* @nyx_string_concat(%nyx_string* %6075, %nyx_string* %6077)
  %6079 = getelementptr [38 x i8], [38 x i8]* @.str800, i32 0, i32 0
  %6080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %6079, i64 37)
  %6081 = call %nyx_string* @nyx_string_concat(%nyx_string* %6078, %nyx_string* %6080)
  %6082 = getelementptr [17 x i8], [17 x i8]* @.str801, i32 0, i32 0
  %6083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %6082, i64 16)
  %6084 = call %nyx_string* @nyx_string_concat(%nyx_string* %6081, %nyx_string* %6083)
  %6085 = getelementptr [163 x i8], [163 x i8]* @.str802, i32 0, i32 0
  %6086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %6085, i64 162)
  %6087 = call %nyx_string* @nyx_string_concat(%nyx_string* %6084, %nyx_string* %6086)
  %6088 = getelementptr [15 x i8], [15 x i8]* @.str803, i32 0, i32 0
  %6089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %6088, i64 14)
  %6090 = call %nyx_string* @nyx_string_concat(%nyx_string* %6087, %nyx_string* %6089)
  %6091 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6092 = load %nyx_string*, %nyx_string** %6091
  %6093 = call %nyx_string* @nyx_string_concat(%nyx_string* %6090, %nyx_string* %6092)
  %6094 = getelementptr [12 x i8], [12 x i8]* @.str804, i32 0, i32 0
  %6095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %6094, i64 11)
  %6096 = call %nyx_string* @nyx_string_concat(%nyx_string* %6093, %nyx_string* %6095)
  %6097 = getelementptr [5 x i8], [5 x i8]* @.str805, i32 0, i32 0
  %6098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %6097, i64 4)
  %6099 = call %nyx_string* @nyx_string_concat(%nyx_string* %6096, %nyx_string* %6098)
  %6100 = load %nyx_string*, %nyx_string** %5698
  %6101 = call %nyx_string* @nyx_string_concat(%nyx_string* %6099, %nyx_string* %6100)
  %6102 = getelementptr [3 x i8], [3 x i8]* @.str806, i32 0, i32 0
  %6103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %6102, i64 2)
  %6104 = call %nyx_string* @nyx_string_concat(%nyx_string* %6101, %nyx_string* %6103)
  %6105 = getelementptr [70 x i8], [70 x i8]* @.str807, i32 0, i32 0
  %6106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %6105, i64 69)
  %6107 = call %nyx_string* @nyx_string_concat(%nyx_string* %6104, %nyx_string* %6106)
  %6108 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6109 = load %nyx_string*, %nyx_string** %6108
  %6110 = call %nyx_string* @nyx_string_concat(%nyx_string* %6107, %nyx_string* %6109)
  %6111 = getelementptr [32 x i8], [32 x i8]* @.str808, i32 0, i32 0
  %6112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %6111, i64 31)
  %6113 = call %nyx_string* @nyx_string_concat(%nyx_string* %6110, %nyx_string* %6112)
  %6114 = load %nyx_string*, %nyx_string** %5748
  %6115 = call %nyx_string* @nyx_string_concat(%nyx_string* %6113, %nyx_string* %6114)
  %6116 = getelementptr [17 x i8], [17 x i8]* @.str809, i32 0, i32 0
  %6117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %6116, i64 16)
  %6118 = call %nyx_string* @nyx_string_concat(%nyx_string* %6115, %nyx_string* %6117)
  %6119 = getelementptr [71 x i8], [71 x i8]* @.str810, i32 0, i32 0
  %6120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %6119, i64 70)
  %6121 = call %nyx_string* @nyx_string_concat(%nyx_string* %6118, %nyx_string* %6120)
  %6122 = getelementptr [24 x i8], [24 x i8]* @.str811, i32 0, i32 0
  %6123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %6122, i64 23)
  %6124 = call %nyx_string* @nyx_string_concat(%nyx_string* %6121, %nyx_string* %6123)
  %6125 = getelementptr [2 x i8], [2 x i8]* @.str812, i32 0, i32 0
  %6126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %6125, i64 1)
  %6127 = call %nyx_string* @nyx_string_concat(%nyx_string* %6124, %nyx_string* %6126)
  %6128 = getelementptr [76 x i8], [76 x i8]* @.str813, i32 0, i32 0
  %6129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %6128, i64 75)
  %6130 = call %nyx_string* @nyx_string_concat(%nyx_string* %6127, %nyx_string* %6129)
  %6131 = getelementptr [98 x i8], [98 x i8]* @.str814, i32 0, i32 0
  %6132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %6131, i64 97)
  %6133 = call %nyx_string* @nyx_string_concat(%nyx_string* %6130, %nyx_string* %6132)
  %6134 = getelementptr [41 x i8], [41 x i8]* @.str815, i32 0, i32 0
  %6135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %6134, i64 40)
  %6136 = call %nyx_string* @nyx_string_concat(%nyx_string* %6133, %nyx_string* %6135)
  %6137 = getelementptr [64 x i8], [64 x i8]* @.str816, i32 0, i32 0
  %6138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %6137, i64 63)
  %6139 = call %nyx_string* @nyx_string_concat(%nyx_string* %6136, %nyx_string* %6138)
  %6140 = getelementptr [56 x i8], [56 x i8]* @.str817, i32 0, i32 0
  %6141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %6140, i64 55)
  %6142 = call %nyx_string* @nyx_string_concat(%nyx_string* %6139, %nyx_string* %6141)
  %6143 = getelementptr [12 x i8], [12 x i8]* @.str818, i32 0, i32 0
  %6144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %6143, i64 11)
  %6145 = call %nyx_string* @nyx_string_concat(%nyx_string* %6142, %nyx_string* %6144)
  %6146 = getelementptr [34 x i8], [34 x i8]* @.str819, i32 0, i32 0
  %6147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %6146, i64 33)
  %6148 = call %nyx_string* @nyx_string_concat(%nyx_string* %6145, %nyx_string* %6147)
  %6149 = load %nyx_string*, %nyx_string** %5662
  %6150 = call %nyx_string* @nyx_string_concat(%nyx_string* %6148, %nyx_string* %6149)
  %6151 = getelementptr [18 x i8], [18 x i8]* @.str820, i32 0, i32 0
  %6152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %6151, i64 17)
  %6153 = call %nyx_string* @nyx_string_concat(%nyx_string* %6150, %nyx_string* %6152)
  %6154 = getelementptr [49 x i8], [49 x i8]* @.str821, i32 0, i32 0
  %6155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %6154, i64 48)
  %6156 = call %nyx_string* @nyx_string_concat(%nyx_string* %6153, %nyx_string* %6155)
  %6157 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6158 = load %nyx_string*, %nyx_string** %6157
  %6159 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %6158)
  %6160 = call %nyx_string* @nyx_string_concat(%nyx_string* %6156, %nyx_string* %6159)
  %6161 = getelementptr [27 x i8], [27 x i8]* @.str822, i32 0, i32 0
  %6162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %6161, i64 26)
  %6163 = call %nyx_string* @nyx_string_concat(%nyx_string* %6160, %nyx_string* %6162)
  store %nyx_string* %6163, %nyx_string** %6046
  %6164 = load %nyx_string*, %nyx_string** %6046
  %6165 = getelementptr [95 x i8], [95 x i8]* @.str823, i32 0, i32 0
  %6166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %6165, i64 94)
  %6167 = call %nyx_string* @nyx_string_concat(%nyx_string* %6164, %nyx_string* %6166)
  %6168 = getelementptr [24 x i8], [24 x i8]* @.str824, i32 0, i32 0
  %6169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %6168, i64 23)
  %6170 = call %nyx_string* @nyx_string_concat(%nyx_string* %6167, %nyx_string* %6169)
  %6171 = getelementptr [10 x i8], [10 x i8]* @.str825, i32 0, i32 0
  %6172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %6171, i64 9)
  %6173 = call %nyx_string* @nyx_string_concat(%nyx_string* %6170, %nyx_string* %6172)
  %6174 = getelementptr [49 x i8], [49 x i8]* @.str826, i32 0, i32 0
  %6175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %6174, i64 48)
  %6176 = call %nyx_string* @nyx_string_concat(%nyx_string* %6173, %nyx_string* %6175)
  %6177 = getelementptr [207 x i8], [207 x i8]* @.str827, i32 0, i32 0
  %6178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %6177, i64 206)
  %6179 = call %nyx_string* @nyx_string_concat(%nyx_string* %6176, %nyx_string* %6178)
  %6180 = getelementptr [41 x i8], [41 x i8]* @.str828, i32 0, i32 0
  %6181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %6180, i64 40)
  %6182 = call %nyx_string* @nyx_string_concat(%nyx_string* %6179, %nyx_string* %6181)
  %6183 = load %nyx_string*, %nyx_string** %5662
  %6184 = call %nyx_string* @nyx_string_concat(%nyx_string* %6182, %nyx_string* %6183)
  %6185 = getelementptr [58 x i8], [58 x i8]* @.str829, i32 0, i32 0
  %6186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %6185, i64 57)
  %6187 = call %nyx_string* @nyx_string_concat(%nyx_string* %6184, %nyx_string* %6186)
  %6188 = getelementptr [34 x i8], [34 x i8]* @.str830, i32 0, i32 0
  %6189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %6188, i64 33)
  %6190 = call %nyx_string* @nyx_string_concat(%nyx_string* %6187, %nyx_string* %6189)
  %6191 = load %nyx_string*, %nyx_string** %5662
  %6192 = call %nyx_string* @nyx_string_concat(%nyx_string* %6190, %nyx_string* %6191)
  %6193 = getelementptr [18 x i8], [18 x i8]* @.str831, i32 0, i32 0
  %6194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %6193, i64 17)
  %6195 = call %nyx_string* @nyx_string_concat(%nyx_string* %6192, %nyx_string* %6194)
  %6196 = getelementptr [78 x i8], [78 x i8]* @.str832, i32 0, i32 0
  %6197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %6196, i64 77)
  %6198 = call %nyx_string* @nyx_string_concat(%nyx_string* %6195, %nyx_string* %6197)
  %6199 = getelementptr [4 x i8], [4 x i8]* @.str833, i32 0, i32 0
  %6200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %6199, i64 3)
  %6201 = call %nyx_string* @nyx_string_concat(%nyx_string* %6198, %nyx_string* %6200)
  %6202 = getelementptr [32 x i8], [32 x i8]* @.str834, i32 0, i32 0
  %6203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %6202, i64 31)
  %6204 = call %nyx_string* @nyx_string_concat(%nyx_string* %6201, %nyx_string* %6203)
  %6205 = load %nyx_string*, %nyx_string** %5662
  %6206 = call %nyx_string* @nyx_string_concat(%nyx_string* %6204, %nyx_string* %6205)
  %6207 = getelementptr [41 x i8], [41 x i8]* @.str835, i32 0, i32 0
  %6208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %6207, i64 40)
  %6209 = call %nyx_string* @nyx_string_concat(%nyx_string* %6206, %nyx_string* %6208)
  %6210 = load %nyx_string*, %nyx_string** %5662
  %6211 = call %nyx_string* @nyx_string_concat(%nyx_string* %6209, %nyx_string* %6210)
  %6212 = getelementptr [9 x i8], [9 x i8]* @.str836, i32 0, i32 0
  %6213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %6212, i64 8)
  %6214 = call %nyx_string* @nyx_string_concat(%nyx_string* %6211, %nyx_string* %6213)
  store %nyx_string* %6214, %nyx_string** %6046
  br label %merge1074
else1073:
  br label %merge1074
merge1074:
  %6215 = getelementptr [16 x i8], [16 x i8]* @.str837, i32 0, i32 0
  %6216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %6215, i64 15)
  %6217 = call i64 @nyx_getpid()
  %6218 = call %nyx_string* @nyx_string_from_int(i64 %6217)
  %6219 = call %nyx_string* @nyx_string_concat(%nyx_string* %6216, %nyx_string* %6218)
  %6220 = getelementptr [4 x i8], [4 x i8]* @.str838, i32 0, i32 0
  %6221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %6220, i64 3)
  %6222 = call %nyx_string* @nyx_string_concat(%nyx_string* %6219, %nyx_string* %6221)
  %6223 = alloca %nyx_string*
  store %nyx_string* %6222, %nyx_string** %6223
  %6224 = load %nyx_string*, %nyx_string** %6223
  %6225 = load %nyx_string*, %nyx_string** %6046
  %6226 = call i8* @nyx_string_to_cstr(%nyx_string* %6224)
  %6227 = call i1 @nyx_write_file_safe(i8* %6226, %nyx_string* %6225)
  %6228 = getelementptr [7 x i8], [7 x i8]* @.str839, i32 0, i32 0
  %6229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %6228, i64 6)
  %6230 = load %nyx_string*, %nyx_string** %6223
  %6231 = call %nyx_string* @nyx_string_concat(%nyx_string* %6229, %nyx_string* %6230)
  %6232 = getelementptr [22 x i8], [22 x i8]* @.str840, i32 0, i32 0
  %6233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %6232, i64 21)
  %6234 = call %nyx_string* @nyx_string_concat(%nyx_string* %6231, %nyx_string* %6233)
  %6235 = load %nyx_string*, %nyx_string** %6223
  %6236 = call %nyx_string* @nyx_string_concat(%nyx_string* %6234, %nyx_string* %6235)
  %6237 = getelementptr [16 x i8], [16 x i8]* @.str841, i32 0, i32 0
  %6238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %6237, i64 15)
  %6239 = call %nyx_string* @nyx_string_concat(%nyx_string* %6236, %nyx_string* %6238)
  %6240 = call i8* @nyx_string_to_cstr(%nyx_string* %6239)
  %6241 = call i64 @nyx_exec_code(i8* %6240)
  %6242 = alloca i64
  store i64 %6241, i64* %6242
  %6243 = load i64, i64* %6242
  %6244 = icmp eq i64 %6243, 0
  ret i1 %6244
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %6245 = getelementptr [10 x i8], [10 x i8]* @.str842, i32 0, i32 0
  %6246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %6245, i64 9)
  %6247 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %6248 = load %nyx_string*, %nyx_string** %6247
  %6249 = call %nyx_string* @nyx_string_concat(%nyx_string* %6246, %nyx_string* %6248)
  %6250 = call i8* @nyx_string_to_cstr(%nyx_string* %6249)
  call void @nyx_print_string(i8* %6250)
  %6251 = getelementptr [10 x i8], [10 x i8]* @.str843, i32 0, i32 0
  %6252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %6251, i64 9)
  %6253 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %6254 = load %nyx_string*, %nyx_string** %6253
  %6255 = call %nyx_string* @nyx_string_concat(%nyx_string* %6252, %nyx_string* %6254)
  %6256 = call i8* @nyx_string_to_cstr(%nyx_string* %6255)
  call void @nyx_print_string(i8* %6256)
  %6257 = getelementptr [10 x i8], [10 x i8]* @.str844, i32 0, i32 0
  %6258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %6257, i64 9)
  %6259 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6260 = load %nyx_string*, %nyx_string** %6259
  %6261 = call %nyx_string* @nyx_string_concat(%nyx_string* %6258, %nyx_string* %6260)
  %6262 = call i8* @nyx_string_to_cstr(%nyx_string* %6261)
  call void @nyx_print_string(i8* %6262)
  %6263 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %6264 = load %nyx_string*, %nyx_string** %6263
  %6265 = getelementptr [1 x i8], [1 x i8]* @.str845, i32 0, i32 0
  %6266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %6265, i64 0)
  %6267 = call i1 @nyx_string_equals(%nyx_string* %6264, %nyx_string* %6266)
  %6268 = xor i1 %6267, true
  br i1 %6268, label %then1075, label %else1076
then1075:
  %6269 = getelementptr [10 x i8], [10 x i8]* @.str846, i32 0, i32 0
  %6270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %6269, i64 9)
  %6271 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %6272 = load %nyx_string*, %nyx_string** %6271
  %6273 = call %nyx_string* @nyx_string_concat(%nyx_string* %6270, %nyx_string* %6272)
  %6274 = call i8* @nyx_string_to_cstr(%nyx_string* %6273)
  call void @nyx_print_string(i8* %6274)
  br label %merge1077
else1076:
  br label %merge1077
merge1077:
  %6275 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %6276 = load %nyx_string*, %nyx_string** %6275
  %6277 = getelementptr [1 x i8], [1 x i8]* @.str847, i32 0, i32 0
  %6278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %6277, i64 0)
  %6279 = call i1 @nyx_string_equals(%nyx_string* %6276, %nyx_string* %6278)
  %6280 = xor i1 %6279, true
  br i1 %6280, label %then1078, label %else1079
then1078:
  %6281 = getelementptr [10 x i8], [10 x i8]* @.str848, i32 0, i32 0
  %6282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %6281, i64 9)
  %6283 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %6284 = load %nyx_string*, %nyx_string** %6283
  %6285 = call %nyx_string* @nyx_string_concat(%nyx_string* %6282, %nyx_string* %6284)
  %6286 = call i8* @nyx_string_to_cstr(%nyx_string* %6285)
  call void @nyx_print_string(i8* %6286)
  br label %merge1080
else1079:
  br label %merge1080
merge1080:
  %6287 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %6288 = load i1, i1* %6287
  br i1 %6288, label %then1081, label %else1082
then1081:
  %6289 = getelementptr [25 x i8], [25 x i8]* @.str849, i32 0, i32 0
  %6290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %6289, i64 24)
  %6291 = call i8* @nyx_string_to_cstr(%nyx_string* %6290)
  call void @nyx_print_string(i8* %6291)
  br label %merge1083
else1082:
  %6292 = getelementptr [22 x i8], [22 x i8]* @.str850, i32 0, i32 0
  %6293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %6292, i64 21)
  %6294 = call i8* @nyx_string_to_cstr(%nyx_string* %6293)
  call void @nyx_print_string(i8* %6294)
  br label %merge1083
merge1083:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %6295 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6296 = getelementptr [2 x i8], [2 x i8]* @.str851, i32 0, i32 0
  %6297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %6296, i64 1)
  %6298 = call i1 @nyx_string_starts_with(%nyx_string* %6295, %nyx_string* %6297)
  br i1 %6298, label %then1084, label %else1085
then1084:
  %6299 = getelementptr [98 x i8], [98 x i8]* @.str852, i32 0, i32 0
  %6300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %6299, i64 97)
  %6301 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6302 = call %nyx_string* @nyx_string_concat(%nyx_string* %6300, %nyx_string* %6301)
  ret %nyx_string* %6302
else1085:
  br label %merge1086
merge1086:
  %6303 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6304 = getelementptr [4 x i8], [4 x i8]* @.str853, i32 0, i32 0
  %6305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %6304, i64 3)
  %6306 = call i1 @nyx_string_ends_with(%nyx_string* %6303, %nyx_string* %6305)
  %6307 = xor i1 %6306, true
  br i1 %6307, label %then1087, label %else1088
then1087:
  %6308 = getelementptr [31 x i8], [31 x i8]* @.str854, i32 0, i32 0
  %6309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %6308, i64 30)
  %6310 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6311 = call %nyx_string* @nyx_string_concat(%nyx_string* %6309, %nyx_string* %6310)
  ret %nyx_string* %6311
else1088:
  br label %merge1089
merge1089:
  %6312 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6313 = call i8* @nyx_string_to_cstr(%nyx_string* %6312)
  %6314 = call i1 @nyx_file_exists(i8* %6313)
  %6315 = xor i1 %6314, true
  br i1 %6315, label %then1090, label %else1091
then1090:
  %6316 = getelementptr [31 x i8], [31 x i8]* @.str855, i32 0, i32 0
  %6317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %6316, i64 30)
  %6318 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6319 = call %nyx_string* @nyx_string_concat(%nyx_string* %6317, %nyx_string* %6318)
  %6320 = getelementptr [48 x i8], [48 x i8]* @.str856, i32 0, i32 0
  %6321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %6320, i64 47)
  %6322 = call %nyx_string* @nyx_string_concat(%nyx_string* %6319, %nyx_string* %6321)
  ret %nyx_string* %6322
else1091:
  br label %merge1092
merge1092:
  %6323 = getelementptr [1 x i8], [1 x i8]* @.str857, i32 0, i32 0
  %6324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %6323, i64 0)
  ret %nyx_string* %6324
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %6325 = load %nyx_string*, %nyx_string** %p.ptr
  %6326 = getelementptr [3 x i8], [3 x i8]* @.str858, i32 0, i32 0
  %6327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %6326, i64 2)
  %6328 = call i1 @nyx_string_starts_with(%nyx_string* %6325, %nyx_string* %6327)
  br i1 %6328, label %then1093, label %else1094
then1093:
  %6329 = load %nyx_string*, %nyx_string** %p.ptr
  %6330 = load %nyx_string*, %nyx_string** %p.ptr
  %6331 = call i64 @nyx_string_byte_length(%nyx_string* %6330)
  %6332 = call %nyx_string* @nyx_string_substring(%nyx_string* %6329, i64 2, i64 %6331)
  ret %nyx_string* %6332
else1094:
  br label %merge1095
merge1095:
  %6333 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %6333
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %6334 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6335 = getelementptr [1 x i8], [1 x i8]* @.str859, i32 0, i32 0
  %6336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %6335, i64 0)
  %6337 = call i1 @nyx_string_equals(%nyx_string* %6334, %nyx_string* %6336)
  br i1 %6337, label %then1096, label %else1097
then1096:
  %6338 = getelementptr [1 x i8], [1 x i8]* @.str860, i32 0, i32 0
  %6339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %6338, i64 0)
  ret %nyx_string* %6339
else1097:
  br label %merge1098
merge1098:
  %6340 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6341 = call %nyx_string* @strip_dot_slash(%nyx_string* %6340)
  %6342 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %6343 = load %nyx_string*, %nyx_string** %6342
  %6344 = call %nyx_string* @strip_dot_slash(%nyx_string* %6343)
  %6345 = call i1 @nyx_string_equals(%nyx_string* %6341, %nyx_string* %6344)
  br i1 %6345, label %then1099, label %else1100
then1099:
  %6346 = getelementptr [1 x i8], [1 x i8]* @.str861, i32 0, i32 0
  %6347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %6346, i64 0)
  ret %nyx_string* %6347
else1100:
  br label %merge1101
merge1101:
  %6348 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6349 = alloca %nyx_string*
  store %nyx_string* %6348, %nyx_string** %6349
  %6350 = alloca i64
  store i64 0, i64* %6350
  %6351 = call i8* @llvm.stacksave()
  br label %while_cond1102
while_cond1102:
  %6352 = load i64, i64* %6350
  %6353 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6354 = call i64 @nyx_string_byte_length(%nyx_string* %6353)
  %6355 = icmp slt i64 %6352, %6354
  br i1 %6355, label %while_body1103, label %while_end1104
while_body1103:
  call void @llvm.stackrestore(i8* %6351)
  %6356 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6357 = load i64, i64* %6350
  %6358 = call i8 @nyx_string_char_at(%nyx_string* %6356, i64 %6357)
  %6359 = zext i8 %6358 to i64
  %6360 = trunc i64 %6359 to i8
  %6361 = alloca i8
  store i8 %6360, i8* %6361
  %6362 = load i8, i8* %6361
  %6363 = getelementptr [1 x i8], [1 x i8]* @.str862, i32 0, i32 0
  %6364 = load i8, i8* %6363
  %6365 = zext i8 %6364 to i64
  %6366 = zext i8 %6362 to i64
  %6367 = icmp eq i64 %6366, %6365
  br i1 %6367, label %then1105, label %else1106
then1105:
  %6368 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6369 = load i64, i64* %6350
  %6370 = add i64 %6369, 1
  %6371 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %6372 = call i64 @nyx_string_byte_length(%nyx_string* %6371)
  %6373 = call %nyx_string* @nyx_string_substring(%nyx_string* %6368, i64 %6370, i64 %6372)
  store %nyx_string* %6373, %nyx_string** %6349
  br label %merge1107
else1106:
  br label %merge1107
merge1107:
  %6374 = load i64, i64* %6350
  %6375 = add i64 %6374, 1
  store i64 %6375, i64* %6350
  br label %while_cond1102
while_end1104:
  %6376 = load %nyx_string*, %nyx_string** %6349
  %6377 = load %nyx_string*, %nyx_string** %6349
  %6378 = call i64 @nyx_string_byte_length(%nyx_string* %6377)
  %6379 = sub i64 %6378, 3
  %6380 = call %nyx_string* @nyx_string_substring(%nyx_string* %6376, i64 0, i64 %6379)
  %6381 = alloca %nyx_string*
  store %nyx_string* %6380, %nyx_string** %6381
  %6382 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %6383 = load %nyx_string*, %nyx_string** %6382
  %6384 = getelementptr [2 x i8], [2 x i8]* @.str863, i32 0, i32 0
  %6385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %6384, i64 1)
  %6386 = call %nyx_string* @nyx_string_concat(%nyx_string* %6383, %nyx_string* %6385)
  %6387 = load %nyx_string*, %nyx_string** %6381
  %6388 = call %nyx_string* @nyx_string_concat(%nyx_string* %6386, %nyx_string* %6387)
  ret %nyx_string* %6388
}

define internal %nyx_string* @toolchain_version(
) {
  %6389 = getelementptr [9 x i8], [9 x i8]* @.str864, i32 0, i32 0
  %6390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %6389, i64 8)
  %6391 = call i8* @nyx_string_to_cstr(%nyx_string* %6390)
  %6392 = call %nyx_string* @nyx_getenv(i8* %6391)
  %6393 = alloca %nyx_string*
  store %nyx_string* %6392, %nyx_string** %6393
  %6394 = load %nyx_string*, %nyx_string** %6393
  %6395 = getelementptr [1 x i8], [1 x i8]* @.str865, i32 0, i32 0
  %6396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %6395, i64 0)
  %6397 = call i1 @nyx_string_equals(%nyx_string* %6394, %nyx_string* %6396)
  br i1 %6397, label %then1108, label %else1109
then1108:
  %6398 = getelementptr [5 x i8], [5 x i8]* @.str866, i32 0, i32 0
  %6399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %6398, i64 4)
  %6400 = call i8* @nyx_string_to_cstr(%nyx_string* %6399)
  %6401 = call %nyx_string* @nyx_getenv(i8* %6400)
  %6402 = alloca %nyx_string*
  store %nyx_string* %6401, %nyx_string** %6402
  %6403 = load %nyx_string*, %nyx_string** %6402
  %6404 = getelementptr [1 x i8], [1 x i8]* @.str867, i32 0, i32 0
  %6405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %6404, i64 0)
  %6406 = call i1 @nyx_string_equals(%nyx_string* %6403, %nyx_string* %6405)
  %6407 = xor i1 %6406, true
  br i1 %6407, label %then1111, label %else1112
then1111:
  %6408 = load %nyx_string*, %nyx_string** %6402
  %6409 = getelementptr [6 x i8], [6 x i8]* @.str868, i32 0, i32 0
  %6410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %6409, i64 5)
  %6411 = call %nyx_string* @nyx_string_concat(%nyx_string* %6408, %nyx_string* %6410)
  store %nyx_string* %6411, %nyx_string** %6393
  br label %merge1113
else1112:
  br label %merge1113
merge1113:
  br label %merge1110
else1109:
  br label %merge1110
merge1110:
  %6412 = load %nyx_string*, %nyx_string** %6393
  %6413 = getelementptr [1 x i8], [1 x i8]* @.str869, i32 0, i32 0
  %6414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %6413, i64 0)
  %6415 = call i1 @nyx_string_equals(%nyx_string* %6412, %nyx_string* %6414)
  %6416 = xor i1 %6415, true
  br i1 %6416, label %then1114, label %else1115
then1114:
  %6417 = load %nyx_string*, %nyx_string** %6393
  %6418 = getelementptr [9 x i8], [9 x i8]* @.str870, i32 0, i32 0
  %6419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %6418, i64 8)
  %6420 = call %nyx_string* @nyx_string_concat(%nyx_string* %6417, %nyx_string* %6419)
  %6421 = call i8* @nyx_string_to_cstr(%nyx_string* %6420)
  %6422 = call i1 @nyx_file_exists(i8* %6421)
  br i1 %6422, label %then1117, label %else1118
then1117:
  %6423 = load %nyx_string*, %nyx_string** %6393
  %6424 = getelementptr [9 x i8], [9 x i8]* @.str871, i32 0, i32 0
  %6425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %6424, i64 8)
  %6426 = call %nyx_string* @nyx_string_concat(%nyx_string* %6423, %nyx_string* %6425)
  %6427 = call i8* @nyx_string_to_cstr(%nyx_string* %6426)
  %6428 = call %nyx_string* @nyx_read_file(i8* %6427)
  %6429 = alloca %nyx_string*
  store %nyx_string* %6428, %nyx_string** %6429
  %6430 = load %nyx_string*, %nyx_string** %6429
  %6431 = call %nyx_string* @nyx_string_trim(%nyx_string* %6430)
  ret %nyx_string* %6431
else1118:
  br label %merge1119
merge1119:
  br label %merge1116
else1115:
  br label %merge1116
merge1116:
  %6432 = getelementptr [8 x i8], [8 x i8]* @.str872, i32 0, i32 0
  %6433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %6432, i64 7)
  %6434 = call i8* @nyx_string_to_cstr(%nyx_string* %6433)
  %6435 = call i1 @nyx_file_exists(i8* %6434)
  br i1 %6435, label %then1120, label %else1121
then1120:
  %6436 = getelementptr [8 x i8], [8 x i8]* @.str873, i32 0, i32 0
  %6437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %6436, i64 7)
  %6438 = call i8* @nyx_string_to_cstr(%nyx_string* %6437)
  %6439 = call %nyx_string* @nyx_read_file(i8* %6438)
  %6440 = alloca %nyx_string*
  store %nyx_string* %6439, %nyx_string** %6440
  %6441 = load %nyx_string*, %nyx_string** %6440
  %6442 = call %nyx_string* @nyx_string_trim(%nyx_string* %6441)
  ret %nyx_string* %6442
else1121:
  br label %merge1122
merge1122:
  %6443 = getelementptr [7 x i8], [7 x i8]* @.str874, i32 0, i32 0
  %6444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %6443, i64 6)
  ret %nyx_string* %6444
}

define internal %nyx_string* @report_template(
) {
  %6445 = getelementptr [51 x i8], [51 x i8]* @.str875, i32 0, i32 0
  %6446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %6445, i64 50)
  %6447 = alloca %nyx_string*
  store %nyx_string* %6446, %nyx_string** %6447
  %6448 = load %nyx_string*, %nyx_string** %6447
  %6449 = getelementptr [73 x i8], [73 x i8]* @.str876, i32 0, i32 0
  %6450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %6449, i64 72)
  %6451 = call %nyx_string* @nyx_string_concat(%nyx_string* %6448, %nyx_string* %6450)
  store %nyx_string* %6451, %nyx_string** %6447
  %6452 = load %nyx_string*, %nyx_string** %6447
  %6453 = getelementptr [88 x i8], [88 x i8]* @.str877, i32 0, i32 0
  %6454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %6453, i64 87)
  %6455 = call %nyx_string* @nyx_string_concat(%nyx_string* %6452, %nyx_string* %6454)
  store %nyx_string* %6455, %nyx_string** %6447
  %6456 = load %nyx_string*, %nyx_string** %6447
  %6457 = getelementptr [51 x i8], [51 x i8]* @.str878, i32 0, i32 0
  %6458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %6457, i64 50)
  %6459 = call %nyx_string* @nyx_string_concat(%nyx_string* %6456, %nyx_string* %6458)
  store %nyx_string* %6459, %nyx_string** %6447
  %6460 = load %nyx_string*, %nyx_string** %6447
  %6461 = getelementptr [90 x i8], [90 x i8]* @.str879, i32 0, i32 0
  %6462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %6461, i64 89)
  %6463 = call %nyx_string* @nyx_string_concat(%nyx_string* %6460, %nyx_string* %6462)
  store %nyx_string* %6463, %nyx_string** %6447
  %6464 = load %nyx_string*, %nyx_string** %6447
  %6465 = getelementptr [104 x i8], [104 x i8]* @.str880, i32 0, i32 0
  %6466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %6465, i64 103)
  %6467 = call %nyx_string* @nyx_string_concat(%nyx_string* %6464, %nyx_string* %6466)
  store %nyx_string* %6467, %nyx_string** %6447
  %6468 = load %nyx_string*, %nyx_string** %6447
  %6469 = getelementptr [99 x i8], [99 x i8]* @.str881, i32 0, i32 0
  %6470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %6469, i64 98)
  %6471 = call %nyx_string* @nyx_string_concat(%nyx_string* %6468, %nyx_string* %6470)
  store %nyx_string* %6471, %nyx_string** %6447
  %6472 = load %nyx_string*, %nyx_string** %6447
  %6473 = getelementptr [126 x i8], [126 x i8]* @.str882, i32 0, i32 0
  %6474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %6473, i64 125)
  %6475 = call %nyx_string* @nyx_string_concat(%nyx_string* %6472, %nyx_string* %6474)
  store %nyx_string* %6475, %nyx_string** %6447
  %6476 = load %nyx_string*, %nyx_string** %6447
  %6477 = getelementptr [21 x i8], [21 x i8]* @.str883, i32 0, i32 0
  %6478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %6477, i64 20)
  %6479 = call %nyx_string* @nyx_string_concat(%nyx_string* %6476, %nyx_string* %6478)
  %6480 = call %nyx_string* @toolchain_version()
  %6481 = call %nyx_string* @nyx_string_concat(%nyx_string* %6479, %nyx_string* %6480)
  %6482 = getelementptr [25 x i8], [25 x i8]* @.str884, i32 0, i32 0
  %6483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %6482, i64 24)
  %6484 = call %nyx_string* @nyx_string_concat(%nyx_string* %6481, %nyx_string* %6483)
  store %nyx_string* %6484, %nyx_string** %6447
  %6485 = load %nyx_string*, %nyx_string** %6447
  ret %nyx_string* %6485
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %6486 = getelementptr [12 x i8], [12 x i8]* @.str885, i32 0, i32 0
  %6487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %6486, i64 11)
  %6488 = alloca %nyx_string*
  store %nyx_string* %6487, %nyx_string** %6488
  %6489 = load i1, i1* %do_send.ptr
  %6490 = xor i1 %6489, true
  br i1 %6490, label %then1123, label %else1124
then1123:
  %6491 = load %nyx_string*, %nyx_string** %6488
  %6492 = call i8* @nyx_string_to_cstr(%nyx_string* %6491)
  %6493 = call i1 @nyx_file_exists(i8* %6492)
  br i1 %6493, label %then1126, label %else1127
then1126:
  %6494 = load %nyx_string*, %nyx_string** %6488
  %6495 = call i8* @nyx_string_to_cstr(%nyx_string* %6494)
  %6496 = call %nyx_string* @nyx_read_file(i8* %6495)
  %6497 = alloca %nyx_string*
  store %nyx_string* %6496, %nyx_string** %6497
  %6498 = load %nyx_string*, %nyx_string** %6497
  %6499 = call i64 @nyx_string_byte_length(%nyx_string* %6498)
  %6500 = icmp sge i64 %6499, 40
  br i1 %6500, label %then1129, label %else1130
then1129:
  %6501 = getelementptr [80 x i8], [80 x i8]* @.str886, i32 0, i32 0
  %6502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %6501, i64 79)
  %6503 = call i8* @nyx_string_to_cstr(%nyx_string* %6502)
  call void @nyx_print_string(i8* %6503)
  %6504 = getelementptr [62 x i8], [62 x i8]* @.str887, i32 0, i32 0
  %6505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %6504, i64 61)
  %6506 = call i8* @nyx_string_to_cstr(%nyx_string* %6505)
  call void @nyx_print_string(i8* %6506)
  ret i1 1
else1130:
  br label %merge1131
merge1131:
  br label %merge1128
else1127:
  br label %merge1128
merge1128:
  %6507 = load %nyx_string*, %nyx_string** %6488
  %6508 = call %nyx_string* @report_template()
  %6509 = call i8* @nyx_string_to_cstr(%nyx_string* %6507)
  %6510 = call i1 @nyx_write_file_safe(i8* %6509, %nyx_string* %6508)
  %6511 = getelementptr [78 x i8], [78 x i8]* @.str888, i32 0, i32 0
  %6512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %6511, i64 77)
  %6513 = call i8* @nyx_string_to_cstr(%nyx_string* %6512)
  call void @nyx_print_string(i8* %6513)
  %6514 = getelementptr [72 x i8], [72 x i8]* @.str889, i32 0, i32 0
  %6515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %6514, i64 71)
  %6516 = call i8* @nyx_string_to_cstr(%nyx_string* %6515)
  call void @nyx_print_string(i8* %6516)
  %6517 = getelementptr [53 x i8], [53 x i8]* @.str890, i32 0, i32 0
  %6518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %6517, i64 52)
  %6519 = call i8* @nyx_string_to_cstr(%nyx_string* %6518)
  call void @nyx_print_string(i8* %6519)
  ret i1 1
else1124:
  br label %merge1125
merge1125:
  %6520 = load %nyx_string*, %nyx_string** %6488
  %6521 = alloca %nyx_string*
  store %nyx_string* %6520, %nyx_string** %6521
  %6522 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %6523 = getelementptr [1 x i8], [1 x i8]* @.str891, i32 0, i32 0
  %6524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %6523, i64 0)
  %6525 = call i1 @nyx_string_equals(%nyx_string* %6522, %nyx_string* %6524)
  %6526 = xor i1 %6525, true
  br i1 %6526, label %then1132, label %else1133
then1132:
  %6527 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %6527, %nyx_string** %6521
  br label %merge1134
else1133:
  br label %merge1134
merge1134:
  %6528 = load %nyx_string*, %nyx_string** %6521
  %6529 = call i8* @nyx_string_to_cstr(%nyx_string* %6528)
  %6530 = call i1 @nyx_file_exists(i8* %6529)
  %6531 = xor i1 %6530, true
  br i1 %6531, label %then1135, label %else1136
then1135:
  %6532 = getelementptr [18 x i8], [18 x i8]* @.str892, i32 0, i32 0
  %6533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %6532, i64 17)
  %6534 = load %nyx_string*, %nyx_string** %6521
  %6535 = call %nyx_string* @nyx_string_concat(%nyx_string* %6533, %nyx_string* %6534)
  %6536 = getelementptr [57 x i8], [57 x i8]* @.str893, i32 0, i32 0
  %6537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %6536, i64 56)
  %6538 = call %nyx_string* @nyx_string_concat(%nyx_string* %6535, %nyx_string* %6537)
  %6539 = call i8* @nyx_string_to_cstr(%nyx_string* %6538)
  call void @nyx_print_string(i8* %6539)
  ret i1 0
else1136:
  br label %merge1137
merge1137:
  %6540 = load %nyx_string*, %nyx_string** %6521
  %6541 = call i8* @nyx_string_to_cstr(%nyx_string* %6540)
  %6542 = call %nyx_string* @nyx_read_file(i8* %6541)
  %6543 = alloca %nyx_string*
  store %nyx_string* %6542, %nyx_string** %6543
  %6544 = load %nyx_string*, %nyx_string** %6543
  %6545 = call i64 @nyx_string_byte_length(%nyx_string* %6544)
  %6546 = icmp slt i64 %6545, 40
  br i1 %6546, label %then1138, label %else1139
then1138:
  %6547 = getelementptr [66 x i8], [66 x i8]* @.str894, i32 0, i32 0
  %6548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %6547, i64 65)
  %6549 = call i8* @nyx_string_to_cstr(%nyx_string* %6548)
  call void @nyx_print_string(i8* %6549)
  ret i1 0
else1139:
  br label %merge1140
merge1140:
  %6550 = getelementptr [1 x i8], [1 x i8]* @.str895, i32 0, i32 0
  %6551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %6550, i64 0)
  %6552 = alloca %nyx_string*
  store %nyx_string* %6551, %nyx_string** %6552
  %6553 = getelementptr [5 x i8], [5 x i8]* @.str896, i32 0, i32 0
  %6554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %6553, i64 4)
  %6555 = call i8* @nyx_string_to_cstr(%nyx_string* %6554)
  %6556 = call %nyx_string* @nyx_getenv(i8* %6555)
  %6557 = alloca %nyx_string*
  store %nyx_string* %6556, %nyx_string** %6557
  %6558 = load %nyx_string*, %nyx_string** %6557
  %6559 = getelementptr [1 x i8], [1 x i8]* @.str897, i32 0, i32 0
  %6560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %6559, i64 0)
  %6561 = call i1 @nyx_string_equals(%nyx_string* %6558, %nyx_string* %6560)
  %6562 = xor i1 %6561, true
  br i1 %6562, label %then1141, label %else1142
then1141:
  %6563 = load %nyx_string*, %nyx_string** %6557
  %6564 = getelementptr [15 x i8], [15 x i8]* @.str898, i32 0, i32 0
  %6565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %6564, i64 14)
  %6566 = call %nyx_string* @nyx_string_concat(%nyx_string* %6563, %nyx_string* %6565)
  %6567 = call i8* @nyx_string_to_cstr(%nyx_string* %6566)
  %6568 = call i1 @nyx_file_exists(i8* %6567)
  br i1 %6568, label %then1144, label %else1145
then1144:
  %6569 = load %nyx_string*, %nyx_string** %6557
  %6570 = getelementptr [15 x i8], [15 x i8]* @.str899, i32 0, i32 0
  %6571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %6570, i64 14)
  %6572 = call %nyx_string* @nyx_string_concat(%nyx_string* %6569, %nyx_string* %6571)
  %6573 = call i8* @nyx_string_to_cstr(%nyx_string* %6572)
  %6574 = call %nyx_string* @nyx_read_file(i8* %6573)
  %6575 = alloca %nyx_string*
  store %nyx_string* %6574, %nyx_string** %6575
  %6576 = load %nyx_string*, %nyx_string** %6575
  %6577 = call %nyx_string* @nyx_string_trim(%nyx_string* %6576)
  store %nyx_string* %6577, %nyx_string** %6552
  br label %merge1146
else1145:
  br label %merge1146
merge1146:
  br label %merge1143
else1142:
  br label %merge1143
merge1143:
  %6578 = load %nyx_string*, %nyx_string** %6552
  %6579 = getelementptr [1 x i8], [1 x i8]* @.str900, i32 0, i32 0
  %6580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %6579, i64 0)
  %6581 = call i1 @nyx_string_equals(%nyx_string* %6578, %nyx_string* %6580)
  br i1 %6581, label %then1147, label %else1148
then1147:
  %6582 = getelementptr [77 x i8], [77 x i8]* @.str901, i32 0, i32 0
  %6583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %6582, i64 76)
  %6584 = call i8* @nyx_string_to_cstr(%nyx_string* %6583)
  call void @nyx_print_string(i8* %6584)
  br label %merge1149
else1148:
  br label %merge1149
merge1149:
  %6585 = getelementptr [10 x i8], [10 x i8]* @.str902, i32 0, i32 0
  %6586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %6585, i64 9)
  %6587 = load %nyx_string*, %nyx_string** %6552
  %6588 = call i64 @std_kvclient__kv_connect_auth(%nyx_string* %6586, i64 6380, %nyx_string* %6587)
  %6589 = alloca i64
  store i64 %6588, i64* %6589
  %6590 = load i64, i64* %6589
  %6591 = icmp slt i64 %6590, 0
  br i1 %6591, label %then1150, label %else1151
then1150:
  %6592 = getelementptr [54 x i8], [54 x i8]* @.str903, i32 0, i32 0
  %6593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %6592, i64 53)
  %6594 = call i8* @nyx_string_to_cstr(%nyx_string* %6593)
  call void @nyx_print_string(i8* %6594)
  %6595 = getelementptr [22 x i8], [22 x i8]* @.str904, i32 0, i32 0
  %6596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %6595, i64 21)
  %6597 = load %nyx_string*, %nyx_string** %6521
  %6598 = call %nyx_string* @nyx_string_concat(%nyx_string* %6596, %nyx_string* %6597)
  %6599 = getelementptr [28 x i8], [28 x i8]* @.str905, i32 0, i32 0
  %6600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %6599, i64 27)
  %6601 = call %nyx_string* @nyx_string_concat(%nyx_string* %6598, %nyx_string* %6600)
  %6602 = call i8* @nyx_string_to_cstr(%nyx_string* %6601)
  call void @nyx_print_string(i8* %6602)
  %6603 = getelementptr [44 x i8], [44 x i8]* @.str906, i32 0, i32 0
  %6604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %6603, i64 43)
  %6605 = call i8* @nyx_string_to_cstr(%nyx_string* %6604)
  call void @nyx_print_string(i8* %6605)
  ret i1 0
else1151:
  br label %merge1152
merge1152:
  %6606 = getelementptr [5 x i8], [5 x i8]* @.str907, i32 0, i32 0
  %6607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %6606, i64 4)
  %6608 = load %nyx_string*, %nyx_string** %6543
  %6609 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %6608)
  %6610 = call %nyx_string* @nyx_string_concat(%nyx_string* %6607, %nyx_string* %6609)
  %6611 = alloca %nyx_string*
  store %nyx_string* %6610, %nyx_string** %6611
  %6612 = load i64, i64* %6589
  %6613 = getelementptr [11 x i8], [11 x i8]* @.str908, i32 0, i32 0
  %6614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %6613, i64 10)
  %6615 = load %nyx_string*, %nyx_string** %6611
  %6616 = call i64 @std_kvclient__kv_rpush(i64 %6612, %nyx_string* %6614, %nyx_string* %6615)
  %6617 = alloca i64
  store i64 %6616, i64* %6617
  %6618 = load i64, i64* %6589
  %6619 = call i64 @std_kvclient__kv_close(i64 %6618)
  %6620 = load i64, i64* %6617
  %6621 = icmp sle i64 %6620, 0
  br i1 %6621, label %then1153, label %else1154
then1153:
  %6622 = getelementptr [37 x i8], [37 x i8]* @.str909, i32 0, i32 0
  %6623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %6622, i64 36)
  %6624 = call i8* @nyx_string_to_cstr(%nyx_string* %6623)
  call void @nyx_print_string(i8* %6624)
  ret i1 0
else1154:
  br label %merge1155
merge1155:
  %6625 = getelementptr [55 x i8], [55 x i8]* @.str910, i32 0, i32 0
  %6626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %6625, i64 54)
  %6627 = load i64, i64* %6617
  %6628 = call %nyx_string* @nyx_string_from_int(i64 %6627)
  %6629 = call %nyx_string* @nyx_string_concat(%nyx_string* %6626, %nyx_string* %6628)
  %6630 = getelementptr [15 x i8], [15 x i8]* @.str911, i32 0, i32 0
  %6631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %6630, i64 14)
  %6632 = call %nyx_string* @nyx_string_concat(%nyx_string* %6629, %nyx_string* %6631)
  %6633 = call i8* @nyx_string_to_cstr(%nyx_string* %6632)
  call void @nyx_print_string(i8* %6633)
  ret i1 1
}

define internal %nyx_string* @rt_cache_sh(
) {
  %6634 = getelementptr [17 x i8], [17 x i8]* @.str912, i32 0, i32 0
  %6635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %6634, i64 16)
  %6636 = alloca %nyx_string*
  store %nyx_string* %6635, %nyx_string** %6636
  %6637 = load %nyx_string*, %nyx_string** %6636
  %6638 = getelementptr [41 x i8], [41 x i8]* @.str913, i32 0, i32 0
  %6639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %6638, i64 40)
  %6640 = call %nyx_string* @nyx_string_concat(%nyx_string* %6637, %nyx_string* %6639)
  store %nyx_string* %6640, %nyx_string** %6636
  %6641 = load %nyx_string*, %nyx_string** %6636
  %6642 = getelementptr [24 x i8], [24 x i8]* @.str914, i32 0, i32 0
  %6643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %6642, i64 23)
  %6644 = call %nyx_string* @nyx_string_concat(%nyx_string* %6641, %nyx_string* %6643)
  store %nyx_string* %6644, %nyx_string** %6636
  %6645 = load %nyx_string*, %nyx_string** %6636
  %6646 = getelementptr [92 x i8], [92 x i8]* @.str915, i32 0, i32 0
  %6647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %6646, i64 91)
  %6648 = call %nyx_string* @nyx_string_concat(%nyx_string* %6645, %nyx_string* %6647)
  store %nyx_string* %6648, %nyx_string** %6636
  %6649 = load %nyx_string*, %nyx_string** %6636
  %6650 = getelementptr [177 x i8], [177 x i8]* @.str916, i32 0, i32 0
  %6651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %6650, i64 176)
  %6652 = call %nyx_string* @nyx_string_concat(%nyx_string* %6649, %nyx_string* %6651)
  store %nyx_string* %6652, %nyx_string** %6636
  %6653 = load %nyx_string*, %nyx_string** %6636
  %6654 = getelementptr [35 x i8], [35 x i8]* @.str917, i32 0, i32 0
  %6655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %6654, i64 34)
  %6656 = call %nyx_string* @nyx_string_concat(%nyx_string* %6653, %nyx_string* %6655)
  store %nyx_string* %6656, %nyx_string** %6636
  %6657 = load %nyx_string*, %nyx_string** %6636
  %6658 = getelementptr [83 x i8], [83 x i8]* @.str918, i32 0, i32 0
  %6659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %6658, i64 82)
  %6660 = call %nyx_string* @nyx_string_concat(%nyx_string* %6657, %nyx_string* %6659)
  store %nyx_string* %6660, %nyx_string** %6636
  %6661 = load %nyx_string*, %nyx_string** %6636
  %6662 = getelementptr [49 x i8], [49 x i8]* @.str919, i32 0, i32 0
  %6663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %6662, i64 48)
  %6664 = call %nyx_string* @nyx_string_concat(%nyx_string* %6661, %nyx_string* %6663)
  store %nyx_string* %6664, %nyx_string** %6636
  %6665 = load %nyx_string*, %nyx_string** %6636
  %6666 = getelementptr [89 x i8], [89 x i8]* @.str920, i32 0, i32 0
  %6667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %6666, i64 88)
  %6668 = call %nyx_string* @nyx_string_concat(%nyx_string* %6665, %nyx_string* %6667)
  store %nyx_string* %6668, %nyx_string** %6636
  %6669 = load %nyx_string*, %nyx_string** %6636
  %6670 = getelementptr [68 x i8], [68 x i8]* @.str921, i32 0, i32 0
  %6671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %6670, i64 67)
  %6672 = call %nyx_string* @nyx_string_concat(%nyx_string* %6669, %nyx_string* %6671)
  store %nyx_string* %6672, %nyx_string** %6636
  %6673 = load %nyx_string*, %nyx_string** %6636
  %6674 = getelementptr [15 x i8], [15 x i8]* @.str922, i32 0, i32 0
  %6675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %6674, i64 14)
  %6676 = call %nyx_string* @nyx_string_concat(%nyx_string* %6673, %nyx_string* %6675)
  store %nyx_string* %6676, %nyx_string** %6636
  %6677 = load %nyx_string*, %nyx_string** %6636
  %6678 = getelementptr [114 x i8], [114 x i8]* @.str923, i32 0, i32 0
  %6679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %6678, i64 113)
  %6680 = call %nyx_string* @nyx_string_concat(%nyx_string* %6677, %nyx_string* %6679)
  store %nyx_string* %6680, %nyx_string** %6636
  %6681 = load %nyx_string*, %nyx_string** %6636
  %6682 = getelementptr [8 x i8], [8 x i8]* @.str924, i32 0, i32 0
  %6683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %6682, i64 7)
  %6684 = call %nyx_string* @nyx_string_concat(%nyx_string* %6681, %nyx_string* %6683)
  store %nyx_string* %6684, %nyx_string** %6636
  %6685 = load %nyx_string*, %nyx_string** %6636
  %6686 = getelementptr [138 x i8], [138 x i8]* @.str925, i32 0, i32 0
  %6687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %6686, i64 137)
  %6688 = call %nyx_string* @nyx_string_concat(%nyx_string* %6685, %nyx_string* %6687)
  store %nyx_string* %6688, %nyx_string** %6636
  %6689 = load %nyx_string*, %nyx_string** %6636
  %6690 = getelementptr [43 x i8], [43 x i8]* @.str926, i32 0, i32 0
  %6691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %6690, i64 42)
  %6692 = call %nyx_string* @nyx_string_concat(%nyx_string* %6689, %nyx_string* %6691)
  store %nyx_string* %6692, %nyx_string** %6636
  %6693 = load %nyx_string*, %nyx_string** %6636
  %6694 = getelementptr [6 x i8], [6 x i8]* @.str927, i32 0, i32 0
  %6695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %6694, i64 5)
  %6696 = call %nyx_string* @nyx_string_concat(%nyx_string* %6693, %nyx_string* %6695)
  store %nyx_string* %6696, %nyx_string** %6636
  %6697 = load %nyx_string*, %nyx_string** %6636
  %6698 = getelementptr [27 x i8], [27 x i8]* @.str928, i32 0, i32 0
  %6699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %6698, i64 26)
  %6700 = call %nyx_string* @nyx_string_concat(%nyx_string* %6697, %nyx_string* %6699)
  store %nyx_string* %6700, %nyx_string** %6636
  %6701 = load %nyx_string*, %nyx_string** %6636
  %6702 = getelementptr [3 x i8], [3 x i8]* @.str929, i32 0, i32 0
  %6703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %6702, i64 2)
  %6704 = call %nyx_string* @nyx_string_concat(%nyx_string* %6701, %nyx_string* %6703)
  store %nyx_string* %6704, %nyx_string** %6636
  %6705 = load %nyx_string*, %nyx_string** %6636
  ret %nyx_string* %6705
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %6706 = getelementptr [9 x i8], [9 x i8]* @.str930, i32 0, i32 0
  %6707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %6706, i64 8)
  %6708 = call i8* @nyx_string_to_cstr(%nyx_string* %6707)
  %6709 = call %nyx_string* @nyx_getenv(i8* %6708)
  %6710 = alloca %nyx_string*
  store %nyx_string* %6709, %nyx_string** %6710
  %6711 = load %nyx_string*, %nyx_string** %6710
  %6712 = getelementptr [1 x i8], [1 x i8]* @.str931, i32 0, i32 0
  %6713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %6712, i64 0)
  %6714 = call i1 @nyx_string_equals(%nyx_string* %6711, %nyx_string* %6713)
  br i1 %6714, label %then1156, label %else1157
then1156:
  %6715 = getelementptr [5 x i8], [5 x i8]* @.str932, i32 0, i32 0
  %6716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %6715, i64 4)
  %6717 = call i8* @nyx_string_to_cstr(%nyx_string* %6716)
  %6718 = call %nyx_string* @nyx_getenv(i8* %6717)
  %6719 = alloca %nyx_string*
  store %nyx_string* %6718, %nyx_string** %6719
  %6720 = load %nyx_string*, %nyx_string** %6719
  %6721 = getelementptr [6 x i8], [6 x i8]* @.str933, i32 0, i32 0
  %6722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %6721, i64 5)
  %6723 = call %nyx_string* @nyx_string_concat(%nyx_string* %6720, %nyx_string* %6722)
  %6724 = alloca %nyx_string*
  store %nyx_string* %6723, %nyx_string** %6724
  %6725 = alloca i1
  store i1 false, i1* %6725
  %6726 = load %nyx_string*, %nyx_string** %6719
  %6727 = getelementptr [1 x i8], [1 x i8]* @.str934, i32 0, i32 0
  %6728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %6727, i64 0)
  %6729 = call i1 @nyx_string_equals(%nyx_string* %6726, %nyx_string* %6728)
  %6730 = xor i1 %6729, true
  br i1 %6730, label %sc_and_rhs1159, label %sc_and_end1160
sc_and_rhs1159:
  %6731 = load %nyx_string*, %nyx_string** %6724
  %6732 = getelementptr [5 x i8], [5 x i8]* @.str935, i32 0, i32 0
  %6733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %6732, i64 4)
  %6734 = call %nyx_string* @nyx_string_concat(%nyx_string* %6731, %nyx_string* %6733)
  %6735 = call i8* @nyx_string_to_cstr(%nyx_string* %6734)
  %6736 = call i1 @nyx_file_exists(i8* %6735)
  store i1 %6736, i1* %6725
  br label %sc_and_end1160
sc_and_end1160:
  %6737 = load i1, i1* %6725
  br i1 %6737, label %then1161, label %else1162
then1161:
  %6738 = load %nyx_string*, %nyx_string** %6724
  store %nyx_string* %6738, %nyx_string** %6710
  br label %merge1163
else1162:
  br label %merge1163
merge1163:
  br label %merge1158
else1157:
  br label %merge1158
merge1158:
  %6739 = load %nyx_string*, %nyx_string** %6710
  %6740 = getelementptr [1 x i8], [1 x i8]* @.str936, i32 0, i32 0
  %6741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %6740, i64 0)
  %6742 = call i1 @nyx_string_equals(%nyx_string* %6739, %nyx_string* %6741)
  br i1 %6742, label %then1164, label %else1165
then1164:
  %6743 = getelementptr [4 x i8], [4 x i8]* @.str937, i32 0, i32 0
  %6744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %6743, i64 3)
  %6745 = call i8* @nyx_string_to_cstr(%nyx_string* %6744)
  %6746 = call i1 @nyx_file_exists(i8* %6745)
  br i1 %6746, label %then1167, label %else1168
then1167:
  %6747 = getelementptr [2 x i8], [2 x i8]* @.str938, i32 0, i32 0
  %6748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %6747, i64 1)
  store %nyx_string* %6748, %nyx_string** %6710
  br label %merge1169
else1168:
  br label %merge1169
merge1169:
  br label %merge1166
else1165:
  br label %merge1166
merge1166:
  %6749 = load %nyx_string*, %nyx_string** %6710
  %6750 = getelementptr [1 x i8], [1 x i8]* @.str939, i32 0, i32 0
  %6751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %6750, i64 0)
  %6752 = call i1 @nyx_string_equals(%nyx_string* %6749, %nyx_string* %6751)
  br i1 %6752, label %then1170, label %else1171
then1170:
  %6753 = getelementptr [1 x i8], [1 x i8]* @.str940, i32 0, i32 0
  %6754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %6753, i64 0)
  ret %nyx_string* %6754
else1171:
  br label %merge1172
merge1172:
  %6755 = load %nyx_string*, %nyx_string** %6710
  %6756 = getelementptr [5 x i8], [5 x i8]* @.str941, i32 0, i32 0
  %6757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %6756, i64 4)
  %6758 = call %nyx_string* @nyx_string_concat(%nyx_string* %6755, %nyx_string* %6757)
  ret %nyx_string* %6758
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %6759 = alloca i1
  store i1 true, i1* %6759
  %6760 = alloca i1
  store i1 true, i1* %6760
  %6761 = alloca i1
  store i1 true, i1* %6761
  %6762 = load %nyx_string*, %nyx_string** %name.ptr
  %6763 = getelementptr [5 x i8], [5 x i8]* @.str942, i32 0, i32 0
  %6764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %6763, i64 4)
  %6765 = call i1 @nyx_string_equals(%nyx_string* %6762, %nyx_string* %6764)
  br i1 %6765, label %sc_or_end1174, label %sc_or_rhs1173
sc_or_rhs1173:
  %6766 = load %nyx_string*, %nyx_string** %name.ptr
  %6767 = getelementptr [4 x i8], [4 x i8]* @.str943, i32 0, i32 0
  %6768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %6767, i64 3)
  %6769 = call i1 @nyx_string_equals(%nyx_string* %6766, %nyx_string* %6768)
  store i1 %6769, i1* %6761
  br label %sc_or_end1174
sc_or_end1174:
  %6770 = load i1, i1* %6761
  br i1 %6770, label %sc_or_end1176, label %sc_or_rhs1175
sc_or_rhs1175:
  %6771 = load %nyx_string*, %nyx_string** %name.ptr
  %6772 = getelementptr [10 x i8], [10 x i8]* @.str944, i32 0, i32 0
  %6773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %6772, i64 9)
  %6774 = call i1 @nyx_string_equals(%nyx_string* %6771, %nyx_string* %6773)
  store i1 %6774, i1* %6760
  br label %sc_or_end1176
sc_or_end1176:
  %6775 = load i1, i1* %6760
  br i1 %6775, label %sc_or_end1178, label %sc_or_rhs1177
sc_or_rhs1177:
  %6776 = load %nyx_string*, %nyx_string** %name.ptr
  %6777 = getelementptr [7 x i8], [7 x i8]* @.str945, i32 0, i32 0
  %6778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %6777, i64 6)
  %6779 = call i1 @nyx_string_equals(%nyx_string* %6776, %nyx_string* %6778)
  store i1 %6779, i1* %6759
  br label %sc_or_end1178
sc_or_end1178:
  %6780 = load i1, i1* %6759
  br i1 %6780, label %then1179, label %else1180
then1179:
  %6781 = getelementptr [11 x i8], [11 x i8]* @.str946, i32 0, i32 0
  %6782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %6781, i64 10)
  ret %nyx_string* %6782
else1180:
  br label %merge1181
merge1181:
  %6783 = alloca i1
  store i1 true, i1* %6783
  %6784 = alloca i1
  store i1 true, i1* %6784
  %6785 = load %nyx_string*, %nyx_string** %name.ptr
  %6786 = getelementptr [8 x i8], [8 x i8]* @.str947, i32 0, i32 0
  %6787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %6786, i64 7)
  %6788 = call i1 @nyx_string_starts_with(%nyx_string* %6785, %nyx_string* %6787)
  br i1 %6788, label %sc_or_end1183, label %sc_or_rhs1182
sc_or_rhs1182:
  %6789 = load %nyx_string*, %nyx_string** %name.ptr
  %6790 = getelementptr [4 x i8], [4 x i8]* @.str948, i32 0, i32 0
  %6791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %6790, i64 3)
  %6792 = call i1 @nyx_string_equals(%nyx_string* %6789, %nyx_string* %6791)
  store i1 %6792, i1* %6784
  br label %sc_or_end1183
sc_or_end1183:
  %6793 = load i1, i1* %6784
  br i1 %6793, label %sc_or_end1185, label %sc_or_rhs1184
sc_or_rhs1184:
  %6794 = load %nyx_string*, %nyx_string** %name.ptr
  %6795 = getelementptr [5 x i8], [5 x i8]* @.str949, i32 0, i32 0
  %6796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %6795, i64 4)
  %6797 = call i1 @nyx_string_equals(%nyx_string* %6794, %nyx_string* %6796)
  store i1 %6797, i1* %6783
  br label %sc_or_end1185
sc_or_end1185:
  %6798 = load i1, i1* %6783
  br i1 %6798, label %then1186, label %else1187
then1186:
  %6799 = getelementptr [11 x i8], [11 x i8]* @.str950, i32 0, i32 0
  %6800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %6799, i64 10)
  ret %nyx_string* %6800
else1187:
  br label %merge1188
merge1188:
  %6801 = alloca i1
  store i1 true, i1* %6801
  %6802 = alloca i1
  store i1 true, i1* %6802
  %6803 = load %nyx_string*, %nyx_string** %name.ptr
  %6804 = getelementptr [7 x i8], [7 x i8]* @.str951, i32 0, i32 0
  %6805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %6804, i64 6)
  %6806 = call i1 @nyx_string_equals(%nyx_string* %6803, %nyx_string* %6805)
  br i1 %6806, label %sc_or_end1190, label %sc_or_rhs1189
sc_or_rhs1189:
  %6807 = load %nyx_string*, %nyx_string** %name.ptr
  %6808 = getelementptr [3 x i8], [3 x i8]* @.str952, i32 0, i32 0
  %6809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %6808, i64 2)
  %6810 = call i1 @nyx_string_equals(%nyx_string* %6807, %nyx_string* %6809)
  store i1 %6810, i1* %6802
  br label %sc_or_end1190
sc_or_end1190:
  %6811 = load i1, i1* %6802
  br i1 %6811, label %sc_or_end1192, label %sc_or_rhs1191
sc_or_rhs1191:
  %6812 = load %nyx_string*, %nyx_string** %name.ptr
  %6813 = getelementptr [9 x i8], [9 x i8]* @.str953, i32 0, i32 0
  %6814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %6813, i64 8)
  %6815 = call i1 @nyx_string_equals(%nyx_string* %6812, %nyx_string* %6814)
  store i1 %6815, i1* %6801
  br label %sc_or_end1192
sc_or_end1192:
  %6816 = load i1, i1* %6801
  br i1 %6816, label %then1193, label %else1194
then1193:
  %6817 = getelementptr [20 x i8], [20 x i8]* @.str954, i32 0, i32 0
  %6818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %6817, i64 19)
  ret %nyx_string* %6818
else1194:
  br label %merge1195
merge1195:
  %6819 = alloca i1
  store i1 true, i1* %6819
  %6820 = alloca i1
  store i1 true, i1* %6820
  %6821 = alloca i1
  store i1 true, i1* %6821
  %6822 = alloca i1
  store i1 true, i1* %6822
  %6823 = alloca i1
  store i1 true, i1* %6823
  %6824 = alloca i1
  store i1 true, i1* %6824
  %6825 = alloca i1
  store i1 true, i1* %6825
  %6826 = load %nyx_string*, %nyx_string** %name.ptr
  %6827 = getelementptr [5 x i8], [5 x i8]* @.str955, i32 0, i32 0
  %6828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %6827, i64 4)
  %6829 = call i1 @nyx_string_equals(%nyx_string* %6826, %nyx_string* %6828)
  br i1 %6829, label %sc_or_end1197, label %sc_or_rhs1196
sc_or_rhs1196:
  %6830 = load %nyx_string*, %nyx_string** %name.ptr
  %6831 = getelementptr [8 x i8], [8 x i8]* @.str956, i32 0, i32 0
  %6832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %6831, i64 7)
  %6833 = call i1 @nyx_string_equals(%nyx_string* %6830, %nyx_string* %6832)
  store i1 %6833, i1* %6825
  br label %sc_or_end1197
sc_or_end1197:
  %6834 = load i1, i1* %6825
  br i1 %6834, label %sc_or_end1199, label %sc_or_rhs1198
sc_or_rhs1198:
  %6835 = load %nyx_string*, %nyx_string** %name.ptr
  %6836 = getelementptr [5 x i8], [5 x i8]* @.str957, i32 0, i32 0
  %6837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %6836, i64 4)
  %6838 = call i1 @nyx_string_equals(%nyx_string* %6835, %nyx_string* %6837)
  store i1 %6838, i1* %6824
  br label %sc_or_end1199
sc_or_end1199:
  %6839 = load i1, i1* %6824
  br i1 %6839, label %sc_or_end1201, label %sc_or_rhs1200
sc_or_rhs1200:
  %6840 = load %nyx_string*, %nyx_string** %name.ptr
  %6841 = getelementptr [4 x i8], [4 x i8]* @.str958, i32 0, i32 0
  %6842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %6841, i64 3)
  %6843 = call i1 @nyx_string_equals(%nyx_string* %6840, %nyx_string* %6842)
  store i1 %6843, i1* %6823
  br label %sc_or_end1201
sc_or_end1201:
  %6844 = load i1, i1* %6823
  br i1 %6844, label %sc_or_end1203, label %sc_or_rhs1202
sc_or_rhs1202:
  %6845 = load %nyx_string*, %nyx_string** %name.ptr
  %6846 = getelementptr [7 x i8], [7 x i8]* @.str959, i32 0, i32 0
  %6847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %6846, i64 6)
  %6848 = call i1 @nyx_string_equals(%nyx_string* %6845, %nyx_string* %6847)
  store i1 %6848, i1* %6822
  br label %sc_or_end1203
sc_or_end1203:
  %6849 = load i1, i1* %6822
  br i1 %6849, label %sc_or_end1205, label %sc_or_rhs1204
sc_or_rhs1204:
  %6850 = load %nyx_string*, %nyx_string** %name.ptr
  %6851 = getelementptr [9 x i8], [9 x i8]* @.str960, i32 0, i32 0
  %6852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %6851, i64 8)
  %6853 = call i1 @nyx_string_equals(%nyx_string* %6850, %nyx_string* %6852)
  store i1 %6853, i1* %6821
  br label %sc_or_end1205
sc_or_end1205:
  %6854 = load i1, i1* %6821
  br i1 %6854, label %sc_or_end1207, label %sc_or_rhs1206
sc_or_rhs1206:
  %6855 = load %nyx_string*, %nyx_string** %name.ptr
  %6856 = getelementptr [8 x i8], [8 x i8]* @.str961, i32 0, i32 0
  %6857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %6856, i64 7)
  %6858 = call i1 @nyx_string_equals(%nyx_string* %6855, %nyx_string* %6857)
  store i1 %6858, i1* %6820
  br label %sc_or_end1207
sc_or_end1207:
  %6859 = load i1, i1* %6820
  br i1 %6859, label %sc_or_end1209, label %sc_or_rhs1208
sc_or_rhs1208:
  %6860 = load %nyx_string*, %nyx_string** %name.ptr
  %6861 = getelementptr [4 x i8], [4 x i8]* @.str962, i32 0, i32 0
  %6862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %6861, i64 3)
  %6863 = call i1 @nyx_string_equals(%nyx_string* %6860, %nyx_string* %6862)
  store i1 %6863, i1* %6819
  br label %sc_or_end1209
sc_or_end1209:
  %6864 = load i1, i1* %6819
  br i1 %6864, label %then1210, label %else1211
then1210:
  %6865 = getelementptr [23 x i8], [23 x i8]* @.str963, i32 0, i32 0
  %6866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %6865, i64 22)
  ret %nyx_string* %6866
else1211:
  br label %merge1212
merge1212:
  %6867 = alloca i1
  store i1 true, i1* %6867
  %6868 = alloca i1
  store i1 true, i1* %6868
  %6869 = alloca i1
  store i1 true, i1* %6869
  %6870 = load %nyx_string*, %nyx_string** %name.ptr
  %6871 = getelementptr [3 x i8], [3 x i8]* @.str964, i32 0, i32 0
  %6872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %6871, i64 2)
  %6873 = call i1 @nyx_string_equals(%nyx_string* %6870, %nyx_string* %6872)
  br i1 %6873, label %sc_or_end1214, label %sc_or_rhs1213
sc_or_rhs1213:
  %6874 = load %nyx_string*, %nyx_string** %name.ptr
  %6875 = getelementptr [5 x i8], [5 x i8]* @.str965, i32 0, i32 0
  %6876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %6875, i64 4)
  %6877 = call i1 @nyx_string_equals(%nyx_string* %6874, %nyx_string* %6876)
  store i1 %6877, i1* %6869
  br label %sc_or_end1214
sc_or_end1214:
  %6878 = load i1, i1* %6869
  br i1 %6878, label %sc_or_end1216, label %sc_or_rhs1215
sc_or_rhs1215:
  %6879 = load %nyx_string*, %nyx_string** %name.ptr
  %6880 = getelementptr [3 x i8], [3 x i8]* @.str966, i32 0, i32 0
  %6881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %6880, i64 2)
  %6882 = call i1 @nyx_string_equals(%nyx_string* %6879, %nyx_string* %6881)
  store i1 %6882, i1* %6868
  br label %sc_or_end1216
sc_or_end1216:
  %6883 = load i1, i1* %6868
  br i1 %6883, label %sc_or_end1218, label %sc_or_rhs1217
sc_or_rhs1217:
  %6884 = load %nyx_string*, %nyx_string** %name.ptr
  %6885 = getelementptr [5 x i8], [5 x i8]* @.str967, i32 0, i32 0
  %6886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %6885, i64 4)
  %6887 = call i1 @nyx_string_equals(%nyx_string* %6884, %nyx_string* %6886)
  store i1 %6887, i1* %6867
  br label %sc_or_end1218
sc_or_end1218:
  %6888 = load i1, i1* %6867
  br i1 %6888, label %then1219, label %else1220
then1219:
  %6889 = getelementptr [15 x i8], [15 x i8]* @.str968, i32 0, i32 0
  %6890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %6889, i64 14)
  ret %nyx_string* %6890
else1220:
  br label %merge1221
merge1221:
  %6891 = alloca i1
  store i1 true, i1* %6891
  %6892 = alloca i1
  store i1 true, i1* %6892
  %6893 = alloca i1
  store i1 true, i1* %6893
  %6894 = alloca i1
  store i1 true, i1* %6894
  %6895 = alloca i1
  store i1 true, i1* %6895
  %6896 = alloca i1
  store i1 true, i1* %6896
  %6897 = load %nyx_string*, %nyx_string** %name.ptr
  %6898 = getelementptr [4 x i8], [4 x i8]* @.str969, i32 0, i32 0
  %6899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %6898, i64 3)
  %6900 = call i1 @nyx_string_equals(%nyx_string* %6897, %nyx_string* %6899)
  br i1 %6900, label %sc_or_end1223, label %sc_or_rhs1222
sc_or_rhs1222:
  %6901 = load %nyx_string*, %nyx_string** %name.ptr
  %6902 = getelementptr [4 x i8], [4 x i8]* @.str970, i32 0, i32 0
  %6903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %6902, i64 3)
  %6904 = call i1 @nyx_string_equals(%nyx_string* %6901, %nyx_string* %6903)
  store i1 %6904, i1* %6896
  br label %sc_or_end1223
sc_or_end1223:
  %6905 = load i1, i1* %6896
  br i1 %6905, label %sc_or_end1225, label %sc_or_rhs1224
sc_or_rhs1224:
  %6906 = load %nyx_string*, %nyx_string** %name.ptr
  %6907 = getelementptr [4 x i8], [4 x i8]* @.str971, i32 0, i32 0
  %6908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %6907, i64 3)
  %6909 = call i1 @nyx_string_equals(%nyx_string* %6906, %nyx_string* %6908)
  store i1 %6909, i1* %6895
  br label %sc_or_end1225
sc_or_end1225:
  %6910 = load i1, i1* %6895
  br i1 %6910, label %sc_or_end1227, label %sc_or_rhs1226
sc_or_rhs1226:
  %6911 = load %nyx_string*, %nyx_string** %name.ptr
  %6912 = getelementptr [6 x i8], [6 x i8]* @.str972, i32 0, i32 0
  %6913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %6912, i64 5)
  %6914 = call i1 @nyx_string_equals(%nyx_string* %6911, %nyx_string* %6913)
  store i1 %6914, i1* %6894
  br label %sc_or_end1227
sc_or_end1227:
  %6915 = load i1, i1* %6894
  br i1 %6915, label %sc_or_end1229, label %sc_or_rhs1228
sc_or_rhs1228:
  %6916 = load %nyx_string*, %nyx_string** %name.ptr
  %6917 = getelementptr [4 x i8], [4 x i8]* @.str973, i32 0, i32 0
  %6918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %6917, i64 3)
  %6919 = call i1 @nyx_string_equals(%nyx_string* %6916, %nyx_string* %6918)
  store i1 %6919, i1* %6893
  br label %sc_or_end1229
sc_or_end1229:
  %6920 = load i1, i1* %6893
  br i1 %6920, label %sc_or_end1231, label %sc_or_rhs1230
sc_or_rhs1230:
  %6921 = load %nyx_string*, %nyx_string** %name.ptr
  %6922 = getelementptr [4 x i8], [4 x i8]* @.str974, i32 0, i32 0
  %6923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %6922, i64 3)
  %6924 = call i1 @nyx_string_equals(%nyx_string* %6921, %nyx_string* %6923)
  store i1 %6924, i1* %6892
  br label %sc_or_end1231
sc_or_end1231:
  %6925 = load i1, i1* %6892
  br i1 %6925, label %sc_or_end1233, label %sc_or_rhs1232
sc_or_rhs1232:
  %6926 = load %nyx_string*, %nyx_string** %name.ptr
  %6927 = getelementptr [5 x i8], [5 x i8]* @.str975, i32 0, i32 0
  %6928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %6927, i64 4)
  %6929 = call i1 @nyx_string_equals(%nyx_string* %6926, %nyx_string* %6928)
  store i1 %6929, i1* %6891
  br label %sc_or_end1233
sc_or_end1233:
  %6930 = load i1, i1* %6891
  br i1 %6930, label %then1234, label %else1235
then1234:
  %6931 = getelementptr [4 x i8], [4 x i8]* @.str976, i32 0, i32 0
  %6932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %6931, i64 3)
  ret %nyx_string* %6932
else1235:
  br label %merge1236
merge1236:
  %6933 = alloca i1
  store i1 true, i1* %6933
  %6934 = alloca i1
  store i1 true, i1* %6934
  %6935 = alloca i1
  store i1 true, i1* %6935
  %6936 = alloca i1
  store i1 true, i1* %6936
  %6937 = load %nyx_string*, %nyx_string** %name.ptr
  %6938 = getelementptr [7 x i8], [7 x i8]* @.str977, i32 0, i32 0
  %6939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %6938, i64 6)
  %6940 = call i1 @nyx_string_equals(%nyx_string* %6937, %nyx_string* %6939)
  br i1 %6940, label %sc_or_end1238, label %sc_or_rhs1237
sc_or_rhs1237:
  %6941 = load %nyx_string*, %nyx_string** %name.ptr
  %6942 = getelementptr [8 x i8], [8 x i8]* @.str978, i32 0, i32 0
  %6943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %6942, i64 7)
  %6944 = call i1 @nyx_string_equals(%nyx_string* %6941, %nyx_string* %6943)
  store i1 %6944, i1* %6936
  br label %sc_or_end1238
sc_or_end1238:
  %6945 = load i1, i1* %6936
  br i1 %6945, label %sc_or_end1240, label %sc_or_rhs1239
sc_or_rhs1239:
  %6946 = load %nyx_string*, %nyx_string** %name.ptr
  %6947 = getelementptr [10 x i8], [10 x i8]* @.str979, i32 0, i32 0
  %6948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %6947, i64 9)
  %6949 = call i1 @nyx_string_equals(%nyx_string* %6946, %nyx_string* %6948)
  store i1 %6949, i1* %6935
  br label %sc_or_end1240
sc_or_end1240:
  %6950 = load i1, i1* %6935
  br i1 %6950, label %sc_or_end1242, label %sc_or_rhs1241
sc_or_rhs1241:
  %6951 = load %nyx_string*, %nyx_string** %name.ptr
  %6952 = getelementptr [5 x i8], [5 x i8]* @.str980, i32 0, i32 0
  %6953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %6952, i64 4)
  %6954 = call i1 @nyx_string_equals(%nyx_string* %6951, %nyx_string* %6953)
  store i1 %6954, i1* %6934
  br label %sc_or_end1242
sc_or_end1242:
  %6955 = load i1, i1* %6934
  br i1 %6955, label %sc_or_end1244, label %sc_or_rhs1243
sc_or_rhs1243:
  %6956 = load %nyx_string*, %nyx_string** %name.ptr
  %6957 = getelementptr [6 x i8], [6 x i8]* @.str981, i32 0, i32 0
  %6958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %6957, i64 5)
  %6959 = call i1 @nyx_string_equals(%nyx_string* %6956, %nyx_string* %6958)
  store i1 %6959, i1* %6933
  br label %sc_or_end1244
sc_or_end1244:
  %6960 = load i1, i1* %6933
  br i1 %6960, label %then1245, label %else1246
then1245:
  %6961 = getelementptr [13 x i8], [13 x i8]* @.str982, i32 0, i32 0
  %6962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %6961, i64 12)
  ret %nyx_string* %6962
else1246:
  br label %merge1247
merge1247:
  %6963 = alloca i1
  store i1 true, i1* %6963
  %6964 = alloca i1
  store i1 true, i1* %6964
  %6965 = alloca i1
  store i1 true, i1* %6965
  %6966 = alloca i1
  store i1 true, i1* %6966
  %6967 = load %nyx_string*, %nyx_string** %name.ptr
  %6968 = getelementptr [7 x i8], [7 x i8]* @.str983, i32 0, i32 0
  %6969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %6968, i64 6)
  %6970 = call i1 @nyx_string_equals(%nyx_string* %6967, %nyx_string* %6969)
  br i1 %6970, label %sc_or_end1249, label %sc_or_rhs1248
sc_or_rhs1248:
  %6971 = load %nyx_string*, %nyx_string** %name.ptr
  %6972 = getelementptr [4 x i8], [4 x i8]* @.str984, i32 0, i32 0
  %6973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %6972, i64 3)
  %6974 = call i1 @nyx_string_equals(%nyx_string* %6971, %nyx_string* %6973)
  store i1 %6974, i1* %6966
  br label %sc_or_end1249
sc_or_end1249:
  %6975 = load i1, i1* %6966
  br i1 %6975, label %sc_or_end1251, label %sc_or_rhs1250
sc_or_rhs1250:
  %6976 = load %nyx_string*, %nyx_string** %name.ptr
  %6977 = getelementptr [5 x i8], [5 x i8]* @.str985, i32 0, i32 0
  %6978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %6977, i64 4)
  %6979 = call i1 @nyx_string_equals(%nyx_string* %6976, %nyx_string* %6978)
  store i1 %6979, i1* %6965
  br label %sc_or_end1251
sc_or_end1251:
  %6980 = load i1, i1* %6965
  br i1 %6980, label %sc_or_end1253, label %sc_or_rhs1252
sc_or_rhs1252:
  %6981 = load %nyx_string*, %nyx_string** %name.ptr
  %6982 = getelementptr [7 x i8], [7 x i8]* @.str986, i32 0, i32 0
  %6983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %6982, i64 6)
  %6984 = call i1 @nyx_string_equals(%nyx_string* %6981, %nyx_string* %6983)
  store i1 %6984, i1* %6964
  br label %sc_or_end1253
sc_or_end1253:
  %6985 = load i1, i1* %6964
  br i1 %6985, label %sc_or_end1255, label %sc_or_rhs1254
sc_or_rhs1254:
  %6986 = load %nyx_string*, %nyx_string** %name.ptr
  %6987 = getelementptr [5 x i8], [5 x i8]* @.str987, i32 0, i32 0
  %6988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %6987, i64 4)
  %6989 = call i1 @nyx_string_equals(%nyx_string* %6986, %nyx_string* %6988)
  store i1 %6989, i1* %6963
  br label %sc_or_end1255
sc_or_end1255:
  %6990 = load i1, i1* %6963
  br i1 %6990, label %then1256, label %else1257
then1256:
  %6991 = getelementptr [19 x i8], [19 x i8]* @.str988, i32 0, i32 0
  %6992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %6991, i64 18)
  ret %nyx_string* %6992
else1257:
  br label %merge1258
merge1258:
  %6993 = alloca i1
  store i1 true, i1* %6993
  %6994 = load %nyx_string*, %nyx_string** %name.ptr
  %6995 = getelementptr [5 x i8], [5 x i8]* @.str989, i32 0, i32 0
  %6996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %6995, i64 4)
  %6997 = call i1 @nyx_string_equals(%nyx_string* %6994, %nyx_string* %6996)
  br i1 %6997, label %sc_or_end1260, label %sc_or_rhs1259
sc_or_rhs1259:
  %6998 = load %nyx_string*, %nyx_string** %name.ptr
  %6999 = getelementptr [9 x i8], [9 x i8]* @.str990, i32 0, i32 0
  %7000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %6999, i64 8)
  %7001 = call i1 @nyx_string_equals(%nyx_string* %6998, %nyx_string* %7000)
  store i1 %7001, i1* %6993
  br label %sc_or_end1260
sc_or_end1260:
  %7002 = load i1, i1* %6993
  br i1 %7002, label %then1261, label %else1262
then1261:
  %7003 = getelementptr [7 x i8], [7 x i8]* @.str991, i32 0, i32 0
  %7004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %7003, i64 6)
  ret %nyx_string* %7004
else1262:
  br label %merge1263
merge1263:
  %7005 = alloca i1
  store i1 true, i1* %7005
  %7006 = alloca i1
  store i1 true, i1* %7006
  %7007 = alloca i1
  store i1 true, i1* %7007
  %7008 = load %nyx_string*, %nyx_string** %name.ptr
  %7009 = getelementptr [7 x i8], [7 x i8]* @.str992, i32 0, i32 0
  %7010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %7009, i64 6)
  %7011 = call i1 @nyx_string_equals(%nyx_string* %7008, %nyx_string* %7010)
  br i1 %7011, label %sc_or_end1265, label %sc_or_rhs1264
sc_or_rhs1264:
  %7012 = load %nyx_string*, %nyx_string** %name.ptr
  %7013 = getelementptr [8 x i8], [8 x i8]* @.str993, i32 0, i32 0
  %7014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %7013, i64 7)
  %7015 = call i1 @nyx_string_equals(%nyx_string* %7012, %nyx_string* %7014)
  store i1 %7015, i1* %7007
  br label %sc_or_end1265
sc_or_end1265:
  %7016 = load i1, i1* %7007
  br i1 %7016, label %sc_or_end1267, label %sc_or_rhs1266
sc_or_rhs1266:
  %7017 = load %nyx_string*, %nyx_string** %name.ptr
  %7018 = getelementptr [14 x i8], [14 x i8]* @.str994, i32 0, i32 0
  %7019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %7018, i64 13)
  %7020 = call i1 @nyx_string_equals(%nyx_string* %7017, %nyx_string* %7019)
  store i1 %7020, i1* %7006
  br label %sc_or_end1267
sc_or_end1267:
  %7021 = load i1, i1* %7006
  br i1 %7021, label %sc_or_end1269, label %sc_or_rhs1268
sc_or_rhs1268:
  %7022 = load %nyx_string*, %nyx_string** %name.ptr
  %7023 = getelementptr [6 x i8], [6 x i8]* @.str995, i32 0, i32 0
  %7024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %7023, i64 5)
  %7025 = call i1 @nyx_string_equals(%nyx_string* %7022, %nyx_string* %7024)
  store i1 %7025, i1* %7005
  br label %sc_or_end1269
sc_or_end1269:
  %7026 = load i1, i1* %7005
  br i1 %7026, label %then1270, label %else1271
then1270:
  %7027 = getelementptr [16 x i8], [16 x i8]* @.str996, i32 0, i32 0
  %7028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %7027, i64 15)
  ret %nyx_string* %7028
else1271:
  br label %merge1272
merge1272:
  %7029 = alloca i1
  store i1 true, i1* %7029
  %7030 = alloca i1
  store i1 true, i1* %7030
  %7031 = alloca i1
  store i1 true, i1* %7031
  %7032 = alloca i1
  store i1 true, i1* %7032
  %7033 = alloca i1
  store i1 true, i1* %7033
  %7034 = alloca i1
  store i1 true, i1* %7034
  %7035 = alloca i1
  store i1 true, i1* %7035
  %7036 = load %nyx_string*, %nyx_string** %name.ptr
  %7037 = getelementptr [4 x i8], [4 x i8]* @.str997, i32 0, i32 0
  %7038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %7037, i64 3)
  %7039 = call i1 @nyx_string_equals(%nyx_string* %7036, %nyx_string* %7038)
  br i1 %7039, label %sc_or_end1274, label %sc_or_rhs1273
sc_or_rhs1273:
  %7040 = load %nyx_string*, %nyx_string** %name.ptr
  %7041 = getelementptr [6 x i8], [6 x i8]* @.str998, i32 0, i32 0
  %7042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %7041, i64 5)
  %7043 = call i1 @nyx_string_equals(%nyx_string* %7040, %nyx_string* %7042)
  store i1 %7043, i1* %7035
  br label %sc_or_end1274
sc_or_end1274:
  %7044 = load i1, i1* %7035
  br i1 %7044, label %sc_or_end1276, label %sc_or_rhs1275
sc_or_rhs1275:
  %7045 = load %nyx_string*, %nyx_string** %name.ptr
  %7046 = getelementptr [11 x i8], [11 x i8]* @.str999, i32 0, i32 0
  %7047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %7046, i64 10)
  %7048 = call i1 @nyx_string_equals(%nyx_string* %7045, %nyx_string* %7047)
  store i1 %7048, i1* %7034
  br label %sc_or_end1276
sc_or_end1276:
  %7049 = load i1, i1* %7034
  br i1 %7049, label %sc_or_end1278, label %sc_or_rhs1277
sc_or_rhs1277:
  %7050 = load %nyx_string*, %nyx_string** %name.ptr
  %7051 = getelementptr [6 x i8], [6 x i8]* @.str1000, i32 0, i32 0
  %7052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %7051, i64 5)
  %7053 = call i1 @nyx_string_equals(%nyx_string* %7050, %nyx_string* %7052)
  store i1 %7053, i1* %7033
  br label %sc_or_end1278
sc_or_end1278:
  %7054 = load i1, i1* %7033
  br i1 %7054, label %sc_or_end1280, label %sc_or_rhs1279
sc_or_rhs1279:
  %7055 = load %nyx_string*, %nyx_string** %name.ptr
  %7056 = getelementptr [9 x i8], [9 x i8]* @.str1001, i32 0, i32 0
  %7057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %7056, i64 8)
  %7058 = call i1 @nyx_string_equals(%nyx_string* %7055, %nyx_string* %7057)
  store i1 %7058, i1* %7032
  br label %sc_or_end1280
sc_or_end1280:
  %7059 = load i1, i1* %7032
  br i1 %7059, label %sc_or_end1282, label %sc_or_rhs1281
sc_or_rhs1281:
  %7060 = load %nyx_string*, %nyx_string** %name.ptr
  %7061 = getelementptr [14 x i8], [14 x i8]* @.str1002, i32 0, i32 0
  %7062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %7061, i64 13)
  %7063 = call i1 @nyx_string_equals(%nyx_string* %7060, %nyx_string* %7062)
  store i1 %7063, i1* %7031
  br label %sc_or_end1282
sc_or_end1282:
  %7064 = load i1, i1* %7031
  br i1 %7064, label %sc_or_end1284, label %sc_or_rhs1283
sc_or_rhs1283:
  %7065 = load %nyx_string*, %nyx_string** %name.ptr
  %7066 = getelementptr [6 x i8], [6 x i8]* @.str1003, i32 0, i32 0
  %7067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %7066, i64 5)
  %7068 = call i1 @nyx_string_equals(%nyx_string* %7065, %nyx_string* %7067)
  store i1 %7068, i1* %7030
  br label %sc_or_end1284
sc_or_end1284:
  %7069 = load i1, i1* %7030
  br i1 %7069, label %sc_or_end1286, label %sc_or_rhs1285
sc_or_rhs1285:
  %7070 = load %nyx_string*, %nyx_string** %name.ptr
  %7071 = getelementptr [7 x i8], [7 x i8]* @.str1004, i32 0, i32 0
  %7072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %7071, i64 6)
  %7073 = call i1 @nyx_string_equals(%nyx_string* %7070, %nyx_string* %7072)
  store i1 %7073, i1* %7029
  br label %sc_or_end1286
sc_or_end1286:
  %7074 = load i1, i1* %7029
  br i1 %7074, label %then1287, label %else1288
then1287:
  %7075 = getelementptr [26 x i8], [26 x i8]* @.str1005, i32 0, i32 0
  %7076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %7075, i64 25)
  ret %nyx_string* %7076
else1288:
  br label %merge1289
merge1289:
  %7077 = alloca i1
  store i1 true, i1* %7077
  %7078 = alloca i1
  store i1 true, i1* %7078
  %7079 = alloca i1
  store i1 true, i1* %7079
  %7080 = load %nyx_string*, %nyx_string** %name.ptr
  %7081 = getelementptr [6 x i8], [6 x i8]* @.str1006, i32 0, i32 0
  %7082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %7081, i64 5)
  %7083 = call i1 @nyx_string_equals(%nyx_string* %7080, %nyx_string* %7082)
  br i1 %7083, label %sc_or_end1291, label %sc_or_rhs1290
sc_or_rhs1290:
  %7084 = load %nyx_string*, %nyx_string** %name.ptr
  %7085 = getelementptr [4 x i8], [4 x i8]* @.str1007, i32 0, i32 0
  %7086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %7085, i64 3)
  %7087 = call i1 @nyx_string_equals(%nyx_string* %7084, %nyx_string* %7086)
  store i1 %7087, i1* %7079
  br label %sc_or_end1291
sc_or_end1291:
  %7088 = load i1, i1* %7079
  br i1 %7088, label %sc_or_end1293, label %sc_or_rhs1292
sc_or_rhs1292:
  %7089 = load %nyx_string*, %nyx_string** %name.ptr
  %7090 = getelementptr [3 x i8], [3 x i8]* @.str1008, i32 0, i32 0
  %7091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %7090, i64 2)
  %7092 = call i1 @nyx_string_equals(%nyx_string* %7089, %nyx_string* %7091)
  store i1 %7092, i1* %7078
  br label %sc_or_end1293
sc_or_end1293:
  %7093 = load i1, i1* %7078
  br i1 %7093, label %sc_or_end1295, label %sc_or_rhs1294
sc_or_rhs1294:
  %7094 = load %nyx_string*, %nyx_string** %name.ptr
  %7095 = getelementptr [10 x i8], [10 x i8]* @.str1009, i32 0, i32 0
  %7096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %7095, i64 9)
  %7097 = call i1 @nyx_string_equals(%nyx_string* %7094, %nyx_string* %7096)
  store i1 %7097, i1* %7077
  br label %sc_or_end1295
sc_or_end1295:
  %7098 = load i1, i1* %7077
  br i1 %7098, label %then1296, label %else1297
then1296:
  %7099 = getelementptr [8 x i8], [8 x i8]* @.str1010, i32 0, i32 0
  %7100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %7099, i64 7)
  ret %nyx_string* %7100
else1297:
  br label %merge1298
merge1298:
  %7101 = alloca i1
  store i1 true, i1* %7101
  %7102 = alloca i1
  store i1 true, i1* %7102
  %7103 = alloca i1
  store i1 true, i1* %7103
  %7104 = alloca i1
  store i1 true, i1* %7104
  %7105 = alloca i1
  store i1 true, i1* %7105
  %7106 = alloca i1
  store i1 true, i1* %7106
  %7107 = load %nyx_string*, %nyx_string** %name.ptr
  %7108 = getelementptr [5 x i8], [5 x i8]* @.str1011, i32 0, i32 0
  %7109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %7108, i64 4)
  %7110 = call i1 @nyx_string_equals(%nyx_string* %7107, %nyx_string* %7109)
  br i1 %7110, label %sc_or_end1300, label %sc_or_rhs1299
sc_or_rhs1299:
  %7111 = load %nyx_string*, %nyx_string** %name.ptr
  %7112 = getelementptr [4 x i8], [4 x i8]* @.str1012, i32 0, i32 0
  %7113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %7112, i64 3)
  %7114 = call i1 @nyx_string_equals(%nyx_string* %7111, %nyx_string* %7113)
  store i1 %7114, i1* %7106
  br label %sc_or_end1300
sc_or_end1300:
  %7115 = load i1, i1* %7106
  br i1 %7115, label %sc_or_end1302, label %sc_or_rhs1301
sc_or_rhs1301:
  %7116 = load %nyx_string*, %nyx_string** %name.ptr
  %7117 = getelementptr [4 x i8], [4 x i8]* @.str1013, i32 0, i32 0
  %7118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %7117, i64 3)
  %7119 = call i1 @nyx_string_equals(%nyx_string* %7116, %nyx_string* %7118)
  store i1 %7119, i1* %7105
  br label %sc_or_end1302
sc_or_end1302:
  %7120 = load i1, i1* %7105
  br i1 %7120, label %sc_or_end1304, label %sc_or_rhs1303
sc_or_rhs1303:
  %7121 = load %nyx_string*, %nyx_string** %name.ptr
  %7122 = getelementptr [8 x i8], [8 x i8]* @.str1014, i32 0, i32 0
  %7123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %7122, i64 7)
  %7124 = call i1 @nyx_string_equals(%nyx_string* %7121, %nyx_string* %7123)
  store i1 %7124, i1* %7104
  br label %sc_or_end1304
sc_or_end1304:
  %7125 = load i1, i1* %7104
  br i1 %7125, label %sc_or_end1306, label %sc_or_rhs1305
sc_or_rhs1305:
  %7126 = load %nyx_string*, %nyx_string** %name.ptr
  %7127 = getelementptr [7 x i8], [7 x i8]* @.str1015, i32 0, i32 0
  %7128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %7127, i64 6)
  %7129 = call i1 @nyx_string_equals(%nyx_string* %7126, %nyx_string* %7128)
  store i1 %7129, i1* %7103
  br label %sc_or_end1306
sc_or_end1306:
  %7130 = load i1, i1* %7103
  br i1 %7130, label %sc_or_end1308, label %sc_or_rhs1307
sc_or_rhs1307:
  %7131 = load %nyx_string*, %nyx_string** %name.ptr
  %7132 = getelementptr [8 x i8], [8 x i8]* @.str1016, i32 0, i32 0
  %7133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %7132, i64 7)
  %7134 = call i1 @nyx_string_equals(%nyx_string* %7131, %nyx_string* %7133)
  store i1 %7134, i1* %7102
  br label %sc_or_end1308
sc_or_end1308:
  %7135 = load i1, i1* %7102
  br i1 %7135, label %sc_or_end1310, label %sc_or_rhs1309
sc_or_rhs1309:
  %7136 = load %nyx_string*, %nyx_string** %name.ptr
  %7137 = getelementptr [11 x i8], [11 x i8]* @.str1017, i32 0, i32 0
  %7138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %7137, i64 10)
  %7139 = call i1 @nyx_string_equals(%nyx_string* %7136, %nyx_string* %7138)
  store i1 %7139, i1* %7101
  br label %sc_or_end1310
sc_or_end1310:
  %7140 = load i1, i1* %7101
  br i1 %7140, label %then1311, label %else1312
then1311:
  %7141 = getelementptr [14 x i8], [14 x i8]* @.str1018, i32 0, i32 0
  %7142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %7141, i64 13)
  ret %nyx_string* %7142
else1312:
  br label %merge1313
merge1313:
  %7143 = getelementptr [1 x i8], [1 x i8]* @.str1019, i32 0, i32 0
  %7144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %7143, i64 0)
  ret %nyx_string* %7144
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %7145 = alloca i64
  store i64 0, i64* %7145
  %7146 = alloca i64
  store i64 0, i64* %7146
  %7147 = call i8* @llvm.stacksave()
  br label %while_cond1314
while_cond1314:
  %7148 = load i64, i64* %7146
  %7149 = load %nyx_string*, %nyx_string** %s.ptr
  %7150 = call i64 @nyx_string_byte_length(%nyx_string* %7149)
  %7151 = icmp slt i64 %7148, %7150
  br i1 %7151, label %while_body1315, label %while_end1316
while_body1315:
  call void @llvm.stackrestore(i8* %7147)
  %7152 = load %nyx_string*, %nyx_string** %s.ptr
  %7153 = load i64, i64* %7146
  %7154 = call i8 @nyx_string_char_at(%nyx_string* %7152, i64 %7153)
  %7155 = zext i8 %7154 to i64
  %7156 = trunc i64 %7155 to i8
  %7157 = alloca i8
  store i8 %7156, i8* %7157
  %7158 = load i8, i8* %7157
  %7159 = getelementptr [1 x i8], [1 x i8]* @.str1020, i32 0, i32 0
  %7160 = load i8, i8* %7159
  %7161 = zext i8 %7160 to i64
  %7162 = zext i8 %7158 to i64
  %7163 = icmp eq i64 %7162, %7161
  br i1 %7163, label %then1317, label %else1318
then1317:
  %7164 = load i64, i64* %7145
  %7165 = add i64 %7164, 1
  store i64 %7165, i64* %7145
  br label %merge1319
else1318:
  br label %merge1319
merge1319:
  %7166 = load i8, i8* %7157
  %7167 = getelementptr [1 x i8], [1 x i8]* @.str1021, i32 0, i32 0
  %7168 = load i8, i8* %7167
  %7169 = zext i8 %7168 to i64
  %7170 = zext i8 %7166 to i64
  %7171 = icmp eq i64 %7170, %7169
  br i1 %7171, label %then1320, label %else1321
then1320:
  %7172 = load i64, i64* %7145
  %7173 = sub i64 %7172, 1
  store i64 %7173, i64* %7145
  br label %merge1322
else1321:
  br label %merge1322
merge1322:
  %7174 = load i64, i64* %7146
  %7175 = add i64 %7174, 1
  store i64 %7175, i64* %7146
  br label %while_cond1314
while_end1316:
  %7176 = load i64, i64* %7145
  ret i64 %7176
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %7177 = load %nyx_string*, %nyx_string** %filename.ptr
  %7178 = load %nyx_string*, %nyx_string** %filename.ptr
  %7179 = call i64 @nyx_string_byte_length(%nyx_string* %7178)
  %7180 = sub i64 %7179, 3
  %7181 = call %nyx_string* @nyx_string_substring(%nyx_string* %7177, i64 0, i64 %7180)
  %7182 = alloca %nyx_string*
  store %nyx_string* %7181, %nyx_string** %7182
  %7183 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %7184 = getelementptr [2 x i8], [2 x i8]* @.str1022, i32 0, i32 0
  %7185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %7184, i64 1)
  %7186 = call %nyx_string* @nyx_string_concat(%nyx_string* %7183, %nyx_string* %7185)
  %7187 = load %nyx_string*, %nyx_string** %filename.ptr
  %7188 = call %nyx_string* @nyx_string_concat(%nyx_string* %7186, %nyx_string* %7187)
  %7189 = call i8* @nyx_string_to_cstr(%nyx_string* %7188)
  %7190 = call %nyx_string* @nyx_read_file(i8* %7189)
  %7191 = alloca %nyx_string*
  store %nyx_string* %7190, %nyx_string** %7191
  %7192 = load %nyx_string*, %nyx_string** %7191
  %7193 = getelementptr [2 x i8], [2 x i8]* @.str1023, i32 0, i32 0
  %7194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %7193, i64 1)
  %7195 = call { i64, i8* }* @nyx_string_split(%nyx_string* %7192, %nyx_string* %7194)
  %7196 = alloca { i64, i8* }*
  store { i64, i8* }* %7195, { i64, i8* }** %7196
  %7197 = getelementptr [1 x i8], [1 x i8]* @.str1024, i32 0, i32 0
  %7198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %7197, i64 0)
  %7199 = alloca %nyx_string*
  store %nyx_string* %7198, %nyx_string** %7199
  %7200 = getelementptr [1 x i8], [1 x i8]* @.str1025, i32 0, i32 0
  %7201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %7200, i64 0)
  %7202 = alloca %nyx_string*
  store %nyx_string* %7201, %nyx_string** %7202
  %7203 = alloca i64
  store i64 0, i64* %7203
  %7204 = alloca i64
  store i64 0, i64* %7204
  %7205 = getelementptr [4 x i8], [4 x i8]* @.str1026, i32 0, i32 0
  %7206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %7205, i64 3)
  %7207 = alloca %nyx_string*
  store %nyx_string* %7206, %nyx_string** %7207
  %7208 = getelementptr [1 x i8], [1 x i8]* @.str1027, i32 0, i32 0
  %7209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %7208, i64 0)
  %7210 = alloca %nyx_string*
  store %nyx_string* %7209, %nyx_string** %7210
  %7211 = getelementptr [2 x i8], [2 x i8]* @.str1028, i32 0, i32 0
  %7212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %7211, i64 1)
  %7213 = alloca %nyx_string*
  store %nyx_string* %7212, %nyx_string** %7213
  %7214 = getelementptr [8 x i8], [8 x i8]* @.str1029, i32 0, i32 0
  %7215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %7214, i64 7)
  %7216 = alloca %nyx_string*
  store %nyx_string* %7215, %nyx_string** %7216
  %7217 = getelementptr [11 x i8], [11 x i8]* @.str1030, i32 0, i32 0
  %7218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %7217, i64 10)
  %7219 = alloca %nyx_string*
  store %nyx_string* %7218, %nyx_string** %7219
  %7220 = getelementptr [14 x i8], [14 x i8]* @.str1031, i32 0, i32 0
  %7221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %7220, i64 13)
  %7222 = alloca %nyx_string*
  store %nyx_string* %7221, %nyx_string** %7222
  %7223 = getelementptr [17 x i8], [17 x i8]* @.str1032, i32 0, i32 0
  %7224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %7223, i64 16)
  %7225 = alloca %nyx_string*
  store %nyx_string* %7224, %nyx_string** %7225
  %7226 = getelementptr [4 x i8], [4 x i8]* @.str1033, i32 0, i32 0
  %7227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %7226, i64 3)
  %7228 = alloca %nyx_string*
  store %nyx_string* %7227, %nyx_string** %7228
  %7229 = getelementptr [2 x i8], [2 x i8]* @.str1034, i32 0, i32 0
  %7230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %7229, i64 1)
  %7231 = alloca %nyx_string*
  store %nyx_string* %7230, %nyx_string** %7231
  %7232 = getelementptr [6 x i8], [6 x i8]* @.str1035, i32 0, i32 0
  %7233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %7232, i64 5)
  %7234 = alloca %nyx_string*
  store %nyx_string* %7233, %nyx_string** %7234
  %7235 = getelementptr [2 x i8], [2 x i8]* @.str1036, i32 0, i32 0
  %7236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %7235, i64 1)
  %7237 = alloca %nyx_string*
  store %nyx_string* %7236, %nyx_string** %7237
  %7238 = call i8* @llvm.stacksave()
  br label %while_cond1323
while_cond1323:
  %7239 = load i64, i64* %7204
  %7240 = load { i64, i8* }*, { i64, i8* }** %7196
  %7241 = call i64 @nyx_array_length({ i64, i8* }* %7240)
  %7242 = icmp slt i64 %7239, %7241
  br i1 %7242, label %while_body1324, label %while_end1325
while_body1324:
  call void @llvm.stackrestore(i8* %7238)
  %7243 = load { i64, i8* }*, { i64, i8* }** %7196
  %7244 = load i64, i64* %7204
  %7245 = call i64 @nyx_array_get_checked({ i64, i8* }* %7243, i64 %7244, i64 2)
  %7246 = inttoptr i64 %7245 to %nyx_string*
  %7247 = alloca %nyx_string*
  store %nyx_string* %7246, %nyx_string** %7247
  %7248 = load %nyx_string*, %nyx_string** %7247
  %7249 = call %nyx_string* @nyx_string_trim(%nyx_string* %7248)
  %7250 = alloca %nyx_string*
  store %nyx_string* %7249, %nyx_string** %7250
  %7251 = load %nyx_string*, %nyx_string** %7250
  %7252 = load %nyx_string*, %nyx_string** %7207
  %7253 = call i1 @nyx_string_starts_with(%nyx_string* %7251, %nyx_string* %7252)
  br i1 %7253, label %then1326, label %else1327
then1326:
  %7254 = load %nyx_string*, %nyx_string** %7250
  %7255 = load %nyx_string*, %nyx_string** %7250
  %7256 = call i64 @nyx_string_byte_length(%nyx_string* %7255)
  %7257 = call %nyx_string* @nyx_string_substring(%nyx_string* %7254, i64 3, i64 %7256)
  %7258 = alloca %nyx_string*
  store %nyx_string* %7257, %nyx_string** %7258
  %7259 = load %nyx_string*, %nyx_string** %7258
  %7260 = call %nyx_string* @nyx_string_trim(%nyx_string* %7259)
  %7261 = alloca %nyx_string*
  store %nyx_string* %7260, %nyx_string** %7261
  %7262 = load %nyx_string*, %nyx_string** %7202
  %7263 = load %nyx_string*, %nyx_string** %7210
  %7264 = call i1 @nyx_string_equals(%nyx_string* %7262, %nyx_string* %7263)
  br i1 %7264, label %then1329, label %else1330
then1329:
  %7265 = load %nyx_string*, %nyx_string** %7261
  store %nyx_string* %7265, %nyx_string** %7202
  br label %merge1331
else1330:
  %7266 = load %nyx_string*, %nyx_string** %7202
  %7267 = load %nyx_string*, %nyx_string** %7213
  %7268 = call %nyx_string* @nyx_string_concat(%nyx_string* %7266, %nyx_string* %7267)
  %7269 = load %nyx_string*, %nyx_string** %7261
  %7270 = call %nyx_string* @nyx_string_concat(%nyx_string* %7268, %nyx_string* %7269)
  store %nyx_string* %7270, %nyx_string** %7202
  br label %merge1331
merge1331:
  br label %merge1328
else1327:
  %7271 = alloca i1
  store i1 true, i1* %7271
  %7272 = alloca i1
  store i1 true, i1* %7272
  %7273 = alloca i1
  store i1 true, i1* %7273
  %7274 = load %nyx_string*, %nyx_string** %7250
  %7275 = load %nyx_string*, %nyx_string** %7216
  %7276 = call i1 @nyx_string_starts_with(%nyx_string* %7274, %nyx_string* %7275)
  br i1 %7276, label %sc_or_end1333, label %sc_or_rhs1332
sc_or_rhs1332:
  %7277 = load %nyx_string*, %nyx_string** %7250
  %7278 = load %nyx_string*, %nyx_string** %7219
  %7279 = call i1 @nyx_string_starts_with(%nyx_string* %7277, %nyx_string* %7278)
  store i1 %7279, i1* %7273
  br label %sc_or_end1333
sc_or_end1333:
  %7280 = load i1, i1* %7273
  br i1 %7280, label %sc_or_end1335, label %sc_or_rhs1334
sc_or_rhs1334:
  %7281 = load %nyx_string*, %nyx_string** %7250
  %7282 = load %nyx_string*, %nyx_string** %7222
  %7283 = call i1 @nyx_string_starts_with(%nyx_string* %7281, %nyx_string* %7282)
  store i1 %7283, i1* %7272
  br label %sc_or_end1335
sc_or_end1335:
  %7284 = load i1, i1* %7272
  br i1 %7284, label %sc_or_end1337, label %sc_or_rhs1336
sc_or_rhs1336:
  %7285 = load %nyx_string*, %nyx_string** %7250
  %7286 = load %nyx_string*, %nyx_string** %7225
  %7287 = call i1 @nyx_string_starts_with(%nyx_string* %7285, %nyx_string* %7286)
  store i1 %7287, i1* %7271
  br label %sc_or_end1337
sc_or_end1337:
  %7288 = load i1, i1* %7271
  %7289 = alloca i1
  store i1 %7288, i1* %7289
  %7290 = load i1, i1* %7289
  br i1 %7290, label %then1338, label %else1339
then1338:
  %7291 = load %nyx_string*, %nyx_string** %7250
  %7292 = alloca %nyx_string*
  store %nyx_string* %7291, %nyx_string** %7292
  %7293 = load %nyx_string*, %nyx_string** %7292
  %7294 = call i64 @capabilities_paren_delta(%nyx_string* %7293)
  %7295 = alloca i64
  store i64 %7294, i64* %7295
  %7296 = call i8* @llvm.stacksave()
  br label %while_cond1341
while_cond1341:
  %7297 = alloca i1
  store i1 false, i1* %7297
  %7298 = load i64, i64* %7295
  %7299 = icmp sgt i64 %7298, 0
  br i1 %7299, label %sc_and_rhs1344, label %sc_and_end1345
sc_and_rhs1344:
  %7300 = load i64, i64* %7204
  %7301 = add i64 %7300, 1
  %7302 = load { i64, i8* }*, { i64, i8* }** %7196
  %7303 = call i64 @nyx_array_length({ i64, i8* }* %7302)
  %7304 = icmp slt i64 %7301, %7303
  store i1 %7304, i1* %7297
  br label %sc_and_end1345
sc_and_end1345:
  %7305 = load i1, i1* %7297
  br i1 %7305, label %while_body1342, label %while_end1343
while_body1342:
  call void @llvm.stackrestore(i8* %7296)
  %7306 = load i64, i64* %7204
  %7307 = add i64 %7306, 1
  store i64 %7307, i64* %7204
  %7308 = load { i64, i8* }*, { i64, i8* }** %7196
  %7309 = load i64, i64* %7204
  %7310 = call i64 @nyx_array_get_checked({ i64, i8* }* %7308, i64 %7309, i64 2)
  %7311 = inttoptr i64 %7310 to %nyx_string*
  %7312 = call %nyx_string* @nyx_string_trim(%nyx_string* %7311)
  %7313 = alloca %nyx_string*
  store %nyx_string* %7312, %nyx_string** %7313
  %7314 = load %nyx_string*, %nyx_string** %7313
  %7315 = load %nyx_string*, %nyx_string** %7210
  %7316 = call i1 @nyx_string_equals(%nyx_string* %7314, %nyx_string* %7315)
  %7317 = xor i1 %7316, true
  br i1 %7317, label %then1346, label %else1347
then1346:
  %7318 = alloca i1
  store i1 false, i1* %7318
  %7319 = load %nyx_string*, %nyx_string** %7292
  %7320 = call i64 @nyx_string_byte_length(%nyx_string* %7319)
  %7321 = icmp sgt i64 %7320, 0
  br i1 %7321, label %sc_and_rhs1349, label %sc_and_end1350
sc_and_rhs1349:
  %7322 = load %nyx_string*, %nyx_string** %7292
  %7323 = load %nyx_string*, %nyx_string** %7292
  %7324 = call i64 @nyx_string_byte_length(%nyx_string* %7323)
  %7325 = sub i64 %7324, 1
  %7326 = call i8 @nyx_string_char_at(%nyx_string* %7322, i64 %7325)
  %7327 = zext i8 %7326 to i64
  %7328 = getelementptr [1 x i8], [1 x i8]* @.str1037, i32 0, i32 0
  %7329 = load i8, i8* %7328
  %7330 = zext i8 %7329 to i64
  %7331 = icmp eq i64 %7327, %7330
  store i1 %7331, i1* %7318
  br label %sc_and_end1350
sc_and_end1350:
  %7332 = load i1, i1* %7318
  br i1 %7332, label %then1351, label %else1352
then1351:
  %7333 = load %nyx_string*, %nyx_string** %7292
  %7334 = load %nyx_string*, %nyx_string** %7313
  %7335 = call %nyx_string* @nyx_string_concat(%nyx_string* %7333, %nyx_string* %7334)
  store %nyx_string* %7335, %nyx_string** %7292
  br label %merge1353
else1352:
  %7336 = load %nyx_string*, %nyx_string** %7292
  %7337 = load %nyx_string*, %nyx_string** %7213
  %7338 = call %nyx_string* @nyx_string_concat(%nyx_string* %7336, %nyx_string* %7337)
  %7339 = load %nyx_string*, %nyx_string** %7313
  %7340 = call %nyx_string* @nyx_string_concat(%nyx_string* %7338, %nyx_string* %7339)
  store %nyx_string* %7340, %nyx_string** %7292
  br label %merge1353
merge1353:
  br label %merge1348
else1347:
  br label %merge1348
merge1348:
  %7341 = load i64, i64* %7295
  %7342 = load %nyx_string*, %nyx_string** %7313
  %7343 = call i64 @capabilities_paren_delta(%nyx_string* %7342)
  %7344 = add i64 %7341, %7343
  store i64 %7344, i64* %7295
  br label %while_cond1341
while_end1343:
  %7345 = sub i64 0, 1
  %7346 = alloca i64
  store i64 %7345, i64* %7346
  %7347 = alloca i64
  store i64 0, i64* %7347
  %7348 = call i8* @llvm.stacksave()
  br label %while_cond1354
while_cond1354:
  %7349 = load i64, i64* %7347
  %7350 = load %nyx_string*, %nyx_string** %7292
  %7351 = call i64 @nyx_string_byte_length(%nyx_string* %7350)
  %7352 = icmp slt i64 %7349, %7351
  br i1 %7352, label %while_body1355, label %while_end1356
while_body1355:
  call void @llvm.stackrestore(i8* %7348)
  %7353 = load %nyx_string*, %nyx_string** %7292
  %7354 = load i64, i64* %7347
  %7355 = call i8 @nyx_string_char_at(%nyx_string* %7353, i64 %7354)
  %7356 = zext i8 %7355 to i64
  %7357 = trunc i64 %7356 to i8
  %7358 = alloca i8
  store i8 %7357, i8* %7358
  %7359 = alloca i1
  store i1 false, i1* %7359
  %7360 = load i8, i8* %7358
  %7361 = getelementptr [1 x i8], [1 x i8]* @.str1038, i32 0, i32 0
  %7362 = load i8, i8* %7361
  %7363 = zext i8 %7362 to i64
  %7364 = zext i8 %7360 to i64
  %7365 = icmp eq i64 %7364, %7363
  br i1 %7365, label %sc_and_rhs1357, label %sc_and_end1358
sc_and_rhs1357:
  %7366 = load i64, i64* %7346
  %7367 = sub i64 0, 1
  %7368 = icmp eq i64 %7366, %7367
  store i1 %7368, i1* %7359
  br label %sc_and_end1358
sc_and_end1358:
  %7369 = load i1, i1* %7359
  br i1 %7369, label %then1359, label %else1360
then1359:
  %7370 = load i64, i64* %7347
  store i64 %7370, i64* %7346
  br label %merge1361
else1360:
  br label %merge1361
merge1361:
  %7371 = load i64, i64* %7347
  %7372 = add i64 %7371, 1
  store i64 %7372, i64* %7347
  br label %while_cond1354
while_end1356:
  %7373 = load i64, i64* %7346
  %7374 = icmp sge i64 %7373, 0
  br i1 %7374, label %then1362, label %else1363
then1362:
  %7375 = load %nyx_string*, %nyx_string** %7292
  %7376 = load i64, i64* %7346
  %7377 = call %nyx_string* @nyx_string_substring(%nyx_string* %7375, i64 0, i64 %7376)
  store %nyx_string* %7377, %nyx_string** %7292
  br label %merge1364
else1363:
  br label %merge1364
merge1364:
  %7378 = load %nyx_string*, %nyx_string** %7292
  %7379 = call %nyx_string* @nyx_string_trim(%nyx_string* %7378)
  %7380 = alloca %nyx_string*
  store %nyx_string* %7379, %nyx_string** %7380
  %7381 = load %nyx_string*, %nyx_string** %7199
  %7382 = load %nyx_string*, %nyx_string** %7228
  %7383 = call %nyx_string* @nyx_string_concat(%nyx_string* %7381, %nyx_string* %7382)
  %7384 = load %nyx_string*, %nyx_string** %7380
  %7385 = call %nyx_string* @nyx_string_concat(%nyx_string* %7383, %nyx_string* %7384)
  %7386 = load %nyx_string*, %nyx_string** %7231
  %7387 = call %nyx_string* @nyx_string_concat(%nyx_string* %7385, %nyx_string* %7386)
  store %nyx_string* %7387, %nyx_string** %7199
  %7388 = load %nyx_string*, %nyx_string** %7202
  %7389 = load %nyx_string*, %nyx_string** %7210
  %7390 = call i1 @nyx_string_equals(%nyx_string* %7388, %nyx_string* %7389)
  %7391 = xor i1 %7390, true
  br i1 %7391, label %then1365, label %else1366
then1365:
  %7392 = load %nyx_string*, %nyx_string** %7199
  %7393 = load %nyx_string*, %nyx_string** %7234
  %7394 = call %nyx_string* @nyx_string_concat(%nyx_string* %7392, %nyx_string* %7393)
  %7395 = load %nyx_string*, %nyx_string** %7202
  %7396 = call %nyx_string* @nyx_string_concat(%nyx_string* %7394, %nyx_string* %7395)
  store %nyx_string* %7396, %nyx_string** %7199
  br label %merge1367
else1366:
  br label %merge1367
merge1367:
  %7397 = load %nyx_string*, %nyx_string** %7199
  %7398 = load %nyx_string*, %nyx_string** %7237
  %7399 = call %nyx_string* @nyx_string_concat(%nyx_string* %7397, %nyx_string* %7398)
  store %nyx_string* %7399, %nyx_string** %7199
  %7400 = load i64, i64* %7203
  %7401 = add i64 %7400, 1
  store i64 %7401, i64* %7203
  br label %merge1340
else1339:
  br label %merge1340
merge1340:
  %7402 = load %nyx_string*, %nyx_string** %7210
  store %nyx_string* %7402, %nyx_string** %7202
  br label %merge1328
merge1328:
  %7403 = load i64, i64* %7204
  %7404 = add i64 %7403, 1
  store i64 %7404, i64* %7204
  br label %while_cond1323
while_end1325:
  %7405 = load i64, i64* %7203
  %7406 = icmp eq i64 %7405, 0
  br i1 %7406, label %then1368, label %else1369
then1368:
  %7407 = getelementptr [1 x i8], [1 x i8]* @.str1039, i32 0, i32 0
  %7408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %7407, i64 0)
  ret %nyx_string* %7408
else1369:
  br label %merge1370
merge1370:
  %7409 = getelementptr [10 x i8], [10 x i8]* @.str1040, i32 0, i32 0
  %7410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %7409, i64 9)
  %7411 = load %nyx_string*, %nyx_string** %7182
  %7412 = call %nyx_string* @nyx_string_concat(%nyx_string* %7410, %nyx_string* %7411)
  %7413 = getelementptr [4 x i8], [4 x i8]* @.str1041, i32 0, i32 0
  %7414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %7413, i64 3)
  %7415 = call %nyx_string* @nyx_string_concat(%nyx_string* %7412, %nyx_string* %7414)
  %7416 = alloca %nyx_string*
  store %nyx_string* %7415, %nyx_string** %7416
  %7417 = load %nyx_string*, %nyx_string** %7416
  %7418 = getelementptr [14 x i8], [14 x i8]* @.str1042, i32 0, i32 0
  %7419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %7418, i64 13)
  %7420 = call %nyx_string* @nyx_string_concat(%nyx_string* %7417, %nyx_string* %7419)
  %7421 = load %nyx_string*, %nyx_string** %7182
  %7422 = call %nyx_string* @nyx_string_concat(%nyx_string* %7420, %nyx_string* %7421)
  %7423 = getelementptr [8 x i8], [8 x i8]* @.str1043, i32 0, i32 0
  %7424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %7423, i64 7)
  %7425 = call %nyx_string* @nyx_string_concat(%nyx_string* %7422, %nyx_string* %7424)
  %7426 = load i64, i64* %7203
  %7427 = call %nyx_string* @nyx_string_from_int(i64 %7426)
  %7428 = call %nyx_string* @nyx_string_concat(%nyx_string* %7425, %nyx_string* %7427)
  %7429 = getelementptr [14 x i8], [14 x i8]* @.str1044, i32 0, i32 0
  %7430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %7429, i64 13)
  %7431 = call %nyx_string* @nyx_string_concat(%nyx_string* %7428, %nyx_string* %7430)
  store %nyx_string* %7431, %nyx_string** %7416
  %7432 = load %nyx_string*, %nyx_string** %7416
  %7433 = load %nyx_string*, %nyx_string** %7199
  %7434 = call %nyx_string* @nyx_string_concat(%nyx_string* %7432, %nyx_string* %7433)
  %7435 = getelementptr [2 x i8], [2 x i8]* @.str1045, i32 0, i32 0
  %7436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %7435, i64 1)
  %7437 = call %nyx_string* @nyx_string_concat(%nyx_string* %7434, %nyx_string* %7436)
  store %nyx_string* %7437, %nyx_string** %7416
  %7438 = load %nyx_string*, %nyx_string** %7416
  ret %nyx_string* %7438
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %7439 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %7440 = getelementptr [16 x i8], [16 x i8]* @.str1046, i32 0, i32 0
  %7441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %7440, i64 15)
  %7442 = call %nyx_string* @nyx_string_concat(%nyx_string* %7439, %nyx_string* %7441)
  %7443 = alloca %nyx_string*
  store %nyx_string* %7442, %nyx_string** %7443
  %7444 = load %nyx_string*, %nyx_string** %7443
  %7445 = call i8* @nyx_string_to_cstr(%nyx_string* %7444)
  %7446 = call i1 @nyx_file_exists(i8* %7445)
  %7447 = xor i1 %7446, true
  br i1 %7447, label %then1371, label %else1372
then1371:
  %7448 = getelementptr [1 x i8], [1 x i8]* @.str1047, i32 0, i32 0
  %7449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %7448, i64 0)
  ret %nyx_string* %7449
else1372:
  br label %merge1373
merge1373:
  %7450 = load %nyx_string*, %nyx_string** %7443
  %7451 = call i8* @nyx_string_to_cstr(%nyx_string* %7450)
  %7452 = call %nyx_string* @nyx_read_file(i8* %7451)
  %7453 = alloca %nyx_string*
  store %nyx_string* %7452, %nyx_string** %7453
  %7454 = load %nyx_string*, %nyx_string** %7453
  %7455 = getelementptr [2 x i8], [2 x i8]* @.str1048, i32 0, i32 0
  %7456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %7455, i64 1)
  %7457 = call { i64, i8* }* @nyx_string_split(%nyx_string* %7454, %nyx_string* %7456)
  %7458 = alloca { i64, i8* }*
  store { i64, i8* }* %7457, { i64, i8* }** %7458
  %7459 = getelementptr [1 x i8], [1 x i8]* @.str1049, i32 0, i32 0
  %7460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %7459, i64 0)
  %7461 = alloca %nyx_string*
  store %nyx_string* %7460, %nyx_string** %7461
  %7462 = alloca i64
  store i64 0, i64* %7462
  %7463 = alloca i64
  store i64 0, i64* %7463
  %7464 = getelementptr [9 x i8], [9 x i8]* @.str1050, i32 0, i32 0
  %7465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %7464, i64 8)
  %7466 = alloca %nyx_string*
  store %nyx_string* %7465, %nyx_string** %7466
  %7467 = getelementptr [2 x i8], [2 x i8]* @.str1051, i32 0, i32 0
  %7468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %7467, i64 1)
  %7469 = alloca %nyx_string*
  store %nyx_string* %7468, %nyx_string** %7469
  %7470 = getelementptr [4 x i8], [4 x i8]* @.str1052, i32 0, i32 0
  %7471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %7470, i64 3)
  %7472 = alloca %nyx_string*
  store %nyx_string* %7471, %nyx_string** %7472
  %7473 = getelementptr [4 x i8], [4 x i8]* @.str1053, i32 0, i32 0
  %7474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %7473, i64 3)
  %7475 = alloca %nyx_string*
  store %nyx_string* %7474, %nyx_string** %7475
  %7476 = getelementptr [5 x i8], [5 x i8]* @.str1054, i32 0, i32 0
  %7477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %7476, i64 4)
  %7478 = alloca %nyx_string*
  store %nyx_string* %7477, %nyx_string** %7478
  %7479 = getelementptr [2 x i8], [2 x i8]* @.str1055, i32 0, i32 0
  %7480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %7479, i64 1)
  %7481 = alloca %nyx_string*
  store %nyx_string* %7480, %nyx_string** %7481
  %7482 = getelementptr [2 x i8], [2 x i8]* @.str1056, i32 0, i32 0
  %7483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %7482, i64 1)
  %7484 = alloca %nyx_string*
  store %nyx_string* %7483, %nyx_string** %7484
  %7485 = getelementptr [2 x i8], [2 x i8]* @.str1057, i32 0, i32 0
  %7486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %7485, i64 1)
  %7487 = alloca %nyx_string*
  store %nyx_string* %7486, %nyx_string** %7487
  %7488 = getelementptr [1 x i8], [1 x i8]* @.str1058, i32 0, i32 0
  %7489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %7488, i64 0)
  %7490 = alloca %nyx_string*
  store %nyx_string* %7489, %nyx_string** %7490
  %7491 = getelementptr [6 x i8], [6 x i8]* @.str1059, i32 0, i32 0
  %7492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %7491, i64 5)
  %7493 = alloca %nyx_string*
  store %nyx_string* %7492, %nyx_string** %7493
  %7494 = getelementptr [2 x i8], [2 x i8]* @.str1060, i32 0, i32 0
  %7495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %7494, i64 1)
  %7496 = alloca %nyx_string*
  store %nyx_string* %7495, %nyx_string** %7496
  %7497 = call i8* @llvm.stacksave()
  br label %while_cond1374
while_cond1374:
  %7498 = load i64, i64* %7463
  %7499 = load { i64, i8* }*, { i64, i8* }** %7458
  %7500 = call i64 @nyx_array_length({ i64, i8* }* %7499)
  %7501 = icmp slt i64 %7498, %7500
  br i1 %7501, label %while_body1375, label %while_end1376
while_body1375:
  call void @llvm.stackrestore(i8* %7497)
  %7502 = load { i64, i8* }*, { i64, i8* }** %7458
  %7503 = load i64, i64* %7463
  %7504 = call i64 @nyx_array_get_checked({ i64, i8* }* %7502, i64 %7503, i64 2)
  %7505 = inttoptr i64 %7504 to %nyx_string*
  %7506 = alloca %nyx_string*
  store %nyx_string* %7505, %nyx_string** %7506
  %7507 = load %nyx_string*, %nyx_string** %7506
  %7508 = call i64 @nyx_string_byte_length(%nyx_string* %7507)
  %7509 = icmp sgt i64 %7508, 8
  br i1 %7509, label %then1377, label %else1378
then1377:
  %7510 = load %nyx_string*, %nyx_string** %7506
  %7511 = call %nyx_string* @nyx_string_substring(%nyx_string* %7510, i64 0, i64 8)
  %7512 = load %nyx_string*, %nyx_string** %7466
  %7513 = call i1 @nyx_string_equals(%nyx_string* %7511, %nyx_string* %7512)
  br i1 %7513, label %then1380, label %else1381
then1380:
  %7514 = load %nyx_string*, %nyx_string** %7506
  %7515 = load %nyx_string*, %nyx_string** %7469
  %7516 = call { i64, i8* }* @nyx_string_split(%nyx_string* %7514, %nyx_string* %7515)
  %7517 = alloca { i64, i8* }*
  store { i64, i8* }* %7516, { i64, i8* }** %7517
  %7518 = load { i64, i8* }*, { i64, i8* }** %7517
  %7519 = call i64 @nyx_array_length({ i64, i8* }* %7518)
  %7520 = icmp sge i64 %7519, 5
  br i1 %7520, label %then1383, label %else1384
then1383:
  %7521 = load { i64, i8* }*, { i64, i8* }** %7517
  %7522 = call i64 @nyx_array_get_checked({ i64, i8* }* %7521, i64 1, i64 2)
  %7523 = inttoptr i64 %7522 to %nyx_string*
  %7524 = alloca %nyx_string*
  store %nyx_string* %7523, %nyx_string** %7524
  %7525 = load { i64, i8* }*, { i64, i8* }** %7517
  %7526 = call i64 @nyx_array_get_checked({ i64, i8* }* %7525, i64 2, i64 2)
  %7527 = inttoptr i64 %7526 to %nyx_string*
  %7528 = alloca %nyx_string*
  store %nyx_string* %7527, %nyx_string** %7528
  %7529 = load { i64, i8* }*, { i64, i8* }** %7517
  %7530 = call i64 @nyx_array_get_checked({ i64, i8* }* %7529, i64 3, i64 2)
  %7531 = inttoptr i64 %7530 to %nyx_string*
  %7532 = alloca %nyx_string*
  store %nyx_string* %7531, %nyx_string** %7532
  %7533 = load { i64, i8* }*, { i64, i8* }** %7517
  %7534 = call i64 @nyx_array_get_checked({ i64, i8* }* %7533, i64 4, i64 2)
  %7535 = inttoptr i64 %7534 to %nyx_string*
  %7536 = alloca %nyx_string*
  store %nyx_string* %7535, %nyx_string** %7536
  %7537 = load %nyx_string*, %nyx_string** %7532
  %7538 = load %nyx_string*, %nyx_string** %cat.ptr
  %7539 = call i1 @nyx_string_equals(%nyx_string* %7537, %nyx_string* %7538)
  br i1 %7539, label %then1386, label %else1387
then1386:
  %7540 = load %nyx_string*, %nyx_string** %7472
  %7541 = load %nyx_string*, %nyx_string** %7524
  %7542 = call %nyx_string* @nyx_string_concat(%nyx_string* %7540, %nyx_string* %7541)
  %7543 = load %nyx_string*, %nyx_string** %7475
  %7544 = call %nyx_string* @nyx_string_concat(%nyx_string* %7542, %nyx_string* %7543)
  %7545 = load %nyx_string*, %nyx_string** %7528
  %7546 = call %nyx_string* @nyx_string_concat(%nyx_string* %7544, %nyx_string* %7545)
  %7547 = load %nyx_string*, %nyx_string** %7478
  %7548 = call %nyx_string* @nyx_string_concat(%nyx_string* %7546, %nyx_string* %7547)
  %7549 = alloca %nyx_string*
  store %nyx_string* %7548, %nyx_string** %7549
  %7550 = load %nyx_string*, %nyx_string** %7528
  %7551 = load %nyx_string*, %nyx_string** %7481
  %7552 = call i1 @nyx_string_equals(%nyx_string* %7550, %nyx_string* %7551)
  %7553 = xor i1 %7552, true
  br i1 %7553, label %then1389, label %else1390
then1389:
  %7554 = load %nyx_string*, %nyx_string** %7549
  %7555 = load %nyx_string*, %nyx_string** %7484
  %7556 = call %nyx_string* @nyx_string_concat(%nyx_string* %7554, %nyx_string* %7555)
  store %nyx_string* %7556, %nyx_string** %7549
  br label %merge1391
else1390:
  br label %merge1391
merge1391:
  %7557 = load %nyx_string*, %nyx_string** %7549
  %7558 = load %nyx_string*, %nyx_string** %7487
  %7559 = call %nyx_string* @nyx_string_concat(%nyx_string* %7557, %nyx_string* %7558)
  store %nyx_string* %7559, %nyx_string** %7549
  %7560 = load %nyx_string*, %nyx_string** %7536
  %7561 = load %nyx_string*, %nyx_string** %7490
  %7562 = call i1 @nyx_string_equals(%nyx_string* %7560, %nyx_string* %7561)
  %7563 = xor i1 %7562, true
  br i1 %7563, label %then1392, label %else1393
then1392:
  %7564 = load %nyx_string*, %nyx_string** %7549
  %7565 = load %nyx_string*, %nyx_string** %7493
  %7566 = call %nyx_string* @nyx_string_concat(%nyx_string* %7564, %nyx_string* %7565)
  %7567 = load %nyx_string*, %nyx_string** %7536
  %7568 = call %nyx_string* @nyx_string_concat(%nyx_string* %7566, %nyx_string* %7567)
  store %nyx_string* %7568, %nyx_string** %7549
  br label %merge1394
else1393:
  br label %merge1394
merge1394:
  %7569 = load %nyx_string*, %nyx_string** %7461
  %7570 = load %nyx_string*, %nyx_string** %7549
  %7571 = call %nyx_string* @nyx_string_concat(%nyx_string* %7569, %nyx_string* %7570)
  %7572 = load %nyx_string*, %nyx_string** %7496
  %7573 = call %nyx_string* @nyx_string_concat(%nyx_string* %7571, %nyx_string* %7572)
  store %nyx_string* %7573, %nyx_string** %7461
  %7574 = load i64, i64* %7462
  %7575 = add i64 %7574, 1
  store i64 %7575, i64* %7462
  br label %merge1388
else1387:
  br label %merge1388
merge1388:
  br label %merge1385
else1384:
  br label %merge1385
merge1385:
  br label %merge1382
else1381:
  br label %merge1382
merge1382:
  br label %merge1379
else1378:
  br label %merge1379
merge1379:
  %7576 = load i64, i64* %7463
  %7577 = add i64 %7576, 1
  store i64 %7577, i64* %7463
  br label %while_cond1374
while_end1376:
  %7578 = load i64, i64* %7462
  %7579 = icmp eq i64 %7578, 0
  br i1 %7579, label %then1395, label %else1396
then1395:
  %7580 = getelementptr [1 x i8], [1 x i8]* @.str1061, i32 0, i32 0
  %7581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %7580, i64 0)
  ret %nyx_string* %7581
else1396:
  br label %merge1397
merge1397:
  %7582 = getelementptr [39 x i8], [39 x i8]* @.str1062, i32 0, i32 0
  %7583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %7582, i64 38)
  %7584 = load %nyx_string*, %nyx_string** %7461
  %7585 = call %nyx_string* @nyx_string_concat(%nyx_string* %7583, %nyx_string* %7584)
  %7586 = getelementptr [2 x i8], [2 x i8]* @.str1063, i32 0, i32 0
  %7587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %7586, i64 1)
  %7588 = call %nyx_string* @nyx_string_concat(%nyx_string* %7585, %nyx_string* %7587)
  ret %nyx_string* %7588
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %7589 = call %nyx_string* @capabilities_std_dir()
  %7590 = alloca %nyx_string*
  store %nyx_string* %7589, %nyx_string** %7590
  %7591 = load %nyx_string*, %nyx_string** %7590
  %7592 = getelementptr [1 x i8], [1 x i8]* @.str1064, i32 0, i32 0
  %7593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %7592, i64 0)
  %7594 = call i1 @nyx_string_equals(%nyx_string* %7591, %nyx_string* %7593)
  br i1 %7594, label %then1398, label %else1399
then1398:
  %7595 = getelementptr [71 x i8], [71 x i8]* @.str1065, i32 0, i32 0
  %7596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %7595, i64 70)
  %7597 = call i8* @nyx_string_to_cstr(%nyx_string* %7596)
  call void @nyx_print_string(i8* %7597)
  ret i1 0
else1399:
  br label %merge1400
merge1400:
  %7598 = load %nyx_string*, %nyx_string** %7590
  %7599 = call i8* @nyx_string_to_cstr(%nyx_string* %7598)
  %7600 = call { i64, i8* }* @nyx_readdir(i8* %7599)
  %7601 = alloca { i64, i8* }*
  store { i64, i8* }* %7600, { i64, i8* }** %7601
  %7602 = call { i64, i8* }* @nyx_array_new_ptr()
  %7603 = getelementptr [11 x i8], [11 x i8]* @.str1066, i32 0, i32 0
  %7604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %7603, i64 10)
  %7605 = ptrtoint %nyx_string* %7604 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7605, i64 2)
  %7606 = getelementptr [20 x i8], [20 x i8]* @.str1067, i32 0, i32 0
  %7607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %7606, i64 19)
  %7608 = ptrtoint %nyx_string* %7607 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7608, i64 2)
  %7609 = getelementptr [23 x i8], [23 x i8]* @.str1068, i32 0, i32 0
  %7610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %7609, i64 22)
  %7611 = ptrtoint %nyx_string* %7610 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7611, i64 2)
  %7612 = getelementptr [15 x i8], [15 x i8]* @.str1069, i32 0, i32 0
  %7613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %7612, i64 14)
  %7614 = ptrtoint %nyx_string* %7613 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7614, i64 2)
  %7615 = getelementptr [4 x i8], [4 x i8]* @.str1070, i32 0, i32 0
  %7616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %7615, i64 3)
  %7617 = ptrtoint %nyx_string* %7616 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7617, i64 2)
  %7618 = getelementptr [13 x i8], [13 x i8]* @.str1071, i32 0, i32 0
  %7619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %7618, i64 12)
  %7620 = ptrtoint %nyx_string* %7619 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7620, i64 2)
  %7621 = getelementptr [19 x i8], [19 x i8]* @.str1072, i32 0, i32 0
  %7622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %7621, i64 18)
  %7623 = ptrtoint %nyx_string* %7622 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7623, i64 2)
  %7624 = getelementptr [7 x i8], [7 x i8]* @.str1073, i32 0, i32 0
  %7625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %7624, i64 6)
  %7626 = ptrtoint %nyx_string* %7625 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7626, i64 2)
  %7627 = getelementptr [16 x i8], [16 x i8]* @.str1074, i32 0, i32 0
  %7628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %7627, i64 15)
  %7629 = ptrtoint %nyx_string* %7628 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7629, i64 2)
  %7630 = getelementptr [12 x i8], [12 x i8]* @.str1075, i32 0, i32 0
  %7631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %7630, i64 11)
  %7632 = ptrtoint %nyx_string* %7631 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7632, i64 2)
  %7633 = getelementptr [26 x i8], [26 x i8]* @.str1076, i32 0, i32 0
  %7634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %7633, i64 25)
  %7635 = ptrtoint %nyx_string* %7634 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7635, i64 2)
  %7636 = getelementptr [8 x i8], [8 x i8]* @.str1077, i32 0, i32 0
  %7637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %7636, i64 7)
  %7638 = ptrtoint %nyx_string* %7637 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7638, i64 2)
  %7639 = getelementptr [14 x i8], [14 x i8]* @.str1078, i32 0, i32 0
  %7640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %7639, i64 13)
  %7641 = ptrtoint %nyx_string* %7640 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7641, i64 2)
  %7642 = getelementptr [6 x i8], [6 x i8]* @.str1079, i32 0, i32 0
  %7643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %7642, i64 5)
  %7644 = ptrtoint %nyx_string* %7643 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7602, i64 %7644, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %7602, i64 2)
  %7645 = alloca { i64, i8* }*
  store { i64, i8* }* %7602, { i64, i8* }** %7645
  %7646 = getelementptr [49 x i8], [49 x i8]* @.str1080, i32 0, i32 0
  %7647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %7646, i64 48)
  %7648 = alloca %nyx_string*
  store %nyx_string* %7647, %nyx_string** %7648
  %7649 = load %nyx_string*, %nyx_string** %7648
  %7650 = getelementptr [19 x i8], [19 x i8]* @.str1081, i32 0, i32 0
  %7651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %7650, i64 18)
  %7652 = call %nyx_string* @nyx_string_concat(%nyx_string* %7649, %nyx_string* %7651)
  %7653 = call %nyx_string* @toolchain_version()
  %7654 = call %nyx_string* @nyx_string_concat(%nyx_string* %7652, %nyx_string* %7653)
  %7655 = getelementptr [6 x i8], [6 x i8]* @.str1082, i32 0, i32 0
  %7656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %7655, i64 5)
  %7657 = call %nyx_string* @nyx_string_concat(%nyx_string* %7654, %nyx_string* %7656)
  store %nyx_string* %7657, %nyx_string** %7648
  %7658 = getelementptr [15 x i8], [15 x i8]* @.str1083, i32 0, i32 0
  %7659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %7658, i64 14)
  %7660 = call i8* @nyx_string_to_cstr(%nyx_string* %7659)
  %7661 = call %nyx_string* @nyx_getenv(i8* %7660)
  %7662 = alloca %nyx_string*
  store %nyx_string* %7661, %nyx_string** %7662
  %7663 = load %nyx_string*, %nyx_string** %7662
  %7664 = getelementptr [1 x i8], [1 x i8]* @.str1084, i32 0, i32 0
  %7665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %7664, i64 0)
  %7666 = call i1 @nyx_string_equals(%nyx_string* %7663, %nyx_string* %7665)
  %7667 = xor i1 %7666, true
  br i1 %7667, label %then1401, label %else1402
then1401:
  %7668 = load %nyx_string*, %nyx_string** %7648
  %7669 = getelementptr [18 x i8], [18 x i8]* @.str1085, i32 0, i32 0
  %7670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %7669, i64 17)
  %7671 = call %nyx_string* @nyx_string_concat(%nyx_string* %7668, %nyx_string* %7670)
  %7672 = load %nyx_string*, %nyx_string** %7662
  %7673 = call %nyx_string* @nyx_string_concat(%nyx_string* %7671, %nyx_string* %7672)
  %7674 = getelementptr [6 x i8], [6 x i8]* @.str1086, i32 0, i32 0
  %7675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %7674, i64 5)
  %7676 = call %nyx_string* @nyx_string_concat(%nyx_string* %7673, %nyx_string* %7675)
  store %nyx_string* %7676, %nyx_string** %7648
  br label %merge1403
else1402:
  br label %merge1403
merge1403:
  %7677 = load %nyx_string*, %nyx_string** %7648
  %7678 = getelementptr [103 x i8], [103 x i8]* @.str1087, i32 0, i32 0
  %7679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %7678, i64 102)
  %7680 = call %nyx_string* @nyx_string_concat(%nyx_string* %7677, %nyx_string* %7679)
  store %nyx_string* %7680, %nyx_string** %7648
  %7681 = load %nyx_string*, %nyx_string** %7648
  %7682 = getelementptr [103 x i8], [103 x i8]* @.str1088, i32 0, i32 0
  %7683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %7682, i64 102)
  %7684 = call %nyx_string* @nyx_string_concat(%nyx_string* %7681, %nyx_string* %7683)
  store %nyx_string* %7684, %nyx_string** %7648
  %7685 = load %nyx_string*, %nyx_string** %7648
  %7686 = getelementptr [95 x i8], [95 x i8]* @.str1089, i32 0, i32 0
  %7687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %7686, i64 94)
  %7688 = call %nyx_string* @nyx_string_concat(%nyx_string* %7685, %nyx_string* %7687)
  store %nyx_string* %7688, %nyx_string** %7648
  %7689 = alloca i64
  store i64 0, i64* %7689
  %7690 = getelementptr [1 x i8], [1 x i8]* @.str1090, i32 0, i32 0
  %7691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %7690, i64 0)
  %7692 = alloca %nyx_string*
  store %nyx_string* %7691, %nyx_string** %7692
  %7693 = getelementptr [4 x i8], [4 x i8]* @.str1091, i32 0, i32 0
  %7694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %7693, i64 3)
  %7695 = alloca %nyx_string*
  store %nyx_string* %7694, %nyx_string** %7695
  %7696 = getelementptr [6 x i8], [6 x i8]* @.str1092, i32 0, i32 0
  %7697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %7696, i64 5)
  %7698 = alloca %nyx_string*
  store %nyx_string* %7697, %nyx_string** %7698
  %7699 = getelementptr [4 x i8], [4 x i8]* @.str1093, i32 0, i32 0
  %7700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %7699, i64 3)
  %7701 = alloca %nyx_string*
  store %nyx_string* %7700, %nyx_string** %7701
  %7702 = getelementptr [3 x i8], [3 x i8]* @.str1094, i32 0, i32 0
  %7703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %7702, i64 2)
  %7704 = alloca %nyx_string*
  store %nyx_string* %7703, %nyx_string** %7704
  %7705 = call i8* @llvm.stacksave()
  br label %while_cond1404
while_cond1404:
  %7706 = load i64, i64* %7689
  %7707 = load { i64, i8* }*, { i64, i8* }** %7645
  %7708 = call i64 @nyx_array_length({ i64, i8* }* %7707)
  %7709 = icmp slt i64 %7706, %7708
  br i1 %7709, label %while_body1405, label %while_end1406
while_body1405:
  call void @llvm.stackrestore(i8* %7705)
  %7710 = load { i64, i8* }*, { i64, i8* }** %7645
  %7711 = load i64, i64* %7689
  %7712 = call i64 @nyx_array_get_checked({ i64, i8* }* %7710, i64 %7711, i64 2)
  %7713 = inttoptr i64 %7712 to %nyx_string*
  %7714 = alloca %nyx_string*
  store %nyx_string* %7713, %nyx_string** %7714
  %7715 = load %nyx_string*, %nyx_string** %7692
  %7716 = alloca %nyx_string*
  store %nyx_string* %7715, %nyx_string** %7716
  %7717 = alloca i64
  store i64 0, i64* %7717
  %7718 = call i8* @llvm.stacksave()
  br label %while_cond1407
while_cond1407:
  %7719 = load i64, i64* %7717
  %7720 = load { i64, i8* }*, { i64, i8* }** %7601
  %7721 = call i64 @nyx_array_length({ i64, i8* }* %7720)
  %7722 = icmp slt i64 %7719, %7721
  br i1 %7722, label %while_body1408, label %while_end1409
while_body1408:
  call void @llvm.stackrestore(i8* %7718)
  %7723 = load { i64, i8* }*, { i64, i8* }** %7601
  %7724 = load i64, i64* %7717
  %7725 = call i64 @nyx_array_get_checked({ i64, i8* }* %7723, i64 %7724, i64 2)
  %7726 = inttoptr i64 %7725 to %nyx_string*
  %7727 = alloca %nyx_string*
  store %nyx_string* %7726, %nyx_string** %7727
  %7728 = load %nyx_string*, %nyx_string** %7727
  %7729 = load %nyx_string*, %nyx_string** %7695
  %7730 = call i1 @nyx_string_ends_with(%nyx_string* %7728, %nyx_string* %7729)
  br i1 %7730, label %then1410, label %else1411
then1410:
  %7731 = load %nyx_string*, %nyx_string** %7727
  %7732 = load %nyx_string*, %nyx_string** %7727
  %7733 = call i64 @nyx_string_byte_length(%nyx_string* %7732)
  %7734 = sub i64 %7733, 3
  %7735 = call %nyx_string* @nyx_string_substring(%nyx_string* %7731, i64 0, i64 %7734)
  %7736 = alloca %nyx_string*
  store %nyx_string* %7735, %nyx_string** %7736
  %7737 = load %nyx_string*, %nyx_string** %7736
  %7738 = call %nyx_string* @module_category(%nyx_string* %7737)
  %7739 = alloca %nyx_string*
  store %nyx_string* %7738, %nyx_string** %7739
  %7740 = load %nyx_string*, %nyx_string** %7739
  %7741 = load %nyx_string*, %nyx_string** %7692
  %7742 = call i1 @nyx_string_equals(%nyx_string* %7740, %nyx_string* %7741)
  br i1 %7742, label %then1413, label %else1414
then1413:
  %7743 = load %nyx_string*, %nyx_string** %7698
  store %nyx_string* %7743, %nyx_string** %7739
  br label %merge1415
else1414:
  br label %merge1415
merge1415:
  %7744 = load %nyx_string*, %nyx_string** %7739
  %7745 = load %nyx_string*, %nyx_string** %7714
  %7746 = call i1 @nyx_string_equals(%nyx_string* %7744, %nyx_string* %7745)
  br i1 %7746, label %then1416, label %else1417
then1416:
  %7747 = load %nyx_string*, %nyx_string** %7590
  %7748 = load %nyx_string*, %nyx_string** %7727
  %7749 = call %nyx_string* @capabilities_module_section(%nyx_string* %7747, %nyx_string* %7748)
  %7750 = alloca %nyx_string*
  store %nyx_string* %7749, %nyx_string** %7750
  %7751 = load %nyx_string*, %nyx_string** %7750
  %7752 = load %nyx_string*, %nyx_string** %7692
  %7753 = call i1 @nyx_string_equals(%nyx_string* %7751, %nyx_string* %7752)
  %7754 = xor i1 %7753, true
  br i1 %7754, label %then1419, label %else1420
then1419:
  %7755 = load %nyx_string*, %nyx_string** %7716
  %7756 = load %nyx_string*, %nyx_string** %7750
  %7757 = call %nyx_string* @nyx_string_concat(%nyx_string* %7755, %nyx_string* %7756)
  store %nyx_string* %7757, %nyx_string** %7716
  br label %merge1421
else1420:
  br label %merge1421
merge1421:
  br label %merge1418
else1417:
  br label %merge1418
merge1418:
  br label %merge1412
else1411:
  br label %merge1412
merge1412:
  %7758 = load i64, i64* %7717
  %7759 = add i64 %7758, 1
  store i64 %7759, i64* %7717
  br label %while_cond1407
while_end1409:
  %7760 = load %nyx_string*, %nyx_string** %7590
  %7761 = load %nyx_string*, %nyx_string** %7714
  %7762 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %7760, %nyx_string* %7761)
  %7763 = alloca %nyx_string*
  store %nyx_string* %7762, %nyx_string** %7763
  %7764 = alloca i1
  store i1 true, i1* %7764
  %7765 = load %nyx_string*, %nyx_string** %7716
  %7766 = load %nyx_string*, %nyx_string** %7692
  %7767 = call i1 @nyx_string_equals(%nyx_string* %7765, %nyx_string* %7766)
  %7768 = xor i1 %7767, true
  br i1 %7768, label %sc_or_end1423, label %sc_or_rhs1422
sc_or_rhs1422:
  %7769 = load %nyx_string*, %nyx_string** %7763
  %7770 = load %nyx_string*, %nyx_string** %7692
  %7771 = call i1 @nyx_string_equals(%nyx_string* %7769, %nyx_string* %7770)
  %7772 = xor i1 %7771, true
  store i1 %7772, i1* %7764
  br label %sc_or_end1423
sc_or_end1423:
  %7773 = load i1, i1* %7764
  br i1 %7773, label %then1424, label %else1425
then1424:
  %7774 = load %nyx_string*, %nyx_string** %7648
  %7775 = load %nyx_string*, %nyx_string** %7701
  %7776 = call %nyx_string* @nyx_string_concat(%nyx_string* %7774, %nyx_string* %7775)
  %7777 = load %nyx_string*, %nyx_string** %7714
  %7778 = call %nyx_string* @nyx_string_concat(%nyx_string* %7776, %nyx_string* %7777)
  %7779 = load %nyx_string*, %nyx_string** %7704
  %7780 = call %nyx_string* @nyx_string_concat(%nyx_string* %7778, %nyx_string* %7779)
  %7781 = load %nyx_string*, %nyx_string** %7716
  %7782 = call %nyx_string* @nyx_string_concat(%nyx_string* %7780, %nyx_string* %7781)
  %7783 = load %nyx_string*, %nyx_string** %7763
  %7784 = call %nyx_string* @nyx_string_concat(%nyx_string* %7782, %nyx_string* %7783)
  store %nyx_string* %7784, %nyx_string** %7648
  br label %merge1426
else1425:
  br label %merge1426
merge1426:
  %7785 = load i64, i64* %7689
  %7786 = add i64 %7785, 1
  store i64 %7786, i64* %7689
  br label %while_cond1404
while_end1406:
  %7787 = getelementptr [16 x i8], [16 x i8]* @.str1095, i32 0, i32 0
  %7788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %7787, i64 15)
  %7789 = alloca %nyx_string*
  store %nyx_string* %7788, %nyx_string** %7789
  %7790 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %7791 = getelementptr [1 x i8], [1 x i8]* @.str1096, i32 0, i32 0
  %7792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %7791, i64 0)
  %7793 = call i1 @nyx_string_equals(%nyx_string* %7790, %nyx_string* %7792)
  %7794 = xor i1 %7793, true
  br i1 %7794, label %then1427, label %else1428
then1427:
  %7795 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %7795, %nyx_string** %7789
  br label %merge1429
else1428:
  br label %merge1429
merge1429:
  %7796 = load %nyx_string*, %nyx_string** %7789
  %7797 = load %nyx_string*, %nyx_string** %7648
  %7798 = call i8* @nyx_string_to_cstr(%nyx_string* %7796)
  %7799 = call i1 @nyx_write_file_safe(i8* %7798, %nyx_string* %7797)
  %7800 = getelementptr [32 x i8], [32 x i8]* @.str1097, i32 0, i32 0
  %7801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %7800, i64 31)
  %7802 = load %nyx_string*, %nyx_string** %7590
  %7803 = call %nyx_string* @nyx_string_concat(%nyx_string* %7801, %nyx_string* %7802)
  %7804 = getelementptr [3 x i8], [3 x i8]* @.str1098, i32 0, i32 0
  %7805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %7804, i64 2)
  %7806 = call %nyx_string* @nyx_string_concat(%nyx_string* %7803, %nyx_string* %7805)
  %7807 = load { i64, i8* }*, { i64, i8* }** %7601
  %7808 = call i64 @nyx_array_length({ i64, i8* }* %7807)
  %7809 = call %nyx_string* @nyx_string_from_int(i64 %7808)
  %7810 = call %nyx_string* @nyx_string_concat(%nyx_string* %7806, %nyx_string* %7809)
  %7811 = getelementptr [22 x i8], [22 x i8]* @.str1099, i32 0, i32 0
  %7812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %7811, i64 21)
  %7813 = call %nyx_string* @nyx_string_concat(%nyx_string* %7810, %nyx_string* %7812)
  %7814 = call i8* @nyx_string_to_cstr(%nyx_string* %7813)
  call void @nyx_print_string(i8* %7814)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %7815 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %7816 = ptrtoint %SharedEnv_main* %7815 to i64
  %7817 = call i8* @GC_malloc(i64 %7816)
  %7818 = bitcast i8* %7817 to %SharedEnv_main*
  %7819 = call { i64, i8* }* @nyx_get_args()
  %7820 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 0
  store { i64, i8* }* %7819, { i64, i8* }** %7820
  %7821 = getelementptr [6 x i8], [6 x i8]* @.str1100, i32 0, i32 0
  %7822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %7821, i64 5)
  %7823 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 1
  store %nyx_string* %7822, %nyx_string** %7823
  %7824 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 2
  store i1 0, i1* %7824
  %7825 = getelementptr [1 x i8], [1 x i8]* @.str1101, i32 0, i32 0
  %7826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %7825, i64 0)
  %7827 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 3
  store %nyx_string* %7826, %nyx_string** %7827
  %7828 = getelementptr [1 x i8], [1 x i8]* @.str1102, i32 0, i32 0
  %7829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %7828, i64 0)
  %7830 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 4
  store %nyx_string* %7829, %nyx_string** %7830
  %7831 = load { i64, i8* }*, { i64, i8* }** %7820
  %7832 = call i64 @nyx_array_length({ i64, i8* }* %7831)
  %7833 = icmp sge i64 %7832, 2
  br i1 %7833, label %then1430, label %else1431
then1430:
  %7834 = load { i64, i8* }*, { i64, i8* }** %7820
  %7835 = call i64 @nyx_array_get_checked({ i64, i8* }* %7834, i64 1, i64 2)
  %7836 = inttoptr i64 %7835 to %nyx_string*
  %7837 = alloca %nyx_string*
  store %nyx_string* %7836, %nyx_string** %7837
  %7838 = load %nyx_string*, %nyx_string** %7837
  store %nyx_string* %7838, %nyx_string** %7823
  br label %merge1432
else1431:
  br label %merge1432
merge1432:
  %7839 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 5
  store i64 2, i64* %7839
  %7840 = getelementptr [1 x i8], [1 x i8]* @.str1103, i32 0, i32 0
  %7841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %7840, i64 0)
  %7842 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 6
  store %nyx_string* %7841, %nyx_string** %7842
  %7843 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 7
  store i1 0, i1* %7843
  %7844 = alloca i1
  store i1 true, i1* %7844
  %7845 = alloca i1
  store i1 true, i1* %7845
  %7846 = alloca i1
  store i1 true, i1* %7846
  %7847 = load %nyx_string*, %nyx_string** %7823
  %7848 = getelementptr [6 x i8], [6 x i8]* @.str1104, i32 0, i32 0
  %7849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %7848, i64 5)
  %7850 = call i1 @nyx_string_equals(%nyx_string* %7847, %nyx_string* %7849)
  br i1 %7850, label %sc_or_end1434, label %sc_or_rhs1433
sc_or_rhs1433:
  %7851 = load %nyx_string*, %nyx_string** %7823
  %7852 = getelementptr [4 x i8], [4 x i8]* @.str1105, i32 0, i32 0
  %7853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %7852, i64 3)
  %7854 = call i1 @nyx_string_equals(%nyx_string* %7851, %nyx_string* %7853)
  store i1 %7854, i1* %7846
  br label %sc_or_end1434
sc_or_end1434:
  %7855 = load i1, i1* %7846
  br i1 %7855, label %sc_or_end1436, label %sc_or_rhs1435
sc_or_rhs1435:
  %7856 = load %nyx_string*, %nyx_string** %7823
  %7857 = getelementptr [5 x i8], [5 x i8]* @.str1106, i32 0, i32 0
  %7858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %7857, i64 4)
  %7859 = call i1 @nyx_string_equals(%nyx_string* %7856, %nyx_string* %7858)
  store i1 %7859, i1* %7845
  br label %sc_or_end1436
sc_or_end1436:
  %7860 = load i1, i1* %7845
  br i1 %7860, label %sc_or_end1438, label %sc_or_rhs1437
sc_or_rhs1437:
  %7861 = load %nyx_string*, %nyx_string** %7823
  %7862 = getelementptr [5 x i8], [5 x i8]* @.str1107, i32 0, i32 0
  %7863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %7862, i64 4)
  %7864 = call i1 @nyx_string_equals(%nyx_string* %7861, %nyx_string* %7863)
  store i1 %7864, i1* %7844
  br label %sc_or_end1438
sc_or_end1438:
  %7865 = load i1, i1* %7844
  %7866 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 8
  store i1 %7865, i1* %7866
  %7867 = getelementptr [3 x i8], [3 x i8]* @.str1108, i32 0, i32 0
  %7868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %7867, i64 2)
  %7869 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 9
  store %nyx_string* %7868, %nyx_string** %7869
  %7870 = getelementptr [10 x i8], [10 x i8]* @.str1109, i32 0, i32 0
  %7871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %7870, i64 9)
  %7872 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 10
  store %nyx_string* %7871, %nyx_string** %7872
  %7873 = getelementptr [7 x i8], [7 x i8]* @.str1110, i32 0, i32 0
  %7874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %7873, i64 6)
  %7875 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 11
  store %nyx_string* %7874, %nyx_string** %7875
  %7876 = getelementptr [1 x i8], [1 x i8]* @.str1111, i32 0, i32 0
  %7877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %7876, i64 0)
  %7878 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 12
  store %nyx_string* %7877, %nyx_string** %7878
  %7879 = getelementptr [66 x i8], [66 x i8]* @.str1112, i32 0, i32 0
  %7880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %7879, i64 65)
  %7881 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 13
  store %nyx_string* %7880, %nyx_string** %7881
  %7882 = getelementptr [7 x i8], [7 x i8]* @.str1113, i32 0, i32 0
  %7883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %7882, i64 6)
  %7884 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 14
  store %nyx_string* %7883, %nyx_string** %7884
  %7885 = getelementptr [3 x i8], [3 x i8]* @.str1114, i32 0, i32 0
  %7886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %7885, i64 2)
  %7887 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 15
  store %nyx_string* %7886, %nyx_string** %7887
  %7888 = getelementptr [9 x i8], [9 x i8]* @.str1115, i32 0, i32 0
  %7889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %7888, i64 8)
  %7890 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 16
  store %nyx_string* %7889, %nyx_string** %7890
  %7891 = getelementptr [63 x i8], [63 x i8]* @.str1116, i32 0, i32 0
  %7892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %7891, i64 62)
  %7893 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 17
  store %nyx_string* %7892, %nyx_string** %7893
  %7894 = getelementptr [28 x i8], [28 x i8]* @.str1117, i32 0, i32 0
  %7895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1117.c, i8* %7894, i64 27)
  %7896 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 18
  store %nyx_string* %7895, %nyx_string** %7896
  %7897 = getelementptr [4 x i8], [4 x i8]* @.str1118, i32 0, i32 0
  %7898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1118.c, i8* %7897, i64 3)
  %7899 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 19
  store %nyx_string* %7898, %nyx_string** %7899
  %7900 = call i8* @llvm.stacksave()
  br label %while_cond1439
while_cond1439:
  %7901 = load i64, i64* %7839
  %7902 = load { i64, i8* }*, { i64, i8* }** %7820
  %7903 = call i64 @nyx_array_length({ i64, i8* }* %7902)
  %7904 = icmp slt i64 %7901, %7903
  br i1 %7904, label %while_body1440, label %while_end1441
while_body1440:
  call void @llvm.stackrestore(i8* %7900)
  %7905 = load { i64, i8* }*, { i64, i8* }** %7820
  %7906 = load i64, i64* %7839
  %7907 = call i64 @nyx_array_get_checked({ i64, i8* }* %7905, i64 %7906, i64 2)
  %7908 = inttoptr i64 %7907 to %nyx_string*
  %7909 = alloca %nyx_string*
  store %nyx_string* %7908, %nyx_string** %7909
  %7910 = load %nyx_string*, %nyx_string** %7909
  %7911 = load %nyx_string*, %nyx_string** %7869
  %7912 = call i1 @nyx_string_equals(%nyx_string* %7910, %nyx_string* %7911)
  br i1 %7912, label %then1442, label %else1443
then1442:
  %7913 = load { i64, i8* }*, { i64, i8* }** %7820
  %7914 = call i64 @nyx_array_length({ i64, i8* }* %7913)
  store i64 %7914, i64* %7839
  br label %merge1444
else1443:
  %7915 = load %nyx_string*, %nyx_string** %7909
  %7916 = load %nyx_string*, %nyx_string** %7872
  %7917 = call i1 @nyx_string_equals(%nyx_string* %7915, %nyx_string* %7916)
  br i1 %7917, label %then1445, label %else1446
then1445:
  store i1 1, i1* %7824
  br label %merge1447
else1446:
  %7918 = load %nyx_string*, %nyx_string** %7909
  %7919 = load %nyx_string*, %nyx_string** %7875
  %7920 = call i1 @nyx_string_equals(%nyx_string* %7918, %nyx_string* %7919)
  br i1 %7920, label %then1448, label %else1449
then1448:
  %7921 = load %nyx_string*, %nyx_string** %7878
  %7922 = alloca %nyx_string*
  store %nyx_string* %7921, %nyx_string** %7922
  %7923 = load i64, i64* %7839
  %7924 = add i64 %7923, 1
  %7925 = load { i64, i8* }*, { i64, i8* }** %7820
  %7926 = call i64 @nyx_array_length({ i64, i8* }* %7925)
  %7927 = icmp slt i64 %7924, %7926
  br i1 %7927, label %then1451, label %else1452
then1451:
  %7928 = load { i64, i8* }*, { i64, i8* }** %7820
  %7929 = load i64, i64* %7839
  %7930 = add i64 %7929, 1
  %7931 = call i64 @nyx_array_get_checked({ i64, i8* }* %7928, i64 %7930, i64 2)
  %7932 = inttoptr i64 %7931 to %nyx_string*
  %7933 = alloca %nyx_string*
  store %nyx_string* %7932, %nyx_string** %7933
  %7934 = load %nyx_string*, %nyx_string** %7933
  %7935 = load %nyx_string*, %nyx_string** %7869
  %7936 = call i1 @nyx_string_starts_with(%nyx_string* %7934, %nyx_string* %7935)
  %7937 = xor i1 %7936, true
  br i1 %7937, label %then1454, label %else1455
then1454:
  %7938 = load %nyx_string*, %nyx_string** %7933
  store %nyx_string* %7938, %nyx_string** %7922
  br label %merge1456
else1455:
  br label %merge1456
merge1456:
  br label %merge1453
else1452:
  br label %merge1453
merge1453:
  %7939 = load %nyx_string*, %nyx_string** %7922
  %7940 = load %nyx_string*, %nyx_string** %7878
  %7941 = call i1 @nyx_string_equals(%nyx_string* %7939, %nyx_string* %7940)
  br i1 %7941, label %then1457, label %else1458
then1457:
  %7942 = load %nyx_string*, %nyx_string** %7842
  %7943 = load %nyx_string*, %nyx_string** %7878
  %7944 = call i1 @nyx_string_equals(%nyx_string* %7942, %nyx_string* %7943)
  br i1 %7944, label %then1460, label %else1461
then1460:
  %7945 = load %nyx_string*, %nyx_string** %7881
  store %nyx_string* %7945, %nyx_string** %7842
  br label %merge1462
else1461:
  br label %merge1462
merge1462:
  br label %merge1459
else1458:
  %7946 = load %nyx_string*, %nyx_string** %7922
  store %nyx_string* %7946, %nyx_string** %7830
  %7947 = load i64, i64* %7839
  %7948 = add i64 %7947, 1
  store i64 %7948, i64* %7839
  br label %merge1459
merge1459:
  br label %merge1450
else1449:
  %7949 = alloca i1
  store i1 true, i1* %7949
  %7950 = load %nyx_string*, %nyx_string** %7909
  %7951 = load %nyx_string*, %nyx_string** %7884
  %7952 = call i1 @nyx_string_equals(%nyx_string* %7950, %nyx_string* %7951)
  br i1 %7952, label %sc_or_end1464, label %sc_or_rhs1463
sc_or_rhs1463:
  %7953 = load %nyx_string*, %nyx_string** %7909
  %7954 = load %nyx_string*, %nyx_string** %7887
  %7955 = call i1 @nyx_string_equals(%nyx_string* %7953, %nyx_string* %7954)
  store i1 %7955, i1* %7949
  br label %sc_or_end1464
sc_or_end1464:
  %7956 = load i1, i1* %7949
  br i1 %7956, label %then1465, label %else1466
then1465:
  store i1 1, i1* %7843
  br label %merge1467
else1466:
  %7957 = load %nyx_string*, %nyx_string** %7909
  %7958 = load %nyx_string*, %nyx_string** %7890
  %7959 = call i1 @nyx_string_equals(%nyx_string* %7957, %nyx_string* %7958)
  br i1 %7959, label %then1468, label %else1469
then1468:
  %7960 = load i64, i64* %7839
  %7961 = add i64 %7960, 1
  %7962 = load { i64, i8* }*, { i64, i8* }** %7820
  %7963 = call i64 @nyx_array_length({ i64, i8* }* %7962)
  %7964 = icmp slt i64 %7961, %7963
  br i1 %7964, label %then1471, label %else1472
then1471:
  %7965 = load { i64, i8* }*, { i64, i8* }** %7820
  %7966 = load i64, i64* %7839
  %7967 = add i64 %7966, 1
  %7968 = call i64 @nyx_array_get_checked({ i64, i8* }* %7965, i64 %7967, i64 2)
  %7969 = inttoptr i64 %7968 to %nyx_string*
  %7970 = alloca %nyx_string*
  store %nyx_string* %7969, %nyx_string** %7970
  %7971 = load %nyx_string*, %nyx_string** %7970
  store %nyx_string* %7971, %nyx_string** %7827
  %7972 = load i64, i64* %7839
  %7973 = add i64 %7972, 1
  store i64 %7973, i64* %7839
  br label %merge1473
else1472:
  %7974 = load %nyx_string*, %nyx_string** %7893
  store %nyx_string* %7974, %nyx_string** %7842
  br label %merge1473
merge1473:
  br label %merge1470
else1469:
  %7975 = alloca i1
  store i1 false, i1* %7975
  %7976 = load i1, i1* %7866
  br i1 %7976, label %sc_and_rhs1474, label %sc_and_end1475
sc_and_rhs1474:
  %7977 = load %nyx_string*, %nyx_string** %7909
  %7978 = call i64 @nyx_string_byte_length(%nyx_string* %7977)
  %7979 = icmp sgt i64 %7978, 1
  store i1 %7979, i1* %7975
  br label %sc_and_end1475
sc_and_end1475:
  %7980 = load i1, i1* %7975
  br i1 %7980, label %then1476, label %else1477
then1476:
  %7981 = alloca i1
  store i1 false, i1* %7981
  %7982 = load %nyx_string*, %nyx_string** %7909
  %7983 = call i8 @nyx_string_char_at(%nyx_string* %7982, i64 0)
  %7984 = zext i8 %7983 to i64
  %7985 = getelementptr [1 x i8], [1 x i8]* @.str1119, i32 0, i32 0
  %7986 = load i8, i8* %7985
  %7987 = zext i8 %7986 to i64
  %7988 = icmp eq i64 %7984, %7987
  br i1 %7988, label %sc_and_rhs1479, label %sc_and_end1480
sc_and_rhs1479:
  %7989 = load %nyx_string*, %nyx_string** %7842
  %7990 = load %nyx_string*, %nyx_string** %7878
  %7991 = call i1 @nyx_string_equals(%nyx_string* %7989, %nyx_string* %7990)
  store i1 %7991, i1* %7981
  br label %sc_and_end1480
sc_and_end1480:
  %7992 = load i1, i1* %7981
  br i1 %7992, label %then1481, label %else1482
then1481:
  %7993 = load %nyx_string*, %nyx_string** %7896
  %7994 = load %nyx_string*, %nyx_string** %7823
  %7995 = call %nyx_string* @nyx_string_concat(%nyx_string* %7993, %nyx_string* %7994)
  %7996 = load %nyx_string*, %nyx_string** %7899
  %7997 = call %nyx_string* @nyx_string_concat(%nyx_string* %7995, %nyx_string* %7996)
  %7998 = load %nyx_string*, %nyx_string** %7909
  %7999 = call %nyx_string* @nyx_string_concat(%nyx_string* %7997, %nyx_string* %7998)
  store %nyx_string* %7999, %nyx_string** %7842
  br label %merge1483
else1482:
  br label %merge1483
merge1483:
  br label %merge1478
else1477:
  br label %merge1478
merge1478:
  br label %merge1470
merge1470:
  br label %merge1467
merge1467:
  br label %merge1450
merge1450:
  br label %merge1447
merge1447:
  br label %merge1444
merge1444:
  %8000 = load i64, i64* %7839
  %8001 = add i64 %8000, 1
  store i64 %8001, i64* %7839
  br label %while_cond1439
while_end1441:
  %8002 = alloca i1
  store i1 false, i1* %8002
  %8003 = load i1, i1* %7843
  br i1 %8003, label %sc_and_rhs1484, label %sc_and_end1485
sc_and_rhs1484:
  %8004 = load i1, i1* %7866
  store i1 %8004, i1* %8002
  br label %sc_and_end1485
sc_and_end1485:
  %8005 = load i1, i1* %8002
  br i1 %8005, label %then1486, label %else1487
then1486:
  %8006 = getelementptr [5 x i8], [5 x i8]* @.str1120, i32 0, i32 0
  %8007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %8006, i64 4)
  %8008 = load %nyx_string*, %nyx_string** %7823
  %8009 = call %nyx_string* @nyx_string_concat(%nyx_string* %8007, %nyx_string* %8008)
  %8010 = getelementptr [24 x i8], [24 x i8]* @.str1121, i32 0, i32 0
  %8011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %8010, i64 23)
  %8012 = call %nyx_string* @nyx_string_concat(%nyx_string* %8009, %nyx_string* %8011)
  %8013 = call i8* @nyx_string_to_cstr(%nyx_string* %8012)
  call void @nyx_print_string(i8* %8013)
  %8014 = getelementptr [42 x i8], [42 x i8]* @.str1122, i32 0, i32 0
  %8015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %8014, i64 41)
  %8016 = call i8* @nyx_string_to_cstr(%nyx_string* %8015)
  call void @nyx_print_string(i8* %8016)
  %8017 = getelementptr [88 x i8], [88 x i8]* @.str1123, i32 0, i32 0
  %8018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %8017, i64 87)
  %8019 = call i8* @nyx_string_to_cstr(%nyx_string* %8018)
  call void @nyx_print_string(i8* %8019)
  %8020 = getelementptr [94 x i8], [94 x i8]* @.str1124, i32 0, i32 0
  %8021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %8020, i64 93)
  %8022 = call i8* @nyx_string_to_cstr(%nyx_string* %8021)
  call void @nyx_print_string(i8* %8022)
  %8023 = getelementptr [94 x i8], [94 x i8]* @.str1125, i32 0, i32 0
  %8024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %8023, i64 93)
  %8025 = call i8* @nyx_string_to_cstr(%nyx_string* %8024)
  call void @nyx_print_string(i8* %8025)
  %8026 = getelementptr [34 x i8], [34 x i8]* @.str1126, i32 0, i32 0
  %8027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %8026, i64 33)
  %8028 = call i8* @nyx_string_to_cstr(%nyx_string* %8027)
  call void @nyx_print_string(i8* %8028)
  %8029 = getelementptr [1 x i8], [1 x i8]* @.str1127, i32 0, i32 0
  %8030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %8029, i64 0)
  %8031 = call i8* @nyx_string_to_cstr(%nyx_string* %8030)
  call void @nyx_print_string(i8* %8031)
  %8032 = getelementptr [71 x i8], [71 x i8]* @.str1128, i32 0, i32 0
  %8033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %8032, i64 70)
  %8034 = call i8* @nyx_string_to_cstr(%nyx_string* %8033)
  call void @nyx_print_string(i8* %8034)
  ret i64 0
else1487:
  br label %merge1488
merge1488:
  %8035 = load %nyx_string*, %nyx_string** %7842
  %8036 = getelementptr [1 x i8], [1 x i8]* @.str1129, i32 0, i32 0
  %8037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %8036, i64 0)
  %8038 = call i1 @nyx_string_equals(%nyx_string* %8035, %nyx_string* %8037)
  %8039 = xor i1 %8038, true
  br i1 %8039, label %then1489, label %else1490
then1489:
  %8040 = getelementptr [8 x i8], [8 x i8]* @.str1130, i32 0, i32 0
  %8041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %8040, i64 7)
  %8042 = load %nyx_string*, %nyx_string** %7842
  %8043 = call %nyx_string* @nyx_string_concat(%nyx_string* %8041, %nyx_string* %8042)
  %8044 = call i8* @nyx_string_to_cstr(%nyx_string* %8043)
  call void @nyx_print_string(i8* %8044)
  %8045 = getelementptr [8 x i8], [8 x i8]* @.str1131, i32 0, i32 0
  %8046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %8045, i64 7)
  %8047 = load %nyx_string*, %nyx_string** %7823
  %8048 = call %nyx_string* @nyx_string_concat(%nyx_string* %8046, %nyx_string* %8047)
  %8049 = getelementptr [37 x i8], [37 x i8]* @.str1132, i32 0, i32 0
  %8050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %8049, i64 36)
  %8051 = call %nyx_string* @nyx_string_concat(%nyx_string* %8048, %nyx_string* %8050)
  %8052 = call i8* @nyx_string_to_cstr(%nyx_string* %8051)
  call void @nyx_print_string(i8* %8052)
  ret i64 1
else1490:
  br label %merge1491
merge1491:
  %8053 = getelementptr [6 x i8], [6 x i8]* @.str1133, i32 0, i32 0
  %8054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %8053, i64 5)
  %8055 = call %nyx_string* @toolchain_version()
  %8056 = call %nyx_string* @nyx_string_concat(%nyx_string* %8054, %nyx_string* %8055)
  %8057 = getelementptr [6 x i8], [6 x i8]* @.str1134, i32 0, i32 0
  %8058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1134.c, i8* %8057, i64 5)
  %8059 = call %nyx_string* @nyx_string_concat(%nyx_string* %8056, %nyx_string* %8058)
  %8060 = load %nyx_string*, %nyx_string** %7823
  %8061 = call %nyx_string* @nyx_string_concat(%nyx_string* %8059, %nyx_string* %8060)
  %8062 = call i8* @nyx_string_to_cstr(%nyx_string* %8061)
  call void @nyx_print_string(i8* %8062)
  %8063 = load %nyx_string*, %nyx_string** %7823
  %8064 = getelementptr [5 x i8], [5 x i8]* @.str1135, i32 0, i32 0
  %8065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1135.c, i8* %8064, i64 4)
  %8066 = call i1 @nyx_string_equals(%nyx_string* %8063, %nyx_string* %8065)
  br i1 %8066, label %then1492, label %else1493
then1492:
  %8067 = getelementptr [1 x i8], [1 x i8]* @.str1136, i32 0, i32 0
  %8068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %8067, i64 0)
  %8069 = alloca %nyx_string*
  store %nyx_string* %8068, %nyx_string** %8069
  %8070 = getelementptr [1 x i8], [1 x i8]* @.str1137, i32 0, i32 0
  %8071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %8070, i64 0)
  %8072 = alloca %nyx_string*
  store %nyx_string* %8071, %nyx_string** %8072
  %8073 = getelementptr [1 x i8], [1 x i8]* @.str1138, i32 0, i32 0
  %8074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %8073, i64 0)
  %8075 = alloca %nyx_string*
  store %nyx_string* %8074, %nyx_string** %8075
  %8076 = alloca i1
  store i1 0, i1* %8076
  %8077 = getelementptr [1 x i8], [1 x i8]* @.str1139, i32 0, i32 0
  %8078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %8077, i64 0)
  %8079 = alloca %nyx_string*
  store %nyx_string* %8078, %nyx_string** %8079
  %8080 = getelementptr [1 x i8], [1 x i8]* @.str1140, i32 0, i32 0
  %8081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %8080, i64 0)
  %8082 = alloca %nyx_string*
  store %nyx_string* %8081, %nyx_string** %8082
  %8083 = alloca i64
  store i64 2, i64* %8083
  %8084 = getelementptr [7 x i8], [7 x i8]* @.str1141, i32 0, i32 0
  %8085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %8084, i64 6)
  %8086 = alloca %nyx_string*
  store %nyx_string* %8085, %nyx_string** %8086
  %8087 = getelementptr [8 x i8], [8 x i8]* @.str1142, i32 0, i32 0
  %8088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %8087, i64 7)
  %8089 = alloca %nyx_string*
  store %nyx_string* %8088, %nyx_string** %8089
  %8090 = getelementptr [1 x i8], [1 x i8]* @.str1143, i32 0, i32 0
  %8091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %8090, i64 0)
  %8092 = alloca %nyx_string*
  store %nyx_string* %8091, %nyx_string** %8092
  %8093 = getelementptr [3 x i8], [3 x i8]* @.str1144, i32 0, i32 0
  %8094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %8093, i64 2)
  %8095 = alloca %nyx_string*
  store %nyx_string* %8094, %nyx_string** %8095
  %8096 = getelementptr [8 x i8], [8 x i8]* @.str1145, i32 0, i32 0
  %8097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %8096, i64 7)
  %8098 = alloca %nyx_string*
  store %nyx_string* %8097, %nyx_string** %8098
  %8099 = getelementptr [9 x i8], [9 x i8]* @.str1146, i32 0, i32 0
  %8100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %8099, i64 8)
  %8101 = alloca %nyx_string*
  store %nyx_string* %8100, %nyx_string** %8101
  %8102 = getelementptr [6 x i8], [6 x i8]* @.str1147, i32 0, i32 0
  %8103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %8102, i64 5)
  %8104 = alloca %nyx_string*
  store %nyx_string* %8103, %nyx_string** %8104
  %8105 = call i8* @llvm.stacksave()
  br label %while_cond1495
while_cond1495:
  %8106 = load i64, i64* %8083
  %8107 = load { i64, i8* }*, { i64, i8* }** %7820
  %8108 = call i64 @nyx_array_length({ i64, i8* }* %8107)
  %8109 = icmp slt i64 %8106, %8108
  br i1 %8109, label %while_body1496, label %while_end1497
while_body1496:
  call void @llvm.stackrestore(i8* %8105)
  %8110 = load { i64, i8* }*, { i64, i8* }** %7820
  %8111 = load i64, i64* %8083
  %8112 = call i64 @nyx_array_get_checked({ i64, i8* }* %8110, i64 %8111, i64 2)
  %8113 = inttoptr i64 %8112 to %nyx_string*
  %8114 = alloca %nyx_string*
  store %nyx_string* %8113, %nyx_string** %8114
  %8115 = alloca i1
  store i1 0, i1* %8115
  %8116 = alloca i1
  store i1 true, i1* %8116
  %8117 = load %nyx_string*, %nyx_string** %8114
  %8118 = load %nyx_string*, %nyx_string** %8086
  %8119 = call i1 @nyx_string_equals(%nyx_string* %8117, %nyx_string* %8118)
  br i1 %8119, label %sc_or_end1499, label %sc_or_rhs1498
sc_or_rhs1498:
  %8120 = load %nyx_string*, %nyx_string** %8114
  %8121 = load %nyx_string*, %nyx_string** %8089
  %8122 = call i1 @nyx_string_equals(%nyx_string* %8120, %nyx_string* %8121)
  store i1 %8122, i1* %8116
  br label %sc_or_end1499
sc_or_end1499:
  %8123 = load i1, i1* %8116
  br i1 %8123, label %then1500, label %else1501
then1500:
  store i1 1, i1* %8115
  %8124 = load %nyx_string*, %nyx_string** %8092
  %8125 = alloca %nyx_string*
  store %nyx_string* %8124, %nyx_string** %8125
  %8126 = load i64, i64* %8083
  %8127 = add i64 %8126, 1
  %8128 = load { i64, i8* }*, { i64, i8* }** %7820
  %8129 = call i64 @nyx_array_length({ i64, i8* }* %8128)
  %8130 = icmp slt i64 %8127, %8129
  br i1 %8130, label %then1503, label %else1504
then1503:
  %8131 = load { i64, i8* }*, { i64, i8* }** %7820
  %8132 = load i64, i64* %8083
  %8133 = add i64 %8132, 1
  %8134 = call i64 @nyx_array_get_checked({ i64, i8* }* %8131, i64 %8133, i64 2)
  %8135 = inttoptr i64 %8134 to %nyx_string*
  %8136 = alloca %nyx_string*
  store %nyx_string* %8135, %nyx_string** %8136
  %8137 = load %nyx_string*, %nyx_string** %8136
  %8138 = load %nyx_string*, %nyx_string** %8095
  %8139 = call i1 @nyx_string_starts_with(%nyx_string* %8137, %nyx_string* %8138)
  %8140 = icmp eq i1 %8139, 0
  br i1 %8140, label %then1506, label %else1507
then1506:
  %8141 = load %nyx_string*, %nyx_string** %8136
  store %nyx_string* %8141, %nyx_string** %8125
  br label %merge1508
else1507:
  br label %merge1508
merge1508:
  br label %merge1505
else1504:
  br label %merge1505
merge1505:
  %8142 = load %nyx_string*, %nyx_string** %8125
  %8143 = load %nyx_string*, %nyx_string** %8092
  %8144 = call i1 @nyx_string_equals(%nyx_string* %8142, %nyx_string* %8143)
  br i1 %8144, label %then1509, label %else1510
then1509:
  %8145 = load %nyx_string*, %nyx_string** %8114
  store %nyx_string* %8145, %nyx_string** %8082
  br label %merge1511
else1510:
  %8146 = load %nyx_string*, %nyx_string** %8114
  %8147 = load %nyx_string*, %nyx_string** %8086
  %8148 = call i1 @nyx_string_equals(%nyx_string* %8146, %nyx_string* %8147)
  br i1 %8148, label %then1512, label %else1513
then1512:
  %8149 = load %nyx_string*, %nyx_string** %8125
  store %nyx_string* %8149, %nyx_string** %8072
  br label %merge1514
else1513:
  br label %merge1514
merge1514:
  %8150 = load %nyx_string*, %nyx_string** %8114
  %8151 = load %nyx_string*, %nyx_string** %8089
  %8152 = call i1 @nyx_string_equals(%nyx_string* %8150, %nyx_string* %8151)
  br i1 %8152, label %then1515, label %else1516
then1515:
  %8153 = load %nyx_string*, %nyx_string** %8125
  store %nyx_string* %8153, %nyx_string** %8075
  br label %merge1517
else1516:
  br label %merge1517
merge1517:
  %8154 = load i64, i64* %8083
  %8155 = add i64 %8154, 1
  store i64 %8155, i64* %8083
  br label %merge1511
merge1511:
  br label %merge1502
else1501:
  br label %merge1502
merge1502:
  %8156 = alloca i1
  store i1 false, i1* %8156
  %8157 = load i1, i1* %8115
  %8158 = icmp eq i1 %8157, 0
  br i1 %8158, label %sc_and_rhs1518, label %sc_and_end1519
sc_and_rhs1518:
  %8159 = load %nyx_string*, %nyx_string** %8114
  %8160 = load %nyx_string*, %nyx_string** %8098
  %8161 = call i1 @nyx_string_starts_with(%nyx_string* %8159, %nyx_string* %8160)
  store i1 %8161, i1* %8156
  br label %sc_and_end1519
sc_and_end1519:
  %8162 = load i1, i1* %8156
  br i1 %8162, label %then1520, label %else1521
then1520:
  store i1 1, i1* %8115
  %8163 = load %nyx_string*, %nyx_string** %8114
  %8164 = load %nyx_string*, %nyx_string** %8114
  %8165 = call i64 @nyx_string_byte_length(%nyx_string* %8164)
  %8166 = call %nyx_string* @nyx_string_substring(%nyx_string* %8163, i64 7, i64 %8165)
  store %nyx_string* %8166, %nyx_string** %8072
  %8167 = load %nyx_string*, %nyx_string** %8072
  %8168 = load %nyx_string*, %nyx_string** %8092
  %8169 = call i1 @nyx_string_equals(%nyx_string* %8167, %nyx_string* %8168)
  br i1 %8169, label %then1523, label %else1524
then1523:
  %8170 = load %nyx_string*, %nyx_string** %8086
  store %nyx_string* %8170, %nyx_string** %8082
  br label %merge1525
else1524:
  br label %merge1525
merge1525:
  br label %merge1522
else1521:
  br label %merge1522
merge1522:
  %8171 = alloca i1
  store i1 false, i1* %8171
  %8172 = load i1, i1* %8115
  %8173 = icmp eq i1 %8172, 0
  br i1 %8173, label %sc_and_rhs1526, label %sc_and_end1527
sc_and_rhs1526:
  %8174 = load %nyx_string*, %nyx_string** %8114
  %8175 = load %nyx_string*, %nyx_string** %8101
  %8176 = call i1 @nyx_string_starts_with(%nyx_string* %8174, %nyx_string* %8175)
  store i1 %8176, i1* %8171
  br label %sc_and_end1527
sc_and_end1527:
  %8177 = load i1, i1* %8171
  br i1 %8177, label %then1528, label %else1529
then1528:
  store i1 1, i1* %8115
  %8178 = load %nyx_string*, %nyx_string** %8114
  %8179 = load %nyx_string*, %nyx_string** %8114
  %8180 = call i64 @nyx_string_byte_length(%nyx_string* %8179)
  %8181 = call %nyx_string* @nyx_string_substring(%nyx_string* %8178, i64 8, i64 %8180)
  store %nyx_string* %8181, %nyx_string** %8075
  %8182 = load %nyx_string*, %nyx_string** %8075
  %8183 = load %nyx_string*, %nyx_string** %8092
  %8184 = call i1 @nyx_string_equals(%nyx_string* %8182, %nyx_string* %8183)
  br i1 %8184, label %then1531, label %else1532
then1531:
  %8185 = load %nyx_string*, %nyx_string** %8089
  store %nyx_string* %8185, %nyx_string** %8082
  br label %merge1533
else1532:
  br label %merge1533
merge1533:
  br label %merge1530
else1529:
  br label %merge1530
merge1530:
  %8186 = alloca i1
  store i1 false, i1* %8186
  %8187 = load i1, i1* %8115
  %8188 = icmp eq i1 %8187, 0
  br i1 %8188, label %sc_and_rhs1534, label %sc_and_end1535
sc_and_rhs1534:
  %8189 = load %nyx_string*, %nyx_string** %8114
  %8190 = load %nyx_string*, %nyx_string** %8104
  %8191 = call i1 @nyx_string_equals(%nyx_string* %8189, %nyx_string* %8190)
  store i1 %8191, i1* %8186
  br label %sc_and_end1535
sc_and_end1535:
  %8192 = load i1, i1* %8186
  br i1 %8192, label %then1536, label %else1537
then1536:
  store i1 1, i1* %8115
  store i1 1, i1* %8076
  br label %merge1538
else1537:
  br label %merge1538
merge1538:
  %8193 = alloca i1
  store i1 false, i1* %8193
  %8194 = load i1, i1* %8115
  %8195 = icmp eq i1 %8194, 0
  br i1 %8195, label %sc_and_rhs1539, label %sc_and_end1540
sc_and_rhs1539:
  %8196 = load %nyx_string*, %nyx_string** %8114
  %8197 = load %nyx_string*, %nyx_string** %8095
  %8198 = call i1 @nyx_string_starts_with(%nyx_string* %8196, %nyx_string* %8197)
  store i1 %8198, i1* %8193
  br label %sc_and_end1540
sc_and_end1540:
  %8199 = load i1, i1* %8193
  br i1 %8199, label %then1541, label %else1542
then1541:
  store i1 1, i1* %8115
  %8200 = load %nyx_string*, %nyx_string** %8114
  store %nyx_string* %8200, %nyx_string** %8079
  br label %merge1543
else1542:
  br label %merge1543
merge1543:
  %8201 = load i1, i1* %8115
  %8202 = icmp eq i1 %8201, 0
  br i1 %8202, label %then1544, label %else1545
then1544:
  %8203 = load %nyx_string*, %nyx_string** %8069
  %8204 = load %nyx_string*, %nyx_string** %8092
  %8205 = call i1 @nyx_string_equals(%nyx_string* %8203, %nyx_string* %8204)
  br i1 %8205, label %then1547, label %else1548
then1547:
  %8206 = load %nyx_string*, %nyx_string** %8114
  store %nyx_string* %8206, %nyx_string** %8069
  br label %merge1549
else1548:
  br label %merge1549
merge1549:
  br label %merge1546
else1545:
  br label %merge1546
merge1546:
  %8207 = load i64, i64* %8083
  %8208 = add i64 %8207, 1
  store i64 %8208, i64* %8083
  br label %while_cond1495
while_end1497:
  %8209 = load %nyx_string*, %nyx_string** %8079
  %8210 = getelementptr [1 x i8], [1 x i8]* @.str1148, i32 0, i32 0
  %8211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %8210, i64 0)
  %8212 = call i1 @nyx_string_equals(%nyx_string* %8209, %nyx_string* %8211)
  %8213 = xor i1 %8212, true
  br i1 %8213, label %then1550, label %else1551
then1550:
  %8214 = getelementptr [42 x i8], [42 x i8]* @.str1149, i32 0, i32 0
  %8215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %8214, i64 41)
  %8216 = load %nyx_string*, %nyx_string** %8079
  %8217 = call %nyx_string* @nyx_string_concat(%nyx_string* %8215, %nyx_string* %8216)
  %8218 = call i8* @nyx_string_to_cstr(%nyx_string* %8217)
  call void @nyx_print_string(i8* %8218)
  %8219 = getelementptr [80 x i8], [80 x i8]* @.str1150, i32 0, i32 0
  %8220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1150.c, i8* %8219, i64 79)
  %8221 = call i8* @nyx_string_to_cstr(%nyx_string* %8220)
  call void @nyx_print_string(i8* %8221)
  ret i64 1
else1551:
  br label %merge1552
merge1552:
  %8222 = load %nyx_string*, %nyx_string** %8082
  %8223 = getelementptr [1 x i8], [1 x i8]* @.str1151, i32 0, i32 0
  %8224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1151.c, i8* %8223, i64 0)
  %8225 = call i1 @nyx_string_equals(%nyx_string* %8222, %nyx_string* %8224)
  %8226 = xor i1 %8225, true
  br i1 %8226, label %then1553, label %else1554
then1553:
  %8227 = getelementptr [8 x i8], [8 x i8]* @.str1152, i32 0, i32 0
  %8228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1152.c, i8* %8227, i64 7)
  %8229 = load %nyx_string*, %nyx_string** %8082
  %8230 = call %nyx_string* @nyx_string_concat(%nyx_string* %8228, %nyx_string* %8229)
  %8231 = getelementptr [19 x i8], [19 x i8]* @.str1153, i32 0, i32 0
  %8232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1153.c, i8* %8231, i64 18)
  %8233 = call %nyx_string* @nyx_string_concat(%nyx_string* %8230, %nyx_string* %8232)
  %8234 = call i8* @nyx_string_to_cstr(%nyx_string* %8233)
  call void @nyx_print_string(i8* %8234)
  %8235 = getelementptr [80 x i8], [80 x i8]* @.str1154, i32 0, i32 0
  %8236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1154.c, i8* %8235, i64 79)
  %8237 = call i8* @nyx_string_to_cstr(%nyx_string* %8236)
  call void @nyx_print_string(i8* %8237)
  ret i64 1
else1554:
  br label %merge1555
merge1555:
  %8238 = load %nyx_string*, %nyx_string** %8072
  %8239 = getelementptr [1 x i8], [1 x i8]* @.str1155, i32 0, i32 0
  %8240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1155.c, i8* %8239, i64 0)
  %8241 = call i1 @nyx_string_equals(%nyx_string* %8238, %nyx_string* %8240)
  br i1 %8241, label %then1556, label %else1557
then1556:
  %8242 = getelementptr [9 x i8], [9 x i8]* @.str1156, i32 0, i32 0
  %8243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1156.c, i8* %8242, i64 8)
  %8244 = call i8* @nyx_string_to_cstr(%nyx_string* %8243)
  %8245 = call %nyx_string* @nyx_getenv(i8* %8244)
  %8246 = alloca %nyx_string*
  store %nyx_string* %8245, %nyx_string** %8246
  %8247 = load %nyx_string*, %nyx_string** %8246
  %8248 = getelementptr [3 x i8], [3 x i8]* @.str1157, i32 0, i32 0
  %8249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1157.c, i8* %8248, i64 2)
  %8250 = call i1 @nyx_string_equals(%nyx_string* %8247, %nyx_string* %8249)
  br i1 %8250, label %then1559, label %else1560
then1559:
  %8251 = getelementptr [3 x i8], [3 x i8]* @.str1158, i32 0, i32 0
  %8252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1158.c, i8* %8251, i64 2)
  store %nyx_string* %8252, %nyx_string** %8072
  br label %merge1561
else1560:
  br label %merge1561
merge1561:
  %8253 = load %nyx_string*, %nyx_string** %8072
  %8254 = getelementptr [1 x i8], [1 x i8]* @.str1159, i32 0, i32 0
  %8255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1159.c, i8* %8254, i64 0)
  %8256 = call i1 @nyx_string_equals(%nyx_string* %8253, %nyx_string* %8255)
  br i1 %8256, label %then1562, label %else1563
then1562:
  %8257 = getelementptr [3 x i8], [3 x i8]* @.str1160, i32 0, i32 0
  %8258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1160.c, i8* %8257, i64 2)
  store %nyx_string* %8258, %nyx_string** %8072
  br label %merge1564
else1563:
  br label %merge1564
merge1564:
  br label %merge1558
else1557:
  br label %merge1558
merge1558:
  %8259 = alloca i1
  store i1 false, i1* %8259
  %8260 = load %nyx_string*, %nyx_string** %8072
  %8261 = getelementptr [3 x i8], [3 x i8]* @.str1161, i32 0, i32 0
  %8262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1161.c, i8* %8261, i64 2)
  %8263 = call i1 @nyx_string_equals(%nyx_string* %8260, %nyx_string* %8262)
  %8264 = xor i1 %8263, true
  br i1 %8264, label %sc_and_rhs1565, label %sc_and_end1566
sc_and_rhs1565:
  %8265 = load %nyx_string*, %nyx_string** %8072
  %8266 = getelementptr [3 x i8], [3 x i8]* @.str1162, i32 0, i32 0
  %8267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1162.c, i8* %8266, i64 2)
  %8268 = call i1 @nyx_string_equals(%nyx_string* %8265, %nyx_string* %8267)
  %8269 = xor i1 %8268, true
  store i1 %8269, i1* %8259
  br label %sc_and_end1566
sc_and_end1566:
  %8270 = load i1, i1* %8259
  br i1 %8270, label %then1567, label %else1568
then1567:
  %8271 = getelementptr [27 x i8], [27 x i8]* @.str1163, i32 0, i32 0
  %8272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1163.c, i8* %8271, i64 26)
  %8273 = load %nyx_string*, %nyx_string** %8072
  %8274 = call %nyx_string* @nyx_string_concat(%nyx_string* %8272, %nyx_string* %8273)
  %8275 = getelementptr [29 x i8], [29 x i8]* @.str1164, i32 0, i32 0
  %8276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1164.c, i8* %8275, i64 28)
  %8277 = call %nyx_string* @nyx_string_concat(%nyx_string* %8274, %nyx_string* %8276)
  %8278 = call i8* @nyx_string_to_cstr(%nyx_string* %8277)
  call void @nyx_print_string(i8* %8278)
  ret i64 1
else1568:
  br label %merge1569
merge1569:
  %8279 = load %nyx_string*, %nyx_string** %8075
  %8280 = call i1 @validate_agents(%nyx_string* %8279)
  %8281 = icmp eq i1 %8280, 0
  br i1 %8281, label %then1570, label %else1571
then1570:
  ret i64 1
else1571:
  br label %merge1572
merge1572:
  %8282 = load %nyx_string*, %nyx_string** %8069
  %8283 = load %nyx_string*, %nyx_string** %8072
  %8284 = load %nyx_string*, %nyx_string** %8075
  %8285 = call i1 @run_init(%nyx_string* %8282, %nyx_string* %8283, %nyx_string* %8284)
  %8286 = alloca i1
  store i1 %8285, i1* %8286
  %8287 = load i1, i1* %8286
  %8288 = icmp eq i1 %8287, 0
  br i1 %8288, label %then1573, label %else1574
then1573:
  ret i64 1
else1574:
  br label %merge1575
merge1575:
  %8289 = load i1, i1* %8076
  br i1 %8289, label %then1576, label %else1577
then1576:
  %8290 = load %nyx_string*, %nyx_string** %8069
  %8291 = alloca %nyx_string*
  store %nyx_string* %8290, %nyx_string** %8291
  %8292 = load %nyx_string*, %nyx_string** %8291
  %8293 = getelementptr [1 x i8], [1 x i8]* @.str1165, i32 0, i32 0
  %8294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1165.c, i8* %8293, i64 0)
  %8295 = call i1 @nyx_string_equals(%nyx_string* %8292, %nyx_string* %8294)
  br i1 %8295, label %then1579, label %else1580
then1579:
  %8296 = getelementptr [2 x i8], [2 x i8]* @.str1166, i32 0, i32 0
  %8297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1166.c, i8* %8296, i64 1)
  store %nyx_string* %8297, %nyx_string** %8291
  br label %merge1581
else1580:
  br label %merge1581
merge1581:
  %8298 = getelementptr [1 x i8], [1 x i8]* @.str1167, i32 0, i32 0
  %8299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1167.c, i8* %8298, i64 0)
  %8300 = call i8* @nyx_string_to_cstr(%nyx_string* %8299)
  call void @nyx_print_string(i8* %8300)
  %8301 = load %nyx_string*, %nyx_string** %8291
  %8302 = load %nyx_string*, %nyx_string** %8072
  %8303 = call i1 @run_sdd_init(%nyx_string* %8301, %nyx_string* %8302)
  %8304 = alloca i1
  store i1 %8303, i1* %8304
  %8305 = load i1, i1* %8304
  %8306 = icmp eq i1 %8305, 0
  br i1 %8306, label %then1582, label %else1583
then1582:
  ret i64 1
else1583:
  br label %merge1584
merge1584:
  br label %merge1578
else1577:
  br label %merge1578
merge1578:
  ret i64 0
else1493:
  br label %merge1494
merge1494:
  %8307 = load %nyx_string*, %nyx_string** %7823
  %8308 = getelementptr [4 x i8], [4 x i8]* @.str1168, i32 0, i32 0
  %8309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1168.c, i8* %8308, i64 3)
  %8310 = call i1 @nyx_string_equals(%nyx_string* %8307, %nyx_string* %8309)
  br i1 %8310, label %then1585, label %else1586
then1585:
  %8311 = getelementptr [1 x i8], [1 x i8]* @.str1169, i32 0, i32 0
  %8312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1169.c, i8* %8311, i64 0)
  %8313 = alloca %nyx_string*
  store %nyx_string* %8312, %nyx_string** %8313
  %8314 = load { i64, i8* }*, { i64, i8* }** %7820
  %8315 = call i64 @nyx_array_length({ i64, i8* }* %8314)
  %8316 = icmp sge i64 %8315, 3
  br i1 %8316, label %then1588, label %else1589
then1588:
  %8317 = load { i64, i8* }*, { i64, i8* }** %7820
  %8318 = call i64 @nyx_array_get_checked({ i64, i8* }* %8317, i64 2, i64 2)
  %8319 = inttoptr i64 %8318 to %nyx_string*
  %8320 = alloca %nyx_string*
  store %nyx_string* %8319, %nyx_string** %8320
  %8321 = load %nyx_string*, %nyx_string** %8320
  store %nyx_string* %8321, %nyx_string** %8313
  br label %merge1590
else1589:
  br label %merge1590
merge1590:
  %8322 = load %nyx_string*, %nyx_string** %8313
  %8323 = getelementptr [5 x i8], [5 x i8]* @.str1170, i32 0, i32 0
  %8324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1170.c, i8* %8323, i64 4)
  %8325 = call i1 @nyx_string_equals(%nyx_string* %8322, %nyx_string* %8324)
  br i1 %8325, label %then1591, label %else1592
then1591:
  %8326 = getelementptr [2 x i8], [2 x i8]* @.str1171, i32 0, i32 0
  %8327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1171.c, i8* %8326, i64 1)
  %8328 = getelementptr [2 x i8], [2 x i8]* @.str1172, i32 0, i32 0
  %8329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1172.c, i8* %8328, i64 1)
  %8330 = call %nyx_string* @project_lang(%nyx_string* %8329)
  %8331 = call i1 @run_sdd_init(%nyx_string* %8327, %nyx_string* %8330)
  %8332 = alloca i1
  store i1 %8331, i1* %8332
  %8333 = load i1, i1* %8332
  br i1 %8333, label %then1594, label %else1595
then1594:
  ret i64 0
else1595:
  br label %merge1596
merge1596:
  ret i64 1
else1592:
  br label %merge1593
merge1593:
  %8334 = load %nyx_string*, %nyx_string** %8313
  %8335 = getelementptr [9 x i8], [9 x i8]* @.str1173, i32 0, i32 0
  %8336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1173.c, i8* %8335, i64 8)
  %8337 = call i1 @nyx_string_equals(%nyx_string* %8334, %nyx_string* %8336)
  br i1 %8337, label %then1597, label %else1598
then1597:
  %8338 = getelementptr [2 x i8], [2 x i8]* @.str1174, i32 0, i32 0
  %8339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1174.c, i8* %8338, i64 1)
  %8340 = getelementptr [2 x i8], [2 x i8]* @.str1175, i32 0, i32 0
  %8341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1175.c, i8* %8340, i64 1)
  %8342 = call %nyx_string* @project_lang(%nyx_string* %8341)
  %8343 = call i1 @run_sdd_evidence(%nyx_string* %8339, %nyx_string* %8342)
  %8344 = alloca i1
  store i1 %8343, i1* %8344
  %8345 = load i1, i1* %8344
  br i1 %8345, label %then1600, label %else1601
then1600:
  ret i64 0
else1601:
  br label %merge1602
merge1602:
  ret i64 1
else1598:
  br label %merge1599
merge1599:
  %8346 = load %nyx_string*, %nyx_string** %8313
  %8347 = getelementptr [1 x i8], [1 x i8]* @.str1176, i32 0, i32 0
  %8348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1176.c, i8* %8347, i64 0)
  %8349 = call i1 @nyx_string_equals(%nyx_string* %8346, %nyx_string* %8348)
  br i1 %8349, label %then1603, label %else1604
then1603:
  %8350 = getelementptr [57 x i8], [57 x i8]* @.str1177, i32 0, i32 0
  %8351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1177.c, i8* %8350, i64 56)
  %8352 = call i8* @nyx_string_to_cstr(%nyx_string* %8351)
  call void @nyx_print_string(i8* %8352)
  br label %merge1605
else1604:
  %8353 = getelementptr [48 x i8], [48 x i8]* @.str1178, i32 0, i32 0
  %8354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1178.c, i8* %8353, i64 47)
  %8355 = load %nyx_string*, %nyx_string** %8313
  %8356 = call %nyx_string* @nyx_string_concat(%nyx_string* %8354, %nyx_string* %8355)
  %8357 = getelementptr [29 x i8], [29 x i8]* @.str1179, i32 0, i32 0
  %8358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1179.c, i8* %8357, i64 28)
  %8359 = call %nyx_string* @nyx_string_concat(%nyx_string* %8356, %nyx_string* %8358)
  %8360 = call i8* @nyx_string_to_cstr(%nyx_string* %8359)
  call void @nyx_print_string(i8* %8360)
  br label %merge1605
merge1605:
  %8361 = getelementptr [69 x i8], [69 x i8]* @.str1180, i32 0, i32 0
  %8362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1180.c, i8* %8361, i64 68)
  %8363 = call i8* @nyx_string_to_cstr(%nyx_string* %8362)
  call void @nyx_print_string(i8* %8363)
  %8364 = getelementptr [79 x i8], [79 x i8]* @.str1181, i32 0, i32 0
  %8365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1181.c, i8* %8364, i64 78)
  %8366 = call i8* @nyx_string_to_cstr(%nyx_string* %8365)
  call void @nyx_print_string(i8* %8366)
  ret i64 1
else1586:
  br label %merge1587
merge1587:
  %8367 = load %nyx_string*, %nyx_string** %7823
  %8368 = getelementptr [4 x i8], [4 x i8]* @.str1182, i32 0, i32 0
  %8369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1182.c, i8* %8368, i64 3)
  %8370 = call i1 @nyx_string_equals(%nyx_string* %8367, %nyx_string* %8369)
  br i1 %8370, label %then1606, label %else1607
then1606:
  %8371 = load { i64, i8* }*, { i64, i8* }** %7820
  %8372 = call i64 @nyx_array_length({ i64, i8* }* %8371)
  %8373 = icmp slt i64 %8372, 3
  br i1 %8373, label %then1609, label %else1610
then1609:
  %8374 = getelementptr [51 x i8], [51 x i8]* @.str1183, i32 0, i32 0
  %8375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1183.c, i8* %8374, i64 50)
  %8376 = call i8* @nyx_string_to_cstr(%nyx_string* %8375)
  call void @nyx_print_string(i8* %8376)
  ret i64 1
else1610:
  br label %merge1611
merge1611:
  %8377 = load { i64, i8* }*, { i64, i8* }** %7820
  %8378 = call i64 @nyx_array_get_checked({ i64, i8* }* %8377, i64 2, i64 2)
  %8379 = inttoptr i64 %8378 to %nyx_string*
  %8380 = alloca %nyx_string*
  store %nyx_string* %8379, %nyx_string** %8380
  %8381 = getelementptr [1 x i8], [1 x i8]* @.str1184, i32 0, i32 0
  %8382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1184.c, i8* %8381, i64 0)
  %8383 = alloca %nyx_string*
  store %nyx_string* %8382, %nyx_string** %8383
  %8384 = load { i64, i8* }*, { i64, i8* }** %7820
  %8385 = call i64 @nyx_array_length({ i64, i8* }* %8384)
  %8386 = icmp sge i64 %8385, 5
  br i1 %8386, label %then1612, label %else1613
then1612:
  %8387 = load { i64, i8* }*, { i64, i8* }** %7820
  %8388 = call i64 @nyx_array_get_checked({ i64, i8* }* %8387, i64 3, i64 2)
  %8389 = inttoptr i64 %8388 to %nyx_string*
  %8390 = alloca %nyx_string*
  store %nyx_string* %8389, %nyx_string** %8390
  %8391 = load %nyx_string*, %nyx_string** %8390
  %8392 = getelementptr [7 x i8], [7 x i8]* @.str1185, i32 0, i32 0
  %8393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1185.c, i8* %8392, i64 6)
  %8394 = call i1 @nyx_string_equals(%nyx_string* %8391, %nyx_string* %8393)
  br i1 %8394, label %then1615, label %else1616
then1615:
  %8395 = load { i64, i8* }*, { i64, i8* }** %7820
  %8396 = call i64 @nyx_array_get_checked({ i64, i8* }* %8395, i64 4, i64 2)
  %8397 = inttoptr i64 %8396 to %nyx_string*
  %8398 = alloca %nyx_string*
  store %nyx_string* %8397, %nyx_string** %8398
  %8399 = load %nyx_string*, %nyx_string** %8398
  store %nyx_string* %8399, %nyx_string** %8383
  br label %merge1617
else1616:
  br label %merge1617
merge1617:
  br label %merge1614
else1613:
  br label %merge1614
merge1614:
  %8400 = call { i64, i8* }* @nyx_array_new_ptr()
  %8401 = alloca { i64, i8* }*
  store { i64, i8* }* %8400, { i64, i8* }** %8401
  %8402 = call { i64, i8* }* @nyx_array_new_ptr()
  %8403 = alloca { i64, i8* }*
  store { i64, i8* }* %8402, { i64, i8* }** %8403
  %8404 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %8405 = ptrtoint %ProjectConfig* %8404 to i64
  %8406 = call i8* @GC_malloc(i64 %8405)
  %8407 = bitcast i8* %8406 to %ProjectConfig*
  %8408 = getelementptr [8 x i8], [8 x i8]* @.str1186, i32 0, i32 0
  %8409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1186.c, i8* %8408, i64 7)
  %8410 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 0
  store %nyx_string* %8409, %nyx_string** %8410
  %8411 = getelementptr [6 x i8], [6 x i8]* @.str1187, i32 0, i32 0
  %8412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1187.c, i8* %8411, i64 5)
  %8413 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 1
  store %nyx_string* %8412, %nyx_string** %8413
  %8414 = getelementptr [1 x i8], [1 x i8]* @.str1188, i32 0, i32 0
  %8415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1188.c, i8* %8414, i64 0)
  %8416 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 2
  store %nyx_string* %8415, %nyx_string** %8416
  %8417 = getelementptr [1 x i8], [1 x i8]* @.str1189, i32 0, i32 0
  %8418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1189.c, i8* %8417, i64 0)
  %8419 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 3
  store %nyx_string* %8418, %nyx_string** %8419
  %8420 = getelementptr [1 x i8], [1 x i8]* @.str1190, i32 0, i32 0
  %8421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1190.c, i8* %8420, i64 0)
  %8422 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 4
  store %nyx_string* %8421, %nyx_string** %8422
  %8423 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 5
  store i1 0, i1* %8423
  %8424 = getelementptr [1 x i8], [1 x i8]* @.str1191, i32 0, i32 0
  %8425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1191.c, i8* %8424, i64 0)
  %8426 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 6
  store %nyx_string* %8425, %nyx_string** %8426
  %8427 = load { i64, i8* }*, { i64, i8* }** %8401
  %8428 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 7
  store { i64, i8* }* %8427, { i64, i8* }** %8428
  %8429 = load { i64, i8* }*, { i64, i8* }** %8403
  %8430 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 8
  store { i64, i8* }* %8429, { i64, i8* }** %8430
  %8431 = getelementptr [1 x i8], [1 x i8]* @.str1192, i32 0, i32 0
  %8432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1192.c, i8* %8431, i64 0)
  %8433 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 9
  store %nyx_string* %8432, %nyx_string** %8433
  %8434 = getelementptr [1 x i8], [1 x i8]* @.str1193, i32 0, i32 0
  %8435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1193.c, i8* %8434, i64 0)
  %8436 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 10
  store %nyx_string* %8435, %nyx_string** %8436
  %8437 = call { i64, i8* }* @nyx_array_new_ptr()
  %8438 = getelementptr %ProjectConfig, %ProjectConfig* %8407, i32 0, i32 11
  store { i64, i8* }* %8437, { i64, i8* }** %8438
  %8439 = load %ProjectConfig, %ProjectConfig* %8407
  %8440 = alloca %ProjectConfig
  store %ProjectConfig %8439, %ProjectConfig* %8440
  %8441 = load %nyx_string*, %nyx_string** %8380
  %8442 = load %nyx_string*, %nyx_string** %8383
  %8443 = load %ProjectConfig, %ProjectConfig* %8440
  %8444 = call i1 @run_add(%nyx_string* %8441, %nyx_string* %8442, %ProjectConfig %8443)
  %8445 = alloca i1
  store i1 %8444, i1* %8445
  %8446 = load i1, i1* %8445
  br i1 %8446, label %then1618, label %else1619
then1618:
  ret i64 0
else1619:
  br label %merge1620
merge1620:
  ret i64 1
else1607:
  br label %merge1608
merge1608:
  %8447 = load %nyx_string*, %nyx_string** %7823
  %8448 = getelementptr [7 x i8], [7 x i8]* @.str1194, i32 0, i32 0
  %8449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1194.c, i8* %8448, i64 6)
  %8450 = call i1 @nyx_string_equals(%nyx_string* %8447, %nyx_string* %8449)
  br i1 %8450, label %then1621, label %else1622
then1621:
  %8451 = getelementptr [1 x i8], [1 x i8]* @.str1195, i32 0, i32 0
  %8452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1195.c, i8* %8451, i64 0)
  %8453 = alloca %nyx_string*
  store %nyx_string* %8452, %nyx_string** %8453
  %8454 = alloca i1
  store i1 0, i1* %8454
  %8455 = alloca i64
  store i64 2, i64* %8455
  %8456 = getelementptr [7 x i8], [7 x i8]* @.str1196, i32 0, i32 0
  %8457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1196.c, i8* %8456, i64 6)
  %8458 = alloca %nyx_string*
  store %nyx_string* %8457, %nyx_string** %8458
  %8459 = getelementptr [10 x i8], [10 x i8]* @.str1197, i32 0, i32 0
  %8460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1197.c, i8* %8459, i64 9)
  %8461 = alloca %nyx_string*
  store %nyx_string* %8460, %nyx_string** %8461
  %8462 = call i8* @llvm.stacksave()
  br label %while_cond1624
while_cond1624:
  %8463 = load i64, i64* %8455
  %8464 = load { i64, i8* }*, { i64, i8* }** %7820
  %8465 = call i64 @nyx_array_length({ i64, i8* }* %8464)
  %8466 = icmp slt i64 %8463, %8465
  br i1 %8466, label %while_body1625, label %while_end1626
while_body1625:
  call void @llvm.stackrestore(i8* %8462)
  %8467 = load { i64, i8* }*, { i64, i8* }** %7820
  %8468 = load i64, i64* %8455
  %8469 = call i64 @nyx_array_get_checked({ i64, i8* }* %8467, i64 %8468, i64 2)
  %8470 = inttoptr i64 %8469 to %nyx_string*
  %8471 = alloca %nyx_string*
  store %nyx_string* %8470, %nyx_string** %8471
  %8472 = load %nyx_string*, %nyx_string** %8471
  %8473 = load %nyx_string*, %nyx_string** %8458
  %8474 = call i1 @nyx_string_equals(%nyx_string* %8472, %nyx_string* %8473)
  br i1 %8474, label %then1627, label %else1628
then1627:
  store i1 1, i1* %8454
  br label %merge1629
else1628:
  %8475 = load %nyx_string*, %nyx_string** %8471
  %8476 = load %nyx_string*, %nyx_string** %8461
  %8477 = call i1 @nyx_string_equals(%nyx_string* %8475, %nyx_string* %8476)
  %8478 = xor i1 %8477, true
  br i1 %8478, label %then1630, label %else1631
then1630:
  %8479 = load %nyx_string*, %nyx_string** %8471
  store %nyx_string* %8479, %nyx_string** %8453
  br label %merge1632
else1631:
  br label %merge1632
merge1632:
  br label %merge1629
merge1629:
  %8480 = load i64, i64* %8455
  %8481 = add i64 %8480, 1
  store i64 %8481, i64* %8455
  br label %while_cond1624
while_end1626:
  %8482 = load %nyx_string*, %nyx_string** %8453
  %8483 = load i1, i1* %8454
  %8484 = call i1 @run_report(%nyx_string* %8482, i1 %8483)
  %8485 = alloca i1
  store i1 %8484, i1* %8485
  %8486 = load i1, i1* %8485
  br i1 %8486, label %then1633, label %else1634
then1633:
  ret i64 0
else1634:
  br label %merge1635
merge1635:
  ret i64 1
else1622:
  br label %merge1623
merge1623:
  %8487 = load %nyx_string*, %nyx_string** %7823
  %8488 = getelementptr [13 x i8], [13 x i8]* @.str1198, i32 0, i32 0
  %8489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1198.c, i8* %8488, i64 12)
  %8490 = call i1 @nyx_string_equals(%nyx_string* %8487, %nyx_string* %8489)
  br i1 %8490, label %then1636, label %else1637
then1636:
  %8491 = getelementptr [1 x i8], [1 x i8]* @.str1199, i32 0, i32 0
  %8492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1199.c, i8* %8491, i64 0)
  %8493 = alloca %nyx_string*
  store %nyx_string* %8492, %nyx_string** %8493
  %8494 = load { i64, i8* }*, { i64, i8* }** %7820
  %8495 = call i64 @nyx_array_length({ i64, i8* }* %8494)
  %8496 = icmp sge i64 %8495, 3
  br i1 %8496, label %then1639, label %else1640
then1639:
  %8497 = load { i64, i8* }*, { i64, i8* }** %7820
  %8498 = call i64 @nyx_array_get_checked({ i64, i8* }* %8497, i64 2, i64 2)
  %8499 = inttoptr i64 %8498 to %nyx_string*
  %8500 = alloca %nyx_string*
  store %nyx_string* %8499, %nyx_string** %8500
  %8501 = load %nyx_string*, %nyx_string** %8500
  %8502 = getelementptr [10 x i8], [10 x i8]* @.str1200, i32 0, i32 0
  %8503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1200.c, i8* %8502, i64 9)
  %8504 = call i1 @nyx_string_equals(%nyx_string* %8501, %nyx_string* %8503)
  %8505 = xor i1 %8504, true
  br i1 %8505, label %then1642, label %else1643
then1642:
  %8506 = load %nyx_string*, %nyx_string** %8500
  store %nyx_string* %8506, %nyx_string** %8493
  br label %merge1644
else1643:
  br label %merge1644
merge1644:
  br label %merge1641
else1640:
  br label %merge1641
merge1641:
  %8507 = load %nyx_string*, %nyx_string** %8493
  %8508 = call i1 @run_capabilities(%nyx_string* %8507)
  %8509 = alloca i1
  store i1 %8508, i1* %8509
  %8510 = load i1, i1* %8509
  br i1 %8510, label %then1645, label %else1646
then1645:
  ret i64 0
else1646:
  br label %merge1647
merge1647:
  ret i64 1
else1637:
  br label %merge1638
merge1638:
  %8511 = getelementptr [9 x i8], [9 x i8]* @.str1201, i32 0, i32 0
  %8512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1201.c, i8* %8511, i64 8)
  %8513 = call i8* @nyx_string_to_cstr(%nyx_string* %8512)
  %8514 = call i1 @nyx_file_exists(i8* %8513)
  %8515 = xor i1 %8514, true
  br i1 %8515, label %then1648, label %else1649
then1648:
  %8516 = getelementptr [47 x i8], [47 x i8]* @.str1202, i32 0, i32 0
  %8517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1202.c, i8* %8516, i64 46)
  %8518 = call i8* @nyx_string_to_cstr(%nyx_string* %8517)
  call void @nyx_print_string(i8* %8518)
  %8519 = getelementptr [24 x i8], [24 x i8]* @.str1203, i32 0, i32 0
  %8520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1203.c, i8* %8519, i64 23)
  %8521 = call i8* @nyx_string_to_cstr(%nyx_string* %8520)
  call void @nyx_print_string(i8* %8521)
  %8522 = getelementptr [12 x i8], [12 x i8]* @.str1204, i32 0, i32 0
  %8523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1204.c, i8* %8522, i64 11)
  %8524 = call i8* @nyx_string_to_cstr(%nyx_string* %8523)
  call void @nyx_print_string(i8* %8524)
  %8525 = getelementptr [17 x i8], [17 x i8]* @.str1205, i32 0, i32 0
  %8526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1205.c, i8* %8525, i64 16)
  %8527 = call i8* @nyx_string_to_cstr(%nyx_string* %8526)
  call void @nyx_print_string(i8* %8527)
  %8528 = getelementptr [20 x i8], [20 x i8]* @.str1206, i32 0, i32 0
  %8529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1206.c, i8* %8528, i64 19)
  %8530 = call i8* @nyx_string_to_cstr(%nyx_string* %8529)
  call void @nyx_print_string(i8* %8530)
  %8531 = getelementptr [23 x i8], [23 x i8]* @.str1207, i32 0, i32 0
  %8532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1207.c, i8* %8531, i64 22)
  %8533 = call i8* @nyx_string_to_cstr(%nyx_string* %8532)
  call void @nyx_print_string(i8* %8533)
  ret i64 1
else1649:
  br label %merge1650
merge1650:
  %8534 = getelementptr [9 x i8], [9 x i8]* @.str1208, i32 0, i32 0
  %8535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1208.c, i8* %8534, i64 8)
  %8536 = call i8* @nyx_string_to_cstr(%nyx_string* %8535)
  %8537 = call %nyx_string* @nyx_read_file(i8* %8536)
  %8538 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 20
  store %nyx_string* %8537, %nyx_string** %8538
  %8539 = load %nyx_string*, %nyx_string** %8538
  %8540 = call %ProjectConfig @parse_toml(%nyx_string* %8539)
  %8541 = getelementptr %SharedEnv_main, %SharedEnv_main* %7818, i32 0, i32 21
  store %ProjectConfig %8540, %ProjectConfig* %8541
  %8542 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 9
  %8543 = load %nyx_string*, %nyx_string** %8542
  %8544 = getelementptr [1 x i8], [1 x i8]* @.str1209, i32 0, i32 0
  %8545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1209.c, i8* %8544, i64 0)
  %8546 = call i1 @nyx_string_equals(%nyx_string* %8543, %nyx_string* %8545)
  %8547 = xor i1 %8546, true
  br i1 %8547, label %then1651, label %else1652
then1651:
  %8548 = getelementptr [8 x i8], [8 x i8]* @.str1210, i32 0, i32 0
  %8549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1210.c, i8* %8548, i64 7)
  %8550 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 9
  %8551 = load %nyx_string*, %nyx_string** %8550
  %8552 = call %nyx_string* @nyx_string_concat(%nyx_string* %8549, %nyx_string* %8551)
  %8553 = call i8* @nyx_string_to_cstr(%nyx_string* %8552)
  call void @nyx_print_string(i8* %8553)
  ret i64 1
else1652:
  br label %merge1653
merge1653:
  %8554 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 0
  %8555 = load %nyx_string*, %nyx_string** %8554
  %8556 = getelementptr [1 x i8], [1 x i8]* @.str1211, i32 0, i32 0
  %8557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1211.c, i8* %8556, i64 0)
  %8558 = call i1 @nyx_string_equals(%nyx_string* %8555, %nyx_string* %8557)
  br i1 %8558, label %then1654, label %else1655
then1654:
  %8559 = getelementptr [45 x i8], [45 x i8]* @.str1212, i32 0, i32 0
  %8560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1212.c, i8* %8559, i64 44)
  %8561 = call i8* @nyx_string_to_cstr(%nyx_string* %8560)
  call void @nyx_print_string(i8* %8561)
  ret i64 1
else1655:
  br label %merge1656
merge1656:
  %8562 = load %nyx_string*, %nyx_string** %7830
  %8563 = getelementptr [1 x i8], [1 x i8]* @.str1213, i32 0, i32 0
  %8564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1213.c, i8* %8563, i64 0)
  %8565 = call i1 @nyx_string_equals(%nyx_string* %8562, %nyx_string* %8564)
  %8566 = xor i1 %8565, true
  br i1 %8566, label %then1657, label %else1658
then1657:
  %8567 = alloca i1
  store i1 false, i1* %8567
  %8568 = load %nyx_string*, %nyx_string** %7823
  %8569 = getelementptr [6 x i8], [6 x i8]* @.str1214, i32 0, i32 0
  %8570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1214.c, i8* %8569, i64 5)
  %8571 = call i1 @nyx_string_equals(%nyx_string* %8568, %nyx_string* %8570)
  %8572 = xor i1 %8571, true
  br i1 %8572, label %sc_and_rhs1660, label %sc_and_end1661
sc_and_rhs1660:
  %8573 = load %nyx_string*, %nyx_string** %7823
  %8574 = getelementptr [4 x i8], [4 x i8]* @.str1215, i32 0, i32 0
  %8575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1215.c, i8* %8574, i64 3)
  %8576 = call i1 @nyx_string_equals(%nyx_string* %8573, %nyx_string* %8575)
  %8577 = xor i1 %8576, true
  store i1 %8577, i1* %8567
  br label %sc_and_end1661
sc_and_end1661:
  %8578 = load i1, i1* %8567
  br i1 %8578, label %then1662, label %else1663
then1662:
  %8579 = getelementptr [53 x i8], [53 x i8]* @.str1216, i32 0, i32 0
  %8580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1216.c, i8* %8579, i64 52)
  %8581 = call i8* @nyx_string_to_cstr(%nyx_string* %8580)
  call void @nyx_print_string(i8* %8581)
  ret i64 1
else1663:
  br label %merge1664
merge1664:
  %8582 = load %nyx_string*, %nyx_string** %7830
  %8583 = call %nyx_string* @main_flag_error(%nyx_string* %8582)
  %8584 = alloca %nyx_string*
  store %nyx_string* %8583, %nyx_string** %8584
  %8585 = load %nyx_string*, %nyx_string** %8584
  %8586 = getelementptr [1 x i8], [1 x i8]* @.str1217, i32 0, i32 0
  %8587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1217.c, i8* %8586, i64 0)
  %8588 = call i1 @nyx_string_equals(%nyx_string* %8585, %nyx_string* %8587)
  %8589 = xor i1 %8588, true
  br i1 %8589, label %then1665, label %else1666
then1665:
  %8590 = getelementptr [8 x i8], [8 x i8]* @.str1218, i32 0, i32 0
  %8591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1218.c, i8* %8590, i64 7)
  %8592 = load %nyx_string*, %nyx_string** %8584
  %8593 = call %nyx_string* @nyx_string_concat(%nyx_string* %8591, %nyx_string* %8592)
  %8594 = call i8* @nyx_string_to_cstr(%nyx_string* %8593)
  call void @nyx_print_string(i8* %8594)
  ret i64 1
else1666:
  br label %merge1667
merge1667:
  %8595 = load %ProjectConfig, %ProjectConfig* %8541
  %8596 = load %nyx_string*, %nyx_string** %7830
  %8597 = call %nyx_string* @bin_name_for_main(%ProjectConfig %8595, %nyx_string* %8596)
  %8598 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 10
  store %nyx_string* %8597, %nyx_string** %8598
  %8599 = load %nyx_string*, %nyx_string** %7830
  %8600 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 2
  store %nyx_string* %8599, %nyx_string** %8600
  br label %merge1659
else1658:
  br label %merge1659
merge1659:
  %8601 = load %nyx_string*, %nyx_string** %7823
  %8602 = getelementptr [5 x i8], [5 x i8]* @.str1219, i32 0, i32 0
  %8603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1219.c, i8* %8602, i64 4)
  %8604 = call i1 @nyx_string_equals(%nyx_string* %8601, %nyx_string* %8603)
  br i1 %8604, label %then1668, label %else1669
then1668:
  %8605 = load %ProjectConfig, %ProjectConfig* %8541
  %8606 = call i64 @print_info(%ProjectConfig %8605)
  ret i64 0
else1669:
  br label %merge1670
merge1670:
  %8607 = load %nyx_string*, %nyx_string** %7823
  %8608 = getelementptr [5 x i8], [5 x i8]* @.str1220, i32 0, i32 0
  %8609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1220.c, i8* %8608, i64 4)
  %8610 = call i1 @nyx_string_equals(%nyx_string* %8607, %nyx_string* %8609)
  br i1 %8610, label %then1671, label %else1672
then1671:
  %8611 = load %ProjectConfig, %ProjectConfig* %8541
  %8612 = load i1, i1* %7824
  %8613 = call i1 @run_libs(%ProjectConfig %8611, i1 %8612)
  br i1 %8613, label %then1674, label %else1675
then1674:
  ret i64 0
else1675:
  br label %merge1676
merge1676:
  ret i64 1
else1672:
  br label %merge1673
merge1673:
  %8614 = load %nyx_string*, %nyx_string** %7823
  %8615 = getelementptr [6 x i8], [6 x i8]* @.str1221, i32 0, i32 0
  %8616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1221.c, i8* %8615, i64 5)
  %8617 = call i1 @nyx_string_equals(%nyx_string* %8614, %nyx_string* %8616)
  br i1 %8617, label %then1677, label %else1678
then1677:
  %8618 = load %ProjectConfig, %ProjectConfig* %8541
  %8619 = load i1, i1* %7824
  %8620 = load %nyx_string*, %nyx_string** %7827
  %8621 = call i1 @run_build(%ProjectConfig %8618, i1 %8619, %nyx_string* %8620)
  %8622 = alloca i1
  store i1 %8621, i1* %8622
  %8623 = load i1, i1* %8622
  br i1 %8623, label %then1680, label %else1681
then1680:
  %8624 = load %ProjectConfig, %ProjectConfig* %8541
  %8625 = call i64 @write_lockfile(%ProjectConfig %8624)
  %8626 = getelementptr [15 x i8], [15 x i8]* @.str1222, i32 0, i32 0
  %8627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1222.c, i8* %8626, i64 14)
  %8628 = call i8* @nyx_string_to_cstr(%nyx_string* %8627)
  call void @nyx_print_string(i8* %8628)
  ret i64 0
else1681:
  br label %merge1682
merge1682:
  ret i64 1
else1678:
  br label %merge1679
merge1679:
  %8629 = load %nyx_string*, %nyx_string** %7823
  %8630 = getelementptr [4 x i8], [4 x i8]* @.str1223, i32 0, i32 0
  %8631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1223.c, i8* %8630, i64 3)
  %8632 = call i1 @nyx_string_equals(%nyx_string* %8629, %nyx_string* %8631)
  br i1 %8632, label %then1683, label %else1684
then1683:
  %8633 = alloca i64
  store i64 2, i64* %8633
  %8634 = getelementptr [3 x i8], [3 x i8]* @.str1224, i32 0, i32 0
  %8635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1224.c, i8* %8634, i64 2)
  %8636 = alloca %nyx_string*
  store %nyx_string* %8635, %nyx_string** %8636
  %8637 = getelementptr [7 x i8], [7 x i8]* @.str1225, i32 0, i32 0
  %8638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1225.c, i8* %8637, i64 6)
  %8639 = alloca %nyx_string*
  store %nyx_string* %8638, %nyx_string** %8639
  %8640 = getelementptr [3 x i8], [3 x i8]* @.str1226, i32 0, i32 0
  %8641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1226.c, i8* %8640, i64 2)
  %8642 = alloca %nyx_string*
  store %nyx_string* %8641, %nyx_string** %8642
  %8643 = getelementptr [79 x i8], [79 x i8]* @.str1227, i32 0, i32 0
  %8644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1227.c, i8* %8643, i64 78)
  %8645 = alloca %nyx_string*
  store %nyx_string* %8644, %nyx_string** %8645
  %8646 = getelementptr [60 x i8], [60 x i8]* @.str1228, i32 0, i32 0
  %8647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1228.c, i8* %8646, i64 59)
  %8648 = alloca %nyx_string*
  store %nyx_string* %8647, %nyx_string** %8648
  %8649 = getelementptr [1 x i8], [1 x i8]* @.str1229, i32 0, i32 0
  %8650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1229.c, i8* %8649, i64 0)
  %8651 = alloca %nyx_string*
  store %nyx_string* %8650, %nyx_string** %8651
  %8652 = getelementptr [56 x i8], [56 x i8]* @.str1230, i32 0, i32 0
  %8653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1230.c, i8* %8652, i64 55)
  %8654 = alloca %nyx_string*
  store %nyx_string* %8653, %nyx_string** %8654
  %8655 = getelementptr [38 x i8], [38 x i8]* @.str1231, i32 0, i32 0
  %8656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1231.c, i8* %8655, i64 37)
  %8657 = alloca %nyx_string*
  store %nyx_string* %8656, %nyx_string** %8657
  %8658 = call i8* @llvm.stacksave()
  br label %while_cond1686
while_cond1686:
  %8659 = load i64, i64* %8633
  %8660 = load { i64, i8* }*, { i64, i8* }** %7820
  %8661 = call i64 @nyx_array_length({ i64, i8* }* %8660)
  %8662 = icmp slt i64 %8659, %8661
  br i1 %8662, label %while_body1687, label %while_end1688
while_body1687:
  call void @llvm.stackrestore(i8* %8658)
  %8663 = load { i64, i8* }*, { i64, i8* }** %7820
  %8664 = load i64, i64* %8633
  %8665 = call i64 @nyx_array_get_checked({ i64, i8* }* %8663, i64 %8664, i64 2)
  %8666 = inttoptr i64 %8665 to %nyx_string*
  %8667 = alloca %nyx_string*
  store %nyx_string* %8666, %nyx_string** %8667
  %8668 = load %nyx_string*, %nyx_string** %8667
  %8669 = load %nyx_string*, %nyx_string** %8636
  %8670 = call i1 @nyx_string_equals(%nyx_string* %8668, %nyx_string* %8669)
  br i1 %8670, label %then1689, label %else1690
then1689:
  %8671 = load { i64, i8* }*, { i64, i8* }** %7820
  %8672 = call i64 @nyx_array_length({ i64, i8* }* %8671)
  store i64 %8672, i64* %8633
  br label %merge1691
else1690:
  %8673 = alloca i1
  store i1 true, i1* %8673
  %8674 = load %nyx_string*, %nyx_string** %8667
  %8675 = load %nyx_string*, %nyx_string** %8639
  %8676 = call i1 @nyx_string_equals(%nyx_string* %8674, %nyx_string* %8675)
  br i1 %8676, label %sc_or_end1693, label %sc_or_rhs1692
sc_or_rhs1692:
  %8677 = load %nyx_string*, %nyx_string** %8667
  %8678 = load %nyx_string*, %nyx_string** %8642
  %8679 = call i1 @nyx_string_equals(%nyx_string* %8677, %nyx_string* %8678)
  store i1 %8679, i1* %8673
  br label %sc_or_end1693
sc_or_end1693:
  %8680 = load i1, i1* %8673
  br i1 %8680, label %then1694, label %else1695
then1694:
  %8681 = load %nyx_string*, %nyx_string** %8645
  %8682 = call i8* @nyx_string_to_cstr(%nyx_string* %8681)
  call void @nyx_print_string(i8* %8682)
  %8683 = load %nyx_string*, %nyx_string** %8648
  %8684 = call i8* @nyx_string_to_cstr(%nyx_string* %8683)
  call void @nyx_print_string(i8* %8684)
  %8685 = load %nyx_string*, %nyx_string** %8651
  %8686 = call i8* @nyx_string_to_cstr(%nyx_string* %8685)
  call void @nyx_print_string(i8* %8686)
  %8687 = load %nyx_string*, %nyx_string** %8654
  %8688 = call i8* @nyx_string_to_cstr(%nyx_string* %8687)
  call void @nyx_print_string(i8* %8688)
  %8689 = load %nyx_string*, %nyx_string** %8657
  %8690 = call i8* @nyx_string_to_cstr(%nyx_string* %8689)
  call void @nyx_print_string(i8* %8690)
  ret i64 0
else1695:
  br label %merge1696
merge1696:
  %8691 = load i64, i64* %8633
  %8692 = add i64 %8691, 1
  store i64 %8692, i64* %8633
  br label %merge1691
merge1691:
  br label %while_cond1686
while_end1688:
  %8693 = load %ProjectConfig, %ProjectConfig* %8541
  %8694 = load %nyx_string*, %nyx_string** %7827
  %8695 = call i1 @run_build(%ProjectConfig %8693, i1 0, %nyx_string* %8694)
  %8696 = alloca i1
  store i1 %8695, i1* %8696
  %8697 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 0
  %8698 = load %nyx_string*, %nyx_string** %8697
  %8699 = alloca %nyx_string*
  store %nyx_string* %8698, %nyx_string** %8699
  %8700 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 10
  %8701 = load %nyx_string*, %nyx_string** %8700
  %8702 = getelementptr [1 x i8], [1 x i8]* @.str1232, i32 0, i32 0
  %8703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1232.c, i8* %8702, i64 0)
  %8704 = call i1 @nyx_string_equals(%nyx_string* %8701, %nyx_string* %8703)
  %8705 = xor i1 %8704, true
  br i1 %8705, label %then1697, label %else1698
then1697:
  %8706 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 10
  %8707 = load %nyx_string*, %nyx_string** %8706
  store %nyx_string* %8707, %nyx_string** %8699
  br label %merge1699
else1698:
  br label %merge1699
merge1699:
  %8708 = load i1, i1* %8696
  br i1 %8708, label %then1700, label %else1701
then1700:
  %8709 = load %ProjectConfig, %ProjectConfig* %8541
  %8710 = call i64 @write_lockfile(%ProjectConfig %8709)
  %8711 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 6
  %8712 = load %nyx_string*, %nyx_string** %8711
  %8713 = alloca %nyx_string*
  store %nyx_string* %8712, %nyx_string** %8713
  %8714 = load %nyx_string*, %nyx_string** %7827
  %8715 = getelementptr [1 x i8], [1 x i8]* @.str1233, i32 0, i32 0
  %8716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1233.c, i8* %8715, i64 0)
  %8717 = call i1 @nyx_string_equals(%nyx_string* %8714, %nyx_string* %8716)
  %8718 = xor i1 %8717, true
  br i1 %8718, label %then1703, label %else1704
then1703:
  %8719 = load %nyx_string*, %nyx_string** %7827
  store %nyx_string* %8719, %nyx_string** %8713
  br label %merge1705
else1704:
  br label %merge1705
merge1705:
  %8720 = load %nyx_string*, %nyx_string** %8713
  %8721 = getelementptr [12 x i8], [12 x i8]* @.str1234, i32 0, i32 0
  %8722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1234.c, i8* %8721, i64 11)
  %8723 = call i1 @nyx_string_equals(%nyx_string* %8720, %nyx_string* %8722)
  br i1 %8723, label %then1706, label %else1707
then1706:
  %8724 = getelementptr [20 x i8], [20 x i8]* @.str1235, i32 0, i32 0
  %8725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1235.c, i8* %8724, i64 19)
  %8726 = load %nyx_string*, %nyx_string** %8699
  %8727 = call %nyx_string* @nyx_string_concat(%nyx_string* %8725, %nyx_string* %8726)
  %8728 = getelementptr [6 x i8], [6 x i8]* @.str1236, i32 0, i32 0
  %8729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1236.c, i8* %8728, i64 5)
  %8730 = call %nyx_string* @nyx_string_concat(%nyx_string* %8727, %nyx_string* %8729)
  %8731 = alloca %nyx_string*
  store %nyx_string* %8730, %nyx_string** %8731
  %8732 = load %nyx_string*, %nyx_string** %8731
  %8733 = call i8* @nyx_string_to_cstr(%nyx_string* %8732)
  %8734 = call i1 @nyx_file_exists(i8* %8733)
  %8735 = xor i1 %8734, true
  br i1 %8735, label %then1709, label %else1710
then1709:
  %8736 = getelementptr [24 x i8], [24 x i8]* @.str1237, i32 0, i32 0
  %8737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1237.c, i8* %8736, i64 23)
  %8738 = load %nyx_string*, %nyx_string** %8731
  %8739 = call %nyx_string* @nyx_string_concat(%nyx_string* %8737, %nyx_string* %8738)
  %8740 = call i8* @nyx_string_to_cstr(%nyx_string* %8739)
  call void @nyx_print_string(i8* %8740)
  ret i64 1
else1710:
  br label %merge1711
merge1711:
  %8741 = getelementptr [36 x i8], [36 x i8]* @.str1238, i32 0, i32 0
  %8742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1238.c, i8* %8741, i64 35)
  %8743 = call i8* @nyx_string_to_cstr(%nyx_string* %8742)
  %8744 = call i64 @nyx_exec_code(i8* %8743)
  %8745 = icmp ne i64 %8744, 0
  br i1 %8745, label %then1712, label %else1713
then1712:
  %8746 = getelementptr [24 x i8], [24 x i8]* @.str1239, i32 0, i32 0
  %8747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1239.c, i8* %8746, i64 23)
  %8748 = load %nyx_string*, %nyx_string** %8731
  %8749 = call %nyx_string* @nyx_string_concat(%nyx_string* %8747, %nyx_string* %8748)
  %8750 = getelementptr [45 x i8], [45 x i8]* @.str1240, i32 0, i32 0
  %8751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1240.c, i8* %8750, i64 44)
  %8752 = call %nyx_string* @nyx_string_concat(%nyx_string* %8749, %nyx_string* %8751)
  %8753 = call i8* @nyx_string_to_cstr(%nyx_string* %8752)
  call void @nyx_print_string(i8* %8753)
  %8754 = getelementptr [54 x i8], [54 x i8]* @.str1241, i32 0, i32 0
  %8755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1241.c, i8* %8754, i64 53)
  %8756 = load %nyx_string*, %nyx_string** %8731
  %8757 = call %nyx_string* @nyx_string_concat(%nyx_string* %8755, %nyx_string* %8756)
  %8758 = call i8* @nyx_string_to_cstr(%nyx_string* %8757)
  call void @nyx_print_string(i8* %8758)
  ret i64 1
else1713:
  br label %merge1714
merge1714:
  %8759 = getelementptr [10 x i8], [10 x i8]* @.str1242, i32 0, i32 0
  %8760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1242.c, i8* %8759, i64 9)
  %8761 = load %nyx_string*, %nyx_string** %8731
  %8762 = call %nyx_string* @nyx_string_concat(%nyx_string* %8760, %nyx_string* %8761)
  %8763 = alloca %nyx_string*
  store %nyx_string* %8762, %nyx_string** %8763
  %8764 = alloca i64
  store i64 2, i64* %8764
  %8765 = alloca i1
  store i1 0, i1* %8765
  %8766 = getelementptr [2 x i8], [2 x i8]* @.str1243, i32 0, i32 0
  %8767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1243.c, i8* %8766, i64 1)
  %8768 = alloca %nyx_string*
  store %nyx_string* %8767, %nyx_string** %8768
  %8769 = getelementptr [3 x i8], [3 x i8]* @.str1244, i32 0, i32 0
  %8770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1244.c, i8* %8769, i64 2)
  %8771 = alloca %nyx_string*
  store %nyx_string* %8770, %nyx_string** %8771
  %8772 = getelementptr [9 x i8], [9 x i8]* @.str1245, i32 0, i32 0
  %8773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1245.c, i8* %8772, i64 8)
  %8774 = alloca %nyx_string*
  store %nyx_string* %8773, %nyx_string** %8774
  %8775 = getelementptr [7 x i8], [7 x i8]* @.str1246, i32 0, i32 0
  %8776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1246.c, i8* %8775, i64 6)
  %8777 = alloca %nyx_string*
  store %nyx_string* %8776, %nyx_string** %8777
  %8778 = call i8* @llvm.stacksave()
  br label %while_cond1715
while_cond1715:
  %8779 = load i64, i64* %8764
  %8780 = load { i64, i8* }*, { i64, i8* }** %7820
  %8781 = call i64 @nyx_array_length({ i64, i8* }* %8780)
  %8782 = icmp slt i64 %8779, %8781
  br i1 %8782, label %while_body1716, label %while_end1717
while_body1716:
  call void @llvm.stackrestore(i8* %8778)
  %8783 = load { i64, i8* }*, { i64, i8* }** %7820
  %8784 = load i64, i64* %8764
  %8785 = call i64 @nyx_array_get_checked({ i64, i8* }* %8783, i64 %8784, i64 2)
  %8786 = inttoptr i64 %8785 to %nyx_string*
  %8787 = alloca %nyx_string*
  store %nyx_string* %8786, %nyx_string** %8787
  %8788 = load i1, i1* %8765
  br i1 %8788, label %then1718, label %else1719
then1718:
  %8789 = load %nyx_string*, %nyx_string** %8763
  %8790 = load %nyx_string*, %nyx_string** %8768
  %8791 = call %nyx_string* @nyx_string_concat(%nyx_string* %8789, %nyx_string* %8790)
  %8792 = load %nyx_string*, %nyx_string** %8787
  %8793 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %7818, %nyx_string* %8792)
  %8794 = call %nyx_string* @nyx_string_concat(%nyx_string* %8791, %nyx_string* %8793)
  store %nyx_string* %8794, %nyx_string** %8763
  br label %merge1720
else1719:
  %8795 = load %nyx_string*, %nyx_string** %8787
  %8796 = load %nyx_string*, %nyx_string** %8771
  %8797 = call i1 @nyx_string_equals(%nyx_string* %8795, %nyx_string* %8796)
  br i1 %8797, label %then1721, label %else1722
then1721:
  store i1 1, i1* %8765
  br label %merge1723
else1722:
  %8798 = alloca i1
  store i1 true, i1* %8798
  %8799 = load %nyx_string*, %nyx_string** %8787
  %8800 = load %nyx_string*, %nyx_string** %8774
  %8801 = call i1 @nyx_string_equals(%nyx_string* %8799, %nyx_string* %8800)
  br i1 %8801, label %sc_or_end1725, label %sc_or_rhs1724
sc_or_rhs1724:
  %8802 = load %nyx_string*, %nyx_string** %8787
  %8803 = load %nyx_string*, %nyx_string** %8777
  %8804 = call i1 @nyx_string_equals(%nyx_string* %8802, %nyx_string* %8803)
  store i1 %8804, i1* %8798
  br label %sc_or_end1725
sc_or_end1725:
  %8805 = load i1, i1* %8798
  br i1 %8805, label %then1726, label %else1727
then1726:
  %8806 = load i64, i64* %8764
  %8807 = add i64 %8806, 1
  store i64 %8807, i64* %8764
  br label %merge1728
else1727:
  br label %merge1728
merge1728:
  br label %merge1723
merge1723:
  br label %merge1720
merge1720:
  %8808 = load i64, i64* %8764
  %8809 = add i64 %8808, 1
  store i64 %8809, i64* %8764
  br label %while_cond1715
while_end1717:
  %8810 = load %nyx_string*, %nyx_string** %8763
  %8811 = call i8* @nyx_string_to_cstr(%nyx_string* %8810)
  %8812 = call i64 @nyx_exec_code(i8* %8811)
  ret i64 %8812
else1707:
  br label %merge1708
merge1708:
  %8813 = load %nyx_string*, %nyx_string** %8713
  %8814 = getelementptr [1 x i8], [1 x i8]* @.str1247, i32 0, i32 0
  %8815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1247.c, i8* %8814, i64 0)
  %8816 = call i1 @nyx_string_equals(%nyx_string* %8813, %nyx_string* %8815)
  %8817 = xor i1 %8816, true
  br i1 %8817, label %then1729, label %else1730
then1729:
  %8818 = getelementptr [51 x i8], [51 x i8]* @.str1248, i32 0, i32 0
  %8819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1248.c, i8* %8818, i64 50)
  %8820 = load %nyx_string*, %nyx_string** %8713
  %8821 = call %nyx_string* @nyx_string_concat(%nyx_string* %8819, %nyx_string* %8820)
  %8822 = call i8* @nyx_string_to_cstr(%nyx_string* %8821)
  call void @nyx_print_string(i8* %8822)
  %8823 = getelementptr [27 x i8], [27 x i8]* @.str1249, i32 0, i32 0
  %8824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1249.c, i8* %8823, i64 26)
  %8825 = load %nyx_string*, %nyx_string** %8713
  %8826 = call %nyx_string* @nyx_string_concat(%nyx_string* %8824, %nyx_string* %8825)
  %8827 = getelementptr [47 x i8], [47 x i8]* @.str1250, i32 0, i32 0
  %8828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1250.c, i8* %8827, i64 46)
  %8829 = call %nyx_string* @nyx_string_concat(%nyx_string* %8826, %nyx_string* %8828)
  %8830 = call i8* @nyx_string_to_cstr(%nyx_string* %8829)
  call void @nyx_print_string(i8* %8830)
  ret i64 1
else1730:
  br label %merge1731
merge1731:
  %8831 = getelementptr [3 x i8], [3 x i8]* @.str1251, i32 0, i32 0
  %8832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1251.c, i8* %8831, i64 2)
  %8833 = load %nyx_string*, %nyx_string** %8699
  %8834 = call %nyx_string* @nyx_string_concat(%nyx_string* %8832, %nyx_string* %8833)
  %8835 = alloca %nyx_string*
  store %nyx_string* %8834, %nyx_string** %8835
  %8836 = getelementptr %ProjectConfig, %ProjectConfig* %8541, i32 0, i32 10
  %8837 = load %nyx_string*, %nyx_string** %8836
  %8838 = getelementptr [1 x i8], [1 x i8]* @.str1252, i32 0, i32 0
  %8839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1252.c, i8* %8838, i64 0)
  %8840 = call i1 @nyx_string_equals(%nyx_string* %8837, %nyx_string* %8839)
  %8841 = xor i1 %8840, true
  br i1 %8841, label %then1732, label %else1733
then1732:
  %8842 = getelementptr [10 x i8], [10 x i8]* @.str1253, i32 0, i32 0
  %8843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1253.c, i8* %8842, i64 9)
  %8844 = load %nyx_string*, %nyx_string** %8699
  %8845 = call %nyx_string* @nyx_string_concat(%nyx_string* %8843, %nyx_string* %8844)
  store %nyx_string* %8845, %nyx_string** %8835
  br label %merge1734
else1733:
  br label %merge1734
merge1734:
  %8846 = alloca i64
  store i64 2, i64* %8846
  %8847 = alloca i1
  store i1 0, i1* %8847
  %8848 = getelementptr [2 x i8], [2 x i8]* @.str1254, i32 0, i32 0
  %8849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1254.c, i8* %8848, i64 1)
  %8850 = alloca %nyx_string*
  store %nyx_string* %8849, %nyx_string** %8850
  %8851 = getelementptr [3 x i8], [3 x i8]* @.str1255, i32 0, i32 0
  %8852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1255.c, i8* %8851, i64 2)
  %8853 = alloca %nyx_string*
  store %nyx_string* %8852, %nyx_string** %8853
  %8854 = getelementptr [10 x i8], [10 x i8]* @.str1256, i32 0, i32 0
  %8855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1256.c, i8* %8854, i64 9)
  %8856 = alloca %nyx_string*
  store %nyx_string* %8855, %nyx_string** %8856
  %8857 = getelementptr [9 x i8], [9 x i8]* @.str1257, i32 0, i32 0
  %8858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1257.c, i8* %8857, i64 8)
  %8859 = alloca %nyx_string*
  store %nyx_string* %8858, %nyx_string** %8859
  %8860 = getelementptr [7 x i8], [7 x i8]* @.str1258, i32 0, i32 0
  %8861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1258.c, i8* %8860, i64 6)
  %8862 = alloca %nyx_string*
  store %nyx_string* %8861, %nyx_string** %8862
  %8863 = call i8* @llvm.stacksave()
  br label %while_cond1735
while_cond1735:
  %8864 = load i64, i64* %8846
  %8865 = load { i64, i8* }*, { i64, i8* }** %7820
  %8866 = call i64 @nyx_array_length({ i64, i8* }* %8865)
  %8867 = icmp slt i64 %8864, %8866
  br i1 %8867, label %while_body1736, label %while_end1737
while_body1736:
  call void @llvm.stackrestore(i8* %8863)
  %8868 = load { i64, i8* }*, { i64, i8* }** %7820
  %8869 = load i64, i64* %8846
  %8870 = call i64 @nyx_array_get_checked({ i64, i8* }* %8868, i64 %8869, i64 2)
  %8871 = inttoptr i64 %8870 to %nyx_string*
  %8872 = alloca %nyx_string*
  store %nyx_string* %8871, %nyx_string** %8872
  %8873 = load i1, i1* %8847
  br i1 %8873, label %then1738, label %else1739
then1738:
  %8874 = load %nyx_string*, %nyx_string** %8835
  %8875 = load %nyx_string*, %nyx_string** %8850
  %8876 = call %nyx_string* @nyx_string_concat(%nyx_string* %8874, %nyx_string* %8875)
  %8877 = load %nyx_string*, %nyx_string** %8872
  %8878 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %7818, %nyx_string* %8877)
  %8879 = call %nyx_string* @nyx_string_concat(%nyx_string* %8876, %nyx_string* %8878)
  store %nyx_string* %8879, %nyx_string** %8835
  br label %merge1740
else1739:
  %8880 = load %nyx_string*, %nyx_string** %8872
  %8881 = load %nyx_string*, %nyx_string** %8853
  %8882 = call i1 @nyx_string_equals(%nyx_string* %8880, %nyx_string* %8881)
  br i1 %8882, label %then1741, label %else1742
then1741:
  store i1 1, i1* %8847
  br label %merge1743
else1742:
  %8883 = load %nyx_string*, %nyx_string** %8872
  %8884 = load %nyx_string*, %nyx_string** %8856
  %8885 = call i1 @nyx_string_equals(%nyx_string* %8883, %nyx_string* %8884)
  br i1 %8885, label %then1744, label %else1745
then1744:
  %8886 = load i64, i64* %8846
  store i64 %8886, i64* %8846
  br label %merge1746
else1745:
  %8887 = alloca i1
  store i1 true, i1* %8887
  %8888 = load %nyx_string*, %nyx_string** %8872
  %8889 = load %nyx_string*, %nyx_string** %8859
  %8890 = call i1 @nyx_string_equals(%nyx_string* %8888, %nyx_string* %8889)
  br i1 %8890, label %sc_or_end1748, label %sc_or_rhs1747
sc_or_rhs1747:
  %8891 = load %nyx_string*, %nyx_string** %8872
  %8892 = load %nyx_string*, %nyx_string** %8862
  %8893 = call i1 @nyx_string_equals(%nyx_string* %8891, %nyx_string* %8892)
  store i1 %8893, i1* %8887
  br label %sc_or_end1748
sc_or_end1748:
  %8894 = load i1, i1* %8887
  br i1 %8894, label %then1749, label %else1750
then1749:
  %8895 = load i64, i64* %8846
  %8896 = add i64 %8895, 1
  store i64 %8896, i64* %8846
  br label %merge1751
else1750:
  %8897 = load %nyx_string*, %nyx_string** %8835
  %8898 = load %nyx_string*, %nyx_string** %8850
  %8899 = call %nyx_string* @nyx_string_concat(%nyx_string* %8897, %nyx_string* %8898)
  %8900 = load %nyx_string*, %nyx_string** %8872
  %8901 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %7818, %nyx_string* %8900)
  %8902 = call %nyx_string* @nyx_string_concat(%nyx_string* %8899, %nyx_string* %8901)
  store %nyx_string* %8902, %nyx_string** %8835
  br label %merge1751
merge1751:
  br label %merge1746
merge1746:
  br label %merge1743
merge1743:
  br label %merge1740
merge1740:
  %8903 = load i64, i64* %8846
  %8904 = add i64 %8903, 1
  store i64 %8904, i64* %8846
  br label %while_cond1735
while_end1737:
  %8905 = load %nyx_string*, %nyx_string** %8835
  %8906 = call i8* @nyx_string_to_cstr(%nyx_string* %8905)
  %8907 = call i64 @nyx_exec_code(i8* %8906)
  %8908 = alloca i64
  store i64 %8907, i64* %8908
  %8909 = load i64, i64* %8908
  ret i64 %8909
else1701:
  br label %merge1702
merge1702:
  ret i64 1
else1684:
  br label %merge1685
merge1685:
  %8910 = getelementptr [24 x i8], [24 x i8]* @.str1259, i32 0, i32 0
  %8911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1259.c, i8* %8910, i64 23)
  %8912 = load %nyx_string*, %nyx_string** %7823
  %8913 = call %nyx_string* @nyx_string_concat(%nyx_string* %8911, %nyx_string* %8912)
  %8914 = call i8* @nyx_string_to_cstr(%nyx_string* %8913)
  call void @nyx_print_string(i8* %8914)
  %8915 = getelementptr [110 x i8], [110 x i8]* @.str1260, i32 0, i32 0
  %8916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1260.c, i8* %8915, i64 109)
  %8917 = call i8* @nyx_string_to_cstr(%nyx_string* %8916)
  call void @nyx_print_string(i8* %8917)
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
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1261, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1261.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1262, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1262.c, i8* %30, i64 1)
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
  %8918 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %8919 = call %nyx_string* @nyx_string_from_ptr(i8* %8918, i64 64)
  store %nyx_string* %8919, %nyx_string** @std_base64____b64_chars
  %8920 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %8921 = call %nyx_string* @nyx_string_from_ptr(i8* %8920, i64 64)
  store %nyx_string* %8921, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

