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
@.str4 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [6 x i8] c"-ERR \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [2 x i8] c":\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [2 x i8] c"$\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"$-1\0a\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [2 x i8] c"*\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [2 x i8] c"*\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"$\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [2 x i8] c"*\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [2 x i8] c"$\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [6 x i8] c"$-1\0a\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [5 x i8] c"AUTH\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c"\00"
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
@.str32 = private unnamed_addr constant [3 x i8] c"\0a\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c"$\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [3 x i8] c"\0a\00"
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
@.str130 = private unnamed_addr constant [11 x i8] c"/templates\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [11 x i8] c"/AGENTS.md\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [17 x i8] c"/CAPABILITIES.md\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [11 x i8] c"/CLAUDE.md\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [14 x i8] c"/.cursorrules\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [15 x i8] c"/CHEATSHEET.md\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [15 x i8] c"/CHEATSHEET.md\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [15 x i8] c"/CHEATSHEET.md\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [8 x i8] c"/LLM.md\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [8 x i8] c"/LLM.md\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [8 x i8] c"/LLM.md\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [9 x i8] c"/.github\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [33 x i8] c"/.github/copilot-instructions.md\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [10 x i8] c"if [ -d '\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [36 x i8] c"/.claude/skills' ]; then mkdir -p '\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [21 x i8] c"/.claude' && cp -r '\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [19 x i8] c"/.claude/skills' '\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [15 x i8] c"/.claude/'; fi\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [25 x i8] c"/.vscode/extensions.json\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [9 x i8] c"/.vscode\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [25 x i8] c"/.vscode/extensions.json\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [25 x i8] c"/.vscode/extensions.json\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [1 x i8] c"\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [19 x i8] c"error: directory '\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [17 x i8] c"' already exists\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [10 x i8] c"mkdir -p \00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [10 x i8] c"/nyx.toml\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [13 x i8] c"/src/main.nx\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [12 x i8] c"  Created: \00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [2 x i8] c"/\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [15 x i8] c"  Next:    cd \00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [12 x i8] c" && nyx run\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [31 x i8] c"error: nyx.toml already exists\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [6 x i8] c"myapp\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [19 x i8] c"[package]\0aname = \22\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [58 x i8] c"\22\0aversion = \220.1.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0a\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [13 x i8] c"mkdir -p src\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [12 x i8] c"src/main.nx\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [35 x i8] c"fn main() {\0a    print(\22Hello from \00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [7 x i8] c"!\22)\0a}\0a\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [2 x i8] c".\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [22 x i8] c"Initialized project: \00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [33 x i8] c"  Created: nyx.toml, src/main.nx\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [21 x i8] c"  Build:   nyx build\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [19 x i8] c"  Run:     nyx run\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [14 x i8] c"   resolving \00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [5 x i8] c"http\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [4 x i8] c"git\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [32 x i8] c"https://github.com/nyxlang-dev/\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [43 x i8] c"GIT_TERMINAL_PROMPT=0 git clone --depth 1 \00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [2 x i8] c" \00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [26 x i8] c"  error: failed to fetch \00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [7 x i8] c" from \00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [12 x i8] c"  Fetched: \00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [128 x i8] c"use of undefined value|defined with type .* but expected|expected instruction|invalid redefinition of|invalid forward reference\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [37 x i8] c"undefined reference|undefined symbol\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [14 x i8] c"if grep -qE '\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [99 x i8] c"echo \22  -> esto es casi seguro un BUG del compilador Nyx (IR invalido), no de tu codigo (archivo: \00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [73 x i8] c"). Reportalo con 'nyx report' (el reporte incluye contexto util).\22 >&2; \00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [6 x i8] c"else \00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [91 x i8] c"echo \22  -> this is almost certainly a Nyx compiler BUG (invalid IR), not your code (file: \00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [76 x i8] c"). Report it with 'nyx report' (the report includes useful context).\22 >&2; \00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [16 x i8] c"elif grep -qE '\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [16 x i8] c"' \22$LOG\22; then \00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [175 x i8] c"echo \22  -> simbolo no encontrado al linkear: si es una funcion extern C tuya, revisa el nombre/lib; si es de la stdlib de Nyx, es un bug -- reportalo con 'nyx report'.\22 >&2; \00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [6 x i8] c"else \00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [184 x i8] c"echo \22  -> symbol not found at link time: if this is your own extern C function, check the name/lib; if it is a stdlib function, it is a Nyx bug -- report it with 'nyx report'.\22 >&2; \00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [6 x i8] c"else \00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [33 x i8] c"if [ \22$NYX_LANG\22 = \22es\22 ]; then \00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [126 x i8] c"echo \22  -> fallo de link sin patron reconocido; si sospechas que es un bug del compilador, reportalo con 'nyx report'.\22 >&2; \00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [6 x i8] c"else \00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [119 x i8] c"echo \22  -> link failure with no recognized pattern; if you suspect a compiler bug, report it with 'nyx report'.\22 >&2; \00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [5 x i8] c"fi; \00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [4 x i8] c"fi\0a\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [1 x i8] c"\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [1 x i8] c"\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [1 x i8] c"\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [3 x i8] c" [\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [2 x i8] c"]\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [3 x i8] c" v\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [1 x i8] c"\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [1 x i8] c"\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [1 x i8] c"\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [1 x i8] c"\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [1 x i8] c"\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c".\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [1 x i8] c"\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [47 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [12 x i8] c" \22$SRC.ll\22 \00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c \00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [36 x i8] c"$RT/net.c $RT/thread.c $RT/regex.c \00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c \00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [55 x i8] c"$RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [39 x i8] c"$RT/compress.c $RT/random.c $RT/url.c \00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [71 x i8] c"$RT/msgpack.c $RT/websocket.c $RT/persist.c $RT/http2.c $RT/process.c \00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [21 x i8] c"$RT/llama_adapter.c \00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [44 x i8] c"|| { echo \22error: clang link failed:\22 >&2; \00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [82 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/iterators.c $RT/file-io.c \00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/random.c $RT/url.c \00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [43 x i8] c"$RT/wasi/main_shim.c $RT/wasi/nyx_arena.c \00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [49 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; \00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [27 x i8] c"cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [13 x i8] c"echo 'built \00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [22 x i8] c".wasm (run: wasmtime \00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [1 x i8] c"\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [1 x i8] c"\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [1 x i8] c"\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [1 x i8] c"\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [8 x i8] c"0.22.10\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [74 x i8] c"> Completá las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [79 x i8] c"FRICTION.md ya existe con contenido — avisale al usuario para que lo revise.\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [79 x i8] c"creado FRICTION.md — completá las secciones (tu asistente IA puede hacerlo)\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [71 x i8] c"y AVISALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [1 x i8] c"\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [56 x i8] c" — corré `nyx report` primero para crear FRICTION.md\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [67 x i8] c"error: el reporte parece vacío — completá la plantilla primero\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [1 x i8] c"\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [1 x i8] c"\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [1 x i8] c"\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [28 x i8] c" — podés abrir un issue:\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [1 x i8] c"\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [1 x i8] c"\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [1 x i8] c"\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [4 x i8] c"std\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [2 x i8] c".\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [1 x i8] c"\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [1 x i8] c"\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [5 x i8] c"http\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [4 x i8] c"web\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [3 x i8] c"db\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [5 x i8] c"json\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [5 x i8] c"file\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [3 x i8] c"io\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [5 x i8] c"path\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [4 x i8] c"net\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [4 x i8] c"url\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [6 x i8] c"async\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [7 x i8] c"random\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [5 x i8] c"time\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [7 x i8] c"string\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [4 x i8] c"set\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [4 x i8] c"box\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [5 x i8] c"args\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [4 x i8] c"log\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [1 x i8] c"\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [1 x i8] c"("
@.str468 = private unnamed_addr constant [1 x i8] c")"
@.str469 = private unnamed_addr constant [2 x i8] c"/\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [1 x i8] c"\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [1 x i8] c"\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [4 x i8] c"///\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [1 x i8] c"\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [2 x i8] c" \00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [2 x i8] c"`\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [6 x i8] c" — \00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [1 x i8] c"("
@.str483 = private unnamed_addr constant [1 x i8] c"{"
@.str484 = private unnamed_addr constant [1 x i8] c"\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [1 x i8] c"\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, buscá acá si un módulo ya lo hace,\0a\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [95 x i8] c"> `import`alo y usalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [1 x i8] c"\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [4 x i8] c"## \00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [1 x i8] c"\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [3 x i8] c" (\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [6 x i8] c"build\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [1 x i8] c"\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [6 x i8] c" — \00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [5 x i8] c"init\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [1 x i8] c"\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [4 x i8] c"add\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [1 x i8] c"\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [8 x i8] c"project\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [1 x i8] c"\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [1 x i8] c"\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [1 x i8] c"\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [7 x i8] c"report\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [1 x i8] c"\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [1 x i8] c"\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [1 x i8] c"\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [5 x i8] c"info\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [6 x i8] c"build\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [4 x i8] c"run\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [3 x i8] c"--\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [7 x i8] c"--help\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [3 x i8] c"-h\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [57 x i8] c"Usage: nyx run [--release] [--target <triple>] [args...]\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [60 x i8] c"       nyx run -- <args...>   (todo tras -- va al programa)\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [1 x i8] c"\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [56 x i8] c"Compila el proyecto (nyx.toml) y lo ejecuta, reenviando\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [38 x i8] c"los argumentos al binario resultante.\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [3 x i8] c"./\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [2 x i8] c" \00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [3 x i8] c"--\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [88 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>]\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [2 x i8] c"'\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str576.c = internal global %nyx_string* null
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
declare i8*           @nyx_string_to_cstr(%nyx_string*)
declare %nyx_string* @nyx_string_concat(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_from_int(i64)
declare %nyx_string* @nyx_string_from_char(i8)
declare %nyx_string* @nyx_string_from_bool(i64)

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
declare double @nyx_slot_as_float_checked({ i64, i8* }*, i64)
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
declare { i64, i8* }* @nyx_string_split(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_read_line()
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


define i64 @resp_parse_len(
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

define internal %nyx_string* @resp_rl(
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

define internal %nyx_string* @resp_rx(
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

define { i64, i8* }* @resp_read_framed(
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
  %66 = call %nyx_string* @resp_rl(i64 %64, i1 %65)
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
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %77)
  %79 = call { i64, i8* }* @nyx_string_split(%nyx_string* %76, %nyx_string* %78)
  ret { i64, i8* }* %79
else32:
  br label %merge33
merge33:
  %80 = load %nyx_string*, %nyx_string** %67
  %81 = load %nyx_string*, %nyx_string** %67
  %82 = call i64 @nyx_string_byte_length(%nyx_string* %81)
  %83 = call %nyx_string* @nyx_string_substring(%nyx_string* %80, i64 1, i64 %82)
  %84 = call i64 @resp_parse_len(%nyx_string* %83)
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
  %102 = call %nyx_string* @resp_rl(i64 %100, i1 %101)
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
  %117 = call i64 @resp_parse_len(%nyx_string* %116)
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
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %129)
  %131 = ptrtoint %nyx_string* %130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %131, i64 2)
  br label %merge60
else59:
  %132 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %132)
  %134 = alloca %nyx_string*
  store %nyx_string* %133, %nyx_string** %134
  %135 = load i64, i64* %118
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %then61, label %else62
then61:
  %137 = load i64, i64* %handle.ptr
  %138 = load i1, i1* %is_tls.ptr
  %139 = load i64, i64* %118
  %140 = call %nyx_string* @resp_rx(i64 %137, i1 %138, i64 %139)
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
  %148 = call %nyx_string* @resp_rx(i64 %146, i1 %147, i64 2)
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

define internal { i64, i8* }* @resp_read_command(
i64 %fd.param) {
  %fd.ptr = alloca i64
  store i64 %fd.param, i64* %fd.ptr
  %160 = load i64, i64* %fd.ptr
  %161 = call { i64, i8* }* @resp_read_framed(i64 %160, i1 0)
  ret { i64, i8* }* %161
}

define internal %nyx_string* @resp_simple_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %162 = call i8* @nyx_sb_new(i64 1024)
  %163 = alloca i8*
  store i8* %162, i8** %163
  %164 = load i8*, i8** %163
  %165 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %165)
  call void @nyx_sb_append(i8* %164, %nyx_string* %166)
  %167 = load i8*, i8** %163
  %168 = load %nyx_string*, %nyx_string** %s.ptr
  call void @nyx_sb_append(i8* %167, %nyx_string* %168)
  %169 = load i8*, i8** %163
  %170 = getelementptr [3 x i8], [3 x i8]* @.str4, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %170)
  call void @nyx_sb_append(i8* %169, %nyx_string* %171)
  %172 = load i8*, i8** %163
  %173 = call %nyx_string* @nyx_sb_to_string(i8* %172)
  ret %nyx_string* %173
}

define internal %nyx_string* @resp_error(
%nyx_string* %msg.param) {
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %174 = call i8* @nyx_sb_new(i64 1024)
  %175 = alloca i8*
  store i8* %174, i8** %175
  %176 = load i8*, i8** %175
  %177 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %177)
  call void @nyx_sb_append(i8* %176, %nyx_string* %178)
  %179 = load i8*, i8** %175
  %180 = load %nyx_string*, %nyx_string** %msg.ptr
  call void @nyx_sb_append(i8* %179, %nyx_string* %180)
  %181 = load i8*, i8** %175
  %182 = getelementptr [3 x i8], [3 x i8]* @.str6, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %182)
  call void @nyx_sb_append(i8* %181, %nyx_string* %183)
  %184 = load i8*, i8** %175
  %185 = call %nyx_string* @nyx_sb_to_string(i8* %184)
  ret %nyx_string* %185
}

define internal %nyx_string* @resp_integer(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %186 = call i8* @nyx_sb_new(i64 1024)
  %187 = alloca i8*
  store i8* %186, i8** %187
  %188 = load i8*, i8** %187
  %189 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %189)
  call void @nyx_sb_append(i8* %188, %nyx_string* %190)
  %191 = load i8*, i8** %187
  %192 = load i64, i64* %n.ptr
  %193 = call %nyx_string* @nyx_string_from_int(i64 %192)
  call void @nyx_sb_append(i8* %191, %nyx_string* %193)
  %194 = load i8*, i8** %187
  %195 = getelementptr [3 x i8], [3 x i8]* @.str8, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %195)
  call void @nyx_sb_append(i8* %194, %nyx_string* %196)
  %197 = load i8*, i8** %187
  %198 = call %nyx_string* @nyx_sb_to_string(i8* %197)
  ret %nyx_string* %198
}

define internal %nyx_string* @resp_bulk_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %199 = call i8* @nyx_sb_new(i64 1024)
  %200 = alloca i8*
  store i8* %199, i8** %200
  %201 = load i8*, i8** %200
  %202 = getelementptr [2 x i8], [2 x i8]* @.str9, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %202)
  call void @nyx_sb_append(i8* %201, %nyx_string* %203)
  %204 = load i8*, i8** %200
  %205 = load %nyx_string*, %nyx_string** %s.ptr
  %206 = call i64 @nyx_string_byte_length(%nyx_string* %205)
  %207 = call %nyx_string* @nyx_string_from_int(i64 %206)
  call void @nyx_sb_append(i8* %204, %nyx_string* %207)
  %208 = load i8*, i8** %200
  %209 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %209)
  call void @nyx_sb_append(i8* %208, %nyx_string* %210)
  %211 = load i8*, i8** %200
  %212 = load %nyx_string*, %nyx_string** %s.ptr
  call void @nyx_sb_append(i8* %211, %nyx_string* %212)
  %213 = load i8*, i8** %200
  %214 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %214)
  call void @nyx_sb_append(i8* %213, %nyx_string* %215)
  %216 = load i8*, i8** %200
  %217 = call %nyx_string* @nyx_sb_to_string(i8* %216)
  ret %nyx_string* %217
}

define internal %nyx_string* @resp_null_bulk(
) {
  %218 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %218)
  ret %nyx_string* %219
}

define internal %nyx_string* @resp_array_header(
i64 %count.param) {
  %count.ptr = alloca i64
  store i64 %count.param, i64* %count.ptr
  %220 = call i8* @nyx_sb_new(i64 1024)
  %221 = alloca i8*
  store i8* %220, i8** %221
  %222 = load i8*, i8** %221
  %223 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %223)
  call void @nyx_sb_append(i8* %222, %nyx_string* %224)
  %225 = load i8*, i8** %221
  %226 = load i64, i64* %count.ptr
  %227 = call %nyx_string* @nyx_string_from_int(i64 %226)
  call void @nyx_sb_append(i8* %225, %nyx_string* %227)
  %228 = load i8*, i8** %221
  %229 = getelementptr [3 x i8], [3 x i8]* @.str14, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %229)
  call void @nyx_sb_append(i8* %228, %nyx_string* %230)
  %231 = load i8*, i8** %221
  %232 = call %nyx_string* @nyx_sb_to_string(i8* %231)
  ret %nyx_string* %232
}

define internal %nyx_string* @resp_bulk_array(
{ i64, i8* }* %items.param) {
  %items.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %items.param, { i64, i8* }** %items.ptr
  %233 = call i8* @nyx_sb_new(i64 1024)
  %234 = alloca i8*
  store i8* %233, i8** %234
  %235 = load i8*, i8** %234
  %236 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %236)
  call void @nyx_sb_append(i8* %235, %nyx_string* %237)
  %238 = load i8*, i8** %234
  %239 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %240 = call i64 @nyx_array_length({ i64, i8* }* %239)
  %241 = call %nyx_string* @nyx_string_from_int(i64 %240)
  call void @nyx_sb_append(i8* %238, %nyx_string* %241)
  %242 = load i8*, i8** %234
  %243 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %243)
  call void @nyx_sb_append(i8* %242, %nyx_string* %244)
  %245 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %245)
  %247 = alloca %nyx_string*
  store %nyx_string* %246, %nyx_string** %247
  %248 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %248)
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

define internal %nyx_string* @resp_mixed_array(
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
  %279 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %278)
  call void @nyx_sb_append(i8* %277, %nyx_string* %279)
  %280 = load i8*, i8** %276
  %281 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %282 = call i64 @nyx_array_length({ i64, i8* }* %281)
  %283 = call %nyx_string* @nyx_string_from_int(i64 %282)
  call void @nyx_sb_append(i8* %280, %nyx_string* %283)
  %284 = load i8*, i8** %276
  %285 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %285)
  call void @nyx_sb_append(i8* %284, %nyx_string* %286)
  %287 = alloca i64
  store i64 0, i64* %287
  %288 = getelementptr [2 x i8], [2 x i8]* @.str21, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %288)
  %290 = alloca %nyx_string*
  store %nyx_string* %289, %nyx_string** %290
  %291 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %292 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %291)
  %293 = alloca %nyx_string*
  store %nyx_string* %292, %nyx_string** %293
  %294 = getelementptr [6 x i8], [6 x i8]* @.str23, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %294)
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
  %304 = call i64 @nyx_array_get({ i64, i8* }* %302, i64 %303)
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
  %344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %343)
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
  %355 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %354)
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
  %369 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %368)
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
  %404 = call i64 @resp_parse_len(%nyx_string* %403)
  %405 = alloca i64
  store i64 %404, i64* %405
  %406 = load i64, i64* %405
  %407 = icmp slt i64 %406, 0
  br i1 %407, label %then109, label %else110
then109:
  %408 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %409 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %408)
  ret %nyx_string* %409
else110:
  br label %merge111
merge111:
  %410 = load i64, i64* %405
  %411 = icmp sgt i64 %410, 16777216
  br i1 %411, label %then112, label %else113
then112:
  %412 = getelementptr [1 x i8], [1 x i8]* @.str28, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %412)
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
  %420 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %419)
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
  %430 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %429)
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
  %439 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %438)
  call void @nyx_sb_append(i8* %437, %nyx_string* %439)
  %440 = load i8*, i8** %436
  %441 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %442 = call i64 @nyx_array_length({ i64, i8* }* %441)
  %443 = call %nyx_string* @nyx_string_from_int(i64 %442)
  call void @nyx_sb_append(i8* %440, %nyx_string* %443)
  %444 = load i8*, i8** %436
  %445 = getelementptr [3 x i8], [3 x i8]* @.str32, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %445)
  call void @nyx_sb_append(i8* %444, %nyx_string* %446)
  %447 = alloca i64
  store i64 0, i64* %447
  %448 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %448)
  %450 = alloca %nyx_string*
  store %nyx_string* %449, %nyx_string** %450
  %451 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %452 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %451)
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
  %492 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %491)
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
  %505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %504)
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
  %514 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %513)
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
  %538 = call i64 @resp_parse_len(%nyx_string* %537)
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
  %573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %572)
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
  %580 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %579)
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
  %591 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %590)
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
  %595 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %594)
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
  %609 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %608)
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
  %613 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %612)
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
  %623 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %622)
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
  %634 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %633)
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
  %647 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %646)
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
  %663 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %662)
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
  %674 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %673)
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
  %687 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %686)
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
  %697 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %696)
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
  %705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %704)
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
  %720 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %719)
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
  %729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %728)
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
  %733 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %732)
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
  %746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %745)
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
  %754 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %753)
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
  %763 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %762)
  %764 = call i1 @nyx_string_equals(%nyx_string* %761, %nyx_string* %763)
  ret i1 %764
}

define internal %nyx_string* @__b64_encode_with(
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
  %771 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %770)
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
  %776 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %775)
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

define internal %nyx_string* @__b64_byte_to_string(
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

define internal i64 @__b64_char_value(
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

define internal %nyx_string* @__b64_decode_with(
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
  %890 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %889)
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
  %907 = call i64 @__b64_char_value(i64 %905, %nyx_string* %906)
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
  %930 = call i64 @__b64_char_value(i64 %928, %nyx_string* %929)
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
  %945 = call i64 @__b64_char_value(i64 %943, %nyx_string* %944)
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
  %960 = call i64 @__b64_char_value(i64 %958, %nyx_string* %959)
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
  %969 = call %nyx_string* @__b64_byte_to_string(i64 %968)
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
  %981 = call %nyx_string* @__b64_byte_to_string(i64 %980)
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
  %992 = call %nyx_string* @__b64_byte_to_string(i64 %991)
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

define %nyx_string* @base64_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %997 = load %nyx_string*, %nyx_string** %input.ptr
  %998 = load %nyx_string*, %nyx_string** @std_base64____b64_chars
  %999 = call %nyx_string* @__b64_encode_with(%nyx_string* %997, %nyx_string* %998, i1 1)
  ret %nyx_string* %999
}

define %nyx_string* @base64_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %1000 = load %nyx_string*, %nyx_string** %input.ptr
  %1001 = load %nyx_string*, %nyx_string** @std_base64____b64_chars
  %1002 = call %nyx_string* @__b64_decode_with(%nyx_string* %1000, %nyx_string* %1001)
  ret %nyx_string* %1002
}

define %nyx_string* @base64url_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %1003 = load %nyx_string*, %nyx_string** %input.ptr
  %1004 = load %nyx_string*, %nyx_string** @std_base64____b64url_chars
  %1005 = call %nyx_string* @__b64_encode_with(%nyx_string* %1003, %nyx_string* %1004, i1 0)
  ret %nyx_string* %1005
}

define %nyx_string* @base64url_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %1006 = load %nyx_string*, %nyx_string** %input.ptr
  %1007 = load %nyx_string*, %nyx_string** @std_base64____b64url_chars
  %1008 = call %nyx_string* @__b64_decode_with(%nyx_string* %1006, %nyx_string* %1007)
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
  %1040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %1039)
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
  %1052 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %1051)
  %1053 = call i1 @nyx_string_starts_with(%nyx_string* %1050, %nyx_string* %1052)
  br i1 %1053, label %sc_and_rhs229, label %sc_and_end230
sc_and_rhs229:
  %1054 = load %nyx_string*, %nyx_string** %1048
  %1055 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %1056 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %1055)
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
  %1066 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %1065)
  %1067 = call i1 @nyx_string_equals(%nyx_string* %1064, %nyx_string* %1066)
  br i1 %1067, label %then234, label %else235
then234:
  %1068 = getelementptr [5 x i8], [5 x i8]* @.str66, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %1068)
  ret %nyx_string* %1069
else235:
  br label %merge236
merge236:
  %1070 = load %nyx_string*, %nyx_string** %1048
  %1071 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %1071)
  %1073 = call i1 @nyx_string_equals(%nyx_string* %1070, %nyx_string* %1072)
  br i1 %1073, label %then237, label %else238
then237:
  %1074 = getelementptr [6 x i8], [6 x i8]* @.str68, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %1074)
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
  %1108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %1107)
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
  %1122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %1121)
  %1123 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 0
  store %nyx_string* %1122, %nyx_string** %1123
  %1124 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %1124)
  %1126 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 1
  store %nyx_string* %1125, %nyx_string** %1126
  %1127 = getelementptr [12 x i8], [12 x i8]* @.str73, i32 0, i32 0
  %1128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %1127)
  %1129 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 2
  store %nyx_string* %1128, %nyx_string** %1129
  %1130 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %1131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %1130)
  %1132 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 3
  store %nyx_string* %1131, %nyx_string** %1132
  %1133 = getelementptr %ProjectConfig, %ProjectConfig* %1120, i32 0, i32 4
  store i1 0, i1* %1133
  %1134 = getelementptr [1 x i8], [1 x i8]* @.str75, i32 0, i32 0
  %1135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %1134)
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
  %1145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %1144)
  %1146 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1143, %nyx_string* %1145)
  %1147 = alloca { i64, i8* }*
  store { i64, i8* }* %1146, { i64, i8* }** %1147
  %1148 = getelementptr [1 x i8], [1 x i8]* @.str77, i32 0, i32 0
  %1149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %1148)
  %1150 = alloca %nyx_string*
  store %nyx_string* %1149, %nyx_string** %1150
  %1151 = alloca i64
  store i64 0, i64* %1151
  %1152 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %1152)
  %1154 = alloca %nyx_string*
  store %nyx_string* %1153, %nyx_string** %1154
  %1155 = getelementptr [2 x i8], [2 x i8]* @.str79, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %1155)
  %1157 = alloca %nyx_string*
  store %nyx_string* %1156, %nyx_string** %1157
  %1158 = getelementptr [2 x i8], [2 x i8]* @.str80, i32 0, i32 0
  %1159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %1158)
  %1160 = alloca %nyx_string*
  store %nyx_string* %1159, %nyx_string** %1160
  %1161 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %1161)
  %1163 = alloca %nyx_string*
  store %nyx_string* %1162, %nyx_string** %1163
  %1164 = getelementptr [8 x i8], [8 x i8]* @.str82, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %1164)
  %1166 = alloca %nyx_string*
  store %nyx_string* %1165, %nyx_string** %1166
  %1167 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %1168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %1167)
  %1169 = alloca %nyx_string*
  store %nyx_string* %1168, %nyx_string** %1169
  %1170 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %1170)
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %1173)
  %1175 = alloca %nyx_string*
  store %nyx_string* %1174, %nyx_string** %1175
  %1176 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %1176)
  %1178 = alloca %nyx_string*
  store %nyx_string* %1177, %nyx_string** %1178
  %1179 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %1179)
  %1181 = alloca %nyx_string*
  store %nyx_string* %1180, %nyx_string** %1181
  %1182 = getelementptr [5 x i8], [5 x i8]* @.str88, i32 0, i32 0
  %1183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %1182)
  %1184 = alloca %nyx_string*
  store %nyx_string* %1183, %nyx_string** %1184
  %1185 = getelementptr [7 x i8], [7 x i8]* @.str89, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %1185)
  %1187 = alloca %nyx_string*
  store %nyx_string* %1186, %nyx_string** %1187
  %1188 = getelementptr [13 x i8], [13 x i8]* @.str90, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %1188)
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
  %1298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %1297)
  %1299 = getelementptr [11 x i8], [11 x i8]* @.str92, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %1299)
  %1301 = call %nyx_string* @nyx_string_concat(%nyx_string* %1298, %nyx_string* %1300)
  %1302 = getelementptr [9 x i8], [9 x i8]* @.str93, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %1302)
  %1304 = call %nyx_string* @nyx_string_concat(%nyx_string* %1301, %nyx_string* %1303)
  %1305 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %1306 = load %nyx_string*, %nyx_string** %1305
  %1307 = call %nyx_string* @nyx_string_concat(%nyx_string* %1304, %nyx_string* %1306)
  %1308 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %1308)
  %1310 = call %nyx_string* @nyx_string_concat(%nyx_string* %1307, %nyx_string* %1309)
  %1311 = getelementptr [12 x i8], [12 x i8]* @.str95, i32 0, i32 0
  %1312 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1311)
  %1313 = call %nyx_string* @nyx_string_concat(%nyx_string* %1310, %nyx_string* %1312)
  %1314 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %1315 = load %nyx_string*, %nyx_string** %1314
  %1316 = call %nyx_string* @nyx_string_concat(%nyx_string* %1313, %nyx_string* %1315)
  %1317 = getelementptr [3 x i8], [3 x i8]* @.str96, i32 0, i32 0
  %1318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1317)
  %1319 = call %nyx_string* @nyx_string_concat(%nyx_string* %1316, %nyx_string* %1318)
  %1320 = getelementptr [9 x i8], [9 x i8]* @.str97, i32 0, i32 0
  %1321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1320)
  %1322 = call %nyx_string* @nyx_string_concat(%nyx_string* %1319, %nyx_string* %1321)
  %1323 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %1324 = load %nyx_string*, %nyx_string** %1323
  %1325 = call %nyx_string* @nyx_string_concat(%nyx_string* %1322, %nyx_string* %1324)
  %1326 = getelementptr [3 x i8], [3 x i8]* @.str98, i32 0, i32 0
  %1327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1326)
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
  %1336 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1335)
  %1337 = call %nyx_string* @nyx_string_concat(%nyx_string* %1334, %nyx_string* %1336)
  store %nyx_string* %1337, %nyx_string** %1329
  %1338 = alloca i64
  store i64 0, i64* %1338
  %1339 = getelementptr [5 x i8], [5 x i8]* @.str100, i32 0, i32 0
  %1340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1339)
  %1341 = alloca %nyx_string*
  store %nyx_string* %1340, %nyx_string** %1341
  %1342 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1342)
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
  %1375 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1374)
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
  %1381 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1380)
  %1382 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1383 = call %nyx_string* @nyx_string_concat(%nyx_string* %1381, %nyx_string* %1382)
  %1384 = call i8* @nyx_string_to_cstr(%nyx_string* %1383)
  call void @nyx_print_string(i8* %1384)
  %1385 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1386 = alloca %nyx_string*
  store %nyx_string* %1385, %nyx_string** %1386
  %1387 = load %nyx_string*, %nyx_string** %1386
  %1388 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %1389 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1388)
  %1390 = call i1 @nyx_string_equals(%nyx_string* %1387, %nyx_string* %1389)
  br i1 %1390, label %then299, label %else300
then299:
  %1391 = getelementptr [32 x i8], [32 x i8]* @.str105, i32 0, i32 0
  %1392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1391)
  %1393 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1394 = call %nyx_string* @nyx_string_concat(%nyx_string* %1392, %nyx_string* %1393)
  store %nyx_string* %1394, %nyx_string** %1386
  br label %merge301
else300:
  br label %merge301
merge301:
  %1395 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %1396 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1395)
  %1397 = call i8* @nyx_string_to_cstr(%nyx_string* %1396)
  %1398 = call i1 @nyx_file_exists(i8* %1397)
  br i1 %1398, label %then302, label %else303
then302:
  %1399 = getelementptr [9 x i8], [9 x i8]* @.str107, i32 0, i32 0
  %1400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1399)
  %1401 = call i8* @nyx_string_to_cstr(%nyx_string* %1400)
  %1402 = call %nyx_string* @nyx_read_file(i8* %1401)
  %1403 = alloca %nyx_string*
  store %nyx_string* %1402, %nyx_string** %1403
  %1404 = load %nyx_string*, %nyx_string** %1403
  %1405 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1406 = getelementptr [3 x i8], [3 x i8]* @.str108, i32 0, i32 0
  %1407 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1406)
  %1408 = call %nyx_string* @nyx_string_concat(%nyx_string* %1405, %nyx_string* %1407)
  %1409 = call i1 @nyx_string_contains(%nyx_string* %1404, %nyx_string* %1408)
  br i1 %1409, label %then305, label %else306
then305:
  %1410 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1410)
  %1412 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1413 = call %nyx_string* @nyx_string_concat(%nyx_string* %1411, %nyx_string* %1412)
  %1414 = getelementptr [27 x i8], [27 x i8]* @.str110, i32 0, i32 0
  %1415 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1414)
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
  %1419 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1418)
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
  %1427 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1426)
  %1428 = load %nyx_string*, %nyx_string** %1422
  %1429 = call %nyx_string* @nyx_string_concat(%nyx_string* %1427, %nyx_string* %1428)
  %1430 = call i8* @nyx_string_to_cstr(%nyx_string* %1429)
  call void @nyx_print_string(i8* %1430)
  br label %merge310
