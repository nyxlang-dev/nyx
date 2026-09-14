source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%ProjectConfig = type { %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }*, %nyx_string*, %nyx_string* }

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
@.str74 = private unnamed_addr constant [1 x i8] c"\00"
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
@.str82 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [1 x i8] c"\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [1 x i8] c"\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [2 x i8] c"#\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [2 x i8] c"[\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [2 x i8] c"]\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [8 x i8] c"package\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [5 x i8] c"name\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [8 x i8] c"version\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [5 x i8] c"main\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [12 x i8] c"description\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [6 x i8] c"no_gc\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [5 x i8] c"true\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [7 x i8] c"target\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [6 x i8] c"build\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [44 x i8] c"clave desconocida en [build] de nyx.toml: '\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [34 x i8] c"' (claves válidas: main, target)\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [13 x i8] c"dependencies\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [1 x i8] c"\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [1 x i8] c"\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [1 x i8] c"\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [74 x i8] c"nyx.toml declara main dos veces con valores distintos: [package] main = \22\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [21 x i8] c"\22 y [build] main = \22\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [1 x i8] c"\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [1 x i8] c"\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [1 x i8] c"\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [78 x i8] c"nyx.toml declara target dos veces con valores distintos: [package] target = \22\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [23 x i8] c"\22 y [build] target = \22\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [18 x i8] c"\22 (deja uno solo)\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [1 x i8] c"\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [1 x i8] c"\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [1 x i8] c"\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [1 x i8] c"\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [57 x i8] c"# nyx.lock — auto-generated by nyx build, do not edit\0a\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [11 x i8] c"[package]\0a\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [9 x i8] c"name = \22\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [12 x i8] c"version = \22\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [9 x i8] c"main = \22\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [17 x i8] c"Adding package: \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [1 x i8] c"\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [3 x i8] c" =\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [12 x i8] c"  Package '\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [27 x i8] c"' is already a dependency.\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [19 x i8] c"  Using existing: \00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [13 x i8] c"  Fetching: \00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [2 x i8] c" \00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [26 x i8] c"  error: could not fetch \00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [7 x i8] c" from \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [15 x i8] c"[dependencies]\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [19 x i8] c"  Updated nyx.toml\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [10 x i8] c"Package '\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [9 x i8] c"' added.\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [1 x i8] c"\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [1 x i8] c"\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [2 x i8] c".\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [1 x i8] c"\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [12 x i8] c" nyx-lang: \00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [3 x i8] c"en\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [11 x i8] c"nyx-lang: \00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [3 x i8] c"en\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [3 x i8] c"en\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [3 x i8] c"es\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [3 x i8] c"es\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [3 x i8] c"en\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [1 x i8] c"\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [21 x i8] c"/templates/gitignore\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [11 x i8] c"{{binary}}\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [1 x i8] c"\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [2 x i8] c",\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [28 x i8] c"error: --agent inválido: '\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [46 x i8] c"' (valores válidos: claude, cursor, copilot)\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [72 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot]\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [1 x i8] c"\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [1 x i8] c"\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [20 x i8] c"/templates/adapters\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [2 x i8] c",\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [1 x i8] c"\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [2 x i8] c"/\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c".\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [4 x i8] c".md\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [10 x i8] c"/.github'\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [44 x i8] c"warning: falta la plantilla del adaptador '\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [20 x i8] c") — no se sembró\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c"/\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [1 x i8] c"\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [74 x i8] c"error: no encuentro la toolchain de Nyx (NYX_HOME vacío o sin templates/\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [84 x i8] c"/): el contexto para agentes (AGENTS.md, CAPABILITIES.md, docs/nyx/) NO se sembró.\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [82 x i8] c"  Exporta NYX_HOME (o reinstala con install.sh) y ejecuta: nyx update --sync-docs\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [17 x i8] c"/CAPABILITIES.md\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides'\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [20 x i8] c"/en/docs/nyx/LLM.md\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [17 x i8] c"/docs/nyx/LLM.md\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [14 x i8] c"error: falta \00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [71 x i8] c" en la toolchain: docs/nyx/LLM.md (la referencia densa) NO se sembró.\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [111 x i8] c"  Reinstala con install.sh (o ejecuta make install-local desde el monorepo) y después: nyx update --sync-docs\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [17 x i8] c"/docs/nyx/guides\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [2 x i8] c"/\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides/\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [28 x i8] c"GENERATED by `nyx sdd init`\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [3 x i8] c"es\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [28 x i8] c"  skipped (already there): \00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [25 x i8] c"  salteado (ya existe): \00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [2 x i8] c"/\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [27 x i8] c"error: falta la plantilla \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [19 x i8] c" en la toolchain: \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [16 x i8] c" NO se sembró.\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [3 x i8] c"  \00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [1 x i8] c"\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [1 x i8] c"\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [20 x i8] c"# Evidence — nyx \00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [21 x i8] c"# Evidencia — nyx \00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [7 x i8] c"\0a<!-- \00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [110 x i8] c" from the gotcha table of the installed toolchain — do not edit by hand; `nyx update` regenerates it. -->\0a\0a\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [319 x i8] c"Traps and rules that are LIVE in the toolchain this project was seeded with. Each\0aline carries the stable id, the anchor term to look up in `AGENTS.md` and\0a`docs/nyx/LLM.md`, and the test in the language repo that proves it. This file is\0aevidence, not advice: if a line here contradicts a manual, the manual is stale.\0a\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [334 x i8] c"Trampas y reglas VIVAS en la toolchain con la que se sembró este proyecto. Cada\0alínea trae el id estable, el término ancla para buscar en `AGENTS.md` y en\0a`docs/nyx/LLM.md`, y el test del repo del lenguaje que la prueba. Este archivo es\0aevidencia, no consejo: si una línea de acá contradice a un manual, el manual quedó viejo.\0a\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [1 x i8] c"\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [3 x i8] c"id\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [6 x i8] c"since\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [5 x i8] c"test\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [3 x i8] c"es\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [5 x i8] c"** (\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [9 x i8] c", since \00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [7 x i8] c") — \00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [14 x i8] c" — anchor `\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [2 x i8] c"`\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [12 x i8] c" — test `\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [14 x i8] c"\0a## Retired\0a\0a\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [16 x i8] c"\0a## Retirados\0a\0a\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [139 x i8] c"These were real traps and are not any more: if a manual, a blog post or an older\0aagent still repeats them, it is wrong for this version.\0a\0a\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [150 x i8] c"Estas fueron trampas reales y ya no lo son: si un manual, un artículo o un agente\0aviejo las sigue repitiendo, está equivocado para esta versión.\0a\0a\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [1 x i8] c"\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [3 x i8] c"id\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [3 x i8] c"es\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [14 x i8] c"** (fixed in \00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [7 x i8] c") — \00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [4 x i8] c".md\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [1 x i8] c"\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [4 x i8] c"// \00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [80 x i8] c" from the installed toolchain's gotcha table — regenerate with `nyx update`.\0a\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [96 x i8] c"// Edit it and it becomes yours: with this header gone, `nyx sdd init` never touches it again.\0a\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [72 x i8] c"// Each block greps src/ for a trap the compiler cannot catch for you.\0a\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [20 x i8] c"import \22std/regex\22\0a\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [83 x i8] c"// `nyx test` compiles and runs every test INSIDE the toolchain (cwd = NYX_HOME),\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [85 x i8] c"// not inside the project: a bare readdir(\22src\22) would read the wrong directory and\0a\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [83 x i8] c"// this file would pass without looking at anything. The project directory is the\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [83 x i8] c"// one the runner came from (OLDPWD). If it cannot be found, the first test below\0a\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [56 x i8] c"// FAILS out loud instead of passing on an empty scan.\0a\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [31 x i8] c"fn project_root() -> String {\0a\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [47 x i8] c"    if file_exists(\22nyx.toml\22) { return \22.\22 }\0a\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [40 x i8] c"    let old: String = getenv(\22OLDPWD\22)\0a\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [20 x i8] c"    if old != \22\22 {\0a\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [58 x i8] c"        if file_exists(old + \22/nyx.toml\22) { return old }\0a\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [15 x i8] c"    return \22\22\0a\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [79 x i8] c"// Every .nx under `dir`, recursively. readdir() never returns \22.\22 or \22..\22; a\0a\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [57 x i8] c"// directory is told apart by file_exists(path + \22/.\22).\0a\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [37 x i8] c"fn nx_files(dir: String) -> Array {\0a\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [25 x i8] c"    var out: Array = []\0a\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [49 x i8] c"    if file_exists(dir) == false { return out }\0a\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [39 x i8] c"    let entries: Array = readdir(dir)\0a\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [34 x i8] c"    while i < entries.length() {\0a\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [36 x i8] c"        let e: String = entries[i]\0a\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [39 x i8] c"        let p: String = dir + \22/\22 + e\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [32 x i8] c"        if e.endsWith(\22.nx\22) {\0a\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [25 x i8] c"            out.push(p)\0a\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [18 x i8] c"        } else {\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [40 x i8] c"            if file_exists(p + \22/.\22) {\0a\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [46 x i8] c"                let sub: Array = nx_files(p)\0a\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [32 x i8] c"                var j: int = 0\0a\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [42 x i8] c"                while j < sub.length() {\0a\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [44 x i8] c"                    let s: String = sub[j]\0a\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [33 x i8] c"                    out.push(s)\0a\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [31 x i8] c"                    j = j + 1\0a\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [19 x i8] c"                }\0a\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [15 x i8] c"            }\0a\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [16 x i8] c"    return out\0a\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [77 x i8] c"// Lines of src/ matching `pattern`, as `src/file.nx:LINE` (relative to the\0a\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [53 x i8] c"// project, so the message is a path you can open).\0a\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [45 x i8] c"fn grep_sources(pattern: String) -> Array {\0a\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [26 x i8] c"    var hits: Array = []\0a\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [35 x i8] c"    if root == \22\22 { return hits }\0a\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [48 x i8] c"    let files: Array = nx_files(root + \22/src\22)\0a\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [20 x i8] c"    var f: int = 0\0a\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [32 x i8] c"    while f < files.length() {\0a\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [37 x i8] c"        let path: String = files[f]\0a\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [34 x i8] c"        var shown: String = path\0a\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [101 x i8] c"        if path.startsWith(root + \22/\22) { shown = path.substring(root.length() + 1, path.length()) }\0a\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [56 x i8] c"        let lines: Array = read_file(path).split(\22\5cn\22)\0a\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [24 x i8] c"        var i: int = 0\0a\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [36 x i8] c"        while i < lines.length() {\0a\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [41 x i8] c"            let line: String = lines[i]\0a\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [58 x i8] c"            let scanned: String = gotcha_scan_line(line)\0a\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [99 x i8] c"            if regex_is_match(scanned, pattern) { hits.push(shown + \22:\22 + int_to_string(i + 1)) }\0a\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [23 x i8] c"            i = i + 1\0a\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [19 x i8] c"        f = f + 1\0a\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [17 x i8] c"    return hits\0a\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [52 x i8] c"test \22the project sources are visible from here\22 {\0a\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [126 x i8] c"    assert(root != \22\22, \22cannot find the project root (no nyx.toml): every check below would pass without scanning anything\22)\0a\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [89 x i8] c"    assert(file_exists(root + \22/src\22), \22no src/ in the project root: nothing to check\22)\0a\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [1 x i8] c"\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [3 x i8] c"id\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [14 x i8] c"test \22gotcha \00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [3 x i8] c": \00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [5 x i8] c"\22 {\0a\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [37 x i8] c"    let hits: Array = grep_sources(\22\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [33 x i8] c"    assert(hits.length() == 0, \22\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [3 x i8] c" (\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [28 x i8] c") at: \22 + hits.join(\22, \22))\0a\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [47 x i8] c"test \22every file in tests/ has test blocks\22 {\0a\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [50 x i8] c"    let files: Array = nx_files(root + \22/tests\22)\0a\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [32 x i8] c"    while i < files.length() {\0a\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [34 x i8] c"        let p: String = files[i]\0a\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [114 x i8] c"        assert(read_file(p).indexOf(\22test \5c\22\22) >= 0, p + \22 has no test blocks: nyx test would skip it silently\22)\0a\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [30 x i8] c"warning: no hay AGENTS.md en \00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [80 x i8] c": el disparador del andamiaje NO se insertó (ejecuta `nyx update --sync-docs`)\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [21 x i8] c"<!-- sdd:trigger -->\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [47 x i8] c"  skipped (already there): AGENTS.md (trigger)\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [47 x i8] c"  salteado (ya existe): AGENTS.md (disparador)\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [22 x i8] c"<!-- sdd:trigger -->\0a\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [3 x i8] c"es\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [150 x i8] c"- Si `docs/constitution.md` todavía contiene `SDD_INCOMPLETE`, no escribas código: sigue `docs/sdd/onboarding.md` y ofrece al usuario completarla.\0a\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [122 x i8] c"- Ante una funcionalidad nueva sin `specs/NNN-feature/spec.md`, ofrece escribir la spec primero (ver `specs/README.md`).\0a\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [152 x i8] c"- If `docs/constitution.md` still contains `SDD_INCOMPLETE`, do not write code yet: follow `docs/sdd/onboarding.md` and offer the user to complete it.\0a\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [113 x i8] c"- For a new feature with no `specs/NNN-feature/spec.md`, offer to write the spec first (see `specs/README.md`).\0a\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [36 x i8] c"  AGENTS.md (+2 lines: the trigger)\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [40 x i8] c"  AGENTS.md (+2 líneas: el disparador)\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [16 x i8] c"/docs/evidence'\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [59 x i8] c"  skipped (yours, no GENERATED header): docs/evidence/nyx-\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [4 x i8] c".md\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [65 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): docs/evidence/nyx-\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [4 x i8] c".md\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [34 x i8] c"  regenerated: docs/evidence/nyx-\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [4 x i8] c".md\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [33 x i8] c"  regenerado: docs/evidence/nyx-\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [4 x i8] c".md\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [41 x i8] c"  already up to date: docs/evidence/nyx-\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [4 x i8] c".md\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [39 x i8] c"  ya está al día: docs/evidence/nyx-\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [4 x i8] c".md\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [42 x i8] c"  regenerated: tests/constitution_test.nx\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [41 x i8] c"  regenerado: tests/constitution_test.nx\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [67 x i8] c"  skipped (yours, no GENERATED header): tests/constitution_test.nx\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [73 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): tests/constitution_test.nx\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [49 x i8] c"  already up to date: tests/constitution_test.nx\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [47 x i8] c"  ya está al día: tests/constitution_test.nx\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [12 x i8] c"/templates/\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [5 x i8] c"/sdd\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [1 x i8] c"\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [17 x i8] c"/constitution.md\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [49 x i8] c"error: the SDD scaffolding templates (templates/\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [59 x i8] c"/sdd/) are missing from the toolchain: NOTHING was seeded.\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [61 x i8] c"error: no encuentro las plantillas del andamiaje (templates/\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [44 x i8] c"/sdd/) en la toolchain: NO se sembró nada.\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [104 x i8] c"  Reinstall with install.sh (or run `make install-local` from the monorepo) and try again: nyx sdd init\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [109 x i8] c"  Reinstala con install.sh (o corre `make install-local` desde el monorepo) e intenta de nuevo: nyx sdd init\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [13 x i8] c"/docs/adr' '\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [13 x i8] c"/docs/sdd' '\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [18 x i8] c"/docs/evidence' '\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [10 x i8] c"/specs' '\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [8 x i8] c"/tests'\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [40 x i8] c"SDD scaffolding (optional, reversible):\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [38 x i8] c"Andamiaje SDD (opcional, reversible):\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [16 x i8] c"constitution.md\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [22 x i8] c"/docs/constitution.md\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [12 x i8] c"glossary.md\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [18 x i8] c"/docs/glossary.md\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [16 x i8] c"adr-template.md\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [27 x i8] c"/docs/adr/0000-template.md\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [16 x i8] c"specs-README.md\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [17 x i8] c"/specs/README.md\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [14 x i8] c"onboarding.md\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [24 x i8] c"/docs/sdd/onboarding.md\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [4 x i8] c".md\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [3 x i8] c"  \00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [3 x i8] c"  \00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [1 x i8] c"\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [94 x i8] c"  Next: an agent reading AGENTS.md will offer to complete docs/constitution.md (7 questions).\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [98 x i8] c"  Ahora: un agente que lea AGENTS.md va a ofrecerte completar docs/constitution.md (7 preguntas).\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [89 x i8] c"  Reversible: to go back to a plain init, delete docs/constitution.md, docs/glossary.md,\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [90 x i8] c"  Reversible: para volver a un init normal, borra docs/constitution.md, docs/glossary.md,\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [78 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ and tests/constitution_test.nx\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [76 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ y tests/constitution_test.nx\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [1 x i8] c"\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [19 x i8] c"error: directory '\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [17 x i8] c"' already exists\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [10 x i8] c"/nyx.toml\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [13 x i8] c"/src/main.nx\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [12 x i8] c"  Created: \00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [2 x i8] c"/\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [15 x i8] c"  Next:    cd \00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [12 x i8] c" && nyx run\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [31 x i8] c"error: nyx.toml already exists\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [6 x i8] c"myapp\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [13 x i8] c"mkdir -p src\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [2 x i8] c".\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [2 x i8] c".\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [33 x i8] c"  Created: nyx.toml, src/main.nx\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [21 x i8] c"  Build:   nyx build\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [19 x i8] c"  Run:     nyx run\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [14 x i8] c"   resolving \00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [5 x i8] c"http\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [4 x i8] c"git\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [2 x i8] c" \00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [26 x i8] c"  error: failed to fetch \00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [7 x i8] c" from \00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [12 x i8] c"  Fetched: \00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [128 x i8] c"use of undefined value|defined with type .* but expected|expected instruction|invalid redefinition of|invalid forward reference\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [37 x i8] c"undefined reference|undefined symbol\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [14 x i8] c"if grep -qE '\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [99 x i8] c"echo \22  -> esto es casi seguro un BUG del compilador Nyx (IR invalido), no de tu codigo (archivo: \00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [74 x i8] c"). Repórtalo con 'nyx report' (el reporte incluye contexto util).\22 >&2; \00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [6 x i8] c"else \00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [91 x i8] c"echo \22  -> this is almost certainly a Nyx compiler BUG (invalid IR), not your code (file: \00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [76 x i8] c"). Report it with 'nyx report' (the report includes useful context).\22 >&2; \00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [16 x i8] c"elif grep -qE '\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [176 x i8] c"echo \22  -> simbolo no encontrado al linkear: si es una funcion extern C tuya, revisa el nombre/lib; si es de la stdlib de Nyx, es un bug -- repórtalo con 'nyx report'.\22 >&2; \00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [6 x i8] c"else \00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [184 x i8] c"echo \22  -> symbol not found at link time: if this is your own extern C function, check the name/lib; if it is a stdlib function, it is a Nyx bug -- report it with 'nyx report'.\22 >&2; \00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [6 x i8] c"else \00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [127 x i8] c"echo \22  -> fallo de link sin patron reconocido; si sospechas que es un bug del compilador, repórtalo con 'nyx report'.\22 >&2; \00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [6 x i8] c"else \00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [119 x i8] c"echo \22  -> link failure with no recognized pattern; if you suspect a compiler bug, report it with 'nyx report'.\22 >&2; \00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [1 x i8] c"\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [1 x i8] c"\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [1 x i8] c"\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [3 x i8] c" [\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [2 x i8] c"]\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [3 x i8] c" v\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [1 x i8] c"\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [1 x i8] c"\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [1 x i8] c"\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [1 x i8] c"\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [8 x i8] c"target/\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [29 x i8] c"mkdir -p \22$ORIG_DIR/target\22\0a\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [1 x i8] c"\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [1 x i8] c"\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [1 x i8] c"\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [1 x i8] c"\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [2 x i8] c".\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [1 x i8] c"\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [35 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [12 x i8] c" \22$SRC.ll\22 \00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c \00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [36 x i8] c"$RT/net.c $RT/thread.c $RT/regex.c \00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c \00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [55 x i8] c"$RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [39 x i8] c"$RT/compress.c $RT/random.c $RT/url.c \00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [71 x i8] c"$RT/msgpack.c $RT/websocket.c $RT/persist.c $RT/http2.c $RT/process.c \00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [21 x i8] c"$RT/llama_adapter.c \00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [19 x i8] c"$RT/os/os_posix.c \00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [1 x i8] c"\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [70 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [32 x i8] c"\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [2 x i8] c"#\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [1 x i8] c"\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [10 x i8] c"Target:  \00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [1 x i8] c"\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [2 x i8] c"/\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [98 x i8] c"--main espera una ruta relativa a la raíz del proyecto (donde está nyx.toml), no una absoluta: \00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [31 x i8] c"--main espera un archivo .nx: \00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [31 x i8] c"--main: no existe el archivo '\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [48 x i8] c"' (la ruta es relativa a la raíz del proyecto)\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [1 x i8] c"\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [3 x i8] c"./\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [1 x i8] c"\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [1 x i8] c"\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [1 x i8] c"\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [1 x i8] c"/"
@.str692 = private unnamed_addr constant [2 x i8] c"-\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [1 x i8] c"\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [1 x i8] c"\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [1 x i8] c"\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [74 x i8] c"> Completá las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [79 x i8] c"FRICTION.md ya existe con contenido — avisale al usuario para que lo revise.\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [79 x i8] c"creado FRICTION.md — completá las secciones (tu asistente IA puede hacerlo)\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [71 x i8] c"y AVISALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [1 x i8] c"\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [57 x i8] c" — ejecuta `nyx report` primero para crear FRICTION.md\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [67 x i8] c"error: el reporte parece vacío — completá la plantilla primero\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [1 x i8] c"\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [1 x i8] c"\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [1 x i8] c"\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [28 x i8] c" — puedes abrir un issue:\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [1 x i8] c"\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [1 x i8] c"\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [1 x i8] c"\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [4 x i8] c"std\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [2 x i8] c".\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [1 x i8] c"\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [1 x i8] c"\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [5 x i8] c"http\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [4 x i8] c"web\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [3 x i8] c"db\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [5 x i8] c"json\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [5 x i8] c"file\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [3 x i8] c"io\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [5 x i8] c"path\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [4 x i8] c"net\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [4 x i8] c"url\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [6 x i8] c"async\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [7 x i8] c"random\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [5 x i8] c"time\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [7 x i8] c"string\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [4 x i8] c"set\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [4 x i8] c"box\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [5 x i8] c"args\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [4 x i8] c"log\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [1 x i8] c"\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [1 x i8] c"("
@.str825 = private unnamed_addr constant [1 x i8] c")"
@.str826 = private unnamed_addr constant [2 x i8] c"/\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [1 x i8] c"\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [1 x i8] c"\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [4 x i8] c"///\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [1 x i8] c"\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [2 x i8] c" \00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [2 x i8] c"`\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [6 x i8] c" — \00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [1 x i8] c"("
@.str840 = private unnamed_addr constant [1 x i8] c"{"
@.str841 = private unnamed_addr constant [1 x i8] c"\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [1 x i8] c"\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [1 x i8] c"\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [2 x i8] c"1\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [2 x i8] c"s\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [2 x i8] c")\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [1 x i8] c"\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [6 x i8] c" — \00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [1 x i8] c"\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [1 x i8] c"\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [1 x i8] c"\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [4 x i8] c"## \00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [1 x i8] c"\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [3 x i8] c" (\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [6 x i8] c"build\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [1 x i8] c"\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [1 x i8] c"\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [1 x i8] c"\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [6 x i8] c"build\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [4 x i8] c"run\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [5 x i8] c"test\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [3 x i8] c"--\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [1 x i8] c"\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [66 x i8] c"--main necesita un archivo (por ejemplo: --main src/navegador.nx)\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [1 x i8] c"-"
@.str917 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [94 x i8] c"  --main <archivo.nx>  otro punto de entrada del proyecto (por defecto, el main de nyx.toml);\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [94 x i8] c"                       el artefacto va a target/<nombre>-<archivo> para no pisar el principal\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [1 x i8] c"\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [1 x i8] c"\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [6 x i8] c" — \00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [5 x i8] c"init\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [1 x i8] c"\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [1 x i8] c"\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [1 x i8] c"\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [1 x i8] c"\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [1 x i8] c"\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [1 x i8] c"\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [3 x i8] c"--\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [1 x i8] c"\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [1 x i8] c"\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [1 x i8] c"\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [3 x i8] c"es\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [3 x i8] c"es\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [1 x i8] c"\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [3 x i8] c"en\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [3 x i8] c"en\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [3 x i8] c"es\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [1 x i8] c"\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [2 x i8] c".\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [1 x i8] c"\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [1 x i8] c"\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [5 x i8] c"init\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [2 x i8] c".\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [2 x i8] c".\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [2 x i8] c".\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [2 x i8] c".\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [1 x i8] c"\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [4 x i8] c"add\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [1 x i8] c"\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [8 x i8] c"project\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [1 x i8] c"\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [1 x i8] c"\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [1 x i8] c"\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [1 x i8] c"\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [1 x i8] c"\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [7 x i8] c"report\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [1 x i8] c"\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [1 x i8] c"\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [1 x i8] c"\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [1 x i8] c"\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [1 x i8] c"\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [53 x i8] c"error: --main solo vale para `nyx build` y `nyx run`\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [1 x i8] c"\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [5 x i8] c"info\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [6 x i8] c"build\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [4 x i8] c"run\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [79 x i8] c"Usage: nyx run [--release] [--target <triple>] [--main <archivo.nx>] [args...]\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [1 x i8] c"\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [1 x i8] c"\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [1 x i8] c"\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [54 x i8] c"  instala wasmtime, o ejecútalo tú mismo: wasmtime \00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [2 x i8] c" \00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [1 x i8] c"\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [27 x i8] c"  usa `nyx build --target \00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [47 x i8] c"` y ejecútalo con el runner de esa plataforma\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [3 x i8] c"./\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [1 x i8] c"\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [10 x i8] c"./target/\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [2 x i8] c" \00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [3 x i8] c"--\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [7 x i8] c"--main\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [110 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>] [--main <archivo.nx>]\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str1057.c = internal global %nyx_string* null
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
  %1130 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %1131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1130, i64 0)
  %1132 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 3
  store %nyx_string* %1131, %nyx_string** %1132
  %1133 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 4
  store i1 0, i1* %1133
  %1134 = getelementptr [1 x i8], [1 x i8]* @.str75, i32 0, i32 0
  %1135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1134, i64 0)
  %1136 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 5
  store %nyx_string* %1135, %nyx_string** %1136
  %1137 = load { i64, i8* }*, { i64, i8* }** %1114
  %1138 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 6
  store { i64, i8* }* %1137, { i64, i8* }** %1138
  %1139 = load { i64, i8* }*, { i64, i8* }** %1116
  %1140 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 7
  store { i64, i8* }* %1139, { i64, i8* }** %1140
  %1141 = getelementptr [1 x i8], [1 x i8]* @.str76, i32 0, i32 0
  %1142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1141, i64 0)
  %1143 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 8
  store %nyx_string* %1142, %nyx_string** %1143
  %1144 = getelementptr [1 x i8], [1 x i8]* @.str77, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1144, i64 0)
  %1146 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 9
  store %nyx_string* %1145, %nyx_string** %1146
  %1147 = load %ProjectConfig, %ProjectConfig* %1120
  %1148 = alloca %ProjectConfig
  store %ProjectConfig %1147, %ProjectConfig* %1148
  %1149 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1149, i64 0)
  %1151 = alloca %nyx_string*
  store %nyx_string* %1150, %nyx_string** %1151
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
  %1161 = load %nyx_string*, %nyx_string** %content.ptr
  %1162 = getelementptr [2 x i8], [2 x i8]* @.str82, i32 0, i32 0
  %1163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1162, i64 1)
  %1164 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1161, %nyx_string* %1163)
  %1165 = alloca { i64, i8* }*
  store { i64, i8* }* %1164, { i64, i8* }** %1165
  %1166 = getelementptr [1 x i8], [1 x i8]* @.str83, i32 0, i32 0
  %1167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1166, i64 0)
  %1168 = alloca %nyx_string*
  store %nyx_string* %1167, %nyx_string** %1168
  %1169 = alloca i64
  store i64 0, i64* %1169
  %1170 = getelementptr [1 x i8], [1 x i8]* @.str84, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1170, i64 0)
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = getelementptr [2 x i8], [2 x i8]* @.str85, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1173, i64 1)
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
  %1182 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %1183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1182, i64 7)
  %1184 = alloca %nyx_string*
  store %nyx_string* %1183, %nyx_string** %1184
  %1185 = getelementptr [5 x i8], [5 x i8]* @.str89, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1185, i64 4)
  %1187 = alloca %nyx_string*
  store %nyx_string* %1186, %nyx_string** %1187
  %1188 = getelementptr [8 x i8], [8 x i8]* @.str90, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1188, i64 7)
  %1190 = alloca %nyx_string*
  store %nyx_string* %1189, %nyx_string** %1190
  %1191 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1191, i64 4)
  %1193 = alloca %nyx_string*
  store %nyx_string* %1192, %nyx_string** %1193
  %1194 = getelementptr [12 x i8], [12 x i8]* @.str92, i32 0, i32 0
  %1195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1194, i64 11)
  %1196 = alloca %nyx_string*
  store %nyx_string* %1195, %nyx_string** %1196
  %1197 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1197, i64 5)
  %1199 = alloca %nyx_string*
  store %nyx_string* %1198, %nyx_string** %1199
  %1200 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %1201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1200, i64 4)
  %1202 = alloca %nyx_string*
  store %nyx_string* %1201, %nyx_string** %1202
  %1203 = getelementptr [7 x i8], [7 x i8]* @.str95, i32 0, i32 0
  %1204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1203, i64 6)
  %1205 = alloca %nyx_string*
  store %nyx_string* %1204, %nyx_string** %1205
  %1206 = getelementptr [6 x i8], [6 x i8]* @.str96, i32 0, i32 0
  %1207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1206, i64 5)
  %1208 = alloca %nyx_string*
  store %nyx_string* %1207, %nyx_string** %1208
  %1209 = getelementptr [44 x i8], [44 x i8]* @.str97, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1209, i64 43)
  %1211 = alloca %nyx_string*
  store %nyx_string* %1210, %nyx_string** %1211
  %1212 = getelementptr [34 x i8], [34 x i8]* @.str98, i32 0, i32 0
  %1213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1212, i64 33)
  %1214 = alloca %nyx_string*
  store %nyx_string* %1213, %nyx_string** %1214
  %1215 = getelementptr [13 x i8], [13 x i8]* @.str99, i32 0, i32 0
  %1216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1215, i64 12)
  %1217 = alloca %nyx_string*
  store %nyx_string* %1216, %nyx_string** %1217
  %1218 = call i8* @llvm.stacksave()
  br label %while_cond250
while_cond250:
  %1219 = load i64, i64* %1169
  %1220 = load { i64, i8* }*, { i64, i8* }** %1165
  %1221 = call i64 @nyx_array_length({ i64, i8* }* %1220)
  %1222 = icmp slt i64 %1219, %1221
  br i1 %1222, label %while_body251, label %while_end252
while_body251:
  call void @llvm.stackrestore(i8* %1218)
  %1223 = load { i64, i8* }*, { i64, i8* }** %1165
  %1224 = load i64, i64* %1169
  %1225 = call i64 @nyx_array_get_checked({ i64, i8* }* %1223, i64 %1224, i64 2)
  %1226 = inttoptr i64 %1225 to %nyx_string*
  %1227 = alloca %nyx_string*
  store %nyx_string* %1226, %nyx_string** %1227
  %1228 = load %nyx_string*, %nyx_string** %1227
  %1229 = call %nyx_string* @nyx_string_trim(%nyx_string* %1228)
  %1230 = alloca %nyx_string*
  store %nyx_string* %1229, %nyx_string** %1230
  %1231 = alloca i1
  store i1 true, i1* %1231
  %1232 = load %nyx_string*, %nyx_string** %1230
  %1233 = load %nyx_string*, %nyx_string** %1172
  %1234 = call i1 @nyx_string_equals(%nyx_string* %1232, %nyx_string* %1233)
  br i1 %1234, label %sc_or_end254, label %sc_or_rhs253
sc_or_rhs253:
  %1235 = load %nyx_string*, %nyx_string** %1230
  %1236 = load %nyx_string*, %nyx_string** %1175
  %1237 = call i1 @nyx_string_starts_with(%nyx_string* %1235, %nyx_string* %1236)
  store i1 %1237, i1* %1231
  br label %sc_or_end254
sc_or_end254:
  %1238 = load i1, i1* %1231
  br i1 %1238, label %then255, label %else256
then255:
  %1239 = load i64, i64* %1169
  %1240 = add i64 %1239, 1
  store i64 %1240, i64* %1169
  br label %merge257
else256:
  %1241 = alloca i1
  store i1 false, i1* %1241
  %1242 = load %nyx_string*, %nyx_string** %1230
  %1243 = load %nyx_string*, %nyx_string** %1178
  %1244 = call i1 @nyx_string_starts_with(%nyx_string* %1242, %nyx_string* %1243)
  br i1 %1244, label %sc_and_rhs258, label %sc_and_end259
sc_and_rhs258:
  %1245 = load %nyx_string*, %nyx_string** %1230
  %1246 = load %nyx_string*, %nyx_string** %1181
  %1247 = call i1 @nyx_string_ends_with(%nyx_string* %1245, %nyx_string* %1246)
  store i1 %1247, i1* %1241
  br label %sc_and_end259
sc_and_end259:
  %1248 = load i1, i1* %1241
  br i1 %1248, label %then260, label %else261
then260:
  %1249 = load %nyx_string*, %nyx_string** %1230
  %1250 = load %nyx_string*, %nyx_string** %1230
  %1251 = call i64 @nyx_string_byte_length(%nyx_string* %1250)
  %1252 = sub i64 %1251, 1
  %1253 = call %nyx_string* @nyx_string_substring(%nyx_string* %1249, i64 1, i64 %1252)
  %1254 = call %nyx_string* @nyx_string_trim(%nyx_string* %1253)
  store %nyx_string* %1254, %nyx_string** %1168
  %1255 = load i64, i64* %1169
  %1256 = add i64 %1255, 1
  store i64 %1256, i64* %1169
  br label %merge262
else261:
  %1257 = load %nyx_string*, %nyx_string** %1230
  %1258 = call %nyx_string* @parse_toml_key(%nyx_string* %1257)
  %1259 = alloca %nyx_string*
  store %nyx_string* %1258, %nyx_string** %1259
  %1260 = load %nyx_string*, %nyx_string** %1230
  %1261 = call %nyx_string* @parse_toml_value(%nyx_string* %1260)
  %1262 = alloca %nyx_string*
  store %nyx_string* %1261, %nyx_string** %1262
  %1263 = load %nyx_string*, %nyx_string** %1168
  %1264 = load %nyx_string*, %nyx_string** %1184
  %1265 = call i1 @nyx_string_equals(%nyx_string* %1263, %nyx_string* %1264)
  br i1 %1265, label %then263, label %else264
then263:
  %1266 = load %nyx_string*, %nyx_string** %1259
  %1267 = load %nyx_string*, %nyx_string** %1187
  %1268 = call i1 @nyx_string_equals(%nyx_string* %1266, %nyx_string* %1267)
  br i1 %1268, label %then266, label %else267
then266:
  %1269 = load %nyx_string*, %nyx_string** %1262
  %1270 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 0
  store %nyx_string* %1269, %nyx_string** %1270
  br label %merge268
else267:
  br label %merge268
merge268:
  %1271 = load %nyx_string*, %nyx_string** %1259
  %1272 = load %nyx_string*, %nyx_string** %1190
  %1273 = call i1 @nyx_string_equals(%nyx_string* %1271, %nyx_string* %1272)
  br i1 %1273, label %then269, label %else270
then269:
  %1274 = load %nyx_string*, %nyx_string** %1262
  %1275 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 1
  store %nyx_string* %1274, %nyx_string** %1275
  br label %merge271
else270:
  br label %merge271
merge271:
  %1276 = load %nyx_string*, %nyx_string** %1259
  %1277 = load %nyx_string*, %nyx_string** %1193
  %1278 = call i1 @nyx_string_equals(%nyx_string* %1276, %nyx_string* %1277)
  br i1 %1278, label %then272, label %else273
then272:
  %1279 = load %nyx_string*, %nyx_string** %1262
  store %nyx_string* %1279, %nyx_string** %1151
  br label %merge274
else273:
  br label %merge274
merge274:
  %1280 = load %nyx_string*, %nyx_string** %1259
  %1281 = load %nyx_string*, %nyx_string** %1196
  %1282 = call i1 @nyx_string_equals(%nyx_string* %1280, %nyx_string* %1281)
  br i1 %1282, label %then275, label %else276
then275:
  %1283 = load %nyx_string*, %nyx_string** %1262
  %1284 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 3
  store %nyx_string* %1283, %nyx_string** %1284
  br label %merge277
else276:
  br label %merge277
merge277:
  %1285 = alloca i1
  store i1 false, i1* %1285
  %1286 = load %nyx_string*, %nyx_string** %1259
  %1287 = load %nyx_string*, %nyx_string** %1199
  %1288 = call i1 @nyx_string_equals(%nyx_string* %1286, %nyx_string* %1287)
  br i1 %1288, label %sc_and_rhs278, label %sc_and_end279
sc_and_rhs278:
  %1289 = load %nyx_string*, %nyx_string** %1262
  %1290 = load %nyx_string*, %nyx_string** %1202
  %1291 = call i1 @nyx_string_equals(%nyx_string* %1289, %nyx_string* %1290)
  store i1 %1291, i1* %1285
  br label %sc_and_end279
sc_and_end279:
  %1292 = load i1, i1* %1285
  br i1 %1292, label %then280, label %else281
then280:
  %1293 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 4
  store i1 1, i1* %1293
  br label %merge282
else281:
  br label %merge282
merge282:
  %1294 = load %nyx_string*, %nyx_string** %1259
  %1295 = load %nyx_string*, %nyx_string** %1205
  %1296 = call i1 @nyx_string_equals(%nyx_string* %1294, %nyx_string* %1295)
  br i1 %1296, label %then283, label %else284
then283:
  %1297 = load %nyx_string*, %nyx_string** %1262
  store %nyx_string* %1297, %nyx_string** %1157
  br label %merge285
else284:
  br label %merge285
merge285:
  br label %merge265
else264:
  br label %merge265
merge265:
  %1298 = load %nyx_string*, %nyx_string** %1168
  %1299 = load %nyx_string*, %nyx_string** %1208
  %1300 = call i1 @nyx_string_equals(%nyx_string* %1298, %nyx_string* %1299)
  br i1 %1300, label %then286, label %else287
then286:
  %1301 = load %nyx_string*, %nyx_string** %1259
  %1302 = load %nyx_string*, %nyx_string** %1193
  %1303 = call i1 @nyx_string_equals(%nyx_string* %1301, %nyx_string* %1302)
  br i1 %1303, label %then289, label %else290
then289:
  %1304 = load %nyx_string*, %nyx_string** %1262
  store %nyx_string* %1304, %nyx_string** %1154
  br label %merge291
else290:
  %1305 = load %nyx_string*, %nyx_string** %1259
  %1306 = load %nyx_string*, %nyx_string** %1205
  %1307 = call i1 @nyx_string_equals(%nyx_string* %1305, %nyx_string* %1306)
  br i1 %1307, label %then292, label %else293
then292:
  %1308 = load %nyx_string*, %nyx_string** %1262
  store %nyx_string* %1308, %nyx_string** %1160
  br label %merge294
else293:
  %1309 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 8
  %1310 = load %nyx_string*, %nyx_string** %1309
  %1311 = load %nyx_string*, %nyx_string** %1172
  %1312 = call i1 @nyx_string_equals(%nyx_string* %1310, %nyx_string* %1311)
  br i1 %1312, label %then295, label %else296
then295:
  %1313 = load %nyx_string*, %nyx_string** %1211
  %1314 = load %nyx_string*, %nyx_string** %1259
  %1315 = call %nyx_string* @nyx_string_concat(%nyx_string* %1313, %nyx_string* %1314)
  %1316 = load %nyx_string*, %nyx_string** %1214
  %1317 = call %nyx_string* @nyx_string_concat(%nyx_string* %1315, %nyx_string* %1316)
  %1318 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 8
  store %nyx_string* %1317, %nyx_string** %1318
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
  %1319 = load %nyx_string*, %nyx_string** %1168
  %1320 = load %nyx_string*, %nyx_string** %1217
  %1321 = call i1 @nyx_string_equals(%nyx_string* %1319, %nyx_string* %1320)
  br i1 %1321, label %then298, label %else299
then298:
  %1322 = alloca i1
  store i1 false, i1* %1322
  %1323 = load %nyx_string*, %nyx_string** %1259
  %1324 = load %nyx_string*, %nyx_string** %1172
  %1325 = call i1 @nyx_string_equals(%nyx_string* %1323, %nyx_string* %1324)
  %1326 = xor i1 %1325, true
  br i1 %1326, label %sc_and_rhs301, label %sc_and_end302
sc_and_rhs301:
  %1327 = load %nyx_string*, %nyx_string** %1262
  %1328 = load %nyx_string*, %nyx_string** %1172
  %1329 = call i1 @nyx_string_equals(%nyx_string* %1327, %nyx_string* %1328)
  %1330 = xor i1 %1329, true
  store i1 %1330, i1* %1322
  br label %sc_and_end302
sc_and_end302:
  %1331 = load i1, i1* %1322
  br i1 %1331, label %then303, label %else304
then303:
  %1332 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 6
  %1333 = load { i64, i8* }*, { i64, i8* }** %1332
  %1334 = load %nyx_string*, %nyx_string** %1259
  %1335 = ptrtoint %nyx_string* %1334 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1333, i64 %1335, i64 2)
  %1336 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 7
  %1337 = load { i64, i8* }*, { i64, i8* }** %1336
  %1338 = load %nyx_string*, %nyx_string** %1262
  %1339 = ptrtoint %nyx_string* %1338 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1339, i64 2)
  br label %merge305
else304:
  br label %merge305
merge305:
  br label %merge300
else299:
  br label %merge300
merge300:
  %1340 = load i64, i64* %1169
  %1341 = add i64 %1340, 1
  store i64 %1341, i64* %1169
  br label %merge262
merge262:
  br label %merge257
merge257:
  br label %while_cond250
while_end252:
  %1342 = alloca i1
  store i1 false, i1* %1342
  %1343 = alloca i1
  store i1 false, i1* %1343
  %1344 = load %nyx_string*, %nyx_string** %1151
  %1345 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1345, i64 0)
  %1347 = call i1 @nyx_string_equals(%nyx_string* %1344, %nyx_string* %1346)
  %1348 = xor i1 %1347, true
  br i1 %1348, label %sc_and_rhs306, label %sc_and_end307
sc_and_rhs306:
  %1349 = load %nyx_string*, %nyx_string** %1154
  %1350 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1350, i64 0)
  %1352 = call i1 @nyx_string_equals(%nyx_string* %1349, %nyx_string* %1351)
  %1353 = xor i1 %1352, true
  store i1 %1353, i1* %1343
  br label %sc_and_end307
sc_and_end307:
  %1354 = load i1, i1* %1343
  br i1 %1354, label %sc_and_rhs308, label %sc_and_end309
sc_and_rhs308:
  %1355 = load %nyx_string*, %nyx_string** %1151
  %1356 = load %nyx_string*, %nyx_string** %1154
  %1357 = call i1 @nyx_string_equals(%nyx_string* %1355, %nyx_string* %1356)
  %1358 = xor i1 %1357, true
  store i1 %1358, i1* %1342
  br label %sc_and_end309
sc_and_end309:
  %1359 = load i1, i1* %1342
  br i1 %1359, label %then310, label %else311
then310:
  %1360 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 8
  %1361 = load %nyx_string*, %nyx_string** %1360
  %1362 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %1363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1362, i64 0)
  %1364 = call i1 @nyx_string_equals(%nyx_string* %1361, %nyx_string* %1363)
  br i1 %1364, label %then313, label %else314
then313:
  %1365 = getelementptr [74 x i8], [74 x i8]* @.str103, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1365, i64 73)
  %1367 = load %nyx_string*, %nyx_string** %1151
  %1368 = call %nyx_string* @nyx_string_concat(%nyx_string* %1366, %nyx_string* %1367)
  %1369 = getelementptr [21 x i8], [21 x i8]* @.str104, i32 0, i32 0
  %1370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1369, i64 20)
  %1371 = call %nyx_string* @nyx_string_concat(%nyx_string* %1368, %nyx_string* %1370)
  %1372 = load %nyx_string*, %nyx_string** %1154
  %1373 = call %nyx_string* @nyx_string_concat(%nyx_string* %1371, %nyx_string* %1372)
  %1374 = getelementptr [18 x i8], [18 x i8]* @.str105, i32 0, i32 0
  %1375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1374, i64 17)
  %1376 = call %nyx_string* @nyx_string_concat(%nyx_string* %1373, %nyx_string* %1375)
  %1377 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 8
  store %nyx_string* %1376, %nyx_string** %1377
  br label %merge315
else314:
  br label %merge315
merge315:
  br label %merge312
else311:
  br label %merge312
merge312:
  %1378 = alloca i1
  store i1 false, i1* %1378
  %1379 = alloca i1
  store i1 false, i1* %1379
  %1380 = load %nyx_string*, %nyx_string** %1157
  %1381 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %1382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1381, i64 0)
  %1383 = call i1 @nyx_string_equals(%nyx_string* %1380, %nyx_string* %1382)
  %1384 = xor i1 %1383, true
  br i1 %1384, label %sc_and_rhs316, label %sc_and_end317
sc_and_rhs316:
  %1385 = load %nyx_string*, %nyx_string** %1160
  %1386 = getelementptr [1 x i8], [1 x i8]* @.str107, i32 0, i32 0
  %1387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1386, i64 0)
  %1388 = call i1 @nyx_string_equals(%nyx_string* %1385, %nyx_string* %1387)
  %1389 = xor i1 %1388, true
  store i1 %1389, i1* %1379
  br label %sc_and_end317
sc_and_end317:
  %1390 = load i1, i1* %1379
  br i1 %1390, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1391 = load %nyx_string*, %nyx_string** %1157
  %1392 = load %nyx_string*, %nyx_string** %1160
  %1393 = call i1 @nyx_string_equals(%nyx_string* %1391, %nyx_string* %1392)
  %1394 = xor i1 %1393, true
  store i1 %1394, i1* %1378
  br label %sc_and_end319
sc_and_end319:
  %1395 = load i1, i1* %1378
  br i1 %1395, label %then320, label %else321
then320:
  %1396 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 8
  %1397 = load %nyx_string*, %nyx_string** %1396
  %1398 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1398, i64 0)
  %1400 = call i1 @nyx_string_equals(%nyx_string* %1397, %nyx_string* %1399)
  br i1 %1400, label %then323, label %else324
then323:
  %1401 = getelementptr [78 x i8], [78 x i8]* @.str109, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1401, i64 77)
  %1403 = load %nyx_string*, %nyx_string** %1157
  %1404 = call %nyx_string* @nyx_string_concat(%nyx_string* %1402, %nyx_string* %1403)
  %1405 = getelementptr [23 x i8], [23 x i8]* @.str110, i32 0, i32 0
  %1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1405, i64 22)
  %1407 = call %nyx_string* @nyx_string_concat(%nyx_string* %1404, %nyx_string* %1406)
  %1408 = load %nyx_string*, %nyx_string** %1160
  %1409 = call %nyx_string* @nyx_string_concat(%nyx_string* %1407, %nyx_string* %1408)
  %1410 = getelementptr [18 x i8], [18 x i8]* @.str111, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1410, i64 17)
  %1412 = call %nyx_string* @nyx_string_concat(%nyx_string* %1409, %nyx_string* %1411)
  %1413 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 8
  store %nyx_string* %1412, %nyx_string** %1413
  br label %merge325
else324:
  br label %merge325
merge325:
  br label %merge322
else321:
  br label %merge322
merge322:
  %1414 = load %nyx_string*, %nyx_string** %1154
  %1415 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1415, i64 0)
  %1417 = call i1 @nyx_string_equals(%nyx_string* %1414, %nyx_string* %1416)
  %1418 = xor i1 %1417, true
  br i1 %1418, label %then326, label %else327
then326:
  %1419 = load %nyx_string*, %nyx_string** %1154
  %1420 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 2
  store %nyx_string* %1419, %nyx_string** %1420
  br label %merge328
else327:
  %1421 = load %nyx_string*, %nyx_string** %1151
  %1422 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1422, i64 0)
  %1424 = call i1 @nyx_string_equals(%nyx_string* %1421, %nyx_string* %1423)
  %1425 = xor i1 %1424, true
  br i1 %1425, label %then329, label %else330
then329:
  %1426 = load %nyx_string*, %nyx_string** %1151
  %1427 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 2
  store %nyx_string* %1426, %nyx_string** %1427
  br label %merge331
else330:
  br label %merge331
merge331:
  br label %merge328
merge328:
  %1428 = load %nyx_string*, %nyx_string** %1160
  %1429 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1429, i64 0)
  %1431 = call i1 @nyx_string_equals(%nyx_string* %1428, %nyx_string* %1430)
  %1432 = xor i1 %1431, true
  br i1 %1432, label %then332, label %else333
then332:
  %1433 = load %nyx_string*, %nyx_string** %1160
  %1434 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 5
  store %nyx_string* %1433, %nyx_string** %1434
  br label %merge334
else333:
  %1435 = load %nyx_string*, %nyx_string** %1157
  %1436 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %1437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1436, i64 0)
  %1438 = call i1 @nyx_string_equals(%nyx_string* %1435, %nyx_string* %1437)
  %1439 = xor i1 %1438, true
  br i1 %1439, label %then335, label %else336
then335:
  %1440 = load %nyx_string*, %nyx_string** %1157
  %1441 = getelementptr %ProjectConfig, %ProjectConfig* %1148, i32 0, i32 5
  store %nyx_string* %1440, %nyx_string** %1441
  br label %merge337
else336:
  br label %merge337
merge337:
  br label %merge334
merge334:
  %1442 = load %ProjectConfig, %ProjectConfig* %1148
  ret %ProjectConfig %1442
}

define internal i64 @write_lockfile(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1443 = getelementptr [57 x i8], [57 x i8]* @.str116, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1443, i64 56)
  %1445 = getelementptr [11 x i8], [11 x i8]* @.str117, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1445, i64 10)
  %1447 = call %nyx_string* @nyx_string_concat(%nyx_string* %1444, %nyx_string* %1446)
  %1448 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %1449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1448, i64 8)
  %1450 = call %nyx_string* @nyx_string_concat(%nyx_string* %1447, %nyx_string* %1449)
  %1451 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %1452 = load %nyx_string*, %nyx_string** %1451
  %1453 = call %nyx_string* @nyx_string_concat(%nyx_string* %1450, %nyx_string* %1452)
  %1454 = getelementptr [3 x i8], [3 x i8]* @.str119, i32 0, i32 0
  %1455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1454, i64 2)
  %1456 = call %nyx_string* @nyx_string_concat(%nyx_string* %1453, %nyx_string* %1455)
  %1457 = getelementptr [12 x i8], [12 x i8]* @.str120, i32 0, i32 0
  %1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1457, i64 11)
  %1459 = call %nyx_string* @nyx_string_concat(%nyx_string* %1456, %nyx_string* %1458)
  %1460 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %1461 = load %nyx_string*, %nyx_string** %1460
  %1462 = call %nyx_string* @nyx_string_concat(%nyx_string* %1459, %nyx_string* %1461)
  %1463 = getelementptr [3 x i8], [3 x i8]* @.str121, i32 0, i32 0
  %1464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1463, i64 2)
  %1465 = call %nyx_string* @nyx_string_concat(%nyx_string* %1462, %nyx_string* %1464)
  %1466 = getelementptr [9 x i8], [9 x i8]* @.str122, i32 0, i32 0
  %1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1466, i64 8)
  %1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %1465, %nyx_string* %1467)
  %1469 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %1470 = load %nyx_string*, %nyx_string** %1469
  %1471 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1470)
  %1472 = getelementptr [3 x i8], [3 x i8]* @.str123, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1472, i64 2)
  %1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %1471, %nyx_string* %1473)
  %1475 = alloca %nyx_string*
  store %nyx_string* %1474, %nyx_string** %1475
  %1476 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1477 = load { i64, i8* }*, { i64, i8* }** %1476
  %1478 = call i64 @nyx_array_length({ i64, i8* }* %1477)
  %1479 = icmp sgt i64 %1478, 0
  br i1 %1479, label %then338, label %else339
then338:
  %1480 = load %nyx_string*, %nyx_string** %1475
  %1481 = getelementptr [17 x i8], [17 x i8]* @.str124, i32 0, i32 0
  %1482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1481, i64 16)
  %1483 = call %nyx_string* @nyx_string_concat(%nyx_string* %1480, %nyx_string* %1482)
  store %nyx_string* %1483, %nyx_string** %1475
  %1484 = alloca i64
  store i64 0, i64* %1484
  %1485 = getelementptr [5 x i8], [5 x i8]* @.str125, i32 0, i32 0
  %1486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1485, i64 4)
  %1487 = alloca %nyx_string*
  store %nyx_string* %1486, %nyx_string** %1487
  %1488 = getelementptr [3 x i8], [3 x i8]* @.str126, i32 0, i32 0
  %1489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1488, i64 2)
  %1490 = alloca %nyx_string*
  store %nyx_string* %1489, %nyx_string** %1490
  %1491 = call i8* @llvm.stacksave()
  br label %while_cond341
while_cond341:
  %1492 = load i64, i64* %1484
  %1493 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1494 = load { i64, i8* }*, { i64, i8* }** %1493
  %1495 = call i64 @nyx_array_length({ i64, i8* }* %1494)
  %1496 = icmp slt i64 %1492, %1495
  br i1 %1496, label %while_body342, label %while_end343
while_body342:
  call void @llvm.stackrestore(i8* %1491)
  %1497 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1498 = load { i64, i8* }*, { i64, i8* }** %1497
  %1499 = load i64, i64* %1484
  %1500 = call i64 @nyx_array_get({ i64, i8* }* %1498, i64 %1499)
  %1501 = inttoptr i64 %1500 to %nyx_string*
  %1502 = alloca %nyx_string*
  store %nyx_string* %1501, %nyx_string** %1502
  %1503 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1504 = load { i64, i8* }*, { i64, i8* }** %1503
  %1505 = load i64, i64* %1484
  %1506 = call i64 @nyx_array_get({ i64, i8* }* %1504, i64 %1505)
  %1507 = inttoptr i64 %1506 to %nyx_string*
  %1508 = alloca %nyx_string*
  store %nyx_string* %1507, %nyx_string** %1508
  %1509 = load %nyx_string*, %nyx_string** %1475
  %1510 = load %nyx_string*, %nyx_string** %1502
  %1511 = call %nyx_string* @nyx_string_concat(%nyx_string* %1509, %nyx_string* %1510)
  %1512 = load %nyx_string*, %nyx_string** %1487
  %1513 = call %nyx_string* @nyx_string_concat(%nyx_string* %1511, %nyx_string* %1512)
  %1514 = load %nyx_string*, %nyx_string** %1508
  %1515 = call %nyx_string* @nyx_string_concat(%nyx_string* %1513, %nyx_string* %1514)
  %1516 = load %nyx_string*, %nyx_string** %1490
  %1517 = call %nyx_string* @nyx_string_concat(%nyx_string* %1515, %nyx_string* %1516)
  store %nyx_string* %1517, %nyx_string** %1475
  %1518 = load i64, i64* %1484
  %1519 = add i64 %1518, 1
  store i64 %1519, i64* %1484
  br label %while_cond341
while_end343:
  br label %merge340
else339:
  br label %merge340
merge340:
  %1520 = getelementptr [9 x i8], [9 x i8]* @.str127, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1520, i64 8)
  %1522 = load %nyx_string*, %nyx_string** %1475
  %1523 = call i8* @nyx_string_to_cstr(%nyx_string* %1521)
  %1524 = call i8* @nyx_string_to_cstr(%nyx_string* %1522)
  %1525 = call i1 @nyx_write_file(i8* %1523, i8* %1524)
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
  %1526 = getelementptr [17 x i8], [17 x i8]* @.str128, i32 0, i32 0
  %1527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1526, i64 16)
  %1528 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1529 = call %nyx_string* @nyx_string_concat(%nyx_string* %1527, %nyx_string* %1528)
  %1530 = call i8* @nyx_string_to_cstr(%nyx_string* %1529)
  call void @nyx_print_string(i8* %1530)
  %1531 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1532 = alloca %nyx_string*
  store %nyx_string* %1531, %nyx_string** %1532
  %1533 = load %nyx_string*, %nyx_string** %1532
  %1534 = getelementptr [1 x i8], [1 x i8]* @.str129, i32 0, i32 0
  %1535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1534, i64 0)
  %1536 = call i1 @nyx_string_equals(%nyx_string* %1533, %nyx_string* %1535)
  br i1 %1536, label %then344, label %else345
then344:
  %1537 = getelementptr [32 x i8], [32 x i8]* @.str130, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1537, i64 31)
  %1539 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1540 = call %nyx_string* @nyx_string_concat(%nyx_string* %1538, %nyx_string* %1539)
  store %nyx_string* %1540, %nyx_string** %1532
  br label %merge346
else345:
  br label %merge346
merge346:
  %1541 = getelementptr [9 x i8], [9 x i8]* @.str131, i32 0, i32 0
  %1542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1541, i64 8)
  %1543 = call i8* @nyx_string_to_cstr(%nyx_string* %1542)
  %1544 = call i1 @nyx_file_exists(i8* %1543)
  br i1 %1544, label %then347, label %else348
then347:
  %1545 = getelementptr [9 x i8], [9 x i8]* @.str132, i32 0, i32 0
  %1546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1545, i64 8)
  %1547 = call i8* @nyx_string_to_cstr(%nyx_string* %1546)
  %1548 = call %nyx_string* @nyx_read_file(i8* %1547)
  %1549 = alloca %nyx_string*
  store %nyx_string* %1548, %nyx_string** %1549
  %1550 = load %nyx_string*, %nyx_string** %1549
  %1551 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1552 = getelementptr [3 x i8], [3 x i8]* @.str133, i32 0, i32 0
  %1553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1552, i64 2)
  %1554 = call %nyx_string* @nyx_string_concat(%nyx_string* %1551, %nyx_string* %1553)
  %1555 = call i1 @nyx_string_contains(%nyx_string* %1550, %nyx_string* %1554)
  br i1 %1555, label %then350, label %else351
then350:
  %1556 = getelementptr [12 x i8], [12 x i8]* @.str134, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1556, i64 11)
  %1558 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1559 = call %nyx_string* @nyx_string_concat(%nyx_string* %1557, %nyx_string* %1558)
  %1560 = getelementptr [27 x i8], [27 x i8]* @.str135, i32 0, i32 0
  %1561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1560, i64 26)
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1559, %nyx_string* %1561)
  %1563 = call i8* @nyx_string_to_cstr(%nyx_string* %1562)
  call void @nyx_print_string(i8* %1563)
  ret i1 1
else351:
  br label %merge352
merge352:
  br label %merge349
else348:
  br label %merge349
merge349:
  %1564 = getelementptr [10 x i8], [10 x i8]* @.str136, i32 0, i32 0
  %1565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1564, i64 9)
  %1566 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1567 = call %nyx_string* @nyx_string_concat(%nyx_string* %1565, %nyx_string* %1566)
  %1568 = alloca %nyx_string*
  store %nyx_string* %1567, %nyx_string** %1568
  %1569 = load %nyx_string*, %nyx_string** %1568
  %1570 = call i8* @nyx_string_to_cstr(%nyx_string* %1569)
  %1571 = call i1 @nyx_file_exists(i8* %1570)
  br i1 %1571, label %then353, label %else354
then353:
  %1572 = getelementptr [19 x i8], [19 x i8]* @.str137, i32 0, i32 0
  %1573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1572, i64 18)
  %1574 = load %nyx_string*, %nyx_string** %1568
  %1575 = call %nyx_string* @nyx_string_concat(%nyx_string* %1573, %nyx_string* %1574)
  %1576 = call i8* @nyx_string_to_cstr(%nyx_string* %1575)
  call void @nyx_print_string(i8* %1576)
  br label %merge355
else354:
  %1577 = getelementptr [13 x i8], [13 x i8]* @.str138, i32 0, i32 0
  %1578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1577, i64 12)
  %1579 = load %nyx_string*, %nyx_string** %1532
  %1580 = call %nyx_string* @nyx_string_concat(%nyx_string* %1578, %nyx_string* %1579)
  %1581 = call i8* @nyx_string_to_cstr(%nyx_string* %1580)
  call void @nyx_print_string(i8* %1581)
  %1582 = getelementptr [43 x i8], [43 x i8]* @.str139, i32 0, i32 0
  %1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1582, i64 42)
  %1584 = load %nyx_string*, %nyx_string** %1532
  %1585 = call %nyx_string* @nyx_string_concat(%nyx_string* %1583, %nyx_string* %1584)
  %1586 = getelementptr [2 x i8], [2 x i8]* @.str140, i32 0, i32 0
  %1587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1586, i64 1)
  %1588 = call %nyx_string* @nyx_string_concat(%nyx_string* %1585, %nyx_string* %1587)
  %1589 = load %nyx_string*, %nyx_string** %1568
  %1590 = call %nyx_string* @nyx_string_concat(%nyx_string* %1588, %nyx_string* %1589)
  %1591 = getelementptr [13 x i8], [13 x i8]* @.str141, i32 0, i32 0
  %1592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1591, i64 12)
  %1593 = call %nyx_string* @nyx_string_concat(%nyx_string* %1590, %nyx_string* %1592)
  %1594 = alloca %nyx_string*
  store %nyx_string* %1593, %nyx_string** %1594
  %1595 = load %nyx_string*, %nyx_string** %1594
  %1596 = call i8* @nyx_string_to_cstr(%nyx_string* %1595)
  %1597 = call i64 @nyx_exec_code(i8* %1596)
  %1598 = alloca i64
  store i64 %1597, i64* %1598
  %1599 = load i64, i64* %1598
  %1600 = icmp ne i64 %1599, 0
  br i1 %1600, label %then356, label %else357
then356:
  %1601 = getelementptr [26 x i8], [26 x i8]* @.str142, i32 0, i32 0
  %1602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1601, i64 25)
  %1603 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1604 = call %nyx_string* @nyx_string_concat(%nyx_string* %1602, %nyx_string* %1603)
  %1605 = getelementptr [7 x i8], [7 x i8]* @.str143, i32 0, i32 0
  %1606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1605, i64 6)
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1604, %nyx_string* %1606)
  %1608 = load %nyx_string*, %nyx_string** %1532
  %1609 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1608)
  %1610 = call i8* @nyx_string_to_cstr(%nyx_string* %1609)
  call void @nyx_print_string(i8* %1610)
  ret i1 0
else357:
  br label %merge358
merge358:
  br label %merge355
merge355:
  %1611 = getelementptr [9 x i8], [9 x i8]* @.str144, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1611, i64 8)
  %1613 = call i8* @nyx_string_to_cstr(%nyx_string* %1612)
  %1614 = call i1 @nyx_file_exists(i8* %1613)
  br i1 %1614, label %then359, label %else360
then359:
  %1615 = getelementptr [9 x i8], [9 x i8]* @.str145, i32 0, i32 0
  %1616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1615, i64 8)
  %1617 = call i8* @nyx_string_to_cstr(%nyx_string* %1616)
  %1618 = call %nyx_string* @nyx_read_file(i8* %1617)
  %1619 = alloca %nyx_string*
  store %nyx_string* %1618, %nyx_string** %1619
  %1620 = load %nyx_string*, %nyx_string** %1619
  %1621 = alloca %nyx_string*
  store %nyx_string* %1620, %nyx_string** %1621
  %1622 = load %nyx_string*, %nyx_string** %1619
  %1623 = getelementptr [15 x i8], [15 x i8]* @.str146, i32 0, i32 0
  %1624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1623, i64 14)
  %1625 = call i1 @nyx_string_contains(%nyx_string* %1622, %nyx_string* %1624)
  %1626 = xor i1 %1625, true
  br i1 %1626, label %then362, label %else363
then362:
  %1627 = load %nyx_string*, %nyx_string** %1619
  %1628 = getelementptr [17 x i8], [17 x i8]* @.str147, i32 0, i32 0
  %1629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1628, i64 16)
  %1630 = call %nyx_string* @nyx_string_concat(%nyx_string* %1627, %nyx_string* %1629)
  %1631 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1632 = call %nyx_string* @nyx_string_concat(%nyx_string* %1630, %nyx_string* %1631)
  %1633 = getelementptr [8 x i8], [8 x i8]* @.str148, i32 0, i32 0
  %1634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1633, i64 7)
  %1635 = call %nyx_string* @nyx_string_concat(%nyx_string* %1632, %nyx_string* %1634)
  store %nyx_string* %1635, %nyx_string** %1621
  br label %merge364
else363:
  %1636 = load %nyx_string*, %nyx_string** %1619
  %1637 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1638 = call %nyx_string* @nyx_string_concat(%nyx_string* %1636, %nyx_string* %1637)
  %1639 = getelementptr [8 x i8], [8 x i8]* @.str149, i32 0, i32 0
  %1640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1639, i64 7)
  %1641 = call %nyx_string* @nyx_string_concat(%nyx_string* %1638, %nyx_string* %1640)
  store %nyx_string* %1641, %nyx_string** %1621
  br label %merge364
merge364:
  %1642 = getelementptr [9 x i8], [9 x i8]* @.str150, i32 0, i32 0
  %1643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1642, i64 8)
  %1644 = load %nyx_string*, %nyx_string** %1621
  %1645 = call i8* @nyx_string_to_cstr(%nyx_string* %1643)
  %1646 = call i8* @nyx_string_to_cstr(%nyx_string* %1644)
  %1647 = call i1 @nyx_write_file(i8* %1645, i8* %1646)
  %1648 = getelementptr [19 x i8], [19 x i8]* @.str151, i32 0, i32 0
  %1649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1648, i64 18)
  %1650 = call i8* @nyx_string_to_cstr(%nyx_string* %1649)
  call void @nyx_print_string(i8* %1650)
  br label %merge361
else360:
  br label %merge361
merge361:
  %1651 = getelementptr [10 x i8], [10 x i8]* @.str152, i32 0, i32 0
  %1652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1651, i64 9)
  %1653 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1654 = call %nyx_string* @nyx_string_concat(%nyx_string* %1652, %nyx_string* %1653)
  %1655 = getelementptr [9 x i8], [9 x i8]* @.str153, i32 0, i32 0
  %1656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1655, i64 8)
  %1657 = call %nyx_string* @nyx_string_concat(%nyx_string* %1654, %nyx_string* %1656)
  %1658 = call i8* @nyx_string_to_cstr(%nyx_string* %1657)
  call void @nyx_print_string(i8* %1658)
  ret i1 1
}

define internal %nyx_string* @resolve_seed_home(
) {
  %1659 = getelementptr [9 x i8], [9 x i8]* @.str154, i32 0, i32 0
  %1660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1659, i64 8)
  %1661 = call i8* @nyx_string_to_cstr(%nyx_string* %1660)
  %1662 = call %nyx_string* @nyx_getenv(i8* %1661)
  %1663 = alloca %nyx_string*
  store %nyx_string* %1662, %nyx_string** %1663
  %1664 = load %nyx_string*, %nyx_string** %1663
  %1665 = getelementptr [1 x i8], [1 x i8]* @.str155, i32 0, i32 0
  %1666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1665, i64 0)
  %1667 = call i1 @nyx_string_equals(%nyx_string* %1664, %nyx_string* %1666)
  %1668 = xor i1 %1667, true
  br i1 %1668, label %then365, label %else366
then365:
  %1669 = load %nyx_string*, %nyx_string** %1663
  ret %nyx_string* %1669
else366:
  br label %merge367
merge367:
  %1670 = getelementptr [5 x i8], [5 x i8]* @.str156, i32 0, i32 0
  %1671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1670, i64 4)
  %1672 = call i8* @nyx_string_to_cstr(%nyx_string* %1671)
  %1673 = call %nyx_string* @nyx_getenv(i8* %1672)
  %1674 = alloca %nyx_string*
  store %nyx_string* %1673, %nyx_string** %1674
  %1675 = load %nyx_string*, %nyx_string** %1674
  %1676 = getelementptr [1 x i8], [1 x i8]* @.str157, i32 0, i32 0
  %1677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1676, i64 0)
  %1678 = call i1 @nyx_string_equals(%nyx_string* %1675, %nyx_string* %1677)
  %1679 = xor i1 %1678, true
  br i1 %1679, label %then368, label %else369
then368:
  %1680 = load %nyx_string*, %nyx_string** %1674
  %1681 = getelementptr [6 x i8], [6 x i8]* @.str158, i32 0, i32 0
  %1682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1681, i64 5)
  %1683 = call %nyx_string* @nyx_string_concat(%nyx_string* %1680, %nyx_string* %1682)
  %1684 = alloca %nyx_string*
  store %nyx_string* %1683, %nyx_string** %1684
  %1685 = load %nyx_string*, %nyx_string** %1684
  %1686 = getelementptr [11 x i8], [11 x i8]* @.str159, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1686, i64 10)
  %1688 = call %nyx_string* @nyx_string_concat(%nyx_string* %1685, %nyx_string* %1687)
  %1689 = call i8* @nyx_string_to_cstr(%nyx_string* %1688)
  %1690 = call i1 @nyx_file_exists(i8* %1689)
  br i1 %1690, label %then371, label %else372
then371:
  %1691 = load %nyx_string*, %nyx_string** %1684
  ret %nyx_string* %1691
else372:
  br label %merge373
merge373:
  br label %merge370
else369:
  br label %merge370
merge370:
  %1692 = getelementptr [14 x i8], [14 x i8]* @.str160, i32 0, i32 0
  %1693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1692, i64 13)
  %1694 = call i8* @nyx_string_to_cstr(%nyx_string* %1693)
  %1695 = call i1 @nyx_file_exists(i8* %1694)
  br i1 %1695, label %then374, label %else375
then374:
  %1696 = getelementptr [2 x i8], [2 x i8]* @.str161, i32 0, i32 0
  %1697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1696, i64 1)
  ret %nyx_string* %1697
else375:
  br label %merge376
merge376:
  %1698 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1698, i64 0)
  ret %nyx_string* %1699
}

define internal %nyx_string* @seed_stamp(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1700 = getelementptr [19 x i8], [19 x i8]* @.str163, i32 0, i32 0
  %1701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1700, i64 18)
  %1702 = call %nyx_string* @toolchain_version()
  %1703 = call %nyx_string* @nyx_string_concat(%nyx_string* %1701, %nyx_string* %1702)
  %1704 = getelementptr [12 x i8], [12 x i8]* @.str164, i32 0, i32 0
  %1705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1704, i64 11)
  %1706 = call %nyx_string* @nyx_string_concat(%nyx_string* %1703, %nyx_string* %1705)
  %1707 = load %nyx_string*, %nyx_string** %lang.ptr
  %1708 = call %nyx_string* @nyx_string_concat(%nyx_string* %1706, %nyx_string* %1707)
  %1709 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %1710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1709, i64 5)
  %1711 = call %nyx_string* @nyx_string_concat(%nyx_string* %1708, %nyx_string* %1710)
  ret %nyx_string* %1711
}

define internal %nyx_string* @project_lang(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1712 = load %nyx_string*, %nyx_string** %dir.ptr
  %1713 = getelementptr [11 x i8], [11 x i8]* @.str166, i32 0, i32 0
  %1714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1713, i64 10)
  %1715 = call %nyx_string* @nyx_string_concat(%nyx_string* %1712, %nyx_string* %1714)
  %1716 = alloca %nyx_string*
  store %nyx_string* %1715, %nyx_string** %1716
  %1717 = load %nyx_string*, %nyx_string** %1716
  %1718 = call i8* @nyx_string_to_cstr(%nyx_string* %1717)
  %1719 = call i1 @nyx_file_exists(i8* %1718)
  %1720 = icmp eq i1 %1719, 0
  br i1 %1720, label %then377, label %else378
then377:
  %1721 = getelementptr [3 x i8], [3 x i8]* @.str167, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1721, i64 2)
  ret %nyx_string* %1722
else378:
  br label %merge379
merge379:
  %1723 = load %nyx_string*, %nyx_string** %1716
  %1724 = call i8* @nyx_string_to_cstr(%nyx_string* %1723)
  %1725 = call %nyx_string* @nyx_read_file(i8* %1724)
  %1726 = alloca %nyx_string*
  store %nyx_string* %1725, %nyx_string** %1726
  %1727 = getelementptr [11 x i8], [11 x i8]* @.str168, i32 0, i32 0
  %1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1727, i64 10)
  %1729 = alloca %nyx_string*
  store %nyx_string* %1728, %nyx_string** %1729
  %1730 = load %nyx_string*, %nyx_string** %1726
  %1731 = load %nyx_string*, %nyx_string** %1729
  %1732 = call i64 @nyx_string_index_of(%nyx_string* %1730, %nyx_string* %1731)
  %1733 = alloca i64
  store i64 %1732, i64* %1733
  %1734 = load i64, i64* %1733
  %1735 = icmp slt i64 %1734, 0
  br i1 %1735, label %then380, label %else381
then380:
  %1736 = getelementptr [3 x i8], [3 x i8]* @.str169, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1736, i64 2)
  ret %nyx_string* %1737
else381:
  br label %merge382
merge382:
  %1738 = load i64, i64* %1733
  %1739 = load %nyx_string*, %nyx_string** %1729
  %1740 = call i64 @nyx_string_byte_length(%nyx_string* %1739)
  %1741 = add i64 %1738, %1740
  %1742 = alloca i64
  store i64 %1741, i64* %1742
  %1743 = load i64, i64* %1742
  %1744 = add i64 %1743, 2
  %1745 = load %nyx_string*, %nyx_string** %1726
  %1746 = call i64 @nyx_string_byte_length(%nyx_string* %1745)
  %1747 = icmp sgt i64 %1744, %1746
  br i1 %1747, label %then383, label %else384
then383:
  %1748 = getelementptr [3 x i8], [3 x i8]* @.str170, i32 0, i32 0
  %1749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1748, i64 2)
  ret %nyx_string* %1749
else384:
  br label %merge385
merge385:
  %1750 = load %nyx_string*, %nyx_string** %1726
  %1751 = load i64, i64* %1742
  %1752 = load i64, i64* %1742
  %1753 = add i64 %1752, 2
  %1754 = call %nyx_string* @nyx_string_substring(%nyx_string* %1750, i64 %1751, i64 %1753)
  %1755 = alloca %nyx_string*
  store %nyx_string* %1754, %nyx_string** %1755
  %1756 = load %nyx_string*, %nyx_string** %1755
  %1757 = getelementptr [3 x i8], [3 x i8]* @.str171, i32 0, i32 0
  %1758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1757, i64 2)
  %1759 = call i1 @nyx_string_equals(%nyx_string* %1756, %nyx_string* %1758)
  br i1 %1759, label %then386, label %else387
then386:
  %1760 = getelementptr [3 x i8], [3 x i8]* @.str172, i32 0, i32 0
  %1761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1760, i64 2)
  ret %nyx_string* %1761
else387:
  br label %merge388
merge388:
  %1762 = getelementptr [3 x i8], [3 x i8]* @.str173, i32 0, i32 0
  %1763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1762, i64 2)
  ret %nyx_string* %1763
}

define internal %nyx_string* @seed_body(
%nyx_string* %content.param, %nyx_string* %lang.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1764 = load %nyx_string*, %nyx_string** %content.ptr
  %1765 = alloca %nyx_string*
  store %nyx_string* %1764, %nyx_string** %1765
  %1766 = load %nyx_string*, %nyx_string** %1765
  %1767 = call i64 @nyx_string_byte_length(%nyx_string* %1766)
  %1768 = alloca i64
  store i64 %1767, i64* %1768
  %1769 = alloca i1
  store i1 1, i1* %1769
  %1770 = load i64, i64* %1768
  %1771 = icmp sgt i64 %1770, 0
  br i1 %1771, label %then389, label %else390
then389:
  %1772 = load %nyx_string*, %nyx_string** %1765
  %1773 = load i64, i64* %1768
  %1774 = sub i64 %1773, 1
  %1775 = load i64, i64* %1768
  %1776 = call %nyx_string* @nyx_string_substring(%nyx_string* %1772, i64 %1774, i64 %1775)
  %1777 = getelementptr [2 x i8], [2 x i8]* @.str174, i32 0, i32 0
  %1778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1777, i64 1)
  %1779 = call i1 @nyx_string_equals(%nyx_string* %1776, %nyx_string* %1778)
  br i1 %1779, label %then392, label %else393
then392:
  store i1 0, i1* %1769
  br label %merge394
else393:
  br label %merge394
merge394:
  br label %merge391
else390:
  br label %merge391
merge391:
  %1780 = load i1, i1* %1769
  br i1 %1780, label %then395, label %else396
then395:
  %1781 = load %nyx_string*, %nyx_string** %1765
  %1782 = getelementptr [2 x i8], [2 x i8]* @.str175, i32 0, i32 0
  %1783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1782, i64 1)
  %1784 = call %nyx_string* @nyx_string_concat(%nyx_string* %1781, %nyx_string* %1783)
  store %nyx_string* %1784, %nyx_string** %1765
  br label %merge397
else396:
  br label %merge397
merge397:
  %1785 = load %nyx_string*, %nyx_string** %1765
  %1786 = getelementptr [2 x i8], [2 x i8]* @.str176, i32 0, i32 0
  %1787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1786, i64 1)
  %1788 = call %nyx_string* @nyx_string_concat(%nyx_string* %1785, %nyx_string* %1787)
  %1789 = load %nyx_string*, %nyx_string** %lang.ptr
  %1790 = call %nyx_string* @seed_stamp(%nyx_string* %1789)
  %1791 = call %nyx_string* @nyx_string_concat(%nyx_string* %1788, %nyx_string* %1790)
  ret %nyx_string* %1791
}

define internal i64 @seed_file(
%nyx_string* %dst.param, %nyx_string* %content.param, %nyx_string* %lang.param) {
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1792 = load %nyx_string*, %nyx_string** %dst.ptr
  %1793 = load %nyx_string*, %nyx_string** %content.ptr
  %1794 = load %nyx_string*, %nyx_string** %lang.ptr
  %1795 = call %nyx_string* @seed_body(%nyx_string* %1793, %nyx_string* %1794)
  %1796 = call i8* @nyx_string_to_cstr(%nyx_string* %1792)
  %1797 = call i8* @nyx_string_to_cstr(%nyx_string* %1795)
  %1798 = call i1 @nyx_write_file(i8* %1796, i8* %1797)
  ret i64 0
}

define internal i64 @seed_gitignore(
%nyx_string* %dir.param, %nyx_string* %project_name.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %project_name.ptr = alloca %nyx_string*
  store %nyx_string* %project_name.param, %nyx_string** %project_name.ptr
  %1799 = call %nyx_string* @resolve_seed_home()
  %1800 = alloca %nyx_string*
  store %nyx_string* %1799, %nyx_string** %1800
  %1801 = load %nyx_string*, %nyx_string** %1800
  %1802 = getelementptr [1 x i8], [1 x i8]* @.str177, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1802, i64 0)
  %1804 = call i1 @nyx_string_equals(%nyx_string* %1801, %nyx_string* %1803)
  br i1 %1804, label %then398, label %else399
then398:
  ret i64 0
else399:
  br label %merge400
merge400:
  %1805 = load %nyx_string*, %nyx_string** %1800
  %1806 = getelementptr [21 x i8], [21 x i8]* @.str178, i32 0, i32 0
  %1807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1806, i64 20)
  %1808 = call %nyx_string* @nyx_string_concat(%nyx_string* %1805, %nyx_string* %1807)
  %1809 = alloca %nyx_string*
  store %nyx_string* %1808, %nyx_string** %1809
  %1810 = load %nyx_string*, %nyx_string** %1809
  %1811 = call i8* @nyx_string_to_cstr(%nyx_string* %1810)
  %1812 = call i1 @nyx_file_exists(i8* %1811)
  %1813 = icmp eq i1 %1812, 0
  br i1 %1813, label %then401, label %else402
then401:
  ret i64 0
else402:
  br label %merge403
merge403:
  %1814 = load %nyx_string*, %nyx_string** %dir.ptr
  %1815 = getelementptr [12 x i8], [12 x i8]* @.str179, i32 0, i32 0
  %1816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1815, i64 11)
  %1817 = call %nyx_string* @nyx_string_concat(%nyx_string* %1814, %nyx_string* %1816)
  %1818 = call i8* @nyx_string_to_cstr(%nyx_string* %1817)
  %1819 = call i1 @nyx_file_exists(i8* %1818)
  br i1 %1819, label %then404, label %else405
then404:
  ret i64 0
else405:
  br label %merge406
merge406:
  %1820 = load %nyx_string*, %nyx_string** %1809
  %1821 = call i8* @nyx_string_to_cstr(%nyx_string* %1820)
  %1822 = call %nyx_string* @nyx_read_file(i8* %1821)
  %1823 = alloca %nyx_string*
  store %nyx_string* %1822, %nyx_string** %1823
  %1824 = load %nyx_string*, %nyx_string** %dir.ptr
  %1825 = getelementptr [12 x i8], [12 x i8]* @.str180, i32 0, i32 0
  %1826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1825, i64 11)
  %1827 = call %nyx_string* @nyx_string_concat(%nyx_string* %1824, %nyx_string* %1826)
  %1828 = load %nyx_string*, %nyx_string** %1823
  %1829 = getelementptr [11 x i8], [11 x i8]* @.str181, i32 0, i32 0
  %1830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1829, i64 10)
  %1831 = load %nyx_string*, %nyx_string** %project_name.ptr
  %1832 = call %nyx_string* @nyx_string_replace(%nyx_string* %1828, %nyx_string* %1830, %nyx_string* %1831)
  %1833 = call i8* @nyx_string_to_cstr(%nyx_string* %1827)
  %1834 = call i8* @nyx_string_to_cstr(%nyx_string* %1832)
  %1835 = call i1 @nyx_write_file(i8* %1833, i8* %1834)
  ret i64 0
}

define internal i1 @validate_agents(
%nyx_string* %agents.param) {
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %1836 = load %nyx_string*, %nyx_string** %agents.ptr
  %1837 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1837, i64 0)
  %1839 = call i1 @nyx_string_equals(%nyx_string* %1836, %nyx_string* %1838)
  br i1 %1839, label %then407, label %else408
then407:
  ret i1 1
else408:
  br label %merge409
merge409:
  %1840 = load %nyx_string*, %nyx_string** %agents.ptr
  %1841 = getelementptr [2 x i8], [2 x i8]* @.str183, i32 0, i32 0
  %1842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1841, i64 1)
  %1843 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1840, %nyx_string* %1842)
  %1844 = alloca { i64, i8* }*
  store { i64, i8* }* %1843, { i64, i8* }** %1844
  %1845 = alloca i64
  store i64 0, i64* %1845
  %1846 = getelementptr [7 x i8], [7 x i8]* @.str184, i32 0, i32 0
  %1847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1846, i64 6)
  %1848 = alloca %nyx_string*
  store %nyx_string* %1847, %nyx_string** %1848
  %1849 = getelementptr [7 x i8], [7 x i8]* @.str185, i32 0, i32 0
  %1850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1849, i64 6)
  %1851 = alloca %nyx_string*
  store %nyx_string* %1850, %nyx_string** %1851
  %1852 = getelementptr [8 x i8], [8 x i8]* @.str186, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1852, i64 7)
  %1854 = alloca %nyx_string*
  store %nyx_string* %1853, %nyx_string** %1854
  %1855 = getelementptr [28 x i8], [28 x i8]* @.str187, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1855, i64 27)
  %1857 = alloca %nyx_string*
  store %nyx_string* %1856, %nyx_string** %1857
  %1858 = getelementptr [46 x i8], [46 x i8]* @.str188, i32 0, i32 0
  %1859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1858, i64 45)
  %1860 = alloca %nyx_string*
  store %nyx_string* %1859, %nyx_string** %1860
  %1861 = getelementptr [72 x i8], [72 x i8]* @.str189, i32 0, i32 0
  %1862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1861, i64 71)
  %1863 = alloca %nyx_string*
  store %nyx_string* %1862, %nyx_string** %1863
  %1864 = call i8* @llvm.stacksave()
  br label %while_cond410
while_cond410:
  %1865 = load i64, i64* %1845
  %1866 = load { i64, i8* }*, { i64, i8* }** %1844
  %1867 = call i64 @nyx_array_length({ i64, i8* }* %1866)
  %1868 = icmp slt i64 %1865, %1867
  br i1 %1868, label %while_body411, label %while_end412
while_body411:
  call void @llvm.stackrestore(i8* %1864)
  %1869 = load { i64, i8* }*, { i64, i8* }** %1844
  %1870 = load i64, i64* %1845
  %1871 = call i64 @nyx_array_get_checked({ i64, i8* }* %1869, i64 %1870, i64 2)
  %1872 = inttoptr i64 %1871 to %nyx_string*
  %1873 = alloca %nyx_string*
  store %nyx_string* %1872, %nyx_string** %1873
  %1874 = load %nyx_string*, %nyx_string** %1873
  %1875 = call %nyx_string* @nyx_string_trim(%nyx_string* %1874)
  %1876 = alloca %nyx_string*
  store %nyx_string* %1875, %nyx_string** %1876
  %1877 = alloca i1
  store i1 false, i1* %1877
  %1878 = alloca i1
  store i1 false, i1* %1878
  %1879 = load %nyx_string*, %nyx_string** %1876
  %1880 = load %nyx_string*, %nyx_string** %1848
  %1881 = call i1 @nyx_string_equals(%nyx_string* %1879, %nyx_string* %1880)
  %1882 = xor i1 %1881, true
  br i1 %1882, label %sc_and_rhs413, label %sc_and_end414
sc_and_rhs413:
  %1883 = load %nyx_string*, %nyx_string** %1876
  %1884 = load %nyx_string*, %nyx_string** %1851
  %1885 = call i1 @nyx_string_equals(%nyx_string* %1883, %nyx_string* %1884)
  %1886 = xor i1 %1885, true
  store i1 %1886, i1* %1878
  br label %sc_and_end414
sc_and_end414:
  %1887 = load i1, i1* %1878
  br i1 %1887, label %sc_and_rhs415, label %sc_and_end416
sc_and_rhs415:
  %1888 = load %nyx_string*, %nyx_string** %1876
  %1889 = load %nyx_string*, %nyx_string** %1854
  %1890 = call i1 @nyx_string_equals(%nyx_string* %1888, %nyx_string* %1889)
  %1891 = xor i1 %1890, true
  store i1 %1891, i1* %1877
  br label %sc_and_end416
sc_and_end416:
  %1892 = load i1, i1* %1877
  br i1 %1892, label %then417, label %else418
then417:
  %1893 = load %nyx_string*, %nyx_string** %1857
  %1894 = load %nyx_string*, %nyx_string** %1876
  %1895 = call %nyx_string* @nyx_string_concat(%nyx_string* %1893, %nyx_string* %1894)
  %1896 = load %nyx_string*, %nyx_string** %1860
  %1897 = call %nyx_string* @nyx_string_concat(%nyx_string* %1895, %nyx_string* %1896)
  %1898 = call i8* @nyx_string_to_cstr(%nyx_string* %1897)
  call void @nyx_print_string(i8* %1898)
  %1899 = load %nyx_string*, %nyx_string** %1863
  %1900 = call i8* @nyx_string_to_cstr(%nyx_string* %1899)
  call void @nyx_print_string(i8* %1900)
  ret i1 0
else418:
  br label %merge419
merge419:
  %1901 = load i64, i64* %1845
  %1902 = add i64 %1901, 1
  store i64 %1902, i64* %1845
  br label %while_cond410
while_end412:
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
  %1903 = load %nyx_string*, %nyx_string** %agents.ptr
  %1904 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %1905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1904, i64 0)
  %1906 = call i1 @nyx_string_equals(%nyx_string* %1903, %nyx_string* %1905)
  br i1 %1906, label %then420, label %else421
then420:
  ret i64 0
else421:
  br label %merge422
merge422:
  %1907 = call %nyx_string* @resolve_seed_home()
  %1908 = alloca %nyx_string*
  store %nyx_string* %1907, %nyx_string** %1908
  %1909 = load %nyx_string*, %nyx_string** %1908
  %1910 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %1911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1910, i64 0)
  %1912 = call i1 @nyx_string_equals(%nyx_string* %1909, %nyx_string* %1911)
  br i1 %1912, label %then423, label %else424
then423:
  ret i64 0
else424:
  br label %merge425
merge425:
  %1913 = load %nyx_string*, %nyx_string** %1908
  %1914 = getelementptr [20 x i8], [20 x i8]* @.str192, i32 0, i32 0
  %1915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1914, i64 19)
  %1916 = call %nyx_string* @nyx_string_concat(%nyx_string* %1913, %nyx_string* %1915)
  %1917 = alloca %nyx_string*
  store %nyx_string* %1916, %nyx_string** %1917
  %1918 = load %nyx_string*, %nyx_string** %agents.ptr
  %1919 = getelementptr [2 x i8], [2 x i8]* @.str193, i32 0, i32 0
  %1920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1919, i64 1)
  %1921 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1918, %nyx_string* %1920)
  %1922 = alloca { i64, i8* }*
  store { i64, i8* }* %1921, { i64, i8* }** %1922
  %1923 = alloca i64
  store i64 0, i64* %1923
  %1924 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1924, i64 0)
  %1926 = alloca %nyx_string*
  store %nyx_string* %1925, %nyx_string** %1926
  %1927 = getelementptr [2 x i8], [2 x i8]* @.str195, i32 0, i32 0
  %1928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1927, i64 1)
  %1929 = alloca %nyx_string*
  store %nyx_string* %1928, %nyx_string** %1929
  %1930 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %1931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1930, i64 1)
  %1932 = alloca %nyx_string*
  store %nyx_string* %1931, %nyx_string** %1932
  %1933 = getelementptr [4 x i8], [4 x i8]* @.str197, i32 0, i32 0
  %1934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1933, i64 3)
  %1935 = alloca %nyx_string*
  store %nyx_string* %1934, %nyx_string** %1935
  %1936 = getelementptr [7 x i8], [7 x i8]* @.str198, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1936, i64 6)
  %1938 = alloca %nyx_string*
  store %nyx_string* %1937, %nyx_string** %1938
  %1939 = getelementptr [11 x i8], [11 x i8]* @.str199, i32 0, i32 0
  %1940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1939, i64 10)
  %1941 = alloca %nyx_string*
  store %nyx_string* %1940, %nyx_string** %1941
  %1942 = getelementptr [7 x i8], [7 x i8]* @.str200, i32 0, i32 0
  %1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1942, i64 6)
  %1944 = alloca %nyx_string*
  store %nyx_string* %1943, %nyx_string** %1944
  %1945 = getelementptr [14 x i8], [14 x i8]* @.str201, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1945, i64 13)
  %1947 = alloca %nyx_string*
  store %nyx_string* %1946, %nyx_string** %1947
  %1948 = getelementptr [8 x i8], [8 x i8]* @.str202, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1948, i64 7)
  %1950 = alloca %nyx_string*
  store %nyx_string* %1949, %nyx_string** %1950
  %1951 = getelementptr [11 x i8], [11 x i8]* @.str203, i32 0, i32 0
  %1952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1951, i64 10)
  %1953 = alloca %nyx_string*
  store %nyx_string* %1952, %nyx_string** %1953
  %1954 = getelementptr [10 x i8], [10 x i8]* @.str204, i32 0, i32 0
  %1955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1954, i64 9)
  %1956 = alloca %nyx_string*
  store %nyx_string* %1955, %nyx_string** %1956
  %1957 = getelementptr [33 x i8], [33 x i8]* @.str205, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1957, i64 32)
  %1959 = alloca %nyx_string*
  store %nyx_string* %1958, %nyx_string** %1959
  %1960 = getelementptr [44 x i8], [44 x i8]* @.str206, i32 0, i32 0
  %1961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1960, i64 43)
  %1962 = alloca %nyx_string*
  store %nyx_string* %1961, %nyx_string** %1962
  %1963 = getelementptr [4 x i8], [4 x i8]* @.str207, i32 0, i32 0
  %1964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1963, i64 3)
  %1965 = alloca %nyx_string*
  store %nyx_string* %1964, %nyx_string** %1965
  %1966 = getelementptr [20 x i8], [20 x i8]* @.str208, i32 0, i32 0
  %1967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %1966, i64 19)
  %1968 = alloca %nyx_string*
  store %nyx_string* %1967, %nyx_string** %1968
  %1969 = call i8* @llvm.stacksave()
  br label %while_cond426
while_cond426:
  %1970 = load i64, i64* %1923
  %1971 = load { i64, i8* }*, { i64, i8* }** %1922
  %1972 = call i64 @nyx_array_length({ i64, i8* }* %1971)
  %1973 = icmp slt i64 %1970, %1972
  br i1 %1973, label %while_body427, label %while_end428
while_body427:
  call void @llvm.stackrestore(i8* %1969)
  %1974 = load { i64, i8* }*, { i64, i8* }** %1922
  %1975 = load i64, i64* %1923
  %1976 = call i64 @nyx_array_get_checked({ i64, i8* }* %1974, i64 %1975, i64 2)
  %1977 = inttoptr i64 %1976 to %nyx_string*
  %1978 = alloca %nyx_string*
  store %nyx_string* %1977, %nyx_string** %1978
  %1979 = load %nyx_string*, %nyx_string** %1978
  %1980 = call %nyx_string* @nyx_string_trim(%nyx_string* %1979)
  %1981 = alloca %nyx_string*
  store %nyx_string* %1980, %nyx_string** %1981
  %1982 = load %nyx_string*, %nyx_string** %1981
  %1983 = load %nyx_string*, %nyx_string** %1926
  %1984 = call i1 @nyx_string_equals(%nyx_string* %1982, %nyx_string* %1983)
  %1985 = xor i1 %1984, true
  br i1 %1985, label %then429, label %else430
then429:
  %1986 = load %nyx_string*, %nyx_string** %1917
  %1987 = load %nyx_string*, %nyx_string** %1929
  %1988 = call %nyx_string* @nyx_string_concat(%nyx_string* %1986, %nyx_string* %1987)
  %1989 = load %nyx_string*, %nyx_string** %1981
  %1990 = call %nyx_string* @nyx_string_concat(%nyx_string* %1988, %nyx_string* %1989)
  %1991 = load %nyx_string*, %nyx_string** %1932
  %1992 = call %nyx_string* @nyx_string_concat(%nyx_string* %1990, %nyx_string* %1991)
  %1993 = load %nyx_string*, %nyx_string** %lang.ptr
  %1994 = call %nyx_string* @nyx_string_concat(%nyx_string* %1992, %nyx_string* %1993)
  %1995 = load %nyx_string*, %nyx_string** %1935
  %1996 = call %nyx_string* @nyx_string_concat(%nyx_string* %1994, %nyx_string* %1995)
  %1997 = alloca %nyx_string*
  store %nyx_string* %1996, %nyx_string** %1997
  %1998 = load %nyx_string*, %nyx_string** %1997
  %1999 = call i8* @nyx_string_to_cstr(%nyx_string* %1998)
  %2000 = call i1 @nyx_file_exists(i8* %1999)
  br i1 %2000, label %then432, label %else433
then432:
  %2001 = load %nyx_string*, %nyx_string** %1997
  %2002 = call i8* @nyx_string_to_cstr(%nyx_string* %2001)
  %2003 = call %nyx_string* @nyx_read_file(i8* %2002)
  %2004 = alloca %nyx_string*
  store %nyx_string* %2003, %nyx_string** %2004
  %2005 = load %nyx_string*, %nyx_string** %1981
  %2006 = load %nyx_string*, %nyx_string** %1938
  %2007 = call i1 @nyx_string_equals(%nyx_string* %2005, %nyx_string* %2006)
  br i1 %2007, label %then435, label %else436
then435:
  %2008 = load %nyx_string*, %nyx_string** %dir.ptr
  %2009 = load %nyx_string*, %nyx_string** %1941
  %2010 = call %nyx_string* @nyx_string_concat(%nyx_string* %2008, %nyx_string* %2009)
  %2011 = load %nyx_string*, %nyx_string** %2004
  %2012 = load %nyx_string*, %nyx_string** %lang.ptr
  %2013 = call i64 @seed_file(%nyx_string* %2010, %nyx_string* %2011, %nyx_string* %2012)
  br label %merge437
else436:
  br label %merge437
merge437:
  %2014 = load %nyx_string*, %nyx_string** %1981
  %2015 = load %nyx_string*, %nyx_string** %1944
  %2016 = call i1 @nyx_string_equals(%nyx_string* %2014, %nyx_string* %2015)
  br i1 %2016, label %then438, label %else439
then438:
  %2017 = load %nyx_string*, %nyx_string** %dir.ptr
  %2018 = load %nyx_string*, %nyx_string** %1947
  %2019 = call %nyx_string* @nyx_string_concat(%nyx_string* %2017, %nyx_string* %2018)
  %2020 = load %nyx_string*, %nyx_string** %2004
  %2021 = load %nyx_string*, %nyx_string** %lang.ptr
  %2022 = call i64 @seed_file(%nyx_string* %2019, %nyx_string* %2020, %nyx_string* %2021)
  br label %merge440
else439:
  br label %merge440
merge440:
  %2023 = load %nyx_string*, %nyx_string** %1981
  %2024 = load %nyx_string*, %nyx_string** %1950
  %2025 = call i1 @nyx_string_equals(%nyx_string* %2023, %nyx_string* %2024)
  br i1 %2025, label %then441, label %else442
then441:
  %2026 = load %nyx_string*, %nyx_string** %1953
  %2027 = load %nyx_string*, %nyx_string** %dir.ptr
  %2028 = call %nyx_string* @nyx_string_concat(%nyx_string* %2026, %nyx_string* %2027)
  %2029 = load %nyx_string*, %nyx_string** %1956
  %2030 = call %nyx_string* @nyx_string_concat(%nyx_string* %2028, %nyx_string* %2029)
  %2031 = call i8* @nyx_string_to_cstr(%nyx_string* %2030)
  %2032 = call %nyx_string* @nyx_exec(i8* %2031)
  %2033 = load %nyx_string*, %nyx_string** %dir.ptr
  %2034 = load %nyx_string*, %nyx_string** %1959
  %2035 = call %nyx_string* @nyx_string_concat(%nyx_string* %2033, %nyx_string* %2034)
  %2036 = load %nyx_string*, %nyx_string** %2004
  %2037 = load %nyx_string*, %nyx_string** %lang.ptr
  %2038 = call i64 @seed_file(%nyx_string* %2035, %nyx_string* %2036, %nyx_string* %2037)
  br label %merge443
else442:
  br label %merge443
merge443:
  br label %merge434
else433:
  %2039 = load %nyx_string*, %nyx_string** %1962
  %2040 = load %nyx_string*, %nyx_string** %1981
  %2041 = call %nyx_string* @nyx_string_concat(%nyx_string* %2039, %nyx_string* %2040)
  %2042 = load %nyx_string*, %nyx_string** %1965
  %2043 = call %nyx_string* @nyx_string_concat(%nyx_string* %2041, %nyx_string* %2042)
  %2044 = load %nyx_string*, %nyx_string** %1997
  %2045 = call %nyx_string* @nyx_string_concat(%nyx_string* %2043, %nyx_string* %2044)
  %2046 = load %nyx_string*, %nyx_string** %1968
  %2047 = call %nyx_string* @nyx_string_concat(%nyx_string* %2045, %nyx_string* %2046)
  %2048 = call i8* @nyx_string_to_cstr(%nyx_string* %2047)
  call void @nyx_print_string(i8* %2048)
  br label %merge434
merge434:
  br label %merge431
else430:
  br label %merge431
merge431:
  %2049 = load i64, i64* %1923
  %2050 = add i64 %2049, 1
  store i64 %2050, i64* %1923
  br label %while_cond426
while_end428:
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
  %2051 = call %nyx_string* @resolve_seed_home()
  %2052 = alloca %nyx_string*
  store %nyx_string* %2051, %nyx_string** %2052
  %2053 = load %nyx_string*, %nyx_string** %2052
  %2054 = getelementptr [11 x i8], [11 x i8]* @.str209, i32 0, i32 0
  %2055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2054, i64 10)
  %2056 = call %nyx_string* @nyx_string_concat(%nyx_string* %2053, %nyx_string* %2055)
  %2057 = alloca %nyx_string*
  store %nyx_string* %2056, %nyx_string** %2057
  %2058 = load %nyx_string*, %nyx_string** %2057
  %2059 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2059, i64 1)
  %2061 = call %nyx_string* @nyx_string_concat(%nyx_string* %2058, %nyx_string* %2060)
  %2062 = load %nyx_string*, %nyx_string** %lang.ptr
  %2063 = call %nyx_string* @nyx_string_concat(%nyx_string* %2061, %nyx_string* %2062)
  %2064 = alloca %nyx_string*
  store %nyx_string* %2063, %nyx_string** %2064
  %2065 = alloca i1
  store i1 0, i1* %2065
  %2066 = load %nyx_string*, %nyx_string** %2052
  %2067 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2067, i64 0)
  %2069 = call i1 @nyx_string_equals(%nyx_string* %2066, %nyx_string* %2068)
  %2070 = xor i1 %2069, true
  br i1 %2070, label %then444, label %else445
then444:
  %2071 = load %nyx_string*, %nyx_string** %2064
  %2072 = getelementptr [11 x i8], [11 x i8]* @.str212, i32 0, i32 0
  %2073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2072, i64 10)
  %2074 = call %nyx_string* @nyx_string_concat(%nyx_string* %2071, %nyx_string* %2073)
  %2075 = call i8* @nyx_string_to_cstr(%nyx_string* %2074)
  %2076 = call i1 @nyx_file_exists(i8* %2075)
  br i1 %2076, label %then447, label %else448
then447:
  store i1 1, i1* %2065
  br label %merge449
else448:
  br label %merge449
merge449:
  br label %merge446
else445:
  br label %merge446
merge446:
  %2077 = load i1, i1* %2065
  %2078 = icmp eq i1 %2077, 0
  br i1 %2078, label %then450, label %else451
then450:
  %2079 = getelementptr [74 x i8], [74 x i8]* @.str213, i32 0, i32 0
  %2080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2079, i64 73)
  %2081 = load %nyx_string*, %nyx_string** %lang.ptr
  %2082 = call %nyx_string* @nyx_string_concat(%nyx_string* %2080, %nyx_string* %2081)
  %2083 = getelementptr [84 x i8], [84 x i8]* @.str214, i32 0, i32 0
  %2084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2083, i64 83)
  %2085 = call %nyx_string* @nyx_string_concat(%nyx_string* %2082, %nyx_string* %2084)
  %2086 = call i8* @nyx_string_to_cstr(%nyx_string* %2085)
  call void @nyx_print_string(i8* %2086)
  %2087 = getelementptr [82 x i8], [82 x i8]* @.str215, i32 0, i32 0
  %2088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2087, i64 81)
  %2089 = call i8* @nyx_string_to_cstr(%nyx_string* %2088)
  call void @nyx_print_string(i8* %2089)
  ret i64 0
else451:
  br label %merge452
merge452:
  %2090 = load %nyx_string*, %nyx_string** %2064
  %2091 = getelementptr [11 x i8], [11 x i8]* @.str216, i32 0, i32 0
  %2092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2091, i64 10)
  %2093 = call %nyx_string* @nyx_string_concat(%nyx_string* %2090, %nyx_string* %2092)
  %2094 = call i8* @nyx_string_to_cstr(%nyx_string* %2093)
  %2095 = call %nyx_string* @nyx_read_file(i8* %2094)
  %2096 = alloca %nyx_string*
  store %nyx_string* %2095, %nyx_string** %2096
  %2097 = load %nyx_string*, %nyx_string** %dir.ptr
  %2098 = getelementptr [11 x i8], [11 x i8]* @.str217, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2098, i64 10)
  %2100 = call %nyx_string* @nyx_string_concat(%nyx_string* %2097, %nyx_string* %2099)
  %2101 = load %nyx_string*, %nyx_string** %2096
  %2102 = load %nyx_string*, %nyx_string** %lang.ptr
  %2103 = call i64 @seed_file(%nyx_string* %2100, %nyx_string* %2101, %nyx_string* %2102)
  %2104 = load %nyx_string*, %nyx_string** %dir.ptr
  %2105 = getelementptr [17 x i8], [17 x i8]* @.str218, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2105, i64 16)
  %2107 = call %nyx_string* @nyx_string_concat(%nyx_string* %2104, %nyx_string* %2106)
  %2108 = call i1 @run_capabilities(%nyx_string* %2107)
  %2109 = alloca i1
  store i1 %2108, i1* %2109
  %2110 = getelementptr [11 x i8], [11 x i8]* @.str219, i32 0, i32 0
  %2111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2110, i64 10)
  %2112 = load %nyx_string*, %nyx_string** %dir.ptr
  %2113 = call %nyx_string* @nyx_string_concat(%nyx_string* %2111, %nyx_string* %2112)
  %2114 = getelementptr [18 x i8], [18 x i8]* @.str220, i32 0, i32 0
  %2115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2114, i64 17)
  %2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %2113, %nyx_string* %2115)
  %2117 = call i8* @nyx_string_to_cstr(%nyx_string* %2116)
  %2118 = call %nyx_string* @nyx_exec(i8* %2117)
  %2119 = load %nyx_string*, %nyx_string** %2057
  %2120 = getelementptr [20 x i8], [20 x i8]* @.str221, i32 0, i32 0
  %2121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2120, i64 19)
  %2122 = call %nyx_string* @nyx_string_concat(%nyx_string* %2119, %nyx_string* %2121)
  %2123 = alloca %nyx_string*
  store %nyx_string* %2122, %nyx_string** %2123
  %2124 = load %nyx_string*, %nyx_string** %2123
  %2125 = call i8* @nyx_string_to_cstr(%nyx_string* %2124)
  %2126 = call i1 @nyx_file_exists(i8* %2125)
  br i1 %2126, label %then453, label %else454
then453:
  %2127 = load %nyx_string*, %nyx_string** %2123
  %2128 = call i8* @nyx_string_to_cstr(%nyx_string* %2127)
  %2129 = call %nyx_string* @nyx_read_file(i8* %2128)
  %2130 = alloca %nyx_string*
  store %nyx_string* %2129, %nyx_string** %2130
  %2131 = load %nyx_string*, %nyx_string** %dir.ptr
  %2132 = getelementptr [17 x i8], [17 x i8]* @.str222, i32 0, i32 0
  %2133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2132, i64 16)
  %2134 = call %nyx_string* @nyx_string_concat(%nyx_string* %2131, %nyx_string* %2133)
  %2135 = load %nyx_string*, %nyx_string** %2130
  %2136 = load %nyx_string*, %nyx_string** %lang.ptr
  %2137 = call i64 @seed_file(%nyx_string* %2134, %nyx_string* %2135, %nyx_string* %2136)
  br label %merge455
else454:
  %2138 = getelementptr [14 x i8], [14 x i8]* @.str223, i32 0, i32 0
  %2139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2138, i64 13)
  %2140 = load %nyx_string*, %nyx_string** %2123
  %2141 = call %nyx_string* @nyx_string_concat(%nyx_string* %2139, %nyx_string* %2140)
  %2142 = getelementptr [71 x i8], [71 x i8]* @.str224, i32 0, i32 0
  %2143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2142, i64 70)
  %2144 = call %nyx_string* @nyx_string_concat(%nyx_string* %2141, %nyx_string* %2143)
  %2145 = call i8* @nyx_string_to_cstr(%nyx_string* %2144)
  call void @nyx_print_string(i8* %2145)
  %2146 = getelementptr [111 x i8], [111 x i8]* @.str225, i32 0, i32 0
  %2147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2146, i64 110)
  %2148 = call i8* @nyx_string_to_cstr(%nyx_string* %2147)
  call void @nyx_print_string(i8* %2148)
  br label %merge455
merge455:
  %2149 = load %nyx_string*, %nyx_string** %2064
  %2150 = getelementptr [17 x i8], [17 x i8]* @.str226, i32 0, i32 0
  %2151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2150, i64 16)
  %2152 = call %nyx_string* @nyx_string_concat(%nyx_string* %2149, %nyx_string* %2151)
  %2153 = alloca %nyx_string*
  store %nyx_string* %2152, %nyx_string** %2153
  %2154 = load %nyx_string*, %nyx_string** %2153
  %2155 = call i8* @nyx_string_to_cstr(%nyx_string* %2154)
  %2156 = call i1 @nyx_file_exists(i8* %2155)
  br i1 %2156, label %then456, label %else457
then456:
  %2157 = load %nyx_string*, %nyx_string** %2153
  %2158 = call i8* @nyx_string_to_cstr(%nyx_string* %2157)
  %2159 = call { i64, i8* }* @nyx_readdir(i8* %2158)
  %2160 = alloca { i64, i8* }*
  store { i64, i8* }* %2159, { i64, i8* }** %2160
  %2161 = alloca i64
  store i64 0, i64* %2161
  %2162 = getelementptr [2 x i8], [2 x i8]* @.str227, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2162, i64 1)
  %2164 = alloca %nyx_string*
  store %nyx_string* %2163, %nyx_string** %2164
  %2165 = getelementptr [18 x i8], [18 x i8]* @.str228, i32 0, i32 0
  %2166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2165, i64 17)
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = call i8* @llvm.stacksave()
  br label %while_cond459
while_cond459:
  %2169 = load i64, i64* %2161
  %2170 = load { i64, i8* }*, { i64, i8* }** %2160
  %2171 = call i64 @nyx_array_length({ i64, i8* }* %2170)
  %2172 = icmp slt i64 %2169, %2171
  br i1 %2172, label %while_body460, label %while_end461
while_body460:
  call void @llvm.stackrestore(i8* %2168)
  %2173 = load { i64, i8* }*, { i64, i8* }** %2160
  %2174 = load i64, i64* %2161
  %2175 = call i64 @nyx_array_get_checked({ i64, i8* }* %2173, i64 %2174, i64 2)
  %2176 = inttoptr i64 %2175 to %nyx_string*
  %2177 = alloca %nyx_string*
  store %nyx_string* %2176, %nyx_string** %2177
  %2178 = load %nyx_string*, %nyx_string** %2153
  %2179 = load %nyx_string*, %nyx_string** %2164
  %2180 = call %nyx_string* @nyx_string_concat(%nyx_string* %2178, %nyx_string* %2179)
  %2181 = load %nyx_string*, %nyx_string** %2177
  %2182 = call %nyx_string* @nyx_string_concat(%nyx_string* %2180, %nyx_string* %2181)
  %2183 = alloca %nyx_string*
  store %nyx_string* %2182, %nyx_string** %2183
  %2184 = load %nyx_string*, %nyx_string** %2183
  %2185 = call i8* @nyx_string_to_cstr(%nyx_string* %2184)
  %2186 = call i1 @nyx_file_exists(i8* %2185)
  br i1 %2186, label %then462, label %else463
then462:
  %2187 = load %nyx_string*, %nyx_string** %2183
  %2188 = call i8* @nyx_string_to_cstr(%nyx_string* %2187)
  %2189 = call %nyx_string* @nyx_read_file(i8* %2188)
  %2190 = alloca %nyx_string*
  store %nyx_string* %2189, %nyx_string** %2190
  %2191 = load %nyx_string*, %nyx_string** %dir.ptr
  %2192 = load %nyx_string*, %nyx_string** %2167
  %2193 = call %nyx_string* @nyx_string_concat(%nyx_string* %2191, %nyx_string* %2192)
  %2194 = load %nyx_string*, %nyx_string** %2177
  %2195 = call %nyx_string* @nyx_string_concat(%nyx_string* %2193, %nyx_string* %2194)
  %2196 = load %nyx_string*, %nyx_string** %2190
  %2197 = load %nyx_string*, %nyx_string** %lang.ptr
  %2198 = call i64 @seed_file(%nyx_string* %2195, %nyx_string* %2196, %nyx_string* %2197)
  br label %merge464
else463:
  br label %merge464
merge464:
  %2199 = load i64, i64* %2161
  %2200 = add i64 %2199, 1
  store i64 %2200, i64* %2161
  br label %while_cond459
while_end461:
  br label %merge458
else457:
  br label %merge458
merge458:
  %2201 = load %nyx_string*, %nyx_string** %dir.ptr
  %2202 = load %nyx_string*, %nyx_string** %lang.ptr
  %2203 = load %nyx_string*, %nyx_string** %agents.ptr
  %2204 = call i64 @seed_adapters(%nyx_string* %2201, %nyx_string* %2202, %nyx_string* %2203)
  ret i64 0
}

define internal %nyx_string* @sdd_generated_marker(
) {
  %2205 = getelementptr [28 x i8], [28 x i8]* @.str229, i32 0, i32 0
  %2206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2205, i64 27)
  ret %nyx_string* %2206
}

define internal %nyx_string* @sdd_msg(
%nyx_string* %lang.param, %nyx_string* %en.param, %nyx_string* %es.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %2207 = load %nyx_string*, %nyx_string** %lang.ptr
  %2208 = getelementptr [3 x i8], [3 x i8]* @.str230, i32 0, i32 0
  %2209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2208, i64 2)
  %2210 = call i1 @nyx_string_equals(%nyx_string* %2207, %nyx_string* %2209)
  br i1 %2210, label %then465, label %else466
then465:
  %2211 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %2211
else466:
  br label %merge467
merge467:
  %2212 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %2212
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
  %2213 = load %nyx_string*, %nyx_string** %dst.ptr
  %2214 = call i8* @nyx_string_to_cstr(%nyx_string* %2213)
  %2215 = call i1 @nyx_file_exists(i8* %2214)
  br i1 %2215, label %then468, label %else469
then468:
  %2216 = load %nyx_string*, %nyx_string** %lang.ptr
  %2217 = getelementptr [28 x i8], [28 x i8]* @.str231, i32 0, i32 0
  %2218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2217, i64 27)
  %2219 = load %nyx_string*, %nyx_string** %dst.ptr
  %2220 = call %nyx_string* @nyx_string_concat(%nyx_string* %2218, %nyx_string* %2219)
  %2221 = getelementptr [25 x i8], [25 x i8]* @.str232, i32 0, i32 0
  %2222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2221, i64 24)
  %2223 = load %nyx_string*, %nyx_string** %dst.ptr
  %2224 = call %nyx_string* @nyx_string_concat(%nyx_string* %2222, %nyx_string* %2223)
  %2225 = call %nyx_string* @sdd_msg(%nyx_string* %2216, %nyx_string* %2220, %nyx_string* %2224)
  %2226 = call i8* @nyx_string_to_cstr(%nyx_string* %2225)
  call void @nyx_print_string(i8* %2226)
  ret i1 0
else469:
  br label %merge470
merge470:
  %2227 = load %nyx_string*, %nyx_string** %tpl_dir.ptr
  %2228 = getelementptr [2 x i8], [2 x i8]* @.str233, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2228, i64 1)
  %2230 = call %nyx_string* @nyx_string_concat(%nyx_string* %2227, %nyx_string* %2229)
  %2231 = load %nyx_string*, %nyx_string** %name.ptr
  %2232 = call %nyx_string* @nyx_string_concat(%nyx_string* %2230, %nyx_string* %2231)
  %2233 = alloca %nyx_string*
  store %nyx_string* %2232, %nyx_string** %2233
  %2234 = load %nyx_string*, %nyx_string** %2233
  %2235 = call i8* @nyx_string_to_cstr(%nyx_string* %2234)
  %2236 = call i1 @nyx_file_exists(i8* %2235)
  %2237 = icmp eq i1 %2236, 0
  br i1 %2237, label %then471, label %else472
then471:
  %2238 = getelementptr [27 x i8], [27 x i8]* @.str234, i32 0, i32 0
  %2239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2238, i64 26)
  %2240 = load %nyx_string*, %nyx_string** %2233
  %2241 = call %nyx_string* @nyx_string_concat(%nyx_string* %2239, %nyx_string* %2240)
  %2242 = getelementptr [19 x i8], [19 x i8]* @.str235, i32 0, i32 0
  %2243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2242, i64 18)
  %2244 = call %nyx_string* @nyx_string_concat(%nyx_string* %2241, %nyx_string* %2243)
  %2245 = load %nyx_string*, %nyx_string** %dst.ptr
  %2246 = call %nyx_string* @nyx_string_concat(%nyx_string* %2244, %nyx_string* %2245)
  %2247 = getelementptr [16 x i8], [16 x i8]* @.str236, i32 0, i32 0
  %2248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2247, i64 15)
  %2249 = call %nyx_string* @nyx_string_concat(%nyx_string* %2246, %nyx_string* %2248)
  %2250 = call i8* @nyx_string_to_cstr(%nyx_string* %2249)
  call void @nyx_print_string(i8* %2250)
  ret i1 0
else472:
  br label %merge473
merge473:
  %2251 = load %nyx_string*, %nyx_string** %2233
  %2252 = call i8* @nyx_string_to_cstr(%nyx_string* %2251)
  %2253 = call %nyx_string* @nyx_read_file(i8* %2252)
  %2254 = alloca %nyx_string*
  store %nyx_string* %2253, %nyx_string** %2254
  %2255 = load %nyx_string*, %nyx_string** %dst.ptr
  %2256 = load %nyx_string*, %nyx_string** %2254
  %2257 = load %nyx_string*, %nyx_string** %lang.ptr
  %2258 = call i64 @seed_file(%nyx_string* %2255, %nyx_string* %2256, %nyx_string* %2257)
  %2259 = getelementptr [3 x i8], [3 x i8]* @.str237, i32 0, i32 0
  %2260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2259, i64 2)
  %2261 = load %nyx_string*, %nyx_string** %dst.ptr
  %2262 = call %nyx_string* @nyx_string_concat(%nyx_string* %2260, %nyx_string* %2261)
  %2263 = call i8* @nyx_string_to_cstr(%nyx_string* %2262)
  call void @nyx_print_string(i8* %2263)
  ret i1 1
}

define internal %nyx_string* @nx_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %2264 = getelementptr [1 x i8], [1 x i8]* @.str238, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2264, i64 0)
  %2266 = alloca %nyx_string*
  store %nyx_string* %2265, %nyx_string** %2266
  %2267 = alloca i64
  store i64 0, i64* %2267
  %2268 = getelementptr [2 x i8], [2 x i8]* @.str239, i32 0, i32 0
  %2269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2268, i64 1)
  %2270 = alloca %nyx_string*
  store %nyx_string* %2269, %nyx_string** %2270
  %2271 = getelementptr [3 x i8], [3 x i8]* @.str240, i32 0, i32 0
  %2272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2271, i64 2)
  %2273 = alloca %nyx_string*
  store %nyx_string* %2272, %nyx_string** %2273
  %2274 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %2275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2274, i64 1)
  %2276 = alloca %nyx_string*
  store %nyx_string* %2275, %nyx_string** %2276
  %2277 = getelementptr [3 x i8], [3 x i8]* @.str242, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2277, i64 2)
  %2279 = alloca %nyx_string*
  store %nyx_string* %2278, %nyx_string** %2279
  %2280 = call i8* @llvm.stacksave()
  br label %while_cond474
while_cond474:
  %2281 = load i64, i64* %2267
  %2282 = load %nyx_string*, %nyx_string** %s.ptr
  %2283 = call i64 @nyx_string_byte_length(%nyx_string* %2282)
  %2284 = icmp slt i64 %2281, %2283
  br i1 %2284, label %while_body475, label %while_end476
while_body475:
  call void @llvm.stackrestore(i8* %2280)
  %2285 = load %nyx_string*, %nyx_string** %s.ptr
  %2286 = load i64, i64* %2267
  %2287 = load i64, i64* %2267
  %2288 = add i64 %2287, 1
  %2289 = call %nyx_string* @nyx_string_substring(%nyx_string* %2285, i64 %2286, i64 %2288)
  %2290 = alloca %nyx_string*
  store %nyx_string* %2289, %nyx_string** %2290
  %2291 = load %nyx_string*, %nyx_string** %2290
  %2292 = load %nyx_string*, %nyx_string** %2270
  %2293 = call i1 @nyx_string_equals(%nyx_string* %2291, %nyx_string* %2292)
  br i1 %2293, label %then477, label %else478
then477:
  %2294 = load %nyx_string*, %nyx_string** %2266
  %2295 = load %nyx_string*, %nyx_string** %2273
  %2296 = call %nyx_string* @nyx_string_concat(%nyx_string* %2294, %nyx_string* %2295)
  store %nyx_string* %2296, %nyx_string** %2266
  br label %merge479
else478:
  %2297 = load %nyx_string*, %nyx_string** %2290
  %2298 = load %nyx_string*, %nyx_string** %2276
  %2299 = call i1 @nyx_string_equals(%nyx_string* %2297, %nyx_string* %2298)
  br i1 %2299, label %then480, label %else481
then480:
  %2300 = load %nyx_string*, %nyx_string** %2266
  %2301 = load %nyx_string*, %nyx_string** %2279
  %2302 = call %nyx_string* @nyx_string_concat(%nyx_string* %2300, %nyx_string* %2301)
  store %nyx_string* %2302, %nyx_string** %2266
  br label %merge482
else481:
  %2303 = load %nyx_string*, %nyx_string** %2266
  %2304 = load %nyx_string*, %nyx_string** %2290
  %2305 = call %nyx_string* @nyx_string_concat(%nyx_string* %2303, %nyx_string* %2304)
  store %nyx_string* %2305, %nyx_string** %2266
  br label %merge482
merge482:
  br label %merge479
merge479:
  %2306 = load i64, i64* %2267
  %2307 = add i64 %2306, 1
  store i64 %2307, i64* %2267
  br label %while_cond474
while_end476:
  %2308 = load %nyx_string*, %nyx_string** %2266
  ret %nyx_string* %2308
}

define internal %nyx_string* @evidence_body(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2309 = call %nyx_string* @toolchain_version()
  %2310 = alloca %nyx_string*
  store %nyx_string* %2309, %nyx_string** %2310
  %2311 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %2312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2311, i64 0)
  %2313 = alloca %nyx_string*
  store %nyx_string* %2312, %nyx_string** %2313
  %2314 = load %nyx_string*, %nyx_string** %2313
  %2315 = load %nyx_string*, %nyx_string** %lang.ptr
  %2316 = getelementptr [20 x i8], [20 x i8]* @.str244, i32 0, i32 0
  %2317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2316, i64 19)
  %2318 = load %nyx_string*, %nyx_string** %2310
  %2319 = call %nyx_string* @nyx_string_concat(%nyx_string* %2317, %nyx_string* %2318)
  %2320 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2320, i64 1)
  %2322 = call %nyx_string* @nyx_string_concat(%nyx_string* %2319, %nyx_string* %2321)
  %2323 = getelementptr [21 x i8], [21 x i8]* @.str246, i32 0, i32 0
  %2324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2323, i64 20)
  %2325 = load %nyx_string*, %nyx_string** %2310
  %2326 = call %nyx_string* @nyx_string_concat(%nyx_string* %2324, %nyx_string* %2325)
  %2327 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %2328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2327, i64 1)
  %2329 = call %nyx_string* @nyx_string_concat(%nyx_string* %2326, %nyx_string* %2328)
  %2330 = call %nyx_string* @sdd_msg(%nyx_string* %2315, %nyx_string* %2322, %nyx_string* %2329)
  %2331 = call %nyx_string* @nyx_string_concat(%nyx_string* %2314, %nyx_string* %2330)
  store %nyx_string* %2331, %nyx_string** %2313
  %2332 = load %nyx_string*, %nyx_string** %2313
  %2333 = getelementptr [7 x i8], [7 x i8]* @.str248, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2333, i64 6)
  %2335 = call %nyx_string* @nyx_string_concat(%nyx_string* %2332, %nyx_string* %2334)
  %2336 = call %nyx_string* @sdd_generated_marker()
  %2337 = call %nyx_string* @nyx_string_concat(%nyx_string* %2335, %nyx_string* %2336)
  %2338 = getelementptr [110 x i8], [110 x i8]* @.str249, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2338, i64 109)
  %2340 = call %nyx_string* @nyx_string_concat(%nyx_string* %2337, %nyx_string* %2339)
  store %nyx_string* %2340, %nyx_string** %2313
  %2341 = load %nyx_string*, %nyx_string** %2313
  %2342 = load %nyx_string*, %nyx_string** %lang.ptr
  %2343 = getelementptr [319 x i8], [319 x i8]* @.str250, i32 0, i32 0
  %2344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2343, i64 318)
  %2345 = getelementptr [334 x i8], [334 x i8]* @.str251, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2345, i64 333)
  %2347 = call %nyx_string* @sdd_msg(%nyx_string* %2342, %nyx_string* %2344, %nyx_string* %2346)
  %2348 = call %nyx_string* @nyx_string_concat(%nyx_string* %2341, %nyx_string* %2347)
  store %nyx_string* %2348, %nyx_string** %2313
  %2349 = load %nyx_string*, %nyx_string** %2313
  %2350 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2350, i64 1)
  %2352 = call %nyx_string* @nyx_string_concat(%nyx_string* %2349, %nyx_string* %2351)
  store %nyx_string* %2352, %nyx_string** %2313
  %2353 = call { i64, i8* }* @gotchas_table()
  %2354 = alloca { i64, i8* }*
  store { i64, i8* }* %2353, { i64, i8* }** %2354
  %2355 = alloca i64
  store i64 0, i64* %2355
  %2356 = getelementptr [5 x i8], [5 x i8]* @.str253, i32 0, i32 0
  %2357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2356, i64 4)
  %2358 = alloca %nyx_string*
  store %nyx_string* %2357, %nyx_string** %2358
  %2359 = getelementptr [9 x i8], [9 x i8]* @.str254, i32 0, i32 0
  %2360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2359, i64 8)
  %2361 = alloca %nyx_string*
  store %nyx_string* %2360, %nyx_string** %2361
  %2362 = getelementptr [1 x i8], [1 x i8]* @.str255, i32 0, i32 0
  %2363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2362, i64 0)
  %2364 = alloca %nyx_string*
  store %nyx_string* %2363, %nyx_string** %2364
  %2365 = getelementptr [5 x i8], [5 x i8]* @.str256, i32 0, i32 0
  %2366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2365, i64 4)
  %2367 = alloca %nyx_string*
  store %nyx_string* %2366, %nyx_string** %2367
  %2368 = getelementptr [5 x i8], [5 x i8]* @.str257, i32 0, i32 0
  %2369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2368, i64 4)
  %2370 = alloca %nyx_string*
  store %nyx_string* %2369, %nyx_string** %2370
  %2371 = getelementptr [3 x i8], [3 x i8]* @.str258, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2371, i64 2)
  %2373 = alloca %nyx_string*
  store %nyx_string* %2372, %nyx_string** %2373
  %2374 = getelementptr [6 x i8], [6 x i8]* @.str259, i32 0, i32 0
  %2375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2374, i64 5)
  %2376 = alloca %nyx_string*
  store %nyx_string* %2375, %nyx_string** %2376
  %2377 = getelementptr [7 x i8], [7 x i8]* @.str260, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2377, i64 6)
  %2379 = alloca %nyx_string*
  store %nyx_string* %2378, %nyx_string** %2379
  %2380 = getelementptr [5 x i8], [5 x i8]* @.str261, i32 0, i32 0
  %2381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2380, i64 4)
  %2382 = alloca %nyx_string*
  store %nyx_string* %2381, %nyx_string** %2382
  %2383 = getelementptr [9 x i8], [9 x i8]* @.str262, i32 0, i32 0
  %2384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2383, i64 8)
  %2385 = alloca %nyx_string*
  store %nyx_string* %2384, %nyx_string** %2385
  %2386 = getelementptr [3 x i8], [3 x i8]* @.str263, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2386, i64 2)
  %2388 = alloca %nyx_string*
  store %nyx_string* %2387, %nyx_string** %2388
  %2389 = getelementptr [9 x i8], [9 x i8]* @.str264, i32 0, i32 0
  %2390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2389, i64 8)
  %2391 = alloca %nyx_string*
  store %nyx_string* %2390, %nyx_string** %2391
  %2392 = getelementptr [5 x i8], [5 x i8]* @.str265, i32 0, i32 0
  %2393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2392, i64 4)
  %2394 = alloca %nyx_string*
  store %nyx_string* %2393, %nyx_string** %2394
  %2395 = getelementptr [5 x i8], [5 x i8]* @.str266, i32 0, i32 0
  %2396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2395, i64 4)
  %2397 = alloca %nyx_string*
  store %nyx_string* %2396, %nyx_string** %2397
  %2398 = getelementptr [9 x i8], [9 x i8]* @.str267, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2398, i64 8)
  %2400 = alloca %nyx_string*
  store %nyx_string* %2399, %nyx_string** %2400
  %2401 = getelementptr [7 x i8], [7 x i8]* @.str268, i32 0, i32 0
  %2402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2401, i64 6)
  %2403 = alloca %nyx_string*
  store %nyx_string* %2402, %nyx_string** %2403
  %2404 = getelementptr [14 x i8], [14 x i8]* @.str269, i32 0, i32 0
  %2405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2404, i64 13)
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2407, i64 1)
  %2409 = alloca %nyx_string*
  store %nyx_string* %2408, %nyx_string** %2409
  %2410 = getelementptr [12 x i8], [12 x i8]* @.str271, i32 0, i32 0
  %2411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2410, i64 11)
  %2412 = alloca %nyx_string*
  store %nyx_string* %2411, %nyx_string** %2412
  %2413 = getelementptr [2 x i8], [2 x i8]* @.str272, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2413, i64 1)
  %2415 = alloca %nyx_string*
  store %nyx_string* %2414, %nyx_string** %2415
  %2416 = call i8* @llvm.stacksave()
  br label %while_cond483
while_cond483:
  %2417 = load i64, i64* %2355
  %2418 = load { i64, i8* }*, { i64, i8* }** %2354
  %2419 = call i64 @nyx_array_length({ i64, i8* }* %2418)
  %2420 = icmp slt i64 %2417, %2419
  br i1 %2420, label %while_body484, label %while_end485
while_body484:
  call void @llvm.stackrestore(i8* %2416)
  %2421 = load { i64, i8* }*, { i64, i8* }** %2354
  %2422 = load i64, i64* %2355
  %2423 = call i64 @nyx_array_get({ i64, i8* }* %2421, i64 %2422)
  %2424 = inttoptr i64 %2423 to { i64, i8* }*
  %2425 = alloca { i64, i8* }*
  store { i64, i8* }* %2424, { i64, i8* }** %2425
  %2426 = load { i64, i8* }*, { i64, i8* }** %2425
  %2427 = load %nyx_string*, %nyx_string** %2358
  %2428 = call %nyx_string* @gotcha_field({ i64, i8* }* %2426, %nyx_string* %2427)
  %2429 = alloca %nyx_string*
  store %nyx_string* %2428, %nyx_string** %2429
  %2430 = load { i64, i8* }*, { i64, i8* }** %2425
  %2431 = load %nyx_string*, %nyx_string** %2361
  %2432 = call %nyx_string* @gotcha_field({ i64, i8* }* %2430, %nyx_string* %2431)
  %2433 = alloca %nyx_string*
  store %nyx_string* %2432, %nyx_string** %2433
  %2434 = load %nyx_string*, %nyx_string** %2433
  %2435 = load %nyx_string*, %nyx_string** %2364
  %2436 = call i1 @nyx_string_equals(%nyx_string* %2434, %nyx_string* %2435)
  br i1 %2436, label %then486, label %else487
then486:
  %2437 = alloca i1
  store i1 true, i1* %2437
  %2438 = load %nyx_string*, %nyx_string** %2429
  %2439 = load %nyx_string*, %nyx_string** %2367
  %2440 = call i1 @nyx_string_equals(%nyx_string* %2438, %nyx_string* %2439)
  br i1 %2440, label %sc_or_end490, label %sc_or_rhs489
sc_or_rhs489:
  %2441 = load %nyx_string*, %nyx_string** %2429
  %2442 = load %nyx_string*, %nyx_string** %2370
  %2443 = call i1 @nyx_string_equals(%nyx_string* %2441, %nyx_string* %2442)
  store i1 %2443, i1* %2437
  br label %sc_or_end490
sc_or_end490:
  %2444 = load i1, i1* %2437
  br i1 %2444, label %then491, label %else492
then491:
  %2445 = load { i64, i8* }*, { i64, i8* }** %2425
  %2446 = load %nyx_string*, %nyx_string** %2373
  %2447 = call %nyx_string* @gotcha_field({ i64, i8* }* %2445, %nyx_string* %2446)
  %2448 = alloca %nyx_string*
  store %nyx_string* %2447, %nyx_string** %2448
  %2449 = load { i64, i8* }*, { i64, i8* }** %2425
  %2450 = load %nyx_string*, %nyx_string** %2376
  %2451 = call %nyx_string* @gotcha_field({ i64, i8* }* %2449, %nyx_string* %2450)
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = load { i64, i8* }*, { i64, i8* }** %2425
  %2454 = load %nyx_string*, %nyx_string** %2379
  %2455 = call %nyx_string* @gotcha_field({ i64, i8* }* %2453, %nyx_string* %2454)
  %2456 = alloca %nyx_string*
  store %nyx_string* %2455, %nyx_string** %2456
  %2457 = load { i64, i8* }*, { i64, i8* }** %2425
  %2458 = load %nyx_string*, %nyx_string** %2382
  %2459 = call %nyx_string* @gotcha_field({ i64, i8* }* %2457, %nyx_string* %2458)
  %2460 = alloca %nyx_string*
  store %nyx_string* %2459, %nyx_string** %2460
  %2461 = load { i64, i8* }*, { i64, i8* }** %2425
  %2462 = load %nyx_string*, %nyx_string** %2385
  %2463 = call %nyx_string* @gotcha_field({ i64, i8* }* %2461, %nyx_string* %2462)
  %2464 = alloca %nyx_string*
  store %nyx_string* %2463, %nyx_string** %2464
  %2465 = load %nyx_string*, %nyx_string** %lang.ptr
  %2466 = load %nyx_string*, %nyx_string** %2388
  %2467 = call i1 @nyx_string_equals(%nyx_string* %2465, %nyx_string* %2466)
  br i1 %2467, label %then494, label %else495
then494:
  %2468 = load { i64, i8* }*, { i64, i8* }** %2425
  %2469 = load %nyx_string*, %nyx_string** %2391
  %2470 = call %nyx_string* @gotcha_field({ i64, i8* }* %2468, %nyx_string* %2469)
  store %nyx_string* %2470, %nyx_string** %2464
  br label %merge496
else495:
  br label %merge496
merge496:
  %2471 = load %nyx_string*, %nyx_string** %2313
  %2472 = load %nyx_string*, %nyx_string** %2394
  %2473 = call %nyx_string* @nyx_string_concat(%nyx_string* %2471, %nyx_string* %2472)
  %2474 = load %nyx_string*, %nyx_string** %2448
  %2475 = call %nyx_string* @nyx_string_concat(%nyx_string* %2473, %nyx_string* %2474)
  %2476 = load %nyx_string*, %nyx_string** %2397
  %2477 = call %nyx_string* @nyx_string_concat(%nyx_string* %2475, %nyx_string* %2476)
  %2478 = load %nyx_string*, %nyx_string** %2429
  %2479 = call %nyx_string* @nyx_string_concat(%nyx_string* %2477, %nyx_string* %2478)
  %2480 = load %nyx_string*, %nyx_string** %2400
  %2481 = call %nyx_string* @nyx_string_concat(%nyx_string* %2479, %nyx_string* %2480)
  %2482 = load %nyx_string*, %nyx_string** %2452
  %2483 = call %nyx_string* @nyx_string_concat(%nyx_string* %2481, %nyx_string* %2482)
  %2484 = load %nyx_string*, %nyx_string** %2403
  %2485 = call %nyx_string* @nyx_string_concat(%nyx_string* %2483, %nyx_string* %2484)
  %2486 = load %nyx_string*, %nyx_string** %2464
  %2487 = call %nyx_string* @nyx_string_concat(%nyx_string* %2485, %nyx_string* %2486)
  store %nyx_string* %2487, %nyx_string** %2313
  %2488 = load %nyx_string*, %nyx_string** %2456
  %2489 = load %nyx_string*, %nyx_string** %2364
  %2490 = call i1 @nyx_string_equals(%nyx_string* %2488, %nyx_string* %2489)
  %2491 = xor i1 %2490, true
  br i1 %2491, label %then497, label %else498
then497:
  %2492 = load %nyx_string*, %nyx_string** %2313
  %2493 = load %nyx_string*, %nyx_string** %2406
  %2494 = call %nyx_string* @nyx_string_concat(%nyx_string* %2492, %nyx_string* %2493)
  %2495 = load %nyx_string*, %nyx_string** %2456
  %2496 = call %nyx_string* @nyx_string_concat(%nyx_string* %2494, %nyx_string* %2495)
  %2497 = load %nyx_string*, %nyx_string** %2409
  %2498 = call %nyx_string* @nyx_string_concat(%nyx_string* %2496, %nyx_string* %2497)
  store %nyx_string* %2498, %nyx_string** %2313
  br label %merge499
else498:
  br label %merge499
merge499:
  %2499 = load %nyx_string*, %nyx_string** %2460
  %2500 = load %nyx_string*, %nyx_string** %2364
  %2501 = call i1 @nyx_string_equals(%nyx_string* %2499, %nyx_string* %2500)
  %2502 = xor i1 %2501, true
  br i1 %2502, label %then500, label %else501
then500:
  %2503 = load %nyx_string*, %nyx_string** %2313
  %2504 = load %nyx_string*, %nyx_string** %2412
  %2505 = call %nyx_string* @nyx_string_concat(%nyx_string* %2503, %nyx_string* %2504)
  %2506 = load %nyx_string*, %nyx_string** %2460
  %2507 = call %nyx_string* @nyx_string_concat(%nyx_string* %2505, %nyx_string* %2506)
  %2508 = load %nyx_string*, %nyx_string** %2409
  %2509 = call %nyx_string* @nyx_string_concat(%nyx_string* %2507, %nyx_string* %2508)
  store %nyx_string* %2509, %nyx_string** %2313
  br label %merge502
else501:
  br label %merge502
merge502:
  %2510 = load %nyx_string*, %nyx_string** %2313
  %2511 = load %nyx_string*, %nyx_string** %2415
  %2512 = call %nyx_string* @nyx_string_concat(%nyx_string* %2510, %nyx_string* %2511)
  store %nyx_string* %2512, %nyx_string** %2313
  br label %merge493
else492:
  br label %merge493
merge493:
  br label %merge488
else487:
  br label %merge488
merge488:
  %2513 = load i64, i64* %2355
  %2514 = add i64 %2513, 1
  store i64 %2514, i64* %2355
  br label %while_cond483
while_end485:
  %2515 = load %nyx_string*, %nyx_string** %2313
  %2516 = load %nyx_string*, %nyx_string** %lang.ptr
  %2517 = getelementptr [14 x i8], [14 x i8]* @.str273, i32 0, i32 0
  %2518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2517, i64 13)
  %2519 = getelementptr [16 x i8], [16 x i8]* @.str274, i32 0, i32 0
  %2520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2519, i64 15)
  %2521 = call %nyx_string* @sdd_msg(%nyx_string* %2516, %nyx_string* %2518, %nyx_string* %2520)
  %2522 = call %nyx_string* @nyx_string_concat(%nyx_string* %2515, %nyx_string* %2521)
  store %nyx_string* %2522, %nyx_string** %2313
  %2523 = load %nyx_string*, %nyx_string** %2313
  %2524 = load %nyx_string*, %nyx_string** %lang.ptr
  %2525 = getelementptr [139 x i8], [139 x i8]* @.str275, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2525, i64 138)
  %2527 = getelementptr [150 x i8], [150 x i8]* @.str276, i32 0, i32 0
  %2528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2527, i64 149)
  %2529 = call %nyx_string* @sdd_msg(%nyx_string* %2524, %nyx_string* %2526, %nyx_string* %2528)
  %2530 = call %nyx_string* @nyx_string_concat(%nyx_string* %2523, %nyx_string* %2529)
  store %nyx_string* %2530, %nyx_string** %2313
  %2531 = alloca i64
  store i64 0, i64* %2531
  %2532 = getelementptr [9 x i8], [9 x i8]* @.str277, i32 0, i32 0
  %2533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2532, i64 8)
  %2534 = alloca %nyx_string*
  store %nyx_string* %2533, %nyx_string** %2534
  %2535 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %2536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2535, i64 0)
  %2537 = alloca %nyx_string*
  store %nyx_string* %2536, %nyx_string** %2537
  %2538 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %2539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2538, i64 2)
  %2540 = alloca %nyx_string*
  store %nyx_string* %2539, %nyx_string** %2540
  %2541 = getelementptr [9 x i8], [9 x i8]* @.str280, i32 0, i32 0
  %2542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2541, i64 8)
  %2543 = alloca %nyx_string*
  store %nyx_string* %2542, %nyx_string** %2543
  %2544 = getelementptr [3 x i8], [3 x i8]* @.str281, i32 0, i32 0
  %2545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2544, i64 2)
  %2546 = alloca %nyx_string*
  store %nyx_string* %2545, %nyx_string** %2546
  %2547 = getelementptr [9 x i8], [9 x i8]* @.str282, i32 0, i32 0
  %2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2547, i64 8)
  %2549 = alloca %nyx_string*
  store %nyx_string* %2548, %nyx_string** %2549
  %2550 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2550, i64 4)
  %2552 = alloca %nyx_string*
  store %nyx_string* %2551, %nyx_string** %2552
  %2553 = getelementptr [14 x i8], [14 x i8]* @.str284, i32 0, i32 0
  %2554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2553, i64 13)
  %2555 = alloca %nyx_string*
  store %nyx_string* %2554, %nyx_string** %2555
  %2556 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %2557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2556, i64 6)
  %2558 = alloca %nyx_string*
  store %nyx_string* %2557, %nyx_string** %2558
  %2559 = getelementptr [2 x i8], [2 x i8]* @.str286, i32 0, i32 0
  %2560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2559, i64 1)
  %2561 = alloca %nyx_string*
  store %nyx_string* %2560, %nyx_string** %2561
  %2562 = call i8* @llvm.stacksave()
  br label %while_cond503
while_cond503:
  %2563 = load i64, i64* %2531
  %2564 = load { i64, i8* }*, { i64, i8* }** %2354
  %2565 = call i64 @nyx_array_length({ i64, i8* }* %2564)
  %2566 = icmp slt i64 %2563, %2565
  br i1 %2566, label %while_body504, label %while_end505
while_body504:
  call void @llvm.stackrestore(i8* %2562)
  %2567 = load { i64, i8* }*, { i64, i8* }** %2354
  %2568 = load i64, i64* %2531
  %2569 = call i64 @nyx_array_get({ i64, i8* }* %2567, i64 %2568)
  %2570 = inttoptr i64 %2569 to { i64, i8* }*
  %2571 = alloca { i64, i8* }*
  store { i64, i8* }* %2570, { i64, i8* }** %2571
  %2572 = load { i64, i8* }*, { i64, i8* }** %2571
  %2573 = load %nyx_string*, %nyx_string** %2534
  %2574 = call %nyx_string* @gotcha_field({ i64, i8* }* %2572, %nyx_string* %2573)
  %2575 = alloca %nyx_string*
  store %nyx_string* %2574, %nyx_string** %2575
  %2576 = load %nyx_string*, %nyx_string** %2575
  %2577 = load %nyx_string*, %nyx_string** %2537
  %2578 = call i1 @nyx_string_equals(%nyx_string* %2576, %nyx_string* %2577)
  %2579 = xor i1 %2578, true
  br i1 %2579, label %then506, label %else507
then506:
  %2580 = load { i64, i8* }*, { i64, i8* }** %2571
  %2581 = load %nyx_string*, %nyx_string** %2540
  %2582 = call %nyx_string* @gotcha_field({ i64, i8* }* %2580, %nyx_string* %2581)
  %2583 = alloca %nyx_string*
  store %nyx_string* %2582, %nyx_string** %2583
  %2584 = load { i64, i8* }*, { i64, i8* }** %2571
  %2585 = load %nyx_string*, %nyx_string** %2543
  %2586 = call %nyx_string* @gotcha_field({ i64, i8* }* %2584, %nyx_string* %2585)
  %2587 = alloca %nyx_string*
  store %nyx_string* %2586, %nyx_string** %2587
  %2588 = load %nyx_string*, %nyx_string** %lang.ptr
  %2589 = load %nyx_string*, %nyx_string** %2546
  %2590 = call i1 @nyx_string_equals(%nyx_string* %2588, %nyx_string* %2589)
  br i1 %2590, label %then509, label %else510
then509:
  %2591 = load { i64, i8* }*, { i64, i8* }** %2571
  %2592 = load %nyx_string*, %nyx_string** %2549
  %2593 = call %nyx_string* @gotcha_field({ i64, i8* }* %2591, %nyx_string* %2592)
  store %nyx_string* %2593, %nyx_string** %2587
  br label %merge511
else510:
  br label %merge511
merge511:
  %2594 = load %nyx_string*, %nyx_string** %2313
  %2595 = load %nyx_string*, %nyx_string** %2552
  %2596 = call %nyx_string* @nyx_string_concat(%nyx_string* %2594, %nyx_string* %2595)
  %2597 = load %nyx_string*, %nyx_string** %2583
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2596, %nyx_string* %2597)
  %2599 = load %nyx_string*, %nyx_string** %2555
  %2600 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2599)
  %2601 = load %nyx_string*, %nyx_string** %2575
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2601)
  %2603 = load %nyx_string*, %nyx_string** %2558
  %2604 = call %nyx_string* @nyx_string_concat(%nyx_string* %2602, %nyx_string* %2603)
  %2605 = load %nyx_string*, %nyx_string** %2587
  %2606 = call %nyx_string* @nyx_string_concat(%nyx_string* %2604, %nyx_string* %2605)
  %2607 = load %nyx_string*, %nyx_string** %2561
  %2608 = call %nyx_string* @nyx_string_concat(%nyx_string* %2606, %nyx_string* %2607)
  store %nyx_string* %2608, %nyx_string** %2313
  br label %merge508
else507:
  br label %merge508
merge508:
  %2609 = load i64, i64* %2531
  %2610 = add i64 %2609, 1
  store i64 %2610, i64* %2531
  br label %while_cond503
while_end505:
  %2611 = load %nyx_string*, %nyx_string** %2313
  ret %nyx_string* %2611
}

define internal i64 @write_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2612 = load %nyx_string*, %nyx_string** %dir.ptr
  %2613 = getelementptr [20 x i8], [20 x i8]* @.str287, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2613, i64 19)
  %2615 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2614)
  %2616 = call %nyx_string* @toolchain_version()
  %2617 = call %nyx_string* @nyx_string_concat(%nyx_string* %2615, %nyx_string* %2616)
  %2618 = getelementptr [4 x i8], [4 x i8]* @.str288, i32 0, i32 0
  %2619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2618, i64 3)
  %2620 = call %nyx_string* @nyx_string_concat(%nyx_string* %2617, %nyx_string* %2619)
  %2621 = alloca %nyx_string*
  store %nyx_string* %2620, %nyx_string** %2621
  %2622 = load %nyx_string*, %nyx_string** %lang.ptr
  %2623 = call %nyx_string* @evidence_body(%nyx_string* %2622)
  %2624 = load %nyx_string*, %nyx_string** %lang.ptr
  %2625 = call %nyx_string* @seed_body(%nyx_string* %2623, %nyx_string* %2624)
  %2626 = alloca %nyx_string*
  store %nyx_string* %2625, %nyx_string** %2626
  %2627 = load %nyx_string*, %nyx_string** %2621
  %2628 = call i8* @nyx_string_to_cstr(%nyx_string* %2627)
  %2629 = call i1 @nyx_file_exists(i8* %2628)
  br i1 %2629, label %then512, label %else513
then512:
  %2630 = load %nyx_string*, %nyx_string** %2621
  %2631 = call i8* @nyx_string_to_cstr(%nyx_string* %2630)
  %2632 = call %nyx_string* @nyx_read_file(i8* %2631)
  %2633 = alloca %nyx_string*
  store %nyx_string* %2632, %nyx_string** %2633
  %2634 = load %nyx_string*, %nyx_string** %2633
  %2635 = load %nyx_string*, %nyx_string** %2626
  %2636 = call i1 @nyx_string_equals(%nyx_string* %2634, %nyx_string* %2635)
  br i1 %2636, label %then515, label %else516
then515:
  ret i64 0
else516:
  br label %merge517
merge517:
  %2637 = load %nyx_string*, %nyx_string** %2633
  %2638 = call %nyx_string* @sdd_generated_marker()
  %2639 = call i64 @nyx_string_index_of(%nyx_string* %2637, %nyx_string* %2638)
  %2640 = icmp slt i64 %2639, 0
  br i1 %2640, label %then518, label %else519
then518:
  ret i64 2
else519:
  br label %merge520
merge520:
  br label %merge514
else513:
  br label %merge514
merge514:
  %2641 = load %nyx_string*, %nyx_string** %2621
  %2642 = load %nyx_string*, %nyx_string** %2626
  %2643 = call i8* @nyx_string_to_cstr(%nyx_string* %2641)
  %2644 = call i8* @nyx_string_to_cstr(%nyx_string* %2642)
  %2645 = call i1 @nyx_write_file(i8* %2643, i8* %2644)
  ret i64 1
}

define internal %nyx_string* @constitution_test_body(
) {
  %2646 = getelementptr [1 x i8], [1 x i8]* @.str289, i32 0, i32 0
  %2647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2646, i64 0)
  %2648 = alloca %nyx_string*
  store %nyx_string* %2647, %nyx_string** %2648
  %2649 = load %nyx_string*, %nyx_string** %2648
  %2650 = getelementptr [4 x i8], [4 x i8]* @.str290, i32 0, i32 0
  %2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2650, i64 3)
  %2652 = call %nyx_string* @nyx_string_concat(%nyx_string* %2649, %nyx_string* %2651)
  %2653 = call %nyx_string* @sdd_generated_marker()
  %2654 = call %nyx_string* @nyx_string_concat(%nyx_string* %2652, %nyx_string* %2653)
  %2655 = getelementptr [80 x i8], [80 x i8]* @.str291, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2655, i64 79)
  %2657 = call %nyx_string* @nyx_string_concat(%nyx_string* %2654, %nyx_string* %2656)
  store %nyx_string* %2657, %nyx_string** %2648
  %2658 = load %nyx_string*, %nyx_string** %2648
  %2659 = getelementptr [96 x i8], [96 x i8]* @.str292, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2659, i64 95)
  %2661 = call %nyx_string* @nyx_string_concat(%nyx_string* %2658, %nyx_string* %2660)
  store %nyx_string* %2661, %nyx_string** %2648
  %2662 = load %nyx_string*, %nyx_string** %2648
  %2663 = getelementptr [72 x i8], [72 x i8]* @.str293, i32 0, i32 0
  %2664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2663, i64 71)
  %2665 = call %nyx_string* @nyx_string_concat(%nyx_string* %2662, %nyx_string* %2664)
  store %nyx_string* %2665, %nyx_string** %2648
  %2666 = load %nyx_string*, %nyx_string** %2648
  %2667 = getelementptr [20 x i8], [20 x i8]* @.str294, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2667, i64 19)
  %2669 = call %nyx_string* @nyx_string_concat(%nyx_string* %2666, %nyx_string* %2668)
  store %nyx_string* %2669, %nyx_string** %2648
  %2670 = load %nyx_string*, %nyx_string** %2648
  %2671 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2671, i64 1)
  %2673 = call %nyx_string* @nyx_string_concat(%nyx_string* %2670, %nyx_string* %2672)
  store %nyx_string* %2673, %nyx_string** %2648
  %2674 = load %nyx_string*, %nyx_string** %2648
  %2675 = call %nyx_string* @gotcha_scan_src()
  %2676 = call %nyx_string* @nyx_string_concat(%nyx_string* %2674, %nyx_string* %2675)
  store %nyx_string* %2676, %nyx_string** %2648
  %2677 = load %nyx_string*, %nyx_string** %2648
  %2678 = getelementptr [2 x i8], [2 x i8]* @.str296, i32 0, i32 0
  %2679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2678, i64 1)
  %2680 = call %nyx_string* @nyx_string_concat(%nyx_string* %2677, %nyx_string* %2679)
  store %nyx_string* %2680, %nyx_string** %2648
  %2681 = load %nyx_string*, %nyx_string** %2648
  %2682 = getelementptr [83 x i8], [83 x i8]* @.str297, i32 0, i32 0
  %2683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2682, i64 82)
  %2684 = call %nyx_string* @nyx_string_concat(%nyx_string* %2681, %nyx_string* %2683)
  store %nyx_string* %2684, %nyx_string** %2648
  %2685 = load %nyx_string*, %nyx_string** %2648
  %2686 = getelementptr [85 x i8], [85 x i8]* @.str298, i32 0, i32 0
  %2687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2686, i64 84)
  %2688 = call %nyx_string* @nyx_string_concat(%nyx_string* %2685, %nyx_string* %2687)
  store %nyx_string* %2688, %nyx_string** %2648
  %2689 = load %nyx_string*, %nyx_string** %2648
  %2690 = getelementptr [83 x i8], [83 x i8]* @.str299, i32 0, i32 0
  %2691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2690, i64 82)
  %2692 = call %nyx_string* @nyx_string_concat(%nyx_string* %2689, %nyx_string* %2691)
  store %nyx_string* %2692, %nyx_string** %2648
  %2693 = load %nyx_string*, %nyx_string** %2648
  %2694 = getelementptr [83 x i8], [83 x i8]* @.str300, i32 0, i32 0
  %2695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2694, i64 82)
  %2696 = call %nyx_string* @nyx_string_concat(%nyx_string* %2693, %nyx_string* %2695)
  store %nyx_string* %2696, %nyx_string** %2648
  %2697 = load %nyx_string*, %nyx_string** %2648
  %2698 = getelementptr [56 x i8], [56 x i8]* @.str301, i32 0, i32 0
  %2699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2698, i64 55)
  %2700 = call %nyx_string* @nyx_string_concat(%nyx_string* %2697, %nyx_string* %2699)
  store %nyx_string* %2700, %nyx_string** %2648
  %2701 = load %nyx_string*, %nyx_string** %2648
  %2702 = getelementptr [31 x i8], [31 x i8]* @.str302, i32 0, i32 0
  %2703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2702, i64 30)
  %2704 = call %nyx_string* @nyx_string_concat(%nyx_string* %2701, %nyx_string* %2703)
  store %nyx_string* %2704, %nyx_string** %2648
  %2705 = load %nyx_string*, %nyx_string** %2648
  %2706 = getelementptr [47 x i8], [47 x i8]* @.str303, i32 0, i32 0
  %2707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2706, i64 46)
  %2708 = call %nyx_string* @nyx_string_concat(%nyx_string* %2705, %nyx_string* %2707)
  store %nyx_string* %2708, %nyx_string** %2648
  %2709 = load %nyx_string*, %nyx_string** %2648
  %2710 = getelementptr [40 x i8], [40 x i8]* @.str304, i32 0, i32 0
  %2711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2710, i64 39)
  %2712 = call %nyx_string* @nyx_string_concat(%nyx_string* %2709, %nyx_string* %2711)
  store %nyx_string* %2712, %nyx_string** %2648
  %2713 = load %nyx_string*, %nyx_string** %2648
  %2714 = getelementptr [20 x i8], [20 x i8]* @.str305, i32 0, i32 0
  %2715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2714, i64 19)
  %2716 = call %nyx_string* @nyx_string_concat(%nyx_string* %2713, %nyx_string* %2715)
  store %nyx_string* %2716, %nyx_string** %2648
  %2717 = load %nyx_string*, %nyx_string** %2648
  %2718 = getelementptr [58 x i8], [58 x i8]* @.str306, i32 0, i32 0
  %2719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2718, i64 57)
  %2720 = call %nyx_string* @nyx_string_concat(%nyx_string* %2717, %nyx_string* %2719)
  store %nyx_string* %2720, %nyx_string** %2648
  %2721 = load %nyx_string*, %nyx_string** %2648
  %2722 = getelementptr [7 x i8], [7 x i8]* @.str307, i32 0, i32 0
  %2723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2722, i64 6)
  %2724 = call %nyx_string* @nyx_string_concat(%nyx_string* %2721, %nyx_string* %2723)
  store %nyx_string* %2724, %nyx_string** %2648
  %2725 = load %nyx_string*, %nyx_string** %2648
  %2726 = getelementptr [15 x i8], [15 x i8]* @.str308, i32 0, i32 0
  %2727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2726, i64 14)
  %2728 = call %nyx_string* @nyx_string_concat(%nyx_string* %2725, %nyx_string* %2727)
  store %nyx_string* %2728, %nyx_string** %2648
  %2729 = load %nyx_string*, %nyx_string** %2648
  %2730 = getelementptr [3 x i8], [3 x i8]* @.str309, i32 0, i32 0
  %2731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2730, i64 2)
  %2732 = call %nyx_string* @nyx_string_concat(%nyx_string* %2729, %nyx_string* %2731)
  store %nyx_string* %2732, %nyx_string** %2648
  %2733 = load %nyx_string*, %nyx_string** %2648
  %2734 = getelementptr [2 x i8], [2 x i8]* @.str310, i32 0, i32 0
  %2735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2734, i64 1)
  %2736 = call %nyx_string* @nyx_string_concat(%nyx_string* %2733, %nyx_string* %2735)
  store %nyx_string* %2736, %nyx_string** %2648
  %2737 = load %nyx_string*, %nyx_string** %2648
  %2738 = getelementptr [79 x i8], [79 x i8]* @.str311, i32 0, i32 0
  %2739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2738, i64 78)
  %2740 = call %nyx_string* @nyx_string_concat(%nyx_string* %2737, %nyx_string* %2739)
  store %nyx_string* %2740, %nyx_string** %2648
  %2741 = load %nyx_string*, %nyx_string** %2648
  %2742 = getelementptr [57 x i8], [57 x i8]* @.str312, i32 0, i32 0
  %2743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2742, i64 56)
  %2744 = call %nyx_string* @nyx_string_concat(%nyx_string* %2741, %nyx_string* %2743)
  store %nyx_string* %2744, %nyx_string** %2648
  %2745 = load %nyx_string*, %nyx_string** %2648
  %2746 = getelementptr [37 x i8], [37 x i8]* @.str313, i32 0, i32 0
  %2747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2746, i64 36)
  %2748 = call %nyx_string* @nyx_string_concat(%nyx_string* %2745, %nyx_string* %2747)
  store %nyx_string* %2748, %nyx_string** %2648
  %2749 = load %nyx_string*, %nyx_string** %2648
  %2750 = getelementptr [25 x i8], [25 x i8]* @.str314, i32 0, i32 0
  %2751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2750, i64 24)
  %2752 = call %nyx_string* @nyx_string_concat(%nyx_string* %2749, %nyx_string* %2751)
  store %nyx_string* %2752, %nyx_string** %2648
  %2753 = load %nyx_string*, %nyx_string** %2648
  %2754 = getelementptr [49 x i8], [49 x i8]* @.str315, i32 0, i32 0
  %2755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2754, i64 48)
  %2756 = call %nyx_string* @nyx_string_concat(%nyx_string* %2753, %nyx_string* %2755)
  store %nyx_string* %2756, %nyx_string** %2648
  %2757 = load %nyx_string*, %nyx_string** %2648
  %2758 = getelementptr [39 x i8], [39 x i8]* @.str316, i32 0, i32 0
  %2759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %2758, i64 38)
  %2760 = call %nyx_string* @nyx_string_concat(%nyx_string* %2757, %nyx_string* %2759)
  store %nyx_string* %2760, %nyx_string** %2648
  %2761 = load %nyx_string*, %nyx_string** %2648
  %2762 = getelementptr [20 x i8], [20 x i8]* @.str317, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %2762, i64 19)
  %2764 = call %nyx_string* @nyx_string_concat(%nyx_string* %2761, %nyx_string* %2763)
  store %nyx_string* %2764, %nyx_string** %2648
  %2765 = load %nyx_string*, %nyx_string** %2648
  %2766 = getelementptr [34 x i8], [34 x i8]* @.str318, i32 0, i32 0
  %2767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %2766, i64 33)
  %2768 = call %nyx_string* @nyx_string_concat(%nyx_string* %2765, %nyx_string* %2767)
  store %nyx_string* %2768, %nyx_string** %2648
  %2769 = load %nyx_string*, %nyx_string** %2648
  %2770 = getelementptr [36 x i8], [36 x i8]* @.str319, i32 0, i32 0
  %2771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %2770, i64 35)
  %2772 = call %nyx_string* @nyx_string_concat(%nyx_string* %2769, %nyx_string* %2771)
  store %nyx_string* %2772, %nyx_string** %2648
  %2773 = load %nyx_string*, %nyx_string** %2648
  %2774 = getelementptr [39 x i8], [39 x i8]* @.str320, i32 0, i32 0
  %2775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %2774, i64 38)
  %2776 = call %nyx_string* @nyx_string_concat(%nyx_string* %2773, %nyx_string* %2775)
  store %nyx_string* %2776, %nyx_string** %2648
  %2777 = load %nyx_string*, %nyx_string** %2648
  %2778 = getelementptr [32 x i8], [32 x i8]* @.str321, i32 0, i32 0
  %2779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %2778, i64 31)
  %2780 = call %nyx_string* @nyx_string_concat(%nyx_string* %2777, %nyx_string* %2779)
  store %nyx_string* %2780, %nyx_string** %2648
  %2781 = load %nyx_string*, %nyx_string** %2648
  %2782 = getelementptr [25 x i8], [25 x i8]* @.str322, i32 0, i32 0
  %2783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %2782, i64 24)
  %2784 = call %nyx_string* @nyx_string_concat(%nyx_string* %2781, %nyx_string* %2783)
  store %nyx_string* %2784, %nyx_string** %2648
  %2785 = load %nyx_string*, %nyx_string** %2648
  %2786 = getelementptr [18 x i8], [18 x i8]* @.str323, i32 0, i32 0
  %2787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %2786, i64 17)
  %2788 = call %nyx_string* @nyx_string_concat(%nyx_string* %2785, %nyx_string* %2787)
  store %nyx_string* %2788, %nyx_string** %2648
  %2789 = load %nyx_string*, %nyx_string** %2648
  %2790 = getelementptr [40 x i8], [40 x i8]* @.str324, i32 0, i32 0
  %2791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %2790, i64 39)
  %2792 = call %nyx_string* @nyx_string_concat(%nyx_string* %2789, %nyx_string* %2791)
  store %nyx_string* %2792, %nyx_string** %2648
  %2793 = load %nyx_string*, %nyx_string** %2648
  %2794 = getelementptr [46 x i8], [46 x i8]* @.str325, i32 0, i32 0
  %2795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %2794, i64 45)
  %2796 = call %nyx_string* @nyx_string_concat(%nyx_string* %2793, %nyx_string* %2795)
  store %nyx_string* %2796, %nyx_string** %2648
  %2797 = load %nyx_string*, %nyx_string** %2648
  %2798 = getelementptr [32 x i8], [32 x i8]* @.str326, i32 0, i32 0
  %2799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %2798, i64 31)
  %2800 = call %nyx_string* @nyx_string_concat(%nyx_string* %2797, %nyx_string* %2799)
  store %nyx_string* %2800, %nyx_string** %2648
  %2801 = load %nyx_string*, %nyx_string** %2648
  %2802 = getelementptr [42 x i8], [42 x i8]* @.str327, i32 0, i32 0
  %2803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %2802, i64 41)
  %2804 = call %nyx_string* @nyx_string_concat(%nyx_string* %2801, %nyx_string* %2803)
  store %nyx_string* %2804, %nyx_string** %2648
  %2805 = load %nyx_string*, %nyx_string** %2648
  %2806 = getelementptr [44 x i8], [44 x i8]* @.str328, i32 0, i32 0
  %2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %2806, i64 43)
  %2808 = call %nyx_string* @nyx_string_concat(%nyx_string* %2805, %nyx_string* %2807)
  store %nyx_string* %2808, %nyx_string** %2648
  %2809 = load %nyx_string*, %nyx_string** %2648
  %2810 = getelementptr [33 x i8], [33 x i8]* @.str329, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %2810, i64 32)
  %2812 = call %nyx_string* @nyx_string_concat(%nyx_string* %2809, %nyx_string* %2811)
  store %nyx_string* %2812, %nyx_string** %2648
  %2813 = load %nyx_string*, %nyx_string** %2648
  %2814 = getelementptr [31 x i8], [31 x i8]* @.str330, i32 0, i32 0
  %2815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %2814, i64 30)
  %2816 = call %nyx_string* @nyx_string_concat(%nyx_string* %2813, %nyx_string* %2815)
  store %nyx_string* %2816, %nyx_string** %2648
  %2817 = load %nyx_string*, %nyx_string** %2648
  %2818 = getelementptr [19 x i8], [19 x i8]* @.str331, i32 0, i32 0
  %2819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %2818, i64 18)
  %2820 = call %nyx_string* @nyx_string_concat(%nyx_string* %2817, %nyx_string* %2819)
  store %nyx_string* %2820, %nyx_string** %2648
  %2821 = load %nyx_string*, %nyx_string** %2648
  %2822 = getelementptr [15 x i8], [15 x i8]* @.str332, i32 0, i32 0
  %2823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %2822, i64 14)
  %2824 = call %nyx_string* @nyx_string_concat(%nyx_string* %2821, %nyx_string* %2823)
  store %nyx_string* %2824, %nyx_string** %2648
  %2825 = load %nyx_string*, %nyx_string** %2648
  %2826 = getelementptr [11 x i8], [11 x i8]* @.str333, i32 0, i32 0
  %2827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %2826, i64 10)
  %2828 = call %nyx_string* @nyx_string_concat(%nyx_string* %2825, %nyx_string* %2827)
  store %nyx_string* %2828, %nyx_string** %2648
  %2829 = load %nyx_string*, %nyx_string** %2648
  %2830 = getelementptr [19 x i8], [19 x i8]* @.str334, i32 0, i32 0
  %2831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %2830, i64 18)
  %2832 = call %nyx_string* @nyx_string_concat(%nyx_string* %2829, %nyx_string* %2831)
  store %nyx_string* %2832, %nyx_string** %2648
  %2833 = load %nyx_string*, %nyx_string** %2648
  %2834 = getelementptr [7 x i8], [7 x i8]* @.str335, i32 0, i32 0
  %2835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %2834, i64 6)
  %2836 = call %nyx_string* @nyx_string_concat(%nyx_string* %2833, %nyx_string* %2835)
  store %nyx_string* %2836, %nyx_string** %2648
  %2837 = load %nyx_string*, %nyx_string** %2648
  %2838 = getelementptr [16 x i8], [16 x i8]* @.str336, i32 0, i32 0
  %2839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %2838, i64 15)
  %2840 = call %nyx_string* @nyx_string_concat(%nyx_string* %2837, %nyx_string* %2839)
  store %nyx_string* %2840, %nyx_string** %2648
  %2841 = load %nyx_string*, %nyx_string** %2648
  %2842 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %2843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %2842, i64 2)
  %2844 = call %nyx_string* @nyx_string_concat(%nyx_string* %2841, %nyx_string* %2843)
  store %nyx_string* %2844, %nyx_string** %2648
  %2845 = load %nyx_string*, %nyx_string** %2648
  %2846 = getelementptr [2 x i8], [2 x i8]* @.str338, i32 0, i32 0
  %2847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %2846, i64 1)
  %2848 = call %nyx_string* @nyx_string_concat(%nyx_string* %2845, %nyx_string* %2847)
  store %nyx_string* %2848, %nyx_string** %2648
  %2849 = load %nyx_string*, %nyx_string** %2648
  %2850 = getelementptr [77 x i8], [77 x i8]* @.str339, i32 0, i32 0
  %2851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %2850, i64 76)
  %2852 = call %nyx_string* @nyx_string_concat(%nyx_string* %2849, %nyx_string* %2851)
  store %nyx_string* %2852, %nyx_string** %2648
  %2853 = load %nyx_string*, %nyx_string** %2648
  %2854 = getelementptr [53 x i8], [53 x i8]* @.str340, i32 0, i32 0
  %2855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %2854, i64 52)
  %2856 = call %nyx_string* @nyx_string_concat(%nyx_string* %2853, %nyx_string* %2855)
  store %nyx_string* %2856, %nyx_string** %2648
  %2857 = load %nyx_string*, %nyx_string** %2648
  %2858 = getelementptr [45 x i8], [45 x i8]* @.str341, i32 0, i32 0
  %2859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %2858, i64 44)
  %2860 = call %nyx_string* @nyx_string_concat(%nyx_string* %2857, %nyx_string* %2859)
  store %nyx_string* %2860, %nyx_string** %2648
  %2861 = load %nyx_string*, %nyx_string** %2648
  %2862 = getelementptr [26 x i8], [26 x i8]* @.str342, i32 0, i32 0
  %2863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %2862, i64 25)
  %2864 = call %nyx_string* @nyx_string_concat(%nyx_string* %2861, %nyx_string* %2863)
  store %nyx_string* %2864, %nyx_string** %2648
  %2865 = load %nyx_string*, %nyx_string** %2648
  %2866 = getelementptr [39 x i8], [39 x i8]* @.str343, i32 0, i32 0
  %2867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %2866, i64 38)
  %2868 = call %nyx_string* @nyx_string_concat(%nyx_string* %2865, %nyx_string* %2867)
  store %nyx_string* %2868, %nyx_string** %2648
  %2869 = load %nyx_string*, %nyx_string** %2648
  %2870 = getelementptr [35 x i8], [35 x i8]* @.str344, i32 0, i32 0
  %2871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %2870, i64 34)
  %2872 = call %nyx_string* @nyx_string_concat(%nyx_string* %2869, %nyx_string* %2871)
  store %nyx_string* %2872, %nyx_string** %2648
  %2873 = load %nyx_string*, %nyx_string** %2648
  %2874 = getelementptr [48 x i8], [48 x i8]* @.str345, i32 0, i32 0
  %2875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %2874, i64 47)
  %2876 = call %nyx_string* @nyx_string_concat(%nyx_string* %2873, %nyx_string* %2875)
  store %nyx_string* %2876, %nyx_string** %2648
  %2877 = load %nyx_string*, %nyx_string** %2648
  %2878 = getelementptr [20 x i8], [20 x i8]* @.str346, i32 0, i32 0
  %2879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %2878, i64 19)
  %2880 = call %nyx_string* @nyx_string_concat(%nyx_string* %2877, %nyx_string* %2879)
  store %nyx_string* %2880, %nyx_string** %2648
  %2881 = load %nyx_string*, %nyx_string** %2648
  %2882 = getelementptr [32 x i8], [32 x i8]* @.str347, i32 0, i32 0
  %2883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %2882, i64 31)
  %2884 = call %nyx_string* @nyx_string_concat(%nyx_string* %2881, %nyx_string* %2883)
  store %nyx_string* %2884, %nyx_string** %2648
  %2885 = load %nyx_string*, %nyx_string** %2648
  %2886 = getelementptr [37 x i8], [37 x i8]* @.str348, i32 0, i32 0
  %2887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %2886, i64 36)
  %2888 = call %nyx_string* @nyx_string_concat(%nyx_string* %2885, %nyx_string* %2887)
  store %nyx_string* %2888, %nyx_string** %2648
  %2889 = load %nyx_string*, %nyx_string** %2648
  %2890 = getelementptr [34 x i8], [34 x i8]* @.str349, i32 0, i32 0
  %2891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %2890, i64 33)
  %2892 = call %nyx_string* @nyx_string_concat(%nyx_string* %2889, %nyx_string* %2891)
  store %nyx_string* %2892, %nyx_string** %2648
  %2893 = load %nyx_string*, %nyx_string** %2648
  %2894 = getelementptr [101 x i8], [101 x i8]* @.str350, i32 0, i32 0
  %2895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %2894, i64 100)
  %2896 = call %nyx_string* @nyx_string_concat(%nyx_string* %2893, %nyx_string* %2895)
  store %nyx_string* %2896, %nyx_string** %2648
  %2897 = load %nyx_string*, %nyx_string** %2648
  %2898 = getelementptr [56 x i8], [56 x i8]* @.str351, i32 0, i32 0
  %2899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %2898, i64 55)
  %2900 = call %nyx_string* @nyx_string_concat(%nyx_string* %2897, %nyx_string* %2899)
  store %nyx_string* %2900, %nyx_string** %2648
  %2901 = load %nyx_string*, %nyx_string** %2648
  %2902 = getelementptr [24 x i8], [24 x i8]* @.str352, i32 0, i32 0
  %2903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %2902, i64 23)
  %2904 = call %nyx_string* @nyx_string_concat(%nyx_string* %2901, %nyx_string* %2903)
  store %nyx_string* %2904, %nyx_string** %2648
  %2905 = load %nyx_string*, %nyx_string** %2648
  %2906 = getelementptr [36 x i8], [36 x i8]* @.str353, i32 0, i32 0
  %2907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %2906, i64 35)
  %2908 = call %nyx_string* @nyx_string_concat(%nyx_string* %2905, %nyx_string* %2907)
  store %nyx_string* %2908, %nyx_string** %2648
  %2909 = load %nyx_string*, %nyx_string** %2648
  %2910 = getelementptr [41 x i8], [41 x i8]* @.str354, i32 0, i32 0
  %2911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %2910, i64 40)
  %2912 = call %nyx_string* @nyx_string_concat(%nyx_string* %2909, %nyx_string* %2911)
  store %nyx_string* %2912, %nyx_string** %2648
  %2913 = load %nyx_string*, %nyx_string** %2648
  %2914 = getelementptr [58 x i8], [58 x i8]* @.str355, i32 0, i32 0
  %2915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %2914, i64 57)
  %2916 = call %nyx_string* @nyx_string_concat(%nyx_string* %2913, %nyx_string* %2915)
  store %nyx_string* %2916, %nyx_string** %2648
  %2917 = load %nyx_string*, %nyx_string** %2648
  %2918 = getelementptr [99 x i8], [99 x i8]* @.str356, i32 0, i32 0
  %2919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %2918, i64 98)
  %2920 = call %nyx_string* @nyx_string_concat(%nyx_string* %2917, %nyx_string* %2919)
  store %nyx_string* %2920, %nyx_string** %2648
  %2921 = load %nyx_string*, %nyx_string** %2648
  %2922 = getelementptr [23 x i8], [23 x i8]* @.str357, i32 0, i32 0
  %2923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %2922, i64 22)
  %2924 = call %nyx_string* @nyx_string_concat(%nyx_string* %2921, %nyx_string* %2923)
  store %nyx_string* %2924, %nyx_string** %2648
  %2925 = load %nyx_string*, %nyx_string** %2648
  %2926 = getelementptr [11 x i8], [11 x i8]* @.str358, i32 0, i32 0
  %2927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %2926, i64 10)
  %2928 = call %nyx_string* @nyx_string_concat(%nyx_string* %2925, %nyx_string* %2927)
  store %nyx_string* %2928, %nyx_string** %2648
  %2929 = load %nyx_string*, %nyx_string** %2648
  %2930 = getelementptr [19 x i8], [19 x i8]* @.str359, i32 0, i32 0
  %2931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %2930, i64 18)
  %2932 = call %nyx_string* @nyx_string_concat(%nyx_string* %2929, %nyx_string* %2931)
  store %nyx_string* %2932, %nyx_string** %2648
  %2933 = load %nyx_string*, %nyx_string** %2648
  %2934 = getelementptr [7 x i8], [7 x i8]* @.str360, i32 0, i32 0
  %2935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %2934, i64 6)
  %2936 = call %nyx_string* @nyx_string_concat(%nyx_string* %2933, %nyx_string* %2935)
  store %nyx_string* %2936, %nyx_string** %2648
  %2937 = load %nyx_string*, %nyx_string** %2648
  %2938 = getelementptr [17 x i8], [17 x i8]* @.str361, i32 0, i32 0
  %2939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %2938, i64 16)
  %2940 = call %nyx_string* @nyx_string_concat(%nyx_string* %2937, %nyx_string* %2939)
  store %nyx_string* %2940, %nyx_string** %2648
  %2941 = load %nyx_string*, %nyx_string** %2648
  %2942 = getelementptr [3 x i8], [3 x i8]* @.str362, i32 0, i32 0
  %2943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %2942, i64 2)
  %2944 = call %nyx_string* @nyx_string_concat(%nyx_string* %2941, %nyx_string* %2943)
  store %nyx_string* %2944, %nyx_string** %2648
  %2945 = load %nyx_string*, %nyx_string** %2648
  %2946 = getelementptr [2 x i8], [2 x i8]* @.str363, i32 0, i32 0
  %2947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %2946, i64 1)
  %2948 = call %nyx_string* @nyx_string_concat(%nyx_string* %2945, %nyx_string* %2947)
  store %nyx_string* %2948, %nyx_string** %2648
  %2949 = load %nyx_string*, %nyx_string** %2648
  %2950 = getelementptr [52 x i8], [52 x i8]* @.str364, i32 0, i32 0
  %2951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %2950, i64 51)
  %2952 = call %nyx_string* @nyx_string_concat(%nyx_string* %2949, %nyx_string* %2951)
  store %nyx_string* %2952, %nyx_string** %2648
  %2953 = load %nyx_string*, %nyx_string** %2648
  %2954 = getelementptr [39 x i8], [39 x i8]* @.str365, i32 0, i32 0
  %2955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %2954, i64 38)
  %2956 = call %nyx_string* @nyx_string_concat(%nyx_string* %2953, %nyx_string* %2955)
  store %nyx_string* %2956, %nyx_string** %2648
  %2957 = load %nyx_string*, %nyx_string** %2648
  %2958 = getelementptr [126 x i8], [126 x i8]* @.str366, i32 0, i32 0
  %2959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %2958, i64 125)
  %2960 = call %nyx_string* @nyx_string_concat(%nyx_string* %2957, %nyx_string* %2959)
  store %nyx_string* %2960, %nyx_string** %2648
  %2961 = load %nyx_string*, %nyx_string** %2648
  %2962 = getelementptr [89 x i8], [89 x i8]* @.str367, i32 0, i32 0
  %2963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %2962, i64 88)
  %2964 = call %nyx_string* @nyx_string_concat(%nyx_string* %2961, %nyx_string* %2963)
  store %nyx_string* %2964, %nyx_string** %2648
  %2965 = load %nyx_string*, %nyx_string** %2648
  %2966 = getelementptr [3 x i8], [3 x i8]* @.str368, i32 0, i32 0
  %2967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %2966, i64 2)
  %2968 = call %nyx_string* @nyx_string_concat(%nyx_string* %2965, %nyx_string* %2967)
  store %nyx_string* %2968, %nyx_string** %2648
  %2969 = call { i64, i8* }* @gotchas_table()
  %2970 = alloca { i64, i8* }*
  store { i64, i8* }* %2969, { i64, i8* }** %2970
  %2971 = alloca i64
  store i64 0, i64* %2971
  %2972 = getelementptr [8 x i8], [8 x i8]* @.str369, i32 0, i32 0
  %2973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %2972, i64 7)
  %2974 = alloca %nyx_string*
  store %nyx_string* %2973, %nyx_string** %2974
  %2975 = getelementptr [1 x i8], [1 x i8]* @.str370, i32 0, i32 0
  %2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %2975, i64 0)
  %2977 = alloca %nyx_string*
  store %nyx_string* %2976, %nyx_string** %2977
  %2978 = getelementptr [3 x i8], [3 x i8]* @.str371, i32 0, i32 0
  %2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %2978, i64 2)
  %2980 = alloca %nyx_string*
  store %nyx_string* %2979, %nyx_string** %2980
  %2981 = getelementptr [9 x i8], [9 x i8]* @.str372, i32 0, i32 0
  %2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %2981, i64 8)
  %2983 = alloca %nyx_string*
  store %nyx_string* %2982, %nyx_string** %2983
  %2984 = getelementptr [9 x i8], [9 x i8]* @.str373, i32 0, i32 0
  %2985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %2984, i64 8)
  %2986 = alloca %nyx_string*
  store %nyx_string* %2985, %nyx_string** %2986
  %2987 = getelementptr [2 x i8], [2 x i8]* @.str374, i32 0, i32 0
  %2988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %2987, i64 1)
  %2989 = alloca %nyx_string*
  store %nyx_string* %2988, %nyx_string** %2989
  %2990 = getelementptr [14 x i8], [14 x i8]* @.str375, i32 0, i32 0
  %2991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %2990, i64 13)
  %2992 = alloca %nyx_string*
  store %nyx_string* %2991, %nyx_string** %2992
  %2993 = getelementptr [3 x i8], [3 x i8]* @.str376, i32 0, i32 0
  %2994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %2993, i64 2)
  %2995 = alloca %nyx_string*
  store %nyx_string* %2994, %nyx_string** %2995
  %2996 = getelementptr [5 x i8], [5 x i8]* @.str377, i32 0, i32 0
  %2997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %2996, i64 4)
  %2998 = alloca %nyx_string*
  store %nyx_string* %2997, %nyx_string** %2998
  %2999 = getelementptr [37 x i8], [37 x i8]* @.str378, i32 0, i32 0
  %3000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %2999, i64 36)
  %3001 = alloca %nyx_string*
  store %nyx_string* %3000, %nyx_string** %3001
  %3002 = getelementptr [4 x i8], [4 x i8]* @.str379, i32 0, i32 0
  %3003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3002, i64 3)
  %3004 = alloca %nyx_string*
  store %nyx_string* %3003, %nyx_string** %3004
  %3005 = getelementptr [33 x i8], [33 x i8]* @.str380, i32 0, i32 0
  %3006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3005, i64 32)
  %3007 = alloca %nyx_string*
  store %nyx_string* %3006, %nyx_string** %3007
  %3008 = getelementptr [3 x i8], [3 x i8]* @.str381, i32 0, i32 0
  %3009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3008, i64 2)
  %3010 = alloca %nyx_string*
  store %nyx_string* %3009, %nyx_string** %3010
  %3011 = getelementptr [28 x i8], [28 x i8]* @.str382, i32 0, i32 0
  %3012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3011, i64 27)
  %3013 = alloca %nyx_string*
  store %nyx_string* %3012, %nyx_string** %3013
  %3014 = getelementptr [3 x i8], [3 x i8]* @.str383, i32 0, i32 0
  %3015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3014, i64 2)
  %3016 = alloca %nyx_string*
  store %nyx_string* %3015, %nyx_string** %3016
  %3017 = call i8* @llvm.stacksave()
  br label %while_cond521
while_cond521:
  %3018 = load i64, i64* %2971
  %3019 = load { i64, i8* }*, { i64, i8* }** %2970
  %3020 = call i64 @nyx_array_length({ i64, i8* }* %3019)
  %3021 = icmp slt i64 %3018, %3020
  br i1 %3021, label %while_body522, label %while_end523
while_body522:
  call void @llvm.stackrestore(i8* %3017)
  %3022 = load { i64, i8* }*, { i64, i8* }** %2970
  %3023 = load i64, i64* %2971
  %3024 = call i64 @nyx_array_get({ i64, i8* }* %3022, i64 %3023)
  %3025 = inttoptr i64 %3024 to { i64, i8* }*
  %3026 = alloca { i64, i8* }*
  store { i64, i8* }* %3025, { i64, i8* }** %3026
  %3027 = load { i64, i8* }*, { i64, i8* }** %3026
  %3028 = load %nyx_string*, %nyx_string** %2974
  %3029 = call %nyx_string* @gotcha_field({ i64, i8* }* %3027, %nyx_string* %3028)
  %3030 = alloca %nyx_string*
  store %nyx_string* %3029, %nyx_string** %3030
  %3031 = load %nyx_string*, %nyx_string** %3030
  %3032 = load %nyx_string*, %nyx_string** %2977
  %3033 = call i1 @nyx_string_equals(%nyx_string* %3031, %nyx_string* %3032)
  %3034 = xor i1 %3033, true
  br i1 %3034, label %then524, label %else525
then524:
  %3035 = load { i64, i8* }*, { i64, i8* }** %3026
  %3036 = load %nyx_string*, %nyx_string** %2980
  %3037 = call %nyx_string* @gotcha_field({ i64, i8* }* %3035, %nyx_string* %3036)
  %3038 = alloca %nyx_string*
  store %nyx_string* %3037, %nyx_string** %3038
  %3039 = load { i64, i8* }*, { i64, i8* }** %3026
  %3040 = load %nyx_string*, %nyx_string** %2983
  %3041 = call %nyx_string* @gotcha_field({ i64, i8* }* %3039, %nyx_string* %3040)
  %3042 = alloca %nyx_string*
  store %nyx_string* %3041, %nyx_string** %3042
  %3043 = load { i64, i8* }*, { i64, i8* }** %3026
  %3044 = load %nyx_string*, %nyx_string** %2986
  %3045 = call %nyx_string* @gotcha_field({ i64, i8* }* %3043, %nyx_string* %3044)
  %3046 = alloca %nyx_string*
  store %nyx_string* %3045, %nyx_string** %3046
  %3047 = load %nyx_string*, %nyx_string** %2648
  %3048 = load %nyx_string*, %nyx_string** %2989
  %3049 = call %nyx_string* @nyx_string_concat(%nyx_string* %3047, %nyx_string* %3048)
  store %nyx_string* %3049, %nyx_string** %2648
  %3050 = load %nyx_string*, %nyx_string** %2648
  %3051 = load %nyx_string*, %nyx_string** %2992
  %3052 = call %nyx_string* @nyx_string_concat(%nyx_string* %3050, %nyx_string* %3051)
  %3053 = load %nyx_string*, %nyx_string** %3038
  %3054 = call %nyx_string* @nyx_string_concat(%nyx_string* %3052, %nyx_string* %3053)
  %3055 = load %nyx_string*, %nyx_string** %2995
  %3056 = call %nyx_string* @nyx_string_concat(%nyx_string* %3054, %nyx_string* %3055)
  %3057 = load %nyx_string*, %nyx_string** %3042
  %3058 = call %nyx_string* @nx_escape(%nyx_string* %3057)
  %3059 = call %nyx_string* @nyx_string_concat(%nyx_string* %3056, %nyx_string* %3058)
  %3060 = load %nyx_string*, %nyx_string** %2998
  %3061 = call %nyx_string* @nyx_string_concat(%nyx_string* %3059, %nyx_string* %3060)
  store %nyx_string* %3061, %nyx_string** %2648
  %3062 = load %nyx_string*, %nyx_string** %2648
  %3063 = load %nyx_string*, %nyx_string** %3001
  %3064 = call %nyx_string* @nyx_string_concat(%nyx_string* %3062, %nyx_string* %3063)
  %3065 = load %nyx_string*, %nyx_string** %3030
  %3066 = call %nyx_string* @nx_escape(%nyx_string* %3065)
  %3067 = call %nyx_string* @nyx_string_concat(%nyx_string* %3064, %nyx_string* %3066)
  %3068 = load %nyx_string*, %nyx_string** %3004
  %3069 = call %nyx_string* @nyx_string_concat(%nyx_string* %3067, %nyx_string* %3068)
  store %nyx_string* %3069, %nyx_string** %2648
  %3070 = load %nyx_string*, %nyx_string** %2648
  %3071 = load %nyx_string*, %nyx_string** %3007
  %3072 = call %nyx_string* @nyx_string_concat(%nyx_string* %3070, %nyx_string* %3071)
  %3073 = load %nyx_string*, %nyx_string** %3038
  %3074 = call %nyx_string* @nyx_string_concat(%nyx_string* %3072, %nyx_string* %3073)
  %3075 = load %nyx_string*, %nyx_string** %3010
  %3076 = call %nyx_string* @nyx_string_concat(%nyx_string* %3074, %nyx_string* %3075)
  %3077 = load %nyx_string*, %nyx_string** %3046
  %3078 = call %nyx_string* @nyx_string_concat(%nyx_string* %3076, %nyx_string* %3077)
  %3079 = load %nyx_string*, %nyx_string** %3013
  %3080 = call %nyx_string* @nyx_string_concat(%nyx_string* %3078, %nyx_string* %3079)
  store %nyx_string* %3080, %nyx_string** %2648
  %3081 = load %nyx_string*, %nyx_string** %2648
  %3082 = load %nyx_string*, %nyx_string** %3016
  %3083 = call %nyx_string* @nyx_string_concat(%nyx_string* %3081, %nyx_string* %3082)
  store %nyx_string* %3083, %nyx_string** %2648
  br label %merge526
else525:
  br label %merge526
merge526:
  %3084 = load i64, i64* %2971
  %3085 = add i64 %3084, 1
  store i64 %3085, i64* %2971
  br label %while_cond521
while_end523:
  %3086 = load %nyx_string*, %nyx_string** %2648
  %3087 = getelementptr [2 x i8], [2 x i8]* @.str384, i32 0, i32 0
  %3088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3087, i64 1)
  %3089 = call %nyx_string* @nyx_string_concat(%nyx_string* %3086, %nyx_string* %3088)
  store %nyx_string* %3089, %nyx_string** %2648
  %3090 = load %nyx_string*, %nyx_string** %2648
  %3091 = getelementptr [47 x i8], [47 x i8]* @.str385, i32 0, i32 0
  %3092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3091, i64 46)
  %3093 = call %nyx_string* @nyx_string_concat(%nyx_string* %3090, %nyx_string* %3092)
  store %nyx_string* %3093, %nyx_string** %2648
  %3094 = load %nyx_string*, %nyx_string** %2648
  %3095 = getelementptr [39 x i8], [39 x i8]* @.str386, i32 0, i32 0
  %3096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3095, i64 38)
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3096)
  store %nyx_string* %3097, %nyx_string** %2648
  %3098 = load %nyx_string*, %nyx_string** %2648
  %3099 = getelementptr [50 x i8], [50 x i8]* @.str387, i32 0, i32 0
  %3100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3099, i64 49)
  %3101 = call %nyx_string* @nyx_string_concat(%nyx_string* %3098, %nyx_string* %3100)
  store %nyx_string* %3101, %nyx_string** %2648
  %3102 = load %nyx_string*, %nyx_string** %2648
  %3103 = getelementptr [20 x i8], [20 x i8]* @.str388, i32 0, i32 0
  %3104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3103, i64 19)
  %3105 = call %nyx_string* @nyx_string_concat(%nyx_string* %3102, %nyx_string* %3104)
  store %nyx_string* %3105, %nyx_string** %2648
  %3106 = load %nyx_string*, %nyx_string** %2648
  %3107 = getelementptr [32 x i8], [32 x i8]* @.str389, i32 0, i32 0
  %3108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3107, i64 31)
  %3109 = call %nyx_string* @nyx_string_concat(%nyx_string* %3106, %nyx_string* %3108)
  store %nyx_string* %3109, %nyx_string** %2648
  %3110 = load %nyx_string*, %nyx_string** %2648
  %3111 = getelementptr [34 x i8], [34 x i8]* @.str390, i32 0, i32 0
  %3112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3111, i64 33)
  %3113 = call %nyx_string* @nyx_string_concat(%nyx_string* %3110, %nyx_string* %3112)
  store %nyx_string* %3113, %nyx_string** %2648
  %3114 = load %nyx_string*, %nyx_string** %2648
  %3115 = getelementptr [114 x i8], [114 x i8]* @.str391, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3115, i64 113)
  %3117 = call %nyx_string* @nyx_string_concat(%nyx_string* %3114, %nyx_string* %3116)
  store %nyx_string* %3117, %nyx_string** %2648
  %3118 = load %nyx_string*, %nyx_string** %2648
  %3119 = getelementptr [19 x i8], [19 x i8]* @.str392, i32 0, i32 0
  %3120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3119, i64 18)
  %3121 = call %nyx_string* @nyx_string_concat(%nyx_string* %3118, %nyx_string* %3120)
  store %nyx_string* %3121, %nyx_string** %2648
  %3122 = load %nyx_string*, %nyx_string** %2648
  %3123 = getelementptr [7 x i8], [7 x i8]* @.str393, i32 0, i32 0
  %3124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3123, i64 6)
  %3125 = call %nyx_string* @nyx_string_concat(%nyx_string* %3122, %nyx_string* %3124)
  store %nyx_string* %3125, %nyx_string** %2648
  %3126 = load %nyx_string*, %nyx_string** %2648
  %3127 = getelementptr [3 x i8], [3 x i8]* @.str394, i32 0, i32 0
  %3128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3127, i64 2)
  %3129 = call %nyx_string* @nyx_string_concat(%nyx_string* %3126, %nyx_string* %3128)
  store %nyx_string* %3129, %nyx_string** %2648
  %3130 = load %nyx_string*, %nyx_string** %2648
  ret %nyx_string* %3130
}

define internal i64 @write_constitution_test(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %3131 = load %nyx_string*, %nyx_string** %dir.ptr
  %3132 = getelementptr [28 x i8], [28 x i8]* @.str395, i32 0, i32 0
  %3133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3132, i64 27)
  %3134 = call %nyx_string* @nyx_string_concat(%nyx_string* %3131, %nyx_string* %3133)
  %3135 = alloca %nyx_string*
  store %nyx_string* %3134, %nyx_string** %3135
  %3136 = call %nyx_string* @constitution_test_body()
  %3137 = alloca %nyx_string*
  store %nyx_string* %3136, %nyx_string** %3137
  %3138 = load %nyx_string*, %nyx_string** %3135
  %3139 = call i8* @nyx_string_to_cstr(%nyx_string* %3138)
  %3140 = call i1 @nyx_file_exists(i8* %3139)
  br i1 %3140, label %then527, label %else528
then527:
  %3141 = load %nyx_string*, %nyx_string** %3135
  %3142 = call i8* @nyx_string_to_cstr(%nyx_string* %3141)
  %3143 = call %nyx_string* @nyx_read_file(i8* %3142)
  %3144 = alloca %nyx_string*
  store %nyx_string* %3143, %nyx_string** %3144
  %3145 = load %nyx_string*, %nyx_string** %3144
  %3146 = load %nyx_string*, %nyx_string** %3137
  %3147 = call i1 @nyx_string_equals(%nyx_string* %3145, %nyx_string* %3146)
  br i1 %3147, label %then530, label %else531
then530:
  ret i64 0
else531:
  br label %merge532
merge532:
  %3148 = load %nyx_string*, %nyx_string** %3144
  %3149 = call %nyx_string* @sdd_generated_marker()
  %3150 = call i64 @nyx_string_index_of(%nyx_string* %3148, %nyx_string* %3149)
  %3151 = icmp slt i64 %3150, 0
  br i1 %3151, label %then533, label %else534
then533:
  ret i64 2
else534:
  br label %merge535
merge535:
  br label %merge529
else528:
  br label %merge529
merge529:
  %3152 = load %nyx_string*, %nyx_string** %3135
  %3153 = load %nyx_string*, %nyx_string** %3137
  %3154 = call i8* @nyx_string_to_cstr(%nyx_string* %3152)
  %3155 = call i8* @nyx_string_to_cstr(%nyx_string* %3153)
  %3156 = call i1 @nyx_write_file(i8* %3154, i8* %3155)
  ret i64 1
}

define internal i1 @add_agents_triggers(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3157 = load %nyx_string*, %nyx_string** %dir.ptr
  %3158 = getelementptr [11 x i8], [11 x i8]* @.str396, i32 0, i32 0
  %3159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3158, i64 10)
  %3160 = call %nyx_string* @nyx_string_concat(%nyx_string* %3157, %nyx_string* %3159)
  %3161 = alloca %nyx_string*
  store %nyx_string* %3160, %nyx_string** %3161
  %3162 = load %nyx_string*, %nyx_string** %3161
  %3163 = call i8* @nyx_string_to_cstr(%nyx_string* %3162)
  %3164 = call i1 @nyx_file_exists(i8* %3163)
  %3165 = icmp eq i1 %3164, 0
  br i1 %3165, label %then536, label %else537
then536:
  %3166 = getelementptr [30 x i8], [30 x i8]* @.str397, i32 0, i32 0
  %3167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3166, i64 29)
  %3168 = load %nyx_string*, %nyx_string** %dir.ptr
  %3169 = call %nyx_string* @nyx_string_concat(%nyx_string* %3167, %nyx_string* %3168)
  %3170 = getelementptr [80 x i8], [80 x i8]* @.str398, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3170, i64 79)
  %3172 = call %nyx_string* @nyx_string_concat(%nyx_string* %3169, %nyx_string* %3171)
  %3173 = call i8* @nyx_string_to_cstr(%nyx_string* %3172)
  call void @nyx_print_string(i8* %3173)
  ret i1 0
else537:
  br label %merge538
merge538:
  %3174 = load %nyx_string*, %nyx_string** %3161
  %3175 = call i8* @nyx_string_to_cstr(%nyx_string* %3174)
  %3176 = call %nyx_string* @nyx_read_file(i8* %3175)
  %3177 = alloca %nyx_string*
  store %nyx_string* %3176, %nyx_string** %3177
  %3178 = load %nyx_string*, %nyx_string** %3177
  %3179 = getelementptr [21 x i8], [21 x i8]* @.str399, i32 0, i32 0
  %3180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3179, i64 20)
  %3181 = call i64 @nyx_string_index_of(%nyx_string* %3178, %nyx_string* %3180)
  %3182 = icmp sge i64 %3181, 0
  br i1 %3182, label %then539, label %else540
then539:
  %3183 = load %nyx_string*, %nyx_string** %lang.ptr
  %3184 = getelementptr [47 x i8], [47 x i8]* @.str400, i32 0, i32 0
  %3185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3184, i64 46)
  %3186 = getelementptr [47 x i8], [47 x i8]* @.str401, i32 0, i32 0
  %3187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3186, i64 46)
  %3188 = call %nyx_string* @sdd_msg(%nyx_string* %3183, %nyx_string* %3185, %nyx_string* %3187)
  %3189 = call i8* @nyx_string_to_cstr(%nyx_string* %3188)
  call void @nyx_print_string(i8* %3189)
  ret i1 0
else540:
  br label %merge541
merge541:
  %3190 = getelementptr [22 x i8], [22 x i8]* @.str402, i32 0, i32 0
  %3191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3190, i64 21)
  %3192 = alloca %nyx_string*
  store %nyx_string* %3191, %nyx_string** %3192
  %3193 = load %nyx_string*, %nyx_string** %lang.ptr
  %3194 = getelementptr [3 x i8], [3 x i8]* @.str403, i32 0, i32 0
  %3195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3194, i64 2)
  %3196 = call i1 @nyx_string_equals(%nyx_string* %3193, %nyx_string* %3195)
  br i1 %3196, label %then542, label %else543
then542:
  %3197 = load %nyx_string*, %nyx_string** %3192
  %3198 = getelementptr [150 x i8], [150 x i8]* @.str404, i32 0, i32 0
  %3199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3198, i64 149)
  %3200 = call %nyx_string* @nyx_string_concat(%nyx_string* %3197, %nyx_string* %3199)
  store %nyx_string* %3200, %nyx_string** %3192
  %3201 = load %nyx_string*, %nyx_string** %3192
  %3202 = getelementptr [122 x i8], [122 x i8]* @.str405, i32 0, i32 0
  %3203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3202, i64 121)
  %3204 = call %nyx_string* @nyx_string_concat(%nyx_string* %3201, %nyx_string* %3203)
  store %nyx_string* %3204, %nyx_string** %3192
  br label %merge544
else543:
  %3205 = load %nyx_string*, %nyx_string** %3192
  %3206 = getelementptr [152 x i8], [152 x i8]* @.str406, i32 0, i32 0
  %3207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3206, i64 151)
  %3208 = call %nyx_string* @nyx_string_concat(%nyx_string* %3205, %nyx_string* %3207)
  store %nyx_string* %3208, %nyx_string** %3192
  %3209 = load %nyx_string*, %nyx_string** %3192
  %3210 = getelementptr [113 x i8], [113 x i8]* @.str407, i32 0, i32 0
  %3211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3210, i64 112)
  %3212 = call %nyx_string* @nyx_string_concat(%nyx_string* %3209, %nyx_string* %3211)
  store %nyx_string* %3212, %nyx_string** %3192
  br label %merge544
merge544:
  %3213 = getelementptr [19 x i8], [19 x i8]* @.str408, i32 0, i32 0
  %3214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3213, i64 18)
  %3215 = alloca %nyx_string*
  store %nyx_string* %3214, %nyx_string** %3215
  %3216 = load %nyx_string*, %nyx_string** %3177
  %3217 = load %nyx_string*, %nyx_string** %3215
  %3218 = call i64 @nyx_string_index_of(%nyx_string* %3216, %nyx_string* %3217)
  %3219 = alloca i64
  store i64 %3218, i64* %3219
  %3220 = load i64, i64* %3219
  %3221 = icmp slt i64 %3220, 0
  br i1 %3221, label %then545, label %else546
then545:
  %3222 = load %nyx_string*, %nyx_string** %3161
  %3223 = load %nyx_string*, %nyx_string** %3177
  %3224 = getelementptr [2 x i8], [2 x i8]* @.str409, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3224, i64 1)
  %3226 = call %nyx_string* @nyx_string_concat(%nyx_string* %3223, %nyx_string* %3225)
  %3227 = load %nyx_string*, %nyx_string** %3192
  %3228 = call %nyx_string* @nyx_string_concat(%nyx_string* %3226, %nyx_string* %3227)
  %3229 = call i8* @nyx_string_to_cstr(%nyx_string* %3222)
  %3230 = call i8* @nyx_string_to_cstr(%nyx_string* %3228)
  %3231 = call i1 @nyx_write_file(i8* %3229, i8* %3230)
  br label %merge547
else546:
  %3232 = load %nyx_string*, %nyx_string** %3161
  %3233 = load %nyx_string*, %nyx_string** %3177
  %3234 = load i64, i64* %3219
  %3235 = call %nyx_string* @nyx_string_substring(%nyx_string* %3233, i64 0, i64 %3234)
  %3236 = load %nyx_string*, %nyx_string** %3192
  %3237 = call %nyx_string* @nyx_string_concat(%nyx_string* %3235, %nyx_string* %3236)
  %3238 = getelementptr [2 x i8], [2 x i8]* @.str410, i32 0, i32 0
  %3239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3238, i64 1)
  %3240 = call %nyx_string* @nyx_string_concat(%nyx_string* %3237, %nyx_string* %3239)
  %3241 = load %nyx_string*, %nyx_string** %3177
  %3242 = load i64, i64* %3219
  %3243 = load %nyx_string*, %nyx_string** %3177
  %3244 = call i64 @nyx_string_byte_length(%nyx_string* %3243)
  %3245 = call %nyx_string* @nyx_string_substring(%nyx_string* %3241, i64 %3242, i64 %3244)
  %3246 = call %nyx_string* @nyx_string_concat(%nyx_string* %3240, %nyx_string* %3245)
  %3247 = call i8* @nyx_string_to_cstr(%nyx_string* %3232)
  %3248 = call i8* @nyx_string_to_cstr(%nyx_string* %3246)
  %3249 = call i1 @nyx_write_file(i8* %3247, i8* %3248)
  br label %merge547
merge547:
  %3250 = load %nyx_string*, %nyx_string** %lang.ptr
  %3251 = getelementptr [36 x i8], [36 x i8]* @.str411, i32 0, i32 0
  %3252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3251, i64 35)
  %3253 = getelementptr [40 x i8], [40 x i8]* @.str412, i32 0, i32 0
  %3254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3253, i64 39)
  %3255 = call %nyx_string* @sdd_msg(%nyx_string* %3250, %nyx_string* %3252, %nyx_string* %3254)
  %3256 = call i8* @nyx_string_to_cstr(%nyx_string* %3255)
  call void @nyx_print_string(i8* %3256)
  ret i1 1
}

define internal i1 @run_sdd_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3257 = getelementptr [11 x i8], [11 x i8]* @.str413, i32 0, i32 0
  %3258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3257, i64 10)
  %3259 = load %nyx_string*, %nyx_string** %dir.ptr
  %3260 = call %nyx_string* @nyx_string_concat(%nyx_string* %3258, %nyx_string* %3259)
  %3261 = getelementptr [16 x i8], [16 x i8]* @.str414, i32 0, i32 0
  %3262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3261, i64 15)
  %3263 = call %nyx_string* @nyx_string_concat(%nyx_string* %3260, %nyx_string* %3262)
  %3264 = call i8* @nyx_string_to_cstr(%nyx_string* %3263)
  %3265 = call %nyx_string* @nyx_exec(i8* %3264)
  %3266 = load %nyx_string*, %nyx_string** %dir.ptr
  %3267 = load %nyx_string*, %nyx_string** %lang.ptr
  %3268 = call i64 @write_evidence(%nyx_string* %3266, %nyx_string* %3267)
  %3269 = alloca i64
  store i64 %3268, i64* %3269
  %3270 = load i64, i64* %3269
  %3271 = icmp eq i64 %3270, 2
  br i1 %3271, label %then548, label %else549
then548:
  %3272 = load %nyx_string*, %nyx_string** %lang.ptr
  %3273 = getelementptr [59 x i8], [59 x i8]* @.str415, i32 0, i32 0
  %3274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3273, i64 58)
  %3275 = call %nyx_string* @toolchain_version()
  %3276 = call %nyx_string* @nyx_string_concat(%nyx_string* %3274, %nyx_string* %3275)
  %3277 = getelementptr [4 x i8], [4 x i8]* @.str416, i32 0, i32 0
  %3278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3277, i64 3)
  %3279 = call %nyx_string* @nyx_string_concat(%nyx_string* %3276, %nyx_string* %3278)
  %3280 = getelementptr [65 x i8], [65 x i8]* @.str417, i32 0, i32 0
  %3281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3280, i64 64)
  %3282 = call %nyx_string* @toolchain_version()
  %3283 = call %nyx_string* @nyx_string_concat(%nyx_string* %3281, %nyx_string* %3282)
  %3284 = getelementptr [4 x i8], [4 x i8]* @.str418, i32 0, i32 0
  %3285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3284, i64 3)
  %3286 = call %nyx_string* @nyx_string_concat(%nyx_string* %3283, %nyx_string* %3285)
  %3287 = call %nyx_string* @sdd_msg(%nyx_string* %3272, %nyx_string* %3279, %nyx_string* %3286)
  %3288 = call i8* @nyx_string_to_cstr(%nyx_string* %3287)
  call void @nyx_print_string(i8* %3288)
  br label %merge550
else549:
  br label %merge550
merge550:
  %3289 = load i64, i64* %3269
  %3290 = icmp eq i64 %3289, 1
  br i1 %3290, label %then551, label %else552
then551:
  %3291 = load %nyx_string*, %nyx_string** %lang.ptr
  %3292 = getelementptr [34 x i8], [34 x i8]* @.str419, i32 0, i32 0
  %3293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3292, i64 33)
  %3294 = call %nyx_string* @toolchain_version()
  %3295 = call %nyx_string* @nyx_string_concat(%nyx_string* %3293, %nyx_string* %3294)
  %3296 = getelementptr [4 x i8], [4 x i8]* @.str420, i32 0, i32 0
  %3297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3296, i64 3)
  %3298 = call %nyx_string* @nyx_string_concat(%nyx_string* %3295, %nyx_string* %3297)
  %3299 = getelementptr [33 x i8], [33 x i8]* @.str421, i32 0, i32 0
  %3300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3299, i64 32)
  %3301 = call %nyx_string* @toolchain_version()
  %3302 = call %nyx_string* @nyx_string_concat(%nyx_string* %3300, %nyx_string* %3301)
  %3303 = getelementptr [4 x i8], [4 x i8]* @.str422, i32 0, i32 0
  %3304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3303, i64 3)
  %3305 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3304)
  %3306 = call %nyx_string* @sdd_msg(%nyx_string* %3291, %nyx_string* %3298, %nyx_string* %3305)
  %3307 = call i8* @nyx_string_to_cstr(%nyx_string* %3306)
  call void @nyx_print_string(i8* %3307)
  br label %merge553
else552:
  br label %merge553
merge553:
  %3308 = load i64, i64* %3269
  %3309 = icmp eq i64 %3308, 0
  br i1 %3309, label %then554, label %else555
then554:
  %3310 = load %nyx_string*, %nyx_string** %lang.ptr
  %3311 = getelementptr [41 x i8], [41 x i8]* @.str423, i32 0, i32 0
  %3312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3311, i64 40)
  %3313 = call %nyx_string* @toolchain_version()
  %3314 = call %nyx_string* @nyx_string_concat(%nyx_string* %3312, %nyx_string* %3313)
  %3315 = getelementptr [4 x i8], [4 x i8]* @.str424, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3315, i64 3)
  %3317 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3316)
  %3318 = getelementptr [39 x i8], [39 x i8]* @.str425, i32 0, i32 0
  %3319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3318, i64 38)
  %3320 = call %nyx_string* @toolchain_version()
  %3321 = call %nyx_string* @nyx_string_concat(%nyx_string* %3319, %nyx_string* %3320)
  %3322 = getelementptr [4 x i8], [4 x i8]* @.str426, i32 0, i32 0
  %3323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3322, i64 3)
  %3324 = call %nyx_string* @nyx_string_concat(%nyx_string* %3321, %nyx_string* %3323)
  %3325 = call %nyx_string* @sdd_msg(%nyx_string* %3310, %nyx_string* %3317, %nyx_string* %3324)
  %3326 = call i8* @nyx_string_to_cstr(%nyx_string* %3325)
  call void @nyx_print_string(i8* %3326)
  br label %merge556
else555:
  br label %merge556
merge556:
  %3327 = load %nyx_string*, %nyx_string** %dir.ptr
  %3328 = getelementptr [28 x i8], [28 x i8]* @.str427, i32 0, i32 0
  %3329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3328, i64 27)
  %3330 = call %nyx_string* @nyx_string_concat(%nyx_string* %3327, %nyx_string* %3329)
  %3331 = call i8* @nyx_string_to_cstr(%nyx_string* %3330)
  %3332 = call i1 @nyx_file_exists(i8* %3331)
  br i1 %3332, label %then557, label %else558
then557:
  %3333 = load %nyx_string*, %nyx_string** %dir.ptr
  %3334 = call i64 @write_constitution_test(%nyx_string* %3333)
  %3335 = alloca i64
  store i64 %3334, i64* %3335
  %3336 = load i64, i64* %3335
  %3337 = icmp eq i64 %3336, 1
  br i1 %3337, label %then560, label %else561
then560:
  %3338 = load %nyx_string*, %nyx_string** %lang.ptr
  %3339 = getelementptr [42 x i8], [42 x i8]* @.str428, i32 0, i32 0
  %3340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3339, i64 41)
  %3341 = getelementptr [41 x i8], [41 x i8]* @.str429, i32 0, i32 0
  %3342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3341, i64 40)
  %3343 = call %nyx_string* @sdd_msg(%nyx_string* %3338, %nyx_string* %3340, %nyx_string* %3342)
  %3344 = call i8* @nyx_string_to_cstr(%nyx_string* %3343)
  call void @nyx_print_string(i8* %3344)
  br label %merge562
else561:
  br label %merge562
merge562:
  %3345 = load i64, i64* %3335
  %3346 = icmp eq i64 %3345, 2
  br i1 %3346, label %then563, label %else564
then563:
  %3347 = load %nyx_string*, %nyx_string** %lang.ptr
  %3348 = getelementptr [67 x i8], [67 x i8]* @.str430, i32 0, i32 0
  %3349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3348, i64 66)
  %3350 = getelementptr [73 x i8], [73 x i8]* @.str431, i32 0, i32 0
  %3351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3350, i64 72)
  %3352 = call %nyx_string* @sdd_msg(%nyx_string* %3347, %nyx_string* %3349, %nyx_string* %3351)
  %3353 = call i8* @nyx_string_to_cstr(%nyx_string* %3352)
  call void @nyx_print_string(i8* %3353)
  br label %merge565
else564:
  br label %merge565
merge565:
  %3354 = load i64, i64* %3335
  %3355 = icmp eq i64 %3354, 0
  br i1 %3355, label %then566, label %else567
then566:
  %3356 = load %nyx_string*, %nyx_string** %lang.ptr
  %3357 = getelementptr [49 x i8], [49 x i8]* @.str432, i32 0, i32 0
  %3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3357, i64 48)
  %3359 = getelementptr [47 x i8], [47 x i8]* @.str433, i32 0, i32 0
  %3360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3359, i64 46)
  %3361 = call %nyx_string* @sdd_msg(%nyx_string* %3356, %nyx_string* %3358, %nyx_string* %3360)
  %3362 = call i8* @nyx_string_to_cstr(%nyx_string* %3361)
  call void @nyx_print_string(i8* %3362)
  br label %merge568
else567:
  br label %merge568
merge568:
  br label %merge559
else558:
  br label %merge559
merge559:
  ret i1 1
}

define internal i1 @run_sdd_init(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3363 = call %nyx_string* @resolve_seed_home()
  %3364 = alloca %nyx_string*
  store %nyx_string* %3363, %nyx_string** %3364
  %3365 = load %nyx_string*, %nyx_string** %3364
  %3366 = getelementptr [12 x i8], [12 x i8]* @.str434, i32 0, i32 0
  %3367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3366, i64 11)
  %3368 = call %nyx_string* @nyx_string_concat(%nyx_string* %3365, %nyx_string* %3367)
  %3369 = load %nyx_string*, %nyx_string** %lang.ptr
  %3370 = call %nyx_string* @nyx_string_concat(%nyx_string* %3368, %nyx_string* %3369)
  %3371 = getelementptr [5 x i8], [5 x i8]* @.str435, i32 0, i32 0
  %3372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3371, i64 4)
  %3373 = call %nyx_string* @nyx_string_concat(%nyx_string* %3370, %nyx_string* %3372)
  %3374 = alloca %nyx_string*
  store %nyx_string* %3373, %nyx_string** %3374
  %3375 = alloca i1
  store i1 true, i1* %3375
  %3376 = load %nyx_string*, %nyx_string** %3364
  %3377 = getelementptr [1 x i8], [1 x i8]* @.str436, i32 0, i32 0
  %3378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3377, i64 0)
  %3379 = call i1 @nyx_string_equals(%nyx_string* %3376, %nyx_string* %3378)
  br i1 %3379, label %sc_or_end570, label %sc_or_rhs569
sc_or_rhs569:
  %3380 = load %nyx_string*, %nyx_string** %3374
  %3381 = getelementptr [17 x i8], [17 x i8]* @.str437, i32 0, i32 0
  %3382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3381, i64 16)
  %3383 = call %nyx_string* @nyx_string_concat(%nyx_string* %3380, %nyx_string* %3382)
  %3384 = call i8* @nyx_string_to_cstr(%nyx_string* %3383)
  %3385 = call i1 @nyx_file_exists(i8* %3384)
  %3386 = icmp eq i1 %3385, 0
  store i1 %3386, i1* %3375
  br label %sc_or_end570
sc_or_end570:
  %3387 = load i1, i1* %3375
  br i1 %3387, label %then571, label %else572
then571:
  %3388 = load %nyx_string*, %nyx_string** %lang.ptr
  %3389 = getelementptr [49 x i8], [49 x i8]* @.str438, i32 0, i32 0
  %3390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3389, i64 48)
  %3391 = load %nyx_string*, %nyx_string** %lang.ptr
  %3392 = call %nyx_string* @nyx_string_concat(%nyx_string* %3390, %nyx_string* %3391)
  %3393 = getelementptr [59 x i8], [59 x i8]* @.str439, i32 0, i32 0
  %3394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3393, i64 58)
  %3395 = call %nyx_string* @nyx_string_concat(%nyx_string* %3392, %nyx_string* %3394)
  %3396 = getelementptr [61 x i8], [61 x i8]* @.str440, i32 0, i32 0
  %3397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3396, i64 60)
  %3398 = load %nyx_string*, %nyx_string** %lang.ptr
  %3399 = call %nyx_string* @nyx_string_concat(%nyx_string* %3397, %nyx_string* %3398)
  %3400 = getelementptr [44 x i8], [44 x i8]* @.str441, i32 0, i32 0
  %3401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3400, i64 43)
  %3402 = call %nyx_string* @nyx_string_concat(%nyx_string* %3399, %nyx_string* %3401)
  %3403 = call %nyx_string* @sdd_msg(%nyx_string* %3388, %nyx_string* %3395, %nyx_string* %3402)
  %3404 = call i8* @nyx_string_to_cstr(%nyx_string* %3403)
  call void @nyx_print_string(i8* %3404)
  %3405 = load %nyx_string*, %nyx_string** %lang.ptr
  %3406 = getelementptr [104 x i8], [104 x i8]* @.str442, i32 0, i32 0
  %3407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %3406, i64 103)
  %3408 = getelementptr [109 x i8], [109 x i8]* @.str443, i32 0, i32 0
  %3409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %3408, i64 108)
  %3410 = call %nyx_string* @sdd_msg(%nyx_string* %3405, %nyx_string* %3407, %nyx_string* %3409)
  %3411 = call i8* @nyx_string_to_cstr(%nyx_string* %3410)
  call void @nyx_print_string(i8* %3411)
  ret i1 0
else572:
  br label %merge573
merge573:
  %3412 = getelementptr [11 x i8], [11 x i8]* @.str444, i32 0, i32 0
  %3413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %3412, i64 10)
  %3414 = load %nyx_string*, %nyx_string** %dir.ptr
  %3415 = call %nyx_string* @nyx_string_concat(%nyx_string* %3413, %nyx_string* %3414)
  %3416 = getelementptr [13 x i8], [13 x i8]* @.str445, i32 0, i32 0
  %3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %3416, i64 12)
  %3418 = call %nyx_string* @nyx_string_concat(%nyx_string* %3415, %nyx_string* %3417)
  %3419 = load %nyx_string*, %nyx_string** %dir.ptr
  %3420 = call %nyx_string* @nyx_string_concat(%nyx_string* %3418, %nyx_string* %3419)
  %3421 = getelementptr [13 x i8], [13 x i8]* @.str446, i32 0, i32 0
  %3422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %3421, i64 12)
  %3423 = call %nyx_string* @nyx_string_concat(%nyx_string* %3420, %nyx_string* %3422)
  %3424 = load %nyx_string*, %nyx_string** %dir.ptr
  %3425 = call %nyx_string* @nyx_string_concat(%nyx_string* %3423, %nyx_string* %3424)
  %3426 = getelementptr [18 x i8], [18 x i8]* @.str447, i32 0, i32 0
  %3427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %3426, i64 17)
  %3428 = call %nyx_string* @nyx_string_concat(%nyx_string* %3425, %nyx_string* %3427)
  %3429 = load %nyx_string*, %nyx_string** %dir.ptr
  %3430 = call %nyx_string* @nyx_string_concat(%nyx_string* %3428, %nyx_string* %3429)
  %3431 = getelementptr [10 x i8], [10 x i8]* @.str448, i32 0, i32 0
  %3432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %3431, i64 9)
  %3433 = call %nyx_string* @nyx_string_concat(%nyx_string* %3430, %nyx_string* %3432)
  %3434 = load %nyx_string*, %nyx_string** %dir.ptr
  %3435 = call %nyx_string* @nyx_string_concat(%nyx_string* %3433, %nyx_string* %3434)
  %3436 = getelementptr [8 x i8], [8 x i8]* @.str449, i32 0, i32 0
  %3437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %3436, i64 7)
  %3438 = call %nyx_string* @nyx_string_concat(%nyx_string* %3435, %nyx_string* %3437)
  %3439 = call i8* @nyx_string_to_cstr(%nyx_string* %3438)
  %3440 = call %nyx_string* @nyx_exec(i8* %3439)
  %3441 = load %nyx_string*, %nyx_string** %lang.ptr
  %3442 = getelementptr [40 x i8], [40 x i8]* @.str450, i32 0, i32 0
  %3443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %3442, i64 39)
  %3444 = getelementptr [38 x i8], [38 x i8]* @.str451, i32 0, i32 0
  %3445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %3444, i64 37)
  %3446 = call %nyx_string* @sdd_msg(%nyx_string* %3441, %nyx_string* %3443, %nyx_string* %3445)
  %3447 = call i8* @nyx_string_to_cstr(%nyx_string* %3446)
  call void @nyx_print_string(i8* %3447)
  %3448 = load %nyx_string*, %nyx_string** %3374
  %3449 = getelementptr [16 x i8], [16 x i8]* @.str452, i32 0, i32 0
  %3450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %3449, i64 15)
  %3451 = load %nyx_string*, %nyx_string** %dir.ptr
  %3452 = getelementptr [22 x i8], [22 x i8]* @.str453, i32 0, i32 0
  %3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %3452, i64 21)
  %3454 = call %nyx_string* @nyx_string_concat(%nyx_string* %3451, %nyx_string* %3453)
  %3455 = load %nyx_string*, %nyx_string** %lang.ptr
  %3456 = call i1 @sdd_seed_template(%nyx_string* %3448, %nyx_string* %3450, %nyx_string* %3454, %nyx_string* %3455)
  %3457 = load %nyx_string*, %nyx_string** %3374
  %3458 = getelementptr [12 x i8], [12 x i8]* @.str454, i32 0, i32 0
  %3459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %3458, i64 11)
  %3460 = load %nyx_string*, %nyx_string** %dir.ptr
  %3461 = getelementptr [18 x i8], [18 x i8]* @.str455, i32 0, i32 0
  %3462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %3461, i64 17)
  %3463 = call %nyx_string* @nyx_string_concat(%nyx_string* %3460, %nyx_string* %3462)
  %3464 = load %nyx_string*, %nyx_string** %lang.ptr
  %3465 = call i1 @sdd_seed_template(%nyx_string* %3457, %nyx_string* %3459, %nyx_string* %3463, %nyx_string* %3464)
  %3466 = load %nyx_string*, %nyx_string** %3374
  %3467 = getelementptr [16 x i8], [16 x i8]* @.str456, i32 0, i32 0
  %3468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %3467, i64 15)
  %3469 = load %nyx_string*, %nyx_string** %dir.ptr
  %3470 = getelementptr [27 x i8], [27 x i8]* @.str457, i32 0, i32 0
  %3471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %3470, i64 26)
  %3472 = call %nyx_string* @nyx_string_concat(%nyx_string* %3469, %nyx_string* %3471)
  %3473 = load %nyx_string*, %nyx_string** %lang.ptr
  %3474 = call i1 @sdd_seed_template(%nyx_string* %3466, %nyx_string* %3468, %nyx_string* %3472, %nyx_string* %3473)
  %3475 = load %nyx_string*, %nyx_string** %3374
  %3476 = getelementptr [16 x i8], [16 x i8]* @.str458, i32 0, i32 0
  %3477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %3476, i64 15)
  %3478 = load %nyx_string*, %nyx_string** %dir.ptr
  %3479 = getelementptr [17 x i8], [17 x i8]* @.str459, i32 0, i32 0
  %3480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %3479, i64 16)
  %3481 = call %nyx_string* @nyx_string_concat(%nyx_string* %3478, %nyx_string* %3480)
  %3482 = load %nyx_string*, %nyx_string** %lang.ptr
  %3483 = call i1 @sdd_seed_template(%nyx_string* %3475, %nyx_string* %3477, %nyx_string* %3481, %nyx_string* %3482)
  %3484 = load %nyx_string*, %nyx_string** %3374
  %3485 = getelementptr [14 x i8], [14 x i8]* @.str460, i32 0, i32 0
  %3486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %3485, i64 13)
  %3487 = load %nyx_string*, %nyx_string** %dir.ptr
  %3488 = getelementptr [24 x i8], [24 x i8]* @.str461, i32 0, i32 0
  %3489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %3488, i64 23)
  %3490 = call %nyx_string* @nyx_string_concat(%nyx_string* %3487, %nyx_string* %3489)
  %3491 = load %nyx_string*, %nyx_string** %lang.ptr
  %3492 = call i1 @sdd_seed_template(%nyx_string* %3484, %nyx_string* %3486, %nyx_string* %3490, %nyx_string* %3491)
  %3493 = load %nyx_string*, %nyx_string** %dir.ptr
  %3494 = load %nyx_string*, %nyx_string** %lang.ptr
  %3495 = call i64 @write_evidence(%nyx_string* %3493, %nyx_string* %3494)
  %3496 = alloca i64
  store i64 %3495, i64* %3496
  %3497 = load %nyx_string*, %nyx_string** %dir.ptr
  %3498 = getelementptr [20 x i8], [20 x i8]* @.str462, i32 0, i32 0
  %3499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %3498, i64 19)
  %3500 = call %nyx_string* @nyx_string_concat(%nyx_string* %3497, %nyx_string* %3499)
  %3501 = call %nyx_string* @toolchain_version()
  %3502 = call %nyx_string* @nyx_string_concat(%nyx_string* %3500, %nyx_string* %3501)
  %3503 = getelementptr [4 x i8], [4 x i8]* @.str463, i32 0, i32 0
  %3504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %3503, i64 3)
  %3505 = call %nyx_string* @nyx_string_concat(%nyx_string* %3502, %nyx_string* %3504)
  %3506 = alloca %nyx_string*
  store %nyx_string* %3505, %nyx_string** %3506
  %3507 = load i64, i64* %3496
  %3508 = icmp eq i64 %3507, 1
  br i1 %3508, label %then574, label %else575
then574:
  %3509 = getelementptr [3 x i8], [3 x i8]* @.str464, i32 0, i32 0
  %3510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %3509, i64 2)
  %3511 = load %nyx_string*, %nyx_string** %3506
  %3512 = call %nyx_string* @nyx_string_concat(%nyx_string* %3510, %nyx_string* %3511)
  %3513 = load %nyx_string*, %nyx_string** %lang.ptr
  %3514 = getelementptr [13 x i8], [13 x i8]* @.str465, i32 0, i32 0
  %3515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %3514, i64 12)
  %3516 = getelementptr [12 x i8], [12 x i8]* @.str466, i32 0, i32 0
  %3517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %3516, i64 11)
  %3518 = call %nyx_string* @sdd_msg(%nyx_string* %3513, %nyx_string* %3515, %nyx_string* %3517)
  %3519 = call %nyx_string* @nyx_string_concat(%nyx_string* %3512, %nyx_string* %3518)
  %3520 = call i8* @nyx_string_to_cstr(%nyx_string* %3519)
  call void @nyx_print_string(i8* %3520)
  br label %merge576
else575:
  br label %merge576
merge576:
  %3521 = load i64, i64* %3496
  %3522 = icmp eq i64 %3521, 2
  br i1 %3522, label %then577, label %else578
then577:
  %3523 = load %nyx_string*, %nyx_string** %lang.ptr
  %3524 = getelementptr [41 x i8], [41 x i8]* @.str467, i32 0, i32 0
  %3525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %3524, i64 40)
  %3526 = load %nyx_string*, %nyx_string** %3506
  %3527 = call %nyx_string* @nyx_string_concat(%nyx_string* %3525, %nyx_string* %3526)
  %3528 = getelementptr [47 x i8], [47 x i8]* @.str468, i32 0, i32 0
  %3529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %3528, i64 46)
  %3530 = load %nyx_string*, %nyx_string** %3506
  %3531 = call %nyx_string* @nyx_string_concat(%nyx_string* %3529, %nyx_string* %3530)
  %3532 = call %nyx_string* @sdd_msg(%nyx_string* %3523, %nyx_string* %3527, %nyx_string* %3531)
  %3533 = call i8* @nyx_string_to_cstr(%nyx_string* %3532)
  call void @nyx_print_string(i8* %3533)
  br label %merge579
else578:
  br label %merge579
merge579:
  %3534 = load i64, i64* %3496
  %3535 = icmp eq i64 %3534, 0
  br i1 %3535, label %then580, label %else581
then580:
  %3536 = load %nyx_string*, %nyx_string** %lang.ptr
  %3537 = getelementptr [23 x i8], [23 x i8]* @.str469, i32 0, i32 0
  %3538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %3537, i64 22)
  %3539 = load %nyx_string*, %nyx_string** %3506
  %3540 = call %nyx_string* @nyx_string_concat(%nyx_string* %3538, %nyx_string* %3539)
  %3541 = getelementptr [21 x i8], [21 x i8]* @.str470, i32 0, i32 0
  %3542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %3541, i64 20)
  %3543 = load %nyx_string*, %nyx_string** %3506
  %3544 = call %nyx_string* @nyx_string_concat(%nyx_string* %3542, %nyx_string* %3543)
  %3545 = call %nyx_string* @sdd_msg(%nyx_string* %3536, %nyx_string* %3540, %nyx_string* %3544)
  %3546 = call i8* @nyx_string_to_cstr(%nyx_string* %3545)
  call void @nyx_print_string(i8* %3546)
  br label %merge582
else581:
  br label %merge582
merge582:
  %3547 = load %nyx_string*, %nyx_string** %dir.ptr
  %3548 = call i64 @write_constitution_test(%nyx_string* %3547)
  %3549 = alloca i64
  store i64 %3548, i64* %3549
  %3550 = load %nyx_string*, %nyx_string** %dir.ptr
  %3551 = getelementptr [28 x i8], [28 x i8]* @.str471, i32 0, i32 0
  %3552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %3551, i64 27)
  %3553 = call %nyx_string* @nyx_string_concat(%nyx_string* %3550, %nyx_string* %3552)
  %3554 = alloca %nyx_string*
  store %nyx_string* %3553, %nyx_string** %3554
  %3555 = load i64, i64* %3549
  %3556 = icmp eq i64 %3555, 1
  br i1 %3556, label %then583, label %else584
then583:
  %3557 = getelementptr [3 x i8], [3 x i8]* @.str472, i32 0, i32 0
  %3558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %3557, i64 2)
  %3559 = load %nyx_string*, %nyx_string** %3554
  %3560 = call %nyx_string* @nyx_string_concat(%nyx_string* %3558, %nyx_string* %3559)
  %3561 = load %nyx_string*, %nyx_string** %lang.ptr
  %3562 = getelementptr [13 x i8], [13 x i8]* @.str473, i32 0, i32 0
  %3563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %3562, i64 12)
  %3564 = getelementptr [12 x i8], [12 x i8]* @.str474, i32 0, i32 0
  %3565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %3564, i64 11)
  %3566 = call %nyx_string* @sdd_msg(%nyx_string* %3561, %nyx_string* %3563, %nyx_string* %3565)
  %3567 = call %nyx_string* @nyx_string_concat(%nyx_string* %3560, %nyx_string* %3566)
  %3568 = call i8* @nyx_string_to_cstr(%nyx_string* %3567)
  call void @nyx_print_string(i8* %3568)
  br label %merge585
else584:
  br label %merge585
merge585:
  %3569 = load i64, i64* %3549
  %3570 = icmp eq i64 %3569, 2
  br i1 %3570, label %then586, label %else587
then586:
  %3571 = load %nyx_string*, %nyx_string** %lang.ptr
  %3572 = getelementptr [41 x i8], [41 x i8]* @.str475, i32 0, i32 0
  %3573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %3572, i64 40)
  %3574 = load %nyx_string*, %nyx_string** %3554
  %3575 = call %nyx_string* @nyx_string_concat(%nyx_string* %3573, %nyx_string* %3574)
  %3576 = getelementptr [47 x i8], [47 x i8]* @.str476, i32 0, i32 0
  %3577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %3576, i64 46)
  %3578 = load %nyx_string*, %nyx_string** %3554
  %3579 = call %nyx_string* @nyx_string_concat(%nyx_string* %3577, %nyx_string* %3578)
  %3580 = call %nyx_string* @sdd_msg(%nyx_string* %3571, %nyx_string* %3575, %nyx_string* %3579)
  %3581 = call i8* @nyx_string_to_cstr(%nyx_string* %3580)
  call void @nyx_print_string(i8* %3581)
  br label %merge588
else587:
  br label %merge588
merge588:
  %3582 = load i64, i64* %3549
  %3583 = icmp eq i64 %3582, 0
  br i1 %3583, label %then589, label %else590
then589:
  %3584 = load %nyx_string*, %nyx_string** %lang.ptr
  %3585 = getelementptr [23 x i8], [23 x i8]* @.str477, i32 0, i32 0
  %3586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %3585, i64 22)
  %3587 = load %nyx_string*, %nyx_string** %3554
  %3588 = call %nyx_string* @nyx_string_concat(%nyx_string* %3586, %nyx_string* %3587)
  %3589 = getelementptr [21 x i8], [21 x i8]* @.str478, i32 0, i32 0
  %3590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %3589, i64 20)
  %3591 = load %nyx_string*, %nyx_string** %3554
  %3592 = call %nyx_string* @nyx_string_concat(%nyx_string* %3590, %nyx_string* %3591)
  %3593 = call %nyx_string* @sdd_msg(%nyx_string* %3584, %nyx_string* %3588, %nyx_string* %3592)
  %3594 = call i8* @nyx_string_to_cstr(%nyx_string* %3593)
  call void @nyx_print_string(i8* %3594)
  br label %merge591
else590:
  br label %merge591
merge591:
  %3595 = load %nyx_string*, %nyx_string** %dir.ptr
  %3596 = load %nyx_string*, %nyx_string** %lang.ptr
  %3597 = call i1 @add_agents_triggers(%nyx_string* %3595, %nyx_string* %3596)
  %3598 = getelementptr [1 x i8], [1 x i8]* @.str479, i32 0, i32 0
  %3599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %3598, i64 0)
  %3600 = call i8* @nyx_string_to_cstr(%nyx_string* %3599)
  call void @nyx_print_string(i8* %3600)
  %3601 = load %nyx_string*, %nyx_string** %lang.ptr
  %3602 = getelementptr [94 x i8], [94 x i8]* @.str480, i32 0, i32 0
  %3603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %3602, i64 93)
  %3604 = getelementptr [98 x i8], [98 x i8]* @.str481, i32 0, i32 0
  %3605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %3604, i64 97)
  %3606 = call %nyx_string* @sdd_msg(%nyx_string* %3601, %nyx_string* %3603, %nyx_string* %3605)
  %3607 = call i8* @nyx_string_to_cstr(%nyx_string* %3606)
  call void @nyx_print_string(i8* %3607)
  %3608 = load %nyx_string*, %nyx_string** %lang.ptr
  %3609 = getelementptr [89 x i8], [89 x i8]* @.str482, i32 0, i32 0
  %3610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %3609, i64 88)
  %3611 = getelementptr [90 x i8], [90 x i8]* @.str483, i32 0, i32 0
  %3612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %3611, i64 89)
  %3613 = call %nyx_string* @sdd_msg(%nyx_string* %3608, %nyx_string* %3610, %nyx_string* %3612)
  %3614 = call i8* @nyx_string_to_cstr(%nyx_string* %3613)
  call void @nyx_print_string(i8* %3614)
  %3615 = load %nyx_string*, %nyx_string** %lang.ptr
  %3616 = getelementptr [78 x i8], [78 x i8]* @.str484, i32 0, i32 0
  %3617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %3616, i64 77)
  %3618 = getelementptr [76 x i8], [76 x i8]* @.str485, i32 0, i32 0
  %3619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %3618, i64 75)
  %3620 = call %nyx_string* @sdd_msg(%nyx_string* %3615, %nyx_string* %3617, %nyx_string* %3619)
  %3621 = call i8* @nyx_string_to_cstr(%nyx_string* %3620)
  call void @nyx_print_string(i8* %3621)
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
  %3622 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %3623 = alloca %nyx_string*
  store %nyx_string* %3622, %nyx_string** %3623
  %3624 = load %nyx_string*, %nyx_string** %3623
  %3625 = getelementptr [1 x i8], [1 x i8]* @.str486, i32 0, i32 0
  %3626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %3625, i64 0)
  %3627 = call i1 @nyx_string_equals(%nyx_string* %3624, %nyx_string* %3626)
  %3628 = xor i1 %3627, true
  br i1 %3628, label %then592, label %else593
then592:
  %3629 = load %nyx_string*, %nyx_string** %3623
  %3630 = call i8* @nyx_string_to_cstr(%nyx_string* %3629)
  %3631 = call i1 @nyx_file_exists(i8* %3630)
  br i1 %3631, label %then595, label %else596
then595:
  %3632 = getelementptr [19 x i8], [19 x i8]* @.str487, i32 0, i32 0
  %3633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %3632, i64 18)
  %3634 = load %nyx_string*, %nyx_string** %3623
  %3635 = call %nyx_string* @nyx_string_concat(%nyx_string* %3633, %nyx_string* %3634)
  %3636 = getelementptr [17 x i8], [17 x i8]* @.str488, i32 0, i32 0
  %3637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %3636, i64 16)
  %3638 = call %nyx_string* @nyx_string_concat(%nyx_string* %3635, %nyx_string* %3637)
  %3639 = call i8* @nyx_string_to_cstr(%nyx_string* %3638)
  call void @nyx_print_string(i8* %3639)
  ret i1 0
else596:
  br label %merge597
merge597:
  %3640 = getelementptr [10 x i8], [10 x i8]* @.str489, i32 0, i32 0
  %3641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %3640, i64 9)
  %3642 = load %nyx_string*, %nyx_string** %3623
  %3643 = call %nyx_string* @nyx_string_concat(%nyx_string* %3641, %nyx_string* %3642)
  %3644 = getelementptr [5 x i8], [5 x i8]* @.str490, i32 0, i32 0
  %3645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %3644, i64 4)
  %3646 = call %nyx_string* @nyx_string_concat(%nyx_string* %3643, %nyx_string* %3645)
  %3647 = call i8* @nyx_string_to_cstr(%nyx_string* %3646)
  %3648 = call %nyx_string* @nyx_exec(i8* %3647)
  %3649 = getelementptr [19 x i8], [19 x i8]* @.str491, i32 0, i32 0
  %3650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %3649, i64 18)
  %3651 = load %nyx_string*, %nyx_string** %3623
  %3652 = call %nyx_string* @nyx_string_concat(%nyx_string* %3650, %nyx_string* %3651)
  %3653 = getelementptr [58 x i8], [58 x i8]* @.str492, i32 0, i32 0
  %3654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %3653, i64 57)
  %3655 = call %nyx_string* @nyx_string_concat(%nyx_string* %3652, %nyx_string* %3654)
  %3656 = alloca %nyx_string*
  store %nyx_string* %3655, %nyx_string** %3656
  %3657 = load %nyx_string*, %nyx_string** %3623
  %3658 = getelementptr [10 x i8], [10 x i8]* @.str493, i32 0, i32 0
  %3659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %3658, i64 9)
  %3660 = call %nyx_string* @nyx_string_concat(%nyx_string* %3657, %nyx_string* %3659)
  %3661 = load %nyx_string*, %nyx_string** %3656
  %3662 = call i8* @nyx_string_to_cstr(%nyx_string* %3660)
  %3663 = call i8* @nyx_string_to_cstr(%nyx_string* %3661)
  %3664 = call i1 @nyx_write_file(i8* %3662, i8* %3663)
  %3665 = load %nyx_string*, %nyx_string** %3623
  %3666 = getelementptr [13 x i8], [13 x i8]* @.str494, i32 0, i32 0
  %3667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %3666, i64 12)
  %3668 = call %nyx_string* @nyx_string_concat(%nyx_string* %3665, %nyx_string* %3667)
  %3669 = getelementptr [35 x i8], [35 x i8]* @.str495, i32 0, i32 0
  %3670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %3669, i64 34)
  %3671 = load %nyx_string*, %nyx_string** %3623
  %3672 = call %nyx_string* @nyx_string_concat(%nyx_string* %3670, %nyx_string* %3671)
  %3673 = getelementptr [7 x i8], [7 x i8]* @.str496, i32 0, i32 0
  %3674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %3673, i64 6)
  %3675 = call %nyx_string* @nyx_string_concat(%nyx_string* %3672, %nyx_string* %3674)
  %3676 = call i8* @nyx_string_to_cstr(%nyx_string* %3668)
  %3677 = call i8* @nyx_string_to_cstr(%nyx_string* %3675)
  %3678 = call i1 @nyx_write_file(i8* %3676, i8* %3677)
  %3679 = load %nyx_string*, %nyx_string** %3623
  %3680 = load %nyx_string*, %nyx_string** %lang.ptr
  %3681 = load %nyx_string*, %nyx_string** %agents.ptr
  %3682 = call i64 @scaffold_project_files(%nyx_string* %3679, %nyx_string* %3680, %nyx_string* %3681)
  %3683 = load %nyx_string*, %nyx_string** %3623
  %3684 = load %nyx_string*, %nyx_string** %3623
  %3685 = call i64 @seed_gitignore(%nyx_string* %3683, %nyx_string* %3684)
  %3686 = getelementptr [22 x i8], [22 x i8]* @.str497, i32 0, i32 0
  %3687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %3686, i64 21)
  %3688 = load %nyx_string*, %nyx_string** %3623
  %3689 = call %nyx_string* @nyx_string_concat(%nyx_string* %3687, %nyx_string* %3688)
  %3690 = call i8* @nyx_string_to_cstr(%nyx_string* %3689)
  call void @nyx_print_string(i8* %3690)
  %3691 = getelementptr [12 x i8], [12 x i8]* @.str498, i32 0, i32 0
  %3692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %3691, i64 11)
  %3693 = load %nyx_string*, %nyx_string** %3623
  %3694 = call %nyx_string* @nyx_string_concat(%nyx_string* %3692, %nyx_string* %3693)
  %3695 = getelementptr [2 x i8], [2 x i8]* @.str499, i32 0, i32 0
  %3696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %3695, i64 1)
  %3697 = call %nyx_string* @nyx_string_concat(%nyx_string* %3694, %nyx_string* %3696)
  %3698 = call i8* @nyx_string_to_cstr(%nyx_string* %3697)
  call void @nyx_print_string(i8* %3698)
  %3699 = getelementptr [15 x i8], [15 x i8]* @.str500, i32 0, i32 0
  %3700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %3699, i64 14)
  %3701 = load %nyx_string*, %nyx_string** %3623
  %3702 = call %nyx_string* @nyx_string_concat(%nyx_string* %3700, %nyx_string* %3701)
  %3703 = getelementptr [12 x i8], [12 x i8]* @.str501, i32 0, i32 0
  %3704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %3703, i64 11)
  %3705 = call %nyx_string* @nyx_string_concat(%nyx_string* %3702, %nyx_string* %3704)
  %3706 = call i8* @nyx_string_to_cstr(%nyx_string* %3705)
  call void @nyx_print_string(i8* %3706)
  ret i1 1
else593:
  br label %merge594
merge594:
  %3707 = getelementptr [9 x i8], [9 x i8]* @.str502, i32 0, i32 0
  %3708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %3707, i64 8)
  %3709 = call i8* @nyx_string_to_cstr(%nyx_string* %3708)
  %3710 = call i1 @nyx_file_exists(i8* %3709)
  br i1 %3710, label %then598, label %else599
then598:
  %3711 = getelementptr [31 x i8], [31 x i8]* @.str503, i32 0, i32 0
  %3712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %3711, i64 30)
  %3713 = call i8* @nyx_string_to_cstr(%nyx_string* %3712)
  call void @nyx_print_string(i8* %3713)
  ret i1 0
else599:
  br label %merge600
merge600:
  %3714 = getelementptr [4 x i8], [4 x i8]* @.str504, i32 0, i32 0
  %3715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %3714, i64 3)
  %3716 = call i8* @nyx_string_to_cstr(%nyx_string* %3715)
  %3717 = call %nyx_string* @nyx_getenv(i8* %3716)
  %3718 = alloca %nyx_string*
  store %nyx_string* %3717, %nyx_string** %3718
  %3719 = getelementptr [6 x i8], [6 x i8]* @.str505, i32 0, i32 0
  %3720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %3719, i64 5)
  store %nyx_string* %3720, %nyx_string** %3623
  %3721 = sub i64 0, 1
  %3722 = alloca i64
  store i64 %3721, i64* %3722
  %3723 = alloca i64
  store i64 0, i64* %3723
  %3724 = call i8* @llvm.stacksave()
  br label %while_cond601
while_cond601:
  %3725 = load i64, i64* %3723
  %3726 = load %nyx_string*, %nyx_string** %3718
  %3727 = call i64 @nyx_string_byte_length(%nyx_string* %3726)
  %3728 = icmp slt i64 %3725, %3727
  br i1 %3728, label %while_body602, label %while_end603
while_body602:
  call void @llvm.stackrestore(i8* %3724)
  %3729 = load %nyx_string*, %nyx_string** %3718
  %3730 = load i64, i64* %3723
  %3731 = call i8 @nyx_string_char_at(%nyx_string* %3729, i64 %3730)
  %3732 = zext i8 %3731 to i64
  %3733 = icmp eq i64 %3732, 47
  br i1 %3733, label %then604, label %else605
then604:
  %3734 = load i64, i64* %3723
  store i64 %3734, i64* %3722
  br label %merge606
else605:
  br label %merge606
merge606:
  %3735 = load i64, i64* %3723
  %3736 = add i64 %3735, 1
  store i64 %3736, i64* %3723
  br label %while_cond601
while_end603:
  %3737 = load i64, i64* %3722
  %3738 = icmp sge i64 %3737, 0
  br i1 %3738, label %then607, label %else608
then607:
  %3739 = load %nyx_string*, %nyx_string** %3718
  %3740 = load i64, i64* %3722
  %3741 = add i64 %3740, 1
  %3742 = load %nyx_string*, %nyx_string** %3718
  %3743 = call i64 @nyx_string_byte_length(%nyx_string* %3742)
  %3744 = call %nyx_string* @nyx_string_substring(%nyx_string* %3739, i64 %3741, i64 %3743)
  store %nyx_string* %3744, %nyx_string** %3623
  br label %merge609
else608:
  br label %merge609
merge609:
  %3745 = getelementptr [19 x i8], [19 x i8]* @.str506, i32 0, i32 0
  %3746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %3745, i64 18)
  %3747 = load %nyx_string*, %nyx_string** %3623
  %3748 = call %nyx_string* @nyx_string_concat(%nyx_string* %3746, %nyx_string* %3747)
  %3749 = getelementptr [58 x i8], [58 x i8]* @.str507, i32 0, i32 0
  %3750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %3749, i64 57)
  %3751 = call %nyx_string* @nyx_string_concat(%nyx_string* %3748, %nyx_string* %3750)
  %3752 = alloca %nyx_string*
  store %nyx_string* %3751, %nyx_string** %3752
  %3753 = getelementptr [9 x i8], [9 x i8]* @.str508, i32 0, i32 0
  %3754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %3753, i64 8)
  %3755 = load %nyx_string*, %nyx_string** %3752
  %3756 = call i8* @nyx_string_to_cstr(%nyx_string* %3754)
  %3757 = call i8* @nyx_string_to_cstr(%nyx_string* %3755)
  %3758 = call i1 @nyx_write_file(i8* %3756, i8* %3757)
  %3759 = getelementptr [13 x i8], [13 x i8]* @.str509, i32 0, i32 0
  %3760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %3759, i64 12)
  %3761 = call i8* @nyx_string_to_cstr(%nyx_string* %3760)
  %3762 = call %nyx_string* @nyx_exec(i8* %3761)
  %3763 = getelementptr [12 x i8], [12 x i8]* @.str510, i32 0, i32 0
  %3764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %3763, i64 11)
  %3765 = call i8* @nyx_string_to_cstr(%nyx_string* %3764)
  %3766 = call i1 @nyx_file_exists(i8* %3765)
  %3767 = icmp eq i1 %3766, 0
  br i1 %3767, label %then610, label %else611
then610:
  %3768 = getelementptr [12 x i8], [12 x i8]* @.str511, i32 0, i32 0
  %3769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %3768, i64 11)
  %3770 = getelementptr [35 x i8], [35 x i8]* @.str512, i32 0, i32 0
  %3771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %3770, i64 34)
  %3772 = load %nyx_string*, %nyx_string** %3623
  %3773 = call %nyx_string* @nyx_string_concat(%nyx_string* %3771, %nyx_string* %3772)
  %3774 = getelementptr [7 x i8], [7 x i8]* @.str513, i32 0, i32 0
  %3775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %3774, i64 6)
  %3776 = call %nyx_string* @nyx_string_concat(%nyx_string* %3773, %nyx_string* %3775)
  %3777 = call i8* @nyx_string_to_cstr(%nyx_string* %3769)
  %3778 = call i8* @nyx_string_to_cstr(%nyx_string* %3776)
  %3779 = call i1 @nyx_write_file(i8* %3777, i8* %3778)
  br label %merge612
else611:
  br label %merge612
merge612:
  %3780 = getelementptr [2 x i8], [2 x i8]* @.str514, i32 0, i32 0
  %3781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %3780, i64 1)
  %3782 = load %nyx_string*, %nyx_string** %lang.ptr
  %3783 = load %nyx_string*, %nyx_string** %agents.ptr
  %3784 = call i64 @scaffold_project_files(%nyx_string* %3781, %nyx_string* %3782, %nyx_string* %3783)
  %3785 = getelementptr [2 x i8], [2 x i8]* @.str515, i32 0, i32 0
  %3786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %3785, i64 1)
  %3787 = load %nyx_string*, %nyx_string** %3623
  %3788 = call i64 @seed_gitignore(%nyx_string* %3786, %nyx_string* %3787)
  %3789 = getelementptr [22 x i8], [22 x i8]* @.str516, i32 0, i32 0
  %3790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %3789, i64 21)
  %3791 = load %nyx_string*, %nyx_string** %3623
  %3792 = call %nyx_string* @nyx_string_concat(%nyx_string* %3790, %nyx_string* %3791)
  %3793 = call i8* @nyx_string_to_cstr(%nyx_string* %3792)
  call void @nyx_print_string(i8* %3793)
  %3794 = getelementptr [33 x i8], [33 x i8]* @.str517, i32 0, i32 0
  %3795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %3794, i64 32)
  %3796 = call i8* @nyx_string_to_cstr(%nyx_string* %3795)
  call void @nyx_print_string(i8* %3796)
  %3797 = getelementptr [21 x i8], [21 x i8]* @.str518, i32 0, i32 0
  %3798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %3797, i64 20)
  %3799 = call i8* @nyx_string_to_cstr(%nyx_string* %3798)
  call void @nyx_print_string(i8* %3799)
  %3800 = getelementptr [19 x i8], [19 x i8]* @.str519, i32 0, i32 0
  %3801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %3800, i64 18)
  %3802 = call i8* @nyx_string_to_cstr(%nyx_string* %3801)
  call void @nyx_print_string(i8* %3802)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %3803 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %3804 = load { i64, i8* }*, { i64, i8* }** %3803
  %3805 = call i64 @nyx_array_length({ i64, i8* }* %3804)
  %3806 = icmp eq i64 %3805, 0
  br i1 %3806, label %then613, label %else614
then613:
  ret i1 1
else614:
  br label %merge615
merge615:
  %3807 = alloca i64
  store i64 0, i64* %3807
  %3808 = getelementptr [10 x i8], [10 x i8]* @.str520, i32 0, i32 0
  %3809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %3808, i64 9)
  %3810 = alloca %nyx_string*
  store %nyx_string* %3809, %nyx_string** %3810
  %3811 = getelementptr [14 x i8], [14 x i8]* @.str521, i32 0, i32 0
  %3812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %3811, i64 13)
  %3813 = alloca %nyx_string*
  store %nyx_string* %3812, %nyx_string** %3813
  %3814 = getelementptr [5 x i8], [5 x i8]* @.str522, i32 0, i32 0
  %3815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %3814, i64 4)
  %3816 = alloca %nyx_string*
  store %nyx_string* %3815, %nyx_string** %3816
  %3817 = getelementptr [4 x i8], [4 x i8]* @.str523, i32 0, i32 0
  %3818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %3817, i64 3)
  %3819 = alloca %nyx_string*
  store %nyx_string* %3818, %nyx_string** %3819
  %3820 = getelementptr [32 x i8], [32 x i8]* @.str524, i32 0, i32 0
  %3821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %3820, i64 31)
  %3822 = alloca %nyx_string*
  store %nyx_string* %3821, %nyx_string** %3822
  %3823 = getelementptr [43 x i8], [43 x i8]* @.str525, i32 0, i32 0
  %3824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %3823, i64 42)
  %3825 = alloca %nyx_string*
  store %nyx_string* %3824, %nyx_string** %3825
  %3826 = getelementptr [2 x i8], [2 x i8]* @.str526, i32 0, i32 0
  %3827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %3826, i64 1)
  %3828 = alloca %nyx_string*
  store %nyx_string* %3827, %nyx_string** %3828
  %3829 = getelementptr [13 x i8], [13 x i8]* @.str527, i32 0, i32 0
  %3830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %3829, i64 12)
  %3831 = alloca %nyx_string*
  store %nyx_string* %3830, %nyx_string** %3831
  %3832 = getelementptr [26 x i8], [26 x i8]* @.str528, i32 0, i32 0
  %3833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %3832, i64 25)
  %3834 = alloca %nyx_string*
  store %nyx_string* %3833, %nyx_string** %3834
  %3835 = getelementptr [7 x i8], [7 x i8]* @.str529, i32 0, i32 0
  %3836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %3835, i64 6)
  %3837 = alloca %nyx_string*
  store %nyx_string* %3836, %nyx_string** %3837
  %3838 = getelementptr [12 x i8], [12 x i8]* @.str530, i32 0, i32 0
  %3839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %3838, i64 11)
  %3840 = alloca %nyx_string*
  store %nyx_string* %3839, %nyx_string** %3840
  %3841 = call i8* @llvm.stacksave()
  br label %while_cond616
while_cond616:
  %3842 = load i64, i64* %3807
  %3843 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %3844 = load { i64, i8* }*, { i64, i8* }** %3843
  %3845 = call i64 @nyx_array_length({ i64, i8* }* %3844)
  %3846 = icmp slt i64 %3842, %3845
  br i1 %3846, label %while_body617, label %while_end618
while_body617:
  call void @llvm.stackrestore(i8* %3841)
  %3847 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %3848 = load { i64, i8* }*, { i64, i8* }** %3847
  %3849 = load i64, i64* %3807
  %3850 = call i64 @nyx_array_get({ i64, i8* }* %3848, i64 %3849)
  %3851 = inttoptr i64 %3850 to %nyx_string*
  %3852 = alloca %nyx_string*
  store %nyx_string* %3851, %nyx_string** %3852
  %3853 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3854 = load { i64, i8* }*, { i64, i8* }** %3853
  %3855 = load i64, i64* %3807
  %3856 = call i64 @nyx_array_get({ i64, i8* }* %3854, i64 %3855)
  %3857 = inttoptr i64 %3856 to %nyx_string*
  %3858 = alloca %nyx_string*
  store %nyx_string* %3857, %nyx_string** %3858
  %3859 = load %nyx_string*, %nyx_string** %3810
  %3860 = load %nyx_string*, %nyx_string** %3852
  %3861 = call %nyx_string* @nyx_string_concat(%nyx_string* %3859, %nyx_string* %3860)
  %3862 = alloca %nyx_string*
  store %nyx_string* %3861, %nyx_string** %3862
  %3863 = load %nyx_string*, %nyx_string** %3862
  %3864 = call i8* @nyx_string_to_cstr(%nyx_string* %3863)
  %3865 = call i1 @nyx_file_exists(i8* %3864)
  %3866 = icmp eq i1 %3865, 0
  br i1 %3866, label %then619, label %else620
then619:
  %3867 = load %nyx_string*, %nyx_string** %3813
  %3868 = load %nyx_string*, %nyx_string** %3852
  %3869 = call %nyx_string* @nyx_string_concat(%nyx_string* %3867, %nyx_string* %3868)
  %3870 = call i8* @nyx_string_to_cstr(%nyx_string* %3869)
  call void @nyx_print_string(i8* %3870)
  %3871 = load %nyx_string*, %nyx_string** %3858
  %3872 = alloca %nyx_string*
  store %nyx_string* %3871, %nyx_string** %3872
  %3873 = alloca i1
  store i1 false, i1* %3873
  %3874 = load %nyx_string*, %nyx_string** %3872
  %3875 = load %nyx_string*, %nyx_string** %3816
  %3876 = call i1 @nyx_string_starts_with(%nyx_string* %3874, %nyx_string* %3875)
  %3877 = icmp eq i1 %3876, 0
  br i1 %3877, label %sc_and_rhs622, label %sc_and_end623
sc_and_rhs622:
  %3878 = load %nyx_string*, %nyx_string** %3872
  %3879 = load %nyx_string*, %nyx_string** %3819
  %3880 = call i1 @nyx_string_starts_with(%nyx_string* %3878, %nyx_string* %3879)
  %3881 = icmp eq i1 %3880, 0
  store i1 %3881, i1* %3873
  br label %sc_and_end623
sc_and_end623:
  %3882 = load i1, i1* %3873
  br i1 %3882, label %then624, label %else625
then624:
  %3883 = load %nyx_string*, %nyx_string** %3822
  %3884 = load %nyx_string*, %nyx_string** %3852
  %3885 = call %nyx_string* @nyx_string_concat(%nyx_string* %3883, %nyx_string* %3884)
  store %nyx_string* %3885, %nyx_string** %3872
  br label %merge626
else625:
  br label %merge626
merge626:
  %3886 = load %nyx_string*, %nyx_string** %3825
  %3887 = load %nyx_string*, %nyx_string** %3872
  %3888 = call %nyx_string* @nyx_string_concat(%nyx_string* %3886, %nyx_string* %3887)
  %3889 = load %nyx_string*, %nyx_string** %3828
  %3890 = call %nyx_string* @nyx_string_concat(%nyx_string* %3888, %nyx_string* %3889)
  %3891 = load %nyx_string*, %nyx_string** %3862
  %3892 = call %nyx_string* @nyx_string_concat(%nyx_string* %3890, %nyx_string* %3891)
  %3893 = load %nyx_string*, %nyx_string** %3831
  %3894 = call %nyx_string* @nyx_string_concat(%nyx_string* %3892, %nyx_string* %3893)
  %3895 = alloca %nyx_string*
  store %nyx_string* %3894, %nyx_string** %3895
  %3896 = load %nyx_string*, %nyx_string** %3895
  %3897 = call i8* @nyx_string_to_cstr(%nyx_string* %3896)
  %3898 = call i64 @nyx_exec_code(i8* %3897)
  %3899 = alloca i64
  store i64 %3898, i64* %3899
  %3900 = load i64, i64* %3899
  %3901 = icmp ne i64 %3900, 0
  br i1 %3901, label %then627, label %else628
then627:
  %3902 = load %nyx_string*, %nyx_string** %3834
  %3903 = load %nyx_string*, %nyx_string** %3852
  %3904 = call %nyx_string* @nyx_string_concat(%nyx_string* %3902, %nyx_string* %3903)
  %3905 = load %nyx_string*, %nyx_string** %3837
  %3906 = call %nyx_string* @nyx_string_concat(%nyx_string* %3904, %nyx_string* %3905)
  %3907 = load %nyx_string*, %nyx_string** %3872
  %3908 = call %nyx_string* @nyx_string_concat(%nyx_string* %3906, %nyx_string* %3907)
  %3909 = call i8* @nyx_string_to_cstr(%nyx_string* %3908)
  call void @nyx_print_string(i8* %3909)
  ret i1 0
else628:
  br label %merge629
merge629:
  %3910 = load %nyx_string*, %nyx_string** %3840
  %3911 = load %nyx_string*, %nyx_string** %3852
  %3912 = call %nyx_string* @nyx_string_concat(%nyx_string* %3910, %nyx_string* %3911)
  %3913 = call i8* @nyx_string_to_cstr(%nyx_string* %3912)
  call void @nyx_print_string(i8* %3913)
  br label %merge621
else620:
  br label %merge621
merge621:
  %3914 = load i64, i64* %3807
  %3915 = add i64 %3914, 1
  store i64 %3915, i64* %3807
  br label %while_cond616
while_end618:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %3916 = getelementptr [128 x i8], [128 x i8]* @.str531, i32 0, i32 0
  %3917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %3916, i64 127)
  %3918 = alloca %nyx_string*
  store %nyx_string* %3917, %nyx_string** %3918
  %3919 = getelementptr [37 x i8], [37 x i8]* @.str532, i32 0, i32 0
  %3920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %3919, i64 36)
  %3921 = alloca %nyx_string*
  store %nyx_string* %3920, %nyx_string** %3921
  %3922 = getelementptr [14 x i8], [14 x i8]* @.str533, i32 0, i32 0
  %3923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %3922, i64 13)
  %3924 = load %nyx_string*, %nyx_string** %3918
  %3925 = call %nyx_string* @nyx_string_concat(%nyx_string* %3923, %nyx_string* %3924)
  %3926 = getelementptr [16 x i8], [16 x i8]* @.str534, i32 0, i32 0
  %3927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %3926, i64 15)
  %3928 = call %nyx_string* @nyx_string_concat(%nyx_string* %3925, %nyx_string* %3927)
  %3929 = getelementptr [33 x i8], [33 x i8]* @.str535, i32 0, i32 0
  %3930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %3929, i64 32)
  %3931 = call %nyx_string* @nyx_string_concat(%nyx_string* %3928, %nyx_string* %3930)
  %3932 = getelementptr [99 x i8], [99 x i8]* @.str536, i32 0, i32 0
  %3933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %3932, i64 98)
  %3934 = call %nyx_string* @nyx_string_concat(%nyx_string* %3931, %nyx_string* %3933)
  %3935 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3936 = call %nyx_string* @nyx_string_concat(%nyx_string* %3934, %nyx_string* %3935)
  %3937 = getelementptr [74 x i8], [74 x i8]* @.str537, i32 0, i32 0
  %3938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %3937, i64 73)
  %3939 = call %nyx_string* @nyx_string_concat(%nyx_string* %3936, %nyx_string* %3938)
  %3940 = getelementptr [6 x i8], [6 x i8]* @.str538, i32 0, i32 0
  %3941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %3940, i64 5)
  %3942 = call %nyx_string* @nyx_string_concat(%nyx_string* %3939, %nyx_string* %3941)
  %3943 = getelementptr [91 x i8], [91 x i8]* @.str539, i32 0, i32 0
  %3944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %3943, i64 90)
  %3945 = call %nyx_string* @nyx_string_concat(%nyx_string* %3942, %nyx_string* %3944)
  %3946 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3947 = call %nyx_string* @nyx_string_concat(%nyx_string* %3945, %nyx_string* %3946)
  %3948 = getelementptr [76 x i8], [76 x i8]* @.str540, i32 0, i32 0
  %3949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %3948, i64 75)
  %3950 = call %nyx_string* @nyx_string_concat(%nyx_string* %3947, %nyx_string* %3949)
  %3951 = getelementptr [5 x i8], [5 x i8]* @.str541, i32 0, i32 0
  %3952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %3951, i64 4)
  %3953 = call %nyx_string* @nyx_string_concat(%nyx_string* %3950, %nyx_string* %3952)
  %3954 = getelementptr [16 x i8], [16 x i8]* @.str542, i32 0, i32 0
  %3955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %3954, i64 15)
  %3956 = call %nyx_string* @nyx_string_concat(%nyx_string* %3953, %nyx_string* %3955)
  %3957 = load %nyx_string*, %nyx_string** %3921
  %3958 = call %nyx_string* @nyx_string_concat(%nyx_string* %3956, %nyx_string* %3957)
  %3959 = getelementptr [16 x i8], [16 x i8]* @.str543, i32 0, i32 0
  %3960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %3959, i64 15)
  %3961 = call %nyx_string* @nyx_string_concat(%nyx_string* %3958, %nyx_string* %3960)
  %3962 = getelementptr [33 x i8], [33 x i8]* @.str544, i32 0, i32 0
  %3963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %3962, i64 32)
  %3964 = call %nyx_string* @nyx_string_concat(%nyx_string* %3961, %nyx_string* %3963)
  %3965 = getelementptr [176 x i8], [176 x i8]* @.str545, i32 0, i32 0
  %3966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %3965, i64 175)
  %3967 = call %nyx_string* @nyx_string_concat(%nyx_string* %3964, %nyx_string* %3966)
  %3968 = getelementptr [6 x i8], [6 x i8]* @.str546, i32 0, i32 0
  %3969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %3968, i64 5)
  %3970 = call %nyx_string* @nyx_string_concat(%nyx_string* %3967, %nyx_string* %3969)
  %3971 = getelementptr [184 x i8], [184 x i8]* @.str547, i32 0, i32 0
  %3972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %3971, i64 183)
  %3973 = call %nyx_string* @nyx_string_concat(%nyx_string* %3970, %nyx_string* %3972)
  %3974 = getelementptr [5 x i8], [5 x i8]* @.str548, i32 0, i32 0
  %3975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %3974, i64 4)
  %3976 = call %nyx_string* @nyx_string_concat(%nyx_string* %3973, %nyx_string* %3975)
  %3977 = getelementptr [6 x i8], [6 x i8]* @.str549, i32 0, i32 0
  %3978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %3977, i64 5)
  %3979 = call %nyx_string* @nyx_string_concat(%nyx_string* %3976, %nyx_string* %3978)
  %3980 = getelementptr [33 x i8], [33 x i8]* @.str550, i32 0, i32 0
  %3981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %3980, i64 32)
  %3982 = call %nyx_string* @nyx_string_concat(%nyx_string* %3979, %nyx_string* %3981)
  %3983 = getelementptr [127 x i8], [127 x i8]* @.str551, i32 0, i32 0
  %3984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %3983, i64 126)
  %3985 = call %nyx_string* @nyx_string_concat(%nyx_string* %3982, %nyx_string* %3984)
  %3986 = getelementptr [6 x i8], [6 x i8]* @.str552, i32 0, i32 0
  %3987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %3986, i64 5)
  %3988 = call %nyx_string* @nyx_string_concat(%nyx_string* %3985, %nyx_string* %3987)
  %3989 = getelementptr [119 x i8], [119 x i8]* @.str553, i32 0, i32 0
  %3990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %3989, i64 118)
  %3991 = call %nyx_string* @nyx_string_concat(%nyx_string* %3988, %nyx_string* %3990)
  %3992 = getelementptr [5 x i8], [5 x i8]* @.str554, i32 0, i32 0
  %3993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %3992, i64 4)
  %3994 = call %nyx_string* @nyx_string_concat(%nyx_string* %3991, %nyx_string* %3993)
  %3995 = getelementptr [4 x i8], [4 x i8]* @.str555, i32 0, i32 0
  %3996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %3995, i64 3)
  %3997 = call %nyx_string* @nyx_string_concat(%nyx_string* %3994, %nyx_string* %3996)
  ret %nyx_string* %3997
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %3998 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %3999 = load %nyx_string*, %nyx_string** %3998
  %4000 = alloca %nyx_string*
  store %nyx_string* %3999, %nyx_string** %4000
  %4001 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %4002 = getelementptr [1 x i8], [1 x i8]* @.str556, i32 0, i32 0
  %4003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %4002, i64 0)
  %4004 = call i1 @nyx_string_equals(%nyx_string* %4001, %nyx_string* %4003)
  %4005 = xor i1 %4004, true
  br i1 %4005, label %then630, label %else631
then630:
  %4006 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %4006, %nyx_string** %4000
  br label %merge632
else631:
  br label %merge632
merge632:
  %4007 = getelementptr [1 x i8], [1 x i8]* @.str557, i32 0, i32 0
  %4008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %4007, i64 0)
  %4009 = alloca %nyx_string*
  store %nyx_string* %4008, %nyx_string** %4009
  %4010 = load %nyx_string*, %nyx_string** %4000
  %4011 = getelementptr [1 x i8], [1 x i8]* @.str558, i32 0, i32 0
  %4012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %4011, i64 0)
  %4013 = call i1 @nyx_string_equals(%nyx_string* %4010, %nyx_string* %4012)
  %4014 = xor i1 %4013, true
  br i1 %4014, label %then633, label %else634
then633:
  %4015 = getelementptr [3 x i8], [3 x i8]* @.str559, i32 0, i32 0
  %4016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %4015, i64 2)
  %4017 = load %nyx_string*, %nyx_string** %4000
  %4018 = call %nyx_string* @nyx_string_concat(%nyx_string* %4016, %nyx_string* %4017)
  %4019 = getelementptr [2 x i8], [2 x i8]* @.str560, i32 0, i32 0
  %4020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %4019, i64 1)
  %4021 = call %nyx_string* @nyx_string_concat(%nyx_string* %4018, %nyx_string* %4020)
  store %nyx_string* %4021, %nyx_string** %4009
  br label %merge635
else634:
  br label %merge635
merge635:
  %4022 = getelementptr [13 x i8], [13 x i8]* @.str561, i32 0, i32 0
  %4023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %4022, i64 12)
  %4024 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4025 = load %nyx_string*, %nyx_string** %4024
  %4026 = call %nyx_string* @nyx_string_concat(%nyx_string* %4023, %nyx_string* %4025)
  %4027 = getelementptr [3 x i8], [3 x i8]* @.str562, i32 0, i32 0
  %4028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %4027, i64 2)
  %4029 = call %nyx_string* @nyx_string_concat(%nyx_string* %4026, %nyx_string* %4028)
  %4030 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4031 = load %nyx_string*, %nyx_string** %4030
  %4032 = call %nyx_string* @nyx_string_concat(%nyx_string* %4029, %nyx_string* %4031)
  %4033 = load %nyx_string*, %nyx_string** %4009
  %4034 = call %nyx_string* @nyx_string_concat(%nyx_string* %4032, %nyx_string* %4033)
  %4035 = call i8* @nyx_string_to_cstr(%nyx_string* %4034)
  call void @nyx_print_string(i8* %4035)
  %4036 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %4037 = call i1 @resolve_deps(%ProjectConfig %4036)
  %4038 = alloca i1
  store i1 %4037, i1* %4038
  %4039 = load i1, i1* %4038
  %4040 = icmp eq i1 %4039, 0
  br i1 %4040, label %then636, label %else637
then636:
  ret i1 0
else637:
  br label %merge638
merge638:
  %4041 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4042 = load %nyx_string*, %nyx_string** %4041
  %4043 = call i8* @nyx_string_to_cstr(%nyx_string* %4042)
  %4044 = call i1 @nyx_file_exists(i8* %4043)
  %4045 = xor i1 %4044, true
  br i1 %4045, label %then639, label %else640
then639:
  %4046 = getelementptr [29 x i8], [29 x i8]* @.str563, i32 0, i32 0
  %4047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %4046, i64 28)
  %4048 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4049 = load %nyx_string*, %nyx_string** %4048
  %4050 = call %nyx_string* @nyx_string_concat(%nyx_string* %4047, %nyx_string* %4049)
  %4051 = call i8* @nyx_string_to_cstr(%nyx_string* %4050)
  call void @nyx_print_string(i8* %4051)
  ret i1 0
else640:
  br label %merge641
merge641:
  %4052 = getelementptr [1 x i8], [1 x i8]* @.str564, i32 0, i32 0
  %4053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %4052, i64 0)
  %4054 = alloca %nyx_string*
  store %nyx_string* %4053, %nyx_string** %4054
  %4055 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %4056 = load i1, i1* %4055
  br i1 %4056, label %then642, label %else643
then642:
  %4057 = getelementptr [13 x i8], [13 x i8]* @.str565, i32 0, i32 0
  %4058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %4057, i64 12)
  store %nyx_string* %4058, %nyx_string** %4054
  br label %merge644
else643:
  br label %merge644
merge644:
  %4059 = getelementptr [14 x i8], [14 x i8]* @.str566, i32 0, i32 0
  %4060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %4059, i64 13)
  %4061 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4062 = load %nyx_string*, %nyx_string** %4061
  %4063 = call %nyx_string* @nyx_string_concat(%nyx_string* %4060, %nyx_string* %4062)
  %4064 = call i8* @nyx_string_to_cstr(%nyx_string* %4063)
  call void @nyx_print_string(i8* %4064)
  %4065 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4066 = load %nyx_string*, %nyx_string** %4065
  %4067 = alloca %nyx_string*
  store %nyx_string* %4066, %nyx_string** %4067
  %4068 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 9
  %4069 = load %nyx_string*, %nyx_string** %4068
  %4070 = getelementptr [1 x i8], [1 x i8]* @.str567, i32 0, i32 0
  %4071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %4070, i64 0)
  %4072 = call i1 @nyx_string_equals(%nyx_string* %4069, %nyx_string* %4071)
  %4073 = xor i1 %4072, true
  br i1 %4073, label %then645, label %else646
then645:
  %4074 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 9
  %4075 = load %nyx_string*, %nyx_string** %4074
  store %nyx_string* %4075, %nyx_string** %4067
  br label %merge647
else646:
  br label %merge647
merge647:
  %4076 = load %nyx_string*, %nyx_string** %4067
  %4077 = alloca %nyx_string*
  store %nyx_string* %4076, %nyx_string** %4077
  %4078 = getelementptr [1 x i8], [1 x i8]* @.str568, i32 0, i32 0
  %4079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %4078, i64 0)
  %4080 = alloca %nyx_string*
  store %nyx_string* %4079, %nyx_string** %4080
  %4081 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 9
  %4082 = load %nyx_string*, %nyx_string** %4081
  %4083 = getelementptr [1 x i8], [1 x i8]* @.str569, i32 0, i32 0
  %4084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %4083, i64 0)
  %4085 = call i1 @nyx_string_equals(%nyx_string* %4082, %nyx_string* %4084)
  %4086 = xor i1 %4085, true
  br i1 %4086, label %then648, label %else649
then648:
  %4087 = getelementptr [8 x i8], [8 x i8]* @.str570, i32 0, i32 0
  %4088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %4087, i64 7)
  %4089 = load %nyx_string*, %nyx_string** %4067
  %4090 = call %nyx_string* @nyx_string_concat(%nyx_string* %4088, %nyx_string* %4089)
  store %nyx_string* %4090, %nyx_string** %4077
  %4091 = getelementptr [29 x i8], [29 x i8]* @.str571, i32 0, i32 0
  %4092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %4091, i64 28)
  store %nyx_string* %4092, %nyx_string** %4080
  br label %merge650
else649:
  br label %merge650
merge650:
  %4093 = getelementptr [1 x i8], [1 x i8]* @.str572, i32 0, i32 0
  %4094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %4093, i64 0)
  %4095 = alloca %nyx_string*
  store %nyx_string* %4094, %nyx_string** %4095
  %4096 = load i1, i1* %release.ptr
  br i1 %4096, label %then651, label %else652
then651:
  %4097 = getelementptr [4 x i8], [4 x i8]* @.str573, i32 0, i32 0
  %4098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %4097, i64 3)
  store %nyx_string* %4098, %nyx_string** %4095
  br label %merge653
else652:
  br label %merge653
merge653:
  %4099 = getelementptr [9 x i8], [9 x i8]* @.str574, i32 0, i32 0
  %4100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %4099, i64 8)
  %4101 = call i8* @nyx_string_to_cstr(%nyx_string* %4100)
  %4102 = call %nyx_string* @nyx_getenv(i8* %4101)
  %4103 = alloca %nyx_string*
  store %nyx_string* %4102, %nyx_string** %4103
  %4104 = load %nyx_string*, %nyx_string** %4103
  %4105 = getelementptr [1 x i8], [1 x i8]* @.str575, i32 0, i32 0
  %4106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %4105, i64 0)
  %4107 = call i1 @nyx_string_equals(%nyx_string* %4104, %nyx_string* %4106)
  br i1 %4107, label %then654, label %else655
then654:
  %4108 = getelementptr [5 x i8], [5 x i8]* @.str576, i32 0, i32 0
  %4109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %4108, i64 4)
  %4110 = call i8* @nyx_string_to_cstr(%nyx_string* %4109)
  %4111 = call %nyx_string* @nyx_getenv(i8* %4110)
  %4112 = alloca %nyx_string*
  store %nyx_string* %4111, %nyx_string** %4112
  %4113 = load %nyx_string*, %nyx_string** %4112
  %4114 = getelementptr [6 x i8], [6 x i8]* @.str577, i32 0, i32 0
  %4115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %4114, i64 5)
  %4116 = call %nyx_string* @nyx_string_concat(%nyx_string* %4113, %nyx_string* %4115)
  %4117 = alloca %nyx_string*
  store %nyx_string* %4116, %nyx_string** %4117
  %4118 = alloca i1
  store i1 false, i1* %4118
  %4119 = load %nyx_string*, %nyx_string** %4112
  %4120 = getelementptr [1 x i8], [1 x i8]* @.str578, i32 0, i32 0
  %4121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %4120, i64 0)
  %4122 = call i1 @nyx_string_equals(%nyx_string* %4119, %nyx_string* %4121)
  %4123 = xor i1 %4122, true
  br i1 %4123, label %sc_and_rhs657, label %sc_and_end658
sc_and_rhs657:
  %4124 = load %nyx_string*, %nyx_string** %4117
  %4125 = getelementptr [19 x i8], [19 x i8]* @.str579, i32 0, i32 0
  %4126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %4125, i64 18)
  %4127 = call %nyx_string* @nyx_string_concat(%nyx_string* %4124, %nyx_string* %4126)
  %4128 = call i8* @nyx_string_to_cstr(%nyx_string* %4127)
  %4129 = call i1 @nyx_file_exists(i8* %4128)
  store i1 %4129, i1* %4118
  br label %sc_and_end658
sc_and_end658:
  %4130 = load i1, i1* %4118
  br i1 %4130, label %then659, label %else660
then659:
  %4131 = load %nyx_string*, %nyx_string** %4117
  store %nyx_string* %4131, %nyx_string** %4103
  br label %merge661
else660:
  br label %merge661
merge661:
  br label %merge656
else655:
  br label %merge656
merge656:
  %4132 = load %nyx_string*, %nyx_string** %4103
  %4133 = getelementptr [1 x i8], [1 x i8]* @.str580, i32 0, i32 0
  %4134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %4133, i64 0)
  %4135 = call i1 @nyx_string_equals(%nyx_string* %4132, %nyx_string* %4134)
  br i1 %4135, label %then662, label %else663
then662:
  %4136 = getelementptr [14 x i8], [14 x i8]* @.str581, i32 0, i32 0
  %4137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4136, i64 13)
  %4138 = call i8* @nyx_string_to_cstr(%nyx_string* %4137)
  %4139 = call i1 @nyx_file_exists(i8* %4138)
  br i1 %4139, label %then665, label %else666
then665:
  %4140 = getelementptr [2 x i8], [2 x i8]* @.str582, i32 0, i32 0
  %4141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4140, i64 1)
  store %nyx_string* %4141, %nyx_string** %4103
  br label %merge667
else666:
  br label %merge667
merge667:
  br label %merge664
else663:
  br label %merge664
merge664:
  %4142 = load %nyx_string*, %nyx_string** %4103
  %4143 = getelementptr [1 x i8], [1 x i8]* @.str583, i32 0, i32 0
  %4144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4143, i64 0)
  %4145 = call i1 @nyx_string_equals(%nyx_string* %4142, %nyx_string* %4144)
  br i1 %4145, label %then668, label %else669
then668:
  %4146 = getelementptr [56 x i8], [56 x i8]* @.str584, i32 0, i32 0
  %4147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4146, i64 55)
  %4148 = call i8* @nyx_string_to_cstr(%nyx_string* %4147)
  call void @nyx_print_string(i8* %4148)
  ret i1 0
else669:
  br label %merge670
merge670:
  %4149 = load %nyx_string*, %nyx_string** %4103
  %4150 = getelementptr [15 x i8], [15 x i8]* @.str585, i32 0, i32 0
  %4151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4150, i64 14)
  %4152 = call %nyx_string* @nyx_string_concat(%nyx_string* %4149, %nyx_string* %4151)
  %4153 = alloca %nyx_string*
  store %nyx_string* %4152, %nyx_string** %4153
  %4154 = load %nyx_string*, %nyx_string** %4153
  %4155 = call i8* @nyx_string_to_cstr(%nyx_string* %4154)
  %4156 = call i1 @nyx_file_exists(i8* %4155)
  %4157 = xor i1 %4156, true
  br i1 %4157, label %then671, label %else672
then671:
  %4158 = load %nyx_string*, %nyx_string** %4103
  %4159 = getelementptr [9 x i8], [9 x i8]* @.str586, i32 0, i32 0
  %4160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4159, i64 8)
  %4161 = call %nyx_string* @nyx_string_concat(%nyx_string* %4158, %nyx_string* %4160)
  store %nyx_string* %4161, %nyx_string** %4153
  br label %merge673
else672:
  br label %merge673
merge673:
  %4162 = load %nyx_string*, %nyx_string** %4103
  %4163 = getelementptr [9 x i8], [9 x i8]* @.str587, i32 0, i32 0
  %4164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4163, i64 8)
  %4165 = call %nyx_string* @nyx_string_concat(%nyx_string* %4162, %nyx_string* %4164)
  %4166 = alloca %nyx_string*
  store %nyx_string* %4165, %nyx_string** %4166
  %4167 = getelementptr [20 x i8], [20 x i8]* @.str588, i32 0, i32 0
  %4168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4167, i64 19)
  %4169 = getelementptr [19 x i8], [19 x i8]* @.str589, i32 0, i32 0
  %4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4169, i64 18)
  %4171 = call %nyx_string* @nyx_string_concat(%nyx_string* %4168, %nyx_string* %4170)
  %4172 = getelementptr [5 x i8], [5 x i8]* @.str590, i32 0, i32 0
  %4173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4172, i64 4)
  %4174 = call %nyx_string* @nyx_string_concat(%nyx_string* %4171, %nyx_string* %4173)
  %4175 = load %nyx_string*, %nyx_string** %4166
  %4176 = call %nyx_string* @nyx_string_concat(%nyx_string* %4174, %nyx_string* %4175)
  %4177 = getelementptr [3 x i8], [3 x i8]* @.str591, i32 0, i32 0
  %4178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4177, i64 2)
  %4179 = call %nyx_string* @nyx_string_concat(%nyx_string* %4176, %nyx_string* %4178)
  %4180 = getelementptr [43 x i8], [43 x i8]* @.str592, i32 0, i32 0
  %4181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4180, i64 42)
  %4182 = call %nyx_string* @nyx_string_concat(%nyx_string* %4179, %nyx_string* %4181)
  %4183 = getelementptr [37 x i8], [37 x i8]* @.str593, i32 0, i32 0
  %4184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4183, i64 36)
  %4185 = call %nyx_string* @nyx_string_concat(%nyx_string* %4182, %nyx_string* %4184)
  %4186 = getelementptr [17 x i8], [17 x i8]* @.str594, i32 0, i32 0
  %4187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4186, i64 16)
  %4188 = call %nyx_string* @nyx_string_concat(%nyx_string* %4185, %nyx_string* %4187)
  %4189 = getelementptr [38 x i8], [38 x i8]* @.str595, i32 0, i32 0
  %4190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4189, i64 37)
  %4191 = call %nyx_string* @nyx_string_concat(%nyx_string* %4188, %nyx_string* %4190)
  %4192 = getelementptr [17 x i8], [17 x i8]* @.str596, i32 0, i32 0
  %4193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4192, i64 16)
  %4194 = call %nyx_string* @nyx_string_concat(%nyx_string* %4191, %nyx_string* %4193)
  %4195 = getelementptr [15 x i8], [15 x i8]* @.str597, i32 0, i32 0
  %4196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4195, i64 14)
  %4197 = call %nyx_string* @nyx_string_concat(%nyx_string* %4194, %nyx_string* %4196)
  %4198 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4199 = load %nyx_string*, %nyx_string** %4198
  %4200 = call %nyx_string* @nyx_string_concat(%nyx_string* %4197, %nyx_string* %4199)
  %4201 = getelementptr [12 x i8], [12 x i8]* @.str598, i32 0, i32 0
  %4202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4201, i64 11)
  %4203 = call %nyx_string* @nyx_string_concat(%nyx_string* %4200, %nyx_string* %4202)
  %4204 = getelementptr [5 x i8], [5 x i8]* @.str599, i32 0, i32 0
  %4205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4204, i64 4)
  %4206 = call %nyx_string* @nyx_string_concat(%nyx_string* %4203, %nyx_string* %4205)
  %4207 = load %nyx_string*, %nyx_string** %4103
  %4208 = call %nyx_string* @nyx_string_concat(%nyx_string* %4206, %nyx_string* %4207)
  %4209 = getelementptr [3 x i8], [3 x i8]* @.str600, i32 0, i32 0
  %4210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4209, i64 2)
  %4211 = call %nyx_string* @nyx_string_concat(%nyx_string* %4208, %nyx_string* %4210)
  %4212 = load %nyx_string*, %nyx_string** %4054
  %4213 = call %nyx_string* @nyx_string_concat(%nyx_string* %4211, %nyx_string* %4212)
  %4214 = getelementptr [35 x i8], [35 x i8]* @.str601, i32 0, i32 0
  %4215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4214, i64 34)
  %4216 = call %nyx_string* @nyx_string_concat(%nyx_string* %4213, %nyx_string* %4215)
  %4217 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4218 = load %nyx_string*, %nyx_string** %4217
  %4219 = call %nyx_string* @nyx_string_concat(%nyx_string* %4216, %nyx_string* %4218)
  %4220 = getelementptr [32 x i8], [32 x i8]* @.str602, i32 0, i32 0
  %4221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4220, i64 31)
  %4222 = call %nyx_string* @nyx_string_concat(%nyx_string* %4219, %nyx_string* %4221)
  %4223 = load %nyx_string*, %nyx_string** %4153
  %4224 = call %nyx_string* @nyx_string_concat(%nyx_string* %4222, %nyx_string* %4223)
  %4225 = getelementptr [17 x i8], [17 x i8]* @.str603, i32 0, i32 0
  %4226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4225, i64 16)
  %4227 = call %nyx_string* @nyx_string_concat(%nyx_string* %4224, %nyx_string* %4226)
  %4228 = getelementptr [71 x i8], [71 x i8]* @.str604, i32 0, i32 0
  %4229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4228, i64 70)
  %4230 = call %nyx_string* @nyx_string_concat(%nyx_string* %4227, %nyx_string* %4229)
  %4231 = load %nyx_string*, %nyx_string** %4080
  %4232 = call %nyx_string* @nyx_string_concat(%nyx_string* %4230, %nyx_string* %4231)
  %4233 = getelementptr [7 x i8], [7 x i8]* @.str605, i32 0, i32 0
  %4234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4233, i64 6)
  %4235 = call %nyx_string* @nyx_string_concat(%nyx_string* %4232, %nyx_string* %4234)
  %4236 = load %nyx_string*, %nyx_string** %4095
  %4237 = call %nyx_string* @nyx_string_concat(%nyx_string* %4235, %nyx_string* %4236)
  %4238 = getelementptr [12 x i8], [12 x i8]* @.str606, i32 0, i32 0
  %4239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4238, i64 11)
  %4240 = call %nyx_string* @nyx_string_concat(%nyx_string* %4237, %nyx_string* %4239)
  %4241 = getelementptr [50 x i8], [50 x i8]* @.str607, i32 0, i32 0
  %4242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4241, i64 49)
  %4243 = call %nyx_string* @nyx_string_concat(%nyx_string* %4240, %nyx_string* %4242)
  %4244 = getelementptr [42 x i8], [42 x i8]* @.str608, i32 0, i32 0
  %4245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4244, i64 41)
  %4246 = call %nyx_string* @nyx_string_concat(%nyx_string* %4243, %nyx_string* %4245)
  %4247 = getelementptr [36 x i8], [36 x i8]* @.str609, i32 0, i32 0
  %4248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4247, i64 35)
  %4249 = call %nyx_string* @nyx_string_concat(%nyx_string* %4246, %nyx_string* %4248)
  %4250 = getelementptr [35 x i8], [35 x i8]* @.str610, i32 0, i32 0
  %4251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4250, i64 34)
  %4252 = call %nyx_string* @nyx_string_concat(%nyx_string* %4249, %nyx_string* %4251)
  %4253 = getelementptr [55 x i8], [55 x i8]* @.str611, i32 0, i32 0
  %4254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4253, i64 54)
  %4255 = call %nyx_string* @nyx_string_concat(%nyx_string* %4252, %nyx_string* %4254)
  %4256 = getelementptr [39 x i8], [39 x i8]* @.str612, i32 0, i32 0
  %4257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4256, i64 38)
  %4258 = call %nyx_string* @nyx_string_concat(%nyx_string* %4255, %nyx_string* %4257)
  %4259 = getelementptr [71 x i8], [71 x i8]* @.str613, i32 0, i32 0
  %4260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4259, i64 70)
  %4261 = call %nyx_string* @nyx_string_concat(%nyx_string* %4258, %nyx_string* %4260)
  %4262 = getelementptr [21 x i8], [21 x i8]* @.str614, i32 0, i32 0
  %4263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4262, i64 20)
  %4264 = call %nyx_string* @nyx_string_concat(%nyx_string* %4261, %nyx_string* %4263)
  %4265 = getelementptr [19 x i8], [19 x i8]* @.str615, i32 0, i32 0
  %4266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %4265, i64 18)
  %4267 = call %nyx_string* @nyx_string_concat(%nyx_string* %4264, %nyx_string* %4266)
  %4268 = getelementptr [44 x i8], [44 x i8]* @.str616, i32 0, i32 0
  %4269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %4268, i64 43)
  %4270 = call %nyx_string* @nyx_string_concat(%nyx_string* %4267, %nyx_string* %4269)
  %4271 = getelementptr [15 x i8], [15 x i8]* @.str617, i32 0, i32 0
  %4272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4271, i64 14)
  %4273 = call %nyx_string* @nyx_string_concat(%nyx_string* %4270, %nyx_string* %4272)
  %4274 = load %nyx_string*, %nyx_string** %4077
  %4275 = call %nyx_string* @nyx_string_concat(%nyx_string* %4273, %nyx_string* %4274)
  %4276 = getelementptr [13 x i8], [13 x i8]* @.str618, i32 0, i32 0
  %4277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4276, i64 12)
  %4278 = call %nyx_string* @nyx_string_concat(%nyx_string* %4275, %nyx_string* %4277)
  %4279 = getelementptr [44 x i8], [44 x i8]* @.str619, i32 0, i32 0
  %4280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4279, i64 43)
  %4281 = call %nyx_string* @nyx_string_concat(%nyx_string* %4278, %nyx_string* %4280)
  %4282 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4283 = load %nyx_string*, %nyx_string** %4282
  %4284 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4283)
  %4285 = call %nyx_string* @nyx_string_concat(%nyx_string* %4281, %nyx_string* %4284)
  %4286 = getelementptr [27 x i8], [27 x i8]* @.str620, i32 0, i32 0
  %4287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4286, i64 26)
  %4288 = call %nyx_string* @nyx_string_concat(%nyx_string* %4285, %nyx_string* %4287)
  %4289 = getelementptr [18 x i8], [18 x i8]* @.str621, i32 0, i32 0
  %4290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4289, i64 17)
  %4291 = call %nyx_string* @nyx_string_concat(%nyx_string* %4288, %nyx_string* %4290)
  %4292 = load %nyx_string*, %nyx_string** %4077
  %4293 = call %nyx_string* @nyx_string_concat(%nyx_string* %4291, %nyx_string* %4292)
  %4294 = getelementptr [3 x i8], [3 x i8]* @.str622, i32 0, i32 0
  %4295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4294, i64 2)
  %4296 = call %nyx_string* @nyx_string_concat(%nyx_string* %4293, %nyx_string* %4295)
  %4297 = alloca %nyx_string*
  store %nyx_string* %4296, %nyx_string** %4297
  %4298 = alloca i1
  store i1 false, i1* %4298
  %4299 = load %nyx_string*, %nyx_string** %4000
  %4300 = getelementptr [1 x i8], [1 x i8]* @.str623, i32 0, i32 0
  %4301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4300, i64 0)
  %4302 = call i1 @nyx_string_equals(%nyx_string* %4299, %nyx_string* %4301)
  %4303 = xor i1 %4302, true
  br i1 %4303, label %sc_and_rhs674, label %sc_and_end675
sc_and_rhs674:
  %4304 = load %nyx_string*, %nyx_string** %4000
  %4305 = getelementptr [12 x i8], [12 x i8]* @.str624, i32 0, i32 0
  %4306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4305, i64 11)
  %4307 = call i1 @nyx_string_equals(%nyx_string* %4304, %nyx_string* %4306)
  %4308 = xor i1 %4307, true
  store i1 %4308, i1* %4298
  br label %sc_and_end675
sc_and_end675:
  %4309 = load i1, i1* %4298
  br i1 %4309, label %then676, label %else677
then676:
  %4310 = alloca i1
  store i1 false, i1* %4310
  %4311 = load %nyx_string*, %nyx_string** %4000
  %4312 = getelementptr [23 x i8], [23 x i8]* @.str625, i32 0, i32 0
  %4313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4312, i64 22)
  %4314 = call i1 @nyx_string_equals(%nyx_string* %4311, %nyx_string* %4313)
  %4315 = xor i1 %4314, true
  br i1 %4315, label %sc_and_rhs679, label %sc_and_end680
sc_and_rhs679:
  %4316 = load %nyx_string*, %nyx_string** %4000
  %4317 = getelementptr [24 x i8], [24 x i8]* @.str626, i32 0, i32 0
  %4318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4317, i64 23)
  %4319 = call i1 @nyx_string_equals(%nyx_string* %4316, %nyx_string* %4318)
  %4320 = xor i1 %4319, true
  store i1 %4320, i1* %4310
  br label %sc_and_end680
sc_and_end680:
  %4321 = load i1, i1* %4310
  br i1 %4321, label %then681, label %else682
then681:
  %4322 = getelementptr [28 x i8], [28 x i8]* @.str627, i32 0, i32 0
  %4323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4322, i64 27)
  %4324 = load %nyx_string*, %nyx_string** %4000
  %4325 = call %nyx_string* @nyx_string_concat(%nyx_string* %4323, %nyx_string* %4324)
  %4326 = call i8* @nyx_string_to_cstr(%nyx_string* %4325)
  call void @nyx_print_string(i8* %4326)
  %4327 = getelementptr [83 x i8], [83 x i8]* @.str628, i32 0, i32 0
  %4328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4327, i64 82)
  %4329 = call i8* @nyx_string_to_cstr(%nyx_string* %4328)
  call void @nyx_print_string(i8* %4329)
  %4330 = getelementptr [52 x i8], [52 x i8]* @.str629, i32 0, i32 0
  %4331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %4330, i64 51)
  %4332 = call i8* @nyx_string_to_cstr(%nyx_string* %4331)
  call void @nyx_print_string(i8* %4332)
  ret i1 0
else682:
  br label %merge683
merge683:
  br label %merge678
else677:
  br label %merge678
merge678:
  %4333 = load %nyx_string*, %nyx_string** %4297
  %4334 = alloca %nyx_string*
  store %nyx_string* %4333, %nyx_string** %4334
  %4335 = load %nyx_string*, %nyx_string** %4000
  %4336 = getelementptr [12 x i8], [12 x i8]* @.str630, i32 0, i32 0
  %4337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %4336, i64 11)
  %4338 = call i1 @nyx_string_equals(%nyx_string* %4335, %nyx_string* %4337)
  br i1 %4338, label %then684, label %else685
then684:
  %4339 = getelementptr [20 x i8], [20 x i8]* @.str631, i32 0, i32 0
  %4340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %4339, i64 19)
  %4341 = getelementptr [19 x i8], [19 x i8]* @.str632, i32 0, i32 0
  %4342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %4341, i64 18)
  %4343 = call %nyx_string* @nyx_string_concat(%nyx_string* %4340, %nyx_string* %4342)
  %4344 = getelementptr [5 x i8], [5 x i8]* @.str633, i32 0, i32 0
  %4345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %4344, i64 4)
  %4346 = call %nyx_string* @nyx_string_concat(%nyx_string* %4343, %nyx_string* %4345)
  %4347 = load %nyx_string*, %nyx_string** %4166
  %4348 = call %nyx_string* @nyx_string_concat(%nyx_string* %4346, %nyx_string* %4347)
  %4349 = getelementptr [3 x i8], [3 x i8]* @.str634, i32 0, i32 0
  %4350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %4349, i64 2)
  %4351 = call %nyx_string* @nyx_string_concat(%nyx_string* %4348, %nyx_string* %4350)
  %4352 = getelementptr [11 x i8], [11 x i8]* @.str635, i32 0, i32 0
  %4353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %4352, i64 10)
  %4354 = call %nyx_string* @nyx_string_concat(%nyx_string* %4351, %nyx_string* %4353)
  %4355 = getelementptr [23 x i8], [23 x i8]* @.str636, i32 0, i32 0
  %4356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %4355, i64 22)
  %4357 = call %nyx_string* @nyx_string_concat(%nyx_string* %4354, %nyx_string* %4356)
  %4358 = getelementptr [43 x i8], [43 x i8]* @.str637, i32 0, i32 0
  %4359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %4358, i64 42)
  %4360 = call %nyx_string* @nyx_string_concat(%nyx_string* %4357, %nyx_string* %4359)
  %4361 = getelementptr [37 x i8], [37 x i8]* @.str638, i32 0, i32 0
  %4362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %4361, i64 36)
  %4363 = call %nyx_string* @nyx_string_concat(%nyx_string* %4360, %nyx_string* %4362)
  %4364 = getelementptr [17 x i8], [17 x i8]* @.str639, i32 0, i32 0
  %4365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %4364, i64 16)
  %4366 = call %nyx_string* @nyx_string_concat(%nyx_string* %4363, %nyx_string* %4365)
  %4367 = getelementptr [38 x i8], [38 x i8]* @.str640, i32 0, i32 0
  %4368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %4367, i64 37)
  %4369 = call %nyx_string* @nyx_string_concat(%nyx_string* %4366, %nyx_string* %4368)
  %4370 = getelementptr [17 x i8], [17 x i8]* @.str641, i32 0, i32 0
  %4371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %4370, i64 16)
  %4372 = call %nyx_string* @nyx_string_concat(%nyx_string* %4369, %nyx_string* %4371)
  %4373 = getelementptr [163 x i8], [163 x i8]* @.str642, i32 0, i32 0
  %4374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %4373, i64 162)
  %4375 = call %nyx_string* @nyx_string_concat(%nyx_string* %4372, %nyx_string* %4374)
  %4376 = getelementptr [15 x i8], [15 x i8]* @.str643, i32 0, i32 0
  %4377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %4376, i64 14)
  %4378 = call %nyx_string* @nyx_string_concat(%nyx_string* %4375, %nyx_string* %4377)
  %4379 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4380 = load %nyx_string*, %nyx_string** %4379
  %4381 = call %nyx_string* @nyx_string_concat(%nyx_string* %4378, %nyx_string* %4380)
  %4382 = getelementptr [12 x i8], [12 x i8]* @.str644, i32 0, i32 0
  %4383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %4382, i64 11)
  %4384 = call %nyx_string* @nyx_string_concat(%nyx_string* %4381, %nyx_string* %4383)
  %4385 = getelementptr [5 x i8], [5 x i8]* @.str645, i32 0, i32 0
  %4386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %4385, i64 4)
  %4387 = call %nyx_string* @nyx_string_concat(%nyx_string* %4384, %nyx_string* %4386)
  %4388 = load %nyx_string*, %nyx_string** %4103
  %4389 = call %nyx_string* @nyx_string_concat(%nyx_string* %4387, %nyx_string* %4388)
  %4390 = getelementptr [3 x i8], [3 x i8]* @.str646, i32 0, i32 0
  %4391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %4390, i64 2)
  %4392 = call %nyx_string* @nyx_string_concat(%nyx_string* %4389, %nyx_string* %4391)
  %4393 = getelementptr [70 x i8], [70 x i8]* @.str647, i32 0, i32 0
  %4394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %4393, i64 69)
  %4395 = call %nyx_string* @nyx_string_concat(%nyx_string* %4392, %nyx_string* %4394)
  %4396 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4397 = load %nyx_string*, %nyx_string** %4396
  %4398 = call %nyx_string* @nyx_string_concat(%nyx_string* %4395, %nyx_string* %4397)
  %4399 = getelementptr [32 x i8], [32 x i8]* @.str648, i32 0, i32 0
  %4400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %4399, i64 31)
  %4401 = call %nyx_string* @nyx_string_concat(%nyx_string* %4398, %nyx_string* %4400)
  %4402 = load %nyx_string*, %nyx_string** %4153
  %4403 = call %nyx_string* @nyx_string_concat(%nyx_string* %4401, %nyx_string* %4402)
  %4404 = getelementptr [17 x i8], [17 x i8]* @.str649, i32 0, i32 0
  %4405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %4404, i64 16)
  %4406 = call %nyx_string* @nyx_string_concat(%nyx_string* %4403, %nyx_string* %4405)
  %4407 = getelementptr [71 x i8], [71 x i8]* @.str650, i32 0, i32 0
  %4408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %4407, i64 70)
  %4409 = call %nyx_string* @nyx_string_concat(%nyx_string* %4406, %nyx_string* %4408)
  %4410 = getelementptr [24 x i8], [24 x i8]* @.str651, i32 0, i32 0
  %4411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %4410, i64 23)
  %4412 = call %nyx_string* @nyx_string_concat(%nyx_string* %4409, %nyx_string* %4411)
  %4413 = getelementptr [2 x i8], [2 x i8]* @.str652, i32 0, i32 0
  %4414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %4413, i64 1)
  %4415 = call %nyx_string* @nyx_string_concat(%nyx_string* %4412, %nyx_string* %4414)
  %4416 = getelementptr [76 x i8], [76 x i8]* @.str653, i32 0, i32 0
  %4417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %4416, i64 75)
  %4418 = call %nyx_string* @nyx_string_concat(%nyx_string* %4415, %nyx_string* %4417)
  %4419 = getelementptr [98 x i8], [98 x i8]* @.str654, i32 0, i32 0
  %4420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %4419, i64 97)
  %4421 = call %nyx_string* @nyx_string_concat(%nyx_string* %4418, %nyx_string* %4420)
  %4422 = getelementptr [41 x i8], [41 x i8]* @.str655, i32 0, i32 0
  %4423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %4422, i64 40)
  %4424 = call %nyx_string* @nyx_string_concat(%nyx_string* %4421, %nyx_string* %4423)
  %4425 = getelementptr [64 x i8], [64 x i8]* @.str656, i32 0, i32 0
  %4426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %4425, i64 63)
  %4427 = call %nyx_string* @nyx_string_concat(%nyx_string* %4424, %nyx_string* %4426)
  %4428 = getelementptr [56 x i8], [56 x i8]* @.str657, i32 0, i32 0
  %4429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %4428, i64 55)
  %4430 = call %nyx_string* @nyx_string_concat(%nyx_string* %4427, %nyx_string* %4429)
  %4431 = getelementptr [12 x i8], [12 x i8]* @.str658, i32 0, i32 0
  %4432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %4431, i64 11)
  %4433 = call %nyx_string* @nyx_string_concat(%nyx_string* %4430, %nyx_string* %4432)
  %4434 = getelementptr [34 x i8], [34 x i8]* @.str659, i32 0, i32 0
  %4435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %4434, i64 33)
  %4436 = call %nyx_string* @nyx_string_concat(%nyx_string* %4433, %nyx_string* %4435)
  %4437 = load %nyx_string*, %nyx_string** %4067
  %4438 = call %nyx_string* @nyx_string_concat(%nyx_string* %4436, %nyx_string* %4437)
  %4439 = getelementptr [18 x i8], [18 x i8]* @.str660, i32 0, i32 0
  %4440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %4439, i64 17)
  %4441 = call %nyx_string* @nyx_string_concat(%nyx_string* %4438, %nyx_string* %4440)
  %4442 = getelementptr [49 x i8], [49 x i8]* @.str661, i32 0, i32 0
  %4443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %4442, i64 48)
  %4444 = call %nyx_string* @nyx_string_concat(%nyx_string* %4441, %nyx_string* %4443)
  %4445 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4446 = load %nyx_string*, %nyx_string** %4445
  %4447 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4446)
  %4448 = call %nyx_string* @nyx_string_concat(%nyx_string* %4444, %nyx_string* %4447)
  %4449 = getelementptr [27 x i8], [27 x i8]* @.str662, i32 0, i32 0
  %4450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %4449, i64 26)
  %4451 = call %nyx_string* @nyx_string_concat(%nyx_string* %4448, %nyx_string* %4450)
  %4452 = getelementptr [32 x i8], [32 x i8]* @.str663, i32 0, i32 0
  %4453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %4452, i64 31)
  %4454 = call %nyx_string* @nyx_string_concat(%nyx_string* %4451, %nyx_string* %4453)
  %4455 = load %nyx_string*, %nyx_string** %4067
  %4456 = call %nyx_string* @nyx_string_concat(%nyx_string* %4454, %nyx_string* %4455)
  %4457 = getelementptr [41 x i8], [41 x i8]* @.str664, i32 0, i32 0
  %4458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %4457, i64 40)
  %4459 = call %nyx_string* @nyx_string_concat(%nyx_string* %4456, %nyx_string* %4458)
  %4460 = load %nyx_string*, %nyx_string** %4067
  %4461 = call %nyx_string* @nyx_string_concat(%nyx_string* %4459, %nyx_string* %4460)
  %4462 = getelementptr [9 x i8], [9 x i8]* @.str665, i32 0, i32 0
  %4463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %4462, i64 8)
  %4464 = call %nyx_string* @nyx_string_concat(%nyx_string* %4461, %nyx_string* %4463)
  store %nyx_string* %4464, %nyx_string** %4334
  br label %merge686
else685:
  br label %merge686
merge686:
  %4465 = getelementptr [16 x i8], [16 x i8]* @.str666, i32 0, i32 0
  %4466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %4465, i64 15)
  %4467 = call i64 @nyx_getpid()
  %4468 = call %nyx_string* @nyx_string_from_int(i64 %4467)
  %4469 = call %nyx_string* @nyx_string_concat(%nyx_string* %4466, %nyx_string* %4468)
  %4470 = getelementptr [4 x i8], [4 x i8]* @.str667, i32 0, i32 0
  %4471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %4470, i64 3)
  %4472 = call %nyx_string* @nyx_string_concat(%nyx_string* %4469, %nyx_string* %4471)
  %4473 = alloca %nyx_string*
  store %nyx_string* %4472, %nyx_string** %4473
  %4474 = load %nyx_string*, %nyx_string** %4473
  %4475 = load %nyx_string*, %nyx_string** %4334
  %4476 = call i8* @nyx_string_to_cstr(%nyx_string* %4474)
  %4477 = call i8* @nyx_string_to_cstr(%nyx_string* %4475)
  %4478 = call i1 @nyx_write_file(i8* %4476, i8* %4477)
  %4479 = getelementptr [7 x i8], [7 x i8]* @.str668, i32 0, i32 0
  %4480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %4479, i64 6)
  %4481 = load %nyx_string*, %nyx_string** %4473
  %4482 = call %nyx_string* @nyx_string_concat(%nyx_string* %4480, %nyx_string* %4481)
  %4483 = getelementptr [22 x i8], [22 x i8]* @.str669, i32 0, i32 0
  %4484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %4483, i64 21)
  %4485 = call %nyx_string* @nyx_string_concat(%nyx_string* %4482, %nyx_string* %4484)
  %4486 = load %nyx_string*, %nyx_string** %4473
  %4487 = call %nyx_string* @nyx_string_concat(%nyx_string* %4485, %nyx_string* %4486)
  %4488 = getelementptr [16 x i8], [16 x i8]* @.str670, i32 0, i32 0
  %4489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %4488, i64 15)
  %4490 = call %nyx_string* @nyx_string_concat(%nyx_string* %4487, %nyx_string* %4489)
  %4491 = call i8* @nyx_string_to_cstr(%nyx_string* %4490)
  %4492 = call i64 @nyx_exec_code(i8* %4491)
  %4493 = alloca i64
  store i64 %4492, i64* %4493
  %4494 = load i64, i64* %4493
  %4495 = icmp eq i64 %4494, 0
  ret i1 %4495
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %4496 = getelementptr [10 x i8], [10 x i8]* @.str671, i32 0, i32 0
  %4497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %4496, i64 9)
  %4498 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4499 = load %nyx_string*, %nyx_string** %4498
  %4500 = call %nyx_string* @nyx_string_concat(%nyx_string* %4497, %nyx_string* %4499)
  %4501 = call i8* @nyx_string_to_cstr(%nyx_string* %4500)
  call void @nyx_print_string(i8* %4501)
  %4502 = getelementptr [10 x i8], [10 x i8]* @.str672, i32 0, i32 0
  %4503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %4502, i64 9)
  %4504 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4505 = load %nyx_string*, %nyx_string** %4504
  %4506 = call %nyx_string* @nyx_string_concat(%nyx_string* %4503, %nyx_string* %4505)
  %4507 = call i8* @nyx_string_to_cstr(%nyx_string* %4506)
  call void @nyx_print_string(i8* %4507)
  %4508 = getelementptr [10 x i8], [10 x i8]* @.str673, i32 0, i32 0
  %4509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %4508, i64 9)
  %4510 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4511 = load %nyx_string*, %nyx_string** %4510
  %4512 = call %nyx_string* @nyx_string_concat(%nyx_string* %4509, %nyx_string* %4511)
  %4513 = call i8* @nyx_string_to_cstr(%nyx_string* %4512)
  call void @nyx_print_string(i8* %4513)
  %4514 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4515 = load %nyx_string*, %nyx_string** %4514
  %4516 = getelementptr [1 x i8], [1 x i8]* @.str674, i32 0, i32 0
  %4517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %4516, i64 0)
  %4518 = call i1 @nyx_string_equals(%nyx_string* %4515, %nyx_string* %4517)
  %4519 = xor i1 %4518, true
  br i1 %4519, label %then687, label %else688
then687:
  %4520 = getelementptr [10 x i8], [10 x i8]* @.str675, i32 0, i32 0
  %4521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %4520, i64 9)
  %4522 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %4523 = load %nyx_string*, %nyx_string** %4522
  %4524 = call %nyx_string* @nyx_string_concat(%nyx_string* %4521, %nyx_string* %4523)
  %4525 = call i8* @nyx_string_to_cstr(%nyx_string* %4524)
  call void @nyx_print_string(i8* %4525)
  br label %merge689
else688:
  br label %merge689
merge689:
  %4526 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %4527 = load %nyx_string*, %nyx_string** %4526
  %4528 = getelementptr [1 x i8], [1 x i8]* @.str676, i32 0, i32 0
  %4529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %4528, i64 0)
  %4530 = call i1 @nyx_string_equals(%nyx_string* %4527, %nyx_string* %4529)
  %4531 = xor i1 %4530, true
  br i1 %4531, label %then690, label %else691
then690:
  %4532 = getelementptr [10 x i8], [10 x i8]* @.str677, i32 0, i32 0
  %4533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %4532, i64 9)
  %4534 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %4535 = load %nyx_string*, %nyx_string** %4534
  %4536 = call %nyx_string* @nyx_string_concat(%nyx_string* %4533, %nyx_string* %4535)
  %4537 = call i8* @nyx_string_to_cstr(%nyx_string* %4536)
  call void @nyx_print_string(i8* %4537)
  br label %merge692
else691:
  br label %merge692
merge692:
  %4538 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %4539 = load i1, i1* %4538
  br i1 %4539, label %then693, label %else694
then693:
  %4540 = getelementptr [25 x i8], [25 x i8]* @.str678, i32 0, i32 0
  %4541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %4540, i64 24)
  %4542 = call i8* @nyx_string_to_cstr(%nyx_string* %4541)
  call void @nyx_print_string(i8* %4542)
  br label %merge695
else694:
  %4543 = getelementptr [22 x i8], [22 x i8]* @.str679, i32 0, i32 0
  %4544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %4543, i64 21)
  %4545 = call i8* @nyx_string_to_cstr(%nyx_string* %4544)
  call void @nyx_print_string(i8* %4545)
  br label %merge695
merge695:
  ret i64 0
}

define internal %nyx_string* @main_flag_error(
%nyx_string* %main_flag.param) {
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %4546 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4547 = getelementptr [2 x i8], [2 x i8]* @.str680, i32 0, i32 0
  %4548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %4547, i64 1)
  %4549 = call i1 @nyx_string_starts_with(%nyx_string* %4546, %nyx_string* %4548)
  br i1 %4549, label %then696, label %else697
then696:
  %4550 = getelementptr [98 x i8], [98 x i8]* @.str681, i32 0, i32 0
  %4551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %4550, i64 97)
  %4552 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4553 = call %nyx_string* @nyx_string_concat(%nyx_string* %4551, %nyx_string* %4552)
  ret %nyx_string* %4553
else697:
  br label %merge698
merge698:
  %4554 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4555 = getelementptr [4 x i8], [4 x i8]* @.str682, i32 0, i32 0
  %4556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %4555, i64 3)
  %4557 = call i1 @nyx_string_ends_with(%nyx_string* %4554, %nyx_string* %4556)
  %4558 = xor i1 %4557, true
  br i1 %4558, label %then699, label %else700
then699:
  %4559 = getelementptr [31 x i8], [31 x i8]* @.str683, i32 0, i32 0
  %4560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %4559, i64 30)
  %4561 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4562 = call %nyx_string* @nyx_string_concat(%nyx_string* %4560, %nyx_string* %4561)
  ret %nyx_string* %4562
else700:
  br label %merge701
merge701:
  %4563 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4564 = call i8* @nyx_string_to_cstr(%nyx_string* %4563)
  %4565 = call i1 @nyx_file_exists(i8* %4564)
  %4566 = xor i1 %4565, true
  br i1 %4566, label %then702, label %else703
then702:
  %4567 = getelementptr [31 x i8], [31 x i8]* @.str684, i32 0, i32 0
  %4568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %4567, i64 30)
  %4569 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4570 = call %nyx_string* @nyx_string_concat(%nyx_string* %4568, %nyx_string* %4569)
  %4571 = getelementptr [48 x i8], [48 x i8]* @.str685, i32 0, i32 0
  %4572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %4571, i64 47)
  %4573 = call %nyx_string* @nyx_string_concat(%nyx_string* %4570, %nyx_string* %4572)
  ret %nyx_string* %4573
else703:
  br label %merge704
merge704:
  %4574 = getelementptr [1 x i8], [1 x i8]* @.str686, i32 0, i32 0
  %4575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %4574, i64 0)
  ret %nyx_string* %4575
}

define internal %nyx_string* @strip_dot_slash(
%nyx_string* %p.param) {
  %p.ptr = alloca %nyx_string*
  store %nyx_string* %p.param, %nyx_string** %p.ptr
  %4576 = load %nyx_string*, %nyx_string** %p.ptr
  %4577 = getelementptr [3 x i8], [3 x i8]* @.str687, i32 0, i32 0
  %4578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %4577, i64 2)
  %4579 = call i1 @nyx_string_starts_with(%nyx_string* %4576, %nyx_string* %4578)
  br i1 %4579, label %then705, label %else706
then705:
  %4580 = load %nyx_string*, %nyx_string** %p.ptr
  %4581 = load %nyx_string*, %nyx_string** %p.ptr
  %4582 = call i64 @nyx_string_byte_length(%nyx_string* %4581)
  %4583 = call %nyx_string* @nyx_string_substring(%nyx_string* %4580, i64 2, i64 %4582)
  ret %nyx_string* %4583
else706:
  br label %merge707
merge707:
  %4584 = load %nyx_string*, %nyx_string** %p.ptr
  ret %nyx_string* %4584
}

define internal %nyx_string* @bin_name_for_main(
%ProjectConfig %config.param, %nyx_string* %main_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %main_flag.ptr = alloca %nyx_string*
  store %nyx_string* %main_flag.param, %nyx_string** %main_flag.ptr
  %4585 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4586 = getelementptr [1 x i8], [1 x i8]* @.str688, i32 0, i32 0
  %4587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %4586, i64 0)
  %4588 = call i1 @nyx_string_equals(%nyx_string* %4585, %nyx_string* %4587)
  br i1 %4588, label %then708, label %else709
then708:
  %4589 = getelementptr [1 x i8], [1 x i8]* @.str689, i32 0, i32 0
  %4590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %4589, i64 0)
  ret %nyx_string* %4590
else709:
  br label %merge710
merge710:
  %4591 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4592 = call %nyx_string* @strip_dot_slash(%nyx_string* %4591)
  %4593 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4594 = load %nyx_string*, %nyx_string** %4593
  %4595 = call %nyx_string* @strip_dot_slash(%nyx_string* %4594)
  %4596 = call i1 @nyx_string_equals(%nyx_string* %4592, %nyx_string* %4595)
  br i1 %4596, label %then711, label %else712
then711:
  %4597 = getelementptr [1 x i8], [1 x i8]* @.str690, i32 0, i32 0
  %4598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %4597, i64 0)
  ret %nyx_string* %4598
else712:
  br label %merge713
merge713:
  %4599 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4600 = alloca %nyx_string*
  store %nyx_string* %4599, %nyx_string** %4600
  %4601 = alloca i64
  store i64 0, i64* %4601
  %4602 = call i8* @llvm.stacksave()
  br label %while_cond714
while_cond714:
  %4603 = load i64, i64* %4601
  %4604 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4605 = call i64 @nyx_string_byte_length(%nyx_string* %4604)
  %4606 = icmp slt i64 %4603, %4605
  br i1 %4606, label %while_body715, label %while_end716
while_body715:
  call void @llvm.stackrestore(i8* %4602)
  %4607 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4608 = load i64, i64* %4601
  %4609 = call i8 @nyx_string_char_at(%nyx_string* %4607, i64 %4608)
  %4610 = zext i8 %4609 to i64
  %4611 = trunc i64 %4610 to i8
  %4612 = alloca i8
  store i8 %4611, i8* %4612
  %4613 = load i8, i8* %4612
  %4614 = getelementptr [1 x i8], [1 x i8]* @.str691, i32 0, i32 0
  %4615 = load i8, i8* %4614
  %4616 = zext i8 %4615 to i64
  %4617 = zext i8 %4613 to i64
  %4618 = icmp eq i64 %4617, %4616
  br i1 %4618, label %then717, label %else718
then717:
  %4619 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4620 = load i64, i64* %4601
  %4621 = add i64 %4620, 1
  %4622 = load %nyx_string*, %nyx_string** %main_flag.ptr
  %4623 = call i64 @nyx_string_byte_length(%nyx_string* %4622)
  %4624 = call %nyx_string* @nyx_string_substring(%nyx_string* %4619, i64 %4621, i64 %4623)
  store %nyx_string* %4624, %nyx_string** %4600
  br label %merge719
else718:
  br label %merge719
merge719:
  %4625 = load i64, i64* %4601
  %4626 = add i64 %4625, 1
  store i64 %4626, i64* %4601
  br label %while_cond714
while_end716:
  %4627 = load %nyx_string*, %nyx_string** %4600
  %4628 = load %nyx_string*, %nyx_string** %4600
  %4629 = call i64 @nyx_string_byte_length(%nyx_string* %4628)
  %4630 = sub i64 %4629, 3
  %4631 = call %nyx_string* @nyx_string_substring(%nyx_string* %4627, i64 0, i64 %4630)
  %4632 = alloca %nyx_string*
  store %nyx_string* %4631, %nyx_string** %4632
  %4633 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4634 = load %nyx_string*, %nyx_string** %4633
  %4635 = getelementptr [2 x i8], [2 x i8]* @.str692, i32 0, i32 0
  %4636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %4635, i64 1)
  %4637 = call %nyx_string* @nyx_string_concat(%nyx_string* %4634, %nyx_string* %4636)
  %4638 = load %nyx_string*, %nyx_string** %4632
  %4639 = call %nyx_string* @nyx_string_concat(%nyx_string* %4637, %nyx_string* %4638)
  ret %nyx_string* %4639
}

define internal %nyx_string* @toolchain_version(
) {
  %4640 = getelementptr [9 x i8], [9 x i8]* @.str693, i32 0, i32 0
  %4641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %4640, i64 8)
  %4642 = call i8* @nyx_string_to_cstr(%nyx_string* %4641)
  %4643 = call %nyx_string* @nyx_getenv(i8* %4642)
  %4644 = alloca %nyx_string*
  store %nyx_string* %4643, %nyx_string** %4644
  %4645 = load %nyx_string*, %nyx_string** %4644
  %4646 = getelementptr [1 x i8], [1 x i8]* @.str694, i32 0, i32 0
  %4647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %4646, i64 0)
  %4648 = call i1 @nyx_string_equals(%nyx_string* %4645, %nyx_string* %4647)
  br i1 %4648, label %then720, label %else721
then720:
  %4649 = getelementptr [5 x i8], [5 x i8]* @.str695, i32 0, i32 0
  %4650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %4649, i64 4)
  %4651 = call i8* @nyx_string_to_cstr(%nyx_string* %4650)
  %4652 = call %nyx_string* @nyx_getenv(i8* %4651)
  %4653 = alloca %nyx_string*
  store %nyx_string* %4652, %nyx_string** %4653
  %4654 = load %nyx_string*, %nyx_string** %4653
  %4655 = getelementptr [1 x i8], [1 x i8]* @.str696, i32 0, i32 0
  %4656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %4655, i64 0)
  %4657 = call i1 @nyx_string_equals(%nyx_string* %4654, %nyx_string* %4656)
  %4658 = xor i1 %4657, true
  br i1 %4658, label %then723, label %else724
then723:
  %4659 = load %nyx_string*, %nyx_string** %4653
  %4660 = getelementptr [6 x i8], [6 x i8]* @.str697, i32 0, i32 0
  %4661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %4660, i64 5)
  %4662 = call %nyx_string* @nyx_string_concat(%nyx_string* %4659, %nyx_string* %4661)
  store %nyx_string* %4662, %nyx_string** %4644
  br label %merge725
else724:
  br label %merge725
merge725:
  br label %merge722
else721:
  br label %merge722
merge722:
  %4663 = load %nyx_string*, %nyx_string** %4644
  %4664 = getelementptr [1 x i8], [1 x i8]* @.str698, i32 0, i32 0
  %4665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %4664, i64 0)
  %4666 = call i1 @nyx_string_equals(%nyx_string* %4663, %nyx_string* %4665)
  %4667 = xor i1 %4666, true
  br i1 %4667, label %then726, label %else727
then726:
  %4668 = load %nyx_string*, %nyx_string** %4644
  %4669 = getelementptr [9 x i8], [9 x i8]* @.str699, i32 0, i32 0
  %4670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %4669, i64 8)
  %4671 = call %nyx_string* @nyx_string_concat(%nyx_string* %4668, %nyx_string* %4670)
  %4672 = call i8* @nyx_string_to_cstr(%nyx_string* %4671)
  %4673 = call i1 @nyx_file_exists(i8* %4672)
  br i1 %4673, label %then729, label %else730
then729:
  %4674 = load %nyx_string*, %nyx_string** %4644
  %4675 = getelementptr [9 x i8], [9 x i8]* @.str700, i32 0, i32 0
  %4676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %4675, i64 8)
  %4677 = call %nyx_string* @nyx_string_concat(%nyx_string* %4674, %nyx_string* %4676)
  %4678 = call i8* @nyx_string_to_cstr(%nyx_string* %4677)
  %4679 = call %nyx_string* @nyx_read_file(i8* %4678)
  %4680 = alloca %nyx_string*
  store %nyx_string* %4679, %nyx_string** %4680
  %4681 = load %nyx_string*, %nyx_string** %4680
  %4682 = call %nyx_string* @nyx_string_trim(%nyx_string* %4681)
  ret %nyx_string* %4682
else730:
  br label %merge731
merge731:
  br label %merge728
else727:
  br label %merge728
merge728:
  %4683 = getelementptr [8 x i8], [8 x i8]* @.str701, i32 0, i32 0
  %4684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %4683, i64 7)
  %4685 = call i8* @nyx_string_to_cstr(%nyx_string* %4684)
  %4686 = call i1 @nyx_file_exists(i8* %4685)
  br i1 %4686, label %then732, label %else733
then732:
  %4687 = getelementptr [8 x i8], [8 x i8]* @.str702, i32 0, i32 0
  %4688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %4687, i64 7)
  %4689 = call i8* @nyx_string_to_cstr(%nyx_string* %4688)
  %4690 = call %nyx_string* @nyx_read_file(i8* %4689)
  %4691 = alloca %nyx_string*
  store %nyx_string* %4690, %nyx_string** %4691
  %4692 = load %nyx_string*, %nyx_string** %4691
  %4693 = call %nyx_string* @nyx_string_trim(%nyx_string* %4692)
  ret %nyx_string* %4693
else733:
  br label %merge734
merge734:
  %4694 = getelementptr [7 x i8], [7 x i8]* @.str703, i32 0, i32 0
  %4695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %4694, i64 6)
  ret %nyx_string* %4695
}

define internal %nyx_string* @report_template(
) {
  %4696 = getelementptr [51 x i8], [51 x i8]* @.str704, i32 0, i32 0
  %4697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %4696, i64 50)
  %4698 = alloca %nyx_string*
  store %nyx_string* %4697, %nyx_string** %4698
  %4699 = load %nyx_string*, %nyx_string** %4698
  %4700 = getelementptr [74 x i8], [74 x i8]* @.str705, i32 0, i32 0
  %4701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %4700, i64 73)
  %4702 = call %nyx_string* @nyx_string_concat(%nyx_string* %4699, %nyx_string* %4701)
  store %nyx_string* %4702, %nyx_string** %4698
  %4703 = load %nyx_string*, %nyx_string** %4698
  %4704 = getelementptr [88 x i8], [88 x i8]* @.str706, i32 0, i32 0
  %4705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %4704, i64 87)
  %4706 = call %nyx_string* @nyx_string_concat(%nyx_string* %4703, %nyx_string* %4705)
  store %nyx_string* %4706, %nyx_string** %4698
  %4707 = load %nyx_string*, %nyx_string** %4698
  %4708 = getelementptr [51 x i8], [51 x i8]* @.str707, i32 0, i32 0
  %4709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %4708, i64 50)
  %4710 = call %nyx_string* @nyx_string_concat(%nyx_string* %4707, %nyx_string* %4709)
  store %nyx_string* %4710, %nyx_string** %4698
  %4711 = load %nyx_string*, %nyx_string** %4698
  %4712 = getelementptr [90 x i8], [90 x i8]* @.str708, i32 0, i32 0
  %4713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %4712, i64 89)
  %4714 = call %nyx_string* @nyx_string_concat(%nyx_string* %4711, %nyx_string* %4713)
  store %nyx_string* %4714, %nyx_string** %4698
  %4715 = load %nyx_string*, %nyx_string** %4698
  %4716 = getelementptr [104 x i8], [104 x i8]* @.str709, i32 0, i32 0
  %4717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %4716, i64 103)
  %4718 = call %nyx_string* @nyx_string_concat(%nyx_string* %4715, %nyx_string* %4717)
  store %nyx_string* %4718, %nyx_string** %4698
  %4719 = load %nyx_string*, %nyx_string** %4698
  %4720 = getelementptr [99 x i8], [99 x i8]* @.str710, i32 0, i32 0
  %4721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %4720, i64 98)
  %4722 = call %nyx_string* @nyx_string_concat(%nyx_string* %4719, %nyx_string* %4721)
  store %nyx_string* %4722, %nyx_string** %4698
  %4723 = load %nyx_string*, %nyx_string** %4698
  %4724 = getelementptr [126 x i8], [126 x i8]* @.str711, i32 0, i32 0
  %4725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %4724, i64 125)
  %4726 = call %nyx_string* @nyx_string_concat(%nyx_string* %4723, %nyx_string* %4725)
  store %nyx_string* %4726, %nyx_string** %4698
  %4727 = load %nyx_string*, %nyx_string** %4698
  %4728 = getelementptr [21 x i8], [21 x i8]* @.str712, i32 0, i32 0
  %4729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %4728, i64 20)
  %4730 = call %nyx_string* @nyx_string_concat(%nyx_string* %4727, %nyx_string* %4729)
  %4731 = call %nyx_string* @toolchain_version()
  %4732 = call %nyx_string* @nyx_string_concat(%nyx_string* %4730, %nyx_string* %4731)
  %4733 = getelementptr [25 x i8], [25 x i8]* @.str713, i32 0, i32 0
  %4734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %4733, i64 24)
  %4735 = call %nyx_string* @nyx_string_concat(%nyx_string* %4732, %nyx_string* %4734)
  store %nyx_string* %4735, %nyx_string** %4698
  %4736 = load %nyx_string*, %nyx_string** %4698
  ret %nyx_string* %4736
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %4737 = getelementptr [12 x i8], [12 x i8]* @.str714, i32 0, i32 0
  %4738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %4737, i64 11)
  %4739 = alloca %nyx_string*
  store %nyx_string* %4738, %nyx_string** %4739
  %4740 = load i1, i1* %do_send.ptr
  %4741 = xor i1 %4740, true
  br i1 %4741, label %then735, label %else736
then735:
  %4742 = load %nyx_string*, %nyx_string** %4739
  %4743 = call i8* @nyx_string_to_cstr(%nyx_string* %4742)
  %4744 = call i1 @nyx_file_exists(i8* %4743)
  br i1 %4744, label %then738, label %else739
then738:
  %4745 = load %nyx_string*, %nyx_string** %4739
  %4746 = call i8* @nyx_string_to_cstr(%nyx_string* %4745)
  %4747 = call %nyx_string* @nyx_read_file(i8* %4746)
  %4748 = alloca %nyx_string*
  store %nyx_string* %4747, %nyx_string** %4748
  %4749 = load %nyx_string*, %nyx_string** %4748
  %4750 = call i64 @nyx_string_byte_length(%nyx_string* %4749)
  %4751 = icmp sge i64 %4750, 40
  br i1 %4751, label %then741, label %else742
then741:
  %4752 = getelementptr [79 x i8], [79 x i8]* @.str715, i32 0, i32 0
  %4753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %4752, i64 78)
  %4754 = call i8* @nyx_string_to_cstr(%nyx_string* %4753)
  call void @nyx_print_string(i8* %4754)
  %4755 = getelementptr [62 x i8], [62 x i8]* @.str716, i32 0, i32 0
  %4756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %4755, i64 61)
  %4757 = call i8* @nyx_string_to_cstr(%nyx_string* %4756)
  call void @nyx_print_string(i8* %4757)
  ret i1 1
else742:
  br label %merge743
merge743:
  br label %merge740
else739:
  br label %merge740
merge740:
  %4758 = load %nyx_string*, %nyx_string** %4739
  %4759 = call %nyx_string* @report_template()
  %4760 = call i8* @nyx_string_to_cstr(%nyx_string* %4758)
  %4761 = call i8* @nyx_string_to_cstr(%nyx_string* %4759)
  %4762 = call i1 @nyx_write_file(i8* %4760, i8* %4761)
  %4763 = getelementptr [79 x i8], [79 x i8]* @.str717, i32 0, i32 0
  %4764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %4763, i64 78)
  %4765 = call i8* @nyx_string_to_cstr(%nyx_string* %4764)
  call void @nyx_print_string(i8* %4765)
  %4766 = getelementptr [71 x i8], [71 x i8]* @.str718, i32 0, i32 0
  %4767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %4766, i64 70)
  %4768 = call i8* @nyx_string_to_cstr(%nyx_string* %4767)
  call void @nyx_print_string(i8* %4768)
  %4769 = getelementptr [53 x i8], [53 x i8]* @.str719, i32 0, i32 0
  %4770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %4769, i64 52)
  %4771 = call i8* @nyx_string_to_cstr(%nyx_string* %4770)
  call void @nyx_print_string(i8* %4771)
  ret i1 1
else736:
  br label %merge737
merge737:
  %4772 = load %nyx_string*, %nyx_string** %4739
  %4773 = alloca %nyx_string*
  store %nyx_string* %4772, %nyx_string** %4773
  %4774 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %4775 = getelementptr [1 x i8], [1 x i8]* @.str720, i32 0, i32 0
  %4776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %4775, i64 0)
  %4777 = call i1 @nyx_string_equals(%nyx_string* %4774, %nyx_string* %4776)
  %4778 = xor i1 %4777, true
  br i1 %4778, label %then744, label %else745
then744:
  %4779 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %4779, %nyx_string** %4773
  br label %merge746
else745:
  br label %merge746
merge746:
  %4780 = load %nyx_string*, %nyx_string** %4773
  %4781 = call i8* @nyx_string_to_cstr(%nyx_string* %4780)
  %4782 = call i1 @nyx_file_exists(i8* %4781)
  %4783 = xor i1 %4782, true
  br i1 %4783, label %then747, label %else748
then747:
  %4784 = getelementptr [18 x i8], [18 x i8]* @.str721, i32 0, i32 0
  %4785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %4784, i64 17)
  %4786 = load %nyx_string*, %nyx_string** %4773
  %4787 = call %nyx_string* @nyx_string_concat(%nyx_string* %4785, %nyx_string* %4786)
  %4788 = getelementptr [57 x i8], [57 x i8]* @.str722, i32 0, i32 0
  %4789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %4788, i64 56)
  %4790 = call %nyx_string* @nyx_string_concat(%nyx_string* %4787, %nyx_string* %4789)
  %4791 = call i8* @nyx_string_to_cstr(%nyx_string* %4790)
  call void @nyx_print_string(i8* %4791)
  ret i1 0
else748:
  br label %merge749
merge749:
  %4792 = load %nyx_string*, %nyx_string** %4773
  %4793 = call i8* @nyx_string_to_cstr(%nyx_string* %4792)
  %4794 = call %nyx_string* @nyx_read_file(i8* %4793)
  %4795 = alloca %nyx_string*
  store %nyx_string* %4794, %nyx_string** %4795
  %4796 = load %nyx_string*, %nyx_string** %4795
  %4797 = call i64 @nyx_string_byte_length(%nyx_string* %4796)
  %4798 = icmp slt i64 %4797, 40
  br i1 %4798, label %then750, label %else751
then750:
  %4799 = getelementptr [67 x i8], [67 x i8]* @.str723, i32 0, i32 0
  %4800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %4799, i64 66)
  %4801 = call i8* @nyx_string_to_cstr(%nyx_string* %4800)
  call void @nyx_print_string(i8* %4801)
  ret i1 0
else751:
  br label %merge752
merge752:
  %4802 = getelementptr [1 x i8], [1 x i8]* @.str724, i32 0, i32 0
  %4803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %4802, i64 0)
  %4804 = alloca %nyx_string*
  store %nyx_string* %4803, %nyx_string** %4804
  %4805 = getelementptr [5 x i8], [5 x i8]* @.str725, i32 0, i32 0
  %4806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %4805, i64 4)
  %4807 = call i8* @nyx_string_to_cstr(%nyx_string* %4806)
  %4808 = call %nyx_string* @nyx_getenv(i8* %4807)
  %4809 = alloca %nyx_string*
  store %nyx_string* %4808, %nyx_string** %4809
  %4810 = load %nyx_string*, %nyx_string** %4809
  %4811 = getelementptr [1 x i8], [1 x i8]* @.str726, i32 0, i32 0
  %4812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %4811, i64 0)
  %4813 = call i1 @nyx_string_equals(%nyx_string* %4810, %nyx_string* %4812)
  %4814 = xor i1 %4813, true
  br i1 %4814, label %then753, label %else754
then753:
  %4815 = load %nyx_string*, %nyx_string** %4809
  %4816 = getelementptr [15 x i8], [15 x i8]* @.str727, i32 0, i32 0
  %4817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %4816, i64 14)
  %4818 = call %nyx_string* @nyx_string_concat(%nyx_string* %4815, %nyx_string* %4817)
  %4819 = call i8* @nyx_string_to_cstr(%nyx_string* %4818)
  %4820 = call i1 @nyx_file_exists(i8* %4819)
  br i1 %4820, label %then756, label %else757
then756:
  %4821 = load %nyx_string*, %nyx_string** %4809
  %4822 = getelementptr [15 x i8], [15 x i8]* @.str728, i32 0, i32 0
  %4823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %4822, i64 14)
  %4824 = call %nyx_string* @nyx_string_concat(%nyx_string* %4821, %nyx_string* %4823)
  %4825 = call i8* @nyx_string_to_cstr(%nyx_string* %4824)
  %4826 = call %nyx_string* @nyx_read_file(i8* %4825)
  %4827 = alloca %nyx_string*
  store %nyx_string* %4826, %nyx_string** %4827
  %4828 = load %nyx_string*, %nyx_string** %4827
  %4829 = call %nyx_string* @nyx_string_trim(%nyx_string* %4828)
  store %nyx_string* %4829, %nyx_string** %4804
  br label %merge758
else757:
  br label %merge758
merge758:
  br label %merge755
else754:
  br label %merge755
merge755:
  %4830 = load %nyx_string*, %nyx_string** %4804
  %4831 = getelementptr [1 x i8], [1 x i8]* @.str729, i32 0, i32 0
  %4832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %4831, i64 0)
  %4833 = call i1 @nyx_string_equals(%nyx_string* %4830, %nyx_string* %4832)
  br i1 %4833, label %then759, label %else760
then759:
  %4834 = getelementptr [77 x i8], [77 x i8]* @.str730, i32 0, i32 0
  %4835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %4834, i64 76)
  %4836 = call i8* @nyx_string_to_cstr(%nyx_string* %4835)
  call void @nyx_print_string(i8* %4836)
  br label %merge761
else760:
  br label %merge761
merge761:
  %4837 = getelementptr [10 x i8], [10 x i8]* @.str731, i32 0, i32 0
  %4838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %4837, i64 9)
  %4839 = load %nyx_string*, %nyx_string** %4804
  %4840 = call i64 @kv_connect_auth(%nyx_string* %4838, i64 6380, %nyx_string* %4839)
  %4841 = alloca i64
  store i64 %4840, i64* %4841
  %4842 = load i64, i64* %4841
  %4843 = icmp slt i64 %4842, 0
  br i1 %4843, label %then762, label %else763
then762:
  %4844 = getelementptr [54 x i8], [54 x i8]* @.str732, i32 0, i32 0
  %4845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %4844, i64 53)
  %4846 = call i8* @nyx_string_to_cstr(%nyx_string* %4845)
  call void @nyx_print_string(i8* %4846)
  %4847 = getelementptr [22 x i8], [22 x i8]* @.str733, i32 0, i32 0
  %4848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %4847, i64 21)
  %4849 = load %nyx_string*, %nyx_string** %4773
  %4850 = call %nyx_string* @nyx_string_concat(%nyx_string* %4848, %nyx_string* %4849)
  %4851 = getelementptr [28 x i8], [28 x i8]* @.str734, i32 0, i32 0
  %4852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %4851, i64 27)
  %4853 = call %nyx_string* @nyx_string_concat(%nyx_string* %4850, %nyx_string* %4852)
  %4854 = call i8* @nyx_string_to_cstr(%nyx_string* %4853)
  call void @nyx_print_string(i8* %4854)
  %4855 = getelementptr [44 x i8], [44 x i8]* @.str735, i32 0, i32 0
  %4856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %4855, i64 43)
  %4857 = call i8* @nyx_string_to_cstr(%nyx_string* %4856)
  call void @nyx_print_string(i8* %4857)
  ret i1 0
else763:
  br label %merge764
merge764:
  %4858 = getelementptr [5 x i8], [5 x i8]* @.str736, i32 0, i32 0
  %4859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %4858, i64 4)
  %4860 = load %nyx_string*, %nyx_string** %4795
  %4861 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %4860)
  %4862 = call %nyx_string* @nyx_string_concat(%nyx_string* %4859, %nyx_string* %4861)
  %4863 = alloca %nyx_string*
  store %nyx_string* %4862, %nyx_string** %4863
  %4864 = load i64, i64* %4841
  %4865 = getelementptr [11 x i8], [11 x i8]* @.str737, i32 0, i32 0
  %4866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %4865, i64 10)
  %4867 = load %nyx_string*, %nyx_string** %4863
  %4868 = call i64 @kv_rpush(i64 %4864, %nyx_string* %4866, %nyx_string* %4867)
  %4869 = alloca i64
  store i64 %4868, i64* %4869
  %4870 = load i64, i64* %4841
  %4871 = call i64 @kv_close(i64 %4870)
  %4872 = load i64, i64* %4869
  %4873 = icmp sle i64 %4872, 0
  br i1 %4873, label %then765, label %else766
then765:
  %4874 = getelementptr [37 x i8], [37 x i8]* @.str738, i32 0, i32 0
  %4875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %4874, i64 36)
  %4876 = call i8* @nyx_string_to_cstr(%nyx_string* %4875)
  call void @nyx_print_string(i8* %4876)
  ret i1 0
else766:
  br label %merge767
merge767:
  %4877 = getelementptr [55 x i8], [55 x i8]* @.str739, i32 0, i32 0
  %4878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %4877, i64 54)
  %4879 = load i64, i64* %4869
  %4880 = call %nyx_string* @nyx_string_from_int(i64 %4879)
  %4881 = call %nyx_string* @nyx_string_concat(%nyx_string* %4878, %nyx_string* %4880)
  %4882 = getelementptr [15 x i8], [15 x i8]* @.str740, i32 0, i32 0
  %4883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %4882, i64 14)
  %4884 = call %nyx_string* @nyx_string_concat(%nyx_string* %4881, %nyx_string* %4883)
  %4885 = call i8* @nyx_string_to_cstr(%nyx_string* %4884)
  call void @nyx_print_string(i8* %4885)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %4886 = getelementptr [9 x i8], [9 x i8]* @.str741, i32 0, i32 0
  %4887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %4886, i64 8)
  %4888 = call i8* @nyx_string_to_cstr(%nyx_string* %4887)
  %4889 = call %nyx_string* @nyx_getenv(i8* %4888)
  %4890 = alloca %nyx_string*
  store %nyx_string* %4889, %nyx_string** %4890
  %4891 = load %nyx_string*, %nyx_string** %4890
  %4892 = getelementptr [1 x i8], [1 x i8]* @.str742, i32 0, i32 0
  %4893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %4892, i64 0)
  %4894 = call i1 @nyx_string_equals(%nyx_string* %4891, %nyx_string* %4893)
  br i1 %4894, label %then768, label %else769
then768:
  %4895 = getelementptr [5 x i8], [5 x i8]* @.str743, i32 0, i32 0
  %4896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %4895, i64 4)
  %4897 = call i8* @nyx_string_to_cstr(%nyx_string* %4896)
  %4898 = call %nyx_string* @nyx_getenv(i8* %4897)
  %4899 = alloca %nyx_string*
  store %nyx_string* %4898, %nyx_string** %4899
  %4900 = load %nyx_string*, %nyx_string** %4899
  %4901 = getelementptr [6 x i8], [6 x i8]* @.str744, i32 0, i32 0
  %4902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %4901, i64 5)
  %4903 = call %nyx_string* @nyx_string_concat(%nyx_string* %4900, %nyx_string* %4902)
  %4904 = alloca %nyx_string*
  store %nyx_string* %4903, %nyx_string** %4904
  %4905 = alloca i1
  store i1 false, i1* %4905
  %4906 = load %nyx_string*, %nyx_string** %4899
  %4907 = getelementptr [1 x i8], [1 x i8]* @.str745, i32 0, i32 0
  %4908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %4907, i64 0)
  %4909 = call i1 @nyx_string_equals(%nyx_string* %4906, %nyx_string* %4908)
  %4910 = xor i1 %4909, true
  br i1 %4910, label %sc_and_rhs771, label %sc_and_end772
sc_and_rhs771:
  %4911 = load %nyx_string*, %nyx_string** %4904
  %4912 = getelementptr [5 x i8], [5 x i8]* @.str746, i32 0, i32 0
  %4913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %4912, i64 4)
  %4914 = call %nyx_string* @nyx_string_concat(%nyx_string* %4911, %nyx_string* %4913)
  %4915 = call i8* @nyx_string_to_cstr(%nyx_string* %4914)
  %4916 = call i1 @nyx_file_exists(i8* %4915)
  store i1 %4916, i1* %4905
  br label %sc_and_end772
sc_and_end772:
  %4917 = load i1, i1* %4905
  br i1 %4917, label %then773, label %else774
then773:
  %4918 = load %nyx_string*, %nyx_string** %4904
  store %nyx_string* %4918, %nyx_string** %4890
  br label %merge775
else774:
  br label %merge775
merge775:
  br label %merge770
else769:
  br label %merge770
merge770:
  %4919 = load %nyx_string*, %nyx_string** %4890
  %4920 = getelementptr [1 x i8], [1 x i8]* @.str747, i32 0, i32 0
  %4921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %4920, i64 0)
  %4922 = call i1 @nyx_string_equals(%nyx_string* %4919, %nyx_string* %4921)
  br i1 %4922, label %then776, label %else777
then776:
  %4923 = getelementptr [4 x i8], [4 x i8]* @.str748, i32 0, i32 0
  %4924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %4923, i64 3)
  %4925 = call i8* @nyx_string_to_cstr(%nyx_string* %4924)
  %4926 = call i1 @nyx_file_exists(i8* %4925)
  br i1 %4926, label %then779, label %else780
then779:
  %4927 = getelementptr [2 x i8], [2 x i8]* @.str749, i32 0, i32 0
  %4928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %4927, i64 1)
  store %nyx_string* %4928, %nyx_string** %4890
  br label %merge781
else780:
  br label %merge781
merge781:
  br label %merge778
else777:
  br label %merge778
merge778:
  %4929 = load %nyx_string*, %nyx_string** %4890
  %4930 = getelementptr [1 x i8], [1 x i8]* @.str750, i32 0, i32 0
  %4931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %4930, i64 0)
  %4932 = call i1 @nyx_string_equals(%nyx_string* %4929, %nyx_string* %4931)
  br i1 %4932, label %then782, label %else783
then782:
  %4933 = getelementptr [1 x i8], [1 x i8]* @.str751, i32 0, i32 0
  %4934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %4933, i64 0)
  ret %nyx_string* %4934
else783:
  br label %merge784
merge784:
  %4935 = load %nyx_string*, %nyx_string** %4890
  %4936 = getelementptr [5 x i8], [5 x i8]* @.str752, i32 0, i32 0
  %4937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %4936, i64 4)
  %4938 = call %nyx_string* @nyx_string_concat(%nyx_string* %4935, %nyx_string* %4937)
  ret %nyx_string* %4938
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %4939 = alloca i1
  store i1 true, i1* %4939
  %4940 = alloca i1
  store i1 true, i1* %4940
  %4941 = alloca i1
  store i1 true, i1* %4941
  %4942 = load %nyx_string*, %nyx_string** %name.ptr
  %4943 = getelementptr [5 x i8], [5 x i8]* @.str753, i32 0, i32 0
  %4944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %4943, i64 4)
  %4945 = call i1 @nyx_string_equals(%nyx_string* %4942, %nyx_string* %4944)
  br i1 %4945, label %sc_or_end786, label %sc_or_rhs785
sc_or_rhs785:
  %4946 = load %nyx_string*, %nyx_string** %name.ptr
  %4947 = getelementptr [4 x i8], [4 x i8]* @.str754, i32 0, i32 0
  %4948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %4947, i64 3)
  %4949 = call i1 @nyx_string_equals(%nyx_string* %4946, %nyx_string* %4948)
  store i1 %4949, i1* %4941
  br label %sc_or_end786
sc_or_end786:
  %4950 = load i1, i1* %4941
  br i1 %4950, label %sc_or_end788, label %sc_or_rhs787
sc_or_rhs787:
  %4951 = load %nyx_string*, %nyx_string** %name.ptr
  %4952 = getelementptr [10 x i8], [10 x i8]* @.str755, i32 0, i32 0
  %4953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %4952, i64 9)
  %4954 = call i1 @nyx_string_equals(%nyx_string* %4951, %nyx_string* %4953)
  store i1 %4954, i1* %4940
  br label %sc_or_end788
sc_or_end788:
  %4955 = load i1, i1* %4940
  br i1 %4955, label %sc_or_end790, label %sc_or_rhs789
sc_or_rhs789:
  %4956 = load %nyx_string*, %nyx_string** %name.ptr
  %4957 = getelementptr [7 x i8], [7 x i8]* @.str756, i32 0, i32 0
  %4958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %4957, i64 6)
  %4959 = call i1 @nyx_string_equals(%nyx_string* %4956, %nyx_string* %4958)
  store i1 %4959, i1* %4939
  br label %sc_or_end790
sc_or_end790:
  %4960 = load i1, i1* %4939
  br i1 %4960, label %then791, label %else792
then791:
  %4961 = getelementptr [11 x i8], [11 x i8]* @.str757, i32 0, i32 0
  %4962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %4961, i64 10)
  ret %nyx_string* %4962
else792:
  br label %merge793
merge793:
  %4963 = alloca i1
  store i1 true, i1* %4963
  %4964 = alloca i1
  store i1 true, i1* %4964
  %4965 = load %nyx_string*, %nyx_string** %name.ptr
  %4966 = getelementptr [7 x i8], [7 x i8]* @.str758, i32 0, i32 0
  %4967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %4966, i64 6)
  %4968 = call i1 @nyx_string_equals(%nyx_string* %4965, %nyx_string* %4967)
  br i1 %4968, label %sc_or_end795, label %sc_or_rhs794
sc_or_rhs794:
  %4969 = load %nyx_string*, %nyx_string** %name.ptr
  %4970 = getelementptr [3 x i8], [3 x i8]* @.str759, i32 0, i32 0
  %4971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %4970, i64 2)
  %4972 = call i1 @nyx_string_equals(%nyx_string* %4969, %nyx_string* %4971)
  store i1 %4972, i1* %4964
  br label %sc_or_end795
sc_or_end795:
  %4973 = load i1, i1* %4964
  br i1 %4973, label %sc_or_end797, label %sc_or_rhs796
sc_or_rhs796:
  %4974 = load %nyx_string*, %nyx_string** %name.ptr
  %4975 = getelementptr [9 x i8], [9 x i8]* @.str760, i32 0, i32 0
  %4976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %4975, i64 8)
  %4977 = call i1 @nyx_string_equals(%nyx_string* %4974, %nyx_string* %4976)
  store i1 %4977, i1* %4963
  br label %sc_or_end797
sc_or_end797:
  %4978 = load i1, i1* %4963
  br i1 %4978, label %then798, label %else799
then798:
  %4979 = getelementptr [20 x i8], [20 x i8]* @.str761, i32 0, i32 0
  %4980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %4979, i64 19)
  ret %nyx_string* %4980
else799:
  br label %merge800
merge800:
  %4981 = alloca i1
  store i1 true, i1* %4981
  %4982 = alloca i1
  store i1 true, i1* %4982
  %4983 = alloca i1
  store i1 true, i1* %4983
  %4984 = alloca i1
  store i1 true, i1* %4984
  %4985 = alloca i1
  store i1 true, i1* %4985
  %4986 = load %nyx_string*, %nyx_string** %name.ptr
  %4987 = getelementptr [5 x i8], [5 x i8]* @.str762, i32 0, i32 0
  %4988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %4987, i64 4)
  %4989 = call i1 @nyx_string_equals(%nyx_string* %4986, %nyx_string* %4988)
  br i1 %4989, label %sc_or_end802, label %sc_or_rhs801
sc_or_rhs801:
  %4990 = load %nyx_string*, %nyx_string** %name.ptr
  %4991 = getelementptr [8 x i8], [8 x i8]* @.str763, i32 0, i32 0
  %4992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %4991, i64 7)
  %4993 = call i1 @nyx_string_equals(%nyx_string* %4990, %nyx_string* %4992)
  store i1 %4993, i1* %4985
  br label %sc_or_end802
sc_or_end802:
  %4994 = load i1, i1* %4985
  br i1 %4994, label %sc_or_end804, label %sc_or_rhs803
sc_or_rhs803:
  %4995 = load %nyx_string*, %nyx_string** %name.ptr
  %4996 = getelementptr [5 x i8], [5 x i8]* @.str764, i32 0, i32 0
  %4997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %4996, i64 4)
  %4998 = call i1 @nyx_string_equals(%nyx_string* %4995, %nyx_string* %4997)
  store i1 %4998, i1* %4984
  br label %sc_or_end804
sc_or_end804:
  %4999 = load i1, i1* %4984
  br i1 %4999, label %sc_or_end806, label %sc_or_rhs805
sc_or_rhs805:
  %5000 = load %nyx_string*, %nyx_string** %name.ptr
  %5001 = getelementptr [4 x i8], [4 x i8]* @.str765, i32 0, i32 0
  %5002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %5001, i64 3)
  %5003 = call i1 @nyx_string_equals(%nyx_string* %5000, %nyx_string* %5002)
  store i1 %5003, i1* %4983
  br label %sc_or_end806
sc_or_end806:
  %5004 = load i1, i1* %4983
  br i1 %5004, label %sc_or_end808, label %sc_or_rhs807
sc_or_rhs807:
  %5005 = load %nyx_string*, %nyx_string** %name.ptr
  %5006 = getelementptr [7 x i8], [7 x i8]* @.str766, i32 0, i32 0
  %5007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %5006, i64 6)
  %5008 = call i1 @nyx_string_equals(%nyx_string* %5005, %nyx_string* %5007)
  store i1 %5008, i1* %4982
  br label %sc_or_end808
sc_or_end808:
  %5009 = load i1, i1* %4982
  br i1 %5009, label %sc_or_end810, label %sc_or_rhs809
sc_or_rhs809:
  %5010 = load %nyx_string*, %nyx_string** %name.ptr
  %5011 = getelementptr [9 x i8], [9 x i8]* @.str767, i32 0, i32 0
  %5012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %5011, i64 8)
  %5013 = call i1 @nyx_string_equals(%nyx_string* %5010, %nyx_string* %5012)
  store i1 %5013, i1* %4981
  br label %sc_or_end810
sc_or_end810:
  %5014 = load i1, i1* %4981
  br i1 %5014, label %then811, label %else812
then811:
  %5015 = getelementptr [23 x i8], [23 x i8]* @.str768, i32 0, i32 0
  %5016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %5015, i64 22)
  ret %nyx_string* %5016
else812:
  br label %merge813
merge813:
  %5017 = alloca i1
  store i1 true, i1* %5017
  %5018 = alloca i1
  store i1 true, i1* %5018
  %5019 = alloca i1
  store i1 true, i1* %5019
  %5020 = load %nyx_string*, %nyx_string** %name.ptr
  %5021 = getelementptr [3 x i8], [3 x i8]* @.str769, i32 0, i32 0
  %5022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %5021, i64 2)
  %5023 = call i1 @nyx_string_equals(%nyx_string* %5020, %nyx_string* %5022)
  br i1 %5023, label %sc_or_end815, label %sc_or_rhs814
sc_or_rhs814:
  %5024 = load %nyx_string*, %nyx_string** %name.ptr
  %5025 = getelementptr [5 x i8], [5 x i8]* @.str770, i32 0, i32 0
  %5026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %5025, i64 4)
  %5027 = call i1 @nyx_string_equals(%nyx_string* %5024, %nyx_string* %5026)
  store i1 %5027, i1* %5019
  br label %sc_or_end815
sc_or_end815:
  %5028 = load i1, i1* %5019
  br i1 %5028, label %sc_or_end817, label %sc_or_rhs816
sc_or_rhs816:
  %5029 = load %nyx_string*, %nyx_string** %name.ptr
  %5030 = getelementptr [3 x i8], [3 x i8]* @.str771, i32 0, i32 0
  %5031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %5030, i64 2)
  %5032 = call i1 @nyx_string_equals(%nyx_string* %5029, %nyx_string* %5031)
  store i1 %5032, i1* %5018
  br label %sc_or_end817
sc_or_end817:
  %5033 = load i1, i1* %5018
  br i1 %5033, label %sc_or_end819, label %sc_or_rhs818
sc_or_rhs818:
  %5034 = load %nyx_string*, %nyx_string** %name.ptr
  %5035 = getelementptr [5 x i8], [5 x i8]* @.str772, i32 0, i32 0
  %5036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %5035, i64 4)
  %5037 = call i1 @nyx_string_equals(%nyx_string* %5034, %nyx_string* %5036)
  store i1 %5037, i1* %5017
  br label %sc_or_end819
sc_or_end819:
  %5038 = load i1, i1* %5017
  br i1 %5038, label %then820, label %else821
then820:
  %5039 = getelementptr [15 x i8], [15 x i8]* @.str773, i32 0, i32 0
  %5040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %5039, i64 14)
  ret %nyx_string* %5040
else821:
  br label %merge822
merge822:
  %5041 = alloca i1
  store i1 true, i1* %5041
  %5042 = alloca i1
  store i1 true, i1* %5042
  %5043 = alloca i1
  store i1 true, i1* %5043
  %5044 = alloca i1
  store i1 true, i1* %5044
  %5045 = alloca i1
  store i1 true, i1* %5045
  %5046 = load %nyx_string*, %nyx_string** %name.ptr
  %5047 = getelementptr [4 x i8], [4 x i8]* @.str774, i32 0, i32 0
  %5048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %5047, i64 3)
  %5049 = call i1 @nyx_string_equals(%nyx_string* %5046, %nyx_string* %5048)
  br i1 %5049, label %sc_or_end824, label %sc_or_rhs823
sc_or_rhs823:
  %5050 = load %nyx_string*, %nyx_string** %name.ptr
  %5051 = getelementptr [4 x i8], [4 x i8]* @.str775, i32 0, i32 0
  %5052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %5051, i64 3)
  %5053 = call i1 @nyx_string_equals(%nyx_string* %5050, %nyx_string* %5052)
  store i1 %5053, i1* %5045
  br label %sc_or_end824
sc_or_end824:
  %5054 = load i1, i1* %5045
  br i1 %5054, label %sc_or_end826, label %sc_or_rhs825
sc_or_rhs825:
  %5055 = load %nyx_string*, %nyx_string** %name.ptr
  %5056 = getelementptr [4 x i8], [4 x i8]* @.str776, i32 0, i32 0
  %5057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %5056, i64 3)
  %5058 = call i1 @nyx_string_equals(%nyx_string* %5055, %nyx_string* %5057)
  store i1 %5058, i1* %5044
  br label %sc_or_end826
sc_or_end826:
  %5059 = load i1, i1* %5044
  br i1 %5059, label %sc_or_end828, label %sc_or_rhs827
sc_or_rhs827:
  %5060 = load %nyx_string*, %nyx_string** %name.ptr
  %5061 = getelementptr [6 x i8], [6 x i8]* @.str777, i32 0, i32 0
  %5062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %5061, i64 5)
  %5063 = call i1 @nyx_string_equals(%nyx_string* %5060, %nyx_string* %5062)
  store i1 %5063, i1* %5043
  br label %sc_or_end828
sc_or_end828:
  %5064 = load i1, i1* %5043
  br i1 %5064, label %sc_or_end830, label %sc_or_rhs829
sc_or_rhs829:
  %5065 = load %nyx_string*, %nyx_string** %name.ptr
  %5066 = getelementptr [4 x i8], [4 x i8]* @.str778, i32 0, i32 0
  %5067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %5066, i64 3)
  %5068 = call i1 @nyx_string_equals(%nyx_string* %5065, %nyx_string* %5067)
  store i1 %5068, i1* %5042
  br label %sc_or_end830
sc_or_end830:
  %5069 = load i1, i1* %5042
  br i1 %5069, label %sc_or_end832, label %sc_or_rhs831
sc_or_rhs831:
  %5070 = load %nyx_string*, %nyx_string** %name.ptr
  %5071 = getelementptr [4 x i8], [4 x i8]* @.str779, i32 0, i32 0
  %5072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %5071, i64 3)
  %5073 = call i1 @nyx_string_equals(%nyx_string* %5070, %nyx_string* %5072)
  store i1 %5073, i1* %5041
  br label %sc_or_end832
sc_or_end832:
  %5074 = load i1, i1* %5041
  br i1 %5074, label %then833, label %else834
then833:
  %5075 = getelementptr [4 x i8], [4 x i8]* @.str780, i32 0, i32 0
  %5076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %5075, i64 3)
  ret %nyx_string* %5076
else834:
  br label %merge835
merge835:
  %5077 = alloca i1
  store i1 true, i1* %5077
  %5078 = alloca i1
  store i1 true, i1* %5078
  %5079 = alloca i1
  store i1 true, i1* %5079
  %5080 = alloca i1
  store i1 true, i1* %5080
  %5081 = load %nyx_string*, %nyx_string** %name.ptr
  %5082 = getelementptr [7 x i8], [7 x i8]* @.str781, i32 0, i32 0
  %5083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %5082, i64 6)
  %5084 = call i1 @nyx_string_equals(%nyx_string* %5081, %nyx_string* %5083)
  br i1 %5084, label %sc_or_end837, label %sc_or_rhs836
sc_or_rhs836:
  %5085 = load %nyx_string*, %nyx_string** %name.ptr
  %5086 = getelementptr [8 x i8], [8 x i8]* @.str782, i32 0, i32 0
  %5087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %5086, i64 7)
  %5088 = call i1 @nyx_string_equals(%nyx_string* %5085, %nyx_string* %5087)
  store i1 %5088, i1* %5080
  br label %sc_or_end837
sc_or_end837:
  %5089 = load i1, i1* %5080
  br i1 %5089, label %sc_or_end839, label %sc_or_rhs838
sc_or_rhs838:
  %5090 = load %nyx_string*, %nyx_string** %name.ptr
  %5091 = getelementptr [10 x i8], [10 x i8]* @.str783, i32 0, i32 0
  %5092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %5091, i64 9)
  %5093 = call i1 @nyx_string_equals(%nyx_string* %5090, %nyx_string* %5092)
  store i1 %5093, i1* %5079
  br label %sc_or_end839
sc_or_end839:
  %5094 = load i1, i1* %5079
  br i1 %5094, label %sc_or_end841, label %sc_or_rhs840
sc_or_rhs840:
  %5095 = load %nyx_string*, %nyx_string** %name.ptr
  %5096 = getelementptr [5 x i8], [5 x i8]* @.str784, i32 0, i32 0
  %5097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %5096, i64 4)
  %5098 = call i1 @nyx_string_equals(%nyx_string* %5095, %nyx_string* %5097)
  store i1 %5098, i1* %5078
  br label %sc_or_end841
sc_or_end841:
  %5099 = load i1, i1* %5078
  br i1 %5099, label %sc_or_end843, label %sc_or_rhs842
sc_or_rhs842:
  %5100 = load %nyx_string*, %nyx_string** %name.ptr
  %5101 = getelementptr [6 x i8], [6 x i8]* @.str785, i32 0, i32 0
  %5102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %5101, i64 5)
  %5103 = call i1 @nyx_string_equals(%nyx_string* %5100, %nyx_string* %5102)
  store i1 %5103, i1* %5077
  br label %sc_or_end843
sc_or_end843:
  %5104 = load i1, i1* %5077
  br i1 %5104, label %then844, label %else845
then844:
  %5105 = getelementptr [13 x i8], [13 x i8]* @.str786, i32 0, i32 0
  %5106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %5105, i64 12)
  ret %nyx_string* %5106
else845:
  br label %merge846
merge846:
  %5107 = alloca i1
  store i1 true, i1* %5107
  %5108 = alloca i1
  store i1 true, i1* %5108
  %5109 = alloca i1
  store i1 true, i1* %5109
  %5110 = alloca i1
  store i1 true, i1* %5110
  %5111 = load %nyx_string*, %nyx_string** %name.ptr
  %5112 = getelementptr [7 x i8], [7 x i8]* @.str787, i32 0, i32 0
  %5113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %5112, i64 6)
  %5114 = call i1 @nyx_string_equals(%nyx_string* %5111, %nyx_string* %5113)
  br i1 %5114, label %sc_or_end848, label %sc_or_rhs847
sc_or_rhs847:
  %5115 = load %nyx_string*, %nyx_string** %name.ptr
  %5116 = getelementptr [4 x i8], [4 x i8]* @.str788, i32 0, i32 0
  %5117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %5116, i64 3)
  %5118 = call i1 @nyx_string_equals(%nyx_string* %5115, %nyx_string* %5117)
  store i1 %5118, i1* %5110
  br label %sc_or_end848
sc_or_end848:
  %5119 = load i1, i1* %5110
  br i1 %5119, label %sc_or_end850, label %sc_or_rhs849
sc_or_rhs849:
  %5120 = load %nyx_string*, %nyx_string** %name.ptr
  %5121 = getelementptr [5 x i8], [5 x i8]* @.str789, i32 0, i32 0
  %5122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %5121, i64 4)
  %5123 = call i1 @nyx_string_equals(%nyx_string* %5120, %nyx_string* %5122)
  store i1 %5123, i1* %5109
  br label %sc_or_end850
sc_or_end850:
  %5124 = load i1, i1* %5109
  br i1 %5124, label %sc_or_end852, label %sc_or_rhs851
sc_or_rhs851:
  %5125 = load %nyx_string*, %nyx_string** %name.ptr
  %5126 = getelementptr [7 x i8], [7 x i8]* @.str790, i32 0, i32 0
  %5127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %5126, i64 6)
  %5128 = call i1 @nyx_string_equals(%nyx_string* %5125, %nyx_string* %5127)
  store i1 %5128, i1* %5108
  br label %sc_or_end852
sc_or_end852:
  %5129 = load i1, i1* %5108
  br i1 %5129, label %sc_or_end854, label %sc_or_rhs853
sc_or_rhs853:
  %5130 = load %nyx_string*, %nyx_string** %name.ptr
  %5131 = getelementptr [5 x i8], [5 x i8]* @.str791, i32 0, i32 0
  %5132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %5131, i64 4)
  %5133 = call i1 @nyx_string_equals(%nyx_string* %5130, %nyx_string* %5132)
  store i1 %5133, i1* %5107
  br label %sc_or_end854
sc_or_end854:
  %5134 = load i1, i1* %5107
  br i1 %5134, label %then855, label %else856
then855:
  %5135 = getelementptr [19 x i8], [19 x i8]* @.str792, i32 0, i32 0
  %5136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %5135, i64 18)
  ret %nyx_string* %5136
else856:
  br label %merge857
merge857:
  %5137 = alloca i1
  store i1 true, i1* %5137
  %5138 = load %nyx_string*, %nyx_string** %name.ptr
  %5139 = getelementptr [5 x i8], [5 x i8]* @.str793, i32 0, i32 0
  %5140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %5139, i64 4)
  %5141 = call i1 @nyx_string_equals(%nyx_string* %5138, %nyx_string* %5140)
  br i1 %5141, label %sc_or_end859, label %sc_or_rhs858
sc_or_rhs858:
  %5142 = load %nyx_string*, %nyx_string** %name.ptr
  %5143 = getelementptr [9 x i8], [9 x i8]* @.str794, i32 0, i32 0
  %5144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %5143, i64 8)
  %5145 = call i1 @nyx_string_equals(%nyx_string* %5142, %nyx_string* %5144)
  store i1 %5145, i1* %5137
  br label %sc_or_end859
sc_or_end859:
  %5146 = load i1, i1* %5137
  br i1 %5146, label %then860, label %else861
then860:
  %5147 = getelementptr [7 x i8], [7 x i8]* @.str795, i32 0, i32 0
  %5148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %5147, i64 6)
  ret %nyx_string* %5148
else861:
  br label %merge862
merge862:
  %5149 = alloca i1
  store i1 true, i1* %5149
  %5150 = alloca i1
  store i1 true, i1* %5150
  %5151 = alloca i1
  store i1 true, i1* %5151
  %5152 = load %nyx_string*, %nyx_string** %name.ptr
  %5153 = getelementptr [7 x i8], [7 x i8]* @.str796, i32 0, i32 0
  %5154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %5153, i64 6)
  %5155 = call i1 @nyx_string_equals(%nyx_string* %5152, %nyx_string* %5154)
  br i1 %5155, label %sc_or_end864, label %sc_or_rhs863
sc_or_rhs863:
  %5156 = load %nyx_string*, %nyx_string** %name.ptr
  %5157 = getelementptr [8 x i8], [8 x i8]* @.str797, i32 0, i32 0
  %5158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %5157, i64 7)
  %5159 = call i1 @nyx_string_equals(%nyx_string* %5156, %nyx_string* %5158)
  store i1 %5159, i1* %5151
  br label %sc_or_end864
sc_or_end864:
  %5160 = load i1, i1* %5151
  br i1 %5160, label %sc_or_end866, label %sc_or_rhs865
sc_or_rhs865:
  %5161 = load %nyx_string*, %nyx_string** %name.ptr
  %5162 = getelementptr [14 x i8], [14 x i8]* @.str798, i32 0, i32 0
  %5163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %5162, i64 13)
  %5164 = call i1 @nyx_string_equals(%nyx_string* %5161, %nyx_string* %5163)
  store i1 %5164, i1* %5150
  br label %sc_or_end866
sc_or_end866:
  %5165 = load i1, i1* %5150
  br i1 %5165, label %sc_or_end868, label %sc_or_rhs867
sc_or_rhs867:
  %5166 = load %nyx_string*, %nyx_string** %name.ptr
  %5167 = getelementptr [6 x i8], [6 x i8]* @.str799, i32 0, i32 0
  %5168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %5167, i64 5)
  %5169 = call i1 @nyx_string_equals(%nyx_string* %5166, %nyx_string* %5168)
  store i1 %5169, i1* %5149
  br label %sc_or_end868
sc_or_end868:
  %5170 = load i1, i1* %5149
  br i1 %5170, label %then869, label %else870
then869:
  %5171 = getelementptr [16 x i8], [16 x i8]* @.str800, i32 0, i32 0
  %5172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %5171, i64 15)
  ret %nyx_string* %5172
else870:
  br label %merge871
merge871:
  %5173 = alloca i1
  store i1 true, i1* %5173
  %5174 = alloca i1
  store i1 true, i1* %5174
  %5175 = alloca i1
  store i1 true, i1* %5175
  %5176 = alloca i1
  store i1 true, i1* %5176
  %5177 = alloca i1
  store i1 true, i1* %5177
  %5178 = alloca i1
  store i1 true, i1* %5178
  %5179 = alloca i1
  store i1 true, i1* %5179
  %5180 = load %nyx_string*, %nyx_string** %name.ptr
  %5181 = getelementptr [4 x i8], [4 x i8]* @.str801, i32 0, i32 0
  %5182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %5181, i64 3)
  %5183 = call i1 @nyx_string_equals(%nyx_string* %5180, %nyx_string* %5182)
  br i1 %5183, label %sc_or_end873, label %sc_or_rhs872
sc_or_rhs872:
  %5184 = load %nyx_string*, %nyx_string** %name.ptr
  %5185 = getelementptr [6 x i8], [6 x i8]* @.str802, i32 0, i32 0
  %5186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %5185, i64 5)
  %5187 = call i1 @nyx_string_equals(%nyx_string* %5184, %nyx_string* %5186)
  store i1 %5187, i1* %5179
  br label %sc_or_end873
sc_or_end873:
  %5188 = load i1, i1* %5179
  br i1 %5188, label %sc_or_end875, label %sc_or_rhs874
sc_or_rhs874:
  %5189 = load %nyx_string*, %nyx_string** %name.ptr
  %5190 = getelementptr [11 x i8], [11 x i8]* @.str803, i32 0, i32 0
  %5191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %5190, i64 10)
  %5192 = call i1 @nyx_string_equals(%nyx_string* %5189, %nyx_string* %5191)
  store i1 %5192, i1* %5178
  br label %sc_or_end875
sc_or_end875:
  %5193 = load i1, i1* %5178
  br i1 %5193, label %sc_or_end877, label %sc_or_rhs876
sc_or_rhs876:
  %5194 = load %nyx_string*, %nyx_string** %name.ptr
  %5195 = getelementptr [6 x i8], [6 x i8]* @.str804, i32 0, i32 0
  %5196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %5195, i64 5)
  %5197 = call i1 @nyx_string_equals(%nyx_string* %5194, %nyx_string* %5196)
  store i1 %5197, i1* %5177
  br label %sc_or_end877
sc_or_end877:
  %5198 = load i1, i1* %5177
  br i1 %5198, label %sc_or_end879, label %sc_or_rhs878
sc_or_rhs878:
  %5199 = load %nyx_string*, %nyx_string** %name.ptr
  %5200 = getelementptr [9 x i8], [9 x i8]* @.str805, i32 0, i32 0
  %5201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %5200, i64 8)
  %5202 = call i1 @nyx_string_equals(%nyx_string* %5199, %nyx_string* %5201)
  store i1 %5202, i1* %5176
  br label %sc_or_end879
sc_or_end879:
  %5203 = load i1, i1* %5176
  br i1 %5203, label %sc_or_end881, label %sc_or_rhs880
sc_or_rhs880:
  %5204 = load %nyx_string*, %nyx_string** %name.ptr
  %5205 = getelementptr [14 x i8], [14 x i8]* @.str806, i32 0, i32 0
  %5206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %5205, i64 13)
  %5207 = call i1 @nyx_string_equals(%nyx_string* %5204, %nyx_string* %5206)
  store i1 %5207, i1* %5175
  br label %sc_or_end881
sc_or_end881:
  %5208 = load i1, i1* %5175
  br i1 %5208, label %sc_or_end883, label %sc_or_rhs882
sc_or_rhs882:
  %5209 = load %nyx_string*, %nyx_string** %name.ptr
  %5210 = getelementptr [6 x i8], [6 x i8]* @.str807, i32 0, i32 0
  %5211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %5210, i64 5)
  %5212 = call i1 @nyx_string_equals(%nyx_string* %5209, %nyx_string* %5211)
  store i1 %5212, i1* %5174
  br label %sc_or_end883
sc_or_end883:
  %5213 = load i1, i1* %5174
  br i1 %5213, label %sc_or_end885, label %sc_or_rhs884
sc_or_rhs884:
  %5214 = load %nyx_string*, %nyx_string** %name.ptr
  %5215 = getelementptr [7 x i8], [7 x i8]* @.str808, i32 0, i32 0
  %5216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %5215, i64 6)
  %5217 = call i1 @nyx_string_equals(%nyx_string* %5214, %nyx_string* %5216)
  store i1 %5217, i1* %5173
  br label %sc_or_end885
sc_or_end885:
  %5218 = load i1, i1* %5173
  br i1 %5218, label %then886, label %else887
then886:
  %5219 = getelementptr [26 x i8], [26 x i8]* @.str809, i32 0, i32 0
  %5220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %5219, i64 25)
  ret %nyx_string* %5220
else887:
  br label %merge888
merge888:
  %5221 = alloca i1
  store i1 true, i1* %5221
  %5222 = alloca i1
  store i1 true, i1* %5222
  %5223 = alloca i1
  store i1 true, i1* %5223
  %5224 = load %nyx_string*, %nyx_string** %name.ptr
  %5225 = getelementptr [6 x i8], [6 x i8]* @.str810, i32 0, i32 0
  %5226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %5225, i64 5)
  %5227 = call i1 @nyx_string_equals(%nyx_string* %5224, %nyx_string* %5226)
  br i1 %5227, label %sc_or_end890, label %sc_or_rhs889
sc_or_rhs889:
  %5228 = load %nyx_string*, %nyx_string** %name.ptr
  %5229 = getelementptr [4 x i8], [4 x i8]* @.str811, i32 0, i32 0
  %5230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %5229, i64 3)
  %5231 = call i1 @nyx_string_equals(%nyx_string* %5228, %nyx_string* %5230)
  store i1 %5231, i1* %5223
  br label %sc_or_end890
sc_or_end890:
  %5232 = load i1, i1* %5223
  br i1 %5232, label %sc_or_end892, label %sc_or_rhs891
sc_or_rhs891:
  %5233 = load %nyx_string*, %nyx_string** %name.ptr
  %5234 = getelementptr [3 x i8], [3 x i8]* @.str812, i32 0, i32 0
  %5235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %5234, i64 2)
  %5236 = call i1 @nyx_string_equals(%nyx_string* %5233, %nyx_string* %5235)
  store i1 %5236, i1* %5222
  br label %sc_or_end892
sc_or_end892:
  %5237 = load i1, i1* %5222
  br i1 %5237, label %sc_or_end894, label %sc_or_rhs893
sc_or_rhs893:
  %5238 = load %nyx_string*, %nyx_string** %name.ptr
  %5239 = getelementptr [10 x i8], [10 x i8]* @.str813, i32 0, i32 0
  %5240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %5239, i64 9)
  %5241 = call i1 @nyx_string_equals(%nyx_string* %5238, %nyx_string* %5240)
  store i1 %5241, i1* %5221
  br label %sc_or_end894
sc_or_end894:
  %5242 = load i1, i1* %5221
  br i1 %5242, label %then895, label %else896
then895:
  %5243 = getelementptr [8 x i8], [8 x i8]* @.str814, i32 0, i32 0
  %5244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %5243, i64 7)
  ret %nyx_string* %5244
else896:
  br label %merge897
merge897:
  %5245 = alloca i1
  store i1 true, i1* %5245
  %5246 = alloca i1
  store i1 true, i1* %5246
  %5247 = alloca i1
  store i1 true, i1* %5247
  %5248 = alloca i1
  store i1 true, i1* %5248
  %5249 = alloca i1
  store i1 true, i1* %5249
  %5250 = alloca i1
  store i1 true, i1* %5250
  %5251 = load %nyx_string*, %nyx_string** %name.ptr
  %5252 = getelementptr [5 x i8], [5 x i8]* @.str815, i32 0, i32 0
  %5253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %5252, i64 4)
  %5254 = call i1 @nyx_string_equals(%nyx_string* %5251, %nyx_string* %5253)
  br i1 %5254, label %sc_or_end899, label %sc_or_rhs898
sc_or_rhs898:
  %5255 = load %nyx_string*, %nyx_string** %name.ptr
  %5256 = getelementptr [4 x i8], [4 x i8]* @.str816, i32 0, i32 0
  %5257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %5256, i64 3)
  %5258 = call i1 @nyx_string_equals(%nyx_string* %5255, %nyx_string* %5257)
  store i1 %5258, i1* %5250
  br label %sc_or_end899
sc_or_end899:
  %5259 = load i1, i1* %5250
  br i1 %5259, label %sc_or_end901, label %sc_or_rhs900
sc_or_rhs900:
  %5260 = load %nyx_string*, %nyx_string** %name.ptr
  %5261 = getelementptr [4 x i8], [4 x i8]* @.str817, i32 0, i32 0
  %5262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %5261, i64 3)
  %5263 = call i1 @nyx_string_equals(%nyx_string* %5260, %nyx_string* %5262)
  store i1 %5263, i1* %5249
  br label %sc_or_end901
sc_or_end901:
  %5264 = load i1, i1* %5249
  br i1 %5264, label %sc_or_end903, label %sc_or_rhs902
sc_or_rhs902:
  %5265 = load %nyx_string*, %nyx_string** %name.ptr
  %5266 = getelementptr [8 x i8], [8 x i8]* @.str818, i32 0, i32 0
  %5267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %5266, i64 7)
  %5268 = call i1 @nyx_string_equals(%nyx_string* %5265, %nyx_string* %5267)
  store i1 %5268, i1* %5248
  br label %sc_or_end903
sc_or_end903:
  %5269 = load i1, i1* %5248
  br i1 %5269, label %sc_or_end905, label %sc_or_rhs904
sc_or_rhs904:
  %5270 = load %nyx_string*, %nyx_string** %name.ptr
  %5271 = getelementptr [7 x i8], [7 x i8]* @.str819, i32 0, i32 0
  %5272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %5271, i64 6)
  %5273 = call i1 @nyx_string_equals(%nyx_string* %5270, %nyx_string* %5272)
  store i1 %5273, i1* %5247
  br label %sc_or_end905
sc_or_end905:
  %5274 = load i1, i1* %5247
  br i1 %5274, label %sc_or_end907, label %sc_or_rhs906
sc_or_rhs906:
  %5275 = load %nyx_string*, %nyx_string** %name.ptr
  %5276 = getelementptr [8 x i8], [8 x i8]* @.str820, i32 0, i32 0
  %5277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %5276, i64 7)
  %5278 = call i1 @nyx_string_equals(%nyx_string* %5275, %nyx_string* %5277)
  store i1 %5278, i1* %5246
  br label %sc_or_end907
sc_or_end907:
  %5279 = load i1, i1* %5246
  br i1 %5279, label %sc_or_end909, label %sc_or_rhs908
sc_or_rhs908:
  %5280 = load %nyx_string*, %nyx_string** %name.ptr
  %5281 = getelementptr [11 x i8], [11 x i8]* @.str821, i32 0, i32 0
  %5282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %5281, i64 10)
  %5283 = call i1 @nyx_string_equals(%nyx_string* %5280, %nyx_string* %5282)
  store i1 %5283, i1* %5245
  br label %sc_or_end909
sc_or_end909:
  %5284 = load i1, i1* %5245
  br i1 %5284, label %then910, label %else911
then910:
  %5285 = getelementptr [14 x i8], [14 x i8]* @.str822, i32 0, i32 0
  %5286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %5285, i64 13)
  ret %nyx_string* %5286
else911:
  br label %merge912
merge912:
  %5287 = getelementptr [1 x i8], [1 x i8]* @.str823, i32 0, i32 0
  %5288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %5287, i64 0)
  ret %nyx_string* %5288
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %5289 = alloca i64
  store i64 0, i64* %5289
  %5290 = alloca i64
  store i64 0, i64* %5290
  %5291 = call i8* @llvm.stacksave()
  br label %while_cond913
while_cond913:
  %5292 = load i64, i64* %5290
  %5293 = load %nyx_string*, %nyx_string** %s.ptr
  %5294 = call i64 @nyx_string_byte_length(%nyx_string* %5293)
  %5295 = icmp slt i64 %5292, %5294
  br i1 %5295, label %while_body914, label %while_end915
while_body914:
  call void @llvm.stackrestore(i8* %5291)
  %5296 = load %nyx_string*, %nyx_string** %s.ptr
  %5297 = load i64, i64* %5290
  %5298 = call i8 @nyx_string_char_at(%nyx_string* %5296, i64 %5297)
  %5299 = zext i8 %5298 to i64
  %5300 = trunc i64 %5299 to i8
  %5301 = alloca i8
  store i8 %5300, i8* %5301
  %5302 = load i8, i8* %5301
  %5303 = getelementptr [1 x i8], [1 x i8]* @.str824, i32 0, i32 0
  %5304 = load i8, i8* %5303
  %5305 = zext i8 %5304 to i64
  %5306 = zext i8 %5302 to i64
  %5307 = icmp eq i64 %5306, %5305
  br i1 %5307, label %then916, label %else917
then916:
  %5308 = load i64, i64* %5289
  %5309 = add i64 %5308, 1
  store i64 %5309, i64* %5289
  br label %merge918
else917:
  br label %merge918
merge918:
  %5310 = load i8, i8* %5301
  %5311 = getelementptr [1 x i8], [1 x i8]* @.str825, i32 0, i32 0
  %5312 = load i8, i8* %5311
  %5313 = zext i8 %5312 to i64
  %5314 = zext i8 %5310 to i64
  %5315 = icmp eq i64 %5314, %5313
  br i1 %5315, label %then919, label %else920
then919:
  %5316 = load i64, i64* %5289
  %5317 = sub i64 %5316, 1
  store i64 %5317, i64* %5289
  br label %merge921
else920:
  br label %merge921
merge921:
  %5318 = load i64, i64* %5290
  %5319 = add i64 %5318, 1
  store i64 %5319, i64* %5290
  br label %while_cond913
while_end915:
  %5320 = load i64, i64* %5289
  ret i64 %5320
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %5321 = load %nyx_string*, %nyx_string** %filename.ptr
  %5322 = load %nyx_string*, %nyx_string** %filename.ptr
  %5323 = call i64 @nyx_string_byte_length(%nyx_string* %5322)
  %5324 = sub i64 %5323, 3
  %5325 = call %nyx_string* @nyx_string_substring(%nyx_string* %5321, i64 0, i64 %5324)
  %5326 = alloca %nyx_string*
  store %nyx_string* %5325, %nyx_string** %5326
  %5327 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5328 = getelementptr [2 x i8], [2 x i8]* @.str826, i32 0, i32 0
  %5329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %5328, i64 1)
  %5330 = call %nyx_string* @nyx_string_concat(%nyx_string* %5327, %nyx_string* %5329)
  %5331 = load %nyx_string*, %nyx_string** %filename.ptr
  %5332 = call %nyx_string* @nyx_string_concat(%nyx_string* %5330, %nyx_string* %5331)
  %5333 = call i8* @nyx_string_to_cstr(%nyx_string* %5332)
  %5334 = call %nyx_string* @nyx_read_file(i8* %5333)
  %5335 = alloca %nyx_string*
  store %nyx_string* %5334, %nyx_string** %5335
  %5336 = load %nyx_string*, %nyx_string** %5335
  %5337 = getelementptr [2 x i8], [2 x i8]* @.str827, i32 0, i32 0
  %5338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %5337, i64 1)
  %5339 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5336, %nyx_string* %5338)
  %5340 = alloca { i64, i8* }*
  store { i64, i8* }* %5339, { i64, i8* }** %5340
  %5341 = getelementptr [1 x i8], [1 x i8]* @.str828, i32 0, i32 0
  %5342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %5341, i64 0)
  %5343 = alloca %nyx_string*
  store %nyx_string* %5342, %nyx_string** %5343
  %5344 = getelementptr [1 x i8], [1 x i8]* @.str829, i32 0, i32 0
  %5345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %5344, i64 0)
  %5346 = alloca %nyx_string*
  store %nyx_string* %5345, %nyx_string** %5346
  %5347 = alloca i64
  store i64 0, i64* %5347
  %5348 = alloca i64
  store i64 0, i64* %5348
  %5349 = getelementptr [4 x i8], [4 x i8]* @.str830, i32 0, i32 0
  %5350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %5349, i64 3)
  %5351 = alloca %nyx_string*
  store %nyx_string* %5350, %nyx_string** %5351
  %5352 = getelementptr [1 x i8], [1 x i8]* @.str831, i32 0, i32 0
  %5353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %5352, i64 0)
  %5354 = alloca %nyx_string*
  store %nyx_string* %5353, %nyx_string** %5354
  %5355 = getelementptr [2 x i8], [2 x i8]* @.str832, i32 0, i32 0
  %5356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %5355, i64 1)
  %5357 = alloca %nyx_string*
  store %nyx_string* %5356, %nyx_string** %5357
  %5358 = getelementptr [8 x i8], [8 x i8]* @.str833, i32 0, i32 0
  %5359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %5358, i64 7)
  %5360 = alloca %nyx_string*
  store %nyx_string* %5359, %nyx_string** %5360
  %5361 = getelementptr [11 x i8], [11 x i8]* @.str834, i32 0, i32 0
  %5362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %5361, i64 10)
  %5363 = alloca %nyx_string*
  store %nyx_string* %5362, %nyx_string** %5363
  %5364 = getelementptr [4 x i8], [4 x i8]* @.str835, i32 0, i32 0
  %5365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %5364, i64 3)
  %5366 = alloca %nyx_string*
  store %nyx_string* %5365, %nyx_string** %5366
  %5367 = getelementptr [2 x i8], [2 x i8]* @.str836, i32 0, i32 0
  %5368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %5367, i64 1)
  %5369 = alloca %nyx_string*
  store %nyx_string* %5368, %nyx_string** %5369
  %5370 = getelementptr [6 x i8], [6 x i8]* @.str837, i32 0, i32 0
  %5371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %5370, i64 5)
  %5372 = alloca %nyx_string*
  store %nyx_string* %5371, %nyx_string** %5372
  %5373 = getelementptr [2 x i8], [2 x i8]* @.str838, i32 0, i32 0
  %5374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %5373, i64 1)
  %5375 = alloca %nyx_string*
  store %nyx_string* %5374, %nyx_string** %5375
  %5376 = call i8* @llvm.stacksave()
  br label %while_cond922
while_cond922:
  %5377 = load i64, i64* %5348
  %5378 = load { i64, i8* }*, { i64, i8* }** %5340
  %5379 = call i64 @nyx_array_length({ i64, i8* }* %5378)
  %5380 = icmp slt i64 %5377, %5379
  br i1 %5380, label %while_body923, label %while_end924
while_body923:
  call void @llvm.stackrestore(i8* %5376)
  %5381 = load { i64, i8* }*, { i64, i8* }** %5340
  %5382 = load i64, i64* %5348
  %5383 = call i64 @nyx_array_get_checked({ i64, i8* }* %5381, i64 %5382, i64 2)
  %5384 = inttoptr i64 %5383 to %nyx_string*
  %5385 = alloca %nyx_string*
  store %nyx_string* %5384, %nyx_string** %5385
  %5386 = load %nyx_string*, %nyx_string** %5385
  %5387 = call %nyx_string* @nyx_string_trim(%nyx_string* %5386)
  %5388 = alloca %nyx_string*
  store %nyx_string* %5387, %nyx_string** %5388
  %5389 = load %nyx_string*, %nyx_string** %5388
  %5390 = load %nyx_string*, %nyx_string** %5351
  %5391 = call i1 @nyx_string_starts_with(%nyx_string* %5389, %nyx_string* %5390)
  br i1 %5391, label %then925, label %else926
then925:
  %5392 = load %nyx_string*, %nyx_string** %5388
  %5393 = load %nyx_string*, %nyx_string** %5388
  %5394 = call i64 @nyx_string_byte_length(%nyx_string* %5393)
  %5395 = call %nyx_string* @nyx_string_substring(%nyx_string* %5392, i64 3, i64 %5394)
  %5396 = alloca %nyx_string*
  store %nyx_string* %5395, %nyx_string** %5396
  %5397 = load %nyx_string*, %nyx_string** %5396
  %5398 = call %nyx_string* @nyx_string_trim(%nyx_string* %5397)
  %5399 = alloca %nyx_string*
  store %nyx_string* %5398, %nyx_string** %5399
  %5400 = load %nyx_string*, %nyx_string** %5346
  %5401 = load %nyx_string*, %nyx_string** %5354
  %5402 = call i1 @nyx_string_equals(%nyx_string* %5400, %nyx_string* %5401)
  br i1 %5402, label %then928, label %else929
then928:
  %5403 = load %nyx_string*, %nyx_string** %5399
  store %nyx_string* %5403, %nyx_string** %5346
  br label %merge930
else929:
  %5404 = load %nyx_string*, %nyx_string** %5346
  %5405 = load %nyx_string*, %nyx_string** %5357
  %5406 = call %nyx_string* @nyx_string_concat(%nyx_string* %5404, %nyx_string* %5405)
  %5407 = load %nyx_string*, %nyx_string** %5399
  %5408 = call %nyx_string* @nyx_string_concat(%nyx_string* %5406, %nyx_string* %5407)
  store %nyx_string* %5408, %nyx_string** %5346
  br label %merge930
merge930:
  br label %merge927
else926:
  %5409 = alloca i1
  store i1 true, i1* %5409
  %5410 = load %nyx_string*, %nyx_string** %5388
  %5411 = load %nyx_string*, %nyx_string** %5360
  %5412 = call i1 @nyx_string_starts_with(%nyx_string* %5410, %nyx_string* %5411)
  br i1 %5412, label %sc_or_end932, label %sc_or_rhs931
sc_or_rhs931:
  %5413 = load %nyx_string*, %nyx_string** %5388
  %5414 = load %nyx_string*, %nyx_string** %5363
  %5415 = call i1 @nyx_string_starts_with(%nyx_string* %5413, %nyx_string* %5414)
  store i1 %5415, i1* %5409
  br label %sc_or_end932
sc_or_end932:
  %5416 = load i1, i1* %5409
  %5417 = alloca i1
  store i1 %5416, i1* %5417
  %5418 = load i1, i1* %5417
  br i1 %5418, label %then933, label %else934
then933:
  %5419 = load %nyx_string*, %nyx_string** %5388
  %5420 = alloca %nyx_string*
  store %nyx_string* %5419, %nyx_string** %5420
  %5421 = load %nyx_string*, %nyx_string** %5420
  %5422 = call i64 @capabilities_paren_delta(%nyx_string* %5421)
  %5423 = alloca i64
  store i64 %5422, i64* %5423
  %5424 = call i8* @llvm.stacksave()
  br label %while_cond936
while_cond936:
  %5425 = alloca i1
  store i1 false, i1* %5425
  %5426 = load i64, i64* %5423
  %5427 = icmp sgt i64 %5426, 0
  br i1 %5427, label %sc_and_rhs939, label %sc_and_end940
sc_and_rhs939:
  %5428 = load i64, i64* %5348
  %5429 = add i64 %5428, 1
  %5430 = load { i64, i8* }*, { i64, i8* }** %5340
  %5431 = call i64 @nyx_array_length({ i64, i8* }* %5430)
  %5432 = icmp slt i64 %5429, %5431
  store i1 %5432, i1* %5425
  br label %sc_and_end940
sc_and_end940:
  %5433 = load i1, i1* %5425
  br i1 %5433, label %while_body937, label %while_end938
while_body937:
  call void @llvm.stackrestore(i8* %5424)
  %5434 = load i64, i64* %5348
  %5435 = add i64 %5434, 1
  store i64 %5435, i64* %5348
  %5436 = load { i64, i8* }*, { i64, i8* }** %5340
  %5437 = load i64, i64* %5348
  %5438 = call i64 @nyx_array_get_checked({ i64, i8* }* %5436, i64 %5437, i64 2)
  %5439 = inttoptr i64 %5438 to %nyx_string*
  %5440 = call %nyx_string* @nyx_string_trim(%nyx_string* %5439)
  %5441 = alloca %nyx_string*
  store %nyx_string* %5440, %nyx_string** %5441
  %5442 = load %nyx_string*, %nyx_string** %5441
  %5443 = load %nyx_string*, %nyx_string** %5354
  %5444 = call i1 @nyx_string_equals(%nyx_string* %5442, %nyx_string* %5443)
  %5445 = xor i1 %5444, true
  br i1 %5445, label %then941, label %else942
then941:
  %5446 = alloca i1
  store i1 false, i1* %5446
  %5447 = load %nyx_string*, %nyx_string** %5420
  %5448 = call i64 @nyx_string_byte_length(%nyx_string* %5447)
  %5449 = icmp sgt i64 %5448, 0
  br i1 %5449, label %sc_and_rhs944, label %sc_and_end945
sc_and_rhs944:
  %5450 = load %nyx_string*, %nyx_string** %5420
  %5451 = load %nyx_string*, %nyx_string** %5420
  %5452 = call i64 @nyx_string_byte_length(%nyx_string* %5451)
  %5453 = sub i64 %5452, 1
  %5454 = call i8 @nyx_string_char_at(%nyx_string* %5450, i64 %5453)
  %5455 = zext i8 %5454 to i64
  %5456 = getelementptr [1 x i8], [1 x i8]* @.str839, i32 0, i32 0
  %5457 = load i8, i8* %5456
  %5458 = zext i8 %5457 to i64
  %5459 = icmp eq i64 %5455, %5458
  store i1 %5459, i1* %5446
  br label %sc_and_end945
sc_and_end945:
  %5460 = load i1, i1* %5446
  br i1 %5460, label %then946, label %else947
then946:
  %5461 = load %nyx_string*, %nyx_string** %5420
  %5462 = load %nyx_string*, %nyx_string** %5441
  %5463 = call %nyx_string* @nyx_string_concat(%nyx_string* %5461, %nyx_string* %5462)
  store %nyx_string* %5463, %nyx_string** %5420
  br label %merge948
else947:
  %5464 = load %nyx_string*, %nyx_string** %5420
  %5465 = load %nyx_string*, %nyx_string** %5357
  %5466 = call %nyx_string* @nyx_string_concat(%nyx_string* %5464, %nyx_string* %5465)
  %5467 = load %nyx_string*, %nyx_string** %5441
  %5468 = call %nyx_string* @nyx_string_concat(%nyx_string* %5466, %nyx_string* %5467)
  store %nyx_string* %5468, %nyx_string** %5420
  br label %merge948
merge948:
  br label %merge943
else942:
  br label %merge943
merge943:
  %5469 = load i64, i64* %5423
  %5470 = load %nyx_string*, %nyx_string** %5441
  %5471 = call i64 @capabilities_paren_delta(%nyx_string* %5470)
  %5472 = add i64 %5469, %5471
  store i64 %5472, i64* %5423
  br label %while_cond936
while_end938:
  %5473 = sub i64 0, 1
  %5474 = alloca i64
  store i64 %5473, i64* %5474
  %5475 = alloca i64
  store i64 0, i64* %5475
  %5476 = call i8* @llvm.stacksave()
  br label %while_cond949
while_cond949:
  %5477 = load i64, i64* %5475
  %5478 = load %nyx_string*, %nyx_string** %5420
  %5479 = call i64 @nyx_string_byte_length(%nyx_string* %5478)
  %5480 = icmp slt i64 %5477, %5479
  br i1 %5480, label %while_body950, label %while_end951
while_body950:
  call void @llvm.stackrestore(i8* %5476)
  %5481 = load %nyx_string*, %nyx_string** %5420
  %5482 = load i64, i64* %5475
  %5483 = call i8 @nyx_string_char_at(%nyx_string* %5481, i64 %5482)
  %5484 = zext i8 %5483 to i64
  %5485 = trunc i64 %5484 to i8
  %5486 = alloca i8
  store i8 %5485, i8* %5486
  %5487 = alloca i1
  store i1 false, i1* %5487
  %5488 = load i8, i8* %5486
  %5489 = getelementptr [1 x i8], [1 x i8]* @.str840, i32 0, i32 0
  %5490 = load i8, i8* %5489
  %5491 = zext i8 %5490 to i64
  %5492 = zext i8 %5488 to i64
  %5493 = icmp eq i64 %5492, %5491
  br i1 %5493, label %sc_and_rhs952, label %sc_and_end953
sc_and_rhs952:
  %5494 = load i64, i64* %5474
  %5495 = sub i64 0, 1
  %5496 = icmp eq i64 %5494, %5495
  store i1 %5496, i1* %5487
  br label %sc_and_end953
sc_and_end953:
  %5497 = load i1, i1* %5487
  br i1 %5497, label %then954, label %else955
then954:
  %5498 = load i64, i64* %5475
  store i64 %5498, i64* %5474
  br label %merge956
else955:
  br label %merge956
merge956:
  %5499 = load i64, i64* %5475
  %5500 = add i64 %5499, 1
  store i64 %5500, i64* %5475
  br label %while_cond949
while_end951:
  %5501 = load i64, i64* %5474
  %5502 = icmp sge i64 %5501, 0
  br i1 %5502, label %then957, label %else958
then957:
  %5503 = load %nyx_string*, %nyx_string** %5420
  %5504 = load i64, i64* %5474
  %5505 = call %nyx_string* @nyx_string_substring(%nyx_string* %5503, i64 0, i64 %5504)
  store %nyx_string* %5505, %nyx_string** %5420
  br label %merge959
else958:
  br label %merge959
merge959:
  %5506 = load %nyx_string*, %nyx_string** %5420
  %5507 = call %nyx_string* @nyx_string_trim(%nyx_string* %5506)
  %5508 = alloca %nyx_string*
  store %nyx_string* %5507, %nyx_string** %5508
  %5509 = load %nyx_string*, %nyx_string** %5343
  %5510 = load %nyx_string*, %nyx_string** %5366
  %5511 = call %nyx_string* @nyx_string_concat(%nyx_string* %5509, %nyx_string* %5510)
  %5512 = load %nyx_string*, %nyx_string** %5508
  %5513 = call %nyx_string* @nyx_string_concat(%nyx_string* %5511, %nyx_string* %5512)
  %5514 = load %nyx_string*, %nyx_string** %5369
  %5515 = call %nyx_string* @nyx_string_concat(%nyx_string* %5513, %nyx_string* %5514)
  store %nyx_string* %5515, %nyx_string** %5343
  %5516 = load %nyx_string*, %nyx_string** %5346
  %5517 = load %nyx_string*, %nyx_string** %5354
  %5518 = call i1 @nyx_string_equals(%nyx_string* %5516, %nyx_string* %5517)
  %5519 = xor i1 %5518, true
  br i1 %5519, label %then960, label %else961
then960:
  %5520 = load %nyx_string*, %nyx_string** %5343
  %5521 = load %nyx_string*, %nyx_string** %5372
  %5522 = call %nyx_string* @nyx_string_concat(%nyx_string* %5520, %nyx_string* %5521)
  %5523 = load %nyx_string*, %nyx_string** %5346
  %5524 = call %nyx_string* @nyx_string_concat(%nyx_string* %5522, %nyx_string* %5523)
  store %nyx_string* %5524, %nyx_string** %5343
  br label %merge962
else961:
  br label %merge962
merge962:
  %5525 = load %nyx_string*, %nyx_string** %5343
  %5526 = load %nyx_string*, %nyx_string** %5375
  %5527 = call %nyx_string* @nyx_string_concat(%nyx_string* %5525, %nyx_string* %5526)
  store %nyx_string* %5527, %nyx_string** %5343
  %5528 = load i64, i64* %5347
  %5529 = add i64 %5528, 1
  store i64 %5529, i64* %5347
  br label %merge935
else934:
  br label %merge935
merge935:
  %5530 = load %nyx_string*, %nyx_string** %5354
  store %nyx_string* %5530, %nyx_string** %5346
  br label %merge927
merge927:
  %5531 = load i64, i64* %5348
  %5532 = add i64 %5531, 1
  store i64 %5532, i64* %5348
  br label %while_cond922
while_end924:
  %5533 = load i64, i64* %5347
  %5534 = icmp eq i64 %5533, 0
  br i1 %5534, label %then963, label %else964
then963:
  %5535 = getelementptr [1 x i8], [1 x i8]* @.str841, i32 0, i32 0
  %5536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %5535, i64 0)
  ret %nyx_string* %5536
else964:
  br label %merge965
merge965:
  %5537 = getelementptr [10 x i8], [10 x i8]* @.str842, i32 0, i32 0
  %5538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %5537, i64 9)
  %5539 = load %nyx_string*, %nyx_string** %5326
  %5540 = call %nyx_string* @nyx_string_concat(%nyx_string* %5538, %nyx_string* %5539)
  %5541 = getelementptr [4 x i8], [4 x i8]* @.str843, i32 0, i32 0
  %5542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %5541, i64 3)
  %5543 = call %nyx_string* @nyx_string_concat(%nyx_string* %5540, %nyx_string* %5542)
  %5544 = alloca %nyx_string*
  store %nyx_string* %5543, %nyx_string** %5544
  %5545 = load %nyx_string*, %nyx_string** %5544
  %5546 = getelementptr [14 x i8], [14 x i8]* @.str844, i32 0, i32 0
  %5547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %5546, i64 13)
  %5548 = call %nyx_string* @nyx_string_concat(%nyx_string* %5545, %nyx_string* %5547)
  %5549 = load %nyx_string*, %nyx_string** %5326
  %5550 = call %nyx_string* @nyx_string_concat(%nyx_string* %5548, %nyx_string* %5549)
  %5551 = getelementptr [8 x i8], [8 x i8]* @.str845, i32 0, i32 0
  %5552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %5551, i64 7)
  %5553 = call %nyx_string* @nyx_string_concat(%nyx_string* %5550, %nyx_string* %5552)
  %5554 = load i64, i64* %5347
  %5555 = call %nyx_string* @nyx_string_from_int(i64 %5554)
  %5556 = call %nyx_string* @nyx_string_concat(%nyx_string* %5553, %nyx_string* %5555)
  %5557 = getelementptr [14 x i8], [14 x i8]* @.str846, i32 0, i32 0
  %5558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %5557, i64 13)
  %5559 = call %nyx_string* @nyx_string_concat(%nyx_string* %5556, %nyx_string* %5558)
  store %nyx_string* %5559, %nyx_string** %5544
  %5560 = load %nyx_string*, %nyx_string** %5544
  %5561 = load %nyx_string*, %nyx_string** %5343
  %5562 = call %nyx_string* @nyx_string_concat(%nyx_string* %5560, %nyx_string* %5561)
  %5563 = getelementptr [2 x i8], [2 x i8]* @.str847, i32 0, i32 0
  %5564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %5563, i64 1)
  %5565 = call %nyx_string* @nyx_string_concat(%nyx_string* %5562, %nyx_string* %5564)
  store %nyx_string* %5565, %nyx_string** %5544
  %5566 = load %nyx_string*, %nyx_string** %5544
  ret %nyx_string* %5566
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %5567 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5568 = getelementptr [16 x i8], [16 x i8]* @.str848, i32 0, i32 0
  %5569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %5568, i64 15)
  %5570 = call %nyx_string* @nyx_string_concat(%nyx_string* %5567, %nyx_string* %5569)
  %5571 = alloca %nyx_string*
  store %nyx_string* %5570, %nyx_string** %5571
  %5572 = load %nyx_string*, %nyx_string** %5571
  %5573 = call i8* @nyx_string_to_cstr(%nyx_string* %5572)
  %5574 = call i1 @nyx_file_exists(i8* %5573)
  %5575 = xor i1 %5574, true
  br i1 %5575, label %then966, label %else967
then966:
  %5576 = getelementptr [1 x i8], [1 x i8]* @.str849, i32 0, i32 0
  %5577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %5576, i64 0)
  ret %nyx_string* %5577
else967:
  br label %merge968
merge968:
  %5578 = load %nyx_string*, %nyx_string** %5571
  %5579 = call i8* @nyx_string_to_cstr(%nyx_string* %5578)
  %5580 = call %nyx_string* @nyx_read_file(i8* %5579)
  %5581 = alloca %nyx_string*
  store %nyx_string* %5580, %nyx_string** %5581
  %5582 = load %nyx_string*, %nyx_string** %5581
  %5583 = getelementptr [2 x i8], [2 x i8]* @.str850, i32 0, i32 0
  %5584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %5583, i64 1)
  %5585 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5582, %nyx_string* %5584)
  %5586 = alloca { i64, i8* }*
  store { i64, i8* }* %5585, { i64, i8* }** %5586
  %5587 = getelementptr [1 x i8], [1 x i8]* @.str851, i32 0, i32 0
  %5588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %5587, i64 0)
  %5589 = alloca %nyx_string*
  store %nyx_string* %5588, %nyx_string** %5589
  %5590 = alloca i64
  store i64 0, i64* %5590
  %5591 = alloca i64
  store i64 0, i64* %5591
  %5592 = getelementptr [9 x i8], [9 x i8]* @.str852, i32 0, i32 0
  %5593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %5592, i64 8)
  %5594 = alloca %nyx_string*
  store %nyx_string* %5593, %nyx_string** %5594
  %5595 = getelementptr [2 x i8], [2 x i8]* @.str853, i32 0, i32 0
  %5596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %5595, i64 1)
  %5597 = alloca %nyx_string*
  store %nyx_string* %5596, %nyx_string** %5597
  %5598 = getelementptr [4 x i8], [4 x i8]* @.str854, i32 0, i32 0
  %5599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %5598, i64 3)
  %5600 = alloca %nyx_string*
  store %nyx_string* %5599, %nyx_string** %5600
  %5601 = getelementptr [4 x i8], [4 x i8]* @.str855, i32 0, i32 0
  %5602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %5601, i64 3)
  %5603 = alloca %nyx_string*
  store %nyx_string* %5602, %nyx_string** %5603
  %5604 = getelementptr [5 x i8], [5 x i8]* @.str856, i32 0, i32 0
  %5605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %5604, i64 4)
  %5606 = alloca %nyx_string*
  store %nyx_string* %5605, %nyx_string** %5606
  %5607 = getelementptr [2 x i8], [2 x i8]* @.str857, i32 0, i32 0
  %5608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %5607, i64 1)
  %5609 = alloca %nyx_string*
  store %nyx_string* %5608, %nyx_string** %5609
  %5610 = getelementptr [2 x i8], [2 x i8]* @.str858, i32 0, i32 0
  %5611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %5610, i64 1)
  %5612 = alloca %nyx_string*
  store %nyx_string* %5611, %nyx_string** %5612
  %5613 = getelementptr [2 x i8], [2 x i8]* @.str859, i32 0, i32 0
  %5614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %5613, i64 1)
  %5615 = alloca %nyx_string*
  store %nyx_string* %5614, %nyx_string** %5615
  %5616 = getelementptr [1 x i8], [1 x i8]* @.str860, i32 0, i32 0
  %5617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %5616, i64 0)
  %5618 = alloca %nyx_string*
  store %nyx_string* %5617, %nyx_string** %5618
  %5619 = getelementptr [6 x i8], [6 x i8]* @.str861, i32 0, i32 0
  %5620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %5619, i64 5)
  %5621 = alloca %nyx_string*
  store %nyx_string* %5620, %nyx_string** %5621
  %5622 = getelementptr [2 x i8], [2 x i8]* @.str862, i32 0, i32 0
  %5623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %5622, i64 1)
  %5624 = alloca %nyx_string*
  store %nyx_string* %5623, %nyx_string** %5624
  %5625 = call i8* @llvm.stacksave()
  br label %while_cond969
while_cond969:
  %5626 = load i64, i64* %5591
  %5627 = load { i64, i8* }*, { i64, i8* }** %5586
  %5628 = call i64 @nyx_array_length({ i64, i8* }* %5627)
  %5629 = icmp slt i64 %5626, %5628
  br i1 %5629, label %while_body970, label %while_end971
while_body970:
  call void @llvm.stackrestore(i8* %5625)
  %5630 = load { i64, i8* }*, { i64, i8* }** %5586
  %5631 = load i64, i64* %5591
  %5632 = call i64 @nyx_array_get_checked({ i64, i8* }* %5630, i64 %5631, i64 2)
  %5633 = inttoptr i64 %5632 to %nyx_string*
  %5634 = alloca %nyx_string*
  store %nyx_string* %5633, %nyx_string** %5634
  %5635 = load %nyx_string*, %nyx_string** %5634
  %5636 = call i64 @nyx_string_byte_length(%nyx_string* %5635)
  %5637 = icmp sgt i64 %5636, 8
  br i1 %5637, label %then972, label %else973
then972:
  %5638 = load %nyx_string*, %nyx_string** %5634
  %5639 = call %nyx_string* @nyx_string_substring(%nyx_string* %5638, i64 0, i64 8)
  %5640 = load %nyx_string*, %nyx_string** %5594
  %5641 = call i1 @nyx_string_equals(%nyx_string* %5639, %nyx_string* %5640)
  br i1 %5641, label %then975, label %else976
then975:
  %5642 = load %nyx_string*, %nyx_string** %5634
  %5643 = load %nyx_string*, %nyx_string** %5597
  %5644 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5642, %nyx_string* %5643)
  %5645 = alloca { i64, i8* }*
  store { i64, i8* }* %5644, { i64, i8* }** %5645
  %5646 = load { i64, i8* }*, { i64, i8* }** %5645
  %5647 = call i64 @nyx_array_length({ i64, i8* }* %5646)
  %5648 = icmp sge i64 %5647, 5
  br i1 %5648, label %then978, label %else979
then978:
  %5649 = load { i64, i8* }*, { i64, i8* }** %5645
  %5650 = call i64 @nyx_array_get_checked({ i64, i8* }* %5649, i64 1, i64 2)
  %5651 = inttoptr i64 %5650 to %nyx_string*
  %5652 = alloca %nyx_string*
  store %nyx_string* %5651, %nyx_string** %5652
  %5653 = load { i64, i8* }*, { i64, i8* }** %5645
  %5654 = call i64 @nyx_array_get_checked({ i64, i8* }* %5653, i64 2, i64 2)
  %5655 = inttoptr i64 %5654 to %nyx_string*
  %5656 = alloca %nyx_string*
  store %nyx_string* %5655, %nyx_string** %5656
  %5657 = load { i64, i8* }*, { i64, i8* }** %5645
  %5658 = call i64 @nyx_array_get_checked({ i64, i8* }* %5657, i64 3, i64 2)
  %5659 = inttoptr i64 %5658 to %nyx_string*
  %5660 = alloca %nyx_string*
  store %nyx_string* %5659, %nyx_string** %5660
  %5661 = load { i64, i8* }*, { i64, i8* }** %5645
  %5662 = call i64 @nyx_array_get_checked({ i64, i8* }* %5661, i64 4, i64 2)
  %5663 = inttoptr i64 %5662 to %nyx_string*
  %5664 = alloca %nyx_string*
  store %nyx_string* %5663, %nyx_string** %5664
  %5665 = load %nyx_string*, %nyx_string** %5660
  %5666 = load %nyx_string*, %nyx_string** %cat.ptr
  %5667 = call i1 @nyx_string_equals(%nyx_string* %5665, %nyx_string* %5666)
  br i1 %5667, label %then981, label %else982
then981:
  %5668 = load %nyx_string*, %nyx_string** %5600
  %5669 = load %nyx_string*, %nyx_string** %5652
  %5670 = call %nyx_string* @nyx_string_concat(%nyx_string* %5668, %nyx_string* %5669)
  %5671 = load %nyx_string*, %nyx_string** %5603
  %5672 = call %nyx_string* @nyx_string_concat(%nyx_string* %5670, %nyx_string* %5671)
  %5673 = load %nyx_string*, %nyx_string** %5656
  %5674 = call %nyx_string* @nyx_string_concat(%nyx_string* %5672, %nyx_string* %5673)
  %5675 = load %nyx_string*, %nyx_string** %5606
  %5676 = call %nyx_string* @nyx_string_concat(%nyx_string* %5674, %nyx_string* %5675)
  %5677 = alloca %nyx_string*
  store %nyx_string* %5676, %nyx_string** %5677
  %5678 = load %nyx_string*, %nyx_string** %5656
  %5679 = load %nyx_string*, %nyx_string** %5609
  %5680 = call i1 @nyx_string_equals(%nyx_string* %5678, %nyx_string* %5679)
  %5681 = xor i1 %5680, true
  br i1 %5681, label %then984, label %else985
then984:
  %5682 = load %nyx_string*, %nyx_string** %5677
  %5683 = load %nyx_string*, %nyx_string** %5612
  %5684 = call %nyx_string* @nyx_string_concat(%nyx_string* %5682, %nyx_string* %5683)
  store %nyx_string* %5684, %nyx_string** %5677
  br label %merge986
else985:
  br label %merge986
merge986:
  %5685 = load %nyx_string*, %nyx_string** %5677
  %5686 = load %nyx_string*, %nyx_string** %5615
  %5687 = call %nyx_string* @nyx_string_concat(%nyx_string* %5685, %nyx_string* %5686)
  store %nyx_string* %5687, %nyx_string** %5677
  %5688 = load %nyx_string*, %nyx_string** %5664
  %5689 = load %nyx_string*, %nyx_string** %5618
  %5690 = call i1 @nyx_string_equals(%nyx_string* %5688, %nyx_string* %5689)
  %5691 = xor i1 %5690, true
  br i1 %5691, label %then987, label %else988
then987:
  %5692 = load %nyx_string*, %nyx_string** %5677
  %5693 = load %nyx_string*, %nyx_string** %5621
  %5694 = call %nyx_string* @nyx_string_concat(%nyx_string* %5692, %nyx_string* %5693)
  %5695 = load %nyx_string*, %nyx_string** %5664
  %5696 = call %nyx_string* @nyx_string_concat(%nyx_string* %5694, %nyx_string* %5695)
  store %nyx_string* %5696, %nyx_string** %5677
  br label %merge989
else988:
  br label %merge989
merge989:
  %5697 = load %nyx_string*, %nyx_string** %5589
  %5698 = load %nyx_string*, %nyx_string** %5677
  %5699 = call %nyx_string* @nyx_string_concat(%nyx_string* %5697, %nyx_string* %5698)
  %5700 = load %nyx_string*, %nyx_string** %5624
  %5701 = call %nyx_string* @nyx_string_concat(%nyx_string* %5699, %nyx_string* %5700)
  store %nyx_string* %5701, %nyx_string** %5589
  %5702 = load i64, i64* %5590
  %5703 = add i64 %5702, 1
  store i64 %5703, i64* %5590
  br label %merge983
else982:
  br label %merge983
merge983:
  br label %merge980
else979:
  br label %merge980
merge980:
  br label %merge977
else976:
  br label %merge977
merge977:
  br label %merge974
else973:
  br label %merge974
merge974:
  %5704 = load i64, i64* %5591
  %5705 = add i64 %5704, 1
  store i64 %5705, i64* %5591
  br label %while_cond969
while_end971:
  %5706 = load i64, i64* %5590
  %5707 = icmp eq i64 %5706, 0
  br i1 %5707, label %then990, label %else991
then990:
  %5708 = getelementptr [1 x i8], [1 x i8]* @.str863, i32 0, i32 0
  %5709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %5708, i64 0)
  ret %nyx_string* %5709
else991:
  br label %merge992
merge992:
  %5710 = getelementptr [39 x i8], [39 x i8]* @.str864, i32 0, i32 0
  %5711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %5710, i64 38)
  %5712 = load %nyx_string*, %nyx_string** %5589
  %5713 = call %nyx_string* @nyx_string_concat(%nyx_string* %5711, %nyx_string* %5712)
  %5714 = getelementptr [2 x i8], [2 x i8]* @.str865, i32 0, i32 0
  %5715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %5714, i64 1)
  %5716 = call %nyx_string* @nyx_string_concat(%nyx_string* %5713, %nyx_string* %5715)
  ret %nyx_string* %5716
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %5717 = call %nyx_string* @capabilities_std_dir()
  %5718 = alloca %nyx_string*
  store %nyx_string* %5717, %nyx_string** %5718
  %5719 = load %nyx_string*, %nyx_string** %5718
  %5720 = getelementptr [1 x i8], [1 x i8]* @.str866, i32 0, i32 0
  %5721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %5720, i64 0)
  %5722 = call i1 @nyx_string_equals(%nyx_string* %5719, %nyx_string* %5721)
  br i1 %5722, label %then993, label %else994
then993:
  %5723 = getelementptr [71 x i8], [71 x i8]* @.str867, i32 0, i32 0
  %5724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %5723, i64 70)
  %5725 = call i8* @nyx_string_to_cstr(%nyx_string* %5724)
  call void @nyx_print_string(i8* %5725)
  ret i1 0
else994:
  br label %merge995
merge995:
  %5726 = load %nyx_string*, %nyx_string** %5718
  %5727 = call i8* @nyx_string_to_cstr(%nyx_string* %5726)
  %5728 = call { i64, i8* }* @nyx_readdir(i8* %5727)
  %5729 = alloca { i64, i8* }*
  store { i64, i8* }* %5728, { i64, i8* }** %5729
  %5730 = call { i64, i8* }* @nyx_array_new_ptr()
  %5731 = getelementptr [11 x i8], [11 x i8]* @.str868, i32 0, i32 0
  %5732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %5731, i64 10)
  %5733 = ptrtoint %nyx_string* %5732 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5733, i64 2)
  %5734 = getelementptr [20 x i8], [20 x i8]* @.str869, i32 0, i32 0
  %5735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %5734, i64 19)
  %5736 = ptrtoint %nyx_string* %5735 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5736, i64 2)
  %5737 = getelementptr [23 x i8], [23 x i8]* @.str870, i32 0, i32 0
  %5738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %5737, i64 22)
  %5739 = ptrtoint %nyx_string* %5738 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5739, i64 2)
  %5740 = getelementptr [15 x i8], [15 x i8]* @.str871, i32 0, i32 0
  %5741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %5740, i64 14)
  %5742 = ptrtoint %nyx_string* %5741 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5742, i64 2)
  %5743 = getelementptr [4 x i8], [4 x i8]* @.str872, i32 0, i32 0
  %5744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %5743, i64 3)
  %5745 = ptrtoint %nyx_string* %5744 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5745, i64 2)
  %5746 = getelementptr [13 x i8], [13 x i8]* @.str873, i32 0, i32 0
  %5747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %5746, i64 12)
  %5748 = ptrtoint %nyx_string* %5747 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5748, i64 2)
  %5749 = getelementptr [19 x i8], [19 x i8]* @.str874, i32 0, i32 0
  %5750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %5749, i64 18)
  %5751 = ptrtoint %nyx_string* %5750 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5751, i64 2)
  %5752 = getelementptr [7 x i8], [7 x i8]* @.str875, i32 0, i32 0
  %5753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %5752, i64 6)
  %5754 = ptrtoint %nyx_string* %5753 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5754, i64 2)
  %5755 = getelementptr [16 x i8], [16 x i8]* @.str876, i32 0, i32 0
  %5756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %5755, i64 15)
  %5757 = ptrtoint %nyx_string* %5756 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5757, i64 2)
  %5758 = getelementptr [12 x i8], [12 x i8]* @.str877, i32 0, i32 0
  %5759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %5758, i64 11)
  %5760 = ptrtoint %nyx_string* %5759 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5760, i64 2)
  %5761 = getelementptr [26 x i8], [26 x i8]* @.str878, i32 0, i32 0
  %5762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %5761, i64 25)
  %5763 = ptrtoint %nyx_string* %5762 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5763, i64 2)
  %5764 = getelementptr [8 x i8], [8 x i8]* @.str879, i32 0, i32 0
  %5765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %5764, i64 7)
  %5766 = ptrtoint %nyx_string* %5765 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5766, i64 2)
  %5767 = getelementptr [14 x i8], [14 x i8]* @.str880, i32 0, i32 0
  %5768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %5767, i64 13)
  %5769 = ptrtoint %nyx_string* %5768 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5769, i64 2)
  %5770 = getelementptr [6 x i8], [6 x i8]* @.str881, i32 0, i32 0
  %5771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %5770, i64 5)
  %5772 = ptrtoint %nyx_string* %5771 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5730, i64 %5772, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %5730, i64 2)
  %5773 = alloca { i64, i8* }*
  store { i64, i8* }* %5730, { i64, i8* }** %5773
  %5774 = getelementptr [49 x i8], [49 x i8]* @.str882, i32 0, i32 0
  %5775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %5774, i64 48)
  %5776 = alloca %nyx_string*
  store %nyx_string* %5775, %nyx_string** %5776
  %5777 = load %nyx_string*, %nyx_string** %5776
  %5778 = getelementptr [19 x i8], [19 x i8]* @.str883, i32 0, i32 0
  %5779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %5778, i64 18)
  %5780 = call %nyx_string* @nyx_string_concat(%nyx_string* %5777, %nyx_string* %5779)
  %5781 = call %nyx_string* @toolchain_version()
  %5782 = call %nyx_string* @nyx_string_concat(%nyx_string* %5780, %nyx_string* %5781)
  %5783 = getelementptr [6 x i8], [6 x i8]* @.str884, i32 0, i32 0
  %5784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %5783, i64 5)
  %5785 = call %nyx_string* @nyx_string_concat(%nyx_string* %5782, %nyx_string* %5784)
  store %nyx_string* %5785, %nyx_string** %5776
  %5786 = load %nyx_string*, %nyx_string** %5776
  %5787 = getelementptr [103 x i8], [103 x i8]* @.str885, i32 0, i32 0
  %5788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %5787, i64 102)
  %5789 = call %nyx_string* @nyx_string_concat(%nyx_string* %5786, %nyx_string* %5788)
  store %nyx_string* %5789, %nyx_string** %5776
  %5790 = load %nyx_string*, %nyx_string** %5776
  %5791 = getelementptr [103 x i8], [103 x i8]* @.str886, i32 0, i32 0
  %5792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %5791, i64 102)
  %5793 = call %nyx_string* @nyx_string_concat(%nyx_string* %5790, %nyx_string* %5792)
  store %nyx_string* %5793, %nyx_string** %5776
  %5794 = load %nyx_string*, %nyx_string** %5776
  %5795 = getelementptr [95 x i8], [95 x i8]* @.str887, i32 0, i32 0
  %5796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %5795, i64 94)
  %5797 = call %nyx_string* @nyx_string_concat(%nyx_string* %5794, %nyx_string* %5796)
  store %nyx_string* %5797, %nyx_string** %5776
  %5798 = alloca i64
  store i64 0, i64* %5798
  %5799 = getelementptr [1 x i8], [1 x i8]* @.str888, i32 0, i32 0
  %5800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %5799, i64 0)
  %5801 = alloca %nyx_string*
  store %nyx_string* %5800, %nyx_string** %5801
  %5802 = getelementptr [4 x i8], [4 x i8]* @.str889, i32 0, i32 0
  %5803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %5802, i64 3)
  %5804 = alloca %nyx_string*
  store %nyx_string* %5803, %nyx_string** %5804
  %5805 = getelementptr [6 x i8], [6 x i8]* @.str890, i32 0, i32 0
  %5806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %5805, i64 5)
  %5807 = alloca %nyx_string*
  store %nyx_string* %5806, %nyx_string** %5807
  %5808 = getelementptr [4 x i8], [4 x i8]* @.str891, i32 0, i32 0
  %5809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %5808, i64 3)
  %5810 = alloca %nyx_string*
  store %nyx_string* %5809, %nyx_string** %5810
  %5811 = getelementptr [3 x i8], [3 x i8]* @.str892, i32 0, i32 0
  %5812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %5811, i64 2)
  %5813 = alloca %nyx_string*
  store %nyx_string* %5812, %nyx_string** %5813
  %5814 = call i8* @llvm.stacksave()
  br label %while_cond996
while_cond996:
  %5815 = load i64, i64* %5798
  %5816 = load { i64, i8* }*, { i64, i8* }** %5773
  %5817 = call i64 @nyx_array_length({ i64, i8* }* %5816)
  %5818 = icmp slt i64 %5815, %5817
  br i1 %5818, label %while_body997, label %while_end998
while_body997:
  call void @llvm.stackrestore(i8* %5814)
  %5819 = load { i64, i8* }*, { i64, i8* }** %5773
  %5820 = load i64, i64* %5798
  %5821 = call i64 @nyx_array_get_checked({ i64, i8* }* %5819, i64 %5820, i64 2)
  %5822 = inttoptr i64 %5821 to %nyx_string*
  %5823 = alloca %nyx_string*
  store %nyx_string* %5822, %nyx_string** %5823
  %5824 = load %nyx_string*, %nyx_string** %5801
  %5825 = alloca %nyx_string*
  store %nyx_string* %5824, %nyx_string** %5825
  %5826 = alloca i64
  store i64 0, i64* %5826
  %5827 = call i8* @llvm.stacksave()
  br label %while_cond999
while_cond999:
  %5828 = load i64, i64* %5826
  %5829 = load { i64, i8* }*, { i64, i8* }** %5729
  %5830 = call i64 @nyx_array_length({ i64, i8* }* %5829)
  %5831 = icmp slt i64 %5828, %5830
  br i1 %5831, label %while_body1000, label %while_end1001
while_body1000:
  call void @llvm.stackrestore(i8* %5827)
  %5832 = load { i64, i8* }*, { i64, i8* }** %5729
  %5833 = load i64, i64* %5826
  %5834 = call i64 @nyx_array_get_checked({ i64, i8* }* %5832, i64 %5833, i64 2)
  %5835 = inttoptr i64 %5834 to %nyx_string*
  %5836 = alloca %nyx_string*
  store %nyx_string* %5835, %nyx_string** %5836
  %5837 = load %nyx_string*, %nyx_string** %5836
  %5838 = load %nyx_string*, %nyx_string** %5804
  %5839 = call i1 @nyx_string_ends_with(%nyx_string* %5837, %nyx_string* %5838)
  br i1 %5839, label %then1002, label %else1003
then1002:
  %5840 = load %nyx_string*, %nyx_string** %5836
  %5841 = load %nyx_string*, %nyx_string** %5836
  %5842 = call i64 @nyx_string_byte_length(%nyx_string* %5841)
  %5843 = sub i64 %5842, 3
  %5844 = call %nyx_string* @nyx_string_substring(%nyx_string* %5840, i64 0, i64 %5843)
  %5845 = alloca %nyx_string*
  store %nyx_string* %5844, %nyx_string** %5845
  %5846 = load %nyx_string*, %nyx_string** %5845
  %5847 = call %nyx_string* @module_category(%nyx_string* %5846)
  %5848 = alloca %nyx_string*
  store %nyx_string* %5847, %nyx_string** %5848
  %5849 = load %nyx_string*, %nyx_string** %5848
  %5850 = load %nyx_string*, %nyx_string** %5801
  %5851 = call i1 @nyx_string_equals(%nyx_string* %5849, %nyx_string* %5850)
  br i1 %5851, label %then1005, label %else1006
then1005:
  %5852 = load %nyx_string*, %nyx_string** %5807
  store %nyx_string* %5852, %nyx_string** %5848
  br label %merge1007
else1006:
  br label %merge1007
merge1007:
  %5853 = load %nyx_string*, %nyx_string** %5848
  %5854 = load %nyx_string*, %nyx_string** %5823
  %5855 = call i1 @nyx_string_equals(%nyx_string* %5853, %nyx_string* %5854)
  br i1 %5855, label %then1008, label %else1009
then1008:
  %5856 = load %nyx_string*, %nyx_string** %5718
  %5857 = load %nyx_string*, %nyx_string** %5836
  %5858 = call %nyx_string* @capabilities_module_section(%nyx_string* %5856, %nyx_string* %5857)
  %5859 = alloca %nyx_string*
  store %nyx_string* %5858, %nyx_string** %5859
  %5860 = load %nyx_string*, %nyx_string** %5859
  %5861 = load %nyx_string*, %nyx_string** %5801
  %5862 = call i1 @nyx_string_equals(%nyx_string* %5860, %nyx_string* %5861)
  %5863 = xor i1 %5862, true
  br i1 %5863, label %then1011, label %else1012
then1011:
  %5864 = load %nyx_string*, %nyx_string** %5825
  %5865 = load %nyx_string*, %nyx_string** %5859
  %5866 = call %nyx_string* @nyx_string_concat(%nyx_string* %5864, %nyx_string* %5865)
  store %nyx_string* %5866, %nyx_string** %5825
  br label %merge1013
else1012:
  br label %merge1013
merge1013:
  br label %merge1010
else1009:
  br label %merge1010
merge1010:
  br label %merge1004
else1003:
  br label %merge1004
merge1004:
  %5867 = load i64, i64* %5826
  %5868 = add i64 %5867, 1
  store i64 %5868, i64* %5826
  br label %while_cond999
while_end1001:
  %5869 = load %nyx_string*, %nyx_string** %5718
  %5870 = load %nyx_string*, %nyx_string** %5823
  %5871 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %5869, %nyx_string* %5870)
  %5872 = alloca %nyx_string*
  store %nyx_string* %5871, %nyx_string** %5872
  %5873 = alloca i1
  store i1 true, i1* %5873
  %5874 = load %nyx_string*, %nyx_string** %5825
  %5875 = load %nyx_string*, %nyx_string** %5801
  %5876 = call i1 @nyx_string_equals(%nyx_string* %5874, %nyx_string* %5875)
  %5877 = xor i1 %5876, true
  br i1 %5877, label %sc_or_end1015, label %sc_or_rhs1014
sc_or_rhs1014:
  %5878 = load %nyx_string*, %nyx_string** %5872
  %5879 = load %nyx_string*, %nyx_string** %5801
  %5880 = call i1 @nyx_string_equals(%nyx_string* %5878, %nyx_string* %5879)
  %5881 = xor i1 %5880, true
  store i1 %5881, i1* %5873
  br label %sc_or_end1015
sc_or_end1015:
  %5882 = load i1, i1* %5873
  br i1 %5882, label %then1016, label %else1017
then1016:
  %5883 = load %nyx_string*, %nyx_string** %5776
  %5884 = load %nyx_string*, %nyx_string** %5810
  %5885 = call %nyx_string* @nyx_string_concat(%nyx_string* %5883, %nyx_string* %5884)
  %5886 = load %nyx_string*, %nyx_string** %5823
  %5887 = call %nyx_string* @nyx_string_concat(%nyx_string* %5885, %nyx_string* %5886)
  %5888 = load %nyx_string*, %nyx_string** %5813
  %5889 = call %nyx_string* @nyx_string_concat(%nyx_string* %5887, %nyx_string* %5888)
  %5890 = load %nyx_string*, %nyx_string** %5825
  %5891 = call %nyx_string* @nyx_string_concat(%nyx_string* %5889, %nyx_string* %5890)
  %5892 = load %nyx_string*, %nyx_string** %5872
  %5893 = call %nyx_string* @nyx_string_concat(%nyx_string* %5891, %nyx_string* %5892)
  store %nyx_string* %5893, %nyx_string** %5776
  br label %merge1018
else1017:
  br label %merge1018
merge1018:
  %5894 = load i64, i64* %5798
  %5895 = add i64 %5894, 1
  store i64 %5895, i64* %5798
  br label %while_cond996
while_end998:
  %5896 = getelementptr [16 x i8], [16 x i8]* @.str893, i32 0, i32 0
  %5897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %5896, i64 15)
  %5898 = alloca %nyx_string*
  store %nyx_string* %5897, %nyx_string** %5898
  %5899 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %5900 = getelementptr [1 x i8], [1 x i8]* @.str894, i32 0, i32 0
  %5901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %5900, i64 0)
  %5902 = call i1 @nyx_string_equals(%nyx_string* %5899, %nyx_string* %5901)
  %5903 = xor i1 %5902, true
  br i1 %5903, label %then1019, label %else1020
then1019:
  %5904 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %5904, %nyx_string** %5898
  br label %merge1021
else1020:
  br label %merge1021
merge1021:
  %5905 = load %nyx_string*, %nyx_string** %5898
  %5906 = load %nyx_string*, %nyx_string** %5776
  %5907 = call i8* @nyx_string_to_cstr(%nyx_string* %5905)
  %5908 = call i8* @nyx_string_to_cstr(%nyx_string* %5906)
  %5909 = call i1 @nyx_write_file(i8* %5907, i8* %5908)
  %5910 = getelementptr [32 x i8], [32 x i8]* @.str895, i32 0, i32 0
  %5911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %5910, i64 31)
  %5912 = load %nyx_string*, %nyx_string** %5718
  %5913 = call %nyx_string* @nyx_string_concat(%nyx_string* %5911, %nyx_string* %5912)
  %5914 = getelementptr [3 x i8], [3 x i8]* @.str896, i32 0, i32 0
  %5915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %5914, i64 2)
  %5916 = call %nyx_string* @nyx_string_concat(%nyx_string* %5913, %nyx_string* %5915)
  %5917 = load { i64, i8* }*, { i64, i8* }** %5729
  %5918 = call i64 @nyx_array_length({ i64, i8* }* %5917)
  %5919 = call %nyx_string* @nyx_string_from_int(i64 %5918)
  %5920 = call %nyx_string* @nyx_string_concat(%nyx_string* %5916, %nyx_string* %5919)
  %5921 = getelementptr [22 x i8], [22 x i8]* @.str897, i32 0, i32 0
  %5922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %5921, i64 21)
  %5923 = call %nyx_string* @nyx_string_concat(%nyx_string* %5920, %nyx_string* %5922)
  %5924 = call i8* @nyx_string_to_cstr(%nyx_string* %5923)
  call void @nyx_print_string(i8* %5924)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %5925 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %5926 = ptrtoint %SharedEnv_main* %5925 to i64
  %5927 = call i8* @GC_malloc(i64 %5926)
  %5928 = bitcast i8* %5927 to %SharedEnv_main*
  %5929 = call { i64, i8* }* @nyx_get_args()
  %5930 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 0
  store { i64, i8* }* %5929, { i64, i8* }** %5930
  %5931 = getelementptr [6 x i8], [6 x i8]* @.str898, i32 0, i32 0
  %5932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %5931, i64 5)
  %5933 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 1
  store %nyx_string* %5932, %nyx_string** %5933
  %5934 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 2
  store i1 0, i1* %5934
  %5935 = getelementptr [1 x i8], [1 x i8]* @.str899, i32 0, i32 0
  %5936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %5935, i64 0)
  %5937 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 3
  store %nyx_string* %5936, %nyx_string** %5937
  %5938 = getelementptr [1 x i8], [1 x i8]* @.str900, i32 0, i32 0
  %5939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %5938, i64 0)
  %5940 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 4
  store %nyx_string* %5939, %nyx_string** %5940
  %5941 = load { i64, i8* }*, { i64, i8* }** %5930
  %5942 = call i64 @nyx_array_length({ i64, i8* }* %5941)
  %5943 = icmp sge i64 %5942, 2
  br i1 %5943, label %then1022, label %else1023
then1022:
  %5944 = load { i64, i8* }*, { i64, i8* }** %5930
  %5945 = call i64 @nyx_array_get_checked({ i64, i8* }* %5944, i64 1, i64 2)
  %5946 = inttoptr i64 %5945 to %nyx_string*
  %5947 = alloca %nyx_string*
  store %nyx_string* %5946, %nyx_string** %5947
  %5948 = load %nyx_string*, %nyx_string** %5947
  store %nyx_string* %5948, %nyx_string** %5933
  br label %merge1024
else1023:
  br label %merge1024
merge1024:
  %5949 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 5
  store i64 2, i64* %5949
  %5950 = getelementptr [1 x i8], [1 x i8]* @.str901, i32 0, i32 0
  %5951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %5950, i64 0)
  %5952 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 6
  store %nyx_string* %5951, %nyx_string** %5952
  %5953 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 7
  store i1 0, i1* %5953
  %5954 = alloca i1
  store i1 true, i1* %5954
  %5955 = alloca i1
  store i1 true, i1* %5955
  %5956 = load %nyx_string*, %nyx_string** %5933
  %5957 = getelementptr [6 x i8], [6 x i8]* @.str902, i32 0, i32 0
  %5958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %5957, i64 5)
  %5959 = call i1 @nyx_string_equals(%nyx_string* %5956, %nyx_string* %5958)
  br i1 %5959, label %sc_or_end1026, label %sc_or_rhs1025
sc_or_rhs1025:
  %5960 = load %nyx_string*, %nyx_string** %5933
  %5961 = getelementptr [4 x i8], [4 x i8]* @.str903, i32 0, i32 0
  %5962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %5961, i64 3)
  %5963 = call i1 @nyx_string_equals(%nyx_string* %5960, %nyx_string* %5962)
  store i1 %5963, i1* %5955
  br label %sc_or_end1026
sc_or_end1026:
  %5964 = load i1, i1* %5955
  br i1 %5964, label %sc_or_end1028, label %sc_or_rhs1027
sc_or_rhs1027:
  %5965 = load %nyx_string*, %nyx_string** %5933
  %5966 = getelementptr [5 x i8], [5 x i8]* @.str904, i32 0, i32 0
  %5967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %5966, i64 4)
  %5968 = call i1 @nyx_string_equals(%nyx_string* %5965, %nyx_string* %5967)
  store i1 %5968, i1* %5954
  br label %sc_or_end1028
sc_or_end1028:
  %5969 = load i1, i1* %5954
  %5970 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 8
  store i1 %5969, i1* %5970
  %5971 = getelementptr [3 x i8], [3 x i8]* @.str905, i32 0, i32 0
  %5972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %5971, i64 2)
  %5973 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 9
  store %nyx_string* %5972, %nyx_string** %5973
  %5974 = getelementptr [10 x i8], [10 x i8]* @.str906, i32 0, i32 0
  %5975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %5974, i64 9)
  %5976 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 10
  store %nyx_string* %5975, %nyx_string** %5976
  %5977 = getelementptr [7 x i8], [7 x i8]* @.str907, i32 0, i32 0
  %5978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %5977, i64 6)
  %5979 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 11
  store %nyx_string* %5978, %nyx_string** %5979
  %5980 = getelementptr [1 x i8], [1 x i8]* @.str908, i32 0, i32 0
  %5981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %5980, i64 0)
  %5982 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 12
  store %nyx_string* %5981, %nyx_string** %5982
  %5983 = getelementptr [66 x i8], [66 x i8]* @.str909, i32 0, i32 0
  %5984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %5983, i64 65)
  %5985 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 13
  store %nyx_string* %5984, %nyx_string** %5985
  %5986 = getelementptr [7 x i8], [7 x i8]* @.str910, i32 0, i32 0
  %5987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %5986, i64 6)
  %5988 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 14
  store %nyx_string* %5987, %nyx_string** %5988
  %5989 = getelementptr [3 x i8], [3 x i8]* @.str911, i32 0, i32 0
  %5990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %5989, i64 2)
  %5991 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 15
  store %nyx_string* %5990, %nyx_string** %5991
  %5992 = getelementptr [9 x i8], [9 x i8]* @.str912, i32 0, i32 0
  %5993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %5992, i64 8)
  %5994 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 16
  store %nyx_string* %5993, %nyx_string** %5994
  %5995 = getelementptr [63 x i8], [63 x i8]* @.str913, i32 0, i32 0
  %5996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %5995, i64 62)
  %5997 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 17
  store %nyx_string* %5996, %nyx_string** %5997
  %5998 = getelementptr [28 x i8], [28 x i8]* @.str914, i32 0, i32 0
  %5999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %5998, i64 27)
  %6000 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 18
  store %nyx_string* %5999, %nyx_string** %6000
  %6001 = getelementptr [4 x i8], [4 x i8]* @.str915, i32 0, i32 0
  %6002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %6001, i64 3)
  %6003 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 19
  store %nyx_string* %6002, %nyx_string** %6003
  %6004 = call i8* @llvm.stacksave()
  br label %while_cond1029
while_cond1029:
  %6005 = load i64, i64* %5949
  %6006 = load { i64, i8* }*, { i64, i8* }** %5930
  %6007 = call i64 @nyx_array_length({ i64, i8* }* %6006)
  %6008 = icmp slt i64 %6005, %6007
  br i1 %6008, label %while_body1030, label %while_end1031
while_body1030:
  call void @llvm.stackrestore(i8* %6004)
  %6009 = load { i64, i8* }*, { i64, i8* }** %5930
  %6010 = load i64, i64* %5949
  %6011 = call i64 @nyx_array_get_checked({ i64, i8* }* %6009, i64 %6010, i64 2)
  %6012 = inttoptr i64 %6011 to %nyx_string*
  %6013 = alloca %nyx_string*
  store %nyx_string* %6012, %nyx_string** %6013
  %6014 = load %nyx_string*, %nyx_string** %6013
  %6015 = load %nyx_string*, %nyx_string** %5973
  %6016 = call i1 @nyx_string_equals(%nyx_string* %6014, %nyx_string* %6015)
  br i1 %6016, label %then1032, label %else1033
then1032:
  %6017 = load { i64, i8* }*, { i64, i8* }** %5930
  %6018 = call i64 @nyx_array_length({ i64, i8* }* %6017)
  store i64 %6018, i64* %5949
  br label %merge1034
else1033:
  %6019 = load %nyx_string*, %nyx_string** %6013
  %6020 = load %nyx_string*, %nyx_string** %5976
  %6021 = call i1 @nyx_string_equals(%nyx_string* %6019, %nyx_string* %6020)
  br i1 %6021, label %then1035, label %else1036
then1035:
  store i1 1, i1* %5934
  br label %merge1037
else1036:
  %6022 = load %nyx_string*, %nyx_string** %6013
  %6023 = load %nyx_string*, %nyx_string** %5979
  %6024 = call i1 @nyx_string_equals(%nyx_string* %6022, %nyx_string* %6023)
  br i1 %6024, label %then1038, label %else1039
then1038:
  %6025 = load %nyx_string*, %nyx_string** %5982
  %6026 = alloca %nyx_string*
  store %nyx_string* %6025, %nyx_string** %6026
  %6027 = load i64, i64* %5949
  %6028 = add i64 %6027, 1
  %6029 = load { i64, i8* }*, { i64, i8* }** %5930
  %6030 = call i64 @nyx_array_length({ i64, i8* }* %6029)
  %6031 = icmp slt i64 %6028, %6030
  br i1 %6031, label %then1041, label %else1042
then1041:
  %6032 = load { i64, i8* }*, { i64, i8* }** %5930
  %6033 = load i64, i64* %5949
  %6034 = add i64 %6033, 1
  %6035 = call i64 @nyx_array_get_checked({ i64, i8* }* %6032, i64 %6034, i64 2)
  %6036 = inttoptr i64 %6035 to %nyx_string*
  %6037 = alloca %nyx_string*
  store %nyx_string* %6036, %nyx_string** %6037
  %6038 = load %nyx_string*, %nyx_string** %6037
  %6039 = load %nyx_string*, %nyx_string** %5973
  %6040 = call i1 @nyx_string_starts_with(%nyx_string* %6038, %nyx_string* %6039)
  %6041 = xor i1 %6040, true
  br i1 %6041, label %then1044, label %else1045
then1044:
  %6042 = load %nyx_string*, %nyx_string** %6037
  store %nyx_string* %6042, %nyx_string** %6026
  br label %merge1046
else1045:
  br label %merge1046
merge1046:
  br label %merge1043
else1042:
  br label %merge1043
merge1043:
  %6043 = load %nyx_string*, %nyx_string** %6026
  %6044 = load %nyx_string*, %nyx_string** %5982
  %6045 = call i1 @nyx_string_equals(%nyx_string* %6043, %nyx_string* %6044)
  br i1 %6045, label %then1047, label %else1048
then1047:
  %6046 = load %nyx_string*, %nyx_string** %5952
  %6047 = load %nyx_string*, %nyx_string** %5982
  %6048 = call i1 @nyx_string_equals(%nyx_string* %6046, %nyx_string* %6047)
  br i1 %6048, label %then1050, label %else1051
then1050:
  %6049 = load %nyx_string*, %nyx_string** %5985
  store %nyx_string* %6049, %nyx_string** %5952
  br label %merge1052
else1051:
  br label %merge1052
merge1052:
  br label %merge1049
else1048:
  %6050 = load %nyx_string*, %nyx_string** %6026
  store %nyx_string* %6050, %nyx_string** %5940
  %6051 = load i64, i64* %5949
  %6052 = add i64 %6051, 1
  store i64 %6052, i64* %5949
  br label %merge1049
merge1049:
  br label %merge1040
else1039:
  %6053 = alloca i1
  store i1 true, i1* %6053
  %6054 = load %nyx_string*, %nyx_string** %6013
  %6055 = load %nyx_string*, %nyx_string** %5988
  %6056 = call i1 @nyx_string_equals(%nyx_string* %6054, %nyx_string* %6055)
  br i1 %6056, label %sc_or_end1054, label %sc_or_rhs1053
sc_or_rhs1053:
  %6057 = load %nyx_string*, %nyx_string** %6013
  %6058 = load %nyx_string*, %nyx_string** %5991
  %6059 = call i1 @nyx_string_equals(%nyx_string* %6057, %nyx_string* %6058)
  store i1 %6059, i1* %6053
  br label %sc_or_end1054
sc_or_end1054:
  %6060 = load i1, i1* %6053
  br i1 %6060, label %then1055, label %else1056
then1055:
  store i1 1, i1* %5953
  br label %merge1057
else1056:
  %6061 = load %nyx_string*, %nyx_string** %6013
  %6062 = load %nyx_string*, %nyx_string** %5994
  %6063 = call i1 @nyx_string_equals(%nyx_string* %6061, %nyx_string* %6062)
  br i1 %6063, label %then1058, label %else1059
then1058:
  %6064 = load i64, i64* %5949
  %6065 = add i64 %6064, 1
  %6066 = load { i64, i8* }*, { i64, i8* }** %5930
  %6067 = call i64 @nyx_array_length({ i64, i8* }* %6066)
  %6068 = icmp slt i64 %6065, %6067
  br i1 %6068, label %then1061, label %else1062
then1061:
  %6069 = load { i64, i8* }*, { i64, i8* }** %5930
  %6070 = load i64, i64* %5949
  %6071 = add i64 %6070, 1
  %6072 = call i64 @nyx_array_get_checked({ i64, i8* }* %6069, i64 %6071, i64 2)
  %6073 = inttoptr i64 %6072 to %nyx_string*
  %6074 = alloca %nyx_string*
  store %nyx_string* %6073, %nyx_string** %6074
  %6075 = load %nyx_string*, %nyx_string** %6074
  store %nyx_string* %6075, %nyx_string** %5937
  %6076 = load i64, i64* %5949
  %6077 = add i64 %6076, 1
  store i64 %6077, i64* %5949
  br label %merge1063
else1062:
  %6078 = load %nyx_string*, %nyx_string** %5997
  store %nyx_string* %6078, %nyx_string** %5952
  br label %merge1063
merge1063:
  br label %merge1060
else1059:
  %6079 = alloca i1
  store i1 false, i1* %6079
  %6080 = load i1, i1* %5970
  br i1 %6080, label %sc_and_rhs1064, label %sc_and_end1065
sc_and_rhs1064:
  %6081 = load %nyx_string*, %nyx_string** %6013
  %6082 = call i64 @nyx_string_byte_length(%nyx_string* %6081)
  %6083 = icmp sgt i64 %6082, 1
  store i1 %6083, i1* %6079
  br label %sc_and_end1065
sc_and_end1065:
  %6084 = load i1, i1* %6079
  br i1 %6084, label %then1066, label %else1067
then1066:
  %6085 = alloca i1
  store i1 false, i1* %6085
  %6086 = load %nyx_string*, %nyx_string** %6013
  %6087 = call i8 @nyx_string_char_at(%nyx_string* %6086, i64 0)
  %6088 = zext i8 %6087 to i64
  %6089 = getelementptr [1 x i8], [1 x i8]* @.str916, i32 0, i32 0
  %6090 = load i8, i8* %6089
  %6091 = zext i8 %6090 to i64
  %6092 = icmp eq i64 %6088, %6091
  br i1 %6092, label %sc_and_rhs1069, label %sc_and_end1070
sc_and_rhs1069:
  %6093 = load %nyx_string*, %nyx_string** %5952
  %6094 = load %nyx_string*, %nyx_string** %5982
  %6095 = call i1 @nyx_string_equals(%nyx_string* %6093, %nyx_string* %6094)
  store i1 %6095, i1* %6085
  br label %sc_and_end1070
sc_and_end1070:
  %6096 = load i1, i1* %6085
  br i1 %6096, label %then1071, label %else1072
then1071:
  %6097 = load %nyx_string*, %nyx_string** %6000
  %6098 = load %nyx_string*, %nyx_string** %5933
  %6099 = call %nyx_string* @nyx_string_concat(%nyx_string* %6097, %nyx_string* %6098)
  %6100 = load %nyx_string*, %nyx_string** %6003
  %6101 = call %nyx_string* @nyx_string_concat(%nyx_string* %6099, %nyx_string* %6100)
  %6102 = load %nyx_string*, %nyx_string** %6013
  %6103 = call %nyx_string* @nyx_string_concat(%nyx_string* %6101, %nyx_string* %6102)
  store %nyx_string* %6103, %nyx_string** %5952
  br label %merge1073
else1072:
  br label %merge1073
merge1073:
  br label %merge1068
else1067:
  br label %merge1068
merge1068:
  br label %merge1060
merge1060:
  br label %merge1057
merge1057:
  br label %merge1040
merge1040:
  br label %merge1037
merge1037:
  br label %merge1034
merge1034:
  %6104 = load i64, i64* %5949
  %6105 = add i64 %6104, 1
  store i64 %6105, i64* %5949
  br label %while_cond1029
while_end1031:
  %6106 = alloca i1
  store i1 false, i1* %6106
  %6107 = load i1, i1* %5953
  br i1 %6107, label %sc_and_rhs1074, label %sc_and_end1075
sc_and_rhs1074:
  %6108 = load i1, i1* %5970
  store i1 %6108, i1* %6106
  br label %sc_and_end1075
sc_and_end1075:
  %6109 = load i1, i1* %6106
  br i1 %6109, label %then1076, label %else1077
then1076:
  %6110 = getelementptr [5 x i8], [5 x i8]* @.str917, i32 0, i32 0
  %6111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %6110, i64 4)
  %6112 = load %nyx_string*, %nyx_string** %5933
  %6113 = call %nyx_string* @nyx_string_concat(%nyx_string* %6111, %nyx_string* %6112)
  %6114 = getelementptr [24 x i8], [24 x i8]* @.str918, i32 0, i32 0
  %6115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %6114, i64 23)
  %6116 = call %nyx_string* @nyx_string_concat(%nyx_string* %6113, %nyx_string* %6115)
  %6117 = call i8* @nyx_string_to_cstr(%nyx_string* %6116)
  call void @nyx_print_string(i8* %6117)
  %6118 = getelementptr [42 x i8], [42 x i8]* @.str919, i32 0, i32 0
  %6119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %6118, i64 41)
  %6120 = call i8* @nyx_string_to_cstr(%nyx_string* %6119)
  call void @nyx_print_string(i8* %6120)
  %6121 = getelementptr [88 x i8], [88 x i8]* @.str920, i32 0, i32 0
  %6122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %6121, i64 87)
  %6123 = call i8* @nyx_string_to_cstr(%nyx_string* %6122)
  call void @nyx_print_string(i8* %6123)
  %6124 = getelementptr [94 x i8], [94 x i8]* @.str921, i32 0, i32 0
  %6125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %6124, i64 93)
  %6126 = call i8* @nyx_string_to_cstr(%nyx_string* %6125)
  call void @nyx_print_string(i8* %6126)
  %6127 = getelementptr [94 x i8], [94 x i8]* @.str922, i32 0, i32 0
  %6128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %6127, i64 93)
  %6129 = call i8* @nyx_string_to_cstr(%nyx_string* %6128)
  call void @nyx_print_string(i8* %6129)
  %6130 = getelementptr [34 x i8], [34 x i8]* @.str923, i32 0, i32 0
  %6131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %6130, i64 33)
  %6132 = call i8* @nyx_string_to_cstr(%nyx_string* %6131)
  call void @nyx_print_string(i8* %6132)
  %6133 = getelementptr [1 x i8], [1 x i8]* @.str924, i32 0, i32 0
  %6134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %6133, i64 0)
  %6135 = call i8* @nyx_string_to_cstr(%nyx_string* %6134)
  call void @nyx_print_string(i8* %6135)
  %6136 = getelementptr [71 x i8], [71 x i8]* @.str925, i32 0, i32 0
  %6137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %6136, i64 70)
  %6138 = call i8* @nyx_string_to_cstr(%nyx_string* %6137)
  call void @nyx_print_string(i8* %6138)
  ret i64 0
else1077:
  br label %merge1078
merge1078:
  %6139 = load %nyx_string*, %nyx_string** %5952
  %6140 = getelementptr [1 x i8], [1 x i8]* @.str926, i32 0, i32 0
  %6141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %6140, i64 0)
  %6142 = call i1 @nyx_string_equals(%nyx_string* %6139, %nyx_string* %6141)
  %6143 = xor i1 %6142, true
  br i1 %6143, label %then1079, label %else1080
then1079:
  %6144 = getelementptr [8 x i8], [8 x i8]* @.str927, i32 0, i32 0
  %6145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %6144, i64 7)
  %6146 = load %nyx_string*, %nyx_string** %5952
  %6147 = call %nyx_string* @nyx_string_concat(%nyx_string* %6145, %nyx_string* %6146)
  %6148 = call i8* @nyx_string_to_cstr(%nyx_string* %6147)
  call void @nyx_print_string(i8* %6148)
  %6149 = getelementptr [8 x i8], [8 x i8]* @.str928, i32 0, i32 0
  %6150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %6149, i64 7)
  %6151 = load %nyx_string*, %nyx_string** %5933
  %6152 = call %nyx_string* @nyx_string_concat(%nyx_string* %6150, %nyx_string* %6151)
  %6153 = getelementptr [37 x i8], [37 x i8]* @.str929, i32 0, i32 0
  %6154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %6153, i64 36)
  %6155 = call %nyx_string* @nyx_string_concat(%nyx_string* %6152, %nyx_string* %6154)
  %6156 = call i8* @nyx_string_to_cstr(%nyx_string* %6155)
  call void @nyx_print_string(i8* %6156)
  ret i64 1
else1080:
  br label %merge1081
merge1081:
  %6157 = getelementptr [6 x i8], [6 x i8]* @.str930, i32 0, i32 0
  %6158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %6157, i64 5)
  %6159 = call %nyx_string* @toolchain_version()
  %6160 = call %nyx_string* @nyx_string_concat(%nyx_string* %6158, %nyx_string* %6159)
  %6161 = getelementptr [6 x i8], [6 x i8]* @.str931, i32 0, i32 0
  %6162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %6161, i64 5)
  %6163 = call %nyx_string* @nyx_string_concat(%nyx_string* %6160, %nyx_string* %6162)
  %6164 = load %nyx_string*, %nyx_string** %5933
  %6165 = call %nyx_string* @nyx_string_concat(%nyx_string* %6163, %nyx_string* %6164)
  %6166 = call i8* @nyx_string_to_cstr(%nyx_string* %6165)
  call void @nyx_print_string(i8* %6166)
  %6167 = load %nyx_string*, %nyx_string** %5933
  %6168 = getelementptr [5 x i8], [5 x i8]* @.str932, i32 0, i32 0
  %6169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %6168, i64 4)
  %6170 = call i1 @nyx_string_equals(%nyx_string* %6167, %nyx_string* %6169)
  br i1 %6170, label %then1082, label %else1083
then1082:
  %6171 = getelementptr [1 x i8], [1 x i8]* @.str933, i32 0, i32 0
  %6172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %6171, i64 0)
  %6173 = alloca %nyx_string*
  store %nyx_string* %6172, %nyx_string** %6173
  %6174 = getelementptr [1 x i8], [1 x i8]* @.str934, i32 0, i32 0
  %6175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %6174, i64 0)
  %6176 = alloca %nyx_string*
  store %nyx_string* %6175, %nyx_string** %6176
  %6177 = getelementptr [1 x i8], [1 x i8]* @.str935, i32 0, i32 0
  %6178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %6177, i64 0)
  %6179 = alloca %nyx_string*
  store %nyx_string* %6178, %nyx_string** %6179
  %6180 = alloca i1
  store i1 0, i1* %6180
  %6181 = getelementptr [1 x i8], [1 x i8]* @.str936, i32 0, i32 0
  %6182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %6181, i64 0)
  %6183 = alloca %nyx_string*
  store %nyx_string* %6182, %nyx_string** %6183
  %6184 = getelementptr [1 x i8], [1 x i8]* @.str937, i32 0, i32 0
  %6185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %6184, i64 0)
  %6186 = alloca %nyx_string*
  store %nyx_string* %6185, %nyx_string** %6186
  %6187 = alloca i64
  store i64 2, i64* %6187
  %6188 = getelementptr [7 x i8], [7 x i8]* @.str938, i32 0, i32 0
  %6189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %6188, i64 6)
  %6190 = alloca %nyx_string*
  store %nyx_string* %6189, %nyx_string** %6190
  %6191 = getelementptr [8 x i8], [8 x i8]* @.str939, i32 0, i32 0
  %6192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %6191, i64 7)
  %6193 = alloca %nyx_string*
  store %nyx_string* %6192, %nyx_string** %6193
  %6194 = getelementptr [1 x i8], [1 x i8]* @.str940, i32 0, i32 0
  %6195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %6194, i64 0)
  %6196 = alloca %nyx_string*
  store %nyx_string* %6195, %nyx_string** %6196
  %6197 = getelementptr [3 x i8], [3 x i8]* @.str941, i32 0, i32 0
  %6198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %6197, i64 2)
  %6199 = alloca %nyx_string*
  store %nyx_string* %6198, %nyx_string** %6199
  %6200 = getelementptr [8 x i8], [8 x i8]* @.str942, i32 0, i32 0
  %6201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %6200, i64 7)
  %6202 = alloca %nyx_string*
  store %nyx_string* %6201, %nyx_string** %6202
  %6203 = getelementptr [9 x i8], [9 x i8]* @.str943, i32 0, i32 0
  %6204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %6203, i64 8)
  %6205 = alloca %nyx_string*
  store %nyx_string* %6204, %nyx_string** %6205
  %6206 = getelementptr [6 x i8], [6 x i8]* @.str944, i32 0, i32 0
  %6207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %6206, i64 5)
  %6208 = alloca %nyx_string*
  store %nyx_string* %6207, %nyx_string** %6208
  %6209 = call i8* @llvm.stacksave()
  br label %while_cond1085
while_cond1085:
  %6210 = load i64, i64* %6187
  %6211 = load { i64, i8* }*, { i64, i8* }** %5930
  %6212 = call i64 @nyx_array_length({ i64, i8* }* %6211)
  %6213 = icmp slt i64 %6210, %6212
  br i1 %6213, label %while_body1086, label %while_end1087
while_body1086:
  call void @llvm.stackrestore(i8* %6209)
  %6214 = load { i64, i8* }*, { i64, i8* }** %5930
  %6215 = load i64, i64* %6187
  %6216 = call i64 @nyx_array_get_checked({ i64, i8* }* %6214, i64 %6215, i64 2)
  %6217 = inttoptr i64 %6216 to %nyx_string*
  %6218 = alloca %nyx_string*
  store %nyx_string* %6217, %nyx_string** %6218
  %6219 = alloca i1
  store i1 0, i1* %6219
  %6220 = alloca i1
  store i1 true, i1* %6220
  %6221 = load %nyx_string*, %nyx_string** %6218
  %6222 = load %nyx_string*, %nyx_string** %6190
  %6223 = call i1 @nyx_string_equals(%nyx_string* %6221, %nyx_string* %6222)
  br i1 %6223, label %sc_or_end1089, label %sc_or_rhs1088
sc_or_rhs1088:
  %6224 = load %nyx_string*, %nyx_string** %6218
  %6225 = load %nyx_string*, %nyx_string** %6193
  %6226 = call i1 @nyx_string_equals(%nyx_string* %6224, %nyx_string* %6225)
  store i1 %6226, i1* %6220
  br label %sc_or_end1089
sc_or_end1089:
  %6227 = load i1, i1* %6220
  br i1 %6227, label %then1090, label %else1091
then1090:
  store i1 1, i1* %6219
  %6228 = load %nyx_string*, %nyx_string** %6196
  %6229 = alloca %nyx_string*
  store %nyx_string* %6228, %nyx_string** %6229
  %6230 = load i64, i64* %6187
  %6231 = add i64 %6230, 1
  %6232 = load { i64, i8* }*, { i64, i8* }** %5930
  %6233 = call i64 @nyx_array_length({ i64, i8* }* %6232)
  %6234 = icmp slt i64 %6231, %6233
  br i1 %6234, label %then1093, label %else1094
then1093:
  %6235 = load { i64, i8* }*, { i64, i8* }** %5930
  %6236 = load i64, i64* %6187
  %6237 = add i64 %6236, 1
  %6238 = call i64 @nyx_array_get_checked({ i64, i8* }* %6235, i64 %6237, i64 2)
  %6239 = inttoptr i64 %6238 to %nyx_string*
  %6240 = alloca %nyx_string*
  store %nyx_string* %6239, %nyx_string** %6240
  %6241 = load %nyx_string*, %nyx_string** %6240
  %6242 = load %nyx_string*, %nyx_string** %6199
  %6243 = call i1 @nyx_string_starts_with(%nyx_string* %6241, %nyx_string* %6242)
  %6244 = icmp eq i1 %6243, 0
  br i1 %6244, label %then1096, label %else1097
then1096:
  %6245 = load %nyx_string*, %nyx_string** %6240
  store %nyx_string* %6245, %nyx_string** %6229
  br label %merge1098
else1097:
  br label %merge1098
merge1098:
  br label %merge1095
else1094:
  br label %merge1095
merge1095:
  %6246 = load %nyx_string*, %nyx_string** %6229
  %6247 = load %nyx_string*, %nyx_string** %6196
  %6248 = call i1 @nyx_string_equals(%nyx_string* %6246, %nyx_string* %6247)
  br i1 %6248, label %then1099, label %else1100
then1099:
  %6249 = load %nyx_string*, %nyx_string** %6218
  store %nyx_string* %6249, %nyx_string** %6186
  br label %merge1101
else1100:
  %6250 = load %nyx_string*, %nyx_string** %6218
  %6251 = load %nyx_string*, %nyx_string** %6190
  %6252 = call i1 @nyx_string_equals(%nyx_string* %6250, %nyx_string* %6251)
  br i1 %6252, label %then1102, label %else1103
then1102:
  %6253 = load %nyx_string*, %nyx_string** %6229
  store %nyx_string* %6253, %nyx_string** %6176
  br label %merge1104
else1103:
  br label %merge1104
merge1104:
  %6254 = load %nyx_string*, %nyx_string** %6218
  %6255 = load %nyx_string*, %nyx_string** %6193
  %6256 = call i1 @nyx_string_equals(%nyx_string* %6254, %nyx_string* %6255)
  br i1 %6256, label %then1105, label %else1106
then1105:
  %6257 = load %nyx_string*, %nyx_string** %6229
  store %nyx_string* %6257, %nyx_string** %6179
  br label %merge1107
else1106:
  br label %merge1107
merge1107:
  %6258 = load i64, i64* %6187
  %6259 = add i64 %6258, 1
  store i64 %6259, i64* %6187
  br label %merge1101
merge1101:
  br label %merge1092
else1091:
  br label %merge1092
merge1092:
  %6260 = alloca i1
  store i1 false, i1* %6260
  %6261 = load i1, i1* %6219
  %6262 = icmp eq i1 %6261, 0
  br i1 %6262, label %sc_and_rhs1108, label %sc_and_end1109
sc_and_rhs1108:
  %6263 = load %nyx_string*, %nyx_string** %6218
  %6264 = load %nyx_string*, %nyx_string** %6202
  %6265 = call i1 @nyx_string_starts_with(%nyx_string* %6263, %nyx_string* %6264)
  store i1 %6265, i1* %6260
  br label %sc_and_end1109
sc_and_end1109:
  %6266 = load i1, i1* %6260
  br i1 %6266, label %then1110, label %else1111
then1110:
  store i1 1, i1* %6219
  %6267 = load %nyx_string*, %nyx_string** %6218
  %6268 = load %nyx_string*, %nyx_string** %6218
  %6269 = call i64 @nyx_string_byte_length(%nyx_string* %6268)
  %6270 = call %nyx_string* @nyx_string_substring(%nyx_string* %6267, i64 7, i64 %6269)
  store %nyx_string* %6270, %nyx_string** %6176
  %6271 = load %nyx_string*, %nyx_string** %6176
  %6272 = load %nyx_string*, %nyx_string** %6196
  %6273 = call i1 @nyx_string_equals(%nyx_string* %6271, %nyx_string* %6272)
  br i1 %6273, label %then1113, label %else1114
then1113:
  %6274 = load %nyx_string*, %nyx_string** %6190
  store %nyx_string* %6274, %nyx_string** %6186
  br label %merge1115
else1114:
  br label %merge1115
merge1115:
  br label %merge1112
else1111:
  br label %merge1112
merge1112:
  %6275 = alloca i1
  store i1 false, i1* %6275
  %6276 = load i1, i1* %6219
  %6277 = icmp eq i1 %6276, 0
  br i1 %6277, label %sc_and_rhs1116, label %sc_and_end1117
sc_and_rhs1116:
  %6278 = load %nyx_string*, %nyx_string** %6218
  %6279 = load %nyx_string*, %nyx_string** %6205
  %6280 = call i1 @nyx_string_starts_with(%nyx_string* %6278, %nyx_string* %6279)
  store i1 %6280, i1* %6275
  br label %sc_and_end1117
sc_and_end1117:
  %6281 = load i1, i1* %6275
  br i1 %6281, label %then1118, label %else1119
then1118:
  store i1 1, i1* %6219
  %6282 = load %nyx_string*, %nyx_string** %6218
  %6283 = load %nyx_string*, %nyx_string** %6218
  %6284 = call i64 @nyx_string_byte_length(%nyx_string* %6283)
  %6285 = call %nyx_string* @nyx_string_substring(%nyx_string* %6282, i64 8, i64 %6284)
  store %nyx_string* %6285, %nyx_string** %6179
  %6286 = load %nyx_string*, %nyx_string** %6179
  %6287 = load %nyx_string*, %nyx_string** %6196
  %6288 = call i1 @nyx_string_equals(%nyx_string* %6286, %nyx_string* %6287)
  br i1 %6288, label %then1121, label %else1122
then1121:
  %6289 = load %nyx_string*, %nyx_string** %6193
  store %nyx_string* %6289, %nyx_string** %6186
  br label %merge1123
else1122:
  br label %merge1123
merge1123:
  br label %merge1120
else1119:
  br label %merge1120
merge1120:
  %6290 = alloca i1
  store i1 false, i1* %6290
  %6291 = load i1, i1* %6219
  %6292 = icmp eq i1 %6291, 0
  br i1 %6292, label %sc_and_rhs1124, label %sc_and_end1125
sc_and_rhs1124:
  %6293 = load %nyx_string*, %nyx_string** %6218
  %6294 = load %nyx_string*, %nyx_string** %6208
  %6295 = call i1 @nyx_string_equals(%nyx_string* %6293, %nyx_string* %6294)
  store i1 %6295, i1* %6290
  br label %sc_and_end1125
sc_and_end1125:
  %6296 = load i1, i1* %6290
  br i1 %6296, label %then1126, label %else1127
then1126:
  store i1 1, i1* %6219
  store i1 1, i1* %6180
  br label %merge1128
else1127:
  br label %merge1128
merge1128:
  %6297 = alloca i1
  store i1 false, i1* %6297
  %6298 = load i1, i1* %6219
  %6299 = icmp eq i1 %6298, 0
  br i1 %6299, label %sc_and_rhs1129, label %sc_and_end1130
sc_and_rhs1129:
  %6300 = load %nyx_string*, %nyx_string** %6218
  %6301 = load %nyx_string*, %nyx_string** %6199
  %6302 = call i1 @nyx_string_starts_with(%nyx_string* %6300, %nyx_string* %6301)
  store i1 %6302, i1* %6297
  br label %sc_and_end1130
sc_and_end1130:
  %6303 = load i1, i1* %6297
  br i1 %6303, label %then1131, label %else1132
then1131:
  store i1 1, i1* %6219
  %6304 = load %nyx_string*, %nyx_string** %6218
  store %nyx_string* %6304, %nyx_string** %6183
  br label %merge1133
else1132:
  br label %merge1133
merge1133:
  %6305 = load i1, i1* %6219
  %6306 = icmp eq i1 %6305, 0
  br i1 %6306, label %then1134, label %else1135
then1134:
  %6307 = load %nyx_string*, %nyx_string** %6173
  %6308 = load %nyx_string*, %nyx_string** %6196
  %6309 = call i1 @nyx_string_equals(%nyx_string* %6307, %nyx_string* %6308)
  br i1 %6309, label %then1137, label %else1138
then1137:
  %6310 = load %nyx_string*, %nyx_string** %6218
  store %nyx_string* %6310, %nyx_string** %6173
  br label %merge1139
else1138:
  br label %merge1139
merge1139:
  br label %merge1136
else1135:
  br label %merge1136
merge1136:
  %6311 = load i64, i64* %6187
  %6312 = add i64 %6311, 1
  store i64 %6312, i64* %6187
  br label %while_cond1085
while_end1087:
  %6313 = load %nyx_string*, %nyx_string** %6183
  %6314 = getelementptr [1 x i8], [1 x i8]* @.str945, i32 0, i32 0
  %6315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %6314, i64 0)
  %6316 = call i1 @nyx_string_equals(%nyx_string* %6313, %nyx_string* %6315)
  %6317 = xor i1 %6316, true
  br i1 %6317, label %then1140, label %else1141
then1140:
  %6318 = getelementptr [42 x i8], [42 x i8]* @.str946, i32 0, i32 0
  %6319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %6318, i64 41)
  %6320 = load %nyx_string*, %nyx_string** %6183
  %6321 = call %nyx_string* @nyx_string_concat(%nyx_string* %6319, %nyx_string* %6320)
  %6322 = call i8* @nyx_string_to_cstr(%nyx_string* %6321)
  call void @nyx_print_string(i8* %6322)
  %6323 = getelementptr [80 x i8], [80 x i8]* @.str947, i32 0, i32 0
  %6324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %6323, i64 79)
  %6325 = call i8* @nyx_string_to_cstr(%nyx_string* %6324)
  call void @nyx_print_string(i8* %6325)
  ret i64 1
else1141:
  br label %merge1142
merge1142:
  %6326 = load %nyx_string*, %nyx_string** %6186
  %6327 = getelementptr [1 x i8], [1 x i8]* @.str948, i32 0, i32 0
  %6328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %6327, i64 0)
  %6329 = call i1 @nyx_string_equals(%nyx_string* %6326, %nyx_string* %6328)
  %6330 = xor i1 %6329, true
  br i1 %6330, label %then1143, label %else1144
then1143:
  %6331 = getelementptr [8 x i8], [8 x i8]* @.str949, i32 0, i32 0
  %6332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %6331, i64 7)
  %6333 = load %nyx_string*, %nyx_string** %6186
  %6334 = call %nyx_string* @nyx_string_concat(%nyx_string* %6332, %nyx_string* %6333)
  %6335 = getelementptr [19 x i8], [19 x i8]* @.str950, i32 0, i32 0
  %6336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %6335, i64 18)
  %6337 = call %nyx_string* @nyx_string_concat(%nyx_string* %6334, %nyx_string* %6336)
  %6338 = call i8* @nyx_string_to_cstr(%nyx_string* %6337)
  call void @nyx_print_string(i8* %6338)
  %6339 = getelementptr [80 x i8], [80 x i8]* @.str951, i32 0, i32 0
  %6340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %6339, i64 79)
  %6341 = call i8* @nyx_string_to_cstr(%nyx_string* %6340)
  call void @nyx_print_string(i8* %6341)
  ret i64 1
else1144:
  br label %merge1145
merge1145:
  %6342 = load %nyx_string*, %nyx_string** %6176
  %6343 = getelementptr [1 x i8], [1 x i8]* @.str952, i32 0, i32 0
  %6344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %6343, i64 0)
  %6345 = call i1 @nyx_string_equals(%nyx_string* %6342, %nyx_string* %6344)
  br i1 %6345, label %then1146, label %else1147
then1146:
  %6346 = getelementptr [9 x i8], [9 x i8]* @.str953, i32 0, i32 0
  %6347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %6346, i64 8)
  %6348 = call i8* @nyx_string_to_cstr(%nyx_string* %6347)
  %6349 = call %nyx_string* @nyx_getenv(i8* %6348)
  %6350 = alloca %nyx_string*
  store %nyx_string* %6349, %nyx_string** %6350
  %6351 = load %nyx_string*, %nyx_string** %6350
  %6352 = getelementptr [3 x i8], [3 x i8]* @.str954, i32 0, i32 0
  %6353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %6352, i64 2)
  %6354 = call i1 @nyx_string_equals(%nyx_string* %6351, %nyx_string* %6353)
  br i1 %6354, label %then1149, label %else1150
then1149:
  %6355 = getelementptr [3 x i8], [3 x i8]* @.str955, i32 0, i32 0
  %6356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %6355, i64 2)
  store %nyx_string* %6356, %nyx_string** %6176
  br label %merge1151
else1150:
  br label %merge1151
merge1151:
  %6357 = load %nyx_string*, %nyx_string** %6176
  %6358 = getelementptr [1 x i8], [1 x i8]* @.str956, i32 0, i32 0
  %6359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %6358, i64 0)
  %6360 = call i1 @nyx_string_equals(%nyx_string* %6357, %nyx_string* %6359)
  br i1 %6360, label %then1152, label %else1153
then1152:
  %6361 = getelementptr [3 x i8], [3 x i8]* @.str957, i32 0, i32 0
  %6362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %6361, i64 2)
  store %nyx_string* %6362, %nyx_string** %6176
  br label %merge1154
else1153:
  br label %merge1154
merge1154:
  br label %merge1148
else1147:
  br label %merge1148
merge1148:
  %6363 = alloca i1
  store i1 false, i1* %6363
  %6364 = load %nyx_string*, %nyx_string** %6176
  %6365 = getelementptr [3 x i8], [3 x i8]* @.str958, i32 0, i32 0
  %6366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %6365, i64 2)
  %6367 = call i1 @nyx_string_equals(%nyx_string* %6364, %nyx_string* %6366)
  %6368 = xor i1 %6367, true
  br i1 %6368, label %sc_and_rhs1155, label %sc_and_end1156
sc_and_rhs1155:
  %6369 = load %nyx_string*, %nyx_string** %6176
  %6370 = getelementptr [3 x i8], [3 x i8]* @.str959, i32 0, i32 0
  %6371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %6370, i64 2)
  %6372 = call i1 @nyx_string_equals(%nyx_string* %6369, %nyx_string* %6371)
  %6373 = xor i1 %6372, true
  store i1 %6373, i1* %6363
  br label %sc_and_end1156
sc_and_end1156:
  %6374 = load i1, i1* %6363
  br i1 %6374, label %then1157, label %else1158
then1157:
  %6375 = getelementptr [27 x i8], [27 x i8]* @.str960, i32 0, i32 0
  %6376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %6375, i64 26)
  %6377 = load %nyx_string*, %nyx_string** %6176
  %6378 = call %nyx_string* @nyx_string_concat(%nyx_string* %6376, %nyx_string* %6377)
  %6379 = getelementptr [29 x i8], [29 x i8]* @.str961, i32 0, i32 0
  %6380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %6379, i64 28)
  %6381 = call %nyx_string* @nyx_string_concat(%nyx_string* %6378, %nyx_string* %6380)
  %6382 = call i8* @nyx_string_to_cstr(%nyx_string* %6381)
  call void @nyx_print_string(i8* %6382)
  ret i64 1
else1158:
  br label %merge1159
merge1159:
  %6383 = load %nyx_string*, %nyx_string** %6179
  %6384 = call i1 @validate_agents(%nyx_string* %6383)
  %6385 = icmp eq i1 %6384, 0
  br i1 %6385, label %then1160, label %else1161
then1160:
  ret i64 1
else1161:
  br label %merge1162
merge1162:
  %6386 = load %nyx_string*, %nyx_string** %6173
  %6387 = load %nyx_string*, %nyx_string** %6176
  %6388 = load %nyx_string*, %nyx_string** %6179
  %6389 = call i1 @run_init(%nyx_string* %6386, %nyx_string* %6387, %nyx_string* %6388)
  %6390 = alloca i1
  store i1 %6389, i1* %6390
  %6391 = load i1, i1* %6390
  %6392 = icmp eq i1 %6391, 0
  br i1 %6392, label %then1163, label %else1164
then1163:
  ret i64 1
else1164:
  br label %merge1165
merge1165:
  %6393 = load i1, i1* %6180
  br i1 %6393, label %then1166, label %else1167
then1166:
  %6394 = load %nyx_string*, %nyx_string** %6173
  %6395 = alloca %nyx_string*
  store %nyx_string* %6394, %nyx_string** %6395
  %6396 = load %nyx_string*, %nyx_string** %6395
  %6397 = getelementptr [1 x i8], [1 x i8]* @.str962, i32 0, i32 0
  %6398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %6397, i64 0)
  %6399 = call i1 @nyx_string_equals(%nyx_string* %6396, %nyx_string* %6398)
  br i1 %6399, label %then1169, label %else1170
then1169:
  %6400 = getelementptr [2 x i8], [2 x i8]* @.str963, i32 0, i32 0
  %6401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %6400, i64 1)
  store %nyx_string* %6401, %nyx_string** %6395
  br label %merge1171
else1170:
  br label %merge1171
merge1171:
  %6402 = getelementptr [1 x i8], [1 x i8]* @.str964, i32 0, i32 0
  %6403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %6402, i64 0)
  %6404 = call i8* @nyx_string_to_cstr(%nyx_string* %6403)
  call void @nyx_print_string(i8* %6404)
  %6405 = load %nyx_string*, %nyx_string** %6395
  %6406 = load %nyx_string*, %nyx_string** %6176
  %6407 = call i1 @run_sdd_init(%nyx_string* %6405, %nyx_string* %6406)
  %6408 = alloca i1
  store i1 %6407, i1* %6408
  %6409 = load i1, i1* %6408
  %6410 = icmp eq i1 %6409, 0
  br i1 %6410, label %then1172, label %else1173
then1172:
  ret i64 1
else1173:
  br label %merge1174
merge1174:
  br label %merge1168
else1167:
  br label %merge1168
merge1168:
  ret i64 0
else1083:
  br label %merge1084
merge1084:
  %6411 = load %nyx_string*, %nyx_string** %5933
  %6412 = getelementptr [4 x i8], [4 x i8]* @.str965, i32 0, i32 0
  %6413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %6412, i64 3)
  %6414 = call i1 @nyx_string_equals(%nyx_string* %6411, %nyx_string* %6413)
  br i1 %6414, label %then1175, label %else1176
then1175:
  %6415 = getelementptr [1 x i8], [1 x i8]* @.str966, i32 0, i32 0
  %6416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %6415, i64 0)
  %6417 = alloca %nyx_string*
  store %nyx_string* %6416, %nyx_string** %6417
  %6418 = load { i64, i8* }*, { i64, i8* }** %5930
  %6419 = call i64 @nyx_array_length({ i64, i8* }* %6418)
  %6420 = icmp sge i64 %6419, 3
  br i1 %6420, label %then1178, label %else1179
then1178:
  %6421 = load { i64, i8* }*, { i64, i8* }** %5930
  %6422 = call i64 @nyx_array_get_checked({ i64, i8* }* %6421, i64 2, i64 2)
  %6423 = inttoptr i64 %6422 to %nyx_string*
  %6424 = alloca %nyx_string*
  store %nyx_string* %6423, %nyx_string** %6424
  %6425 = load %nyx_string*, %nyx_string** %6424
  store %nyx_string* %6425, %nyx_string** %6417
  br label %merge1180
else1179:
  br label %merge1180
merge1180:
  %6426 = load %nyx_string*, %nyx_string** %6417
  %6427 = getelementptr [5 x i8], [5 x i8]* @.str967, i32 0, i32 0
  %6428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %6427, i64 4)
  %6429 = call i1 @nyx_string_equals(%nyx_string* %6426, %nyx_string* %6428)
  br i1 %6429, label %then1181, label %else1182
then1181:
  %6430 = getelementptr [2 x i8], [2 x i8]* @.str968, i32 0, i32 0
  %6431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %6430, i64 1)
  %6432 = getelementptr [2 x i8], [2 x i8]* @.str969, i32 0, i32 0
  %6433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %6432, i64 1)
  %6434 = call %nyx_string* @project_lang(%nyx_string* %6433)
  %6435 = call i1 @run_sdd_init(%nyx_string* %6431, %nyx_string* %6434)
  %6436 = alloca i1
  store i1 %6435, i1* %6436
  %6437 = load i1, i1* %6436
  br i1 %6437, label %then1184, label %else1185
then1184:
  ret i64 0
else1185:
  br label %merge1186
merge1186:
  ret i64 1
else1182:
  br label %merge1183
merge1183:
  %6438 = load %nyx_string*, %nyx_string** %6417
  %6439 = getelementptr [9 x i8], [9 x i8]* @.str970, i32 0, i32 0
  %6440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %6439, i64 8)
  %6441 = call i1 @nyx_string_equals(%nyx_string* %6438, %nyx_string* %6440)
  br i1 %6441, label %then1187, label %else1188
then1187:
  %6442 = getelementptr [2 x i8], [2 x i8]* @.str971, i32 0, i32 0
  %6443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %6442, i64 1)
  %6444 = getelementptr [2 x i8], [2 x i8]* @.str972, i32 0, i32 0
  %6445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %6444, i64 1)
  %6446 = call %nyx_string* @project_lang(%nyx_string* %6445)
  %6447 = call i1 @run_sdd_evidence(%nyx_string* %6443, %nyx_string* %6446)
  %6448 = alloca i1
  store i1 %6447, i1* %6448
  %6449 = load i1, i1* %6448
  br i1 %6449, label %then1190, label %else1191
then1190:
  ret i64 0
else1191:
  br label %merge1192
merge1192:
  ret i64 1
else1188:
  br label %merge1189
merge1189:
  %6450 = load %nyx_string*, %nyx_string** %6417
  %6451 = getelementptr [1 x i8], [1 x i8]* @.str973, i32 0, i32 0
  %6452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %6451, i64 0)
  %6453 = call i1 @nyx_string_equals(%nyx_string* %6450, %nyx_string* %6452)
  br i1 %6453, label %then1193, label %else1194
then1193:
  %6454 = getelementptr [57 x i8], [57 x i8]* @.str974, i32 0, i32 0
  %6455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %6454, i64 56)
  %6456 = call i8* @nyx_string_to_cstr(%nyx_string* %6455)
  call void @nyx_print_string(i8* %6456)
  br label %merge1195
else1194:
  %6457 = getelementptr [48 x i8], [48 x i8]* @.str975, i32 0, i32 0
  %6458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %6457, i64 47)
  %6459 = load %nyx_string*, %nyx_string** %6417
  %6460 = call %nyx_string* @nyx_string_concat(%nyx_string* %6458, %nyx_string* %6459)
  %6461 = getelementptr [29 x i8], [29 x i8]* @.str976, i32 0, i32 0
  %6462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %6461, i64 28)
  %6463 = call %nyx_string* @nyx_string_concat(%nyx_string* %6460, %nyx_string* %6462)
  %6464 = call i8* @nyx_string_to_cstr(%nyx_string* %6463)
  call void @nyx_print_string(i8* %6464)
  br label %merge1195
merge1195:
  %6465 = getelementptr [69 x i8], [69 x i8]* @.str977, i32 0, i32 0
  %6466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %6465, i64 68)
  %6467 = call i8* @nyx_string_to_cstr(%nyx_string* %6466)
  call void @nyx_print_string(i8* %6467)
  %6468 = getelementptr [79 x i8], [79 x i8]* @.str978, i32 0, i32 0
  %6469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %6468, i64 78)
  %6470 = call i8* @nyx_string_to_cstr(%nyx_string* %6469)
  call void @nyx_print_string(i8* %6470)
  ret i64 1
else1176:
  br label %merge1177
merge1177:
  %6471 = load %nyx_string*, %nyx_string** %5933
  %6472 = getelementptr [4 x i8], [4 x i8]* @.str979, i32 0, i32 0
  %6473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %6472, i64 3)
  %6474 = call i1 @nyx_string_equals(%nyx_string* %6471, %nyx_string* %6473)
  br i1 %6474, label %then1196, label %else1197
then1196:
  %6475 = load { i64, i8* }*, { i64, i8* }** %5930
  %6476 = call i64 @nyx_array_length({ i64, i8* }* %6475)
  %6477 = icmp slt i64 %6476, 3
  br i1 %6477, label %then1199, label %else1200
then1199:
  %6478 = getelementptr [51 x i8], [51 x i8]* @.str980, i32 0, i32 0
  %6479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %6478, i64 50)
  %6480 = call i8* @nyx_string_to_cstr(%nyx_string* %6479)
  call void @nyx_print_string(i8* %6480)
  ret i64 1
else1200:
  br label %merge1201
merge1201:
  %6481 = load { i64, i8* }*, { i64, i8* }** %5930
  %6482 = call i64 @nyx_array_get_checked({ i64, i8* }* %6481, i64 2, i64 2)
  %6483 = inttoptr i64 %6482 to %nyx_string*
  %6484 = alloca %nyx_string*
  store %nyx_string* %6483, %nyx_string** %6484
  %6485 = getelementptr [1 x i8], [1 x i8]* @.str981, i32 0, i32 0
  %6486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %6485, i64 0)
  %6487 = alloca %nyx_string*
  store %nyx_string* %6486, %nyx_string** %6487
  %6488 = load { i64, i8* }*, { i64, i8* }** %5930
  %6489 = call i64 @nyx_array_length({ i64, i8* }* %6488)
  %6490 = icmp sge i64 %6489, 5
  br i1 %6490, label %then1202, label %else1203
then1202:
  %6491 = load { i64, i8* }*, { i64, i8* }** %5930
  %6492 = call i64 @nyx_array_get_checked({ i64, i8* }* %6491, i64 3, i64 2)
  %6493 = inttoptr i64 %6492 to %nyx_string*
  %6494 = alloca %nyx_string*
  store %nyx_string* %6493, %nyx_string** %6494
  %6495 = load %nyx_string*, %nyx_string** %6494
  %6496 = getelementptr [7 x i8], [7 x i8]* @.str982, i32 0, i32 0
  %6497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %6496, i64 6)
  %6498 = call i1 @nyx_string_equals(%nyx_string* %6495, %nyx_string* %6497)
  br i1 %6498, label %then1205, label %else1206
then1205:
  %6499 = load { i64, i8* }*, { i64, i8* }** %5930
  %6500 = call i64 @nyx_array_get_checked({ i64, i8* }* %6499, i64 4, i64 2)
  %6501 = inttoptr i64 %6500 to %nyx_string*
  %6502 = alloca %nyx_string*
  store %nyx_string* %6501, %nyx_string** %6502
  %6503 = load %nyx_string*, %nyx_string** %6502
  store %nyx_string* %6503, %nyx_string** %6487
  br label %merge1207
else1206:
  br label %merge1207
merge1207:
  br label %merge1204
else1203:
  br label %merge1204
merge1204:
  %6504 = call { i64, i8* }* @nyx_array_new_ptr()
  %6505 = alloca { i64, i8* }*
  store { i64, i8* }* %6504, { i64, i8* }** %6505
  %6506 = call { i64, i8* }* @nyx_array_new_ptr()
  %6507 = alloca { i64, i8* }*
  store { i64, i8* }* %6506, { i64, i8* }** %6507
  %6508 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %6509 = ptrtoint %ProjectConfig* %6508 to i64
  %6510 = call i8* @GC_malloc(i64 %6509)
  %6511 = bitcast i8* %6510 to %ProjectConfig*
  %6512 = getelementptr [8 x i8], [8 x i8]* @.str983, i32 0, i32 0
  %6513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %6512, i64 7)
  %6514 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 0
  store %nyx_string* %6513, %nyx_string** %6514
  %6515 = getelementptr [6 x i8], [6 x i8]* @.str984, i32 0, i32 0
  %6516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %6515, i64 5)
  %6517 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 1
  store %nyx_string* %6516, %nyx_string** %6517
  %6518 = getelementptr [1 x i8], [1 x i8]* @.str985, i32 0, i32 0
  %6519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %6518, i64 0)
  %6520 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 2
  store %nyx_string* %6519, %nyx_string** %6520
  %6521 = getelementptr [1 x i8], [1 x i8]* @.str986, i32 0, i32 0
  %6522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %6521, i64 0)
  %6523 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 3
  store %nyx_string* %6522, %nyx_string** %6523
  %6524 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 4
  store i1 0, i1* %6524
  %6525 = getelementptr [1 x i8], [1 x i8]* @.str987, i32 0, i32 0
  %6526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %6525, i64 0)
  %6527 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 5
  store %nyx_string* %6526, %nyx_string** %6527
  %6528 = load { i64, i8* }*, { i64, i8* }** %6505
  %6529 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 6
  store { i64, i8* }* %6528, { i64, i8* }** %6529
  %6530 = load { i64, i8* }*, { i64, i8* }** %6507
  %6531 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 7
  store { i64, i8* }* %6530, { i64, i8* }** %6531
  %6532 = getelementptr [1 x i8], [1 x i8]* @.str988, i32 0, i32 0
  %6533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %6532, i64 0)
  %6534 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 8
  store %nyx_string* %6533, %nyx_string** %6534
  %6535 = getelementptr [1 x i8], [1 x i8]* @.str989, i32 0, i32 0
  %6536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %6535, i64 0)
  %6537 = getelementptr %ProjectConfig, %ProjectConfig* %6511, i32 0, i32 9
  store %nyx_string* %6536, %nyx_string** %6537
  %6538 = load %ProjectConfig, %ProjectConfig* %6511
  %6539 = alloca %ProjectConfig
  store %ProjectConfig %6538, %ProjectConfig* %6539
  %6540 = load %nyx_string*, %nyx_string** %6484
  %6541 = load %nyx_string*, %nyx_string** %6487
  %6542 = load %ProjectConfig, %ProjectConfig* %6539
  %6543 = call i1 @run_add(%nyx_string* %6540, %nyx_string* %6541, %ProjectConfig %6542)
  %6544 = alloca i1
  store i1 %6543, i1* %6544
  %6545 = load i1, i1* %6544
  br i1 %6545, label %then1208, label %else1209
then1208:
  ret i64 0
else1209:
  br label %merge1210
merge1210:
  ret i64 1
else1197:
  br label %merge1198
merge1198:
  %6546 = load %nyx_string*, %nyx_string** %5933
  %6547 = getelementptr [7 x i8], [7 x i8]* @.str990, i32 0, i32 0
  %6548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %6547, i64 6)
  %6549 = call i1 @nyx_string_equals(%nyx_string* %6546, %nyx_string* %6548)
  br i1 %6549, label %then1211, label %else1212
then1211:
  %6550 = getelementptr [1 x i8], [1 x i8]* @.str991, i32 0, i32 0
  %6551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %6550, i64 0)
  %6552 = alloca %nyx_string*
  store %nyx_string* %6551, %nyx_string** %6552
  %6553 = alloca i1
  store i1 0, i1* %6553
  %6554 = alloca i64
  store i64 2, i64* %6554
  %6555 = getelementptr [7 x i8], [7 x i8]* @.str992, i32 0, i32 0
  %6556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %6555, i64 6)
  %6557 = alloca %nyx_string*
  store %nyx_string* %6556, %nyx_string** %6557
  %6558 = getelementptr [10 x i8], [10 x i8]* @.str993, i32 0, i32 0
  %6559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %6558, i64 9)
  %6560 = alloca %nyx_string*
  store %nyx_string* %6559, %nyx_string** %6560
  %6561 = call i8* @llvm.stacksave()
  br label %while_cond1214
while_cond1214:
  %6562 = load i64, i64* %6554
  %6563 = load { i64, i8* }*, { i64, i8* }** %5930
  %6564 = call i64 @nyx_array_length({ i64, i8* }* %6563)
  %6565 = icmp slt i64 %6562, %6564
  br i1 %6565, label %while_body1215, label %while_end1216
while_body1215:
  call void @llvm.stackrestore(i8* %6561)
  %6566 = load { i64, i8* }*, { i64, i8* }** %5930
  %6567 = load i64, i64* %6554
  %6568 = call i64 @nyx_array_get_checked({ i64, i8* }* %6566, i64 %6567, i64 2)
  %6569 = inttoptr i64 %6568 to %nyx_string*
  %6570 = alloca %nyx_string*
  store %nyx_string* %6569, %nyx_string** %6570
  %6571 = load %nyx_string*, %nyx_string** %6570
  %6572 = load %nyx_string*, %nyx_string** %6557
  %6573 = call i1 @nyx_string_equals(%nyx_string* %6571, %nyx_string* %6572)
  br i1 %6573, label %then1217, label %else1218
then1217:
  store i1 1, i1* %6553
  br label %merge1219
else1218:
  %6574 = load %nyx_string*, %nyx_string** %6570
  %6575 = load %nyx_string*, %nyx_string** %6560
  %6576 = call i1 @nyx_string_equals(%nyx_string* %6574, %nyx_string* %6575)
  %6577 = xor i1 %6576, true
  br i1 %6577, label %then1220, label %else1221
then1220:
  %6578 = load %nyx_string*, %nyx_string** %6570
  store %nyx_string* %6578, %nyx_string** %6552
  br label %merge1222
else1221:
  br label %merge1222
merge1222:
  br label %merge1219
merge1219:
  %6579 = load i64, i64* %6554
  %6580 = add i64 %6579, 1
  store i64 %6580, i64* %6554
  br label %while_cond1214
while_end1216:
  %6581 = load %nyx_string*, %nyx_string** %6552
  %6582 = load i1, i1* %6553
  %6583 = call i1 @run_report(%nyx_string* %6581, i1 %6582)
  %6584 = alloca i1
  store i1 %6583, i1* %6584
  %6585 = load i1, i1* %6584
  br i1 %6585, label %then1223, label %else1224
then1223:
  ret i64 0
else1224:
  br label %merge1225
merge1225:
  ret i64 1
else1212:
  br label %merge1213
merge1213:
  %6586 = load %nyx_string*, %nyx_string** %5933
  %6587 = getelementptr [13 x i8], [13 x i8]* @.str994, i32 0, i32 0
  %6588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %6587, i64 12)
  %6589 = call i1 @nyx_string_equals(%nyx_string* %6586, %nyx_string* %6588)
  br i1 %6589, label %then1226, label %else1227
then1226:
  %6590 = getelementptr [1 x i8], [1 x i8]* @.str995, i32 0, i32 0
  %6591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %6590, i64 0)
  %6592 = alloca %nyx_string*
  store %nyx_string* %6591, %nyx_string** %6592
  %6593 = load { i64, i8* }*, { i64, i8* }** %5930
  %6594 = call i64 @nyx_array_length({ i64, i8* }* %6593)
  %6595 = icmp sge i64 %6594, 3
  br i1 %6595, label %then1229, label %else1230
then1229:
  %6596 = load { i64, i8* }*, { i64, i8* }** %5930
  %6597 = call i64 @nyx_array_get_checked({ i64, i8* }* %6596, i64 2, i64 2)
  %6598 = inttoptr i64 %6597 to %nyx_string*
  %6599 = alloca %nyx_string*
  store %nyx_string* %6598, %nyx_string** %6599
  %6600 = load %nyx_string*, %nyx_string** %6599
  %6601 = getelementptr [10 x i8], [10 x i8]* @.str996, i32 0, i32 0
  %6602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %6601, i64 9)
  %6603 = call i1 @nyx_string_equals(%nyx_string* %6600, %nyx_string* %6602)
  %6604 = xor i1 %6603, true
  br i1 %6604, label %then1232, label %else1233
then1232:
  %6605 = load %nyx_string*, %nyx_string** %6599
  store %nyx_string* %6605, %nyx_string** %6592
  br label %merge1234
else1233:
  br label %merge1234
merge1234:
  br label %merge1231
else1230:
  br label %merge1231
merge1231:
  %6606 = load %nyx_string*, %nyx_string** %6592
  %6607 = call i1 @run_capabilities(%nyx_string* %6606)
  %6608 = alloca i1
  store i1 %6607, i1* %6608
  %6609 = load i1, i1* %6608
  br i1 %6609, label %then1235, label %else1236
then1235:
  ret i64 0
else1236:
  br label %merge1237
merge1237:
  ret i64 1
else1227:
  br label %merge1228
merge1228:
  %6610 = getelementptr [9 x i8], [9 x i8]* @.str997, i32 0, i32 0
  %6611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %6610, i64 8)
  %6612 = call i8* @nyx_string_to_cstr(%nyx_string* %6611)
  %6613 = call i1 @nyx_file_exists(i8* %6612)
  %6614 = xor i1 %6613, true
  br i1 %6614, label %then1238, label %else1239
then1238:
  %6615 = getelementptr [47 x i8], [47 x i8]* @.str998, i32 0, i32 0
  %6616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %6615, i64 46)
  %6617 = call i8* @nyx_string_to_cstr(%nyx_string* %6616)
  call void @nyx_print_string(i8* %6617)
  %6618 = getelementptr [24 x i8], [24 x i8]* @.str999, i32 0, i32 0
  %6619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %6618, i64 23)
  %6620 = call i8* @nyx_string_to_cstr(%nyx_string* %6619)
  call void @nyx_print_string(i8* %6620)
  %6621 = getelementptr [12 x i8], [12 x i8]* @.str1000, i32 0, i32 0
  %6622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %6621, i64 11)
  %6623 = call i8* @nyx_string_to_cstr(%nyx_string* %6622)
  call void @nyx_print_string(i8* %6623)
  %6624 = getelementptr [17 x i8], [17 x i8]* @.str1001, i32 0, i32 0
  %6625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %6624, i64 16)
  %6626 = call i8* @nyx_string_to_cstr(%nyx_string* %6625)
  call void @nyx_print_string(i8* %6626)
  %6627 = getelementptr [20 x i8], [20 x i8]* @.str1002, i32 0, i32 0
  %6628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %6627, i64 19)
  %6629 = call i8* @nyx_string_to_cstr(%nyx_string* %6628)
  call void @nyx_print_string(i8* %6629)
  %6630 = getelementptr [23 x i8], [23 x i8]* @.str1003, i32 0, i32 0
  %6631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %6630, i64 22)
  %6632 = call i8* @nyx_string_to_cstr(%nyx_string* %6631)
  call void @nyx_print_string(i8* %6632)
  ret i64 1
else1239:
  br label %merge1240
merge1240:
  %6633 = getelementptr [9 x i8], [9 x i8]* @.str1004, i32 0, i32 0
  %6634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %6633, i64 8)
  %6635 = call i8* @nyx_string_to_cstr(%nyx_string* %6634)
  %6636 = call %nyx_string* @nyx_read_file(i8* %6635)
  %6637 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 20
  store %nyx_string* %6636, %nyx_string** %6637
  %6638 = load %nyx_string*, %nyx_string** %6637
  %6639 = call %ProjectConfig @parse_toml(%nyx_string* %6638)
  %6640 = getelementptr %SharedEnv_main, %SharedEnv_main* %5928, i32 0, i32 21
  store %ProjectConfig %6639, %ProjectConfig* %6640
  %6641 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 8
  %6642 = load %nyx_string*, %nyx_string** %6641
  %6643 = getelementptr [1 x i8], [1 x i8]* @.str1005, i32 0, i32 0
  %6644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %6643, i64 0)
  %6645 = call i1 @nyx_string_equals(%nyx_string* %6642, %nyx_string* %6644)
  %6646 = xor i1 %6645, true
  br i1 %6646, label %then1241, label %else1242
then1241:
  %6647 = getelementptr [8 x i8], [8 x i8]* @.str1006, i32 0, i32 0
  %6648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %6647, i64 7)
  %6649 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 8
  %6650 = load %nyx_string*, %nyx_string** %6649
  %6651 = call %nyx_string* @nyx_string_concat(%nyx_string* %6648, %nyx_string* %6650)
  %6652 = call i8* @nyx_string_to_cstr(%nyx_string* %6651)
  call void @nyx_print_string(i8* %6652)
  ret i64 1
else1242:
  br label %merge1243
merge1243:
  %6653 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 0
  %6654 = load %nyx_string*, %nyx_string** %6653
  %6655 = getelementptr [1 x i8], [1 x i8]* @.str1007, i32 0, i32 0
  %6656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %6655, i64 0)
  %6657 = call i1 @nyx_string_equals(%nyx_string* %6654, %nyx_string* %6656)
  br i1 %6657, label %then1244, label %else1245
then1244:
  %6658 = getelementptr [45 x i8], [45 x i8]* @.str1008, i32 0, i32 0
  %6659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %6658, i64 44)
  %6660 = call i8* @nyx_string_to_cstr(%nyx_string* %6659)
  call void @nyx_print_string(i8* %6660)
  ret i64 1
else1245:
  br label %merge1246
merge1246:
  %6661 = load %nyx_string*, %nyx_string** %5940
  %6662 = getelementptr [1 x i8], [1 x i8]* @.str1009, i32 0, i32 0
  %6663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %6662, i64 0)
  %6664 = call i1 @nyx_string_equals(%nyx_string* %6661, %nyx_string* %6663)
  %6665 = xor i1 %6664, true
  br i1 %6665, label %then1247, label %else1248
then1247:
  %6666 = alloca i1
  store i1 false, i1* %6666
  %6667 = load %nyx_string*, %nyx_string** %5933
  %6668 = getelementptr [6 x i8], [6 x i8]* @.str1010, i32 0, i32 0
  %6669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %6668, i64 5)
  %6670 = call i1 @nyx_string_equals(%nyx_string* %6667, %nyx_string* %6669)
  %6671 = xor i1 %6670, true
  br i1 %6671, label %sc_and_rhs1250, label %sc_and_end1251
sc_and_rhs1250:
  %6672 = load %nyx_string*, %nyx_string** %5933
  %6673 = getelementptr [4 x i8], [4 x i8]* @.str1011, i32 0, i32 0
  %6674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %6673, i64 3)
  %6675 = call i1 @nyx_string_equals(%nyx_string* %6672, %nyx_string* %6674)
  %6676 = xor i1 %6675, true
  store i1 %6676, i1* %6666
  br label %sc_and_end1251
sc_and_end1251:
  %6677 = load i1, i1* %6666
  br i1 %6677, label %then1252, label %else1253
then1252:
  %6678 = getelementptr [53 x i8], [53 x i8]* @.str1012, i32 0, i32 0
  %6679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %6678, i64 52)
  %6680 = call i8* @nyx_string_to_cstr(%nyx_string* %6679)
  call void @nyx_print_string(i8* %6680)
  ret i64 1
else1253:
  br label %merge1254
merge1254:
  %6681 = load %nyx_string*, %nyx_string** %5940
  %6682 = call %nyx_string* @main_flag_error(%nyx_string* %6681)
  %6683 = alloca %nyx_string*
  store %nyx_string* %6682, %nyx_string** %6683
  %6684 = load %nyx_string*, %nyx_string** %6683
  %6685 = getelementptr [1 x i8], [1 x i8]* @.str1013, i32 0, i32 0
  %6686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %6685, i64 0)
  %6687 = call i1 @nyx_string_equals(%nyx_string* %6684, %nyx_string* %6686)
  %6688 = xor i1 %6687, true
  br i1 %6688, label %then1255, label %else1256
then1255:
  %6689 = getelementptr [8 x i8], [8 x i8]* @.str1014, i32 0, i32 0
  %6690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %6689, i64 7)
  %6691 = load %nyx_string*, %nyx_string** %6683
  %6692 = call %nyx_string* @nyx_string_concat(%nyx_string* %6690, %nyx_string* %6691)
  %6693 = call i8* @nyx_string_to_cstr(%nyx_string* %6692)
  call void @nyx_print_string(i8* %6693)
  ret i64 1
else1256:
  br label %merge1257
merge1257:
  %6694 = load %ProjectConfig, %ProjectConfig* %6640
  %6695 = load %nyx_string*, %nyx_string** %5940
  %6696 = call %nyx_string* @bin_name_for_main(%ProjectConfig %6694, %nyx_string* %6695)
  %6697 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 9
  store %nyx_string* %6696, %nyx_string** %6697
  %6698 = load %nyx_string*, %nyx_string** %5940
  %6699 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 2
  store %nyx_string* %6698, %nyx_string** %6699
  br label %merge1249
else1248:
  br label %merge1249
merge1249:
  %6700 = load %nyx_string*, %nyx_string** %5933
  %6701 = getelementptr [5 x i8], [5 x i8]* @.str1015, i32 0, i32 0
  %6702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %6701, i64 4)
  %6703 = call i1 @nyx_string_equals(%nyx_string* %6700, %nyx_string* %6702)
  br i1 %6703, label %then1258, label %else1259
then1258:
  %6704 = load %ProjectConfig, %ProjectConfig* %6640
  %6705 = call i64 @print_info(%ProjectConfig %6704)
  ret i64 0
else1259:
  br label %merge1260
merge1260:
  %6706 = load %nyx_string*, %nyx_string** %5933
  %6707 = getelementptr [6 x i8], [6 x i8]* @.str1016, i32 0, i32 0
  %6708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %6707, i64 5)
  %6709 = call i1 @nyx_string_equals(%nyx_string* %6706, %nyx_string* %6708)
  br i1 %6709, label %then1261, label %else1262
then1261:
  %6710 = load %ProjectConfig, %ProjectConfig* %6640
  %6711 = load i1, i1* %5934
  %6712 = load %nyx_string*, %nyx_string** %5937
  %6713 = call i1 @run_build(%ProjectConfig %6710, i1 %6711, %nyx_string* %6712)
  %6714 = alloca i1
  store i1 %6713, i1* %6714
  %6715 = load i1, i1* %6714
  br i1 %6715, label %then1264, label %else1265
then1264:
  %6716 = load %ProjectConfig, %ProjectConfig* %6640
  %6717 = call i64 @write_lockfile(%ProjectConfig %6716)
  %6718 = getelementptr [15 x i8], [15 x i8]* @.str1017, i32 0, i32 0
  %6719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %6718, i64 14)
  %6720 = call i8* @nyx_string_to_cstr(%nyx_string* %6719)
  call void @nyx_print_string(i8* %6720)
  ret i64 0
else1265:
  br label %merge1266
merge1266:
  ret i64 1
else1262:
  br label %merge1263
merge1263:
  %6721 = load %nyx_string*, %nyx_string** %5933
  %6722 = getelementptr [4 x i8], [4 x i8]* @.str1018, i32 0, i32 0
  %6723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %6722, i64 3)
  %6724 = call i1 @nyx_string_equals(%nyx_string* %6721, %nyx_string* %6723)
  br i1 %6724, label %then1267, label %else1268
then1267:
  %6725 = alloca i64
  store i64 2, i64* %6725
  %6726 = getelementptr [3 x i8], [3 x i8]* @.str1019, i32 0, i32 0
  %6727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %6726, i64 2)
  %6728 = alloca %nyx_string*
  store %nyx_string* %6727, %nyx_string** %6728
  %6729 = getelementptr [7 x i8], [7 x i8]* @.str1020, i32 0, i32 0
  %6730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %6729, i64 6)
  %6731 = alloca %nyx_string*
  store %nyx_string* %6730, %nyx_string** %6731
  %6732 = getelementptr [3 x i8], [3 x i8]* @.str1021, i32 0, i32 0
  %6733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %6732, i64 2)
  %6734 = alloca %nyx_string*
  store %nyx_string* %6733, %nyx_string** %6734
  %6735 = getelementptr [79 x i8], [79 x i8]* @.str1022, i32 0, i32 0
  %6736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %6735, i64 78)
  %6737 = alloca %nyx_string*
  store %nyx_string* %6736, %nyx_string** %6737
  %6738 = getelementptr [60 x i8], [60 x i8]* @.str1023, i32 0, i32 0
  %6739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %6738, i64 59)
  %6740 = alloca %nyx_string*
  store %nyx_string* %6739, %nyx_string** %6740
  %6741 = getelementptr [1 x i8], [1 x i8]* @.str1024, i32 0, i32 0
  %6742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %6741, i64 0)
  %6743 = alloca %nyx_string*
  store %nyx_string* %6742, %nyx_string** %6743
  %6744 = getelementptr [56 x i8], [56 x i8]* @.str1025, i32 0, i32 0
  %6745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %6744, i64 55)
  %6746 = alloca %nyx_string*
  store %nyx_string* %6745, %nyx_string** %6746
  %6747 = getelementptr [38 x i8], [38 x i8]* @.str1026, i32 0, i32 0
  %6748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %6747, i64 37)
  %6749 = alloca %nyx_string*
  store %nyx_string* %6748, %nyx_string** %6749
  %6750 = call i8* @llvm.stacksave()
  br label %while_cond1270
while_cond1270:
  %6751 = load i64, i64* %6725
  %6752 = load { i64, i8* }*, { i64, i8* }** %5930
  %6753 = call i64 @nyx_array_length({ i64, i8* }* %6752)
  %6754 = icmp slt i64 %6751, %6753
  br i1 %6754, label %while_body1271, label %while_end1272
while_body1271:
  call void @llvm.stackrestore(i8* %6750)
  %6755 = load { i64, i8* }*, { i64, i8* }** %5930
  %6756 = load i64, i64* %6725
  %6757 = call i64 @nyx_array_get_checked({ i64, i8* }* %6755, i64 %6756, i64 2)
  %6758 = inttoptr i64 %6757 to %nyx_string*
  %6759 = alloca %nyx_string*
  store %nyx_string* %6758, %nyx_string** %6759
  %6760 = load %nyx_string*, %nyx_string** %6759
  %6761 = load %nyx_string*, %nyx_string** %6728
  %6762 = call i1 @nyx_string_equals(%nyx_string* %6760, %nyx_string* %6761)
  br i1 %6762, label %then1273, label %else1274
then1273:
  %6763 = load { i64, i8* }*, { i64, i8* }** %5930
  %6764 = call i64 @nyx_array_length({ i64, i8* }* %6763)
  store i64 %6764, i64* %6725
  br label %merge1275
else1274:
  %6765 = alloca i1
  store i1 true, i1* %6765
  %6766 = load %nyx_string*, %nyx_string** %6759
  %6767 = load %nyx_string*, %nyx_string** %6731
  %6768 = call i1 @nyx_string_equals(%nyx_string* %6766, %nyx_string* %6767)
  br i1 %6768, label %sc_or_end1277, label %sc_or_rhs1276
sc_or_rhs1276:
  %6769 = load %nyx_string*, %nyx_string** %6759
  %6770 = load %nyx_string*, %nyx_string** %6734
  %6771 = call i1 @nyx_string_equals(%nyx_string* %6769, %nyx_string* %6770)
  store i1 %6771, i1* %6765
  br label %sc_or_end1277
sc_or_end1277:
  %6772 = load i1, i1* %6765
  br i1 %6772, label %then1278, label %else1279
then1278:
  %6773 = load %nyx_string*, %nyx_string** %6737
  %6774 = call i8* @nyx_string_to_cstr(%nyx_string* %6773)
  call void @nyx_print_string(i8* %6774)
  %6775 = load %nyx_string*, %nyx_string** %6740
  %6776 = call i8* @nyx_string_to_cstr(%nyx_string* %6775)
  call void @nyx_print_string(i8* %6776)
  %6777 = load %nyx_string*, %nyx_string** %6743
  %6778 = call i8* @nyx_string_to_cstr(%nyx_string* %6777)
  call void @nyx_print_string(i8* %6778)
  %6779 = load %nyx_string*, %nyx_string** %6746
  %6780 = call i8* @nyx_string_to_cstr(%nyx_string* %6779)
  call void @nyx_print_string(i8* %6780)
  %6781 = load %nyx_string*, %nyx_string** %6749
  %6782 = call i8* @nyx_string_to_cstr(%nyx_string* %6781)
  call void @nyx_print_string(i8* %6782)
  ret i64 0
else1279:
  br label %merge1280
merge1280:
  %6783 = load i64, i64* %6725
  %6784 = add i64 %6783, 1
  store i64 %6784, i64* %6725
  br label %merge1275
merge1275:
  br label %while_cond1270
while_end1272:
  %6785 = load %ProjectConfig, %ProjectConfig* %6640
  %6786 = load %nyx_string*, %nyx_string** %5937
  %6787 = call i1 @run_build(%ProjectConfig %6785, i1 0, %nyx_string* %6786)
  %6788 = alloca i1
  store i1 %6787, i1* %6788
  %6789 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 0
  %6790 = load %nyx_string*, %nyx_string** %6789
  %6791 = alloca %nyx_string*
  store %nyx_string* %6790, %nyx_string** %6791
  %6792 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 9
  %6793 = load %nyx_string*, %nyx_string** %6792
  %6794 = getelementptr [1 x i8], [1 x i8]* @.str1027, i32 0, i32 0
  %6795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %6794, i64 0)
  %6796 = call i1 @nyx_string_equals(%nyx_string* %6793, %nyx_string* %6795)
  %6797 = xor i1 %6796, true
  br i1 %6797, label %then1281, label %else1282
then1281:
  %6798 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 9
  %6799 = load %nyx_string*, %nyx_string** %6798
  store %nyx_string* %6799, %nyx_string** %6791
  br label %merge1283
else1282:
  br label %merge1283
merge1283:
  %6800 = load i1, i1* %6788
  br i1 %6800, label %then1284, label %else1285
then1284:
  %6801 = load %ProjectConfig, %ProjectConfig* %6640
  %6802 = call i64 @write_lockfile(%ProjectConfig %6801)
  %6803 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 5
  %6804 = load %nyx_string*, %nyx_string** %6803
  %6805 = alloca %nyx_string*
  store %nyx_string* %6804, %nyx_string** %6805
  %6806 = load %nyx_string*, %nyx_string** %5937
  %6807 = getelementptr [1 x i8], [1 x i8]* @.str1028, i32 0, i32 0
  %6808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %6807, i64 0)
  %6809 = call i1 @nyx_string_equals(%nyx_string* %6806, %nyx_string* %6808)
  %6810 = xor i1 %6809, true
  br i1 %6810, label %then1287, label %else1288
then1287:
  %6811 = load %nyx_string*, %nyx_string** %5937
  store %nyx_string* %6811, %nyx_string** %6805
  br label %merge1289
else1288:
  br label %merge1289
merge1289:
  %6812 = load %nyx_string*, %nyx_string** %6805
  %6813 = getelementptr [12 x i8], [12 x i8]* @.str1029, i32 0, i32 0
  %6814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %6813, i64 11)
  %6815 = call i1 @nyx_string_equals(%nyx_string* %6812, %nyx_string* %6814)
  br i1 %6815, label %then1290, label %else1291
then1290:
  %6816 = getelementptr [20 x i8], [20 x i8]* @.str1030, i32 0, i32 0
  %6817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %6816, i64 19)
  %6818 = load %nyx_string*, %nyx_string** %6791
  %6819 = call %nyx_string* @nyx_string_concat(%nyx_string* %6817, %nyx_string* %6818)
  %6820 = getelementptr [6 x i8], [6 x i8]* @.str1031, i32 0, i32 0
  %6821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %6820, i64 5)
  %6822 = call %nyx_string* @nyx_string_concat(%nyx_string* %6819, %nyx_string* %6821)
  %6823 = alloca %nyx_string*
  store %nyx_string* %6822, %nyx_string** %6823
  %6824 = load %nyx_string*, %nyx_string** %6823
  %6825 = call i8* @nyx_string_to_cstr(%nyx_string* %6824)
  %6826 = call i1 @nyx_file_exists(i8* %6825)
  %6827 = xor i1 %6826, true
  br i1 %6827, label %then1293, label %else1294
then1293:
  %6828 = getelementptr [24 x i8], [24 x i8]* @.str1032, i32 0, i32 0
  %6829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %6828, i64 23)
  %6830 = load %nyx_string*, %nyx_string** %6823
  %6831 = call %nyx_string* @nyx_string_concat(%nyx_string* %6829, %nyx_string* %6830)
  %6832 = call i8* @nyx_string_to_cstr(%nyx_string* %6831)
  call void @nyx_print_string(i8* %6832)
  ret i64 1
else1294:
  br label %merge1295
merge1295:
  %6833 = getelementptr [36 x i8], [36 x i8]* @.str1033, i32 0, i32 0
  %6834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %6833, i64 35)
  %6835 = call i8* @nyx_string_to_cstr(%nyx_string* %6834)
  %6836 = call i64 @nyx_exec_code(i8* %6835)
  %6837 = icmp ne i64 %6836, 0
  br i1 %6837, label %then1296, label %else1297
then1296:
  %6838 = getelementptr [24 x i8], [24 x i8]* @.str1034, i32 0, i32 0
  %6839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %6838, i64 23)
  %6840 = load %nyx_string*, %nyx_string** %6823
  %6841 = call %nyx_string* @nyx_string_concat(%nyx_string* %6839, %nyx_string* %6840)
  %6842 = getelementptr [45 x i8], [45 x i8]* @.str1035, i32 0, i32 0
  %6843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %6842, i64 44)
  %6844 = call %nyx_string* @nyx_string_concat(%nyx_string* %6841, %nyx_string* %6843)
  %6845 = call i8* @nyx_string_to_cstr(%nyx_string* %6844)
  call void @nyx_print_string(i8* %6845)
  %6846 = getelementptr [54 x i8], [54 x i8]* @.str1036, i32 0, i32 0
  %6847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %6846, i64 53)
  %6848 = load %nyx_string*, %nyx_string** %6823
  %6849 = call %nyx_string* @nyx_string_concat(%nyx_string* %6847, %nyx_string* %6848)
  %6850 = call i8* @nyx_string_to_cstr(%nyx_string* %6849)
  call void @nyx_print_string(i8* %6850)
  ret i64 1
else1297:
  br label %merge1298
merge1298:
  %6851 = getelementptr [10 x i8], [10 x i8]* @.str1037, i32 0, i32 0
  %6852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %6851, i64 9)
  %6853 = load %nyx_string*, %nyx_string** %6823
  %6854 = call %nyx_string* @nyx_string_concat(%nyx_string* %6852, %nyx_string* %6853)
  %6855 = alloca %nyx_string*
  store %nyx_string* %6854, %nyx_string** %6855
  %6856 = alloca i64
  store i64 2, i64* %6856
  %6857 = alloca i1
  store i1 0, i1* %6857
  %6858 = getelementptr [2 x i8], [2 x i8]* @.str1038, i32 0, i32 0
  %6859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %6858, i64 1)
  %6860 = alloca %nyx_string*
  store %nyx_string* %6859, %nyx_string** %6860
  %6861 = getelementptr [3 x i8], [3 x i8]* @.str1039, i32 0, i32 0
  %6862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %6861, i64 2)
  %6863 = alloca %nyx_string*
  store %nyx_string* %6862, %nyx_string** %6863
  %6864 = getelementptr [9 x i8], [9 x i8]* @.str1040, i32 0, i32 0
  %6865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %6864, i64 8)
  %6866 = alloca %nyx_string*
  store %nyx_string* %6865, %nyx_string** %6866
  %6867 = getelementptr [7 x i8], [7 x i8]* @.str1041, i32 0, i32 0
  %6868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %6867, i64 6)
  %6869 = alloca %nyx_string*
  store %nyx_string* %6868, %nyx_string** %6869
  %6870 = call i8* @llvm.stacksave()
  br label %while_cond1299
while_cond1299:
  %6871 = load i64, i64* %6856
  %6872 = load { i64, i8* }*, { i64, i8* }** %5930
  %6873 = call i64 @nyx_array_length({ i64, i8* }* %6872)
  %6874 = icmp slt i64 %6871, %6873
  br i1 %6874, label %while_body1300, label %while_end1301
while_body1300:
  call void @llvm.stackrestore(i8* %6870)
  %6875 = load { i64, i8* }*, { i64, i8* }** %5930
  %6876 = load i64, i64* %6856
  %6877 = call i64 @nyx_array_get_checked({ i64, i8* }* %6875, i64 %6876, i64 2)
  %6878 = inttoptr i64 %6877 to %nyx_string*
  %6879 = alloca %nyx_string*
  store %nyx_string* %6878, %nyx_string** %6879
  %6880 = load i1, i1* %6857
  br i1 %6880, label %then1302, label %else1303
then1302:
  %6881 = load %nyx_string*, %nyx_string** %6855
  %6882 = load %nyx_string*, %nyx_string** %6860
  %6883 = call %nyx_string* @nyx_string_concat(%nyx_string* %6881, %nyx_string* %6882)
  %6884 = load %nyx_string*, %nyx_string** %6879
  %6885 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5928, %nyx_string* %6884)
  %6886 = call %nyx_string* @nyx_string_concat(%nyx_string* %6883, %nyx_string* %6885)
  store %nyx_string* %6886, %nyx_string** %6855
  br label %merge1304
else1303:
  %6887 = load %nyx_string*, %nyx_string** %6879
  %6888 = load %nyx_string*, %nyx_string** %6863
  %6889 = call i1 @nyx_string_equals(%nyx_string* %6887, %nyx_string* %6888)
  br i1 %6889, label %then1305, label %else1306
then1305:
  store i1 1, i1* %6857
  br label %merge1307
else1306:
  %6890 = alloca i1
  store i1 true, i1* %6890
  %6891 = load %nyx_string*, %nyx_string** %6879
  %6892 = load %nyx_string*, %nyx_string** %6866
  %6893 = call i1 @nyx_string_equals(%nyx_string* %6891, %nyx_string* %6892)
  br i1 %6893, label %sc_or_end1309, label %sc_or_rhs1308
sc_or_rhs1308:
  %6894 = load %nyx_string*, %nyx_string** %6879
  %6895 = load %nyx_string*, %nyx_string** %6869
  %6896 = call i1 @nyx_string_equals(%nyx_string* %6894, %nyx_string* %6895)
  store i1 %6896, i1* %6890
  br label %sc_or_end1309
sc_or_end1309:
  %6897 = load i1, i1* %6890
  br i1 %6897, label %then1310, label %else1311
then1310:
  %6898 = load i64, i64* %6856
  %6899 = add i64 %6898, 1
  store i64 %6899, i64* %6856
  br label %merge1312
else1311:
  br label %merge1312
merge1312:
  br label %merge1307
merge1307:
  br label %merge1304
merge1304:
  %6900 = load i64, i64* %6856
  %6901 = add i64 %6900, 1
  store i64 %6901, i64* %6856
  br label %while_cond1299
while_end1301:
  %6902 = load %nyx_string*, %nyx_string** %6855
  %6903 = call i8* @nyx_string_to_cstr(%nyx_string* %6902)
  %6904 = call i64 @nyx_exec_code(i8* %6903)
  ret i64 %6904
else1291:
  br label %merge1292
merge1292:
  %6905 = load %nyx_string*, %nyx_string** %6805
  %6906 = getelementptr [1 x i8], [1 x i8]* @.str1042, i32 0, i32 0
  %6907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %6906, i64 0)
  %6908 = call i1 @nyx_string_equals(%nyx_string* %6905, %nyx_string* %6907)
  %6909 = xor i1 %6908, true
  br i1 %6909, label %then1313, label %else1314
then1313:
  %6910 = getelementptr [51 x i8], [51 x i8]* @.str1043, i32 0, i32 0
  %6911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %6910, i64 50)
  %6912 = load %nyx_string*, %nyx_string** %6805
  %6913 = call %nyx_string* @nyx_string_concat(%nyx_string* %6911, %nyx_string* %6912)
  %6914 = call i8* @nyx_string_to_cstr(%nyx_string* %6913)
  call void @nyx_print_string(i8* %6914)
  %6915 = getelementptr [27 x i8], [27 x i8]* @.str1044, i32 0, i32 0
  %6916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %6915, i64 26)
  %6917 = load %nyx_string*, %nyx_string** %6805
  %6918 = call %nyx_string* @nyx_string_concat(%nyx_string* %6916, %nyx_string* %6917)
  %6919 = getelementptr [47 x i8], [47 x i8]* @.str1045, i32 0, i32 0
  %6920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %6919, i64 46)
  %6921 = call %nyx_string* @nyx_string_concat(%nyx_string* %6918, %nyx_string* %6920)
  %6922 = call i8* @nyx_string_to_cstr(%nyx_string* %6921)
  call void @nyx_print_string(i8* %6922)
  ret i64 1
else1314:
  br label %merge1315
merge1315:
  %6923 = getelementptr [3 x i8], [3 x i8]* @.str1046, i32 0, i32 0
  %6924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %6923, i64 2)
  %6925 = load %nyx_string*, %nyx_string** %6791
  %6926 = call %nyx_string* @nyx_string_concat(%nyx_string* %6924, %nyx_string* %6925)
  %6927 = alloca %nyx_string*
  store %nyx_string* %6926, %nyx_string** %6927
  %6928 = getelementptr %ProjectConfig, %ProjectConfig* %6640, i32 0, i32 9
  %6929 = load %nyx_string*, %nyx_string** %6928
  %6930 = getelementptr [1 x i8], [1 x i8]* @.str1047, i32 0, i32 0
  %6931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %6930, i64 0)
  %6932 = call i1 @nyx_string_equals(%nyx_string* %6929, %nyx_string* %6931)
  %6933 = xor i1 %6932, true
  br i1 %6933, label %then1316, label %else1317
then1316:
  %6934 = getelementptr [10 x i8], [10 x i8]* @.str1048, i32 0, i32 0
  %6935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %6934, i64 9)
  %6936 = load %nyx_string*, %nyx_string** %6791
  %6937 = call %nyx_string* @nyx_string_concat(%nyx_string* %6935, %nyx_string* %6936)
  store %nyx_string* %6937, %nyx_string** %6927
  br label %merge1318
else1317:
  br label %merge1318
merge1318:
  %6938 = alloca i64
  store i64 2, i64* %6938
  %6939 = alloca i1
  store i1 0, i1* %6939
  %6940 = getelementptr [2 x i8], [2 x i8]* @.str1049, i32 0, i32 0
  %6941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %6940, i64 1)
  %6942 = alloca %nyx_string*
  store %nyx_string* %6941, %nyx_string** %6942
  %6943 = getelementptr [3 x i8], [3 x i8]* @.str1050, i32 0, i32 0
  %6944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %6943, i64 2)
  %6945 = alloca %nyx_string*
  store %nyx_string* %6944, %nyx_string** %6945
  %6946 = getelementptr [10 x i8], [10 x i8]* @.str1051, i32 0, i32 0
  %6947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %6946, i64 9)
  %6948 = alloca %nyx_string*
  store %nyx_string* %6947, %nyx_string** %6948
  %6949 = getelementptr [9 x i8], [9 x i8]* @.str1052, i32 0, i32 0
  %6950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %6949, i64 8)
  %6951 = alloca %nyx_string*
  store %nyx_string* %6950, %nyx_string** %6951
  %6952 = getelementptr [7 x i8], [7 x i8]* @.str1053, i32 0, i32 0
  %6953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %6952, i64 6)
  %6954 = alloca %nyx_string*
  store %nyx_string* %6953, %nyx_string** %6954
  %6955 = call i8* @llvm.stacksave()
  br label %while_cond1319
while_cond1319:
  %6956 = load i64, i64* %6938
  %6957 = load { i64, i8* }*, { i64, i8* }** %5930
  %6958 = call i64 @nyx_array_length({ i64, i8* }* %6957)
  %6959 = icmp slt i64 %6956, %6958
  br i1 %6959, label %while_body1320, label %while_end1321
while_body1320:
  call void @llvm.stackrestore(i8* %6955)
  %6960 = load { i64, i8* }*, { i64, i8* }** %5930
  %6961 = load i64, i64* %6938
  %6962 = call i64 @nyx_array_get_checked({ i64, i8* }* %6960, i64 %6961, i64 2)
  %6963 = inttoptr i64 %6962 to %nyx_string*
  %6964 = alloca %nyx_string*
  store %nyx_string* %6963, %nyx_string** %6964
  %6965 = load i1, i1* %6939
  br i1 %6965, label %then1322, label %else1323
then1322:
  %6966 = load %nyx_string*, %nyx_string** %6927
  %6967 = load %nyx_string*, %nyx_string** %6942
  %6968 = call %nyx_string* @nyx_string_concat(%nyx_string* %6966, %nyx_string* %6967)
  %6969 = load %nyx_string*, %nyx_string** %6964
  %6970 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5928, %nyx_string* %6969)
  %6971 = call %nyx_string* @nyx_string_concat(%nyx_string* %6968, %nyx_string* %6970)
  store %nyx_string* %6971, %nyx_string** %6927
  br label %merge1324
else1323:
  %6972 = load %nyx_string*, %nyx_string** %6964
  %6973 = load %nyx_string*, %nyx_string** %6945
  %6974 = call i1 @nyx_string_equals(%nyx_string* %6972, %nyx_string* %6973)
  br i1 %6974, label %then1325, label %else1326
then1325:
  store i1 1, i1* %6939
  br label %merge1327
else1326:
  %6975 = load %nyx_string*, %nyx_string** %6964
  %6976 = load %nyx_string*, %nyx_string** %6948
  %6977 = call i1 @nyx_string_equals(%nyx_string* %6975, %nyx_string* %6976)
  br i1 %6977, label %then1328, label %else1329
then1328:
  %6978 = load i64, i64* %6938
  store i64 %6978, i64* %6938
  br label %merge1330
else1329:
  %6979 = alloca i1
  store i1 true, i1* %6979
  %6980 = load %nyx_string*, %nyx_string** %6964
  %6981 = load %nyx_string*, %nyx_string** %6951
  %6982 = call i1 @nyx_string_equals(%nyx_string* %6980, %nyx_string* %6981)
  br i1 %6982, label %sc_or_end1332, label %sc_or_rhs1331
sc_or_rhs1331:
  %6983 = load %nyx_string*, %nyx_string** %6964
  %6984 = load %nyx_string*, %nyx_string** %6954
  %6985 = call i1 @nyx_string_equals(%nyx_string* %6983, %nyx_string* %6984)
  store i1 %6985, i1* %6979
  br label %sc_or_end1332
sc_or_end1332:
  %6986 = load i1, i1* %6979
  br i1 %6986, label %then1333, label %else1334
then1333:
  %6987 = load i64, i64* %6938
  %6988 = add i64 %6987, 1
  store i64 %6988, i64* %6938
  br label %merge1335
else1334:
  %6989 = load %nyx_string*, %nyx_string** %6927
  %6990 = load %nyx_string*, %nyx_string** %6942
  %6991 = call %nyx_string* @nyx_string_concat(%nyx_string* %6989, %nyx_string* %6990)
  %6992 = load %nyx_string*, %nyx_string** %6964
  %6993 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5928, %nyx_string* %6992)
  %6994 = call %nyx_string* @nyx_string_concat(%nyx_string* %6991, %nyx_string* %6993)
  store %nyx_string* %6994, %nyx_string** %6927
  br label %merge1335
merge1335:
  br label %merge1330
merge1330:
  br label %merge1327
merge1327:
  br label %merge1324
merge1324:
  %6995 = load i64, i64* %6938
  %6996 = add i64 %6995, 1
  store i64 %6996, i64* %6938
  br label %while_cond1319
while_end1321:
  %6997 = load %nyx_string*, %nyx_string** %6927
  %6998 = call i8* @nyx_string_to_cstr(%nyx_string* %6997)
  %6999 = call i64 @nyx_exec_code(i8* %6998)
  %7000 = alloca i64
  store i64 %6999, i64* %7000
  %7001 = load i64, i64* %7000
  ret i64 %7001
else1285:
  br label %merge1286
merge1286:
  ret i64 1
else1268:
  br label %merge1269
merge1269:
  %7002 = getelementptr [24 x i8], [24 x i8]* @.str1054, i32 0, i32 0
  %7003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %7002, i64 23)
  %7004 = load %nyx_string*, %nyx_string** %5933
  %7005 = call %nyx_string* @nyx_string_concat(%nyx_string* %7003, %nyx_string* %7004)
  %7006 = call i8* @nyx_string_to_cstr(%nyx_string* %7005)
  call void @nyx_print_string(i8* %7006)
  %7007 = getelementptr [110 x i8], [110 x i8]* @.str1055, i32 0, i32 0
  %7008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %7007, i64 109)
  %7009 = call i8* @nyx_string_to_cstr(%nyx_string* %7008)
  call void @nyx_print_string(i8* %7009)
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
  %24 = getelementptr [2 x i8], [2 x i8]* @.str1056, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %24, i64 1)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = getelementptr [2 x i8], [2 x i8]* @.str1057, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %30, i64 1)
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
  %7010 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %7011 = call %nyx_string* @nyx_string_from_ptr(i8* %7010, i64 64)
  store %nyx_string* %7011, %nyx_string** @std_base64____b64_chars
  %7012 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %7013 = call %nyx_string* @nyx_string_from_ptr(i8* %7012, i64 64)
  store %nyx_string* %7013, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

