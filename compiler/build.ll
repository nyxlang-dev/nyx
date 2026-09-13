source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%ProjectConfig = type { %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }* }

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
@.str76 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [1 x i8] c"\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [1 x i8] c"\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [2 x i8] c"#\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [2 x i8] c"[\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [2 x i8] c"]\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [8 x i8] c"package\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [5 x i8] c"name\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [8 x i8] c"version\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [5 x i8] c"main\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [12 x i8] c"description\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [6 x i8] c"no_gc\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [5 x i8] c"true\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [7 x i8] c"target\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [13 x i8] c"dependencies\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [57 x i8] c"# nyx.lock — auto-generated by nyx build, do not edit\0a\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [11 x i8] c"[package]\0a\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [9 x i8] c"name = \22\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [12 x i8] c"version = \22\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [9 x i8] c"main = \22\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [9 x i8] c"nyx.lock\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [17 x i8] c"Adding package: \00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [1 x i8] c"\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [3 x i8] c" =\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [12 x i8] c"  Package '\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [27 x i8] c"' is already a dependency.\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [19 x i8] c"  Using existing: \00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [13 x i8] c"  Fetching: \00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [2 x i8] c" \00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [26 x i8] c"  error: could not fetch \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [7 x i8] c" from \00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [15 x i8] c"[dependencies]\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [17 x i8] c"\0a[dependencies]\0a\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [8 x i8] c" = \22*\22\0a\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [19 x i8] c"  Updated nyx.toml\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [10 x i8] c"Package '\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [9 x i8] c"' added.\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [1 x i8] c"\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [1 x i8] c"\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [2 x i8] c".\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [1 x i8] c"\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [12 x i8] c" nyx-lang: \00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [3 x i8] c"en\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [11 x i8] c"nyx-lang: \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [3 x i8] c"en\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [3 x i8] c"en\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [3 x i8] c"es\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [3 x i8] c"es\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [3 x i8] c"en\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [1 x i8] c"\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [21 x i8] c"/templates/gitignore\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [12 x i8] c"/.gitignore\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [11 x i8] c"{{binary}}\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [1 x i8] c"\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [2 x i8] c",\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [28 x i8] c"error: --agent inválido: '\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [46 x i8] c"' (valores válidos: claude, cursor, copilot)\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [72 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot]\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [1 x i8] c"\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [1 x i8] c"\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [20 x i8] c"/templates/adapters\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [2 x i8] c",\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [1 x i8] c"\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [2 x i8] c"/\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [2 x i8] c".\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [4 x i8] c".md\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [7 x i8] c"claude\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [7 x i8] c"cursor\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [8 x i8] c"copilot\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [10 x i8] c"/.github'\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [44 x i8] c"warning: falta la plantilla del adaptador '\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [20 x i8] c") — no se sembró\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [2 x i8] c"/\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [1 x i8] c"\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [74 x i8] c"error: no encuentro la toolchain de Nyx (NYX_HOME vacío o sin templates/\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [84 x i8] c"/): el contexto para agentes (AGENTS.md, CAPABILITIES.md, docs/nyx/) NO se sembró.\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [83 x i8] c"  Exportá NYX_HOME (o reinstalá con install.sh) y corré: nyx update --sync-docs\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [17 x i8] c"/CAPABILITIES.md\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides'\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [20 x i8] c"/en/docs/nyx/LLM.md\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [17 x i8] c"/docs/nyx/LLM.md\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [14 x i8] c"error: falta \00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [71 x i8] c" en la toolchain: docs/nyx/LLM.md (la referencia densa) NO se sembró.\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [111 x i8] c"  Reinstalá con install.sh (o corré make install-local desde el monorepo) y después: nyx update --sync-docs\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [17 x i8] c"/docs/nyx/guides\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [2 x i8] c"/\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [18 x i8] c"/docs/nyx/guides/\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [28 x i8] c"GENERATED by `nyx sdd init`\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [3 x i8] c"es\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [28 x i8] c"  skipped (already there): \00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [25 x i8] c"  salteado (ya existe): \00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [2 x i8] c"/\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [27 x i8] c"error: falta la plantilla \00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [19 x i8] c" en la toolchain: \00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [16 x i8] c" NO se sembró.\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [3 x i8] c"  \00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [1 x i8] c"\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [1 x i8] c"\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [20 x i8] c"# Evidence — nyx \00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [21 x i8] c"# Evidencia — nyx \00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [7 x i8] c"\0a<!-- \00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [110 x i8] c" from the gotcha table of the installed toolchain — do not edit by hand; `nyx update` regenerates it. -->\0a\0a\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [319 x i8] c"Traps and rules that are LIVE in the toolchain this project was seeded with. Each\0aline carries the stable id, the anchor term to look up in `AGENTS.md` and\0a`docs/nyx/LLM.md`, and the test in the language repo that proves it. This file is\0aevidence, not advice: if a line here contradicts a manual, the manual is stale.\0a\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [334 x i8] c"Trampas y reglas VIVAS en la toolchain con la que se sembró este proyecto. Cada\0alínea trae el id estable, el término ancla para buscar en `AGENTS.md` y en\0a`docs/nyx/LLM.md`, y el test del repo del lenguaje que la prueba. Este archivo es\0aevidencia, no consejo: si una línea de acá contradice a un manual, el manual quedó viejo.\0a\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [1 x i8] c"\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [3 x i8] c"id\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [6 x i8] c"since\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [5 x i8] c"test\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [3 x i8] c"es\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [5 x i8] c"** (\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [9 x i8] c", since \00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [7 x i8] c") — \00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [14 x i8] c" — anchor `\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c"`\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [12 x i8] c" — test `\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [14 x i8] c"\0a## Retired\0a\0a\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [16 x i8] c"\0a## Retirados\0a\0a\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [139 x i8] c"These were real traps and are not any more: if a manual, a blog post or an older\0aagent still repeats them, it is wrong for this version.\0a\0a\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [150 x i8] c"Estas fueron trampas reales y ya no lo son: si un manual, un artículo o un agente\0aviejo las sigue repitiendo, está equivocado para esta versión.\0a\0a\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [1 x i8] c"\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [3 x i8] c"id\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [3 x i8] c"es\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [5 x i8] c"- **\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [14 x i8] c"** (fixed in \00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [7 x i8] c") — \00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [4 x i8] c".md\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [1 x i8] c"\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [4 x i8] c"// \00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [80 x i8] c" from the installed toolchain's gotcha table — regenerate with `nyx update`.\0a\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [96 x i8] c"// Edit it and it becomes yours: with this header gone, `nyx sdd init` never touches it again.\0a\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [72 x i8] c"// Each block greps src/ for a trap the compiler cannot catch for you.\0a\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [20 x i8] c"import \22std/regex\22\0a\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [83 x i8] c"// `nyx test` compiles and runs every test INSIDE the toolchain (cwd = NYX_HOME),\0a\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [85 x i8] c"// not inside the project: a bare readdir(\22src\22) would read the wrong directory and\0a\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [83 x i8] c"// this file would pass without looking at anything. The project directory is the\0a\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [83 x i8] c"// one the runner came from (OLDPWD). If it cannot be found, the first test below\0a\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [56 x i8] c"// FAILS out loud instead of passing on an empty scan.\0a\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [31 x i8] c"fn project_root() -> String {\0a\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [47 x i8] c"    if file_exists(\22nyx.toml\22) { return \22.\22 }\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [40 x i8] c"    let old: String = getenv(\22OLDPWD\22)\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [20 x i8] c"    if old != \22\22 {\0a\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [58 x i8] c"        if file_exists(old + \22/nyx.toml\22) { return old }\0a\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [15 x i8] c"    return \22\22\0a\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [79 x i8] c"// Every .nx under `dir`, recursively. readdir() never returns \22.\22 or \22..\22; a\0a\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [57 x i8] c"// directory is told apart by file_exists(path + \22/.\22).\0a\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [37 x i8] c"fn nx_files(dir: String) -> Array {\0a\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [25 x i8] c"    var out: Array = []\0a\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [49 x i8] c"    if file_exists(dir) == false { return out }\0a\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [39 x i8] c"    let entries: Array = readdir(dir)\0a\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [34 x i8] c"    while i < entries.length() {\0a\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [36 x i8] c"        let e: String = entries[i]\0a\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [39 x i8] c"        let p: String = dir + \22/\22 + e\0a\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [32 x i8] c"        if e.endsWith(\22.nx\22) {\0a\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [25 x i8] c"            out.push(p)\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [18 x i8] c"        } else {\0a\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [40 x i8] c"            if file_exists(p + \22/.\22) {\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [46 x i8] c"                let sub: Array = nx_files(p)\0a\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [32 x i8] c"                var j: int = 0\0a\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [42 x i8] c"                while j < sub.length() {\0a\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [44 x i8] c"                    let s: String = sub[j]\0a\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [33 x i8] c"                    out.push(s)\0a\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [31 x i8] c"                    j = j + 1\0a\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [19 x i8] c"                }\0a\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [15 x i8] c"            }\0a\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [16 x i8] c"    return out\0a\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [77 x i8] c"// Lines of src/ matching `pattern`, as `src/file.nx:LINE` (relative to the\0a\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [53 x i8] c"// project, so the message is a path you can open).\0a\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [45 x i8] c"fn grep_sources(pattern: String) -> Array {\0a\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [26 x i8] c"    var hits: Array = []\0a\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [35 x i8] c"    if root == \22\22 { return hits }\0a\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [48 x i8] c"    let files: Array = nx_files(root + \22/src\22)\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [20 x i8] c"    var f: int = 0\0a\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [32 x i8] c"    while f < files.length() {\0a\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [37 x i8] c"        let path: String = files[f]\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [34 x i8] c"        var shown: String = path\0a\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [101 x i8] c"        if path.startsWith(root + \22/\22) { shown = path.substring(root.length() + 1, path.length()) }\0a\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [56 x i8] c"        let lines: Array = read_file(path).split(\22\5cn\22)\0a\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [24 x i8] c"        var i: int = 0\0a\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [36 x i8] c"        while i < lines.length() {\0a\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [41 x i8] c"            let line: String = lines[i]\0a\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [58 x i8] c"            let scanned: String = gotcha_scan_line(line)\0a\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [99 x i8] c"            if regex_is_match(scanned, pattern) { hits.push(shown + \22:\22 + int_to_string(i + 1)) }\0a\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [23 x i8] c"            i = i + 1\0a\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [11 x i8] c"        }\0a\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [19 x i8] c"        f = f + 1\0a\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [17 x i8] c"    return hits\0a\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [52 x i8] c"test \22the project sources are visible from here\22 {\0a\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [126 x i8] c"    assert(root != \22\22, \22cannot find the project root (no nyx.toml): every check below would pass without scanning anything\22)\0a\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [89 x i8] c"    assert(file_exists(root + \22/src\22), \22no src/ in the project root: nothing to check\22)\0a\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [1 x i8] c"\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [3 x i8] c"id\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [14 x i8] c"test \22gotcha \00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [3 x i8] c": \00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [5 x i8] c"\22 {\0a\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [37 x i8] c"    let hits: Array = grep_sources(\22\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [4 x i8] c"\22)\0a\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [33 x i8] c"    assert(hits.length() == 0, \22\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [3 x i8] c" (\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [28 x i8] c") at: \22 + hits.join(\22, \22))\0a\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [47 x i8] c"test \22every file in tests/ has test blocks\22 {\0a\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [39 x i8] c"    let root: String = project_root()\0a\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [50 x i8] c"    let files: Array = nx_files(root + \22/tests\22)\0a\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [20 x i8] c"    var i: int = 0\0a\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [32 x i8] c"    while i < files.length() {\0a\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [34 x i8] c"        let p: String = files[i]\0a\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [114 x i8] c"        assert(read_file(p).indexOf(\22test \5c\22\22) >= 0, p + \22 has no test blocks: nyx test would skip it silently\22)\0a\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [19 x i8] c"        i = i + 1\0a\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [7 x i8] c"    }\0a\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [3 x i8] c"}\0a\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [30 x i8] c"warning: no hay AGENTS.md en \00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [79 x i8] c": el disparador del andamiaje NO se insertó (corré `nyx update --sync-docs`)\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [21 x i8] c"<!-- sdd:trigger -->\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [47 x i8] c"  skipped (already there): AGENTS.md (trigger)\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [47 x i8] c"  salteado (ya existe): AGENTS.md (disparador)\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [22 x i8] c"<!-- sdd:trigger -->\0a\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [3 x i8] c"es\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [150 x i8] c"- Si `docs/constitution.md` todavía contiene `SDD_INCOMPLETE`, no escribas código: sigue `docs/sdd/onboarding.md` y ofrece al usuario completarla.\0a\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [122 x i8] c"- Ante una funcionalidad nueva sin `specs/NNN-feature/spec.md`, ofrece escribir la spec primero (ver `specs/README.md`).\0a\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [152 x i8] c"- If `docs/constitution.md` still contains `SDD_INCOMPLETE`, do not write code yet: follow `docs/sdd/onboarding.md` and offer the user to complete it.\0a\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [113 x i8] c"- For a new feature with no `specs/NNN-feature/spec.md`, offer to write the spec first (see `specs/README.md`).\0a\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [36 x i8] c"  AGENTS.md (+2 lines: the trigger)\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [40 x i8] c"  AGENTS.md (+2 líneas: el disparador)\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [16 x i8] c"/docs/evidence'\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [59 x i8] c"  skipped (yours, no GENERATED header): docs/evidence/nyx-\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [4 x i8] c".md\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [65 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): docs/evidence/nyx-\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [4 x i8] c".md\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [34 x i8] c"  regenerated: docs/evidence/nyx-\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [4 x i8] c".md\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [33 x i8] c"  regenerado: docs/evidence/nyx-\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [4 x i8] c".md\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [41 x i8] c"  already up to date: docs/evidence/nyx-\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [4 x i8] c".md\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [39 x i8] c"  ya está al día: docs/evidence/nyx-\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [4 x i8] c".md\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [42 x i8] c"  regenerated: tests/constitution_test.nx\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [41 x i8] c"  regenerado: tests/constitution_test.nx\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [67 x i8] c"  skipped (yours, no GENERATED header): tests/constitution_test.nx\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [73 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): tests/constitution_test.nx\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [49 x i8] c"  already up to date: tests/constitution_test.nx\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [47 x i8] c"  ya está al día: tests/constitution_test.nx\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [12 x i8] c"/templates/\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [5 x i8] c"/sdd\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [1 x i8] c"\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [17 x i8] c"/constitution.md\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [49 x i8] c"error: the SDD scaffolding templates (templates/\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [59 x i8] c"/sdd/) are missing from the toolchain: NOTHING was seeded.\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [61 x i8] c"error: no encuentro las plantillas del andamiaje (templates/\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [44 x i8] c"/sdd/) en la toolchain: NO se sembró nada.\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [104 x i8] c"  Reinstall with install.sh (or run `make install-local` from the monorepo) and try again: nyx sdd init\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [109 x i8] c"  Reinstala con install.sh (o corre `make install-local` desde el monorepo) e intenta de nuevo: nyx sdd init\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [11 x i8] c"mkdir -p '\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [13 x i8] c"/docs/adr' '\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [13 x i8] c"/docs/sdd' '\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [18 x i8] c"/docs/evidence' '\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [10 x i8] c"/specs' '\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [8 x i8] c"/tests'\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [40 x i8] c"SDD scaffolding (optional, reversible):\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [38 x i8] c"Andamiaje SDD (opcional, reversible):\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [16 x i8] c"constitution.md\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [22 x i8] c"/docs/constitution.md\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [12 x i8] c"glossary.md\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [18 x i8] c"/docs/glossary.md\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [16 x i8] c"adr-template.md\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [27 x i8] c"/docs/adr/0000-template.md\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [16 x i8] c"specs-README.md\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [17 x i8] c"/specs/README.md\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [14 x i8] c"onboarding.md\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [24 x i8] c"/docs/sdd/onboarding.md\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [20 x i8] c"/docs/evidence/nyx-\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [4 x i8] c".md\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [3 x i8] c"  \00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [28 x i8] c"/tests/constitution_test.nx\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [3 x i8] c"  \00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [13 x i8] c" (generated)\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [12 x i8] c" (generado)\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [41 x i8] c"  skipped (yours, no GENERATED header): \00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [47 x i8] c"  salteado (es tuyo, sin cabecera GENERATED): \00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [23 x i8] c"  already up to date: \00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [21 x i8] c"  ya está al día: \00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [1 x i8] c"\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [94 x i8] c"  Next: an agent reading AGENTS.md will offer to complete docs/constitution.md (7 questions).\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [98 x i8] c"  Ahora: un agente que lea AGENTS.md va a ofrecerte completar docs/constitution.md (7 preguntas).\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [89 x i8] c"  Reversible: to go back to a plain init, delete docs/constitution.md, docs/glossary.md,\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [90 x i8] c"  Reversible: para volver a un init normal, borra docs/constitution.md, docs/glossary.md,\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [78 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ and tests/constitution_test.nx\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [76 x i8] c"  docs/evidence/, docs/adr/, docs/sdd/, specs/ y tests/constitution_test.nx\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [1 x i8] c"\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [19 x i8] c"error: directory '\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [17 x i8] c"' already exists\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [10 x i8] c"/nyx.toml\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [13 x i8] c"/src/main.nx\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [12 x i8] c"  Created: \00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [2 x i8] c"/\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [15 x i8] c"  Next:    cd \00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [12 x i8] c" && nyx run\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [31 x i8] c"error: nyx.toml already exists\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [6 x i8] c"myapp\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [13 x i8] c"mkdir -p src\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [2 x i8] c".\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [2 x i8] c".\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [33 x i8] c"  Created: nyx.toml, src/main.nx\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [21 x i8] c"  Build:   nyx build\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [19 x i8] c"  Run:     nyx run\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [14 x i8] c"   resolving \00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [5 x i8] c"http\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [4 x i8] c"git\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [2 x i8] c" \00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [26 x i8] c"  error: failed to fetch \00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [7 x i8] c" from \00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [12 x i8] c"  Fetched: \00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [128 x i8] c"use of undefined value|defined with type .* but expected|expected instruction|invalid redefinition of|invalid forward reference\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [37 x i8] c"undefined reference|undefined symbol\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [14 x i8] c"if grep -qE '\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [99 x i8] c"echo \22  -> esto es casi seguro un BUG del compilador Nyx (IR invalido), no de tu codigo (archivo: \00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [73 x i8] c"). Reportalo con 'nyx report' (el reporte incluye contexto util).\22 >&2; \00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [6 x i8] c"else \00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [91 x i8] c"echo \22  -> this is almost certainly a Nyx compiler BUG (invalid IR), not your code (file: \00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [76 x i8] c"). Report it with 'nyx report' (the report includes useful context).\22 >&2; \00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [16 x i8] c"elif grep -qE '\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [175 x i8] c"echo \22  -> simbolo no encontrado al linkear: si es una funcion extern C tuya, revisa el nombre/lib; si es de la stdlib de Nyx, es un bug -- reportalo con 'nyx report'.\22 >&2; \00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [6 x i8] c"else \00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [184 x i8] c"echo \22  -> symbol not found at link time: if this is your own extern C function, check the name/lib; if it is a stdlib function, it is a Nyx bug -- report it with 'nyx report'.\22 >&2; \00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [6 x i8] c"else \00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [126 x i8] c"echo \22  -> fallo de link sin patron reconocido; si sospechas que es un bug del compilador, reportalo con 'nyx report'.\22 >&2; \00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [6 x i8] c"else \00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [119 x i8] c"echo \22  -> link failure with no recognized pattern; if you suspect a compiler bug, report it with 'nyx report'.\22 >&2; \00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [1 x i8] c"\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [1 x i8] c"\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [1 x i8] c"\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [3 x i8] c" [\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [2 x i8] c"]\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [3 x i8] c" v\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [1 x i8] c"\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [1 x i8] c"\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [1 x i8] c"\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [1 x i8] c"\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [1 x i8] c"\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [2 x i8] c".\00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [1 x i8] c"\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [47 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [12 x i8] c" \22$SRC.ll\22 \00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c \00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [36 x i8] c"$RT/net.c $RT/thread.c $RT/regex.c \00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c \00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [55 x i8] c"$RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [39 x i8] c"$RT/compress.c $RT/random.c $RT/url.c \00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [71 x i8] c"$RT/msgpack.c $RT/websocket.c $RT/persist.c $RT/http2.c $RT/process.c \00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [21 x i8] c"$RT/llama_adapter.c \00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [19 x i8] c"$RT/os/os_posix.c \00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [1 x i8] c"\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [23 x i8] c"x86_64-pc-windows-msvc\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [24 x i8] c"aarch64-pc-windows-msvc\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [28 x i8] c"error: target desconocido: \00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [83 x i8] c"  targets soportados: wasm32-wasi, x86_64-pc-windows-msvc, aarch64-pc-windows-msvc\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [52 x i8] c"  sin --target se compila para la plataforma actual\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [82 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [24 x i8] c"WASM_SRCS=\22$(grep -v '^\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [2 x i8] c"#\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [76 x i8] c"' \22$RT/wasm.srcs\22 | grep -v '^$' | sed \22s|^runtime/|$RT/|\22 | tr '\5cn' ' ')\22\0a\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [98 x i8] c"test -n \22$WASM_SRCS\22 || { echo \22error: runtime/wasm.srcs vacío o ausente en $RT\22 >&2; exit 1; }\0a\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [41 x i8] c"mkdir -p \22$ORIG_DIR/target/wasm32-wasi\22\0a\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [12 x i8] c"$WASM_SRCS \00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [34 x i8] c"-o \22$ORIG_DIR/target/wasm32-wasi/\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [32 x i8] c"echo 'built target/wasm32-wasi/\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [41 x i8] c".wasm (run: wasmtime target/wasm32-wasi/\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [1 x i8] c"\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [1 x i8] c"\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [1 x i8] c"\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [1 x i8] c"\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [74 x i8] c"> Completá las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [79 x i8] c"FRICTION.md ya existe con contenido — avisale al usuario para que lo revise.\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [79 x i8] c"creado FRICTION.md — completá las secciones (tu asistente IA puede hacerlo)\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [71 x i8] c"y AVISALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [1 x i8] c"\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [56 x i8] c" — corré `nyx report` primero para crear FRICTION.md\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [67 x i8] c"error: el reporte parece vacío — completá la plantilla primero\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [1 x i8] c"\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [1 x i8] c"\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [1 x i8] c"\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [28 x i8] c" — podés abrir un issue:\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [1 x i8] c"\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [1 x i8] c"\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [1 x i8] c"\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [4 x i8] c"std\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [2 x i8] c".\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [1 x i8] c"\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [1 x i8] c"\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [5 x i8] c"http\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [4 x i8] c"web\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [3 x i8] c"db\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [5 x i8] c"json\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [5 x i8] c"file\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [3 x i8] c"io\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [5 x i8] c"path\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [4 x i8] c"net\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [4 x i8] c"url\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [6 x i8] c"async\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [7 x i8] c"random\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [5 x i8] c"time\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [7 x i8] c"string\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [4 x i8] c"set\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [4 x i8] c"box\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [5 x i8] c"args\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [4 x i8] c"log\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [1 x i8] c"\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [1 x i8] c"("
@.str778 = private unnamed_addr constant [1 x i8] c")"
@.str779 = private unnamed_addr constant [2 x i8] c"/\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [1 x i8] c"\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [1 x i8] c"\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [4 x i8] c"///\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [1 x i8] c"\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [2 x i8] c" \00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [2 x i8] c"`\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [6 x i8] c" — \00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [1 x i8] c"("
@.str793 = private unnamed_addr constant [1 x i8] c"{"
@.str794 = private unnamed_addr constant [1 x i8] c"\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [16 x i8] c"/builtins.index\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [1 x i8] c"\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [1 x i8] c"\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [9 x i8] c"builtin\09\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [4 x i8] c"` (\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [5 x i8] c" arg\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [2 x i8] c"1\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [2 x i8] c"s\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [2 x i8] c")\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [1 x i8] c"\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [6 x i8] c" — \00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [1 x i8] c"\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [39 x i8] c"### Builtins globales (sin `import`)\0a\0a\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [1 x i8] c"\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [12 x i8] c"Matemática\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,\0a\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [95 x i8] c"> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [1 x i8] c"\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [4 x i8] c"## \00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [1 x i8] c"\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [3 x i8] c" (\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [6 x i8] c"build\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [1 x i8] c"\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [1 x i8] c"\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [6 x i8] c"build\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [4 x i8] c"run\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [5 x i8] c"test\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [3 x i8] c"--\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [63 x i8] c"--target necesita un valor (por ejemplo: --target wasm32-wasi)\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [1 x i8] c"\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [28 x i8] c"flag desconocida para `nyx \00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [4 x i8] c"`: \00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [1 x i8] c"-"
@.str867 = private unnamed_addr constant [5 x i8] c"nyx \00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [24 x i8] c" — flags disponibles:\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [42 x i8] c"  --release            compila optimizado\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [88 x i8] c"  --target <triple>    destino de compilación (por defecto, el de [build] en nyx.toml)\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [34 x i8] c"  --help, -h           esta ayuda\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [1 x i8] c"\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [71 x i8] c"El proyecto se lee de nyx.toml: nombre, versión, main y dependencias.\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [1 x i8] c"\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [8 x i8] c"  `nyx \00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [37 x i8] c" --help` lista las flags disponibles\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [6 x i8] c" — \00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [5 x i8] c"init\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [1 x i8] c"\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [1 x i8] c"\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [1 x i8] c"\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [1 x i8] c"\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [1 x i8] c"\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [7 x i8] c"--lang\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [8 x i8] c"--agent\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [1 x i8] c"\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [3 x i8] c"--\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [8 x i8] c"--lang=\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [9 x i8] c"--agent=\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [6 x i8] c"--sdd\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [1 x i8] c"\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [42 x i8] c"error: flag desconocida para `nyx init`: \00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [1 x i8] c"\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [19 x i8] c" necesita un valor\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [80 x i8] c"  Uso: nyx init [nombre] [--lang en|es] [--agent=claude,cursor,copilot] [--sdd]\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [1 x i8] c"\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [3 x i8] c"es\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [3 x i8] c"es\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [1 x i8] c"\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [3 x i8] c"en\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [3 x i8] c"en\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [3 x i8] c"es\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [27 x i8] c"error: --lang inválido: '\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [29 x i8] c"' (valores válidos: en, es)\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [1 x i8] c"\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [2 x i8] c".\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [1 x i8] c"\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [4 x i8] c"sdd\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [1 x i8] c"\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [5 x i8] c"init\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [2 x i8] c".\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [2 x i8] c".\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [9 x i8] c"evidence\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [2 x i8] c".\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [2 x i8] c".\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [1 x i8] c"\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [57 x i8] c"error: `nyx sdd` necesita un subcomando (init, evidence)\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [48 x i8] c"error: subcomando desconocido para `nyx sdd`: '\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [29 x i8] c"' (válidos: init, evidence)\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [69 x i8] c"  Uso: nyx sdd init      # siembra el andamiaje SDD en este proyecto\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [79 x i8] c"       nyx sdd evidence  # regenera docs/evidence/ para la toolchain instalada\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [4 x i8] c"add\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [1 x i8] c"\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [8 x i8] c"project\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [1 x i8] c"\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [1 x i8] c"\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [1 x i8] c"\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [7 x i8] c"report\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [1 x i8] c"\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [1 x i8] c"\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [1 x i8] c"\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [5 x i8] c"info\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [6 x i8] c"build\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [4 x i8] c"run\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [3 x i8] c"--\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [57 x i8] c"Usage: nyx run [--release] [--target <triple>] [args...]\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [1 x i8] c"\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [1 x i8] c"\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [20 x i8] c"target/wasm32-wasi/\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [6 x i8] c".wasm\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [24 x i8] c"error: no se encontró \00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [36 x i8] c"command -v wasmtime >/dev/null 2>&1\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [24 x i8] c"error: el artefacto es \00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [45 x i8] c" pero no hay runtime de wasm para ejecutarlo\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [47 x i8] c"  instalá wasmtime, o corrélo vos: wasmtime \00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [10 x i8] c"wasmtime \00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [2 x i8] c" \00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [3 x i8] c"--\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [1 x i8] c"\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [51 x i8] c"error: `nyx run` no sabe ejecutar un artefacto de \00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [28 x i8] c"  usá `nyx build --target \00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [46 x i8] c"` y ejecutalo con el runner de esa plataforma\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [3 x i8] c"./\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [2 x i8] c" \00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [3 x i8] c"--\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [88 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>]\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [2 x i8] c"'\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str990.c = internal global %nyx_string* null
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
declare void @nyx_print_string(i8*)
declare void @nyx_print_bool(i1)
declare %nyx_string* @nyx_string_from_float(double)
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
  %for_idx73 = alloca i64
  store i64 0, i64* %for_idx73
  %253 = call i8* @llvm.stacksave()
  br label %for_cond70
for_cond70:
  %254 = load i64, i64* %for_idx73
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
  %271 = load i64, i64* %for_idx73
  %272 = add i64 %271, 1
  store i64 %272, i64* %for_idx73
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
  br label %while_cond74
while_cond74:
  %298 = load i64, i64* %287
  %299 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %300 = call i64 @nyx_array_length({ i64, i8* }* %299)
  %301 = icmp slt i64 %298, %300
  br i1 %301, label %while_body75, label %while_end76
while_body75:
  call void @llvm.stackrestore(i8* %297)
  %302 = load { i64, i8* }*, { i64, i8* }** %flags.ptr
  %303 = load i64, i64* %287
  %304 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %302, i64 %303)
  %305 = alloca i64
  store i64 %304, i64* %305
  %306 = load i64, i64* %305
  %307 = icmp eq i64 %306, 1
  br i1 %307, label %then77, label %else78
then77:
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
  br label %merge79
else78:
  %325 = load i8*, i8** %276
  %326 = load %nyx_string*, %nyx_string** %296
  call void @nyx_sb_append(i8* %325, %nyx_string* %326)
  br label %merge79
merge79:
  %327 = load i64, i64* %287
  %328 = add i64 %327, 1
  store i64 %328, i64* %287
  br label %while_cond74
while_end76:
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
  br i1 %336, label %then80, label %else81
then80:
  %337 = sub i64 0, 1
  ret i64 %337
else81:
  br label %merge82
merge82:
  %338 = load %nyx_string*, %nyx_string** %token.ptr
  %339 = call i64 @nyx_string_byte_length(%nyx_string* %338)
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %then83, label %else84
then83:
  %341 = load i64, i64* %334
  ret i64 %341
else84:
  br label %merge85
merge85:
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
  br i1 %357, label %then86, label %else87
then86:
  %358 = load i64, i64* %334
  call void @nyx_tls_close(i64 %358)
  %359 = sub i64 0, 1
  ret i64 %359
else87:
  br label %merge88
merge88:
  %360 = load i64, i64* %334
  ret i64 %360
}

define i64 @kv_close(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %361 = load i64, i64* %h.ptr
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %then89, label %else90
then89:
  %363 = load i64, i64* %h.ptr
  call void @nyx_tls_close(i64 %363)
  br label %merge91
else90:
  br label %merge91
merge91:
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
  br label %while_cond92
while_cond92:
  %372 = load i1, i1* %367
  %373 = xor i1 %372, true
  br i1 %373, label %while_body93, label %while_end94
while_body93:
  call void @llvm.stackrestore(i8* %371)
  %374 = load i64, i64* %h.ptr
  %375 = call %nyx_string* @nyx_tls_read(i64 %374, i64 1)
  %376 = alloca %nyx_string*
  store %nyx_string* %375, %nyx_string** %376
  %377 = load %nyx_string*, %nyx_string** %376
  %378 = call i64 @nyx_string_byte_length(%nyx_string* %377)
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %then95, label %else96
then95:
  %380 = load i8*, i8** %365
  %381 = call %nyx_string* @nyx_sb_to_string(i8* %380)
  ret %nyx_string* %381
else96:
  br label %merge97
merge97:
  %382 = load %nyx_string*, %nyx_string** %376
  %383 = call i8 @nyx_string_char_at(%nyx_string* %382, i64 0)
  %384 = zext i8 %383 to i64
  %385 = alloca i64
  store i64 %384, i64* %385
  %386 = alloca i1
  store i1 false, i1* %386
  %387 = load i1, i1* %366
  br i1 %387, label %sc_and_rhs98, label %sc_and_end99
sc_and_rhs98:
  %388 = load i64, i64* %385
  %389 = icmp eq i64 %388, 10
  store i1 %389, i1* %386
  br label %sc_and_end99
sc_and_end99:
  %390 = load i1, i1* %386
  br i1 %390, label %then100, label %else101
then100:
  store i1 1, i1* %367
  br label %merge102
else101:
  %391 = load i1, i1* %366
  br i1 %391, label %then103, label %else104
then103:
  %392 = load i8*, i8** %365
  %393 = load %nyx_string*, %nyx_string** %370
  call void @nyx_sb_append(i8* %392, %nyx_string* %393)
  store i1 0, i1* %366
  br label %merge105
else104:
  br label %merge105
merge105:
  %394 = load i64, i64* %385
  %395 = icmp eq i64 %394, 13
  br i1 %395, label %then106, label %else107
then106:
  store i1 1, i1* %366
  br label %merge108
else107:
  %396 = load i8*, i8** %365
  %397 = load %nyx_string*, %nyx_string** %376
  call void @nyx_sb_append(i8* %396, %nyx_string* %397)
  br label %merge108
merge108:
  br label %merge102
merge102:
  br label %while_cond92
while_end94:
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
  br i1 %407, label %then109, label %else110
then109:
  %408 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %408, i64 0)
  ret %nyx_string* %409
else110:
  br label %merge111
merge111:
  %410 = load i64, i64* %405
  %411 = icmp sgt i64 %410, 16777216
  br i1 %411, label %then112, label %else113
then112:
  %412 = getelementptr [1 x i8], [1 x i8]* @.str28, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %412, i64 0)
  ret %nyx_string* %413
else113:
  br label %merge114
merge114:
  %414 = load i64, i64* %405
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %then115, label %else116
then115:
  %416 = load i64, i64* %h.ptr
  %417 = call %nyx_string* @nyx_tls_read(i64 %416, i64 2)
  %418 = alloca %nyx_string*
  store %nyx_string* %417, %nyx_string** %418
  %419 = getelementptr [1 x i8], [1 x i8]* @.str29, i32 0, i32 0
  %420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %419, i64 0)
  ret %nyx_string* %420
else116:
  br label %merge117
merge117:
  %421 = load i64, i64* %h.ptr
  %422 = load i64, i64* %405
  %423 = call %nyx_string* @nyx_tls_read(i64 %421, i64 %422)
  %424 = alloca %nyx_string*
  store %nyx_string* %423, %nyx_string** %424
  %425 = load %nyx_string*, %nyx_string** %424
  %426 = call i64 @nyx_string_byte_length(%nyx_string* %425)
  %427 = load i64, i64* %405
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %then118, label %else119
then118:
  %429 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %429, i64 0)
  ret %nyx_string* %430
else119:
  br label %merge120
merge120:
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
  br label %while_cond121
while_cond121:
  %455 = load i64, i64* %447
  %456 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %457 = call i64 @nyx_array_length({ i64, i8* }* %456)
  %458 = icmp slt i64 %455, %457
  br i1 %458, label %while_body122, label %while_end123
while_body122:
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
  br label %while_cond121
while_end123:
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
  br i1 %490, label %then124, label %else125
then124:
  %491 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %491, i64 0)
  ret %nyx_string* %492
else125:
  br label %merge126
merge126:
  %493 = load %nyx_string*, %nyx_string** %487
  %494 = call i8 @nyx_string_char_at(%nyx_string* %493, i64 0)
  %495 = zext i8 %494 to i64
  %496 = alloca i64
  store i64 %495, i64* %496
  %497 = load i64, i64* %496
  %498 = icmp eq i64 %497, 36
  br i1 %498, label %then127, label %else128
then127:
  %499 = load i64, i64* %h.ptr
  %500 = load %nyx_string*, %nyx_string** %487
  %501 = call %nyx_string* @read_bulk(i64 %499, %nyx_string* %500)
  ret %nyx_string* %501
else128:
  br label %merge129
merge129:
  %502 = load i64, i64* %496
  %503 = icmp eq i64 %502, 45
  br i1 %503, label %then130, label %else131
then130:
  %504 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %504, i64 0)
  ret %nyx_string* %505
else131:
  br label %merge132
merge132:
  %506 = load %nyx_string*, %nyx_string** %487
  %507 = call i64 @nyx_string_byte_length(%nyx_string* %506)
  %508 = icmp sgt i64 %507, 1
  br i1 %508, label %then133, label %else134
then133:
  %509 = load %nyx_string*, %nyx_string** %487
  %510 = load %nyx_string*, %nyx_string** %487
  %511 = call i64 @nyx_string_byte_length(%nyx_string* %510)
  %512 = call %nyx_string* @nyx_string_substring(%nyx_string* %509, i64 1, i64 %511)
  ret %nyx_string* %512
else134:
  br label %merge135
merge135:
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
  br i1 %525, label %then136, label %else137
then136:
  %526 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %526
else137:
  br label %merge138
merge138:
  %527 = load %nyx_string*, %nyx_string** %520
  %528 = call i8 @nyx_string_char_at(%nyx_string* %527, i64 0)
  %529 = zext i8 %528 to i64
  %530 = alloca i64
  store i64 %529, i64* %530
  %531 = load i64, i64* %530
  %532 = icmp ne i64 %531, 42
  br i1 %532, label %then139, label %else140
then139:
  %533 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %533
else140:
  br label %merge141
merge141:
  %534 = load %nyx_string*, %nyx_string** %520
  %535 = load %nyx_string*, %nyx_string** %520
  %536 = call i64 @nyx_string_byte_length(%nyx_string* %535)
  %537 = call %nyx_string* @nyx_string_substring(%nyx_string* %534, i64 1, i64 %536)
  %538 = call i64 @std_resp__resp_parse_len(%nyx_string* %537)
  %539 = alloca i64
  store i64 %538, i64* %539
  %540 = load i64, i64* %539
  %541 = icmp slt i64 %540, 0
  br i1 %541, label %then142, label %else143
then142:
  %542 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %542
else143:
  br label %merge144
merge144:
  %543 = alloca i64
  store i64 0, i64* %543
  %544 = call i8* @llvm.stacksave()
  br label %while_cond145
while_cond145:
  %545 = load i64, i64* %543
  %546 = load i64, i64* %539
  %547 = icmp slt i64 %545, %546
  br i1 %547, label %while_body146, label %while_end147
while_body146:
  call void @llvm.stackrestore(i8* %544)
  %548 = load i64, i64* %h.ptr
  %549 = call %nyx_string* @tls_read_line_local(i64 %548)
  %550 = alloca %nyx_string*
  store %nyx_string* %549, %nyx_string** %550
  %551 = load %nyx_string*, %nyx_string** %550
  %552 = call i64 @nyx_string_byte_length(%nyx_string* %551)
  %553 = icmp sgt i64 %552, 0
  br i1 %553, label %then148, label %else149
then148:
  %554 = load %nyx_string*, %nyx_string** %550
  %555 = call i8 @nyx_string_char_at(%nyx_string* %554, i64 0)
  %556 = zext i8 %555 to i64
  %557 = alloca i64
  store i64 %556, i64* %557
  %558 = load i64, i64* %557
  %559 = icmp eq i64 %558, 36
  br i1 %559, label %then151, label %else152
then151:
  %560 = load { i64, i8* }*, { i64, i8* }** %522
  %561 = load i64, i64* %h.ptr
  %562 = load %nyx_string*, %nyx_string** %550
  %563 = call %nyx_string* @read_bulk(i64 %561, %nyx_string* %562)
  %564 = ptrtoint %nyx_string* %563 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %560, i64 %564, i64 2)
  br label %merge153
else152:
  %565 = load { i64, i8* }*, { i64, i8* }** %522
  %566 = load %nyx_string*, %nyx_string** %550
  %567 = load %nyx_string*, %nyx_string** %550
  %568 = call i64 @nyx_string_byte_length(%nyx_string* %567)
  %569 = call %nyx_string* @nyx_string_substring(%nyx_string* %566, i64 1, i64 %568)
  %570 = ptrtoint %nyx_string* %569 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %565, i64 %570, i64 2)
  br label %merge153
merge153:
  br label %merge150
else149:
  %571 = load { i64, i8* }*, { i64, i8* }** %522
  %572 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %572, i64 0)
  %574 = ptrtoint %nyx_string* %573 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %571, i64 %574, i64 2)
  br label %merge150
merge150:
  %575 = load i64, i64* %543
  %576 = add i64 %575, 1
  store i64 %576, i64* %543
  br label %while_cond145
while_end147:
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
  br i1 %769, label %then154, label %else155
then154:
  %770 = getelementptr [1 x i8], [1 x i8]* @.str58, i32 0, i32 0
  %771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %770, i64 0)
  ret %nyx_string* %771
else155:
  br label %merge156
merge156:
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
  br label %while_cond157
while_cond157:
  %779 = load i64, i64* %774
  %780 = load i64, i64* %767
  %781 = icmp slt i64 %779, %780
  br i1 %781, label %while_body158, label %while_end159
while_body158:
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
  br i1 %794, label %then160, label %else161
then160:
  %795 = load %nyx_string*, %nyx_string** %input.ptr
  %796 = load i64, i64* %774
  %797 = add i64 %796, 1
  %798 = call i8 @nyx_string_char_at(%nyx_string* %795, i64 %797)
  %799 = zext i8 %798 to i64
  store i64 %799, i64* %787
  br label %merge162
else161:
  br label %merge162
merge162:
  %800 = load i64, i64* %792
  %801 = icmp sge i64 %800, 3
  br i1 %801, label %then163, label %else164
then163:
  %802 = load %nyx_string*, %nyx_string** %input.ptr
  %803 = load i64, i64* %774
  %804 = add i64 %803, 2
  %805 = call i8 @nyx_string_char_at(%nyx_string* %802, i64 %804)
  %806 = zext i8 %805 to i64
  store i64 %806, i64* %788
  br label %merge165
else164:
  br label %merge165
merge165:
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
  br i1 %840, label %then166, label %else167
then166:
  %841 = load i8*, i8** %773
  %842 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %843 = load i64, i64* %823
  %844 = load i64, i64* %823
  %845 = add i64 %844, 1
  %846 = call %nyx_string* @nyx_string_substring(%nyx_string* %842, i64 %843, i64 %845)
  call void @nyx_sb_append(i8* %841, %nyx_string* %846)
  br label %merge168
else167:
  %847 = load i1, i1* %pad.ptr
  br i1 %847, label %then169, label %else170
then169:
  %848 = load i8*, i8** %773
  %849 = load %nyx_string*, %nyx_string** %777
  call void @nyx_sb_append(i8* %848, %nyx_string* %849)
  br label %merge171
else170:
  br label %merge171
merge171:
  br label %merge168
merge168:
  %850 = load i64, i64* %792
  %851 = icmp sge i64 %850, 3
  br i1 %851, label %then172, label %else173
then172:
  %852 = load i8*, i8** %773
  %853 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %854 = load i64, i64* %826
  %855 = load i64, i64* %826
  %856 = add i64 %855, 1
  %857 = call %nyx_string* @nyx_string_substring(%nyx_string* %853, i64 %854, i64 %856)
  call void @nyx_sb_append(i8* %852, %nyx_string* %857)
  br label %merge174
else173:
  %858 = load i1, i1* %pad.ptr
  br i1 %858, label %then175, label %else176
then175:
  %859 = load i8*, i8** %773
  %860 = load %nyx_string*, %nyx_string** %777
  call void @nyx_sb_append(i8* %859, %nyx_string* %860)
  br label %merge177
else176:
  br label %merge177
merge177:
  br label %merge174
merge174:
  %861 = load i64, i64* %774
  %862 = add i64 %861, 3
  store i64 %862, i64* %774
  br label %while_cond157
while_end159:
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
  br label %while_cond178
while_cond178:
  %872 = load i64, i64* %870
  %873 = icmp slt i64 %872, 64
  br i1 %873, label %while_body179, label %while_end180
while_body179:
  call void @llvm.stackrestore(i8* %871)
  %874 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %875 = load i64, i64* %870
  %876 = call i8 @nyx_string_char_at(%nyx_string* %874, i64 %875)
  %877 = zext i8 %876 to i64
  %878 = load i64, i64* %c.ptr
  %879 = icmp eq i64 %877, %878
  br i1 %879, label %then181, label %else182
then181:
  %880 = load i64, i64* %870
  ret i64 %880
else182:
  br label %merge183
merge183:
  %881 = load i64, i64* %870
  %882 = add i64 %881, 1
  store i64 %882, i64* %870
  br label %while_cond178
while_end180:
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
  br i1 %888, label %then184, label %else185
then184:
  %889 = getelementptr [1 x i8], [1 x i8]* @.str60, i32 0, i32 0
  %890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %889, i64 0)
  ret %nyx_string* %890
else185:
  br label %merge186
merge186:
  %891 = call i8* @nyx_sb_new(i64 1024)
  %892 = alloca i8*
  store i8* %891, i8** %892
  %893 = alloca i64
  store i64 0, i64* %893
  %894 = call i8* @llvm.stacksave()
  br label %while_cond187
while_cond187:
  %895 = load i64, i64* %893
  %896 = load i64, i64* %886
  %897 = icmp slt i64 %895, %896
  br i1 %897, label %while_body188, label %while_end189
while_body188:
  call void @llvm.stackrestore(i8* %894)
  %898 = load %nyx_string*, %nyx_string** %input.ptr
  %899 = load i64, i64* %893
  %900 = call i8 @nyx_string_char_at(%nyx_string* %898, i64 %899)
  %901 = zext i8 %900 to i64
  %902 = alloca i64
  store i64 %901, i64* %902
  %903 = load i64, i64* %902
  %904 = icmp eq i64 %903, 61
  br i1 %904, label %then190, label %else191
then190:
  br label %while_end189
else191:
  br label %merge192
merge192:
  %905 = load i64, i64* %902
  %906 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %907 = call i64 @std_base64____b64_char_value(i64 %905, %nyx_string* %906)
  %908 = alloca i64
  store i64 %907, i64* %908
  %909 = load i64, i64* %908
  %910 = icmp slt i64 %909, 0
  br i1 %910, label %then193, label %else194
then193:
  br label %while_end189
else194:
  br label %merge195
merge195:
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
  br i1 %919, label %then196, label %else197
then196:
  %920 = load %nyx_string*, %nyx_string** %input.ptr
  %921 = load i64, i64* %893
  %922 = add i64 %921, 1
  %923 = call i8 @nyx_string_char_at(%nyx_string* %920, i64 %922)
  %924 = zext i8 %923 to i64
  %925 = alloca i64
  store i64 %924, i64* %925
  %926 = load i64, i64* %925
  %927 = icmp ne i64 %926, 61
  br i1 %927, label %then199, label %else200
then199:
  %928 = load i64, i64* %925
  %929 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %930 = call i64 @std_base64____b64_char_value(i64 %928, %nyx_string* %929)
  store i64 %930, i64* %911
  br label %merge201
else200:
  br label %merge201
merge201:
  br label %merge198
else197:
  br label %merge198
merge198:
  %931 = load i64, i64* %893
  %932 = add i64 %931, 2
  %933 = load i64, i64* %886
  %934 = icmp slt i64 %932, %933
  br i1 %934, label %then202, label %else203
then202:
  %935 = load %nyx_string*, %nyx_string** %input.ptr
  %936 = load i64, i64* %893
  %937 = add i64 %936, 2
  %938 = call i8 @nyx_string_char_at(%nyx_string* %935, i64 %937)
  %939 = zext i8 %938 to i64
  %940 = alloca i64
  store i64 %939, i64* %940
  %941 = load i64, i64* %940
  %942 = icmp ne i64 %941, 61
  br i1 %942, label %then205, label %else206
then205:
  %943 = load i64, i64* %940
  %944 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %945 = call i64 @std_base64____b64_char_value(i64 %943, %nyx_string* %944)
  store i64 %945, i64* %913
  br label %merge207
else206:
  br label %merge207
merge207:
  br label %merge204
else203:
  br label %merge204
merge204:
  %946 = load i64, i64* %893
  %947 = add i64 %946, 3
  %948 = load i64, i64* %886
  %949 = icmp slt i64 %947, %948
  br i1 %949, label %then208, label %else209
then208:
  %950 = load %nyx_string*, %nyx_string** %input.ptr
  %951 = load i64, i64* %893
  %952 = add i64 %951, 3
  %953 = call i8 @nyx_string_char_at(%nyx_string* %950, i64 %952)
  %954 = zext i8 %953 to i64
  %955 = alloca i64
  store i64 %954, i64* %955
  %956 = load i64, i64* %955
  %957 = icmp ne i64 %956, 61
  br i1 %957, label %then211, label %else212
then211:
  %958 = load i64, i64* %955
  %959 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %960 = call i64 @std_base64____b64_char_value(i64 %958, %nyx_string* %959)
  store i64 %960, i64* %915
  br label %merge213
else212:
  br label %merge213
merge213:
  br label %merge210
else209:
  br label %merge210
merge210:
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
  br i1 %971, label %then214, label %else215
then214:
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
  br label %merge216
else215:
  br label %merge216
merge216:
  %982 = load i64, i64* %915
  %983 = icmp sge i64 %982, 0
  br i1 %983, label %then217, label %else218
then217:
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
  br label %merge219
else218:
  br label %merge219
merge219:
  %993 = load i64, i64* %893
  %994 = add i64 %993, 4
  store i64 %994, i64* %893
  br label %while_cond187
while_end189:
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
  br label %while_cond220
while_cond220:
  %1016 = load i64, i64* %1014
  %1017 = load %nyx_string*, %nyx_string** %1011
  %1018 = call i64 @nyx_string_byte_length(%nyx_string* %1017)
  %1019 = icmp slt i64 %1016, %1018
  br i1 %1019, label %while_body221, label %while_end222
while_body221:
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
  br i1 %1031, label %then223, label %else224
then223:
  %1032 = load i64, i64* %1014
  store i64 %1032, i64* %1013
  %1033 = load %nyx_string*, %nyx_string** %1011
  %1034 = call i64 @nyx_string_byte_length(%nyx_string* %1033)
  store i64 %1034, i64* %1014
  br label %merge225
else224:
  %1035 = load i64, i64* %1014
  %1036 = add i64 %1035, 1
  store i64 %1036, i64* %1014
  br label %merge225
merge225:
  br label %while_cond220
while_end222:
  %1037 = load i64, i64* %1013
  %1038 = icmp slt i64 %1037, 0
  br i1 %1038, label %then226, label %else227
then226:
  %1039 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %1040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1039, i64 0)
  ret %nyx_string* %1040
else227:
  br label %merge228
merge228:
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
  br i1 %1053, label %sc_and_rhs229, label %sc_and_end230
sc_and_rhs229:
  %1054 = load %nyx_string*, %nyx_string** %1048
  %1055 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %1056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1055, i64 1)
  %1057 = call i1 @nyx_string_ends_with(%nyx_string* %1054, %nyx_string* %1056)
  store i1 %1057, i1* %1049
  br label %sc_and_end230
sc_and_end230:
  %1058 = load i1, i1* %1049
  br i1 %1058, label %then231, label %else232
then231:
  %1059 = load %nyx_string*, %nyx_string** %1048
  %1060 = load %nyx_string*, %nyx_string** %1048
  %1061 = call i64 @nyx_string_byte_length(%nyx_string* %1060)
  %1062 = sub i64 %1061, 1
  %1063 = call %nyx_string* @nyx_string_substring(%nyx_string* %1059, i64 1, i64 %1062)
  ret %nyx_string* %1063
else232:
  br label %merge233
merge233:
  %1064 = load %nyx_string*, %nyx_string** %1048
  %1065 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %1066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1065, i64 4)
  %1067 = call i1 @nyx_string_equals(%nyx_string* %1064, %nyx_string* %1066)
  br i1 %1067, label %then234, label %else235
then234:
  %1068 = getelementptr [5 x i8], [5 x i8]* @.str66, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1068, i64 4)
  ret %nyx_string* %1069
else235:
  br label %merge236
merge236:
  %1070 = load %nyx_string*, %nyx_string** %1048
  %1071 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1071, i64 5)
  %1073 = call i1 @nyx_string_equals(%nyx_string* %1070, %nyx_string* %1072)
  br i1 %1073, label %then237, label %else238
then237:
  %1074 = getelementptr [6 x i8], [6 x i8]* @.str68, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1074, i64 5)
  ret %nyx_string* %1075
else238:
  br label %merge239
merge239:
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
  br label %while_cond240
while_cond240:
  %1084 = load i64, i64* %1082
  %1085 = load %nyx_string*, %nyx_string** %1079
  %1086 = call i64 @nyx_string_byte_length(%nyx_string* %1085)
  %1087 = icmp slt i64 %1084, %1086
  br i1 %1087, label %while_body241, label %while_end242
while_body241:
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
  br i1 %1099, label %then243, label %else244
then243:
  %1100 = load i64, i64* %1082
  store i64 %1100, i64* %1081
  %1101 = load %nyx_string*, %nyx_string** %1079
  %1102 = call i64 @nyx_string_byte_length(%nyx_string* %1101)
  store i64 %1102, i64* %1082
  br label %merge245
else244:
  %1103 = load i64, i64* %1082
  %1104 = add i64 %1103, 1
  store i64 %1104, i64* %1082
  br label %merge245
merge245:
  br label %while_cond240
while_end242:
  %1105 = load i64, i64* %1081
  %1106 = icmp slt i64 %1105, 0
  br i1 %1106, label %then246, label %else247
then246:
  %1107 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %1108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1107, i64 0)
  ret %nyx_string* %1108
else247:
  br label %merge248
merge248:
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
  %1141 = load %ProjectConfig, %ProjectConfig* %1120
  %1142 = alloca %ProjectConfig
  store %ProjectConfig %1141, %ProjectConfig* %1142
  %1143 = load %nyx_string*, %nyx_string** %content.ptr
  %1144 = getelementptr [2 x i8], [2 x i8]* @.str76, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1144, i64 1)
  %1146 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1143, %nyx_string* %1145)
  %1147 = alloca { i64, i8* }*
  store { i64, i8* }* %1146, { i64, i8* }** %1147
  %1148 = getelementptr [1 x i8], [1 x i8]* @.str77, i32 0, i32 0
  %1149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1148, i64 0)
  %1150 = alloca %nyx_string*
  store %nyx_string* %1149, %nyx_string** %1150
  %1151 = alloca i64
  store i64 0, i64* %1151
  %1152 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1152, i64 0)
  %1154 = alloca %nyx_string*
  store %nyx_string* %1153, %nyx_string** %1154
  %1155 = getelementptr [2 x i8], [2 x i8]* @.str79, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1155, i64 1)
  %1157 = alloca %nyx_string*
  store %nyx_string* %1156, %nyx_string** %1157
  %1158 = getelementptr [2 x i8], [2 x i8]* @.str80, i32 0, i32 0
  %1159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1158, i64 1)
  %1160 = alloca %nyx_string*
  store %nyx_string* %1159, %nyx_string** %1160
  %1161 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1161, i64 1)
  %1163 = alloca %nyx_string*
  store %nyx_string* %1162, %nyx_string** %1163
  %1164 = getelementptr [8 x i8], [8 x i8]* @.str82, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1164, i64 7)
  %1166 = alloca %nyx_string*
  store %nyx_string* %1165, %nyx_string** %1166
  %1167 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %1168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1167, i64 4)
  %1169 = alloca %nyx_string*
  store %nyx_string* %1168, %nyx_string** %1169
  %1170 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1170, i64 7)
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1173, i64 4)
  %1175 = alloca %nyx_string*
  store %nyx_string* %1174, %nyx_string** %1175
  %1176 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1176, i64 11)
  %1178 = alloca %nyx_string*
  store %nyx_string* %1177, %nyx_string** %1178
  %1179 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1179, i64 5)
  %1181 = alloca %nyx_string*
  store %nyx_string* %1180, %nyx_string** %1181
  %1182 = getelementptr [5 x i8], [5 x i8]* @.str88, i32 0, i32 0
  %1183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1182, i64 4)
  %1184 = alloca %nyx_string*
  store %nyx_string* %1183, %nyx_string** %1184
  %1185 = getelementptr [7 x i8], [7 x i8]* @.str89, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1185, i64 6)
  %1187 = alloca %nyx_string*
  store %nyx_string* %1186, %nyx_string** %1187
  %1188 = getelementptr [13 x i8], [13 x i8]* @.str90, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1188, i64 12)
  %1190 = alloca %nyx_string*
  store %nyx_string* %1189, %nyx_string** %1190
  %1191 = call i8* @llvm.stacksave()
  br label %while_cond249
while_cond249:
  %1192 = load i64, i64* %1151
  %1193 = load { i64, i8* }*, { i64, i8* }** %1147
  %1194 = call i64 @nyx_array_length({ i64, i8* }* %1193)
  %1195 = icmp slt i64 %1192, %1194
  br i1 %1195, label %while_body250, label %while_end251
while_body250:
  call void @llvm.stackrestore(i8* %1191)
  %1196 = load { i64, i8* }*, { i64, i8* }** %1147
  %1197 = load i64, i64* %1151
  %1198 = call i64 @nyx_array_get_checked({ i64, i8* }* %1196, i64 %1197, i64 2)
  %1199 = inttoptr i64 %1198 to %nyx_string*
  %1200 = alloca %nyx_string*
  store %nyx_string* %1199, %nyx_string** %1200
  %1201 = load %nyx_string*, %nyx_string** %1200
  %1202 = call %nyx_string* @nyx_string_trim(%nyx_string* %1201)
  %1203 = alloca %nyx_string*
  store %nyx_string* %1202, %nyx_string** %1203
  %1204 = alloca i1
  store i1 true, i1* %1204
  %1205 = load %nyx_string*, %nyx_string** %1203
  %1206 = load %nyx_string*, %nyx_string** %1154
  %1207 = call i1 @nyx_string_equals(%nyx_string* %1205, %nyx_string* %1206)
  br i1 %1207, label %sc_or_end253, label %sc_or_rhs252
sc_or_rhs252:
  %1208 = load %nyx_string*, %nyx_string** %1203
  %1209 = load %nyx_string*, %nyx_string** %1157
  %1210 = call i1 @nyx_string_starts_with(%nyx_string* %1208, %nyx_string* %1209)
  store i1 %1210, i1* %1204
  br label %sc_or_end253
sc_or_end253:
  %1211 = load i1, i1* %1204
  br i1 %1211, label %then254, label %else255
then254:
  %1212 = load i64, i64* %1151
  %1213 = add i64 %1212, 1
  store i64 %1213, i64* %1151
  br label %merge256
else255:
  %1214 = alloca i1
  store i1 false, i1* %1214
  %1215 = load %nyx_string*, %nyx_string** %1203
  %1216 = load %nyx_string*, %nyx_string** %1160
  %1217 = call i1 @nyx_string_starts_with(%nyx_string* %1215, %nyx_string* %1216)
  br i1 %1217, label %sc_and_rhs257, label %sc_and_end258
sc_and_rhs257:
  %1218 = load %nyx_string*, %nyx_string** %1203
  %1219 = load %nyx_string*, %nyx_string** %1163
  %1220 = call i1 @nyx_string_ends_with(%nyx_string* %1218, %nyx_string* %1219)
  store i1 %1220, i1* %1214
  br label %sc_and_end258
sc_and_end258:
  %1221 = load i1, i1* %1214
  br i1 %1221, label %then259, label %else260
then259:
  %1222 = load %nyx_string*, %nyx_string** %1203
  %1223 = load %nyx_string*, %nyx_string** %1203
  %1224 = call i64 @nyx_string_byte_length(%nyx_string* %1223)
  %1225 = sub i64 %1224, 1
  %1226 = call %nyx_string* @nyx_string_substring(%nyx_string* %1222, i64 1, i64 %1225)
  %1227 = call %nyx_string* @nyx_string_trim(%nyx_string* %1226)
  store %nyx_string* %1227, %nyx_string** %1150
  %1228 = load i64, i64* %1151
  %1229 = add i64 %1228, 1
  store i64 %1229, i64* %1151
  br label %merge261
else260:
  %1230 = load %nyx_string*, %nyx_string** %1203
  %1231 = call %nyx_string* @parse_toml_key(%nyx_string* %1230)
  %1232 = alloca %nyx_string*
  store %nyx_string* %1231, %nyx_string** %1232
  %1233 = load %nyx_string*, %nyx_string** %1203
  %1234 = call %nyx_string* @parse_toml_value(%nyx_string* %1233)
  %1235 = alloca %nyx_string*
  store %nyx_string* %1234, %nyx_string** %1235
  %1236 = load %nyx_string*, %nyx_string** %1150
  %1237 = load %nyx_string*, %nyx_string** %1166
  %1238 = call i1 @nyx_string_equals(%nyx_string* %1236, %nyx_string* %1237)
  br i1 %1238, label %then262, label %else263
then262:
  %1239 = load %nyx_string*, %nyx_string** %1232
  %1240 = load %nyx_string*, %nyx_string** %1169
  %1241 = call i1 @nyx_string_equals(%nyx_string* %1239, %nyx_string* %1240)
  br i1 %1241, label %then265, label %else266
then265:
  %1242 = load %nyx_string*, %nyx_string** %1235
  %1243 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 0
  store %nyx_string* %1242, %nyx_string** %1243
  br label %merge267
else266:
  br label %merge267
merge267:
  %1244 = load %nyx_string*, %nyx_string** %1232
  %1245 = load %nyx_string*, %nyx_string** %1172
  %1246 = call i1 @nyx_string_equals(%nyx_string* %1244, %nyx_string* %1245)
  br i1 %1246, label %then268, label %else269
then268:
  %1247 = load %nyx_string*, %nyx_string** %1235
  %1248 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 1
  store %nyx_string* %1247, %nyx_string** %1248
  br label %merge270
else269:
  br label %merge270
merge270:
  %1249 = load %nyx_string*, %nyx_string** %1232
  %1250 = load %nyx_string*, %nyx_string** %1175
  %1251 = call i1 @nyx_string_equals(%nyx_string* %1249, %nyx_string* %1250)
  br i1 %1251, label %then271, label %else272
then271:
  %1252 = load %nyx_string*, %nyx_string** %1235
  %1253 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 2
  store %nyx_string* %1252, %nyx_string** %1253
  br label %merge273
else272:
  br label %merge273
merge273:
  %1254 = load %nyx_string*, %nyx_string** %1232
  %1255 = load %nyx_string*, %nyx_string** %1178
  %1256 = call i1 @nyx_string_equals(%nyx_string* %1254, %nyx_string* %1255)
  br i1 %1256, label %then274, label %else275
then274:
  %1257 = load %nyx_string*, %nyx_string** %1235
  %1258 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 3
  store %nyx_string* %1257, %nyx_string** %1258
  br label %merge276
else275:
  br label %merge276
merge276:
  %1259 = alloca i1
  store i1 false, i1* %1259
  %1260 = load %nyx_string*, %nyx_string** %1232
  %1261 = load %nyx_string*, %nyx_string** %1181
  %1262 = call i1 @nyx_string_equals(%nyx_string* %1260, %nyx_string* %1261)
  br i1 %1262, label %sc_and_rhs277, label %sc_and_end278
sc_and_rhs277:
  %1263 = load %nyx_string*, %nyx_string** %1235
  %1264 = load %nyx_string*, %nyx_string** %1184
  %1265 = call i1 @nyx_string_equals(%nyx_string* %1263, %nyx_string* %1264)
  store i1 %1265, i1* %1259
  br label %sc_and_end278
sc_and_end278:
  %1266 = load i1, i1* %1259
  br i1 %1266, label %then279, label %else280
then279:
  %1267 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 4
  store i1 1, i1* %1267
  br label %merge281
else280:
  br label %merge281
merge281:
  %1268 = load %nyx_string*, %nyx_string** %1232
  %1269 = load %nyx_string*, %nyx_string** %1187
  %1270 = call i1 @nyx_string_equals(%nyx_string* %1268, %nyx_string* %1269)
  br i1 %1270, label %then282, label %else283
then282:
  %1271 = load %nyx_string*, %nyx_string** %1235
  %1272 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 5
  store %nyx_string* %1271, %nyx_string** %1272
  br label %merge284
else283:
  br label %merge284
merge284:
  br label %merge264
else263:
  br label %merge264
merge264:
  %1273 = load %nyx_string*, %nyx_string** %1150
  %1274 = load %nyx_string*, %nyx_string** %1190
  %1275 = call i1 @nyx_string_equals(%nyx_string* %1273, %nyx_string* %1274)
  br i1 %1275, label %then285, label %else286
then285:
  %1276 = alloca i1
  store i1 false, i1* %1276
  %1277 = load %nyx_string*, %nyx_string** %1232
  %1278 = load %nyx_string*, %nyx_string** %1154
  %1279 = call i1 @nyx_string_equals(%nyx_string* %1277, %nyx_string* %1278)
  %1280 = xor i1 %1279, true
  br i1 %1280, label %sc_and_rhs288, label %sc_and_end289
sc_and_rhs288:
  %1281 = load %nyx_string*, %nyx_string** %1235
  %1282 = load %nyx_string*, %nyx_string** %1154
  %1283 = call i1 @nyx_string_equals(%nyx_string* %1281, %nyx_string* %1282)
  %1284 = xor i1 %1283, true
  store i1 %1284, i1* %1276
  br label %sc_and_end289
sc_and_end289:
  %1285 = load i1, i1* %1276
  br i1 %1285, label %then290, label %else291
then290:
  %1286 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 6
  %1287 = load { i64, i8* }*, { i64, i8* }** %1286
  %1288 = load %nyx_string*, %nyx_string** %1232
  %1289 = ptrtoint %nyx_string* %1288 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1287, i64 %1289, i64 2)
  %1290 = getelementptr %ProjectConfig, %ProjectConfig* %1142, i32 0, i32 7
  %1291 = load { i64, i8* }*, { i64, i8* }** %1290
  %1292 = load %nyx_string*, %nyx_string** %1235
  %1293 = ptrtoint %nyx_string* %1292 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1291, i64 %1293, i64 2)
  br label %merge292
else291:
  br label %merge292
merge292:
  br label %merge287
else286:
  br label %merge287
merge287:
  %1294 = load i64, i64* %1151
  %1295 = add i64 %1294, 1
  store i64 %1295, i64* %1151
  br label %merge261
merge261:
  br label %merge256
merge256:
  br label %while_cond249
while_end251:
  %1296 = load %ProjectConfig, %ProjectConfig* %1142
  ret %ProjectConfig %1296
}

define internal i64 @write_lockfile(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1297 = getelementptr [57 x i8], [57 x i8]* @.str91, i32 0, i32 0
  %1298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1297, i64 56)
  %1299 = getelementptr [11 x i8], [11 x i8]* @.str92, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1299, i64 10)
  %1301 = call %nyx_string* @nyx_string_concat(%nyx_string* %1298, %nyx_string* %1300)
  %1302 = getelementptr [9 x i8], [9 x i8]* @.str93, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1302, i64 8)
  %1304 = call %nyx_string* @nyx_string_concat(%nyx_string* %1301, %nyx_string* %1303)
  %1305 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %1306 = load %nyx_string*, %nyx_string** %1305
  %1307 = call %nyx_string* @nyx_string_concat(%nyx_string* %1304, %nyx_string* %1306)
  %1308 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1308, i64 2)
  %1310 = call %nyx_string* @nyx_string_concat(%nyx_string* %1307, %nyx_string* %1309)
  %1311 = getelementptr [12 x i8], [12 x i8]* @.str95, i32 0, i32 0
  %1312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1311, i64 11)
  %1313 = call %nyx_string* @nyx_string_concat(%nyx_string* %1310, %nyx_string* %1312)
  %1314 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %1315 = load %nyx_string*, %nyx_string** %1314
  %1316 = call %nyx_string* @nyx_string_concat(%nyx_string* %1313, %nyx_string* %1315)
  %1317 = getelementptr [3 x i8], [3 x i8]* @.str96, i32 0, i32 0
  %1318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1317, i64 2)
  %1319 = call %nyx_string* @nyx_string_concat(%nyx_string* %1316, %nyx_string* %1318)
  %1320 = getelementptr [9 x i8], [9 x i8]* @.str97, i32 0, i32 0
  %1321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1320, i64 8)
  %1322 = call %nyx_string* @nyx_string_concat(%nyx_string* %1319, %nyx_string* %1321)
  %1323 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %1324 = load %nyx_string*, %nyx_string** %1323
  %1325 = call %nyx_string* @nyx_string_concat(%nyx_string* %1322, %nyx_string* %1324)
  %1326 = getelementptr [3 x i8], [3 x i8]* @.str98, i32 0, i32 0
  %1327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1326, i64 2)
  %1328 = call %nyx_string* @nyx_string_concat(%nyx_string* %1325, %nyx_string* %1327)
  %1329 = alloca %nyx_string*
  store %nyx_string* %1328, %nyx_string** %1329
  %1330 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1331 = load { i64, i8* }*, { i64, i8* }** %1330
  %1332 = call i64 @nyx_array_length({ i64, i8* }* %1331)
  %1333 = icmp sgt i64 %1332, 0
  br i1 %1333, label %then293, label %else294
then293:
  %1334 = load %nyx_string*, %nyx_string** %1329
  %1335 = getelementptr [17 x i8], [17 x i8]* @.str99, i32 0, i32 0
  %1336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1335, i64 16)
  %1337 = call %nyx_string* @nyx_string_concat(%nyx_string* %1334, %nyx_string* %1336)
  store %nyx_string* %1337, %nyx_string** %1329
  %1338 = alloca i64
  store i64 0, i64* %1338
  %1339 = getelementptr [5 x i8], [5 x i8]* @.str100, i32 0, i32 0
  %1340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1339, i64 4)
  %1341 = alloca %nyx_string*
  store %nyx_string* %1340, %nyx_string** %1341
  %1342 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1342, i64 2)
  %1344 = alloca %nyx_string*
  store %nyx_string* %1343, %nyx_string** %1344
  %1345 = call i8* @llvm.stacksave()
  br label %while_cond296
while_cond296:
  %1346 = load i64, i64* %1338
  %1347 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1348 = load { i64, i8* }*, { i64, i8* }** %1347
  %1349 = call i64 @nyx_array_length({ i64, i8* }* %1348)
  %1350 = icmp slt i64 %1346, %1349
  br i1 %1350, label %while_body297, label %while_end298
while_body297:
  call void @llvm.stackrestore(i8* %1345)
  %1351 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1352 = load { i64, i8* }*, { i64, i8* }** %1351
  %1353 = load i64, i64* %1338
  %1354 = call i64 @nyx_array_get({ i64, i8* }* %1352, i64 %1353)
  %1355 = inttoptr i64 %1354 to %nyx_string*
  %1356 = alloca %nyx_string*
  store %nyx_string* %1355, %nyx_string** %1356
  %1357 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1358 = load { i64, i8* }*, { i64, i8* }** %1357
  %1359 = load i64, i64* %1338
  %1360 = call i64 @nyx_array_get({ i64, i8* }* %1358, i64 %1359)
  %1361 = inttoptr i64 %1360 to %nyx_string*
  %1362 = alloca %nyx_string*
  store %nyx_string* %1361, %nyx_string** %1362
  %1363 = load %nyx_string*, %nyx_string** %1329
  %1364 = load %nyx_string*, %nyx_string** %1356
  %1365 = call %nyx_string* @nyx_string_concat(%nyx_string* %1363, %nyx_string* %1364)
  %1366 = load %nyx_string*, %nyx_string** %1341
  %1367 = call %nyx_string* @nyx_string_concat(%nyx_string* %1365, %nyx_string* %1366)
  %1368 = load %nyx_string*, %nyx_string** %1362
  %1369 = call %nyx_string* @nyx_string_concat(%nyx_string* %1367, %nyx_string* %1368)
  %1370 = load %nyx_string*, %nyx_string** %1344
  %1371 = call %nyx_string* @nyx_string_concat(%nyx_string* %1369, %nyx_string* %1370)
  store %nyx_string* %1371, %nyx_string** %1329
  %1372 = load i64, i64* %1338
  %1373 = add i64 %1372, 1
  store i64 %1373, i64* %1338
  br label %while_cond296
while_end298:
  br label %merge295
else294:
  br label %merge295
merge295:
  %1374 = getelementptr [9 x i8], [9 x i8]* @.str102, i32 0, i32 0
  %1375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1374, i64 8)
  %1376 = load %nyx_string*, %nyx_string** %1329
  %1377 = call i8* @nyx_string_to_cstr(%nyx_string* %1375)
  %1378 = call i8* @nyx_string_to_cstr(%nyx_string* %1376)
  %1379 = call i1 @nyx_write_file(i8* %1377, i8* %1378)
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
  %1380 = getelementptr [17 x i8], [17 x i8]* @.str103, i32 0, i32 0
  %1381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1380, i64 16)
  %1382 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1383 = call %nyx_string* @nyx_string_concat(%nyx_string* %1381, %nyx_string* %1382)
  %1384 = call i8* @nyx_string_to_cstr(%nyx_string* %1383)
  call void @nyx_print_string(i8* %1384)
  %1385 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1386 = alloca %nyx_string*
  store %nyx_string* %1385, %nyx_string** %1386
  %1387 = load %nyx_string*, %nyx_string** %1386
  %1388 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %1389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1388, i64 0)
  %1390 = call i1 @nyx_string_equals(%nyx_string* %1387, %nyx_string* %1389)
  br i1 %1390, label %then299, label %else300
then299:
  %1391 = getelementptr [32 x i8], [32 x i8]* @.str105, i32 0, i32 0
  %1392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1391, i64 31)
  %1393 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1394 = call %nyx_string* @nyx_string_concat(%nyx_string* %1392, %nyx_string* %1393)
  store %nyx_string* %1394, %nyx_string** %1386
  br label %merge301
else300:
  br label %merge301
merge301:
  %1395 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %1396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1395, i64 8)
  %1397 = call i8* @nyx_string_to_cstr(%nyx_string* %1396)
  %1398 = call i1 @nyx_file_exists(i8* %1397)
  br i1 %1398, label %then302, label %else303
then302:
  %1399 = getelementptr [9 x i8], [9 x i8]* @.str107, i32 0, i32 0
  %1400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1399, i64 8)
  %1401 = call i8* @nyx_string_to_cstr(%nyx_string* %1400)
  %1402 = call %nyx_string* @nyx_read_file(i8* %1401)
  %1403 = alloca %nyx_string*
  store %nyx_string* %1402, %nyx_string** %1403
  %1404 = load %nyx_string*, %nyx_string** %1403
  %1405 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1406 = getelementptr [3 x i8], [3 x i8]* @.str108, i32 0, i32 0
  %1407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1406, i64 2)
  %1408 = call %nyx_string* @nyx_string_concat(%nyx_string* %1405, %nyx_string* %1407)
  %1409 = call i1 @nyx_string_contains(%nyx_string* %1404, %nyx_string* %1408)
  br i1 %1409, label %then305, label %else306
then305:
  %1410 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1410, i64 11)
  %1412 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1413 = call %nyx_string* @nyx_string_concat(%nyx_string* %1411, %nyx_string* %1412)
  %1414 = getelementptr [27 x i8], [27 x i8]* @.str110, i32 0, i32 0
  %1415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1414, i64 26)
  %1416 = call %nyx_string* @nyx_string_concat(%nyx_string* %1413, %nyx_string* %1415)
  %1417 = call i8* @nyx_string_to_cstr(%nyx_string* %1416)
  call void @nyx_print_string(i8* %1417)
  ret i1 1
else306:
  br label %merge307
merge307:
  br label %merge304
else303:
  br label %merge304
merge304:
  %1418 = getelementptr [10 x i8], [10 x i8]* @.str111, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1418, i64 9)
  %1420 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1421 = call %nyx_string* @nyx_string_concat(%nyx_string* %1419, %nyx_string* %1420)
  %1422 = alloca %nyx_string*
  store %nyx_string* %1421, %nyx_string** %1422
  %1423 = load %nyx_string*, %nyx_string** %1422
  %1424 = call i8* @nyx_string_to_cstr(%nyx_string* %1423)
  %1425 = call i1 @nyx_file_exists(i8* %1424)
  br i1 %1425, label %then308, label %else309
then308:
  %1426 = getelementptr [19 x i8], [19 x i8]* @.str112, i32 0, i32 0
  %1427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1426, i64 18)
  %1428 = load %nyx_string*, %nyx_string** %1422
  %1429 = call %nyx_string* @nyx_string_concat(%nyx_string* %1427, %nyx_string* %1428)
  %1430 = call i8* @nyx_string_to_cstr(%nyx_string* %1429)
  call void @nyx_print_string(i8* %1430)
  br label %merge310
else309:
  %1431 = getelementptr [13 x i8], [13 x i8]* @.str113, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1431, i64 12)
  %1433 = load %nyx_string*, %nyx_string** %1386
  %1434 = call %nyx_string* @nyx_string_concat(%nyx_string* %1432, %nyx_string* %1433)
  %1435 = call i8* @nyx_string_to_cstr(%nyx_string* %1434)
  call void @nyx_print_string(i8* %1435)
  %1436 = getelementptr [43 x i8], [43 x i8]* @.str114, i32 0, i32 0
  %1437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1436, i64 42)
  %1438 = load %nyx_string*, %nyx_string** %1386
  %1439 = call %nyx_string* @nyx_string_concat(%nyx_string* %1437, %nyx_string* %1438)
  %1440 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %1441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1440, i64 1)
  %1442 = call %nyx_string* @nyx_string_concat(%nyx_string* %1439, %nyx_string* %1441)
  %1443 = load %nyx_string*, %nyx_string** %1422
  %1444 = call %nyx_string* @nyx_string_concat(%nyx_string* %1442, %nyx_string* %1443)
  %1445 = getelementptr [13 x i8], [13 x i8]* @.str116, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1445, i64 12)
  %1447 = call %nyx_string* @nyx_string_concat(%nyx_string* %1444, %nyx_string* %1446)
  %1448 = alloca %nyx_string*
  store %nyx_string* %1447, %nyx_string** %1448
  %1449 = load %nyx_string*, %nyx_string** %1448
  %1450 = call i8* @nyx_string_to_cstr(%nyx_string* %1449)
  %1451 = call i64 @nyx_exec_code(i8* %1450)
  %1452 = alloca i64
  store i64 %1451, i64* %1452
  %1453 = load i64, i64* %1452
  %1454 = icmp ne i64 %1453, 0
  br i1 %1454, label %then311, label %else312
then311:
  %1455 = getelementptr [26 x i8], [26 x i8]* @.str117, i32 0, i32 0
  %1456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1455, i64 25)
  %1457 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1458 = call %nyx_string* @nyx_string_concat(%nyx_string* %1456, %nyx_string* %1457)
  %1459 = getelementptr [7 x i8], [7 x i8]* @.str118, i32 0, i32 0
  %1460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1459, i64 6)
  %1461 = call %nyx_string* @nyx_string_concat(%nyx_string* %1458, %nyx_string* %1460)
  %1462 = load %nyx_string*, %nyx_string** %1386
  %1463 = call %nyx_string* @nyx_string_concat(%nyx_string* %1461, %nyx_string* %1462)
  %1464 = call i8* @nyx_string_to_cstr(%nyx_string* %1463)
  call void @nyx_print_string(i8* %1464)
  ret i1 0
else312:
  br label %merge313
merge313:
  br label %merge310
merge310:
  %1465 = getelementptr [9 x i8], [9 x i8]* @.str119, i32 0, i32 0
  %1466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1465, i64 8)
  %1467 = call i8* @nyx_string_to_cstr(%nyx_string* %1466)
  %1468 = call i1 @nyx_file_exists(i8* %1467)
  br i1 %1468, label %then314, label %else315
then314:
  %1469 = getelementptr [9 x i8], [9 x i8]* @.str120, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1469, i64 8)
  %1471 = call i8* @nyx_string_to_cstr(%nyx_string* %1470)
  %1472 = call %nyx_string* @nyx_read_file(i8* %1471)
  %1473 = alloca %nyx_string*
  store %nyx_string* %1472, %nyx_string** %1473
  %1474 = load %nyx_string*, %nyx_string** %1473
  %1475 = alloca %nyx_string*
  store %nyx_string* %1474, %nyx_string** %1475
  %1476 = load %nyx_string*, %nyx_string** %1473
  %1477 = getelementptr [15 x i8], [15 x i8]* @.str121, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1477, i64 14)
  %1479 = call i1 @nyx_string_contains(%nyx_string* %1476, %nyx_string* %1478)
  %1480 = xor i1 %1479, true
  br i1 %1480, label %then317, label %else318
then317:
  %1481 = load %nyx_string*, %nyx_string** %1473
  %1482 = getelementptr [17 x i8], [17 x i8]* @.str122, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1482, i64 16)
  %1484 = call %nyx_string* @nyx_string_concat(%nyx_string* %1481, %nyx_string* %1483)
  %1485 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1486 = call %nyx_string* @nyx_string_concat(%nyx_string* %1484, %nyx_string* %1485)
  %1487 = getelementptr [8 x i8], [8 x i8]* @.str123, i32 0, i32 0
  %1488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1487, i64 7)
  %1489 = call %nyx_string* @nyx_string_concat(%nyx_string* %1486, %nyx_string* %1488)
  store %nyx_string* %1489, %nyx_string** %1475
  br label %merge319
else318:
  %1490 = load %nyx_string*, %nyx_string** %1473
  %1491 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1492 = call %nyx_string* @nyx_string_concat(%nyx_string* %1490, %nyx_string* %1491)
  %1493 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %1494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1493, i64 7)
  %1495 = call %nyx_string* @nyx_string_concat(%nyx_string* %1492, %nyx_string* %1494)
  store %nyx_string* %1495, %nyx_string** %1475
  br label %merge319
merge319:
  %1496 = getelementptr [9 x i8], [9 x i8]* @.str125, i32 0, i32 0
  %1497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1496, i64 8)
  %1498 = load %nyx_string*, %nyx_string** %1475
  %1499 = call i8* @nyx_string_to_cstr(%nyx_string* %1497)
  %1500 = call i8* @nyx_string_to_cstr(%nyx_string* %1498)
  %1501 = call i1 @nyx_write_file(i8* %1499, i8* %1500)
  %1502 = getelementptr [19 x i8], [19 x i8]* @.str126, i32 0, i32 0
  %1503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1502, i64 18)
  %1504 = call i8* @nyx_string_to_cstr(%nyx_string* %1503)
  call void @nyx_print_string(i8* %1504)
  br label %merge316
else315:
  br label %merge316
merge316:
  %1505 = getelementptr [10 x i8], [10 x i8]* @.str127, i32 0, i32 0
  %1506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1505, i64 9)
  %1507 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1508 = call %nyx_string* @nyx_string_concat(%nyx_string* %1506, %nyx_string* %1507)
  %1509 = getelementptr [9 x i8], [9 x i8]* @.str128, i32 0, i32 0
  %1510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1509, i64 8)
  %1511 = call %nyx_string* @nyx_string_concat(%nyx_string* %1508, %nyx_string* %1510)
  %1512 = call i8* @nyx_string_to_cstr(%nyx_string* %1511)
  call void @nyx_print_string(i8* %1512)
  ret i1 1
}

define internal %nyx_string* @resolve_seed_home(
) {
  %1513 = getelementptr [9 x i8], [9 x i8]* @.str129, i32 0, i32 0
  %1514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1513, i64 8)
  %1515 = call i8* @nyx_string_to_cstr(%nyx_string* %1514)
  %1516 = call %nyx_string* @nyx_getenv(i8* %1515)
  %1517 = alloca %nyx_string*
  store %nyx_string* %1516, %nyx_string** %1517
  %1518 = load %nyx_string*, %nyx_string** %1517
  %1519 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %1520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1519, i64 0)
  %1521 = call i1 @nyx_string_equals(%nyx_string* %1518, %nyx_string* %1520)
  %1522 = xor i1 %1521, true
  br i1 %1522, label %then320, label %else321
then320:
  %1523 = load %nyx_string*, %nyx_string** %1517
  ret %nyx_string* %1523
else321:
  br label %merge322
merge322:
  %1524 = getelementptr [5 x i8], [5 x i8]* @.str131, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1524, i64 4)
  %1526 = call i8* @nyx_string_to_cstr(%nyx_string* %1525)
  %1527 = call %nyx_string* @nyx_getenv(i8* %1526)
  %1528 = alloca %nyx_string*
  store %nyx_string* %1527, %nyx_string** %1528
  %1529 = load %nyx_string*, %nyx_string** %1528
  %1530 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1530, i64 0)
  %1532 = call i1 @nyx_string_equals(%nyx_string* %1529, %nyx_string* %1531)
  %1533 = xor i1 %1532, true
  br i1 %1533, label %then323, label %else324
then323:
  %1534 = load %nyx_string*, %nyx_string** %1528
  %1535 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %1536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1535, i64 5)
  %1537 = call %nyx_string* @nyx_string_concat(%nyx_string* %1534, %nyx_string* %1536)
  %1538 = alloca %nyx_string*
  store %nyx_string* %1537, %nyx_string** %1538
  %1539 = load %nyx_string*, %nyx_string** %1538
  %1540 = getelementptr [11 x i8], [11 x i8]* @.str134, i32 0, i32 0
  %1541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1540, i64 10)
  %1542 = call %nyx_string* @nyx_string_concat(%nyx_string* %1539, %nyx_string* %1541)
  %1543 = call i8* @nyx_string_to_cstr(%nyx_string* %1542)
  %1544 = call i1 @nyx_file_exists(i8* %1543)
  br i1 %1544, label %then326, label %else327
then326:
  %1545 = load %nyx_string*, %nyx_string** %1538
  ret %nyx_string* %1545
else327:
  br label %merge328
merge328:
  br label %merge325
else324:
  br label %merge325
merge325:
  %1546 = getelementptr [14 x i8], [14 x i8]* @.str135, i32 0, i32 0
  %1547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1546, i64 13)
  %1548 = call i8* @nyx_string_to_cstr(%nyx_string* %1547)
  %1549 = call i1 @nyx_file_exists(i8* %1548)
  br i1 %1549, label %then329, label %else330
then329:
  %1550 = getelementptr [2 x i8], [2 x i8]* @.str136, i32 0, i32 0
  %1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1550, i64 1)
  ret %nyx_string* %1551
else330:
  br label %merge331
merge331:
  %1552 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %1553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1552, i64 0)
  ret %nyx_string* %1553
}

define internal %nyx_string* @seed_stamp(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1554 = getelementptr [19 x i8], [19 x i8]* @.str138, i32 0, i32 0
  %1555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1554, i64 18)
  %1556 = call %nyx_string* @toolchain_version()
  %1557 = call %nyx_string* @nyx_string_concat(%nyx_string* %1555, %nyx_string* %1556)
  %1558 = getelementptr [12 x i8], [12 x i8]* @.str139, i32 0, i32 0
  %1559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1558, i64 11)
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1557, %nyx_string* %1559)
  %1561 = load %nyx_string*, %nyx_string** %lang.ptr
  %1562 = call %nyx_string* @nyx_string_concat(%nyx_string* %1560, %nyx_string* %1561)
  %1563 = getelementptr [6 x i8], [6 x i8]* @.str140, i32 0, i32 0
  %1564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1563, i64 5)
  %1565 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1564)
  ret %nyx_string* %1565
}

define internal %nyx_string* @project_lang(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1566 = load %nyx_string*, %nyx_string** %dir.ptr
  %1567 = getelementptr [11 x i8], [11 x i8]* @.str141, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1567, i64 10)
  %1569 = call %nyx_string* @nyx_string_concat(%nyx_string* %1566, %nyx_string* %1568)
  %1570 = alloca %nyx_string*
  store %nyx_string* %1569, %nyx_string** %1570
  %1571 = load %nyx_string*, %nyx_string** %1570
  %1572 = call i8* @nyx_string_to_cstr(%nyx_string* %1571)
  %1573 = call i1 @nyx_file_exists(i8* %1572)
  %1574 = icmp eq i1 %1573, 0
  br i1 %1574, label %then332, label %else333
then332:
  %1575 = getelementptr [3 x i8], [3 x i8]* @.str142, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1575, i64 2)
  ret %nyx_string* %1576
else333:
  br label %merge334
merge334:
  %1577 = load %nyx_string*, %nyx_string** %1570
  %1578 = call i8* @nyx_string_to_cstr(%nyx_string* %1577)
  %1579 = call %nyx_string* @nyx_read_file(i8* %1578)
  %1580 = alloca %nyx_string*
  store %nyx_string* %1579, %nyx_string** %1580
  %1581 = getelementptr [11 x i8], [11 x i8]* @.str143, i32 0, i32 0
  %1582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1581, i64 10)
  %1583 = alloca %nyx_string*
  store %nyx_string* %1582, %nyx_string** %1583
  %1584 = load %nyx_string*, %nyx_string** %1580
  %1585 = load %nyx_string*, %nyx_string** %1583
  %1586 = call i64 @nyx_string_index_of(%nyx_string* %1584, %nyx_string* %1585)
  %1587 = alloca i64
  store i64 %1586, i64* %1587
  %1588 = load i64, i64* %1587
  %1589 = icmp slt i64 %1588, 0
  br i1 %1589, label %then335, label %else336
then335:
  %1590 = getelementptr [3 x i8], [3 x i8]* @.str144, i32 0, i32 0
  %1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1590, i64 2)
  ret %nyx_string* %1591
else336:
  br label %merge337
merge337:
  %1592 = load i64, i64* %1587
  %1593 = load %nyx_string*, %nyx_string** %1583
  %1594 = call i64 @nyx_string_byte_length(%nyx_string* %1593)
  %1595 = add i64 %1592, %1594
  %1596 = alloca i64
  store i64 %1595, i64* %1596
  %1597 = load i64, i64* %1596
  %1598 = add i64 %1597, 2
  %1599 = load %nyx_string*, %nyx_string** %1580
  %1600 = call i64 @nyx_string_byte_length(%nyx_string* %1599)
  %1601 = icmp sgt i64 %1598, %1600
  br i1 %1601, label %then338, label %else339
then338:
  %1602 = getelementptr [3 x i8], [3 x i8]* @.str145, i32 0, i32 0
  %1603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1602, i64 2)
  ret %nyx_string* %1603
else339:
  br label %merge340
merge340:
  %1604 = load %nyx_string*, %nyx_string** %1580
  %1605 = load i64, i64* %1596
  %1606 = load i64, i64* %1596
  %1607 = add i64 %1606, 2
  %1608 = call %nyx_string* @nyx_string_substring(%nyx_string* %1604, i64 %1605, i64 %1607)
  %1609 = alloca %nyx_string*
  store %nyx_string* %1608, %nyx_string** %1609
  %1610 = load %nyx_string*, %nyx_string** %1609
  %1611 = getelementptr [3 x i8], [3 x i8]* @.str146, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1611, i64 2)
  %1613 = call i1 @nyx_string_equals(%nyx_string* %1610, %nyx_string* %1612)
  br i1 %1613, label %then341, label %else342
then341:
  %1614 = getelementptr [3 x i8], [3 x i8]* @.str147, i32 0, i32 0
  %1615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1614, i64 2)
  ret %nyx_string* %1615
else342:
  br label %merge343
merge343:
  %1616 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %1617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1616, i64 2)
  ret %nyx_string* %1617
}

define internal %nyx_string* @seed_body(
%nyx_string* %content.param, %nyx_string* %lang.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1618 = load %nyx_string*, %nyx_string** %content.ptr
  %1619 = alloca %nyx_string*
  store %nyx_string* %1618, %nyx_string** %1619
  %1620 = load %nyx_string*, %nyx_string** %1619
  %1621 = call i64 @nyx_string_byte_length(%nyx_string* %1620)
  %1622 = alloca i64
  store i64 %1621, i64* %1622
  %1623 = alloca i1
  store i1 1, i1* %1623
  %1624 = load i64, i64* %1622
  %1625 = icmp sgt i64 %1624, 0
  br i1 %1625, label %then344, label %else345
then344:
  %1626 = load %nyx_string*, %nyx_string** %1619
  %1627 = load i64, i64* %1622
  %1628 = sub i64 %1627, 1
  %1629 = load i64, i64* %1622
  %1630 = call %nyx_string* @nyx_string_substring(%nyx_string* %1626, i64 %1628, i64 %1629)
  %1631 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %1632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1631, i64 1)
  %1633 = call i1 @nyx_string_equals(%nyx_string* %1630, %nyx_string* %1632)
  br i1 %1633, label %then347, label %else348
then347:
  store i1 0, i1* %1623
  br label %merge349
else348:
  br label %merge349
merge349:
  br label %merge346
else345:
  br label %merge346
merge346:
  %1634 = load i1, i1* %1623
  br i1 %1634, label %then350, label %else351
then350:
  %1635 = load %nyx_string*, %nyx_string** %1619
  %1636 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %1637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1636, i64 1)
  %1638 = call %nyx_string* @nyx_string_concat(%nyx_string* %1635, %nyx_string* %1637)
  store %nyx_string* %1638, %nyx_string** %1619
  br label %merge352
else351:
  br label %merge352
merge352:
  %1639 = load %nyx_string*, %nyx_string** %1619
  %1640 = getelementptr [2 x i8], [2 x i8]* @.str151, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1640, i64 1)
  %1642 = call %nyx_string* @nyx_string_concat(%nyx_string* %1639, %nyx_string* %1641)
  %1643 = load %nyx_string*, %nyx_string** %lang.ptr
  %1644 = call %nyx_string* @seed_stamp(%nyx_string* %1643)
  %1645 = call %nyx_string* @nyx_string_concat(%nyx_string* %1642, %nyx_string* %1644)
  ret %nyx_string* %1645
}

define internal i64 @seed_file(
%nyx_string* %dst.param, %nyx_string* %content.param, %nyx_string* %lang.param) {
  %dst.ptr = alloca %nyx_string*
  store %nyx_string* %dst.param, %nyx_string** %dst.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %1646 = load %nyx_string*, %nyx_string** %dst.ptr
  %1647 = load %nyx_string*, %nyx_string** %content.ptr
  %1648 = load %nyx_string*, %nyx_string** %lang.ptr
  %1649 = call %nyx_string* @seed_body(%nyx_string* %1647, %nyx_string* %1648)
  %1650 = call i8* @nyx_string_to_cstr(%nyx_string* %1646)
  %1651 = call i8* @nyx_string_to_cstr(%nyx_string* %1649)
  %1652 = call i1 @nyx_write_file(i8* %1650, i8* %1651)
  ret i64 0
}

define internal i64 @seed_gitignore(
%nyx_string* %dir.param, %nyx_string* %project_name.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %project_name.ptr = alloca %nyx_string*
  store %nyx_string* %project_name.param, %nyx_string** %project_name.ptr
  %1653 = call %nyx_string* @resolve_seed_home()
  %1654 = alloca %nyx_string*
  store %nyx_string* %1653, %nyx_string** %1654
  %1655 = load %nyx_string*, %nyx_string** %1654
  %1656 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %1657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1656, i64 0)
  %1658 = call i1 @nyx_string_equals(%nyx_string* %1655, %nyx_string* %1657)
  br i1 %1658, label %then353, label %else354
then353:
  ret i64 0
else354:
  br label %merge355
merge355:
  %1659 = load %nyx_string*, %nyx_string** %1654
  %1660 = getelementptr [21 x i8], [21 x i8]* @.str153, i32 0, i32 0
  %1661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1660, i64 20)
  %1662 = call %nyx_string* @nyx_string_concat(%nyx_string* %1659, %nyx_string* %1661)
  %1663 = alloca %nyx_string*
  store %nyx_string* %1662, %nyx_string** %1663
  %1664 = load %nyx_string*, %nyx_string** %1663
  %1665 = call i8* @nyx_string_to_cstr(%nyx_string* %1664)
  %1666 = call i1 @nyx_file_exists(i8* %1665)
  %1667 = icmp eq i1 %1666, 0
  br i1 %1667, label %then356, label %else357
then356:
  ret i64 0
else357:
  br label %merge358
merge358:
  %1668 = load %nyx_string*, %nyx_string** %dir.ptr
  %1669 = getelementptr [12 x i8], [12 x i8]* @.str154, i32 0, i32 0
  %1670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1669, i64 11)
  %1671 = call %nyx_string* @nyx_string_concat(%nyx_string* %1668, %nyx_string* %1670)
  %1672 = call i8* @nyx_string_to_cstr(%nyx_string* %1671)
  %1673 = call i1 @nyx_file_exists(i8* %1672)
  br i1 %1673, label %then359, label %else360
then359:
  ret i64 0
else360:
  br label %merge361
merge361:
  %1674 = load %nyx_string*, %nyx_string** %1663
  %1675 = call i8* @nyx_string_to_cstr(%nyx_string* %1674)
  %1676 = call %nyx_string* @nyx_read_file(i8* %1675)
  %1677 = alloca %nyx_string*
  store %nyx_string* %1676, %nyx_string** %1677
  %1678 = load %nyx_string*, %nyx_string** %dir.ptr
  %1679 = getelementptr [12 x i8], [12 x i8]* @.str155, i32 0, i32 0
  %1680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1679, i64 11)
  %1681 = call %nyx_string* @nyx_string_concat(%nyx_string* %1678, %nyx_string* %1680)
  %1682 = load %nyx_string*, %nyx_string** %1677
  %1683 = getelementptr [11 x i8], [11 x i8]* @.str156, i32 0, i32 0
  %1684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1683, i64 10)
  %1685 = load %nyx_string*, %nyx_string** %project_name.ptr
  %1686 = call %nyx_string* @nyx_string_replace(%nyx_string* %1682, %nyx_string* %1684, %nyx_string* %1685)
  %1687 = call i8* @nyx_string_to_cstr(%nyx_string* %1681)
  %1688 = call i8* @nyx_string_to_cstr(%nyx_string* %1686)
  %1689 = call i1 @nyx_write_file(i8* %1687, i8* %1688)
  ret i64 0
}

define internal i1 @validate_agents(
%nyx_string* %agents.param) {
  %agents.ptr = alloca %nyx_string*
  store %nyx_string* %agents.param, %nyx_string** %agents.ptr
  %1690 = load %nyx_string*, %nyx_string** %agents.ptr
  %1691 = getelementptr [1 x i8], [1 x i8]* @.str157, i32 0, i32 0
  %1692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1691, i64 0)
  %1693 = call i1 @nyx_string_equals(%nyx_string* %1690, %nyx_string* %1692)
  br i1 %1693, label %then362, label %else363
then362:
  ret i1 1
else363:
  br label %merge364
merge364:
  %1694 = load %nyx_string*, %nyx_string** %agents.ptr
  %1695 = getelementptr [2 x i8], [2 x i8]* @.str158, i32 0, i32 0
  %1696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1695, i64 1)
  %1697 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1694, %nyx_string* %1696)
  %1698 = alloca { i64, i8* }*
  store { i64, i8* }* %1697, { i64, i8* }** %1698
  %1699 = alloca i64
  store i64 0, i64* %1699
  %1700 = getelementptr [7 x i8], [7 x i8]* @.str159, i32 0, i32 0
  %1701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1700, i64 6)
  %1702 = alloca %nyx_string*
  store %nyx_string* %1701, %nyx_string** %1702
  %1703 = getelementptr [7 x i8], [7 x i8]* @.str160, i32 0, i32 0
  %1704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1703, i64 6)
  %1705 = alloca %nyx_string*
  store %nyx_string* %1704, %nyx_string** %1705
  %1706 = getelementptr [8 x i8], [8 x i8]* @.str161, i32 0, i32 0
  %1707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1706, i64 7)
  %1708 = alloca %nyx_string*
  store %nyx_string* %1707, %nyx_string** %1708
  %1709 = getelementptr [28 x i8], [28 x i8]* @.str162, i32 0, i32 0
  %1710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1709, i64 27)
  %1711 = alloca %nyx_string*
  store %nyx_string* %1710, %nyx_string** %1711
  %1712 = getelementptr [46 x i8], [46 x i8]* @.str163, i32 0, i32 0
  %1713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1712, i64 45)
  %1714 = alloca %nyx_string*
  store %nyx_string* %1713, %nyx_string** %1714
  %1715 = getelementptr [72 x i8], [72 x i8]* @.str164, i32 0, i32 0
  %1716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1715, i64 71)
  %1717 = alloca %nyx_string*
  store %nyx_string* %1716, %nyx_string** %1717
  %1718 = call i8* @llvm.stacksave()
  br label %while_cond365
while_cond365:
  %1719 = load i64, i64* %1699
  %1720 = load { i64, i8* }*, { i64, i8* }** %1698
  %1721 = call i64 @nyx_array_length({ i64, i8* }* %1720)
  %1722 = icmp slt i64 %1719, %1721
  br i1 %1722, label %while_body366, label %while_end367
while_body366:
  call void @llvm.stackrestore(i8* %1718)
  %1723 = load { i64, i8* }*, { i64, i8* }** %1698
  %1724 = load i64, i64* %1699
  %1725 = call i64 @nyx_array_get_checked({ i64, i8* }* %1723, i64 %1724, i64 2)
  %1726 = inttoptr i64 %1725 to %nyx_string*
  %1727 = alloca %nyx_string*
  store %nyx_string* %1726, %nyx_string** %1727
  %1728 = load %nyx_string*, %nyx_string** %1727
  %1729 = call %nyx_string* @nyx_string_trim(%nyx_string* %1728)
  %1730 = alloca %nyx_string*
  store %nyx_string* %1729, %nyx_string** %1730
  %1731 = alloca i1
  store i1 false, i1* %1731
  %1732 = alloca i1
  store i1 false, i1* %1732
  %1733 = load %nyx_string*, %nyx_string** %1730
  %1734 = load %nyx_string*, %nyx_string** %1702
  %1735 = call i1 @nyx_string_equals(%nyx_string* %1733, %nyx_string* %1734)
  %1736 = xor i1 %1735, true
  br i1 %1736, label %sc_and_rhs368, label %sc_and_end369
sc_and_rhs368:
  %1737 = load %nyx_string*, %nyx_string** %1730
  %1738 = load %nyx_string*, %nyx_string** %1705
  %1739 = call i1 @nyx_string_equals(%nyx_string* %1737, %nyx_string* %1738)
  %1740 = xor i1 %1739, true
  store i1 %1740, i1* %1732
  br label %sc_and_end369
sc_and_end369:
  %1741 = load i1, i1* %1732
  br i1 %1741, label %sc_and_rhs370, label %sc_and_end371
sc_and_rhs370:
  %1742 = load %nyx_string*, %nyx_string** %1730
  %1743 = load %nyx_string*, %nyx_string** %1708
  %1744 = call i1 @nyx_string_equals(%nyx_string* %1742, %nyx_string* %1743)
  %1745 = xor i1 %1744, true
  store i1 %1745, i1* %1731
  br label %sc_and_end371
sc_and_end371:
  %1746 = load i1, i1* %1731
  br i1 %1746, label %then372, label %else373
then372:
  %1747 = load %nyx_string*, %nyx_string** %1711
  %1748 = load %nyx_string*, %nyx_string** %1730
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1747, %nyx_string* %1748)
  %1750 = load %nyx_string*, %nyx_string** %1714
  %1751 = call %nyx_string* @nyx_string_concat(%nyx_string* %1749, %nyx_string* %1750)
  %1752 = call i8* @nyx_string_to_cstr(%nyx_string* %1751)
  call void @nyx_print_string(i8* %1752)
  %1753 = load %nyx_string*, %nyx_string** %1717
  %1754 = call i8* @nyx_string_to_cstr(%nyx_string* %1753)
  call void @nyx_print_string(i8* %1754)
  ret i1 0
else373:
  br label %merge374
merge374:
  %1755 = load i64, i64* %1699
  %1756 = add i64 %1755, 1
  store i64 %1756, i64* %1699
  br label %while_cond365
while_end367:
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
  %1757 = load %nyx_string*, %nyx_string** %agents.ptr
  %1758 = getelementptr [1 x i8], [1 x i8]* @.str165, i32 0, i32 0
  %1759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1758, i64 0)
  %1760 = call i1 @nyx_string_equals(%nyx_string* %1757, %nyx_string* %1759)
  br i1 %1760, label %then375, label %else376
then375:
  ret i64 0
else376:
  br label %merge377
merge377:
  %1761 = call %nyx_string* @resolve_seed_home()
  %1762 = alloca %nyx_string*
  store %nyx_string* %1761, %nyx_string** %1762
  %1763 = load %nyx_string*, %nyx_string** %1762
  %1764 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %1765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1764, i64 0)
  %1766 = call i1 @nyx_string_equals(%nyx_string* %1763, %nyx_string* %1765)
  br i1 %1766, label %then378, label %else379
then378:
  ret i64 0
else379:
  br label %merge380
merge380:
  %1767 = load %nyx_string*, %nyx_string** %1762
  %1768 = getelementptr [20 x i8], [20 x i8]* @.str167, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1768, i64 19)
  %1770 = call %nyx_string* @nyx_string_concat(%nyx_string* %1767, %nyx_string* %1769)
  %1771 = alloca %nyx_string*
  store %nyx_string* %1770, %nyx_string** %1771
  %1772 = load %nyx_string*, %nyx_string** %agents.ptr
  %1773 = getelementptr [2 x i8], [2 x i8]* @.str168, i32 0, i32 0
  %1774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1773, i64 1)
  %1775 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1772, %nyx_string* %1774)
  %1776 = alloca { i64, i8* }*
  store { i64, i8* }* %1775, { i64, i8* }** %1776
  %1777 = alloca i64
  store i64 0, i64* %1777
  %1778 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %1779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1778, i64 0)
  %1780 = alloca %nyx_string*
  store %nyx_string* %1779, %nyx_string** %1780
  %1781 = getelementptr [2 x i8], [2 x i8]* @.str170, i32 0, i32 0
  %1782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1781, i64 1)
  %1783 = alloca %nyx_string*
  store %nyx_string* %1782, %nyx_string** %1783
  %1784 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1784, i64 1)
  %1786 = alloca %nyx_string*
  store %nyx_string* %1785, %nyx_string** %1786
  %1787 = getelementptr [4 x i8], [4 x i8]* @.str172, i32 0, i32 0
  %1788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1787, i64 3)
  %1789 = alloca %nyx_string*
  store %nyx_string* %1788, %nyx_string** %1789
  %1790 = getelementptr [7 x i8], [7 x i8]* @.str173, i32 0, i32 0
  %1791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1790, i64 6)
  %1792 = alloca %nyx_string*
  store %nyx_string* %1791, %nyx_string** %1792
  %1793 = getelementptr [11 x i8], [11 x i8]* @.str174, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1793, i64 10)
  %1795 = alloca %nyx_string*
  store %nyx_string* %1794, %nyx_string** %1795
  %1796 = getelementptr [7 x i8], [7 x i8]* @.str175, i32 0, i32 0
  %1797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1796, i64 6)
  %1798 = alloca %nyx_string*
  store %nyx_string* %1797, %nyx_string** %1798
  %1799 = getelementptr [14 x i8], [14 x i8]* @.str176, i32 0, i32 0
  %1800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1799, i64 13)
  %1801 = alloca %nyx_string*
  store %nyx_string* %1800, %nyx_string** %1801
  %1802 = getelementptr [8 x i8], [8 x i8]* @.str177, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1802, i64 7)
  %1804 = alloca %nyx_string*
  store %nyx_string* %1803, %nyx_string** %1804
  %1805 = getelementptr [11 x i8], [11 x i8]* @.str178, i32 0, i32 0
  %1806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1805, i64 10)
  %1807 = alloca %nyx_string*
  store %nyx_string* %1806, %nyx_string** %1807
  %1808 = getelementptr [10 x i8], [10 x i8]* @.str179, i32 0, i32 0
  %1809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1808, i64 9)
  %1810 = alloca %nyx_string*
  store %nyx_string* %1809, %nyx_string** %1810
  %1811 = getelementptr [33 x i8], [33 x i8]* @.str180, i32 0, i32 0
  %1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1811, i64 32)
  %1813 = alloca %nyx_string*
  store %nyx_string* %1812, %nyx_string** %1813
  %1814 = getelementptr [44 x i8], [44 x i8]* @.str181, i32 0, i32 0
  %1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1814, i64 43)
  %1816 = alloca %nyx_string*
  store %nyx_string* %1815, %nyx_string** %1816
  %1817 = getelementptr [4 x i8], [4 x i8]* @.str182, i32 0, i32 0
  %1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1817, i64 3)
  %1819 = alloca %nyx_string*
  store %nyx_string* %1818, %nyx_string** %1819
  %1820 = getelementptr [20 x i8], [20 x i8]* @.str183, i32 0, i32 0
  %1821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1820, i64 19)
  %1822 = alloca %nyx_string*
  store %nyx_string* %1821, %nyx_string** %1822
  %1823 = call i8* @llvm.stacksave()
  br label %while_cond381
while_cond381:
  %1824 = load i64, i64* %1777
  %1825 = load { i64, i8* }*, { i64, i8* }** %1776
  %1826 = call i64 @nyx_array_length({ i64, i8* }* %1825)
  %1827 = icmp slt i64 %1824, %1826
  br i1 %1827, label %while_body382, label %while_end383
while_body382:
  call void @llvm.stackrestore(i8* %1823)
  %1828 = load { i64, i8* }*, { i64, i8* }** %1776
  %1829 = load i64, i64* %1777
  %1830 = call i64 @nyx_array_get_checked({ i64, i8* }* %1828, i64 %1829, i64 2)
  %1831 = inttoptr i64 %1830 to %nyx_string*
  %1832 = alloca %nyx_string*
  store %nyx_string* %1831, %nyx_string** %1832
  %1833 = load %nyx_string*, %nyx_string** %1832
  %1834 = call %nyx_string* @nyx_string_trim(%nyx_string* %1833)
  %1835 = alloca %nyx_string*
  store %nyx_string* %1834, %nyx_string** %1835
  %1836 = load %nyx_string*, %nyx_string** %1835
  %1837 = load %nyx_string*, %nyx_string** %1780
  %1838 = call i1 @nyx_string_equals(%nyx_string* %1836, %nyx_string* %1837)
  %1839 = xor i1 %1838, true
  br i1 %1839, label %then384, label %else385
then384:
  %1840 = load %nyx_string*, %nyx_string** %1771
  %1841 = load %nyx_string*, %nyx_string** %1783
  %1842 = call %nyx_string* @nyx_string_concat(%nyx_string* %1840, %nyx_string* %1841)
  %1843 = load %nyx_string*, %nyx_string** %1835
  %1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %1842, %nyx_string* %1843)
  %1845 = load %nyx_string*, %nyx_string** %1786
  %1846 = call %nyx_string* @nyx_string_concat(%nyx_string* %1844, %nyx_string* %1845)
  %1847 = load %nyx_string*, %nyx_string** %lang.ptr
  %1848 = call %nyx_string* @nyx_string_concat(%nyx_string* %1846, %nyx_string* %1847)
  %1849 = load %nyx_string*, %nyx_string** %1789
  %1850 = call %nyx_string* @nyx_string_concat(%nyx_string* %1848, %nyx_string* %1849)
  %1851 = alloca %nyx_string*
  store %nyx_string* %1850, %nyx_string** %1851
  %1852 = load %nyx_string*, %nyx_string** %1851
  %1853 = call i8* @nyx_string_to_cstr(%nyx_string* %1852)
  %1854 = call i1 @nyx_file_exists(i8* %1853)
  br i1 %1854, label %then387, label %else388
then387:
  %1855 = load %nyx_string*, %nyx_string** %1851
  %1856 = call i8* @nyx_string_to_cstr(%nyx_string* %1855)
  %1857 = call %nyx_string* @nyx_read_file(i8* %1856)
  %1858 = alloca %nyx_string*
  store %nyx_string* %1857, %nyx_string** %1858
  %1859 = load %nyx_string*, %nyx_string** %1835
  %1860 = load %nyx_string*, %nyx_string** %1792
  %1861 = call i1 @nyx_string_equals(%nyx_string* %1859, %nyx_string* %1860)
  br i1 %1861, label %then390, label %else391
then390:
  %1862 = load %nyx_string*, %nyx_string** %dir.ptr
  %1863 = load %nyx_string*, %nyx_string** %1795
  %1864 = call %nyx_string* @nyx_string_concat(%nyx_string* %1862, %nyx_string* %1863)
  %1865 = load %nyx_string*, %nyx_string** %1858
  %1866 = load %nyx_string*, %nyx_string** %lang.ptr
  %1867 = call i64 @seed_file(%nyx_string* %1864, %nyx_string* %1865, %nyx_string* %1866)
  br label %merge392
else391:
  br label %merge392
merge392:
  %1868 = load %nyx_string*, %nyx_string** %1835
  %1869 = load %nyx_string*, %nyx_string** %1798
  %1870 = call i1 @nyx_string_equals(%nyx_string* %1868, %nyx_string* %1869)
  br i1 %1870, label %then393, label %else394
then393:
  %1871 = load %nyx_string*, %nyx_string** %dir.ptr
  %1872 = load %nyx_string*, %nyx_string** %1801
  %1873 = call %nyx_string* @nyx_string_concat(%nyx_string* %1871, %nyx_string* %1872)
  %1874 = load %nyx_string*, %nyx_string** %1858
  %1875 = load %nyx_string*, %nyx_string** %lang.ptr
  %1876 = call i64 @seed_file(%nyx_string* %1873, %nyx_string* %1874, %nyx_string* %1875)
  br label %merge395
else394:
  br label %merge395
merge395:
  %1877 = load %nyx_string*, %nyx_string** %1835
  %1878 = load %nyx_string*, %nyx_string** %1804
  %1879 = call i1 @nyx_string_equals(%nyx_string* %1877, %nyx_string* %1878)
  br i1 %1879, label %then396, label %else397
then396:
  %1880 = load %nyx_string*, %nyx_string** %1807
  %1881 = load %nyx_string*, %nyx_string** %dir.ptr
  %1882 = call %nyx_string* @nyx_string_concat(%nyx_string* %1880, %nyx_string* %1881)
  %1883 = load %nyx_string*, %nyx_string** %1810
  %1884 = call %nyx_string* @nyx_string_concat(%nyx_string* %1882, %nyx_string* %1883)
  %1885 = call i8* @nyx_string_to_cstr(%nyx_string* %1884)
  %1886 = call %nyx_string* @nyx_exec(i8* %1885)
  %1887 = load %nyx_string*, %nyx_string** %dir.ptr
  %1888 = load %nyx_string*, %nyx_string** %1813
  %1889 = call %nyx_string* @nyx_string_concat(%nyx_string* %1887, %nyx_string* %1888)
  %1890 = load %nyx_string*, %nyx_string** %1858
  %1891 = load %nyx_string*, %nyx_string** %lang.ptr
  %1892 = call i64 @seed_file(%nyx_string* %1889, %nyx_string* %1890, %nyx_string* %1891)
  br label %merge398
else397:
  br label %merge398
merge398:
  br label %merge389
else388:
  %1893 = load %nyx_string*, %nyx_string** %1816
  %1894 = load %nyx_string*, %nyx_string** %1835
  %1895 = call %nyx_string* @nyx_string_concat(%nyx_string* %1893, %nyx_string* %1894)
  %1896 = load %nyx_string*, %nyx_string** %1819
  %1897 = call %nyx_string* @nyx_string_concat(%nyx_string* %1895, %nyx_string* %1896)
  %1898 = load %nyx_string*, %nyx_string** %1851
  %1899 = call %nyx_string* @nyx_string_concat(%nyx_string* %1897, %nyx_string* %1898)
  %1900 = load %nyx_string*, %nyx_string** %1822
  %1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1900)
  %1902 = call i8* @nyx_string_to_cstr(%nyx_string* %1901)
  call void @nyx_print_string(i8* %1902)
  br label %merge389
merge389:
  br label %merge386
else385:
  br label %merge386
merge386:
  %1903 = load i64, i64* %1777
  %1904 = add i64 %1903, 1
  store i64 %1904, i64* %1777
  br label %while_cond381
while_end383:
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
  %1905 = call %nyx_string* @resolve_seed_home()
  %1906 = alloca %nyx_string*
  store %nyx_string* %1905, %nyx_string** %1906
  %1907 = load %nyx_string*, %nyx_string** %1906
  %1908 = getelementptr [11 x i8], [11 x i8]* @.str184, i32 0, i32 0
  %1909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1908, i64 10)
  %1910 = call %nyx_string* @nyx_string_concat(%nyx_string* %1907, %nyx_string* %1909)
  %1911 = alloca %nyx_string*
  store %nyx_string* %1910, %nyx_string** %1911
  %1912 = load %nyx_string*, %nyx_string** %1911
  %1913 = getelementptr [2 x i8], [2 x i8]* @.str185, i32 0, i32 0
  %1914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1913, i64 1)
  %1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %1912, %nyx_string* %1914)
  %1916 = load %nyx_string*, %nyx_string** %lang.ptr
  %1917 = call %nyx_string* @nyx_string_concat(%nyx_string* %1915, %nyx_string* %1916)
  %1918 = alloca %nyx_string*
  store %nyx_string* %1917, %nyx_string** %1918
  %1919 = alloca i1
  store i1 0, i1* %1919
  %1920 = load %nyx_string*, %nyx_string** %1906
  %1921 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %1922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1921, i64 0)
  %1923 = call i1 @nyx_string_equals(%nyx_string* %1920, %nyx_string* %1922)
  %1924 = xor i1 %1923, true
  br i1 %1924, label %then399, label %else400
then399:
  %1925 = load %nyx_string*, %nyx_string** %1918
  %1926 = getelementptr [11 x i8], [11 x i8]* @.str187, i32 0, i32 0
  %1927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1926, i64 10)
  %1928 = call %nyx_string* @nyx_string_concat(%nyx_string* %1925, %nyx_string* %1927)
  %1929 = call i8* @nyx_string_to_cstr(%nyx_string* %1928)
  %1930 = call i1 @nyx_file_exists(i8* %1929)
  br i1 %1930, label %then402, label %else403
then402:
  store i1 1, i1* %1919
  br label %merge404
else403:
  br label %merge404
merge404:
  br label %merge401
else400:
  br label %merge401
merge401:
  %1931 = load i1, i1* %1919
  %1932 = icmp eq i1 %1931, 0
  br i1 %1932, label %then405, label %else406
then405:
  %1933 = getelementptr [74 x i8], [74 x i8]* @.str188, i32 0, i32 0
  %1934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1933, i64 73)
  %1935 = load %nyx_string*, %nyx_string** %lang.ptr
  %1936 = call %nyx_string* @nyx_string_concat(%nyx_string* %1934, %nyx_string* %1935)
  %1937 = getelementptr [84 x i8], [84 x i8]* @.str189, i32 0, i32 0
  %1938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1937, i64 83)
  %1939 = call %nyx_string* @nyx_string_concat(%nyx_string* %1936, %nyx_string* %1938)
  %1940 = call i8* @nyx_string_to_cstr(%nyx_string* %1939)
  call void @nyx_print_string(i8* %1940)
  %1941 = getelementptr [83 x i8], [83 x i8]* @.str190, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1941, i64 82)
  %1943 = call i8* @nyx_string_to_cstr(%nyx_string* %1942)
  call void @nyx_print_string(i8* %1943)
  ret i64 0
else406:
  br label %merge407
merge407:
  %1944 = load %nyx_string*, %nyx_string** %1918
  %1945 = getelementptr [11 x i8], [11 x i8]* @.str191, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1945, i64 10)
  %1947 = call %nyx_string* @nyx_string_concat(%nyx_string* %1944, %nyx_string* %1946)
  %1948 = call i8* @nyx_string_to_cstr(%nyx_string* %1947)
  %1949 = call %nyx_string* @nyx_read_file(i8* %1948)
  %1950 = alloca %nyx_string*
  store %nyx_string* %1949, %nyx_string** %1950
  %1951 = load %nyx_string*, %nyx_string** %dir.ptr
  %1952 = getelementptr [11 x i8], [11 x i8]* @.str192, i32 0, i32 0
  %1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1952, i64 10)
  %1954 = call %nyx_string* @nyx_string_concat(%nyx_string* %1951, %nyx_string* %1953)
  %1955 = load %nyx_string*, %nyx_string** %1950
  %1956 = load %nyx_string*, %nyx_string** %lang.ptr
  %1957 = call i64 @seed_file(%nyx_string* %1954, %nyx_string* %1955, %nyx_string* %1956)
  %1958 = load %nyx_string*, %nyx_string** %dir.ptr
  %1959 = getelementptr [17 x i8], [17 x i8]* @.str193, i32 0, i32 0
  %1960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1959, i64 16)
  %1961 = call %nyx_string* @nyx_string_concat(%nyx_string* %1958, %nyx_string* %1960)
  %1962 = call i1 @run_capabilities(%nyx_string* %1961)
  %1963 = alloca i1
  store i1 %1962, i1* %1963
  %1964 = getelementptr [11 x i8], [11 x i8]* @.str194, i32 0, i32 0
  %1965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1964, i64 10)
  %1966 = load %nyx_string*, %nyx_string** %dir.ptr
  %1967 = call %nyx_string* @nyx_string_concat(%nyx_string* %1965, %nyx_string* %1966)
  %1968 = getelementptr [18 x i8], [18 x i8]* @.str195, i32 0, i32 0
  %1969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1968, i64 17)
  %1970 = call %nyx_string* @nyx_string_concat(%nyx_string* %1967, %nyx_string* %1969)
  %1971 = call i8* @nyx_string_to_cstr(%nyx_string* %1970)
  %1972 = call %nyx_string* @nyx_exec(i8* %1971)
  %1973 = load %nyx_string*, %nyx_string** %1911
  %1974 = getelementptr [20 x i8], [20 x i8]* @.str196, i32 0, i32 0
  %1975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1974, i64 19)
  %1976 = call %nyx_string* @nyx_string_concat(%nyx_string* %1973, %nyx_string* %1975)
  %1977 = alloca %nyx_string*
  store %nyx_string* %1976, %nyx_string** %1977
  %1978 = load %nyx_string*, %nyx_string** %1977
  %1979 = call i8* @nyx_string_to_cstr(%nyx_string* %1978)
  %1980 = call i1 @nyx_file_exists(i8* %1979)
  br i1 %1980, label %then408, label %else409
then408:
  %1981 = load %nyx_string*, %nyx_string** %1977
  %1982 = call i8* @nyx_string_to_cstr(%nyx_string* %1981)
  %1983 = call %nyx_string* @nyx_read_file(i8* %1982)
  %1984 = alloca %nyx_string*
  store %nyx_string* %1983, %nyx_string** %1984
  %1985 = load %nyx_string*, %nyx_string** %dir.ptr
  %1986 = getelementptr [17 x i8], [17 x i8]* @.str197, i32 0, i32 0
  %1987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1986, i64 16)
  %1988 = call %nyx_string* @nyx_string_concat(%nyx_string* %1985, %nyx_string* %1987)
  %1989 = load %nyx_string*, %nyx_string** %1984
  %1990 = load %nyx_string*, %nyx_string** %lang.ptr
  %1991 = call i64 @seed_file(%nyx_string* %1988, %nyx_string* %1989, %nyx_string* %1990)
  br label %merge410
else409:
  %1992 = getelementptr [14 x i8], [14 x i8]* @.str198, i32 0, i32 0
  %1993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1992, i64 13)
  %1994 = load %nyx_string*, %nyx_string** %1977
  %1995 = call %nyx_string* @nyx_string_concat(%nyx_string* %1993, %nyx_string* %1994)
  %1996 = getelementptr [71 x i8], [71 x i8]* @.str199, i32 0, i32 0
  %1997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1996, i64 70)
  %1998 = call %nyx_string* @nyx_string_concat(%nyx_string* %1995, %nyx_string* %1997)
  %1999 = call i8* @nyx_string_to_cstr(%nyx_string* %1998)
  call void @nyx_print_string(i8* %1999)
  %2000 = getelementptr [111 x i8], [111 x i8]* @.str200, i32 0, i32 0
  %2001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2000, i64 110)
  %2002 = call i8* @nyx_string_to_cstr(%nyx_string* %2001)
  call void @nyx_print_string(i8* %2002)
  br label %merge410
merge410:
  %2003 = load %nyx_string*, %nyx_string** %1918
  %2004 = getelementptr [17 x i8], [17 x i8]* @.str201, i32 0, i32 0
  %2005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2004, i64 16)
  %2006 = call %nyx_string* @nyx_string_concat(%nyx_string* %2003, %nyx_string* %2005)
  %2007 = alloca %nyx_string*
  store %nyx_string* %2006, %nyx_string** %2007
  %2008 = load %nyx_string*, %nyx_string** %2007
  %2009 = call i8* @nyx_string_to_cstr(%nyx_string* %2008)
  %2010 = call i1 @nyx_file_exists(i8* %2009)
  br i1 %2010, label %then411, label %else412
then411:
  %2011 = load %nyx_string*, %nyx_string** %2007
  %2012 = call i8* @nyx_string_to_cstr(%nyx_string* %2011)
  %2013 = call { i64, i8* }* @nyx_readdir(i8* %2012)
  %2014 = alloca { i64, i8* }*
  store { i64, i8* }* %2013, { i64, i8* }** %2014
  %2015 = alloca i64
  store i64 0, i64* %2015
  %2016 = getelementptr [2 x i8], [2 x i8]* @.str202, i32 0, i32 0
  %2017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2016, i64 1)
  %2018 = alloca %nyx_string*
  store %nyx_string* %2017, %nyx_string** %2018
  %2019 = getelementptr [18 x i8], [18 x i8]* @.str203, i32 0, i32 0
  %2020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2019, i64 17)
  %2021 = alloca %nyx_string*
  store %nyx_string* %2020, %nyx_string** %2021
  %2022 = call i8* @llvm.stacksave()
  br label %while_cond414
while_cond414:
  %2023 = load i64, i64* %2015
  %2024 = load { i64, i8* }*, { i64, i8* }** %2014
  %2025 = call i64 @nyx_array_length({ i64, i8* }* %2024)
  %2026 = icmp slt i64 %2023, %2025
  br i1 %2026, label %while_body415, label %while_end416
while_body415:
  call void @llvm.stackrestore(i8* %2022)
  %2027 = load { i64, i8* }*, { i64, i8* }** %2014
  %2028 = load i64, i64* %2015
  %2029 = call i64 @nyx_array_get_checked({ i64, i8* }* %2027, i64 %2028, i64 2)
  %2030 = inttoptr i64 %2029 to %nyx_string*
  %2031 = alloca %nyx_string*
  store %nyx_string* %2030, %nyx_string** %2031
  %2032 = load %nyx_string*, %nyx_string** %2007
  %2033 = load %nyx_string*, %nyx_string** %2018
  %2034 = call %nyx_string* @nyx_string_concat(%nyx_string* %2032, %nyx_string* %2033)
  %2035 = load %nyx_string*, %nyx_string** %2031
  %2036 = call %nyx_string* @nyx_string_concat(%nyx_string* %2034, %nyx_string* %2035)
  %2037 = alloca %nyx_string*
  store %nyx_string* %2036, %nyx_string** %2037
  %2038 = load %nyx_string*, %nyx_string** %2037
  %2039 = call i8* @nyx_string_to_cstr(%nyx_string* %2038)
  %2040 = call i1 @nyx_file_exists(i8* %2039)
  br i1 %2040, label %then417, label %else418
then417:
  %2041 = load %nyx_string*, %nyx_string** %2037
  %2042 = call i8* @nyx_string_to_cstr(%nyx_string* %2041)
  %2043 = call %nyx_string* @nyx_read_file(i8* %2042)
  %2044 = alloca %nyx_string*
  store %nyx_string* %2043, %nyx_string** %2044
  %2045 = load %nyx_string*, %nyx_string** %dir.ptr
  %2046 = load %nyx_string*, %nyx_string** %2021
  %2047 = call %nyx_string* @nyx_string_concat(%nyx_string* %2045, %nyx_string* %2046)
  %2048 = load %nyx_string*, %nyx_string** %2031
  %2049 = call %nyx_string* @nyx_string_concat(%nyx_string* %2047, %nyx_string* %2048)
  %2050 = load %nyx_string*, %nyx_string** %2044
  %2051 = load %nyx_string*, %nyx_string** %lang.ptr
  %2052 = call i64 @seed_file(%nyx_string* %2049, %nyx_string* %2050, %nyx_string* %2051)
  br label %merge419
else418:
  br label %merge419
merge419:
  %2053 = load i64, i64* %2015
  %2054 = add i64 %2053, 1
  store i64 %2054, i64* %2015
  br label %while_cond414
while_end416:
  br label %merge413
else412:
  br label %merge413
merge413:
  %2055 = load %nyx_string*, %nyx_string** %dir.ptr
  %2056 = load %nyx_string*, %nyx_string** %lang.ptr
  %2057 = load %nyx_string*, %nyx_string** %agents.ptr
  %2058 = call i64 @seed_adapters(%nyx_string* %2055, %nyx_string* %2056, %nyx_string* %2057)
  ret i64 0
}

define internal %nyx_string* @sdd_generated_marker(
) {
  %2059 = getelementptr [28 x i8], [28 x i8]* @.str204, i32 0, i32 0
  %2060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2059, i64 27)
  ret %nyx_string* %2060
}

define internal %nyx_string* @sdd_msg(
%nyx_string* %lang.param, %nyx_string* %en.param, %nyx_string* %es.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %2061 = load %nyx_string*, %nyx_string** %lang.ptr
  %2062 = getelementptr [3 x i8], [3 x i8]* @.str205, i32 0, i32 0
  %2063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2062, i64 2)
  %2064 = call i1 @nyx_string_equals(%nyx_string* %2061, %nyx_string* %2063)
  br i1 %2064, label %then420, label %else421
then420:
  %2065 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %2065
else421:
  br label %merge422
merge422:
  %2066 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %2066
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
  %2067 = load %nyx_string*, %nyx_string** %dst.ptr
  %2068 = call i8* @nyx_string_to_cstr(%nyx_string* %2067)
  %2069 = call i1 @nyx_file_exists(i8* %2068)
  br i1 %2069, label %then423, label %else424
then423:
  %2070 = load %nyx_string*, %nyx_string** %lang.ptr
  %2071 = getelementptr [28 x i8], [28 x i8]* @.str206, i32 0, i32 0
  %2072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2071, i64 27)
  %2073 = load %nyx_string*, %nyx_string** %dst.ptr
  %2074 = call %nyx_string* @nyx_string_concat(%nyx_string* %2072, %nyx_string* %2073)
  %2075 = getelementptr [25 x i8], [25 x i8]* @.str207, i32 0, i32 0
  %2076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2075, i64 24)
  %2077 = load %nyx_string*, %nyx_string** %dst.ptr
  %2078 = call %nyx_string* @nyx_string_concat(%nyx_string* %2076, %nyx_string* %2077)
  %2079 = call %nyx_string* @sdd_msg(%nyx_string* %2070, %nyx_string* %2074, %nyx_string* %2078)
  %2080 = call i8* @nyx_string_to_cstr(%nyx_string* %2079)
  call void @nyx_print_string(i8* %2080)
  ret i1 0
else424:
  br label %merge425
merge425:
  %2081 = load %nyx_string*, %nyx_string** %tpl_dir.ptr
  %2082 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %2083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2082, i64 1)
  %2084 = call %nyx_string* @nyx_string_concat(%nyx_string* %2081, %nyx_string* %2083)
  %2085 = load %nyx_string*, %nyx_string** %name.ptr
  %2086 = call %nyx_string* @nyx_string_concat(%nyx_string* %2084, %nyx_string* %2085)
  %2087 = alloca %nyx_string*
  store %nyx_string* %2086, %nyx_string** %2087
  %2088 = load %nyx_string*, %nyx_string** %2087
  %2089 = call i8* @nyx_string_to_cstr(%nyx_string* %2088)
  %2090 = call i1 @nyx_file_exists(i8* %2089)
  %2091 = icmp eq i1 %2090, 0
  br i1 %2091, label %then426, label %else427
then426:
  %2092 = getelementptr [27 x i8], [27 x i8]* @.str209, i32 0, i32 0
  %2093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2092, i64 26)
  %2094 = load %nyx_string*, %nyx_string** %2087
  %2095 = call %nyx_string* @nyx_string_concat(%nyx_string* %2093, %nyx_string* %2094)
  %2096 = getelementptr [19 x i8], [19 x i8]* @.str210, i32 0, i32 0
  %2097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2096, i64 18)
  %2098 = call %nyx_string* @nyx_string_concat(%nyx_string* %2095, %nyx_string* %2097)
  %2099 = load %nyx_string*, %nyx_string** %dst.ptr
  %2100 = call %nyx_string* @nyx_string_concat(%nyx_string* %2098, %nyx_string* %2099)
  %2101 = getelementptr [16 x i8], [16 x i8]* @.str211, i32 0, i32 0
  %2102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2101, i64 15)
  %2103 = call %nyx_string* @nyx_string_concat(%nyx_string* %2100, %nyx_string* %2102)
  %2104 = call i8* @nyx_string_to_cstr(%nyx_string* %2103)
  call void @nyx_print_string(i8* %2104)
  ret i1 0
else427:
  br label %merge428
merge428:
  %2105 = load %nyx_string*, %nyx_string** %2087
  %2106 = call i8* @nyx_string_to_cstr(%nyx_string* %2105)
  %2107 = call %nyx_string* @nyx_read_file(i8* %2106)
  %2108 = alloca %nyx_string*
  store %nyx_string* %2107, %nyx_string** %2108
  %2109 = load %nyx_string*, %nyx_string** %dst.ptr
  %2110 = load %nyx_string*, %nyx_string** %2108
  %2111 = load %nyx_string*, %nyx_string** %lang.ptr
  %2112 = call i64 @seed_file(%nyx_string* %2109, %nyx_string* %2110, %nyx_string* %2111)
  %2113 = getelementptr [3 x i8], [3 x i8]* @.str212, i32 0, i32 0
  %2114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2113, i64 2)
  %2115 = load %nyx_string*, %nyx_string** %dst.ptr
  %2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %2114, %nyx_string* %2115)
  %2117 = call i8* @nyx_string_to_cstr(%nyx_string* %2116)
  call void @nyx_print_string(i8* %2117)
  ret i1 1
}

define internal %nyx_string* @nx_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %2118 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %2119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2118, i64 0)
  %2120 = alloca %nyx_string*
  store %nyx_string* %2119, %nyx_string** %2120
  %2121 = alloca i64
  store i64 0, i64* %2121
  %2122 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2122, i64 1)
  %2124 = alloca %nyx_string*
  store %nyx_string* %2123, %nyx_string** %2124
  %2125 = getelementptr [3 x i8], [3 x i8]* @.str215, i32 0, i32 0
  %2126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2125, i64 2)
  %2127 = alloca %nyx_string*
  store %nyx_string* %2126, %nyx_string** %2127
  %2128 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2128, i64 1)
  %2130 = alloca %nyx_string*
  store %nyx_string* %2129, %nyx_string** %2130
  %2131 = getelementptr [3 x i8], [3 x i8]* @.str217, i32 0, i32 0
  %2132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2131, i64 2)
  %2133 = alloca %nyx_string*
  store %nyx_string* %2132, %nyx_string** %2133
  %2134 = call i8* @llvm.stacksave()
  br label %while_cond429
while_cond429:
  %2135 = load i64, i64* %2121
  %2136 = load %nyx_string*, %nyx_string** %s.ptr
  %2137 = call i64 @nyx_string_byte_length(%nyx_string* %2136)
  %2138 = icmp slt i64 %2135, %2137
  br i1 %2138, label %while_body430, label %while_end431
while_body430:
  call void @llvm.stackrestore(i8* %2134)
  %2139 = load %nyx_string*, %nyx_string** %s.ptr
  %2140 = load i64, i64* %2121
  %2141 = load i64, i64* %2121
  %2142 = add i64 %2141, 1
  %2143 = call %nyx_string* @nyx_string_substring(%nyx_string* %2139, i64 %2140, i64 %2142)
  %2144 = alloca %nyx_string*
  store %nyx_string* %2143, %nyx_string** %2144
  %2145 = load %nyx_string*, %nyx_string** %2144
  %2146 = load %nyx_string*, %nyx_string** %2124
  %2147 = call i1 @nyx_string_equals(%nyx_string* %2145, %nyx_string* %2146)
  br i1 %2147, label %then432, label %else433
then432:
  %2148 = load %nyx_string*, %nyx_string** %2120
  %2149 = load %nyx_string*, %nyx_string** %2127
  %2150 = call %nyx_string* @nyx_string_concat(%nyx_string* %2148, %nyx_string* %2149)
  store %nyx_string* %2150, %nyx_string** %2120
  br label %merge434
else433:
  %2151 = load %nyx_string*, %nyx_string** %2144
  %2152 = load %nyx_string*, %nyx_string** %2130
  %2153 = call i1 @nyx_string_equals(%nyx_string* %2151, %nyx_string* %2152)
  br i1 %2153, label %then435, label %else436
then435:
  %2154 = load %nyx_string*, %nyx_string** %2120
  %2155 = load %nyx_string*, %nyx_string** %2133
  %2156 = call %nyx_string* @nyx_string_concat(%nyx_string* %2154, %nyx_string* %2155)
  store %nyx_string* %2156, %nyx_string** %2120
  br label %merge437
else436:
  %2157 = load %nyx_string*, %nyx_string** %2120
  %2158 = load %nyx_string*, %nyx_string** %2144
  %2159 = call %nyx_string* @nyx_string_concat(%nyx_string* %2157, %nyx_string* %2158)
  store %nyx_string* %2159, %nyx_string** %2120
  br label %merge437
merge437:
  br label %merge434
merge434:
  %2160 = load i64, i64* %2121
  %2161 = add i64 %2160, 1
  store i64 %2161, i64* %2121
  br label %while_cond429
while_end431:
  %2162 = load %nyx_string*, %nyx_string** %2120
  ret %nyx_string* %2162
}

define internal %nyx_string* @evidence_body(
%nyx_string* %lang.param) {
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2163 = call %nyx_string* @toolchain_version()
  %2164 = alloca %nyx_string*
  store %nyx_string* %2163, %nyx_string** %2164
  %2165 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %2166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2165, i64 0)
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = load %nyx_string*, %nyx_string** %2167
  %2169 = load %nyx_string*, %nyx_string** %lang.ptr
  %2170 = getelementptr [20 x i8], [20 x i8]* @.str219, i32 0, i32 0
  %2171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2170, i64 19)
  %2172 = load %nyx_string*, %nyx_string** %2164
  %2173 = call %nyx_string* @nyx_string_concat(%nyx_string* %2171, %nyx_string* %2172)
  %2174 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %2175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2174, i64 1)
  %2176 = call %nyx_string* @nyx_string_concat(%nyx_string* %2173, %nyx_string* %2175)
  %2177 = getelementptr [21 x i8], [21 x i8]* @.str221, i32 0, i32 0
  %2178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2177, i64 20)
  %2179 = load %nyx_string*, %nyx_string** %2164
  %2180 = call %nyx_string* @nyx_string_concat(%nyx_string* %2178, %nyx_string* %2179)
  %2181 = getelementptr [2 x i8], [2 x i8]* @.str222, i32 0, i32 0
  %2182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2181, i64 1)
  %2183 = call %nyx_string* @nyx_string_concat(%nyx_string* %2180, %nyx_string* %2182)
  %2184 = call %nyx_string* @sdd_msg(%nyx_string* %2169, %nyx_string* %2176, %nyx_string* %2183)
  %2185 = call %nyx_string* @nyx_string_concat(%nyx_string* %2168, %nyx_string* %2184)
  store %nyx_string* %2185, %nyx_string** %2167
  %2186 = load %nyx_string*, %nyx_string** %2167
  %2187 = getelementptr [7 x i8], [7 x i8]* @.str223, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2187, i64 6)
  %2189 = call %nyx_string* @nyx_string_concat(%nyx_string* %2186, %nyx_string* %2188)
  %2190 = call %nyx_string* @sdd_generated_marker()
  %2191 = call %nyx_string* @nyx_string_concat(%nyx_string* %2189, %nyx_string* %2190)
  %2192 = getelementptr [110 x i8], [110 x i8]* @.str224, i32 0, i32 0
  %2193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2192, i64 109)
  %2194 = call %nyx_string* @nyx_string_concat(%nyx_string* %2191, %nyx_string* %2193)
  store %nyx_string* %2194, %nyx_string** %2167
  %2195 = load %nyx_string*, %nyx_string** %2167
  %2196 = load %nyx_string*, %nyx_string** %lang.ptr
  %2197 = getelementptr [319 x i8], [319 x i8]* @.str225, i32 0, i32 0
  %2198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2197, i64 318)
  %2199 = getelementptr [334 x i8], [334 x i8]* @.str226, i32 0, i32 0
  %2200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2199, i64 333)
  %2201 = call %nyx_string* @sdd_msg(%nyx_string* %2196, %nyx_string* %2198, %nyx_string* %2200)
  %2202 = call %nyx_string* @nyx_string_concat(%nyx_string* %2195, %nyx_string* %2201)
  store %nyx_string* %2202, %nyx_string** %2167
  %2203 = load %nyx_string*, %nyx_string** %2167
  %2204 = getelementptr [2 x i8], [2 x i8]* @.str227, i32 0, i32 0
  %2205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2204, i64 1)
  %2206 = call %nyx_string* @nyx_string_concat(%nyx_string* %2203, %nyx_string* %2205)
  store %nyx_string* %2206, %nyx_string** %2167
  %2207 = call { i64, i8* }* @gotchas_table()
  %2208 = alloca { i64, i8* }*
  store { i64, i8* }* %2207, { i64, i8* }** %2208
  %2209 = alloca i64
  store i64 0, i64* %2209
  %2210 = getelementptr [5 x i8], [5 x i8]* @.str228, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2210, i64 4)
  %2212 = alloca %nyx_string*
  store %nyx_string* %2211, %nyx_string** %2212
  %2213 = getelementptr [9 x i8], [9 x i8]* @.str229, i32 0, i32 0
  %2214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2213, i64 8)
  %2215 = alloca %nyx_string*
  store %nyx_string* %2214, %nyx_string** %2215
  %2216 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %2217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2216, i64 0)
  %2218 = alloca %nyx_string*
  store %nyx_string* %2217, %nyx_string** %2218
  %2219 = getelementptr [5 x i8], [5 x i8]* @.str231, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2219, i64 4)
  %2221 = alloca %nyx_string*
  store %nyx_string* %2220, %nyx_string** %2221
  %2222 = getelementptr [5 x i8], [5 x i8]* @.str232, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2222, i64 4)
  %2224 = alloca %nyx_string*
  store %nyx_string* %2223, %nyx_string** %2224
  %2225 = getelementptr [3 x i8], [3 x i8]* @.str233, i32 0, i32 0
  %2226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2225, i64 2)
  %2227 = alloca %nyx_string*
  store %nyx_string* %2226, %nyx_string** %2227
  %2228 = getelementptr [6 x i8], [6 x i8]* @.str234, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2228, i64 5)
  %2230 = alloca %nyx_string*
  store %nyx_string* %2229, %nyx_string** %2230
  %2231 = getelementptr [7 x i8], [7 x i8]* @.str235, i32 0, i32 0
  %2232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2231, i64 6)
  %2233 = alloca %nyx_string*
  store %nyx_string* %2232, %nyx_string** %2233
  %2234 = getelementptr [5 x i8], [5 x i8]* @.str236, i32 0, i32 0
  %2235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2234, i64 4)
  %2236 = alloca %nyx_string*
  store %nyx_string* %2235, %nyx_string** %2236
  %2237 = getelementptr [9 x i8], [9 x i8]* @.str237, i32 0, i32 0
  %2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2237, i64 8)
  %2239 = alloca %nyx_string*
  store %nyx_string* %2238, %nyx_string** %2239
  %2240 = getelementptr [3 x i8], [3 x i8]* @.str238, i32 0, i32 0
  %2241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2240, i64 2)
  %2242 = alloca %nyx_string*
  store %nyx_string* %2241, %nyx_string** %2242
  %2243 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %2244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2243, i64 8)
  %2245 = alloca %nyx_string*
  store %nyx_string* %2244, %nyx_string** %2245
  %2246 = getelementptr [5 x i8], [5 x i8]* @.str240, i32 0, i32 0
  %2247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2246, i64 4)
  %2248 = alloca %nyx_string*
  store %nyx_string* %2247, %nyx_string** %2248
  %2249 = getelementptr [5 x i8], [5 x i8]* @.str241, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2249, i64 4)
  %2251 = alloca %nyx_string*
  store %nyx_string* %2250, %nyx_string** %2251
  %2252 = getelementptr [9 x i8], [9 x i8]* @.str242, i32 0, i32 0
  %2253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2252, i64 8)
  %2254 = alloca %nyx_string*
  store %nyx_string* %2253, %nyx_string** %2254
  %2255 = getelementptr [7 x i8], [7 x i8]* @.str243, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2255, i64 6)
  %2257 = alloca %nyx_string*
  store %nyx_string* %2256, %nyx_string** %2257
  %2258 = getelementptr [14 x i8], [14 x i8]* @.str244, i32 0, i32 0
  %2259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2258, i64 13)
  %2260 = alloca %nyx_string*
  store %nyx_string* %2259, %nyx_string** %2260
  %2261 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2261, i64 1)
  %2263 = alloca %nyx_string*
  store %nyx_string* %2262, %nyx_string** %2263
  %2264 = getelementptr [12 x i8], [12 x i8]* @.str246, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2264, i64 11)
  %2266 = alloca %nyx_string*
  store %nyx_string* %2265, %nyx_string** %2266
  %2267 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2267, i64 1)
  %2269 = alloca %nyx_string*
  store %nyx_string* %2268, %nyx_string** %2269
  %2270 = call i8* @llvm.stacksave()
  br label %while_cond438
while_cond438:
  %2271 = load i64, i64* %2209
  %2272 = load { i64, i8* }*, { i64, i8* }** %2208
  %2273 = call i64 @nyx_array_length({ i64, i8* }* %2272)
  %2274 = icmp slt i64 %2271, %2273
  br i1 %2274, label %while_body439, label %while_end440
while_body439:
  call void @llvm.stackrestore(i8* %2270)
  %2275 = load { i64, i8* }*, { i64, i8* }** %2208
  %2276 = load i64, i64* %2209
  %2277 = call i64 @nyx_array_get({ i64, i8* }* %2275, i64 %2276)
  %2278 = inttoptr i64 %2277 to { i64, i8* }*
  %2279 = alloca { i64, i8* }*
  store { i64, i8* }* %2278, { i64, i8* }** %2279
  %2280 = load { i64, i8* }*, { i64, i8* }** %2279
  %2281 = load %nyx_string*, %nyx_string** %2212
  %2282 = call %nyx_string* @gotcha_field({ i64, i8* }* %2280, %nyx_string* %2281)
  %2283 = alloca %nyx_string*
  store %nyx_string* %2282, %nyx_string** %2283
  %2284 = load { i64, i8* }*, { i64, i8* }** %2279
  %2285 = load %nyx_string*, %nyx_string** %2215
  %2286 = call %nyx_string* @gotcha_field({ i64, i8* }* %2284, %nyx_string* %2285)
  %2287 = alloca %nyx_string*
  store %nyx_string* %2286, %nyx_string** %2287
  %2288 = load %nyx_string*, %nyx_string** %2287
  %2289 = load %nyx_string*, %nyx_string** %2218
  %2290 = call i1 @nyx_string_equals(%nyx_string* %2288, %nyx_string* %2289)
  br i1 %2290, label %then441, label %else442
then441:
  %2291 = alloca i1
  store i1 true, i1* %2291
  %2292 = load %nyx_string*, %nyx_string** %2283
  %2293 = load %nyx_string*, %nyx_string** %2221
  %2294 = call i1 @nyx_string_equals(%nyx_string* %2292, %nyx_string* %2293)
  br i1 %2294, label %sc_or_end445, label %sc_or_rhs444
sc_or_rhs444:
  %2295 = load %nyx_string*, %nyx_string** %2283
  %2296 = load %nyx_string*, %nyx_string** %2224
  %2297 = call i1 @nyx_string_equals(%nyx_string* %2295, %nyx_string* %2296)
  store i1 %2297, i1* %2291
  br label %sc_or_end445
sc_or_end445:
  %2298 = load i1, i1* %2291
  br i1 %2298, label %then446, label %else447
then446:
  %2299 = load { i64, i8* }*, { i64, i8* }** %2279
  %2300 = load %nyx_string*, %nyx_string** %2227
  %2301 = call %nyx_string* @gotcha_field({ i64, i8* }* %2299, %nyx_string* %2300)
  %2302 = alloca %nyx_string*
  store %nyx_string* %2301, %nyx_string** %2302
  %2303 = load { i64, i8* }*, { i64, i8* }** %2279
  %2304 = load %nyx_string*, %nyx_string** %2230
  %2305 = call %nyx_string* @gotcha_field({ i64, i8* }* %2303, %nyx_string* %2304)
  %2306 = alloca %nyx_string*
  store %nyx_string* %2305, %nyx_string** %2306
  %2307 = load { i64, i8* }*, { i64, i8* }** %2279
  %2308 = load %nyx_string*, %nyx_string** %2233
  %2309 = call %nyx_string* @gotcha_field({ i64, i8* }* %2307, %nyx_string* %2308)
  %2310 = alloca %nyx_string*
  store %nyx_string* %2309, %nyx_string** %2310
  %2311 = load { i64, i8* }*, { i64, i8* }** %2279
  %2312 = load %nyx_string*, %nyx_string** %2236
  %2313 = call %nyx_string* @gotcha_field({ i64, i8* }* %2311, %nyx_string* %2312)
  %2314 = alloca %nyx_string*
  store %nyx_string* %2313, %nyx_string** %2314
  %2315 = load { i64, i8* }*, { i64, i8* }** %2279
  %2316 = load %nyx_string*, %nyx_string** %2239
  %2317 = call %nyx_string* @gotcha_field({ i64, i8* }* %2315, %nyx_string* %2316)
  %2318 = alloca %nyx_string*
  store %nyx_string* %2317, %nyx_string** %2318
  %2319 = load %nyx_string*, %nyx_string** %lang.ptr
  %2320 = load %nyx_string*, %nyx_string** %2242
  %2321 = call i1 @nyx_string_equals(%nyx_string* %2319, %nyx_string* %2320)
  br i1 %2321, label %then449, label %else450
then449:
  %2322 = load { i64, i8* }*, { i64, i8* }** %2279
  %2323 = load %nyx_string*, %nyx_string** %2245
  %2324 = call %nyx_string* @gotcha_field({ i64, i8* }* %2322, %nyx_string* %2323)
  store %nyx_string* %2324, %nyx_string** %2318
  br label %merge451
else450:
  br label %merge451
merge451:
  %2325 = load %nyx_string*, %nyx_string** %2167
  %2326 = load %nyx_string*, %nyx_string** %2248
  %2327 = call %nyx_string* @nyx_string_concat(%nyx_string* %2325, %nyx_string* %2326)
  %2328 = load %nyx_string*, %nyx_string** %2302
  %2329 = call %nyx_string* @nyx_string_concat(%nyx_string* %2327, %nyx_string* %2328)
  %2330 = load %nyx_string*, %nyx_string** %2251
  %2331 = call %nyx_string* @nyx_string_concat(%nyx_string* %2329, %nyx_string* %2330)
  %2332 = load %nyx_string*, %nyx_string** %2283
  %2333 = call %nyx_string* @nyx_string_concat(%nyx_string* %2331, %nyx_string* %2332)
  %2334 = load %nyx_string*, %nyx_string** %2254
  %2335 = call %nyx_string* @nyx_string_concat(%nyx_string* %2333, %nyx_string* %2334)
  %2336 = load %nyx_string*, %nyx_string** %2306
  %2337 = call %nyx_string* @nyx_string_concat(%nyx_string* %2335, %nyx_string* %2336)
  %2338 = load %nyx_string*, %nyx_string** %2257
  %2339 = call %nyx_string* @nyx_string_concat(%nyx_string* %2337, %nyx_string* %2338)
  %2340 = load %nyx_string*, %nyx_string** %2318
  %2341 = call %nyx_string* @nyx_string_concat(%nyx_string* %2339, %nyx_string* %2340)
  store %nyx_string* %2341, %nyx_string** %2167
  %2342 = load %nyx_string*, %nyx_string** %2310
  %2343 = load %nyx_string*, %nyx_string** %2218
  %2344 = call i1 @nyx_string_equals(%nyx_string* %2342, %nyx_string* %2343)
  %2345 = xor i1 %2344, true
  br i1 %2345, label %then452, label %else453
then452:
  %2346 = load %nyx_string*, %nyx_string** %2167
  %2347 = load %nyx_string*, %nyx_string** %2260
  %2348 = call %nyx_string* @nyx_string_concat(%nyx_string* %2346, %nyx_string* %2347)
  %2349 = load %nyx_string*, %nyx_string** %2310
  %2350 = call %nyx_string* @nyx_string_concat(%nyx_string* %2348, %nyx_string* %2349)
  %2351 = load %nyx_string*, %nyx_string** %2263
  %2352 = call %nyx_string* @nyx_string_concat(%nyx_string* %2350, %nyx_string* %2351)
  store %nyx_string* %2352, %nyx_string** %2167
  br label %merge454
else453:
  br label %merge454
merge454:
  %2353 = load %nyx_string*, %nyx_string** %2314
  %2354 = load %nyx_string*, %nyx_string** %2218
  %2355 = call i1 @nyx_string_equals(%nyx_string* %2353, %nyx_string* %2354)
  %2356 = xor i1 %2355, true
  br i1 %2356, label %then455, label %else456
then455:
  %2357 = load %nyx_string*, %nyx_string** %2167
  %2358 = load %nyx_string*, %nyx_string** %2266
  %2359 = call %nyx_string* @nyx_string_concat(%nyx_string* %2357, %nyx_string* %2358)
  %2360 = load %nyx_string*, %nyx_string** %2314
  %2361 = call %nyx_string* @nyx_string_concat(%nyx_string* %2359, %nyx_string* %2360)
  %2362 = load %nyx_string*, %nyx_string** %2263
  %2363 = call %nyx_string* @nyx_string_concat(%nyx_string* %2361, %nyx_string* %2362)
  store %nyx_string* %2363, %nyx_string** %2167
  br label %merge457
else456:
  br label %merge457
merge457:
  %2364 = load %nyx_string*, %nyx_string** %2167
  %2365 = load %nyx_string*, %nyx_string** %2269
  %2366 = call %nyx_string* @nyx_string_concat(%nyx_string* %2364, %nyx_string* %2365)
  store %nyx_string* %2366, %nyx_string** %2167
  br label %merge448
else447:
  br label %merge448
merge448:
  br label %merge443
else442:
  br label %merge443
merge443:
  %2367 = load i64, i64* %2209
  %2368 = add i64 %2367, 1
  store i64 %2368, i64* %2209
  br label %while_cond438
while_end440:
  %2369 = load %nyx_string*, %nyx_string** %2167
  %2370 = load %nyx_string*, %nyx_string** %lang.ptr
  %2371 = getelementptr [14 x i8], [14 x i8]* @.str248, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2371, i64 13)
  %2373 = getelementptr [16 x i8], [16 x i8]* @.str249, i32 0, i32 0
  %2374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2373, i64 15)
  %2375 = call %nyx_string* @sdd_msg(%nyx_string* %2370, %nyx_string* %2372, %nyx_string* %2374)
  %2376 = call %nyx_string* @nyx_string_concat(%nyx_string* %2369, %nyx_string* %2375)
  store %nyx_string* %2376, %nyx_string** %2167
  %2377 = load %nyx_string*, %nyx_string** %2167
  %2378 = load %nyx_string*, %nyx_string** %lang.ptr
  %2379 = getelementptr [139 x i8], [139 x i8]* @.str250, i32 0, i32 0
  %2380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2379, i64 138)
  %2381 = getelementptr [150 x i8], [150 x i8]* @.str251, i32 0, i32 0
  %2382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2381, i64 149)
  %2383 = call %nyx_string* @sdd_msg(%nyx_string* %2378, %nyx_string* %2380, %nyx_string* %2382)
  %2384 = call %nyx_string* @nyx_string_concat(%nyx_string* %2377, %nyx_string* %2383)
  store %nyx_string* %2384, %nyx_string** %2167
  %2385 = alloca i64
  store i64 0, i64* %2385
  %2386 = getelementptr [9 x i8], [9 x i8]* @.str252, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2386, i64 8)
  %2388 = alloca %nyx_string*
  store %nyx_string* %2387, %nyx_string** %2388
  %2389 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %2390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2389, i64 0)
  %2391 = alloca %nyx_string*
  store %nyx_string* %2390, %nyx_string** %2391
  %2392 = getelementptr [3 x i8], [3 x i8]* @.str254, i32 0, i32 0
  %2393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2392, i64 2)
  %2394 = alloca %nyx_string*
  store %nyx_string* %2393, %nyx_string** %2394
  %2395 = getelementptr [9 x i8], [9 x i8]* @.str255, i32 0, i32 0
  %2396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2395, i64 8)
  %2397 = alloca %nyx_string*
  store %nyx_string* %2396, %nyx_string** %2397
  %2398 = getelementptr [3 x i8], [3 x i8]* @.str256, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2398, i64 2)
  %2400 = alloca %nyx_string*
  store %nyx_string* %2399, %nyx_string** %2400
  %2401 = getelementptr [9 x i8], [9 x i8]* @.str257, i32 0, i32 0
  %2402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2401, i64 8)
  %2403 = alloca %nyx_string*
  store %nyx_string* %2402, %nyx_string** %2403
  %2404 = getelementptr [5 x i8], [5 x i8]* @.str258, i32 0, i32 0
  %2405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2404, i64 4)
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = getelementptr [14 x i8], [14 x i8]* @.str259, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2407, i64 13)
  %2409 = alloca %nyx_string*
  store %nyx_string* %2408, %nyx_string** %2409
  %2410 = getelementptr [7 x i8], [7 x i8]* @.str260, i32 0, i32 0
  %2411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2410, i64 6)
  %2412 = alloca %nyx_string*
  store %nyx_string* %2411, %nyx_string** %2412
  %2413 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2413, i64 1)
  %2415 = alloca %nyx_string*
  store %nyx_string* %2414, %nyx_string** %2415
  %2416 = call i8* @llvm.stacksave()
  br label %while_cond458
while_cond458:
  %2417 = load i64, i64* %2385
  %2418 = load { i64, i8* }*, { i64, i8* }** %2208
  %2419 = call i64 @nyx_array_length({ i64, i8* }* %2418)
  %2420 = icmp slt i64 %2417, %2419
  br i1 %2420, label %while_body459, label %while_end460
while_body459:
  call void @llvm.stackrestore(i8* %2416)
  %2421 = load { i64, i8* }*, { i64, i8* }** %2208
  %2422 = load i64, i64* %2385
  %2423 = call i64 @nyx_array_get({ i64, i8* }* %2421, i64 %2422)
  %2424 = inttoptr i64 %2423 to { i64, i8* }*
  %2425 = alloca { i64, i8* }*
  store { i64, i8* }* %2424, { i64, i8* }** %2425
  %2426 = load { i64, i8* }*, { i64, i8* }** %2425
  %2427 = load %nyx_string*, %nyx_string** %2388
  %2428 = call %nyx_string* @gotcha_field({ i64, i8* }* %2426, %nyx_string* %2427)
  %2429 = alloca %nyx_string*
  store %nyx_string* %2428, %nyx_string** %2429
  %2430 = load %nyx_string*, %nyx_string** %2429
  %2431 = load %nyx_string*, %nyx_string** %2391
  %2432 = call i1 @nyx_string_equals(%nyx_string* %2430, %nyx_string* %2431)
  %2433 = xor i1 %2432, true
  br i1 %2433, label %then461, label %else462
then461:
  %2434 = load { i64, i8* }*, { i64, i8* }** %2425
  %2435 = load %nyx_string*, %nyx_string** %2394
  %2436 = call %nyx_string* @gotcha_field({ i64, i8* }* %2434, %nyx_string* %2435)
  %2437 = alloca %nyx_string*
  store %nyx_string* %2436, %nyx_string** %2437
  %2438 = load { i64, i8* }*, { i64, i8* }** %2425
  %2439 = load %nyx_string*, %nyx_string** %2397
  %2440 = call %nyx_string* @gotcha_field({ i64, i8* }* %2438, %nyx_string* %2439)
  %2441 = alloca %nyx_string*
  store %nyx_string* %2440, %nyx_string** %2441
  %2442 = load %nyx_string*, %nyx_string** %lang.ptr
  %2443 = load %nyx_string*, %nyx_string** %2400
  %2444 = call i1 @nyx_string_equals(%nyx_string* %2442, %nyx_string* %2443)
  br i1 %2444, label %then464, label %else465
then464:
  %2445 = load { i64, i8* }*, { i64, i8* }** %2425
  %2446 = load %nyx_string*, %nyx_string** %2403
  %2447 = call %nyx_string* @gotcha_field({ i64, i8* }* %2445, %nyx_string* %2446)
  store %nyx_string* %2447, %nyx_string** %2441
  br label %merge466
else465:
  br label %merge466
merge466:
  %2448 = load %nyx_string*, %nyx_string** %2167
  %2449 = load %nyx_string*, %nyx_string** %2406
  %2450 = call %nyx_string* @nyx_string_concat(%nyx_string* %2448, %nyx_string* %2449)
  %2451 = load %nyx_string*, %nyx_string** %2437
  %2452 = call %nyx_string* @nyx_string_concat(%nyx_string* %2450, %nyx_string* %2451)
  %2453 = load %nyx_string*, %nyx_string** %2409
  %2454 = call %nyx_string* @nyx_string_concat(%nyx_string* %2452, %nyx_string* %2453)
  %2455 = load %nyx_string*, %nyx_string** %2429
  %2456 = call %nyx_string* @nyx_string_concat(%nyx_string* %2454, %nyx_string* %2455)
  %2457 = load %nyx_string*, %nyx_string** %2412
  %2458 = call %nyx_string* @nyx_string_concat(%nyx_string* %2456, %nyx_string* %2457)
  %2459 = load %nyx_string*, %nyx_string** %2441
  %2460 = call %nyx_string* @nyx_string_concat(%nyx_string* %2458, %nyx_string* %2459)
  %2461 = load %nyx_string*, %nyx_string** %2415
  %2462 = call %nyx_string* @nyx_string_concat(%nyx_string* %2460, %nyx_string* %2461)
  store %nyx_string* %2462, %nyx_string** %2167
  br label %merge463
else462:
  br label %merge463
merge463:
  %2463 = load i64, i64* %2385
  %2464 = add i64 %2463, 1
  store i64 %2464, i64* %2385
  br label %while_cond458
while_end460:
  %2465 = load %nyx_string*, %nyx_string** %2167
  ret %nyx_string* %2465
}

define internal i64 @write_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %2466 = load %nyx_string*, %nyx_string** %dir.ptr
  %2467 = getelementptr [20 x i8], [20 x i8]* @.str262, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2467, i64 19)
  %2469 = call %nyx_string* @nyx_string_concat(%nyx_string* %2466, %nyx_string* %2468)
  %2470 = call %nyx_string* @toolchain_version()
  %2471 = call %nyx_string* @nyx_string_concat(%nyx_string* %2469, %nyx_string* %2470)
  %2472 = getelementptr [4 x i8], [4 x i8]* @.str263, i32 0, i32 0
  %2473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2472, i64 3)
  %2474 = call %nyx_string* @nyx_string_concat(%nyx_string* %2471, %nyx_string* %2473)
  %2475 = alloca %nyx_string*
  store %nyx_string* %2474, %nyx_string** %2475
  %2476 = load %nyx_string*, %nyx_string** %lang.ptr
  %2477 = call %nyx_string* @evidence_body(%nyx_string* %2476)
  %2478 = load %nyx_string*, %nyx_string** %lang.ptr
  %2479 = call %nyx_string* @seed_body(%nyx_string* %2477, %nyx_string* %2478)
  %2480 = alloca %nyx_string*
  store %nyx_string* %2479, %nyx_string** %2480
  %2481 = load %nyx_string*, %nyx_string** %2475
  %2482 = call i8* @nyx_string_to_cstr(%nyx_string* %2481)
  %2483 = call i1 @nyx_file_exists(i8* %2482)
  br i1 %2483, label %then467, label %else468
then467:
  %2484 = load %nyx_string*, %nyx_string** %2475
  %2485 = call i8* @nyx_string_to_cstr(%nyx_string* %2484)
  %2486 = call %nyx_string* @nyx_read_file(i8* %2485)
  %2487 = alloca %nyx_string*
  store %nyx_string* %2486, %nyx_string** %2487
  %2488 = load %nyx_string*, %nyx_string** %2487
  %2489 = load %nyx_string*, %nyx_string** %2480
  %2490 = call i1 @nyx_string_equals(%nyx_string* %2488, %nyx_string* %2489)
  br i1 %2490, label %then470, label %else471
then470:
  ret i64 0
else471:
  br label %merge472
merge472:
  %2491 = load %nyx_string*, %nyx_string** %2487
  %2492 = call %nyx_string* @sdd_generated_marker()
  %2493 = call i64 @nyx_string_index_of(%nyx_string* %2491, %nyx_string* %2492)
  %2494 = icmp slt i64 %2493, 0
  br i1 %2494, label %then473, label %else474
then473:
  ret i64 2
else474:
  br label %merge475
merge475:
  br label %merge469
else468:
  br label %merge469
merge469:
  %2495 = load %nyx_string*, %nyx_string** %2475
  %2496 = load %nyx_string*, %nyx_string** %2480
  %2497 = call i8* @nyx_string_to_cstr(%nyx_string* %2495)
  %2498 = call i8* @nyx_string_to_cstr(%nyx_string* %2496)
  %2499 = call i1 @nyx_write_file(i8* %2497, i8* %2498)
  ret i64 1
}

define internal %nyx_string* @constitution_test_body(
) {
  %2500 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %2501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2500, i64 0)
  %2502 = alloca %nyx_string*
  store %nyx_string* %2501, %nyx_string** %2502
  %2503 = load %nyx_string*, %nyx_string** %2502
  %2504 = getelementptr [4 x i8], [4 x i8]* @.str265, i32 0, i32 0
  %2505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2504, i64 3)
  %2506 = call %nyx_string* @nyx_string_concat(%nyx_string* %2503, %nyx_string* %2505)
  %2507 = call %nyx_string* @sdd_generated_marker()
  %2508 = call %nyx_string* @nyx_string_concat(%nyx_string* %2506, %nyx_string* %2507)
  %2509 = getelementptr [80 x i8], [80 x i8]* @.str266, i32 0, i32 0
  %2510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2509, i64 79)
  %2511 = call %nyx_string* @nyx_string_concat(%nyx_string* %2508, %nyx_string* %2510)
  store %nyx_string* %2511, %nyx_string** %2502
  %2512 = load %nyx_string*, %nyx_string** %2502
  %2513 = getelementptr [96 x i8], [96 x i8]* @.str267, i32 0, i32 0
  %2514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2513, i64 95)
  %2515 = call %nyx_string* @nyx_string_concat(%nyx_string* %2512, %nyx_string* %2514)
  store %nyx_string* %2515, %nyx_string** %2502
  %2516 = load %nyx_string*, %nyx_string** %2502
  %2517 = getelementptr [72 x i8], [72 x i8]* @.str268, i32 0, i32 0
  %2518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2517, i64 71)
  %2519 = call %nyx_string* @nyx_string_concat(%nyx_string* %2516, %nyx_string* %2518)
  store %nyx_string* %2519, %nyx_string** %2502
  %2520 = load %nyx_string*, %nyx_string** %2502
  %2521 = getelementptr [20 x i8], [20 x i8]* @.str269, i32 0, i32 0
  %2522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2521, i64 19)
  %2523 = call %nyx_string* @nyx_string_concat(%nyx_string* %2520, %nyx_string* %2522)
  store %nyx_string* %2523, %nyx_string** %2502
  %2524 = load %nyx_string*, %nyx_string** %2502
  %2525 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2525, i64 1)
  %2527 = call %nyx_string* @nyx_string_concat(%nyx_string* %2524, %nyx_string* %2526)
  store %nyx_string* %2527, %nyx_string** %2502
  %2528 = load %nyx_string*, %nyx_string** %2502
  %2529 = call %nyx_string* @gotcha_scan_src()
  %2530 = call %nyx_string* @nyx_string_concat(%nyx_string* %2528, %nyx_string* %2529)
  store %nyx_string* %2530, %nyx_string** %2502
  %2531 = load %nyx_string*, %nyx_string** %2502
  %2532 = getelementptr [2 x i8], [2 x i8]* @.str271, i32 0, i32 0
  %2533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2532, i64 1)
  %2534 = call %nyx_string* @nyx_string_concat(%nyx_string* %2531, %nyx_string* %2533)
  store %nyx_string* %2534, %nyx_string** %2502
  %2535 = load %nyx_string*, %nyx_string** %2502
  %2536 = getelementptr [83 x i8], [83 x i8]* @.str272, i32 0, i32 0
  %2537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2536, i64 82)
  %2538 = call %nyx_string* @nyx_string_concat(%nyx_string* %2535, %nyx_string* %2537)
  store %nyx_string* %2538, %nyx_string** %2502
  %2539 = load %nyx_string*, %nyx_string** %2502
  %2540 = getelementptr [85 x i8], [85 x i8]* @.str273, i32 0, i32 0
  %2541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2540, i64 84)
  %2542 = call %nyx_string* @nyx_string_concat(%nyx_string* %2539, %nyx_string* %2541)
  store %nyx_string* %2542, %nyx_string** %2502
  %2543 = load %nyx_string*, %nyx_string** %2502
  %2544 = getelementptr [83 x i8], [83 x i8]* @.str274, i32 0, i32 0
  %2545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2544, i64 82)
  %2546 = call %nyx_string* @nyx_string_concat(%nyx_string* %2543, %nyx_string* %2545)
  store %nyx_string* %2546, %nyx_string** %2502
  %2547 = load %nyx_string*, %nyx_string** %2502
  %2548 = getelementptr [83 x i8], [83 x i8]* @.str275, i32 0, i32 0
  %2549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2548, i64 82)
  %2550 = call %nyx_string* @nyx_string_concat(%nyx_string* %2547, %nyx_string* %2549)
  store %nyx_string* %2550, %nyx_string** %2502
  %2551 = load %nyx_string*, %nyx_string** %2502
  %2552 = getelementptr [56 x i8], [56 x i8]* @.str276, i32 0, i32 0
  %2553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2552, i64 55)
  %2554 = call %nyx_string* @nyx_string_concat(%nyx_string* %2551, %nyx_string* %2553)
  store %nyx_string* %2554, %nyx_string** %2502
  %2555 = load %nyx_string*, %nyx_string** %2502
  %2556 = getelementptr [31 x i8], [31 x i8]* @.str277, i32 0, i32 0
  %2557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2556, i64 30)
  %2558 = call %nyx_string* @nyx_string_concat(%nyx_string* %2555, %nyx_string* %2557)
  store %nyx_string* %2558, %nyx_string** %2502
  %2559 = load %nyx_string*, %nyx_string** %2502
  %2560 = getelementptr [47 x i8], [47 x i8]* @.str278, i32 0, i32 0
  %2561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2560, i64 46)
  %2562 = call %nyx_string* @nyx_string_concat(%nyx_string* %2559, %nyx_string* %2561)
  store %nyx_string* %2562, %nyx_string** %2502
  %2563 = load %nyx_string*, %nyx_string** %2502
  %2564 = getelementptr [40 x i8], [40 x i8]* @.str279, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2564, i64 39)
  %2566 = call %nyx_string* @nyx_string_concat(%nyx_string* %2563, %nyx_string* %2565)
  store %nyx_string* %2566, %nyx_string** %2502
  %2567 = load %nyx_string*, %nyx_string** %2502
  %2568 = getelementptr [20 x i8], [20 x i8]* @.str280, i32 0, i32 0
  %2569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2568, i64 19)
  %2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %2567, %nyx_string* %2569)
  store %nyx_string* %2570, %nyx_string** %2502
  %2571 = load %nyx_string*, %nyx_string** %2502
  %2572 = getelementptr [58 x i8], [58 x i8]* @.str281, i32 0, i32 0
  %2573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2572, i64 57)
  %2574 = call %nyx_string* @nyx_string_concat(%nyx_string* %2571, %nyx_string* %2573)
  store %nyx_string* %2574, %nyx_string** %2502
  %2575 = load %nyx_string*, %nyx_string** %2502
  %2576 = getelementptr [7 x i8], [7 x i8]* @.str282, i32 0, i32 0
  %2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2576, i64 6)
  %2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %2575, %nyx_string* %2577)
  store %nyx_string* %2578, %nyx_string** %2502
  %2579 = load %nyx_string*, %nyx_string** %2502
  %2580 = getelementptr [15 x i8], [15 x i8]* @.str283, i32 0, i32 0
  %2581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2580, i64 14)
  %2582 = call %nyx_string* @nyx_string_concat(%nyx_string* %2579, %nyx_string* %2581)
  store %nyx_string* %2582, %nyx_string** %2502
  %2583 = load %nyx_string*, %nyx_string** %2502
  %2584 = getelementptr [3 x i8], [3 x i8]* @.str284, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2584, i64 2)
  %2586 = call %nyx_string* @nyx_string_concat(%nyx_string* %2583, %nyx_string* %2585)
  store %nyx_string* %2586, %nyx_string** %2502
  %2587 = load %nyx_string*, %nyx_string** %2502
  %2588 = getelementptr [2 x i8], [2 x i8]* @.str285, i32 0, i32 0
  %2589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2588, i64 1)
  %2590 = call %nyx_string* @nyx_string_concat(%nyx_string* %2587, %nyx_string* %2589)
  store %nyx_string* %2590, %nyx_string** %2502
  %2591 = load %nyx_string*, %nyx_string** %2502
  %2592 = getelementptr [79 x i8], [79 x i8]* @.str286, i32 0, i32 0
  %2593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2592, i64 78)
  %2594 = call %nyx_string* @nyx_string_concat(%nyx_string* %2591, %nyx_string* %2593)
  store %nyx_string* %2594, %nyx_string** %2502
  %2595 = load %nyx_string*, %nyx_string** %2502
  %2596 = getelementptr [57 x i8], [57 x i8]* @.str287, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2596, i64 56)
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2597)
  store %nyx_string* %2598, %nyx_string** %2502
  %2599 = load %nyx_string*, %nyx_string** %2502
  %2600 = getelementptr [37 x i8], [37 x i8]* @.str288, i32 0, i32 0
  %2601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2600, i64 36)
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2599, %nyx_string* %2601)
  store %nyx_string* %2602, %nyx_string** %2502
  %2603 = load %nyx_string*, %nyx_string** %2502
  %2604 = getelementptr [25 x i8], [25 x i8]* @.str289, i32 0, i32 0
  %2605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2604, i64 24)
  %2606 = call %nyx_string* @nyx_string_concat(%nyx_string* %2603, %nyx_string* %2605)
  store %nyx_string* %2606, %nyx_string** %2502
  %2607 = load %nyx_string*, %nyx_string** %2502
  %2608 = getelementptr [49 x i8], [49 x i8]* @.str290, i32 0, i32 0
  %2609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2608, i64 48)
  %2610 = call %nyx_string* @nyx_string_concat(%nyx_string* %2607, %nyx_string* %2609)
  store %nyx_string* %2610, %nyx_string** %2502
  %2611 = load %nyx_string*, %nyx_string** %2502
  %2612 = getelementptr [39 x i8], [39 x i8]* @.str291, i32 0, i32 0
  %2613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2612, i64 38)
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2611, %nyx_string* %2613)
  store %nyx_string* %2614, %nyx_string** %2502
  %2615 = load %nyx_string*, %nyx_string** %2502
  %2616 = getelementptr [20 x i8], [20 x i8]* @.str292, i32 0, i32 0
  %2617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2616, i64 19)
  %2618 = call %nyx_string* @nyx_string_concat(%nyx_string* %2615, %nyx_string* %2617)
  store %nyx_string* %2618, %nyx_string** %2502
  %2619 = load %nyx_string*, %nyx_string** %2502
  %2620 = getelementptr [34 x i8], [34 x i8]* @.str293, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2620, i64 33)
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2619, %nyx_string* %2621)
  store %nyx_string* %2622, %nyx_string** %2502
  %2623 = load %nyx_string*, %nyx_string** %2502
  %2624 = getelementptr [36 x i8], [36 x i8]* @.str294, i32 0, i32 0
  %2625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2624, i64 35)
  %2626 = call %nyx_string* @nyx_string_concat(%nyx_string* %2623, %nyx_string* %2625)
  store %nyx_string* %2626, %nyx_string** %2502
  %2627 = load %nyx_string*, %nyx_string** %2502
  %2628 = getelementptr [39 x i8], [39 x i8]* @.str295, i32 0, i32 0
  %2629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2628, i64 38)
  %2630 = call %nyx_string* @nyx_string_concat(%nyx_string* %2627, %nyx_string* %2629)
  store %nyx_string* %2630, %nyx_string** %2502
  %2631 = load %nyx_string*, %nyx_string** %2502
  %2632 = getelementptr [32 x i8], [32 x i8]* @.str296, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2632, i64 31)
  %2634 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2633)
  store %nyx_string* %2634, %nyx_string** %2502
  %2635 = load %nyx_string*, %nyx_string** %2502
  %2636 = getelementptr [25 x i8], [25 x i8]* @.str297, i32 0, i32 0
  %2637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2636, i64 24)
  %2638 = call %nyx_string* @nyx_string_concat(%nyx_string* %2635, %nyx_string* %2637)
  store %nyx_string* %2638, %nyx_string** %2502
  %2639 = load %nyx_string*, %nyx_string** %2502
  %2640 = getelementptr [18 x i8], [18 x i8]* @.str298, i32 0, i32 0
  %2641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2640, i64 17)
  %2642 = call %nyx_string* @nyx_string_concat(%nyx_string* %2639, %nyx_string* %2641)
  store %nyx_string* %2642, %nyx_string** %2502
  %2643 = load %nyx_string*, %nyx_string** %2502
  %2644 = getelementptr [40 x i8], [40 x i8]* @.str299, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2644, i64 39)
  %2646 = call %nyx_string* @nyx_string_concat(%nyx_string* %2643, %nyx_string* %2645)
  store %nyx_string* %2646, %nyx_string** %2502
  %2647 = load %nyx_string*, %nyx_string** %2502
  %2648 = getelementptr [46 x i8], [46 x i8]* @.str300, i32 0, i32 0
  %2649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2648, i64 45)
  %2650 = call %nyx_string* @nyx_string_concat(%nyx_string* %2647, %nyx_string* %2649)
  store %nyx_string* %2650, %nyx_string** %2502
  %2651 = load %nyx_string*, %nyx_string** %2502
  %2652 = getelementptr [32 x i8], [32 x i8]* @.str301, i32 0, i32 0
  %2653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2652, i64 31)
  %2654 = call %nyx_string* @nyx_string_concat(%nyx_string* %2651, %nyx_string* %2653)
  store %nyx_string* %2654, %nyx_string** %2502
  %2655 = load %nyx_string*, %nyx_string** %2502
  %2656 = getelementptr [42 x i8], [42 x i8]* @.str302, i32 0, i32 0
  %2657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2656, i64 41)
  %2658 = call %nyx_string* @nyx_string_concat(%nyx_string* %2655, %nyx_string* %2657)
  store %nyx_string* %2658, %nyx_string** %2502
  %2659 = load %nyx_string*, %nyx_string** %2502
  %2660 = getelementptr [44 x i8], [44 x i8]* @.str303, i32 0, i32 0
  %2661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2660, i64 43)
  %2662 = call %nyx_string* @nyx_string_concat(%nyx_string* %2659, %nyx_string* %2661)
  store %nyx_string* %2662, %nyx_string** %2502
  %2663 = load %nyx_string*, %nyx_string** %2502
  %2664 = getelementptr [33 x i8], [33 x i8]* @.str304, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2664, i64 32)
  %2666 = call %nyx_string* @nyx_string_concat(%nyx_string* %2663, %nyx_string* %2665)
  store %nyx_string* %2666, %nyx_string** %2502
  %2667 = load %nyx_string*, %nyx_string** %2502
  %2668 = getelementptr [31 x i8], [31 x i8]* @.str305, i32 0, i32 0
  %2669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2668, i64 30)
  %2670 = call %nyx_string* @nyx_string_concat(%nyx_string* %2667, %nyx_string* %2669)
  store %nyx_string* %2670, %nyx_string** %2502
  %2671 = load %nyx_string*, %nyx_string** %2502
  %2672 = getelementptr [19 x i8], [19 x i8]* @.str306, i32 0, i32 0
  %2673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2672, i64 18)
  %2674 = call %nyx_string* @nyx_string_concat(%nyx_string* %2671, %nyx_string* %2673)
  store %nyx_string* %2674, %nyx_string** %2502
  %2675 = load %nyx_string*, %nyx_string** %2502
  %2676 = getelementptr [15 x i8], [15 x i8]* @.str307, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2676, i64 14)
  %2678 = call %nyx_string* @nyx_string_concat(%nyx_string* %2675, %nyx_string* %2677)
  store %nyx_string* %2678, %nyx_string** %2502
  %2679 = load %nyx_string*, %nyx_string** %2502
  %2680 = getelementptr [11 x i8], [11 x i8]* @.str308, i32 0, i32 0
  %2681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2680, i64 10)
  %2682 = call %nyx_string* @nyx_string_concat(%nyx_string* %2679, %nyx_string* %2681)
  store %nyx_string* %2682, %nyx_string** %2502
  %2683 = load %nyx_string*, %nyx_string** %2502
  %2684 = getelementptr [19 x i8], [19 x i8]* @.str309, i32 0, i32 0
  %2685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2684, i64 18)
  %2686 = call %nyx_string* @nyx_string_concat(%nyx_string* %2683, %nyx_string* %2685)
  store %nyx_string* %2686, %nyx_string** %2502
  %2687 = load %nyx_string*, %nyx_string** %2502
  %2688 = getelementptr [7 x i8], [7 x i8]* @.str310, i32 0, i32 0
  %2689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2688, i64 6)
  %2690 = call %nyx_string* @nyx_string_concat(%nyx_string* %2687, %nyx_string* %2689)
  store %nyx_string* %2690, %nyx_string** %2502
  %2691 = load %nyx_string*, %nyx_string** %2502
  %2692 = getelementptr [16 x i8], [16 x i8]* @.str311, i32 0, i32 0
  %2693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2692, i64 15)
  %2694 = call %nyx_string* @nyx_string_concat(%nyx_string* %2691, %nyx_string* %2693)
  store %nyx_string* %2694, %nyx_string** %2502
  %2695 = load %nyx_string*, %nyx_string** %2502
  %2696 = getelementptr [3 x i8], [3 x i8]* @.str312, i32 0, i32 0
  %2697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2696, i64 2)
  %2698 = call %nyx_string* @nyx_string_concat(%nyx_string* %2695, %nyx_string* %2697)
  store %nyx_string* %2698, %nyx_string** %2502
  %2699 = load %nyx_string*, %nyx_string** %2502
  %2700 = getelementptr [2 x i8], [2 x i8]* @.str313, i32 0, i32 0
  %2701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2700, i64 1)
  %2702 = call %nyx_string* @nyx_string_concat(%nyx_string* %2699, %nyx_string* %2701)
  store %nyx_string* %2702, %nyx_string** %2502
  %2703 = load %nyx_string*, %nyx_string** %2502
  %2704 = getelementptr [77 x i8], [77 x i8]* @.str314, i32 0, i32 0
  %2705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2704, i64 76)
  %2706 = call %nyx_string* @nyx_string_concat(%nyx_string* %2703, %nyx_string* %2705)
  store %nyx_string* %2706, %nyx_string** %2502
  %2707 = load %nyx_string*, %nyx_string** %2502
  %2708 = getelementptr [53 x i8], [53 x i8]* @.str315, i32 0, i32 0
  %2709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2708, i64 52)
  %2710 = call %nyx_string* @nyx_string_concat(%nyx_string* %2707, %nyx_string* %2709)
  store %nyx_string* %2710, %nyx_string** %2502
  %2711 = load %nyx_string*, %nyx_string** %2502
  %2712 = getelementptr [45 x i8], [45 x i8]* @.str316, i32 0, i32 0
  %2713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %2712, i64 44)
  %2714 = call %nyx_string* @nyx_string_concat(%nyx_string* %2711, %nyx_string* %2713)
  store %nyx_string* %2714, %nyx_string** %2502
  %2715 = load %nyx_string*, %nyx_string** %2502
  %2716 = getelementptr [26 x i8], [26 x i8]* @.str317, i32 0, i32 0
  %2717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %2716, i64 25)
  %2718 = call %nyx_string* @nyx_string_concat(%nyx_string* %2715, %nyx_string* %2717)
  store %nyx_string* %2718, %nyx_string** %2502
  %2719 = load %nyx_string*, %nyx_string** %2502
  %2720 = getelementptr [39 x i8], [39 x i8]* @.str318, i32 0, i32 0
  %2721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %2720, i64 38)
  %2722 = call %nyx_string* @nyx_string_concat(%nyx_string* %2719, %nyx_string* %2721)
  store %nyx_string* %2722, %nyx_string** %2502
  %2723 = load %nyx_string*, %nyx_string** %2502
  %2724 = getelementptr [35 x i8], [35 x i8]* @.str319, i32 0, i32 0
  %2725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %2724, i64 34)
  %2726 = call %nyx_string* @nyx_string_concat(%nyx_string* %2723, %nyx_string* %2725)
  store %nyx_string* %2726, %nyx_string** %2502
  %2727 = load %nyx_string*, %nyx_string** %2502
  %2728 = getelementptr [48 x i8], [48 x i8]* @.str320, i32 0, i32 0
  %2729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %2728, i64 47)
  %2730 = call %nyx_string* @nyx_string_concat(%nyx_string* %2727, %nyx_string* %2729)
  store %nyx_string* %2730, %nyx_string** %2502
  %2731 = load %nyx_string*, %nyx_string** %2502
  %2732 = getelementptr [20 x i8], [20 x i8]* @.str321, i32 0, i32 0
  %2733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %2732, i64 19)
  %2734 = call %nyx_string* @nyx_string_concat(%nyx_string* %2731, %nyx_string* %2733)
  store %nyx_string* %2734, %nyx_string** %2502
  %2735 = load %nyx_string*, %nyx_string** %2502
  %2736 = getelementptr [32 x i8], [32 x i8]* @.str322, i32 0, i32 0
  %2737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %2736, i64 31)
  %2738 = call %nyx_string* @nyx_string_concat(%nyx_string* %2735, %nyx_string* %2737)
  store %nyx_string* %2738, %nyx_string** %2502
  %2739 = load %nyx_string*, %nyx_string** %2502
  %2740 = getelementptr [37 x i8], [37 x i8]* @.str323, i32 0, i32 0
  %2741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %2740, i64 36)
  %2742 = call %nyx_string* @nyx_string_concat(%nyx_string* %2739, %nyx_string* %2741)
  store %nyx_string* %2742, %nyx_string** %2502
  %2743 = load %nyx_string*, %nyx_string** %2502
  %2744 = getelementptr [34 x i8], [34 x i8]* @.str324, i32 0, i32 0
  %2745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %2744, i64 33)
  %2746 = call %nyx_string* @nyx_string_concat(%nyx_string* %2743, %nyx_string* %2745)
  store %nyx_string* %2746, %nyx_string** %2502
  %2747 = load %nyx_string*, %nyx_string** %2502
  %2748 = getelementptr [101 x i8], [101 x i8]* @.str325, i32 0, i32 0
  %2749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %2748, i64 100)
  %2750 = call %nyx_string* @nyx_string_concat(%nyx_string* %2747, %nyx_string* %2749)
  store %nyx_string* %2750, %nyx_string** %2502
  %2751 = load %nyx_string*, %nyx_string** %2502
  %2752 = getelementptr [56 x i8], [56 x i8]* @.str326, i32 0, i32 0
  %2753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %2752, i64 55)
  %2754 = call %nyx_string* @nyx_string_concat(%nyx_string* %2751, %nyx_string* %2753)
  store %nyx_string* %2754, %nyx_string** %2502
  %2755 = load %nyx_string*, %nyx_string** %2502
  %2756 = getelementptr [24 x i8], [24 x i8]* @.str327, i32 0, i32 0
  %2757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %2756, i64 23)
  %2758 = call %nyx_string* @nyx_string_concat(%nyx_string* %2755, %nyx_string* %2757)
  store %nyx_string* %2758, %nyx_string** %2502
  %2759 = load %nyx_string*, %nyx_string** %2502
  %2760 = getelementptr [36 x i8], [36 x i8]* @.str328, i32 0, i32 0
  %2761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %2760, i64 35)
  %2762 = call %nyx_string* @nyx_string_concat(%nyx_string* %2759, %nyx_string* %2761)
  store %nyx_string* %2762, %nyx_string** %2502
  %2763 = load %nyx_string*, %nyx_string** %2502
  %2764 = getelementptr [41 x i8], [41 x i8]* @.str329, i32 0, i32 0
  %2765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %2764, i64 40)
  %2766 = call %nyx_string* @nyx_string_concat(%nyx_string* %2763, %nyx_string* %2765)
  store %nyx_string* %2766, %nyx_string** %2502
  %2767 = load %nyx_string*, %nyx_string** %2502
  %2768 = getelementptr [58 x i8], [58 x i8]* @.str330, i32 0, i32 0
  %2769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %2768, i64 57)
  %2770 = call %nyx_string* @nyx_string_concat(%nyx_string* %2767, %nyx_string* %2769)
  store %nyx_string* %2770, %nyx_string** %2502
  %2771 = load %nyx_string*, %nyx_string** %2502
  %2772 = getelementptr [99 x i8], [99 x i8]* @.str331, i32 0, i32 0
  %2773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %2772, i64 98)
  %2774 = call %nyx_string* @nyx_string_concat(%nyx_string* %2771, %nyx_string* %2773)
  store %nyx_string* %2774, %nyx_string** %2502
  %2775 = load %nyx_string*, %nyx_string** %2502
  %2776 = getelementptr [23 x i8], [23 x i8]* @.str332, i32 0, i32 0
  %2777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %2776, i64 22)
  %2778 = call %nyx_string* @nyx_string_concat(%nyx_string* %2775, %nyx_string* %2777)
  store %nyx_string* %2778, %nyx_string** %2502
  %2779 = load %nyx_string*, %nyx_string** %2502
  %2780 = getelementptr [11 x i8], [11 x i8]* @.str333, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %2780, i64 10)
  %2782 = call %nyx_string* @nyx_string_concat(%nyx_string* %2779, %nyx_string* %2781)
  store %nyx_string* %2782, %nyx_string** %2502
  %2783 = load %nyx_string*, %nyx_string** %2502
  %2784 = getelementptr [19 x i8], [19 x i8]* @.str334, i32 0, i32 0
  %2785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %2784, i64 18)
  %2786 = call %nyx_string* @nyx_string_concat(%nyx_string* %2783, %nyx_string* %2785)
  store %nyx_string* %2786, %nyx_string** %2502
  %2787 = load %nyx_string*, %nyx_string** %2502
  %2788 = getelementptr [7 x i8], [7 x i8]* @.str335, i32 0, i32 0
  %2789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %2788, i64 6)
  %2790 = call %nyx_string* @nyx_string_concat(%nyx_string* %2787, %nyx_string* %2789)
  store %nyx_string* %2790, %nyx_string** %2502
  %2791 = load %nyx_string*, %nyx_string** %2502
  %2792 = getelementptr [17 x i8], [17 x i8]* @.str336, i32 0, i32 0
  %2793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %2792, i64 16)
  %2794 = call %nyx_string* @nyx_string_concat(%nyx_string* %2791, %nyx_string* %2793)
  store %nyx_string* %2794, %nyx_string** %2502
  %2795 = load %nyx_string*, %nyx_string** %2502
  %2796 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %2797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %2796, i64 2)
  %2798 = call %nyx_string* @nyx_string_concat(%nyx_string* %2795, %nyx_string* %2797)
  store %nyx_string* %2798, %nyx_string** %2502
  %2799 = load %nyx_string*, %nyx_string** %2502
  %2800 = getelementptr [2 x i8], [2 x i8]* @.str338, i32 0, i32 0
  %2801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %2800, i64 1)
  %2802 = call %nyx_string* @nyx_string_concat(%nyx_string* %2799, %nyx_string* %2801)
  store %nyx_string* %2802, %nyx_string** %2502
  %2803 = load %nyx_string*, %nyx_string** %2502
  %2804 = getelementptr [52 x i8], [52 x i8]* @.str339, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %2804, i64 51)
  %2806 = call %nyx_string* @nyx_string_concat(%nyx_string* %2803, %nyx_string* %2805)
  store %nyx_string* %2806, %nyx_string** %2502
  %2807 = load %nyx_string*, %nyx_string** %2502
  %2808 = getelementptr [39 x i8], [39 x i8]* @.str340, i32 0, i32 0
  %2809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %2808, i64 38)
  %2810 = call %nyx_string* @nyx_string_concat(%nyx_string* %2807, %nyx_string* %2809)
  store %nyx_string* %2810, %nyx_string** %2502
  %2811 = load %nyx_string*, %nyx_string** %2502
  %2812 = getelementptr [126 x i8], [126 x i8]* @.str341, i32 0, i32 0
  %2813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %2812, i64 125)
  %2814 = call %nyx_string* @nyx_string_concat(%nyx_string* %2811, %nyx_string* %2813)
  store %nyx_string* %2814, %nyx_string** %2502
  %2815 = load %nyx_string*, %nyx_string** %2502
  %2816 = getelementptr [89 x i8], [89 x i8]* @.str342, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %2816, i64 88)
  %2818 = call %nyx_string* @nyx_string_concat(%nyx_string* %2815, %nyx_string* %2817)
  store %nyx_string* %2818, %nyx_string** %2502
  %2819 = load %nyx_string*, %nyx_string** %2502
  %2820 = getelementptr [3 x i8], [3 x i8]* @.str343, i32 0, i32 0
  %2821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %2820, i64 2)
  %2822 = call %nyx_string* @nyx_string_concat(%nyx_string* %2819, %nyx_string* %2821)
  store %nyx_string* %2822, %nyx_string** %2502
  %2823 = call { i64, i8* }* @gotchas_table()
  %2824 = alloca { i64, i8* }*
  store { i64, i8* }* %2823, { i64, i8* }** %2824
  %2825 = alloca i64
  store i64 0, i64* %2825
  %2826 = getelementptr [8 x i8], [8 x i8]* @.str344, i32 0, i32 0
  %2827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %2826, i64 7)
  %2828 = alloca %nyx_string*
  store %nyx_string* %2827, %nyx_string** %2828
  %2829 = getelementptr [1 x i8], [1 x i8]* @.str345, i32 0, i32 0
  %2830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %2829, i64 0)
  %2831 = alloca %nyx_string*
  store %nyx_string* %2830, %nyx_string** %2831
  %2832 = getelementptr [3 x i8], [3 x i8]* @.str346, i32 0, i32 0
  %2833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %2832, i64 2)
  %2834 = alloca %nyx_string*
  store %nyx_string* %2833, %nyx_string** %2834
  %2835 = getelementptr [9 x i8], [9 x i8]* @.str347, i32 0, i32 0
  %2836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %2835, i64 8)
  %2837 = alloca %nyx_string*
  store %nyx_string* %2836, %nyx_string** %2837
  %2838 = getelementptr [9 x i8], [9 x i8]* @.str348, i32 0, i32 0
  %2839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %2838, i64 8)
  %2840 = alloca %nyx_string*
  store %nyx_string* %2839, %nyx_string** %2840
  %2841 = getelementptr [2 x i8], [2 x i8]* @.str349, i32 0, i32 0
  %2842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %2841, i64 1)
  %2843 = alloca %nyx_string*
  store %nyx_string* %2842, %nyx_string** %2843
  %2844 = getelementptr [14 x i8], [14 x i8]* @.str350, i32 0, i32 0
  %2845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %2844, i64 13)
  %2846 = alloca %nyx_string*
  store %nyx_string* %2845, %nyx_string** %2846
  %2847 = getelementptr [3 x i8], [3 x i8]* @.str351, i32 0, i32 0
  %2848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %2847, i64 2)
  %2849 = alloca %nyx_string*
  store %nyx_string* %2848, %nyx_string** %2849
  %2850 = getelementptr [5 x i8], [5 x i8]* @.str352, i32 0, i32 0
  %2851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %2850, i64 4)
  %2852 = alloca %nyx_string*
  store %nyx_string* %2851, %nyx_string** %2852
  %2853 = getelementptr [37 x i8], [37 x i8]* @.str353, i32 0, i32 0
  %2854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %2853, i64 36)
  %2855 = alloca %nyx_string*
  store %nyx_string* %2854, %nyx_string** %2855
  %2856 = getelementptr [4 x i8], [4 x i8]* @.str354, i32 0, i32 0
  %2857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %2856, i64 3)
  %2858 = alloca %nyx_string*
  store %nyx_string* %2857, %nyx_string** %2858
  %2859 = getelementptr [33 x i8], [33 x i8]* @.str355, i32 0, i32 0
  %2860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %2859, i64 32)
  %2861 = alloca %nyx_string*
  store %nyx_string* %2860, %nyx_string** %2861
  %2862 = getelementptr [3 x i8], [3 x i8]* @.str356, i32 0, i32 0
  %2863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %2862, i64 2)
  %2864 = alloca %nyx_string*
  store %nyx_string* %2863, %nyx_string** %2864
  %2865 = getelementptr [28 x i8], [28 x i8]* @.str357, i32 0, i32 0
  %2866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %2865, i64 27)
  %2867 = alloca %nyx_string*
  store %nyx_string* %2866, %nyx_string** %2867
  %2868 = getelementptr [3 x i8], [3 x i8]* @.str358, i32 0, i32 0
  %2869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %2868, i64 2)
  %2870 = alloca %nyx_string*
  store %nyx_string* %2869, %nyx_string** %2870
  %2871 = call i8* @llvm.stacksave()
  br label %while_cond476
while_cond476:
  %2872 = load i64, i64* %2825
  %2873 = load { i64, i8* }*, { i64, i8* }** %2824
  %2874 = call i64 @nyx_array_length({ i64, i8* }* %2873)
  %2875 = icmp slt i64 %2872, %2874
  br i1 %2875, label %while_body477, label %while_end478
while_body477:
  call void @llvm.stackrestore(i8* %2871)
  %2876 = load { i64, i8* }*, { i64, i8* }** %2824
  %2877 = load i64, i64* %2825
  %2878 = call i64 @nyx_array_get({ i64, i8* }* %2876, i64 %2877)
  %2879 = inttoptr i64 %2878 to { i64, i8* }*
  %2880 = alloca { i64, i8* }*
  store { i64, i8* }* %2879, { i64, i8* }** %2880
  %2881 = load { i64, i8* }*, { i64, i8* }** %2880
  %2882 = load %nyx_string*, %nyx_string** %2828
  %2883 = call %nyx_string* @gotcha_field({ i64, i8* }* %2881, %nyx_string* %2882)
  %2884 = alloca %nyx_string*
  store %nyx_string* %2883, %nyx_string** %2884
  %2885 = load %nyx_string*, %nyx_string** %2884
  %2886 = load %nyx_string*, %nyx_string** %2831
  %2887 = call i1 @nyx_string_equals(%nyx_string* %2885, %nyx_string* %2886)
  %2888 = xor i1 %2887, true
  br i1 %2888, label %then479, label %else480
then479:
  %2889 = load { i64, i8* }*, { i64, i8* }** %2880
  %2890 = load %nyx_string*, %nyx_string** %2834
  %2891 = call %nyx_string* @gotcha_field({ i64, i8* }* %2889, %nyx_string* %2890)
  %2892 = alloca %nyx_string*
  store %nyx_string* %2891, %nyx_string** %2892
  %2893 = load { i64, i8* }*, { i64, i8* }** %2880
  %2894 = load %nyx_string*, %nyx_string** %2837
  %2895 = call %nyx_string* @gotcha_field({ i64, i8* }* %2893, %nyx_string* %2894)
  %2896 = alloca %nyx_string*
  store %nyx_string* %2895, %nyx_string** %2896
  %2897 = load { i64, i8* }*, { i64, i8* }** %2880
  %2898 = load %nyx_string*, %nyx_string** %2840
  %2899 = call %nyx_string* @gotcha_field({ i64, i8* }* %2897, %nyx_string* %2898)
  %2900 = alloca %nyx_string*
  store %nyx_string* %2899, %nyx_string** %2900
  %2901 = load %nyx_string*, %nyx_string** %2502
  %2902 = load %nyx_string*, %nyx_string** %2843
  %2903 = call %nyx_string* @nyx_string_concat(%nyx_string* %2901, %nyx_string* %2902)
  store %nyx_string* %2903, %nyx_string** %2502
  %2904 = load %nyx_string*, %nyx_string** %2502
  %2905 = load %nyx_string*, %nyx_string** %2846
  %2906 = call %nyx_string* @nyx_string_concat(%nyx_string* %2904, %nyx_string* %2905)
  %2907 = load %nyx_string*, %nyx_string** %2892
  %2908 = call %nyx_string* @nyx_string_concat(%nyx_string* %2906, %nyx_string* %2907)
  %2909 = load %nyx_string*, %nyx_string** %2849
  %2910 = call %nyx_string* @nyx_string_concat(%nyx_string* %2908, %nyx_string* %2909)
  %2911 = load %nyx_string*, %nyx_string** %2896
  %2912 = call %nyx_string* @nx_escape(%nyx_string* %2911)
  %2913 = call %nyx_string* @nyx_string_concat(%nyx_string* %2910, %nyx_string* %2912)
  %2914 = load %nyx_string*, %nyx_string** %2852
  %2915 = call %nyx_string* @nyx_string_concat(%nyx_string* %2913, %nyx_string* %2914)
  store %nyx_string* %2915, %nyx_string** %2502
  %2916 = load %nyx_string*, %nyx_string** %2502
  %2917 = load %nyx_string*, %nyx_string** %2855
  %2918 = call %nyx_string* @nyx_string_concat(%nyx_string* %2916, %nyx_string* %2917)
  %2919 = load %nyx_string*, %nyx_string** %2884
  %2920 = call %nyx_string* @nx_escape(%nyx_string* %2919)
  %2921 = call %nyx_string* @nyx_string_concat(%nyx_string* %2918, %nyx_string* %2920)
  %2922 = load %nyx_string*, %nyx_string** %2858
  %2923 = call %nyx_string* @nyx_string_concat(%nyx_string* %2921, %nyx_string* %2922)
  store %nyx_string* %2923, %nyx_string** %2502
  %2924 = load %nyx_string*, %nyx_string** %2502
  %2925 = load %nyx_string*, %nyx_string** %2861
  %2926 = call %nyx_string* @nyx_string_concat(%nyx_string* %2924, %nyx_string* %2925)
  %2927 = load %nyx_string*, %nyx_string** %2892
  %2928 = call %nyx_string* @nyx_string_concat(%nyx_string* %2926, %nyx_string* %2927)
  %2929 = load %nyx_string*, %nyx_string** %2864
  %2930 = call %nyx_string* @nyx_string_concat(%nyx_string* %2928, %nyx_string* %2929)
  %2931 = load %nyx_string*, %nyx_string** %2900
  %2932 = call %nyx_string* @nyx_string_concat(%nyx_string* %2930, %nyx_string* %2931)
  %2933 = load %nyx_string*, %nyx_string** %2867
  %2934 = call %nyx_string* @nyx_string_concat(%nyx_string* %2932, %nyx_string* %2933)
  store %nyx_string* %2934, %nyx_string** %2502
  %2935 = load %nyx_string*, %nyx_string** %2502
  %2936 = load %nyx_string*, %nyx_string** %2870
  %2937 = call %nyx_string* @nyx_string_concat(%nyx_string* %2935, %nyx_string* %2936)
  store %nyx_string* %2937, %nyx_string** %2502
  br label %merge481
else480:
  br label %merge481
merge481:
  %2938 = load i64, i64* %2825
  %2939 = add i64 %2938, 1
  store i64 %2939, i64* %2825
  br label %while_cond476
while_end478:
  %2940 = load %nyx_string*, %nyx_string** %2502
  %2941 = getelementptr [2 x i8], [2 x i8]* @.str359, i32 0, i32 0
  %2942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %2941, i64 1)
  %2943 = call %nyx_string* @nyx_string_concat(%nyx_string* %2940, %nyx_string* %2942)
  store %nyx_string* %2943, %nyx_string** %2502
  %2944 = load %nyx_string*, %nyx_string** %2502
  %2945 = getelementptr [47 x i8], [47 x i8]* @.str360, i32 0, i32 0
  %2946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %2945, i64 46)
  %2947 = call %nyx_string* @nyx_string_concat(%nyx_string* %2944, %nyx_string* %2946)
  store %nyx_string* %2947, %nyx_string** %2502
  %2948 = load %nyx_string*, %nyx_string** %2502
  %2949 = getelementptr [39 x i8], [39 x i8]* @.str361, i32 0, i32 0
  %2950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %2949, i64 38)
  %2951 = call %nyx_string* @nyx_string_concat(%nyx_string* %2948, %nyx_string* %2950)
  store %nyx_string* %2951, %nyx_string** %2502
  %2952 = load %nyx_string*, %nyx_string** %2502
  %2953 = getelementptr [50 x i8], [50 x i8]* @.str362, i32 0, i32 0
  %2954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %2953, i64 49)
  %2955 = call %nyx_string* @nyx_string_concat(%nyx_string* %2952, %nyx_string* %2954)
  store %nyx_string* %2955, %nyx_string** %2502
  %2956 = load %nyx_string*, %nyx_string** %2502
  %2957 = getelementptr [20 x i8], [20 x i8]* @.str363, i32 0, i32 0
  %2958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %2957, i64 19)
  %2959 = call %nyx_string* @nyx_string_concat(%nyx_string* %2956, %nyx_string* %2958)
  store %nyx_string* %2959, %nyx_string** %2502
  %2960 = load %nyx_string*, %nyx_string** %2502
  %2961 = getelementptr [32 x i8], [32 x i8]* @.str364, i32 0, i32 0
  %2962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %2961, i64 31)
  %2963 = call %nyx_string* @nyx_string_concat(%nyx_string* %2960, %nyx_string* %2962)
  store %nyx_string* %2963, %nyx_string** %2502
  %2964 = load %nyx_string*, %nyx_string** %2502
  %2965 = getelementptr [34 x i8], [34 x i8]* @.str365, i32 0, i32 0
  %2966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %2965, i64 33)
  %2967 = call %nyx_string* @nyx_string_concat(%nyx_string* %2964, %nyx_string* %2966)
  store %nyx_string* %2967, %nyx_string** %2502
  %2968 = load %nyx_string*, %nyx_string** %2502
  %2969 = getelementptr [114 x i8], [114 x i8]* @.str366, i32 0, i32 0
  %2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %2969, i64 113)
  %2971 = call %nyx_string* @nyx_string_concat(%nyx_string* %2968, %nyx_string* %2970)
  store %nyx_string* %2971, %nyx_string** %2502
  %2972 = load %nyx_string*, %nyx_string** %2502
  %2973 = getelementptr [19 x i8], [19 x i8]* @.str367, i32 0, i32 0
  %2974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %2973, i64 18)
  %2975 = call %nyx_string* @nyx_string_concat(%nyx_string* %2972, %nyx_string* %2974)
  store %nyx_string* %2975, %nyx_string** %2502
  %2976 = load %nyx_string*, %nyx_string** %2502
  %2977 = getelementptr [7 x i8], [7 x i8]* @.str368, i32 0, i32 0
  %2978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %2977, i64 6)
  %2979 = call %nyx_string* @nyx_string_concat(%nyx_string* %2976, %nyx_string* %2978)
  store %nyx_string* %2979, %nyx_string** %2502
  %2980 = load %nyx_string*, %nyx_string** %2502
  %2981 = getelementptr [3 x i8], [3 x i8]* @.str369, i32 0, i32 0
  %2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %2981, i64 2)
  %2983 = call %nyx_string* @nyx_string_concat(%nyx_string* %2980, %nyx_string* %2982)
  store %nyx_string* %2983, %nyx_string** %2502
  %2984 = load %nyx_string*, %nyx_string** %2502
  ret %nyx_string* %2984
}

define internal i64 @write_constitution_test(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %2985 = load %nyx_string*, %nyx_string** %dir.ptr
  %2986 = getelementptr [28 x i8], [28 x i8]* @.str370, i32 0, i32 0
  %2987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %2986, i64 27)
  %2988 = call %nyx_string* @nyx_string_concat(%nyx_string* %2985, %nyx_string* %2987)
  %2989 = alloca %nyx_string*
  store %nyx_string* %2988, %nyx_string** %2989
  %2990 = call %nyx_string* @constitution_test_body()
  %2991 = alloca %nyx_string*
  store %nyx_string* %2990, %nyx_string** %2991
  %2992 = load %nyx_string*, %nyx_string** %2989
  %2993 = call i8* @nyx_string_to_cstr(%nyx_string* %2992)
  %2994 = call i1 @nyx_file_exists(i8* %2993)
  br i1 %2994, label %then482, label %else483
then482:
  %2995 = load %nyx_string*, %nyx_string** %2989
  %2996 = call i8* @nyx_string_to_cstr(%nyx_string* %2995)
  %2997 = call %nyx_string* @nyx_read_file(i8* %2996)
  %2998 = alloca %nyx_string*
  store %nyx_string* %2997, %nyx_string** %2998
  %2999 = load %nyx_string*, %nyx_string** %2998
  %3000 = load %nyx_string*, %nyx_string** %2991
  %3001 = call i1 @nyx_string_equals(%nyx_string* %2999, %nyx_string* %3000)
  br i1 %3001, label %then485, label %else486
then485:
  ret i64 0
else486:
  br label %merge487
merge487:
  %3002 = load %nyx_string*, %nyx_string** %2998
  %3003 = call %nyx_string* @sdd_generated_marker()
  %3004 = call i64 @nyx_string_index_of(%nyx_string* %3002, %nyx_string* %3003)
  %3005 = icmp slt i64 %3004, 0
  br i1 %3005, label %then488, label %else489
then488:
  ret i64 2
else489:
  br label %merge490
merge490:
  br label %merge484
else483:
  br label %merge484
merge484:
  %3006 = load %nyx_string*, %nyx_string** %2989
  %3007 = load %nyx_string*, %nyx_string** %2991
  %3008 = call i8* @nyx_string_to_cstr(%nyx_string* %3006)
  %3009 = call i8* @nyx_string_to_cstr(%nyx_string* %3007)
  %3010 = call i1 @nyx_write_file(i8* %3008, i8* %3009)
  ret i64 1
}

define internal i1 @add_agents_triggers(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3011 = load %nyx_string*, %nyx_string** %dir.ptr
  %3012 = getelementptr [11 x i8], [11 x i8]* @.str371, i32 0, i32 0
  %3013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3012, i64 10)
  %3014 = call %nyx_string* @nyx_string_concat(%nyx_string* %3011, %nyx_string* %3013)
  %3015 = alloca %nyx_string*
  store %nyx_string* %3014, %nyx_string** %3015
  %3016 = load %nyx_string*, %nyx_string** %3015
  %3017 = call i8* @nyx_string_to_cstr(%nyx_string* %3016)
  %3018 = call i1 @nyx_file_exists(i8* %3017)
  %3019 = icmp eq i1 %3018, 0
  br i1 %3019, label %then491, label %else492
then491:
  %3020 = getelementptr [30 x i8], [30 x i8]* @.str372, i32 0, i32 0
  %3021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3020, i64 29)
  %3022 = load %nyx_string*, %nyx_string** %dir.ptr
  %3023 = call %nyx_string* @nyx_string_concat(%nyx_string* %3021, %nyx_string* %3022)
  %3024 = getelementptr [79 x i8], [79 x i8]* @.str373, i32 0, i32 0
  %3025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3024, i64 78)
  %3026 = call %nyx_string* @nyx_string_concat(%nyx_string* %3023, %nyx_string* %3025)
  %3027 = call i8* @nyx_string_to_cstr(%nyx_string* %3026)
  call void @nyx_print_string(i8* %3027)
  ret i1 0
else492:
  br label %merge493
merge493:
  %3028 = load %nyx_string*, %nyx_string** %3015
  %3029 = call i8* @nyx_string_to_cstr(%nyx_string* %3028)
  %3030 = call %nyx_string* @nyx_read_file(i8* %3029)
  %3031 = alloca %nyx_string*
  store %nyx_string* %3030, %nyx_string** %3031
  %3032 = load %nyx_string*, %nyx_string** %3031
  %3033 = getelementptr [21 x i8], [21 x i8]* @.str374, i32 0, i32 0
  %3034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3033, i64 20)
  %3035 = call i64 @nyx_string_index_of(%nyx_string* %3032, %nyx_string* %3034)
  %3036 = icmp sge i64 %3035, 0
  br i1 %3036, label %then494, label %else495
then494:
  %3037 = load %nyx_string*, %nyx_string** %lang.ptr
  %3038 = getelementptr [47 x i8], [47 x i8]* @.str375, i32 0, i32 0
  %3039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3038, i64 46)
  %3040 = getelementptr [47 x i8], [47 x i8]* @.str376, i32 0, i32 0
  %3041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3040, i64 46)
  %3042 = call %nyx_string* @sdd_msg(%nyx_string* %3037, %nyx_string* %3039, %nyx_string* %3041)
  %3043 = call i8* @nyx_string_to_cstr(%nyx_string* %3042)
  call void @nyx_print_string(i8* %3043)
  ret i1 0
else495:
  br label %merge496
merge496:
  %3044 = getelementptr [22 x i8], [22 x i8]* @.str377, i32 0, i32 0
  %3045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3044, i64 21)
  %3046 = alloca %nyx_string*
  store %nyx_string* %3045, %nyx_string** %3046
  %3047 = load %nyx_string*, %nyx_string** %lang.ptr
  %3048 = getelementptr [3 x i8], [3 x i8]* @.str378, i32 0, i32 0
  %3049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3048, i64 2)
  %3050 = call i1 @nyx_string_equals(%nyx_string* %3047, %nyx_string* %3049)
  br i1 %3050, label %then497, label %else498
then497:
  %3051 = load %nyx_string*, %nyx_string** %3046
  %3052 = getelementptr [150 x i8], [150 x i8]* @.str379, i32 0, i32 0
  %3053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %3052, i64 149)
  %3054 = call %nyx_string* @nyx_string_concat(%nyx_string* %3051, %nyx_string* %3053)
  store %nyx_string* %3054, %nyx_string** %3046
  %3055 = load %nyx_string*, %nyx_string** %3046
  %3056 = getelementptr [122 x i8], [122 x i8]* @.str380, i32 0, i32 0
  %3057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %3056, i64 121)
  %3058 = call %nyx_string* @nyx_string_concat(%nyx_string* %3055, %nyx_string* %3057)
  store %nyx_string* %3058, %nyx_string** %3046
  br label %merge499
else498:
  %3059 = load %nyx_string*, %nyx_string** %3046
  %3060 = getelementptr [152 x i8], [152 x i8]* @.str381, i32 0, i32 0
  %3061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %3060, i64 151)
  %3062 = call %nyx_string* @nyx_string_concat(%nyx_string* %3059, %nyx_string* %3061)
  store %nyx_string* %3062, %nyx_string** %3046
  %3063 = load %nyx_string*, %nyx_string** %3046
  %3064 = getelementptr [113 x i8], [113 x i8]* @.str382, i32 0, i32 0
  %3065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %3064, i64 112)
  %3066 = call %nyx_string* @nyx_string_concat(%nyx_string* %3063, %nyx_string* %3065)
  store %nyx_string* %3066, %nyx_string** %3046
  br label %merge499
merge499:
  %3067 = getelementptr [19 x i8], [19 x i8]* @.str383, i32 0, i32 0
  %3068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %3067, i64 18)
  %3069 = alloca %nyx_string*
  store %nyx_string* %3068, %nyx_string** %3069
  %3070 = load %nyx_string*, %nyx_string** %3031
  %3071 = load %nyx_string*, %nyx_string** %3069
  %3072 = call i64 @nyx_string_index_of(%nyx_string* %3070, %nyx_string* %3071)
  %3073 = alloca i64
  store i64 %3072, i64* %3073
  %3074 = load i64, i64* %3073
  %3075 = icmp slt i64 %3074, 0
  br i1 %3075, label %then500, label %else501
then500:
  %3076 = load %nyx_string*, %nyx_string** %3015
  %3077 = load %nyx_string*, %nyx_string** %3031
  %3078 = getelementptr [2 x i8], [2 x i8]* @.str384, i32 0, i32 0
  %3079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %3078, i64 1)
  %3080 = call %nyx_string* @nyx_string_concat(%nyx_string* %3077, %nyx_string* %3079)
  %3081 = load %nyx_string*, %nyx_string** %3046
  %3082 = call %nyx_string* @nyx_string_concat(%nyx_string* %3080, %nyx_string* %3081)
  %3083 = call i8* @nyx_string_to_cstr(%nyx_string* %3076)
  %3084 = call i8* @nyx_string_to_cstr(%nyx_string* %3082)
  %3085 = call i1 @nyx_write_file(i8* %3083, i8* %3084)
  br label %merge502
else501:
  %3086 = load %nyx_string*, %nyx_string** %3015
  %3087 = load %nyx_string*, %nyx_string** %3031
  %3088 = load i64, i64* %3073
  %3089 = call %nyx_string* @nyx_string_substring(%nyx_string* %3087, i64 0, i64 %3088)
  %3090 = load %nyx_string*, %nyx_string** %3046
  %3091 = call %nyx_string* @nyx_string_concat(%nyx_string* %3089, %nyx_string* %3090)
  %3092 = getelementptr [2 x i8], [2 x i8]* @.str385, i32 0, i32 0
  %3093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %3092, i64 1)
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3091, %nyx_string* %3093)
  %3095 = load %nyx_string*, %nyx_string** %3031
  %3096 = load i64, i64* %3073
  %3097 = load %nyx_string*, %nyx_string** %3031
  %3098 = call i64 @nyx_string_byte_length(%nyx_string* %3097)
  %3099 = call %nyx_string* @nyx_string_substring(%nyx_string* %3095, i64 %3096, i64 %3098)
  %3100 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3099)
  %3101 = call i8* @nyx_string_to_cstr(%nyx_string* %3086)
  %3102 = call i8* @nyx_string_to_cstr(%nyx_string* %3100)
  %3103 = call i1 @nyx_write_file(i8* %3101, i8* %3102)
  br label %merge502
merge502:
  %3104 = load %nyx_string*, %nyx_string** %lang.ptr
  %3105 = getelementptr [36 x i8], [36 x i8]* @.str386, i32 0, i32 0
  %3106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %3105, i64 35)
  %3107 = getelementptr [40 x i8], [40 x i8]* @.str387, i32 0, i32 0
  %3108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %3107, i64 39)
  %3109 = call %nyx_string* @sdd_msg(%nyx_string* %3104, %nyx_string* %3106, %nyx_string* %3108)
  %3110 = call i8* @nyx_string_to_cstr(%nyx_string* %3109)
  call void @nyx_print_string(i8* %3110)
  ret i1 1
}

define internal i1 @run_sdd_evidence(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3111 = getelementptr [11 x i8], [11 x i8]* @.str388, i32 0, i32 0
  %3112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %3111, i64 10)
  %3113 = load %nyx_string*, %nyx_string** %dir.ptr
  %3114 = call %nyx_string* @nyx_string_concat(%nyx_string* %3112, %nyx_string* %3113)
  %3115 = getelementptr [16 x i8], [16 x i8]* @.str389, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %3115, i64 15)
  %3117 = call %nyx_string* @nyx_string_concat(%nyx_string* %3114, %nyx_string* %3116)
  %3118 = call i8* @nyx_string_to_cstr(%nyx_string* %3117)
  %3119 = call %nyx_string* @nyx_exec(i8* %3118)
  %3120 = load %nyx_string*, %nyx_string** %dir.ptr
  %3121 = load %nyx_string*, %nyx_string** %lang.ptr
  %3122 = call i64 @write_evidence(%nyx_string* %3120, %nyx_string* %3121)
  %3123 = alloca i64
  store i64 %3122, i64* %3123
  %3124 = load i64, i64* %3123
  %3125 = icmp eq i64 %3124, 2
  br i1 %3125, label %then503, label %else504
then503:
  %3126 = load %nyx_string*, %nyx_string** %lang.ptr
  %3127 = getelementptr [59 x i8], [59 x i8]* @.str390, i32 0, i32 0
  %3128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %3127, i64 58)
  %3129 = call %nyx_string* @toolchain_version()
  %3130 = call %nyx_string* @nyx_string_concat(%nyx_string* %3128, %nyx_string* %3129)
  %3131 = getelementptr [4 x i8], [4 x i8]* @.str391, i32 0, i32 0
  %3132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %3131, i64 3)
  %3133 = call %nyx_string* @nyx_string_concat(%nyx_string* %3130, %nyx_string* %3132)
  %3134 = getelementptr [65 x i8], [65 x i8]* @.str392, i32 0, i32 0
  %3135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %3134, i64 64)
  %3136 = call %nyx_string* @toolchain_version()
  %3137 = call %nyx_string* @nyx_string_concat(%nyx_string* %3135, %nyx_string* %3136)
  %3138 = getelementptr [4 x i8], [4 x i8]* @.str393, i32 0, i32 0
  %3139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %3138, i64 3)
  %3140 = call %nyx_string* @nyx_string_concat(%nyx_string* %3137, %nyx_string* %3139)
  %3141 = call %nyx_string* @sdd_msg(%nyx_string* %3126, %nyx_string* %3133, %nyx_string* %3140)
  %3142 = call i8* @nyx_string_to_cstr(%nyx_string* %3141)
  call void @nyx_print_string(i8* %3142)
  br label %merge505
else504:
  br label %merge505
merge505:
  %3143 = load i64, i64* %3123
  %3144 = icmp eq i64 %3143, 1
  br i1 %3144, label %then506, label %else507
then506:
  %3145 = load %nyx_string*, %nyx_string** %lang.ptr
  %3146 = getelementptr [34 x i8], [34 x i8]* @.str394, i32 0, i32 0
  %3147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %3146, i64 33)
  %3148 = call %nyx_string* @toolchain_version()
  %3149 = call %nyx_string* @nyx_string_concat(%nyx_string* %3147, %nyx_string* %3148)
  %3150 = getelementptr [4 x i8], [4 x i8]* @.str395, i32 0, i32 0
  %3151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %3150, i64 3)
  %3152 = call %nyx_string* @nyx_string_concat(%nyx_string* %3149, %nyx_string* %3151)
  %3153 = getelementptr [33 x i8], [33 x i8]* @.str396, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %3153, i64 32)
  %3155 = call %nyx_string* @toolchain_version()
  %3156 = call %nyx_string* @nyx_string_concat(%nyx_string* %3154, %nyx_string* %3155)
  %3157 = getelementptr [4 x i8], [4 x i8]* @.str397, i32 0, i32 0
  %3158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %3157, i64 3)
  %3159 = call %nyx_string* @nyx_string_concat(%nyx_string* %3156, %nyx_string* %3158)
  %3160 = call %nyx_string* @sdd_msg(%nyx_string* %3145, %nyx_string* %3152, %nyx_string* %3159)
  %3161 = call i8* @nyx_string_to_cstr(%nyx_string* %3160)
  call void @nyx_print_string(i8* %3161)
  br label %merge508
else507:
  br label %merge508
merge508:
  %3162 = load i64, i64* %3123
  %3163 = icmp eq i64 %3162, 0
  br i1 %3163, label %then509, label %else510
then509:
  %3164 = load %nyx_string*, %nyx_string** %lang.ptr
  %3165 = getelementptr [41 x i8], [41 x i8]* @.str398, i32 0, i32 0
  %3166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %3165, i64 40)
  %3167 = call %nyx_string* @toolchain_version()
  %3168 = call %nyx_string* @nyx_string_concat(%nyx_string* %3166, %nyx_string* %3167)
  %3169 = getelementptr [4 x i8], [4 x i8]* @.str399, i32 0, i32 0
  %3170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %3169, i64 3)
  %3171 = call %nyx_string* @nyx_string_concat(%nyx_string* %3168, %nyx_string* %3170)
  %3172 = getelementptr [39 x i8], [39 x i8]* @.str400, i32 0, i32 0
  %3173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %3172, i64 38)
  %3174 = call %nyx_string* @toolchain_version()
  %3175 = call %nyx_string* @nyx_string_concat(%nyx_string* %3173, %nyx_string* %3174)
  %3176 = getelementptr [4 x i8], [4 x i8]* @.str401, i32 0, i32 0
  %3177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %3176, i64 3)
  %3178 = call %nyx_string* @nyx_string_concat(%nyx_string* %3175, %nyx_string* %3177)
  %3179 = call %nyx_string* @sdd_msg(%nyx_string* %3164, %nyx_string* %3171, %nyx_string* %3178)
  %3180 = call i8* @nyx_string_to_cstr(%nyx_string* %3179)
  call void @nyx_print_string(i8* %3180)
  br label %merge511
else510:
  br label %merge511
merge511:
  %3181 = load %nyx_string*, %nyx_string** %dir.ptr
  %3182 = getelementptr [28 x i8], [28 x i8]* @.str402, i32 0, i32 0
  %3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %3182, i64 27)
  %3184 = call %nyx_string* @nyx_string_concat(%nyx_string* %3181, %nyx_string* %3183)
  %3185 = call i8* @nyx_string_to_cstr(%nyx_string* %3184)
  %3186 = call i1 @nyx_file_exists(i8* %3185)
  br i1 %3186, label %then512, label %else513
then512:
  %3187 = load %nyx_string*, %nyx_string** %dir.ptr
  %3188 = call i64 @write_constitution_test(%nyx_string* %3187)
  %3189 = alloca i64
  store i64 %3188, i64* %3189
  %3190 = load i64, i64* %3189
  %3191 = icmp eq i64 %3190, 1
  br i1 %3191, label %then515, label %else516
then515:
  %3192 = load %nyx_string*, %nyx_string** %lang.ptr
  %3193 = getelementptr [42 x i8], [42 x i8]* @.str403, i32 0, i32 0
  %3194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %3193, i64 41)
  %3195 = getelementptr [41 x i8], [41 x i8]* @.str404, i32 0, i32 0
  %3196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %3195, i64 40)
  %3197 = call %nyx_string* @sdd_msg(%nyx_string* %3192, %nyx_string* %3194, %nyx_string* %3196)
  %3198 = call i8* @nyx_string_to_cstr(%nyx_string* %3197)
  call void @nyx_print_string(i8* %3198)
  br label %merge517
else516:
  br label %merge517
merge517:
  %3199 = load i64, i64* %3189
  %3200 = icmp eq i64 %3199, 2
  br i1 %3200, label %then518, label %else519
then518:
  %3201 = load %nyx_string*, %nyx_string** %lang.ptr
  %3202 = getelementptr [67 x i8], [67 x i8]* @.str405, i32 0, i32 0
  %3203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %3202, i64 66)
  %3204 = getelementptr [73 x i8], [73 x i8]* @.str406, i32 0, i32 0
  %3205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %3204, i64 72)
  %3206 = call %nyx_string* @sdd_msg(%nyx_string* %3201, %nyx_string* %3203, %nyx_string* %3205)
  %3207 = call i8* @nyx_string_to_cstr(%nyx_string* %3206)
  call void @nyx_print_string(i8* %3207)
  br label %merge520
else519:
  br label %merge520
merge520:
  %3208 = load i64, i64* %3189
  %3209 = icmp eq i64 %3208, 0
  br i1 %3209, label %then521, label %else522
then521:
  %3210 = load %nyx_string*, %nyx_string** %lang.ptr
  %3211 = getelementptr [49 x i8], [49 x i8]* @.str407, i32 0, i32 0
  %3212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %3211, i64 48)
  %3213 = getelementptr [47 x i8], [47 x i8]* @.str408, i32 0, i32 0
  %3214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %3213, i64 46)
  %3215 = call %nyx_string* @sdd_msg(%nyx_string* %3210, %nyx_string* %3212, %nyx_string* %3214)
  %3216 = call i8* @nyx_string_to_cstr(%nyx_string* %3215)
  call void @nyx_print_string(i8* %3216)
  br label %merge523
else522:
  br label %merge523
merge523:
  br label %merge514
else513:
  br label %merge514
merge514:
  ret i1 1
}

define internal i1 @run_sdd_init(
%nyx_string* %dir.param, %nyx_string* %lang.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %lang.ptr = alloca %nyx_string*
  store %nyx_string* %lang.param, %nyx_string** %lang.ptr
  %3217 = call %nyx_string* @resolve_seed_home()
  %3218 = alloca %nyx_string*
  store %nyx_string* %3217, %nyx_string** %3218
  %3219 = load %nyx_string*, %nyx_string** %3218
  %3220 = getelementptr [12 x i8], [12 x i8]* @.str409, i32 0, i32 0
  %3221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %3220, i64 11)
  %3222 = call %nyx_string* @nyx_string_concat(%nyx_string* %3219, %nyx_string* %3221)
  %3223 = load %nyx_string*, %nyx_string** %lang.ptr
  %3224 = call %nyx_string* @nyx_string_concat(%nyx_string* %3222, %nyx_string* %3223)
  %3225 = getelementptr [5 x i8], [5 x i8]* @.str410, i32 0, i32 0
  %3226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %3225, i64 4)
  %3227 = call %nyx_string* @nyx_string_concat(%nyx_string* %3224, %nyx_string* %3226)
  %3228 = alloca %nyx_string*
  store %nyx_string* %3227, %nyx_string** %3228
  %3229 = alloca i1
  store i1 true, i1* %3229
  %3230 = load %nyx_string*, %nyx_string** %3218
  %3231 = getelementptr [1 x i8], [1 x i8]* @.str411, i32 0, i32 0
  %3232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %3231, i64 0)
  %3233 = call i1 @nyx_string_equals(%nyx_string* %3230, %nyx_string* %3232)
  br i1 %3233, label %sc_or_end525, label %sc_or_rhs524
sc_or_rhs524:
  %3234 = load %nyx_string*, %nyx_string** %3228
  %3235 = getelementptr [17 x i8], [17 x i8]* @.str412, i32 0, i32 0
  %3236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %3235, i64 16)
  %3237 = call %nyx_string* @nyx_string_concat(%nyx_string* %3234, %nyx_string* %3236)
  %3238 = call i8* @nyx_string_to_cstr(%nyx_string* %3237)
  %3239 = call i1 @nyx_file_exists(i8* %3238)
  %3240 = icmp eq i1 %3239, 0
  store i1 %3240, i1* %3229
  br label %sc_or_end525
sc_or_end525:
  %3241 = load i1, i1* %3229
  br i1 %3241, label %then526, label %else527
then526:
  %3242 = load %nyx_string*, %nyx_string** %lang.ptr
  %3243 = getelementptr [49 x i8], [49 x i8]* @.str413, i32 0, i32 0
  %3244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %3243, i64 48)
  %3245 = load %nyx_string*, %nyx_string** %lang.ptr
  %3246 = call %nyx_string* @nyx_string_concat(%nyx_string* %3244, %nyx_string* %3245)
  %3247 = getelementptr [59 x i8], [59 x i8]* @.str414, i32 0, i32 0
  %3248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %3247, i64 58)
  %3249 = call %nyx_string* @nyx_string_concat(%nyx_string* %3246, %nyx_string* %3248)
  %3250 = getelementptr [61 x i8], [61 x i8]* @.str415, i32 0, i32 0
  %3251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %3250, i64 60)
  %3252 = load %nyx_string*, %nyx_string** %lang.ptr
  %3253 = call %nyx_string* @nyx_string_concat(%nyx_string* %3251, %nyx_string* %3252)
  %3254 = getelementptr [44 x i8], [44 x i8]* @.str416, i32 0, i32 0
  %3255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %3254, i64 43)
  %3256 = call %nyx_string* @nyx_string_concat(%nyx_string* %3253, %nyx_string* %3255)
  %3257 = call %nyx_string* @sdd_msg(%nyx_string* %3242, %nyx_string* %3249, %nyx_string* %3256)
  %3258 = call i8* @nyx_string_to_cstr(%nyx_string* %3257)
  call void @nyx_print_string(i8* %3258)
  %3259 = load %nyx_string*, %nyx_string** %lang.ptr
  %3260 = getelementptr [104 x i8], [104 x i8]* @.str417, i32 0, i32 0
  %3261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %3260, i64 103)
  %3262 = getelementptr [109 x i8], [109 x i8]* @.str418, i32 0, i32 0
  %3263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %3262, i64 108)
  %3264 = call %nyx_string* @sdd_msg(%nyx_string* %3259, %nyx_string* %3261, %nyx_string* %3263)
  %3265 = call i8* @nyx_string_to_cstr(%nyx_string* %3264)
  call void @nyx_print_string(i8* %3265)
  ret i1 0
else527:
  br label %merge528
merge528:
  %3266 = getelementptr [11 x i8], [11 x i8]* @.str419, i32 0, i32 0
  %3267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %3266, i64 10)
  %3268 = load %nyx_string*, %nyx_string** %dir.ptr
  %3269 = call %nyx_string* @nyx_string_concat(%nyx_string* %3267, %nyx_string* %3268)
  %3270 = getelementptr [13 x i8], [13 x i8]* @.str420, i32 0, i32 0
  %3271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %3270, i64 12)
  %3272 = call %nyx_string* @nyx_string_concat(%nyx_string* %3269, %nyx_string* %3271)
  %3273 = load %nyx_string*, %nyx_string** %dir.ptr
  %3274 = call %nyx_string* @nyx_string_concat(%nyx_string* %3272, %nyx_string* %3273)
  %3275 = getelementptr [13 x i8], [13 x i8]* @.str421, i32 0, i32 0
  %3276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %3275, i64 12)
  %3277 = call %nyx_string* @nyx_string_concat(%nyx_string* %3274, %nyx_string* %3276)
  %3278 = load %nyx_string*, %nyx_string** %dir.ptr
  %3279 = call %nyx_string* @nyx_string_concat(%nyx_string* %3277, %nyx_string* %3278)
  %3280 = getelementptr [18 x i8], [18 x i8]* @.str422, i32 0, i32 0
  %3281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %3280, i64 17)
  %3282 = call %nyx_string* @nyx_string_concat(%nyx_string* %3279, %nyx_string* %3281)
  %3283 = load %nyx_string*, %nyx_string** %dir.ptr
  %3284 = call %nyx_string* @nyx_string_concat(%nyx_string* %3282, %nyx_string* %3283)
  %3285 = getelementptr [10 x i8], [10 x i8]* @.str423, i32 0, i32 0
  %3286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %3285, i64 9)
  %3287 = call %nyx_string* @nyx_string_concat(%nyx_string* %3284, %nyx_string* %3286)
  %3288 = load %nyx_string*, %nyx_string** %dir.ptr
  %3289 = call %nyx_string* @nyx_string_concat(%nyx_string* %3287, %nyx_string* %3288)
  %3290 = getelementptr [8 x i8], [8 x i8]* @.str424, i32 0, i32 0
  %3291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %3290, i64 7)
  %3292 = call %nyx_string* @nyx_string_concat(%nyx_string* %3289, %nyx_string* %3291)
  %3293 = call i8* @nyx_string_to_cstr(%nyx_string* %3292)
  %3294 = call %nyx_string* @nyx_exec(i8* %3293)
  %3295 = load %nyx_string*, %nyx_string** %lang.ptr
  %3296 = getelementptr [40 x i8], [40 x i8]* @.str425, i32 0, i32 0
  %3297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %3296, i64 39)
  %3298 = getelementptr [38 x i8], [38 x i8]* @.str426, i32 0, i32 0
  %3299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %3298, i64 37)
  %3300 = call %nyx_string* @sdd_msg(%nyx_string* %3295, %nyx_string* %3297, %nyx_string* %3299)
  %3301 = call i8* @nyx_string_to_cstr(%nyx_string* %3300)
  call void @nyx_print_string(i8* %3301)
  %3302 = load %nyx_string*, %nyx_string** %3228
  %3303 = getelementptr [16 x i8], [16 x i8]* @.str427, i32 0, i32 0
  %3304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %3303, i64 15)
  %3305 = load %nyx_string*, %nyx_string** %dir.ptr
  %3306 = getelementptr [22 x i8], [22 x i8]* @.str428, i32 0, i32 0
  %3307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %3306, i64 21)
  %3308 = call %nyx_string* @nyx_string_concat(%nyx_string* %3305, %nyx_string* %3307)
  %3309 = load %nyx_string*, %nyx_string** %lang.ptr
  %3310 = call i1 @sdd_seed_template(%nyx_string* %3302, %nyx_string* %3304, %nyx_string* %3308, %nyx_string* %3309)
  %3311 = load %nyx_string*, %nyx_string** %3228
  %3312 = getelementptr [12 x i8], [12 x i8]* @.str429, i32 0, i32 0
  %3313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %3312, i64 11)
  %3314 = load %nyx_string*, %nyx_string** %dir.ptr
  %3315 = getelementptr [18 x i8], [18 x i8]* @.str430, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %3315, i64 17)
  %3317 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3316)
  %3318 = load %nyx_string*, %nyx_string** %lang.ptr
  %3319 = call i1 @sdd_seed_template(%nyx_string* %3311, %nyx_string* %3313, %nyx_string* %3317, %nyx_string* %3318)
  %3320 = load %nyx_string*, %nyx_string** %3228
  %3321 = getelementptr [16 x i8], [16 x i8]* @.str431, i32 0, i32 0
  %3322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %3321, i64 15)
  %3323 = load %nyx_string*, %nyx_string** %dir.ptr
  %3324 = getelementptr [27 x i8], [27 x i8]* @.str432, i32 0, i32 0
  %3325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %3324, i64 26)
  %3326 = call %nyx_string* @nyx_string_concat(%nyx_string* %3323, %nyx_string* %3325)
  %3327 = load %nyx_string*, %nyx_string** %lang.ptr
  %3328 = call i1 @sdd_seed_template(%nyx_string* %3320, %nyx_string* %3322, %nyx_string* %3326, %nyx_string* %3327)
  %3329 = load %nyx_string*, %nyx_string** %3228
  %3330 = getelementptr [16 x i8], [16 x i8]* @.str433, i32 0, i32 0
  %3331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %3330, i64 15)
  %3332 = load %nyx_string*, %nyx_string** %dir.ptr
  %3333 = getelementptr [17 x i8], [17 x i8]* @.str434, i32 0, i32 0
  %3334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %3333, i64 16)
  %3335 = call %nyx_string* @nyx_string_concat(%nyx_string* %3332, %nyx_string* %3334)
  %3336 = load %nyx_string*, %nyx_string** %lang.ptr
  %3337 = call i1 @sdd_seed_template(%nyx_string* %3329, %nyx_string* %3331, %nyx_string* %3335, %nyx_string* %3336)
  %3338 = load %nyx_string*, %nyx_string** %3228
  %3339 = getelementptr [14 x i8], [14 x i8]* @.str435, i32 0, i32 0
  %3340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %3339, i64 13)
  %3341 = load %nyx_string*, %nyx_string** %dir.ptr
  %3342 = getelementptr [24 x i8], [24 x i8]* @.str436, i32 0, i32 0
  %3343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %3342, i64 23)
  %3344 = call %nyx_string* @nyx_string_concat(%nyx_string* %3341, %nyx_string* %3343)
  %3345 = load %nyx_string*, %nyx_string** %lang.ptr
  %3346 = call i1 @sdd_seed_template(%nyx_string* %3338, %nyx_string* %3340, %nyx_string* %3344, %nyx_string* %3345)
  %3347 = load %nyx_string*, %nyx_string** %dir.ptr
  %3348 = load %nyx_string*, %nyx_string** %lang.ptr
  %3349 = call i64 @write_evidence(%nyx_string* %3347, %nyx_string* %3348)
  %3350 = alloca i64
  store i64 %3349, i64* %3350
  %3351 = load %nyx_string*, %nyx_string** %dir.ptr
  %3352 = getelementptr [20 x i8], [20 x i8]* @.str437, i32 0, i32 0
  %3353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %3352, i64 19)
  %3354 = call %nyx_string* @nyx_string_concat(%nyx_string* %3351, %nyx_string* %3353)
  %3355 = call %nyx_string* @toolchain_version()
  %3356 = call %nyx_string* @nyx_string_concat(%nyx_string* %3354, %nyx_string* %3355)
  %3357 = getelementptr [4 x i8], [4 x i8]* @.str438, i32 0, i32 0
  %3358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %3357, i64 3)
  %3359 = call %nyx_string* @nyx_string_concat(%nyx_string* %3356, %nyx_string* %3358)
  %3360 = alloca %nyx_string*
  store %nyx_string* %3359, %nyx_string** %3360
  %3361 = load i64, i64* %3350
  %3362 = icmp eq i64 %3361, 1
  br i1 %3362, label %then529, label %else530
then529:
  %3363 = getelementptr [3 x i8], [3 x i8]* @.str439, i32 0, i32 0
  %3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %3363, i64 2)
  %3365 = load %nyx_string*, %nyx_string** %3360
  %3366 = call %nyx_string* @nyx_string_concat(%nyx_string* %3364, %nyx_string* %3365)
  %3367 = load %nyx_string*, %nyx_string** %lang.ptr
  %3368 = getelementptr [13 x i8], [13 x i8]* @.str440, i32 0, i32 0
  %3369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %3368, i64 12)
  %3370 = getelementptr [12 x i8], [12 x i8]* @.str441, i32 0, i32 0
  %3371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %3370, i64 11)
  %3372 = call %nyx_string* @sdd_msg(%nyx_string* %3367, %nyx_string* %3369, %nyx_string* %3371)
  %3373 = call %nyx_string* @nyx_string_concat(%nyx_string* %3366, %nyx_string* %3372)
  %3374 = call i8* @nyx_string_to_cstr(%nyx_string* %3373)
  call void @nyx_print_string(i8* %3374)
  br label %merge531
else530:
  br label %merge531
merge531:
  %3375 = load i64, i64* %3350
  %3376 = icmp eq i64 %3375, 2
  br i1 %3376, label %then532, label %else533
then532:
  %3377 = load %nyx_string*, %nyx_string** %lang.ptr
  %3378 = getelementptr [41 x i8], [41 x i8]* @.str442, i32 0, i32 0
  %3379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %3378, i64 40)
  %3380 = load %nyx_string*, %nyx_string** %3360
  %3381 = call %nyx_string* @nyx_string_concat(%nyx_string* %3379, %nyx_string* %3380)
  %3382 = getelementptr [47 x i8], [47 x i8]* @.str443, i32 0, i32 0
  %3383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %3382, i64 46)
  %3384 = load %nyx_string*, %nyx_string** %3360
  %3385 = call %nyx_string* @nyx_string_concat(%nyx_string* %3383, %nyx_string* %3384)
  %3386 = call %nyx_string* @sdd_msg(%nyx_string* %3377, %nyx_string* %3381, %nyx_string* %3385)
  %3387 = call i8* @nyx_string_to_cstr(%nyx_string* %3386)
  call void @nyx_print_string(i8* %3387)
  br label %merge534
else533:
  br label %merge534
merge534:
  %3388 = load i64, i64* %3350
  %3389 = icmp eq i64 %3388, 0
  br i1 %3389, label %then535, label %else536
then535:
  %3390 = load %nyx_string*, %nyx_string** %lang.ptr
  %3391 = getelementptr [23 x i8], [23 x i8]* @.str444, i32 0, i32 0
  %3392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %3391, i64 22)
  %3393 = load %nyx_string*, %nyx_string** %3360
  %3394 = call %nyx_string* @nyx_string_concat(%nyx_string* %3392, %nyx_string* %3393)
  %3395 = getelementptr [21 x i8], [21 x i8]* @.str445, i32 0, i32 0
  %3396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %3395, i64 20)
  %3397 = load %nyx_string*, %nyx_string** %3360
  %3398 = call %nyx_string* @nyx_string_concat(%nyx_string* %3396, %nyx_string* %3397)
  %3399 = call %nyx_string* @sdd_msg(%nyx_string* %3390, %nyx_string* %3394, %nyx_string* %3398)
  %3400 = call i8* @nyx_string_to_cstr(%nyx_string* %3399)
  call void @nyx_print_string(i8* %3400)
  br label %merge537
else536:
  br label %merge537
merge537:
  %3401 = load %nyx_string*, %nyx_string** %dir.ptr
  %3402 = call i64 @write_constitution_test(%nyx_string* %3401)
  %3403 = alloca i64
  store i64 %3402, i64* %3403
  %3404 = load %nyx_string*, %nyx_string** %dir.ptr
  %3405 = getelementptr [28 x i8], [28 x i8]* @.str446, i32 0, i32 0
  %3406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %3405, i64 27)
  %3407 = call %nyx_string* @nyx_string_concat(%nyx_string* %3404, %nyx_string* %3406)
  %3408 = alloca %nyx_string*
  store %nyx_string* %3407, %nyx_string** %3408
  %3409 = load i64, i64* %3403
  %3410 = icmp eq i64 %3409, 1
  br i1 %3410, label %then538, label %else539
then538:
  %3411 = getelementptr [3 x i8], [3 x i8]* @.str447, i32 0, i32 0
  %3412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %3411, i64 2)
  %3413 = load %nyx_string*, %nyx_string** %3408
  %3414 = call %nyx_string* @nyx_string_concat(%nyx_string* %3412, %nyx_string* %3413)
  %3415 = load %nyx_string*, %nyx_string** %lang.ptr
  %3416 = getelementptr [13 x i8], [13 x i8]* @.str448, i32 0, i32 0
  %3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %3416, i64 12)
  %3418 = getelementptr [12 x i8], [12 x i8]* @.str449, i32 0, i32 0
  %3419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %3418, i64 11)
  %3420 = call %nyx_string* @sdd_msg(%nyx_string* %3415, %nyx_string* %3417, %nyx_string* %3419)
  %3421 = call %nyx_string* @nyx_string_concat(%nyx_string* %3414, %nyx_string* %3420)
  %3422 = call i8* @nyx_string_to_cstr(%nyx_string* %3421)
  call void @nyx_print_string(i8* %3422)
  br label %merge540
else539:
  br label %merge540
merge540:
  %3423 = load i64, i64* %3403
  %3424 = icmp eq i64 %3423, 2
  br i1 %3424, label %then541, label %else542
then541:
  %3425 = load %nyx_string*, %nyx_string** %lang.ptr
  %3426 = getelementptr [41 x i8], [41 x i8]* @.str450, i32 0, i32 0
  %3427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %3426, i64 40)
  %3428 = load %nyx_string*, %nyx_string** %3408
  %3429 = call %nyx_string* @nyx_string_concat(%nyx_string* %3427, %nyx_string* %3428)
  %3430 = getelementptr [47 x i8], [47 x i8]* @.str451, i32 0, i32 0
  %3431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %3430, i64 46)
  %3432 = load %nyx_string*, %nyx_string** %3408
  %3433 = call %nyx_string* @nyx_string_concat(%nyx_string* %3431, %nyx_string* %3432)
  %3434 = call %nyx_string* @sdd_msg(%nyx_string* %3425, %nyx_string* %3429, %nyx_string* %3433)
  %3435 = call i8* @nyx_string_to_cstr(%nyx_string* %3434)
  call void @nyx_print_string(i8* %3435)
  br label %merge543
else542:
  br label %merge543
merge543:
  %3436 = load i64, i64* %3403
  %3437 = icmp eq i64 %3436, 0
  br i1 %3437, label %then544, label %else545
then544:
  %3438 = load %nyx_string*, %nyx_string** %lang.ptr
  %3439 = getelementptr [23 x i8], [23 x i8]* @.str452, i32 0, i32 0
  %3440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %3439, i64 22)
  %3441 = load %nyx_string*, %nyx_string** %3408
  %3442 = call %nyx_string* @nyx_string_concat(%nyx_string* %3440, %nyx_string* %3441)
  %3443 = getelementptr [21 x i8], [21 x i8]* @.str453, i32 0, i32 0
  %3444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %3443, i64 20)
  %3445 = load %nyx_string*, %nyx_string** %3408
  %3446 = call %nyx_string* @nyx_string_concat(%nyx_string* %3444, %nyx_string* %3445)
  %3447 = call %nyx_string* @sdd_msg(%nyx_string* %3438, %nyx_string* %3442, %nyx_string* %3446)
  %3448 = call i8* @nyx_string_to_cstr(%nyx_string* %3447)
  call void @nyx_print_string(i8* %3448)
  br label %merge546
else545:
  br label %merge546
merge546:
  %3449 = load %nyx_string*, %nyx_string** %dir.ptr
  %3450 = load %nyx_string*, %nyx_string** %lang.ptr
  %3451 = call i1 @add_agents_triggers(%nyx_string* %3449, %nyx_string* %3450)
  %3452 = getelementptr [1 x i8], [1 x i8]* @.str454, i32 0, i32 0
  %3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %3452, i64 0)
  %3454 = call i8* @nyx_string_to_cstr(%nyx_string* %3453)
  call void @nyx_print_string(i8* %3454)
  %3455 = load %nyx_string*, %nyx_string** %lang.ptr
  %3456 = getelementptr [94 x i8], [94 x i8]* @.str455, i32 0, i32 0
  %3457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %3456, i64 93)
  %3458 = getelementptr [98 x i8], [98 x i8]* @.str456, i32 0, i32 0
  %3459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %3458, i64 97)
  %3460 = call %nyx_string* @sdd_msg(%nyx_string* %3455, %nyx_string* %3457, %nyx_string* %3459)
  %3461 = call i8* @nyx_string_to_cstr(%nyx_string* %3460)
  call void @nyx_print_string(i8* %3461)
  %3462 = load %nyx_string*, %nyx_string** %lang.ptr
  %3463 = getelementptr [89 x i8], [89 x i8]* @.str457, i32 0, i32 0
  %3464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %3463, i64 88)
  %3465 = getelementptr [90 x i8], [90 x i8]* @.str458, i32 0, i32 0
  %3466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %3465, i64 89)
  %3467 = call %nyx_string* @sdd_msg(%nyx_string* %3462, %nyx_string* %3464, %nyx_string* %3466)
  %3468 = call i8* @nyx_string_to_cstr(%nyx_string* %3467)
  call void @nyx_print_string(i8* %3468)
  %3469 = load %nyx_string*, %nyx_string** %lang.ptr
  %3470 = getelementptr [78 x i8], [78 x i8]* @.str459, i32 0, i32 0
  %3471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %3470, i64 77)
  %3472 = getelementptr [76 x i8], [76 x i8]* @.str460, i32 0, i32 0
  %3473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %3472, i64 75)
  %3474 = call %nyx_string* @sdd_msg(%nyx_string* %3469, %nyx_string* %3471, %nyx_string* %3473)
  %3475 = call i8* @nyx_string_to_cstr(%nyx_string* %3474)
  call void @nyx_print_string(i8* %3475)
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
  %3476 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %3477 = alloca %nyx_string*
  store %nyx_string* %3476, %nyx_string** %3477
  %3478 = load %nyx_string*, %nyx_string** %3477
  %3479 = getelementptr [1 x i8], [1 x i8]* @.str461, i32 0, i32 0
  %3480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %3479, i64 0)
  %3481 = call i1 @nyx_string_equals(%nyx_string* %3478, %nyx_string* %3480)
  %3482 = xor i1 %3481, true
  br i1 %3482, label %then547, label %else548
then547:
  %3483 = load %nyx_string*, %nyx_string** %3477
  %3484 = call i8* @nyx_string_to_cstr(%nyx_string* %3483)
  %3485 = call i1 @nyx_file_exists(i8* %3484)
  br i1 %3485, label %then550, label %else551
then550:
  %3486 = getelementptr [19 x i8], [19 x i8]* @.str462, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %3486, i64 18)
  %3488 = load %nyx_string*, %nyx_string** %3477
  %3489 = call %nyx_string* @nyx_string_concat(%nyx_string* %3487, %nyx_string* %3488)
  %3490 = getelementptr [17 x i8], [17 x i8]* @.str463, i32 0, i32 0
  %3491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %3490, i64 16)
  %3492 = call %nyx_string* @nyx_string_concat(%nyx_string* %3489, %nyx_string* %3491)
  %3493 = call i8* @nyx_string_to_cstr(%nyx_string* %3492)
  call void @nyx_print_string(i8* %3493)
  ret i1 0
else551:
  br label %merge552
merge552:
  %3494 = getelementptr [10 x i8], [10 x i8]* @.str464, i32 0, i32 0
  %3495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %3494, i64 9)
  %3496 = load %nyx_string*, %nyx_string** %3477
  %3497 = call %nyx_string* @nyx_string_concat(%nyx_string* %3495, %nyx_string* %3496)
  %3498 = getelementptr [5 x i8], [5 x i8]* @.str465, i32 0, i32 0
  %3499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %3498, i64 4)
  %3500 = call %nyx_string* @nyx_string_concat(%nyx_string* %3497, %nyx_string* %3499)
  %3501 = call i8* @nyx_string_to_cstr(%nyx_string* %3500)
  %3502 = call %nyx_string* @nyx_exec(i8* %3501)
  %3503 = getelementptr [19 x i8], [19 x i8]* @.str466, i32 0, i32 0
  %3504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %3503, i64 18)
  %3505 = load %nyx_string*, %nyx_string** %3477
  %3506 = call %nyx_string* @nyx_string_concat(%nyx_string* %3504, %nyx_string* %3505)
  %3507 = getelementptr [58 x i8], [58 x i8]* @.str467, i32 0, i32 0
  %3508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %3507, i64 57)
  %3509 = call %nyx_string* @nyx_string_concat(%nyx_string* %3506, %nyx_string* %3508)
  %3510 = alloca %nyx_string*
  store %nyx_string* %3509, %nyx_string** %3510
  %3511 = load %nyx_string*, %nyx_string** %3477
  %3512 = getelementptr [10 x i8], [10 x i8]* @.str468, i32 0, i32 0
  %3513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %3512, i64 9)
  %3514 = call %nyx_string* @nyx_string_concat(%nyx_string* %3511, %nyx_string* %3513)
  %3515 = load %nyx_string*, %nyx_string** %3510
  %3516 = call i8* @nyx_string_to_cstr(%nyx_string* %3514)
  %3517 = call i8* @nyx_string_to_cstr(%nyx_string* %3515)
  %3518 = call i1 @nyx_write_file(i8* %3516, i8* %3517)
  %3519 = load %nyx_string*, %nyx_string** %3477
  %3520 = getelementptr [13 x i8], [13 x i8]* @.str469, i32 0, i32 0
  %3521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %3520, i64 12)
  %3522 = call %nyx_string* @nyx_string_concat(%nyx_string* %3519, %nyx_string* %3521)
  %3523 = getelementptr [35 x i8], [35 x i8]* @.str470, i32 0, i32 0
  %3524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %3523, i64 34)
  %3525 = load %nyx_string*, %nyx_string** %3477
  %3526 = call %nyx_string* @nyx_string_concat(%nyx_string* %3524, %nyx_string* %3525)
  %3527 = getelementptr [7 x i8], [7 x i8]* @.str471, i32 0, i32 0
  %3528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %3527, i64 6)
  %3529 = call %nyx_string* @nyx_string_concat(%nyx_string* %3526, %nyx_string* %3528)
  %3530 = call i8* @nyx_string_to_cstr(%nyx_string* %3522)
  %3531 = call i8* @nyx_string_to_cstr(%nyx_string* %3529)
  %3532 = call i1 @nyx_write_file(i8* %3530, i8* %3531)
  %3533 = load %nyx_string*, %nyx_string** %3477
  %3534 = load %nyx_string*, %nyx_string** %lang.ptr
  %3535 = load %nyx_string*, %nyx_string** %agents.ptr
  %3536 = call i64 @scaffold_project_files(%nyx_string* %3533, %nyx_string* %3534, %nyx_string* %3535)
  %3537 = load %nyx_string*, %nyx_string** %3477
  %3538 = load %nyx_string*, %nyx_string** %3477
  %3539 = call i64 @seed_gitignore(%nyx_string* %3537, %nyx_string* %3538)
  %3540 = getelementptr [22 x i8], [22 x i8]* @.str472, i32 0, i32 0
  %3541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %3540, i64 21)
  %3542 = load %nyx_string*, %nyx_string** %3477
  %3543 = call %nyx_string* @nyx_string_concat(%nyx_string* %3541, %nyx_string* %3542)
  %3544 = call i8* @nyx_string_to_cstr(%nyx_string* %3543)
  call void @nyx_print_string(i8* %3544)
  %3545 = getelementptr [12 x i8], [12 x i8]* @.str473, i32 0, i32 0
  %3546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %3545, i64 11)
  %3547 = load %nyx_string*, %nyx_string** %3477
  %3548 = call %nyx_string* @nyx_string_concat(%nyx_string* %3546, %nyx_string* %3547)
  %3549 = getelementptr [2 x i8], [2 x i8]* @.str474, i32 0, i32 0
  %3550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %3549, i64 1)
  %3551 = call %nyx_string* @nyx_string_concat(%nyx_string* %3548, %nyx_string* %3550)
  %3552 = call i8* @nyx_string_to_cstr(%nyx_string* %3551)
  call void @nyx_print_string(i8* %3552)
  %3553 = getelementptr [15 x i8], [15 x i8]* @.str475, i32 0, i32 0
  %3554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %3553, i64 14)
  %3555 = load %nyx_string*, %nyx_string** %3477
  %3556 = call %nyx_string* @nyx_string_concat(%nyx_string* %3554, %nyx_string* %3555)
  %3557 = getelementptr [12 x i8], [12 x i8]* @.str476, i32 0, i32 0
  %3558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %3557, i64 11)
  %3559 = call %nyx_string* @nyx_string_concat(%nyx_string* %3556, %nyx_string* %3558)
  %3560 = call i8* @nyx_string_to_cstr(%nyx_string* %3559)
  call void @nyx_print_string(i8* %3560)
  ret i1 1
else548:
  br label %merge549
merge549:
  %3561 = getelementptr [9 x i8], [9 x i8]* @.str477, i32 0, i32 0
  %3562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %3561, i64 8)
  %3563 = call i8* @nyx_string_to_cstr(%nyx_string* %3562)
  %3564 = call i1 @nyx_file_exists(i8* %3563)
  br i1 %3564, label %then553, label %else554
then553:
  %3565 = getelementptr [31 x i8], [31 x i8]* @.str478, i32 0, i32 0
  %3566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %3565, i64 30)
  %3567 = call i8* @nyx_string_to_cstr(%nyx_string* %3566)
  call void @nyx_print_string(i8* %3567)
  ret i1 0
else554:
  br label %merge555
merge555:
  %3568 = getelementptr [4 x i8], [4 x i8]* @.str479, i32 0, i32 0
  %3569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %3568, i64 3)
  %3570 = call i8* @nyx_string_to_cstr(%nyx_string* %3569)
  %3571 = call %nyx_string* @nyx_getenv(i8* %3570)
  %3572 = alloca %nyx_string*
  store %nyx_string* %3571, %nyx_string** %3572
  %3573 = getelementptr [6 x i8], [6 x i8]* @.str480, i32 0, i32 0
  %3574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %3573, i64 5)
  store %nyx_string* %3574, %nyx_string** %3477
  %3575 = sub i64 0, 1
  %3576 = alloca i64
  store i64 %3575, i64* %3576
  %3577 = alloca i64
  store i64 0, i64* %3577
  %3578 = call i8* @llvm.stacksave()
  br label %while_cond556
while_cond556:
  %3579 = load i64, i64* %3577
  %3580 = load %nyx_string*, %nyx_string** %3572
  %3581 = call i64 @nyx_string_byte_length(%nyx_string* %3580)
  %3582 = icmp slt i64 %3579, %3581
  br i1 %3582, label %while_body557, label %while_end558
while_body557:
  call void @llvm.stackrestore(i8* %3578)
  %3583 = load %nyx_string*, %nyx_string** %3572
  %3584 = load i64, i64* %3577
  %3585 = call i8 @nyx_string_char_at(%nyx_string* %3583, i64 %3584)
  %3586 = zext i8 %3585 to i64
  %3587 = icmp eq i64 %3586, 47
  br i1 %3587, label %then559, label %else560
then559:
  %3588 = load i64, i64* %3577
  store i64 %3588, i64* %3576
  br label %merge561
else560:
  br label %merge561
merge561:
  %3589 = load i64, i64* %3577
  %3590 = add i64 %3589, 1
  store i64 %3590, i64* %3577
  br label %while_cond556
while_end558:
  %3591 = load i64, i64* %3576
  %3592 = icmp sge i64 %3591, 0
  br i1 %3592, label %then562, label %else563
then562:
  %3593 = load %nyx_string*, %nyx_string** %3572
  %3594 = load i64, i64* %3576
  %3595 = add i64 %3594, 1
  %3596 = load %nyx_string*, %nyx_string** %3572
  %3597 = call i64 @nyx_string_byte_length(%nyx_string* %3596)
  %3598 = call %nyx_string* @nyx_string_substring(%nyx_string* %3593, i64 %3595, i64 %3597)
  store %nyx_string* %3598, %nyx_string** %3477
  br label %merge564
else563:
  br label %merge564
merge564:
  %3599 = getelementptr [19 x i8], [19 x i8]* @.str481, i32 0, i32 0
  %3600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %3599, i64 18)
  %3601 = load %nyx_string*, %nyx_string** %3477
  %3602 = call %nyx_string* @nyx_string_concat(%nyx_string* %3600, %nyx_string* %3601)
  %3603 = getelementptr [58 x i8], [58 x i8]* @.str482, i32 0, i32 0
  %3604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %3603, i64 57)
  %3605 = call %nyx_string* @nyx_string_concat(%nyx_string* %3602, %nyx_string* %3604)
  %3606 = alloca %nyx_string*
  store %nyx_string* %3605, %nyx_string** %3606
  %3607 = getelementptr [9 x i8], [9 x i8]* @.str483, i32 0, i32 0
  %3608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %3607, i64 8)
  %3609 = load %nyx_string*, %nyx_string** %3606
  %3610 = call i8* @nyx_string_to_cstr(%nyx_string* %3608)
  %3611 = call i8* @nyx_string_to_cstr(%nyx_string* %3609)
  %3612 = call i1 @nyx_write_file(i8* %3610, i8* %3611)
  %3613 = getelementptr [13 x i8], [13 x i8]* @.str484, i32 0, i32 0
  %3614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %3613, i64 12)
  %3615 = call i8* @nyx_string_to_cstr(%nyx_string* %3614)
  %3616 = call %nyx_string* @nyx_exec(i8* %3615)
  %3617 = getelementptr [12 x i8], [12 x i8]* @.str485, i32 0, i32 0
  %3618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %3617, i64 11)
  %3619 = call i8* @nyx_string_to_cstr(%nyx_string* %3618)
  %3620 = call i1 @nyx_file_exists(i8* %3619)
  %3621 = icmp eq i1 %3620, 0
  br i1 %3621, label %then565, label %else566
then565:
  %3622 = getelementptr [12 x i8], [12 x i8]* @.str486, i32 0, i32 0
  %3623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %3622, i64 11)
  %3624 = getelementptr [35 x i8], [35 x i8]* @.str487, i32 0, i32 0
  %3625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %3624, i64 34)
  %3626 = load %nyx_string*, %nyx_string** %3477
  %3627 = call %nyx_string* @nyx_string_concat(%nyx_string* %3625, %nyx_string* %3626)
  %3628 = getelementptr [7 x i8], [7 x i8]* @.str488, i32 0, i32 0
  %3629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %3628, i64 6)
  %3630 = call %nyx_string* @nyx_string_concat(%nyx_string* %3627, %nyx_string* %3629)
  %3631 = call i8* @nyx_string_to_cstr(%nyx_string* %3623)
  %3632 = call i8* @nyx_string_to_cstr(%nyx_string* %3630)
  %3633 = call i1 @nyx_write_file(i8* %3631, i8* %3632)
  br label %merge567
else566:
  br label %merge567
merge567:
  %3634 = getelementptr [2 x i8], [2 x i8]* @.str489, i32 0, i32 0
  %3635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %3634, i64 1)
  %3636 = load %nyx_string*, %nyx_string** %lang.ptr
  %3637 = load %nyx_string*, %nyx_string** %agents.ptr
  %3638 = call i64 @scaffold_project_files(%nyx_string* %3635, %nyx_string* %3636, %nyx_string* %3637)
  %3639 = getelementptr [2 x i8], [2 x i8]* @.str490, i32 0, i32 0
  %3640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %3639, i64 1)
  %3641 = load %nyx_string*, %nyx_string** %3477
  %3642 = call i64 @seed_gitignore(%nyx_string* %3640, %nyx_string* %3641)
  %3643 = getelementptr [22 x i8], [22 x i8]* @.str491, i32 0, i32 0
  %3644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %3643, i64 21)
  %3645 = load %nyx_string*, %nyx_string** %3477
  %3646 = call %nyx_string* @nyx_string_concat(%nyx_string* %3644, %nyx_string* %3645)
  %3647 = call i8* @nyx_string_to_cstr(%nyx_string* %3646)
  call void @nyx_print_string(i8* %3647)
  %3648 = getelementptr [33 x i8], [33 x i8]* @.str492, i32 0, i32 0
  %3649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %3648, i64 32)
  %3650 = call i8* @nyx_string_to_cstr(%nyx_string* %3649)
  call void @nyx_print_string(i8* %3650)
  %3651 = getelementptr [21 x i8], [21 x i8]* @.str493, i32 0, i32 0
  %3652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %3651, i64 20)
  %3653 = call i8* @nyx_string_to_cstr(%nyx_string* %3652)
  call void @nyx_print_string(i8* %3653)
  %3654 = getelementptr [19 x i8], [19 x i8]* @.str494, i32 0, i32 0
  %3655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %3654, i64 18)
  %3656 = call i8* @nyx_string_to_cstr(%nyx_string* %3655)
  call void @nyx_print_string(i8* %3656)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %3657 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %3658 = load { i64, i8* }*, { i64, i8* }** %3657
  %3659 = call i64 @nyx_array_length({ i64, i8* }* %3658)
  %3660 = icmp eq i64 %3659, 0
  br i1 %3660, label %then568, label %else569
then568:
  ret i1 1
else569:
  br label %merge570
merge570:
  %3661 = alloca i64
  store i64 0, i64* %3661
  %3662 = getelementptr [10 x i8], [10 x i8]* @.str495, i32 0, i32 0
  %3663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %3662, i64 9)
  %3664 = alloca %nyx_string*
  store %nyx_string* %3663, %nyx_string** %3664
  %3665 = getelementptr [14 x i8], [14 x i8]* @.str496, i32 0, i32 0
  %3666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %3665, i64 13)
  %3667 = alloca %nyx_string*
  store %nyx_string* %3666, %nyx_string** %3667
  %3668 = getelementptr [5 x i8], [5 x i8]* @.str497, i32 0, i32 0
  %3669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %3668, i64 4)
  %3670 = alloca %nyx_string*
  store %nyx_string* %3669, %nyx_string** %3670
  %3671 = getelementptr [4 x i8], [4 x i8]* @.str498, i32 0, i32 0
  %3672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %3671, i64 3)
  %3673 = alloca %nyx_string*
  store %nyx_string* %3672, %nyx_string** %3673
  %3674 = getelementptr [32 x i8], [32 x i8]* @.str499, i32 0, i32 0
  %3675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %3674, i64 31)
  %3676 = alloca %nyx_string*
  store %nyx_string* %3675, %nyx_string** %3676
  %3677 = getelementptr [43 x i8], [43 x i8]* @.str500, i32 0, i32 0
  %3678 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %3677, i64 42)
  %3679 = alloca %nyx_string*
  store %nyx_string* %3678, %nyx_string** %3679
  %3680 = getelementptr [2 x i8], [2 x i8]* @.str501, i32 0, i32 0
  %3681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %3680, i64 1)
  %3682 = alloca %nyx_string*
  store %nyx_string* %3681, %nyx_string** %3682
  %3683 = getelementptr [13 x i8], [13 x i8]* @.str502, i32 0, i32 0
  %3684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %3683, i64 12)
  %3685 = alloca %nyx_string*
  store %nyx_string* %3684, %nyx_string** %3685
  %3686 = getelementptr [26 x i8], [26 x i8]* @.str503, i32 0, i32 0
  %3687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %3686, i64 25)
  %3688 = alloca %nyx_string*
  store %nyx_string* %3687, %nyx_string** %3688
  %3689 = getelementptr [7 x i8], [7 x i8]* @.str504, i32 0, i32 0
  %3690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %3689, i64 6)
  %3691 = alloca %nyx_string*
  store %nyx_string* %3690, %nyx_string** %3691
  %3692 = getelementptr [12 x i8], [12 x i8]* @.str505, i32 0, i32 0
  %3693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %3692, i64 11)
  %3694 = alloca %nyx_string*
  store %nyx_string* %3693, %nyx_string** %3694
  %3695 = call i8* @llvm.stacksave()
  br label %while_cond571
while_cond571:
  %3696 = load i64, i64* %3661
  %3697 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %3698 = load { i64, i8* }*, { i64, i8* }** %3697
  %3699 = call i64 @nyx_array_length({ i64, i8* }* %3698)
  %3700 = icmp slt i64 %3696, %3699
  br i1 %3700, label %while_body572, label %while_end573
while_body572:
  call void @llvm.stackrestore(i8* %3695)
  %3701 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %3702 = load { i64, i8* }*, { i64, i8* }** %3701
  %3703 = load i64, i64* %3661
  %3704 = call i64 @nyx_array_get({ i64, i8* }* %3702, i64 %3703)
  %3705 = inttoptr i64 %3704 to %nyx_string*
  %3706 = alloca %nyx_string*
  store %nyx_string* %3705, %nyx_string** %3706
  %3707 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %3708 = load { i64, i8* }*, { i64, i8* }** %3707
  %3709 = load i64, i64* %3661
  %3710 = call i64 @nyx_array_get({ i64, i8* }* %3708, i64 %3709)
  %3711 = inttoptr i64 %3710 to %nyx_string*
  %3712 = alloca %nyx_string*
  store %nyx_string* %3711, %nyx_string** %3712
  %3713 = load %nyx_string*, %nyx_string** %3664
  %3714 = load %nyx_string*, %nyx_string** %3706
  %3715 = call %nyx_string* @nyx_string_concat(%nyx_string* %3713, %nyx_string* %3714)
  %3716 = alloca %nyx_string*
  store %nyx_string* %3715, %nyx_string** %3716
  %3717 = load %nyx_string*, %nyx_string** %3716
  %3718 = call i8* @nyx_string_to_cstr(%nyx_string* %3717)
  %3719 = call i1 @nyx_file_exists(i8* %3718)
  %3720 = icmp eq i1 %3719, 0
  br i1 %3720, label %then574, label %else575
then574:
  %3721 = load %nyx_string*, %nyx_string** %3667
  %3722 = load %nyx_string*, %nyx_string** %3706
  %3723 = call %nyx_string* @nyx_string_concat(%nyx_string* %3721, %nyx_string* %3722)
  %3724 = call i8* @nyx_string_to_cstr(%nyx_string* %3723)
  call void @nyx_print_string(i8* %3724)
  %3725 = load %nyx_string*, %nyx_string** %3712
  %3726 = alloca %nyx_string*
  store %nyx_string* %3725, %nyx_string** %3726
  %3727 = alloca i1
  store i1 false, i1* %3727
  %3728 = load %nyx_string*, %nyx_string** %3726
  %3729 = load %nyx_string*, %nyx_string** %3670
  %3730 = call i1 @nyx_string_starts_with(%nyx_string* %3728, %nyx_string* %3729)
  %3731 = icmp eq i1 %3730, 0
  br i1 %3731, label %sc_and_rhs577, label %sc_and_end578
sc_and_rhs577:
  %3732 = load %nyx_string*, %nyx_string** %3726
  %3733 = load %nyx_string*, %nyx_string** %3673
  %3734 = call i1 @nyx_string_starts_with(%nyx_string* %3732, %nyx_string* %3733)
  %3735 = icmp eq i1 %3734, 0
  store i1 %3735, i1* %3727
  br label %sc_and_end578
sc_and_end578:
  %3736 = load i1, i1* %3727
  br i1 %3736, label %then579, label %else580
then579:
  %3737 = load %nyx_string*, %nyx_string** %3676
  %3738 = load %nyx_string*, %nyx_string** %3706
  %3739 = call %nyx_string* @nyx_string_concat(%nyx_string* %3737, %nyx_string* %3738)
  store %nyx_string* %3739, %nyx_string** %3726
  br label %merge581
else580:
  br label %merge581
merge581:
  %3740 = load %nyx_string*, %nyx_string** %3679
  %3741 = load %nyx_string*, %nyx_string** %3726
  %3742 = call %nyx_string* @nyx_string_concat(%nyx_string* %3740, %nyx_string* %3741)
  %3743 = load %nyx_string*, %nyx_string** %3682
  %3744 = call %nyx_string* @nyx_string_concat(%nyx_string* %3742, %nyx_string* %3743)
  %3745 = load %nyx_string*, %nyx_string** %3716
  %3746 = call %nyx_string* @nyx_string_concat(%nyx_string* %3744, %nyx_string* %3745)
  %3747 = load %nyx_string*, %nyx_string** %3685
  %3748 = call %nyx_string* @nyx_string_concat(%nyx_string* %3746, %nyx_string* %3747)
  %3749 = alloca %nyx_string*
  store %nyx_string* %3748, %nyx_string** %3749
  %3750 = load %nyx_string*, %nyx_string** %3749
  %3751 = call i8* @nyx_string_to_cstr(%nyx_string* %3750)
  %3752 = call i64 @nyx_exec_code(i8* %3751)
  %3753 = alloca i64
  store i64 %3752, i64* %3753
  %3754 = load i64, i64* %3753
  %3755 = icmp ne i64 %3754, 0
  br i1 %3755, label %then582, label %else583
then582:
  %3756 = load %nyx_string*, %nyx_string** %3688
  %3757 = load %nyx_string*, %nyx_string** %3706
  %3758 = call %nyx_string* @nyx_string_concat(%nyx_string* %3756, %nyx_string* %3757)
  %3759 = load %nyx_string*, %nyx_string** %3691
  %3760 = call %nyx_string* @nyx_string_concat(%nyx_string* %3758, %nyx_string* %3759)
  %3761 = load %nyx_string*, %nyx_string** %3726
  %3762 = call %nyx_string* @nyx_string_concat(%nyx_string* %3760, %nyx_string* %3761)
  %3763 = call i8* @nyx_string_to_cstr(%nyx_string* %3762)
  call void @nyx_print_string(i8* %3763)
  ret i1 0
else583:
  br label %merge584
merge584:
  %3764 = load %nyx_string*, %nyx_string** %3694
  %3765 = load %nyx_string*, %nyx_string** %3706
  %3766 = call %nyx_string* @nyx_string_concat(%nyx_string* %3764, %nyx_string* %3765)
  %3767 = call i8* @nyx_string_to_cstr(%nyx_string* %3766)
  call void @nyx_print_string(i8* %3767)
  br label %merge576
else575:
  br label %merge576
merge576:
  %3768 = load i64, i64* %3661
  %3769 = add i64 %3768, 1
  store i64 %3769, i64* %3661
  br label %while_cond571
while_end573:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %3770 = getelementptr [128 x i8], [128 x i8]* @.str506, i32 0, i32 0
  %3771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %3770, i64 127)
  %3772 = alloca %nyx_string*
  store %nyx_string* %3771, %nyx_string** %3772
  %3773 = getelementptr [37 x i8], [37 x i8]* @.str507, i32 0, i32 0
  %3774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %3773, i64 36)
  %3775 = alloca %nyx_string*
  store %nyx_string* %3774, %nyx_string** %3775
  %3776 = getelementptr [14 x i8], [14 x i8]* @.str508, i32 0, i32 0
  %3777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %3776, i64 13)
  %3778 = load %nyx_string*, %nyx_string** %3772
  %3779 = call %nyx_string* @nyx_string_concat(%nyx_string* %3777, %nyx_string* %3778)
  %3780 = getelementptr [16 x i8], [16 x i8]* @.str509, i32 0, i32 0
  %3781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %3780, i64 15)
  %3782 = call %nyx_string* @nyx_string_concat(%nyx_string* %3779, %nyx_string* %3781)
  %3783 = getelementptr [33 x i8], [33 x i8]* @.str510, i32 0, i32 0
  %3784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %3783, i64 32)
  %3785 = call %nyx_string* @nyx_string_concat(%nyx_string* %3782, %nyx_string* %3784)
  %3786 = getelementptr [99 x i8], [99 x i8]* @.str511, i32 0, i32 0
  %3787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %3786, i64 98)
  %3788 = call %nyx_string* @nyx_string_concat(%nyx_string* %3785, %nyx_string* %3787)
  %3789 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3790 = call %nyx_string* @nyx_string_concat(%nyx_string* %3788, %nyx_string* %3789)
  %3791 = getelementptr [73 x i8], [73 x i8]* @.str512, i32 0, i32 0
  %3792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %3791, i64 72)
  %3793 = call %nyx_string* @nyx_string_concat(%nyx_string* %3790, %nyx_string* %3792)
  %3794 = getelementptr [6 x i8], [6 x i8]* @.str513, i32 0, i32 0
  %3795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %3794, i64 5)
  %3796 = call %nyx_string* @nyx_string_concat(%nyx_string* %3793, %nyx_string* %3795)
  %3797 = getelementptr [91 x i8], [91 x i8]* @.str514, i32 0, i32 0
  %3798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %3797, i64 90)
  %3799 = call %nyx_string* @nyx_string_concat(%nyx_string* %3796, %nyx_string* %3798)
  %3800 = load %nyx_string*, %nyx_string** %main_file.ptr
  %3801 = call %nyx_string* @nyx_string_concat(%nyx_string* %3799, %nyx_string* %3800)
  %3802 = getelementptr [76 x i8], [76 x i8]* @.str515, i32 0, i32 0
  %3803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %3802, i64 75)
  %3804 = call %nyx_string* @nyx_string_concat(%nyx_string* %3801, %nyx_string* %3803)
  %3805 = getelementptr [5 x i8], [5 x i8]* @.str516, i32 0, i32 0
  %3806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %3805, i64 4)
  %3807 = call %nyx_string* @nyx_string_concat(%nyx_string* %3804, %nyx_string* %3806)
  %3808 = getelementptr [16 x i8], [16 x i8]* @.str517, i32 0, i32 0
  %3809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %3808, i64 15)
  %3810 = call %nyx_string* @nyx_string_concat(%nyx_string* %3807, %nyx_string* %3809)
  %3811 = load %nyx_string*, %nyx_string** %3775
  %3812 = call %nyx_string* @nyx_string_concat(%nyx_string* %3810, %nyx_string* %3811)
  %3813 = getelementptr [16 x i8], [16 x i8]* @.str518, i32 0, i32 0
  %3814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %3813, i64 15)
  %3815 = call %nyx_string* @nyx_string_concat(%nyx_string* %3812, %nyx_string* %3814)
  %3816 = getelementptr [33 x i8], [33 x i8]* @.str519, i32 0, i32 0
  %3817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %3816, i64 32)
  %3818 = call %nyx_string* @nyx_string_concat(%nyx_string* %3815, %nyx_string* %3817)
  %3819 = getelementptr [175 x i8], [175 x i8]* @.str520, i32 0, i32 0
  %3820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %3819, i64 174)
  %3821 = call %nyx_string* @nyx_string_concat(%nyx_string* %3818, %nyx_string* %3820)
  %3822 = getelementptr [6 x i8], [6 x i8]* @.str521, i32 0, i32 0
  %3823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %3822, i64 5)
  %3824 = call %nyx_string* @nyx_string_concat(%nyx_string* %3821, %nyx_string* %3823)
  %3825 = getelementptr [184 x i8], [184 x i8]* @.str522, i32 0, i32 0
  %3826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %3825, i64 183)
  %3827 = call %nyx_string* @nyx_string_concat(%nyx_string* %3824, %nyx_string* %3826)
  %3828 = getelementptr [5 x i8], [5 x i8]* @.str523, i32 0, i32 0
  %3829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %3828, i64 4)
  %3830 = call %nyx_string* @nyx_string_concat(%nyx_string* %3827, %nyx_string* %3829)
  %3831 = getelementptr [6 x i8], [6 x i8]* @.str524, i32 0, i32 0
  %3832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %3831, i64 5)
  %3833 = call %nyx_string* @nyx_string_concat(%nyx_string* %3830, %nyx_string* %3832)
  %3834 = getelementptr [33 x i8], [33 x i8]* @.str525, i32 0, i32 0
  %3835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %3834, i64 32)
  %3836 = call %nyx_string* @nyx_string_concat(%nyx_string* %3833, %nyx_string* %3835)
  %3837 = getelementptr [126 x i8], [126 x i8]* @.str526, i32 0, i32 0
  %3838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %3837, i64 125)
  %3839 = call %nyx_string* @nyx_string_concat(%nyx_string* %3836, %nyx_string* %3838)
  %3840 = getelementptr [6 x i8], [6 x i8]* @.str527, i32 0, i32 0
  %3841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %3840, i64 5)
  %3842 = call %nyx_string* @nyx_string_concat(%nyx_string* %3839, %nyx_string* %3841)
  %3843 = getelementptr [119 x i8], [119 x i8]* @.str528, i32 0, i32 0
  %3844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %3843, i64 118)
  %3845 = call %nyx_string* @nyx_string_concat(%nyx_string* %3842, %nyx_string* %3844)
  %3846 = getelementptr [5 x i8], [5 x i8]* @.str529, i32 0, i32 0
  %3847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %3846, i64 4)
  %3848 = call %nyx_string* @nyx_string_concat(%nyx_string* %3845, %nyx_string* %3847)
  %3849 = getelementptr [4 x i8], [4 x i8]* @.str530, i32 0, i32 0
  %3850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %3849, i64 3)
  %3851 = call %nyx_string* @nyx_string_concat(%nyx_string* %3848, %nyx_string* %3850)
  ret %nyx_string* %3851
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %3852 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %3853 = load %nyx_string*, %nyx_string** %3852
  %3854 = alloca %nyx_string*
  store %nyx_string* %3853, %nyx_string** %3854
  %3855 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %3856 = getelementptr [1 x i8], [1 x i8]* @.str531, i32 0, i32 0
  %3857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %3856, i64 0)
  %3858 = call i1 @nyx_string_equals(%nyx_string* %3855, %nyx_string* %3857)
  %3859 = xor i1 %3858, true
  br i1 %3859, label %then585, label %else586
then585:
  %3860 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %3860, %nyx_string** %3854
  br label %merge587
else586:
  br label %merge587
merge587:
  %3861 = getelementptr [1 x i8], [1 x i8]* @.str532, i32 0, i32 0
  %3862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %3861, i64 0)
  %3863 = alloca %nyx_string*
  store %nyx_string* %3862, %nyx_string** %3863
  %3864 = load %nyx_string*, %nyx_string** %3854
  %3865 = getelementptr [1 x i8], [1 x i8]* @.str533, i32 0, i32 0
  %3866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %3865, i64 0)
  %3867 = call i1 @nyx_string_equals(%nyx_string* %3864, %nyx_string* %3866)
  %3868 = xor i1 %3867, true
  br i1 %3868, label %then588, label %else589
then588:
  %3869 = getelementptr [3 x i8], [3 x i8]* @.str534, i32 0, i32 0
  %3870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %3869, i64 2)
  %3871 = load %nyx_string*, %nyx_string** %3854
  %3872 = call %nyx_string* @nyx_string_concat(%nyx_string* %3870, %nyx_string* %3871)
  %3873 = getelementptr [2 x i8], [2 x i8]* @.str535, i32 0, i32 0
  %3874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %3873, i64 1)
  %3875 = call %nyx_string* @nyx_string_concat(%nyx_string* %3872, %nyx_string* %3874)
  store %nyx_string* %3875, %nyx_string** %3863
  br label %merge590
else589:
  br label %merge590
merge590:
  %3876 = getelementptr [13 x i8], [13 x i8]* @.str536, i32 0, i32 0
  %3877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %3876, i64 12)
  %3878 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %3879 = load %nyx_string*, %nyx_string** %3878
  %3880 = call %nyx_string* @nyx_string_concat(%nyx_string* %3877, %nyx_string* %3879)
  %3881 = getelementptr [3 x i8], [3 x i8]* @.str537, i32 0, i32 0
  %3882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %3881, i64 2)
  %3883 = call %nyx_string* @nyx_string_concat(%nyx_string* %3880, %nyx_string* %3882)
  %3884 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %3885 = load %nyx_string*, %nyx_string** %3884
  %3886 = call %nyx_string* @nyx_string_concat(%nyx_string* %3883, %nyx_string* %3885)
  %3887 = load %nyx_string*, %nyx_string** %3863
  %3888 = call %nyx_string* @nyx_string_concat(%nyx_string* %3886, %nyx_string* %3887)
  %3889 = call i8* @nyx_string_to_cstr(%nyx_string* %3888)
  call void @nyx_print_string(i8* %3889)
  %3890 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %3891 = call i1 @resolve_deps(%ProjectConfig %3890)
  %3892 = alloca i1
  store i1 %3891, i1* %3892
  %3893 = load i1, i1* %3892
  %3894 = icmp eq i1 %3893, 0
  br i1 %3894, label %then591, label %else592
then591:
  ret i1 0
else592:
  br label %merge593
merge593:
  %3895 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %3896 = load %nyx_string*, %nyx_string** %3895
  %3897 = call i8* @nyx_string_to_cstr(%nyx_string* %3896)
  %3898 = call i1 @nyx_file_exists(i8* %3897)
  %3899 = xor i1 %3898, true
  br i1 %3899, label %then594, label %else595
then594:
  %3900 = getelementptr [29 x i8], [29 x i8]* @.str538, i32 0, i32 0
  %3901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %3900, i64 28)
  %3902 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %3903 = load %nyx_string*, %nyx_string** %3902
  %3904 = call %nyx_string* @nyx_string_concat(%nyx_string* %3901, %nyx_string* %3903)
  %3905 = call i8* @nyx_string_to_cstr(%nyx_string* %3904)
  call void @nyx_print_string(i8* %3905)
  ret i1 0
else595:
  br label %merge596
merge596:
  %3906 = getelementptr [1 x i8], [1 x i8]* @.str539, i32 0, i32 0
  %3907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %3906, i64 0)
  %3908 = alloca %nyx_string*
  store %nyx_string* %3907, %nyx_string** %3908
  %3909 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %3910 = load i1, i1* %3909
  br i1 %3910, label %then597, label %else598
then597:
  %3911 = getelementptr [13 x i8], [13 x i8]* @.str540, i32 0, i32 0
  %3912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %3911, i64 12)
  store %nyx_string* %3912, %nyx_string** %3908
  br label %merge599
else598:
  br label %merge599
merge599:
  %3913 = getelementptr [14 x i8], [14 x i8]* @.str541, i32 0, i32 0
  %3914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %3913, i64 13)
  %3915 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %3916 = load %nyx_string*, %nyx_string** %3915
  %3917 = call %nyx_string* @nyx_string_concat(%nyx_string* %3914, %nyx_string* %3916)
  %3918 = call i8* @nyx_string_to_cstr(%nyx_string* %3917)
  call void @nyx_print_string(i8* %3918)
  %3919 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %3920 = load %nyx_string*, %nyx_string** %3919
  %3921 = alloca %nyx_string*
  store %nyx_string* %3920, %nyx_string** %3921
  %3922 = getelementptr [1 x i8], [1 x i8]* @.str542, i32 0, i32 0
  %3923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %3922, i64 0)
  %3924 = alloca %nyx_string*
  store %nyx_string* %3923, %nyx_string** %3924
  %3925 = load i1, i1* %release.ptr
  br i1 %3925, label %then600, label %else601
then600:
  %3926 = getelementptr [4 x i8], [4 x i8]* @.str543, i32 0, i32 0
  %3927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %3926, i64 3)
  store %nyx_string* %3927, %nyx_string** %3924
  br label %merge602
else601:
  br label %merge602
merge602:
  %3928 = getelementptr [9 x i8], [9 x i8]* @.str544, i32 0, i32 0
  %3929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %3928, i64 8)
  %3930 = call i8* @nyx_string_to_cstr(%nyx_string* %3929)
  %3931 = call %nyx_string* @nyx_getenv(i8* %3930)
  %3932 = alloca %nyx_string*
  store %nyx_string* %3931, %nyx_string** %3932
  %3933 = load %nyx_string*, %nyx_string** %3932
  %3934 = getelementptr [1 x i8], [1 x i8]* @.str545, i32 0, i32 0
  %3935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %3934, i64 0)
  %3936 = call i1 @nyx_string_equals(%nyx_string* %3933, %nyx_string* %3935)
  br i1 %3936, label %then603, label %else604
then603:
  %3937 = getelementptr [5 x i8], [5 x i8]* @.str546, i32 0, i32 0
  %3938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %3937, i64 4)
  %3939 = call i8* @nyx_string_to_cstr(%nyx_string* %3938)
  %3940 = call %nyx_string* @nyx_getenv(i8* %3939)
  %3941 = alloca %nyx_string*
  store %nyx_string* %3940, %nyx_string** %3941
  %3942 = load %nyx_string*, %nyx_string** %3941
  %3943 = getelementptr [6 x i8], [6 x i8]* @.str547, i32 0, i32 0
  %3944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %3943, i64 5)
  %3945 = call %nyx_string* @nyx_string_concat(%nyx_string* %3942, %nyx_string* %3944)
  %3946 = alloca %nyx_string*
  store %nyx_string* %3945, %nyx_string** %3946
  %3947 = alloca i1
  store i1 false, i1* %3947
  %3948 = load %nyx_string*, %nyx_string** %3941
  %3949 = getelementptr [1 x i8], [1 x i8]* @.str548, i32 0, i32 0
  %3950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %3949, i64 0)
  %3951 = call i1 @nyx_string_equals(%nyx_string* %3948, %nyx_string* %3950)
  %3952 = xor i1 %3951, true
  br i1 %3952, label %sc_and_rhs606, label %sc_and_end607
sc_and_rhs606:
  %3953 = load %nyx_string*, %nyx_string** %3946
  %3954 = getelementptr [19 x i8], [19 x i8]* @.str549, i32 0, i32 0
  %3955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %3954, i64 18)
  %3956 = call %nyx_string* @nyx_string_concat(%nyx_string* %3953, %nyx_string* %3955)
  %3957 = call i8* @nyx_string_to_cstr(%nyx_string* %3956)
  %3958 = call i1 @nyx_file_exists(i8* %3957)
  store i1 %3958, i1* %3947
  br label %sc_and_end607
sc_and_end607:
  %3959 = load i1, i1* %3947
  br i1 %3959, label %then608, label %else609
then608:
  %3960 = load %nyx_string*, %nyx_string** %3946
  store %nyx_string* %3960, %nyx_string** %3932
  br label %merge610
else609:
  br label %merge610
merge610:
  br label %merge605
else604:
  br label %merge605
merge605:
  %3961 = load %nyx_string*, %nyx_string** %3932
  %3962 = getelementptr [1 x i8], [1 x i8]* @.str550, i32 0, i32 0
  %3963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %3962, i64 0)
  %3964 = call i1 @nyx_string_equals(%nyx_string* %3961, %nyx_string* %3963)
  br i1 %3964, label %then611, label %else612
then611:
  %3965 = getelementptr [14 x i8], [14 x i8]* @.str551, i32 0, i32 0
  %3966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %3965, i64 13)
  %3967 = call i8* @nyx_string_to_cstr(%nyx_string* %3966)
  %3968 = call i1 @nyx_file_exists(i8* %3967)
  br i1 %3968, label %then614, label %else615
then614:
  %3969 = getelementptr [2 x i8], [2 x i8]* @.str552, i32 0, i32 0
  %3970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %3969, i64 1)
  store %nyx_string* %3970, %nyx_string** %3932
  br label %merge616
else615:
  br label %merge616
merge616:
  br label %merge613
else612:
  br label %merge613
merge613:
  %3971 = load %nyx_string*, %nyx_string** %3932
  %3972 = getelementptr [1 x i8], [1 x i8]* @.str553, i32 0, i32 0
  %3973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %3972, i64 0)
  %3974 = call i1 @nyx_string_equals(%nyx_string* %3971, %nyx_string* %3973)
  br i1 %3974, label %then617, label %else618
then617:
  %3975 = getelementptr [56 x i8], [56 x i8]* @.str554, i32 0, i32 0
  %3976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %3975, i64 55)
  %3977 = call i8* @nyx_string_to_cstr(%nyx_string* %3976)
  call void @nyx_print_string(i8* %3977)
  ret i1 0
else618:
  br label %merge619
merge619:
  %3978 = load %nyx_string*, %nyx_string** %3932
  %3979 = getelementptr [15 x i8], [15 x i8]* @.str555, i32 0, i32 0
  %3980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %3979, i64 14)
  %3981 = call %nyx_string* @nyx_string_concat(%nyx_string* %3978, %nyx_string* %3980)
  %3982 = alloca %nyx_string*
  store %nyx_string* %3981, %nyx_string** %3982
  %3983 = load %nyx_string*, %nyx_string** %3982
  %3984 = call i8* @nyx_string_to_cstr(%nyx_string* %3983)
  %3985 = call i1 @nyx_file_exists(i8* %3984)
  %3986 = xor i1 %3985, true
  br i1 %3986, label %then620, label %else621
then620:
  %3987 = load %nyx_string*, %nyx_string** %3932
  %3988 = getelementptr [9 x i8], [9 x i8]* @.str556, i32 0, i32 0
  %3989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %3988, i64 8)
  %3990 = call %nyx_string* @nyx_string_concat(%nyx_string* %3987, %nyx_string* %3989)
  store %nyx_string* %3990, %nyx_string** %3982
  br label %merge622
else621:
  br label %merge622
merge622:
  %3991 = load %nyx_string*, %nyx_string** %3932
  %3992 = getelementptr [9 x i8], [9 x i8]* @.str557, i32 0, i32 0
  %3993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %3992, i64 8)
  %3994 = call %nyx_string* @nyx_string_concat(%nyx_string* %3991, %nyx_string* %3993)
  %3995 = alloca %nyx_string*
  store %nyx_string* %3994, %nyx_string** %3995
  %3996 = getelementptr [20 x i8], [20 x i8]* @.str558, i32 0, i32 0
  %3997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %3996, i64 19)
  %3998 = getelementptr [19 x i8], [19 x i8]* @.str559, i32 0, i32 0
  %3999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %3998, i64 18)
  %4000 = call %nyx_string* @nyx_string_concat(%nyx_string* %3997, %nyx_string* %3999)
  %4001 = getelementptr [5 x i8], [5 x i8]* @.str560, i32 0, i32 0
  %4002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %4001, i64 4)
  %4003 = call %nyx_string* @nyx_string_concat(%nyx_string* %4000, %nyx_string* %4002)
  %4004 = load %nyx_string*, %nyx_string** %3995
  %4005 = call %nyx_string* @nyx_string_concat(%nyx_string* %4003, %nyx_string* %4004)
  %4006 = getelementptr [3 x i8], [3 x i8]* @.str561, i32 0, i32 0
  %4007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %4006, i64 2)
  %4008 = call %nyx_string* @nyx_string_concat(%nyx_string* %4005, %nyx_string* %4007)
  %4009 = getelementptr [43 x i8], [43 x i8]* @.str562, i32 0, i32 0
  %4010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %4009, i64 42)
  %4011 = call %nyx_string* @nyx_string_concat(%nyx_string* %4008, %nyx_string* %4010)
  %4012 = getelementptr [37 x i8], [37 x i8]* @.str563, i32 0, i32 0
  %4013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %4012, i64 36)
  %4014 = call %nyx_string* @nyx_string_concat(%nyx_string* %4011, %nyx_string* %4013)
  %4015 = getelementptr [17 x i8], [17 x i8]* @.str564, i32 0, i32 0
  %4016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %4015, i64 16)
  %4017 = call %nyx_string* @nyx_string_concat(%nyx_string* %4014, %nyx_string* %4016)
  %4018 = getelementptr [38 x i8], [38 x i8]* @.str565, i32 0, i32 0
  %4019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %4018, i64 37)
  %4020 = call %nyx_string* @nyx_string_concat(%nyx_string* %4017, %nyx_string* %4019)
  %4021 = getelementptr [17 x i8], [17 x i8]* @.str566, i32 0, i32 0
  %4022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %4021, i64 16)
  %4023 = call %nyx_string* @nyx_string_concat(%nyx_string* %4020, %nyx_string* %4022)
  %4024 = getelementptr [15 x i8], [15 x i8]* @.str567, i32 0, i32 0
  %4025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %4024, i64 14)
  %4026 = call %nyx_string* @nyx_string_concat(%nyx_string* %4023, %nyx_string* %4025)
  %4027 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4028 = load %nyx_string*, %nyx_string** %4027
  %4029 = call %nyx_string* @nyx_string_concat(%nyx_string* %4026, %nyx_string* %4028)
  %4030 = getelementptr [12 x i8], [12 x i8]* @.str568, i32 0, i32 0
  %4031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %4030, i64 11)
  %4032 = call %nyx_string* @nyx_string_concat(%nyx_string* %4029, %nyx_string* %4031)
  %4033 = getelementptr [5 x i8], [5 x i8]* @.str569, i32 0, i32 0
  %4034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %4033, i64 4)
  %4035 = call %nyx_string* @nyx_string_concat(%nyx_string* %4032, %nyx_string* %4034)
  %4036 = load %nyx_string*, %nyx_string** %3932
  %4037 = call %nyx_string* @nyx_string_concat(%nyx_string* %4035, %nyx_string* %4036)
  %4038 = getelementptr [3 x i8], [3 x i8]* @.str570, i32 0, i32 0
  %4039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %4038, i64 2)
  %4040 = call %nyx_string* @nyx_string_concat(%nyx_string* %4037, %nyx_string* %4039)
  %4041 = load %nyx_string*, %nyx_string** %3908
  %4042 = call %nyx_string* @nyx_string_concat(%nyx_string* %4040, %nyx_string* %4041)
  %4043 = getelementptr [47 x i8], [47 x i8]* @.str571, i32 0, i32 0
  %4044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %4043, i64 46)
  %4045 = call %nyx_string* @nyx_string_concat(%nyx_string* %4042, %nyx_string* %4044)
  %4046 = load %nyx_string*, %nyx_string** %3982
  %4047 = call %nyx_string* @nyx_string_concat(%nyx_string* %4045, %nyx_string* %4046)
  %4048 = getelementptr [17 x i8], [17 x i8]* @.str572, i32 0, i32 0
  %4049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %4048, i64 16)
  %4050 = call %nyx_string* @nyx_string_concat(%nyx_string* %4047, %nyx_string* %4049)
  %4051 = getelementptr [71 x i8], [71 x i8]* @.str573, i32 0, i32 0
  %4052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %4051, i64 70)
  %4053 = call %nyx_string* @nyx_string_concat(%nyx_string* %4050, %nyx_string* %4052)
  %4054 = getelementptr [7 x i8], [7 x i8]* @.str574, i32 0, i32 0
  %4055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %4054, i64 6)
  %4056 = call %nyx_string* @nyx_string_concat(%nyx_string* %4053, %nyx_string* %4055)
  %4057 = load %nyx_string*, %nyx_string** %3924
  %4058 = call %nyx_string* @nyx_string_concat(%nyx_string* %4056, %nyx_string* %4057)
  %4059 = getelementptr [12 x i8], [12 x i8]* @.str575, i32 0, i32 0
  %4060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %4059, i64 11)
  %4061 = call %nyx_string* @nyx_string_concat(%nyx_string* %4058, %nyx_string* %4060)
  %4062 = getelementptr [50 x i8], [50 x i8]* @.str576, i32 0, i32 0
  %4063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %4062, i64 49)
  %4064 = call %nyx_string* @nyx_string_concat(%nyx_string* %4061, %nyx_string* %4063)
  %4065 = getelementptr [42 x i8], [42 x i8]* @.str577, i32 0, i32 0
  %4066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %4065, i64 41)
  %4067 = call %nyx_string* @nyx_string_concat(%nyx_string* %4064, %nyx_string* %4066)
  %4068 = getelementptr [36 x i8], [36 x i8]* @.str578, i32 0, i32 0
  %4069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %4068, i64 35)
  %4070 = call %nyx_string* @nyx_string_concat(%nyx_string* %4067, %nyx_string* %4069)
  %4071 = getelementptr [35 x i8], [35 x i8]* @.str579, i32 0, i32 0
  %4072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %4071, i64 34)
  %4073 = call %nyx_string* @nyx_string_concat(%nyx_string* %4070, %nyx_string* %4072)
  %4074 = getelementptr [55 x i8], [55 x i8]* @.str580, i32 0, i32 0
  %4075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %4074, i64 54)
  %4076 = call %nyx_string* @nyx_string_concat(%nyx_string* %4073, %nyx_string* %4075)
  %4077 = getelementptr [39 x i8], [39 x i8]* @.str581, i32 0, i32 0
  %4078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %4077, i64 38)
  %4079 = call %nyx_string* @nyx_string_concat(%nyx_string* %4076, %nyx_string* %4078)
  %4080 = getelementptr [71 x i8], [71 x i8]* @.str582, i32 0, i32 0
  %4081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %4080, i64 70)
  %4082 = call %nyx_string* @nyx_string_concat(%nyx_string* %4079, %nyx_string* %4081)
  %4083 = getelementptr [21 x i8], [21 x i8]* @.str583, i32 0, i32 0
  %4084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %4083, i64 20)
  %4085 = call %nyx_string* @nyx_string_concat(%nyx_string* %4082, %nyx_string* %4084)
  %4086 = getelementptr [19 x i8], [19 x i8]* @.str584, i32 0, i32 0
  %4087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %4086, i64 18)
  %4088 = call %nyx_string* @nyx_string_concat(%nyx_string* %4085, %nyx_string* %4087)
  %4089 = getelementptr [44 x i8], [44 x i8]* @.str585, i32 0, i32 0
  %4090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %4089, i64 43)
  %4091 = call %nyx_string* @nyx_string_concat(%nyx_string* %4088, %nyx_string* %4090)
  %4092 = getelementptr [15 x i8], [15 x i8]* @.str586, i32 0, i32 0
  %4093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %4092, i64 14)
  %4094 = call %nyx_string* @nyx_string_concat(%nyx_string* %4091, %nyx_string* %4093)
  %4095 = load %nyx_string*, %nyx_string** %3921
  %4096 = call %nyx_string* @nyx_string_concat(%nyx_string* %4094, %nyx_string* %4095)
  %4097 = getelementptr [13 x i8], [13 x i8]* @.str587, i32 0, i32 0
  %4098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %4097, i64 12)
  %4099 = call %nyx_string* @nyx_string_concat(%nyx_string* %4096, %nyx_string* %4098)
  %4100 = getelementptr [44 x i8], [44 x i8]* @.str588, i32 0, i32 0
  %4101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %4100, i64 43)
  %4102 = call %nyx_string* @nyx_string_concat(%nyx_string* %4099, %nyx_string* %4101)
  %4103 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4104 = load %nyx_string*, %nyx_string** %4103
  %4105 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4104)
  %4106 = call %nyx_string* @nyx_string_concat(%nyx_string* %4102, %nyx_string* %4105)
  %4107 = getelementptr [27 x i8], [27 x i8]* @.str589, i32 0, i32 0
  %4108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %4107, i64 26)
  %4109 = call %nyx_string* @nyx_string_concat(%nyx_string* %4106, %nyx_string* %4108)
  %4110 = getelementptr [18 x i8], [18 x i8]* @.str590, i32 0, i32 0
  %4111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %4110, i64 17)
  %4112 = call %nyx_string* @nyx_string_concat(%nyx_string* %4109, %nyx_string* %4111)
  %4113 = load %nyx_string*, %nyx_string** %3921
  %4114 = call %nyx_string* @nyx_string_concat(%nyx_string* %4112, %nyx_string* %4113)
  %4115 = getelementptr [3 x i8], [3 x i8]* @.str591, i32 0, i32 0
  %4116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %4115, i64 2)
  %4117 = call %nyx_string* @nyx_string_concat(%nyx_string* %4114, %nyx_string* %4116)
  %4118 = alloca %nyx_string*
  store %nyx_string* %4117, %nyx_string** %4118
  %4119 = alloca i1
  store i1 false, i1* %4119
  %4120 = load %nyx_string*, %nyx_string** %3854
  %4121 = getelementptr [1 x i8], [1 x i8]* @.str592, i32 0, i32 0
  %4122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %4121, i64 0)
  %4123 = call i1 @nyx_string_equals(%nyx_string* %4120, %nyx_string* %4122)
  %4124 = xor i1 %4123, true
  br i1 %4124, label %sc_and_rhs623, label %sc_and_end624
sc_and_rhs623:
  %4125 = load %nyx_string*, %nyx_string** %3854
  %4126 = getelementptr [12 x i8], [12 x i8]* @.str593, i32 0, i32 0
  %4127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %4126, i64 11)
  %4128 = call i1 @nyx_string_equals(%nyx_string* %4125, %nyx_string* %4127)
  %4129 = xor i1 %4128, true
  store i1 %4129, i1* %4119
  br label %sc_and_end624
sc_and_end624:
  %4130 = load i1, i1* %4119
  br i1 %4130, label %then625, label %else626
then625:
  %4131 = alloca i1
  store i1 false, i1* %4131
  %4132 = load %nyx_string*, %nyx_string** %3854
  %4133 = getelementptr [23 x i8], [23 x i8]* @.str594, i32 0, i32 0
  %4134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %4133, i64 22)
  %4135 = call i1 @nyx_string_equals(%nyx_string* %4132, %nyx_string* %4134)
  %4136 = xor i1 %4135, true
  br i1 %4136, label %sc_and_rhs628, label %sc_and_end629
sc_and_rhs628:
  %4137 = load %nyx_string*, %nyx_string** %3854
  %4138 = getelementptr [24 x i8], [24 x i8]* @.str595, i32 0, i32 0
  %4139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %4138, i64 23)
  %4140 = call i1 @nyx_string_equals(%nyx_string* %4137, %nyx_string* %4139)
  %4141 = xor i1 %4140, true
  store i1 %4141, i1* %4131
  br label %sc_and_end629
sc_and_end629:
  %4142 = load i1, i1* %4131
  br i1 %4142, label %then630, label %else631
then630:
  %4143 = getelementptr [28 x i8], [28 x i8]* @.str596, i32 0, i32 0
  %4144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %4143, i64 27)
  %4145 = load %nyx_string*, %nyx_string** %3854
  %4146 = call %nyx_string* @nyx_string_concat(%nyx_string* %4144, %nyx_string* %4145)
  %4147 = call i8* @nyx_string_to_cstr(%nyx_string* %4146)
  call void @nyx_print_string(i8* %4147)
  %4148 = getelementptr [83 x i8], [83 x i8]* @.str597, i32 0, i32 0
  %4149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %4148, i64 82)
  %4150 = call i8* @nyx_string_to_cstr(%nyx_string* %4149)
  call void @nyx_print_string(i8* %4150)
  %4151 = getelementptr [52 x i8], [52 x i8]* @.str598, i32 0, i32 0
  %4152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %4151, i64 51)
  %4153 = call i8* @nyx_string_to_cstr(%nyx_string* %4152)
  call void @nyx_print_string(i8* %4153)
  ret i1 0
else631:
  br label %merge632
merge632:
  br label %merge627
else626:
  br label %merge627
merge627:
  %4154 = load %nyx_string*, %nyx_string** %4118
  %4155 = alloca %nyx_string*
  store %nyx_string* %4154, %nyx_string** %4155
  %4156 = load %nyx_string*, %nyx_string** %3854
  %4157 = getelementptr [12 x i8], [12 x i8]* @.str599, i32 0, i32 0
  %4158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %4157, i64 11)
  %4159 = call i1 @nyx_string_equals(%nyx_string* %4156, %nyx_string* %4158)
  br i1 %4159, label %then633, label %else634
then633:
  %4160 = getelementptr [20 x i8], [20 x i8]* @.str600, i32 0, i32 0
  %4161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %4160, i64 19)
  %4162 = getelementptr [19 x i8], [19 x i8]* @.str601, i32 0, i32 0
  %4163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %4162, i64 18)
  %4164 = call %nyx_string* @nyx_string_concat(%nyx_string* %4161, %nyx_string* %4163)
  %4165 = getelementptr [5 x i8], [5 x i8]* @.str602, i32 0, i32 0
  %4166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %4165, i64 4)
  %4167 = call %nyx_string* @nyx_string_concat(%nyx_string* %4164, %nyx_string* %4166)
  %4168 = load %nyx_string*, %nyx_string** %3995
  %4169 = call %nyx_string* @nyx_string_concat(%nyx_string* %4167, %nyx_string* %4168)
  %4170 = getelementptr [3 x i8], [3 x i8]* @.str603, i32 0, i32 0
  %4171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %4170, i64 2)
  %4172 = call %nyx_string* @nyx_string_concat(%nyx_string* %4169, %nyx_string* %4171)
  %4173 = getelementptr [11 x i8], [11 x i8]* @.str604, i32 0, i32 0
  %4174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %4173, i64 10)
  %4175 = call %nyx_string* @nyx_string_concat(%nyx_string* %4172, %nyx_string* %4174)
  %4176 = getelementptr [23 x i8], [23 x i8]* @.str605, i32 0, i32 0
  %4177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %4176, i64 22)
  %4178 = call %nyx_string* @nyx_string_concat(%nyx_string* %4175, %nyx_string* %4177)
  %4179 = getelementptr [43 x i8], [43 x i8]* @.str606, i32 0, i32 0
  %4180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %4179, i64 42)
  %4181 = call %nyx_string* @nyx_string_concat(%nyx_string* %4178, %nyx_string* %4180)
  %4182 = getelementptr [37 x i8], [37 x i8]* @.str607, i32 0, i32 0
  %4183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %4182, i64 36)
  %4184 = call %nyx_string* @nyx_string_concat(%nyx_string* %4181, %nyx_string* %4183)
  %4185 = getelementptr [17 x i8], [17 x i8]* @.str608, i32 0, i32 0
  %4186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %4185, i64 16)
  %4187 = call %nyx_string* @nyx_string_concat(%nyx_string* %4184, %nyx_string* %4186)
  %4188 = getelementptr [38 x i8], [38 x i8]* @.str609, i32 0, i32 0
  %4189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %4188, i64 37)
  %4190 = call %nyx_string* @nyx_string_concat(%nyx_string* %4187, %nyx_string* %4189)
  %4191 = getelementptr [17 x i8], [17 x i8]* @.str610, i32 0, i32 0
  %4192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %4191, i64 16)
  %4193 = call %nyx_string* @nyx_string_concat(%nyx_string* %4190, %nyx_string* %4192)
  %4194 = getelementptr [163 x i8], [163 x i8]* @.str611, i32 0, i32 0
  %4195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %4194, i64 162)
  %4196 = call %nyx_string* @nyx_string_concat(%nyx_string* %4193, %nyx_string* %4195)
  %4197 = getelementptr [15 x i8], [15 x i8]* @.str612, i32 0, i32 0
  %4198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %4197, i64 14)
  %4199 = call %nyx_string* @nyx_string_concat(%nyx_string* %4196, %nyx_string* %4198)
  %4200 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4201 = load %nyx_string*, %nyx_string** %4200
  %4202 = call %nyx_string* @nyx_string_concat(%nyx_string* %4199, %nyx_string* %4201)
  %4203 = getelementptr [12 x i8], [12 x i8]* @.str613, i32 0, i32 0
  %4204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %4203, i64 11)
  %4205 = call %nyx_string* @nyx_string_concat(%nyx_string* %4202, %nyx_string* %4204)
  %4206 = getelementptr [5 x i8], [5 x i8]* @.str614, i32 0, i32 0
  %4207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %4206, i64 4)
  %4208 = call %nyx_string* @nyx_string_concat(%nyx_string* %4205, %nyx_string* %4207)
  %4209 = load %nyx_string*, %nyx_string** %3932
  %4210 = call %nyx_string* @nyx_string_concat(%nyx_string* %4208, %nyx_string* %4209)
  %4211 = getelementptr [3 x i8], [3 x i8]* @.str615, i32 0, i32 0
  %4212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %4211, i64 2)
  %4213 = call %nyx_string* @nyx_string_concat(%nyx_string* %4210, %nyx_string* %4212)
  %4214 = getelementptr [82 x i8], [82 x i8]* @.str616, i32 0, i32 0
  %4215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %4214, i64 81)
  %4216 = call %nyx_string* @nyx_string_concat(%nyx_string* %4213, %nyx_string* %4215)
  %4217 = load %nyx_string*, %nyx_string** %3982
  %4218 = call %nyx_string* @nyx_string_concat(%nyx_string* %4216, %nyx_string* %4217)
  %4219 = getelementptr [17 x i8], [17 x i8]* @.str617, i32 0, i32 0
  %4220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %4219, i64 16)
  %4221 = call %nyx_string* @nyx_string_concat(%nyx_string* %4218, %nyx_string* %4220)
  %4222 = getelementptr [71 x i8], [71 x i8]* @.str618, i32 0, i32 0
  %4223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %4222, i64 70)
  %4224 = call %nyx_string* @nyx_string_concat(%nyx_string* %4221, %nyx_string* %4223)
  %4225 = getelementptr [24 x i8], [24 x i8]* @.str619, i32 0, i32 0
  %4226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %4225, i64 23)
  %4227 = call %nyx_string* @nyx_string_concat(%nyx_string* %4224, %nyx_string* %4226)
  %4228 = getelementptr [2 x i8], [2 x i8]* @.str620, i32 0, i32 0
  %4229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %4228, i64 1)
  %4230 = call %nyx_string* @nyx_string_concat(%nyx_string* %4227, %nyx_string* %4229)
  %4231 = getelementptr [76 x i8], [76 x i8]* @.str621, i32 0, i32 0
  %4232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %4231, i64 75)
  %4233 = call %nyx_string* @nyx_string_concat(%nyx_string* %4230, %nyx_string* %4232)
  %4234 = getelementptr [98 x i8], [98 x i8]* @.str622, i32 0, i32 0
  %4235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %4234, i64 97)
  %4236 = call %nyx_string* @nyx_string_concat(%nyx_string* %4233, %nyx_string* %4235)
  %4237 = getelementptr [41 x i8], [41 x i8]* @.str623, i32 0, i32 0
  %4238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %4237, i64 40)
  %4239 = call %nyx_string* @nyx_string_concat(%nyx_string* %4236, %nyx_string* %4238)
  %4240 = getelementptr [64 x i8], [64 x i8]* @.str624, i32 0, i32 0
  %4241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %4240, i64 63)
  %4242 = call %nyx_string* @nyx_string_concat(%nyx_string* %4239, %nyx_string* %4241)
  %4243 = getelementptr [56 x i8], [56 x i8]* @.str625, i32 0, i32 0
  %4244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %4243, i64 55)
  %4245 = call %nyx_string* @nyx_string_concat(%nyx_string* %4242, %nyx_string* %4244)
  %4246 = getelementptr [12 x i8], [12 x i8]* @.str626, i32 0, i32 0
  %4247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %4246, i64 11)
  %4248 = call %nyx_string* @nyx_string_concat(%nyx_string* %4245, %nyx_string* %4247)
  %4249 = getelementptr [34 x i8], [34 x i8]* @.str627, i32 0, i32 0
  %4250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %4249, i64 33)
  %4251 = call %nyx_string* @nyx_string_concat(%nyx_string* %4248, %nyx_string* %4250)
  %4252 = load %nyx_string*, %nyx_string** %3921
  %4253 = call %nyx_string* @nyx_string_concat(%nyx_string* %4251, %nyx_string* %4252)
  %4254 = getelementptr [18 x i8], [18 x i8]* @.str628, i32 0, i32 0
  %4255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %4254, i64 17)
  %4256 = call %nyx_string* @nyx_string_concat(%nyx_string* %4253, %nyx_string* %4255)
  %4257 = getelementptr [49 x i8], [49 x i8]* @.str629, i32 0, i32 0
  %4258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %4257, i64 48)
  %4259 = call %nyx_string* @nyx_string_concat(%nyx_string* %4256, %nyx_string* %4258)
  %4260 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4261 = load %nyx_string*, %nyx_string** %4260
  %4262 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %4261)
  %4263 = call %nyx_string* @nyx_string_concat(%nyx_string* %4259, %nyx_string* %4262)
  %4264 = getelementptr [27 x i8], [27 x i8]* @.str630, i32 0, i32 0
  %4265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %4264, i64 26)
  %4266 = call %nyx_string* @nyx_string_concat(%nyx_string* %4263, %nyx_string* %4265)
  %4267 = getelementptr [32 x i8], [32 x i8]* @.str631, i32 0, i32 0
  %4268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %4267, i64 31)
  %4269 = call %nyx_string* @nyx_string_concat(%nyx_string* %4266, %nyx_string* %4268)
  %4270 = load %nyx_string*, %nyx_string** %3921
  %4271 = call %nyx_string* @nyx_string_concat(%nyx_string* %4269, %nyx_string* %4270)
  %4272 = getelementptr [41 x i8], [41 x i8]* @.str632, i32 0, i32 0
  %4273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %4272, i64 40)
  %4274 = call %nyx_string* @nyx_string_concat(%nyx_string* %4271, %nyx_string* %4273)
  %4275 = load %nyx_string*, %nyx_string** %3921
  %4276 = call %nyx_string* @nyx_string_concat(%nyx_string* %4274, %nyx_string* %4275)
  %4277 = getelementptr [9 x i8], [9 x i8]* @.str633, i32 0, i32 0
  %4278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %4277, i64 8)
  %4279 = call %nyx_string* @nyx_string_concat(%nyx_string* %4276, %nyx_string* %4278)
  store %nyx_string* %4279, %nyx_string** %4155
  br label %merge635
else634:
  br label %merge635
merge635:
  %4280 = getelementptr [16 x i8], [16 x i8]* @.str634, i32 0, i32 0
  %4281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %4280, i64 15)
  %4282 = call i64 @nyx_getpid()
  %4283 = call %nyx_string* @nyx_string_from_int(i64 %4282)
  %4284 = call %nyx_string* @nyx_string_concat(%nyx_string* %4281, %nyx_string* %4283)
  %4285 = getelementptr [4 x i8], [4 x i8]* @.str635, i32 0, i32 0
  %4286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %4285, i64 3)
  %4287 = call %nyx_string* @nyx_string_concat(%nyx_string* %4284, %nyx_string* %4286)
  %4288 = alloca %nyx_string*
  store %nyx_string* %4287, %nyx_string** %4288
  %4289 = load %nyx_string*, %nyx_string** %4288
  %4290 = load %nyx_string*, %nyx_string** %4155
  %4291 = call i8* @nyx_string_to_cstr(%nyx_string* %4289)
  %4292 = call i8* @nyx_string_to_cstr(%nyx_string* %4290)
  %4293 = call i1 @nyx_write_file(i8* %4291, i8* %4292)
  %4294 = getelementptr [7 x i8], [7 x i8]* @.str636, i32 0, i32 0
  %4295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %4294, i64 6)
  %4296 = load %nyx_string*, %nyx_string** %4288
  %4297 = call %nyx_string* @nyx_string_concat(%nyx_string* %4295, %nyx_string* %4296)
  %4298 = getelementptr [22 x i8], [22 x i8]* @.str637, i32 0, i32 0
  %4299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %4298, i64 21)
  %4300 = call %nyx_string* @nyx_string_concat(%nyx_string* %4297, %nyx_string* %4299)
  %4301 = load %nyx_string*, %nyx_string** %4288
  %4302 = call %nyx_string* @nyx_string_concat(%nyx_string* %4300, %nyx_string* %4301)
  %4303 = getelementptr [16 x i8], [16 x i8]* @.str638, i32 0, i32 0
  %4304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %4303, i64 15)
  %4305 = call %nyx_string* @nyx_string_concat(%nyx_string* %4302, %nyx_string* %4304)
  %4306 = call i8* @nyx_string_to_cstr(%nyx_string* %4305)
  %4307 = call i64 @nyx_exec_code(i8* %4306)
  %4308 = alloca i64
  store i64 %4307, i64* %4308
  %4309 = load i64, i64* %4308
  %4310 = icmp eq i64 %4309, 0
  ret i1 %4310
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %4311 = getelementptr [10 x i8], [10 x i8]* @.str639, i32 0, i32 0
  %4312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %4311, i64 9)
  %4313 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %4314 = load %nyx_string*, %nyx_string** %4313
  %4315 = call %nyx_string* @nyx_string_concat(%nyx_string* %4312, %nyx_string* %4314)
  %4316 = call i8* @nyx_string_to_cstr(%nyx_string* %4315)
  call void @nyx_print_string(i8* %4316)
  %4317 = getelementptr [10 x i8], [10 x i8]* @.str640, i32 0, i32 0
  %4318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %4317, i64 9)
  %4319 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %4320 = load %nyx_string*, %nyx_string** %4319
  %4321 = call %nyx_string* @nyx_string_concat(%nyx_string* %4318, %nyx_string* %4320)
  %4322 = call i8* @nyx_string_to_cstr(%nyx_string* %4321)
  call void @nyx_print_string(i8* %4322)
  %4323 = getelementptr [10 x i8], [10 x i8]* @.str641, i32 0, i32 0
  %4324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %4323, i64 9)
  %4325 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %4326 = load %nyx_string*, %nyx_string** %4325
  %4327 = call %nyx_string* @nyx_string_concat(%nyx_string* %4324, %nyx_string* %4326)
  %4328 = call i8* @nyx_string_to_cstr(%nyx_string* %4327)
  call void @nyx_print_string(i8* %4328)
  %4329 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %4330 = load %nyx_string*, %nyx_string** %4329
  %4331 = getelementptr [1 x i8], [1 x i8]* @.str642, i32 0, i32 0
  %4332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %4331, i64 0)
  %4333 = call i1 @nyx_string_equals(%nyx_string* %4330, %nyx_string* %4332)
  %4334 = xor i1 %4333, true
  br i1 %4334, label %then636, label %else637
then636:
  %4335 = getelementptr [10 x i8], [10 x i8]* @.str643, i32 0, i32 0
  %4336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %4335, i64 9)
  %4337 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %4338 = load %nyx_string*, %nyx_string** %4337
  %4339 = call %nyx_string* @nyx_string_concat(%nyx_string* %4336, %nyx_string* %4338)
  %4340 = call i8* @nyx_string_to_cstr(%nyx_string* %4339)
  call void @nyx_print_string(i8* %4340)
  br label %merge638
else637:
  br label %merge638
merge638:
  %4341 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %4342 = load i1, i1* %4341
  br i1 %4342, label %then639, label %else640
then639:
  %4343 = getelementptr [25 x i8], [25 x i8]* @.str644, i32 0, i32 0
  %4344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %4343, i64 24)
  %4345 = call i8* @nyx_string_to_cstr(%nyx_string* %4344)
  call void @nyx_print_string(i8* %4345)
  br label %merge641
else640:
  %4346 = getelementptr [22 x i8], [22 x i8]* @.str645, i32 0, i32 0
  %4347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %4346, i64 21)
  %4348 = call i8* @nyx_string_to_cstr(%nyx_string* %4347)
  call void @nyx_print_string(i8* %4348)
  br label %merge641
merge641:
  ret i64 0
}

define internal %nyx_string* @toolchain_version(
) {
  %4349 = getelementptr [9 x i8], [9 x i8]* @.str646, i32 0, i32 0
  %4350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %4349, i64 8)
  %4351 = call i8* @nyx_string_to_cstr(%nyx_string* %4350)
  %4352 = call %nyx_string* @nyx_getenv(i8* %4351)
  %4353 = alloca %nyx_string*
  store %nyx_string* %4352, %nyx_string** %4353
  %4354 = load %nyx_string*, %nyx_string** %4353
  %4355 = getelementptr [1 x i8], [1 x i8]* @.str647, i32 0, i32 0
  %4356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %4355, i64 0)
  %4357 = call i1 @nyx_string_equals(%nyx_string* %4354, %nyx_string* %4356)
  br i1 %4357, label %then642, label %else643
then642:
  %4358 = getelementptr [5 x i8], [5 x i8]* @.str648, i32 0, i32 0
  %4359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %4358, i64 4)
  %4360 = call i8* @nyx_string_to_cstr(%nyx_string* %4359)
  %4361 = call %nyx_string* @nyx_getenv(i8* %4360)
  %4362 = alloca %nyx_string*
  store %nyx_string* %4361, %nyx_string** %4362
  %4363 = load %nyx_string*, %nyx_string** %4362
  %4364 = getelementptr [1 x i8], [1 x i8]* @.str649, i32 0, i32 0
  %4365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %4364, i64 0)
  %4366 = call i1 @nyx_string_equals(%nyx_string* %4363, %nyx_string* %4365)
  %4367 = xor i1 %4366, true
  br i1 %4367, label %then645, label %else646
then645:
  %4368 = load %nyx_string*, %nyx_string** %4362
  %4369 = getelementptr [6 x i8], [6 x i8]* @.str650, i32 0, i32 0
  %4370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %4369, i64 5)
  %4371 = call %nyx_string* @nyx_string_concat(%nyx_string* %4368, %nyx_string* %4370)
  store %nyx_string* %4371, %nyx_string** %4353
  br label %merge647
else646:
  br label %merge647
merge647:
  br label %merge644
else643:
  br label %merge644
merge644:
  %4372 = load %nyx_string*, %nyx_string** %4353
  %4373 = getelementptr [1 x i8], [1 x i8]* @.str651, i32 0, i32 0
  %4374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %4373, i64 0)
  %4375 = call i1 @nyx_string_equals(%nyx_string* %4372, %nyx_string* %4374)
  %4376 = xor i1 %4375, true
  br i1 %4376, label %then648, label %else649
then648:
  %4377 = load %nyx_string*, %nyx_string** %4353
  %4378 = getelementptr [9 x i8], [9 x i8]* @.str652, i32 0, i32 0
  %4379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %4378, i64 8)
  %4380 = call %nyx_string* @nyx_string_concat(%nyx_string* %4377, %nyx_string* %4379)
  %4381 = call i8* @nyx_string_to_cstr(%nyx_string* %4380)
  %4382 = call i1 @nyx_file_exists(i8* %4381)
  br i1 %4382, label %then651, label %else652
then651:
  %4383 = load %nyx_string*, %nyx_string** %4353
  %4384 = getelementptr [9 x i8], [9 x i8]* @.str653, i32 0, i32 0
  %4385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %4384, i64 8)
  %4386 = call %nyx_string* @nyx_string_concat(%nyx_string* %4383, %nyx_string* %4385)
  %4387 = call i8* @nyx_string_to_cstr(%nyx_string* %4386)
  %4388 = call %nyx_string* @nyx_read_file(i8* %4387)
  %4389 = alloca %nyx_string*
  store %nyx_string* %4388, %nyx_string** %4389
  %4390 = load %nyx_string*, %nyx_string** %4389
  %4391 = call %nyx_string* @nyx_string_trim(%nyx_string* %4390)
  ret %nyx_string* %4391
else652:
  br label %merge653
merge653:
  br label %merge650
else649:
  br label %merge650
merge650:
  %4392 = getelementptr [8 x i8], [8 x i8]* @.str654, i32 0, i32 0
  %4393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %4392, i64 7)
  %4394 = call i8* @nyx_string_to_cstr(%nyx_string* %4393)
  %4395 = call i1 @nyx_file_exists(i8* %4394)
  br i1 %4395, label %then654, label %else655
then654:
  %4396 = getelementptr [8 x i8], [8 x i8]* @.str655, i32 0, i32 0
  %4397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %4396, i64 7)
  %4398 = call i8* @nyx_string_to_cstr(%nyx_string* %4397)
  %4399 = call %nyx_string* @nyx_read_file(i8* %4398)
  %4400 = alloca %nyx_string*
  store %nyx_string* %4399, %nyx_string** %4400
  %4401 = load %nyx_string*, %nyx_string** %4400
  %4402 = call %nyx_string* @nyx_string_trim(%nyx_string* %4401)
  ret %nyx_string* %4402
else655:
  br label %merge656
merge656:
  %4403 = getelementptr [7 x i8], [7 x i8]* @.str656, i32 0, i32 0
  %4404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %4403, i64 6)
  ret %nyx_string* %4404
}

define internal %nyx_string* @report_template(
) {
  %4405 = getelementptr [51 x i8], [51 x i8]* @.str657, i32 0, i32 0
  %4406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %4405, i64 50)
  %4407 = alloca %nyx_string*
  store %nyx_string* %4406, %nyx_string** %4407
  %4408 = load %nyx_string*, %nyx_string** %4407
  %4409 = getelementptr [74 x i8], [74 x i8]* @.str658, i32 0, i32 0
  %4410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %4409, i64 73)
  %4411 = call %nyx_string* @nyx_string_concat(%nyx_string* %4408, %nyx_string* %4410)
  store %nyx_string* %4411, %nyx_string** %4407
  %4412 = load %nyx_string*, %nyx_string** %4407
  %4413 = getelementptr [88 x i8], [88 x i8]* @.str659, i32 0, i32 0
  %4414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %4413, i64 87)
  %4415 = call %nyx_string* @nyx_string_concat(%nyx_string* %4412, %nyx_string* %4414)
  store %nyx_string* %4415, %nyx_string** %4407
  %4416 = load %nyx_string*, %nyx_string** %4407
  %4417 = getelementptr [51 x i8], [51 x i8]* @.str660, i32 0, i32 0
  %4418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %4417, i64 50)
  %4419 = call %nyx_string* @nyx_string_concat(%nyx_string* %4416, %nyx_string* %4418)
  store %nyx_string* %4419, %nyx_string** %4407
  %4420 = load %nyx_string*, %nyx_string** %4407
  %4421 = getelementptr [90 x i8], [90 x i8]* @.str661, i32 0, i32 0
  %4422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %4421, i64 89)
  %4423 = call %nyx_string* @nyx_string_concat(%nyx_string* %4420, %nyx_string* %4422)
  store %nyx_string* %4423, %nyx_string** %4407
  %4424 = load %nyx_string*, %nyx_string** %4407
  %4425 = getelementptr [104 x i8], [104 x i8]* @.str662, i32 0, i32 0
  %4426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %4425, i64 103)
  %4427 = call %nyx_string* @nyx_string_concat(%nyx_string* %4424, %nyx_string* %4426)
  store %nyx_string* %4427, %nyx_string** %4407
  %4428 = load %nyx_string*, %nyx_string** %4407
  %4429 = getelementptr [99 x i8], [99 x i8]* @.str663, i32 0, i32 0
  %4430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %4429, i64 98)
  %4431 = call %nyx_string* @nyx_string_concat(%nyx_string* %4428, %nyx_string* %4430)
  store %nyx_string* %4431, %nyx_string** %4407
  %4432 = load %nyx_string*, %nyx_string** %4407
  %4433 = getelementptr [126 x i8], [126 x i8]* @.str664, i32 0, i32 0
  %4434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %4433, i64 125)
  %4435 = call %nyx_string* @nyx_string_concat(%nyx_string* %4432, %nyx_string* %4434)
  store %nyx_string* %4435, %nyx_string** %4407
  %4436 = load %nyx_string*, %nyx_string** %4407
  %4437 = getelementptr [21 x i8], [21 x i8]* @.str665, i32 0, i32 0
  %4438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %4437, i64 20)
  %4439 = call %nyx_string* @nyx_string_concat(%nyx_string* %4436, %nyx_string* %4438)
  %4440 = call %nyx_string* @toolchain_version()
  %4441 = call %nyx_string* @nyx_string_concat(%nyx_string* %4439, %nyx_string* %4440)
  %4442 = getelementptr [25 x i8], [25 x i8]* @.str666, i32 0, i32 0
  %4443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %4442, i64 24)
  %4444 = call %nyx_string* @nyx_string_concat(%nyx_string* %4441, %nyx_string* %4443)
  store %nyx_string* %4444, %nyx_string** %4407
  %4445 = load %nyx_string*, %nyx_string** %4407
  ret %nyx_string* %4445
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %4446 = getelementptr [12 x i8], [12 x i8]* @.str667, i32 0, i32 0
  %4447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %4446, i64 11)
  %4448 = alloca %nyx_string*
  store %nyx_string* %4447, %nyx_string** %4448
  %4449 = load i1, i1* %do_send.ptr
  %4450 = xor i1 %4449, true
  br i1 %4450, label %then657, label %else658
then657:
  %4451 = load %nyx_string*, %nyx_string** %4448
  %4452 = call i8* @nyx_string_to_cstr(%nyx_string* %4451)
  %4453 = call i1 @nyx_file_exists(i8* %4452)
  br i1 %4453, label %then660, label %else661
then660:
  %4454 = load %nyx_string*, %nyx_string** %4448
  %4455 = call i8* @nyx_string_to_cstr(%nyx_string* %4454)
  %4456 = call %nyx_string* @nyx_read_file(i8* %4455)
  %4457 = alloca %nyx_string*
  store %nyx_string* %4456, %nyx_string** %4457
  %4458 = load %nyx_string*, %nyx_string** %4457
  %4459 = call i64 @nyx_string_byte_length(%nyx_string* %4458)
  %4460 = icmp sge i64 %4459, 40
  br i1 %4460, label %then663, label %else664
then663:
  %4461 = getelementptr [79 x i8], [79 x i8]* @.str668, i32 0, i32 0
  %4462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %4461, i64 78)
  %4463 = call i8* @nyx_string_to_cstr(%nyx_string* %4462)
  call void @nyx_print_string(i8* %4463)
  %4464 = getelementptr [62 x i8], [62 x i8]* @.str669, i32 0, i32 0
  %4465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %4464, i64 61)
  %4466 = call i8* @nyx_string_to_cstr(%nyx_string* %4465)
  call void @nyx_print_string(i8* %4466)
  ret i1 1
else664:
  br label %merge665
merge665:
  br label %merge662
else661:
  br label %merge662
merge662:
  %4467 = load %nyx_string*, %nyx_string** %4448
  %4468 = call %nyx_string* @report_template()
  %4469 = call i8* @nyx_string_to_cstr(%nyx_string* %4467)
  %4470 = call i8* @nyx_string_to_cstr(%nyx_string* %4468)
  %4471 = call i1 @nyx_write_file(i8* %4469, i8* %4470)
  %4472 = getelementptr [79 x i8], [79 x i8]* @.str670, i32 0, i32 0
  %4473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %4472, i64 78)
  %4474 = call i8* @nyx_string_to_cstr(%nyx_string* %4473)
  call void @nyx_print_string(i8* %4474)
  %4475 = getelementptr [71 x i8], [71 x i8]* @.str671, i32 0, i32 0
  %4476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %4475, i64 70)
  %4477 = call i8* @nyx_string_to_cstr(%nyx_string* %4476)
  call void @nyx_print_string(i8* %4477)
  %4478 = getelementptr [53 x i8], [53 x i8]* @.str672, i32 0, i32 0
  %4479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %4478, i64 52)
  %4480 = call i8* @nyx_string_to_cstr(%nyx_string* %4479)
  call void @nyx_print_string(i8* %4480)
  ret i1 1
else658:
  br label %merge659
merge659:
  %4481 = load %nyx_string*, %nyx_string** %4448
  %4482 = alloca %nyx_string*
  store %nyx_string* %4481, %nyx_string** %4482
  %4483 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %4484 = getelementptr [1 x i8], [1 x i8]* @.str673, i32 0, i32 0
  %4485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %4484, i64 0)
  %4486 = call i1 @nyx_string_equals(%nyx_string* %4483, %nyx_string* %4485)
  %4487 = xor i1 %4486, true
  br i1 %4487, label %then666, label %else667
then666:
  %4488 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %4488, %nyx_string** %4482
  br label %merge668
else667:
  br label %merge668
merge668:
  %4489 = load %nyx_string*, %nyx_string** %4482
  %4490 = call i8* @nyx_string_to_cstr(%nyx_string* %4489)
  %4491 = call i1 @nyx_file_exists(i8* %4490)
  %4492 = xor i1 %4491, true
  br i1 %4492, label %then669, label %else670
then669:
  %4493 = getelementptr [18 x i8], [18 x i8]* @.str674, i32 0, i32 0
  %4494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %4493, i64 17)
  %4495 = load %nyx_string*, %nyx_string** %4482
  %4496 = call %nyx_string* @nyx_string_concat(%nyx_string* %4494, %nyx_string* %4495)
  %4497 = getelementptr [56 x i8], [56 x i8]* @.str675, i32 0, i32 0
  %4498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %4497, i64 55)
  %4499 = call %nyx_string* @nyx_string_concat(%nyx_string* %4496, %nyx_string* %4498)
  %4500 = call i8* @nyx_string_to_cstr(%nyx_string* %4499)
  call void @nyx_print_string(i8* %4500)
  ret i1 0
else670:
  br label %merge671
merge671:
  %4501 = load %nyx_string*, %nyx_string** %4482
  %4502 = call i8* @nyx_string_to_cstr(%nyx_string* %4501)
  %4503 = call %nyx_string* @nyx_read_file(i8* %4502)
  %4504 = alloca %nyx_string*
  store %nyx_string* %4503, %nyx_string** %4504
  %4505 = load %nyx_string*, %nyx_string** %4504
  %4506 = call i64 @nyx_string_byte_length(%nyx_string* %4505)
  %4507 = icmp slt i64 %4506, 40
  br i1 %4507, label %then672, label %else673
then672:
  %4508 = getelementptr [67 x i8], [67 x i8]* @.str676, i32 0, i32 0
  %4509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %4508, i64 66)
  %4510 = call i8* @nyx_string_to_cstr(%nyx_string* %4509)
  call void @nyx_print_string(i8* %4510)
  ret i1 0
else673:
  br label %merge674
merge674:
  %4511 = getelementptr [1 x i8], [1 x i8]* @.str677, i32 0, i32 0
  %4512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %4511, i64 0)
  %4513 = alloca %nyx_string*
  store %nyx_string* %4512, %nyx_string** %4513
  %4514 = getelementptr [5 x i8], [5 x i8]* @.str678, i32 0, i32 0
  %4515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %4514, i64 4)
  %4516 = call i8* @nyx_string_to_cstr(%nyx_string* %4515)
  %4517 = call %nyx_string* @nyx_getenv(i8* %4516)
  %4518 = alloca %nyx_string*
  store %nyx_string* %4517, %nyx_string** %4518
  %4519 = load %nyx_string*, %nyx_string** %4518
  %4520 = getelementptr [1 x i8], [1 x i8]* @.str679, i32 0, i32 0
  %4521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %4520, i64 0)
  %4522 = call i1 @nyx_string_equals(%nyx_string* %4519, %nyx_string* %4521)
  %4523 = xor i1 %4522, true
  br i1 %4523, label %then675, label %else676
then675:
  %4524 = load %nyx_string*, %nyx_string** %4518
  %4525 = getelementptr [15 x i8], [15 x i8]* @.str680, i32 0, i32 0
  %4526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %4525, i64 14)
  %4527 = call %nyx_string* @nyx_string_concat(%nyx_string* %4524, %nyx_string* %4526)
  %4528 = call i8* @nyx_string_to_cstr(%nyx_string* %4527)
  %4529 = call i1 @nyx_file_exists(i8* %4528)
  br i1 %4529, label %then678, label %else679
then678:
  %4530 = load %nyx_string*, %nyx_string** %4518
  %4531 = getelementptr [15 x i8], [15 x i8]* @.str681, i32 0, i32 0
  %4532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %4531, i64 14)
  %4533 = call %nyx_string* @nyx_string_concat(%nyx_string* %4530, %nyx_string* %4532)
  %4534 = call i8* @nyx_string_to_cstr(%nyx_string* %4533)
  %4535 = call %nyx_string* @nyx_read_file(i8* %4534)
  %4536 = alloca %nyx_string*
  store %nyx_string* %4535, %nyx_string** %4536
  %4537 = load %nyx_string*, %nyx_string** %4536
  %4538 = call %nyx_string* @nyx_string_trim(%nyx_string* %4537)
  store %nyx_string* %4538, %nyx_string** %4513
  br label %merge680
else679:
  br label %merge680
merge680:
  br label %merge677
else676:
  br label %merge677
merge677:
  %4539 = load %nyx_string*, %nyx_string** %4513
  %4540 = getelementptr [1 x i8], [1 x i8]* @.str682, i32 0, i32 0
  %4541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %4540, i64 0)
  %4542 = call i1 @nyx_string_equals(%nyx_string* %4539, %nyx_string* %4541)
  br i1 %4542, label %then681, label %else682
then681:
  %4543 = getelementptr [77 x i8], [77 x i8]* @.str683, i32 0, i32 0
  %4544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %4543, i64 76)
  %4545 = call i8* @nyx_string_to_cstr(%nyx_string* %4544)
  call void @nyx_print_string(i8* %4545)
  br label %merge683
else682:
  br label %merge683
merge683:
  %4546 = getelementptr [10 x i8], [10 x i8]* @.str684, i32 0, i32 0
  %4547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %4546, i64 9)
  %4548 = load %nyx_string*, %nyx_string** %4513
  %4549 = call i64 @kv_connect_auth(%nyx_string* %4547, i64 6380, %nyx_string* %4548)
  %4550 = alloca i64
  store i64 %4549, i64* %4550
  %4551 = load i64, i64* %4550
  %4552 = icmp slt i64 %4551, 0
  br i1 %4552, label %then684, label %else685
then684:
  %4553 = getelementptr [54 x i8], [54 x i8]* @.str685, i32 0, i32 0
  %4554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %4553, i64 53)
  %4555 = call i8* @nyx_string_to_cstr(%nyx_string* %4554)
  call void @nyx_print_string(i8* %4555)
  %4556 = getelementptr [22 x i8], [22 x i8]* @.str686, i32 0, i32 0
  %4557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %4556, i64 21)
  %4558 = load %nyx_string*, %nyx_string** %4482
  %4559 = call %nyx_string* @nyx_string_concat(%nyx_string* %4557, %nyx_string* %4558)
  %4560 = getelementptr [28 x i8], [28 x i8]* @.str687, i32 0, i32 0
  %4561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %4560, i64 27)
  %4562 = call %nyx_string* @nyx_string_concat(%nyx_string* %4559, %nyx_string* %4561)
  %4563 = call i8* @nyx_string_to_cstr(%nyx_string* %4562)
  call void @nyx_print_string(i8* %4563)
  %4564 = getelementptr [44 x i8], [44 x i8]* @.str688, i32 0, i32 0
  %4565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %4564, i64 43)
  %4566 = call i8* @nyx_string_to_cstr(%nyx_string* %4565)
  call void @nyx_print_string(i8* %4566)
  ret i1 0
else685:
  br label %merge686
merge686:
  %4567 = getelementptr [5 x i8], [5 x i8]* @.str689, i32 0, i32 0
  %4568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %4567, i64 4)
  %4569 = load %nyx_string*, %nyx_string** %4504
  %4570 = call %nyx_string* @std_base64__base64_encode(%nyx_string* %4569)
  %4571 = call %nyx_string* @nyx_string_concat(%nyx_string* %4568, %nyx_string* %4570)
  %4572 = alloca %nyx_string*
  store %nyx_string* %4571, %nyx_string** %4572
  %4573 = load i64, i64* %4550
  %4574 = getelementptr [11 x i8], [11 x i8]* @.str690, i32 0, i32 0
  %4575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %4574, i64 10)
  %4576 = load %nyx_string*, %nyx_string** %4572
  %4577 = call i64 @kv_rpush(i64 %4573, %nyx_string* %4575, %nyx_string* %4576)
  %4578 = alloca i64
  store i64 %4577, i64* %4578
  %4579 = load i64, i64* %4550
  %4580 = call i64 @kv_close(i64 %4579)
  %4581 = load i64, i64* %4578
  %4582 = icmp sle i64 %4581, 0
  br i1 %4582, label %then687, label %else688
then687:
  %4583 = getelementptr [37 x i8], [37 x i8]* @.str691, i32 0, i32 0
  %4584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %4583, i64 36)
  %4585 = call i8* @nyx_string_to_cstr(%nyx_string* %4584)
  call void @nyx_print_string(i8* %4585)
  ret i1 0
else688:
  br label %merge689
merge689:
  %4586 = getelementptr [55 x i8], [55 x i8]* @.str692, i32 0, i32 0
  %4587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %4586, i64 54)
  %4588 = load i64, i64* %4578
  %4589 = call %nyx_string* @nyx_string_from_int(i64 %4588)
  %4590 = call %nyx_string* @nyx_string_concat(%nyx_string* %4587, %nyx_string* %4589)
  %4591 = getelementptr [15 x i8], [15 x i8]* @.str693, i32 0, i32 0
  %4592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %4591, i64 14)
  %4593 = call %nyx_string* @nyx_string_concat(%nyx_string* %4590, %nyx_string* %4592)
  %4594 = call i8* @nyx_string_to_cstr(%nyx_string* %4593)
  call void @nyx_print_string(i8* %4594)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %4595 = getelementptr [9 x i8], [9 x i8]* @.str694, i32 0, i32 0
  %4596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %4595, i64 8)
  %4597 = call i8* @nyx_string_to_cstr(%nyx_string* %4596)
  %4598 = call %nyx_string* @nyx_getenv(i8* %4597)
  %4599 = alloca %nyx_string*
  store %nyx_string* %4598, %nyx_string** %4599
  %4600 = load %nyx_string*, %nyx_string** %4599
  %4601 = getelementptr [1 x i8], [1 x i8]* @.str695, i32 0, i32 0
  %4602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %4601, i64 0)
  %4603 = call i1 @nyx_string_equals(%nyx_string* %4600, %nyx_string* %4602)
  br i1 %4603, label %then690, label %else691
then690:
  %4604 = getelementptr [5 x i8], [5 x i8]* @.str696, i32 0, i32 0
  %4605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %4604, i64 4)
  %4606 = call i8* @nyx_string_to_cstr(%nyx_string* %4605)
  %4607 = call %nyx_string* @nyx_getenv(i8* %4606)
  %4608 = alloca %nyx_string*
  store %nyx_string* %4607, %nyx_string** %4608
  %4609 = load %nyx_string*, %nyx_string** %4608
  %4610 = getelementptr [6 x i8], [6 x i8]* @.str697, i32 0, i32 0
  %4611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %4610, i64 5)
  %4612 = call %nyx_string* @nyx_string_concat(%nyx_string* %4609, %nyx_string* %4611)
  %4613 = alloca %nyx_string*
  store %nyx_string* %4612, %nyx_string** %4613
  %4614 = alloca i1
  store i1 false, i1* %4614
  %4615 = load %nyx_string*, %nyx_string** %4608
  %4616 = getelementptr [1 x i8], [1 x i8]* @.str698, i32 0, i32 0
  %4617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %4616, i64 0)
  %4618 = call i1 @nyx_string_equals(%nyx_string* %4615, %nyx_string* %4617)
  %4619 = xor i1 %4618, true
  br i1 %4619, label %sc_and_rhs693, label %sc_and_end694
sc_and_rhs693:
  %4620 = load %nyx_string*, %nyx_string** %4613
  %4621 = getelementptr [5 x i8], [5 x i8]* @.str699, i32 0, i32 0
  %4622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %4621, i64 4)
  %4623 = call %nyx_string* @nyx_string_concat(%nyx_string* %4620, %nyx_string* %4622)
  %4624 = call i8* @nyx_string_to_cstr(%nyx_string* %4623)
  %4625 = call i1 @nyx_file_exists(i8* %4624)
  store i1 %4625, i1* %4614
  br label %sc_and_end694
sc_and_end694:
  %4626 = load i1, i1* %4614
  br i1 %4626, label %then695, label %else696
then695:
  %4627 = load %nyx_string*, %nyx_string** %4613
  store %nyx_string* %4627, %nyx_string** %4599
  br label %merge697
else696:
  br label %merge697
merge697:
  br label %merge692
else691:
  br label %merge692
merge692:
  %4628 = load %nyx_string*, %nyx_string** %4599
  %4629 = getelementptr [1 x i8], [1 x i8]* @.str700, i32 0, i32 0
  %4630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %4629, i64 0)
  %4631 = call i1 @nyx_string_equals(%nyx_string* %4628, %nyx_string* %4630)
  br i1 %4631, label %then698, label %else699
then698:
  %4632 = getelementptr [4 x i8], [4 x i8]* @.str701, i32 0, i32 0
  %4633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %4632, i64 3)
  %4634 = call i8* @nyx_string_to_cstr(%nyx_string* %4633)
  %4635 = call i1 @nyx_file_exists(i8* %4634)
  br i1 %4635, label %then701, label %else702
then701:
  %4636 = getelementptr [2 x i8], [2 x i8]* @.str702, i32 0, i32 0
  %4637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %4636, i64 1)
  store %nyx_string* %4637, %nyx_string** %4599
  br label %merge703
else702:
  br label %merge703
merge703:
  br label %merge700
else699:
  br label %merge700
merge700:
  %4638 = load %nyx_string*, %nyx_string** %4599
  %4639 = getelementptr [1 x i8], [1 x i8]* @.str703, i32 0, i32 0
  %4640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %4639, i64 0)
  %4641 = call i1 @nyx_string_equals(%nyx_string* %4638, %nyx_string* %4640)
  br i1 %4641, label %then704, label %else705
then704:
  %4642 = getelementptr [1 x i8], [1 x i8]* @.str704, i32 0, i32 0
  %4643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %4642, i64 0)
  ret %nyx_string* %4643
else705:
  br label %merge706
merge706:
  %4644 = load %nyx_string*, %nyx_string** %4599
  %4645 = getelementptr [5 x i8], [5 x i8]* @.str705, i32 0, i32 0
  %4646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %4645, i64 4)
  %4647 = call %nyx_string* @nyx_string_concat(%nyx_string* %4644, %nyx_string* %4646)
  ret %nyx_string* %4647
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %4648 = alloca i1
  store i1 true, i1* %4648
  %4649 = alloca i1
  store i1 true, i1* %4649
  %4650 = alloca i1
  store i1 true, i1* %4650
  %4651 = load %nyx_string*, %nyx_string** %name.ptr
  %4652 = getelementptr [5 x i8], [5 x i8]* @.str706, i32 0, i32 0
  %4653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %4652, i64 4)
  %4654 = call i1 @nyx_string_equals(%nyx_string* %4651, %nyx_string* %4653)
  br i1 %4654, label %sc_or_end708, label %sc_or_rhs707
sc_or_rhs707:
  %4655 = load %nyx_string*, %nyx_string** %name.ptr
  %4656 = getelementptr [4 x i8], [4 x i8]* @.str707, i32 0, i32 0
  %4657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %4656, i64 3)
  %4658 = call i1 @nyx_string_equals(%nyx_string* %4655, %nyx_string* %4657)
  store i1 %4658, i1* %4650
  br label %sc_or_end708
sc_or_end708:
  %4659 = load i1, i1* %4650
  br i1 %4659, label %sc_or_end710, label %sc_or_rhs709
sc_or_rhs709:
  %4660 = load %nyx_string*, %nyx_string** %name.ptr
  %4661 = getelementptr [10 x i8], [10 x i8]* @.str708, i32 0, i32 0
  %4662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %4661, i64 9)
  %4663 = call i1 @nyx_string_equals(%nyx_string* %4660, %nyx_string* %4662)
  store i1 %4663, i1* %4649
  br label %sc_or_end710
sc_or_end710:
  %4664 = load i1, i1* %4649
  br i1 %4664, label %sc_or_end712, label %sc_or_rhs711
sc_or_rhs711:
  %4665 = load %nyx_string*, %nyx_string** %name.ptr
  %4666 = getelementptr [7 x i8], [7 x i8]* @.str709, i32 0, i32 0
  %4667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %4666, i64 6)
  %4668 = call i1 @nyx_string_equals(%nyx_string* %4665, %nyx_string* %4667)
  store i1 %4668, i1* %4648
  br label %sc_or_end712
sc_or_end712:
  %4669 = load i1, i1* %4648
  br i1 %4669, label %then713, label %else714
then713:
  %4670 = getelementptr [11 x i8], [11 x i8]* @.str710, i32 0, i32 0
  %4671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %4670, i64 10)
  ret %nyx_string* %4671
else714:
  br label %merge715
merge715:
  %4672 = alloca i1
  store i1 true, i1* %4672
  %4673 = alloca i1
  store i1 true, i1* %4673
  %4674 = load %nyx_string*, %nyx_string** %name.ptr
  %4675 = getelementptr [7 x i8], [7 x i8]* @.str711, i32 0, i32 0
  %4676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %4675, i64 6)
  %4677 = call i1 @nyx_string_equals(%nyx_string* %4674, %nyx_string* %4676)
  br i1 %4677, label %sc_or_end717, label %sc_or_rhs716
sc_or_rhs716:
  %4678 = load %nyx_string*, %nyx_string** %name.ptr
  %4679 = getelementptr [3 x i8], [3 x i8]* @.str712, i32 0, i32 0
  %4680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %4679, i64 2)
  %4681 = call i1 @nyx_string_equals(%nyx_string* %4678, %nyx_string* %4680)
  store i1 %4681, i1* %4673
  br label %sc_or_end717
sc_or_end717:
  %4682 = load i1, i1* %4673
  br i1 %4682, label %sc_or_end719, label %sc_or_rhs718
sc_or_rhs718:
  %4683 = load %nyx_string*, %nyx_string** %name.ptr
  %4684 = getelementptr [9 x i8], [9 x i8]* @.str713, i32 0, i32 0
  %4685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %4684, i64 8)
  %4686 = call i1 @nyx_string_equals(%nyx_string* %4683, %nyx_string* %4685)
  store i1 %4686, i1* %4672
  br label %sc_or_end719
sc_or_end719:
  %4687 = load i1, i1* %4672
  br i1 %4687, label %then720, label %else721
then720:
  %4688 = getelementptr [20 x i8], [20 x i8]* @.str714, i32 0, i32 0
  %4689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %4688, i64 19)
  ret %nyx_string* %4689
else721:
  br label %merge722
merge722:
  %4690 = alloca i1
  store i1 true, i1* %4690
  %4691 = alloca i1
  store i1 true, i1* %4691
  %4692 = alloca i1
  store i1 true, i1* %4692
  %4693 = alloca i1
  store i1 true, i1* %4693
  %4694 = alloca i1
  store i1 true, i1* %4694
  %4695 = load %nyx_string*, %nyx_string** %name.ptr
  %4696 = getelementptr [5 x i8], [5 x i8]* @.str715, i32 0, i32 0
  %4697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %4696, i64 4)
  %4698 = call i1 @nyx_string_equals(%nyx_string* %4695, %nyx_string* %4697)
  br i1 %4698, label %sc_or_end724, label %sc_or_rhs723
sc_or_rhs723:
  %4699 = load %nyx_string*, %nyx_string** %name.ptr
  %4700 = getelementptr [8 x i8], [8 x i8]* @.str716, i32 0, i32 0
  %4701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %4700, i64 7)
  %4702 = call i1 @nyx_string_equals(%nyx_string* %4699, %nyx_string* %4701)
  store i1 %4702, i1* %4694
  br label %sc_or_end724
sc_or_end724:
  %4703 = load i1, i1* %4694
  br i1 %4703, label %sc_or_end726, label %sc_or_rhs725
sc_or_rhs725:
  %4704 = load %nyx_string*, %nyx_string** %name.ptr
  %4705 = getelementptr [5 x i8], [5 x i8]* @.str717, i32 0, i32 0
  %4706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %4705, i64 4)
  %4707 = call i1 @nyx_string_equals(%nyx_string* %4704, %nyx_string* %4706)
  store i1 %4707, i1* %4693
  br label %sc_or_end726
sc_or_end726:
  %4708 = load i1, i1* %4693
  br i1 %4708, label %sc_or_end728, label %sc_or_rhs727
sc_or_rhs727:
  %4709 = load %nyx_string*, %nyx_string** %name.ptr
  %4710 = getelementptr [4 x i8], [4 x i8]* @.str718, i32 0, i32 0
  %4711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %4710, i64 3)
  %4712 = call i1 @nyx_string_equals(%nyx_string* %4709, %nyx_string* %4711)
  store i1 %4712, i1* %4692
  br label %sc_or_end728
sc_or_end728:
  %4713 = load i1, i1* %4692
  br i1 %4713, label %sc_or_end730, label %sc_or_rhs729
sc_or_rhs729:
  %4714 = load %nyx_string*, %nyx_string** %name.ptr
  %4715 = getelementptr [7 x i8], [7 x i8]* @.str719, i32 0, i32 0
  %4716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %4715, i64 6)
  %4717 = call i1 @nyx_string_equals(%nyx_string* %4714, %nyx_string* %4716)
  store i1 %4717, i1* %4691
  br label %sc_or_end730
sc_or_end730:
  %4718 = load i1, i1* %4691
  br i1 %4718, label %sc_or_end732, label %sc_or_rhs731
sc_or_rhs731:
  %4719 = load %nyx_string*, %nyx_string** %name.ptr
  %4720 = getelementptr [9 x i8], [9 x i8]* @.str720, i32 0, i32 0
  %4721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %4720, i64 8)
  %4722 = call i1 @nyx_string_equals(%nyx_string* %4719, %nyx_string* %4721)
  store i1 %4722, i1* %4690
  br label %sc_or_end732
sc_or_end732:
  %4723 = load i1, i1* %4690
  br i1 %4723, label %then733, label %else734
then733:
  %4724 = getelementptr [23 x i8], [23 x i8]* @.str721, i32 0, i32 0
  %4725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %4724, i64 22)
  ret %nyx_string* %4725
else734:
  br label %merge735
merge735:
  %4726 = alloca i1
  store i1 true, i1* %4726
  %4727 = alloca i1
  store i1 true, i1* %4727
  %4728 = alloca i1
  store i1 true, i1* %4728
  %4729 = load %nyx_string*, %nyx_string** %name.ptr
  %4730 = getelementptr [3 x i8], [3 x i8]* @.str722, i32 0, i32 0
  %4731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %4730, i64 2)
  %4732 = call i1 @nyx_string_equals(%nyx_string* %4729, %nyx_string* %4731)
  br i1 %4732, label %sc_or_end737, label %sc_or_rhs736
sc_or_rhs736:
  %4733 = load %nyx_string*, %nyx_string** %name.ptr
  %4734 = getelementptr [5 x i8], [5 x i8]* @.str723, i32 0, i32 0
  %4735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %4734, i64 4)
  %4736 = call i1 @nyx_string_equals(%nyx_string* %4733, %nyx_string* %4735)
  store i1 %4736, i1* %4728
  br label %sc_or_end737
sc_or_end737:
  %4737 = load i1, i1* %4728
  br i1 %4737, label %sc_or_end739, label %sc_or_rhs738
sc_or_rhs738:
  %4738 = load %nyx_string*, %nyx_string** %name.ptr
  %4739 = getelementptr [3 x i8], [3 x i8]* @.str724, i32 0, i32 0
  %4740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %4739, i64 2)
  %4741 = call i1 @nyx_string_equals(%nyx_string* %4738, %nyx_string* %4740)
  store i1 %4741, i1* %4727
  br label %sc_or_end739
sc_or_end739:
  %4742 = load i1, i1* %4727
  br i1 %4742, label %sc_or_end741, label %sc_or_rhs740
sc_or_rhs740:
  %4743 = load %nyx_string*, %nyx_string** %name.ptr
  %4744 = getelementptr [5 x i8], [5 x i8]* @.str725, i32 0, i32 0
  %4745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %4744, i64 4)
  %4746 = call i1 @nyx_string_equals(%nyx_string* %4743, %nyx_string* %4745)
  store i1 %4746, i1* %4726
  br label %sc_or_end741
sc_or_end741:
  %4747 = load i1, i1* %4726
  br i1 %4747, label %then742, label %else743
then742:
  %4748 = getelementptr [15 x i8], [15 x i8]* @.str726, i32 0, i32 0
  %4749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %4748, i64 14)
  ret %nyx_string* %4749
else743:
  br label %merge744
merge744:
  %4750 = alloca i1
  store i1 true, i1* %4750
  %4751 = alloca i1
  store i1 true, i1* %4751
  %4752 = alloca i1
  store i1 true, i1* %4752
  %4753 = alloca i1
  store i1 true, i1* %4753
  %4754 = alloca i1
  store i1 true, i1* %4754
  %4755 = load %nyx_string*, %nyx_string** %name.ptr
  %4756 = getelementptr [4 x i8], [4 x i8]* @.str727, i32 0, i32 0
  %4757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %4756, i64 3)
  %4758 = call i1 @nyx_string_equals(%nyx_string* %4755, %nyx_string* %4757)
  br i1 %4758, label %sc_or_end746, label %sc_or_rhs745
sc_or_rhs745:
  %4759 = load %nyx_string*, %nyx_string** %name.ptr
  %4760 = getelementptr [4 x i8], [4 x i8]* @.str728, i32 0, i32 0
  %4761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %4760, i64 3)
  %4762 = call i1 @nyx_string_equals(%nyx_string* %4759, %nyx_string* %4761)
  store i1 %4762, i1* %4754
  br label %sc_or_end746
sc_or_end746:
  %4763 = load i1, i1* %4754
  br i1 %4763, label %sc_or_end748, label %sc_or_rhs747
sc_or_rhs747:
  %4764 = load %nyx_string*, %nyx_string** %name.ptr
  %4765 = getelementptr [4 x i8], [4 x i8]* @.str729, i32 0, i32 0
  %4766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %4765, i64 3)
  %4767 = call i1 @nyx_string_equals(%nyx_string* %4764, %nyx_string* %4766)
  store i1 %4767, i1* %4753
  br label %sc_or_end748
sc_or_end748:
  %4768 = load i1, i1* %4753
  br i1 %4768, label %sc_or_end750, label %sc_or_rhs749
sc_or_rhs749:
  %4769 = load %nyx_string*, %nyx_string** %name.ptr
  %4770 = getelementptr [6 x i8], [6 x i8]* @.str730, i32 0, i32 0
  %4771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %4770, i64 5)
  %4772 = call i1 @nyx_string_equals(%nyx_string* %4769, %nyx_string* %4771)
  store i1 %4772, i1* %4752
  br label %sc_or_end750
sc_or_end750:
  %4773 = load i1, i1* %4752
  br i1 %4773, label %sc_or_end752, label %sc_or_rhs751
sc_or_rhs751:
  %4774 = load %nyx_string*, %nyx_string** %name.ptr
  %4775 = getelementptr [4 x i8], [4 x i8]* @.str731, i32 0, i32 0
  %4776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %4775, i64 3)
  %4777 = call i1 @nyx_string_equals(%nyx_string* %4774, %nyx_string* %4776)
  store i1 %4777, i1* %4751
  br label %sc_or_end752
sc_or_end752:
  %4778 = load i1, i1* %4751
  br i1 %4778, label %sc_or_end754, label %sc_or_rhs753
sc_or_rhs753:
  %4779 = load %nyx_string*, %nyx_string** %name.ptr
  %4780 = getelementptr [4 x i8], [4 x i8]* @.str732, i32 0, i32 0
  %4781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %4780, i64 3)
  %4782 = call i1 @nyx_string_equals(%nyx_string* %4779, %nyx_string* %4781)
  store i1 %4782, i1* %4750
  br label %sc_or_end754
sc_or_end754:
  %4783 = load i1, i1* %4750
  br i1 %4783, label %then755, label %else756
then755:
  %4784 = getelementptr [4 x i8], [4 x i8]* @.str733, i32 0, i32 0
  %4785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %4784, i64 3)
  ret %nyx_string* %4785
else756:
  br label %merge757
merge757:
  %4786 = alloca i1
  store i1 true, i1* %4786
  %4787 = alloca i1
  store i1 true, i1* %4787
  %4788 = alloca i1
  store i1 true, i1* %4788
  %4789 = alloca i1
  store i1 true, i1* %4789
  %4790 = load %nyx_string*, %nyx_string** %name.ptr
  %4791 = getelementptr [7 x i8], [7 x i8]* @.str734, i32 0, i32 0
  %4792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %4791, i64 6)
  %4793 = call i1 @nyx_string_equals(%nyx_string* %4790, %nyx_string* %4792)
  br i1 %4793, label %sc_or_end759, label %sc_or_rhs758
sc_or_rhs758:
  %4794 = load %nyx_string*, %nyx_string** %name.ptr
  %4795 = getelementptr [8 x i8], [8 x i8]* @.str735, i32 0, i32 0
  %4796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %4795, i64 7)
  %4797 = call i1 @nyx_string_equals(%nyx_string* %4794, %nyx_string* %4796)
  store i1 %4797, i1* %4789
  br label %sc_or_end759
sc_or_end759:
  %4798 = load i1, i1* %4789
  br i1 %4798, label %sc_or_end761, label %sc_or_rhs760
sc_or_rhs760:
  %4799 = load %nyx_string*, %nyx_string** %name.ptr
  %4800 = getelementptr [10 x i8], [10 x i8]* @.str736, i32 0, i32 0
  %4801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %4800, i64 9)
  %4802 = call i1 @nyx_string_equals(%nyx_string* %4799, %nyx_string* %4801)
  store i1 %4802, i1* %4788
  br label %sc_or_end761
sc_or_end761:
  %4803 = load i1, i1* %4788
  br i1 %4803, label %sc_or_end763, label %sc_or_rhs762
sc_or_rhs762:
  %4804 = load %nyx_string*, %nyx_string** %name.ptr
  %4805 = getelementptr [5 x i8], [5 x i8]* @.str737, i32 0, i32 0
  %4806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %4805, i64 4)
  %4807 = call i1 @nyx_string_equals(%nyx_string* %4804, %nyx_string* %4806)
  store i1 %4807, i1* %4787
  br label %sc_or_end763
sc_or_end763:
  %4808 = load i1, i1* %4787
  br i1 %4808, label %sc_or_end765, label %sc_or_rhs764
sc_or_rhs764:
  %4809 = load %nyx_string*, %nyx_string** %name.ptr
  %4810 = getelementptr [6 x i8], [6 x i8]* @.str738, i32 0, i32 0
  %4811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %4810, i64 5)
  %4812 = call i1 @nyx_string_equals(%nyx_string* %4809, %nyx_string* %4811)
  store i1 %4812, i1* %4786
  br label %sc_or_end765
sc_or_end765:
  %4813 = load i1, i1* %4786
  br i1 %4813, label %then766, label %else767
then766:
  %4814 = getelementptr [13 x i8], [13 x i8]* @.str739, i32 0, i32 0
  %4815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %4814, i64 12)
  ret %nyx_string* %4815
else767:
  br label %merge768
merge768:
  %4816 = alloca i1
  store i1 true, i1* %4816
  %4817 = alloca i1
  store i1 true, i1* %4817
  %4818 = alloca i1
  store i1 true, i1* %4818
  %4819 = alloca i1
  store i1 true, i1* %4819
  %4820 = load %nyx_string*, %nyx_string** %name.ptr
  %4821 = getelementptr [7 x i8], [7 x i8]* @.str740, i32 0, i32 0
  %4822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %4821, i64 6)
  %4823 = call i1 @nyx_string_equals(%nyx_string* %4820, %nyx_string* %4822)
  br i1 %4823, label %sc_or_end770, label %sc_or_rhs769
sc_or_rhs769:
  %4824 = load %nyx_string*, %nyx_string** %name.ptr
  %4825 = getelementptr [4 x i8], [4 x i8]* @.str741, i32 0, i32 0
  %4826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %4825, i64 3)
  %4827 = call i1 @nyx_string_equals(%nyx_string* %4824, %nyx_string* %4826)
  store i1 %4827, i1* %4819
  br label %sc_or_end770
sc_or_end770:
  %4828 = load i1, i1* %4819
  br i1 %4828, label %sc_or_end772, label %sc_or_rhs771
sc_or_rhs771:
  %4829 = load %nyx_string*, %nyx_string** %name.ptr
  %4830 = getelementptr [5 x i8], [5 x i8]* @.str742, i32 0, i32 0
  %4831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %4830, i64 4)
  %4832 = call i1 @nyx_string_equals(%nyx_string* %4829, %nyx_string* %4831)
  store i1 %4832, i1* %4818
  br label %sc_or_end772
sc_or_end772:
  %4833 = load i1, i1* %4818
  br i1 %4833, label %sc_or_end774, label %sc_or_rhs773
sc_or_rhs773:
  %4834 = load %nyx_string*, %nyx_string** %name.ptr
  %4835 = getelementptr [7 x i8], [7 x i8]* @.str743, i32 0, i32 0
  %4836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %4835, i64 6)
  %4837 = call i1 @nyx_string_equals(%nyx_string* %4834, %nyx_string* %4836)
  store i1 %4837, i1* %4817
  br label %sc_or_end774
sc_or_end774:
  %4838 = load i1, i1* %4817
  br i1 %4838, label %sc_or_end776, label %sc_or_rhs775
sc_or_rhs775:
  %4839 = load %nyx_string*, %nyx_string** %name.ptr
  %4840 = getelementptr [5 x i8], [5 x i8]* @.str744, i32 0, i32 0
  %4841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %4840, i64 4)
  %4842 = call i1 @nyx_string_equals(%nyx_string* %4839, %nyx_string* %4841)
  store i1 %4842, i1* %4816
  br label %sc_or_end776
sc_or_end776:
  %4843 = load i1, i1* %4816
  br i1 %4843, label %then777, label %else778
then777:
  %4844 = getelementptr [19 x i8], [19 x i8]* @.str745, i32 0, i32 0
  %4845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %4844, i64 18)
  ret %nyx_string* %4845
else778:
  br label %merge779
merge779:
  %4846 = alloca i1
  store i1 true, i1* %4846
  %4847 = load %nyx_string*, %nyx_string** %name.ptr
  %4848 = getelementptr [5 x i8], [5 x i8]* @.str746, i32 0, i32 0
  %4849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %4848, i64 4)
  %4850 = call i1 @nyx_string_equals(%nyx_string* %4847, %nyx_string* %4849)
  br i1 %4850, label %sc_or_end781, label %sc_or_rhs780
sc_or_rhs780:
  %4851 = load %nyx_string*, %nyx_string** %name.ptr
  %4852 = getelementptr [9 x i8], [9 x i8]* @.str747, i32 0, i32 0
  %4853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %4852, i64 8)
  %4854 = call i1 @nyx_string_equals(%nyx_string* %4851, %nyx_string* %4853)
  store i1 %4854, i1* %4846
  br label %sc_or_end781
sc_or_end781:
  %4855 = load i1, i1* %4846
  br i1 %4855, label %then782, label %else783
then782:
  %4856 = getelementptr [7 x i8], [7 x i8]* @.str748, i32 0, i32 0
  %4857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %4856, i64 6)
  ret %nyx_string* %4857
else783:
  br label %merge784
merge784:
  %4858 = alloca i1
  store i1 true, i1* %4858
  %4859 = alloca i1
  store i1 true, i1* %4859
  %4860 = alloca i1
  store i1 true, i1* %4860
  %4861 = load %nyx_string*, %nyx_string** %name.ptr
  %4862 = getelementptr [7 x i8], [7 x i8]* @.str749, i32 0, i32 0
  %4863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %4862, i64 6)
  %4864 = call i1 @nyx_string_equals(%nyx_string* %4861, %nyx_string* %4863)
  br i1 %4864, label %sc_or_end786, label %sc_or_rhs785
sc_or_rhs785:
  %4865 = load %nyx_string*, %nyx_string** %name.ptr
  %4866 = getelementptr [8 x i8], [8 x i8]* @.str750, i32 0, i32 0
  %4867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %4866, i64 7)
  %4868 = call i1 @nyx_string_equals(%nyx_string* %4865, %nyx_string* %4867)
  store i1 %4868, i1* %4860
  br label %sc_or_end786
sc_or_end786:
  %4869 = load i1, i1* %4860
  br i1 %4869, label %sc_or_end788, label %sc_or_rhs787
sc_or_rhs787:
  %4870 = load %nyx_string*, %nyx_string** %name.ptr
  %4871 = getelementptr [14 x i8], [14 x i8]* @.str751, i32 0, i32 0
  %4872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %4871, i64 13)
  %4873 = call i1 @nyx_string_equals(%nyx_string* %4870, %nyx_string* %4872)
  store i1 %4873, i1* %4859
  br label %sc_or_end788
sc_or_end788:
  %4874 = load i1, i1* %4859
  br i1 %4874, label %sc_or_end790, label %sc_or_rhs789
sc_or_rhs789:
  %4875 = load %nyx_string*, %nyx_string** %name.ptr
  %4876 = getelementptr [6 x i8], [6 x i8]* @.str752, i32 0, i32 0
  %4877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %4876, i64 5)
  %4878 = call i1 @nyx_string_equals(%nyx_string* %4875, %nyx_string* %4877)
  store i1 %4878, i1* %4858
  br label %sc_or_end790
sc_or_end790:
  %4879 = load i1, i1* %4858
  br i1 %4879, label %then791, label %else792
then791:
  %4880 = getelementptr [16 x i8], [16 x i8]* @.str753, i32 0, i32 0
  %4881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %4880, i64 15)
  ret %nyx_string* %4881
else792:
  br label %merge793
merge793:
  %4882 = alloca i1
  store i1 true, i1* %4882
  %4883 = alloca i1
  store i1 true, i1* %4883
  %4884 = alloca i1
  store i1 true, i1* %4884
  %4885 = alloca i1
  store i1 true, i1* %4885
  %4886 = alloca i1
  store i1 true, i1* %4886
  %4887 = alloca i1
  store i1 true, i1* %4887
  %4888 = alloca i1
  store i1 true, i1* %4888
  %4889 = load %nyx_string*, %nyx_string** %name.ptr
  %4890 = getelementptr [4 x i8], [4 x i8]* @.str754, i32 0, i32 0
  %4891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %4890, i64 3)
  %4892 = call i1 @nyx_string_equals(%nyx_string* %4889, %nyx_string* %4891)
  br i1 %4892, label %sc_or_end795, label %sc_or_rhs794
sc_or_rhs794:
  %4893 = load %nyx_string*, %nyx_string** %name.ptr
  %4894 = getelementptr [6 x i8], [6 x i8]* @.str755, i32 0, i32 0
  %4895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %4894, i64 5)
  %4896 = call i1 @nyx_string_equals(%nyx_string* %4893, %nyx_string* %4895)
  store i1 %4896, i1* %4888
  br label %sc_or_end795
sc_or_end795:
  %4897 = load i1, i1* %4888
  br i1 %4897, label %sc_or_end797, label %sc_or_rhs796
sc_or_rhs796:
  %4898 = load %nyx_string*, %nyx_string** %name.ptr
  %4899 = getelementptr [11 x i8], [11 x i8]* @.str756, i32 0, i32 0
  %4900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %4899, i64 10)
  %4901 = call i1 @nyx_string_equals(%nyx_string* %4898, %nyx_string* %4900)
  store i1 %4901, i1* %4887
  br label %sc_or_end797
sc_or_end797:
  %4902 = load i1, i1* %4887
  br i1 %4902, label %sc_or_end799, label %sc_or_rhs798
sc_or_rhs798:
  %4903 = load %nyx_string*, %nyx_string** %name.ptr
  %4904 = getelementptr [6 x i8], [6 x i8]* @.str757, i32 0, i32 0
  %4905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %4904, i64 5)
  %4906 = call i1 @nyx_string_equals(%nyx_string* %4903, %nyx_string* %4905)
  store i1 %4906, i1* %4886
  br label %sc_or_end799
sc_or_end799:
  %4907 = load i1, i1* %4886
  br i1 %4907, label %sc_or_end801, label %sc_or_rhs800
sc_or_rhs800:
  %4908 = load %nyx_string*, %nyx_string** %name.ptr
  %4909 = getelementptr [9 x i8], [9 x i8]* @.str758, i32 0, i32 0
  %4910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %4909, i64 8)
  %4911 = call i1 @nyx_string_equals(%nyx_string* %4908, %nyx_string* %4910)
  store i1 %4911, i1* %4885
  br label %sc_or_end801
sc_or_end801:
  %4912 = load i1, i1* %4885
  br i1 %4912, label %sc_or_end803, label %sc_or_rhs802
sc_or_rhs802:
  %4913 = load %nyx_string*, %nyx_string** %name.ptr
  %4914 = getelementptr [14 x i8], [14 x i8]* @.str759, i32 0, i32 0
  %4915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %4914, i64 13)
  %4916 = call i1 @nyx_string_equals(%nyx_string* %4913, %nyx_string* %4915)
  store i1 %4916, i1* %4884
  br label %sc_or_end803
sc_or_end803:
  %4917 = load i1, i1* %4884
  br i1 %4917, label %sc_or_end805, label %sc_or_rhs804
sc_or_rhs804:
  %4918 = load %nyx_string*, %nyx_string** %name.ptr
  %4919 = getelementptr [6 x i8], [6 x i8]* @.str760, i32 0, i32 0
  %4920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %4919, i64 5)
  %4921 = call i1 @nyx_string_equals(%nyx_string* %4918, %nyx_string* %4920)
  store i1 %4921, i1* %4883
  br label %sc_or_end805
sc_or_end805:
  %4922 = load i1, i1* %4883
  br i1 %4922, label %sc_or_end807, label %sc_or_rhs806
sc_or_rhs806:
  %4923 = load %nyx_string*, %nyx_string** %name.ptr
  %4924 = getelementptr [7 x i8], [7 x i8]* @.str761, i32 0, i32 0
  %4925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %4924, i64 6)
  %4926 = call i1 @nyx_string_equals(%nyx_string* %4923, %nyx_string* %4925)
  store i1 %4926, i1* %4882
  br label %sc_or_end807
sc_or_end807:
  %4927 = load i1, i1* %4882
  br i1 %4927, label %then808, label %else809
then808:
  %4928 = getelementptr [26 x i8], [26 x i8]* @.str762, i32 0, i32 0
  %4929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %4928, i64 25)
  ret %nyx_string* %4929
else809:
  br label %merge810
merge810:
  %4930 = alloca i1
  store i1 true, i1* %4930
  %4931 = alloca i1
  store i1 true, i1* %4931
  %4932 = alloca i1
  store i1 true, i1* %4932
  %4933 = load %nyx_string*, %nyx_string** %name.ptr
  %4934 = getelementptr [6 x i8], [6 x i8]* @.str763, i32 0, i32 0
  %4935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %4934, i64 5)
  %4936 = call i1 @nyx_string_equals(%nyx_string* %4933, %nyx_string* %4935)
  br i1 %4936, label %sc_or_end812, label %sc_or_rhs811
sc_or_rhs811:
  %4937 = load %nyx_string*, %nyx_string** %name.ptr
  %4938 = getelementptr [4 x i8], [4 x i8]* @.str764, i32 0, i32 0
  %4939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %4938, i64 3)
  %4940 = call i1 @nyx_string_equals(%nyx_string* %4937, %nyx_string* %4939)
  store i1 %4940, i1* %4932
  br label %sc_or_end812
sc_or_end812:
  %4941 = load i1, i1* %4932
  br i1 %4941, label %sc_or_end814, label %sc_or_rhs813
sc_or_rhs813:
  %4942 = load %nyx_string*, %nyx_string** %name.ptr
  %4943 = getelementptr [3 x i8], [3 x i8]* @.str765, i32 0, i32 0
  %4944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %4943, i64 2)
  %4945 = call i1 @nyx_string_equals(%nyx_string* %4942, %nyx_string* %4944)
  store i1 %4945, i1* %4931
  br label %sc_or_end814
sc_or_end814:
  %4946 = load i1, i1* %4931
  br i1 %4946, label %sc_or_end816, label %sc_or_rhs815
sc_or_rhs815:
  %4947 = load %nyx_string*, %nyx_string** %name.ptr
  %4948 = getelementptr [10 x i8], [10 x i8]* @.str766, i32 0, i32 0
  %4949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %4948, i64 9)
  %4950 = call i1 @nyx_string_equals(%nyx_string* %4947, %nyx_string* %4949)
  store i1 %4950, i1* %4930
  br label %sc_or_end816
sc_or_end816:
  %4951 = load i1, i1* %4930
  br i1 %4951, label %then817, label %else818
then817:
  %4952 = getelementptr [8 x i8], [8 x i8]* @.str767, i32 0, i32 0
  %4953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %4952, i64 7)
  ret %nyx_string* %4953
else818:
  br label %merge819
merge819:
  %4954 = alloca i1
  store i1 true, i1* %4954
  %4955 = alloca i1
  store i1 true, i1* %4955
  %4956 = alloca i1
  store i1 true, i1* %4956
  %4957 = alloca i1
  store i1 true, i1* %4957
  %4958 = alloca i1
  store i1 true, i1* %4958
  %4959 = alloca i1
  store i1 true, i1* %4959
  %4960 = load %nyx_string*, %nyx_string** %name.ptr
  %4961 = getelementptr [5 x i8], [5 x i8]* @.str768, i32 0, i32 0
  %4962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %4961, i64 4)
  %4963 = call i1 @nyx_string_equals(%nyx_string* %4960, %nyx_string* %4962)
  br i1 %4963, label %sc_or_end821, label %sc_or_rhs820
sc_or_rhs820:
  %4964 = load %nyx_string*, %nyx_string** %name.ptr
  %4965 = getelementptr [4 x i8], [4 x i8]* @.str769, i32 0, i32 0
  %4966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %4965, i64 3)
  %4967 = call i1 @nyx_string_equals(%nyx_string* %4964, %nyx_string* %4966)
  store i1 %4967, i1* %4959
  br label %sc_or_end821
sc_or_end821:
  %4968 = load i1, i1* %4959
  br i1 %4968, label %sc_or_end823, label %sc_or_rhs822
sc_or_rhs822:
  %4969 = load %nyx_string*, %nyx_string** %name.ptr
  %4970 = getelementptr [4 x i8], [4 x i8]* @.str770, i32 0, i32 0
  %4971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %4970, i64 3)
  %4972 = call i1 @nyx_string_equals(%nyx_string* %4969, %nyx_string* %4971)
  store i1 %4972, i1* %4958
  br label %sc_or_end823
sc_or_end823:
  %4973 = load i1, i1* %4958
  br i1 %4973, label %sc_or_end825, label %sc_or_rhs824
sc_or_rhs824:
  %4974 = load %nyx_string*, %nyx_string** %name.ptr
  %4975 = getelementptr [8 x i8], [8 x i8]* @.str771, i32 0, i32 0
  %4976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %4975, i64 7)
  %4977 = call i1 @nyx_string_equals(%nyx_string* %4974, %nyx_string* %4976)
  store i1 %4977, i1* %4957
  br label %sc_or_end825
sc_or_end825:
  %4978 = load i1, i1* %4957
  br i1 %4978, label %sc_or_end827, label %sc_or_rhs826
sc_or_rhs826:
  %4979 = load %nyx_string*, %nyx_string** %name.ptr
  %4980 = getelementptr [7 x i8], [7 x i8]* @.str772, i32 0, i32 0
  %4981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %4980, i64 6)
  %4982 = call i1 @nyx_string_equals(%nyx_string* %4979, %nyx_string* %4981)
  store i1 %4982, i1* %4956
  br label %sc_or_end827
sc_or_end827:
  %4983 = load i1, i1* %4956
  br i1 %4983, label %sc_or_end829, label %sc_or_rhs828
sc_or_rhs828:
  %4984 = load %nyx_string*, %nyx_string** %name.ptr
  %4985 = getelementptr [8 x i8], [8 x i8]* @.str773, i32 0, i32 0
  %4986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %4985, i64 7)
  %4987 = call i1 @nyx_string_equals(%nyx_string* %4984, %nyx_string* %4986)
  store i1 %4987, i1* %4955
  br label %sc_or_end829
sc_or_end829:
  %4988 = load i1, i1* %4955
  br i1 %4988, label %sc_or_end831, label %sc_or_rhs830
sc_or_rhs830:
  %4989 = load %nyx_string*, %nyx_string** %name.ptr
  %4990 = getelementptr [11 x i8], [11 x i8]* @.str774, i32 0, i32 0
  %4991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %4990, i64 10)
  %4992 = call i1 @nyx_string_equals(%nyx_string* %4989, %nyx_string* %4991)
  store i1 %4992, i1* %4954
  br label %sc_or_end831
sc_or_end831:
  %4993 = load i1, i1* %4954
  br i1 %4993, label %then832, label %else833
then832:
  %4994 = getelementptr [14 x i8], [14 x i8]* @.str775, i32 0, i32 0
  %4995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %4994, i64 13)
  ret %nyx_string* %4995
else833:
  br label %merge834
merge834:
  %4996 = getelementptr [1 x i8], [1 x i8]* @.str776, i32 0, i32 0
  %4997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %4996, i64 0)
  ret %nyx_string* %4997
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %4998 = alloca i64
  store i64 0, i64* %4998
  %4999 = alloca i64
  store i64 0, i64* %4999
  %5000 = call i8* @llvm.stacksave()
  br label %while_cond835
while_cond835:
  %5001 = load i64, i64* %4999
  %5002 = load %nyx_string*, %nyx_string** %s.ptr
  %5003 = call i64 @nyx_string_byte_length(%nyx_string* %5002)
  %5004 = icmp slt i64 %5001, %5003
  br i1 %5004, label %while_body836, label %while_end837
while_body836:
  call void @llvm.stackrestore(i8* %5000)
  %5005 = load %nyx_string*, %nyx_string** %s.ptr
  %5006 = load i64, i64* %4999
  %5007 = call i8 @nyx_string_char_at(%nyx_string* %5005, i64 %5006)
  %5008 = zext i8 %5007 to i64
  %5009 = trunc i64 %5008 to i8
  %5010 = alloca i8
  store i8 %5009, i8* %5010
  %5011 = load i8, i8* %5010
  %5012 = getelementptr [1 x i8], [1 x i8]* @.str777, i32 0, i32 0
  %5013 = load i8, i8* %5012
  %5014 = zext i8 %5013 to i64
  %5015 = zext i8 %5011 to i64
  %5016 = icmp eq i64 %5015, %5014
  br i1 %5016, label %then838, label %else839
then838:
  %5017 = load i64, i64* %4998
  %5018 = add i64 %5017, 1
  store i64 %5018, i64* %4998
  br label %merge840
else839:
  br label %merge840
merge840:
  %5019 = load i8, i8* %5010
  %5020 = getelementptr [1 x i8], [1 x i8]* @.str778, i32 0, i32 0
  %5021 = load i8, i8* %5020
  %5022 = zext i8 %5021 to i64
  %5023 = zext i8 %5019 to i64
  %5024 = icmp eq i64 %5023, %5022
  br i1 %5024, label %then841, label %else842
then841:
  %5025 = load i64, i64* %4998
  %5026 = sub i64 %5025, 1
  store i64 %5026, i64* %4998
  br label %merge843
else842:
  br label %merge843
merge843:
  %5027 = load i64, i64* %4999
  %5028 = add i64 %5027, 1
  store i64 %5028, i64* %4999
  br label %while_cond835
while_end837:
  %5029 = load i64, i64* %4998
  ret i64 %5029
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %5030 = load %nyx_string*, %nyx_string** %filename.ptr
  %5031 = load %nyx_string*, %nyx_string** %filename.ptr
  %5032 = call i64 @nyx_string_byte_length(%nyx_string* %5031)
  %5033 = sub i64 %5032, 3
  %5034 = call %nyx_string* @nyx_string_substring(%nyx_string* %5030, i64 0, i64 %5033)
  %5035 = alloca %nyx_string*
  store %nyx_string* %5034, %nyx_string** %5035
  %5036 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5037 = getelementptr [2 x i8], [2 x i8]* @.str779, i32 0, i32 0
  %5038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %5037, i64 1)
  %5039 = call %nyx_string* @nyx_string_concat(%nyx_string* %5036, %nyx_string* %5038)
  %5040 = load %nyx_string*, %nyx_string** %filename.ptr
  %5041 = call %nyx_string* @nyx_string_concat(%nyx_string* %5039, %nyx_string* %5040)
  %5042 = call i8* @nyx_string_to_cstr(%nyx_string* %5041)
  %5043 = call %nyx_string* @nyx_read_file(i8* %5042)
  %5044 = alloca %nyx_string*
  store %nyx_string* %5043, %nyx_string** %5044
  %5045 = load %nyx_string*, %nyx_string** %5044
  %5046 = getelementptr [2 x i8], [2 x i8]* @.str780, i32 0, i32 0
  %5047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %5046, i64 1)
  %5048 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5045, %nyx_string* %5047)
  %5049 = alloca { i64, i8* }*
  store { i64, i8* }* %5048, { i64, i8* }** %5049
  %5050 = getelementptr [1 x i8], [1 x i8]* @.str781, i32 0, i32 0
  %5051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %5050, i64 0)
  %5052 = alloca %nyx_string*
  store %nyx_string* %5051, %nyx_string** %5052
  %5053 = getelementptr [1 x i8], [1 x i8]* @.str782, i32 0, i32 0
  %5054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %5053, i64 0)
  %5055 = alloca %nyx_string*
  store %nyx_string* %5054, %nyx_string** %5055
  %5056 = alloca i64
  store i64 0, i64* %5056
  %5057 = alloca i64
  store i64 0, i64* %5057
  %5058 = getelementptr [4 x i8], [4 x i8]* @.str783, i32 0, i32 0
  %5059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %5058, i64 3)
  %5060 = alloca %nyx_string*
  store %nyx_string* %5059, %nyx_string** %5060
  %5061 = getelementptr [1 x i8], [1 x i8]* @.str784, i32 0, i32 0
  %5062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %5061, i64 0)
  %5063 = alloca %nyx_string*
  store %nyx_string* %5062, %nyx_string** %5063
  %5064 = getelementptr [2 x i8], [2 x i8]* @.str785, i32 0, i32 0
  %5065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %5064, i64 1)
  %5066 = alloca %nyx_string*
  store %nyx_string* %5065, %nyx_string** %5066
  %5067 = getelementptr [8 x i8], [8 x i8]* @.str786, i32 0, i32 0
  %5068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %5067, i64 7)
  %5069 = alloca %nyx_string*
  store %nyx_string* %5068, %nyx_string** %5069
  %5070 = getelementptr [11 x i8], [11 x i8]* @.str787, i32 0, i32 0
  %5071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %5070, i64 10)
  %5072 = alloca %nyx_string*
  store %nyx_string* %5071, %nyx_string** %5072
  %5073 = getelementptr [4 x i8], [4 x i8]* @.str788, i32 0, i32 0
  %5074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %5073, i64 3)
  %5075 = alloca %nyx_string*
  store %nyx_string* %5074, %nyx_string** %5075
  %5076 = getelementptr [2 x i8], [2 x i8]* @.str789, i32 0, i32 0
  %5077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %5076, i64 1)
  %5078 = alloca %nyx_string*
  store %nyx_string* %5077, %nyx_string** %5078
  %5079 = getelementptr [6 x i8], [6 x i8]* @.str790, i32 0, i32 0
  %5080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %5079, i64 5)
  %5081 = alloca %nyx_string*
  store %nyx_string* %5080, %nyx_string** %5081
  %5082 = getelementptr [2 x i8], [2 x i8]* @.str791, i32 0, i32 0
  %5083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %5082, i64 1)
  %5084 = alloca %nyx_string*
  store %nyx_string* %5083, %nyx_string** %5084
  %5085 = call i8* @llvm.stacksave()
  br label %while_cond844
while_cond844:
  %5086 = load i64, i64* %5057
  %5087 = load { i64, i8* }*, { i64, i8* }** %5049
  %5088 = call i64 @nyx_array_length({ i64, i8* }* %5087)
  %5089 = icmp slt i64 %5086, %5088
  br i1 %5089, label %while_body845, label %while_end846
while_body845:
  call void @llvm.stackrestore(i8* %5085)
  %5090 = load { i64, i8* }*, { i64, i8* }** %5049
  %5091 = load i64, i64* %5057
  %5092 = call i64 @nyx_array_get_checked({ i64, i8* }* %5090, i64 %5091, i64 2)
  %5093 = inttoptr i64 %5092 to %nyx_string*
  %5094 = alloca %nyx_string*
  store %nyx_string* %5093, %nyx_string** %5094
  %5095 = load %nyx_string*, %nyx_string** %5094
  %5096 = call %nyx_string* @nyx_string_trim(%nyx_string* %5095)
  %5097 = alloca %nyx_string*
  store %nyx_string* %5096, %nyx_string** %5097
  %5098 = load %nyx_string*, %nyx_string** %5097
  %5099 = load %nyx_string*, %nyx_string** %5060
  %5100 = call i1 @nyx_string_starts_with(%nyx_string* %5098, %nyx_string* %5099)
  br i1 %5100, label %then847, label %else848
then847:
  %5101 = load %nyx_string*, %nyx_string** %5097
  %5102 = load %nyx_string*, %nyx_string** %5097
  %5103 = call i64 @nyx_string_byte_length(%nyx_string* %5102)
  %5104 = call %nyx_string* @nyx_string_substring(%nyx_string* %5101, i64 3, i64 %5103)
  %5105 = alloca %nyx_string*
  store %nyx_string* %5104, %nyx_string** %5105
  %5106 = load %nyx_string*, %nyx_string** %5105
  %5107 = call %nyx_string* @nyx_string_trim(%nyx_string* %5106)
  %5108 = alloca %nyx_string*
  store %nyx_string* %5107, %nyx_string** %5108
  %5109 = load %nyx_string*, %nyx_string** %5055
  %5110 = load %nyx_string*, %nyx_string** %5063
  %5111 = call i1 @nyx_string_equals(%nyx_string* %5109, %nyx_string* %5110)
  br i1 %5111, label %then850, label %else851
then850:
  %5112 = load %nyx_string*, %nyx_string** %5108
  store %nyx_string* %5112, %nyx_string** %5055
  br label %merge852
else851:
  %5113 = load %nyx_string*, %nyx_string** %5055
  %5114 = load %nyx_string*, %nyx_string** %5066
  %5115 = call %nyx_string* @nyx_string_concat(%nyx_string* %5113, %nyx_string* %5114)
  %5116 = load %nyx_string*, %nyx_string** %5108
  %5117 = call %nyx_string* @nyx_string_concat(%nyx_string* %5115, %nyx_string* %5116)
  store %nyx_string* %5117, %nyx_string** %5055
  br label %merge852
merge852:
  br label %merge849
else848:
  %5118 = alloca i1
  store i1 true, i1* %5118
  %5119 = load %nyx_string*, %nyx_string** %5097
  %5120 = load %nyx_string*, %nyx_string** %5069
  %5121 = call i1 @nyx_string_starts_with(%nyx_string* %5119, %nyx_string* %5120)
  br i1 %5121, label %sc_or_end854, label %sc_or_rhs853
sc_or_rhs853:
  %5122 = load %nyx_string*, %nyx_string** %5097
  %5123 = load %nyx_string*, %nyx_string** %5072
  %5124 = call i1 @nyx_string_starts_with(%nyx_string* %5122, %nyx_string* %5123)
  store i1 %5124, i1* %5118
  br label %sc_or_end854
sc_or_end854:
  %5125 = load i1, i1* %5118
  %5126 = alloca i1
  store i1 %5125, i1* %5126
  %5127 = load i1, i1* %5126
  br i1 %5127, label %then855, label %else856
then855:
  %5128 = load %nyx_string*, %nyx_string** %5097
  %5129 = alloca %nyx_string*
  store %nyx_string* %5128, %nyx_string** %5129
  %5130 = load %nyx_string*, %nyx_string** %5129
  %5131 = call i64 @capabilities_paren_delta(%nyx_string* %5130)
  %5132 = alloca i64
  store i64 %5131, i64* %5132
  %5133 = call i8* @llvm.stacksave()
  br label %while_cond858
while_cond858:
  %5134 = alloca i1
  store i1 false, i1* %5134
  %5135 = load i64, i64* %5132
  %5136 = icmp sgt i64 %5135, 0
  br i1 %5136, label %sc_and_rhs861, label %sc_and_end862
sc_and_rhs861:
  %5137 = load i64, i64* %5057
  %5138 = add i64 %5137, 1
  %5139 = load { i64, i8* }*, { i64, i8* }** %5049
  %5140 = call i64 @nyx_array_length({ i64, i8* }* %5139)
  %5141 = icmp slt i64 %5138, %5140
  store i1 %5141, i1* %5134
  br label %sc_and_end862
sc_and_end862:
  %5142 = load i1, i1* %5134
  br i1 %5142, label %while_body859, label %while_end860
while_body859:
  call void @llvm.stackrestore(i8* %5133)
  %5143 = load i64, i64* %5057
  %5144 = add i64 %5143, 1
  store i64 %5144, i64* %5057
  %5145 = load { i64, i8* }*, { i64, i8* }** %5049
  %5146 = load i64, i64* %5057
  %5147 = call i64 @nyx_array_get_checked({ i64, i8* }* %5145, i64 %5146, i64 2)
  %5148 = inttoptr i64 %5147 to %nyx_string*
  %5149 = call %nyx_string* @nyx_string_trim(%nyx_string* %5148)
  %5150 = alloca %nyx_string*
  store %nyx_string* %5149, %nyx_string** %5150
  %5151 = load %nyx_string*, %nyx_string** %5150
  %5152 = load %nyx_string*, %nyx_string** %5063
  %5153 = call i1 @nyx_string_equals(%nyx_string* %5151, %nyx_string* %5152)
  %5154 = xor i1 %5153, true
  br i1 %5154, label %then863, label %else864
then863:
  %5155 = alloca i1
  store i1 false, i1* %5155
  %5156 = load %nyx_string*, %nyx_string** %5129
  %5157 = call i64 @nyx_string_byte_length(%nyx_string* %5156)
  %5158 = icmp sgt i64 %5157, 0
  br i1 %5158, label %sc_and_rhs866, label %sc_and_end867
sc_and_rhs866:
  %5159 = load %nyx_string*, %nyx_string** %5129
  %5160 = load %nyx_string*, %nyx_string** %5129
  %5161 = call i64 @nyx_string_byte_length(%nyx_string* %5160)
  %5162 = sub i64 %5161, 1
  %5163 = call i8 @nyx_string_char_at(%nyx_string* %5159, i64 %5162)
  %5164 = zext i8 %5163 to i64
  %5165 = getelementptr [1 x i8], [1 x i8]* @.str792, i32 0, i32 0
  %5166 = load i8, i8* %5165
  %5167 = zext i8 %5166 to i64
  %5168 = icmp eq i64 %5164, %5167
  store i1 %5168, i1* %5155
  br label %sc_and_end867
sc_and_end867:
  %5169 = load i1, i1* %5155
  br i1 %5169, label %then868, label %else869
then868:
  %5170 = load %nyx_string*, %nyx_string** %5129
  %5171 = load %nyx_string*, %nyx_string** %5150
  %5172 = call %nyx_string* @nyx_string_concat(%nyx_string* %5170, %nyx_string* %5171)
  store %nyx_string* %5172, %nyx_string** %5129
  br label %merge870
else869:
  %5173 = load %nyx_string*, %nyx_string** %5129
  %5174 = load %nyx_string*, %nyx_string** %5066
  %5175 = call %nyx_string* @nyx_string_concat(%nyx_string* %5173, %nyx_string* %5174)
  %5176 = load %nyx_string*, %nyx_string** %5150
  %5177 = call %nyx_string* @nyx_string_concat(%nyx_string* %5175, %nyx_string* %5176)
  store %nyx_string* %5177, %nyx_string** %5129
  br label %merge870
merge870:
  br label %merge865
else864:
  br label %merge865
merge865:
  %5178 = load i64, i64* %5132
  %5179 = load %nyx_string*, %nyx_string** %5150
  %5180 = call i64 @capabilities_paren_delta(%nyx_string* %5179)
  %5181 = add i64 %5178, %5180
  store i64 %5181, i64* %5132
  br label %while_cond858
while_end860:
  %5182 = sub i64 0, 1
  %5183 = alloca i64
  store i64 %5182, i64* %5183
  %5184 = alloca i64
  store i64 0, i64* %5184
  %5185 = call i8* @llvm.stacksave()
  br label %while_cond871
while_cond871:
  %5186 = load i64, i64* %5184
  %5187 = load %nyx_string*, %nyx_string** %5129
  %5188 = call i64 @nyx_string_byte_length(%nyx_string* %5187)
  %5189 = icmp slt i64 %5186, %5188
  br i1 %5189, label %while_body872, label %while_end873
while_body872:
  call void @llvm.stackrestore(i8* %5185)
  %5190 = load %nyx_string*, %nyx_string** %5129
  %5191 = load i64, i64* %5184
  %5192 = call i8 @nyx_string_char_at(%nyx_string* %5190, i64 %5191)
  %5193 = zext i8 %5192 to i64
  %5194 = trunc i64 %5193 to i8
  %5195 = alloca i8
  store i8 %5194, i8* %5195
  %5196 = alloca i1
  store i1 false, i1* %5196
  %5197 = load i8, i8* %5195
  %5198 = getelementptr [1 x i8], [1 x i8]* @.str793, i32 0, i32 0
  %5199 = load i8, i8* %5198
  %5200 = zext i8 %5199 to i64
  %5201 = zext i8 %5197 to i64
  %5202 = icmp eq i64 %5201, %5200
  br i1 %5202, label %sc_and_rhs874, label %sc_and_end875
sc_and_rhs874:
  %5203 = load i64, i64* %5183
  %5204 = sub i64 0, 1
  %5205 = icmp eq i64 %5203, %5204
  store i1 %5205, i1* %5196
  br label %sc_and_end875
sc_and_end875:
  %5206 = load i1, i1* %5196
  br i1 %5206, label %then876, label %else877
then876:
  %5207 = load i64, i64* %5184
  store i64 %5207, i64* %5183
  br label %merge878
else877:
  br label %merge878
merge878:
  %5208 = load i64, i64* %5184
  %5209 = add i64 %5208, 1
  store i64 %5209, i64* %5184
  br label %while_cond871
while_end873:
  %5210 = load i64, i64* %5183
  %5211 = icmp sge i64 %5210, 0
  br i1 %5211, label %then879, label %else880
then879:
  %5212 = load %nyx_string*, %nyx_string** %5129
  %5213 = load i64, i64* %5183
  %5214 = call %nyx_string* @nyx_string_substring(%nyx_string* %5212, i64 0, i64 %5213)
  store %nyx_string* %5214, %nyx_string** %5129
  br label %merge881
else880:
  br label %merge881
merge881:
  %5215 = load %nyx_string*, %nyx_string** %5129
  %5216 = call %nyx_string* @nyx_string_trim(%nyx_string* %5215)
  %5217 = alloca %nyx_string*
  store %nyx_string* %5216, %nyx_string** %5217
  %5218 = load %nyx_string*, %nyx_string** %5052
  %5219 = load %nyx_string*, %nyx_string** %5075
  %5220 = call %nyx_string* @nyx_string_concat(%nyx_string* %5218, %nyx_string* %5219)
  %5221 = load %nyx_string*, %nyx_string** %5217
  %5222 = call %nyx_string* @nyx_string_concat(%nyx_string* %5220, %nyx_string* %5221)
  %5223 = load %nyx_string*, %nyx_string** %5078
  %5224 = call %nyx_string* @nyx_string_concat(%nyx_string* %5222, %nyx_string* %5223)
  store %nyx_string* %5224, %nyx_string** %5052
  %5225 = load %nyx_string*, %nyx_string** %5055
  %5226 = load %nyx_string*, %nyx_string** %5063
  %5227 = call i1 @nyx_string_equals(%nyx_string* %5225, %nyx_string* %5226)
  %5228 = xor i1 %5227, true
  br i1 %5228, label %then882, label %else883
then882:
  %5229 = load %nyx_string*, %nyx_string** %5052
  %5230 = load %nyx_string*, %nyx_string** %5081
  %5231 = call %nyx_string* @nyx_string_concat(%nyx_string* %5229, %nyx_string* %5230)
  %5232 = load %nyx_string*, %nyx_string** %5055
  %5233 = call %nyx_string* @nyx_string_concat(%nyx_string* %5231, %nyx_string* %5232)
  store %nyx_string* %5233, %nyx_string** %5052
  br label %merge884
else883:
  br label %merge884
merge884:
  %5234 = load %nyx_string*, %nyx_string** %5052
  %5235 = load %nyx_string*, %nyx_string** %5084
  %5236 = call %nyx_string* @nyx_string_concat(%nyx_string* %5234, %nyx_string* %5235)
  store %nyx_string* %5236, %nyx_string** %5052
  %5237 = load i64, i64* %5056
  %5238 = add i64 %5237, 1
  store i64 %5238, i64* %5056
  br label %merge857
else856:
  br label %merge857
merge857:
  %5239 = load %nyx_string*, %nyx_string** %5063
  store %nyx_string* %5239, %nyx_string** %5055
  br label %merge849
merge849:
  %5240 = load i64, i64* %5057
  %5241 = add i64 %5240, 1
  store i64 %5241, i64* %5057
  br label %while_cond844
while_end846:
  %5242 = load i64, i64* %5056
  %5243 = icmp eq i64 %5242, 0
  br i1 %5243, label %then885, label %else886
then885:
  %5244 = getelementptr [1 x i8], [1 x i8]* @.str794, i32 0, i32 0
  %5245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %5244, i64 0)
  ret %nyx_string* %5245
else886:
  br label %merge887
merge887:
  %5246 = getelementptr [10 x i8], [10 x i8]* @.str795, i32 0, i32 0
  %5247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %5246, i64 9)
  %5248 = load %nyx_string*, %nyx_string** %5035
  %5249 = call %nyx_string* @nyx_string_concat(%nyx_string* %5247, %nyx_string* %5248)
  %5250 = getelementptr [4 x i8], [4 x i8]* @.str796, i32 0, i32 0
  %5251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %5250, i64 3)
  %5252 = call %nyx_string* @nyx_string_concat(%nyx_string* %5249, %nyx_string* %5251)
  %5253 = alloca %nyx_string*
  store %nyx_string* %5252, %nyx_string** %5253
  %5254 = load %nyx_string*, %nyx_string** %5253
  %5255 = getelementptr [14 x i8], [14 x i8]* @.str797, i32 0, i32 0
  %5256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %5255, i64 13)
  %5257 = call %nyx_string* @nyx_string_concat(%nyx_string* %5254, %nyx_string* %5256)
  %5258 = load %nyx_string*, %nyx_string** %5035
  %5259 = call %nyx_string* @nyx_string_concat(%nyx_string* %5257, %nyx_string* %5258)
  %5260 = getelementptr [8 x i8], [8 x i8]* @.str798, i32 0, i32 0
  %5261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %5260, i64 7)
  %5262 = call %nyx_string* @nyx_string_concat(%nyx_string* %5259, %nyx_string* %5261)
  %5263 = load i64, i64* %5056
  %5264 = call %nyx_string* @nyx_string_from_int(i64 %5263)
  %5265 = call %nyx_string* @nyx_string_concat(%nyx_string* %5262, %nyx_string* %5264)
  %5266 = getelementptr [14 x i8], [14 x i8]* @.str799, i32 0, i32 0
  %5267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %5266, i64 13)
  %5268 = call %nyx_string* @nyx_string_concat(%nyx_string* %5265, %nyx_string* %5267)
  store %nyx_string* %5268, %nyx_string** %5253
  %5269 = load %nyx_string*, %nyx_string** %5253
  %5270 = load %nyx_string*, %nyx_string** %5052
  %5271 = call %nyx_string* @nyx_string_concat(%nyx_string* %5269, %nyx_string* %5270)
  %5272 = getelementptr [2 x i8], [2 x i8]* @.str800, i32 0, i32 0
  %5273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %5272, i64 1)
  %5274 = call %nyx_string* @nyx_string_concat(%nyx_string* %5271, %nyx_string* %5273)
  store %nyx_string* %5274, %nyx_string** %5253
  %5275 = load %nyx_string*, %nyx_string** %5253
  ret %nyx_string* %5275
}

define internal %nyx_string* @capabilities_builtins_section(
%nyx_string* %std_dir.param, %nyx_string* %cat.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %cat.ptr = alloca %nyx_string*
  store %nyx_string* %cat.param, %nyx_string** %cat.ptr
  %5276 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %5277 = getelementptr [16 x i8], [16 x i8]* @.str801, i32 0, i32 0
  %5278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %5277, i64 15)
  %5279 = call %nyx_string* @nyx_string_concat(%nyx_string* %5276, %nyx_string* %5278)
  %5280 = alloca %nyx_string*
  store %nyx_string* %5279, %nyx_string** %5280
  %5281 = load %nyx_string*, %nyx_string** %5280
  %5282 = call i8* @nyx_string_to_cstr(%nyx_string* %5281)
  %5283 = call i1 @nyx_file_exists(i8* %5282)
  %5284 = xor i1 %5283, true
  br i1 %5284, label %then888, label %else889
then888:
  %5285 = getelementptr [1 x i8], [1 x i8]* @.str802, i32 0, i32 0
  %5286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %5285, i64 0)
  ret %nyx_string* %5286
else889:
  br label %merge890
merge890:
  %5287 = load %nyx_string*, %nyx_string** %5280
  %5288 = call i8* @nyx_string_to_cstr(%nyx_string* %5287)
  %5289 = call %nyx_string* @nyx_read_file(i8* %5288)
  %5290 = alloca %nyx_string*
  store %nyx_string* %5289, %nyx_string** %5290
  %5291 = load %nyx_string*, %nyx_string** %5290
  %5292 = getelementptr [2 x i8], [2 x i8]* @.str803, i32 0, i32 0
  %5293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %5292, i64 1)
  %5294 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5291, %nyx_string* %5293)
  %5295 = alloca { i64, i8* }*
  store { i64, i8* }* %5294, { i64, i8* }** %5295
  %5296 = getelementptr [1 x i8], [1 x i8]* @.str804, i32 0, i32 0
  %5297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %5296, i64 0)
  %5298 = alloca %nyx_string*
  store %nyx_string* %5297, %nyx_string** %5298
  %5299 = alloca i64
  store i64 0, i64* %5299
  %5300 = alloca i64
  store i64 0, i64* %5300
  %5301 = getelementptr [9 x i8], [9 x i8]* @.str805, i32 0, i32 0
  %5302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %5301, i64 8)
  %5303 = alloca %nyx_string*
  store %nyx_string* %5302, %nyx_string** %5303
  %5304 = getelementptr [2 x i8], [2 x i8]* @.str806, i32 0, i32 0
  %5305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %5304, i64 1)
  %5306 = alloca %nyx_string*
  store %nyx_string* %5305, %nyx_string** %5306
  %5307 = getelementptr [4 x i8], [4 x i8]* @.str807, i32 0, i32 0
  %5308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %5307, i64 3)
  %5309 = alloca %nyx_string*
  store %nyx_string* %5308, %nyx_string** %5309
  %5310 = getelementptr [4 x i8], [4 x i8]* @.str808, i32 0, i32 0
  %5311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %5310, i64 3)
  %5312 = alloca %nyx_string*
  store %nyx_string* %5311, %nyx_string** %5312
  %5313 = getelementptr [5 x i8], [5 x i8]* @.str809, i32 0, i32 0
  %5314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %5313, i64 4)
  %5315 = alloca %nyx_string*
  store %nyx_string* %5314, %nyx_string** %5315
  %5316 = getelementptr [2 x i8], [2 x i8]* @.str810, i32 0, i32 0
  %5317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %5316, i64 1)
  %5318 = alloca %nyx_string*
  store %nyx_string* %5317, %nyx_string** %5318
  %5319 = getelementptr [2 x i8], [2 x i8]* @.str811, i32 0, i32 0
  %5320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %5319, i64 1)
  %5321 = alloca %nyx_string*
  store %nyx_string* %5320, %nyx_string** %5321
  %5322 = getelementptr [2 x i8], [2 x i8]* @.str812, i32 0, i32 0
  %5323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %5322, i64 1)
  %5324 = alloca %nyx_string*
  store %nyx_string* %5323, %nyx_string** %5324
  %5325 = getelementptr [1 x i8], [1 x i8]* @.str813, i32 0, i32 0
  %5326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %5325, i64 0)
  %5327 = alloca %nyx_string*
  store %nyx_string* %5326, %nyx_string** %5327
  %5328 = getelementptr [6 x i8], [6 x i8]* @.str814, i32 0, i32 0
  %5329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %5328, i64 5)
  %5330 = alloca %nyx_string*
  store %nyx_string* %5329, %nyx_string** %5330
  %5331 = getelementptr [2 x i8], [2 x i8]* @.str815, i32 0, i32 0
  %5332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %5331, i64 1)
  %5333 = alloca %nyx_string*
  store %nyx_string* %5332, %nyx_string** %5333
  %5334 = call i8* @llvm.stacksave()
  br label %while_cond891
while_cond891:
  %5335 = load i64, i64* %5300
  %5336 = load { i64, i8* }*, { i64, i8* }** %5295
  %5337 = call i64 @nyx_array_length({ i64, i8* }* %5336)
  %5338 = icmp slt i64 %5335, %5337
  br i1 %5338, label %while_body892, label %while_end893
while_body892:
  call void @llvm.stackrestore(i8* %5334)
  %5339 = load { i64, i8* }*, { i64, i8* }** %5295
  %5340 = load i64, i64* %5300
  %5341 = call i64 @nyx_array_get_checked({ i64, i8* }* %5339, i64 %5340, i64 2)
  %5342 = inttoptr i64 %5341 to %nyx_string*
  %5343 = alloca %nyx_string*
  store %nyx_string* %5342, %nyx_string** %5343
  %5344 = load %nyx_string*, %nyx_string** %5343
  %5345 = call i64 @nyx_string_byte_length(%nyx_string* %5344)
  %5346 = icmp sgt i64 %5345, 8
  br i1 %5346, label %then894, label %else895
then894:
  %5347 = load %nyx_string*, %nyx_string** %5343
  %5348 = call %nyx_string* @nyx_string_substring(%nyx_string* %5347, i64 0, i64 8)
  %5349 = load %nyx_string*, %nyx_string** %5303
  %5350 = call i1 @nyx_string_equals(%nyx_string* %5348, %nyx_string* %5349)
  br i1 %5350, label %then897, label %else898
then897:
  %5351 = load %nyx_string*, %nyx_string** %5343
  %5352 = load %nyx_string*, %nyx_string** %5306
  %5353 = call { i64, i8* }* @nyx_string_split(%nyx_string* %5351, %nyx_string* %5352)
  %5354 = alloca { i64, i8* }*
  store { i64, i8* }* %5353, { i64, i8* }** %5354
  %5355 = load { i64, i8* }*, { i64, i8* }** %5354
  %5356 = call i64 @nyx_array_length({ i64, i8* }* %5355)
  %5357 = icmp sge i64 %5356, 5
  br i1 %5357, label %then900, label %else901
then900:
  %5358 = load { i64, i8* }*, { i64, i8* }** %5354
  %5359 = call i64 @nyx_array_get_checked({ i64, i8* }* %5358, i64 1, i64 2)
  %5360 = inttoptr i64 %5359 to %nyx_string*
  %5361 = alloca %nyx_string*
  store %nyx_string* %5360, %nyx_string** %5361
  %5362 = load { i64, i8* }*, { i64, i8* }** %5354
  %5363 = call i64 @nyx_array_get_checked({ i64, i8* }* %5362, i64 2, i64 2)
  %5364 = inttoptr i64 %5363 to %nyx_string*
  %5365 = alloca %nyx_string*
  store %nyx_string* %5364, %nyx_string** %5365
  %5366 = load { i64, i8* }*, { i64, i8* }** %5354
  %5367 = call i64 @nyx_array_get_checked({ i64, i8* }* %5366, i64 3, i64 2)
  %5368 = inttoptr i64 %5367 to %nyx_string*
  %5369 = alloca %nyx_string*
  store %nyx_string* %5368, %nyx_string** %5369
  %5370 = load { i64, i8* }*, { i64, i8* }** %5354
  %5371 = call i64 @nyx_array_get_checked({ i64, i8* }* %5370, i64 4, i64 2)
  %5372 = inttoptr i64 %5371 to %nyx_string*
  %5373 = alloca %nyx_string*
  store %nyx_string* %5372, %nyx_string** %5373
  %5374 = load %nyx_string*, %nyx_string** %5369
  %5375 = load %nyx_string*, %nyx_string** %cat.ptr
  %5376 = call i1 @nyx_string_equals(%nyx_string* %5374, %nyx_string* %5375)
  br i1 %5376, label %then903, label %else904
then903:
  %5377 = load %nyx_string*, %nyx_string** %5309
  %5378 = load %nyx_string*, %nyx_string** %5361
  %5379 = call %nyx_string* @nyx_string_concat(%nyx_string* %5377, %nyx_string* %5378)
  %5380 = load %nyx_string*, %nyx_string** %5312
  %5381 = call %nyx_string* @nyx_string_concat(%nyx_string* %5379, %nyx_string* %5380)
  %5382 = load %nyx_string*, %nyx_string** %5365
  %5383 = call %nyx_string* @nyx_string_concat(%nyx_string* %5381, %nyx_string* %5382)
  %5384 = load %nyx_string*, %nyx_string** %5315
  %5385 = call %nyx_string* @nyx_string_concat(%nyx_string* %5383, %nyx_string* %5384)
  %5386 = alloca %nyx_string*
  store %nyx_string* %5385, %nyx_string** %5386
  %5387 = load %nyx_string*, %nyx_string** %5365
  %5388 = load %nyx_string*, %nyx_string** %5318
  %5389 = call i1 @nyx_string_equals(%nyx_string* %5387, %nyx_string* %5388)
  %5390 = xor i1 %5389, true
  br i1 %5390, label %then906, label %else907
then906:
  %5391 = load %nyx_string*, %nyx_string** %5386
  %5392 = load %nyx_string*, %nyx_string** %5321
  %5393 = call %nyx_string* @nyx_string_concat(%nyx_string* %5391, %nyx_string* %5392)
  store %nyx_string* %5393, %nyx_string** %5386
  br label %merge908
else907:
  br label %merge908
merge908:
  %5394 = load %nyx_string*, %nyx_string** %5386
  %5395 = load %nyx_string*, %nyx_string** %5324
  %5396 = call %nyx_string* @nyx_string_concat(%nyx_string* %5394, %nyx_string* %5395)
  store %nyx_string* %5396, %nyx_string** %5386
  %5397 = load %nyx_string*, %nyx_string** %5373
  %5398 = load %nyx_string*, %nyx_string** %5327
  %5399 = call i1 @nyx_string_equals(%nyx_string* %5397, %nyx_string* %5398)
  %5400 = xor i1 %5399, true
  br i1 %5400, label %then909, label %else910
then909:
  %5401 = load %nyx_string*, %nyx_string** %5386
  %5402 = load %nyx_string*, %nyx_string** %5330
  %5403 = call %nyx_string* @nyx_string_concat(%nyx_string* %5401, %nyx_string* %5402)
  %5404 = load %nyx_string*, %nyx_string** %5373
  %5405 = call %nyx_string* @nyx_string_concat(%nyx_string* %5403, %nyx_string* %5404)
  store %nyx_string* %5405, %nyx_string** %5386
  br label %merge911
else910:
  br label %merge911
merge911:
  %5406 = load %nyx_string*, %nyx_string** %5298
  %5407 = load %nyx_string*, %nyx_string** %5386
  %5408 = call %nyx_string* @nyx_string_concat(%nyx_string* %5406, %nyx_string* %5407)
  %5409 = load %nyx_string*, %nyx_string** %5333
  %5410 = call %nyx_string* @nyx_string_concat(%nyx_string* %5408, %nyx_string* %5409)
  store %nyx_string* %5410, %nyx_string** %5298
  %5411 = load i64, i64* %5299
  %5412 = add i64 %5411, 1
  store i64 %5412, i64* %5299
  br label %merge905
else904:
  br label %merge905
merge905:
  br label %merge902
else901:
  br label %merge902
merge902:
  br label %merge899
else898:
  br label %merge899
merge899:
  br label %merge896
else895:
  br label %merge896
merge896:
  %5413 = load i64, i64* %5300
  %5414 = add i64 %5413, 1
  store i64 %5414, i64* %5300
  br label %while_cond891
while_end893:
  %5415 = load i64, i64* %5299
  %5416 = icmp eq i64 %5415, 0
  br i1 %5416, label %then912, label %else913
then912:
  %5417 = getelementptr [1 x i8], [1 x i8]* @.str816, i32 0, i32 0
  %5418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %5417, i64 0)
  ret %nyx_string* %5418
else913:
  br label %merge914
merge914:
  %5419 = getelementptr [39 x i8], [39 x i8]* @.str817, i32 0, i32 0
  %5420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %5419, i64 38)
  %5421 = load %nyx_string*, %nyx_string** %5298
  %5422 = call %nyx_string* @nyx_string_concat(%nyx_string* %5420, %nyx_string* %5421)
  %5423 = getelementptr [2 x i8], [2 x i8]* @.str818, i32 0, i32 0
  %5424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %5423, i64 1)
  %5425 = call %nyx_string* @nyx_string_concat(%nyx_string* %5422, %nyx_string* %5424)
  ret %nyx_string* %5425
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %5426 = call %nyx_string* @capabilities_std_dir()
  %5427 = alloca %nyx_string*
  store %nyx_string* %5426, %nyx_string** %5427
  %5428 = load %nyx_string*, %nyx_string** %5427
  %5429 = getelementptr [1 x i8], [1 x i8]* @.str819, i32 0, i32 0
  %5430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %5429, i64 0)
  %5431 = call i1 @nyx_string_equals(%nyx_string* %5428, %nyx_string* %5430)
  br i1 %5431, label %then915, label %else916
then915:
  %5432 = getelementptr [71 x i8], [71 x i8]* @.str820, i32 0, i32 0
  %5433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %5432, i64 70)
  %5434 = call i8* @nyx_string_to_cstr(%nyx_string* %5433)
  call void @nyx_print_string(i8* %5434)
  ret i1 0
else916:
  br label %merge917
merge917:
  %5435 = load %nyx_string*, %nyx_string** %5427
  %5436 = call i8* @nyx_string_to_cstr(%nyx_string* %5435)
  %5437 = call { i64, i8* }* @nyx_readdir(i8* %5436)
  %5438 = alloca { i64, i8* }*
  store { i64, i8* }* %5437, { i64, i8* }** %5438
  %5439 = call { i64, i8* }* @nyx_array_new_ptr()
  %5440 = getelementptr [11 x i8], [11 x i8]* @.str821, i32 0, i32 0
  %5441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %5440, i64 10)
  %5442 = ptrtoint %nyx_string* %5441 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5442, i64 2)
  %5443 = getelementptr [20 x i8], [20 x i8]* @.str822, i32 0, i32 0
  %5444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %5443, i64 19)
  %5445 = ptrtoint %nyx_string* %5444 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5445, i64 2)
  %5446 = getelementptr [23 x i8], [23 x i8]* @.str823, i32 0, i32 0
  %5447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %5446, i64 22)
  %5448 = ptrtoint %nyx_string* %5447 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5448, i64 2)
  %5449 = getelementptr [15 x i8], [15 x i8]* @.str824, i32 0, i32 0
  %5450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %5449, i64 14)
  %5451 = ptrtoint %nyx_string* %5450 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5451, i64 2)
  %5452 = getelementptr [4 x i8], [4 x i8]* @.str825, i32 0, i32 0
  %5453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %5452, i64 3)
  %5454 = ptrtoint %nyx_string* %5453 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5454, i64 2)
  %5455 = getelementptr [13 x i8], [13 x i8]* @.str826, i32 0, i32 0
  %5456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %5455, i64 12)
  %5457 = ptrtoint %nyx_string* %5456 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5457, i64 2)
  %5458 = getelementptr [19 x i8], [19 x i8]* @.str827, i32 0, i32 0
  %5459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %5458, i64 18)
  %5460 = ptrtoint %nyx_string* %5459 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5460, i64 2)
  %5461 = getelementptr [7 x i8], [7 x i8]* @.str828, i32 0, i32 0
  %5462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %5461, i64 6)
  %5463 = ptrtoint %nyx_string* %5462 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5463, i64 2)
  %5464 = getelementptr [16 x i8], [16 x i8]* @.str829, i32 0, i32 0
  %5465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %5464, i64 15)
  %5466 = ptrtoint %nyx_string* %5465 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5466, i64 2)
  %5467 = getelementptr [12 x i8], [12 x i8]* @.str830, i32 0, i32 0
  %5468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %5467, i64 11)
  %5469 = ptrtoint %nyx_string* %5468 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5469, i64 2)
  %5470 = getelementptr [26 x i8], [26 x i8]* @.str831, i32 0, i32 0
  %5471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %5470, i64 25)
  %5472 = ptrtoint %nyx_string* %5471 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5472, i64 2)
  %5473 = getelementptr [8 x i8], [8 x i8]* @.str832, i32 0, i32 0
  %5474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %5473, i64 7)
  %5475 = ptrtoint %nyx_string* %5474 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5475, i64 2)
  %5476 = getelementptr [14 x i8], [14 x i8]* @.str833, i32 0, i32 0
  %5477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %5476, i64 13)
  %5478 = ptrtoint %nyx_string* %5477 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5478, i64 2)
  %5479 = getelementptr [6 x i8], [6 x i8]* @.str834, i32 0, i32 0
  %5480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %5479, i64 5)
  %5481 = ptrtoint %nyx_string* %5480 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5439, i64 %5481, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %5439, i64 2)
  %5482 = alloca { i64, i8* }*
  store { i64, i8* }* %5439, { i64, i8* }** %5482
  %5483 = getelementptr [49 x i8], [49 x i8]* @.str835, i32 0, i32 0
  %5484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %5483, i64 48)
  %5485 = alloca %nyx_string*
  store %nyx_string* %5484, %nyx_string** %5485
  %5486 = load %nyx_string*, %nyx_string** %5485
  %5487 = getelementptr [19 x i8], [19 x i8]* @.str836, i32 0, i32 0
  %5488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %5487, i64 18)
  %5489 = call %nyx_string* @nyx_string_concat(%nyx_string* %5486, %nyx_string* %5488)
  %5490 = call %nyx_string* @toolchain_version()
  %5491 = call %nyx_string* @nyx_string_concat(%nyx_string* %5489, %nyx_string* %5490)
  %5492 = getelementptr [6 x i8], [6 x i8]* @.str837, i32 0, i32 0
  %5493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %5492, i64 5)
  %5494 = call %nyx_string* @nyx_string_concat(%nyx_string* %5491, %nyx_string* %5493)
  store %nyx_string* %5494, %nyx_string** %5485
  %5495 = load %nyx_string*, %nyx_string** %5485
  %5496 = getelementptr [103 x i8], [103 x i8]* @.str838, i32 0, i32 0
  %5497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %5496, i64 102)
  %5498 = call %nyx_string* @nyx_string_concat(%nyx_string* %5495, %nyx_string* %5497)
  store %nyx_string* %5498, %nyx_string** %5485
  %5499 = load %nyx_string*, %nyx_string** %5485
  %5500 = getelementptr [103 x i8], [103 x i8]* @.str839, i32 0, i32 0
  %5501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %5500, i64 102)
  %5502 = call %nyx_string* @nyx_string_concat(%nyx_string* %5499, %nyx_string* %5501)
  store %nyx_string* %5502, %nyx_string** %5485
  %5503 = load %nyx_string*, %nyx_string** %5485
  %5504 = getelementptr [95 x i8], [95 x i8]* @.str840, i32 0, i32 0
  %5505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %5504, i64 94)
  %5506 = call %nyx_string* @nyx_string_concat(%nyx_string* %5503, %nyx_string* %5505)
  store %nyx_string* %5506, %nyx_string** %5485
  %5507 = alloca i64
  store i64 0, i64* %5507
  %5508 = getelementptr [1 x i8], [1 x i8]* @.str841, i32 0, i32 0
  %5509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %5508, i64 0)
  %5510 = alloca %nyx_string*
  store %nyx_string* %5509, %nyx_string** %5510
  %5511 = getelementptr [4 x i8], [4 x i8]* @.str842, i32 0, i32 0
  %5512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %5511, i64 3)
  %5513 = alloca %nyx_string*
  store %nyx_string* %5512, %nyx_string** %5513
  %5514 = getelementptr [6 x i8], [6 x i8]* @.str843, i32 0, i32 0
  %5515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %5514, i64 5)
  %5516 = alloca %nyx_string*
  store %nyx_string* %5515, %nyx_string** %5516
  %5517 = getelementptr [4 x i8], [4 x i8]* @.str844, i32 0, i32 0
  %5518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %5517, i64 3)
  %5519 = alloca %nyx_string*
  store %nyx_string* %5518, %nyx_string** %5519
  %5520 = getelementptr [3 x i8], [3 x i8]* @.str845, i32 0, i32 0
  %5521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %5520, i64 2)
  %5522 = alloca %nyx_string*
  store %nyx_string* %5521, %nyx_string** %5522
  %5523 = call i8* @llvm.stacksave()
  br label %while_cond918
while_cond918:
  %5524 = load i64, i64* %5507
  %5525 = load { i64, i8* }*, { i64, i8* }** %5482
  %5526 = call i64 @nyx_array_length({ i64, i8* }* %5525)
  %5527 = icmp slt i64 %5524, %5526
  br i1 %5527, label %while_body919, label %while_end920
while_body919:
  call void @llvm.stackrestore(i8* %5523)
  %5528 = load { i64, i8* }*, { i64, i8* }** %5482
  %5529 = load i64, i64* %5507
  %5530 = call i64 @nyx_array_get_checked({ i64, i8* }* %5528, i64 %5529, i64 2)
  %5531 = inttoptr i64 %5530 to %nyx_string*
  %5532 = alloca %nyx_string*
  store %nyx_string* %5531, %nyx_string** %5532
  %5533 = load %nyx_string*, %nyx_string** %5510
  %5534 = alloca %nyx_string*
  store %nyx_string* %5533, %nyx_string** %5534
  %5535 = alloca i64
  store i64 0, i64* %5535
  %5536 = call i8* @llvm.stacksave()
  br label %while_cond921
while_cond921:
  %5537 = load i64, i64* %5535
  %5538 = load { i64, i8* }*, { i64, i8* }** %5438
  %5539 = call i64 @nyx_array_length({ i64, i8* }* %5538)
  %5540 = icmp slt i64 %5537, %5539
  br i1 %5540, label %while_body922, label %while_end923
while_body922:
  call void @llvm.stackrestore(i8* %5536)
  %5541 = load { i64, i8* }*, { i64, i8* }** %5438
  %5542 = load i64, i64* %5535
  %5543 = call i64 @nyx_array_get_checked({ i64, i8* }* %5541, i64 %5542, i64 2)
  %5544 = inttoptr i64 %5543 to %nyx_string*
  %5545 = alloca %nyx_string*
  store %nyx_string* %5544, %nyx_string** %5545
  %5546 = load %nyx_string*, %nyx_string** %5545
  %5547 = load %nyx_string*, %nyx_string** %5513
  %5548 = call i1 @nyx_string_ends_with(%nyx_string* %5546, %nyx_string* %5547)
  br i1 %5548, label %then924, label %else925
then924:
  %5549 = load %nyx_string*, %nyx_string** %5545
  %5550 = load %nyx_string*, %nyx_string** %5545
  %5551 = call i64 @nyx_string_byte_length(%nyx_string* %5550)
  %5552 = sub i64 %5551, 3
  %5553 = call %nyx_string* @nyx_string_substring(%nyx_string* %5549, i64 0, i64 %5552)
  %5554 = alloca %nyx_string*
  store %nyx_string* %5553, %nyx_string** %5554
  %5555 = load %nyx_string*, %nyx_string** %5554
  %5556 = call %nyx_string* @module_category(%nyx_string* %5555)
  %5557 = alloca %nyx_string*
  store %nyx_string* %5556, %nyx_string** %5557
  %5558 = load %nyx_string*, %nyx_string** %5557
  %5559 = load %nyx_string*, %nyx_string** %5510
  %5560 = call i1 @nyx_string_equals(%nyx_string* %5558, %nyx_string* %5559)
  br i1 %5560, label %then927, label %else928
then927:
  %5561 = load %nyx_string*, %nyx_string** %5516
  store %nyx_string* %5561, %nyx_string** %5557
  br label %merge929
else928:
  br label %merge929
merge929:
  %5562 = load %nyx_string*, %nyx_string** %5557
  %5563 = load %nyx_string*, %nyx_string** %5532
  %5564 = call i1 @nyx_string_equals(%nyx_string* %5562, %nyx_string* %5563)
  br i1 %5564, label %then930, label %else931
then930:
  %5565 = load %nyx_string*, %nyx_string** %5427
  %5566 = load %nyx_string*, %nyx_string** %5545
  %5567 = call %nyx_string* @capabilities_module_section(%nyx_string* %5565, %nyx_string* %5566)
  %5568 = alloca %nyx_string*
  store %nyx_string* %5567, %nyx_string** %5568
  %5569 = load %nyx_string*, %nyx_string** %5568
  %5570 = load %nyx_string*, %nyx_string** %5510
  %5571 = call i1 @nyx_string_equals(%nyx_string* %5569, %nyx_string* %5570)
  %5572 = xor i1 %5571, true
  br i1 %5572, label %then933, label %else934
then933:
  %5573 = load %nyx_string*, %nyx_string** %5534
  %5574 = load %nyx_string*, %nyx_string** %5568
  %5575 = call %nyx_string* @nyx_string_concat(%nyx_string* %5573, %nyx_string* %5574)
  store %nyx_string* %5575, %nyx_string** %5534
  br label %merge935
else934:
  br label %merge935
merge935:
  br label %merge932
else931:
  br label %merge932
merge932:
  br label %merge926
else925:
  br label %merge926
merge926:
  %5576 = load i64, i64* %5535
  %5577 = add i64 %5576, 1
  store i64 %5577, i64* %5535
  br label %while_cond921
while_end923:
  %5578 = load %nyx_string*, %nyx_string** %5427
  %5579 = load %nyx_string*, %nyx_string** %5532
  %5580 = call %nyx_string* @capabilities_builtins_section(%nyx_string* %5578, %nyx_string* %5579)
  %5581 = alloca %nyx_string*
  store %nyx_string* %5580, %nyx_string** %5581
  %5582 = alloca i1
  store i1 true, i1* %5582
  %5583 = load %nyx_string*, %nyx_string** %5534
  %5584 = load %nyx_string*, %nyx_string** %5510
  %5585 = call i1 @nyx_string_equals(%nyx_string* %5583, %nyx_string* %5584)
  %5586 = xor i1 %5585, true
  br i1 %5586, label %sc_or_end937, label %sc_or_rhs936
sc_or_rhs936:
  %5587 = load %nyx_string*, %nyx_string** %5581
  %5588 = load %nyx_string*, %nyx_string** %5510
  %5589 = call i1 @nyx_string_equals(%nyx_string* %5587, %nyx_string* %5588)
  %5590 = xor i1 %5589, true
  store i1 %5590, i1* %5582
  br label %sc_or_end937
sc_or_end937:
  %5591 = load i1, i1* %5582
  br i1 %5591, label %then938, label %else939
then938:
  %5592 = load %nyx_string*, %nyx_string** %5485
  %5593 = load %nyx_string*, %nyx_string** %5519
  %5594 = call %nyx_string* @nyx_string_concat(%nyx_string* %5592, %nyx_string* %5593)
  %5595 = load %nyx_string*, %nyx_string** %5532
  %5596 = call %nyx_string* @nyx_string_concat(%nyx_string* %5594, %nyx_string* %5595)
  %5597 = load %nyx_string*, %nyx_string** %5522
  %5598 = call %nyx_string* @nyx_string_concat(%nyx_string* %5596, %nyx_string* %5597)
  %5599 = load %nyx_string*, %nyx_string** %5534
  %5600 = call %nyx_string* @nyx_string_concat(%nyx_string* %5598, %nyx_string* %5599)
  %5601 = load %nyx_string*, %nyx_string** %5581
  %5602 = call %nyx_string* @nyx_string_concat(%nyx_string* %5600, %nyx_string* %5601)
  store %nyx_string* %5602, %nyx_string** %5485
  br label %merge940
else939:
  br label %merge940
merge940:
  %5603 = load i64, i64* %5507
  %5604 = add i64 %5603, 1
  store i64 %5604, i64* %5507
  br label %while_cond918
while_end920:
  %5605 = getelementptr [16 x i8], [16 x i8]* @.str846, i32 0, i32 0
  %5606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %5605, i64 15)
  %5607 = alloca %nyx_string*
  store %nyx_string* %5606, %nyx_string** %5607
  %5608 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %5609 = getelementptr [1 x i8], [1 x i8]* @.str847, i32 0, i32 0
  %5610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %5609, i64 0)
  %5611 = call i1 @nyx_string_equals(%nyx_string* %5608, %nyx_string* %5610)
  %5612 = xor i1 %5611, true
  br i1 %5612, label %then941, label %else942
then941:
  %5613 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %5613, %nyx_string** %5607
  br label %merge943
else942:
  br label %merge943
merge943:
  %5614 = load %nyx_string*, %nyx_string** %5607
  %5615 = load %nyx_string*, %nyx_string** %5485
  %5616 = call i8* @nyx_string_to_cstr(%nyx_string* %5614)
  %5617 = call i8* @nyx_string_to_cstr(%nyx_string* %5615)
  %5618 = call i1 @nyx_write_file(i8* %5616, i8* %5617)
  %5619 = getelementptr [32 x i8], [32 x i8]* @.str848, i32 0, i32 0
  %5620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %5619, i64 31)
  %5621 = load %nyx_string*, %nyx_string** %5427
  %5622 = call %nyx_string* @nyx_string_concat(%nyx_string* %5620, %nyx_string* %5621)
  %5623 = getelementptr [3 x i8], [3 x i8]* @.str849, i32 0, i32 0
  %5624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %5623, i64 2)
  %5625 = call %nyx_string* @nyx_string_concat(%nyx_string* %5622, %nyx_string* %5624)
  %5626 = load { i64, i8* }*, { i64, i8* }** %5438
  %5627 = call i64 @nyx_array_length({ i64, i8* }* %5626)
  %5628 = call %nyx_string* @nyx_string_from_int(i64 %5627)
  %5629 = call %nyx_string* @nyx_string_concat(%nyx_string* %5625, %nyx_string* %5628)
  %5630 = getelementptr [22 x i8], [22 x i8]* @.str850, i32 0, i32 0
  %5631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %5630, i64 21)
  %5632 = call %nyx_string* @nyx_string_concat(%nyx_string* %5629, %nyx_string* %5631)
  %5633 = call i8* @nyx_string_to_cstr(%nyx_string* %5632)
  call void @nyx_print_string(i8* %5633)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, %nyx_string*, i1, %nyx_string*, i64, %nyx_string*, i1, i1, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %5634 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %5635 = ptrtoint %SharedEnv_main* %5634 to i64
  %5636 = call i8* @GC_malloc(i64 %5635)
  %5637 = bitcast i8* %5636 to %SharedEnv_main*
  %5638 = call { i64, i8* }* @nyx_get_args()
  %5639 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 0
  store { i64, i8* }* %5638, { i64, i8* }** %5639
  %5640 = getelementptr [6 x i8], [6 x i8]* @.str851, i32 0, i32 0
  %5641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %5640, i64 5)
  %5642 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 1
  store %nyx_string* %5641, %nyx_string** %5642
  %5643 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 2
  store i1 0, i1* %5643
  %5644 = getelementptr [1 x i8], [1 x i8]* @.str852, i32 0, i32 0
  %5645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %5644, i64 0)
  %5646 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 3
  store %nyx_string* %5645, %nyx_string** %5646
  %5647 = load { i64, i8* }*, { i64, i8* }** %5639
  %5648 = call i64 @nyx_array_length({ i64, i8* }* %5647)
  %5649 = icmp sge i64 %5648, 2
  br i1 %5649, label %then944, label %else945
then944:
  %5650 = load { i64, i8* }*, { i64, i8* }** %5639
  %5651 = call i64 @nyx_array_get_checked({ i64, i8* }* %5650, i64 1, i64 2)
  %5652 = inttoptr i64 %5651 to %nyx_string*
  %5653 = alloca %nyx_string*
  store %nyx_string* %5652, %nyx_string** %5653
  %5654 = load %nyx_string*, %nyx_string** %5653
  store %nyx_string* %5654, %nyx_string** %5642
  br label %merge946
else945:
  br label %merge946
merge946:
  %5655 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 4
  store i64 2, i64* %5655
  %5656 = getelementptr [1 x i8], [1 x i8]* @.str853, i32 0, i32 0
  %5657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %5656, i64 0)
  %5658 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 5
  store %nyx_string* %5657, %nyx_string** %5658
  %5659 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 6
  store i1 0, i1* %5659
  %5660 = alloca i1
  store i1 true, i1* %5660
  %5661 = alloca i1
  store i1 true, i1* %5661
  %5662 = load %nyx_string*, %nyx_string** %5642
  %5663 = getelementptr [6 x i8], [6 x i8]* @.str854, i32 0, i32 0
  %5664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %5663, i64 5)
  %5665 = call i1 @nyx_string_equals(%nyx_string* %5662, %nyx_string* %5664)
  br i1 %5665, label %sc_or_end948, label %sc_or_rhs947
sc_or_rhs947:
  %5666 = load %nyx_string*, %nyx_string** %5642
  %5667 = getelementptr [4 x i8], [4 x i8]* @.str855, i32 0, i32 0
  %5668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %5667, i64 3)
  %5669 = call i1 @nyx_string_equals(%nyx_string* %5666, %nyx_string* %5668)
  store i1 %5669, i1* %5661
  br label %sc_or_end948
sc_or_end948:
  %5670 = load i1, i1* %5661
  br i1 %5670, label %sc_or_end950, label %sc_or_rhs949
sc_or_rhs949:
  %5671 = load %nyx_string*, %nyx_string** %5642
  %5672 = getelementptr [5 x i8], [5 x i8]* @.str856, i32 0, i32 0
  %5673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %5672, i64 4)
  %5674 = call i1 @nyx_string_equals(%nyx_string* %5671, %nyx_string* %5673)
  store i1 %5674, i1* %5660
  br label %sc_or_end950
sc_or_end950:
  %5675 = load i1, i1* %5660
  %5676 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 7
  store i1 %5675, i1* %5676
  %5677 = getelementptr [3 x i8], [3 x i8]* @.str857, i32 0, i32 0
  %5678 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %5677, i64 2)
  %5679 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 8
  store %nyx_string* %5678, %nyx_string** %5679
  %5680 = getelementptr [10 x i8], [10 x i8]* @.str858, i32 0, i32 0
  %5681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %5680, i64 9)
  %5682 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 9
  store %nyx_string* %5681, %nyx_string** %5682
  %5683 = getelementptr [7 x i8], [7 x i8]* @.str859, i32 0, i32 0
  %5684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %5683, i64 6)
  %5685 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 10
  store %nyx_string* %5684, %nyx_string** %5685
  %5686 = getelementptr [3 x i8], [3 x i8]* @.str860, i32 0, i32 0
  %5687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %5686, i64 2)
  %5688 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 11
  store %nyx_string* %5687, %nyx_string** %5688
  %5689 = getelementptr [9 x i8], [9 x i8]* @.str861, i32 0, i32 0
  %5690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %5689, i64 8)
  %5691 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 12
  store %nyx_string* %5690, %nyx_string** %5691
  %5692 = getelementptr [63 x i8], [63 x i8]* @.str862, i32 0, i32 0
  %5693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %5692, i64 62)
  %5694 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 13
  store %nyx_string* %5693, %nyx_string** %5694
  %5695 = getelementptr [1 x i8], [1 x i8]* @.str863, i32 0, i32 0
  %5696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %5695, i64 0)
  %5697 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 14
  store %nyx_string* %5696, %nyx_string** %5697
  %5698 = getelementptr [28 x i8], [28 x i8]* @.str864, i32 0, i32 0
  %5699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %5698, i64 27)
  %5700 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 15
  store %nyx_string* %5699, %nyx_string** %5700
  %5701 = getelementptr [4 x i8], [4 x i8]* @.str865, i32 0, i32 0
  %5702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %5701, i64 3)
  %5703 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 16
  store %nyx_string* %5702, %nyx_string** %5703
  %5704 = call i8* @llvm.stacksave()
  br label %while_cond951
while_cond951:
  %5705 = load i64, i64* %5655
  %5706 = load { i64, i8* }*, { i64, i8* }** %5639
  %5707 = call i64 @nyx_array_length({ i64, i8* }* %5706)
  %5708 = icmp slt i64 %5705, %5707
  br i1 %5708, label %while_body952, label %while_end953
while_body952:
  call void @llvm.stackrestore(i8* %5704)
  %5709 = load { i64, i8* }*, { i64, i8* }** %5639
  %5710 = load i64, i64* %5655
  %5711 = call i64 @nyx_array_get_checked({ i64, i8* }* %5709, i64 %5710, i64 2)
  %5712 = inttoptr i64 %5711 to %nyx_string*
  %5713 = alloca %nyx_string*
  store %nyx_string* %5712, %nyx_string** %5713
  %5714 = load %nyx_string*, %nyx_string** %5713
  %5715 = load %nyx_string*, %nyx_string** %5679
  %5716 = call i1 @nyx_string_equals(%nyx_string* %5714, %nyx_string* %5715)
  br i1 %5716, label %then954, label %else955
then954:
  %5717 = load { i64, i8* }*, { i64, i8* }** %5639
  %5718 = call i64 @nyx_array_length({ i64, i8* }* %5717)
  store i64 %5718, i64* %5655
  br label %merge956
else955:
  %5719 = load %nyx_string*, %nyx_string** %5713
  %5720 = load %nyx_string*, %nyx_string** %5682
  %5721 = call i1 @nyx_string_equals(%nyx_string* %5719, %nyx_string* %5720)
  br i1 %5721, label %then957, label %else958
then957:
  store i1 1, i1* %5643
  br label %merge959
else958:
  %5722 = alloca i1
  store i1 true, i1* %5722
  %5723 = load %nyx_string*, %nyx_string** %5713
  %5724 = load %nyx_string*, %nyx_string** %5685
  %5725 = call i1 @nyx_string_equals(%nyx_string* %5723, %nyx_string* %5724)
  br i1 %5725, label %sc_or_end961, label %sc_or_rhs960
sc_or_rhs960:
  %5726 = load %nyx_string*, %nyx_string** %5713
  %5727 = load %nyx_string*, %nyx_string** %5688
  %5728 = call i1 @nyx_string_equals(%nyx_string* %5726, %nyx_string* %5727)
  store i1 %5728, i1* %5722
  br label %sc_or_end961
sc_or_end961:
  %5729 = load i1, i1* %5722
  br i1 %5729, label %then962, label %else963
then962:
  store i1 1, i1* %5659
  br label %merge964
else963:
  %5730 = load %nyx_string*, %nyx_string** %5713
  %5731 = load %nyx_string*, %nyx_string** %5691
  %5732 = call i1 @nyx_string_equals(%nyx_string* %5730, %nyx_string* %5731)
  br i1 %5732, label %then965, label %else966
then965:
  %5733 = load i64, i64* %5655
  %5734 = add i64 %5733, 1
  %5735 = load { i64, i8* }*, { i64, i8* }** %5639
  %5736 = call i64 @nyx_array_length({ i64, i8* }* %5735)
  %5737 = icmp slt i64 %5734, %5736
  br i1 %5737, label %then968, label %else969
then968:
  %5738 = load { i64, i8* }*, { i64, i8* }** %5639
  %5739 = load i64, i64* %5655
  %5740 = add i64 %5739, 1
  %5741 = call i64 @nyx_array_get_checked({ i64, i8* }* %5738, i64 %5740, i64 2)
  %5742 = inttoptr i64 %5741 to %nyx_string*
  %5743 = alloca %nyx_string*
  store %nyx_string* %5742, %nyx_string** %5743
  %5744 = load %nyx_string*, %nyx_string** %5743
  store %nyx_string* %5744, %nyx_string** %5646
  %5745 = load i64, i64* %5655
  %5746 = add i64 %5745, 1
  store i64 %5746, i64* %5655
  br label %merge970
else969:
  %5747 = load %nyx_string*, %nyx_string** %5694
  store %nyx_string* %5747, %nyx_string** %5658
  br label %merge970
merge970:
  br label %merge967
else966:
  %5748 = alloca i1
  store i1 false, i1* %5748
  %5749 = load i1, i1* %5676
  br i1 %5749, label %sc_and_rhs971, label %sc_and_end972
sc_and_rhs971:
  %5750 = load %nyx_string*, %nyx_string** %5713
  %5751 = call i64 @nyx_string_byte_length(%nyx_string* %5750)
  %5752 = icmp sgt i64 %5751, 1
  store i1 %5752, i1* %5748
  br label %sc_and_end972
sc_and_end972:
  %5753 = load i1, i1* %5748
  br i1 %5753, label %then973, label %else974
then973:
  %5754 = alloca i1
  store i1 false, i1* %5754
  %5755 = load %nyx_string*, %nyx_string** %5713
  %5756 = call i8 @nyx_string_char_at(%nyx_string* %5755, i64 0)
  %5757 = zext i8 %5756 to i64
  %5758 = getelementptr [1 x i8], [1 x i8]* @.str866, i32 0, i32 0
  %5759 = load i8, i8* %5758
  %5760 = zext i8 %5759 to i64
  %5761 = icmp eq i64 %5757, %5760
  br i1 %5761, label %sc_and_rhs976, label %sc_and_end977
sc_and_rhs976:
  %5762 = load %nyx_string*, %nyx_string** %5658
  %5763 = load %nyx_string*, %nyx_string** %5697
  %5764 = call i1 @nyx_string_equals(%nyx_string* %5762, %nyx_string* %5763)
  store i1 %5764, i1* %5754
  br label %sc_and_end977
sc_and_end977:
  %5765 = load i1, i1* %5754
  br i1 %5765, label %then978, label %else979
then978:
  %5766 = load %nyx_string*, %nyx_string** %5700
  %5767 = load %nyx_string*, %nyx_string** %5642
  %5768 = call %nyx_string* @nyx_string_concat(%nyx_string* %5766, %nyx_string* %5767)
  %5769 = load %nyx_string*, %nyx_string** %5703
  %5770 = call %nyx_string* @nyx_string_concat(%nyx_string* %5768, %nyx_string* %5769)
  %5771 = load %nyx_string*, %nyx_string** %5713
  %5772 = call %nyx_string* @nyx_string_concat(%nyx_string* %5770, %nyx_string* %5771)
  store %nyx_string* %5772, %nyx_string** %5658
  br label %merge980
else979:
  br label %merge980
merge980:
  br label %merge975
else974:
  br label %merge975
merge975:
  br label %merge967
merge967:
  br label %merge964
merge964:
  br label %merge959
merge959:
  br label %merge956
merge956:
  %5773 = load i64, i64* %5655
  %5774 = add i64 %5773, 1
  store i64 %5774, i64* %5655
  br label %while_cond951
while_end953:
  %5775 = alloca i1
  store i1 false, i1* %5775
  %5776 = load i1, i1* %5659
  br i1 %5776, label %sc_and_rhs981, label %sc_and_end982
sc_and_rhs981:
  %5777 = load i1, i1* %5676
  store i1 %5777, i1* %5775
  br label %sc_and_end982
sc_and_end982:
  %5778 = load i1, i1* %5775
  br i1 %5778, label %then983, label %else984
then983:
  %5779 = getelementptr [5 x i8], [5 x i8]* @.str867, i32 0, i32 0
  %5780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %5779, i64 4)
  %5781 = load %nyx_string*, %nyx_string** %5642
  %5782 = call %nyx_string* @nyx_string_concat(%nyx_string* %5780, %nyx_string* %5781)
  %5783 = getelementptr [24 x i8], [24 x i8]* @.str868, i32 0, i32 0
  %5784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %5783, i64 23)
  %5785 = call %nyx_string* @nyx_string_concat(%nyx_string* %5782, %nyx_string* %5784)
  %5786 = call i8* @nyx_string_to_cstr(%nyx_string* %5785)
  call void @nyx_print_string(i8* %5786)
  %5787 = getelementptr [42 x i8], [42 x i8]* @.str869, i32 0, i32 0
  %5788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %5787, i64 41)
  %5789 = call i8* @nyx_string_to_cstr(%nyx_string* %5788)
  call void @nyx_print_string(i8* %5789)
  %5790 = getelementptr [88 x i8], [88 x i8]* @.str870, i32 0, i32 0
  %5791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %5790, i64 87)
  %5792 = call i8* @nyx_string_to_cstr(%nyx_string* %5791)
  call void @nyx_print_string(i8* %5792)
  %5793 = getelementptr [34 x i8], [34 x i8]* @.str871, i32 0, i32 0
  %5794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %5793, i64 33)
  %5795 = call i8* @nyx_string_to_cstr(%nyx_string* %5794)
  call void @nyx_print_string(i8* %5795)
  %5796 = getelementptr [1 x i8], [1 x i8]* @.str872, i32 0, i32 0
  %5797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %5796, i64 0)
  %5798 = call i8* @nyx_string_to_cstr(%nyx_string* %5797)
  call void @nyx_print_string(i8* %5798)
  %5799 = getelementptr [71 x i8], [71 x i8]* @.str873, i32 0, i32 0
  %5800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %5799, i64 70)
  %5801 = call i8* @nyx_string_to_cstr(%nyx_string* %5800)
  call void @nyx_print_string(i8* %5801)
  ret i64 0
else984:
  br label %merge985
merge985:
  %5802 = load %nyx_string*, %nyx_string** %5658
  %5803 = getelementptr [1 x i8], [1 x i8]* @.str874, i32 0, i32 0
  %5804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %5803, i64 0)
  %5805 = call i1 @nyx_string_equals(%nyx_string* %5802, %nyx_string* %5804)
  %5806 = xor i1 %5805, true
  br i1 %5806, label %then986, label %else987
then986:
  %5807 = getelementptr [8 x i8], [8 x i8]* @.str875, i32 0, i32 0
  %5808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %5807, i64 7)
  %5809 = load %nyx_string*, %nyx_string** %5658
  %5810 = call %nyx_string* @nyx_string_concat(%nyx_string* %5808, %nyx_string* %5809)
  %5811 = call i8* @nyx_string_to_cstr(%nyx_string* %5810)
  call void @nyx_print_string(i8* %5811)
  %5812 = getelementptr [8 x i8], [8 x i8]* @.str876, i32 0, i32 0
  %5813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %5812, i64 7)
  %5814 = load %nyx_string*, %nyx_string** %5642
  %5815 = call %nyx_string* @nyx_string_concat(%nyx_string* %5813, %nyx_string* %5814)
  %5816 = getelementptr [37 x i8], [37 x i8]* @.str877, i32 0, i32 0
  %5817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %5816, i64 36)
  %5818 = call %nyx_string* @nyx_string_concat(%nyx_string* %5815, %nyx_string* %5817)
  %5819 = call i8* @nyx_string_to_cstr(%nyx_string* %5818)
  call void @nyx_print_string(i8* %5819)
  ret i64 1
else987:
  br label %merge988
merge988:
  %5820 = getelementptr [6 x i8], [6 x i8]* @.str878, i32 0, i32 0
  %5821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %5820, i64 5)
  %5822 = call %nyx_string* @toolchain_version()
  %5823 = call %nyx_string* @nyx_string_concat(%nyx_string* %5821, %nyx_string* %5822)
  %5824 = getelementptr [6 x i8], [6 x i8]* @.str879, i32 0, i32 0
  %5825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %5824, i64 5)
  %5826 = call %nyx_string* @nyx_string_concat(%nyx_string* %5823, %nyx_string* %5825)
  %5827 = load %nyx_string*, %nyx_string** %5642
  %5828 = call %nyx_string* @nyx_string_concat(%nyx_string* %5826, %nyx_string* %5827)
  %5829 = call i8* @nyx_string_to_cstr(%nyx_string* %5828)
  call void @nyx_print_string(i8* %5829)
  %5830 = load %nyx_string*, %nyx_string** %5642
  %5831 = getelementptr [5 x i8], [5 x i8]* @.str880, i32 0, i32 0
  %5832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %5831, i64 4)
  %5833 = call i1 @nyx_string_equals(%nyx_string* %5830, %nyx_string* %5832)
  br i1 %5833, label %then989, label %else990
then989:
  %5834 = getelementptr [1 x i8], [1 x i8]* @.str881, i32 0, i32 0
  %5835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %5834, i64 0)
  %5836 = alloca %nyx_string*
  store %nyx_string* %5835, %nyx_string** %5836
  %5837 = getelementptr [1 x i8], [1 x i8]* @.str882, i32 0, i32 0
  %5838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %5837, i64 0)
  %5839 = alloca %nyx_string*
  store %nyx_string* %5838, %nyx_string** %5839
  %5840 = getelementptr [1 x i8], [1 x i8]* @.str883, i32 0, i32 0
  %5841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %5840, i64 0)
  %5842 = alloca %nyx_string*
  store %nyx_string* %5841, %nyx_string** %5842
  %5843 = alloca i1
  store i1 0, i1* %5843
  %5844 = getelementptr [1 x i8], [1 x i8]* @.str884, i32 0, i32 0
  %5845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %5844, i64 0)
  %5846 = alloca %nyx_string*
  store %nyx_string* %5845, %nyx_string** %5846
  %5847 = getelementptr [1 x i8], [1 x i8]* @.str885, i32 0, i32 0
  %5848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %5847, i64 0)
  %5849 = alloca %nyx_string*
  store %nyx_string* %5848, %nyx_string** %5849
  %5850 = alloca i64
  store i64 2, i64* %5850
  %5851 = getelementptr [7 x i8], [7 x i8]* @.str886, i32 0, i32 0
  %5852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %5851, i64 6)
  %5853 = alloca %nyx_string*
  store %nyx_string* %5852, %nyx_string** %5853
  %5854 = getelementptr [8 x i8], [8 x i8]* @.str887, i32 0, i32 0
  %5855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %5854, i64 7)
  %5856 = alloca %nyx_string*
  store %nyx_string* %5855, %nyx_string** %5856
  %5857 = getelementptr [1 x i8], [1 x i8]* @.str888, i32 0, i32 0
  %5858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %5857, i64 0)
  %5859 = alloca %nyx_string*
  store %nyx_string* %5858, %nyx_string** %5859
  %5860 = getelementptr [3 x i8], [3 x i8]* @.str889, i32 0, i32 0
  %5861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %5860, i64 2)
  %5862 = alloca %nyx_string*
  store %nyx_string* %5861, %nyx_string** %5862
  %5863 = getelementptr [8 x i8], [8 x i8]* @.str890, i32 0, i32 0
  %5864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %5863, i64 7)
  %5865 = alloca %nyx_string*
  store %nyx_string* %5864, %nyx_string** %5865
  %5866 = getelementptr [9 x i8], [9 x i8]* @.str891, i32 0, i32 0
  %5867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %5866, i64 8)
  %5868 = alloca %nyx_string*
  store %nyx_string* %5867, %nyx_string** %5868
  %5869 = getelementptr [6 x i8], [6 x i8]* @.str892, i32 0, i32 0
  %5870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %5869, i64 5)
  %5871 = alloca %nyx_string*
  store %nyx_string* %5870, %nyx_string** %5871
  %5872 = call i8* @llvm.stacksave()
  br label %while_cond992
while_cond992:
  %5873 = load i64, i64* %5850
  %5874 = load { i64, i8* }*, { i64, i8* }** %5639
  %5875 = call i64 @nyx_array_length({ i64, i8* }* %5874)
  %5876 = icmp slt i64 %5873, %5875
  br i1 %5876, label %while_body993, label %while_end994
while_body993:
  call void @llvm.stackrestore(i8* %5872)
  %5877 = load { i64, i8* }*, { i64, i8* }** %5639
  %5878 = load i64, i64* %5850
  %5879 = call i64 @nyx_array_get_checked({ i64, i8* }* %5877, i64 %5878, i64 2)
  %5880 = inttoptr i64 %5879 to %nyx_string*
  %5881 = alloca %nyx_string*
  store %nyx_string* %5880, %nyx_string** %5881
  %5882 = alloca i1
  store i1 0, i1* %5882
  %5883 = alloca i1
  store i1 true, i1* %5883
  %5884 = load %nyx_string*, %nyx_string** %5881
  %5885 = load %nyx_string*, %nyx_string** %5853
  %5886 = call i1 @nyx_string_equals(%nyx_string* %5884, %nyx_string* %5885)
  br i1 %5886, label %sc_or_end996, label %sc_or_rhs995
sc_or_rhs995:
  %5887 = load %nyx_string*, %nyx_string** %5881
  %5888 = load %nyx_string*, %nyx_string** %5856
  %5889 = call i1 @nyx_string_equals(%nyx_string* %5887, %nyx_string* %5888)
  store i1 %5889, i1* %5883
  br label %sc_or_end996
sc_or_end996:
  %5890 = load i1, i1* %5883
  br i1 %5890, label %then997, label %else998
then997:
  store i1 1, i1* %5882
  %5891 = load %nyx_string*, %nyx_string** %5859
  %5892 = alloca %nyx_string*
  store %nyx_string* %5891, %nyx_string** %5892
  %5893 = load i64, i64* %5850
  %5894 = add i64 %5893, 1
  %5895 = load { i64, i8* }*, { i64, i8* }** %5639
  %5896 = call i64 @nyx_array_length({ i64, i8* }* %5895)
  %5897 = icmp slt i64 %5894, %5896
  br i1 %5897, label %then1000, label %else1001
then1000:
  %5898 = load { i64, i8* }*, { i64, i8* }** %5639
  %5899 = load i64, i64* %5850
  %5900 = add i64 %5899, 1
  %5901 = call i64 @nyx_array_get_checked({ i64, i8* }* %5898, i64 %5900, i64 2)
  %5902 = inttoptr i64 %5901 to %nyx_string*
  %5903 = alloca %nyx_string*
  store %nyx_string* %5902, %nyx_string** %5903
  %5904 = load %nyx_string*, %nyx_string** %5903
  %5905 = load %nyx_string*, %nyx_string** %5862
  %5906 = call i1 @nyx_string_starts_with(%nyx_string* %5904, %nyx_string* %5905)
  %5907 = icmp eq i1 %5906, 0
  br i1 %5907, label %then1003, label %else1004
then1003:
  %5908 = load %nyx_string*, %nyx_string** %5903
  store %nyx_string* %5908, %nyx_string** %5892
  br label %merge1005
else1004:
  br label %merge1005
merge1005:
  br label %merge1002
else1001:
  br label %merge1002
merge1002:
  %5909 = load %nyx_string*, %nyx_string** %5892
  %5910 = load %nyx_string*, %nyx_string** %5859
  %5911 = call i1 @nyx_string_equals(%nyx_string* %5909, %nyx_string* %5910)
  br i1 %5911, label %then1006, label %else1007
then1006:
  %5912 = load %nyx_string*, %nyx_string** %5881
  store %nyx_string* %5912, %nyx_string** %5849
  br label %merge1008
else1007:
  %5913 = load %nyx_string*, %nyx_string** %5881
  %5914 = load %nyx_string*, %nyx_string** %5853
  %5915 = call i1 @nyx_string_equals(%nyx_string* %5913, %nyx_string* %5914)
  br i1 %5915, label %then1009, label %else1010
then1009:
  %5916 = load %nyx_string*, %nyx_string** %5892
  store %nyx_string* %5916, %nyx_string** %5839
  br label %merge1011
else1010:
  br label %merge1011
merge1011:
  %5917 = load %nyx_string*, %nyx_string** %5881
  %5918 = load %nyx_string*, %nyx_string** %5856
  %5919 = call i1 @nyx_string_equals(%nyx_string* %5917, %nyx_string* %5918)
  br i1 %5919, label %then1012, label %else1013
then1012:
  %5920 = load %nyx_string*, %nyx_string** %5892
  store %nyx_string* %5920, %nyx_string** %5842
  br label %merge1014
else1013:
  br label %merge1014
merge1014:
  %5921 = load i64, i64* %5850
  %5922 = add i64 %5921, 1
  store i64 %5922, i64* %5850
  br label %merge1008
merge1008:
  br label %merge999
else998:
  br label %merge999
merge999:
  %5923 = alloca i1
  store i1 false, i1* %5923
  %5924 = load i1, i1* %5882
  %5925 = icmp eq i1 %5924, 0
  br i1 %5925, label %sc_and_rhs1015, label %sc_and_end1016
sc_and_rhs1015:
  %5926 = load %nyx_string*, %nyx_string** %5881
  %5927 = load %nyx_string*, %nyx_string** %5865
  %5928 = call i1 @nyx_string_starts_with(%nyx_string* %5926, %nyx_string* %5927)
  store i1 %5928, i1* %5923
  br label %sc_and_end1016
sc_and_end1016:
  %5929 = load i1, i1* %5923
  br i1 %5929, label %then1017, label %else1018
then1017:
  store i1 1, i1* %5882
  %5930 = load %nyx_string*, %nyx_string** %5881
  %5931 = load %nyx_string*, %nyx_string** %5881
  %5932 = call i64 @nyx_string_byte_length(%nyx_string* %5931)
  %5933 = call %nyx_string* @nyx_string_substring(%nyx_string* %5930, i64 7, i64 %5932)
  store %nyx_string* %5933, %nyx_string** %5839
  %5934 = load %nyx_string*, %nyx_string** %5839
  %5935 = load %nyx_string*, %nyx_string** %5859
  %5936 = call i1 @nyx_string_equals(%nyx_string* %5934, %nyx_string* %5935)
  br i1 %5936, label %then1020, label %else1021
then1020:
  %5937 = load %nyx_string*, %nyx_string** %5853
  store %nyx_string* %5937, %nyx_string** %5849
  br label %merge1022
else1021:
  br label %merge1022
merge1022:
  br label %merge1019
else1018:
  br label %merge1019
merge1019:
  %5938 = alloca i1
  store i1 false, i1* %5938
  %5939 = load i1, i1* %5882
  %5940 = icmp eq i1 %5939, 0
  br i1 %5940, label %sc_and_rhs1023, label %sc_and_end1024
sc_and_rhs1023:
  %5941 = load %nyx_string*, %nyx_string** %5881
  %5942 = load %nyx_string*, %nyx_string** %5868
  %5943 = call i1 @nyx_string_starts_with(%nyx_string* %5941, %nyx_string* %5942)
  store i1 %5943, i1* %5938
  br label %sc_and_end1024
sc_and_end1024:
  %5944 = load i1, i1* %5938
  br i1 %5944, label %then1025, label %else1026
then1025:
  store i1 1, i1* %5882
  %5945 = load %nyx_string*, %nyx_string** %5881
  %5946 = load %nyx_string*, %nyx_string** %5881
  %5947 = call i64 @nyx_string_byte_length(%nyx_string* %5946)
  %5948 = call %nyx_string* @nyx_string_substring(%nyx_string* %5945, i64 8, i64 %5947)
  store %nyx_string* %5948, %nyx_string** %5842
  %5949 = load %nyx_string*, %nyx_string** %5842
  %5950 = load %nyx_string*, %nyx_string** %5859
  %5951 = call i1 @nyx_string_equals(%nyx_string* %5949, %nyx_string* %5950)
  br i1 %5951, label %then1028, label %else1029
then1028:
  %5952 = load %nyx_string*, %nyx_string** %5856
  store %nyx_string* %5952, %nyx_string** %5849
  br label %merge1030
else1029:
  br label %merge1030
merge1030:
  br label %merge1027
else1026:
  br label %merge1027
merge1027:
  %5953 = alloca i1
  store i1 false, i1* %5953
  %5954 = load i1, i1* %5882
  %5955 = icmp eq i1 %5954, 0
  br i1 %5955, label %sc_and_rhs1031, label %sc_and_end1032
sc_and_rhs1031:
  %5956 = load %nyx_string*, %nyx_string** %5881
  %5957 = load %nyx_string*, %nyx_string** %5871
  %5958 = call i1 @nyx_string_equals(%nyx_string* %5956, %nyx_string* %5957)
  store i1 %5958, i1* %5953
  br label %sc_and_end1032
sc_and_end1032:
  %5959 = load i1, i1* %5953
  br i1 %5959, label %then1033, label %else1034
then1033:
  store i1 1, i1* %5882
  store i1 1, i1* %5843
  br label %merge1035
else1034:
  br label %merge1035
merge1035:
  %5960 = alloca i1
  store i1 false, i1* %5960
  %5961 = load i1, i1* %5882
  %5962 = icmp eq i1 %5961, 0
  br i1 %5962, label %sc_and_rhs1036, label %sc_and_end1037
sc_and_rhs1036:
  %5963 = load %nyx_string*, %nyx_string** %5881
  %5964 = load %nyx_string*, %nyx_string** %5862
  %5965 = call i1 @nyx_string_starts_with(%nyx_string* %5963, %nyx_string* %5964)
  store i1 %5965, i1* %5960
  br label %sc_and_end1037
sc_and_end1037:
  %5966 = load i1, i1* %5960
  br i1 %5966, label %then1038, label %else1039
then1038:
  store i1 1, i1* %5882
  %5967 = load %nyx_string*, %nyx_string** %5881
  store %nyx_string* %5967, %nyx_string** %5846
  br label %merge1040
else1039:
  br label %merge1040
merge1040:
  %5968 = load i1, i1* %5882
  %5969 = icmp eq i1 %5968, 0
  br i1 %5969, label %then1041, label %else1042
then1041:
  %5970 = load %nyx_string*, %nyx_string** %5836
  %5971 = load %nyx_string*, %nyx_string** %5859
  %5972 = call i1 @nyx_string_equals(%nyx_string* %5970, %nyx_string* %5971)
  br i1 %5972, label %then1044, label %else1045
then1044:
  %5973 = load %nyx_string*, %nyx_string** %5881
  store %nyx_string* %5973, %nyx_string** %5836
  br label %merge1046
else1045:
  br label %merge1046
merge1046:
  br label %merge1043
else1042:
  br label %merge1043
merge1043:
  %5974 = load i64, i64* %5850
  %5975 = add i64 %5974, 1
  store i64 %5975, i64* %5850
  br label %while_cond992
while_end994:
  %5976 = load %nyx_string*, %nyx_string** %5846
  %5977 = getelementptr [1 x i8], [1 x i8]* @.str893, i32 0, i32 0
  %5978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %5977, i64 0)
  %5979 = call i1 @nyx_string_equals(%nyx_string* %5976, %nyx_string* %5978)
  %5980 = xor i1 %5979, true
  br i1 %5980, label %then1047, label %else1048
then1047:
  %5981 = getelementptr [42 x i8], [42 x i8]* @.str894, i32 0, i32 0
  %5982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %5981, i64 41)
  %5983 = load %nyx_string*, %nyx_string** %5846
  %5984 = call %nyx_string* @nyx_string_concat(%nyx_string* %5982, %nyx_string* %5983)
  %5985 = call i8* @nyx_string_to_cstr(%nyx_string* %5984)
  call void @nyx_print_string(i8* %5985)
  %5986 = getelementptr [80 x i8], [80 x i8]* @.str895, i32 0, i32 0
  %5987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %5986, i64 79)
  %5988 = call i8* @nyx_string_to_cstr(%nyx_string* %5987)
  call void @nyx_print_string(i8* %5988)
  ret i64 1
else1048:
  br label %merge1049
merge1049:
  %5989 = load %nyx_string*, %nyx_string** %5849
  %5990 = getelementptr [1 x i8], [1 x i8]* @.str896, i32 0, i32 0
  %5991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %5990, i64 0)
  %5992 = call i1 @nyx_string_equals(%nyx_string* %5989, %nyx_string* %5991)
  %5993 = xor i1 %5992, true
  br i1 %5993, label %then1050, label %else1051
then1050:
  %5994 = getelementptr [8 x i8], [8 x i8]* @.str897, i32 0, i32 0
  %5995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %5994, i64 7)
  %5996 = load %nyx_string*, %nyx_string** %5849
  %5997 = call %nyx_string* @nyx_string_concat(%nyx_string* %5995, %nyx_string* %5996)
  %5998 = getelementptr [19 x i8], [19 x i8]* @.str898, i32 0, i32 0
  %5999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %5998, i64 18)
  %6000 = call %nyx_string* @nyx_string_concat(%nyx_string* %5997, %nyx_string* %5999)
  %6001 = call i8* @nyx_string_to_cstr(%nyx_string* %6000)
  call void @nyx_print_string(i8* %6001)
  %6002 = getelementptr [80 x i8], [80 x i8]* @.str899, i32 0, i32 0
  %6003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %6002, i64 79)
  %6004 = call i8* @nyx_string_to_cstr(%nyx_string* %6003)
  call void @nyx_print_string(i8* %6004)
  ret i64 1
else1051:
  br label %merge1052
merge1052:
  %6005 = load %nyx_string*, %nyx_string** %5839
  %6006 = getelementptr [1 x i8], [1 x i8]* @.str900, i32 0, i32 0
  %6007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %6006, i64 0)
  %6008 = call i1 @nyx_string_equals(%nyx_string* %6005, %nyx_string* %6007)
  br i1 %6008, label %then1053, label %else1054
then1053:
  %6009 = getelementptr [9 x i8], [9 x i8]* @.str901, i32 0, i32 0
  %6010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %6009, i64 8)
  %6011 = call i8* @nyx_string_to_cstr(%nyx_string* %6010)
  %6012 = call %nyx_string* @nyx_getenv(i8* %6011)
  %6013 = alloca %nyx_string*
  store %nyx_string* %6012, %nyx_string** %6013
  %6014 = load %nyx_string*, %nyx_string** %6013
  %6015 = getelementptr [3 x i8], [3 x i8]* @.str902, i32 0, i32 0
  %6016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %6015, i64 2)
  %6017 = call i1 @nyx_string_equals(%nyx_string* %6014, %nyx_string* %6016)
  br i1 %6017, label %then1056, label %else1057
then1056:
  %6018 = getelementptr [3 x i8], [3 x i8]* @.str903, i32 0, i32 0
  %6019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %6018, i64 2)
  store %nyx_string* %6019, %nyx_string** %5839
  br label %merge1058
else1057:
  br label %merge1058
merge1058:
  %6020 = load %nyx_string*, %nyx_string** %5839
  %6021 = getelementptr [1 x i8], [1 x i8]* @.str904, i32 0, i32 0
  %6022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %6021, i64 0)
  %6023 = call i1 @nyx_string_equals(%nyx_string* %6020, %nyx_string* %6022)
  br i1 %6023, label %then1059, label %else1060
then1059:
  %6024 = getelementptr [3 x i8], [3 x i8]* @.str905, i32 0, i32 0
  %6025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %6024, i64 2)
  store %nyx_string* %6025, %nyx_string** %5839
  br label %merge1061
else1060:
  br label %merge1061
merge1061:
  br label %merge1055
else1054:
  br label %merge1055
merge1055:
  %6026 = alloca i1
  store i1 false, i1* %6026
  %6027 = load %nyx_string*, %nyx_string** %5839
  %6028 = getelementptr [3 x i8], [3 x i8]* @.str906, i32 0, i32 0
  %6029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %6028, i64 2)
  %6030 = call i1 @nyx_string_equals(%nyx_string* %6027, %nyx_string* %6029)
  %6031 = xor i1 %6030, true
  br i1 %6031, label %sc_and_rhs1062, label %sc_and_end1063
sc_and_rhs1062:
  %6032 = load %nyx_string*, %nyx_string** %5839
  %6033 = getelementptr [3 x i8], [3 x i8]* @.str907, i32 0, i32 0
  %6034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %6033, i64 2)
  %6035 = call i1 @nyx_string_equals(%nyx_string* %6032, %nyx_string* %6034)
  %6036 = xor i1 %6035, true
  store i1 %6036, i1* %6026
  br label %sc_and_end1063
sc_and_end1063:
  %6037 = load i1, i1* %6026
  br i1 %6037, label %then1064, label %else1065
then1064:
  %6038 = getelementptr [27 x i8], [27 x i8]* @.str908, i32 0, i32 0
  %6039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %6038, i64 26)
  %6040 = load %nyx_string*, %nyx_string** %5839
  %6041 = call %nyx_string* @nyx_string_concat(%nyx_string* %6039, %nyx_string* %6040)
  %6042 = getelementptr [29 x i8], [29 x i8]* @.str909, i32 0, i32 0
  %6043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %6042, i64 28)
  %6044 = call %nyx_string* @nyx_string_concat(%nyx_string* %6041, %nyx_string* %6043)
  %6045 = call i8* @nyx_string_to_cstr(%nyx_string* %6044)
  call void @nyx_print_string(i8* %6045)
  ret i64 1
else1065:
  br label %merge1066
merge1066:
  %6046 = load %nyx_string*, %nyx_string** %5842
  %6047 = call i1 @validate_agents(%nyx_string* %6046)
  %6048 = icmp eq i1 %6047, 0
  br i1 %6048, label %then1067, label %else1068
then1067:
  ret i64 1
else1068:
  br label %merge1069
merge1069:
  %6049 = load %nyx_string*, %nyx_string** %5836
  %6050 = load %nyx_string*, %nyx_string** %5839
  %6051 = load %nyx_string*, %nyx_string** %5842
  %6052 = call i1 @run_init(%nyx_string* %6049, %nyx_string* %6050, %nyx_string* %6051)
  %6053 = alloca i1
  store i1 %6052, i1* %6053
  %6054 = load i1, i1* %6053
  %6055 = icmp eq i1 %6054, 0
  br i1 %6055, label %then1070, label %else1071
then1070:
  ret i64 1
else1071:
  br label %merge1072
merge1072:
  %6056 = load i1, i1* %5843
  br i1 %6056, label %then1073, label %else1074
then1073:
  %6057 = load %nyx_string*, %nyx_string** %5836
  %6058 = alloca %nyx_string*
  store %nyx_string* %6057, %nyx_string** %6058
  %6059 = load %nyx_string*, %nyx_string** %6058
  %6060 = getelementptr [1 x i8], [1 x i8]* @.str910, i32 0, i32 0
  %6061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %6060, i64 0)
  %6062 = call i1 @nyx_string_equals(%nyx_string* %6059, %nyx_string* %6061)
  br i1 %6062, label %then1076, label %else1077
then1076:
  %6063 = getelementptr [2 x i8], [2 x i8]* @.str911, i32 0, i32 0
  %6064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %6063, i64 1)
  store %nyx_string* %6064, %nyx_string** %6058
  br label %merge1078
else1077:
  br label %merge1078
merge1078:
  %6065 = getelementptr [1 x i8], [1 x i8]* @.str912, i32 0, i32 0
  %6066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %6065, i64 0)
  %6067 = call i8* @nyx_string_to_cstr(%nyx_string* %6066)
  call void @nyx_print_string(i8* %6067)
  %6068 = load %nyx_string*, %nyx_string** %6058
  %6069 = load %nyx_string*, %nyx_string** %5839
  %6070 = call i1 @run_sdd_init(%nyx_string* %6068, %nyx_string* %6069)
  %6071 = alloca i1
  store i1 %6070, i1* %6071
  %6072 = load i1, i1* %6071
  %6073 = icmp eq i1 %6072, 0
  br i1 %6073, label %then1079, label %else1080
then1079:
  ret i64 1
else1080:
  br label %merge1081
merge1081:
  br label %merge1075
else1074:
  br label %merge1075
merge1075:
  ret i64 0
else990:
  br label %merge991
merge991:
  %6074 = load %nyx_string*, %nyx_string** %5642
  %6075 = getelementptr [4 x i8], [4 x i8]* @.str913, i32 0, i32 0
  %6076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %6075, i64 3)
  %6077 = call i1 @nyx_string_equals(%nyx_string* %6074, %nyx_string* %6076)
  br i1 %6077, label %then1082, label %else1083
then1082:
  %6078 = getelementptr [1 x i8], [1 x i8]* @.str914, i32 0, i32 0
  %6079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %6078, i64 0)
  %6080 = alloca %nyx_string*
  store %nyx_string* %6079, %nyx_string** %6080
  %6081 = load { i64, i8* }*, { i64, i8* }** %5639
  %6082 = call i64 @nyx_array_length({ i64, i8* }* %6081)
  %6083 = icmp sge i64 %6082, 3
  br i1 %6083, label %then1085, label %else1086
then1085:
  %6084 = load { i64, i8* }*, { i64, i8* }** %5639
  %6085 = call i64 @nyx_array_get_checked({ i64, i8* }* %6084, i64 2, i64 2)
  %6086 = inttoptr i64 %6085 to %nyx_string*
  %6087 = alloca %nyx_string*
  store %nyx_string* %6086, %nyx_string** %6087
  %6088 = load %nyx_string*, %nyx_string** %6087
  store %nyx_string* %6088, %nyx_string** %6080
  br label %merge1087
else1086:
  br label %merge1087
merge1087:
  %6089 = load %nyx_string*, %nyx_string** %6080
  %6090 = getelementptr [5 x i8], [5 x i8]* @.str915, i32 0, i32 0
  %6091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %6090, i64 4)
  %6092 = call i1 @nyx_string_equals(%nyx_string* %6089, %nyx_string* %6091)
  br i1 %6092, label %then1088, label %else1089
then1088:
  %6093 = getelementptr [2 x i8], [2 x i8]* @.str916, i32 0, i32 0
  %6094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %6093, i64 1)
  %6095 = getelementptr [2 x i8], [2 x i8]* @.str917, i32 0, i32 0
  %6096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %6095, i64 1)
  %6097 = call %nyx_string* @project_lang(%nyx_string* %6096)
  %6098 = call i1 @run_sdd_init(%nyx_string* %6094, %nyx_string* %6097)
  %6099 = alloca i1
  store i1 %6098, i1* %6099
  %6100 = load i1, i1* %6099
  br i1 %6100, label %then1091, label %else1092
then1091:
  ret i64 0
else1092:
  br label %merge1093
merge1093:
  ret i64 1
else1089:
  br label %merge1090
merge1090:
  %6101 = load %nyx_string*, %nyx_string** %6080
  %6102 = getelementptr [9 x i8], [9 x i8]* @.str918, i32 0, i32 0
  %6103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %6102, i64 8)
  %6104 = call i1 @nyx_string_equals(%nyx_string* %6101, %nyx_string* %6103)
  br i1 %6104, label %then1094, label %else1095
then1094:
  %6105 = getelementptr [2 x i8], [2 x i8]* @.str919, i32 0, i32 0
  %6106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %6105, i64 1)
  %6107 = getelementptr [2 x i8], [2 x i8]* @.str920, i32 0, i32 0
  %6108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %6107, i64 1)
  %6109 = call %nyx_string* @project_lang(%nyx_string* %6108)
  %6110 = call i1 @run_sdd_evidence(%nyx_string* %6106, %nyx_string* %6109)
  %6111 = alloca i1
  store i1 %6110, i1* %6111
  %6112 = load i1, i1* %6111
  br i1 %6112, label %then1097, label %else1098
then1097:
  ret i64 0
else1098:
  br label %merge1099
merge1099:
  ret i64 1
else1095:
  br label %merge1096
merge1096:
  %6113 = load %nyx_string*, %nyx_string** %6080
  %6114 = getelementptr [1 x i8], [1 x i8]* @.str921, i32 0, i32 0
  %6115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %6114, i64 0)
  %6116 = call i1 @nyx_string_equals(%nyx_string* %6113, %nyx_string* %6115)
  br i1 %6116, label %then1100, label %else1101
then1100:
  %6117 = getelementptr [57 x i8], [57 x i8]* @.str922, i32 0, i32 0
  %6118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %6117, i64 56)
  %6119 = call i8* @nyx_string_to_cstr(%nyx_string* %6118)
  call void @nyx_print_string(i8* %6119)
  br label %merge1102
else1101:
  %6120 = getelementptr [48 x i8], [48 x i8]* @.str923, i32 0, i32 0
  %6121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %6120, i64 47)
  %6122 = load %nyx_string*, %nyx_string** %6080
  %6123 = call %nyx_string* @nyx_string_concat(%nyx_string* %6121, %nyx_string* %6122)
  %6124 = getelementptr [29 x i8], [29 x i8]* @.str924, i32 0, i32 0
  %6125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %6124, i64 28)
  %6126 = call %nyx_string* @nyx_string_concat(%nyx_string* %6123, %nyx_string* %6125)
  %6127 = call i8* @nyx_string_to_cstr(%nyx_string* %6126)
  call void @nyx_print_string(i8* %6127)
  br label %merge1102
merge1102:
  %6128 = getelementptr [69 x i8], [69 x i8]* @.str925, i32 0, i32 0
  %6129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %6128, i64 68)
  %6130 = call i8* @nyx_string_to_cstr(%nyx_string* %6129)
  call void @nyx_print_string(i8* %6130)
  %6131 = getelementptr [79 x i8], [79 x i8]* @.str926, i32 0, i32 0
  %6132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %6131, i64 78)
  %6133 = call i8* @nyx_string_to_cstr(%nyx_string* %6132)
  call void @nyx_print_string(i8* %6133)
  ret i64 1
else1083:
  br label %merge1084
merge1084:
  %6134 = load %nyx_string*, %nyx_string** %5642
  %6135 = getelementptr [4 x i8], [4 x i8]* @.str927, i32 0, i32 0
  %6136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %6135, i64 3)
  %6137 = call i1 @nyx_string_equals(%nyx_string* %6134, %nyx_string* %6136)
  br i1 %6137, label %then1103, label %else1104
then1103:
  %6138 = load { i64, i8* }*, { i64, i8* }** %5639
  %6139 = call i64 @nyx_array_length({ i64, i8* }* %6138)
  %6140 = icmp slt i64 %6139, 3
  br i1 %6140, label %then1106, label %else1107
then1106:
  %6141 = getelementptr [51 x i8], [51 x i8]* @.str928, i32 0, i32 0
  %6142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %6141, i64 50)
  %6143 = call i8* @nyx_string_to_cstr(%nyx_string* %6142)
  call void @nyx_print_string(i8* %6143)
  ret i64 1
else1107:
  br label %merge1108
merge1108:
  %6144 = load { i64, i8* }*, { i64, i8* }** %5639
  %6145 = call i64 @nyx_array_get_checked({ i64, i8* }* %6144, i64 2, i64 2)
  %6146 = inttoptr i64 %6145 to %nyx_string*
  %6147 = alloca %nyx_string*
  store %nyx_string* %6146, %nyx_string** %6147
  %6148 = getelementptr [1 x i8], [1 x i8]* @.str929, i32 0, i32 0
  %6149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %6148, i64 0)
  %6150 = alloca %nyx_string*
  store %nyx_string* %6149, %nyx_string** %6150
  %6151 = load { i64, i8* }*, { i64, i8* }** %5639
  %6152 = call i64 @nyx_array_length({ i64, i8* }* %6151)
  %6153 = icmp sge i64 %6152, 5
  br i1 %6153, label %then1109, label %else1110
then1109:
  %6154 = load { i64, i8* }*, { i64, i8* }** %5639
  %6155 = call i64 @nyx_array_get_checked({ i64, i8* }* %6154, i64 3, i64 2)
  %6156 = inttoptr i64 %6155 to %nyx_string*
  %6157 = alloca %nyx_string*
  store %nyx_string* %6156, %nyx_string** %6157
  %6158 = load %nyx_string*, %nyx_string** %6157
  %6159 = getelementptr [7 x i8], [7 x i8]* @.str930, i32 0, i32 0
  %6160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %6159, i64 6)
  %6161 = call i1 @nyx_string_equals(%nyx_string* %6158, %nyx_string* %6160)
  br i1 %6161, label %then1112, label %else1113
then1112:
  %6162 = load { i64, i8* }*, { i64, i8* }** %5639
  %6163 = call i64 @nyx_array_get_checked({ i64, i8* }* %6162, i64 4, i64 2)
  %6164 = inttoptr i64 %6163 to %nyx_string*
  %6165 = alloca %nyx_string*
  store %nyx_string* %6164, %nyx_string** %6165
  %6166 = load %nyx_string*, %nyx_string** %6165
  store %nyx_string* %6166, %nyx_string** %6150
  br label %merge1114
else1113:
  br label %merge1114
merge1114:
  br label %merge1111
else1110:
  br label %merge1111
merge1111:
  %6167 = call { i64, i8* }* @nyx_array_new_ptr()
  %6168 = alloca { i64, i8* }*
  store { i64, i8* }* %6167, { i64, i8* }** %6168
  %6169 = call { i64, i8* }* @nyx_array_new_ptr()
  %6170 = alloca { i64, i8* }*
  store { i64, i8* }* %6169, { i64, i8* }** %6170
  %6171 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %6172 = ptrtoint %ProjectConfig* %6171 to i64
  %6173 = call i8* @GC_malloc(i64 %6172)
  %6174 = bitcast i8* %6173 to %ProjectConfig*
  %6175 = getelementptr [8 x i8], [8 x i8]* @.str931, i32 0, i32 0
  %6176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %6175, i64 7)
  %6177 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 0
  store %nyx_string* %6176, %nyx_string** %6177
  %6178 = getelementptr [6 x i8], [6 x i8]* @.str932, i32 0, i32 0
  %6179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %6178, i64 5)
  %6180 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 1
  store %nyx_string* %6179, %nyx_string** %6180
  %6181 = getelementptr [1 x i8], [1 x i8]* @.str933, i32 0, i32 0
  %6182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %6181, i64 0)
  %6183 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 2
  store %nyx_string* %6182, %nyx_string** %6183
  %6184 = getelementptr [1 x i8], [1 x i8]* @.str934, i32 0, i32 0
  %6185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %6184, i64 0)
  %6186 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 3
  store %nyx_string* %6185, %nyx_string** %6186
  %6187 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 4
  store i1 0, i1* %6187
  %6188 = getelementptr [1 x i8], [1 x i8]* @.str935, i32 0, i32 0
  %6189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %6188, i64 0)
  %6190 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 5
  store %nyx_string* %6189, %nyx_string** %6190
  %6191 = load { i64, i8* }*, { i64, i8* }** %6168
  %6192 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 6
  store { i64, i8* }* %6191, { i64, i8* }** %6192
  %6193 = load { i64, i8* }*, { i64, i8* }** %6170
  %6194 = getelementptr %ProjectConfig, %ProjectConfig* %6174, i32 0, i32 7
  store { i64, i8* }* %6193, { i64, i8* }** %6194
  %6195 = load %ProjectConfig, %ProjectConfig* %6174
  %6196 = alloca %ProjectConfig
  store %ProjectConfig %6195, %ProjectConfig* %6196
  %6197 = load %nyx_string*, %nyx_string** %6147
  %6198 = load %nyx_string*, %nyx_string** %6150
  %6199 = load %ProjectConfig, %ProjectConfig* %6196
  %6200 = call i1 @run_add(%nyx_string* %6197, %nyx_string* %6198, %ProjectConfig %6199)
  %6201 = alloca i1
  store i1 %6200, i1* %6201
  %6202 = load i1, i1* %6201
  br i1 %6202, label %then1115, label %else1116
then1115:
  ret i64 0
else1116:
  br label %merge1117
merge1117:
  ret i64 1
else1104:
  br label %merge1105
merge1105:
  %6203 = load %nyx_string*, %nyx_string** %5642
  %6204 = getelementptr [7 x i8], [7 x i8]* @.str936, i32 0, i32 0
  %6205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %6204, i64 6)
  %6206 = call i1 @nyx_string_equals(%nyx_string* %6203, %nyx_string* %6205)
  br i1 %6206, label %then1118, label %else1119
then1118:
  %6207 = getelementptr [1 x i8], [1 x i8]* @.str937, i32 0, i32 0
  %6208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %6207, i64 0)
  %6209 = alloca %nyx_string*
  store %nyx_string* %6208, %nyx_string** %6209
  %6210 = alloca i1
  store i1 0, i1* %6210
  %6211 = alloca i64
  store i64 2, i64* %6211
  %6212 = getelementptr [7 x i8], [7 x i8]* @.str938, i32 0, i32 0
  %6213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %6212, i64 6)
  %6214 = alloca %nyx_string*
  store %nyx_string* %6213, %nyx_string** %6214
  %6215 = getelementptr [10 x i8], [10 x i8]* @.str939, i32 0, i32 0
  %6216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %6215, i64 9)
  %6217 = alloca %nyx_string*
  store %nyx_string* %6216, %nyx_string** %6217
  %6218 = call i8* @llvm.stacksave()
  br label %while_cond1121
while_cond1121:
  %6219 = load i64, i64* %6211
  %6220 = load { i64, i8* }*, { i64, i8* }** %5639
  %6221 = call i64 @nyx_array_length({ i64, i8* }* %6220)
  %6222 = icmp slt i64 %6219, %6221
  br i1 %6222, label %while_body1122, label %while_end1123
while_body1122:
  call void @llvm.stackrestore(i8* %6218)
  %6223 = load { i64, i8* }*, { i64, i8* }** %5639
  %6224 = load i64, i64* %6211
  %6225 = call i64 @nyx_array_get_checked({ i64, i8* }* %6223, i64 %6224, i64 2)
  %6226 = inttoptr i64 %6225 to %nyx_string*
  %6227 = alloca %nyx_string*
  store %nyx_string* %6226, %nyx_string** %6227
  %6228 = load %nyx_string*, %nyx_string** %6227
  %6229 = load %nyx_string*, %nyx_string** %6214
  %6230 = call i1 @nyx_string_equals(%nyx_string* %6228, %nyx_string* %6229)
  br i1 %6230, label %then1124, label %else1125
then1124:
  store i1 1, i1* %6210
  br label %merge1126
else1125:
  %6231 = load %nyx_string*, %nyx_string** %6227
  %6232 = load %nyx_string*, %nyx_string** %6217
  %6233 = call i1 @nyx_string_equals(%nyx_string* %6231, %nyx_string* %6232)
  %6234 = xor i1 %6233, true
  br i1 %6234, label %then1127, label %else1128
then1127:
  %6235 = load %nyx_string*, %nyx_string** %6227
  store %nyx_string* %6235, %nyx_string** %6209
  br label %merge1129
else1128:
  br label %merge1129
merge1129:
  br label %merge1126
merge1126:
  %6236 = load i64, i64* %6211
  %6237 = add i64 %6236, 1
  store i64 %6237, i64* %6211
  br label %while_cond1121
while_end1123:
  %6238 = load %nyx_string*, %nyx_string** %6209
  %6239 = load i1, i1* %6210
  %6240 = call i1 @run_report(%nyx_string* %6238, i1 %6239)
  %6241 = alloca i1
  store i1 %6240, i1* %6241
  %6242 = load i1, i1* %6241
  br i1 %6242, label %then1130, label %else1131
then1130:
  ret i64 0
else1131:
  br label %merge1132
merge1132:
  ret i64 1
else1119:
  br label %merge1120
merge1120:
  %6243 = load %nyx_string*, %nyx_string** %5642
  %6244 = getelementptr [13 x i8], [13 x i8]* @.str940, i32 0, i32 0
  %6245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %6244, i64 12)
  %6246 = call i1 @nyx_string_equals(%nyx_string* %6243, %nyx_string* %6245)
  br i1 %6246, label %then1133, label %else1134
then1133:
  %6247 = getelementptr [1 x i8], [1 x i8]* @.str941, i32 0, i32 0
  %6248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %6247, i64 0)
  %6249 = alloca %nyx_string*
  store %nyx_string* %6248, %nyx_string** %6249
  %6250 = load { i64, i8* }*, { i64, i8* }** %5639
  %6251 = call i64 @nyx_array_length({ i64, i8* }* %6250)
  %6252 = icmp sge i64 %6251, 3
  br i1 %6252, label %then1136, label %else1137
then1136:
  %6253 = load { i64, i8* }*, { i64, i8* }** %5639
  %6254 = call i64 @nyx_array_get_checked({ i64, i8* }* %6253, i64 2, i64 2)
  %6255 = inttoptr i64 %6254 to %nyx_string*
  %6256 = alloca %nyx_string*
  store %nyx_string* %6255, %nyx_string** %6256
  %6257 = load %nyx_string*, %nyx_string** %6256
  %6258 = getelementptr [10 x i8], [10 x i8]* @.str942, i32 0, i32 0
  %6259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %6258, i64 9)
  %6260 = call i1 @nyx_string_equals(%nyx_string* %6257, %nyx_string* %6259)
  %6261 = xor i1 %6260, true
  br i1 %6261, label %then1139, label %else1140
then1139:
  %6262 = load %nyx_string*, %nyx_string** %6256
  store %nyx_string* %6262, %nyx_string** %6249
  br label %merge1141
else1140:
  br label %merge1141
merge1141:
  br label %merge1138
else1137:
  br label %merge1138
merge1138:
  %6263 = load %nyx_string*, %nyx_string** %6249
  %6264 = call i1 @run_capabilities(%nyx_string* %6263)
  %6265 = alloca i1
  store i1 %6264, i1* %6265
  %6266 = load i1, i1* %6265
  br i1 %6266, label %then1142, label %else1143
then1142:
  ret i64 0
else1143:
  br label %merge1144
merge1144:
  ret i64 1
else1134:
  br label %merge1135
merge1135:
  %6267 = getelementptr [9 x i8], [9 x i8]* @.str943, i32 0, i32 0
  %6268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %6267, i64 8)
  %6269 = call i8* @nyx_string_to_cstr(%nyx_string* %6268)
  %6270 = call i1 @nyx_file_exists(i8* %6269)
  %6271 = xor i1 %6270, true
  br i1 %6271, label %then1145, label %else1146
then1145:
  %6272 = getelementptr [47 x i8], [47 x i8]* @.str944, i32 0, i32 0
  %6273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %6272, i64 46)
  %6274 = call i8* @nyx_string_to_cstr(%nyx_string* %6273)
  call void @nyx_print_string(i8* %6274)
  %6275 = getelementptr [24 x i8], [24 x i8]* @.str945, i32 0, i32 0
  %6276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %6275, i64 23)
  %6277 = call i8* @nyx_string_to_cstr(%nyx_string* %6276)
  call void @nyx_print_string(i8* %6277)
  %6278 = getelementptr [12 x i8], [12 x i8]* @.str946, i32 0, i32 0
  %6279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %6278, i64 11)
  %6280 = call i8* @nyx_string_to_cstr(%nyx_string* %6279)
  call void @nyx_print_string(i8* %6280)
  %6281 = getelementptr [17 x i8], [17 x i8]* @.str947, i32 0, i32 0
  %6282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %6281, i64 16)
  %6283 = call i8* @nyx_string_to_cstr(%nyx_string* %6282)
  call void @nyx_print_string(i8* %6283)
  %6284 = getelementptr [20 x i8], [20 x i8]* @.str948, i32 0, i32 0
  %6285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %6284, i64 19)
  %6286 = call i8* @nyx_string_to_cstr(%nyx_string* %6285)
  call void @nyx_print_string(i8* %6286)
  %6287 = getelementptr [23 x i8], [23 x i8]* @.str949, i32 0, i32 0
  %6288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %6287, i64 22)
  %6289 = call i8* @nyx_string_to_cstr(%nyx_string* %6288)
  call void @nyx_print_string(i8* %6289)
  ret i64 1
else1146:
  br label %merge1147
merge1147:
  %6290 = getelementptr [9 x i8], [9 x i8]* @.str950, i32 0, i32 0
  %6291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %6290, i64 8)
  %6292 = call i8* @nyx_string_to_cstr(%nyx_string* %6291)
  %6293 = call %nyx_string* @nyx_read_file(i8* %6292)
  %6294 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 17
  store %nyx_string* %6293, %nyx_string** %6294
  %6295 = load %nyx_string*, %nyx_string** %6294
  %6296 = call %ProjectConfig @parse_toml(%nyx_string* %6295)
  %6297 = getelementptr %SharedEnv_main, %SharedEnv_main* %5637, i32 0, i32 18
  store %ProjectConfig %6296, %ProjectConfig* %6297
  %6298 = getelementptr %ProjectConfig, %ProjectConfig* %6297, i32 0, i32 0
  %6299 = load %nyx_string*, %nyx_string** %6298
  %6300 = getelementptr [1 x i8], [1 x i8]* @.str951, i32 0, i32 0
  %6301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %6300, i64 0)
  %6302 = call i1 @nyx_string_equals(%nyx_string* %6299, %nyx_string* %6301)
  br i1 %6302, label %then1148, label %else1149
then1148:
  %6303 = getelementptr [45 x i8], [45 x i8]* @.str952, i32 0, i32 0
  %6304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %6303, i64 44)
  %6305 = call i8* @nyx_string_to_cstr(%nyx_string* %6304)
  call void @nyx_print_string(i8* %6305)
  ret i64 1
else1149:
  br label %merge1150
merge1150:
  %6306 = load %nyx_string*, %nyx_string** %5642
  %6307 = getelementptr [5 x i8], [5 x i8]* @.str953, i32 0, i32 0
  %6308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %6307, i64 4)
  %6309 = call i1 @nyx_string_equals(%nyx_string* %6306, %nyx_string* %6308)
  br i1 %6309, label %then1151, label %else1152
then1151:
  %6310 = load %ProjectConfig, %ProjectConfig* %6297
  %6311 = call i64 @print_info(%ProjectConfig %6310)
  ret i64 0
else1152:
  br label %merge1153
merge1153:
  %6312 = load %nyx_string*, %nyx_string** %5642
  %6313 = getelementptr [6 x i8], [6 x i8]* @.str954, i32 0, i32 0
  %6314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %6313, i64 5)
  %6315 = call i1 @nyx_string_equals(%nyx_string* %6312, %nyx_string* %6314)
  br i1 %6315, label %then1154, label %else1155
then1154:
  %6316 = load %ProjectConfig, %ProjectConfig* %6297
  %6317 = load i1, i1* %5643
  %6318 = load %nyx_string*, %nyx_string** %5646
  %6319 = call i1 @run_build(%ProjectConfig %6316, i1 %6317, %nyx_string* %6318)
  %6320 = alloca i1
  store i1 %6319, i1* %6320
  %6321 = load i1, i1* %6320
  br i1 %6321, label %then1157, label %else1158
then1157:
  %6322 = load %ProjectConfig, %ProjectConfig* %6297
  %6323 = call i64 @write_lockfile(%ProjectConfig %6322)
  %6324 = getelementptr [15 x i8], [15 x i8]* @.str955, i32 0, i32 0
  %6325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %6324, i64 14)
  %6326 = call i8* @nyx_string_to_cstr(%nyx_string* %6325)
  call void @nyx_print_string(i8* %6326)
  ret i64 0
else1158:
  br label %merge1159
merge1159:
  ret i64 1
else1155:
  br label %merge1156
merge1156:
  %6327 = load %nyx_string*, %nyx_string** %5642
  %6328 = getelementptr [4 x i8], [4 x i8]* @.str956, i32 0, i32 0
  %6329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %6328, i64 3)
  %6330 = call i1 @nyx_string_equals(%nyx_string* %6327, %nyx_string* %6329)
  br i1 %6330, label %then1160, label %else1161
then1160:
  %6331 = alloca i64
  store i64 2, i64* %6331
  %6332 = getelementptr [3 x i8], [3 x i8]* @.str957, i32 0, i32 0
  %6333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %6332, i64 2)
  %6334 = alloca %nyx_string*
  store %nyx_string* %6333, %nyx_string** %6334
  %6335 = getelementptr [7 x i8], [7 x i8]* @.str958, i32 0, i32 0
  %6336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %6335, i64 6)
  %6337 = alloca %nyx_string*
  store %nyx_string* %6336, %nyx_string** %6337
  %6338 = getelementptr [3 x i8], [3 x i8]* @.str959, i32 0, i32 0
  %6339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %6338, i64 2)
  %6340 = alloca %nyx_string*
  store %nyx_string* %6339, %nyx_string** %6340
  %6341 = getelementptr [57 x i8], [57 x i8]* @.str960, i32 0, i32 0
  %6342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %6341, i64 56)
  %6343 = alloca %nyx_string*
  store %nyx_string* %6342, %nyx_string** %6343
  %6344 = getelementptr [60 x i8], [60 x i8]* @.str961, i32 0, i32 0
  %6345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %6344, i64 59)
  %6346 = alloca %nyx_string*
  store %nyx_string* %6345, %nyx_string** %6346
  %6347 = getelementptr [1 x i8], [1 x i8]* @.str962, i32 0, i32 0
  %6348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %6347, i64 0)
  %6349 = alloca %nyx_string*
  store %nyx_string* %6348, %nyx_string** %6349
  %6350 = getelementptr [56 x i8], [56 x i8]* @.str963, i32 0, i32 0
  %6351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %6350, i64 55)
  %6352 = alloca %nyx_string*
  store %nyx_string* %6351, %nyx_string** %6352
  %6353 = getelementptr [38 x i8], [38 x i8]* @.str964, i32 0, i32 0
  %6354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %6353, i64 37)
  %6355 = alloca %nyx_string*
  store %nyx_string* %6354, %nyx_string** %6355
  %6356 = call i8* @llvm.stacksave()
  br label %while_cond1163
while_cond1163:
  %6357 = load i64, i64* %6331
  %6358 = load { i64, i8* }*, { i64, i8* }** %5639
  %6359 = call i64 @nyx_array_length({ i64, i8* }* %6358)
  %6360 = icmp slt i64 %6357, %6359
  br i1 %6360, label %while_body1164, label %while_end1165
while_body1164:
  call void @llvm.stackrestore(i8* %6356)
  %6361 = load { i64, i8* }*, { i64, i8* }** %5639
  %6362 = load i64, i64* %6331
  %6363 = call i64 @nyx_array_get_checked({ i64, i8* }* %6361, i64 %6362, i64 2)
  %6364 = inttoptr i64 %6363 to %nyx_string*
  %6365 = alloca %nyx_string*
  store %nyx_string* %6364, %nyx_string** %6365
  %6366 = load %nyx_string*, %nyx_string** %6365
  %6367 = load %nyx_string*, %nyx_string** %6334
  %6368 = call i1 @nyx_string_equals(%nyx_string* %6366, %nyx_string* %6367)
  br i1 %6368, label %then1166, label %else1167
then1166:
  %6369 = load { i64, i8* }*, { i64, i8* }** %5639
  %6370 = call i64 @nyx_array_length({ i64, i8* }* %6369)
  store i64 %6370, i64* %6331
  br label %merge1168
else1167:
  %6371 = alloca i1
  store i1 true, i1* %6371
  %6372 = load %nyx_string*, %nyx_string** %6365
  %6373 = load %nyx_string*, %nyx_string** %6337
  %6374 = call i1 @nyx_string_equals(%nyx_string* %6372, %nyx_string* %6373)
  br i1 %6374, label %sc_or_end1170, label %sc_or_rhs1169
sc_or_rhs1169:
  %6375 = load %nyx_string*, %nyx_string** %6365
  %6376 = load %nyx_string*, %nyx_string** %6340
  %6377 = call i1 @nyx_string_equals(%nyx_string* %6375, %nyx_string* %6376)
  store i1 %6377, i1* %6371
  br label %sc_or_end1170
sc_or_end1170:
  %6378 = load i1, i1* %6371
  br i1 %6378, label %then1171, label %else1172
then1171:
  %6379 = load %nyx_string*, %nyx_string** %6343
  %6380 = call i8* @nyx_string_to_cstr(%nyx_string* %6379)
  call void @nyx_print_string(i8* %6380)
  %6381 = load %nyx_string*, %nyx_string** %6346
  %6382 = call i8* @nyx_string_to_cstr(%nyx_string* %6381)
  call void @nyx_print_string(i8* %6382)
  %6383 = load %nyx_string*, %nyx_string** %6349
  %6384 = call i8* @nyx_string_to_cstr(%nyx_string* %6383)
  call void @nyx_print_string(i8* %6384)
  %6385 = load %nyx_string*, %nyx_string** %6352
  %6386 = call i8* @nyx_string_to_cstr(%nyx_string* %6385)
  call void @nyx_print_string(i8* %6386)
  %6387 = load %nyx_string*, %nyx_string** %6355
  %6388 = call i8* @nyx_string_to_cstr(%nyx_string* %6387)
  call void @nyx_print_string(i8* %6388)
  ret i64 0
else1172:
  br label %merge1173
merge1173:
  %6389 = load i64, i64* %6331
  %6390 = add i64 %6389, 1
  store i64 %6390, i64* %6331
  br label %merge1168
merge1168:
  br label %while_cond1163
while_end1165:
  %6391 = load %ProjectConfig, %ProjectConfig* %6297
  %6392 = load %nyx_string*, %nyx_string** %5646
  %6393 = call i1 @run_build(%ProjectConfig %6391, i1 0, %nyx_string* %6392)
  %6394 = alloca i1
  store i1 %6393, i1* %6394
  %6395 = load i1, i1* %6394
  br i1 %6395, label %then1174, label %else1175
then1174:
  %6396 = load %ProjectConfig, %ProjectConfig* %6297
  %6397 = call i64 @write_lockfile(%ProjectConfig %6396)
  %6398 = getelementptr %ProjectConfig, %ProjectConfig* %6297, i32 0, i32 5
  %6399 = load %nyx_string*, %nyx_string** %6398
  %6400 = alloca %nyx_string*
  store %nyx_string* %6399, %nyx_string** %6400
  %6401 = load %nyx_string*, %nyx_string** %5646
  %6402 = getelementptr [1 x i8], [1 x i8]* @.str965, i32 0, i32 0
  %6403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %6402, i64 0)
  %6404 = call i1 @nyx_string_equals(%nyx_string* %6401, %nyx_string* %6403)
  %6405 = xor i1 %6404, true
  br i1 %6405, label %then1177, label %else1178
then1177:
  %6406 = load %nyx_string*, %nyx_string** %5646
  store %nyx_string* %6406, %nyx_string** %6400
  br label %merge1179
else1178:
  br label %merge1179
merge1179:
  %6407 = load %nyx_string*, %nyx_string** %6400
  %6408 = getelementptr [12 x i8], [12 x i8]* @.str966, i32 0, i32 0
  %6409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %6408, i64 11)
  %6410 = call i1 @nyx_string_equals(%nyx_string* %6407, %nyx_string* %6409)
  br i1 %6410, label %then1180, label %else1181
then1180:
  %6411 = getelementptr [20 x i8], [20 x i8]* @.str967, i32 0, i32 0
  %6412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %6411, i64 19)
  %6413 = getelementptr %ProjectConfig, %ProjectConfig* %6297, i32 0, i32 0
  %6414 = load %nyx_string*, %nyx_string** %6413
  %6415 = call %nyx_string* @nyx_string_concat(%nyx_string* %6412, %nyx_string* %6414)
  %6416 = getelementptr [6 x i8], [6 x i8]* @.str968, i32 0, i32 0
  %6417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %6416, i64 5)
  %6418 = call %nyx_string* @nyx_string_concat(%nyx_string* %6415, %nyx_string* %6417)
  %6419 = alloca %nyx_string*
  store %nyx_string* %6418, %nyx_string** %6419
  %6420 = load %nyx_string*, %nyx_string** %6419
  %6421 = call i8* @nyx_string_to_cstr(%nyx_string* %6420)
  %6422 = call i1 @nyx_file_exists(i8* %6421)
  %6423 = xor i1 %6422, true
  br i1 %6423, label %then1183, label %else1184
then1183:
  %6424 = getelementptr [24 x i8], [24 x i8]* @.str969, i32 0, i32 0
  %6425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %6424, i64 23)
  %6426 = load %nyx_string*, %nyx_string** %6419
  %6427 = call %nyx_string* @nyx_string_concat(%nyx_string* %6425, %nyx_string* %6426)
  %6428 = call i8* @nyx_string_to_cstr(%nyx_string* %6427)
  call void @nyx_print_string(i8* %6428)
  ret i64 1
else1184:
  br label %merge1185
merge1185:
  %6429 = getelementptr [36 x i8], [36 x i8]* @.str970, i32 0, i32 0
  %6430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %6429, i64 35)
  %6431 = call i8* @nyx_string_to_cstr(%nyx_string* %6430)
  %6432 = call i64 @nyx_exec_code(i8* %6431)
  %6433 = icmp ne i64 %6432, 0
  br i1 %6433, label %then1186, label %else1187
then1186:
  %6434 = getelementptr [24 x i8], [24 x i8]* @.str971, i32 0, i32 0
  %6435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %6434, i64 23)
  %6436 = load %nyx_string*, %nyx_string** %6419
  %6437 = call %nyx_string* @nyx_string_concat(%nyx_string* %6435, %nyx_string* %6436)
  %6438 = getelementptr [45 x i8], [45 x i8]* @.str972, i32 0, i32 0
  %6439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %6438, i64 44)
  %6440 = call %nyx_string* @nyx_string_concat(%nyx_string* %6437, %nyx_string* %6439)
  %6441 = call i8* @nyx_string_to_cstr(%nyx_string* %6440)
  call void @nyx_print_string(i8* %6441)
  %6442 = getelementptr [47 x i8], [47 x i8]* @.str973, i32 0, i32 0
  %6443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %6442, i64 46)
  %6444 = load %nyx_string*, %nyx_string** %6419
  %6445 = call %nyx_string* @nyx_string_concat(%nyx_string* %6443, %nyx_string* %6444)
  %6446 = call i8* @nyx_string_to_cstr(%nyx_string* %6445)
  call void @nyx_print_string(i8* %6446)
  ret i64 1
else1187:
  br label %merge1188
merge1188:
  %6447 = getelementptr [10 x i8], [10 x i8]* @.str974, i32 0, i32 0
  %6448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %6447, i64 9)
  %6449 = load %nyx_string*, %nyx_string** %6419
  %6450 = call %nyx_string* @nyx_string_concat(%nyx_string* %6448, %nyx_string* %6449)
  %6451 = alloca %nyx_string*
  store %nyx_string* %6450, %nyx_string** %6451
  %6452 = alloca i64
  store i64 2, i64* %6452
  %6453 = alloca i1
  store i1 0, i1* %6453
  %6454 = getelementptr [2 x i8], [2 x i8]* @.str975, i32 0, i32 0
  %6455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %6454, i64 1)
  %6456 = alloca %nyx_string*
  store %nyx_string* %6455, %nyx_string** %6456
  %6457 = getelementptr [3 x i8], [3 x i8]* @.str976, i32 0, i32 0
  %6458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %6457, i64 2)
  %6459 = alloca %nyx_string*
  store %nyx_string* %6458, %nyx_string** %6459
  %6460 = getelementptr [9 x i8], [9 x i8]* @.str977, i32 0, i32 0
  %6461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %6460, i64 8)
  %6462 = alloca %nyx_string*
  store %nyx_string* %6461, %nyx_string** %6462
  %6463 = call i8* @llvm.stacksave()
  br label %while_cond1189
while_cond1189:
  %6464 = load i64, i64* %6452
  %6465 = load { i64, i8* }*, { i64, i8* }** %5639
  %6466 = call i64 @nyx_array_length({ i64, i8* }* %6465)
  %6467 = icmp slt i64 %6464, %6466
  br i1 %6467, label %while_body1190, label %while_end1191
while_body1190:
  call void @llvm.stackrestore(i8* %6463)
  %6468 = load { i64, i8* }*, { i64, i8* }** %5639
  %6469 = load i64, i64* %6452
  %6470 = call i64 @nyx_array_get_checked({ i64, i8* }* %6468, i64 %6469, i64 2)
  %6471 = inttoptr i64 %6470 to %nyx_string*
  %6472 = alloca %nyx_string*
  store %nyx_string* %6471, %nyx_string** %6472
  %6473 = load i1, i1* %6453
  br i1 %6473, label %then1192, label %else1193
then1192:
  %6474 = load %nyx_string*, %nyx_string** %6451
  %6475 = load %nyx_string*, %nyx_string** %6456
  %6476 = call %nyx_string* @nyx_string_concat(%nyx_string* %6474, %nyx_string* %6475)
  %6477 = load %nyx_string*, %nyx_string** %6472
  %6478 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5637, %nyx_string* %6477)
  %6479 = call %nyx_string* @nyx_string_concat(%nyx_string* %6476, %nyx_string* %6478)
  store %nyx_string* %6479, %nyx_string** %6451
  br label %merge1194
else1193:
  %6480 = load %nyx_string*, %nyx_string** %6472
  %6481 = load %nyx_string*, %nyx_string** %6459
  %6482 = call i1 @nyx_string_equals(%nyx_string* %6480, %nyx_string* %6481)
  br i1 %6482, label %then1195, label %else1196
then1195:
  store i1 1, i1* %6453
  br label %merge1197
else1196:
  %6483 = load %nyx_string*, %nyx_string** %6472
  %6484 = load %nyx_string*, %nyx_string** %6462
  %6485 = call i1 @nyx_string_equals(%nyx_string* %6483, %nyx_string* %6484)
  br i1 %6485, label %then1198, label %else1199
then1198:
  %6486 = load i64, i64* %6452
  %6487 = add i64 %6486, 1
  store i64 %6487, i64* %6452
  br label %merge1200
else1199:
  br label %merge1200
merge1200:
  br label %merge1197
merge1197:
  br label %merge1194
merge1194:
  %6488 = load i64, i64* %6452
  %6489 = add i64 %6488, 1
  store i64 %6489, i64* %6452
  br label %while_cond1189
while_end1191:
  %6490 = load %nyx_string*, %nyx_string** %6451
  %6491 = call i8* @nyx_string_to_cstr(%nyx_string* %6490)
  %6492 = call i64 @nyx_exec_code(i8* %6491)
  ret i64 %6492
else1181:
  br label %merge1182
merge1182:
  %6493 = load %nyx_string*, %nyx_string** %6400
  %6494 = getelementptr [1 x i8], [1 x i8]* @.str978, i32 0, i32 0
  %6495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %6494, i64 0)
  %6496 = call i1 @nyx_string_equals(%nyx_string* %6493, %nyx_string* %6495)
  %6497 = xor i1 %6496, true
  br i1 %6497, label %then1201, label %else1202
then1201:
  %6498 = getelementptr [51 x i8], [51 x i8]* @.str979, i32 0, i32 0
  %6499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %6498, i64 50)
  %6500 = load %nyx_string*, %nyx_string** %6400
  %6501 = call %nyx_string* @nyx_string_concat(%nyx_string* %6499, %nyx_string* %6500)
  %6502 = call i8* @nyx_string_to_cstr(%nyx_string* %6501)
  call void @nyx_print_string(i8* %6502)
  %6503 = getelementptr [28 x i8], [28 x i8]* @.str980, i32 0, i32 0
  %6504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %6503, i64 27)
  %6505 = load %nyx_string*, %nyx_string** %6400
  %6506 = call %nyx_string* @nyx_string_concat(%nyx_string* %6504, %nyx_string* %6505)
  %6507 = getelementptr [46 x i8], [46 x i8]* @.str981, i32 0, i32 0
  %6508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %6507, i64 45)
  %6509 = call %nyx_string* @nyx_string_concat(%nyx_string* %6506, %nyx_string* %6508)
  %6510 = call i8* @nyx_string_to_cstr(%nyx_string* %6509)
  call void @nyx_print_string(i8* %6510)
  ret i64 1
else1202:
  br label %merge1203
merge1203:
  %6511 = getelementptr [3 x i8], [3 x i8]* @.str982, i32 0, i32 0
  %6512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %6511, i64 2)
  %6513 = getelementptr %ProjectConfig, %ProjectConfig* %6297, i32 0, i32 0
  %6514 = load %nyx_string*, %nyx_string** %6513
  %6515 = call %nyx_string* @nyx_string_concat(%nyx_string* %6512, %nyx_string* %6514)
  %6516 = alloca %nyx_string*
  store %nyx_string* %6515, %nyx_string** %6516
  %6517 = alloca i64
  store i64 2, i64* %6517
  %6518 = alloca i1
  store i1 0, i1* %6518
  %6519 = getelementptr [2 x i8], [2 x i8]* @.str983, i32 0, i32 0
  %6520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %6519, i64 1)
  %6521 = alloca %nyx_string*
  store %nyx_string* %6520, %nyx_string** %6521
  %6522 = getelementptr [3 x i8], [3 x i8]* @.str984, i32 0, i32 0
  %6523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %6522, i64 2)
  %6524 = alloca %nyx_string*
  store %nyx_string* %6523, %nyx_string** %6524
  %6525 = getelementptr [10 x i8], [10 x i8]* @.str985, i32 0, i32 0
  %6526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %6525, i64 9)
  %6527 = alloca %nyx_string*
  store %nyx_string* %6526, %nyx_string** %6527
  %6528 = getelementptr [9 x i8], [9 x i8]* @.str986, i32 0, i32 0
  %6529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %6528, i64 8)
  %6530 = alloca %nyx_string*
  store %nyx_string* %6529, %nyx_string** %6530
  %6531 = call i8* @llvm.stacksave()
  br label %while_cond1204
while_cond1204:
  %6532 = load i64, i64* %6517
  %6533 = load { i64, i8* }*, { i64, i8* }** %5639
  %6534 = call i64 @nyx_array_length({ i64, i8* }* %6533)
  %6535 = icmp slt i64 %6532, %6534
  br i1 %6535, label %while_body1205, label %while_end1206
while_body1205:
  call void @llvm.stackrestore(i8* %6531)
  %6536 = load { i64, i8* }*, { i64, i8* }** %5639
  %6537 = load i64, i64* %6517
  %6538 = call i64 @nyx_array_get_checked({ i64, i8* }* %6536, i64 %6537, i64 2)
  %6539 = inttoptr i64 %6538 to %nyx_string*
  %6540 = alloca %nyx_string*
  store %nyx_string* %6539, %nyx_string** %6540
  %6541 = load i1, i1* %6518
  br i1 %6541, label %then1207, label %else1208
then1207:
  %6542 = load %nyx_string*, %nyx_string** %6516
  %6543 = load %nyx_string*, %nyx_string** %6521
  %6544 = call %nyx_string* @nyx_string_concat(%nyx_string* %6542, %nyx_string* %6543)
  %6545 = load %nyx_string*, %nyx_string** %6540
  %6546 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5637, %nyx_string* %6545)
  %6547 = call %nyx_string* @nyx_string_concat(%nyx_string* %6544, %nyx_string* %6546)
  store %nyx_string* %6547, %nyx_string** %6516
  br label %merge1209
else1208:
  %6548 = load %nyx_string*, %nyx_string** %6540
  %6549 = load %nyx_string*, %nyx_string** %6524
  %6550 = call i1 @nyx_string_equals(%nyx_string* %6548, %nyx_string* %6549)
  br i1 %6550, label %then1210, label %else1211
then1210:
  store i1 1, i1* %6518
  br label %merge1212
else1211:
  %6551 = load %nyx_string*, %nyx_string** %6540
  %6552 = load %nyx_string*, %nyx_string** %6527
  %6553 = call i1 @nyx_string_equals(%nyx_string* %6551, %nyx_string* %6552)
  br i1 %6553, label %then1213, label %else1214
then1213:
  %6554 = load i64, i64* %6517
  store i64 %6554, i64* %6517
  br label %merge1215
else1214:
  %6555 = load %nyx_string*, %nyx_string** %6540
  %6556 = load %nyx_string*, %nyx_string** %6530
  %6557 = call i1 @nyx_string_equals(%nyx_string* %6555, %nyx_string* %6556)
  br i1 %6557, label %then1216, label %else1217
then1216:
  %6558 = load i64, i64* %6517
  %6559 = add i64 %6558, 1
  store i64 %6559, i64* %6517
  br label %merge1218
else1217:
  %6560 = load %nyx_string*, %nyx_string** %6516
  %6561 = load %nyx_string*, %nyx_string** %6521
  %6562 = call %nyx_string* @nyx_string_concat(%nyx_string* %6560, %nyx_string* %6561)
  %6563 = load %nyx_string*, %nyx_string** %6540
  %6564 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %5637, %nyx_string* %6563)
  %6565 = call %nyx_string* @nyx_string_concat(%nyx_string* %6562, %nyx_string* %6564)
  store %nyx_string* %6565, %nyx_string** %6516
  br label %merge1218
merge1218:
  br label %merge1215
merge1215:
  br label %merge1212
merge1212:
  br label %merge1209
merge1209:
  %6566 = load i64, i64* %6517
  %6567 = add i64 %6566, 1
  store i64 %6567, i64* %6517
  br label %while_cond1204
while_end1206:
  %6568 = load %nyx_string*, %nyx_string** %6516
  %6569 = call i8* @nyx_string_to_cstr(%nyx_string* %6568)
  %6570 = call i64 @nyx_exec_code(i8* %6569)
  %6571 = alloca i64
  store i64 %6570, i64* %6571
  %6572 = load i64, i64* %6571
  ret i64 %6572
else1175:
  br label %merge1176
merge1176:
  ret i64 1
else1161:
  br label %merge1162
merge1162:
  %6573 = getelementptr [24 x i8], [24 x i8]* @.str987, i32 0, i32 0
  %6574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %6573, i64 23)
  %6575 = load %nyx_string*, %nyx_string** %5642
  %6576 = call %nyx_string* @nyx_string_concat(%nyx_string* %6574, %nyx_string* %6575)
  %6577 = call i8* @nyx_string_to_cstr(%nyx_string* %6576)
  call void @nyx_print_string(i8* %6577)
  %6578 = getelementptr [88 x i8], [88 x i8]* @.str988, i32 0, i32 0
  %6579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %6578, i64 87)
  %6580 = call i8* @nyx_string_to_cstr(%nyx_string* %6579)
  call void @nyx_print_string(i8* %6580)
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
  %20 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %20
  %21 = getelementptr [2 x i8], [2 x i8]* @.str989, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %21, i64 1)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = load %nyx_string*, %nyx_string** %23
  %25 = alloca %nyx_string*
  store %nyx_string* %24, %nyx_string** %25
  %26 = alloca i64
  store i64 0, i64* %26
  %27 = getelementptr [2 x i8], [2 x i8]* @.str990, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %27, i64 1)
  %29 = alloca %nyx_string*
  store %nyx_string* %28, %nyx_string** %29
  %30 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %31 = load i64, i64* %26
  %32 = load %nyx_string*, %nyx_string** %20
  %33 = call i64 @nyx_string_byte_length(%nyx_string* %32)
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %30)
  %35 = load %nyx_string*, %nyx_string** %20
  %36 = load i64, i64* %26
  %37 = load i64, i64* %26
  %38 = add i64 %37, 1
  %39 = call %nyx_string* @nyx_string_substring(%nyx_string* %35, i64 %36, i64 %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = load %nyx_string*, %nyx_string** %40
  %42 = load %nyx_string*, %nyx_string** %23
  %43 = call i1 @nyx_string_equals(%nyx_string* %41, %nyx_string* %42)
  br i1 %43, label %then3, label %else4
then3:
  %44 = load %nyx_string*, %nyx_string** %25
  %45 = load %nyx_string*, %nyx_string** %23
  %46 = call %nyx_string* @nyx_string_concat(%nyx_string* %44, %nyx_string* %45)
  %47 = load %nyx_string*, %nyx_string** %29
  %48 = call %nyx_string* @nyx_string_concat(%nyx_string* %46, %nyx_string* %47)
  %49 = load %nyx_string*, %nyx_string** %23
  %50 = call %nyx_string* @nyx_string_concat(%nyx_string* %48, %nyx_string* %49)
  %51 = load %nyx_string*, %nyx_string** %23
  %52 = call %nyx_string* @nyx_string_concat(%nyx_string* %50, %nyx_string* %51)
  store %nyx_string* %52, %nyx_string** %25
  br label %merge5
else4:
  %53 = load %nyx_string*, %nyx_string** %25
  %54 = load %nyx_string*, %nyx_string** %40
  %55 = call %nyx_string* @nyx_string_concat(%nyx_string* %53, %nyx_string* %54)
  store %nyx_string* %55, %nyx_string** %25
  br label %merge5
merge5:
  %56 = load i64, i64* %26
  %57 = add i64 %56, 1
  store i64 %57, i64* %26
  br label %while_cond0
while_end2:
  %58 = load %nyx_string*, %nyx_string** %25
  %59 = load %nyx_string*, %nyx_string** %23
  %60 = call %nyx_string* @nyx_string_concat(%nyx_string* %58, %nyx_string* %59)
  ret %nyx_string* %60
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %6581 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %6582 = call %nyx_string* @nyx_string_from_ptr(i8* %6581, i64 64)
  store %nyx_string* %6582, %nyx_string** @std_base64____b64_chars
  %6583 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %6584 = call %nyx_string* @nyx_string_from_ptr(i8* %6583, i64 64)
  store %nyx_string* %6584, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