else309:
  %1431 = getelementptr [13 x i8], [13 x i8]* @.str113, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %1431)
  %1433 = load %nyx_string*, %nyx_string** %1386
  %1434 = call %nyx_string* @nyx_string_concat(%nyx_string* %1432, %nyx_string* %1433)
  %1435 = call i8* @nyx_string_to_cstr(%nyx_string* %1434)
  call void @nyx_print_string(i8* %1435)
  %1436 = getelementptr [43 x i8], [43 x i8]* @.str114, i32 0, i32 0
  %1437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %1436)
  %1438 = load %nyx_string*, %nyx_string** %1386
  %1439 = call %nyx_string* @nyx_string_concat(%nyx_string* %1437, %nyx_string* %1438)
  %1440 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %1441 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %1440)
  %1442 = call %nyx_string* @nyx_string_concat(%nyx_string* %1439, %nyx_string* %1441)
  %1443 = load %nyx_string*, %nyx_string** %1422
  %1444 = call %nyx_string* @nyx_string_concat(%nyx_string* %1442, %nyx_string* %1443)
  %1445 = getelementptr [13 x i8], [13 x i8]* @.str116, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %1445)
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
  %1456 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %1455)
  %1457 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1458 = call %nyx_string* @nyx_string_concat(%nyx_string* %1456, %nyx_string* %1457)
  %1459 = getelementptr [7 x i8], [7 x i8]* @.str118, i32 0, i32 0
  %1460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %1459)
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
  %1466 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %1465)
  %1467 = call i8* @nyx_string_to_cstr(%nyx_string* %1466)
  %1468 = call i1 @nyx_file_exists(i8* %1467)
  br i1 %1468, label %then314, label %else315
then314:
  %1469 = getelementptr [9 x i8], [9 x i8]* @.str120, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %1469)
  %1471 = call i8* @nyx_string_to_cstr(%nyx_string* %1470)
  %1472 = call %nyx_string* @nyx_read_file(i8* %1471)
  %1473 = alloca %nyx_string*
  store %nyx_string* %1472, %nyx_string** %1473
  %1474 = load %nyx_string*, %nyx_string** %1473
  %1475 = alloca %nyx_string*
  store %nyx_string* %1474, %nyx_string** %1475
  %1476 = load %nyx_string*, %nyx_string** %1473
  %1477 = getelementptr [15 x i8], [15 x i8]* @.str121, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %1477)
  %1479 = call i1 @nyx_string_contains(%nyx_string* %1476, %nyx_string* %1478)
  %1480 = xor i1 %1479, true
  br i1 %1480, label %then317, label %else318
then317:
  %1481 = load %nyx_string*, %nyx_string** %1473
  %1482 = getelementptr [17 x i8], [17 x i8]* @.str122, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %1482)
  %1484 = call %nyx_string* @nyx_string_concat(%nyx_string* %1481, %nyx_string* %1483)
  %1485 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1486 = call %nyx_string* @nyx_string_concat(%nyx_string* %1484, %nyx_string* %1485)
  %1487 = getelementptr [8 x i8], [8 x i8]* @.str123, i32 0, i32 0
  %1488 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %1487)
  %1489 = call %nyx_string* @nyx_string_concat(%nyx_string* %1486, %nyx_string* %1488)
  store %nyx_string* %1489, %nyx_string** %1475
  br label %merge319
else318:
  %1490 = load %nyx_string*, %nyx_string** %1473
  %1491 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1492 = call %nyx_string* @nyx_string_concat(%nyx_string* %1490, %nyx_string* %1491)
  %1493 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %1494 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %1493)
  %1495 = call %nyx_string* @nyx_string_concat(%nyx_string* %1492, %nyx_string* %1494)
  store %nyx_string* %1495, %nyx_string** %1475
  br label %merge319
merge319:
  %1496 = getelementptr [9 x i8], [9 x i8]* @.str125, i32 0, i32 0
  %1497 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %1496)
  %1498 = load %nyx_string*, %nyx_string** %1475
  %1499 = call i8* @nyx_string_to_cstr(%nyx_string* %1497)
  %1500 = call i8* @nyx_string_to_cstr(%nyx_string* %1498)
  %1501 = call i1 @nyx_write_file(i8* %1499, i8* %1500)
  %1502 = getelementptr [19 x i8], [19 x i8]* @.str126, i32 0, i32 0
  %1503 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %1502)
  %1504 = call i8* @nyx_string_to_cstr(%nyx_string* %1503)
  call void @nyx_print_string(i8* %1504)
  br label %merge316
else315:
  br label %merge316
merge316:
  %1505 = getelementptr [10 x i8], [10 x i8]* @.str127, i32 0, i32 0
  %1506 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %1505)
  %1507 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1508 = call %nyx_string* @nyx_string_concat(%nyx_string* %1506, %nyx_string* %1507)
  %1509 = getelementptr [9 x i8], [9 x i8]* @.str128, i32 0, i32 0
  %1510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %1509)
  %1511 = call %nyx_string* @nyx_string_concat(%nyx_string* %1508, %nyx_string* %1510)
  %1512 = call i8* @nyx_string_to_cstr(%nyx_string* %1511)
  call void @nyx_print_string(i8* %1512)
  ret i1 1
}

define internal i64 @scaffold_project_files(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1513 = getelementptr [9 x i8], [9 x i8]* @.str129, i32 0, i32 0
  %1514 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %1513)
  %1515 = call i8* @nyx_string_to_cstr(%nyx_string* %1514)
  %1516 = call %nyx_string* @nyx_getenv(i8* %1515)
  %1517 = alloca %nyx_string*
  store %nyx_string* %1516, %nyx_string** %1517
  %1518 = load %nyx_string*, %nyx_string** %1517
  %1519 = getelementptr [11 x i8], [11 x i8]* @.str130, i32 0, i32 0
  %1520 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %1519)
  %1521 = call %nyx_string* @nyx_string_concat(%nyx_string* %1518, %nyx_string* %1520)
  %1522 = alloca %nyx_string*
  store %nyx_string* %1521, %nyx_string** %1522
  %1523 = load %nyx_string*, %nyx_string** %1522
  %1524 = getelementptr [11 x i8], [11 x i8]* @.str131, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %1524)
  %1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %1523, %nyx_string* %1525)
  %1527 = call i8* @nyx_string_to_cstr(%nyx_string* %1526)
  %1528 = call i1 @nyx_file_exists(i8* %1527)
  br i1 %1528, label %then320, label %else321
then320:
  %1529 = load %nyx_string*, %nyx_string** %1522
  %1530 = getelementptr [11 x i8], [11 x i8]* @.str132, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1530)
  %1532 = call %nyx_string* @nyx_string_concat(%nyx_string* %1529, %nyx_string* %1531)
  %1533 = call i8* @nyx_string_to_cstr(%nyx_string* %1532)
  %1534 = call %nyx_string* @nyx_read_file(i8* %1533)
  %1535 = alloca %nyx_string*
  store %nyx_string* %1534, %nyx_string** %1535
  %1536 = load %nyx_string*, %nyx_string** %dir.ptr
  %1537 = getelementptr [11 x i8], [11 x i8]* @.str133, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1537)
  %1539 = call %nyx_string* @nyx_string_concat(%nyx_string* %1536, %nyx_string* %1538)
  %1540 = load %nyx_string*, %nyx_string** %1535
  %1541 = call i8* @nyx_string_to_cstr(%nyx_string* %1539)
  %1542 = call i8* @nyx_string_to_cstr(%nyx_string* %1540)
  %1543 = call i1 @nyx_write_file(i8* %1541, i8* %1542)
  br label %merge322
else321:
  br label %merge322
merge322:
  %1544 = load %nyx_string*, %nyx_string** %dir.ptr
  %1545 = getelementptr [17 x i8], [17 x i8]* @.str134, i32 0, i32 0
  %1546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1545)
  %1547 = call %nyx_string* @nyx_string_concat(%nyx_string* %1544, %nyx_string* %1546)
  %1548 = call i1 @run_capabilities(%nyx_string* %1547)
  %1549 = alloca i1
  store i1 %1548, i1* %1549
  %1550 = load %nyx_string*, %nyx_string** %1522
  %1551 = getelementptr [11 x i8], [11 x i8]* @.str135, i32 0, i32 0
  %1552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1551)
  %1553 = call %nyx_string* @nyx_string_concat(%nyx_string* %1550, %nyx_string* %1552)
  %1554 = call i8* @nyx_string_to_cstr(%nyx_string* %1553)
  %1555 = call i1 @nyx_file_exists(i8* %1554)
  br i1 %1555, label %then323, label %else324
then323:
  %1556 = load %nyx_string*, %nyx_string** %1522
  %1557 = getelementptr [11 x i8], [11 x i8]* @.str136, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1557)
  %1559 = call %nyx_string* @nyx_string_concat(%nyx_string* %1556, %nyx_string* %1558)
  %1560 = call i8* @nyx_string_to_cstr(%nyx_string* %1559)
  %1561 = call %nyx_string* @nyx_read_file(i8* %1560)
  %1562 = alloca %nyx_string*
  store %nyx_string* %1561, %nyx_string** %1562
  %1563 = load %nyx_string*, %nyx_string** %dir.ptr
  %1564 = getelementptr [11 x i8], [11 x i8]* @.str137, i32 0, i32 0
  %1565 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1564)
  %1566 = call %nyx_string* @nyx_string_concat(%nyx_string* %1563, %nyx_string* %1565)
  %1567 = load %nyx_string*, %nyx_string** %1562
  %1568 = call i8* @nyx_string_to_cstr(%nyx_string* %1566)
  %1569 = call i8* @nyx_string_to_cstr(%nyx_string* %1567)
  %1570 = call i1 @nyx_write_file(i8* %1568, i8* %1569)
  br label %merge325
else324:
  br label %merge325
merge325:
  %1571 = load %nyx_string*, %nyx_string** %1522
  %1572 = getelementptr [14 x i8], [14 x i8]* @.str138, i32 0, i32 0
  %1573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1572)
  %1574 = call %nyx_string* @nyx_string_concat(%nyx_string* %1571, %nyx_string* %1573)
  %1575 = call i8* @nyx_string_to_cstr(%nyx_string* %1574)
  %1576 = call i1 @nyx_file_exists(i8* %1575)
  br i1 %1576, label %then326, label %else327
then326:
  %1577 = load %nyx_string*, %nyx_string** %1522
  %1578 = getelementptr [14 x i8], [14 x i8]* @.str139, i32 0, i32 0
  %1579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1578)
  %1580 = call %nyx_string* @nyx_string_concat(%nyx_string* %1577, %nyx_string* %1579)
  %1581 = call i8* @nyx_string_to_cstr(%nyx_string* %1580)
  %1582 = call %nyx_string* @nyx_read_file(i8* %1581)
  %1583 = alloca %nyx_string*
  store %nyx_string* %1582, %nyx_string** %1583
  %1584 = load %nyx_string*, %nyx_string** %dir.ptr
  %1585 = getelementptr [14 x i8], [14 x i8]* @.str140, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1585)
  %1587 = call %nyx_string* @nyx_string_concat(%nyx_string* %1584, %nyx_string* %1586)
  %1588 = load %nyx_string*, %nyx_string** %1583
  %1589 = call i8* @nyx_string_to_cstr(%nyx_string* %1587)
  %1590 = call i8* @nyx_string_to_cstr(%nyx_string* %1588)
  %1591 = call i1 @nyx_write_file(i8* %1589, i8* %1590)
  br label %merge328
else327:
  br label %merge328
merge328:
  %1592 = load %nyx_string*, %nyx_string** %1522
  %1593 = getelementptr [15 x i8], [15 x i8]* @.str141, i32 0, i32 0
  %1594 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1593)
  %1595 = call %nyx_string* @nyx_string_concat(%nyx_string* %1592, %nyx_string* %1594)
  %1596 = call i8* @nyx_string_to_cstr(%nyx_string* %1595)
  %1597 = call i1 @nyx_file_exists(i8* %1596)
  br i1 %1597, label %then329, label %else330
then329:
  %1598 = load %nyx_string*, %nyx_string** %1522
  %1599 = getelementptr [15 x i8], [15 x i8]* @.str142, i32 0, i32 0
  %1600 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1599)
  %1601 = call %nyx_string* @nyx_string_concat(%nyx_string* %1598, %nyx_string* %1600)
  %1602 = call i8* @nyx_string_to_cstr(%nyx_string* %1601)
  %1603 = call %nyx_string* @nyx_read_file(i8* %1602)
  %1604 = alloca %nyx_string*
  store %nyx_string* %1603, %nyx_string** %1604
  %1605 = load %nyx_string*, %nyx_string** %dir.ptr
  %1606 = getelementptr [15 x i8], [15 x i8]* @.str143, i32 0, i32 0
  %1607 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1606)
  %1608 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1607)
  %1609 = load %nyx_string*, %nyx_string** %1604
  %1610 = call i8* @nyx_string_to_cstr(%nyx_string* %1608)
  %1611 = call i8* @nyx_string_to_cstr(%nyx_string* %1609)
  %1612 = call i1 @nyx_write_file(i8* %1610, i8* %1611)
  br label %merge331
else330:
  br label %merge331
merge331:
  %1613 = load %nyx_string*, %nyx_string** %1522
  %1614 = getelementptr [8 x i8], [8 x i8]* @.str144, i32 0, i32 0
  %1615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1614)
  %1616 = call %nyx_string* @nyx_string_concat(%nyx_string* %1613, %nyx_string* %1615)
  %1617 = call i8* @nyx_string_to_cstr(%nyx_string* %1616)
  %1618 = call i1 @nyx_file_exists(i8* %1617)
  br i1 %1618, label %then332, label %else333
then332:
  %1619 = load %nyx_string*, %nyx_string** %1522
  %1620 = getelementptr [8 x i8], [8 x i8]* @.str145, i32 0, i32 0
  %1621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1620)
  %1622 = call %nyx_string* @nyx_string_concat(%nyx_string* %1619, %nyx_string* %1621)
  %1623 = call i8* @nyx_string_to_cstr(%nyx_string* %1622)
  %1624 = call %nyx_string* @nyx_read_file(i8* %1623)
  %1625 = alloca %nyx_string*
  store %nyx_string* %1624, %nyx_string** %1625
  %1626 = load %nyx_string*, %nyx_string** %dir.ptr
  %1627 = getelementptr [8 x i8], [8 x i8]* @.str146, i32 0, i32 0
  %1628 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1627)
  %1629 = call %nyx_string* @nyx_string_concat(%nyx_string* %1626, %nyx_string* %1628)
  %1630 = load %nyx_string*, %nyx_string** %1625
  %1631 = call i8* @nyx_string_to_cstr(%nyx_string* %1629)
  %1632 = call i8* @nyx_string_to_cstr(%nyx_string* %1630)
  %1633 = call i1 @nyx_write_file(i8* %1631, i8* %1632)
  br label %merge334
else333:
  br label %merge334
merge334:
  %1634 = load %nyx_string*, %nyx_string** %1522
  %1635 = getelementptr [33 x i8], [33 x i8]* @.str147, i32 0, i32 0
  %1636 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1635)
  %1637 = call %nyx_string* @nyx_string_concat(%nyx_string* %1634, %nyx_string* %1636)
  %1638 = call i8* @nyx_string_to_cstr(%nyx_string* %1637)
  %1639 = call i1 @nyx_file_exists(i8* %1638)
  br i1 %1639, label %then335, label %else336
then335:
  %1640 = getelementptr [10 x i8], [10 x i8]* @.str148, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1640)
  %1642 = load %nyx_string*, %nyx_string** %dir.ptr
  %1643 = call %nyx_string* @nyx_string_concat(%nyx_string* %1641, %nyx_string* %1642)
  %1644 = getelementptr [9 x i8], [9 x i8]* @.str149, i32 0, i32 0
  %1645 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1644)
  %1646 = call %nyx_string* @nyx_string_concat(%nyx_string* %1643, %nyx_string* %1645)
  %1647 = call i8* @nyx_string_to_cstr(%nyx_string* %1646)
  %1648 = call %nyx_string* @nyx_exec(i8* %1647)
  %1649 = load %nyx_string*, %nyx_string** %1522
  %1650 = getelementptr [33 x i8], [33 x i8]* @.str150, i32 0, i32 0
  %1651 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1650)
  %1652 = call %nyx_string* @nyx_string_concat(%nyx_string* %1649, %nyx_string* %1651)
  %1653 = call i8* @nyx_string_to_cstr(%nyx_string* %1652)
  %1654 = call %nyx_string* @nyx_read_file(i8* %1653)
  %1655 = alloca %nyx_string*
  store %nyx_string* %1654, %nyx_string** %1655
  %1656 = load %nyx_string*, %nyx_string** %dir.ptr
  %1657 = getelementptr [33 x i8], [33 x i8]* @.str151, i32 0, i32 0
  %1658 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1657)
  %1659 = call %nyx_string* @nyx_string_concat(%nyx_string* %1656, %nyx_string* %1658)
  %1660 = load %nyx_string*, %nyx_string** %1655
  %1661 = call i8* @nyx_string_to_cstr(%nyx_string* %1659)
  %1662 = call i8* @nyx_string_to_cstr(%nyx_string* %1660)
  %1663 = call i1 @nyx_write_file(i8* %1661, i8* %1662)
  br label %merge337
else336:
  br label %merge337
merge337:
  %1664 = getelementptr [10 x i8], [10 x i8]* @.str152, i32 0, i32 0
  %1665 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1664)
  %1666 = load %nyx_string*, %nyx_string** %1522
  %1667 = call %nyx_string* @nyx_string_concat(%nyx_string* %1665, %nyx_string* %1666)
  %1668 = getelementptr [36 x i8], [36 x i8]* @.str153, i32 0, i32 0
  %1669 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1668)
  %1670 = call %nyx_string* @nyx_string_concat(%nyx_string* %1667, %nyx_string* %1669)
  %1671 = load %nyx_string*, %nyx_string** %dir.ptr
  %1672 = call %nyx_string* @nyx_string_concat(%nyx_string* %1670, %nyx_string* %1671)
  %1673 = getelementptr [21 x i8], [21 x i8]* @.str154, i32 0, i32 0
  %1674 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1673)
  %1675 = call %nyx_string* @nyx_string_concat(%nyx_string* %1672, %nyx_string* %1674)
  %1676 = load %nyx_string*, %nyx_string** %1522
  %1677 = call %nyx_string* @nyx_string_concat(%nyx_string* %1675, %nyx_string* %1676)
  %1678 = getelementptr [19 x i8], [19 x i8]* @.str155, i32 0, i32 0
  %1679 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1678)
  %1680 = call %nyx_string* @nyx_string_concat(%nyx_string* %1677, %nyx_string* %1679)
  %1681 = load %nyx_string*, %nyx_string** %dir.ptr
  %1682 = call %nyx_string* @nyx_string_concat(%nyx_string* %1680, %nyx_string* %1681)
  %1683 = getelementptr [15 x i8], [15 x i8]* @.str156, i32 0, i32 0
  %1684 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1683)
  %1685 = call %nyx_string* @nyx_string_concat(%nyx_string* %1682, %nyx_string* %1684)
  %1686 = call i8* @nyx_string_to_cstr(%nyx_string* %1685)
  %1687 = call %nyx_string* @nyx_exec(i8* %1686)
  %1688 = load %nyx_string*, %nyx_string** %1522
  %1689 = getelementptr [25 x i8], [25 x i8]* @.str157, i32 0, i32 0
  %1690 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1689)
  %1691 = call %nyx_string* @nyx_string_concat(%nyx_string* %1688, %nyx_string* %1690)
  %1692 = call i8* @nyx_string_to_cstr(%nyx_string* %1691)
  %1693 = call i1 @nyx_file_exists(i8* %1692)
  br i1 %1693, label %then338, label %else339
then338:
  %1694 = getelementptr [10 x i8], [10 x i8]* @.str158, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1694)
  %1696 = load %nyx_string*, %nyx_string** %dir.ptr
  %1697 = call %nyx_string* @nyx_string_concat(%nyx_string* %1695, %nyx_string* %1696)
  %1698 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1698)
  %1700 = call %nyx_string* @nyx_string_concat(%nyx_string* %1697, %nyx_string* %1699)
  %1701 = call i8* @nyx_string_to_cstr(%nyx_string* %1700)
  %1702 = call %nyx_string* @nyx_exec(i8* %1701)
  %1703 = load %nyx_string*, %nyx_string** %1522
  %1704 = getelementptr [25 x i8], [25 x i8]* @.str160, i32 0, i32 0
  %1705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1704)
  %1706 = call %nyx_string* @nyx_string_concat(%nyx_string* %1703, %nyx_string* %1705)
  %1707 = call i8* @nyx_string_to_cstr(%nyx_string* %1706)
  %1708 = call %nyx_string* @nyx_read_file(i8* %1707)
  %1709 = alloca %nyx_string*
  store %nyx_string* %1708, %nyx_string** %1709
  %1710 = load %nyx_string*, %nyx_string** %dir.ptr
  %1711 = getelementptr [25 x i8], [25 x i8]* @.str161, i32 0, i32 0
  %1712 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1711)
  %1713 = call %nyx_string* @nyx_string_concat(%nyx_string* %1710, %nyx_string* %1712)
  %1714 = load %nyx_string*, %nyx_string** %1709
  %1715 = call i8* @nyx_string_to_cstr(%nyx_string* %1713)
  %1716 = call i8* @nyx_string_to_cstr(%nyx_string* %1714)
  %1717 = call i1 @nyx_write_file(i8* %1715, i8* %1716)
  br label %merge340
else339:
  br label %merge340
merge340:
  ret i64 0
}

define internal i1 @run_init(
%nyx_string* %name_arg.param) {
  %name_arg.ptr = alloca %nyx_string*
  store %nyx_string* %name_arg.param, %nyx_string** %name_arg.ptr
  %1718 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %1719 = alloca %nyx_string*
  store %nyx_string* %1718, %nyx_string** %1719
  %1720 = load %nyx_string*, %nyx_string** %1719
  %1721 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1721)
  %1723 = call i1 @nyx_string_equals(%nyx_string* %1720, %nyx_string* %1722)
  %1724 = xor i1 %1723, true
  br i1 %1724, label %then341, label %else342
then341:
  %1725 = load %nyx_string*, %nyx_string** %1719
  %1726 = call i8* @nyx_string_to_cstr(%nyx_string* %1725)
  %1727 = call i1 @nyx_file_exists(i8* %1726)
  br i1 %1727, label %then344, label %else345
then344:
  %1728 = getelementptr [19 x i8], [19 x i8]* @.str163, i32 0, i32 0
  %1729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1728)
  %1730 = load %nyx_string*, %nyx_string** %1719
  %1731 = call %nyx_string* @nyx_string_concat(%nyx_string* %1729, %nyx_string* %1730)
  %1732 = getelementptr [17 x i8], [17 x i8]* @.str164, i32 0, i32 0
  %1733 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1732)
  %1734 = call %nyx_string* @nyx_string_concat(%nyx_string* %1731, %nyx_string* %1733)
  %1735 = call i8* @nyx_string_to_cstr(%nyx_string* %1734)
  call void @nyx_print_string(i8* %1735)
  ret i1 0
else345:
  br label %merge346
merge346:
  %1736 = getelementptr [10 x i8], [10 x i8]* @.str165, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1736)
  %1738 = load %nyx_string*, %nyx_string** %1719
  %1739 = call %nyx_string* @nyx_string_concat(%nyx_string* %1737, %nyx_string* %1738)
  %1740 = getelementptr [5 x i8], [5 x i8]* @.str166, i32 0, i32 0
  %1741 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1740)
  %1742 = call %nyx_string* @nyx_string_concat(%nyx_string* %1739, %nyx_string* %1741)
  %1743 = call i8* @nyx_string_to_cstr(%nyx_string* %1742)
  %1744 = call %nyx_string* @nyx_exec(i8* %1743)
  %1745 = getelementptr [19 x i8], [19 x i8]* @.str167, i32 0, i32 0
  %1746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1745)
  %1747 = load %nyx_string*, %nyx_string** %1719
  %1748 = call %nyx_string* @nyx_string_concat(%nyx_string* %1746, %nyx_string* %1747)
  %1749 = getelementptr [58 x i8], [58 x i8]* @.str168, i32 0, i32 0
  %1750 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1749)
  %1751 = call %nyx_string* @nyx_string_concat(%nyx_string* %1748, %nyx_string* %1750)
  %1752 = alloca %nyx_string*
  store %nyx_string* %1751, %nyx_string** %1752
  %1753 = load %nyx_string*, %nyx_string** %1719
  %1754 = getelementptr [10 x i8], [10 x i8]* @.str169, i32 0, i32 0
  %1755 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1754)
  %1756 = call %nyx_string* @nyx_string_concat(%nyx_string* %1753, %nyx_string* %1755)
  %1757 = load %nyx_string*, %nyx_string** %1752
  %1758 = call i8* @nyx_string_to_cstr(%nyx_string* %1756)
  %1759 = call i8* @nyx_string_to_cstr(%nyx_string* %1757)
  %1760 = call i1 @nyx_write_file(i8* %1758, i8* %1759)
  %1761 = load %nyx_string*, %nyx_string** %1719
  %1762 = getelementptr [13 x i8], [13 x i8]* @.str170, i32 0, i32 0
  %1763 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1762)
  %1764 = call %nyx_string* @nyx_string_concat(%nyx_string* %1761, %nyx_string* %1763)
  %1765 = getelementptr [35 x i8], [35 x i8]* @.str171, i32 0, i32 0
  %1766 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1765)
  %1767 = load %nyx_string*, %nyx_string** %1719
  %1768 = call %nyx_string* @nyx_string_concat(%nyx_string* %1766, %nyx_string* %1767)
  %1769 = getelementptr [7 x i8], [7 x i8]* @.str172, i32 0, i32 0
  %1770 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1769)
  %1771 = call %nyx_string* @nyx_string_concat(%nyx_string* %1768, %nyx_string* %1770)
  %1772 = call i8* @nyx_string_to_cstr(%nyx_string* %1764)
  %1773 = call i8* @nyx_string_to_cstr(%nyx_string* %1771)
  %1774 = call i1 @nyx_write_file(i8* %1772, i8* %1773)
  %1775 = load %nyx_string*, %nyx_string** %1719
  %1776 = call i64 @scaffold_project_files(%nyx_string* %1775)
  %1777 = getelementptr [22 x i8], [22 x i8]* @.str173, i32 0, i32 0
  %1778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1777)
  %1779 = load %nyx_string*, %nyx_string** %1719
  %1780 = call %nyx_string* @nyx_string_concat(%nyx_string* %1778, %nyx_string* %1779)
  %1781 = call i8* @nyx_string_to_cstr(%nyx_string* %1780)
  call void @nyx_print_string(i8* %1781)
  %1782 = getelementptr [12 x i8], [12 x i8]* @.str174, i32 0, i32 0
  %1783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1782)
  %1784 = load %nyx_string*, %nyx_string** %1719
  %1785 = call %nyx_string* @nyx_string_concat(%nyx_string* %1783, %nyx_string* %1784)
  %1786 = getelementptr [2 x i8], [2 x i8]* @.str175, i32 0, i32 0
  %1787 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1786)
  %1788 = call %nyx_string* @nyx_string_concat(%nyx_string* %1785, %nyx_string* %1787)
  %1789 = call i8* @nyx_string_to_cstr(%nyx_string* %1788)
  call void @nyx_print_string(i8* %1789)
  %1790 = getelementptr [15 x i8], [15 x i8]* @.str176, i32 0, i32 0
  %1791 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1790)
  %1792 = load %nyx_string*, %nyx_string** %1719
  %1793 = call %nyx_string* @nyx_string_concat(%nyx_string* %1791, %nyx_string* %1792)
  %1794 = getelementptr [12 x i8], [12 x i8]* @.str177, i32 0, i32 0
  %1795 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1794)
  %1796 = call %nyx_string* @nyx_string_concat(%nyx_string* %1793, %nyx_string* %1795)
  %1797 = call i8* @nyx_string_to_cstr(%nyx_string* %1796)
  call void @nyx_print_string(i8* %1797)
  ret i1 1
else342:
  br label %merge343
merge343:
  %1798 = getelementptr [9 x i8], [9 x i8]* @.str178, i32 0, i32 0
  %1799 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1798)
  %1800 = call i8* @nyx_string_to_cstr(%nyx_string* %1799)
  %1801 = call i1 @nyx_file_exists(i8* %1800)
  br i1 %1801, label %then347, label %else348
then347:
  %1802 = getelementptr [31 x i8], [31 x i8]* @.str179, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1802)
  %1804 = call i8* @nyx_string_to_cstr(%nyx_string* %1803)
  call void @nyx_print_string(i8* %1804)
  ret i1 0
else348:
  br label %merge349
merge349:
  %1805 = getelementptr [4 x i8], [4 x i8]* @.str180, i32 0, i32 0
  %1806 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %1805)
  %1807 = call i8* @nyx_string_to_cstr(%nyx_string* %1806)
  %1808 = call %nyx_string* @nyx_getenv(i8* %1807)
  %1809 = alloca %nyx_string*
  store %nyx_string* %1808, %nyx_string** %1809
  %1810 = getelementptr [6 x i8], [6 x i8]* @.str181, i32 0, i32 0
  %1811 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %1810)
  store %nyx_string* %1811, %nyx_string** %1719
  %1812 = sub i64 0, 1
  %1813 = alloca i64
  store i64 %1812, i64* %1813
  %1814 = alloca i64
  store i64 0, i64* %1814
  %1815 = call i8* @llvm.stacksave()
  br label %while_cond350
while_cond350:
  %1816 = load i64, i64* %1814
  %1817 = load %nyx_string*, %nyx_string** %1809
  %1818 = call i64 @nyx_string_byte_length(%nyx_string* %1817)
  %1819 = icmp slt i64 %1816, %1818
  br i1 %1819, label %while_body351, label %while_end352
while_body351:
  call void @llvm.stackrestore(i8* %1815)
  %1820 = load %nyx_string*, %nyx_string** %1809
  %1821 = load i64, i64* %1814
  %1822 = call i8 @nyx_string_char_at(%nyx_string* %1820, i64 %1821)
  %1823 = zext i8 %1822 to i64
  %1824 = icmp eq i64 %1823, 47
  br i1 %1824, label %then353, label %else354
then353:
  %1825 = load i64, i64* %1814
  store i64 %1825, i64* %1813
  br label %merge355
else354:
  br label %merge355
merge355:
  %1826 = load i64, i64* %1814
  %1827 = add i64 %1826, 1
  store i64 %1827, i64* %1814
  br label %while_cond350
while_end352:
  %1828 = load i64, i64* %1813
  %1829 = icmp sge i64 %1828, 0
  br i1 %1829, label %then356, label %else357
then356:
  %1830 = load %nyx_string*, %nyx_string** %1809
  %1831 = load i64, i64* %1813
  %1832 = add i64 %1831, 1
  %1833 = load %nyx_string*, %nyx_string** %1809
  %1834 = call i64 @nyx_string_byte_length(%nyx_string* %1833)
  %1835 = call %nyx_string* @nyx_string_substring(%nyx_string* %1830, i64 %1832, i64 %1834)
  store %nyx_string* %1835, %nyx_string** %1719
  br label %merge358
else357:
  br label %merge358
merge358:
  %1836 = getelementptr [19 x i8], [19 x i8]* @.str182, i32 0, i32 0
  %1837 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %1836)
  %1838 = load %nyx_string*, %nyx_string** %1719
  %1839 = call %nyx_string* @nyx_string_concat(%nyx_string* %1837, %nyx_string* %1838)
  %1840 = getelementptr [58 x i8], [58 x i8]* @.str183, i32 0, i32 0
  %1841 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %1840)
  %1842 = call %nyx_string* @nyx_string_concat(%nyx_string* %1839, %nyx_string* %1841)
  %1843 = alloca %nyx_string*
  store %nyx_string* %1842, %nyx_string** %1843
  %1844 = getelementptr [9 x i8], [9 x i8]* @.str184, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %1844)
  %1846 = load %nyx_string*, %nyx_string** %1843
  %1847 = call i8* @nyx_string_to_cstr(%nyx_string* %1845)
  %1848 = call i8* @nyx_string_to_cstr(%nyx_string* %1846)
  %1849 = call i1 @nyx_write_file(i8* %1847, i8* %1848)
  %1850 = getelementptr [13 x i8], [13 x i8]* @.str185, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %1850)
  %1852 = call i8* @nyx_string_to_cstr(%nyx_string* %1851)
  %1853 = call %nyx_string* @nyx_exec(i8* %1852)
  %1854 = getelementptr [12 x i8], [12 x i8]* @.str186, i32 0, i32 0
  %1855 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %1854)
  %1856 = call i8* @nyx_string_to_cstr(%nyx_string* %1855)
  %1857 = call i1 @nyx_file_exists(i8* %1856)
  %1858 = icmp eq i1 %1857, 0
  br i1 %1858, label %then359, label %else360
