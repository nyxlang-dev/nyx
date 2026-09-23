source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%ProjectConfig = type { %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }*, %nyx_string*, %nyx_string* }

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
@.str73 = private unnamed_addr constant [1 x i8] c"\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [1 x i8] c"\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [1 x i8] c"\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [1 x i8] c"\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [1 x i8] c"\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [1 x i8] c"\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [1 x i8] c"\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [1 x i8] c"\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [1 x i8] c"\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [1 x i8] c"\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [1 x i8] c"\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [2 x i8] c"#\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [2 x i8] c"[\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [2 x i8] c"]\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [8 x i8] c"package\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [5 x i8] c"name\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [8 x i8] c"version\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [5 x i8] c"main\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [12 x i8] c"description\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [6 x i8] c"no_gc\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [5 x i8] c"true\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [7 x i8] c"target\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [6 x i8] c"build\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [44 x i8] c"clave desconocida en [build] de nyx.toml: '\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [34 x i8] c"' (claves válidas: main, target)\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [13 x i8] c"dependencies\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [1 x i8] c"\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [1 x i8] c"\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [1 x i8] c"\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [74 x i8] c"nyx.toml declara main dos veces con valores distintos: [package] main = \22\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [21 x i8] c"\22 y [build] main = \22\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [1 x i8] c"\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [1 x i8] c"\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [1 x i8] c"\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [78 x i8] c"nyx.toml declara target dos veces con valores distintos: [package] target = \22\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [23 x i8] c"\22 y [build] target = \22\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [1 x i8] c"\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [1 x i8] c"\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [1 x i8] c"\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [1 x i8] c"\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [57 x i8] c"# nyx.lock — auto-generated by nyx build, do not edit\0a\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [11 x i8] c"[package]\0a\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [9 x i8] c"name = \22\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [12 x i8] c"version = \22\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [9 x i8] c"main = \22\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [17 x i8] c"Adding package: \00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [3 x i8] c" =\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [12 x i8] c"  Package '\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [27 x i8] c"' is already a dependency.\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [19 x i8] c"  Using existing: \00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [13 x i8] c"  Fetching: \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [2 x i8] c" \00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [26 x i8] c"  error: could not fetch \00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [7 x i8] c" from \00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [15 x i8] c"[dependencies]\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [19 x i8] c"  Updated nyx.toml\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [10 x i8] c"Package '\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [9 x i8] c"' added.\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [1 x i8] c"\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [1 x i8] c"\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [2 x i8] c".\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [1 x i8] c"\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [12 x i8] c" nyx-lang: \00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [3 x i8] c"en\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [11 x i8] c"nyx-lang: \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [3 x i8] c"en\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [3 x i8] c"en\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [3 x i8] c"es\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [3 x i8] c"es\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [3 x i8] c"en\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [1 x i8] c"\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [21 x i8] c"/templates/gitignore\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [11 x i8] c"{{binary}}\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [1 x i8] c"\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [2 x i8] c",\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [28 x i8] c"error: --agent inválido: '\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [46 x i8] c"' (valores válidos: claude, cursor, copilot)\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [72 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot]\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [1 x i8] c"\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [1 x i8] c"\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [20 x i8] c"/templates/adapters\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [2 x i8] c",\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [1 x i8] c"\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [2 x i8] c"/\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [2 x i8] c".\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [4 x i8] c".md\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [10 x i8] c"/.github'\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [44 x i8] c"warning: falta la plantilla del adaptador '\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [20 x i8] c") — no se sembró\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [2 x i8] c"/\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [1 x i8] c"\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [74 x i8] c"error: no encuentro la toolchain de Nyx (NYX_HOME vacío o sin templates/\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [84 x i8] c"/): el contexto para agentes (AGENTS.md, CAPABILITIES.md, docs/nyx/) NO se sembró.\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [82 x i8] c"  Exporta NYX_HOME (o reinstala con install.sh) y ejecuta: nyx update --sync-docs\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [17 x i8] c"/CAPABILITIES.md\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides'\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [20 x i8] c"/en/docs/nyx/LLM.md\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [17 x i8] c"/docs/nyx/LLM.md\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [14 x i8] c"error: falta \00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [71 x i8] c" en la toolchain: docs/nyx/LLM.md (la referencia densa) NO se sembró.\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [111 x i8] c"  Reinstala con install.sh (o ejecuta make install-local desde el monorepo) y después: nyx update --sync-docs\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [17 x i8] c"/docs/nyx/guides\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [2 x i8] c"/\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides/\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [28 x i8] c"GENERATED by `nyx sdd init`\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [3 x i8] c"es\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [28 x i8] c"  skipped (already there): \00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [25 x i8] c"  salteado (ya existe): \00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [2 x i8] c"/\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [27 x i8] c"error: falta la plantilla \00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [19 x i8] c" en la toolchain: \00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [16 x i8] c" NO se sembró.\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [3 x i8] c"  \00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [1 x i8] c"\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [1 x i8] c"\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [20 x i8] c"# Evidence — nyx \00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [21 x i8] c"# Evidencia — nyx \00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [7 x i8] c"\0a<!-- \00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [110 x i8] c" from the gotcha table of the installed toolchain — do not edit by hand; `nyx update` regenerates it. -->\0a\0a\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [319 x i8] c"Traps and rules that are LIVE in the toolchain this project was seeded with. Each\0aline carries the stable id, the anchor term to look up in `AGENTS.md` and\0a`docs/nyx/LLM.md`, and the test in the language repo that proves it. This file is\0aevidence, not advice: if a line here contradicts a manual, the manual is stale.\0a\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [334 x i8] c"Trampas y reglas VIVAS en la toolchain con la que se sembró este proyecto. Cada\0alínea trae el id estable, el término ancla para buscar en `AGENTS.md` y en\0a`docs/nyx/LLM.md`, y el test del repo del lenguaje que la prueba. Este archivo es\0aevidencia, no consejo: si una línea de acá contradice a un manual, el manual quedó viejo.\0a\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [1 x i8] c"\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [3 x i8] c"id\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [6 x i8] c"since\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [5 x i8] c"test\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [3 x i8] c"es\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [5 x i8] c"** (\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [9 x i8] c", since \00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [7 x i8] c") — \00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [14 x i8] c" — anchor `\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [2 x i8] c"`\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [12 x i8] c" — test `\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [14 x i8] c"\0a## Retired\0a\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [16 x i8] c"\0a## Retirados\0a\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [139 x i8] c"These were real traps and are not any more: if a manual, a blog post or an older\0aagent still repeats them, it is wrong for this version.\0a\0a\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [150 x i8] c"Estas fueron trampas reales y ya no lo son: si un manual, un artículo o un agente\0aviejo las sigue repitiendo, está equivocado para esta versión.\0a\0a\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [1 x i8] c"\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [3 x i8] c"id\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [3 x i8] c"es\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [14 x i8] c"** (fixed in \00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [7 x i8] c") — \00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [4 x i8] c".md\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [1 x i8] c"\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [4 x i8] c"// \00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [80 x i8] c" from the installed toolchain's gotcha table — regenerate with `nyx update`.\0a\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [96 x i8] c"// Edit it and it becomes yours: with this header gone, `nyx sdd init` never touches it again.\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [72 x i8] c"// Each block greps src/ for a trap the compiler cannot catch for you.\0a\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [20 x i8] c"import \22std/regex\22\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [83 x i8] c"// `nyx test` compiles and runs every test INSIDE the toolchain (cwd = NYX_HOME),\0a\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [85 x i8] c"// not inside the project: a bare readdir(\22src\22) would read the wrong directory and\0a\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [83 x i8] c"// this file would pass without looking at anything. The project directory is the\0a\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [83 x i8] c"// one the runner came from (OLDPWD). If it cannot be found, the first test below\0a\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [56 x i8] c"// FAILS out loud instead of passing on an empty scan.\0a\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [31 x i8] c"fn project_root() -> String {\0a\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [47 x i8] c"    if file_exists(\22nyx.toml\22) { return \22.\22 }\0a\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [40 x i8] c"    let old: String = getenv(\22OLDPWD\22)\0a\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [20 x i8] c"    if old != \22\22 {\0a\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [58 x i8] c"        if file_exists(old + \22/nyx.toml\22) { return old }\0a\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [15 x i8] c"    return \22\22\0a\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [79 x i8] c"// Every .nx under `dir`, recursively. readdir() never returns \22.\22 or \22..\22; a\0a\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [57 x i8] c"// directory is told apart by file_exists(path + \22/.\22).\0a\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [37 x i8] c"fn nx_files(dir: String) -> Array {\0a\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [25 x i8] c"    var out: Array = []\0a\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [49 x i8] c"    if file_exists(dir) == false { return out }\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [39 x i8] c"    let entries: Array = readdir(dir)\0a\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [34 x i8] c"    while i < entries.length() {\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [36 x i8] c"        let e: String = entries[i]\0a\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [39 x i8] c"        let p: String = dir + \22/\22 + e\0a\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [32 x i8] c"        if e.endsWith(\22.nx\22) {\0a\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [25 x i8] c"            out.push(p)\0a\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [18 x i8] c"        } else {\0a\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [40 x i8] c"            if file_exists(p + \22/.\22) {\0a\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [46 x i8] c"                let sub: Array = nx_files(p)\0a\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [32 x i8] c"                var j: int = 0\0a\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [42 x i8] c"                while j < sub.length() {\0a\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [44 x i8] c"                    let s: String = sub[j]\0a\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [33 x i8] c"                    out.push(s)\0a\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [31 x i8] c"                    j = j + 1\0a\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [19 x i8] c"                }\0a\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [15 x i8] c"            }\0a\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [16 x i8] c"    return out\0a\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [77 x i8] c"// Lines of src/ matching `pattern`, as `src/file.nx:LINE` (relative to the\0a\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [53 x i8] c"// project, so the message is a path you can open).\0a\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [45 x i8] c"fn grep_sources(pattern: String) -> Array {\0a\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [26 x i8] c"    var hits: Array = []\0a\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [35 x i8] c"    if root == \22\22 { return hits }\0a\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [48 x i8] c"    let files: Array = nx_files(root + \22/src\22)\0a\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [20 x i8] c"    var f: int = 0\0a\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [32 x i8] c"    while f < files.length() {\0a\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [37 x i8] c"        let path: String = files[f]\0a\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [34 x i8] c"        var shown: String = path\0a\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [101 x i8] c"        if path.startsWith(root + \22/\22) { shown = path.substring(root.length() + 1, path.length()) }\0a\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [56 x i8] c"        let lines: Array = read_file(path).split(\22\5cn\22)\0a\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [24 x i8] c"        var i: int = 0\0a\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [36 x i8] c"        while i < lines.length() {\0a\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [41 x i8] c"            let line: String = lines[i]\0a\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [58 x i8] c"            let scanned: String = gotcha_scan_line(line)\0a\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [99 x i8] c"            if regex_is_match(scanned, pattern) { hits.push(shown + \22:\22 + int_to_string(i + 1)) }\0a\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [23 x i8] c"            i = i + 1\0a\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [19 x i8] c"        f = f + 1\0a\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [17 x i8] c"    return hits\0a\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [52 x i8] c"test \22the project sources are visible from here\22 {\0a\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [126 x i8] c"    assert(root != \22\22, \22cannot find the project root (no nyx.toml): every check below would pass without scanning anything\22)\0a\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [89 x i8] c"    assert(file_exists(root + \22/src\22), \22no src/ in the project root: nothing to check\22)\0a\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [1 x i8] c"\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [3 x i8] c"id\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [14 x i8] c"test \22gotcha \00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [3 x i8] c": \00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [5 x i8] c"\22 {\0a\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [37 x i8] c"    let hits: Array = grep_sources(\22\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [33 x i8] c"    assert(hits.length() == 0, \22\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [3 x i8] c" (\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [28 x i8] c") at: \22 + hits.join(\22, \22))\0a\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [47 x i8] c"test \22every file in tests/ has test blocks\22 {\0a\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [50 x i8] c"    let files: Array = nx_files(root + \22/tests\22)\0a\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [32 x i8] c"    while i < files.length() {\0a\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [34 x i8] c"        let p: String = files[i]\0a\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [114 x i8] c"        assert(read_file(p).indexOf(\22test \5c\22\22) >= 0, p + \22 has no test blocks: nyx test would skip it silently\22)\0a\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [30 x i8] c"warning: no hay AGENTS.md en \00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [80 x i8] c": el disparador del andamiaje NO se insertó (ejecuta `nyx update --sync-docs`)\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [21 x i8] c"<!-- sdd:trigger -->\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [47 x i8] c"  skipped (already there): AGENTS.md (trigger)\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [47 x i8] c"  salteado (ya existe): AGENTS.md (disparador)\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [22 x i8] c"<!-- sdd:trigger -->\0a\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [3 x i8] c"es\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [150 x i8] c"- Si `docs/constitution.md` todavía contiene `SDD_INCOMPLETE`, no escribas código: sigue `docs/sdd/onboarding.md` y ofrece al usuario completarla.\0a\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [122 x i8] c"- Ante una funcionalidad nueva sin `specs/NNN-feature/spec.md`, ofrece escribir la spec primero (ver `specs/README.md`).\0a\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [152 x i8] c"- If `docs/constitution.md` still contains `SDD_INCOMPLETE`, do not write code yet: follow `docs/sdd/onboarding.md` and offer the user to complete it.\0a\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [113 x i8] c"- For a new feature with no `specs/NNN-feature/spec.md`, offer to write the spec first (see `specs/README.md`).\0a\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [36 x i8] c"  AGENTS.md (+2 lines: the trigger)\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [40 x i8] c"  AGENTS.md (+2 líneas: el disparador)\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [16 x i8] c"/docs/evidence'\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [59 x i8] c"  skipped (yours, no GENERATED header): docs/evidence/nyx-\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [4 x i8] c".md\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [65 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): docs/evidence/nyx-\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [4 x i8] c".md\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [34 x i8] c"  regenerated: docs/evidence/nyx-\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [4 x i8] c".md\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [33 x i8] c"  regenerado: docs/evidence/nyx-\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [4 x i8] c".md\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [41 x i8] c"  already up to date: docs/evidence/nyx-\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [4 x i8] c".md\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [39 x i8] c"  ya está al día: docs/evidence/nyx-\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [4 x i8] c".md\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [42 x i8] c"  regenerated: tests/constitution_test.nx\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [41 x i8] c"  regenerado: tests/constitution_test.nx\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [67 x i8] c"  skipped (yours, no GENERATED header): tests/constitution_test.nx\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [73 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): tests/constitution_test.nx\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [49 x i8] c"  already up to date: tests/constitution_test.nx\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [47 x i8] c"  ya está al día: tests/constitution_test.nx\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [12 x i8] c"/templates/\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [5 x i8] c"/sdd\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [1 x i8] c"\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [17 x i8] c"/constitution.md\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [49 x i8] c"error: the SDD scaffolding templates (templates/\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [59 x i8] c"/sdd/) are missing from the toolchain: NOTHING was seeded.\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [61 x i8] c"error: no encuentro las plantillas del andamiaje (templates/\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [44 x i8] c"/sdd/) en la toolchain: NO se sembró nada.\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [104 x i8] c"  Reinstall with install.sh (or run `make install-local` from the monorepo) and try again: nyx sdd init\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [109 x i8] c"  Reinstala con install.sh (o corre `make install-local` desde el monorepo) e intenta de nuevo: nyx sdd init\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [13 x i8] c"/docs/adr' '\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [13 x i8] c"/docs/sdd' '\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [18 x i8] c"/docs/evidence' '\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [10 x i8] c"/specs' '\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [8 x i8] c"/tests'\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [40 x i8] c"SDD scaffolding (optional, reversible):\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [38 x i8] c"Andamiaje SDD (opcional, reversible):\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [16 x i8] c"constitution.md\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [22 x i8] c"/docs/constitution.md\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [12 x i8] c"glossary.md\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [18 x i8] c"/docs/glossary.md\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [16 x i8] c"adr-template.md\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [27 x i8] c"/docs/adr/0000-template.md\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [16 x i8] c"specs-README.md\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [17 x i8] c"/specs/README.md\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [14 x i8] c"onboarding.md\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [24 x i8] c"/docs/sdd/onboarding.md\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [4 x i8] c".md\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [3 x i8] c"  \00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [3 x i8] c"  \00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [1 x i8] c"\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [94 x i8] c"  Next: an agent reading AGENTS.md will offer to complete docs/constitution.md (7 questions).\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [98 x i8] c"  Ahora: un agente que lea AGENTS.md va a ofrecerte completar docs/constitution.md (7 preguntas).\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [89 x i8] c"  Reversible: to go back to a plain init, delete docs/constitution.md, docs/glossary.md,\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [90 x i8] c"  Reversible: para volver a un init normal, borra docs/constitution.md, docs/glossary.md,\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [78 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ and tests/constitution_test.nx\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [76 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ y tests/constitution_test.nx\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [1 x i8] c"\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [19 x i8] c"error: directory '\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [17 x i8] c"' already exists\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [10 x i8] c"/nyx.toml\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [13 x i8] c"/src/main.nx\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [12 x i8] c"  Created: \00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [2 x i8] c"/\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [15 x i8] c"  Next:    cd \00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [12 x i8] c" && nyx run\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [31 x i8] c"error: nyx.toml already exists\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [6 x i8] c"myapp\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [13 x i8] c"mkdir -p src\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [2 x i8] c".\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [2 x i8] c".\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [33 x i8] c"  Created: nyx.toml, src/main.nx\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [21 x i8] c"  Build:   nyx build\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [19 x i8] c"  Run:     nyx run\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [14 x i8] c"   resolving \00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [5 x i8] c"http\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [4 x i8] c"git\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [2 x i8] c" \00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [26 x i8] c"  error: failed to fetch \00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [7 x i8] c" from \00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [12 x i8] c"  Fetched: \00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [128 x i8] c"use of undefined value|defined with type .* but expected|expected instruction|invalid redefinition of|invalid forward reference\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [37 x i8] c"undefined reference|undefined symbol\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [14 x i8] c"if grep -qE '\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [99 x i8] c"echo \22  -> esto es casi seguro un BUG del compilador Nyx (IR invalido), no de tu codigo (archivo: \00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [74 x i8] c"). Repórtalo con 'nyx report' (el reporte incluye contexto util).\22 >&2; \00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [6 x i8] c"else \00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [91 x i8] c"echo \22  -> this is almost certainly a Nyx compiler BUG (invalid IR), not your code (file: \00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [76 x i8] c"). Report it with 'nyx report' (the report includes useful context).\22 >&2; \00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [16 x i8] c"elif grep -qE '\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [176 x i8] c"echo \22  -> simbolo no encontrado al linkear: si es una funcion extern C tuya, revisa el nombre/lib; si es de la stdlib de Nyx, es un bug -- repórtalo con 'nyx report'.\22 >&2; \00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [6 x i8] c"else \00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [184 x i8] c"echo \22  -> symbol not found at link time: if this is your own extern C function, check the name/lib; if it is a stdlib function, it is a Nyx bug -- report it with 'nyx report'.\22 >&2; \00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [6 x i8] c"else \00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [127 x i8] c"echo \22  -> fallo de link sin patron reconocido; si sospechas que es un bug del compilador, repórtalo con 'nyx report'.\22 >&2; \00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [6 x i8] c"else \00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [119 x i8] c"echo \22  -> link failure with no recognized pattern; if you suspect a compiler bug, report it with 'nyx report'.\22 >&2; \00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [326 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22 >&2; return 0; }\0a\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [1 x i8] c"\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [1 x i8] c"\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [1 x i8] c"\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [3 x i8] c" [\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [2 x i8] c"]\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [3 x i8] c" v\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [1 x i8] c"\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [1 x i8] c"\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [1 x i8] c"\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [1 x i8] c"\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [1 x i8] c"\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [1 x i8] c"\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [1 x i8] c"\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [1 x i8] c"\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [2 x i8] c".\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [1 x i8] c"\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [13 x i8] c"( nyx_pila; \00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [19 x i8] c"\22 ) > \22$LOG\22 2>&1 \00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [93 x i8] c"|| { rc=$?; echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; nyx_pista $rc; exit 1; }\0a\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [12 x i8] c" \22$SRC.ll\22 \00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c \00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [36 x i8] c"$RT/net.c $RT/thread.c $RT/regex.c \00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c \00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [55 x i8] c"$RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [39 x i8] c"$RT/compress.c $RT/random.c $RT/url.c \00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [71 x i8] c"$RT/msgpack.c $RT/websocket.c $RT/persist.c $RT/http2.c $RT/process.c \00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [21 x i8] c"$RT/llama_adapter.c \00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [19 x i8] c"$RT/os/os_posix.c \00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [1 x i8] c"\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [2 x i8] c"#\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [95 x i8] c"ASY=\22$(grep -m1 '^; nyx-asyncify-imports: ' \22$SRC.ll\22 | sed 's/^; nyx-asyncify-imports: //')\22\0a\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [24 x i8] c"if [ -n \22$ASY\22 ]; then\0a\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [10 x i8] c"  WOPT=\22$\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [49 x i8] c"{NYX_WASM_OPT:-$(command -v wasm-opt || true)}\22\0a\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [207 x i8] c"  test -n \22$WOPT\22 || { echo \22error: el programa usa imports que suspenden (await que espera al anfitrion: $ASY) y falta wasm-opt - sudo apt install binaryen, o NYX_WASM_OPT=/ruta/a/wasm-opt\22 >&2; exit 1; }\0a\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [41 x i8] c"  \22$WOPT\22 \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [58 x i8] c".wasm\22 --asyncify --pass-arg=asyncify-imports@\22$ASY\22 -O2 \00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [78 x i8] c"|| { echo \22error: wasm-opt --asyncify fallo:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [1 x i8] c"\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [1 x i8] c"\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [2 x i8] c"/\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [1 x i8] c"\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [3 x i8] c"./\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [1 x i8] c"\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [1 x i8] c"\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [1 x i8] c"\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [1 x i8] c"/"
@.str713 = private unnamed_addr constant [2 x i8] c"-\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [1 x i8] c"\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [1 x i8] c"\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [1 x i8] c"\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [7 x i8] c"0.33.0\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [73 x i8] c"> Completa las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [80 x i8] c"FRICTION.md ya existe con contenido — avísale al usuario para que lo revise.\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [78 x i8] c"creado FRICTION.md — completa las secciones (tu asistente IA puede hacerlo)\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [72 x i8] c"y AVÍSALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [1 x i8] c"\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [66 x i8] c"error: el reporte parece vacío — completa la plantilla primero\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [1 x i8] c"\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [1 x i8] c"\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [1 x i8] c"\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [1 x i8] c"\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [1 x i8] c"\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [1 x i8] c"\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [4 x i8] c"std\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [2 x i8] c".\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [1 x i8] c"\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [1 x i8] c"\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [5 x i8] c"http\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [4 x i8] c"web\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [3 x i8] c"db\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [5 x i8] c"json\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [5 x i8] c"file\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [3 x i8] c"io\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [5 x i8] c"path\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [4 x i8] c"net\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [4 x i8] c"url\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [5 x i8] c"smtp\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [6 x i8] c"async\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [7 x i8] c"random\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [5 x i8] c"time\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [7 x i8] c"string\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [4 x i8] c"set\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [4 x i8] c"box\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [5 x i8] c"args\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [4 x i8] c"log\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [1 x i8] c"\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [1 x i8] c"("
@.str847 = private unnamed_addr constant [1 x i8] c")"
@.str848 = private unnamed_addr constant [2 x i8] c"/\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [1 x i8] c"\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [1 x i8] c"\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [4 x i8] c"///\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [1 x i8] c"\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [2 x i8] c" \00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [2 x i8] c"`\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [6 x i8] c" — \00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [1 x i8] c"("
@.str862 = private unnamed_addr constant [1 x i8] c"{"
@.str863 = private unnamed_addr constant [1 x i8] c"\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [1 x i8] c"\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [1 x i8] c"\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [2 x i8] c"1\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [2 x i8] c"s\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [2 x i8] c")\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [1 x i8] c"\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [6 x i8] c" — \00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [1 x i8] c"\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [1 x i8] c"\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [1 x i8] c"\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [4 x i8] c"## \00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [1 x i8] c"\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [3 x i8] c" (\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [6 x i8] c"build\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [1 x i8] c"\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [1 x i8] c"\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [1 x i8] c"\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [6 x i8] c"build\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [4 x i8] c"run\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [5 x i8] c"test\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [3 x i8] c"--\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [1 x i8] c"\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [1 x i8] c"-"
@.str939 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [1 x i8] c"\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [1 x i8] c"\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [6 x i8] c" — \00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [5 x i8] c"init\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [1 x i8] c"\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [1 x i8] c"\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [1 x i8] c"\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [1 x i8] c"\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [1 x i8] c"\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [1 x i8] c"\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [3 x i8] c"--\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [1 x i8] c"\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [1 x i8] c"\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [1 x i8] c"\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [3 x i8] c"es\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [3 x i8] c"es\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [1 x i8] c"\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [3 x i8] c"en\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [3 x i8] c"en\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [3 x i8] c"es\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [1 x i8] c"\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [2 x i8] c".\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [1 x i8] c"\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [1 x i8] c"\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [5 x i8] c"init\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [2 x i8] c".\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [2 x i8] c".\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [2 x i8] c".\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [2 x i8] c".\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [1 x i8] c"\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [4 x i8] c"add\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [1 x i8] c"\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [8 x i8] c"project\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [1 x i8] c"\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [1 x i8] c"\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [1 x i8] c"\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [1 x i8] c"\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [1 x i8] c"\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [1 x i8] c"\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [7 x i8] c"report\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [1 x i8] c"\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [1 x i8] c"\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [1 x i8] c"\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [1 x i8] c"\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [1 x i8] c"\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [1 x i8] c"\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [1 x i8] c"\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [1 x i8] c"\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [1 x i8] c"\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [2 x i8] c" \00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [1 x i8] c"\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [1 x i8] c"\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [2 x i8] c" \00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1080.c = internal global %nyx_string* null
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
  call void @nyx_array_push({ i64, i8* }* %857, i64 %858)
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

define internal %ProjectConfig @parse_toml(
%nyx_string* %content.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %1105 = call { i64, i8* }* @nyx_array_new_ptr()
  %1106 = alloca { i64, i8* }*
  store { i64, i8* }* %1105, { i64, i8* }** %1106
  %1107 = call { i64, i8* }* @nyx_array_new_ptr()
  %1108 = alloca { i64, i8* }*
  store { i64, i8* }* %1107, { i64, i8* }** %1108
  %1109 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %1110 = ptrtoint %ProjectConfig* %1109 to i64
  %1111 = call i8* @GC_malloc(i64 %1110)
  %1112 = bitcast i8* %1111 to %ProjectConfig*
  %1113 = getelementptr [1 x i8], [1 x i8]* @.str73, i32 0, i32 0
  %1114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1113, i64 0)
  %1115 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 0
  store %nyx_string* %1114, %nyx_string** %1115
  %1116 = getelementptr [6 x i8], [6 x i8]* @.str74, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1116, i64 5)
  %1118 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 1
  store %nyx_string* %1117, %nyx_string** %1118
  %1119 = getelementptr [12 x i8], [12 x i8]* @.str75, i32 0, i32 0
  %1120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1119, i64 11)
  %1121 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 2
  store %nyx_string* %1120, %nyx_string** %1121
  %1122 = getelementptr [12 x i8], [12 x i8]* @.str76, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1122, i64 11)
  %1124 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 3
  store %nyx_string* %1123, %nyx_string** %1124
  %1125 = getelementptr [1 x i8], [1 x i8]* @.str77, i32 0, i32 0
  %1126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1125, i64 0)
  %1127 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 4
  store %nyx_string* %1126, %nyx_string** %1127
  %1128 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 5
  store i1 0, i1* %1128
  %1129 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1129, i64 0)
  %1131 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 6
  store %nyx_string* %1130, %nyx_string** %1131
  %1132 = load { i64, i8* }*, { i64, i8* }** %1106
  %1133 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 7
  store { i64, i8* }* %1132, { i64, i8* }** %1133
  %1134 = load { i64, i8* }*, { i64, i8* }** %1108
  %1135 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 8
  store { i64, i8* }* %1134, { i64, i8* }** %1135
  %1136 = getelementptr [1 x i8], [1 x i8]* @.str79, i32 0, i32 0
  %1137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1136, i64 0)
  %1138 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 9
  store %nyx_string* %1137, %nyx_string** %1138
  %1139 = getelementptr [1 x i8], [1 x i8]* @.str80, i32 0, i32 0
  %1140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1139, i64 0)
  %1141 = getelementptr %ProjectConfig, %ProjectConfig* %1112, i32 0, i32 10
  store %nyx_string* %1140, %nyx_string** %1141
  %1142 = load %ProjectConfig, %ProjectConfig* %1112
  %1143 = alloca %ProjectConfig
  store %ProjectConfig %1142, %ProjectConfig* %1143
  %1144 = getelementptr [1 x i8], [1 x i8]* @.str81, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1144, i64 0)
  %1146 = alloca %nyx_string*
  store %nyx_string* %1145, %nyx_string** %1146
  %1147 = getelementptr [1 x i8], [1 x i8]* @.str82, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1147, i64 0)
  %1149 = alloca %nyx_string*
  store %nyx_string* %1148, %nyx_string** %1149
  %1150 = getelementptr [1 x i8], [1 x i8]* @.str83, i32 0, i32 0
  %1151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1150, i64 0)
  %1152 = alloca %nyx_string*
  store %nyx_string* %1151, %nyx_string** %1152
  %1153 = getelementptr [1 x i8], [1 x i8]* @.str84, i32 0, i32 0
  %1154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1153, i64 0)
  %1155 = alloca %nyx_string*
  store %nyx_string* %1154, %nyx_string** %1155
  %1156 = load %nyx_string*, %nyx_string** %content.ptr
  %1157 = getelementptr [2 x i8], [2 x i8]* @.str85, i32 0, i32 0
  %1158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1157, i64 1)
  %1159 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1156, %nyx_string* %1158)
  %1160 = alloca { i64, i8* }*
  store { i64, i8* }* %1159, { i64, i8* }** %1160
  %1161 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1161, i64 0)
  %1163 = alloca %nyx_string*
  store %nyx_string* %1162, %nyx_string** %1163
  %1164 = alloca i64
  store i64 0, i64* %1164
  %1165 = getelementptr [1 x i8], [1 x i8]* @.str87, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1165, i64 0)
  %1167 = alloca %nyx_string*
  store %nyx_string* %1166, %nyx_string** %1167
  %1168 = getelementptr [2 x i8], [2 x i8]* @.str88, i32 0, i32 0
  %1169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1168, i64 1)
  %1170 = alloca %nyx_string*
  store %nyx_string* %1169, %nyx_string** %1170
  %1171 = getelementptr [2 x i8], [2 x i8]* @.str89, i32 0, i32 0
  %1172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1171, i64 1)
  %1173 = alloca %nyx_string*
  store %nyx_string* %1172, %nyx_string** %1173
  %1174 = getelementptr [2 x i8], [2 x i8]* @.str90, i32 0, i32 0
  %1175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1174, i64 1)
  %1176 = alloca %nyx_string*
  store %nyx_string* %1175, %nyx_string** %1176
  %1177 = getelementptr [8 x i8], [8 x i8]* @.str91, i32 0, i32 0
  %1178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1177, i64 7)
  %1179 = alloca %nyx_string*
  store %nyx_string* %1178, %nyx_string** %1179
  %1180 = getelementptr [5 x i8], [5 x i8]* @.str92, i32 0, i32 0
  %1181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1180, i64 4)
  %1182 = alloca %nyx_string*
  store %nyx_string* %1181, %nyx_string** %1182
  %1183 = getelementptr [8 x i8], [8 x i8]* @.str93, i32 0, i32 0
  %1184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1183, i64 7)
  %1185 = alloca %nyx_string*
  store %nyx_string* %1184, %nyx_string** %1185
  %1186 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %1187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1186, i64 4)
  %1188 = alloca %nyx_string*
  store %nyx_string* %1187, %nyx_string** %1188
  %1189 = getelementptr [12 x i8], [12 x i8]* @.str95, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1189, i64 11)
  %1191 = alloca %nyx_string*
  store %nyx_string* %1190, %nyx_string** %1191
  %1192 = getelementptr [6 x i8], [6 x i8]* @.str96, i32 0, i32 0
  %1193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1192, i64 5)
  %1194 = alloca %nyx_string*
  store %nyx_string* %1193, %nyx_string** %1194
  %1195 = getelementptr [5 x i8], [5 x i8]* @.str97, i32 0, i32 0
  %1196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1195, i64 4)
  %1197 = alloca %nyx_string*
  store %nyx_string* %1196, %nyx_string** %1197
  %1198 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %1199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1198, i64 6)
  %1200 = alloca %nyx_string*
  store %nyx_string* %1199, %nyx_string** %1200
  %1201 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1201, i64 5)
  %1203 = alloca %nyx_string*
  store %nyx_string* %1202, %nyx_string** %1203
  %1204 = getelementptr [44 x i8], [44 x i8]* @.str100, i32 0, i32 0
  %1205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1204, i64 43)
  %1206 = alloca %nyx_string*
  store %nyx_string* %1205, %nyx_string** %1206
  %1207 = getelementptr [34 x i8], [34 x i8]* @.str101, i32 0, i32 0
  %1208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1207, i64 33)
  %1209 = alloca %nyx_string*
  store %nyx_string* %1208, %nyx_string** %1209
  %1210 = getelementptr [13 x i8], [13 x i8]* @.str102, i32 0, i32 0
  %1211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1210, i64 12)
  %1212 = alloca %nyx_string*
  store %nyx_string* %1211, %nyx_string** %1212
  %1213 = call i8* @llvm.stacksave()
  br label %while_cond250
while_cond250:
  %1214 = load i64, i64* %1164
  %1215 = load { i64, i8* }*, { i64, i8* }** %1160
  %1216 = call i64 @nyx_array_length({ i64, i8* }* %1215)
  %1217 = icmp slt i64 %1214, %1216
  br i1 %1217, label %while_body251, label %while_end252
while_body251:
  call void @llvm.stackrestore(i8* %1213)
  %1218 = load { i64, i8* }*, { i64, i8* }** %1160
  %1219 = load i64, i64* %1164
  %1220 = call i64 @nyx_array_get_checked({ i64, i8* }* %1218, i64 %1219, i64 2)
  %1221 = inttoptr i64 %1220 to %nyx_string*
  %1222 = alloca %nyx_string*
  store %nyx_string* %1221, %nyx_string** %1222
  %1223 = load %nyx_string*, %nyx_string** %1222
  %1224 = call %nyx_string* @nyx_string_trim(%nyx_string* %1223)
  %1225 = alloca %nyx_string*
  store %nyx_string* %1224, %nyx_string** %1225
  %1226 = alloca i1
  store i1 true, i1* %1226
  %1227 = load %nyx_string*, %nyx_string** %1225
  %1228 = load %nyx_string*, %nyx_string** %1167
  %1229 = call i1 @nyx_string_equals(%nyx_string* %1227, %nyx_string* %1228)
  br i1 %1229, label %sc_or_end254, label %sc_or_rhs253
sc_or_rhs253:
  %1230 = load %nyx_string*, %nyx_string** %1225
  %1231 = load %nyx_string*, %nyx_string** %1170
  %1232 = call i1 @nyx_string_starts_with(%nyx_string* %1230, %nyx_string* %1231)
  store i1 %1232, i1* %1226
  br label %sc_or_end254
sc_or_end254:
  %1233 = load i1, i1* %1226
  br i1 %1233, label %then255, label %else256
then255:
  %1234 = load i64, i64* %1164
  %1235 = add i64 %1234, 1
  store i64 %1235, i64* %1164
  br label %merge257
else256:
  %1236 = alloca i1
  store i1 false, i1* %1236
  %1237 = load %nyx_string*, %nyx_string** %1225
  %1238 = load %nyx_string*, %nyx_string** %1173
  %1239 = call i1 @nyx_string_starts_with(%nyx_string* %1237, %nyx_string* %1238)
  br i1 %1239, label %sc_and_rhs258, label %sc_and_end259
sc_and_rhs258:
  %1240 = load %nyx_string*, %nyx_string** %1225
  %1241 = load %nyx_string*, %nyx_string** %1176
  %1242 = call i1 @nyx_string_ends_with(%nyx_string* %1240, %nyx_string* %1241)
  store i1 %1242, i1* %1236
  br label %sc_and_end259
sc_and_end259:
  %1243 = load i1, i1* %1236
  br i1 %1243, label %then260, label %else261
then260:
  %1244 = load %nyx_string*, %nyx_string** %1225
  %1245 = load %nyx_string*, %nyx_string** %1225
  %1246 = call i64 @nyx_string_byte_length(%nyx_string* %1245)
  %1247 = sub i64 %1246, 1
  %1248 = call %nyx_string* @nyx_string_substring(%nyx_string* %1244, i64 1, i64 %1247)
  %1249 = call %nyx_string* @nyx_string_trim(%nyx_string* %1248)
  store %nyx_string* %1249, %nyx_string** %1163
  %1250 = load i64, i64* %1164
  %1251 = add i64 %1250, 1
  store i64 %1251, i64* %1164
  br label %merge262
else261:
  %1252 = load %nyx_string*, %nyx_string** %1225
  %1253 = call %nyx_string* @parse_toml_key(%nyx_string* %1252)
  %1254 = alloca %nyx_string*
  store %nyx_string* %1253, %nyx_string** %1254
  %1255 = load %nyx_string*, %nyx_string** %1225
  %1256 = call %nyx_string* @parse_toml_value(%nyx_string* %1255)
  %1257 = alloca %nyx_string*
  store %nyx_string* %1256, %nyx_string** %1257
  %1258 = load %nyx_string*, %nyx_string** %1163
  %1259 = load %nyx_string*, %nyx_string** %1179
  %1260 = call i1 @nyx_string_equals(%nyx_string* %1258, %nyx_string* %1259)
  br i1 %1260, label %then263, label %else264
then263:
  %1261 = load %nyx_string*, %nyx_string** %1254
  %1262 = load %nyx_string*, %nyx_string** %1182
  %1263 = call i1 @nyx_string_equals(%nyx_string* %1261, %nyx_string* %1262)
  br i1 %1263, label %then266, label %else267
then266:
  %1264 = load %nyx_string*, %nyx_string** %1257
  %1265 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 0
  store %nyx_string* %1264, %nyx_string** %1265
  br label %merge268
else267:
  br label %merge268
merge268:
  %1266 = load %nyx_string*, %nyx_string** %1254
  %1267 = load %nyx_string*, %nyx_string** %1185
  %1268 = call i1 @nyx_string_equals(%nyx_string* %1266, %nyx_string* %1267)
  br i1 %1268, label %then269, label %else270
then269:
  %1269 = load %nyx_string*, %nyx_string** %1257
  %1270 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 1
  store %nyx_string* %1269, %nyx_string** %1270
  br label %merge271
else270:
  br label %merge271
merge271:
  %1271 = load %nyx_string*, %nyx_string** %1254
  %1272 = load %nyx_string*, %nyx_string** %1188
  %1273 = call i1 @nyx_string_equals(%nyx_string* %1271, %nyx_string* %1272)
  br i1 %1273, label %then272, label %else273
then272:
  %1274 = load %nyx_string*, %nyx_string** %1257
  store %nyx_string* %1274, %nyx_string** %1146
  br label %merge274
else273:
  br label %merge274
merge274:
  %1275 = load %nyx_string*, %nyx_string** %1254
  %1276 = load %nyx_string*, %nyx_string** %1191
  %1277 = call i1 @nyx_string_equals(%nyx_string* %1275, %nyx_string* %1276)
  br i1 %1277, label %then275, label %else276
then275:
  %1278 = load %nyx_string*, %nyx_string** %1257
  %1279 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 4
  store %nyx_string* %1278, %nyx_string** %1279
  br label %merge277
else276:
  br label %merge277
merge277:
  %1280 = alloca i1
  store i1 false, i1* %1280
  %1281 = load %nyx_string*, %nyx_string** %1254
  %1282 = load %nyx_string*, %nyx_string** %1194
  %1283 = call i1 @nyx_string_equals(%nyx_string* %1281, %nyx_string* %1282)
  br i1 %1283, label %sc_and_rhs278, label %sc_and_end279
sc_and_rhs278:
  %1284 = load %nyx_string*, %nyx_string** %1257
  %1285 = load %nyx_string*, %nyx_string** %1197
  %1286 = call i1 @nyx_string_equals(%nyx_string* %1284, %nyx_string* %1285)
  store i1 %1286, i1* %1280
  br label %sc_and_end279
sc_and_end279:
  %1287 = load i1, i1* %1280
  br i1 %1287, label %then280, label %else281
then280:
  %1288 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 5
  store i1 1, i1* %1288
  br label %merge282
else281:
  br label %merge282
merge282:
  %1289 = load %nyx_string*, %nyx_string** %1254
  %1290 = load %nyx_string*, %nyx_string** %1200
  %1291 = call i1 @nyx_string_equals(%nyx_string* %1289, %nyx_string* %1290)
  br i1 %1291, label %then283, label %else284
then283:
  %1292 = load %nyx_string*, %nyx_string** %1257
  store %nyx_string* %1292, %nyx_string** %1152
  br label %merge285
else284:
  br label %merge285
merge285:
  br label %merge265
else264:
  br label %merge265
merge265:
  %1293 = load %nyx_string*, %nyx_string** %1163
  %1294 = load %nyx_string*, %nyx_string** %1203
  %1295 = call i1 @nyx_string_equals(%nyx_string* %1293, %nyx_string* %1294)
  br i1 %1295, label %then286, label %else287
then286:
  %1296 = load %nyx_string*, %nyx_string** %1254
  %1297 = load %nyx_string*, %nyx_string** %1188
  %1298 = call i1 @nyx_string_equals(%nyx_string* %1296, %nyx_string* %1297)
  br i1 %1298, label %then289, label %else290
then289:
  %1299 = load %nyx_string*, %nyx_string** %1257
  store %nyx_string* %1299, %nyx_string** %1149
  br label %merge291
else290:
  %1300 = load %nyx_string*, %nyx_string** %1254
  %1301 = load %nyx_string*, %nyx_string** %1200
  %1302 = call i1 @nyx_string_equals(%nyx_string* %1300, %nyx_string* %1301)
  br i1 %1302, label %then292, label %else293
then292:
  %1303 = load %nyx_string*, %nyx_string** %1257
  store %nyx_string* %1303, %nyx_string** %1155
  br label %merge294
else293:
  %1304 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 9
  %1305 = load %nyx_string*, %nyx_string** %1304
  %1306 = load %nyx_string*, %nyx_string** %1167
  %1307 = call i1 @nyx_string_equals(%nyx_string* %1305, %nyx_string* %1306)
  br i1 %1307, label %then295, label %else296
then295:
  %1308 = load %nyx_string*, %nyx_string** %1206
  %1309 = load %nyx_string*, %nyx_string** %1254
  %1310 = call %nyx_string* @nyx_string_concat(%nyx_string* %1308, %nyx_string* %1309)
  %1311 = load %nyx_string*, %nyx_string** %1209
  %1312 = call %nyx_string* @nyx_string_concat(%nyx_string* %1310, %nyx_string* %1311)
  %1313 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 9
  store %nyx_string* %1312, %nyx_string** %1313
  br label %merge297
else296:
  br label %merge297
merge297:
  br label %merge294
merge294:
  br label %merge291
merge291:
  br label %merge288
else287:
  br label %merge288
merge288:
  %1314 = load %nyx_string*, %nyx_string** %1163
  %1315 = load %nyx_string*, %nyx_string** %1212
  %1316 = call i1 @nyx_string_equals(%nyx_string* %1314, %nyx_string* %1315)
  br i1 %1316, label %then298, label %else299
then298:
  %1317 = alloca i1
  store i1 false, i1* %1317
  %1318 = load %nyx_string*, %nyx_string** %1254
  %1319 = load %nyx_string*, %nyx_string** %1167
  %1320 = call i1 @nyx_string_equals(%nyx_string* %1318, %nyx_string* %1319)
  %1321 = xor i1 %1320, true
  br i1 %1321, label %sc_and_rhs301, label %sc_and_end302
sc_and_rhs301:
  %1322 = load %nyx_string*, %nyx_string** %1257
  %1323 = load %nyx_string*, %nyx_string** %1167
  %1324 = call i1 @nyx_string_equals(%nyx_string* %1322, %nyx_string* %1323)
  %1325 = xor i1 %1324, true
  store i1 %1325, i1* %1317
  br label %sc_and_end302
sc_and_end302:
  %1326 = load i1, i1* %1317
  br i1 %1326, label %then303, label %else304
then303:
  %1327 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 7
  %1328 = load { i64, i8* }*, { i64, i8* }** %1327
  %1329 = load %nyx_string*, %nyx_string** %1254
  %1330 = ptrtoint %nyx_string* %1329 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1328, i64 %1330, i64 2)
  %1331 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 8
  %1332 = load { i64, i8* }*, { i64, i8* }** %1331
  %1333 = load %nyx_string*, %nyx_string** %1257
  %1334 = ptrtoint %nyx_string* %1333 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1332, i64 %1334, i64 2)
  br label %merge305
else304:
  br label %merge305
merge305:
  br label %merge300
else299:
  br label %merge300
merge300:
  %1335 = load i64, i64* %1164
  %1336 = add i64 %1335, 1
  store i64 %1336, i64* %1164
  br label %merge262
merge262:
  br label %merge257
merge257:
  br label %while_cond250
while_end252:
  %1337 = alloca i1
  store i1 false, i1* %1337
  %1338 = alloca i1
  store i1 false, i1* %1338
  %1339 = load %nyx_string*, %nyx_string** %1146
  %1340 = getelementptr [1 x i8], [1 x i8]* @.str103, i32 0, i32 0
  %1341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1340, i64 0)
  %1342 = call i1 @nyx_string_equals(%nyx_string* %1339, %nyx_string* %1341)
  %1343 = xor i1 %1342, true
  br i1 %1343, label %sc_and_rhs306, label %sc_and_end307
sc_and_rhs306:
  %1344 = load %nyx_string*, %nyx_string** %1149
  %1345 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %1346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1345, i64 0)
  %1347 = call i1 @nyx_string_equals(%nyx_string* %1344, %nyx_string* %1346)
  %1348 = xor i1 %1347, true
  store i1 %1348, i1* %1338
  br label %sc_and_end307
sc_and_end307:
  %1349 = load i1, i1* %1338
  br i1 %1349, label %sc_and_rhs308, label %sc_and_end309
sc_and_rhs308:
  %1350 = load %nyx_string*, %nyx_string** %1146
  %1351 = load %nyx_string*, %nyx_string** %1149
  %1352 = call i1 @nyx_string_equals(%nyx_string* %1350, %nyx_string* %1351)
  %1353 = xor i1 %1352, true
  store i1 %1353, i1* %1337
  br label %sc_and_end309
sc_and_end309:
  %1354 = load i1, i1* %1337
  br i1 %1354, label %then310, label %else311
then310:
  %1355 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 9
  %1356 = load %nyx_string*, %nyx_string** %1355
  %1357 = getelementptr [1 x i8], [1 x i8]* @.str105, i32 0, i32 0
  %1358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1357, i64 0)
  %1359 = call i1 @nyx_string_equals(%nyx_string* %1356, %nyx_string* %1358)
  br i1 %1359, label %then313, label %else314
then313:
  %1360 = getelementptr [74 x i8], [74 x i8]* @.str106, i32 0, i32 0
  %1361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1360, i64 73)
  %1362 = load %nyx_string*, %nyx_string** %1146
  %1363 = call %nyx_string* @nyx_string_concat(%nyx_string* %1361, %nyx_string* %1362)
  %1364 = getelementptr [21 x i8], [21 x i8]* @.str107, i32 0, i32 0
  %1365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1364, i64 20)
  %1366 = call %nyx_string* @nyx_string_concat(%nyx_string* %1363, %nyx_string* %1365)
  %1367 = load %nyx_string*, %nyx_string** %1149
  %1368 = call %nyx_string* @nyx_string_concat(%nyx_string* %1366, %nyx_string* %1367)
  %1369 = getelementptr [18 x i8], [18 x i8]* @.str108, i32 0, i32 0
  %1370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1369, i64 17)
  %1371 = call %nyx_string* @nyx_string_concat(%nyx_string* %1368, %nyx_string* %1370)
  %1372 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 9
  store %nyx_string* %1371, %nyx_string** %1372
  br label %merge315
else314:
  br label %merge315
merge315:
  br label %merge312
else311:
  br label %merge312
merge312:
  %1373 = alloca i1
  store i1 false, i1* %1373
  %1374 = alloca i1
  store i1 false, i1* %1374
  %1375 = load %nyx_string*, %nyx_string** %1152
  %1376 = getelementptr [1 x i8], [1 x i8]* @.str109, i32 0, i32 0
  %1377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1376, i64 0)
  %1378 = call i1 @nyx_string_equals(%nyx_string* %1375, %nyx_string* %1377)
  %1379 = xor i1 %1378, true
  br i1 %1379, label %sc_and_rhs316, label %sc_and_end317
sc_and_rhs316:
  %1380 = load %nyx_string*, %nyx_string** %1155
  %1381 = getelementptr [1 x i8], [1 x i8]* @.str110, i32 0, i32 0
  %1382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1381, i64 0)
  %1383 = call i1 @nyx_string_equals(%nyx_string* %1380, %nyx_string* %1382)
  %1384 = xor i1 %1383, true
  store i1 %1384, i1* %1374
  br label %sc_and_end317
sc_and_end317:
  %1385 = load i1, i1* %1374
  br i1 %1385, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1386 = load %nyx_string*, %nyx_string** %1152
  %1387 = load %nyx_string*, %nyx_string** %1155
  %1388 = call i1 @nyx_string_equals(%nyx_string* %1386, %nyx_string* %1387)
  %1389 = xor i1 %1388, true
  store i1 %1389, i1* %1373
  br label %sc_and_end319
sc_and_end319:
  %1390 = load i1, i1* %1373
  br i1 %1390, label %then320, label %else321
then320:
  %1391 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 9
  %1392 = load %nyx_string*, %nyx_string** %1391
  %1393 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1393, i64 0)
  %1395 = call i1 @nyx_string_equals(%nyx_string* %1392, %nyx_string* %1394)
  br i1 %1395, label %then323, label %else324
then323:
  %1396 = getelementptr [78 x i8], [78 x i8]* @.str112, i32 0, i32 0
  %1397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1396, i64 77)
  %1398 = load %nyx_string*, %nyx_string** %1152
  %1399 = call %nyx_string* @nyx_string_concat(%nyx_string* %1397, %nyx_string* %1398)
  %1400 = getelementptr [23 x i8], [23 x i8]* @.str113, i32 0, i32 0
  %1401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1400, i64 22)
  %1402 = call %nyx_string* @nyx_string_concat(%nyx_string* %1399, %nyx_string* %1401)
  %1403 = load %nyx_string*, %nyx_string** %1155
  %1404 = call %nyx_string* @nyx_string_concat(%nyx_string* %1402, %nyx_string* %1403)
  %1405 = getelementptr [18 x i8], [18 x i8]* @.str114, i32 0, i32 0
  %1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1405, i64 17)
  %1407 = call %nyx_string* @nyx_string_concat(%nyx_string* %1404, %nyx_string* %1406)
  %1408 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 9
  store %nyx_string* %1407, %nyx_string** %1408
  br label %merge325
else324:
  br label %merge325
merge325:
  br label %merge322
else321:
  br label %merge322
merge322:
  %1409 = load %nyx_string*, %nyx_string** %1149
  %1410 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1410, i64 0)
  %1412 = call i1 @nyx_string_equals(%nyx_string* %1409, %nyx_string* %1411)
  %1413 = xor i1 %1412, true
  br i1 %1413, label %then326, label %else327
then326:
  %1414 = load %nyx_string*, %nyx_string** %1149
  %1415 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 2
  store %nyx_string* %1414, %nyx_string** %1415
  br label %merge328
else327:
  %1416 = load %nyx_string*, %nyx_string** %1146
  %1417 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1417, i64 0)
  %1419 = call i1 @nyx_string_equals(%nyx_string* %1416, %nyx_string* %1418)
  %1420 = xor i1 %1419, true
  br i1 %1420, label %then329, label %else330
then329:
  %1421 = load %nyx_string*, %nyx_string** %1146
  %1422 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 2
  store %nyx_string* %1421, %nyx_string** %1422
  br label %merge331
else330:
  br label %merge331
merge331:
  br label %merge328
merge328:
  %1423 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 2
  %1424 = load %nyx_string*, %nyx_string** %1423
  %1425 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 3
  store %nyx_string* %1424, %nyx_string** %1425
  %1426 = load %nyx_string*, %nyx_string** %1155
  %1427 = getelementptr [1 x i8], [1 x i8]* @.str117, i32 0, i32 0
  %1428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1427, i64 0)
  %1429 = call i1 @nyx_string_equals(%nyx_string* %1426, %nyx_string* %1428)
  %1430 = xor i1 %1429, true
  br i1 %1430, label %then332, label %else333
then332:
  %1431 = load %nyx_string*, %nyx_string** %1155
  %1432 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 6
  store %nyx_string* %1431, %nyx_string** %1432
  br label %merge334
else333:
  %1433 = load %nyx_string*, %nyx_string** %1152
  %1434 = getelementptr [1 x i8], [1 x i8]* @.str118, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1434, i64 0)
  %1436 = call i1 @nyx_string_equals(%nyx_string* %1433, %nyx_string* %1435)
  %1437 = xor i1 %1436, true
  br i1 %1437, label %then335, label %else336
then335:
  %1438 = load %nyx_string*, %nyx_string** %1152
  %1439 = getelementptr %ProjectConfig, %ProjectConfig* %1143, i32 0, i32 6
  store %nyx_string* %1438, %nyx_string** %1439
  br label %merge337
else336:
  br label %merge337
merge337:
  br label %merge334
merge334:
  %1440 = load %ProjectConfig, %ProjectConfig* %1143
  ret %ProjectConfig %1440
}

define internal i64 @write_lockfile(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1441 = getelementptr [57 x i8], [57 x i8]* @.str119, i32 0, i32 0
  %1442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1441, i64 56)
  %1443 = getelementptr [11 x i8], [11 x i8]* @.str120, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1443, i64 10)
  %1445 = call %nyx_string* @nyx_string_concat(%nyx_string* %1442, %nyx_string* %1444)
  %1446 = getelementptr [9 x i8], [9 x i8]* @.str121, i32 0, i32 0
  %1447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1446, i64 8)
  %1448 = call %nyx_string* @nyx_string_concat(%nyx_string* %1445, %nyx_string* %1447)
  %1449 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %1450 = load %nyx_string*, %nyx_string** %1449
  %1451 = call %nyx_string* @nyx_string_concat(%nyx_string* %1448, %nyx_string* %1450)
  %1452 = getelementptr [3 x i8], [3 x i8]* @.str122, i32 0, i32 0
  %1453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1452, i64 2)
  %1454 = call %nyx_string* @nyx_string_concat(%nyx_string* %1451, %nyx_string* %1453)
  %1455 = getelementptr [12 x i8], [12 x i8]* @.str123, i32 0, i32 0
  %1456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1455, i64 11)
  %1457 = call %nyx_string* @nyx_string_concat(%nyx_string* %1454, %nyx_string* %1456)
  %1458 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %1459 = load %nyx_string*, %nyx_string** %1458
  %1460 = call %nyx_string* @nyx_string_concat(%nyx_string* %1457, %nyx_string* %1459)
  %1461 = getelementptr [3 x i8], [3 x i8]* @.str124, i32 0, i32 0
  %1462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1461, i64 2)
  %1463 = call %nyx_string* @nyx_string_concat(%nyx_string* %1460, %nyx_string* %1462)
  %1464 = getelementptr [9 x i8], [9 x i8]* @.str125, i32 0, i32 0
  %1465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1464, i64 8)
  %1466 = call %nyx_string* @nyx_string_concat(%nyx_string* %1463, %nyx_string* %1465)
  %1467 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %1468 = load %nyx_string*, %nyx_string** %1467
  %1469 = call %nyx_string* @nyx_string_concat(%nyx_string* %1466, %nyx_string* %1468)
  %1470 = getelementptr [3 x i8], [3 x i8]* @.str126, i32 0, i32 0
  %1471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1470, i64 2)
  %1472 = call %nyx_string* @nyx_string_concat(%nyx_string* %1469, %nyx_string* %1471)
  %1473 = alloca %nyx_string*
  store %nyx_string* %1472, %nyx_string** %1473
  %1474 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1475 = load { i64, i8* }*, { i64, i8* }** %1474
  %1476 = call i64 @nyx_array_length({ i64, i8* }* %1475)
  %1477 = icmp sgt i64 %1476, 0
  br i1 %1477, label %then338, label %else339
then338:
  %1478 = load %nyx_string*, %nyx_string** %1473
  %1479 = getelementptr [17 x i8], [17 x i8]* @.str127, i32 0, i32 0
  %1480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1479, i64 16)
  %1481 = call %nyx_string* @nyx_string_concat(%nyx_string* %1478, %nyx_string* %1480)
  store %nyx_string* %1481, %nyx_string** %1473
  %1482 = alloca i64
  store i64 0, i64* %1482
  %1483 = getelementptr [5 x i8], [5 x i8]* @.str128, i32 0, i32 0
  %1484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1483, i64 4)
  %1485 = alloca %nyx_string*
  store %nyx_string* %1484, %nyx_string** %1485
  %1486 = getelementptr [3 x i8], [3 x i8]* @.str129, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1486, i64 2)
  %1488 = alloca %nyx_string*
  store %nyx_string* %1487, %nyx_string** %1488
  %1489 = call i8* @llvm.stacksave()
  br label %while_cond341
while_cond341:
  %1490 = load i64, i64* %1482
  %1491 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1492 = load { i64, i8* }*, { i64, i8* }** %1491
  %1493 = call i64 @nyx_array_length({ i64, i8* }* %1492)
  %1494 = icmp slt i64 %1490, %1493
  br i1 %1494, label %while_body342, label %while_end343
while_body342:
  call void @llvm.stackrestore(i8* %1489)
  %1495 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1496 = load { i64, i8* }*, { i64, i8* }** %1495
  %1497 = load i64, i64* %1482
  %1498 = call i64 @nyx_array_get({ i64, i8* }* %1496, i64 %1497)
  %1499 = inttoptr i64 %1498 to %nyx_string*
  %1500 = alloca %nyx_string*
  store %nyx_string* %1499, %nyx_string** %1500
  %1501 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %1502 = load { i64, i8* }*, { i64, i8* }** %1501
  %1503 = load i64, i64* %1482
  %1504 = call i64 @nyx_array_get({ i64, i8* }* %1502, i64 %1503)
  %1505 = inttoptr i64 %1504 to %nyx_string*
  %1506 = alloca %nyx_string*
  store %nyx_string* %1505, %nyx_string** %1506
  %1507 = load %nyx_string*, %nyx_string** %1473
  %1508 = load %nyx_string*, %nyx_string** %1500
  %1509 = call %nyx_string* @nyx_string_concat(%nyx_string* %1507, %nyx_string* %1508)
  %1510 = load %nyx_string*, %nyx_string** %1485
  %1511 = call %nyx_string* @nyx_string_concat(%nyx_string* %1509, %nyx_string* %1510)
  %1512 = load %nyx_string*, %nyx_string** %1506
  %1513 = call %nyx_string* @nyx_string_concat(%nyx_string* %1511, %nyx_string* %1512)
  %1514 = load %nyx_string*, %nyx_string** %1488
  %1515 = call %nyx_string* @nyx_string_concat(%nyx_string* %1513, %nyx_string* %1514)
  store %nyx_string* %1515, %nyx_string** %1473
  %1516 = load i64, i64* %1482
  %1517 = add i64 %1516, 1
  store i64 %1517, i64* %1482
  br label %while_cond341
while_end343:
  br label %merge340
else339:
  br label %merge340
merge340:
  %1518 = getelementptr [9 x i8], [9 x i8]* @.str130, i32 0, i32 0
  %1519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1518, i64 8)
  %1520 = call i8* @nyx_string_to_cstr(%nyx_string* %1519)
  %1521 = call i1 @nyx_file_exists(i8* %1520)
  br i1 %1521, label %then344, label %else345
then344:
  %1522 = getelementptr [9 x i8], [9 x i8]* @.str131, i32 0, i32 0
  %1523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1522, i64 8)
  %1524 = call i8* @nyx_string_to_cstr(%nyx_string* %1523)
  %1525 = call %nyx_string* @nyx_read_file(i8* %1524)
  %1526 = alloca %nyx_string*
  store %nyx_string* %1525, %nyx_string** %1526
  %1527 = load %nyx_string*, %nyx_string** %1526
  %1528 = load %nyx_string*, %nyx_string** %1473
  %1529 = call i1 @nyx_string_equals(%nyx_string* %1527, %nyx_string* %1528)
  br i1 %1529, label %then347, label %else348
then347:
  ret i64 0
else348:
  br label %merge349
merge349:
  br label %merge346
else345:
  br label %merge346
merge346:
  %1530 = getelementptr [9 x i8], [9 x i8]* @.str132, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1530, i64 8)
  %1532 = load %nyx_string*, %nyx_string** %1473
  %1533 = call i8* @nyx_string_to_cstr(%nyx_string* %1531)
  %1534 = call i1 @nyx_write_file_safe(i8* %1533, %nyx_string* %1532)
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
  %1535 = getelementptr [17 x i8], [17 x i8]* @.str133, i32 0, i32 0
  %1536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1535, i64 16)
  %1537 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1538 = call %nyx_string* @nyx_string_concat(%nyx_string* %1536, %nyx_string* %1537)
  %1539 = call i8* @nyx_string_to_cstr(%nyx_string* %1538)
  call void @nyx_print_string(i8* %1539)
  %1540 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1541 = alloca %nyx_string*
  store %nyx_string* %1540, %nyx_string** %1541
  %1542 = load %nyx_string*, %nyx_string** %1541
  %1543 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %1544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1543, i64 0)
  %1545 = call i1 @nyx_string_equals(%nyx_string* %1542, %nyx_string* %1544)
  br i1 %1545, label %then350, label %else351
then350:
  %1546 = getelementptr [32 x i8], [32 x i8]* @.str135, i32 0, i32 0
  %1547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1546, i64 31)
  %1548 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1549 = call %nyx_string* @nyx_string_concat(%nyx_string* %1547, %nyx_string* %1548)
  store %nyx_string* %1549, %nyx_string** %1541
  br label %merge352
else351:
  br label %merge352
merge352:
  %1550 = getelementptr [9 x i8], [9 x i8]* @.str136, i32 0, i32 0
  %1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1550, i64 8)
  %1552 = call i8* @nyx_string_to_cstr(%nyx_string* %1551)
  %1553 = call i1 @nyx_file_exists(i8* %1552)
  br i1 %1553, label %then353, label %else354
then353:
  %1554 = getelementptr [9 x i8], [9 x i8]* @.str137, i32 0, i32 0
  %1555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1554, i64 8)
  %1556 = call i8* @nyx_string_to_cstr(%nyx_string* %1555)
  %1557 = call %nyx_string* @nyx_read_file(i8* %1556)
  %1558 = alloca %nyx_string*
  store %nyx_string* %1557, %nyx_string** %1558
  %1559 = load %nyx_string*, %nyx_string** %1558
  %1560 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1561 = getelementptr [3 x i8], [3 x i8]* @.str138, i32 0, i32 0
  %1562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1561, i64 2)
  %1563 = call %nyx_string* @nyx_string_concat(%nyx_string* %1560, %nyx_string* %1562)
  %1564 = call i1 @nyx_string_contains(%nyx_string* %1559, %nyx_string* %1563)
  br i1 %1564, label %then356, label %else357
then356:
  %1565 = getelementptr [12 x i8], [12 x i8]* @.str139, i32 0, i32 0
  %1566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1565, i64 11)
  %1567 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1568 = call %nyx_string* @nyx_string_concat(%nyx_string* %1566, %nyx_string* %1567)
  %1569 = getelementptr [27 x i8], [27 x i8]* @.str140, i32 0, i32 0
  %1570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1569, i64 26)
  %1571 = call %nyx_string* @nyx_string_concat(%nyx_string* %1568, %nyx_string* %1570)
  %1572 = call i8* @nyx_string_to_cstr(%nyx_string* %1571)
  call void @nyx_print_string(i8* %1572)
  ret i1 1
else357:
  br label %merge358
merge358:
  br label %merge355
else354:
  br label %merge355
merge355:
  %1573 = getelementptr [10 x i8], [10 x i8]* @.str141, i32 0, i32 0
  %1574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1573, i64 9)
  %1575 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1576 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1575)
  %1577 = alloca %nyx_string*
  store %nyx_string* %1576, %nyx_string** %1577
  %1578 = load %nyx_string*, %nyx_string** %1577
  %1579 = call i8* @nyx_string_to_cstr(%nyx_string* %1578)
  %1580 = call i1 @nyx_file_exists(i8* %1579)
  br i1 %1580, label %then359, label %else360
then359:
  %1581 = getelementptr [19 x i8], [19 x i8]* @.str142, i32 0, i32 0
  %1582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1581, i64 18)
  %1583 = load %nyx_string*, %nyx_string** %1577
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1582, %nyx_string* %1583)
  %1585 = call i8* @nyx_string_to_cstr(%nyx_string* %1584)
  call void @nyx_print_string(i8* %1585)
  br label %merge361
else360:
  %1586 = getelementptr [13 x i8], [13 x i8]* @.str143, i32 0, i32 0
  %1587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1586, i64 12)
  %1588 = load %nyx_string*, %nyx_string** %1541
  %1589 = call %nyx_string* @nyx_string_concat(%nyx_string* %1587, %nyx_string* %1588)
  %1590 = call i8* @nyx_string_to_cstr(%nyx_string* %1589)
  call void @nyx_print_string(i8* %1590)
  %1591 = getelementptr [43 x i8], [43 x i8]* @.str144, i32 0, i32 0
  %1592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1591, i64 42)
  %1593 = load %nyx_string*, %nyx_string** %1541
  %1594 = call %nyx_string* @nyx_string_concat(%nyx_string* %1592, %nyx_string* %1593)
  %1595 = getelementptr [2 x i8], [2 x i8]* @.str145, i32 0, i32 0
  %1596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1595, i64 1)
  %1597 = call %nyx_string* @nyx_string_concat(%nyx_string* %1594, %nyx_string* %1596)
  %1598 = load %nyx_string*, %nyx_string** %1577
  %1599 = call %nyx_string* @nyx_string_concat(%nyx_string* %1597, %nyx_string* %1598)
  %1600 = getelementptr [13 x i8], [13 x i8]* @.str146, i32 0, i32 0
  %1601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1600, i64 12)
  %1602 = call %nyx_string* @nyx_string_concat(%nyx_string* %1599, %nyx_string* %1601)
  %1603 = alloca %nyx_string*
  store %nyx_string* %1602, %nyx_string** %1603
  %1604 = load %nyx_string*, %nyx_string** %1603
  %1605 = call i8* @nyx_string_to_cstr(%nyx_string* %1604)
  %1606 = call i64 @nyx_exec_code(i8* %1605)
  %1607 = alloca i64
  store i64 %1606, i64* %1607
  %1608 = load i64, i64* %1607
  %1609 = icmp ne i64 %1608, 0
  br i1 %1609, label %then362, label %else363
then362:
  %1610 = getelementptr [26 x i8], [26 x i8]* @.str147, i32 0, i32 0
  %1611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1610, i64 25)
  %1612 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1613 = call %nyx_string* @nyx_string_concat(%nyx_string* %1611, %nyx_string* %1612)
  %1614 = getelementptr [7 x i8], [7 x i8]* @.str148, i32 0, i32 0
  %1615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1614, i64 6)
  %1616 = call %nyx_string* @nyx_string_concat(%nyx_string* %1613, %nyx_string* %1615)
  %1617 = load %nyx_string*, %nyx_string** %1541
  %1618 = call %nyx_string* @nyx_string_concat(%nyx_string* %1616, %nyx_string* %1617)
  %1619 = call i8* @nyx_string_to_cstr(%nyx_string* %1618)
  call void @nyx_print_string(i8* %1619)
  ret i1 0
else363:
  br label %merge364
merge364:
  br label %merge361
merge361:
  %1620 = getelementptr [9 x i8], [9 x i8]* @.str149, i32 0, i32 0
  %1621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1620, i64 8)
  %1622 = call i8* @nyx_string_to_cstr(%nyx_string* %1621)
  %1623 = call i1 @nyx_file_exists(i8* %1622)
  br i1 %1623, label %then365, label %else366
then365:
  %1624 = getelementptr [9 x i8], [9 x i8]* @.str150, i32 0, i32 0
  %1625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1624, i64 8)
  %1626 = call i8* @nyx_string_to_cstr(%nyx_string* %1625)
  %1627 = call %nyx_string* @nyx_read_file(i8* %1626)
  %1628 = alloca %nyx_string*
  store %nyx_string* %1627, %nyx_string** %1628
  %1629 = load %nyx_string*, %nyx_string** %1628
  %1630 = alloca %nyx_string*
  store %nyx_string* %1629, %nyx_string** %1630
  %1631 = load %nyx_string*, %nyx_string** %1628
  %1632 = getelementptr [15 x i8], [15 x i8]* @.str151, i32 0, i32 0
  %1633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1632, i64 14)
  %1634 = call i1 @nyx_string_contains(%nyx_string* %1631, %nyx_string* %1633)
  %1635 = xor i1 %1634, true
  br i1 %1635, label %then368, label %else369
then368:
  %1636 = load %nyx_string*, %nyx_string** %1628
  %1637 = getelementptr [17 x i8], [17 x i8]* @.str152, i32 0, i32 0
  %1638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1637, i64 16)
  %1639 = call %nyx_string* @nyx_string_concat(%nyx_string* %1636, %nyx_string* %1638)
  %1640 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1641 = call %nyx_string* @nyx_string_concat(%nyx_string* %1639, %nyx_string* %1640)
  %1642 = getelementptr [8 x i8], [8 x i8]* @.str153, i32 0, i32 0
  %1643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1642, i64 7)
  %1644 = call %nyx_string* @nyx_string_concat(%nyx_string* %1641, %nyx_string* %1643)
  store %nyx_string* %1644, %nyx_string** %1630
  br label %merge370
else369:
  %1645 = load %nyx_string*, %nyx_string** %1628
  %1646 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1647 = call %nyx_string* @nyx_string_concat(%nyx_string* %1645, %nyx_string* %1646)
  %1648 = getelementptr [8 x i8], [8 x i8]* @.str154, i32 0, i32 0
  %1649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1648, i64 7)
  %1650 = call %nyx_string* @nyx_string_concat(%nyx_string* %1647, %nyx_string* %1649)
  store %nyx_string* %1650, %nyx_string** %1630
  br label %merge370
merge370:
  %1651 = getelementptr [9 x i8], [9 x i8]* @.str155, i32 0, i32 0
  %1652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1651, i64 8)
  %1653 = load %nyx_string*, %nyx_string** %1630
  %1654 = call i8* @nyx_string_to_cstr(%nyx_string* %1652)
  %1655 = call i1 @nyx_write_file_safe(i8* %1654, %nyx_string* %1653)
  %1656 = getelementptr [19 x i8], [19 x i8]* @.str156, i32 0, i32 0
  %1657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1656, i64 18)
  %1658 = call i8* @nyx_string_to_cstr(%nyx_string* %1657)
  call void @nyx_print_string(i8* %1658)
  br label %merge367
else366:
  br label %merge367
merge367:
  %1659 = getelementptr [10 x i8], [10 x i8]* @.str157, i32 0, i32 0
  %1660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1659, i64 9)
  %1661 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1662 = call %nyx_string* @nyx_string_concat(%nyx_string* %1660, %nyx_string* %1661)
  %1663 = getelementptr [9 x i8], [9 x i8]* @.str158, i32 0, i32 0
  %1664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1663, i64 8)
  %1665 = call %nyx_string* @nyx_string_concat(%nyx_string* %1662, %nyx_string* %1664)
  %1666 = call i8* @nyx_string_to_cstr(%nyx_string* %1665)
  call void @nyx_print_string(i8* %1666)
  ret i1 1
}

define internal %nyx_string* @resolve_seed_home(
) {
  %1667 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1667, i64 8)
  %1669 = call i8* @nyx_string_to_cstr(%nyx_string* %1668)
  %1670 = call %nyx_string* @nyx_getenv(i8* %1669)
  %1671 = alloca %nyx_string*
  store %nyx_string* %1670, %nyx_string** %1671
  %1672 = load %nyx_string*, %nyx_string** %1671
  %1673 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %1674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1673, i64 0)
  %1675 = call i1 @nyx_string_equals(%nyx_string* %1672, %nyx_string* %1674)
  %1676 = xor i1 %1675, true
  br i1 %1676, label %then371, label %else372
then371:
  %1677 = load %nyx_string*, %nyx_string** %1671
  ret %nyx_string* %1677
else372:
  br label %merge373
merge373:
  %1678 = getelementptr [5 x i8], [5 x i8]* @.str161, i32 0, i32 0
  %1679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1678, i64 4)
  %1680 = call i8* @nyx_string_to_cstr(%nyx_string* %1679)
  %1681 = call %nyx_string* @nyx_getenv(i8* %1680)
  %1682 = alloca %nyx_string*
  store %nyx_string* %1681, %nyx_string** %1682
  %1683 = load %nyx_string*, %nyx_string** %1682
  %1684 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %1685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1684, i64 0)
  %1686 = call i1 @nyx_string_equals(%nyx_string* %1683, %nyx_string* %1685)
  %1687 = xor i1 %1686, true
  br i1 %1687, label %then374, label %else375
then374:
  %1688 = load %nyx_string*, %nyx_string** %1682
  %1689 = getelementptr [6 x i8], [6 x i8]* @.str163, i32 0, i32 0
  %1690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1689, i64 5)
  %1691 = call %nyx_string* @nyx_string_concat(%nyx_string* %1688, %nyx_string* %1690)
  %1692 = alloca %nyx_string*
  store %nyx_string* %1691, %nyx_string** %1692
  %1693 = load %nyx_string*, %nyx_string** %1692
  %1694 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1694, i64 10)
  %1696 = call %nyx_string* @nyx_string_concat(%nyx_string* %1693, %nyx_string* %1695)
  %1697 = call i8* @nyx_string_to_cstr(%nyx_string* %1696)
  %1698 = call i1 @nyx_file_exists(i8* %1697)
  br i1 %1698, label %then377, label %else378
then377:
  %1699 = load %nyx_string*, %nyx_string** %1692
  ret %nyx_string* %1699
else378:
  br label %merge379
merge379:
  br label %merge376
else375:
  br label %merge376
merge376:
  %1700 = getelementptr [14 x i8], [14 x i8]* @.str165, i32 0, i32 0
  %1701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1700, i64 13)
  %1702 = call i8* @nyx_string_to_cstr(%nyx_string* %1701)
  %1703 = call i1 @nyx_file_exists(i8* %1702)
  br i1 %1703, label %then380, label %else381
then380:
  %1704 = getelementptr [2 x i8], [2 x i8]* @.str166, i32 0, i32 0
  %1705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1704, i64 1)
  ret %nyx_string* %1705
else381:
  br label %merge382
merge382:
  %1706 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %1707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1706, i64 0)
  ret %nyx_string* %1707
}

define internal %nyx_string* @seed_stamp(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1708 = getelementptr [19 x i8], [19 x i8]* @.str168, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1708, i64 18)
  %1710 = call %nyx_string* @toolchain_version()
  %1711 = call %nyx_string* @nyx_string_concat(%nyx_string* %1709, %nyx_string* %1710)
  %1712 = getelementptr [12 x i8], [12 x i8]* @.str169, i32 0, i32 0
  %1713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1712, i64 11)
  %1714 = call %nyx_string* @nyx_string_concat(%nyx_string* %1711, %nyx_string* %1713)
  %1715 = load %nyx_string*, %nyx_string** %lang.ptr
  %1716 = call %nyx_string* @nyx_string_concat(%nyx_string* %1714, %nyx_string* %1715)
  %1717 = getelementptr [6 x i8], [6 x i8]* @.str170, i32 0, i32 0
  %1718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1717, i64 5)
  %1719 = call %nyx_string* @nyx_string_concat(%nyx_string* %1716, %nyx_string* %1718)
  ret %nyx_string* %1719
}

define internal %nyx_string* @project_lang(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1720 = load %nyx_string*, %nyx_string** %dir.ptr
  %1721 = getelementptr [11 x i8], [11 x i8]* @.str171, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1721, i64 10)
  %1723 = call %nyx_string* @nyx_string_concat(%nyx_string* %1720, %nyx_string* %1722)
  %1724 = alloca %nyx_string*
  store %nyx_string* %1723, %nyx_string** %1724
  %1725 = load %nyx_string*, %nyx_string** %1724
  %1726 = call i8* @nyx_string_to_cstr(%nyx_string* %1725)
  %1727 = call i1 @nyx_file_exists(i8* %1726)
  %1728 = icmp eq i1 %1727, 0
  br i1 %1728, label %then383, label %else384
then383:
  %1729 = getelementptr [3 x i8], [3 x i8]* @.str172, i32 0, i32 0
  %1730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1729, i64 2)
  ret %nyx_string* %1730
else384:
  br label %merge385
merge385:
  %1731 = load %nyx_string*, %nyx_string** %1724
  %1732 = call i8* @nyx_string_to_cstr(%nyx_string* %1731)
  %1733 = call %nyx_string* @nyx_read_file(i8* %1732)
  %1734 = alloca %nyx_string*
  store %nyx_string* %1733, %nyx_string** %1734
  %1735 = getelementptr [11 x i8], [11 x i8]* @.str173, i32 0, i32 0
  %1736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1735, i64 10)
  %1737 = alloca %nyx_string*
  store %nyx_string* %1736, %nyx_string** %1737
  %1738 = load %nyx_string*, %nyx_string** %1734
  %1739 = load %nyx_string*, %nyx_string** %1737
  %1740 = call i64 @nyx_string_index_of(%nyx_string* %1738, %nyx_string* %1739)
  %1741 = alloca i64
  store i64 %1740, i64* %1741
  %1742 = load i64, i64* %1741
  %1743 = icmp slt i64 %1742, 0
  br i1 %1743, label %then386, label %else387
then386:
  %1744 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1744, i64 2)
  ret %nyx_string* %1745
else387:
  br label %merge388
merge388:
  %1746 = load i64, i64* %1741
  %1747 = load %nyx_string*, %nyx_string** %1737
  %1748 = call i64 @nyx_string_byte_length(%nyx_string* %1747)
  %1749 = add i64 %1746, %1748
  %1750 = alloca i64
  store i64 %1749, i64* %1750
  %1751 = load i64, i64* %1750
  %1752 = add i64 %1751, 2
  %1753 = load %nyx_string*, %nyx_string** %1734
  %1754 = call i64 @nyx_string_byte_length(%nyx_string* %1753)
  %1755 = icmp sgt i64 %1752, %1754
  br i1 %1755, label %then389, label %else390
then389:
  %1756 = getelementptr [3 x i8], [3 x i8]* @.str175, i32 0, i32 0
  %1757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1756, i64 2)
  ret %nyx_string* %1757
else390:
  br label %merge391
merge391:
  %1758 = load %nyx_string*, %nyx_string** %1734
  %1759 = load i64, i64* %1750
  %1760 = load i64, i64* %1750
  %1761 = add i64 %1760, 2
  %1762 = call %nyx_string* @nyx_string_substring(%nyx_string* %1758, i64 %1759, i64 %1761)
  %1763 = alloca %nyx_string*
  store %nyx_string* %1762, %nyx_string** %1763
  %1764 = load %nyx_string*, %nyx_string** %1763
  %1765 = getelementptr [3 x i8], [3 x i8]* @.str176, i32 0, i32 0
  %1766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1765, i64 2)
  %1767 = call i1 @nyx_string_equals(%nyx_string* %1764, %nyx_string* %1766)
  br i1 %1767, label %then392, label %else393
then392:
  %1768 = getelementptr [3 x i8], [3 x i8]* @.str177, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1768, i64 2)
  ret %nyx_string* %1769
else393:
  br label %merge394
merge394:
  %1770 = getelementptr [3 x i8], [3 x i8]* @.str178, i32 0, i32 0
  %1771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1770, i64 2)
  ret %nyx_string* %1771
}

define internal %nyx_string* @seed_body(
%nyx_string* %content.param, %nyx_string* %lang.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1772 = load %nyx_string*, %nyx_string** %content.ptr
  %1773 = alloca %nyx_string*
  store %nyx_string* %1772, %nyx_string** %1773
  %1774 = load %nyx_string*, %nyx_string** %1773
  %1775 = call i64 @nyx_string_byte_length(%nyx_string* %1774)
  %1776 = alloca i64
  store i64 %1775, i64* %1776
  %1777 = alloca i1
  store i1 1, i1* %1777
  %1778 = load i64, i64* %1776
  %1779 = icmp sgt i64 %1778, 0
  br i1 %1779, label %then395, label %else396
then395:
  %1780 = load %nyx_string*, %nyx_string** %1773
  %1781 = load i64, i64* %1776
  %1782 = sub i64 %1781, 1
  %1783 = load i64, i64* %1776
  %1784 = call %nyx_string* @nyx_string_substring(%nyx_string* %1780, i64 %1782, i64 %1783)
  %1785 = getelementptr [2 x i8], [2 x i8]* @.str179, i32 0, i32 0
  %1786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1785, i64 1)
  %1787 = call i1 @nyx_string_equals(%nyx_string* %1784, %nyx_string* %1786)
  br i1 %1787, label %then398, label %else399
then398:
  store i1 0, i1* %1777
  br label %merge400
else399:
  br label %merge400
merge400:
  br label %merge397
else396:
  br label %merge397
merge397:
  %1788 = load i1, i1* %1777
  br i1 %1788, label %then401, label %else402
then401:
  %1789 = load %nyx_string*, %nyx_string** %1773
  %1790 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %1791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1790, i64 1)
  %1792 = call %nyx_string* @nyx_string_concat(%nyx_string* %1789, %nyx_string* %1791)
  store %nyx_string* %1792, %nyx_string** %1773
  br label %merge403
else402:
  br label %merge403
merge403:
  %1793 = load %nyx_string*, %nyx_string** %1773
  %1794 = getelementptr [2 x i8], [2 x i8]* @.str181, i32 0, i32 0
  %1795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1794, i64 1)
  %1796 = call %nyx_string* @nyx_string_concat(%nyx_string* %1793, %nyx_string* %1795)
  %1797 = load %nyx_string*, %nyx_string** %lang.ptr
  %1798 = call %nyx_string* @seed_stamp(%nyx_string* %1797)
  %1799 = call %nyx_string* @nyx_string_concat(%nyx_string* %1796, %nyx_string* %1798)
  ret %nyx_string* %1799
}

define internal i64 @seed_file(
%nyx_string* %dst.param, %nyx_string* %content.param, %nyx_string* %lang.param) {
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1800 = load %nyx_string*, %nyx_string** %dst.ptr
  %1801 = load %nyx_string*, %nyx_string** %content.ptr
  %1802 = load %nyx_string*, %nyx_string** %lang.ptr
  %1803 = call %nyx_string* @seed_body(%nyx_string* %1801, %nyx_string* %1802)
  %1804 = call i8* @nyx_string_to_cstr(%nyx_string* %1800)
  %1805 = call i1 @nyx_write_file_safe(i8* %1804, %nyx_string* %1803)
  ret i64 0
}

define internal i64 @seed_gitignore(
%nyx_string* %dir.param, %nyx_string* %project_name.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %project_name.ptr = alloca %nyx_string*
  store %nyx_string* %project_name.param, %nyx_string** %project_name.ptr
  %1806 = call %nyx_string* @resolve_seed_home()
  %1807 = alloca %nyx_string*
  store %nyx_string* %1806, %nyx_string** %1807
  %1808 = load %nyx_string*, %nyx_string** %1807
  %1809 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %1810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1809, i64 0)
  %1811 = call i1 @nyx_string_equals(%nyx_string* %1808, %nyx_string* %1810)
  br i1 %1811, label %then404, label %else405
then404:
  ret i64 0
else405:
  br label %merge406
merge406:
  %1812 = load %nyx_string*, %nyx_string** %1807
  %1813 = getelementptr [21 x i8], [21 x i8]* @.str183, i32 0, i32 0
  %1814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1813, i64 20)
  %1815 = call %nyx_string* @nyx_string_concat(%nyx_string* %1812, %nyx_string* %1814)
  %1816 = alloca %nyx_string*
  store %nyx_string* %1815, %nyx_string** %1816
  %1817 = load %nyx_string*, %nyx_string** %1816
  %1818 = call i8* @nyx_string_to_cstr(%nyx_string* %1817)
  %1819 = call i1 @nyx_file_exists(i8* %1818)
  %1820 = icmp eq i1 %1819, 0
  br i1 %1820, label %then407, label %else408
then407:
  ret i64 0
else408:
  br label %merge409
merge409:
  %1821 = load %nyx_string*, %nyx_string** %dir.ptr
  %1822 = getelementptr [12 x i8], [12 x i8]* @.str184, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1822, i64 11)
  %1824 = call %nyx_string* @nyx_string_concat(%nyx_string* %1821, %nyx_string* %1823)
  %1825 = call i8* @nyx_string_to_cstr(%nyx_string* %1824)
  %1826 = call i1 @nyx_file_exists(i8* %1825)
  br i1 %1826, label %then410, label %else411
then410:
  ret i64 0
else411:
  br label %merge412
merge412:
  %1827 = load %nyx_string*, %nyx_string** %1816
  %1828 = call i8* @nyx_string_to_cstr(%nyx_string* %1827)
  %1829 = call %nyx_string* @nyx_read_file(i8* %1828)
  %1830 = alloca %nyx_string*
  store %nyx_string* %1829, %nyx_string** %1830
  %1831 = load %nyx_string*, %nyx_string** %dir.ptr
  %1832 = getelementptr [12 x i8], [12 x i8]* @.str185, i32 0, i32 0
  %1833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1832, i64 11)
  %1834 = call %nyx_string* @nyx_string_concat(%nyx_string* %1831, %nyx_string* %1833)
  %1835 = load %nyx_string*, %nyx_string** %1830
  %1836 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %1837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1836, i64 10)
  %1838 = load %nyx_string*, %nyx_string** %project_name.ptr
  %1839 = call %nyx_string* @nyx_string_replace(%nyx_string* %1835, %nyx_string* %1837, %nyx_string* %1838)
  %1840 = call i8* @nyx_string_to_cstr(%nyx_string* %1834)
  %1841 = call i1 @nyx_write_file_safe(i8* %1840, %nyx_string* %1839)
  ret i64 0
}

define internal i1 @validate_agents(
%nyx_string* %agents.param) {
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %1842 = load %nyx_string*, %nyx_string** %agents.ptr
  %1843 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %1844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1843, i64 0)
  %1845 = call i1 @nyx_string_equals(%nyx_string* %1842, %nyx_string* %1844)
  br i1 %1845, label %then413, label %else414
then413:
  ret i1 1
else414:
  br label %merge415
merge415:
  %1846 = load %nyx_string*, %nyx_string** %agents.ptr
  %1847 = getelementptr [2 x i8], [2 x i8]* @.str188, i32 0, i32 0
  %1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1847, i64 1)
  %1849 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1846, %nyx_string* %1848)
  %1850 = alloca { i64, i8* }*
  store { i64, i8* }* %1849, { i64, i8* }** %1850
  %1851 = alloca i64
  store i64 0, i64* %1851
  %1852 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1852, i64 6)
  %1854 = alloca %nyx_string*
  store %nyx_string* %1853, %nyx_string** %1854
  %1855 = getelementptr [7 x i8], [7 x i8]* @.str190, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1855, i64 6)
  %1857 = alloca %nyx_string*
  store %nyx_string* %1856, %nyx_string** %1857
  %1858 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %1859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1858, i64 7)
  %1860 = alloca %nyx_string*
  store %nyx_string* %1859, %nyx_string** %1860
  %1861 = getelementptr [28 x i8], [28 x i8]* @.str192, i32 0, i32 0
  %1862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1861, i64 27)
  %1863 = alloca %nyx_string*
  store %nyx_string* %1862, %nyx_string** %1863
  %1864 = getelementptr [46 x i8], [46 x i8]* @.str193, i32 0, i32 0
  %1865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1864, i64 45)
  %1866 = alloca %nyx_string*
  store %nyx_string* %1865, %nyx_string** %1866
  %1867 = getelementptr [72 x i8], [72 x i8]* @.str194, i32 0, i32 0
  %1868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1867, i64 71)
  %1869 = alloca %nyx_string*
  store %nyx_string* %1868, %nyx_string** %1869
  %1870 = call i8* @llvm.stacksave()
  br label %while_cond416
while_cond416:
  %1871 = load i64, i64* %1851
  %1872 = load { i64, i8* }*, { i64, i8* }** %1850
  %1873 = call i64 @nyx_array_length({ i64, i8* }* %1872)
  %1874 = icmp slt i64 %1871, %1873
  br i1 %1874, label %while_body417, label %while_end418
while_body417:
  call void @llvm.stackrestore(i8* %1870)
  %1875 = load { i64, i8* }*, { i64, i8* }** %1850
  %1876 = load i64, i64* %1851
  %1877 = call i64 @nyx_array_get_checked({ i64, i8* }* %1875, i64 %1876, i64 2)
  %1878 = inttoptr i64 %1877 to %nyx_string*
  %1879 = alloca %nyx_string*
  store %nyx_string* %1878, %nyx_string** %1879
  %1880 = load %nyx_string*, %nyx_string** %1879
  %1881 = call %nyx_string* @nyx_string_trim(%nyx_string* %1880)
  %1882 = alloca %nyx_string*
  store %nyx_string* %1881, %nyx_string** %1882
  %1883 = alloca i1
  store i1 false, i1* %1883
  %1884 = alloca i1
  store i1 false, i1* %1884
  %1885 = load %nyx_string*, %nyx_string** %1882
  %1886 = load %nyx_string*, %nyx_string** %1854
  %1887 = call i1 @nyx_string_equals(%nyx_string* %1885, %nyx_string* %1886)
  %1888 = xor i1 %1887, true
  br i1 %1888, label %sc_and_rhs419, label %sc_and_end420
sc_and_rhs419:
  %1889 = load %nyx_string*, %nyx_string** %1882
  %1890 = load %nyx_string*, %nyx_string** %1857
  %1891 = call i1 @nyx_string_equals(%nyx_string* %1889, %nyx_string* %1890)
  %1892 = xor i1 %1891, true
  store i1 %1892, i1* %1884
  br label %sc_and_end420
sc_and_end420:
  %1893 = load i1, i1* %1884
  br i1 %1893, label %sc_and_rhs421, label %sc_and_end422
sc_and_rhs421:
  %1894 = load %nyx_string*, %nyx_string** %1882
  %1895 = load %nyx_string*, %nyx_string** %1860
  %1896 = call i1 @nyx_string_equals(%nyx_string* %1894, %nyx_string* %1895)
  %1897 = xor i1 %1896, true
  store i1 %1897, i1* %1883
  br label %sc_and_end422
sc_and_end422:
  %1898 = load i1, i1* %1883
  br i1 %1898, label %then423, label %else424
then423:
  %1899 = load %nyx_string*, %nyx_string** %1863
  %1900 = load %nyx_string*, %nyx_string** %1882
  %1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1900)
  %1902 = load %nyx_string*, %nyx_string** %1866
  %1903 = call %nyx_string* @nyx_string_concat(%nyx_string* %1901, %nyx_string* %1902)
  %1904 = call i8* @nyx_string_to_cstr(%nyx_string* %1903)
  call void @nyx_print_string(i8* %1904)
  %1905 = load %nyx_string*, %nyx_string** %1869
  %1906 = call i8* @nyx_string_to_cstr(%nyx_string* %1905)
  call void @nyx_print_string(i8* %1906)
  ret i1 0
else424:
  br label %merge425
merge425:
  %1907 = load i64, i64* %1851
  %1908 = add i64 %1907, 1
  store i64 %1908, i64* %1851
  br label %while_cond416
while_end418:
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
  %1909 = load %nyx_string*, %nyx_string** %agents.ptr
  %1910 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %1911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1910, i64 0)
  %1912 = call i1 @nyx_string_equals(%nyx_string* %1909, %nyx_string* %1911)
  br i1 %1912, label %then426, label %else427
then426:
  ret i64 0
else427:
  br label %merge428
merge428:
  %1913 = call %nyx_string* @resolve_seed_home()
  %1914 = alloca %nyx_string*
  store %nyx_string* %1913, %nyx_string** %1914
  %1915 = load %nyx_string*, %nyx_string** %1914
  %1916 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %1917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1916, i64 0)
  %1918 = call i1 @nyx_string_equals(%nyx_string* %1915, %nyx_string* %1917)
  br i1 %1918, label %then429, label %else430
then429:
  ret i64 0
else430:
  br label %merge431
merge431:
  %1919 = load %nyx_string*, %nyx_string** %1914
  %1920 = getelementptr [20 x i8], [20 x i8]* @.str197, i32 0, i32 0
  %1921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1920, i64 19)
  %1922 = call %nyx_string* @nyx_string_concat(%nyx_string* %1919, %nyx_string* %1921)
  %1923 = alloca %nyx_string*
  store %nyx_string* %1922, %nyx_string** %1923
  %1924 = load %nyx_string*, %nyx_string** %agents.ptr
  %1925 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %1926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1925, i64 1)
  %1927 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1924, %nyx_string* %1926)
  %1928 = alloca { i64, i8* }*
  store { i64, i8* }* %1927, { i64, i8* }** %1928
  %1929 = alloca i64
  store i64 0, i64* %1929
  %1930 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %1931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1930, i64 0)
  %1932 = alloca %nyx_string*
  store %nyx_string* %1931, %nyx_string** %1932
  %1933 = getelementptr [2 x i8], [2 x i8]* @.str200, i32 0, i32 0
  %1934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1933, i64 1)
  %1935 = alloca %nyx_string*
  store %nyx_string* %1934, %nyx_string** %1935
  %1936 = getelementptr [2 x i8], [2 x i8]* @.str201, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1936, i64 1)
  %1938 = alloca %nyx_string*
  store %nyx_string* %1937, %nyx_string** %1938
  %1939 = getelementptr [4 x i8], [4 x i8]* @.str202, i32 0, i32 0
  %1940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1939, i64 3)
  %1941 = alloca %nyx_string*
  store %nyx_string* %1940, %nyx_string** %1941
  %1942 = getelementptr [7 x i8], [7 x i8]* @.str203, i32 0, i32 0
  %1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1942, i64 6)
  %1944 = alloca %nyx_string*
  store %nyx_string* %1943, %nyx_string** %1944
  %1945 = getelementptr [11 x i8], [11 x i8]* @.str204, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1945, i64 10)
  %1947 = alloca %nyx_string*
  store %nyx_string* %1946, %nyx_string** %1947
  %1948 = getelementptr [7 x i8], [7 x i8]* @.str205, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1948, i64 6)
  %1950 = alloca %nyx_string*
  store %nyx_string* %1949, %nyx_string** %1950
  %1951 = getelementptr [14 x i8], [14 x i8]* @.str206, i32 0, i32 0
  %1952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1951, i64 13)
  %1953 = alloca %nyx_string*
  store %nyx_string* %1952, %nyx_string** %1953
  %1954 = getelementptr [8 x i8], [8 x i8]* @.str207, i32 0, i32 0
  %1955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1954, i64 7)
  %1956 = alloca %nyx_string*
  store %nyx_string* %1955, %nyx_string** %1956
  %1957 = getelementptr [11 x i8], [11 x i8]* @.str208, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %1957, i64 10)
  %1959 = alloca %nyx_string*
  store %nyx_string* %1958, %nyx_string** %1959
  %1960 = getelementptr [10 x i8], [10 x i8]* @.str209, i32 0, i32 0
  %1961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %1960, i64 9)
  %1962 = alloca %nyx_string*
  store %nyx_string* %1961, %nyx_string** %1962
  %1963 = getelementptr [33 x i8], [33 x i8]* @.str210, i32 0, i32 0
  %1964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %1963, i64 32)
  %1965 = alloca %nyx_string*
  store %nyx_string* %1964, %nyx_string** %1965
  %1966 = getelementptr [44 x i8], [44 x i8]* @.str211, i32 0, i32 0
  %1967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %1966, i64 43)
  %1968 = alloca %nyx_string*
  store %nyx_string* %1967, %nyx_string** %1968
  %1969 = getelementptr [4 x i8], [4 x i8]* @.str212, i32 0, i32 0
  %1970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %1969, i64 3)
  %1971 = alloca %nyx_string*
  store %nyx_string* %1970, %nyx_string** %1971
  %1972 = getelementptr [20 x i8], [20 x i8]* @.str213, i32 0, i32 0
  %1973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %1972, i64 19)
  %1974 = alloca %nyx_string*
  store %nyx_string* %1973, %nyx_string** %1974
  %1975 = call i8* @llvm.stacksave()
  br label %while_cond432
while_cond432:
  %1976 = load i64, i64* %1929
  %1977 = load { i64, i8* }*, { i64, i8* }** %1928
  %1978 = call i64 @nyx_array_length({ i64, i8* }* %1977)
  %1979 = icmp slt i64 %1976, %1978
  br i1 %1979, label %while_body433, label %while_end434
while_body433:
  call void @llvm.stackrestore(i8* %1975)
  %1980 = load { i64, i8* }*, { i64, i8* }** %1928
  %1981 = load i64, i64* %1929
  %1982 = call i64 @nyx_array_get_checked({ i64, i8* }* %1980, i64 %1981, i64 2)
  %1983 = inttoptr i64 %1982 to %nyx_string*
  %1984 = alloca %nyx_string*
  store %nyx_string* %1983, %nyx_string** %1984
  %1985 = load %nyx_string*, %nyx_string** %1984
  %1986 = call %nyx_string* @nyx_string_trim(%nyx_string* %1985)
  %1987 = alloca %nyx_string*
  store %nyx_string* %1986, %nyx_string** %1987
  %1988 = load %nyx_string*, %nyx_string** %1987
  %1989 = load %nyx_string*, %nyx_string** %1932
  %1990 = call i1 @nyx_string_equals(%nyx_string* %1988, %nyx_string* %1989)
  %1991 = xor i1 %1990, true
  br i1 %1991, label %then435, label %else436
then435:
  %1992 = load %nyx_string*, %nyx_string** %1923
  %1993 = load %nyx_string*, %nyx_string** %1935
  %1994 = call %nyx_string* @nyx_string_concat(%nyx_string* %1992, %nyx_string* %1993)
  %1995 = load %nyx_string*, %nyx_string** %1987
  %1996 = call %nyx_string* @nyx_string_concat(%nyx_string* %1994, %nyx_string* %1995)
  %1997 = load %nyx_string*, %nyx_string** %1938
  %1998 = call %nyx_string* @nyx_string_concat(%nyx_string* %1996, %nyx_string* %1997)
  %1999 = load %nyx_string*, %nyx_string** %lang.ptr
  %2000 = call %nyx_string* @nyx_string_concat(%nyx_string* %1998, %nyx_string* %1999)
  %2001 = load %nyx_string*, %nyx_string** %1941
  %2002 = call %nyx_string* @nyx_string_concat(%nyx_string* %2000, %nyx_string* %2001)
  %2003 = alloca %nyx_string*
  store %nyx_string* %2002, %nyx_string** %2003
  %2004 = load %nyx_string*, %nyx_string** %2003
  %2005 = call i8* @nyx_string_to_cstr(%nyx_string* %2004)
  %2006 = call i1 @nyx_file_exists(i8* %2005)
  br i1 %2006, label %then438, label %else439
then438:
  %2007 = load %nyx_string*, %nyx_string** %2003
  %2008 = call i8* @nyx_string_to_cstr(%nyx_string* %2007)
  %2009 = call %nyx_string* @nyx_read_file(i8* %2008)
  %2010 = alloca %nyx_string*
  store %nyx_string* %2009, %nyx_string** %2010
  %2011 = load %nyx_string*, %nyx_string** %1987
  %2012 = load %nyx_string*, %nyx_string** %1944
  %2013 = call i1 @nyx_string_equals(%nyx_string* %2011, %nyx_string* %2012)
  br i1 %2013, label %then441, label %else442
then441:
  %2014 = load %nyx_string*, %nyx_string** %dir.ptr
  %2015 = load %nyx_string*, %nyx_string** %1947
  %2016 = call %nyx_string* @nyx_string_concat(%nyx_string* %2014, %nyx_string* %2015)
  %2017 = load %nyx_string*, %nyx_string** %2010
  %2018 = load %nyx_string*, %nyx_string** %lang.ptr
  %2019 = call i64 @seed_file(%nyx_string* %2016, %nyx_string* %2017, %nyx_string* %2018)
  br label %merge443
else442:
  br label %merge443
merge443:
  %2020 = load %nyx_string*, %nyx_string** %1987
  %2021 = load %nyx_string*, %nyx_string** %1950
  %2022 = call i1 @nyx_string_equals(%nyx_string* %2020, %nyx_string* %2021)
  br i1 %2022, label %then444, label %else445
then444:
  %2023 = load %nyx_string*, %nyx_string** %dir.ptr
  %2024 = load %nyx_string*, %nyx_string** %1953
  %2025 = call %nyx_string* @nyx_string_concat(%nyx_string* %2023, %nyx_string* %2024)
  %2026 = load %nyx_string*, %nyx_string** %2010
  %2027 = load %nyx_string*, %nyx_string** %lang.ptr
  %2028 = call i64 @seed_file(%nyx_string* %2025, %nyx_string* %2026, %nyx_string* %2027)
  br label %merge446
else445:
  br label %merge446
merge446:
  %2029 = load %nyx_string*, %nyx_string** %1987
  %2030 = load %nyx_string*, %nyx_string** %1956
  %2031 = call i1 @nyx_string_equals(%nyx_string* %2029, %nyx_string* %2030)
  br i1 %2031, label %then447, label %else448
then447:
  %2032 = load %nyx_string*, %nyx_string** %1959
  %2033 = load %nyx_string*, %nyx_string** %dir.ptr
  %2034 = call %nyx_string* @nyx_string_concat(%nyx_string* %2032, %nyx_string* %2033)
  %2035 = load %nyx_string*, %nyx_string** %1962
  %2036 = call %nyx_string* @nyx_string_concat(%nyx_string* %2034, %nyx_string* %2035)
  %2037 = call i8* @nyx_string_to_cstr(%nyx_string* %2036)
  %2038 = call %nyx_string* @nyx_exec(i8* %2037)
  %2039 = load %nyx_string*, %nyx_string** %dir.ptr
  %2040 = load %nyx_string*, %nyx_string** %1965
  %2041 = call %nyx_string* @nyx_string_concat(%nyx_string* %2039, %nyx_string* %2040)
  %2042 = load %nyx_string*, %nyx_string** %2010
  %2043 = load %nyx_string*, %nyx_string** %lang.ptr
  %2044 = call i64 @seed_file(%nyx_string* %2041, %nyx_string* %2042, %nyx_string* %2043)
  br label %merge449
else448:
  br label %merge449
merge449:
  br label %merge440
else439:
  %2045 = load %nyx_string*, %nyx_string** %1968
  %2046 = load %nyx_string*, %nyx_string** %1987
  %2047 = call %nyx_string* @nyx_string_concat(%nyx_string* %2045, %nyx_string* %2046)
  %2048 = load %nyx_string*, %nyx_string** %1971
  %2049 = call %nyx_string* @nyx_string_concat(%nyx_string* %2047, %nyx_string* %2048)
  %2050 = load %nyx_string*, %nyx_string** %2003
  %2051 = call %nyx_string* @nyx_string_concat(%nyx_string* %2049, %nyx_string* %2050)
  %2052 = load %nyx_string*, %nyx_string** %1974
  %2053 = call %nyx_string* @nyx_string_concat(%nyx_string* %2051, %nyx_string* %2052)
  %2054 = call i8* @nyx_string_to_cstr(%nyx_string* %2053)
  call void @nyx_print_string(i8* %2054)
  br label %merge440
merge440:
  br label %merge437
else436:
  br label %merge437
merge437:
  %2055 = load i64, i64* %1929
  %2056 = add i64 %2055, 1
  store i64 %2056, i64* %1929
  br label %while_cond432
while_end434:
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
  %2057 = call %nyx_string* @resolve_seed_home()
  %2058 = alloca %nyx_string*
  store %nyx_string* %2057, %nyx_string** %2058
  %2059 = load %nyx_string*, %nyx_string** %2058
  %2060 = getelementptr [11 x i8], [11 x i8]* @.str214, i32 0, i32 0
  %2061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2060, i64 10)
  %2062 = call %nyx_string* @nyx_string_concat(%nyx_string* %2059, %nyx_string* %2061)
  %2063 = alloca %nyx_string*
  store %nyx_string* %2062, %nyx_string** %2063
  %2064 = load %nyx_string*, %nyx_string** %2063
  %2065 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2065, i64 1)
  %2067 = call %nyx_string* @nyx_string_concat(%nyx_string* %2064, %nyx_string* %2066)
  %2068 = load %nyx_string*, %nyx_string** %lang.ptr
  %2069 = call %nyx_string* @nyx_string_concat(%nyx_string* %2067, %nyx_string* %2068)
  %2070 = alloca %nyx_string*
  store %nyx_string* %2069, %nyx_string** %2070
  %2071 = alloca i1
  store i1 0, i1* %2071
  %2072 = load %nyx_string*, %nyx_string** %2058
  %2073 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %2074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2073, i64 0)
  %2075 = call i1 @nyx_string_equals(%nyx_string* %2072, %nyx_string* %2074)
  %2076 = xor i1 %2075, true
  br i1 %2076, label %then450, label %else451
then450:
  %2077 = load %nyx_string*, %nyx_string** %2070
  %2078 = getelementptr [11 x i8], [11 x i8]* @.str217, i32 0, i32 0
  %2079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2078, i64 10)
  %2080 = call %nyx_string* @nyx_string_concat(%nyx_string* %2077, %nyx_string* %2079)
  %2081 = call i8* @nyx_string_to_cstr(%nyx_string* %2080)
  %2082 = call i1 @nyx_file_exists(i8* %2081)
  br i1 %2082, label %then453, label %else454
then453:
  store i1 1, i1* %2071
  br label %merge455
else454:
  br label %merge455
merge455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2083 = load i1, i1* %2071
  %2084 = icmp eq i1 %2083, 0
  br i1 %2084, label %then456, label %else457
then456:
  %2085 = getelementptr [74 x i8], [74 x i8]* @.str218, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2085, i64 73)
  %2087 = load %nyx_string*, %nyx_string** %lang.ptr
  %2088 = call %nyx_string* @nyx_string_concat(%nyx_string* %2086, %nyx_string* %2087)
  %2089 = getelementptr [84 x i8], [84 x i8]* @.str219, i32 0, i32 0
  %2090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2089, i64 83)
  %2091 = call %nyx_string* @nyx_string_concat(%nyx_string* %2088, %nyx_string* %2090)
  %2092 = call i8* @nyx_string_to_cstr(%nyx_string* %2091)
  call void @nyx_print_string(i8* %2092)
  %2093 = getelementptr [82 x i8], [82 x i8]* @.str220, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2093, i64 81)
  %2095 = call i8* @nyx_string_to_cstr(%nyx_string* %2094)
  call void @nyx_print_string(i8* %2095)
  ret i64 0
else457:
  br label %merge458
merge458:
  %2096 = load %nyx_string*, %nyx_string** %2070
  %2097 = getelementptr [11 x i8], [11 x i8]* @.str221, i32 0, i32 0
  %2098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2097, i64 10)
  %2099 = call %nyx_string* @nyx_string_concat(%nyx_string* %2096, %nyx_string* %2098)
  %2100 = call i8* @nyx_string_to_cstr(%nyx_string* %2099)
  %2101 = call %nyx_string* @nyx_read_file(i8* %2100)
  %2102 = alloca %nyx_string*
  store %nyx_string* %2101, %nyx_string** %2102
  %2103 = load %nyx_string*, %nyx_string** %dir.ptr
  %2104 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %2105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2104, i64 10)
  %2106 = call %nyx_string* @nyx_string_concat(%nyx_string* %2103, %nyx_string* %2105)
  %2107 = load %nyx_string*, %nyx_string** %2102
  %2108 = load %nyx_string*, %nyx_string** %lang.ptr
  %2109 = call i64 @seed_file(%nyx_string* %2106, %nyx_string* %2107, %nyx_string* %2108)
  %2110 = load %nyx_string*, %nyx_string** %dir.ptr
  %2111 = getelementptr [17 x i8], [17 x i8]* @.str223, i32 0, i32 0
  %2112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2111, i64 16)
  %2113 = call %nyx_string* @nyx_string_concat(%nyx_string* %2110, %nyx_string* %2112)
  %2114 = call i1 @run_capabilities(%nyx_string* %2113)
  %2115 = alloca i1
  store i1 %2114, i1* %2115
  %2116 = getelementptr [11 x i8], [11 x i8]* @.str224, i32 0, i32 0
  %2117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2116, i64 10)
  %2118 = load %nyx_string*, %nyx_string** %dir.ptr
  %2119 = call %nyx_string* @nyx_string_concat(%nyx_string* %2117, %nyx_string* %2118)
  %2120 = getelementptr [18 x i8], [18 x i8]* @.str225, i32 0, i32 0
  %2121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2120, i64 17)
  %2122 = call %nyx_string* @nyx_string_concat(%nyx_string* %2119, %nyx_string* %2121)
  %2123 = call i8* @nyx_string_to_cstr(%nyx_string* %2122)
  %2124 = call %nyx_string* @nyx_exec(i8* %2123)
  %2125 = load %nyx_string*, %nyx_string** %2063
  %2126 = getelementptr [20 x i8], [20 x i8]* @.str226, i32 0, i32 0
  %2127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2126, i64 19)
  %2128 = call %nyx_string* @nyx_string_concat(%nyx_string* %2125, %nyx_string* %2127)
  %2129 = alloca %nyx_string*
  store %nyx_string* %2128, %nyx_string** %2129
  %2130 = load %nyx_string*, %nyx_string** %2129
  %2131 = call i8* @nyx_string_to_cstr(%nyx_string* %2130)
  %2132 = call i1 @nyx_file_exists(i8* %2131)
  br i1 %2132, label %then459, label %else460
then459:
  %2133 = load %nyx_string*, %nyx_string** %2129
  %2134 = call i8* @nyx_string_to_cstr(%nyx_string* %2133)
  %2135 = call %nyx_string* @nyx_read_file(i8* %2134)
  %2136 = alloca %nyx_string*
  store %nyx_string* %2135, %nyx_string** %2136
  %2137 = load %nyx_string*, %nyx_string** %dir.ptr
  %2138 = getelementptr [17 x i8], [17 x i8]* @.str227, i32 0, i32 0
  %2139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2138, i64 16)
  %2140 = call %nyx_string* @nyx_string_concat(%nyx_string* %2137, %nyx_string* %2139)
  %2141 = load %nyx_string*, %nyx_string** %2136
  %2142 = load %nyx_string*, %nyx_string** %lang.ptr
  %2143 = call i64 @seed_file(%nyx_string* %2140, %nyx_string* %2141, %nyx_string* %2142)
  br label %merge461
else460:
  %2144 = getelementptr [14 x i8], [14 x i8]* @.str228, i32 0, i32 0
  %2145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2144, i64 13)
  %2146 = load %nyx_string*, %nyx_string** %2129
  %2147 = call %nyx_string* @nyx_string_concat(%nyx_string* %2145, %nyx_string* %2146)
  %2148 = getelementptr [71 x i8], [71 x i8]* @.str229, i32 0, i32 0
  %2149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2148, i64 70)
  %2150 = call %nyx_string* @nyx_string_concat(%nyx_string* %2147, %nyx_string* %2149)
  %2151 = call i8* @nyx_string_to_cstr(%nyx_string* %2150)
  call void @nyx_print_string(i8* %2151)
  %2152 = getelementptr [111 x i8], [111 x i8]* @.str230, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2152, i64 110)
  %2154 = call i8* @nyx_string_to_cstr(%nyx_string* %2153)
  call void @nyx_print_string(i8* %2154)
  br label %merge461
merge461:
  %2155 = load %nyx_string*, %nyx_string** %2070
  %2156 = getelementptr [17 x i8], [17 x i8]* @.str231, i32 0, i32 0
  %2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2156, i64 16)
  %2158 = call %nyx_string* @nyx_string_concat(%nyx_string* %2155, %nyx_string* %2157)
  %2159 = alloca %nyx_string*
  store %nyx_string* %2158, %nyx_string** %2159
  %2160 = load %nyx_string*, %nyx_string** %2159
  %2161 = call i8* @nyx_string_to_cstr(%nyx_string* %2160)
  %2162 = call i1 @nyx_file_exists(i8* %2161)
  br i1 %2162, label %then462, label %else463
then462:
  %2163 = load %nyx_string*, %nyx_string** %2159
  %2164 = call i8* @nyx_string_to_cstr(%nyx_string* %2163)
  %2165 = call { i64, i8* }* @nyx_readdir(i8* %2164)
  %2166 = alloca { i64, i8* }*
  store { i64, i8* }* %2165, { i64, i8* }** %2166
  %2167 = alloca i64
  store i64 0, i64* %2167
  %2168 = getelementptr [2 x i8], [2 x i8]* @.str232, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2168, i64 1)
  %2170 = alloca %nyx_string*
  store %nyx_string* %2169, %nyx_string** %2170
  %2171 = getelementptr [18 x i8], [18 x i8]* @.str233, i32 0, i32 0
  %2172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2171, i64 17)
  %2173 = alloca %nyx_string*
  store %nyx_string* %2172, %nyx_string** %2173
  %2174 = call i8* @llvm.stacksave()
  br label %while_cond465
while_cond465:
  %2175 = load i64, i64* %2167
  %2176 = load { i64, i8* }*, { i64, i8* }** %2166
  %2177 = call i64 @nyx_array_length({ i64, i8* }* %2176)
  %2178 = icmp slt i64 %2175, %2177
  br i1 %2178, label %while_body466, label %while_end467
while_body466:
  call void @llvm.stackrestore(i8* %2174)
  %2179 = load { i64, i8* }*, { i64, i8* }** %2166
  %2180 = load i64, i64* %2167
  %2181 = call i64 @nyx_array_get_checked({ i64, i8* }* %2179, i64 %2180, i64 2)
  %2182 = inttoptr i64 %2181 to %nyx_string*
  %2183 = alloca %nyx_string*
  store %nyx_string* %2182, %nyx_string** %2183
  %2184 = load %nyx_string*, %nyx_string** %2159
  %2185 = load %nyx_string*, %nyx_string** %2170
  %2186 = call %nyx_string* @nyx_string_concat(%nyx_string* %2184, %nyx_string* %2185)
  %2187 = load %nyx_string*, %nyx_string** %2183
  %2188 = call %nyx_string* @nyx_string_concat(%nyx_string* %2186, %nyx_string* %2187)
  %2189 = alloca %nyx_string*
  store %nyx_string* %2188, %nyx_string** %2189
  %2190 = load %nyx_string*, %nyx_string** %2189
  %2191 = call i8* @nyx_string_to_cstr(%nyx_string* %2190)
  %2192 = call i1 @nyx_file_exists(i8* %2191)
  br i1 %2192, label %then468, label %else469
then468:
  %2193 = load %nyx_string*, %nyx_string** %2189
  %2194 = call i8* @nyx_string_to_cstr(%nyx_string* %2193)
  %2195 = call %nyx_string* @nyx_read_file(i8* %2194)
  %2196 = alloca %nyx_string*
  store %nyx_string* %2195, %nyx_string** %2196
  %2197 = load %nyx_string*, %nyx_string** %dir.ptr
  %2198 = load %nyx_string*, %nyx_string** %2173
  %2199 = call %nyx_string* @nyx_string_concat(%nyx_string* %2197, %nyx_string* %2198)
  %2200 = load %nyx_string*, %nyx_string** %2183
  %2201 = call %nyx_string* @nyx_string_concat(%nyx_string* %2199, %nyx_string* %2200)
  %2202 = load %nyx_string*, %nyx_string** %2196
  %2203 = load %nyx_string*, %nyx_string** %lang.ptr
  %2204 = call i64 @seed_file(%nyx_string* %2201, %nyx_string* %2202, %nyx_string* %2203)
  br label %merge470
else469:
  br label %merge470
merge470:
  %2205 = load i64, i64* %2167
  %2206 = add i64 %2205, 1
  store i64 %2206, i64* %2167
  br label %while_cond465
while_end467:
  br label %merge464
else463:
  br label %merge464
merge464:
  %2207 = load %nyx_string*, %nyx_string** %dir.ptr
  %2208 = load %nyx_string*, %nyx_string** %lang.ptr
  %2209 = load %nyx_string*, %nyx_string** %agents.ptr
  %2210 = call i64 @seed_adapters(%nyx_string* %2207, %nyx_string* %2208, %nyx_string* %2209)
  ret i64 0
}

define internal %nyx_string* @sdd_generated_marker(
) {
  %2211 = getelementptr [28 x i8], [28 x i8]* @.str234, i32 0, i32 0
  %2212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2211, i64 27)
  ret %nyx_string* %2212
}

define internal %nyx_string* @sdd_msg(
%nyx_string* %lang.param, %nyx_string* %en.param, %nyx_string* %es.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %2213 = load %nyx_string*, %nyx_string** %lang.ptr
  %2214 = getelementptr [3 x i8], [3 x i8]* @.str235, i32 0, i32 0
  %2215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2214, i64 2)
  %2216 = call i1 @nyx_string_equals(%nyx_string* %2213, %nyx_string* %2215)
  br i1 %2216, label %then471, label %else472
then471:
  %2217 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %2217
else472:
  br label %merge473
merge473:
  %2218 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %2218
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
  %2219 = load %nyx_string*, %nyx_string** %dst.ptr
  %2220 = call i8* @nyx_string_to_cstr(%nyx_string* %2219)
  %2221 = call i1 @nyx_file_exists(i8* %2220)
  br i1 %2221, label %then474, label %else475
then474:
  %2222 = load %nyx_string*, %nyx_string** %lang.ptr
  %2223 = getelementptr [28 x i8], [28 x i8]* @.str236, i32 0, i32 0
  %2224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2223, i64 27)
  %2225 = load %nyx_string*, %nyx_string** %dst.ptr
  %2226 = call %nyx_string* @nyx_string_concat(%nyx_string* %2224, %nyx_string* %2225)
  %2227 = getelementptr [25 x i8], [25 x i8]* @.str237, i32 0, i32 0
  %2228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2227, i64 24)
  %2229 = load %nyx_string*, %nyx_string** %dst.ptr
  %2230 = call %nyx_string* @nyx_string_concat(%nyx_string* %2228, %nyx_string* %2229)
  %2231 = call %nyx_string* @sdd_msg(%nyx_string* %2222, %nyx_string* %2226, %nyx_string* %2230)
  %2232 = call i8* @nyx_string_to_cstr(%nyx_string* %2231)
  call void @nyx_print_string(i8* %2232)
  ret i1 0
else475:
  br label %merge476
merge476:
  %2233 = load %nyx_string*, %nyx_string** %tpl_dir.ptr
  %2234 = getelementptr [2 x i8], [2 x i8]* @.str238, i32 0, i32 0
  %2235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2234, i64 1)
  %2236 = call %nyx_string* @nyx_string_concat(%nyx_string* %2233, %nyx_string* %2235)
  %2237 = load %nyx_string*, %nyx_string** %name.ptr
  %2238 = call %nyx_string* @nyx_string_concat(%nyx_string* %2236, %nyx_string* %2237)
  %2239 = alloca %nyx_string*
  store %nyx_string* %2238, %nyx_string** %2239
  %2240 = load %nyx_string*, %nyx_string** %2239
  %2241 = call i8* @nyx_string_to_cstr(%nyx_string* %2240)
  %2242 = call i1 @nyx_file_exists(i8* %2241)
  %2243 = icmp eq i1 %2242, 0
  br i1 %2243, label %then477, label %else478
then477:
  %2244 = getelementptr [27 x i8], [27 x i8]* @.str239, i32 0, i32 0
  %2245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2244, i64 26)
  %2246 = load %nyx_string*, %nyx_string** %2239
  %2247 = call %nyx_string* @nyx_string_concat(%nyx_string* %2245, %nyx_string* %2246)
  %2248 = getelementptr [19 x i8], [19 x i8]* @.str240, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2248, i64 18)
  %2250 = call %nyx_string* @nyx_string_concat(%nyx_string* %2247, %nyx_string* %2249)
  %2251 = load %nyx_string*, %nyx_string** %dst.ptr
  %2252 = call %nyx_string* @nyx_string_concat(%nyx_string* %2250, %nyx_string* %2251)
  %2253 = getelementptr [16 x i8], [16 x i8]* @.str241, i32 0, i32 0
  %2254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2253, i64 15)
  %2255 = call %nyx_string* @nyx_string_concat(%nyx_string* %2252, %nyx_string* %2254)
  %2256 = call i8* @nyx_string_to_cstr(%nyx_string* %2255)
  call void @nyx_print_string(i8* %2256)
  ret i1 0
else478:
  br label %merge479
merge479:
  %2257 = load %nyx_string*, %nyx_string** %2239
  %2258 = call i8* @nyx_string_to_cstr(%nyx_string* %2257)
  %2259 = call %nyx_string* @nyx_read_file(i8* %2258)
  %2260 = alloca %nyx_string*
  store %nyx_string* %2259, %nyx_string** %2260
  %2261 = load %nyx_string*, %nyx_string** %dst.ptr
  %2262 = load %nyx_string*, %nyx_string** %2260
  %2263 = load %nyx_string*, %nyx_string** %lang.ptr
  %2264 = call i64 @seed_file(%nyx_string* %2261, %nyx_string* %2262, %nyx_string* %2263)
  %2265 = getelementptr [3 x i8], [3 x i8]* @.str242, i32 0, i32 0
  %2266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2265, i64 2)
  %2267 = load %nyx_string*, %nyx_string** %dst.ptr
  %2268 = call %nyx_string* @nyx_string_concat(%nyx_string* %2266, %nyx_string* %2267)
  %2269 = call i8* @nyx_string_to_cstr(%nyx_string* %2268)
  call void @nyx_print_string(i8* %2269)
  ret i1 1
}

define internal %nyx_string* @nx_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %2270 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %2271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2270, i64 0)
  %2272 = alloca %nyx_string*
  store %nyx_string* %2271, %nyx_string** %2272
  %2273 = alloca i64
  store i64 0, i64* %2273
  %2274 = getelementptr [2 x i8], [2 x i8]* @.str244, i32 0, i32 0
  %2275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2274, i64 1)
  %2276 = alloca %nyx_string*
  store %nyx_string* %2275, %nyx_string** %2276
  %2277 = getelementptr [3 x i8], [3 x i8]* @.str245, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2277, i64 2)
  %2279 = alloca %nyx_string*
  store %nyx_string* %2278, %nyx_string** %2279
  %2280 = getelementptr [2 x i8], [2 x i8]* @.str246, i32 0, i32 0
  %2281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2280, i64 1)
  %2282 = alloca %nyx_string*
  store %nyx_string* %2281, %nyx_string** %2282
  %2283 = getelementptr [3 x i8], [3 x i8]* @.str247, i32 0, i32 0
  %2284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2283, i64 2)
  %2285 = alloca %nyx_string*
  store %nyx_string* %2284, %nyx_string** %2285
  %2286 = call i8* @llvm.stacksave()
  br label %while_cond480
while_cond480:
  %2287 = load i64, i64* %2273
  %2288 = load %nyx_string*, %nyx_string** %s.ptr
  %2289 = call i64 @nyx_string_byte_length(%nyx_string* %2288)
  %2290 = icmp slt i64 %2287, %2289
  br i1 %2290, label %while_body481, label %while_end482
while_body481:
  call void @llvm.stackrestore(i8* %2286)
  %2291 = load %nyx_string*, %nyx_string** %s.ptr
  %2292 = load i64, i64* %2273
  %2293 = load i64, i64* %2273
  %2294 = add i64 %2293, 1
  %2295 = call %nyx_string* @nyx_string_substring(%nyx_string* %2291, i64 %2292, i64 %2294)
  %2296 = alloca %nyx_string*
  store %nyx_string* %2295, %nyx_string** %2296
  %2297 = load %nyx_string*, %nyx_string** %2296
  %2298 = load %nyx_string*, %nyx_string** %2276
  %2299 = call i1 @nyx_string_equals(%nyx_string* %2297, %nyx_string* %2298)
  br i1 %2299, label %then483, label %else484
then483:
  %2300 = load %nyx_string*, %nyx_string** %2272
  %2301 = load %nyx_string*, %nyx_string** %2279
  %2302 = call %nyx_string* @nyx_string_concat(%nyx_string* %2300, %nyx_string* %2301)
  store %nyx_string* %2302, %nyx_string** %2272
  br label %merge485
else484:
  %2303 = load %nyx_string*, %nyx_string** %2296
  %2304 = load %nyx_string*, %nyx_string** %2282
  %2305 = call i1 @nyx_string_equals(%nyx_string* %2303, %nyx_string* %2304)
  br i1 %2305, label %then486, label %else487
then486:
  %2306 = load %nyx_string*, %nyx_string** %2272
  %2307 = load %nyx_string*, %nyx_string** %2285
  %2308 = call %nyx_string* @nyx_string_concat(%nyx_string* %2306, %nyx_string* %2307)
  store %nyx_string* %2308, %nyx_string** %2272
  br label %merge488
else487:
  %2309 = load %nyx_string*, %nyx_string** %2272
  %2310 = load %nyx_string*, %nyx_string** %2296
  %2311 = call %nyx_string* @nyx_string_concat(%nyx_string* %2309, %nyx_string* %2310)
  store %nyx_string* %2311, %nyx_string** %2272
  br label %merge488
merge488:
  br label %merge485
merge485:
  %2312 = load i64, i64* %2273
  %2313 = add i64 %2312, 1
  store i64 %2313, i64* %2273
  br label %while_cond480
while_end482:
  %2314 = load %nyx_string*, %nyx_string** %2272
  ret %nyx_string* %2314
}

define internal %nyx_string* @evidence_body(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2315 = call %nyx_string* @toolchain_version()
  %2316 = alloca %nyx_string*
  store %nyx_string* %2315, %nyx_string** %2316
  %2317 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %2318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2317, i64 0)
  %2319 = alloca %nyx_string*
  store %nyx_string* %2318, %nyx_string** %2319
  %2320 = load %nyx_string*, %nyx_string** %2319
  %2321 = load %nyx_string*, %nyx_string** %lang.ptr
  %2322 = getelementptr [20 x i8], [20 x i8]* @.str249, i32 0, i32 0
  %2323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2322, i64 19)
  %2324 = load %nyx_string*, %nyx_string** %2316
  %2325 = call %nyx_string* @nyx_string_concat(%nyx_string* %2323, %nyx_string* %2324)
  %2326 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %2327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2326, i64 1)
  %2328 = call %nyx_string* @nyx_string_concat(%nyx_string* %2325, %nyx_string* %2327)
  %2329 = getelementptr [21 x i8], [21 x i8]* @.str251, i32 0, i32 0
  %2330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2329, i64 20)
  %2331 = load %nyx_string*, %nyx_string** %2316
  %2332 = call %nyx_string* @nyx_string_concat(%nyx_string* %2330, %nyx_string* %2331)
  %2333 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2333, i64 1)
  %2335 = call %nyx_string* @nyx_string_concat(%nyx_string* %2332, %nyx_string* %2334)
  %2336 = call %nyx_string* @sdd_msg(%nyx_string* %2321, %nyx_string* %2328, %nyx_string* %2335)
  %2337 = call %nyx_string* @nyx_string_concat(%nyx_string* %2320, %nyx_string* %2336)
  store %nyx_string* %2337, %nyx_string** %2319
  %2338 = load %nyx_string*, %nyx_string** %2319
  %2339 = getelementptr [7 x i8], [7 x i8]* @.str253, i32 0, i32 0
  %2340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2339, i64 6)
  %2341 = call %nyx_string* @nyx_string_concat(%nyx_string* %2338, %nyx_string* %2340)
  %2342 = call %nyx_string* @sdd_generated_marker()
  %2343 = call %nyx_string* @nyx_string_concat(%nyx_string* %2341, %nyx_string* %2342)
  %2344 = getelementptr [110 x i8], [110 x i8]* @.str254, i32 0, i32 0
  %2345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2344, i64 109)
  %2346 = call %nyx_string* @nyx_string_concat(%nyx_string* %2343, %nyx_string* %2345)
  store %nyx_string* %2346, %nyx_string** %2319
  %2347 = load %nyx_string*, %nyx_string** %2319
  %2348 = load %nyx_string*, %nyx_string** %lang.ptr
  %2349 = getelementptr [319 x i8], [319 x i8]* @.str255, i32 0, i32 0
  %2350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2349, i64 318)
  %2351 = getelementptr [334 x i8], [334 x i8]* @.str256, i32 0, i32 0
  %2352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2351, i64 333)
  %2353 = call %nyx_string* @sdd_msg(%nyx_string* %2348, %nyx_string* %2350, %nyx_string* %2352)
  %2354 = call %nyx_string* @nyx_string_concat(%nyx_string* %2347, %nyx_string* %2353)
  store %nyx_string* %2354, %nyx_string** %2319
  %2355 = load %nyx_string*, %nyx_string** %2319
  %2356 = getelementptr [2 x i8], [2 x i8]* @.str257, i32 0, i32 0
  %2357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2356, i64 1)
  %2358 = call %nyx_string* @nyx_string_concat(%nyx_string* %2355, %nyx_string* %2357)
  store %nyx_string* %2358, %nyx_string** %2319
  %2359 = call { i64, i8* }* @gotchas_table()
  %2360 = alloca { i64, i8* }*
  store { i64, i8* }* %2359, { i64, i8* }** %2360
  %2361 = alloca i64
  store i64 0, i64* %2361
  %2362 = getelementptr [5 x i8], [5 x i8]* @.str258, i32 0, i32 0
  %2363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2362, i64 4)
  %2364 = alloca %nyx_string*
  store %nyx_string* %2363, %nyx_string** %2364
  %2365 = getelementptr [9 x i8], [9 x i8]* @.str259, i32 0, i32 0
  %2366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2365, i64 8)
  %2367 = alloca %nyx_string*
  store %nyx_string* %2366, %nyx_string** %2367
  %2368 = getelementptr [1 x i8], [1 x i8]* @.str260, i32 0, i32 0
  %2369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2368, i64 0)
  %2370 = alloca %nyx_string*
  store %nyx_string* %2369, %nyx_string** %2370
  %2371 = getelementptr [5 x i8], [5 x i8]* @.str261, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2371, i64 4)
  %2373 = alloca %nyx_string*
  store %nyx_string* %2372, %nyx_string** %2373
  %2374 = getelementptr [5 x i8], [5 x i8]* @.str262, i32 0, i32 0
  %2375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2374, i64 4)
  %2376 = alloca %nyx_string*
  store %nyx_string* %2375, %nyx_string** %2376
  %2377 = getelementptr [3 x i8], [3 x i8]* @.str263, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2377, i64 2)
  %2379 = alloca %nyx_string*
  store %nyx_string* %2378, %nyx_string** %2379
  %2380 = getelementptr [6 x i8], [6 x i8]* @.str264, i32 0, i32 0
  %2381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2380, i64 5)
  %2382 = alloca %nyx_string*
  store %nyx_string* %2381, %nyx_string** %2382
  %2383 = getelementptr [7 x i8], [7 x i8]* @.str265, i32 0, i32 0
  %2384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2383, i64 6)
  %2385 = alloca %nyx_string*
  store %nyx_string* %2384, %nyx_string** %2385
  %2386 = getelementptr [5 x i8], [5 x i8]* @.str266, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2386, i64 4)
  %2388 = alloca %nyx_string*
  store %nyx_string* %2387, %nyx_string** %2388
  %2389 = getelementptr [9 x i8], [9 x i8]* @.str267, i32 0, i32 0
  %2390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2389, i64 8)
  %2391 = alloca %nyx_string*
  store %nyx_string* %2390, %nyx_string** %2391
  %2392 = getelementptr [3 x i8], [3 x i8]* @.str268, i32 0, i32 0
  %2393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2392, i64 2)
  %2394 = alloca %nyx_string*
  store %nyx_string* %2393, %nyx_string** %2394
  %2395 = getelementptr [9 x i8], [9 x i8]* @.str269, i32 0, i32 0
  %2396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2395, i64 8)
  %2397 = alloca %nyx_string*
  store %nyx_string* %2396, %nyx_string** %2397
  %2398 = getelementptr [5 x i8], [5 x i8]* @.str270, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2398, i64 4)
  %2400 = alloca %nyx_string*
  store %nyx_string* %2399, %nyx_string** %2400
  %2401 = getelementptr [5 x i8], [5 x i8]* @.str271, i32 0, i32 0
  %2402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2401, i64 4)
  %2403 = alloca %nyx_string*
  store %nyx_string* %2402, %nyx_string** %2403
  %2404 = getelementptr [9 x i8], [9 x i8]* @.str272, i32 0, i32 0
  %2405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2404, i64 8)
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = getelementptr [7 x i8], [7 x i8]* @.str273, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2407, i64 6)
  %2409 = alloca %nyx_string*
  store %nyx_string* %2408, %nyx_string** %2409
  %2410 = getelementptr [14 x i8], [14 x i8]* @.str274, i32 0, i32 0
  %2411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2410, i64 13)
  %2412 = alloca %nyx_string*
  store %nyx_string* %2411, %nyx_string** %2412
  %2413 = getelementptr [2 x i8], [2 x i8]* @.str275, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2413, i64 1)
  %2415 = alloca %nyx_string*
  store %nyx_string* %2414, %nyx_string** %2415
  %2416 = getelementptr [12 x i8], [12 x i8]* @.str276, i32 0, i32 0
  %2417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2416, i64 11)
  %2418 = alloca %nyx_string*
  store %nyx_string* %2417, %nyx_string** %2418
  %2419 = getelementptr [2 x i8], [2 x i8]* @.str277, i32 0, i32 0
  %2420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2419, i64 1)
  %2421 = alloca %nyx_string*
  store %nyx_string* %2420, %nyx_string** %2421
  %2422 = call i8* @llvm.stacksave()
  br label %while_cond489
while_cond489:
  %2423 = load i64, i64* %2361
  %2424 = load { i64, i8* }*, { i64, i8* }** %2360
  %2425 = call i64 @nyx_array_length({ i64, i8* }* %2424)
  %2426 = icmp slt i64 %2423, %2425
  br i1 %2426, label %while_body490, label %while_end491
while_body490:
  call void @llvm.stackrestore(i8* %2422)
  %2427 = load { i64, i8* }*, { i64, i8* }** %2360
  %2428 = load i64, i64* %2361
  %2429 = call i64 @nyx_array_get({ i64, i8* }* %2427, i64 %2428)
  %2430 = inttoptr i64 %2429 to { i64, i8* }*
  %2431 = alloca { i64, i8* }*
  store { i64, i8* }* %2430, { i64, i8* }** %2431
  %2432 = load { i64, i8* }*, { i64, i8* }** %2431
  %2433 = load %nyx_string*, %nyx_string** %2364
  %2434 = call %nyx_string* @gotcha_field({ i64, i8* }* %2432, %nyx_string* %2433)
  %2435 = alloca %nyx_string*
  store %nyx_string* %2434, %nyx_string** %2435
  %2436 = load { i64, i8* }*, { i64, i8* }** %2431
  %2437 = load %nyx_string*, %nyx_string** %2367
  %2438 = call %nyx_string* @gotcha_field({ i64, i8* }* %2436, %nyx_string* %2437)
  %2439 = alloca %nyx_string*
  store %nyx_string* %2438, %nyx_string** %2439
  %2440 = load %nyx_string*, %nyx_string** %2439
  %2441 = load %nyx_string*, %nyx_string** %2370
  %2442 = call i1 @nyx_string_equals(%nyx_string* %2440, %nyx_string* %2441)
  br i1 %2442, label %then492, label %else493
then492:
  %2443 = alloca i1
  store i1 true, i1* %2443
  %2444 = load %nyx_string*, %nyx_string** %2435
  %2445 = load %nyx_string*, %nyx_string** %2373
  %2446 = call i1 @nyx_string_equals(%nyx_string* %2444, %nyx_string* %2445)
  br i1 %2446, label %sc_or_end496, label %sc_or_rhs495
sc_or_rhs495:
  %2447 = load %nyx_string*, %nyx_string** %2435
  %2448 = load %nyx_string*, %nyx_string** %2376
  %2449 = call i1 @nyx_string_equals(%nyx_string* %2447, %nyx_string* %2448)
  store i1 %2449, i1* %2443
  br label %sc_or_end496
sc_or_end496:
  %2450 = load i1, i1* %2443
  br i1 %2450, label %then497, label %else498
then497:
  %2451 = load { i64, i8* }*, { i64, i8* }** %2431
  %2452 = load %nyx_string*, %nyx_string** %2379
  %2453 = call %nyx_string* @gotcha_field({ i64, i8* }* %2451, %nyx_string* %2452)
  %2454 = alloca %nyx_string*
  store %nyx_string* %2453, %nyx_string** %2454
  %2455 = load { i64, i8* }*, { i64, i8* }** %2431
  %2456 = load %nyx_string*, %nyx_string** %2382
  %2457 = call %nyx_string* @gotcha_field({ i64, i8* }* %2455, %nyx_string* %2456)
  %2458 = alloca %nyx_string*
  store %nyx_string* %2457, %nyx_string** %2458
  %2459 = load { i64, i8* }*, { i64, i8* }** %2431
  %2460 = load %nyx_string*, %nyx_string** %2385
  %2461 = call %nyx_string* @gotcha_field({ i64, i8* }* %2459, %nyx_string* %2460)
  %2462 = alloca %nyx_string*
  store %nyx_string* %2461, %nyx_string** %2462
  %2463 = load { i64, i8* }*, { i64, i8* }** %2431
  %2464 = load %nyx_string*, %nyx_string** %2388
  %2465 = call %nyx_string* @gotcha_field({ i64, i8* }* %2463, %nyx_string* %2464)
  %2466 = alloca %nyx_string*
  store %nyx_string* %2465, %nyx_string** %2466
  %2467 = load { i64, i8* }*, { i64, i8* }** %2431
  %2468 = load %nyx_string*, %nyx_string** %2391
  %2469 = call %nyx_string* @gotcha_field({ i64, i8* }* %2467, %nyx_string* %2468)
  %2470 = alloca %nyx_string*
  store %nyx_string* %2469, %nyx_string** %2470
  %2471 = load %nyx_string*, %nyx_string** %lang.ptr
  %2472 = load %nyx_string*, %nyx_string** %2394
  %2473 = call i1 @nyx_string_equals(%nyx_string* %2471, %nyx_string* %2472)
  br i1 %2473, label %then500, label %else501
then500:
  %2474 = load { i64, i8* }*, { i64, i8* }** %2431
  %2475 = load %nyx_string*, %nyx_string** %2397
  %2476 = call %nyx_string* @gotcha_field({ i64, i8* }* %2474, %nyx_string* %2475)
  store %nyx_string* %2476, %nyx_string** %2470
  br label %merge502
else501:
  br label %merge502
merge502:
  %2477 = load %nyx_string*, %nyx_string** %2319
  %2478 = load %nyx_string*, %nyx_string** %2400
  %2479 = call %nyx_string* @nyx_string_concat(%nyx_string* %2477, %nyx_string* %2478)
  %2480 = load %nyx_string*, %nyx_string** %2454
  %2481 = call %nyx_string* @nyx_string_concat(%nyx_string* %2479, %nyx_string* %2480)
  %2482 = load %nyx_string*, %nyx_string** %2403
  %2483 = call %nyx_string* @nyx_string_concat(%nyx_string* %2481, %nyx_string* %2482)
  %2484 = load %nyx_string*, %nyx_string** %2435
  %2485 = call %nyx_string* @nyx_string_concat(%nyx_string* %2483, %nyx_string* %2484)
  %2486 = load %nyx_string*, %nyx_string** %2406
  %2487 = call %nyx_string* @nyx_string_concat(%nyx_string* %2485, %nyx_string* %2486)
  %2488 = load %nyx_string*, %nyx_string** %2458
  %2489 = call %nyx_string* @nyx_string_concat(%nyx_string* %2487, %nyx_string* %2488)
  %2490 = load %nyx_string*, %nyx_string** %2409
  %2491 = call %nyx_string* @nyx_string_concat(%nyx_string* %2489, %nyx_string* %2490)
  %2492 = load %nyx_string*, %nyx_string** %2470
  %2493 = call %nyx_string* @nyx_string_concat(%nyx_string* %2491, %nyx_string* %2492)
  store %nyx_string* %2493, %nyx_string** %2319
  %2494 = load %nyx_string*, %nyx_string** %2462
  %2495 = load %nyx_string*, %nyx_string** %2370
  %2496 = call i1 @nyx_string_equals(%nyx_string* %2494, %nyx_string* %2495)
  %2497 = xor i1 %2496, true
  br i1 %2497, label %then503, label %else504
then503:
  %2498 = load %nyx_string*, %nyx_string** %2319
  %2499 = load %nyx_string*, %nyx_string** %2412
  %2500 = call %nyx_string* @nyx_string_concat(%nyx_string* %2498, %nyx_string* %2499)
  %2501 = load %nyx_string*, %nyx_string** %2462
  %2502 = call %nyx_string* @nyx_string_concat(%nyx_string* %2500, %nyx_string* %2501)
  %2503 = load %nyx_string*, %nyx_string** %2415
  %2504 = call %nyx_string* @nyx_string_concat(%nyx_string* %2502, %nyx_string* %2503)
  store %nyx_string* %2504, %nyx_string** %2319
  br label %merge505
else504:
  br label %merge505
merge505:
  %2505 = load %nyx_string*, %nyx_string** %2466
  %2506 = load %nyx_string*, %nyx_string** %2370
  %2507 = call i1 @nyx_string_equals(%nyx_string* %2505, %nyx_string* %2506)
  %2508 = xor i1 %2507, true
  br i1 %2508, label %then506, label %else507
then506:
  %2509 = load %nyx_string*, %nyx_string** %2319
  %2510 = load %nyx_string*, %nyx_string** %2418
  %2511 = call %nyx_string* @nyx_string_concat(%nyx_string* %2509, %nyx_string* %2510)
  %2512 = load %nyx_string*, %nyx_string** %2466
  %2513 = call %nyx_string* @nyx_string_concat(%nyx_string* %2511, %nyx_string* %2512)
  %2514 = load %nyx_string*, %nyx_string** %2415
  %2515 = call %nyx_string* @nyx_string_concat(%nyx_string* %2513, %nyx_string* %2514)
  store %nyx_string* %2515, %nyx_string** %2319
  br label %merge508
else507:
  br label %merge508
merge508:
  %2516 = load %nyx_string*, %nyx_string** %2319
  %2517 = load %nyx_string*, %nyx_string** %2421
  %2518 = call %nyx_string* @nyx_string_concat(%nyx_string* %2516, %nyx_string* %2517)
  store %nyx_string* %2518, %nyx_string** %2319
  br label %merge499
else498:
  br label %merge499
merge499:
  br label %merge494
else493:
  br label %merge494
merge494:
  %2519 = load i64, i64* %2361
  %2520 = add i64 %2519, 1
  store i64 %2520, i64* %2361
  br label %while_cond489
while_end491:
  %2521 = load %nyx_string*, %nyx_string** %2319
  %2522 = load %nyx_string*, %nyx_string** %lang.ptr
  %2523 = getelementptr [14 x i8], [14 x i8]* @.str278, i32 0, i32 0
  %2524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2523, i64 13)
  %2525 = getelementptr [16 x i8], [16 x i8]* @.str279, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2525, i64 15)
  %2527 = call %nyx_string* @sdd_msg(%nyx_string* %2522, %nyx_string* %2524, %nyx_string* %2526)
  %2528 = call %nyx_string* @nyx_string_concat(%nyx_string* %2521, %nyx_string* %2527)
  store %nyx_string* %2528, %nyx_string** %2319
  %2529 = load %nyx_string*, %nyx_string** %2319
  %2530 = load %nyx_string*, %nyx_string** %lang.ptr
  %2531 = getelementptr [139 x i8], [139 x i8]* @.str280, i32 0, i32 0
  %2532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2531, i64 138)
  %2533 = getelementptr [150 x i8], [150 x i8]* @.str281, i32 0, i32 0
  %2534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2533, i64 149)
  %2535 = call %nyx_string* @sdd_msg(%nyx_string* %2530, %nyx_string* %2532, %nyx_string* %2534)
  %2536 = call %nyx_string* @nyx_string_concat(%nyx_string* %2529, %nyx_string* %2535)
  store %nyx_string* %2536, %nyx_string** %2319
  %2537 = alloca i64
  store i64 0, i64* %2537
  %2538 = getelementptr [9 x i8], [9 x i8]* @.str282, i32 0, i32 0
  %2539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2538, i64 8)
  %2540 = alloca %nyx_string*
  store %nyx_string* %2539, %nyx_string** %2540
  %2541 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %2542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2541, i64 0)
  %2543 = alloca %nyx_string*
  store %nyx_string* %2542, %nyx_string** %2543
  %2544 = getelementptr [3 x i8], [3 x i8]* @.str284, i32 0, i32 0
  %2545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2544, i64 2)
  %2546 = alloca %nyx_string*
  store %nyx_string* %2545, %nyx_string** %2546
  %2547 = getelementptr [9 x i8], [9 x i8]* @.str285, i32 0, i32 0
  %2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2547, i64 8)
  %2549 = alloca %nyx_string*
  store %nyx_string* %2548, %nyx_string** %2549
  %2550 = getelementptr [3 x i8], [3 x i8]* @.str286, i32 0, i32 0
  %2551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2550, i64 2)
  %2552 = alloca %nyx_string*
  store %nyx_string* %2551, %nyx_string** %2552
  %2553 = getelementptr [9 x i8], [9 x i8]* @.str287, i32 0, i32 0
  %2554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2553, i64 8)
  %2555 = alloca %nyx_string*
  store %nyx_string* %2554, %nyx_string** %2555
  %2556 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %2557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2556, i64 4)
  %2558 = alloca %nyx_string*
  store %nyx_string* %2557, %nyx_string** %2558
  %2559 = getelementptr [14 x i8], [14 x i8]* @.str289, i32 0, i32 0
  %2560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2559, i64 13)
  %2561 = alloca %nyx_string*
  store %nyx_string* %2560, %nyx_string** %2561
  %2562 = getelementptr [7 x i8], [7 x i8]* @.str290, i32 0, i32 0
  %2563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2562, i64 6)
  %2564 = alloca %nyx_string*
  store %nyx_string* %2563, %nyx_string** %2564
  %2565 = getelementptr [2 x i8], [2 x i8]* @.str291, i32 0, i32 0
  %2566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2565, i64 1)
  %2567 = alloca %nyx_string*
  store %nyx_string* %2566, %nyx_string** %2567
  %2568 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2569 = load i64, i64* %2537
  %2570 = load { i64, i8* }*, { i64, i8* }** %2360
  %2571 = call i64 @nyx_array_length({ i64, i8* }* %2570)
  %2572 = icmp slt i64 %2569, %2571
  br i1 %2572, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2568)
  %2573 = load { i64, i8* }*, { i64, i8* }** %2360
  %2574 = load i64, i64* %2537
  %2575 = call i64 @nyx_array_get({ i64, i8* }* %2573, i64 %2574)
  %2576 = inttoptr i64 %2575 to { i64, i8* }*
  %2577 = alloca { i64, i8* }*
  store { i64, i8* }* %2576, { i64, i8* }** %2577
  %2578 = load { i64, i8* }*, { i64, i8* }** %2577
  %2579 = load %nyx_string*, %nyx_string** %2540
  %2580 = call %nyx_string* @gotcha_field({ i64, i8* }* %2578, %nyx_string* %2579)
  %2581 = alloca %nyx_string*
  store %nyx_string* %2580, %nyx_string** %2581
  %2582 = load %nyx_string*, %nyx_string** %2581
  %2583 = load %nyx_string*, %nyx_string** %2543
  %2584 = call i1 @nyx_string_equals(%nyx_string* %2582, %nyx_string* %2583)
  %2585 = xor i1 %2584, true
  br i1 %2585, label %then512, label %else513
then512:
  %2586 = load { i64, i8* }*, { i64, i8* }** %2577
  %2587 = load %nyx_string*, %nyx_string** %2546
  %2588 = call %nyx_string* @gotcha_field({ i64, i8* }* %2586, %nyx_string* %2587)
  %2589 = alloca %nyx_string*
  store %nyx_string* %2588, %nyx_string** %2589
  %2590 = load { i64, i8* }*, { i64, i8* }** %2577
  %2591 = load %nyx_string*, %nyx_string** %2549
  %2592 = call %nyx_string* @gotcha_field({ i64, i8* }* %2590, %nyx_string* %2591)
  %2593 = alloca %nyx_string*
  store %nyx_string* %2592, %nyx_string** %2593
  %2594 = load %nyx_string*, %nyx_string** %lang.ptr
  %2595 = load %nyx_string*, %nyx_string** %2552
  %2596 = call i1 @nyx_string_equals(%nyx_string* %2594, %nyx_string* %2595)
  br i1 %2596, label %then515, label %else516
then515:
  %2597 = load { i64, i8* }*, { i64, i8* }** %2577
  %2598 = load %nyx_string*, %nyx_string** %2555
  %2599 = call %nyx_string* @gotcha_field({ i64, i8* }* %2597, %nyx_string* %2598)
  store %nyx_string* %2599, %nyx_string** %2593
  br label %merge517
else516:
  br label %merge517
merge517:
  %2600 = load %nyx_string*, %nyx_string** %2319
  %2601 = load %nyx_string*, %nyx_string** %2558
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2601)
  %2603 = load %nyx_string*, %nyx_string** %2589
  %2604 = call %nyx_string* @nyx_string_concat(%nyx_string* %2602, %nyx_string* %2603)
  %2605 = load %nyx_string*, %nyx_string** %2561
  %2606 = call %nyx_string* @nyx_string_concat(%nyx_string* %2604, %nyx_string* %2605)
  %2607 = load %nyx_string*, %nyx_string** %2581
  %2608 = call %nyx_string* @nyx_string_concat(%nyx_string* %2606, %nyx_string* %2607)
  %2609 = load %nyx_string*, %nyx_string** %2564
  %2610 = call %nyx_string* @nyx_string_concat(%nyx_string* %2608, %nyx_string* %2609)
  %2611 = load %nyx_string*, %nyx_string** %2593
  %2612 = call %nyx_string* @nyx_string_concat(%nyx_string* %2610, %nyx_string* %2611)
  %2613 = load %nyx_string*, %nyx_string** %2567
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2613)
  store %nyx_string* %2614, %nyx_string** %2319
  br label %merge514
else513:
  br label %merge514
merge514:
  %2615 = load i64, i64* %2537
  %2616 = add i64 %2615, 1
  store i64 %2616, i64* %2537
  br label %while_cond509
while_end511:
  %2617 = load %nyx_string*, %nyx_string** %2319
  ret %nyx_string* %2617
}

define internal i64 @write_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2618 = load %nyx_string*, %nyx_string** %dir.ptr
  %2619 = getelementptr [20 x i8], [20 x i8]* @.str292, i32 0, i32 0
  %2620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2619, i64 19)
  %2621 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2620)
  %2622 = call %nyx_string* @toolchain_version()
  %2623 = call %nyx_string* @nyx_string_concat(%nyx_string* %2621, %nyx_string* %2622)
  %2624 = getelementptr [4 x i8], [4 x i8]* @.str293, i32 0, i32 0
  %2625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2624, i64 3)
  %2626 = call %nyx_string* @nyx_string_concat(%nyx_string* %2623, %nyx_string* %2625)
  %2627 = alloca %nyx_string*
  store %nyx_string* %2626, %nyx_string** %2627
  %2628 = load %nyx_string*, %nyx_string** %lang.ptr
  %2629 = call %nyx_string* @evidence_body(%nyx_string* %2628)
  %2630 = load %nyx_string*, %nyx_string** %lang.ptr
  %2631 = call %nyx_string* @seed_body(%nyx_string* %2629, %nyx_string* %2630)
  %2632 = alloca %nyx_string*
  store %nyx_string* %2631, %nyx_string** %2632
  %2633 = load %nyx_string*, %nyx_string** %2627
  %2634 = call i8* @nyx_string_to_cstr(%nyx_string* %2633)
  %2635 = call i1 @nyx_file_exists(i8* %2634)
  br i1 %2635, label %then518, label %else519
then518:
  %2636 = load %nyx_string*, %nyx_string** %2627
  %2637 = call i8* @nyx_string_to_cstr(%nyx_string* %2636)
  %2638 = call %nyx_string* @nyx_read_file(i8* %2637)
  %2639 = alloca %nyx_string*
  store %nyx_string* %2638, %nyx_string** %2639
  %2640 = load %nyx_string*, %nyx_string** %2639
  %2641 = load %nyx_string*, %nyx_string** %2632
  %2642 = call i1 @nyx_string_equals(%nyx_string* %2640, %nyx_string* %2641)
  br i1 %2642, label %then521, label %else522
then521:
  ret i64 0
else522:
  br label %merge523
merge523:
  %2643 = load %nyx_string*, %nyx_string** %2639
  %2644 = call %nyx_string* @sdd_generated_marker()
  %2645 = call i64 @nyx_string_index_of(%nyx_string* %2643, %nyx_string* %2644)
  %2646 = icmp slt i64 %2645, 0
  br i1 %2646, label %then524, label %else525
then524:
  ret i64 2
else525:
  br label %merge526
merge526:
  br label %merge520
else519:
  br label %merge520
merge520:
  %2647 = load %nyx_string*, %nyx_string** %2627
  %2648 = load %nyx_string*, %nyx_string** %2632
  %2649 = call i8* @nyx_string_to_cstr(%nyx_string* %2647)
  %2650 = call i1 @nyx_write_file_safe(i8* %2649, %nyx_string* %2648)
  ret i64 1
}

define internal %nyx_string* @constitution_test_body(
) {
  %2651 = getelementptr [1 x i8], [1 x i8]* @.str294, i32 0, i32 0
  %2652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2651, i64 0)
  %2653 = alloca %nyx_string*
  store %nyx_string* %2652, %nyx_string** %2653
  %2654 = load %nyx_string*, %nyx_string** %2653
  %2655 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2655, i64 3)
  %2657 = call %nyx_string* @nyx_string_concat(%nyx_string* %2654, %nyx_string* %2656)
  %2658 = call %nyx_string* @sdd_generated_marker()
  %2659 = call %nyx_string* @nyx_string_concat(%nyx_string* %2657, %nyx_string* %2658)
  %2660 = getelementptr [80 x i8], [80 x i8]* @.str296, i32 0, i32 0
  %2661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2660, i64 79)
  %2662 = call %nyx_string* @nyx_string_concat(%nyx_string* %2659, %nyx_string* %2661)
  store %nyx_string* %2662, %nyx_string** %2653
  %2663 = load %nyx_string*, %nyx_string** %2653
  %2664 = getelementptr [96 x i8], [96 x i8]* @.str297, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2664, i64 95)
  %2666 = call %nyx_string* @nyx_string_concat(%nyx_string* %2663, %nyx_string* %2665)
  store %nyx_string* %2666, %nyx_string** %2653
  %2667 = load %nyx_string*, %nyx_string** %2653
  %2668 = getelementptr [72 x i8], [72 x i8]* @.str298, i32 0, i32 0
  %2669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2668, i64 71)
  %2670 = call %nyx_string* @nyx_string_concat(%nyx_string* %2667, %nyx_string* %2669)
  store %nyx_string* %2670, %nyx_string** %2653
  %2671 = load %nyx_string*, %nyx_string** %2653
  %2672 = getelementptr [20 x i8], [20 x i8]* @.str299, i32 0, i32 0
  %2673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2672, i64 19)
  %2674 = call %nyx_string* @nyx_string_concat(%nyx_string* %2671, %nyx_string* %2673)
  store %nyx_string* %2674, %nyx_string** %2653
  %2675 = load %nyx_string*, %nyx_string** %2653
  %2676 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2676, i64 1)
  %2678 = call %nyx_string* @nyx_string_concat(%nyx_string* %2675, %nyx_string* %2677)
  store %nyx_string* %2678, %nyx_string** %2653
  %2679 = load %nyx_string*, %nyx_string** %2653
  %2680 = call %nyx_string* @gotcha_scan_src()
  %2681 = call %nyx_string* @nyx_string_concat(%nyx_string* %2679, %nyx_string* %2680)
  store %nyx_string* %2681, %nyx_string** %2653
  %2682 = load %nyx_string*, %nyx_string** %2653
  %2683 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2683, i64 1)
  %2685 = call %nyx_string* @nyx_string_concat(%nyx_string* %2682, %nyx_string* %2684)
  store %nyx_string* %2685, %nyx_string** %2653
  %2686 = load %nyx_string*, %nyx_string** %2653
  %2687 = getelementptr [83 x i8], [83 x i8]* @.str302, i32 0, i32 0
  %2688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2687, i64 82)
  %2689 = call %nyx_string* @nyx_string_concat(%nyx_string* %2686, %nyx_string* %2688)
  store %nyx_string* %2689, %nyx_string** %2653
  %2690 = load %nyx_string*, %nyx_string** %2653
  %2691 = getelementptr [85 x i8], [85 x i8]* @.str303, i32 0, i32 0
  %2692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2691, i64 84)
  %2693 = call %nyx_string* @nyx_string_concat(%nyx_string* %2690, %nyx_string* %2692)
  store %nyx_string* %2693, %nyx_string** %2653
  %2694 = load %nyx_string*, %nyx_string** %2653
  %2695 = getelementptr [83 x i8], [83 x i8]* @.str304, i32 0, i32 0
  %2696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2695, i64 82)
  %2697 = call %nyx_string* @nyx_string_concat(%nyx_string* %2694, %nyx_string* %2696)
  store %nyx_string* %2697, %nyx_string** %2653
  %2698 = load %nyx_string*, %nyx_string** %2653
  %2699 = getelementptr [83 x i8], [83 x i8]* @.str305, i32 0, i32 0
  %2700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2699, i64 82)
  %2701 = call %nyx_string* @nyx_string_concat(%nyx_string* %2698, %nyx_string* %2700)
  store %nyx_string* %2701, %nyx_string** %2653
  %2702 = load %nyx_string*, %nyx_string** %2653
  %2703 = getelementptr [56 x i8], [56 x i8]* @.str306, i32 0, i32 0
  %2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2703, i64 55)
  %2705 = call %nyx_string* @nyx_string_concat(%nyx_string* %2702, %nyx_string* %2704)
  store %nyx_string* %2705, %nyx_string** %2653
  %2706 = load %nyx_string*, %nyx_string** %2653
  %2707 = getelementptr [31 x i8], [31 x i8]* @.str307, i32 0, i32 0
  %2708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2707, i64 30)
  %2709 = call %nyx_string* @nyx_string_concat(%nyx_string* %2706, %nyx_string* %2708)
  store %nyx_string* %2709, %nyx_string** %2653
  %2710 = load %nyx_string*, %nyx_string** %2653
  %2711 = getelementptr [47 x i8], [47 x i8]* @.str308, i32 0, i32 0
  %2712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2711, i64 46)
  %2713 = call %nyx_string* @nyx_string_concat(%nyx_string* %2710, %nyx_string* %2712)
  store %nyx_string* %2713, %nyx_string** %2653
  %2714 = load %nyx_string*, %nyx_string** %2653
  %2715 = getelementptr [40 x i8], [40 x i8]* @.str309, i32 0, i32 0
  %2716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2715, i64 39)
  %2717 = call %nyx_string* @nyx_string_concat(%nyx_string* %2714, %nyx_string* %2716)
  store %nyx_string* %2717, %nyx_string** %2653
  %2718 = load %nyx_string*, %nyx_string** %2653
  %2719 = getelementptr [20 x i8], [20 x i8]* @.str310, i32 0, i32 0
  %2720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2719, i64 19)
  %2721 = call %nyx_string* @nyx_string_concat(%nyx_string* %2718, %nyx_string* %2720)
  store %nyx_string* %2721, %nyx_string** %2653
  %2722 = load %nyx_string*, %nyx_string** %2653
  %2723 = getelementptr [58 x i8], [58 x i8]* @.str311, i32 0, i32 0
  %2724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2723, i64 57)
  %2725 = call %nyx_string* @nyx_string_concat(%nyx_string* %2722, %nyx_string* %2724)
  store %nyx_string* %2725, %nyx_string** %2653
  %2726 = load %nyx_string*, %nyx_string** %2653
  %2727 = getelementptr [7 x i8], [7 x i8]* @.str312, i32 0, i32 0
  %2728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2727, i64 6)
  %2729 = call %nyx_string* @nyx_string_concat(%nyx_string* %2726, %nyx_string* %2728)
  store %nyx_string* %2729, %nyx_string** %2653
  %2730 = load %nyx_string*, %nyx_string** %2653
  %2731 = getelementptr [15 x i8], [15 x i8]* @.str313, i32 0, i32 0
  %2732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2731, i64 14)
  %2733 = call %nyx_string* @nyx_string_concat(%nyx_string* %2730, %nyx_string* %2732)
  store %nyx_string* %2733, %nyx_string** %2653
  %2734 = load %nyx_string*, %nyx_string** %2653
  %2735 = getelementptr [3 x i8], [3 x i8]* @.str314, i32 0, i32 0
  %2736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2735, i64 2)
  %2737 = call %nyx_string* @nyx_string_concat(%nyx_string* %2734, %nyx_string* %2736)
  store %nyx_string* %2737, %nyx_string** %2653
  %2738 = load %nyx_string*, %nyx_string** %2653
  %2739 = getelementptr [2 x i8], [2 x i8]* @.str315, i32 0, i32 0
  %2740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2739, i64 1)
  %2741 = call %nyx_string* @nyx_string_concat(%nyx_string* %2738, %nyx_string* %2740)
  store %nyx_string* %2741, %nyx_string** %2653
  %2742 = load %nyx_string*, %nyx_string** %2653
  %2743 = getelementptr [79 x i8], [79 x i8]* @.str316, i32 0, i32 0
  %2744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %2743, i64 78)
  %2745 = call %nyx_string* @nyx_string_concat(%nyx_string* %2742, %nyx_string* %2744)
  store %nyx_string* %2745, %nyx_string** %2653
  %2746 = load %nyx_string*, %nyx_string** %2653
  %2747 = getelementptr [57 x i8], [57 x i8]* @.str317, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %2747, i64 56)
  %2749 = call %nyx_string* @nyx_string_concat(%nyx_string* %2746, %nyx_string* %2748)
  store %nyx_string* %2749, %nyx_string** %2653
  %2750 = load %nyx_string*, %nyx_string** %2653
  %2751 = getelementptr [37 x i8], [37 x i8]* @.str318, i32 0, i32 0
  %2752 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %2751, i64 36)
  %2753 = call %nyx_string* @nyx_string_concat(%nyx_string* %2750, %nyx_string* %2752)
  store %nyx_string* %2753, %nyx_string** %2653
  %2754 = load %nyx_string*, %nyx_string** %2653
  %2755 = getelementptr [25 x i8], [25 x i8]* @.str319, i32 0, i32 0
  %2756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %2755, i64 24)
  %2757 = call %nyx_string* @nyx_string_concat(%nyx_string* %2754, %nyx_string* %2756)
  store %nyx_string* %2757, %nyx_string** %2653
  %2758 = load %nyx_string*, %nyx_string** %2653
  %2759 = getelementptr [49 x i8], [49 x i8]* @.str320, i32 0, i32 0
  %2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %2759, i64 48)
  %2761 = call %nyx_string* @nyx_string_concat(%nyx_string* %2758, %nyx_string* %2760)
  store %nyx_string* %2761, %nyx_string** %2653
  %2762 = load %nyx_string*, %nyx_string** %2653
  %2763 = getelementptr [39 x i8], [39 x i8]* @.str321, i32 0, i32 0
  %2764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %2763, i64 38)
  %2765 = call %nyx_string* @nyx_string_concat(%nyx_string* %2762, %nyx_string* %2764)
  store %nyx_string* %2765, %nyx_string** %2653
  %2766 = load %nyx_string*, %nyx_string** %2653
  %2767 = getelementptr [20 x i8], [20 x i8]* @.str322, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %2767, i64 19)
  %2769 = call %nyx_string* @nyx_string_concat(%nyx_string* %2766, %nyx_string* %2768)
  store %nyx_string* %2769, %nyx_string** %2653
  %2770 = load %nyx_string*, %nyx_string** %2653
  %2771 = getelementptr [34 x i8], [34 x i8]* @.str323, i32 0, i32 0
  %2772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %2771, i64 33)
  %2773 = call %nyx_string* @nyx_string_concat(%nyx_string* %2770, %nyx_string* %2772)
  store %nyx_string* %2773, %nyx_string** %2653
  %2774 = load %nyx_string*, %nyx_string** %2653
  %2775 = getelementptr [36 x i8], [36 x i8]* @.str324, i32 0, i32 0
  %2776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %2775, i64 35)
  %2777 = call %nyx_string* @nyx_string_concat(%nyx_string* %2774, %nyx_string* %2776)
  store %nyx_string* %2777, %nyx_string** %2653
  %2778 = load %nyx_string*, %nyx_string** %2653
  %2779 = getelementptr [39 x i8], [39 x i8]* @.str325, i32 0, i32 0
  %2780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %2779, i64 38)
  %2781 = call %nyx_string* @nyx_string_concat(%nyx_string* %2778, %nyx_string* %2780)
  store %nyx_string* %2781, %nyx_string** %2653
  %2782 = load %nyx_string*, %nyx_string** %2653
  %2783 = getelementptr [32 x i8], [32 x i8]* @.str326, i32 0, i32 0
  %2784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %2783, i64 31)
  %2785 = call %nyx_string* @nyx_string_concat(%nyx_string* %2782, %nyx_string* %2784)
  store %nyx_string* %2785, %nyx_string** %2653
  %2786 = load %nyx_string*, %nyx_string** %2653
  %2787 = getelementptr [25 x i8], [25 x i8]* @.str327, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %2787, i64 24)
  %2789 = call %nyx_string* @nyx_string_concat(%nyx_string* %2786, %nyx_string* %2788)
  store %nyx_string* %2789, %nyx_string** %2653
  %2790 = load %nyx_string*, %nyx_string** %2653
  %2791 = getelementptr [18 x i8], [18 x i8]* @.str328, i32 0, i32 0
  %2792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %2791, i64 17)
  %2793 = call %nyx_string* @nyx_string_concat(%nyx_string* %2790, %nyx_string* %2792)
  store %nyx_string* %2793, %nyx_string** %2653
  %2794 = load %nyx_string*, %nyx_string** %2653
  %2795 = getelementptr [40 x i8], [40 x i8]* @.str329, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %2795, i64 39)
  %2797 = call %nyx_string* @nyx_string_concat(%nyx_string* %2794, %nyx_string* %2796)
  store %nyx_string* %2797, %nyx_string** %2653
  %2798 = load %nyx_string*, %nyx_string** %2653
  %2799 = getelementptr [46 x i8], [46 x i8]* @.str330, i32 0, i32 0
  %2800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %2799, i64 45)
  %2801 = call %nyx_string* @nyx_string_concat(%nyx_string* %2798, %nyx_string* %2800)
  store %nyx_string* %2801, %nyx_string** %2653
  %2802 = load %nyx_string*, %nyx_string** %2653
  %2803 = getelementptr [32 x i8], [32 x i8]* @.str331, i32 0, i32 0
  %2804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %2803, i64 31)
  %2805 = call %nyx_string* @nyx_string_concat(%nyx_string* %2802, %nyx_string* %2804)
  store %nyx_string* %2805, %nyx_string** %2653
  %2806 = load %nyx_string*, %nyx_string** %2653
  %2807 = getelementptr [42 x i8], [42 x i8]* @.str332, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %2807, i64 41)
  %2809 = call %nyx_string* @nyx_string_concat(%nyx_string* %2806, %nyx_string* %2808)
  store %nyx_string* %2809, %nyx_string** %2653
  %2810 = load %nyx_string*, %nyx_string** %2653
  %2811 = getelementptr [44 x i8], [44 x i8]* @.str333, i32 0, i32 0
  %2812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %2811, i64 43)
  %2813 = call %nyx_string* @nyx_string_concat(%nyx_string* %2810, %nyx_string* %2812)
  store %nyx_string* %2813, %nyx_string** %2653
  %2814 = load %nyx_string*, %nyx_string** %2653
  %2815 = getelementptr [33 x i8], [33 x i8]* @.str334, i32 0, i32 0
  %2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %2815, i64 32)
  %2817 = call %nyx_string* @nyx_string_concat(%nyx_string* %2814, %nyx_string* %2816)
  store %nyx_string* %2817, %nyx_string** %2653
  %2818 = load %nyx_string*, %nyx_string** %2653
  %2819 = getelementptr [31 x i8], [31 x i8]* @.str335, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %2819, i64 30)
  %2821 = call %nyx_string* @nyx_string_concat(%nyx_string* %2818, %nyx_string* %2820)
  store %nyx_string* %2821, %nyx_string** %2653
  %2822 = load %nyx_string*, %nyx_string** %2653
  %2823 = getelementptr [19 x i8], [19 x i8]* @.str336, i32 0, i32 0
  %2824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %2823, i64 18)
  %2825 = call %nyx_string* @nyx_string_concat(%nyx_string* %2822, %nyx_string* %2824)
  store %nyx_string* %2825, %nyx_string** %2653
  %2826 = load %nyx_string*, %nyx_string** %2653
  %2827 = getelementptr [15 x i8], [15 x i8]* @.str337, i32 0, i32 0
  %2828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %2827, i64 14)
  %2829 = call %nyx_string* @nyx_string_concat(%nyx_string* %2826, %nyx_string* %2828)
  store %nyx_string* %2829, %nyx_string** %2653
  %2830 = load %nyx_string*, %nyx_string** %2653
  %2831 = getelementptr [11 x i8], [11 x i8]* @.str338, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %2831, i64 10)
  %2833 = call %nyx_string* @nyx_string_concat(%nyx_string* %2830, %nyx_string* %2832)
  store %nyx_string* %2833, %nyx_string** %2653
  %2834 = load %nyx_string*, %nyx_string** %2653
  %2835 = getelementptr [19 x i8], [19 x i8]* @.str339, i32 0, i32 0
  %2836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %2835, i64 18)
  %2837 = call %nyx_string* @nyx_string_concat(%nyx_string* %2834, %nyx_string* %2836)
  store %nyx_string* %2837, %nyx_string** %2653
  %2838 = load %nyx_string*, %nyx_string** %2653
  %2839 = getelementptr [7 x i8], [7 x i8]* @.str340, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %2839, i64 6)
  %2841 = call %nyx_string* @nyx_string_concat(%nyx_string* %2838, %nyx_string* %2840)
  store %nyx_string* %2841, %nyx_string** %2653
  %2842 = load %nyx_string*, %nyx_string** %2653
  %2843 = getelementptr [16 x i8], [16 x i8]* @.str341, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %2843, i64 15)
  %2845 = call %nyx_string* @nyx_string_concat(%nyx_string* %2842, %nyx_string* %2844)
  store %nyx_string* %2845, %nyx_string** %2653
  %2846 = load %nyx_string*, %nyx_string** %2653
  %2847 = getelementptr [3 x i8], [3 x i8]* @.str342, i32 0, i32 0
  %2848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %2847, i64 2)
  %2849 = call %nyx_string* @nyx_string_concat(%nyx_string* %2846, %nyx_string* %2848)
  store %nyx_string* %2849, %nyx_string** %2653
  %2850 = load %nyx_string*, %nyx_string** %2653
  %2851 = getelementptr [2 x i8], [2 x i8]* @.str343, i32 0, i32 0
  %2852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %2851, i64 1)
  %2853 = call %nyx_string* @nyx_string_concat(%nyx_string* %2850, %nyx_string* %2852)
  store %nyx_string* %2853, %nyx_string** %2653
  %2854 = load %nyx_string*, %nyx_string** %2653
  %2855 = getelementptr [77 x i8], [77 x i8]* @.str344, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %2855, i64 76)
  %2857 = call %nyx_string* @nyx_string_concat(%nyx_string* %2854, %nyx_string* %2856)
  store %nyx_string* %2857, %nyx_string** %2653
  %2858 = load %nyx_string*, %nyx_string** %2653
  %2859 = getelementptr [53 x i8], [53 x i8]* @.str345, i32 0, i32 0
  %2860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %2859, i64 52)
  %2861 = call %nyx_string* @nyx_string_concat(%nyx_string* %2858, %nyx_string* %2860)
  store %nyx_string* %2861, %nyx_string** %2653
  %2862 = load %nyx_string*, %nyx_string** %2653
  %2863 = getelementptr [45 x i8], [45 x i8]* @.str346, i32 0, i32 0
  %2864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %2863, i64 44)
  %2865 = call %nyx_string* @nyx_string_concat(%nyx_string* %2862, %nyx_string* %2864)
  store %nyx_string* %2865, %nyx_string** %2653
  %2866 = load %nyx_string*, %nyx_string** %2653
  %2867 = getelementptr [26 x i8], [26 x i8]* @.str347, i32 0, i32 0
  %2868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %2867, i64 25)
  %2869 = call %nyx_string* @nyx_string_concat(%nyx_string* %2866, %nyx_string* %2868)
  store %nyx_string* %2869, %nyx_string** %2653
  %2870 = load %nyx_string*, %nyx_string** %2653
  %2871 = getelementptr [39 x i8], [39 x i8]* @.str348, i32 0, i32 0
  %2872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %2871, i64 38)
  %2873 = call %nyx_string* @nyx_string_concat(%nyx_string* %2870, %nyx_string* %2872)
  store %nyx_string* %2873, %nyx_string** %2653
  %2874 = load %nyx_string*, %nyx_string** %2653
  %2875 = getelementptr [35 x i8], [35 x i8]* @.str349, i32 0, i32 0
  %2876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %2875, i64 34)
  %2877 = call %nyx_string* @nyx_string_concat(%nyx_string* %2874, %nyx_string* %2876)
  store %nyx_string* %2877, %nyx_string** %2653
  %2878 = load %nyx_string*, %nyx_string** %2653
  %2879 = getelementptr [48 x i8], [48 x i8]* @.str350, i32 0, i32 0
  %2880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %2879, i64 47)
  %2881 = call %nyx_string* @nyx_string_concat(%nyx_string* %2878, %nyx_string* %2880)
  store %nyx_string* %2881, %nyx_string** %2653
  %2882 = load %nyx_string*, %nyx_string** %2653
  %2883 = getelementptr [20 x i8], [20 x i8]* @.str351, i32 0, i32 0
  %2884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %2883, i64 19)
  %2885 = call %nyx_string* @nyx_string_concat(%nyx_string* %2882, %nyx_string* %2884)
  store %nyx_string* %2885, %nyx_string** %2653
  %2886 = load %nyx_string*, %nyx_string** %2653
  %2887 = getelementptr [32 x i8], [32 x i8]* @.str352, i32 0, i32 0
  %2888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %2887, i64 31)
  %2889 = call %nyx_string* @nyx_string_concat(%nyx_string* %2886, %nyx_string* %2888)
  store %nyx_string* %2889, %nyx_string** %2653
  %2890 = load %nyx_string*, %nyx_string** %2653
  %2891 = getelementptr [37 x i8], [37 x i8]* @.str353, i32 0, i32 0
  %2892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %2891, i64 36)
  %2893 = call %nyx_string* @nyx_string_concat(%nyx_string* %2890, %nyx_string* %2892)
  store %nyx_string* %2893, %nyx_string** %2653
  %2894 = load %nyx_string*, %nyx_string** %2653
  %2895 = getelementptr [34 x i8], [34 x i8]* @.str354, i32 0, i32 0
  %2896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %2895, i64 33)
  %2897 = call %nyx_string* @nyx_string_concat(%nyx_string* %2894, %nyx_string* %2896)
  store %nyx_string* %2897, %nyx_string** %2653
  %2898 = load %nyx_string*, %nyx_string** %2653
  %2899 = getelementptr [101 x i8], [101 x i8]* @.str355, i32 0, i32 0
  %2900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %2899, i64 100)
  %2901 = call %nyx_string* @nyx_string_concat(%nyx_string* %2898, %nyx_string* %2900)
  store %nyx_string* %2901, %nyx_string** %2653
  %2902 = load %nyx_string*, %nyx_string** %2653
  %2903 = getelementptr [56 x i8], [56 x i8]* @.str356, i32 0, i32 0
  %2904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %2903, i64 55)
  %2905 = call %nyx_string* @nyx_string_concat(%nyx_string* %2902, %nyx_string* %2904)
  store %nyx_string* %2905, %nyx_string** %2653
  %2906 = load %nyx_string*, %nyx_string** %2653
  %2907 = getelementptr [24 x i8], [24 x i8]* @.str357, i32 0, i32 0
  %2908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %2907, i64 23)
  %2909 = call %nyx_string* @nyx_string_concat(%nyx_string* %2906, %nyx_string* %2908)
  store %nyx_string* %2909, %nyx_string** %2653
  %2910 = load %nyx_string*, %nyx_string** %2653
  %2911 = getelementptr [36 x i8], [36 x i8]* @.str358, i32 0, i32 0
  %2912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %2911, i64 35)
  %2913 = call %nyx_string* @nyx_string_concat(%nyx_string* %2910, %nyx_string* %2912)
  store %nyx_string* %2913, %nyx_string** %2653
  %2914 = load %nyx_string*, %nyx_string** %2653
  %2915 = getelementptr [41 x i8], [41 x i8]* @.str359, i32 0, i32 0
  %2916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %2915, i64 40)
  %2917 = call %nyx_string* @nyx_string_concat(%nyx_string* %2914, %nyx_string* %2916)
  store %nyx_string* %2917, %nyx_string** %2653
  %2918 = load %nyx_string*, %nyx_string** %2653
  %2919 = getelementptr [58 x i8], [58 x i8]* @.str360, i32 0, i32 0
  %2920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %2919, i64 57)
  %2921 = call %nyx_string* @nyx_string_concat(%nyx_string* %2918, %nyx_string* %2920)
  store %nyx_string* %2921, %nyx_string** %2653
  %2922 = load %nyx_string*, %nyx_string** %2653
  %2923 = getelementptr [99 x i8], [99 x i8]* @.str361, i32 0, i32 0
  %2924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %2923, i64 98)
  %2925 = call %nyx_string* @nyx_string_concat(%nyx_string* %2922, %nyx_string* %2924)
  store %nyx_string* %2925, %nyx_string** %2653
  %2926 = load %nyx_string*, %nyx_string** %2653
  %2927 = getelementptr [23 x i8], [23 x i8]* @.str362, i32 0, i32 0
  %2928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %2927, i64 22)
  %2929 = call %nyx_string* @nyx_string_concat(%nyx_string* %2926, %nyx_string* %2928)
  store %nyx_string* %2929, %nyx_string** %2653
  %2930 = load %nyx_string*, %nyx_string** %2653
  %2931 = getelementptr [11 x i8], [11 x i8]* @.str363, i32 0, i32 0
  %2932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %2931, i64 10)
  %2933 = call %nyx_string* @nyx_string_concat(%nyx_string* %2930, %nyx_string* %2932)
  store %nyx_string* %2933, %nyx_string** %2653
  %2934 = load %nyx_string*, %nyx_string** %2653
  %2935 = getelementptr [19 x i8], [19 x i8]* @.str364, i32 0, i32 0
  %2936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %2935, i64 18)
  %2937 = call %nyx_string* @nyx_string_concat(%nyx_string* %2934, %nyx_string* %2936)
  store %nyx_string* %2937, %nyx_string** %2653
  %2938 = load %nyx_string*, %nyx_string** %2653
  %2939 = getelementptr [7 x i8], [7 x i8]* @.str365, i32 0, i32 0
  %2940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %2939, i64 6)
  %2941 = call %nyx_string* @nyx_string_concat(%nyx_string* %2938, %nyx_string* %2940)
  store %nyx_string* %2941, %nyx_string** %2653
  %2942 = load %nyx_string*, %nyx_string** %2653
  %2943 = getelementptr [17 x i8], [17 x i8]* @.str366, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %2943, i64 16)
  %2945 = call %nyx_string* @nyx_string_concat(%nyx_string* %2942, %nyx_string* %2944)
  store %nyx_string* %2945, %nyx_string** %2653
  %2946 = load %nyx_string*, %nyx_string** %2653
  %2947 = getelementptr [3 x i8], [3 x i8]* @.str367, i32 0, i32 0
  %2948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %2947, i64 2)
  %2949 = call %nyx_string* @nyx_string_concat(%nyx_string* %2946, %nyx_string* %2948)
  store %nyx_string* %2949, %nyx_string** %2653
  %2950 = load %nyx_string*, %nyx_string** %2653
  %2951 = getelementptr [2 x i8], [2 x i8]* @.str368, i32 0, i32 0
  %2952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %2951, i64 1)
  %2953 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2952)
  store %nyx_string* %2953, %nyx_string** %2653
  %2954 = load %nyx_string*, %nyx_string** %2653
  %2955 = getelementptr [52 x i8], [52 x i8]* @.str369, i32 0, i32 0
  %2956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %2955, i64 51)
  %2957 = call %nyx_string* @nyx_string_concat(%nyx_string* %2954, %nyx_string* %2956)
  store %nyx_string* %2957, %nyx_string** %2653
  %2958 = load %nyx_string*, %nyx_string** %2653
  %2959 = getelementptr [39 x i8], [39 x i8]* @.str370, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %2959, i64 38)
  %2961 = call %nyx_string* @nyx_string_concat(%nyx_string* %2958, %nyx_string* %2960)
  store %nyx_string* %2961, %nyx_string** %2653
  %2962 = load %nyx_string*, %nyx_string** %2653
  %2963 = getelementptr [126 x i8], [126 x i8]* @.str371, i32 0, i32 0
  %2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %2963, i64 125)
  %2965 = call %nyx_string* @nyx_string_concat(%nyx_string* %2962, %nyx_string* %2964)
  store %nyx_string* %2965, %nyx_string** %2653
  %2966 = load %nyx_string*, %nyx_string** %2653
  %2967 = getelementptr [89 x i8], [89 x i8]* @.str372, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %2967, i64 88)
  %2969 = call %nyx_string* @nyx_string_concat(%nyx_string* %2966, %nyx_string* %2968)
  store %nyx_string* %2969, %nyx_string** %2653
  %2970 = load %nyx_string*, %nyx_string** %2653
  %2971 = getelementptr [3 x i8], [3 x i8]* @.str373, i32 0, i32 0
  %2972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %2971, i64 2)
  %2973 = call %nyx_string* @nyx_string_concat(%nyx_string* %2970, %nyx_string* %2972)
  store %nyx_string* %2973, %nyx_string** %2653
  %2974 = call { i64, i8* }* @gotchas_table()
  %2975 = alloca { i64, i8* }*
  store { i64, i8* }* %2974, { i64, i8* }** %2975
  %2976 = alloca i64
  store i64 0, i64* %2976
  %2977 = getelementptr [8 x i8], [8 x i8]* @.str374, i32 0, i32 0
  %2978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %2977, i64 7)
  %2979 = alloca %nyx_string*
  store %nyx_string* %2978, %nyx_string** %2979
  %2980 = getelementptr [1 x i8], [1 x i8]* @.str375, i32 0, i32 0
  %2981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %2980, i64 0)
  %2982 = alloca %nyx_string*
  store %nyx_string* %2981, %nyx_string** %2982
  %2983 = getelementptr [3 x i8], [3 x i8]* @.str376, i32 0, i32 0
  %2984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %2983, i64 2)
  %2985 = alloca %nyx_string*
  store %nyx_string* %2984, %nyx_string** %2985
  %2986 = getelementptr [9 x i8], [9 x i8]* @.str377, i32 0, i32 0
  %2987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %2986, i64 8)
  %2988 = alloca %nyx_string*
  store %nyx_string* %2987, %nyx_string** %2988
  %2989 = getelementptr [9 x i8], [9 x i8]* @.str378, i32 0, i32 0
  %2990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %2989, i64 8)
  %2991 = alloca %nyx_string*
  store %nyx_string* %2990, %nyx_string** %2991
  %2992 = getelementptr [2 x i8], [2 x i8]* @.str379, i32 0, i32 0
  %2993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %2992, i64 1)
  %2994 = alloca %nyx_string*
  store %nyx_string* %2993, %nyx_string** %2994
  %2995 = getelementptr [14 x i8], [14 x i8]* @.str380, i32 0, i32 0
  %2996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %2995, i64 13)
  %2997 = alloca %nyx_string*
  store %nyx_string* %2996, %nyx_string** %2997
  %2998 = getelementptr [3 x i8], [3 x i8]* @.str381, i32 0, i32 0
  %2999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %2998, i64 2)
  %3000 = alloca %nyx_string*
  store %nyx_string* %2999, %nyx_string** %3000
  %3001 = getelementptr [5 x i8], [5 x i8]* @.str382, i32 0, i32 0
  %3002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3001, i64 4)
  %3003 = alloca %nyx_string*
  store %nyx_string* %3002, %nyx_string** %3003
  %3004 = getelementptr [37 x i8], [37 x i8]* @.str383, i32 0, i32 0
  %3005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3004, i64 36)
  %3006 = alloca %nyx_string*
  store %nyx_string* %3005, %nyx_string** %3006
  %3007 = getelementptr [4 x i8], [4 x i8]* @.str384, i32 0, i32 0
  %3008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3007, i64 3)
  %3009 = alloca %nyx_string*
  store %nyx_string* %3008, %nyx_string** %3009
  %3010 = getelementptr [33 x i8], [33 x i8]* @.str385, i32 0, i32 0
  %3011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3010, i64 32)
  %3012 = alloca %nyx_string*
  store %nyx_string* %3011, %nyx_string** %3012
  %3013 = getelementptr [3 x i8], [3 x i8]* @.str386, i32 0, i32 0
  %3014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3013, i64 2)
  %3015 = alloca %nyx_string*
  store %nyx_string* %3014, %nyx_string** %3015
  %3016 = getelementptr [28 x i8], [28 x i8]* @.str387, i32 0, i32 0
  %3017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3016, i64 27)
  %3018 = alloca %nyx_string*
  store %nyx_string* %3017, %nyx_string** %3018
  %3019 = getelementptr [3 x i8], [3 x i8]* @.str388, i32 0, i32 0
  %3020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3019, i64 2)
  %3021 = alloca %nyx_string*
  store %nyx_string* %3020, %nyx_string** %3021
  %3022 = call i8* @llvm.stacksave()
  br label %while_cond527
while_cond527:
  %3023 = load i64, i64* %2976
  %3024 = load { i64, i8* }*, { i64, i8* }** %2975
  %3025 = call i64 @nyx_array_length({ i64, i8* }* %3024)
  %3026 = icmp slt i64 %3023, %3025
  br i1 %3026, label %while_body528, label %while_end529
while_body528:
  call void @llvm.stackrestore(i8* %3022)
  %3027 = load { i64, i8* }*, { i64, i8* }** %2975
  %3028 = load i64, i64* %2976
  %3029 = call i64 @nyx_array_get({ i64, i8* }* %3027, i64 %3028)
  %3030 = inttoptr i64 %3029 to { i64, i8* }*
  %3031 = alloca { i64, i8* }*
  store { i64, i8* }* %3030, { i64, i8* }** %3031
  %3032 = load { i64, i8* }*, { i64, i8* }** %3031
  %3033 = load %nyx_string*, %nyx_string** %2979
  %3034 = call %nyx_string* @gotcha_field({ i64, i8* }* %3032, %nyx_string* %3033)
  %3035 = alloca %nyx_string*
  store %nyx_string* %3034, %nyx_string** %3035
  %3036 = load %nyx_string*, %nyx_string** %3035
  %3037 = load %nyx_string*, %nyx_string** %2982
  %3038 = call i1 @nyx_string_equals(%nyx_string* %3036, %nyx_string* %3037)
  %3039 = xor i1 %3038, true
  br i1 %3039, label %then530, label %else531
then530:
  %3040 = load { i64, i8* }*, { i64, i8* }** %3031
  %3041 = load %nyx_string*, %nyx_string** %2985
  %3042 = call %nyx_string* @gotcha_field({ i64, i8* }* %3040, %nyx_string* %3041)
  %3043 = alloca %nyx_string*
  store %nyx_string* %3042, %nyx_string** %3043
  %3044 = load { i64, i8* }*, { i64, i8* }** %3031
  %3045 = load %nyx_string*, %nyx_string** %2988
  %3046 = call %nyx_string* @gotcha_field({ i64, i8* }* %3044, %nyx_string* %3045)
  %3047 = alloca %nyx_string*
  store %nyx_string* %3046, %nyx_string** %3047
  %3048 = load { i64, i8* }*, { i64, i8* }** %3031
  %3049 = load %nyx_string*, %nyx_string** %2991
  %3050 = call %nyx_string* @gotcha_field({ i64, i8* }* %3048, %nyx_string* %3049)
  %3051 = alloca %nyx_string*
  store %nyx_string* %3050, %nyx_string** %3051
  %3052 = load %nyx_string*, %nyx_string** %2653
  %3053 = load %nyx_string*, %nyx_string** %2994
  %3054 = call %nyx_string* @nyx_string_concat(%nyx_string* %3052, %nyx_string* %3053)
  store %nyx_string* %3054, %nyx_string** %2653
  %3055 = load %nyx_string*, %nyx_string** %2653
  %3056 = load %nyx_string*, %nyx_string** %2997
  %3057 = call %nyx_string* @nyx_string_concat(%nyx_string* %3055, %nyx_string* %3056)
  %3058 = load %nyx_string*, %nyx_string** %3043
  %3059 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3058)
  %3060 = load %nyx_string*, %nyx_string** %3000
  %3061 = call %nyx_string* @nyx_string_concat(%nyx_string* %3059, %nyx_string* %3060)
  %3062 = load %nyx_string*, %nyx_string** %3047
  %3063 = call %nyx_string* @nx_escape(%nyx_string* %3062)
  %3064 = call %nyx_string* @nyx_string_concat(%nyx_string* %3061, %nyx_string* %3063)
  %3065 = load %nyx_string*, %nyx_string** %3003
  %3066 = call %nyx_string* @nyx_string_concat(%nyx_string* %3064, %nyx_string* %3065)
  store %nyx_string* %3066, %nyx_string** %2653
  %3067 = load %nyx_string*, %nyx_string** %2653
  %3068 = load %nyx_string*, %nyx_string** %3006
  %3069 = call %nyx_string* @nyx_string_concat(%nyx_string* %3067, %nyx_string* %3068)
  %3070 = load %nyx_string*, %nyx_string** %3035
  %3071 = call %nyx_string* @nx_escape(%nyx_string* %3070)
  %3072 = call %nyx_string* @nyx_string_concat(%nyx_string* %3069, %nyx_string* %3071)
  %3073 = load %nyx_string*, %nyx_string** %3009
  %3074 = call %nyx_string* @nyx_string_concat(%nyx_string* %3072, %nyx_string* %3073)
  store %nyx_string* %3074, %nyx_string** %2653
  %3075 = load %nyx_string*, %nyx_string** %2653
  %3076 = load %nyx_string*, %nyx_string** %3012
  %3077 = call %nyx_string* @nyx_string_concat(%nyx_string* %3075, %nyx_string* %3076)
  %3078 = load %nyx_string*, %nyx_string** %3043
  %3079 = call %nyx_string* @nyx_string_concat(%nyx_string* %3077, %nyx_string* %3078)
  %3080 = load %nyx_string*, %nyx_string** %3015
  %3081 = call %nyx_string* @nyx_string_concat(%nyx_string* %3079, %nyx_string* %3080)
  %3082 = load %nyx_string*, %nyx_string** %3051
  %3083 = call %nyx_string* @nyx_string_concat(%nyx_string* %3081, %nyx_string* %3082)
  %3084 = load %nyx_string*, %nyx_string** %3018
  %3085 = call %nyx_string* @nyx_string_concat(%nyx_string* %3083, %nyx_string* %3084)
  store %nyx_string* %3085, %nyx_string** %2653
  %3086 = load %nyx_string*, %nyx_string** %2653
  %3087 = load %nyx_string*, %nyx_string** %3021
  %3088 = call %nyx_string* @nyx_string_concat(%nyx_string* %3086, %nyx_string* %3087)
  store %nyx_string* %3088, %nyx_string** %2653
  br label %merge532
else531:
  br label %merge532
merge532:
  %3089 = load i64, i64* %2976
  %3090 = add i64 %3089, 1
  store i64 %3090, i64* %2976
  br label %while_cond527
while_end529:
  %3091 = load %nyx_string*, %nyx_string** %2653
  %3092 = getelementptr [2 x i8], [2 x i8]* @.str389, i32 0, i32 0
  %3093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3092, i64 1)
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3091, %nyx_string* %3093)
  store %nyx_string* %3094, %nyx_string** %2653
  %3095 = load %nyx_string*, %nyx_string** %2653
  %3096 = getelementptr [47 x i8], [47 x i8]* @.str390, i32 0, i32 0
  %3097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3096, i64 46)
  %3098 = call %nyx_string* @nyx_string_concat(%nyx_string* %3095, %nyx_string* %3097)
  store %nyx_string* %3098, %nyx_string** %2653
  %3099 = load %nyx_string*, %nyx_string** %2653
  %3100 = getelementptr [39 x i8], [39 x i8]* @.str391, i32 0, i32 0
  %3101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3100, i64 38)
  %3102 = call %nyx_string* @nyx_string_concat(%nyx_string* %3099, %nyx_string* %3101)
  store %nyx_string* %3102, %nyx_string** %2653
  %3103 = load %nyx_string*, %nyx_string** %2653
  %3104 = getelementptr [50 x i8], [50 x i8]* @.str392, i32 0, i32 0
  %3105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3104, i64 49)
  %3106 = call %nyx_string* @nyx_string_concat(%nyx_string* %3103, %nyx_string* %3105)
  store %nyx_string* %3106, %nyx_string** %2653
  %3107 = load %nyx_string*, %nyx_string** %2653
  %3108 = getelementptr [20 x i8], [20 x i8]* @.str393, i32 0, i32 0
  %3109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3108, i64 19)
  %3110 = call %nyx_string* @nyx_string_concat(%nyx_string* %3107, %nyx_string* %3109)
  store %nyx_string* %3110, %nyx_string** %2653
  %3111 = load %nyx_string*, %nyx_string** %2653
  %3112 = getelementptr [32 x i8], [32 x i8]* @.str394, i32 0, i32 0
  %3113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3112, i64 31)
  %3114 = call %nyx_string* @nyx_string_concat(%nyx_string* %3111, %nyx_string* %3113)
  store %nyx_string* %3114, %nyx_string** %2653
  %3115 = load %nyx_string*, %nyx_string** %2653
  %3116 = getelementptr [34 x i8], [34 x i8]* @.str395, i32 0, i32 0
  %3117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3116, i64 33)
  %3118 = call %nyx_string* @nyx_string_concat(%nyx_string* %3115, %nyx_string* %3117)
  store %nyx_string* %3118, %nyx_string** %2653
  %3119 = load %nyx_string*, %nyx_string** %2653
  %3120 = getelementptr [114 x i8], [114 x i8]* @.str396, i32 0, i32 0
  %3121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3120, i64 113)
  %3122 = call %nyx_string* @nyx_string_concat(%nyx_string* %3119, %nyx_string* %3121)
  store %nyx_string* %3122, %nyx_string** %2653
  %3123 = load %nyx_string*, %nyx_string** %2653
  %3124 = getelementptr [19 x i8], [19 x i8]* @.str397, i32 0, i32 0
  %3125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3124, i64 18)
  %3126 = call %nyx_string* @nyx_string_concat(%nyx_string* %3123, %nyx_string* %3125)
  store %nyx_string* %3126, %nyx_string** %2653
  %3127 = load %nyx_string*, %nyx_string** %2653
  %3128 = getelementptr [7 x i8], [7 x i8]* @.str398, i32 0, i32 0
  %3129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3128, i64 6)
  %3130 = call %nyx_string* @nyx_string_concat(%nyx_string* %3127, %nyx_string* %3129)
  store %nyx_string* %3130, %nyx_string** %2653
  %3131 = load %nyx_string*, %nyx_string** %2653
  %3132 = getelementptr [3 x i8], [3 x i8]* @.str399, i32 0, i32 0
  %3133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3132, i64 2)
  %3134 = call %nyx_string* @nyx_string_concat(%nyx_string* %3131, %nyx_string* %3133)
  store %nyx_string* %3134, %nyx_string** %2653
  %3135 = load %nyx_string*, %nyx_string** %2653
  ret %nyx_string* %3135
}

define internal i64 @write_constitution_test(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %3136 = load %nyx_string*, %nyx_string** %dir.ptr
  %3137 = getelementptr [28 x i8], [28 x i8]* @.str400, i32 0, i32 0
  %3138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3137, i64 27)
  %3139 = call %nyx_string* @nyx_string_concat(%nyx_string* %3136, %nyx_string* %3138)
  %3140 = alloca %nyx_string*
  store %nyx_string* %3139, %nyx_string** %3140
  %3141 = call %nyx_string* @constitution_test_body()
  %3142 = alloca %nyx_string*
  store %nyx_string* %3141, %nyx_string** %3142
  %3143 = load %nyx_string*, %nyx_string** %3140
  %3144 = call i8* @nyx_string_to_cstr(%nyx_string* %3143)
  %3145 = call i1 @nyx_file_exists(i8* %3144)
  br i1 %3145, label %then533, label %else534
then533:
  %3146 = load %nyx_string*, %nyx_string** %3140
  %3147 = call i8* @nyx_string_to_cstr(%nyx_string* %3146)
  %3148 = call %nyx_string* @nyx_read_file(i8* %3147)
  %3149 = alloca %nyx_string*
  store %nyx_string* %3148, %nyx_string** %3149
  %3150 = load %nyx_string*, %nyx_string** %3149
  %3151 = load %nyx_string*, %nyx_string** %3142
  %3152 = call i1 @nyx_string_equals(%nyx_string* %3150, %nyx_string* %3151)
  br i1 %3152, label %then536, label %else537
then536:
  ret i64 0
else537:
  br label %merge538
merge538:
  %3153 = load %nyx_string*, %nyx_string** %3149
  %3154 = call %nyx_string* @sdd_generated_marker()
  %3155 = call i64 @nyx_string_index_of(%nyx_string* %3153, %nyx_string* %3154)
  %3156 = icmp slt i64 %3155, 0
  br i1 %3156, label %then539, label %else540
then539:
  ret i64 2
else540:
  br label %merge541
merge541:
  br label %merge535
else534:
  br label %merge535
merge535:
  %3157 = load %nyx_string*, %nyx_string** %3140
  %3158 = load %nyx_string*, %nyx_string** %3142
  %3159 = call i8* @nyx_string_to_cstr(%nyx_string* %3157)
  %3160 = call i1 @nyx_write_file_safe(i8* %3159, %nyx_string* %3158)
  ret i64 1
}

define internal i1 @add_agents_triggers(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3161 = load %nyx_string*, %nyx_string** %dir.ptr
  %3162 = getelementptr [11 x i8], [11 x i8]* @.str401, i32 0, i32 0
  %3163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3162, i64 10)
  %3164 = call %nyx_string* @nyx_string_concat(%nyx_string* %3161, %nyx_string* %3163)
  %3165 = alloca %nyx_string*
  store %nyx_string* %3164, %nyx_string** %3165
  %3166 = load %nyx_string*, %nyx_string** %3165
  %3167 = call i8* @nyx_string_to_cstr(%nyx_string* %3166)
  %3168 = call i1 @nyx_file_exists(i8* %3167)
  %3169 = icmp eq i1 %3168, 0
  br i1 %3169, label %then542, label %else543
then542:
  %3170 = getelementptr [30 x i8], [30 x i8]* @.str402, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3170, i64 29)
  %3172 = load %nyx_string*, %nyx_string** %dir.ptr
  %3173 = call %nyx_string* @nyx_string_concat(%nyx_string* %3171, %nyx_string* %3172)
  %3174 = getelementptr [80 x i8], [80 x i8]* @.str403, i32 0, i32 0
  %3175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3174, i64 79)
  %3176 = call %nyx_string* @nyx_string_concat(%nyx_string* %3173, %nyx_string* %3175)
  %3177 = call i8* @nyx_string_to_cstr(%nyx_string* %3176)
  call void @nyx_print_string(i8* %3177)
  ret i1 0
else543:
  br label %merge544
merge544:
  %3178 = load %nyx_string*, %nyx_string** %3165
  %3179 = call i8* @nyx_string_to_cstr(%nyx_string* %3178)
  %3180 = call %nyx_string* @nyx_read_file(i8* %3179)
  %3181 = alloca %nyx_string*
  store %nyx_string* %3180, %nyx_string** %3181
  %3182 = load %nyx_string*, %nyx_string** %3181
  %3183 = getelementptr [21 x i8], [21 x i8]* @.str404, i32 0, i32 0
  %3184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3183, i64 20)
  %3185 = call i64 @nyx_string_index_of(%nyx_string* %3182, %nyx_string* %3184)
  %3186 = icmp sge i64 %3185, 0
  br i1 %3186, label %then545, label %else546
then545:
  %3187 = load %nyx_string*, %nyx_string** %lang.ptr
  %3188 = getelementptr [47 x i8], [47 x i8]* @.str405, i32 0, i32 0
  %3189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3188, i64 46)
  %3190 = getelementptr [47 x i8], [47 x i8]* @.str406, i32 0, i32 0
  %3191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3190, i64 46)
  %3192 = call %nyx_string* @sdd_msg(%nyx_string* %3187, %nyx_string* %3189, %nyx_string* %3191)
  %3193 = call i8* @nyx_string_to_cstr(%nyx_string* %3192)
  call void @nyx_print_string(i8* %3193)
  ret i1 0
else546:
  br label %merge547
merge547:
  %3194 = getelementptr [22 x i8], [22 x i8]* @.str407, i32 0, i32 0
  %3195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3194, i64 21)
  %3196 = alloca %nyx_string*
  store %nyx_string* %3195, %nyx_string** %3196
  %3197 = load %nyx_string*, %nyx_string** %lang.ptr
  %3198 = getelementptr [3 x i8], [3 x i8]* @.str408, i32 0, i32 0
  %3199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3198, i64 2)
  %3200 = call i1 @nyx_string_equals(%nyx_string* %3197, %nyx_string* %3199)
  br i1 %3200, label %then548, label %else549
then548:
  %3201 = load %nyx_string*, %nyx_string** %3196
  %3202 = getelementptr [150 x i8], [150 x i8]* @.str409, i32 0, i32 0
  %3203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3202, i64 149)
  %3204 = call %nyx_string* @nyx_string_concat(%nyx_string* %3201, %nyx_string* %3203)
  store %nyx_string* %3204, %nyx_string** %3196
  %3205 = load %nyx_string*, %nyx_string** %3196
  %3206 = getelementptr [122 x i8], [122 x i8]* @.str410, i32 0, i32 0
  %3207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3206, i64 121)
  %3208 = call %nyx_string* @nyx_string_concat(%nyx_string* %3205, %nyx_string* %3207)
  store %nyx_string* %3208, %nyx_string** %3196
  br label %merge550
else549:
  %3209 = load %nyx_string*, %nyx_string** %3196
  %3210 = getelementptr [152 x i8], [152 x i8]* @.str411, i32 0, i32 0
  %3211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3210, i64 151)
  %3212 = call %nyx_string* @nyx_string_concat(%nyx_string* %3209, %nyx_string* %3211)
  store %nyx_string* %3212, %nyx_string** %3196
  %3213 = load %nyx_string*, %nyx_string** %3196
  %3214 = getelementptr [113 x i8], [113 x i8]* @.str412, i32 0, i32 0
  %3215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3214, i64 112)
  %3216 = call %nyx_string* @nyx_string_concat(%nyx_string* %3213, %nyx_string* %3215)
  store %nyx_string* %3216, %nyx_string** %3196
  br label %merge550
merge550:
  %3217 = getelementptr [19 x i8], [19 x i8]* @.str413, i32 0, i32 0
  %3218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3217, i64 18)
  %3219 = alloca %nyx_string*
  store %nyx_string* %3218, %nyx_string** %3219
  %3220 = load %nyx_string*, %nyx_string** %3181
  %3221 = load %nyx_string*, %nyx_string** %3219
  %3222 = call i64 @nyx_string_index_of(%nyx_string* %3220, %nyx_string* %3221)
  %3223 = alloca i64
  store i64 %3222, i64* %3223
  %3224 = load i64, i64* %3223
  %3225 = icmp slt i64 %3224, 0
  br i1 %3225, label %then551, label %else552
then551:
  %3226 = load %nyx_string*, %nyx_string** %3165
  %3227 = load %nyx_string*, %nyx_string** %3181
  %3228 = getelementptr [2 x i8], [2 x i8]* @.str414, i32 0, i32 0
  %3229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3228, i64 1)
  %3230 = call %nyx_string* @nyx_string_concat(%nyx_string* %3227, %nyx_string* %3229)
  %3231 = load %nyx_string*, %nyx_string** %3196
  %3232 = call %nyx_string* @nyx_string_concat(%nyx_string* %3230, %nyx_string* %3231)
  %3233 = call i8* @nyx_string_to_cstr(%nyx_string* %3226)
  %3234 = call i1 @nyx_write_file_safe(i8* %3233, %nyx_string* %3232)
  br label %merge553
else552:
  %3235 = load %nyx_string*, %nyx_string** %3165
  %3236 = load %nyx_string*, %nyx_string** %3181
  %3237 = load i64, i64* %3223
  %3238 = call %nyx_string* @nyx_string_substring(%nyx_string* %3236, i64 0, i64 %3237)
  %3239 = load %nyx_string*, %nyx_string** %3196
  %3240 = call %nyx_string* @nyx_string_concat(%nyx_string* %3238, %nyx_string* %3239)
  %3241 = getelementptr [2 x i8], [2 x i8]* @.str415, i32 0, i32 0
  %3242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3241, i64 1)
  %3243 = call %nyx_string* @nyx_string_concat(%nyx_string* %3240, %nyx_string* %3242)
  %3244 = load %nyx_string*, %nyx_string** %3181
  %3245 = load i64, i64* %3223
  %3246 = load %nyx_string*, %nyx_string** %3181
  %3247 = call i64 @nyx_string_byte_length(%nyx_string* %3246)
  %3248 = call %nyx_string* @nyx_string_substring(%nyx_string* %3244, i64 %3245, i64 %3247)
  %3249 = call %nyx_string* @nyx_string_concat(%nyx_string* %3243, %nyx_string* %3248)
  %3250 = call i8* @nyx_string_to_cstr(%nyx_string* %3235)
  %3251 = call i1 @nyx_write_file_safe(i8* %3250, %nyx_string* %3249)
  br label %merge553
merge553:
  %3252 = load %nyx_string*, %nyx_string** %lang.ptr
  %3253 = getelementptr [36 x i8], [36 x i8]* @.str416, i32 0, i32 0
  %3254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3253, i64 35)
  %3255 = getelementptr [40 x i8], [40 x i8]* @.str417, i32 0, i32 0
  %3256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3255, i64 39)
  %3257 = call %nyx_string* @sdd_msg(%nyx_string* %3252, %nyx_string* %3254, %nyx_string* %3256)
  %3258 = call i8* @nyx_string_to_cstr(%nyx_string* %3257)
  call void @nyx_print_string(i8* %3258)
  ret i1 1
}

define internal i1 @run_sdd_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3259 = getelementptr [11 x i8], [11 x i8]* @.str418, i32 0, i32 0
  %3260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3259, i64 10)
  %3261 = load %nyx_string*, %nyx_string** %dir.ptr
  %3262 = call %nyx_string* @nyx_string_concat(%nyx_string* %3260, %nyx_string* %3261)
  %3263 = getelementptr [16 x i8], [16 x i8]* @.str419, i32 0, i32 0
  %3264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3263, i64 15)
  %3265 = call %nyx_string* @nyx_string_concat(%nyx_string* %3262, %nyx_string* %3264)
  %3266 = call i8* @nyx_string_to_cstr(%nyx_string* %3265)
  %3267 = call %nyx_string* @nyx_exec(i8* %3266)
  %3268 = load %nyx_string*, %nyx_string** %dir.ptr
  %3269 = load %nyx_string*, %nyx_string** %lang.ptr
  %3270 = call i64 @write_evidence(%nyx_string* %3268, %nyx_string* %3269)
  %3271 = alloca i64
  store i64 %3270, i64* %3271
  %3272 = load i64, i64* %3271
  %3273 = icmp eq i64 %3272, 2
  br i1 %3273, label %then554, label %else555
then554:
  %3274 = load %nyx_string*, %nyx_string** %lang.ptr
  %3275 = getelementptr [59 x i8], [59 x i8]* @.str420, i32 0, i32 0
  %3276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3275, i64 58)
  %3277 = call %nyx_string* @toolchain_version()
  %3278 = call %nyx_string* @nyx_string_concat(%nyx_string* %3276, %nyx_string* %3277)
  %3279 = getelementptr [4 x i8], [4 x i8]* @.str421, i32 0, i32 0
  %3280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3279, i64 3)
  %3281 = call %nyx_string* @nyx_string_concat(%nyx_string* %3278, %nyx_string* %3280)
  %3282 = getelementptr [65 x i8], [65 x i8]* @.str422, i32 0, i32 0
  %3283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3282, i64 64)
  %3284 = call %nyx_string* @toolchain_version()
  %3285 = call %nyx_string* @nyx_string_concat(%nyx_string* %3283, %nyx_string* %3284)
  %3286 = getelementptr [4 x i8], [4 x i8]* @.str423, i32 0, i32 0
  %3287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3286, i64 3)
  %3288 = call %nyx_string* @nyx_string_concat(%nyx_string* %3285, %nyx_string* %3287)
  %3289 = call %nyx_string* @sdd_msg(%nyx_string* %3274, %nyx_string* %3281, %nyx_string* %3288)
  %3290 = call i8* @nyx_string_to_cstr(%nyx_string* %3289)
  call void @nyx_print_string(i8* %3290)
  br label %merge556
else555:
  br label %merge556
merge556:
  %3291 = load i64, i64* %3271
  %3292 = icmp eq i64 %3291, 1
  br i1 %3292, label %then557, label %else558
then557:
  %3293 = load %nyx_string*, %nyx_string** %lang.ptr
  %3294 = getelementptr [34 x i8], [34 x i8]* @.str424, i32 0, i32 0
  %3295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3294, i64 33)
  %3296 = call %nyx_string* @toolchain_version()
  %3297 = call %nyx_string* @nyx_string_concat(%nyx_string* %3295, %nyx_string* %3296)
  %3298 = getelementptr [4 x i8], [4 x i8]* @.str425, i32 0, i32 0
  %3299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3298, i64 3)
  %3300 = call %nyx_string* @nyx_string_concat(%nyx_string* %3297, %nyx_string* %3299)
  %3301 = getelementptr [33 x i8], [33 x i8]* @.str426, i32 0, i32 0
  %3302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3301, i64 32)
  %3303 = call %nyx_string* @toolchain_version()
  %3304 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3303)
  %3305 = getelementptr [4 x i8], [4 x i8]* @.str427, i32 0, i32 0
  %3306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3305, i64 3)
  %3307 = call %nyx_string* @nyx_string_concat(%nyx_string* %3304, %nyx_string* %3306)
  %3308 = call %nyx_string* @sdd_msg(%nyx_string* %3293, %nyx_string* %3300, %nyx_string* %3307)
  %3309 = call i8* @nyx_string_to_cstr(%nyx_string* %3308)
  call void @nyx_print_string(i8* %3309)
  br label %merge559
else558:
  br label %merge559
merge559:
  %3310 = load i64, i64* %3271
  %3311 = icmp eq i64 %3310, 0
  br i1 %3311, label %then560, label %else561
then560:
  %3312 = load %nyx_string*, %nyx_string** %lang.ptr
  %3313 = getelementptr [41 x i8], [41 x i8]* @.str428, i32 0, i32 0
  %3314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3313, i64 40)
  %3315 = call %nyx_string* @toolchain_version()
  %3316 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3315)
  %3317 = getelementptr [4 x i8], [4 x i8]* @.str429, i32 0, i32 0
  %3318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3317, i64 3)
  %3319 = call %nyx_string* @nyx_string_concat(%nyx_string* %3316, %nyx_string* %3318)
  %3320 = getelementptr [39 x i8], [39 x i8]* @.str430, i32 0, i32 0
  %3321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3320, i64 38)
  %3322 = call %nyx_string* @toolchain_version()
  %3323 = call %nyx_string* @nyx_string_concat(%nyx_string* %3321, %nyx_string* %3322)
  %3324 = getelementptr [4 x i8], [4 x i8]* @.str431, i32 0, i32 0
  %3325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3324, i64 3)
  %3326 = call %nyx_string* @nyx_string_concat(%nyx_string* %3323, %nyx_string* %3325)
  %3327 = call %nyx_string* @sdd_msg(%nyx_string* %3312, %nyx_string* %3319, %nyx_string* %3326)
  %3328 = call i8* @nyx_string_to_cstr(%nyx_string* %3327)
  call void @nyx_print_string(i8* %3328)
  br label %merge562
else561:
  br label %merge562
merge562:
  %3329 = load %nyx_string*, %nyx_string** %dir.ptr
  %3330 = getelementptr [28 x i8], [28 x i8]* @.str432, i32 0, i32 0
  %3331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3330, i64 27)
  %3332 = call %nyx_string* @nyx_string_concat(%nyx_string* %3329, %nyx_string* %3331)
  %3333 = call i8* @nyx_string_to_cstr(%nyx_string* %3332)
  %3334 = call i1 @nyx_file_exists(i8* %3333)
  br i1 %3334, label %then563, label %else564
then563:
  %3335 = load %nyx_string*, %nyx_string** %dir.ptr
  %3336 = call i64 @write_constitution_test(%nyx_string* %3335)
  %3337 = alloca i64
  store i64 %3336, i64* %3337
  %3338 = load i64, i64* %3337
  %3339 = icmp eq i64 %3338, 1
  br i1 %3339, label %then566, label %else567
then566:
  %3340 = load %nyx_string*, %nyx_string** %lang.ptr
  %3341 = getelementptr [42 x i8], [42 x i8]* @.str433, i32 0, i32 0
  %3342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3341, i64 41)
  %3343 = getelementptr [41 x i8], [41 x i8]* @.str434, i32 0, i32 0
  %3344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3343, i64 40)
  %3345 = call %nyx_string* @sdd_msg(%nyx_string* %3340, %nyx_string* %3342, %nyx_string* %3344)
  %3346 = call i8* @nyx_string_to_cstr(%nyx_string* %3345)
  call void @nyx_print_string(i8* %3346)
  br label %merge568
else567:
  br label %merge568
merge568:
  %3347 = load i64, i64* %3337
  %3348 = icmp eq i64 %3347, 2
  br i1 %3348, label %then569, label %else570
then569:
  %3349 = load %nyx_string*, %nyx_string** %lang.ptr
  %3350 = getelementptr [67 x i8], [67 x i8]* @.str435, i32 0, i32 0
  %3351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3350, i64 66)
  %3352 = getelementptr [73 x i8], [73 x i8]* @.str436, i32 0, i32 0
  %3353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3352, i64 72)
  %3354 = call %nyx_string* @sdd_msg(%nyx_string* %3349, %nyx_string* %3351, %nyx_string* %3353)
  %3355 = call i8* @nyx_string_to_cstr(%nyx_string* %3354)
  call void @nyx_print_string(i8* %3355)
  br label %merge571
else570:
  br label %merge571
merge571:
  %3356 = load i64, i64* %3337
  %3357 = icmp eq i64 %3356, 0
  br i1 %3357, label %then572, label %else573
then572:
  %3358 = load %nyx_string*, %nyx_string** %lang.ptr
  %3359 = getelementptr [49 x i8], [49 x i8]* @.str437, i32 0, i32 0
  %3360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3359, i64 48)
  %3361 = getelementptr [47 x i8], [47 x i8]* @.str438, i32 0, i32 0
  %3362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3361, i64 46)
  %3363 = call %nyx_string* @sdd_msg(%nyx_string* %3358, %nyx_string* %3360, %nyx_string* %3362)
  %3364 = call i8* @nyx_string_to_cstr(%nyx_string* %3363)
  call void @nyx_print_string(i8* %3364)
  br label %merge574
else573:
  br label %merge574
merge574:
  br label %merge565
else564:
  br label %merge565
merge565:
  ret i1 1
}

define internal i1 @run_sdd_init(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3365 = call %nyx_string* @resolve_seed_home()
  %3366 = alloca %nyx_string*
  store %nyx_string* %3365, %nyx_string** %3366
  %3367 = load %nyx_string*, %nyx_string** %3366
  %3368 = getelementptr [12 x i8], [12 x i8]* @.str439, i32 0, i32 0
  %3369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3368, i64 11)
  %3370 = call %nyx_string* @nyx_string_concat(%nyx_string* %3367, %nyx_string* %3369)
  %3371 = load %nyx_string*, %nyx_string** %lang.ptr
  %3372 = call %nyx_string* @nyx_string_concat(%nyx_string* %3370, %nyx_string* %3371)
  %3373 = getelementptr [5 x i8], [5 x i8]* @.str440, i32 0, i32 0
  %3374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3373, i64 4)
  %3375 = call %nyx_string* @nyx_string_concat(%nyx_string* %3372, %nyx_string* %3374)
  %3376 = alloca %nyx_string*
  store %nyx_string* %3375, %nyx_string** %3376
  %3377 = alloca i1
  store i1 true, i1* %3377
  %3378 = load %nyx_string*, %nyx_string** %3366
  %3379 = getelementptr [1 x i8], [1 x i8]* @.str441, i32 0, i32 0
  %3380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3379, i64 0)
  %3381 = call i1 @nyx_string_equals(%nyx_string* %3378, %nyx_string* %3380)
  br i1 %3381, label %sc_or_end576, label %sc_or_rhs575
sc_or_rhs575:
  %3382 = load %nyx_string*, %nyx_string** %3376
  %3383 = getelementptr [17 x i8], [17 x i8]* @.str442, i32 0, i32 0
  %3384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %3383, i64 16)
  %3385 = call %nyx_string* @nyx_string_concat(%nyx_string* %3382, %nyx_string* %3384)
  %3386 = call i8* @nyx_string_to_cstr(%nyx_string* %3385)
  %3387 = call i1 @nyx_file_exists(i8* %3386)
  %3388 = icmp eq i1 %3387, 0
  store i1 %3388, i1* %3377
  br label %sc_or_end576
sc_or_end576:
  %3389 = load i1, i1* %3377
  br i1 %3389, label %then577, label %else578
then577:
  %3390 = load %nyx_string*, %nyx_string** %lang.ptr
  %3391 = getelementptr [49 x i8], [49 x i8]* @.str443, i32 0, i32 0
  %3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %3391, i64 48)
  %3393 = load %nyx_string*, %nyx_string** %lang.ptr
  %3394 = call %nyx_string* @nyx_string_concat(%nyx_string* %3392, %nyx_string* %3393)
  %3395 = getelementptr [59 x i8], [59 x i8]* @.str444, i32 0, i32 0
  %3396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %3395, i64 58)
  %3397 = call %nyx_string* @nyx_string_concat(%nyx_string* %3394, %nyx_string* %3396)
  %3398 = getelementptr [61 x i8], [61 x i8]* @.str445, i32 0, i32 0
  %3399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %3398, i64 60)
  %3400 = load %nyx_string*, %nyx_string** %lang.ptr
  %3401 = call %nyx_string* @nyx_string_concat(%nyx_string* %3399, %nyx_string* %3400)
  %3402 = getelementptr [44 x i8], [44 x i8]* @.str446, i32 0, i32 0
  %3403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %3402, i64 43)
  %3404 = call %nyx_string* @nyx_string_concat(%nyx_string* %3401, %nyx_string* %3403)
  %3405 = call %nyx_string* @sdd_msg(%nyx_string* %3390, %nyx_string* %3397, %nyx_string* %3404)
  %3406 = call i8* @nyx_string_to_cstr(%nyx_string* %3405)
  call void @nyx_print_string(i8* %3406)
  %3407 = load %nyx_string*, %nyx_string** %lang.ptr
  %3408 = getelementptr [104 x i8], [104 x i8]* @.str447, i32 0, i32 0
  %3409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %3408, i64 103)
  %3410 = getelementptr [109 x i8], [109 x i8]* @.str448, i32 0, i32 0
  %3411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %3410, i64 108)
  %3412 = call %nyx_string* @sdd_msg(%nyx_string* %3407, %nyx_string* %3409, %nyx_string* %3411)
  %3413 = call i8* @nyx_string_to_cstr(%nyx_string* %3412)
  call void @nyx_print_string(i8* %3413)
  ret i1 0
else578:
  br label %merge579
merge579:
  %3414 = getelementptr [11 x i8], [11 x i8]* @.str449, i32 0, i32 0
  %3415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %3414, i64 10)
  %3416 = load %nyx_string*, %nyx_string** %dir.ptr
  %3417 = call %nyx_string* @nyx_string_concat(%nyx_string* %3415, %nyx_string* %3416)
  %3418 = getelementptr [13 x i8], [13 x i8]* @.str450, i32 0, i32 0
  %3419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %3418, i64 12)
  %3420 = call %nyx_string* @nyx_string_concat(%nyx_string* %3417, %nyx_string* %3419)
  %3421 = load %nyx_string*, %nyx_string** %dir.ptr
  %3422 = call %nyx_string* @nyx_string_concat(%nyx_string* %3420, %nyx_string* %3421)
  %3423 = getelementptr [13 x i8], [13 x i8]* @.str451, i32 0, i32 0
  %3424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %3423, i64 12)
  %3425 = call %nyx_string* @nyx_string_concat(%nyx_string* %3422, %nyx_string* %3424)
  %3426 = load %nyx_string*, %nyx_string** %dir.ptr
  %3427 = call %nyx_string* @nyx_string_concat(%nyx_string* %3425, %nyx_string* %3426)
  %3428 = getelementptr [18 x i8], [18 x i8]* @.str452, i32 0, i32 0
  %3429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %3428, i64 17)
  %3430 = call %nyx_string* @nyx_string_concat(%nyx_string* %3427, %nyx_string* %3429)
  %3431 = load %nyx_string*, %nyx_string** %dir.ptr
  %3432 = call %nyx_string* @nyx_string_concat(%nyx_string* %3430, %nyx_string* %3431)
  %3433 = getelementptr [10 x i8], [10 x i8]* @.str453, i32 0, i32 0
  %3434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %3433, i64 9)
  %3435 = call %nyx_string* @nyx_string_concat(%nyx_string* %3432, %nyx_string* %3434)
  %3436 = load %nyx_string*, %nyx_string** %dir.ptr
  %3437 = call %nyx_string* @nyx_string_concat(%nyx_string* %3435, %nyx_string* %3436)
  %3438 = getelementptr [8 x i8], [8 x i8]* @.str454, i32 0, i32 0
  %3439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %3438, i64 7)
  %3440 = call %nyx_string* @nyx_string_concat(%nyx_string* %3437, %nyx_string* %3439)
  %3441 = call i8* @nyx_string_to_cstr(%nyx_string* %3440)
  %3442 = call %nyx_string* @nyx_exec(i8* %3441)
  %3443 = load %nyx_string*, %nyx_string** %lang.ptr
  %3444 = getelementptr [40 x i8], [40 x i8]* @.str455, i32 0, i32 0
  %3445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %3444, i64 39)
  %3446 = getelementptr [38 x i8], [38 x i8]* @.str456, i32 0, i32 0
  %3447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %3446, i64 37)
  %3448 = call %nyx_string* @sdd_msg(%nyx_string* %3443, %nyx_string* %3445, %nyx_string* %3447)
  %3449 = call i8* @nyx_string_to_cstr(%nyx_string* %3448)
  call void @nyx_print_string(i8* %3449)
  %3450 = load %nyx_string*, %nyx_string** %3376
  %3451 = getelementptr [16 x i8], [16 x i8]* @.str457, i32 0, i32 0
  %3452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %3451, i64 15)
  %3453 = load %nyx_string*, %nyx_string** %dir.ptr
  %3454 = getelementptr [22 x i8], [22 x i8]* @.str458, i32 0, i32 0
  %3455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %3454, i64 21)
  %3456 = call %nyx_string* @nyx_string_concat(%nyx_string* %3453, %nyx_string* %3455)
  %3457 = load %nyx_string*, %nyx_string** %lang.ptr
  %3458 = call i1 @sdd_seed_template(%nyx_string* %3450, %nyx_string* %3452, %nyx_string* %3456, %nyx_string* %3457)
  %3459 = load %nyx_string*, %nyx_string** %3376
  %3460 = getelementptr [12 x i8], [12 x i8]* @.str459, i32 0, i32 0
  %3461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %3460, i64 11)
  %3462 = load %nyx_string*, %nyx_string** %dir.ptr
  %3463 = getelementptr [18 x i8], [18 x i8]* @.str460, i32 0, i32 0
  %3464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %3463, i64 17)
  %3465 = call %nyx_string* @nyx_string_concat(%nyx_string* %3462, %nyx_string* %3464)
  %3466 = load %nyx_string*, %nyx_string** %lang.ptr
  %3467 = call i1 @sdd_seed_template(%nyx_string* %3459, %nyx_string* %3461, %nyx_string* %3465, %nyx_string* %3466)
  %3468 = load %nyx_string*, %nyx_string** %3376
  %3469 = getelementptr [16 x i8], [16 x i8]* @.str461, i32 0, i32 0
  %3470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %3469, i64 15)
  %3471 = load %nyx_string*, %nyx_string** %dir.ptr
  %3472 = getelementptr [27 x i8], [27 x i8]* @.str462, i32 0, i32 0
  %3473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %3472, i64 26)
  %3474 = call %nyx_string* @nyx_string_concat(%nyx_string* %3471, %nyx_string* %3473)
  %3475 = load %nyx_string*, %nyx_string** %lang.ptr
  %3476 = call i1 @sdd_seed_template(%nyx_string* %3468, %nyx_string* %3470, %nyx_string* %3474, %nyx_string* %3475)
  %3477 = load %nyx_string*, %nyx_string** %3376
  %3478 = getelementptr [16 x i8], [16 x i8]* @.str463, i32 0, i32 0
  %3479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %3478, i64 15)
  %3480 = load %nyx_string*, %nyx_string** %dir.ptr
  %3481 = getelementptr [17 x i8], [17 x i8]* @.str464, i32 0, i32 0
  %3482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %3481, i64 16)
  %3483 = call %nyx_string* @nyx_string_concat(%nyx_string* %3480, %nyx_string* %3482)
  %3484 = load %nyx_string*, %nyx_string** %lang.ptr
  %3485 = call i1 @sdd_seed_template(%nyx_string* %3477, %nyx_string* %3479, %nyx_string* %3483, %nyx_string* %3484)
  %3486 = load %nyx_string*, %nyx_string** %3376
  %3487 = getelementptr [14 x i8], [14 x i8]* @.str465, i32 0, i32 0
  %3488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %3487, i64 13)
  %3489 = load %nyx_string*, %nyx_string** %dir.ptr
  %3490 = getelementptr [24 x i8], [24 x i8]* @.str466, i32 0, i32 0
  %3491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %3490, i64 23)
  %3492 = call %nyx_string* @nyx_string_concat(%nyx_string* %3489, %nyx_string* %3491)
  %3493 = load %nyx_string*, %nyx_string** %lang.ptr
  %3494 = call i1 @sdd_seed_template(%nyx_string* %3486, %nyx_string* %3488, %nyx_string* %3492, %nyx_string* %3493)
  %3495 = load %nyx_string*, %nyx_string** %dir.ptr
  %3496 = load %nyx_string*, %nyx_string** %lang.ptr
  %3497 = call i64 @write_evidence(%nyx_string* %3495, %nyx_string* %3496)
  %3498 = alloca i64
  store i64 %3497, i64* %3498
  %3499 = load %nyx_string*, %nyx_string** %dir.ptr
  %3500 = getelementptr [20 x i8], [20 x i8]* @.str467, i32 0, i32 0
  %3501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %3500, i64 19)
  %3502 = call %nyx_string* @nyx_string_concat(%nyx_string* %3499, %nyx_string* %3501)
  %3503 = call %nyx_string* @toolchain_version()
  %3504 = call %nyx_string* @nyx_string_concat(%nyx_string* %3502, %nyx_string* %3503)
  %3505 = getelementptr [4 x i8], [4 x i8]* @.str468, i32 0, i32 0
  %3506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %3505, i64 3)
  %3507 = call %nyx_string* @nyx_string_concat(%nyx_string* %3504, %nyx_string* %3506)
  %3508 = alloca %nyx_string*
  store %nyx_string* %3507, %nyx_string** %3508
  %3509 = load i64, i64* %3498
  %3510 = icmp eq i64 %3509, 1
  br i1 %3510, label %then580, label %else581
then580:
  %3511 = getelementptr [3 x i8], [3 x i8]* @.str469, i32 0, i32 0
  %3512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %3511, i64 2)
  %3513 = load %nyx_string*, %nyx_string** %3508
  %3514 = call %nyx_string* @nyx_string_concat(%nyx_string* %3512, %nyx_string* %3513)
  %3515 = load %nyx_string*, %nyx_string** %lang.ptr
  %3516 = getelementptr [13 x i8], [13 x i8]* @.str470, i32 0, i32 0
  %3517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %3516, i64 12)
  %3518 = getelementptr [12 x i8], [12 x i8]* @.str471, i32 0, i32 0
  %3519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %3518, i64 11)
  %3520 = call %nyx_string* @sdd_msg(%nyx_string* %3515, %nyx_string* %3517, %nyx_string* %3519)
  %3521 = call %nyx_string* @nyx_string_concat(%nyx_string* %3514, %nyx_string* %3520)
  %3522 = call i8* @nyx_string_to_cstr(%nyx_string* %3521)
  call void @nyx_print_string(i8* %3522)
  br label %merge582
else581:
  br label %merge582
merge582:
  %3523 = load i64, i64* %3498
  %3524 = icmp eq i64 %3523, 2
  br i1 %3524, label %then583, label %else584
then583:
  %3525 = load %nyx_string*, %nyx_string** %lang.ptr
  %3526 = getelementptr [41 x i8], [41 x i8]* @.str472, i32 0, i32 0
  %3527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %3526, i64 40)
  %3528 = load %nyx_string*, %nyx_string** %3508
  %3529 = call %nyx_string* @nyx_string_concat(%nyx_string* %3527, %nyx_string* %3528)
  %3530 = getelementptr [47 x i8], [47 x i8]* @.str473, i32 0, i32 0
  %3531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %3530, i64 46)
  %3532 = load %nyx_string*, %nyx_string** %3508
  %3533 = call %nyx_string* @nyx_string_concat(%nyx_string* %3531, %nyx_string* %3532)
  %3534 = call %nyx_string* @sdd_msg(%nyx_string* %3525, %nyx_string* %3529, %nyx_string* %3533)
  %3535 = call i8* @nyx_string_to_cstr(%nyx_string* %3534)
  call void @nyx_print_string(i8* %3535)
  br label %merge585
else584:
  br label %merge585
merge585:
  %3536 = load i64, i64* %3498
  %3537 = icmp eq i64 %3536, 0
  br i1 %3537, label %then586, label %else587
then586:
  %3538 = load %nyx_string*, %nyx_string** %lang.ptr
  %3539 = getelementptr [23 x i8], [23 x i8]* @.str474, i32 0, i32 0
  %3540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %3539, i64 22)
  %3541 = load %nyx_string*, %nyx_string** %3508
  %3542 = call %nyx_string* @nyx_string_concat(%nyx_string* %3540, %nyx_string* %3541)
  %3543 = getelementptr [21 x i8], [21 x i8]* @.str475, i32 0, i32 0
  %3544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %3543, i64 20)
  %3545 = load %nyx_string*, %nyx_string** %3508
  %3546 = call %nyx_string* @nyx_string_concat(%nyx_string* %3544, %nyx_string* %3545)
  %3547 = call %nyx_string* @sdd_msg(%nyx_string* %3538, %nyx_string* %3542, %nyx_string* %3546)
  %3548 = call i8* @nyx_string_to_cstr(%nyx_string* %3547)
  call void @nyx_print_string(i8* %3548)
  br label %merge588
else587:
  br label %merge588
merge588:
  %3549 = load %nyx_string*, %nyx_string** %dir.ptr
  %3550 = call i64 @write_constitution_test(%nyx_string* %3549)
  %3551 = alloca i64
  store i64 %3550, i64* %3551
  %3552 = load %nyx_string*, %nyx_string** %dir.ptr
  %3553 = getelementptr [28 x i8], [28 x i8]* @.str476, i32 0, i32 0
  %3554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %3553, i64 27)
  %3555 = call %nyx_string* @nyx_string_concat(%nyx_string* %3552, %nyx_string* %3554)
  %3556 = alloca %nyx_string*
  store %nyx_string* %3555, %nyx_string** %3556
  %3557 = load i64, i64* %3551
  %3558 = icmp eq i64 %3557, 1
  br i1 %3558, label %then589, label %else590
then589:
  %3559 = getelementptr [3 x i8], [3 x i8]* @.str477, i32 0, i32 0
  %3560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %3559, i64 2)
  %3561 = load %nyx_string*, %nyx_string** %3556
  %3562 = call %nyx_string* @nyx_string_concat(%nyx_string* %3560, %nyx_string* %3561)
  %3563 = load %nyx_string*, %nyx_string** %lang.ptr
  %3564 = getelementptr [13 x i8], [13 x i8]* @.str478, i32 0, i32 0
  %3565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %3564, i64 12)
  %3566 = getelementptr [12 x i8], [12 x i8]* @.str479, i32 0, i32 0
  %3567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %3566, i64 11)
  %3568 = call %nyx_string* @sdd_msg(%nyx_string* %3563, %nyx_string* %3565, %nyx_string* %3567)
  %3569 = call %nyx_string* @nyx_string_concat(%nyx_string* %3562, %nyx_string* %3568)
  %3570 = call i8* @nyx_string_to_cstr(%nyx_string* %3569)
  call void @nyx_print_string(i8* %3570)
  br label %merge591
else590:
  br label %merge591
merge591:
  %3571 = load i64, i64* %3551
  %3572 = icmp eq i64 %3571, 2
  br i1 %3572, label %then592, label %else593
then592:
  %3573 = load %nyx_string*, %nyx_string** %lang.ptr
  %3574 = getelementptr [41 x i8], [41 x i8]* @.str480, i32 0, i32 0
  %3575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %3574, i64 40)
  %3576 = load %nyx_string*, %nyx_string** %3556
  %3577 = call %nyx_string* @nyx_string_concat(%nyx_string* %3575, %nyx_string* %3576)
  %3578 = getelementptr [47 x i8], [47 x i8]* @.str481, i32 0, i32 0
  %3579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %3578, i64 46)
  %3580 = load %nyx_string*, %nyx_string** %3556
  %3581 = call %nyx_string* @nyx_string_concat(%nyx_string* %3579, %nyx_string* %3580)
  %3582 = call %nyx_string* @sdd_msg(%nyx_string* %3573, %nyx_string* %3577, %nyx_string* %3581)
  %3583 = call i8* @nyx_string_to_cstr(%nyx_string* %3582)
  call void @nyx_print_string(i8* %3583)
  br label %merge594
else593:
  br label %merge594
merge594:
  %3584 = load i64, i64* %3551
  %3585 = icmp eq i64 %3584, 0
  br i1 %3585, label %then595, label %else596
then595:
  %3586 = load %nyx_string*, %nyx_string** %lang.ptr
  %3587 = getelementptr [23 x i8], [23 x i8]* @.str482, i32 0, i32 0
  %3588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %3587, i64 22)
  %3589 = load %nyx_string*, %nyx_string** %3556
  %3590 = call %nyx_string* @nyx_string_concat(%nyx_string* %3588, %nyx_string* %3589)
  %3591 = getelementptr [21 x i8], [21 x i8]* @.str483, i32 0, i32 0
  %3592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %3591, i64 20)
  %3593 = load %nyx_string*, %nyx_string** %3556
  %3594 = call %nyx_string* @nyx_string_concat(%nyx_string* %3592, %nyx_string* %3593)
  %3595 = call %nyx_string* @sdd_msg(%nyx_string* %3586, %nyx_string* %3590, %nyx_string* %3594)
  %3596 = call i8* @nyx_string_to_cstr(%nyx_string* %3595)
  call void @nyx_print_string(i8* %3596)
  br label %merge597
else596:
  br label %merge597
merge597:
  %3597 = load %nyx_string*, %nyx_string** %dir.ptr
  %3598 = load %nyx_string*, %nyx_string** %lang.ptr
  %3599 = call i1 @add_agents_triggers(%nyx_string* %3597, %nyx_string* %3598)
  %3600 = getelementptr [1 x i8], [1 x i8]* @.str484, i32 0, i32 0
  %3601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %3600, i64 0)
  %3602 = call i8* @nyx_string_to_cstr(%nyx_string* %3601)
  call void @nyx_print_string(i8* %3602)
  %3603 = load %nyx_string*, %nyx_string** %lang.ptr
  %3604 = getelementptr [94 x i8], [94 x i8]* @.str485, i32 0, i32 0
  %3605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %3604, i64 93)
  %3606 = getelementptr [98 x i8], [98 x i8]* @.str486, i32 0, i32 0
  %3607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %3606, i64 97)
  %3608 = call %nyx_string* @sdd_msg(%nyx_string* %3603, %nyx_string* %3605, %nyx_string* %3607)
  %3609 = call i8* @nyx_string_to_cstr(%nyx_string* %3608)
  call void @nyx_print_string(i8* %3609)
  %3610 = load %nyx_string*, %nyx_string** %lang.ptr
  %3611 = getelementptr [89 x i8], [89 x i8]* @.str487, i32 0, i32 0
  %3612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %3611, i64 88)
  %3613 = getelementptr [90 x i8], [90 x i8]* @.str488, i32 0, i32 0
  %3614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %3613, i64 89)
  %3615 = call %nyx_string* @sdd_msg(%nyx_string* %3610, %nyx_string* %3612, %nyx_string* %3614)
  %3616 = call i8* @nyx_string_to_cstr(%nyx_string* %3615)
  call void @nyx_print_string(i8* %3616)
  %3617 = load %nyx_string*, %nyx_string** %lang.ptr
  %3618 = getelementptr [78 x i8], [78 x i8]* @.str489, i32 0, i32 0
  %3619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %3618, i64 77)
  %3620 = getelementptr [76 x i8], [76 x i8]* @.str490, i32 0, i32 0
  %3621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %3620, i64 75)
  %3622 = call %nyx_string* @sdd_msg(%nyx_string* %3617, %nyx_string* %3619, %nyx_string* %3621)
  %3623 = call i8* @nyx_string_to_cstr(%nyx_string* %3622)
  call void @nyx_print_string(i8* %3623)
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
  %3624 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %3625 = alloca %nyx_string*
  store %nyx_string* %3624, %nyx_string** %3625
  %3626 = load %nyx_string*, %nyx_string** %3625
  %3627 = getelementptr [1 x i8], [1 x i8]* @.str491, i32 0, i32 0
  %3628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %3627, i64 0)
  %3629 = call i1 @nyx_string_equals(%nyx_string* %3626, %nyx_string* %3628)
  %3630 = xor i1 %3629, true
  br i1 %3630, label %then598, label %else599
then598:
  %3631 = load %nyx_string*, %nyx_string** %3625
  %3632 = call i8* @nyx_string_to_cstr(%nyx_string* %3631)
  %3633 = call i1 @nyx_file_exists(i8* %3632)
  br i1 %3633, label %then601, label %else602
then601:
  %3634 = getelementptr [19 x i8], [19 x i8]* @.str492, i32 0, i32 0
  %3635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %3634, i64 18)
  %3636 = load %nyx_string*, %nyx_string** %3625
  %3637 = call %nyx_string* @nyx_string_concat(%nyx_string* %3635, %nyx_string* %3636)
  %3638 = getelementptr [17 x i8], [17 x i8]* @.str493, i32 0, i32 0
  %3639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %3638, i64 16)
  %3640 = call %nyx_string* @nyx_string_concat(%nyx_string* %3637, %nyx_string* %3639)
  %3641 = call i8* @nyx_string_to_cstr(%nyx_string* %3640)
  call void @nyx_print_string(i8* %3641)
  ret i1 0
else602:
  br label %merge603
merge603:
  %3642 = getelementptr [10 x i8], [10 x i8]* @.str494, i32 0, i32 0
  %3643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %3642, i64 9)
  %3644 = load %nyx_string*, %nyx_string** %3625
  %3645 = call %nyx_string* @nyx_string_concat(%nyx_string* %3643, %nyx_string* %3644)
  %3646 = getelementptr [5 x i8], [5 x i8]* @.str495, i32 0, i32 0
  %3647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %3646, i64 4)
  %3648 = call %nyx_string* @nyx_string_concat(%nyx_string* %3645, %nyx_string* %3647)
  %3649 = call i8* @nyx_string_to_cstr(%nyx_string* %3648)
  %3650 = call %nyx_string* @nyx_exec(i8* %3649)
  %3651 = getelementptr [19 x i8], [19 x i8]* @.str496, i32 0, i32 0
  %3652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %3651, i64 18)
  %3653 = load %nyx_string*, %nyx_string** %3625
  %3654 = call %nyx_string* @nyx_string_concat(%nyx_string* %3652, %nyx_string* %3653)
  %3655 = getelementptr [58 x i8], [58 x i8]* @.str497, i32 0, i32 0
  %3656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %3655, i64 57)
  %3657 = call %nyx_string* @nyx_string_concat(%nyx_string* %3654, %nyx_string* %3656)
  %3658 = alloca %nyx_string*
  store %nyx_string* %3657, %nyx_string** %3658
  %3659 = load %nyx_string*, %nyx_string** %3625
  %3660 = getelementptr [10 x i8], [10 x i8]* @.str498, i32 0, i32 0
  %3661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %3660, i64 9)
  %3662 = call %nyx_string* @nyx_string_concat(%nyx_string* %3659, %nyx_string* %3661)
  %3663 = load %nyx_string*, %nyx_string** %3658
  %3664 = call i8* @nyx_string_to_cstr(%nyx_string* %3662)
  %3665 = call i1 @nyx_write_file_safe(i8* %3664, %nyx_string* %3663)
  %3666 = load %nyx_string*, %nyx_string** %3625
  %3667 = getelementptr [13 x i8], [13 x i8]* @.str499, i32 0, i32 0
  %3668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %3667, i64 12)
  %3669 = call %nyx_string* @nyx_string_concat(%nyx_string* %3666, %nyx_string* %3668)
  %3670 = getelementptr [35 x i8], [35 x i8]* @.str500, i32 0, i32 0
  %3671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %3670, i64 34)
  %3672 = load %nyx_string*, %nyx_string** %3625
  %3673 = call %nyx_string* @nyx_string_concat(%nyx_string* %3671, %nyx_string* %3672)
  %3674 = getelementptr [7 x i8], [7 x i8]* @.str501, i32 0, i32 0
  %3675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %3674, i64 6)
  %3676 = call %nyx_string* @nyx_string_concat(%nyx_string* %3673, %nyx_string* %3675)
  %3677 = call i8* @nyx_string_to_cstr(%nyx_string* %3669)
  %3678 = call i1 @nyx_write_file_safe(i8* %3677, %nyx_string* %3676)
  %3679 = load %nyx_string*, %nyx_string** %3625
  %3680 = load %nyx_string*, %nyx_string** %lang.ptr
  %3681 = load %nyx_string*, %nyx_string** %agents.ptr
  %3682 = call i64 @scaffold_project_files(%nyx_string* %3679, %nyx_string* %3680, %nyx_string* %3681)
  %3683 = load %nyx_string*, %nyx_string** %3625
  %3684 = load %nyx_string*, %nyx_string** %3625
  %3685 = call i64 @seed_gitignore(%nyx_string* %3683, %nyx_string* %3684)
  %3686 = getelementptr [22 x i8], [22 x i8]* @.str502, i32 0, i32 0
  %3687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %3686, i64 21)
  %3688 = load %nyx_string*, %nyx_string** %3625
  %3689 = call %nyx_string* @nyx_string_concat(%nyx_string* %3687, %nyx_string* %3688)
  %3690 = call i8* @nyx_string_to_cstr(%nyx_string* %3689)
  call void @nyx_print_string(i8* %3690)
  %3691 = getelementptr [12 x i8], [12 x i8]* @.str503, i32 0, i32 0
  %3692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %3691, i64 11)
  %3693 = load %nyx_string*, %nyx_string** %3625
  %3694 = call %nyx_string* @nyx_string_concat(%nyx_string* %3692, %nyx_string* %3693)
  %3695 = getelementptr [2 x i8], [2 x i8]* @.str504, i32 0, i32 0
  %3696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %3695, i64 1)
  %3697 = call %nyx_string* @nyx_string_concat(%nyx_string* %3694, %nyx_string* %3696)
  %3698 = call i8* @nyx_string_to_cstr(%nyx_string* %3697)
  call void @nyx_print_string(i8* %3698)
  %3699 = getelementptr [15 x i8], [15 x i8]* @.str505, i32 0, i32 0
  %3700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %3699, i64 14)
  %3701 = load %nyx_string*, %nyx_string** %3625
  %3702 = call %nyx_string* @nyx_string_concat(%nyx_string* %3700, %nyx_string* %3701)
  %3703 = getelementptr [12 x i8], [12 x i8]* @.str506, i32 0, i32 0
  %3704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %3703, i64 11)
  %3705 = call %nyx_string* @nyx_string_concat(%nyx_string* %3702, %nyx_string* %3704)
  %3706 = call i8* @nyx_string_to_cstr(%nyx_string* %3705)
  call void @nyx_print_string(i8* %3706)
  ret i1 1
else599:
  br label %merge600
merge600:
  %3707 = getelementptr [9 x i8], [9 x i8]* @.str507, i32 0, i32 0
  %3708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %3707, i64 8)
  %3709 = call i8* @nyx_string_to_cstr(%nyx_string* %3708)
  %3710 = call i1 @nyx_file_exists(i8* %3709)
  br i1 %3710, label %then604, label %else605
then604:
  %3711 = getelementptr [31 x i8], [31 x i8]* @.str508, i32 0, i32 0
  %3712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %3711, i64 30)
  %3713 = call i8* @nyx_string_to_cstr(%nyx_string* %3712)
  call void @nyx_print_string(i8* %3713)
  ret i1 0
else605:
  br label %merge606
merge606:
  %3714 = getelementptr [4 x i8], [4 x i8]* @.str509, i32 0, i32 0
  %3715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %3714, i64 3)
  %3716 = call i8* @nyx_string_to_cstr(%nyx_string* %3715)
  %3717 = call %nyx_string* @nyx_getenv(i8* %3716)
  %3718 = alloca %nyx_string*
  store %nyx_string* %3717, %nyx_string** %3718
  %3719 = getelementptr [6 x i8], [6 x i8]* @.str510, i32 0, i32 0
  %3720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %3719, i64 5)
  store %nyx_string* %3720, %nyx_string** %3625
  %3721 = sub i64 0, 1
  %3722 = alloca i64
  store i64 %3721, i64* %3722
  %3723 = alloca i64
  store i64 0, i64* %3723
  %3724 = call i8* @llvm.stacksave()
  br label %while_cond607
while_cond607:
  %3725 = load i64, i64* %3723
  %3726 = load %nyx_string*, %nyx_string** %3718
  %3727 = call i64 @nyx_string_byte_length(%nyx_string* %3726)
  %3728 = icmp slt i64 %3725, %3727
  br i1 %3728, label %while_body608, label %while_end609
while_body608:
  call void @llvm.stackrestore(i8* %3724)
  %3729 = load %nyx_string*, %nyx_string** %3718
  %3730 = load i64, i64* %3723
  %3731 = call i8 @nyx_string_char_at(%nyx_string* %3729, i64 %3730)
  %3732 = zext i8 %3731 to i64
  %3733 = icmp eq i64 %3732, 47
  br i1 %3733, label %then610, label %else611
then610:
  %3734 = load i64, i64* %3723
  store i64 %3734, i64* %3722
  br label %merge612
else611:
  br label %merge612
merge612:
  %3735 = load i64, i64* %3723
  %3736 = add i64 %3735, 1
  store i64 %3736, i64* %3723
  br label %while_cond607
while_end609:
  %3737 = load i64, i64* %3722
  %3738 = icmp sge i64 %3737, 0
  br i1 %3738, label %then613, label %else614
then613:
  %3739 = load %nyx_string*, %nyx_string** %3718
  %3740 = load i64, i64* %3722
  %3741 = add i64 %3740, 1
  %3742 = load %nyx_string*, %nyx_string** %3718
  %3743 = call i64 @nyx_string_byte_length(%nyx_string* %3742)
  %3744 = call %nyx_string* @nyx_string_substring(%nyx_string* %3739, i64 %3741, i64 %3743)
  store %nyx_string* %3744, %nyx_string** %3625
  br label %merge615
else614:
  br label %merge615
merge615:
  %3745 = getelementptr [19 x i8], [19 x i8]* @.str511, i32 0, i32 0
  %3746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %3745, i64 18)
  %3747 = load %nyx_string*, %nyx_string** %3625
  %3748 = call %nyx_string* @nyx_string_concat(%nyx_string* %3746, %nyx_string* %3747)
  %3749 = getelementptr [58 x i8], [58 x i8]* @.str512, i32 0, i32 0
  %3750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %3749, i64 57)
  %3751 = call %nyx_string* @nyx_string_concat(%nyx_string* %3748, %nyx_string* %3750)
  %3752 = alloca %nyx_string*
  store %nyx_string* %3751, %nyx_string** %3752
  %3753 = getelementptr [9 x i8], [9 x i8]* @.str513, i32 0, i32 0
  %3754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %3753, i64 8)
  %3755 = load %nyx_string*, %nyx_string** %3752
  %3756 = call i8* @nyx_string_to_cstr(%nyx_string* %3754)
  %3757 = call i1 @nyx_write_file_safe(i8* %3756, %nyx_string* %3755)
  %3758 = getelementptr [13 x i8], [13 x i8]* @.str514, i32 0, i32 0
  %3759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %3758, i64 12)
  %3760 = call i8* @nyx_string_to_cstr(%nyx_string* %3759)
  %3761 = call %nyx_string* @nyx_exec(i8* %3760)
  %3762 = getelementptr [12 x i8], [12 x i8]* @.str515, i32 0, i32 0
  %3763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %3762, i64 11)
  %3764 = call i8* @nyx_string_to_cstr(%nyx_string* %3763)
  %3765 = call i1 @nyx_file_exists(i8* %3764)
  %3766 = icmp eq i1 %3765, 0
  br i1 %3766, label %then616, label %else617
then616:
  %3767 = getelementptr [12 x i8], [12 x i8]* @.str516, i32 0, i32 0
  %3768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %3767, i64 11)
  %3769 = getelementptr [35 x i8], [35 x i8]* @.str517, i32 0, i32 0
  %3770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %3769, i64 34)
  %3771 = load %nyx_string*, %nyx_string** %3625
  %3772 = call %nyx_string* @nyx_string_concat(%nyx_string* %3770, %nyx_string* %3771)
  %3773 = getelementptr [7 x i8], [7 x i8]* @.str518, i32 0, i32 0
  %3774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %3773, i64 6)
  %3775 = call %nyx_string* @nyx_string_concat(%nyx_string* %3772, %nyx_string* %3774)
  %3776 = call i8* @nyx_string_to_cstr(%nyx_string* %3768)
  %3777 = call i1 @nyx_write_file_safe(i8* %3776, %nyx_string* %3775)
  br label %merge618
else617:
  br label %merge618
merge618:
  %3778 = getelementptr [2 x i8], [2 x i8]* @.str519, i32 0, i32 0
  %3779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %3778, i64 1)
  %3780 = load %nyx_string*, %nyx_string** %lang.ptr
  %3781 = load %nyx_string*, %nyx_string** %agents.ptr
  %3782 = call i64 @scaffold_project_files(%nyx_string* %3779, %nyx_string* %3780, %nyx_string* %3781)
  %3783 = getelementptr [2 x i8], [2 x i8]* @.str520, i32 0, i32 0
  %3784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %3783, i64 1)
  %3785 = load %nyx_string*, %nyx_string** %3625
  %3786 = call i64 @seed_gitignore(%nyx_string* %3784, %nyx_string* %3785)
  %3787 = getelementptr [22 x i8], [22 x i8]* @.str521, i32 0, i32 0
  %3788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %3787, i64 21)
  %3789 = load %nyx_string*, %nyx_string** %3625
  %3790 = call %nyx_string* @nyx_string_concat(%nyx_string* %3788, %nyx_string* %3789)
  %3791 = call i8* @nyx_string_to_cstr(%nyx_string* %3790)
  call void @nyx_print_string(i8* %3791)
  %3792 = getelementptr [33 x i8], [33 x i8]* @.str522, i32 0, i32 0
  %3793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %3792, i64 32)
  %3794 = call i8* @nyx_string_to_cstr(%nyx_string* %3793)
  call void @nyx_print_string(i8* %3794)
  %3795 = getelementptr [21 x i8], [21 x i8]* @.str523, i32 0, i32 0
  %3796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %3795, i64 20)
  %3797 = call i8* @nyx_string_to_cstr(%nyx_string* %3796)
  call void @nyx_print_string(i8* %3797)
  %3798 = getelementptr [19 x i8], [19 x i8]* @.str524, i32 0, i32 0
  %3799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %3798, i64 18)
  %3800 = call i8* @nyx_string_to_cstr(%nyx_string* %3799)
  call void @nyx_print_string(i8* %3800)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %3801 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3802 = load { i64, i8* }*, { i64, i8* }** %3801
  %3803 = call i64 @nyx_array_length({ i64, i8* }* %3802)
  %3804 = icmp eq i64 %3803, 0
  br i1 %3804, label %then619, label %else620
then619:
  ret i1 1
else620:
  br label %merge621
merge621:
  %3805 = alloca i64
  store i64 0, i64* %3805
  %3806 = getelementptr [10 x i8], [10 x i8]* @.str525, i32 0, i32 0
  %3807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %3806, i64 9)
  %3808 = alloca %nyx_string*
  store %nyx_string* %3807, %nyx_string** %3808
  %3809 = getelementptr [14 x i8], [14 x i8]* @.str526, i32 0, i32 0
  %3810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %3809, i64 13)
  %3811 = alloca %nyx_string*
  store %nyx_string* %3810, %nyx_string** %3811
  %3812 = getelementptr [5 x i8], [5 x i8]* @.str527, i32 0, i32 0
  %3813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %3812, i64 4)
  %3814 = alloca %nyx_string*
  store %nyx_string* %3813, %nyx_string** %3814
  %3815 = getelementptr [4 x i8], [4 x i8]* @.str528, i32 0, i32 0
  %3816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %3815, i64 3)
  %3817 = alloca %nyx_string*
  store %nyx_string* %3816, %nyx_string** %3817
  %3818 = getelementptr [32 x i8], [32 x i8]* @.str529, i32 0, i32 0
  %3819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %3818, i64 31)
  %3820 = alloca %nyx_string*
  store %nyx_string* %3819, %nyx_string** %3820
  %3821 = getelementptr [43 x i8], [43 x i8]* @.str530, i32 0, i32 0
  %3822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %3821, i64 42)
  %3823 = alloca %nyx_string*
  store %nyx_string* %3822, %nyx_string** %3823
  %3824 = getelementptr [2 x i8], [2 x i8]* @.str531, i32 0, i32 0
  %3825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %3824, i64 1)
  %3826 = alloca %nyx_string*
  store %nyx_string* %3825, %nyx_string** %3826
  %3827 = getelementptr [13 x i8], [13 x i8]* @.str532, i32 0, i32 0
  %3828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %3827, i64 12)
  %3829 = alloca %nyx_string*
  store %nyx_string* %3828, %nyx_string** %3829
  %3830 = getelementptr [26 x i8], [26 x i8]* @.str533, i32 0, i32 0
  %3831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %3830, i64 25)
  %3832 = alloca %nyx_string*
  store %nyx_string* %3831, %nyx_string** %3832
  %3833 = getelementptr [7 x i8], [7 x i8]* @.str534, i32 0, i32 0
  %3834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %3833, i64 6)
  %3835 = alloca %nyx_string*
  store %nyx_string* %3834, %nyx_string** %3835
  %3836 = getelementptr [12 x i8], [12 x i8]* @.str535, i32 0, i32 0
  %3837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %3836, i64 11)
  %3838 = alloca %nyx_string*
  store %nyx_string* %3837, %nyx_string** %3838
  %3839 = call i8* @llvm.stacksave()
  br label %while_cond622
while_cond622:
  %3840 = load i64, i64* %3805
  %3841 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3842 = load { i64, i8* }*, { i64, i8* }** %3841
  %3843 = call i64 @nyx_array_length({ i64, i8* }* %3842)
  %3844 = icmp slt i64 %3840, %3843
  br i1 %3844, label %while_body623, label %while_end624
while_body623:
  call void @llvm.stackrestore(i8* %3839)
  %3845 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3846 = load { i64, i8* }*, { i64, i8* }** %3845
  %3847 = load i64, i64* %3805
  %3848 = call i64 @nyx_array_get({ i64, i8* }* %3846, i64 %3847)
  %3849 = inttoptr i64 %3848 to %nyx_string*
  %3850 = alloca %nyx_string*
  store %nyx_string* %3849, %nyx_string** %3850
  %3851 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %3852 = load { i64, i8* }*, { i64, i8* }** %3851
  %3853 = load i64, i64* %3805
  %3854 = call i64 @nyx_array_get({ i64, i8* }* %3852, i64 %3853)
  %3855 = inttoptr i64 %3854 to %nyx_string*
  %3856 = alloca %nyx_string*
  store %nyx_string* %3855, %nyx_string** %3856
  %3857 = load %nyx_string*, %nyx_string** %3808
  %3858 = load %nyx_string*, %nyx_string** %3850
  %3859 = call %nyx_string* @nyx_string_concat(%nyx_string* %3857, %nyx_string* %3858)
  %3860 = alloca %nyx_string*
  store %nyx_string* %3859, %nyx_string** %3860
  %3861 = load %nyx_string*, %nyx_string** %3860
  %3862 = call i8* @nyx_string_to_cstr(%nyx_string* %3861)
  %3863 = call i1 @nyx_file_exists(i8* %3862)
  %3864 = icmp eq i1 %3863, 0
  br i1 %3864, label %then625, label %else626
then625:
  %3865 = load %nyx_string*, %nyx_string** %3811
  %3866 = load %nyx_string*, %nyx_string** %3850
  %3867 = call %nyx_string* @nyx_string_concat(%nyx_string* %3865, %nyx_string* %3866)
  %3868 = call i8* @nyx_string_to_cstr(%nyx_string* %3867)
  call void @nyx_print_string(i8* %3868)
  %3869 = load %nyx_string*, %nyx_string** %3856
  %3870 = alloca %nyx_string*
  store %nyx_string* %3869, %nyx_string** %3870
  %3871 = alloca i1
  store i1 false, i1* %3871
  %3872 = load %nyx_string*, %nyx_string** %3870
  %3873 = load %nyx_string*, %nyx_string** %3814
  %3874 = call i1 @nyx_string_starts_with(%nyx_string* %3872, %nyx_string* %3873)
  %3875 = icmp eq i1 %3874, 0
  br i1 %3875, label %sc_and_rhs628, label %sc_and_end629
sc_and_rhs628:
  %3876 = load %nyx_string*, %nyx_string** %3870
  %3877 = load %nyx_string*, %nyx_string** %3817
  %3878 = call i1 @nyx_string_starts_with(%nyx_string* %3876, %nyx_string* %3877)
  %3879 = icmp eq i1 %3878, 0
  store i1 %3879, i1* %3871
  br label %sc_and_end629
sc_and_end629:
  %3880 = load i1, i1* %3871
  br i1 %3880, label %then630, label %else631
then630:
  %3881 = load %nyx_string*, %nyx_string** %3820
  %3882 = load %nyx_string*, %nyx_string** %3850
  %3883 = call %nyx_string* @nyx_string_concat(%nyx_string* %3881, %nyx_string* %3882)
  store %nyx_string* %3883, %nyx_string** %3870
  br label %merge632
else631:
  br label %merge632
merge632:
  %3884 = load %nyx_string*, %nyx_string** %3823
  %3885 = load %nyx_string*, %nyx_string** %3870
  %3886 = call %nyx_string* @nyx_string_concat(%nyx_string* %3884, %nyx_string* %3885)
  %3887 = load %nyx_string*, %nyx_string** %3826
  %3888 = call %nyx_string* @nyx_string_concat(%nyx_string* %3886, %nyx_string* %3887)
  %3889 = load %nyx_string*, %nyx_string** %3860
  %3890 = call %nyx_string* @nyx_string_concat(%nyx_string* %3888, %nyx_string* %3889)
  %3891 = load %nyx_string*, %nyx_string** %3829
  %3892 = call %nyx_string* @nyx_string_concat(%nyx_string* %3890, %nyx_string* %3891)
  %3893 = alloca %nyx_string*
  store %nyx_string* %3892, %nyx_string** %3893
  %3894 = load %nyx_string*, %nyx_string** %3893
  %3895 = call i8* @nyx_string_to_cstr(%nyx_string* %3894)
  %3896 = call i64 @nyx_exec_code(i8* %3895)
  %3897 = alloca i64
  store i64 %3896, i64* %3897
  %3898 = load i64, i64* %3897
  %3899 = icmp ne i64 %3898, 0
  br i1 %3899, label %then633, label %else634
then633:
  %3900 = load %nyx_string*, %nyx_string** %3832
  %3901 = load %nyx_string*, %nyx_string** %3850
  %3902 = call %nyx_string* @nyx_string_concat(%nyx_string* %3900, %nyx_string* %3901)
  %3903 = load %nyx_string*, %nyx_string** %3835
  %3904 = call %nyx_string* @nyx_string_concat(%nyx_string* %3902, %nyx_string* %3903)
  %3905 = load %nyx_string*, %nyx_string** %3870
  %3906 = call %nyx_string* @nyx_string_concat(%nyx_string* %3904, %nyx_string* %3905)
  %3907 = call i8* @nyx_string_to_cstr(%nyx_string* %3906)
  call void @nyx_print_string(i8* %3907)
  ret i1 0
else634:
  br label %merge635
merge635:
  %3908 = load %nyx_string*, %nyx_string** %3838
  %3909 = load %nyx_string*, %nyx_string** %3850
  %3910 = call %nyx_string* @nyx_string_concat(%nyx_string* %3908, %nyx_string* %3909)
  %3911 = call i8* @nyx_string_to_cstr(%nyx_string* %3910)
  call void @nyx_print_string(i8* %3911)
  br label %merge627
else626:
  br label %merge627
merge627:
  %3912 = load i64, i64* %3805
  %3913 = add i64 %3912, 1
  store i64 %3913, i64* %3805
  br label %while_cond622
while_end624:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %3914 = getelementptr [128 x i8], [128 x i8]* @.str536, i32 0, i32 0
  %3915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %3914, i64 127)
  %3916 = alloca %nyx_string*
  store %nyx_string* %3915, %nyx_string** %3916
  %3917 = getelementptr [37 x i8], [37 x i8]* @.str537, i32 0, i32 0
  %3918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %3917, i64 36)
  %3919 = alloca %nyx_string*
  store %nyx_string* %3918, %nyx_string** %3919
  %3920 = getelementptr [14 x i8], [14 x i8]* @.str538, i32 0, i32 0
  %3921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %3920, i64 13)
  %3922 = load %nyx_string*, %nyx_string** %3916
  %3923 = call %nyx_string* @nyx_string_concat(%nyx_string* %3921, %nyx_string* %3922)
  %3924 = getelementptr [16 x i8], [16 x i8]* @.str539, i32 0, i32 0
  %3925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %3924, i64 15)
  %3926 = call %nyx_string* @nyx_string_concat(%nyx_string* %3923, %nyx_string* %3925)
  %3927 = getelementptr [33 x i8], [33 x i8]* @.str540, i32 0, i32 0
  %3928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %3927, i64 32)
  %3929 = call %nyx_string* @nyx_string_concat(%nyx_string* %3926, %nyx_string* %3928)
  %3930 = getelementptr [99 x i8], [99 x i8]* @.str541, i32 0, i32 0
  %3931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %3930, i64 98)
  %3932 = call %nyx_string* @nyx_string_concat(%nyx_string* %3929, %nyx_string* %3931)
  %3933 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3934 = call %nyx_string* @nyx_string_concat(%nyx_string* %3932, %nyx_string* %3933)
  %3935 = getelementptr [74 x i8], [74 x i8]* @.str542, i32 0, i32 0
  %3936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %3935, i64 73)
  %3937 = call %nyx_string* @nyx_string_concat(%nyx_string* %3934, %nyx_string* %3936)
  %3938 = getelementptr [6 x i8], [6 x i8]* @.str543, i32 0, i32 0
  %3939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %3938, i64 5)
  %3940 = call %nyx_string* @nyx_string_concat(%nyx_string* %3937, %nyx_string* %3939)
  %3941 = getelementptr [91 x i8], [91 x i8]* @.str544, i32 0, i32 0
  %3942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %3941, i64 90)
  %3943 = call %nyx_string* @nyx_string_concat(%nyx_string* %3940, %nyx_string* %3942)
  %3944 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3945 = call %nyx_string* @nyx_string_concat(%nyx_string* %3943, %nyx_string* %3944)
  %3946 = getelementptr [76 x i8], [76 x i8]* @.str545, i32 0, i32 0
  %3947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %3946, i64 75)
  %3948 = call %nyx_string* @nyx_string_concat(%nyx_string* %3945, %nyx_string* %3947)
  %3949 = getelementptr [5 x i8], [5 x i8]* @.str546, i32 0, i32 0
  %3950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %3949, i64 4)
  %3951 = call %nyx_string* @nyx_string_concat(%nyx_string* %3948, %nyx_string* %3950)
  %3952 = getelementptr [16 x i8], [16 x i8]* @.str547, i32 0, i32 0
  %3953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %3952, i64 15)
  %3954 = call %nyx_string* @nyx_string_concat(%nyx_string* %3951, %nyx_string* %3953)
  %3955 = load %nyx_string*, %nyx_string** %3919
  %3956 = call %nyx_string* @nyx_string_concat(%nyx_string* %3954, %nyx_string* %3955)
  %3957 = getelementptr [16 x i8], [16 x i8]* @.str548, i32 0, i32 0
  %3958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %3957, i64 15)
  %3959 = call %nyx_string* @nyx_string_concat(%nyx_string* %3956, %nyx_string* %3958)
  %3960 = getelementptr [33 x i8], [33 x i8]* @.str549, i32 0, i32 0
  %3961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %3960, i64 32)
  %3962 = call %nyx_string* @nyx_string_concat(%nyx_string* %3959, %nyx_string* %3961)
  %3963 = getelementptr [176 x i8], [176 x i8]* @.str550, i32 0, i32 0
  %3964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %3963, i64 175)
  %3965 = call %nyx_string* @nyx_string_concat(%nyx_string* %3962, %nyx_string* %3964)
  %3966 = getelementptr [6 x i8], [6 x i8]* @.str551, i32 0, i32 0
  %3967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %3966, i64 5)
  %3968 = call %nyx_string* @nyx_string_concat(%nyx_string* %3965, %nyx_string* %3967)
  %3969 = getelementptr [184 x i8], [184 x i8]* @.str552, i32 0, i32 0
  %3970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %3969, i64 183)
  %3971 = call %nyx_string* @nyx_string_concat(%nyx_string* %3968, %nyx_string* %3970)
  %3972 = getelementptr [5 x i8], [5 x i8]* @.str553, i32 0, i32 0
  %3973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %3972, i64 4)
  %3974 = call %nyx_string* @nyx_string_concat(%nyx_string* %3971, %nyx_string* %3973)
  %3975 = getelementptr [6 x i8], [6 x i8]* @.str554, i32 0, i32 0
  %3976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %3975, i64 5)
  %3977 = call %nyx_string* @nyx_string_concat(%nyx_string* %3974, %nyx_string* %3976)
  %3978 = getelementptr [33 x i8], [33 x i8]* @.str555, i32 0, i32 0
  %3979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %3978, i64 32)
  %3980 = call %nyx_string* @nyx_string_concat(%nyx_string* %3977, %nyx_string* %3979)
  %3981 = getelementptr [127 x i8], [127 x i8]* @.str556, i32 0, i32 0
  %3982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %3981, i64 126)
  %3983 = call %nyx_string* @nyx_string_concat(%nyx_string* %3980, %nyx_string* %3982)
  %3984 = getelementptr [6 x i8], [6 x i8]* @.str557, i32 0, i32 0
  %3985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %3984, i64 5)
  %3986 = call %nyx_string* @nyx_string_concat(%nyx_string* %3983, %nyx_string* %3985)
  %3987 = getelementptr [119 x i8], [119 x i8]* @.str558, i32 0, i32 0
  %3988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %3987, i64 118)
  %3989 = call %nyx_string* @nyx_string_concat(%nyx_string* %3986, %nyx_string* %3988)
  %3990 = getelementptr [5 x i8], [5 x i8]* @.str559, i32 0, i32 0
  %3991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %3990, i64 4)
  %3992 = call %nyx_string* @nyx_string_concat(%nyx_string* %3989, %nyx_string* %3991)
  %3993 = getelementptr [4 x i8], [4 x i8]* @.str560, i32 0, i32 0
  %3994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %3993, i64 3)
  %3995 = call %nyx_string* @nyx_string_concat(%nyx_string* %3992, %nyx_string* %3994)
  ret %nyx_string* %3995
}

define internal %nyx_string* @pila_compilador_sh(
) {
  %3996 = getelementptr [180 x i8], [180 x i8]* @.str561, i32 0, i32 0
  %3997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %3996, i64 179)
  ret %nyx_string* %3997
}

define internal %nyx_string* @pila_compilador_pista_sh(
) {
  %3998 = getelementptr [326 x i8], [326 x i8]* @.str562, i32 0, i32 0
  %3999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %3998, i64 325)
  ret %nyx_string* %3999
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %4000 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4001 = load %nyx_string*, %nyx_string** %4000
  %4002 = alloca %nyx_string*
  store %nyx_string* %4001, %nyx_string** %4002
  %4003 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %4004 = getelementptr [1 x i8], [1 x i8]* @.str563, i32 0, i32 0
  %4005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %4004, i64 0)
  %4006 = call i1 @nyx_string_equals(%nyx_string* %4003, %nyx_string* %4005)
  %4007 = xor i1 %4006, true
  br i1 %4007, label %then636, label %else637
then636:
  %4008 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %4008, %nyx_string** %4002
  br label %merge638
else637:
  br label %merge638
merge638:
  %4009 = getelementptr [1 x i8], [1 x i8]* @.str564, i32 0, i32 0
  %4010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %4009, i64 0)
  %4011 = alloca %nyx_string*
  store %nyx_string* %4010, %nyx_string** %4011
  %4012 = load %nyx_string*, %nyx_string** %4002
  %4013 = getelementptr [1 x i8], [1 x i8]* @.str565, i32 0, i32 0
  %4014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %4013, i64 0)
  %4015 = call i1 @nyx_string_equals(%nyx_string* %4012, %nyx_string* %4014)
  %4016 = xor i1 %4015, true
  br i1 %4016, label %then639, label %else640
then639:
  %4017 = getelementptr [3 x i8], [3 x i8]* @.str566, i32 0, i32 0
  %4018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %4017, i64 2)
  %4019 = load %nyx_string*, %nyx_string** %4002
  %4020 = call %nyx_string* @nyx_string_concat(%nyx_string* %4018, %nyx_string* %4019)
  %4021 = getelementptr [2 x i8], [2 x i8]* @.str567, i32 0, i32 0
  %4022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %4021, i64 1)
  %4023 = call %nyx_string* @nyx_string_concat(%nyx_string* %4020, %nyx_string* %4022)
  store %nyx_string* %4023, %nyx_string** %4011
  br label %merge641
else640:
  br label %merge641
merge641:
  %4024 = getelementptr [13 x i8], [13 x i8]* @.str568, i32 0, i32 0
  %4025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %4024, i64 12)
  %4026 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4027 = load %nyx_string*, %nyx_string** %4026
  %4028 = call %nyx_string* @nyx_string_concat(%nyx_string* %4025, %nyx_string* %4027)
  %4029 = getelementptr [3 x i8], [3 x i8]* @.str569, i32 0, i32 0
  %4030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %4029, i64 2)
  %4031 = call %nyx_string* @nyx_string_concat(%nyx_string* %4028, %nyx_string* %4030)
  %4032 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4033 = load %nyx_string*, %nyx_string** %4032
  %4034 = call %nyx_string* @nyx_string_concat(%nyx_string* %4031, %nyx_string* %4033)
  %4035 = load %nyx_string*, %nyx_string** %4011
  %4036 = call %nyx_string* @nyx_string_concat(%nyx_string* %4034, %nyx_string* %4035)
  %4037 = call i8* @nyx_string_to_cstr(%nyx_string* %4036)
  call void @nyx_print_string(i8* %4037)
  %4038 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %4039 = call i1 @resolve_deps(%ProjectConfig %4038)
  %4040 = alloca i1
  store i1 %4039, i1* %4040
  %4041 = load i1, i1* %4040
  %4042 = icmp eq i1 %4041, 0
  br i1 %4042, label %then642, label %else643
then642:
  ret i1 0
else643:
  br label %merge644
merge644:
  %4043 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4044 = load %nyx_string*, %nyx_string** %4043
  %4045 = call i8* @nyx_string_to_cstr(%nyx_string* %4044)
  %4046 = call i1 @nyx_file_exists(i8* %4045)
  %4047 = xor i1 %4046, true
  br i1 %4047, label %then645, label %else646
then645:
  %4048 = getelementptr [29 x i8], [29 x i8]* @.str570, i32 0, i32 0
  %4049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %4048, i64 28)
  %4050 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4051 = load %nyx_string*, %nyx_string** %4050
  %4052 = call %nyx_string* @nyx_string_concat(%nyx_string* %4049, %nyx_string* %4051)
  %4053 = call i8* @nyx_string_to_cstr(%nyx_string* %4052)
  call void @nyx_print_string(i8* %4053)
  ret i1 0
else646:
  br label %merge647
merge647:
  %4054 = getelementptr [1 x i8], [1 x i8]* @.str571, i32 0, i32 0
  %4055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %4054, i64 0)
  %4056 = alloca %nyx_string*
  store %nyx_string* %4055, %nyx_string** %4056
  %4057 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4058 = load i1, i1* %4057
  br i1 %4058, label %then648, label %else649
then648:
  %4059 = getelementptr [13 x i8], [13 x i8]* @.str572, i32 0, i32 0
  %4060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %4059, i64 12)
  store %nyx_string* %4060, %nyx_string** %4056
  br label %merge650
else649:
  br label %merge650
merge650:
  %4061 = getelementptr [14 x i8], [14 x i8]* @.str573, i32 0, i32 0
  %4062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %4061, i64 13)
  %4063 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4064 = load %nyx_string*, %nyx_string** %4063
  %4065 = call %nyx_string* @nyx_string_concat(%nyx_string* %4062, %nyx_string* %4064)
  %4066 = call i8* @nyx_string_to_cstr(%nyx_string* %4065)
  call void @nyx_print_string(i8* %4066)
  %4067 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4068 = load %nyx_string*, %nyx_string** %4067
  %4069 = alloca %nyx_string*
  store %nyx_string* %4068, %nyx_string** %4069
  %4070 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4071 = load %nyx_string*, %nyx_string** %4070
  %4072 = getelementptr [1 x i8], [1 x i8]* @.str574, i32 0, i32 0
  %4073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %4072, i64 0)
  %4074 = call i1 @nyx_string_equals(%nyx_string* %4071, %nyx_string* %4073)
  %4075 = xor i1 %4074, true
  br i1 %4075, label %then651, label %else652
then651:
  %4076 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4077 = load %nyx_string*, %nyx_string** %4076
  store %nyx_string* %4077, %nyx_string** %4069
  br label %merge653
else652:
  br label %merge653
merge653:
  %4078 = load %nyx_string*, %nyx_string** %4069
  %4079 = alloca %nyx_string*
  store %nyx_string* %4078, %nyx_string** %4079
  %4080 = getelementptr [1 x i8], [1 x i8]* @.str575, i32 0, i32 0
  %4081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %4080, i64 0)
  %4082 = alloca %nyx_string*
  store %nyx_string* %4081, %nyx_string** %4082
  %4083 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4084 = load %nyx_string*, %nyx_string** %4083
  %4085 = getelementptr [1 x i8], [1 x i8]* @.str576, i32 0, i32 0
  %4086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %4085, i64 0)
  %4087 = call i1 @nyx_string_equals(%nyx_string* %4084, %nyx_string* %4086)
  %4088 = xor i1 %4087, true
  br i1 %4088, label %then654, label %else655
then654:
  %4089 = getelementptr [8 x i8], [8 x i8]* @.str577, i32 0, i32 0
  %4090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %4089, i64 7)
  %4091 = load %nyx_string*, %nyx_string** %4069
  %4092 = call %nyx_string* @nyx_string_concat(%nyx_string* %4090, %nyx_string* %4091)
  store %nyx_string* %4092, %nyx_string** %4079
  %4093 = getelementptr [29 x i8], [29 x i8]* @.str578, i32 0, i32 0
  %4094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %4093, i64 28)
  store %nyx_string* %4094, %nyx_string** %4082
  br label %merge656
else655:
  br label %merge656
merge656:
  %4095 = getelementptr [1 x i8], [1 x i8]* @.str579, i32 0, i32 0
  %4096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %4095, i64 0)
  %4097 = alloca %nyx_string*
  store %nyx_string* %4096, %nyx_string** %4097
  %4098 = load i1, i1* %release.ptr
  br i1 %4098, label %then657, label %else658
then657:
  %4099 = getelementptr [4 x i8], [4 x i8]* @.str580, i32 0, i32 0
  %4100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %4099, i64 3)
  store %nyx_string* %4100, %nyx_string** %4097
  br label %merge659
else658:
  br label %merge659
merge659:
  %4101 = getelementptr [9 x i8], [9 x i8]* @.str581, i32 0, i32 0
  %4102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4101, i64 8)
  %4103 = call i8* @nyx_string_to_cstr(%nyx_string* %4102)
  %4104 = call %nyx_string* @nyx_getenv(i8* %4103)
  %4105 = alloca %nyx_string*
  store %nyx_string* %4104, %nyx_string** %4105
  %4106 = load %nyx_string*, %nyx_string** %4105
  %4107 = getelementptr [1 x i8], [1 x i8]* @.str582, i32 0, i32 0
  %4108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4107, i64 0)
  %4109 = call i1 @nyx_string_equals(%nyx_string* %4106, %nyx_string* %4108)
  br i1 %4109, label %then660, label %else661
then660:
  %4110 = getelementptr [5 x i8], [5 x i8]* @.str583, i32 0, i32 0
  %4111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4110, i64 4)
  %4112 = call i8* @nyx_string_to_cstr(%nyx_string* %4111)
  %4113 = call %nyx_string* @nyx_getenv(i8* %4112)
  %4114 = alloca %nyx_string*
  store %nyx_string* %4113, %nyx_string** %4114
  %4115 = load %nyx_string*, %nyx_string** %4114
  %4116 = getelementptr [6 x i8], [6 x i8]* @.str584, i32 0, i32 0
  %4117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4116, i64 5)
  %4118 = call %nyx_string* @nyx_string_concat(%nyx_string* %4115, %nyx_string* %4117)
  %4119 = alloca %nyx_string*
  store %nyx_string* %4118, %nyx_string** %4119
  %4120 = alloca i1
  store i1 false, i1* %4120
  %4121 = load %nyx_string*, %nyx_string** %4114
  %4122 = getelementptr [1 x i8], [1 x i8]* @.str585, i32 0, i32 0
  %4123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4122, i64 0)
  %4124 = call i1 @nyx_string_equals(%nyx_string* %4121, %nyx_string* %4123)
  %4125 = xor i1 %4124, true
  br i1 %4125, label %sc_and_rhs663, label %sc_and_end664
sc_and_rhs663:
  %4126 = load %nyx_string*, %nyx_string** %4119
  %4127 = getelementptr [19 x i8], [19 x i8]* @.str586, i32 0, i32 0
  %4128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4127, i64 18)
  %4129 = call %nyx_string* @nyx_string_concat(%nyx_string* %4126, %nyx_string* %4128)
  %4130 = call i8* @nyx_string_to_cstr(%nyx_string* %4129)
  %4131 = call i1 @nyx_file_exists(i8* %4130)
  store i1 %4131, i1* %4120
  br label %sc_and_end664
sc_and_end664:
  %4132 = load i1, i1* %4120
  br i1 %4132, label %then665, label %else666
then665:
  %4133 = load %nyx_string*, %nyx_string** %4119
  store %nyx_string* %4133, %nyx_string** %4105
  br label %merge667
else666:
  br label %merge667
merge667:
  br label %merge662
else661:
  br label %merge662
merge662:
  %4134 = load %nyx_string*, %nyx_string** %4105
  %4135 = getelementptr [1 x i8], [1 x i8]* @.str587, i32 0, i32 0
  %4136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4135, i64 0)
  %4137 = call i1 @nyx_string_equals(%nyx_string* %4134, %nyx_string* %4136)
  br i1 %4137, label %then668, label %else669
then668:
  %4138 = getelementptr [14 x i8], [14 x i8]* @.str588, i32 0, i32 0
  %4139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4138, i64 13)
  %4140 = call i8* @nyx_string_to_cstr(%nyx_string* %4139)
  %4141 = call i1 @nyx_file_exists(i8* %4140)
  br i1 %4141, label %then671, label %else672
then671:
  %4142 = getelementptr [2 x i8], [2 x i8]* @.str589, i32 0, i32 0
  %4143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4142, i64 1)
  store %nyx_string* %4143, %nyx_string** %4105
  br label %merge673
else672:
  br label %merge673
merge673:
  br label %merge670
else669:
  br label %merge670
merge670:
  %4144 = load %nyx_string*, %nyx_string** %4105
  %4145 = getelementptr [1 x i8], [1 x i8]* @.str590, i32 0, i32 0
  %4146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4145, i64 0)
  %4147 = call i1 @nyx_string_equals(%nyx_string* %4144, %nyx_string* %4146)
  br i1 %4147, label %then674, label %else675
then674:
  %4148 = getelementptr [56 x i8], [56 x i8]* @.str591, i32 0, i32 0
  %4149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4148, i64 55)
  %4150 = call i8* @nyx_string_to_cstr(%nyx_string* %4149)
  call void @nyx_print_string(i8* %4150)
  ret i1 0
else675:
  br label %merge676
merge676:
  %4151 = load %nyx_string*, %nyx_string** %4105
  %4152 = getelementptr [15 x i8], [15 x i8]* @.str592, i32 0, i32 0
  %4153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4152, i64 14)
  %4154 = call %nyx_string* @nyx_string_concat(%nyx_string* %4151, %nyx_string* %4153)
  %4155 = alloca %nyx_string*
  store %nyx_string* %4154, %nyx_string** %4155
  %4156 = load %nyx_string*, %nyx_string** %4155
  %4157 = call i8* @nyx_string_to_cstr(%nyx_string* %4156)
  %4158 = call i1 @nyx_file_exists(i8* %4157)
  %4159 = xor i1 %4158, true
  br i1 %4159, label %then677, label %else678
then677:
  %4160 = load %nyx_string*, %nyx_string** %4105
  %4161 = getelementptr [9 x i8], [9 x i8]* @.str593, i32 0, i32 0
  %4162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4161, i64 8)
  %4163 = call %nyx_string* @nyx_string_concat(%nyx_string* %4160, %nyx_string* %4162)
  store %nyx_string* %4163, %nyx_string** %4155
  br label %merge679
else678:
  br label %merge679
merge679:
  %4164 = load %nyx_string*, %nyx_string** %4105
  %4165 = getelementptr [9 x i8], [9 x i8]* @.str594, i32 0, i32 0
  %4166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4165, i64 8)
  %4167 = call %nyx_string* @nyx_string_concat(%nyx_string* %4164, %nyx_string* %4166)
  %4168 = alloca %nyx_string*
  store %nyx_string* %4167, %nyx_string** %4168
  %4169 = getelementptr [20 x i8], [20 x i8]* @.str595, i32 0, i32 0
  %4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4169, i64 19)
  %4171 = call %nyx_string* @pila_compilador_sh()
  %4172 = call %nyx_string* @nyx_string_concat(%nyx_string* %4170, %nyx_string* %4171)
  %4173 = call %nyx_string* @pila_compilador_pista_sh()
  %4174 = call %nyx_string* @nyx_string_concat(%nyx_string* %4172, %nyx_string* %4173)
  %4175 = alloca %nyx_string*
  store %nyx_string* %4174, %nyx_string** %4175
  %4176 = getelementptr [13 x i8], [13 x i8]* @.str596, i32 0, i32 0
  %4177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4176, i64 12)
  %4178 = load %nyx_string*, %nyx_string** %4056
  %4179 = call %nyx_string* @nyx_string_concat(%nyx_string* %4177, %nyx_string* %4178)
  %4180 = alloca %nyx_string*
  store %nyx_string* %4179, %nyx_string** %4180
  %4181 = load %nyx_string*, %nyx_string** %4175
  %4182 = getelementptr [19 x i8], [19 x i8]* @.str597, i32 0, i32 0
  %4183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4182, i64 18)
  %4184 = call %nyx_string* @nyx_string_concat(%nyx_string* %4181, %nyx_string* %4183)
  %4185 = getelementptr [5 x i8], [5 x i8]* @.str598, i32 0, i32 0
  %4186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4185, i64 4)
  %4187 = call %nyx_string* @nyx_string_concat(%nyx_string* %4184, %nyx_string* %4186)
  %4188 = load %nyx_string*, %nyx_string** %4168
  %4189 = call %nyx_string* @nyx_string_concat(%nyx_string* %4187, %nyx_string* %4188)
  %4190 = getelementptr [3 x i8], [3 x i8]* @.str599, i32 0, i32 0
  %4191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4190, i64 2)
  %4192 = call %nyx_string* @nyx_string_concat(%nyx_string* %4189, %nyx_string* %4191)
  %4193 = getelementptr [43 x i8], [43 x i8]* @.str600, i32 0, i32 0
  %4194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4193, i64 42)
  %4195 = call %nyx_string* @nyx_string_concat(%nyx_string* %4192, %nyx_string* %4194)
  %4196 = getelementptr [37 x i8], [37 x i8]* @.str601, i32 0, i32 0
  %4197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4196, i64 36)
  %4198 = call %nyx_string* @nyx_string_concat(%nyx_string* %4195, %nyx_string* %4197)
  %4199 = getelementptr [17 x i8], [17 x i8]* @.str602, i32 0, i32 0
  %4200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4199, i64 16)
  %4201 = call %nyx_string* @nyx_string_concat(%nyx_string* %4198, %nyx_string* %4200)
  %4202 = getelementptr [38 x i8], [38 x i8]* @.str603, i32 0, i32 0
  %4203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4202, i64 37)
  %4204 = call %nyx_string* @nyx_string_concat(%nyx_string* %4201, %nyx_string* %4203)
  %4205 = getelementptr [17 x i8], [17 x i8]* @.str604, i32 0, i32 0
  %4206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4205, i64 16)
  %4207 = call %nyx_string* @nyx_string_concat(%nyx_string* %4204, %nyx_string* %4206)
  %4208 = getelementptr [15 x i8], [15 x i8]* @.str605, i32 0, i32 0
  %4209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4208, i64 14)
  %4210 = call %nyx_string* @nyx_string_concat(%nyx_string* %4207, %nyx_string* %4209)
  %4211 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4212 = load %nyx_string*, %nyx_string** %4211
  %4213 = call %nyx_string* @nyx_string_concat(%nyx_string* %4210, %nyx_string* %4212)
  %4214 = getelementptr [12 x i8], [12 x i8]* @.str606, i32 0, i32 0
  %4215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4214, i64 11)
  %4216 = call %nyx_string* @nyx_string_concat(%nyx_string* %4213, %nyx_string* %4215)
  %4217 = getelementptr [5 x i8], [5 x i8]* @.str607, i32 0, i32 0
  %4218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4217, i64 4)
  %4219 = call %nyx_string* @nyx_string_concat(%nyx_string* %4216, %nyx_string* %4218)
  %4220 = load %nyx_string*, %nyx_string** %4105
  %4221 = call %nyx_string* @nyx_string_concat(%nyx_string* %4219, %nyx_string* %4220)
  %4222 = getelementptr [3 x i8], [3 x i8]* @.str608, i32 0, i32 0
  %4223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4222, i64 2)
  %4224 = call %nyx_string* @nyx_string_concat(%nyx_string* %4221, %nyx_string* %4223)
  %4225 = getelementptr [51 x i8], [51 x i8]* @.str609, i32 0, i32 0
  %4226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4225, i64 50)
  %4227 = call %nyx_string* @nyx_string_concat(%nyx_string* %4224, %nyx_string* %4226)
  %4228 = load %nyx_string*, %nyx_string** %4105
  %4229 = call %nyx_string* @nyx_string_concat(%nyx_string* %4227, %nyx_string* %4228)
  %4230 = getelementptr [35 x i8], [35 x i8]* @.str610, i32 0, i32 0
  %4231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4230, i64 34)
  %4232 = call %nyx_string* @nyx_string_concat(%nyx_string* %4229, %nyx_string* %4231)
  %4233 = load %nyx_string*, %nyx_string** %4180
  %4234 = call %nyx_string* @nyx_string_concat(%nyx_string* %4232, %nyx_string* %4233)
  %4235 = getelementptr [35 x i8], [35 x i8]* @.str611, i32 0, i32 0
  %4236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4235, i64 34)
  %4237 = call %nyx_string* @nyx_string_concat(%nyx_string* %4234, %nyx_string* %4236)
  %4238 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4239 = load %nyx_string*, %nyx_string** %4238
  %4240 = call %nyx_string* @nyx_string_concat(%nyx_string* %4237, %nyx_string* %4239)
  %4241 = getelementptr [32 x i8], [32 x i8]* @.str612, i32 0, i32 0
  %4242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4241, i64 31)
  %4243 = call %nyx_string* @nyx_string_concat(%nyx_string* %4240, %nyx_string* %4242)
  %4244 = load %nyx_string*, %nyx_string** %4155
  %4245 = call %nyx_string* @nyx_string_concat(%nyx_string* %4243, %nyx_string* %4244)
  %4246 = getelementptr [19 x i8], [19 x i8]* @.str613, i32 0, i32 0
  %4247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4246, i64 18)
  %4248 = call %nyx_string* @nyx_string_concat(%nyx_string* %4245, %nyx_string* %4247)
  %4249 = getelementptr [93 x i8], [93 x i8]* @.str614, i32 0, i32 0
  %4250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4249, i64 92)
  %4251 = call %nyx_string* @nyx_string_concat(%nyx_string* %4248, %nyx_string* %4250)
  %4252 = load %nyx_string*, %nyx_string** %4082
  %4253 = call %nyx_string* @nyx_string_concat(%nyx_string* %4251, %nyx_string* %4252)
  %4254 = getelementptr [7 x i8], [7 x i8]* @.str615, i32 0, i32 0
  %4255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %4254, i64 6)
  %4256 = call %nyx_string* @nyx_string_concat(%nyx_string* %4253, %nyx_string* %4255)
  %4257 = load %nyx_string*, %nyx_string** %4097
  %4258 = call %nyx_string* @nyx_string_concat(%nyx_string* %4256, %nyx_string* %4257)
  %4259 = getelementptr [12 x i8], [12 x i8]* @.str616, i32 0, i32 0
  %4260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %4259, i64 11)
  %4261 = call %nyx_string* @nyx_string_concat(%nyx_string* %4258, %nyx_string* %4260)
  %4262 = getelementptr [50 x i8], [50 x i8]* @.str617, i32 0, i32 0
  %4263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4262, i64 49)
  %4264 = call %nyx_string* @nyx_string_concat(%nyx_string* %4261, %nyx_string* %4263)
  %4265 = getelementptr [42 x i8], [42 x i8]* @.str618, i32 0, i32 0
  %4266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4265, i64 41)
  %4267 = call %nyx_string* @nyx_string_concat(%nyx_string* %4264, %nyx_string* %4266)
  %4268 = getelementptr [36 x i8], [36 x i8]* @.str619, i32 0, i32 0
  %4269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4268, i64 35)
  %4270 = call %nyx_string* @nyx_string_concat(%nyx_string* %4267, %nyx_string* %4269)
  %4271 = getelementptr [35 x i8], [35 x i8]* @.str620, i32 0, i32 0
  %4272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4271, i64 34)
  %4273 = call %nyx_string* @nyx_string_concat(%nyx_string* %4270, %nyx_string* %4272)
  %4274 = getelementptr [55 x i8], [55 x i8]* @.str621, i32 0, i32 0
  %4275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4274, i64 54)
  %4276 = call %nyx_string* @nyx_string_concat(%nyx_string* %4273, %nyx_string* %4275)
  %4277 = getelementptr [39 x i8], [39 x i8]* @.str622, i32 0, i32 0
  %4278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4277, i64 38)
  %4279 = call %nyx_string* @nyx_string_concat(%nyx_string* %4276, %nyx_string* %4278)
  %4280 = getelementptr [71 x i8], [71 x i8]* @.str623, i32 0, i32 0
  %4281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4280, i64 70)
  %4282 = call %nyx_string* @nyx_string_concat(%nyx_string* %4279, %nyx_string* %4281)
  %4283 = getelementptr [21 x i8], [21 x i8]* @.str624, i32 0, i32 0
  %4284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4283, i64 20)
  %4285 = call %nyx_string* @nyx_string_concat(%nyx_string* %4282, %nyx_string* %4284)
  %4286 = getelementptr [19 x i8], [19 x i8]* @.str625, i32 0, i32 0
  %4287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4286, i64 18)
  %4288 = call %nyx_string* @nyx_string_concat(%nyx_string* %4285, %nyx_string* %4287)
  %4289 = getelementptr [44 x i8], [44 x i8]* @.str626, i32 0, i32 0
  %4290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4289, i64 43)
  %4291 = call %nyx_string* @nyx_string_concat(%nyx_string* %4288, %nyx_string* %4290)
  %4292 = getelementptr [15 x i8], [15 x i8]* @.str627, i32 0, i32 0
  %4293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4292, i64 14)
  %4294 = call %nyx_string* @nyx_string_concat(%nyx_string* %4291, %nyx_string* %4293)
  %4295 = load %nyx_string*, %nyx_string** %4079
  %4296 = call %nyx_string* @nyx_string_concat(%nyx_string* %4294, %nyx_string* %4295)
  %4297 = getelementptr [13 x i8], [13 x i8]* @.str628, i32 0, i32 0
  %4298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4297, i64 12)
  %4299 = call %nyx_string* @nyx_string_concat(%nyx_string* %4296, %nyx_string* %4298)
  %4300 = getelementptr [44 x i8], [44 x i8]* @.str629, i32 0, i32 0
  %4301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %4300, i64 43)
  %4302 = call %nyx_string* @nyx_string_concat(%nyx_string* %4299, %nyx_string* %4301)
  %4303 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4304 = load %nyx_string*, %nyx_string** %4303
  %4305 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4304)
  %4306 = call %nyx_string* @nyx_string_concat(%nyx_string* %4302, %nyx_string* %4305)
  %4307 = getelementptr [27 x i8], [27 x i8]* @.str630, i32 0, i32 0
  %4308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %4307, i64 26)
  %4309 = call %nyx_string* @nyx_string_concat(%nyx_string* %4306, %nyx_string* %4308)
  %4310 = getelementptr [18 x i8], [18 x i8]* @.str631, i32 0, i32 0
  %4311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %4310, i64 17)
  %4312 = call %nyx_string* @nyx_string_concat(%nyx_string* %4309, %nyx_string* %4311)
  %4313 = load %nyx_string*, %nyx_string** %4079
  %4314 = call %nyx_string* @nyx_string_concat(%nyx_string* %4312, %nyx_string* %4313)
  %4315 = getelementptr [3 x i8], [3 x i8]* @.str632, i32 0, i32 0
  %4316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %4315, i64 2)
  %4317 = call %nyx_string* @nyx_string_concat(%nyx_string* %4314, %nyx_string* %4316)
  %4318 = alloca %nyx_string*
  store %nyx_string* %4317, %nyx_string** %4318
  %4319 = alloca i1
  store i1 false, i1* %4319
  %4320 = load %nyx_string*, %nyx_string** %4002
  %4321 = getelementptr [1 x i8], [1 x i8]* @.str633, i32 0, i32 0
  %4322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %4321, i64 0)
  %4323 = call i1 @nyx_string_equals(%nyx_string* %4320, %nyx_string* %4322)
  %4324 = xor i1 %4323, true
  br i1 %4324, label %sc_and_rhs680, label %sc_and_end681
sc_and_rhs680:
  %4325 = load %nyx_string*, %nyx_string** %4002
  %4326 = getelementptr [12 x i8], [12 x i8]* @.str634, i32 0, i32 0
  %4327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %4326, i64 11)
  %4328 = call i1 @nyx_string_equals(%nyx_string* %4325, %nyx_string* %4327)
  %4329 = xor i1 %4328, true
  store i1 %4329, i1* %4319
  br label %sc_and_end681
sc_and_end681:
  %4330 = load i1, i1* %4319
  br i1 %4330, label %then682, label %else683
then682:
  %4331 = alloca i1
  store i1 false, i1* %4331
  %4332 = load %nyx_string*, %nyx_string** %4002
  %4333 = getelementptr [23 x i8], [23 x i8]* @.str635, i32 0, i32 0
  %4334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %4333, i64 22)
  %4335 = call i1 @nyx_string_equals(%nyx_string* %4332, %nyx_string* %4334)
  %4336 = xor i1 %4335, true
  br i1 %4336, label %sc_and_rhs685, label %sc_and_end686
sc_and_rhs685:
  %4337 = load %nyx_string*, %nyx_string** %4002
  %4338 = getelementptr [24 x i8], [24 x i8]* @.str636, i32 0, i32 0
  %4339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %4338, i64 23)
  %4340 = call i1 @nyx_string_equals(%nyx_string* %4337, %nyx_string* %4339)
  %4341 = xor i1 %4340, true
  store i1 %4341, i1* %4331
  br label %sc_and_end686
sc_and_end686:
  %4342 = load i1, i1* %4331
  br i1 %4342, label %then687, label %else688
then687:
  %4343 = getelementptr [28 x i8], [28 x i8]* @.str637, i32 0, i32 0
  %4344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %4343, i64 27)
  %4345 = load %nyx_string*, %nyx_string** %4002
  %4346 = call %nyx_string* @nyx_string_concat(%nyx_string* %4344, %nyx_string* %4345)
  %4347 = call i8* @nyx_string_to_cstr(%nyx_string* %4346)
  call void @nyx_print_string(i8* %4347)
  %4348 = getelementptr [83 x i8], [83 x i8]* @.str638, i32 0, i32 0
  %4349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %4348, i64 82)
  %4350 = call i8* @nyx_string_to_cstr(%nyx_string* %4349)
  call void @nyx_print_string(i8* %4350)
  %4351 = getelementptr [52 x i8], [52 x i8]* @.str639, i32 0, i32 0
  %4352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %4351, i64 51)
  %4353 = call i8* @nyx_string_to_cstr(%nyx_string* %4352)
  call void @nyx_print_string(i8* %4353)
  ret i1 0
else688:
  br label %merge689
merge689:
  br label %merge684
else683:
  br label %merge684
merge684:
  %4354 = load %nyx_string*, %nyx_string** %4318
  %4355 = alloca %nyx_string*
  store %nyx_string* %4354, %nyx_string** %4355
  %4356 = load %nyx_string*, %nyx_string** %4002
  %4357 = getelementptr [12 x i8], [12 x i8]* @.str640, i32 0, i32 0
  %4358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %4357, i64 11)
  %4359 = call i1 @nyx_string_equals(%nyx_string* %4356, %nyx_string* %4358)
  br i1 %4359, label %then690, label %else691
then690:
  %4360 = getelementptr [20 x i8], [20 x i8]* @.str641, i32 0, i32 0
  %4361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %4360, i64 19)
  %4362 = getelementptr [19 x i8], [19 x i8]* @.str642, i32 0, i32 0
  %4363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %4362, i64 18)
  %4364 = call %nyx_string* @nyx_string_concat(%nyx_string* %4361, %nyx_string* %4363)
  %4365 = getelementptr [5 x i8], [5 x i8]* @.str643, i32 0, i32 0
  %4366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %4365, i64 4)
  %4367 = call %nyx_string* @nyx_string_concat(%nyx_string* %4364, %nyx_string* %4366)
  %4368 = load %nyx_string*, %nyx_string** %4168
  %4369 = call %nyx_string* @nyx_string_concat(%nyx_string* %4367, %nyx_string* %4368)
  %4370 = getelementptr [3 x i8], [3 x i8]* @.str644, i32 0, i32 0
  %4371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %4370, i64 2)
  %4372 = call %nyx_string* @nyx_string_concat(%nyx_string* %4369, %nyx_string* %4371)
  %4373 = getelementptr [11 x i8], [11 x i8]* @.str645, i32 0, i32 0
  %4374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %4373, i64 10)
  %4375 = call %nyx_string* @nyx_string_concat(%nyx_string* %4372, %nyx_string* %4374)
  %4376 = getelementptr [23 x i8], [23 x i8]* @.str646, i32 0, i32 0
  %4377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %4376, i64 22)
  %4378 = call %nyx_string* @nyx_string_concat(%nyx_string* %4375, %nyx_string* %4377)
  %4379 = getelementptr [43 x i8], [43 x i8]* @.str647, i32 0, i32 0
  %4380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %4379, i64 42)
  %4381 = call %nyx_string* @nyx_string_concat(%nyx_string* %4378, %nyx_string* %4380)
  %4382 = getelementptr [37 x i8], [37 x i8]* @.str648, i32 0, i32 0
  %4383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %4382, i64 36)
  %4384 = call %nyx_string* @nyx_string_concat(%nyx_string* %4381, %nyx_string* %4383)
  %4385 = getelementptr [17 x i8], [17 x i8]* @.str649, i32 0, i32 0
  %4386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %4385, i64 16)
  %4387 = call %nyx_string* @nyx_string_concat(%nyx_string* %4384, %nyx_string* %4386)
  %4388 = getelementptr [38 x i8], [38 x i8]* @.str650, i32 0, i32 0
  %4389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %4388, i64 37)
  %4390 = call %nyx_string* @nyx_string_concat(%nyx_string* %4387, %nyx_string* %4389)
  %4391 = getelementptr [17 x i8], [17 x i8]* @.str651, i32 0, i32 0
  %4392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %4391, i64 16)
  %4393 = call %nyx_string* @nyx_string_concat(%nyx_string* %4390, %nyx_string* %4392)
  %4394 = getelementptr [163 x i8], [163 x i8]* @.str652, i32 0, i32 0
  %4395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %4394, i64 162)
  %4396 = call %nyx_string* @nyx_string_concat(%nyx_string* %4393, %nyx_string* %4395)
  %4397 = getelementptr [15 x i8], [15 x i8]* @.str653, i32 0, i32 0
  %4398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %4397, i64 14)
  %4399 = call %nyx_string* @nyx_string_concat(%nyx_string* %4396, %nyx_string* %4398)
  %4400 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4401 = load %nyx_string*, %nyx_string** %4400
  %4402 = call %nyx_string* @nyx_string_concat(%nyx_string* %4399, %nyx_string* %4401)
  %4403 = getelementptr [12 x i8], [12 x i8]* @.str654, i32 0, i32 0
  %4404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %4403, i64 11)
  %4405 = call %nyx_string* @nyx_string_concat(%nyx_string* %4402, %nyx_string* %4404)
  %4406 = getelementptr [5 x i8], [5 x i8]* @.str655, i32 0, i32 0
  %4407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %4406, i64 4)
  %4408 = call %nyx_string* @nyx_string_concat(%nyx_string* %4405, %nyx_string* %4407)
  %4409 = load %nyx_string*, %nyx_string** %4105
  %4410 = call %nyx_string* @nyx_string_concat(%nyx_string* %4408, %nyx_string* %4409)
  %4411 = getelementptr [3 x i8], [3 x i8]* @.str656, i32 0, i32 0
  %4412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %4411, i64 2)
  %4413 = call %nyx_string* @nyx_string_concat(%nyx_string* %4410, %nyx_string* %4412)
  %4414 = getelementptr [70 x i8], [70 x i8]* @.str657, i32 0, i32 0
  %4415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %4414, i64 69)
  %4416 = call %nyx_string* @nyx_string_concat(%nyx_string* %4413, %nyx_string* %4415)
  %4417 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4418 = load %nyx_string*, %nyx_string** %4417
  %4419 = call %nyx_string* @nyx_string_concat(%nyx_string* %4416, %nyx_string* %4418)
  %4420 = getelementptr [32 x i8], [32 x i8]* @.str658, i32 0, i32 0
  %4421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %4420, i64 31)
  %4422 = call %nyx_string* @nyx_string_concat(%nyx_string* %4419, %nyx_string* %4421)
  %4423 = load %nyx_string*, %nyx_string** %4155
  %4424 = call %nyx_string* @nyx_string_concat(%nyx_string* %4422, %nyx_string* %4423)
  %4425 = getelementptr [17 x i8], [17 x i8]* @.str659, i32 0, i32 0
  %4426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %4425, i64 16)
  %4427 = call %nyx_string* @nyx_string_concat(%nyx_string* %4424, %nyx_string* %4426)
  %4428 = getelementptr [71 x i8], [71 x i8]* @.str660, i32 0, i32 0
  %4429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %4428, i64 70)
  %4430 = call %nyx_string* @nyx_string_concat(%nyx_string* %4427, %nyx_string* %4429)
  %4431 = getelementptr [24 x i8], [24 x i8]* @.str661, i32 0, i32 0
  %4432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %4431, i64 23)
  %4433 = call %nyx_string* @nyx_string_concat(%nyx_string* %4430, %nyx_string* %4432)
  %4434 = getelementptr [2 x i8], [2 x i8]* @.str662, i32 0, i32 0
  %4435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %4434, i64 1)
  %4436 = call %nyx_string* @nyx_string_concat(%nyx_string* %4433, %nyx_string* %4435)
  %4437 = getelementptr [76 x i8], [76 x i8]* @.str663, i32 0, i32 0
  %4438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %4437, i64 75)
  %4439 = call %nyx_string* @nyx_string_concat(%nyx_string* %4436, %nyx_string* %4438)
  %4440 = getelementptr [98 x i8], [98 x i8]* @.str664, i32 0, i32 0
  %4441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %4440, i64 97)
  %4442 = call %nyx_string* @nyx_string_concat(%nyx_string* %4439, %nyx_string* %4441)
  %4443 = getelementptr [41 x i8], [41 x i8]* @.str665, i32 0, i32 0
  %4444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %4443, i64 40)
  %4445 = call %nyx_string* @nyx_string_concat(%nyx_string* %4442, %nyx_string* %4444)
  %4446 = getelementptr [64 x i8], [64 x i8]* @.str666, i32 0, i32 0
  %4447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %4446, i64 63)
  %4448 = call %nyx_string* @nyx_string_concat(%nyx_string* %4445, %nyx_string* %4447)
  %4449 = getelementptr [56 x i8], [56 x i8]* @.str667, i32 0, i32 0
  %4450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %4449, i64 55)
  %4451 = call %nyx_string* @nyx_string_concat(%nyx_string* %4448, %nyx_string* %4450)
  %4452 = getelementptr [12 x i8], [12 x i8]* @.str668, i32 0, i32 0
  %4453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %4452, i64 11)
  %4454 = call %nyx_string* @nyx_string_concat(%nyx_string* %4451, %nyx_string* %4453)
  %4455 = getelementptr [34 x i8], [34 x i8]* @.str669, i32 0, i32 0
  %4456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %4455, i64 33)
  %4457 = call %nyx_string* @nyx_string_concat(%nyx_string* %4454, %nyx_string* %4456)
  %4458 = load %nyx_string*, %nyx_string** %4069
  %4459 = call %nyx_string* @nyx_string_concat(%nyx_string* %4457, %nyx_string* %4458)
  %4460 = getelementptr [18 x i8], [18 x i8]* @.str670, i32 0, i32 0
  %4461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %4460, i64 17)
  %4462 = call %nyx_string* @nyx_string_concat(%nyx_string* %4459, %nyx_string* %4461)
  %4463 = getelementptr [49 x i8], [49 x i8]* @.str671, i32 0, i32 0
  %4464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %4463, i64 48)
  %4465 = call %nyx_string* @nyx_string_concat(%nyx_string* %4462, %nyx_string* %4464)
  %4466 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4467 = load %nyx_string*, %nyx_string** %4466
  %4468 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4467)
  %4469 = call %nyx_string* @nyx_string_concat(%nyx_string* %4465, %nyx_string* %4468)
  %4470 = getelementptr [27 x i8], [27 x i8]* @.str672, i32 0, i32 0
  %4471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %4470, i64 26)
  %4472 = call %nyx_string* @nyx_string_concat(%nyx_string* %4469, %nyx_string* %4471)
  store %nyx_string* %4472, %nyx_string** %4355
  %4473 = load %nyx_string*, %nyx_string** %4355
  %4474 = getelementptr [95 x i8], [95 x i8]* @.str673, i32 0, i32 0
  %4475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %4474, i64 94)
  %4476 = call %nyx_string* @nyx_string_concat(%nyx_string* %4473, %nyx_string* %4475)
  %4477 = getelementptr [24 x i8], [24 x i8]* @.str674, i32 0, i32 0
  %4478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %4477, i64 23)
  %4479 = call %nyx_string* @nyx_string_concat(%nyx_string* %4476, %nyx_string* %4478)
  %4480 = getelementptr [10 x i8], [10 x i8]* @.str675, i32 0, i32 0
  %4481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %4480, i64 9)
  %4482 = call %nyx_string* @nyx_string_concat(%nyx_string* %4479, %nyx_string* %4481)
  %4483 = getelementptr [49 x i8], [49 x i8]* @.str676, i32 0, i32 0
  %4484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %4483, i64 48)
  %4485 = call %nyx_string* @nyx_string_concat(%nyx_string* %4482, %nyx_string* %4484)
  %4486 = getelementptr [207 x i8], [207 x i8]* @.str677, i32 0, i32 0
  %4487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %4486, i64 206)
  %4488 = call %nyx_string* @nyx_string_concat(%nyx_string* %4485, %nyx_string* %4487)
  %4489 = getelementptr [41 x i8], [41 x i8]* @.str678, i32 0, i32 0
  %4490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %4489, i64 40)
  %4491 = call %nyx_string* @nyx_string_concat(%nyx_string* %4488, %nyx_string* %4490)
  %4492 = load %nyx_string*, %nyx_string** %4069
  %4493 = call %nyx_string* @nyx_string_concat(%nyx_string* %4491, %nyx_string* %4492)
  %4494 = getelementptr [58 x i8], [58 x i8]* @.str679, i32 0, i32 0
  %4495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %4494, i64 57)
  %4496 = call %nyx_string* @nyx_string_concat(%nyx_string* %4493, %nyx_string* %4495)
  %4497 = getelementptr [34 x i8], [34 x i8]* @.str680, i32 0, i32 0
  %4498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %4497, i64 33)
  %4499 = call %nyx_string* @nyx_string_concat(%nyx_string* %4496, %nyx_string* %4498)
  %4500 = load %nyx_string*, %nyx_string** %4069
  %4501 = call %nyx_string* @nyx_string_concat(%nyx_string* %4499, %nyx_string* %4500)
  %4502 = getelementptr [18 x i8], [18 x i8]* @.str681, i32 0, i32 0
  %4503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %4502, i64 17)
  %4504 = call %nyx_string* @nyx_string_concat(%nyx_string* %4501, %nyx_string* %4503)
  %4505 = getelementptr [78 x i8], [78 x i8]* @.str682, i32 0, i32 0
  %4506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %4505, i64 77)
  %4507 = call %nyx_string* @nyx_string_concat(%nyx_string* %4504, %nyx_string* %4506)
  %4508 = getelementptr [4 x i8], [4 x i8]* @.str683, i32 0, i32 0
  %4509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %4508, i64 3)
  %4510 = call %nyx_string* @nyx_string_concat(%nyx_string* %4507, %nyx_string* %4509)
  %4511 = getelementptr [32 x i8], [32 x i8]* @.str684, i32 0, i32 0
  %4512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %4511, i64 31)
  %4513 = call %nyx_string* @nyx_string_concat(%nyx_string* %4510, %nyx_string* %4512)
  %4514 = load %nyx_string*, %nyx_string** %4069
  %4515 = call %nyx_string* @nyx_string_concat(%nyx_string* %4513, %nyx_string* %4514)
  %4516 = getelementptr [41 x i8], [41 x i8]* @.str685, i32 0, i32 0
  %4517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %4516, i64 40)
  %4518 = call %nyx_string* @nyx_string_concat(%nyx_string* %4515, %nyx_string* %4517)
  %4519 = load %nyx_string*, %nyx_string** %4069
  %4520 = call %nyx_string* @nyx_string_concat(%nyx_string* %4518, %nyx_string* %4519)
  %4521 = getelementptr [9 x i8], [9 x i8]* @.str686, i32 0, i32 0
  %4522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %4521, i64 8)
  %4523 = call %nyx_string* @nyx_string_concat(%nyx_string* %4520, %nyx_string* %4522)
  store %nyx_string* %4523, %nyx_string** %4355
  br label %merge692
else691:
  br label %merge692
merge692:
  %4524 = getelementptr [16 x i8], [16 x i8]* @.str687, i32 0, i32 0
  %4525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %4524, i64 15)
  %4526 = call i64 @nyx_getpid()
  %4527 = call %nyx_string* @nyx_string_from_int(i64 %4526)
  %4528 = call %nyx_string* @nyx_string_concat(%nyx_string* %4525, %nyx_string* %4527)
  %4529 = getelementptr [4 x i8], [4 x i8]* @.str688, i32 0, i32 0
  %4530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %4529, i64 3)
  %4531 = call %nyx_string* @nyx_string_concat(%nyx_string* %4528, %nyx_string* %4530)
  %4532 = alloca %nyx_string*
  store %nyx_string* %4531, %nyx_string** %4532
  %4533 = load %nyx_string*, %nyx_string** %4532
  %4534 = load %nyx_string*, %nyx_string** %4355
  %4535 = call i8* @nyx_string_to_cstr(%nyx_string* %4533)
  %4536 = call i1 @nyx_write_file_safe(i8* %4535, %nyx_string* %4534)
  %4537 = getelementptr [7 x i8], [7 x i8]* @.str689, i32 0, i32 0
  %4538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %4537, i64 6)
  %4539 = load %nyx_string*, %nyx_string** %4532
  %4540 = call %nyx_string* @nyx_string_concat(%nyx_string* %4538, %nyx_string* %4539)
  %4541 = getelementptr [22 x i8], [22 x i8]* @.str690, i32 0, i32 0
  %4542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %4541, i64 21)
  %4543 = call %nyx_string* @nyx_string_concat(%nyx_string* %4540, %nyx_string* %4542)
  %4544 = load %nyx_string*, %nyx_string** %4532
  %4545 = call %nyx_string* @nyx_string_concat(%nyx_string* %4543, %nyx_string* %4544)
  %4546 = getelementptr [16 x i8], [16 x i8]* @.str691, i32 0, i32 0
  %4547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %4546, i64 15)
  %4548 = call %nyx_string* @nyx_string_concat(%nyx_string* %4545, %nyx_string* %4547)
  %4549 = call i8* @nyx_string_to_cstr(%nyx_string* %4548)
  %4550 = call i64 @nyx_exec_code(i8* %4549)
  %4551 = alloca i64
  store i64 %4550, i64* %4551
  %4552 = load i64, i64* %4551
  %4553 = icmp eq i64 %4552, 0
  ret i1 %4553
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %4554 = getelementptr [10 x i8], [10 x i8]* @.str692, i32 0, i32 0
  %4555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %4554, i64 9)
  %4556 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4557 = load %nyx_string*, %nyx_string** %4556
  %4558 = call %nyx_string* @nyx_string_concat(%nyx_string* %4555, %nyx_string* %4557)
  %4559 = call i8* @nyx_string_to_cstr(%nyx_string* %4558)
  call void @nyx_print_string(i8* %4559)
  %4560 = getelementptr [10 x i8], [10 x i8]* @.str693, i32 0, i32 0
  %4561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %4560, i64 9)
  %4562 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4563 = load %nyx_string*, %nyx_string** %4562
  %4564 = call %nyx_string* @nyx_string_concat(%nyx_string* %4561, %nyx_string* %4563)
  %4565 = call i8* @nyx_string_to_cstr(%nyx_string* %4564)
  call void @nyx_print_string(i8* %4565)
  %4566 = getelementptr [10 x i8], [10 x i8]* @.str694, i32 0, i32 0
  %4567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %4566, i64 9)
  %4568 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4569 = load %nyx_string*, %nyx_string** %4568
  %4570 = call %nyx_string* @nyx_string_concat(%nyx_string* %4567, %nyx_string* %4569)
  %4571 = call i8* @nyx_string_to_cstr(%nyx_string* %4570)
  call void @nyx_print_string(i8* %4571)
  %4572 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4573 = load %nyx_string*, %nyx_string** %4572
  %4574 = getelementptr [1 x i8], [1 x i8]* @.str695, i32 0, i32 0
  %4575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %4574, i64 0)
  %4576 = call i1 @nyx_string_equals(%nyx_string* %4573, %nyx_string* %4575)
  %4577 = xor i1 %4576, true
  br i1 %4577, label %then693, label %else694
then693:
  %4578 = getelementptr [10 x i8], [10 x i8]* @.str696, i32 0, i32 0
  %4579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %4578, i64 9)
  %4580 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4581 = load %nyx_string*, %nyx_string** %4580
  %4582 = call %nyx_string* @nyx_string_concat(%nyx_string* %4579, %nyx_string* %4581)
  %4583 = call i8* @nyx_string_to_cstr(%nyx_string* %4582)
  call void @nyx_print_string(i8* %4583)
  br label %merge695
else694:
  br label %merge695
merge695:
  %4584 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %4585 = load %nyx_string*, %nyx_string** %4584
  %4586 = getelementptr [1 x i8], [1 x i8]* @.str697, i32 0, i32 0
  %4587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %4586, i64 0)
  %4588 = call i1 @nyx_string_equals(%nyx_string* %4585, %nyx_string* %4587)
  %4589 = xor i1 %4588, true
  br i1 %4589, label %then696, label %else697
then696:
  %4590 = getelementptr [10 x i8], [10 x i8]* @.str698, i32 0, i32 0
  %4591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %4590, i64 9)
  %4592 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %4593 = load %nyx_string*, %nyx_string** %4592
  %4594 = call %nyx_string* @nyx_string_concat(%nyx_string* %4591, %nyx_string* %4593)
  %4595 = call i8* @nyx_string_to_cstr(%nyx_string* %4594)
  call void @nyx_print_string(i8* %4595)
  br label %merge698
else697:
  br label %merge698
merge698:
  %4596 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4597 = load i1, i1* %4596
  br i1 %4597, label %then699, label %else700
then699:
  %4598 = getelementptr [25 x i8], [25 x i8]* @.str699, i32 0, i32 0
  %4599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %4598, i64 24)
  %4600 = call i8* @nyx_string_to_cstr(%nyx_string* %4599)
  call void @nyx_print_string(i8* %4600)
  br label %merge701
else700:
  %4601 = getelementptr [22 x i8], [22 x i8]* @.str700, i32 0, i32 0
  %4602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %4601, i64 21)
  %4603 = call i8* @nyx_string_to_cstr(%nyx_string* %4602)
  call void @nyx_print_string(i8* %4603)
  br label %merge701
merge701:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %4604 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4605 = getelementptr [2 x i8], [2 x i8]* @.str701, i32 0, i32 0
  %4606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %4605, i64 1)
  %4607 = call i1 @nyx_string_starts_with(%nyx_string* %4604, %nyx_string* %4606)
  br i1 %4607, label %then702, label %else703
then702:
  %4608 = getelementptr [98 x i8], [98 x i8]* @.str702, i32 0, i32 0
  %4609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %4608, i64 97)
  %4610 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4611 = call %nyx_string* @nyx_string_concat(%nyx_string* %4609, %nyx_string* %4610)
  ret %nyx_string* %4611
else703:
  br label %merge704
merge704:
  %4612 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4613 = getelementptr [4 x i8], [4 x i8]* @.str703, i32 0, i32 0
  %4614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %4613, i64 3)
  %4615 = call i1 @nyx_string_ends_with(%nyx_string* %4612, %nyx_string* %4614)
  %4616 = xor i1 %4615, true
  br i1 %4616, label %then705, label %else706
then705:
  %4617 = getelementptr [31 x i8], [31 x i8]* @.str704, i32 0, i32 0
  %4618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %4617, i64 30)
  %4619 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4620 = call %nyx_string* @nyx_string_concat(%nyx_string* %4618, %nyx_string* %4619)
  ret %nyx_string* %4620
else706:
  br label %merge707
merge707:
  %4621 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4622 = call i8* @nyx_string_to_cstr(%nyx_string* %4621)
  %4623 = call i1 @nyx_file_exists(i8* %4622)
  %4624 = xor i1 %4623, true
  br i1 %4624, label %then708, label %else709
then708:
  %4625 = getelementptr [31 x i8], [31 x i8]* @.str705, i32 0, i32 0
  %4626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %4625, i64 30)
  %4627 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4628 = call %nyx_string* @nyx_string_concat(%nyx_string* %4626, %nyx_string* %4627)
  %4629 = getelementptr [48 x i8], [48 x i8]* @.str706, i32 0, i32 0
  %4630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %4629, i64 47)
  %4631 = call %nyx_string* @nyx_string_concat(%nyx_string* %4628, %nyx_string* %4630)
  ret %nyx_string* %4631
else709:
  br label %merge710
merge710:
  %4632 = getelementptr [1 x i8], [1 x i8]* @.str707, i32 0, i32 0
  %4633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %4632, i64 0)
  ret %nyx_string* %4633
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %4634 = load %nyx_string*, %nyx_string** %p.ptr
  %4635 = getelementptr [3 x i8], [3 x i8]* @.str708, i32 0, i32 0
  %4636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %4635, i64 2)
  %4637 = call i1 @nyx_string_starts_with(%nyx_string* %4634, %nyx_string* %4636)
  br i1 %4637, label %then711, label %else712
then711:
  %4638 = load %nyx_string*, %nyx_string** %p.ptr
  %4639 = load %nyx_string*, %nyx_string** %p.ptr
  %4640 = call i64 @nyx_string_byte_length(%nyx_string* %4639)
  %4641 = call %nyx_string* @nyx_string_substring(%nyx_string* %4638, i64 2, i64 %4640)
  ret %nyx_string* %4641
else712:
  br label %merge713
merge713:
  %4642 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %4642
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %4643 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4644 = getelementptr [1 x i8], [1 x i8]* @.str709, i32 0, i32 0
  %4645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %4644, i64 0)
  %4646 = call i1 @nyx_string_equals(%nyx_string* %4643, %nyx_string* %4645)
  br i1 %4646, label %then714, label %else715
then714:
  %4647 = getelementptr [1 x i8], [1 x i8]* @.str710, i32 0, i32 0
  %4648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %4647, i64 0)
  ret %nyx_string* %4648
else715:
  br label %merge716
merge716:
  %4649 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4650 = call %nyx_string* @strip_dot_slash(%nyx_string* %4649)
  %4651 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4652 = load %nyx_string*, %nyx_string** %4651
  %4653 = call %nyx_string* @strip_dot_slash(%nyx_string* %4652)
  %4654 = call i1 @nyx_string_equals(%nyx_string* %4650, %nyx_string* %4653)
  br i1 %4654, label %then717, label %else718
then717:
  %4655 = getelementptr [1 x i8], [1 x i8]* @.str711, i32 0, i32 0
  %4656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %4655, i64 0)
  ret %nyx_string* %4656
else718:
  br label %merge719
merge719:
  %4657 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4658 = alloca %nyx_string*
  store %nyx_string* %4657, %nyx_string** %4658
  %4659 = alloca i64
  store i64 0, i64* %4659
  %4660 = call i8* @llvm.stacksave()
  br label %while_cond720
while_cond720:
  %4661 = load i64, i64* %4659
  %4662 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4663 = call i64 @nyx_string_byte_length(%nyx_string* %4662)
  %4664 = icmp slt i64 %4661, %4663
  br i1 %4664, label %while_body721, label %while_end722
while_body721:
  call void @llvm.stackrestore(i8* %4660)
  %4665 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4666 = load i64, i64* %4659
  %4667 = call i8 @nyx_string_char_at(%nyx_string* %4665, i64 %4666)
  %4668 = zext i8 %4667 to i64
  %4669 = trunc i64 %4668 to i8
  %4670 = alloca i8
  store i8 %4669, i8* %4670
  %4671 = load i8, i8* %4670
  %4672 = getelementptr [1 x i8], [1 x i8]* @.str712, i32 0, i32 0
  %4673 = load i8, i8* %4672
  %4674 = zext i8 %4673 to i64
  %4675 = zext i8 %4671 to i64
  %4676 = icmp eq i64 %4675, %4674
  br i1 %4676, label %then723, label %else724
then723:
  %4677 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4678 = load i64, i64* %4659
  %4679 = add i64 %4678, 1
  %4680 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4681 = call i64 @nyx_string_byte_length(%nyx_string* %4680)
  %4682 = call %nyx_string* @nyx_string_substring(%nyx_string* %4677, i64 %4679, i64 %4681)
  store %nyx_string* %4682, %nyx_string** %4658
  br label %merge725
else724:
  br label %merge725
merge725:
  %4683 = load i64, i64* %4659
  %4684 = add i64 %4683, 1
  store i64 %4684, i64* %4659
  br label %while_cond720
while_end722:
  %4685 = load %nyx_string*, %nyx_string** %4658
  %4686 = load %nyx_string*, %nyx_string** %4658
  %4687 = call i64 @nyx_string_byte_length(%nyx_string* %4686)
  %4688 = sub i64 %4687, 3
  %4689 = call %nyx_string* @nyx_string_substring(%nyx_string* %4685, i64 0, i64 %4688)
  %4690 = alloca %nyx_string*
  store %nyx_string* %4689, %nyx_string** %4690
  %4691 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4692 = load %nyx_string*, %nyx_string** %4691
  %4693 = getelementptr [2 x i8], [2 x i8]* @.str713, i32 0, i32 0
  %4694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %4693, i64 1)
  %4695 = call %nyx_string* @nyx_string_concat(%nyx_string* %4692, %nyx_string* %4694)
  %4696 = load %nyx_string*, %nyx_string** %4690
  %4697 = call %nyx_string* @nyx_string_concat(%nyx_string* %4695, %nyx_string* %4696)
  ret %nyx_string* %4697
}

define internal %nyx_string* @toolchain_version(
) {
  %4698 = getelementptr [9 x i8], [9 x i8]* @.str714, i32 0, i32 0
  %4699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %4698, i64 8)
  %4700 = call i8* @nyx_string_to_cstr(%nyx_string* %4699)
  %4701 = call %nyx_string* @nyx_getenv(i8* %4700)
  %4702 = alloca %nyx_string*
  store %nyx_string* %4701, %nyx_string** %4702
  %4703 = load %nyx_string*, %nyx_string** %4702
  %4704 = getelementptr [1 x i8], [1 x i8]* @.str715, i32 0, i32 0
  %4705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %4704, i64 0)
  %4706 = call i1 @nyx_string_equals(%nyx_string* %4703, %nyx_string* %4705)
  br i1 %4706, label %then726, label %else727
then726:
  %4707 = getelementptr [5 x i8], [5 x i8]* @.str716, i32 0, i32 0
  %4708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %4707, i64 4)
  %4709 = call i8* @nyx_string_to_cstr(%nyx_string* %4708)
  %4710 = call %nyx_string* @nyx_getenv(i8* %4709)
  %4711 = alloca %nyx_string*
  store %nyx_string* %4710, %nyx_string** %4711
  %4712 = load %nyx_string*, %nyx_string** %4711
  %4713 = getelementptr [1 x i8], [1 x i8]* @.str717, i32 0, i32 0
  %4714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %4713, i64 0)
  %4715 = call i1 @nyx_string_equals(%nyx_string* %4712, %nyx_string* %4714)
  %4716 = xor i1 %4715, true
  br i1 %4716, label %then729, label %else730
then729:
  %4717 = load %nyx_string*, %nyx_string** %4711
  %4718 = getelementptr [6 x i8], [6 x i8]* @.str718, i32 0, i32 0
  %4719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %4718, i64 5)
  %4720 = call %nyx_string* @nyx_string_concat(%nyx_string* %4717, %nyx_string* %4719)
  store %nyx_string* %4720, %nyx_string** %4702
  br label %merge731
else730:
  br label %merge731
merge731:
  br label %merge728
else727:
  br label %merge728
merge728:
  %4721 = load %nyx_string*, %nyx_string** %4702
  %4722 = getelementptr [1 x i8], [1 x i8]* @.str719, i32 0, i32 0
  %4723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %4722, i64 0)
  %4724 = call i1 @nyx_string_equals(%nyx_string* %4721, %nyx_string* %4723)
  %4725 = xor i1 %4724, true
  br i1 %4725, label %then732, label %else733
then732:
  %4726 = load %nyx_string*, %nyx_string** %4702
  %4727 = getelementptr [9 x i8], [9 x i8]* @.str720, i32 0, i32 0
  %4728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %4727, i64 8)
  %4729 = call %nyx_string* @nyx_string_concat(%nyx_string* %4726, %nyx_string* %4728)
  %4730 = call i8* @nyx_string_to_cstr(%nyx_string* %4729)
  %4731 = call i1 @nyx_file_exists(i8* %4730)
  br i1 %4731, label %then735, label %else736
then735:
  %4732 = load %nyx_string*, %nyx_string** %4702
  %4733 = getelementptr [9 x i8], [9 x i8]* @.str721, i32 0, i32 0
  %4734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %4733, i64 8)
  %4735 = call %nyx_string* @nyx_string_concat(%nyx_string* %4732, %nyx_string* %4734)
  %4736 = call i8* @nyx_string_to_cstr(%nyx_string* %4735)
  %4737 = call %nyx_string* @nyx_read_file(i8* %4736)
  %4738 = alloca %nyx_string*
  store %nyx_string* %4737, %nyx_string** %4738
  %4739 = load %nyx_string*, %nyx_string** %4738
  %4740 = call %nyx_string* @nyx_string_trim(%nyx_string* %4739)
  ret %nyx_string* %4740
else736:
  br label %merge737
merge737:
  br label %merge734
else733:
  br label %merge734
merge734:
  %4741 = getelementptr [8 x i8], [8 x i8]* @.str722, i32 0, i32 0
  %4742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %4741, i64 7)
  %4743 = call i8* @nyx_string_to_cstr(%nyx_string* %4742)
  %4744 = call i1 @nyx_file_exists(i8* %4743)
  br i1 %4744, label %then738, label %else739
then738:
  %4745 = getelementptr [8 x i8], [8 x i8]* @.str723, i32 0, i32 0
  %4746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %4745, i64 7)
  %4747 = call i8* @nyx_string_to_cstr(%nyx_string* %4746)
  %4748 = call %nyx_string* @nyx_read_file(i8* %4747)
  %4749 = alloca %nyx_string*
  store %nyx_string* %4748, %nyx_string** %4749
  %4750 = load %nyx_string*, %nyx_string** %4749
  %4751 = call %nyx_string* @nyx_string_trim(%nyx_string* %4750)
  ret %nyx_string* %4751
else739:
  br label %merge740
merge740:
  %4752 = getelementptr [7 x i8], [7 x i8]* @.str724, i32 0, i32 0
  %4753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %4752, i64 6)
  ret %nyx_string* %4753
}

define internal %nyx_string* @report_template(
) {
  %4754 = getelementptr [51 x i8], [51 x i8]* @.str725, i32 0, i32 0
  %4755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %4754, i64 50)
  %4756 = alloca %nyx_string*
  store %nyx_string* %4755, %nyx_string** %4756
  %4757 = load %nyx_string*, %nyx_string** %4756
  %4758 = getelementptr [73 x i8], [73 x i8]* @.str726, i32 0, i32 0
  %4759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %4758, i64 72)
  %4760 = call %nyx_string* @nyx_string_concat(%nyx_string* %4757, %nyx_string* %4759)
  store %nyx_string* %4760, %nyx_string** %4756
  %4761 = load %nyx_string*, %nyx_string** %4756
  %4762 = getelementptr [88 x i8], [88 x i8]* @.str727, i32 0, i32 0
  %4763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %4762, i64 87)
  %4764 = call %nyx_string* @nyx_string_concat(%nyx_string* %4761, %nyx_string* %4763)
  store %nyx_string* %4764, %nyx_string** %4756
  %4765 = load %nyx_string*, %nyx_string** %4756
  %4766 = getelementptr [51 x i8], [51 x i8]* @.str728, i32 0, i32 0
  %4767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %4766, i64 50)
  %4768 = call %nyx_string* @nyx_string_concat(%nyx_string* %4765, %nyx_string* %4767)
  store %nyx_string* %4768, %nyx_string** %4756
  %4769 = load %nyx_string*, %nyx_string** %4756
  %4770 = getelementptr [90 x i8], [90 x i8]* @.str729, i32 0, i32 0
  %4771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %4770, i64 89)
  %4772 = call %nyx_string* @nyx_string_concat(%nyx_string* %4769, %nyx_string* %4771)
  store %nyx_string* %4772, %nyx_string** %4756
  %4773 = load %nyx_string*, %nyx_string** %4756
  %4774 = getelementptr [104 x i8], [104 x i8]* @.str730, i32 0, i32 0
  %4775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %4774, i64 103)
  %4776 = call %nyx_string* @nyx_string_concat(%nyx_string* %4773, %nyx_string* %4775)
  store %nyx_string* %4776, %nyx_string** %4756
  %4777 = load %nyx_string*, %nyx_string** %4756
  %4778 = getelementptr [99 x i8], [99 x i8]* @.str731, i32 0, i32 0
  %4779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %4778, i64 98)
  %4780 = call %nyx_string* @nyx_string_concat(%nyx_string* %4777, %nyx_string* %4779)
  store %nyx_string* %4780, %nyx_string** %4756
  %4781 = load %nyx_string*, %nyx_string** %4756
  %4782 = getelementptr [126 x i8], [126 x i8]* @.str732, i32 0, i32 0
  %4783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %4782, i64 125)
  %4784 = call %nyx_string* @nyx_string_concat(%nyx_string* %4781, %nyx_string* %4783)
  store %nyx_string* %4784, %nyx_string** %4756
  %4785 = load %nyx_string*, %nyx_string** %4756
  %4786 = getelementptr [21 x i8], [21 x i8]* @.str733, i32 0, i32 0
  %4787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %4786, i64 20)
  %4788 = call %nyx_string* @nyx_string_concat(%nyx_string* %4785, %nyx_string* %4787)
  %4789 = call %nyx_string* @toolchain_version()
  %4790 = call %nyx_string* @nyx_string_concat(%nyx_string* %4788, %nyx_string* %4789)
  %4791 = getelementptr [25 x i8], [25 x i8]* @.str734, i32 0, i32 0
  %4792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %4791, i64 24)
  %4793 = call %nyx_string* @nyx_string_concat(%nyx_string* %4790, %nyx_string* %4792)
  store %nyx_string* %4793, %nyx_string** %4756
  %4794 = load %nyx_string*, %nyx_string** %4756
  ret %nyx_string* %4794
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %4795 = getelementptr [12 x i8], [12 x i8]* @.str735, i32 0, i32 0
  %4796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %4795, i64 11)
  %4797 = alloca %nyx_string*
  store %nyx_string* %4796, %nyx_string** %4797
  %4798 = load i1, i1* %do_send.ptr
  %4799 = xor i1 %4798, true
  br i1 %4799, label %then741, label %else742
then741:
  %4800 = load %nyx_string*, %nyx_string** %4797
  %4801 = call i8* @nyx_string_to_cstr(%nyx_string* %4800)
  %4802 = call i1 @nyx_file_exists(i8* %4801)
  br i1 %4802, label %then744, label %else745
then744:
  %4803 = load %nyx_string*, %nyx_string** %4797
  %4804 = call i8* @nyx_string_to_cstr(%nyx_string* %4803)
  %4805 = call %nyx_string* @nyx_read_file(i8* %4804)
  %4806 = alloca %nyx_string*
  store %nyx_string* %4805, %nyx_string** %4806
  %4807 = load %nyx_string*, %nyx_string** %4806
  %4808 = call i64 @nyx_string_byte_length(%nyx_string* %4807)
  %4809 = icmp sge i64 %4808, 40
  br i1 %4809, label %then747, label %else748
then747:
  %4810 = getelementptr [80 x i8], [80 x i8]* @.str736, i32 0, i32 0
  %4811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %4810, i64 79)
  %4812 = call i8* @nyx_string_to_cstr(%nyx_string* %4811)
  call void @nyx_print_string(i8* %4812)
  %4813 = getelementptr [62 x i8], [62 x i8]* @.str737, i32 0, i32 0
  %4814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %4813, i64 61)
  %4815 = call i8* @nyx_string_to_cstr(%nyx_string* %4814)
  call void @nyx_print_string(i8* %4815)
  ret i1 1
else748:
  br label %merge749
merge749:
  br label %merge746
else745:
  br label %merge746
merge746:
  %4816 = load %nyx_string*, %nyx_string** %4797
  %4817 = call %nyx_string* @report_template()
  %4818 = call i8* @nyx_string_to_cstr(%nyx_string* %4816)
  %4819 = call i1 @nyx_write_file_safe(i8* %4818, %nyx_string* %4817)
  %4820 = getelementptr [78 x i8], [78 x i8]* @.str738, i32 0, i32 0
  %4821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %4820, i64 77)
  %4822 = call i8* @nyx_string_to_cstr(%nyx_string* %4821)
  call void @nyx_print_string(i8* %4822)
  %4823 = getelementptr [72 x i8], [72 x i8]* @.str739, i32 0, i32 0
  %4824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %4823, i64 71)
  %4825 = call i8* @nyx_string_to_cstr(%nyx_string* %4824)
  call void @nyx_print_string(i8* %4825)
  %4826 = getelementptr [53 x i8], [53 x i8]* @.str740, i32 0, i32 0
  %4827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %4826, i64 52)
  %4828 = call i8* @nyx_string_to_cstr(%nyx_string* %4827)
  call void @nyx_print_string(i8* %4828)
  ret i1 1
else742:
  br label %merge743
merge743:
  %4829 = load %nyx_string*, %nyx_string** %4797
  %4830 = alloca %nyx_string*
  store %nyx_string* %4829, %nyx_string** %4830
  %4831 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %4832 = getelementptr [1 x i8], [1 x i8]* @.str741, i32 0, i32 0
  %4833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %4832, i64 0)
  %4834 = call i1 @nyx_string_equals(%nyx_string* %4831, %nyx_string* %4833)
  %4835 = xor i1 %4834, true
  br i1 %4835, label %then750, label %else751
then750:
  %4836 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %4836, %nyx_string** %4830
  br label %merge752
else751:
  br label %merge752
merge752:
  %4837 = load %nyx_string*, %nyx_string** %4830
  %4838 = call i8* @nyx_string_to_cstr(%nyx_string* %4837)
  %4839 = call i1 @nyx_file_exists(i8* %4838)
  %4840 = xor i1 %4839, true
  br i1 %4840, label %then753, label %else754
then753:
  %4841 = getelementptr [18 x i8], [18 x i8]* @.str742, i32 0, i32 0
  %4842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %4841, i64 17)
  %4843 = load %nyx_string*, %nyx_string** %4830
  %4844 = call %nyx_string* @nyx_string_concat(%nyx_string* %4842, %nyx_string* %4843)
  %4845 = getelementptr [57 x i8], [57 x i8]* @.str743, i32 0, i32 0
  %4846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %4845, i64 56)
  %4847 = call %nyx_string* @nyx_string_concat(%nyx_string* %4844, %nyx_string* %4846)
  %4848 = call i8* @nyx_string_to_cstr(%nyx_string* %4847)
  call void @nyx_print_string(i8* %4848)
  ret i1 0
else754:
  br label %merge755
merge755:
  %4849 = load %nyx_string*, %nyx_string** %4830
  %4850 = call i8* @nyx_string_to_cstr(%nyx_string* %4849)
  %4851 = call %nyx_string* @nyx_read_file(i8* %4850)
  %4852 = alloca %nyx_string*
  store %nyx_string* %4851, %nyx_string** %4852
  %4853 = load %nyx_string*, %nyx_string** %4852
  %4854 = call i64 @nyx_string_byte_length(%nyx_string* %4853)
  %4855 = icmp slt i64 %4854, 40
  br i1 %4855, label %then756, label %else757
then756:
  %4856 = getelementptr [66 x i8], [66 x i8]* @.str744, i32 0, i32 0
  %4857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %4856, i64 65)
  %4858 = call i8* @nyx_string_to_cstr(%nyx_string* %4857)
  call void @nyx_print_string(i8* %4858)
  ret i1 0
else757:
  br label %merge758
merge758:
  %4859 = getelementptr [1 x i8], [1 x i8]* @.str745, i32 0, i32 0
  %4860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %4859, i64 0)
  %4861 = alloca %nyx_string*
  store %nyx_string* %4860, %nyx_string** %4861
  %4862 = getelementptr [5 x i8], [5 x i8]* @.str746, i32 0, i32 0
  %4863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %4862, i64 4)
  %4864 = call i8* @nyx_string_to_cstr(%nyx_string* %4863)
  %4865 = call %nyx_string* @nyx_getenv(i8* %4864)
  %4866 = alloca %nyx_string*
  store %nyx_string* %4865, %nyx_string** %4866
  %4867 = load %nyx_string*, %nyx_string** %4866
  %4868 = getelementptr [1 x i8], [1 x i8]* @.str747, i32 0, i32 0
  %4869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %4868, i64 0)
  %4870 = call i1 @nyx_string_equals(%nyx_string* %4867, %nyx_string* %4869)
  %4871 = xor i1 %4870, true
  br i1 %4871, label %then759, label %else760
then759:
  %4872 = load %nyx_string*, %nyx_string** %4866
  %4873 = getelementptr [15 x i8], [15 x i8]* @.str748, i32 0, i32 0
  %4874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %4873, i64 14)
  %4875 = call %nyx_string* @nyx_string_concat(%nyx_string* %4872, %nyx_string* %4874)
  %4876 = call i8* @nyx_string_to_cstr(%nyx_string* %4875)
  %4877 = call i1 @nyx_file_exists(i8* %4876)
  br i1 %4877, label %then762, label %else763
then762:
  %4878 = load %nyx_string*, %nyx_string** %4866
  %4879 = getelementptr [15 x i8], [15 x i8]* @.str749, i32 0, i32 0
  %4880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %4879, i64 14)
  %4881 = call %nyx_string* @nyx_string_concat(%nyx_string* %4878, %nyx_string* %4880)
  %4882 = call i8* @nyx_string_to_cstr(%nyx_string* %4881)
  %4883 = call %nyx_string* @nyx_read_file(i8* %4882)
  %4884 = alloca %nyx_string*
  store %nyx_string* %4883, %nyx_string** %4884
  %4885 = load %nyx_string*, %nyx_string** %4884
  %4886 = call %nyx_string* @nyx_string_trim(%nyx_string* %4885)
  store %nyx_string* %4886, %nyx_string** %4861
  br label %merge764
else763:
  br label %merge764
merge764:
  br label %merge761
else760:
  br label %merge761
merge761:
  %4887 = load %nyx_string*, %nyx_string** %4861
  %4888 = getelementptr [1 x i8], [1 x i8]* @.str750, i32 0, i32 0
  %4889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %4888, i64 0)
  %4890 = call i1 @nyx_string_equals(%nyx_string* %4887, %nyx_string* %4889)
  br i1 %4890, label %then765, label %else766
then765:
  %4891 = getelementptr [77 x i8], [77 x i8]* @.str751, i32 0, i32 0
  %4892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %4891, i64 76)
  %4893 = call i8* @nyx_string_to_cstr(%nyx_string* %4892)
  call void @nyx_print_string(i8* %4893)
  br label %merge767
else766:
  br label %merge767
merge767:
  %4894 = getelementptr [10 x i8], [10 x i8]* @.str752, i32 0, i32 0
  %4895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %4894, i64 9)
  %4896 = load %nyx_string*, %nyx_string** %4861
  %4897 = call i64 @kv_connect_auth(%nyx_string* %4895, i64 6380, %nyx_string* %4896)
  %4898 = alloca i64
  store i64 %4897, i64* %4898
  %4899 = load i64, i64* %4898
  %4900 = icmp slt i64 %4899, 0
  br i1 %4900, label %then768, label %else769
then768:
  %4901 = getelementptr [54 x i8], [54 x i8]* @.str753, i32 0, i32 0
  %4902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %4901, i64 53)
  %4903 = call i8* @nyx_string_to_cstr(%nyx_string* %4902)
  call void @nyx_print_string(i8* %4903)
  %4904 = getelementptr [22 x i8], [22 x i8]* @.str754, i32 0, i32 0
  %4905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %4904, i64 21)
  %4906 = load %nyx_string*, %nyx_string** %4830
  %4907 = call %nyx_string* @nyx_string_concat(%nyx_string* %4905, %nyx_string* %4906)
  %4908 = getelementptr [28 x i8], [28 x i8]* @.str755, i32 0, i32 0
  %4909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %4908, i64 27)
  %4910 = call %nyx_string* @nyx_string_concat(%nyx_string* %4907, %nyx_string* %4909)
  %4911 = call i8* @nyx_string_to_cstr(%nyx_string* %4910)
  call void @nyx_print_string(i8* %4911)
  %4912 = getelementptr [44 x i8], [44 x i8]* @.str756, i32 0, i32 0
  %4913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %4912, i64 43)
  %4914 = call i8* @nyx_string_to_cstr(%nyx_string* %4913)
  call void @nyx_print_string(i8* %4914)
  ret i1 0
else769:
  br label %merge770
merge770:
  %4915 = getelementptr [5 x i8], [5 x i8]* @.str757, i32 0, i32 0
  %4916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %4915, i64 4)
  %4917 = load %nyx_string*, %nyx_string** %4852
  %4918 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %4917)
  %4919 = call %nyx_string* @nyx_string_concat(%nyx_string* %4916, %nyx_string* %4918)
  %4920 = alloca %nyx_string*
  store %nyx_string* %4919, %nyx_string** %4920
  %4921 = load i64, i64* %4898
  %4922 = getelementptr [11 x i8], [11 x i8]* @.str758, i32 0, i32 0
  %4923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %4922, i64 10)
  %4924 = load %nyx_string*, %nyx_string** %4920
  %4925 = call i64 @kv_rpush(i64 %4921, %nyx_string* %4923, %nyx_string* %4924)
  %4926 = alloca i64
  store i64 %4925, i64* %4926
  %4927 = load i64, i64* %4898
  %4928 = call i64 @kv_close(i64 %4927)
  %4929 = load i64, i64* %4926
  %4930 = icmp sle i64 %4929, 0
  br i1 %4930, label %then771, label %else772
then771:
  %4931 = getelementptr [37 x i8], [37 x i8]* @.str759, i32 0, i32 0
  %4932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %4931, i64 36)
  %4933 = call i8* @nyx_string_to_cstr(%nyx_string* %4932)
  call void @nyx_print_string(i8* %4933)
  ret i1 0
else772:
  br label %merge773
merge773:
  %4934 = getelementptr [55 x i8], [55 x i8]* @.str760, i32 0, i32 0
  %4935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %4934, i64 54)
  %4936 = load i64, i64* %4926
  %4937 = call %nyx_string* @nyx_string_from_int(i64 %4936)
  %4938 = call %nyx_string* @nyx_string_concat(%nyx_string* %4935, %nyx_string* %4937)
  %4939 = getelementptr [15 x i8], [15 x i8]* @.str761, i32 0, i32 0
  %4940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %4939, i64 14)
  %4941 = call %nyx_string* @nyx_string_concat(%nyx_string* %4938, %nyx_string* %4940)
  %4942 = call i8* @nyx_string_to_cstr(%nyx_string* %4941)
  call void @nyx_print_string(i8* %4942)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %4943 = getelementptr [9 x i8], [9 x i8]* @.str762, i32 0, i32 0
  %4944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %4943, i64 8)
  %4945 = call i8* @nyx_string_to_cstr(%nyx_string* %4944)
  %4946 = call %nyx_string* @nyx_getenv(i8* %4945)
  %4947 = alloca %nyx_string*
  store %nyx_string* %4946, %nyx_string** %4947
  %4948 = load %nyx_string*, %nyx_string** %4947
  %4949 = getelementptr [1 x i8], [1 x i8]* @.str763, i32 0, i32 0
  %4950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %4949, i64 0)
  %4951 = call i1 @nyx_string_equals(%nyx_string* %4948, %nyx_string* %4950)
  br i1 %4951, label %then774, label %else775
then774:
  %4952 = getelementptr [5 x i8], [5 x i8]* @.str764, i32 0, i32 0
  %4953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %4952, i64 4)
  %4954 = call i8* @nyx_string_to_cstr(%nyx_string* %4953)
  %4955 = call %nyx_string* @nyx_getenv(i8* %4954)
  %4956 = alloca %nyx_string*
  store %nyx_string* %4955, %nyx_string** %4956
  %4957 = load %nyx_string*, %nyx_string** %4956
  %4958 = getelementptr [6 x i8], [6 x i8]* @.str765, i32 0, i32 0
  %4959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %4958, i64 5)
  %4960 = call %nyx_string* @nyx_string_concat(%nyx_string* %4957, %nyx_string* %4959)
  %4961 = alloca %nyx_string*
  store %nyx_string* %4960, %nyx_string** %4961
  %4962 = alloca i1
  store i1 false, i1* %4962
  %4963 = load %nyx_string*, %nyx_string** %4956
  %4964 = getelementptr [1 x i8], [1 x i8]* @.str766, i32 0, i32 0
  %4965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %4964, i64 0)
  %4966 = call i1 @nyx_string_equals(%nyx_string* %4963, %nyx_string* %4965)
  %4967 = xor i1 %4966, true
  br i1 %4967, label %sc_and_rhs777, label %sc_and_end778
sc_and_rhs777:
  %4968 = load %nyx_string*, %nyx_string** %4961
  %4969 = getelementptr [5 x i8], [5 x i8]* @.str767, i32 0, i32 0
  %4970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %4969, i64 4)
  %4971 = call %nyx_string* @nyx_string_concat(%nyx_string* %4968, %nyx_string* %4970)
  %4972 = call i8* @nyx_string_to_cstr(%nyx_string* %4971)
  %4973 = call i1 @nyx_file_exists(i8* %4972)
  store i1 %4973, i1* %4962
  br label %sc_and_end778
sc_and_end778:
  %4974 = load i1, i1* %4962
  br i1 %4974, label %then779, label %else780
then779:
  %4975 = load %nyx_string*, %nyx_string** %4961
  store %nyx_string* %4975, %nyx_string** %4947
  br label %merge781
else780:
  br label %merge781
merge781:
  br label %merge776
else775:
  br label %merge776
merge776:
  %4976 = load %nyx_string*, %nyx_string** %4947
  %4977 = getelementptr [1 x i8], [1 x i8]* @.str768, i32 0, i32 0
  %4978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %4977, i64 0)
  %4979 = call i1 @nyx_string_equals(%nyx_string* %4976, %nyx_string* %4978)
  br i1 %4979, label %then782, label %else783
then782:
  %4980 = getelementptr [4 x i8], [4 x i8]* @.str769, i32 0, i32 0
  %4981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %4980, i64 3)
  %4982 = call i8* @nyx_string_to_cstr(%nyx_string* %4981)
  %4983 = call i1 @nyx_file_exists(i8* %4982)
  br i1 %4983, label %then785, label %else786
then785:
  %4984 = getelementptr [2 x i8], [2 x i8]* @.str770, i32 0, i32 0
  %4985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %4984, i64 1)
  store %nyx_string* %4985, %nyx_string** %4947
  br label %merge787
else786:
  br label %merge787
merge787:
  br label %merge784
else783:
  br label %merge784
merge784:
  %4986 = load %nyx_string*, %nyx_string** %4947
  %4987 = getelementptr [1 x i8], [1 x i8]* @.str771, i32 0, i32 0
  %4988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %4987, i64 0)
  %4989 = call i1 @nyx_string_equals(%nyx_string* %4986, %nyx_string* %4988)
  br i1 %4989, label %then788, label %else789
then788:
  %4990 = getelementptr [1 x i8], [1 x i8]* @.str772, i32 0, i32 0
  %4991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %4990, i64 0)
  ret %nyx_string* %4991
else789:
  br label %merge790
merge790:
  %4992 = load %nyx_string*, %nyx_string** %4947
  %4993 = getelementptr [5 x i8], [5 x i8]* @.str773, i32 0, i32 0
  %4994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %4993, i64 4)
  %4995 = call %nyx_string* @nyx_string_concat(%nyx_string* %4992, %nyx_string* %4994)
  ret %nyx_string* %4995
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %4996 = alloca i1
  store i1 true, i1* %4996
  %4997 = alloca i1
  store i1 true, i1* %4997
  %4998 = alloca i1
  store i1 true, i1* %4998
  %4999 = load %nyx_string*, %nyx_string** %name.ptr
  %5000 = getelementptr [5 x i8], [5 x i8]* @.str774, i32 0, i32 0
  %5001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %5000, i64 4)
  %5002 = call i1 @nyx_string_equals(%nyx_string* %4999, %nyx_string* %5001)
  br i1 %5002, label %sc_or_end792, label %sc_or_rhs791
sc_or_rhs791:
  %5003 = load %nyx_string*, %nyx_string** %name.ptr
  %5004 = getelementptr [4 x i8], [4 x i8]* @.str775, i32 0, i32 0
  %5005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %5004, i64 3)
  %5006 = call i1 @nyx_string_equals(%nyx_string* %5003, %nyx_string* %5005)
  store i1 %5006, i1* %4998
  br label %sc_or_end792
sc_or_end792:
  %5007 = load i1, i1* %4998
  br i1 %5007, label %sc_or_end794, label %sc_or_rhs793
sc_or_rhs793:
  %5008 = load %nyx_string*, %nyx_string** %name.ptr
  %5009 = getelementptr [10 x i8], [10 x i8]* @.str776, i32 0, i32 0
  %5010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %5009, i64 9)
  %5011 = call i1 @nyx_string_equals(%nyx_string* %5008, %nyx_string* %5010)
  store i1 %5011, i1* %4997
  br label %sc_or_end794
sc_or_end794:
  %5012 = load i1, i1* %4997
  br i1 %5012, label %sc_or_end796, label %sc_or_rhs795
sc_or_rhs795:
  %5013 = load %nyx_string*, %nyx_string** %name.ptr
  %5014 = getelementptr [7 x i8], [7 x i8]* @.str777, i32 0, i32 0
  %5015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %5014, i64 6)
  %5016 = call i1 @nyx_string_equals(%nyx_string* %5013, %nyx_string* %5015)
  store i1 %5016, i1* %4996
  br label %sc_or_end796
sc_or_end796:
  %5017 = load i1, i1* %4996
  br i1 %5017, label %then797, label %else798
then797:
  %5018 = getelementptr [11 x i8], [11 x i8]* @.str778, i32 0, i32 0
  %5019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %5018, i64 10)
  ret %nyx_string* %5019
else798:
  br label %merge799
merge799:
  %5020 = alloca i1
  store i1 true, i1* %5020
  %5021 = alloca i1
  store i1 true, i1* %5021
  %5022 = load %nyx_string*, %nyx_string** %name.ptr
  %5023 = getelementptr [7 x i8], [7 x i8]* @.str779, i32 0, i32 0
  %5024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %5023, i64 6)
  %5025 = call i1 @nyx_string_equals(%nyx_string* %5022, %nyx_string* %5024)
  br i1 %5025, label %sc_or_end801, label %sc_or_rhs800
sc_or_rhs800:
  %5026 = load %nyx_string*, %nyx_string** %name.ptr
  %5027 = getelementptr [3 x i8], [3 x i8]* @.str780, i32 0, i32 0
  %5028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %5027, i64 2)
  %5029 = call i1 @nyx_string_equals(%nyx_string* %5026, %nyx_string* %5028)
  store i1 %5029, i1* %5021
  br label %sc_or_end801
sc_or_end801:
  %5030 = load i1, i1* %5021
  br i1 %5030, label %sc_or_end803, label %sc_or_rhs802
sc_or_rhs802:
  %5031 = load %nyx_string*, %nyx_string** %name.ptr
  %5032 = getelementptr [9 x i8], [9 x i8]* @.str781, i32 0, i32 0
  %5033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %5032, i64 8)
  %5034 = call i1 @nyx_string_equals(%nyx_string* %5031, %nyx_string* %5033)
  store i1 %5034, i1* %5020
  br label %sc_or_end803
sc_or_end803:
  %5035 = load i1, i1* %5020
  br i1 %5035, label %then804, label %else805
then804:
  %5036 = getelementptr [20 x i8], [20 x i8]* @.str782, i32 0, i32 0
  %5037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %5036, i64 19)
  ret %nyx_string* %5037
else805:
  br label %merge806
merge806:
  %5038 = alloca i1
  store i1 true, i1* %5038
  %5039 = alloca i1
  store i1 true, i1* %5039
  %5040 = alloca i1
  store i1 true, i1* %5040
  %5041 = alloca i1
  store i1 true, i1* %5041
  %5042 = alloca i1
  store i1 true, i1* %5042
  %5043 = load %nyx_string*, %nyx_string** %name.ptr
  %5044 = getelementptr [5 x i8], [5 x i8]* @.str783, i32 0, i32 0
  %5045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %5044, i64 4)
  %5046 = call i1 @nyx_string_equals(%nyx_string* %5043, %nyx_string* %5045)
  br i1 %5046, label %sc_or_end808, label %sc_or_rhs807
sc_or_rhs807:
  %5047 = load %nyx_string*, %nyx_string** %name.ptr
  %5048 = getelementptr [8 x i8], [8 x i8]* @.str784, i32 0, i32 0
  %5049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %5048, i64 7)
  %5050 = call i1 @nyx_string_equals(%nyx_string* %5047, %nyx_string* %5049)
  store i1 %5050, i1* %5042
  br label %sc_or_end808
sc_or_end808:
  %5051 = load i1, i1* %5042
  br i1 %5051, label %sc_or_end810, label %sc_or_rhs809
sc_or_rhs809:
  %5052 = load %nyx_string*, %nyx_string** %name.ptr
  %5053 = getelementptr [5 x i8], [5 x i8]* @.str785, i32 0, i32 0
  %5054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %5053, i64 4)
  %5055 = call i1 @nyx_string_equals(%nyx_string* %5052, %nyx_string* %5054)
  store i1 %5055, i1* %5041
  br label %sc_or_end810
sc_or_end810:
  %5056 = load i1, i1* %5041
  br i1 %5056, label %sc_or_end812, label %sc_or_rhs811
sc_or_rhs811:
  %5057 = load %nyx_string*, %nyx_string** %name.ptr
  %5058 = getelementptr [4 x i8], [4 x i8]* @.str786, i32 0, i32 0
  %5059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %5058, i64 3)
  %5060 = call i1 @nyx_string_equals(%nyx_string* %5057, %nyx_string* %5059)
  store i1 %5060, i1* %5040
  br label %sc_or_end812
sc_or_end812:
  %5061 = load i1, i1* %5040
  br i1 %5061, label %sc_or_end814, label %sc_or_rhs813
sc_or_rhs813:
  %5062 = load %nyx_string*, %nyx_string** %name.ptr
  %5063 = getelementptr [7 x i8], [7 x i8]* @.str787, i32 0, i32 0
  %5064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %5063, i64 6)
  %5065 = call i1 @nyx_string_equals(%nyx_string* %5062, %nyx_string* %5064)
  store i1 %5065, i1* %5039
  br label %sc_or_end814
sc_or_end814:
  %5066 = load i1, i1* %5039
  br i1 %5066, label %sc_or_end816, label %sc_or_rhs815
sc_or_rhs815:
  %5067 = load %nyx_string*, %nyx_string** %name.ptr
  %5068 = getelementptr [9 x i8], [9 x i8]* @.str788, i32 0, i32 0
  %5069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %5068, i64 8)
  %5070 = call i1 @nyx_string_equals(%nyx_string* %5067, %nyx_string* %5069)
  store i1 %5070, i1* %5038
  br label %sc_or_end816
sc_or_end816:
  %5071 = load i1, i1* %5038
  br i1 %5071, label %then817, label %else818
then817:
  %5072 = getelementptr [23 x i8], [23 x i8]* @.str789, i32 0, i32 0
  %5073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %5072, i64 22)
  ret %nyx_string* %5073
else818:
  br label %merge819
merge819:
  %5074 = alloca i1
  store i1 true, i1* %5074
  %5075 = alloca i1
  store i1 true, i1* %5075
  %5076 = alloca i1
  store i1 true, i1* %5076
  %5077 = load %nyx_string*, %nyx_string** %name.ptr
  %5078 = getelementptr [3 x i8], [3 x i8]* @.str790, i32 0, i32 0
  %5079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %5078, i64 2)
  %5080 = call i1 @nyx_string_equals(%nyx_string* %5077, %nyx_string* %5079)
  br i1 %5080, label %sc_or_end821, label %sc_or_rhs820
sc_or_rhs820:
  %5081 = load %nyx_string*, %nyx_string** %name.ptr
  %5082 = getelementptr [5 x i8], [5 x i8]* @.str791, i32 0, i32 0
  %5083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %5082, i64 4)
  %5084 = call i1 @nyx_string_equals(%nyx_string* %5081, %nyx_string* %5083)
  store i1 %5084, i1* %5076
  br label %sc_or_end821
sc_or_end821:
  %5085 = load i1, i1* %5076
  br i1 %5085, label %sc_or_end823, label %sc_or_rhs822
sc_or_rhs822:
  %5086 = load %nyx_string*, %nyx_string** %name.ptr
  %5087 = getelementptr [3 x i8], [3 x i8]* @.str792, i32 0, i32 0
  %5088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %5087, i64 2)
  %5089 = call i1 @nyx_string_equals(%nyx_string* %5086, %nyx_string* %5088)
  store i1 %5089, i1* %5075
  br label %sc_or_end823
sc_or_end823:
  %5090 = load i1, i1* %5075
  br i1 %5090, label %sc_or_end825, label %sc_or_rhs824
sc_or_rhs824:
  %5091 = load %nyx_string*, %nyx_string** %name.ptr
  %5092 = getelementptr [5 x i8], [5 x i8]* @.str793, i32 0, i32 0
  %5093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %5092, i64 4)
  %5094 = call i1 @nyx_string_equals(%nyx_string* %5091, %nyx_string* %5093)
  store i1 %5094, i1* %5074
  br label %sc_or_end825
sc_or_end825:
  %5095 = load i1, i1* %5074
  br i1 %5095, label %then826, label %else827
then826:
  %5096 = getelementptr [15 x i8], [15 x i8]* @.str794, i32 0, i32 0
  %5097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %5096, i64 14)
  ret %nyx_string* %5097
else827:
  br label %merge828
merge828:
  %5098 = alloca i1
  store i1 true, i1* %5098
  %5099 = alloca i1
  store i1 true, i1* %5099
  %5100 = alloca i1
  store i1 true, i1* %5100
  %5101 = alloca i1
  store i1 true, i1* %5101
  %5102 = alloca i1
  store i1 true, i1* %5102
  %5103 = alloca i1
  store i1 true, i1* %5103
  %5104 = load %nyx_string*, %nyx_string** %name.ptr
  %5105 = getelementptr [4 x i8], [4 x i8]* @.str795, i32 0, i32 0
  %5106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %5105, i64 3)
  %5107 = call i1 @nyx_string_equals(%nyx_string* %5104, %nyx_string* %5106)
  br i1 %5107, label %sc_or_end830, label %sc_or_rhs829
sc_or_rhs829:
  %5108 = load %nyx_string*, %nyx_string** %name.ptr
  %5109 = getelementptr [4 x i8], [4 x i8]* @.str796, i32 0, i32 0
  %5110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %5109, i64 3)
  %5111 = call i1 @nyx_string_equals(%nyx_string* %5108, %nyx_string* %5110)
  store i1 %5111, i1* %5103
  br label %sc_or_end830
sc_or_end830:
  %5112 = load i1, i1* %5103
  br i1 %5112, label %sc_or_end832, label %sc_or_rhs831
sc_or_rhs831:
  %5113 = load %nyx_string*, %nyx_string** %name.ptr
  %5114 = getelementptr [4 x i8], [4 x i8]* @.str797, i32 0, i32 0
  %5115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %5114, i64 3)
  %5116 = call i1 @nyx_string_equals(%nyx_string* %5113, %nyx_string* %5115)
  store i1 %5116, i1* %5102
  br label %sc_or_end832
sc_or_end832:
  %5117 = load i1, i1* %5102
  br i1 %5117, label %sc_or_end834, label %sc_or_rhs833
sc_or_rhs833:
  %5118 = load %nyx_string*, %nyx_string** %name.ptr
  %5119 = getelementptr [6 x i8], [6 x i8]* @.str798, i32 0, i32 0
  %5120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %5119, i64 5)
  %5121 = call i1 @nyx_string_equals(%nyx_string* %5118, %nyx_string* %5120)
  store i1 %5121, i1* %5101
  br label %sc_or_end834
sc_or_end834:
  %5122 = load i1, i1* %5101
  br i1 %5122, label %sc_or_end836, label %sc_or_rhs835
sc_or_rhs835:
  %5123 = load %nyx_string*, %nyx_string** %name.ptr
  %5124 = getelementptr [4 x i8], [4 x i8]* @.str799, i32 0, i32 0
  %5125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %5124, i64 3)
  %5126 = call i1 @nyx_string_equals(%nyx_string* %5123, %nyx_string* %5125)
  store i1 %5126, i1* %5100
  br label %sc_or_end836
sc_or_end836:
  %5127 = load i1, i1* %5100
  br i1 %5127, label %sc_or_end838, label %sc_or_rhs837
sc_or_rhs837:
  %5128 = load %nyx_string*, %nyx_string** %name.ptr
  %5129 = getelementptr [4 x i8], [4 x i8]* @.str800, i32 0, i32 0
  %5130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %5129, i64 3)
  %5131 = call i1 @nyx_string_equals(%nyx_string* %5128, %nyx_string* %5130)
  store i1 %5131, i1* %5099
  br label %sc_or_end838
sc_or_end838:
  %5132 = load i1, i1* %5099
  br i1 %5132, label %sc_or_end840, label %sc_or_rhs839
sc_or_rhs839:
  %5133 = load %nyx_string*, %nyx_string** %name.ptr
  %5134 = getelementptr [5 x i8], [5 x i8]* @.str801, i32 0, i32 0
  %5135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %5134, i64 4)
  %5136 = call i1 @nyx_string_equals(%nyx_string* %5133, %nyx_string* %5135)
  store i1 %5136, i1* %5098
  br label %sc_or_end840
sc_or_end840:
  %5137 = load i1, i1* %5098
  br i1 %5137, label %then841, label %else842
then841:
  %5138 = getelementptr [4 x i8], [4 x i8]* @.str802, i32 0, i32 0
  %5139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %5138, i64 3)
  ret %nyx_string* %5139
else842:
  br label %merge843
merge843:
  %5140 = alloca i1
  store i1 true, i1* %5140
  %5141 = alloca i1
  store i1 true, i1* %5141
  %5142 = alloca i1
  store i1 true, i1* %5142
  %5143 = alloca i1
  store i1 true, i1* %5143
  %5144 = load %nyx_string*, %nyx_string** %name.ptr
  %5145 = getelementptr [7 x i8], [7 x i8]* @.str803, i32 0, i32 0
  %5146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %5145, i64 6)
  %5147 = call i1 @nyx_string_equals(%nyx_string* %5144, %nyx_string* %5146)
  br i1 %5147, label %sc_or_end845, label %sc_or_rhs844
sc_or_rhs844:
  %5148 = load %nyx_string*, %nyx_string** %name.ptr
  %5149 = getelementptr [8 x i8], [8 x i8]* @.str804, i32 0, i32 0
  %5150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %5149, i64 7)
  %5151 = call i1 @nyx_string_equals(%nyx_string* %5148, %nyx_string* %5150)
  store i1 %5151, i1* %5143
  br label %sc_or_end845
sc_or_end845:
  %5152 = load i1, i1* %5143
  br i1 %5152, label %sc_or_end847, label %sc_or_rhs846
sc_or_rhs846:
  %5153 = load %nyx_string*, %nyx_string** %name.ptr
  %5154 = getelementptr [10 x i8], [10 x i8]* @.str805, i32 0, i32 0
  %5155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %5154, i64 9)
  %5156 = call i1 @nyx_string_equals(%nyx_string* %5153, %nyx_string* %5155)
  store i1 %5156, i1* %5142
  br label %sc_or_end847
sc_or_end847:
  %5157 = load i1, i1* %5142
  br i1 %5157, label %sc_or_end849, label %sc_or_rhs848
sc_or_rhs848:
  %5158 = load %nyx_string*, %nyx_string** %name.ptr
  %5159 = getelementptr [5 x i8], [5 x i8]* @.str806, i32 0, i32 0
  %5160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %5159, i64 4)
  %5161 = call i1 @nyx_string_equals(%nyx_string* %5158, %nyx_string* %5160)
  store i1 %5161, i1* %5141
  br label %sc_or_end849
sc_or_end849:
  %5162 = load i1, i1* %5141
  br i1 %5162, label %sc_or_end851, label %sc_or_rhs850
sc_or_rhs850:
  %5163 = load %nyx_string*, %nyx_string** %name.ptr
  %5164 = getelementptr [6 x i8], [6 x i8]* @.str807, i32 0, i32 0
  %5165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %5164, i64 5)
  %5166 = call i1 @nyx_string_equals(%nyx_string* %5163, %nyx_string* %5165)
  store i1 %5166, i1* %5140
  br label %sc_or_end851
sc_or_end851:
  %5167 = load i1, i1* %5140
  br i1 %5167, label %then852, label %else853
then852:
  %5168 = getelementptr [13 x i8], [13 x i8]* @.str808, i32 0, i32 0
  %5169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %5168, i64 12)
  ret %nyx_string* %5169
else853:
  br label %merge854
merge854:
  %5170 = alloca i1
  store i1 true, i1* %5170
  %5171 = alloca i1
  store i1 true, i1* %5171
  %5172 = alloca i1
  store i1 true, i1* %5172
  %5173 = alloca i1
  store i1 true, i1* %5173
  %5174 = load %nyx_string*, %nyx_string** %name.ptr
  %5175 = getelementptr [7 x i8], [7 x i8]* @.str809, i32 0, i32 0
  %5176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %5175, i64 6)
  %5177 = call i1 @nyx_string_equals(%nyx_string* %5174, %nyx_string* %5176)
  br i1 %5177, label %sc_or_end856, label %sc_or_rhs855
sc_or_rhs855:
  %5178 = load %nyx_string*, %nyx_string** %name.ptr
  %5179 = getelementptr [4 x i8], [4 x i8]* @.str810, i32 0, i32 0
  %5180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %5179, i64 3)
  %5181 = call i1 @nyx_string_equals(%nyx_string* %5178, %nyx_string* %5180)
  store i1 %5181, i1* %5173
  br label %sc_or_end856
sc_or_end856:
  %5182 = load i1, i1* %5173
  br i1 %5182, label %sc_or_end858, label %sc_or_rhs857
sc_or_rhs857:
  %5183 = load %nyx_string*, %nyx_string** %name.ptr
  %5184 = getelementptr [5 x i8], [5 x i8]* @.str811, i32 0, i32 0
  %5185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %5184, i64 4)
  %5186 = call i1 @nyx_string_equals(%nyx_string* %5183, %nyx_string* %5185)
  store i1 %5186, i1* %5172
  br label %sc_or_end858
sc_or_end858:
  %5187 = load i1, i1* %5172
  br i1 %5187, label %sc_or_end860, label %sc_or_rhs859
sc_or_rhs859:
  %5188 = load %nyx_string*, %nyx_string** %name.ptr
  %5189 = getelementptr [7 x i8], [7 x i8]* @.str812, i32 0, i32 0
  %5190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %5189, i64 6)
  %5191 = call i1 @nyx_string_equals(%nyx_string* %5188, %nyx_string* %5190)
  store i1 %5191, i1* %5171
  br label %sc_or_end860
sc_or_end860:
  %5192 = load i1, i1* %5171
  br i1 %5192, label %sc_or_end862, label %sc_or_rhs861
sc_or_rhs861:
  %5193 = load %nyx_string*, %nyx_string** %name.ptr
  %5194 = getelementptr [5 x i8], [5 x i8]* @.str813, i32 0, i32 0
  %5195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %5194, i64 4)
  %5196 = call i1 @nyx_string_equals(%nyx_string* %5193, %nyx_string* %5195)
  store i1 %5196, i1* %5170
  br label %sc_or_end862
sc_or_end862:
  %5197 = load i1, i1* %5170
  br i1 %5197, label %then863, label %else864
then863:
  %5198 = getelementptr [19 x i8], [19 x i8]* @.str814, i32 0, i32 0
  %5199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %5198, i64 18)
  ret %nyx_string* %5199
else864:
  br label %merge865
merge865:
  %5200 = alloca i1
  store i1 true, i1* %5200
  %5201 = load %nyx_string*, %nyx_string** %name.ptr
  %5202 = getelementptr [5 x i8], [5 x i8]* @.str815, i32 0, i32 0
  %5203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %5202, i64 4)
  %5204 = call i1 @nyx_string_equals(%nyx_string* %5201, %nyx_string* %5203)
  br i1 %5204, label %sc_or_end867, label %sc_or_rhs866
sc_or_rhs866:
  %5205 = load %nyx_string*, %nyx_string** %name.ptr
  %5206 = getelementptr [9 x i8], [9 x i8]* @.str816, i32 0, i32 0
  %5207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %5206, i64 8)
  %5208 = call i1 @nyx_string_equals(%nyx_string* %5205, %nyx_string* %5207)
  store i1 %5208, i1* %5200
  br label %sc_or_end867
sc_or_end867:
  %5209 = load i1, i1* %5200
  br i1 %5209, label %then868, label %else869
then868:
  %5210 = getelementptr [7 x i8], [7 x i8]* @.str817, i32 0, i32 0
  %5211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %5210, i64 6)
  ret %nyx_string* %5211
else869:
  br label %merge870
merge870:
  %5212 = alloca i1
  store i1 true, i1* %5212
  %5213 = alloca i1
  store i1 true, i1* %5213
  %5214 = alloca i1
  store i1 true, i1* %5214
  %5215 = load %nyx_string*, %nyx_string** %name.ptr
  %5216 = getelementptr [7 x i8], [7 x i8]* @.str818, i32 0, i32 0
  %5217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %5216, i64 6)
  %5218 = call i1 @nyx_string_equals(%nyx_string* %5215, %nyx_string* %5217)
  br i1 %5218, label %sc_or_end872, label %sc_or_rhs871
sc_or_rhs871:
  %5219 = load %nyx_string*, %nyx_string** %name.ptr
  %5220 = getelementptr [8 x i8], [8 x i8]* @.str819, i32 0, i32 0
  %5221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %5220, i64 7)
  %5222 = call i1 @nyx_string_equals(%nyx_string* %5219, %nyx_string* %5221)
  store i1 %5222, i1* %5214
  br label %sc_or_end872
sc_or_end872:
  %5223 = load i1, i1* %5214
  br i1 %5223, label %sc_or_end874, label %sc_or_rhs873
sc_or_rhs873:
  %5224 = load %nyx_string*, %nyx_string** %name.ptr
  %5225 = getelementptr [14 x i8], [14 x i8]* @.str820, i32 0, i32 0
  %5226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %5225, i64 13)
  %5227 = call i1 @nyx_string_equals(%nyx_string* %5224, %nyx_string* %5226)
  store i1 %5227, i1* %5213
  br label %sc_or_end874
sc_or_end874:
  %5228 = load i1, i1* %5213
  br i1 %5228, label %sc_or_end876, label %sc_or_rhs875
sc_or_rhs875:
  %5229 = load %nyx_string*, %nyx_string** %name.ptr
  %5230 = getelementptr [6 x i8], [6 x i8]* @.str821, i32 0, i32 0
  %5231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %5230, i64 5)
  %5232 = call i1 @nyx_string_equals(%nyx_string* %5229, %nyx_string* %5231)
  store i1 %5232, i1* %5212
  br label %sc_or_end876
sc_or_end876:
  %5233 = load i1, i1* %5212
  br i1 %5233, label %then877, label %else878
then877:
  %5234 = getelementptr [16 x i8], [16 x i8]* @.str822, i32 0, i32 0
  %5235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %5234, i64 15)
  ret %nyx_string* %5235
else878:
  br label %merge879
merge879:
  %5236 = alloca i1
  store i1 true, i1* %5236
  %5237 = alloca i1
  store i1 true, i1* %5237
  %5238 = alloca i1
  store i1 true, i1* %5238
  %5239 = alloca i1
  store i1 true, i1* %5239
  %5240 = alloca i1
  store i1 true, i1* %5240
  %5241 = alloca i1
  store i1 true, i1* %5241
  %5242 = alloca i1
  store i1 true, i1* %5242
  %5243 = load %nyx_string*, %nyx_string** %name.ptr
  %5244 = getelementptr [4 x i8], [4 x i8]* @.str823, i32 0, i32 0
  %5245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %5244, i64 3)
  %5246 = call i1 @nyx_string_equals(%nyx_string* %5243, %nyx_string* %5245)
  br i1 %5246, label %sc_or_end881, label %sc_or_rhs880
sc_or_rhs880:
  %5247 = load %nyx_string*, %nyx_string** %name.ptr
  %5248 = getelementptr [6 x i8], [6 x i8]* @.str824, i32 0, i32 0
  %5249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %5248, i64 5)
  %5250 = call i1 @nyx_string_equals(%nyx_string* %5247, %nyx_string* %5249)
  store i1 %5250, i1* %5242
  br label %sc_or_end881
sc_or_end881:
  %5251 = load i1, i1* %5242
  br i1 %5251, label %sc_or_end883, label %sc_or_rhs882
sc_or_rhs882:
  %5252 = load %nyx_string*, %nyx_string** %name.ptr
  %5253 = getelementptr [11 x i8], [11 x i8]* @.str825, i32 0, i32 0
  %5254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %5253, i64 10)
  %5255 = call i1 @nyx_string_equals(%nyx_string* %5252, %nyx_string* %5254)
  store i1 %5255, i1* %5241
  br label %sc_or_end883
sc_or_end883:
  %5256 = load i1, i1* %5241
  br i1 %5256, label %sc_or_end885, label %sc_or_rhs884
sc_or_rhs884:
  %5257 = load %nyx_string*, %nyx_string** %name.ptr
  %5258 = getelementptr [6 x i8], [6 x i8]* @.str826, i32 0, i32 0
  %5259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %5258, i64 5)
  %5260 = call i1 @nyx_string_equals(%nyx_string* %5257, %nyx_string* %5259)
  store i1 %5260, i1* %5240
  br label %sc_or_end885
sc_or_end885:
  %5261 = load i1, i1* %5240
  br i1 %5261, label %sc_or_end887, label %sc_or_rhs886
sc_or_rhs886:
  %5262 = load %nyx_string*, %nyx_string** %name.ptr
  %5263 = getelementptr [9 x i8], [9 x i8]* @.str827, i32 0, i32 0
  %5264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %5263, i64 8)
  %5265 = call i1 @nyx_string_equals(%nyx_string* %5262, %nyx_string* %5264)
  store i1 %5265, i1* %5239
  br label %sc_or_end887
sc_or_end887:
  %5266 = load i1, i1* %5239
  br i1 %5266, label %sc_or_end889, label %sc_or_rhs888
sc_or_rhs888:
  %5267 = load %nyx_string*, %nyx_string** %name.ptr
  %5268 = getelementptr [14 x i8], [14 x i8]* @.str828, i32 0, i32 0
  %5269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %5268, i64 13)
  %5270 = call i1 @nyx_string_equals(%nyx_string* %5267, %nyx_string* %5269)
  store i1 %5270, i1* %5238
  br label %sc_or_end889
sc_or_end889:
  %5271 = load i1, i1* %5238
  br i1 %5271, label %sc_or_end891, label %sc_or_rhs890
sc_or_rhs890:
  %5272 = load %nyx_string*, %nyx_string** %name.ptr
  %5273 = getelementptr [6 x i8], [6 x i8]* @.str829, i32 0, i32 0
  %5274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %5273, i64 5)
  %5275 = call i1 @nyx_string_equals(%nyx_string* %5272, %nyx_string* %5274)
  store i1 %5275, i1* %5237
  br label %sc_or_end891
sc_or_end891:
  %5276 = load i1, i1* %5237
  br i1 %5276, label %sc_or_end893, label %sc_or_rhs892
sc_or_rhs892:
  %5277 = load %nyx_string*, %nyx_string** %name.ptr
  %5278 = getelementptr [7 x i8], [7 x i8]* @.str830, i32 0, i32 0
  %5279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %5278, i64 6)
  %5280 = call i1 @nyx_string_equals(%nyx_string* %5277, %nyx_string* %5279)
  store i1 %5280, i1* %5236
  br label %sc_or_end893
sc_or_end893:
  %5281 = load i1, i1* %5236
  br i1 %5281, label %then894, label %else895
then894:
  %5282 = getelementptr [26 x i8], [26 x i8]* @.str831, i32 0, i32 0
  %5283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %5282, i64 25)
  ret %nyx_string* %5283
else895:
  br label %merge896
merge896:
  %5284 = alloca i1
  store i1 true, i1* %5284
  %5285 = alloca i1
  store i1 true, i1* %5285
  %5286 = alloca i1
  store i1 true, i1* %5286
  %5287 = load %nyx_string*, %nyx_string** %name.ptr
  %5288 = getelementptr [6 x i8], [6 x i8]* @.str832, i32 0, i32 0
  %5289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %5288, i64 5)
  %5290 = call i1 @nyx_string_equals(%nyx_string* %5287, %nyx_string* %5289)
  br i1 %5290, label %sc_or_end898, label %sc_or_rhs897
sc_or_rhs897:
  %5291 = load %nyx_string*, %nyx_string** %name.ptr
  %5292 = getelementptr [4 x i8], [4 x i8]* @.str833, i32 0, i32 0
  %5293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %5292, i64 3)
  %5294 = call i1 @nyx_string_equals(%nyx_string* %5291, %nyx_string* %5293)
  store i1 %5294, i1* %5286
  br label %sc_or_end898
sc_or_end898:
  %5295 = load i1, i1* %5286
  br i1 %5295, label %sc_or_end900, label %sc_or_rhs899
sc_or_rhs899:
  %5296 = load %nyx_string*, %nyx_string** %name.ptr
  %5297 = getelementptr [3 x i8], [3 x i8]* @.str834, i32 0, i32 0
  %5298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %5297, i64 2)
  %5299 = call i1 @nyx_string_equals(%nyx_string* %5296, %nyx_string* %5298)
  store i1 %5299, i1* %5285
  br label %sc_or_end900
sc_or_end900:
  %5300 = load i1, i1* %5285
  br i1 %5300, label %sc_or_end902, label %sc_or_rhs901
sc_or_rhs901:
  %5301 = load %nyx_string*, %nyx_string** %name.ptr
  %5302 = getelementptr [10 x i8], [10 x i8]* @.str835, i32 0, i32 0
  %5303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %5302, i64 9)
  %5304 = call i1 @nyx_string_equals(%nyx_string* %5301, %nyx_string* %5303)
  store i1 %5304, i1* %5284
  br label %sc_or_end902
sc_or_end902:
  %5305 = load i1, i1* %5284
  br i1 %5305, label %then903, label %else904
then903:
  %5306 = getelementptr [8 x i8], [8 x i8]* @.str836, i32 0, i32 0
  %5307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %5306, i64 7)
  ret %nyx_string* %5307
else904:
  br label %merge905
merge905:
  %5308 = alloca i1
  store i1 true, i1* %5308
  %5309 = alloca i1
  store i1 true, i1* %5309
  %5310 = alloca i1
  store i1 true, i1* %5310
  %5311 = alloca i1
  store i1 true, i1* %5311
  %5312 = alloca i1
  store i1 true, i1* %5312
  %5313 = alloca i1
  store i1 true, i1* %5313
  %5314 = load %nyx_string*, %nyx_string** %name.ptr
  %5315 = getelementptr [5 x i8], [5 x i8]* @.str837, i32 0, i32 0
  %5316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %5315, i64 4)
  %5317 = call i1 @nyx_string_equals(%nyx_string* %5314, %nyx_string* %5316)
  br i1 %5317, label %sc_or_end907, label %sc_or_rhs906
sc_or_rhs906:
  %5318 = load %nyx_string*, %nyx_string** %name.ptr
  %5319 = getelementptr [4 x i8], [4 x i8]* @.str838, i32 0, i32 0
  %5320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %5319, i64 3)
  %5321 = call i1 @nyx_string_equals(%nyx_string* %5318, %nyx_string* %5320)
  store i1 %5321, i1* %5313
  br label %sc_or_end907
sc_or_end907:
  %5322 = load i1, i1* %5313
  br i1 %5322, label %sc_or_end909, label %sc_or_rhs908
sc_or_rhs908:
  %5323 = load %nyx_string*, %nyx_string** %name.ptr
  %5324 = getelementptr [4 x i8], [4 x i8]* @.str839, i32 0, i32 0
  %5325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %5324, i64 3)
  %5326 = call i1 @nyx_string_equals(%nyx_string* %5323, %nyx_string* %5325)
  store i1 %5326, i1* %5312
  br label %sc_or_end909
sc_or_end909:
  %5327 = load i1, i1* %5312
  br i1 %5327, label %sc_or_end911, label %sc_or_rhs910
sc_or_rhs910:
  %5328 = load %nyx_string*, %nyx_string** %name.ptr
  %5329 = getelementptr [8 x i8], [8 x i8]* @.str840, i32 0, i32 0
  %5330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %5329, i64 7)
  %5331 = call i1 @nyx_string_equals(%nyx_string* %5328, %nyx_string* %5330)
  store i1 %5331, i1* %5311
  br label %sc_or_end911
sc_or_end911:
  %5332 = load i1, i1* %5311
  br i1 %5332, label %sc_or_end913, label %sc_or_rhs912
sc_or_rhs912:
  %5333 = load %nyx_string*, %nyx_string** %name.ptr
  %5334 = getelementptr [7 x i8], [7 x i8]* @.str841, i32 0, i32 0
  %5335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %5334, i64 6)
  %5336 = call i1 @nyx_string_equals(%nyx_string* %5333, %nyx_string* %5335)
  store i1 %5336, i1* %5310
  br label %sc_or_end913
sc_or_end913:
  %5337 = load i1, i1* %5310
  br i1 %5337, label %sc_or_end915, label %sc_or_rhs914
sc_or_rhs914:
  %5338 = load %nyx_string*, %nyx_string** %name.ptr
  %5339 = getelementptr [8 x i8], [8 x i8]* @.str842, i32 0, i32 0
  %5340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %5339, i64 7)
  %5341 = call i1 @nyx_string_equals(%nyx_string* %5338, %nyx_string* %5340)
  store i1 %5341, i1* %5309
  br label %sc_or_end915
sc_or_end915:
  %5342 = load i1, i1* %5309
  br i1 %5342, label %sc_or_end917, label %sc_or_rhs916
sc_or_rhs916:
  %5343 = load %nyx_string*, %nyx_string** %name.ptr
  %5344 = getelementptr [11 x i8], [11 x i8]* @.str843, i32 0, i32 0
  %5345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %5344, i64 10)
  %5346 = call i1 @nyx_string_equals(%nyx_string* %5343, %nyx_string* %5345)
  store i1 %5346, i1* %5308
  br label %sc_or_end917
sc_or_end917:
  %5347 = load i1, i1* %5308
  br i1 %5347, label %then918, label %else919
then918:
  %5348 = getelementptr [14 x i8], [14 x i8]* @.str844, i32 0, i32 0
  %5349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %5348, i64 13)
  ret %nyx_string* %5349
else919:
  br label %merge920
merge920:
  %5350 = getelementptr [1 x i8], [1 x i8]* @.str845, i32 0, i32 0
  %5351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %5350, i64 0)
  ret %nyx_string* %5351
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %5352 = alloca i64
  store i64 0, i64* %5352
  %5353 = alloca i64
  store i64 0, i64* %5353
  %5354 = call i8* @llvm.stacksave()
  br label %while_cond921
while_cond921:
  %5355 = load i64, i64* %5353
  %5356 = load %nyx_string*, %nyx_string** %s.ptr
  %5357 = call i64 @nyx_string_byte_length(%nyx_string* %5356)
  %5358 = icmp slt i64 %5355, %5357
  br i1 %5358, label %while_body922, label %while_end923
while_body922:
  call void @llvm.stackrestore(i8* %5354)
  %5359 = load %nyx_string*, %nyx_string** %s.ptr
  %5360 = load i64, i64* %5353
  %5361 = call i8 @nyx_string_char_at(%nyx_string* %5359, i64 %5360)
  %5362 = zext i8 %5361 to i64
  %5363 = trunc i64 %5362 to i8
  %5364 = alloca i8
  store i8 %5363, i8* %5364
  %5365 = load i8, i8* %5364
  %5366 = getelementptr [1 x i8], [1 x i8]* @.str846, i32 0, i32 0
  %5367 = load i8, i8* %5366
  %5368 = zext i8 %5367 to i64
  %5369 = zext i8 %5365 to i64
  %5370 = icmp eq i64 %5369, %5368
  br i1 %5370, label %then924, label %else925
then924:
  %5371 = load i64, i64* %5352
  %5372 = add i64 %5371, 1
  store i64 %5372, i64* %5352
  br label %merge926
else925:
  br label %merge926
merge926:
  %5373 = load i8, i8* %5364
  %5374 = getelementptr [1 x i8], [1 x i8]* @.str847, i32 0, i32 0
  %5375 = load i8, i8* %5374
  %5376 = zext i8 %5375 to i64
  %5377 = zext i8 %5373 to i64
  %5378 = icmp eq i64 %5377, %5376
  br i1 %5378, label %then927, label %else928
then927:
  %5379 = load i64, i64* %5352
  %5380 = sub i64 %5379, 1
  store i64 %5380, i64* %5352
  br label %merge929
else928:
  br label %merge929
merge929:
  %5381 = load i64, i64* %5353
  %5382 = add i64 %5381, 1
  store i64 %5382, i64* %5353
  br label %while_cond921
while_end923:
  %5383 = load i64, i64* %5352
  ret i64 %5383
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %5384 = load %nyx_string*, %nyx_string** %filename.ptr
  %5385 = load %nyx_string*, %nyx_string** %filename.ptr
  %5386 = call i64 @nyx_string_byte_length(%nyx_string* %5385)
  %5387 = sub i64 %5386, 3
  %5388 = call %nyx_string* @nyx_string_substring(%nyx_string* %5384, i64 0, i64 %5387)
  %5389 = alloca %nyx_string*
  store %nyx_string* %5388, %nyx_string** %5389
  %5390 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5391 = getelementptr [2 x i8], [2 x i8]* @.str848, i32 0, i32 0
  %5392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %5391, i64 1)
  %5393 = call %nyx_string* @nyx_string_concat(%nyx_string* %5390, %nyx_string* %5392)
  %5394 = load %nyx_string*, %nyx_string** %filename.ptr
  %5395 = call %nyx_string* @nyx_string_concat(%nyx_string* %5393, %nyx_string* %5394)
  %5396 = call i8* @nyx_string_to_cstr(%nyx_string* %5395)
  %5397 = call %nyx_string* @nyx_read_file(i8* %5396)
  %5398 = alloca %nyx_string*
  store %nyx_string* %5397, %nyx_string** %5398
  %5399 = load %nyx_string*, %nyx_string** %5398
  %5400 = getelementptr [2 x i8], [2 x i8]* @.str849, i32 0, i32 0
  %5401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %5400, i64 1)
  %5402 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5399, %nyx_string* %5401)
  %5403 = alloca { i64, i8* }*
  store { i64, i8* }* %5402, { i64, i8* }** %5403
  %5404 = getelementptr [1 x i8], [1 x i8]* @.str850, i32 0, i32 0
  %5405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %5404, i64 0)
  %5406 = alloca %nyx_string*
  store %nyx_string* %5405, %nyx_string** %5406
  %5407 = getelementptr [1 x i8], [1 x i8]* @.str851, i32 0, i32 0
  %5408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %5407, i64 0)
  %5409 = alloca %nyx_string*
  store %nyx_string* %5408, %nyx_string** %5409
  %5410 = alloca i64
  store i64 0, i64* %5410
  %5411 = alloca i64
  store i64 0, i64* %5411
  %5412 = getelementptr [4 x i8], [4 x i8]* @.str852, i32 0, i32 0
  %5413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %5412, i64 3)
  %5414 = alloca %nyx_string*
  store %nyx_string* %5413, %nyx_string** %5414
  %5415 = getelementptr [1 x i8], [1 x i8]* @.str853, i32 0, i32 0
  %5416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %5415, i64 0)
  %5417 = alloca %nyx_string*
  store %nyx_string* %5416, %nyx_string** %5417
  %5418 = getelementptr [2 x i8], [2 x i8]* @.str854, i32 0, i32 0
  %5419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %5418, i64 1)
  %5420 = alloca %nyx_string*
  store %nyx_string* %5419, %nyx_string** %5420
  %5421 = getelementptr [8 x i8], [8 x i8]* @.str855, i32 0, i32 0
  %5422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %5421, i64 7)
  %5423 = alloca %nyx_string*
  store %nyx_string* %5422, %nyx_string** %5423
  %5424 = getelementptr [11 x i8], [11 x i8]* @.str856, i32 0, i32 0
  %5425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %5424, i64 10)
  %5426 = alloca %nyx_string*
  store %nyx_string* %5425, %nyx_string** %5426
  %5427 = getelementptr [4 x i8], [4 x i8]* @.str857, i32 0, i32 0
  %5428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %5427, i64 3)
  %5429 = alloca %nyx_string*
  store %nyx_string* %5428, %nyx_string** %5429
  %5430 = getelementptr [2 x i8], [2 x i8]* @.str858, i32 0, i32 0
  %5431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %5430, i64 1)
  %5432 = alloca %nyx_string*
  store %nyx_string* %5431, %nyx_string** %5432
  %5433 = getelementptr [6 x i8], [6 x i8]* @.str859, i32 0, i32 0
  %5434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %5433, i64 5)
  %5435 = alloca %nyx_string*
  store %nyx_string* %5434, %nyx_string** %5435
  %5436 = getelementptr [2 x i8], [2 x i8]* @.str860, i32 0, i32 0
  %5437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %5436, i64 1)
  %5438 = alloca %nyx_string*
  store %nyx_string* %5437, %nyx_string** %5438
  %5439 = call i8* @llvm.stacksave()
  br label %while_cond930
while_cond930:
  %5440 = load i64, i64* %5411
  %5441 = load { i64, i8* }*, { i64, i8* }** %5403
  %5442 = call i64 @nyx_array_length({ i64, i8* }* %5441)
  %5443 = icmp slt i64 %5440, %5442
  br i1 %5443, label %while_body931, label %while_end932
while_body931:
  call void @llvm.stackrestore(i8* %5439)
  %5444 = load { i64, i8* }*, { i64, i8* }** %5403
  %5445 = load i64, i64* %5411
  %5446 = call i64 @nyx_array_get_checked({ i64, i8* }* %5444, i64 %5445, i64 2)
  %5447 = inttoptr i64 %5446 to %nyx_string*
  %5448 = alloca %nyx_string*
  store %nyx_string* %5447, %nyx_string** %5448
  %5449 = load %nyx_string*, %nyx_string** %5448
  %5450 = call %nyx_string* @nyx_string_trim(%nyx_string* %5449)
  %5451 = alloca %nyx_string*
  store %nyx_string* %5450, %nyx_string** %5451
  %5452 = load %nyx_string*, %nyx_string** %5451
  %5453 = load %nyx_string*, %nyx_string** %5414
  %5454 = call i1 @nyx_string_starts_with(%nyx_string* %5452, %nyx_string* %5453)
  br i1 %5454, label %then933, label %else934
then933:
  %5455 = load %nyx_string*, %nyx_string** %5451
  %5456 = load %nyx_string*, %nyx_string** %5451
  %5457 = call i64 @nyx_string_byte_length(%nyx_string* %5456)
  %5458 = call %nyx_string* @nyx_string_substring(%nyx_string* %5455, i64 3, i64 %5457)
  %5459 = alloca %nyx_string*
  store %nyx_string* %5458, %nyx_string** %5459
  %5460 = load %nyx_string*, %nyx_string** %5459
  %5461 = call %nyx_string* @nyx_string_trim(%nyx_string* %5460)
  %5462 = alloca %nyx_string*
  store %nyx_string* %5461, %nyx_string** %5462
  %5463 = load %nyx_string*, %nyx_string** %5409
  %5464 = load %nyx_string*, %nyx_string** %5417
  %5465 = call i1 @nyx_string_equals(%nyx_string* %5463, %nyx_string* %5464)
  br i1 %5465, label %then936, label %else937
then936:
  %5466 = load %nyx_string*, %nyx_string** %5462
  store %nyx_string* %5466, %nyx_string** %5409
  br label %merge938
else937:
  %5467 = load %nyx_string*, %nyx_string** %5409
  %5468 = load %nyx_string*, %nyx_string** %5420
  %5469 = call %nyx_string* @nyx_string_concat(%nyx_string* %5467, %nyx_string* %5468)
  %5470 = load %nyx_string*, %nyx_string** %5462
  %5471 = call %nyx_string* @nyx_string_concat(%nyx_string* %5469, %nyx_string* %5470)
  store %nyx_string* %5471, %nyx_string** %5409
  br label %merge938
merge938:
  br label %merge935
else934:
  %5472 = alloca i1
  store i1 true, i1* %5472
  %5473 = load %nyx_string*, %nyx_string** %5451
  %5474 = load %nyx_string*, %nyx_string** %5423
  %5475 = call i1 @nyx_string_starts_with(%nyx_string* %5473, %nyx_string* %5474)
  br i1 %5475, label %sc_or_end940, label %sc_or_rhs939
sc_or_rhs939:
  %5476 = load %nyx_string*, %nyx_string** %5451
  %5477 = load %nyx_string*, %nyx_string** %5426
  %5478 = call i1 @nyx_string_starts_with(%nyx_string* %5476, %nyx_string* %5477)
  store i1 %5478, i1* %5472
  br label %sc_or_end940
sc_or_end940:
  %5479 = load i1, i1* %5472
  %5480 = alloca i1
  store i1 %5479, i1* %5480
  %5481 = load i1, i1* %5480
  br i1 %5481, label %then941, label %else942
then941:
  %5482 = load %nyx_string*, %nyx_string** %5451
  %5483 = alloca %nyx_string*
  store %nyx_string* %5482, %nyx_string** %5483
  %5484 = load %nyx_string*, %nyx_string** %5483
  %5485 = call i64 @capabilities_paren_delta(%nyx_string* %5484)
  %5486 = alloca i64
  store i64 %5485, i64* %5486
  %5487 = call i8* @llvm.stacksave()
  br label %while_cond944
while_cond944:
  %5488 = alloca i1
  store i1 false, i1* %5488
  %5489 = load i64, i64* %5486
  %5490 = icmp sgt i64 %5489, 0
  br i1 %5490, label %sc_and_rhs947, label %sc_and_end948
sc_and_rhs947:
  %5491 = load i64, i64* %5411
  %5492 = add i64 %5491, 1
  %5493 = load { i64, i8* }*, { i64, i8* }** %5403
  %5494 = call i64 @nyx_array_length({ i64, i8* }* %5493)
  %5495 = icmp slt i64 %5492, %5494
  store i1 %5495, i1* %5488
  br label %sc_and_end948
sc_and_end948:
  %5496 = load i1, i1* %5488
  br i1 %5496, label %while_body945, label %while_end946
while_body945:
  call void @llvm.stackrestore(i8* %5487)
  %5497 = load i64, i64* %5411
  %5498 = add i64 %5497, 1
  store i64 %5498, i64* %5411
  %5499 = load { i64, i8* }*, { i64, i8* }** %5403
  %5500 = load i64, i64* %5411
  %5501 = call i64 @nyx_array_get_checked({ i64, i8* }* %5499, i64 %5500, i64 2)
  %5502 = inttoptr i64 %5501 to %nyx_string*
  %5503 = call %nyx_string* @nyx_string_trim(%nyx_string* %5502)
  %5504 = alloca %nyx_string*
  store %nyx_string* %5503, %nyx_string** %5504
  %5505 = load %nyx_string*, %nyx_string** %5504
  %5506 = load %nyx_string*, %nyx_string** %5417
  %5507 = call i1 @nyx_string_equals(%nyx_string* %5505, %nyx_string* %5506)
  %5508 = xor i1 %5507, true
  br i1 %5508, label %then949, label %else950
then949:
  %5509 = alloca i1
  store i1 false, i1* %5509
  %5510 = load %nyx_string*, %nyx_string** %5483
  %5511 = call i64 @nyx_string_byte_length(%nyx_string* %5510)
  %5512 = icmp sgt i64 %5511, 0
  br i1 %5512, label %sc_and_rhs952, label %sc_and_end953
sc_and_rhs952:
  %5513 = load %nyx_string*, %nyx_string** %5483
  %5514 = load %nyx_string*, %nyx_string** %5483
  %5515 = call i64 @nyx_string_byte_length(%nyx_string* %5514)
  %5516 = sub i64 %5515, 1
  %5517 = call i8 @nyx_string_char_at(%nyx_string* %5513, i64 %5516)
  %5518 = zext i8 %5517 to i64
  %5519 = getelementptr [1 x i8], [1 x i8]* @.str861, i32 0, i32 0
  %5520 = load i8, i8* %5519
  %5521 = zext i8 %5520 to i64
  %5522 = icmp eq i64 %5518, %5521
  store i1 %5522, i1* %5509
  br label %sc_and_end953
sc_and_end953:
  %5523 = load i1, i1* %5509
  br i1 %5523, label %then954, label %else955
then954:
  %5524 = load %nyx_string*, %nyx_string** %5483
  %5525 = load %nyx_string*, %nyx_string** %5504
  %5526 = call %nyx_string* @nyx_string_concat(%nyx_string* %5524, %nyx_string* %5525)
  store %nyx_string* %5526, %nyx_string** %5483
  br label %merge956
else955:
  %5527 = load %nyx_string*, %nyx_string** %5483
  %5528 = load %nyx_string*, %nyx_string** %5420
  %5529 = call %nyx_string* @nyx_string_concat(%nyx_string* %5527, %nyx_string* %5528)
  %5530 = load %nyx_string*, %nyx_string** %5504
  %5531 = call %nyx_string* @nyx_string_concat(%nyx_string* %5529, %nyx_string* %5530)
  store %nyx_string* %5531, %nyx_string** %5483
  br label %merge956
merge956:
  br label %merge951
else950:
  br label %merge951
merge951:
  %5532 = load i64, i64* %5486
  %5533 = load %nyx_string*, %nyx_string** %5504
  %5534 = call i64 @capabilities_paren_delta(%nyx_string* %5533)
  %5535 = add i64 %5532, %5534
  store i64 %5535, i64* %5486
  br label %while_cond944
while_end946:
  %5536 = sub i64 0, 1
  %5537 = alloca i64
  store i64 %5536, i64* %5537
  %5538 = alloca i64
  store i64 0, i64* %5538
  %5539 = call i8* @llvm.stacksave()
  br label %while_cond957
while_cond957:
  %5540 = load i64, i64* %5538
  %5541 = load %nyx_string*, %nyx_string** %5483
  %5542 = call i64 @nyx_string_byte_length(%nyx_string* %5541)
  %5543 = icmp slt i64 %5540, %5542
  br i1 %5543, label %while_body958, label %while_end959
while_body958:
  call void @llvm.stackrestore(i8* %5539)
  %5544 = load %nyx_string*, %nyx_string** %5483
  %5545 = load i64, i64* %5538
  %5546 = call i8 @nyx_string_char_at(%nyx_string* %5544, i64 %5545)
  %5547 = zext i8 %5546 to i64
  %5548 = trunc i64 %5547 to i8
  %5549 = alloca i8
  store i8 %5548, i8* %5549
  %5550 = alloca i1
  store i1 false, i1* %5550
  %5551 = load i8, i8* %5549
  %5552 = getelementptr [1 x i8], [1 x i8]* @.str862, i32 0, i32 0
  %5553 = load i8, i8* %5552
  %5554 = zext i8 %5553 to i64
  %5555 = zext i8 %5551 to i64
  %5556 = icmp eq i64 %5555, %5554
  br i1 %5556, label %sc_and_rhs960, label %sc_and_end961
sc_and_rhs960:
  %5557 = load i64, i64* %5537
  %5558 = sub i64 0, 1
  %5559 = icmp eq i64 %5557, %5558
  store i1 %5559, i1* %5550
  br label %sc_and_end961
sc_and_end961:
  %5560 = load i1, i1* %5550
  br i1 %5560, label %then962, label %else963
then962:
  %5561 = load i64, i64* %5538
  store i64 %5561, i64* %5537
  br label %merge964
else963:
  br label %merge964
merge964:
  %5562 = load i64, i64* %5538
  %5563 = add i64 %5562, 1
  store i64 %5563, i64* %5538
  br label %while_cond957
while_end959:
  %5564 = load i64, i64* %5537
  %5565 = icmp sge i64 %5564, 0
  br i1 %5565, label %then965, label %else966
then965:
  %5566 = load %nyx_string*, %nyx_string** %5483
  %5567 = load i64, i64* %5537
  %5568 = call %nyx_string* @nyx_string_substring(%nyx_string* %5566, i64 0, i64 %5567)
  store %nyx_string* %5568, %nyx_string** %5483
  br label %merge967
else966:
  br label %merge967
merge967:
  %5569 = load %nyx_string*, %nyx_string** %5483
  %5570 = call %nyx_string* @nyx_string_trim(%nyx_string* %5569)
  %5571 = alloca %nyx_string*
  store %nyx_string* %5570, %nyx_string** %5571
  %5572 = load %nyx_string*, %nyx_string** %5406
  %5573 = load %nyx_string*, %nyx_string** %5429
  %5574 = call %nyx_string* @nyx_string_concat(%nyx_string* %5572, %nyx_string* %5573)
  %5575 = load %nyx_string*, %nyx_string** %5571
  %5576 = call %nyx_string* @nyx_string_concat(%nyx_string* %5574, %nyx_string* %5575)
  %5577 = load %nyx_string*, %nyx_string** %5432
  %5578 = call %nyx_string* @nyx_string_concat(%nyx_string* %5576, %nyx_string* %5577)
  store %nyx_string* %5578, %nyx_string** %5406
  %5579 = load %nyx_string*, %nyx_string** %5409
  %5580 = load %nyx_string*, %nyx_string** %5417
  %5581 = call i1 @nyx_string_equals(%nyx_string* %5579, %nyx_string* %5580)
  %5582 = xor i1 %5581, true
  br i1 %5582, label %then968, label %else969
then968:
  %5583 = load %nyx_string*, %nyx_string** %5406
  %5584 = load %nyx_string*, %nyx_string** %5435
  %5585 = call %nyx_string* @nyx_string_concat(%nyx_string* %5583, %nyx_string* %5584)
  %5586 = load %nyx_string*, %nyx_string** %5409
  %5587 = call %nyx_string* @nyx_string_concat(%nyx_string* %5585, %nyx_string* %5586)
  store %nyx_string* %5587, %nyx_string** %5406
  br label %merge970
else969:
  br label %merge970
merge970:
  %5588 = load %nyx_string*, %nyx_string** %5406
  %5589 = load %nyx_string*, %nyx_string** %5438
  %5590 = call %nyx_string* @nyx_string_concat(%nyx_string* %5588, %nyx_string* %5589)
  store %nyx_string* %5590, %nyx_string** %5406
  %5591 = load i64, i64* %5410
  %5592 = add i64 %5591, 1
  store i64 %5592, i64* %5410
  br label %merge943
else942:
  br label %merge943
merge943:
  %5593 = load %nyx_string*, %nyx_string** %5417
  store %nyx_string* %5593, %nyx_string** %5409
  br label %merge935
merge935:
  %5594 = load i64, i64* %5411
  %5595 = add i64 %5594, 1
  store i64 %5595, i64* %5411
  br label %while_cond930
while_end932:
  %5596 = load i64, i64* %5410
  %5597 = icmp eq i64 %5596, 0
  br i1 %5597, label %then971, label %else972
then971:
  %5598 = getelementptr [1 x i8], [1 x i8]* @.str863, i32 0, i32 0
  %5599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %5598, i64 0)
  ret %nyx_string* %5599
else972:
  br label %merge973
merge973:
  %5600 = getelementptr [10 x i8], [10 x i8]* @.str864, i32 0, i32 0
  %5601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %5600, i64 9)
  %5602 = load %nyx_string*, %nyx_string** %5389
  %5603 = call %nyx_string* @nyx_string_concat(%nyx_string* %5601, %nyx_string* %5602)
  %5604 = getelementptr [4 x i8], [4 x i8]* @.str865, i32 0, i32 0
  %5605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %5604, i64 3)
  %5606 = call %nyx_string* @nyx_string_concat(%nyx_string* %5603, %nyx_string* %5605)
  %5607 = alloca %nyx_string*
  store %nyx_string* %5606, %nyx_string** %5607
  %5608 = load %nyx_string*, %nyx_string** %5607
  %5609 = getelementptr [14 x i8], [14 x i8]* @.str866, i32 0, i32 0
  %5610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %5609, i64 13)
  %5611 = call %nyx_string* @nyx_string_concat(%nyx_string* %5608, %nyx_string* %5610)
  %5612 = load %nyx_string*, %nyx_string** %5389
  %5613 = call %nyx_string* @nyx_string_concat(%nyx_string* %5611, %nyx_string* %5612)
  %5614 = getelementptr [8 x i8], [8 x i8]* @.str867, i32 0, i32 0
  %5615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %5614, i64 7)
  %5616 = call %nyx_string* @nyx_string_concat(%nyx_string* %5613, %nyx_string* %5615)
  %5617 = load i64, i64* %5410
  %5618 = call %nyx_string* @nyx_string_from_int(i64 %5617)
  %5619 = call %nyx_string* @nyx_string_concat(%nyx_string* %5616, %nyx_string* %5618)
  %5620 = getelementptr [14 x i8], [14 x i8]* @.str868, i32 0, i32 0
  %5621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %5620, i64 13)
  %5622 = call %nyx_string* @nyx_string_concat(%nyx_string* %5619, %nyx_string* %5621)
  store %nyx_string* %5622, %nyx_string** %5607
  %5623 = load %nyx_string*, %nyx_string** %5607
  %5624 = load %nyx_string*, %nyx_string** %5406
  %5625 = call %nyx_string* @nyx_string_concat(%nyx_string* %5623, %nyx_string* %5624)
  %5626 = getelementptr [2 x i8], [2 x i8]* @.str869, i32 0, i32 0
  %5627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %5626, i64 1)
  %5628 = call %nyx_string* @nyx_string_concat(%nyx_string* %5625, %nyx_string* %5627)
  store %nyx_string* %5628, %nyx_string** %5607
  %5629 = load %nyx_string*, %nyx_string** %5607
  ret %nyx_string* %5629
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %5630 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5631 = getelementptr [16 x i8], [16 x i8]* @.str870, i32 0, i32 0
  %5632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %5631, i64 15)
  %5633 = call %nyx_string* @nyx_string_concat(%nyx_string* %5630, %nyx_string* %5632)
  %5634 = alloca %nyx_string*
  store %nyx_string* %5633, %nyx_string** %5634
  %5635 = load %nyx_string*, %nyx_string** %5634
  %5636 = call i8* @nyx_string_to_cstr(%nyx_string* %5635)
  %5637 = call i1 @nyx_file_exists(i8* %5636)
  %5638 = xor i1 %5637, true
  br i1 %5638, label %then974, label %else975
then974:
  %5639 = getelementptr [1 x i8], [1 x i8]* @.str871, i32 0, i32 0
  %5640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %5639, i64 0)
  ret %nyx_string* %5640
else975:
  br label %merge976
merge976:
  %5641 = load %nyx_string*, %nyx_string** %5634
  %5642 = call i8* @nyx_string_to_cstr(%nyx_string* %5641)
  %5643 = call %nyx_string* @nyx_read_file(i8* %5642)
  %5644 = alloca %nyx_string*
  store %nyx_string* %5643, %nyx_string** %5644
  %5645 = load %nyx_string*, %nyx_string** %5644
  %5646 = getelementptr [2 x i8], [2 x i8]* @.str872, i32 0, i32 0
  %5647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %5646, i64 1)
  %5648 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5645, %nyx_string* %5647)
  %5649 = alloca { i64, i8* }*
  store { i64, i8* }* %5648, { i64, i8* }** %5649
  %5650 = getelementptr [1 x i8], [1 x i8]* @.str873, i32 0, i32 0
  %5651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %5650, i64 0)
  %5652 = alloca %nyx_string*
  store %nyx_string* %5651, %nyx_string** %5652
  %5653 = alloca i64
  store i64 0, i64* %5653
  %5654 = alloca i64
  store i64 0, i64* %5654
  %5655 = getelementptr [9 x i8], [9 x i8]* @.str874, i32 0, i32 0
  %5656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %5655, i64 8)
  %5657 = alloca %nyx_string*
  store %nyx_string* %5656, %nyx_string** %5657
  %5658 = getelementptr [2 x i8], [2 x i8]* @.str875, i32 0, i32 0
  %5659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %5658, i64 1)
  %5660 = alloca %nyx_string*
  store %nyx_string* %5659, %nyx_string** %5660
  %5661 = getelementptr [4 x i8], [4 x i8]* @.str876, i32 0, i32 0
  %5662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %5661, i64 3)
  %5663 = alloca %nyx_string*
  store %nyx_string* %5662, %nyx_string** %5663
  %5664 = getelementptr [4 x i8], [4 x i8]* @.str877, i32 0, i32 0
  %5665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %5664, i64 3)
  %5666 = alloca %nyx_string*
  store %nyx_string* %5665, %nyx_string** %5666
  %5667 = getelementptr [5 x i8], [5 x i8]* @.str878, i32 0, i32 0
  %5668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %5667, i64 4)
  %5669 = alloca %nyx_string*
  store %nyx_string* %5668, %nyx_string** %5669
  %5670 = getelementptr [2 x i8], [2 x i8]* @.str879, i32 0, i32 0
  %5671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %5670, i64 1)
  %5672 = alloca %nyx_string*
  store %nyx_string* %5671, %nyx_string** %5672
  %5673 = getelementptr [2 x i8], [2 x i8]* @.str880, i32 0, i32 0
  %5674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %5673, i64 1)
  %5675 = alloca %nyx_string*
  store %nyx_string* %5674, %nyx_string** %5675
  %5676 = getelementptr [2 x i8], [2 x i8]* @.str881, i32 0, i32 0
  %5677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %5676, i64 1)
  %5678 = alloca %nyx_string*
  store %nyx_string* %5677, %nyx_string** %5678
  %5679 = getelementptr [1 x i8], [1 x i8]* @.str882, i32 0, i32 0
  %5680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %5679, i64 0)
  %5681 = alloca %nyx_string*
  store %nyx_string* %5680, %nyx_string** %5681
  %5682 = getelementptr [6 x i8], [6 x i8]* @.str883, i32 0, i32 0
  %5683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %5682, i64 5)
  %5684 = alloca %nyx_string*
  store %nyx_string* %5683, %nyx_string** %5684
  %5685 = getelementptr [2 x i8], [2 x i8]* @.str884, i32 0, i32 0
  %5686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %5685, i64 1)
  %5687 = alloca %nyx_string*
  store %nyx_string* %5686, %nyx_string** %5687
  %5688 = call i8* @llvm.stacksave()
  br label %while_cond977
while_cond977:
  %5689 = load i64, i64* %5654
  %5690 = load { i64, i8* }*, { i64, i8* }** %5649
  %5691 = call i64 @nyx_array_length({ i64, i8* }* %5690)
  %5692 = icmp slt i64 %5689, %5691
  br i1 %5692, label %while_body978, label %while_end979
while_body978:
  call void @llvm.stackrestore(i8* %5688)
  %5693 = load { i64, i8* }*, { i64, i8* }** %5649
  %5694 = load i64, i64* %5654
  %5695 = call i64 @nyx_array_get_checked({ i64, i8* }* %5693, i64 %5694, i64 2)
  %5696 = inttoptr i64 %5695 to %nyx_string*
  %5697 = alloca %nyx_string*
  store %nyx_string* %5696, %nyx_string** %5697
  %5698 = load %nyx_string*, %nyx_string** %5697
  %5699 = call i64 @nyx_string_byte_length(%nyx_string* %5698)
  %5700 = icmp sgt i64 %5699, 8
  br i1 %5700, label %then980, label %else981
then980:
  %5701 = load %nyx_string*, %nyx_string** %5697
  %5702 = call %nyx_string* @nyx_string_substring(%nyx_string* %5701, i64 0, i64 8)
  %5703 = load %nyx_string*, %nyx_string** %5657
  %5704 = call i1 @nyx_string_equals(%nyx_string* %5702, %nyx_string* %5703)
  br i1 %5704, label %then983, label %else984
then983:
  %5705 = load %nyx_string*, %nyx_string** %5697
  %5706 = load %nyx_string*, %nyx_string** %5660
  %5707 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5705, %nyx_string* %5706)
  %5708 = alloca { i64, i8* }*
  store { i64, i8* }* %5707, { i64, i8* }** %5708
  %5709 = load { i64, i8* }*, { i64, i8* }** %5708
  %5710 = call i64 @nyx_array_length({ i64, i8* }* %5709)
  %5711 = icmp sge i64 %5710, 5
  br i1 %5711, label %then986, label %else987
then986:
  %5712 = load { i64, i8* }*, { i64, i8* }** %5708
  %5713 = call i64 @nyx_array_get_checked({ i64, i8* }* %5712, i64 1, i64 2)
  %5714 = inttoptr i64 %5713 to %nyx_string*
  %5715 = alloca %nyx_string*
  store %nyx_string* %5714, %nyx_string** %5715
  %5716 = load { i64, i8* }*, { i64, i8* }** %5708
  %5717 = call i64 @nyx_array_get_checked({ i64, i8* }* %5716, i64 2, i64 2)
  %5718 = inttoptr i64 %5717 to %nyx_string*
  %5719 = alloca %nyx_string*
  store %nyx_string* %5718, %nyx_string** %5719
  %5720 = load { i64, i8* }*, { i64, i8* }** %5708
  %5721 = call i64 @nyx_array_get_checked({ i64, i8* }* %5720, i64 3, i64 2)
  %5722 = inttoptr i64 %5721 to %nyx_string*
  %5723 = alloca %nyx_string*
  store %nyx_string* %5722, %nyx_string** %5723
  %5724 = load { i64, i8* }*, { i64, i8* }** %5708
  %5725 = call i64 @nyx_array_get_checked({ i64, i8* }* %5724, i64 4, i64 2)
  %5726 = inttoptr i64 %5725 to %nyx_string*
  %5727 = alloca %nyx_string*
  store %nyx_string* %5726, %nyx_string** %5727
  %5728 = load %nyx_string*, %nyx_string** %5723
  %5729 = load %nyx_string*, %nyx_string** %cat.ptr
  %5730 = call i1 @nyx_string_equals(%nyx_string* %5728, %nyx_string* %5729)
  br i1 %5730, label %then989, label %else990
then989:
  %5731 = load %nyx_string*, %nyx_string** %5663
  %5732 = load %nyx_string*, %nyx_string** %5715
  %5733 = call %nyx_string* @nyx_string_concat(%nyx_string* %5731, %nyx_string* %5732)
  %5734 = load %nyx_string*, %nyx_string** %5666
  %5735 = call %nyx_string* @nyx_string_concat(%nyx_string* %5733, %nyx_string* %5734)
  %5736 = load %nyx_string*, %nyx_string** %5719
  %5737 = call %nyx_string* @nyx_string_concat(%nyx_string* %5735, %nyx_string* %5736)
  %5738 = load %nyx_string*, %nyx_string** %5669
  %5739 = call %nyx_string* @nyx_string_concat(%nyx_string* %5737, %nyx_string* %5738)
  %5740 = alloca %nyx_string*
  store %nyx_string* %5739, %nyx_string** %5740
  %5741 = load %nyx_string*, %nyx_string** %5719
  %5742 = load %nyx_string*, %nyx_string** %5672
  %5743 = call i1 @nyx_string_equals(%nyx_string* %5741, %nyx_string* %5742)
  %5744 = xor i1 %5743, true
  br i1 %5744, label %then992, label %else993
then992:
  %5745 = load %nyx_string*, %nyx_string** %5740
  %5746 = load %nyx_string*, %nyx_string** %5675
  %5747 = call %nyx_string* @nyx_string_concat(%nyx_string* %5745, %nyx_string* %5746)
  store %nyx_string* %5747, %nyx_string** %5740
  br label %merge994
else993:
  br label %merge994
merge994:
  %5748 = load %nyx_string*, %nyx_string** %5740
  %5749 = load %nyx_string*, %nyx_string** %5678
  %5750 = call %nyx_string* @nyx_string_concat(%nyx_string* %5748, %nyx_string* %5749)
  store %nyx_string* %5750, %nyx_string** %5740
  %5751 = load %nyx_string*, %nyx_string** %5727
  %5752 = load %nyx_string*, %nyx_string** %5681
  %5753 = call i1 @nyx_string_equals(%nyx_string* %5751, %nyx_string* %5752)
  %5754 = xor i1 %5753, true
  br i1 %5754, label %then995, label %else996
then995:
  %5755 = load %nyx_string*, %nyx_string** %5740
  %5756 = load %nyx_string*, %nyx_string** %5684
  %5757 = call %nyx_string* @nyx_string_concat(%nyx_string* %5755, %nyx_string* %5756)
  %5758 = load %nyx_string*, %nyx_string** %5727
  %5759 = call %nyx_string* @nyx_string_concat(%nyx_string* %5757, %nyx_string* %5758)
  store %nyx_string* %5759, %nyx_string** %5740
  br label %merge997
else996:
  br label %merge997
merge997:
  %5760 = load %nyx_string*, %nyx_string** %5652
  %5761 = load %nyx_string*, %nyx_string** %5740
  %5762 = call %nyx_string* @nyx_string_concat(%nyx_string* %5760, %nyx_string* %5761)
  %5763 = load %nyx_string*, %nyx_string** %5687
  %5764 = call %nyx_string* @nyx_string_concat(%nyx_string* %5762, %nyx_string* %5763)
  store %nyx_string* %5764, %nyx_string** %5652
  %5765 = load i64, i64* %5653
  %5766 = add i64 %5765, 1
  store i64 %5766, i64* %5653
  br label %merge991
else990:
  br label %merge991
merge991:
  br label %merge988
else987:
  br label %merge988
merge988:
  br label %merge985
else984:
  br label %merge985
merge985:
  br label %merge982
else981:
  br label %merge982
merge982:
  %5767 = load i64, i64* %5654
  %5768 = add i64 %5767, 1
  store i64 %5768, i64* %5654
  br label %while_cond977
while_end979:
  %5769 = load i64, i64* %5653
  %5770 = icmp eq i64 %5769, 0
  br i1 %5770, label %then998, label %else999
then998:
  %5771 = getelementptr [1 x i8], [1 x i8]* @.str885, i32 0, i32 0
  %5772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %5771, i64 0)
  ret %nyx_string* %5772
else999:
  br label %merge1000
merge1000:
  %5773 = getelementptr [39 x i8], [39 x i8]* @.str886, i32 0, i32 0
  %5774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %5773, i64 38)
  %5775 = load %nyx_string*, %nyx_string** %5652
  %5776 = call %nyx_string* @nyx_string_concat(%nyx_string* %5774, %nyx_string* %5775)
  %5777 = getelementptr [2 x i8], [2 x i8]* @.str887, i32 0, i32 0
  %5778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %5777, i64 1)
  %5779 = call %nyx_string* @nyx_string_concat(%nyx_string* %5776, %nyx_string* %5778)
  ret %nyx_string* %5779
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %5780 = call %nyx_string* @capabilities_std_dir()
  %5781 = alloca %nyx_string*
  store %nyx_string* %5780, %nyx_string** %5781
  %5782 = load %nyx_string*, %nyx_string** %5781
  %5783 = getelementptr [1 x i8], [1 x i8]* @.str888, i32 0, i32 0
  %5784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %5783, i64 0)
  %5785 = call i1 @nyx_string_equals(%nyx_string* %5782, %nyx_string* %5784)
  br i1 %5785, label %then1001, label %else1002
then1001:
  %5786 = getelementptr [71 x i8], [71 x i8]* @.str889, i32 0, i32 0
  %5787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %5786, i64 70)
  %5788 = call i8* @nyx_string_to_cstr(%nyx_string* %5787)
  call void @nyx_print_string(i8* %5788)
  ret i1 0
else1002:
  br label %merge1003
merge1003:
  %5789 = load %nyx_string*, %nyx_string** %5781
  %5790 = call i8* @nyx_string_to_cstr(%nyx_string* %5789)
  %5791 = call { i64, i8* }* @nyx_readdir(i8* %5790)
  %5792 = alloca { i64, i8* }*
  store { i64, i8* }* %5791, { i64, i8* }** %5792
  %5793 = call { i64, i8* }* @nyx_array_new_ptr()
  %5794 = getelementptr [11 x i8], [11 x i8]* @.str890, i32 0, i32 0
  %5795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %5794, i64 10)
  %5796 = ptrtoint %nyx_string* %5795 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5796, i64 2)
  %5797 = getelementptr [20 x i8], [20 x i8]* @.str891, i32 0, i32 0
  %5798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %5797, i64 19)
  %5799 = ptrtoint %nyx_string* %5798 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5799, i64 2)
  %5800 = getelementptr [23 x i8], [23 x i8]* @.str892, i32 0, i32 0
  %5801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %5800, i64 22)
  %5802 = ptrtoint %nyx_string* %5801 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5802, i64 2)
  %5803 = getelementptr [15 x i8], [15 x i8]* @.str893, i32 0, i32 0
  %5804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %5803, i64 14)
  %5805 = ptrtoint %nyx_string* %5804 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5805, i64 2)
  %5806 = getelementptr [4 x i8], [4 x i8]* @.str894, i32 0, i32 0
  %5807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %5806, i64 3)
  %5808 = ptrtoint %nyx_string* %5807 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5808, i64 2)
  %5809 = getelementptr [13 x i8], [13 x i8]* @.str895, i32 0, i32 0
  %5810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %5809, i64 12)
  %5811 = ptrtoint %nyx_string* %5810 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5811, i64 2)
  %5812 = getelementptr [19 x i8], [19 x i8]* @.str896, i32 0, i32 0
  %5813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %5812, i64 18)
  %5814 = ptrtoint %nyx_string* %5813 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5814, i64 2)
  %5815 = getelementptr [7 x i8], [7 x i8]* @.str897, i32 0, i32 0
  %5816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %5815, i64 6)
  %5817 = ptrtoint %nyx_string* %5816 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5817, i64 2)
  %5818 = getelementptr [16 x i8], [16 x i8]* @.str898, i32 0, i32 0
  %5819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %5818, i64 15)
  %5820 = ptrtoint %nyx_string* %5819 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5820, i64 2)
  %5821 = getelementptr [12 x i8], [12 x i8]* @.str899, i32 0, i32 0
  %5822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %5821, i64 11)
  %5823 = ptrtoint %nyx_string* %5822 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5823, i64 2)
  %5824 = getelementptr [26 x i8], [26 x i8]* @.str900, i32 0, i32 0
  %5825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %5824, i64 25)
  %5826 = ptrtoint %nyx_string* %5825 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5826, i64 2)
  %5827 = getelementptr [8 x i8], [8 x i8]* @.str901, i32 0, i32 0
  %5828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %5827, i64 7)
  %5829 = ptrtoint %nyx_string* %5828 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5829, i64 2)
  %5830 = getelementptr [14 x i8], [14 x i8]* @.str902, i32 0, i32 0
  %5831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %5830, i64 13)
  %5832 = ptrtoint %nyx_string* %5831 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5832, i64 2)
  %5833 = getelementptr [6 x i8], [6 x i8]* @.str903, i32 0, i32 0
  %5834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %5833, i64 5)
  %5835 = ptrtoint %nyx_string* %5834 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5793, i64 %5835, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %5793, i64 2)
  %5836 = alloca { i64, i8* }*
  store { i64, i8* }* %5793, { i64, i8* }** %5836
  %5837 = getelementptr [49 x i8], [49 x i8]* @.str904, i32 0, i32 0
  %5838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %5837, i64 48)
  %5839 = alloca %nyx_string*
  store %nyx_string* %5838, %nyx_string** %5839
  %5840 = load %nyx_string*, %nyx_string** %5839
  %5841 = getelementptr [19 x i8], [19 x i8]* @.str905, i32 0, i32 0
  %5842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %5841, i64 18)
  %5843 = call %nyx_string* @nyx_string_concat(%nyx_string* %5840, %nyx_string* %5842)
  %5844 = call %nyx_string* @toolchain_version()
  %5845 = call %nyx_string* @nyx_string_concat(%nyx_string* %5843, %nyx_string* %5844)
  %5846 = getelementptr [6 x i8], [6 x i8]* @.str906, i32 0, i32 0
  %5847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %5846, i64 5)
  %5848 = call %nyx_string* @nyx_string_concat(%nyx_string* %5845, %nyx_string* %5847)
  store %nyx_string* %5848, %nyx_string** %5839
  %5849 = load %nyx_string*, %nyx_string** %5839
  %5850 = getelementptr [103 x i8], [103 x i8]* @.str907, i32 0, i32 0
  %5851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %5850, i64 102)
  %5852 = call %nyx_string* @nyx_string_concat(%nyx_string* %5849, %nyx_string* %5851)
  store %nyx_string* %5852, %nyx_string** %5839
  %5853 = load %nyx_string*, %nyx_string** %5839
  %5854 = getelementptr [103 x i8], [103 x i8]* @.str908, i32 0, i32 0
  %5855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %5854, i64 102)
  %5856 = call %nyx_string* @nyx_string_concat(%nyx_string* %5853, %nyx_string* %5855)
  store %nyx_string* %5856, %nyx_string** %5839
  %5857 = load %nyx_string*, %nyx_string** %5839
  %5858 = getelementptr [95 x i8], [95 x i8]* @.str909, i32 0, i32 0
  %5859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %5858, i64 94)
  %5860 = call %nyx_string* @nyx_string_concat(%nyx_string* %5857, %nyx_string* %5859)
  store %nyx_string* %5860, %nyx_string** %5839
  %5861 = alloca i64
  store i64 0, i64* %5861
  %5862 = getelementptr [1 x i8], [1 x i8]* @.str910, i32 0, i32 0
  %5863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %5862, i64 0)
  %5864 = alloca %nyx_string*
  store %nyx_string* %5863, %nyx_string** %5864
  %5865 = getelementptr [4 x i8], [4 x i8]* @.str911, i32 0, i32 0
  %5866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %5865, i64 3)
  %5867 = alloca %nyx_string*
  store %nyx_string* %5866, %nyx_string** %5867
  %5868 = getelementptr [6 x i8], [6 x i8]* @.str912, i32 0, i32 0
  %5869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %5868, i64 5)
  %5870 = alloca %nyx_string*
  store %nyx_string* %5869, %nyx_string** %5870
  %5871 = getelementptr [4 x i8], [4 x i8]* @.str913, i32 0, i32 0
  %5872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %5871, i64 3)
  %5873 = alloca %nyx_string*
  store %nyx_string* %5872, %nyx_string** %5873
  %5874 = getelementptr [3 x i8], [3 x i8]* @.str914, i32 0, i32 0
  %5875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %5874, i64 2)
  %5876 = alloca %nyx_string*
  store %nyx_string* %5875, %nyx_string** %5876
  %5877 = call i8* @llvm.stacksave()
  br label %while_cond1004
while_cond1004:
  %5878 = load i64, i64* %5861
  %5879 = load { i64, i8* }*, { i64, i8* }** %5836
  %5880 = call i64 @nyx_array_length({ i64, i8* }* %5879)
  %5881 = icmp slt i64 %5878, %5880
  br i1 %5881, label %while_body1005, label %while_end1006
while_body1005:
  call void @llvm.stackrestore(i8* %5877)
  %5882 = load { i64, i8* }*, { i64, i8* }** %5836
  %5883 = load i64, i64* %5861
  %5884 = call i64 @nyx_array_get_checked({ i64, i8* }* %5882, i64 %5883, i64 2)
  %5885 = inttoptr i64 %5884 to %nyx_string*
  %5886 = alloca %nyx_string*
  store %nyx_string* %5885, %nyx_string** %5886
  %5887 = load %nyx_string*, %nyx_string** %5864
  %5888 = alloca %nyx_string*
  store %nyx_string* %5887, %nyx_string** %5888
  %5889 = alloca i64
  store i64 0, i64* %5889
  %5890 = call i8* @llvm.stacksave()
  br label %while_cond1007
while_cond1007:
  %5891 = load i64, i64* %5889
  %5892 = load { i64, i8* }*, { i64, i8* }** %5792
  %5893 = call i64 @nyx_array_length({ i64, i8* }* %5892)
  %5894 = icmp slt i64 %5891, %5893
  br i1 %5894, label %while_body1008, label %while_end1009
while_body1008:
  call void @llvm.stackrestore(i8* %5890)
  %5895 = load { i64, i8* }*, { i64, i8* }** %5792
  %5896 = load i64, i64* %5889
  %5897 = call i64 @nyx_array_get_checked({ i64, i8* }* %5895, i64 %5896, i64 2)
  %5898 = inttoptr i64 %5897 to %nyx_string*
  %5899 = alloca %nyx_string*
  store %nyx_string* %5898, %nyx_string** %5899
  %5900 = load %nyx_string*, %nyx_string** %5899
  %5901 = load %nyx_string*, %nyx_string** %5867
  %5902 = call i1 @nyx_string_ends_with(%nyx_string* %5900, %nyx_string* %5901)
  br i1 %5902, label %then1010, label %else1011
then1010:
  %5903 = load %nyx_string*, %nyx_string** %5899
  %5904 = load %nyx_string*, %nyx_string** %5899
  %5905 = call i64 @nyx_string_byte_length(%nyx_string* %5904)
  %5906 = sub i64 %5905, 3
  %5907 = call %nyx_string* @nyx_string_substring(%nyx_string* %5903, i64 0, i64 %5906)
  %5908 = alloca %nyx_string*
  store %nyx_string* %5907, %nyx_string** %5908
  %5909 = load %nyx_string*, %nyx_string** %5908
  %5910 = call %nyx_string* @module_category(%nyx_string* %5909)
  %5911 = alloca %nyx_string*
  store %nyx_string* %5910, %nyx_string** %5911
  %5912 = load %nyx_string*, %nyx_string** %5911
  %5913 = load %nyx_string*, %nyx_string** %5864
  %5914 = call i1 @nyx_string_equals(%nyx_string* %5912, %nyx_string* %5913)
  br i1 %5914, label %then1013, label %else1014
then1013:
  %5915 = load %nyx_string*, %nyx_string** %5870
  store %nyx_string* %5915, %nyx_string** %5911
  br label %merge1015
else1014:
  br label %merge1015
merge1015:
  %5916 = load %nyx_string*, %nyx_string** %5911
  %5917 = load %nyx_string*, %nyx_string** %5886
  %5918 = call i1 @nyx_string_equals(%nyx_string* %5916, %nyx_string* %5917)
  br i1 %5918, label %then1016, label %else1017
then1016:
  %5919 = load %nyx_string*, %nyx_string** %5781
  %5920 = load %nyx_string*, %nyx_string** %5899
  %5921 = call %nyx_string* @capabilities_module_section(%nyx_string* %5919, %nyx_string* %5920)
  %5922 = alloca %nyx_string*
  store %nyx_string* %5921, %nyx_string** %5922
  %5923 = load %nyx_string*, %nyx_string** %5922
  %5924 = load %nyx_string*, %nyx_string** %5864
  %5925 = call i1 @nyx_string_equals(%nyx_string* %5923, %nyx_string* %5924)
  %5926 = xor i1 %5925, true
  br i1 %5926, label %then1019, label %else1020
then1019:
  %5927 = load %nyx_string*, %nyx_string** %5888
  %5928 = load %nyx_string*, %nyx_string** %5922
  %5929 = call %nyx_string* @nyx_string_concat(%nyx_string* %5927, %nyx_string* %5928)
  store %nyx_string* %5929, %nyx_string** %5888
  br label %merge1021
else1020:
  br label %merge1021
merge1021:
  br label %merge1018
else1017:
  br label %merge1018
merge1018:
  br label %merge1012
else1011:
  br label %merge1012
merge1012:
  %5930 = load i64, i64* %5889
  %5931 = add i64 %5930, 1
  store i64 %5931, i64* %5889
  br label %while_cond1007
while_end1009:
  %5932 = load %nyx_string*, %nyx_string** %5781
  %5933 = load %nyx_string*, %nyx_string** %5886
  %5934 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %5932, %nyx_string* %5933)
  %5935 = alloca %nyx_string*
  store %nyx_string* %5934, %nyx_string** %5935
  %5936 = alloca i1
  store i1 true, i1* %5936
  %5937 = load %nyx_string*, %nyx_string** %5888
  %5938 = load %nyx_string*, %nyx_string** %5864
  %5939 = call i1 @nyx_string_equals(%nyx_string* %5937, %nyx_string* %5938)
  %5940 = xor i1 %5939, true
  br i1 %5940, label %sc_or_end1023, label %sc_or_rhs1022
sc_or_rhs1022:
  %5941 = load %nyx_string*, %nyx_string** %5935
  %5942 = load %nyx_string*, %nyx_string** %5864
  %5943 = call i1 @nyx_string_equals(%nyx_string* %5941, %nyx_string* %5942)
  %5944 = xor i1 %5943, true
  store i1 %5944, i1* %5936
  br label %sc_or_end1023
sc_or_end1023:
  %5945 = load i1, i1* %5936
  br i1 %5945, label %then1024, label %else1025
then1024:
  %5946 = load %nyx_string*, %nyx_string** %5839
  %5947 = load %nyx_string*, %nyx_string** %5873
  %5948 = call %nyx_string* @nyx_string_concat(%nyx_string* %5946, %nyx_string* %5947)
  %5949 = load %nyx_string*, %nyx_string** %5886
  %5950 = call %nyx_string* @nyx_string_concat(%nyx_string* %5948, %nyx_string* %5949)
  %5951 = load %nyx_string*, %nyx_string** %5876
  %5952 = call %nyx_string* @nyx_string_concat(%nyx_string* %5950, %nyx_string* %5951)
  %5953 = load %nyx_string*, %nyx_string** %5888
  %5954 = call %nyx_string* @nyx_string_concat(%nyx_string* %5952, %nyx_string* %5953)
  %5955 = load %nyx_string*, %nyx_string** %5935
  %5956 = call %nyx_string* @nyx_string_concat(%nyx_string* %5954, %nyx_string* %5955)
  store %nyx_string* %5956, %nyx_string** %5839
  br label %merge1026
else1025:
  br label %merge1026
merge1026:
  %5957 = load i64, i64* %5861
  %5958 = add i64 %5957, 1
  store i64 %5958, i64* %5861
  br label %while_cond1004
while_end1006:
  %5959 = getelementptr [16 x i8], [16 x i8]* @.str915, i32 0, i32 0
  %5960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %5959, i64 15)
  %5961 = alloca %nyx_string*
  store %nyx_string* %5960, %nyx_string** %5961
  %5962 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %5963 = getelementptr [1 x i8], [1 x i8]* @.str916, i32 0, i32 0
  %5964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %5963, i64 0)
  %5965 = call i1 @nyx_string_equals(%nyx_string* %5962, %nyx_string* %5964)
  %5966 = xor i1 %5965, true
  br i1 %5966, label %then1027, label %else1028
then1027:
  %5967 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %5967, %nyx_string** %5961
  br label %merge1029
else1028:
  br label %merge1029
merge1029:
  %5968 = load %nyx_string*, %nyx_string** %5961
  %5969 = load %nyx_string*, %nyx_string** %5839
  %5970 = call i8* @nyx_string_to_cstr(%nyx_string* %5968)
  %5971 = call i1 @nyx_write_file_safe(i8* %5970, %nyx_string* %5969)
  %5972 = getelementptr [32 x i8], [32 x i8]* @.str917, i32 0, i32 0
  %5973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %5972, i64 31)
  %5974 = load %nyx_string*, %nyx_string** %5781
  %5975 = call %nyx_string* @nyx_string_concat(%nyx_string* %5973, %nyx_string* %5974)
  %5976 = getelementptr [3 x i8], [3 x i8]* @.str918, i32 0, i32 0
  %5977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %5976, i64 2)
  %5978 = call %nyx_string* @nyx_string_concat(%nyx_string* %5975, %nyx_string* %5977)
  %5979 = load { i64, i8* }*, { i64, i8* }** %5792
  %5980 = call i64 @nyx_array_length({ i64, i8* }* %5979)
  %5981 = call %nyx_string* @nyx_string_from_int(i64 %5980)
  %5982 = call %nyx_string* @nyx_string_concat(%nyx_string* %5978, %nyx_string* %5981)
  %5983 = getelementptr [22 x i8], [22 x i8]* @.str919, i32 0, i32 0
  %5984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %5983, i64 21)
  %5985 = call %nyx_string* @nyx_string_concat(%nyx_string* %5982, %nyx_string* %5984)
  %5986 = call i8* @nyx_string_to_cstr(%nyx_string* %5985)
  call void @nyx_print_string(i8* %5986)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %5987 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %5988 = ptrtoint %SharedEnv_main* %5987 to i64
  %5989 = call i8* @GC_malloc(i64 %5988)
  %5990 = bitcast i8* %5989 to %SharedEnv_main*
  %5991 = call { i64, i8* }* @nyx_get_args()
  %5992 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 0
  store { i64, i8* }* %5991, { i64, i8* }** %5992
  %5993 = getelementptr [6 x i8], [6 x i8]* @.str920, i32 0, i32 0
  %5994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %5993, i64 5)
  %5995 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 1
  store %nyx_string* %5994, %nyx_string** %5995
  %5996 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 2
  store i1 0, i1* %5996
  %5997 = getelementptr [1 x i8], [1 x i8]* @.str921, i32 0, i32 0
  %5998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %5997, i64 0)
  %5999 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 3
  store %nyx_string* %5998, %nyx_string** %5999
  %6000 = getelementptr [1 x i8], [1 x i8]* @.str922, i32 0, i32 0
  %6001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %6000, i64 0)
  %6002 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 4
  store %nyx_string* %6001, %nyx_string** %6002
  %6003 = load { i64, i8* }*, { i64, i8* }** %5992
  %6004 = call i64 @nyx_array_length({ i64, i8* }* %6003)
  %6005 = icmp sge i64 %6004, 2
  br i1 %6005, label %then1030, label %else1031
then1030:
  %6006 = load { i64, i8* }*, { i64, i8* }** %5992
  %6007 = call i64 @nyx_array_get_checked({ i64, i8* }* %6006, i64 1, i64 2)
  %6008 = inttoptr i64 %6007 to %nyx_string*
  %6009 = alloca %nyx_string*
  store %nyx_string* %6008, %nyx_string** %6009
  %6010 = load %nyx_string*, %nyx_string** %6009
  store %nyx_string* %6010, %nyx_string** %5995
  br label %merge1032
else1031:
  br label %merge1032
merge1032:
  %6011 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 5
  store i64 2, i64* %6011
  %6012 = getelementptr [1 x i8], [1 x i8]* @.str923, i32 0, i32 0
  %6013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %6012, i64 0)
  %6014 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 6
  store %nyx_string* %6013, %nyx_string** %6014
  %6015 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 7
  store i1 0, i1* %6015
  %6016 = alloca i1
  store i1 true, i1* %6016
  %6017 = alloca i1
  store i1 true, i1* %6017
  %6018 = load %nyx_string*, %nyx_string** %5995
  %6019 = getelementptr [6 x i8], [6 x i8]* @.str924, i32 0, i32 0
  %6020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %6019, i64 5)
  %6021 = call i1 @nyx_string_equals(%nyx_string* %6018, %nyx_string* %6020)
  br i1 %6021, label %sc_or_end1034, label %sc_or_rhs1033
sc_or_rhs1033:
  %6022 = load %nyx_string*, %nyx_string** %5995
  %6023 = getelementptr [4 x i8], [4 x i8]* @.str925, i32 0, i32 0
  %6024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %6023, i64 3)
  %6025 = call i1 @nyx_string_equals(%nyx_string* %6022, %nyx_string* %6024)
  store i1 %6025, i1* %6017
  br label %sc_or_end1034
sc_or_end1034:
  %6026 = load i1, i1* %6017
  br i1 %6026, label %sc_or_end1036, label %sc_or_rhs1035
sc_or_rhs1035:
  %6027 = load %nyx_string*, %nyx_string** %5995
  %6028 = getelementptr [5 x i8], [5 x i8]* @.str926, i32 0, i32 0
  %6029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %6028, i64 4)
  %6030 = call i1 @nyx_string_equals(%nyx_string* %6027, %nyx_string* %6029)
  store i1 %6030, i1* %6016
  br label %sc_or_end1036
sc_or_end1036:
  %6031 = load i1, i1* %6016
  %6032 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 8
  store i1 %6031, i1* %6032
  %6033 = getelementptr [3 x i8], [3 x i8]* @.str927, i32 0, i32 0
  %6034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %6033, i64 2)
  %6035 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 9
  store %nyx_string* %6034, %nyx_string** %6035
  %6036 = getelementptr [10 x i8], [10 x i8]* @.str928, i32 0, i32 0
  %6037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %6036, i64 9)
  %6038 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 10
  store %nyx_string* %6037, %nyx_string** %6038
  %6039 = getelementptr [7 x i8], [7 x i8]* @.str929, i32 0, i32 0
  %6040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %6039, i64 6)
  %6041 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 11
  store %nyx_string* %6040, %nyx_string** %6041
  %6042 = getelementptr [1 x i8], [1 x i8]* @.str930, i32 0, i32 0
  %6043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %6042, i64 0)
  %6044 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 12
  store %nyx_string* %6043, %nyx_string** %6044
  %6045 = getelementptr [66 x i8], [66 x i8]* @.str931, i32 0, i32 0
  %6046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %6045, i64 65)
  %6047 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 13
  store %nyx_string* %6046, %nyx_string** %6047
  %6048 = getelementptr [7 x i8], [7 x i8]* @.str932, i32 0, i32 0
  %6049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %6048, i64 6)
  %6050 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 14
  store %nyx_string* %6049, %nyx_string** %6050
  %6051 = getelementptr [3 x i8], [3 x i8]* @.str933, i32 0, i32 0
  %6052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %6051, i64 2)
  %6053 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 15
  store %nyx_string* %6052, %nyx_string** %6053
  %6054 = getelementptr [9 x i8], [9 x i8]* @.str934, i32 0, i32 0
  %6055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %6054, i64 8)
  %6056 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 16
  store %nyx_string* %6055, %nyx_string** %6056
  %6057 = getelementptr [63 x i8], [63 x i8]* @.str935, i32 0, i32 0
  %6058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %6057, i64 62)
  %6059 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 17
  store %nyx_string* %6058, %nyx_string** %6059
  %6060 = getelementptr [28 x i8], [28 x i8]* @.str936, i32 0, i32 0
  %6061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %6060, i64 27)
  %6062 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 18
  store %nyx_string* %6061, %nyx_string** %6062
  %6063 = getelementptr [4 x i8], [4 x i8]* @.str937, i32 0, i32 0
  %6064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %6063, i64 3)
  %6065 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 19
  store %nyx_string* %6064, %nyx_string** %6065
  %6066 = call i8* @llvm.stacksave()
  br label %while_cond1037
while_cond1037:
  %6067 = load i64, i64* %6011
  %6068 = load { i64, i8* }*, { i64, i8* }** %5992
  %6069 = call i64 @nyx_array_length({ i64, i8* }* %6068)
  %6070 = icmp slt i64 %6067, %6069
  br i1 %6070, label %while_body1038, label %while_end1039
while_body1038:
  call void @llvm.stackrestore(i8* %6066)
  %6071 = load { i64, i8* }*, { i64, i8* }** %5992
  %6072 = load i64, i64* %6011
  %6073 = call i64 @nyx_array_get_checked({ i64, i8* }* %6071, i64 %6072, i64 2)
  %6074 = inttoptr i64 %6073 to %nyx_string*
  %6075 = alloca %nyx_string*
  store %nyx_string* %6074, %nyx_string** %6075
  %6076 = load %nyx_string*, %nyx_string** %6075
  %6077 = load %nyx_string*, %nyx_string** %6035
  %6078 = call i1 @nyx_string_equals(%nyx_string* %6076, %nyx_string* %6077)
  br i1 %6078, label %then1040, label %else1041
then1040:
  %6079 = load { i64, i8* }*, { i64, i8* }** %5992
  %6080 = call i64 @nyx_array_length({ i64, i8* }* %6079)
  store i64 %6080, i64* %6011
  br label %merge1042
else1041:
  %6081 = load %nyx_string*, %nyx_string** %6075
  %6082 = load %nyx_string*, %nyx_string** %6038
  %6083 = call i1 @nyx_string_equals(%nyx_string* %6081, %nyx_string* %6082)
  br i1 %6083, label %then1043, label %else1044
then1043:
  store i1 1, i1* %5996
  br label %merge1045
else1044:
  %6084 = load %nyx_string*, %nyx_string** %6075
  %6085 = load %nyx_string*, %nyx_string** %6041
  %6086 = call i1 @nyx_string_equals(%nyx_string* %6084, %nyx_string* %6085)
  br i1 %6086, label %then1046, label %else1047
then1046:
  %6087 = load %nyx_string*, %nyx_string** %6044
  %6088 = alloca %nyx_string*
  store %nyx_string* %6087, %nyx_string** %6088
  %6089 = load i64, i64* %6011
  %6090 = add i64 %6089, 1
  %6091 = load { i64, i8* }*, { i64, i8* }** %5992
  %6092 = call i64 @nyx_array_length({ i64, i8* }* %6091)
  %6093 = icmp slt i64 %6090, %6092
  br i1 %6093, label %then1049, label %else1050
then1049:
  %6094 = load { i64, i8* }*, { i64, i8* }** %5992
  %6095 = load i64, i64* %6011
  %6096 = add i64 %6095, 1
  %6097 = call i64 @nyx_array_get_checked({ i64, i8* }* %6094, i64 %6096, i64 2)
  %6098 = inttoptr i64 %6097 to %nyx_string*
  %6099 = alloca %nyx_string*
  store %nyx_string* %6098, %nyx_string** %6099
  %6100 = load %nyx_string*, %nyx_string** %6099
  %6101 = load %nyx_string*, %nyx_string** %6035
  %6102 = call i1 @nyx_string_starts_with(%nyx_string* %6100, %nyx_string* %6101)
  %6103 = xor i1 %6102, true
  br i1 %6103, label %then1052, label %else1053
then1052:
  %6104 = load %nyx_string*, %nyx_string** %6099
  store %nyx_string* %6104, %nyx_string** %6088
  br label %merge1054
else1053:
  br label %merge1054
merge1054:
  br label %merge1051
else1050:
  br label %merge1051
merge1051:
  %6105 = load %nyx_string*, %nyx_string** %6088
  %6106 = load %nyx_string*, %nyx_string** %6044
  %6107 = call i1 @nyx_string_equals(%nyx_string* %6105, %nyx_string* %6106)
  br i1 %6107, label %then1055, label %else1056
then1055:
  %6108 = load %nyx_string*, %nyx_string** %6014
  %6109 = load %nyx_string*, %nyx_string** %6044
  %6110 = call i1 @nyx_string_equals(%nyx_string* %6108, %nyx_string* %6109)
  br i1 %6110, label %then1058, label %else1059
then1058:
  %6111 = load %nyx_string*, %nyx_string** %6047
  store %nyx_string* %6111, %nyx_string** %6014
  br label %merge1060
else1059:
  br label %merge1060
merge1060:
  br label %merge1057
else1056:
  %6112 = load %nyx_string*, %nyx_string** %6088
  store %nyx_string* %6112, %nyx_string** %6002
  %6113 = load i64, i64* %6011
  %6114 = add i64 %6113, 1
  store i64 %6114, i64* %6011
  br label %merge1057
merge1057:
  br label %merge1048
else1047:
  %6115 = alloca i1
  store i1 true, i1* %6115
  %6116 = load %nyx_string*, %nyx_string** %6075
  %6117 = load %nyx_string*, %nyx_string** %6050
  %6118 = call i1 @nyx_string_equals(%nyx_string* %6116, %nyx_string* %6117)
  br i1 %6118, label %sc_or_end1062, label %sc_or_rhs1061
sc_or_rhs1061:
  %6119 = load %nyx_string*, %nyx_string** %6075
  %6120 = load %nyx_string*, %nyx_string** %6053
  %6121 = call i1 @nyx_string_equals(%nyx_string* %6119, %nyx_string* %6120)
  store i1 %6121, i1* %6115
  br label %sc_or_end1062
sc_or_end1062:
  %6122 = load i1, i1* %6115
  br i1 %6122, label %then1063, label %else1064
then1063:
  store i1 1, i1* %6015
  br label %merge1065
else1064:
  %6123 = load %nyx_string*, %nyx_string** %6075
  %6124 = load %nyx_string*, %nyx_string** %6056
  %6125 = call i1 @nyx_string_equals(%nyx_string* %6123, %nyx_string* %6124)
  br i1 %6125, label %then1066, label %else1067
then1066:
  %6126 = load i64, i64* %6011
  %6127 = add i64 %6126, 1
  %6128 = load { i64, i8* }*, { i64, i8* }** %5992
  %6129 = call i64 @nyx_array_length({ i64, i8* }* %6128)
  %6130 = icmp slt i64 %6127, %6129
  br i1 %6130, label %then1069, label %else1070
then1069:
  %6131 = load { i64, i8* }*, { i64, i8* }** %5992
  %6132 = load i64, i64* %6011
  %6133 = add i64 %6132, 1
  %6134 = call i64 @nyx_array_get_checked({ i64, i8* }* %6131, i64 %6133, i64 2)
  %6135 = inttoptr i64 %6134 to %nyx_string*
  %6136 = alloca %nyx_string*
  store %nyx_string* %6135, %nyx_string** %6136
  %6137 = load %nyx_string*, %nyx_string** %6136
  store %nyx_string* %6137, %nyx_string** %5999
  %6138 = load i64, i64* %6011
  %6139 = add i64 %6138, 1
  store i64 %6139, i64* %6011
  br label %merge1071
else1070:
  %6140 = load %nyx_string*, %nyx_string** %6059
  store %nyx_string* %6140, %nyx_string** %6014
  br label %merge1071
merge1071:
  br label %merge1068
else1067:
  %6141 = alloca i1
  store i1 false, i1* %6141
  %6142 = load i1, i1* %6032
  br i1 %6142, label %sc_and_rhs1072, label %sc_and_end1073
sc_and_rhs1072:
  %6143 = load %nyx_string*, %nyx_string** %6075
  %6144 = call i64 @nyx_string_byte_length(%nyx_string* %6143)
  %6145 = icmp sgt i64 %6144, 1
  store i1 %6145, i1* %6141
  br label %sc_and_end1073
sc_and_end1073:
  %6146 = load i1, i1* %6141
  br i1 %6146, label %then1074, label %else1075
then1074:
  %6147 = alloca i1
  store i1 false, i1* %6147
  %6148 = load %nyx_string*, %nyx_string** %6075
  %6149 = call i8 @nyx_string_char_at(%nyx_string* %6148, i64 0)
  %6150 = zext i8 %6149 to i64
  %6151 = getelementptr [1 x i8], [1 x i8]* @.str938, i32 0, i32 0
  %6152 = load i8, i8* %6151
  %6153 = zext i8 %6152 to i64
  %6154 = icmp eq i64 %6150, %6153
  br i1 %6154, label %sc_and_rhs1077, label %sc_and_end1078
sc_and_rhs1077:
  %6155 = load %nyx_string*, %nyx_string** %6014
  %6156 = load %nyx_string*, %nyx_string** %6044
  %6157 = call i1 @nyx_string_equals(%nyx_string* %6155, %nyx_string* %6156)
  store i1 %6157, i1* %6147
  br label %sc_and_end1078
sc_and_end1078:
  %6158 = load i1, i1* %6147
  br i1 %6158, label %then1079, label %else1080
then1079:
  %6159 = load %nyx_string*, %nyx_string** %6062
  %6160 = load %nyx_string*, %nyx_string** %5995
  %6161 = call %nyx_string* @nyx_string_concat(%nyx_string* %6159, %nyx_string* %6160)
  %6162 = load %nyx_string*, %nyx_string** %6065
  %6163 = call %nyx_string* @nyx_string_concat(%nyx_string* %6161, %nyx_string* %6162)
  %6164 = load %nyx_string*, %nyx_string** %6075
  %6165 = call %nyx_string* @nyx_string_concat(%nyx_string* %6163, %nyx_string* %6164)
  store %nyx_string* %6165, %nyx_string** %6014
  br label %merge1081
else1080:
  br label %merge1081
merge1081:
  br label %merge1076
else1075:
  br label %merge1076
merge1076:
  br label %merge1068
merge1068:
  br label %merge1065
merge1065:
  br label %merge1048
merge1048:
  br label %merge1045
merge1045:
  br label %merge1042
merge1042:
  %6166 = load i64, i64* %6011
  %6167 = add i64 %6166, 1
  store i64 %6167, i64* %6011
  br label %while_cond1037
while_end1039:
  %6168 = alloca i1
  store i1 false, i1* %6168
  %6169 = load i1, i1* %6015
  br i1 %6169, label %sc_and_rhs1082, label %sc_and_end1083
sc_and_rhs1082:
  %6170 = load i1, i1* %6032
  store i1 %6170, i1* %6168
  br label %sc_and_end1083
sc_and_end1083:
  %6171 = load i1, i1* %6168
  br i1 %6171, label %then1084, label %else1085
then1084:
  %6172 = getelementptr [5 x i8], [5 x i8]* @.str939, i32 0, i32 0
  %6173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %6172, i64 4)
  %6174 = load %nyx_string*, %nyx_string** %5995
  %6175 = call %nyx_string* @nyx_string_concat(%nyx_string* %6173, %nyx_string* %6174)
  %6176 = getelementptr [24 x i8], [24 x i8]* @.str940, i32 0, i32 0
  %6177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %6176, i64 23)
  %6178 = call %nyx_string* @nyx_string_concat(%nyx_string* %6175, %nyx_string* %6177)
  %6179 = call i8* @nyx_string_to_cstr(%nyx_string* %6178)
  call void @nyx_print_string(i8* %6179)
  %6180 = getelementptr [42 x i8], [42 x i8]* @.str941, i32 0, i32 0
  %6181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %6180, i64 41)
  %6182 = call i8* @nyx_string_to_cstr(%nyx_string* %6181)
  call void @nyx_print_string(i8* %6182)
  %6183 = getelementptr [88 x i8], [88 x i8]* @.str942, i32 0, i32 0
  %6184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %6183, i64 87)
  %6185 = call i8* @nyx_string_to_cstr(%nyx_string* %6184)
  call void @nyx_print_string(i8* %6185)
  %6186 = getelementptr [94 x i8], [94 x i8]* @.str943, i32 0, i32 0
  %6187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %6186, i64 93)
  %6188 = call i8* @nyx_string_to_cstr(%nyx_string* %6187)
  call void @nyx_print_string(i8* %6188)
  %6189 = getelementptr [94 x i8], [94 x i8]* @.str944, i32 0, i32 0
  %6190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %6189, i64 93)
  %6191 = call i8* @nyx_string_to_cstr(%nyx_string* %6190)
  call void @nyx_print_string(i8* %6191)
  %6192 = getelementptr [34 x i8], [34 x i8]* @.str945, i32 0, i32 0
  %6193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %6192, i64 33)
  %6194 = call i8* @nyx_string_to_cstr(%nyx_string* %6193)
  call void @nyx_print_string(i8* %6194)
  %6195 = getelementptr [1 x i8], [1 x i8]* @.str946, i32 0, i32 0
  %6196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %6195, i64 0)
  %6197 = call i8* @nyx_string_to_cstr(%nyx_string* %6196)
  call void @nyx_print_string(i8* %6197)
  %6198 = getelementptr [71 x i8], [71 x i8]* @.str947, i32 0, i32 0
  %6199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %6198, i64 70)
  %6200 = call i8* @nyx_string_to_cstr(%nyx_string* %6199)
  call void @nyx_print_string(i8* %6200)
  ret i64 0
else1085:
  br label %merge1086
merge1086:
  %6201 = load %nyx_string*, %nyx_string** %6014
  %6202 = getelementptr [1 x i8], [1 x i8]* @.str948, i32 0, i32 0
  %6203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %6202, i64 0)
  %6204 = call i1 @nyx_string_equals(%nyx_string* %6201, %nyx_string* %6203)
  %6205 = xor i1 %6204, true
  br i1 %6205, label %then1087, label %else1088
then1087:
  %6206 = getelementptr [8 x i8], [8 x i8]* @.str949, i32 0, i32 0
  %6207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %6206, i64 7)
  %6208 = load %nyx_string*, %nyx_string** %6014
  %6209 = call %nyx_string* @nyx_string_concat(%nyx_string* %6207, %nyx_string* %6208)
  %6210 = call i8* @nyx_string_to_cstr(%nyx_string* %6209)
  call void @nyx_print_string(i8* %6210)
  %6211 = getelementptr [8 x i8], [8 x i8]* @.str950, i32 0, i32 0
  %6212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %6211, i64 7)
  %6213 = load %nyx_string*, %nyx_string** %5995
  %6214 = call %nyx_string* @nyx_string_concat(%nyx_string* %6212, %nyx_string* %6213)
  %6215 = getelementptr [37 x i8], [37 x i8]* @.str951, i32 0, i32 0
  %6216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %6215, i64 36)
  %6217 = call %nyx_string* @nyx_string_concat(%nyx_string* %6214, %nyx_string* %6216)
  %6218 = call i8* @nyx_string_to_cstr(%nyx_string* %6217)
  call void @nyx_print_string(i8* %6218)
  ret i64 1
else1088:
  br label %merge1089
merge1089:
  %6219 = getelementptr [6 x i8], [6 x i8]* @.str952, i32 0, i32 0
  %6220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %6219, i64 5)
  %6221 = call %nyx_string* @toolchain_version()
  %6222 = call %nyx_string* @nyx_string_concat(%nyx_string* %6220, %nyx_string* %6221)
  %6223 = getelementptr [6 x i8], [6 x i8]* @.str953, i32 0, i32 0
  %6224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %6223, i64 5)
  %6225 = call %nyx_string* @nyx_string_concat(%nyx_string* %6222, %nyx_string* %6224)
  %6226 = load %nyx_string*, %nyx_string** %5995
  %6227 = call %nyx_string* @nyx_string_concat(%nyx_string* %6225, %nyx_string* %6226)
  %6228 = call i8* @nyx_string_to_cstr(%nyx_string* %6227)
  call void @nyx_print_string(i8* %6228)
  %6229 = load %nyx_string*, %nyx_string** %5995
  %6230 = getelementptr [5 x i8], [5 x i8]* @.str954, i32 0, i32 0
  %6231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %6230, i64 4)
  %6232 = call i1 @nyx_string_equals(%nyx_string* %6229, %nyx_string* %6231)
  br i1 %6232, label %then1090, label %else1091
then1090:
  %6233 = getelementptr [1 x i8], [1 x i8]* @.str955, i32 0, i32 0
  %6234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %6233, i64 0)
  %6235 = alloca %nyx_string*
  store %nyx_string* %6234, %nyx_string** %6235
  %6236 = getelementptr [1 x i8], [1 x i8]* @.str956, i32 0, i32 0
  %6237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %6236, i64 0)
  %6238 = alloca %nyx_string*
  store %nyx_string* %6237, %nyx_string** %6238
  %6239 = getelementptr [1 x i8], [1 x i8]* @.str957, i32 0, i32 0
  %6240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %6239, i64 0)
  %6241 = alloca %nyx_string*
  store %nyx_string* %6240, %nyx_string** %6241
  %6242 = alloca i1
  store i1 0, i1* %6242
  %6243 = getelementptr [1 x i8], [1 x i8]* @.str958, i32 0, i32 0
  %6244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %6243, i64 0)
  %6245 = alloca %nyx_string*
  store %nyx_string* %6244, %nyx_string** %6245
  %6246 = getelementptr [1 x i8], [1 x i8]* @.str959, i32 0, i32 0
  %6247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %6246, i64 0)
  %6248 = alloca %nyx_string*
  store %nyx_string* %6247, %nyx_string** %6248
  %6249 = alloca i64
  store i64 2, i64* %6249
  %6250 = getelementptr [7 x i8], [7 x i8]* @.str960, i32 0, i32 0
  %6251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %6250, i64 6)
  %6252 = alloca %nyx_string*
  store %nyx_string* %6251, %nyx_string** %6252
  %6253 = getelementptr [8 x i8], [8 x i8]* @.str961, i32 0, i32 0
  %6254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %6253, i64 7)
  %6255 = alloca %nyx_string*
  store %nyx_string* %6254, %nyx_string** %6255
  %6256 = getelementptr [1 x i8], [1 x i8]* @.str962, i32 0, i32 0
  %6257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %6256, i64 0)
  %6258 = alloca %nyx_string*
  store %nyx_string* %6257, %nyx_string** %6258
  %6259 = getelementptr [3 x i8], [3 x i8]* @.str963, i32 0, i32 0
  %6260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %6259, i64 2)
  %6261 = alloca %nyx_string*
  store %nyx_string* %6260, %nyx_string** %6261
  %6262 = getelementptr [8 x i8], [8 x i8]* @.str964, i32 0, i32 0
  %6263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %6262, i64 7)
  %6264 = alloca %nyx_string*
  store %nyx_string* %6263, %nyx_string** %6264
  %6265 = getelementptr [9 x i8], [9 x i8]* @.str965, i32 0, i32 0
  %6266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %6265, i64 8)
  %6267 = alloca %nyx_string*
  store %nyx_string* %6266, %nyx_string** %6267
  %6268 = getelementptr [6 x i8], [6 x i8]* @.str966, i32 0, i32 0
  %6269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %6268, i64 5)
  %6270 = alloca %nyx_string*
  store %nyx_string* %6269, %nyx_string** %6270
  %6271 = call i8* @llvm.stacksave()
  br label %while_cond1093
while_cond1093:
  %6272 = load i64, i64* %6249
  %6273 = load { i64, i8* }*, { i64, i8* }** %5992
  %6274 = call i64 @nyx_array_length({ i64, i8* }* %6273)
  %6275 = icmp slt i64 %6272, %6274
  br i1 %6275, label %while_body1094, label %while_end1095
while_body1094:
  call void @llvm.stackrestore(i8* %6271)
  %6276 = load { i64, i8* }*, { i64, i8* }** %5992
  %6277 = load i64, i64* %6249
  %6278 = call i64 @nyx_array_get_checked({ i64, i8* }* %6276, i64 %6277, i64 2)
  %6279 = inttoptr i64 %6278 to %nyx_string*
  %6280 = alloca %nyx_string*
  store %nyx_string* %6279, %nyx_string** %6280
  %6281 = alloca i1
  store i1 0, i1* %6281
  %6282 = alloca i1
  store i1 true, i1* %6282
  %6283 = load %nyx_string*, %nyx_string** %6280
  %6284 = load %nyx_string*, %nyx_string** %6252
  %6285 = call i1 @nyx_string_equals(%nyx_string* %6283, %nyx_string* %6284)
  br i1 %6285, label %sc_or_end1097, label %sc_or_rhs1096
sc_or_rhs1096:
  %6286 = load %nyx_string*, %nyx_string** %6280
  %6287 = load %nyx_string*, %nyx_string** %6255
  %6288 = call i1 @nyx_string_equals(%nyx_string* %6286, %nyx_string* %6287)
  store i1 %6288, i1* %6282
  br label %sc_or_end1097
sc_or_end1097:
  %6289 = load i1, i1* %6282
  br i1 %6289, label %then1098, label %else1099
then1098:
  store i1 1, i1* %6281
  %6290 = load %nyx_string*, %nyx_string** %6258
  %6291 = alloca %nyx_string*
  store %nyx_string* %6290, %nyx_string** %6291
  %6292 = load i64, i64* %6249
  %6293 = add i64 %6292, 1
  %6294 = load { i64, i8* }*, { i64, i8* }** %5992
  %6295 = call i64 @nyx_array_length({ i64, i8* }* %6294)
  %6296 = icmp slt i64 %6293, %6295
  br i1 %6296, label %then1101, label %else1102
then1101:
  %6297 = load { i64, i8* }*, { i64, i8* }** %5992
  %6298 = load i64, i64* %6249
  %6299 = add i64 %6298, 1
  %6300 = call i64 @nyx_array_get_checked({ i64, i8* }* %6297, i64 %6299, i64 2)
  %6301 = inttoptr i64 %6300 to %nyx_string*
  %6302 = alloca %nyx_string*
  store %nyx_string* %6301, %nyx_string** %6302
  %6303 = load %nyx_string*, %nyx_string** %6302
  %6304 = load %nyx_string*, %nyx_string** %6261
  %6305 = call i1 @nyx_string_starts_with(%nyx_string* %6303, %nyx_string* %6304)
  %6306 = icmp eq i1 %6305, 0
  br i1 %6306, label %then1104, label %else1105
then1104:
  %6307 = load %nyx_string*, %nyx_string** %6302
  store %nyx_string* %6307, %nyx_string** %6291
  br label %merge1106
else1105:
  br label %merge1106
merge1106:
  br label %merge1103
else1102:
  br label %merge1103
merge1103:
  %6308 = load %nyx_string*, %nyx_string** %6291
  %6309 = load %nyx_string*, %nyx_string** %6258
  %6310 = call i1 @nyx_string_equals(%nyx_string* %6308, %nyx_string* %6309)
  br i1 %6310, label %then1107, label %else1108
then1107:
  %6311 = load %nyx_string*, %nyx_string** %6280
  store %nyx_string* %6311, %nyx_string** %6248
  br label %merge1109
else1108:
  %6312 = load %nyx_string*, %nyx_string** %6280
  %6313 = load %nyx_string*, %nyx_string** %6252
  %6314 = call i1 @nyx_string_equals(%nyx_string* %6312, %nyx_string* %6313)
  br i1 %6314, label %then1110, label %else1111
then1110:
  %6315 = load %nyx_string*, %nyx_string** %6291
  store %nyx_string* %6315, %nyx_string** %6238
  br label %merge1112
else1111:
  br label %merge1112
merge1112:
  %6316 = load %nyx_string*, %nyx_string** %6280
  %6317 = load %nyx_string*, %nyx_string** %6255
  %6318 = call i1 @nyx_string_equals(%nyx_string* %6316, %nyx_string* %6317)
  br i1 %6318, label %then1113, label %else1114
then1113:
  %6319 = load %nyx_string*, %nyx_string** %6291
  store %nyx_string* %6319, %nyx_string** %6241
  br label %merge1115
else1114:
  br label %merge1115
merge1115:
  %6320 = load i64, i64* %6249
  %6321 = add i64 %6320, 1
  store i64 %6321, i64* %6249
  br label %merge1109
merge1109:
  br label %merge1100
else1099:
  br label %merge1100
merge1100:
  %6322 = alloca i1
  store i1 false, i1* %6322
  %6323 = load i1, i1* %6281
  %6324 = icmp eq i1 %6323, 0
  br i1 %6324, label %sc_and_rhs1116, label %sc_and_end1117
sc_and_rhs1116:
  %6325 = load %nyx_string*, %nyx_string** %6280
  %6326 = load %nyx_string*, %nyx_string** %6264
  %6327 = call i1 @nyx_string_starts_with(%nyx_string* %6325, %nyx_string* %6326)
  store i1 %6327, i1* %6322
  br label %sc_and_end1117
sc_and_end1117:
  %6328 = load i1, i1* %6322
  br i1 %6328, label %then1118, label %else1119
then1118:
  store i1 1, i1* %6281
  %6329 = load %nyx_string*, %nyx_string** %6280
  %6330 = load %nyx_string*, %nyx_string** %6280
  %6331 = call i64 @nyx_string_byte_length(%nyx_string* %6330)
  %6332 = call %nyx_string* @nyx_string_substring(%nyx_string* %6329, i64 7, i64 %6331)
  store %nyx_string* %6332, %nyx_string** %6238
  %6333 = load %nyx_string*, %nyx_string** %6238
  %6334 = load %nyx_string*, %nyx_string** %6258
  %6335 = call i1 @nyx_string_equals(%nyx_string* %6333, %nyx_string* %6334)
  br i1 %6335, label %then1121, label %else1122
then1121:
  %6336 = load %nyx_string*, %nyx_string** %6252
  store %nyx_string* %6336, %nyx_string** %6248
  br label %merge1123
else1122:
  br label %merge1123
merge1123:
  br label %merge1120
else1119:
  br label %merge1120
merge1120:
  %6337 = alloca i1
  store i1 false, i1* %6337
  %6338 = load i1, i1* %6281
  %6339 = icmp eq i1 %6338, 0
  br i1 %6339, label %sc_and_rhs1124, label %sc_and_end1125
sc_and_rhs1124:
  %6340 = load %nyx_string*, %nyx_string** %6280
  %6341 = load %nyx_string*, %nyx_string** %6267
  %6342 = call i1 @nyx_string_starts_with(%nyx_string* %6340, %nyx_string* %6341)
  store i1 %6342, i1* %6337
  br label %sc_and_end1125
sc_and_end1125:
  %6343 = load i1, i1* %6337
  br i1 %6343, label %then1126, label %else1127
then1126:
  store i1 1, i1* %6281
  %6344 = load %nyx_string*, %nyx_string** %6280
  %6345 = load %nyx_string*, %nyx_string** %6280
  %6346 = call i64 @nyx_string_byte_length(%nyx_string* %6345)
  %6347 = call %nyx_string* @nyx_string_substring(%nyx_string* %6344, i64 8, i64 %6346)
  store %nyx_string* %6347, %nyx_string** %6241
  %6348 = load %nyx_string*, %nyx_string** %6241
  %6349 = load %nyx_string*, %nyx_string** %6258
  %6350 = call i1 @nyx_string_equals(%nyx_string* %6348, %nyx_string* %6349)
  br i1 %6350, label %then1129, label %else1130
then1129:
  %6351 = load %nyx_string*, %nyx_string** %6255
  store %nyx_string* %6351, %nyx_string** %6248
  br label %merge1131
else1130:
  br label %merge1131
merge1131:
  br label %merge1128
else1127:
  br label %merge1128
merge1128:
  %6352 = alloca i1
  store i1 false, i1* %6352
  %6353 = load i1, i1* %6281
  %6354 = icmp eq i1 %6353, 0
  br i1 %6354, label %sc_and_rhs1132, label %sc_and_end1133
sc_and_rhs1132:
  %6355 = load %nyx_string*, %nyx_string** %6280
  %6356 = load %nyx_string*, %nyx_string** %6270
  %6357 = call i1 @nyx_string_equals(%nyx_string* %6355, %nyx_string* %6356)
  store i1 %6357, i1* %6352
  br label %sc_and_end1133
sc_and_end1133:
  %6358 = load i1, i1* %6352
  br i1 %6358, label %then1134, label %else1135
then1134:
  store i1 1, i1* %6281
  store i1 1, i1* %6242
  br label %merge1136
else1135:
  br label %merge1136
merge1136:
  %6359 = alloca i1
  store i1 false, i1* %6359
  %6360 = load i1, i1* %6281
  %6361 = icmp eq i1 %6360, 0
  br i1 %6361, label %sc_and_rhs1137, label %sc_and_end1138
sc_and_rhs1137:
  %6362 = load %nyx_string*, %nyx_string** %6280
  %6363 = load %nyx_string*, %nyx_string** %6261
  %6364 = call i1 @nyx_string_starts_with(%nyx_string* %6362, %nyx_string* %6363)
  store i1 %6364, i1* %6359
  br label %sc_and_end1138
sc_and_end1138:
  %6365 = load i1, i1* %6359
  br i1 %6365, label %then1139, label %else1140
then1139:
  store i1 1, i1* %6281
  %6366 = load %nyx_string*, %nyx_string** %6280
  store %nyx_string* %6366, %nyx_string** %6245
  br label %merge1141
else1140:
  br label %merge1141
merge1141:
  %6367 = load i1, i1* %6281
  %6368 = icmp eq i1 %6367, 0
  br i1 %6368, label %then1142, label %else1143
then1142:
  %6369 = load %nyx_string*, %nyx_string** %6235
  %6370 = load %nyx_string*, %nyx_string** %6258
  %6371 = call i1 @nyx_string_equals(%nyx_string* %6369, %nyx_string* %6370)
  br i1 %6371, label %then1145, label %else1146
then1145:
  %6372 = load %nyx_string*, %nyx_string** %6280
  store %nyx_string* %6372, %nyx_string** %6235
  br label %merge1147
else1146:
  br label %merge1147
merge1147:
  br label %merge1144
else1143:
  br label %merge1144
merge1144:
  %6373 = load i64, i64* %6249
  %6374 = add i64 %6373, 1
  store i64 %6374, i64* %6249
  br label %while_cond1093
while_end1095:
  %6375 = load %nyx_string*, %nyx_string** %6245
  %6376 = getelementptr [1 x i8], [1 x i8]* @.str967, i32 0, i32 0
  %6377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %6376, i64 0)
  %6378 = call i1 @nyx_string_equals(%nyx_string* %6375, %nyx_string* %6377)
  %6379 = xor i1 %6378, true
  br i1 %6379, label %then1148, label %else1149
then1148:
  %6380 = getelementptr [42 x i8], [42 x i8]* @.str968, i32 0, i32 0
  %6381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %6380, i64 41)
  %6382 = load %nyx_string*, %nyx_string** %6245
  %6383 = call %nyx_string* @nyx_string_concat(%nyx_string* %6381, %nyx_string* %6382)
  %6384 = call i8* @nyx_string_to_cstr(%nyx_string* %6383)
  call void @nyx_print_string(i8* %6384)
  %6385 = getelementptr [80 x i8], [80 x i8]* @.str969, i32 0, i32 0
  %6386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %6385, i64 79)
  %6387 = call i8* @nyx_string_to_cstr(%nyx_string* %6386)
  call void @nyx_print_string(i8* %6387)
  ret i64 1
else1149:
  br label %merge1150
merge1150:
  %6388 = load %nyx_string*, %nyx_string** %6248
  %6389 = getelementptr [1 x i8], [1 x i8]* @.str970, i32 0, i32 0
  %6390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %6389, i64 0)
  %6391 = call i1 @nyx_string_equals(%nyx_string* %6388, %nyx_string* %6390)
  %6392 = xor i1 %6391, true
  br i1 %6392, label %then1151, label %else1152
then1151:
  %6393 = getelementptr [8 x i8], [8 x i8]* @.str971, i32 0, i32 0
  %6394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %6393, i64 7)
  %6395 = load %nyx_string*, %nyx_string** %6248
  %6396 = call %nyx_string* @nyx_string_concat(%nyx_string* %6394, %nyx_string* %6395)
  %6397 = getelementptr [19 x i8], [19 x i8]* @.str972, i32 0, i32 0
  %6398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %6397, i64 18)
  %6399 = call %nyx_string* @nyx_string_concat(%nyx_string* %6396, %nyx_string* %6398)
  %6400 = call i8* @nyx_string_to_cstr(%nyx_string* %6399)
  call void @nyx_print_string(i8* %6400)
  %6401 = getelementptr [80 x i8], [80 x i8]* @.str973, i32 0, i32 0
  %6402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %6401, i64 79)
  %6403 = call i8* @nyx_string_to_cstr(%nyx_string* %6402)
  call void @nyx_print_string(i8* %6403)
  ret i64 1
else1152:
  br label %merge1153
merge1153:
  %6404 = load %nyx_string*, %nyx_string** %6238
  %6405 = getelementptr [1 x i8], [1 x i8]* @.str974, i32 0, i32 0
  %6406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %6405, i64 0)
  %6407 = call i1 @nyx_string_equals(%nyx_string* %6404, %nyx_string* %6406)
  br i1 %6407, label %then1154, label %else1155
then1154:
  %6408 = getelementptr [9 x i8], [9 x i8]* @.str975, i32 0, i32 0
  %6409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %6408, i64 8)
  %6410 = call i8* @nyx_string_to_cstr(%nyx_string* %6409)
  %6411 = call %nyx_string* @nyx_getenv(i8* %6410)
  %6412 = alloca %nyx_string*
  store %nyx_string* %6411, %nyx_string** %6412
  %6413 = load %nyx_string*, %nyx_string** %6412
  %6414 = getelementptr [3 x i8], [3 x i8]* @.str976, i32 0, i32 0
  %6415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %6414, i64 2)
  %6416 = call i1 @nyx_string_equals(%nyx_string* %6413, %nyx_string* %6415)
  br i1 %6416, label %then1157, label %else1158
then1157:
  %6417 = getelementptr [3 x i8], [3 x i8]* @.str977, i32 0, i32 0
  %6418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %6417, i64 2)
  store %nyx_string* %6418, %nyx_string** %6238
  br label %merge1159
else1158:
  br label %merge1159
merge1159:
  %6419 = load %nyx_string*, %nyx_string** %6238
  %6420 = getelementptr [1 x i8], [1 x i8]* @.str978, i32 0, i32 0
  %6421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %6420, i64 0)
  %6422 = call i1 @nyx_string_equals(%nyx_string* %6419, %nyx_string* %6421)
  br i1 %6422, label %then1160, label %else1161
then1160:
  %6423 = getelementptr [3 x i8], [3 x i8]* @.str979, i32 0, i32 0
  %6424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %6423, i64 2)
  store %nyx_string* %6424, %nyx_string** %6238
  br label %merge1162
else1161:
  br label %merge1162
merge1162:
  br label %merge1156
else1155:
  br label %merge1156
merge1156:
  %6425 = alloca i1
  store i1 false, i1* %6425
  %6426 = load %nyx_string*, %nyx_string** %6238
  %6427 = getelementptr [3 x i8], [3 x i8]* @.str980, i32 0, i32 0
  %6428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %6427, i64 2)
  %6429 = call i1 @nyx_string_equals(%nyx_string* %6426, %nyx_string* %6428)
  %6430 = xor i1 %6429, true
  br i1 %6430, label %sc_and_rhs1163, label %sc_and_end1164
sc_and_rhs1163:
  %6431 = load %nyx_string*, %nyx_string** %6238
  %6432 = getelementptr [3 x i8], [3 x i8]* @.str981, i32 0, i32 0
  %6433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %6432, i64 2)
  %6434 = call i1 @nyx_string_equals(%nyx_string* %6431, %nyx_string* %6433)
  %6435 = xor i1 %6434, true
  store i1 %6435, i1* %6425
  br label %sc_and_end1164
sc_and_end1164:
  %6436 = load i1, i1* %6425
  br i1 %6436, label %then1165, label %else1166
then1165:
  %6437 = getelementptr [27 x i8], [27 x i8]* @.str982, i32 0, i32 0
  %6438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %6437, i64 26)
  %6439 = load %nyx_string*, %nyx_string** %6238
  %6440 = call %nyx_string* @nyx_string_concat(%nyx_string* %6438, %nyx_string* %6439)
  %6441 = getelementptr [29 x i8], [29 x i8]* @.str983, i32 0, i32 0
  %6442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %6441, i64 28)
  %6443 = call %nyx_string* @nyx_string_concat(%nyx_string* %6440, %nyx_string* %6442)
  %6444 = call i8* @nyx_string_to_cstr(%nyx_string* %6443)
  call void @nyx_print_string(i8* %6444)
  ret i64 1
else1166:
  br label %merge1167
merge1167:
  %6445 = load %nyx_string*, %nyx_string** %6241
  %6446 = call i1 @validate_agents(%nyx_string* %6445)
  %6447 = icmp eq i1 %6446, 0
  br i1 %6447, label %then1168, label %else1169
then1168:
  ret i64 1
else1169:
  br label %merge1170
merge1170:
  %6448 = load %nyx_string*, %nyx_string** %6235
  %6449 = load %nyx_string*, %nyx_string** %6238
  %6450 = load %nyx_string*, %nyx_string** %6241
  %6451 = call i1 @run_init(%nyx_string* %6448, %nyx_string* %6449, %nyx_string* %6450)
  %6452 = alloca i1
  store i1 %6451, i1* %6452
  %6453 = load i1, i1* %6452
  %6454 = icmp eq i1 %6453, 0
  br i1 %6454, label %then1171, label %else1172
then1171:
  ret i64 1
else1172:
  br label %merge1173
merge1173:
  %6455 = load i1, i1* %6242
  br i1 %6455, label %then1174, label %else1175
then1174:
  %6456 = load %nyx_string*, %nyx_string** %6235
  %6457 = alloca %nyx_string*
  store %nyx_string* %6456, %nyx_string** %6457
  %6458 = load %nyx_string*, %nyx_string** %6457
  %6459 = getelementptr [1 x i8], [1 x i8]* @.str984, i32 0, i32 0
  %6460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %6459, i64 0)
  %6461 = call i1 @nyx_string_equals(%nyx_string* %6458, %nyx_string* %6460)
  br i1 %6461, label %then1177, label %else1178
then1177:
  %6462 = getelementptr [2 x i8], [2 x i8]* @.str985, i32 0, i32 0
  %6463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %6462, i64 1)
  store %nyx_string* %6463, %nyx_string** %6457
  br label %merge1179
else1178:
  br label %merge1179
merge1179:
  %6464 = getelementptr [1 x i8], [1 x i8]* @.str986, i32 0, i32 0
  %6465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %6464, i64 0)
  %6466 = call i8* @nyx_string_to_cstr(%nyx_string* %6465)
  call void @nyx_print_string(i8* %6466)
  %6467 = load %nyx_string*, %nyx_string** %6457
  %6468 = load %nyx_string*, %nyx_string** %6238
  %6469 = call i1 @run_sdd_init(%nyx_string* %6467, %nyx_string* %6468)
  %6470 = alloca i1
  store i1 %6469, i1* %6470
  %6471 = load i1, i1* %6470
  %6472 = icmp eq i1 %6471, 0
  br i1 %6472, label %then1180, label %else1181
then1180:
  ret i64 1
else1181:
  br label %merge1182
merge1182:
  br label %merge1176
else1175:
  br label %merge1176
merge1176:
  ret i64 0
else1091:
  br label %merge1092
merge1092:
  %6473 = load %nyx_string*, %nyx_string** %5995
  %6474 = getelementptr [4 x i8], [4 x i8]* @.str987, i32 0, i32 0
  %6475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %6474, i64 3)
  %6476 = call i1 @nyx_string_equals(%nyx_string* %6473, %nyx_string* %6475)
  br i1 %6476, label %then1183, label %else1184
then1183:
  %6477 = getelementptr [1 x i8], [1 x i8]* @.str988, i32 0, i32 0
  %6478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %6477, i64 0)
  %6479 = alloca %nyx_string*
  store %nyx_string* %6478, %nyx_string** %6479
  %6480 = load { i64, i8* }*, { i64, i8* }** %5992
  %6481 = call i64 @nyx_array_length({ i64, i8* }* %6480)
  %6482 = icmp sge i64 %6481, 3
  br i1 %6482, label %then1186, label %else1187
then1186:
  %6483 = load { i64, i8* }*, { i64, i8* }** %5992
  %6484 = call i64 @nyx_array_get_checked({ i64, i8* }* %6483, i64 2, i64 2)
  %6485 = inttoptr i64 %6484 to %nyx_string*
  %6486 = alloca %nyx_string*
  store %nyx_string* %6485, %nyx_string** %6486
  %6487 = load %nyx_string*, %nyx_string** %6486
  store %nyx_string* %6487, %nyx_string** %6479
  br label %merge1188
else1187:
  br label %merge1188
merge1188:
  %6488 = load %nyx_string*, %nyx_string** %6479
  %6489 = getelementptr [5 x i8], [5 x i8]* @.str989, i32 0, i32 0
  %6490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %6489, i64 4)
  %6491 = call i1 @nyx_string_equals(%nyx_string* %6488, %nyx_string* %6490)
  br i1 %6491, label %then1189, label %else1190
then1189:
  %6492 = getelementptr [2 x i8], [2 x i8]* @.str990, i32 0, i32 0
  %6493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %6492, i64 1)
  %6494 = getelementptr [2 x i8], [2 x i8]* @.str991, i32 0, i32 0
  %6495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %6494, i64 1)
  %6496 = call %nyx_string* @project_lang(%nyx_string* %6495)
  %6497 = call i1 @run_sdd_init(%nyx_string* %6493, %nyx_string* %6496)
  %6498 = alloca i1
  store i1 %6497, i1* %6498
  %6499 = load i1, i1* %6498
  br i1 %6499, label %then1192, label %else1193
then1192:
  ret i64 0
else1193:
  br label %merge1194
merge1194:
  ret i64 1
else1190:
  br label %merge1191
merge1191:
  %6500 = load %nyx_string*, %nyx_string** %6479
  %6501 = getelementptr [9 x i8], [9 x i8]* @.str992, i32 0, i32 0
  %6502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %6501, i64 8)
  %6503 = call i1 @nyx_string_equals(%nyx_string* %6500, %nyx_string* %6502)
  br i1 %6503, label %then1195, label %else1196
then1195:
  %6504 = getelementptr [2 x i8], [2 x i8]* @.str993, i32 0, i32 0
  %6505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %6504, i64 1)
  %6506 = getelementptr [2 x i8], [2 x i8]* @.str994, i32 0, i32 0
  %6507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %6506, i64 1)
  %6508 = call %nyx_string* @project_lang(%nyx_string* %6507)
  %6509 = call i1 @run_sdd_evidence(%nyx_string* %6505, %nyx_string* %6508)
  %6510 = alloca i1
  store i1 %6509, i1* %6510
  %6511 = load i1, i1* %6510
  br i1 %6511, label %then1198, label %else1199
then1198:
  ret i64 0
else1199:
  br label %merge1200
merge1200:
  ret i64 1
else1196:
  br label %merge1197
merge1197:
  %6512 = load %nyx_string*, %nyx_string** %6479
  %6513 = getelementptr [1 x i8], [1 x i8]* @.str995, i32 0, i32 0
  %6514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %6513, i64 0)
  %6515 = call i1 @nyx_string_equals(%nyx_string* %6512, %nyx_string* %6514)
  br i1 %6515, label %then1201, label %else1202
then1201:
  %6516 = getelementptr [57 x i8], [57 x i8]* @.str996, i32 0, i32 0
  %6517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %6516, i64 56)
  %6518 = call i8* @nyx_string_to_cstr(%nyx_string* %6517)
  call void @nyx_print_string(i8* %6518)
  br label %merge1203
else1202:
  %6519 = getelementptr [48 x i8], [48 x i8]* @.str997, i32 0, i32 0
  %6520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %6519, i64 47)
  %6521 = load %nyx_string*, %nyx_string** %6479
  %6522 = call %nyx_string* @nyx_string_concat(%nyx_string* %6520, %nyx_string* %6521)
  %6523 = getelementptr [29 x i8], [29 x i8]* @.str998, i32 0, i32 0
  %6524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %6523, i64 28)
  %6525 = call %nyx_string* @nyx_string_concat(%nyx_string* %6522, %nyx_string* %6524)
  %6526 = call i8* @nyx_string_to_cstr(%nyx_string* %6525)
  call void @nyx_print_string(i8* %6526)
  br label %merge1203
merge1203:
  %6527 = getelementptr [69 x i8], [69 x i8]* @.str999, i32 0, i32 0
  %6528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %6527, i64 68)
  %6529 = call i8* @nyx_string_to_cstr(%nyx_string* %6528)
  call void @nyx_print_string(i8* %6529)
  %6530 = getelementptr [79 x i8], [79 x i8]* @.str1000, i32 0, i32 0
  %6531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %6530, i64 78)
  %6532 = call i8* @nyx_string_to_cstr(%nyx_string* %6531)
  call void @nyx_print_string(i8* %6532)
  ret i64 1
else1184:
  br label %merge1185
merge1185:
  %6533 = load %nyx_string*, %nyx_string** %5995
  %6534 = getelementptr [4 x i8], [4 x i8]* @.str1001, i32 0, i32 0
  %6535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %6534, i64 3)
  %6536 = call i1 @nyx_string_equals(%nyx_string* %6533, %nyx_string* %6535)
  br i1 %6536, label %then1204, label %else1205
then1204:
  %6537 = load { i64, i8* }*, { i64, i8* }** %5992
  %6538 = call i64 @nyx_array_length({ i64, i8* }* %6537)
  %6539 = icmp slt i64 %6538, 3
  br i1 %6539, label %then1207, label %else1208
then1207:
  %6540 = getelementptr [51 x i8], [51 x i8]* @.str1002, i32 0, i32 0
  %6541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %6540, i64 50)
  %6542 = call i8* @nyx_string_to_cstr(%nyx_string* %6541)
  call void @nyx_print_string(i8* %6542)
  ret i64 1
else1208:
  br label %merge1209
merge1209:
  %6543 = load { i64, i8* }*, { i64, i8* }** %5992
  %6544 = call i64 @nyx_array_get_checked({ i64, i8* }* %6543, i64 2, i64 2)
  %6545 = inttoptr i64 %6544 to %nyx_string*
  %6546 = alloca %nyx_string*
  store %nyx_string* %6545, %nyx_string** %6546
  %6547 = getelementptr [1 x i8], [1 x i8]* @.str1003, i32 0, i32 0
  %6548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %6547, i64 0)
  %6549 = alloca %nyx_string*
  store %nyx_string* %6548, %nyx_string** %6549
  %6550 = load { i64, i8* }*, { i64, i8* }** %5992
  %6551 = call i64 @nyx_array_length({ i64, i8* }* %6550)
  %6552 = icmp sge i64 %6551, 5
  br i1 %6552, label %then1210, label %else1211
then1210:
  %6553 = load { i64, i8* }*, { i64, i8* }** %5992
  %6554 = call i64 @nyx_array_get_checked({ i64, i8* }* %6553, i64 3, i64 2)
  %6555 = inttoptr i64 %6554 to %nyx_string*
  %6556 = alloca %nyx_string*
  store %nyx_string* %6555, %nyx_string** %6556
  %6557 = load %nyx_string*, %nyx_string** %6556
  %6558 = getelementptr [7 x i8], [7 x i8]* @.str1004, i32 0, i32 0
  %6559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %6558, i64 6)
  %6560 = call i1 @nyx_string_equals(%nyx_string* %6557, %nyx_string* %6559)
  br i1 %6560, label %then1213, label %else1214
then1213:
  %6561 = load { i64, i8* }*, { i64, i8* }** %5992
  %6562 = call i64 @nyx_array_get_checked({ i64, i8* }* %6561, i64 4, i64 2)
  %6563 = inttoptr i64 %6562 to %nyx_string*
  %6564 = alloca %nyx_string*
  store %nyx_string* %6563, %nyx_string** %6564
  %6565 = load %nyx_string*, %nyx_string** %6564
  store %nyx_string* %6565, %nyx_string** %6549
  br label %merge1215
else1214:
  br label %merge1215
merge1215:
  br label %merge1212
else1211:
  br label %merge1212
merge1212:
  %6566 = call { i64, i8* }* @nyx_array_new_ptr()
  %6567 = alloca { i64, i8* }*
  store { i64, i8* }* %6566, { i64, i8* }** %6567
  %6568 = call { i64, i8* }* @nyx_array_new_ptr()
  %6569 = alloca { i64, i8* }*
  store { i64, i8* }* %6568, { i64, i8* }** %6569
  %6570 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %6571 = ptrtoint %ProjectConfig* %6570 to i64
  %6572 = call i8* @GC_malloc(i64 %6571)
  %6573 = bitcast i8* %6572 to %ProjectConfig*
  %6574 = getelementptr [8 x i8], [8 x i8]* @.str1005, i32 0, i32 0
  %6575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %6574, i64 7)
  %6576 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 0
  store %nyx_string* %6575, %nyx_string** %6576
  %6577 = getelementptr [6 x i8], [6 x i8]* @.str1006, i32 0, i32 0
  %6578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %6577, i64 5)
  %6579 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 1
  store %nyx_string* %6578, %nyx_string** %6579
  %6580 = getelementptr [1 x i8], [1 x i8]* @.str1007, i32 0, i32 0
  %6581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %6580, i64 0)
  %6582 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 2
  store %nyx_string* %6581, %nyx_string** %6582
  %6583 = getelementptr [1 x i8], [1 x i8]* @.str1008, i32 0, i32 0
  %6584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %6583, i64 0)
  %6585 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 3
  store %nyx_string* %6584, %nyx_string** %6585
  %6586 = getelementptr [1 x i8], [1 x i8]* @.str1009, i32 0, i32 0
  %6587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %6586, i64 0)
  %6588 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 4
  store %nyx_string* %6587, %nyx_string** %6588
  %6589 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 5
  store i1 0, i1* %6589
  %6590 = getelementptr [1 x i8], [1 x i8]* @.str1010, i32 0, i32 0
  %6591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %6590, i64 0)
  %6592 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 6
  store %nyx_string* %6591, %nyx_string** %6592
  %6593 = load { i64, i8* }*, { i64, i8* }** %6567
  %6594 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 7
  store { i64, i8* }* %6593, { i64, i8* }** %6594
  %6595 = load { i64, i8* }*, { i64, i8* }** %6569
  %6596 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 8
  store { i64, i8* }* %6595, { i64, i8* }** %6596
  %6597 = getelementptr [1 x i8], [1 x i8]* @.str1011, i32 0, i32 0
  %6598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %6597, i64 0)
  %6599 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 9
  store %nyx_string* %6598, %nyx_string** %6599
  %6600 = getelementptr [1 x i8], [1 x i8]* @.str1012, i32 0, i32 0
  %6601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %6600, i64 0)
  %6602 = getelementptr %ProjectConfig, %ProjectConfig* %6573, i32 0, i32 10
  store %nyx_string* %6601, %nyx_string** %6602
  %6603 = load %ProjectConfig, %ProjectConfig* %6573
  %6604 = alloca %ProjectConfig
  store %ProjectConfig %6603, %ProjectConfig* %6604
  %6605 = load %nyx_string*, %nyx_string** %6546
  %6606 = load %nyx_string*, %nyx_string** %6549
  %6607 = load %ProjectConfig, %ProjectConfig* %6604
  %6608 = call i1 @run_add(%nyx_string* %6605, %nyx_string* %6606, %ProjectConfig %6607)
  %6609 = alloca i1
  store i1 %6608, i1* %6609
  %6610 = load i1, i1* %6609
  br i1 %6610, label %then1216, label %else1217
then1216:
  ret i64 0
else1217:
  br label %merge1218
merge1218:
  ret i64 1
else1205:
  br label %merge1206
merge1206:
  %6611 = load %nyx_string*, %nyx_string** %5995
  %6612 = getelementptr [7 x i8], [7 x i8]* @.str1013, i32 0, i32 0
  %6613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %6612, i64 6)
  %6614 = call i1 @nyx_string_equals(%nyx_string* %6611, %nyx_string* %6613)
  br i1 %6614, label %then1219, label %else1220
then1219:
  %6615 = getelementptr [1 x i8], [1 x i8]* @.str1014, i32 0, i32 0
  %6616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %6615, i64 0)
  %6617 = alloca %nyx_string*
  store %nyx_string* %6616, %nyx_string** %6617
  %6618 = alloca i1
  store i1 0, i1* %6618
  %6619 = alloca i64
  store i64 2, i64* %6619
  %6620 = getelementptr [7 x i8], [7 x i8]* @.str1015, i32 0, i32 0
  %6621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %6620, i64 6)
  %6622 = alloca %nyx_string*
  store %nyx_string* %6621, %nyx_string** %6622
  %6623 = getelementptr [10 x i8], [10 x i8]* @.str1016, i32 0, i32 0
  %6624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %6623, i64 9)
  %6625 = alloca %nyx_string*
  store %nyx_string* %6624, %nyx_string** %6625
  %6626 = call i8* @llvm.stacksave()
  br label %while_cond1222
while_cond1222:
  %6627 = load i64, i64* %6619
  %6628 = load { i64, i8* }*, { i64, i8* }** %5992
  %6629 = call i64 @nyx_array_length({ i64, i8* }* %6628)
  %6630 = icmp slt i64 %6627, %6629
  br i1 %6630, label %while_body1223, label %while_end1224
while_body1223:
  call void @llvm.stackrestore(i8* %6626)
  %6631 = load { i64, i8* }*, { i64, i8* }** %5992
  %6632 = load i64, i64* %6619
  %6633 = call i64 @nyx_array_get_checked({ i64, i8* }* %6631, i64 %6632, i64 2)
  %6634 = inttoptr i64 %6633 to %nyx_string*
  %6635 = alloca %nyx_string*
  store %nyx_string* %6634, %nyx_string** %6635
  %6636 = load %nyx_string*, %nyx_string** %6635
  %6637 = load %nyx_string*, %nyx_string** %6622
  %6638 = call i1 @nyx_string_equals(%nyx_string* %6636, %nyx_string* %6637)
  br i1 %6638, label %then1225, label %else1226
then1225:
  store i1 1, i1* %6618
  br label %merge1227
else1226:
  %6639 = load %nyx_string*, %nyx_string** %6635
  %6640 = load %nyx_string*, %nyx_string** %6625
  %6641 = call i1 @nyx_string_equals(%nyx_string* %6639, %nyx_string* %6640)
  %6642 = xor i1 %6641, true
  br i1 %6642, label %then1228, label %else1229
then1228:
  %6643 = load %nyx_string*, %nyx_string** %6635
  store %nyx_string* %6643, %nyx_string** %6617
  br label %merge1230
else1229:
  br label %merge1230
merge1230:
  br label %merge1227
merge1227:
  %6644 = load i64, i64* %6619
  %6645 = add i64 %6644, 1
  store i64 %6645, i64* %6619
  br label %while_cond1222
while_end1224:
  %6646 = load %nyx_string*, %nyx_string** %6617
  %6647 = load i1, i1* %6618
  %6648 = call i1 @run_report(%nyx_string* %6646, i1 %6647)
  %6649 = alloca i1
  store i1 %6648, i1* %6649
  %6650 = load i1, i1* %6649
  br i1 %6650, label %then1231, label %else1232
then1231:
  ret i64 0
else1232:
  br label %merge1233
merge1233:
  ret i64 1
else1220:
  br label %merge1221
merge1221:
  %6651 = load %nyx_string*, %nyx_string** %5995
  %6652 = getelementptr [13 x i8], [13 x i8]* @.str1017, i32 0, i32 0
  %6653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %6652, i64 12)
  %6654 = call i1 @nyx_string_equals(%nyx_string* %6651, %nyx_string* %6653)
  br i1 %6654, label %then1234, label %else1235
then1234:
  %6655 = getelementptr [1 x i8], [1 x i8]* @.str1018, i32 0, i32 0
  %6656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %6655, i64 0)
  %6657 = alloca %nyx_string*
  store %nyx_string* %6656, %nyx_string** %6657
  %6658 = load { i64, i8* }*, { i64, i8* }** %5992
  %6659 = call i64 @nyx_array_length({ i64, i8* }* %6658)
  %6660 = icmp sge i64 %6659, 3
  br i1 %6660, label %then1237, label %else1238
then1237:
  %6661 = load { i64, i8* }*, { i64, i8* }** %5992
  %6662 = call i64 @nyx_array_get_checked({ i64, i8* }* %6661, i64 2, i64 2)
  %6663 = inttoptr i64 %6662 to %nyx_string*
  %6664 = alloca %nyx_string*
  store %nyx_string* %6663, %nyx_string** %6664
  %6665 = load %nyx_string*, %nyx_string** %6664
  %6666 = getelementptr [10 x i8], [10 x i8]* @.str1019, i32 0, i32 0
  %6667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %6666, i64 9)
  %6668 = call i1 @nyx_string_equals(%nyx_string* %6665, %nyx_string* %6667)
  %6669 = xor i1 %6668, true
  br i1 %6669, label %then1240, label %else1241
then1240:
  %6670 = load %nyx_string*, %nyx_string** %6664
  store %nyx_string* %6670, %nyx_string** %6657
  br label %merge1242
else1241:
  br label %merge1242
merge1242:
  br label %merge1239
else1238:
  br label %merge1239
merge1239:
  %6671 = load %nyx_string*, %nyx_string** %6657
  %6672 = call i1 @run_capabilities(%nyx_string* %6671)
  %6673 = alloca i1
  store i1 %6672, i1* %6673
  %6674 = load i1, i1* %6673
  br i1 %6674, label %then1243, label %else1244
then1243:
  ret i64 0
else1244:
  br label %merge1245
merge1245:
  ret i64 1
else1235:
  br label %merge1236
merge1236:
  %6675 = getelementptr [9 x i8], [9 x i8]* @.str1020, i32 0, i32 0
  %6676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %6675, i64 8)
  %6677 = call i8* @nyx_string_to_cstr(%nyx_string* %6676)
  %6678 = call i1 @nyx_file_exists(i8* %6677)
  %6679 = xor i1 %6678, true
  br i1 %6679, label %then1246, label %else1247
then1246:
  %6680 = getelementptr [47 x i8], [47 x i8]* @.str1021, i32 0, i32 0
  %6681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %6680, i64 46)
  %6682 = call i8* @nyx_string_to_cstr(%nyx_string* %6681)
  call void @nyx_print_string(i8* %6682)
  %6683 = getelementptr [24 x i8], [24 x i8]* @.str1022, i32 0, i32 0
  %6684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %6683, i64 23)
  %6685 = call i8* @nyx_string_to_cstr(%nyx_string* %6684)
  call void @nyx_print_string(i8* %6685)
  %6686 = getelementptr [12 x i8], [12 x i8]* @.str1023, i32 0, i32 0
  %6687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %6686, i64 11)
  %6688 = call i8* @nyx_string_to_cstr(%nyx_string* %6687)
  call void @nyx_print_string(i8* %6688)
  %6689 = getelementptr [17 x i8], [17 x i8]* @.str1024, i32 0, i32 0
  %6690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %6689, i64 16)
  %6691 = call i8* @nyx_string_to_cstr(%nyx_string* %6690)
  call void @nyx_print_string(i8* %6691)
  %6692 = getelementptr [20 x i8], [20 x i8]* @.str1025, i32 0, i32 0
  %6693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %6692, i64 19)
  %6694 = call i8* @nyx_string_to_cstr(%nyx_string* %6693)
  call void @nyx_print_string(i8* %6694)
  %6695 = getelementptr [23 x i8], [23 x i8]* @.str1026, i32 0, i32 0
  %6696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %6695, i64 22)
  %6697 = call i8* @nyx_string_to_cstr(%nyx_string* %6696)
  call void @nyx_print_string(i8* %6697)
  ret i64 1
else1247:
  br label %merge1248
merge1248:
  %6698 = getelementptr [9 x i8], [9 x i8]* @.str1027, i32 0, i32 0
  %6699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %6698, i64 8)
  %6700 = call i8* @nyx_string_to_cstr(%nyx_string* %6699)
  %6701 = call %nyx_string* @nyx_read_file(i8* %6700)
  %6702 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 20
  store %nyx_string* %6701, %nyx_string** %6702
  %6703 = load %nyx_string*, %nyx_string** %6702
  %6704 = call %ProjectConfig @parse_toml(%nyx_string* %6703)
  %6705 = getelementptr %SharedEnv_main, %SharedEnv_main* %5990, i32 0, i32 21
  store %ProjectConfig %6704, %ProjectConfig* %6705
  %6706 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 9
  %6707 = load %nyx_string*, %nyx_string** %6706
  %6708 = getelementptr [1 x i8], [1 x i8]* @.str1028, i32 0, i32 0
  %6709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %6708, i64 0)
  %6710 = call i1 @nyx_string_equals(%nyx_string* %6707, %nyx_string* %6709)
  %6711 = xor i1 %6710, true
  br i1 %6711, label %then1249, label %else1250
then1249:
  %6712 = getelementptr [8 x i8], [8 x i8]* @.str1029, i32 0, i32 0
  %6713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %6712, i64 7)
  %6714 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 9
  %6715 = load %nyx_string*, %nyx_string** %6714
  %6716 = call %nyx_string* @nyx_string_concat(%nyx_string* %6713, %nyx_string* %6715)
  %6717 = call i8* @nyx_string_to_cstr(%nyx_string* %6716)
  call void @nyx_print_string(i8* %6717)
  ret i64 1
else1250:
  br label %merge1251
merge1251:
  %6718 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 0
  %6719 = load %nyx_string*, %nyx_string** %6718
  %6720 = getelementptr [1 x i8], [1 x i8]* @.str1030, i32 0, i32 0
  %6721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %6720, i64 0)
  %6722 = call i1 @nyx_string_equals(%nyx_string* %6719, %nyx_string* %6721)
  br i1 %6722, label %then1252, label %else1253
then1252:
  %6723 = getelementptr [45 x i8], [45 x i8]* @.str1031, i32 0, i32 0
  %6724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %6723, i64 44)
  %6725 = call i8* @nyx_string_to_cstr(%nyx_string* %6724)
  call void @nyx_print_string(i8* %6725)
  ret i64 1
else1253:
  br label %merge1254
merge1254:
  %6726 = load %nyx_string*, %nyx_string** %6002
  %6727 = getelementptr [1 x i8], [1 x i8]* @.str1032, i32 0, i32 0
  %6728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %6727, i64 0)
  %6729 = call i1 @nyx_string_equals(%nyx_string* %6726, %nyx_string* %6728)
  %6730 = xor i1 %6729, true
  br i1 %6730, label %then1255, label %else1256
then1255:
  %6731 = alloca i1
  store i1 false, i1* %6731
  %6732 = load %nyx_string*, %nyx_string** %5995
  %6733 = getelementptr [6 x i8], [6 x i8]* @.str1033, i32 0, i32 0
  %6734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %6733, i64 5)
  %6735 = call i1 @nyx_string_equals(%nyx_string* %6732, %nyx_string* %6734)
  %6736 = xor i1 %6735, true
  br i1 %6736, label %sc_and_rhs1258, label %sc_and_end1259
sc_and_rhs1258:
  %6737 = load %nyx_string*, %nyx_string** %5995
  %6738 = getelementptr [4 x i8], [4 x i8]* @.str1034, i32 0, i32 0
  %6739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %6738, i64 3)
  %6740 = call i1 @nyx_string_equals(%nyx_string* %6737, %nyx_string* %6739)
  %6741 = xor i1 %6740, true
  store i1 %6741, i1* %6731
  br label %sc_and_end1259
sc_and_end1259:
  %6742 = load i1, i1* %6731
  br i1 %6742, label %then1260, label %else1261
then1260:
  %6743 = getelementptr [53 x i8], [53 x i8]* @.str1035, i32 0, i32 0
  %6744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %6743, i64 52)
  %6745 = call i8* @nyx_string_to_cstr(%nyx_string* %6744)
  call void @nyx_print_string(i8* %6745)
  ret i64 1
else1261:
  br label %merge1262
merge1262:
  %6746 = load %nyx_string*, %nyx_string** %6002
  %6747 = call %nyx_string* @main_flag_error(%nyx_string* %6746)
  %6748 = alloca %nyx_string*
  store %nyx_string* %6747, %nyx_string** %6748
  %6749 = load %nyx_string*, %nyx_string** %6748
  %6750 = getelementptr [1 x i8], [1 x i8]* @.str1036, i32 0, i32 0
  %6751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %6750, i64 0)
  %6752 = call i1 @nyx_string_equals(%nyx_string* %6749, %nyx_string* %6751)
  %6753 = xor i1 %6752, true
  br i1 %6753, label %then1263, label %else1264
then1263:
  %6754 = getelementptr [8 x i8], [8 x i8]* @.str1037, i32 0, i32 0
  %6755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %6754, i64 7)
  %6756 = load %nyx_string*, %nyx_string** %6748
  %6757 = call %nyx_string* @nyx_string_concat(%nyx_string* %6755, %nyx_string* %6756)
  %6758 = call i8* @nyx_string_to_cstr(%nyx_string* %6757)
  call void @nyx_print_string(i8* %6758)
  ret i64 1
else1264:
  br label %merge1265
merge1265:
  %6759 = load %ProjectConfig, %ProjectConfig* %6705
  %6760 = load %nyx_string*, %nyx_string** %6002
  %6761 = call %nyx_string* @bin_name_for_main(%ProjectConfig %6759, %nyx_string* %6760)
  %6762 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 10
  store %nyx_string* %6761, %nyx_string** %6762
  %6763 = load %nyx_string*, %nyx_string** %6002
  %6764 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 2
  store %nyx_string* %6763, %nyx_string** %6764
  br label %merge1257
else1256:
  br label %merge1257
merge1257:
  %6765 = load %nyx_string*, %nyx_string** %5995
  %6766 = getelementptr [5 x i8], [5 x i8]* @.str1038, i32 0, i32 0
  %6767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %6766, i64 4)
  %6768 = call i1 @nyx_string_equals(%nyx_string* %6765, %nyx_string* %6767)
  br i1 %6768, label %then1266, label %else1267
then1266:
  %6769 = load %ProjectConfig, %ProjectConfig* %6705
  %6770 = call i64 @print_info(%ProjectConfig %6769)
  ret i64 0
else1267:
  br label %merge1268
merge1268:
  %6771 = load %nyx_string*, %nyx_string** %5995
  %6772 = getelementptr [6 x i8], [6 x i8]* @.str1039, i32 0, i32 0
  %6773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %6772, i64 5)
  %6774 = call i1 @nyx_string_equals(%nyx_string* %6771, %nyx_string* %6773)
  br i1 %6774, label %then1269, label %else1270
then1269:
  %6775 = load %ProjectConfig, %ProjectConfig* %6705
  %6776 = load i1, i1* %5996
  %6777 = load %nyx_string*, %nyx_string** %5999
  %6778 = call i1 @run_build(%ProjectConfig %6775, i1 %6776, %nyx_string* %6777)
  %6779 = alloca i1
  store i1 %6778, i1* %6779
  %6780 = load i1, i1* %6779
  br i1 %6780, label %then1272, label %else1273
then1272:
  %6781 = load %ProjectConfig, %ProjectConfig* %6705
  %6782 = call i64 @write_lockfile(%ProjectConfig %6781)
  %6783 = getelementptr [15 x i8], [15 x i8]* @.str1040, i32 0, i32 0
  %6784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %6783, i64 14)
  %6785 = call i8* @nyx_string_to_cstr(%nyx_string* %6784)
  call void @nyx_print_string(i8* %6785)
  ret i64 0
else1273:
  br label %merge1274
merge1274:
  ret i64 1
else1270:
  br label %merge1271
merge1271:
  %6786 = load %nyx_string*, %nyx_string** %5995
  %6787 = getelementptr [4 x i8], [4 x i8]* @.str1041, i32 0, i32 0
  %6788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %6787, i64 3)
  %6789 = call i1 @nyx_string_equals(%nyx_string* %6786, %nyx_string* %6788)
  br i1 %6789, label %then1275, label %else1276
then1275:
  %6790 = alloca i64
  store i64 2, i64* %6790
  %6791 = getelementptr [3 x i8], [3 x i8]* @.str1042, i32 0, i32 0
  %6792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %6791, i64 2)
  %6793 = alloca %nyx_string*
  store %nyx_string* %6792, %nyx_string** %6793
  %6794 = getelementptr [7 x i8], [7 x i8]* @.str1043, i32 0, i32 0
  %6795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %6794, i64 6)
  %6796 = alloca %nyx_string*
  store %nyx_string* %6795, %nyx_string** %6796
  %6797 = getelementptr [3 x i8], [3 x i8]* @.str1044, i32 0, i32 0
  %6798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %6797, i64 2)
  %6799 = alloca %nyx_string*
  store %nyx_string* %6798, %nyx_string** %6799
  %6800 = getelementptr [79 x i8], [79 x i8]* @.str1045, i32 0, i32 0
  %6801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %6800, i64 78)
  %6802 = alloca %nyx_string*
  store %nyx_string* %6801, %nyx_string** %6802
  %6803 = getelementptr [60 x i8], [60 x i8]* @.str1046, i32 0, i32 0
  %6804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %6803, i64 59)
  %6805 = alloca %nyx_string*
  store %nyx_string* %6804, %nyx_string** %6805
  %6806 = getelementptr [1 x i8], [1 x i8]* @.str1047, i32 0, i32 0
  %6807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %6806, i64 0)
  %6808 = alloca %nyx_string*
  store %nyx_string* %6807, %nyx_string** %6808
  %6809 = getelementptr [56 x i8], [56 x i8]* @.str1048, i32 0, i32 0
  %6810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %6809, i64 55)
  %6811 = alloca %nyx_string*
  store %nyx_string* %6810, %nyx_string** %6811
  %6812 = getelementptr [38 x i8], [38 x i8]* @.str1049, i32 0, i32 0
  %6813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %6812, i64 37)
  %6814 = alloca %nyx_string*
  store %nyx_string* %6813, %nyx_string** %6814
  %6815 = call i8* @llvm.stacksave()
  br label %while_cond1278
while_cond1278:
  %6816 = load i64, i64* %6790
  %6817 = load { i64, i8* }*, { i64, i8* }** %5992
  %6818 = call i64 @nyx_array_length({ i64, i8* }* %6817)
  %6819 = icmp slt i64 %6816, %6818
  br i1 %6819, label %while_body1279, label %while_end1280
while_body1279:
  call void @llvm.stackrestore(i8* %6815)
  %6820 = load { i64, i8* }*, { i64, i8* }** %5992
  %6821 = load i64, i64* %6790
  %6822 = call i64 @nyx_array_get_checked({ i64, i8* }* %6820, i64 %6821, i64 2)
  %6823 = inttoptr i64 %6822 to %nyx_string*
  %6824 = alloca %nyx_string*
  store %nyx_string* %6823, %nyx_string** %6824
  %6825 = load %nyx_string*, %nyx_string** %6824
  %6826 = load %nyx_string*, %nyx_string** %6793
  %6827 = call i1 @nyx_string_equals(%nyx_string* %6825, %nyx_string* %6826)
  br i1 %6827, label %then1281, label %else1282
then1281:
  %6828 = load { i64, i8* }*, { i64, i8* }** %5992
  %6829 = call i64 @nyx_array_length({ i64, i8* }* %6828)
  store i64 %6829, i64* %6790
  br label %merge1283
else1282:
  %6830 = alloca i1
  store i1 true, i1* %6830
  %6831 = load %nyx_string*, %nyx_string** %6824
  %6832 = load %nyx_string*, %nyx_string** %6796
  %6833 = call i1 @nyx_string_equals(%nyx_string* %6831, %nyx_string* %6832)
  br i1 %6833, label %sc_or_end1285, label %sc_or_rhs1284
sc_or_rhs1284:
  %6834 = load %nyx_string*, %nyx_string** %6824
  %6835 = load %nyx_string*, %nyx_string** %6799
  %6836 = call i1 @nyx_string_equals(%nyx_string* %6834, %nyx_string* %6835)
  store i1 %6836, i1* %6830
  br label %sc_or_end1285
sc_or_end1285:
  %6837 = load i1, i1* %6830
  br i1 %6837, label %then1286, label %else1287
then1286:
  %6838 = load %nyx_string*, %nyx_string** %6802
  %6839 = call i8* @nyx_string_to_cstr(%nyx_string* %6838)
  call void @nyx_print_string(i8* %6839)
  %6840 = load %nyx_string*, %nyx_string** %6805
  %6841 = call i8* @nyx_string_to_cstr(%nyx_string* %6840)
  call void @nyx_print_string(i8* %6841)
  %6842 = load %nyx_string*, %nyx_string** %6808
  %6843 = call i8* @nyx_string_to_cstr(%nyx_string* %6842)
  call void @nyx_print_string(i8* %6843)
  %6844 = load %nyx_string*, %nyx_string** %6811
  %6845 = call i8* @nyx_string_to_cstr(%nyx_string* %6844)
  call void @nyx_print_string(i8* %6845)
  %6846 = load %nyx_string*, %nyx_string** %6814
  %6847 = call i8* @nyx_string_to_cstr(%nyx_string* %6846)
  call void @nyx_print_string(i8* %6847)
  ret i64 0
else1287:
  br label %merge1288
merge1288:
  %6848 = load i64, i64* %6790
  %6849 = add i64 %6848, 1
  store i64 %6849, i64* %6790
  br label %merge1283
merge1283:
  br label %while_cond1278
while_end1280:
  %6850 = load %ProjectConfig, %ProjectConfig* %6705
  %6851 = load %nyx_string*, %nyx_string** %5999
  %6852 = call i1 @run_build(%ProjectConfig %6850, i1 0, %nyx_string* %6851)
  %6853 = alloca i1
  store i1 %6852, i1* %6853
  %6854 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 0
  %6855 = load %nyx_string*, %nyx_string** %6854
  %6856 = alloca %nyx_string*
  store %nyx_string* %6855, %nyx_string** %6856
  %6857 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 10
  %6858 = load %nyx_string*, %nyx_string** %6857
  %6859 = getelementptr [1 x i8], [1 x i8]* @.str1050, i32 0, i32 0
  %6860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %6859, i64 0)
  %6861 = call i1 @nyx_string_equals(%nyx_string* %6858, %nyx_string* %6860)
  %6862 = xor i1 %6861, true
  br i1 %6862, label %then1289, label %else1290
then1289:
  %6863 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 10
  %6864 = load %nyx_string*, %nyx_string** %6863
  store %nyx_string* %6864, %nyx_string** %6856
  br label %merge1291
else1290:
  br label %merge1291
merge1291:
  %6865 = load i1, i1* %6853
  br i1 %6865, label %then1292, label %else1293
then1292:
  %6866 = load %ProjectConfig, %ProjectConfig* %6705
  %6867 = call i64 @write_lockfile(%ProjectConfig %6866)
  %6868 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 6
  %6869 = load %nyx_string*, %nyx_string** %6868
  %6870 = alloca %nyx_string*
  store %nyx_string* %6869, %nyx_string** %6870
  %6871 = load %nyx_string*, %nyx_string** %5999
  %6872 = getelementptr [1 x i8], [1 x i8]* @.str1051, i32 0, i32 0
  %6873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %6872, i64 0)
  %6874 = call i1 @nyx_string_equals(%nyx_string* %6871, %nyx_string* %6873)
  %6875 = xor i1 %6874, true
  br i1 %6875, label %then1295, label %else1296
then1295:
  %6876 = load %nyx_string*, %nyx_string** %5999
  store %nyx_string* %6876, %nyx_string** %6870
  br label %merge1297
else1296:
  br label %merge1297
merge1297:
  %6877 = load %nyx_string*, %nyx_string** %6870
  %6878 = getelementptr [12 x i8], [12 x i8]* @.str1052, i32 0, i32 0
  %6879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %6878, i64 11)
  %6880 = call i1 @nyx_string_equals(%nyx_string* %6877, %nyx_string* %6879)
  br i1 %6880, label %then1298, label %else1299
then1298:
  %6881 = getelementptr [20 x i8], [20 x i8]* @.str1053, i32 0, i32 0
  %6882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %6881, i64 19)
  %6883 = load %nyx_string*, %nyx_string** %6856
  %6884 = call %nyx_string* @nyx_string_concat(%nyx_string* %6882, %nyx_string* %6883)
  %6885 = getelementptr [6 x i8], [6 x i8]* @.str1054, i32 0, i32 0
  %6886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %6885, i64 5)
  %6887 = call %nyx_string* @nyx_string_concat(%nyx_string* %6884, %nyx_string* %6886)
  %6888 = alloca %nyx_string*
  store %nyx_string* %6887, %nyx_string** %6888
  %6889 = load %nyx_string*, %nyx_string** %6888
  %6890 = call i8* @nyx_string_to_cstr(%nyx_string* %6889)
  %6891 = call i1 @nyx_file_exists(i8* %6890)
  %6892 = xor i1 %6891, true
  br i1 %6892, label %then1301, label %else1302
then1301:
  %6893 = getelementptr [24 x i8], [24 x i8]* @.str1055, i32 0, i32 0
  %6894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %6893, i64 23)
  %6895 = load %nyx_string*, %nyx_string** %6888
  %6896 = call %nyx_string* @nyx_string_concat(%nyx_string* %6894, %nyx_string* %6895)
  %6897 = call i8* @nyx_string_to_cstr(%nyx_string* %6896)
  call void @nyx_print_string(i8* %6897)
  ret i64 1
else1302:
  br label %merge1303
merge1303:
  %6898 = getelementptr [36 x i8], [36 x i8]* @.str1056, i32 0, i32 0
  %6899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %6898, i64 35)
  %6900 = call i8* @nyx_string_to_cstr(%nyx_string* %6899)
  %6901 = call i64 @nyx_exec_code(i8* %6900)
  %6902 = icmp ne i64 %6901, 0
  br i1 %6902, label %then1304, label %else1305
then1304:
  %6903 = getelementptr [24 x i8], [24 x i8]* @.str1057, i32 0, i32 0
  %6904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %6903, i64 23)
  %6905 = load %nyx_string*, %nyx_string** %6888
  %6906 = call %nyx_string* @nyx_string_concat(%nyx_string* %6904, %nyx_string* %6905)
  %6907 = getelementptr [45 x i8], [45 x i8]* @.str1058, i32 0, i32 0
  %6908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %6907, i64 44)
  %6909 = call %nyx_string* @nyx_string_concat(%nyx_string* %6906, %nyx_string* %6908)
  %6910 = call i8* @nyx_string_to_cstr(%nyx_string* %6909)
  call void @nyx_print_string(i8* %6910)
  %6911 = getelementptr [54 x i8], [54 x i8]* @.str1059, i32 0, i32 0
  %6912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %6911, i64 53)
  %6913 = load %nyx_string*, %nyx_string** %6888
  %6914 = call %nyx_string* @nyx_string_concat(%nyx_string* %6912, %nyx_string* %6913)
  %6915 = call i8* @nyx_string_to_cstr(%nyx_string* %6914)
  call void @nyx_print_string(i8* %6915)
  ret i64 1
else1305:
  br label %merge1306
merge1306:
  %6916 = getelementptr [10 x i8], [10 x i8]* @.str1060, i32 0, i32 0
  %6917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %6916, i64 9)
  %6918 = load %nyx_string*, %nyx_string** %6888
  %6919 = call %nyx_string* @nyx_string_concat(%nyx_string* %6917, %nyx_string* %6918)
  %6920 = alloca %nyx_string*
  store %nyx_string* %6919, %nyx_string** %6920
  %6921 = alloca i64
  store i64 2, i64* %6921
  %6922 = alloca i1
  store i1 0, i1* %6922
  %6923 = getelementptr [2 x i8], [2 x i8]* @.str1061, i32 0, i32 0
  %6924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %6923, i64 1)
  %6925 = alloca %nyx_string*
  store %nyx_string* %6924, %nyx_string** %6925
  %6926 = getelementptr [3 x i8], [3 x i8]* @.str1062, i32 0, i32 0
  %6927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %6926, i64 2)
  %6928 = alloca %nyx_string*
  store %nyx_string* %6927, %nyx_string** %6928
  %6929 = getelementptr [9 x i8], [9 x i8]* @.str1063, i32 0, i32 0
  %6930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %6929, i64 8)
  %6931 = alloca %nyx_string*
  store %nyx_string* %6930, %nyx_string** %6931
  %6932 = getelementptr [7 x i8], [7 x i8]* @.str1064, i32 0, i32 0
  %6933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %6932, i64 6)
  %6934 = alloca %nyx_string*
  store %nyx_string* %6933, %nyx_string** %6934
  %6935 = call i8* @llvm.stacksave()
  br label %while_cond1307
while_cond1307:
  %6936 = load i64, i64* %6921
  %6937 = load { i64, i8* }*, { i64, i8* }** %5992
  %6938 = call i64 @nyx_array_length({ i64, i8* }* %6937)
  %6939 = icmp slt i64 %6936, %6938
  br i1 %6939, label %while_body1308, label %while_end1309
while_body1308:
  call void @llvm.stackrestore(i8* %6935)
  %6940 = load { i64, i8* }*, { i64, i8* }** %5992
  %6941 = load i64, i64* %6921
  %6942 = call i64 @nyx_array_get_checked({ i64, i8* }* %6940, i64 %6941, i64 2)
  %6943 = inttoptr i64 %6942 to %nyx_string*
  %6944 = alloca %nyx_string*
  store %nyx_string* %6943, %nyx_string** %6944
  %6945 = load i1, i1* %6922
  br i1 %6945, label %then1310, label %else1311
then1310:
  %6946 = load %nyx_string*, %nyx_string** %6920
  %6947 = load %nyx_string*, %nyx_string** %6925
  %6948 = call %nyx_string* @nyx_string_concat(%nyx_string* %6946, %nyx_string* %6947)
  %6949 = load %nyx_string*, %nyx_string** %6944
  %6950 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5990, %nyx_string* %6949)
  %6951 = call %nyx_string* @nyx_string_concat(%nyx_string* %6948, %nyx_string* %6950)
  store %nyx_string* %6951, %nyx_string** %6920
  br label %merge1312
else1311:
  %6952 = load %nyx_string*, %nyx_string** %6944
  %6953 = load %nyx_string*, %nyx_string** %6928
  %6954 = call i1 @nyx_string_equals(%nyx_string* %6952, %nyx_string* %6953)
  br i1 %6954, label %then1313, label %else1314
then1313:
  store i1 1, i1* %6922
  br label %merge1315
else1314:
  %6955 = alloca i1
  store i1 true, i1* %6955
  %6956 = load %nyx_string*, %nyx_string** %6944
  %6957 = load %nyx_string*, %nyx_string** %6931
  %6958 = call i1 @nyx_string_equals(%nyx_string* %6956, %nyx_string* %6957)
  br i1 %6958, label %sc_or_end1317, label %sc_or_rhs1316
sc_or_rhs1316:
  %6959 = load %nyx_string*, %nyx_string** %6944
  %6960 = load %nyx_string*, %nyx_string** %6934
  %6961 = call i1 @nyx_string_equals(%nyx_string* %6959, %nyx_string* %6960)
  store i1 %6961, i1* %6955
  br label %sc_or_end1317
sc_or_end1317:
  %6962 = load i1, i1* %6955
  br i1 %6962, label %then1318, label %else1319
then1318:
  %6963 = load i64, i64* %6921
  %6964 = add i64 %6963, 1
  store i64 %6964, i64* %6921
  br label %merge1320
else1319:
  br label %merge1320
merge1320:
  br label %merge1315
merge1315:
  br label %merge1312
merge1312:
  %6965 = load i64, i64* %6921
  %6966 = add i64 %6965, 1
  store i64 %6966, i64* %6921
  br label %while_cond1307
while_end1309:
  %6967 = load %nyx_string*, %nyx_string** %6920
  %6968 = call i8* @nyx_string_to_cstr(%nyx_string* %6967)
  %6969 = call i64 @nyx_exec_code(i8* %6968)
  ret i64 %6969
else1299:
  br label %merge1300
merge1300:
  %6970 = load %nyx_string*, %nyx_string** %6870
  %6971 = getelementptr [1 x i8], [1 x i8]* @.str1065, i32 0, i32 0
  %6972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %6971, i64 0)
  %6973 = call i1 @nyx_string_equals(%nyx_string* %6970, %nyx_string* %6972)
  %6974 = xor i1 %6973, true
  br i1 %6974, label %then1321, label %else1322
then1321:
  %6975 = getelementptr [51 x i8], [51 x i8]* @.str1066, i32 0, i32 0
  %6976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %6975, i64 50)
  %6977 = load %nyx_string*, %nyx_string** %6870
  %6978 = call %nyx_string* @nyx_string_concat(%nyx_string* %6976, %nyx_string* %6977)
  %6979 = call i8* @nyx_string_to_cstr(%nyx_string* %6978)
  call void @nyx_print_string(i8* %6979)
  %6980 = getelementptr [27 x i8], [27 x i8]* @.str1067, i32 0, i32 0
  %6981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %6980, i64 26)
  %6982 = load %nyx_string*, %nyx_string** %6870
  %6983 = call %nyx_string* @nyx_string_concat(%nyx_string* %6981, %nyx_string* %6982)
  %6984 = getelementptr [47 x i8], [47 x i8]* @.str1068, i32 0, i32 0
  %6985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %6984, i64 46)
  %6986 = call %nyx_string* @nyx_string_concat(%nyx_string* %6983, %nyx_string* %6985)
  %6987 = call i8* @nyx_string_to_cstr(%nyx_string* %6986)
  call void @nyx_print_string(i8* %6987)
  ret i64 1
else1322:
  br label %merge1323
merge1323:
  %6988 = getelementptr [3 x i8], [3 x i8]* @.str1069, i32 0, i32 0
  %6989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %6988, i64 2)
  %6990 = load %nyx_string*, %nyx_string** %6856
  %6991 = call %nyx_string* @nyx_string_concat(%nyx_string* %6989, %nyx_string* %6990)
  %6992 = alloca %nyx_string*
  store %nyx_string* %6991, %nyx_string** %6992
  %6993 = getelementptr %ProjectConfig, %ProjectConfig* %6705, i32 0, i32 10
  %6994 = load %nyx_string*, %nyx_string** %6993
  %6995 = getelementptr [1 x i8], [1 x i8]* @.str1070, i32 0, i32 0
  %6996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %6995, i64 0)
  %6997 = call i1 @nyx_string_equals(%nyx_string* %6994, %nyx_string* %6996)
  %6998 = xor i1 %6997, true
  br i1 %6998, label %then1324, label %else1325
then1324:
  %6999 = getelementptr [10 x i8], [10 x i8]* @.str1071, i32 0, i32 0
  %7000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %6999, i64 9)
  %7001 = load %nyx_string*, %nyx_string** %6856
  %7002 = call %nyx_string* @nyx_string_concat(%nyx_string* %7000, %nyx_string* %7001)
  store %nyx_string* %7002, %nyx_string** %6992
  br label %merge1326
else1325:
  br label %merge1326
merge1326:
  %7003 = alloca i64
  store i64 2, i64* %7003
  %7004 = alloca i1
  store i1 0, i1* %7004
  %7005 = getelementptr [2 x i8], [2 x i8]* @.str1072, i32 0, i32 0
  %7006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %7005, i64 1)
  %7007 = alloca %nyx_string*
  store %nyx_string* %7006, %nyx_string** %7007
  %7008 = getelementptr [3 x i8], [3 x i8]* @.str1073, i32 0, i32 0
  %7009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %7008, i64 2)
  %7010 = alloca %nyx_string*
  store %nyx_string* %7009, %nyx_string** %7010
  %7011 = getelementptr [10 x i8], [10 x i8]* @.str1074, i32 0, i32 0
  %7012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %7011, i64 9)
  %7013 = alloca %nyx_string*
  store %nyx_string* %7012, %nyx_string** %7013
  %7014 = getelementptr [9 x i8], [9 x i8]* @.str1075, i32 0, i32 0
  %7015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %7014, i64 8)
  %7016 = alloca %nyx_string*
  store %nyx_string* %7015, %nyx_string** %7016
  %7017 = getelementptr [7 x i8], [7 x i8]* @.str1076, i32 0, i32 0
  %7018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %7017, i64 6)
  %7019 = alloca %nyx_string*
  store %nyx_string* %7018, %nyx_string** %7019
  %7020 = call i8* @llvm.stacksave()
  br label %while_cond1327
while_cond1327:
  %7021 = load i64, i64* %7003
  %7022 = load { i64, i8* }*, { i64, i8* }** %5992
  %7023 = call i64 @nyx_array_length({ i64, i8* }* %7022)
  %7024 = icmp slt i64 %7021, %7023
  br i1 %7024, label %while_body1328, label %while_end1329
while_body1328:
  call void @llvm.stackrestore(i8* %7020)
  %7025 = load { i64, i8* }*, { i64, i8* }** %5992
  %7026 = load i64, i64* %7003
  %7027 = call i64 @nyx_array_get_checked({ i64, i8* }* %7025, i64 %7026, i64 2)
  %7028 = inttoptr i64 %7027 to %nyx_string*
  %7029 = alloca %nyx_string*
  store %nyx_string* %7028, %nyx_string** %7029
  %7030 = load i1, i1* %7004
  br i1 %7030, label %then1330, label %else1331
then1330:
  %7031 = load %nyx_string*, %nyx_string** %6992
  %7032 = load %nyx_string*, %nyx_string** %7007
  %7033 = call %nyx_string* @nyx_string_concat(%nyx_string* %7031, %nyx_string* %7032)
  %7034 = load %nyx_string*, %nyx_string** %7029
  %7035 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5990, %nyx_string* %7034)
  %7036 = call %nyx_string* @nyx_string_concat(%nyx_string* %7033, %nyx_string* %7035)
  store %nyx_string* %7036, %nyx_string** %6992
  br label %merge1332
else1331:
  %7037 = load %nyx_string*, %nyx_string** %7029
  %7038 = load %nyx_string*, %nyx_string** %7010
  %7039 = call i1 @nyx_string_equals(%nyx_string* %7037, %nyx_string* %7038)
  br i1 %7039, label %then1333, label %else1334
then1333:
  store i1 1, i1* %7004
  br label %merge1335
else1334:
  %7040 = load %nyx_string*, %nyx_string** %7029
  %7041 = load %nyx_string*, %nyx_string** %7013
  %7042 = call i1 @nyx_string_equals(%nyx_string* %7040, %nyx_string* %7041)
  br i1 %7042, label %then1336, label %else1337
then1336:
  %7043 = load i64, i64* %7003
  store i64 %7043, i64* %7003
  br label %merge1338
else1337:
  %7044 = alloca i1
  store i1 true, i1* %7044
  %7045 = load %nyx_string*, %nyx_string** %7029
  %7046 = load %nyx_string*, %nyx_string** %7016
  %7047 = call i1 @nyx_string_equals(%nyx_string* %7045, %nyx_string* %7046)
  br i1 %7047, label %sc_or_end1340, label %sc_or_rhs1339
sc_or_rhs1339:
  %7048 = load %nyx_string*, %nyx_string** %7029
  %7049 = load %nyx_string*, %nyx_string** %7019
  %7050 = call i1 @nyx_string_equals(%nyx_string* %7048, %nyx_string* %7049)
  store i1 %7050, i1* %7044
  br label %sc_or_end1340
sc_or_end1340:
  %7051 = load i1, i1* %7044
  br i1 %7051, label %then1341, label %else1342
then1341:
  %7052 = load i64, i64* %7003
  %7053 = add i64 %7052, 1
  store i64 %7053, i64* %7003
  br label %merge1343
else1342:
  %7054 = load %nyx_string*, %nyx_string** %6992
  %7055 = load %nyx_string*, %nyx_string** %7007
  %7056 = call %nyx_string* @nyx_string_concat(%nyx_string* %7054, %nyx_string* %7055)
  %7057 = load %nyx_string*, %nyx_string** %7029
  %7058 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5990, %nyx_string* %7057)
  %7059 = call %nyx_string* @nyx_string_concat(%nyx_string* %7056, %nyx_string* %7058)
  store %nyx_string* %7059, %nyx_string** %6992
  br label %merge1343
merge1343:
  br label %merge1338
merge1338:
  br label %merge1335
merge1335:
  br label %merge1332
merge1332:
  %7060 = load i64, i64* %7003
  %7061 = add i64 %7060, 1
  store i64 %7061, i64* %7003
  br label %while_cond1327
while_end1329:
  %7062 = load %nyx_string*, %nyx_string** %6992
  %7063 = call i8* @nyx_string_to_cstr(%nyx_string* %7062)
  %7064 = call i64 @nyx_exec_code(i8* %7063)
  %7065 = alloca i64
  store i64 %7064, i64* %7065
  %7066 = load i64, i64* %7065
  ret i64 %7066
else1293:
  br label %merge1294
merge1294:
  ret i64 1
else1276:
  br label %merge1277
merge1277:
  %7067 = getelementptr [24 x i8], [24 x i8]* @.str1077, i32 0, i32 0
  %7068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %7067, i64 23)
  %7069 = load %nyx_string*, %nyx_string** %5995
  %7070 = call %nyx_string* @nyx_string_concat(%nyx_string* %7068, %nyx_string* %7069)
  %7071 = call i8* @nyx_string_to_cstr(%nyx_string* %7070)
  call void @nyx_print_string(i8* %7071)
  %7072 = getelementptr [110 x i8], [110 x i8]* @.str1078, i32 0, i32 0
  %7073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %7072, i64 109)
  %7074 = call i8* @nyx_string_to_cstr(%nyx_string* %7073)
  call void @nyx_print_string(i8* %7074)
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
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1079, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1080, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %30, i64 1)
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
  %7075 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %7076 = call %nyx_string* @nyx_string_from_ptr(i8* %7075, i64 64)
  store %nyx_string* %7076, %nyx_string** @std_base64____b64_chars
  %7077 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %7078 = call %nyx_string* @nyx_string_from_ptr(i8* %7077, i64 64)
  store %nyx_string* %7078, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

