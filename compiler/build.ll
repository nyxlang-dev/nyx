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
@.str19 = private unnamed_addr constant [2 x i8] c"*\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [2 x i8] c"$\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [6 x i8] c"$-1\0d\0a\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [5 x i8] c"AUTH\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c"\0d\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [1 x i8] c"\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [1 x i8] c"\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [1 x i8] c"\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [1 x i8] c"\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [2 x i8] c"*\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c"$\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [3 x i8] c"\0d\0a\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [1 x i8] c"\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [1 x i8] c"\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [1 x i8] c"\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [1 x i8] c"\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [4 x i8] c"SET\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [6 x i8] c"SETEX\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [4 x i8] c"GET\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [4 x i8] c"DEL\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [6 x i8] c"RPUSH\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [7 x i8] c"LRANGE\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [5 x i8] c"LLEN\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [5 x i8] c"SADD\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [9 x i8] c"SMEMBERS\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [7 x i8] c"WHOAMI\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [13 x i8] c"TOKEN_CREATE\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [7 x i8] c"EXISTS\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [2 x i8] c"1\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [5 x i8] c"SREM\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [11 x i8] c"TOKEN_LIST\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [13 x i8] c"TOKEN_REVOKE\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [1 x i8] c"\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [2 x i8] c"=\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [1 x i8] c"\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [1 x i8] c"="
@.str62 = private unnamed_addr constant [1 x i8] c"\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [5 x i8] c"true\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [5 x i8] c"true\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [6 x i8] c"false\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [6 x i8] c"false\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [1 x i8] c"="
@.str70 = private unnamed_addr constant [1 x i8] c"\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [1 x i8] c"\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [1 x i8] c"\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [1 x i8] c"\00"
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
@.str83 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [1 x i8] c"\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [1 x i8] c"\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [2 x i8] c"#\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [2 x i8] c"[\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [2 x i8] c"]\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [8 x i8] c"package\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [5 x i8] c"name\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [8 x i8] c"version\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [5 x i8] c"main\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [12 x i8] c"description\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [6 x i8] c"no_gc\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [5 x i8] c"true\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [7 x i8] c"target\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [6 x i8] c"build\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [44 x i8] c"clave desconocida en [build] de nyx.toml: '\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [34 x i8] c"' (claves válidas: main, target)\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [13 x i8] c"dependencies\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [1 x i8] c"\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [1 x i8] c"\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [1 x i8] c"\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [74 x i8] c"nyx.toml declara main dos veces con valores distintos: [package] main = \22\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [21 x i8] c"\22 y [build] main = \22\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [1 x i8] c"\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [1 x i8] c"\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [1 x i8] c"\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [78 x i8] c"nyx.toml declara target dos veces con valores distintos: [package] target = \22\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [23 x i8] c"\22 y [build] target = \22\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [1 x i8] c"\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [1 x i8] c"\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [1 x i8] c"\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [1 x i8] c"\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [57 x i8] c"# nyx.lock — auto-generated by nyx build, do not edit\0a\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [11 x i8] c"[package]\0a\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [9 x i8] c"name = \22\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [12 x i8] c"version = \22\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [9 x i8] c"main = \22\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [17 x i8] c"Adding package: \00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [1 x i8] c"\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [3 x i8] c" =\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [12 x i8] c"  Package '\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [27 x i8] c"' is already a dependency.\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [19 x i8] c"  Using existing: \00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [13 x i8] c"  Fetching: \00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [2 x i8] c" \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [26 x i8] c"  error: could not fetch \00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [7 x i8] c" from \00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [15 x i8] c"[dependencies]\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [19 x i8] c"  Updated nyx.toml\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [10 x i8] c"Package '\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [9 x i8] c"' added.\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [1 x i8] c"\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [1 x i8] c"\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [2 x i8] c".\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [1 x i8] c"\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [12 x i8] c" nyx-lang: \00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [3 x i8] c"en\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [11 x i8] c"nyx-lang: \00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [3 x i8] c"en\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [3 x i8] c"en\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [3 x i8] c"es\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [3 x i8] c"es\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [3 x i8] c"en\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [1 x i8] c"\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [21 x i8] c"/templates/gitignore\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [11 x i8] c"{{binary}}\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [1 x i8] c"\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [2 x i8] c",\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [28 x i8] c"error: --agent inválido: '\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [46 x i8] c"' (valores válidos: claude, cursor, copilot)\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [72 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot]\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [1 x i8] c"\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [1 x i8] c"\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [20 x i8] c"/templates/adapters\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c",\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [1 x i8] c"\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [2 x i8] c"/\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [2 x i8] c".\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [4 x i8] c".md\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [10 x i8] c"/.github'\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [44 x i8] c"warning: falta la plantilla del adaptador '\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [20 x i8] c") — no se sembró\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [2 x i8] c"/\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [74 x i8] c"error: no encuentro la toolchain de Nyx (NYX_HOME vacío o sin templates/\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [84 x i8] c"/): el contexto para agentes (AGENTS.md, CAPABILITIES.md, docs/nyx/) NO se sembró.\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [82 x i8] c"  Exporta NYX_HOME (o reinstala con install.sh) y ejecuta: nyx update --sync-docs\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [17 x i8] c"/CAPABILITIES.md\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides'\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [20 x i8] c"/en/docs/nyx/LLM.md\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [17 x i8] c"/docs/nyx/LLM.md\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [14 x i8] c"error: falta \00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [71 x i8] c" en la toolchain: docs/nyx/LLM.md (la referencia densa) NO se sembró.\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [111 x i8] c"  Reinstala con install.sh (o ejecuta make install-local desde el monorepo) y después: nyx update --sync-docs\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [17 x i8] c"/docs/nyx/guides\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [2 x i8] c"/\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides/\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [28 x i8] c"GENERATED by `nyx sdd init`\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [3 x i8] c"es\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [28 x i8] c"  skipped (already there): \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [25 x i8] c"  salteado (ya existe): \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [2 x i8] c"/\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [27 x i8] c"error: falta la plantilla \00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [19 x i8] c" en la toolchain: \00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [16 x i8] c" NO se sembró.\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [3 x i8] c"  \00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [1 x i8] c"\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [1 x i8] c"\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [20 x i8] c"# Evidence — nyx \00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [21 x i8] c"# Evidencia — nyx \00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [7 x i8] c"\0a<!-- \00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [110 x i8] c" from the gotcha table of the installed toolchain — do not edit by hand; `nyx update` regenerates it. -->\0a\0a\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [319 x i8] c"Traps and rules that are LIVE in the toolchain this project was seeded with. Each\0aline carries the stable id, the anchor term to look up in `AGENTS.md` and\0a`docs/nyx/LLM.md`, and the test in the language repo that proves it. This file is\0aevidence, not advice: if a line here contradicts a manual, the manual is stale.\0a\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [334 x i8] c"Trampas y reglas VIVAS en la toolchain con la que se sembró este proyecto. Cada\0alínea trae el id estable, el término ancla para buscar en `AGENTS.md` y en\0a`docs/nyx/LLM.md`, y el test del repo del lenguaje que la prueba. Este archivo es\0aevidencia, no consejo: si una línea de acá contradice a un manual, el manual quedó viejo.\0a\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [1 x i8] c"\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [3 x i8] c"id\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [6 x i8] c"since\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [5 x i8] c"test\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [3 x i8] c"es\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [5 x i8] c"** (\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [9 x i8] c", since \00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [7 x i8] c") — \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [14 x i8] c" — anchor `\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [2 x i8] c"`\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [12 x i8] c" — test `\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [14 x i8] c"\0a## Retired\0a\0a\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [16 x i8] c"\0a## Retirados\0a\0a\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [139 x i8] c"These were real traps and are not any more: if a manual, a blog post or an older\0aagent still repeats them, it is wrong for this version.\0a\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [150 x i8] c"Estas fueron trampas reales y ya no lo son: si un manual, un artículo o un agente\0aviejo las sigue repitiendo, está equivocado para esta versión.\0a\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [1 x i8] c"\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [3 x i8] c"id\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [3 x i8] c"es\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [14 x i8] c"** (fixed in \00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [7 x i8] c") — \00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [4 x i8] c".md\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [1 x i8] c"\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [4 x i8] c"// \00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [80 x i8] c" from the installed toolchain's gotcha table — regenerate with `nyx update`.\0a\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [96 x i8] c"// Edit it and it becomes yours: with this header gone, `nyx sdd init` never touches it again.\0a\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [72 x i8] c"// Each block greps src/ for a trap the compiler cannot catch for you.\0a\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [20 x i8] c"import \22std/regex\22\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [83 x i8] c"// `nyx test` compiles and runs every test INSIDE the toolchain (cwd = NYX_HOME),\0a\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [85 x i8] c"// not inside the project: a bare readdir(\22src\22) would read the wrong directory and\0a\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [83 x i8] c"// this file would pass without looking at anything. The project directory is the\0a\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [83 x i8] c"// one the runner came from (OLDPWD). If it cannot be found, the first test below\0a\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [56 x i8] c"// FAILS out loud instead of passing on an empty scan.\0a\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [31 x i8] c"fn project_root() -> String {\0a\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [47 x i8] c"    if file_exists(\22nyx.toml\22) { return \22.\22 }\0a\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [40 x i8] c"    let old: String = getenv(\22OLDPWD\22)\0a\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [20 x i8] c"    if old != \22\22 {\0a\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [58 x i8] c"        if file_exists(old + \22/nyx.toml\22) { return old }\0a\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [15 x i8] c"    return \22\22\0a\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [79 x i8] c"// Every .nx under `dir`, recursively. readdir() never returns \22.\22 or \22..\22; a\0a\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [57 x i8] c"// directory is told apart by file_exists(path + \22/.\22).\0a\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [37 x i8] c"fn nx_files(dir: String) -> Array {\0a\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [25 x i8] c"    var out: Array = []\0a\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [49 x i8] c"    if file_exists(dir) == false { return out }\0a\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [39 x i8] c"    let entries: Array = readdir(dir)\0a\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [34 x i8] c"    while i < entries.length() {\0a\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [36 x i8] c"        let e: String = entries[i]\0a\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [39 x i8] c"        let p: String = dir + \22/\22 + e\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [32 x i8] c"        if e.endsWith(\22.nx\22) {\0a\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [25 x i8] c"            out.push(p)\0a\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [18 x i8] c"        } else {\0a\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [40 x i8] c"            if file_exists(p + \22/.\22) {\0a\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [46 x i8] c"                let sub: Array = nx_files(p)\0a\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [32 x i8] c"                var j: int = 0\0a\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [42 x i8] c"                while j < sub.length() {\0a\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [44 x i8] c"                    let s: String = sub[j]\0a\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [33 x i8] c"                    out.push(s)\0a\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [31 x i8] c"                    j = j + 1\0a\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [19 x i8] c"                }\0a\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [15 x i8] c"            }\0a\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [16 x i8] c"    return out\0a\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [77 x i8] c"// Lines of src/ matching `pattern`, as `src/file.nx:LINE` (relative to the\0a\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [53 x i8] c"// project, so the message is a path you can open).\0a\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [45 x i8] c"fn grep_sources(pattern: String) -> Array {\0a\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [26 x i8] c"    var hits: Array = []\0a\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [35 x i8] c"    if root == \22\22 { return hits }\0a\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [48 x i8] c"    let files: Array = nx_files(root + \22/src\22)\0a\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [20 x i8] c"    var f: int = 0\0a\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [32 x i8] c"    while f < files.length() {\0a\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [37 x i8] c"        let path: String = files[f]\0a\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [34 x i8] c"        var shown: String = path\0a\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [101 x i8] c"        if path.startsWith(root + \22/\22) { shown = path.substring(root.length() + 1, path.length()) }\0a\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [56 x i8] c"        let lines: Array = read_file(path).split(\22\5cn\22)\0a\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [24 x i8] c"        var i: int = 0\0a\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [36 x i8] c"        while i < lines.length() {\0a\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [41 x i8] c"            let line: String = lines[i]\0a\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [58 x i8] c"            let scanned: String = gotcha_scan_line(line)\0a\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [99 x i8] c"            if regex_is_match(scanned, pattern) { hits.push(shown + \22:\22 + int_to_string(i + 1)) }\0a\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [23 x i8] c"            i = i + 1\0a\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [19 x i8] c"        f = f + 1\0a\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [17 x i8] c"    return hits\0a\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [52 x i8] c"test \22the project sources are visible from here\22 {\0a\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [126 x i8] c"    assert(root != \22\22, \22cannot find the project root (no nyx.toml): every check below would pass without scanning anything\22)\0a\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [89 x i8] c"    assert(file_exists(root + \22/src\22), \22no src/ in the project root: nothing to check\22)\0a\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [1 x i8] c"\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [3 x i8] c"id\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [14 x i8] c"test \22gotcha \00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [3 x i8] c": \00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [5 x i8] c"\22 {\0a\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [37 x i8] c"    let hits: Array = grep_sources(\22\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [33 x i8] c"    assert(hits.length() == 0, \22\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [3 x i8] c" (\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [28 x i8] c") at: \22 + hits.join(\22, \22))\0a\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [47 x i8] c"test \22every file in tests/ has test blocks\22 {\0a\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [50 x i8] c"    let files: Array = nx_files(root + \22/tests\22)\0a\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [32 x i8] c"    while i < files.length() {\0a\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [34 x i8] c"        let p: String = files[i]\0a\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [114 x i8] c"        assert(read_file(p).indexOf(\22test \5c\22\22) >= 0, p + \22 has no test blocks: nyx test would skip it silently\22)\0a\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [30 x i8] c"warning: no hay AGENTS.md en \00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [80 x i8] c": el disparador del andamiaje NO se insertó (ejecuta `nyx update --sync-docs`)\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [21 x i8] c"<!-- sdd:trigger -->\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [47 x i8] c"  skipped (already there): AGENTS.md (trigger)\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [47 x i8] c"  salteado (ya existe): AGENTS.md (disparador)\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [22 x i8] c"<!-- sdd:trigger -->\0a\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [3 x i8] c"es\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [150 x i8] c"- Si `docs/constitution.md` todavía contiene `SDD_INCOMPLETE`, no escribas código: sigue `docs/sdd/onboarding.md` y ofrece al usuario completarla.\0a\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [122 x i8] c"- Ante una funcionalidad nueva sin `specs/NNN-feature/spec.md`, ofrece escribir la spec primero (ver `specs/README.md`).\0a\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [152 x i8] c"- If `docs/constitution.md` still contains `SDD_INCOMPLETE`, do not write code yet: follow `docs/sdd/onboarding.md` and offer the user to complete it.\0a\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [113 x i8] c"- For a new feature with no `specs/NNN-feature/spec.md`, offer to write the spec first (see `specs/README.md`).\0a\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [36 x i8] c"  AGENTS.md (+2 lines: the trigger)\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [40 x i8] c"  AGENTS.md (+2 líneas: el disparador)\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [16 x i8] c"/docs/evidence'\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [59 x i8] c"  skipped (yours, no GENERATED header): docs/evidence/nyx-\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [4 x i8] c".md\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [65 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): docs/evidence/nyx-\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [4 x i8] c".md\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [34 x i8] c"  regenerated: docs/evidence/nyx-\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [4 x i8] c".md\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [33 x i8] c"  regenerado: docs/evidence/nyx-\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [4 x i8] c".md\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [41 x i8] c"  already up to date: docs/evidence/nyx-\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [4 x i8] c".md\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [39 x i8] c"  ya está al día: docs/evidence/nyx-\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [4 x i8] c".md\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [42 x i8] c"  regenerated: tests/constitution_test.nx\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [41 x i8] c"  regenerado: tests/constitution_test.nx\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [67 x i8] c"  skipped (yours, no GENERATED header): tests/constitution_test.nx\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [73 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): tests/constitution_test.nx\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [49 x i8] c"  already up to date: tests/constitution_test.nx\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [47 x i8] c"  ya está al día: tests/constitution_test.nx\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [12 x i8] c"/templates/\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [5 x i8] c"/sdd\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [1 x i8] c"\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [17 x i8] c"/constitution.md\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [49 x i8] c"error: the SDD scaffolding templates (templates/\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [59 x i8] c"/sdd/) are missing from the toolchain: NOTHING was seeded.\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [61 x i8] c"error: no encuentro las plantillas del andamiaje (templates/\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [44 x i8] c"/sdd/) en la toolchain: NO se sembró nada.\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [104 x i8] c"  Reinstall with install.sh (or run `make install-local` from the monorepo) and try again: nyx sdd init\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [109 x i8] c"  Reinstala con install.sh (o corre `make install-local` desde el monorepo) e intenta de nuevo: nyx sdd init\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [13 x i8] c"/docs/adr' '\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [13 x i8] c"/docs/sdd' '\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [18 x i8] c"/docs/evidence' '\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [10 x i8] c"/specs' '\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [8 x i8] c"/tests'\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [40 x i8] c"SDD scaffolding (optional, reversible):\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [38 x i8] c"Andamiaje SDD (opcional, reversible):\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [16 x i8] c"constitution.md\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [22 x i8] c"/docs/constitution.md\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [12 x i8] c"glossary.md\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [18 x i8] c"/docs/glossary.md\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [16 x i8] c"adr-template.md\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [27 x i8] c"/docs/adr/0000-template.md\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [16 x i8] c"specs-README.md\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [17 x i8] c"/specs/README.md\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [14 x i8] c"onboarding.md\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [24 x i8] c"/docs/sdd/onboarding.md\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [4 x i8] c".md\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [3 x i8] c"  \00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [3 x i8] c"  \00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [1 x i8] c"\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [94 x i8] c"  Next: an agent reading AGENTS.md will offer to complete docs/constitution.md (7 questions).\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [98 x i8] c"  Ahora: un agente que lea AGENTS.md va a ofrecerte completar docs/constitution.md (7 preguntas).\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [89 x i8] c"  Reversible: to go back to a plain init, delete docs/constitution.md, docs/glossary.md,\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [90 x i8] c"  Reversible: para volver a un init normal, borra docs/constitution.md, docs/glossary.md,\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [78 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ and tests/constitution_test.nx\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [76 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ y tests/constitution_test.nx\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [1 x i8] c"\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [19 x i8] c"error: directory '\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [17 x i8] c"' already exists\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [10 x i8] c"/nyx.toml\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [13 x i8] c"/src/main.nx\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [12 x i8] c"  Created: \00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [2 x i8] c"/\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [15 x i8] c"  Next:    cd \00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [12 x i8] c" && nyx run\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [31 x i8] c"error: nyx.toml already exists\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [6 x i8] c"myapp\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [13 x i8] c"mkdir -p src\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [2 x i8] c".\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [2 x i8] c".\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [33 x i8] c"  Created: nyx.toml, src/main.nx\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [21 x i8] c"  Build:   nyx build\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [19 x i8] c"  Run:     nyx run\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [14 x i8] c"   resolving \00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [5 x i8] c"http\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [4 x i8] c"git\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [2 x i8] c" \00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [26 x i8] c"  error: failed to fetch \00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [7 x i8] c" from \00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [12 x i8] c"  Fetched: \00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [128 x i8] c"use of undefined value|defined with type .* but expected|expected instruction|invalid redefinition of|invalid forward reference\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [37 x i8] c"undefined reference|undefined symbol\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [14 x i8] c"if grep -qE '\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [99 x i8] c"echo \22  -> esto es casi seguro un BUG del compilador Nyx (IR invalido), no de tu codigo (archivo: \00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [74 x i8] c"). Repórtalo con 'nyx report' (el reporte incluye contexto util).\22 >&2; \00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [6 x i8] c"else \00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [91 x i8] c"echo \22  -> this is almost certainly a Nyx compiler BUG (invalid IR), not your code (file: \00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [76 x i8] c"). Report it with 'nyx report' (the report includes useful context).\22 >&2; \00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [16 x i8] c"elif grep -qE '\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [176 x i8] c"echo \22  -> simbolo no encontrado al linkear: si es una funcion extern C tuya, revisa el nombre/lib; si es de la stdlib de Nyx, es un bug -- repórtalo con 'nyx report'.\22 >&2; \00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [6 x i8] c"else \00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [184 x i8] c"echo \22  -> symbol not found at link time: if this is your own extern C function, check the name/lib; if it is a stdlib function, it is a Nyx bug -- report it with 'nyx report'.\22 >&2; \00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [6 x i8] c"else \00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [127 x i8] c"echo \22  -> fallo de link sin patron reconocido; si sospechas que es un bug del compilador, repórtalo con 'nyx report'.\22 >&2; \00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [6 x i8] c"else \00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [119 x i8] c"echo \22  -> link failure with no recognized pattern; if you suspect a compiler bug, report it with 'nyx report'.\22 >&2; \00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [1 x i8] c"\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [1 x i8] c"\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [1 x i8] c"\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [3 x i8] c" [\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [2 x i8] c"]\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [3 x i8] c" v\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [1 x i8] c"\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [1 x i8] c"\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [1 x i8] c"\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [1 x i8] c"\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [1 x i8] c"\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [1 x i8] c"\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [1 x i8] c"\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [1 x i8] c"\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [2 x i8] c".\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [1 x i8] c"\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [12 x i8] c" \22$SRC.ll\22 \00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c \00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [36 x i8] c"$RT/net.c $RT/thread.c $RT/regex.c \00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c \00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [55 x i8] c"$RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [39 x i8] c"$RT/compress.c $RT/random.c $RT/url.c \00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [71 x i8] c"$RT/msgpack.c $RT/websocket.c $RT/persist.c $RT/http2.c $RT/process.c \00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [21 x i8] c"$RT/llama_adapter.c \00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [19 x i8] c"$RT/os/os_posix.c \00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [1 x i8] c"\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [2 x i8] c"#\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [1 x i8] c"\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [1 x i8] c"\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [2 x i8] c"/\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [1 x i8] c"\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [3 x i8] c"./\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [1 x i8] c"\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [1 x i8] c"\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [1 x i8] c"\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [1 x i8] c"/"
@.str695 = private unnamed_addr constant [2 x i8] c"-\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [1 x i8] c"\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [1 x i8] c"\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [1 x i8] c"\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [73 x i8] c"> Completa las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [80 x i8] c"FRICTION.md ya existe con contenido — avísale al usuario para que lo revise.\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [78 x i8] c"creado FRICTION.md — completa las secciones (tu asistente IA puede hacerlo)\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [72 x i8] c"y AVÍSALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [1 x i8] c"\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [66 x i8] c"error: el reporte parece vacío — completa la plantilla primero\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [1 x i8] c"\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [1 x i8] c"\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [1 x i8] c"\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [1 x i8] c"\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [1 x i8] c"\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [1 x i8] c"\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [4 x i8] c"std\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [2 x i8] c".\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [1 x i8] c"\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [1 x i8] c"\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [5 x i8] c"http\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [4 x i8] c"web\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [3 x i8] c"db\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [5 x i8] c"json\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [5 x i8] c"file\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [3 x i8] c"io\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [5 x i8] c"path\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [4 x i8] c"net\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [4 x i8] c"url\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [6 x i8] c"async\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [7 x i8] c"random\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [5 x i8] c"time\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [7 x i8] c"string\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [4 x i8] c"set\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [4 x i8] c"box\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [5 x i8] c"args\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [4 x i8] c"log\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [1 x i8] c"\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [1 x i8] c"("
@.str828 = private unnamed_addr constant [1 x i8] c")"
@.str829 = private unnamed_addr constant [2 x i8] c"/\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [1 x i8] c"\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [1 x i8] c"\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [4 x i8] c"///\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [1 x i8] c"\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [2 x i8] c" \00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [2 x i8] c"`\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [6 x i8] c" — \00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [1 x i8] c"("
@.str843 = private unnamed_addr constant [1 x i8] c"{"
@.str844 = private unnamed_addr constant [1 x i8] c"\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [1 x i8] c"\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [1 x i8] c"\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [2 x i8] c"1\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [2 x i8] c"s\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [2 x i8] c")\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [1 x i8] c"\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [6 x i8] c" — \00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [1 x i8] c"\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [1 x i8] c"\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [1 x i8] c"\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [4 x i8] c"## \00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [1 x i8] c"\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [3 x i8] c" (\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [6 x i8] c"build\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [1 x i8] c"\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [1 x i8] c"\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [1 x i8] c"\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [6 x i8] c"build\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [4 x i8] c"run\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [5 x i8] c"test\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [3 x i8] c"--\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [1 x i8] c"\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [1 x i8] c"-"
@.str920 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [1 x i8] c"\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [1 x i8] c"\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [6 x i8] c" — \00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [5 x i8] c"init\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [1 x i8] c"\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [1 x i8] c"\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [1 x i8] c"\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [1 x i8] c"\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [1 x i8] c"\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [1 x i8] c"\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [3 x i8] c"--\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [1 x i8] c"\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [1 x i8] c"\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [1 x i8] c"\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [3 x i8] c"es\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [3 x i8] c"es\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [1 x i8] c"\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [3 x i8] c"en\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [3 x i8] c"en\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [3 x i8] c"es\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [1 x i8] c"\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [2 x i8] c".\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [1 x i8] c"\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [1 x i8] c"\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [5 x i8] c"init\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [2 x i8] c".\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [2 x i8] c".\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [2 x i8] c".\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [2 x i8] c".\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [1 x i8] c"\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [4 x i8] c"add\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [1 x i8] c"\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [8 x i8] c"project\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [1 x i8] c"\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [1 x i8] c"\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [1 x i8] c"\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [1 x i8] c"\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [1 x i8] c"\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [1 x i8] c"\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [7 x i8] c"report\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [1 x i8] c"\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [1 x i8] c"\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [1 x i8] c"\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [1 x i8] c"\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [1 x i8] c"\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [1 x i8] c"\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [1 x i8] c"\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [1 x i8] c"\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [1 x i8] c"\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [2 x i8] c" \00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [1 x i8] c"\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [1 x i8] c"\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [2 x i8] c" \00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1061.c = internal global %nyx_string* null
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

declare { i64, i8* }* @gotchas_table(...)
declare %nyx_string* @gotcha_field(...)
declare %nyx_string* @gotcha_scan_src(...)

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

define internal { i64, i8* }* @std_resp__resp_read_command(
i64 %fd.param) {
  %fd.ptr = alloca i64
  store i64 %fd.param, i64* %fd.ptr
  %160 = load i64, i64* %fd.ptr
  %161 = call { i64, i8* }* @std_resp__resp_read_framed(i64 %160, i1 0)
  ret { i64, i8* }* %161
}

define internal %nyx_string* @std_resp__resp_simple_string(
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

define internal %nyx_string* @std_resp__resp_error(
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

define internal %nyx_string* @std_resp__resp_integer(
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

define internal %nyx_string* @std_resp__resp_bulk_string(
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

define internal %nyx_string* @std_resp__resp_null_bulk(
) {
  %218 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %218, i64 5)
  ret %nyx_string* %219
}

define internal %nyx_string* @std_resp__resp_array_header(
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

define internal %nyx_string* @std_resp__resp_bulk_array(
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
  %245 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %245, i64 1)
  %247 = alloca %nyx_string*
  store %nyx_string* %246, %nyx_string** %247
  %248 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %248, i64 2)
  %250 = alloca %nyx_string*
  store %nyx_string* %249, %nyx_string** %250
  %251 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %252 = call i64 @nyx_array_length({ i64, i8* }* %251)
  %for_idx74 = alloca i64
  store i64 0, i64* %for_idx74
  %253 = call i8* @llvm.stacksave()
  br label %for_cond70
for_cond70:
  %254 = load i64, i64* %for_idx74
  %255 = icmp slt i64 %254, %252
  br i1 %255, label %for_body71, label %for_end72
for_body71:
  call void @llvm.stackrestore(i8* %253)
  %256 = call i64 @nyx_array_get({ i64, i8* }* %251, i64 %254)
  %257 = inttoptr i64 %256 to %nyx_string*
  %258 = alloca %nyx_string*
  store %nyx_string* %257, %nyx_string** %258
  %259 = load i8*, i8** %234
  %260 = load %nyx_string*, %nyx_string** %247
  call void @nyx_sb_append(i8* %259, %nyx_string* %260)
  %261 = load i8*, i8** %234
  %262 = load %nyx_string*, %nyx_string** %258
  %263 = call i64 @nyx_string_byte_length(%nyx_string* %262)
  %264 = call %nyx_string* @nyx_string_from_int(i64 %263)
  call void @nyx_sb_append(i8* %261, %nyx_string* %264)
  %265 = load i8*, i8** %234
  %266 = load %nyx_string*, %nyx_string** %250
  call void @nyx_sb_append(i8* %265, %nyx_string* %266)
  %267 = load i8*, i8** %234
  %268 = load %nyx_string*, %nyx_string** %258
  call void @nyx_sb_append(i8* %267, %nyx_string* %268)
  %269 = load i8*, i8** %234
  %270 = load %nyx_string*, %nyx_string** %250
  call void @nyx_sb_append(i8* %269, %nyx_string* %270)
  br label %for_step73
for_step73:
  %271 = load i64, i64* %for_idx74
  %272 = add i64 %271, 1
  store i64 %272, i64* %for_idx74
  br label %for_cond70
for_end72:
  %273 = load i8*, i8** %234
  %274 = call %nyx_string* @nyx_sb_to_string(i8* %273)
  ret %nyx_string* %274
}

define internal %nyx_string* @std_resp__resp_mixed_array(
{ i64, i8* }* %items.param, { i64, i8* }* %flags.param) {
  %items.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %items.param, { i64, i8* }** %items.ptr
  %flags.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %flags.param, { i64, i8* }** %flags.ptr
  %275 = call i8* @nyx_sb_new(i64 1024)
  %276 = alloca i8*
  store i8* %275, i8** %276
  %277 = load i8*, i8** %276
  %278 = getelementptr [2 x i8], [2 x i8]* @.str19, i32 0, i32 0
  %279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %278, i64 1)
  call void @nyx_sb_append(i8* %277, %nyx_string* %279)
  %280 = load i8*, i8** %276
  %281 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %282 = call i64 @nyx_array_length({ i64, i8* }* %281)
  %283 = call %nyx_string* @nyx_string_from_int(i64 %282)
  call void @nyx_sb_append(i8* %280, %nyx_string* %283)
  %284 = load i8*, i8** %276
  %285 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %285, i64 2)
  call void @nyx_sb_append(i8* %284, %nyx_string* %286)
  %287 = alloca i64
  store i64 0, i64* %287
  %288 = getelementptr [2 x i8], [2 x i8]* @.str21, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %288, i64 1)
  %290 = alloca %nyx_string*
  store %nyx_string* %289, %nyx_string** %290
  %291 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %291, i64 2)
  %293 = alloca %nyx_string*
  store %nyx_string* %292, %nyx_string** %293
  %294 = getelementptr [6 x i8], [6 x i8]* @.str23, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %294, i64 5)
  %296 = alloca %nyx_string*
  store %nyx_string* %295, %nyx_string** %296
  %297 = call i8* @llvm.stacksave()
  br label %while_cond75
while_cond75:
  %298 = load i64, i64* %287
  %299 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %300 = call i64 @nyx_array_length({ i64, i8* }* %299)
  %301 = icmp slt i64 %298, %300
  br i1 %301, label %while_body76, label %while_end77
while_body76:
  call void @llvm.stackrestore(i8* %297)
  %302 = load { i64, i8* }*, { i64, i8* }** %flags.ptr
  %303 = load i64, i64* %287
  %304 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %302, i64 %303)
  %305 = alloca i64
  store i64 %304, i64* %305
  %306 = load i64, i64* %305
  %307 = icmp eq i64 %306, 1
  br i1 %307, label %then78, label %else79
then78:
  %308 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %309 = load i64, i64* %287
  %310 = call i64 @nyx_array_get_checked({ i64, i8* }* %308, i64 %309, i64 2)
  %311 = inttoptr i64 %310 to %nyx_string*
  %312 = alloca %nyx_string*
  store %nyx_string* %311, %nyx_string** %312
  %313 = load i8*, i8** %276
  %314 = load %nyx_string*, %nyx_string** %290
  call void @nyx_sb_append(i8* %313, %nyx_string* %314)
  %315 = load i8*, i8** %276
  %316 = load %nyx_string*, %nyx_string** %312
  %317 = call i64 @nyx_string_byte_length(%nyx_string* %316)
  %318 = call %nyx_string* @nyx_string_from_int(i64 %317)
  call void @nyx_sb_append(i8* %315, %nyx_string* %318)
  %319 = load i8*, i8** %276
  %320 = load %nyx_string*, %nyx_string** %293
  call void @nyx_sb_append(i8* %319, %nyx_string* %320)
  %321 = load i8*, i8** %276
  %322 = load %nyx_string*, %nyx_string** %312
  call void @nyx_sb_append(i8* %321, %nyx_string* %322)
  %323 = load i8*, i8** %276
  %324 = load %nyx_string*, %nyx_string** %293
  call void @nyx_sb_append(i8* %323, %nyx_string* %324)
  br label %merge80
else79:
  %325 = load i8*, i8** %276
  %326 = load %nyx_string*, %nyx_string** %296
  call void @nyx_sb_append(i8* %325, %nyx_string* %326)
  br label %merge80
merge80:
  %327 = load i64, i64* %287
  %328 = add i64 %327, 1
  store i64 %328, i64* %287
  br label %while_cond75
while_end77:
  %329 = load i8*, i8** %276
  %330 = call %nyx_string* @nyx_sb_to_string(i8* %329)
  ret %nyx_string* %330
}

define i64 @kv_connect_auth(
%nyx_string* %host.param, i64 %port.param, %nyx_string* %token.param) {
  %host.ptr = alloca %nyx_string*
  store %nyx_string* %host.param, %nyx_string** %host.ptr
  %port.ptr = alloca i64
  store i64 %port.param, i64* %port.ptr
  %token.ptr = alloca %nyx_string*
  store %nyx_string* %token.param, %nyx_string** %token.ptr
  %331 = load %nyx_string*, %nyx_string** %host.ptr
  %332 = load i64, i64* %port.ptr
  %333 = call i64 @nyx_tls_connect(%nyx_string* %331, i64 %332)
  %334 = alloca i64
  store i64 %333, i64* %334
  %335 = load i64, i64* %334
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %then81, label %else82
then81:
  %337 = sub i64 0, 1
  ret i64 %337
else82:
  br label %merge83
merge83:
  %338 = load %nyx_string*, %nyx_string** %token.ptr
  %339 = call i64 @nyx_string_byte_length(%nyx_string* %338)
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %then84, label %else85
then84:
  %341 = load i64, i64* %334
  ret i64 %341
else85:
  br label %merge86
merge86:
  %342 = call { i64, i8* }* @nyx_array_new_ptr()
  %343 = getelementptr [5 x i8], [5 x i8]* @.str24, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %343, i64 4)
  %345 = ptrtoint %nyx_string* %344 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %342, i64 %345, i64 2)
  %346 = load %nyx_string*, %nyx_string** %token.ptr
  %347 = ptrtoint %nyx_string* %346 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %342, i64 %347, i64 2)
  %348 = alloca { i64, i8* }*
  store { i64, i8* }* %342, { i64, i8* }** %348
  %349 = load i64, i64* %334
  %350 = load { i64, i8* }*, { i64, i8* }** %348
  %351 = call %nyx_string* @kv_cmd(i64 %349, { i64, i8* }* %350)
  %352 = alloca %nyx_string*
  store %nyx_string* %351, %nyx_string** %352
  %353 = load %nyx_string*, %nyx_string** %352
  %354 = getelementptr [3 x i8], [3 x i8]* @.str25, i32 0, i32 0
  %355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %354, i64 2)
  %356 = call i1 @nyx_string_equals(%nyx_string* %353, %nyx_string* %355)
  %357 = xor i1 %356, true
  br i1 %357, label %then87, label %else88
then87:
  %358 = load i64, i64* %334
  call void @nyx_tls_close(i64 %358)
  %359 = sub i64 0, 1
  ret i64 %359
else88:
  br label %merge89
merge89:
  %360 = load i64, i64* %334
  ret i64 %360
}

define i64 @kv_close(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %361 = load i64, i64* %h.ptr
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %then90, label %else91
then90:
  %363 = load i64, i64* %h.ptr
  call void @nyx_tls_close(i64 %363)
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
  %364 = call i8* @nyx_sb_new(i64 1024)
  %365 = alloca i8*
  store i8* %364, i8** %365
  %366 = alloca i1
  store i1 0, i1* %366
  %367 = alloca i1
  store i1 0, i1* %367
  %368 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %368, i64 1)
  %370 = alloca %nyx_string*
  store %nyx_string* %369, %nyx_string** %370
  %371 = call i8* @llvm.stacksave()
  br label %while_cond93
while_cond93:
  %372 = load i1, i1* %367
  %373 = xor i1 %372, true
  br i1 %373, label %while_body94, label %while_end95
while_body94:
  call void @llvm.stackrestore(i8* %371)
  %374 = load i64, i64* %h.ptr
  %375 = call %nyx_string* @nyx_tls_read(i64 %374, i64 1)
  %376 = alloca %nyx_string*
  store %nyx_string* %375, %nyx_string** %376
  %377 = load %nyx_string*, %nyx_string** %376
  %378 = call i64 @nyx_string_byte_length(%nyx_string* %377)
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %then96, label %else97
then96:
  %380 = load i8*, i8** %365
  %381 = call %nyx_string* @nyx_sb_to_string(i8* %380)
  ret %nyx_string* %381
else97:
  br label %merge98
merge98:
  %382 = load %nyx_string*, %nyx_string** %376
  %383 = call i8 @nyx_string_char_at(%nyx_string* %382, i64 0)
  %384 = zext i8 %383 to i64
  %385 = alloca i64
  store i64 %384, i64* %385
  %386 = alloca i1
  store i1 false, i1* %386
  %387 = load i1, i1* %366
  br i1 %387, label %sc_and_rhs99, label %sc_and_end100
sc_and_rhs99:
  %388 = load i64, i64* %385
  %389 = icmp eq i64 %388, 10
  store i1 %389, i1* %386
  br label %sc_and_end100
sc_and_end100:
  %390 = load i1, i1* %386
  br i1 %390, label %then101, label %else102
then101:
  store i1 1, i1* %367
  br label %merge103
else102:
  %391 = load i1, i1* %366
  br i1 %391, label %then104, label %else105
then104:
  %392 = load i8*, i8** %365
  %393 = load %nyx_string*, %nyx_string** %370
  call void @nyx_sb_append(i8* %392, %nyx_string* %393)
  store i1 0, i1* %366
  br label %merge106
else105:
  br label %merge106
merge106:
  %394 = load i64, i64* %385
  %395 = icmp eq i64 %394, 13
  br i1 %395, label %then107, label %else108
then107:
  store i1 1, i1* %366
  br label %merge109
else108:
  %396 = load i8*, i8** %365
  %397 = load %nyx_string*, %nyx_string** %376
  call void @nyx_sb_append(i8* %396, %nyx_string* %397)
  br label %merge109
merge109:
  br label %merge103
merge103:
  br label %while_cond93
while_end95:
  %398 = load i8*, i8** %365
  %399 = call %nyx_string* @nyx_sb_to_string(i8* %398)
  ret %nyx_string* %399
}

define internal %nyx_string* @read_bulk(
i64 %h.param, %nyx_string* %header.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %header.ptr = alloca %nyx_string*
  store %nyx_string* %header.param, %nyx_string** %header.ptr
  %400 = load %nyx_string*, %nyx_string** %header.ptr
  %401 = load %nyx_string*, %nyx_string** %header.ptr
  %402 = call i64 @nyx_string_byte_length(%nyx_string* %401)
  %403 = call %nyx_string* @nyx_string_substring(%nyx_string* %400, i64 1, i64 %402)
  %404 = call i64 @std_resp__resp_parse_len(%nyx_string* %403)
  %405 = alloca i64
  store i64 %404, i64* %405
  %406 = load i64, i64* %405
  %407 = icmp slt i64 %406, 0
  br i1 %407, label %then110, label %else111
then110:
  %408 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %408, i64 0)
  ret %nyx_string* %409
else111:
  br label %merge112
merge112:
  %410 = load i64, i64* %405
  %411 = icmp sgt i64 %410, 16777216
  br i1 %411, label %then113, label %else114
then113:
  %412 = getelementptr [1 x i8], [1 x i8]* @.str28, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %412, i64 0)
  ret %nyx_string* %413
else114:
  br label %merge115
merge115:
  %414 = load i64, i64* %405
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %then116, label %else117
then116:
  %416 = load i64, i64* %h.ptr
  %417 = call %nyx_string* @nyx_tls_read(i64 %416, i64 2)
  %418 = alloca %nyx_string*
  store %nyx_string* %417, %nyx_string** %418
  %419 = getelementptr [1 x i8], [1 x i8]* @.str29, i32 0, i32 0
  %420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %419, i64 0)
  ret %nyx_string* %420
else117:
  br label %merge118
merge118:
  %421 = load i64, i64* %h.ptr
  %422 = load i64, i64* %405
  %423 = call %nyx_string* @nyx_tls_read(i64 %421, i64 %422)
  %424 = alloca %nyx_string*
  store %nyx_string* %423, %nyx_string** %424
  %425 = load %nyx_string*, %nyx_string** %424
  %426 = call i64 @nyx_string_byte_length(%nyx_string* %425)
  %427 = load i64, i64* %405
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %then119, label %else120
then119:
  %429 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %429, i64 0)
  ret %nyx_string* %430
else120:
  br label %merge121
merge121:
  %431 = load i64, i64* %h.ptr
  %432 = call %nyx_string* @nyx_tls_read(i64 %431, i64 2)
  %433 = alloca %nyx_string*
  store %nyx_string* %432, %nyx_string** %433
  %434 = load %nyx_string*, %nyx_string** %424
  ret %nyx_string* %434
}

define internal i64 @send_cmd(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %435 = call i8* @nyx_sb_new(i64 1024)
  %436 = alloca i8*
  store i8* %435, i8** %436
  %437 = load i8*, i8** %436
  %438 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %438, i64 1)
  call void @nyx_sb_append(i8* %437, %nyx_string* %439)
  %440 = load i8*, i8** %436
  %441 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %442 = call i64 @nyx_array_length({ i64, i8* }* %441)
  %443 = call %nyx_string* @nyx_string_from_int(i64 %442)
  call void @nyx_sb_append(i8* %440, %nyx_string* %443)
  %444 = load i8*, i8** %436
  %445 = getelementptr [3 x i8], [3 x i8]* @.str32, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %445, i64 2)
  call void @nyx_sb_append(i8* %444, %nyx_string* %446)
  %447 = alloca i64
  store i64 0, i64* %447
  %448 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %448, i64 1)
  %450 = alloca %nyx_string*
  store %nyx_string* %449, %nyx_string** %450
  %451 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %451, i64 2)
  %453 = alloca %nyx_string*
  store %nyx_string* %452, %nyx_string** %453
  %454 = call i8* @llvm.stacksave()
  br label %while_cond122
while_cond122:
  %455 = load i64, i64* %447
  %456 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %457 = call i64 @nyx_array_length({ i64, i8* }* %456)
  %458 = icmp slt i64 %455, %457
  br i1 %458, label %while_body123, label %while_end124
while_body123:
  call void @llvm.stackrestore(i8* %454)
  %459 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %460 = load i64, i64* %447
  %461 = call i64 @nyx_array_get_checked({ i64, i8* }* %459, i64 %460, i64 2)
  %462 = inttoptr i64 %461 to %nyx_string*
  %463 = alloca %nyx_string*
  store %nyx_string* %462, %nyx_string** %463
  %464 = load i8*, i8** %436
  %465 = load %nyx_string*, %nyx_string** %450
  call void @nyx_sb_append(i8* %464, %nyx_string* %465)
  %466 = load i8*, i8** %436
  %467 = load %nyx_string*, %nyx_string** %463
  %468 = call i64 @nyx_string_byte_length(%nyx_string* %467)
  %469 = call %nyx_string* @nyx_string_from_int(i64 %468)
  call void @nyx_sb_append(i8* %466, %nyx_string* %469)
  %470 = load i8*, i8** %436
  %471 = load %nyx_string*, %nyx_string** %453
  call void @nyx_sb_append(i8* %470, %nyx_string* %471)
  %472 = load i8*, i8** %436
  %473 = load %nyx_string*, %nyx_string** %463
  call void @nyx_sb_append(i8* %472, %nyx_string* %473)
  %474 = load i8*, i8** %436
  %475 = load %nyx_string*, %nyx_string** %453
  call void @nyx_sb_append(i8* %474, %nyx_string* %475)
  %476 = load i64, i64* %447
  %477 = add i64 %476, 1
  store i64 %477, i64* %447
  br label %while_cond122
while_end124:
  %478 = load i64, i64* %h.ptr
  %479 = load i8*, i8** %436
  %480 = call %nyx_string* @nyx_sb_to_string(i8* %479)
  %481 = call i64 @nyx_tls_write(i64 %478, %nyx_string* %480)
  ret i64 0
}

define %nyx_string* @kv_cmd(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %482 = load i64, i64* %h.ptr
  %483 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %484 = call i64 @send_cmd(i64 %482, { i64, i8* }* %483)
  %485 = load i64, i64* %h.ptr
  %486 = call %nyx_string* @tls_read_line_local(i64 %485)
  %487 = alloca %nyx_string*
  store %nyx_string* %486, %nyx_string** %487
  %488 = load %nyx_string*, %nyx_string** %487
  %489 = call i64 @nyx_string_byte_length(%nyx_string* %488)
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %then125, label %else126
then125:
  %491 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %491, i64 0)
  ret %nyx_string* %492
else126:
  br label %merge127
merge127:
  %493 = load %nyx_string*, %nyx_string** %487
  %494 = call i8 @nyx_string_char_at(%nyx_string* %493, i64 0)
  %495 = zext i8 %494 to i64
  %496 = alloca i64
  store i64 %495, i64* %496
  %497 = load i64, i64* %496
  %498 = icmp eq i64 %497, 36
  br i1 %498, label %then128, label %else129
then128:
  %499 = load i64, i64* %h.ptr
  %500 = load %nyx_string*, %nyx_string** %487
  %501 = call %nyx_string* @read_bulk(i64 %499, %nyx_string* %500)
  ret %nyx_string* %501
else129:
  br label %merge130
merge130:
  %502 = load i64, i64* %496
  %503 = icmp eq i64 %502, 45
  br i1 %503, label %then131, label %else132
then131:
  %504 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %504, i64 0)
  ret %nyx_string* %505
else132:
  br label %merge133
merge133:
  %506 = load %nyx_string*, %nyx_string** %487
  %507 = call i64 @nyx_string_byte_length(%nyx_string* %506)
  %508 = icmp sgt i64 %507, 1
  br i1 %508, label %then134, label %else135
then134:
  %509 = load %nyx_string*, %nyx_string** %487
  %510 = load %nyx_string*, %nyx_string** %487
  %511 = call i64 @nyx_string_byte_length(%nyx_string* %510)
  %512 = call %nyx_string* @nyx_string_substring(%nyx_string* %509, i64 1, i64 %511)
  ret %nyx_string* %512
else135:
  br label %merge136
merge136:
  %513 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %513, i64 0)
  ret %nyx_string* %514
}

define { i64, i8* }* @kv_cmd_array(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %515 = load i64, i64* %h.ptr
  %516 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %517 = call i64 @send_cmd(i64 %515, { i64, i8* }* %516)
  %518 = load i64, i64* %h.ptr
  %519 = call %nyx_string* @tls_read_line_local(i64 %518)
  %520 = alloca %nyx_string*
  store %nyx_string* %519, %nyx_string** %520
  %521 = call { i64, i8* }* @nyx_array_new_ptr()
  %522 = alloca { i64, i8* }*
  store { i64, i8* }* %521, { i64, i8* }** %522
  %523 = load %nyx_string*, %nyx_string** %520
  %524 = call i64 @nyx_string_byte_length(%nyx_string* %523)
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %then137, label %else138
then137:
  %526 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %526
else138:
  br label %merge139
merge139:
  %527 = load %nyx_string*, %nyx_string** %520
  %528 = call i8 @nyx_string_char_at(%nyx_string* %527, i64 0)
  %529 = zext i8 %528 to i64
  %530 = alloca i64
  store i64 %529, i64* %530
  %531 = load i64, i64* %530
  %532 = icmp ne i64 %531, 42
  br i1 %532, label %then140, label %else141
then140:
  %533 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %533
else141:
  br label %merge142
merge142:
  %534 = load %nyx_string*, %nyx_string** %520
  %535 = load %nyx_string*, %nyx_string** %520
  %536 = call i64 @nyx_string_byte_length(%nyx_string* %535)
  %537 = call %nyx_string* @nyx_string_substring(%nyx_string* %534, i64 1, i64 %536)
  %538 = call i64 @std_resp__resp_parse_len(%nyx_string* %537)
  %539 = alloca i64
  store i64 %538, i64* %539
  %540 = load i64, i64* %539
  %541 = icmp slt i64 %540, 0
  br i1 %541, label %then143, label %else144
then143:
  %542 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %542
else144:
  br label %merge145
merge145:
  %543 = alloca i64
  store i64 0, i64* %543
  %544 = call i8* @llvm.stacksave()
  br label %while_cond146
while_cond146:
  %545 = load i64, i64* %543
  %546 = load i64, i64* %539
  %547 = icmp slt i64 %545, %546
  br i1 %547, label %while_body147, label %while_end148
while_body147:
  call void @llvm.stackrestore(i8* %544)
  %548 = load i64, i64* %h.ptr
  %549 = call %nyx_string* @tls_read_line_local(i64 %548)
  %550 = alloca %nyx_string*
  store %nyx_string* %549, %nyx_string** %550
  %551 = load %nyx_string*, %nyx_string** %550
  %552 = call i64 @nyx_string_byte_length(%nyx_string* %551)
  %553 = icmp sgt i64 %552, 0
  br i1 %553, label %then149, label %else150
then149:
  %554 = load %nyx_string*, %nyx_string** %550
  %555 = call i8 @nyx_string_char_at(%nyx_string* %554, i64 0)
  %556 = zext i8 %555 to i64
  %557 = alloca i64
  store i64 %556, i64* %557
  %558 = load i64, i64* %557
  %559 = icmp eq i64 %558, 36
  br i1 %559, label %then152, label %else153
then152:
  %560 = load { i64, i8* }*, { i64, i8* }** %522
  %561 = load i64, i64* %h.ptr
  %562 = load %nyx_string*, %nyx_string** %550
  %563 = call %nyx_string* @read_bulk(i64 %561, %nyx_string* %562)
  %564 = ptrtoint %nyx_string* %563 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %560, i64 %564, i64 2)
  br label %merge154
else153:
  %565 = load { i64, i8* }*, { i64, i8* }** %522
  %566 = load %nyx_string*, %nyx_string** %550
  %567 = load %nyx_string*, %nyx_string** %550
  %568 = call i64 @nyx_string_byte_length(%nyx_string* %567)
  %569 = call %nyx_string* @nyx_string_substring(%nyx_string* %566, i64 1, i64 %568)
  %570 = ptrtoint %nyx_string* %569 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %565, i64 %570, i64 2)
  br label %merge154
merge154:
  br label %merge151
else150:
  %571 = load { i64, i8* }*, { i64, i8* }** %522
  %572 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %572, i64 0)
  %574 = ptrtoint %nyx_string* %573 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %571, i64 %574, i64 2)
  br label %merge151
merge151:
  %575 = load i64, i64* %543
  %576 = add i64 %575, 1
  store i64 %576, i64* %543
  br label %while_cond146
while_end148:
  %577 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %577
}

define i1 @kv_set(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %value.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %value.ptr = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %value.ptr
  %578 = call { i64, i8* }* @nyx_array_new_ptr()
  %579 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %579, i64 3)
  %581 = ptrtoint %nyx_string* %580 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %578, i64 %581, i64 2)
  %582 = load %nyx_string*, %nyx_string** %key.ptr
  %583 = ptrtoint %nyx_string* %582 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %578, i64 %583, i64 2)
  %584 = load %nyx_string*, %nyx_string** %value.ptr
  %585 = ptrtoint %nyx_string* %584 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %578, i64 %585, i64 2)
  %586 = alloca { i64, i8* }*
  store { i64, i8* }* %578, { i64, i8* }** %586
  %587 = load i64, i64* %h.ptr
  %588 = load { i64, i8* }*, { i64, i8* }** %586
  %589 = call %nyx_string* @kv_cmd(i64 %587, { i64, i8* }* %588)
  %590 = getelementptr [3 x i8], [3 x i8]* @.str40, i32 0, i32 0
  %591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %590, i64 2)
  %592 = call i1 @nyx_string_equals(%nyx_string* %589, %nyx_string* %591)
  ret i1 %592
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
  %593 = call { i64, i8* }* @nyx_array_new_ptr()
  %594 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %594, i64 5)
  %596 = ptrtoint %nyx_string* %595 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %593, i64 %596, i64 2)
  %597 = load %nyx_string*, %nyx_string** %key.ptr
  %598 = ptrtoint %nyx_string* %597 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %593, i64 %598, i64 2)
  %599 = load i64, i64* %ttl.ptr
  %600 = call %nyx_string* @nyx_string_from_int(i64 %599)
  %601 = ptrtoint %nyx_string* %600 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %593, i64 %601, i64 2)
  %602 = load %nyx_string*, %nyx_string** %value.ptr
  %603 = ptrtoint %nyx_string* %602 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %593, i64 %603, i64 2)
  %604 = alloca { i64, i8* }*
  store { i64, i8* }* %593, { i64, i8* }** %604
  %605 = load i64, i64* %h.ptr
  %606 = load { i64, i8* }*, { i64, i8* }** %604
  %607 = call %nyx_string* @kv_cmd(i64 %605, { i64, i8* }* %606)
  %608 = getelementptr [3 x i8], [3 x i8]* @.str42, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %608, i64 2)
  %610 = call i1 @nyx_string_equals(%nyx_string* %607, %nyx_string* %609)
  ret i1 %610
}

define %nyx_string* @kv_get(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %611 = call { i64, i8* }* @nyx_array_new_ptr()
  %612 = getelementptr [4 x i8], [4 x i8]* @.str43, i32 0, i32 0
  %613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %612, i64 3)
  %614 = ptrtoint %nyx_string* %613 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %611, i64 %614, i64 2)
  %615 = load %nyx_string*, %nyx_string** %key.ptr
  %616 = ptrtoint %nyx_string* %615 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %611, i64 %616, i64 2)
  %617 = alloca { i64, i8* }*
  store { i64, i8* }* %611, { i64, i8* }** %617
  %618 = load i64, i64* %h.ptr
  %619 = load { i64, i8* }*, { i64, i8* }** %617
  %620 = call %nyx_string* @kv_cmd(i64 %618, { i64, i8* }* %619)
  ret %nyx_string* %620
}

define i64 @kv_del(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %621 = call { i64, i8* }* @nyx_array_new_ptr()
  %622 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %622, i64 3)
  %624 = ptrtoint %nyx_string* %623 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %621, i64 %624, i64 2)
  %625 = load %nyx_string*, %nyx_string** %key.ptr
  %626 = ptrtoint %nyx_string* %625 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %621, i64 %626, i64 2)
  %627 = alloca { i64, i8* }*
  store { i64, i8* }* %621, { i64, i8* }** %627
  %628 = load i64, i64* %h.ptr
  %629 = load { i64, i8* }*, { i64, i8* }** %627
  %630 = call %nyx_string* @kv_cmd(i64 %628, { i64, i8* }* %629)
  %631 = call i64 @nyx_string_to_int(%nyx_string* %630)
  ret i64 %631
}

define i64 @kv_rpush(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %value.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %value.ptr = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %value.ptr
  %632 = call { i64, i8* }* @nyx_array_new_ptr()
  %633 = getelementptr [6 x i8], [6 x i8]* @.str45, i32 0, i32 0
  %634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %633, i64 5)
  %635 = ptrtoint %nyx_string* %634 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %635, i64 2)
  %636 = load %nyx_string*, %nyx_string** %key.ptr
  %637 = ptrtoint %nyx_string* %636 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %637, i64 2)
  %638 = load %nyx_string*, %nyx_string** %value.ptr
  %639 = ptrtoint %nyx_string* %638 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %639, i64 2)
  %640 = alloca { i64, i8* }*
  store { i64, i8* }* %632, { i64, i8* }** %640
  %641 = load i64, i64* %h.ptr
  %642 = load { i64, i8* }*, { i64, i8* }** %640
  %643 = call %nyx_string* @kv_cmd(i64 %641, { i64, i8* }* %642)
  %644 = call i64 @nyx_string_to_int(%nyx_string* %643)
  ret i64 %644
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
  %645 = call { i64, i8* }* @nyx_array_new_ptr()
  %646 = getelementptr [7 x i8], [7 x i8]* @.str46, i32 0, i32 0
  %647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %646, i64 6)
  %648 = ptrtoint %nyx_string* %647 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %645, i64 %648, i64 2)
  %649 = load %nyx_string*, %nyx_string** %key.ptr
  %650 = ptrtoint %nyx_string* %649 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %645, i64 %650, i64 2)
  %651 = load i64, i64* %start.ptr
  %652 = call %nyx_string* @nyx_string_from_int(i64 %651)
  %653 = ptrtoint %nyx_string* %652 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %645, i64 %653, i64 2)
  %654 = load i64, i64* %stop.ptr
  %655 = call %nyx_string* @nyx_string_from_int(i64 %654)
  %656 = ptrtoint %nyx_string* %655 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %645, i64 %656, i64 2)
  %657 = alloca { i64, i8* }*
  store { i64, i8* }* %645, { i64, i8* }** %657
  %658 = load i64, i64* %h.ptr
  %659 = load { i64, i8* }*, { i64, i8* }** %657
  %660 = call { i64, i8* }* @kv_cmd_array(i64 %658, { i64, i8* }* %659)
  ret { i64, i8* }* %660
}

define i64 @kv_llen(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %661 = call { i64, i8* }* @nyx_array_new_ptr()
  %662 = getelementptr [5 x i8], [5 x i8]* @.str47, i32 0, i32 0
  %663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %662, i64 4)
  %664 = ptrtoint %nyx_string* %663 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %661, i64 %664, i64 2)
  %665 = load %nyx_string*, %nyx_string** %key.ptr
  %666 = ptrtoint %nyx_string* %665 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %661, i64 %666, i64 2)
  %667 = alloca { i64, i8* }*
  store { i64, i8* }* %661, { i64, i8* }** %667
  %668 = load i64, i64* %h.ptr
  %669 = load { i64, i8* }*, { i64, i8* }** %667
  %670 = call %nyx_string* @kv_cmd(i64 %668, { i64, i8* }* %669)
  %671 = call i64 @nyx_string_to_int(%nyx_string* %670)
  ret i64 %671
}

define i64 @kv_sadd(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %member.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %member.ptr = alloca %nyx_string*
  store %nyx_string* %member.param, %nyx_string** %member.ptr
  %672 = call { i64, i8* }* @nyx_array_new_ptr()
  %673 = getelementptr [5 x i8], [5 x i8]* @.str48, i32 0, i32 0
  %674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %673, i64 4)
  %675 = ptrtoint %nyx_string* %674 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %672, i64 %675, i64 2)
  %676 = load %nyx_string*, %nyx_string** %key.ptr
  %677 = ptrtoint %nyx_string* %676 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %672, i64 %677, i64 2)
  %678 = load %nyx_string*, %nyx_string** %member.ptr
  %679 = ptrtoint %nyx_string* %678 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %672, i64 %679, i64 2)
  %680 = alloca { i64, i8* }*
  store { i64, i8* }* %672, { i64, i8* }** %680
  %681 = load i64, i64* %h.ptr
  %682 = load { i64, i8* }*, { i64, i8* }** %680
  %683 = call %nyx_string* @kv_cmd(i64 %681, { i64, i8* }* %682)
  %684 = call i64 @nyx_string_to_int(%nyx_string* %683)
  ret i64 %684
}

define { i64, i8* }* @kv_smembers(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %685 = call { i64, i8* }* @nyx_array_new_ptr()
  %686 = getelementptr [9 x i8], [9 x i8]* @.str49, i32 0, i32 0
  %687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %686, i64 8)
  %688 = ptrtoint %nyx_string* %687 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %685, i64 %688, i64 2)
  %689 = load %nyx_string*, %nyx_string** %key.ptr
  %690 = ptrtoint %nyx_string* %689 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %685, i64 %690, i64 2)
  %691 = alloca { i64, i8* }*
  store { i64, i8* }* %685, { i64, i8* }** %691
  %692 = load i64, i64* %h.ptr
  %693 = load { i64, i8* }*, { i64, i8* }** %691
  %694 = call { i64, i8* }* @kv_cmd_array(i64 %692, { i64, i8* }* %693)
  ret { i64, i8* }* %694
}

define %nyx_string* @kv_whoami(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %695 = call { i64, i8* }* @nyx_array_new_ptr()
  %696 = getelementptr [7 x i8], [7 x i8]* @.str50, i32 0, i32 0
  %697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %696, i64 6)
  %698 = ptrtoint %nyx_string* %697 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %695, i64 %698, i64 2)
  %699 = alloca { i64, i8* }*
  store { i64, i8* }* %695, { i64, i8* }** %699
  %700 = load i64, i64* %h.ptr
  %701 = load { i64, i8* }*, { i64, i8* }** %699
  %702 = call %nyx_string* @kv_cmd(i64 %700, { i64, i8* }* %701)
  ret %nyx_string* %702
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
  %703 = call { i64, i8* }* @nyx_array_new_ptr()
  %704 = getelementptr [13 x i8], [13 x i8]* @.str51, i32 0, i32 0
  %705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %704, i64 12)
  %706 = ptrtoint %nyx_string* %705 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %703, i64 %706, i64 2)
  %707 = load %nyx_string*, %nyx_string** %user_id.ptr
  %708 = ptrtoint %nyx_string* %707 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %703, i64 %708, i64 2)
  %709 = load %nyx_string*, %nyx_string** %plan.ptr
  %710 = ptrtoint %nyx_string* %709 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %703, i64 %710, i64 2)
  %711 = load i64, i64* %ttl.ptr
  %712 = call %nyx_string* @nyx_string_from_int(i64 %711)
  %713 = ptrtoint %nyx_string* %712 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %703, i64 %713, i64 2)
  %714 = alloca { i64, i8* }*
  store { i64, i8* }* %703, { i64, i8* }** %714
  %715 = load i64, i64* %h.ptr
  %716 = load { i64, i8* }*, { i64, i8* }** %714
  %717 = call %nyx_string* @kv_cmd(i64 %715, { i64, i8* }* %716)
  ret %nyx_string* %717
}

define i1 @kv_exists(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %718 = call { i64, i8* }* @nyx_array_new_ptr()
  %719 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %719, i64 6)
  %721 = ptrtoint %nyx_string* %720 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %718, i64 %721, i64 2)
  %722 = load %nyx_string*, %nyx_string** %key.ptr
  %723 = ptrtoint %nyx_string* %722 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %718, i64 %723, i64 2)
  %724 = alloca { i64, i8* }*
  store { i64, i8* }* %718, { i64, i8* }** %724
  %725 = load i64, i64* %h.ptr
  %726 = load { i64, i8* }*, { i64, i8* }** %724
  %727 = call %nyx_string* @kv_cmd(i64 %725, { i64, i8* }* %726)
  %728 = getelementptr [2 x i8], [2 x i8]* @.str53, i32 0, i32 0
  %729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %728, i64 1)
  %730 = call i1 @nyx_string_equals(%nyx_string* %727, %nyx_string* %729)
  ret i1 %730
}

define i64 @kv_srem(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %member.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %member.ptr = alloca %nyx_string*
  store %nyx_string* %member.param, %nyx_string** %member.ptr
  %731 = call { i64, i8* }* @nyx_array_new_ptr()
  %732 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %732, i64 4)
  %734 = ptrtoint %nyx_string* %733 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %731, i64 %734, i64 2)
  %735 = load %nyx_string*, %nyx_string** %key.ptr
  %736 = ptrtoint %nyx_string* %735 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %731, i64 %736, i64 2)
  %737 = load %nyx_string*, %nyx_string** %member.ptr
  %738 = ptrtoint %nyx_string* %737 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %731, i64 %738, i64 2)
  %739 = alloca { i64, i8* }*
  store { i64, i8* }* %731, { i64, i8* }** %739
  %740 = load i64, i64* %h.ptr
  %741 = load { i64, i8* }*, { i64, i8* }** %739
  %742 = call %nyx_string* @kv_cmd(i64 %740, { i64, i8* }* %741)
  %743 = call i64 @nyx_string_to_int(%nyx_string* %742)
  ret i64 %743
}

define { i64, i8* }* @kv_token_list(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %744 = call { i64, i8* }* @nyx_array_new_ptr()
  %745 = getelementptr [11 x i8], [11 x i8]* @.str55, i32 0, i32 0
  %746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %745, i64 10)
  %747 = ptrtoint %nyx_string* %746 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %744, i64 %747, i64 2)
  %748 = alloca { i64, i8* }*
  store { i64, i8* }* %744, { i64, i8* }** %748
  %749 = load i64, i64* %h.ptr
  %750 = load { i64, i8* }*, { i64, i8* }** %748
  %751 = call { i64, i8* }* @kv_cmd_array(i64 %749, { i64, i8* }* %750)
  ret { i64, i8* }* %751
}

define i1 @kv_token_revoke(
i64 %h.param, %nyx_string* %token.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %token.ptr = alloca %nyx_string*
  store %nyx_string* %token.param, %nyx_string** %token.ptr
  %752 = call { i64, i8* }* @nyx_array_new_ptr()
  %753 = getelementptr [13 x i8], [13 x i8]* @.str56, i32 0, i32 0
  %754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %753, i64 12)
  %755 = ptrtoint %nyx_string* %754 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %755, i64 2)
  %756 = load %nyx_string*, %nyx_string** %token.ptr
  %757 = ptrtoint %nyx_string* %756 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %757, i64 2)
  %758 = alloca { i64, i8* }*
  store { i64, i8* }* %752, { i64, i8* }** %758
  %759 = load i64, i64* %h.ptr
  %760 = load { i64, i8* }*, { i64, i8* }** %758
  %761 = call %nyx_string* @kv_cmd(i64 %759, { i64, i8* }* %760)
  %762 = getelementptr [3 x i8], [3 x i8]* @.str57, i32 0, i32 0
  %763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %762, i64 2)
  %764 = call i1 @nyx_string_equals(%nyx_string* %761, %nyx_string* %763)
  ret i1 %764
}

define internal %nyx_string* @std_base64____b64_encode_with(
%nyx_string* %input.param, %nyx_string* %alphabet.param, i1 %pad.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %pad.ptr = alloca i1
  store i1 %pad.param, i1* %pad.ptr
  %765 = load %nyx_string*, %nyx_string** %input.ptr
  %766 = call i64 @nyx_string_byte_length(%nyx_string* %765)
  %767 = alloca i64
  store i64 %766, i64* %767
  %768 = load i64, i64* %767
  %769 = icmp eq i64 %768, 0
  br i1 %769, label %then155, label %else156
then155:
  %770 = getelementptr [1 x i8], [1 x i8]* @.str58, i32 0, i32 0
  %771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %770, i64 0)
  ret %nyx_string* %771
else156:
  br label %merge157
merge157:
  %772 = call i8* @nyx_sb_new(i64 1024)
  %773 = alloca i8*
  store i8* %772, i8** %773
  %774 = alloca i64
  store i64 0, i64* %774
  %775 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %775, i64 1)
  %777 = alloca %nyx_string*
  store %nyx_string* %776, %nyx_string** %777
  %778 = call i8* @llvm.stacksave()
  br label %while_cond158
while_cond158:
  %779 = load i64, i64* %774
  %780 = load i64, i64* %767
  %781 = icmp slt i64 %779, %780
  br i1 %781, label %while_body159, label %while_end160
while_body159:
  call void @llvm.stackrestore(i8* %778)
  %782 = load %nyx_string*, %nyx_string** %input.ptr
  %783 = load i64, i64* %774
  %784 = call i8 @nyx_string_char_at(%nyx_string* %782, i64 %783)
  %785 = zext i8 %784 to i64
  %786 = alloca i64
  store i64 %785, i64* %786
  %787 = alloca i64
  store i64 0, i64* %787
  %788 = alloca i64
  store i64 0, i64* %788
  %789 = load i64, i64* %767
  %790 = load i64, i64* %774
  %791 = sub i64 %789, %790
  %792 = alloca i64
  store i64 %791, i64* %792
  %793 = load i64, i64* %792
  %794 = icmp sge i64 %793, 2
  br i1 %794, label %then161, label %else162
then161:
  %795 = load %nyx_string*, %nyx_string** %input.ptr
  %796 = load i64, i64* %774
  %797 = add i64 %796, 1
  %798 = call i8 @nyx_string_char_at(%nyx_string* %795, i64 %797)
  %799 = zext i8 %798 to i64
  store i64 %799, i64* %787
  br label %merge163
else162:
  br label %merge163
merge163:
  %800 = load i64, i64* %792
  %801 = icmp sge i64 %800, 3
  br i1 %801, label %then164, label %else165
then164:
  %802 = load %nyx_string*, %nyx_string** %input.ptr
  %803 = load i64, i64* %774
  %804 = add i64 %803, 2
  %805 = call i8 @nyx_string_char_at(%nyx_string* %802, i64 %804)
  %806 = zext i8 %805 to i64
  store i64 %806, i64* %788
  br label %merge166
else165:
  br label %merge166
merge166:
  %807 = load i64, i64* %786
  %808 = sdiv i64 %807, 4
  %809 = alloca i64
  store i64 %808, i64* %809
  %810 = load i64, i64* %786
  %811 = srem i64 %810, 4
  %812 = mul i64 %811, 16
  %813 = load i64, i64* %787
  %814 = sdiv i64 %813, 16
  %815 = add i64 %812, %814
  %816 = alloca i64
  store i64 %815, i64* %816
  %817 = load i64, i64* %787
  %818 = srem i64 %817, 16
  %819 = mul i64 %818, 4
  %820 = load i64, i64* %788
  %821 = sdiv i64 %820, 64
  %822 = add i64 %819, %821
  %823 = alloca i64
  store i64 %822, i64* %823
  %824 = load i64, i64* %788
  %825 = srem i64 %824, 64
  %826 = alloca i64
  store i64 %825, i64* %826
  %827 = load i8*, i8** %773
  %828 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %829 = load i64, i64* %809
  %830 = load i64, i64* %809
  %831 = add i64 %830, 1
  %832 = call %nyx_string* @nyx_string_substring(%nyx_string* %828, i64 %829, i64 %831)
  call void @nyx_sb_append(i8* %827, %nyx_string* %832)
  %833 = load i8*, i8** %773
  %834 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %835 = load i64, i64* %816
  %836 = load i64, i64* %816
  %837 = add i64 %836, 1
  %838 = call %nyx_string* @nyx_string_substring(%nyx_string* %834, i64 %835, i64 %837)
  call void @nyx_sb_append(i8* %833, %nyx_string* %838)
  %839 = load i64, i64* %792
  %840 = icmp sge i64 %839, 2
  br i1 %840, label %then167, label %else168
then167:
  %841 = load i8*, i8** %773
  %842 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %843 = load i64, i64* %823
  %844 = load i64, i64* %823
  %845 = add i64 %844, 1
  %846 = call %nyx_string* @nyx_string_substring(%nyx_string* %842, i64 %843, i64 %845)
  call void @nyx_sb_append(i8* %841, %nyx_string* %846)
  br label %merge169
else168:
  %847 = load i1, i1* %pad.ptr
  br i1 %847, label %then170, label %else171
then170:
  %848 = load i8*, i8** %773
  %849 = load %nyx_string*, %nyx_string** %777
  call void @nyx_sb_append(i8* %848, %nyx_string* %849)
  br label %merge172
else171:
  br label %merge172
merge172:
  br label %merge169
merge169:
  %850 = load i64, i64* %792
  %851 = icmp sge i64 %850, 3
  br i1 %851, label %then173, label %else174
then173:
  %852 = load i8*, i8** %773
  %853 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %854 = load i64, i64* %826
  %855 = load i64, i64* %826
  %856 = add i64 %855, 1
  %857 = call %nyx_string* @nyx_string_substring(%nyx_string* %853, i64 %854, i64 %856)
  call void @nyx_sb_append(i8* %852, %nyx_string* %857)
  br label %merge175
else174:
  %858 = load i1, i1* %pad.ptr
  br i1 %858, label %then176, label %else177
then176:
  %859 = load i8*, i8** %773
  %860 = load %nyx_string*, %nyx_string** %777
  call void @nyx_sb_append(i8* %859, %nyx_string* %860)
  br label %merge178
else177:
  br label %merge178
merge178:
  br label %merge175
merge175:
  %861 = load i64, i64* %774
  %862 = add i64 %861, 3
  store i64 %862, i64* %774
  br label %while_cond158
while_end160:
  %863 = load i8*, i8** %773
  %864 = call %nyx_string* @nyx_sb_to_string(i8* %863)
  ret %nyx_string* %864
}

define internal %nyx_string* @std_base64____b64_byte_to_string(
i64 %b.param) {
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %865 = call { i64, i8* }* @nyx_array_new_ptr()
  %866 = load i64, i64* %b.ptr
  call void @nyx_array_push({ i64, i8* }* %865, i64 %866)
  %867 = alloca { i64, i8* }*
  store { i64, i8* }* %865, { i64, i8* }** %867
  %868 = load { i64, i8* }*, { i64, i8* }** %867
  %869 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %868, i64 0, i64 1)
  ret %nyx_string* %869
}

define internal i64 @std_base64____b64_char_value(
i64 %c.param, %nyx_string* %alphabet.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %870 = alloca i64
  store i64 0, i64* %870
  %871 = call i8* @llvm.stacksave()
  br label %while_cond179
while_cond179:
  %872 = load i64, i64* %870
  %873 = icmp slt i64 %872, 64
  br i1 %873, label %while_body180, label %while_end181
while_body180:
  call void @llvm.stackrestore(i8* %871)
  %874 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %875 = load i64, i64* %870
  %876 = call i8 @nyx_string_char_at(%nyx_string* %874, i64 %875)
  %877 = zext i8 %876 to i64
  %878 = load i64, i64* %c.ptr
  %879 = icmp eq i64 %877, %878
  br i1 %879, label %then182, label %else183
then182:
  %880 = load i64, i64* %870
  ret i64 %880
else183:
  br label %merge184
merge184:
  %881 = load i64, i64* %870
  %882 = add i64 %881, 1
  store i64 %882, i64* %870
  br label %while_cond179
while_end181:
  %883 = sub i64 0, 1
  ret i64 %883
}

define internal %nyx_string* @std_base64____b64_decode_with(
%nyx_string* %input.param, %nyx_string* %alphabet.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %884 = load %nyx_string*, %nyx_string** %input.ptr
  %885 = call i64 @nyx_string_byte_length(%nyx_string* %884)
  %886 = alloca i64
  store i64 %885, i64* %886
  %887 = load i64, i64* %886
  %888 = icmp eq i64 %887, 0
  br i1 %888, label %then185, label %else186
then185:
  %889 = getelementptr [1 x i8], [1 x i8]* @.str60, i32 0, i32 0
  %890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %889, i64 0)
  ret %nyx_string* %890
else186:
  br label %merge187
merge187:
  %891 = call i8* @nyx_sb_new(i64 1024)
  %892 = alloca i8*
  store i8* %891, i8** %892
  %893 = alloca i64
  store i64 0, i64* %893
  %894 = call i8* @llvm.stacksave()
  br label %while_cond188
while_cond188:
  %895 = load i64, i64* %893
  %896 = load i64, i64* %886
  %897 = icmp slt i64 %895, %896
  br i1 %897, label %while_body189, label %while_end190
while_body189:
  call void @llvm.stackrestore(i8* %894)
  %898 = load %nyx_string*, %nyx_string** %input.ptr
  %899 = load i64, i64* %893
  %900 = call i8 @nyx_string_char_at(%nyx_string* %898, i64 %899)
  %901 = zext i8 %900 to i64
  %902 = alloca i64
  store i64 %901, i64* %902
  %903 = load i64, i64* %902
  %904 = icmp eq i64 %903, 61
  br i1 %904, label %then191, label %else192
then191:
  br label %while_end190
else192:
  br label %merge193
merge193:
  %905 = load i64, i64* %902
  %906 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %907 = call i64 @std_base64____b64_char_value(i64 %905, %nyx_string* %906)
  %908 = alloca i64
  store i64 %907, i64* %908
  %909 = load i64, i64* %908
  %910 = icmp slt i64 %909, 0
  br i1 %910, label %then194, label %else195
then194:
  br label %while_end190
else195:
  br label %merge196
merge196:
  %911 = alloca i64
  store i64 0, i64* %911
  %912 = sub i64 0, 1
  %913 = alloca i64
  store i64 %912, i64* %913
  %914 = sub i64 0, 1
  %915 = alloca i64
  store i64 %914, i64* %915
  %916 = load i64, i64* %893
  %917 = add i64 %916, 1
  %918 = load i64, i64* %886
  %919 = icmp slt i64 %917, %918
  br i1 %919, label %then197, label %else198
then197:
  %920 = load %nyx_string*, %nyx_string** %input.ptr
  %921 = load i64, i64* %893
  %922 = add i64 %921, 1
  %923 = call i8 @nyx_string_char_at(%nyx_string* %920, i64 %922)
  %924 = zext i8 %923 to i64
  %925 = alloca i64
  store i64 %924, i64* %925
  %926 = load i64, i64* %925
  %927 = icmp ne i64 %926, 61
  br i1 %927, label %then200, label %else201
then200:
  %928 = load i64, i64* %925
  %929 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %930 = call i64 @std_base64____b64_char_value(i64 %928, %nyx_string* %929)
  store i64 %930, i64* %911
  br label %merge202
else201:
  br label %merge202
merge202:
  br label %merge199
else198:
  br label %merge199
merge199:
  %931 = load i64, i64* %893
  %932 = add i64 %931, 2
  %933 = load i64, i64* %886
  %934 = icmp slt i64 %932, %933
  br i1 %934, label %then203, label %else204
then203:
  %935 = load %nyx_string*, %nyx_string** %input.ptr
  %936 = load i64, i64* %893
  %937 = add i64 %936, 2
  %938 = call i8 @nyx_string_char_at(%nyx_string* %935, i64 %937)
  %939 = zext i8 %938 to i64
  %940 = alloca i64
  store i64 %939, i64* %940
  %941 = load i64, i64* %940
  %942 = icmp ne i64 %941, 61
  br i1 %942, label %then206, label %else207
then206:
  %943 = load i64, i64* %940
  %944 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %945 = call i64 @std_base64____b64_char_value(i64 %943, %nyx_string* %944)
  store i64 %945, i64* %913
  br label %merge208
else207:
  br label %merge208
merge208:
  br label %merge205
else204:
  br label %merge205
merge205:
  %946 = load i64, i64* %893
  %947 = add i64 %946, 3
  %948 = load i64, i64* %886
  %949 = icmp slt i64 %947, %948
  br i1 %949, label %then209, label %else210
then209:
  %950 = load %nyx_string*, %nyx_string** %input.ptr
  %951 = load i64, i64* %893
  %952 = add i64 %951, 3
  %953 = call i8 @nyx_string_char_at(%nyx_string* %950, i64 %952)
  %954 = zext i8 %953 to i64
  %955 = alloca i64
  store i64 %954, i64* %955
  %956 = load i64, i64* %955
  %957 = icmp ne i64 %956, 61
  br i1 %957, label %then212, label %else213
then212:
  %958 = load i64, i64* %955
  %959 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %960 = call i64 @std_base64____b64_char_value(i64 %958, %nyx_string* %959)
  store i64 %960, i64* %915
  br label %merge214
else213:
  br label %merge214
merge214:
  br label %merge211
else210:
  br label %merge211
merge211:
  %961 = load i64, i64* %908
  %962 = mul i64 %961, 4
  %963 = load i64, i64* %911
  %964 = sdiv i64 %963, 16
  %965 = add i64 %962, %964
  %966 = alloca i64
  store i64 %965, i64* %966
  %967 = load i8*, i8** %892
  %968 = load i64, i64* %966
  %969 = call %nyx_string* @std_base64____b64_byte_to_string(i64 %968)
  call void @nyx_sb_append(i8* %967, %nyx_string* %969)
  %970 = load i64, i64* %913
  %971 = icmp sge i64 %970, 0
  br i1 %971, label %then215, label %else216
then215:
  %972 = load i64, i64* %911
  %973 = srem i64 %972, 16
  %974 = mul i64 %973, 16
  %975 = load i64, i64* %913
  %976 = sdiv i64 %975, 4
  %977 = add i64 %974, %976
  %978 = alloca i64
  store i64 %977, i64* %978
  %979 = load i8*, i8** %892
  %980 = load i64, i64* %978
  %981 = call %nyx_string* @std_base64____b64_byte_to_string(i64 %980)
  call void @nyx_sb_append(i8* %979, %nyx_string* %981)
  br label %merge217
else216:
  br label %merge217
merge217:
  %982 = load i64, i64* %915
  %983 = icmp sge i64 %982, 0
  br i1 %983, label %then218, label %else219
then218:
  %984 = load i64, i64* %913
  %985 = srem i64 %984, 4
  %986 = mul i64 %985, 64
  %987 = load i64, i64* %915
  %988 = add i64 %986, %987
  %989 = alloca i64
  store i64 %988, i64* %989
  %990 = load i8*, i8** %892
  %991 = load i64, i64* %989
  %992 = call %nyx_string* @std_base64____b64_byte_to_string(i64 %991)
  call void @nyx_sb_append(i8* %990, %nyx_string* %992)
  br label %merge220
else219:
  br label %merge220
merge220:
  %993 = load i64, i64* %893
  %994 = add i64 %993, 4
  store i64 %994, i64* %893
  br label %while_cond188
while_end190:
  %995 = load i8*, i8** %892
  %996 = call %nyx_string* @nyx_sb_to_string(i8* %995)
  ret %nyx_string* %996
}

define %nyx_string* @std_base64__base64_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %997 = load %nyx_string*, %nyx_string** %input.ptr
  %998 = load %nyx_string*, %nyx_string** @std_base64____b64_chars
  %999 = call %nyx_string* @std_base64____b64_encode_with(%nyx_string* %997, %nyx_string* %998, i1 1)
  ret %nyx_string* %999
}

define %nyx_string* @std_base64__base64_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %1000 = load %nyx_string*, %nyx_string** %input.ptr
  %1001 = load %nyx_string*, %nyx_string** @std_base64____b64_chars
  %1002 = call %nyx_string* @std_base64____b64_decode_with(%nyx_string* %1000, %nyx_string* %1001)
  ret %nyx_string* %1002
}

define %nyx_string* @std_base64__base64url_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %1003 = load %nyx_string*, %nyx_string** %input.ptr
  %1004 = load %nyx_string*, %nyx_string** @std_base64____b64url_chars
  %1005 = call %nyx_string* @std_base64____b64_encode_with(%nyx_string* %1003, %nyx_string* %1004, i1 0)
  ret %nyx_string* %1005
}

define %nyx_string* @std_base64__base64url_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %1006 = load %nyx_string*, %nyx_string** %input.ptr
  %1007 = load %nyx_string*, %nyx_string** @std_base64____b64url_chars
  %1008 = call %nyx_string* @std_base64____b64_decode_with(%nyx_string* %1006, %nyx_string* %1007)
  ret %nyx_string* %1008
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1009 = load %nyx_string*, %nyx_string** %line.ptr
  %1010 = call %nyx_string* @nyx_string_trim(%nyx_string* %1009)
  %1011 = alloca %nyx_string*
  store %nyx_string* %1010, %nyx_string** %1011
  %1012 = sub i64 0, 1
  %1013 = alloca i64
  store i64 %1012, i64* %1013
  %1014 = alloca i64
  store i64 0, i64* %1014
  %1015 = call i8* @llvm.stacksave()
  br label %while_cond221
while_cond221:
  %1016 = load i64, i64* %1014
  %1017 = load %nyx_string*, %nyx_string** %1011
  %1018 = call i64 @nyx_string_byte_length(%nyx_string* %1017)
  %1019 = icmp slt i64 %1016, %1018
  br i1 %1019, label %while_body222, label %while_end223
while_body222:
  call void @llvm.stackrestore(i8* %1015)
  %1020 = load %nyx_string*, %nyx_string** %1011
  %1021 = load i64, i64* %1014
  %1022 = call i8 @nyx_string_char_at(%nyx_string* %1020, i64 %1021)
  %1023 = zext i8 %1022 to i64
  %1024 = trunc i64 %1023 to i8
  %1025 = alloca i8
  store i8 %1024, i8* %1025
  %1026 = load i8, i8* %1025
  %1027 = getelementptr [1 x i8], [1 x i8]* @.str61, i32 0, i32 0
  %1028 = load i8, i8* %1027
  %1029 = zext i8 %1028 to i64
  %1030 = zext i8 %1026 to i64
  %1031 = icmp eq i64 %1030, %1029
  br i1 %1031, label %then224, label %else225
then224:
  %1032 = load i64, i64* %1014
  store i64 %1032, i64* %1013
  %1033 = load %nyx_string*, %nyx_string** %1011
  %1034 = call i64 @nyx_string_byte_length(%nyx_string* %1033)
  store i64 %1034, i64* %1014
  br label %merge226
else225:
  %1035 = load i64, i64* %1014
  %1036 = add i64 %1035, 1
  store i64 %1036, i64* %1014
  br label %merge226
merge226:
  br label %while_cond221
while_end223:
  %1037 = load i64, i64* %1013
  %1038 = icmp slt i64 %1037, 0
  br i1 %1038, label %then227, label %else228
then227:
  %1039 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %1040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1039, i64 0)
  ret %nyx_string* %1040
else228:
  br label %merge229
merge229:
  %1041 = load %nyx_string*, %nyx_string** %1011
  %1042 = load i64, i64* %1013
  %1043 = add i64 %1042, 1
  %1044 = load %nyx_string*, %nyx_string** %1011
  %1045 = call i64 @nyx_string_byte_length(%nyx_string* %1044)
  %1046 = call %nyx_string* @nyx_string_substring(%nyx_string* %1041, i64 %1043, i64 %1045)
  %1047 = call %nyx_string* @nyx_string_trim(%nyx_string* %1046)
  %1048 = alloca %nyx_string*
  store %nyx_string* %1047, %nyx_string** %1048
  %1049 = alloca i1
  store i1 false, i1* %1049
  %1050 = load %nyx_string*, %nyx_string** %1048
  %1051 = getelementptr [2 x i8], [2 x i8]* @.str63, i32 0, i32 0
  %1052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1051, i64 1)
  %1053 = call i1 @nyx_string_starts_with(%nyx_string* %1050, %nyx_string* %1052)
  br i1 %1053, label %sc_and_rhs230, label %sc_and_end231
sc_and_rhs230:
  %1054 = load %nyx_string*, %nyx_string** %1048
  %1055 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %1056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1055, i64 1)
  %1057 = call i1 @nyx_string_ends_with(%nyx_string* %1054, %nyx_string* %1056)
  store i1 %1057, i1* %1049
  br label %sc_and_end231
sc_and_end231:
  %1058 = load i1, i1* %1049
  br i1 %1058, label %then232, label %else233
then232:
  %1059 = load %nyx_string*, %nyx_string** %1048
  %1060 = load %nyx_string*, %nyx_string** %1048
  %1061 = call i64 @nyx_string_byte_length(%nyx_string* %1060)
  %1062 = sub i64 %1061, 1
  %1063 = call %nyx_string* @nyx_string_substring(%nyx_string* %1059, i64 1, i64 %1062)
  ret %nyx_string* %1063
else233:
  br label %merge234
merge234:
  %1064 = load %nyx_string*, %nyx_string** %1048
  %1065 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %1066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1065, i64 4)
  %1067 = call i1 @nyx_string_equals(%nyx_string* %1064, %nyx_string* %1066)
  br i1 %1067, label %then235, label %else236
then235:
  %1068 = getelementptr [5 x i8], [5 x i8]* @.str66, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1068, i64 4)
  ret %nyx_string* %1069
else236:
  br label %merge237
merge237:
  %1070 = load %nyx_string*, %nyx_string** %1048
  %1071 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1071, i64 5)
  %1073 = call i1 @nyx_string_equals(%nyx_string* %1070, %nyx_string* %1072)
  br i1 %1073, label %then238, label %else239
then238:
  %1074 = getelementptr [6 x i8], [6 x i8]* @.str68, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1074, i64 5)
  ret %nyx_string* %1075
else239:
  br label %merge240
merge240:
  %1076 = load %nyx_string*, %nyx_string** %1048
  ret %nyx_string* %1076
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1077 = load %nyx_string*, %nyx_string** %line.ptr
  %1078 = call %nyx_string* @nyx_string_trim(%nyx_string* %1077)
  %1079 = alloca %nyx_string*
  store %nyx_string* %1078, %nyx_string** %1079
  %1080 = sub i64 0, 1
  %1081 = alloca i64
  store i64 %1080, i64* %1081
  %1082 = alloca i64
  store i64 0, i64* %1082
  %1083 = call i8* @llvm.stacksave()
  br label %while_cond241
while_cond241:
  %1084 = load i64, i64* %1082
  %1085 = load %nyx_string*, %nyx_string** %1079
  %1086 = call i64 @nyx_string_byte_length(%nyx_string* %1085)
  %1087 = icmp slt i64 %1084, %1086
  br i1 %1087, label %while_body242, label %while_end243
while_body242:
  call void @llvm.stackrestore(i8* %1083)
  %1088 = load %nyx_string*, %nyx_string** %1079
  %1089 = load i64, i64* %1082
  %1090 = call i8 @nyx_string_char_at(%nyx_string* %1088, i64 %1089)
  %1091 = zext i8 %1090 to i64
  %1092 = trunc i64 %1091 to i8
  %1093 = alloca i8
  store i8 %1092, i8* %1093
  %1094 = load i8, i8* %1093
  %1095 = getelementptr [1 x i8], [1 x i8]* @.str69, i32 0, i32 0
  %1096 = load i8, i8* %1095
  %1097 = zext i8 %1096 to i64
  %1098 = zext i8 %1094 to i64
  %1099 = icmp eq i64 %1098, %1097
  br i1 %1099, label %then244, label %else245
then244:
  %1100 = load i64, i64* %1082
  store i64 %1100, i64* %1081
  %1101 = load %nyx_string*, %nyx_string** %1079
  %1102 = call i64 @nyx_string_byte_length(%nyx_string* %1101)
  store i64 %1102, i64* %1082
  br label %merge246
else245:
  %1103 = load i64, i64* %1082
  %1104 = add i64 %1103, 1
  store i64 %1104, i64* %1082
  br label %merge246
merge246:
  br label %while_cond241
while_end243:
  %1105 = load i64, i64* %1081
  %1106 = icmp slt i64 %1105, 0
  br i1 %1106, label %then247, label %else248
then247:
  %1107 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %1108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1107, i64 0)
  ret %nyx_string* %1108
else248:
  br label %merge249
merge249:
  %1109 = load %nyx_string*, %nyx_string** %1079
  %1110 = load i64, i64* %1081
  %1111 = call %nyx_string* @nyx_string_substring(%nyx_string* %1109, i64 0, i64 %1110)
  %1112 = call %nyx_string* @nyx_string_trim(%nyx_string* %1111)
  ret %nyx_string* %1112
}

define internal %ProjectConfig @parse_toml(
%nyx_string* %content.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %1113 = call { i64, i8* }* @nyx_array_new_ptr()
  %1114 = alloca { i64, i8* }*
  store { i64, i8* }* %1113, { i64, i8* }** %1114
  %1115 = call { i64, i8* }* @nyx_array_new_ptr()
  %1116 = alloca { i64, i8* }*
  store { i64, i8* }* %1115, { i64, i8* }** %1116
  %1117 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %1118 = ptrtoint %ProjectConfig* %1117 to i64
  %1119 = call i8* @GC_malloc(i64 %1118)
  %1120 = bitcast i8* %1119 to %ProjectConfig*
  %1121 = getelementptr [1 x i8], [1 x i8]* @.str71, i32 0, i32 0
  %1122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1121, i64 0)
  %1123 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 0
  store %nyx_string* %1122, %nyx_string** %1123
  %1124 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1124, i64 5)
  %1126 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 1
  store %nyx_string* %1125, %nyx_string** %1126
  %1127 = getelementptr [12 x i8], [12 x i8]* @.str73, i32 0, i32 0
  %1128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1127, i64 11)
  %1129 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 2
  store %nyx_string* %1128, %nyx_string** %1129
  %1130 = getelementptr [12 x i8], [12 x i8]* @.str74, i32 0, i32 0
  %1131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1130, i64 11)
  %1132 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 3
  store %nyx_string* %1131, %nyx_string** %1132
  %1133 = getelementptr [1 x i8], [1 x i8]* @.str75, i32 0, i32 0
  %1134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1133, i64 0)
  %1135 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 4
  store %nyx_string* %1134, %nyx_string** %1135
  %1136 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 5
  store i1 0, i1* %1136
  %1137 = getelementptr [1 x i8], [1 x i8]* @.str76, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1137, i64 0)
  %1139 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 6
  store %nyx_string* %1138, %nyx_string** %1139
  %1140 = load { i64, i8* }*, { i64, i8* }** %1114
  %1141 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 7
  store { i64, i8* }* %1140, { i64, i8* }** %1141
  %1142 = load { i64, i8* }*, { i64, i8* }** %1116
  %1143 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 8
  store { i64, i8* }* %1142, { i64, i8* }** %1143
  %1144 = getelementptr [1 x i8], [1 x i8]* @.str77, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1144, i64 0)
  %1146 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 9
  store %nyx_string* %1145, %nyx_string** %1146
  %1147 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1147, i64 0)
  %1149 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 10
  store %nyx_string* %1148, %nyx_string** %1149
  %1150 = load %ProjectConfig, %ProjectConfig* %1120
  %1151 = alloca %ProjectConfig
  store %ProjectConfig %1150, %ProjectConfig* %1151
  %1152 = getelementptr [1 x i8], [1 x i8]* @.str79, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1152, i64 0)
  %1154 = alloca %nyx_string*
  store %nyx_string* %1153, %nyx_string** %1154
  %1155 = getelementptr [1 x i8], [1 x i8]* @.str80, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1155, i64 0)
  %1157 = alloca %nyx_string*
  store %nyx_string* %1156, %nyx_string** %1157
  %1158 = getelementptr [1 x i8], [1 x i8]* @.str81, i32 0, i32 0
  %1159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1158, i64 0)
  %1160 = alloca %nyx_string*
  store %nyx_string* %1159, %nyx_string** %1160
  %1161 = getelementptr [1 x i8], [1 x i8]* @.str82, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1161, i64 0)
  %1163 = alloca %nyx_string*
  store %nyx_string* %1162, %nyx_string** %1163
  %1164 = load %nyx_string*, %nyx_string** %content.ptr
  %1165 = getelementptr [2 x i8], [2 x i8]* @.str83, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1165, i64 1)
  %1167 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1164, %nyx_string* %1166)
  %1168 = alloca { i64, i8* }*
  store { i64, i8* }* %1167, { i64, i8* }** %1168
  %1169 = getelementptr [1 x i8], [1 x i8]* @.str84, i32 0, i32 0
  %1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1169, i64 0)
  %1171 = alloca %nyx_string*
  store %nyx_string* %1170, %nyx_string** %1171
  %1172 = alloca i64
  store i64 0, i64* %1172
  %1173 = getelementptr [1 x i8], [1 x i8]* @.str85, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1173, i64 0)
  %1175 = alloca %nyx_string*
  store %nyx_string* %1174, %nyx_string** %1175
  %1176 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1176, i64 1)
  %1178 = alloca %nyx_string*
  store %nyx_string* %1177, %nyx_string** %1178
  %1179 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1179, i64 1)
  %1181 = alloca %nyx_string*
  store %nyx_string* %1180, %nyx_string** %1181
  %1182 = getelementptr [2 x i8], [2 x i8]* @.str88, i32 0, i32 0
  %1183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1182, i64 1)
  %1184 = alloca %nyx_string*
  store %nyx_string* %1183, %nyx_string** %1184
  %1185 = getelementptr [8 x i8], [8 x i8]* @.str89, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1185, i64 7)
  %1187 = alloca %nyx_string*
  store %nyx_string* %1186, %nyx_string** %1187
  %1188 = getelementptr [5 x i8], [5 x i8]* @.str90, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1188, i64 4)
  %1190 = alloca %nyx_string*
  store %nyx_string* %1189, %nyx_string** %1190
  %1191 = getelementptr [8 x i8], [8 x i8]* @.str91, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1191, i64 7)
  %1193 = alloca %nyx_string*
  store %nyx_string* %1192, %nyx_string** %1193
  %1194 = getelementptr [5 x i8], [5 x i8]* @.str92, i32 0, i32 0
  %1195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1194, i64 4)
  %1196 = alloca %nyx_string*
  store %nyx_string* %1195, %nyx_string** %1196
  %1197 = getelementptr [12 x i8], [12 x i8]* @.str93, i32 0, i32 0
  %1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1197, i64 11)
  %1199 = alloca %nyx_string*
  store %nyx_string* %1198, %nyx_string** %1199
  %1200 = getelementptr [6 x i8], [6 x i8]* @.str94, i32 0, i32 0
  %1201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1200, i64 5)
  %1202 = alloca %nyx_string*
  store %nyx_string* %1201, %nyx_string** %1202
  %1203 = getelementptr [5 x i8], [5 x i8]* @.str95, i32 0, i32 0
  %1204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1203, i64 4)
  %1205 = alloca %nyx_string*
  store %nyx_string* %1204, %nyx_string** %1205
  %1206 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %1207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1206, i64 6)
  %1208 = alloca %nyx_string*
  store %nyx_string* %1207, %nyx_string** %1208
  %1209 = getelementptr [6 x i8], [6 x i8]* @.str97, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1209, i64 5)
  %1211 = alloca %nyx_string*
  store %nyx_string* %1210, %nyx_string** %1211
  %1212 = getelementptr [44 x i8], [44 x i8]* @.str98, i32 0, i32 0
  %1213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1212, i64 43)
  %1214 = alloca %nyx_string*
  store %nyx_string* %1213, %nyx_string** %1214
  %1215 = getelementptr [34 x i8], [34 x i8]* @.str99, i32 0, i32 0
  %1216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1215, i64 33)
  %1217 = alloca %nyx_string*
  store %nyx_string* %1216, %nyx_string** %1217
  %1218 = getelementptr [13 x i8], [13 x i8]* @.str100, i32 0, i32 0
  %1219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1218, i64 12)
  %1220 = alloca %nyx_string*
  store %nyx_string* %1219, %nyx_string** %1220
  %1221 = call i8* @llvm.stacksave()
  br label %while_cond250
while_cond250:
  %1222 = load i64, i64* %1172
  %1223 = load { i64, i8* }*, { i64, i8* }** %1168
  %1224 = call i64 @nyx_array_length({ i64, i8* }* %1223)
  %1225 = icmp slt i64 %1222, %1224
  br i1 %1225, label %while_body251, label %while_end252
while_body251:
  call void @llvm.stackrestore(i8* %1221)
  %1226 = load { i64, i8* }*, { i64, i8* }** %1168
  %1227 = load i64, i64* %1172
  %1228 = call i64 @nyx_array_get_checked({ i64, i8* }* %1226, i64 %1227, i64 2)
  %1229 = inttoptr i64 %1228 to %nyx_string*
  %1230 = alloca %nyx_string*
  store %nyx_string* %1229, %nyx_string** %1230
  %1231 = load %nyx_string*, %nyx_string** %1230
  %1232 = call %nyx_string* @nyx_string_trim(%nyx_string* %1231)
  %1233 = alloca %nyx_string*
  store %nyx_string* %1232, %nyx_string** %1233
  %1234 = alloca i1
  store i1 true, i1* %1234
  %1235 = load %nyx_string*, %nyx_string** %1233
  %1236 = load %nyx_string*, %nyx_string** %1175
  %1237 = call i1 @nyx_string_equals(%nyx_string* %1235, %nyx_string* %1236)
  br i1 %1237, label %sc_or_end254, label %sc_or_rhs253
sc_or_rhs253:
  %1238 = load %nyx_string*, %nyx_string** %1233
  %1239 = load %nyx_string*, %nyx_string** %1178
  %1240 = call i1 @nyx_string_starts_with(%nyx_string* %1238, %nyx_string* %1239)
  store i1 %1240, i1* %1234
  br label %sc_or_end254
sc_or_end254:
  %1241 = load i1, i1* %1234
  br i1 %1241, label %then255, label %else256
then255:
  %1242 = load i64, i64* %1172
  %1243 = add i64 %1242, 1
  store i64 %1243, i64* %1172
  br label %merge257
else256:
  %1244 = alloca i1
  store i1 false, i1* %1244
  %1245 = load %nyx_string*, %nyx_string** %1233
  %1246 = load %nyx_string*, %nyx_string** %1181
  %1247 = call i1 @nyx_string_starts_with(%nyx_string* %1245, %nyx_string* %1246)
  br i1 %1247, label %sc_and_rhs258, label %sc_and_end259
sc_and_rhs258:
  %1248 = load %nyx_string*, %nyx_string** %1233
  %1249 = load %nyx_string*, %nyx_string** %1184
  %1250 = call i1 @nyx_string_ends_with(%nyx_string* %1248, %nyx_string* %1249)
  store i1 %1250, i1* %1244
  br label %sc_and_end259
sc_and_end259:
  %1251 = load i1, i1* %1244
  br i1 %1251, label %then260, label %else261
then260:
  %1252 = load %nyx_string*, %nyx_string** %1233
  %1253 = load %nyx_string*, %nyx_string** %1233
  %1254 = call i64 @nyx_string_byte_length(%nyx_string* %1253)
  %1255 = sub i64 %1254, 1
  %1256 = call %nyx_string* @nyx_string_substring(%nyx_string* %1252, i64 1, i64 %1255)
  %1257 = call %nyx_string* @nyx_string_trim(%nyx_string* %1256)
  store %nyx_string* %1257, %nyx_string** %1171
  %1258 = load i64, i64* %1172
  %1259 = add i64 %1258, 1
  store i64 %1259, i64* %1172
  br label %merge262
else261:
  %1260 = load %nyx_string*, %nyx_string** %1233
  %1261 = call %nyx_string* @parse_toml_key(%nyx_string* %1260)
  %1262 = alloca %nyx_string*
  store %nyx_string* %1261, %nyx_string** %1262
  %1263 = load %nyx_string*, %nyx_string** %1233
  %1264 = call %nyx_string* @parse_toml_value(%nyx_string* %1263)
  %1265 = alloca %nyx_string*
  store %nyx_string* %1264, %nyx_string** %1265
  %1266 = load %nyx_string*, %nyx_string** %1171
  %1267 = load %nyx_string*, %nyx_string** %1187
  %1268 = call i1 @nyx_string_equals(%nyx_string* %1266, %nyx_string* %1267)
  br i1 %1268, label %then263, label %else264
then263:
  %1269 = load %nyx_string*, %nyx_string** %1262
  %1270 = load %nyx_string*, %nyx_string** %1190
  %1271 = call i1 @nyx_string_equals(%nyx_string* %1269, %nyx_string* %1270)
  br i1 %1271, label %then266, label %else267
then266:
  %1272 = load %nyx_string*, %nyx_string** %1265
  %1273 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 0
  store %nyx_string* %1272, %nyx_string** %1273
  br label %merge268
else267:
  br label %merge268
merge268:
  %1274 = load %nyx_string*, %nyx_string** %1262
  %1275 = load %nyx_string*, %nyx_string** %1193
  %1276 = call i1 @nyx_string_equals(%nyx_string* %1274, %nyx_string* %1275)
  br i1 %1276, label %then269, label %else270
then269:
  %1277 = load %nyx_string*, %nyx_string** %1265
  %1278 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 1
  store %nyx_string* %1277, %nyx_string** %1278
  br label %merge271
else270:
  br label %merge271
merge271:
  %1279 = load %nyx_string*, %nyx_string** %1262
  %1280 = load %nyx_string*, %nyx_string** %1196
  %1281 = call i1 @nyx_string_equals(%nyx_string* %1279, %nyx_string* %1280)
  br i1 %1281, label %then272, label %else273
then272:
  %1282 = load %nyx_string*, %nyx_string** %1265
  store %nyx_string* %1282, %nyx_string** %1154
  br label %merge274
else273:
  br label %merge274
merge274:
  %1283 = load %nyx_string*, %nyx_string** %1262
  %1284 = load %nyx_string*, %nyx_string** %1199
  %1285 = call i1 @nyx_string_equals(%nyx_string* %1283, %nyx_string* %1284)
  br i1 %1285, label %then275, label %else276
then275:
  %1286 = load %nyx_string*, %nyx_string** %1265
  %1287 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 4
  store %nyx_string* %1286, %nyx_string** %1287
  br label %merge277
else276:
  br label %merge277
merge277:
  %1288 = alloca i1
  store i1 false, i1* %1288
  %1289 = load %nyx_string*, %nyx_string** %1262
  %1290 = load %nyx_string*, %nyx_string** %1202
  %1291 = call i1 @nyx_string_equals(%nyx_string* %1289, %nyx_string* %1290)
  br i1 %1291, label %sc_and_rhs278, label %sc_and_end279
sc_and_rhs278:
  %1292 = load %nyx_string*, %nyx_string** %1265
  %1293 = load %nyx_string*, %nyx_string** %1205
  %1294 = call i1 @nyx_string_equals(%nyx_string* %1292, %nyx_string* %1293)
  store i1 %1294, i1* %1288
  br label %sc_and_end279
sc_and_end279:
  %1295 = load i1, i1* %1288
  br i1 %1295, label %then280, label %else281
then280:
  %1296 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 5
  store i1 1, i1* %1296
  br label %merge282
else281:
  br label %merge282
merge282:
  %1297 = load %nyx_string*, %nyx_string** %1262
  %1298 = load %nyx_string*, %nyx_string** %1208
  %1299 = call i1 @nyx_string_equals(%nyx_string* %1297, %nyx_string* %1298)
  br i1 %1299, label %then283, label %else284
then283:
  %1300 = load %nyx_string*, %nyx_string** %1265
  store %nyx_string* %1300, %nyx_string** %1160
  br label %merge285
else284:
  br label %merge285
merge285:
  br label %merge265
else264:
  br label %merge265
merge265:
  %1301 = load %nyx_string*, %nyx_string** %1171
  %1302 = load %nyx_string*, %nyx_string** %1211
  %1303 = call i1 @nyx_string_equals(%nyx_string* %1301, %nyx_string* %1302)
  br i1 %1303, label %then286, label %else287
then286:
  %1304 = load %nyx_string*, %nyx_string** %1262
  %1305 = load %nyx_string*, %nyx_string** %1196
  %1306 = call i1 @nyx_string_equals(%nyx_string* %1304, %nyx_string* %1305)
  br i1 %1306, label %then289, label %else290
then289:
  %1307 = load %nyx_string*, %nyx_string** %1265
  store %nyx_string* %1307, %nyx_string** %1157
  br label %merge291
else290:
  %1308 = load %nyx_string*, %nyx_string** %1262
  %1309 = load %nyx_string*, %nyx_string** %1208
  %1310 = call i1 @nyx_string_equals(%nyx_string* %1308, %nyx_string* %1309)
  br i1 %1310, label %then292, label %else293
then292:
  %1311 = load %nyx_string*, %nyx_string** %1265
  store %nyx_string* %1311, %nyx_string** %1163
  br label %merge294
else293:
  %1312 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 9
  %1313 = load %nyx_string*, %nyx_string** %1312
  %1314 = load %nyx_string*, %nyx_string** %1175
  %1315 = call i1 @nyx_string_equals(%nyx_string* %1313, %nyx_string* %1314)
  br i1 %1315, label %then295, label %else296
then295:
  %1316 = load %nyx_string*, %nyx_string** %1214
  %1317 = load %nyx_string*, %nyx_string** %1262
  %1318 = call %nyx_string* @nyx_string_concat(%nyx_string* %1316, %nyx_string* %1317)
  %1319 = load %nyx_string*, %nyx_string** %1217
  %1320 = call %nyx_string* @nyx_string_concat(%nyx_string* %1318, %nyx_string* %1319)
  %1321 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 9
  store %nyx_string* %1320, %nyx_string** %1321
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
  %1322 = load %nyx_string*, %nyx_string** %1171
  %1323 = load %nyx_string*, %nyx_string** %1220
  %1324 = call i1 @nyx_string_equals(%nyx_string* %1322, %nyx_string* %1323)
  br i1 %1324, label %then298, label %else299
then298:
  %1325 = alloca i1
  store i1 false, i1* %1325
  %1326 = load %nyx_string*, %nyx_string** %1262
  %1327 = load %nyx_string*, %nyx_string** %1175
  %1328 = call i1 @nyx_string_equals(%nyx_string* %1326, %nyx_string* %1327)
  %1329 = xor i1 %1328, true
  br i1 %1329, label %sc_and_rhs301, label %sc_and_end302
sc_and_rhs301:
  %1330 = load %nyx_string*, %nyx_string** %1265
  %1331 = load %nyx_string*, %nyx_string** %1175
  %1332 = call i1 @nyx_string_equals(%nyx_string* %1330, %nyx_string* %1331)
  %1333 = xor i1 %1332, true
  store i1 %1333, i1* %1325
  br label %sc_and_end302
sc_and_end302:
  %1334 = load i1, i1* %1325
  br i1 %1334, label %then303, label %else304
then303:
  %1335 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 7
  %1336 = load { i64, i8* }*, { i64, i8* }** %1335
  %1337 = load %nyx_string*, %nyx_string** %1262
  %1338 = ptrtoint %nyx_string* %1337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1336, i64 %1338, i64 2)
  %1339 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 8
  %1340 = load { i64, i8* }*, { i64, i8* }** %1339
  %1341 = load %nyx_string*, %nyx_string** %1265
  %1342 = ptrtoint %nyx_string* %1341 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1340, i64 %1342, i64 2)
  br label %merge305
else304:
  br label %merge305
merge305:
  br label %merge300
else299:
  br label %merge300
merge300:
  %1343 = load i64, i64* %1172
  %1344 = add i64 %1343, 1
  store i64 %1344, i64* %1172
  br label %merge262
merge262:
  br label %merge257
merge257:
  br label %while_cond250
while_end252:
  %1345 = alloca i1
  store i1 false, i1* %1345
  %1346 = alloca i1
  store i1 false, i1* %1346
  %1347 = load %nyx_string*, %nyx_string** %1154
  %1348 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1348, i64 0)
  %1350 = call i1 @nyx_string_equals(%nyx_string* %1347, %nyx_string* %1349)
  %1351 = xor i1 %1350, true
  br i1 %1351, label %sc_and_rhs306, label %sc_and_end307
sc_and_rhs306:
  %1352 = load %nyx_string*, %nyx_string** %1157
  %1353 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1353, i64 0)
  %1355 = call i1 @nyx_string_equals(%nyx_string* %1352, %nyx_string* %1354)
  %1356 = xor i1 %1355, true
  store i1 %1356, i1* %1346
  br label %sc_and_end307
sc_and_end307:
  %1357 = load i1, i1* %1346
  br i1 %1357, label %sc_and_rhs308, label %sc_and_end309
sc_and_rhs308:
  %1358 = load %nyx_string*, %nyx_string** %1154
  %1359 = load %nyx_string*, %nyx_string** %1157
  %1360 = call i1 @nyx_string_equals(%nyx_string* %1358, %nyx_string* %1359)
  %1361 = xor i1 %1360, true
  store i1 %1361, i1* %1345
  br label %sc_and_end309
sc_and_end309:
  %1362 = load i1, i1* %1345
  br i1 %1362, label %then310, label %else311
then310:
  %1363 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 9
  %1364 = load %nyx_string*, %nyx_string** %1363
  %1365 = getelementptr [1 x i8], [1 x i8]* @.str103, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1365, i64 0)
  %1367 = call i1 @nyx_string_equals(%nyx_string* %1364, %nyx_string* %1366)
  br i1 %1367, label %then313, label %else314
then313:
  %1368 = getelementptr [74 x i8], [74 x i8]* @.str104, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1368, i64 73)
  %1370 = load %nyx_string*, %nyx_string** %1154
  %1371 = call %nyx_string* @nyx_string_concat(%nyx_string* %1369, %nyx_string* %1370)
  %1372 = getelementptr [21 x i8], [21 x i8]* @.str105, i32 0, i32 0
  %1373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1372, i64 20)
  %1374 = call %nyx_string* @nyx_string_concat(%nyx_string* %1371, %nyx_string* %1373)
  %1375 = load %nyx_string*, %nyx_string** %1157
  %1376 = call %nyx_string* @nyx_string_concat(%nyx_string* %1374, %nyx_string* %1375)
  %1377 = getelementptr [18 x i8], [18 x i8]* @.str106, i32 0, i32 0
  %1378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1377, i64 17)
  %1379 = call %nyx_string* @nyx_string_concat(%nyx_string* %1376, %nyx_string* %1378)
  %1380 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 9
  store %nyx_string* %1379, %nyx_string** %1380
  br label %merge315
else314:
  br label %merge315
merge315:
  br label %merge312
else311:
  br label %merge312
merge312:
  %1381 = alloca i1
  store i1 false, i1* %1381
  %1382 = alloca i1
  store i1 false, i1* %1382
  %1383 = load %nyx_string*, %nyx_string** %1160
  %1384 = getelementptr [1 x i8], [1 x i8]* @.str107, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1384, i64 0)
  %1386 = call i1 @nyx_string_equals(%nyx_string* %1383, %nyx_string* %1385)
  %1387 = xor i1 %1386, true
  br i1 %1387, label %sc_and_rhs316, label %sc_and_end317
sc_and_rhs316:
  %1388 = load %nyx_string*, %nyx_string** %1163
  %1389 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1389, i64 0)
  %1391 = call i1 @nyx_string_equals(%nyx_string* %1388, %nyx_string* %1390)
  %1392 = xor i1 %1391, true
  store i1 %1392, i1* %1382
  br label %sc_and_end317
sc_and_end317:
  %1393 = load i1, i1* %1382
  br i1 %1393, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1394 = load %nyx_string*, %nyx_string** %1160
  %1395 = load %nyx_string*, %nyx_string** %1163
  %1396 = call i1 @nyx_string_equals(%nyx_string* %1394, %nyx_string* %1395)
  %1397 = xor i1 %1396, true
  store i1 %1397, i1* %1381
  br label %sc_and_end319
sc_and_end319:
  %1398 = load i1, i1* %1381
  br i1 %1398, label %then320, label %else321
then320:
  %1399 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 9
  %1400 = load %nyx_string*, %nyx_string** %1399
  %1401 = getelementptr [1 x i8], [1 x i8]* @.str109, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1401, i64 0)
  %1403 = call i1 @nyx_string_equals(%nyx_string* %1400, %nyx_string* %1402)
  br i1 %1403, label %then323, label %else324
then323:
  %1404 = getelementptr [78 x i8], [78 x i8]* @.str110, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1404, i64 77)
  %1406 = load %nyx_string*, %nyx_string** %1160
  %1407 = call %nyx_string* @nyx_string_concat(%nyx_string* %1405, %nyx_string* %1406)
  %1408 = getelementptr [23 x i8], [23 x i8]* @.str111, i32 0, i32 0
  %1409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1408, i64 22)
  %1410 = call %nyx_string* @nyx_string_concat(%nyx_string* %1407, %nyx_string* %1409)
  %1411 = load %nyx_string*, %nyx_string** %1163
  %1412 = call %nyx_string* @nyx_string_concat(%nyx_string* %1410, %nyx_string* %1411)
  %1413 = getelementptr [18 x i8], [18 x i8]* @.str112, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1413, i64 17)
  %1415 = call %nyx_string* @nyx_string_concat(%nyx_string* %1412, %nyx_string* %1414)
  %1416 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 9
  store %nyx_string* %1415, %nyx_string** %1416
  br label %merge325
else324:
  br label %merge325
merge325:
  br label %merge322
else321:
  br label %merge322
merge322:
  %1417 = load %nyx_string*, %nyx_string** %1157
  %1418 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1418, i64 0)
  %1420 = call i1 @nyx_string_equals(%nyx_string* %1417, %nyx_string* %1419)
  %1421 = xor i1 %1420, true
  br i1 %1421, label %then326, label %else327
then326:
  %1422 = load %nyx_string*, %nyx_string** %1157
  %1423 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 2
  store %nyx_string* %1422, %nyx_string** %1423
  br label %merge328
else327:
  %1424 = load %nyx_string*, %nyx_string** %1154
  %1425 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1425, i64 0)
  %1427 = call i1 @nyx_string_equals(%nyx_string* %1424, %nyx_string* %1426)
  %1428 = xor i1 %1427, true
  br i1 %1428, label %then329, label %else330
then329:
  %1429 = load %nyx_string*, %nyx_string** %1154
  %1430 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 2
  store %nyx_string* %1429, %nyx_string** %1430
  br label %merge331
else330:
  br label %merge331
merge331:
  br label %merge328
merge328:
  %1431 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 2
  %1432 = load %nyx_string*, %nyx_string** %1431
  %1433 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 3
  store %nyx_string* %1432, %nyx_string** %1433
  %1434 = load %nyx_string*, %nyx_string** %1163
  %1435 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %1436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1435, i64 0)
  %1437 = call i1 @nyx_string_equals(%nyx_string* %1434, %nyx_string* %1436)
  %1438 = xor i1 %1437, true
  br i1 %1438, label %then332, label %else333
then332:
  %1439 = load %nyx_string*, %nyx_string** %1163
  %1440 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 6
  store %nyx_string* %1439, %nyx_string** %1440
  br label %merge334
else333:
  %1441 = load %nyx_string*, %nyx_string** %1160
  %1442 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1442, i64 0)
  %1444 = call i1 @nyx_string_equals(%nyx_string* %1441, %nyx_string* %1443)
  %1445 = xor i1 %1444, true
  br i1 %1445, label %then335, label %else336
then335:
  %1446 = load %nyx_string*, %nyx_string** %1160
  %1447 = getelementptr %ProjectConfig, %ProjectConfig* %1151, i32 0, i32 6
  store %nyx_string* %1446, %nyx_string** %1447
  br label %merge337
else336:
  br label %merge337
merge337:
  br label %merge334
merge334:
  %1448 = load %ProjectConfig, %ProjectConfig* %1151
  ret %ProjectConfig %1448
}

define internal i64 @write_lockfile(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1449 = getelementptr [57 x i8], [57 x i8]* @.str117, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1449, i64 56)
  %1451 = getelementptr [11 x i8], [11 x i8]* @.str118, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1451, i64 10)
  %1453 = call %nyx_string* @nyx_string_concat(%nyx_string* %1450, %nyx_string* %1452)
  %1454 = getelementptr [9 x i8], [9 x i8]* @.str119, i32 0, i32 0
  %1455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1454, i64 8)
  %1456 = call %nyx_string* @nyx_string_concat(%nyx_string* %1453, %nyx_string* %1455)
  %1457 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %1458 = load %nyx_string*, %nyx_string** %1457
  %1459 = call %nyx_string* @nyx_string_concat(%nyx_string* %1456, %nyx_string* %1458)
  %1460 = getelementptr [3 x i8], [3 x i8]* @.str120, i32 0, i32 0
  %1461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1460, i64 2)
  %1462 = call %nyx_string* @nyx_string_concat(%nyx_string* %1459, %nyx_string* %1461)
  %1463 = getelementptr [12 x i8], [12 x i8]* @.str121, i32 0, i32 0
  %1464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1463, i64 11)
  %1465 = call %nyx_string* @nyx_string_concat(%nyx_string* %1462, %nyx_string* %1464)
  %1466 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %1467 = load %nyx_string*, %nyx_string** %1466
  %1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %1465, %nyx_string* %1467)
  %1469 = getelementptr [3 x i8], [3 x i8]* @.str122, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1469, i64 2)
  %1471 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1470)
  %1472 = getelementptr [9 x i8], [9 x i8]* @.str123, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1472, i64 8)
  %1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %1471, %nyx_string* %1473)
  %1475 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %1476 = load %nyx_string*, %nyx_string** %1475
  %1477 = call %nyx_string* @nyx_string_concat(%nyx_string* %1474, %nyx_string* %1476)
  %1478 = getelementptr [3 x i8], [3 x i8]* @.str124, i32 0, i32 0
  %1479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1478, i64 2)
  %1480 = call %nyx_string* @nyx_string_concat(%nyx_string* %1477, %nyx_string* %1479)
  %1481 = alloca %nyx_string*
  store %nyx_string* %1480, %nyx_string** %1481
  %1482 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1483 = load { i64, i8* }*, { i64, i8* }** %1482
  %1484 = call i64 @nyx_array_length({ i64, i8* }* %1483)
  %1485 = icmp sgt i64 %1484, 0
  br i1 %1485, label %then338, label %else339
then338:
  %1486 = load %nyx_string*, %nyx_string** %1481
  %1487 = getelementptr [17 x i8], [17 x i8]* @.str125, i32 0, i32 0
  %1488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1487, i64 16)
  %1489 = call %nyx_string* @nyx_string_concat(%nyx_string* %1486, %nyx_string* %1488)
  store %nyx_string* %1489, %nyx_string** %1481
  %1490 = alloca i64
  store i64 0, i64* %1490
  %1491 = getelementptr [5 x i8], [5 x i8]* @.str126, i32 0, i32 0
  %1492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1491, i64 4)
  %1493 = alloca %nyx_string*
  store %nyx_string* %1492, %nyx_string** %1493
  %1494 = getelementptr [3 x i8], [3 x i8]* @.str127, i32 0, i32 0
  %1495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1494, i64 2)
  %1496 = alloca %nyx_string*
  store %nyx_string* %1495, %nyx_string** %1496
  %1497 = call i8* @llvm.stacksave()
  br label %while_cond341
while_cond341:
  %1498 = load i64, i64* %1490
  %1499 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1500 = load { i64, i8* }*, { i64, i8* }** %1499
  %1501 = call i64 @nyx_array_length({ i64, i8* }* %1500)
  %1502 = icmp slt i64 %1498, %1501
  br i1 %1502, label %while_body342, label %while_end343
while_body342:
  call void @llvm.stackrestore(i8* %1497)
  %1503 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1504 = load { i64, i8* }*, { i64, i8* }** %1503
  %1505 = load i64, i64* %1490
  %1506 = call i64 @nyx_array_get({ i64, i8* }* %1504, i64 %1505)
  %1507 = inttoptr i64 %1506 to %nyx_string*
  %1508 = alloca %nyx_string*
  store %nyx_string* %1507, %nyx_string** %1508
  %1509 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %1510 = load { i64, i8* }*, { i64, i8* }** %1509
  %1511 = load i64, i64* %1490
  %1512 = call i64 @nyx_array_get({ i64, i8* }* %1510, i64 %1511)
  %1513 = inttoptr i64 %1512 to %nyx_string*
  %1514 = alloca %nyx_string*
  store %nyx_string* %1513, %nyx_string** %1514
  %1515 = load %nyx_string*, %nyx_string** %1481
  %1516 = load %nyx_string*, %nyx_string** %1508
  %1517 = call %nyx_string* @nyx_string_concat(%nyx_string* %1515, %nyx_string* %1516)
  %1518 = load %nyx_string*, %nyx_string** %1493
  %1519 = call %nyx_string* @nyx_string_concat(%nyx_string* %1517, %nyx_string* %1518)
  %1520 = load %nyx_string*, %nyx_string** %1514
  %1521 = call %nyx_string* @nyx_string_concat(%nyx_string* %1519, %nyx_string* %1520)
  %1522 = load %nyx_string*, %nyx_string** %1496
  %1523 = call %nyx_string* @nyx_string_concat(%nyx_string* %1521, %nyx_string* %1522)
  store %nyx_string* %1523, %nyx_string** %1481
  %1524 = load i64, i64* %1490
  %1525 = add i64 %1524, 1
  store i64 %1525, i64* %1490
  br label %while_cond341
while_end343:
  br label %merge340
else339:
  br label %merge340
merge340:
  %1526 = getelementptr [9 x i8], [9 x i8]* @.str128, i32 0, i32 0
  %1527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1526, i64 8)
  %1528 = call i8* @nyx_string_to_cstr(%nyx_string* %1527)
  %1529 = call i1 @nyx_file_exists(i8* %1528)
  br i1 %1529, label %then344, label %else345
then344:
  %1530 = getelementptr [9 x i8], [9 x i8]* @.str129, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1530, i64 8)
  %1532 = call i8* @nyx_string_to_cstr(%nyx_string* %1531)
  %1533 = call %nyx_string* @nyx_read_file(i8* %1532)
  %1534 = alloca %nyx_string*
  store %nyx_string* %1533, %nyx_string** %1534
  %1535 = load %nyx_string*, %nyx_string** %1534
  %1536 = load %nyx_string*, %nyx_string** %1481
  %1537 = call i1 @nyx_string_equals(%nyx_string* %1535, %nyx_string* %1536)
  br i1 %1537, label %then347, label %else348
then347:
  ret i64 0
else348:
  br label %merge349
merge349:
  br label %merge346
else345:
  br label %merge346
merge346:
  %1538 = getelementptr [9 x i8], [9 x i8]* @.str130, i32 0, i32 0
  %1539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1538, i64 8)
  %1540 = load %nyx_string*, %nyx_string** %1481
  %1541 = call i8* @nyx_string_to_cstr(%nyx_string* %1539)
  %1542 = call i1 @nyx_write_file_safe(i8* %1541, %nyx_string* %1540)
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
  %1543 = getelementptr [17 x i8], [17 x i8]* @.str131, i32 0, i32 0
  %1544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1543, i64 16)
  %1545 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1546 = call %nyx_string* @nyx_string_concat(%nyx_string* %1544, %nyx_string* %1545)
  %1547 = call i8* @nyx_string_to_cstr(%nyx_string* %1546)
  call void @nyx_print_string(i8* %1547)
  %1548 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1549 = alloca %nyx_string*
  store %nyx_string* %1548, %nyx_string** %1549
  %1550 = load %nyx_string*, %nyx_string** %1549
  %1551 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %1552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1551, i64 0)
  %1553 = call i1 @nyx_string_equals(%nyx_string* %1550, %nyx_string* %1552)
  br i1 %1553, label %then350, label %else351
then350:
  %1554 = getelementptr [32 x i8], [32 x i8]* @.str133, i32 0, i32 0
  %1555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1554, i64 31)
  %1556 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1557 = call %nyx_string* @nyx_string_concat(%nyx_string* %1555, %nyx_string* %1556)
  store %nyx_string* %1557, %nyx_string** %1549
  br label %merge352
else351:
  br label %merge352
merge352:
  %1558 = getelementptr [9 x i8], [9 x i8]* @.str134, i32 0, i32 0
  %1559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1558, i64 8)
  %1560 = call i8* @nyx_string_to_cstr(%nyx_string* %1559)
  %1561 = call i1 @nyx_file_exists(i8* %1560)
  br i1 %1561, label %then353, label %else354
then353:
  %1562 = getelementptr [9 x i8], [9 x i8]* @.str135, i32 0, i32 0
  %1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1562, i64 8)
  %1564 = call i8* @nyx_string_to_cstr(%nyx_string* %1563)
  %1565 = call %nyx_string* @nyx_read_file(i8* %1564)
  %1566 = alloca %nyx_string*
  store %nyx_string* %1565, %nyx_string** %1566
  %1567 = load %nyx_string*, %nyx_string** %1566
  %1568 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1569 = getelementptr [3 x i8], [3 x i8]* @.str136, i32 0, i32 0
  %1570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1569, i64 2)
  %1571 = call %nyx_string* @nyx_string_concat(%nyx_string* %1568, %nyx_string* %1570)
  %1572 = call i1 @nyx_string_contains(%nyx_string* %1567, %nyx_string* %1571)
  br i1 %1572, label %then356, label %else357
then356:
  %1573 = getelementptr [12 x i8], [12 x i8]* @.str137, i32 0, i32 0
  %1574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1573, i64 11)
  %1575 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1576 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1575)
  %1577 = getelementptr [27 x i8], [27 x i8]* @.str138, i32 0, i32 0
  %1578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1577, i64 26)
  %1579 = call %nyx_string* @nyx_string_concat(%nyx_string* %1576, %nyx_string* %1578)
  %1580 = call i8* @nyx_string_to_cstr(%nyx_string* %1579)
  call void @nyx_print_string(i8* %1580)
  ret i1 1
else357:
  br label %merge358
merge358:
  br label %merge355
else354:
  br label %merge355
merge355:
  %1581 = getelementptr [10 x i8], [10 x i8]* @.str139, i32 0, i32 0
  %1582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1581, i64 9)
  %1583 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1582, %nyx_string* %1583)
  %1585 = alloca %nyx_string*
  store %nyx_string* %1584, %nyx_string** %1585
  %1586 = load %nyx_string*, %nyx_string** %1585
  %1587 = call i8* @nyx_string_to_cstr(%nyx_string* %1586)
  %1588 = call i1 @nyx_file_exists(i8* %1587)
  br i1 %1588, label %then359, label %else360
then359:
  %1589 = getelementptr [19 x i8], [19 x i8]* @.str140, i32 0, i32 0
  %1590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1589, i64 18)
  %1591 = load %nyx_string*, %nyx_string** %1585
  %1592 = call %nyx_string* @nyx_string_concat(%nyx_string* %1590, %nyx_string* %1591)
  %1593 = call i8* @nyx_string_to_cstr(%nyx_string* %1592)
  call void @nyx_print_string(i8* %1593)
  br label %merge361
else360:
  %1594 = getelementptr [13 x i8], [13 x i8]* @.str141, i32 0, i32 0
  %1595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1594, i64 12)
  %1596 = load %nyx_string*, %nyx_string** %1549
  %1597 = call %nyx_string* @nyx_string_concat(%nyx_string* %1595, %nyx_string* %1596)
  %1598 = call i8* @nyx_string_to_cstr(%nyx_string* %1597)
  call void @nyx_print_string(i8* %1598)
  %1599 = getelementptr [43 x i8], [43 x i8]* @.str142, i32 0, i32 0
  %1600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1599, i64 42)
  %1601 = load %nyx_string*, %nyx_string** %1549
  %1602 = call %nyx_string* @nyx_string_concat(%nyx_string* %1600, %nyx_string* %1601)
  %1603 = getelementptr [2 x i8], [2 x i8]* @.str143, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1603, i64 1)
  %1605 = call %nyx_string* @nyx_string_concat(%nyx_string* %1602, %nyx_string* %1604)
  %1606 = load %nyx_string*, %nyx_string** %1585
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1606)
  %1608 = getelementptr [13 x i8], [13 x i8]* @.str144, i32 0, i32 0
  %1609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1608, i64 12)
  %1610 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1609)
  %1611 = alloca %nyx_string*
  store %nyx_string* %1610, %nyx_string** %1611
  %1612 = load %nyx_string*, %nyx_string** %1611
  %1613 = call i8* @nyx_string_to_cstr(%nyx_string* %1612)
  %1614 = call i64 @nyx_exec_code(i8* %1613)
  %1615 = alloca i64
  store i64 %1614, i64* %1615
  %1616 = load i64, i64* %1615
  %1617 = icmp ne i64 %1616, 0
  br i1 %1617, label %then362, label %else363
then362:
  %1618 = getelementptr [26 x i8], [26 x i8]* @.str145, i32 0, i32 0
  %1619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1618, i64 25)
  %1620 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1621 = call %nyx_string* @nyx_string_concat(%nyx_string* %1619, %nyx_string* %1620)
  %1622 = getelementptr [7 x i8], [7 x i8]* @.str146, i32 0, i32 0
  %1623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1622, i64 6)
  %1624 = call %nyx_string* @nyx_string_concat(%nyx_string* %1621, %nyx_string* %1623)
  %1625 = load %nyx_string*, %nyx_string** %1549
  %1626 = call %nyx_string* @nyx_string_concat(%nyx_string* %1624, %nyx_string* %1625)
  %1627 = call i8* @nyx_string_to_cstr(%nyx_string* %1626)
  call void @nyx_print_string(i8* %1627)
  ret i1 0
else363:
  br label %merge364
merge364:
  br label %merge361
merge361:
  %1628 = getelementptr [9 x i8], [9 x i8]* @.str147, i32 0, i32 0
  %1629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1628, i64 8)
  %1630 = call i8* @nyx_string_to_cstr(%nyx_string* %1629)
  %1631 = call i1 @nyx_file_exists(i8* %1630)
  br i1 %1631, label %then365, label %else366
then365:
  %1632 = getelementptr [9 x i8], [9 x i8]* @.str148, i32 0, i32 0
  %1633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1632, i64 8)
  %1634 = call i8* @nyx_string_to_cstr(%nyx_string* %1633)
  %1635 = call %nyx_string* @nyx_read_file(i8* %1634)
  %1636 = alloca %nyx_string*
  store %nyx_string* %1635, %nyx_string** %1636
  %1637 = load %nyx_string*, %nyx_string** %1636
  %1638 = alloca %nyx_string*
  store %nyx_string* %1637, %nyx_string** %1638
  %1639 = load %nyx_string*, %nyx_string** %1636
  %1640 = getelementptr [15 x i8], [15 x i8]* @.str149, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1640, i64 14)
  %1642 = call i1 @nyx_string_contains(%nyx_string* %1639, %nyx_string* %1641)
  %1643 = xor i1 %1642, true
  br i1 %1643, label %then368, label %else369
then368:
  %1644 = load %nyx_string*, %nyx_string** %1636
  %1645 = getelementptr [17 x i8], [17 x i8]* @.str150, i32 0, i32 0
  %1646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1645, i64 16)
  %1647 = call %nyx_string* @nyx_string_concat(%nyx_string* %1644, %nyx_string* %1646)
  %1648 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1649 = call %nyx_string* @nyx_string_concat(%nyx_string* %1647, %nyx_string* %1648)
  %1650 = getelementptr [8 x i8], [8 x i8]* @.str151, i32 0, i32 0
  %1651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1650, i64 7)
  %1652 = call %nyx_string* @nyx_string_concat(%nyx_string* %1649, %nyx_string* %1651)
  store %nyx_string* %1652, %nyx_string** %1638
  br label %merge370
else369:
  %1653 = load %nyx_string*, %nyx_string** %1636
  %1654 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1655 = call %nyx_string* @nyx_string_concat(%nyx_string* %1653, %nyx_string* %1654)
  %1656 = getelementptr [8 x i8], [8 x i8]* @.str152, i32 0, i32 0
  %1657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1656, i64 7)
  %1658 = call %nyx_string* @nyx_string_concat(%nyx_string* %1655, %nyx_string* %1657)
  store %nyx_string* %1658, %nyx_string** %1638
  br label %merge370
merge370:
  %1659 = getelementptr [9 x i8], [9 x i8]* @.str153, i32 0, i32 0
  %1660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1659, i64 8)
  %1661 = load %nyx_string*, %nyx_string** %1638
  %1662 = call i8* @nyx_string_to_cstr(%nyx_string* %1660)
  %1663 = call i1 @nyx_write_file_safe(i8* %1662, %nyx_string* %1661)
  %1664 = getelementptr [19 x i8], [19 x i8]* @.str154, i32 0, i32 0
  %1665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1664, i64 18)
  %1666 = call i8* @nyx_string_to_cstr(%nyx_string* %1665)
  call void @nyx_print_string(i8* %1666)
  br label %merge367
else366:
  br label %merge367
merge367:
  %1667 = getelementptr [10 x i8], [10 x i8]* @.str155, i32 0, i32 0
  %1668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1667, i64 9)
  %1669 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1670 = call %nyx_string* @nyx_string_concat(%nyx_string* %1668, %nyx_string* %1669)
  %1671 = getelementptr [9 x i8], [9 x i8]* @.str156, i32 0, i32 0
  %1672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1671, i64 8)
  %1673 = call %nyx_string* @nyx_string_concat(%nyx_string* %1670, %nyx_string* %1672)
  %1674 = call i8* @nyx_string_to_cstr(%nyx_string* %1673)
  call void @nyx_print_string(i8* %1674)
  ret i1 1
}

define internal %nyx_string* @resolve_seed_home(
) {
  %1675 = getelementptr [9 x i8], [9 x i8]* @.str157, i32 0, i32 0
  %1676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1675, i64 8)
  %1677 = call i8* @nyx_string_to_cstr(%nyx_string* %1676)
  %1678 = call %nyx_string* @nyx_getenv(i8* %1677)
  %1679 = alloca %nyx_string*
  store %nyx_string* %1678, %nyx_string** %1679
  %1680 = load %nyx_string*, %nyx_string** %1679
  %1681 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %1682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1681, i64 0)
  %1683 = call i1 @nyx_string_equals(%nyx_string* %1680, %nyx_string* %1682)
  %1684 = xor i1 %1683, true
  br i1 %1684, label %then371, label %else372
then371:
  %1685 = load %nyx_string*, %nyx_string** %1679
  ret %nyx_string* %1685
else372:
  br label %merge373
merge373:
  %1686 = getelementptr [5 x i8], [5 x i8]* @.str159, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1686, i64 4)
  %1688 = call i8* @nyx_string_to_cstr(%nyx_string* %1687)
  %1689 = call %nyx_string* @nyx_getenv(i8* %1688)
  %1690 = alloca %nyx_string*
  store %nyx_string* %1689, %nyx_string** %1690
  %1691 = load %nyx_string*, %nyx_string** %1690
  %1692 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %1693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1692, i64 0)
  %1694 = call i1 @nyx_string_equals(%nyx_string* %1691, %nyx_string* %1693)
  %1695 = xor i1 %1694, true
  br i1 %1695, label %then374, label %else375
then374:
  %1696 = load %nyx_string*, %nyx_string** %1690
  %1697 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %1698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1697, i64 5)
  %1699 = call %nyx_string* @nyx_string_concat(%nyx_string* %1696, %nyx_string* %1698)
  %1700 = alloca %nyx_string*
  store %nyx_string* %1699, %nyx_string** %1700
  %1701 = load %nyx_string*, %nyx_string** %1700
  %1702 = getelementptr [11 x i8], [11 x i8]* @.str162, i32 0, i32 0
  %1703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1702, i64 10)
  %1704 = call %nyx_string* @nyx_string_concat(%nyx_string* %1701, %nyx_string* %1703)
  %1705 = call i8* @nyx_string_to_cstr(%nyx_string* %1704)
  %1706 = call i1 @nyx_file_exists(i8* %1705)
  br i1 %1706, label %then377, label %else378
then377:
  %1707 = load %nyx_string*, %nyx_string** %1700
  ret %nyx_string* %1707
else378:
  br label %merge379
merge379:
  br label %merge376
else375:
  br label %merge376
merge376:
  %1708 = getelementptr [14 x i8], [14 x i8]* @.str163, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1708, i64 13)
  %1710 = call i8* @nyx_string_to_cstr(%nyx_string* %1709)
  %1711 = call i1 @nyx_file_exists(i8* %1710)
  br i1 %1711, label %then380, label %else381
then380:
  %1712 = getelementptr [2 x i8], [2 x i8]* @.str164, i32 0, i32 0
  %1713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1712, i64 1)
  ret %nyx_string* %1713
else381:
  br label %merge382
merge382:
  %1714 = getelementptr [1 x i8], [1 x i8]* @.str165, i32 0, i32 0
  %1715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1714, i64 0)
  ret %nyx_string* %1715
}

define internal %nyx_string* @seed_stamp(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1716 = getelementptr [19 x i8], [19 x i8]* @.str166, i32 0, i32 0
  %1717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1716, i64 18)
  %1718 = call %nyx_string* @toolchain_version()
  %1719 = call %nyx_string* @nyx_string_concat(%nyx_string* %1717, %nyx_string* %1718)
  %1720 = getelementptr [12 x i8], [12 x i8]* @.str167, i32 0, i32 0
  %1721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1720, i64 11)
  %1722 = call %nyx_string* @nyx_string_concat(%nyx_string* %1719, %nyx_string* %1721)
  %1723 = load %nyx_string*, %nyx_string** %lang.ptr
  %1724 = call %nyx_string* @nyx_string_concat(%nyx_string* %1722, %nyx_string* %1723)
  %1725 = getelementptr [6 x i8], [6 x i8]* @.str168, i32 0, i32 0
  %1726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1725, i64 5)
  %1727 = call %nyx_string* @nyx_string_concat(%nyx_string* %1724, %nyx_string* %1726)
  ret %nyx_string* %1727
}

define internal %nyx_string* @project_lang(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1728 = load %nyx_string*, %nyx_string** %dir.ptr
  %1729 = getelementptr [11 x i8], [11 x i8]* @.str169, i32 0, i32 0
  %1730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1729, i64 10)
  %1731 = call %nyx_string* @nyx_string_concat(%nyx_string* %1728, %nyx_string* %1730)
  %1732 = alloca %nyx_string*
  store %nyx_string* %1731, %nyx_string** %1732
  %1733 = load %nyx_string*, %nyx_string** %1732
  %1734 = call i8* @nyx_string_to_cstr(%nyx_string* %1733)
  %1735 = call i1 @nyx_file_exists(i8* %1734)
  %1736 = icmp eq i1 %1735, 0
  br i1 %1736, label %then383, label %else384
then383:
  %1737 = getelementptr [3 x i8], [3 x i8]* @.str170, i32 0, i32 0
  %1738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1737, i64 2)
  ret %nyx_string* %1738
else384:
  br label %merge385
merge385:
  %1739 = load %nyx_string*, %nyx_string** %1732
  %1740 = call i8* @nyx_string_to_cstr(%nyx_string* %1739)
  %1741 = call %nyx_string* @nyx_read_file(i8* %1740)
  %1742 = alloca %nyx_string*
  store %nyx_string* %1741, %nyx_string** %1742
  %1743 = getelementptr [11 x i8], [11 x i8]* @.str171, i32 0, i32 0
  %1744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1743, i64 10)
  %1745 = alloca %nyx_string*
  store %nyx_string* %1744, %nyx_string** %1745
  %1746 = load %nyx_string*, %nyx_string** %1742
  %1747 = load %nyx_string*, %nyx_string** %1745
  %1748 = call i64 @nyx_string_index_of(%nyx_string* %1746, %nyx_string* %1747)
  %1749 = alloca i64
  store i64 %1748, i64* %1749
  %1750 = load i64, i64* %1749
  %1751 = icmp slt i64 %1750, 0
  br i1 %1751, label %then386, label %else387
then386:
  %1752 = getelementptr [3 x i8], [3 x i8]* @.str172, i32 0, i32 0
  %1753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1752, i64 2)
  ret %nyx_string* %1753
else387:
  br label %merge388
merge388:
  %1754 = load i64, i64* %1749
  %1755 = load %nyx_string*, %nyx_string** %1745
  %1756 = call i64 @nyx_string_byte_length(%nyx_string* %1755)
  %1757 = add i64 %1754, %1756
  %1758 = alloca i64
  store i64 %1757, i64* %1758
  %1759 = load i64, i64* %1758
  %1760 = add i64 %1759, 2
  %1761 = load %nyx_string*, %nyx_string** %1742
  %1762 = call i64 @nyx_string_byte_length(%nyx_string* %1761)
  %1763 = icmp sgt i64 %1760, %1762
  br i1 %1763, label %then389, label %else390
then389:
  %1764 = getelementptr [3 x i8], [3 x i8]* @.str173, i32 0, i32 0
  %1765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1764, i64 2)
  ret %nyx_string* %1765
else390:
  br label %merge391
merge391:
  %1766 = load %nyx_string*, %nyx_string** %1742
  %1767 = load i64, i64* %1758
  %1768 = load i64, i64* %1758
  %1769 = add i64 %1768, 2
  %1770 = call %nyx_string* @nyx_string_substring(%nyx_string* %1766, i64 %1767, i64 %1769)
  %1771 = alloca %nyx_string*
  store %nyx_string* %1770, %nyx_string** %1771
  %1772 = load %nyx_string*, %nyx_string** %1771
  %1773 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1773, i64 2)
  %1775 = call i1 @nyx_string_equals(%nyx_string* %1772, %nyx_string* %1774)
  br i1 %1775, label %then392, label %else393
then392:
  %1776 = getelementptr [3 x i8], [3 x i8]* @.str175, i32 0, i32 0
  %1777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1776, i64 2)
  ret %nyx_string* %1777
else393:
  br label %merge394
merge394:
  %1778 = getelementptr [3 x i8], [3 x i8]* @.str176, i32 0, i32 0
  %1779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1778, i64 2)
  ret %nyx_string* %1779
}

define internal %nyx_string* @seed_body(
%nyx_string* %content.param, %nyx_string* %lang.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1780 = load %nyx_string*, %nyx_string** %content.ptr
  %1781 = alloca %nyx_string*
  store %nyx_string* %1780, %nyx_string** %1781
  %1782 = load %nyx_string*, %nyx_string** %1781
  %1783 = call i64 @nyx_string_byte_length(%nyx_string* %1782)
  %1784 = alloca i64
  store i64 %1783, i64* %1784
  %1785 = alloca i1
  store i1 1, i1* %1785
  %1786 = load i64, i64* %1784
  %1787 = icmp sgt i64 %1786, 0
  br i1 %1787, label %then395, label %else396
then395:
  %1788 = load %nyx_string*, %nyx_string** %1781
  %1789 = load i64, i64* %1784
  %1790 = sub i64 %1789, 1
  %1791 = load i64, i64* %1784
  %1792 = call %nyx_string* @nyx_string_substring(%nyx_string* %1788, i64 %1790, i64 %1791)
  %1793 = getelementptr [2 x i8], [2 x i8]* @.str177, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1793, i64 1)
  %1795 = call i1 @nyx_string_equals(%nyx_string* %1792, %nyx_string* %1794)
  br i1 %1795, label %then398, label %else399
then398:
  store i1 0, i1* %1785
  br label %merge400
else399:
  br label %merge400
merge400:
  br label %merge397
else396:
  br label %merge397
merge397:
  %1796 = load i1, i1* %1785
  br i1 %1796, label %then401, label %else402
then401:
  %1797 = load %nyx_string*, %nyx_string** %1781
  %1798 = getelementptr [2 x i8], [2 x i8]* @.str178, i32 0, i32 0
  %1799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1798, i64 1)
  %1800 = call %nyx_string* @nyx_string_concat(%nyx_string* %1797, %nyx_string* %1799)
  store %nyx_string* %1800, %nyx_string** %1781
  br label %merge403
else402:
  br label %merge403
merge403:
  %1801 = load %nyx_string*, %nyx_string** %1781
  %1802 = getelementptr [2 x i8], [2 x i8]* @.str179, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1802, i64 1)
  %1804 = call %nyx_string* @nyx_string_concat(%nyx_string* %1801, %nyx_string* %1803)
  %1805 = load %nyx_string*, %nyx_string** %lang.ptr
  %1806 = call %nyx_string* @seed_stamp(%nyx_string* %1805)
  %1807 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1806)
  ret %nyx_string* %1807
}

define internal i64 @seed_file(
%nyx_string* %dst.param, %nyx_string* %content.param, %nyx_string* %lang.param) {
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1808 = load %nyx_string*, %nyx_string** %dst.ptr
  %1809 = load %nyx_string*, %nyx_string** %content.ptr
  %1810 = load %nyx_string*, %nyx_string** %lang.ptr
  %1811 = call %nyx_string* @seed_body(%nyx_string* %1809, %nyx_string* %1810)
  %1812 = call i8* @nyx_string_to_cstr(%nyx_string* %1808)
  %1813 = call i1 @nyx_write_file_safe(i8* %1812, %nyx_string* %1811)
  ret i64 0
}

define internal i64 @seed_gitignore(
%nyx_string* %dir.param, %nyx_string* %project_name.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %project_name.ptr = alloca %nyx_string*
  store %nyx_string* %project_name.param, %nyx_string** %project_name.ptr
  %1814 = call %nyx_string* @resolve_seed_home()
  %1815 = alloca %nyx_string*
  store %nyx_string* %1814, %nyx_string** %1815
  %1816 = load %nyx_string*, %nyx_string** %1815
  %1817 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1817, i64 0)
  %1819 = call i1 @nyx_string_equals(%nyx_string* %1816, %nyx_string* %1818)
  br i1 %1819, label %then404, label %else405
then404:
  ret i64 0
else405:
  br label %merge406
merge406:
  %1820 = load %nyx_string*, %nyx_string** %1815
  %1821 = getelementptr [21 x i8], [21 x i8]* @.str181, i32 0, i32 0
  %1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1821, i64 20)
  %1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %1820, %nyx_string* %1822)
  %1824 = alloca %nyx_string*
  store %nyx_string* %1823, %nyx_string** %1824
  %1825 = load %nyx_string*, %nyx_string** %1824
  %1826 = call i8* @nyx_string_to_cstr(%nyx_string* %1825)
  %1827 = call i1 @nyx_file_exists(i8* %1826)
  %1828 = icmp eq i1 %1827, 0
  br i1 %1828, label %then407, label %else408
then407:
  ret i64 0
else408:
  br label %merge409
merge409:
  %1829 = load %nyx_string*, %nyx_string** %dir.ptr
  %1830 = getelementptr [12 x i8], [12 x i8]* @.str182, i32 0, i32 0
  %1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1830, i64 11)
  %1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %1829, %nyx_string* %1831)
  %1833 = call i8* @nyx_string_to_cstr(%nyx_string* %1832)
  %1834 = call i1 @nyx_file_exists(i8* %1833)
  br i1 %1834, label %then410, label %else411
then410:
  ret i64 0
else411:
  br label %merge412
merge412:
  %1835 = load %nyx_string*, %nyx_string** %1824
  %1836 = call i8* @nyx_string_to_cstr(%nyx_string* %1835)
  %1837 = call %nyx_string* @nyx_read_file(i8* %1836)
  %1838 = alloca %nyx_string*
  store %nyx_string* %1837, %nyx_string** %1838
  %1839 = load %nyx_string*, %nyx_string** %dir.ptr
  %1840 = getelementptr [12 x i8], [12 x i8]* @.str183, i32 0, i32 0
  %1841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1840, i64 11)
  %1842 = call %nyx_string* @nyx_string_concat(%nyx_string* %1839, %nyx_string* %1841)
  %1843 = load %nyx_string*, %nyx_string** %1838
  %1844 = getelementptr [11 x i8], [11 x i8]* @.str184, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1844, i64 10)
  %1846 = load %nyx_string*, %nyx_string** %project_name.ptr
  %1847 = call %nyx_string* @nyx_string_replace(%nyx_string* %1843, %nyx_string* %1845, %nyx_string* %1846)
  %1848 = call i8* @nyx_string_to_cstr(%nyx_string* %1842)
  %1849 = call i1 @nyx_write_file_safe(i8* %1848, %nyx_string* %1847)
  ret i64 0
}

define internal i1 @validate_agents(
%nyx_string* %agents.param) {
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %1850 = load %nyx_string*, %nyx_string** %agents.ptr
  %1851 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %1852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1851, i64 0)
  %1853 = call i1 @nyx_string_equals(%nyx_string* %1850, %nyx_string* %1852)
  br i1 %1853, label %then413, label %else414
then413:
  ret i1 1
else414:
  br label %merge415
merge415:
  %1854 = load %nyx_string*, %nyx_string** %agents.ptr
  %1855 = getelementptr [2 x i8], [2 x i8]* @.str186, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1855, i64 1)
  %1857 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1854, %nyx_string* %1856)
  %1858 = alloca { i64, i8* }*
  store { i64, i8* }* %1857, { i64, i8* }** %1858
  %1859 = alloca i64
  store i64 0, i64* %1859
  %1860 = getelementptr [7 x i8], [7 x i8]* @.str187, i32 0, i32 0
  %1861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1860, i64 6)
  %1862 = alloca %nyx_string*
  store %nyx_string* %1861, %nyx_string** %1862
  %1863 = getelementptr [7 x i8], [7 x i8]* @.str188, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1863, i64 6)
  %1865 = alloca %nyx_string*
  store %nyx_string* %1864, %nyx_string** %1865
  %1866 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1866, i64 7)
  %1868 = alloca %nyx_string*
  store %nyx_string* %1867, %nyx_string** %1868
  %1869 = getelementptr [28 x i8], [28 x i8]* @.str190, i32 0, i32 0
  %1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1869, i64 27)
  %1871 = alloca %nyx_string*
  store %nyx_string* %1870, %nyx_string** %1871
  %1872 = getelementptr [46 x i8], [46 x i8]* @.str191, i32 0, i32 0
  %1873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1872, i64 45)
  %1874 = alloca %nyx_string*
  store %nyx_string* %1873, %nyx_string** %1874
  %1875 = getelementptr [72 x i8], [72 x i8]* @.str192, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1875, i64 71)
  %1877 = alloca %nyx_string*
  store %nyx_string* %1876, %nyx_string** %1877
  %1878 = call i8* @llvm.stacksave()
  br label %while_cond416
while_cond416:
  %1879 = load i64, i64* %1859
  %1880 = load { i64, i8* }*, { i64, i8* }** %1858
  %1881 = call i64 @nyx_array_length({ i64, i8* }* %1880)
  %1882 = icmp slt i64 %1879, %1881
  br i1 %1882, label %while_body417, label %while_end418
while_body417:
  call void @llvm.stackrestore(i8* %1878)
  %1883 = load { i64, i8* }*, { i64, i8* }** %1858
  %1884 = load i64, i64* %1859
  %1885 = call i64 @nyx_array_get_checked({ i64, i8* }* %1883, i64 %1884, i64 2)
  %1886 = inttoptr i64 %1885 to %nyx_string*
  %1887 = alloca %nyx_string*
  store %nyx_string* %1886, %nyx_string** %1887
  %1888 = load %nyx_string*, %nyx_string** %1887
  %1889 = call %nyx_string* @nyx_string_trim(%nyx_string* %1888)
  %1890 = alloca %nyx_string*
  store %nyx_string* %1889, %nyx_string** %1890
  %1891 = alloca i1
  store i1 false, i1* %1891
  %1892 = alloca i1
  store i1 false, i1* %1892
  %1893 = load %nyx_string*, %nyx_string** %1890
  %1894 = load %nyx_string*, %nyx_string** %1862
  %1895 = call i1 @nyx_string_equals(%nyx_string* %1893, %nyx_string* %1894)
  %1896 = xor i1 %1895, true
  br i1 %1896, label %sc_and_rhs419, label %sc_and_end420
sc_and_rhs419:
  %1897 = load %nyx_string*, %nyx_string** %1890
  %1898 = load %nyx_string*, %nyx_string** %1865
  %1899 = call i1 @nyx_string_equals(%nyx_string* %1897, %nyx_string* %1898)
  %1900 = xor i1 %1899, true
  store i1 %1900, i1* %1892
  br label %sc_and_end420
sc_and_end420:
  %1901 = load i1, i1* %1892
  br i1 %1901, label %sc_and_rhs421, label %sc_and_end422
sc_and_rhs421:
  %1902 = load %nyx_string*, %nyx_string** %1890
  %1903 = load %nyx_string*, %nyx_string** %1868
  %1904 = call i1 @nyx_string_equals(%nyx_string* %1902, %nyx_string* %1903)
  %1905 = xor i1 %1904, true
  store i1 %1905, i1* %1891
  br label %sc_and_end422
sc_and_end422:
  %1906 = load i1, i1* %1891
  br i1 %1906, label %then423, label %else424
then423:
  %1907 = load %nyx_string*, %nyx_string** %1871
  %1908 = load %nyx_string*, %nyx_string** %1890
  %1909 = call %nyx_string* @nyx_string_concat(%nyx_string* %1907, %nyx_string* %1908)
  %1910 = load %nyx_string*, %nyx_string** %1874
  %1911 = call %nyx_string* @nyx_string_concat(%nyx_string* %1909, %nyx_string* %1910)
  %1912 = call i8* @nyx_string_to_cstr(%nyx_string* %1911)
  call void @nyx_print_string(i8* %1912)
  %1913 = load %nyx_string*, %nyx_string** %1877
  %1914 = call i8* @nyx_string_to_cstr(%nyx_string* %1913)
  call void @nyx_print_string(i8* %1914)
  ret i1 0
else424:
  br label %merge425
merge425:
  %1915 = load i64, i64* %1859
  %1916 = add i64 %1915, 1
  store i64 %1916, i64* %1859
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
  %1917 = load %nyx_string*, %nyx_string** %agents.ptr
  %1918 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %1919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1918, i64 0)
  %1920 = call i1 @nyx_string_equals(%nyx_string* %1917, %nyx_string* %1919)
  br i1 %1920, label %then426, label %else427
then426:
  ret i64 0
else427:
  br label %merge428
merge428:
  %1921 = call %nyx_string* @resolve_seed_home()
  %1922 = alloca %nyx_string*
  store %nyx_string* %1921, %nyx_string** %1922
  %1923 = load %nyx_string*, %nyx_string** %1922
  %1924 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1924, i64 0)
  %1926 = call i1 @nyx_string_equals(%nyx_string* %1923, %nyx_string* %1925)
  br i1 %1926, label %then429, label %else430
then429:
  ret i64 0
else430:
  br label %merge431
merge431:
  %1927 = load %nyx_string*, %nyx_string** %1922
  %1928 = getelementptr [20 x i8], [20 x i8]* @.str195, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1928, i64 19)
  %1930 = call %nyx_string* @nyx_string_concat(%nyx_string* %1927, %nyx_string* %1929)
  %1931 = alloca %nyx_string*
  store %nyx_string* %1930, %nyx_string** %1931
  %1932 = load %nyx_string*, %nyx_string** %agents.ptr
  %1933 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %1934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1933, i64 1)
  %1935 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1932, %nyx_string* %1934)
  %1936 = alloca { i64, i8* }*
  store { i64, i8* }* %1935, { i64, i8* }** %1936
  %1937 = alloca i64
  store i64 0, i64* %1937
  %1938 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %1939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1938, i64 0)
  %1940 = alloca %nyx_string*
  store %nyx_string* %1939, %nyx_string** %1940
  %1941 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1941, i64 1)
  %1943 = alloca %nyx_string*
  store %nyx_string* %1942, %nyx_string** %1943
  %1944 = getelementptr [2 x i8], [2 x i8]* @.str199, i32 0, i32 0
  %1945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1944, i64 1)
  %1946 = alloca %nyx_string*
  store %nyx_string* %1945, %nyx_string** %1946
  %1947 = getelementptr [4 x i8], [4 x i8]* @.str200, i32 0, i32 0
  %1948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1947, i64 3)
  %1949 = alloca %nyx_string*
  store %nyx_string* %1948, %nyx_string** %1949
  %1950 = getelementptr [7 x i8], [7 x i8]* @.str201, i32 0, i32 0
  %1951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1950, i64 6)
  %1952 = alloca %nyx_string*
  store %nyx_string* %1951, %nyx_string** %1952
  %1953 = getelementptr [11 x i8], [11 x i8]* @.str202, i32 0, i32 0
  %1954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1953, i64 10)
  %1955 = alloca %nyx_string*
  store %nyx_string* %1954, %nyx_string** %1955
  %1956 = getelementptr [7 x i8], [7 x i8]* @.str203, i32 0, i32 0
  %1957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1956, i64 6)
  %1958 = alloca %nyx_string*
  store %nyx_string* %1957, %nyx_string** %1958
  %1959 = getelementptr [14 x i8], [14 x i8]* @.str204, i32 0, i32 0
  %1960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1959, i64 13)
  %1961 = alloca %nyx_string*
  store %nyx_string* %1960, %nyx_string** %1961
  %1962 = getelementptr [8 x i8], [8 x i8]* @.str205, i32 0, i32 0
  %1963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1962, i64 7)
  %1964 = alloca %nyx_string*
  store %nyx_string* %1963, %nyx_string** %1964
  %1965 = getelementptr [11 x i8], [11 x i8]* @.str206, i32 0, i32 0
  %1966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1965, i64 10)
  %1967 = alloca %nyx_string*
  store %nyx_string* %1966, %nyx_string** %1967
  %1968 = getelementptr [10 x i8], [10 x i8]* @.str207, i32 0, i32 0
  %1969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1968, i64 9)
  %1970 = alloca %nyx_string*
  store %nyx_string* %1969, %nyx_string** %1970
  %1971 = getelementptr [33 x i8], [33 x i8]* @.str208, i32 0, i32 0
  %1972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %1971, i64 32)
  %1973 = alloca %nyx_string*
  store %nyx_string* %1972, %nyx_string** %1973
  %1974 = getelementptr [44 x i8], [44 x i8]* @.str209, i32 0, i32 0
  %1975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %1974, i64 43)
  %1976 = alloca %nyx_string*
  store %nyx_string* %1975, %nyx_string** %1976
  %1977 = getelementptr [4 x i8], [4 x i8]* @.str210, i32 0, i32 0
  %1978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %1977, i64 3)
  %1979 = alloca %nyx_string*
  store %nyx_string* %1978, %nyx_string** %1979
  %1980 = getelementptr [20 x i8], [20 x i8]* @.str211, i32 0, i32 0
  %1981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %1980, i64 19)
  %1982 = alloca %nyx_string*
  store %nyx_string* %1981, %nyx_string** %1982
  %1983 = call i8* @llvm.stacksave()
  br label %while_cond432
while_cond432:
  %1984 = load i64, i64* %1937
  %1985 = load { i64, i8* }*, { i64, i8* }** %1936
  %1986 = call i64 @nyx_array_length({ i64, i8* }* %1985)
  %1987 = icmp slt i64 %1984, %1986
  br i1 %1987, label %while_body433, label %while_end434
while_body433:
  call void @llvm.stackrestore(i8* %1983)
  %1988 = load { i64, i8* }*, { i64, i8* }** %1936
  %1989 = load i64, i64* %1937
  %1990 = call i64 @nyx_array_get_checked({ i64, i8* }* %1988, i64 %1989, i64 2)
  %1991 = inttoptr i64 %1990 to %nyx_string*
  %1992 = alloca %nyx_string*
  store %nyx_string* %1991, %nyx_string** %1992
  %1993 = load %nyx_string*, %nyx_string** %1992
  %1994 = call %nyx_string* @nyx_string_trim(%nyx_string* %1993)
  %1995 = alloca %nyx_string*
  store %nyx_string* %1994, %nyx_string** %1995
  %1996 = load %nyx_string*, %nyx_string** %1995
  %1997 = load %nyx_string*, %nyx_string** %1940
  %1998 = call i1 @nyx_string_equals(%nyx_string* %1996, %nyx_string* %1997)
  %1999 = xor i1 %1998, true
  br i1 %1999, label %then435, label %else436
then435:
  %2000 = load %nyx_string*, %nyx_string** %1931
  %2001 = load %nyx_string*, %nyx_string** %1943
  %2002 = call %nyx_string* @nyx_string_concat(%nyx_string* %2000, %nyx_string* %2001)
  %2003 = load %nyx_string*, %nyx_string** %1995
  %2004 = call %nyx_string* @nyx_string_concat(%nyx_string* %2002, %nyx_string* %2003)
  %2005 = load %nyx_string*, %nyx_string** %1946
  %2006 = call %nyx_string* @nyx_string_concat(%nyx_string* %2004, %nyx_string* %2005)
  %2007 = load %nyx_string*, %nyx_string** %lang.ptr
  %2008 = call %nyx_string* @nyx_string_concat(%nyx_string* %2006, %nyx_string* %2007)
  %2009 = load %nyx_string*, %nyx_string** %1949
  %2010 = call %nyx_string* @nyx_string_concat(%nyx_string* %2008, %nyx_string* %2009)
  %2011 = alloca %nyx_string*
  store %nyx_string* %2010, %nyx_string** %2011
  %2012 = load %nyx_string*, %nyx_string** %2011
  %2013 = call i8* @nyx_string_to_cstr(%nyx_string* %2012)
  %2014 = call i1 @nyx_file_exists(i8* %2013)
  br i1 %2014, label %then438, label %else439
then438:
  %2015 = load %nyx_string*, %nyx_string** %2011
  %2016 = call i8* @nyx_string_to_cstr(%nyx_string* %2015)
  %2017 = call %nyx_string* @nyx_read_file(i8* %2016)
  %2018 = alloca %nyx_string*
  store %nyx_string* %2017, %nyx_string** %2018
  %2019 = load %nyx_string*, %nyx_string** %1995
  %2020 = load %nyx_string*, %nyx_string** %1952
  %2021 = call i1 @nyx_string_equals(%nyx_string* %2019, %nyx_string* %2020)
  br i1 %2021, label %then441, label %else442
then441:
  %2022 = load %nyx_string*, %nyx_string** %dir.ptr
  %2023 = load %nyx_string*, %nyx_string** %1955
  %2024 = call %nyx_string* @nyx_string_concat(%nyx_string* %2022, %nyx_string* %2023)
  %2025 = load %nyx_string*, %nyx_string** %2018
  %2026 = load %nyx_string*, %nyx_string** %lang.ptr
  %2027 = call i64 @seed_file(%nyx_string* %2024, %nyx_string* %2025, %nyx_string* %2026)
  br label %merge443
else442:
  br label %merge443
merge443:
  %2028 = load %nyx_string*, %nyx_string** %1995
  %2029 = load %nyx_string*, %nyx_string** %1958
  %2030 = call i1 @nyx_string_equals(%nyx_string* %2028, %nyx_string* %2029)
  br i1 %2030, label %then444, label %else445
then444:
  %2031 = load %nyx_string*, %nyx_string** %dir.ptr
  %2032 = load %nyx_string*, %nyx_string** %1961
  %2033 = call %nyx_string* @nyx_string_concat(%nyx_string* %2031, %nyx_string* %2032)
  %2034 = load %nyx_string*, %nyx_string** %2018
  %2035 = load %nyx_string*, %nyx_string** %lang.ptr
  %2036 = call i64 @seed_file(%nyx_string* %2033, %nyx_string* %2034, %nyx_string* %2035)
  br label %merge446
else445:
  br label %merge446
merge446:
  %2037 = load %nyx_string*, %nyx_string** %1995
  %2038 = load %nyx_string*, %nyx_string** %1964
  %2039 = call i1 @nyx_string_equals(%nyx_string* %2037, %nyx_string* %2038)
  br i1 %2039, label %then447, label %else448
then447:
  %2040 = load %nyx_string*, %nyx_string** %1967
  %2041 = load %nyx_string*, %nyx_string** %dir.ptr
  %2042 = call %nyx_string* @nyx_string_concat(%nyx_string* %2040, %nyx_string* %2041)
  %2043 = load %nyx_string*, %nyx_string** %1970
  %2044 = call %nyx_string* @nyx_string_concat(%nyx_string* %2042, %nyx_string* %2043)
  %2045 = call i8* @nyx_string_to_cstr(%nyx_string* %2044)
  %2046 = call %nyx_string* @nyx_exec(i8* %2045)
  %2047 = load %nyx_string*, %nyx_string** %dir.ptr
  %2048 = load %nyx_string*, %nyx_string** %1973
  %2049 = call %nyx_string* @nyx_string_concat(%nyx_string* %2047, %nyx_string* %2048)
  %2050 = load %nyx_string*, %nyx_string** %2018
  %2051 = load %nyx_string*, %nyx_string** %lang.ptr
  %2052 = call i64 @seed_file(%nyx_string* %2049, %nyx_string* %2050, %nyx_string* %2051)
  br label %merge449
else448:
  br label %merge449
merge449:
  br label %merge440
else439:
  %2053 = load %nyx_string*, %nyx_string** %1976
  %2054 = load %nyx_string*, %nyx_string** %1995
  %2055 = call %nyx_string* @nyx_string_concat(%nyx_string* %2053, %nyx_string* %2054)
  %2056 = load %nyx_string*, %nyx_string** %1979
  %2057 = call %nyx_string* @nyx_string_concat(%nyx_string* %2055, %nyx_string* %2056)
  %2058 = load %nyx_string*, %nyx_string** %2011
  %2059 = call %nyx_string* @nyx_string_concat(%nyx_string* %2057, %nyx_string* %2058)
  %2060 = load %nyx_string*, %nyx_string** %1982
  %2061 = call %nyx_string* @nyx_string_concat(%nyx_string* %2059, %nyx_string* %2060)
  %2062 = call i8* @nyx_string_to_cstr(%nyx_string* %2061)
  call void @nyx_print_string(i8* %2062)
  br label %merge440
merge440:
  br label %merge437
else436:
  br label %merge437
merge437:
  %2063 = load i64, i64* %1937
  %2064 = add i64 %2063, 1
  store i64 %2064, i64* %1937
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
  %2065 = call %nyx_string* @resolve_seed_home()
  %2066 = alloca %nyx_string*
  store %nyx_string* %2065, %nyx_string** %2066
  %2067 = load %nyx_string*, %nyx_string** %2066
  %2068 = getelementptr [11 x i8], [11 x i8]* @.str212, i32 0, i32 0
  %2069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2068, i64 10)
  %2070 = call %nyx_string* @nyx_string_concat(%nyx_string* %2067, %nyx_string* %2069)
  %2071 = alloca %nyx_string*
  store %nyx_string* %2070, %nyx_string** %2071
  %2072 = load %nyx_string*, %nyx_string** %2071
  %2073 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2073, i64 1)
  %2075 = call %nyx_string* @nyx_string_concat(%nyx_string* %2072, %nyx_string* %2074)
  %2076 = load %nyx_string*, %nyx_string** %lang.ptr
  %2077 = call %nyx_string* @nyx_string_concat(%nyx_string* %2075, %nyx_string* %2076)
  %2078 = alloca %nyx_string*
  store %nyx_string* %2077, %nyx_string** %2078
  %2079 = alloca i1
  store i1 0, i1* %2079
  %2080 = load %nyx_string*, %nyx_string** %2066
  %2081 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %2082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2081, i64 0)
  %2083 = call i1 @nyx_string_equals(%nyx_string* %2080, %nyx_string* %2082)
  %2084 = xor i1 %2083, true
  br i1 %2084, label %then450, label %else451
then450:
  %2085 = load %nyx_string*, %nyx_string** %2078
  %2086 = getelementptr [11 x i8], [11 x i8]* @.str215, i32 0, i32 0
  %2087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2086, i64 10)
  %2088 = call %nyx_string* @nyx_string_concat(%nyx_string* %2085, %nyx_string* %2087)
  %2089 = call i8* @nyx_string_to_cstr(%nyx_string* %2088)
  %2090 = call i1 @nyx_file_exists(i8* %2089)
  br i1 %2090, label %then453, label %else454
then453:
  store i1 1, i1* %2079
  br label %merge455
else454:
  br label %merge455
merge455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2091 = load i1, i1* %2079
  %2092 = icmp eq i1 %2091, 0
  br i1 %2092, label %then456, label %else457
then456:
  %2093 = getelementptr [74 x i8], [74 x i8]* @.str216, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2093, i64 73)
  %2095 = load %nyx_string*, %nyx_string** %lang.ptr
  %2096 = call %nyx_string* @nyx_string_concat(%nyx_string* %2094, %nyx_string* %2095)
  %2097 = getelementptr [84 x i8], [84 x i8]* @.str217, i32 0, i32 0
  %2098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2097, i64 83)
  %2099 = call %nyx_string* @nyx_string_concat(%nyx_string* %2096, %nyx_string* %2098)
  %2100 = call i8* @nyx_string_to_cstr(%nyx_string* %2099)
  call void @nyx_print_string(i8* %2100)
  %2101 = getelementptr [82 x i8], [82 x i8]* @.str218, i32 0, i32 0
  %2102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2101, i64 81)
  %2103 = call i8* @nyx_string_to_cstr(%nyx_string* %2102)
  call void @nyx_print_string(i8* %2103)
  ret i64 0
else457:
  br label %merge458
merge458:
  %2104 = load %nyx_string*, %nyx_string** %2078
  %2105 = getelementptr [11 x i8], [11 x i8]* @.str219, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2105, i64 10)
  %2107 = call %nyx_string* @nyx_string_concat(%nyx_string* %2104, %nyx_string* %2106)
  %2108 = call i8* @nyx_string_to_cstr(%nyx_string* %2107)
  %2109 = call %nyx_string* @nyx_read_file(i8* %2108)
  %2110 = alloca %nyx_string*
  store %nyx_string* %2109, %nyx_string** %2110
  %2111 = load %nyx_string*, %nyx_string** %dir.ptr
  %2112 = getelementptr [11 x i8], [11 x i8]* @.str220, i32 0, i32 0
  %2113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2112, i64 10)
  %2114 = call %nyx_string* @nyx_string_concat(%nyx_string* %2111, %nyx_string* %2113)
  %2115 = load %nyx_string*, %nyx_string** %2110
  %2116 = load %nyx_string*, %nyx_string** %lang.ptr
  %2117 = call i64 @seed_file(%nyx_string* %2114, %nyx_string* %2115, %nyx_string* %2116)
  %2118 = load %nyx_string*, %nyx_string** %dir.ptr
  %2119 = getelementptr [17 x i8], [17 x i8]* @.str221, i32 0, i32 0
  %2120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2119, i64 16)
  %2121 = call %nyx_string* @nyx_string_concat(%nyx_string* %2118, %nyx_string* %2120)
  %2122 = call i1 @run_capabilities(%nyx_string* %2121)
  %2123 = alloca i1
  store i1 %2122, i1* %2123
  %2124 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %2125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2124, i64 10)
  %2126 = load %nyx_string*, %nyx_string** %dir.ptr
  %2127 = call %nyx_string* @nyx_string_concat(%nyx_string* %2125, %nyx_string* %2126)
  %2128 = getelementptr [18 x i8], [18 x i8]* @.str223, i32 0, i32 0
  %2129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2128, i64 17)
  %2130 = call %nyx_string* @nyx_string_concat(%nyx_string* %2127, %nyx_string* %2129)
  %2131 = call i8* @nyx_string_to_cstr(%nyx_string* %2130)
  %2132 = call %nyx_string* @nyx_exec(i8* %2131)
  %2133 = load %nyx_string*, %nyx_string** %2071
  %2134 = getelementptr [20 x i8], [20 x i8]* @.str224, i32 0, i32 0
  %2135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2134, i64 19)
  %2136 = call %nyx_string* @nyx_string_concat(%nyx_string* %2133, %nyx_string* %2135)
  %2137 = alloca %nyx_string*
  store %nyx_string* %2136, %nyx_string** %2137
  %2138 = load %nyx_string*, %nyx_string** %2137
  %2139 = call i8* @nyx_string_to_cstr(%nyx_string* %2138)
  %2140 = call i1 @nyx_file_exists(i8* %2139)
  br i1 %2140, label %then459, label %else460
then459:
  %2141 = load %nyx_string*, %nyx_string** %2137
  %2142 = call i8* @nyx_string_to_cstr(%nyx_string* %2141)
  %2143 = call %nyx_string* @nyx_read_file(i8* %2142)
  %2144 = alloca %nyx_string*
  store %nyx_string* %2143, %nyx_string** %2144
  %2145 = load %nyx_string*, %nyx_string** %dir.ptr
  %2146 = getelementptr [17 x i8], [17 x i8]* @.str225, i32 0, i32 0
  %2147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2146, i64 16)
  %2148 = call %nyx_string* @nyx_string_concat(%nyx_string* %2145, %nyx_string* %2147)
  %2149 = load %nyx_string*, %nyx_string** %2144
  %2150 = load %nyx_string*, %nyx_string** %lang.ptr
  %2151 = call i64 @seed_file(%nyx_string* %2148, %nyx_string* %2149, %nyx_string* %2150)
  br label %merge461
else460:
  %2152 = getelementptr [14 x i8], [14 x i8]* @.str226, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2152, i64 13)
  %2154 = load %nyx_string*, %nyx_string** %2137
  %2155 = call %nyx_string* @nyx_string_concat(%nyx_string* %2153, %nyx_string* %2154)
  %2156 = getelementptr [71 x i8], [71 x i8]* @.str227, i32 0, i32 0
  %2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2156, i64 70)
  %2158 = call %nyx_string* @nyx_string_concat(%nyx_string* %2155, %nyx_string* %2157)
  %2159 = call i8* @nyx_string_to_cstr(%nyx_string* %2158)
  call void @nyx_print_string(i8* %2159)
  %2160 = getelementptr [111 x i8], [111 x i8]* @.str228, i32 0, i32 0
  %2161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2160, i64 110)
  %2162 = call i8* @nyx_string_to_cstr(%nyx_string* %2161)
  call void @nyx_print_string(i8* %2162)
  br label %merge461
merge461:
  %2163 = load %nyx_string*, %nyx_string** %2078
  %2164 = getelementptr [17 x i8], [17 x i8]* @.str229, i32 0, i32 0
  %2165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2164, i64 16)
  %2166 = call %nyx_string* @nyx_string_concat(%nyx_string* %2163, %nyx_string* %2165)
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = load %nyx_string*, %nyx_string** %2167
  %2169 = call i8* @nyx_string_to_cstr(%nyx_string* %2168)
  %2170 = call i1 @nyx_file_exists(i8* %2169)
  br i1 %2170, label %then462, label %else463
then462:
  %2171 = load %nyx_string*, %nyx_string** %2167
  %2172 = call i8* @nyx_string_to_cstr(%nyx_string* %2171)
  %2173 = call { i64, i8* }* @nyx_readdir(i8* %2172)
  %2174 = alloca { i64, i8* }*
  store { i64, i8* }* %2173, { i64, i8* }** %2174
  %2175 = alloca i64
  store i64 0, i64* %2175
  %2176 = getelementptr [2 x i8], [2 x i8]* @.str230, i32 0, i32 0
  %2177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2176, i64 1)
  %2178 = alloca %nyx_string*
  store %nyx_string* %2177, %nyx_string** %2178
  %2179 = getelementptr [18 x i8], [18 x i8]* @.str231, i32 0, i32 0
  %2180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2179, i64 17)
  %2181 = alloca %nyx_string*
  store %nyx_string* %2180, %nyx_string** %2181
  %2182 = call i8* @llvm.stacksave()
  br label %while_cond465
while_cond465:
  %2183 = load i64, i64* %2175
  %2184 = load { i64, i8* }*, { i64, i8* }** %2174
  %2185 = call i64 @nyx_array_length({ i64, i8* }* %2184)
  %2186 = icmp slt i64 %2183, %2185
  br i1 %2186, label %while_body466, label %while_end467
while_body466:
  call void @llvm.stackrestore(i8* %2182)
  %2187 = load { i64, i8* }*, { i64, i8* }** %2174
  %2188 = load i64, i64* %2175
  %2189 = call i64 @nyx_array_get_checked({ i64, i8* }* %2187, i64 %2188, i64 2)
  %2190 = inttoptr i64 %2189 to %nyx_string*
  %2191 = alloca %nyx_string*
  store %nyx_string* %2190, %nyx_string** %2191
  %2192 = load %nyx_string*, %nyx_string** %2167
  %2193 = load %nyx_string*, %nyx_string** %2178
  %2194 = call %nyx_string* @nyx_string_concat(%nyx_string* %2192, %nyx_string* %2193)
  %2195 = load %nyx_string*, %nyx_string** %2191
  %2196 = call %nyx_string* @nyx_string_concat(%nyx_string* %2194, %nyx_string* %2195)
  %2197 = alloca %nyx_string*
  store %nyx_string* %2196, %nyx_string** %2197
  %2198 = load %nyx_string*, %nyx_string** %2197
  %2199 = call i8* @nyx_string_to_cstr(%nyx_string* %2198)
  %2200 = call i1 @nyx_file_exists(i8* %2199)
  br i1 %2200, label %then468, label %else469
then468:
  %2201 = load %nyx_string*, %nyx_string** %2197
  %2202 = call i8* @nyx_string_to_cstr(%nyx_string* %2201)
  %2203 = call %nyx_string* @nyx_read_file(i8* %2202)
  %2204 = alloca %nyx_string*
  store %nyx_string* %2203, %nyx_string** %2204
  %2205 = load %nyx_string*, %nyx_string** %dir.ptr
  %2206 = load %nyx_string*, %nyx_string** %2181
  %2207 = call %nyx_string* @nyx_string_concat(%nyx_string* %2205, %nyx_string* %2206)
  %2208 = load %nyx_string*, %nyx_string** %2191
  %2209 = call %nyx_string* @nyx_string_concat(%nyx_string* %2207, %nyx_string* %2208)
  %2210 = load %nyx_string*, %nyx_string** %2204
  %2211 = load %nyx_string*, %nyx_string** %lang.ptr
  %2212 = call i64 @seed_file(%nyx_string* %2209, %nyx_string* %2210, %nyx_string* %2211)
  br label %merge470
else469:
  br label %merge470
merge470:
  %2213 = load i64, i64* %2175
  %2214 = add i64 %2213, 1
  store i64 %2214, i64* %2175
  br label %while_cond465
while_end467:
  br label %merge464
else463:
  br label %merge464
merge464:
  %2215 = load %nyx_string*, %nyx_string** %dir.ptr
  %2216 = load %nyx_string*, %nyx_string** %lang.ptr
  %2217 = load %nyx_string*, %nyx_string** %agents.ptr
  %2218 = call i64 @seed_adapters(%nyx_string* %2215, %nyx_string* %2216, %nyx_string* %2217)
  ret i64 0
}

define internal %nyx_string* @sdd_generated_marker(
) {
  %2219 = getelementptr [28 x i8], [28 x i8]* @.str232, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2219, i64 27)
  ret %nyx_string* %2220
}

define internal %nyx_string* @sdd_msg(
%nyx_string* %lang.param, %nyx_string* %en.param, %nyx_string* %es.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %2221 = load %nyx_string*, %nyx_string** %lang.ptr
  %2222 = getelementptr [3 x i8], [3 x i8]* @.str233, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2222, i64 2)
  %2224 = call i1 @nyx_string_equals(%nyx_string* %2221, %nyx_string* %2223)
  br i1 %2224, label %then471, label %else472
then471:
  %2225 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %2225
else472:
  br label %merge473
merge473:
  %2226 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %2226
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
  %2227 = load %nyx_string*, %nyx_string** %dst.ptr
  %2228 = call i8* @nyx_string_to_cstr(%nyx_string* %2227)
  %2229 = call i1 @nyx_file_exists(i8* %2228)
  br i1 %2229, label %then474, label %else475
then474:
  %2230 = load %nyx_string*, %nyx_string** %lang.ptr
  %2231 = getelementptr [28 x i8], [28 x i8]* @.str234, i32 0, i32 0
  %2232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2231, i64 27)
  %2233 = load %nyx_string*, %nyx_string** %dst.ptr
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2232, %nyx_string* %2233)
  %2235 = getelementptr [25 x i8], [25 x i8]* @.str235, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2235, i64 24)
  %2237 = load %nyx_string*, %nyx_string** %dst.ptr
  %2238 = call %nyx_string* @nyx_string_concat(%nyx_string* %2236, %nyx_string* %2237)
  %2239 = call %nyx_string* @sdd_msg(%nyx_string* %2230, %nyx_string* %2234, %nyx_string* %2238)
  %2240 = call i8* @nyx_string_to_cstr(%nyx_string* %2239)
  call void @nyx_print_string(i8* %2240)
  ret i1 0
else475:
  br label %merge476
merge476:
  %2241 = load %nyx_string*, %nyx_string** %tpl_dir.ptr
  %2242 = getelementptr [2 x i8], [2 x i8]* @.str236, i32 0, i32 0
  %2243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2242, i64 1)
  %2244 = call %nyx_string* @nyx_string_concat(%nyx_string* %2241, %nyx_string* %2243)
  %2245 = load %nyx_string*, %nyx_string** %name.ptr
  %2246 = call %nyx_string* @nyx_string_concat(%nyx_string* %2244, %nyx_string* %2245)
  %2247 = alloca %nyx_string*
  store %nyx_string* %2246, %nyx_string** %2247
  %2248 = load %nyx_string*, %nyx_string** %2247
  %2249 = call i8* @nyx_string_to_cstr(%nyx_string* %2248)
  %2250 = call i1 @nyx_file_exists(i8* %2249)
  %2251 = icmp eq i1 %2250, 0
  br i1 %2251, label %then477, label %else478
then477:
  %2252 = getelementptr [27 x i8], [27 x i8]* @.str237, i32 0, i32 0
  %2253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2252, i64 26)
  %2254 = load %nyx_string*, %nyx_string** %2247
  %2255 = call %nyx_string* @nyx_string_concat(%nyx_string* %2253, %nyx_string* %2254)
  %2256 = getelementptr [19 x i8], [19 x i8]* @.str238, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2256, i64 18)
  %2258 = call %nyx_string* @nyx_string_concat(%nyx_string* %2255, %nyx_string* %2257)
  %2259 = load %nyx_string*, %nyx_string** %dst.ptr
  %2260 = call %nyx_string* @nyx_string_concat(%nyx_string* %2258, %nyx_string* %2259)
  %2261 = getelementptr [16 x i8], [16 x i8]* @.str239, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2261, i64 15)
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2260, %nyx_string* %2262)
  %2264 = call i8* @nyx_string_to_cstr(%nyx_string* %2263)
  call void @nyx_print_string(i8* %2264)
  ret i1 0
else478:
  br label %merge479
merge479:
  %2265 = load %nyx_string*, %nyx_string** %2247
  %2266 = call i8* @nyx_string_to_cstr(%nyx_string* %2265)
  %2267 = call %nyx_string* @nyx_read_file(i8* %2266)
  %2268 = alloca %nyx_string*
  store %nyx_string* %2267, %nyx_string** %2268
  %2269 = load %nyx_string*, %nyx_string** %dst.ptr
  %2270 = load %nyx_string*, %nyx_string** %2268
  %2271 = load %nyx_string*, %nyx_string** %lang.ptr
  %2272 = call i64 @seed_file(%nyx_string* %2269, %nyx_string* %2270, %nyx_string* %2271)
  %2273 = getelementptr [3 x i8], [3 x i8]* @.str240, i32 0, i32 0
  %2274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2273, i64 2)
  %2275 = load %nyx_string*, %nyx_string** %dst.ptr
  %2276 = call %nyx_string* @nyx_string_concat(%nyx_string* %2274, %nyx_string* %2275)
  %2277 = call i8* @nyx_string_to_cstr(%nyx_string* %2276)
  call void @nyx_print_string(i8* %2277)
  ret i1 1
}

define internal %nyx_string* @nx_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %2278 = getelementptr [1 x i8], [1 x i8]* @.str241, i32 0, i32 0
  %2279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2278, i64 0)
  %2280 = alloca %nyx_string*
  store %nyx_string* %2279, %nyx_string** %2280
  %2281 = alloca i64
  store i64 0, i64* %2281
  %2282 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %2283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2282, i64 1)
  %2284 = alloca %nyx_string*
  store %nyx_string* %2283, %nyx_string** %2284
  %2285 = getelementptr [3 x i8], [3 x i8]* @.str243, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2285, i64 2)
  %2287 = alloca %nyx_string*
  store %nyx_string* %2286, %nyx_string** %2287
  %2288 = getelementptr [2 x i8], [2 x i8]* @.str244, i32 0, i32 0
  %2289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2288, i64 1)
  %2290 = alloca %nyx_string*
  store %nyx_string* %2289, %nyx_string** %2290
  %2291 = getelementptr [3 x i8], [3 x i8]* @.str245, i32 0, i32 0
  %2292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2291, i64 2)
  %2293 = alloca %nyx_string*
  store %nyx_string* %2292, %nyx_string** %2293
  %2294 = call i8* @llvm.stacksave()
  br label %while_cond480
while_cond480:
  %2295 = load i64, i64* %2281
  %2296 = load %nyx_string*, %nyx_string** %s.ptr
  %2297 = call i64 @nyx_string_byte_length(%nyx_string* %2296)
  %2298 = icmp slt i64 %2295, %2297
  br i1 %2298, label %while_body481, label %while_end482
while_body481:
  call void @llvm.stackrestore(i8* %2294)
  %2299 = load %nyx_string*, %nyx_string** %s.ptr
  %2300 = load i64, i64* %2281
  %2301 = load i64, i64* %2281
  %2302 = add i64 %2301, 1
  %2303 = call %nyx_string* @nyx_string_substring(%nyx_string* %2299, i64 %2300, i64 %2302)
  %2304 = alloca %nyx_string*
  store %nyx_string* %2303, %nyx_string** %2304
  %2305 = load %nyx_string*, %nyx_string** %2304
  %2306 = load %nyx_string*, %nyx_string** %2284
  %2307 = call i1 @nyx_string_equals(%nyx_string* %2305, %nyx_string* %2306)
  br i1 %2307, label %then483, label %else484
then483:
  %2308 = load %nyx_string*, %nyx_string** %2280
  %2309 = load %nyx_string*, %nyx_string** %2287
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2308, %nyx_string* %2309)
  store %nyx_string* %2310, %nyx_string** %2280
  br label %merge485
else484:
  %2311 = load %nyx_string*, %nyx_string** %2304
  %2312 = load %nyx_string*, %nyx_string** %2290
  %2313 = call i1 @nyx_string_equals(%nyx_string* %2311, %nyx_string* %2312)
  br i1 %2313, label %then486, label %else487
then486:
  %2314 = load %nyx_string*, %nyx_string** %2280
  %2315 = load %nyx_string*, %nyx_string** %2293
  %2316 = call %nyx_string* @nyx_string_concat(%nyx_string* %2314, %nyx_string* %2315)
  store %nyx_string* %2316, %nyx_string** %2280
  br label %merge488
else487:
  %2317 = load %nyx_string*, %nyx_string** %2280
  %2318 = load %nyx_string*, %nyx_string** %2304
  %2319 = call %nyx_string* @nyx_string_concat(%nyx_string* %2317, %nyx_string* %2318)
  store %nyx_string* %2319, %nyx_string** %2280
  br label %merge488
merge488:
  br label %merge485
merge485:
  %2320 = load i64, i64* %2281
  %2321 = add i64 %2320, 1
  store i64 %2321, i64* %2281
  br label %while_cond480
while_end482:
  %2322 = load %nyx_string*, %nyx_string** %2280
  ret %nyx_string* %2322
}

define internal %nyx_string* @evidence_body(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2323 = call %nyx_string* @toolchain_version()
  %2324 = alloca %nyx_string*
  store %nyx_string* %2323, %nyx_string** %2324
  %2325 = getelementptr [1 x i8], [1 x i8]* @.str246, i32 0, i32 0
  %2326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2325, i64 0)
  %2327 = alloca %nyx_string*
  store %nyx_string* %2326, %nyx_string** %2327
  %2328 = load %nyx_string*, %nyx_string** %2327
  %2329 = load %nyx_string*, %nyx_string** %lang.ptr
  %2330 = getelementptr [20 x i8], [20 x i8]* @.str247, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2330, i64 19)
  %2332 = load %nyx_string*, %nyx_string** %2324
  %2333 = call %nyx_string* @nyx_string_concat(%nyx_string* %2331, %nyx_string* %2332)
  %2334 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %2335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2334, i64 1)
  %2336 = call %nyx_string* @nyx_string_concat(%nyx_string* %2333, %nyx_string* %2335)
  %2337 = getelementptr [21 x i8], [21 x i8]* @.str249, i32 0, i32 0
  %2338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2337, i64 20)
  %2339 = load %nyx_string*, %nyx_string** %2324
  %2340 = call %nyx_string* @nyx_string_concat(%nyx_string* %2338, %nyx_string* %2339)
  %2341 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %2342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2341, i64 1)
  %2343 = call %nyx_string* @nyx_string_concat(%nyx_string* %2340, %nyx_string* %2342)
  %2344 = call %nyx_string* @sdd_msg(%nyx_string* %2329, %nyx_string* %2336, %nyx_string* %2343)
  %2345 = call %nyx_string* @nyx_string_concat(%nyx_string* %2328, %nyx_string* %2344)
  store %nyx_string* %2345, %nyx_string** %2327
  %2346 = load %nyx_string*, %nyx_string** %2327
  %2347 = getelementptr [7 x i8], [7 x i8]* @.str251, i32 0, i32 0
  %2348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2347, i64 6)
  %2349 = call %nyx_string* @nyx_string_concat(%nyx_string* %2346, %nyx_string* %2348)
  %2350 = call %nyx_string* @sdd_generated_marker()
  %2351 = call %nyx_string* @nyx_string_concat(%nyx_string* %2349, %nyx_string* %2350)
  %2352 = getelementptr [110 x i8], [110 x i8]* @.str252, i32 0, i32 0
  %2353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2352, i64 109)
  %2354 = call %nyx_string* @nyx_string_concat(%nyx_string* %2351, %nyx_string* %2353)
  store %nyx_string* %2354, %nyx_string** %2327
  %2355 = load %nyx_string*, %nyx_string** %2327
  %2356 = load %nyx_string*, %nyx_string** %lang.ptr
  %2357 = getelementptr [319 x i8], [319 x i8]* @.str253, i32 0, i32 0
  %2358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2357, i64 318)
  %2359 = getelementptr [334 x i8], [334 x i8]* @.str254, i32 0, i32 0
  %2360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2359, i64 333)
  %2361 = call %nyx_string* @sdd_msg(%nyx_string* %2356, %nyx_string* %2358, %nyx_string* %2360)
  %2362 = call %nyx_string* @nyx_string_concat(%nyx_string* %2355, %nyx_string* %2361)
  store %nyx_string* %2362, %nyx_string** %2327
  %2363 = load %nyx_string*, %nyx_string** %2327
  %2364 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2364, i64 1)
  %2366 = call %nyx_string* @nyx_string_concat(%nyx_string* %2363, %nyx_string* %2365)
  store %nyx_string* %2366, %nyx_string** %2327
  %2367 = call { i64, i8* }* @gotchas_table()
  %2368 = alloca { i64, i8* }*
  store { i64, i8* }* %2367, { i64, i8* }** %2368
  %2369 = alloca i64
  store i64 0, i64* %2369
  %2370 = getelementptr [5 x i8], [5 x i8]* @.str256, i32 0, i32 0
  %2371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2370, i64 4)
  %2372 = alloca %nyx_string*
  store %nyx_string* %2371, %nyx_string** %2372
  %2373 = getelementptr [9 x i8], [9 x i8]* @.str257, i32 0, i32 0
  %2374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2373, i64 8)
  %2375 = alloca %nyx_string*
  store %nyx_string* %2374, %nyx_string** %2375
  %2376 = getelementptr [1 x i8], [1 x i8]* @.str258, i32 0, i32 0
  %2377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2376, i64 0)
  %2378 = alloca %nyx_string*
  store %nyx_string* %2377, %nyx_string** %2378
  %2379 = getelementptr [5 x i8], [5 x i8]* @.str259, i32 0, i32 0
  %2380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2379, i64 4)
  %2381 = alloca %nyx_string*
  store %nyx_string* %2380, %nyx_string** %2381
  %2382 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %2383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2382, i64 4)
  %2384 = alloca %nyx_string*
  store %nyx_string* %2383, %nyx_string** %2384
  %2385 = getelementptr [3 x i8], [3 x i8]* @.str261, i32 0, i32 0
  %2386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2385, i64 2)
  %2387 = alloca %nyx_string*
  store %nyx_string* %2386, %nyx_string** %2387
  %2388 = getelementptr [6 x i8], [6 x i8]* @.str262, i32 0, i32 0
  %2389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2388, i64 5)
  %2390 = alloca %nyx_string*
  store %nyx_string* %2389, %nyx_string** %2390
  %2391 = getelementptr [7 x i8], [7 x i8]* @.str263, i32 0, i32 0
  %2392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2391, i64 6)
  %2393 = alloca %nyx_string*
  store %nyx_string* %2392, %nyx_string** %2393
  %2394 = getelementptr [5 x i8], [5 x i8]* @.str264, i32 0, i32 0
  %2395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2394, i64 4)
  %2396 = alloca %nyx_string*
  store %nyx_string* %2395, %nyx_string** %2396
  %2397 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %2398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2397, i64 8)
  %2399 = alloca %nyx_string*
  store %nyx_string* %2398, %nyx_string** %2399
  %2400 = getelementptr [3 x i8], [3 x i8]* @.str266, i32 0, i32 0
  %2401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2400, i64 2)
  %2402 = alloca %nyx_string*
  store %nyx_string* %2401, %nyx_string** %2402
  %2403 = getelementptr [9 x i8], [9 x i8]* @.str267, i32 0, i32 0
  %2404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2403, i64 8)
  %2405 = alloca %nyx_string*
  store %nyx_string* %2404, %nyx_string** %2405
  %2406 = getelementptr [5 x i8], [5 x i8]* @.str268, i32 0, i32 0
  %2407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2406, i64 4)
  %2408 = alloca %nyx_string*
  store %nyx_string* %2407, %nyx_string** %2408
  %2409 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2409, i64 4)
  %2411 = alloca %nyx_string*
  store %nyx_string* %2410, %nyx_string** %2411
  %2412 = getelementptr [9 x i8], [9 x i8]* @.str270, i32 0, i32 0
  %2413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2412, i64 8)
  %2414 = alloca %nyx_string*
  store %nyx_string* %2413, %nyx_string** %2414
  %2415 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %2416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2415, i64 6)
  %2417 = alloca %nyx_string*
  store %nyx_string* %2416, %nyx_string** %2417
  %2418 = getelementptr [14 x i8], [14 x i8]* @.str272, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2418, i64 13)
  %2420 = alloca %nyx_string*
  store %nyx_string* %2419, %nyx_string** %2420
  %2421 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2421, i64 1)
  %2423 = alloca %nyx_string*
  store %nyx_string* %2422, %nyx_string** %2423
  %2424 = getelementptr [12 x i8], [12 x i8]* @.str274, i32 0, i32 0
  %2425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2424, i64 11)
  %2426 = alloca %nyx_string*
  store %nyx_string* %2425, %nyx_string** %2426
  %2427 = getelementptr [2 x i8], [2 x i8]* @.str275, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2427, i64 1)
  %2429 = alloca %nyx_string*
  store %nyx_string* %2428, %nyx_string** %2429
  %2430 = call i8* @llvm.stacksave()
  br label %while_cond489
while_cond489:
  %2431 = load i64, i64* %2369
  %2432 = load { i64, i8* }*, { i64, i8* }** %2368
  %2433 = call i64 @nyx_array_length({ i64, i8* }* %2432)
  %2434 = icmp slt i64 %2431, %2433
  br i1 %2434, label %while_body490, label %while_end491
while_body490:
  call void @llvm.stackrestore(i8* %2430)
  %2435 = load { i64, i8* }*, { i64, i8* }** %2368
  %2436 = load i64, i64* %2369
  %2437 = call i64 @nyx_array_get({ i64, i8* }* %2435, i64 %2436)
  %2438 = inttoptr i64 %2437 to { i64, i8* }*
  %2439 = alloca { i64, i8* }*
  store { i64, i8* }* %2438, { i64, i8* }** %2439
  %2440 = load { i64, i8* }*, { i64, i8* }** %2439
  %2441 = load %nyx_string*, %nyx_string** %2372
  %2442 = call %nyx_string* @gotcha_field({ i64, i8* }* %2440, %nyx_string* %2441)
  %2443 = alloca %nyx_string*
  store %nyx_string* %2442, %nyx_string** %2443
  %2444 = load { i64, i8* }*, { i64, i8* }** %2439
  %2445 = load %nyx_string*, %nyx_string** %2375
  %2446 = call %nyx_string* @gotcha_field({ i64, i8* }* %2444, %nyx_string* %2445)
  %2447 = alloca %nyx_string*
  store %nyx_string* %2446, %nyx_string** %2447
  %2448 = load %nyx_string*, %nyx_string** %2447
  %2449 = load %nyx_string*, %nyx_string** %2378
  %2450 = call i1 @nyx_string_equals(%nyx_string* %2448, %nyx_string* %2449)
  br i1 %2450, label %then492, label %else493
then492:
  %2451 = alloca i1
  store i1 true, i1* %2451
  %2452 = load %nyx_string*, %nyx_string** %2443
  %2453 = load %nyx_string*, %nyx_string** %2381
  %2454 = call i1 @nyx_string_equals(%nyx_string* %2452, %nyx_string* %2453)
  br i1 %2454, label %sc_or_end496, label %sc_or_rhs495
sc_or_rhs495:
  %2455 = load %nyx_string*, %nyx_string** %2443
  %2456 = load %nyx_string*, %nyx_string** %2384
  %2457 = call i1 @nyx_string_equals(%nyx_string* %2455, %nyx_string* %2456)
  store i1 %2457, i1* %2451
  br label %sc_or_end496
sc_or_end496:
  %2458 = load i1, i1* %2451
  br i1 %2458, label %then497, label %else498
then497:
  %2459 = load { i64, i8* }*, { i64, i8* }** %2439
  %2460 = load %nyx_string*, %nyx_string** %2387
  %2461 = call %nyx_string* @gotcha_field({ i64, i8* }* %2459, %nyx_string* %2460)
  %2462 = alloca %nyx_string*
  store %nyx_string* %2461, %nyx_string** %2462
  %2463 = load { i64, i8* }*, { i64, i8* }** %2439
  %2464 = load %nyx_string*, %nyx_string** %2390
  %2465 = call %nyx_string* @gotcha_field({ i64, i8* }* %2463, %nyx_string* %2464)
  %2466 = alloca %nyx_string*
  store %nyx_string* %2465, %nyx_string** %2466
  %2467 = load { i64, i8* }*, { i64, i8* }** %2439
  %2468 = load %nyx_string*, %nyx_string** %2393
  %2469 = call %nyx_string* @gotcha_field({ i64, i8* }* %2467, %nyx_string* %2468)
  %2470 = alloca %nyx_string*
  store %nyx_string* %2469, %nyx_string** %2470
  %2471 = load { i64, i8* }*, { i64, i8* }** %2439
  %2472 = load %nyx_string*, %nyx_string** %2396
  %2473 = call %nyx_string* @gotcha_field({ i64, i8* }* %2471, %nyx_string* %2472)
  %2474 = alloca %nyx_string*
  store %nyx_string* %2473, %nyx_string** %2474
  %2475 = load { i64, i8* }*, { i64, i8* }** %2439
  %2476 = load %nyx_string*, %nyx_string** %2399
  %2477 = call %nyx_string* @gotcha_field({ i64, i8* }* %2475, %nyx_string* %2476)
  %2478 = alloca %nyx_string*
  store %nyx_string* %2477, %nyx_string** %2478
  %2479 = load %nyx_string*, %nyx_string** %lang.ptr
  %2480 = load %nyx_string*, %nyx_string** %2402
  %2481 = call i1 @nyx_string_equals(%nyx_string* %2479, %nyx_string* %2480)
  br i1 %2481, label %then500, label %else501
then500:
  %2482 = load { i64, i8* }*, { i64, i8* }** %2439
  %2483 = load %nyx_string*, %nyx_string** %2405
  %2484 = call %nyx_string* @gotcha_field({ i64, i8* }* %2482, %nyx_string* %2483)
  store %nyx_string* %2484, %nyx_string** %2478
  br label %merge502
else501:
  br label %merge502
merge502:
  %2485 = load %nyx_string*, %nyx_string** %2327
  %2486 = load %nyx_string*, %nyx_string** %2408
  %2487 = call %nyx_string* @nyx_string_concat(%nyx_string* %2485, %nyx_string* %2486)
  %2488 = load %nyx_string*, %nyx_string** %2462
  %2489 = call %nyx_string* @nyx_string_concat(%nyx_string* %2487, %nyx_string* %2488)
  %2490 = load %nyx_string*, %nyx_string** %2411
  %2491 = call %nyx_string* @nyx_string_concat(%nyx_string* %2489, %nyx_string* %2490)
  %2492 = load %nyx_string*, %nyx_string** %2443
  %2493 = call %nyx_string* @nyx_string_concat(%nyx_string* %2491, %nyx_string* %2492)
  %2494 = load %nyx_string*, %nyx_string** %2414
  %2495 = call %nyx_string* @nyx_string_concat(%nyx_string* %2493, %nyx_string* %2494)
  %2496 = load %nyx_string*, %nyx_string** %2466
  %2497 = call %nyx_string* @nyx_string_concat(%nyx_string* %2495, %nyx_string* %2496)
  %2498 = load %nyx_string*, %nyx_string** %2417
  %2499 = call %nyx_string* @nyx_string_concat(%nyx_string* %2497, %nyx_string* %2498)
  %2500 = load %nyx_string*, %nyx_string** %2478
  %2501 = call %nyx_string* @nyx_string_concat(%nyx_string* %2499, %nyx_string* %2500)
  store %nyx_string* %2501, %nyx_string** %2327
  %2502 = load %nyx_string*, %nyx_string** %2470
  %2503 = load %nyx_string*, %nyx_string** %2378
  %2504 = call i1 @nyx_string_equals(%nyx_string* %2502, %nyx_string* %2503)
  %2505 = xor i1 %2504, true
  br i1 %2505, label %then503, label %else504
then503:
  %2506 = load %nyx_string*, %nyx_string** %2327
  %2507 = load %nyx_string*, %nyx_string** %2420
  %2508 = call %nyx_string* @nyx_string_concat(%nyx_string* %2506, %nyx_string* %2507)
  %2509 = load %nyx_string*, %nyx_string** %2470
  %2510 = call %nyx_string* @nyx_string_concat(%nyx_string* %2508, %nyx_string* %2509)
  %2511 = load %nyx_string*, %nyx_string** %2423
  %2512 = call %nyx_string* @nyx_string_concat(%nyx_string* %2510, %nyx_string* %2511)
  store %nyx_string* %2512, %nyx_string** %2327
  br label %merge505
else504:
  br label %merge505
merge505:
  %2513 = load %nyx_string*, %nyx_string** %2474
  %2514 = load %nyx_string*, %nyx_string** %2378
  %2515 = call i1 @nyx_string_equals(%nyx_string* %2513, %nyx_string* %2514)
  %2516 = xor i1 %2515, true
  br i1 %2516, label %then506, label %else507
then506:
  %2517 = load %nyx_string*, %nyx_string** %2327
  %2518 = load %nyx_string*, %nyx_string** %2426
  %2519 = call %nyx_string* @nyx_string_concat(%nyx_string* %2517, %nyx_string* %2518)
  %2520 = load %nyx_string*, %nyx_string** %2474
  %2521 = call %nyx_string* @nyx_string_concat(%nyx_string* %2519, %nyx_string* %2520)
  %2522 = load %nyx_string*, %nyx_string** %2423
  %2523 = call %nyx_string* @nyx_string_concat(%nyx_string* %2521, %nyx_string* %2522)
  store %nyx_string* %2523, %nyx_string** %2327
  br label %merge508
else507:
  br label %merge508
merge508:
  %2524 = load %nyx_string*, %nyx_string** %2327
  %2525 = load %nyx_string*, %nyx_string** %2429
  %2526 = call %nyx_string* @nyx_string_concat(%nyx_string* %2524, %nyx_string* %2525)
  store %nyx_string* %2526, %nyx_string** %2327
  br label %merge499
else498:
  br label %merge499
merge499:
  br label %merge494
else493:
  br label %merge494
merge494:
  %2527 = load i64, i64* %2369
  %2528 = add i64 %2527, 1
  store i64 %2528, i64* %2369
  br label %while_cond489
while_end491:
  %2529 = load %nyx_string*, %nyx_string** %2327
  %2530 = load %nyx_string*, %nyx_string** %lang.ptr
  %2531 = getelementptr [14 x i8], [14 x i8]* @.str276, i32 0, i32 0
  %2532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2531, i64 13)
  %2533 = getelementptr [16 x i8], [16 x i8]* @.str277, i32 0, i32 0
  %2534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2533, i64 15)
  %2535 = call %nyx_string* @sdd_msg(%nyx_string* %2530, %nyx_string* %2532, %nyx_string* %2534)
  %2536 = call %nyx_string* @nyx_string_concat(%nyx_string* %2529, %nyx_string* %2535)
  store %nyx_string* %2536, %nyx_string** %2327
  %2537 = load %nyx_string*, %nyx_string** %2327
  %2538 = load %nyx_string*, %nyx_string** %lang.ptr
  %2539 = getelementptr [139 x i8], [139 x i8]* @.str278, i32 0, i32 0
  %2540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2539, i64 138)
  %2541 = getelementptr [150 x i8], [150 x i8]* @.str279, i32 0, i32 0
  %2542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2541, i64 149)
  %2543 = call %nyx_string* @sdd_msg(%nyx_string* %2538, %nyx_string* %2540, %nyx_string* %2542)
  %2544 = call %nyx_string* @nyx_string_concat(%nyx_string* %2537, %nyx_string* %2543)
  store %nyx_string* %2544, %nyx_string** %2327
  %2545 = alloca i64
  store i64 0, i64* %2545
  %2546 = getelementptr [9 x i8], [9 x i8]* @.str280, i32 0, i32 0
  %2547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2546, i64 8)
  %2548 = alloca %nyx_string*
  store %nyx_string* %2547, %nyx_string** %2548
  %2549 = getelementptr [1 x i8], [1 x i8]* @.str281, i32 0, i32 0
  %2550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2549, i64 0)
  %2551 = alloca %nyx_string*
  store %nyx_string* %2550, %nyx_string** %2551
  %2552 = getelementptr [3 x i8], [3 x i8]* @.str282, i32 0, i32 0
  %2553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2552, i64 2)
  %2554 = alloca %nyx_string*
  store %nyx_string* %2553, %nyx_string** %2554
  %2555 = getelementptr [9 x i8], [9 x i8]* @.str283, i32 0, i32 0
  %2556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2555, i64 8)
  %2557 = alloca %nyx_string*
  store %nyx_string* %2556, %nyx_string** %2557
  %2558 = getelementptr [3 x i8], [3 x i8]* @.str284, i32 0, i32 0
  %2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2558, i64 2)
  %2560 = alloca %nyx_string*
  store %nyx_string* %2559, %nyx_string** %2560
  %2561 = getelementptr [9 x i8], [9 x i8]* @.str285, i32 0, i32 0
  %2562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2561, i64 8)
  %2563 = alloca %nyx_string*
  store %nyx_string* %2562, %nyx_string** %2563
  %2564 = getelementptr [5 x i8], [5 x i8]* @.str286, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2564, i64 4)
  %2566 = alloca %nyx_string*
  store %nyx_string* %2565, %nyx_string** %2566
  %2567 = getelementptr [14 x i8], [14 x i8]* @.str287, i32 0, i32 0
  %2568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2567, i64 13)
  %2569 = alloca %nyx_string*
  store %nyx_string* %2568, %nyx_string** %2569
  %2570 = getelementptr [7 x i8], [7 x i8]* @.str288, i32 0, i32 0
  %2571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2570, i64 6)
  %2572 = alloca %nyx_string*
  store %nyx_string* %2571, %nyx_string** %2572
  %2573 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2573, i64 1)
  %2575 = alloca %nyx_string*
  store %nyx_string* %2574, %nyx_string** %2575
  %2576 = call i8* @llvm.stacksave()
  br label %while_cond509
while_cond509:
  %2577 = load i64, i64* %2545
  %2578 = load { i64, i8* }*, { i64, i8* }** %2368
  %2579 = call i64 @nyx_array_length({ i64, i8* }* %2578)
  %2580 = icmp slt i64 %2577, %2579
  br i1 %2580, label %while_body510, label %while_end511
while_body510:
  call void @llvm.stackrestore(i8* %2576)
  %2581 = load { i64, i8* }*, { i64, i8* }** %2368
  %2582 = load i64, i64* %2545
  %2583 = call i64 @nyx_array_get({ i64, i8* }* %2581, i64 %2582)
  %2584 = inttoptr i64 %2583 to { i64, i8* }*
  %2585 = alloca { i64, i8* }*
  store { i64, i8* }* %2584, { i64, i8* }** %2585
  %2586 = load { i64, i8* }*, { i64, i8* }** %2585
  %2587 = load %nyx_string*, %nyx_string** %2548
  %2588 = call %nyx_string* @gotcha_field({ i64, i8* }* %2586, %nyx_string* %2587)
  %2589 = alloca %nyx_string*
  store %nyx_string* %2588, %nyx_string** %2589
  %2590 = load %nyx_string*, %nyx_string** %2589
  %2591 = load %nyx_string*, %nyx_string** %2551
  %2592 = call i1 @nyx_string_equals(%nyx_string* %2590, %nyx_string* %2591)
  %2593 = xor i1 %2592, true
  br i1 %2593, label %then512, label %else513
then512:
  %2594 = load { i64, i8* }*, { i64, i8* }** %2585
  %2595 = load %nyx_string*, %nyx_string** %2554
  %2596 = call %nyx_string* @gotcha_field({ i64, i8* }* %2594, %nyx_string* %2595)
  %2597 = alloca %nyx_string*
  store %nyx_string* %2596, %nyx_string** %2597
  %2598 = load { i64, i8* }*, { i64, i8* }** %2585
  %2599 = load %nyx_string*, %nyx_string** %2557
  %2600 = call %nyx_string* @gotcha_field({ i64, i8* }* %2598, %nyx_string* %2599)
  %2601 = alloca %nyx_string*
  store %nyx_string* %2600, %nyx_string** %2601
  %2602 = load %nyx_string*, %nyx_string** %lang.ptr
  %2603 = load %nyx_string*, %nyx_string** %2560
  %2604 = call i1 @nyx_string_equals(%nyx_string* %2602, %nyx_string* %2603)
  br i1 %2604, label %then515, label %else516
then515:
  %2605 = load { i64, i8* }*, { i64, i8* }** %2585
  %2606 = load %nyx_string*, %nyx_string** %2563
  %2607 = call %nyx_string* @gotcha_field({ i64, i8* }* %2605, %nyx_string* %2606)
  store %nyx_string* %2607, %nyx_string** %2601
  br label %merge517
else516:
  br label %merge517
merge517:
  %2608 = load %nyx_string*, %nyx_string** %2327
  %2609 = load %nyx_string*, %nyx_string** %2566
  %2610 = call %nyx_string* @nyx_string_concat(%nyx_string* %2608, %nyx_string* %2609)
  %2611 = load %nyx_string*, %nyx_string** %2597
  %2612 = call %nyx_string* @nyx_string_concat(%nyx_string* %2610, %nyx_string* %2611)
  %2613 = load %nyx_string*, %nyx_string** %2569
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2613)
  %2615 = load %nyx_string*, %nyx_string** %2589
  %2616 = call %nyx_string* @nyx_string_concat(%nyx_string* %2614, %nyx_string* %2615)
  %2617 = load %nyx_string*, %nyx_string** %2572
  %2618 = call %nyx_string* @nyx_string_concat(%nyx_string* %2616, %nyx_string* %2617)
  %2619 = load %nyx_string*, %nyx_string** %2601
  %2620 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2619)
  %2621 = load %nyx_string*, %nyx_string** %2575
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2620, %nyx_string* %2621)
  store %nyx_string* %2622, %nyx_string** %2327
  br label %merge514
else513:
  br label %merge514
merge514:
  %2623 = load i64, i64* %2545
  %2624 = add i64 %2623, 1
  store i64 %2624, i64* %2545
  br label %while_cond509
while_end511:
  %2625 = load %nyx_string*, %nyx_string** %2327
  ret %nyx_string* %2625
}

define internal i64 @write_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2626 = load %nyx_string*, %nyx_string** %dir.ptr
  %2627 = getelementptr [20 x i8], [20 x i8]* @.str290, i32 0, i32 0
  %2628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2627, i64 19)
  %2629 = call %nyx_string* @nyx_string_concat(%nyx_string* %2626, %nyx_string* %2628)
  %2630 = call %nyx_string* @toolchain_version()
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2630)
  %2632 = getelementptr [4 x i8], [4 x i8]* @.str291, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2632, i64 3)
  %2634 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2633)
  %2635 = alloca %nyx_string*
  store %nyx_string* %2634, %nyx_string** %2635
  %2636 = load %nyx_string*, %nyx_string** %lang.ptr
  %2637 = call %nyx_string* @evidence_body(%nyx_string* %2636)
  %2638 = load %nyx_string*, %nyx_string** %lang.ptr
  %2639 = call %nyx_string* @seed_body(%nyx_string* %2637, %nyx_string* %2638)
  %2640 = alloca %nyx_string*
  store %nyx_string* %2639, %nyx_string** %2640
  %2641 = load %nyx_string*, %nyx_string** %2635
  %2642 = call i8* @nyx_string_to_cstr(%nyx_string* %2641)
  %2643 = call i1 @nyx_file_exists(i8* %2642)
  br i1 %2643, label %then518, label %else519
then518:
  %2644 = load %nyx_string*, %nyx_string** %2635
  %2645 = call i8* @nyx_string_to_cstr(%nyx_string* %2644)
  %2646 = call %nyx_string* @nyx_read_file(i8* %2645)
  %2647 = alloca %nyx_string*
  store %nyx_string* %2646, %nyx_string** %2647
  %2648 = load %nyx_string*, %nyx_string** %2647
  %2649 = load %nyx_string*, %nyx_string** %2640
  %2650 = call i1 @nyx_string_equals(%nyx_string* %2648, %nyx_string* %2649)
  br i1 %2650, label %then521, label %else522
then521:
  ret i64 0
else522:
  br label %merge523
merge523:
  %2651 = load %nyx_string*, %nyx_string** %2647
  %2652 = call %nyx_string* @sdd_generated_marker()
  %2653 = call i64 @nyx_string_index_of(%nyx_string* %2651, %nyx_string* %2652)
  %2654 = icmp slt i64 %2653, 0
  br i1 %2654, label %then524, label %else525
then524:
  ret i64 2
else525:
  br label %merge526
merge526:
  br label %merge520
else519:
  br label %merge520
merge520:
  %2655 = load %nyx_string*, %nyx_string** %2635
  %2656 = load %nyx_string*, %nyx_string** %2640
  %2657 = call i8* @nyx_string_to_cstr(%nyx_string* %2655)
  %2658 = call i1 @nyx_write_file_safe(i8* %2657, %nyx_string* %2656)
  ret i64 1
}

define internal %nyx_string* @constitution_test_body(
) {
  %2659 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2659, i64 0)
  %2661 = alloca %nyx_string*
  store %nyx_string* %2660, %nyx_string** %2661
  %2662 = load %nyx_string*, %nyx_string** %2661
  %2663 = getelementptr [4 x i8], [4 x i8]* @.str293, i32 0, i32 0
  %2664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2663, i64 3)
  %2665 = call %nyx_string* @nyx_string_concat(%nyx_string* %2662, %nyx_string* %2664)
  %2666 = call %nyx_string* @sdd_generated_marker()
  %2667 = call %nyx_string* @nyx_string_concat(%nyx_string* %2665, %nyx_string* %2666)
  %2668 = getelementptr [80 x i8], [80 x i8]* @.str294, i32 0, i32 0
  %2669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2668, i64 79)
  %2670 = call %nyx_string* @nyx_string_concat(%nyx_string* %2667, %nyx_string* %2669)
  store %nyx_string* %2670, %nyx_string** %2661
  %2671 = load %nyx_string*, %nyx_string** %2661
  %2672 = getelementptr [96 x i8], [96 x i8]* @.str295, i32 0, i32 0
  %2673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2672, i64 95)
  %2674 = call %nyx_string* @nyx_string_concat(%nyx_string* %2671, %nyx_string* %2673)
  store %nyx_string* %2674, %nyx_string** %2661
  %2675 = load %nyx_string*, %nyx_string** %2661
  %2676 = getelementptr [72 x i8], [72 x i8]* @.str296, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2676, i64 71)
  %2678 = call %nyx_string* @nyx_string_concat(%nyx_string* %2675, %nyx_string* %2677)
  store %nyx_string* %2678, %nyx_string** %2661
  %2679 = load %nyx_string*, %nyx_string** %2661
  %2680 = getelementptr [20 x i8], [20 x i8]* @.str297, i32 0, i32 0
  %2681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2680, i64 19)
  %2682 = call %nyx_string* @nyx_string_concat(%nyx_string* %2679, %nyx_string* %2681)
  store %nyx_string* %2682, %nyx_string** %2661
  %2683 = load %nyx_string*, %nyx_string** %2661
  %2684 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %2685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2684, i64 1)
  %2686 = call %nyx_string* @nyx_string_concat(%nyx_string* %2683, %nyx_string* %2685)
  store %nyx_string* %2686, %nyx_string** %2661
  %2687 = load %nyx_string*, %nyx_string** %2661
  %2688 = call %nyx_string* @gotcha_scan_src()
  %2689 = call %nyx_string* @nyx_string_concat(%nyx_string* %2687, %nyx_string* %2688)
  store %nyx_string* %2689, %nyx_string** %2661
  %2690 = load %nyx_string*, %nyx_string** %2661
  %2691 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %2692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2691, i64 1)
  %2693 = call %nyx_string* @nyx_string_concat(%nyx_string* %2690, %nyx_string* %2692)
  store %nyx_string* %2693, %nyx_string** %2661
  %2694 = load %nyx_string*, %nyx_string** %2661
  %2695 = getelementptr [83 x i8], [83 x i8]* @.str300, i32 0, i32 0
  %2696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2695, i64 82)
  %2697 = call %nyx_string* @nyx_string_concat(%nyx_string* %2694, %nyx_string* %2696)
  store %nyx_string* %2697, %nyx_string** %2661
  %2698 = load %nyx_string*, %nyx_string** %2661
  %2699 = getelementptr [85 x i8], [85 x i8]* @.str301, i32 0, i32 0
  %2700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2699, i64 84)
  %2701 = call %nyx_string* @nyx_string_concat(%nyx_string* %2698, %nyx_string* %2700)
  store %nyx_string* %2701, %nyx_string** %2661
  %2702 = load %nyx_string*, %nyx_string** %2661
  %2703 = getelementptr [83 x i8], [83 x i8]* @.str302, i32 0, i32 0
  %2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2703, i64 82)
  %2705 = call %nyx_string* @nyx_string_concat(%nyx_string* %2702, %nyx_string* %2704)
  store %nyx_string* %2705, %nyx_string** %2661
  %2706 = load %nyx_string*, %nyx_string** %2661
  %2707 = getelementptr [83 x i8], [83 x i8]* @.str303, i32 0, i32 0
  %2708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2707, i64 82)
  %2709 = call %nyx_string* @nyx_string_concat(%nyx_string* %2706, %nyx_string* %2708)
  store %nyx_string* %2709, %nyx_string** %2661
  %2710 = load %nyx_string*, %nyx_string** %2661
  %2711 = getelementptr [56 x i8], [56 x i8]* @.str304, i32 0, i32 0
  %2712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2711, i64 55)
  %2713 = call %nyx_string* @nyx_string_concat(%nyx_string* %2710, %nyx_string* %2712)
  store %nyx_string* %2713, %nyx_string** %2661
  %2714 = load %nyx_string*, %nyx_string** %2661
  %2715 = getelementptr [31 x i8], [31 x i8]* @.str305, i32 0, i32 0
  %2716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2715, i64 30)
  %2717 = call %nyx_string* @nyx_string_concat(%nyx_string* %2714, %nyx_string* %2716)
  store %nyx_string* %2717, %nyx_string** %2661
  %2718 = load %nyx_string*, %nyx_string** %2661
  %2719 = getelementptr [47 x i8], [47 x i8]* @.str306, i32 0, i32 0
  %2720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2719, i64 46)
  %2721 = call %nyx_string* @nyx_string_concat(%nyx_string* %2718, %nyx_string* %2720)
  store %nyx_string* %2721, %nyx_string** %2661
  %2722 = load %nyx_string*, %nyx_string** %2661
  %2723 = getelementptr [40 x i8], [40 x i8]* @.str307, i32 0, i32 0
  %2724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2723, i64 39)
  %2725 = call %nyx_string* @nyx_string_concat(%nyx_string* %2722, %nyx_string* %2724)
  store %nyx_string* %2725, %nyx_string** %2661
  %2726 = load %nyx_string*, %nyx_string** %2661
  %2727 = getelementptr [20 x i8], [20 x i8]* @.str308, i32 0, i32 0
  %2728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2727, i64 19)
  %2729 = call %nyx_string* @nyx_string_concat(%nyx_string* %2726, %nyx_string* %2728)
  store %nyx_string* %2729, %nyx_string** %2661
  %2730 = load %nyx_string*, %nyx_string** %2661
  %2731 = getelementptr [58 x i8], [58 x i8]* @.str309, i32 0, i32 0
  %2732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2731, i64 57)
  %2733 = call %nyx_string* @nyx_string_concat(%nyx_string* %2730, %nyx_string* %2732)
  store %nyx_string* %2733, %nyx_string** %2661
  %2734 = load %nyx_string*, %nyx_string** %2661
  %2735 = getelementptr [7 x i8], [7 x i8]* @.str310, i32 0, i32 0
  %2736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2735, i64 6)
  %2737 = call %nyx_string* @nyx_string_concat(%nyx_string* %2734, %nyx_string* %2736)
  store %nyx_string* %2737, %nyx_string** %2661
  %2738 = load %nyx_string*, %nyx_string** %2661
  %2739 = getelementptr [15 x i8], [15 x i8]* @.str311, i32 0, i32 0
  %2740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2739, i64 14)
  %2741 = call %nyx_string* @nyx_string_concat(%nyx_string* %2738, %nyx_string* %2740)
  store %nyx_string* %2741, %nyx_string** %2661
  %2742 = load %nyx_string*, %nyx_string** %2661
  %2743 = getelementptr [3 x i8], [3 x i8]* @.str312, i32 0, i32 0
  %2744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2743, i64 2)
  %2745 = call %nyx_string* @nyx_string_concat(%nyx_string* %2742, %nyx_string* %2744)
  store %nyx_string* %2745, %nyx_string** %2661
  %2746 = load %nyx_string*, %nyx_string** %2661
  %2747 = getelementptr [2 x i8], [2 x i8]* @.str313, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2747, i64 1)
  %2749 = call %nyx_string* @nyx_string_concat(%nyx_string* %2746, %nyx_string* %2748)
  store %nyx_string* %2749, %nyx_string** %2661
  %2750 = load %nyx_string*, %nyx_string** %2661
  %2751 = getelementptr [79 x i8], [79 x i8]* @.str314, i32 0, i32 0
  %2752 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2751, i64 78)
  %2753 = call %nyx_string* @nyx_string_concat(%nyx_string* %2750, %nyx_string* %2752)
  store %nyx_string* %2753, %nyx_string** %2661
  %2754 = load %nyx_string*, %nyx_string** %2661
  %2755 = getelementptr [57 x i8], [57 x i8]* @.str315, i32 0, i32 0
  %2756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2755, i64 56)
  %2757 = call %nyx_string* @nyx_string_concat(%nyx_string* %2754, %nyx_string* %2756)
  store %nyx_string* %2757, %nyx_string** %2661
  %2758 = load %nyx_string*, %nyx_string** %2661
  %2759 = getelementptr [37 x i8], [37 x i8]* @.str316, i32 0, i32 0
  %2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %2759, i64 36)
  %2761 = call %nyx_string* @nyx_string_concat(%nyx_string* %2758, %nyx_string* %2760)
  store %nyx_string* %2761, %nyx_string** %2661
  %2762 = load %nyx_string*, %nyx_string** %2661
  %2763 = getelementptr [25 x i8], [25 x i8]* @.str317, i32 0, i32 0
  %2764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %2763, i64 24)
  %2765 = call %nyx_string* @nyx_string_concat(%nyx_string* %2762, %nyx_string* %2764)
  store %nyx_string* %2765, %nyx_string** %2661
  %2766 = load %nyx_string*, %nyx_string** %2661
  %2767 = getelementptr [49 x i8], [49 x i8]* @.str318, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %2767, i64 48)
  %2769 = call %nyx_string* @nyx_string_concat(%nyx_string* %2766, %nyx_string* %2768)
  store %nyx_string* %2769, %nyx_string** %2661
  %2770 = load %nyx_string*, %nyx_string** %2661
  %2771 = getelementptr [39 x i8], [39 x i8]* @.str319, i32 0, i32 0
  %2772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %2771, i64 38)
  %2773 = call %nyx_string* @nyx_string_concat(%nyx_string* %2770, %nyx_string* %2772)
  store %nyx_string* %2773, %nyx_string** %2661
  %2774 = load %nyx_string*, %nyx_string** %2661
  %2775 = getelementptr [20 x i8], [20 x i8]* @.str320, i32 0, i32 0
  %2776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %2775, i64 19)
  %2777 = call %nyx_string* @nyx_string_concat(%nyx_string* %2774, %nyx_string* %2776)
  store %nyx_string* %2777, %nyx_string** %2661
  %2778 = load %nyx_string*, %nyx_string** %2661
  %2779 = getelementptr [34 x i8], [34 x i8]* @.str321, i32 0, i32 0
  %2780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %2779, i64 33)
  %2781 = call %nyx_string* @nyx_string_concat(%nyx_string* %2778, %nyx_string* %2780)
  store %nyx_string* %2781, %nyx_string** %2661
  %2782 = load %nyx_string*, %nyx_string** %2661
  %2783 = getelementptr [36 x i8], [36 x i8]* @.str322, i32 0, i32 0
  %2784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %2783, i64 35)
  %2785 = call %nyx_string* @nyx_string_concat(%nyx_string* %2782, %nyx_string* %2784)
  store %nyx_string* %2785, %nyx_string** %2661
  %2786 = load %nyx_string*, %nyx_string** %2661
  %2787 = getelementptr [39 x i8], [39 x i8]* @.str323, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %2787, i64 38)
  %2789 = call %nyx_string* @nyx_string_concat(%nyx_string* %2786, %nyx_string* %2788)
  store %nyx_string* %2789, %nyx_string** %2661
  %2790 = load %nyx_string*, %nyx_string** %2661
  %2791 = getelementptr [32 x i8], [32 x i8]* @.str324, i32 0, i32 0
  %2792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %2791, i64 31)
  %2793 = call %nyx_string* @nyx_string_concat(%nyx_string* %2790, %nyx_string* %2792)
  store %nyx_string* %2793, %nyx_string** %2661
  %2794 = load %nyx_string*, %nyx_string** %2661
  %2795 = getelementptr [25 x i8], [25 x i8]* @.str325, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %2795, i64 24)
  %2797 = call %nyx_string* @nyx_string_concat(%nyx_string* %2794, %nyx_string* %2796)
  store %nyx_string* %2797, %nyx_string** %2661
  %2798 = load %nyx_string*, %nyx_string** %2661
  %2799 = getelementptr [18 x i8], [18 x i8]* @.str326, i32 0, i32 0
  %2800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %2799, i64 17)
  %2801 = call %nyx_string* @nyx_string_concat(%nyx_string* %2798, %nyx_string* %2800)
  store %nyx_string* %2801, %nyx_string** %2661
  %2802 = load %nyx_string*, %nyx_string** %2661
  %2803 = getelementptr [40 x i8], [40 x i8]* @.str327, i32 0, i32 0
  %2804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %2803, i64 39)
  %2805 = call %nyx_string* @nyx_string_concat(%nyx_string* %2802, %nyx_string* %2804)
  store %nyx_string* %2805, %nyx_string** %2661
  %2806 = load %nyx_string*, %nyx_string** %2661
  %2807 = getelementptr [46 x i8], [46 x i8]* @.str328, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %2807, i64 45)
  %2809 = call %nyx_string* @nyx_string_concat(%nyx_string* %2806, %nyx_string* %2808)
  store %nyx_string* %2809, %nyx_string** %2661
  %2810 = load %nyx_string*, %nyx_string** %2661
  %2811 = getelementptr [32 x i8], [32 x i8]* @.str329, i32 0, i32 0
  %2812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %2811, i64 31)
  %2813 = call %nyx_string* @nyx_string_concat(%nyx_string* %2810, %nyx_string* %2812)
  store %nyx_string* %2813, %nyx_string** %2661
  %2814 = load %nyx_string*, %nyx_string** %2661
  %2815 = getelementptr [42 x i8], [42 x i8]* @.str330, i32 0, i32 0
  %2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %2815, i64 41)
  %2817 = call %nyx_string* @nyx_string_concat(%nyx_string* %2814, %nyx_string* %2816)
  store %nyx_string* %2817, %nyx_string** %2661
  %2818 = load %nyx_string*, %nyx_string** %2661
  %2819 = getelementptr [44 x i8], [44 x i8]* @.str331, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %2819, i64 43)
  %2821 = call %nyx_string* @nyx_string_concat(%nyx_string* %2818, %nyx_string* %2820)
  store %nyx_string* %2821, %nyx_string** %2661
  %2822 = load %nyx_string*, %nyx_string** %2661
  %2823 = getelementptr [33 x i8], [33 x i8]* @.str332, i32 0, i32 0
  %2824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %2823, i64 32)
  %2825 = call %nyx_string* @nyx_string_concat(%nyx_string* %2822, %nyx_string* %2824)
  store %nyx_string* %2825, %nyx_string** %2661
  %2826 = load %nyx_string*, %nyx_string** %2661
  %2827 = getelementptr [31 x i8], [31 x i8]* @.str333, i32 0, i32 0
  %2828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %2827, i64 30)
  %2829 = call %nyx_string* @nyx_string_concat(%nyx_string* %2826, %nyx_string* %2828)
  store %nyx_string* %2829, %nyx_string** %2661
  %2830 = load %nyx_string*, %nyx_string** %2661
  %2831 = getelementptr [19 x i8], [19 x i8]* @.str334, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %2831, i64 18)
  %2833 = call %nyx_string* @nyx_string_concat(%nyx_string* %2830, %nyx_string* %2832)
  store %nyx_string* %2833, %nyx_string** %2661
  %2834 = load %nyx_string*, %nyx_string** %2661
  %2835 = getelementptr [15 x i8], [15 x i8]* @.str335, i32 0, i32 0
  %2836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %2835, i64 14)
  %2837 = call %nyx_string* @nyx_string_concat(%nyx_string* %2834, %nyx_string* %2836)
  store %nyx_string* %2837, %nyx_string** %2661
  %2838 = load %nyx_string*, %nyx_string** %2661
  %2839 = getelementptr [11 x i8], [11 x i8]* @.str336, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %2839, i64 10)
  %2841 = call %nyx_string* @nyx_string_concat(%nyx_string* %2838, %nyx_string* %2840)
  store %nyx_string* %2841, %nyx_string** %2661
  %2842 = load %nyx_string*, %nyx_string** %2661
  %2843 = getelementptr [19 x i8], [19 x i8]* @.str337, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %2843, i64 18)
  %2845 = call %nyx_string* @nyx_string_concat(%nyx_string* %2842, %nyx_string* %2844)
  store %nyx_string* %2845, %nyx_string** %2661
  %2846 = load %nyx_string*, %nyx_string** %2661
  %2847 = getelementptr [7 x i8], [7 x i8]* @.str338, i32 0, i32 0
  %2848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %2847, i64 6)
  %2849 = call %nyx_string* @nyx_string_concat(%nyx_string* %2846, %nyx_string* %2848)
  store %nyx_string* %2849, %nyx_string** %2661
  %2850 = load %nyx_string*, %nyx_string** %2661
  %2851 = getelementptr [16 x i8], [16 x i8]* @.str339, i32 0, i32 0
  %2852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %2851, i64 15)
  %2853 = call %nyx_string* @nyx_string_concat(%nyx_string* %2850, %nyx_string* %2852)
  store %nyx_string* %2853, %nyx_string** %2661
  %2854 = load %nyx_string*, %nyx_string** %2661
  %2855 = getelementptr [3 x i8], [3 x i8]* @.str340, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %2855, i64 2)
  %2857 = call %nyx_string* @nyx_string_concat(%nyx_string* %2854, %nyx_string* %2856)
  store %nyx_string* %2857, %nyx_string** %2661
  %2858 = load %nyx_string*, %nyx_string** %2661
  %2859 = getelementptr [2 x i8], [2 x i8]* @.str341, i32 0, i32 0
  %2860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %2859, i64 1)
  %2861 = call %nyx_string* @nyx_string_concat(%nyx_string* %2858, %nyx_string* %2860)
  store %nyx_string* %2861, %nyx_string** %2661
  %2862 = load %nyx_string*, %nyx_string** %2661
  %2863 = getelementptr [77 x i8], [77 x i8]* @.str342, i32 0, i32 0
  %2864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %2863, i64 76)
  %2865 = call %nyx_string* @nyx_string_concat(%nyx_string* %2862, %nyx_string* %2864)
  store %nyx_string* %2865, %nyx_string** %2661
  %2866 = load %nyx_string*, %nyx_string** %2661
  %2867 = getelementptr [53 x i8], [53 x i8]* @.str343, i32 0, i32 0
  %2868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %2867, i64 52)
  %2869 = call %nyx_string* @nyx_string_concat(%nyx_string* %2866, %nyx_string* %2868)
  store %nyx_string* %2869, %nyx_string** %2661
  %2870 = load %nyx_string*, %nyx_string** %2661
  %2871 = getelementptr [45 x i8], [45 x i8]* @.str344, i32 0, i32 0
  %2872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %2871, i64 44)
  %2873 = call %nyx_string* @nyx_string_concat(%nyx_string* %2870, %nyx_string* %2872)
  store %nyx_string* %2873, %nyx_string** %2661
  %2874 = load %nyx_string*, %nyx_string** %2661
  %2875 = getelementptr [26 x i8], [26 x i8]* @.str345, i32 0, i32 0
  %2876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %2875, i64 25)
  %2877 = call %nyx_string* @nyx_string_concat(%nyx_string* %2874, %nyx_string* %2876)
  store %nyx_string* %2877, %nyx_string** %2661
  %2878 = load %nyx_string*, %nyx_string** %2661
  %2879 = getelementptr [39 x i8], [39 x i8]* @.str346, i32 0, i32 0
  %2880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %2879, i64 38)
  %2881 = call %nyx_string* @nyx_string_concat(%nyx_string* %2878, %nyx_string* %2880)
  store %nyx_string* %2881, %nyx_string** %2661
  %2882 = load %nyx_string*, %nyx_string** %2661
  %2883 = getelementptr [35 x i8], [35 x i8]* @.str347, i32 0, i32 0
  %2884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %2883, i64 34)
  %2885 = call %nyx_string* @nyx_string_concat(%nyx_string* %2882, %nyx_string* %2884)
  store %nyx_string* %2885, %nyx_string** %2661
  %2886 = load %nyx_string*, %nyx_string** %2661
  %2887 = getelementptr [48 x i8], [48 x i8]* @.str348, i32 0, i32 0
  %2888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %2887, i64 47)
  %2889 = call %nyx_string* @nyx_string_concat(%nyx_string* %2886, %nyx_string* %2888)
  store %nyx_string* %2889, %nyx_string** %2661
  %2890 = load %nyx_string*, %nyx_string** %2661
  %2891 = getelementptr [20 x i8], [20 x i8]* @.str349, i32 0, i32 0
  %2892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %2891, i64 19)
  %2893 = call %nyx_string* @nyx_string_concat(%nyx_string* %2890, %nyx_string* %2892)
  store %nyx_string* %2893, %nyx_string** %2661
  %2894 = load %nyx_string*, %nyx_string** %2661
  %2895 = getelementptr [32 x i8], [32 x i8]* @.str350, i32 0, i32 0
  %2896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %2895, i64 31)
  %2897 = call %nyx_string* @nyx_string_concat(%nyx_string* %2894, %nyx_string* %2896)
  store %nyx_string* %2897, %nyx_string** %2661
  %2898 = load %nyx_string*, %nyx_string** %2661
  %2899 = getelementptr [37 x i8], [37 x i8]* @.str351, i32 0, i32 0
  %2900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %2899, i64 36)
  %2901 = call %nyx_string* @nyx_string_concat(%nyx_string* %2898, %nyx_string* %2900)
  store %nyx_string* %2901, %nyx_string** %2661
  %2902 = load %nyx_string*, %nyx_string** %2661
  %2903 = getelementptr [34 x i8], [34 x i8]* @.str352, i32 0, i32 0
  %2904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %2903, i64 33)
  %2905 = call %nyx_string* @nyx_string_concat(%nyx_string* %2902, %nyx_string* %2904)
  store %nyx_string* %2905, %nyx_string** %2661
  %2906 = load %nyx_string*, %nyx_string** %2661
  %2907 = getelementptr [101 x i8], [101 x i8]* @.str353, i32 0, i32 0
  %2908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %2907, i64 100)
  %2909 = call %nyx_string* @nyx_string_concat(%nyx_string* %2906, %nyx_string* %2908)
  store %nyx_string* %2909, %nyx_string** %2661
  %2910 = load %nyx_string*, %nyx_string** %2661
  %2911 = getelementptr [56 x i8], [56 x i8]* @.str354, i32 0, i32 0
  %2912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %2911, i64 55)
  %2913 = call %nyx_string* @nyx_string_concat(%nyx_string* %2910, %nyx_string* %2912)
  store %nyx_string* %2913, %nyx_string** %2661
  %2914 = load %nyx_string*, %nyx_string** %2661
  %2915 = getelementptr [24 x i8], [24 x i8]* @.str355, i32 0, i32 0
  %2916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %2915, i64 23)
  %2917 = call %nyx_string* @nyx_string_concat(%nyx_string* %2914, %nyx_string* %2916)
  store %nyx_string* %2917, %nyx_string** %2661
  %2918 = load %nyx_string*, %nyx_string** %2661
  %2919 = getelementptr [36 x i8], [36 x i8]* @.str356, i32 0, i32 0
  %2920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %2919, i64 35)
  %2921 = call %nyx_string* @nyx_string_concat(%nyx_string* %2918, %nyx_string* %2920)
  store %nyx_string* %2921, %nyx_string** %2661
  %2922 = load %nyx_string*, %nyx_string** %2661
  %2923 = getelementptr [41 x i8], [41 x i8]* @.str357, i32 0, i32 0
  %2924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %2923, i64 40)
  %2925 = call %nyx_string* @nyx_string_concat(%nyx_string* %2922, %nyx_string* %2924)
  store %nyx_string* %2925, %nyx_string** %2661
  %2926 = load %nyx_string*, %nyx_string** %2661
  %2927 = getelementptr [58 x i8], [58 x i8]* @.str358, i32 0, i32 0
  %2928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %2927, i64 57)
  %2929 = call %nyx_string* @nyx_string_concat(%nyx_string* %2926, %nyx_string* %2928)
  store %nyx_string* %2929, %nyx_string** %2661
  %2930 = load %nyx_string*, %nyx_string** %2661
  %2931 = getelementptr [99 x i8], [99 x i8]* @.str359, i32 0, i32 0
  %2932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %2931, i64 98)
  %2933 = call %nyx_string* @nyx_string_concat(%nyx_string* %2930, %nyx_string* %2932)
  store %nyx_string* %2933, %nyx_string** %2661
  %2934 = load %nyx_string*, %nyx_string** %2661
  %2935 = getelementptr [23 x i8], [23 x i8]* @.str360, i32 0, i32 0
  %2936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %2935, i64 22)
  %2937 = call %nyx_string* @nyx_string_concat(%nyx_string* %2934, %nyx_string* %2936)
  store %nyx_string* %2937, %nyx_string** %2661
  %2938 = load %nyx_string*, %nyx_string** %2661
  %2939 = getelementptr [11 x i8], [11 x i8]* @.str361, i32 0, i32 0
  %2940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %2939, i64 10)
  %2941 = call %nyx_string* @nyx_string_concat(%nyx_string* %2938, %nyx_string* %2940)
  store %nyx_string* %2941, %nyx_string** %2661
  %2942 = load %nyx_string*, %nyx_string** %2661
  %2943 = getelementptr [19 x i8], [19 x i8]* @.str362, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %2943, i64 18)
  %2945 = call %nyx_string* @nyx_string_concat(%nyx_string* %2942, %nyx_string* %2944)
  store %nyx_string* %2945, %nyx_string** %2661
  %2946 = load %nyx_string*, %nyx_string** %2661
  %2947 = getelementptr [7 x i8], [7 x i8]* @.str363, i32 0, i32 0
  %2948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %2947, i64 6)
  %2949 = call %nyx_string* @nyx_string_concat(%nyx_string* %2946, %nyx_string* %2948)
  store %nyx_string* %2949, %nyx_string** %2661
  %2950 = load %nyx_string*, %nyx_string** %2661
  %2951 = getelementptr [17 x i8], [17 x i8]* @.str364, i32 0, i32 0
  %2952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %2951, i64 16)
  %2953 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2952)
  store %nyx_string* %2953, %nyx_string** %2661
  %2954 = load %nyx_string*, %nyx_string** %2661
  %2955 = getelementptr [3 x i8], [3 x i8]* @.str365, i32 0, i32 0
  %2956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %2955, i64 2)
  %2957 = call %nyx_string* @nyx_string_concat(%nyx_string* %2954, %nyx_string* %2956)
  store %nyx_string* %2957, %nyx_string** %2661
  %2958 = load %nyx_string*, %nyx_string** %2661
  %2959 = getelementptr [2 x i8], [2 x i8]* @.str366, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %2959, i64 1)
  %2961 = call %nyx_string* @nyx_string_concat(%nyx_string* %2958, %nyx_string* %2960)
  store %nyx_string* %2961, %nyx_string** %2661
  %2962 = load %nyx_string*, %nyx_string** %2661
  %2963 = getelementptr [52 x i8], [52 x i8]* @.str367, i32 0, i32 0
  %2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %2963, i64 51)
  %2965 = call %nyx_string* @nyx_string_concat(%nyx_string* %2962, %nyx_string* %2964)
  store %nyx_string* %2965, %nyx_string** %2661
  %2966 = load %nyx_string*, %nyx_string** %2661
  %2967 = getelementptr [39 x i8], [39 x i8]* @.str368, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %2967, i64 38)
  %2969 = call %nyx_string* @nyx_string_concat(%nyx_string* %2966, %nyx_string* %2968)
  store %nyx_string* %2969, %nyx_string** %2661
  %2970 = load %nyx_string*, %nyx_string** %2661
  %2971 = getelementptr [126 x i8], [126 x i8]* @.str369, i32 0, i32 0
  %2972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %2971, i64 125)
  %2973 = call %nyx_string* @nyx_string_concat(%nyx_string* %2970, %nyx_string* %2972)
  store %nyx_string* %2973, %nyx_string** %2661
  %2974 = load %nyx_string*, %nyx_string** %2661
  %2975 = getelementptr [89 x i8], [89 x i8]* @.str370, i32 0, i32 0
  %2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %2975, i64 88)
  %2977 = call %nyx_string* @nyx_string_concat(%nyx_string* %2974, %nyx_string* %2976)
  store %nyx_string* %2977, %nyx_string** %2661
  %2978 = load %nyx_string*, %nyx_string** %2661
  %2979 = getelementptr [3 x i8], [3 x i8]* @.str371, i32 0, i32 0
  %2980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %2979, i64 2)
  %2981 = call %nyx_string* @nyx_string_concat(%nyx_string* %2978, %nyx_string* %2980)
  store %nyx_string* %2981, %nyx_string** %2661
  %2982 = call { i64, i8* }* @gotchas_table()
  %2983 = alloca { i64, i8* }*
  store { i64, i8* }* %2982, { i64, i8* }** %2983
  %2984 = alloca i64
  store i64 0, i64* %2984
  %2985 = getelementptr [8 x i8], [8 x i8]* @.str372, i32 0, i32 0
  %2986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %2985, i64 7)
  %2987 = alloca %nyx_string*
  store %nyx_string* %2986, %nyx_string** %2987
  %2988 = getelementptr [1 x i8], [1 x i8]* @.str373, i32 0, i32 0
  %2989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %2988, i64 0)
  %2990 = alloca %nyx_string*
  store %nyx_string* %2989, %nyx_string** %2990
  %2991 = getelementptr [3 x i8], [3 x i8]* @.str374, i32 0, i32 0
  %2992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %2991, i64 2)
  %2993 = alloca %nyx_string*
  store %nyx_string* %2992, %nyx_string** %2993
  %2994 = getelementptr [9 x i8], [9 x i8]* @.str375, i32 0, i32 0
  %2995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %2994, i64 8)
  %2996 = alloca %nyx_string*
  store %nyx_string* %2995, %nyx_string** %2996
  %2997 = getelementptr [9 x i8], [9 x i8]* @.str376, i32 0, i32 0
  %2998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %2997, i64 8)
  %2999 = alloca %nyx_string*
  store %nyx_string* %2998, %nyx_string** %2999
  %3000 = getelementptr [2 x i8], [2 x i8]* @.str377, i32 0, i32 0
  %3001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3000, i64 1)
  %3002 = alloca %nyx_string*
  store %nyx_string* %3001, %nyx_string** %3002
  %3003 = getelementptr [14 x i8], [14 x i8]* @.str378, i32 0, i32 0
  %3004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3003, i64 13)
  %3005 = alloca %nyx_string*
  store %nyx_string* %3004, %nyx_string** %3005
  %3006 = getelementptr [3 x i8], [3 x i8]* @.str379, i32 0, i32 0
  %3007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3006, i64 2)
  %3008 = alloca %nyx_string*
  store %nyx_string* %3007, %nyx_string** %3008
  %3009 = getelementptr [5 x i8], [5 x i8]* @.str380, i32 0, i32 0
  %3010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3009, i64 4)
  %3011 = alloca %nyx_string*
  store %nyx_string* %3010, %nyx_string** %3011
  %3012 = getelementptr [37 x i8], [37 x i8]* @.str381, i32 0, i32 0
  %3013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3012, i64 36)
  %3014 = alloca %nyx_string*
  store %nyx_string* %3013, %nyx_string** %3014
  %3015 = getelementptr [4 x i8], [4 x i8]* @.str382, i32 0, i32 0
  %3016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3015, i64 3)
  %3017 = alloca %nyx_string*
  store %nyx_string* %3016, %nyx_string** %3017
  %3018 = getelementptr [33 x i8], [33 x i8]* @.str383, i32 0, i32 0
  %3019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3018, i64 32)
  %3020 = alloca %nyx_string*
  store %nyx_string* %3019, %nyx_string** %3020
  %3021 = getelementptr [3 x i8], [3 x i8]* @.str384, i32 0, i32 0
  %3022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3021, i64 2)
  %3023 = alloca %nyx_string*
  store %nyx_string* %3022, %nyx_string** %3023
  %3024 = getelementptr [28 x i8], [28 x i8]* @.str385, i32 0, i32 0
  %3025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3024, i64 27)
  %3026 = alloca %nyx_string*
  store %nyx_string* %3025, %nyx_string** %3026
  %3027 = getelementptr [3 x i8], [3 x i8]* @.str386, i32 0, i32 0
  %3028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3027, i64 2)
  %3029 = alloca %nyx_string*
  store %nyx_string* %3028, %nyx_string** %3029
  %3030 = call i8* @llvm.stacksave()
  br label %while_cond527
while_cond527:
  %3031 = load i64, i64* %2984
  %3032 = load { i64, i8* }*, { i64, i8* }** %2983
  %3033 = call i64 @nyx_array_length({ i64, i8* }* %3032)
  %3034 = icmp slt i64 %3031, %3033
  br i1 %3034, label %while_body528, label %while_end529
while_body528:
  call void @llvm.stackrestore(i8* %3030)
  %3035 = load { i64, i8* }*, { i64, i8* }** %2983
  %3036 = load i64, i64* %2984
  %3037 = call i64 @nyx_array_get({ i64, i8* }* %3035, i64 %3036)
  %3038 = inttoptr i64 %3037 to { i64, i8* }*
  %3039 = alloca { i64, i8* }*
  store { i64, i8* }* %3038, { i64, i8* }** %3039
  %3040 = load { i64, i8* }*, { i64, i8* }** %3039
  %3041 = load %nyx_string*, %nyx_string** %2987
  %3042 = call %nyx_string* @gotcha_field({ i64, i8* }* %3040, %nyx_string* %3041)
  %3043 = alloca %nyx_string*
  store %nyx_string* %3042, %nyx_string** %3043
  %3044 = load %nyx_string*, %nyx_string** %3043
  %3045 = load %nyx_string*, %nyx_string** %2990
  %3046 = call i1 @nyx_string_equals(%nyx_string* %3044, %nyx_string* %3045)
  %3047 = xor i1 %3046, true
  br i1 %3047, label %then530, label %else531
then530:
  %3048 = load { i64, i8* }*, { i64, i8* }** %3039
  %3049 = load %nyx_string*, %nyx_string** %2993
  %3050 = call %nyx_string* @gotcha_field({ i64, i8* }* %3048, %nyx_string* %3049)
  %3051 = alloca %nyx_string*
  store %nyx_string* %3050, %nyx_string** %3051
  %3052 = load { i64, i8* }*, { i64, i8* }** %3039
  %3053 = load %nyx_string*, %nyx_string** %2996
  %3054 = call %nyx_string* @gotcha_field({ i64, i8* }* %3052, %nyx_string* %3053)
  %3055 = alloca %nyx_string*
  store %nyx_string* %3054, %nyx_string** %3055
  %3056 = load { i64, i8* }*, { i64, i8* }** %3039
  %3057 = load %nyx_string*, %nyx_string** %2999
  %3058 = call %nyx_string* @gotcha_field({ i64, i8* }* %3056, %nyx_string* %3057)
  %3059 = alloca %nyx_string*
  store %nyx_string* %3058, %nyx_string** %3059
  %3060 = load %nyx_string*, %nyx_string** %2661
  %3061 = load %nyx_string*, %nyx_string** %3002
  %3062 = call %nyx_string* @nyx_string_concat(%nyx_string* %3060, %nyx_string* %3061)
  store %nyx_string* %3062, %nyx_string** %2661
  %3063 = load %nyx_string*, %nyx_string** %2661
  %3064 = load %nyx_string*, %nyx_string** %3005
  %3065 = call %nyx_string* @nyx_string_concat(%nyx_string* %3063, %nyx_string* %3064)
  %3066 = load %nyx_string*, %nyx_string** %3051
  %3067 = call %nyx_string* @nyx_string_concat(%nyx_string* %3065, %nyx_string* %3066)
  %3068 = load %nyx_string*, %nyx_string** %3008
  %3069 = call %nyx_string* @nyx_string_concat(%nyx_string* %3067, %nyx_string* %3068)
  %3070 = load %nyx_string*, %nyx_string** %3055
  %3071 = call %nyx_string* @nx_escape(%nyx_string* %3070)
  %3072 = call %nyx_string* @nyx_string_concat(%nyx_string* %3069, %nyx_string* %3071)
  %3073 = load %nyx_string*, %nyx_string** %3011
  %3074 = call %nyx_string* @nyx_string_concat(%nyx_string* %3072, %nyx_string* %3073)
  store %nyx_string* %3074, %nyx_string** %2661
  %3075 = load %nyx_string*, %nyx_string** %2661
  %3076 = load %nyx_string*, %nyx_string** %3014
  %3077 = call %nyx_string* @nyx_string_concat(%nyx_string* %3075, %nyx_string* %3076)
  %3078 = load %nyx_string*, %nyx_string** %3043
  %3079 = call %nyx_string* @nx_escape(%nyx_string* %3078)
  %3080 = call %nyx_string* @nyx_string_concat(%nyx_string* %3077, %nyx_string* %3079)
  %3081 = load %nyx_string*, %nyx_string** %3017
  %3082 = call %nyx_string* @nyx_string_concat(%nyx_string* %3080, %nyx_string* %3081)
  store %nyx_string* %3082, %nyx_string** %2661
  %3083 = load %nyx_string*, %nyx_string** %2661
  %3084 = load %nyx_string*, %nyx_string** %3020
  %3085 = call %nyx_string* @nyx_string_concat(%nyx_string* %3083, %nyx_string* %3084)
  %3086 = load %nyx_string*, %nyx_string** %3051
  %3087 = call %nyx_string* @nyx_string_concat(%nyx_string* %3085, %nyx_string* %3086)
  %3088 = load %nyx_string*, %nyx_string** %3023
  %3089 = call %nyx_string* @nyx_string_concat(%nyx_string* %3087, %nyx_string* %3088)
  %3090 = load %nyx_string*, %nyx_string** %3059
  %3091 = call %nyx_string* @nyx_string_concat(%nyx_string* %3089, %nyx_string* %3090)
  %3092 = load %nyx_string*, %nyx_string** %3026
  %3093 = call %nyx_string* @nyx_string_concat(%nyx_string* %3091, %nyx_string* %3092)
  store %nyx_string* %3093, %nyx_string** %2661
  %3094 = load %nyx_string*, %nyx_string** %2661
  %3095 = load %nyx_string*, %nyx_string** %3029
  %3096 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3095)
  store %nyx_string* %3096, %nyx_string** %2661
  br label %merge532
else531:
  br label %merge532
merge532:
  %3097 = load i64, i64* %2984
  %3098 = add i64 %3097, 1
  store i64 %3098, i64* %2984
  br label %while_cond527
while_end529:
  %3099 = load %nyx_string*, %nyx_string** %2661
  %3100 = getelementptr [2 x i8], [2 x i8]* @.str387, i32 0, i32 0
  %3101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3100, i64 1)
  %3102 = call %nyx_string* @nyx_string_concat(%nyx_string* %3099, %nyx_string* %3101)
  store %nyx_string* %3102, %nyx_string** %2661
  %3103 = load %nyx_string*, %nyx_string** %2661
  %3104 = getelementptr [47 x i8], [47 x i8]* @.str388, i32 0, i32 0
  %3105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3104, i64 46)
  %3106 = call %nyx_string* @nyx_string_concat(%nyx_string* %3103, %nyx_string* %3105)
  store %nyx_string* %3106, %nyx_string** %2661
  %3107 = load %nyx_string*, %nyx_string** %2661
  %3108 = getelementptr [39 x i8], [39 x i8]* @.str389, i32 0, i32 0
  %3109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3108, i64 38)
  %3110 = call %nyx_string* @nyx_string_concat(%nyx_string* %3107, %nyx_string* %3109)
  store %nyx_string* %3110, %nyx_string** %2661
  %3111 = load %nyx_string*, %nyx_string** %2661
  %3112 = getelementptr [50 x i8], [50 x i8]* @.str390, i32 0, i32 0
  %3113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3112, i64 49)
  %3114 = call %nyx_string* @nyx_string_concat(%nyx_string* %3111, %nyx_string* %3113)
  store %nyx_string* %3114, %nyx_string** %2661
  %3115 = load %nyx_string*, %nyx_string** %2661
  %3116 = getelementptr [20 x i8], [20 x i8]* @.str391, i32 0, i32 0
  %3117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3116, i64 19)
  %3118 = call %nyx_string* @nyx_string_concat(%nyx_string* %3115, %nyx_string* %3117)
  store %nyx_string* %3118, %nyx_string** %2661
  %3119 = load %nyx_string*, %nyx_string** %2661
  %3120 = getelementptr [32 x i8], [32 x i8]* @.str392, i32 0, i32 0
  %3121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3120, i64 31)
  %3122 = call %nyx_string* @nyx_string_concat(%nyx_string* %3119, %nyx_string* %3121)
  store %nyx_string* %3122, %nyx_string** %2661
  %3123 = load %nyx_string*, %nyx_string** %2661
  %3124 = getelementptr [34 x i8], [34 x i8]* @.str393, i32 0, i32 0
  %3125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3124, i64 33)
  %3126 = call %nyx_string* @nyx_string_concat(%nyx_string* %3123, %nyx_string* %3125)
  store %nyx_string* %3126, %nyx_string** %2661
  %3127 = load %nyx_string*, %nyx_string** %2661
  %3128 = getelementptr [114 x i8], [114 x i8]* @.str394, i32 0, i32 0
  %3129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3128, i64 113)
  %3130 = call %nyx_string* @nyx_string_concat(%nyx_string* %3127, %nyx_string* %3129)
  store %nyx_string* %3130, %nyx_string** %2661
  %3131 = load %nyx_string*, %nyx_string** %2661
  %3132 = getelementptr [19 x i8], [19 x i8]* @.str395, i32 0, i32 0
  %3133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3132, i64 18)
  %3134 = call %nyx_string* @nyx_string_concat(%nyx_string* %3131, %nyx_string* %3133)
  store %nyx_string* %3134, %nyx_string** %2661
  %3135 = load %nyx_string*, %nyx_string** %2661
  %3136 = getelementptr [7 x i8], [7 x i8]* @.str396, i32 0, i32 0
  %3137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3136, i64 6)
  %3138 = call %nyx_string* @nyx_string_concat(%nyx_string* %3135, %nyx_string* %3137)
  store %nyx_string* %3138, %nyx_string** %2661
  %3139 = load %nyx_string*, %nyx_string** %2661
  %3140 = getelementptr [3 x i8], [3 x i8]* @.str397, i32 0, i32 0
  %3141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3140, i64 2)
  %3142 = call %nyx_string* @nyx_string_concat(%nyx_string* %3139, %nyx_string* %3141)
  store %nyx_string* %3142, %nyx_string** %2661
  %3143 = load %nyx_string*, %nyx_string** %2661
  ret %nyx_string* %3143
}

define internal i64 @write_constitution_test(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %3144 = load %nyx_string*, %nyx_string** %dir.ptr
  %3145 = getelementptr [28 x i8], [28 x i8]* @.str398, i32 0, i32 0
  %3146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3145, i64 27)
  %3147 = call %nyx_string* @nyx_string_concat(%nyx_string* %3144, %nyx_string* %3146)
  %3148 = alloca %nyx_string*
  store %nyx_string* %3147, %nyx_string** %3148
  %3149 = call %nyx_string* @constitution_test_body()
  %3150 = alloca %nyx_string*
  store %nyx_string* %3149, %nyx_string** %3150
  %3151 = load %nyx_string*, %nyx_string** %3148
  %3152 = call i8* @nyx_string_to_cstr(%nyx_string* %3151)
  %3153 = call i1 @nyx_file_exists(i8* %3152)
  br i1 %3153, label %then533, label %else534
then533:
  %3154 = load %nyx_string*, %nyx_string** %3148
  %3155 = call i8* @nyx_string_to_cstr(%nyx_string* %3154)
  %3156 = call %nyx_string* @nyx_read_file(i8* %3155)
  %3157 = alloca %nyx_string*
  store %nyx_string* %3156, %nyx_string** %3157
  %3158 = load %nyx_string*, %nyx_string** %3157
  %3159 = load %nyx_string*, %nyx_string** %3150
  %3160 = call i1 @nyx_string_equals(%nyx_string* %3158, %nyx_string* %3159)
  br i1 %3160, label %then536, label %else537
then536:
  ret i64 0
else537:
  br label %merge538
merge538:
  %3161 = load %nyx_string*, %nyx_string** %3157
  %3162 = call %nyx_string* @sdd_generated_marker()
  %3163 = call i64 @nyx_string_index_of(%nyx_string* %3161, %nyx_string* %3162)
  %3164 = icmp slt i64 %3163, 0
  br i1 %3164, label %then539, label %else540
then539:
  ret i64 2
else540:
  br label %merge541
merge541:
  br label %merge535
else534:
  br label %merge535
merge535:
  %3165 = load %nyx_string*, %nyx_string** %3148
  %3166 = load %nyx_string*, %nyx_string** %3150
  %3167 = call i8* @nyx_string_to_cstr(%nyx_string* %3165)
  %3168 = call i1 @nyx_write_file_safe(i8* %3167, %nyx_string* %3166)
  ret i64 1
}

define internal i1 @add_agents_triggers(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3169 = load %nyx_string*, %nyx_string** %dir.ptr
  %3170 = getelementptr [11 x i8], [11 x i8]* @.str399, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3170, i64 10)
  %3172 = call %nyx_string* @nyx_string_concat(%nyx_string* %3169, %nyx_string* %3171)
  %3173 = alloca %nyx_string*
  store %nyx_string* %3172, %nyx_string** %3173
  %3174 = load %nyx_string*, %nyx_string** %3173
  %3175 = call i8* @nyx_string_to_cstr(%nyx_string* %3174)
  %3176 = call i1 @nyx_file_exists(i8* %3175)
  %3177 = icmp eq i1 %3176, 0
  br i1 %3177, label %then542, label %else543
then542:
  %3178 = getelementptr [30 x i8], [30 x i8]* @.str400, i32 0, i32 0
  %3179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3178, i64 29)
  %3180 = load %nyx_string*, %nyx_string** %dir.ptr
  %3181 = call %nyx_string* @nyx_string_concat(%nyx_string* %3179, %nyx_string* %3180)
  %3182 = getelementptr [80 x i8], [80 x i8]* @.str401, i32 0, i32 0
  %3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3182, i64 79)
  %3184 = call %nyx_string* @nyx_string_concat(%nyx_string* %3181, %nyx_string* %3183)
  %3185 = call i8* @nyx_string_to_cstr(%nyx_string* %3184)
  call void @nyx_print_string(i8* %3185)
  ret i1 0
else543:
  br label %merge544
merge544:
  %3186 = load %nyx_string*, %nyx_string** %3173
  %3187 = call i8* @nyx_string_to_cstr(%nyx_string* %3186)
  %3188 = call %nyx_string* @nyx_read_file(i8* %3187)
  %3189 = alloca %nyx_string*
  store %nyx_string* %3188, %nyx_string** %3189
  %3190 = load %nyx_string*, %nyx_string** %3189
  %3191 = getelementptr [21 x i8], [21 x i8]* @.str402, i32 0, i32 0
  %3192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3191, i64 20)
  %3193 = call i64 @nyx_string_index_of(%nyx_string* %3190, %nyx_string* %3192)
  %3194 = icmp sge i64 %3193, 0
  br i1 %3194, label %then545, label %else546
then545:
  %3195 = load %nyx_string*, %nyx_string** %lang.ptr
  %3196 = getelementptr [47 x i8], [47 x i8]* @.str403, i32 0, i32 0
  %3197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3196, i64 46)
  %3198 = getelementptr [47 x i8], [47 x i8]* @.str404, i32 0, i32 0
  %3199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3198, i64 46)
  %3200 = call %nyx_string* @sdd_msg(%nyx_string* %3195, %nyx_string* %3197, %nyx_string* %3199)
  %3201 = call i8* @nyx_string_to_cstr(%nyx_string* %3200)
  call void @nyx_print_string(i8* %3201)
  ret i1 0
else546:
  br label %merge547
merge547:
  %3202 = getelementptr [22 x i8], [22 x i8]* @.str405, i32 0, i32 0
  %3203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3202, i64 21)
  %3204 = alloca %nyx_string*
  store %nyx_string* %3203, %nyx_string** %3204
  %3205 = load %nyx_string*, %nyx_string** %lang.ptr
  %3206 = getelementptr [3 x i8], [3 x i8]* @.str406, i32 0, i32 0
  %3207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3206, i64 2)
  %3208 = call i1 @nyx_string_equals(%nyx_string* %3205, %nyx_string* %3207)
  br i1 %3208, label %then548, label %else549
then548:
  %3209 = load %nyx_string*, %nyx_string** %3204
  %3210 = getelementptr [150 x i8], [150 x i8]* @.str407, i32 0, i32 0
  %3211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3210, i64 149)
  %3212 = call %nyx_string* @nyx_string_concat(%nyx_string* %3209, %nyx_string* %3211)
  store %nyx_string* %3212, %nyx_string** %3204
  %3213 = load %nyx_string*, %nyx_string** %3204
  %3214 = getelementptr [122 x i8], [122 x i8]* @.str408, i32 0, i32 0
  %3215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3214, i64 121)
  %3216 = call %nyx_string* @nyx_string_concat(%nyx_string* %3213, %nyx_string* %3215)
  store %nyx_string* %3216, %nyx_string** %3204
  br label %merge550
else549:
  %3217 = load %nyx_string*, %nyx_string** %3204
  %3218 = getelementptr [152 x i8], [152 x i8]* @.str409, i32 0, i32 0
  %3219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3218, i64 151)
  %3220 = call %nyx_string* @nyx_string_concat(%nyx_string* %3217, %nyx_string* %3219)
  store %nyx_string* %3220, %nyx_string** %3204
  %3221 = load %nyx_string*, %nyx_string** %3204
  %3222 = getelementptr [113 x i8], [113 x i8]* @.str410, i32 0, i32 0
  %3223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3222, i64 112)
  %3224 = call %nyx_string* @nyx_string_concat(%nyx_string* %3221, %nyx_string* %3223)
  store %nyx_string* %3224, %nyx_string** %3204
  br label %merge550
merge550:
  %3225 = getelementptr [19 x i8], [19 x i8]* @.str411, i32 0, i32 0
  %3226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3225, i64 18)
  %3227 = alloca %nyx_string*
  store %nyx_string* %3226, %nyx_string** %3227
  %3228 = load %nyx_string*, %nyx_string** %3189
  %3229 = load %nyx_string*, %nyx_string** %3227
  %3230 = call i64 @nyx_string_index_of(%nyx_string* %3228, %nyx_string* %3229)
  %3231 = alloca i64
  store i64 %3230, i64* %3231
  %3232 = load i64, i64* %3231
  %3233 = icmp slt i64 %3232, 0
  br i1 %3233, label %then551, label %else552
then551:
  %3234 = load %nyx_string*, %nyx_string** %3173
  %3235 = load %nyx_string*, %nyx_string** %3189
  %3236 = getelementptr [2 x i8], [2 x i8]* @.str412, i32 0, i32 0
  %3237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3236, i64 1)
  %3238 = call %nyx_string* @nyx_string_concat(%nyx_string* %3235, %nyx_string* %3237)
  %3239 = load %nyx_string*, %nyx_string** %3204
  %3240 = call %nyx_string* @nyx_string_concat(%nyx_string* %3238, %nyx_string* %3239)
  %3241 = call i8* @nyx_string_to_cstr(%nyx_string* %3234)
  %3242 = call i1 @nyx_write_file_safe(i8* %3241, %nyx_string* %3240)
  br label %merge553
else552:
  %3243 = load %nyx_string*, %nyx_string** %3173
  %3244 = load %nyx_string*, %nyx_string** %3189
  %3245 = load i64, i64* %3231
  %3246 = call %nyx_string* @nyx_string_substring(%nyx_string* %3244, i64 0, i64 %3245)
  %3247 = load %nyx_string*, %nyx_string** %3204
  %3248 = call %nyx_string* @nyx_string_concat(%nyx_string* %3246, %nyx_string* %3247)
  %3249 = getelementptr [2 x i8], [2 x i8]* @.str413, i32 0, i32 0
  %3250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3249, i64 1)
  %3251 = call %nyx_string* @nyx_string_concat(%nyx_string* %3248, %nyx_string* %3250)
  %3252 = load %nyx_string*, %nyx_string** %3189
  %3253 = load i64, i64* %3231
  %3254 = load %nyx_string*, %nyx_string** %3189
  %3255 = call i64 @nyx_string_byte_length(%nyx_string* %3254)
  %3256 = call %nyx_string* @nyx_string_substring(%nyx_string* %3252, i64 %3253, i64 %3255)
  %3257 = call %nyx_string* @nyx_string_concat(%nyx_string* %3251, %nyx_string* %3256)
  %3258 = call i8* @nyx_string_to_cstr(%nyx_string* %3243)
  %3259 = call i1 @nyx_write_file_safe(i8* %3258, %nyx_string* %3257)
  br label %merge553
merge553:
  %3260 = load %nyx_string*, %nyx_string** %lang.ptr
  %3261 = getelementptr [36 x i8], [36 x i8]* @.str414, i32 0, i32 0
  %3262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3261, i64 35)
  %3263 = getelementptr [40 x i8], [40 x i8]* @.str415, i32 0, i32 0
  %3264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3263, i64 39)
  %3265 = call %nyx_string* @sdd_msg(%nyx_string* %3260, %nyx_string* %3262, %nyx_string* %3264)
  %3266 = call i8* @nyx_string_to_cstr(%nyx_string* %3265)
  call void @nyx_print_string(i8* %3266)
  ret i1 1
}

define internal i1 @run_sdd_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3267 = getelementptr [11 x i8], [11 x i8]* @.str416, i32 0, i32 0
  %3268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3267, i64 10)
  %3269 = load %nyx_string*, %nyx_string** %dir.ptr
  %3270 = call %nyx_string* @nyx_string_concat(%nyx_string* %3268, %nyx_string* %3269)
  %3271 = getelementptr [16 x i8], [16 x i8]* @.str417, i32 0, i32 0
  %3272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3271, i64 15)
  %3273 = call %nyx_string* @nyx_string_concat(%nyx_string* %3270, %nyx_string* %3272)
  %3274 = call i8* @nyx_string_to_cstr(%nyx_string* %3273)
  %3275 = call %nyx_string* @nyx_exec(i8* %3274)
  %3276 = load %nyx_string*, %nyx_string** %dir.ptr
  %3277 = load %nyx_string*, %nyx_string** %lang.ptr
  %3278 = call i64 @write_evidence(%nyx_string* %3276, %nyx_string* %3277)
  %3279 = alloca i64
  store i64 %3278, i64* %3279
  %3280 = load i64, i64* %3279
  %3281 = icmp eq i64 %3280, 2
  br i1 %3281, label %then554, label %else555
then554:
  %3282 = load %nyx_string*, %nyx_string** %lang.ptr
  %3283 = getelementptr [59 x i8], [59 x i8]* @.str418, i32 0, i32 0
  %3284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3283, i64 58)
  %3285 = call %nyx_string* @toolchain_version()
  %3286 = call %nyx_string* @nyx_string_concat(%nyx_string* %3284, %nyx_string* %3285)
  %3287 = getelementptr [4 x i8], [4 x i8]* @.str419, i32 0, i32 0
  %3288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3287, i64 3)
  %3289 = call %nyx_string* @nyx_string_concat(%nyx_string* %3286, %nyx_string* %3288)
  %3290 = getelementptr [65 x i8], [65 x i8]* @.str420, i32 0, i32 0
  %3291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3290, i64 64)
  %3292 = call %nyx_string* @toolchain_version()
  %3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %3291, %nyx_string* %3292)
  %3294 = getelementptr [4 x i8], [4 x i8]* @.str421, i32 0, i32 0
  %3295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3294, i64 3)
  %3296 = call %nyx_string* @nyx_string_concat(%nyx_string* %3293, %nyx_string* %3295)
  %3297 = call %nyx_string* @sdd_msg(%nyx_string* %3282, %nyx_string* %3289, %nyx_string* %3296)
  %3298 = call i8* @nyx_string_to_cstr(%nyx_string* %3297)
  call void @nyx_print_string(i8* %3298)
  br label %merge556
else555:
  br label %merge556
merge556:
  %3299 = load i64, i64* %3279
  %3300 = icmp eq i64 %3299, 1
  br i1 %3300, label %then557, label %else558
then557:
  %3301 = load %nyx_string*, %nyx_string** %lang.ptr
  %3302 = getelementptr [34 x i8], [34 x i8]* @.str422, i32 0, i32 0
  %3303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3302, i64 33)
  %3304 = call %nyx_string* @toolchain_version()
  %3305 = call %nyx_string* @nyx_string_concat(%nyx_string* %3303, %nyx_string* %3304)
  %3306 = getelementptr [4 x i8], [4 x i8]* @.str423, i32 0, i32 0
  %3307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3306, i64 3)
  %3308 = call %nyx_string* @nyx_string_concat(%nyx_string* %3305, %nyx_string* %3307)
  %3309 = getelementptr [33 x i8], [33 x i8]* @.str424, i32 0, i32 0
  %3310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3309, i64 32)
  %3311 = call %nyx_string* @toolchain_version()
  %3312 = call %nyx_string* @nyx_string_concat(%nyx_string* %3310, %nyx_string* %3311)
  %3313 = getelementptr [4 x i8], [4 x i8]* @.str425, i32 0, i32 0
  %3314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3313, i64 3)
  %3315 = call %nyx_string* @nyx_string_concat(%nyx_string* %3312, %nyx_string* %3314)
  %3316 = call %nyx_string* @sdd_msg(%nyx_string* %3301, %nyx_string* %3308, %nyx_string* %3315)
  %3317 = call i8* @nyx_string_to_cstr(%nyx_string* %3316)
  call void @nyx_print_string(i8* %3317)
  br label %merge559
else558:
  br label %merge559
merge559:
  %3318 = load i64, i64* %3279
  %3319 = icmp eq i64 %3318, 0
  br i1 %3319, label %then560, label %else561
then560:
  %3320 = load %nyx_string*, %nyx_string** %lang.ptr
  %3321 = getelementptr [41 x i8], [41 x i8]* @.str426, i32 0, i32 0
  %3322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3321, i64 40)
  %3323 = call %nyx_string* @toolchain_version()
  %3324 = call %nyx_string* @nyx_string_concat(%nyx_string* %3322, %nyx_string* %3323)
  %3325 = getelementptr [4 x i8], [4 x i8]* @.str427, i32 0, i32 0
  %3326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3325, i64 3)
  %3327 = call %nyx_string* @nyx_string_concat(%nyx_string* %3324, %nyx_string* %3326)
  %3328 = getelementptr [39 x i8], [39 x i8]* @.str428, i32 0, i32 0
  %3329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3328, i64 38)
  %3330 = call %nyx_string* @toolchain_version()
  %3331 = call %nyx_string* @nyx_string_concat(%nyx_string* %3329, %nyx_string* %3330)
  %3332 = getelementptr [4 x i8], [4 x i8]* @.str429, i32 0, i32 0
  %3333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3332, i64 3)
  %3334 = call %nyx_string* @nyx_string_concat(%nyx_string* %3331, %nyx_string* %3333)
  %3335 = call %nyx_string* @sdd_msg(%nyx_string* %3320, %nyx_string* %3327, %nyx_string* %3334)
  %3336 = call i8* @nyx_string_to_cstr(%nyx_string* %3335)
  call void @nyx_print_string(i8* %3336)
  br label %merge562
else561:
  br label %merge562
merge562:
  %3337 = load %nyx_string*, %nyx_string** %dir.ptr
  %3338 = getelementptr [28 x i8], [28 x i8]* @.str430, i32 0, i32 0
  %3339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3338, i64 27)
  %3340 = call %nyx_string* @nyx_string_concat(%nyx_string* %3337, %nyx_string* %3339)
  %3341 = call i8* @nyx_string_to_cstr(%nyx_string* %3340)
  %3342 = call i1 @nyx_file_exists(i8* %3341)
  br i1 %3342, label %then563, label %else564
then563:
  %3343 = load %nyx_string*, %nyx_string** %dir.ptr
  %3344 = call i64 @write_constitution_test(%nyx_string* %3343)
  %3345 = alloca i64
  store i64 %3344, i64* %3345
  %3346 = load i64, i64* %3345
  %3347 = icmp eq i64 %3346, 1
  br i1 %3347, label %then566, label %else567
then566:
  %3348 = load %nyx_string*, %nyx_string** %lang.ptr
  %3349 = getelementptr [42 x i8], [42 x i8]* @.str431, i32 0, i32 0
  %3350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3349, i64 41)
  %3351 = getelementptr [41 x i8], [41 x i8]* @.str432, i32 0, i32 0
  %3352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3351, i64 40)
  %3353 = call %nyx_string* @sdd_msg(%nyx_string* %3348, %nyx_string* %3350, %nyx_string* %3352)
  %3354 = call i8* @nyx_string_to_cstr(%nyx_string* %3353)
  call void @nyx_print_string(i8* %3354)
  br label %merge568
else567:
  br label %merge568
merge568:
  %3355 = load i64, i64* %3345
  %3356 = icmp eq i64 %3355, 2
  br i1 %3356, label %then569, label %else570
then569:
  %3357 = load %nyx_string*, %nyx_string** %lang.ptr
  %3358 = getelementptr [67 x i8], [67 x i8]* @.str433, i32 0, i32 0
  %3359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3358, i64 66)
  %3360 = getelementptr [73 x i8], [73 x i8]* @.str434, i32 0, i32 0
  %3361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3360, i64 72)
  %3362 = call %nyx_string* @sdd_msg(%nyx_string* %3357, %nyx_string* %3359, %nyx_string* %3361)
  %3363 = call i8* @nyx_string_to_cstr(%nyx_string* %3362)
  call void @nyx_print_string(i8* %3363)
  br label %merge571
else570:
  br label %merge571
merge571:
  %3364 = load i64, i64* %3345
  %3365 = icmp eq i64 %3364, 0
  br i1 %3365, label %then572, label %else573
then572:
  %3366 = load %nyx_string*, %nyx_string** %lang.ptr
  %3367 = getelementptr [49 x i8], [49 x i8]* @.str435, i32 0, i32 0
  %3368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3367, i64 48)
  %3369 = getelementptr [47 x i8], [47 x i8]* @.str436, i32 0, i32 0
  %3370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3369, i64 46)
  %3371 = call %nyx_string* @sdd_msg(%nyx_string* %3366, %nyx_string* %3368, %nyx_string* %3370)
  %3372 = call i8* @nyx_string_to_cstr(%nyx_string* %3371)
  call void @nyx_print_string(i8* %3372)
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
  %3373 = call %nyx_string* @resolve_seed_home()
  %3374 = alloca %nyx_string*
  store %nyx_string* %3373, %nyx_string** %3374
  %3375 = load %nyx_string*, %nyx_string** %3374
  %3376 = getelementptr [12 x i8], [12 x i8]* @.str437, i32 0, i32 0
  %3377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3376, i64 11)
  %3378 = call %nyx_string* @nyx_string_concat(%nyx_string* %3375, %nyx_string* %3377)
  %3379 = load %nyx_string*, %nyx_string** %lang.ptr
  %3380 = call %nyx_string* @nyx_string_concat(%nyx_string* %3378, %nyx_string* %3379)
  %3381 = getelementptr [5 x i8], [5 x i8]* @.str438, i32 0, i32 0
  %3382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3381, i64 4)
  %3383 = call %nyx_string* @nyx_string_concat(%nyx_string* %3380, %nyx_string* %3382)
  %3384 = alloca %nyx_string*
  store %nyx_string* %3383, %nyx_string** %3384
  %3385 = alloca i1
  store i1 true, i1* %3385
  %3386 = load %nyx_string*, %nyx_string** %3374
  %3387 = getelementptr [1 x i8], [1 x i8]* @.str439, i32 0, i32 0
  %3388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3387, i64 0)
  %3389 = call i1 @nyx_string_equals(%nyx_string* %3386, %nyx_string* %3388)
  br i1 %3389, label %sc_or_end576, label %sc_or_rhs575
sc_or_rhs575:
  %3390 = load %nyx_string*, %nyx_string** %3384
  %3391 = getelementptr [17 x i8], [17 x i8]* @.str440, i32 0, i32 0
  %3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3391, i64 16)
  %3393 = call %nyx_string* @nyx_string_concat(%nyx_string* %3390, %nyx_string* %3392)
  %3394 = call i8* @nyx_string_to_cstr(%nyx_string* %3393)
  %3395 = call i1 @nyx_file_exists(i8* %3394)
  %3396 = icmp eq i1 %3395, 0
  store i1 %3396, i1* %3385
  br label %sc_or_end576
sc_or_end576:
  %3397 = load i1, i1* %3385
  br i1 %3397, label %then577, label %else578
then577:
  %3398 = load %nyx_string*, %nyx_string** %lang.ptr
  %3399 = getelementptr [49 x i8], [49 x i8]* @.str441, i32 0, i32 0
  %3400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3399, i64 48)
  %3401 = load %nyx_string*, %nyx_string** %lang.ptr
  %3402 = call %nyx_string* @nyx_string_concat(%nyx_string* %3400, %nyx_string* %3401)
  %3403 = getelementptr [59 x i8], [59 x i8]* @.str442, i32 0, i32 0
  %3404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %3403, i64 58)
  %3405 = call %nyx_string* @nyx_string_concat(%nyx_string* %3402, %nyx_string* %3404)
  %3406 = getelementptr [61 x i8], [61 x i8]* @.str443, i32 0, i32 0
  %3407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %3406, i64 60)
  %3408 = load %nyx_string*, %nyx_string** %lang.ptr
  %3409 = call %nyx_string* @nyx_string_concat(%nyx_string* %3407, %nyx_string* %3408)
  %3410 = getelementptr [44 x i8], [44 x i8]* @.str444, i32 0, i32 0
  %3411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %3410, i64 43)
  %3412 = call %nyx_string* @nyx_string_concat(%nyx_string* %3409, %nyx_string* %3411)
  %3413 = call %nyx_string* @sdd_msg(%nyx_string* %3398, %nyx_string* %3405, %nyx_string* %3412)
  %3414 = call i8* @nyx_string_to_cstr(%nyx_string* %3413)
  call void @nyx_print_string(i8* %3414)
  %3415 = load %nyx_string*, %nyx_string** %lang.ptr
  %3416 = getelementptr [104 x i8], [104 x i8]* @.str445, i32 0, i32 0
  %3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %3416, i64 103)
  %3418 = getelementptr [109 x i8], [109 x i8]* @.str446, i32 0, i32 0
  %3419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %3418, i64 108)
  %3420 = call %nyx_string* @sdd_msg(%nyx_string* %3415, %nyx_string* %3417, %nyx_string* %3419)
  %3421 = call i8* @nyx_string_to_cstr(%nyx_string* %3420)
  call void @nyx_print_string(i8* %3421)
  ret i1 0
else578:
  br label %merge579
merge579:
  %3422 = getelementptr [11 x i8], [11 x i8]* @.str447, i32 0, i32 0
  %3423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %3422, i64 10)
  %3424 = load %nyx_string*, %nyx_string** %dir.ptr
  %3425 = call %nyx_string* @nyx_string_concat(%nyx_string* %3423, %nyx_string* %3424)
  %3426 = getelementptr [13 x i8], [13 x i8]* @.str448, i32 0, i32 0
  %3427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %3426, i64 12)
  %3428 = call %nyx_string* @nyx_string_concat(%nyx_string* %3425, %nyx_string* %3427)
  %3429 = load %nyx_string*, %nyx_string** %dir.ptr
  %3430 = call %nyx_string* @nyx_string_concat(%nyx_string* %3428, %nyx_string* %3429)
  %3431 = getelementptr [13 x i8], [13 x i8]* @.str449, i32 0, i32 0
  %3432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %3431, i64 12)
  %3433 = call %nyx_string* @nyx_string_concat(%nyx_string* %3430, %nyx_string* %3432)
  %3434 = load %nyx_string*, %nyx_string** %dir.ptr
  %3435 = call %nyx_string* @nyx_string_concat(%nyx_string* %3433, %nyx_string* %3434)
  %3436 = getelementptr [18 x i8], [18 x i8]* @.str450, i32 0, i32 0
  %3437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %3436, i64 17)
  %3438 = call %nyx_string* @nyx_string_concat(%nyx_string* %3435, %nyx_string* %3437)
  %3439 = load %nyx_string*, %nyx_string** %dir.ptr
  %3440 = call %nyx_string* @nyx_string_concat(%nyx_string* %3438, %nyx_string* %3439)
  %3441 = getelementptr [10 x i8], [10 x i8]* @.str451, i32 0, i32 0
  %3442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %3441, i64 9)
  %3443 = call %nyx_string* @nyx_string_concat(%nyx_string* %3440, %nyx_string* %3442)
  %3444 = load %nyx_string*, %nyx_string** %dir.ptr
  %3445 = call %nyx_string* @nyx_string_concat(%nyx_string* %3443, %nyx_string* %3444)
  %3446 = getelementptr [8 x i8], [8 x i8]* @.str452, i32 0, i32 0
  %3447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %3446, i64 7)
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3445, %nyx_string* %3447)
  %3449 = call i8* @nyx_string_to_cstr(%nyx_string* %3448)
  %3450 = call %nyx_string* @nyx_exec(i8* %3449)
  %3451 = load %nyx_string*, %nyx_string** %lang.ptr
  %3452 = getelementptr [40 x i8], [40 x i8]* @.str453, i32 0, i32 0
  %3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %3452, i64 39)
  %3454 = getelementptr [38 x i8], [38 x i8]* @.str454, i32 0, i32 0
  %3455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %3454, i64 37)
  %3456 = call %nyx_string* @sdd_msg(%nyx_string* %3451, %nyx_string* %3453, %nyx_string* %3455)
  %3457 = call i8* @nyx_string_to_cstr(%nyx_string* %3456)
  call void @nyx_print_string(i8* %3457)
  %3458 = load %nyx_string*, %nyx_string** %3384
  %3459 = getelementptr [16 x i8], [16 x i8]* @.str455, i32 0, i32 0
  %3460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %3459, i64 15)
  %3461 = load %nyx_string*, %nyx_string** %dir.ptr
  %3462 = getelementptr [22 x i8], [22 x i8]* @.str456, i32 0, i32 0
  %3463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %3462, i64 21)
  %3464 = call %nyx_string* @nyx_string_concat(%nyx_string* %3461, %nyx_string* %3463)
  %3465 = load %nyx_string*, %nyx_string** %lang.ptr
  %3466 = call i1 @sdd_seed_template(%nyx_string* %3458, %nyx_string* %3460, %nyx_string* %3464, %nyx_string* %3465)
  %3467 = load %nyx_string*, %nyx_string** %3384
  %3468 = getelementptr [12 x i8], [12 x i8]* @.str457, i32 0, i32 0
  %3469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %3468, i64 11)
  %3470 = load %nyx_string*, %nyx_string** %dir.ptr
  %3471 = getelementptr [18 x i8], [18 x i8]* @.str458, i32 0, i32 0
  %3472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %3471, i64 17)
  %3473 = call %nyx_string* @nyx_string_concat(%nyx_string* %3470, %nyx_string* %3472)
  %3474 = load %nyx_string*, %nyx_string** %lang.ptr
  %3475 = call i1 @sdd_seed_template(%nyx_string* %3467, %nyx_string* %3469, %nyx_string* %3473, %nyx_string* %3474)
  %3476 = load %nyx_string*, %nyx_string** %3384
  %3477 = getelementptr [16 x i8], [16 x i8]* @.str459, i32 0, i32 0
  %3478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %3477, i64 15)
  %3479 = load %nyx_string*, %nyx_string** %dir.ptr
  %3480 = getelementptr [27 x i8], [27 x i8]* @.str460, i32 0, i32 0
  %3481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %3480, i64 26)
  %3482 = call %nyx_string* @nyx_string_concat(%nyx_string* %3479, %nyx_string* %3481)
  %3483 = load %nyx_string*, %nyx_string** %lang.ptr
  %3484 = call i1 @sdd_seed_template(%nyx_string* %3476, %nyx_string* %3478, %nyx_string* %3482, %nyx_string* %3483)
  %3485 = load %nyx_string*, %nyx_string** %3384
  %3486 = getelementptr [16 x i8], [16 x i8]* @.str461, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %3486, i64 15)
  %3488 = load %nyx_string*, %nyx_string** %dir.ptr
  %3489 = getelementptr [17 x i8], [17 x i8]* @.str462, i32 0, i32 0
  %3490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %3489, i64 16)
  %3491 = call %nyx_string* @nyx_string_concat(%nyx_string* %3488, %nyx_string* %3490)
  %3492 = load %nyx_string*, %nyx_string** %lang.ptr
  %3493 = call i1 @sdd_seed_template(%nyx_string* %3485, %nyx_string* %3487, %nyx_string* %3491, %nyx_string* %3492)
  %3494 = load %nyx_string*, %nyx_string** %3384
  %3495 = getelementptr [14 x i8], [14 x i8]* @.str463, i32 0, i32 0
  %3496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %3495, i64 13)
  %3497 = load %nyx_string*, %nyx_string** %dir.ptr
  %3498 = getelementptr [24 x i8], [24 x i8]* @.str464, i32 0, i32 0
  %3499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %3498, i64 23)
  %3500 = call %nyx_string* @nyx_string_concat(%nyx_string* %3497, %nyx_string* %3499)
  %3501 = load %nyx_string*, %nyx_string** %lang.ptr
  %3502 = call i1 @sdd_seed_template(%nyx_string* %3494, %nyx_string* %3496, %nyx_string* %3500, %nyx_string* %3501)
  %3503 = load %nyx_string*, %nyx_string** %dir.ptr
  %3504 = load %nyx_string*, %nyx_string** %lang.ptr
  %3505 = call i64 @write_evidence(%nyx_string* %3503, %nyx_string* %3504)
  %3506 = alloca i64
  store i64 %3505, i64* %3506
  %3507 = load %nyx_string*, %nyx_string** %dir.ptr
  %3508 = getelementptr [20 x i8], [20 x i8]* @.str465, i32 0, i32 0
  %3509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %3508, i64 19)
  %3510 = call %nyx_string* @nyx_string_concat(%nyx_string* %3507, %nyx_string* %3509)
  %3511 = call %nyx_string* @toolchain_version()
  %3512 = call %nyx_string* @nyx_string_concat(%nyx_string* %3510, %nyx_string* %3511)
  %3513 = getelementptr [4 x i8], [4 x i8]* @.str466, i32 0, i32 0
  %3514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %3513, i64 3)
  %3515 = call %nyx_string* @nyx_string_concat(%nyx_string* %3512, %nyx_string* %3514)
  %3516 = alloca %nyx_string*
  store %nyx_string* %3515, %nyx_string** %3516
  %3517 = load i64, i64* %3506
  %3518 = icmp eq i64 %3517, 1
  br i1 %3518, label %then580, label %else581
then580:
  %3519 = getelementptr [3 x i8], [3 x i8]* @.str467, i32 0, i32 0
  %3520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %3519, i64 2)
  %3521 = load %nyx_string*, %nyx_string** %3516
  %3522 = call %nyx_string* @nyx_string_concat(%nyx_string* %3520, %nyx_string* %3521)
  %3523 = load %nyx_string*, %nyx_string** %lang.ptr
  %3524 = getelementptr [13 x i8], [13 x i8]* @.str468, i32 0, i32 0
  %3525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %3524, i64 12)
  %3526 = getelementptr [12 x i8], [12 x i8]* @.str469, i32 0, i32 0
  %3527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %3526, i64 11)
  %3528 = call %nyx_string* @sdd_msg(%nyx_string* %3523, %nyx_string* %3525, %nyx_string* %3527)
  %3529 = call %nyx_string* @nyx_string_concat(%nyx_string* %3522, %nyx_string* %3528)
  %3530 = call i8* @nyx_string_to_cstr(%nyx_string* %3529)
  call void @nyx_print_string(i8* %3530)
  br label %merge582
else581:
  br label %merge582
merge582:
  %3531 = load i64, i64* %3506
  %3532 = icmp eq i64 %3531, 2
  br i1 %3532, label %then583, label %else584
then583:
  %3533 = load %nyx_string*, %nyx_string** %lang.ptr
  %3534 = getelementptr [41 x i8], [41 x i8]* @.str470, i32 0, i32 0
  %3535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %3534, i64 40)
  %3536 = load %nyx_string*, %nyx_string** %3516
  %3537 = call %nyx_string* @nyx_string_concat(%nyx_string* %3535, %nyx_string* %3536)
  %3538 = getelementptr [47 x i8], [47 x i8]* @.str471, i32 0, i32 0
  %3539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %3538, i64 46)
  %3540 = load %nyx_string*, %nyx_string** %3516
  %3541 = call %nyx_string* @nyx_string_concat(%nyx_string* %3539, %nyx_string* %3540)
  %3542 = call %nyx_string* @sdd_msg(%nyx_string* %3533, %nyx_string* %3537, %nyx_string* %3541)
  %3543 = call i8* @nyx_string_to_cstr(%nyx_string* %3542)
  call void @nyx_print_string(i8* %3543)
  br label %merge585
else584:
  br label %merge585
merge585:
  %3544 = load i64, i64* %3506
  %3545 = icmp eq i64 %3544, 0
  br i1 %3545, label %then586, label %else587
then586:
  %3546 = load %nyx_string*, %nyx_string** %lang.ptr
  %3547 = getelementptr [23 x i8], [23 x i8]* @.str472, i32 0, i32 0
  %3548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %3547, i64 22)
  %3549 = load %nyx_string*, %nyx_string** %3516
  %3550 = call %nyx_string* @nyx_string_concat(%nyx_string* %3548, %nyx_string* %3549)
  %3551 = getelementptr [21 x i8], [21 x i8]* @.str473, i32 0, i32 0
  %3552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %3551, i64 20)
  %3553 = load %nyx_string*, %nyx_string** %3516
  %3554 = call %nyx_string* @nyx_string_concat(%nyx_string* %3552, %nyx_string* %3553)
  %3555 = call %nyx_string* @sdd_msg(%nyx_string* %3546, %nyx_string* %3550, %nyx_string* %3554)
  %3556 = call i8* @nyx_string_to_cstr(%nyx_string* %3555)
  call void @nyx_print_string(i8* %3556)
  br label %merge588
else587:
  br label %merge588
merge588:
  %3557 = load %nyx_string*, %nyx_string** %dir.ptr
  %3558 = call i64 @write_constitution_test(%nyx_string* %3557)
  %3559 = alloca i64
  store i64 %3558, i64* %3559
  %3560 = load %nyx_string*, %nyx_string** %dir.ptr
  %3561 = getelementptr [28 x i8], [28 x i8]* @.str474, i32 0, i32 0
  %3562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %3561, i64 27)
  %3563 = call %nyx_string* @nyx_string_concat(%nyx_string* %3560, %nyx_string* %3562)
  %3564 = alloca %nyx_string*
  store %nyx_string* %3563, %nyx_string** %3564
  %3565 = load i64, i64* %3559
  %3566 = icmp eq i64 %3565, 1
  br i1 %3566, label %then589, label %else590
then589:
  %3567 = getelementptr [3 x i8], [3 x i8]* @.str475, i32 0, i32 0
  %3568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %3567, i64 2)
  %3569 = load %nyx_string*, %nyx_string** %3564
  %3570 = call %nyx_string* @nyx_string_concat(%nyx_string* %3568, %nyx_string* %3569)
  %3571 = load %nyx_string*, %nyx_string** %lang.ptr
  %3572 = getelementptr [13 x i8], [13 x i8]* @.str476, i32 0, i32 0
  %3573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %3572, i64 12)
  %3574 = getelementptr [12 x i8], [12 x i8]* @.str477, i32 0, i32 0
  %3575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %3574, i64 11)
  %3576 = call %nyx_string* @sdd_msg(%nyx_string* %3571, %nyx_string* %3573, %nyx_string* %3575)
  %3577 = call %nyx_string* @nyx_string_concat(%nyx_string* %3570, %nyx_string* %3576)
  %3578 = call i8* @nyx_string_to_cstr(%nyx_string* %3577)
  call void @nyx_print_string(i8* %3578)
  br label %merge591
else590:
  br label %merge591
merge591:
  %3579 = load i64, i64* %3559
  %3580 = icmp eq i64 %3579, 2
  br i1 %3580, label %then592, label %else593
then592:
  %3581 = load %nyx_string*, %nyx_string** %lang.ptr
  %3582 = getelementptr [41 x i8], [41 x i8]* @.str478, i32 0, i32 0
  %3583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %3582, i64 40)
  %3584 = load %nyx_string*, %nyx_string** %3564
  %3585 = call %nyx_string* @nyx_string_concat(%nyx_string* %3583, %nyx_string* %3584)
  %3586 = getelementptr [47 x i8], [47 x i8]* @.str479, i32 0, i32 0
  %3587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %3586, i64 46)
  %3588 = load %nyx_string*, %nyx_string** %3564
  %3589 = call %nyx_string* @nyx_string_concat(%nyx_string* %3587, %nyx_string* %3588)
  %3590 = call %nyx_string* @sdd_msg(%nyx_string* %3581, %nyx_string* %3585, %nyx_string* %3589)
  %3591 = call i8* @nyx_string_to_cstr(%nyx_string* %3590)
  call void @nyx_print_string(i8* %3591)
  br label %merge594
else593:
  br label %merge594
merge594:
  %3592 = load i64, i64* %3559
  %3593 = icmp eq i64 %3592, 0
  br i1 %3593, label %then595, label %else596
then595:
  %3594 = load %nyx_string*, %nyx_string** %lang.ptr
  %3595 = getelementptr [23 x i8], [23 x i8]* @.str480, i32 0, i32 0
  %3596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %3595, i64 22)
  %3597 = load %nyx_string*, %nyx_string** %3564
  %3598 = call %nyx_string* @nyx_string_concat(%nyx_string* %3596, %nyx_string* %3597)
  %3599 = getelementptr [21 x i8], [21 x i8]* @.str481, i32 0, i32 0
  %3600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %3599, i64 20)
  %3601 = load %nyx_string*, %nyx_string** %3564
  %3602 = call %nyx_string* @nyx_string_concat(%nyx_string* %3600, %nyx_string* %3601)
  %3603 = call %nyx_string* @sdd_msg(%nyx_string* %3594, %nyx_string* %3598, %nyx_string* %3602)
  %3604 = call i8* @nyx_string_to_cstr(%nyx_string* %3603)
  call void @nyx_print_string(i8* %3604)
  br label %merge597
else596:
  br label %merge597
merge597:
  %3605 = load %nyx_string*, %nyx_string** %dir.ptr
  %3606 = load %nyx_string*, %nyx_string** %lang.ptr
  %3607 = call i1 @add_agents_triggers(%nyx_string* %3605, %nyx_string* %3606)
  %3608 = getelementptr [1 x i8], [1 x i8]* @.str482, i32 0, i32 0
  %3609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %3608, i64 0)
  %3610 = call i8* @nyx_string_to_cstr(%nyx_string* %3609)
  call void @nyx_print_string(i8* %3610)
  %3611 = load %nyx_string*, %nyx_string** %lang.ptr
  %3612 = getelementptr [94 x i8], [94 x i8]* @.str483, i32 0, i32 0
  %3613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %3612, i64 93)
  %3614 = getelementptr [98 x i8], [98 x i8]* @.str484, i32 0, i32 0
  %3615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %3614, i64 97)
  %3616 = call %nyx_string* @sdd_msg(%nyx_string* %3611, %nyx_string* %3613, %nyx_string* %3615)
  %3617 = call i8* @nyx_string_to_cstr(%nyx_string* %3616)
  call void @nyx_print_string(i8* %3617)
  %3618 = load %nyx_string*, %nyx_string** %lang.ptr
  %3619 = getelementptr [89 x i8], [89 x i8]* @.str485, i32 0, i32 0
  %3620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %3619, i64 88)
  %3621 = getelementptr [90 x i8], [90 x i8]* @.str486, i32 0, i32 0
  %3622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %3621, i64 89)
  %3623 = call %nyx_string* @sdd_msg(%nyx_string* %3618, %nyx_string* %3620, %nyx_string* %3622)
  %3624 = call i8* @nyx_string_to_cstr(%nyx_string* %3623)
  call void @nyx_print_string(i8* %3624)
  %3625 = load %nyx_string*, %nyx_string** %lang.ptr
  %3626 = getelementptr [78 x i8], [78 x i8]* @.str487, i32 0, i32 0
  %3627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %3626, i64 77)
  %3628 = getelementptr [76 x i8], [76 x i8]* @.str488, i32 0, i32 0
  %3629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %3628, i64 75)
  %3630 = call %nyx_string* @sdd_msg(%nyx_string* %3625, %nyx_string* %3627, %nyx_string* %3629)
  %3631 = call i8* @nyx_string_to_cstr(%nyx_string* %3630)
  call void @nyx_print_string(i8* %3631)
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
  %3632 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %3633 = alloca %nyx_string*
  store %nyx_string* %3632, %nyx_string** %3633
  %3634 = load %nyx_string*, %nyx_string** %3633
  %3635 = getelementptr [1 x i8], [1 x i8]* @.str489, i32 0, i32 0
  %3636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %3635, i64 0)
  %3637 = call i1 @nyx_string_equals(%nyx_string* %3634, %nyx_string* %3636)
  %3638 = xor i1 %3637, true
  br i1 %3638, label %then598, label %else599
then598:
  %3639 = load %nyx_string*, %nyx_string** %3633
  %3640 = call i8* @nyx_string_to_cstr(%nyx_string* %3639)
  %3641 = call i1 @nyx_file_exists(i8* %3640)
  br i1 %3641, label %then601, label %else602
then601:
  %3642 = getelementptr [19 x i8], [19 x i8]* @.str490, i32 0, i32 0
  %3643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %3642, i64 18)
  %3644 = load %nyx_string*, %nyx_string** %3633
  %3645 = call %nyx_string* @nyx_string_concat(%nyx_string* %3643, %nyx_string* %3644)
  %3646 = getelementptr [17 x i8], [17 x i8]* @.str491, i32 0, i32 0
  %3647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %3646, i64 16)
  %3648 = call %nyx_string* @nyx_string_concat(%nyx_string* %3645, %nyx_string* %3647)
  %3649 = call i8* @nyx_string_to_cstr(%nyx_string* %3648)
  call void @nyx_print_string(i8* %3649)
  ret i1 0
else602:
  br label %merge603
merge603:
  %3650 = getelementptr [10 x i8], [10 x i8]* @.str492, i32 0, i32 0
  %3651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %3650, i64 9)
  %3652 = load %nyx_string*, %nyx_string** %3633
  %3653 = call %nyx_string* @nyx_string_concat(%nyx_string* %3651, %nyx_string* %3652)
  %3654 = getelementptr [5 x i8], [5 x i8]* @.str493, i32 0, i32 0
  %3655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %3654, i64 4)
  %3656 = call %nyx_string* @nyx_string_concat(%nyx_string* %3653, %nyx_string* %3655)
  %3657 = call i8* @nyx_string_to_cstr(%nyx_string* %3656)
  %3658 = call %nyx_string* @nyx_exec(i8* %3657)
  %3659 = getelementptr [19 x i8], [19 x i8]* @.str494, i32 0, i32 0
  %3660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %3659, i64 18)
  %3661 = load %nyx_string*, %nyx_string** %3633
  %3662 = call %nyx_string* @nyx_string_concat(%nyx_string* %3660, %nyx_string* %3661)
  %3663 = getelementptr [58 x i8], [58 x i8]* @.str495, i32 0, i32 0
  %3664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %3663, i64 57)
  %3665 = call %nyx_string* @nyx_string_concat(%nyx_string* %3662, %nyx_string* %3664)
  %3666 = alloca %nyx_string*
  store %nyx_string* %3665, %nyx_string** %3666
  %3667 = load %nyx_string*, %nyx_string** %3633
  %3668 = getelementptr [10 x i8], [10 x i8]* @.str496, i32 0, i32 0
  %3669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %3668, i64 9)
  %3670 = call %nyx_string* @nyx_string_concat(%nyx_string* %3667, %nyx_string* %3669)
  %3671 = load %nyx_string*, %nyx_string** %3666
  %3672 = call i8* @nyx_string_to_cstr(%nyx_string* %3670)
  %3673 = call i1 @nyx_write_file_safe(i8* %3672, %nyx_string* %3671)
  %3674 = load %nyx_string*, %nyx_string** %3633
  %3675 = getelementptr [13 x i8], [13 x i8]* @.str497, i32 0, i32 0
  %3676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %3675, i64 12)
  %3677 = call %nyx_string* @nyx_string_concat(%nyx_string* %3674, %nyx_string* %3676)
  %3678 = getelementptr [35 x i8], [35 x i8]* @.str498, i32 0, i32 0
  %3679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %3678, i64 34)
  %3680 = load %nyx_string*, %nyx_string** %3633
  %3681 = call %nyx_string* @nyx_string_concat(%nyx_string* %3679, %nyx_string* %3680)
  %3682 = getelementptr [7 x i8], [7 x i8]* @.str499, i32 0, i32 0
  %3683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %3682, i64 6)
  %3684 = call %nyx_string* @nyx_string_concat(%nyx_string* %3681, %nyx_string* %3683)
  %3685 = call i8* @nyx_string_to_cstr(%nyx_string* %3677)
  %3686 = call i1 @nyx_write_file_safe(i8* %3685, %nyx_string* %3684)
  %3687 = load %nyx_string*, %nyx_string** %3633
  %3688 = load %nyx_string*, %nyx_string** %lang.ptr
  %3689 = load %nyx_string*, %nyx_string** %agents.ptr
  %3690 = call i64 @scaffold_project_files(%nyx_string* %3687, %nyx_string* %3688, %nyx_string* %3689)
  %3691 = load %nyx_string*, %nyx_string** %3633
  %3692 = load %nyx_string*, %nyx_string** %3633
  %3693 = call i64 @seed_gitignore(%nyx_string* %3691, %nyx_string* %3692)
  %3694 = getelementptr [22 x i8], [22 x i8]* @.str500, i32 0, i32 0
  %3695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %3694, i64 21)
  %3696 = load %nyx_string*, %nyx_string** %3633
  %3697 = call %nyx_string* @nyx_string_concat(%nyx_string* %3695, %nyx_string* %3696)
  %3698 = call i8* @nyx_string_to_cstr(%nyx_string* %3697)
  call void @nyx_print_string(i8* %3698)
  %3699 = getelementptr [12 x i8], [12 x i8]* @.str501, i32 0, i32 0
  %3700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %3699, i64 11)
  %3701 = load %nyx_string*, %nyx_string** %3633
  %3702 = call %nyx_string* @nyx_string_concat(%nyx_string* %3700, %nyx_string* %3701)
  %3703 = getelementptr [2 x i8], [2 x i8]* @.str502, i32 0, i32 0
  %3704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %3703, i64 1)
  %3705 = call %nyx_string* @nyx_string_concat(%nyx_string* %3702, %nyx_string* %3704)
  %3706 = call i8* @nyx_string_to_cstr(%nyx_string* %3705)
  call void @nyx_print_string(i8* %3706)
  %3707 = getelementptr [15 x i8], [15 x i8]* @.str503, i32 0, i32 0
  %3708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %3707, i64 14)
  %3709 = load %nyx_string*, %nyx_string** %3633
  %3710 = call %nyx_string* @nyx_string_concat(%nyx_string* %3708, %nyx_string* %3709)
  %3711 = getelementptr [12 x i8], [12 x i8]* @.str504, i32 0, i32 0
  %3712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %3711, i64 11)
  %3713 = call %nyx_string* @nyx_string_concat(%nyx_string* %3710, %nyx_string* %3712)
  %3714 = call i8* @nyx_string_to_cstr(%nyx_string* %3713)
  call void @nyx_print_string(i8* %3714)
  ret i1 1
else599:
  br label %merge600
merge600:
  %3715 = getelementptr [9 x i8], [9 x i8]* @.str505, i32 0, i32 0
  %3716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %3715, i64 8)
  %3717 = call i8* @nyx_string_to_cstr(%nyx_string* %3716)
  %3718 = call i1 @nyx_file_exists(i8* %3717)
  br i1 %3718, label %then604, label %else605
then604:
  %3719 = getelementptr [31 x i8], [31 x i8]* @.str506, i32 0, i32 0
  %3720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %3719, i64 30)
  %3721 = call i8* @nyx_string_to_cstr(%nyx_string* %3720)
  call void @nyx_print_string(i8* %3721)
  ret i1 0
else605:
  br label %merge606
merge606:
  %3722 = getelementptr [4 x i8], [4 x i8]* @.str507, i32 0, i32 0
  %3723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %3722, i64 3)
  %3724 = call i8* @nyx_string_to_cstr(%nyx_string* %3723)
  %3725 = call %nyx_string* @nyx_getenv(i8* %3724)
  %3726 = alloca %nyx_string*
  store %nyx_string* %3725, %nyx_string** %3726
  %3727 = getelementptr [6 x i8], [6 x i8]* @.str508, i32 0, i32 0
  %3728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %3727, i64 5)
  store %nyx_string* %3728, %nyx_string** %3633
  %3729 = sub i64 0, 1
  %3730 = alloca i64
  store i64 %3729, i64* %3730
  %3731 = alloca i64
  store i64 0, i64* %3731
  %3732 = call i8* @llvm.stacksave()
  br label %while_cond607
while_cond607:
  %3733 = load i64, i64* %3731
  %3734 = load %nyx_string*, %nyx_string** %3726
  %3735 = call i64 @nyx_string_byte_length(%nyx_string* %3734)
  %3736 = icmp slt i64 %3733, %3735
  br i1 %3736, label %while_body608, label %while_end609
while_body608:
  call void @llvm.stackrestore(i8* %3732)
  %3737 = load %nyx_string*, %nyx_string** %3726
  %3738 = load i64, i64* %3731
  %3739 = call i8 @nyx_string_char_at(%nyx_string* %3737, i64 %3738)
  %3740 = zext i8 %3739 to i64
  %3741 = icmp eq i64 %3740, 47
  br i1 %3741, label %then610, label %else611
then610:
  %3742 = load i64, i64* %3731
  store i64 %3742, i64* %3730
  br label %merge612
else611:
  br label %merge612
merge612:
  %3743 = load i64, i64* %3731
  %3744 = add i64 %3743, 1
  store i64 %3744, i64* %3731
  br label %while_cond607
while_end609:
  %3745 = load i64, i64* %3730
  %3746 = icmp sge i64 %3745, 0
  br i1 %3746, label %then613, label %else614
then613:
  %3747 = load %nyx_string*, %nyx_string** %3726
  %3748 = load i64, i64* %3730
  %3749 = add i64 %3748, 1
  %3750 = load %nyx_string*, %nyx_string** %3726
  %3751 = call i64 @nyx_string_byte_length(%nyx_string* %3750)
  %3752 = call %nyx_string* @nyx_string_substring(%nyx_string* %3747, i64 %3749, i64 %3751)
  store %nyx_string* %3752, %nyx_string** %3633
  br label %merge615
else614:
  br label %merge615
merge615:
  %3753 = getelementptr [19 x i8], [19 x i8]* @.str509, i32 0, i32 0
  %3754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %3753, i64 18)
  %3755 = load %nyx_string*, %nyx_string** %3633
  %3756 = call %nyx_string* @nyx_string_concat(%nyx_string* %3754, %nyx_string* %3755)
  %3757 = getelementptr [58 x i8], [58 x i8]* @.str510, i32 0, i32 0
  %3758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %3757, i64 57)
  %3759 = call %nyx_string* @nyx_string_concat(%nyx_string* %3756, %nyx_string* %3758)
  %3760 = alloca %nyx_string*
  store %nyx_string* %3759, %nyx_string** %3760
  %3761 = getelementptr [9 x i8], [9 x i8]* @.str511, i32 0, i32 0
  %3762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %3761, i64 8)
  %3763 = load %nyx_string*, %nyx_string** %3760
  %3764 = call i8* @nyx_string_to_cstr(%nyx_string* %3762)
  %3765 = call i1 @nyx_write_file_safe(i8* %3764, %nyx_string* %3763)
  %3766 = getelementptr [13 x i8], [13 x i8]* @.str512, i32 0, i32 0
  %3767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %3766, i64 12)
  %3768 = call i8* @nyx_string_to_cstr(%nyx_string* %3767)
  %3769 = call %nyx_string* @nyx_exec(i8* %3768)
  %3770 = getelementptr [12 x i8], [12 x i8]* @.str513, i32 0, i32 0
  %3771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %3770, i64 11)
  %3772 = call i8* @nyx_string_to_cstr(%nyx_string* %3771)
  %3773 = call i1 @nyx_file_exists(i8* %3772)
  %3774 = icmp eq i1 %3773, 0
  br i1 %3774, label %then616, label %else617
then616:
  %3775 = getelementptr [12 x i8], [12 x i8]* @.str514, i32 0, i32 0
  %3776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %3775, i64 11)
  %3777 = getelementptr [35 x i8], [35 x i8]* @.str515, i32 0, i32 0
  %3778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %3777, i64 34)
  %3779 = load %nyx_string*, %nyx_string** %3633
  %3780 = call %nyx_string* @nyx_string_concat(%nyx_string* %3778, %nyx_string* %3779)
  %3781 = getelementptr [7 x i8], [7 x i8]* @.str516, i32 0, i32 0
  %3782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %3781, i64 6)
  %3783 = call %nyx_string* @nyx_string_concat(%nyx_string* %3780, %nyx_string* %3782)
  %3784 = call i8* @nyx_string_to_cstr(%nyx_string* %3776)
  %3785 = call i1 @nyx_write_file_safe(i8* %3784, %nyx_string* %3783)
  br label %merge618
else617:
  br label %merge618
merge618:
  %3786 = getelementptr [2 x i8], [2 x i8]* @.str517, i32 0, i32 0
  %3787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %3786, i64 1)
  %3788 = load %nyx_string*, %nyx_string** %lang.ptr
  %3789 = load %nyx_string*, %nyx_string** %agents.ptr
  %3790 = call i64 @scaffold_project_files(%nyx_string* %3787, %nyx_string* %3788, %nyx_string* %3789)
  %3791 = getelementptr [2 x i8], [2 x i8]* @.str518, i32 0, i32 0
  %3792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %3791, i64 1)
  %3793 = load %nyx_string*, %nyx_string** %3633
  %3794 = call i64 @seed_gitignore(%nyx_string* %3792, %nyx_string* %3793)
  %3795 = getelementptr [22 x i8], [22 x i8]* @.str519, i32 0, i32 0
  %3796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %3795, i64 21)
  %3797 = load %nyx_string*, %nyx_string** %3633
  %3798 = call %nyx_string* @nyx_string_concat(%nyx_string* %3796, %nyx_string* %3797)
  %3799 = call i8* @nyx_string_to_cstr(%nyx_string* %3798)
  call void @nyx_print_string(i8* %3799)
  %3800 = getelementptr [33 x i8], [33 x i8]* @.str520, i32 0, i32 0
  %3801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %3800, i64 32)
  %3802 = call i8* @nyx_string_to_cstr(%nyx_string* %3801)
  call void @nyx_print_string(i8* %3802)
  %3803 = getelementptr [21 x i8], [21 x i8]* @.str521, i32 0, i32 0
  %3804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %3803, i64 20)
  %3805 = call i8* @nyx_string_to_cstr(%nyx_string* %3804)
  call void @nyx_print_string(i8* %3805)
  %3806 = getelementptr [19 x i8], [19 x i8]* @.str522, i32 0, i32 0
  %3807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %3806, i64 18)
  %3808 = call i8* @nyx_string_to_cstr(%nyx_string* %3807)
  call void @nyx_print_string(i8* %3808)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %3809 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3810 = load { i64, i8* }*, { i64, i8* }** %3809
  %3811 = call i64 @nyx_array_length({ i64, i8* }* %3810)
  %3812 = icmp eq i64 %3811, 0
  br i1 %3812, label %then619, label %else620
then619:
  ret i1 1
else620:
  br label %merge621
merge621:
  %3813 = alloca i64
  store i64 0, i64* %3813
  %3814 = getelementptr [10 x i8], [10 x i8]* @.str523, i32 0, i32 0
  %3815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %3814, i64 9)
  %3816 = alloca %nyx_string*
  store %nyx_string* %3815, %nyx_string** %3816
  %3817 = getelementptr [14 x i8], [14 x i8]* @.str524, i32 0, i32 0
  %3818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %3817, i64 13)
  %3819 = alloca %nyx_string*
  store %nyx_string* %3818, %nyx_string** %3819
  %3820 = getelementptr [5 x i8], [5 x i8]* @.str525, i32 0, i32 0
  %3821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %3820, i64 4)
  %3822 = alloca %nyx_string*
  store %nyx_string* %3821, %nyx_string** %3822
  %3823 = getelementptr [4 x i8], [4 x i8]* @.str526, i32 0, i32 0
  %3824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %3823, i64 3)
  %3825 = alloca %nyx_string*
  store %nyx_string* %3824, %nyx_string** %3825
  %3826 = getelementptr [32 x i8], [32 x i8]* @.str527, i32 0, i32 0
  %3827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %3826, i64 31)
  %3828 = alloca %nyx_string*
  store %nyx_string* %3827, %nyx_string** %3828
  %3829 = getelementptr [43 x i8], [43 x i8]* @.str528, i32 0, i32 0
  %3830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %3829, i64 42)
  %3831 = alloca %nyx_string*
  store %nyx_string* %3830, %nyx_string** %3831
  %3832 = getelementptr [2 x i8], [2 x i8]* @.str529, i32 0, i32 0
  %3833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %3832, i64 1)
  %3834 = alloca %nyx_string*
  store %nyx_string* %3833, %nyx_string** %3834
  %3835 = getelementptr [13 x i8], [13 x i8]* @.str530, i32 0, i32 0
  %3836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %3835, i64 12)
  %3837 = alloca %nyx_string*
  store %nyx_string* %3836, %nyx_string** %3837
  %3838 = getelementptr [26 x i8], [26 x i8]* @.str531, i32 0, i32 0
  %3839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %3838, i64 25)
  %3840 = alloca %nyx_string*
  store %nyx_string* %3839, %nyx_string** %3840
  %3841 = getelementptr [7 x i8], [7 x i8]* @.str532, i32 0, i32 0
  %3842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %3841, i64 6)
  %3843 = alloca %nyx_string*
  store %nyx_string* %3842, %nyx_string** %3843
  %3844 = getelementptr [12 x i8], [12 x i8]* @.str533, i32 0, i32 0
  %3845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %3844, i64 11)
  %3846 = alloca %nyx_string*
  store %nyx_string* %3845, %nyx_string** %3846
  %3847 = call i8* @llvm.stacksave()
  br label %while_cond622
while_cond622:
  %3848 = load i64, i64* %3813
  %3849 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3850 = load { i64, i8* }*, { i64, i8* }** %3849
  %3851 = call i64 @nyx_array_length({ i64, i8* }* %3850)
  %3852 = icmp slt i64 %3848, %3851
  br i1 %3852, label %while_body623, label %while_end624
while_body623:
  call void @llvm.stackrestore(i8* %3847)
  %3853 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3854 = load { i64, i8* }*, { i64, i8* }** %3853
  %3855 = load i64, i64* %3813
  %3856 = call i64 @nyx_array_get({ i64, i8* }* %3854, i64 %3855)
  %3857 = inttoptr i64 %3856 to %nyx_string*
  %3858 = alloca %nyx_string*
  store %nyx_string* %3857, %nyx_string** %3858
  %3859 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 8
  %3860 = load { i64, i8* }*, { i64, i8* }** %3859
  %3861 = load i64, i64* %3813
  %3862 = call i64 @nyx_array_get({ i64, i8* }* %3860, i64 %3861)
  %3863 = inttoptr i64 %3862 to %nyx_string*
  %3864 = alloca %nyx_string*
  store %nyx_string* %3863, %nyx_string** %3864
  %3865 = load %nyx_string*, %nyx_string** %3816
  %3866 = load %nyx_string*, %nyx_string** %3858
  %3867 = call %nyx_string* @nyx_string_concat(%nyx_string* %3865, %nyx_string* %3866)
  %3868 = alloca %nyx_string*
  store %nyx_string* %3867, %nyx_string** %3868
  %3869 = load %nyx_string*, %nyx_string** %3868
  %3870 = call i8* @nyx_string_to_cstr(%nyx_string* %3869)
  %3871 = call i1 @nyx_file_exists(i8* %3870)
  %3872 = icmp eq i1 %3871, 0
  br i1 %3872, label %then625, label %else626
then625:
  %3873 = load %nyx_string*, %nyx_string** %3819
  %3874 = load %nyx_string*, %nyx_string** %3858
  %3875 = call %nyx_string* @nyx_string_concat(%nyx_string* %3873, %nyx_string* %3874)
  %3876 = call i8* @nyx_string_to_cstr(%nyx_string* %3875)
  call void @nyx_print_string(i8* %3876)
  %3877 = load %nyx_string*, %nyx_string** %3864
  %3878 = alloca %nyx_string*
  store %nyx_string* %3877, %nyx_string** %3878
  %3879 = alloca i1
  store i1 false, i1* %3879
  %3880 = load %nyx_string*, %nyx_string** %3878
  %3881 = load %nyx_string*, %nyx_string** %3822
  %3882 = call i1 @nyx_string_starts_with(%nyx_string* %3880, %nyx_string* %3881)
  %3883 = icmp eq i1 %3882, 0
  br i1 %3883, label %sc_and_rhs628, label %sc_and_end629
sc_and_rhs628:
  %3884 = load %nyx_string*, %nyx_string** %3878
  %3885 = load %nyx_string*, %nyx_string** %3825
  %3886 = call i1 @nyx_string_starts_with(%nyx_string* %3884, %nyx_string* %3885)
  %3887 = icmp eq i1 %3886, 0
  store i1 %3887, i1* %3879
  br label %sc_and_end629
sc_and_end629:
  %3888 = load i1, i1* %3879
  br i1 %3888, label %then630, label %else631
then630:
  %3889 = load %nyx_string*, %nyx_string** %3828
  %3890 = load %nyx_string*, %nyx_string** %3858
  %3891 = call %nyx_string* @nyx_string_concat(%nyx_string* %3889, %nyx_string* %3890)
  store %nyx_string* %3891, %nyx_string** %3878
  br label %merge632
else631:
  br label %merge632
merge632:
  %3892 = load %nyx_string*, %nyx_string** %3831
  %3893 = load %nyx_string*, %nyx_string** %3878
  %3894 = call %nyx_string* @nyx_string_concat(%nyx_string* %3892, %nyx_string* %3893)
  %3895 = load %nyx_string*, %nyx_string** %3834
  %3896 = call %nyx_string* @nyx_string_concat(%nyx_string* %3894, %nyx_string* %3895)
  %3897 = load %nyx_string*, %nyx_string** %3868
  %3898 = call %nyx_string* @nyx_string_concat(%nyx_string* %3896, %nyx_string* %3897)
  %3899 = load %nyx_string*, %nyx_string** %3837
  %3900 = call %nyx_string* @nyx_string_concat(%nyx_string* %3898, %nyx_string* %3899)
  %3901 = alloca %nyx_string*
  store %nyx_string* %3900, %nyx_string** %3901
  %3902 = load %nyx_string*, %nyx_string** %3901
  %3903 = call i8* @nyx_string_to_cstr(%nyx_string* %3902)
  %3904 = call i64 @nyx_exec_code(i8* %3903)
  %3905 = alloca i64
  store i64 %3904, i64* %3905
  %3906 = load i64, i64* %3905
  %3907 = icmp ne i64 %3906, 0
  br i1 %3907, label %then633, label %else634
then633:
  %3908 = load %nyx_string*, %nyx_string** %3840
  %3909 = load %nyx_string*, %nyx_string** %3858
  %3910 = call %nyx_string* @nyx_string_concat(%nyx_string* %3908, %nyx_string* %3909)
  %3911 = load %nyx_string*, %nyx_string** %3843
  %3912 = call %nyx_string* @nyx_string_concat(%nyx_string* %3910, %nyx_string* %3911)
  %3913 = load %nyx_string*, %nyx_string** %3878
  %3914 = call %nyx_string* @nyx_string_concat(%nyx_string* %3912, %nyx_string* %3913)
  %3915 = call i8* @nyx_string_to_cstr(%nyx_string* %3914)
  call void @nyx_print_string(i8* %3915)
  ret i1 0
else634:
  br label %merge635
merge635:
  %3916 = load %nyx_string*, %nyx_string** %3846
  %3917 = load %nyx_string*, %nyx_string** %3858
  %3918 = call %nyx_string* @nyx_string_concat(%nyx_string* %3916, %nyx_string* %3917)
  %3919 = call i8* @nyx_string_to_cstr(%nyx_string* %3918)
  call void @nyx_print_string(i8* %3919)
  br label %merge627
else626:
  br label %merge627
merge627:
  %3920 = load i64, i64* %3813
  %3921 = add i64 %3920, 1
  store i64 %3921, i64* %3813
  br label %while_cond622
while_end624:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %3922 = getelementptr [128 x i8], [128 x i8]* @.str534, i32 0, i32 0
  %3923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %3922, i64 127)
  %3924 = alloca %nyx_string*
  store %nyx_string* %3923, %nyx_string** %3924
  %3925 = getelementptr [37 x i8], [37 x i8]* @.str535, i32 0, i32 0
  %3926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %3925, i64 36)
  %3927 = alloca %nyx_string*
  store %nyx_string* %3926, %nyx_string** %3927
  %3928 = getelementptr [14 x i8], [14 x i8]* @.str536, i32 0, i32 0
  %3929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %3928, i64 13)
  %3930 = load %nyx_string*, %nyx_string** %3924
  %3931 = call %nyx_string* @nyx_string_concat(%nyx_string* %3929, %nyx_string* %3930)
  %3932 = getelementptr [16 x i8], [16 x i8]* @.str537, i32 0, i32 0
  %3933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %3932, i64 15)
  %3934 = call %nyx_string* @nyx_string_concat(%nyx_string* %3931, %nyx_string* %3933)
  %3935 = getelementptr [33 x i8], [33 x i8]* @.str538, i32 0, i32 0
  %3936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %3935, i64 32)
  %3937 = call %nyx_string* @nyx_string_concat(%nyx_string* %3934, %nyx_string* %3936)
  %3938 = getelementptr [99 x i8], [99 x i8]* @.str539, i32 0, i32 0
  %3939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %3938, i64 98)
  %3940 = call %nyx_string* @nyx_string_concat(%nyx_string* %3937, %nyx_string* %3939)
  %3941 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3942 = call %nyx_string* @nyx_string_concat(%nyx_string* %3940, %nyx_string* %3941)
  %3943 = getelementptr [74 x i8], [74 x i8]* @.str540, i32 0, i32 0
  %3944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %3943, i64 73)
  %3945 = call %nyx_string* @nyx_string_concat(%nyx_string* %3942, %nyx_string* %3944)
  %3946 = getelementptr [6 x i8], [6 x i8]* @.str541, i32 0, i32 0
  %3947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %3946, i64 5)
  %3948 = call %nyx_string* @nyx_string_concat(%nyx_string* %3945, %nyx_string* %3947)
  %3949 = getelementptr [91 x i8], [91 x i8]* @.str542, i32 0, i32 0
  %3950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %3949, i64 90)
  %3951 = call %nyx_string* @nyx_string_concat(%nyx_string* %3948, %nyx_string* %3950)
  %3952 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3953 = call %nyx_string* @nyx_string_concat(%nyx_string* %3951, %nyx_string* %3952)
  %3954 = getelementptr [76 x i8], [76 x i8]* @.str543, i32 0, i32 0
  %3955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %3954, i64 75)
  %3956 = call %nyx_string* @nyx_string_concat(%nyx_string* %3953, %nyx_string* %3955)
  %3957 = getelementptr [5 x i8], [5 x i8]* @.str544, i32 0, i32 0
  %3958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %3957, i64 4)
  %3959 = call %nyx_string* @nyx_string_concat(%nyx_string* %3956, %nyx_string* %3958)
  %3960 = getelementptr [16 x i8], [16 x i8]* @.str545, i32 0, i32 0
  %3961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %3960, i64 15)
  %3962 = call %nyx_string* @nyx_string_concat(%nyx_string* %3959, %nyx_string* %3961)
  %3963 = load %nyx_string*, %nyx_string** %3927
  %3964 = call %nyx_string* @nyx_string_concat(%nyx_string* %3962, %nyx_string* %3963)
  %3965 = getelementptr [16 x i8], [16 x i8]* @.str546, i32 0, i32 0
  %3966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %3965, i64 15)
  %3967 = call %nyx_string* @nyx_string_concat(%nyx_string* %3964, %nyx_string* %3966)
  %3968 = getelementptr [33 x i8], [33 x i8]* @.str547, i32 0, i32 0
  %3969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %3968, i64 32)
  %3970 = call %nyx_string* @nyx_string_concat(%nyx_string* %3967, %nyx_string* %3969)
  %3971 = getelementptr [176 x i8], [176 x i8]* @.str548, i32 0, i32 0
  %3972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %3971, i64 175)
  %3973 = call %nyx_string* @nyx_string_concat(%nyx_string* %3970, %nyx_string* %3972)
  %3974 = getelementptr [6 x i8], [6 x i8]* @.str549, i32 0, i32 0
  %3975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %3974, i64 5)
  %3976 = call %nyx_string* @nyx_string_concat(%nyx_string* %3973, %nyx_string* %3975)
  %3977 = getelementptr [184 x i8], [184 x i8]* @.str550, i32 0, i32 0
  %3978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %3977, i64 183)
  %3979 = call %nyx_string* @nyx_string_concat(%nyx_string* %3976, %nyx_string* %3978)
  %3980 = getelementptr [5 x i8], [5 x i8]* @.str551, i32 0, i32 0
  %3981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %3980, i64 4)
  %3982 = call %nyx_string* @nyx_string_concat(%nyx_string* %3979, %nyx_string* %3981)
  %3983 = getelementptr [6 x i8], [6 x i8]* @.str552, i32 0, i32 0
  %3984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %3983, i64 5)
  %3985 = call %nyx_string* @nyx_string_concat(%nyx_string* %3982, %nyx_string* %3984)
  %3986 = getelementptr [33 x i8], [33 x i8]* @.str553, i32 0, i32 0
  %3987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %3986, i64 32)
  %3988 = call %nyx_string* @nyx_string_concat(%nyx_string* %3985, %nyx_string* %3987)
  %3989 = getelementptr [127 x i8], [127 x i8]* @.str554, i32 0, i32 0
  %3990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %3989, i64 126)
  %3991 = call %nyx_string* @nyx_string_concat(%nyx_string* %3988, %nyx_string* %3990)
  %3992 = getelementptr [6 x i8], [6 x i8]* @.str555, i32 0, i32 0
  %3993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %3992, i64 5)
  %3994 = call %nyx_string* @nyx_string_concat(%nyx_string* %3991, %nyx_string* %3993)
  %3995 = getelementptr [119 x i8], [119 x i8]* @.str556, i32 0, i32 0
  %3996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %3995, i64 118)
  %3997 = call %nyx_string* @nyx_string_concat(%nyx_string* %3994, %nyx_string* %3996)
  %3998 = getelementptr [5 x i8], [5 x i8]* @.str557, i32 0, i32 0
  %3999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %3998, i64 4)
  %4000 = call %nyx_string* @nyx_string_concat(%nyx_string* %3997, %nyx_string* %3999)
  %4001 = getelementptr [4 x i8], [4 x i8]* @.str558, i32 0, i32 0
  %4002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %4001, i64 3)
  %4003 = call %nyx_string* @nyx_string_concat(%nyx_string* %4000, %nyx_string* %4002)
  ret %nyx_string* %4003
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %4004 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4005 = load %nyx_string*, %nyx_string** %4004
  %4006 = alloca %nyx_string*
  store %nyx_string* %4005, %nyx_string** %4006
  %4007 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %4008 = getelementptr [1 x i8], [1 x i8]* @.str559, i32 0, i32 0
  %4009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %4008, i64 0)
  %4010 = call i1 @nyx_string_equals(%nyx_string* %4007, %nyx_string* %4009)
  %4011 = xor i1 %4010, true
  br i1 %4011, label %then636, label %else637
then636:
  %4012 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %4012, %nyx_string** %4006
  br label %merge638
else637:
  br label %merge638
merge638:
  %4013 = getelementptr [1 x i8], [1 x i8]* @.str560, i32 0, i32 0
  %4014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %4013, i64 0)
  %4015 = alloca %nyx_string*
  store %nyx_string* %4014, %nyx_string** %4015
  %4016 = load %nyx_string*, %nyx_string** %4006
  %4017 = getelementptr [1 x i8], [1 x i8]* @.str561, i32 0, i32 0
  %4018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %4017, i64 0)
  %4019 = call i1 @nyx_string_equals(%nyx_string* %4016, %nyx_string* %4018)
  %4020 = xor i1 %4019, true
  br i1 %4020, label %then639, label %else640
then639:
  %4021 = getelementptr [3 x i8], [3 x i8]* @.str562, i32 0, i32 0
  %4022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %4021, i64 2)
  %4023 = load %nyx_string*, %nyx_string** %4006
  %4024 = call %nyx_string* @nyx_string_concat(%nyx_string* %4022, %nyx_string* %4023)
  %4025 = getelementptr [2 x i8], [2 x i8]* @.str563, i32 0, i32 0
  %4026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %4025, i64 1)
  %4027 = call %nyx_string* @nyx_string_concat(%nyx_string* %4024, %nyx_string* %4026)
  store %nyx_string* %4027, %nyx_string** %4015
  br label %merge641
else640:
  br label %merge641
merge641:
  %4028 = getelementptr [13 x i8], [13 x i8]* @.str564, i32 0, i32 0
  %4029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %4028, i64 12)
  %4030 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4031 = load %nyx_string*, %nyx_string** %4030
  %4032 = call %nyx_string* @nyx_string_concat(%nyx_string* %4029, %nyx_string* %4031)
  %4033 = getelementptr [3 x i8], [3 x i8]* @.str565, i32 0, i32 0
  %4034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %4033, i64 2)
  %4035 = call %nyx_string* @nyx_string_concat(%nyx_string* %4032, %nyx_string* %4034)
  %4036 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4037 = load %nyx_string*, %nyx_string** %4036
  %4038 = call %nyx_string* @nyx_string_concat(%nyx_string* %4035, %nyx_string* %4037)
  %4039 = load %nyx_string*, %nyx_string** %4015
  %4040 = call %nyx_string* @nyx_string_concat(%nyx_string* %4038, %nyx_string* %4039)
  %4041 = call i8* @nyx_string_to_cstr(%nyx_string* %4040)
  call void @nyx_print_string(i8* %4041)
  %4042 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %4043 = call i1 @resolve_deps(%ProjectConfig %4042)
  %4044 = alloca i1
  store i1 %4043, i1* %4044
  %4045 = load i1, i1* %4044
  %4046 = icmp eq i1 %4045, 0
  br i1 %4046, label %then642, label %else643
then642:
  ret i1 0
else643:
  br label %merge644
merge644:
  %4047 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4048 = load %nyx_string*, %nyx_string** %4047
  %4049 = call i8* @nyx_string_to_cstr(%nyx_string* %4048)
  %4050 = call i1 @nyx_file_exists(i8* %4049)
  %4051 = xor i1 %4050, true
  br i1 %4051, label %then645, label %else646
then645:
  %4052 = getelementptr [29 x i8], [29 x i8]* @.str566, i32 0, i32 0
  %4053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %4052, i64 28)
  %4054 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4055 = load %nyx_string*, %nyx_string** %4054
  %4056 = call %nyx_string* @nyx_string_concat(%nyx_string* %4053, %nyx_string* %4055)
  %4057 = call i8* @nyx_string_to_cstr(%nyx_string* %4056)
  call void @nyx_print_string(i8* %4057)
  ret i1 0
else646:
  br label %merge647
merge647:
  %4058 = getelementptr [1 x i8], [1 x i8]* @.str567, i32 0, i32 0
  %4059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %4058, i64 0)
  %4060 = alloca %nyx_string*
  store %nyx_string* %4059, %nyx_string** %4060
  %4061 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4062 = load i1, i1* %4061
  br i1 %4062, label %then648, label %else649
then648:
  %4063 = getelementptr [13 x i8], [13 x i8]* @.str568, i32 0, i32 0
  %4064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %4063, i64 12)
  store %nyx_string* %4064, %nyx_string** %4060
  br label %merge650
else649:
  br label %merge650
merge650:
  %4065 = getelementptr [14 x i8], [14 x i8]* @.str569, i32 0, i32 0
  %4066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %4065, i64 13)
  %4067 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4068 = load %nyx_string*, %nyx_string** %4067
  %4069 = call %nyx_string* @nyx_string_concat(%nyx_string* %4066, %nyx_string* %4068)
  %4070 = call i8* @nyx_string_to_cstr(%nyx_string* %4069)
  call void @nyx_print_string(i8* %4070)
  %4071 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4072 = load %nyx_string*, %nyx_string** %4071
  %4073 = alloca %nyx_string*
  store %nyx_string* %4072, %nyx_string** %4073
  %4074 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4075 = load %nyx_string*, %nyx_string** %4074
  %4076 = getelementptr [1 x i8], [1 x i8]* @.str570, i32 0, i32 0
  %4077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %4076, i64 0)
  %4078 = call i1 @nyx_string_equals(%nyx_string* %4075, %nyx_string* %4077)
  %4079 = xor i1 %4078, true
  br i1 %4079, label %then651, label %else652
then651:
  %4080 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4081 = load %nyx_string*, %nyx_string** %4080
  store %nyx_string* %4081, %nyx_string** %4073
  br label %merge653
else652:
  br label %merge653
merge653:
  %4082 = load %nyx_string*, %nyx_string** %4073
  %4083 = alloca %nyx_string*
  store %nyx_string* %4082, %nyx_string** %4083
  %4084 = getelementptr [1 x i8], [1 x i8]* @.str571, i32 0, i32 0
  %4085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %4084, i64 0)
  %4086 = alloca %nyx_string*
  store %nyx_string* %4085, %nyx_string** %4086
  %4087 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 10
  %4088 = load %nyx_string*, %nyx_string** %4087
  %4089 = getelementptr [1 x i8], [1 x i8]* @.str572, i32 0, i32 0
  %4090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %4089, i64 0)
  %4091 = call i1 @nyx_string_equals(%nyx_string* %4088, %nyx_string* %4090)
  %4092 = xor i1 %4091, true
  br i1 %4092, label %then654, label %else655
then654:
  %4093 = getelementptr [8 x i8], [8 x i8]* @.str573, i32 0, i32 0
  %4094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %4093, i64 7)
  %4095 = load %nyx_string*, %nyx_string** %4073
  %4096 = call %nyx_string* @nyx_string_concat(%nyx_string* %4094, %nyx_string* %4095)
  store %nyx_string* %4096, %nyx_string** %4083
  %4097 = getelementptr [29 x i8], [29 x i8]* @.str574, i32 0, i32 0
  %4098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %4097, i64 28)
  store %nyx_string* %4098, %nyx_string** %4086
  br label %merge656
else655:
  br label %merge656
merge656:
  %4099 = getelementptr [1 x i8], [1 x i8]* @.str575, i32 0, i32 0
  %4100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %4099, i64 0)
  %4101 = alloca %nyx_string*
  store %nyx_string* %4100, %nyx_string** %4101
  %4102 = load i1, i1* %release.ptr
  br i1 %4102, label %then657, label %else658
then657:
  %4103 = getelementptr [4 x i8], [4 x i8]* @.str576, i32 0, i32 0
  %4104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %4103, i64 3)
  store %nyx_string* %4104, %nyx_string** %4101
  br label %merge659
else658:
  br label %merge659
merge659:
  %4105 = getelementptr [9 x i8], [9 x i8]* @.str577, i32 0, i32 0
  %4106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %4105, i64 8)
  %4107 = call i8* @nyx_string_to_cstr(%nyx_string* %4106)
  %4108 = call %nyx_string* @nyx_getenv(i8* %4107)
  %4109 = alloca %nyx_string*
  store %nyx_string* %4108, %nyx_string** %4109
  %4110 = load %nyx_string*, %nyx_string** %4109
  %4111 = getelementptr [1 x i8], [1 x i8]* @.str578, i32 0, i32 0
  %4112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %4111, i64 0)
  %4113 = call i1 @nyx_string_equals(%nyx_string* %4110, %nyx_string* %4112)
  br i1 %4113, label %then660, label %else661
then660:
  %4114 = getelementptr [5 x i8], [5 x i8]* @.str579, i32 0, i32 0
  %4115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %4114, i64 4)
  %4116 = call i8* @nyx_string_to_cstr(%nyx_string* %4115)
  %4117 = call %nyx_string* @nyx_getenv(i8* %4116)
  %4118 = alloca %nyx_string*
  store %nyx_string* %4117, %nyx_string** %4118
  %4119 = load %nyx_string*, %nyx_string** %4118
  %4120 = getelementptr [6 x i8], [6 x i8]* @.str580, i32 0, i32 0
  %4121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %4120, i64 5)
  %4122 = call %nyx_string* @nyx_string_concat(%nyx_string* %4119, %nyx_string* %4121)
  %4123 = alloca %nyx_string*
  store %nyx_string* %4122, %nyx_string** %4123
  %4124 = alloca i1
  store i1 false, i1* %4124
  %4125 = load %nyx_string*, %nyx_string** %4118
  %4126 = getelementptr [1 x i8], [1 x i8]* @.str581, i32 0, i32 0
  %4127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4126, i64 0)
  %4128 = call i1 @nyx_string_equals(%nyx_string* %4125, %nyx_string* %4127)
  %4129 = xor i1 %4128, true
  br i1 %4129, label %sc_and_rhs663, label %sc_and_end664
sc_and_rhs663:
  %4130 = load %nyx_string*, %nyx_string** %4123
  %4131 = getelementptr [19 x i8], [19 x i8]* @.str582, i32 0, i32 0
  %4132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4131, i64 18)
  %4133 = call %nyx_string* @nyx_string_concat(%nyx_string* %4130, %nyx_string* %4132)
  %4134 = call i8* @nyx_string_to_cstr(%nyx_string* %4133)
  %4135 = call i1 @nyx_file_exists(i8* %4134)
  store i1 %4135, i1* %4124
  br label %sc_and_end664
sc_and_end664:
  %4136 = load i1, i1* %4124
  br i1 %4136, label %then665, label %else666
then665:
  %4137 = load %nyx_string*, %nyx_string** %4123
  store %nyx_string* %4137, %nyx_string** %4109
  br label %merge667
else666:
  br label %merge667
merge667:
  br label %merge662
else661:
  br label %merge662
merge662:
  %4138 = load %nyx_string*, %nyx_string** %4109
  %4139 = getelementptr [1 x i8], [1 x i8]* @.str583, i32 0, i32 0
  %4140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4139, i64 0)
  %4141 = call i1 @nyx_string_equals(%nyx_string* %4138, %nyx_string* %4140)
  br i1 %4141, label %then668, label %else669
then668:
  %4142 = getelementptr [14 x i8], [14 x i8]* @.str584, i32 0, i32 0
  %4143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4142, i64 13)
  %4144 = call i8* @nyx_string_to_cstr(%nyx_string* %4143)
  %4145 = call i1 @nyx_file_exists(i8* %4144)
  br i1 %4145, label %then671, label %else672
then671:
  %4146 = getelementptr [2 x i8], [2 x i8]* @.str585, i32 0, i32 0
  %4147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4146, i64 1)
  store %nyx_string* %4147, %nyx_string** %4109
  br label %merge673
else672:
  br label %merge673
merge673:
  br label %merge670
else669:
  br label %merge670
merge670:
  %4148 = load %nyx_string*, %nyx_string** %4109
  %4149 = getelementptr [1 x i8], [1 x i8]* @.str586, i32 0, i32 0
  %4150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4149, i64 0)
  %4151 = call i1 @nyx_string_equals(%nyx_string* %4148, %nyx_string* %4150)
  br i1 %4151, label %then674, label %else675
then674:
  %4152 = getelementptr [56 x i8], [56 x i8]* @.str587, i32 0, i32 0
  %4153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4152, i64 55)
  %4154 = call i8* @nyx_string_to_cstr(%nyx_string* %4153)
  call void @nyx_print_string(i8* %4154)
  ret i1 0
else675:
  br label %merge676
merge676:
  %4155 = load %nyx_string*, %nyx_string** %4109
  %4156 = getelementptr [15 x i8], [15 x i8]* @.str588, i32 0, i32 0
  %4157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4156, i64 14)
  %4158 = call %nyx_string* @nyx_string_concat(%nyx_string* %4155, %nyx_string* %4157)
  %4159 = alloca %nyx_string*
  store %nyx_string* %4158, %nyx_string** %4159
  %4160 = load %nyx_string*, %nyx_string** %4159
  %4161 = call i8* @nyx_string_to_cstr(%nyx_string* %4160)
  %4162 = call i1 @nyx_file_exists(i8* %4161)
  %4163 = xor i1 %4162, true
  br i1 %4163, label %then677, label %else678
then677:
  %4164 = load %nyx_string*, %nyx_string** %4109
  %4165 = getelementptr [9 x i8], [9 x i8]* @.str589, i32 0, i32 0
  %4166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4165, i64 8)
  %4167 = call %nyx_string* @nyx_string_concat(%nyx_string* %4164, %nyx_string* %4166)
  store %nyx_string* %4167, %nyx_string** %4159
  br label %merge679
else678:
  br label %merge679
merge679:
  %4168 = load %nyx_string*, %nyx_string** %4109
  %4169 = getelementptr [9 x i8], [9 x i8]* @.str590, i32 0, i32 0
  %4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4169, i64 8)
  %4171 = call %nyx_string* @nyx_string_concat(%nyx_string* %4168, %nyx_string* %4170)
  %4172 = alloca %nyx_string*
  store %nyx_string* %4171, %nyx_string** %4172
  %4173 = getelementptr [20 x i8], [20 x i8]* @.str591, i32 0, i32 0
  %4174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4173, i64 19)
  %4175 = getelementptr [19 x i8], [19 x i8]* @.str592, i32 0, i32 0
  %4176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4175, i64 18)
  %4177 = call %nyx_string* @nyx_string_concat(%nyx_string* %4174, %nyx_string* %4176)
  %4178 = getelementptr [5 x i8], [5 x i8]* @.str593, i32 0, i32 0
  %4179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4178, i64 4)
  %4180 = call %nyx_string* @nyx_string_concat(%nyx_string* %4177, %nyx_string* %4179)
  %4181 = load %nyx_string*, %nyx_string** %4172
  %4182 = call %nyx_string* @nyx_string_concat(%nyx_string* %4180, %nyx_string* %4181)
  %4183 = getelementptr [3 x i8], [3 x i8]* @.str594, i32 0, i32 0
  %4184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4183, i64 2)
  %4185 = call %nyx_string* @nyx_string_concat(%nyx_string* %4182, %nyx_string* %4184)
  %4186 = getelementptr [43 x i8], [43 x i8]* @.str595, i32 0, i32 0
  %4187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4186, i64 42)
  %4188 = call %nyx_string* @nyx_string_concat(%nyx_string* %4185, %nyx_string* %4187)
  %4189 = getelementptr [37 x i8], [37 x i8]* @.str596, i32 0, i32 0
  %4190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4189, i64 36)
  %4191 = call %nyx_string* @nyx_string_concat(%nyx_string* %4188, %nyx_string* %4190)
  %4192 = getelementptr [17 x i8], [17 x i8]* @.str597, i32 0, i32 0
  %4193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4192, i64 16)
  %4194 = call %nyx_string* @nyx_string_concat(%nyx_string* %4191, %nyx_string* %4193)
  %4195 = getelementptr [38 x i8], [38 x i8]* @.str598, i32 0, i32 0
  %4196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4195, i64 37)
  %4197 = call %nyx_string* @nyx_string_concat(%nyx_string* %4194, %nyx_string* %4196)
  %4198 = getelementptr [17 x i8], [17 x i8]* @.str599, i32 0, i32 0
  %4199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4198, i64 16)
  %4200 = call %nyx_string* @nyx_string_concat(%nyx_string* %4197, %nyx_string* %4199)
  %4201 = getelementptr [15 x i8], [15 x i8]* @.str600, i32 0, i32 0
  %4202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4201, i64 14)
  %4203 = call %nyx_string* @nyx_string_concat(%nyx_string* %4200, %nyx_string* %4202)
  %4204 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4205 = load %nyx_string*, %nyx_string** %4204
  %4206 = call %nyx_string* @nyx_string_concat(%nyx_string* %4203, %nyx_string* %4205)
  %4207 = getelementptr [12 x i8], [12 x i8]* @.str601, i32 0, i32 0
  %4208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4207, i64 11)
  %4209 = call %nyx_string* @nyx_string_concat(%nyx_string* %4206, %nyx_string* %4208)
  %4210 = getelementptr [5 x i8], [5 x i8]* @.str602, i32 0, i32 0
  %4211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4210, i64 4)
  %4212 = call %nyx_string* @nyx_string_concat(%nyx_string* %4209, %nyx_string* %4211)
  %4213 = load %nyx_string*, %nyx_string** %4109
  %4214 = call %nyx_string* @nyx_string_concat(%nyx_string* %4212, %nyx_string* %4213)
  %4215 = getelementptr [3 x i8], [3 x i8]* @.str603, i32 0, i32 0
  %4216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4215, i64 2)
  %4217 = call %nyx_string* @nyx_string_concat(%nyx_string* %4214, %nyx_string* %4216)
  %4218 = load %nyx_string*, %nyx_string** %4060
  %4219 = call %nyx_string* @nyx_string_concat(%nyx_string* %4217, %nyx_string* %4218)
  %4220 = getelementptr [35 x i8], [35 x i8]* @.str604, i32 0, i32 0
  %4221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4220, i64 34)
  %4222 = call %nyx_string* @nyx_string_concat(%nyx_string* %4219, %nyx_string* %4221)
  %4223 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4224 = load %nyx_string*, %nyx_string** %4223
  %4225 = call %nyx_string* @nyx_string_concat(%nyx_string* %4222, %nyx_string* %4224)
  %4226 = getelementptr [32 x i8], [32 x i8]* @.str605, i32 0, i32 0
  %4227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4226, i64 31)
  %4228 = call %nyx_string* @nyx_string_concat(%nyx_string* %4225, %nyx_string* %4227)
  %4229 = load %nyx_string*, %nyx_string** %4159
  %4230 = call %nyx_string* @nyx_string_concat(%nyx_string* %4228, %nyx_string* %4229)
  %4231 = getelementptr [17 x i8], [17 x i8]* @.str606, i32 0, i32 0
  %4232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4231, i64 16)
  %4233 = call %nyx_string* @nyx_string_concat(%nyx_string* %4230, %nyx_string* %4232)
  %4234 = getelementptr [71 x i8], [71 x i8]* @.str607, i32 0, i32 0
  %4235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4234, i64 70)
  %4236 = call %nyx_string* @nyx_string_concat(%nyx_string* %4233, %nyx_string* %4235)
  %4237 = load %nyx_string*, %nyx_string** %4086
  %4238 = call %nyx_string* @nyx_string_concat(%nyx_string* %4236, %nyx_string* %4237)
  %4239 = getelementptr [7 x i8], [7 x i8]* @.str608, i32 0, i32 0
  %4240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4239, i64 6)
  %4241 = call %nyx_string* @nyx_string_concat(%nyx_string* %4238, %nyx_string* %4240)
  %4242 = load %nyx_string*, %nyx_string** %4101
  %4243 = call %nyx_string* @nyx_string_concat(%nyx_string* %4241, %nyx_string* %4242)
  %4244 = getelementptr [12 x i8], [12 x i8]* @.str609, i32 0, i32 0
  %4245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4244, i64 11)
  %4246 = call %nyx_string* @nyx_string_concat(%nyx_string* %4243, %nyx_string* %4245)
  %4247 = getelementptr [50 x i8], [50 x i8]* @.str610, i32 0, i32 0
  %4248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4247, i64 49)
  %4249 = call %nyx_string* @nyx_string_concat(%nyx_string* %4246, %nyx_string* %4248)
  %4250 = getelementptr [42 x i8], [42 x i8]* @.str611, i32 0, i32 0
  %4251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4250, i64 41)
  %4252 = call %nyx_string* @nyx_string_concat(%nyx_string* %4249, %nyx_string* %4251)
  %4253 = getelementptr [36 x i8], [36 x i8]* @.str612, i32 0, i32 0
  %4254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4253, i64 35)
  %4255 = call %nyx_string* @nyx_string_concat(%nyx_string* %4252, %nyx_string* %4254)
  %4256 = getelementptr [35 x i8], [35 x i8]* @.str613, i32 0, i32 0
  %4257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4256, i64 34)
  %4258 = call %nyx_string* @nyx_string_concat(%nyx_string* %4255, %nyx_string* %4257)
  %4259 = getelementptr [55 x i8], [55 x i8]* @.str614, i32 0, i32 0
  %4260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4259, i64 54)
  %4261 = call %nyx_string* @nyx_string_concat(%nyx_string* %4258, %nyx_string* %4260)
  %4262 = getelementptr [39 x i8], [39 x i8]* @.str615, i32 0, i32 0
  %4263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %4262, i64 38)
  %4264 = call %nyx_string* @nyx_string_concat(%nyx_string* %4261, %nyx_string* %4263)
  %4265 = getelementptr [71 x i8], [71 x i8]* @.str616, i32 0, i32 0
  %4266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %4265, i64 70)
  %4267 = call %nyx_string* @nyx_string_concat(%nyx_string* %4264, %nyx_string* %4266)
  %4268 = getelementptr [21 x i8], [21 x i8]* @.str617, i32 0, i32 0
  %4269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4268, i64 20)
  %4270 = call %nyx_string* @nyx_string_concat(%nyx_string* %4267, %nyx_string* %4269)
  %4271 = getelementptr [19 x i8], [19 x i8]* @.str618, i32 0, i32 0
  %4272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4271, i64 18)
  %4273 = call %nyx_string* @nyx_string_concat(%nyx_string* %4270, %nyx_string* %4272)
  %4274 = getelementptr [44 x i8], [44 x i8]* @.str619, i32 0, i32 0
  %4275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4274, i64 43)
  %4276 = call %nyx_string* @nyx_string_concat(%nyx_string* %4273, %nyx_string* %4275)
  %4277 = getelementptr [15 x i8], [15 x i8]* @.str620, i32 0, i32 0
  %4278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4277, i64 14)
  %4279 = call %nyx_string* @nyx_string_concat(%nyx_string* %4276, %nyx_string* %4278)
  %4280 = load %nyx_string*, %nyx_string** %4083
  %4281 = call %nyx_string* @nyx_string_concat(%nyx_string* %4279, %nyx_string* %4280)
  %4282 = getelementptr [13 x i8], [13 x i8]* @.str621, i32 0, i32 0
  %4283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4282, i64 12)
  %4284 = call %nyx_string* @nyx_string_concat(%nyx_string* %4281, %nyx_string* %4283)
  %4285 = getelementptr [44 x i8], [44 x i8]* @.str622, i32 0, i32 0
  %4286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4285, i64 43)
  %4287 = call %nyx_string* @nyx_string_concat(%nyx_string* %4284, %nyx_string* %4286)
  %4288 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4289 = load %nyx_string*, %nyx_string** %4288
  %4290 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4289)
  %4291 = call %nyx_string* @nyx_string_concat(%nyx_string* %4287, %nyx_string* %4290)
  %4292 = getelementptr [27 x i8], [27 x i8]* @.str623, i32 0, i32 0
  %4293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4292, i64 26)
  %4294 = call %nyx_string* @nyx_string_concat(%nyx_string* %4291, %nyx_string* %4293)
  %4295 = getelementptr [18 x i8], [18 x i8]* @.str624, i32 0, i32 0
  %4296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4295, i64 17)
  %4297 = call %nyx_string* @nyx_string_concat(%nyx_string* %4294, %nyx_string* %4296)
  %4298 = load %nyx_string*, %nyx_string** %4083
  %4299 = call %nyx_string* @nyx_string_concat(%nyx_string* %4297, %nyx_string* %4298)
  %4300 = getelementptr [3 x i8], [3 x i8]* @.str625, i32 0, i32 0
  %4301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4300, i64 2)
  %4302 = call %nyx_string* @nyx_string_concat(%nyx_string* %4299, %nyx_string* %4301)
  %4303 = alloca %nyx_string*
  store %nyx_string* %4302, %nyx_string** %4303
  %4304 = alloca i1
  store i1 false, i1* %4304
  %4305 = load %nyx_string*, %nyx_string** %4006
  %4306 = getelementptr [1 x i8], [1 x i8]* @.str626, i32 0, i32 0
  %4307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4306, i64 0)
  %4308 = call i1 @nyx_string_equals(%nyx_string* %4305, %nyx_string* %4307)
  %4309 = xor i1 %4308, true
  br i1 %4309, label %sc_and_rhs680, label %sc_and_end681
sc_and_rhs680:
  %4310 = load %nyx_string*, %nyx_string** %4006
  %4311 = getelementptr [12 x i8], [12 x i8]* @.str627, i32 0, i32 0
  %4312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4311, i64 11)
  %4313 = call i1 @nyx_string_equals(%nyx_string* %4310, %nyx_string* %4312)
  %4314 = xor i1 %4313, true
  store i1 %4314, i1* %4304
  br label %sc_and_end681
sc_and_end681:
  %4315 = load i1, i1* %4304
  br i1 %4315, label %then682, label %else683
then682:
  %4316 = alloca i1
  store i1 false, i1* %4316
  %4317 = load %nyx_string*, %nyx_string** %4006
  %4318 = getelementptr [23 x i8], [23 x i8]* @.str628, i32 0, i32 0
  %4319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4318, i64 22)
  %4320 = call i1 @nyx_string_equals(%nyx_string* %4317, %nyx_string* %4319)
  %4321 = xor i1 %4320, true
  br i1 %4321, label %sc_and_rhs685, label %sc_and_end686
sc_and_rhs685:
  %4322 = load %nyx_string*, %nyx_string** %4006
  %4323 = getelementptr [24 x i8], [24 x i8]* @.str629, i32 0, i32 0
  %4324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %4323, i64 23)
  %4325 = call i1 @nyx_string_equals(%nyx_string* %4322, %nyx_string* %4324)
  %4326 = xor i1 %4325, true
  store i1 %4326, i1* %4316
  br label %sc_and_end686
sc_and_end686:
  %4327 = load i1, i1* %4316
  br i1 %4327, label %then687, label %else688
then687:
  %4328 = getelementptr [28 x i8], [28 x i8]* @.str630, i32 0, i32 0
  %4329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %4328, i64 27)
  %4330 = load %nyx_string*, %nyx_string** %4006
  %4331 = call %nyx_string* @nyx_string_concat(%nyx_string* %4329, %nyx_string* %4330)
  %4332 = call i8* @nyx_string_to_cstr(%nyx_string* %4331)
  call void @nyx_print_string(i8* %4332)
  %4333 = getelementptr [83 x i8], [83 x i8]* @.str631, i32 0, i32 0
  %4334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %4333, i64 82)
  %4335 = call i8* @nyx_string_to_cstr(%nyx_string* %4334)
  call void @nyx_print_string(i8* %4335)
  %4336 = getelementptr [52 x i8], [52 x i8]* @.str632, i32 0, i32 0
  %4337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %4336, i64 51)
  %4338 = call i8* @nyx_string_to_cstr(%nyx_string* %4337)
  call void @nyx_print_string(i8* %4338)
  ret i1 0
else688:
  br label %merge689
merge689:
  br label %merge684
else683:
  br label %merge684
merge684:
  %4339 = load %nyx_string*, %nyx_string** %4303
  %4340 = alloca %nyx_string*
  store %nyx_string* %4339, %nyx_string** %4340
  %4341 = load %nyx_string*, %nyx_string** %4006
  %4342 = getelementptr [12 x i8], [12 x i8]* @.str633, i32 0, i32 0
  %4343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %4342, i64 11)
  %4344 = call i1 @nyx_string_equals(%nyx_string* %4341, %nyx_string* %4343)
  br i1 %4344, label %then690, label %else691
then690:
  %4345 = getelementptr [20 x i8], [20 x i8]* @.str634, i32 0, i32 0
  %4346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %4345, i64 19)
  %4347 = getelementptr [19 x i8], [19 x i8]* @.str635, i32 0, i32 0
  %4348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %4347, i64 18)
  %4349 = call %nyx_string* @nyx_string_concat(%nyx_string* %4346, %nyx_string* %4348)
  %4350 = getelementptr [5 x i8], [5 x i8]* @.str636, i32 0, i32 0
  %4351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %4350, i64 4)
  %4352 = call %nyx_string* @nyx_string_concat(%nyx_string* %4349, %nyx_string* %4351)
  %4353 = load %nyx_string*, %nyx_string** %4172
  %4354 = call %nyx_string* @nyx_string_concat(%nyx_string* %4352, %nyx_string* %4353)
  %4355 = getelementptr [3 x i8], [3 x i8]* @.str637, i32 0, i32 0
  %4356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %4355, i64 2)
  %4357 = call %nyx_string* @nyx_string_concat(%nyx_string* %4354, %nyx_string* %4356)
  %4358 = getelementptr [11 x i8], [11 x i8]* @.str638, i32 0, i32 0
  %4359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %4358, i64 10)
  %4360 = call %nyx_string* @nyx_string_concat(%nyx_string* %4357, %nyx_string* %4359)
  %4361 = getelementptr [23 x i8], [23 x i8]* @.str639, i32 0, i32 0
  %4362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %4361, i64 22)
  %4363 = call %nyx_string* @nyx_string_concat(%nyx_string* %4360, %nyx_string* %4362)
  %4364 = getelementptr [43 x i8], [43 x i8]* @.str640, i32 0, i32 0
  %4365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %4364, i64 42)
  %4366 = call %nyx_string* @nyx_string_concat(%nyx_string* %4363, %nyx_string* %4365)
  %4367 = getelementptr [37 x i8], [37 x i8]* @.str641, i32 0, i32 0
  %4368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %4367, i64 36)
  %4369 = call %nyx_string* @nyx_string_concat(%nyx_string* %4366, %nyx_string* %4368)
  %4370 = getelementptr [17 x i8], [17 x i8]* @.str642, i32 0, i32 0
  %4371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %4370, i64 16)
  %4372 = call %nyx_string* @nyx_string_concat(%nyx_string* %4369, %nyx_string* %4371)
  %4373 = getelementptr [38 x i8], [38 x i8]* @.str643, i32 0, i32 0
  %4374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %4373, i64 37)
  %4375 = call %nyx_string* @nyx_string_concat(%nyx_string* %4372, %nyx_string* %4374)
  %4376 = getelementptr [17 x i8], [17 x i8]* @.str644, i32 0, i32 0
  %4377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %4376, i64 16)
  %4378 = call %nyx_string* @nyx_string_concat(%nyx_string* %4375, %nyx_string* %4377)
  %4379 = getelementptr [163 x i8], [163 x i8]* @.str645, i32 0, i32 0
  %4380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %4379, i64 162)
  %4381 = call %nyx_string* @nyx_string_concat(%nyx_string* %4378, %nyx_string* %4380)
  %4382 = getelementptr [15 x i8], [15 x i8]* @.str646, i32 0, i32 0
  %4383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %4382, i64 14)
  %4384 = call %nyx_string* @nyx_string_concat(%nyx_string* %4381, %nyx_string* %4383)
  %4385 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4386 = load %nyx_string*, %nyx_string** %4385
  %4387 = call %nyx_string* @nyx_string_concat(%nyx_string* %4384, %nyx_string* %4386)
  %4388 = getelementptr [12 x i8], [12 x i8]* @.str647, i32 0, i32 0
  %4389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %4388, i64 11)
  %4390 = call %nyx_string* @nyx_string_concat(%nyx_string* %4387, %nyx_string* %4389)
  %4391 = getelementptr [5 x i8], [5 x i8]* @.str648, i32 0, i32 0
  %4392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %4391, i64 4)
  %4393 = call %nyx_string* @nyx_string_concat(%nyx_string* %4390, %nyx_string* %4392)
  %4394 = load %nyx_string*, %nyx_string** %4109
  %4395 = call %nyx_string* @nyx_string_concat(%nyx_string* %4393, %nyx_string* %4394)
  %4396 = getelementptr [3 x i8], [3 x i8]* @.str649, i32 0, i32 0
  %4397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %4396, i64 2)
  %4398 = call %nyx_string* @nyx_string_concat(%nyx_string* %4395, %nyx_string* %4397)
  %4399 = getelementptr [70 x i8], [70 x i8]* @.str650, i32 0, i32 0
  %4400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %4399, i64 69)
  %4401 = call %nyx_string* @nyx_string_concat(%nyx_string* %4398, %nyx_string* %4400)
  %4402 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4403 = load %nyx_string*, %nyx_string** %4402
  %4404 = call %nyx_string* @nyx_string_concat(%nyx_string* %4401, %nyx_string* %4403)
  %4405 = getelementptr [32 x i8], [32 x i8]* @.str651, i32 0, i32 0
  %4406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %4405, i64 31)
  %4407 = call %nyx_string* @nyx_string_concat(%nyx_string* %4404, %nyx_string* %4406)
  %4408 = load %nyx_string*, %nyx_string** %4159
  %4409 = call %nyx_string* @nyx_string_concat(%nyx_string* %4407, %nyx_string* %4408)
  %4410 = getelementptr [17 x i8], [17 x i8]* @.str652, i32 0, i32 0
  %4411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %4410, i64 16)
  %4412 = call %nyx_string* @nyx_string_concat(%nyx_string* %4409, %nyx_string* %4411)
  %4413 = getelementptr [71 x i8], [71 x i8]* @.str653, i32 0, i32 0
  %4414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %4413, i64 70)
  %4415 = call %nyx_string* @nyx_string_concat(%nyx_string* %4412, %nyx_string* %4414)
  %4416 = getelementptr [24 x i8], [24 x i8]* @.str654, i32 0, i32 0
  %4417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %4416, i64 23)
  %4418 = call %nyx_string* @nyx_string_concat(%nyx_string* %4415, %nyx_string* %4417)
  %4419 = getelementptr [2 x i8], [2 x i8]* @.str655, i32 0, i32 0
  %4420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %4419, i64 1)
  %4421 = call %nyx_string* @nyx_string_concat(%nyx_string* %4418, %nyx_string* %4420)
  %4422 = getelementptr [76 x i8], [76 x i8]* @.str656, i32 0, i32 0
  %4423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %4422, i64 75)
  %4424 = call %nyx_string* @nyx_string_concat(%nyx_string* %4421, %nyx_string* %4423)
  %4425 = getelementptr [98 x i8], [98 x i8]* @.str657, i32 0, i32 0
  %4426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %4425, i64 97)
  %4427 = call %nyx_string* @nyx_string_concat(%nyx_string* %4424, %nyx_string* %4426)
  %4428 = getelementptr [41 x i8], [41 x i8]* @.str658, i32 0, i32 0
  %4429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %4428, i64 40)
  %4430 = call %nyx_string* @nyx_string_concat(%nyx_string* %4427, %nyx_string* %4429)
  %4431 = getelementptr [64 x i8], [64 x i8]* @.str659, i32 0, i32 0
  %4432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %4431, i64 63)
  %4433 = call %nyx_string* @nyx_string_concat(%nyx_string* %4430, %nyx_string* %4432)
  %4434 = getelementptr [56 x i8], [56 x i8]* @.str660, i32 0, i32 0
  %4435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %4434, i64 55)
  %4436 = call %nyx_string* @nyx_string_concat(%nyx_string* %4433, %nyx_string* %4435)
  %4437 = getelementptr [12 x i8], [12 x i8]* @.str661, i32 0, i32 0
  %4438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %4437, i64 11)
  %4439 = call %nyx_string* @nyx_string_concat(%nyx_string* %4436, %nyx_string* %4438)
  %4440 = getelementptr [34 x i8], [34 x i8]* @.str662, i32 0, i32 0
  %4441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %4440, i64 33)
  %4442 = call %nyx_string* @nyx_string_concat(%nyx_string* %4439, %nyx_string* %4441)
  %4443 = load %nyx_string*, %nyx_string** %4073
  %4444 = call %nyx_string* @nyx_string_concat(%nyx_string* %4442, %nyx_string* %4443)
  %4445 = getelementptr [18 x i8], [18 x i8]* @.str663, i32 0, i32 0
  %4446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %4445, i64 17)
  %4447 = call %nyx_string* @nyx_string_concat(%nyx_string* %4444, %nyx_string* %4446)
  %4448 = getelementptr [49 x i8], [49 x i8]* @.str664, i32 0, i32 0
  %4449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %4448, i64 48)
  %4450 = call %nyx_string* @nyx_string_concat(%nyx_string* %4447, %nyx_string* %4449)
  %4451 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4452 = load %nyx_string*, %nyx_string** %4451
  %4453 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4452)
  %4454 = call %nyx_string* @nyx_string_concat(%nyx_string* %4450, %nyx_string* %4453)
  %4455 = getelementptr [27 x i8], [27 x i8]* @.str665, i32 0, i32 0
  %4456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %4455, i64 26)
  %4457 = call %nyx_string* @nyx_string_concat(%nyx_string* %4454, %nyx_string* %4456)
  %4458 = getelementptr [32 x i8], [32 x i8]* @.str666, i32 0, i32 0
  %4459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %4458, i64 31)
  %4460 = call %nyx_string* @nyx_string_concat(%nyx_string* %4457, %nyx_string* %4459)
  %4461 = load %nyx_string*, %nyx_string** %4073
  %4462 = call %nyx_string* @nyx_string_concat(%nyx_string* %4460, %nyx_string* %4461)
  %4463 = getelementptr [41 x i8], [41 x i8]* @.str667, i32 0, i32 0
  %4464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %4463, i64 40)
  %4465 = call %nyx_string* @nyx_string_concat(%nyx_string* %4462, %nyx_string* %4464)
  %4466 = load %nyx_string*, %nyx_string** %4073
  %4467 = call %nyx_string* @nyx_string_concat(%nyx_string* %4465, %nyx_string* %4466)
  %4468 = getelementptr [9 x i8], [9 x i8]* @.str668, i32 0, i32 0
  %4469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %4468, i64 8)
  %4470 = call %nyx_string* @nyx_string_concat(%nyx_string* %4467, %nyx_string* %4469)
  store %nyx_string* %4470, %nyx_string** %4340
  br label %merge692
else691:
  br label %merge692
merge692:
  %4471 = getelementptr [16 x i8], [16 x i8]* @.str669, i32 0, i32 0
  %4472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %4471, i64 15)
  %4473 = call i64 @nyx_getpid()
  %4474 = call %nyx_string* @nyx_string_from_int(i64 %4473)
  %4475 = call %nyx_string* @nyx_string_concat(%nyx_string* %4472, %nyx_string* %4474)
  %4476 = getelementptr [4 x i8], [4 x i8]* @.str670, i32 0, i32 0
  %4477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %4476, i64 3)
  %4478 = call %nyx_string* @nyx_string_concat(%nyx_string* %4475, %nyx_string* %4477)
  %4479 = alloca %nyx_string*
  store %nyx_string* %4478, %nyx_string** %4479
  %4480 = load %nyx_string*, %nyx_string** %4479
  %4481 = load %nyx_string*, %nyx_string** %4340
  %4482 = call i8* @nyx_string_to_cstr(%nyx_string* %4480)
  %4483 = call i1 @nyx_write_file_safe(i8* %4482, %nyx_string* %4481)
  %4484 = getelementptr [7 x i8], [7 x i8]* @.str671, i32 0, i32 0
  %4485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %4484, i64 6)
  %4486 = load %nyx_string*, %nyx_string** %4479
  %4487 = call %nyx_string* @nyx_string_concat(%nyx_string* %4485, %nyx_string* %4486)
  %4488 = getelementptr [22 x i8], [22 x i8]* @.str672, i32 0, i32 0
  %4489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %4488, i64 21)
  %4490 = call %nyx_string* @nyx_string_concat(%nyx_string* %4487, %nyx_string* %4489)
  %4491 = load %nyx_string*, %nyx_string** %4479
  %4492 = call %nyx_string* @nyx_string_concat(%nyx_string* %4490, %nyx_string* %4491)
  %4493 = getelementptr [16 x i8], [16 x i8]* @.str673, i32 0, i32 0
  %4494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %4493, i64 15)
  %4495 = call %nyx_string* @nyx_string_concat(%nyx_string* %4492, %nyx_string* %4494)
  %4496 = call i8* @nyx_string_to_cstr(%nyx_string* %4495)
  %4497 = call i64 @nyx_exec_code(i8* %4496)
  %4498 = alloca i64
  store i64 %4497, i64* %4498
  %4499 = load i64, i64* %4498
  %4500 = icmp eq i64 %4499, 0
  ret i1 %4500
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %4501 = getelementptr [10 x i8], [10 x i8]* @.str674, i32 0, i32 0
  %4502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %4501, i64 9)
  %4503 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4504 = load %nyx_string*, %nyx_string** %4503
  %4505 = call %nyx_string* @nyx_string_concat(%nyx_string* %4502, %nyx_string* %4504)
  %4506 = call i8* @nyx_string_to_cstr(%nyx_string* %4505)
  call void @nyx_print_string(i8* %4506)
  %4507 = getelementptr [10 x i8], [10 x i8]* @.str675, i32 0, i32 0
  %4508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %4507, i64 9)
  %4509 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4510 = load %nyx_string*, %nyx_string** %4509
  %4511 = call %nyx_string* @nyx_string_concat(%nyx_string* %4508, %nyx_string* %4510)
  %4512 = call i8* @nyx_string_to_cstr(%nyx_string* %4511)
  call void @nyx_print_string(i8* %4512)
  %4513 = getelementptr [10 x i8], [10 x i8]* @.str676, i32 0, i32 0
  %4514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %4513, i64 9)
  %4515 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4516 = load %nyx_string*, %nyx_string** %4515
  %4517 = call %nyx_string* @nyx_string_concat(%nyx_string* %4514, %nyx_string* %4516)
  %4518 = call i8* @nyx_string_to_cstr(%nyx_string* %4517)
  call void @nyx_print_string(i8* %4518)
  %4519 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4520 = load %nyx_string*, %nyx_string** %4519
  %4521 = getelementptr [1 x i8], [1 x i8]* @.str677, i32 0, i32 0
  %4522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %4521, i64 0)
  %4523 = call i1 @nyx_string_equals(%nyx_string* %4520, %nyx_string* %4522)
  %4524 = xor i1 %4523, true
  br i1 %4524, label %then693, label %else694
then693:
  %4525 = getelementptr [10 x i8], [10 x i8]* @.str678, i32 0, i32 0
  %4526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %4525, i64 9)
  %4527 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %4528 = load %nyx_string*, %nyx_string** %4527
  %4529 = call %nyx_string* @nyx_string_concat(%nyx_string* %4526, %nyx_string* %4528)
  %4530 = call i8* @nyx_string_to_cstr(%nyx_string* %4529)
  call void @nyx_print_string(i8* %4530)
  br label %merge695
else694:
  br label %merge695
merge695:
  %4531 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %4532 = load %nyx_string*, %nyx_string** %4531
  %4533 = getelementptr [1 x i8], [1 x i8]* @.str679, i32 0, i32 0
  %4534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %4533, i64 0)
  %4535 = call i1 @nyx_string_equals(%nyx_string* %4532, %nyx_string* %4534)
  %4536 = xor i1 %4535, true
  br i1 %4536, label %then696, label %else697
then696:
  %4537 = getelementptr [10 x i8], [10 x i8]* @.str680, i32 0, i32 0
  %4538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %4537, i64 9)
  %4539 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %4540 = load %nyx_string*, %nyx_string** %4539
  %4541 = call %nyx_string* @nyx_string_concat(%nyx_string* %4538, %nyx_string* %4540)
  %4542 = call i8* @nyx_string_to_cstr(%nyx_string* %4541)
  call void @nyx_print_string(i8* %4542)
  br label %merge698
else697:
  br label %merge698
merge698:
  %4543 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4544 = load i1, i1* %4543
  br i1 %4544, label %then699, label %else700
then699:
  %4545 = getelementptr [25 x i8], [25 x i8]* @.str681, i32 0, i32 0
  %4546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %4545, i64 24)
  %4547 = call i8* @nyx_string_to_cstr(%nyx_string* %4546)
  call void @nyx_print_string(i8* %4547)
  br label %merge701
else700:
  %4548 = getelementptr [22 x i8], [22 x i8]* @.str682, i32 0, i32 0
  %4549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %4548, i64 21)
  %4550 = call i8* @nyx_string_to_cstr(%nyx_string* %4549)
  call void @nyx_print_string(i8* %4550)
  br label %merge701
merge701:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %4551 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4552 = getelementptr [2 x i8], [2 x i8]* @.str683, i32 0, i32 0
  %4553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %4552, i64 1)
  %4554 = call i1 @nyx_string_starts_with(%nyx_string* %4551, %nyx_string* %4553)
  br i1 %4554, label %then702, label %else703
then702:
  %4555 = getelementptr [98 x i8], [98 x i8]* @.str684, i32 0, i32 0
  %4556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %4555, i64 97)
  %4557 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4558 = call %nyx_string* @nyx_string_concat(%nyx_string* %4556, %nyx_string* %4557)
  ret %nyx_string* %4558
else703:
  br label %merge704
merge704:
  %4559 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4560 = getelementptr [4 x i8], [4 x i8]* @.str685, i32 0, i32 0
  %4561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %4560, i64 3)
  %4562 = call i1 @nyx_string_ends_with(%nyx_string* %4559, %nyx_string* %4561)
  %4563 = xor i1 %4562, true
  br i1 %4563, label %then705, label %else706
then705:
  %4564 = getelementptr [31 x i8], [31 x i8]* @.str686, i32 0, i32 0
  %4565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %4564, i64 30)
  %4566 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4567 = call %nyx_string* @nyx_string_concat(%nyx_string* %4565, %nyx_string* %4566)
  ret %nyx_string* %4567
else706:
  br label %merge707
merge707:
  %4568 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4569 = call i8* @nyx_string_to_cstr(%nyx_string* %4568)
  %4570 = call i1 @nyx_file_exists(i8* %4569)
  %4571 = xor i1 %4570, true
  br i1 %4571, label %then708, label %else709
then708:
  %4572 = getelementptr [31 x i8], [31 x i8]* @.str687, i32 0, i32 0
  %4573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %4572, i64 30)
  %4574 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4575 = call %nyx_string* @nyx_string_concat(%nyx_string* %4573, %nyx_string* %4574)
  %4576 = getelementptr [48 x i8], [48 x i8]* @.str688, i32 0, i32 0
  %4577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %4576, i64 47)
  %4578 = call %nyx_string* @nyx_string_concat(%nyx_string* %4575, %nyx_string* %4577)
  ret %nyx_string* %4578
else709:
  br label %merge710
merge710:
  %4579 = getelementptr [1 x i8], [1 x i8]* @.str689, i32 0, i32 0
  %4580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %4579, i64 0)
  ret %nyx_string* %4580
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %4581 = load %nyx_string*, %nyx_string** %p.ptr
  %4582 = getelementptr [3 x i8], [3 x i8]* @.str690, i32 0, i32 0
  %4583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %4582, i64 2)
  %4584 = call i1 @nyx_string_starts_with(%nyx_string* %4581, %nyx_string* %4583)
  br i1 %4584, label %then711, label %else712
then711:
  %4585 = load %nyx_string*, %nyx_string** %p.ptr
  %4586 = load %nyx_string*, %nyx_string** %p.ptr
  %4587 = call i64 @nyx_string_byte_length(%nyx_string* %4586)
  %4588 = call %nyx_string* @nyx_string_substring(%nyx_string* %4585, i64 2, i64 %4587)
  ret %nyx_string* %4588
else712:
  br label %merge713
merge713:
  %4589 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %4589
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %4590 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4591 = getelementptr [1 x i8], [1 x i8]* @.str691, i32 0, i32 0
  %4592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %4591, i64 0)
  %4593 = call i1 @nyx_string_equals(%nyx_string* %4590, %nyx_string* %4592)
  br i1 %4593, label %then714, label %else715
then714:
  %4594 = getelementptr [1 x i8], [1 x i8]* @.str692, i32 0, i32 0
  %4595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %4594, i64 0)
  ret %nyx_string* %4595
else715:
  br label %merge716
merge716:
  %4596 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4597 = call %nyx_string* @strip_dot_slash(%nyx_string* %4596)
  %4598 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4599 = load %nyx_string*, %nyx_string** %4598
  %4600 = call %nyx_string* @strip_dot_slash(%nyx_string* %4599)
  %4601 = call i1 @nyx_string_equals(%nyx_string* %4597, %nyx_string* %4600)
  br i1 %4601, label %then717, label %else718
then717:
  %4602 = getelementptr [1 x i8], [1 x i8]* @.str693, i32 0, i32 0
  %4603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %4602, i64 0)
  ret %nyx_string* %4603
else718:
  br label %merge719
merge719:
  %4604 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4605 = alloca %nyx_string*
  store %nyx_string* %4604, %nyx_string** %4605
  %4606 = alloca i64
  store i64 0, i64* %4606
  %4607 = call i8* @llvm.stacksave()
  br label %while_cond720
while_cond720:
  %4608 = load i64, i64* %4606
  %4609 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4610 = call i64 @nyx_string_byte_length(%nyx_string* %4609)
  %4611 = icmp slt i64 %4608, %4610
  br i1 %4611, label %while_body721, label %while_end722
while_body721:
  call void @llvm.stackrestore(i8* %4607)
  %4612 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4613 = load i64, i64* %4606
  %4614 = call i8 @nyx_string_char_at(%nyx_string* %4612, i64 %4613)
  %4615 = zext i8 %4614 to i64
  %4616 = trunc i64 %4615 to i8
  %4617 = alloca i8
  store i8 %4616, i8* %4617
  %4618 = load i8, i8* %4617
  %4619 = getelementptr [1 x i8], [1 x i8]* @.str694, i32 0, i32 0
  %4620 = load i8, i8* %4619
  %4621 = zext i8 %4620 to i64
  %4622 = zext i8 %4618 to i64
  %4623 = icmp eq i64 %4622, %4621
  br i1 %4623, label %then723, label %else724
then723:
  %4624 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4625 = load i64, i64* %4606
  %4626 = add i64 %4625, 1
  %4627 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4628 = call i64 @nyx_string_byte_length(%nyx_string* %4627)
  %4629 = call %nyx_string* @nyx_string_substring(%nyx_string* %4624, i64 %4626, i64 %4628)
  store %nyx_string* %4629, %nyx_string** %4605
  br label %merge725
else724:
  br label %merge725
merge725:
  %4630 = load i64, i64* %4606
  %4631 = add i64 %4630, 1
  store i64 %4631, i64* %4606
  br label %while_cond720
while_end722:
  %4632 = load %nyx_string*, %nyx_string** %4605
  %4633 = load %nyx_string*, %nyx_string** %4605
  %4634 = call i64 @nyx_string_byte_length(%nyx_string* %4633)
  %4635 = sub i64 %4634, 3
  %4636 = call %nyx_string* @nyx_string_substring(%nyx_string* %4632, i64 0, i64 %4635)
  %4637 = alloca %nyx_string*
  store %nyx_string* %4636, %nyx_string** %4637
  %4638 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4639 = load %nyx_string*, %nyx_string** %4638
  %4640 = getelementptr [2 x i8], [2 x i8]* @.str695, i32 0, i32 0
  %4641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %4640, i64 1)
  %4642 = call %nyx_string* @nyx_string_concat(%nyx_string* %4639, %nyx_string* %4641)
  %4643 = load %nyx_string*, %nyx_string** %4637
  %4644 = call %nyx_string* @nyx_string_concat(%nyx_string* %4642, %nyx_string* %4643)
  ret %nyx_string* %4644
}

define internal %nyx_string* @toolchain_version(
) {
  %4645 = getelementptr [9 x i8], [9 x i8]* @.str696, i32 0, i32 0
  %4646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %4645, i64 8)
  %4647 = call i8* @nyx_string_to_cstr(%nyx_string* %4646)
  %4648 = call %nyx_string* @nyx_getenv(i8* %4647)
  %4649 = alloca %nyx_string*
  store %nyx_string* %4648, %nyx_string** %4649
  %4650 = load %nyx_string*, %nyx_string** %4649
  %4651 = getelementptr [1 x i8], [1 x i8]* @.str697, i32 0, i32 0
  %4652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %4651, i64 0)
  %4653 = call i1 @nyx_string_equals(%nyx_string* %4650, %nyx_string* %4652)
  br i1 %4653, label %then726, label %else727
then726:
  %4654 = getelementptr [5 x i8], [5 x i8]* @.str698, i32 0, i32 0
  %4655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %4654, i64 4)
  %4656 = call i8* @nyx_string_to_cstr(%nyx_string* %4655)
  %4657 = call %nyx_string* @nyx_getenv(i8* %4656)
  %4658 = alloca %nyx_string*
  store %nyx_string* %4657, %nyx_string** %4658
  %4659 = load %nyx_string*, %nyx_string** %4658
  %4660 = getelementptr [1 x i8], [1 x i8]* @.str699, i32 0, i32 0
  %4661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %4660, i64 0)
  %4662 = call i1 @nyx_string_equals(%nyx_string* %4659, %nyx_string* %4661)
  %4663 = xor i1 %4662, true
  br i1 %4663, label %then729, label %else730
then729:
  %4664 = load %nyx_string*, %nyx_string** %4658
  %4665 = getelementptr [6 x i8], [6 x i8]* @.str700, i32 0, i32 0
  %4666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %4665, i64 5)
  %4667 = call %nyx_string* @nyx_string_concat(%nyx_string* %4664, %nyx_string* %4666)
  store %nyx_string* %4667, %nyx_string** %4649
  br label %merge731
else730:
  br label %merge731
merge731:
  br label %merge728
else727:
  br label %merge728
merge728:
  %4668 = load %nyx_string*, %nyx_string** %4649
  %4669 = getelementptr [1 x i8], [1 x i8]* @.str701, i32 0, i32 0
  %4670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %4669, i64 0)
  %4671 = call i1 @nyx_string_equals(%nyx_string* %4668, %nyx_string* %4670)
  %4672 = xor i1 %4671, true
  br i1 %4672, label %then732, label %else733
then732:
  %4673 = load %nyx_string*, %nyx_string** %4649
  %4674 = getelementptr [9 x i8], [9 x i8]* @.str702, i32 0, i32 0
  %4675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %4674, i64 8)
  %4676 = call %nyx_string* @nyx_string_concat(%nyx_string* %4673, %nyx_string* %4675)
  %4677 = call i8* @nyx_string_to_cstr(%nyx_string* %4676)
  %4678 = call i1 @nyx_file_exists(i8* %4677)
  br i1 %4678, label %then735, label %else736
then735:
  %4679 = load %nyx_string*, %nyx_string** %4649
  %4680 = getelementptr [9 x i8], [9 x i8]* @.str703, i32 0, i32 0
  %4681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %4680, i64 8)
  %4682 = call %nyx_string* @nyx_string_concat(%nyx_string* %4679, %nyx_string* %4681)
  %4683 = call i8* @nyx_string_to_cstr(%nyx_string* %4682)
  %4684 = call %nyx_string* @nyx_read_file(i8* %4683)
  %4685 = alloca %nyx_string*
  store %nyx_string* %4684, %nyx_string** %4685
  %4686 = load %nyx_string*, %nyx_string** %4685
  %4687 = call %nyx_string* @nyx_string_trim(%nyx_string* %4686)
  ret %nyx_string* %4687
else736:
  br label %merge737
merge737:
  br label %merge734
else733:
  br label %merge734
merge734:
  %4688 = getelementptr [8 x i8], [8 x i8]* @.str704, i32 0, i32 0
  %4689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %4688, i64 7)
  %4690 = call i8* @nyx_string_to_cstr(%nyx_string* %4689)
  %4691 = call i1 @nyx_file_exists(i8* %4690)
  br i1 %4691, label %then738, label %else739
then738:
  %4692 = getelementptr [8 x i8], [8 x i8]* @.str705, i32 0, i32 0
  %4693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %4692, i64 7)
  %4694 = call i8* @nyx_string_to_cstr(%nyx_string* %4693)
  %4695 = call %nyx_string* @nyx_read_file(i8* %4694)
  %4696 = alloca %nyx_string*
  store %nyx_string* %4695, %nyx_string** %4696
  %4697 = load %nyx_string*, %nyx_string** %4696
  %4698 = call %nyx_string* @nyx_string_trim(%nyx_string* %4697)
  ret %nyx_string* %4698
else739:
  br label %merge740
merge740:
  %4699 = getelementptr [7 x i8], [7 x i8]* @.str706, i32 0, i32 0
  %4700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %4699, i64 6)
  ret %nyx_string* %4700
}

define internal %nyx_string* @report_template(
) {
  %4701 = getelementptr [51 x i8], [51 x i8]* @.str707, i32 0, i32 0
  %4702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %4701, i64 50)
  %4703 = alloca %nyx_string*
  store %nyx_string* %4702, %nyx_string** %4703
  %4704 = load %nyx_string*, %nyx_string** %4703
  %4705 = getelementptr [73 x i8], [73 x i8]* @.str708, i32 0, i32 0
  %4706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %4705, i64 72)
  %4707 = call %nyx_string* @nyx_string_concat(%nyx_string* %4704, %nyx_string* %4706)
  store %nyx_string* %4707, %nyx_string** %4703
  %4708 = load %nyx_string*, %nyx_string** %4703
  %4709 = getelementptr [88 x i8], [88 x i8]* @.str709, i32 0, i32 0
  %4710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %4709, i64 87)
  %4711 = call %nyx_string* @nyx_string_concat(%nyx_string* %4708, %nyx_string* %4710)
  store %nyx_string* %4711, %nyx_string** %4703
  %4712 = load %nyx_string*, %nyx_string** %4703
  %4713 = getelementptr [51 x i8], [51 x i8]* @.str710, i32 0, i32 0
  %4714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %4713, i64 50)
  %4715 = call %nyx_string* @nyx_string_concat(%nyx_string* %4712, %nyx_string* %4714)
  store %nyx_string* %4715, %nyx_string** %4703
  %4716 = load %nyx_string*, %nyx_string** %4703
  %4717 = getelementptr [90 x i8], [90 x i8]* @.str711, i32 0, i32 0
  %4718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %4717, i64 89)
  %4719 = call %nyx_string* @nyx_string_concat(%nyx_string* %4716, %nyx_string* %4718)
  store %nyx_string* %4719, %nyx_string** %4703
  %4720 = load %nyx_string*, %nyx_string** %4703
  %4721 = getelementptr [104 x i8], [104 x i8]* @.str712, i32 0, i32 0
  %4722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %4721, i64 103)
  %4723 = call %nyx_string* @nyx_string_concat(%nyx_string* %4720, %nyx_string* %4722)
  store %nyx_string* %4723, %nyx_string** %4703
  %4724 = load %nyx_string*, %nyx_string** %4703
  %4725 = getelementptr [99 x i8], [99 x i8]* @.str713, i32 0, i32 0
  %4726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %4725, i64 98)
  %4727 = call %nyx_string* @nyx_string_concat(%nyx_string* %4724, %nyx_string* %4726)
  store %nyx_string* %4727, %nyx_string** %4703
  %4728 = load %nyx_string*, %nyx_string** %4703
  %4729 = getelementptr [126 x i8], [126 x i8]* @.str714, i32 0, i32 0
  %4730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %4729, i64 125)
  %4731 = call %nyx_string* @nyx_string_concat(%nyx_string* %4728, %nyx_string* %4730)
  store %nyx_string* %4731, %nyx_string** %4703
  %4732 = load %nyx_string*, %nyx_string** %4703
  %4733 = getelementptr [21 x i8], [21 x i8]* @.str715, i32 0, i32 0
  %4734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %4733, i64 20)
  %4735 = call %nyx_string* @nyx_string_concat(%nyx_string* %4732, %nyx_string* %4734)
  %4736 = call %nyx_string* @toolchain_version()
  %4737 = call %nyx_string* @nyx_string_concat(%nyx_string* %4735, %nyx_string* %4736)
  %4738 = getelementptr [25 x i8], [25 x i8]* @.str716, i32 0, i32 0
  %4739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %4738, i64 24)
  %4740 = call %nyx_string* @nyx_string_concat(%nyx_string* %4737, %nyx_string* %4739)
  store %nyx_string* %4740, %nyx_string** %4703
  %4741 = load %nyx_string*, %nyx_string** %4703
  ret %nyx_string* %4741
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %4742 = getelementptr [12 x i8], [12 x i8]* @.str717, i32 0, i32 0
  %4743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %4742, i64 11)
  %4744 = alloca %nyx_string*
  store %nyx_string* %4743, %nyx_string** %4744
  %4745 = load i1, i1* %do_send.ptr
  %4746 = xor i1 %4745, true
  br i1 %4746, label %then741, label %else742
then741:
  %4747 = load %nyx_string*, %nyx_string** %4744
  %4748 = call i8* @nyx_string_to_cstr(%nyx_string* %4747)
  %4749 = call i1 @nyx_file_exists(i8* %4748)
  br i1 %4749, label %then744, label %else745
then744:
  %4750 = load %nyx_string*, %nyx_string** %4744
  %4751 = call i8* @nyx_string_to_cstr(%nyx_string* %4750)
  %4752 = call %nyx_string* @nyx_read_file(i8* %4751)
  %4753 = alloca %nyx_string*
  store %nyx_string* %4752, %nyx_string** %4753
  %4754 = load %nyx_string*, %nyx_string** %4753
  %4755 = call i64 @nyx_string_byte_length(%nyx_string* %4754)
  %4756 = icmp sge i64 %4755, 40
  br i1 %4756, label %then747, label %else748
then747:
  %4757 = getelementptr [80 x i8], [80 x i8]* @.str718, i32 0, i32 0
  %4758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %4757, i64 79)
  %4759 = call i8* @nyx_string_to_cstr(%nyx_string* %4758)
  call void @nyx_print_string(i8* %4759)
  %4760 = getelementptr [62 x i8], [62 x i8]* @.str719, i32 0, i32 0
  %4761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %4760, i64 61)
  %4762 = call i8* @nyx_string_to_cstr(%nyx_string* %4761)
  call void @nyx_print_string(i8* %4762)
  ret i1 1
else748:
  br label %merge749
merge749:
  br label %merge746
else745:
  br label %merge746
merge746:
  %4763 = load %nyx_string*, %nyx_string** %4744
  %4764 = call %nyx_string* @report_template()
  %4765 = call i8* @nyx_string_to_cstr(%nyx_string* %4763)
  %4766 = call i1 @nyx_write_file_safe(i8* %4765, %nyx_string* %4764)
  %4767 = getelementptr [78 x i8], [78 x i8]* @.str720, i32 0, i32 0
  %4768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %4767, i64 77)
  %4769 = call i8* @nyx_string_to_cstr(%nyx_string* %4768)
  call void @nyx_print_string(i8* %4769)
  %4770 = getelementptr [72 x i8], [72 x i8]* @.str721, i32 0, i32 0
  %4771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %4770, i64 71)
  %4772 = call i8* @nyx_string_to_cstr(%nyx_string* %4771)
  call void @nyx_print_string(i8* %4772)
  %4773 = getelementptr [53 x i8], [53 x i8]* @.str722, i32 0, i32 0
  %4774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %4773, i64 52)
  %4775 = call i8* @nyx_string_to_cstr(%nyx_string* %4774)
  call void @nyx_print_string(i8* %4775)
  ret i1 1
else742:
  br label %merge743
merge743:
  %4776 = load %nyx_string*, %nyx_string** %4744
  %4777 = alloca %nyx_string*
  store %nyx_string* %4776, %nyx_string** %4777
  %4778 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %4779 = getelementptr [1 x i8], [1 x i8]* @.str723, i32 0, i32 0
  %4780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %4779, i64 0)
  %4781 = call i1 @nyx_string_equals(%nyx_string* %4778, %nyx_string* %4780)
  %4782 = xor i1 %4781, true
  br i1 %4782, label %then750, label %else751
then750:
  %4783 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %4783, %nyx_string** %4777
  br label %merge752
else751:
  br label %merge752
merge752:
  %4784 = load %nyx_string*, %nyx_string** %4777
  %4785 = call i8* @nyx_string_to_cstr(%nyx_string* %4784)
  %4786 = call i1 @nyx_file_exists(i8* %4785)
  %4787 = xor i1 %4786, true
  br i1 %4787, label %then753, label %else754
then753:
  %4788 = getelementptr [18 x i8], [18 x i8]* @.str724, i32 0, i32 0
  %4789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %4788, i64 17)
  %4790 = load %nyx_string*, %nyx_string** %4777
  %4791 = call %nyx_string* @nyx_string_concat(%nyx_string* %4789, %nyx_string* %4790)
  %4792 = getelementptr [57 x i8], [57 x i8]* @.str725, i32 0, i32 0
  %4793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %4792, i64 56)
  %4794 = call %nyx_string* @nyx_string_concat(%nyx_string* %4791, %nyx_string* %4793)
  %4795 = call i8* @nyx_string_to_cstr(%nyx_string* %4794)
  call void @nyx_print_string(i8* %4795)
  ret i1 0
else754:
  br label %merge755
merge755:
  %4796 = load %nyx_string*, %nyx_string** %4777
  %4797 = call i8* @nyx_string_to_cstr(%nyx_string* %4796)
  %4798 = call %nyx_string* @nyx_read_file(i8* %4797)
  %4799 = alloca %nyx_string*
  store %nyx_string* %4798, %nyx_string** %4799
  %4800 = load %nyx_string*, %nyx_string** %4799
  %4801 = call i64 @nyx_string_byte_length(%nyx_string* %4800)
  %4802 = icmp slt i64 %4801, 40
  br i1 %4802, label %then756, label %else757
then756:
  %4803 = getelementptr [66 x i8], [66 x i8]* @.str726, i32 0, i32 0
  %4804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %4803, i64 65)
  %4805 = call i8* @nyx_string_to_cstr(%nyx_string* %4804)
  call void @nyx_print_string(i8* %4805)
  ret i1 0
else757:
  br label %merge758
merge758:
  %4806 = getelementptr [1 x i8], [1 x i8]* @.str727, i32 0, i32 0
  %4807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %4806, i64 0)
  %4808 = alloca %nyx_string*
  store %nyx_string* %4807, %nyx_string** %4808
  %4809 = getelementptr [5 x i8], [5 x i8]* @.str728, i32 0, i32 0
  %4810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %4809, i64 4)
  %4811 = call i8* @nyx_string_to_cstr(%nyx_string* %4810)
  %4812 = call %nyx_string* @nyx_getenv(i8* %4811)
  %4813 = alloca %nyx_string*
  store %nyx_string* %4812, %nyx_string** %4813
  %4814 = load %nyx_string*, %nyx_string** %4813
  %4815 = getelementptr [1 x i8], [1 x i8]* @.str729, i32 0, i32 0
  %4816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %4815, i64 0)
  %4817 = call i1 @nyx_string_equals(%nyx_string* %4814, %nyx_string* %4816)
  %4818 = xor i1 %4817, true
  br i1 %4818, label %then759, label %else760
then759:
  %4819 = load %nyx_string*, %nyx_string** %4813
  %4820 = getelementptr [15 x i8], [15 x i8]* @.str730, i32 0, i32 0
  %4821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %4820, i64 14)
  %4822 = call %nyx_string* @nyx_string_concat(%nyx_string* %4819, %nyx_string* %4821)
  %4823 = call i8* @nyx_string_to_cstr(%nyx_string* %4822)
  %4824 = call i1 @nyx_file_exists(i8* %4823)
  br i1 %4824, label %then762, label %else763
then762:
  %4825 = load %nyx_string*, %nyx_string** %4813
  %4826 = getelementptr [15 x i8], [15 x i8]* @.str731, i32 0, i32 0
  %4827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %4826, i64 14)
  %4828 = call %nyx_string* @nyx_string_concat(%nyx_string* %4825, %nyx_string* %4827)
  %4829 = call i8* @nyx_string_to_cstr(%nyx_string* %4828)
  %4830 = call %nyx_string* @nyx_read_file(i8* %4829)
  %4831 = alloca %nyx_string*
  store %nyx_string* %4830, %nyx_string** %4831
  %4832 = load %nyx_string*, %nyx_string** %4831
  %4833 = call %nyx_string* @nyx_string_trim(%nyx_string* %4832)
  store %nyx_string* %4833, %nyx_string** %4808
  br label %merge764
else763:
  br label %merge764
merge764:
  br label %merge761
else760:
  br label %merge761
merge761:
  %4834 = load %nyx_string*, %nyx_string** %4808
  %4835 = getelementptr [1 x i8], [1 x i8]* @.str732, i32 0, i32 0
  %4836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %4835, i64 0)
  %4837 = call i1 @nyx_string_equals(%nyx_string* %4834, %nyx_string* %4836)
  br i1 %4837, label %then765, label %else766
then765:
  %4838 = getelementptr [77 x i8], [77 x i8]* @.str733, i32 0, i32 0
  %4839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %4838, i64 76)
  %4840 = call i8* @nyx_string_to_cstr(%nyx_string* %4839)
  call void @nyx_print_string(i8* %4840)
  br label %merge767
else766:
  br label %merge767
merge767:
  %4841 = getelementptr [10 x i8], [10 x i8]* @.str734, i32 0, i32 0
  %4842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %4841, i64 9)
  %4843 = load %nyx_string*, %nyx_string** %4808
  %4844 = call i64 @kv_connect_auth(%nyx_string* %4842, i64 6380, %nyx_string* %4843)
  %4845 = alloca i64
  store i64 %4844, i64* %4845
  %4846 = load i64, i64* %4845
  %4847 = icmp slt i64 %4846, 0
  br i1 %4847, label %then768, label %else769
then768:
  %4848 = getelementptr [54 x i8], [54 x i8]* @.str735, i32 0, i32 0
  %4849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %4848, i64 53)
  %4850 = call i8* @nyx_string_to_cstr(%nyx_string* %4849)
  call void @nyx_print_string(i8* %4850)
  %4851 = getelementptr [22 x i8], [22 x i8]* @.str736, i32 0, i32 0
  %4852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %4851, i64 21)
  %4853 = load %nyx_string*, %nyx_string** %4777
  %4854 = call %nyx_string* @nyx_string_concat(%nyx_string* %4852, %nyx_string* %4853)
  %4855 = getelementptr [28 x i8], [28 x i8]* @.str737, i32 0, i32 0
  %4856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %4855, i64 27)
  %4857 = call %nyx_string* @nyx_string_concat(%nyx_string* %4854, %nyx_string* %4856)
  %4858 = call i8* @nyx_string_to_cstr(%nyx_string* %4857)
  call void @nyx_print_string(i8* %4858)
  %4859 = getelementptr [44 x i8], [44 x i8]* @.str738, i32 0, i32 0
  %4860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %4859, i64 43)
  %4861 = call i8* @nyx_string_to_cstr(%nyx_string* %4860)
  call void @nyx_print_string(i8* %4861)
  ret i1 0
else769:
  br label %merge770
merge770:
  %4862 = getelementptr [5 x i8], [5 x i8]* @.str739, i32 0, i32 0
  %4863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %4862, i64 4)
  %4864 = load %nyx_string*, %nyx_string** %4799
  %4865 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %4864)
  %4866 = call %nyx_string* @nyx_string_concat(%nyx_string* %4863, %nyx_string* %4865)
  %4867 = alloca %nyx_string*
  store %nyx_string* %4866, %nyx_string** %4867
  %4868 = load i64, i64* %4845
  %4869 = getelementptr [11 x i8], [11 x i8]* @.str740, i32 0, i32 0
  %4870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %4869, i64 10)
  %4871 = load %nyx_string*, %nyx_string** %4867
  %4872 = call i64 @kv_rpush(i64 %4868, %nyx_string* %4870, %nyx_string* %4871)
  %4873 = alloca i64
  store i64 %4872, i64* %4873
  %4874 = load i64, i64* %4845
  %4875 = call i64 @kv_close(i64 %4874)
  %4876 = load i64, i64* %4873
  %4877 = icmp sle i64 %4876, 0
  br i1 %4877, label %then771, label %else772
then771:
  %4878 = getelementptr [37 x i8], [37 x i8]* @.str741, i32 0, i32 0
  %4879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %4878, i64 36)
  %4880 = call i8* @nyx_string_to_cstr(%nyx_string* %4879)
  call void @nyx_print_string(i8* %4880)
  ret i1 0
else772:
  br label %merge773
merge773:
  %4881 = getelementptr [55 x i8], [55 x i8]* @.str742, i32 0, i32 0
  %4882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %4881, i64 54)
  %4883 = load i64, i64* %4873
  %4884 = call %nyx_string* @nyx_string_from_int(i64 %4883)
  %4885 = call %nyx_string* @nyx_string_concat(%nyx_string* %4882, %nyx_string* %4884)
  %4886 = getelementptr [15 x i8], [15 x i8]* @.str743, i32 0, i32 0
  %4887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %4886, i64 14)
  %4888 = call %nyx_string* @nyx_string_concat(%nyx_string* %4885, %nyx_string* %4887)
  %4889 = call i8* @nyx_string_to_cstr(%nyx_string* %4888)
  call void @nyx_print_string(i8* %4889)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %4890 = getelementptr [9 x i8], [9 x i8]* @.str744, i32 0, i32 0
  %4891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %4890, i64 8)
  %4892 = call i8* @nyx_string_to_cstr(%nyx_string* %4891)
  %4893 = call %nyx_string* @nyx_getenv(i8* %4892)
  %4894 = alloca %nyx_string*
  store %nyx_string* %4893, %nyx_string** %4894
  %4895 = load %nyx_string*, %nyx_string** %4894
  %4896 = getelementptr [1 x i8], [1 x i8]* @.str745, i32 0, i32 0
  %4897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %4896, i64 0)
  %4898 = call i1 @nyx_string_equals(%nyx_string* %4895, %nyx_string* %4897)
  br i1 %4898, label %then774, label %else775
then774:
  %4899 = getelementptr [5 x i8], [5 x i8]* @.str746, i32 0, i32 0
  %4900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %4899, i64 4)
  %4901 = call i8* @nyx_string_to_cstr(%nyx_string* %4900)
  %4902 = call %nyx_string* @nyx_getenv(i8* %4901)
  %4903 = alloca %nyx_string*
  store %nyx_string* %4902, %nyx_string** %4903
  %4904 = load %nyx_string*, %nyx_string** %4903
  %4905 = getelementptr [6 x i8], [6 x i8]* @.str747, i32 0, i32 0
  %4906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %4905, i64 5)
  %4907 = call %nyx_string* @nyx_string_concat(%nyx_string* %4904, %nyx_string* %4906)
  %4908 = alloca %nyx_string*
  store %nyx_string* %4907, %nyx_string** %4908
  %4909 = alloca i1
  store i1 false, i1* %4909
  %4910 = load %nyx_string*, %nyx_string** %4903
  %4911 = getelementptr [1 x i8], [1 x i8]* @.str748, i32 0, i32 0
  %4912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %4911, i64 0)
  %4913 = call i1 @nyx_string_equals(%nyx_string* %4910, %nyx_string* %4912)
  %4914 = xor i1 %4913, true
  br i1 %4914, label %sc_and_rhs777, label %sc_and_end778
sc_and_rhs777:
  %4915 = load %nyx_string*, %nyx_string** %4908
  %4916 = getelementptr [5 x i8], [5 x i8]* @.str749, i32 0, i32 0
  %4917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %4916, i64 4)
  %4918 = call %nyx_string* @nyx_string_concat(%nyx_string* %4915, %nyx_string* %4917)
  %4919 = call i8* @nyx_string_to_cstr(%nyx_string* %4918)
  %4920 = call i1 @nyx_file_exists(i8* %4919)
  store i1 %4920, i1* %4909
  br label %sc_and_end778
sc_and_end778:
  %4921 = load i1, i1* %4909
  br i1 %4921, label %then779, label %else780
then779:
  %4922 = load %nyx_string*, %nyx_string** %4908
  store %nyx_string* %4922, %nyx_string** %4894
  br label %merge781
else780:
  br label %merge781
merge781:
  br label %merge776
else775:
  br label %merge776
merge776:
  %4923 = load %nyx_string*, %nyx_string** %4894
  %4924 = getelementptr [1 x i8], [1 x i8]* @.str750, i32 0, i32 0
  %4925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %4924, i64 0)
  %4926 = call i1 @nyx_string_equals(%nyx_string* %4923, %nyx_string* %4925)
  br i1 %4926, label %then782, label %else783
then782:
  %4927 = getelementptr [4 x i8], [4 x i8]* @.str751, i32 0, i32 0
  %4928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %4927, i64 3)
  %4929 = call i8* @nyx_string_to_cstr(%nyx_string* %4928)
  %4930 = call i1 @nyx_file_exists(i8* %4929)
  br i1 %4930, label %then785, label %else786
then785:
  %4931 = getelementptr [2 x i8], [2 x i8]* @.str752, i32 0, i32 0
  %4932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %4931, i64 1)
  store %nyx_string* %4932, %nyx_string** %4894
  br label %merge787
else786:
  br label %merge787
merge787:
  br label %merge784
else783:
  br label %merge784
merge784:
  %4933 = load %nyx_string*, %nyx_string** %4894
  %4934 = getelementptr [1 x i8], [1 x i8]* @.str753, i32 0, i32 0
  %4935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %4934, i64 0)
  %4936 = call i1 @nyx_string_equals(%nyx_string* %4933, %nyx_string* %4935)
  br i1 %4936, label %then788, label %else789
then788:
  %4937 = getelementptr [1 x i8], [1 x i8]* @.str754, i32 0, i32 0
  %4938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %4937, i64 0)
  ret %nyx_string* %4938
else789:
  br label %merge790
merge790:
  %4939 = load %nyx_string*, %nyx_string** %4894
  %4940 = getelementptr [5 x i8], [5 x i8]* @.str755, i32 0, i32 0
  %4941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %4940, i64 4)
  %4942 = call %nyx_string* @nyx_string_concat(%nyx_string* %4939, %nyx_string* %4941)
  ret %nyx_string* %4942
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %4943 = alloca i1
  store i1 true, i1* %4943
  %4944 = alloca i1
  store i1 true, i1* %4944
  %4945 = alloca i1
  store i1 true, i1* %4945
  %4946 = load %nyx_string*, %nyx_string** %name.ptr
  %4947 = getelementptr [5 x i8], [5 x i8]* @.str756, i32 0, i32 0
  %4948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %4947, i64 4)
  %4949 = call i1 @nyx_string_equals(%nyx_string* %4946, %nyx_string* %4948)
  br i1 %4949, label %sc_or_end792, label %sc_or_rhs791
sc_or_rhs791:
  %4950 = load %nyx_string*, %nyx_string** %name.ptr
  %4951 = getelementptr [4 x i8], [4 x i8]* @.str757, i32 0, i32 0
  %4952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %4951, i64 3)
  %4953 = call i1 @nyx_string_equals(%nyx_string* %4950, %nyx_string* %4952)
  store i1 %4953, i1* %4945
  br label %sc_or_end792
sc_or_end792:
  %4954 = load i1, i1* %4945
  br i1 %4954, label %sc_or_end794, label %sc_or_rhs793
sc_or_rhs793:
  %4955 = load %nyx_string*, %nyx_string** %name.ptr
  %4956 = getelementptr [10 x i8], [10 x i8]* @.str758, i32 0, i32 0
  %4957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %4956, i64 9)
  %4958 = call i1 @nyx_string_equals(%nyx_string* %4955, %nyx_string* %4957)
  store i1 %4958, i1* %4944
  br label %sc_or_end794
sc_or_end794:
  %4959 = load i1, i1* %4944
  br i1 %4959, label %sc_or_end796, label %sc_or_rhs795
sc_or_rhs795:
  %4960 = load %nyx_string*, %nyx_string** %name.ptr
  %4961 = getelementptr [7 x i8], [7 x i8]* @.str759, i32 0, i32 0
  %4962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %4961, i64 6)
  %4963 = call i1 @nyx_string_equals(%nyx_string* %4960, %nyx_string* %4962)
  store i1 %4963, i1* %4943
  br label %sc_or_end796
sc_or_end796:
  %4964 = load i1, i1* %4943
  br i1 %4964, label %then797, label %else798
then797:
  %4965 = getelementptr [11 x i8], [11 x i8]* @.str760, i32 0, i32 0
  %4966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %4965, i64 10)
  ret %nyx_string* %4966
else798:
  br label %merge799
merge799:
  %4967 = alloca i1
  store i1 true, i1* %4967
  %4968 = alloca i1
  store i1 true, i1* %4968
  %4969 = load %nyx_string*, %nyx_string** %name.ptr
  %4970 = getelementptr [7 x i8], [7 x i8]* @.str761, i32 0, i32 0
  %4971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %4970, i64 6)
  %4972 = call i1 @nyx_string_equals(%nyx_string* %4969, %nyx_string* %4971)
  br i1 %4972, label %sc_or_end801, label %sc_or_rhs800
sc_or_rhs800:
  %4973 = load %nyx_string*, %nyx_string** %name.ptr
  %4974 = getelementptr [3 x i8], [3 x i8]* @.str762, i32 0, i32 0
  %4975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %4974, i64 2)
  %4976 = call i1 @nyx_string_equals(%nyx_string* %4973, %nyx_string* %4975)
  store i1 %4976, i1* %4968
  br label %sc_or_end801
sc_or_end801:
  %4977 = load i1, i1* %4968
  br i1 %4977, label %sc_or_end803, label %sc_or_rhs802
sc_or_rhs802:
  %4978 = load %nyx_string*, %nyx_string** %name.ptr
  %4979 = getelementptr [9 x i8], [9 x i8]* @.str763, i32 0, i32 0
  %4980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %4979, i64 8)
  %4981 = call i1 @nyx_string_equals(%nyx_string* %4978, %nyx_string* %4980)
  store i1 %4981, i1* %4967
  br label %sc_or_end803
sc_or_end803:
  %4982 = load i1, i1* %4967
  br i1 %4982, label %then804, label %else805
then804:
  %4983 = getelementptr [20 x i8], [20 x i8]* @.str764, i32 0, i32 0
  %4984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %4983, i64 19)
  ret %nyx_string* %4984
else805:
  br label %merge806
merge806:
  %4985 = alloca i1
  store i1 true, i1* %4985
  %4986 = alloca i1
  store i1 true, i1* %4986
  %4987 = alloca i1
  store i1 true, i1* %4987
  %4988 = alloca i1
  store i1 true, i1* %4988
  %4989 = alloca i1
  store i1 true, i1* %4989
  %4990 = load %nyx_string*, %nyx_string** %name.ptr
  %4991 = getelementptr [5 x i8], [5 x i8]* @.str765, i32 0, i32 0
  %4992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %4991, i64 4)
  %4993 = call i1 @nyx_string_equals(%nyx_string* %4990, %nyx_string* %4992)
  br i1 %4993, label %sc_or_end808, label %sc_or_rhs807
sc_or_rhs807:
  %4994 = load %nyx_string*, %nyx_string** %name.ptr
  %4995 = getelementptr [8 x i8], [8 x i8]* @.str766, i32 0, i32 0
  %4996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %4995, i64 7)
  %4997 = call i1 @nyx_string_equals(%nyx_string* %4994, %nyx_string* %4996)
  store i1 %4997, i1* %4989
  br label %sc_or_end808
sc_or_end808:
  %4998 = load i1, i1* %4989
  br i1 %4998, label %sc_or_end810, label %sc_or_rhs809
sc_or_rhs809:
  %4999 = load %nyx_string*, %nyx_string** %name.ptr
  %5000 = getelementptr [5 x i8], [5 x i8]* @.str767, i32 0, i32 0
  %5001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %5000, i64 4)
  %5002 = call i1 @nyx_string_equals(%nyx_string* %4999, %nyx_string* %5001)
  store i1 %5002, i1* %4988
  br label %sc_or_end810
sc_or_end810:
  %5003 = load i1, i1* %4988
  br i1 %5003, label %sc_or_end812, label %sc_or_rhs811
sc_or_rhs811:
  %5004 = load %nyx_string*, %nyx_string** %name.ptr
  %5005 = getelementptr [4 x i8], [4 x i8]* @.str768, i32 0, i32 0
  %5006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %5005, i64 3)
  %5007 = call i1 @nyx_string_equals(%nyx_string* %5004, %nyx_string* %5006)
  store i1 %5007, i1* %4987
  br label %sc_or_end812
sc_or_end812:
  %5008 = load i1, i1* %4987
  br i1 %5008, label %sc_or_end814, label %sc_or_rhs813
sc_or_rhs813:
  %5009 = load %nyx_string*, %nyx_string** %name.ptr
  %5010 = getelementptr [7 x i8], [7 x i8]* @.str769, i32 0, i32 0
  %5011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %5010, i64 6)
  %5012 = call i1 @nyx_string_equals(%nyx_string* %5009, %nyx_string* %5011)
  store i1 %5012, i1* %4986
  br label %sc_or_end814
sc_or_end814:
  %5013 = load i1, i1* %4986
  br i1 %5013, label %sc_or_end816, label %sc_or_rhs815
sc_or_rhs815:
  %5014 = load %nyx_string*, %nyx_string** %name.ptr
  %5015 = getelementptr [9 x i8], [9 x i8]* @.str770, i32 0, i32 0
  %5016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %5015, i64 8)
  %5017 = call i1 @nyx_string_equals(%nyx_string* %5014, %nyx_string* %5016)
  store i1 %5017, i1* %4985
  br label %sc_or_end816
sc_or_end816:
  %5018 = load i1, i1* %4985
  br i1 %5018, label %then817, label %else818
then817:
  %5019 = getelementptr [23 x i8], [23 x i8]* @.str771, i32 0, i32 0
  %5020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %5019, i64 22)
  ret %nyx_string* %5020
else818:
  br label %merge819
merge819:
  %5021 = alloca i1
  store i1 true, i1* %5021
  %5022 = alloca i1
  store i1 true, i1* %5022
  %5023 = alloca i1
  store i1 true, i1* %5023
  %5024 = load %nyx_string*, %nyx_string** %name.ptr
  %5025 = getelementptr [3 x i8], [3 x i8]* @.str772, i32 0, i32 0
  %5026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %5025, i64 2)
  %5027 = call i1 @nyx_string_equals(%nyx_string* %5024, %nyx_string* %5026)
  br i1 %5027, label %sc_or_end821, label %sc_or_rhs820
sc_or_rhs820:
  %5028 = load %nyx_string*, %nyx_string** %name.ptr
  %5029 = getelementptr [5 x i8], [5 x i8]* @.str773, i32 0, i32 0
  %5030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %5029, i64 4)
  %5031 = call i1 @nyx_string_equals(%nyx_string* %5028, %nyx_string* %5030)
  store i1 %5031, i1* %5023
  br label %sc_or_end821
sc_or_end821:
  %5032 = load i1, i1* %5023
  br i1 %5032, label %sc_or_end823, label %sc_or_rhs822
sc_or_rhs822:
  %5033 = load %nyx_string*, %nyx_string** %name.ptr
  %5034 = getelementptr [3 x i8], [3 x i8]* @.str774, i32 0, i32 0
  %5035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %5034, i64 2)
  %5036 = call i1 @nyx_string_equals(%nyx_string* %5033, %nyx_string* %5035)
  store i1 %5036, i1* %5022
  br label %sc_or_end823
sc_or_end823:
  %5037 = load i1, i1* %5022
  br i1 %5037, label %sc_or_end825, label %sc_or_rhs824
sc_or_rhs824:
  %5038 = load %nyx_string*, %nyx_string** %name.ptr
  %5039 = getelementptr [5 x i8], [5 x i8]* @.str775, i32 0, i32 0
  %5040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %5039, i64 4)
  %5041 = call i1 @nyx_string_equals(%nyx_string* %5038, %nyx_string* %5040)
  store i1 %5041, i1* %5021
  br label %sc_or_end825
sc_or_end825:
  %5042 = load i1, i1* %5021
  br i1 %5042, label %then826, label %else827
then826:
  %5043 = getelementptr [15 x i8], [15 x i8]* @.str776, i32 0, i32 0
  %5044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %5043, i64 14)
  ret %nyx_string* %5044
else827:
  br label %merge828
merge828:
  %5045 = alloca i1
  store i1 true, i1* %5045
  %5046 = alloca i1
  store i1 true, i1* %5046
  %5047 = alloca i1
  store i1 true, i1* %5047
  %5048 = alloca i1
  store i1 true, i1* %5048
  %5049 = alloca i1
  store i1 true, i1* %5049
  %5050 = load %nyx_string*, %nyx_string** %name.ptr
  %5051 = getelementptr [4 x i8], [4 x i8]* @.str777, i32 0, i32 0
  %5052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %5051, i64 3)
  %5053 = call i1 @nyx_string_equals(%nyx_string* %5050, %nyx_string* %5052)
  br i1 %5053, label %sc_or_end830, label %sc_or_rhs829
sc_or_rhs829:
  %5054 = load %nyx_string*, %nyx_string** %name.ptr
  %5055 = getelementptr [4 x i8], [4 x i8]* @.str778, i32 0, i32 0
  %5056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %5055, i64 3)
  %5057 = call i1 @nyx_string_equals(%nyx_string* %5054, %nyx_string* %5056)
  store i1 %5057, i1* %5049
  br label %sc_or_end830
sc_or_end830:
  %5058 = load i1, i1* %5049
  br i1 %5058, label %sc_or_end832, label %sc_or_rhs831
sc_or_rhs831:
  %5059 = load %nyx_string*, %nyx_string** %name.ptr
  %5060 = getelementptr [4 x i8], [4 x i8]* @.str779, i32 0, i32 0
  %5061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %5060, i64 3)
  %5062 = call i1 @nyx_string_equals(%nyx_string* %5059, %nyx_string* %5061)
  store i1 %5062, i1* %5048
  br label %sc_or_end832
sc_or_end832:
  %5063 = load i1, i1* %5048
  br i1 %5063, label %sc_or_end834, label %sc_or_rhs833
sc_or_rhs833:
  %5064 = load %nyx_string*, %nyx_string** %name.ptr
  %5065 = getelementptr [6 x i8], [6 x i8]* @.str780, i32 0, i32 0
  %5066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %5065, i64 5)
  %5067 = call i1 @nyx_string_equals(%nyx_string* %5064, %nyx_string* %5066)
  store i1 %5067, i1* %5047
  br label %sc_or_end834
sc_or_end834:
  %5068 = load i1, i1* %5047
  br i1 %5068, label %sc_or_end836, label %sc_or_rhs835
sc_or_rhs835:
  %5069 = load %nyx_string*, %nyx_string** %name.ptr
  %5070 = getelementptr [4 x i8], [4 x i8]* @.str781, i32 0, i32 0
  %5071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %5070, i64 3)
  %5072 = call i1 @nyx_string_equals(%nyx_string* %5069, %nyx_string* %5071)
  store i1 %5072, i1* %5046
  br label %sc_or_end836
sc_or_end836:
  %5073 = load i1, i1* %5046
  br i1 %5073, label %sc_or_end838, label %sc_or_rhs837
sc_or_rhs837:
  %5074 = load %nyx_string*, %nyx_string** %name.ptr
  %5075 = getelementptr [4 x i8], [4 x i8]* @.str782, i32 0, i32 0
  %5076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %5075, i64 3)
  %5077 = call i1 @nyx_string_equals(%nyx_string* %5074, %nyx_string* %5076)
  store i1 %5077, i1* %5045
  br label %sc_or_end838
sc_or_end838:
  %5078 = load i1, i1* %5045
  br i1 %5078, label %then839, label %else840
then839:
  %5079 = getelementptr [4 x i8], [4 x i8]* @.str783, i32 0, i32 0
  %5080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %5079, i64 3)
  ret %nyx_string* %5080
else840:
  br label %merge841
merge841:
  %5081 = alloca i1
  store i1 true, i1* %5081
  %5082 = alloca i1
  store i1 true, i1* %5082
  %5083 = alloca i1
  store i1 true, i1* %5083
  %5084 = alloca i1
  store i1 true, i1* %5084
  %5085 = load %nyx_string*, %nyx_string** %name.ptr
  %5086 = getelementptr [7 x i8], [7 x i8]* @.str784, i32 0, i32 0
  %5087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %5086, i64 6)
  %5088 = call i1 @nyx_string_equals(%nyx_string* %5085, %nyx_string* %5087)
  br i1 %5088, label %sc_or_end843, label %sc_or_rhs842
sc_or_rhs842:
  %5089 = load %nyx_string*, %nyx_string** %name.ptr
  %5090 = getelementptr [8 x i8], [8 x i8]* @.str785, i32 0, i32 0
  %5091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %5090, i64 7)
  %5092 = call i1 @nyx_string_equals(%nyx_string* %5089, %nyx_string* %5091)
  store i1 %5092, i1* %5084
  br label %sc_or_end843
sc_or_end843:
  %5093 = load i1, i1* %5084
  br i1 %5093, label %sc_or_end845, label %sc_or_rhs844
sc_or_rhs844:
  %5094 = load %nyx_string*, %nyx_string** %name.ptr
  %5095 = getelementptr [10 x i8], [10 x i8]* @.str786, i32 0, i32 0
  %5096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %5095, i64 9)
  %5097 = call i1 @nyx_string_equals(%nyx_string* %5094, %nyx_string* %5096)
  store i1 %5097, i1* %5083
  br label %sc_or_end845
sc_or_end845:
  %5098 = load i1, i1* %5083
  br i1 %5098, label %sc_or_end847, label %sc_or_rhs846
sc_or_rhs846:
  %5099 = load %nyx_string*, %nyx_string** %name.ptr
  %5100 = getelementptr [5 x i8], [5 x i8]* @.str787, i32 0, i32 0
  %5101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %5100, i64 4)
  %5102 = call i1 @nyx_string_equals(%nyx_string* %5099, %nyx_string* %5101)
  store i1 %5102, i1* %5082
  br label %sc_or_end847
sc_or_end847:
  %5103 = load i1, i1* %5082
  br i1 %5103, label %sc_or_end849, label %sc_or_rhs848
sc_or_rhs848:
  %5104 = load %nyx_string*, %nyx_string** %name.ptr
  %5105 = getelementptr [6 x i8], [6 x i8]* @.str788, i32 0, i32 0
  %5106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %5105, i64 5)
  %5107 = call i1 @nyx_string_equals(%nyx_string* %5104, %nyx_string* %5106)
  store i1 %5107, i1* %5081
  br label %sc_or_end849
sc_or_end849:
  %5108 = load i1, i1* %5081
  br i1 %5108, label %then850, label %else851
then850:
  %5109 = getelementptr [13 x i8], [13 x i8]* @.str789, i32 0, i32 0
  %5110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %5109, i64 12)
  ret %nyx_string* %5110
else851:
  br label %merge852
merge852:
  %5111 = alloca i1
  store i1 true, i1* %5111
  %5112 = alloca i1
  store i1 true, i1* %5112
  %5113 = alloca i1
  store i1 true, i1* %5113
  %5114 = alloca i1
  store i1 true, i1* %5114
  %5115 = load %nyx_string*, %nyx_string** %name.ptr
  %5116 = getelementptr [7 x i8], [7 x i8]* @.str790, i32 0, i32 0
  %5117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %5116, i64 6)
  %5118 = call i1 @nyx_string_equals(%nyx_string* %5115, %nyx_string* %5117)
  br i1 %5118, label %sc_or_end854, label %sc_or_rhs853
sc_or_rhs853:
  %5119 = load %nyx_string*, %nyx_string** %name.ptr
  %5120 = getelementptr [4 x i8], [4 x i8]* @.str791, i32 0, i32 0
  %5121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %5120, i64 3)
  %5122 = call i1 @nyx_string_equals(%nyx_string* %5119, %nyx_string* %5121)
  store i1 %5122, i1* %5114
  br label %sc_or_end854
sc_or_end854:
  %5123 = load i1, i1* %5114
  br i1 %5123, label %sc_or_end856, label %sc_or_rhs855
sc_or_rhs855:
  %5124 = load %nyx_string*, %nyx_string** %name.ptr
  %5125 = getelementptr [5 x i8], [5 x i8]* @.str792, i32 0, i32 0
  %5126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %5125, i64 4)
  %5127 = call i1 @nyx_string_equals(%nyx_string* %5124, %nyx_string* %5126)
  store i1 %5127, i1* %5113
  br label %sc_or_end856
sc_or_end856:
  %5128 = load i1, i1* %5113
  br i1 %5128, label %sc_or_end858, label %sc_or_rhs857
sc_or_rhs857:
  %5129 = load %nyx_string*, %nyx_string** %name.ptr
  %5130 = getelementptr [7 x i8], [7 x i8]* @.str793, i32 0, i32 0
  %5131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %5130, i64 6)
  %5132 = call i1 @nyx_string_equals(%nyx_string* %5129, %nyx_string* %5131)
  store i1 %5132, i1* %5112
  br label %sc_or_end858
sc_or_end858:
  %5133 = load i1, i1* %5112
  br i1 %5133, label %sc_or_end860, label %sc_or_rhs859
sc_or_rhs859:
  %5134 = load %nyx_string*, %nyx_string** %name.ptr
  %5135 = getelementptr [5 x i8], [5 x i8]* @.str794, i32 0, i32 0
  %5136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %5135, i64 4)
  %5137 = call i1 @nyx_string_equals(%nyx_string* %5134, %nyx_string* %5136)
  store i1 %5137, i1* %5111
  br label %sc_or_end860
sc_or_end860:
  %5138 = load i1, i1* %5111
  br i1 %5138, label %then861, label %else862
then861:
  %5139 = getelementptr [19 x i8], [19 x i8]* @.str795, i32 0, i32 0
  %5140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %5139, i64 18)
  ret %nyx_string* %5140
else862:
  br label %merge863
merge863:
  %5141 = alloca i1
  store i1 true, i1* %5141
  %5142 = load %nyx_string*, %nyx_string** %name.ptr
  %5143 = getelementptr [5 x i8], [5 x i8]* @.str796, i32 0, i32 0
  %5144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %5143, i64 4)
  %5145 = call i1 @nyx_string_equals(%nyx_string* %5142, %nyx_string* %5144)
  br i1 %5145, label %sc_or_end865, label %sc_or_rhs864
sc_or_rhs864:
  %5146 = load %nyx_string*, %nyx_string** %name.ptr
  %5147 = getelementptr [9 x i8], [9 x i8]* @.str797, i32 0, i32 0
  %5148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %5147, i64 8)
  %5149 = call i1 @nyx_string_equals(%nyx_string* %5146, %nyx_string* %5148)
  store i1 %5149, i1* %5141
  br label %sc_or_end865
sc_or_end865:
  %5150 = load i1, i1* %5141
  br i1 %5150, label %then866, label %else867
then866:
  %5151 = getelementptr [7 x i8], [7 x i8]* @.str798, i32 0, i32 0
  %5152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %5151, i64 6)
  ret %nyx_string* %5152
else867:
  br label %merge868
merge868:
  %5153 = alloca i1
  store i1 true, i1* %5153
  %5154 = alloca i1
  store i1 true, i1* %5154
  %5155 = alloca i1
  store i1 true, i1* %5155
  %5156 = load %nyx_string*, %nyx_string** %name.ptr
  %5157 = getelementptr [7 x i8], [7 x i8]* @.str799, i32 0, i32 0
  %5158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %5157, i64 6)
  %5159 = call i1 @nyx_string_equals(%nyx_string* %5156, %nyx_string* %5158)
  br i1 %5159, label %sc_or_end870, label %sc_or_rhs869
sc_or_rhs869:
  %5160 = load %nyx_string*, %nyx_string** %name.ptr
  %5161 = getelementptr [8 x i8], [8 x i8]* @.str800, i32 0, i32 0
  %5162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %5161, i64 7)
  %5163 = call i1 @nyx_string_equals(%nyx_string* %5160, %nyx_string* %5162)
  store i1 %5163, i1* %5155
  br label %sc_or_end870
sc_or_end870:
  %5164 = load i1, i1* %5155
  br i1 %5164, label %sc_or_end872, label %sc_or_rhs871
sc_or_rhs871:
  %5165 = load %nyx_string*, %nyx_string** %name.ptr
  %5166 = getelementptr [14 x i8], [14 x i8]* @.str801, i32 0, i32 0
  %5167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %5166, i64 13)
  %5168 = call i1 @nyx_string_equals(%nyx_string* %5165, %nyx_string* %5167)
  store i1 %5168, i1* %5154
  br label %sc_or_end872
sc_or_end872:
  %5169 = load i1, i1* %5154
  br i1 %5169, label %sc_or_end874, label %sc_or_rhs873
sc_or_rhs873:
  %5170 = load %nyx_string*, %nyx_string** %name.ptr
  %5171 = getelementptr [6 x i8], [6 x i8]* @.str802, i32 0, i32 0
  %5172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %5171, i64 5)
  %5173 = call i1 @nyx_string_equals(%nyx_string* %5170, %nyx_string* %5172)
  store i1 %5173, i1* %5153
  br label %sc_or_end874
sc_or_end874:
  %5174 = load i1, i1* %5153
  br i1 %5174, label %then875, label %else876
then875:
  %5175 = getelementptr [16 x i8], [16 x i8]* @.str803, i32 0, i32 0
  %5176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %5175, i64 15)
  ret %nyx_string* %5176
else876:
  br label %merge877
merge877:
  %5177 = alloca i1
  store i1 true, i1* %5177
  %5178 = alloca i1
  store i1 true, i1* %5178
  %5179 = alloca i1
  store i1 true, i1* %5179
  %5180 = alloca i1
  store i1 true, i1* %5180
  %5181 = alloca i1
  store i1 true, i1* %5181
  %5182 = alloca i1
  store i1 true, i1* %5182
  %5183 = alloca i1
  store i1 true, i1* %5183
  %5184 = load %nyx_string*, %nyx_string** %name.ptr
  %5185 = getelementptr [4 x i8], [4 x i8]* @.str804, i32 0, i32 0
  %5186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %5185, i64 3)
  %5187 = call i1 @nyx_string_equals(%nyx_string* %5184, %nyx_string* %5186)
  br i1 %5187, label %sc_or_end879, label %sc_or_rhs878
sc_or_rhs878:
  %5188 = load %nyx_string*, %nyx_string** %name.ptr
  %5189 = getelementptr [6 x i8], [6 x i8]* @.str805, i32 0, i32 0
  %5190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %5189, i64 5)
  %5191 = call i1 @nyx_string_equals(%nyx_string* %5188, %nyx_string* %5190)
  store i1 %5191, i1* %5183
  br label %sc_or_end879
sc_or_end879:
  %5192 = load i1, i1* %5183
  br i1 %5192, label %sc_or_end881, label %sc_or_rhs880
sc_or_rhs880:
  %5193 = load %nyx_string*, %nyx_string** %name.ptr
  %5194 = getelementptr [11 x i8], [11 x i8]* @.str806, i32 0, i32 0
  %5195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %5194, i64 10)
  %5196 = call i1 @nyx_string_equals(%nyx_string* %5193, %nyx_string* %5195)
  store i1 %5196, i1* %5182
  br label %sc_or_end881
sc_or_end881:
  %5197 = load i1, i1* %5182
  br i1 %5197, label %sc_or_end883, label %sc_or_rhs882
sc_or_rhs882:
  %5198 = load %nyx_string*, %nyx_string** %name.ptr
  %5199 = getelementptr [6 x i8], [6 x i8]* @.str807, i32 0, i32 0
  %5200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %5199, i64 5)
  %5201 = call i1 @nyx_string_equals(%nyx_string* %5198, %nyx_string* %5200)
  store i1 %5201, i1* %5181
  br label %sc_or_end883
sc_or_end883:
  %5202 = load i1, i1* %5181
  br i1 %5202, label %sc_or_end885, label %sc_or_rhs884
sc_or_rhs884:
  %5203 = load %nyx_string*, %nyx_string** %name.ptr
  %5204 = getelementptr [9 x i8], [9 x i8]* @.str808, i32 0, i32 0
  %5205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %5204, i64 8)
  %5206 = call i1 @nyx_string_equals(%nyx_string* %5203, %nyx_string* %5205)
  store i1 %5206, i1* %5180
  br label %sc_or_end885
sc_or_end885:
  %5207 = load i1, i1* %5180
  br i1 %5207, label %sc_or_end887, label %sc_or_rhs886
sc_or_rhs886:
  %5208 = load %nyx_string*, %nyx_string** %name.ptr
  %5209 = getelementptr [14 x i8], [14 x i8]* @.str809, i32 0, i32 0
  %5210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %5209, i64 13)
  %5211 = call i1 @nyx_string_equals(%nyx_string* %5208, %nyx_string* %5210)
  store i1 %5211, i1* %5179
  br label %sc_or_end887
sc_or_end887:
  %5212 = load i1, i1* %5179
  br i1 %5212, label %sc_or_end889, label %sc_or_rhs888
sc_or_rhs888:
  %5213 = load %nyx_string*, %nyx_string** %name.ptr
  %5214 = getelementptr [6 x i8], [6 x i8]* @.str810, i32 0, i32 0
  %5215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %5214, i64 5)
  %5216 = call i1 @nyx_string_equals(%nyx_string* %5213, %nyx_string* %5215)
  store i1 %5216, i1* %5178
  br label %sc_or_end889
sc_or_end889:
  %5217 = load i1, i1* %5178
  br i1 %5217, label %sc_or_end891, label %sc_or_rhs890
sc_or_rhs890:
  %5218 = load %nyx_string*, %nyx_string** %name.ptr
  %5219 = getelementptr [7 x i8], [7 x i8]* @.str811, i32 0, i32 0
  %5220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %5219, i64 6)
  %5221 = call i1 @nyx_string_equals(%nyx_string* %5218, %nyx_string* %5220)
  store i1 %5221, i1* %5177
  br label %sc_or_end891
sc_or_end891:
  %5222 = load i1, i1* %5177
  br i1 %5222, label %then892, label %else893
then892:
  %5223 = getelementptr [26 x i8], [26 x i8]* @.str812, i32 0, i32 0
  %5224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %5223, i64 25)
  ret %nyx_string* %5224
else893:
  br label %merge894
merge894:
  %5225 = alloca i1
  store i1 true, i1* %5225
  %5226 = alloca i1
  store i1 true, i1* %5226
  %5227 = alloca i1
  store i1 true, i1* %5227
  %5228 = load %nyx_string*, %nyx_string** %name.ptr
  %5229 = getelementptr [6 x i8], [6 x i8]* @.str813, i32 0, i32 0
  %5230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %5229, i64 5)
  %5231 = call i1 @nyx_string_equals(%nyx_string* %5228, %nyx_string* %5230)
  br i1 %5231, label %sc_or_end896, label %sc_or_rhs895
sc_or_rhs895:
  %5232 = load %nyx_string*, %nyx_string** %name.ptr
  %5233 = getelementptr [4 x i8], [4 x i8]* @.str814, i32 0, i32 0
  %5234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %5233, i64 3)
  %5235 = call i1 @nyx_string_equals(%nyx_string* %5232, %nyx_string* %5234)
  store i1 %5235, i1* %5227
  br label %sc_or_end896
sc_or_end896:
  %5236 = load i1, i1* %5227
  br i1 %5236, label %sc_or_end898, label %sc_or_rhs897
sc_or_rhs897:
  %5237 = load %nyx_string*, %nyx_string** %name.ptr
  %5238 = getelementptr [3 x i8], [3 x i8]* @.str815, i32 0, i32 0
  %5239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %5238, i64 2)
  %5240 = call i1 @nyx_string_equals(%nyx_string* %5237, %nyx_string* %5239)
  store i1 %5240, i1* %5226
  br label %sc_or_end898
sc_or_end898:
  %5241 = load i1, i1* %5226
  br i1 %5241, label %sc_or_end900, label %sc_or_rhs899
sc_or_rhs899:
  %5242 = load %nyx_string*, %nyx_string** %name.ptr
  %5243 = getelementptr [10 x i8], [10 x i8]* @.str816, i32 0, i32 0
  %5244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %5243, i64 9)
  %5245 = call i1 @nyx_string_equals(%nyx_string* %5242, %nyx_string* %5244)
  store i1 %5245, i1* %5225
  br label %sc_or_end900
sc_or_end900:
  %5246 = load i1, i1* %5225
  br i1 %5246, label %then901, label %else902
then901:
  %5247 = getelementptr [8 x i8], [8 x i8]* @.str817, i32 0, i32 0
  %5248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %5247, i64 7)
  ret %nyx_string* %5248
else902:
  br label %merge903
merge903:
  %5249 = alloca i1
  store i1 true, i1* %5249
  %5250 = alloca i1
  store i1 true, i1* %5250
  %5251 = alloca i1
  store i1 true, i1* %5251
  %5252 = alloca i1
  store i1 true, i1* %5252
  %5253 = alloca i1
  store i1 true, i1* %5253
  %5254 = alloca i1
  store i1 true, i1* %5254
  %5255 = load %nyx_string*, %nyx_string** %name.ptr
  %5256 = getelementptr [5 x i8], [5 x i8]* @.str818, i32 0, i32 0
  %5257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %5256, i64 4)
  %5258 = call i1 @nyx_string_equals(%nyx_string* %5255, %nyx_string* %5257)
  br i1 %5258, label %sc_or_end905, label %sc_or_rhs904
sc_or_rhs904:
  %5259 = load %nyx_string*, %nyx_string** %name.ptr
  %5260 = getelementptr [4 x i8], [4 x i8]* @.str819, i32 0, i32 0
  %5261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %5260, i64 3)
  %5262 = call i1 @nyx_string_equals(%nyx_string* %5259, %nyx_string* %5261)
  store i1 %5262, i1* %5254
  br label %sc_or_end905
sc_or_end905:
  %5263 = load i1, i1* %5254
  br i1 %5263, label %sc_or_end907, label %sc_or_rhs906
sc_or_rhs906:
  %5264 = load %nyx_string*, %nyx_string** %name.ptr
  %5265 = getelementptr [4 x i8], [4 x i8]* @.str820, i32 0, i32 0
  %5266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %5265, i64 3)
  %5267 = call i1 @nyx_string_equals(%nyx_string* %5264, %nyx_string* %5266)
  store i1 %5267, i1* %5253
  br label %sc_or_end907
sc_or_end907:
  %5268 = load i1, i1* %5253
  br i1 %5268, label %sc_or_end909, label %sc_or_rhs908
sc_or_rhs908:
  %5269 = load %nyx_string*, %nyx_string** %name.ptr
  %5270 = getelementptr [8 x i8], [8 x i8]* @.str821, i32 0, i32 0
  %5271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %5270, i64 7)
  %5272 = call i1 @nyx_string_equals(%nyx_string* %5269, %nyx_string* %5271)
  store i1 %5272, i1* %5252
  br label %sc_or_end909
sc_or_end909:
  %5273 = load i1, i1* %5252
  br i1 %5273, label %sc_or_end911, label %sc_or_rhs910
sc_or_rhs910:
  %5274 = load %nyx_string*, %nyx_string** %name.ptr
  %5275 = getelementptr [7 x i8], [7 x i8]* @.str822, i32 0, i32 0
  %5276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %5275, i64 6)
  %5277 = call i1 @nyx_string_equals(%nyx_string* %5274, %nyx_string* %5276)
  store i1 %5277, i1* %5251
  br label %sc_or_end911
sc_or_end911:
  %5278 = load i1, i1* %5251
  br i1 %5278, label %sc_or_end913, label %sc_or_rhs912
sc_or_rhs912:
  %5279 = load %nyx_string*, %nyx_string** %name.ptr
  %5280 = getelementptr [8 x i8], [8 x i8]* @.str823, i32 0, i32 0
  %5281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %5280, i64 7)
  %5282 = call i1 @nyx_string_equals(%nyx_string* %5279, %nyx_string* %5281)
  store i1 %5282, i1* %5250
  br label %sc_or_end913
sc_or_end913:
  %5283 = load i1, i1* %5250
  br i1 %5283, label %sc_or_end915, label %sc_or_rhs914
sc_or_rhs914:
  %5284 = load %nyx_string*, %nyx_string** %name.ptr
  %5285 = getelementptr [11 x i8], [11 x i8]* @.str824, i32 0, i32 0
  %5286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %5285, i64 10)
  %5287 = call i1 @nyx_string_equals(%nyx_string* %5284, %nyx_string* %5286)
  store i1 %5287, i1* %5249
  br label %sc_or_end915
sc_or_end915:
  %5288 = load i1, i1* %5249
  br i1 %5288, label %then916, label %else917
then916:
  %5289 = getelementptr [14 x i8], [14 x i8]* @.str825, i32 0, i32 0
  %5290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %5289, i64 13)
  ret %nyx_string* %5290
else917:
  br label %merge918
merge918:
  %5291 = getelementptr [1 x i8], [1 x i8]* @.str826, i32 0, i32 0
  %5292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %5291, i64 0)
  ret %nyx_string* %5292
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %5293 = alloca i64
  store i64 0, i64* %5293
  %5294 = alloca i64
  store i64 0, i64* %5294
  %5295 = call i8* @llvm.stacksave()
  br label %while_cond919
while_cond919:
  %5296 = load i64, i64* %5294
  %5297 = load %nyx_string*, %nyx_string** %s.ptr
  %5298 = call i64 @nyx_string_byte_length(%nyx_string* %5297)
  %5299 = icmp slt i64 %5296, %5298
  br i1 %5299, label %while_body920, label %while_end921
while_body920:
  call void @llvm.stackrestore(i8* %5295)
  %5300 = load %nyx_string*, %nyx_string** %s.ptr
  %5301 = load i64, i64* %5294
  %5302 = call i8 @nyx_string_char_at(%nyx_string* %5300, i64 %5301)
  %5303 = zext i8 %5302 to i64
  %5304 = trunc i64 %5303 to i8
  %5305 = alloca i8
  store i8 %5304, i8* %5305
  %5306 = load i8, i8* %5305
  %5307 = getelementptr [1 x i8], [1 x i8]* @.str827, i32 0, i32 0
  %5308 = load i8, i8* %5307
  %5309 = zext i8 %5308 to i64
  %5310 = zext i8 %5306 to i64
  %5311 = icmp eq i64 %5310, %5309
  br i1 %5311, label %then922, label %else923
then922:
  %5312 = load i64, i64* %5293
  %5313 = add i64 %5312, 1
  store i64 %5313, i64* %5293
  br label %merge924
else923:
  br label %merge924
merge924:
  %5314 = load i8, i8* %5305
  %5315 = getelementptr [1 x i8], [1 x i8]* @.str828, i32 0, i32 0
  %5316 = load i8, i8* %5315
  %5317 = zext i8 %5316 to i64
  %5318 = zext i8 %5314 to i64
  %5319 = icmp eq i64 %5318, %5317
  br i1 %5319, label %then925, label %else926
then925:
  %5320 = load i64, i64* %5293
  %5321 = sub i64 %5320, 1
  store i64 %5321, i64* %5293
  br label %merge927
else926:
  br label %merge927
merge927:
  %5322 = load i64, i64* %5294
  %5323 = add i64 %5322, 1
  store i64 %5323, i64* %5294
  br label %while_cond919
while_end921:
  %5324 = load i64, i64* %5293
  ret i64 %5324
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %5325 = load %nyx_string*, %nyx_string** %filename.ptr
  %5326 = load %nyx_string*, %nyx_string** %filename.ptr
  %5327 = call i64 @nyx_string_byte_length(%nyx_string* %5326)
  %5328 = sub i64 %5327, 3
  %5329 = call %nyx_string* @nyx_string_substring(%nyx_string* %5325, i64 0, i64 %5328)
  %5330 = alloca %nyx_string*
  store %nyx_string* %5329, %nyx_string** %5330
  %5331 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5332 = getelementptr [2 x i8], [2 x i8]* @.str829, i32 0, i32 0
  %5333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %5332, i64 1)
  %5334 = call %nyx_string* @nyx_string_concat(%nyx_string* %5331, %nyx_string* %5333)
  %5335 = load %nyx_string*, %nyx_string** %filename.ptr
  %5336 = call %nyx_string* @nyx_string_concat(%nyx_string* %5334, %nyx_string* %5335)
  %5337 = call i8* @nyx_string_to_cstr(%nyx_string* %5336)
  %5338 = call %nyx_string* @nyx_read_file(i8* %5337)
  %5339 = alloca %nyx_string*
  store %nyx_string* %5338, %nyx_string** %5339
  %5340 = load %nyx_string*, %nyx_string** %5339
  %5341 = getelementptr [2 x i8], [2 x i8]* @.str830, i32 0, i32 0
  %5342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %5341, i64 1)
  %5343 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5340, %nyx_string* %5342)
  %5344 = alloca { i64, i8* }*
  store { i64, i8* }* %5343, { i64, i8* }** %5344
  %5345 = getelementptr [1 x i8], [1 x i8]* @.str831, i32 0, i32 0
  %5346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %5345, i64 0)
  %5347 = alloca %nyx_string*
  store %nyx_string* %5346, %nyx_string** %5347
  %5348 = getelementptr [1 x i8], [1 x i8]* @.str832, i32 0, i32 0
  %5349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %5348, i64 0)
  %5350 = alloca %nyx_string*
  store %nyx_string* %5349, %nyx_string** %5350
  %5351 = alloca i64
  store i64 0, i64* %5351
  %5352 = alloca i64
  store i64 0, i64* %5352
  %5353 = getelementptr [4 x i8], [4 x i8]* @.str833, i32 0, i32 0
  %5354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %5353, i64 3)
  %5355 = alloca %nyx_string*
  store %nyx_string* %5354, %nyx_string** %5355
  %5356 = getelementptr [1 x i8], [1 x i8]* @.str834, i32 0, i32 0
  %5357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %5356, i64 0)
  %5358 = alloca %nyx_string*
  store %nyx_string* %5357, %nyx_string** %5358
  %5359 = getelementptr [2 x i8], [2 x i8]* @.str835, i32 0, i32 0
  %5360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %5359, i64 1)
  %5361 = alloca %nyx_string*
  store %nyx_string* %5360, %nyx_string** %5361
  %5362 = getelementptr [8 x i8], [8 x i8]* @.str836, i32 0, i32 0
  %5363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %5362, i64 7)
  %5364 = alloca %nyx_string*
  store %nyx_string* %5363, %nyx_string** %5364
  %5365 = getelementptr [11 x i8], [11 x i8]* @.str837, i32 0, i32 0
  %5366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %5365, i64 10)
  %5367 = alloca %nyx_string*
  store %nyx_string* %5366, %nyx_string** %5367
  %5368 = getelementptr [4 x i8], [4 x i8]* @.str838, i32 0, i32 0
  %5369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %5368, i64 3)
  %5370 = alloca %nyx_string*
  store %nyx_string* %5369, %nyx_string** %5370
  %5371 = getelementptr [2 x i8], [2 x i8]* @.str839, i32 0, i32 0
  %5372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %5371, i64 1)
  %5373 = alloca %nyx_string*
  store %nyx_string* %5372, %nyx_string** %5373
  %5374 = getelementptr [6 x i8], [6 x i8]* @.str840, i32 0, i32 0
  %5375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %5374, i64 5)
  %5376 = alloca %nyx_string*
  store %nyx_string* %5375, %nyx_string** %5376
  %5377 = getelementptr [2 x i8], [2 x i8]* @.str841, i32 0, i32 0
  %5378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %5377, i64 1)
  %5379 = alloca %nyx_string*
  store %nyx_string* %5378, %nyx_string** %5379
  %5380 = call i8* @llvm.stacksave()
  br label %while_cond928
while_cond928:
  %5381 = load i64, i64* %5352
  %5382 = load { i64, i8* }*, { i64, i8* }** %5344
  %5383 = call i64 @nyx_array_length({ i64, i8* }* %5382)
  %5384 = icmp slt i64 %5381, %5383
  br i1 %5384, label %while_body929, label %while_end930
while_body929:
  call void @llvm.stackrestore(i8* %5380)
  %5385 = load { i64, i8* }*, { i64, i8* }** %5344
  %5386 = load i64, i64* %5352
  %5387 = call i64 @nyx_array_get_checked({ i64, i8* }* %5385, i64 %5386, i64 2)
  %5388 = inttoptr i64 %5387 to %nyx_string*
  %5389 = alloca %nyx_string*
  store %nyx_string* %5388, %nyx_string** %5389
  %5390 = load %nyx_string*, %nyx_string** %5389
  %5391 = call %nyx_string* @nyx_string_trim(%nyx_string* %5390)
  %5392 = alloca %nyx_string*
  store %nyx_string* %5391, %nyx_string** %5392
  %5393 = load %nyx_string*, %nyx_string** %5392
  %5394 = load %nyx_string*, %nyx_string** %5355
  %5395 = call i1 @nyx_string_starts_with(%nyx_string* %5393, %nyx_string* %5394)
  br i1 %5395, label %then931, label %else932
then931:
  %5396 = load %nyx_string*, %nyx_string** %5392
  %5397 = load %nyx_string*, %nyx_string** %5392
  %5398 = call i64 @nyx_string_byte_length(%nyx_string* %5397)
  %5399 = call %nyx_string* @nyx_string_substring(%nyx_string* %5396, i64 3, i64 %5398)
  %5400 = alloca %nyx_string*
  store %nyx_string* %5399, %nyx_string** %5400
  %5401 = load %nyx_string*, %nyx_string** %5400
  %5402 = call %nyx_string* @nyx_string_trim(%nyx_string* %5401)
  %5403 = alloca %nyx_string*
  store %nyx_string* %5402, %nyx_string** %5403
  %5404 = load %nyx_string*, %nyx_string** %5350
  %5405 = load %nyx_string*, %nyx_string** %5358
  %5406 = call i1 @nyx_string_equals(%nyx_string* %5404, %nyx_string* %5405)
  br i1 %5406, label %then934, label %else935
then934:
  %5407 = load %nyx_string*, %nyx_string** %5403
  store %nyx_string* %5407, %nyx_string** %5350
  br label %merge936
else935:
  %5408 = load %nyx_string*, %nyx_string** %5350
  %5409 = load %nyx_string*, %nyx_string** %5361
  %5410 = call %nyx_string* @nyx_string_concat(%nyx_string* %5408, %nyx_string* %5409)
  %5411 = load %nyx_string*, %nyx_string** %5403
  %5412 = call %nyx_string* @nyx_string_concat(%nyx_string* %5410, %nyx_string* %5411)
  store %nyx_string* %5412, %nyx_string** %5350
  br label %merge936
merge936:
  br label %merge933
else932:
  %5413 = alloca i1
  store i1 true, i1* %5413
  %5414 = load %nyx_string*, %nyx_string** %5392
  %5415 = load %nyx_string*, %nyx_string** %5364
  %5416 = call i1 @nyx_string_starts_with(%nyx_string* %5414, %nyx_string* %5415)
  br i1 %5416, label %sc_or_end938, label %sc_or_rhs937
sc_or_rhs937:
  %5417 = load %nyx_string*, %nyx_string** %5392
  %5418 = load %nyx_string*, %nyx_string** %5367
  %5419 = call i1 @nyx_string_starts_with(%nyx_string* %5417, %nyx_string* %5418)
  store i1 %5419, i1* %5413
  br label %sc_or_end938
sc_or_end938:
  %5420 = load i1, i1* %5413
  %5421 = alloca i1
  store i1 %5420, i1* %5421
  %5422 = load i1, i1* %5421
  br i1 %5422, label %then939, label %else940
then939:
  %5423 = load %nyx_string*, %nyx_string** %5392
  %5424 = alloca %nyx_string*
  store %nyx_string* %5423, %nyx_string** %5424
  %5425 = load %nyx_string*, %nyx_string** %5424
  %5426 = call i64 @capabilities_paren_delta(%nyx_string* %5425)
  %5427 = alloca i64
  store i64 %5426, i64* %5427
  %5428 = call i8* @llvm.stacksave()
  br label %while_cond942
while_cond942:
  %5429 = alloca i1
  store i1 false, i1* %5429
  %5430 = load i64, i64* %5427
  %5431 = icmp sgt i64 %5430, 0
  br i1 %5431, label %sc_and_rhs945, label %sc_and_end946
sc_and_rhs945:
  %5432 = load i64, i64* %5352
  %5433 = add i64 %5432, 1
  %5434 = load { i64, i8* }*, { i64, i8* }** %5344
  %5435 = call i64 @nyx_array_length({ i64, i8* }* %5434)
  %5436 = icmp slt i64 %5433, %5435
  store i1 %5436, i1* %5429
  br label %sc_and_end946
sc_and_end946:
  %5437 = load i1, i1* %5429
  br i1 %5437, label %while_body943, label %while_end944
while_body943:
  call void @llvm.stackrestore(i8* %5428)
  %5438 = load i64, i64* %5352
  %5439 = add i64 %5438, 1
  store i64 %5439, i64* %5352
  %5440 = load { i64, i8* }*, { i64, i8* }** %5344
  %5441 = load i64, i64* %5352
  %5442 = call i64 @nyx_array_get_checked({ i64, i8* }* %5440, i64 %5441, i64 2)
  %5443 = inttoptr i64 %5442 to %nyx_string*
  %5444 = call %nyx_string* @nyx_string_trim(%nyx_string* %5443)
  %5445 = alloca %nyx_string*
  store %nyx_string* %5444, %nyx_string** %5445
  %5446 = load %nyx_string*, %nyx_string** %5445
  %5447 = load %nyx_string*, %nyx_string** %5358
  %5448 = call i1 @nyx_string_equals(%nyx_string* %5446, %nyx_string* %5447)
  %5449 = xor i1 %5448, true
  br i1 %5449, label %then947, label %else948
then947:
  %5450 = alloca i1
  store i1 false, i1* %5450
  %5451 = load %nyx_string*, %nyx_string** %5424
  %5452 = call i64 @nyx_string_byte_length(%nyx_string* %5451)
  %5453 = icmp sgt i64 %5452, 0
  br i1 %5453, label %sc_and_rhs950, label %sc_and_end951
sc_and_rhs950:
  %5454 = load %nyx_string*, %nyx_string** %5424
  %5455 = load %nyx_string*, %nyx_string** %5424
  %5456 = call i64 @nyx_string_byte_length(%nyx_string* %5455)
  %5457 = sub i64 %5456, 1
  %5458 = call i8 @nyx_string_char_at(%nyx_string* %5454, i64 %5457)
  %5459 = zext i8 %5458 to i64
  %5460 = getelementptr [1 x i8], [1 x i8]* @.str842, i32 0, i32 0
  %5461 = load i8, i8* %5460
  %5462 = zext i8 %5461 to i64
  %5463 = icmp eq i64 %5459, %5462
  store i1 %5463, i1* %5450
  br label %sc_and_end951
sc_and_end951:
  %5464 = load i1, i1* %5450
  br i1 %5464, label %then952, label %else953
then952:
  %5465 = load %nyx_string*, %nyx_string** %5424
  %5466 = load %nyx_string*, %nyx_string** %5445
  %5467 = call %nyx_string* @nyx_string_concat(%nyx_string* %5465, %nyx_string* %5466)
  store %nyx_string* %5467, %nyx_string** %5424
  br label %merge954
else953:
  %5468 = load %nyx_string*, %nyx_string** %5424
  %5469 = load %nyx_string*, %nyx_string** %5361
  %5470 = call %nyx_string* @nyx_string_concat(%nyx_string* %5468, %nyx_string* %5469)
  %5471 = load %nyx_string*, %nyx_string** %5445
  %5472 = call %nyx_string* @nyx_string_concat(%nyx_string* %5470, %nyx_string* %5471)
  store %nyx_string* %5472, %nyx_string** %5424
  br label %merge954
merge954:
  br label %merge949
else948:
  br label %merge949
merge949:
  %5473 = load i64, i64* %5427
  %5474 = load %nyx_string*, %nyx_string** %5445
  %5475 = call i64 @capabilities_paren_delta(%nyx_string* %5474)
  %5476 = add i64 %5473, %5475
  store i64 %5476, i64* %5427
  br label %while_cond942
while_end944:
  %5477 = sub i64 0, 1
  %5478 = alloca i64
  store i64 %5477, i64* %5478
  %5479 = alloca i64
  store i64 0, i64* %5479
  %5480 = call i8* @llvm.stacksave()
  br label %while_cond955
while_cond955:
  %5481 = load i64, i64* %5479
  %5482 = load %nyx_string*, %nyx_string** %5424
  %5483 = call i64 @nyx_string_byte_length(%nyx_string* %5482)
  %5484 = icmp slt i64 %5481, %5483
  br i1 %5484, label %while_body956, label %while_end957
while_body956:
  call void @llvm.stackrestore(i8* %5480)
  %5485 = load %nyx_string*, %nyx_string** %5424
  %5486 = load i64, i64* %5479
  %5487 = call i8 @nyx_string_char_at(%nyx_string* %5485, i64 %5486)
  %5488 = zext i8 %5487 to i64
  %5489 = trunc i64 %5488 to i8
  %5490 = alloca i8
  store i8 %5489, i8* %5490
  %5491 = alloca i1
  store i1 false, i1* %5491
  %5492 = load i8, i8* %5490
  %5493 = getelementptr [1 x i8], [1 x i8]* @.str843, i32 0, i32 0
  %5494 = load i8, i8* %5493
  %5495 = zext i8 %5494 to i64
  %5496 = zext i8 %5492 to i64
  %5497 = icmp eq i64 %5496, %5495
  br i1 %5497, label %sc_and_rhs958, label %sc_and_end959
sc_and_rhs958:
  %5498 = load i64, i64* %5478
  %5499 = sub i64 0, 1
  %5500 = icmp eq i64 %5498, %5499
  store i1 %5500, i1* %5491
  br label %sc_and_end959
sc_and_end959:
  %5501 = load i1, i1* %5491
  br i1 %5501, label %then960, label %else961
then960:
  %5502 = load i64, i64* %5479
  store i64 %5502, i64* %5478
  br label %merge962
else961:
  br label %merge962
merge962:
  %5503 = load i64, i64* %5479
  %5504 = add i64 %5503, 1
  store i64 %5504, i64* %5479
  br label %while_cond955
while_end957:
  %5505 = load i64, i64* %5478
  %5506 = icmp sge i64 %5505, 0
  br i1 %5506, label %then963, label %else964
then963:
  %5507 = load %nyx_string*, %nyx_string** %5424
  %5508 = load i64, i64* %5478
  %5509 = call %nyx_string* @nyx_string_substring(%nyx_string* %5507, i64 0, i64 %5508)
  store %nyx_string* %5509, %nyx_string** %5424
  br label %merge965
else964:
  br label %merge965
merge965:
  %5510 = load %nyx_string*, %nyx_string** %5424
  %5511 = call %nyx_string* @nyx_string_trim(%nyx_string* %5510)
  %5512 = alloca %nyx_string*
  store %nyx_string* %5511, %nyx_string** %5512
  %5513 = load %nyx_string*, %nyx_string** %5347
  %5514 = load %nyx_string*, %nyx_string** %5370
  %5515 = call %nyx_string* @nyx_string_concat(%nyx_string* %5513, %nyx_string* %5514)
  %5516 = load %nyx_string*, %nyx_string** %5512
  %5517 = call %nyx_string* @nyx_string_concat(%nyx_string* %5515, %nyx_string* %5516)
  %5518 = load %nyx_string*, %nyx_string** %5373
  %5519 = call %nyx_string* @nyx_string_concat(%nyx_string* %5517, %nyx_string* %5518)
  store %nyx_string* %5519, %nyx_string** %5347
  %5520 = load %nyx_string*, %nyx_string** %5350
  %5521 = load %nyx_string*, %nyx_string** %5358
  %5522 = call i1 @nyx_string_equals(%nyx_string* %5520, %nyx_string* %5521)
  %5523 = xor i1 %5522, true
  br i1 %5523, label %then966, label %else967
then966:
  %5524 = load %nyx_string*, %nyx_string** %5347
  %5525 = load %nyx_string*, %nyx_string** %5376
  %5526 = call %nyx_string* @nyx_string_concat(%nyx_string* %5524, %nyx_string* %5525)
  %5527 = load %nyx_string*, %nyx_string** %5350
  %5528 = call %nyx_string* @nyx_string_concat(%nyx_string* %5526, %nyx_string* %5527)
  store %nyx_string* %5528, %nyx_string** %5347
  br label %merge968
else967:
  br label %merge968
merge968:
  %5529 = load %nyx_string*, %nyx_string** %5347
  %5530 = load %nyx_string*, %nyx_string** %5379
  %5531 = call %nyx_string* @nyx_string_concat(%nyx_string* %5529, %nyx_string* %5530)
  store %nyx_string* %5531, %nyx_string** %5347
  %5532 = load i64, i64* %5351
  %5533 = add i64 %5532, 1
  store i64 %5533, i64* %5351
  br label %merge941
else940:
  br label %merge941
merge941:
  %5534 = load %nyx_string*, %nyx_string** %5358
  store %nyx_string* %5534, %nyx_string** %5350
  br label %merge933
merge933:
  %5535 = load i64, i64* %5352
  %5536 = add i64 %5535, 1
  store i64 %5536, i64* %5352
  br label %while_cond928
while_end930:
  %5537 = load i64, i64* %5351
  %5538 = icmp eq i64 %5537, 0
  br i1 %5538, label %then969, label %else970
then969:
  %5539 = getelementptr [1 x i8], [1 x i8]* @.str844, i32 0, i32 0
  %5540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %5539, i64 0)
  ret %nyx_string* %5540
else970:
  br label %merge971
merge971:
  %5541 = getelementptr [10 x i8], [10 x i8]* @.str845, i32 0, i32 0
  %5542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %5541, i64 9)
  %5543 = load %nyx_string*, %nyx_string** %5330
  %5544 = call %nyx_string* @nyx_string_concat(%nyx_string* %5542, %nyx_string* %5543)
  %5545 = getelementptr [4 x i8], [4 x i8]* @.str846, i32 0, i32 0
  %5546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %5545, i64 3)
  %5547 = call %nyx_string* @nyx_string_concat(%nyx_string* %5544, %nyx_string* %5546)
  %5548 = alloca %nyx_string*
  store %nyx_string* %5547, %nyx_string** %5548
  %5549 = load %nyx_string*, %nyx_string** %5548
  %5550 = getelementptr [14 x i8], [14 x i8]* @.str847, i32 0, i32 0
  %5551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %5550, i64 13)
  %5552 = call %nyx_string* @nyx_string_concat(%nyx_string* %5549, %nyx_string* %5551)
  %5553 = load %nyx_string*, %nyx_string** %5330
  %5554 = call %nyx_string* @nyx_string_concat(%nyx_string* %5552, %nyx_string* %5553)
  %5555 = getelementptr [8 x i8], [8 x i8]* @.str848, i32 0, i32 0
  %5556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %5555, i64 7)
  %5557 = call %nyx_string* @nyx_string_concat(%nyx_string* %5554, %nyx_string* %5556)
  %5558 = load i64, i64* %5351
  %5559 = call %nyx_string* @nyx_string_from_int(i64 %5558)
  %5560 = call %nyx_string* @nyx_string_concat(%nyx_string* %5557, %nyx_string* %5559)
  %5561 = getelementptr [14 x i8], [14 x i8]* @.str849, i32 0, i32 0
  %5562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %5561, i64 13)
  %5563 = call %nyx_string* @nyx_string_concat(%nyx_string* %5560, %nyx_string* %5562)
  store %nyx_string* %5563, %nyx_string** %5548
  %5564 = load %nyx_string*, %nyx_string** %5548
  %5565 = load %nyx_string*, %nyx_string** %5347
  %5566 = call %nyx_string* @nyx_string_concat(%nyx_string* %5564, %nyx_string* %5565)
  %5567 = getelementptr [2 x i8], [2 x i8]* @.str850, i32 0, i32 0
  %5568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %5567, i64 1)
  %5569 = call %nyx_string* @nyx_string_concat(%nyx_string* %5566, %nyx_string* %5568)
  store %nyx_string* %5569, %nyx_string** %5548
  %5570 = load %nyx_string*, %nyx_string** %5548
  ret %nyx_string* %5570
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %5571 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5572 = getelementptr [16 x i8], [16 x i8]* @.str851, i32 0, i32 0
  %5573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %5572, i64 15)
  %5574 = call %nyx_string* @nyx_string_concat(%nyx_string* %5571, %nyx_string* %5573)
  %5575 = alloca %nyx_string*
  store %nyx_string* %5574, %nyx_string** %5575
  %5576 = load %nyx_string*, %nyx_string** %5575
  %5577 = call i8* @nyx_string_to_cstr(%nyx_string* %5576)
  %5578 = call i1 @nyx_file_exists(i8* %5577)
  %5579 = xor i1 %5578, true
  br i1 %5579, label %then972, label %else973
then972:
  %5580 = getelementptr [1 x i8], [1 x i8]* @.str852, i32 0, i32 0
  %5581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %5580, i64 0)
  ret %nyx_string* %5581
else973:
  br label %merge974
merge974:
  %5582 = load %nyx_string*, %nyx_string** %5575
  %5583 = call i8* @nyx_string_to_cstr(%nyx_string* %5582)
  %5584 = call %nyx_string* @nyx_read_file(i8* %5583)
  %5585 = alloca %nyx_string*
  store %nyx_string* %5584, %nyx_string** %5585
  %5586 = load %nyx_string*, %nyx_string** %5585
  %5587 = getelementptr [2 x i8], [2 x i8]* @.str853, i32 0, i32 0
  %5588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %5587, i64 1)
  %5589 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5586, %nyx_string* %5588)
  %5590 = alloca { i64, i8* }*
  store { i64, i8* }* %5589, { i64, i8* }** %5590
  %5591 = getelementptr [1 x i8], [1 x i8]* @.str854, i32 0, i32 0
  %5592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %5591, i64 0)
  %5593 = alloca %nyx_string*
  store %nyx_string* %5592, %nyx_string** %5593
  %5594 = alloca i64
  store i64 0, i64* %5594
  %5595 = alloca i64
  store i64 0, i64* %5595
  %5596 = getelementptr [9 x i8], [9 x i8]* @.str855, i32 0, i32 0
  %5597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %5596, i64 8)
  %5598 = alloca %nyx_string*
  store %nyx_string* %5597, %nyx_string** %5598
  %5599 = getelementptr [2 x i8], [2 x i8]* @.str856, i32 0, i32 0
  %5600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %5599, i64 1)
  %5601 = alloca %nyx_string*
  store %nyx_string* %5600, %nyx_string** %5601
  %5602 = getelementptr [4 x i8], [4 x i8]* @.str857, i32 0, i32 0
  %5603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %5602, i64 3)
  %5604 = alloca %nyx_string*
  store %nyx_string* %5603, %nyx_string** %5604
  %5605 = getelementptr [4 x i8], [4 x i8]* @.str858, i32 0, i32 0
  %5606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %5605, i64 3)
  %5607 = alloca %nyx_string*
  store %nyx_string* %5606, %nyx_string** %5607
  %5608 = getelementptr [5 x i8], [5 x i8]* @.str859, i32 0, i32 0
  %5609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %5608, i64 4)
  %5610 = alloca %nyx_string*
  store %nyx_string* %5609, %nyx_string** %5610
  %5611 = getelementptr [2 x i8], [2 x i8]* @.str860, i32 0, i32 0
  %5612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %5611, i64 1)
  %5613 = alloca %nyx_string*
  store %nyx_string* %5612, %nyx_string** %5613
  %5614 = getelementptr [2 x i8], [2 x i8]* @.str861, i32 0, i32 0
  %5615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %5614, i64 1)
  %5616 = alloca %nyx_string*
  store %nyx_string* %5615, %nyx_string** %5616
  %5617 = getelementptr [2 x i8], [2 x i8]* @.str862, i32 0, i32 0
  %5618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %5617, i64 1)
  %5619 = alloca %nyx_string*
  store %nyx_string* %5618, %nyx_string** %5619
  %5620 = getelementptr [1 x i8], [1 x i8]* @.str863, i32 0, i32 0
  %5621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %5620, i64 0)
  %5622 = alloca %nyx_string*
  store %nyx_string* %5621, %nyx_string** %5622
  %5623 = getelementptr [6 x i8], [6 x i8]* @.str864, i32 0, i32 0
  %5624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %5623, i64 5)
  %5625 = alloca %nyx_string*
  store %nyx_string* %5624, %nyx_string** %5625
  %5626 = getelementptr [2 x i8], [2 x i8]* @.str865, i32 0, i32 0
  %5627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %5626, i64 1)
  %5628 = alloca %nyx_string*
  store %nyx_string* %5627, %nyx_string** %5628
  %5629 = call i8* @llvm.stacksave()
  br label %while_cond975
while_cond975:
  %5630 = load i64, i64* %5595
  %5631 = load { i64, i8* }*, { i64, i8* }** %5590
  %5632 = call i64 @nyx_array_length({ i64, i8* }* %5631)
  %5633 = icmp slt i64 %5630, %5632
  br i1 %5633, label %while_body976, label %while_end977
while_body976:
  call void @llvm.stackrestore(i8* %5629)
  %5634 = load { i64, i8* }*, { i64, i8* }** %5590
  %5635 = load i64, i64* %5595
  %5636 = call i64 @nyx_array_get_checked({ i64, i8* }* %5634, i64 %5635, i64 2)
  %5637 = inttoptr i64 %5636 to %nyx_string*
  %5638 = alloca %nyx_string*
  store %nyx_string* %5637, %nyx_string** %5638
  %5639 = load %nyx_string*, %nyx_string** %5638
  %5640 = call i64 @nyx_string_byte_length(%nyx_string* %5639)
  %5641 = icmp sgt i64 %5640, 8
  br i1 %5641, label %then978, label %else979
then978:
  %5642 = load %nyx_string*, %nyx_string** %5638
  %5643 = call %nyx_string* @nyx_string_substring(%nyx_string* %5642, i64 0, i64 8)
  %5644 = load %nyx_string*, %nyx_string** %5598
  %5645 = call i1 @nyx_string_equals(%nyx_string* %5643, %nyx_string* %5644)
  br i1 %5645, label %then981, label %else982
then981:
  %5646 = load %nyx_string*, %nyx_string** %5638
  %5647 = load %nyx_string*, %nyx_string** %5601
  %5648 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5646, %nyx_string* %5647)
  %5649 = alloca { i64, i8* }*
  store { i64, i8* }* %5648, { i64, i8* }** %5649
  %5650 = load { i64, i8* }*, { i64, i8* }** %5649
  %5651 = call i64 @nyx_array_length({ i64, i8* }* %5650)
  %5652 = icmp sge i64 %5651, 5
  br i1 %5652, label %then984, label %else985
then984:
  %5653 = load { i64, i8* }*, { i64, i8* }** %5649
  %5654 = call i64 @nyx_array_get_checked({ i64, i8* }* %5653, i64 1, i64 2)
  %5655 = inttoptr i64 %5654 to %nyx_string*
  %5656 = alloca %nyx_string*
  store %nyx_string* %5655, %nyx_string** %5656
  %5657 = load { i64, i8* }*, { i64, i8* }** %5649
  %5658 = call i64 @nyx_array_get_checked({ i64, i8* }* %5657, i64 2, i64 2)
  %5659 = inttoptr i64 %5658 to %nyx_string*
  %5660 = alloca %nyx_string*
  store %nyx_string* %5659, %nyx_string** %5660
  %5661 = load { i64, i8* }*, { i64, i8* }** %5649
  %5662 = call i64 @nyx_array_get_checked({ i64, i8* }* %5661, i64 3, i64 2)
  %5663 = inttoptr i64 %5662 to %nyx_string*
  %5664 = alloca %nyx_string*
  store %nyx_string* %5663, %nyx_string** %5664
  %5665 = load { i64, i8* }*, { i64, i8* }** %5649
  %5666 = call i64 @nyx_array_get_checked({ i64, i8* }* %5665, i64 4, i64 2)
  %5667 = inttoptr i64 %5666 to %nyx_string*
  %5668 = alloca %nyx_string*
  store %nyx_string* %5667, %nyx_string** %5668
  %5669 = load %nyx_string*, %nyx_string** %5664
  %5670 = load %nyx_string*, %nyx_string** %cat.ptr
  %5671 = call i1 @nyx_string_equals(%nyx_string* %5669, %nyx_string* %5670)
  br i1 %5671, label %then987, label %else988
then987:
  %5672 = load %nyx_string*, %nyx_string** %5604
  %5673 = load %nyx_string*, %nyx_string** %5656
  %5674 = call %nyx_string* @nyx_string_concat(%nyx_string* %5672, %nyx_string* %5673)
  %5675 = load %nyx_string*, %nyx_string** %5607
  %5676 = call %nyx_string* @nyx_string_concat(%nyx_string* %5674, %nyx_string* %5675)
  %5677 = load %nyx_string*, %nyx_string** %5660
  %5678 = call %nyx_string* @nyx_string_concat(%nyx_string* %5676, %nyx_string* %5677)
  %5679 = load %nyx_string*, %nyx_string** %5610
  %5680 = call %nyx_string* @nyx_string_concat(%nyx_string* %5678, %nyx_string* %5679)
  %5681 = alloca %nyx_string*
  store %nyx_string* %5680, %nyx_string** %5681
  %5682 = load %nyx_string*, %nyx_string** %5660
  %5683 = load %nyx_string*, %nyx_string** %5613
  %5684 = call i1 @nyx_string_equals(%nyx_string* %5682, %nyx_string* %5683)
  %5685 = xor i1 %5684, true
  br i1 %5685, label %then990, label %else991
then990:
  %5686 = load %nyx_string*, %nyx_string** %5681
  %5687 = load %nyx_string*, %nyx_string** %5616
  %5688 = call %nyx_string* @nyx_string_concat(%nyx_string* %5686, %nyx_string* %5687)
  store %nyx_string* %5688, %nyx_string** %5681
  br label %merge992
else991:
  br label %merge992
merge992:
  %5689 = load %nyx_string*, %nyx_string** %5681
  %5690 = load %nyx_string*, %nyx_string** %5619
  %5691 = call %nyx_string* @nyx_string_concat(%nyx_string* %5689, %nyx_string* %5690)
  store %nyx_string* %5691, %nyx_string** %5681
  %5692 = load %nyx_string*, %nyx_string** %5668
  %5693 = load %nyx_string*, %nyx_string** %5622
  %5694 = call i1 @nyx_string_equals(%nyx_string* %5692, %nyx_string* %5693)
  %5695 = xor i1 %5694, true
  br i1 %5695, label %then993, label %else994
then993:
  %5696 = load %nyx_string*, %nyx_string** %5681
  %5697 = load %nyx_string*, %nyx_string** %5625
  %5698 = call %nyx_string* @nyx_string_concat(%nyx_string* %5696, %nyx_string* %5697)
  %5699 = load %nyx_string*, %nyx_string** %5668
  %5700 = call %nyx_string* @nyx_string_concat(%nyx_string* %5698, %nyx_string* %5699)
  store %nyx_string* %5700, %nyx_string** %5681
  br label %merge995
else994:
  br label %merge995
merge995:
  %5701 = load %nyx_string*, %nyx_string** %5593
  %5702 = load %nyx_string*, %nyx_string** %5681
  %5703 = call %nyx_string* @nyx_string_concat(%nyx_string* %5701, %nyx_string* %5702)
  %5704 = load %nyx_string*, %nyx_string** %5628
  %5705 = call %nyx_string* @nyx_string_concat(%nyx_string* %5703, %nyx_string* %5704)
  store %nyx_string* %5705, %nyx_string** %5593
  %5706 = load i64, i64* %5594
  %5707 = add i64 %5706, 1
  store i64 %5707, i64* %5594
  br label %merge989
else988:
  br label %merge989
merge989:
  br label %merge986
else985:
  br label %merge986
merge986:
  br label %merge983
else982:
  br label %merge983
merge983:
  br label %merge980
else979:
  br label %merge980
merge980:
  %5708 = load i64, i64* %5595
  %5709 = add i64 %5708, 1
  store i64 %5709, i64* %5595
  br label %while_cond975
while_end977:
  %5710 = load i64, i64* %5594
  %5711 = icmp eq i64 %5710, 0
  br i1 %5711, label %then996, label %else997
then996:
  %5712 = getelementptr [1 x i8], [1 x i8]* @.str866, i32 0, i32 0
  %5713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %5712, i64 0)
  ret %nyx_string* %5713
else997:
  br label %merge998
merge998:
  %5714 = getelementptr [39 x i8], [39 x i8]* @.str867, i32 0, i32 0
  %5715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %5714, i64 38)
  %5716 = load %nyx_string*, %nyx_string** %5593
  %5717 = call %nyx_string* @nyx_string_concat(%nyx_string* %5715, %nyx_string* %5716)
  %5718 = getelementptr [2 x i8], [2 x i8]* @.str868, i32 0, i32 0
  %5719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %5718, i64 1)
  %5720 = call %nyx_string* @nyx_string_concat(%nyx_string* %5717, %nyx_string* %5719)
  ret %nyx_string* %5720
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %5721 = call %nyx_string* @capabilities_std_dir()
  %5722 = alloca %nyx_string*
  store %nyx_string* %5721, %nyx_string** %5722
  %5723 = load %nyx_string*, %nyx_string** %5722
  %5724 = getelementptr [1 x i8], [1 x i8]* @.str869, i32 0, i32 0
  %5725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %5724, i64 0)
  %5726 = call i1 @nyx_string_equals(%nyx_string* %5723, %nyx_string* %5725)
  br i1 %5726, label %then999, label %else1000
then999:
  %5727 = getelementptr [71 x i8], [71 x i8]* @.str870, i32 0, i32 0
  %5728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %5727, i64 70)
  %5729 = call i8* @nyx_string_to_cstr(%nyx_string* %5728)
  call void @nyx_print_string(i8* %5729)
  ret i1 0
else1000:
  br label %merge1001
merge1001:
  %5730 = load %nyx_string*, %nyx_string** %5722
  %5731 = call i8* @nyx_string_to_cstr(%nyx_string* %5730)
  %5732 = call { i64, i8* }* @nyx_readdir(i8* %5731)
  %5733 = alloca { i64, i8* }*
  store { i64, i8* }* %5732, { i64, i8* }** %5733
  %5734 = call { i64, i8* }* @nyx_array_new_ptr()
  %5735 = getelementptr [11 x i8], [11 x i8]* @.str871, i32 0, i32 0
  %5736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %5735, i64 10)
  %5737 = ptrtoint %nyx_string* %5736 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5737, i64 2)
  %5738 = getelementptr [20 x i8], [20 x i8]* @.str872, i32 0, i32 0
  %5739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %5738, i64 19)
  %5740 = ptrtoint %nyx_string* %5739 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5740, i64 2)
  %5741 = getelementptr [23 x i8], [23 x i8]* @.str873, i32 0, i32 0
  %5742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %5741, i64 22)
  %5743 = ptrtoint %nyx_string* %5742 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5743, i64 2)
  %5744 = getelementptr [15 x i8], [15 x i8]* @.str874, i32 0, i32 0
  %5745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %5744, i64 14)
  %5746 = ptrtoint %nyx_string* %5745 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5746, i64 2)
  %5747 = getelementptr [4 x i8], [4 x i8]* @.str875, i32 0, i32 0
  %5748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %5747, i64 3)
  %5749 = ptrtoint %nyx_string* %5748 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5749, i64 2)
  %5750 = getelementptr [13 x i8], [13 x i8]* @.str876, i32 0, i32 0
  %5751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %5750, i64 12)
  %5752 = ptrtoint %nyx_string* %5751 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5752, i64 2)
  %5753 = getelementptr [19 x i8], [19 x i8]* @.str877, i32 0, i32 0
  %5754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %5753, i64 18)
  %5755 = ptrtoint %nyx_string* %5754 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5755, i64 2)
  %5756 = getelementptr [7 x i8], [7 x i8]* @.str878, i32 0, i32 0
  %5757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %5756, i64 6)
  %5758 = ptrtoint %nyx_string* %5757 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5758, i64 2)
  %5759 = getelementptr [16 x i8], [16 x i8]* @.str879, i32 0, i32 0
  %5760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %5759, i64 15)
  %5761 = ptrtoint %nyx_string* %5760 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5761, i64 2)
  %5762 = getelementptr [12 x i8], [12 x i8]* @.str880, i32 0, i32 0
  %5763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %5762, i64 11)
  %5764 = ptrtoint %nyx_string* %5763 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5764, i64 2)
  %5765 = getelementptr [26 x i8], [26 x i8]* @.str881, i32 0, i32 0
  %5766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %5765, i64 25)
  %5767 = ptrtoint %nyx_string* %5766 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5767, i64 2)
  %5768 = getelementptr [8 x i8], [8 x i8]* @.str882, i32 0, i32 0
  %5769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %5768, i64 7)
  %5770 = ptrtoint %nyx_string* %5769 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5770, i64 2)
  %5771 = getelementptr [14 x i8], [14 x i8]* @.str883, i32 0, i32 0
  %5772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %5771, i64 13)
  %5773 = ptrtoint %nyx_string* %5772 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5773, i64 2)
  %5774 = getelementptr [6 x i8], [6 x i8]* @.str884, i32 0, i32 0
  %5775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %5774, i64 5)
  %5776 = ptrtoint %nyx_string* %5775 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5734, i64 %5776, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %5734, i64 2)
  %5777 = alloca { i64, i8* }*
  store { i64, i8* }* %5734, { i64, i8* }** %5777
  %5778 = getelementptr [49 x i8], [49 x i8]* @.str885, i32 0, i32 0
  %5779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %5778, i64 48)
  %5780 = alloca %nyx_string*
  store %nyx_string* %5779, %nyx_string** %5780
  %5781 = load %nyx_string*, %nyx_string** %5780
  %5782 = getelementptr [19 x i8], [19 x i8]* @.str886, i32 0, i32 0
  %5783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %5782, i64 18)
  %5784 = call %nyx_string* @nyx_string_concat(%nyx_string* %5781, %nyx_string* %5783)
  %5785 = call %nyx_string* @toolchain_version()
  %5786 = call %nyx_string* @nyx_string_concat(%nyx_string* %5784, %nyx_string* %5785)
  %5787 = getelementptr [6 x i8], [6 x i8]* @.str887, i32 0, i32 0
  %5788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %5787, i64 5)
  %5789 = call %nyx_string* @nyx_string_concat(%nyx_string* %5786, %nyx_string* %5788)
  store %nyx_string* %5789, %nyx_string** %5780
  %5790 = load %nyx_string*, %nyx_string** %5780
  %5791 = getelementptr [103 x i8], [103 x i8]* @.str888, i32 0, i32 0
  %5792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %5791, i64 102)
  %5793 = call %nyx_string* @nyx_string_concat(%nyx_string* %5790, %nyx_string* %5792)
  store %nyx_string* %5793, %nyx_string** %5780
  %5794 = load %nyx_string*, %nyx_string** %5780
  %5795 = getelementptr [103 x i8], [103 x i8]* @.str889, i32 0, i32 0
  %5796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %5795, i64 102)
  %5797 = call %nyx_string* @nyx_string_concat(%nyx_string* %5794, %nyx_string* %5796)
  store %nyx_string* %5797, %nyx_string** %5780
  %5798 = load %nyx_string*, %nyx_string** %5780
  %5799 = getelementptr [95 x i8], [95 x i8]* @.str890, i32 0, i32 0
  %5800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %5799, i64 94)
  %5801 = call %nyx_string* @nyx_string_concat(%nyx_string* %5798, %nyx_string* %5800)
  store %nyx_string* %5801, %nyx_string** %5780
  %5802 = alloca i64
  store i64 0, i64* %5802
  %5803 = getelementptr [1 x i8], [1 x i8]* @.str891, i32 0, i32 0
  %5804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %5803, i64 0)
  %5805 = alloca %nyx_string*
  store %nyx_string* %5804, %nyx_string** %5805
  %5806 = getelementptr [4 x i8], [4 x i8]* @.str892, i32 0, i32 0
  %5807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %5806, i64 3)
  %5808 = alloca %nyx_string*
  store %nyx_string* %5807, %nyx_string** %5808
  %5809 = getelementptr [6 x i8], [6 x i8]* @.str893, i32 0, i32 0
  %5810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %5809, i64 5)
  %5811 = alloca %nyx_string*
  store %nyx_string* %5810, %nyx_string** %5811
  %5812 = getelementptr [4 x i8], [4 x i8]* @.str894, i32 0, i32 0
  %5813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %5812, i64 3)
  %5814 = alloca %nyx_string*
  store %nyx_string* %5813, %nyx_string** %5814
  %5815 = getelementptr [3 x i8], [3 x i8]* @.str895, i32 0, i32 0
  %5816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %5815, i64 2)
  %5817 = alloca %nyx_string*
  store %nyx_string* %5816, %nyx_string** %5817
  %5818 = call i8* @llvm.stacksave()
  br label %while_cond1002
while_cond1002:
  %5819 = load i64, i64* %5802
  %5820 = load { i64, i8* }*, { i64, i8* }** %5777
  %5821 = call i64 @nyx_array_length({ i64, i8* }* %5820)
  %5822 = icmp slt i64 %5819, %5821
  br i1 %5822, label %while_body1003, label %while_end1004
while_body1003:
  call void @llvm.stackrestore(i8* %5818)
  %5823 = load { i64, i8* }*, { i64, i8* }** %5777
  %5824 = load i64, i64* %5802
  %5825 = call i64 @nyx_array_get_checked({ i64, i8* }* %5823, i64 %5824, i64 2)
  %5826 = inttoptr i64 %5825 to %nyx_string*
  %5827 = alloca %nyx_string*
  store %nyx_string* %5826, %nyx_string** %5827
  %5828 = load %nyx_string*, %nyx_string** %5805
  %5829 = alloca %nyx_string*
  store %nyx_string* %5828, %nyx_string** %5829
  %5830 = alloca i64
  store i64 0, i64* %5830
  %5831 = call i8* @llvm.stacksave()
  br label %while_cond1005
while_cond1005:
  %5832 = load i64, i64* %5830
  %5833 = load { i64, i8* }*, { i64, i8* }** %5733
  %5834 = call i64 @nyx_array_length({ i64, i8* }* %5833)
  %5835 = icmp slt i64 %5832, %5834
  br i1 %5835, label %while_body1006, label %while_end1007
while_body1006:
  call void @llvm.stackrestore(i8* %5831)
  %5836 = load { i64, i8* }*, { i64, i8* }** %5733
  %5837 = load i64, i64* %5830
  %5838 = call i64 @nyx_array_get_checked({ i64, i8* }* %5836, i64 %5837, i64 2)
  %5839 = inttoptr i64 %5838 to %nyx_string*
  %5840 = alloca %nyx_string*
  store %nyx_string* %5839, %nyx_string** %5840
  %5841 = load %nyx_string*, %nyx_string** %5840
  %5842 = load %nyx_string*, %nyx_string** %5808
  %5843 = call i1 @nyx_string_ends_with(%nyx_string* %5841, %nyx_string* %5842)
  br i1 %5843, label %then1008, label %else1009
then1008:
  %5844 = load %nyx_string*, %nyx_string** %5840
  %5845 = load %nyx_string*, %nyx_string** %5840
  %5846 = call i64 @nyx_string_byte_length(%nyx_string* %5845)
  %5847 = sub i64 %5846, 3
  %5848 = call %nyx_string* @nyx_string_substring(%nyx_string* %5844, i64 0, i64 %5847)
  %5849 = alloca %nyx_string*
  store %nyx_string* %5848, %nyx_string** %5849
  %5850 = load %nyx_string*, %nyx_string** %5849
  %5851 = call %nyx_string* @module_category(%nyx_string* %5850)
  %5852 = alloca %nyx_string*
  store %nyx_string* %5851, %nyx_string** %5852
  %5853 = load %nyx_string*, %nyx_string** %5852
  %5854 = load %nyx_string*, %nyx_string** %5805
  %5855 = call i1 @nyx_string_equals(%nyx_string* %5853, %nyx_string* %5854)
  br i1 %5855, label %then1011, label %else1012
then1011:
  %5856 = load %nyx_string*, %nyx_string** %5811
  store %nyx_string* %5856, %nyx_string** %5852
  br label %merge1013
else1012:
  br label %merge1013
merge1013:
  %5857 = load %nyx_string*, %nyx_string** %5852
  %5858 = load %nyx_string*, %nyx_string** %5827
  %5859 = call i1 @nyx_string_equals(%nyx_string* %5857, %nyx_string* %5858)
  br i1 %5859, label %then1014, label %else1015
then1014:
  %5860 = load %nyx_string*, %nyx_string** %5722
  %5861 = load %nyx_string*, %nyx_string** %5840
  %5862 = call %nyx_string* @capabilities_module_section(%nyx_string* %5860, %nyx_string* %5861)
  %5863 = alloca %nyx_string*
  store %nyx_string* %5862, %nyx_string** %5863
  %5864 = load %nyx_string*, %nyx_string** %5863
  %5865 = load %nyx_string*, %nyx_string** %5805
  %5866 = call i1 @nyx_string_equals(%nyx_string* %5864, %nyx_string* %5865)
  %5867 = xor i1 %5866, true
  br i1 %5867, label %then1017, label %else1018
then1017:
  %5868 = load %nyx_string*, %nyx_string** %5829
  %5869 = load %nyx_string*, %nyx_string** %5863
  %5870 = call %nyx_string* @nyx_string_concat(%nyx_string* %5868, %nyx_string* %5869)
  store %nyx_string* %5870, %nyx_string** %5829
  br label %merge1019
else1018:
  br label %merge1019
merge1019:
  br label %merge1016
else1015:
  br label %merge1016
merge1016:
  br label %merge1010
else1009:
  br label %merge1010
merge1010:
  %5871 = load i64, i64* %5830
  %5872 = add i64 %5871, 1
  store i64 %5872, i64* %5830
  br label %while_cond1005
while_end1007:
  %5873 = load %nyx_string*, %nyx_string** %5722
  %5874 = load %nyx_string*, %nyx_string** %5827
  %5875 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %5873, %nyx_string* %5874)
  %5876 = alloca %nyx_string*
  store %nyx_string* %5875, %nyx_string** %5876
  %5877 = alloca i1
  store i1 true, i1* %5877
  %5878 = load %nyx_string*, %nyx_string** %5829
  %5879 = load %nyx_string*, %nyx_string** %5805
  %5880 = call i1 @nyx_string_equals(%nyx_string* %5878, %nyx_string* %5879)
  %5881 = xor i1 %5880, true
  br i1 %5881, label %sc_or_end1021, label %sc_or_rhs1020
sc_or_rhs1020:
  %5882 = load %nyx_string*, %nyx_string** %5876
  %5883 = load %nyx_string*, %nyx_string** %5805
  %5884 = call i1 @nyx_string_equals(%nyx_string* %5882, %nyx_string* %5883)
  %5885 = xor i1 %5884, true
  store i1 %5885, i1* %5877
  br label %sc_or_end1021
sc_or_end1021:
  %5886 = load i1, i1* %5877
  br i1 %5886, label %then1022, label %else1023
then1022:
  %5887 = load %nyx_string*, %nyx_string** %5780
  %5888 = load %nyx_string*, %nyx_string** %5814
  %5889 = call %nyx_string* @nyx_string_concat(%nyx_string* %5887, %nyx_string* %5888)
  %5890 = load %nyx_string*, %nyx_string** %5827
  %5891 = call %nyx_string* @nyx_string_concat(%nyx_string* %5889, %nyx_string* %5890)
  %5892 = load %nyx_string*, %nyx_string** %5817
  %5893 = call %nyx_string* @nyx_string_concat(%nyx_string* %5891, %nyx_string* %5892)
  %5894 = load %nyx_string*, %nyx_string** %5829
  %5895 = call %nyx_string* @nyx_string_concat(%nyx_string* %5893, %nyx_string* %5894)
  %5896 = load %nyx_string*, %nyx_string** %5876
  %5897 = call %nyx_string* @nyx_string_concat(%nyx_string* %5895, %nyx_string* %5896)
  store %nyx_string* %5897, %nyx_string** %5780
  br label %merge1024
else1023:
  br label %merge1024
merge1024:
  %5898 = load i64, i64* %5802
  %5899 = add i64 %5898, 1
  store i64 %5899, i64* %5802
  br label %while_cond1002
while_end1004:
  %5900 = getelementptr [16 x i8], [16 x i8]* @.str896, i32 0, i32 0
  %5901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %5900, i64 15)
  %5902 = alloca %nyx_string*
  store %nyx_string* %5901, %nyx_string** %5902
  %5903 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %5904 = getelementptr [1 x i8], [1 x i8]* @.str897, i32 0, i32 0
  %5905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %5904, i64 0)
  %5906 = call i1 @nyx_string_equals(%nyx_string* %5903, %nyx_string* %5905)
  %5907 = xor i1 %5906, true
  br i1 %5907, label %then1025, label %else1026
then1025:
  %5908 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %5908, %nyx_string** %5902
  br label %merge1027
else1026:
  br label %merge1027
merge1027:
  %5909 = load %nyx_string*, %nyx_string** %5902
  %5910 = load %nyx_string*, %nyx_string** %5780
  %5911 = call i8* @nyx_string_to_cstr(%nyx_string* %5909)
  %5912 = call i1 @nyx_write_file_safe(i8* %5911, %nyx_string* %5910)
  %5913 = getelementptr [32 x i8], [32 x i8]* @.str898, i32 0, i32 0
  %5914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %5913, i64 31)
  %5915 = load %nyx_string*, %nyx_string** %5722
  %5916 = call %nyx_string* @nyx_string_concat(%nyx_string* %5914, %nyx_string* %5915)
  %5917 = getelementptr [3 x i8], [3 x i8]* @.str899, i32 0, i32 0
  %5918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %5917, i64 2)
  %5919 = call %nyx_string* @nyx_string_concat(%nyx_string* %5916, %nyx_string* %5918)
  %5920 = load { i64, i8* }*, { i64, i8* }** %5733
  %5921 = call i64 @nyx_array_length({ i64, i8* }* %5920)
  %5922 = call %nyx_string* @nyx_string_from_int(i64 %5921)
  %5923 = call %nyx_string* @nyx_string_concat(%nyx_string* %5919, %nyx_string* %5922)
  %5924 = getelementptr [22 x i8], [22 x i8]* @.str900, i32 0, i32 0
  %5925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %5924, i64 21)
  %5926 = call %nyx_string* @nyx_string_concat(%nyx_string* %5923, %nyx_string* %5925)
  %5927 = call i8* @nyx_string_to_cstr(%nyx_string* %5926)
  call void @nyx_print_string(i8* %5927)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %5928 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %5929 = ptrtoint %SharedEnv_main* %5928 to i64
  %5930 = call i8* @GC_malloc(i64 %5929)
  %5931 = bitcast i8* %5930 to %SharedEnv_main*
  %5932 = call { i64, i8* }* @nyx_get_args()
  %5933 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 0
  store { i64, i8* }* %5932, { i64, i8* }** %5933
  %5934 = getelementptr [6 x i8], [6 x i8]* @.str901, i32 0, i32 0
  %5935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %5934, i64 5)
  %5936 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 1
  store %nyx_string* %5935, %nyx_string** %5936
  %5937 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 2
  store i1 0, i1* %5937
  %5938 = getelementptr [1 x i8], [1 x i8]* @.str902, i32 0, i32 0
  %5939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %5938, i64 0)
  %5940 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 3
  store %nyx_string* %5939, %nyx_string** %5940
  %5941 = getelementptr [1 x i8], [1 x i8]* @.str903, i32 0, i32 0
  %5942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %5941, i64 0)
  %5943 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 4
  store %nyx_string* %5942, %nyx_string** %5943
  %5944 = load { i64, i8* }*, { i64, i8* }** %5933
  %5945 = call i64 @nyx_array_length({ i64, i8* }* %5944)
  %5946 = icmp sge i64 %5945, 2
  br i1 %5946, label %then1028, label %else1029
then1028:
  %5947 = load { i64, i8* }*, { i64, i8* }** %5933
  %5948 = call i64 @nyx_array_get_checked({ i64, i8* }* %5947, i64 1, i64 2)
  %5949 = inttoptr i64 %5948 to %nyx_string*
  %5950 = alloca %nyx_string*
  store %nyx_string* %5949, %nyx_string** %5950
  %5951 = load %nyx_string*, %nyx_string** %5950
  store %nyx_string* %5951, %nyx_string** %5936
  br label %merge1030
else1029:
  br label %merge1030
merge1030:
  %5952 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 5
  store i64 2, i64* %5952
  %5953 = getelementptr [1 x i8], [1 x i8]* @.str904, i32 0, i32 0
  %5954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %5953, i64 0)
  %5955 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 6
  store %nyx_string* %5954, %nyx_string** %5955
  %5956 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 7
  store i1 0, i1* %5956
  %5957 = alloca i1
  store i1 true, i1* %5957
  %5958 = alloca i1
  store i1 true, i1* %5958
  %5959 = load %nyx_string*, %nyx_string** %5936
  %5960 = getelementptr [6 x i8], [6 x i8]* @.str905, i32 0, i32 0
  %5961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %5960, i64 5)
  %5962 = call i1 @nyx_string_equals(%nyx_string* %5959, %nyx_string* %5961)
  br i1 %5962, label %sc_or_end1032, label %sc_or_rhs1031
sc_or_rhs1031:
  %5963 = load %nyx_string*, %nyx_string** %5936
  %5964 = getelementptr [4 x i8], [4 x i8]* @.str906, i32 0, i32 0
  %5965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %5964, i64 3)
  %5966 = call i1 @nyx_string_equals(%nyx_string* %5963, %nyx_string* %5965)
  store i1 %5966, i1* %5958
  br label %sc_or_end1032
sc_or_end1032:
  %5967 = load i1, i1* %5958
  br i1 %5967, label %sc_or_end1034, label %sc_or_rhs1033
sc_or_rhs1033:
  %5968 = load %nyx_string*, %nyx_string** %5936
  %5969 = getelementptr [5 x i8], [5 x i8]* @.str907, i32 0, i32 0
  %5970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %5969, i64 4)
  %5971 = call i1 @nyx_string_equals(%nyx_string* %5968, %nyx_string* %5970)
  store i1 %5971, i1* %5957
  br label %sc_or_end1034
sc_or_end1034:
  %5972 = load i1, i1* %5957
  %5973 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 8
  store i1 %5972, i1* %5973
  %5974 = getelementptr [3 x i8], [3 x i8]* @.str908, i32 0, i32 0
  %5975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %5974, i64 2)
  %5976 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 9
  store %nyx_string* %5975, %nyx_string** %5976
  %5977 = getelementptr [10 x i8], [10 x i8]* @.str909, i32 0, i32 0
  %5978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %5977, i64 9)
  %5979 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 10
  store %nyx_string* %5978, %nyx_string** %5979
  %5980 = getelementptr [7 x i8], [7 x i8]* @.str910, i32 0, i32 0
  %5981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %5980, i64 6)
  %5982 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 11
  store %nyx_string* %5981, %nyx_string** %5982
  %5983 = getelementptr [1 x i8], [1 x i8]* @.str911, i32 0, i32 0
  %5984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %5983, i64 0)
  %5985 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 12
  store %nyx_string* %5984, %nyx_string** %5985
  %5986 = getelementptr [66 x i8], [66 x i8]* @.str912, i32 0, i32 0
  %5987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %5986, i64 65)
  %5988 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 13
  store %nyx_string* %5987, %nyx_string** %5988
  %5989 = getelementptr [7 x i8], [7 x i8]* @.str913, i32 0, i32 0
  %5990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %5989, i64 6)
  %5991 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 14
  store %nyx_string* %5990, %nyx_string** %5991
  %5992 = getelementptr [3 x i8], [3 x i8]* @.str914, i32 0, i32 0
  %5993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %5992, i64 2)
  %5994 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 15
  store %nyx_string* %5993, %nyx_string** %5994
  %5995 = getelementptr [9 x i8], [9 x i8]* @.str915, i32 0, i32 0
  %5996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %5995, i64 8)
  %5997 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 16
  store %nyx_string* %5996, %nyx_string** %5997
  %5998 = getelementptr [63 x i8], [63 x i8]* @.str916, i32 0, i32 0
  %5999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %5998, i64 62)
  %6000 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 17
  store %nyx_string* %5999, %nyx_string** %6000
  %6001 = getelementptr [28 x i8], [28 x i8]* @.str917, i32 0, i32 0
  %6002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %6001, i64 27)
  %6003 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 18
  store %nyx_string* %6002, %nyx_string** %6003
  %6004 = getelementptr [4 x i8], [4 x i8]* @.str918, i32 0, i32 0
  %6005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %6004, i64 3)
  %6006 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 19
  store %nyx_string* %6005, %nyx_string** %6006
  %6007 = call i8* @llvm.stacksave()
  br label %while_cond1035
while_cond1035:
  %6008 = load i64, i64* %5952
  %6009 = load { i64, i8* }*, { i64, i8* }** %5933
  %6010 = call i64 @nyx_array_length({ i64, i8* }* %6009)
  %6011 = icmp slt i64 %6008, %6010
  br i1 %6011, label %while_body1036, label %while_end1037
while_body1036:
  call void @llvm.stackrestore(i8* %6007)
  %6012 = load { i64, i8* }*, { i64, i8* }** %5933
  %6013 = load i64, i64* %5952
  %6014 = call i64 @nyx_array_get_checked({ i64, i8* }* %6012, i64 %6013, i64 2)
  %6015 = inttoptr i64 %6014 to %nyx_string*
  %6016 = alloca %nyx_string*
  store %nyx_string* %6015, %nyx_string** %6016
  %6017 = load %nyx_string*, %nyx_string** %6016
  %6018 = load %nyx_string*, %nyx_string** %5976
  %6019 = call i1 @nyx_string_equals(%nyx_string* %6017, %nyx_string* %6018)
  br i1 %6019, label %then1038, label %else1039
then1038:
  %6020 = load { i64, i8* }*, { i64, i8* }** %5933
  %6021 = call i64 @nyx_array_length({ i64, i8* }* %6020)
  store i64 %6021, i64* %5952
  br label %merge1040
else1039:
  %6022 = load %nyx_string*, %nyx_string** %6016
  %6023 = load %nyx_string*, %nyx_string** %5979
  %6024 = call i1 @nyx_string_equals(%nyx_string* %6022, %nyx_string* %6023)
  br i1 %6024, label %then1041, label %else1042
then1041:
  store i1 1, i1* %5937
  br label %merge1043
else1042:
  %6025 = load %nyx_string*, %nyx_string** %6016
  %6026 = load %nyx_string*, %nyx_string** %5982
  %6027 = call i1 @nyx_string_equals(%nyx_string* %6025, %nyx_string* %6026)
  br i1 %6027, label %then1044, label %else1045
then1044:
  %6028 = load %nyx_string*, %nyx_string** %5985
  %6029 = alloca %nyx_string*
  store %nyx_string* %6028, %nyx_string** %6029
  %6030 = load i64, i64* %5952
  %6031 = add i64 %6030, 1
  %6032 = load { i64, i8* }*, { i64, i8* }** %5933
  %6033 = call i64 @nyx_array_length({ i64, i8* }* %6032)
  %6034 = icmp slt i64 %6031, %6033
  br i1 %6034, label %then1047, label %else1048
then1047:
  %6035 = load { i64, i8* }*, { i64, i8* }** %5933
  %6036 = load i64, i64* %5952
  %6037 = add i64 %6036, 1
  %6038 = call i64 @nyx_array_get_checked({ i64, i8* }* %6035, i64 %6037, i64 2)
  %6039 = inttoptr i64 %6038 to %nyx_string*
  %6040 = alloca %nyx_string*
  store %nyx_string* %6039, %nyx_string** %6040
  %6041 = load %nyx_string*, %nyx_string** %6040
  %6042 = load %nyx_string*, %nyx_string** %5976
  %6043 = call i1 @nyx_string_starts_with(%nyx_string* %6041, %nyx_string* %6042)
  %6044 = xor i1 %6043, true
  br i1 %6044, label %then1050, label %else1051
then1050:
  %6045 = load %nyx_string*, %nyx_string** %6040
  store %nyx_string* %6045, %nyx_string** %6029
  br label %merge1052
else1051:
  br label %merge1052
merge1052:
  br label %merge1049
else1048:
  br label %merge1049
merge1049:
  %6046 = load %nyx_string*, %nyx_string** %6029
  %6047 = load %nyx_string*, %nyx_string** %5985
  %6048 = call i1 @nyx_string_equals(%nyx_string* %6046, %nyx_string* %6047)
  br i1 %6048, label %then1053, label %else1054
then1053:
  %6049 = load %nyx_string*, %nyx_string** %5955
  %6050 = load %nyx_string*, %nyx_string** %5985
  %6051 = call i1 @nyx_string_equals(%nyx_string* %6049, %nyx_string* %6050)
  br i1 %6051, label %then1056, label %else1057
then1056:
  %6052 = load %nyx_string*, %nyx_string** %5988
  store %nyx_string* %6052, %nyx_string** %5955
  br label %merge1058
else1057:
  br label %merge1058
merge1058:
  br label %merge1055
else1054:
  %6053 = load %nyx_string*, %nyx_string** %6029
  store %nyx_string* %6053, %nyx_string** %5943
  %6054 = load i64, i64* %5952
  %6055 = add i64 %6054, 1
  store i64 %6055, i64* %5952
  br label %merge1055
merge1055:
  br label %merge1046
else1045:
  %6056 = alloca i1
  store i1 true, i1* %6056
  %6057 = load %nyx_string*, %nyx_string** %6016
  %6058 = load %nyx_string*, %nyx_string** %5991
  %6059 = call i1 @nyx_string_equals(%nyx_string* %6057, %nyx_string* %6058)
  br i1 %6059, label %sc_or_end1060, label %sc_or_rhs1059
sc_or_rhs1059:
  %6060 = load %nyx_string*, %nyx_string** %6016
  %6061 = load %nyx_string*, %nyx_string** %5994
  %6062 = call i1 @nyx_string_equals(%nyx_string* %6060, %nyx_string* %6061)
  store i1 %6062, i1* %6056
  br label %sc_or_end1060
sc_or_end1060:
  %6063 = load i1, i1* %6056
  br i1 %6063, label %then1061, label %else1062
then1061:
  store i1 1, i1* %5956
  br label %merge1063
else1062:
  %6064 = load %nyx_string*, %nyx_string** %6016
  %6065 = load %nyx_string*, %nyx_string** %5997
  %6066 = call i1 @nyx_string_equals(%nyx_string* %6064, %nyx_string* %6065)
  br i1 %6066, label %then1064, label %else1065
then1064:
  %6067 = load i64, i64* %5952
  %6068 = add i64 %6067, 1
  %6069 = load { i64, i8* }*, { i64, i8* }** %5933
  %6070 = call i64 @nyx_array_length({ i64, i8* }* %6069)
  %6071 = icmp slt i64 %6068, %6070
  br i1 %6071, label %then1067, label %else1068
then1067:
  %6072 = load { i64, i8* }*, { i64, i8* }** %5933
  %6073 = load i64, i64* %5952
  %6074 = add i64 %6073, 1
  %6075 = call i64 @nyx_array_get_checked({ i64, i8* }* %6072, i64 %6074, i64 2)
  %6076 = inttoptr i64 %6075 to %nyx_string*
  %6077 = alloca %nyx_string*
  store %nyx_string* %6076, %nyx_string** %6077
  %6078 = load %nyx_string*, %nyx_string** %6077
  store %nyx_string* %6078, %nyx_string** %5940
  %6079 = load i64, i64* %5952
  %6080 = add i64 %6079, 1
  store i64 %6080, i64* %5952
  br label %merge1069
else1068:
  %6081 = load %nyx_string*, %nyx_string** %6000
  store %nyx_string* %6081, %nyx_string** %5955
  br label %merge1069
merge1069:
  br label %merge1066
else1065:
  %6082 = alloca i1
  store i1 false, i1* %6082
  %6083 = load i1, i1* %5973
  br i1 %6083, label %sc_and_rhs1070, label %sc_and_end1071
sc_and_rhs1070:
  %6084 = load %nyx_string*, %nyx_string** %6016
  %6085 = call i64 @nyx_string_byte_length(%nyx_string* %6084)
  %6086 = icmp sgt i64 %6085, 1
  store i1 %6086, i1* %6082
  br label %sc_and_end1071
sc_and_end1071:
  %6087 = load i1, i1* %6082
  br i1 %6087, label %then1072, label %else1073
then1072:
  %6088 = alloca i1
  store i1 false, i1* %6088
  %6089 = load %nyx_string*, %nyx_string** %6016
  %6090 = call i8 @nyx_string_char_at(%nyx_string* %6089, i64 0)
  %6091 = zext i8 %6090 to i64
  %6092 = getelementptr [1 x i8], [1 x i8]* @.str919, i32 0, i32 0
  %6093 = load i8, i8* %6092
  %6094 = zext i8 %6093 to i64
  %6095 = icmp eq i64 %6091, %6094
  br i1 %6095, label %sc_and_rhs1075, label %sc_and_end1076
sc_and_rhs1075:
  %6096 = load %nyx_string*, %nyx_string** %5955
  %6097 = load %nyx_string*, %nyx_string** %5985
  %6098 = call i1 @nyx_string_equals(%nyx_string* %6096, %nyx_string* %6097)
  store i1 %6098, i1* %6088
  br label %sc_and_end1076
sc_and_end1076:
  %6099 = load i1, i1* %6088
  br i1 %6099, label %then1077, label %else1078
then1077:
  %6100 = load %nyx_string*, %nyx_string** %6003
  %6101 = load %nyx_string*, %nyx_string** %5936
  %6102 = call %nyx_string* @nyx_string_concat(%nyx_string* %6100, %nyx_string* %6101)
  %6103 = load %nyx_string*, %nyx_string** %6006
  %6104 = call %nyx_string* @nyx_string_concat(%nyx_string* %6102, %nyx_string* %6103)
  %6105 = load %nyx_string*, %nyx_string** %6016
  %6106 = call %nyx_string* @nyx_string_concat(%nyx_string* %6104, %nyx_string* %6105)
  store %nyx_string* %6106, %nyx_string** %5955
  br label %merge1079
else1078:
  br label %merge1079
merge1079:
  br label %merge1074
else1073:
  br label %merge1074
merge1074:
  br label %merge1066
merge1066:
  br label %merge1063
merge1063:
  br label %merge1046
merge1046:
  br label %merge1043
merge1043:
  br label %merge1040
merge1040:
  %6107 = load i64, i64* %5952
  %6108 = add i64 %6107, 1
  store i64 %6108, i64* %5952
  br label %while_cond1035
while_end1037:
  %6109 = alloca i1
  store i1 false, i1* %6109
  %6110 = load i1, i1* %5956
  br i1 %6110, label %sc_and_rhs1080, label %sc_and_end1081
sc_and_rhs1080:
  %6111 = load i1, i1* %5973
  store i1 %6111, i1* %6109
  br label %sc_and_end1081
sc_and_end1081:
  %6112 = load i1, i1* %6109
  br i1 %6112, label %then1082, label %else1083
then1082:
  %6113 = getelementptr [5 x i8], [5 x i8]* @.str920, i32 0, i32 0
  %6114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %6113, i64 4)
  %6115 = load %nyx_string*, %nyx_string** %5936
  %6116 = call %nyx_string* @nyx_string_concat(%nyx_string* %6114, %nyx_string* %6115)
  %6117 = getelementptr [24 x i8], [24 x i8]* @.str921, i32 0, i32 0
  %6118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %6117, i64 23)
  %6119 = call %nyx_string* @nyx_string_concat(%nyx_string* %6116, %nyx_string* %6118)
  %6120 = call i8* @nyx_string_to_cstr(%nyx_string* %6119)
  call void @nyx_print_string(i8* %6120)
  %6121 = getelementptr [42 x i8], [42 x i8]* @.str922, i32 0, i32 0
  %6122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %6121, i64 41)
  %6123 = call i8* @nyx_string_to_cstr(%nyx_string* %6122)
  call void @nyx_print_string(i8* %6123)
  %6124 = getelementptr [88 x i8], [88 x i8]* @.str923, i32 0, i32 0
  %6125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %6124, i64 87)
  %6126 = call i8* @nyx_string_to_cstr(%nyx_string* %6125)
  call void @nyx_print_string(i8* %6126)
  %6127 = getelementptr [94 x i8], [94 x i8]* @.str924, i32 0, i32 0
  %6128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %6127, i64 93)
  %6129 = call i8* @nyx_string_to_cstr(%nyx_string* %6128)
  call void @nyx_print_string(i8* %6129)
  %6130 = getelementptr [94 x i8], [94 x i8]* @.str925, i32 0, i32 0
  %6131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %6130, i64 93)
  %6132 = call i8* @nyx_string_to_cstr(%nyx_string* %6131)
  call void @nyx_print_string(i8* %6132)
  %6133 = getelementptr [34 x i8], [34 x i8]* @.str926, i32 0, i32 0
  %6134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %6133, i64 33)
  %6135 = call i8* @nyx_string_to_cstr(%nyx_string* %6134)
  call void @nyx_print_string(i8* %6135)
  %6136 = getelementptr [1 x i8], [1 x i8]* @.str927, i32 0, i32 0
  %6137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %6136, i64 0)
  %6138 = call i8* @nyx_string_to_cstr(%nyx_string* %6137)
  call void @nyx_print_string(i8* %6138)
  %6139 = getelementptr [71 x i8], [71 x i8]* @.str928, i32 0, i32 0
  %6140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %6139, i64 70)
  %6141 = call i8* @nyx_string_to_cstr(%nyx_string* %6140)
  call void @nyx_print_string(i8* %6141)
  ret i64 0
else1083:
  br label %merge1084
merge1084:
  %6142 = load %nyx_string*, %nyx_string** %5955
  %6143 = getelementptr [1 x i8], [1 x i8]* @.str929, i32 0, i32 0
  %6144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %6143, i64 0)
  %6145 = call i1 @nyx_string_equals(%nyx_string* %6142, %nyx_string* %6144)
  %6146 = xor i1 %6145, true
  br i1 %6146, label %then1085, label %else1086
then1085:
  %6147 = getelementptr [8 x i8], [8 x i8]* @.str930, i32 0, i32 0
  %6148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %6147, i64 7)
  %6149 = load %nyx_string*, %nyx_string** %5955
  %6150 = call %nyx_string* @nyx_string_concat(%nyx_string* %6148, %nyx_string* %6149)
  %6151 = call i8* @nyx_string_to_cstr(%nyx_string* %6150)
  call void @nyx_print_string(i8* %6151)
  %6152 = getelementptr [8 x i8], [8 x i8]* @.str931, i32 0, i32 0
  %6153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %6152, i64 7)
  %6154 = load %nyx_string*, %nyx_string** %5936
  %6155 = call %nyx_string* @nyx_string_concat(%nyx_string* %6153, %nyx_string* %6154)
  %6156 = getelementptr [37 x i8], [37 x i8]* @.str932, i32 0, i32 0
  %6157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %6156, i64 36)
  %6158 = call %nyx_string* @nyx_string_concat(%nyx_string* %6155, %nyx_string* %6157)
  %6159 = call i8* @nyx_string_to_cstr(%nyx_string* %6158)
  call void @nyx_print_string(i8* %6159)
  ret i64 1
else1086:
  br label %merge1087
merge1087:
  %6160 = getelementptr [6 x i8], [6 x i8]* @.str933, i32 0, i32 0
  %6161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %6160, i64 5)
  %6162 = call %nyx_string* @toolchain_version()
  %6163 = call %nyx_string* @nyx_string_concat(%nyx_string* %6161, %nyx_string* %6162)
  %6164 = getelementptr [6 x i8], [6 x i8]* @.str934, i32 0, i32 0
  %6165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %6164, i64 5)
  %6166 = call %nyx_string* @nyx_string_concat(%nyx_string* %6163, %nyx_string* %6165)
  %6167 = load %nyx_string*, %nyx_string** %5936
  %6168 = call %nyx_string* @nyx_string_concat(%nyx_string* %6166, %nyx_string* %6167)
  %6169 = call i8* @nyx_string_to_cstr(%nyx_string* %6168)
  call void @nyx_print_string(i8* %6169)
  %6170 = load %nyx_string*, %nyx_string** %5936
  %6171 = getelementptr [5 x i8], [5 x i8]* @.str935, i32 0, i32 0
  %6172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %6171, i64 4)
  %6173 = call i1 @nyx_string_equals(%nyx_string* %6170, %nyx_string* %6172)
  br i1 %6173, label %then1088, label %else1089
then1088:
  %6174 = getelementptr [1 x i8], [1 x i8]* @.str936, i32 0, i32 0
  %6175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %6174, i64 0)
  %6176 = alloca %nyx_string*
  store %nyx_string* %6175, %nyx_string** %6176
  %6177 = getelementptr [1 x i8], [1 x i8]* @.str937, i32 0, i32 0
  %6178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %6177, i64 0)
  %6179 = alloca %nyx_string*
  store %nyx_string* %6178, %nyx_string** %6179
  %6180 = getelementptr [1 x i8], [1 x i8]* @.str938, i32 0, i32 0
  %6181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %6180, i64 0)
  %6182 = alloca %nyx_string*
  store %nyx_string* %6181, %nyx_string** %6182
  %6183 = alloca i1
  store i1 0, i1* %6183
  %6184 = getelementptr [1 x i8], [1 x i8]* @.str939, i32 0, i32 0
  %6185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %6184, i64 0)
  %6186 = alloca %nyx_string*
  store %nyx_string* %6185, %nyx_string** %6186
  %6187 = getelementptr [1 x i8], [1 x i8]* @.str940, i32 0, i32 0
  %6188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %6187, i64 0)
  %6189 = alloca %nyx_string*
  store %nyx_string* %6188, %nyx_string** %6189
  %6190 = alloca i64
  store i64 2, i64* %6190
  %6191 = getelementptr [7 x i8], [7 x i8]* @.str941, i32 0, i32 0
  %6192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %6191, i64 6)
  %6193 = alloca %nyx_string*
  store %nyx_string* %6192, %nyx_string** %6193
  %6194 = getelementptr [8 x i8], [8 x i8]* @.str942, i32 0, i32 0
  %6195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %6194, i64 7)
  %6196 = alloca %nyx_string*
  store %nyx_string* %6195, %nyx_string** %6196
  %6197 = getelementptr [1 x i8], [1 x i8]* @.str943, i32 0, i32 0
  %6198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %6197, i64 0)
  %6199 = alloca %nyx_string*
  store %nyx_string* %6198, %nyx_string** %6199
  %6200 = getelementptr [3 x i8], [3 x i8]* @.str944, i32 0, i32 0
  %6201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %6200, i64 2)
  %6202 = alloca %nyx_string*
  store %nyx_string* %6201, %nyx_string** %6202
  %6203 = getelementptr [8 x i8], [8 x i8]* @.str945, i32 0, i32 0
  %6204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %6203, i64 7)
  %6205 = alloca %nyx_string*
  store %nyx_string* %6204, %nyx_string** %6205
  %6206 = getelementptr [9 x i8], [9 x i8]* @.str946, i32 0, i32 0
  %6207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %6206, i64 8)
  %6208 = alloca %nyx_string*
  store %nyx_string* %6207, %nyx_string** %6208
  %6209 = getelementptr [6 x i8], [6 x i8]* @.str947, i32 0, i32 0
  %6210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %6209, i64 5)
  %6211 = alloca %nyx_string*
  store %nyx_string* %6210, %nyx_string** %6211
  %6212 = call i8* @llvm.stacksave()
  br label %while_cond1091
while_cond1091:
  %6213 = load i64, i64* %6190
  %6214 = load { i64, i8* }*, { i64, i8* }** %5933
  %6215 = call i64 @nyx_array_length({ i64, i8* }* %6214)
  %6216 = icmp slt i64 %6213, %6215
  br i1 %6216, label %while_body1092, label %while_end1093
while_body1092:
  call void @llvm.stackrestore(i8* %6212)
  %6217 = load { i64, i8* }*, { i64, i8* }** %5933
  %6218 = load i64, i64* %6190
  %6219 = call i64 @nyx_array_get_checked({ i64, i8* }* %6217, i64 %6218, i64 2)
  %6220 = inttoptr i64 %6219 to %nyx_string*
  %6221 = alloca %nyx_string*
  store %nyx_string* %6220, %nyx_string** %6221
  %6222 = alloca i1
  store i1 0, i1* %6222
  %6223 = alloca i1
  store i1 true, i1* %6223
  %6224 = load %nyx_string*, %nyx_string** %6221
  %6225 = load %nyx_string*, %nyx_string** %6193
  %6226 = call i1 @nyx_string_equals(%nyx_string* %6224, %nyx_string* %6225)
  br i1 %6226, label %sc_or_end1095, label %sc_or_rhs1094
sc_or_rhs1094:
  %6227 = load %nyx_string*, %nyx_string** %6221
  %6228 = load %nyx_string*, %nyx_string** %6196
  %6229 = call i1 @nyx_string_equals(%nyx_string* %6227, %nyx_string* %6228)
  store i1 %6229, i1* %6223
  br label %sc_or_end1095
sc_or_end1095:
  %6230 = load i1, i1* %6223
  br i1 %6230, label %then1096, label %else1097
then1096:
  store i1 1, i1* %6222
  %6231 = load %nyx_string*, %nyx_string** %6199
  %6232 = alloca %nyx_string*
  store %nyx_string* %6231, %nyx_string** %6232
  %6233 = load i64, i64* %6190
  %6234 = add i64 %6233, 1
  %6235 = load { i64, i8* }*, { i64, i8* }** %5933
  %6236 = call i64 @nyx_array_length({ i64, i8* }* %6235)
  %6237 = icmp slt i64 %6234, %6236
  br i1 %6237, label %then1099, label %else1100
then1099:
  %6238 = load { i64, i8* }*, { i64, i8* }** %5933
  %6239 = load i64, i64* %6190
  %6240 = add i64 %6239, 1
  %6241 = call i64 @nyx_array_get_checked({ i64, i8* }* %6238, i64 %6240, i64 2)
  %6242 = inttoptr i64 %6241 to %nyx_string*
  %6243 = alloca %nyx_string*
  store %nyx_string* %6242, %nyx_string** %6243
  %6244 = load %nyx_string*, %nyx_string** %6243
  %6245 = load %nyx_string*, %nyx_string** %6202
  %6246 = call i1 @nyx_string_starts_with(%nyx_string* %6244, %nyx_string* %6245)
  %6247 = icmp eq i1 %6246, 0
  br i1 %6247, label %then1102, label %else1103
then1102:
  %6248 = load %nyx_string*, %nyx_string** %6243
  store %nyx_string* %6248, %nyx_string** %6232
  br label %merge1104
else1103:
  br label %merge1104
merge1104:
  br label %merge1101
else1100:
  br label %merge1101
merge1101:
  %6249 = load %nyx_string*, %nyx_string** %6232
  %6250 = load %nyx_string*, %nyx_string** %6199
  %6251 = call i1 @nyx_string_equals(%nyx_string* %6249, %nyx_string* %6250)
  br i1 %6251, label %then1105, label %else1106
then1105:
  %6252 = load %nyx_string*, %nyx_string** %6221
  store %nyx_string* %6252, %nyx_string** %6189
  br label %merge1107
else1106:
  %6253 = load %nyx_string*, %nyx_string** %6221
  %6254 = load %nyx_string*, %nyx_string** %6193
  %6255 = call i1 @nyx_string_equals(%nyx_string* %6253, %nyx_string* %6254)
  br i1 %6255, label %then1108, label %else1109
then1108:
  %6256 = load %nyx_string*, %nyx_string** %6232
  store %nyx_string* %6256, %nyx_string** %6179
  br label %merge1110
else1109:
  br label %merge1110
merge1110:
  %6257 = load %nyx_string*, %nyx_string** %6221
  %6258 = load %nyx_string*, %nyx_string** %6196
  %6259 = call i1 @nyx_string_equals(%nyx_string* %6257, %nyx_string* %6258)
  br i1 %6259, label %then1111, label %else1112
then1111:
  %6260 = load %nyx_string*, %nyx_string** %6232
  store %nyx_string* %6260, %nyx_string** %6182
  br label %merge1113
else1112:
  br label %merge1113
merge1113:
  %6261 = load i64, i64* %6190
  %6262 = add i64 %6261, 1
  store i64 %6262, i64* %6190
  br label %merge1107
merge1107:
  br label %merge1098
else1097:
  br label %merge1098
merge1098:
  %6263 = alloca i1
  store i1 false, i1* %6263
  %6264 = load i1, i1* %6222
  %6265 = icmp eq i1 %6264, 0
  br i1 %6265, label %sc_and_rhs1114, label %sc_and_end1115
sc_and_rhs1114:
  %6266 = load %nyx_string*, %nyx_string** %6221
  %6267 = load %nyx_string*, %nyx_string** %6205
  %6268 = call i1 @nyx_string_starts_with(%nyx_string* %6266, %nyx_string* %6267)
  store i1 %6268, i1* %6263
  br label %sc_and_end1115
sc_and_end1115:
  %6269 = load i1, i1* %6263
  br i1 %6269, label %then1116, label %else1117
then1116:
  store i1 1, i1* %6222
  %6270 = load %nyx_string*, %nyx_string** %6221
  %6271 = load %nyx_string*, %nyx_string** %6221
  %6272 = call i64 @nyx_string_byte_length(%nyx_string* %6271)
  %6273 = call %nyx_string* @nyx_string_substring(%nyx_string* %6270, i64 7, i64 %6272)
  store %nyx_string* %6273, %nyx_string** %6179
  %6274 = load %nyx_string*, %nyx_string** %6179
  %6275 = load %nyx_string*, %nyx_string** %6199
  %6276 = call i1 @nyx_string_equals(%nyx_string* %6274, %nyx_string* %6275)
  br i1 %6276, label %then1119, label %else1120
then1119:
  %6277 = load %nyx_string*, %nyx_string** %6193
  store %nyx_string* %6277, %nyx_string** %6189
  br label %merge1121
else1120:
  br label %merge1121
merge1121:
  br label %merge1118
else1117:
  br label %merge1118
merge1118:
  %6278 = alloca i1
  store i1 false, i1* %6278
  %6279 = load i1, i1* %6222
  %6280 = icmp eq i1 %6279, 0
  br i1 %6280, label %sc_and_rhs1122, label %sc_and_end1123
sc_and_rhs1122:
  %6281 = load %nyx_string*, %nyx_string** %6221
  %6282 = load %nyx_string*, %nyx_string** %6208
  %6283 = call i1 @nyx_string_starts_with(%nyx_string* %6281, %nyx_string* %6282)
  store i1 %6283, i1* %6278
  br label %sc_and_end1123
sc_and_end1123:
  %6284 = load i1, i1* %6278
  br i1 %6284, label %then1124, label %else1125
then1124:
  store i1 1, i1* %6222
  %6285 = load %nyx_string*, %nyx_string** %6221
  %6286 = load %nyx_string*, %nyx_string** %6221
  %6287 = call i64 @nyx_string_byte_length(%nyx_string* %6286)
  %6288 = call %nyx_string* @nyx_string_substring(%nyx_string* %6285, i64 8, i64 %6287)
  store %nyx_string* %6288, %nyx_string** %6182
  %6289 = load %nyx_string*, %nyx_string** %6182
  %6290 = load %nyx_string*, %nyx_string** %6199
  %6291 = call i1 @nyx_string_equals(%nyx_string* %6289, %nyx_string* %6290)
  br i1 %6291, label %then1127, label %else1128
then1127:
  %6292 = load %nyx_string*, %nyx_string** %6196
  store %nyx_string* %6292, %nyx_string** %6189
  br label %merge1129
else1128:
  br label %merge1129
merge1129:
  br label %merge1126
else1125:
  br label %merge1126
merge1126:
  %6293 = alloca i1
  store i1 false, i1* %6293
  %6294 = load i1, i1* %6222
  %6295 = icmp eq i1 %6294, 0
  br i1 %6295, label %sc_and_rhs1130, label %sc_and_end1131
sc_and_rhs1130:
  %6296 = load %nyx_string*, %nyx_string** %6221
  %6297 = load %nyx_string*, %nyx_string** %6211
  %6298 = call i1 @nyx_string_equals(%nyx_string* %6296, %nyx_string* %6297)
  store i1 %6298, i1* %6293
  br label %sc_and_end1131
sc_and_end1131:
  %6299 = load i1, i1* %6293
  br i1 %6299, label %then1132, label %else1133
then1132:
  store i1 1, i1* %6222
  store i1 1, i1* %6183
  br label %merge1134
else1133:
  br label %merge1134
merge1134:
  %6300 = alloca i1
  store i1 false, i1* %6300
  %6301 = load i1, i1* %6222
  %6302 = icmp eq i1 %6301, 0
  br i1 %6302, label %sc_and_rhs1135, label %sc_and_end1136
sc_and_rhs1135:
  %6303 = load %nyx_string*, %nyx_string** %6221
  %6304 = load %nyx_string*, %nyx_string** %6202
  %6305 = call i1 @nyx_string_starts_with(%nyx_string* %6303, %nyx_string* %6304)
  store i1 %6305, i1* %6300
  br label %sc_and_end1136
sc_and_end1136:
  %6306 = load i1, i1* %6300
  br i1 %6306, label %then1137, label %else1138
then1137:
  store i1 1, i1* %6222
  %6307 = load %nyx_string*, %nyx_string** %6221
  store %nyx_string* %6307, %nyx_string** %6186
  br label %merge1139
else1138:
  br label %merge1139
merge1139:
  %6308 = load i1, i1* %6222
  %6309 = icmp eq i1 %6308, 0
  br i1 %6309, label %then1140, label %else1141
then1140:
  %6310 = load %nyx_string*, %nyx_string** %6176
  %6311 = load %nyx_string*, %nyx_string** %6199
  %6312 = call i1 @nyx_string_equals(%nyx_string* %6310, %nyx_string* %6311)
  br i1 %6312, label %then1143, label %else1144
then1143:
  %6313 = load %nyx_string*, %nyx_string** %6221
  store %nyx_string* %6313, %nyx_string** %6176
  br label %merge1145
else1144:
  br label %merge1145
merge1145:
  br label %merge1142
else1141:
  br label %merge1142
merge1142:
  %6314 = load i64, i64* %6190
  %6315 = add i64 %6314, 1
  store i64 %6315, i64* %6190
  br label %while_cond1091
while_end1093:
  %6316 = load %nyx_string*, %nyx_string** %6186
  %6317 = getelementptr [1 x i8], [1 x i8]* @.str948, i32 0, i32 0
  %6318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %6317, i64 0)
  %6319 = call i1 @nyx_string_equals(%nyx_string* %6316, %nyx_string* %6318)
  %6320 = xor i1 %6319, true
  br i1 %6320, label %then1146, label %else1147
then1146:
  %6321 = getelementptr [42 x i8], [42 x i8]* @.str949, i32 0, i32 0
  %6322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %6321, i64 41)
  %6323 = load %nyx_string*, %nyx_string** %6186
  %6324 = call %nyx_string* @nyx_string_concat(%nyx_string* %6322, %nyx_string* %6323)
  %6325 = call i8* @nyx_string_to_cstr(%nyx_string* %6324)
  call void @nyx_print_string(i8* %6325)
  %6326 = getelementptr [80 x i8], [80 x i8]* @.str950, i32 0, i32 0
  %6327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %6326, i64 79)
  %6328 = call i8* @nyx_string_to_cstr(%nyx_string* %6327)
  call void @nyx_print_string(i8* %6328)
  ret i64 1
else1147:
  br label %merge1148
merge1148:
  %6329 = load %nyx_string*, %nyx_string** %6189
  %6330 = getelementptr [1 x i8], [1 x i8]* @.str951, i32 0, i32 0
  %6331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %6330, i64 0)
  %6332 = call i1 @nyx_string_equals(%nyx_string* %6329, %nyx_string* %6331)
  %6333 = xor i1 %6332, true
  br i1 %6333, label %then1149, label %else1150
then1149:
  %6334 = getelementptr [8 x i8], [8 x i8]* @.str952, i32 0, i32 0
  %6335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %6334, i64 7)
  %6336 = load %nyx_string*, %nyx_string** %6189
  %6337 = call %nyx_string* @nyx_string_concat(%nyx_string* %6335, %nyx_string* %6336)
  %6338 = getelementptr [19 x i8], [19 x i8]* @.str953, i32 0, i32 0
  %6339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %6338, i64 18)
  %6340 = call %nyx_string* @nyx_string_concat(%nyx_string* %6337, %nyx_string* %6339)
  %6341 = call i8* @nyx_string_to_cstr(%nyx_string* %6340)
  call void @nyx_print_string(i8* %6341)
  %6342 = getelementptr [80 x i8], [80 x i8]* @.str954, i32 0, i32 0
  %6343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %6342, i64 79)
  %6344 = call i8* @nyx_string_to_cstr(%nyx_string* %6343)
  call void @nyx_print_string(i8* %6344)
  ret i64 1
else1150:
  br label %merge1151
merge1151:
  %6345 = load %nyx_string*, %nyx_string** %6179
  %6346 = getelementptr [1 x i8], [1 x i8]* @.str955, i32 0, i32 0
  %6347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %6346, i64 0)
  %6348 = call i1 @nyx_string_equals(%nyx_string* %6345, %nyx_string* %6347)
  br i1 %6348, label %then1152, label %else1153
then1152:
  %6349 = getelementptr [9 x i8], [9 x i8]* @.str956, i32 0, i32 0
  %6350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %6349, i64 8)
  %6351 = call i8* @nyx_string_to_cstr(%nyx_string* %6350)
  %6352 = call %nyx_string* @nyx_getenv(i8* %6351)
  %6353 = alloca %nyx_string*
  store %nyx_string* %6352, %nyx_string** %6353
  %6354 = load %nyx_string*, %nyx_string** %6353
  %6355 = getelementptr [3 x i8], [3 x i8]* @.str957, i32 0, i32 0
  %6356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %6355, i64 2)
  %6357 = call i1 @nyx_string_equals(%nyx_string* %6354, %nyx_string* %6356)
  br i1 %6357, label %then1155, label %else1156
then1155:
  %6358 = getelementptr [3 x i8], [3 x i8]* @.str958, i32 0, i32 0
  %6359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %6358, i64 2)
  store %nyx_string* %6359, %nyx_string** %6179
  br label %merge1157
else1156:
  br label %merge1157
merge1157:
  %6360 = load %nyx_string*, %nyx_string** %6179
  %6361 = getelementptr [1 x i8], [1 x i8]* @.str959, i32 0, i32 0
  %6362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %6361, i64 0)
  %6363 = call i1 @nyx_string_equals(%nyx_string* %6360, %nyx_string* %6362)
  br i1 %6363, label %then1158, label %else1159
then1158:
  %6364 = getelementptr [3 x i8], [3 x i8]* @.str960, i32 0, i32 0
  %6365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %6364, i64 2)
  store %nyx_string* %6365, %nyx_string** %6179
  br label %merge1160
else1159:
  br label %merge1160
merge1160:
  br label %merge1154
else1153:
  br label %merge1154
merge1154:
  %6366 = alloca i1
  store i1 false, i1* %6366
  %6367 = load %nyx_string*, %nyx_string** %6179
  %6368 = getelementptr [3 x i8], [3 x i8]* @.str961, i32 0, i32 0
  %6369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %6368, i64 2)
  %6370 = call i1 @nyx_string_equals(%nyx_string* %6367, %nyx_string* %6369)
  %6371 = xor i1 %6370, true
  br i1 %6371, label %sc_and_rhs1161, label %sc_and_end1162
sc_and_rhs1161:
  %6372 = load %nyx_string*, %nyx_string** %6179
  %6373 = getelementptr [3 x i8], [3 x i8]* @.str962, i32 0, i32 0
  %6374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %6373, i64 2)
  %6375 = call i1 @nyx_string_equals(%nyx_string* %6372, %nyx_string* %6374)
  %6376 = xor i1 %6375, true
  store i1 %6376, i1* %6366
  br label %sc_and_end1162
sc_and_end1162:
  %6377 = load i1, i1* %6366
  br i1 %6377, label %then1163, label %else1164
then1163:
  %6378 = getelementptr [27 x i8], [27 x i8]* @.str963, i32 0, i32 0
  %6379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %6378, i64 26)
  %6380 = load %nyx_string*, %nyx_string** %6179
  %6381 = call %nyx_string* @nyx_string_concat(%nyx_string* %6379, %nyx_string* %6380)
  %6382 = getelementptr [29 x i8], [29 x i8]* @.str964, i32 0, i32 0
  %6383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %6382, i64 28)
  %6384 = call %nyx_string* @nyx_string_concat(%nyx_string* %6381, %nyx_string* %6383)
  %6385 = call i8* @nyx_string_to_cstr(%nyx_string* %6384)
  call void @nyx_print_string(i8* %6385)
  ret i64 1
else1164:
  br label %merge1165
merge1165:
  %6386 = load %nyx_string*, %nyx_string** %6182
  %6387 = call i1 @validate_agents(%nyx_string* %6386)
  %6388 = icmp eq i1 %6387, 0
  br i1 %6388, label %then1166, label %else1167
then1166:
  ret i64 1
else1167:
  br label %merge1168
merge1168:
  %6389 = load %nyx_string*, %nyx_string** %6176
  %6390 = load %nyx_string*, %nyx_string** %6179
  %6391 = load %nyx_string*, %nyx_string** %6182
  %6392 = call i1 @run_init(%nyx_string* %6389, %nyx_string* %6390, %nyx_string* %6391)
  %6393 = alloca i1
  store i1 %6392, i1* %6393
  %6394 = load i1, i1* %6393
  %6395 = icmp eq i1 %6394, 0
  br i1 %6395, label %then1169, label %else1170
then1169:
  ret i64 1
else1170:
  br label %merge1171
merge1171:
  %6396 = load i1, i1* %6183
  br i1 %6396, label %then1172, label %else1173
then1172:
  %6397 = load %nyx_string*, %nyx_string** %6176
  %6398 = alloca %nyx_string*
  store %nyx_string* %6397, %nyx_string** %6398
  %6399 = load %nyx_string*, %nyx_string** %6398
  %6400 = getelementptr [1 x i8], [1 x i8]* @.str965, i32 0, i32 0
  %6401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %6400, i64 0)
  %6402 = call i1 @nyx_string_equals(%nyx_string* %6399, %nyx_string* %6401)
  br i1 %6402, label %then1175, label %else1176
then1175:
  %6403 = getelementptr [2 x i8], [2 x i8]* @.str966, i32 0, i32 0
  %6404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %6403, i64 1)
  store %nyx_string* %6404, %nyx_string** %6398
  br label %merge1177
else1176:
  br label %merge1177
merge1177:
  %6405 = getelementptr [1 x i8], [1 x i8]* @.str967, i32 0, i32 0
  %6406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %6405, i64 0)
  %6407 = call i8* @nyx_string_to_cstr(%nyx_string* %6406)
  call void @nyx_print_string(i8* %6407)
  %6408 = load %nyx_string*, %nyx_string** %6398
  %6409 = load %nyx_string*, %nyx_string** %6179
  %6410 = call i1 @run_sdd_init(%nyx_string* %6408, %nyx_string* %6409)
  %6411 = alloca i1
  store i1 %6410, i1* %6411
  %6412 = load i1, i1* %6411
  %6413 = icmp eq i1 %6412, 0
  br i1 %6413, label %then1178, label %else1179
then1178:
  ret i64 1
else1179:
  br label %merge1180
merge1180:
  br label %merge1174
else1173:
  br label %merge1174
merge1174:
  ret i64 0
else1089:
  br label %merge1090
merge1090:
  %6414 = load %nyx_string*, %nyx_string** %5936
  %6415 = getelementptr [4 x i8], [4 x i8]* @.str968, i32 0, i32 0
  %6416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %6415, i64 3)
  %6417 = call i1 @nyx_string_equals(%nyx_string* %6414, %nyx_string* %6416)
  br i1 %6417, label %then1181, label %else1182
then1181:
  %6418 = getelementptr [1 x i8], [1 x i8]* @.str969, i32 0, i32 0
  %6419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %6418, i64 0)
  %6420 = alloca %nyx_string*
  store %nyx_string* %6419, %nyx_string** %6420
  %6421 = load { i64, i8* }*, { i64, i8* }** %5933
  %6422 = call i64 @nyx_array_length({ i64, i8* }* %6421)
  %6423 = icmp sge i64 %6422, 3
  br i1 %6423, label %then1184, label %else1185
then1184:
  %6424 = load { i64, i8* }*, { i64, i8* }** %5933
  %6425 = call i64 @nyx_array_get_checked({ i64, i8* }* %6424, i64 2, i64 2)
  %6426 = inttoptr i64 %6425 to %nyx_string*
  %6427 = alloca %nyx_string*
  store %nyx_string* %6426, %nyx_string** %6427
  %6428 = load %nyx_string*, %nyx_string** %6427
  store %nyx_string* %6428, %nyx_string** %6420
  br label %merge1186
else1185:
  br label %merge1186
merge1186:
  %6429 = load %nyx_string*, %nyx_string** %6420
  %6430 = getelementptr [5 x i8], [5 x i8]* @.str970, i32 0, i32 0
  %6431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %6430, i64 4)
  %6432 = call i1 @nyx_string_equals(%nyx_string* %6429, %nyx_string* %6431)
  br i1 %6432, label %then1187, label %else1188
then1187:
  %6433 = getelementptr [2 x i8], [2 x i8]* @.str971, i32 0, i32 0
  %6434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %6433, i64 1)
  %6435 = getelementptr [2 x i8], [2 x i8]* @.str972, i32 0, i32 0
  %6436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %6435, i64 1)
  %6437 = call %nyx_string* @project_lang(%nyx_string* %6436)
  %6438 = call i1 @run_sdd_init(%nyx_string* %6434, %nyx_string* %6437)
  %6439 = alloca i1
  store i1 %6438, i1* %6439
  %6440 = load i1, i1* %6439
  br i1 %6440, label %then1190, label %else1191
then1190:
  ret i64 0
else1191:
  br label %merge1192
merge1192:
  ret i64 1
else1188:
  br label %merge1189
merge1189:
  %6441 = load %nyx_string*, %nyx_string** %6420
  %6442 = getelementptr [9 x i8], [9 x i8]* @.str973, i32 0, i32 0
  %6443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %6442, i64 8)
  %6444 = call i1 @nyx_string_equals(%nyx_string* %6441, %nyx_string* %6443)
  br i1 %6444, label %then1193, label %else1194
then1193:
  %6445 = getelementptr [2 x i8], [2 x i8]* @.str974, i32 0, i32 0
  %6446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %6445, i64 1)
  %6447 = getelementptr [2 x i8], [2 x i8]* @.str975, i32 0, i32 0
  %6448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %6447, i64 1)
  %6449 = call %nyx_string* @project_lang(%nyx_string* %6448)
  %6450 = call i1 @run_sdd_evidence(%nyx_string* %6446, %nyx_string* %6449)
  %6451 = alloca i1
  store i1 %6450, i1* %6451
  %6452 = load i1, i1* %6451
  br i1 %6452, label %then1196, label %else1197
then1196:
  ret i64 0
else1197:
  br label %merge1198
merge1198:
  ret i64 1
else1194:
  br label %merge1195
merge1195:
  %6453 = load %nyx_string*, %nyx_string** %6420
  %6454 = getelementptr [1 x i8], [1 x i8]* @.str976, i32 0, i32 0
  %6455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %6454, i64 0)
  %6456 = call i1 @nyx_string_equals(%nyx_string* %6453, %nyx_string* %6455)
  br i1 %6456, label %then1199, label %else1200
then1199:
  %6457 = getelementptr [57 x i8], [57 x i8]* @.str977, i32 0, i32 0
  %6458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %6457, i64 56)
  %6459 = call i8* @nyx_string_to_cstr(%nyx_string* %6458)
  call void @nyx_print_string(i8* %6459)
  br label %merge1201
else1200:
  %6460 = getelementptr [48 x i8], [48 x i8]* @.str978, i32 0, i32 0
  %6461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %6460, i64 47)
  %6462 = load %nyx_string*, %nyx_string** %6420
  %6463 = call %nyx_string* @nyx_string_concat(%nyx_string* %6461, %nyx_string* %6462)
  %6464 = getelementptr [29 x i8], [29 x i8]* @.str979, i32 0, i32 0
  %6465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %6464, i64 28)
  %6466 = call %nyx_string* @nyx_string_concat(%nyx_string* %6463, %nyx_string* %6465)
  %6467 = call i8* @nyx_string_to_cstr(%nyx_string* %6466)
  call void @nyx_print_string(i8* %6467)
  br label %merge1201
merge1201:
  %6468 = getelementptr [69 x i8], [69 x i8]* @.str980, i32 0, i32 0
  %6469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %6468, i64 68)
  %6470 = call i8* @nyx_string_to_cstr(%nyx_string* %6469)
  call void @nyx_print_string(i8* %6470)
  %6471 = getelementptr [79 x i8], [79 x i8]* @.str981, i32 0, i32 0
  %6472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %6471, i64 78)
  %6473 = call i8* @nyx_string_to_cstr(%nyx_string* %6472)
  call void @nyx_print_string(i8* %6473)
  ret i64 1
else1182:
  br label %merge1183
merge1183:
  %6474 = load %nyx_string*, %nyx_string** %5936
  %6475 = getelementptr [4 x i8], [4 x i8]* @.str982, i32 0, i32 0
  %6476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %6475, i64 3)
  %6477 = call i1 @nyx_string_equals(%nyx_string* %6474, %nyx_string* %6476)
  br i1 %6477, label %then1202, label %else1203
then1202:
  %6478 = load { i64, i8* }*, { i64, i8* }** %5933
  %6479 = call i64 @nyx_array_length({ i64, i8* }* %6478)
  %6480 = icmp slt i64 %6479, 3
  br i1 %6480, label %then1205, label %else1206
then1205:
  %6481 = getelementptr [51 x i8], [51 x i8]* @.str983, i32 0, i32 0
  %6482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %6481, i64 50)
  %6483 = call i8* @nyx_string_to_cstr(%nyx_string* %6482)
  call void @nyx_print_string(i8* %6483)
  ret i64 1
else1206:
  br label %merge1207
merge1207:
  %6484 = load { i64, i8* }*, { i64, i8* }** %5933
  %6485 = call i64 @nyx_array_get_checked({ i64, i8* }* %6484, i64 2, i64 2)
  %6486 = inttoptr i64 %6485 to %nyx_string*
  %6487 = alloca %nyx_string*
  store %nyx_string* %6486, %nyx_string** %6487
  %6488 = getelementptr [1 x i8], [1 x i8]* @.str984, i32 0, i32 0
  %6489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %6488, i64 0)
  %6490 = alloca %nyx_string*
  store %nyx_string* %6489, %nyx_string** %6490
  %6491 = load { i64, i8* }*, { i64, i8* }** %5933
  %6492 = call i64 @nyx_array_length({ i64, i8* }* %6491)
  %6493 = icmp sge i64 %6492, 5
  br i1 %6493, label %then1208, label %else1209
then1208:
  %6494 = load { i64, i8* }*, { i64, i8* }** %5933
  %6495 = call i64 @nyx_array_get_checked({ i64, i8* }* %6494, i64 3, i64 2)
  %6496 = inttoptr i64 %6495 to %nyx_string*
  %6497 = alloca %nyx_string*
  store %nyx_string* %6496, %nyx_string** %6497
  %6498 = load %nyx_string*, %nyx_string** %6497
  %6499 = getelementptr [7 x i8], [7 x i8]* @.str985, i32 0, i32 0
  %6500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %6499, i64 6)
  %6501 = call i1 @nyx_string_equals(%nyx_string* %6498, %nyx_string* %6500)
  br i1 %6501, label %then1211, label %else1212
then1211:
  %6502 = load { i64, i8* }*, { i64, i8* }** %5933
  %6503 = call i64 @nyx_array_get_checked({ i64, i8* }* %6502, i64 4, i64 2)
  %6504 = inttoptr i64 %6503 to %nyx_string*
  %6505 = alloca %nyx_string*
  store %nyx_string* %6504, %nyx_string** %6505
  %6506 = load %nyx_string*, %nyx_string** %6505
  store %nyx_string* %6506, %nyx_string** %6490
  br label %merge1213
else1212:
  br label %merge1213
merge1213:
  br label %merge1210
else1209:
  br label %merge1210
merge1210:
  %6507 = call { i64, i8* }* @nyx_array_new_ptr()
  %6508 = alloca { i64, i8* }*
  store { i64, i8* }* %6507, { i64, i8* }** %6508
  %6509 = call { i64, i8* }* @nyx_array_new_ptr()
  %6510 = alloca { i64, i8* }*
  store { i64, i8* }* %6509, { i64, i8* }** %6510
  %6511 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %6512 = ptrtoint %ProjectConfig* %6511 to i64
  %6513 = call i8* @GC_malloc(i64 %6512)
  %6514 = bitcast i8* %6513 to %ProjectConfig*
  %6515 = getelementptr [8 x i8], [8 x i8]* @.str986, i32 0, i32 0
  %6516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %6515, i64 7)
  %6517 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 0
  store %nyx_string* %6516, %nyx_string** %6517
  %6518 = getelementptr [6 x i8], [6 x i8]* @.str987, i32 0, i32 0
  %6519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %6518, i64 5)
  %6520 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 1
  store %nyx_string* %6519, %nyx_string** %6520
  %6521 = getelementptr [1 x i8], [1 x i8]* @.str988, i32 0, i32 0
  %6522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %6521, i64 0)
  %6523 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 2
  store %nyx_string* %6522, %nyx_string** %6523
  %6524 = getelementptr [1 x i8], [1 x i8]* @.str989, i32 0, i32 0
  %6525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %6524, i64 0)
  %6526 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 3
  store %nyx_string* %6525, %nyx_string** %6526
  %6527 = getelementptr [1 x i8], [1 x i8]* @.str990, i32 0, i32 0
  %6528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %6527, i64 0)
  %6529 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 4
  store %nyx_string* %6528, %nyx_string** %6529
  %6530 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 5
  store i1 0, i1* %6530
  %6531 = getelementptr [1 x i8], [1 x i8]* @.str991, i32 0, i32 0
  %6532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %6531, i64 0)
  %6533 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 6
  store %nyx_string* %6532, %nyx_string** %6533
  %6534 = load { i64, i8* }*, { i64, i8* }** %6508
  %6535 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 7
  store { i64, i8* }* %6534, { i64, i8* }** %6535
  %6536 = load { i64, i8* }*, { i64, i8* }** %6510
  %6537 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 8
  store { i64, i8* }* %6536, { i64, i8* }** %6537
  %6538 = getelementptr [1 x i8], [1 x i8]* @.str992, i32 0, i32 0
  %6539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %6538, i64 0)
  %6540 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 9
  store %nyx_string* %6539, %nyx_string** %6540
  %6541 = getelementptr [1 x i8], [1 x i8]* @.str993, i32 0, i32 0
  %6542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %6541, i64 0)
  %6543 = getelementptr %ProjectConfig, %ProjectConfig* %6514, i32 0, i32 10
  store %nyx_string* %6542, %nyx_string** %6543
  %6544 = load %ProjectConfig, %ProjectConfig* %6514
  %6545 = alloca %ProjectConfig
  store %ProjectConfig %6544, %ProjectConfig* %6545
  %6546 = load %nyx_string*, %nyx_string** %6487
  %6547 = load %nyx_string*, %nyx_string** %6490
  %6548 = load %ProjectConfig, %ProjectConfig* %6545
  %6549 = call i1 @run_add(%nyx_string* %6546, %nyx_string* %6547, %ProjectConfig %6548)
  %6550 = alloca i1
  store i1 %6549, i1* %6550
  %6551 = load i1, i1* %6550
  br i1 %6551, label %then1214, label %else1215
then1214:
  ret i64 0
else1215:
  br label %merge1216
merge1216:
  ret i64 1
else1203:
  br label %merge1204
merge1204:
  %6552 = load %nyx_string*, %nyx_string** %5936
  %6553 = getelementptr [7 x i8], [7 x i8]* @.str994, i32 0, i32 0
  %6554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %6553, i64 6)
  %6555 = call i1 @nyx_string_equals(%nyx_string* %6552, %nyx_string* %6554)
  br i1 %6555, label %then1217, label %else1218
then1217:
  %6556 = getelementptr [1 x i8], [1 x i8]* @.str995, i32 0, i32 0
  %6557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %6556, i64 0)
  %6558 = alloca %nyx_string*
  store %nyx_string* %6557, %nyx_string** %6558
  %6559 = alloca i1
  store i1 0, i1* %6559
  %6560 = alloca i64
  store i64 2, i64* %6560
  %6561 = getelementptr [7 x i8], [7 x i8]* @.str996, i32 0, i32 0
  %6562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %6561, i64 6)
  %6563 = alloca %nyx_string*
  store %nyx_string* %6562, %nyx_string** %6563
  %6564 = getelementptr [10 x i8], [10 x i8]* @.str997, i32 0, i32 0
  %6565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %6564, i64 9)
  %6566 = alloca %nyx_string*
  store %nyx_string* %6565, %nyx_string** %6566
  %6567 = call i8* @llvm.stacksave()
  br label %while_cond1220
while_cond1220:
  %6568 = load i64, i64* %6560
  %6569 = load { i64, i8* }*, { i64, i8* }** %5933
  %6570 = call i64 @nyx_array_length({ i64, i8* }* %6569)
  %6571 = icmp slt i64 %6568, %6570
  br i1 %6571, label %while_body1221, label %while_end1222
while_body1221:
  call void @llvm.stackrestore(i8* %6567)
  %6572 = load { i64, i8* }*, { i64, i8* }** %5933
  %6573 = load i64, i64* %6560
  %6574 = call i64 @nyx_array_get_checked({ i64, i8* }* %6572, i64 %6573, i64 2)
  %6575 = inttoptr i64 %6574 to %nyx_string*
  %6576 = alloca %nyx_string*
  store %nyx_string* %6575, %nyx_string** %6576
  %6577 = load %nyx_string*, %nyx_string** %6576
  %6578 = load %nyx_string*, %nyx_string** %6563
  %6579 = call i1 @nyx_string_equals(%nyx_string* %6577, %nyx_string* %6578)
  br i1 %6579, label %then1223, label %else1224
then1223:
  store i1 1, i1* %6559
  br label %merge1225
else1224:
  %6580 = load %nyx_string*, %nyx_string** %6576
  %6581 = load %nyx_string*, %nyx_string** %6566
  %6582 = call i1 @nyx_string_equals(%nyx_string* %6580, %nyx_string* %6581)
  %6583 = xor i1 %6582, true
  br i1 %6583, label %then1226, label %else1227
then1226:
  %6584 = load %nyx_string*, %nyx_string** %6576
  store %nyx_string* %6584, %nyx_string** %6558
  br label %merge1228
else1227:
  br label %merge1228
merge1228:
  br label %merge1225
merge1225:
  %6585 = load i64, i64* %6560
  %6586 = add i64 %6585, 1
  store i64 %6586, i64* %6560
  br label %while_cond1220
while_end1222:
  %6587 = load %nyx_string*, %nyx_string** %6558
  %6588 = load i1, i1* %6559
  %6589 = call i1 @run_report(%nyx_string* %6587, i1 %6588)
  %6590 = alloca i1
  store i1 %6589, i1* %6590
  %6591 = load i1, i1* %6590
  br i1 %6591, label %then1229, label %else1230
then1229:
  ret i64 0
else1230:
  br label %merge1231
merge1231:
  ret i64 1
else1218:
  br label %merge1219
merge1219:
  %6592 = load %nyx_string*, %nyx_string** %5936
  %6593 = getelementptr [13 x i8], [13 x i8]* @.str998, i32 0, i32 0
  %6594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %6593, i64 12)
  %6595 = call i1 @nyx_string_equals(%nyx_string* %6592, %nyx_string* %6594)
  br i1 %6595, label %then1232, label %else1233
then1232:
  %6596 = getelementptr [1 x i8], [1 x i8]* @.str999, i32 0, i32 0
  %6597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %6596, i64 0)
  %6598 = alloca %nyx_string*
  store %nyx_string* %6597, %nyx_string** %6598
  %6599 = load { i64, i8* }*, { i64, i8* }** %5933
  %6600 = call i64 @nyx_array_length({ i64, i8* }* %6599)
  %6601 = icmp sge i64 %6600, 3
  br i1 %6601, label %then1235, label %else1236
then1235:
  %6602 = load { i64, i8* }*, { i64, i8* }** %5933
  %6603 = call i64 @nyx_array_get_checked({ i64, i8* }* %6602, i64 2, i64 2)
  %6604 = inttoptr i64 %6603 to %nyx_string*
  %6605 = alloca %nyx_string*
  store %nyx_string* %6604, %nyx_string** %6605
  %6606 = load %nyx_string*, %nyx_string** %6605
  %6607 = getelementptr [10 x i8], [10 x i8]* @.str1000, i32 0, i32 0
  %6608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %6607, i64 9)
  %6609 = call i1 @nyx_string_equals(%nyx_string* %6606, %nyx_string* %6608)
  %6610 = xor i1 %6609, true
  br i1 %6610, label %then1238, label %else1239
then1238:
  %6611 = load %nyx_string*, %nyx_string** %6605
  store %nyx_string* %6611, %nyx_string** %6598
  br label %merge1240
else1239:
  br label %merge1240
merge1240:
  br label %merge1237
else1236:
  br label %merge1237
merge1237:
  %6612 = load %nyx_string*, %nyx_string** %6598
  %6613 = call i1 @run_capabilities(%nyx_string* %6612)
  %6614 = alloca i1
  store i1 %6613, i1* %6614
  %6615 = load i1, i1* %6614
  br i1 %6615, label %then1241, label %else1242
then1241:
  ret i64 0
else1242:
  br label %merge1243
merge1243:
  ret i64 1
else1233:
  br label %merge1234
merge1234:
  %6616 = getelementptr [9 x i8], [9 x i8]* @.str1001, i32 0, i32 0
  %6617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %6616, i64 8)
  %6618 = call i8* @nyx_string_to_cstr(%nyx_string* %6617)
  %6619 = call i1 @nyx_file_exists(i8* %6618)
  %6620 = xor i1 %6619, true
  br i1 %6620, label %then1244, label %else1245
then1244:
  %6621 = getelementptr [47 x i8], [47 x i8]* @.str1002, i32 0, i32 0
  %6622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %6621, i64 46)
  %6623 = call i8* @nyx_string_to_cstr(%nyx_string* %6622)
  call void @nyx_print_string(i8* %6623)
  %6624 = getelementptr [24 x i8], [24 x i8]* @.str1003, i32 0, i32 0
  %6625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %6624, i64 23)
  %6626 = call i8* @nyx_string_to_cstr(%nyx_string* %6625)
  call void @nyx_print_string(i8* %6626)
  %6627 = getelementptr [12 x i8], [12 x i8]* @.str1004, i32 0, i32 0
  %6628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %6627, i64 11)
  %6629 = call i8* @nyx_string_to_cstr(%nyx_string* %6628)
  call void @nyx_print_string(i8* %6629)
  %6630 = getelementptr [17 x i8], [17 x i8]* @.str1005, i32 0, i32 0
  %6631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %6630, i64 16)
  %6632 = call i8* @nyx_string_to_cstr(%nyx_string* %6631)
  call void @nyx_print_string(i8* %6632)
  %6633 = getelementptr [20 x i8], [20 x i8]* @.str1006, i32 0, i32 0
  %6634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %6633, i64 19)
  %6635 = call i8* @nyx_string_to_cstr(%nyx_string* %6634)
  call void @nyx_print_string(i8* %6635)
  %6636 = getelementptr [23 x i8], [23 x i8]* @.str1007, i32 0, i32 0
  %6637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %6636, i64 22)
  %6638 = call i8* @nyx_string_to_cstr(%nyx_string* %6637)
  call void @nyx_print_string(i8* %6638)
  ret i64 1
else1245:
  br label %merge1246
merge1246:
  %6639 = getelementptr [9 x i8], [9 x i8]* @.str1008, i32 0, i32 0
  %6640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %6639, i64 8)
  %6641 = call i8* @nyx_string_to_cstr(%nyx_string* %6640)
  %6642 = call %nyx_string* @nyx_read_file(i8* %6641)
  %6643 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 20
  store %nyx_string* %6642, %nyx_string** %6643
  %6644 = load %nyx_string*, %nyx_string** %6643
  %6645 = call %ProjectConfig @parse_toml(%nyx_string* %6644)
  %6646 = getelementptr %SharedEnv_main, %SharedEnv_main* %5931, i32 0, i32 21
  store %ProjectConfig %6645, %ProjectConfig* %6646
  %6647 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 9
  %6648 = load %nyx_string*, %nyx_string** %6647
  %6649 = getelementptr [1 x i8], [1 x i8]* @.str1009, i32 0, i32 0
  %6650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %6649, i64 0)
  %6651 = call i1 @nyx_string_equals(%nyx_string* %6648, %nyx_string* %6650)
  %6652 = xor i1 %6651, true
  br i1 %6652, label %then1247, label %else1248
then1247:
  %6653 = getelementptr [8 x i8], [8 x i8]* @.str1010, i32 0, i32 0
  %6654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %6653, i64 7)
  %6655 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 9
  %6656 = load %nyx_string*, %nyx_string** %6655
  %6657 = call %nyx_string* @nyx_string_concat(%nyx_string* %6654, %nyx_string* %6656)
  %6658 = call i8* @nyx_string_to_cstr(%nyx_string* %6657)
  call void @nyx_print_string(i8* %6658)
  ret i64 1
else1248:
  br label %merge1249
merge1249:
  %6659 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 0
  %6660 = load %nyx_string*, %nyx_string** %6659
  %6661 = getelementptr [1 x i8], [1 x i8]* @.str1011, i32 0, i32 0
  %6662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %6661, i64 0)
  %6663 = call i1 @nyx_string_equals(%nyx_string* %6660, %nyx_string* %6662)
  br i1 %6663, label %then1250, label %else1251
then1250:
  %6664 = getelementptr [45 x i8], [45 x i8]* @.str1012, i32 0, i32 0
  %6665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %6664, i64 44)
  %6666 = call i8* @nyx_string_to_cstr(%nyx_string* %6665)
  call void @nyx_print_string(i8* %6666)
  ret i64 1
else1251:
  br label %merge1252
merge1252:
  %6667 = load %nyx_string*, %nyx_string** %5943
  %6668 = getelementptr [1 x i8], [1 x i8]* @.str1013, i32 0, i32 0
  %6669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %6668, i64 0)
  %6670 = call i1 @nyx_string_equals(%nyx_string* %6667, %nyx_string* %6669)
  %6671 = xor i1 %6670, true
  br i1 %6671, label %then1253, label %else1254
then1253:
  %6672 = alloca i1
  store i1 false, i1* %6672
  %6673 = load %nyx_string*, %nyx_string** %5936
  %6674 = getelementptr [6 x i8], [6 x i8]* @.str1014, i32 0, i32 0
  %6675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %6674, i64 5)
  %6676 = call i1 @nyx_string_equals(%nyx_string* %6673, %nyx_string* %6675)
  %6677 = xor i1 %6676, true
  br i1 %6677, label %sc_and_rhs1256, label %sc_and_end1257
sc_and_rhs1256:
  %6678 = load %nyx_string*, %nyx_string** %5936
  %6679 = getelementptr [4 x i8], [4 x i8]* @.str1015, i32 0, i32 0
  %6680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %6679, i64 3)
  %6681 = call i1 @nyx_string_equals(%nyx_string* %6678, %nyx_string* %6680)
  %6682 = xor i1 %6681, true
  store i1 %6682, i1* %6672
  br label %sc_and_end1257
sc_and_end1257:
  %6683 = load i1, i1* %6672
  br i1 %6683, label %then1258, label %else1259
then1258:
  %6684 = getelementptr [53 x i8], [53 x i8]* @.str1016, i32 0, i32 0
  %6685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %6684, i64 52)
  %6686 = call i8* @nyx_string_to_cstr(%nyx_string* %6685)
  call void @nyx_print_string(i8* %6686)
  ret i64 1
else1259:
  br label %merge1260
merge1260:
  %6687 = load %nyx_string*, %nyx_string** %5943
  %6688 = call %nyx_string* @main_flag_error(%nyx_string* %6687)
  %6689 = alloca %nyx_string*
  store %nyx_string* %6688, %nyx_string** %6689
  %6690 = load %nyx_string*, %nyx_string** %6689
  %6691 = getelementptr [1 x i8], [1 x i8]* @.str1017, i32 0, i32 0
  %6692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %6691, i64 0)
  %6693 = call i1 @nyx_string_equals(%nyx_string* %6690, %nyx_string* %6692)
  %6694 = xor i1 %6693, true
  br i1 %6694, label %then1261, label %else1262
then1261:
  %6695 = getelementptr [8 x i8], [8 x i8]* @.str1018, i32 0, i32 0
  %6696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %6695, i64 7)
  %6697 = load %nyx_string*, %nyx_string** %6689
  %6698 = call %nyx_string* @nyx_string_concat(%nyx_string* %6696, %nyx_string* %6697)
  %6699 = call i8* @nyx_string_to_cstr(%nyx_string* %6698)
  call void @nyx_print_string(i8* %6699)
  ret i64 1
else1262:
  br label %merge1263
merge1263:
  %6700 = load %ProjectConfig, %ProjectConfig* %6646
  %6701 = load %nyx_string*, %nyx_string** %5943
  %6702 = call %nyx_string* @bin_name_for_main(%ProjectConfig %6700, %nyx_string* %6701)
  %6703 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 10
  store %nyx_string* %6702, %nyx_string** %6703
  %6704 = load %nyx_string*, %nyx_string** %5943
  %6705 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 2
  store %nyx_string* %6704, %nyx_string** %6705
  br label %merge1255
else1254:
  br label %merge1255
merge1255:
  %6706 = load %nyx_string*, %nyx_string** %5936
  %6707 = getelementptr [5 x i8], [5 x i8]* @.str1019, i32 0, i32 0
  %6708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %6707, i64 4)
  %6709 = call i1 @nyx_string_equals(%nyx_string* %6706, %nyx_string* %6708)
  br i1 %6709, label %then1264, label %else1265
then1264:
  %6710 = load %ProjectConfig, %ProjectConfig* %6646
  %6711 = call i64 @print_info(%ProjectConfig %6710)
  ret i64 0
else1265:
  br label %merge1266
merge1266:
  %6712 = load %nyx_string*, %nyx_string** %5936
  %6713 = getelementptr [6 x i8], [6 x i8]* @.str1020, i32 0, i32 0
  %6714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %6713, i64 5)
  %6715 = call i1 @nyx_string_equals(%nyx_string* %6712, %nyx_string* %6714)
  br i1 %6715, label %then1267, label %else1268
then1267:
  %6716 = load %ProjectConfig, %ProjectConfig* %6646
  %6717 = load i1, i1* %5937
  %6718 = load %nyx_string*, %nyx_string** %5940
  %6719 = call i1 @run_build(%ProjectConfig %6716, i1 %6717, %nyx_string* %6718)
  %6720 = alloca i1
  store i1 %6719, i1* %6720
  %6721 = load i1, i1* %6720
  br i1 %6721, label %then1270, label %else1271
then1270:
  %6722 = load %ProjectConfig, %ProjectConfig* %6646
  %6723 = call i64 @write_lockfile(%ProjectConfig %6722)
  %6724 = getelementptr [15 x i8], [15 x i8]* @.str1021, i32 0, i32 0
  %6725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %6724, i64 14)
  %6726 = call i8* @nyx_string_to_cstr(%nyx_string* %6725)
  call void @nyx_print_string(i8* %6726)
  ret i64 0
else1271:
  br label %merge1272
merge1272:
  ret i64 1
else1268:
  br label %merge1269
merge1269:
  %6727 = load %nyx_string*, %nyx_string** %5936
  %6728 = getelementptr [4 x i8], [4 x i8]* @.str1022, i32 0, i32 0
  %6729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %6728, i64 3)
  %6730 = call i1 @nyx_string_equals(%nyx_string* %6727, %nyx_string* %6729)
  br i1 %6730, label %then1273, label %else1274
then1273:
  %6731 = alloca i64
  store i64 2, i64* %6731
  %6732 = getelementptr [3 x i8], [3 x i8]* @.str1023, i32 0, i32 0
  %6733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %6732, i64 2)
  %6734 = alloca %nyx_string*
  store %nyx_string* %6733, %nyx_string** %6734
  %6735 = getelementptr [7 x i8], [7 x i8]* @.str1024, i32 0, i32 0
  %6736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %6735, i64 6)
  %6737 = alloca %nyx_string*
  store %nyx_string* %6736, %nyx_string** %6737
  %6738 = getelementptr [3 x i8], [3 x i8]* @.str1025, i32 0, i32 0
  %6739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %6738, i64 2)
  %6740 = alloca %nyx_string*
  store %nyx_string* %6739, %nyx_string** %6740
  %6741 = getelementptr [79 x i8], [79 x i8]* @.str1026, i32 0, i32 0
  %6742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %6741, i64 78)
  %6743 = alloca %nyx_string*
  store %nyx_string* %6742, %nyx_string** %6743
  %6744 = getelementptr [60 x i8], [60 x i8]* @.str1027, i32 0, i32 0
  %6745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %6744, i64 59)
  %6746 = alloca %nyx_string*
  store %nyx_string* %6745, %nyx_string** %6746
  %6747 = getelementptr [1 x i8], [1 x i8]* @.str1028, i32 0, i32 0
  %6748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %6747, i64 0)
  %6749 = alloca %nyx_string*
  store %nyx_string* %6748, %nyx_string** %6749
  %6750 = getelementptr [56 x i8], [56 x i8]* @.str1029, i32 0, i32 0
  %6751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %6750, i64 55)
  %6752 = alloca %nyx_string*
  store %nyx_string* %6751, %nyx_string** %6752
  %6753 = getelementptr [38 x i8], [38 x i8]* @.str1030, i32 0, i32 0
  %6754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %6753, i64 37)
  %6755 = alloca %nyx_string*
  store %nyx_string* %6754, %nyx_string** %6755
  %6756 = call i8* @llvm.stacksave()
  br label %while_cond1276
while_cond1276:
  %6757 = load i64, i64* %6731
  %6758 = load { i64, i8* }*, { i64, i8* }** %5933
  %6759 = call i64 @nyx_array_length({ i64, i8* }* %6758)
  %6760 = icmp slt i64 %6757, %6759
  br i1 %6760, label %while_body1277, label %while_end1278
while_body1277:
  call void @llvm.stackrestore(i8* %6756)
  %6761 = load { i64, i8* }*, { i64, i8* }** %5933
  %6762 = load i64, i64* %6731
  %6763 = call i64 @nyx_array_get_checked({ i64, i8* }* %6761, i64 %6762, i64 2)
  %6764 = inttoptr i64 %6763 to %nyx_string*
  %6765 = alloca %nyx_string*
  store %nyx_string* %6764, %nyx_string** %6765
  %6766 = load %nyx_string*, %nyx_string** %6765
  %6767 = load %nyx_string*, %nyx_string** %6734
  %6768 = call i1 @nyx_string_equals(%nyx_string* %6766, %nyx_string* %6767)
  br i1 %6768, label %then1279, label %else1280
then1279:
  %6769 = load { i64, i8* }*, { i64, i8* }** %5933
  %6770 = call i64 @nyx_array_length({ i64, i8* }* %6769)
  store i64 %6770, i64* %6731
  br label %merge1281
else1280:
  %6771 = alloca i1
  store i1 true, i1* %6771
  %6772 = load %nyx_string*, %nyx_string** %6765
  %6773 = load %nyx_string*, %nyx_string** %6737
  %6774 = call i1 @nyx_string_equals(%nyx_string* %6772, %nyx_string* %6773)
  br i1 %6774, label %sc_or_end1283, label %sc_or_rhs1282
sc_or_rhs1282:
  %6775 = load %nyx_string*, %nyx_string** %6765
  %6776 = load %nyx_string*, %nyx_string** %6740
  %6777 = call i1 @nyx_string_equals(%nyx_string* %6775, %nyx_string* %6776)
  store i1 %6777, i1* %6771
  br label %sc_or_end1283
sc_or_end1283:
  %6778 = load i1, i1* %6771
  br i1 %6778, label %then1284, label %else1285
then1284:
  %6779 = load %nyx_string*, %nyx_string** %6743
  %6780 = call i8* @nyx_string_to_cstr(%nyx_string* %6779)
  call void @nyx_print_string(i8* %6780)
  %6781 = load %nyx_string*, %nyx_string** %6746
  %6782 = call i8* @nyx_string_to_cstr(%nyx_string* %6781)
  call void @nyx_print_string(i8* %6782)
  %6783 = load %nyx_string*, %nyx_string** %6749
  %6784 = call i8* @nyx_string_to_cstr(%nyx_string* %6783)
  call void @nyx_print_string(i8* %6784)
  %6785 = load %nyx_string*, %nyx_string** %6752
  %6786 = call i8* @nyx_string_to_cstr(%nyx_string* %6785)
  call void @nyx_print_string(i8* %6786)
  %6787 = load %nyx_string*, %nyx_string** %6755
  %6788 = call i8* @nyx_string_to_cstr(%nyx_string* %6787)
  call void @nyx_print_string(i8* %6788)
  ret i64 0
else1285:
  br label %merge1286
merge1286:
  %6789 = load i64, i64* %6731
  %6790 = add i64 %6789, 1
  store i64 %6790, i64* %6731
  br label %merge1281
merge1281:
  br label %while_cond1276
while_end1278:
  %6791 = load %ProjectConfig, %ProjectConfig* %6646
  %6792 = load %nyx_string*, %nyx_string** %5940
  %6793 = call i1 @run_build(%ProjectConfig %6791, i1 0, %nyx_string* %6792)
  %6794 = alloca i1
  store i1 %6793, i1* %6794
  %6795 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 0
  %6796 = load %nyx_string*, %nyx_string** %6795
  %6797 = alloca %nyx_string*
  store %nyx_string* %6796, %nyx_string** %6797
  %6798 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 10
  %6799 = load %nyx_string*, %nyx_string** %6798
  %6800 = getelementptr [1 x i8], [1 x i8]* @.str1031, i32 0, i32 0
  %6801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %6800, i64 0)
  %6802 = call i1 @nyx_string_equals(%nyx_string* %6799, %nyx_string* %6801)
  %6803 = xor i1 %6802, true
  br i1 %6803, label %then1287, label %else1288
then1287:
  %6804 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 10
  %6805 = load %nyx_string*, %nyx_string** %6804
  store %nyx_string* %6805, %nyx_string** %6797
  br label %merge1289
else1288:
  br label %merge1289
merge1289:
  %6806 = load i1, i1* %6794
  br i1 %6806, label %then1290, label %else1291
then1290:
  %6807 = load %ProjectConfig, %ProjectConfig* %6646
  %6808 = call i64 @write_lockfile(%ProjectConfig %6807)
  %6809 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 6
  %6810 = load %nyx_string*, %nyx_string** %6809
  %6811 = alloca %nyx_string*
  store %nyx_string* %6810, %nyx_string** %6811
  %6812 = load %nyx_string*, %nyx_string** %5940
  %6813 = getelementptr [1 x i8], [1 x i8]* @.str1032, i32 0, i32 0
  %6814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %6813, i64 0)
  %6815 = call i1 @nyx_string_equals(%nyx_string* %6812, %nyx_string* %6814)
  %6816 = xor i1 %6815, true
  br i1 %6816, label %then1293, label %else1294
then1293:
  %6817 = load %nyx_string*, %nyx_string** %5940
  store %nyx_string* %6817, %nyx_string** %6811
  br label %merge1295
else1294:
  br label %merge1295
merge1295:
  %6818 = load %nyx_string*, %nyx_string** %6811
  %6819 = getelementptr [12 x i8], [12 x i8]* @.str1033, i32 0, i32 0
  %6820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %6819, i64 11)
  %6821 = call i1 @nyx_string_equals(%nyx_string* %6818, %nyx_string* %6820)
  br i1 %6821, label %then1296, label %else1297
then1296:
  %6822 = getelementptr [20 x i8], [20 x i8]* @.str1034, i32 0, i32 0
  %6823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %6822, i64 19)
  %6824 = load %nyx_string*, %nyx_string** %6797
  %6825 = call %nyx_string* @nyx_string_concat(%nyx_string* %6823, %nyx_string* %6824)
  %6826 = getelementptr [6 x i8], [6 x i8]* @.str1035, i32 0, i32 0
  %6827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %6826, i64 5)
  %6828 = call %nyx_string* @nyx_string_concat(%nyx_string* %6825, %nyx_string* %6827)
  %6829 = alloca %nyx_string*
  store %nyx_string* %6828, %nyx_string** %6829
  %6830 = load %nyx_string*, %nyx_string** %6829
  %6831 = call i8* @nyx_string_to_cstr(%nyx_string* %6830)
  %6832 = call i1 @nyx_file_exists(i8* %6831)
  %6833 = xor i1 %6832, true
  br i1 %6833, label %then1299, label %else1300
then1299:
  %6834 = getelementptr [24 x i8], [24 x i8]* @.str1036, i32 0, i32 0
  %6835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %6834, i64 23)
  %6836 = load %nyx_string*, %nyx_string** %6829
  %6837 = call %nyx_string* @nyx_string_concat(%nyx_string* %6835, %nyx_string* %6836)
  %6838 = call i8* @nyx_string_to_cstr(%nyx_string* %6837)
  call void @nyx_print_string(i8* %6838)
  ret i64 1
else1300:
  br label %merge1301
merge1301:
  %6839 = getelementptr [36 x i8], [36 x i8]* @.str1037, i32 0, i32 0
  %6840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %6839, i64 35)
  %6841 = call i8* @nyx_string_to_cstr(%nyx_string* %6840)
  %6842 = call i64 @nyx_exec_code(i8* %6841)
  %6843 = icmp ne i64 %6842, 0
  br i1 %6843, label %then1302, label %else1303
then1302:
  %6844 = getelementptr [24 x i8], [24 x i8]* @.str1038, i32 0, i32 0
  %6845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %6844, i64 23)
  %6846 = load %nyx_string*, %nyx_string** %6829
  %6847 = call %nyx_string* @nyx_string_concat(%nyx_string* %6845, %nyx_string* %6846)
  %6848 = getelementptr [45 x i8], [45 x i8]* @.str1039, i32 0, i32 0
  %6849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %6848, i64 44)
  %6850 = call %nyx_string* @nyx_string_concat(%nyx_string* %6847, %nyx_string* %6849)
  %6851 = call i8* @nyx_string_to_cstr(%nyx_string* %6850)
  call void @nyx_print_string(i8* %6851)
  %6852 = getelementptr [54 x i8], [54 x i8]* @.str1040, i32 0, i32 0
  %6853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %6852, i64 53)
  %6854 = load %nyx_string*, %nyx_string** %6829
  %6855 = call %nyx_string* @nyx_string_concat(%nyx_string* %6853, %nyx_string* %6854)
  %6856 = call i8* @nyx_string_to_cstr(%nyx_string* %6855)
  call void @nyx_print_string(i8* %6856)
  ret i64 1
else1303:
  br label %merge1304
merge1304:
  %6857 = getelementptr [10 x i8], [10 x i8]* @.str1041, i32 0, i32 0
  %6858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %6857, i64 9)
  %6859 = load %nyx_string*, %nyx_string** %6829
  %6860 = call %nyx_string* @nyx_string_concat(%nyx_string* %6858, %nyx_string* %6859)
  %6861 = alloca %nyx_string*
  store %nyx_string* %6860, %nyx_string** %6861
  %6862 = alloca i64
  store i64 2, i64* %6862
  %6863 = alloca i1
  store i1 0, i1* %6863
  %6864 = getelementptr [2 x i8], [2 x i8]* @.str1042, i32 0, i32 0
  %6865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %6864, i64 1)
  %6866 = alloca %nyx_string*
  store %nyx_string* %6865, %nyx_string** %6866
  %6867 = getelementptr [3 x i8], [3 x i8]* @.str1043, i32 0, i32 0
  %6868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %6867, i64 2)
  %6869 = alloca %nyx_string*
  store %nyx_string* %6868, %nyx_string** %6869
  %6870 = getelementptr [9 x i8], [9 x i8]* @.str1044, i32 0, i32 0
  %6871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %6870, i64 8)
  %6872 = alloca %nyx_string*
  store %nyx_string* %6871, %nyx_string** %6872
  %6873 = getelementptr [7 x i8], [7 x i8]* @.str1045, i32 0, i32 0
  %6874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %6873, i64 6)
  %6875 = alloca %nyx_string*
  store %nyx_string* %6874, %nyx_string** %6875
  %6876 = call i8* @llvm.stacksave()
  br label %while_cond1305
while_cond1305:
  %6877 = load i64, i64* %6862
  %6878 = load { i64, i8* }*, { i64, i8* }** %5933
  %6879 = call i64 @nyx_array_length({ i64, i8* }* %6878)
  %6880 = icmp slt i64 %6877, %6879
  br i1 %6880, label %while_body1306, label %while_end1307
while_body1306:
  call void @llvm.stackrestore(i8* %6876)
  %6881 = load { i64, i8* }*, { i64, i8* }** %5933
  %6882 = load i64, i64* %6862
  %6883 = call i64 @nyx_array_get_checked({ i64, i8* }* %6881, i64 %6882, i64 2)
  %6884 = inttoptr i64 %6883 to %nyx_string*
  %6885 = alloca %nyx_string*
  store %nyx_string* %6884, %nyx_string** %6885
  %6886 = load i1, i1* %6863
  br i1 %6886, label %then1308, label %else1309
then1308:
  %6887 = load %nyx_string*, %nyx_string** %6861
  %6888 = load %nyx_string*, %nyx_string** %6866
  %6889 = call %nyx_string* @nyx_string_concat(%nyx_string* %6887, %nyx_string* %6888)
  %6890 = load %nyx_string*, %nyx_string** %6885
  %6891 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5931, %nyx_string* %6890)
  %6892 = call %nyx_string* @nyx_string_concat(%nyx_string* %6889, %nyx_string* %6891)
  store %nyx_string* %6892, %nyx_string** %6861
  br label %merge1310
else1309:
  %6893 = load %nyx_string*, %nyx_string** %6885
  %6894 = load %nyx_string*, %nyx_string** %6869
  %6895 = call i1 @nyx_string_equals(%nyx_string* %6893, %nyx_string* %6894)
  br i1 %6895, label %then1311, label %else1312
then1311:
  store i1 1, i1* %6863
  br label %merge1313
else1312:
  %6896 = alloca i1
  store i1 true, i1* %6896
  %6897 = load %nyx_string*, %nyx_string** %6885
  %6898 = load %nyx_string*, %nyx_string** %6872
  %6899 = call i1 @nyx_string_equals(%nyx_string* %6897, %nyx_string* %6898)
  br i1 %6899, label %sc_or_end1315, label %sc_or_rhs1314
sc_or_rhs1314:
  %6900 = load %nyx_string*, %nyx_string** %6885
  %6901 = load %nyx_string*, %nyx_string** %6875
  %6902 = call i1 @nyx_string_equals(%nyx_string* %6900, %nyx_string* %6901)
  store i1 %6902, i1* %6896
  br label %sc_or_end1315
sc_or_end1315:
  %6903 = load i1, i1* %6896
  br i1 %6903, label %then1316, label %else1317
then1316:
  %6904 = load i64, i64* %6862
  %6905 = add i64 %6904, 1
  store i64 %6905, i64* %6862
  br label %merge1318
else1317:
  br label %merge1318
merge1318:
  br label %merge1313
merge1313:
  br label %merge1310
merge1310:
  %6906 = load i64, i64* %6862
  %6907 = add i64 %6906, 1
  store i64 %6907, i64* %6862
  br label %while_cond1305
while_end1307:
  %6908 = load %nyx_string*, %nyx_string** %6861
  %6909 = call i8* @nyx_string_to_cstr(%nyx_string* %6908)
  %6910 = call i64 @nyx_exec_code(i8* %6909)
  ret i64 %6910
else1297:
  br label %merge1298
merge1298:
  %6911 = load %nyx_string*, %nyx_string** %6811
  %6912 = getelementptr [1 x i8], [1 x i8]* @.str1046, i32 0, i32 0
  %6913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %6912, i64 0)
  %6914 = call i1 @nyx_string_equals(%nyx_string* %6911, %nyx_string* %6913)
  %6915 = xor i1 %6914, true
  br i1 %6915, label %then1319, label %else1320
then1319:
  %6916 = getelementptr [51 x i8], [51 x i8]* @.str1047, i32 0, i32 0
  %6917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %6916, i64 50)
  %6918 = load %nyx_string*, %nyx_string** %6811
  %6919 = call %nyx_string* @nyx_string_concat(%nyx_string* %6917, %nyx_string* %6918)
  %6920 = call i8* @nyx_string_to_cstr(%nyx_string* %6919)
  call void @nyx_print_string(i8* %6920)
  %6921 = getelementptr [27 x i8], [27 x i8]* @.str1048, i32 0, i32 0
  %6922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %6921, i64 26)
  %6923 = load %nyx_string*, %nyx_string** %6811
  %6924 = call %nyx_string* @nyx_string_concat(%nyx_string* %6922, %nyx_string* %6923)
  %6925 = getelementptr [47 x i8], [47 x i8]* @.str1049, i32 0, i32 0
  %6926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %6925, i64 46)
  %6927 = call %nyx_string* @nyx_string_concat(%nyx_string* %6924, %nyx_string* %6926)
  %6928 = call i8* @nyx_string_to_cstr(%nyx_string* %6927)
  call void @nyx_print_string(i8* %6928)
  ret i64 1
else1320:
  br label %merge1321
merge1321:
  %6929 = getelementptr [3 x i8], [3 x i8]* @.str1050, i32 0, i32 0
  %6930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %6929, i64 2)
  %6931 = load %nyx_string*, %nyx_string** %6797
  %6932 = call %nyx_string* @nyx_string_concat(%nyx_string* %6930, %nyx_string* %6931)
  %6933 = alloca %nyx_string*
  store %nyx_string* %6932, %nyx_string** %6933
  %6934 = getelementptr %ProjectConfig, %ProjectConfig* %6646, i32 0, i32 10
  %6935 = load %nyx_string*, %nyx_string** %6934
  %6936 = getelementptr [1 x i8], [1 x i8]* @.str1051, i32 0, i32 0
  %6937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %6936, i64 0)
  %6938 = call i1 @nyx_string_equals(%nyx_string* %6935, %nyx_string* %6937)
  %6939 = xor i1 %6938, true
  br i1 %6939, label %then1322, label %else1323
then1322:
  %6940 = getelementptr [10 x i8], [10 x i8]* @.str1052, i32 0, i32 0
  %6941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %6940, i64 9)
  %6942 = load %nyx_string*, %nyx_string** %6797
  %6943 = call %nyx_string* @nyx_string_concat(%nyx_string* %6941, %nyx_string* %6942)
  store %nyx_string* %6943, %nyx_string** %6933
  br label %merge1324
else1323:
  br label %merge1324
merge1324:
  %6944 = alloca i64
  store i64 2, i64* %6944
  %6945 = alloca i1
  store i1 0, i1* %6945
  %6946 = getelementptr [2 x i8], [2 x i8]* @.str1053, i32 0, i32 0
  %6947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %6946, i64 1)
  %6948 = alloca %nyx_string*
  store %nyx_string* %6947, %nyx_string** %6948
  %6949 = getelementptr [3 x i8], [3 x i8]* @.str1054, i32 0, i32 0
  %6950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %6949, i64 2)
  %6951 = alloca %nyx_string*
  store %nyx_string* %6950, %nyx_string** %6951
  %6952 = getelementptr [10 x i8], [10 x i8]* @.str1055, i32 0, i32 0
  %6953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %6952, i64 9)
  %6954 = alloca %nyx_string*
  store %nyx_string* %6953, %nyx_string** %6954
  %6955 = getelementptr [9 x i8], [9 x i8]* @.str1056, i32 0, i32 0
  %6956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %6955, i64 8)
  %6957 = alloca %nyx_string*
  store %nyx_string* %6956, %nyx_string** %6957
  %6958 = getelementptr [7 x i8], [7 x i8]* @.str1057, i32 0, i32 0
  %6959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %6958, i64 6)
  %6960 = alloca %nyx_string*
  store %nyx_string* %6959, %nyx_string** %6960
  %6961 = call i8* @llvm.stacksave()
  br label %while_cond1325
while_cond1325:
  %6962 = load i64, i64* %6944
  %6963 = load { i64, i8* }*, { i64, i8* }** %5933
  %6964 = call i64 @nyx_array_length({ i64, i8* }* %6963)
  %6965 = icmp slt i64 %6962, %6964
  br i1 %6965, label %while_body1326, label %while_end1327
while_body1326:
  call void @llvm.stackrestore(i8* %6961)
  %6966 = load { i64, i8* }*, { i64, i8* }** %5933
  %6967 = load i64, i64* %6944
  %6968 = call i64 @nyx_array_get_checked({ i64, i8* }* %6966, i64 %6967, i64 2)
  %6969 = inttoptr i64 %6968 to %nyx_string*
  %6970 = alloca %nyx_string*
  store %nyx_string* %6969, %nyx_string** %6970
  %6971 = load i1, i1* %6945
  br i1 %6971, label %then1328, label %else1329
then1328:
  %6972 = load %nyx_string*, %nyx_string** %6933
  %6973 = load %nyx_string*, %nyx_string** %6948
  %6974 = call %nyx_string* @nyx_string_concat(%nyx_string* %6972, %nyx_string* %6973)
  %6975 = load %nyx_string*, %nyx_string** %6970
  %6976 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5931, %nyx_string* %6975)
  %6977 = call %nyx_string* @nyx_string_concat(%nyx_string* %6974, %nyx_string* %6976)
  store %nyx_string* %6977, %nyx_string** %6933
  br label %merge1330
else1329:
  %6978 = load %nyx_string*, %nyx_string** %6970
  %6979 = load %nyx_string*, %nyx_string** %6951
  %6980 = call i1 @nyx_string_equals(%nyx_string* %6978, %nyx_string* %6979)
  br i1 %6980, label %then1331, label %else1332
then1331:
  store i1 1, i1* %6945
  br label %merge1333
else1332:
  %6981 = load %nyx_string*, %nyx_string** %6970
  %6982 = load %nyx_string*, %nyx_string** %6954
  %6983 = call i1 @nyx_string_equals(%nyx_string* %6981, %nyx_string* %6982)
  br i1 %6983, label %then1334, label %else1335
then1334:
  %6984 = load i64, i64* %6944
  store i64 %6984, i64* %6944
  br label %merge1336
else1335:
  %6985 = alloca i1
  store i1 true, i1* %6985
  %6986 = load %nyx_string*, %nyx_string** %6970
  %6987 = load %nyx_string*, %nyx_string** %6957
  %6988 = call i1 @nyx_string_equals(%nyx_string* %6986, %nyx_string* %6987)
  br i1 %6988, label %sc_or_end1338, label %sc_or_rhs1337
sc_or_rhs1337:
  %6989 = load %nyx_string*, %nyx_string** %6970
  %6990 = load %nyx_string*, %nyx_string** %6960
  %6991 = call i1 @nyx_string_equals(%nyx_string* %6989, %nyx_string* %6990)
  store i1 %6991, i1* %6985
  br label %sc_or_end1338
sc_or_end1338:
  %6992 = load i1, i1* %6985
  br i1 %6992, label %then1339, label %else1340
then1339:
  %6993 = load i64, i64* %6944
  %6994 = add i64 %6993, 1
  store i64 %6994, i64* %6944
  br label %merge1341
else1340:
  %6995 = load %nyx_string*, %nyx_string** %6933
  %6996 = load %nyx_string*, %nyx_string** %6948
  %6997 = call %nyx_string* @nyx_string_concat(%nyx_string* %6995, %nyx_string* %6996)
  %6998 = load %nyx_string*, %nyx_string** %6970
  %6999 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5931, %nyx_string* %6998)
  %7000 = call %nyx_string* @nyx_string_concat(%nyx_string* %6997, %nyx_string* %6999)
  store %nyx_string* %7000, %nyx_string** %6933
  br label %merge1341
merge1341:
  br label %merge1336
merge1336:
  br label %merge1333
merge1333:
  br label %merge1330
merge1330:
  %7001 = load i64, i64* %6944
  %7002 = add i64 %7001, 1
  store i64 %7002, i64* %6944
  br label %while_cond1325
while_end1327:
  %7003 = load %nyx_string*, %nyx_string** %6933
  %7004 = call i8* @nyx_string_to_cstr(%nyx_string* %7003)
  %7005 = call i64 @nyx_exec_code(i8* %7004)
  %7006 = alloca i64
  store i64 %7005, i64* %7006
  %7007 = load i64, i64* %7006
  ret i64 %7007
else1291:
  br label %merge1292
merge1292:
  ret i64 1
else1274:
  br label %merge1275
merge1275:
  %7008 = getelementptr [24 x i8], [24 x i8]* @.str1058, i32 0, i32 0
  %7009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %7008, i64 23)
  %7010 = load %nyx_string*, %nyx_string** %5936
  %7011 = call %nyx_string* @nyx_string_concat(%nyx_string* %7009, %nyx_string* %7010)
  %7012 = call i8* @nyx_string_to_cstr(%nyx_string* %7011)
  call void @nyx_print_string(i8* %7012)
  %7013 = getelementptr [110 x i8], [110 x i8]* @.str1059, i32 0, i32 0
  %7014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %7013, i64 109)
  %7015 = call i8* @nyx_string_to_cstr(%nyx_string* %7014)
  call void @nyx_print_string(i8* %7015)
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
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1060, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1061, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %30, i64 1)
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
  %7016 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %7017 = call %nyx_string* @nyx_string_from_ptr(i8* %7016, i64 64)
  store %nyx_string* %7017, %nyx_string** @std_base64____b64_chars
  %7018 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %7019 = call %nyx_string* @nyx_string_from_ptr(i8* %7018, i64 64)
  store %nyx_string* %7019, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