then359:
  %1859 = getelementptr [12 x i8], [12 x i8]* @.str187, i32 0, i32 0
  %1860 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %1859)
  %1861 = getelementptr [35 x i8], [35 x i8]* @.str188, i32 0, i32 0
  %1862 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %1861)
  %1863 = load %nyx_string*, %nyx_string** %1719
  %1864 = call %nyx_string* @nyx_string_concat(%nyx_string* %1862, %nyx_string* %1863)
  %1865 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %1865)
  %1867 = call %nyx_string* @nyx_string_concat(%nyx_string* %1864, %nyx_string* %1866)
  %1868 = call i8* @nyx_string_to_cstr(%nyx_string* %1860)
  %1869 = call i8* @nyx_string_to_cstr(%nyx_string* %1867)
  %1870 = call i1 @nyx_write_file(i8* %1868, i8* %1869)
  br label %merge361
else360:
  br label %merge361
merge361:
  %1871 = getelementptr [2 x i8], [2 x i8]* @.str190, i32 0, i32 0
  %1872 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %1871)
  %1873 = call i64 @scaffold_project_files(%nyx_string* %1872)
  %1874 = getelementptr [22 x i8], [22 x i8]* @.str191, i32 0, i32 0
  %1875 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %1874)
  %1876 = load %nyx_string*, %nyx_string** %1719
  %1877 = call %nyx_string* @nyx_string_concat(%nyx_string* %1875, %nyx_string* %1876)
  %1878 = call i8* @nyx_string_to_cstr(%nyx_string* %1877)
  call void @nyx_print_string(i8* %1878)
  %1879 = getelementptr [33 x i8], [33 x i8]* @.str192, i32 0, i32 0
  %1880 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %1879)
  %1881 = call i8* @nyx_string_to_cstr(%nyx_string* %1880)
  call void @nyx_print_string(i8* %1881)
  %1882 = getelementptr [21 x i8], [21 x i8]* @.str193, i32 0, i32 0
  %1883 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %1882)
  %1884 = call i8* @nyx_string_to_cstr(%nyx_string* %1883)
  call void @nyx_print_string(i8* %1884)
  %1885 = getelementptr [19 x i8], [19 x i8]* @.str194, i32 0, i32 0
  %1886 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %1885)
  %1887 = call i8* @nyx_string_to_cstr(%nyx_string* %1886)
  call void @nyx_print_string(i8* %1887)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1888 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1889 = load { i64, i8* }*, { i64, i8* }** %1888
  %1890 = call i64 @nyx_array_length({ i64, i8* }* %1889)
  %1891 = icmp eq i64 %1890, 0
  br i1 %1891, label %then362, label %else363
then362:
  ret i1 1
else363:
  br label %merge364
merge364:
  %1892 = alloca i64
  store i64 0, i64* %1892
  %1893 = getelementptr [10 x i8], [10 x i8]* @.str195, i32 0, i32 0
  %1894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %1893)
  %1895 = alloca %nyx_string*
  store %nyx_string* %1894, %nyx_string** %1895
  %1896 = getelementptr [14 x i8], [14 x i8]* @.str196, i32 0, i32 0
  %1897 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %1896)
  %1898 = alloca %nyx_string*
  store %nyx_string* %1897, %nyx_string** %1898
  %1899 = getelementptr [5 x i8], [5 x i8]* @.str197, i32 0, i32 0
  %1900 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %1899)
  %1901 = alloca %nyx_string*
  store %nyx_string* %1900, %nyx_string** %1901
  %1902 = getelementptr [4 x i8], [4 x i8]* @.str198, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %1902)
  %1904 = alloca %nyx_string*
  store %nyx_string* %1903, %nyx_string** %1904
  %1905 = getelementptr [32 x i8], [32 x i8]* @.str199, i32 0, i32 0
  %1906 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %1905)
  %1907 = alloca %nyx_string*
  store %nyx_string* %1906, %nyx_string** %1907
  %1908 = getelementptr [43 x i8], [43 x i8]* @.str200, i32 0, i32 0
  %1909 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %1908)
  %1910 = alloca %nyx_string*
  store %nyx_string* %1909, %nyx_string** %1910
  %1911 = getelementptr [2 x i8], [2 x i8]* @.str201, i32 0, i32 0
  %1912 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %1911)
  %1913 = alloca %nyx_string*
  store %nyx_string* %1912, %nyx_string** %1913
  %1914 = getelementptr [13 x i8], [13 x i8]* @.str202, i32 0, i32 0
  %1915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %1914)
  %1916 = alloca %nyx_string*
  store %nyx_string* %1915, %nyx_string** %1916
  %1917 = getelementptr [26 x i8], [26 x i8]* @.str203, i32 0, i32 0
  %1918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %1917)
  %1919 = alloca %nyx_string*
  store %nyx_string* %1918, %nyx_string** %1919
  %1920 = getelementptr [7 x i8], [7 x i8]* @.str204, i32 0, i32 0
  %1921 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %1920)
  %1922 = alloca %nyx_string*
  store %nyx_string* %1921, %nyx_string** %1922
  %1923 = getelementptr [12 x i8], [12 x i8]* @.str205, i32 0, i32 0
  %1924 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %1923)
  %1925 = alloca %nyx_string*
  store %nyx_string* %1924, %nyx_string** %1925
  %1926 = call i8* @llvm.stacksave()
  br label %while_cond365
while_cond365:
  %1927 = load i64, i64* %1892
  %1928 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1929 = load { i64, i8* }*, { i64, i8* }** %1928
  %1930 = call i64 @nyx_array_length({ i64, i8* }* %1929)
  %1931 = icmp slt i64 %1927, %1930
  br i1 %1931, label %while_body366, label %while_end367
while_body366:
  call void @llvm.stackrestore(i8* %1926)
  %1932 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1933 = load { i64, i8* }*, { i64, i8* }** %1932
  %1934 = load i64, i64* %1892
  %1935 = call i64 @nyx_array_get({ i64, i8* }* %1933, i64 %1934)
  %1936 = inttoptr i64 %1935 to %nyx_string*
  %1937 = alloca %nyx_string*
  store %nyx_string* %1936, %nyx_string** %1937
  %1938 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1939 = load { i64, i8* }*, { i64, i8* }** %1938
  %1940 = load i64, i64* %1892
  %1941 = call i64 @nyx_array_get({ i64, i8* }* %1939, i64 %1940)
  %1942 = inttoptr i64 %1941 to %nyx_string*
  %1943 = alloca %nyx_string*
  store %nyx_string* %1942, %nyx_string** %1943
  %1944 = load %nyx_string*, %nyx_string** %1895
  %1945 = load %nyx_string*, %nyx_string** %1937
  %1946 = call %nyx_string* @nyx_string_concat(%nyx_string* %1944, %nyx_string* %1945)
  %1947 = alloca %nyx_string*
  store %nyx_string* %1946, %nyx_string** %1947
  %1948 = load %nyx_string*, %nyx_string** %1947
  %1949 = call i8* @nyx_string_to_cstr(%nyx_string* %1948)
  %1950 = call i1 @nyx_file_exists(i8* %1949)
  %1951 = icmp eq i1 %1950, 0
  br i1 %1951, label %then368, label %else369
then368:
  %1952 = load %nyx_string*, %nyx_string** %1898
  %1953 = load %nyx_string*, %nyx_string** %1937
  %1954 = call %nyx_string* @nyx_string_concat(%nyx_string* %1952, %nyx_string* %1953)
  %1955 = call i8* @nyx_string_to_cstr(%nyx_string* %1954)
  call void @nyx_print_string(i8* %1955)
  %1956 = load %nyx_string*, %nyx_string** %1943
  %1957 = alloca %nyx_string*
  store %nyx_string* %1956, %nyx_string** %1957
  %1958 = alloca i1
  store i1 false, i1* %1958
  %1959 = load %nyx_string*, %nyx_string** %1957
  %1960 = load %nyx_string*, %nyx_string** %1901
  %1961 = call i1 @nyx_string_starts_with(%nyx_string* %1959, %nyx_string* %1960)
  %1962 = icmp eq i1 %1961, 0
  br i1 %1962, label %sc_and_rhs371, label %sc_and_end372
sc_and_rhs371:
  %1963 = load %nyx_string*, %nyx_string** %1957
  %1964 = load %nyx_string*, %nyx_string** %1904
  %1965 = call i1 @nyx_string_starts_with(%nyx_string* %1963, %nyx_string* %1964)
  %1966 = icmp eq i1 %1965, 0
  store i1 %1966, i1* %1958
  br label %sc_and_end372
sc_and_end372:
  %1967 = load i1, i1* %1958
  br i1 %1967, label %then373, label %else374
then373:
  %1968 = load %nyx_string*, %nyx_string** %1907
  %1969 = load %nyx_string*, %nyx_string** %1937
  %1970 = call %nyx_string* @nyx_string_concat(%nyx_string* %1968, %nyx_string* %1969)
  store %nyx_string* %1970, %nyx_string** %1957
  br label %merge375
else374:
  br label %merge375
merge375:
  %1971 = load %nyx_string*, %nyx_string** %1910
  %1972 = load %nyx_string*, %nyx_string** %1957
  %1973 = call %nyx_string* @nyx_string_concat(%nyx_string* %1971, %nyx_string* %1972)
  %1974 = load %nyx_string*, %nyx_string** %1913
  %1975 = call %nyx_string* @nyx_string_concat(%nyx_string* %1973, %nyx_string* %1974)
  %1976 = load %nyx_string*, %nyx_string** %1947
  %1977 = call %nyx_string* @nyx_string_concat(%nyx_string* %1975, %nyx_string* %1976)
  %1978 = load %nyx_string*, %nyx_string** %1916
  %1979 = call %nyx_string* @nyx_string_concat(%nyx_string* %1977, %nyx_string* %1978)
  %1980 = alloca %nyx_string*
  store %nyx_string* %1979, %nyx_string** %1980
  %1981 = load %nyx_string*, %nyx_string** %1980
  %1982 = call i8* @nyx_string_to_cstr(%nyx_string* %1981)
  %1983 = call i64 @nyx_exec_code(i8* %1982)
  %1984 = alloca i64
  store i64 %1983, i64* %1984
  %1985 = load i64, i64* %1984
  %1986 = icmp ne i64 %1985, 0
  br i1 %1986, label %then376, label %else377
then376:
  %1987 = load %nyx_string*, %nyx_string** %1919
  %1988 = load %nyx_string*, %nyx_string** %1937
  %1989 = call %nyx_string* @nyx_string_concat(%nyx_string* %1987, %nyx_string* %1988)
  %1990 = load %nyx_string*, %nyx_string** %1922
  %1991 = call %nyx_string* @nyx_string_concat(%nyx_string* %1989, %nyx_string* %1990)
  %1992 = load %nyx_string*, %nyx_string** %1957
  %1993 = call %nyx_string* @nyx_string_concat(%nyx_string* %1991, %nyx_string* %1992)
  %1994 = call i8* @nyx_string_to_cstr(%nyx_string* %1993)
  call void @nyx_print_string(i8* %1994)
  ret i1 0
else377:
  br label %merge378
merge378:
  %1995 = load %nyx_string*, %nyx_string** %1925
  %1996 = load %nyx_string*, %nyx_string** %1937
  %1997 = call %nyx_string* @nyx_string_concat(%nyx_string* %1995, %nyx_string* %1996)
  %1998 = call i8* @nyx_string_to_cstr(%nyx_string* %1997)
  call void @nyx_print_string(i8* %1998)
  br label %merge370
else369:
  br label %merge370
merge370:
  %1999 = load i64, i64* %1892
  %2000 = add i64 %1999, 1
  store i64 %2000, i64* %1892
  br label %while_cond365
while_end367:
  ret i1 1
}

define internal %nyx_string* @clang_failure_attribution_bash(
%nyx_string* %main_file.param) {
  %main_file.ptr = alloca %nyx_string*
  store %nyx_string* %main_file.param, %nyx_string** %main_file.ptr
  %2001 = getelementptr [128 x i8], [128 x i8]* @.str206, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %2001)
  %2003 = alloca %nyx_string*
  store %nyx_string* %2002, %nyx_string** %2003
  %2004 = getelementptr [37 x i8], [37 x i8]* @.str207, i32 0, i32 0
  %2005 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %2004)
  %2006 = alloca %nyx_string*
  store %nyx_string* %2005, %nyx_string** %2006
  %2007 = getelementptr [14 x i8], [14 x i8]* @.str208, i32 0, i32 0
  %2008 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %2007)
  %2009 = load %nyx_string*, %nyx_string** %2003
  %2010 = call %nyx_string* @nyx_string_concat(%nyx_string* %2008, %nyx_string* %2009)
  %2011 = getelementptr [16 x i8], [16 x i8]* @.str209, i32 0, i32 0
  %2012 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %2011)
  %2013 = call %nyx_string* @nyx_string_concat(%nyx_string* %2010, %nyx_string* %2012)
  %2014 = getelementptr [33 x i8], [33 x i8]* @.str210, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %2014)
  %2016 = call %nyx_string* @nyx_string_concat(%nyx_string* %2013, %nyx_string* %2015)
  %2017 = getelementptr [99 x i8], [99 x i8]* @.str211, i32 0, i32 0
  %2018 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %2017)
  %2019 = call %nyx_string* @nyx_string_concat(%nyx_string* %2016, %nyx_string* %2018)
  %2020 = load %nyx_string*, %nyx_string** %main_file.ptr
  %2021 = call %nyx_string* @nyx_string_concat(%nyx_string* %2019, %nyx_string* %2020)
  %2022 = getelementptr [73 x i8], [73 x i8]* @.str212, i32 0, i32 0
  %2023 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %2022)
  %2024 = call %nyx_string* @nyx_string_concat(%nyx_string* %2021, %nyx_string* %2023)
  %2025 = getelementptr [6 x i8], [6 x i8]* @.str213, i32 0, i32 0
  %2026 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %2025)
  %2027 = call %nyx_string* @nyx_string_concat(%nyx_string* %2024, %nyx_string* %2026)
  %2028 = getelementptr [91 x i8], [91 x i8]* @.str214, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %2028)
  %2030 = call %nyx_string* @nyx_string_concat(%nyx_string* %2027, %nyx_string* %2029)
  %2031 = load %nyx_string*, %nyx_string** %main_file.ptr
  %2032 = call %nyx_string* @nyx_string_concat(%nyx_string* %2030, %nyx_string* %2031)
  %2033 = getelementptr [76 x i8], [76 x i8]* @.str215, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %2033)
  %2035 = call %nyx_string* @nyx_string_concat(%nyx_string* %2032, %nyx_string* %2034)
  %2036 = getelementptr [5 x i8], [5 x i8]* @.str216, i32 0, i32 0
  %2037 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %2036)
  %2038 = call %nyx_string* @nyx_string_concat(%nyx_string* %2035, %nyx_string* %2037)
  %2039 = getelementptr [16 x i8], [16 x i8]* @.str217, i32 0, i32 0
  %2040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %2039)
  %2041 = call %nyx_string* @nyx_string_concat(%nyx_string* %2038, %nyx_string* %2040)
  %2042 = load %nyx_string*, %nyx_string** %2006
  %2043 = call %nyx_string* @nyx_string_concat(%nyx_string* %2041, %nyx_string* %2042)
  %2044 = getelementptr [16 x i8], [16 x i8]* @.str218, i32 0, i32 0
  %2045 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %2044)
  %2046 = call %nyx_string* @nyx_string_concat(%nyx_string* %2043, %nyx_string* %2045)
  %2047 = getelementptr [33 x i8], [33 x i8]* @.str219, i32 0, i32 0
  %2048 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %2047)
  %2049 = call %nyx_string* @nyx_string_concat(%nyx_string* %2046, %nyx_string* %2048)
  %2050 = getelementptr [175 x i8], [175 x i8]* @.str220, i32 0, i32 0
  %2051 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %2050)
  %2052 = call %nyx_string* @nyx_string_concat(%nyx_string* %2049, %nyx_string* %2051)
  %2053 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %2054 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %2053)
  %2055 = call %nyx_string* @nyx_string_concat(%nyx_string* %2052, %nyx_string* %2054)
  %2056 = getelementptr [184 x i8], [184 x i8]* @.str222, i32 0, i32 0
  %2057 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %2056)
  %2058 = call %nyx_string* @nyx_string_concat(%nyx_string* %2055, %nyx_string* %2057)
  %2059 = getelementptr [5 x i8], [5 x i8]* @.str223, i32 0, i32 0
  %2060 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %2059)
  %2061 = call %nyx_string* @nyx_string_concat(%nyx_string* %2058, %nyx_string* %2060)
  %2062 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %2063 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %2062)
  %2064 = call %nyx_string* @nyx_string_concat(%nyx_string* %2061, %nyx_string* %2063)
  %2065 = getelementptr [33 x i8], [33 x i8]* @.str225, i32 0, i32 0
  %2066 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %2065)
  %2067 = call %nyx_string* @nyx_string_concat(%nyx_string* %2064, %nyx_string* %2066)
  %2068 = getelementptr [126 x i8], [126 x i8]* @.str226, i32 0, i32 0
  %2069 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %2068)
  %2070 = call %nyx_string* @nyx_string_concat(%nyx_string* %2067, %nyx_string* %2069)
  %2071 = getelementptr [6 x i8], [6 x i8]* @.str227, i32 0, i32 0
  %2072 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %2071)
  %2073 = call %nyx_string* @nyx_string_concat(%nyx_string* %2070, %nyx_string* %2072)
  %2074 = getelementptr [119 x i8], [119 x i8]* @.str228, i32 0, i32 0
  %2075 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %2074)
  %2076 = call %nyx_string* @nyx_string_concat(%nyx_string* %2073, %nyx_string* %2075)
  %2077 = getelementptr [5 x i8], [5 x i8]* @.str229, i32 0, i32 0
  %2078 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %2077)
  %2079 = call %nyx_string* @nyx_string_concat(%nyx_string* %2076, %nyx_string* %2078)
  %2080 = getelementptr [4 x i8], [4 x i8]* @.str230, i32 0, i32 0
  %2081 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %2080)
  %2082 = call %nyx_string* @nyx_string_concat(%nyx_string* %2079, %nyx_string* %2081)
  ret %nyx_string* %2082
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %2083 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %2084 = load %nyx_string*, %nyx_string** %2083
  %2085 = alloca %nyx_string*
  store %nyx_string* %2084, %nyx_string** %2085
  %2086 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %2087 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %2088 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %2087)
  %2089 = call i1 @nyx_string_equals(%nyx_string* %2086, %nyx_string* %2088)
  %2090 = xor i1 %2089, true
  br i1 %2090, label %then379, label %else380
then379:
  %2091 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %2091, %nyx_string** %2085
  br label %merge381
else380:
  br label %merge381
merge381:
  %2092 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %2093 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %2092)
  %2094 = alloca %nyx_string*
  store %nyx_string* %2093, %nyx_string** %2094
  %2095 = load %nyx_string*, %nyx_string** %2085
  %2096 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %2097 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %2096)
  %2098 = call i1 @nyx_string_equals(%nyx_string* %2095, %nyx_string* %2097)
  %2099 = xor i1 %2098, true
  br i1 %2099, label %then382, label %else383
then382:
  %2100 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %2101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %2100)
  %2102 = load %nyx_string*, %nyx_string** %2085
  %2103 = call %nyx_string* @nyx_string_concat(%nyx_string* %2101, %nyx_string* %2102)
  %2104 = getelementptr [2 x i8], [2 x i8]* @.str235, i32 0, i32 0
  %2105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %2104)
  %2106 = call %nyx_string* @nyx_string_concat(%nyx_string* %2103, %nyx_string* %2105)
  store %nyx_string* %2106, %nyx_string** %2094
  br label %merge384
else383:
  br label %merge384
merge384:
  %2107 = getelementptr [13 x i8], [13 x i8]* @.str236, i32 0, i32 0
  %2108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %2107)
  %2109 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %2110 = load %nyx_string*, %nyx_string** %2109
  %2111 = call %nyx_string* @nyx_string_concat(%nyx_string* %2108, %nyx_string* %2110)
  %2112 = getelementptr [3 x i8], [3 x i8]* @.str237, i32 0, i32 0
  %2113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %2112)
  %2114 = call %nyx_string* @nyx_string_concat(%nyx_string* %2111, %nyx_string* %2113)
  %2115 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %2116 = load %nyx_string*, %nyx_string** %2115
  %2117 = call %nyx_string* @nyx_string_concat(%nyx_string* %2114, %nyx_string* %2116)
  %2118 = load %nyx_string*, %nyx_string** %2094
  %2119 = call %nyx_string* @nyx_string_concat(%nyx_string* %2117, %nyx_string* %2118)
  %2120 = call i8* @nyx_string_to_cstr(%nyx_string* %2119)
  call void @nyx_print_string(i8* %2120)
  %2121 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %2122 = call i1 @resolve_deps(%ProjectConfig %2121)
  %2123 = alloca i1
  store i1 %2122, i1* %2123
  %2124 = load i1, i1* %2123
  %2125 = icmp eq i1 %2124, 0
  br i1 %2125, label %then385, label %else386
then385:
  ret i1 0
else386:
  br label %merge387
merge387:
  %2126 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2127 = load %nyx_string*, %nyx_string** %2126
  %2128 = call i8* @nyx_string_to_cstr(%nyx_string* %2127)
  %2129 = call i1 @nyx_file_exists(i8* %2128)
  %2130 = xor i1 %2129, true
  br i1 %2130, label %then388, label %else389
then388:
  %2131 = getelementptr [29 x i8], [29 x i8]* @.str238, i32 0, i32 0
  %2132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %2131)
  %2133 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2134 = load %nyx_string*, %nyx_string** %2133
  %2135 = call %nyx_string* @nyx_string_concat(%nyx_string* %2132, %nyx_string* %2134)
  %2136 = call i8* @nyx_string_to_cstr(%nyx_string* %2135)
  call void @nyx_print_string(i8* %2136)
  ret i1 0
else389:
  br label %merge390
merge390:
  %2137 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %2138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %2137)
  %2139 = alloca %nyx_string*
  store %nyx_string* %2138, %nyx_string** %2139
  %2140 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %2141 = load i1, i1* %2140
  br i1 %2141, label %then391, label %else392
then391:
  %2142 = getelementptr [13 x i8], [13 x i8]* @.str240, i32 0, i32 0
  %2143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %2142)
  store %nyx_string* %2143, %nyx_string** %2139
  br label %merge393
else392:
  br label %merge393
merge393:
  %2144 = getelementptr [14 x i8], [14 x i8]* @.str241, i32 0, i32 0
  %2145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %2144)
  %2146 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2147 = load %nyx_string*, %nyx_string** %2146
  %2148 = call %nyx_string* @nyx_string_concat(%nyx_string* %2145, %nyx_string* %2147)
  %2149 = call i8* @nyx_string_to_cstr(%nyx_string* %2148)
  call void @nyx_print_string(i8* %2149)
  %2150 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %2151 = load %nyx_string*, %nyx_string** %2150
  %2152 = alloca %nyx_string*
  store %nyx_string* %2151, %nyx_string** %2152
  %2153 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %2154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %2153)
  %2155 = alloca %nyx_string*
  store %nyx_string* %2154, %nyx_string** %2155
  %2156 = load i1, i1* %release.ptr
  br i1 %2156, label %then394, label %else395
then394:
  %2157 = getelementptr [4 x i8], [4 x i8]* @.str243, i32 0, i32 0
  %2158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %2157)
  store %nyx_string* %2158, %nyx_string** %2155
  br label %merge396
else395:
  br label %merge396
merge396:
  %2159 = getelementptr [9 x i8], [9 x i8]* @.str244, i32 0, i32 0
  %2160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %2159)
  %2161 = call i8* @nyx_string_to_cstr(%nyx_string* %2160)
  %2162 = call %nyx_string* @nyx_getenv(i8* %2161)
  %2163 = alloca %nyx_string*
  store %nyx_string* %2162, %nyx_string** %2163
  %2164 = load %nyx_string*, %nyx_string** %2163
  %2165 = getelementptr [1 x i8], [1 x i8]* @.str245, i32 0, i32 0
  %2166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %2165)
  %2167 = call i1 @nyx_string_equals(%nyx_string* %2164, %nyx_string* %2166)
  br i1 %2167, label %then397, label %else398
then397:
  %2168 = getelementptr [5 x i8], [5 x i8]* @.str246, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %2168)
  %2170 = call i8* @nyx_string_to_cstr(%nyx_string* %2169)
  %2171 = call %nyx_string* @nyx_getenv(i8* %2170)
  %2172 = alloca %nyx_string*
  store %nyx_string* %2171, %nyx_string** %2172
  %2173 = load %nyx_string*, %nyx_string** %2172
  %2174 = getelementptr [6 x i8], [6 x i8]* @.str247, i32 0, i32 0
  %2175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %2174)
  %2176 = call %nyx_string* @nyx_string_concat(%nyx_string* %2173, %nyx_string* %2175)
  %2177 = alloca %nyx_string*
  store %nyx_string* %2176, %nyx_string** %2177
  %2178 = alloca i1
  store i1 false, i1* %2178
  %2179 = load %nyx_string*, %nyx_string** %2172
  %2180 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %2181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %2180)
  %2182 = call i1 @nyx_string_equals(%nyx_string* %2179, %nyx_string* %2181)
  %2183 = xor i1 %2182, true
  br i1 %2183, label %sc_and_rhs400, label %sc_and_end401
sc_and_rhs400:
  %2184 = load %nyx_string*, %nyx_string** %2177
  %2185 = getelementptr [19 x i8], [19 x i8]* @.str249, i32 0, i32 0
  %2186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %2185)
  %2187 = call %nyx_string* @nyx_string_concat(%nyx_string* %2184, %nyx_string* %2186)
  %2188 = call i8* @nyx_string_to_cstr(%nyx_string* %2187)
  %2189 = call i1 @nyx_file_exists(i8* %2188)
  store i1 %2189, i1* %2178
  br label %sc_and_end401
sc_and_end401:
  %2190 = load i1, i1* %2178
  br i1 %2190, label %then402, label %else403
then402:
  %2191 = load %nyx_string*, %nyx_string** %2177
  store %nyx_string* %2191, %nyx_string** %2163
  br label %merge404
else403:
  br label %merge404
merge404:
  br label %merge399
else398:
  br label %merge399
merge399:
  %2192 = load %nyx_string*, %nyx_string** %2163
  %2193 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %2194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %2193)
  %2195 = call i1 @nyx_string_equals(%nyx_string* %2192, %nyx_string* %2194)
  br i1 %2195, label %then405, label %else406
then405:
  %2196 = getelementptr [14 x i8], [14 x i8]* @.str251, i32 0, i32 0
  %2197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %2196)
  %2198 = call i8* @nyx_string_to_cstr(%nyx_string* %2197)
  %2199 = call i1 @nyx_file_exists(i8* %2198)
  br i1 %2199, label %then408, label %else409
then408:
  %2200 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %2201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %2200)
  store %nyx_string* %2201, %nyx_string** %2163
  br label %merge410
else409:
  br label %merge410
merge410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %2202 = load %nyx_string*, %nyx_string** %2163
  %2203 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %2204 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %2203)
  %2205 = call i1 @nyx_string_equals(%nyx_string* %2202, %nyx_string* %2204)
  br i1 %2205, label %then411, label %else412
then411:
  %2206 = getelementptr [56 x i8], [56 x i8]* @.str254, i32 0, i32 0
  %2207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %2206)
  %2208 = call i8* @nyx_string_to_cstr(%nyx_string* %2207)
  call void @nyx_print_string(i8* %2208)
  ret i1 0
else412:
  br label %merge413
merge413:
  %2209 = load %nyx_string*, %nyx_string** %2163
  %2210 = getelementptr [15 x i8], [15 x i8]* @.str255, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %2210)
  %2212 = call %nyx_string* @nyx_string_concat(%nyx_string* %2209, %nyx_string* %2211)
  %2213 = alloca %nyx_string*
  store %nyx_string* %2212, %nyx_string** %2213
  %2214 = load %nyx_string*, %nyx_string** %2213
  %2215 = call i8* @nyx_string_to_cstr(%nyx_string* %2214)
  %2216 = call i1 @nyx_file_exists(i8* %2215)
  %2217 = xor i1 %2216, true
  br i1 %2217, label %then414, label %else415
then414:
  %2218 = load %nyx_string*, %nyx_string** %2163
  %2219 = getelementptr [9 x i8], [9 x i8]* @.str256, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %2219)
  %2221 = call %nyx_string* @nyx_string_concat(%nyx_string* %2218, %nyx_string* %2220)
  store %nyx_string* %2221, %nyx_string** %2213
  br label %merge416
else415:
  br label %merge416
merge416:
  %2222 = load %nyx_string*, %nyx_string** %2163
  %2223 = getelementptr [9 x i8], [9 x i8]* @.str257, i32 0, i32 0
  %2224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %2223)
  %2225 = call %nyx_string* @nyx_string_concat(%nyx_string* %2222, %nyx_string* %2224)
  %2226 = alloca %nyx_string*
  store %nyx_string* %2225, %nyx_string** %2226
  %2227 = getelementptr [20 x i8], [20 x i8]* @.str258, i32 0, i32 0
  %2228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %2227)
  %2229 = getelementptr [19 x i8], [19 x i8]* @.str259, i32 0, i32 0
  %2230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %2229)
  %2231 = call %nyx_string* @nyx_string_concat(%nyx_string* %2228, %nyx_string* %2230)
  %2232 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %2233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %2232)
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2231, %nyx_string* %2233)
  %2235 = load %nyx_string*, %nyx_string** %2226
  %2236 = call %nyx_string* @nyx_string_concat(%nyx_string* %2234, %nyx_string* %2235)
  %2237 = getelementptr [3 x i8], [3 x i8]* @.str261, i32 0, i32 0
  %2238 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %2237)
  %2239 = call %nyx_string* @nyx_string_concat(%nyx_string* %2236, %nyx_string* %2238)
  %2240 = getelementptr [43 x i8], [43 x i8]* @.str262, i32 0, i32 0
  %2241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %2240)
  %2242 = call %nyx_string* @nyx_string_concat(%nyx_string* %2239, %nyx_string* %2241)
  %2243 = getelementptr [37 x i8], [37 x i8]* @.str263, i32 0, i32 0
  %2244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %2243)
  %2245 = call %nyx_string* @nyx_string_concat(%nyx_string* %2242, %nyx_string* %2244)
  %2246 = getelementptr [17 x i8], [17 x i8]* @.str264, i32 0, i32 0
  %2247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %2246)
  %2248 = call %nyx_string* @nyx_string_concat(%nyx_string* %2245, %nyx_string* %2247)
  %2249 = getelementptr [38 x i8], [38 x i8]* @.str265, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %2249)
  %2251 = call %nyx_string* @nyx_string_concat(%nyx_string* %2248, %nyx_string* %2250)
  %2252 = getelementptr [17 x i8], [17 x i8]* @.str266, i32 0, i32 0
  %2253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %2252)
  %2254 = call %nyx_string* @nyx_string_concat(%nyx_string* %2251, %nyx_string* %2253)
  %2255 = getelementptr [15 x i8], [15 x i8]* @.str267, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %2255)
  %2257 = call %nyx_string* @nyx_string_concat(%nyx_string* %2254, %nyx_string* %2256)
  %2258 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2259 = load %nyx_string*, %nyx_string** %2258
  %2260 = call %nyx_string* @nyx_string_concat(%nyx_string* %2257, %nyx_string* %2259)
  %2261 = getelementptr [12 x i8], [12 x i8]* @.str268, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %2261)
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2260, %nyx_string* %2262)
  %2264 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %2264)
  %2266 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2265)
  %2267 = load %nyx_string*, %nyx_string** %2163
  %2268 = call %nyx_string* @nyx_string_concat(%nyx_string* %2266, %nyx_string* %2267)
  %2269 = getelementptr [3 x i8], [3 x i8]* @.str270, i32 0, i32 0
  %2270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %2269)
  %2271 = call %nyx_string* @nyx_string_concat(%nyx_string* %2268, %nyx_string* %2270)
  %2272 = load %nyx_string*, %nyx_string** %2139
  %2273 = call %nyx_string* @nyx_string_concat(%nyx_string* %2271, %nyx_string* %2272)
  %2274 = getelementptr [47 x i8], [47 x i8]* @.str271, i32 0, i32 0
  %2275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %2274)
  %2276 = call %nyx_string* @nyx_string_concat(%nyx_string* %2273, %nyx_string* %2275)
  %2277 = load %nyx_string*, %nyx_string** %2213
  %2278 = call %nyx_string* @nyx_string_concat(%nyx_string* %2276, %nyx_string* %2277)
  %2279 = getelementptr [17 x i8], [17 x i8]* @.str272, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %2279)
  %2281 = call %nyx_string* @nyx_string_concat(%nyx_string* %2278, %nyx_string* %2280)
  %2282 = getelementptr [71 x i8], [71 x i8]* @.str273, i32 0, i32 0
  %2283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %2282)
  %2284 = call %nyx_string* @nyx_string_concat(%nyx_string* %2281, %nyx_string* %2283)
  %2285 = getelementptr [7 x i8], [7 x i8]* @.str274, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %2285)
  %2287 = call %nyx_string* @nyx_string_concat(%nyx_string* %2284, %nyx_string* %2286)
  %2288 = load %nyx_string*, %nyx_string** %2155
  %2289 = call %nyx_string* @nyx_string_concat(%nyx_string* %2287, %nyx_string* %2288)
  %2290 = getelementptr [12 x i8], [12 x i8]* @.str275, i32 0, i32 0
  %2291 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %2290)
  %2292 = call %nyx_string* @nyx_string_concat(%nyx_string* %2289, %nyx_string* %2291)
  %2293 = getelementptr [50 x i8], [50 x i8]* @.str276, i32 0, i32 0
  %2294 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %2293)
  %2295 = call %nyx_string* @nyx_string_concat(%nyx_string* %2292, %nyx_string* %2294)
  %2296 = getelementptr [42 x i8], [42 x i8]* @.str277, i32 0, i32 0
  %2297 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %2296)
  %2298 = call %nyx_string* @nyx_string_concat(%nyx_string* %2295, %nyx_string* %2297)
  %2299 = getelementptr [36 x i8], [36 x i8]* @.str278, i32 0, i32 0
  %2300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %2299)
  %2301 = call %nyx_string* @nyx_string_concat(%nyx_string* %2298, %nyx_string* %2300)
  %2302 = getelementptr [35 x i8], [35 x i8]* @.str279, i32 0, i32 0
  %2303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %2302)
  %2304 = call %nyx_string* @nyx_string_concat(%nyx_string* %2301, %nyx_string* %2303)
  %2305 = getelementptr [55 x i8], [55 x i8]* @.str280, i32 0, i32 0
  %2306 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %2305)
  %2307 = call %nyx_string* @nyx_string_concat(%nyx_string* %2304, %nyx_string* %2306)
  %2308 = getelementptr [39 x i8], [39 x i8]* @.str281, i32 0, i32 0
  %2309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %2308)
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2307, %nyx_string* %2309)
  %2311 = getelementptr [71 x i8], [71 x i8]* @.str282, i32 0, i32 0
  %2312 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %2311)
  %2313 = call %nyx_string* @nyx_string_concat(%nyx_string* %2310, %nyx_string* %2312)
  %2314 = getelementptr [21 x i8], [21 x i8]* @.str283, i32 0, i32 0
  %2315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %2314)
  %2316 = call %nyx_string* @nyx_string_concat(%nyx_string* %2313, %nyx_string* %2315)
  %2317 = getelementptr [44 x i8], [44 x i8]* @.str284, i32 0, i32 0
  %2318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %2317)
  %2319 = call %nyx_string* @nyx_string_concat(%nyx_string* %2316, %nyx_string* %2318)
  %2320 = getelementptr [15 x i8], [15 x i8]* @.str285, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %2320)
  %2322 = call %nyx_string* @nyx_string_concat(%nyx_string* %2319, %nyx_string* %2321)
  %2323 = load %nyx_string*, %nyx_string** %2152
  %2324 = call %nyx_string* @nyx_string_concat(%nyx_string* %2322, %nyx_string* %2323)
  %2325 = getelementptr [13 x i8], [13 x i8]* @.str286, i32 0, i32 0
  %2326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %2325)
  %2327 = call %nyx_string* @nyx_string_concat(%nyx_string* %2324, %nyx_string* %2326)
  %2328 = getelementptr [44 x i8], [44 x i8]* @.str287, i32 0, i32 0
  %2329 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %2328)
  %2330 = call %nyx_string* @nyx_string_concat(%nyx_string* %2327, %nyx_string* %2329)
  %2331 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2332 = load %nyx_string*, %nyx_string** %2331
  %2333 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %2332)
  %2334 = call %nyx_string* @nyx_string_concat(%nyx_string* %2330, %nyx_string* %2333)
  %2335 = getelementptr [27 x i8], [27 x i8]* @.str288, i32 0, i32 0
  %2336 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %2335)
  %2337 = call %nyx_string* @nyx_string_concat(%nyx_string* %2334, %nyx_string* %2336)
  %2338 = getelementptr [18 x i8], [18 x i8]* @.str289, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %2338)
  %2340 = call %nyx_string* @nyx_string_concat(%nyx_string* %2337, %nyx_string* %2339)
  %2341 = load %nyx_string*, %nyx_string** %2152
  %2342 = call %nyx_string* @nyx_string_concat(%nyx_string* %2340, %nyx_string* %2341)
  %2343 = getelementptr [3 x i8], [3 x i8]* @.str290, i32 0, i32 0
  %2344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %2343)
  %2345 = call %nyx_string* @nyx_string_concat(%nyx_string* %2342, %nyx_string* %2344)
  %2346 = alloca %nyx_string*
  store %nyx_string* %2345, %nyx_string** %2346
  %2347 = load %nyx_string*, %nyx_string** %2346
  %2348 = alloca %nyx_string*
  store %nyx_string* %2347, %nyx_string** %2348
  %2349 = load %nyx_string*, %nyx_string** %2085
  %2350 = getelementptr [12 x i8], [12 x i8]* @.str291, i32 0, i32 0
  %2351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %2350)
  %2352 = call i1 @nyx_string_equals(%nyx_string* %2349, %nyx_string* %2351)
  br i1 %2352, label %then417, label %else418
then417:
  %2353 = getelementptr [20 x i8], [20 x i8]* @.str292, i32 0, i32 0
  %2354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %2353)
  %2355 = getelementptr [19 x i8], [19 x i8]* @.str293, i32 0, i32 0
  %2356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %2355)
  %2357 = call %nyx_string* @nyx_string_concat(%nyx_string* %2354, %nyx_string* %2356)
  %2358 = getelementptr [5 x i8], [5 x i8]* @.str294, i32 0, i32 0
  %2359 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %2358)
  %2360 = call %nyx_string* @nyx_string_concat(%nyx_string* %2357, %nyx_string* %2359)
  %2361 = load %nyx_string*, %nyx_string** %2226
  %2362 = call %nyx_string* @nyx_string_concat(%nyx_string* %2360, %nyx_string* %2361)
  %2363 = getelementptr [3 x i8], [3 x i8]* @.str295, i32 0, i32 0
  %2364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %2363)
  %2365 = call %nyx_string* @nyx_string_concat(%nyx_string* %2362, %nyx_string* %2364)
  %2366 = getelementptr [11 x i8], [11 x i8]* @.str296, i32 0, i32 0
  %2367 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %2366)
  %2368 = call %nyx_string* @nyx_string_concat(%nyx_string* %2365, %nyx_string* %2367)
  %2369 = getelementptr [23 x i8], [23 x i8]* @.str297, i32 0, i32 0
  %2370 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %2369)
  %2371 = call %nyx_string* @nyx_string_concat(%nyx_string* %2368, %nyx_string* %2370)
  %2372 = getelementptr [43 x i8], [43 x i8]* @.str298, i32 0, i32 0
  %2373 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %2372)
  %2374 = call %nyx_string* @nyx_string_concat(%nyx_string* %2371, %nyx_string* %2373)
  %2375 = getelementptr [37 x i8], [37 x i8]* @.str299, i32 0, i32 0
  %2376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %2375)
  %2377 = call %nyx_string* @nyx_string_concat(%nyx_string* %2374, %nyx_string* %2376)
  %2378 = getelementptr [17 x i8], [17 x i8]* @.str300, i32 0, i32 0
  %2379 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %2378)
  %2380 = call %nyx_string* @nyx_string_concat(%nyx_string* %2377, %nyx_string* %2379)
  %2381 = getelementptr [38 x i8], [38 x i8]* @.str301, i32 0, i32 0
  %2382 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %2381)
  %2383 = call %nyx_string* @nyx_string_concat(%nyx_string* %2380, %nyx_string* %2382)
  %2384 = getelementptr [17 x i8], [17 x i8]* @.str302, i32 0, i32 0
  %2385 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %2384)
  %2386 = call %nyx_string* @nyx_string_concat(%nyx_string* %2383, %nyx_string* %2385)
  %2387 = getelementptr [163 x i8], [163 x i8]* @.str303, i32 0, i32 0
  %2388 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %2387)
  %2389 = call %nyx_string* @nyx_string_concat(%nyx_string* %2386, %nyx_string* %2388)
  %2390 = getelementptr [15 x i8], [15 x i8]* @.str304, i32 0, i32 0
  %2391 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %2390)
  %2392 = call %nyx_string* @nyx_string_concat(%nyx_string* %2389, %nyx_string* %2391)
  %2393 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2394 = load %nyx_string*, %nyx_string** %2393
  %2395 = call %nyx_string* @nyx_string_concat(%nyx_string* %2392, %nyx_string* %2394)
  %2396 = getelementptr [12 x i8], [12 x i8]* @.str305, i32 0, i32 0
  %2397 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %2396)
  %2398 = call %nyx_string* @nyx_string_concat(%nyx_string* %2395, %nyx_string* %2397)
  %2399 = getelementptr [5 x i8], [5 x i8]* @.str306, i32 0, i32 0
  %2400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %2399)
  %2401 = call %nyx_string* @nyx_string_concat(%nyx_string* %2398, %nyx_string* %2400)
  %2402 = load %nyx_string*, %nyx_string** %2163
  %2403 = call %nyx_string* @nyx_string_concat(%nyx_string* %2401, %nyx_string* %2402)
  %2404 = getelementptr [3 x i8], [3 x i8]* @.str307, i32 0, i32 0
  %2405 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %2404)
  %2406 = call %nyx_string* @nyx_string_concat(%nyx_string* %2403, %nyx_string* %2405)
  %2407 = getelementptr [82 x i8], [82 x i8]* @.str308, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %2407)
  %2409 = call %nyx_string* @nyx_string_concat(%nyx_string* %2406, %nyx_string* %2408)
  %2410 = load %nyx_string*, %nyx_string** %2213
  %2411 = call %nyx_string* @nyx_string_concat(%nyx_string* %2409, %nyx_string* %2410)
  %2412 = getelementptr [17 x i8], [17 x i8]* @.str309, i32 0, i32 0
  %2413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %2412)
  %2414 = call %nyx_string* @nyx_string_concat(%nyx_string* %2411, %nyx_string* %2413)
  %2415 = getelementptr [71 x i8], [71 x i8]* @.str310, i32 0, i32 0
  %2416 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str310.c, i8* %2415)
  %2417 = call %nyx_string* @nyx_string_concat(%nyx_string* %2414, %nyx_string* %2416)
  %2418 = getelementptr [64 x i8], [64 x i8]* @.str311, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str311.c, i8* %2418)
  %2420 = call %nyx_string* @nyx_string_concat(%nyx_string* %2417, %nyx_string* %2419)
  %2421 = getelementptr [56 x i8], [56 x i8]* @.str312, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %2421)
  %2423 = call %nyx_string* @nyx_string_concat(%nyx_string* %2420, %nyx_string* %2422)
  %2424 = getelementptr [50 x i8], [50 x i8]* @.str313, i32 0, i32 0
  %2425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %2424)
  %2426 = call %nyx_string* @nyx_string_concat(%nyx_string* %2423, %nyx_string* %2425)
  %2427 = getelementptr [42 x i8], [42 x i8]* @.str314, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %2427)
  %2429 = call %nyx_string* @nyx_string_concat(%nyx_string* %2426, %nyx_string* %2428)
  %2430 = getelementptr [35 x i8], [35 x i8]* @.str315, i32 0, i32 0
  %2431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %2430)
  %2432 = call %nyx_string* @nyx_string_concat(%nyx_string* %2429, %nyx_string* %2431)
  %2433 = getelementptr [43 x i8], [43 x i8]* @.str316, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %2433)
  %2435 = call %nyx_string* @nyx_string_concat(%nyx_string* %2432, %nyx_string* %2434)
  %2436 = getelementptr [15 x i8], [15 x i8]* @.str317, i32 0, i32 0
  %2437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str317.c, i8* %2436)
  %2438 = call %nyx_string* @nyx_string_concat(%nyx_string* %2435, %nyx_string* %2437)
  %2439 = load %nyx_string*, %nyx_string** %2152
  %2440 = call %nyx_string* @nyx_string_concat(%nyx_string* %2438, %nyx_string* %2439)
  %2441 = getelementptr [18 x i8], [18 x i8]* @.str318, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str318.c, i8* %2441)
  %2443 = call %nyx_string* @nyx_string_concat(%nyx_string* %2440, %nyx_string* %2442)
  %2444 = getelementptr [49 x i8], [49 x i8]* @.str319, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str319.c, i8* %2444)
  %2446 = call %nyx_string* @nyx_string_concat(%nyx_string* %2443, %nyx_string* %2445)
  %2447 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2448 = load %nyx_string*, %nyx_string** %2447
  %2449 = call %nyx_string* @clang_failure_attribution_bash(%nyx_string* %2448)
  %2450 = call %nyx_string* @nyx_string_concat(%nyx_string* %2446, %nyx_string* %2449)
  %2451 = getelementptr [27 x i8], [27 x i8]* @.str320, i32 0, i32 0
  %2452 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str320.c, i8* %2451)
  %2453 = call %nyx_string* @nyx_string_concat(%nyx_string* %2450, %nyx_string* %2452)
  %2454 = getelementptr [13 x i8], [13 x i8]* @.str321, i32 0, i32 0
  %2455 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str321.c, i8* %2454)
  %2456 = call %nyx_string* @nyx_string_concat(%nyx_string* %2453, %nyx_string* %2455)
  %2457 = load %nyx_string*, %nyx_string** %2152
  %2458 = call %nyx_string* @nyx_string_concat(%nyx_string* %2456, %nyx_string* %2457)
  %2459 = getelementptr [22 x i8], [22 x i8]* @.str322, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str322.c, i8* %2459)
  %2461 = call %nyx_string* @nyx_string_concat(%nyx_string* %2458, %nyx_string* %2460)
  %2462 = load %nyx_string*, %nyx_string** %2152
  %2463 = call %nyx_string* @nyx_string_concat(%nyx_string* %2461, %nyx_string* %2462)
  %2464 = getelementptr [9 x i8], [9 x i8]* @.str323, i32 0, i32 0
  %2465 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str323.c, i8* %2464)
  %2466 = call %nyx_string* @nyx_string_concat(%nyx_string* %2463, %nyx_string* %2465)
  store %nyx_string* %2466, %nyx_string** %2348
  br label %merge419
else418:
  br label %merge419
merge419:
  %2467 = getelementptr [16 x i8], [16 x i8]* @.str324, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str324.c, i8* %2467)
  %2469 = call i64 @nyx_getpid()
  %2470 = call %nyx_string* @nyx_string_from_int(i64 %2469)
  %2471 = call %nyx_string* @nyx_string_concat(%nyx_string* %2468, %nyx_string* %2470)
  %2472 = getelementptr [4 x i8], [4 x i8]* @.str325, i32 0, i32 0
  %2473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str325.c, i8* %2472)
  %2474 = call %nyx_string* @nyx_string_concat(%nyx_string* %2471, %nyx_string* %2473)
  %2475 = alloca %nyx_string*
  store %nyx_string* %2474, %nyx_string** %2475
  %2476 = load %nyx_string*, %nyx_string** %2475
  %2477 = load %nyx_string*, %nyx_string** %2348
  %2478 = call i8* @nyx_string_to_cstr(%nyx_string* %2476)
  %2479 = call i8* @nyx_string_to_cstr(%nyx_string* %2477)
  %2480 = call i1 @nyx_write_file(i8* %2478, i8* %2479)
  %2481 = getelementptr [7 x i8], [7 x i8]* @.str326, i32 0, i32 0
  %2482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str326.c, i8* %2481)
  %2483 = load %nyx_string*, %nyx_string** %2475
  %2484 = call %nyx_string* @nyx_string_concat(%nyx_string* %2482, %nyx_string* %2483)
  %2485 = getelementptr [22 x i8], [22 x i8]* @.str327, i32 0, i32 0
  %2486 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str327.c, i8* %2485)
  %2487 = call %nyx_string* @nyx_string_concat(%nyx_string* %2484, %nyx_string* %2486)
  %2488 = load %nyx_string*, %nyx_string** %2475
  %2489 = call %nyx_string* @nyx_string_concat(%nyx_string* %2487, %nyx_string* %2488)
  %2490 = getelementptr [16 x i8], [16 x i8]* @.str328, i32 0, i32 0
  %2491 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str328.c, i8* %2490)
  %2492 = call %nyx_string* @nyx_string_concat(%nyx_string* %2489, %nyx_string* %2491)
  %2493 = call i8* @nyx_string_to_cstr(%nyx_string* %2492)
  %2494 = call i64 @nyx_exec_code(i8* %2493)
  %2495 = alloca i64
  store i64 %2494, i64* %2495
  %2496 = load i64, i64* %2495
  %2497 = icmp eq i64 %2496, 0
  ret i1 %2497
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %2498 = getelementptr [10 x i8], [10 x i8]* @.str329, i32 0, i32 0
  %2499 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str329.c, i8* %2498)
  %2500 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %2501 = load %nyx_string*, %nyx_string** %2500
  %2502 = call %nyx_string* @nyx_string_concat(%nyx_string* %2499, %nyx_string* %2501)
  %2503 = call i8* @nyx_string_to_cstr(%nyx_string* %2502)
  call void @nyx_print_string(i8* %2503)
  %2504 = getelementptr [10 x i8], [10 x i8]* @.str330, i32 0, i32 0
  %2505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str330.c, i8* %2504)
  %2506 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %2507 = load %nyx_string*, %nyx_string** %2506
  %2508 = call %nyx_string* @nyx_string_concat(%nyx_string* %2505, %nyx_string* %2507)
  %2509 = call i8* @nyx_string_to_cstr(%nyx_string* %2508)
  call void @nyx_print_string(i8* %2509)
  %2510 = getelementptr [10 x i8], [10 x i8]* @.str331, i32 0, i32 0
  %2511 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str331.c, i8* %2510)
  %2512 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2513 = load %nyx_string*, %nyx_string** %2512
  %2514 = call %nyx_string* @nyx_string_concat(%nyx_string* %2511, %nyx_string* %2513)
  %2515 = call i8* @nyx_string_to_cstr(%nyx_string* %2514)
  call void @nyx_print_string(i8* %2515)
  %2516 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %2517 = load %nyx_string*, %nyx_string** %2516
  %2518 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %2519 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str332.c, i8* %2518)
  %2520 = call i1 @nyx_string_equals(%nyx_string* %2517, %nyx_string* %2519)
  %2521 = xor i1 %2520, true
  br i1 %2521, label %then420, label %else421
then420:
  %2522 = getelementptr [10 x i8], [10 x i8]* @.str333, i32 0, i32 0
  %2523 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str333.c, i8* %2522)
  %2524 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %2525 = load %nyx_string*, %nyx_string** %2524
  %2526 = call %nyx_string* @nyx_string_concat(%nyx_string* %2523, %nyx_string* %2525)
  %2527 = call i8* @nyx_string_to_cstr(%nyx_string* %2526)
  call void @nyx_print_string(i8* %2527)
  br label %merge422
else421:
  br label %merge422
merge422:
  %2528 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %2529 = load i1, i1* %2528
  br i1 %2529, label %then423, label %else424
then423:
  %2530 = getelementptr [25 x i8], [25 x i8]* @.str334, i32 0, i32 0
  %2531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str334.c, i8* %2530)
  %2532 = call i8* @nyx_string_to_cstr(%nyx_string* %2531)
  call void @nyx_print_string(i8* %2532)
  br label %merge425
else424:
  %2533 = getelementptr [22 x i8], [22 x i8]* @.str335, i32 0, i32 0
  %2534 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str335.c, i8* %2533)
  %2535 = call i8* @nyx_string_to_cstr(%nyx_string* %2534)
  call void @nyx_print_string(i8* %2535)
  br label %merge425
merge425:
  ret i64 0
}

define internal %nyx_string* @toolchain_version(
) {
  %2536 = getelementptr [9 x i8], [9 x i8]* @.str336, i32 0, i32 0
  %2537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str336.c, i8* %2536)
  %2538 = call i8* @nyx_string_to_cstr(%nyx_string* %2537)
  %2539 = call %nyx_string* @nyx_getenv(i8* %2538)
  %2540 = alloca %nyx_string*
  store %nyx_string* %2539, %nyx_string** %2540
  %2541 = load %nyx_string*, %nyx_string** %2540
  %2542 = getelementptr [1 x i8], [1 x i8]* @.str337, i32 0, i32 0
  %2543 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str337.c, i8* %2542)
  %2544 = call i1 @nyx_string_equals(%nyx_string* %2541, %nyx_string* %2543)
  br i1 %2544, label %then426, label %else427
then426:
  %2545 = getelementptr [5 x i8], [5 x i8]* @.str338, i32 0, i32 0
  %2546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str338.c, i8* %2545)
  %2547 = call i8* @nyx_string_to_cstr(%nyx_string* %2546)
  %2548 = call %nyx_string* @nyx_getenv(i8* %2547)
  %2549 = alloca %nyx_string*
  store %nyx_string* %2548, %nyx_string** %2549
  %2550 = load %nyx_string*, %nyx_string** %2549
  %2551 = getelementptr [1 x i8], [1 x i8]* @.str339, i32 0, i32 0
  %2552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str339.c, i8* %2551)
  %2553 = call i1 @nyx_string_equals(%nyx_string* %2550, %nyx_string* %2552)
  %2554 = xor i1 %2553, true
  br i1 %2554, label %then429, label %else430
then429:
  %2555 = load %nyx_string*, %nyx_string** %2549
  %2556 = getelementptr [6 x i8], [6 x i8]* @.str340, i32 0, i32 0
  %2557 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str340.c, i8* %2556)
  %2558 = call %nyx_string* @nyx_string_concat(%nyx_string* %2555, %nyx_string* %2557)
  store %nyx_string* %2558, %nyx_string** %2540
  br label %merge431
else430:
  br label %merge431
merge431:
  br label %merge428
else427:
  br label %merge428
merge428:
  %2559 = load %nyx_string*, %nyx_string** %2540
  %2560 = getelementptr [1 x i8], [1 x i8]* @.str341, i32 0, i32 0
  %2561 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str341.c, i8* %2560)
  %2562 = call i1 @nyx_string_equals(%nyx_string* %2559, %nyx_string* %2561)
  %2563 = xor i1 %2562, true
  br i1 %2563, label %then432, label %else433
then432:
  %2564 = load %nyx_string*, %nyx_string** %2540
  %2565 = getelementptr [9 x i8], [9 x i8]* @.str342, i32 0, i32 0
  %2566 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str342.c, i8* %2565)
  %2567 = call %nyx_string* @nyx_string_concat(%nyx_string* %2564, %nyx_string* %2566)
  %2568 = call i8* @nyx_string_to_cstr(%nyx_string* %2567)
  %2569 = call i1 @nyx_file_exists(i8* %2568)
  br i1 %2569, label %then435, label %else436
then435:
  %2570 = load %nyx_string*, %nyx_string** %2540
  %2571 = getelementptr [9 x i8], [9 x i8]* @.str343, i32 0, i32 0
  %2572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str343.c, i8* %2571)
  %2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %2570, %nyx_string* %2572)
  %2574 = call i8* @nyx_string_to_cstr(%nyx_string* %2573)
  %2575 = call %nyx_string* @nyx_read_file(i8* %2574)
  %2576 = alloca %nyx_string*
  store %nyx_string* %2575, %nyx_string** %2576
  %2577 = load %nyx_string*, %nyx_string** %2576
  %2578 = call %nyx_string* @nyx_string_trim(%nyx_string* %2577)
  ret %nyx_string* %2578
else436:
  br label %merge437
merge437:
  br label %merge434
else433:
  br label %merge434
merge434:
  %2579 = getelementptr [8 x i8], [8 x i8]* @.str344, i32 0, i32 0
  %2580 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str344.c, i8* %2579)
  %2581 = call i8* @nyx_string_to_cstr(%nyx_string* %2580)
  %2582 = call i1 @nyx_file_exists(i8* %2581)
  br i1 %2582, label %then438, label %else439
then438:
  %2583 = getelementptr [8 x i8], [8 x i8]* @.str345, i32 0, i32 0
  %2584 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str345.c, i8* %2583)
  %2585 = call i8* @nyx_string_to_cstr(%nyx_string* %2584)
  %2586 = call %nyx_string* @nyx_read_file(i8* %2585)
  %2587 = alloca %nyx_string*
  store %nyx_string* %2586, %nyx_string** %2587
  %2588 = load %nyx_string*, %nyx_string** %2587
  %2589 = call %nyx_string* @nyx_string_trim(%nyx_string* %2588)
  ret %nyx_string* %2589
else439:
  br label %merge440
merge440:
  %2590 = getelementptr [8 x i8], [8 x i8]* @.str346, i32 0, i32 0
  %2591 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str346.c, i8* %2590)
  ret %nyx_string* %2591
}

define internal %nyx_string* @report_template(
) {
  %2592 = getelementptr [51 x i8], [51 x i8]* @.str347, i32 0, i32 0
  %2593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str347.c, i8* %2592)
  %2594 = alloca %nyx_string*
  store %nyx_string* %2593, %nyx_string** %2594
  %2595 = load %nyx_string*, %nyx_string** %2594
  %2596 = getelementptr [74 x i8], [74 x i8]* @.str348, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str348.c, i8* %2596)
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2597)
  store %nyx_string* %2598, %nyx_string** %2594
  %2599 = load %nyx_string*, %nyx_string** %2594
  %2600 = getelementptr [88 x i8], [88 x i8]* @.str349, i32 0, i32 0
  %2601 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str349.c, i8* %2600)
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2599, %nyx_string* %2601)
  store %nyx_string* %2602, %nyx_string** %2594
  %2603 = load %nyx_string*, %nyx_string** %2594
  %2604 = getelementptr [51 x i8], [51 x i8]* @.str350, i32 0, i32 0
  %2605 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str350.c, i8* %2604)
  %2606 = call %nyx_string* @nyx_string_concat(%nyx_string* %2603, %nyx_string* %2605)
  store %nyx_string* %2606, %nyx_string** %2594
  %2607 = load %nyx_string*, %nyx_string** %2594
  %2608 = getelementptr [90 x i8], [90 x i8]* @.str351, i32 0, i32 0
  %2609 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str351.c, i8* %2608)
  %2610 = call %nyx_string* @nyx_string_concat(%nyx_string* %2607, %nyx_string* %2609)
  store %nyx_string* %2610, %nyx_string** %2594
  %2611 = load %nyx_string*, %nyx_string** %2594
  %2612 = getelementptr [104 x i8], [104 x i8]* @.str352, i32 0, i32 0
  %2613 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str352.c, i8* %2612)
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2611, %nyx_string* %2613)
  store %nyx_string* %2614, %nyx_string** %2594
  %2615 = load %nyx_string*, %nyx_string** %2594
  %2616 = getelementptr [99 x i8], [99 x i8]* @.str353, i32 0, i32 0
  %2617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str353.c, i8* %2616)
  %2618 = call %nyx_string* @nyx_string_concat(%nyx_string* %2615, %nyx_string* %2617)
  store %nyx_string* %2618, %nyx_string** %2594
  %2619 = load %nyx_string*, %nyx_string** %2594
  %2620 = getelementptr [126 x i8], [126 x i8]* @.str354, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str354.c, i8* %2620)
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2619, %nyx_string* %2621)
  store %nyx_string* %2622, %nyx_string** %2594
  %2623 = load %nyx_string*, %nyx_string** %2594
  %2624 = getelementptr [21 x i8], [21 x i8]* @.str355, i32 0, i32 0
  %2625 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str355.c, i8* %2624)
  %2626 = call %nyx_string* @nyx_string_concat(%nyx_string* %2623, %nyx_string* %2625)
  %2627 = call %nyx_string* @toolchain_version()
  %2628 = call %nyx_string* @nyx_string_concat(%nyx_string* %2626, %nyx_string* %2627)
  %2629 = getelementptr [25 x i8], [25 x i8]* @.str356, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str356.c, i8* %2629)
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2628, %nyx_string* %2630)
  store %nyx_string* %2631, %nyx_string** %2594
  %2632 = load %nyx_string*, %nyx_string** %2594
  ret %nyx_string* %2632
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %2633 = getelementptr [12 x i8], [12 x i8]* @.str357, i32 0, i32 0
  %2634 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str357.c, i8* %2633)
  %2635 = alloca %nyx_string*
  store %nyx_string* %2634, %nyx_string** %2635
  %2636 = load i1, i1* %do_send.ptr
  %2637 = xor i1 %2636, true
  br i1 %2637, label %then441, label %else442
then441:
  %2638 = load %nyx_string*, %nyx_string** %2635
  %2639 = call i8* @nyx_string_to_cstr(%nyx_string* %2638)
  %2640 = call i1 @nyx_file_exists(i8* %2639)
  br i1 %2640, label %then444, label %else445
then444:
  %2641 = load %nyx_string*, %nyx_string** %2635
  %2642 = call i8* @nyx_string_to_cstr(%nyx_string* %2641)
  %2643 = call %nyx_string* @nyx_read_file(i8* %2642)
  %2644 = alloca %nyx_string*
  store %nyx_string* %2643, %nyx_string** %2644
  %2645 = load %nyx_string*, %nyx_string** %2644
  %2646 = call i64 @nyx_string_byte_length(%nyx_string* %2645)
  %2647 = icmp sge i64 %2646, 40
  br i1 %2647, label %then447, label %else448
then447:
  %2648 = getelementptr [79 x i8], [79 x i8]* @.str358, i32 0, i32 0
  %2649 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str358.c, i8* %2648)
  %2650 = call i8* @nyx_string_to_cstr(%nyx_string* %2649)
  call void @nyx_print_string(i8* %2650)
  %2651 = getelementptr [62 x i8], [62 x i8]* @.str359, i32 0, i32 0
  %2652 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str359.c, i8* %2651)
  %2653 = call i8* @nyx_string_to_cstr(%nyx_string* %2652)
  call void @nyx_print_string(i8* %2653)
  ret i1 1
else448:
  br label %merge449
merge449:
  br label %merge446
else445:
  br label %merge446
merge446:
  %2654 = load %nyx_string*, %nyx_string** %2635
  %2655 = call %nyx_string* @report_template()
  %2656 = call i8* @nyx_string_to_cstr(%nyx_string* %2654)
  %2657 = call i8* @nyx_string_to_cstr(%nyx_string* %2655)
  %2658 = call i1 @nyx_write_file(i8* %2656, i8* %2657)
  %2659 = getelementptr [79 x i8], [79 x i8]* @.str360, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str360.c, i8* %2659)
  %2661 = call i8* @nyx_string_to_cstr(%nyx_string* %2660)
  call void @nyx_print_string(i8* %2661)
  %2662 = getelementptr [71 x i8], [71 x i8]* @.str361, i32 0, i32 0
  %2663 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str361.c, i8* %2662)
  %2664 = call i8* @nyx_string_to_cstr(%nyx_string* %2663)
  call void @nyx_print_string(i8* %2664)
  %2665 = getelementptr [53 x i8], [53 x i8]* @.str362, i32 0, i32 0
  %2666 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str362.c, i8* %2665)
  %2667 = call i8* @nyx_string_to_cstr(%nyx_string* %2666)
  call void @nyx_print_string(i8* %2667)
  ret i1 1
else442:
  br label %merge443
merge443:
  %2668 = load %nyx_string*, %nyx_string** %2635
  %2669 = alloca %nyx_string*
  store %nyx_string* %2668, %nyx_string** %2669
  %2670 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %2671 = getelementptr [1 x i8], [1 x i8]* @.str363, i32 0, i32 0
  %2672 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str363.c, i8* %2671)
  %2673 = call i1 @nyx_string_equals(%nyx_string* %2670, %nyx_string* %2672)
  %2674 = xor i1 %2673, true
  br i1 %2674, label %then450, label %else451
then450:
  %2675 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %2675, %nyx_string** %2669
  br label %merge452
else451:
  br label %merge452
merge452:
  %2676 = load %nyx_string*, %nyx_string** %2669
  %2677 = call i8* @nyx_string_to_cstr(%nyx_string* %2676)
  %2678 = call i1 @nyx_file_exists(i8* %2677)
  %2679 = xor i1 %2678, true
  br i1 %2679, label %then453, label %else454
then453:
  %2680 = getelementptr [18 x i8], [18 x i8]* @.str364, i32 0, i32 0
  %2681 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str364.c, i8* %2680)
  %2682 = load %nyx_string*, %nyx_string** %2669
  %2683 = call %nyx_string* @nyx_string_concat(%nyx_string* %2681, %nyx_string* %2682)
  %2684 = getelementptr [56 x i8], [56 x i8]* @.str365, i32 0, i32 0
  %2685 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str365.c, i8* %2684)
  %2686 = call %nyx_string* @nyx_string_concat(%nyx_string* %2683, %nyx_string* %2685)
  %2687 = call i8* @nyx_string_to_cstr(%nyx_string* %2686)
  call void @nyx_print_string(i8* %2687)
  ret i1 0
else454:
  br label %merge455
merge455:
  %2688 = load %nyx_string*, %nyx_string** %2669
  %2689 = call i8* @nyx_string_to_cstr(%nyx_string* %2688)
  %2690 = call %nyx_string* @nyx_read_file(i8* %2689)
  %2691 = alloca %nyx_string*
  store %nyx_string* %2690, %nyx_string** %2691
  %2692 = load %nyx_string*, %nyx_string** %2691
  %2693 = call i64 @nyx_string_byte_length(%nyx_string* %2692)
  %2694 = icmp slt i64 %2693, 40
  br i1 %2694, label %then456, label %else457
then456:
  %2695 = getelementptr [67 x i8], [67 x i8]* @.str366, i32 0, i32 0
  %2696 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str366.c, i8* %2695)
  %2697 = call i8* @nyx_string_to_cstr(%nyx_string* %2696)
  call void @nyx_print_string(i8* %2697)
  ret i1 0
else457:
  br label %merge458
merge458:
  %2698 = getelementptr [1 x i8], [1 x i8]* @.str367, i32 0, i32 0
  %2699 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str367.c, i8* %2698)
  %2700 = alloca %nyx_string*
  store %nyx_string* %2699, %nyx_string** %2700
  %2701 = getelementptr [5 x i8], [5 x i8]* @.str368, i32 0, i32 0
  %2702 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str368.c, i8* %2701)
  %2703 = call i8* @nyx_string_to_cstr(%nyx_string* %2702)
  %2704 = call %nyx_string* @nyx_getenv(i8* %2703)
  %2705 = alloca %nyx_string*
  store %nyx_string* %2704, %nyx_string** %2705
  %2706 = load %nyx_string*, %nyx_string** %2705
  %2707 = getelementptr [1 x i8], [1 x i8]* @.str369, i32 0, i32 0
  %2708 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str369.c, i8* %2707)
  %2709 = call i1 @nyx_string_equals(%nyx_string* %2706, %nyx_string* %2708)
  %2710 = xor i1 %2709, true
  br i1 %2710, label %then459, label %else460
then459:
  %2711 = load %nyx_string*, %nyx_string** %2705
  %2712 = getelementptr [15 x i8], [15 x i8]* @.str370, i32 0, i32 0
  %2713 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str370.c, i8* %2712)
  %2714 = call %nyx_string* @nyx_string_concat(%nyx_string* %2711, %nyx_string* %2713)
  %2715 = call i8* @nyx_string_to_cstr(%nyx_string* %2714)
  %2716 = call i1 @nyx_file_exists(i8* %2715)
  br i1 %2716, label %then462, label %else463
then462:
  %2717 = load %nyx_string*, %nyx_string** %2705
  %2718 = getelementptr [15 x i8], [15 x i8]* @.str371, i32 0, i32 0
  %2719 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str371.c, i8* %2718)
  %2720 = call %nyx_string* @nyx_string_concat(%nyx_string* %2717, %nyx_string* %2719)
  %2721 = call i8* @nyx_string_to_cstr(%nyx_string* %2720)
  %2722 = call %nyx_string* @nyx_read_file(i8* %2721)
  %2723 = alloca %nyx_string*
  store %nyx_string* %2722, %nyx_string** %2723
  %2724 = load %nyx_string*, %nyx_string** %2723
  %2725 = call %nyx_string* @nyx_string_trim(%nyx_string* %2724)
  store %nyx_string* %2725, %nyx_string** %2700
  br label %merge464
else463:
  br label %merge464
merge464:
  br label %merge461
else460:
  br label %merge461
merge461:
  %2726 = load %nyx_string*, %nyx_string** %2700
  %2727 = getelementptr [1 x i8], [1 x i8]* @.str372, i32 0, i32 0
  %2728 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str372.c, i8* %2727)
  %2729 = call i1 @nyx_string_equals(%nyx_string* %2726, %nyx_string* %2728)
  br i1 %2729, label %then465, label %else466
then465:
  %2730 = getelementptr [77 x i8], [77 x i8]* @.str373, i32 0, i32 0
  %2731 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str373.c, i8* %2730)
  %2732 = call i8* @nyx_string_to_cstr(%nyx_string* %2731)
  call void @nyx_print_string(i8* %2732)
  br label %merge467
else466:
  br label %merge467
merge467:
  %2733 = getelementptr [10 x i8], [10 x i8]* @.str374, i32 0, i32 0
  %2734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str374.c, i8* %2733)
  %2735 = load %nyx_string*, %nyx_string** %2700
  %2736 = call i64 @kv_connect_auth(%nyx_string* %2734, i64 6380, %nyx_string* %2735)
  %2737 = alloca i64
  store i64 %2736, i64* %2737
  %2738 = load i64, i64* %2737
  %2739 = icmp slt i64 %2738, 0
  br i1 %2739, label %then468, label %else469
then468:
  %2740 = getelementptr [54 x i8], [54 x i8]* @.str375, i32 0, i32 0
  %2741 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str375.c, i8* %2740)
  %2742 = call i8* @nyx_string_to_cstr(%nyx_string* %2741)
  call void @nyx_print_string(i8* %2742)
  %2743 = getelementptr [22 x i8], [22 x i8]* @.str376, i32 0, i32 0
  %2744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str376.c, i8* %2743)
  %2745 = load %nyx_string*, %nyx_string** %2669
  %2746 = call %nyx_string* @nyx_string_concat(%nyx_string* %2744, %nyx_string* %2745)
  %2747 = getelementptr [28 x i8], [28 x i8]* @.str377, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str377.c, i8* %2747)
  %2749 = call %nyx_string* @nyx_string_concat(%nyx_string* %2746, %nyx_string* %2748)
  %2750 = call i8* @nyx_string_to_cstr(%nyx_string* %2749)
  call void @nyx_print_string(i8* %2750)
  %2751 = getelementptr [44 x i8], [44 x i8]* @.str378, i32 0, i32 0
  %2752 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str378.c, i8* %2751)
  %2753 = call i8* @nyx_string_to_cstr(%nyx_string* %2752)
  call void @nyx_print_string(i8* %2753)
  ret i1 0
else469:
  br label %merge470
merge470:
  %2754 = getelementptr [5 x i8], [5 x i8]* @.str379, i32 0, i32 0
  %2755 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str379.c, i8* %2754)
  %2756 = load %nyx_string*, %nyx_string** %2691
  %2757 = call %nyx_string* @base64_encode(%nyx_string* %2756)
  %2758 = call %nyx_string* @nyx_string_concat(%nyx_string* %2755, %nyx_string* %2757)
  %2759 = alloca %nyx_string*
  store %nyx_string* %2758, %nyx_string** %2759
  %2760 = load i64, i64* %2737
  %2761 = getelementptr [11 x i8], [11 x i8]* @.str380, i32 0, i32 0
  %2762 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str380.c, i8* %2761)
  %2763 = load %nyx_string*, %nyx_string** %2759
  %2764 = call i64 @kv_rpush(i64 %2760, %nyx_string* %2762, %nyx_string* %2763)
  %2765 = alloca i64
  store i64 %2764, i64* %2765
  %2766 = load i64, i64* %2737
  %2767 = call i64 @kv_close(i64 %2766)
  %2768 = load i64, i64* %2765
  %2769 = icmp sle i64 %2768, 0
  br i1 %2769, label %then471, label %else472
then471:
  %2770 = getelementptr [37 x i8], [37 x i8]* @.str381, i32 0, i32 0
  %2771 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str381.c, i8* %2770)
  %2772 = call i8* @nyx_string_to_cstr(%nyx_string* %2771)
  call void @nyx_print_string(i8* %2772)
  ret i1 0
else472:
  br label %merge473
merge473:
  %2773 = getelementptr [55 x i8], [55 x i8]* @.str382, i32 0, i32 0
  %2774 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str382.c, i8* %2773)
  %2775 = load i64, i64* %2765
  %2776 = call %nyx_string* @nyx_string_from_int(i64 %2775)
  %2777 = call %nyx_string* @nyx_string_concat(%nyx_string* %2774, %nyx_string* %2776)
  %2778 = getelementptr [15 x i8], [15 x i8]* @.str383, i32 0, i32 0
  %2779 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str383.c, i8* %2778)
  %2780 = call %nyx_string* @nyx_string_concat(%nyx_string* %2777, %nyx_string* %2779)
  %2781 = call i8* @nyx_string_to_cstr(%nyx_string* %2780)
  call void @nyx_print_string(i8* %2781)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %2782 = getelementptr [9 x i8], [9 x i8]* @.str384, i32 0, i32 0
  %2783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str384.c, i8* %2782)
  %2784 = call i8* @nyx_string_to_cstr(%nyx_string* %2783)
  %2785 = call %nyx_string* @nyx_getenv(i8* %2784)
  %2786 = alloca %nyx_string*
  store %nyx_string* %2785, %nyx_string** %2786
  %2787 = load %nyx_string*, %nyx_string** %2786
  %2788 = getelementptr [1 x i8], [1 x i8]* @.str385, i32 0, i32 0
  %2789 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str385.c, i8* %2788)
  %2790 = call i1 @nyx_string_equals(%nyx_string* %2787, %nyx_string* %2789)
  br i1 %2790, label %then474, label %else475
then474:
  %2791 = getelementptr [5 x i8], [5 x i8]* @.str386, i32 0, i32 0
  %2792 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str386.c, i8* %2791)
  %2793 = call i8* @nyx_string_to_cstr(%nyx_string* %2792)
  %2794 = call %nyx_string* @nyx_getenv(i8* %2793)
  %2795 = alloca %nyx_string*
  store %nyx_string* %2794, %nyx_string** %2795
  %2796 = load %nyx_string*, %nyx_string** %2795
  %2797 = getelementptr [6 x i8], [6 x i8]* @.str387, i32 0, i32 0
  %2798 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str387.c, i8* %2797)
  %2799 = call %nyx_string* @nyx_string_concat(%nyx_string* %2796, %nyx_string* %2798)
  %2800 = alloca %nyx_string*
  store %nyx_string* %2799, %nyx_string** %2800
  %2801 = alloca i1
  store i1 false, i1* %2801
  %2802 = load %nyx_string*, %nyx_string** %2795
  %2803 = getelementptr [1 x i8], [1 x i8]* @.str388, i32 0, i32 0
  %2804 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str388.c, i8* %2803)
  %2805 = call i1 @nyx_string_equals(%nyx_string* %2802, %nyx_string* %2804)
  %2806 = xor i1 %2805, true
  br i1 %2806, label %sc_and_rhs477, label %sc_and_end478
sc_and_rhs477:
  %2807 = load %nyx_string*, %nyx_string** %2800
  %2808 = getelementptr [5 x i8], [5 x i8]* @.str389, i32 0, i32 0
  %2809 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str389.c, i8* %2808)
  %2810 = call %nyx_string* @nyx_string_concat(%nyx_string* %2807, %nyx_string* %2809)
  %2811 = call i8* @nyx_string_to_cstr(%nyx_string* %2810)
  %2812 = call i1 @nyx_file_exists(i8* %2811)
  store i1 %2812, i1* %2801
  br label %sc_and_end478
sc_and_end478:
  %2813 = load i1, i1* %2801
  br i1 %2813, label %then479, label %else480
then479:
  %2814 = load %nyx_string*, %nyx_string** %2800
  store %nyx_string* %2814, %nyx_string** %2786
  br label %merge481
else480:
  br label %merge481
merge481:
  br label %merge476
else475:
  br label %merge476
merge476:
  %2815 = load %nyx_string*, %nyx_string** %2786
  %2816 = getelementptr [1 x i8], [1 x i8]* @.str390, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str390.c, i8* %2816)
  %2818 = call i1 @nyx_string_equals(%nyx_string* %2815, %nyx_string* %2817)
  br i1 %2818, label %then482, label %else483
then482:
  %2819 = getelementptr [4 x i8], [4 x i8]* @.str391, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str391.c, i8* %2819)
  %2821 = call i8* @nyx_string_to_cstr(%nyx_string* %2820)
  %2822 = call i1 @nyx_file_exists(i8* %2821)
  br i1 %2822, label %then485, label %else486
then485:
  %2823 = getelementptr [2 x i8], [2 x i8]* @.str392, i32 0, i32 0
  %2824 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str392.c, i8* %2823)
  store %nyx_string* %2824, %nyx_string** %2786
  br label %merge487
else486:
  br label %merge487
merge487:
  br label %merge484
else483:
  br label %merge484
merge484:
  %2825 = load %nyx_string*, %nyx_string** %2786
  %2826 = getelementptr [1 x i8], [1 x i8]* @.str393, i32 0, i32 0
  %2827 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str393.c, i8* %2826)
  %2828 = call i1 @nyx_string_equals(%nyx_string* %2825, %nyx_string* %2827)
  br i1 %2828, label %then488, label %else489
then488:
  %2829 = getelementptr [1 x i8], [1 x i8]* @.str394, i32 0, i32 0
  %2830 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str394.c, i8* %2829)
  ret %nyx_string* %2830
else489:
  br label %merge490
merge490:
  %2831 = load %nyx_string*, %nyx_string** %2786
  %2832 = getelementptr [5 x i8], [5 x i8]* @.str395, i32 0, i32 0
  %2833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str395.c, i8* %2832)
  %2834 = call %nyx_string* @nyx_string_concat(%nyx_string* %2831, %nyx_string* %2833)
  ret %nyx_string* %2834
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2835 = alloca i1
  store i1 true, i1* %2835
  %2836 = alloca i1
  store i1 true, i1* %2836
  %2837 = alloca i1
  store i1 true, i1* %2837
  %2838 = load %nyx_string*, %nyx_string** %name.ptr
  %2839 = getelementptr [5 x i8], [5 x i8]* @.str396, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str396.c, i8* %2839)
  %2841 = call i1 @nyx_string_equals(%nyx_string* %2838, %nyx_string* %2840)
  br i1 %2841, label %sc_or_end492, label %sc_or_rhs491
sc_or_rhs491:
  %2842 = load %nyx_string*, %nyx_string** %name.ptr
  %2843 = getelementptr [4 x i8], [4 x i8]* @.str397, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str397.c, i8* %2843)
  %2845 = call i1 @nyx_string_equals(%nyx_string* %2842, %nyx_string* %2844)
  store i1 %2845, i1* %2837
  br label %sc_or_end492
sc_or_end492:
  %2846 = load i1, i1* %2837
  br i1 %2846, label %sc_or_end494, label %sc_or_rhs493
sc_or_rhs493:
  %2847 = load %nyx_string*, %nyx_string** %name.ptr
  %2848 = getelementptr [10 x i8], [10 x i8]* @.str398, i32 0, i32 0
  %2849 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str398.c, i8* %2848)
  %2850 = call i1 @nyx_string_equals(%nyx_string* %2847, %nyx_string* %2849)
  store i1 %2850, i1* %2836
  br label %sc_or_end494
sc_or_end494:
  %2851 = load i1, i1* %2836
  br i1 %2851, label %sc_or_end496, label %sc_or_rhs495
sc_or_rhs495:
  %2852 = load %nyx_string*, %nyx_string** %name.ptr
  %2853 = getelementptr [7 x i8], [7 x i8]* @.str399, i32 0, i32 0
  %2854 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str399.c, i8* %2853)
  %2855 = call i1 @nyx_string_equals(%nyx_string* %2852, %nyx_string* %2854)
  store i1 %2855, i1* %2835
  br label %sc_or_end496
sc_or_end496:
  %2856 = load i1, i1* %2835
  br i1 %2856, label %then497, label %else498
then497:
  %2857 = getelementptr [11 x i8], [11 x i8]* @.str400, i32 0, i32 0
  %2858 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str400.c, i8* %2857)
  ret %nyx_string* %2858
else498:
  br label %merge499
merge499:
  %2859 = alloca i1
  store i1 true, i1* %2859
  %2860 = alloca i1
  store i1 true, i1* %2860
  %2861 = load %nyx_string*, %nyx_string** %name.ptr
  %2862 = getelementptr [7 x i8], [7 x i8]* @.str401, i32 0, i32 0
  %2863 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str401.c, i8* %2862)
  %2864 = call i1 @nyx_string_equals(%nyx_string* %2861, %nyx_string* %2863)
  br i1 %2864, label %sc_or_end501, label %sc_or_rhs500
sc_or_rhs500:
  %2865 = load %nyx_string*, %nyx_string** %name.ptr
  %2866 = getelementptr [3 x i8], [3 x i8]* @.str402, i32 0, i32 0
  %2867 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str402.c, i8* %2866)
  %2868 = call i1 @nyx_string_equals(%nyx_string* %2865, %nyx_string* %2867)
  store i1 %2868, i1* %2860
  br label %sc_or_end501
sc_or_end501:
  %2869 = load i1, i1* %2860
  br i1 %2869, label %sc_or_end503, label %sc_or_rhs502
sc_or_rhs502:
  %2870 = load %nyx_string*, %nyx_string** %name.ptr
  %2871 = getelementptr [9 x i8], [9 x i8]* @.str403, i32 0, i32 0
  %2872 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str403.c, i8* %2871)
  %2873 = call i1 @nyx_string_equals(%nyx_string* %2870, %nyx_string* %2872)
  store i1 %2873, i1* %2859
  br label %sc_or_end503
sc_or_end503:
  %2874 = load i1, i1* %2859
  br i1 %2874, label %then504, label %else505
then504:
  %2875 = getelementptr [20 x i8], [20 x i8]* @.str404, i32 0, i32 0
  %2876 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str404.c, i8* %2875)
  ret %nyx_string* %2876
else505:
  br label %merge506
merge506:
  %2877 = alloca i1
  store i1 true, i1* %2877
  %2878 = alloca i1
  store i1 true, i1* %2878
  %2879 = alloca i1
  store i1 true, i1* %2879
  %2880 = alloca i1
  store i1 true, i1* %2880
  %2881 = alloca i1
  store i1 true, i1* %2881
  %2882 = load %nyx_string*, %nyx_string** %name.ptr
  %2883 = getelementptr [5 x i8], [5 x i8]* @.str405, i32 0, i32 0
  %2884 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str405.c, i8* %2883)
  %2885 = call i1 @nyx_string_equals(%nyx_string* %2882, %nyx_string* %2884)
  br i1 %2885, label %sc_or_end508, label %sc_or_rhs507
sc_or_rhs507:
  %2886 = load %nyx_string*, %nyx_string** %name.ptr
  %2887 = getelementptr [8 x i8], [8 x i8]* @.str406, i32 0, i32 0
  %2888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str406.c, i8* %2887)
  %2889 = call i1 @nyx_string_equals(%nyx_string* %2886, %nyx_string* %2888)
  store i1 %2889, i1* %2881
  br label %sc_or_end508
sc_or_end508:
  %2890 = load i1, i1* %2881
  br i1 %2890, label %sc_or_end510, label %sc_or_rhs509
sc_or_rhs509:
  %2891 = load %nyx_string*, %nyx_string** %name.ptr
  %2892 = getelementptr [5 x i8], [5 x i8]* @.str407, i32 0, i32 0
  %2893 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str407.c, i8* %2892)
  %2894 = call i1 @nyx_string_equals(%nyx_string* %2891, %nyx_string* %2893)
  store i1 %2894, i1* %2880
  br label %sc_or_end510
sc_or_end510:
  %2895 = load i1, i1* %2880
  br i1 %2895, label %sc_or_end512, label %sc_or_rhs511
sc_or_rhs511:
  %2896 = load %nyx_string*, %nyx_string** %name.ptr
  %2897 = getelementptr [4 x i8], [4 x i8]* @.str408, i32 0, i32 0
  %2898 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str408.c, i8* %2897)
  %2899 = call i1 @nyx_string_equals(%nyx_string* %2896, %nyx_string* %2898)
  store i1 %2899, i1* %2879
  br label %sc_or_end512
sc_or_end512:
  %2900 = load i1, i1* %2879
  br i1 %2900, label %sc_or_end514, label %sc_or_rhs513
sc_or_rhs513:
  %2901 = load %nyx_string*, %nyx_string** %name.ptr
  %2902 = getelementptr [7 x i8], [7 x i8]* @.str409, i32 0, i32 0
  %2903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str409.c, i8* %2902)
  %2904 = call i1 @nyx_string_equals(%nyx_string* %2901, %nyx_string* %2903)
  store i1 %2904, i1* %2878
  br label %sc_or_end514
sc_or_end514:
  %2905 = load i1, i1* %2878
  br i1 %2905, label %sc_or_end516, label %sc_or_rhs515
sc_or_rhs515:
  %2906 = load %nyx_string*, %nyx_string** %name.ptr
  %2907 = getelementptr [9 x i8], [9 x i8]* @.str410, i32 0, i32 0
  %2908 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str410.c, i8* %2907)
  %2909 = call i1 @nyx_string_equals(%nyx_string* %2906, %nyx_string* %2908)
  store i1 %2909, i1* %2877
  br label %sc_or_end516
sc_or_end516:
  %2910 = load i1, i1* %2877
  br i1 %2910, label %then517, label %else518
then517:
  %2911 = getelementptr [23 x i8], [23 x i8]* @.str411, i32 0, i32 0
  %2912 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str411.c, i8* %2911)
  ret %nyx_string* %2912
else518:
  br label %merge519
merge519:
  %2913 = alloca i1
  store i1 true, i1* %2913
  %2914 = alloca i1
  store i1 true, i1* %2914
  %2915 = alloca i1
  store i1 true, i1* %2915
  %2916 = load %nyx_string*, %nyx_string** %name.ptr
  %2917 = getelementptr [3 x i8], [3 x i8]* @.str412, i32 0, i32 0
  %2918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str412.c, i8* %2917)
  %2919 = call i1 @nyx_string_equals(%nyx_string* %2916, %nyx_string* %2918)
  br i1 %2919, label %sc_or_end521, label %sc_or_rhs520
sc_or_rhs520:
  %2920 = load %nyx_string*, %nyx_string** %name.ptr
  %2921 = getelementptr [5 x i8], [5 x i8]* @.str413, i32 0, i32 0
  %2922 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str413.c, i8* %2921)
  %2923 = call i1 @nyx_string_equals(%nyx_string* %2920, %nyx_string* %2922)
  store i1 %2923, i1* %2915
  br label %sc_or_end521
sc_or_end521:
  %2924 = load i1, i1* %2915
  br i1 %2924, label %sc_or_end523, label %sc_or_rhs522
sc_or_rhs522:
  %2925 = load %nyx_string*, %nyx_string** %name.ptr
  %2926 = getelementptr [3 x i8], [3 x i8]* @.str414, i32 0, i32 0
  %2927 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str414.c, i8* %2926)
  %2928 = call i1 @nyx_string_equals(%nyx_string* %2925, %nyx_string* %2927)
  store i1 %2928, i1* %2914
  br label %sc_or_end523
sc_or_end523:
  %2929 = load i1, i1* %2914
  br i1 %2929, label %sc_or_end525, label %sc_or_rhs524
sc_or_rhs524:
  %2930 = load %nyx_string*, %nyx_string** %name.ptr
  %2931 = getelementptr [5 x i8], [5 x i8]* @.str415, i32 0, i32 0
  %2932 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str415.c, i8* %2931)
  %2933 = call i1 @nyx_string_equals(%nyx_string* %2930, %nyx_string* %2932)
  store i1 %2933, i1* %2913
  br label %sc_or_end525
sc_or_end525:
  %2934 = load i1, i1* %2913
  br i1 %2934, label %then526, label %else527
then526:
  %2935 = getelementptr [15 x i8], [15 x i8]* @.str416, i32 0, i32 0
  %2936 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str416.c, i8* %2935)
  ret %nyx_string* %2936
else527:
  br label %merge528
merge528:
  %2937 = alloca i1
  store i1 true, i1* %2937
  %2938 = alloca i1
  store i1 true, i1* %2938
  %2939 = alloca i1
  store i1 true, i1* %2939
  %2940 = alloca i1
  store i1 true, i1* %2940
  %2941 = alloca i1
  store i1 true, i1* %2941
  %2942 = load %nyx_string*, %nyx_string** %name.ptr
  %2943 = getelementptr [4 x i8], [4 x i8]* @.str417, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str417.c, i8* %2943)
  %2945 = call i1 @nyx_string_equals(%nyx_string* %2942, %nyx_string* %2944)
  br i1 %2945, label %sc_or_end530, label %sc_or_rhs529
sc_or_rhs529:
  %2946 = load %nyx_string*, %nyx_string** %name.ptr
  %2947 = getelementptr [4 x i8], [4 x i8]* @.str418, i32 0, i32 0
  %2948 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str418.c, i8* %2947)
  %2949 = call i1 @nyx_string_equals(%nyx_string* %2946, %nyx_string* %2948)
  store i1 %2949, i1* %2941
  br label %sc_or_end530
sc_or_end530:
  %2950 = load i1, i1* %2941
  br i1 %2950, label %sc_or_end532, label %sc_or_rhs531
sc_or_rhs531:
  %2951 = load %nyx_string*, %nyx_string** %name.ptr
  %2952 = getelementptr [4 x i8], [4 x i8]* @.str419, i32 0, i32 0
  %2953 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str419.c, i8* %2952)
  %2954 = call i1 @nyx_string_equals(%nyx_string* %2951, %nyx_string* %2953)
  store i1 %2954, i1* %2940
  br label %sc_or_end532
sc_or_end532:
  %2955 = load i1, i1* %2940
  br i1 %2955, label %sc_or_end534, label %sc_or_rhs533
sc_or_rhs533:
  %2956 = load %nyx_string*, %nyx_string** %name.ptr
  %2957 = getelementptr [6 x i8], [6 x i8]* @.str420, i32 0, i32 0
  %2958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str420.c, i8* %2957)
  %2959 = call i1 @nyx_string_equals(%nyx_string* %2956, %nyx_string* %2958)
  store i1 %2959, i1* %2939
  br label %sc_or_end534
sc_or_end534:
  %2960 = load i1, i1* %2939
  br i1 %2960, label %sc_or_end536, label %sc_or_rhs535
sc_or_rhs535:
  %2961 = load %nyx_string*, %nyx_string** %name.ptr
  %2962 = getelementptr [4 x i8], [4 x i8]* @.str421, i32 0, i32 0
  %2963 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str421.c, i8* %2962)
  %2964 = call i1 @nyx_string_equals(%nyx_string* %2961, %nyx_string* %2963)
  store i1 %2964, i1* %2938
  br label %sc_or_end536
sc_or_end536:
  %2965 = load i1, i1* %2938
  br i1 %2965, label %sc_or_end538, label %sc_or_rhs537
sc_or_rhs537:
  %2966 = load %nyx_string*, %nyx_string** %name.ptr
  %2967 = getelementptr [4 x i8], [4 x i8]* @.str422, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str422.c, i8* %2967)
  %2969 = call i1 @nyx_string_equals(%nyx_string* %2966, %nyx_string* %2968)
  store i1 %2969, i1* %2937
  br label %sc_or_end538
sc_or_end538:
  %2970 = load i1, i1* %2937
  br i1 %2970, label %then539, label %else540
then539:
  %2971 = getelementptr [4 x i8], [4 x i8]* @.str423, i32 0, i32 0
  %2972 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str423.c, i8* %2971)
  ret %nyx_string* %2972
else540:
  br label %merge541
merge541:
  %2973 = alloca i1
  store i1 true, i1* %2973
  %2974 = alloca i1
  store i1 true, i1* %2974
  %2975 = alloca i1
  store i1 true, i1* %2975
  %2976 = alloca i1
  store i1 true, i1* %2976
  %2977 = load %nyx_string*, %nyx_string** %name.ptr
  %2978 = getelementptr [7 x i8], [7 x i8]* @.str424, i32 0, i32 0
  %2979 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str424.c, i8* %2978)
  %2980 = call i1 @nyx_string_equals(%nyx_string* %2977, %nyx_string* %2979)
  br i1 %2980, label %sc_or_end543, label %sc_or_rhs542
sc_or_rhs542:
  %2981 = load %nyx_string*, %nyx_string** %name.ptr
  %2982 = getelementptr [8 x i8], [8 x i8]* @.str425, i32 0, i32 0
  %2983 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str425.c, i8* %2982)
  %2984 = call i1 @nyx_string_equals(%nyx_string* %2981, %nyx_string* %2983)
  store i1 %2984, i1* %2976
  br label %sc_or_end543
sc_or_end543:
  %2985 = load i1, i1* %2976
  br i1 %2985, label %sc_or_end545, label %sc_or_rhs544
sc_or_rhs544:
  %2986 = load %nyx_string*, %nyx_string** %name.ptr
  %2987 = getelementptr [10 x i8], [10 x i8]* @.str426, i32 0, i32 0
  %2988 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str426.c, i8* %2987)
  %2989 = call i1 @nyx_string_equals(%nyx_string* %2986, %nyx_string* %2988)
  store i1 %2989, i1* %2975
  br label %sc_or_end545
sc_or_end545:
  %2990 = load i1, i1* %2975
  br i1 %2990, label %sc_or_end547, label %sc_or_rhs546
sc_or_rhs546:
  %2991 = load %nyx_string*, %nyx_string** %name.ptr
  %2992 = getelementptr [5 x i8], [5 x i8]* @.str427, i32 0, i32 0
  %2993 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str427.c, i8* %2992)
  %2994 = call i1 @nyx_string_equals(%nyx_string* %2991, %nyx_string* %2993)
  store i1 %2994, i1* %2974
  br label %sc_or_end547
sc_or_end547:
  %2995 = load i1, i1* %2974
  br i1 %2995, label %sc_or_end549, label %sc_or_rhs548
sc_or_rhs548:
  %2996 = load %nyx_string*, %nyx_string** %name.ptr
  %2997 = getelementptr [6 x i8], [6 x i8]* @.str428, i32 0, i32 0
  %2998 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str428.c, i8* %2997)
  %2999 = call i1 @nyx_string_equals(%nyx_string* %2996, %nyx_string* %2998)
  store i1 %2999, i1* %2973
  br label %sc_or_end549
sc_or_end549:
  %3000 = load i1, i1* %2973
  br i1 %3000, label %then550, label %else551
then550:
  %3001 = getelementptr [13 x i8], [13 x i8]* @.str429, i32 0, i32 0
  %3002 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str429.c, i8* %3001)
  ret %nyx_string* %3002
else551:
  br label %merge552
merge552:
  %3003 = alloca i1
  store i1 true, i1* %3003
  %3004 = alloca i1
  store i1 true, i1* %3004
  %3005 = alloca i1
  store i1 true, i1* %3005
  %3006 = alloca i1
  store i1 true, i1* %3006
  %3007 = load %nyx_string*, %nyx_string** %name.ptr
  %3008 = getelementptr [7 x i8], [7 x i8]* @.str430, i32 0, i32 0
  %3009 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str430.c, i8* %3008)
  %3010 = call i1 @nyx_string_equals(%nyx_string* %3007, %nyx_string* %3009)
  br i1 %3010, label %sc_or_end554, label %sc_or_rhs553
sc_or_rhs553:
  %3011 = load %nyx_string*, %nyx_string** %name.ptr
  %3012 = getelementptr [4 x i8], [4 x i8]* @.str431, i32 0, i32 0
  %3013 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str431.c, i8* %3012)
  %3014 = call i1 @nyx_string_equals(%nyx_string* %3011, %nyx_string* %3013)
  store i1 %3014, i1* %3006
  br label %sc_or_end554
sc_or_end554:
  %3015 = load i1, i1* %3006
  br i1 %3015, label %sc_or_end556, label %sc_or_rhs555
sc_or_rhs555:
  %3016 = load %nyx_string*, %nyx_string** %name.ptr
  %3017 = getelementptr [5 x i8], [5 x i8]* @.str432, i32 0, i32 0
  %3018 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str432.c, i8* %3017)
  %3019 = call i1 @nyx_string_equals(%nyx_string* %3016, %nyx_string* %3018)
  store i1 %3019, i1* %3005
  br label %sc_or_end556
sc_or_end556:
  %3020 = load i1, i1* %3005
  br i1 %3020, label %sc_or_end558, label %sc_or_rhs557
sc_or_rhs557:
  %3021 = load %nyx_string*, %nyx_string** %name.ptr
  %3022 = getelementptr [7 x i8], [7 x i8]* @.str433, i32 0, i32 0
  %3023 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str433.c, i8* %3022)
  %3024 = call i1 @nyx_string_equals(%nyx_string* %3021, %nyx_string* %3023)
  store i1 %3024, i1* %3004
  br label %sc_or_end558
sc_or_end558:
  %3025 = load i1, i1* %3004
  br i1 %3025, label %sc_or_end560, label %sc_or_rhs559
sc_or_rhs559:
  %3026 = load %nyx_string*, %nyx_string** %name.ptr
  %3027 = getelementptr [5 x i8], [5 x i8]* @.str434, i32 0, i32 0
  %3028 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str434.c, i8* %3027)
  %3029 = call i1 @nyx_string_equals(%nyx_string* %3026, %nyx_string* %3028)
  store i1 %3029, i1* %3003
  br label %sc_or_end560
sc_or_end560:
  %3030 = load i1, i1* %3003
  br i1 %3030, label %then561, label %else562
then561:
  %3031 = getelementptr [19 x i8], [19 x i8]* @.str435, i32 0, i32 0
  %3032 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str435.c, i8* %3031)
  ret %nyx_string* %3032
else562:
  br label %merge563
merge563:
  %3033 = alloca i1
  store i1 true, i1* %3033
  %3034 = load %nyx_string*, %nyx_string** %name.ptr
  %3035 = getelementptr [5 x i8], [5 x i8]* @.str436, i32 0, i32 0
  %3036 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str436.c, i8* %3035)
  %3037 = call i1 @nyx_string_equals(%nyx_string* %3034, %nyx_string* %3036)
  br i1 %3037, label %sc_or_end565, label %sc_or_rhs564
sc_or_rhs564:
  %3038 = load %nyx_string*, %nyx_string** %name.ptr
  %3039 = getelementptr [9 x i8], [9 x i8]* @.str437, i32 0, i32 0
  %3040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str437.c, i8* %3039)
  %3041 = call i1 @nyx_string_equals(%nyx_string* %3038, %nyx_string* %3040)
  store i1 %3041, i1* %3033
  br label %sc_or_end565
sc_or_end565:
  %3042 = load i1, i1* %3033
  br i1 %3042, label %then566, label %else567
then566:
  %3043 = getelementptr [7 x i8], [7 x i8]* @.str438, i32 0, i32 0
  %3044 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str438.c, i8* %3043)
  ret %nyx_string* %3044
else567:
  br label %merge568
merge568:
  %3045 = alloca i1
  store i1 true, i1* %3045
  %3046 = alloca i1
  store i1 true, i1* %3046
  %3047 = alloca i1
  store i1 true, i1* %3047
  %3048 = load %nyx_string*, %nyx_string** %name.ptr
  %3049 = getelementptr [7 x i8], [7 x i8]* @.str439, i32 0, i32 0
  %3050 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str439.c, i8* %3049)
  %3051 = call i1 @nyx_string_equals(%nyx_string* %3048, %nyx_string* %3050)
  br i1 %3051, label %sc_or_end570, label %sc_or_rhs569
sc_or_rhs569:
  %3052 = load %nyx_string*, %nyx_string** %name.ptr
  %3053 = getelementptr [8 x i8], [8 x i8]* @.str440, i32 0, i32 0
  %3054 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str440.c, i8* %3053)
  %3055 = call i1 @nyx_string_equals(%nyx_string* %3052, %nyx_string* %3054)
  store i1 %3055, i1* %3047
  br label %sc_or_end570
sc_or_end570:
  %3056 = load i1, i1* %3047
  br i1 %3056, label %sc_or_end572, label %sc_or_rhs571
sc_or_rhs571:
  %3057 = load %nyx_string*, %nyx_string** %name.ptr
  %3058 = getelementptr [14 x i8], [14 x i8]* @.str441, i32 0, i32 0
  %3059 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str441.c, i8* %3058)
  %3060 = call i1 @nyx_string_equals(%nyx_string* %3057, %nyx_string* %3059)
  store i1 %3060, i1* %3046
  br label %sc_or_end572
sc_or_end572:
  %3061 = load i1, i1* %3046
  br i1 %3061, label %sc_or_end574, label %sc_or_rhs573
sc_or_rhs573:
  %3062 = load %nyx_string*, %nyx_string** %name.ptr
  %3063 = getelementptr [6 x i8], [6 x i8]* @.str442, i32 0, i32 0
  %3064 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str442.c, i8* %3063)
  %3065 = call i1 @nyx_string_equals(%nyx_string* %3062, %nyx_string* %3064)
  store i1 %3065, i1* %3045
  br label %sc_or_end574
sc_or_end574:
  %3066 = load i1, i1* %3045
  br i1 %3066, label %then575, label %else576
then575:
  %3067 = getelementptr [16 x i8], [16 x i8]* @.str443, i32 0, i32 0
  %3068 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str443.c, i8* %3067)
  ret %nyx_string* %3068
else576:
  br label %merge577
merge577:
  %3069 = alloca i1
  store i1 true, i1* %3069
  %3070 = alloca i1
  store i1 true, i1* %3070
  %3071 = alloca i1
  store i1 true, i1* %3071
  %3072 = alloca i1
  store i1 true, i1* %3072
  %3073 = alloca i1
  store i1 true, i1* %3073
  %3074 = alloca i1
  store i1 true, i1* %3074
  %3075 = alloca i1
  store i1 true, i1* %3075
  %3076 = load %nyx_string*, %nyx_string** %name.ptr
  %3077 = getelementptr [4 x i8], [4 x i8]* @.str444, i32 0, i32 0
  %3078 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str444.c, i8* %3077)
  %3079 = call i1 @nyx_string_equals(%nyx_string* %3076, %nyx_string* %3078)
  br i1 %3079, label %sc_or_end579, label %sc_or_rhs578
sc_or_rhs578:
  %3080 = load %nyx_string*, %nyx_string** %name.ptr
  %3081 = getelementptr [6 x i8], [6 x i8]* @.str445, i32 0, i32 0
  %3082 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str445.c, i8* %3081)
  %3083 = call i1 @nyx_string_equals(%nyx_string* %3080, %nyx_string* %3082)
  store i1 %3083, i1* %3075
  br label %sc_or_end579
sc_or_end579:
  %3084 = load i1, i1* %3075
  br i1 %3084, label %sc_or_end581, label %sc_or_rhs580
sc_or_rhs580:
  %3085 = load %nyx_string*, %nyx_string** %name.ptr
  %3086 = getelementptr [11 x i8], [11 x i8]* @.str446, i32 0, i32 0
  %3087 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str446.c, i8* %3086)
  %3088 = call i1 @nyx_string_equals(%nyx_string* %3085, %nyx_string* %3087)
  store i1 %3088, i1* %3074
  br label %sc_or_end581
sc_or_end581:
  %3089 = load i1, i1* %3074
  br i1 %3089, label %sc_or_end583, label %sc_or_rhs582
sc_or_rhs582:
  %3090 = load %nyx_string*, %nyx_string** %name.ptr
  %3091 = getelementptr [6 x i8], [6 x i8]* @.str447, i32 0, i32 0
  %3092 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str447.c, i8* %3091)
  %3093 = call i1 @nyx_string_equals(%nyx_string* %3090, %nyx_string* %3092)
  store i1 %3093, i1* %3073
  br label %sc_or_end583
sc_or_end583:
  %3094 = load i1, i1* %3073
  br i1 %3094, label %sc_or_end585, label %sc_or_rhs584
sc_or_rhs584:
  %3095 = load %nyx_string*, %nyx_string** %name.ptr
  %3096 = getelementptr [9 x i8], [9 x i8]* @.str448, i32 0, i32 0
  %3097 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str448.c, i8* %3096)
  %3098 = call i1 @nyx_string_equals(%nyx_string* %3095, %nyx_string* %3097)
  store i1 %3098, i1* %3072
  br label %sc_or_end585
sc_or_end585:
  %3099 = load i1, i1* %3072
  br i1 %3099, label %sc_or_end587, label %sc_or_rhs586
sc_or_rhs586:
  %3100 = load %nyx_string*, %nyx_string** %name.ptr
  %3101 = getelementptr [14 x i8], [14 x i8]* @.str449, i32 0, i32 0
  %3102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str449.c, i8* %3101)
  %3103 = call i1 @nyx_string_equals(%nyx_string* %3100, %nyx_string* %3102)
  store i1 %3103, i1* %3071
  br label %sc_or_end587
sc_or_end587:
  %3104 = load i1, i1* %3071
  br i1 %3104, label %sc_or_end589, label %sc_or_rhs588
sc_or_rhs588:
  %3105 = load %nyx_string*, %nyx_string** %name.ptr
  %3106 = getelementptr [6 x i8], [6 x i8]* @.str450, i32 0, i32 0
  %3107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str450.c, i8* %3106)
  %3108 = call i1 @nyx_string_equals(%nyx_string* %3105, %nyx_string* %3107)
  store i1 %3108, i1* %3070
  br label %sc_or_end589
sc_or_end589:
  %3109 = load i1, i1* %3070
  br i1 %3109, label %sc_or_end591, label %sc_or_rhs590
sc_or_rhs590:
  %3110 = load %nyx_string*, %nyx_string** %name.ptr
  %3111 = getelementptr [7 x i8], [7 x i8]* @.str451, i32 0, i32 0
  %3112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str451.c, i8* %3111)
  %3113 = call i1 @nyx_string_equals(%nyx_string* %3110, %nyx_string* %3112)
  store i1 %3113, i1* %3069
  br label %sc_or_end591
sc_or_end591:
  %3114 = load i1, i1* %3069
  br i1 %3114, label %then592, label %else593
then592:
  %3115 = getelementptr [26 x i8], [26 x i8]* @.str452, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str452.c, i8* %3115)
  ret %nyx_string* %3116
else593:
  br label %merge594
merge594:
  %3117 = alloca i1
  store i1 true, i1* %3117
  %3118 = alloca i1
  store i1 true, i1* %3118
  %3119 = alloca i1
  store i1 true, i1* %3119
  %3120 = load %nyx_string*, %nyx_string** %name.ptr
  %3121 = getelementptr [6 x i8], [6 x i8]* @.str453, i32 0, i32 0
  %3122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str453.c, i8* %3121)
  %3123 = call i1 @nyx_string_equals(%nyx_string* %3120, %nyx_string* %3122)
  br i1 %3123, label %sc_or_end596, label %sc_or_rhs595
sc_or_rhs595:
  %3124 = load %nyx_string*, %nyx_string** %name.ptr
  %3125 = getelementptr [4 x i8], [4 x i8]* @.str454, i32 0, i32 0
  %3126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str454.c, i8* %3125)
  %3127 = call i1 @nyx_string_equals(%nyx_string* %3124, %nyx_string* %3126)
  store i1 %3127, i1* %3119
  br label %sc_or_end596
sc_or_end596:
  %3128 = load i1, i1* %3119
  br i1 %3128, label %sc_or_end598, label %sc_or_rhs597
sc_or_rhs597:
  %3129 = load %nyx_string*, %nyx_string** %name.ptr
  %3130 = getelementptr [3 x i8], [3 x i8]* @.str455, i32 0, i32 0
  %3131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str455.c, i8* %3130)
  %3132 = call i1 @nyx_string_equals(%nyx_string* %3129, %nyx_string* %3131)
  store i1 %3132, i1* %3118
  br label %sc_or_end598
sc_or_end598:
  %3133 = load i1, i1* %3118
  br i1 %3133, label %sc_or_end600, label %sc_or_rhs599
sc_or_rhs599:
  %3134 = load %nyx_string*, %nyx_string** %name.ptr
  %3135 = getelementptr [10 x i8], [10 x i8]* @.str456, i32 0, i32 0
  %3136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str456.c, i8* %3135)
  %3137 = call i1 @nyx_string_equals(%nyx_string* %3134, %nyx_string* %3136)
  store i1 %3137, i1* %3117
  br label %sc_or_end600
sc_or_end600:
  %3138 = load i1, i1* %3117
  br i1 %3138, label %then601, label %else602
then601:
  %3139 = getelementptr [8 x i8], [8 x i8]* @.str457, i32 0, i32 0
  %3140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str457.c, i8* %3139)
  ret %nyx_string* %3140
else602:
  br label %merge603
merge603:
  %3141 = alloca i1
  store i1 true, i1* %3141
  %3142 = alloca i1
  store i1 true, i1* %3142
  %3143 = alloca i1
  store i1 true, i1* %3143
  %3144 = alloca i1
  store i1 true, i1* %3144
  %3145 = alloca i1
  store i1 true, i1* %3145
  %3146 = alloca i1
  store i1 true, i1* %3146
  %3147 = load %nyx_string*, %nyx_string** %name.ptr
  %3148 = getelementptr [5 x i8], [5 x i8]* @.str458, i32 0, i32 0
  %3149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str458.c, i8* %3148)
  %3150 = call i1 @nyx_string_equals(%nyx_string* %3147, %nyx_string* %3149)
  br i1 %3150, label %sc_or_end605, label %sc_or_rhs604
sc_or_rhs604:
  %3151 = load %nyx_string*, %nyx_string** %name.ptr
  %3152 = getelementptr [4 x i8], [4 x i8]* @.str459, i32 0, i32 0
  %3153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str459.c, i8* %3152)
  %3154 = call i1 @nyx_string_equals(%nyx_string* %3151, %nyx_string* %3153)
  store i1 %3154, i1* %3146
  br label %sc_or_end605
sc_or_end605:
  %3155 = load i1, i1* %3146
  br i1 %3155, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3156 = load %nyx_string*, %nyx_string** %name.ptr
  %3157 = getelementptr [4 x i8], [4 x i8]* @.str460, i32 0, i32 0
  %3158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str460.c, i8* %3157)
  %3159 = call i1 @nyx_string_equals(%nyx_string* %3156, %nyx_string* %3158)
  store i1 %3159, i1* %3145
  br label %sc_or_end607
sc_or_end607:
  %3160 = load i1, i1* %3145
  br i1 %3160, label %sc_or_end609, label %sc_or_rhs608
sc_or_rhs608:
  %3161 = load %nyx_string*, %nyx_string** %name.ptr
  %3162 = getelementptr [8 x i8], [8 x i8]* @.str461, i32 0, i32 0
  %3163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str461.c, i8* %3162)
  %3164 = call i1 @nyx_string_equals(%nyx_string* %3161, %nyx_string* %3163)
  store i1 %3164, i1* %3144
  br label %sc_or_end609
sc_or_end609:
  %3165 = load i1, i1* %3144
  br i1 %3165, label %sc_or_end611, label %sc_or_rhs610
sc_or_rhs610:
  %3166 = load %nyx_string*, %nyx_string** %name.ptr
  %3167 = getelementptr [7 x i8], [7 x i8]* @.str462, i32 0, i32 0
  %3168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str462.c, i8* %3167)
  %3169 = call i1 @nyx_string_equals(%nyx_string* %3166, %nyx_string* %3168)
  store i1 %3169, i1* %3143
  br label %sc_or_end611
sc_or_end611:
  %3170 = load i1, i1* %3143
  br i1 %3170, label %sc_or_end613, label %sc_or_rhs612
sc_or_rhs612:
  %3171 = load %nyx_string*, %nyx_string** %name.ptr
  %3172 = getelementptr [8 x i8], [8 x i8]* @.str463, i32 0, i32 0
  %3173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str463.c, i8* %3172)
  %3174 = call i1 @nyx_string_equals(%nyx_string* %3171, %nyx_string* %3173)
  store i1 %3174, i1* %3142
  br label %sc_or_end613
sc_or_end613:
  %3175 = load i1, i1* %3142
  br i1 %3175, label %sc_or_end615, label %sc_or_rhs614
sc_or_rhs614:
  %3176 = load %nyx_string*, %nyx_string** %name.ptr
  %3177 = getelementptr [11 x i8], [11 x i8]* @.str464, i32 0, i32 0
  %3178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str464.c, i8* %3177)
  %3179 = call i1 @nyx_string_equals(%nyx_string* %3176, %nyx_string* %3178)
  store i1 %3179, i1* %3141
  br label %sc_or_end615
sc_or_end615:
  %3180 = load i1, i1* %3141
  br i1 %3180, label %then616, label %else617
then616:
  %3181 = getelementptr [14 x i8], [14 x i8]* @.str465, i32 0, i32 0
  %3182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str465.c, i8* %3181)
  ret %nyx_string* %3182
else617:
  br label %merge618
merge618:
  %3183 = getelementptr [1 x i8], [1 x i8]* @.str466, i32 0, i32 0
  %3184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str466.c, i8* %3183)
  ret %nyx_string* %3184
}

define internal i64 @capabilities_paren_delta(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %3185 = alloca i64
  store i64 0, i64* %3185
  %3186 = alloca i64
  store i64 0, i64* %3186
  %3187 = call i8* @llvm.stacksave()
  br label %while_cond619
while_cond619:
  %3188 = load i64, i64* %3186
  %3189 = load %nyx_string*, %nyx_string** %s.ptr
  %3190 = call i64 @nyx_string_byte_length(%nyx_string* %3189)
  %3191 = icmp slt i64 %3188, %3190
  br i1 %3191, label %while_body620, label %while_end621
while_body620:
  call void @llvm.stackrestore(i8* %3187)
  %3192 = load %nyx_string*, %nyx_string** %s.ptr
  %3193 = load i64, i64* %3186
  %3194 = call i8 @nyx_string_char_at(%nyx_string* %3192, i64 %3193)
  %3195 = zext i8 %3194 to i64
  %3196 = trunc i64 %3195 to i8
  %3197 = alloca i8
  store i8 %3196, i8* %3197
  %3198 = load i8, i8* %3197
  %3199 = getelementptr [1 x i8], [1 x i8]* @.str467, i32 0, i32 0
  %3200 = load i8, i8* %3199
  %3201 = zext i8 %3200 to i64
  %3202 = zext i8 %3198 to i64
  %3203 = icmp eq i64 %3202, %3201
  br i1 %3203, label %then622, label %else623
then622:
  %3204 = load i64, i64* %3185
  %3205 = add i64 %3204, 1
  store i64 %3205, i64* %3185
  br label %merge624
else623:
  br label %merge624
merge624:
  %3206 = load i8, i8* %3197
  %3207 = getelementptr [1 x i8], [1 x i8]* @.str468, i32 0, i32 0
  %3208 = load i8, i8* %3207
  %3209 = zext i8 %3208 to i64
  %3210 = zext i8 %3206 to i64
  %3211 = icmp eq i64 %3210, %3209
  br i1 %3211, label %then625, label %else626
then625:
  %3212 = load i64, i64* %3185
  %3213 = sub i64 %3212, 1
  store i64 %3213, i64* %3185
  br label %merge627
else626:
  br label %merge627
merge627:
  %3214 = load i64, i64* %3186
  %3215 = add i64 %3214, 1
  store i64 %3215, i64* %3186
  br label %while_cond619
while_end621:
  %3216 = load i64, i64* %3185
  ret i64 %3216
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %3217 = load %nyx_string*, %nyx_string** %filename.ptr
  %3218 = load %nyx_string*, %nyx_string** %filename.ptr
  %3219 = call i64 @nyx_string_byte_length(%nyx_string* %3218)
  %3220 = sub i64 %3219, 3
  %3221 = call %nyx_string* @nyx_string_substring(%nyx_string* %3217, i64 0, i64 %3220)
  %3222 = alloca %nyx_string*
  store %nyx_string* %3221, %nyx_string** %3222
  %3223 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %3224 = getelementptr [2 x i8], [2 x i8]* @.str469, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str469.c, i8* %3224)
  %3226 = call %nyx_string* @nyx_string_concat(%nyx_string* %3223, %nyx_string* %3225)
  %3227 = load %nyx_string*, %nyx_string** %filename.ptr
  %3228 = call %nyx_string* @nyx_string_concat(%nyx_string* %3226, %nyx_string* %3227)
  %3229 = call i8* @nyx_string_to_cstr(%nyx_string* %3228)
  %3230 = call %nyx_string* @nyx_read_file(i8* %3229)
  %3231 = alloca %nyx_string*
  store %nyx_string* %3230, %nyx_string** %3231
  %3232 = load %nyx_string*, %nyx_string** %3231
  %3233 = getelementptr [2 x i8], [2 x i8]* @.str470, i32 0, i32 0
  %3234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str470.c, i8* %3233)
  %3235 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3232, %nyx_string* %3234)
  %3236 = alloca { i64, i8* }*
  store { i64, i8* }* %3235, { i64, i8* }** %3236
  %3237 = getelementptr [1 x i8], [1 x i8]* @.str471, i32 0, i32 0
  %3238 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str471.c, i8* %3237)
  %3239 = alloca %nyx_string*
  store %nyx_string* %3238, %nyx_string** %3239
  %3240 = getelementptr [1 x i8], [1 x i8]* @.str472, i32 0, i32 0
  %3241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str472.c, i8* %3240)
  %3242 = alloca %nyx_string*
  store %nyx_string* %3241, %nyx_string** %3242
  %3243 = alloca i64
  store i64 0, i64* %3243
  %3244 = alloca i64
  store i64 0, i64* %3244
  %3245 = getelementptr [4 x i8], [4 x i8]* @.str473, i32 0, i32 0
  %3246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str473.c, i8* %3245)
  %3247 = alloca %nyx_string*
  store %nyx_string* %3246, %nyx_string** %3247
  %3248 = getelementptr [1 x i8], [1 x i8]* @.str474, i32 0, i32 0
  %3249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str474.c, i8* %3248)
  %3250 = alloca %nyx_string*
  store %nyx_string* %3249, %nyx_string** %3250
  %3251 = getelementptr [2 x i8], [2 x i8]* @.str475, i32 0, i32 0
  %3252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str475.c, i8* %3251)
  %3253 = alloca %nyx_string*
  store %nyx_string* %3252, %nyx_string** %3253
  %3254 = getelementptr [8 x i8], [8 x i8]* @.str476, i32 0, i32 0
  %3255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str476.c, i8* %3254)
  %3256 = alloca %nyx_string*
  store %nyx_string* %3255, %nyx_string** %3256
  %3257 = getelementptr [11 x i8], [11 x i8]* @.str477, i32 0, i32 0
  %3258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str477.c, i8* %3257)
  %3259 = alloca %nyx_string*
  store %nyx_string* %3258, %nyx_string** %3259
  %3260 = getelementptr [4 x i8], [4 x i8]* @.str478, i32 0, i32 0
  %3261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str478.c, i8* %3260)
  %3262 = alloca %nyx_string*
  store %nyx_string* %3261, %nyx_string** %3262
  %3263 = getelementptr [2 x i8], [2 x i8]* @.str479, i32 0, i32 0
  %3264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str479.c, i8* %3263)
  %3265 = alloca %nyx_string*
  store %nyx_string* %3264, %nyx_string** %3265
  %3266 = getelementptr [6 x i8], [6 x i8]* @.str480, i32 0, i32 0
  %3267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str480.c, i8* %3266)
  %3268 = alloca %nyx_string*
  store %nyx_string* %3267, %nyx_string** %3268
  %3269 = getelementptr [2 x i8], [2 x i8]* @.str481, i32 0, i32 0
  %3270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str481.c, i8* %3269)
  %3271 = alloca %nyx_string*
  store %nyx_string* %3270, %nyx_string** %3271
  %3272 = call i8* @llvm.stacksave()
  br label %while_cond628
while_cond628:
  %3273 = load i64, i64* %3244
  %3274 = load { i64, i8* }*, { i64, i8* }** %3236
  %3275 = call i64 @nyx_array_length({ i64, i8* }* %3274)
  %3276 = icmp slt i64 %3273, %3275
  br i1 %3276, label %while_body629, label %while_end630
while_body629:
  call void @llvm.stackrestore(i8* %3272)
  %3277 = load { i64, i8* }*, { i64, i8* }** %3236
  %3278 = load i64, i64* %3244
  %3279 = call i64 @nyx_array_get_checked({ i64, i8* }* %3277, i64 %3278, i64 2)
  %3280 = inttoptr i64 %3279 to %nyx_string*
  %3281 = alloca %nyx_string*
  store %nyx_string* %3280, %nyx_string** %3281
  %3282 = load %nyx_string*, %nyx_string** %3281
  %3283 = call %nyx_string* @nyx_string_trim(%nyx_string* %3282)
  %3284 = alloca %nyx_string*
  store %nyx_string* %3283, %nyx_string** %3284
  %3285 = load %nyx_string*, %nyx_string** %3284
  %3286 = load %nyx_string*, %nyx_string** %3247
  %3287 = call i1 @nyx_string_starts_with(%nyx_string* %3285, %nyx_string* %3286)
  br i1 %3287, label %then631, label %else632
then631:
  %3288 = load %nyx_string*, %nyx_string** %3284
  %3289 = load %nyx_string*, %nyx_string** %3284
  %3290 = call i64 @nyx_string_byte_length(%nyx_string* %3289)
  %3291 = call %nyx_string* @nyx_string_substring(%nyx_string* %3288, i64 3, i64 %3290)
  %3292 = alloca %nyx_string*
  store %nyx_string* %3291, %nyx_string** %3292
  %3293 = load %nyx_string*, %nyx_string** %3292
  %3294 = call %nyx_string* @nyx_string_trim(%nyx_string* %3293)
  %3295 = alloca %nyx_string*
  store %nyx_string* %3294, %nyx_string** %3295
  %3296 = load %nyx_string*, %nyx_string** %3242
  %3297 = load %nyx_string*, %nyx_string** %3250
  %3298 = call i1 @nyx_string_equals(%nyx_string* %3296, %nyx_string* %3297)
  br i1 %3298, label %then634, label %else635
then634:
  %3299 = load %nyx_string*, %nyx_string** %3295
  store %nyx_string* %3299, %nyx_string** %3242
  br label %merge636
else635:
  %3300 = load %nyx_string*, %nyx_string** %3242
  %3301 = load %nyx_string*, %nyx_string** %3253
  %3302 = call %nyx_string* @nyx_string_concat(%nyx_string* %3300, %nyx_string* %3301)
  %3303 = load %nyx_string*, %nyx_string** %3295
  %3304 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3303)
  store %nyx_string* %3304, %nyx_string** %3242
  br label %merge636
merge636:
  br label %merge633
else632:
  %3305 = alloca i1
  store i1 true, i1* %3305
  %3306 = load %nyx_string*, %nyx_string** %3284
  %3307 = load %nyx_string*, %nyx_string** %3256
  %3308 = call i1 @nyx_string_starts_with(%nyx_string* %3306, %nyx_string* %3307)
  br i1 %3308, label %sc_or_end638, label %sc_or_rhs637
sc_or_rhs637:
  %3309 = load %nyx_string*, %nyx_string** %3284
  %3310 = load %nyx_string*, %nyx_string** %3259
  %3311 = call i1 @nyx_string_starts_with(%nyx_string* %3309, %nyx_string* %3310)
  store i1 %3311, i1* %3305
  br label %sc_or_end638
sc_or_end638:
  %3312 = load i1, i1* %3305
  %3313 = alloca i1
  store i1 %3312, i1* %3313
  %3314 = load i1, i1* %3313
  br i1 %3314, label %then639, label %else640
then639:
  %3315 = load %nyx_string*, %nyx_string** %3284
  %3316 = alloca %nyx_string*
  store %nyx_string* %3315, %nyx_string** %3316
  %3317 = load %nyx_string*, %nyx_string** %3316
  %3318 = call i64 @capabilities_paren_delta(%nyx_string* %3317)
  %3319 = alloca i64
  store i64 %3318, i64* %3319
  %3320 = call i8* @llvm.stacksave()
  br label %while_cond642
while_cond642:
  %3321 = alloca i1
  store i1 false, i1* %3321
  %3322 = load i64, i64* %3319
  %3323 = icmp sgt i64 %3322, 0
  br i1 %3323, label %sc_and_rhs645, label %sc_and_end646
sc_and_rhs645:
  %3324 = load i64, i64* %3244
  %3325 = add i64 %3324, 1
  %3326 = load { i64, i8* }*, { i64, i8* }** %3236
  %3327 = call i64 @nyx_array_length({ i64, i8* }* %3326)
  %3328 = icmp slt i64 %3325, %3327
  store i1 %3328, i1* %3321
  br label %sc_and_end646
sc_and_end646:
  %3329 = load i1, i1* %3321
  br i1 %3329, label %while_body643, label %while_end644
while_body643:
  call void @llvm.stackrestore(i8* %3320)
  %3330 = load i64, i64* %3244
  %3331 = add i64 %3330, 1
  store i64 %3331, i64* %3244
  %3332 = load { i64, i8* }*, { i64, i8* }** %3236
  %3333 = load i64, i64* %3244
  %3334 = call i64 @nyx_array_get_checked({ i64, i8* }* %3332, i64 %3333, i64 2)
  %3335 = inttoptr i64 %3334 to %nyx_string*
  %3336 = call %nyx_string* @nyx_string_trim(%nyx_string* %3335)
  %3337 = alloca %nyx_string*
  store %nyx_string* %3336, %nyx_string** %3337
  %3338 = load %nyx_string*, %nyx_string** %3337
  %3339 = load %nyx_string*, %nyx_string** %3250
  %3340 = call i1 @nyx_string_equals(%nyx_string* %3338, %nyx_string* %3339)
  %3341 = xor i1 %3340, true
  br i1 %3341, label %then647, label %else648
then647:
  %3342 = alloca i1
  store i1 false, i1* %3342
  %3343 = load %nyx_string*, %nyx_string** %3316
  %3344 = call i64 @nyx_string_byte_length(%nyx_string* %3343)
  %3345 = icmp sgt i64 %3344, 0
  br i1 %3345, label %sc_and_rhs650, label %sc_and_end651
sc_and_rhs650:
  %3346 = load %nyx_string*, %nyx_string** %3316
  %3347 = load %nyx_string*, %nyx_string** %3316
  %3348 = call i64 @nyx_string_byte_length(%nyx_string* %3347)
  %3349 = sub i64 %3348, 1
  %3350 = call i8 @nyx_string_char_at(%nyx_string* %3346, i64 %3349)
  %3351 = zext i8 %3350 to i64
  %3352 = getelementptr [1 x i8], [1 x i8]* @.str482, i32 0, i32 0
  %3353 = load i8, i8* %3352
  %3354 = zext i8 %3353 to i64
  %3355 = icmp eq i64 %3351, %3354
  store i1 %3355, i1* %3342
  br label %sc_and_end651
sc_and_end651:
  %3356 = load i1, i1* %3342
  br i1 %3356, label %then652, label %else653
then652:
  %3357 = load %nyx_string*, %nyx_string** %3316
  %3358 = load %nyx_string*, %nyx_string** %3337
  %3359 = call %nyx_string* @nyx_string_concat(%nyx_string* %3357, %nyx_string* %3358)
  store %nyx_string* %3359, %nyx_string** %3316
  br label %merge654
else653:
  %3360 = load %nyx_string*, %nyx_string** %3316
  %3361 = load %nyx_string*, %nyx_string** %3253
  %3362 = call %nyx_string* @nyx_string_concat(%nyx_string* %3360, %nyx_string* %3361)
  %3363 = load %nyx_string*, %nyx_string** %3337
  %3364 = call %nyx_string* @nyx_string_concat(%nyx_string* %3362, %nyx_string* %3363)
  store %nyx_string* %3364, %nyx_string** %3316
  br label %merge654
merge654:
  br label %merge649
else648:
  br label %merge649
merge649:
  %3365 = load i64, i64* %3319
  %3366 = load %nyx_string*, %nyx_string** %3337
  %3367 = call i64 @capabilities_paren_delta(%nyx_string* %3366)
  %3368 = add i64 %3365, %3367
  store i64 %3368, i64* %3319
  br label %while_cond642
while_end644:
  %3369 = sub i64 0, 1
  %3370 = alloca i64
  store i64 %3369, i64* %3370
  %3371 = alloca i64
  store i64 0, i64* %3371
  %3372 = call i8* @llvm.stacksave()
  br label %while_cond655
while_cond655:
  %3373 = load i64, i64* %3371
  %3374 = load %nyx_string*, %nyx_string** %3316
  %3375 = call i64 @nyx_string_byte_length(%nyx_string* %3374)
  %3376 = icmp slt i64 %3373, %3375
  br i1 %3376, label %while_body656, label %while_end657
while_body656:
  call void @llvm.stackrestore(i8* %3372)
  %3377 = load %nyx_string*, %nyx_string** %3316
  %3378 = load i64, i64* %3371
  %3379 = call i8 @nyx_string_char_at(%nyx_string* %3377, i64 %3378)
  %3380 = zext i8 %3379 to i64
  %3381 = trunc i64 %3380 to i8
  %3382 = alloca i8
  store i8 %3381, i8* %3382
  %3383 = alloca i1
  store i1 false, i1* %3383
  %3384 = load i8, i8* %3382
  %3385 = getelementptr [1 x i8], [1 x i8]* @.str483, i32 0, i32 0
  %3386 = load i8, i8* %3385
  %3387 = zext i8 %3386 to i64
  %3388 = zext i8 %3384 to i64
  %3389 = icmp eq i64 %3388, %3387
  br i1 %3389, label %sc_and_rhs658, label %sc_and_end659
sc_and_rhs658:
  %3390 = load i64, i64* %3370
  %3391 = sub i64 0, 1
  %3392 = icmp eq i64 %3390, %3391
  store i1 %3392, i1* %3383
  br label %sc_and_end659
sc_and_end659:
  %3393 = load i1, i1* %3383
  br i1 %3393, label %then660, label %else661
then660:
  %3394 = load i64, i64* %3371
  store i64 %3394, i64* %3370
  br label %merge662
else661:
  br label %merge662
merge662:
  %3395 = load i64, i64* %3371
  %3396 = add i64 %3395, 1
  store i64 %3396, i64* %3371
  br label %while_cond655
while_end657:
  %3397 = load i64, i64* %3370
  %3398 = icmp sge i64 %3397, 0
  br i1 %3398, label %then663, label %else664
then663:
  %3399 = load %nyx_string*, %nyx_string** %3316
  %3400 = load i64, i64* %3370
  %3401 = call %nyx_string* @nyx_string_substring(%nyx_string* %3399, i64 0, i64 %3400)
  store %nyx_string* %3401, %nyx_string** %3316
  br label %merge665
else664:
  br label %merge665
merge665:
  %3402 = load %nyx_string*, %nyx_string** %3316
  %3403 = call %nyx_string* @nyx_string_trim(%nyx_string* %3402)
  %3404 = alloca %nyx_string*
  store %nyx_string* %3403, %nyx_string** %3404
  %3405 = load %nyx_string*, %nyx_string** %3239
  %3406 = load %nyx_string*, %nyx_string** %3262
  %3407 = call %nyx_string* @nyx_string_concat(%nyx_string* %3405, %nyx_string* %3406)
  %3408 = load %nyx_string*, %nyx_string** %3404
  %3409 = call %nyx_string* @nyx_string_concat(%nyx_string* %3407, %nyx_string* %3408)
  %3410 = load %nyx_string*, %nyx_string** %3265
  %3411 = call %nyx_string* @nyx_string_concat(%nyx_string* %3409, %nyx_string* %3410)
  store %nyx_string* %3411, %nyx_string** %3239
  %3412 = load %nyx_string*, %nyx_string** %3242
  %3413 = load %nyx_string*, %nyx_string** %3250
  %3414 = call i1 @nyx_string_equals(%nyx_string* %3412, %nyx_string* %3413)
  %3415 = xor i1 %3414, true
  br i1 %3415, label %then666, label %else667
then666:
  %3416 = load %nyx_string*, %nyx_string** %3239
  %3417 = load %nyx_string*, %nyx_string** %3268
  %3418 = call %nyx_string* @nyx_string_concat(%nyx_string* %3416, %nyx_string* %3417)
  %3419 = load %nyx_string*, %nyx_string** %3242
  %3420 = call %nyx_string* @nyx_string_concat(%nyx_string* %3418, %nyx_string* %3419)
  store %nyx_string* %3420, %nyx_string** %3239
  br label %merge668
else667:
  br label %merge668
merge668:
  %3421 = load %nyx_string*, %nyx_string** %3239
  %3422 = load %nyx_string*, %nyx_string** %3271
  %3423 = call %nyx_string* @nyx_string_concat(%nyx_string* %3421, %nyx_string* %3422)
  store %nyx_string* %3423, %nyx_string** %3239
  %3424 = load i64, i64* %3243
  %3425 = add i64 %3424, 1
  store i64 %3425, i64* %3243
  br label %merge641
else640:
  br label %merge641
merge641:
  %3426 = load %nyx_string*, %nyx_string** %3250
  store %nyx_string* %3426, %nyx_string** %3242
  br label %merge633
merge633:
  %3427 = load i64, i64* %3244
  %3428 = add i64 %3427, 1
  store i64 %3428, i64* %3244
  br label %while_cond628
while_end630:
  %3429 = load i64, i64* %3243
  %3430 = icmp eq i64 %3429, 0
  br i1 %3430, label %then669, label %else670
then669:
  %3431 = getelementptr [1 x i8], [1 x i8]* @.str484, i32 0, i32 0
  %3432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str484.c, i8* %3431)
  ret %nyx_string* %3432
else670:
  br label %merge671
merge671:
  %3433 = getelementptr [10 x i8], [10 x i8]* @.str485, i32 0, i32 0
  %3434 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str485.c, i8* %3433)
  %3435 = load %nyx_string*, %nyx_string** %3222
  %3436 = call %nyx_string* @nyx_string_concat(%nyx_string* %3434, %nyx_string* %3435)
  %3437 = getelementptr [4 x i8], [4 x i8]* @.str486, i32 0, i32 0
  %3438 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str486.c, i8* %3437)
  %3439 = call %nyx_string* @nyx_string_concat(%nyx_string* %3436, %nyx_string* %3438)
  %3440 = alloca %nyx_string*
  store %nyx_string* %3439, %nyx_string** %3440
  %3441 = load %nyx_string*, %nyx_string** %3440
  %3442 = getelementptr [14 x i8], [14 x i8]* @.str487, i32 0, i32 0
  %3443 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str487.c, i8* %3442)
  %3444 = call %nyx_string* @nyx_string_concat(%nyx_string* %3441, %nyx_string* %3443)
  %3445 = load %nyx_string*, %nyx_string** %3222
  %3446 = call %nyx_string* @nyx_string_concat(%nyx_string* %3444, %nyx_string* %3445)
  %3447 = getelementptr [8 x i8], [8 x i8]* @.str488, i32 0, i32 0
  %3448 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str488.c, i8* %3447)
  %3449 = call %nyx_string* @nyx_string_concat(%nyx_string* %3446, %nyx_string* %3448)
  %3450 = load i64, i64* %3243
  %3451 = call %nyx_string* @nyx_string_from_int(i64 %3450)
  %3452 = call %nyx_string* @nyx_string_concat(%nyx_string* %3449, %nyx_string* %3451)
  %3453 = getelementptr [14 x i8], [14 x i8]* @.str489, i32 0, i32 0
  %3454 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str489.c, i8* %3453)
  %3455 = call %nyx_string* @nyx_string_concat(%nyx_string* %3452, %nyx_string* %3454)
  store %nyx_string* %3455, %nyx_string** %3440
  %3456 = load %nyx_string*, %nyx_string** %3440
  %3457 = load %nyx_string*, %nyx_string** %3239
  %3458 = call %nyx_string* @nyx_string_concat(%nyx_string* %3456, %nyx_string* %3457)
  %3459 = getelementptr [2 x i8], [2 x i8]* @.str490, i32 0, i32 0
  %3460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str490.c, i8* %3459)
  %3461 = call %nyx_string* @nyx_string_concat(%nyx_string* %3458, %nyx_string* %3460)
  store %nyx_string* %3461, %nyx_string** %3440
  %3462 = load %nyx_string*, %nyx_string** %3440
  ret %nyx_string* %3462
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %3463 = call %nyx_string* @capabilities_std_dir()
  %3464 = alloca %nyx_string*
  store %nyx_string* %3463, %nyx_string** %3464
  %3465 = load %nyx_string*, %nyx_string** %3464
  %3466 = getelementptr [1 x i8], [1 x i8]* @.str491, i32 0, i32 0
  %3467 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str491.c, i8* %3466)
  %3468 = call i1 @nyx_string_equals(%nyx_string* %3465, %nyx_string* %3467)
  br i1 %3468, label %then672, label %else673
then672:
  %3469 = getelementptr [71 x i8], [71 x i8]* @.str492, i32 0, i32 0
  %3470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str492.c, i8* %3469)
  %3471 = call i8* @nyx_string_to_cstr(%nyx_string* %3470)
  call void @nyx_print_string(i8* %3471)
  ret i1 0
else673:
  br label %merge674
merge674:
  %3472 = load %nyx_string*, %nyx_string** %3464
  %3473 = call i8* @nyx_string_to_cstr(%nyx_string* %3472)
  %3474 = call { i64, i8* }* @nyx_readdir(i8* %3473)
  %3475 = alloca { i64, i8* }*
  store { i64, i8* }* %3474, { i64, i8* }** %3475
  %3476 = call { i64, i8* }* @nyx_array_new_ptr()
  %3477 = getelementptr [11 x i8], [11 x i8]* @.str493, i32 0, i32 0
  %3478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str493.c, i8* %3477)
  %3479 = ptrtoint %nyx_string* %3478 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3479, i64 2)
  %3480 = getelementptr [20 x i8], [20 x i8]* @.str494, i32 0, i32 0
  %3481 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str494.c, i8* %3480)
  %3482 = ptrtoint %nyx_string* %3481 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3482, i64 2)
  %3483 = getelementptr [23 x i8], [23 x i8]* @.str495, i32 0, i32 0
  %3484 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str495.c, i8* %3483)
  %3485 = ptrtoint %nyx_string* %3484 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3485, i64 2)
  %3486 = getelementptr [15 x i8], [15 x i8]* @.str496, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str496.c, i8* %3486)
  %3488 = ptrtoint %nyx_string* %3487 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3488, i64 2)
  %3489 = getelementptr [4 x i8], [4 x i8]* @.str497, i32 0, i32 0
  %3490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str497.c, i8* %3489)
  %3491 = ptrtoint %nyx_string* %3490 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3491, i64 2)
  %3492 = getelementptr [13 x i8], [13 x i8]* @.str498, i32 0, i32 0
  %3493 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str498.c, i8* %3492)
  %3494 = ptrtoint %nyx_string* %3493 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3494, i64 2)
  %3495 = getelementptr [19 x i8], [19 x i8]* @.str499, i32 0, i32 0
  %3496 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str499.c, i8* %3495)
  %3497 = ptrtoint %nyx_string* %3496 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3497, i64 2)
  %3498 = getelementptr [7 x i8], [7 x i8]* @.str500, i32 0, i32 0
  %3499 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str500.c, i8* %3498)
  %3500 = ptrtoint %nyx_string* %3499 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3500, i64 2)
  %3501 = getelementptr [16 x i8], [16 x i8]* @.str501, i32 0, i32 0
  %3502 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str501.c, i8* %3501)
  %3503 = ptrtoint %nyx_string* %3502 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3503, i64 2)
  %3504 = getelementptr [26 x i8], [26 x i8]* @.str502, i32 0, i32 0
  %3505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str502.c, i8* %3504)
  %3506 = ptrtoint %nyx_string* %3505 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3506, i64 2)
  %3507 = getelementptr [8 x i8], [8 x i8]* @.str503, i32 0, i32 0
  %3508 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str503.c, i8* %3507)
  %3509 = ptrtoint %nyx_string* %3508 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3509, i64 2)
  %3510 = getelementptr [14 x i8], [14 x i8]* @.str504, i32 0, i32 0
  %3511 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str504.c, i8* %3510)
  %3512 = ptrtoint %nyx_string* %3511 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3512, i64 2)
  %3513 = getelementptr [6 x i8], [6 x i8]* @.str505, i32 0, i32 0
  %3514 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str505.c, i8* %3513)
  %3515 = ptrtoint %nyx_string* %3514 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3476, i64 %3515, i64 2)
  %3516 = alloca { i64, i8* }*
  store { i64, i8* }* %3476, { i64, i8* }** %3516
  %3517 = getelementptr [49 x i8], [49 x i8]* @.str506, i32 0, i32 0
  %3518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str506.c, i8* %3517)
  %3519 = alloca %nyx_string*
  store %nyx_string* %3518, %nyx_string** %3519
  %3520 = load %nyx_string*, %nyx_string** %3519
  %3521 = getelementptr [19 x i8], [19 x i8]* @.str507, i32 0, i32 0
  %3522 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str507.c, i8* %3521)
  %3523 = call %nyx_string* @nyx_string_concat(%nyx_string* %3520, %nyx_string* %3522)
  %3524 = call %nyx_string* @toolchain_version()
  %3525 = call %nyx_string* @nyx_string_concat(%nyx_string* %3523, %nyx_string* %3524)
  %3526 = getelementptr [6 x i8], [6 x i8]* @.str508, i32 0, i32 0
  %3527 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str508.c, i8* %3526)
  %3528 = call %nyx_string* @nyx_string_concat(%nyx_string* %3525, %nyx_string* %3527)
  store %nyx_string* %3528, %nyx_string** %3519
  %3529 = load %nyx_string*, %nyx_string** %3519
  %3530 = getelementptr [103 x i8], [103 x i8]* @.str509, i32 0, i32 0
  %3531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str509.c, i8* %3530)
  %3532 = call %nyx_string* @nyx_string_concat(%nyx_string* %3529, %nyx_string* %3531)
  store %nyx_string* %3532, %nyx_string** %3519
  %3533 = load %nyx_string*, %nyx_string** %3519
  %3534 = getelementptr [103 x i8], [103 x i8]* @.str510, i32 0, i32 0
  %3535 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str510.c, i8* %3534)
  %3536 = call %nyx_string* @nyx_string_concat(%nyx_string* %3533, %nyx_string* %3535)
  store %nyx_string* %3536, %nyx_string** %3519
  %3537 = load %nyx_string*, %nyx_string** %3519
  %3538 = getelementptr [95 x i8], [95 x i8]* @.str511, i32 0, i32 0
  %3539 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str511.c, i8* %3538)
  %3540 = call %nyx_string* @nyx_string_concat(%nyx_string* %3537, %nyx_string* %3539)
  store %nyx_string* %3540, %nyx_string** %3519
  %3541 = alloca i64
  store i64 0, i64* %3541
  %3542 = getelementptr [1 x i8], [1 x i8]* @.str512, i32 0, i32 0
  %3543 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str512.c, i8* %3542)
  %3544 = alloca %nyx_string*
  store %nyx_string* %3543, %nyx_string** %3544
  %3545 = getelementptr [4 x i8], [4 x i8]* @.str513, i32 0, i32 0
  %3546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str513.c, i8* %3545)
  %3547 = alloca %nyx_string*
  store %nyx_string* %3546, %nyx_string** %3547
  %3548 = getelementptr [6 x i8], [6 x i8]* @.str514, i32 0, i32 0
  %3549 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str514.c, i8* %3548)
  %3550 = alloca %nyx_string*
  store %nyx_string* %3549, %nyx_string** %3550
  %3551 = getelementptr [4 x i8], [4 x i8]* @.str515, i32 0, i32 0
  %3552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str515.c, i8* %3551)
  %3553 = alloca %nyx_string*
  store %nyx_string* %3552, %nyx_string** %3553
  %3554 = getelementptr [3 x i8], [3 x i8]* @.str516, i32 0, i32 0
  %3555 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str516.c, i8* %3554)
  %3556 = alloca %nyx_string*
  store %nyx_string* %3555, %nyx_string** %3556
  %3557 = call i8* @llvm.stacksave()
  br label %while_cond675
while_cond675:
  %3558 = load i64, i64* %3541
  %3559 = load { i64, i8* }*, { i64, i8* }** %3516
  %3560 = call i64 @nyx_array_length({ i64, i8* }* %3559)
  %3561 = icmp slt i64 %3558, %3560
  br i1 %3561, label %while_body676, label %while_end677
while_body676:
  call void @llvm.stackrestore(i8* %3557)
  %3562 = load { i64, i8* }*, { i64, i8* }** %3516
  %3563 = load i64, i64* %3541
  %3564 = call i64 @nyx_array_get_checked({ i64, i8* }* %3562, i64 %3563, i64 2)
  %3565 = inttoptr i64 %3564 to %nyx_string*
  %3566 = alloca %nyx_string*
  store %nyx_string* %3565, %nyx_string** %3566
  %3567 = load %nyx_string*, %nyx_string** %3544
  %3568 = alloca %nyx_string*
  store %nyx_string* %3567, %nyx_string** %3568
  %3569 = alloca i64
  store i64 0, i64* %3569
  %3570 = call i8* @llvm.stacksave()
  br label %while_cond678
while_cond678:
  %3571 = load i64, i64* %3569
  %3572 = load { i64, i8* }*, { i64, i8* }** %3475
  %3573 = call i64 @nyx_array_length({ i64, i8* }* %3572)
  %3574 = icmp slt i64 %3571, %3573
  br i1 %3574, label %while_body679, label %while_end680
while_body679:
  call void @llvm.stackrestore(i8* %3570)
  %3575 = load { i64, i8* }*, { i64, i8* }** %3475
  %3576 = load i64, i64* %3569
  %3577 = call i64 @nyx_array_get_checked({ i64, i8* }* %3575, i64 %3576, i64 2)
  %3578 = inttoptr i64 %3577 to %nyx_string*
  %3579 = alloca %nyx_string*
  store %nyx_string* %3578, %nyx_string** %3579
  %3580 = load %nyx_string*, %nyx_string** %3579
  %3581 = load %nyx_string*, %nyx_string** %3547
  %3582 = call i1 @nyx_string_ends_with(%nyx_string* %3580, %nyx_string* %3581)
  br i1 %3582, label %then681, label %else682
then681:
  %3583 = load %nyx_string*, %nyx_string** %3579
  %3584 = load %nyx_string*, %nyx_string** %3579
  %3585 = call i64 @nyx_string_byte_length(%nyx_string* %3584)
  %3586 = sub i64 %3585, 3
  %3587 = call %nyx_string* @nyx_string_substring(%nyx_string* %3583, i64 0, i64 %3586)
  %3588 = alloca %nyx_string*
  store %nyx_string* %3587, %nyx_string** %3588
  %3589 = load %nyx_string*, %nyx_string** %3588
  %3590 = call %nyx_string* @module_category(%nyx_string* %3589)
  %3591 = alloca %nyx_string*
  store %nyx_string* %3590, %nyx_string** %3591
  %3592 = load %nyx_string*, %nyx_string** %3591
  %3593 = load %nyx_string*, %nyx_string** %3544
  %3594 = call i1 @nyx_string_equals(%nyx_string* %3592, %nyx_string* %3593)
  br i1 %3594, label %then684, label %else685
then684:
  %3595 = load %nyx_string*, %nyx_string** %3550
  store %nyx_string* %3595, %nyx_string** %3591
  br label %merge686
else685:
  br label %merge686
merge686:
  %3596 = load %nyx_string*, %nyx_string** %3591
  %3597 = load %nyx_string*, %nyx_string** %3566
  %3598 = call i1 @nyx_string_equals(%nyx_string* %3596, %nyx_string* %3597)
  br i1 %3598, label %then687, label %else688
then687:
  %3599 = load %nyx_string*, %nyx_string** %3464
  %3600 = load %nyx_string*, %nyx_string** %3579
  %3601 = call %nyx_string* @capabilities_module_section(%nyx_string* %3599, %nyx_string* %3600)
  %3602 = alloca %nyx_string*
  store %nyx_string* %3601, %nyx_string** %3602
  %3603 = load %nyx_string*, %nyx_string** %3602
  %3604 = load %nyx_string*, %nyx_string** %3544
  %3605 = call i1 @nyx_string_equals(%nyx_string* %3603, %nyx_string* %3604)
  %3606 = xor i1 %3605, true
  br i1 %3606, label %then690, label %else691
then690:
  %3607 = load %nyx_string*, %nyx_string** %3568
  %3608 = load %nyx_string*, %nyx_string** %3602
  %3609 = call %nyx_string* @nyx_string_concat(%nyx_string* %3607, %nyx_string* %3608)
  store %nyx_string* %3609, %nyx_string** %3568
  br label %merge692
else691:
  br label %merge692
merge692:
  br label %merge689
else688:
  br label %merge689
merge689:
  br label %merge683
else682:
  br label %merge683
merge683:
  %3610 = load i64, i64* %3569
  %3611 = add i64 %3610, 1
  store i64 %3611, i64* %3569
  br label %while_cond678
while_end680:
  %3612 = load %nyx_string*, %nyx_string** %3568
  %3613 = load %nyx_string*, %nyx_string** %3544
  %3614 = call i1 @nyx_string_equals(%nyx_string* %3612, %nyx_string* %3613)
  %3615 = xor i1 %3614, true
  br i1 %3615, label %then693, label %else694
then693:
  %3616 = load %nyx_string*, %nyx_string** %3519
  %3617 = load %nyx_string*, %nyx_string** %3553
  %3618 = call %nyx_string* @nyx_string_concat(%nyx_string* %3616, %nyx_string* %3617)
  %3619 = load %nyx_string*, %nyx_string** %3566
  %3620 = call %nyx_string* @nyx_string_concat(%nyx_string* %3618, %nyx_string* %3619)
  %3621 = load %nyx_string*, %nyx_string** %3556
  %3622 = call %nyx_string* @nyx_string_concat(%nyx_string* %3620, %nyx_string* %3621)
  %3623 = load %nyx_string*, %nyx_string** %3568
  %3624 = call %nyx_string* @nyx_string_concat(%nyx_string* %3622, %nyx_string* %3623)
  store %nyx_string* %3624, %nyx_string** %3519
  br label %merge695
else694:
  br label %merge695
merge695:
  %3625 = load i64, i64* %3541
  %3626 = add i64 %3625, 1
  store i64 %3626, i64* %3541
  br label %while_cond675
while_end677:
  %3627 = getelementptr [16 x i8], [16 x i8]* @.str517, i32 0, i32 0
  %3628 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str517.c, i8* %3627)
  %3629 = alloca %nyx_string*
  store %nyx_string* %3628, %nyx_string** %3629
  %3630 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %3631 = getelementptr [1 x i8], [1 x i8]* @.str518, i32 0, i32 0
  %3632 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str518.c, i8* %3631)
  %3633 = call i1 @nyx_string_equals(%nyx_string* %3630, %nyx_string* %3632)
  %3634 = xor i1 %3633, true
  br i1 %3634, label %then696, label %else697
then696:
  %3635 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %3635, %nyx_string** %3629
  br label %merge698
else697:
  br label %merge698
merge698:
  %3636 = load %nyx_string*, %nyx_string** %3629
  %3637 = load %nyx_string*, %nyx_string** %3519
  %3638 = call i8* @nyx_string_to_cstr(%nyx_string* %3636)
  %3639 = call i8* @nyx_string_to_cstr(%nyx_string* %3637)
  %3640 = call i1 @nyx_write_file(i8* %3638, i8* %3639)
  %3641 = getelementptr [32 x i8], [32 x i8]* @.str519, i32 0, i32 0
  %3642 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str519.c, i8* %3641)
  %3643 = load %nyx_string*, %nyx_string** %3464
  %3644 = call %nyx_string* @nyx_string_concat(%nyx_string* %3642, %nyx_string* %3643)
  %3645 = getelementptr [3 x i8], [3 x i8]* @.str520, i32 0, i32 0
  %3646 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str520.c, i8* %3645)
  %3647 = call %nyx_string* @nyx_string_concat(%nyx_string* %3644, %nyx_string* %3646)
  %3648 = load { i64, i8* }*, { i64, i8* }** %3475
  %3649 = call i64 @nyx_array_length({ i64, i8* }* %3648)
  %3650 = call %nyx_string* @nyx_string_from_int(i64 %3649)
  %3651 = call %nyx_string* @nyx_string_concat(%nyx_string* %3647, %nyx_string* %3650)
  %3652 = getelementptr [22 x i8], [22 x i8]* @.str521, i32 0, i32 0
  %3653 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str521.c, i8* %3652)
  %3654 = call %nyx_string* @nyx_string_concat(%nyx_string* %3651, %nyx_string* %3653)
  %3655 = call i8* @nyx_string_to_cstr(%nyx_string* %3654)
  call void @nyx_print_string(i8* %3655)
  ret i1 1
}

%SharedEnv_main = type { { i64, i8* }*, i64, i64, i64, i64, %nyx_string*, %nyx_string*, %nyx_string*, %ProjectConfig }
define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3656 = getelementptr %SharedEnv_main, %SharedEnv_main* null, i32 1
  %3657 = ptrtoint %SharedEnv_main* %3656 to i64
  %3658 = call i8* @GC_malloc(i64 %3657)
  %3659 = bitcast i8* %3658 to %SharedEnv_main*
  %3660 = call { i64, i8* }* @nyx_get_args()
  %3661 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 0
  store { i64, i8* }* %3660, { i64, i8* }** %3661
  %3662 = getelementptr [6 x i8], [6 x i8]* @.str522, i32 0, i32 0
  %3663 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str522.c, i8* %3662)
  %3664 = ptrtoint %nyx_string* %3663 to i64
  %3665 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 1
  store i64 %3664, i64* %3665
  %3666 = zext i1 0 to i64
  %3667 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 2
  store i64 %3666, i64* %3667
  %3668 = getelementptr [1 x i8], [1 x i8]* @.str523, i32 0, i32 0
  %3669 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str523.c, i8* %3668)
  %3670 = ptrtoint %nyx_string* %3669 to i64
  %3671 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 3
  store i64 %3670, i64* %3671
  %3672 = load { i64, i8* }*, { i64, i8* }** %3661
  %3673 = call i64 @nyx_array_length({ i64, i8* }* %3672)
  %3674 = icmp sge i64 %3673, 2
  br i1 %3674, label %then699, label %else700
then699:
  %3675 = load { i64, i8* }*, { i64, i8* }** %3661
  %3676 = call i64 @nyx_array_get_checked({ i64, i8* }* %3675, i64 1, i64 2)
  %3677 = inttoptr i64 %3676 to %nyx_string*
  %3678 = alloca %nyx_string*
  store %nyx_string* %3677, %nyx_string** %3678
  %3679 = load %nyx_string*, %nyx_string** %3678
  store %nyx_string* %3679, %nyx_string** %3665
  br label %merge701
else700:
  br label %merge701
merge701:
  %3680 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 4
  store i64 2, i64* %3680
  %3681 = getelementptr [10 x i8], [10 x i8]* @.str524, i32 0, i32 0
  %3682 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str524.c, i8* %3681)
  %3683 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 5
  store %nyx_string* %3682, %nyx_string** %3683
  %3684 = getelementptr [9 x i8], [9 x i8]* @.str525, i32 0, i32 0
  %3685 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str525.c, i8* %3684)
  %3686 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 6
  store %nyx_string* %3685, %nyx_string** %3686
  %3687 = call i8* @llvm.stacksave()
  br label %while_cond702
while_cond702:
  %3688 = load i64, i64* %3680
  %3689 = load { i64, i8* }*, { i64, i8* }** %3661
  %3690 = call i64 @nyx_array_length({ i64, i8* }* %3689)
  %3691 = icmp slt i64 %3688, %3690
  br i1 %3691, label %while_body703, label %while_end704
while_body703:
  call void @llvm.stackrestore(i8* %3687)
  %3692 = load { i64, i8* }*, { i64, i8* }** %3661
  %3693 = load i64, i64* %3680
  %3694 = call i64 @nyx_array_get_checked({ i64, i8* }* %3692, i64 %3693, i64 2)
  %3695 = inttoptr i64 %3694 to %nyx_string*
  %3696 = alloca %nyx_string*
  store %nyx_string* %3695, %nyx_string** %3696
  %3697 = load %nyx_string*, %nyx_string** %3696
  %3698 = load %nyx_string*, %nyx_string** %3683
  %3699 = call i1 @nyx_string_equals(%nyx_string* %3697, %nyx_string* %3698)
  br i1 %3699, label %then705, label %else706
then705:
  store i1 1, i1* %3667
  br label %merge707
else706:
  br label %merge707
merge707:
  %3700 = load %nyx_string*, %nyx_string** %3696
  %3701 = load %nyx_string*, %nyx_string** %3686
  %3702 = call i1 @nyx_string_equals(%nyx_string* %3700, %nyx_string* %3701)
  br i1 %3702, label %then708, label %else709
then708:
  %3703 = load i64, i64* %3680
  %3704 = add i64 %3703, 1
  %3705 = load { i64, i8* }*, { i64, i8* }** %3661
  %3706 = call i64 @nyx_array_length({ i64, i8* }* %3705)
  %3707 = icmp slt i64 %3704, %3706
  br i1 %3707, label %then711, label %else712
then711:
  %3708 = load { i64, i8* }*, { i64, i8* }** %3661
  %3709 = load i64, i64* %3680
  %3710 = add i64 %3709, 1
  %3711 = call i64 @nyx_array_get_checked({ i64, i8* }* %3708, i64 %3710, i64 2)
  %3712 = inttoptr i64 %3711 to %nyx_string*
  %3713 = alloca %nyx_string*
  store %nyx_string* %3712, %nyx_string** %3713
  %3714 = load %nyx_string*, %nyx_string** %3713
  store %nyx_string* %3714, %nyx_string** %3671
  %3715 = load i64, i64* %3680
  %3716 = add i64 %3715, 1
  store i64 %3716, i64* %3680
  br label %merge713
else712:
  br label %merge713
merge713:
  br label %merge710
else709:
  br label %merge710
merge710:
  %3717 = load i64, i64* %3680
  %3718 = add i64 %3717, 1
  store i64 %3718, i64* %3680
  br label %while_cond702
while_end704:
  %3719 = getelementptr [6 x i8], [6 x i8]* @.str526, i32 0, i32 0
  %3720 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str526.c, i8* %3719)
  %3721 = call %nyx_string* @toolchain_version()
  %3722 = call %nyx_string* @nyx_string_concat(%nyx_string* %3720, %nyx_string* %3721)
  %3723 = getelementptr [6 x i8], [6 x i8]* @.str527, i32 0, i32 0
  %3724 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str527.c, i8* %3723)
  %3725 = call %nyx_string* @nyx_string_concat(%nyx_string* %3722, %nyx_string* %3724)
  %3726 = load %nyx_string*, %nyx_string** %3665
  %3727 = call %nyx_string* @nyx_string_concat(%nyx_string* %3725, %nyx_string* %3726)
  %3728 = call i8* @nyx_string_to_cstr(%nyx_string* %3727)
  call void @nyx_print_string(i8* %3728)
  %3729 = load %nyx_string*, %nyx_string** %3665
  %3730 = getelementptr [5 x i8], [5 x i8]* @.str528, i32 0, i32 0
  %3731 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str528.c, i8* %3730)
  %3732 = call i1 @nyx_string_equals(%nyx_string* %3729, %nyx_string* %3731)
  br i1 %3732, label %then714, label %else715
then714:
  %3733 = getelementptr [1 x i8], [1 x i8]* @.str529, i32 0, i32 0
  %3734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str529.c, i8* %3733)
  %3735 = alloca %nyx_string*
  store %nyx_string* %3734, %nyx_string** %3735
  %3736 = load { i64, i8* }*, { i64, i8* }** %3661
  %3737 = call i64 @nyx_array_length({ i64, i8* }* %3736)
  %3738 = icmp sge i64 %3737, 3
  br i1 %3738, label %then717, label %else718
then717:
  %3739 = load { i64, i8* }*, { i64, i8* }** %3661
  %3740 = call i64 @nyx_array_get_checked({ i64, i8* }* %3739, i64 2, i64 2)
  %3741 = inttoptr i64 %3740 to %nyx_string*
  %3742 = alloca %nyx_string*
  store %nyx_string* %3741, %nyx_string** %3742
  %3743 = load %nyx_string*, %nyx_string** %3742
  store %nyx_string* %3743, %nyx_string** %3735
  br label %merge719
else718:
  br label %merge719
merge719:
  %3744 = load %nyx_string*, %nyx_string** %3735
  %3745 = call i1 @run_init(%nyx_string* %3744)
  %3746 = alloca i1
  store i1 %3745, i1* %3746
  %3747 = load i1, i1* %3746
  br i1 %3747, label %then720, label %else721
then720:
  ret i64 0
else721:
  br label %merge722
merge722:
  ret i64 1
else715:
  br label %merge716
merge716:
  %3748 = load %nyx_string*, %nyx_string** %3665
  %3749 = getelementptr [4 x i8], [4 x i8]* @.str530, i32 0, i32 0
  %3750 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str530.c, i8* %3749)
  %3751 = call i1 @nyx_string_equals(%nyx_string* %3748, %nyx_string* %3750)
  br i1 %3751, label %then723, label %else724
then723:
  %3752 = load { i64, i8* }*, { i64, i8* }** %3661
  %3753 = call i64 @nyx_array_length({ i64, i8* }* %3752)
  %3754 = icmp slt i64 %3753, 3
  br i1 %3754, label %then726, label %else727
then726:
  %3755 = getelementptr [51 x i8], [51 x i8]* @.str531, i32 0, i32 0
  %3756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str531.c, i8* %3755)
  %3757 = call i8* @nyx_string_to_cstr(%nyx_string* %3756)
  call void @nyx_print_string(i8* %3757)
  ret i64 1
else727:
  br label %merge728
merge728:
  %3758 = load { i64, i8* }*, { i64, i8* }** %3661
  %3759 = call i64 @nyx_array_get_checked({ i64, i8* }* %3758, i64 2, i64 2)
  %3760 = inttoptr i64 %3759 to %nyx_string*
  %3761 = alloca %nyx_string*
  store %nyx_string* %3760, %nyx_string** %3761
  %3762 = getelementptr [1 x i8], [1 x i8]* @.str532, i32 0, i32 0
  %3763 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str532.c, i8* %3762)
  %3764 = alloca %nyx_string*
  store %nyx_string* %3763, %nyx_string** %3764
  %3765 = load { i64, i8* }*, { i64, i8* }** %3661
  %3766 = call i64 @nyx_array_length({ i64, i8* }* %3765)
  %3767 = icmp sge i64 %3766, 5
  br i1 %3767, label %then729, label %else730
then729:
  %3768 = load { i64, i8* }*, { i64, i8* }** %3661
  %3769 = call i64 @nyx_array_get_checked({ i64, i8* }* %3768, i64 3, i64 2)
  %3770 = inttoptr i64 %3769 to %nyx_string*
  %3771 = alloca %nyx_string*
  store %nyx_string* %3770, %nyx_string** %3771
  %3772 = load %nyx_string*, %nyx_string** %3771
  %3773 = getelementptr [7 x i8], [7 x i8]* @.str533, i32 0, i32 0
  %3774 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str533.c, i8* %3773)
  %3775 = call i1 @nyx_string_equals(%nyx_string* %3772, %nyx_string* %3774)
  br i1 %3775, label %then732, label %else733
then732:
  %3776 = load { i64, i8* }*, { i64, i8* }** %3661
  %3777 = call i64 @nyx_array_get_checked({ i64, i8* }* %3776, i64 4, i64 2)
  %3778 = inttoptr i64 %3777 to %nyx_string*
  %3779 = alloca %nyx_string*
  store %nyx_string* %3778, %nyx_string** %3779
  %3780 = load %nyx_string*, %nyx_string** %3779
  store %nyx_string* %3780, %nyx_string** %3764
  br label %merge734
else733:
  br label %merge734
merge734:
  br label %merge731
else730:
  br label %merge731
merge731:
  %3781 = call { i64, i8* }* @nyx_array_new_ptr()
  %3782 = alloca { i64, i8* }*
  store { i64, i8* }* %3781, { i64, i8* }** %3782
  %3783 = call { i64, i8* }* @nyx_array_new_ptr()
  %3784 = alloca { i64, i8* }*
  store { i64, i8* }* %3783, { i64, i8* }** %3784
  %3785 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %3786 = ptrtoint %ProjectConfig* %3785 to i64
  %3787 = call i8* @GC_malloc(i64 %3786)
  %3788 = bitcast i8* %3787 to %ProjectConfig*
  %3789 = getelementptr [8 x i8], [8 x i8]* @.str534, i32 0, i32 0
  %3790 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str534.c, i8* %3789)
  %3791 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 0
  store %nyx_string* %3790, %nyx_string** %3791
  %3792 = getelementptr [6 x i8], [6 x i8]* @.str535, i32 0, i32 0
  %3793 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str535.c, i8* %3792)
  %3794 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 1
  store %nyx_string* %3793, %nyx_string** %3794
  %3795 = getelementptr [1 x i8], [1 x i8]* @.str536, i32 0, i32 0
  %3796 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str536.c, i8* %3795)
  %3797 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 2
  store %nyx_string* %3796, %nyx_string** %3797
  %3798 = getelementptr [1 x i8], [1 x i8]* @.str537, i32 0, i32 0
  %3799 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str537.c, i8* %3798)
  %3800 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 3
  store %nyx_string* %3799, %nyx_string** %3800
  %3801 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 4
  store i1 0, i1* %3801
  %3802 = getelementptr [1 x i8], [1 x i8]* @.str538, i32 0, i32 0
  %3803 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str538.c, i8* %3802)
  %3804 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 5
  store %nyx_string* %3803, %nyx_string** %3804
  %3805 = load { i64, i8* }*, { i64, i8* }** %3782
  %3806 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 6
  store { i64, i8* }* %3805, { i64, i8* }** %3806
  %3807 = load { i64, i8* }*, { i64, i8* }** %3784
  %3808 = getelementptr %ProjectConfig, %ProjectConfig* %3788, i32 0, i32 7
  store { i64, i8* }* %3807, { i64, i8* }** %3808
  %3809 = load %ProjectConfig, %ProjectConfig* %3788
  %3810 = alloca %ProjectConfig
  store %ProjectConfig %3809, %ProjectConfig* %3810
  %3811 = load %nyx_string*, %nyx_string** %3761
  %3812 = load %nyx_string*, %nyx_string** %3764
  %3813 = load %ProjectConfig, %ProjectConfig* %3810
  %3814 = call i1 @run_add(%nyx_string* %3811, %nyx_string* %3812, %ProjectConfig %3813)
  %3815 = alloca i1
  store i1 %3814, i1* %3815
  %3816 = load i1, i1* %3815
  br i1 %3816, label %then735, label %else736
then735:
  ret i64 0
else736:
  br label %merge737
merge737:
  ret i64 1
else724:
  br label %merge725
merge725:
  %3817 = load %nyx_string*, %nyx_string** %3665
  %3818 = getelementptr [7 x i8], [7 x i8]* @.str539, i32 0, i32 0
  %3819 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str539.c, i8* %3818)
  %3820 = call i1 @nyx_string_equals(%nyx_string* %3817, %nyx_string* %3819)
  br i1 %3820, label %then738, label %else739
then738:
  %3821 = getelementptr [1 x i8], [1 x i8]* @.str540, i32 0, i32 0
  %3822 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str540.c, i8* %3821)
  %3823 = alloca %nyx_string*
  store %nyx_string* %3822, %nyx_string** %3823
  %3824 = alloca i1
  store i1 0, i1* %3824
  %3825 = alloca i64
  store i64 2, i64* %3825
  %3826 = getelementptr [7 x i8], [7 x i8]* @.str541, i32 0, i32 0
  %3827 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str541.c, i8* %3826)
  %3828 = alloca %nyx_string*
  store %nyx_string* %3827, %nyx_string** %3828
  %3829 = getelementptr [10 x i8], [10 x i8]* @.str542, i32 0, i32 0
  %3830 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str542.c, i8* %3829)
  %3831 = alloca %nyx_string*
  store %nyx_string* %3830, %nyx_string** %3831
  %3832 = call i8* @llvm.stacksave()
  br label %while_cond741
while_cond741:
  %3833 = load i64, i64* %3825
  %3834 = load { i64, i8* }*, { i64, i8* }** %3661
  %3835 = call i64 @nyx_array_length({ i64, i8* }* %3834)
  %3836 = icmp slt i64 %3833, %3835
  br i1 %3836, label %while_body742, label %while_end743
while_body742:
  call void @llvm.stackrestore(i8* %3832)
  %3837 = load { i64, i8* }*, { i64, i8* }** %3661
  %3838 = load i64, i64* %3825
  %3839 = call i64 @nyx_array_get_checked({ i64, i8* }* %3837, i64 %3838, i64 2)
  %3840 = inttoptr i64 %3839 to %nyx_string*
  %3841 = alloca %nyx_string*
  store %nyx_string* %3840, %nyx_string** %3841
  %3842 = load %nyx_string*, %nyx_string** %3841
  %3843 = load %nyx_string*, %nyx_string** %3828
  %3844 = call i1 @nyx_string_equals(%nyx_string* %3842, %nyx_string* %3843)
  br i1 %3844, label %then744, label %else745
then744:
  store i1 1, i1* %3824
  br label %merge746
else745:
  %3845 = load %nyx_string*, %nyx_string** %3841
  %3846 = load %nyx_string*, %nyx_string** %3831
  %3847 = call i1 @nyx_string_equals(%nyx_string* %3845, %nyx_string* %3846)
  %3848 = xor i1 %3847, true
  br i1 %3848, label %then747, label %else748
then747:
  %3849 = load %nyx_string*, %nyx_string** %3841
  store %nyx_string* %3849, %nyx_string** %3823
  br label %merge749
else748:
  br label %merge749
merge749:
  br label %merge746
merge746:
  %3850 = load i64, i64* %3825
  %3851 = add i64 %3850, 1
  store i64 %3851, i64* %3825
  br label %while_cond741
while_end743:
  %3852 = load %nyx_string*, %nyx_string** %3823
  %3853 = load i1, i1* %3824
  %3854 = call i1 @run_report(%nyx_string* %3852, i1 %3853)
  %3855 = alloca i1
  store i1 %3854, i1* %3855
  %3856 = load i1, i1* %3855
  br i1 %3856, label %then750, label %else751
then750:
  ret i64 0
else751:
  br label %merge752
merge752:
  ret i64 1
else739:
  br label %merge740
merge740:
  %3857 = load %nyx_string*, %nyx_string** %3665
  %3858 = getelementptr [13 x i8], [13 x i8]* @.str543, i32 0, i32 0
  %3859 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str543.c, i8* %3858)
  %3860 = call i1 @nyx_string_equals(%nyx_string* %3857, %nyx_string* %3859)
  br i1 %3860, label %then753, label %else754
then753:
  %3861 = getelementptr [1 x i8], [1 x i8]* @.str544, i32 0, i32 0
  %3862 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str544.c, i8* %3861)
  %3863 = alloca %nyx_string*
  store %nyx_string* %3862, %nyx_string** %3863
  %3864 = load { i64, i8* }*, { i64, i8* }** %3661
  %3865 = call i64 @nyx_array_length({ i64, i8* }* %3864)
  %3866 = icmp sge i64 %3865, 3
  br i1 %3866, label %then756, label %else757
then756:
  %3867 = load { i64, i8* }*, { i64, i8* }** %3661
  %3868 = call i64 @nyx_array_get_checked({ i64, i8* }* %3867, i64 2, i64 2)
  %3869 = inttoptr i64 %3868 to %nyx_string*
  %3870 = alloca %nyx_string*
  store %nyx_string* %3869, %nyx_string** %3870
  %3871 = load %nyx_string*, %nyx_string** %3870
  %3872 = getelementptr [10 x i8], [10 x i8]* @.str545, i32 0, i32 0
  %3873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str545.c, i8* %3872)
  %3874 = call i1 @nyx_string_equals(%nyx_string* %3871, %nyx_string* %3873)
  %3875 = xor i1 %3874, true
  br i1 %3875, label %then759, label %else760
then759:
  %3876 = load %nyx_string*, %nyx_string** %3870
  store %nyx_string* %3876, %nyx_string** %3863
  br label %merge761
else760:
  br label %merge761
merge761:
  br label %merge758
else757:
  br label %merge758
merge758:
  %3877 = load %nyx_string*, %nyx_string** %3863
  %3878 = call i1 @run_capabilities(%nyx_string* %3877)
  %3879 = alloca i1
  store i1 %3878, i1* %3879
  %3880 = load i1, i1* %3879
  br i1 %3880, label %then762, label %else763
then762:
  ret i64 0
else763:
  br label %merge764
merge764:
  ret i64 1
else754:
  br label %merge755
merge755:
  %3881 = getelementptr [9 x i8], [9 x i8]* @.str546, i32 0, i32 0
  %3882 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str546.c, i8* %3881)
  %3883 = call i8* @nyx_string_to_cstr(%nyx_string* %3882)
  %3884 = call i1 @nyx_file_exists(i8* %3883)
  %3885 = xor i1 %3884, true
  br i1 %3885, label %then765, label %else766
then765:
  %3886 = getelementptr [47 x i8], [47 x i8]* @.str547, i32 0, i32 0
  %3887 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str547.c, i8* %3886)
  %3888 = call i8* @nyx_string_to_cstr(%nyx_string* %3887)
  call void @nyx_print_string(i8* %3888)
  %3889 = getelementptr [24 x i8], [24 x i8]* @.str548, i32 0, i32 0
  %3890 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str548.c, i8* %3889)
  %3891 = call i8* @nyx_string_to_cstr(%nyx_string* %3890)
  call void @nyx_print_string(i8* %3891)
  %3892 = getelementptr [12 x i8], [12 x i8]* @.str549, i32 0, i32 0
  %3893 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str549.c, i8* %3892)
  %3894 = call i8* @nyx_string_to_cstr(%nyx_string* %3893)
  call void @nyx_print_string(i8* %3894)
  %3895 = getelementptr [17 x i8], [17 x i8]* @.str550, i32 0, i32 0
  %3896 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str550.c, i8* %3895)
  %3897 = call i8* @nyx_string_to_cstr(%nyx_string* %3896)
  call void @nyx_print_string(i8* %3897)
  %3898 = getelementptr [20 x i8], [20 x i8]* @.str551, i32 0, i32 0
  %3899 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str551.c, i8* %3898)
  %3900 = call i8* @nyx_string_to_cstr(%nyx_string* %3899)
  call void @nyx_print_string(i8* %3900)
  %3901 = getelementptr [23 x i8], [23 x i8]* @.str552, i32 0, i32 0
  %3902 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str552.c, i8* %3901)
  %3903 = call i8* @nyx_string_to_cstr(%nyx_string* %3902)
  call void @nyx_print_string(i8* %3903)
  ret i64 1
else766:
  br label %merge767
merge767:
  %3904 = getelementptr [9 x i8], [9 x i8]* @.str553, i32 0, i32 0
  %3905 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str553.c, i8* %3904)
  %3906 = call i8* @nyx_string_to_cstr(%nyx_string* %3905)
  %3907 = call %nyx_string* @nyx_read_file(i8* %3906)
  %3908 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 7
  store %nyx_string* %3907, %nyx_string** %3908
  %3909 = load %nyx_string*, %nyx_string** %3908
  %3910 = call %ProjectConfig @parse_toml(%nyx_string* %3909)
  %3911 = getelementptr %SharedEnv_main, %SharedEnv_main* %3659, i32 0, i32 8
  store %ProjectConfig %3910, %ProjectConfig* %3911
  %3912 = getelementptr %ProjectConfig, %ProjectConfig* %3911, i32 0, i32 0
  %3913 = load %nyx_string*, %nyx_string** %3912
  %3914 = getelementptr [1 x i8], [1 x i8]* @.str554, i32 0, i32 0
  %3915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str554.c, i8* %3914)
  %3916 = call i1 @nyx_string_equals(%nyx_string* %3913, %nyx_string* %3915)
  br i1 %3916, label %then768, label %else769
then768:
  %3917 = getelementptr [45 x i8], [45 x i8]* @.str555, i32 0, i32 0
  %3918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str555.c, i8* %3917)
  %3919 = call i8* @nyx_string_to_cstr(%nyx_string* %3918)
  call void @nyx_print_string(i8* %3919)
  ret i64 1
else769:
  br label %merge770
merge770:
  %3920 = load %nyx_string*, %nyx_string** %3665
  %3921 = getelementptr [5 x i8], [5 x i8]* @.str556, i32 0, i32 0
  %3922 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str556.c, i8* %3921)
  %3923 = call i1 @nyx_string_equals(%nyx_string* %3920, %nyx_string* %3922)
  br i1 %3923, label %then771, label %else772
then771:
  %3924 = load %ProjectConfig, %ProjectConfig* %3911
  %3925 = call i64 @print_info(%ProjectConfig %3924)
  ret i64 0
else772:
  br label %merge773
merge773:
  %3926 = load %nyx_string*, %nyx_string** %3665
  %3927 = getelementptr [6 x i8], [6 x i8]* @.str557, i32 0, i32 0
  %3928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str557.c, i8* %3927)
  %3929 = call i1 @nyx_string_equals(%nyx_string* %3926, %nyx_string* %3928)
  br i1 %3929, label %then774, label %else775
then774:
  %3930 = load %ProjectConfig, %ProjectConfig* %3911
  %3931 = load i1, i1* %3667
  %3932 = load %nyx_string*, %nyx_string** %3671
  %3933 = call i1 @run_build(%ProjectConfig %3930, i1 %3931, %nyx_string* %3932)
  %3934 = alloca i1
  store i1 %3933, i1* %3934
  %3935 = load i1, i1* %3934
  br i1 %3935, label %then777, label %else778
then777:
  %3936 = load %ProjectConfig, %ProjectConfig* %3911
  %3937 = call i64 @write_lockfile(%ProjectConfig %3936)
  %3938 = getelementptr [15 x i8], [15 x i8]* @.str558, i32 0, i32 0
  %3939 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str558.c, i8* %3938)
  %3940 = call i8* @nyx_string_to_cstr(%nyx_string* %3939)
  call void @nyx_print_string(i8* %3940)
  ret i64 0
else778:
  br label %merge779
merge779:
  ret i64 1
else775:
  br label %merge776
merge776:
  %3941 = load %nyx_string*, %nyx_string** %3665
  %3942 = getelementptr [4 x i8], [4 x i8]* @.str559, i32 0, i32 0
  %3943 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str559.c, i8* %3942)
  %3944 = call i1 @nyx_string_equals(%nyx_string* %3941, %nyx_string* %3943)
  br i1 %3944, label %then780, label %else781
then780:
  %3945 = alloca i64
  store i64 2, i64* %3945
  %3946 = getelementptr [3 x i8], [3 x i8]* @.str560, i32 0, i32 0
  %3947 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str560.c, i8* %3946)
  %3948 = alloca %nyx_string*
  store %nyx_string* %3947, %nyx_string** %3948
  %3949 = getelementptr [7 x i8], [7 x i8]* @.str561, i32 0, i32 0
  %3950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str561.c, i8* %3949)
  %3951 = alloca %nyx_string*
  store %nyx_string* %3950, %nyx_string** %3951
  %3952 = getelementptr [3 x i8], [3 x i8]* @.str562, i32 0, i32 0
  %3953 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str562.c, i8* %3952)
  %3954 = alloca %nyx_string*
  store %nyx_string* %3953, %nyx_string** %3954
  %3955 = getelementptr [57 x i8], [57 x i8]* @.str563, i32 0, i32 0
  %3956 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str563.c, i8* %3955)
  %3957 = alloca %nyx_string*
  store %nyx_string* %3956, %nyx_string** %3957
  %3958 = getelementptr [60 x i8], [60 x i8]* @.str564, i32 0, i32 0
  %3959 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str564.c, i8* %3958)
  %3960 = alloca %nyx_string*
  store %nyx_string* %3959, %nyx_string** %3960
  %3961 = getelementptr [1 x i8], [1 x i8]* @.str565, i32 0, i32 0
  %3962 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str565.c, i8* %3961)
  %3963 = alloca %nyx_string*
  store %nyx_string* %3962, %nyx_string** %3963
  %3964 = getelementptr [56 x i8], [56 x i8]* @.str566, i32 0, i32 0
  %3965 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str566.c, i8* %3964)
  %3966 = alloca %nyx_string*
  store %nyx_string* %3965, %nyx_string** %3966
  %3967 = getelementptr [38 x i8], [38 x i8]* @.str567, i32 0, i32 0
  %3968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str567.c, i8* %3967)
  %3969 = alloca %nyx_string*
  store %nyx_string* %3968, %nyx_string** %3969
  %3970 = call i8* @llvm.stacksave()
  br label %while_cond783
while_cond783:
  %3971 = load i64, i64* %3945
  %3972 = load { i64, i8* }*, { i64, i8* }** %3661
  %3973 = call i64 @nyx_array_length({ i64, i8* }* %3972)
  %3974 = icmp slt i64 %3971, %3973
  br i1 %3974, label %while_body784, label %while_end785
while_body784:
  call void @llvm.stackrestore(i8* %3970)
  %3975 = load { i64, i8* }*, { i64, i8* }** %3661
  %3976 = load i64, i64* %3945
  %3977 = call i64 @nyx_array_get_checked({ i64, i8* }* %3975, i64 %3976, i64 2)
  %3978 = inttoptr i64 %3977 to %nyx_string*
  %3979 = alloca %nyx_string*
  store %nyx_string* %3978, %nyx_string** %3979
  %3980 = load %nyx_string*, %nyx_string** %3979
  %3981 = load %nyx_string*, %nyx_string** %3948
  %3982 = call i1 @nyx_string_equals(%nyx_string* %3980, %nyx_string* %3981)
  br i1 %3982, label %then786, label %else787
then786:
  %3983 = load { i64, i8* }*, { i64, i8* }** %3661
  %3984 = call i64 @nyx_array_length({ i64, i8* }* %3983)
  store i64 %3984, i64* %3945
  br label %merge788
else787:
  %3985 = alloca i1
  store i1 true, i1* %3985
  %3986 = load %nyx_string*, %nyx_string** %3979
  %3987 = load %nyx_string*, %nyx_string** %3951
  %3988 = call i1 @nyx_string_equals(%nyx_string* %3986, %nyx_string* %3987)
  br i1 %3988, label %sc_or_end790, label %sc_or_rhs789
sc_or_rhs789:
  %3989 = load %nyx_string*, %nyx_string** %3979
  %3990 = load %nyx_string*, %nyx_string** %3954
  %3991 = call i1 @nyx_string_equals(%nyx_string* %3989, %nyx_string* %3990)
  store i1 %3991, i1* %3985
  br label %sc_or_end790
sc_or_end790:
  %3992 = load i1, i1* %3985
  br i1 %3992, label %then791, label %else792
then791:
  %3993 = load %nyx_string*, %nyx_string** %3957
  %3994 = call i8* @nyx_string_to_cstr(%nyx_string* %3993)
  call void @nyx_print_string(i8* %3994)
  %3995 = load %nyx_string*, %nyx_string** %3960
  %3996 = call i8* @nyx_string_to_cstr(%nyx_string* %3995)
  call void @nyx_print_string(i8* %3996)
  %3997 = load %nyx_string*, %nyx_string** %3963
  %3998 = call i8* @nyx_string_to_cstr(%nyx_string* %3997)
  call void @nyx_print_string(i8* %3998)
  %3999 = load %nyx_string*, %nyx_string** %3966
  %4000 = call i8* @nyx_string_to_cstr(%nyx_string* %3999)
  call void @nyx_print_string(i8* %4000)
  %4001 = load %nyx_string*, %nyx_string** %3969
  %4002 = call i8* @nyx_string_to_cstr(%nyx_string* %4001)
  call void @nyx_print_string(i8* %4002)
  ret i64 0
else792:
  br label %merge793
merge793:
  %4003 = load i64, i64* %3945
  %4004 = add i64 %4003, 1
  store i64 %4004, i64* %3945
  br label %merge788
merge788:
  br label %while_cond783
while_end785:
  %4005 = load %ProjectConfig, %ProjectConfig* %3911
  %4006 = load %nyx_string*, %nyx_string** %3671
  %4007 = call i1 @run_build(%ProjectConfig %4005, i1 0, %nyx_string* %4006)
  %4008 = alloca i1
  store i1 %4007, i1* %4008
  %4009 = load i1, i1* %4008
  br i1 %4009, label %then794, label %else795
then794:
  %4010 = load %ProjectConfig, %ProjectConfig* %3911
  %4011 = call i64 @write_lockfile(%ProjectConfig %4010)
  %4012 = getelementptr [3 x i8], [3 x i8]* @.str568, i32 0, i32 0
  %4013 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str568.c, i8* %4012)
  %4014 = getelementptr %ProjectConfig, %ProjectConfig* %3911, i32 0, i32 0
  %4015 = load %nyx_string*, %nyx_string** %4014
  %4016 = call %nyx_string* @nyx_string_concat(%nyx_string* %4013, %nyx_string* %4015)
  %4017 = alloca %nyx_string*
  store %nyx_string* %4016, %nyx_string** %4017
  %4018 = alloca i64
  store i64 2, i64* %4018
  %4019 = alloca i1
  store i1 0, i1* %4019
  %4020 = getelementptr [2 x i8], [2 x i8]* @.str569, i32 0, i32 0
  %4021 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str569.c, i8* %4020)
  %4022 = alloca %nyx_string*
  store %nyx_string* %4021, %nyx_string** %4022
  %4023 = getelementptr [3 x i8], [3 x i8]* @.str570, i32 0, i32 0
  %4024 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str570.c, i8* %4023)
  %4025 = alloca %nyx_string*
  store %nyx_string* %4024, %nyx_string** %4025
  %4026 = getelementptr [10 x i8], [10 x i8]* @.str571, i32 0, i32 0
  %4027 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str571.c, i8* %4026)
  %4028 = alloca %nyx_string*
  store %nyx_string* %4027, %nyx_string** %4028
  %4029 = getelementptr [9 x i8], [9 x i8]* @.str572, i32 0, i32 0
  %4030 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str572.c, i8* %4029)
  %4031 = alloca %nyx_string*
  store %nyx_string* %4030, %nyx_string** %4031
  %4032 = call i8* @llvm.stacksave()
  br label %while_cond797
while_cond797:
  %4033 = load i64, i64* %4018
  %4034 = load { i64, i8* }*, { i64, i8* }** %3661
  %4035 = call i64 @nyx_array_length({ i64, i8* }* %4034)
  %4036 = icmp slt i64 %4033, %4035
  br i1 %4036, label %while_body798, label %while_end799
while_body798:
  call void @llvm.stackrestore(i8* %4032)
  %4037 = load { i64, i8* }*, { i64, i8* }** %3661
  %4038 = load i64, i64* %4018
  %4039 = call i64 @nyx_array_get_checked({ i64, i8* }* %4037, i64 %4038, i64 2)
  %4040 = inttoptr i64 %4039 to %nyx_string*
  %4041 = alloca %nyx_string*
  store %nyx_string* %4040, %nyx_string** %4041
  %4042 = load i1, i1* %4019
  br i1 %4042, label %then800, label %else801
then800:
  %4043 = load %nyx_string*, %nyx_string** %4017
  %4044 = load %nyx_string*, %nyx_string** %4022
  %4045 = call %nyx_string* @nyx_string_concat(%nyx_string* %4043, %nyx_string* %4044)
  %4046 = load %nyx_string*, %nyx_string** %4041
  %4047 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %3659, %nyx_string* %4046)
  %4048 = call %nyx_string* @nyx_string_concat(%nyx_string* %4045, %nyx_string* %4047)
  store %nyx_string* %4048, %nyx_string** %4017
  br label %merge802
else801:
  %4049 = load %nyx_string*, %nyx_string** %4041
  %4050 = load %nyx_string*, %nyx_string** %4025
  %4051 = call i1 @nyx_string_equals(%nyx_string* %4049, %nyx_string* %4050)
  br i1 %4051, label %then803, label %else804
then803:
  store i1 1, i1* %4019
  br label %merge805
else804:
  %4052 = load %nyx_string*, %nyx_string** %4041
  %4053 = load %nyx_string*, %nyx_string** %4028
  %4054 = call i1 @nyx_string_equals(%nyx_string* %4052, %nyx_string* %4053)
  br i1 %4054, label %then806, label %else807
then806:
  %4055 = load i64, i64* %4018
  store i64 %4055, i64* %4018
  br label %merge808
else807:
  %4056 = load %nyx_string*, %nyx_string** %4041
  %4057 = load %nyx_string*, %nyx_string** %4031
  %4058 = call i1 @nyx_string_equals(%nyx_string* %4056, %nyx_string* %4057)
  br i1 %4058, label %then809, label %else810
then809:
  %4059 = load i64, i64* %4018
  %4060 = add i64 %4059, 1
  store i64 %4060, i64* %4018
  br label %merge811
else810:
  %4061 = load %nyx_string*, %nyx_string** %4017
  %4062 = load %nyx_string*, %nyx_string** %4022
  %4063 = call %nyx_string* @nyx_string_concat(%nyx_string* %4061, %nyx_string* %4062)
  %4064 = load %nyx_string*, %nyx_string** %4041
  %4065 = call %nyx_string* @main__shell_quote_arg(%SharedEnv_main* %3659, %nyx_string* %4064)
  %4066 = call %nyx_string* @nyx_string_concat(%nyx_string* %4063, %nyx_string* %4065)
  store %nyx_string* %4066, %nyx_string** %4017
  br label %merge811
merge811:
  br label %merge808
merge808:
  br label %merge805
merge805:
  br label %merge802
merge802:
  %4067 = load i64, i64* %4018
  %4068 = add i64 %4067, 1
  store i64 %4068, i64* %4018
  br label %while_cond797
while_end799:
  %4069 = load %nyx_string*, %nyx_string** %4017
  %4070 = call i8* @nyx_string_to_cstr(%nyx_string* %4069)
  %4071 = call i64 @nyx_exec_code(i8* %4070)
  %4072 = alloca i64
  store i64 %4071, i64* %4072
  %4073 = load i64, i64* %4072
  ret i64 %4073
else795:
  br label %merge796
merge796:
  ret i64 1
else781:
  br label %merge782
merge782:
  %4074 = getelementptr [24 x i8], [24 x i8]* @.str573, i32 0, i32 0
  %4075 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str573.c, i8* %4074)
  %4076 = load %nyx_string*, %nyx_string** %3665
  %4077 = call %nyx_string* @nyx_string_concat(%nyx_string* %4075, %nyx_string* %4076)
  %4078 = call i8* @nyx_string_to_cstr(%nyx_string* %4077)
  call void @nyx_print_string(i8* %4078)
  %4079 = getelementptr [88 x i8], [88 x i8]* @.str574, i32 0, i32 0
  %4080 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str574.c, i8* %4079)
  %4081 = call i8* @nyx_string_to_cstr(%nyx_string* %4080)
  call void @nyx_print_string(i8* %4081)
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
  %10 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %10
  %11 = getelementptr [2 x i8], [2 x i8]* @.str575, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str575.c, i8* %11)
  %13 = alloca %nyx_string*
  store %nyx_string* %12, %nyx_string** %13
  %14 = load %nyx_string*, %nyx_string** %13
  %15 = alloca %nyx_string*
  store %nyx_string* %14, %nyx_string** %15
  %16 = alloca i64
  store i64 0, i64* %16
  %17 = getelementptr [2 x i8], [2 x i8]* @.str576, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str576.c, i8* %17)
  %19 = alloca %nyx_string*
  store %nyx_string* %18, %nyx_string** %19
  %20 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %21 = load i64, i64* %16
  %22 = load %nyx_string*, %nyx_string** %10
  %23 = call i64 @nyx_string_byte_length(%nyx_string* %22)
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %20)
  %25 = load %nyx_string*, %nyx_string** %10
  %26 = load i64, i64* %16
  %27 = load i64, i64* %16
  %28 = add i64 %27, 1
  %29 = call %nyx_string* @nyx_string_substring(%nyx_string* %25, i64 %26, i64 %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = load %nyx_string*, %nyx_string** %30
  %32 = load %nyx_string*, %nyx_string** %13
  %33 = call i1 @nyx_string_equals(%nyx_string* %31, %nyx_string* %32)
  br i1 %33, label %then3, label %else4
then3:
  %34 = load %nyx_string*, %nyx_string** %15
  %35 = load %nyx_string*, %nyx_string** %13
  %36 = call %nyx_string* @nyx_string_concat(%nyx_string* %34, %nyx_string* %35)
  %37 = load %nyx_string*, %nyx_string** %19
  %38 = call %nyx_string* @nyx_string_concat(%nyx_string* %36, %nyx_string* %37)
  %39 = load %nyx_string*, %nyx_string** %13
  %40 = call %nyx_string* @nyx_string_concat(%nyx_string* %38, %nyx_string* %39)
  %41 = load %nyx_string*, %nyx_string** %13
  %42 = call %nyx_string* @nyx_string_concat(%nyx_string* %40, %nyx_string* %41)
  store %nyx_string* %42, %nyx_string** %15
  br label %merge5
else4:
  %43 = load %nyx_string*, %nyx_string** %15
  %44 = load %nyx_string*, %nyx_string** %30
  %45 = call %nyx_string* @nyx_string_concat(%nyx_string* %43, %nyx_string* %44)
  store %nyx_string* %45, %nyx_string** %15
  br label %merge5
merge5:
  %46 = load i64, i64* %16
  %47 = add i64 %46, 1
  store i64 %47, i64* %16
  br label %while_cond0
while_end2:
  %48 = load %nyx_string*, %nyx_string** %15
  %49 = load %nyx_string*, %nyx_string** %13
  %50 = call %nyx_string* @nyx_string_concat(%nyx_string* %48, %nyx_string* %49)
  ret %nyx_string* %50
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %4082 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %4083 = call %nyx_string* @nyx_string_from_cstr(i8* %4082)
  store %nyx_string* %4083, %nyx_string** @std_base64____b64_chars
  %4084 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %4085 = call %nyx_string* @nyx_string_from_cstr(i8* %4084)
  store %nyx_string* %4085, %nyx_string** @std_base64____b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

