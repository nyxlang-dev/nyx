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
@.str206 = private unnamed_addr constant [1 x i8] c"\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [1 x i8] c"\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [1 x i8] c"\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [3 x i8] c" [\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c"]\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [13 x i8] c"-> building \00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [3 x i8] c" v\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [29 x i8] c"error: main file not found: \00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [13 x i8] c"NYX_NO_GC=1 \00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [14 x i8] c"   compiling \00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [1 x i8] c"\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [4 x i8] c"-O2\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [1 x i8] c"\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [1 x i8] c"\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [19 x i8] c"/runtime/runtime.c\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [1 x i8] c"\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [14 x i8] c"nyx_bootstrap\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [2 x i8] c".\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [1 x i8] c"\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [56 x i8] c"error: NYX_HOME not set and nyx not installed (~/.nyx/)\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [15 x i8] c"/nyx_bootstrap\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [9 x i8] c"/bin/nyx\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [9 x i8] c"/runtime\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [47 x i8] c"NYX_SRC=\22$SRCNX\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [12 x i8] c" \22$SRC.ll\22 \00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/file-io.c $RT/iterators.c \00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [36 x i8] c"$RT/net.c $RT/thread.c $RT/regex.c \00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/crypto.c $RT/tls.c \00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [55 x i8] c"$RT/scheduler.c $RT/event_loop.c $RT/sqlite_adapter.c \00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [39 x i8] c"$RT/compress.c $RT/random.c $RT/url.c \00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [71 x i8] c"$RT/msgpack.c $RT/websocket.c $RT/persist.c $RT/http2.c $RT/process.c \00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [13 x i8] c"\22 2> \22$LOG\22 \00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [70 x i8] c"|| { echo \22error: clang link failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [18 x i8] c"echo '✓ Built: \00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [3 x i8] c"'\0a\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [12 x i8] c"wasm32-wasi\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [19 x i8] c"ORIG_DIR=\22$(pwd)\22\0a\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [5 x i8] c"RT=\22\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [11 x i8] c"SYSROOT=\22$\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [23 x i8] c"{WASI_SYSROOT:-/usr}\22\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [43 x i8] c"LOG=\22$(mktemp /tmp/nyx_build_log.XXXXXX)\22\0a\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [37 x i8] c"SRC=\22$(mktemp /tmp/nyx_src_XXXXXX)\22\0a\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [38 x i8] c"trap 'rm -f \22$LOG\22 \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [163 x i8] c"test -f \22$SYSROOT/lib/wasm32-wasi/libc.a\22 || { echo \22error: wasi-libc no encontrado - sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19\22 >&2; exit 1; }\0a\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [15 x i8] c"cp \22$ORIG_DIR/\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [82 x i8] c"NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC=\22$SRCNX\22 NYX_PROJECT_DIR=\22$ORIG_DIR\22 \22\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [17 x i8] c"\22 > \22$LOG\22 2>&1 \00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [71 x i8] c"|| { echo \22error: nyx compile failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [64 x i8] c"clang --target=wasm32-wasi --sysroot=\22$SYSROOT\22 -O2 -I$RT/wasi \00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [56 x i8] c"-Wl,-z,stack-size=1048576 -Wl,--export-table \22$SRC.ll\22 \00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [50 x i8] c"$RT/runtime.c $RT/strings.c $RT/runtime-arrays.c \00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [42 x i8] c"$RT/maps.c $RT/iterators.c $RT/file-io.c \00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [35 x i8] c"$RT/time.c $RT/random.c $RT/url.c \00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [43 x i8] c"$RT/wasi/main_shim.c $RT/wasi/nyx_arena.c \00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [15 x i8] c"-o \22$ORIG_DIR/\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [18 x i8] c".wasm\22 2> \22$LOG\22 \00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [75 x i8] c"|| { echo \22error: clang wasm link failed:\22 >&2; cat \22$LOG\22 >&2; exit 1; }\0a\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [13 x i8] c"echo 'built \00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [22 x i8] c".wasm (run: wasmtime \00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [9 x i8] c".wasm)'\0a\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [16 x i8] c"/tmp/nyx_build_\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [22 x i8] c"\22; NYX_RC=$?; rm -f \22\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [16 x i8] c"\22; exit $NYX_RC\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [10 x i8] c"Project: \00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [10 x i8] c"Version: \00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [10 x i8] c"Main:    \00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [1 x i8] c"\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [10 x i8] c"Desc:    \00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [25 x i8] c"Mode:    no-GC (systems)\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [22 x i8] c"Mode:    GC (default)\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [1 x i8] c"\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [1 x i8] c"\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [1 x i8] c"\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [7 x i8] c"0.21.0\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [51 x i8] c"# FRICTION — reporte para el mantenedor de Nyx\0a\0a\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [74 x i8] c"> Completá las secciones. El USUARIO revisa este archivo (FRICTION.md).\0a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [88 x i8] c"> No hace falta enviar nada. Opcional (canal del equipo, público): nyx report --send\0a\0a\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [51 x i8] c"## Que intentaba hacer\0a\0a(objetivo en 1-3 lineas)\0a\0a\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [90 x i8] c"## Codigo minimo reproducible\0a\0a```nyx\0a// el .nx mas chico que reproduce el problema\0a```\0a\0a\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [104 x i8] c"## Error literal / comportamiento observado\0a\0a```\0a(pega la salida exacta del compilador o runtime)\0a```\0a\0a\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [99 x i8] c"## Que decia la documentacion\0a\0a(cita de LLM.md/SPEC/CHEATSHEET si aplica - o 'no encontre nada')\0a\0a\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [126 x i8] c"## Clasificacion\0a\0a- [ ] DOC (la doc miente o falta)\0a- [ ] LENGUAJE (bug del compilador/runtime)\0a- [ ] IDEA (mejora/feature)\0a\0a\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [21 x i8] c"## Entorno\0a\0a- nyx: v\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [25 x i8] c"\0a- so/arch: (uname -sm)\0a\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [12 x i8] c"FRICTION.md\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [79 x i8] c"FRICTION.md ya existe con contenido — avisale al usuario para que lo revise.\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [62 x i8] c"(opcional, para enviarlo al equipo de Nyx: nyx report --send)\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [79 x i8] c"creado FRICTION.md — completá las secciones (tu asistente IA puede hacerlo)\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [71 x i8] c"y AVISALE AL USUARIO. No hace falta enviar nada: el usuario lo revisa.\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [53 x i8] c"(opcional, para el equipo de Nyx: nyx report --send)\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [18 x i8] c"error: no existe \00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [56 x i8] c" — corré `nyx report` primero para crear FRICTION.md\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [67 x i8] c"error: el reporte parece vacío — completá la plantilla primero\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [1 x i8] c"\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [1 x i8] c"\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [15 x i8] c"/.nyx-kv-token\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [1 x i8] c"\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [77 x i8] c"aviso: envío ANÓNIMO (cola pública legible por terceros — sin secretos)\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [10 x i8] c"nyxkv.com\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [54 x i8] c"error: no se pudo conectar al buzón (nyxkv.com:6380)\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [22 x i8] c"el reporte quedó en \00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [28 x i8] c" — podés abrir un issue:\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [44 x i8] c"  https://github.com/nyxlang-dev/nyx/issues\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [5 x i8] c"b64:\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [11 x i8] c"q:friction\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [37 x i8] c"error: el buzón rechazó el reporte\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [55 x i8] c"reporte enviado al equipo (cola q:friction, posición \00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [15 x i8] c") — gracias!\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [1 x i8] c"\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [6 x i8] c"/.nyx\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [1 x i8] c"\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [1 x i8] c"\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [4 x i8] c"std\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [2 x i8] c".\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [1 x i8] c"\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [1 x i8] c"\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [5 x i8] c"http\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [4 x i8] c"web\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [10 x i8] c"websocket\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [7 x i8] c"cookie\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [7 x i8] c"sqlite\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [3 x i8] c"db\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [9 x i8] c"kvclient\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [5 x i8] c"json\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [8 x i8] c"msgpack\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [5 x i8] c"toml\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [4 x i8] c"csv\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [7 x i8] c"base64\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [9 x i8] c"compress\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [3 x i8] c"fs\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [5 x i8] c"file\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [3 x i8] c"io\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [5 x i8] c"path\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [4 x i8] c"tcp\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [4 x i8] c"udp\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [4 x i8] c"net\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [6 x i8] c"http2\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [4 x i8] c"dns\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [4 x i8] c"url\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [7 x i8] c"thread\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [8 x i8] c"channel\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [10 x i8] c"scheduler\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [5 x i8] c"sync\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [6 x i8] c"async\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [7 x i8] c"crypto\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [4 x i8] c"tls\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [5 x i8] c"hash\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [7 x i8] c"random\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [5 x i8] c"uuid\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [5 x i8] c"time\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [9 x i8] c"datetime\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [7 x i8] c"string\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [8 x i8] c"strings\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [14 x i8] c"stringbuilder\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [6 x i8] c"regex\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [4 x i8] c"set\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [6 x i8] c"deque\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [11 x i8] c"linkedlist\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [6 x i8] c"stack\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [9 x i8] c"btreemap\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [14 x i8] c"priorityqueue\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [6 x i8] c"graph\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [7 x i8] c"matrix\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [6 x i8] c"arena\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [4 x i8] c"box\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [3 x i8] c"rc\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [10 x i8] c"ownership\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [5 x i8] c"args\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [4 x i8] c"cli\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [4 x i8] c"log\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [8 x i8] c"logging\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [7 x i8] c"semver\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [8 x i8] c"testing\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [11 x i8] c"quickcheck\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [1 x i8] c"\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [2 x i8] c"/\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [1 x i8] c"\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [1 x i8] c"\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [4 x i8] c"///\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [1 x i8] c"\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [2 x i8] c" \00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [4 x i8] c"- `\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [2 x i8] c"`\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [6 x i8] c" — \00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [1 x i8] c"{"
@.str453 = private unnamed_addr constant [1 x i8] c"\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [10 x i8] c"### `std/\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [4 x i8] c"`\0a\0a\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [14 x i8] c"`import \22std/\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [8 x i8] c"\22` — \00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [14 x i8] c" funciones:\0a\0a\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [1 x i8] c"\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [71 x i8] c"error: no encuentro la stdlib (probé NYX_HOME/std, ~/.nyx/std, ./std)\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [11 x i8] c"HTTP & Web\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [20 x i8] c"Bases de datos & KV\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [23 x i8] c"Serialización & datos\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [15 x i8] c"Archivos & I/O\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [4 x i8] c"Red\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [13 x i8] c"Concurrencia\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [19 x i8] c"Cripto & seguridad\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [7 x i8] c"Tiempo\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [16 x i8] c"Strings & texto\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [26 x i8] c"Colecciones & estructuras\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [8 x i8] c"Memoria\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [14 x i8] c"Tooling & CLI\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [49 x i8] c"# CAPABILITIES — índice de la stdlib de Nyx\0a\0a\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [19 x i8] c"<!-- nyx-version: \00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [6 x i8] c" -->\0a\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [103 x i8] c"> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.\0a\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [103 x i8] c"> Es el índice de QUÉ EXISTE: antes de escribir una función, buscá acá si un módulo ya lo hace,\0a\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [95 x i8] c"> `import`alo y usalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.\0a\0a\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [1 x i8] c"\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [6 x i8] c"Otros\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [4 x i8] c"## \00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [3 x i8] c"\0a\0a\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [16 x i8] c"CAPABILITIES.md\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [1 x i8] c"\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [32 x i8] c"CAPABILITIES.md generado desde \00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [3 x i8] c" (\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [22 x i8] c" archivos escaneados)\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [6 x i8] c"build\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [1 x i8] c"\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [6 x i8] c"nyx v\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [6 x i8] c" — \00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [5 x i8] c"init\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [1 x i8] c"\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [4 x i8] c"add\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [51 x i8] c"Usage: nyx_build add <package-name> [--from <url>]\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [1 x i8] c"\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [7 x i8] c"--from\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [8 x i8] c"project\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [6 x i8] c"0.1.0\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [1 x i8] c"\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [1 x i8] c"\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [1 x i8] c"\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [7 x i8] c"report\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [1 x i8] c"\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [7 x i8] c"--send\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [13 x i8] c"capabilities\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [1 x i8] c"\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [47 x i8] c"error: nyx.toml not found in current directory\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [24 x i8] c"Create a nyx.toml with:\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [12 x i8] c"  [package]\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [17 x i8] c"  name = \22myapp\22\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [20 x i8] c"  version = \220.1.0\22\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [23 x i8] c"  main = \22src/main.nx\22\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [1 x i8] c"\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [45 x i8] c"error: nyx.toml missing [package] name field\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [5 x i8] c"info\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [6 x i8] c"build\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [15 x i8] c"build complete\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [4 x i8] c"run\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [3 x i8] c"./\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [24 x i8] c"error: unknown command \00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [88 x i8] c"hint: nyx [init|add|build|run|info|report|capabilities] [--release] [--target <triple>]\00"
@.str531.c = internal global %nyx_string* null
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
declare i64 @nyx_exec(i8*)
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

@__b64_chars = global %nyx_string* null
@__b64url_chars = global %nyx_string* null


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
  br label %while_cond11
while_cond11:
  %23 = load i64, i64* %22
  %24 = load i64, i64* %3
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %while_body12, label %while_end13
while_body12:
  %26 = load %nyx_string*, %nyx_string** %s.ptr
  %27 = load i64, i64* %22
  %28 = call i8 @nyx_string_char_at(%nyx_string* %26, i64 %27)
  %29 = zext i8 %28 to i64
  %30 = alloca i64
  store i64 %29, i64* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = load i64, i64* %30
  %33 = icmp slt i64 %32, 48
  br i1 %33, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %34 = load i64, i64* %30
  %35 = icmp sgt i64 %34, 57
  store i1 %35, i1* %31
  br label %sc_or_end15
sc_or_end15:
  %36 = load i1, i1* %31
  br i1 %36, label %then16, label %else17
then16:
  %37 = sub i64 0, 2
  ret i64 %37
else17:
  br label %merge18
merge18:
  %38 = load i64, i64* %21
  %39 = mul i64 %38, 10
  %40 = load i64, i64* %30
  %41 = sub i64 %40, 48
  %42 = add i64 %39, %41
  store i64 %42, i64* %21
  %43 = load i64, i64* %21
  %44 = icmp sgt i64 %43, 16777216
  br i1 %44, label %then19, label %else20
then19:
  %45 = sub i64 0, 2
  ret i64 %45
else20:
  br label %merge21
merge21:
  %46 = load i64, i64* %22
  %47 = add i64 %46, 1
  store i64 %47, i64* %22
  br label %while_cond11
while_end13:
  %48 = load i64, i64* %21
  ret i64 %48
}

define internal %nyx_string* @resp_rl(
i64 %handle.param, i1 %is_tls.param) {
  %handle.ptr = alloca i64
  store i64 %handle.param, i64* %handle.ptr
  %is_tls.ptr = alloca i1
  store i1 %is_tls.param, i1* %is_tls.ptr
  %49 = load i1, i1* %is_tls.ptr
  br i1 %49, label %then22, label %else23
then22:
  %50 = load i64, i64* %handle.ptr
  %51 = call %nyx_string* @nyx_tls_read_line(i64 %50)
  ret %nyx_string* %51
else23:
  br label %merge24
merge24:
  %52 = load i64, i64* %handle.ptr
  %53 = call %nyx_string* @nyx_tcp_read_line(i64 %52)
  ret %nyx_string* %53
}

define internal %nyx_string* @resp_rx(
i64 %handle.param, i1 %is_tls.param, i64 %n.param) {
  %handle.ptr = alloca i64
  store i64 %handle.param, i64* %handle.ptr
  %is_tls.ptr = alloca i1
  store i1 %is_tls.param, i1* %is_tls.ptr
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %54 = load i1, i1* %is_tls.ptr
  br i1 %54, label %then25, label %else26
then25:
  %55 = load i64, i64* %handle.ptr
  %56 = load i64, i64* %n.ptr
  %57 = call %nyx_string* @nyx_tls_read(i64 %55, i64 %56)
  ret %nyx_string* %57
else26:
  br label %merge27
merge27:
  %58 = load i64, i64* %handle.ptr
  %59 = load i64, i64* %n.ptr
  %60 = call %nyx_string* @nyx_tcp_read_exact(i64 %58, i64 %59)
  ret %nyx_string* %60
}

define { i64, i8* }* @resp_read_framed(
i64 %handle.param, i1 %is_tls.param) {
  %handle.ptr = alloca i64
  store i64 %handle.param, i64* %handle.ptr
  %is_tls.ptr = alloca i1
  store i1 %is_tls.param, i1* %is_tls.ptr
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = alloca { i64, i8* }*
  store { i64, i8* }* %61, { i64, i8* }** %62
  %63 = load i64, i64* %handle.ptr
  %64 = load i1, i1* %is_tls.ptr
  %65 = call %nyx_string* @resp_rl(i64 %63, i1 %64)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = load %nyx_string*, %nyx_string** %66
  %68 = call i64 @nyx_string_byte_length(%nyx_string* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %then28, label %else29
then28:
  %70 = load { i64, i8* }*, { i64, i8* }** %62
  ret { i64, i8* }* %70
else29:
  br label %merge30
merge30:
  %71 = load %nyx_string*, %nyx_string** %66
  %72 = call i8 @nyx_string_char_at(%nyx_string* %71, i64 0)
  %73 = zext i8 %72 to i64
  %74 = icmp ne i64 %73, 42
  br i1 %74, label %then31, label %else32
then31:
  %75 = load %nyx_string*, %nyx_string** %66
  %76 = getelementptr [2 x i8], [2 x i8]* @.str0, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %76)
  %78 = call { i64, i8* }* @nyx_string_split(%nyx_string* %75, %nyx_string* %77)
  ret { i64, i8* }* %78
else32:
  br label %merge33
merge33:
  %79 = load %nyx_string*, %nyx_string** %66
  %80 = load %nyx_string*, %nyx_string** %66
  %81 = call i64 @nyx_string_byte_length(%nyx_string* %80)
  %82 = call %nyx_string* @nyx_string_substring(%nyx_string* %79, i64 1, i64 %81)
  %83 = call i64 @resp_parse_len(%nyx_string* %82)
  %84 = alloca i64
  store i64 %83, i64* %84
  %85 = load i64, i64* %84
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %then34, label %else35
then34:
  %87 = load { i64, i8* }*, { i64, i8* }** %62
  ret { i64, i8* }* %87
else35:
  br label %merge36
merge36:
  %88 = load i64, i64* %84
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %then37, label %else38
then37:
  %90 = load { i64, i8* }*, { i64, i8* }** %62
  ret { i64, i8* }* %90
else38:
  br label %merge39
merge39:
  %91 = load i64, i64* %84
  %92 = icmp sgt i64 %91, 1048576
  br i1 %92, label %then40, label %else41
then40:
  %93 = load { i64, i8* }*, { i64, i8* }** %62
  ret { i64, i8* }* %93
else41:
  br label %merge42
merge42:
  %94 = alloca i64
  store i64 0, i64* %94
  br label %while_cond43
while_cond43:
  %95 = load i64, i64* %94
  %96 = load i64, i64* %84
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %while_body44, label %while_end45
while_body44:
  %98 = load i64, i64* %handle.ptr
  %99 = load i1, i1* %is_tls.ptr
  %100 = call %nyx_string* @resp_rl(i64 %98, i1 %99)
  %101 = alloca %nyx_string*
  store %nyx_string* %100, %nyx_string** %101
  %102 = load %nyx_string*, %nyx_string** %101
  %103 = call i64 @nyx_string_byte_length(%nyx_string* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %then46, label %else47
then46:
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %105
else47:
  br label %merge48
merge48:
  %106 = load %nyx_string*, %nyx_string** %101
  %107 = call i8 @nyx_string_char_at(%nyx_string* %106, i64 0)
  %108 = zext i8 %107 to i64
  %109 = icmp ne i64 %108, 36
  br i1 %109, label %then49, label %else50
then49:
  %110 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %110
else50:
  br label %merge51
merge51:
  %111 = load %nyx_string*, %nyx_string** %101
  %112 = load %nyx_string*, %nyx_string** %101
  %113 = call i64 @nyx_string_byte_length(%nyx_string* %112)
  %114 = call %nyx_string* @nyx_string_substring(%nyx_string* %111, i64 1, i64 %113)
  %115 = call i64 @resp_parse_len(%nyx_string* %114)
  %116 = alloca i64
  store i64 %115, i64* %116
  %117 = load i64, i64* %116
  %118 = sub i64 0, 2
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %then52, label %else53
then52:
  %120 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %120
else53:
  br label %merge54
merge54:
  %121 = load i64, i64* %116
  %122 = icmp sgt i64 %121, 16777216
  br i1 %122, label %then55, label %else56
then55:
  %123 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %123
else56:
  br label %merge57
merge57:
  %124 = load i64, i64* %116
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %then58, label %else59
then58:
  %126 = load { i64, i8* }*, { i64, i8* }** %62
  %127 = getelementptr [1 x i8], [1 x i8]* @.str1, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %127)
  %129 = ptrtoint %nyx_string* %128 to i64
  call void @nyx_array_push({ i64, i8* }* %126, i64 %129)
  br label %merge60
else59:
  %130 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %130)
  %132 = alloca %nyx_string*
  store %nyx_string* %131, %nyx_string** %132
  %133 = load i64, i64* %116
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %then61, label %else62
then61:
  %135 = load i64, i64* %handle.ptr
  %136 = load i1, i1* %is_tls.ptr
  %137 = load i64, i64* %116
  %138 = call %nyx_string* @resp_rx(i64 %135, i1 %136, i64 %137)
  store %nyx_string* %138, %nyx_string** %132
  %139 = load %nyx_string*, %nyx_string** %132
  %140 = call i64 @nyx_string_byte_length(%nyx_string* %139)
  %141 = load i64, i64* %116
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %then64, label %else65
then64:
  %143 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %143
else65:
  br label %merge66
merge66:
  br label %merge63
else62:
  br label %merge63
merge63:
  %144 = load i64, i64* %handle.ptr
  %145 = load i1, i1* %is_tls.ptr
  %146 = call %nyx_string* @resp_rx(i64 %144, i1 %145, i64 2)
  %147 = alloca %nyx_string*
  store %nyx_string* %146, %nyx_string** %147
  %148 = load %nyx_string*, %nyx_string** %147
  %149 = call i64 @nyx_string_byte_length(%nyx_string* %148)
  %150 = icmp ne i64 %149, 2
  br i1 %150, label %then67, label %else68
then67:
  %151 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %151
else68:
  br label %merge69
merge69:
  %152 = load { i64, i8* }*, { i64, i8* }** %62
  %153 = load %nyx_string*, %nyx_string** %132
  %154 = ptrtoint %nyx_string* %153 to i64
  call void @nyx_array_push({ i64, i8* }* %152, i64 %154)
  br label %merge60
merge60:
  %155 = load i64, i64* %94
  %156 = add i64 %155, 1
  store i64 %156, i64* %94
  br label %while_cond43
while_end45:
  %157 = load { i64, i8* }*, { i64, i8* }** %62
  ret { i64, i8* }* %157
}

define internal { i64, i8* }* @resp_read_command(
i64 %fd.param) {
  %fd.ptr = alloca i64
  store i64 %fd.param, i64* %fd.ptr
  %158 = load i64, i64* %fd.ptr
  %159 = call { i64, i8* }* @resp_read_framed(i64 %158, i1 0)
  ret { i64, i8* }* %159
}

define internal %nyx_string* @resp_simple_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %160 = call i8* @nyx_sb_new(i64 1024)
  %161 = alloca i8*
  store i8* %160, i8** %161
  %162 = load i8*, i8** %161
  %163 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %163)
  call void @nyx_sb_append(i8* %162, %nyx_string* %164)
  %165 = load i8*, i8** %161
  %166 = load %nyx_string*, %nyx_string** %s.ptr
  call void @nyx_sb_append(i8* %165, %nyx_string* %166)
  %167 = load i8*, i8** %161
  %168 = getelementptr [3 x i8], [3 x i8]* @.str4, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %168)
  call void @nyx_sb_append(i8* %167, %nyx_string* %169)
  %170 = load i8*, i8** %161
  %171 = call %nyx_string* @nyx_sb_to_string(i8* %170)
  ret %nyx_string* %171
}

define internal %nyx_string* @resp_error(
%nyx_string* %msg.param) {
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %172 = call i8* @nyx_sb_new(i64 1024)
  %173 = alloca i8*
  store i8* %172, i8** %173
  %174 = load i8*, i8** %173
  %175 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %175)
  call void @nyx_sb_append(i8* %174, %nyx_string* %176)
  %177 = load i8*, i8** %173
  %178 = load %nyx_string*, %nyx_string** %msg.ptr
  call void @nyx_sb_append(i8* %177, %nyx_string* %178)
  %179 = load i8*, i8** %173
  %180 = getelementptr [3 x i8], [3 x i8]* @.str6, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %180)
  call void @nyx_sb_append(i8* %179, %nyx_string* %181)
  %182 = load i8*, i8** %173
  %183 = call %nyx_string* @nyx_sb_to_string(i8* %182)
  ret %nyx_string* %183
}

define internal %nyx_string* @resp_integer(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %184 = call i8* @nyx_sb_new(i64 1024)
  %185 = alloca i8*
  store i8* %184, i8** %185
  %186 = load i8*, i8** %185
  %187 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %187)
  call void @nyx_sb_append(i8* %186, %nyx_string* %188)
  %189 = load i8*, i8** %185
  %190 = load i64, i64* %n.ptr
  %191 = call %nyx_string* @nyx_string_from_int(i64 %190)
  call void @nyx_sb_append(i8* %189, %nyx_string* %191)
  %192 = load i8*, i8** %185
  %193 = getelementptr [3 x i8], [3 x i8]* @.str8, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %193)
  call void @nyx_sb_append(i8* %192, %nyx_string* %194)
  %195 = load i8*, i8** %185
  %196 = call %nyx_string* @nyx_sb_to_string(i8* %195)
  ret %nyx_string* %196
}

define internal %nyx_string* @resp_bulk_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %197 = call i8* @nyx_sb_new(i64 1024)
  %198 = alloca i8*
  store i8* %197, i8** %198
  %199 = load i8*, i8** %198
  %200 = getelementptr [2 x i8], [2 x i8]* @.str9, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %200)
  call void @nyx_sb_append(i8* %199, %nyx_string* %201)
  %202 = load i8*, i8** %198
  %203 = load %nyx_string*, %nyx_string** %s.ptr
  %204 = call i64 @nyx_string_byte_length(%nyx_string* %203)
  %205 = call %nyx_string* @nyx_string_from_int(i64 %204)
  call void @nyx_sb_append(i8* %202, %nyx_string* %205)
  %206 = load i8*, i8** %198
  %207 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %207)
  call void @nyx_sb_append(i8* %206, %nyx_string* %208)
  %209 = load i8*, i8** %198
  %210 = load %nyx_string*, %nyx_string** %s.ptr
  call void @nyx_sb_append(i8* %209, %nyx_string* %210)
  %211 = load i8*, i8** %198
  %212 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %212)
  call void @nyx_sb_append(i8* %211, %nyx_string* %213)
  %214 = load i8*, i8** %198
  %215 = call %nyx_string* @nyx_sb_to_string(i8* %214)
  ret %nyx_string* %215
}

define internal %nyx_string* @resp_null_bulk(
) {
  %216 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %216)
  ret %nyx_string* %217
}

define internal %nyx_string* @resp_array_header(
i64 %count.param) {
  %count.ptr = alloca i64
  store i64 %count.param, i64* %count.ptr
  %218 = call i8* @nyx_sb_new(i64 1024)
  %219 = alloca i8*
  store i8* %218, i8** %219
  %220 = load i8*, i8** %219
  %221 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %221)
  call void @nyx_sb_append(i8* %220, %nyx_string* %222)
  %223 = load i8*, i8** %219
  %224 = load i64, i64* %count.ptr
  %225 = call %nyx_string* @nyx_string_from_int(i64 %224)
  call void @nyx_sb_append(i8* %223, %nyx_string* %225)
  %226 = load i8*, i8** %219
  %227 = getelementptr [3 x i8], [3 x i8]* @.str14, i32 0, i32 0
  %228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %227)
  call void @nyx_sb_append(i8* %226, %nyx_string* %228)
  %229 = load i8*, i8** %219
  %230 = call %nyx_string* @nyx_sb_to_string(i8* %229)
  ret %nyx_string* %230
}

define internal %nyx_string* @resp_bulk_array(
{ i64, i8* }* %items.param) {
  %items.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %items.param, { i64, i8* }** %items.ptr
  %231 = call i8* @nyx_sb_new(i64 1024)
  %232 = alloca i8*
  store i8* %231, i8** %232
  %233 = load i8*, i8** %232
  %234 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %234)
  call void @nyx_sb_append(i8* %233, %nyx_string* %235)
  %236 = load i8*, i8** %232
  %237 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %238 = call i64 @nyx_array_length({ i64, i8* }* %237)
  %239 = call %nyx_string* @nyx_string_from_int(i64 %238)
  call void @nyx_sb_append(i8* %236, %nyx_string* %239)
  %240 = load i8*, i8** %232
  %241 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %242 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %241)
  call void @nyx_sb_append(i8* %240, %nyx_string* %242)
  %243 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %243)
  %245 = alloca %nyx_string*
  store %nyx_string* %244, %nyx_string** %245
  %246 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %246)
  %248 = alloca %nyx_string*
  store %nyx_string* %247, %nyx_string** %248
  %249 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %250 = call i64 @nyx_array_length({ i64, i8* }* %249)
  %for_idx73 = alloca i64
  store i64 0, i64* %for_idx73
  br label %for_cond70
for_cond70:
  %251 = load i64, i64* %for_idx73
  %252 = icmp slt i64 %251, %250
  br i1 %252, label %for_body71, label %for_end72
for_body71:
  %253 = call i64 @nyx_array_get({ i64, i8* }* %249, i64 %251)
  %254 = inttoptr i64 %253 to %nyx_string*
  %255 = alloca %nyx_string*
  store %nyx_string* %254, %nyx_string** %255
  %256 = load i8*, i8** %232
  %257 = load %nyx_string*, %nyx_string** %245
  call void @nyx_sb_append(i8* %256, %nyx_string* %257)
  %258 = load i8*, i8** %232
  %259 = load %nyx_string*, %nyx_string** %255
  %260 = call i64 @nyx_string_byte_length(%nyx_string* %259)
  %261 = call %nyx_string* @nyx_string_from_int(i64 %260)
  call void @nyx_sb_append(i8* %258, %nyx_string* %261)
  %262 = load i8*, i8** %232
  %263 = load %nyx_string*, %nyx_string** %248
  call void @nyx_sb_append(i8* %262, %nyx_string* %263)
  %264 = load i8*, i8** %232
  %265 = load %nyx_string*, %nyx_string** %255
  call void @nyx_sb_append(i8* %264, %nyx_string* %265)
  %266 = load i8*, i8** %232
  %267 = load %nyx_string*, %nyx_string** %248
  call void @nyx_sb_append(i8* %266, %nyx_string* %267)
  %268 = load i64, i64* %for_idx73
  %269 = add i64 %268, 1
  store i64 %269, i64* %for_idx73
  br label %for_cond70
for_end72:
  %270 = load i8*, i8** %232
  %271 = call %nyx_string* @nyx_sb_to_string(i8* %270)
  ret %nyx_string* %271
}

define internal %nyx_string* @resp_mixed_array(
{ i64, i8* }* %items.param, { i64, i8* }* %flags.param) {
  %items.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %items.param, { i64, i8* }** %items.ptr
  %flags.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %flags.param, { i64, i8* }** %flags.ptr
  %272 = call i8* @nyx_sb_new(i64 1024)
  %273 = alloca i8*
  store i8* %272, i8** %273
  %274 = load i8*, i8** %273
  %275 = getelementptr [2 x i8], [2 x i8]* @.str19, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %275)
  call void @nyx_sb_append(i8* %274, %nyx_string* %276)
  %277 = load i8*, i8** %273
  %278 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %279 = call i64 @nyx_array_length({ i64, i8* }* %278)
  %280 = call %nyx_string* @nyx_string_from_int(i64 %279)
  call void @nyx_sb_append(i8* %277, %nyx_string* %280)
  %281 = load i8*, i8** %273
  %282 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %282)
  call void @nyx_sb_append(i8* %281, %nyx_string* %283)
  %284 = alloca i64
  store i64 0, i64* %284
  %285 = getelementptr [2 x i8], [2 x i8]* @.str21, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %285)
  %287 = alloca %nyx_string*
  store %nyx_string* %286, %nyx_string** %287
  %288 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %288)
  %290 = alloca %nyx_string*
  store %nyx_string* %289, %nyx_string** %290
  %291 = getelementptr [6 x i8], [6 x i8]* @.str23, i32 0, i32 0
  %292 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %291)
  %293 = alloca %nyx_string*
  store %nyx_string* %292, %nyx_string** %293
  br label %while_cond74
while_cond74:
  %294 = load i64, i64* %284
  %295 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %296 = call i64 @nyx_array_length({ i64, i8* }* %295)
  %297 = icmp slt i64 %294, %296
  br i1 %297, label %while_body75, label %while_end76
while_body75:
  %298 = load { i64, i8* }*, { i64, i8* }** %flags.ptr
  %299 = load i64, i64* %284
  %300 = call i64 @nyx_array_get({ i64, i8* }* %298, i64 %299)
  %301 = alloca i64
  store i64 %300, i64* %301
  %302 = load i64, i64* %301
  %303 = icmp eq i64 %302, 1
  br i1 %303, label %then77, label %else78
then77:
  %304 = load { i64, i8* }*, { i64, i8* }** %items.ptr
  %305 = load i64, i64* %284
  %306 = call i64 @nyx_array_get({ i64, i8* }* %304, i64 %305)
  %307 = inttoptr i64 %306 to %nyx_string*
  %308 = alloca %nyx_string*
  store %nyx_string* %307, %nyx_string** %308
  %309 = load i8*, i8** %273
  %310 = load %nyx_string*, %nyx_string** %287
  call void @nyx_sb_append(i8* %309, %nyx_string* %310)
  %311 = load i8*, i8** %273
  %312 = load %nyx_string*, %nyx_string** %308
  %313 = call i64 @nyx_string_byte_length(%nyx_string* %312)
  %314 = call %nyx_string* @nyx_string_from_int(i64 %313)
  call void @nyx_sb_append(i8* %311, %nyx_string* %314)
  %315 = load i8*, i8** %273
  %316 = load %nyx_string*, %nyx_string** %290
  call void @nyx_sb_append(i8* %315, %nyx_string* %316)
  %317 = load i8*, i8** %273
  %318 = load %nyx_string*, %nyx_string** %308
  call void @nyx_sb_append(i8* %317, %nyx_string* %318)
  %319 = load i8*, i8** %273
  %320 = load %nyx_string*, %nyx_string** %290
  call void @nyx_sb_append(i8* %319, %nyx_string* %320)
  br label %merge79
else78:
  %321 = load i8*, i8** %273
  %322 = load %nyx_string*, %nyx_string** %293
  call void @nyx_sb_append(i8* %321, %nyx_string* %322)
  br label %merge79
merge79:
  %323 = load i64, i64* %284
  %324 = add i64 %323, 1
  store i64 %324, i64* %284
  br label %while_cond74
while_end76:
  %325 = load i8*, i8** %273
  %326 = call %nyx_string* @nyx_sb_to_string(i8* %325)
  ret %nyx_string* %326
}

define i64 @kv_connect_auth(
%nyx_string* %host.param, i64 %port.param, %nyx_string* %token.param) {
  %host.ptr = alloca %nyx_string*
  store %nyx_string* %host.param, %nyx_string** %host.ptr
  %port.ptr = alloca i64
  store i64 %port.param, i64* %port.ptr
  %token.ptr = alloca %nyx_string*
  store %nyx_string* %token.param, %nyx_string** %token.ptr
  %327 = load %nyx_string*, %nyx_string** %host.ptr
  %328 = load i64, i64* %port.ptr
  %329 = call i64 @nyx_tls_connect(%nyx_string* %327, i64 %328)
  %330 = alloca i64
  store i64 %329, i64* %330
  %331 = load i64, i64* %330
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %then80, label %else81
then80:
  %333 = sub i64 0, 1
  ret i64 %333
else81:
  br label %merge82
merge82:
  %334 = load %nyx_string*, %nyx_string** %token.ptr
  %335 = call i64 @nyx_string_byte_length(%nyx_string* %334)
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %then83, label %else84
then83:
  %337 = load i64, i64* %330
  ret i64 %337
else84:
  br label %merge85
merge85:
  %338 = call { i64, i8* }* @nyx_array_new_ptr()
  %339 = getelementptr [5 x i8], [5 x i8]* @.str24, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %339)
  %341 = ptrtoint %nyx_string* %340 to i64
  call void @nyx_array_push({ i64, i8* }* %338, i64 %341)
  %342 = load %nyx_string*, %nyx_string** %token.ptr
  %343 = ptrtoint %nyx_string* %342 to i64
  call void @nyx_array_push({ i64, i8* }* %338, i64 %343)
  %344 = alloca { i64, i8* }*
  store { i64, i8* }* %338, { i64, i8* }** %344
  %345 = load i64, i64* %330
  %346 = load { i64, i8* }*, { i64, i8* }** %344
  %347 = call %nyx_string* @kv_cmd(i64 %345, { i64, i8* }* %346)
  %348 = alloca %nyx_string*
  store %nyx_string* %347, %nyx_string** %348
  %349 = load %nyx_string*, %nyx_string** %348
  %350 = getelementptr [3 x i8], [3 x i8]* @.str25, i32 0, i32 0
  %351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %350)
  %352 = call i1 @nyx_string_equals(%nyx_string* %349, %nyx_string* %351)
  %353 = xor i1 %352, true
  br i1 %353, label %then86, label %else87
then86:
  %354 = load i64, i64* %330
  call void @nyx_tls_close(i64 %354)
  %355 = sub i64 0, 1
  ret i64 %355
else87:
  br label %merge88
merge88:
  %356 = load i64, i64* %330
  ret i64 %356
}

define i64 @kv_close(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %357 = load i64, i64* %h.ptr
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %then89, label %else90
then89:
  %359 = load i64, i64* %h.ptr
  call void @nyx_tls_close(i64 %359)
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
  %360 = call i8* @nyx_sb_new(i64 1024)
  %361 = alloca i8*
  store i8* %360, i8** %361
  %362 = alloca i1
  store i1 0, i1* %362
  %363 = alloca i1
  store i1 0, i1* %363
  %364 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %364)
  %366 = alloca %nyx_string*
  store %nyx_string* %365, %nyx_string** %366
  br label %while_cond92
while_cond92:
  %367 = load i1, i1* %363
  %368 = xor i1 %367, true
  br i1 %368, label %while_body93, label %while_end94
while_body93:
  %369 = load i64, i64* %h.ptr
  %370 = call %nyx_string* @nyx_tls_read(i64 %369, i64 1)
  %371 = alloca %nyx_string*
  store %nyx_string* %370, %nyx_string** %371
  %372 = load %nyx_string*, %nyx_string** %371
  %373 = call i64 @nyx_string_byte_length(%nyx_string* %372)
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %then95, label %else96
then95:
  %375 = load i8*, i8** %361
  %376 = call %nyx_string* @nyx_sb_to_string(i8* %375)
  ret %nyx_string* %376
else96:
  br label %merge97
merge97:
  %377 = load %nyx_string*, %nyx_string** %371
  %378 = call i8 @nyx_string_char_at(%nyx_string* %377, i64 0)
  %379 = zext i8 %378 to i64
  %380 = alloca i64
  store i64 %379, i64* %380
  %381 = alloca i1
  store i1 false, i1* %381
  %382 = load i1, i1* %362
  br i1 %382, label %sc_and_rhs98, label %sc_and_end99
sc_and_rhs98:
  %383 = load i64, i64* %380
  %384 = icmp eq i64 %383, 10
  store i1 %384, i1* %381
  br label %sc_and_end99
sc_and_end99:
  %385 = load i1, i1* %381
  br i1 %385, label %then100, label %else101
then100:
  store i1 1, i1* %363
  br label %merge102
else101:
  %386 = load i1, i1* %362
  br i1 %386, label %then103, label %else104
then103:
  %387 = load i8*, i8** %361
  %388 = load %nyx_string*, %nyx_string** %366
  call void @nyx_sb_append(i8* %387, %nyx_string* %388)
  store i1 0, i1* %362
  br label %merge105
else104:
  br label %merge105
merge105:
  %389 = load i64, i64* %380
  %390 = icmp eq i64 %389, 13
  br i1 %390, label %then106, label %else107
then106:
  store i1 1, i1* %362
  br label %merge108
else107:
  %391 = load i8*, i8** %361
  %392 = load %nyx_string*, %nyx_string** %371
  call void @nyx_sb_append(i8* %391, %nyx_string* %392)
  br label %merge108
merge108:
  br label %merge102
merge102:
  br label %while_cond92
while_end94:
  %393 = load i8*, i8** %361
  %394 = call %nyx_string* @nyx_sb_to_string(i8* %393)
  ret %nyx_string* %394
}

define internal %nyx_string* @read_bulk(
i64 %h.param, %nyx_string* %header.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %header.ptr = alloca %nyx_string*
  store %nyx_string* %header.param, %nyx_string** %header.ptr
  %395 = load %nyx_string*, %nyx_string** %header.ptr
  %396 = load %nyx_string*, %nyx_string** %header.ptr
  %397 = call i64 @nyx_string_byte_length(%nyx_string* %396)
  %398 = call %nyx_string* @nyx_string_substring(%nyx_string* %395, i64 1, i64 %397)
  %399 = call i64 @resp_parse_len(%nyx_string* %398)
  %400 = alloca i64
  store i64 %399, i64* %400
  %401 = load i64, i64* %400
  %402 = icmp slt i64 %401, 0
  br i1 %402, label %then109, label %else110
then109:
  %403 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %403)
  ret %nyx_string* %404
else110:
  br label %merge111
merge111:
  %405 = load i64, i64* %400
  %406 = icmp sgt i64 %405, 16777216
  br i1 %406, label %then112, label %else113
then112:
  %407 = getelementptr [1 x i8], [1 x i8]* @.str28, i32 0, i32 0
  %408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %407)
  ret %nyx_string* %408
else113:
  br label %merge114
merge114:
  %409 = load i64, i64* %400
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %then115, label %else116
then115:
  %411 = load i64, i64* %h.ptr
  %412 = call %nyx_string* @nyx_tls_read(i64 %411, i64 2)
  %413 = alloca %nyx_string*
  store %nyx_string* %412, %nyx_string** %413
  %414 = getelementptr [1 x i8], [1 x i8]* @.str29, i32 0, i32 0
  %415 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %414)
  ret %nyx_string* %415
else116:
  br label %merge117
merge117:
  %416 = load i64, i64* %h.ptr
  %417 = load i64, i64* %400
  %418 = call %nyx_string* @nyx_tls_read(i64 %416, i64 %417)
  %419 = alloca %nyx_string*
  store %nyx_string* %418, %nyx_string** %419
  %420 = load %nyx_string*, %nyx_string** %419
  %421 = call i64 @nyx_string_byte_length(%nyx_string* %420)
  %422 = load i64, i64* %400
  %423 = icmp ne i64 %421, %422
  br i1 %423, label %then118, label %else119
then118:
  %424 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %424)
  ret %nyx_string* %425
else119:
  br label %merge120
merge120:
  %426 = load i64, i64* %h.ptr
  %427 = call %nyx_string* @nyx_tls_read(i64 %426, i64 2)
  %428 = alloca %nyx_string*
  store %nyx_string* %427, %nyx_string** %428
  %429 = load %nyx_string*, %nyx_string** %419
  ret %nyx_string* %429
}

define internal i64 @send_cmd(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %430 = call i8* @nyx_sb_new(i64 1024)
  %431 = alloca i8*
  store i8* %430, i8** %431
  %432 = load i8*, i8** %431
  %433 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %433)
  call void @nyx_sb_append(i8* %432, %nyx_string* %434)
  %435 = load i8*, i8** %431
  %436 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %437 = call i64 @nyx_array_length({ i64, i8* }* %436)
  %438 = call %nyx_string* @nyx_string_from_int(i64 %437)
  call void @nyx_sb_append(i8* %435, %nyx_string* %438)
  %439 = load i8*, i8** %431
  %440 = getelementptr [3 x i8], [3 x i8]* @.str32, i32 0, i32 0
  %441 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %440)
  call void @nyx_sb_append(i8* %439, %nyx_string* %441)
  %442 = alloca i64
  store i64 0, i64* %442
  %443 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %444 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %443)
  %445 = alloca %nyx_string*
  store %nyx_string* %444, %nyx_string** %445
  %446 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %447 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %446)
  %448 = alloca %nyx_string*
  store %nyx_string* %447, %nyx_string** %448
  br label %while_cond121
while_cond121:
  %449 = load i64, i64* %442
  %450 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %451 = call i64 @nyx_array_length({ i64, i8* }* %450)
  %452 = icmp slt i64 %449, %451
  br i1 %452, label %while_body122, label %while_end123
while_body122:
  %453 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %454 = load i64, i64* %442
  %455 = call i64 @nyx_array_get({ i64, i8* }* %453, i64 %454)
  %456 = inttoptr i64 %455 to %nyx_string*
  %457 = alloca %nyx_string*
  store %nyx_string* %456, %nyx_string** %457
  %458 = load i8*, i8** %431
  %459 = load %nyx_string*, %nyx_string** %445
  call void @nyx_sb_append(i8* %458, %nyx_string* %459)
  %460 = load i8*, i8** %431
  %461 = load %nyx_string*, %nyx_string** %457
  %462 = call i64 @nyx_string_byte_length(%nyx_string* %461)
  %463 = call %nyx_string* @nyx_string_from_int(i64 %462)
  call void @nyx_sb_append(i8* %460, %nyx_string* %463)
  %464 = load i8*, i8** %431
  %465 = load %nyx_string*, %nyx_string** %448
  call void @nyx_sb_append(i8* %464, %nyx_string* %465)
  %466 = load i8*, i8** %431
  %467 = load %nyx_string*, %nyx_string** %457
  call void @nyx_sb_append(i8* %466, %nyx_string* %467)
  %468 = load i8*, i8** %431
  %469 = load %nyx_string*, %nyx_string** %448
  call void @nyx_sb_append(i8* %468, %nyx_string* %469)
  %470 = load i64, i64* %442
  %471 = add i64 %470, 1
  store i64 %471, i64* %442
  br label %while_cond121
while_end123:
  %472 = load i64, i64* %h.ptr
  %473 = load i8*, i8** %431
  %474 = call %nyx_string* @nyx_sb_to_string(i8* %473)
  %475 = call i64 @nyx_tls_write(i64 %472, %nyx_string* %474)
  ret i64 0
}

define %nyx_string* @kv_cmd(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %476 = load i64, i64* %h.ptr
  %477 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %478 = call i64 @send_cmd(i64 %476, { i64, i8* }* %477)
  %479 = load i64, i64* %h.ptr
  %480 = call %nyx_string* @tls_read_line_local(i64 %479)
  %481 = alloca %nyx_string*
  store %nyx_string* %480, %nyx_string** %481
  %482 = load %nyx_string*, %nyx_string** %481
  %483 = call i64 @nyx_string_byte_length(%nyx_string* %482)
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %then124, label %else125
then124:
  %485 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %486 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %485)
  ret %nyx_string* %486
else125:
  br label %merge126
merge126:
  %487 = load %nyx_string*, %nyx_string** %481
  %488 = call i8 @nyx_string_char_at(%nyx_string* %487, i64 0)
  %489 = zext i8 %488 to i64
  %490 = alloca i64
  store i64 %489, i64* %490
  %491 = load i64, i64* %490
  %492 = icmp eq i64 %491, 36
  br i1 %492, label %then127, label %else128
then127:
  %493 = load i64, i64* %h.ptr
  %494 = load %nyx_string*, %nyx_string** %481
  %495 = call %nyx_string* @read_bulk(i64 %493, %nyx_string* %494)
  ret %nyx_string* %495
else128:
  br label %merge129
merge129:
  %496 = load i64, i64* %490
  %497 = icmp eq i64 %496, 45
  br i1 %497, label %then130, label %else131
then130:
  %498 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %499 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %498)
  ret %nyx_string* %499
else131:
  br label %merge132
merge132:
  %500 = load %nyx_string*, %nyx_string** %481
  %501 = call i64 @nyx_string_byte_length(%nyx_string* %500)
  %502 = icmp sgt i64 %501, 1
  br i1 %502, label %then133, label %else134
then133:
  %503 = load %nyx_string*, %nyx_string** %481
  %504 = load %nyx_string*, %nyx_string** %481
  %505 = call i64 @nyx_string_byte_length(%nyx_string* %504)
  %506 = call %nyx_string* @nyx_string_substring(%nyx_string* %503, i64 1, i64 %505)
  ret %nyx_string* %506
else134:
  br label %merge135
merge135:
  %507 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %508 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %507)
  ret %nyx_string* %508
}

define { i64, i8* }* @kv_cmd_array(
i64 %h.param, { i64, i8* }* %parts.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %parts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %parts.param, { i64, i8* }** %parts.ptr
  %509 = load i64, i64* %h.ptr
  %510 = load { i64, i8* }*, { i64, i8* }** %parts.ptr
  %511 = call i64 @send_cmd(i64 %509, { i64, i8* }* %510)
  %512 = load i64, i64* %h.ptr
  %513 = call %nyx_string* @tls_read_line_local(i64 %512)
  %514 = alloca %nyx_string*
  store %nyx_string* %513, %nyx_string** %514
  %515 = call { i64, i8* }* @nyx_array_new_ptr()
  %516 = alloca { i64, i8* }*
  store { i64, i8* }* %515, { i64, i8* }** %516
  %517 = load %nyx_string*, %nyx_string** %514
  %518 = call i64 @nyx_string_byte_length(%nyx_string* %517)
  %519 = icmp eq i64 %518, 0
  br i1 %519, label %then136, label %else137
then136:
  %520 = load { i64, i8* }*, { i64, i8* }** %516
  ret { i64, i8* }* %520
else137:
  br label %merge138
merge138:
  %521 = load %nyx_string*, %nyx_string** %514
  %522 = call i8 @nyx_string_char_at(%nyx_string* %521, i64 0)
  %523 = zext i8 %522 to i64
  %524 = alloca i64
  store i64 %523, i64* %524
  %525 = load i64, i64* %524
  %526 = icmp ne i64 %525, 42
  br i1 %526, label %then139, label %else140
then139:
  %527 = load { i64, i8* }*, { i64, i8* }** %516
  ret { i64, i8* }* %527
else140:
  br label %merge141
merge141:
  %528 = load %nyx_string*, %nyx_string** %514
  %529 = load %nyx_string*, %nyx_string** %514
  %530 = call i64 @nyx_string_byte_length(%nyx_string* %529)
  %531 = call %nyx_string* @nyx_string_substring(%nyx_string* %528, i64 1, i64 %530)
  %532 = call i64 @resp_parse_len(%nyx_string* %531)
  %533 = alloca i64
  store i64 %532, i64* %533
  %534 = load i64, i64* %533
  %535 = icmp slt i64 %534, 0
  br i1 %535, label %then142, label %else143
then142:
  %536 = load { i64, i8* }*, { i64, i8* }** %516
  ret { i64, i8* }* %536
else143:
  br label %merge144
merge144:
  %537 = alloca i64
  store i64 0, i64* %537
  br label %while_cond145
while_cond145:
  %538 = load i64, i64* %537
  %539 = load i64, i64* %533
  %540 = icmp slt i64 %538, %539
  br i1 %540, label %while_body146, label %while_end147
while_body146:
  %541 = load i64, i64* %h.ptr
  %542 = call %nyx_string* @tls_read_line_local(i64 %541)
  %543 = alloca %nyx_string*
  store %nyx_string* %542, %nyx_string** %543
  %544 = load %nyx_string*, %nyx_string** %543
  %545 = call i64 @nyx_string_byte_length(%nyx_string* %544)
  %546 = icmp sgt i64 %545, 0
  br i1 %546, label %then148, label %else149
then148:
  %547 = load %nyx_string*, %nyx_string** %543
  %548 = call i8 @nyx_string_char_at(%nyx_string* %547, i64 0)
  %549 = zext i8 %548 to i64
  %550 = alloca i64
  store i64 %549, i64* %550
  %551 = load i64, i64* %550
  %552 = icmp eq i64 %551, 36
  br i1 %552, label %then151, label %else152
then151:
  %553 = load { i64, i8* }*, { i64, i8* }** %516
  %554 = load i64, i64* %h.ptr
  %555 = load %nyx_string*, %nyx_string** %543
  %556 = call %nyx_string* @read_bulk(i64 %554, %nyx_string* %555)
  %557 = ptrtoint %nyx_string* %556 to i64
  call void @nyx_array_push({ i64, i8* }* %553, i64 %557)
  br label %merge153
else152:
  %558 = load { i64, i8* }*, { i64, i8* }** %516
  %559 = load %nyx_string*, %nyx_string** %543
  %560 = load %nyx_string*, %nyx_string** %543
  %561 = call i64 @nyx_string_byte_length(%nyx_string* %560)
  %562 = call %nyx_string* @nyx_string_substring(%nyx_string* %559, i64 1, i64 %561)
  %563 = ptrtoint %nyx_string* %562 to i64
  call void @nyx_array_push({ i64, i8* }* %558, i64 %563)
  br label %merge153
merge153:
  br label %merge150
else149:
  %564 = load { i64, i8* }*, { i64, i8* }** %516
  %565 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %566 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %565)
  %567 = ptrtoint %nyx_string* %566 to i64
  call void @nyx_array_push({ i64, i8* }* %564, i64 %567)
  br label %merge150
merge150:
  %568 = load i64, i64* %537
  %569 = add i64 %568, 1
  store i64 %569, i64* %537
  br label %while_cond145
while_end147:
  %570 = load { i64, i8* }*, { i64, i8* }** %516
  ret { i64, i8* }* %570
}

define i1 @kv_set(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %value.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %value.ptr = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %value.ptr
  %571 = call { i64, i8* }* @nyx_array_new_ptr()
  %572 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %572)
  %574 = ptrtoint %nyx_string* %573 to i64
  call void @nyx_array_push({ i64, i8* }* %571, i64 %574)
  %575 = load %nyx_string*, %nyx_string** %key.ptr
  %576 = ptrtoint %nyx_string* %575 to i64
  call void @nyx_array_push({ i64, i8* }* %571, i64 %576)
  %577 = load %nyx_string*, %nyx_string** %value.ptr
  %578 = ptrtoint %nyx_string* %577 to i64
  call void @nyx_array_push({ i64, i8* }* %571, i64 %578)
  %579 = alloca { i64, i8* }*
  store { i64, i8* }* %571, { i64, i8* }** %579
  %580 = load i64, i64* %h.ptr
  %581 = load { i64, i8* }*, { i64, i8* }** %579
  %582 = call %nyx_string* @kv_cmd(i64 %580, { i64, i8* }* %581)
  %583 = getelementptr [3 x i8], [3 x i8]* @.str40, i32 0, i32 0
  %584 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %583)
  %585 = call i1 @nyx_string_equals(%nyx_string* %582, %nyx_string* %584)
  ret i1 %585
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
  %586 = call { i64, i8* }* @nyx_array_new_ptr()
  %587 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %588 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %587)
  %589 = ptrtoint %nyx_string* %588 to i64
  call void @nyx_array_push({ i64, i8* }* %586, i64 %589)
  %590 = load %nyx_string*, %nyx_string** %key.ptr
  %591 = ptrtoint %nyx_string* %590 to i64
  call void @nyx_array_push({ i64, i8* }* %586, i64 %591)
  %592 = load i64, i64* %ttl.ptr
  %593 = call %nyx_string* @nyx_string_from_int(i64 %592)
  %594 = ptrtoint %nyx_string* %593 to i64
  call void @nyx_array_push({ i64, i8* }* %586, i64 %594)
  %595 = load %nyx_string*, %nyx_string** %value.ptr
  %596 = ptrtoint %nyx_string* %595 to i64
  call void @nyx_array_push({ i64, i8* }* %586, i64 %596)
  %597 = alloca { i64, i8* }*
  store { i64, i8* }* %586, { i64, i8* }** %597
  %598 = load i64, i64* %h.ptr
  %599 = load { i64, i8* }*, { i64, i8* }** %597
  %600 = call %nyx_string* @kv_cmd(i64 %598, { i64, i8* }* %599)
  %601 = getelementptr [3 x i8], [3 x i8]* @.str42, i32 0, i32 0
  %602 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %601)
  %603 = call i1 @nyx_string_equals(%nyx_string* %600, %nyx_string* %602)
  ret i1 %603
}

define %nyx_string* @kv_get(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %604 = call { i64, i8* }* @nyx_array_new_ptr()
  %605 = getelementptr [4 x i8], [4 x i8]* @.str43, i32 0, i32 0
  %606 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %605)
  %607 = ptrtoint %nyx_string* %606 to i64
  call void @nyx_array_push({ i64, i8* }* %604, i64 %607)
  %608 = load %nyx_string*, %nyx_string** %key.ptr
  %609 = ptrtoint %nyx_string* %608 to i64
  call void @nyx_array_push({ i64, i8* }* %604, i64 %609)
  %610 = alloca { i64, i8* }*
  store { i64, i8* }* %604, { i64, i8* }** %610
  %611 = load i64, i64* %h.ptr
  %612 = load { i64, i8* }*, { i64, i8* }** %610
  %613 = call %nyx_string* @kv_cmd(i64 %611, { i64, i8* }* %612)
  ret %nyx_string* %613
}

define i64 @kv_del(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %614 = call { i64, i8* }* @nyx_array_new_ptr()
  %615 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %616 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %615)
  %617 = ptrtoint %nyx_string* %616 to i64
  call void @nyx_array_push({ i64, i8* }* %614, i64 %617)
  %618 = load %nyx_string*, %nyx_string** %key.ptr
  %619 = ptrtoint %nyx_string* %618 to i64
  call void @nyx_array_push({ i64, i8* }* %614, i64 %619)
  %620 = alloca { i64, i8* }*
  store { i64, i8* }* %614, { i64, i8* }** %620
  %621 = load i64, i64* %h.ptr
  %622 = load { i64, i8* }*, { i64, i8* }** %620
  %623 = call %nyx_string* @kv_cmd(i64 %621, { i64, i8* }* %622)
  %624 = call i64 @nyx_string_to_int(%nyx_string* %623)
  ret i64 %624
}

define i64 @kv_rpush(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %value.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %value.ptr = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %value.ptr
  %625 = call { i64, i8* }* @nyx_array_new_ptr()
  %626 = getelementptr [6 x i8], [6 x i8]* @.str45, i32 0, i32 0
  %627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %626)
  %628 = ptrtoint %nyx_string* %627 to i64
  call void @nyx_array_push({ i64, i8* }* %625, i64 %628)
  %629 = load %nyx_string*, %nyx_string** %key.ptr
  %630 = ptrtoint %nyx_string* %629 to i64
  call void @nyx_array_push({ i64, i8* }* %625, i64 %630)
  %631 = load %nyx_string*, %nyx_string** %value.ptr
  %632 = ptrtoint %nyx_string* %631 to i64
  call void @nyx_array_push({ i64, i8* }* %625, i64 %632)
  %633 = alloca { i64, i8* }*
  store { i64, i8* }* %625, { i64, i8* }** %633
  %634 = load i64, i64* %h.ptr
  %635 = load { i64, i8* }*, { i64, i8* }** %633
  %636 = call %nyx_string* @kv_cmd(i64 %634, { i64, i8* }* %635)
  %637 = call i64 @nyx_string_to_int(%nyx_string* %636)
  ret i64 %637
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
  %638 = call { i64, i8* }* @nyx_array_new_ptr()
  %639 = getelementptr [7 x i8], [7 x i8]* @.str46, i32 0, i32 0
  %640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %639)
  %641 = ptrtoint %nyx_string* %640 to i64
  call void @nyx_array_push({ i64, i8* }* %638, i64 %641)
  %642 = load %nyx_string*, %nyx_string** %key.ptr
  %643 = ptrtoint %nyx_string* %642 to i64
  call void @nyx_array_push({ i64, i8* }* %638, i64 %643)
  %644 = load i64, i64* %start.ptr
  %645 = call %nyx_string* @nyx_string_from_int(i64 %644)
  %646 = ptrtoint %nyx_string* %645 to i64
  call void @nyx_array_push({ i64, i8* }* %638, i64 %646)
  %647 = load i64, i64* %stop.ptr
  %648 = call %nyx_string* @nyx_string_from_int(i64 %647)
  %649 = ptrtoint %nyx_string* %648 to i64
  call void @nyx_array_push({ i64, i8* }* %638, i64 %649)
  %650 = alloca { i64, i8* }*
  store { i64, i8* }* %638, { i64, i8* }** %650
  %651 = load i64, i64* %h.ptr
  %652 = load { i64, i8* }*, { i64, i8* }** %650
  %653 = call { i64, i8* }* @kv_cmd_array(i64 %651, { i64, i8* }* %652)
  ret { i64, i8* }* %653
}

define i64 @kv_llen(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %654 = call { i64, i8* }* @nyx_array_new_ptr()
  %655 = getelementptr [5 x i8], [5 x i8]* @.str47, i32 0, i32 0
  %656 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %655)
  %657 = ptrtoint %nyx_string* %656 to i64
  call void @nyx_array_push({ i64, i8* }* %654, i64 %657)
  %658 = load %nyx_string*, %nyx_string** %key.ptr
  %659 = ptrtoint %nyx_string* %658 to i64
  call void @nyx_array_push({ i64, i8* }* %654, i64 %659)
  %660 = alloca { i64, i8* }*
  store { i64, i8* }* %654, { i64, i8* }** %660
  %661 = load i64, i64* %h.ptr
  %662 = load { i64, i8* }*, { i64, i8* }** %660
  %663 = call %nyx_string* @kv_cmd(i64 %661, { i64, i8* }* %662)
  %664 = call i64 @nyx_string_to_int(%nyx_string* %663)
  ret i64 %664
}

define i64 @kv_sadd(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %member.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %member.ptr = alloca %nyx_string*
  store %nyx_string* %member.param, %nyx_string** %member.ptr
  %665 = call { i64, i8* }* @nyx_array_new_ptr()
  %666 = getelementptr [5 x i8], [5 x i8]* @.str48, i32 0, i32 0
  %667 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %666)
  %668 = ptrtoint %nyx_string* %667 to i64
  call void @nyx_array_push({ i64, i8* }* %665, i64 %668)
  %669 = load %nyx_string*, %nyx_string** %key.ptr
  %670 = ptrtoint %nyx_string* %669 to i64
  call void @nyx_array_push({ i64, i8* }* %665, i64 %670)
  %671 = load %nyx_string*, %nyx_string** %member.ptr
  %672 = ptrtoint %nyx_string* %671 to i64
  call void @nyx_array_push({ i64, i8* }* %665, i64 %672)
  %673 = alloca { i64, i8* }*
  store { i64, i8* }* %665, { i64, i8* }** %673
  %674 = load i64, i64* %h.ptr
  %675 = load { i64, i8* }*, { i64, i8* }** %673
  %676 = call %nyx_string* @kv_cmd(i64 %674, { i64, i8* }* %675)
  %677 = call i64 @nyx_string_to_int(%nyx_string* %676)
  ret i64 %677
}

define { i64, i8* }* @kv_smembers(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %678 = call { i64, i8* }* @nyx_array_new_ptr()
  %679 = getelementptr [9 x i8], [9 x i8]* @.str49, i32 0, i32 0
  %680 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %679)
  %681 = ptrtoint %nyx_string* %680 to i64
  call void @nyx_array_push({ i64, i8* }* %678, i64 %681)
  %682 = load %nyx_string*, %nyx_string** %key.ptr
  %683 = ptrtoint %nyx_string* %682 to i64
  call void @nyx_array_push({ i64, i8* }* %678, i64 %683)
  %684 = alloca { i64, i8* }*
  store { i64, i8* }* %678, { i64, i8* }** %684
  %685 = load i64, i64* %h.ptr
  %686 = load { i64, i8* }*, { i64, i8* }** %684
  %687 = call { i64, i8* }* @kv_cmd_array(i64 %685, { i64, i8* }* %686)
  ret { i64, i8* }* %687
}

define %nyx_string* @kv_whoami(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %688 = call { i64, i8* }* @nyx_array_new_ptr()
  %689 = getelementptr [7 x i8], [7 x i8]* @.str50, i32 0, i32 0
  %690 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %689)
  %691 = ptrtoint %nyx_string* %690 to i64
  call void @nyx_array_push({ i64, i8* }* %688, i64 %691)
  %692 = alloca { i64, i8* }*
  store { i64, i8* }* %688, { i64, i8* }** %692
  %693 = load i64, i64* %h.ptr
  %694 = load { i64, i8* }*, { i64, i8* }** %692
  %695 = call %nyx_string* @kv_cmd(i64 %693, { i64, i8* }* %694)
  ret %nyx_string* %695
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
  %696 = call { i64, i8* }* @nyx_array_new_ptr()
  %697 = getelementptr [13 x i8], [13 x i8]* @.str51, i32 0, i32 0
  %698 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %697)
  %699 = ptrtoint %nyx_string* %698 to i64
  call void @nyx_array_push({ i64, i8* }* %696, i64 %699)
  %700 = load %nyx_string*, %nyx_string** %user_id.ptr
  %701 = ptrtoint %nyx_string* %700 to i64
  call void @nyx_array_push({ i64, i8* }* %696, i64 %701)
  %702 = load %nyx_string*, %nyx_string** %plan.ptr
  %703 = ptrtoint %nyx_string* %702 to i64
  call void @nyx_array_push({ i64, i8* }* %696, i64 %703)
  %704 = load i64, i64* %ttl.ptr
  %705 = call %nyx_string* @nyx_string_from_int(i64 %704)
  %706 = ptrtoint %nyx_string* %705 to i64
  call void @nyx_array_push({ i64, i8* }* %696, i64 %706)
  %707 = alloca { i64, i8* }*
  store { i64, i8* }* %696, { i64, i8* }** %707
  %708 = load i64, i64* %h.ptr
  %709 = load { i64, i8* }*, { i64, i8* }** %707
  %710 = call %nyx_string* @kv_cmd(i64 %708, { i64, i8* }* %709)
  ret %nyx_string* %710
}

define i1 @kv_exists(
i64 %h.param, %nyx_string* %key.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %711 = call { i64, i8* }* @nyx_array_new_ptr()
  %712 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %713 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %712)
  %714 = ptrtoint %nyx_string* %713 to i64
  call void @nyx_array_push({ i64, i8* }* %711, i64 %714)
  %715 = load %nyx_string*, %nyx_string** %key.ptr
  %716 = ptrtoint %nyx_string* %715 to i64
  call void @nyx_array_push({ i64, i8* }* %711, i64 %716)
  %717 = alloca { i64, i8* }*
  store { i64, i8* }* %711, { i64, i8* }** %717
  %718 = load i64, i64* %h.ptr
  %719 = load { i64, i8* }*, { i64, i8* }** %717
  %720 = call %nyx_string* @kv_cmd(i64 %718, { i64, i8* }* %719)
  %721 = getelementptr [2 x i8], [2 x i8]* @.str53, i32 0, i32 0
  %722 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %721)
  %723 = call i1 @nyx_string_equals(%nyx_string* %720, %nyx_string* %722)
  ret i1 %723
}

define i64 @kv_srem(
i64 %h.param, %nyx_string* %key.param, %nyx_string* %member.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %key.ptr = alloca %nyx_string*
  store %nyx_string* %key.param, %nyx_string** %key.ptr
  %member.ptr = alloca %nyx_string*
  store %nyx_string* %member.param, %nyx_string** %member.ptr
  %724 = call { i64, i8* }* @nyx_array_new_ptr()
  %725 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %726 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %725)
  %727 = ptrtoint %nyx_string* %726 to i64
  call void @nyx_array_push({ i64, i8* }* %724, i64 %727)
  %728 = load %nyx_string*, %nyx_string** %key.ptr
  %729 = ptrtoint %nyx_string* %728 to i64
  call void @nyx_array_push({ i64, i8* }* %724, i64 %729)
  %730 = load %nyx_string*, %nyx_string** %member.ptr
  %731 = ptrtoint %nyx_string* %730 to i64
  call void @nyx_array_push({ i64, i8* }* %724, i64 %731)
  %732 = alloca { i64, i8* }*
  store { i64, i8* }* %724, { i64, i8* }** %732
  %733 = load i64, i64* %h.ptr
  %734 = load { i64, i8* }*, { i64, i8* }** %732
  %735 = call %nyx_string* @kv_cmd(i64 %733, { i64, i8* }* %734)
  %736 = call i64 @nyx_string_to_int(%nyx_string* %735)
  ret i64 %736
}

define { i64, i8* }* @kv_token_list(
i64 %h.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %737 = call { i64, i8* }* @nyx_array_new_ptr()
  %738 = getelementptr [11 x i8], [11 x i8]* @.str55, i32 0, i32 0
  %739 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %738)
  %740 = ptrtoint %nyx_string* %739 to i64
  call void @nyx_array_push({ i64, i8* }* %737, i64 %740)
  %741 = alloca { i64, i8* }*
  store { i64, i8* }* %737, { i64, i8* }** %741
  %742 = load i64, i64* %h.ptr
  %743 = load { i64, i8* }*, { i64, i8* }** %741
  %744 = call { i64, i8* }* @kv_cmd_array(i64 %742, { i64, i8* }* %743)
  ret { i64, i8* }* %744
}

define i1 @kv_token_revoke(
i64 %h.param, %nyx_string* %token.param) {
  %h.ptr = alloca i64
  store i64 %h.param, i64* %h.ptr
  %token.ptr = alloca %nyx_string*
  store %nyx_string* %token.param, %nyx_string** %token.ptr
  %745 = call { i64, i8* }* @nyx_array_new_ptr()
  %746 = getelementptr [13 x i8], [13 x i8]* @.str56, i32 0, i32 0
  %747 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %746)
  %748 = ptrtoint %nyx_string* %747 to i64
  call void @nyx_array_push({ i64, i8* }* %745, i64 %748)
  %749 = load %nyx_string*, %nyx_string** %token.ptr
  %750 = ptrtoint %nyx_string* %749 to i64
  call void @nyx_array_push({ i64, i8* }* %745, i64 %750)
  %751 = alloca { i64, i8* }*
  store { i64, i8* }* %745, { i64, i8* }** %751
  %752 = load i64, i64* %h.ptr
  %753 = load { i64, i8* }*, { i64, i8* }** %751
  %754 = call %nyx_string* @kv_cmd(i64 %752, { i64, i8* }* %753)
  %755 = getelementptr [3 x i8], [3 x i8]* @.str57, i32 0, i32 0
  %756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %755)
  %757 = call i1 @nyx_string_equals(%nyx_string* %754, %nyx_string* %756)
  ret i1 %757
}

define internal %nyx_string* @__b64_encode_with(
%nyx_string* %input.param, %nyx_string* %alphabet.param, i1 %pad.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %pad.ptr = alloca i1
  store i1 %pad.param, i1* %pad.ptr
  %758 = load %nyx_string*, %nyx_string** %input.ptr
  %759 = call i64 @nyx_string_byte_length(%nyx_string* %758)
  %760 = alloca i64
  store i64 %759, i64* %760
  %761 = load i64, i64* %760
  %762 = icmp eq i64 %761, 0
  br i1 %762, label %then154, label %else155
then154:
  %763 = getelementptr [1 x i8], [1 x i8]* @.str58, i32 0, i32 0
  %764 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %763)
  ret %nyx_string* %764
else155:
  br label %merge156
merge156:
  %765 = call i8* @nyx_sb_new(i64 1024)
  %766 = alloca i8*
  store i8* %765, i8** %766
  %767 = alloca i64
  store i64 0, i64* %767
  %768 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %769 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %768)
  %770 = alloca %nyx_string*
  store %nyx_string* %769, %nyx_string** %770
  br label %while_cond157
while_cond157:
  %771 = load i64, i64* %767
  %772 = load i64, i64* %760
  %773 = icmp slt i64 %771, %772
  br i1 %773, label %while_body158, label %while_end159
while_body158:
  %774 = load %nyx_string*, %nyx_string** %input.ptr
  %775 = load i64, i64* %767
  %776 = call i8 @nyx_string_char_at(%nyx_string* %774, i64 %775)
  %777 = zext i8 %776 to i64
  %778 = alloca i64
  store i64 %777, i64* %778
  %779 = alloca i64
  store i64 0, i64* %779
  %780 = alloca i64
  store i64 0, i64* %780
  %781 = load i64, i64* %760
  %782 = load i64, i64* %767
  %783 = sub i64 %781, %782
  %784 = alloca i64
  store i64 %783, i64* %784
  %785 = load i64, i64* %784
  %786 = icmp sge i64 %785, 2
  br i1 %786, label %then160, label %else161
then160:
  %787 = load %nyx_string*, %nyx_string** %input.ptr
  %788 = load i64, i64* %767
  %789 = add i64 %788, 1
  %790 = call i8 @nyx_string_char_at(%nyx_string* %787, i64 %789)
  %791 = zext i8 %790 to i64
  store i64 %791, i64* %779
  br label %merge162
else161:
  br label %merge162
merge162:
  %792 = load i64, i64* %784
  %793 = icmp sge i64 %792, 3
  br i1 %793, label %then163, label %else164
then163:
  %794 = load %nyx_string*, %nyx_string** %input.ptr
  %795 = load i64, i64* %767
  %796 = add i64 %795, 2
  %797 = call i8 @nyx_string_char_at(%nyx_string* %794, i64 %796)
  %798 = zext i8 %797 to i64
  store i64 %798, i64* %780
  br label %merge165
else164:
  br label %merge165
merge165:
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
  %819 = load i8*, i8** %766
  %820 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %821 = load i64, i64* %801
  %822 = load i64, i64* %801
  %823 = add i64 %822, 1
  %824 = call %nyx_string* @nyx_string_substring(%nyx_string* %820, i64 %821, i64 %823)
  call void @nyx_sb_append(i8* %819, %nyx_string* %824)
  %825 = load i8*, i8** %766
  %826 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %827 = load i64, i64* %808
  %828 = load i64, i64* %808
  %829 = add i64 %828, 1
  %830 = call %nyx_string* @nyx_string_substring(%nyx_string* %826, i64 %827, i64 %829)
  call void @nyx_sb_append(i8* %825, %nyx_string* %830)
  %831 = load i64, i64* %784
  %832 = icmp sge i64 %831, 2
  br i1 %832, label %then166, label %else167
then166:
  %833 = load i8*, i8** %766
  %834 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %835 = load i64, i64* %815
  %836 = load i64, i64* %815
  %837 = add i64 %836, 1
  %838 = call %nyx_string* @nyx_string_substring(%nyx_string* %834, i64 %835, i64 %837)
  call void @nyx_sb_append(i8* %833, %nyx_string* %838)
  br label %merge168
else167:
  %839 = load i1, i1* %pad.ptr
  br i1 %839, label %then169, label %else170
then169:
  %840 = load i8*, i8** %766
  %841 = load %nyx_string*, %nyx_string** %770
  call void @nyx_sb_append(i8* %840, %nyx_string* %841)
  br label %merge171
else170:
  br label %merge171
merge171:
  br label %merge168
merge168:
  %842 = load i64, i64* %784
  %843 = icmp sge i64 %842, 3
  br i1 %843, label %then172, label %else173
then172:
  %844 = load i8*, i8** %766
  %845 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %846 = load i64, i64* %818
  %847 = load i64, i64* %818
  %848 = add i64 %847, 1
  %849 = call %nyx_string* @nyx_string_substring(%nyx_string* %845, i64 %846, i64 %848)
  call void @nyx_sb_append(i8* %844, %nyx_string* %849)
  br label %merge174
else173:
  %850 = load i1, i1* %pad.ptr
  br i1 %850, label %then175, label %else176
then175:
  %851 = load i8*, i8** %766
  %852 = load %nyx_string*, %nyx_string** %770
  call void @nyx_sb_append(i8* %851, %nyx_string* %852)
  br label %merge177
else176:
  br label %merge177
merge177:
  br label %merge174
merge174:
  %853 = load i64, i64* %767
  %854 = add i64 %853, 3
  store i64 %854, i64* %767
  br label %while_cond157
while_end159:
  %855 = load i8*, i8** %766
  %856 = call %nyx_string* @nyx_sb_to_string(i8* %855)
  ret %nyx_string* %856
}

define internal %nyx_string* @__b64_byte_to_string(
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

define internal i64 @__b64_char_value(
i64 %c.param, %nyx_string* %alphabet.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %862 = alloca i64
  store i64 0, i64* %862
  br label %while_cond178
while_cond178:
  %863 = load i64, i64* %862
  %864 = icmp slt i64 %863, 64
  br i1 %864, label %while_body179, label %while_end180
while_body179:
  %865 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %866 = load i64, i64* %862
  %867 = call i8 @nyx_string_char_at(%nyx_string* %865, i64 %866)
  %868 = zext i8 %867 to i64
  %869 = load i64, i64* %c.ptr
  %870 = icmp eq i64 %868, %869
  br i1 %870, label %then181, label %else182
then181:
  %871 = load i64, i64* %862
  ret i64 %871
else182:
  br label %merge183
merge183:
  %872 = load i64, i64* %862
  %873 = add i64 %872, 1
  store i64 %873, i64* %862
  br label %while_cond178
while_end180:
  %874 = sub i64 0, 1
  ret i64 %874
}

define internal %nyx_string* @__b64_decode_with(
%nyx_string* %input.param, %nyx_string* %alphabet.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %alphabet.ptr = alloca %nyx_string*
  store %nyx_string* %alphabet.param, %nyx_string** %alphabet.ptr
  %875 = load %nyx_string*, %nyx_string** %input.ptr
  %876 = call i64 @nyx_string_byte_length(%nyx_string* %875)
  %877 = alloca i64
  store i64 %876, i64* %877
  %878 = load i64, i64* %877
  %879 = icmp eq i64 %878, 0
  br i1 %879, label %then184, label %else185
then184:
  %880 = getelementptr [1 x i8], [1 x i8]* @.str60, i32 0, i32 0
  %881 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %880)
  ret %nyx_string* %881
else185:
  br label %merge186
merge186:
  %882 = call i8* @nyx_sb_new(i64 1024)
  %883 = alloca i8*
  store i8* %882, i8** %883
  %884 = alloca i64
  store i64 0, i64* %884
  br label %while_cond187
while_cond187:
  %885 = load i64, i64* %884
  %886 = load i64, i64* %877
  %887 = icmp slt i64 %885, %886
  br i1 %887, label %while_body188, label %while_end189
while_body188:
  %888 = load %nyx_string*, %nyx_string** %input.ptr
  %889 = load i64, i64* %884
  %890 = call i8 @nyx_string_char_at(%nyx_string* %888, i64 %889)
  %891 = zext i8 %890 to i64
  %892 = alloca i64
  store i64 %891, i64* %892
  %893 = load i64, i64* %892
  %894 = icmp eq i64 %893, 61
  br i1 %894, label %then190, label %else191
then190:
  br label %while_end189
else191:
  br label %merge192
merge192:
  %895 = load i64, i64* %892
  %896 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %897 = call i64 @__b64_char_value(i64 %895, %nyx_string* %896)
  %898 = alloca i64
  store i64 %897, i64* %898
  %899 = load i64, i64* %898
  %900 = icmp slt i64 %899, 0
  br i1 %900, label %then193, label %else194
then193:
  br label %while_end189
else194:
  br label %merge195
merge195:
  %901 = alloca i64
  store i64 0, i64* %901
  %902 = sub i64 0, 1
  %903 = alloca i64
  store i64 %902, i64* %903
  %904 = sub i64 0, 1
  %905 = alloca i64
  store i64 %904, i64* %905
  %906 = load i64, i64* %884
  %907 = add i64 %906, 1
  %908 = load i64, i64* %877
  %909 = icmp slt i64 %907, %908
  br i1 %909, label %then196, label %else197
then196:
  %910 = load %nyx_string*, %nyx_string** %input.ptr
  %911 = load i64, i64* %884
  %912 = add i64 %911, 1
  %913 = call i8 @nyx_string_char_at(%nyx_string* %910, i64 %912)
  %914 = zext i8 %913 to i64
  %915 = alloca i64
  store i64 %914, i64* %915
  %916 = load i64, i64* %915
  %917 = icmp ne i64 %916, 61
  br i1 %917, label %then199, label %else200
then199:
  %918 = load i64, i64* %915
  %919 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %920 = call i64 @__b64_char_value(i64 %918, %nyx_string* %919)
  store i64 %920, i64* %901
  br label %merge201
else200:
  br label %merge201
merge201:
  br label %merge198
else197:
  br label %merge198
merge198:
  %921 = load i64, i64* %884
  %922 = add i64 %921, 2
  %923 = load i64, i64* %877
  %924 = icmp slt i64 %922, %923
  br i1 %924, label %then202, label %else203
then202:
  %925 = load %nyx_string*, %nyx_string** %input.ptr
  %926 = load i64, i64* %884
  %927 = add i64 %926, 2
  %928 = call i8 @nyx_string_char_at(%nyx_string* %925, i64 %927)
  %929 = zext i8 %928 to i64
  %930 = alloca i64
  store i64 %929, i64* %930
  %931 = load i64, i64* %930
  %932 = icmp ne i64 %931, 61
  br i1 %932, label %then205, label %else206
then205:
  %933 = load i64, i64* %930
  %934 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %935 = call i64 @__b64_char_value(i64 %933, %nyx_string* %934)
  store i64 %935, i64* %903
  br label %merge207
else206:
  br label %merge207
merge207:
  br label %merge204
else203:
  br label %merge204
merge204:
  %936 = load i64, i64* %884
  %937 = add i64 %936, 3
  %938 = load i64, i64* %877
  %939 = icmp slt i64 %937, %938
  br i1 %939, label %then208, label %else209
then208:
  %940 = load %nyx_string*, %nyx_string** %input.ptr
  %941 = load i64, i64* %884
  %942 = add i64 %941, 3
  %943 = call i8 @nyx_string_char_at(%nyx_string* %940, i64 %942)
  %944 = zext i8 %943 to i64
  %945 = alloca i64
  store i64 %944, i64* %945
  %946 = load i64, i64* %945
  %947 = icmp ne i64 %946, 61
  br i1 %947, label %then211, label %else212
then211:
  %948 = load i64, i64* %945
  %949 = load %nyx_string*, %nyx_string** %alphabet.ptr
  %950 = call i64 @__b64_char_value(i64 %948, %nyx_string* %949)
  store i64 %950, i64* %905
  br label %merge213
else212:
  br label %merge213
merge213:
  br label %merge210
else209:
  br label %merge210
merge210:
  %951 = load i64, i64* %898
  %952 = mul i64 %951, 4
  %953 = load i64, i64* %901
  %954 = sdiv i64 %953, 16
  %955 = add i64 %952, %954
  %956 = alloca i64
  store i64 %955, i64* %956
  %957 = load i8*, i8** %883
  %958 = load i64, i64* %956
  %959 = call %nyx_string* @__b64_byte_to_string(i64 %958)
  call void @nyx_sb_append(i8* %957, %nyx_string* %959)
  %960 = load i64, i64* %903
  %961 = icmp sge i64 %960, 0
  br i1 %961, label %then214, label %else215
then214:
  %962 = load i64, i64* %901
  %963 = srem i64 %962, 16
  %964 = mul i64 %963, 16
  %965 = load i64, i64* %903
  %966 = sdiv i64 %965, 4
  %967 = add i64 %964, %966
  %968 = alloca i64
  store i64 %967, i64* %968
  %969 = load i8*, i8** %883
  %970 = load i64, i64* %968
  %971 = call %nyx_string* @__b64_byte_to_string(i64 %970)
  call void @nyx_sb_append(i8* %969, %nyx_string* %971)
  br label %merge216
else215:
  br label %merge216
merge216:
  %972 = load i64, i64* %905
  %973 = icmp sge i64 %972, 0
  br i1 %973, label %then217, label %else218
then217:
  %974 = load i64, i64* %903
  %975 = srem i64 %974, 4
  %976 = mul i64 %975, 64
  %977 = load i64, i64* %905
  %978 = add i64 %976, %977
  %979 = alloca i64
  store i64 %978, i64* %979
  %980 = load i8*, i8** %883
  %981 = load i64, i64* %979
  %982 = call %nyx_string* @__b64_byte_to_string(i64 %981)
  call void @nyx_sb_append(i8* %980, %nyx_string* %982)
  br label %merge219
else218:
  br label %merge219
merge219:
  %983 = load i64, i64* %884
  %984 = add i64 %983, 4
  store i64 %984, i64* %884
  br label %while_cond187
while_end189:
  %985 = load i8*, i8** %883
  %986 = call %nyx_string* @nyx_sb_to_string(i8* %985)
  ret %nyx_string* %986
}

define %nyx_string* @base64_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %987 = load %nyx_string*, %nyx_string** %input.ptr
  %988 = load %nyx_string*, %nyx_string** @__b64_chars
  %989 = call %nyx_string* @__b64_encode_with(%nyx_string* %987, %nyx_string* %988, i1 1)
  ret %nyx_string* %989
}

define %nyx_string* @base64_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %990 = load %nyx_string*, %nyx_string** %input.ptr
  %991 = load %nyx_string*, %nyx_string** @__b64_chars
  %992 = call %nyx_string* @__b64_decode_with(%nyx_string* %990, %nyx_string* %991)
  ret %nyx_string* %992
}

define %nyx_string* @base64url_encode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %993 = load %nyx_string*, %nyx_string** %input.ptr
  %994 = load %nyx_string*, %nyx_string** @__b64url_chars
  %995 = call %nyx_string* @__b64_encode_with(%nyx_string* %993, %nyx_string* %994, i1 0)
  ret %nyx_string* %995
}

define %nyx_string* @base64url_decode(
%nyx_string* %input.param) {
  %input.ptr = alloca %nyx_string*
  store %nyx_string* %input.param, %nyx_string** %input.ptr
  %996 = load %nyx_string*, %nyx_string** %input.ptr
  %997 = load %nyx_string*, %nyx_string** @__b64url_chars
  %998 = call %nyx_string* @__b64_decode_with(%nyx_string* %996, %nyx_string* %997)
  ret %nyx_string* %998
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %999 = load %nyx_string*, %nyx_string** %line.ptr
  %1000 = call %nyx_string* @nyx_string_trim(%nyx_string* %999)
  %1001 = alloca %nyx_string*
  store %nyx_string* %1000, %nyx_string** %1001
  %1002 = sub i64 0, 1
  %1003 = alloca i64
  store i64 %1002, i64* %1003
  %1004 = alloca i64
  store i64 0, i64* %1004
  br label %while_cond220
while_cond220:
  %1005 = load i64, i64* %1004
  %1006 = load %nyx_string*, %nyx_string** %1001
  %1007 = call i64 @nyx_string_byte_length(%nyx_string* %1006)
  %1008 = icmp slt i64 %1005, %1007
  br i1 %1008, label %while_body221, label %while_end222
while_body221:
  %1009 = load %nyx_string*, %nyx_string** %1001
  %1010 = load i64, i64* %1004
  %1011 = call i8 @nyx_string_char_at(%nyx_string* %1009, i64 %1010)
  %1012 = zext i8 %1011 to i64
  %1013 = trunc i64 %1012 to i8
  %1014 = alloca i8
  store i8 %1013, i8* %1014
  %1015 = load i8, i8* %1014
  %1016 = getelementptr [1 x i8], [1 x i8]* @.str61, i32 0, i32 0
  %1017 = load i8, i8* %1016
  %1018 = zext i8 %1017 to i64
  %1019 = zext i8 %1015 to i64
  %1020 = icmp eq i64 %1019, %1018
  br i1 %1020, label %then223, label %else224
then223:
  %1021 = load i64, i64* %1004
  store i64 %1021, i64* %1003
  %1022 = load %nyx_string*, %nyx_string** %1001
  %1023 = call i64 @nyx_string_byte_length(%nyx_string* %1022)
  store i64 %1023, i64* %1004
  br label %merge225
else224:
  %1024 = load i64, i64* %1004
  %1025 = add i64 %1024, 1
  store i64 %1025, i64* %1004
  br label %merge225
merge225:
  br label %while_cond220
while_end222:
  %1026 = load i64, i64* %1003
  %1027 = icmp slt i64 %1026, 0
  br i1 %1027, label %then226, label %else227
then226:
  %1028 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %1029 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %1028)
  ret %nyx_string* %1029
else227:
  br label %merge228
merge228:
  %1030 = load %nyx_string*, %nyx_string** %1001
  %1031 = load i64, i64* %1003
  %1032 = add i64 %1031, 1
  %1033 = load %nyx_string*, %nyx_string** %1001
  %1034 = call i64 @nyx_string_byte_length(%nyx_string* %1033)
  %1035 = call %nyx_string* @nyx_string_substring(%nyx_string* %1030, i64 %1032, i64 %1034)
  %1036 = call %nyx_string* @nyx_string_trim(%nyx_string* %1035)
  %1037 = alloca %nyx_string*
  store %nyx_string* %1036, %nyx_string** %1037
  %1038 = alloca i1
  store i1 false, i1* %1038
  %1039 = load %nyx_string*, %nyx_string** %1037
  %1040 = getelementptr [2 x i8], [2 x i8]* @.str63, i32 0, i32 0
  %1041 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %1040)
  %1042 = call i1 @nyx_string_starts_with(%nyx_string* %1039, %nyx_string* %1041)
  br i1 %1042, label %sc_and_rhs229, label %sc_and_end230
sc_and_rhs229:
  %1043 = load %nyx_string*, %nyx_string** %1037
  %1044 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %1044)
  %1046 = call i1 @nyx_string_ends_with(%nyx_string* %1043, %nyx_string* %1045)
  store i1 %1046, i1* %1038
  br label %sc_and_end230
sc_and_end230:
  %1047 = load i1, i1* %1038
  br i1 %1047, label %then231, label %else232
then231:
  %1048 = load %nyx_string*, %nyx_string** %1037
  %1049 = load %nyx_string*, %nyx_string** %1037
  %1050 = call i64 @nyx_string_byte_length(%nyx_string* %1049)
  %1051 = sub i64 %1050, 1
  %1052 = call %nyx_string* @nyx_string_substring(%nyx_string* %1048, i64 1, i64 %1051)
  ret %nyx_string* %1052
else232:
  br label %merge233
merge233:
  %1053 = load %nyx_string*, %nyx_string** %1037
  %1054 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %1055 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %1054)
  %1056 = call i1 @nyx_string_equals(%nyx_string* %1053, %nyx_string* %1055)
  br i1 %1056, label %then234, label %else235
then234:
  %1057 = getelementptr [5 x i8], [5 x i8]* @.str66, i32 0, i32 0
  %1058 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %1057)
  ret %nyx_string* %1058
else235:
  br label %merge236
merge236:
  %1059 = load %nyx_string*, %nyx_string** %1037
  %1060 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %1061 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %1060)
  %1062 = call i1 @nyx_string_equals(%nyx_string* %1059, %nyx_string* %1061)
  br i1 %1062, label %then237, label %else238
then237:
  %1063 = getelementptr [6 x i8], [6 x i8]* @.str68, i32 0, i32 0
  %1064 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %1063)
  ret %nyx_string* %1064
else238:
  br label %merge239
merge239:
  %1065 = load %nyx_string*, %nyx_string** %1037
  ret %nyx_string* %1065
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1066 = load %nyx_string*, %nyx_string** %line.ptr
  %1067 = call %nyx_string* @nyx_string_trim(%nyx_string* %1066)
  %1068 = alloca %nyx_string*
  store %nyx_string* %1067, %nyx_string** %1068
  %1069 = sub i64 0, 1
  %1070 = alloca i64
  store i64 %1069, i64* %1070
  %1071 = alloca i64
  store i64 0, i64* %1071
  br label %while_cond240
while_cond240:
  %1072 = load i64, i64* %1071
  %1073 = load %nyx_string*, %nyx_string** %1068
  %1074 = call i64 @nyx_string_byte_length(%nyx_string* %1073)
  %1075 = icmp slt i64 %1072, %1074
  br i1 %1075, label %while_body241, label %while_end242
while_body241:
  %1076 = load %nyx_string*, %nyx_string** %1068
  %1077 = load i64, i64* %1071
  %1078 = call i8 @nyx_string_char_at(%nyx_string* %1076, i64 %1077)
  %1079 = zext i8 %1078 to i64
  %1080 = trunc i64 %1079 to i8
  %1081 = alloca i8
  store i8 %1080, i8* %1081
  %1082 = load i8, i8* %1081
  %1083 = getelementptr [1 x i8], [1 x i8]* @.str69, i32 0, i32 0
  %1084 = load i8, i8* %1083
  %1085 = zext i8 %1084 to i64
  %1086 = zext i8 %1082 to i64
  %1087 = icmp eq i64 %1086, %1085
  br i1 %1087, label %then243, label %else244
then243:
  %1088 = load i64, i64* %1071
  store i64 %1088, i64* %1070
  %1089 = load %nyx_string*, %nyx_string** %1068
  %1090 = call i64 @nyx_string_byte_length(%nyx_string* %1089)
  store i64 %1090, i64* %1071
  br label %merge245
else244:
  %1091 = load i64, i64* %1071
  %1092 = add i64 %1091, 1
  store i64 %1092, i64* %1071
  br label %merge245
merge245:
  br label %while_cond240
while_end242:
  %1093 = load i64, i64* %1070
  %1094 = icmp slt i64 %1093, 0
  br i1 %1094, label %then246, label %else247
then246:
  %1095 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %1096 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %1095)
  ret %nyx_string* %1096
else247:
  br label %merge248
merge248:
  %1097 = load %nyx_string*, %nyx_string** %1068
  %1098 = load i64, i64* %1070
  %1099 = call %nyx_string* @nyx_string_substring(%nyx_string* %1097, i64 0, i64 %1098)
  %1100 = call %nyx_string* @nyx_string_trim(%nyx_string* %1099)
  ret %nyx_string* %1100
}

define internal %ProjectConfig @parse_toml(
%nyx_string* %content.param) {
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %1101 = call { i64, i8* }* @nyx_array_new_ptr()
  %1102 = alloca { i64, i8* }*
  store { i64, i8* }* %1101, { i64, i8* }** %1102
  %1103 = call { i64, i8* }* @nyx_array_new_ptr()
  %1104 = alloca { i64, i8* }*
  store { i64, i8* }* %1103, { i64, i8* }** %1104
  %1105 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %1106 = ptrtoint %ProjectConfig* %1105 to i64
  %1107 = call i8* @GC_malloc(i64 %1106)
  %1108 = bitcast i8* %1107 to %ProjectConfig*
  %1109 = getelementptr [1 x i8], [1 x i8]* @.str71, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %1109)
  %1111 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 0
  store %nyx_string* %1110, %nyx_string** %1111
  %1112 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %1113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %1112)
  %1114 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 1
  store %nyx_string* %1113, %nyx_string** %1114
  %1115 = getelementptr [12 x i8], [12 x i8]* @.str73, i32 0, i32 0
  %1116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %1115)
  %1117 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 2
  store %nyx_string* %1116, %nyx_string** %1117
  %1118 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %1118)
  %1120 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 3
  store %nyx_string* %1119, %nyx_string** %1120
  %1121 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 4
  store i1 0, i1* %1121
  %1122 = getelementptr [1 x i8], [1 x i8]* @.str75, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %1122)
  %1124 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 5
  store %nyx_string* %1123, %nyx_string** %1124
  %1125 = load { i64, i8* }*, { i64, i8* }** %1102
  %1126 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 6
  store { i64, i8* }* %1125, { i64, i8* }** %1126
  %1127 = load { i64, i8* }*, { i64, i8* }** %1104
  %1128 = getelementptr %ProjectConfig, %ProjectConfig* %1108, i32 0, i32 7
  store { i64, i8* }* %1127, { i64, i8* }** %1128
  %1129 = load %ProjectConfig, %ProjectConfig* %1108
  %1130 = alloca %ProjectConfig
  store %ProjectConfig %1129, %ProjectConfig* %1130
  %1131 = load %nyx_string*, %nyx_string** %content.ptr
  %1132 = getelementptr [2 x i8], [2 x i8]* @.str76, i32 0, i32 0
  %1133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %1132)
  %1134 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1131, %nyx_string* %1133)
  %1135 = alloca { i64, i8* }*
  store { i64, i8* }* %1134, { i64, i8* }** %1135
  %1136 = getelementptr [1 x i8], [1 x i8]* @.str77, i32 0, i32 0
  %1137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %1136)
  %1138 = alloca %nyx_string*
  store %nyx_string* %1137, %nyx_string** %1138
  %1139 = alloca i64
  store i64 0, i64* %1139
  %1140 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %1140)
  %1142 = alloca %nyx_string*
  store %nyx_string* %1141, %nyx_string** %1142
  %1143 = getelementptr [2 x i8], [2 x i8]* @.str79, i32 0, i32 0
  %1144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %1143)
  %1145 = alloca %nyx_string*
  store %nyx_string* %1144, %nyx_string** %1145
  %1146 = getelementptr [2 x i8], [2 x i8]* @.str80, i32 0, i32 0
  %1147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %1146)
  %1148 = alloca %nyx_string*
  store %nyx_string* %1147, %nyx_string** %1148
  %1149 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %1149)
  %1151 = alloca %nyx_string*
  store %nyx_string* %1150, %nyx_string** %1151
  %1152 = getelementptr [8 x i8], [8 x i8]* @.str82, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %1152)
  %1154 = alloca %nyx_string*
  store %nyx_string* %1153, %nyx_string** %1154
  %1155 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %1155)
  %1157 = alloca %nyx_string*
  store %nyx_string* %1156, %nyx_string** %1157
  %1158 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %1159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %1158)
  %1160 = alloca %nyx_string*
  store %nyx_string* %1159, %nyx_string** %1160
  %1161 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %1161)
  %1163 = alloca %nyx_string*
  store %nyx_string* %1162, %nyx_string** %1163
  %1164 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %1164)
  %1166 = alloca %nyx_string*
  store %nyx_string* %1165, %nyx_string** %1166
  %1167 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %1168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %1167)
  %1169 = alloca %nyx_string*
  store %nyx_string* %1168, %nyx_string** %1169
  %1170 = getelementptr [5 x i8], [5 x i8]* @.str88, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %1170)
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = getelementptr [7 x i8], [7 x i8]* @.str89, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %1173)
  %1175 = alloca %nyx_string*
  store %nyx_string* %1174, %nyx_string** %1175
  %1176 = getelementptr [13 x i8], [13 x i8]* @.str90, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %1176)
  %1178 = alloca %nyx_string*
  store %nyx_string* %1177, %nyx_string** %1178
  br label %while_cond249
while_cond249:
  %1179 = load i64, i64* %1139
  %1180 = load { i64, i8* }*, { i64, i8* }** %1135
  %1181 = call i64 @nyx_array_length({ i64, i8* }* %1180)
  %1182 = icmp slt i64 %1179, %1181
  br i1 %1182, label %while_body250, label %while_end251
while_body250:
  %1183 = load { i64, i8* }*, { i64, i8* }** %1135
  %1184 = load i64, i64* %1139
  %1185 = call i64 @nyx_array_get({ i64, i8* }* %1183, i64 %1184)
  %1186 = inttoptr i64 %1185 to %nyx_string*
  %1187 = alloca %nyx_string*
  store %nyx_string* %1186, %nyx_string** %1187
  %1188 = load %nyx_string*, %nyx_string** %1187
  %1189 = call %nyx_string* @nyx_string_trim(%nyx_string* %1188)
  %1190 = alloca %nyx_string*
  store %nyx_string* %1189, %nyx_string** %1190
  %1191 = alloca i1
  store i1 true, i1* %1191
  %1192 = load %nyx_string*, %nyx_string** %1190
  %1193 = load %nyx_string*, %nyx_string** %1142
  %1194 = call i1 @nyx_string_equals(%nyx_string* %1192, %nyx_string* %1193)
  br i1 %1194, label %sc_or_end253, label %sc_or_rhs252
sc_or_rhs252:
  %1195 = load %nyx_string*, %nyx_string** %1190
  %1196 = load %nyx_string*, %nyx_string** %1145
  %1197 = call i1 @nyx_string_starts_with(%nyx_string* %1195, %nyx_string* %1196)
  store i1 %1197, i1* %1191
  br label %sc_or_end253
sc_or_end253:
  %1198 = load i1, i1* %1191
  br i1 %1198, label %then254, label %else255
then254:
  %1199 = load i64, i64* %1139
  %1200 = add i64 %1199, 1
  store i64 %1200, i64* %1139
  br label %merge256
else255:
  %1201 = alloca i1
  store i1 false, i1* %1201
  %1202 = load %nyx_string*, %nyx_string** %1190
  %1203 = load %nyx_string*, %nyx_string** %1148
  %1204 = call i1 @nyx_string_starts_with(%nyx_string* %1202, %nyx_string* %1203)
  br i1 %1204, label %sc_and_rhs257, label %sc_and_end258
sc_and_rhs257:
  %1205 = load %nyx_string*, %nyx_string** %1190
  %1206 = load %nyx_string*, %nyx_string** %1151
  %1207 = call i1 @nyx_string_ends_with(%nyx_string* %1205, %nyx_string* %1206)
  store i1 %1207, i1* %1201
  br label %sc_and_end258
sc_and_end258:
  %1208 = load i1, i1* %1201
  br i1 %1208, label %then259, label %else260
then259:
  %1209 = load %nyx_string*, %nyx_string** %1190
  %1210 = load %nyx_string*, %nyx_string** %1190
  %1211 = call i64 @nyx_string_byte_length(%nyx_string* %1210)
  %1212 = sub i64 %1211, 1
  %1213 = call %nyx_string* @nyx_string_substring(%nyx_string* %1209, i64 1, i64 %1212)
  %1214 = call %nyx_string* @nyx_string_trim(%nyx_string* %1213)
  store %nyx_string* %1214, %nyx_string** %1138
  %1215 = load i64, i64* %1139
  %1216 = add i64 %1215, 1
  store i64 %1216, i64* %1139
  br label %merge261
else260:
  %1217 = load %nyx_string*, %nyx_string** %1190
  %1218 = call %nyx_string* @parse_toml_key(%nyx_string* %1217)
  %1219 = alloca %nyx_string*
  store %nyx_string* %1218, %nyx_string** %1219
  %1220 = load %nyx_string*, %nyx_string** %1190
  %1221 = call %nyx_string* @parse_toml_value(%nyx_string* %1220)
  %1222 = alloca %nyx_string*
  store %nyx_string* %1221, %nyx_string** %1222
  %1223 = load %nyx_string*, %nyx_string** %1138
  %1224 = load %nyx_string*, %nyx_string** %1154
  %1225 = call i1 @nyx_string_equals(%nyx_string* %1223, %nyx_string* %1224)
  br i1 %1225, label %then262, label %else263
then262:
  %1226 = load %nyx_string*, %nyx_string** %1219
  %1227 = load %nyx_string*, %nyx_string** %1157
  %1228 = call i1 @nyx_string_equals(%nyx_string* %1226, %nyx_string* %1227)
  br i1 %1228, label %then265, label %else266
then265:
  %1229 = load %nyx_string*, %nyx_string** %1222
  %1230 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 0
  store %nyx_string* %1229, %nyx_string** %1230
  br label %merge267
else266:
  br label %merge267
merge267:
  %1231 = load %nyx_string*, %nyx_string** %1219
  %1232 = load %nyx_string*, %nyx_string** %1160
  %1233 = call i1 @nyx_string_equals(%nyx_string* %1231, %nyx_string* %1232)
  br i1 %1233, label %then268, label %else269
then268:
  %1234 = load %nyx_string*, %nyx_string** %1222
  %1235 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 1
  store %nyx_string* %1234, %nyx_string** %1235
  br label %merge270
else269:
  br label %merge270
merge270:
  %1236 = load %nyx_string*, %nyx_string** %1219
  %1237 = load %nyx_string*, %nyx_string** %1163
  %1238 = call i1 @nyx_string_equals(%nyx_string* %1236, %nyx_string* %1237)
  br i1 %1238, label %then271, label %else272
then271:
  %1239 = load %nyx_string*, %nyx_string** %1222
  %1240 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 2
  store %nyx_string* %1239, %nyx_string** %1240
  br label %merge273
else272:
  br label %merge273
merge273:
  %1241 = load %nyx_string*, %nyx_string** %1219
  %1242 = load %nyx_string*, %nyx_string** %1166
  %1243 = call i1 @nyx_string_equals(%nyx_string* %1241, %nyx_string* %1242)
  br i1 %1243, label %then274, label %else275
then274:
  %1244 = load %nyx_string*, %nyx_string** %1222
  %1245 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 3
  store %nyx_string* %1244, %nyx_string** %1245
  br label %merge276
else275:
  br label %merge276
merge276:
  %1246 = alloca i1
  store i1 false, i1* %1246
  %1247 = load %nyx_string*, %nyx_string** %1219
  %1248 = load %nyx_string*, %nyx_string** %1169
  %1249 = call i1 @nyx_string_equals(%nyx_string* %1247, %nyx_string* %1248)
  br i1 %1249, label %sc_and_rhs277, label %sc_and_end278
sc_and_rhs277:
  %1250 = load %nyx_string*, %nyx_string** %1222
  %1251 = load %nyx_string*, %nyx_string** %1172
  %1252 = call i1 @nyx_string_equals(%nyx_string* %1250, %nyx_string* %1251)
  store i1 %1252, i1* %1246
  br label %sc_and_end278
sc_and_end278:
  %1253 = load i1, i1* %1246
  br i1 %1253, label %then279, label %else280
then279:
  %1254 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 4
  store i1 1, i1* %1254
  br label %merge281
else280:
  br label %merge281
merge281:
  %1255 = load %nyx_string*, %nyx_string** %1219
  %1256 = load %nyx_string*, %nyx_string** %1175
  %1257 = call i1 @nyx_string_equals(%nyx_string* %1255, %nyx_string* %1256)
  br i1 %1257, label %then282, label %else283
then282:
  %1258 = load %nyx_string*, %nyx_string** %1222
  %1259 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 5
  store %nyx_string* %1258, %nyx_string** %1259
  br label %merge284
else283:
  br label %merge284
merge284:
  br label %merge264
else263:
  br label %merge264
merge264:
  %1260 = load %nyx_string*, %nyx_string** %1138
  %1261 = load %nyx_string*, %nyx_string** %1178
  %1262 = call i1 @nyx_string_equals(%nyx_string* %1260, %nyx_string* %1261)
  br i1 %1262, label %then285, label %else286
then285:
  %1263 = alloca i1
  store i1 false, i1* %1263
  %1264 = load %nyx_string*, %nyx_string** %1219
  %1265 = load %nyx_string*, %nyx_string** %1142
  %1266 = call i1 @nyx_string_equals(%nyx_string* %1264, %nyx_string* %1265)
  %1267 = xor i1 %1266, true
  br i1 %1267, label %sc_and_rhs288, label %sc_and_end289
sc_and_rhs288:
  %1268 = load %nyx_string*, %nyx_string** %1222
  %1269 = load %nyx_string*, %nyx_string** %1142
  %1270 = call i1 @nyx_string_equals(%nyx_string* %1268, %nyx_string* %1269)
  %1271 = xor i1 %1270, true
  store i1 %1271, i1* %1263
  br label %sc_and_end289
sc_and_end289:
  %1272 = load i1, i1* %1263
  br i1 %1272, label %then290, label %else291
then290:
  %1273 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 6
  %1274 = load { i64, i8* }*, { i64, i8* }** %1273
  %1275 = load %nyx_string*, %nyx_string** %1219
  %1276 = ptrtoint %nyx_string* %1275 to i64
  call void @nyx_array_push({ i64, i8* }* %1274, i64 %1276)
  %1277 = getelementptr %ProjectConfig, %ProjectConfig* %1130, i32 0, i32 7
  %1278 = load { i64, i8* }*, { i64, i8* }** %1277
  %1279 = load %nyx_string*, %nyx_string** %1222
  %1280 = ptrtoint %nyx_string* %1279 to i64
  call void @nyx_array_push({ i64, i8* }* %1278, i64 %1280)
  br label %merge292
else291:
  br label %merge292
merge292:
  br label %merge287
else286:
  br label %merge287
merge287:
  %1281 = load i64, i64* %1139
  %1282 = add i64 %1281, 1
  store i64 %1282, i64* %1139
  br label %merge261
merge261:
  br label %merge256
merge256:
  br label %while_cond249
while_end251:
  %1283 = load %ProjectConfig, %ProjectConfig* %1130
  ret %ProjectConfig %1283
}

define internal i64 @write_lockfile(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1284 = getelementptr [57 x i8], [57 x i8]* @.str91, i32 0, i32 0
  %1285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %1284)
  %1286 = getelementptr [11 x i8], [11 x i8]* @.str92, i32 0, i32 0
  %1287 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %1286)
  %1288 = call %nyx_string* @nyx_string_concat(%nyx_string* %1285, %nyx_string* %1287)
  %1289 = getelementptr [9 x i8], [9 x i8]* @.str93, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %1289)
  %1291 = call %nyx_string* @nyx_string_concat(%nyx_string* %1288, %nyx_string* %1290)
  %1292 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %1293 = load %nyx_string*, %nyx_string** %1292
  %1294 = call %nyx_string* @nyx_string_concat(%nyx_string* %1291, %nyx_string* %1293)
  %1295 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %1296 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %1295)
  %1297 = call %nyx_string* @nyx_string_concat(%nyx_string* %1294, %nyx_string* %1296)
  %1298 = getelementptr [12 x i8], [12 x i8]* @.str95, i32 0, i32 0
  %1299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1298)
  %1300 = call %nyx_string* @nyx_string_concat(%nyx_string* %1297, %nyx_string* %1299)
  %1301 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %1302 = load %nyx_string*, %nyx_string** %1301
  %1303 = call %nyx_string* @nyx_string_concat(%nyx_string* %1300, %nyx_string* %1302)
  %1304 = getelementptr [3 x i8], [3 x i8]* @.str96, i32 0, i32 0
  %1305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1304)
  %1306 = call %nyx_string* @nyx_string_concat(%nyx_string* %1303, %nyx_string* %1305)
  %1307 = getelementptr [9 x i8], [9 x i8]* @.str97, i32 0, i32 0
  %1308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1307)
  %1309 = call %nyx_string* @nyx_string_concat(%nyx_string* %1306, %nyx_string* %1308)
  %1310 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %1311 = load %nyx_string*, %nyx_string** %1310
  %1312 = call %nyx_string* @nyx_string_concat(%nyx_string* %1309, %nyx_string* %1311)
  %1313 = getelementptr [3 x i8], [3 x i8]* @.str98, i32 0, i32 0
  %1314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1313)
  %1315 = call %nyx_string* @nyx_string_concat(%nyx_string* %1312, %nyx_string* %1314)
  %1316 = alloca %nyx_string*
  store %nyx_string* %1315, %nyx_string** %1316
  %1317 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1318 = load { i64, i8* }*, { i64, i8* }** %1317
  %1319 = call i64 @nyx_array_length({ i64, i8* }* %1318)
  %1320 = icmp sgt i64 %1319, 0
  br i1 %1320, label %then293, label %else294
then293:
  %1321 = load %nyx_string*, %nyx_string** %1316
  %1322 = getelementptr [17 x i8], [17 x i8]* @.str99, i32 0, i32 0
  %1323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1322)
  %1324 = call %nyx_string* @nyx_string_concat(%nyx_string* %1321, %nyx_string* %1323)
  store %nyx_string* %1324, %nyx_string** %1316
  %1325 = alloca i64
  store i64 0, i64* %1325
  %1326 = getelementptr [5 x i8], [5 x i8]* @.str100, i32 0, i32 0
  %1327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1326)
  %1328 = alloca %nyx_string*
  store %nyx_string* %1327, %nyx_string** %1328
  %1329 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %1330 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1329)
  %1331 = alloca %nyx_string*
  store %nyx_string* %1330, %nyx_string** %1331
  br label %while_cond296
while_cond296:
  %1332 = load i64, i64* %1325
  %1333 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1334 = load { i64, i8* }*, { i64, i8* }** %1333
  %1335 = call i64 @nyx_array_length({ i64, i8* }* %1334)
  %1336 = icmp slt i64 %1332, %1335
  br i1 %1336, label %while_body297, label %while_end298
while_body297:
  %1337 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1338 = load { i64, i8* }*, { i64, i8* }** %1337
  %1339 = load i64, i64* %1325
  %1340 = call i64 @nyx_array_get({ i64, i8* }* %1338, i64 %1339)
  %1341 = inttoptr i64 %1340 to %nyx_string*
  %1342 = alloca %nyx_string*
  store %nyx_string* %1341, %nyx_string** %1342
  %1343 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1344 = load { i64, i8* }*, { i64, i8* }** %1343
  %1345 = load i64, i64* %1325
  %1346 = call i64 @nyx_array_get({ i64, i8* }* %1344, i64 %1345)
  %1347 = inttoptr i64 %1346 to %nyx_string*
  %1348 = alloca %nyx_string*
  store %nyx_string* %1347, %nyx_string** %1348
  %1349 = load %nyx_string*, %nyx_string** %1316
  %1350 = load %nyx_string*, %nyx_string** %1342
  %1351 = call %nyx_string* @nyx_string_concat(%nyx_string* %1349, %nyx_string* %1350)
  %1352 = load %nyx_string*, %nyx_string** %1328
  %1353 = call %nyx_string* @nyx_string_concat(%nyx_string* %1351, %nyx_string* %1352)
  %1354 = load %nyx_string*, %nyx_string** %1348
  %1355 = call %nyx_string* @nyx_string_concat(%nyx_string* %1353, %nyx_string* %1354)
  %1356 = load %nyx_string*, %nyx_string** %1331
  %1357 = call %nyx_string* @nyx_string_concat(%nyx_string* %1355, %nyx_string* %1356)
  store %nyx_string* %1357, %nyx_string** %1316
  %1358 = load i64, i64* %1325
  %1359 = add i64 %1358, 1
  store i64 %1359, i64* %1325
  br label %while_cond296
while_end298:
  br label %merge295
else294:
  br label %merge295
merge295:
  %1360 = getelementptr [9 x i8], [9 x i8]* @.str102, i32 0, i32 0
  %1361 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1360)
  %1362 = load %nyx_string*, %nyx_string** %1316
  %1363 = call i8* @nyx_string_to_cstr(%nyx_string* %1361)
  %1364 = call i8* @nyx_string_to_cstr(%nyx_string* %1362)
  %1365 = call i1 @nyx_write_file(i8* %1363, i8* %1364)
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
  %1366 = getelementptr [17 x i8], [17 x i8]* @.str103, i32 0, i32 0
  %1367 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1366)
  %1368 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1369 = call %nyx_string* @nyx_string_concat(%nyx_string* %1367, %nyx_string* %1368)
  %1370 = call i8* @nyx_string_to_cstr(%nyx_string* %1369)
  call void @nyx_print_string(i8* %1370)
  %1371 = load %nyx_string*, %nyx_string** %pkg_url.ptr
  %1372 = alloca %nyx_string*
  store %nyx_string* %1371, %nyx_string** %1372
  %1373 = load %nyx_string*, %nyx_string** %1372
  %1374 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %1375 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1374)
  %1376 = call i1 @nyx_string_equals(%nyx_string* %1373, %nyx_string* %1375)
  br i1 %1376, label %then299, label %else300
then299:
  %1377 = getelementptr [32 x i8], [32 x i8]* @.str105, i32 0, i32 0
  %1378 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1377)
  %1379 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1380 = call %nyx_string* @nyx_string_concat(%nyx_string* %1378, %nyx_string* %1379)
  store %nyx_string* %1380, %nyx_string** %1372
  br label %merge301
else300:
  br label %merge301
merge301:
  %1381 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %1382 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1381)
  %1383 = call i8* @nyx_string_to_cstr(%nyx_string* %1382)
  %1384 = call i1 @nyx_file_exists(i8* %1383)
  br i1 %1384, label %then302, label %else303
then302:
  %1385 = getelementptr [9 x i8], [9 x i8]* @.str107, i32 0, i32 0
  %1386 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1385)
  %1387 = call i8* @nyx_string_to_cstr(%nyx_string* %1386)
  %1388 = call %nyx_string* @nyx_read_file(i8* %1387)
  %1389 = alloca %nyx_string*
  store %nyx_string* %1388, %nyx_string** %1389
  %1390 = load %nyx_string*, %nyx_string** %1389
  %1391 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1392 = getelementptr [3 x i8], [3 x i8]* @.str108, i32 0, i32 0
  %1393 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1392)
  %1394 = call %nyx_string* @nyx_string_concat(%nyx_string* %1391, %nyx_string* %1393)
  %1395 = call i1 @nyx_string_contains(%nyx_string* %1390, %nyx_string* %1394)
  br i1 %1395, label %then305, label %else306
then305:
  %1396 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %1397 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1396)
  %1398 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1399 = call %nyx_string* @nyx_string_concat(%nyx_string* %1397, %nyx_string* %1398)
  %1400 = getelementptr [27 x i8], [27 x i8]* @.str110, i32 0, i32 0
  %1401 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1400)
  %1402 = call %nyx_string* @nyx_string_concat(%nyx_string* %1399, %nyx_string* %1401)
  %1403 = call i8* @nyx_string_to_cstr(%nyx_string* %1402)
  call void @nyx_print_string(i8* %1403)
  ret i1 1
else306:
  br label %merge307
merge307:
  br label %merge304
else303:
  br label %merge304
merge304:
  %1404 = getelementptr [10 x i8], [10 x i8]* @.str111, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1404)
  %1406 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1407 = call %nyx_string* @nyx_string_concat(%nyx_string* %1405, %nyx_string* %1406)
  %1408 = alloca %nyx_string*
  store %nyx_string* %1407, %nyx_string** %1408
  %1409 = load %nyx_string*, %nyx_string** %1408
  %1410 = call i8* @nyx_string_to_cstr(%nyx_string* %1409)
  %1411 = call i1 @nyx_file_exists(i8* %1410)
  br i1 %1411, label %then308, label %else309
then308:
  %1412 = getelementptr [19 x i8], [19 x i8]* @.str112, i32 0, i32 0
  %1413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1412)
  %1414 = load %nyx_string*, %nyx_string** %1408
  %1415 = call %nyx_string* @nyx_string_concat(%nyx_string* %1413, %nyx_string* %1414)
  %1416 = call i8* @nyx_string_to_cstr(%nyx_string* %1415)
  call void @nyx_print_string(i8* %1416)
  br label %merge310
else309:
  %1417 = getelementptr [13 x i8], [13 x i8]* @.str113, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %1417)
  %1419 = load %nyx_string*, %nyx_string** %1372
  %1420 = call %nyx_string* @nyx_string_concat(%nyx_string* %1418, %nyx_string* %1419)
  %1421 = call i8* @nyx_string_to_cstr(%nyx_string* %1420)
  call void @nyx_print_string(i8* %1421)
  %1422 = getelementptr [43 x i8], [43 x i8]* @.str114, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %1422)
  %1424 = load %nyx_string*, %nyx_string** %1372
  %1425 = call %nyx_string* @nyx_string_concat(%nyx_string* %1423, %nyx_string* %1424)
  %1426 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %1427 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %1426)
  %1428 = call %nyx_string* @nyx_string_concat(%nyx_string* %1425, %nyx_string* %1427)
  %1429 = load %nyx_string*, %nyx_string** %1408
  %1430 = call %nyx_string* @nyx_string_concat(%nyx_string* %1428, %nyx_string* %1429)
  %1431 = getelementptr [13 x i8], [13 x i8]* @.str116, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %1431)
  %1433 = call %nyx_string* @nyx_string_concat(%nyx_string* %1430, %nyx_string* %1432)
  %1434 = alloca %nyx_string*
  store %nyx_string* %1433, %nyx_string** %1434
  %1435 = load %nyx_string*, %nyx_string** %1434
  %1436 = call i8* @nyx_string_to_cstr(%nyx_string* %1435)
  %1437 = call i64 @nyx_exec(i8* %1436)
  %1438 = alloca i64
  store i64 %1437, i64* %1438
  %1439 = load i64, i64* %1438
  %1440 = icmp ne i64 %1439, 0
  br i1 %1440, label %then311, label %else312
then311:
  %1441 = getelementptr [26 x i8], [26 x i8]* @.str117, i32 0, i32 0
  %1442 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %1441)
  %1443 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1444 = call %nyx_string* @nyx_string_concat(%nyx_string* %1442, %nyx_string* %1443)
  %1445 = getelementptr [7 x i8], [7 x i8]* @.str118, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %1445)
  %1447 = call %nyx_string* @nyx_string_concat(%nyx_string* %1444, %nyx_string* %1446)
  %1448 = load %nyx_string*, %nyx_string** %1372
  %1449 = call %nyx_string* @nyx_string_concat(%nyx_string* %1447, %nyx_string* %1448)
  %1450 = call i8* @nyx_string_to_cstr(%nyx_string* %1449)
  call void @nyx_print_string(i8* %1450)
  ret i1 0
else312:
  br label %merge313
merge313:
  br label %merge310
merge310:
  %1451 = getelementptr [9 x i8], [9 x i8]* @.str119, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %1451)
  %1453 = call i8* @nyx_string_to_cstr(%nyx_string* %1452)
  %1454 = call i1 @nyx_file_exists(i8* %1453)
  br i1 %1454, label %then314, label %else315
then314:
  %1455 = getelementptr [9 x i8], [9 x i8]* @.str120, i32 0, i32 0
  %1456 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %1455)
  %1457 = call i8* @nyx_string_to_cstr(%nyx_string* %1456)
  %1458 = call %nyx_string* @nyx_read_file(i8* %1457)
  %1459 = alloca %nyx_string*
  store %nyx_string* %1458, %nyx_string** %1459
  %1460 = load %nyx_string*, %nyx_string** %1459
  %1461 = alloca %nyx_string*
  store %nyx_string* %1460, %nyx_string** %1461
  %1462 = load %nyx_string*, %nyx_string** %1459
  %1463 = getelementptr [15 x i8], [15 x i8]* @.str121, i32 0, i32 0
  %1464 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %1463)
  %1465 = call i1 @nyx_string_contains(%nyx_string* %1462, %nyx_string* %1464)
  %1466 = xor i1 %1465, true
  br i1 %1466, label %then317, label %else318
then317:
  %1467 = load %nyx_string*, %nyx_string** %1459
  %1468 = getelementptr [17 x i8], [17 x i8]* @.str122, i32 0, i32 0
  %1469 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %1468)
  %1470 = call %nyx_string* @nyx_string_concat(%nyx_string* %1467, %nyx_string* %1469)
  %1471 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1472 = call %nyx_string* @nyx_string_concat(%nyx_string* %1470, %nyx_string* %1471)
  %1473 = getelementptr [8 x i8], [8 x i8]* @.str123, i32 0, i32 0
  %1474 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %1473)
  %1475 = call %nyx_string* @nyx_string_concat(%nyx_string* %1472, %nyx_string* %1474)
  store %nyx_string* %1475, %nyx_string** %1461
  br label %merge319
else318:
  %1476 = load %nyx_string*, %nyx_string** %1459
  %1477 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1478 = call %nyx_string* @nyx_string_concat(%nyx_string* %1476, %nyx_string* %1477)
  %1479 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %1480 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %1479)
  %1481 = call %nyx_string* @nyx_string_concat(%nyx_string* %1478, %nyx_string* %1480)
  store %nyx_string* %1481, %nyx_string** %1461
  br label %merge319
merge319:
  %1482 = getelementptr [9 x i8], [9 x i8]* @.str125, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %1482)
  %1484 = load %nyx_string*, %nyx_string** %1461
  %1485 = call i8* @nyx_string_to_cstr(%nyx_string* %1483)
  %1486 = call i8* @nyx_string_to_cstr(%nyx_string* %1484)
  %1487 = call i1 @nyx_write_file(i8* %1485, i8* %1486)
  %1488 = getelementptr [19 x i8], [19 x i8]* @.str126, i32 0, i32 0
  %1489 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %1488)
  %1490 = call i8* @nyx_string_to_cstr(%nyx_string* %1489)
  call void @nyx_print_string(i8* %1490)
  br label %merge316
else315:
  br label %merge316
merge316:
  %1491 = getelementptr [10 x i8], [10 x i8]* @.str127, i32 0, i32 0
  %1492 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %1491)
  %1493 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1494 = call %nyx_string* @nyx_string_concat(%nyx_string* %1492, %nyx_string* %1493)
  %1495 = getelementptr [9 x i8], [9 x i8]* @.str128, i32 0, i32 0
  %1496 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %1495)
  %1497 = call %nyx_string* @nyx_string_concat(%nyx_string* %1494, %nyx_string* %1496)
  %1498 = call i8* @nyx_string_to_cstr(%nyx_string* %1497)
  call void @nyx_print_string(i8* %1498)
  ret i1 1
}

define internal i64 @scaffold_project_files(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %1499 = getelementptr [9 x i8], [9 x i8]* @.str129, i32 0, i32 0
  %1500 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %1499)
  %1501 = call i8* @nyx_string_to_cstr(%nyx_string* %1500)
  %1502 = call %nyx_string* @nyx_getenv(i8* %1501)
  %1503 = alloca %nyx_string*
  store %nyx_string* %1502, %nyx_string** %1503
  %1504 = load %nyx_string*, %nyx_string** %1503
  %1505 = getelementptr [11 x i8], [11 x i8]* @.str130, i32 0, i32 0
  %1506 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %1505)
  %1507 = call %nyx_string* @nyx_string_concat(%nyx_string* %1504, %nyx_string* %1506)
  %1508 = alloca %nyx_string*
  store %nyx_string* %1507, %nyx_string** %1508
  %1509 = load %nyx_string*, %nyx_string** %1508
  %1510 = getelementptr [11 x i8], [11 x i8]* @.str131, i32 0, i32 0
  %1511 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %1510)
  %1512 = call %nyx_string* @nyx_string_concat(%nyx_string* %1509, %nyx_string* %1511)
  %1513 = call i8* @nyx_string_to_cstr(%nyx_string* %1512)
  %1514 = call i1 @nyx_file_exists(i8* %1513)
  br i1 %1514, label %then320, label %else321
then320:
  %1515 = load %nyx_string*, %nyx_string** %1508
  %1516 = getelementptr [11 x i8], [11 x i8]* @.str132, i32 0, i32 0
  %1517 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1516)
  %1518 = call %nyx_string* @nyx_string_concat(%nyx_string* %1515, %nyx_string* %1517)
  %1519 = call i8* @nyx_string_to_cstr(%nyx_string* %1518)
  %1520 = call %nyx_string* @nyx_read_file(i8* %1519)
  %1521 = alloca %nyx_string*
  store %nyx_string* %1520, %nyx_string** %1521
  %1522 = load %nyx_string*, %nyx_string** %dir.ptr
  %1523 = getelementptr [11 x i8], [11 x i8]* @.str133, i32 0, i32 0
  %1524 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1523)
  %1525 = call %nyx_string* @nyx_string_concat(%nyx_string* %1522, %nyx_string* %1524)
  %1526 = load %nyx_string*, %nyx_string** %1521
  %1527 = call i8* @nyx_string_to_cstr(%nyx_string* %1525)
  %1528 = call i8* @nyx_string_to_cstr(%nyx_string* %1526)
  %1529 = call i1 @nyx_write_file(i8* %1527, i8* %1528)
  br label %merge322
else321:
  br label %merge322
merge322:
  %1530 = load %nyx_string*, %nyx_string** %dir.ptr
  %1531 = getelementptr [17 x i8], [17 x i8]* @.str134, i32 0, i32 0
  %1532 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1531)
  %1533 = call %nyx_string* @nyx_string_concat(%nyx_string* %1530, %nyx_string* %1532)
  %1534 = call i1 @run_capabilities(%nyx_string* %1533)
  %1535 = alloca i1
  store i1 %1534, i1* %1535
  %1536 = load %nyx_string*, %nyx_string** %1508
  %1537 = getelementptr [11 x i8], [11 x i8]* @.str135, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1537)
  %1539 = call %nyx_string* @nyx_string_concat(%nyx_string* %1536, %nyx_string* %1538)
  %1540 = call i8* @nyx_string_to_cstr(%nyx_string* %1539)
  %1541 = call i1 @nyx_file_exists(i8* %1540)
  br i1 %1541, label %then323, label %else324
then323:
  %1542 = load %nyx_string*, %nyx_string** %1508
  %1543 = getelementptr [11 x i8], [11 x i8]* @.str136, i32 0, i32 0
  %1544 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1543)
  %1545 = call %nyx_string* @nyx_string_concat(%nyx_string* %1542, %nyx_string* %1544)
  %1546 = call i8* @nyx_string_to_cstr(%nyx_string* %1545)
  %1547 = call %nyx_string* @nyx_read_file(i8* %1546)
  %1548 = alloca %nyx_string*
  store %nyx_string* %1547, %nyx_string** %1548
  %1549 = load %nyx_string*, %nyx_string** %dir.ptr
  %1550 = getelementptr [11 x i8], [11 x i8]* @.str137, i32 0, i32 0
  %1551 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1550)
  %1552 = call %nyx_string* @nyx_string_concat(%nyx_string* %1549, %nyx_string* %1551)
  %1553 = load %nyx_string*, %nyx_string** %1548
  %1554 = call i8* @nyx_string_to_cstr(%nyx_string* %1552)
  %1555 = call i8* @nyx_string_to_cstr(%nyx_string* %1553)
  %1556 = call i1 @nyx_write_file(i8* %1554, i8* %1555)
  br label %merge325
else324:
  br label %merge325
merge325:
  %1557 = load %nyx_string*, %nyx_string** %1508
  %1558 = getelementptr [14 x i8], [14 x i8]* @.str138, i32 0, i32 0
  %1559 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1558)
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1557, %nyx_string* %1559)
  %1561 = call i8* @nyx_string_to_cstr(%nyx_string* %1560)
  %1562 = call i1 @nyx_file_exists(i8* %1561)
  br i1 %1562, label %then326, label %else327
then326:
  %1563 = load %nyx_string*, %nyx_string** %1508
  %1564 = getelementptr [14 x i8], [14 x i8]* @.str139, i32 0, i32 0
  %1565 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1564)
  %1566 = call %nyx_string* @nyx_string_concat(%nyx_string* %1563, %nyx_string* %1565)
  %1567 = call i8* @nyx_string_to_cstr(%nyx_string* %1566)
  %1568 = call %nyx_string* @nyx_read_file(i8* %1567)
  %1569 = alloca %nyx_string*
  store %nyx_string* %1568, %nyx_string** %1569
  %1570 = load %nyx_string*, %nyx_string** %dir.ptr
  %1571 = getelementptr [14 x i8], [14 x i8]* @.str140, i32 0, i32 0
  %1572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1571)
  %1573 = call %nyx_string* @nyx_string_concat(%nyx_string* %1570, %nyx_string* %1572)
  %1574 = load %nyx_string*, %nyx_string** %1569
  %1575 = call i8* @nyx_string_to_cstr(%nyx_string* %1573)
  %1576 = call i8* @nyx_string_to_cstr(%nyx_string* %1574)
  %1577 = call i1 @nyx_write_file(i8* %1575, i8* %1576)
  br label %merge328
else327:
  br label %merge328
merge328:
  %1578 = load %nyx_string*, %nyx_string** %1508
  %1579 = getelementptr [15 x i8], [15 x i8]* @.str141, i32 0, i32 0
  %1580 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1579)
  %1581 = call %nyx_string* @nyx_string_concat(%nyx_string* %1578, %nyx_string* %1580)
  %1582 = call i8* @nyx_string_to_cstr(%nyx_string* %1581)
  %1583 = call i1 @nyx_file_exists(i8* %1582)
  br i1 %1583, label %then329, label %else330
then329:
  %1584 = load %nyx_string*, %nyx_string** %1508
  %1585 = getelementptr [15 x i8], [15 x i8]* @.str142, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1585)
  %1587 = call %nyx_string* @nyx_string_concat(%nyx_string* %1584, %nyx_string* %1586)
  %1588 = call i8* @nyx_string_to_cstr(%nyx_string* %1587)
  %1589 = call %nyx_string* @nyx_read_file(i8* %1588)
  %1590 = alloca %nyx_string*
  store %nyx_string* %1589, %nyx_string** %1590
  %1591 = load %nyx_string*, %nyx_string** %dir.ptr
  %1592 = getelementptr [15 x i8], [15 x i8]* @.str143, i32 0, i32 0
  %1593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1592)
  %1594 = call %nyx_string* @nyx_string_concat(%nyx_string* %1591, %nyx_string* %1593)
  %1595 = load %nyx_string*, %nyx_string** %1590
  %1596 = call i8* @nyx_string_to_cstr(%nyx_string* %1594)
  %1597 = call i8* @nyx_string_to_cstr(%nyx_string* %1595)
  %1598 = call i1 @nyx_write_file(i8* %1596, i8* %1597)
  br label %merge331
else330:
  br label %merge331
merge331:
  %1599 = load %nyx_string*, %nyx_string** %1508
  %1600 = getelementptr [8 x i8], [8 x i8]* @.str144, i32 0, i32 0
  %1601 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1600)
  %1602 = call %nyx_string* @nyx_string_concat(%nyx_string* %1599, %nyx_string* %1601)
  %1603 = call i8* @nyx_string_to_cstr(%nyx_string* %1602)
  %1604 = call i1 @nyx_file_exists(i8* %1603)
  br i1 %1604, label %then332, label %else333
then332:
  %1605 = load %nyx_string*, %nyx_string** %1508
  %1606 = getelementptr [8 x i8], [8 x i8]* @.str145, i32 0, i32 0
  %1607 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1606)
  %1608 = call %nyx_string* @nyx_string_concat(%nyx_string* %1605, %nyx_string* %1607)
  %1609 = call i8* @nyx_string_to_cstr(%nyx_string* %1608)
  %1610 = call %nyx_string* @nyx_read_file(i8* %1609)
  %1611 = alloca %nyx_string*
  store %nyx_string* %1610, %nyx_string** %1611
  %1612 = load %nyx_string*, %nyx_string** %dir.ptr
  %1613 = getelementptr [8 x i8], [8 x i8]* @.str146, i32 0, i32 0
  %1614 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1613)
  %1615 = call %nyx_string* @nyx_string_concat(%nyx_string* %1612, %nyx_string* %1614)
  %1616 = load %nyx_string*, %nyx_string** %1611
  %1617 = call i8* @nyx_string_to_cstr(%nyx_string* %1615)
  %1618 = call i8* @nyx_string_to_cstr(%nyx_string* %1616)
  %1619 = call i1 @nyx_write_file(i8* %1617, i8* %1618)
  br label %merge334
else333:
  br label %merge334
merge334:
  %1620 = load %nyx_string*, %nyx_string** %1508
  %1621 = getelementptr [33 x i8], [33 x i8]* @.str147, i32 0, i32 0
  %1622 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1621)
  %1623 = call %nyx_string* @nyx_string_concat(%nyx_string* %1620, %nyx_string* %1622)
  %1624 = call i8* @nyx_string_to_cstr(%nyx_string* %1623)
  %1625 = call i1 @nyx_file_exists(i8* %1624)
  br i1 %1625, label %then335, label %else336
then335:
  %1626 = getelementptr [10 x i8], [10 x i8]* @.str148, i32 0, i32 0
  %1627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1626)
  %1628 = load %nyx_string*, %nyx_string** %dir.ptr
  %1629 = call %nyx_string* @nyx_string_concat(%nyx_string* %1627, %nyx_string* %1628)
  %1630 = getelementptr [9 x i8], [9 x i8]* @.str149, i32 0, i32 0
  %1631 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1630)
  %1632 = call %nyx_string* @nyx_string_concat(%nyx_string* %1629, %nyx_string* %1631)
  %1633 = call i8* @nyx_string_to_cstr(%nyx_string* %1632)
  %1634 = call i64 @nyx_exec(i8* %1633)
  %1635 = load %nyx_string*, %nyx_string** %1508
  %1636 = getelementptr [33 x i8], [33 x i8]* @.str150, i32 0, i32 0
  %1637 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1636)
  %1638 = call %nyx_string* @nyx_string_concat(%nyx_string* %1635, %nyx_string* %1637)
  %1639 = call i8* @nyx_string_to_cstr(%nyx_string* %1638)
  %1640 = call %nyx_string* @nyx_read_file(i8* %1639)
  %1641 = alloca %nyx_string*
  store %nyx_string* %1640, %nyx_string** %1641
  %1642 = load %nyx_string*, %nyx_string** %dir.ptr
  %1643 = getelementptr [33 x i8], [33 x i8]* @.str151, i32 0, i32 0
  %1644 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1643)
  %1645 = call %nyx_string* @nyx_string_concat(%nyx_string* %1642, %nyx_string* %1644)
  %1646 = load %nyx_string*, %nyx_string** %1641
  %1647 = call i8* @nyx_string_to_cstr(%nyx_string* %1645)
  %1648 = call i8* @nyx_string_to_cstr(%nyx_string* %1646)
  %1649 = call i1 @nyx_write_file(i8* %1647, i8* %1648)
  br label %merge337
else336:
  br label %merge337
merge337:
  %1650 = getelementptr [10 x i8], [10 x i8]* @.str152, i32 0, i32 0
  %1651 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1650)
  %1652 = load %nyx_string*, %nyx_string** %1508
  %1653 = call %nyx_string* @nyx_string_concat(%nyx_string* %1651, %nyx_string* %1652)
  %1654 = getelementptr [36 x i8], [36 x i8]* @.str153, i32 0, i32 0
  %1655 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1654)
  %1656 = call %nyx_string* @nyx_string_concat(%nyx_string* %1653, %nyx_string* %1655)
  %1657 = load %nyx_string*, %nyx_string** %dir.ptr
  %1658 = call %nyx_string* @nyx_string_concat(%nyx_string* %1656, %nyx_string* %1657)
  %1659 = getelementptr [21 x i8], [21 x i8]* @.str154, i32 0, i32 0
  %1660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1659)
  %1661 = call %nyx_string* @nyx_string_concat(%nyx_string* %1658, %nyx_string* %1660)
  %1662 = load %nyx_string*, %nyx_string** %1508
  %1663 = call %nyx_string* @nyx_string_concat(%nyx_string* %1661, %nyx_string* %1662)
  %1664 = getelementptr [19 x i8], [19 x i8]* @.str155, i32 0, i32 0
  %1665 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1664)
  %1666 = call %nyx_string* @nyx_string_concat(%nyx_string* %1663, %nyx_string* %1665)
  %1667 = load %nyx_string*, %nyx_string** %dir.ptr
  %1668 = call %nyx_string* @nyx_string_concat(%nyx_string* %1666, %nyx_string* %1667)
  %1669 = getelementptr [15 x i8], [15 x i8]* @.str156, i32 0, i32 0
  %1670 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1669)
  %1671 = call %nyx_string* @nyx_string_concat(%nyx_string* %1668, %nyx_string* %1670)
  %1672 = call i8* @nyx_string_to_cstr(%nyx_string* %1671)
  %1673 = call i64 @nyx_exec(i8* %1672)
  %1674 = load %nyx_string*, %nyx_string** %1508
  %1675 = getelementptr [25 x i8], [25 x i8]* @.str157, i32 0, i32 0
  %1676 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1675)
  %1677 = call %nyx_string* @nyx_string_concat(%nyx_string* %1674, %nyx_string* %1676)
  %1678 = call i8* @nyx_string_to_cstr(%nyx_string* %1677)
  %1679 = call i1 @nyx_file_exists(i8* %1678)
  br i1 %1679, label %then338, label %else339
then338:
  %1680 = getelementptr [10 x i8], [10 x i8]* @.str158, i32 0, i32 0
  %1681 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1680)
  %1682 = load %nyx_string*, %nyx_string** %dir.ptr
  %1683 = call %nyx_string* @nyx_string_concat(%nyx_string* %1681, %nyx_string* %1682)
  %1684 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1685 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1684)
  %1686 = call %nyx_string* @nyx_string_concat(%nyx_string* %1683, %nyx_string* %1685)
  %1687 = call i8* @nyx_string_to_cstr(%nyx_string* %1686)
  %1688 = call i64 @nyx_exec(i8* %1687)
  %1689 = load %nyx_string*, %nyx_string** %1508
  %1690 = getelementptr [25 x i8], [25 x i8]* @.str160, i32 0, i32 0
  %1691 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1690)
  %1692 = call %nyx_string* @nyx_string_concat(%nyx_string* %1689, %nyx_string* %1691)
  %1693 = call i8* @nyx_string_to_cstr(%nyx_string* %1692)
  %1694 = call %nyx_string* @nyx_read_file(i8* %1693)
  %1695 = alloca %nyx_string*
  store %nyx_string* %1694, %nyx_string** %1695
  %1696 = load %nyx_string*, %nyx_string** %dir.ptr
  %1697 = getelementptr [25 x i8], [25 x i8]* @.str161, i32 0, i32 0
  %1698 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1697)
  %1699 = call %nyx_string* @nyx_string_concat(%nyx_string* %1696, %nyx_string* %1698)
  %1700 = load %nyx_string*, %nyx_string** %1695
  %1701 = call i8* @nyx_string_to_cstr(%nyx_string* %1699)
  %1702 = call i8* @nyx_string_to_cstr(%nyx_string* %1700)
  %1703 = call i1 @nyx_write_file(i8* %1701, i8* %1702)
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
  %1704 = load %nyx_string*, %nyx_string** %name_arg.ptr
  %1705 = alloca %nyx_string*
  store %nyx_string* %1704, %nyx_string** %1705
  %1706 = load %nyx_string*, %nyx_string** %1705
  %1707 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %1708 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1707)
  %1709 = call i1 @nyx_string_equals(%nyx_string* %1706, %nyx_string* %1708)
  %1710 = xor i1 %1709, true
  br i1 %1710, label %then341, label %else342
then341:
  %1711 = load %nyx_string*, %nyx_string** %1705
  %1712 = call i8* @nyx_string_to_cstr(%nyx_string* %1711)
  %1713 = call i1 @nyx_file_exists(i8* %1712)
  br i1 %1713, label %then344, label %else345
then344:
  %1714 = getelementptr [19 x i8], [19 x i8]* @.str163, i32 0, i32 0
  %1715 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1714)
  %1716 = load %nyx_string*, %nyx_string** %1705
  %1717 = call %nyx_string* @nyx_string_concat(%nyx_string* %1715, %nyx_string* %1716)
  %1718 = getelementptr [17 x i8], [17 x i8]* @.str164, i32 0, i32 0
  %1719 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1718)
  %1720 = call %nyx_string* @nyx_string_concat(%nyx_string* %1717, %nyx_string* %1719)
  %1721 = call i8* @nyx_string_to_cstr(%nyx_string* %1720)
  call void @nyx_print_string(i8* %1721)
  ret i1 0
else345:
  br label %merge346
merge346:
  %1722 = getelementptr [10 x i8], [10 x i8]* @.str165, i32 0, i32 0
  %1723 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1722)
  %1724 = load %nyx_string*, %nyx_string** %1705
  %1725 = call %nyx_string* @nyx_string_concat(%nyx_string* %1723, %nyx_string* %1724)
  %1726 = getelementptr [5 x i8], [5 x i8]* @.str166, i32 0, i32 0
  %1727 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1726)
  %1728 = call %nyx_string* @nyx_string_concat(%nyx_string* %1725, %nyx_string* %1727)
  %1729 = call i8* @nyx_string_to_cstr(%nyx_string* %1728)
  %1730 = call i64 @nyx_exec(i8* %1729)
  %1731 = getelementptr [19 x i8], [19 x i8]* @.str167, i32 0, i32 0
  %1732 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1731)
  %1733 = load %nyx_string*, %nyx_string** %1705
  %1734 = call %nyx_string* @nyx_string_concat(%nyx_string* %1732, %nyx_string* %1733)
  %1735 = getelementptr [58 x i8], [58 x i8]* @.str168, i32 0, i32 0
  %1736 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1735)
  %1737 = call %nyx_string* @nyx_string_concat(%nyx_string* %1734, %nyx_string* %1736)
  %1738 = alloca %nyx_string*
  store %nyx_string* %1737, %nyx_string** %1738
  %1739 = load %nyx_string*, %nyx_string** %1705
  %1740 = getelementptr [10 x i8], [10 x i8]* @.str169, i32 0, i32 0
  %1741 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1740)
  %1742 = call %nyx_string* @nyx_string_concat(%nyx_string* %1739, %nyx_string* %1741)
  %1743 = load %nyx_string*, %nyx_string** %1738
  %1744 = call i8* @nyx_string_to_cstr(%nyx_string* %1742)
  %1745 = call i8* @nyx_string_to_cstr(%nyx_string* %1743)
  %1746 = call i1 @nyx_write_file(i8* %1744, i8* %1745)
  %1747 = load %nyx_string*, %nyx_string** %1705
  %1748 = getelementptr [13 x i8], [13 x i8]* @.str170, i32 0, i32 0
  %1749 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1748)
  %1750 = call %nyx_string* @nyx_string_concat(%nyx_string* %1747, %nyx_string* %1749)
  %1751 = getelementptr [35 x i8], [35 x i8]* @.str171, i32 0, i32 0
  %1752 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1751)
  %1753 = load %nyx_string*, %nyx_string** %1705
  %1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %1752, %nyx_string* %1753)
  %1755 = getelementptr [7 x i8], [7 x i8]* @.str172, i32 0, i32 0
  %1756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1755)
  %1757 = call %nyx_string* @nyx_string_concat(%nyx_string* %1754, %nyx_string* %1756)
  %1758 = call i8* @nyx_string_to_cstr(%nyx_string* %1750)
  %1759 = call i8* @nyx_string_to_cstr(%nyx_string* %1757)
  %1760 = call i1 @nyx_write_file(i8* %1758, i8* %1759)
  %1761 = load %nyx_string*, %nyx_string** %1705
  %1762 = call i64 @scaffold_project_files(%nyx_string* %1761)
  %1763 = getelementptr [22 x i8], [22 x i8]* @.str173, i32 0, i32 0
  %1764 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1763)
  %1765 = load %nyx_string*, %nyx_string** %1705
  %1766 = call %nyx_string* @nyx_string_concat(%nyx_string* %1764, %nyx_string* %1765)
  %1767 = call i8* @nyx_string_to_cstr(%nyx_string* %1766)
  call void @nyx_print_string(i8* %1767)
  %1768 = getelementptr [12 x i8], [12 x i8]* @.str174, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1768)
  %1770 = load %nyx_string*, %nyx_string** %1705
  %1771 = call %nyx_string* @nyx_string_concat(%nyx_string* %1769, %nyx_string* %1770)
  %1772 = getelementptr [2 x i8], [2 x i8]* @.str175, i32 0, i32 0
  %1773 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1772)
  %1774 = call %nyx_string* @nyx_string_concat(%nyx_string* %1771, %nyx_string* %1773)
  %1775 = call i8* @nyx_string_to_cstr(%nyx_string* %1774)
  call void @nyx_print_string(i8* %1775)
  %1776 = getelementptr [15 x i8], [15 x i8]* @.str176, i32 0, i32 0
  %1777 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1776)
  %1778 = load %nyx_string*, %nyx_string** %1705
  %1779 = call %nyx_string* @nyx_string_concat(%nyx_string* %1777, %nyx_string* %1778)
  %1780 = getelementptr [12 x i8], [12 x i8]* @.str177, i32 0, i32 0
  %1781 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1780)
  %1782 = call %nyx_string* @nyx_string_concat(%nyx_string* %1779, %nyx_string* %1781)
  %1783 = call i8* @nyx_string_to_cstr(%nyx_string* %1782)
  call void @nyx_print_string(i8* %1783)
  ret i1 1
else342:
  br label %merge343
merge343:
  %1784 = getelementptr [9 x i8], [9 x i8]* @.str178, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1784)
  %1786 = call i8* @nyx_string_to_cstr(%nyx_string* %1785)
  %1787 = call i1 @nyx_file_exists(i8* %1786)
  br i1 %1787, label %then347, label %else348
then347:
  %1788 = getelementptr [31 x i8], [31 x i8]* @.str179, i32 0, i32 0
  %1789 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1788)
  %1790 = call i8* @nyx_string_to_cstr(%nyx_string* %1789)
  call void @nyx_print_string(i8* %1790)
  ret i1 0
else348:
  br label %merge349
merge349:
  %1791 = getelementptr [4 x i8], [4 x i8]* @.str180, i32 0, i32 0
  %1792 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %1791)
  %1793 = call i8* @nyx_string_to_cstr(%nyx_string* %1792)
  %1794 = call %nyx_string* @nyx_getenv(i8* %1793)
  %1795 = alloca %nyx_string*
  store %nyx_string* %1794, %nyx_string** %1795
  %1796 = getelementptr [6 x i8], [6 x i8]* @.str181, i32 0, i32 0
  %1797 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %1796)
  store %nyx_string* %1797, %nyx_string** %1705
  %1798 = sub i64 0, 1
  %1799 = alloca i64
  store i64 %1798, i64* %1799
  %1800 = alloca i64
  store i64 0, i64* %1800
  br label %while_cond350
while_cond350:
  %1801 = load i64, i64* %1800
  %1802 = load %nyx_string*, %nyx_string** %1795
  %1803 = call i64 @nyx_string_byte_length(%nyx_string* %1802)
  %1804 = icmp slt i64 %1801, %1803
  br i1 %1804, label %while_body351, label %while_end352
while_body351:
  %1805 = load %nyx_string*, %nyx_string** %1795
  %1806 = load i64, i64* %1800
  %1807 = call i8 @nyx_string_char_at(%nyx_string* %1805, i64 %1806)
  %1808 = zext i8 %1807 to i64
  %1809 = icmp eq i64 %1808, 47
  br i1 %1809, label %then353, label %else354
then353:
  %1810 = load i64, i64* %1800
  store i64 %1810, i64* %1799
  br label %merge355
else354:
  br label %merge355
merge355:
  %1811 = load i64, i64* %1800
  %1812 = add i64 %1811, 1
  store i64 %1812, i64* %1800
  br label %while_cond350
while_end352:
  %1813 = load i64, i64* %1799
  %1814 = icmp sge i64 %1813, 0
  br i1 %1814, label %then356, label %else357
then356:
  %1815 = load %nyx_string*, %nyx_string** %1795
  %1816 = load i64, i64* %1799
  %1817 = add i64 %1816, 1
  %1818 = load %nyx_string*, %nyx_string** %1795
  %1819 = call i64 @nyx_string_byte_length(%nyx_string* %1818)
  %1820 = call %nyx_string* @nyx_string_substring(%nyx_string* %1815, i64 %1817, i64 %1819)
  store %nyx_string* %1820, %nyx_string** %1705
  br label %merge358
else357:
  br label %merge358
merge358:
  %1821 = getelementptr [19 x i8], [19 x i8]* @.str182, i32 0, i32 0
  %1822 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %1821)
  %1823 = load %nyx_string*, %nyx_string** %1705
  %1824 = call %nyx_string* @nyx_string_concat(%nyx_string* %1822, %nyx_string* %1823)
  %1825 = getelementptr [58 x i8], [58 x i8]* @.str183, i32 0, i32 0
  %1826 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %1825)
  %1827 = call %nyx_string* @nyx_string_concat(%nyx_string* %1824, %nyx_string* %1826)
  %1828 = alloca %nyx_string*
  store %nyx_string* %1827, %nyx_string** %1828
  %1829 = getelementptr [9 x i8], [9 x i8]* @.str184, i32 0, i32 0
  %1830 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %1829)
  %1831 = load %nyx_string*, %nyx_string** %1828
  %1832 = call i8* @nyx_string_to_cstr(%nyx_string* %1830)
  %1833 = call i8* @nyx_string_to_cstr(%nyx_string* %1831)
  %1834 = call i1 @nyx_write_file(i8* %1832, i8* %1833)
  %1835 = getelementptr [13 x i8], [13 x i8]* @.str185, i32 0, i32 0
  %1836 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %1835)
  %1837 = call i8* @nyx_string_to_cstr(%nyx_string* %1836)
  %1838 = call i64 @nyx_exec(i8* %1837)
  %1839 = getelementptr [12 x i8], [12 x i8]* @.str186, i32 0, i32 0
  %1840 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %1839)
  %1841 = call i8* @nyx_string_to_cstr(%nyx_string* %1840)
  %1842 = call i1 @nyx_file_exists(i8* %1841)
  %1843 = icmp eq i1 %1842, 0
  br i1 %1843, label %then359, label %else360
then359:
  %1844 = getelementptr [12 x i8], [12 x i8]* @.str187, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %1844)
  %1846 = getelementptr [35 x i8], [35 x i8]* @.str188, i32 0, i32 0
  %1847 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %1846)
  %1848 = load %nyx_string*, %nyx_string** %1705
  %1849 = call %nyx_string* @nyx_string_concat(%nyx_string* %1847, %nyx_string* %1848)
  %1850 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %1850)
  %1852 = call %nyx_string* @nyx_string_concat(%nyx_string* %1849, %nyx_string* %1851)
  %1853 = call i8* @nyx_string_to_cstr(%nyx_string* %1845)
  %1854 = call i8* @nyx_string_to_cstr(%nyx_string* %1852)
  %1855 = call i1 @nyx_write_file(i8* %1853, i8* %1854)
  br label %merge361
else360:
  br label %merge361
merge361:
  %1856 = getelementptr [2 x i8], [2 x i8]* @.str190, i32 0, i32 0
  %1857 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %1856)
  %1858 = call i64 @scaffold_project_files(%nyx_string* %1857)
  %1859 = getelementptr [22 x i8], [22 x i8]* @.str191, i32 0, i32 0
  %1860 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %1859)
  %1861 = load %nyx_string*, %nyx_string** %1705
  %1862 = call %nyx_string* @nyx_string_concat(%nyx_string* %1860, %nyx_string* %1861)
  %1863 = call i8* @nyx_string_to_cstr(%nyx_string* %1862)
  call void @nyx_print_string(i8* %1863)
  %1864 = getelementptr [33 x i8], [33 x i8]* @.str192, i32 0, i32 0
  %1865 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %1864)
  %1866 = call i8* @nyx_string_to_cstr(%nyx_string* %1865)
  call void @nyx_print_string(i8* %1866)
  %1867 = getelementptr [21 x i8], [21 x i8]* @.str193, i32 0, i32 0
  %1868 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %1867)
  %1869 = call i8* @nyx_string_to_cstr(%nyx_string* %1868)
  call void @nyx_print_string(i8* %1869)
  %1870 = getelementptr [19 x i8], [19 x i8]* @.str194, i32 0, i32 0
  %1871 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %1870)
  %1872 = call i8* @nyx_string_to_cstr(%nyx_string* %1871)
  call void @nyx_print_string(i8* %1872)
  ret i1 1
}

define internal i1 @resolve_deps(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %1873 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1874 = load { i64, i8* }*, { i64, i8* }** %1873
  %1875 = call i64 @nyx_array_length({ i64, i8* }* %1874)
  %1876 = icmp eq i64 %1875, 0
  br i1 %1876, label %then362, label %else363
then362:
  ret i1 1
else363:
  br label %merge364
merge364:
  %1877 = alloca i64
  store i64 0, i64* %1877
  %1878 = getelementptr [10 x i8], [10 x i8]* @.str195, i32 0, i32 0
  %1879 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %1878)
  %1880 = alloca %nyx_string*
  store %nyx_string* %1879, %nyx_string** %1880
  %1881 = getelementptr [14 x i8], [14 x i8]* @.str196, i32 0, i32 0
  %1882 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %1881)
  %1883 = alloca %nyx_string*
  store %nyx_string* %1882, %nyx_string** %1883
  %1884 = getelementptr [5 x i8], [5 x i8]* @.str197, i32 0, i32 0
  %1885 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %1884)
  %1886 = alloca %nyx_string*
  store %nyx_string* %1885, %nyx_string** %1886
  %1887 = getelementptr [4 x i8], [4 x i8]* @.str198, i32 0, i32 0
  %1888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %1887)
  %1889 = alloca %nyx_string*
  store %nyx_string* %1888, %nyx_string** %1889
  %1890 = getelementptr [32 x i8], [32 x i8]* @.str199, i32 0, i32 0
  %1891 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %1890)
  %1892 = alloca %nyx_string*
  store %nyx_string* %1891, %nyx_string** %1892
  %1893 = getelementptr [43 x i8], [43 x i8]* @.str200, i32 0, i32 0
  %1894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %1893)
  %1895 = alloca %nyx_string*
  store %nyx_string* %1894, %nyx_string** %1895
  %1896 = getelementptr [2 x i8], [2 x i8]* @.str201, i32 0, i32 0
  %1897 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %1896)
  %1898 = alloca %nyx_string*
  store %nyx_string* %1897, %nyx_string** %1898
  %1899 = getelementptr [13 x i8], [13 x i8]* @.str202, i32 0, i32 0
  %1900 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %1899)
  %1901 = alloca %nyx_string*
  store %nyx_string* %1900, %nyx_string** %1901
  %1902 = getelementptr [26 x i8], [26 x i8]* @.str203, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %1902)
  %1904 = alloca %nyx_string*
  store %nyx_string* %1903, %nyx_string** %1904
  %1905 = getelementptr [7 x i8], [7 x i8]* @.str204, i32 0, i32 0
  %1906 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %1905)
  %1907 = alloca %nyx_string*
  store %nyx_string* %1906, %nyx_string** %1907
  %1908 = getelementptr [12 x i8], [12 x i8]* @.str205, i32 0, i32 0
  %1909 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %1908)
  %1910 = alloca %nyx_string*
  store %nyx_string* %1909, %nyx_string** %1910
  br label %while_cond365
while_cond365:
  %1911 = load i64, i64* %1877
  %1912 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1913 = load { i64, i8* }*, { i64, i8* }** %1912
  %1914 = call i64 @nyx_array_length({ i64, i8* }* %1913)
  %1915 = icmp slt i64 %1911, %1914
  br i1 %1915, label %while_body366, label %while_end367
while_body366:
  %1916 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 6
  %1917 = load { i64, i8* }*, { i64, i8* }** %1916
  %1918 = load i64, i64* %1877
  %1919 = call i64 @nyx_array_get({ i64, i8* }* %1917, i64 %1918)
  %1920 = inttoptr i64 %1919 to %nyx_string*
  %1921 = alloca %nyx_string*
  store %nyx_string* %1920, %nyx_string** %1921
  %1922 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 7
  %1923 = load { i64, i8* }*, { i64, i8* }** %1922
  %1924 = load i64, i64* %1877
  %1925 = call i64 @nyx_array_get({ i64, i8* }* %1923, i64 %1924)
  %1926 = inttoptr i64 %1925 to %nyx_string*
  %1927 = alloca %nyx_string*
  store %nyx_string* %1926, %nyx_string** %1927
  %1928 = load %nyx_string*, %nyx_string** %1880
  %1929 = load %nyx_string*, %nyx_string** %1921
  %1930 = call %nyx_string* @nyx_string_concat(%nyx_string* %1928, %nyx_string* %1929)
  %1931 = alloca %nyx_string*
  store %nyx_string* %1930, %nyx_string** %1931
  %1932 = load %nyx_string*, %nyx_string** %1931
  %1933 = call i8* @nyx_string_to_cstr(%nyx_string* %1932)
  %1934 = call i1 @nyx_file_exists(i8* %1933)
  %1935 = icmp eq i1 %1934, 0
  br i1 %1935, label %then368, label %else369
then368:
  %1936 = load %nyx_string*, %nyx_string** %1883
  %1937 = load %nyx_string*, %nyx_string** %1921
  %1938 = call %nyx_string* @nyx_string_concat(%nyx_string* %1936, %nyx_string* %1937)
  %1939 = call i8* @nyx_string_to_cstr(%nyx_string* %1938)
  call void @nyx_print_string(i8* %1939)
  %1940 = load %nyx_string*, %nyx_string** %1927
  %1941 = alloca %nyx_string*
  store %nyx_string* %1940, %nyx_string** %1941
  %1942 = alloca i1
  store i1 false, i1* %1942
  %1943 = load %nyx_string*, %nyx_string** %1941
  %1944 = load %nyx_string*, %nyx_string** %1886
  %1945 = call i1 @nyx_string_starts_with(%nyx_string* %1943, %nyx_string* %1944)
  %1946 = icmp eq i1 %1945, 0
  br i1 %1946, label %sc_and_rhs371, label %sc_and_end372
sc_and_rhs371:
  %1947 = load %nyx_string*, %nyx_string** %1941
  %1948 = load %nyx_string*, %nyx_string** %1889
  %1949 = call i1 @nyx_string_starts_with(%nyx_string* %1947, %nyx_string* %1948)
  %1950 = icmp eq i1 %1949, 0
  store i1 %1950, i1* %1942
  br label %sc_and_end372
sc_and_end372:
  %1951 = load i1, i1* %1942
  br i1 %1951, label %then373, label %else374
then373:
  %1952 = load %nyx_string*, %nyx_string** %1892
  %1953 = load %nyx_string*, %nyx_string** %1921
  %1954 = call %nyx_string* @nyx_string_concat(%nyx_string* %1952, %nyx_string* %1953)
  store %nyx_string* %1954, %nyx_string** %1941
  br label %merge375
else374:
  br label %merge375
merge375:
  %1955 = load %nyx_string*, %nyx_string** %1895
  %1956 = load %nyx_string*, %nyx_string** %1941
  %1957 = call %nyx_string* @nyx_string_concat(%nyx_string* %1955, %nyx_string* %1956)
  %1958 = load %nyx_string*, %nyx_string** %1898
  %1959 = call %nyx_string* @nyx_string_concat(%nyx_string* %1957, %nyx_string* %1958)
  %1960 = load %nyx_string*, %nyx_string** %1931
  %1961 = call %nyx_string* @nyx_string_concat(%nyx_string* %1959, %nyx_string* %1960)
  %1962 = load %nyx_string*, %nyx_string** %1901
  %1963 = call %nyx_string* @nyx_string_concat(%nyx_string* %1961, %nyx_string* %1962)
  %1964 = alloca %nyx_string*
  store %nyx_string* %1963, %nyx_string** %1964
  %1965 = load %nyx_string*, %nyx_string** %1964
  %1966 = call i8* @nyx_string_to_cstr(%nyx_string* %1965)
  %1967 = call i64 @nyx_exec(i8* %1966)
  %1968 = alloca i64
  store i64 %1967, i64* %1968
  %1969 = load i64, i64* %1968
  %1970 = icmp ne i64 %1969, 0
  br i1 %1970, label %then376, label %else377
then376:
  %1971 = load %nyx_string*, %nyx_string** %1904
  %1972 = load %nyx_string*, %nyx_string** %1921
  %1973 = call %nyx_string* @nyx_string_concat(%nyx_string* %1971, %nyx_string* %1972)
  %1974 = load %nyx_string*, %nyx_string** %1907
  %1975 = call %nyx_string* @nyx_string_concat(%nyx_string* %1973, %nyx_string* %1974)
  %1976 = load %nyx_string*, %nyx_string** %1941
  %1977 = call %nyx_string* @nyx_string_concat(%nyx_string* %1975, %nyx_string* %1976)
  %1978 = call i8* @nyx_string_to_cstr(%nyx_string* %1977)
  call void @nyx_print_string(i8* %1978)
  ret i1 0
else377:
  br label %merge378
merge378:
  %1979 = load %nyx_string*, %nyx_string** %1910
  %1980 = load %nyx_string*, %nyx_string** %1921
  %1981 = call %nyx_string* @nyx_string_concat(%nyx_string* %1979, %nyx_string* %1980)
  %1982 = call i8* @nyx_string_to_cstr(%nyx_string* %1981)
  call void @nyx_print_string(i8* %1982)
  br label %merge370
else369:
  br label %merge370
merge370:
  %1983 = load i64, i64* %1877
  %1984 = add i64 %1983, 1
  store i64 %1984, i64* %1877
  br label %while_cond365
while_end367:
  ret i1 1
}

define internal i1 @run_build(
%ProjectConfig %config.param, i1 %release.param, %nyx_string* %target_flag.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %release.ptr = alloca i1
  store i1 %release.param, i1* %release.ptr
  %target_flag.ptr = alloca %nyx_string*
  store %nyx_string* %target_flag.param, %nyx_string** %target_flag.ptr
  %1985 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 5
  %1986 = load %nyx_string*, %nyx_string** %1985
  %1987 = alloca %nyx_string*
  store %nyx_string* %1986, %nyx_string** %1987
  %1988 = load %nyx_string*, %nyx_string** %target_flag.ptr
  %1989 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %1990 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %1989)
  %1991 = call i1 @nyx_string_equals(%nyx_string* %1988, %nyx_string* %1990)
  %1992 = xor i1 %1991, true
  br i1 %1992, label %then379, label %else380
then379:
  %1993 = load %nyx_string*, %nyx_string** %target_flag.ptr
  store %nyx_string* %1993, %nyx_string** %1987
  br label %merge381
else380:
  br label %merge381
merge381:
  %1994 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %1995 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %1994)
  %1996 = alloca %nyx_string*
  store %nyx_string* %1995, %nyx_string** %1996
  %1997 = load %nyx_string*, %nyx_string** %1987
  %1998 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %1999 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %1998)
  %2000 = call i1 @nyx_string_equals(%nyx_string* %1997, %nyx_string* %1999)
  %2001 = xor i1 %2000, true
  br i1 %2001, label %then382, label %else383
then382:
  %2002 = getelementptr [3 x i8], [3 x i8]* @.str209, i32 0, i32 0
  %2003 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %2002)
  %2004 = load %nyx_string*, %nyx_string** %1987
  %2005 = call %nyx_string* @nyx_string_concat(%nyx_string* %2003, %nyx_string* %2004)
  %2006 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %2006)
  %2008 = call %nyx_string* @nyx_string_concat(%nyx_string* %2005, %nyx_string* %2007)
  store %nyx_string* %2008, %nyx_string** %1996
  br label %merge384
else383:
  br label %merge384
merge384:
  %2009 = getelementptr [13 x i8], [13 x i8]* @.str211, i32 0, i32 0
  %2010 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %2009)
  %2011 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %2012 = load %nyx_string*, %nyx_string** %2011
  %2013 = call %nyx_string* @nyx_string_concat(%nyx_string* %2010, %nyx_string* %2012)
  %2014 = getelementptr [3 x i8], [3 x i8]* @.str212, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %2014)
  %2016 = call %nyx_string* @nyx_string_concat(%nyx_string* %2013, %nyx_string* %2015)
  %2017 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %2018 = load %nyx_string*, %nyx_string** %2017
  %2019 = call %nyx_string* @nyx_string_concat(%nyx_string* %2016, %nyx_string* %2018)
  %2020 = load %nyx_string*, %nyx_string** %1996
  %2021 = call %nyx_string* @nyx_string_concat(%nyx_string* %2019, %nyx_string* %2020)
  %2022 = call i8* @nyx_string_to_cstr(%nyx_string* %2021)
  call void @nyx_print_string(i8* %2022)
  %2023 = load %ProjectConfig, %ProjectConfig* %config.ptr
  %2024 = call i1 @resolve_deps(%ProjectConfig %2023)
  %2025 = alloca i1
  store i1 %2024, i1* %2025
  %2026 = load i1, i1* %2025
  %2027 = icmp eq i1 %2026, 0
  br i1 %2027, label %then385, label %else386
then385:
  ret i1 0
else386:
  br label %merge387
merge387:
  %2028 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2029 = load %nyx_string*, %nyx_string** %2028
  %2030 = call i8* @nyx_string_to_cstr(%nyx_string* %2029)
  %2031 = call i1 @nyx_file_exists(i8* %2030)
  %2032 = xor i1 %2031, true
  br i1 %2032, label %then388, label %else389
then388:
  %2033 = getelementptr [29 x i8], [29 x i8]* @.str213, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %2033)
  %2035 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2036 = load %nyx_string*, %nyx_string** %2035
  %2037 = call %nyx_string* @nyx_string_concat(%nyx_string* %2034, %nyx_string* %2036)
  %2038 = call i8* @nyx_string_to_cstr(%nyx_string* %2037)
  call void @nyx_print_string(i8* %2038)
  ret i1 0
else389:
  br label %merge390
merge390:
  %2039 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %2040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %2039)
  %2041 = alloca %nyx_string*
  store %nyx_string* %2040, %nyx_string** %2041
  %2042 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %2043 = load i1, i1* %2042
  br i1 %2043, label %then391, label %else392
then391:
  %2044 = getelementptr [13 x i8], [13 x i8]* @.str215, i32 0, i32 0
  %2045 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %2044)
  store %nyx_string* %2045, %nyx_string** %2041
  br label %merge393
else392:
  br label %merge393
merge393:
  %2046 = getelementptr [14 x i8], [14 x i8]* @.str216, i32 0, i32 0
  %2047 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %2046)
  %2048 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2049 = load %nyx_string*, %nyx_string** %2048
  %2050 = call %nyx_string* @nyx_string_concat(%nyx_string* %2047, %nyx_string* %2049)
  %2051 = call i8* @nyx_string_to_cstr(%nyx_string* %2050)
  call void @nyx_print_string(i8* %2051)
  %2052 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %2053 = load %nyx_string*, %nyx_string** %2052
  %2054 = alloca %nyx_string*
  store %nyx_string* %2053, %nyx_string** %2054
  %2055 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %2056 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %2055)
  %2057 = alloca %nyx_string*
  store %nyx_string* %2056, %nyx_string** %2057
  %2058 = load i1, i1* %release.ptr
  br i1 %2058, label %then394, label %else395
then394:
  %2059 = getelementptr [4 x i8], [4 x i8]* @.str218, i32 0, i32 0
  %2060 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %2059)
  store %nyx_string* %2060, %nyx_string** %2057
  br label %merge396
else395:
  br label %merge396
merge396:
  %2061 = getelementptr [9 x i8], [9 x i8]* @.str219, i32 0, i32 0
  %2062 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %2061)
  %2063 = call i8* @nyx_string_to_cstr(%nyx_string* %2062)
  %2064 = call %nyx_string* @nyx_getenv(i8* %2063)
  %2065 = alloca %nyx_string*
  store %nyx_string* %2064, %nyx_string** %2065
  %2066 = load %nyx_string*, %nyx_string** %2065
  %2067 = getelementptr [1 x i8], [1 x i8]* @.str220, i32 0, i32 0
  %2068 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %2067)
  %2069 = call i1 @nyx_string_equals(%nyx_string* %2066, %nyx_string* %2068)
  br i1 %2069, label %then397, label %else398
then397:
  %2070 = getelementptr [5 x i8], [5 x i8]* @.str221, i32 0, i32 0
  %2071 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %2070)
  %2072 = call i8* @nyx_string_to_cstr(%nyx_string* %2071)
  %2073 = call %nyx_string* @nyx_getenv(i8* %2072)
  %2074 = alloca %nyx_string*
  store %nyx_string* %2073, %nyx_string** %2074
  %2075 = load %nyx_string*, %nyx_string** %2074
  %2076 = getelementptr [6 x i8], [6 x i8]* @.str222, i32 0, i32 0
  %2077 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %2076)
  %2078 = call %nyx_string* @nyx_string_concat(%nyx_string* %2075, %nyx_string* %2077)
  %2079 = alloca %nyx_string*
  store %nyx_string* %2078, %nyx_string** %2079
  %2080 = alloca i1
  store i1 false, i1* %2080
  %2081 = load %nyx_string*, %nyx_string** %2074
  %2082 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %2083 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %2082)
  %2084 = call i1 @nyx_string_equals(%nyx_string* %2081, %nyx_string* %2083)
  %2085 = xor i1 %2084, true
  br i1 %2085, label %sc_and_rhs400, label %sc_and_end401
sc_and_rhs400:
  %2086 = load %nyx_string*, %nyx_string** %2079
  %2087 = getelementptr [19 x i8], [19 x i8]* @.str224, i32 0, i32 0
  %2088 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %2087)
  %2089 = call %nyx_string* @nyx_string_concat(%nyx_string* %2086, %nyx_string* %2088)
  %2090 = call i8* @nyx_string_to_cstr(%nyx_string* %2089)
  %2091 = call i1 @nyx_file_exists(i8* %2090)
  store i1 %2091, i1* %2080
  br label %sc_and_end401
sc_and_end401:
  %2092 = load i1, i1* %2080
  br i1 %2092, label %then402, label %else403
then402:
  %2093 = load %nyx_string*, %nyx_string** %2079
  store %nyx_string* %2093, %nyx_string** %2065
  br label %merge404
else403:
  br label %merge404
merge404:
  br label %merge399
else398:
  br label %merge399
merge399:
  %2094 = load %nyx_string*, %nyx_string** %2065
  %2095 = getelementptr [1 x i8], [1 x i8]* @.str225, i32 0, i32 0
  %2096 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %2095)
  %2097 = call i1 @nyx_string_equals(%nyx_string* %2094, %nyx_string* %2096)
  br i1 %2097, label %then405, label %else406
then405:
  %2098 = getelementptr [14 x i8], [14 x i8]* @.str226, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %2098)
  %2100 = call i8* @nyx_string_to_cstr(%nyx_string* %2099)
  %2101 = call i1 @nyx_file_exists(i8* %2100)
  br i1 %2101, label %then408, label %else409
then408:
  %2102 = getelementptr [2 x i8], [2 x i8]* @.str227, i32 0, i32 0
  %2103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %2102)
  store %nyx_string* %2103, %nyx_string** %2065
  br label %merge410
else409:
  br label %merge410
merge410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %2104 = load %nyx_string*, %nyx_string** %2065
  %2105 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %2105)
  %2107 = call i1 @nyx_string_equals(%nyx_string* %2104, %nyx_string* %2106)
  br i1 %2107, label %then411, label %else412
then411:
  %2108 = getelementptr [56 x i8], [56 x i8]* @.str229, i32 0, i32 0
  %2109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %2108)
  %2110 = call i8* @nyx_string_to_cstr(%nyx_string* %2109)
  call void @nyx_print_string(i8* %2110)
  ret i1 0
else412:
  br label %merge413
merge413:
  %2111 = load %nyx_string*, %nyx_string** %2065
  %2112 = getelementptr [15 x i8], [15 x i8]* @.str230, i32 0, i32 0
  %2113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %2112)
  %2114 = call %nyx_string* @nyx_string_concat(%nyx_string* %2111, %nyx_string* %2113)
  %2115 = alloca %nyx_string*
  store %nyx_string* %2114, %nyx_string** %2115
  %2116 = load %nyx_string*, %nyx_string** %2115
  %2117 = call i8* @nyx_string_to_cstr(%nyx_string* %2116)
  %2118 = call i1 @nyx_file_exists(i8* %2117)
  %2119 = xor i1 %2118, true
  br i1 %2119, label %then414, label %else415
then414:
  %2120 = load %nyx_string*, %nyx_string** %2065
  %2121 = getelementptr [9 x i8], [9 x i8]* @.str231, i32 0, i32 0
  %2122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %2121)
  %2123 = call %nyx_string* @nyx_string_concat(%nyx_string* %2120, %nyx_string* %2122)
  store %nyx_string* %2123, %nyx_string** %2115
  br label %merge416
else415:
  br label %merge416
merge416:
  %2124 = load %nyx_string*, %nyx_string** %2065
  %2125 = getelementptr [9 x i8], [9 x i8]* @.str232, i32 0, i32 0
  %2126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %2125)
  %2127 = call %nyx_string* @nyx_string_concat(%nyx_string* %2124, %nyx_string* %2126)
  %2128 = alloca %nyx_string*
  store %nyx_string* %2127, %nyx_string** %2128
  %2129 = getelementptr [20 x i8], [20 x i8]* @.str233, i32 0, i32 0
  %2130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %2129)
  %2131 = getelementptr [19 x i8], [19 x i8]* @.str234, i32 0, i32 0
  %2132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %2131)
  %2133 = call %nyx_string* @nyx_string_concat(%nyx_string* %2130, %nyx_string* %2132)
  %2134 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %2135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %2134)
  %2136 = call %nyx_string* @nyx_string_concat(%nyx_string* %2133, %nyx_string* %2135)
  %2137 = load %nyx_string*, %nyx_string** %2128
  %2138 = call %nyx_string* @nyx_string_concat(%nyx_string* %2136, %nyx_string* %2137)
  %2139 = getelementptr [3 x i8], [3 x i8]* @.str236, i32 0, i32 0
  %2140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %2139)
  %2141 = call %nyx_string* @nyx_string_concat(%nyx_string* %2138, %nyx_string* %2140)
  %2142 = getelementptr [43 x i8], [43 x i8]* @.str237, i32 0, i32 0
  %2143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %2142)
  %2144 = call %nyx_string* @nyx_string_concat(%nyx_string* %2141, %nyx_string* %2143)
  %2145 = getelementptr [37 x i8], [37 x i8]* @.str238, i32 0, i32 0
  %2146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %2145)
  %2147 = call %nyx_string* @nyx_string_concat(%nyx_string* %2144, %nyx_string* %2146)
  %2148 = getelementptr [17 x i8], [17 x i8]* @.str239, i32 0, i32 0
  %2149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %2148)
  %2150 = call %nyx_string* @nyx_string_concat(%nyx_string* %2147, %nyx_string* %2149)
  %2151 = getelementptr [38 x i8], [38 x i8]* @.str240, i32 0, i32 0
  %2152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %2151)
  %2153 = call %nyx_string* @nyx_string_concat(%nyx_string* %2150, %nyx_string* %2152)
  %2154 = getelementptr [17 x i8], [17 x i8]* @.str241, i32 0, i32 0
  %2155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %2154)
  %2156 = call %nyx_string* @nyx_string_concat(%nyx_string* %2153, %nyx_string* %2155)
  %2157 = getelementptr [15 x i8], [15 x i8]* @.str242, i32 0, i32 0
  %2158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %2157)
  %2159 = call %nyx_string* @nyx_string_concat(%nyx_string* %2156, %nyx_string* %2158)
  %2160 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2161 = load %nyx_string*, %nyx_string** %2160
  %2162 = call %nyx_string* @nyx_string_concat(%nyx_string* %2159, %nyx_string* %2161)
  %2163 = getelementptr [12 x i8], [12 x i8]* @.str243, i32 0, i32 0
  %2164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %2163)
  %2165 = call %nyx_string* @nyx_string_concat(%nyx_string* %2162, %nyx_string* %2164)
  %2166 = getelementptr [5 x i8], [5 x i8]* @.str244, i32 0, i32 0
  %2167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %2166)
  %2168 = call %nyx_string* @nyx_string_concat(%nyx_string* %2165, %nyx_string* %2167)
  %2169 = load %nyx_string*, %nyx_string** %2065
  %2170 = call %nyx_string* @nyx_string_concat(%nyx_string* %2168, %nyx_string* %2169)
  %2171 = getelementptr [3 x i8], [3 x i8]* @.str245, i32 0, i32 0
  %2172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %2171)
  %2173 = call %nyx_string* @nyx_string_concat(%nyx_string* %2170, %nyx_string* %2172)
  %2174 = load %nyx_string*, %nyx_string** %2041
  %2175 = call %nyx_string* @nyx_string_concat(%nyx_string* %2173, %nyx_string* %2174)
  %2176 = getelementptr [47 x i8], [47 x i8]* @.str246, i32 0, i32 0
  %2177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %2176)
  %2178 = call %nyx_string* @nyx_string_concat(%nyx_string* %2175, %nyx_string* %2177)
  %2179 = load %nyx_string*, %nyx_string** %2115
  %2180 = call %nyx_string* @nyx_string_concat(%nyx_string* %2178, %nyx_string* %2179)
  %2181 = getelementptr [17 x i8], [17 x i8]* @.str247, i32 0, i32 0
  %2182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %2181)
  %2183 = call %nyx_string* @nyx_string_concat(%nyx_string* %2180, %nyx_string* %2182)
  %2184 = getelementptr [71 x i8], [71 x i8]* @.str248, i32 0, i32 0
  %2185 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %2184)
  %2186 = call %nyx_string* @nyx_string_concat(%nyx_string* %2183, %nyx_string* %2185)
  %2187 = getelementptr [7 x i8], [7 x i8]* @.str249, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %2187)
  %2189 = call %nyx_string* @nyx_string_concat(%nyx_string* %2186, %nyx_string* %2188)
  %2190 = load %nyx_string*, %nyx_string** %2057
  %2191 = call %nyx_string* @nyx_string_concat(%nyx_string* %2189, %nyx_string* %2190)
  %2192 = getelementptr [12 x i8], [12 x i8]* @.str250, i32 0, i32 0
  %2193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %2192)
  %2194 = call %nyx_string* @nyx_string_concat(%nyx_string* %2191, %nyx_string* %2193)
  %2195 = getelementptr [50 x i8], [50 x i8]* @.str251, i32 0, i32 0
  %2196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %2195)
  %2197 = call %nyx_string* @nyx_string_concat(%nyx_string* %2194, %nyx_string* %2196)
  %2198 = getelementptr [42 x i8], [42 x i8]* @.str252, i32 0, i32 0
  %2199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %2198)
  %2200 = call %nyx_string* @nyx_string_concat(%nyx_string* %2197, %nyx_string* %2199)
  %2201 = getelementptr [36 x i8], [36 x i8]* @.str253, i32 0, i32 0
  %2202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %2201)
  %2203 = call %nyx_string* @nyx_string_concat(%nyx_string* %2200, %nyx_string* %2202)
  %2204 = getelementptr [35 x i8], [35 x i8]* @.str254, i32 0, i32 0
  %2205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %2204)
  %2206 = call %nyx_string* @nyx_string_concat(%nyx_string* %2203, %nyx_string* %2205)
  %2207 = getelementptr [55 x i8], [55 x i8]* @.str255, i32 0, i32 0
  %2208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %2207)
  %2209 = call %nyx_string* @nyx_string_concat(%nyx_string* %2206, %nyx_string* %2208)
  %2210 = getelementptr [39 x i8], [39 x i8]* @.str256, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %2210)
  %2212 = call %nyx_string* @nyx_string_concat(%nyx_string* %2209, %nyx_string* %2211)
  %2213 = getelementptr [71 x i8], [71 x i8]* @.str257, i32 0, i32 0
  %2214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %2213)
  %2215 = call %nyx_string* @nyx_string_concat(%nyx_string* %2212, %nyx_string* %2214)
  %2216 = getelementptr [44 x i8], [44 x i8]* @.str258, i32 0, i32 0
  %2217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %2216)
  %2218 = call %nyx_string* @nyx_string_concat(%nyx_string* %2215, %nyx_string* %2217)
  %2219 = getelementptr [15 x i8], [15 x i8]* @.str259, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %2219)
  %2221 = call %nyx_string* @nyx_string_concat(%nyx_string* %2218, %nyx_string* %2220)
  %2222 = load %nyx_string*, %nyx_string** %2054
  %2223 = call %nyx_string* @nyx_string_concat(%nyx_string* %2221, %nyx_string* %2222)
  %2224 = getelementptr [13 x i8], [13 x i8]* @.str260, i32 0, i32 0
  %2225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %2224)
  %2226 = call %nyx_string* @nyx_string_concat(%nyx_string* %2223, %nyx_string* %2225)
  %2227 = getelementptr [70 x i8], [70 x i8]* @.str261, i32 0, i32 0
  %2228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %2227)
  %2229 = call %nyx_string* @nyx_string_concat(%nyx_string* %2226, %nyx_string* %2228)
  %2230 = getelementptr [18 x i8], [18 x i8]* @.str262, i32 0, i32 0
  %2231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %2230)
  %2232 = call %nyx_string* @nyx_string_concat(%nyx_string* %2229, %nyx_string* %2231)
  %2233 = load %nyx_string*, %nyx_string** %2054
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2232, %nyx_string* %2233)
  %2235 = getelementptr [3 x i8], [3 x i8]* @.str263, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %2235)
  %2237 = call %nyx_string* @nyx_string_concat(%nyx_string* %2234, %nyx_string* %2236)
  %2238 = alloca %nyx_string*
  store %nyx_string* %2237, %nyx_string** %2238
  %2239 = load %nyx_string*, %nyx_string** %2238
  %2240 = alloca %nyx_string*
  store %nyx_string* %2239, %nyx_string** %2240
  %2241 = load %nyx_string*, %nyx_string** %1987
  %2242 = getelementptr [12 x i8], [12 x i8]* @.str264, i32 0, i32 0
  %2243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %2242)
  %2244 = call i1 @nyx_string_equals(%nyx_string* %2241, %nyx_string* %2243)
  br i1 %2244, label %then417, label %else418
then417:
  %2245 = getelementptr [20 x i8], [20 x i8]* @.str265, i32 0, i32 0
  %2246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %2245)
  %2247 = getelementptr [19 x i8], [19 x i8]* @.str266, i32 0, i32 0
  %2248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %2247)
  %2249 = call %nyx_string* @nyx_string_concat(%nyx_string* %2246, %nyx_string* %2248)
  %2250 = getelementptr [5 x i8], [5 x i8]* @.str267, i32 0, i32 0
  %2251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %2250)
  %2252 = call %nyx_string* @nyx_string_concat(%nyx_string* %2249, %nyx_string* %2251)
  %2253 = load %nyx_string*, %nyx_string** %2128
  %2254 = call %nyx_string* @nyx_string_concat(%nyx_string* %2252, %nyx_string* %2253)
  %2255 = getelementptr [3 x i8], [3 x i8]* @.str268, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %2255)
  %2257 = call %nyx_string* @nyx_string_concat(%nyx_string* %2254, %nyx_string* %2256)
  %2258 = getelementptr [11 x i8], [11 x i8]* @.str269, i32 0, i32 0
  %2259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %2258)
  %2260 = call %nyx_string* @nyx_string_concat(%nyx_string* %2257, %nyx_string* %2259)
  %2261 = getelementptr [23 x i8], [23 x i8]* @.str270, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %2261)
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2260, %nyx_string* %2262)
  %2264 = getelementptr [43 x i8], [43 x i8]* @.str271, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %2264)
  %2266 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2265)
  %2267 = getelementptr [37 x i8], [37 x i8]* @.str272, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %2267)
  %2269 = call %nyx_string* @nyx_string_concat(%nyx_string* %2266, %nyx_string* %2268)
  %2270 = getelementptr [17 x i8], [17 x i8]* @.str273, i32 0, i32 0
  %2271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %2270)
  %2272 = call %nyx_string* @nyx_string_concat(%nyx_string* %2269, %nyx_string* %2271)
  %2273 = getelementptr [38 x i8], [38 x i8]* @.str274, i32 0, i32 0
  %2274 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %2273)
  %2275 = call %nyx_string* @nyx_string_concat(%nyx_string* %2272, %nyx_string* %2274)
  %2276 = getelementptr [17 x i8], [17 x i8]* @.str275, i32 0, i32 0
  %2277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %2276)
  %2278 = call %nyx_string* @nyx_string_concat(%nyx_string* %2275, %nyx_string* %2277)
  %2279 = getelementptr [163 x i8], [163 x i8]* @.str276, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %2279)
  %2281 = call %nyx_string* @nyx_string_concat(%nyx_string* %2278, %nyx_string* %2280)
  %2282 = getelementptr [15 x i8], [15 x i8]* @.str277, i32 0, i32 0
  %2283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %2282)
  %2284 = call %nyx_string* @nyx_string_concat(%nyx_string* %2281, %nyx_string* %2283)
  %2285 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2286 = load %nyx_string*, %nyx_string** %2285
  %2287 = call %nyx_string* @nyx_string_concat(%nyx_string* %2284, %nyx_string* %2286)
  %2288 = getelementptr [12 x i8], [12 x i8]* @.str278, i32 0, i32 0
  %2289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %2288)
  %2290 = call %nyx_string* @nyx_string_concat(%nyx_string* %2287, %nyx_string* %2289)
  %2291 = getelementptr [5 x i8], [5 x i8]* @.str279, i32 0, i32 0
  %2292 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %2291)
  %2293 = call %nyx_string* @nyx_string_concat(%nyx_string* %2290, %nyx_string* %2292)
  %2294 = load %nyx_string*, %nyx_string** %2065
  %2295 = call %nyx_string* @nyx_string_concat(%nyx_string* %2293, %nyx_string* %2294)
  %2296 = getelementptr [3 x i8], [3 x i8]* @.str280, i32 0, i32 0
  %2297 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %2296)
  %2298 = call %nyx_string* @nyx_string_concat(%nyx_string* %2295, %nyx_string* %2297)
  %2299 = getelementptr [82 x i8], [82 x i8]* @.str281, i32 0, i32 0
  %2300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %2299)
  %2301 = call %nyx_string* @nyx_string_concat(%nyx_string* %2298, %nyx_string* %2300)
  %2302 = load %nyx_string*, %nyx_string** %2115
  %2303 = call %nyx_string* @nyx_string_concat(%nyx_string* %2301, %nyx_string* %2302)
  %2304 = getelementptr [17 x i8], [17 x i8]* @.str282, i32 0, i32 0
  %2305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %2304)
  %2306 = call %nyx_string* @nyx_string_concat(%nyx_string* %2303, %nyx_string* %2305)
  %2307 = getelementptr [71 x i8], [71 x i8]* @.str283, i32 0, i32 0
  %2308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %2307)
  %2309 = call %nyx_string* @nyx_string_concat(%nyx_string* %2306, %nyx_string* %2308)
  %2310 = getelementptr [64 x i8], [64 x i8]* @.str284, i32 0, i32 0
  %2311 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %2310)
  %2312 = call %nyx_string* @nyx_string_concat(%nyx_string* %2309, %nyx_string* %2311)
  %2313 = getelementptr [56 x i8], [56 x i8]* @.str285, i32 0, i32 0
  %2314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %2313)
  %2315 = call %nyx_string* @nyx_string_concat(%nyx_string* %2312, %nyx_string* %2314)
  %2316 = getelementptr [50 x i8], [50 x i8]* @.str286, i32 0, i32 0
  %2317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %2316)
  %2318 = call %nyx_string* @nyx_string_concat(%nyx_string* %2315, %nyx_string* %2317)
  %2319 = getelementptr [42 x i8], [42 x i8]* @.str287, i32 0, i32 0
  %2320 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %2319)
  %2321 = call %nyx_string* @nyx_string_concat(%nyx_string* %2318, %nyx_string* %2320)
  %2322 = getelementptr [35 x i8], [35 x i8]* @.str288, i32 0, i32 0
  %2323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %2322)
  %2324 = call %nyx_string* @nyx_string_concat(%nyx_string* %2321, %nyx_string* %2323)
  %2325 = getelementptr [43 x i8], [43 x i8]* @.str289, i32 0, i32 0
  %2326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %2325)
  %2327 = call %nyx_string* @nyx_string_concat(%nyx_string* %2324, %nyx_string* %2326)
  %2328 = getelementptr [15 x i8], [15 x i8]* @.str290, i32 0, i32 0
  %2329 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %2328)
  %2330 = call %nyx_string* @nyx_string_concat(%nyx_string* %2327, %nyx_string* %2329)
  %2331 = load %nyx_string*, %nyx_string** %2054
  %2332 = call %nyx_string* @nyx_string_concat(%nyx_string* %2330, %nyx_string* %2331)
  %2333 = getelementptr [18 x i8], [18 x i8]* @.str291, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %2333)
  %2335 = call %nyx_string* @nyx_string_concat(%nyx_string* %2332, %nyx_string* %2334)
  %2336 = getelementptr [75 x i8], [75 x i8]* @.str292, i32 0, i32 0
  %2337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %2336)
  %2338 = call %nyx_string* @nyx_string_concat(%nyx_string* %2335, %nyx_string* %2337)
  %2339 = getelementptr [13 x i8], [13 x i8]* @.str293, i32 0, i32 0
  %2340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %2339)
  %2341 = call %nyx_string* @nyx_string_concat(%nyx_string* %2338, %nyx_string* %2340)
  %2342 = load %nyx_string*, %nyx_string** %2054
  %2343 = call %nyx_string* @nyx_string_concat(%nyx_string* %2341, %nyx_string* %2342)
  %2344 = getelementptr [22 x i8], [22 x i8]* @.str294, i32 0, i32 0
  %2345 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %2344)
  %2346 = call %nyx_string* @nyx_string_concat(%nyx_string* %2343, %nyx_string* %2345)
  %2347 = load %nyx_string*, %nyx_string** %2054
  %2348 = call %nyx_string* @nyx_string_concat(%nyx_string* %2346, %nyx_string* %2347)
  %2349 = getelementptr [9 x i8], [9 x i8]* @.str295, i32 0, i32 0
  %2350 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %2349)
  %2351 = call %nyx_string* @nyx_string_concat(%nyx_string* %2348, %nyx_string* %2350)
  store %nyx_string* %2351, %nyx_string** %2240
  br label %merge419
else418:
  br label %merge419
merge419:
  %2352 = getelementptr [16 x i8], [16 x i8]* @.str296, i32 0, i32 0
  %2353 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %2352)
  %2354 = call i64 @nyx_getpid()
  %2355 = call %nyx_string* @nyx_string_from_int(i64 %2354)
  %2356 = call %nyx_string* @nyx_string_concat(%nyx_string* %2353, %nyx_string* %2355)
  %2357 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %2358 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %2357)
  %2359 = call %nyx_string* @nyx_string_concat(%nyx_string* %2356, %nyx_string* %2358)
  %2360 = alloca %nyx_string*
  store %nyx_string* %2359, %nyx_string** %2360
  %2361 = load %nyx_string*, %nyx_string** %2360
  %2362 = load %nyx_string*, %nyx_string** %2240
  %2363 = call i8* @nyx_string_to_cstr(%nyx_string* %2361)
  %2364 = call i8* @nyx_string_to_cstr(%nyx_string* %2362)
  %2365 = call i1 @nyx_write_file(i8* %2363, i8* %2364)
  %2366 = getelementptr [7 x i8], [7 x i8]* @.str298, i32 0, i32 0
  %2367 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %2366)
  %2368 = load %nyx_string*, %nyx_string** %2360
  %2369 = call %nyx_string* @nyx_string_concat(%nyx_string* %2367, %nyx_string* %2368)
  %2370 = getelementptr [22 x i8], [22 x i8]* @.str299, i32 0, i32 0
  %2371 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %2370)
  %2372 = call %nyx_string* @nyx_string_concat(%nyx_string* %2369, %nyx_string* %2371)
  %2373 = load %nyx_string*, %nyx_string** %2360
  %2374 = call %nyx_string* @nyx_string_concat(%nyx_string* %2372, %nyx_string* %2373)
  %2375 = getelementptr [16 x i8], [16 x i8]* @.str300, i32 0, i32 0
  %2376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %2375)
  %2377 = call %nyx_string* @nyx_string_concat(%nyx_string* %2374, %nyx_string* %2376)
  %2378 = call i8* @nyx_string_to_cstr(%nyx_string* %2377)
  %2379 = call i64 @nyx_exec(i8* %2378)
  %2380 = alloca i64
  store i64 %2379, i64* %2380
  %2381 = load i64, i64* %2380
  %2382 = icmp eq i64 %2381, 0
  ret i1 %2382
}

define internal i64 @print_info(
%ProjectConfig %config.param) {
  %config.ptr = alloca %ProjectConfig
  store %ProjectConfig %config.param, %ProjectConfig* %config.ptr
  %2383 = getelementptr [10 x i8], [10 x i8]* @.str301, i32 0, i32 0
  %2384 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %2383)
  %2385 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 0
  %2386 = load %nyx_string*, %nyx_string** %2385
  %2387 = call %nyx_string* @nyx_string_concat(%nyx_string* %2384, %nyx_string* %2386)
  %2388 = call i8* @nyx_string_to_cstr(%nyx_string* %2387)
  call void @nyx_print_string(i8* %2388)
  %2389 = getelementptr [10 x i8], [10 x i8]* @.str302, i32 0, i32 0
  %2390 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %2389)
  %2391 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 1
  %2392 = load %nyx_string*, %nyx_string** %2391
  %2393 = call %nyx_string* @nyx_string_concat(%nyx_string* %2390, %nyx_string* %2392)
  %2394 = call i8* @nyx_string_to_cstr(%nyx_string* %2393)
  call void @nyx_print_string(i8* %2394)
  %2395 = getelementptr [10 x i8], [10 x i8]* @.str303, i32 0, i32 0
  %2396 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %2395)
  %2397 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 2
  %2398 = load %nyx_string*, %nyx_string** %2397
  %2399 = call %nyx_string* @nyx_string_concat(%nyx_string* %2396, %nyx_string* %2398)
  %2400 = call i8* @nyx_string_to_cstr(%nyx_string* %2399)
  call void @nyx_print_string(i8* %2400)
  %2401 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %2402 = load %nyx_string*, %nyx_string** %2401
  %2403 = getelementptr [1 x i8], [1 x i8]* @.str304, i32 0, i32 0
  %2404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %2403)
  %2405 = call i1 @nyx_string_equals(%nyx_string* %2402, %nyx_string* %2404)
  %2406 = xor i1 %2405, true
  br i1 %2406, label %then420, label %else421
then420:
  %2407 = getelementptr [10 x i8], [10 x i8]* @.str305, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %2407)
  %2409 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 3
  %2410 = load %nyx_string*, %nyx_string** %2409
  %2411 = call %nyx_string* @nyx_string_concat(%nyx_string* %2408, %nyx_string* %2410)
  %2412 = call i8* @nyx_string_to_cstr(%nyx_string* %2411)
  call void @nyx_print_string(i8* %2412)
  br label %merge422
else421:
  br label %merge422
merge422:
  %2413 = getelementptr %ProjectConfig, %ProjectConfig* %config.ptr, i32 0, i32 4
  %2414 = load i1, i1* %2413
  br i1 %2414, label %then423, label %else424
then423:
  %2415 = getelementptr [25 x i8], [25 x i8]* @.str306, i32 0, i32 0
  %2416 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %2415)
  %2417 = call i8* @nyx_string_to_cstr(%nyx_string* %2416)
  call void @nyx_print_string(i8* %2417)
  br label %merge425
else424:
  %2418 = getelementptr [22 x i8], [22 x i8]* @.str307, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %2418)
  %2420 = call i8* @nyx_string_to_cstr(%nyx_string* %2419)
  call void @nyx_print_string(i8* %2420)
  br label %merge425
merge425:
  ret i64 0
}

define internal %nyx_string* @toolchain_version(
) {
  %2421 = getelementptr [9 x i8], [9 x i8]* @.str308, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %2421)
  %2423 = call i8* @nyx_string_to_cstr(%nyx_string* %2422)
  %2424 = call %nyx_string* @nyx_getenv(i8* %2423)
  %2425 = alloca %nyx_string*
  store %nyx_string* %2424, %nyx_string** %2425
  %2426 = load %nyx_string*, %nyx_string** %2425
  %2427 = getelementptr [1 x i8], [1 x i8]* @.str309, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %2427)
  %2429 = call i1 @nyx_string_equals(%nyx_string* %2426, %nyx_string* %2428)
  br i1 %2429, label %then426, label %else427
then426:
  %2430 = getelementptr [5 x i8], [5 x i8]* @.str310, i32 0, i32 0
  %2431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str310.c, i8* %2430)
  %2432 = call i8* @nyx_string_to_cstr(%nyx_string* %2431)
  %2433 = call %nyx_string* @nyx_getenv(i8* %2432)
  %2434 = alloca %nyx_string*
  store %nyx_string* %2433, %nyx_string** %2434
  %2435 = load %nyx_string*, %nyx_string** %2434
  %2436 = getelementptr [1 x i8], [1 x i8]* @.str311, i32 0, i32 0
  %2437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str311.c, i8* %2436)
  %2438 = call i1 @nyx_string_equals(%nyx_string* %2435, %nyx_string* %2437)
  %2439 = xor i1 %2438, true
  br i1 %2439, label %then429, label %else430
then429:
  %2440 = load %nyx_string*, %nyx_string** %2434
  %2441 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %2441)
  %2443 = call %nyx_string* @nyx_string_concat(%nyx_string* %2440, %nyx_string* %2442)
  store %nyx_string* %2443, %nyx_string** %2425
  br label %merge431
else430:
  br label %merge431
merge431:
  br label %merge428
else427:
  br label %merge428
merge428:
  %2444 = load %nyx_string*, %nyx_string** %2425
  %2445 = getelementptr [1 x i8], [1 x i8]* @.str313, i32 0, i32 0
  %2446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %2445)
  %2447 = call i1 @nyx_string_equals(%nyx_string* %2444, %nyx_string* %2446)
  %2448 = xor i1 %2447, true
  br i1 %2448, label %then432, label %else433
then432:
  %2449 = load %nyx_string*, %nyx_string** %2425
  %2450 = getelementptr [9 x i8], [9 x i8]* @.str314, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %2450)
  %2452 = call %nyx_string* @nyx_string_concat(%nyx_string* %2449, %nyx_string* %2451)
  %2453 = call i8* @nyx_string_to_cstr(%nyx_string* %2452)
  %2454 = call i1 @nyx_file_exists(i8* %2453)
  br i1 %2454, label %then435, label %else436
then435:
  %2455 = load %nyx_string*, %nyx_string** %2425
  %2456 = getelementptr [9 x i8], [9 x i8]* @.str315, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %2456)
  %2458 = call %nyx_string* @nyx_string_concat(%nyx_string* %2455, %nyx_string* %2457)
  %2459 = call i8* @nyx_string_to_cstr(%nyx_string* %2458)
  %2460 = call %nyx_string* @nyx_read_file(i8* %2459)
  %2461 = alloca %nyx_string*
  store %nyx_string* %2460, %nyx_string** %2461
  %2462 = load %nyx_string*, %nyx_string** %2461
  %2463 = call %nyx_string* @nyx_string_trim(%nyx_string* %2462)
  ret %nyx_string* %2463
else436:
  br label %merge437
merge437:
  br label %merge434
else433:
  br label %merge434
merge434:
  %2464 = getelementptr [8 x i8], [8 x i8]* @.str316, i32 0, i32 0
  %2465 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %2464)
  %2466 = call i8* @nyx_string_to_cstr(%nyx_string* %2465)
  %2467 = call i1 @nyx_file_exists(i8* %2466)
  br i1 %2467, label %then438, label %else439
then438:
  %2468 = getelementptr [8 x i8], [8 x i8]* @.str317, i32 0, i32 0
  %2469 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str317.c, i8* %2468)
  %2470 = call i8* @nyx_string_to_cstr(%nyx_string* %2469)
  %2471 = call %nyx_string* @nyx_read_file(i8* %2470)
  %2472 = alloca %nyx_string*
  store %nyx_string* %2471, %nyx_string** %2472
  %2473 = load %nyx_string*, %nyx_string** %2472
  %2474 = call %nyx_string* @nyx_string_trim(%nyx_string* %2473)
  ret %nyx_string* %2474
else439:
  br label %merge440
merge440:
  %2475 = getelementptr [7 x i8], [7 x i8]* @.str318, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str318.c, i8* %2475)
  ret %nyx_string* %2476
}

define internal %nyx_string* @report_template(
) {
  %2477 = getelementptr [51 x i8], [51 x i8]* @.str319, i32 0, i32 0
  %2478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str319.c, i8* %2477)
  %2479 = alloca %nyx_string*
  store %nyx_string* %2478, %nyx_string** %2479
  %2480 = load %nyx_string*, %nyx_string** %2479
  %2481 = getelementptr [74 x i8], [74 x i8]* @.str320, i32 0, i32 0
  %2482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str320.c, i8* %2481)
  %2483 = call %nyx_string* @nyx_string_concat(%nyx_string* %2480, %nyx_string* %2482)
  store %nyx_string* %2483, %nyx_string** %2479
  %2484 = load %nyx_string*, %nyx_string** %2479
  %2485 = getelementptr [88 x i8], [88 x i8]* @.str321, i32 0, i32 0
  %2486 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str321.c, i8* %2485)
  %2487 = call %nyx_string* @nyx_string_concat(%nyx_string* %2484, %nyx_string* %2486)
  store %nyx_string* %2487, %nyx_string** %2479
  %2488 = load %nyx_string*, %nyx_string** %2479
  %2489 = getelementptr [51 x i8], [51 x i8]* @.str322, i32 0, i32 0
  %2490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str322.c, i8* %2489)
  %2491 = call %nyx_string* @nyx_string_concat(%nyx_string* %2488, %nyx_string* %2490)
  store %nyx_string* %2491, %nyx_string** %2479
  %2492 = load %nyx_string*, %nyx_string** %2479
  %2493 = getelementptr [90 x i8], [90 x i8]* @.str323, i32 0, i32 0
  %2494 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str323.c, i8* %2493)
  %2495 = call %nyx_string* @nyx_string_concat(%nyx_string* %2492, %nyx_string* %2494)
  store %nyx_string* %2495, %nyx_string** %2479
  %2496 = load %nyx_string*, %nyx_string** %2479
  %2497 = getelementptr [104 x i8], [104 x i8]* @.str324, i32 0, i32 0
  %2498 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str324.c, i8* %2497)
  %2499 = call %nyx_string* @nyx_string_concat(%nyx_string* %2496, %nyx_string* %2498)
  store %nyx_string* %2499, %nyx_string** %2479
  %2500 = load %nyx_string*, %nyx_string** %2479
  %2501 = getelementptr [99 x i8], [99 x i8]* @.str325, i32 0, i32 0
  %2502 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str325.c, i8* %2501)
  %2503 = call %nyx_string* @nyx_string_concat(%nyx_string* %2500, %nyx_string* %2502)
  store %nyx_string* %2503, %nyx_string** %2479
  %2504 = load %nyx_string*, %nyx_string** %2479
  %2505 = getelementptr [126 x i8], [126 x i8]* @.str326, i32 0, i32 0
  %2506 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str326.c, i8* %2505)
  %2507 = call %nyx_string* @nyx_string_concat(%nyx_string* %2504, %nyx_string* %2506)
  store %nyx_string* %2507, %nyx_string** %2479
  %2508 = load %nyx_string*, %nyx_string** %2479
  %2509 = getelementptr [21 x i8], [21 x i8]* @.str327, i32 0, i32 0
  %2510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str327.c, i8* %2509)
  %2511 = call %nyx_string* @nyx_string_concat(%nyx_string* %2508, %nyx_string* %2510)
  %2512 = call %nyx_string* @toolchain_version()
  %2513 = call %nyx_string* @nyx_string_concat(%nyx_string* %2511, %nyx_string* %2512)
  %2514 = getelementptr [25 x i8], [25 x i8]* @.str328, i32 0, i32 0
  %2515 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str328.c, i8* %2514)
  %2516 = call %nyx_string* @nyx_string_concat(%nyx_string* %2513, %nyx_string* %2515)
  store %nyx_string* %2516, %nyx_string** %2479
  %2517 = load %nyx_string*, %nyx_string** %2479
  ret %nyx_string* %2517
}

define internal i1 @run_report(
%nyx_string* %file_arg.param, i1 %do_send.param) {
  %file_arg.ptr = alloca %nyx_string*
  store %nyx_string* %file_arg.param, %nyx_string** %file_arg.ptr
  %do_send.ptr = alloca i1
  store i1 %do_send.param, i1* %do_send.ptr
  %2518 = getelementptr [12 x i8], [12 x i8]* @.str329, i32 0, i32 0
  %2519 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str329.c, i8* %2518)
  %2520 = alloca %nyx_string*
  store %nyx_string* %2519, %nyx_string** %2520
  %2521 = load i1, i1* %do_send.ptr
  %2522 = xor i1 %2521, true
  br i1 %2522, label %then441, label %else442
then441:
  %2523 = load %nyx_string*, %nyx_string** %2520
  %2524 = call i8* @nyx_string_to_cstr(%nyx_string* %2523)
  %2525 = call i1 @nyx_file_exists(i8* %2524)
  br i1 %2525, label %then444, label %else445
then444:
  %2526 = load %nyx_string*, %nyx_string** %2520
  %2527 = call i8* @nyx_string_to_cstr(%nyx_string* %2526)
  %2528 = call %nyx_string* @nyx_read_file(i8* %2527)
  %2529 = alloca %nyx_string*
  store %nyx_string* %2528, %nyx_string** %2529
  %2530 = load %nyx_string*, %nyx_string** %2529
  %2531 = call i64 @nyx_string_byte_length(%nyx_string* %2530)
  %2532 = icmp sge i64 %2531, 40
  br i1 %2532, label %then447, label %else448
then447:
  %2533 = getelementptr [79 x i8], [79 x i8]* @.str330, i32 0, i32 0
  %2534 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str330.c, i8* %2533)
  %2535 = call i8* @nyx_string_to_cstr(%nyx_string* %2534)
  call void @nyx_print_string(i8* %2535)
  %2536 = getelementptr [62 x i8], [62 x i8]* @.str331, i32 0, i32 0
  %2537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str331.c, i8* %2536)
  %2538 = call i8* @nyx_string_to_cstr(%nyx_string* %2537)
  call void @nyx_print_string(i8* %2538)
  ret i1 1
else448:
  br label %merge449
merge449:
  br label %merge446
else445:
  br label %merge446
merge446:
  %2539 = load %nyx_string*, %nyx_string** %2520
  %2540 = call %nyx_string* @report_template()
  %2541 = call i8* @nyx_string_to_cstr(%nyx_string* %2539)
  %2542 = call i8* @nyx_string_to_cstr(%nyx_string* %2540)
  %2543 = call i1 @nyx_write_file(i8* %2541, i8* %2542)
  %2544 = getelementptr [79 x i8], [79 x i8]* @.str332, i32 0, i32 0
  %2545 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str332.c, i8* %2544)
  %2546 = call i8* @nyx_string_to_cstr(%nyx_string* %2545)
  call void @nyx_print_string(i8* %2546)
  %2547 = getelementptr [71 x i8], [71 x i8]* @.str333, i32 0, i32 0
  %2548 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str333.c, i8* %2547)
  %2549 = call i8* @nyx_string_to_cstr(%nyx_string* %2548)
  call void @nyx_print_string(i8* %2549)
  %2550 = getelementptr [53 x i8], [53 x i8]* @.str334, i32 0, i32 0
  %2551 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str334.c, i8* %2550)
  %2552 = call i8* @nyx_string_to_cstr(%nyx_string* %2551)
  call void @nyx_print_string(i8* %2552)
  ret i1 1
else442:
  br label %merge443
merge443:
  %2553 = load %nyx_string*, %nyx_string** %2520
  %2554 = alloca %nyx_string*
  store %nyx_string* %2553, %nyx_string** %2554
  %2555 = load %nyx_string*, %nyx_string** %file_arg.ptr
  %2556 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %2557 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str335.c, i8* %2556)
  %2558 = call i1 @nyx_string_equals(%nyx_string* %2555, %nyx_string* %2557)
  %2559 = xor i1 %2558, true
  br i1 %2559, label %then450, label %else451
then450:
  %2560 = load %nyx_string*, %nyx_string** %file_arg.ptr
  store %nyx_string* %2560, %nyx_string** %2554
  br label %merge452
else451:
  br label %merge452
merge452:
  %2561 = load %nyx_string*, %nyx_string** %2554
  %2562 = call i8* @nyx_string_to_cstr(%nyx_string* %2561)
  %2563 = call i1 @nyx_file_exists(i8* %2562)
  %2564 = xor i1 %2563, true
  br i1 %2564, label %then453, label %else454
then453:
  %2565 = getelementptr [18 x i8], [18 x i8]* @.str336, i32 0, i32 0
  %2566 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str336.c, i8* %2565)
  %2567 = load %nyx_string*, %nyx_string** %2554
  %2568 = call %nyx_string* @nyx_string_concat(%nyx_string* %2566, %nyx_string* %2567)
  %2569 = getelementptr [56 x i8], [56 x i8]* @.str337, i32 0, i32 0
  %2570 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str337.c, i8* %2569)
  %2571 = call %nyx_string* @nyx_string_concat(%nyx_string* %2568, %nyx_string* %2570)
  %2572 = call i8* @nyx_string_to_cstr(%nyx_string* %2571)
  call void @nyx_print_string(i8* %2572)
  ret i1 0
else454:
  br label %merge455
merge455:
  %2573 = load %nyx_string*, %nyx_string** %2554
  %2574 = call i8* @nyx_string_to_cstr(%nyx_string* %2573)
  %2575 = call %nyx_string* @nyx_read_file(i8* %2574)
  %2576 = alloca %nyx_string*
  store %nyx_string* %2575, %nyx_string** %2576
  %2577 = load %nyx_string*, %nyx_string** %2576
  %2578 = call i64 @nyx_string_byte_length(%nyx_string* %2577)
  %2579 = icmp slt i64 %2578, 40
  br i1 %2579, label %then456, label %else457
then456:
  %2580 = getelementptr [67 x i8], [67 x i8]* @.str338, i32 0, i32 0
  %2581 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str338.c, i8* %2580)
  %2582 = call i8* @nyx_string_to_cstr(%nyx_string* %2581)
  call void @nyx_print_string(i8* %2582)
  ret i1 0
else457:
  br label %merge458
merge458:
  %2583 = getelementptr [1 x i8], [1 x i8]* @.str339, i32 0, i32 0
  %2584 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str339.c, i8* %2583)
  %2585 = alloca %nyx_string*
  store %nyx_string* %2584, %nyx_string** %2585
  %2586 = getelementptr [5 x i8], [5 x i8]* @.str340, i32 0, i32 0
  %2587 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str340.c, i8* %2586)
  %2588 = call i8* @nyx_string_to_cstr(%nyx_string* %2587)
  %2589 = call %nyx_string* @nyx_getenv(i8* %2588)
  %2590 = alloca %nyx_string*
  store %nyx_string* %2589, %nyx_string** %2590
  %2591 = load %nyx_string*, %nyx_string** %2590
  %2592 = getelementptr [1 x i8], [1 x i8]* @.str341, i32 0, i32 0
  %2593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str341.c, i8* %2592)
  %2594 = call i1 @nyx_string_equals(%nyx_string* %2591, %nyx_string* %2593)
  %2595 = xor i1 %2594, true
  br i1 %2595, label %then459, label %else460
then459:
  %2596 = load %nyx_string*, %nyx_string** %2590
  %2597 = getelementptr [15 x i8], [15 x i8]* @.str342, i32 0, i32 0
  %2598 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str342.c, i8* %2597)
  %2599 = call %nyx_string* @nyx_string_concat(%nyx_string* %2596, %nyx_string* %2598)
  %2600 = call i8* @nyx_string_to_cstr(%nyx_string* %2599)
  %2601 = call i1 @nyx_file_exists(i8* %2600)
  br i1 %2601, label %then462, label %else463
then462:
  %2602 = load %nyx_string*, %nyx_string** %2590
  %2603 = getelementptr [15 x i8], [15 x i8]* @.str343, i32 0, i32 0
  %2604 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str343.c, i8* %2603)
  %2605 = call %nyx_string* @nyx_string_concat(%nyx_string* %2602, %nyx_string* %2604)
  %2606 = call i8* @nyx_string_to_cstr(%nyx_string* %2605)
  %2607 = call %nyx_string* @nyx_read_file(i8* %2606)
  %2608 = alloca %nyx_string*
  store %nyx_string* %2607, %nyx_string** %2608
  %2609 = load %nyx_string*, %nyx_string** %2608
  %2610 = call %nyx_string* @nyx_string_trim(%nyx_string* %2609)
  store %nyx_string* %2610, %nyx_string** %2585
  br label %merge464
else463:
  br label %merge464
merge464:
  br label %merge461
else460:
  br label %merge461
merge461:
  %2611 = load %nyx_string*, %nyx_string** %2585
  %2612 = getelementptr [1 x i8], [1 x i8]* @.str344, i32 0, i32 0
  %2613 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str344.c, i8* %2612)
  %2614 = call i1 @nyx_string_equals(%nyx_string* %2611, %nyx_string* %2613)
  br i1 %2614, label %then465, label %else466
then465:
  %2615 = getelementptr [77 x i8], [77 x i8]* @.str345, i32 0, i32 0
  %2616 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str345.c, i8* %2615)
  %2617 = call i8* @nyx_string_to_cstr(%nyx_string* %2616)
  call void @nyx_print_string(i8* %2617)
  br label %merge467
else466:
  br label %merge467
merge467:
  %2618 = getelementptr [10 x i8], [10 x i8]* @.str346, i32 0, i32 0
  %2619 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str346.c, i8* %2618)
  %2620 = load %nyx_string*, %nyx_string** %2585
  %2621 = call i64 @kv_connect_auth(%nyx_string* %2619, i64 6380, %nyx_string* %2620)
  %2622 = alloca i64
  store i64 %2621, i64* %2622
  %2623 = load i64, i64* %2622
  %2624 = icmp slt i64 %2623, 0
  br i1 %2624, label %then468, label %else469
then468:
  %2625 = getelementptr [54 x i8], [54 x i8]* @.str347, i32 0, i32 0
  %2626 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str347.c, i8* %2625)
  %2627 = call i8* @nyx_string_to_cstr(%nyx_string* %2626)
  call void @nyx_print_string(i8* %2627)
  %2628 = getelementptr [22 x i8], [22 x i8]* @.str348, i32 0, i32 0
  %2629 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str348.c, i8* %2628)
  %2630 = load %nyx_string*, %nyx_string** %2554
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2630)
  %2632 = getelementptr [28 x i8], [28 x i8]* @.str349, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str349.c, i8* %2632)
  %2634 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2633)
  %2635 = call i8* @nyx_string_to_cstr(%nyx_string* %2634)
  call void @nyx_print_string(i8* %2635)
  %2636 = getelementptr [44 x i8], [44 x i8]* @.str350, i32 0, i32 0
  %2637 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str350.c, i8* %2636)
  %2638 = call i8* @nyx_string_to_cstr(%nyx_string* %2637)
  call void @nyx_print_string(i8* %2638)
  ret i1 0
else469:
  br label %merge470
merge470:
  %2639 = getelementptr [5 x i8], [5 x i8]* @.str351, i32 0, i32 0
  %2640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str351.c, i8* %2639)
  %2641 = load %nyx_string*, %nyx_string** %2576
  %2642 = call %nyx_string* @base64_encode(%nyx_string* %2641)
  %2643 = call %nyx_string* @nyx_string_concat(%nyx_string* %2640, %nyx_string* %2642)
  %2644 = alloca %nyx_string*
  store %nyx_string* %2643, %nyx_string** %2644
  %2645 = load i64, i64* %2622
  %2646 = getelementptr [11 x i8], [11 x i8]* @.str352, i32 0, i32 0
  %2647 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str352.c, i8* %2646)
  %2648 = load %nyx_string*, %nyx_string** %2644
  %2649 = call i64 @kv_rpush(i64 %2645, %nyx_string* %2647, %nyx_string* %2648)
  %2650 = alloca i64
  store i64 %2649, i64* %2650
  %2651 = load i64, i64* %2622
  %2652 = call i64 @kv_close(i64 %2651)
  %2653 = load i64, i64* %2650
  %2654 = icmp sle i64 %2653, 0
  br i1 %2654, label %then471, label %else472
then471:
  %2655 = getelementptr [37 x i8], [37 x i8]* @.str353, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str353.c, i8* %2655)
  %2657 = call i8* @nyx_string_to_cstr(%nyx_string* %2656)
  call void @nyx_print_string(i8* %2657)
  ret i1 0
else472:
  br label %merge473
merge473:
  %2658 = getelementptr [55 x i8], [55 x i8]* @.str354, i32 0, i32 0
  %2659 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str354.c, i8* %2658)
  %2660 = load i64, i64* %2650
  %2661 = call %nyx_string* @nyx_string_from_int(i64 %2660)
  %2662 = call %nyx_string* @nyx_string_concat(%nyx_string* %2659, %nyx_string* %2661)
  %2663 = getelementptr [15 x i8], [15 x i8]* @.str355, i32 0, i32 0
  %2664 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str355.c, i8* %2663)
  %2665 = call %nyx_string* @nyx_string_concat(%nyx_string* %2662, %nyx_string* %2664)
  %2666 = call i8* @nyx_string_to_cstr(%nyx_string* %2665)
  call void @nyx_print_string(i8* %2666)
  ret i1 1
}

define internal %nyx_string* @capabilities_std_dir(
) {
  %2667 = getelementptr [9 x i8], [9 x i8]* @.str356, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str356.c, i8* %2667)
  %2669 = call i8* @nyx_string_to_cstr(%nyx_string* %2668)
  %2670 = call %nyx_string* @nyx_getenv(i8* %2669)
  %2671 = alloca %nyx_string*
  store %nyx_string* %2670, %nyx_string** %2671
  %2672 = load %nyx_string*, %nyx_string** %2671
  %2673 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %2674 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str357.c, i8* %2673)
  %2675 = call i1 @nyx_string_equals(%nyx_string* %2672, %nyx_string* %2674)
  br i1 %2675, label %then474, label %else475
then474:
  %2676 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str358.c, i8* %2676)
  %2678 = call i8* @nyx_string_to_cstr(%nyx_string* %2677)
  %2679 = call %nyx_string* @nyx_getenv(i8* %2678)
  %2680 = alloca %nyx_string*
  store %nyx_string* %2679, %nyx_string** %2680
  %2681 = load %nyx_string*, %nyx_string** %2680
  %2682 = getelementptr [6 x i8], [6 x i8]* @.str359, i32 0, i32 0
  %2683 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str359.c, i8* %2682)
  %2684 = call %nyx_string* @nyx_string_concat(%nyx_string* %2681, %nyx_string* %2683)
  %2685 = alloca %nyx_string*
  store %nyx_string* %2684, %nyx_string** %2685
  %2686 = alloca i1
  store i1 false, i1* %2686
  %2687 = load %nyx_string*, %nyx_string** %2680
  %2688 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %2689 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str360.c, i8* %2688)
  %2690 = call i1 @nyx_string_equals(%nyx_string* %2687, %nyx_string* %2689)
  %2691 = xor i1 %2690, true
  br i1 %2691, label %sc_and_rhs477, label %sc_and_end478
sc_and_rhs477:
  %2692 = load %nyx_string*, %nyx_string** %2685
  %2693 = getelementptr [5 x i8], [5 x i8]* @.str361, i32 0, i32 0
  %2694 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str361.c, i8* %2693)
  %2695 = call %nyx_string* @nyx_string_concat(%nyx_string* %2692, %nyx_string* %2694)
  %2696 = call i8* @nyx_string_to_cstr(%nyx_string* %2695)
  %2697 = call i1 @nyx_file_exists(i8* %2696)
  store i1 %2697, i1* %2686
  br label %sc_and_end478
sc_and_end478:
  %2698 = load i1, i1* %2686
  br i1 %2698, label %then479, label %else480
then479:
  %2699 = load %nyx_string*, %nyx_string** %2685
  store %nyx_string* %2699, %nyx_string** %2671
  br label %merge481
else480:
  br label %merge481
merge481:
  br label %merge476
else475:
  br label %merge476
merge476:
  %2700 = load %nyx_string*, %nyx_string** %2671
  %2701 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %2702 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str362.c, i8* %2701)
  %2703 = call i1 @nyx_string_equals(%nyx_string* %2700, %nyx_string* %2702)
  br i1 %2703, label %then482, label %else483
then482:
  %2704 = getelementptr [4 x i8], [4 x i8]* @.str363, i32 0, i32 0
  %2705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str363.c, i8* %2704)
  %2706 = call i8* @nyx_string_to_cstr(%nyx_string* %2705)
  %2707 = call i1 @nyx_file_exists(i8* %2706)
  br i1 %2707, label %then485, label %else486
then485:
  %2708 = getelementptr [2 x i8], [2 x i8]* @.str364, i32 0, i32 0
  %2709 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str364.c, i8* %2708)
  store %nyx_string* %2709, %nyx_string** %2671
  br label %merge487
else486:
  br label %merge487
merge487:
  br label %merge484
else483:
  br label %merge484
merge484:
  %2710 = load %nyx_string*, %nyx_string** %2671
  %2711 = getelementptr [1 x i8], [1 x i8]* @.str365, i32 0, i32 0
  %2712 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str365.c, i8* %2711)
  %2713 = call i1 @nyx_string_equals(%nyx_string* %2710, %nyx_string* %2712)
  br i1 %2713, label %then488, label %else489
then488:
  %2714 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %2715 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str366.c, i8* %2714)
  ret %nyx_string* %2715
else489:
  br label %merge490
merge490:
  %2716 = load %nyx_string*, %nyx_string** %2671
  %2717 = getelementptr [5 x i8], [5 x i8]* @.str367, i32 0, i32 0
  %2718 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str367.c, i8* %2717)
  %2719 = call %nyx_string* @nyx_string_concat(%nyx_string* %2716, %nyx_string* %2718)
  ret %nyx_string* %2719
}

define internal %nyx_string* @module_category(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2720 = alloca i1
  store i1 true, i1* %2720
  %2721 = alloca i1
  store i1 true, i1* %2721
  %2722 = alloca i1
  store i1 true, i1* %2722
  %2723 = load %nyx_string*, %nyx_string** %name.ptr
  %2724 = getelementptr [5 x i8], [5 x i8]* @.str368, i32 0, i32 0
  %2725 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str368.c, i8* %2724)
  %2726 = call i1 @nyx_string_equals(%nyx_string* %2723, %nyx_string* %2725)
  br i1 %2726, label %sc_or_end492, label %sc_or_rhs491
sc_or_rhs491:
  %2727 = load %nyx_string*, %nyx_string** %name.ptr
  %2728 = getelementptr [4 x i8], [4 x i8]* @.str369, i32 0, i32 0
  %2729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str369.c, i8* %2728)
  %2730 = call i1 @nyx_string_equals(%nyx_string* %2727, %nyx_string* %2729)
  store i1 %2730, i1* %2722
  br label %sc_or_end492
sc_or_end492:
  %2731 = load i1, i1* %2722
  br i1 %2731, label %sc_or_end494, label %sc_or_rhs493
sc_or_rhs493:
  %2732 = load %nyx_string*, %nyx_string** %name.ptr
  %2733 = getelementptr [10 x i8], [10 x i8]* @.str370, i32 0, i32 0
  %2734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str370.c, i8* %2733)
  %2735 = call i1 @nyx_string_equals(%nyx_string* %2732, %nyx_string* %2734)
  store i1 %2735, i1* %2721
  br label %sc_or_end494
sc_or_end494:
  %2736 = load i1, i1* %2721
  br i1 %2736, label %sc_or_end496, label %sc_or_rhs495
sc_or_rhs495:
  %2737 = load %nyx_string*, %nyx_string** %name.ptr
  %2738 = getelementptr [7 x i8], [7 x i8]* @.str371, i32 0, i32 0
  %2739 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str371.c, i8* %2738)
  %2740 = call i1 @nyx_string_equals(%nyx_string* %2737, %nyx_string* %2739)
  store i1 %2740, i1* %2720
  br label %sc_or_end496
sc_or_end496:
  %2741 = load i1, i1* %2720
  br i1 %2741, label %then497, label %else498
then497:
  %2742 = getelementptr [11 x i8], [11 x i8]* @.str372, i32 0, i32 0
  %2743 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str372.c, i8* %2742)
  ret %nyx_string* %2743
else498:
  br label %merge499
merge499:
  %2744 = alloca i1
  store i1 true, i1* %2744
  %2745 = alloca i1
  store i1 true, i1* %2745
  %2746 = load %nyx_string*, %nyx_string** %name.ptr
  %2747 = getelementptr [7 x i8], [7 x i8]* @.str373, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str373.c, i8* %2747)
  %2749 = call i1 @nyx_string_equals(%nyx_string* %2746, %nyx_string* %2748)
  br i1 %2749, label %sc_or_end501, label %sc_or_rhs500
sc_or_rhs500:
  %2750 = load %nyx_string*, %nyx_string** %name.ptr
  %2751 = getelementptr [3 x i8], [3 x i8]* @.str374, i32 0, i32 0
  %2752 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str374.c, i8* %2751)
  %2753 = call i1 @nyx_string_equals(%nyx_string* %2750, %nyx_string* %2752)
  store i1 %2753, i1* %2745
  br label %sc_or_end501
sc_or_end501:
  %2754 = load i1, i1* %2745
  br i1 %2754, label %sc_or_end503, label %sc_or_rhs502
sc_or_rhs502:
  %2755 = load %nyx_string*, %nyx_string** %name.ptr
  %2756 = getelementptr [9 x i8], [9 x i8]* @.str375, i32 0, i32 0
  %2757 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str375.c, i8* %2756)
  %2758 = call i1 @nyx_string_equals(%nyx_string* %2755, %nyx_string* %2757)
  store i1 %2758, i1* %2744
  br label %sc_or_end503
sc_or_end503:
  %2759 = load i1, i1* %2744
  br i1 %2759, label %then504, label %else505
then504:
  %2760 = getelementptr [20 x i8], [20 x i8]* @.str376, i32 0, i32 0
  %2761 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str376.c, i8* %2760)
  ret %nyx_string* %2761
else505:
  br label %merge506
merge506:
  %2762 = alloca i1
  store i1 true, i1* %2762
  %2763 = alloca i1
  store i1 true, i1* %2763
  %2764 = alloca i1
  store i1 true, i1* %2764
  %2765 = alloca i1
  store i1 true, i1* %2765
  %2766 = alloca i1
  store i1 true, i1* %2766
  %2767 = load %nyx_string*, %nyx_string** %name.ptr
  %2768 = getelementptr [5 x i8], [5 x i8]* @.str377, i32 0, i32 0
  %2769 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str377.c, i8* %2768)
  %2770 = call i1 @nyx_string_equals(%nyx_string* %2767, %nyx_string* %2769)
  br i1 %2770, label %sc_or_end508, label %sc_or_rhs507
sc_or_rhs507:
  %2771 = load %nyx_string*, %nyx_string** %name.ptr
  %2772 = getelementptr [8 x i8], [8 x i8]* @.str378, i32 0, i32 0
  %2773 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str378.c, i8* %2772)
  %2774 = call i1 @nyx_string_equals(%nyx_string* %2771, %nyx_string* %2773)
  store i1 %2774, i1* %2766
  br label %sc_or_end508
sc_or_end508:
  %2775 = load i1, i1* %2766
  br i1 %2775, label %sc_or_end510, label %sc_or_rhs509
sc_or_rhs509:
  %2776 = load %nyx_string*, %nyx_string** %name.ptr
  %2777 = getelementptr [5 x i8], [5 x i8]* @.str379, i32 0, i32 0
  %2778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str379.c, i8* %2777)
  %2779 = call i1 @nyx_string_equals(%nyx_string* %2776, %nyx_string* %2778)
  store i1 %2779, i1* %2765
  br label %sc_or_end510
sc_or_end510:
  %2780 = load i1, i1* %2765
  br i1 %2780, label %sc_or_end512, label %sc_or_rhs511
sc_or_rhs511:
  %2781 = load %nyx_string*, %nyx_string** %name.ptr
  %2782 = getelementptr [4 x i8], [4 x i8]* @.str380, i32 0, i32 0
  %2783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str380.c, i8* %2782)
  %2784 = call i1 @nyx_string_equals(%nyx_string* %2781, %nyx_string* %2783)
  store i1 %2784, i1* %2764
  br label %sc_or_end512
sc_or_end512:
  %2785 = load i1, i1* %2764
  br i1 %2785, label %sc_or_end514, label %sc_or_rhs513
sc_or_rhs513:
  %2786 = load %nyx_string*, %nyx_string** %name.ptr
  %2787 = getelementptr [7 x i8], [7 x i8]* @.str381, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str381.c, i8* %2787)
  %2789 = call i1 @nyx_string_equals(%nyx_string* %2786, %nyx_string* %2788)
  store i1 %2789, i1* %2763
  br label %sc_or_end514
sc_or_end514:
  %2790 = load i1, i1* %2763
  br i1 %2790, label %sc_or_end516, label %sc_or_rhs515
sc_or_rhs515:
  %2791 = load %nyx_string*, %nyx_string** %name.ptr
  %2792 = getelementptr [9 x i8], [9 x i8]* @.str382, i32 0, i32 0
  %2793 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str382.c, i8* %2792)
  %2794 = call i1 @nyx_string_equals(%nyx_string* %2791, %nyx_string* %2793)
  store i1 %2794, i1* %2762
  br label %sc_or_end516
sc_or_end516:
  %2795 = load i1, i1* %2762
  br i1 %2795, label %then517, label %else518
then517:
  %2796 = getelementptr [23 x i8], [23 x i8]* @.str383, i32 0, i32 0
  %2797 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str383.c, i8* %2796)
  ret %nyx_string* %2797
else518:
  br label %merge519
merge519:
  %2798 = alloca i1
  store i1 true, i1* %2798
  %2799 = alloca i1
  store i1 true, i1* %2799
  %2800 = alloca i1
  store i1 true, i1* %2800
  %2801 = load %nyx_string*, %nyx_string** %name.ptr
  %2802 = getelementptr [3 x i8], [3 x i8]* @.str384, i32 0, i32 0
  %2803 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str384.c, i8* %2802)
  %2804 = call i1 @nyx_string_equals(%nyx_string* %2801, %nyx_string* %2803)
  br i1 %2804, label %sc_or_end521, label %sc_or_rhs520
sc_or_rhs520:
  %2805 = load %nyx_string*, %nyx_string** %name.ptr
  %2806 = getelementptr [5 x i8], [5 x i8]* @.str385, i32 0, i32 0
  %2807 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str385.c, i8* %2806)
  %2808 = call i1 @nyx_string_equals(%nyx_string* %2805, %nyx_string* %2807)
  store i1 %2808, i1* %2800
  br label %sc_or_end521
sc_or_end521:
  %2809 = load i1, i1* %2800
  br i1 %2809, label %sc_or_end523, label %sc_or_rhs522
sc_or_rhs522:
  %2810 = load %nyx_string*, %nyx_string** %name.ptr
  %2811 = getelementptr [3 x i8], [3 x i8]* @.str386, i32 0, i32 0
  %2812 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str386.c, i8* %2811)
  %2813 = call i1 @nyx_string_equals(%nyx_string* %2810, %nyx_string* %2812)
  store i1 %2813, i1* %2799
  br label %sc_or_end523
sc_or_end523:
  %2814 = load i1, i1* %2799
  br i1 %2814, label %sc_or_end525, label %sc_or_rhs524
sc_or_rhs524:
  %2815 = load %nyx_string*, %nyx_string** %name.ptr
  %2816 = getelementptr [5 x i8], [5 x i8]* @.str387, i32 0, i32 0
  %2817 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str387.c, i8* %2816)
  %2818 = call i1 @nyx_string_equals(%nyx_string* %2815, %nyx_string* %2817)
  store i1 %2818, i1* %2798
  br label %sc_or_end525
sc_or_end525:
  %2819 = load i1, i1* %2798
  br i1 %2819, label %then526, label %else527
then526:
  %2820 = getelementptr [15 x i8], [15 x i8]* @.str388, i32 0, i32 0
  %2821 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str388.c, i8* %2820)
  ret %nyx_string* %2821
else527:
  br label %merge528
merge528:
  %2822 = alloca i1
  store i1 true, i1* %2822
  %2823 = alloca i1
  store i1 true, i1* %2823
  %2824 = alloca i1
  store i1 true, i1* %2824
  %2825 = alloca i1
  store i1 true, i1* %2825
  %2826 = alloca i1
  store i1 true, i1* %2826
  %2827 = load %nyx_string*, %nyx_string** %name.ptr
  %2828 = getelementptr [4 x i8], [4 x i8]* @.str389, i32 0, i32 0
  %2829 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str389.c, i8* %2828)
  %2830 = call i1 @nyx_string_equals(%nyx_string* %2827, %nyx_string* %2829)
  br i1 %2830, label %sc_or_end530, label %sc_or_rhs529
sc_or_rhs529:
  %2831 = load %nyx_string*, %nyx_string** %name.ptr
  %2832 = getelementptr [4 x i8], [4 x i8]* @.str390, i32 0, i32 0
  %2833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str390.c, i8* %2832)
  %2834 = call i1 @nyx_string_equals(%nyx_string* %2831, %nyx_string* %2833)
  store i1 %2834, i1* %2826
  br label %sc_or_end530
sc_or_end530:
  %2835 = load i1, i1* %2826
  br i1 %2835, label %sc_or_end532, label %sc_or_rhs531
sc_or_rhs531:
  %2836 = load %nyx_string*, %nyx_string** %name.ptr
  %2837 = getelementptr [4 x i8], [4 x i8]* @.str391, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str391.c, i8* %2837)
  %2839 = call i1 @nyx_string_equals(%nyx_string* %2836, %nyx_string* %2838)
  store i1 %2839, i1* %2825
  br label %sc_or_end532
sc_or_end532:
  %2840 = load i1, i1* %2825
  br i1 %2840, label %sc_or_end534, label %sc_or_rhs533
sc_or_rhs533:
  %2841 = load %nyx_string*, %nyx_string** %name.ptr
  %2842 = getelementptr [6 x i8], [6 x i8]* @.str392, i32 0, i32 0
  %2843 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str392.c, i8* %2842)
  %2844 = call i1 @nyx_string_equals(%nyx_string* %2841, %nyx_string* %2843)
  store i1 %2844, i1* %2824
  br label %sc_or_end534
sc_or_end534:
  %2845 = load i1, i1* %2824
  br i1 %2845, label %sc_or_end536, label %sc_or_rhs535
sc_or_rhs535:
  %2846 = load %nyx_string*, %nyx_string** %name.ptr
  %2847 = getelementptr [4 x i8], [4 x i8]* @.str393, i32 0, i32 0
  %2848 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str393.c, i8* %2847)
  %2849 = call i1 @nyx_string_equals(%nyx_string* %2846, %nyx_string* %2848)
  store i1 %2849, i1* %2823
  br label %sc_or_end536
sc_or_end536:
  %2850 = load i1, i1* %2823
  br i1 %2850, label %sc_or_end538, label %sc_or_rhs537
sc_or_rhs537:
  %2851 = load %nyx_string*, %nyx_string** %name.ptr
  %2852 = getelementptr [4 x i8], [4 x i8]* @.str394, i32 0, i32 0
  %2853 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str394.c, i8* %2852)
  %2854 = call i1 @nyx_string_equals(%nyx_string* %2851, %nyx_string* %2853)
  store i1 %2854, i1* %2822
  br label %sc_or_end538
sc_or_end538:
  %2855 = load i1, i1* %2822
  br i1 %2855, label %then539, label %else540
then539:
  %2856 = getelementptr [4 x i8], [4 x i8]* @.str395, i32 0, i32 0
  %2857 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str395.c, i8* %2856)
  ret %nyx_string* %2857
else540:
  br label %merge541
merge541:
  %2858 = alloca i1
  store i1 true, i1* %2858
  %2859 = alloca i1
  store i1 true, i1* %2859
  %2860 = alloca i1
  store i1 true, i1* %2860
  %2861 = alloca i1
  store i1 true, i1* %2861
  %2862 = load %nyx_string*, %nyx_string** %name.ptr
  %2863 = getelementptr [7 x i8], [7 x i8]* @.str396, i32 0, i32 0
  %2864 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str396.c, i8* %2863)
  %2865 = call i1 @nyx_string_equals(%nyx_string* %2862, %nyx_string* %2864)
  br i1 %2865, label %sc_or_end543, label %sc_or_rhs542
sc_or_rhs542:
  %2866 = load %nyx_string*, %nyx_string** %name.ptr
  %2867 = getelementptr [8 x i8], [8 x i8]* @.str397, i32 0, i32 0
  %2868 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str397.c, i8* %2867)
  %2869 = call i1 @nyx_string_equals(%nyx_string* %2866, %nyx_string* %2868)
  store i1 %2869, i1* %2861
  br label %sc_or_end543
sc_or_end543:
  %2870 = load i1, i1* %2861
  br i1 %2870, label %sc_or_end545, label %sc_or_rhs544
sc_or_rhs544:
  %2871 = load %nyx_string*, %nyx_string** %name.ptr
  %2872 = getelementptr [10 x i8], [10 x i8]* @.str398, i32 0, i32 0
  %2873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str398.c, i8* %2872)
  %2874 = call i1 @nyx_string_equals(%nyx_string* %2871, %nyx_string* %2873)
  store i1 %2874, i1* %2860
  br label %sc_or_end545
sc_or_end545:
  %2875 = load i1, i1* %2860
  br i1 %2875, label %sc_or_end547, label %sc_or_rhs546
sc_or_rhs546:
  %2876 = load %nyx_string*, %nyx_string** %name.ptr
  %2877 = getelementptr [5 x i8], [5 x i8]* @.str399, i32 0, i32 0
  %2878 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str399.c, i8* %2877)
  %2879 = call i1 @nyx_string_equals(%nyx_string* %2876, %nyx_string* %2878)
  store i1 %2879, i1* %2859
  br label %sc_or_end547
sc_or_end547:
  %2880 = load i1, i1* %2859
  br i1 %2880, label %sc_or_end549, label %sc_or_rhs548
sc_or_rhs548:
  %2881 = load %nyx_string*, %nyx_string** %name.ptr
  %2882 = getelementptr [6 x i8], [6 x i8]* @.str400, i32 0, i32 0
  %2883 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str400.c, i8* %2882)
  %2884 = call i1 @nyx_string_equals(%nyx_string* %2881, %nyx_string* %2883)
  store i1 %2884, i1* %2858
  br label %sc_or_end549
sc_or_end549:
  %2885 = load i1, i1* %2858
  br i1 %2885, label %then550, label %else551
then550:
  %2886 = getelementptr [13 x i8], [13 x i8]* @.str401, i32 0, i32 0
  %2887 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str401.c, i8* %2886)
  ret %nyx_string* %2887
else551:
  br label %merge552
merge552:
  %2888 = alloca i1
  store i1 true, i1* %2888
  %2889 = alloca i1
  store i1 true, i1* %2889
  %2890 = alloca i1
  store i1 true, i1* %2890
  %2891 = alloca i1
  store i1 true, i1* %2891
  %2892 = load %nyx_string*, %nyx_string** %name.ptr
  %2893 = getelementptr [7 x i8], [7 x i8]* @.str402, i32 0, i32 0
  %2894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str402.c, i8* %2893)
  %2895 = call i1 @nyx_string_equals(%nyx_string* %2892, %nyx_string* %2894)
  br i1 %2895, label %sc_or_end554, label %sc_or_rhs553
sc_or_rhs553:
  %2896 = load %nyx_string*, %nyx_string** %name.ptr
  %2897 = getelementptr [4 x i8], [4 x i8]* @.str403, i32 0, i32 0
  %2898 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str403.c, i8* %2897)
  %2899 = call i1 @nyx_string_equals(%nyx_string* %2896, %nyx_string* %2898)
  store i1 %2899, i1* %2891
  br label %sc_or_end554
sc_or_end554:
  %2900 = load i1, i1* %2891
  br i1 %2900, label %sc_or_end556, label %sc_or_rhs555
sc_or_rhs555:
  %2901 = load %nyx_string*, %nyx_string** %name.ptr
  %2902 = getelementptr [5 x i8], [5 x i8]* @.str404, i32 0, i32 0
  %2903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str404.c, i8* %2902)
  %2904 = call i1 @nyx_string_equals(%nyx_string* %2901, %nyx_string* %2903)
  store i1 %2904, i1* %2890
  br label %sc_or_end556
sc_or_end556:
  %2905 = load i1, i1* %2890
  br i1 %2905, label %sc_or_end558, label %sc_or_rhs557
sc_or_rhs557:
  %2906 = load %nyx_string*, %nyx_string** %name.ptr
  %2907 = getelementptr [7 x i8], [7 x i8]* @.str405, i32 0, i32 0
  %2908 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str405.c, i8* %2907)
  %2909 = call i1 @nyx_string_equals(%nyx_string* %2906, %nyx_string* %2908)
  store i1 %2909, i1* %2889
  br label %sc_or_end558
sc_or_end558:
  %2910 = load i1, i1* %2889
  br i1 %2910, label %sc_or_end560, label %sc_or_rhs559
sc_or_rhs559:
  %2911 = load %nyx_string*, %nyx_string** %name.ptr
  %2912 = getelementptr [5 x i8], [5 x i8]* @.str406, i32 0, i32 0
  %2913 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str406.c, i8* %2912)
  %2914 = call i1 @nyx_string_equals(%nyx_string* %2911, %nyx_string* %2913)
  store i1 %2914, i1* %2888
  br label %sc_or_end560
sc_or_end560:
  %2915 = load i1, i1* %2888
  br i1 %2915, label %then561, label %else562
then561:
  %2916 = getelementptr [19 x i8], [19 x i8]* @.str407, i32 0, i32 0
  %2917 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str407.c, i8* %2916)
  ret %nyx_string* %2917
else562:
  br label %merge563
merge563:
  %2918 = alloca i1
  store i1 true, i1* %2918
  %2919 = load %nyx_string*, %nyx_string** %name.ptr
  %2920 = getelementptr [5 x i8], [5 x i8]* @.str408, i32 0, i32 0
  %2921 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str408.c, i8* %2920)
  %2922 = call i1 @nyx_string_equals(%nyx_string* %2919, %nyx_string* %2921)
  br i1 %2922, label %sc_or_end565, label %sc_or_rhs564
sc_or_rhs564:
  %2923 = load %nyx_string*, %nyx_string** %name.ptr
  %2924 = getelementptr [9 x i8], [9 x i8]* @.str409, i32 0, i32 0
  %2925 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str409.c, i8* %2924)
  %2926 = call i1 @nyx_string_equals(%nyx_string* %2923, %nyx_string* %2925)
  store i1 %2926, i1* %2918
  br label %sc_or_end565
sc_or_end565:
  %2927 = load i1, i1* %2918
  br i1 %2927, label %then566, label %else567
then566:
  %2928 = getelementptr [7 x i8], [7 x i8]* @.str410, i32 0, i32 0
  %2929 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str410.c, i8* %2928)
  ret %nyx_string* %2929
else567:
  br label %merge568
merge568:
  %2930 = alloca i1
  store i1 true, i1* %2930
  %2931 = alloca i1
  store i1 true, i1* %2931
  %2932 = alloca i1
  store i1 true, i1* %2932
  %2933 = load %nyx_string*, %nyx_string** %name.ptr
  %2934 = getelementptr [7 x i8], [7 x i8]* @.str411, i32 0, i32 0
  %2935 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str411.c, i8* %2934)
  %2936 = call i1 @nyx_string_equals(%nyx_string* %2933, %nyx_string* %2935)
  br i1 %2936, label %sc_or_end570, label %sc_or_rhs569
sc_or_rhs569:
  %2937 = load %nyx_string*, %nyx_string** %name.ptr
  %2938 = getelementptr [8 x i8], [8 x i8]* @.str412, i32 0, i32 0
  %2939 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str412.c, i8* %2938)
  %2940 = call i1 @nyx_string_equals(%nyx_string* %2937, %nyx_string* %2939)
  store i1 %2940, i1* %2932
  br label %sc_or_end570
sc_or_end570:
  %2941 = load i1, i1* %2932
  br i1 %2941, label %sc_or_end572, label %sc_or_rhs571
sc_or_rhs571:
  %2942 = load %nyx_string*, %nyx_string** %name.ptr
  %2943 = getelementptr [14 x i8], [14 x i8]* @.str413, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str413.c, i8* %2943)
  %2945 = call i1 @nyx_string_equals(%nyx_string* %2942, %nyx_string* %2944)
  store i1 %2945, i1* %2931
  br label %sc_or_end572
sc_or_end572:
  %2946 = load i1, i1* %2931
  br i1 %2946, label %sc_or_end574, label %sc_or_rhs573
sc_or_rhs573:
  %2947 = load %nyx_string*, %nyx_string** %name.ptr
  %2948 = getelementptr [6 x i8], [6 x i8]* @.str414, i32 0, i32 0
  %2949 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str414.c, i8* %2948)
  %2950 = call i1 @nyx_string_equals(%nyx_string* %2947, %nyx_string* %2949)
  store i1 %2950, i1* %2930
  br label %sc_or_end574
sc_or_end574:
  %2951 = load i1, i1* %2930
  br i1 %2951, label %then575, label %else576
then575:
  %2952 = getelementptr [16 x i8], [16 x i8]* @.str415, i32 0, i32 0
  %2953 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str415.c, i8* %2952)
  ret %nyx_string* %2953
else576:
  br label %merge577
merge577:
  %2954 = alloca i1
  store i1 true, i1* %2954
  %2955 = alloca i1
  store i1 true, i1* %2955
  %2956 = alloca i1
  store i1 true, i1* %2956
  %2957 = alloca i1
  store i1 true, i1* %2957
  %2958 = alloca i1
  store i1 true, i1* %2958
  %2959 = alloca i1
  store i1 true, i1* %2959
  %2960 = alloca i1
  store i1 true, i1* %2960
  %2961 = load %nyx_string*, %nyx_string** %name.ptr
  %2962 = getelementptr [4 x i8], [4 x i8]* @.str416, i32 0, i32 0
  %2963 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str416.c, i8* %2962)
  %2964 = call i1 @nyx_string_equals(%nyx_string* %2961, %nyx_string* %2963)
  br i1 %2964, label %sc_or_end579, label %sc_or_rhs578
sc_or_rhs578:
  %2965 = load %nyx_string*, %nyx_string** %name.ptr
  %2966 = getelementptr [6 x i8], [6 x i8]* @.str417, i32 0, i32 0
  %2967 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str417.c, i8* %2966)
  %2968 = call i1 @nyx_string_equals(%nyx_string* %2965, %nyx_string* %2967)
  store i1 %2968, i1* %2960
  br label %sc_or_end579
sc_or_end579:
  %2969 = load i1, i1* %2960
  br i1 %2969, label %sc_or_end581, label %sc_or_rhs580
sc_or_rhs580:
  %2970 = load %nyx_string*, %nyx_string** %name.ptr
  %2971 = getelementptr [11 x i8], [11 x i8]* @.str418, i32 0, i32 0
  %2972 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str418.c, i8* %2971)
  %2973 = call i1 @nyx_string_equals(%nyx_string* %2970, %nyx_string* %2972)
  store i1 %2973, i1* %2959
  br label %sc_or_end581
sc_or_end581:
  %2974 = load i1, i1* %2959
  br i1 %2974, label %sc_or_end583, label %sc_or_rhs582
sc_or_rhs582:
  %2975 = load %nyx_string*, %nyx_string** %name.ptr
  %2976 = getelementptr [6 x i8], [6 x i8]* @.str419, i32 0, i32 0
  %2977 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str419.c, i8* %2976)
  %2978 = call i1 @nyx_string_equals(%nyx_string* %2975, %nyx_string* %2977)
  store i1 %2978, i1* %2958
  br label %sc_or_end583
sc_or_end583:
  %2979 = load i1, i1* %2958
  br i1 %2979, label %sc_or_end585, label %sc_or_rhs584
sc_or_rhs584:
  %2980 = load %nyx_string*, %nyx_string** %name.ptr
  %2981 = getelementptr [9 x i8], [9 x i8]* @.str420, i32 0, i32 0
  %2982 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str420.c, i8* %2981)
  %2983 = call i1 @nyx_string_equals(%nyx_string* %2980, %nyx_string* %2982)
  store i1 %2983, i1* %2957
  br label %sc_or_end585
sc_or_end585:
  %2984 = load i1, i1* %2957
  br i1 %2984, label %sc_or_end587, label %sc_or_rhs586
sc_or_rhs586:
  %2985 = load %nyx_string*, %nyx_string** %name.ptr
  %2986 = getelementptr [14 x i8], [14 x i8]* @.str421, i32 0, i32 0
  %2987 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str421.c, i8* %2986)
  %2988 = call i1 @nyx_string_equals(%nyx_string* %2985, %nyx_string* %2987)
  store i1 %2988, i1* %2956
  br label %sc_or_end587
sc_or_end587:
  %2989 = load i1, i1* %2956
  br i1 %2989, label %sc_or_end589, label %sc_or_rhs588
sc_or_rhs588:
  %2990 = load %nyx_string*, %nyx_string** %name.ptr
  %2991 = getelementptr [6 x i8], [6 x i8]* @.str422, i32 0, i32 0
  %2992 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str422.c, i8* %2991)
  %2993 = call i1 @nyx_string_equals(%nyx_string* %2990, %nyx_string* %2992)
  store i1 %2993, i1* %2955
  br label %sc_or_end589
sc_or_end589:
  %2994 = load i1, i1* %2955
  br i1 %2994, label %sc_or_end591, label %sc_or_rhs590
sc_or_rhs590:
  %2995 = load %nyx_string*, %nyx_string** %name.ptr
  %2996 = getelementptr [7 x i8], [7 x i8]* @.str423, i32 0, i32 0
  %2997 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str423.c, i8* %2996)
  %2998 = call i1 @nyx_string_equals(%nyx_string* %2995, %nyx_string* %2997)
  store i1 %2998, i1* %2954
  br label %sc_or_end591
sc_or_end591:
  %2999 = load i1, i1* %2954
  br i1 %2999, label %then592, label %else593
then592:
  %3000 = getelementptr [26 x i8], [26 x i8]* @.str424, i32 0, i32 0
  %3001 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str424.c, i8* %3000)
  ret %nyx_string* %3001
else593:
  br label %merge594
merge594:
  %3002 = alloca i1
  store i1 true, i1* %3002
  %3003 = alloca i1
  store i1 true, i1* %3003
  %3004 = alloca i1
  store i1 true, i1* %3004
  %3005 = load %nyx_string*, %nyx_string** %name.ptr
  %3006 = getelementptr [6 x i8], [6 x i8]* @.str425, i32 0, i32 0
  %3007 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str425.c, i8* %3006)
  %3008 = call i1 @nyx_string_equals(%nyx_string* %3005, %nyx_string* %3007)
  br i1 %3008, label %sc_or_end596, label %sc_or_rhs595
sc_or_rhs595:
  %3009 = load %nyx_string*, %nyx_string** %name.ptr
  %3010 = getelementptr [4 x i8], [4 x i8]* @.str426, i32 0, i32 0
  %3011 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str426.c, i8* %3010)
  %3012 = call i1 @nyx_string_equals(%nyx_string* %3009, %nyx_string* %3011)
  store i1 %3012, i1* %3004
  br label %sc_or_end596
sc_or_end596:
  %3013 = load i1, i1* %3004
  br i1 %3013, label %sc_or_end598, label %sc_or_rhs597
sc_or_rhs597:
  %3014 = load %nyx_string*, %nyx_string** %name.ptr
  %3015 = getelementptr [3 x i8], [3 x i8]* @.str427, i32 0, i32 0
  %3016 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str427.c, i8* %3015)
  %3017 = call i1 @nyx_string_equals(%nyx_string* %3014, %nyx_string* %3016)
  store i1 %3017, i1* %3003
  br label %sc_or_end598
sc_or_end598:
  %3018 = load i1, i1* %3003
  br i1 %3018, label %sc_or_end600, label %sc_or_rhs599
sc_or_rhs599:
  %3019 = load %nyx_string*, %nyx_string** %name.ptr
  %3020 = getelementptr [10 x i8], [10 x i8]* @.str428, i32 0, i32 0
  %3021 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str428.c, i8* %3020)
  %3022 = call i1 @nyx_string_equals(%nyx_string* %3019, %nyx_string* %3021)
  store i1 %3022, i1* %3002
  br label %sc_or_end600
sc_or_end600:
  %3023 = load i1, i1* %3002
  br i1 %3023, label %then601, label %else602
then601:
  %3024 = getelementptr [8 x i8], [8 x i8]* @.str429, i32 0, i32 0
  %3025 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str429.c, i8* %3024)
  ret %nyx_string* %3025
else602:
  br label %merge603
merge603:
  %3026 = alloca i1
  store i1 true, i1* %3026
  %3027 = alloca i1
  store i1 true, i1* %3027
  %3028 = alloca i1
  store i1 true, i1* %3028
  %3029 = alloca i1
  store i1 true, i1* %3029
  %3030 = alloca i1
  store i1 true, i1* %3030
  %3031 = alloca i1
  store i1 true, i1* %3031
  %3032 = load %nyx_string*, %nyx_string** %name.ptr
  %3033 = getelementptr [5 x i8], [5 x i8]* @.str430, i32 0, i32 0
  %3034 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str430.c, i8* %3033)
  %3035 = call i1 @nyx_string_equals(%nyx_string* %3032, %nyx_string* %3034)
  br i1 %3035, label %sc_or_end605, label %sc_or_rhs604
sc_or_rhs604:
  %3036 = load %nyx_string*, %nyx_string** %name.ptr
  %3037 = getelementptr [4 x i8], [4 x i8]* @.str431, i32 0, i32 0
  %3038 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str431.c, i8* %3037)
  %3039 = call i1 @nyx_string_equals(%nyx_string* %3036, %nyx_string* %3038)
  store i1 %3039, i1* %3031
  br label %sc_or_end605
sc_or_end605:
  %3040 = load i1, i1* %3031
  br i1 %3040, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3041 = load %nyx_string*, %nyx_string** %name.ptr
  %3042 = getelementptr [4 x i8], [4 x i8]* @.str432, i32 0, i32 0
  %3043 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str432.c, i8* %3042)
  %3044 = call i1 @nyx_string_equals(%nyx_string* %3041, %nyx_string* %3043)
  store i1 %3044, i1* %3030
  br label %sc_or_end607
sc_or_end607:
  %3045 = load i1, i1* %3030
  br i1 %3045, label %sc_or_end609, label %sc_or_rhs608
sc_or_rhs608:
  %3046 = load %nyx_string*, %nyx_string** %name.ptr
  %3047 = getelementptr [8 x i8], [8 x i8]* @.str433, i32 0, i32 0
  %3048 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str433.c, i8* %3047)
  %3049 = call i1 @nyx_string_equals(%nyx_string* %3046, %nyx_string* %3048)
  store i1 %3049, i1* %3029
  br label %sc_or_end609
sc_or_end609:
  %3050 = load i1, i1* %3029
  br i1 %3050, label %sc_or_end611, label %sc_or_rhs610
sc_or_rhs610:
  %3051 = load %nyx_string*, %nyx_string** %name.ptr
  %3052 = getelementptr [7 x i8], [7 x i8]* @.str434, i32 0, i32 0
  %3053 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str434.c, i8* %3052)
  %3054 = call i1 @nyx_string_equals(%nyx_string* %3051, %nyx_string* %3053)
  store i1 %3054, i1* %3028
  br label %sc_or_end611
sc_or_end611:
  %3055 = load i1, i1* %3028
  br i1 %3055, label %sc_or_end613, label %sc_or_rhs612
sc_or_rhs612:
  %3056 = load %nyx_string*, %nyx_string** %name.ptr
  %3057 = getelementptr [8 x i8], [8 x i8]* @.str435, i32 0, i32 0
  %3058 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str435.c, i8* %3057)
  %3059 = call i1 @nyx_string_equals(%nyx_string* %3056, %nyx_string* %3058)
  store i1 %3059, i1* %3027
  br label %sc_or_end613
sc_or_end613:
  %3060 = load i1, i1* %3027
  br i1 %3060, label %sc_or_end615, label %sc_or_rhs614
sc_or_rhs614:
  %3061 = load %nyx_string*, %nyx_string** %name.ptr
  %3062 = getelementptr [11 x i8], [11 x i8]* @.str436, i32 0, i32 0
  %3063 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str436.c, i8* %3062)
  %3064 = call i1 @nyx_string_equals(%nyx_string* %3061, %nyx_string* %3063)
  store i1 %3064, i1* %3026
  br label %sc_or_end615
sc_or_end615:
  %3065 = load i1, i1* %3026
  br i1 %3065, label %then616, label %else617
then616:
  %3066 = getelementptr [14 x i8], [14 x i8]* @.str437, i32 0, i32 0
  %3067 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str437.c, i8* %3066)
  ret %nyx_string* %3067
else617:
  br label %merge618
merge618:
  %3068 = getelementptr [1 x i8], [1 x i8]* @.str438, i32 0, i32 0
  %3069 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str438.c, i8* %3068)
  ret %nyx_string* %3069
}

define internal %nyx_string* @capabilities_module_section(
%nyx_string* %std_dir.param, %nyx_string* %filename.param) {
  %std_dir.ptr = alloca %nyx_string*
  store %nyx_string* %std_dir.param, %nyx_string** %std_dir.ptr
  %filename.ptr = alloca %nyx_string*
  store %nyx_string* %filename.param, %nyx_string** %filename.ptr
  %3070 = load %nyx_string*, %nyx_string** %filename.ptr
  %3071 = load %nyx_string*, %nyx_string** %filename.ptr
  %3072 = call i64 @nyx_string_byte_length(%nyx_string* %3071)
  %3073 = sub i64 %3072, 3
  %3074 = call %nyx_string* @nyx_string_substring(%nyx_string* %3070, i64 0, i64 %3073)
  %3075 = alloca %nyx_string*
  store %nyx_string* %3074, %nyx_string** %3075
  %3076 = load %nyx_string*, %nyx_string** %std_dir.ptr
  %3077 = getelementptr [2 x i8], [2 x i8]* @.str439, i32 0, i32 0
  %3078 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str439.c, i8* %3077)
  %3079 = call %nyx_string* @nyx_string_concat(%nyx_string* %3076, %nyx_string* %3078)
  %3080 = load %nyx_string*, %nyx_string** %filename.ptr
  %3081 = call %nyx_string* @nyx_string_concat(%nyx_string* %3079, %nyx_string* %3080)
  %3082 = call i8* @nyx_string_to_cstr(%nyx_string* %3081)
  %3083 = call %nyx_string* @nyx_read_file(i8* %3082)
  %3084 = alloca %nyx_string*
  store %nyx_string* %3083, %nyx_string** %3084
  %3085 = load %nyx_string*, %nyx_string** %3084
  %3086 = getelementptr [2 x i8], [2 x i8]* @.str440, i32 0, i32 0
  %3087 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str440.c, i8* %3086)
  %3088 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3085, %nyx_string* %3087)
  %3089 = alloca { i64, i8* }*
  store { i64, i8* }* %3088, { i64, i8* }** %3089
  %3090 = getelementptr [1 x i8], [1 x i8]* @.str441, i32 0, i32 0
  %3091 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str441.c, i8* %3090)
  %3092 = alloca %nyx_string*
  store %nyx_string* %3091, %nyx_string** %3092
  %3093 = getelementptr [1 x i8], [1 x i8]* @.str442, i32 0, i32 0
  %3094 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str442.c, i8* %3093)
  %3095 = alloca %nyx_string*
  store %nyx_string* %3094, %nyx_string** %3095
  %3096 = alloca i64
  store i64 0, i64* %3096
  %3097 = alloca i64
  store i64 0, i64* %3097
  %3098 = getelementptr [4 x i8], [4 x i8]* @.str443, i32 0, i32 0
  %3099 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str443.c, i8* %3098)
  %3100 = alloca %nyx_string*
  store %nyx_string* %3099, %nyx_string** %3100
  %3101 = getelementptr [1 x i8], [1 x i8]* @.str444, i32 0, i32 0
  %3102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str444.c, i8* %3101)
  %3103 = alloca %nyx_string*
  store %nyx_string* %3102, %nyx_string** %3103
  %3104 = getelementptr [2 x i8], [2 x i8]* @.str445, i32 0, i32 0
  %3105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str445.c, i8* %3104)
  %3106 = alloca %nyx_string*
  store %nyx_string* %3105, %nyx_string** %3106
  %3107 = getelementptr [8 x i8], [8 x i8]* @.str446, i32 0, i32 0
  %3108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str446.c, i8* %3107)
  %3109 = alloca %nyx_string*
  store %nyx_string* %3108, %nyx_string** %3109
  %3110 = getelementptr [11 x i8], [11 x i8]* @.str447, i32 0, i32 0
  %3111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str447.c, i8* %3110)
  %3112 = alloca %nyx_string*
  store %nyx_string* %3111, %nyx_string** %3112
  %3113 = getelementptr [4 x i8], [4 x i8]* @.str448, i32 0, i32 0
  %3114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str448.c, i8* %3113)
  %3115 = alloca %nyx_string*
  store %nyx_string* %3114, %nyx_string** %3115
  %3116 = getelementptr [2 x i8], [2 x i8]* @.str449, i32 0, i32 0
  %3117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str449.c, i8* %3116)
  %3118 = alloca %nyx_string*
  store %nyx_string* %3117, %nyx_string** %3118
  %3119 = getelementptr [6 x i8], [6 x i8]* @.str450, i32 0, i32 0
  %3120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str450.c, i8* %3119)
  %3121 = alloca %nyx_string*
  store %nyx_string* %3120, %nyx_string** %3121
  %3122 = getelementptr [2 x i8], [2 x i8]* @.str451, i32 0, i32 0
  %3123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str451.c, i8* %3122)
  %3124 = alloca %nyx_string*
  store %nyx_string* %3123, %nyx_string** %3124
  br label %while_cond619
while_cond619:
  %3125 = load i64, i64* %3097
  %3126 = load { i64, i8* }*, { i64, i8* }** %3089
  %3127 = call i64 @nyx_array_length({ i64, i8* }* %3126)
  %3128 = icmp slt i64 %3125, %3127
  br i1 %3128, label %while_body620, label %while_end621
while_body620:
  %3129 = load { i64, i8* }*, { i64, i8* }** %3089
  %3130 = load i64, i64* %3097
  %3131 = call i64 @nyx_array_get({ i64, i8* }* %3129, i64 %3130)
  %3132 = inttoptr i64 %3131 to %nyx_string*
  %3133 = alloca %nyx_string*
  store %nyx_string* %3132, %nyx_string** %3133
  %3134 = load %nyx_string*, %nyx_string** %3133
  %3135 = call %nyx_string* @nyx_string_trim(%nyx_string* %3134)
  %3136 = alloca %nyx_string*
  store %nyx_string* %3135, %nyx_string** %3136
  %3137 = load %nyx_string*, %nyx_string** %3136
  %3138 = load %nyx_string*, %nyx_string** %3100
  %3139 = call i1 @nyx_string_starts_with(%nyx_string* %3137, %nyx_string* %3138)
  br i1 %3139, label %then622, label %else623
then622:
  %3140 = load %nyx_string*, %nyx_string** %3136
  %3141 = load %nyx_string*, %nyx_string** %3136
  %3142 = call i64 @nyx_string_byte_length(%nyx_string* %3141)
  %3143 = call %nyx_string* @nyx_string_substring(%nyx_string* %3140, i64 3, i64 %3142)
  %3144 = alloca %nyx_string*
  store %nyx_string* %3143, %nyx_string** %3144
  %3145 = load %nyx_string*, %nyx_string** %3144
  %3146 = call %nyx_string* @nyx_string_trim(%nyx_string* %3145)
  %3147 = alloca %nyx_string*
  store %nyx_string* %3146, %nyx_string** %3147
  %3148 = load %nyx_string*, %nyx_string** %3095
  %3149 = load %nyx_string*, %nyx_string** %3103
  %3150 = call i1 @nyx_string_equals(%nyx_string* %3148, %nyx_string* %3149)
  br i1 %3150, label %then625, label %else626
then625:
  %3151 = load %nyx_string*, %nyx_string** %3147
  store %nyx_string* %3151, %nyx_string** %3095
  br label %merge627
else626:
  %3152 = load %nyx_string*, %nyx_string** %3095
  %3153 = load %nyx_string*, %nyx_string** %3106
  %3154 = call %nyx_string* @nyx_string_concat(%nyx_string* %3152, %nyx_string* %3153)
  %3155 = load %nyx_string*, %nyx_string** %3147
  %3156 = call %nyx_string* @nyx_string_concat(%nyx_string* %3154, %nyx_string* %3155)
  store %nyx_string* %3156, %nyx_string** %3095
  br label %merge627
merge627:
  br label %merge624
else623:
  %3157 = alloca i1
  store i1 true, i1* %3157
  %3158 = load %nyx_string*, %nyx_string** %3136
  %3159 = load %nyx_string*, %nyx_string** %3109
  %3160 = call i1 @nyx_string_starts_with(%nyx_string* %3158, %nyx_string* %3159)
  br i1 %3160, label %sc_or_end629, label %sc_or_rhs628
sc_or_rhs628:
  %3161 = load %nyx_string*, %nyx_string** %3136
  %3162 = load %nyx_string*, %nyx_string** %3112
  %3163 = call i1 @nyx_string_starts_with(%nyx_string* %3161, %nyx_string* %3162)
  store i1 %3163, i1* %3157
  br label %sc_or_end629
sc_or_end629:
  %3164 = load i1, i1* %3157
  %3165 = alloca i1
  store i1 %3164, i1* %3165
  %3166 = load i1, i1* %3165
  br i1 %3166, label %then630, label %else631
then630:
  %3167 = load %nyx_string*, %nyx_string** %3136
  %3168 = alloca %nyx_string*
  store %nyx_string* %3167, %nyx_string** %3168
  %3169 = sub i64 0, 1
  %3170 = alloca i64
  store i64 %3169, i64* %3170
  %3171 = alloca i64
  store i64 0, i64* %3171
  br label %while_cond633
while_cond633:
  %3172 = load i64, i64* %3171
  %3173 = load %nyx_string*, %nyx_string** %3168
  %3174 = call i64 @nyx_string_byte_length(%nyx_string* %3173)
  %3175 = icmp slt i64 %3172, %3174
  br i1 %3175, label %while_body634, label %while_end635
while_body634:
  %3176 = load %nyx_string*, %nyx_string** %3168
  %3177 = load i64, i64* %3171
  %3178 = call i8 @nyx_string_char_at(%nyx_string* %3176, i64 %3177)
  %3179 = zext i8 %3178 to i64
  %3180 = trunc i64 %3179 to i8
  %3181 = alloca i8
  store i8 %3180, i8* %3181
  %3182 = alloca i1
  store i1 false, i1* %3182
  %3183 = load i8, i8* %3181
  %3184 = getelementptr [1 x i8], [1 x i8]* @.str452, i32 0, i32 0
  %3185 = load i8, i8* %3184
  %3186 = zext i8 %3185 to i64
  %3187 = zext i8 %3183 to i64
  %3188 = icmp eq i64 %3187, %3186
  br i1 %3188, label %sc_and_rhs636, label %sc_and_end637
sc_and_rhs636:
  %3189 = load i64, i64* %3170
  %3190 = sub i64 0, 1
  %3191 = icmp eq i64 %3189, %3190
  store i1 %3191, i1* %3182
  br label %sc_and_end637
sc_and_end637:
  %3192 = load i1, i1* %3182
  br i1 %3192, label %then638, label %else639
then638:
  %3193 = load i64, i64* %3171
  store i64 %3193, i64* %3170
  br label %merge640
else639:
  br label %merge640
merge640:
  %3194 = load i64, i64* %3171
  %3195 = add i64 %3194, 1
  store i64 %3195, i64* %3171
  br label %while_cond633
while_end635:
  %3196 = load i64, i64* %3170
  %3197 = icmp sge i64 %3196, 0
  br i1 %3197, label %then641, label %else642
then641:
  %3198 = load %nyx_string*, %nyx_string** %3168
  %3199 = load i64, i64* %3170
  %3200 = call %nyx_string* @nyx_string_substring(%nyx_string* %3198, i64 0, i64 %3199)
  store %nyx_string* %3200, %nyx_string** %3168
  br label %merge643
else642:
  br label %merge643
merge643:
  %3201 = load %nyx_string*, %nyx_string** %3168
  %3202 = call %nyx_string* @nyx_string_trim(%nyx_string* %3201)
  %3203 = alloca %nyx_string*
  store %nyx_string* %3202, %nyx_string** %3203
  %3204 = load %nyx_string*, %nyx_string** %3092
  %3205 = load %nyx_string*, %nyx_string** %3115
  %3206 = call %nyx_string* @nyx_string_concat(%nyx_string* %3204, %nyx_string* %3205)
  %3207 = load %nyx_string*, %nyx_string** %3203
  %3208 = call %nyx_string* @nyx_string_concat(%nyx_string* %3206, %nyx_string* %3207)
  %3209 = load %nyx_string*, %nyx_string** %3118
  %3210 = call %nyx_string* @nyx_string_concat(%nyx_string* %3208, %nyx_string* %3209)
  store %nyx_string* %3210, %nyx_string** %3092
  %3211 = load %nyx_string*, %nyx_string** %3095
  %3212 = load %nyx_string*, %nyx_string** %3103
  %3213 = call i1 @nyx_string_equals(%nyx_string* %3211, %nyx_string* %3212)
  %3214 = xor i1 %3213, true
  br i1 %3214, label %then644, label %else645
then644:
  %3215 = load %nyx_string*, %nyx_string** %3092
  %3216 = load %nyx_string*, %nyx_string** %3121
  %3217 = call %nyx_string* @nyx_string_concat(%nyx_string* %3215, %nyx_string* %3216)
  %3218 = load %nyx_string*, %nyx_string** %3095
  %3219 = call %nyx_string* @nyx_string_concat(%nyx_string* %3217, %nyx_string* %3218)
  store %nyx_string* %3219, %nyx_string** %3092
  br label %merge646
else645:
  br label %merge646
merge646:
  %3220 = load %nyx_string*, %nyx_string** %3092
  %3221 = load %nyx_string*, %nyx_string** %3124
  %3222 = call %nyx_string* @nyx_string_concat(%nyx_string* %3220, %nyx_string* %3221)
  store %nyx_string* %3222, %nyx_string** %3092
  %3223 = load i64, i64* %3096
  %3224 = add i64 %3223, 1
  store i64 %3224, i64* %3096
  br label %merge632
else631:
  br label %merge632
merge632:
  %3225 = load %nyx_string*, %nyx_string** %3103
  store %nyx_string* %3225, %nyx_string** %3095
  br label %merge624
merge624:
  %3226 = load i64, i64* %3097
  %3227 = add i64 %3226, 1
  store i64 %3227, i64* %3097
  br label %while_cond619
while_end621:
  %3228 = load i64, i64* %3096
  %3229 = icmp eq i64 %3228, 0
  br i1 %3229, label %then647, label %else648
then647:
  %3230 = getelementptr [1 x i8], [1 x i8]* @.str453, i32 0, i32 0
  %3231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str453.c, i8* %3230)
  ret %nyx_string* %3231
else648:
  br label %merge649
merge649:
  %3232 = getelementptr [10 x i8], [10 x i8]* @.str454, i32 0, i32 0
  %3233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str454.c, i8* %3232)
  %3234 = load %nyx_string*, %nyx_string** %3075
  %3235 = call %nyx_string* @nyx_string_concat(%nyx_string* %3233, %nyx_string* %3234)
  %3236 = getelementptr [4 x i8], [4 x i8]* @.str455, i32 0, i32 0
  %3237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str455.c, i8* %3236)
  %3238 = call %nyx_string* @nyx_string_concat(%nyx_string* %3235, %nyx_string* %3237)
  %3239 = alloca %nyx_string*
  store %nyx_string* %3238, %nyx_string** %3239
  %3240 = load %nyx_string*, %nyx_string** %3239
  %3241 = getelementptr [14 x i8], [14 x i8]* @.str456, i32 0, i32 0
  %3242 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str456.c, i8* %3241)
  %3243 = call %nyx_string* @nyx_string_concat(%nyx_string* %3240, %nyx_string* %3242)
  %3244 = load %nyx_string*, %nyx_string** %3075
  %3245 = call %nyx_string* @nyx_string_concat(%nyx_string* %3243, %nyx_string* %3244)
  %3246 = getelementptr [8 x i8], [8 x i8]* @.str457, i32 0, i32 0
  %3247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str457.c, i8* %3246)
  %3248 = call %nyx_string* @nyx_string_concat(%nyx_string* %3245, %nyx_string* %3247)
  %3249 = load i64, i64* %3096
  %3250 = call %nyx_string* @nyx_string_from_int(i64 %3249)
  %3251 = call %nyx_string* @nyx_string_concat(%nyx_string* %3248, %nyx_string* %3250)
  %3252 = getelementptr [14 x i8], [14 x i8]* @.str458, i32 0, i32 0
  %3253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str458.c, i8* %3252)
  %3254 = call %nyx_string* @nyx_string_concat(%nyx_string* %3251, %nyx_string* %3253)
  store %nyx_string* %3254, %nyx_string** %3239
  %3255 = load %nyx_string*, %nyx_string** %3239
  %3256 = load %nyx_string*, %nyx_string** %3092
  %3257 = call %nyx_string* @nyx_string_concat(%nyx_string* %3255, %nyx_string* %3256)
  %3258 = getelementptr [2 x i8], [2 x i8]* @.str459, i32 0, i32 0
  %3259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str459.c, i8* %3258)
  %3260 = call %nyx_string* @nyx_string_concat(%nyx_string* %3257, %nyx_string* %3259)
  store %nyx_string* %3260, %nyx_string** %3239
  %3261 = load %nyx_string*, %nyx_string** %3239
  ret %nyx_string* %3261
}

define internal i1 @run_capabilities(
%nyx_string* %out_arg.param) {
  %out_arg.ptr = alloca %nyx_string*
  store %nyx_string* %out_arg.param, %nyx_string** %out_arg.ptr
  %3262 = call %nyx_string* @capabilities_std_dir()
  %3263 = alloca %nyx_string*
  store %nyx_string* %3262, %nyx_string** %3263
  %3264 = load %nyx_string*, %nyx_string** %3263
  %3265 = getelementptr [1 x i8], [1 x i8]* @.str460, i32 0, i32 0
  %3266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str460.c, i8* %3265)
  %3267 = call i1 @nyx_string_equals(%nyx_string* %3264, %nyx_string* %3266)
  br i1 %3267, label %then650, label %else651
then650:
  %3268 = getelementptr [71 x i8], [71 x i8]* @.str461, i32 0, i32 0
  %3269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str461.c, i8* %3268)
  %3270 = call i8* @nyx_string_to_cstr(%nyx_string* %3269)
  call void @nyx_print_string(i8* %3270)
  ret i1 0
else651:
  br label %merge652
merge652:
  %3271 = load %nyx_string*, %nyx_string** %3263
  %3272 = call i8* @nyx_string_to_cstr(%nyx_string* %3271)
  %3273 = call { i64, i8* }* @nyx_readdir(i8* %3272)
  %3274 = alloca { i64, i8* }*
  store { i64, i8* }* %3273, { i64, i8* }** %3274
  %3275 = call { i64, i8* }* @nyx_array_new_ptr()
  %3276 = getelementptr [11 x i8], [11 x i8]* @.str462, i32 0, i32 0
  %3277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str462.c, i8* %3276)
  %3278 = ptrtoint %nyx_string* %3277 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3278)
  %3279 = getelementptr [20 x i8], [20 x i8]* @.str463, i32 0, i32 0
  %3280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str463.c, i8* %3279)
  %3281 = ptrtoint %nyx_string* %3280 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3281)
  %3282 = getelementptr [23 x i8], [23 x i8]* @.str464, i32 0, i32 0
  %3283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str464.c, i8* %3282)
  %3284 = ptrtoint %nyx_string* %3283 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3284)
  %3285 = getelementptr [15 x i8], [15 x i8]* @.str465, i32 0, i32 0
  %3286 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str465.c, i8* %3285)
  %3287 = ptrtoint %nyx_string* %3286 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3287)
  %3288 = getelementptr [4 x i8], [4 x i8]* @.str466, i32 0, i32 0
  %3289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str466.c, i8* %3288)
  %3290 = ptrtoint %nyx_string* %3289 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3290)
  %3291 = getelementptr [13 x i8], [13 x i8]* @.str467, i32 0, i32 0
  %3292 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str467.c, i8* %3291)
  %3293 = ptrtoint %nyx_string* %3292 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3293)
  %3294 = getelementptr [19 x i8], [19 x i8]* @.str468, i32 0, i32 0
  %3295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str468.c, i8* %3294)
  %3296 = ptrtoint %nyx_string* %3295 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3296)
  %3297 = getelementptr [7 x i8], [7 x i8]* @.str469, i32 0, i32 0
  %3298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str469.c, i8* %3297)
  %3299 = ptrtoint %nyx_string* %3298 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3299)
  %3300 = getelementptr [16 x i8], [16 x i8]* @.str470, i32 0, i32 0
  %3301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str470.c, i8* %3300)
  %3302 = ptrtoint %nyx_string* %3301 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3302)
  %3303 = getelementptr [26 x i8], [26 x i8]* @.str471, i32 0, i32 0
  %3304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str471.c, i8* %3303)
  %3305 = ptrtoint %nyx_string* %3304 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3305)
  %3306 = getelementptr [8 x i8], [8 x i8]* @.str472, i32 0, i32 0
  %3307 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str472.c, i8* %3306)
  %3308 = ptrtoint %nyx_string* %3307 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3308)
  %3309 = getelementptr [14 x i8], [14 x i8]* @.str473, i32 0, i32 0
  %3310 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str473.c, i8* %3309)
  %3311 = ptrtoint %nyx_string* %3310 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3311)
  %3312 = getelementptr [6 x i8], [6 x i8]* @.str474, i32 0, i32 0
  %3313 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str474.c, i8* %3312)
  %3314 = ptrtoint %nyx_string* %3313 to i64
  call void @nyx_array_push({ i64, i8* }* %3275, i64 %3314)
  %3315 = alloca { i64, i8* }*
  store { i64, i8* }* %3275, { i64, i8* }** %3315
  %3316 = getelementptr [49 x i8], [49 x i8]* @.str475, i32 0, i32 0
  %3317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str475.c, i8* %3316)
  %3318 = alloca %nyx_string*
  store %nyx_string* %3317, %nyx_string** %3318
  %3319 = load %nyx_string*, %nyx_string** %3318
  %3320 = getelementptr [19 x i8], [19 x i8]* @.str476, i32 0, i32 0
  %3321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str476.c, i8* %3320)
  %3322 = call %nyx_string* @nyx_string_concat(%nyx_string* %3319, %nyx_string* %3321)
  %3323 = call %nyx_string* @toolchain_version()
  %3324 = call %nyx_string* @nyx_string_concat(%nyx_string* %3322, %nyx_string* %3323)
  %3325 = getelementptr [6 x i8], [6 x i8]* @.str477, i32 0, i32 0
  %3326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str477.c, i8* %3325)
  %3327 = call %nyx_string* @nyx_string_concat(%nyx_string* %3324, %nyx_string* %3326)
  store %nyx_string* %3327, %nyx_string** %3318
  %3328 = load %nyx_string*, %nyx_string** %3318
  %3329 = getelementptr [103 x i8], [103 x i8]* @.str478, i32 0, i32 0
  %3330 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str478.c, i8* %3329)
  %3331 = call %nyx_string* @nyx_string_concat(%nyx_string* %3328, %nyx_string* %3330)
  store %nyx_string* %3331, %nyx_string** %3318
  %3332 = load %nyx_string*, %nyx_string** %3318
  %3333 = getelementptr [103 x i8], [103 x i8]* @.str479, i32 0, i32 0
  %3334 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str479.c, i8* %3333)
  %3335 = call %nyx_string* @nyx_string_concat(%nyx_string* %3332, %nyx_string* %3334)
  store %nyx_string* %3335, %nyx_string** %3318
  %3336 = load %nyx_string*, %nyx_string** %3318
  %3337 = getelementptr [95 x i8], [95 x i8]* @.str480, i32 0, i32 0
  %3338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str480.c, i8* %3337)
  %3339 = call %nyx_string* @nyx_string_concat(%nyx_string* %3336, %nyx_string* %3338)
  store %nyx_string* %3339, %nyx_string** %3318
  %3340 = alloca i64
  store i64 0, i64* %3340
  %3341 = getelementptr [1 x i8], [1 x i8]* @.str481, i32 0, i32 0
  %3342 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str481.c, i8* %3341)
  %3343 = alloca %nyx_string*
  store %nyx_string* %3342, %nyx_string** %3343
  %3344 = getelementptr [4 x i8], [4 x i8]* @.str482, i32 0, i32 0
  %3345 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str482.c, i8* %3344)
  %3346 = alloca %nyx_string*
  store %nyx_string* %3345, %nyx_string** %3346
  %3347 = getelementptr [6 x i8], [6 x i8]* @.str483, i32 0, i32 0
  %3348 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str483.c, i8* %3347)
  %3349 = alloca %nyx_string*
  store %nyx_string* %3348, %nyx_string** %3349
  %3350 = getelementptr [4 x i8], [4 x i8]* @.str484, i32 0, i32 0
  %3351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str484.c, i8* %3350)
  %3352 = alloca %nyx_string*
  store %nyx_string* %3351, %nyx_string** %3352
  %3353 = getelementptr [3 x i8], [3 x i8]* @.str485, i32 0, i32 0
  %3354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str485.c, i8* %3353)
  %3355 = alloca %nyx_string*
  store %nyx_string* %3354, %nyx_string** %3355
  br label %while_cond653
while_cond653:
  %3356 = load i64, i64* %3340
  %3357 = load { i64, i8* }*, { i64, i8* }** %3315
  %3358 = call i64 @nyx_array_length({ i64, i8* }* %3357)
  %3359 = icmp slt i64 %3356, %3358
  br i1 %3359, label %while_body654, label %while_end655
while_body654:
  %3360 = load { i64, i8* }*, { i64, i8* }** %3315
  %3361 = load i64, i64* %3340
  %3362 = call i64 @nyx_array_get({ i64, i8* }* %3360, i64 %3361)
  %3363 = inttoptr i64 %3362 to %nyx_string*
  %3364 = alloca %nyx_string*
  store %nyx_string* %3363, %nyx_string** %3364
  %3365 = load %nyx_string*, %nyx_string** %3343
  %3366 = alloca %nyx_string*
  store %nyx_string* %3365, %nyx_string** %3366
  %3367 = alloca i64
  store i64 0, i64* %3367
  br label %while_cond656
while_cond656:
  %3368 = load i64, i64* %3367
  %3369 = load { i64, i8* }*, { i64, i8* }** %3274
  %3370 = call i64 @nyx_array_length({ i64, i8* }* %3369)
  %3371 = icmp slt i64 %3368, %3370
  br i1 %3371, label %while_body657, label %while_end658
while_body657:
  %3372 = load { i64, i8* }*, { i64, i8* }** %3274
  %3373 = load i64, i64* %3367
  %3374 = call i64 @nyx_array_get({ i64, i8* }* %3372, i64 %3373)
  %3375 = inttoptr i64 %3374 to %nyx_string*
  %3376 = alloca %nyx_string*
  store %nyx_string* %3375, %nyx_string** %3376
  %3377 = load %nyx_string*, %nyx_string** %3376
  %3378 = load %nyx_string*, %nyx_string** %3346
  %3379 = call i1 @nyx_string_ends_with(%nyx_string* %3377, %nyx_string* %3378)
  br i1 %3379, label %then659, label %else660
then659:
  %3380 = load %nyx_string*, %nyx_string** %3376
  %3381 = load %nyx_string*, %nyx_string** %3376
  %3382 = call i64 @nyx_string_byte_length(%nyx_string* %3381)
  %3383 = sub i64 %3382, 3
  %3384 = call %nyx_string* @nyx_string_substring(%nyx_string* %3380, i64 0, i64 %3383)
  %3385 = alloca %nyx_string*
  store %nyx_string* %3384, %nyx_string** %3385
  %3386 = load %nyx_string*, %nyx_string** %3385
  %3387 = call %nyx_string* @module_category(%nyx_string* %3386)
  %3388 = alloca %nyx_string*
  store %nyx_string* %3387, %nyx_string** %3388
  %3389 = load %nyx_string*, %nyx_string** %3388
  %3390 = load %nyx_string*, %nyx_string** %3343
  %3391 = call i1 @nyx_string_equals(%nyx_string* %3389, %nyx_string* %3390)
  br i1 %3391, label %then662, label %else663
then662:
  %3392 = load %nyx_string*, %nyx_string** %3349
  store %nyx_string* %3392, %nyx_string** %3388
  br label %merge664
else663:
  br label %merge664
merge664:
  %3393 = load %nyx_string*, %nyx_string** %3388
  %3394 = load %nyx_string*, %nyx_string** %3364
  %3395 = call i1 @nyx_string_equals(%nyx_string* %3393, %nyx_string* %3394)
  br i1 %3395, label %then665, label %else666
then665:
  %3396 = load %nyx_string*, %nyx_string** %3263
  %3397 = load %nyx_string*, %nyx_string** %3376
  %3398 = call %nyx_string* @capabilities_module_section(%nyx_string* %3396, %nyx_string* %3397)
  %3399 = alloca %nyx_string*
  store %nyx_string* %3398, %nyx_string** %3399
  %3400 = load %nyx_string*, %nyx_string** %3399
  %3401 = load %nyx_string*, %nyx_string** %3343
  %3402 = call i1 @nyx_string_equals(%nyx_string* %3400, %nyx_string* %3401)
  %3403 = xor i1 %3402, true
  br i1 %3403, label %then668, label %else669
then668:
  %3404 = load %nyx_string*, %nyx_string** %3366
  %3405 = load %nyx_string*, %nyx_string** %3399
  %3406 = call %nyx_string* @nyx_string_concat(%nyx_string* %3404, %nyx_string* %3405)
  store %nyx_string* %3406, %nyx_string** %3366
  br label %merge670
else669:
  br label %merge670
merge670:
  br label %merge667
else666:
  br label %merge667
merge667:
  br label %merge661
else660:
  br label %merge661
merge661:
  %3407 = load i64, i64* %3367
  %3408 = add i64 %3407, 1
  store i64 %3408, i64* %3367
  br label %while_cond656
while_end658:
  %3409 = load %nyx_string*, %nyx_string** %3366
  %3410 = load %nyx_string*, %nyx_string** %3343
  %3411 = call i1 @nyx_string_equals(%nyx_string* %3409, %nyx_string* %3410)
  %3412 = xor i1 %3411, true
  br i1 %3412, label %then671, label %else672
then671:
  %3413 = load %nyx_string*, %nyx_string** %3318
  %3414 = load %nyx_string*, %nyx_string** %3352
  %3415 = call %nyx_string* @nyx_string_concat(%nyx_string* %3413, %nyx_string* %3414)
  %3416 = load %nyx_string*, %nyx_string** %3364
  %3417 = call %nyx_string* @nyx_string_concat(%nyx_string* %3415, %nyx_string* %3416)
  %3418 = load %nyx_string*, %nyx_string** %3355
  %3419 = call %nyx_string* @nyx_string_concat(%nyx_string* %3417, %nyx_string* %3418)
  %3420 = load %nyx_string*, %nyx_string** %3366
  %3421 = call %nyx_string* @nyx_string_concat(%nyx_string* %3419, %nyx_string* %3420)
  store %nyx_string* %3421, %nyx_string** %3318
  br label %merge673
else672:
  br label %merge673
merge673:
  %3422 = load i64, i64* %3340
  %3423 = add i64 %3422, 1
  store i64 %3423, i64* %3340
  br label %while_cond653
while_end655:
  %3424 = getelementptr [16 x i8], [16 x i8]* @.str486, i32 0, i32 0
  %3425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str486.c, i8* %3424)
  %3426 = alloca %nyx_string*
  store %nyx_string* %3425, %nyx_string** %3426
  %3427 = load %nyx_string*, %nyx_string** %out_arg.ptr
  %3428 = getelementptr [1 x i8], [1 x i8]* @.str487, i32 0, i32 0
  %3429 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str487.c, i8* %3428)
  %3430 = call i1 @nyx_string_equals(%nyx_string* %3427, %nyx_string* %3429)
  %3431 = xor i1 %3430, true
  br i1 %3431, label %then674, label %else675
then674:
  %3432 = load %nyx_string*, %nyx_string** %out_arg.ptr
  store %nyx_string* %3432, %nyx_string** %3426
  br label %merge676
else675:
  br label %merge676
merge676:
  %3433 = load %nyx_string*, %nyx_string** %3426
  %3434 = load %nyx_string*, %nyx_string** %3318
  %3435 = call i8* @nyx_string_to_cstr(%nyx_string* %3433)
  %3436 = call i8* @nyx_string_to_cstr(%nyx_string* %3434)
  %3437 = call i1 @nyx_write_file(i8* %3435, i8* %3436)
  %3438 = getelementptr [32 x i8], [32 x i8]* @.str488, i32 0, i32 0
  %3439 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str488.c, i8* %3438)
  %3440 = load %nyx_string*, %nyx_string** %3263
  %3441 = call %nyx_string* @nyx_string_concat(%nyx_string* %3439, %nyx_string* %3440)
  %3442 = getelementptr [3 x i8], [3 x i8]* @.str489, i32 0, i32 0
  %3443 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str489.c, i8* %3442)
  %3444 = call %nyx_string* @nyx_string_concat(%nyx_string* %3441, %nyx_string* %3443)
  %3445 = load { i64, i8* }*, { i64, i8* }** %3274
  %3446 = call i64 @nyx_array_length({ i64, i8* }* %3445)
  %3447 = call %nyx_string* @nyx_string_from_int(i64 %3446)
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3444, %nyx_string* %3447)
  %3449 = getelementptr [22 x i8], [22 x i8]* @.str490, i32 0, i32 0
  %3450 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str490.c, i8* %3449)
  %3451 = call %nyx_string* @nyx_string_concat(%nyx_string* %3448, %nyx_string* %3450)
  %3452 = call i8* @nyx_string_to_cstr(%nyx_string* %3451)
  call void @nyx_print_string(i8* %3452)
  ret i1 1
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %3453 = call { i64, i8* }* @nyx_get_args()
  %3454 = alloca { i64, i8* }*
  store { i64, i8* }* %3453, { i64, i8* }** %3454
  %3455 = getelementptr [6 x i8], [6 x i8]* @.str491, i32 0, i32 0
  %3456 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str491.c, i8* %3455)
  %3457 = alloca %nyx_string*
  store %nyx_string* %3456, %nyx_string** %3457
  %3458 = alloca i1
  store i1 0, i1* %3458
  %3459 = getelementptr [1 x i8], [1 x i8]* @.str492, i32 0, i32 0
  %3460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str492.c, i8* %3459)
  %3461 = alloca %nyx_string*
  store %nyx_string* %3460, %nyx_string** %3461
  %3462 = load { i64, i8* }*, { i64, i8* }** %3454
  %3463 = call i64 @nyx_array_length({ i64, i8* }* %3462)
  %3464 = icmp sge i64 %3463, 2
  br i1 %3464, label %then677, label %else678
then677:
  %3465 = load { i64, i8* }*, { i64, i8* }** %3454
  %3466 = call i64 @nyx_array_get({ i64, i8* }* %3465, i64 1)
  %3467 = inttoptr i64 %3466 to %nyx_string*
  %3468 = alloca %nyx_string*
  store %nyx_string* %3467, %nyx_string** %3468
  %3469 = load %nyx_string*, %nyx_string** %3468
  store %nyx_string* %3469, %nyx_string** %3457
  br label %merge679
else678:
  br label %merge679
merge679:
  %3470 = alloca i64
  store i64 2, i64* %3470
  %3471 = getelementptr [10 x i8], [10 x i8]* @.str493, i32 0, i32 0
  %3472 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str493.c, i8* %3471)
  %3473 = alloca %nyx_string*
  store %nyx_string* %3472, %nyx_string** %3473
  %3474 = getelementptr [9 x i8], [9 x i8]* @.str494, i32 0, i32 0
  %3475 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str494.c, i8* %3474)
  %3476 = alloca %nyx_string*
  store %nyx_string* %3475, %nyx_string** %3476
  br label %while_cond680
while_cond680:
  %3477 = load i64, i64* %3470
  %3478 = load { i64, i8* }*, { i64, i8* }** %3454
  %3479 = call i64 @nyx_array_length({ i64, i8* }* %3478)
  %3480 = icmp slt i64 %3477, %3479
  br i1 %3480, label %while_body681, label %while_end682
while_body681:
  %3481 = load { i64, i8* }*, { i64, i8* }** %3454
  %3482 = load i64, i64* %3470
  %3483 = call i64 @nyx_array_get({ i64, i8* }* %3481, i64 %3482)
  %3484 = inttoptr i64 %3483 to %nyx_string*
  %3485 = alloca %nyx_string*
  store %nyx_string* %3484, %nyx_string** %3485
  %3486 = load %nyx_string*, %nyx_string** %3485
  %3487 = load %nyx_string*, %nyx_string** %3473
  %3488 = call i1 @nyx_string_equals(%nyx_string* %3486, %nyx_string* %3487)
  br i1 %3488, label %then683, label %else684
then683:
  store i1 1, i1* %3458
  br label %merge685
else684:
  br label %merge685
merge685:
  %3489 = load %nyx_string*, %nyx_string** %3485
  %3490 = load %nyx_string*, %nyx_string** %3476
  %3491 = call i1 @nyx_string_equals(%nyx_string* %3489, %nyx_string* %3490)
  br i1 %3491, label %then686, label %else687
then686:
  %3492 = load i64, i64* %3470
  %3493 = add i64 %3492, 1
  %3494 = load { i64, i8* }*, { i64, i8* }** %3454
  %3495 = call i64 @nyx_array_length({ i64, i8* }* %3494)
  %3496 = icmp slt i64 %3493, %3495
  br i1 %3496, label %then689, label %else690
then689:
  %3497 = load { i64, i8* }*, { i64, i8* }** %3454
  %3498 = load i64, i64* %3470
  %3499 = add i64 %3498, 1
  %3500 = call i64 @nyx_array_get({ i64, i8* }* %3497, i64 %3499)
  %3501 = inttoptr i64 %3500 to %nyx_string*
  %3502 = alloca %nyx_string*
  store %nyx_string* %3501, %nyx_string** %3502
  %3503 = load %nyx_string*, %nyx_string** %3502
  store %nyx_string* %3503, %nyx_string** %3461
  %3504 = load i64, i64* %3470
  %3505 = add i64 %3504, 1
  store i64 %3505, i64* %3470
  br label %merge691
else690:
  br label %merge691
merge691:
  br label %merge688
else687:
  br label %merge688
merge688:
  %3506 = load i64, i64* %3470
  %3507 = add i64 %3506, 1
  store i64 %3507, i64* %3470
  br label %while_cond680
while_end682:
  %3508 = getelementptr [6 x i8], [6 x i8]* @.str495, i32 0, i32 0
  %3509 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str495.c, i8* %3508)
  %3510 = call %nyx_string* @toolchain_version()
  %3511 = call %nyx_string* @nyx_string_concat(%nyx_string* %3509, %nyx_string* %3510)
  %3512 = getelementptr [6 x i8], [6 x i8]* @.str496, i32 0, i32 0
  %3513 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str496.c, i8* %3512)
  %3514 = call %nyx_string* @nyx_string_concat(%nyx_string* %3511, %nyx_string* %3513)
  %3515 = load %nyx_string*, %nyx_string** %3457
  %3516 = call %nyx_string* @nyx_string_concat(%nyx_string* %3514, %nyx_string* %3515)
  %3517 = call i8* @nyx_string_to_cstr(%nyx_string* %3516)
  call void @nyx_print_string(i8* %3517)
  %3518 = load %nyx_string*, %nyx_string** %3457
  %3519 = getelementptr [5 x i8], [5 x i8]* @.str497, i32 0, i32 0
  %3520 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str497.c, i8* %3519)
  %3521 = call i1 @nyx_string_equals(%nyx_string* %3518, %nyx_string* %3520)
  br i1 %3521, label %then692, label %else693
then692:
  %3522 = getelementptr [1 x i8], [1 x i8]* @.str498, i32 0, i32 0
  %3523 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str498.c, i8* %3522)
  %3524 = alloca %nyx_string*
  store %nyx_string* %3523, %nyx_string** %3524
  %3525 = load { i64, i8* }*, { i64, i8* }** %3454
  %3526 = call i64 @nyx_array_length({ i64, i8* }* %3525)
  %3527 = icmp sge i64 %3526, 3
  br i1 %3527, label %then695, label %else696
then695:
  %3528 = load { i64, i8* }*, { i64, i8* }** %3454
  %3529 = call i64 @nyx_array_get({ i64, i8* }* %3528, i64 2)
  %3530 = inttoptr i64 %3529 to %nyx_string*
  %3531 = alloca %nyx_string*
  store %nyx_string* %3530, %nyx_string** %3531
  %3532 = load %nyx_string*, %nyx_string** %3531
  store %nyx_string* %3532, %nyx_string** %3524
  br label %merge697
else696:
  br label %merge697
merge697:
  %3533 = load %nyx_string*, %nyx_string** %3524
  %3534 = call i1 @run_init(%nyx_string* %3533)
  %3535 = alloca i1
  store i1 %3534, i1* %3535
  %3536 = load i1, i1* %3535
  br i1 %3536, label %then698, label %else699
then698:
  ret i64 0
else699:
  br label %merge700
merge700:
  ret i64 1
else693:
  br label %merge694
merge694:
  %3537 = load %nyx_string*, %nyx_string** %3457
  %3538 = getelementptr [4 x i8], [4 x i8]* @.str499, i32 0, i32 0
  %3539 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str499.c, i8* %3538)
  %3540 = call i1 @nyx_string_equals(%nyx_string* %3537, %nyx_string* %3539)
  br i1 %3540, label %then701, label %else702
then701:
  %3541 = load { i64, i8* }*, { i64, i8* }** %3454
  %3542 = call i64 @nyx_array_length({ i64, i8* }* %3541)
  %3543 = icmp slt i64 %3542, 3
  br i1 %3543, label %then704, label %else705
then704:
  %3544 = getelementptr [51 x i8], [51 x i8]* @.str500, i32 0, i32 0
  %3545 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str500.c, i8* %3544)
  %3546 = call i8* @nyx_string_to_cstr(%nyx_string* %3545)
  call void @nyx_print_string(i8* %3546)
  ret i64 1
else705:
  br label %merge706
merge706:
  %3547 = load { i64, i8* }*, { i64, i8* }** %3454
  %3548 = call i64 @nyx_array_get({ i64, i8* }* %3547, i64 2)
  %3549 = inttoptr i64 %3548 to %nyx_string*
  %3550 = alloca %nyx_string*
  store %nyx_string* %3549, %nyx_string** %3550
  %3551 = getelementptr [1 x i8], [1 x i8]* @.str501, i32 0, i32 0
  %3552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str501.c, i8* %3551)
  %3553 = alloca %nyx_string*
  store %nyx_string* %3552, %nyx_string** %3553
  %3554 = load { i64, i8* }*, { i64, i8* }** %3454
  %3555 = call i64 @nyx_array_length({ i64, i8* }* %3554)
  %3556 = icmp sge i64 %3555, 5
  br i1 %3556, label %then707, label %else708
then707:
  %3557 = load { i64, i8* }*, { i64, i8* }** %3454
  %3558 = call i64 @nyx_array_get({ i64, i8* }* %3557, i64 3)
  %3559 = inttoptr i64 %3558 to %nyx_string*
  %3560 = alloca %nyx_string*
  store %nyx_string* %3559, %nyx_string** %3560
  %3561 = load %nyx_string*, %nyx_string** %3560
  %3562 = getelementptr [7 x i8], [7 x i8]* @.str502, i32 0, i32 0
  %3563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str502.c, i8* %3562)
  %3564 = call i1 @nyx_string_equals(%nyx_string* %3561, %nyx_string* %3563)
  br i1 %3564, label %then710, label %else711
then710:
  %3565 = load { i64, i8* }*, { i64, i8* }** %3454
  %3566 = call i64 @nyx_array_get({ i64, i8* }* %3565, i64 4)
  %3567 = inttoptr i64 %3566 to %nyx_string*
  %3568 = alloca %nyx_string*
  store %nyx_string* %3567, %nyx_string** %3568
  %3569 = load %nyx_string*, %nyx_string** %3568
  store %nyx_string* %3569, %nyx_string** %3553
  br label %merge712
else711:
  br label %merge712
merge712:
  br label %merge709
else708:
  br label %merge709
merge709:
  %3570 = call { i64, i8* }* @nyx_array_new_ptr()
  %3571 = alloca { i64, i8* }*
  store { i64, i8* }* %3570, { i64, i8* }** %3571
  %3572 = call { i64, i8* }* @nyx_array_new_ptr()
  %3573 = alloca { i64, i8* }*
  store { i64, i8* }* %3572, { i64, i8* }** %3573
  %3574 = getelementptr %ProjectConfig, %ProjectConfig* null, i32 1
  %3575 = ptrtoint %ProjectConfig* %3574 to i64
  %3576 = call i8* @GC_malloc(i64 %3575)
  %3577 = bitcast i8* %3576 to %ProjectConfig*
  %3578 = getelementptr [8 x i8], [8 x i8]* @.str503, i32 0, i32 0
  %3579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str503.c, i8* %3578)
  %3580 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 0
  store %nyx_string* %3579, %nyx_string** %3580
  %3581 = getelementptr [6 x i8], [6 x i8]* @.str504, i32 0, i32 0
  %3582 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str504.c, i8* %3581)
  %3583 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 1
  store %nyx_string* %3582, %nyx_string** %3583
  %3584 = getelementptr [1 x i8], [1 x i8]* @.str505, i32 0, i32 0
  %3585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str505.c, i8* %3584)
  %3586 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 2
  store %nyx_string* %3585, %nyx_string** %3586
  %3587 = getelementptr [1 x i8], [1 x i8]* @.str506, i32 0, i32 0
  %3588 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str506.c, i8* %3587)
  %3589 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 3
  store %nyx_string* %3588, %nyx_string** %3589
  %3590 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 4
  store i1 0, i1* %3590
  %3591 = getelementptr [1 x i8], [1 x i8]* @.str507, i32 0, i32 0
  %3592 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str507.c, i8* %3591)
  %3593 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 5
  store %nyx_string* %3592, %nyx_string** %3593
  %3594 = load { i64, i8* }*, { i64, i8* }** %3571
  %3595 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 6
  store { i64, i8* }* %3594, { i64, i8* }** %3595
  %3596 = load { i64, i8* }*, { i64, i8* }** %3573
  %3597 = getelementptr %ProjectConfig, %ProjectConfig* %3577, i32 0, i32 7
  store { i64, i8* }* %3596, { i64, i8* }** %3597
  %3598 = load %ProjectConfig, %ProjectConfig* %3577
  %3599 = alloca %ProjectConfig
  store %ProjectConfig %3598, %ProjectConfig* %3599
  %3600 = load %nyx_string*, %nyx_string** %3550
  %3601 = load %nyx_string*, %nyx_string** %3553
  %3602 = load %ProjectConfig, %ProjectConfig* %3599
  %3603 = call i1 @run_add(%nyx_string* %3600, %nyx_string* %3601, %ProjectConfig %3602)
  %3604 = alloca i1
  store i1 %3603, i1* %3604
  %3605 = load i1, i1* %3604
  br i1 %3605, label %then713, label %else714
then713:
  ret i64 0
else714:
  br label %merge715
merge715:
  ret i64 1
else702:
  br label %merge703
merge703:
  %3606 = load %nyx_string*, %nyx_string** %3457
  %3607 = getelementptr [7 x i8], [7 x i8]* @.str508, i32 0, i32 0
  %3608 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str508.c, i8* %3607)
  %3609 = call i1 @nyx_string_equals(%nyx_string* %3606, %nyx_string* %3608)
  br i1 %3609, label %then716, label %else717
then716:
  %3610 = getelementptr [1 x i8], [1 x i8]* @.str509, i32 0, i32 0
  %3611 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str509.c, i8* %3610)
  %3612 = alloca %nyx_string*
  store %nyx_string* %3611, %nyx_string** %3612
  %3613 = alloca i1
  store i1 0, i1* %3613
  %3614 = alloca i64
  store i64 2, i64* %3614
  %3615 = getelementptr [7 x i8], [7 x i8]* @.str510, i32 0, i32 0
  %3616 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str510.c, i8* %3615)
  %3617 = alloca %nyx_string*
  store %nyx_string* %3616, %nyx_string** %3617
  %3618 = getelementptr [10 x i8], [10 x i8]* @.str511, i32 0, i32 0
  %3619 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str511.c, i8* %3618)
  %3620 = alloca %nyx_string*
  store %nyx_string* %3619, %nyx_string** %3620
  br label %while_cond719
while_cond719:
  %3621 = load i64, i64* %3614
  %3622 = load { i64, i8* }*, { i64, i8* }** %3454
  %3623 = call i64 @nyx_array_length({ i64, i8* }* %3622)
  %3624 = icmp slt i64 %3621, %3623
  br i1 %3624, label %while_body720, label %while_end721
while_body720:
  %3625 = load { i64, i8* }*, { i64, i8* }** %3454
  %3626 = load i64, i64* %3614
  %3627 = call i64 @nyx_array_get({ i64, i8* }* %3625, i64 %3626)
  %3628 = inttoptr i64 %3627 to %nyx_string*
  %3629 = alloca %nyx_string*
  store %nyx_string* %3628, %nyx_string** %3629
  %3630 = load %nyx_string*, %nyx_string** %3629
  %3631 = load %nyx_string*, %nyx_string** %3617
  %3632 = call i1 @nyx_string_equals(%nyx_string* %3630, %nyx_string* %3631)
  br i1 %3632, label %then722, label %else723
then722:
  store i1 1, i1* %3613
  br label %merge724
else723:
  %3633 = load %nyx_string*, %nyx_string** %3629
  %3634 = load %nyx_string*, %nyx_string** %3620
  %3635 = call i1 @nyx_string_equals(%nyx_string* %3633, %nyx_string* %3634)
  %3636 = xor i1 %3635, true
  br i1 %3636, label %then725, label %else726
then725:
  %3637 = load %nyx_string*, %nyx_string** %3629
  store %nyx_string* %3637, %nyx_string** %3612
  br label %merge727
else726:
  br label %merge727
merge727:
  br label %merge724
merge724:
  %3638 = load i64, i64* %3614
  %3639 = add i64 %3638, 1
  store i64 %3639, i64* %3614
  br label %while_cond719
while_end721:
  %3640 = load %nyx_string*, %nyx_string** %3612
  %3641 = load i1, i1* %3613
  %3642 = call i1 @run_report(%nyx_string* %3640, i1 %3641)
  %3643 = alloca i1
  store i1 %3642, i1* %3643
  %3644 = load i1, i1* %3643
  br i1 %3644, label %then728, label %else729
then728:
  ret i64 0
else729:
  br label %merge730
merge730:
  ret i64 1
else717:
  br label %merge718
merge718:
  %3645 = load %nyx_string*, %nyx_string** %3457
  %3646 = getelementptr [13 x i8], [13 x i8]* @.str512, i32 0, i32 0
  %3647 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str512.c, i8* %3646)
  %3648 = call i1 @nyx_string_equals(%nyx_string* %3645, %nyx_string* %3647)
  br i1 %3648, label %then731, label %else732
then731:
  %3649 = getelementptr [1 x i8], [1 x i8]* @.str513, i32 0, i32 0
  %3650 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str513.c, i8* %3649)
  %3651 = alloca %nyx_string*
  store %nyx_string* %3650, %nyx_string** %3651
  %3652 = load { i64, i8* }*, { i64, i8* }** %3454
  %3653 = call i64 @nyx_array_length({ i64, i8* }* %3652)
  %3654 = icmp sge i64 %3653, 3
  br i1 %3654, label %then734, label %else735
then734:
  %3655 = load { i64, i8* }*, { i64, i8* }** %3454
  %3656 = call i64 @nyx_array_get({ i64, i8* }* %3655, i64 2)
  %3657 = inttoptr i64 %3656 to %nyx_string*
  %3658 = alloca %nyx_string*
  store %nyx_string* %3657, %nyx_string** %3658
  %3659 = load %nyx_string*, %nyx_string** %3658
  %3660 = getelementptr [10 x i8], [10 x i8]* @.str514, i32 0, i32 0
  %3661 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str514.c, i8* %3660)
  %3662 = call i1 @nyx_string_equals(%nyx_string* %3659, %nyx_string* %3661)
  %3663 = xor i1 %3662, true
  br i1 %3663, label %then737, label %else738
then737:
  %3664 = load %nyx_string*, %nyx_string** %3658
  store %nyx_string* %3664, %nyx_string** %3651
  br label %merge739
else738:
  br label %merge739
merge739:
  br label %merge736
else735:
  br label %merge736
merge736:
  %3665 = load %nyx_string*, %nyx_string** %3651
  %3666 = call i1 @run_capabilities(%nyx_string* %3665)
  %3667 = alloca i1
  store i1 %3666, i1* %3667
  %3668 = load i1, i1* %3667
  br i1 %3668, label %then740, label %else741
then740:
  ret i64 0
else741:
  br label %merge742
merge742:
  ret i64 1
else732:
  br label %merge733
merge733:
  %3669 = getelementptr [9 x i8], [9 x i8]* @.str515, i32 0, i32 0
  %3670 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str515.c, i8* %3669)
  %3671 = call i8* @nyx_string_to_cstr(%nyx_string* %3670)
  %3672 = call i1 @nyx_file_exists(i8* %3671)
  %3673 = xor i1 %3672, true
  br i1 %3673, label %then743, label %else744
then743:
  %3674 = getelementptr [47 x i8], [47 x i8]* @.str516, i32 0, i32 0
  %3675 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str516.c, i8* %3674)
  %3676 = call i8* @nyx_string_to_cstr(%nyx_string* %3675)
  call void @nyx_print_string(i8* %3676)
  %3677 = getelementptr [24 x i8], [24 x i8]* @.str517, i32 0, i32 0
  %3678 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str517.c, i8* %3677)
  %3679 = call i8* @nyx_string_to_cstr(%nyx_string* %3678)
  call void @nyx_print_string(i8* %3679)
  %3680 = getelementptr [12 x i8], [12 x i8]* @.str518, i32 0, i32 0
  %3681 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str518.c, i8* %3680)
  %3682 = call i8* @nyx_string_to_cstr(%nyx_string* %3681)
  call void @nyx_print_string(i8* %3682)
  %3683 = getelementptr [17 x i8], [17 x i8]* @.str519, i32 0, i32 0
  %3684 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str519.c, i8* %3683)
  %3685 = call i8* @nyx_string_to_cstr(%nyx_string* %3684)
  call void @nyx_print_string(i8* %3685)
  %3686 = getelementptr [20 x i8], [20 x i8]* @.str520, i32 0, i32 0
  %3687 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str520.c, i8* %3686)
  %3688 = call i8* @nyx_string_to_cstr(%nyx_string* %3687)
  call void @nyx_print_string(i8* %3688)
  %3689 = getelementptr [23 x i8], [23 x i8]* @.str521, i32 0, i32 0
  %3690 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str521.c, i8* %3689)
  %3691 = call i8* @nyx_string_to_cstr(%nyx_string* %3690)
  call void @nyx_print_string(i8* %3691)
  ret i64 1
else744:
  br label %merge745
merge745:
  %3692 = getelementptr [9 x i8], [9 x i8]* @.str522, i32 0, i32 0
  %3693 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str522.c, i8* %3692)
  %3694 = call i8* @nyx_string_to_cstr(%nyx_string* %3693)
  %3695 = call %nyx_string* @nyx_read_file(i8* %3694)
  %3696 = alloca %nyx_string*
  store %nyx_string* %3695, %nyx_string** %3696
  %3697 = load %nyx_string*, %nyx_string** %3696
  %3698 = call %ProjectConfig @parse_toml(%nyx_string* %3697)
  %3699 = alloca %ProjectConfig
  store %ProjectConfig %3698, %ProjectConfig* %3699
  %3700 = getelementptr %ProjectConfig, %ProjectConfig* %3699, i32 0, i32 0
  %3701 = load %nyx_string*, %nyx_string** %3700
  %3702 = getelementptr [1 x i8], [1 x i8]* @.str523, i32 0, i32 0
  %3703 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str523.c, i8* %3702)
  %3704 = call i1 @nyx_string_equals(%nyx_string* %3701, %nyx_string* %3703)
  br i1 %3704, label %then746, label %else747
then746:
  %3705 = getelementptr [45 x i8], [45 x i8]* @.str524, i32 0, i32 0
  %3706 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str524.c, i8* %3705)
  %3707 = call i8* @nyx_string_to_cstr(%nyx_string* %3706)
  call void @nyx_print_string(i8* %3707)
  ret i64 1
else747:
  br label %merge748
merge748:
  %3708 = load %nyx_string*, %nyx_string** %3457
  %3709 = getelementptr [5 x i8], [5 x i8]* @.str525, i32 0, i32 0
  %3710 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str525.c, i8* %3709)
  %3711 = call i1 @nyx_string_equals(%nyx_string* %3708, %nyx_string* %3710)
  br i1 %3711, label %then749, label %else750
then749:
  %3712 = load %ProjectConfig, %ProjectConfig* %3699
  %3713 = call i64 @print_info(%ProjectConfig %3712)
  ret i64 0
else750:
  br label %merge751
merge751:
  %3714 = load %nyx_string*, %nyx_string** %3457
  %3715 = getelementptr [6 x i8], [6 x i8]* @.str526, i32 0, i32 0
  %3716 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str526.c, i8* %3715)
  %3717 = call i1 @nyx_string_equals(%nyx_string* %3714, %nyx_string* %3716)
  br i1 %3717, label %then752, label %else753
then752:
  %3718 = load %ProjectConfig, %ProjectConfig* %3699
  %3719 = load i1, i1* %3458
  %3720 = load %nyx_string*, %nyx_string** %3461
  %3721 = call i1 @run_build(%ProjectConfig %3718, i1 %3719, %nyx_string* %3720)
  %3722 = alloca i1
  store i1 %3721, i1* %3722
  %3723 = load i1, i1* %3722
  br i1 %3723, label %then755, label %else756
then755:
  %3724 = load %ProjectConfig, %ProjectConfig* %3699
  %3725 = call i64 @write_lockfile(%ProjectConfig %3724)
  %3726 = getelementptr [15 x i8], [15 x i8]* @.str527, i32 0, i32 0
  %3727 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str527.c, i8* %3726)
  %3728 = call i8* @nyx_string_to_cstr(%nyx_string* %3727)
  call void @nyx_print_string(i8* %3728)
  ret i64 0
else756:
  br label %merge757
merge757:
  ret i64 1
else753:
  br label %merge754
merge754:
  %3729 = load %nyx_string*, %nyx_string** %3457
  %3730 = getelementptr [4 x i8], [4 x i8]* @.str528, i32 0, i32 0
  %3731 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str528.c, i8* %3730)
  %3732 = call i1 @nyx_string_equals(%nyx_string* %3729, %nyx_string* %3731)
  br i1 %3732, label %then758, label %else759
then758:
  %3733 = load %ProjectConfig, %ProjectConfig* %3699
  %3734 = load %nyx_string*, %nyx_string** %3461
  %3735 = call i1 @run_build(%ProjectConfig %3733, i1 0, %nyx_string* %3734)
  %3736 = alloca i1
  store i1 %3735, i1* %3736
  %3737 = load i1, i1* %3736
  br i1 %3737, label %then761, label %else762
then761:
  %3738 = load %ProjectConfig, %ProjectConfig* %3699
  %3739 = call i64 @write_lockfile(%ProjectConfig %3738)
  %3740 = getelementptr [3 x i8], [3 x i8]* @.str529, i32 0, i32 0
  %3741 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str529.c, i8* %3740)
  %3742 = getelementptr %ProjectConfig, %ProjectConfig* %3699, i32 0, i32 0
  %3743 = load %nyx_string*, %nyx_string** %3742
  %3744 = call %nyx_string* @nyx_string_concat(%nyx_string* %3741, %nyx_string* %3743)
  %3745 = call i8* @nyx_string_to_cstr(%nyx_string* %3744)
  %3746 = call i64 @nyx_exec(i8* %3745)
  %3747 = alloca i64
  store i64 %3746, i64* %3747
  %3748 = load i64, i64* %3747
  ret i64 %3748
else762:
  br label %merge763
merge763:
  ret i64 1
else759:
  br label %merge760
merge760:
  %3749 = getelementptr [24 x i8], [24 x i8]* @.str530, i32 0, i32 0
  %3750 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str530.c, i8* %3749)
  %3751 = load %nyx_string*, %nyx_string** %3457
  %3752 = call %nyx_string* @nyx_string_concat(%nyx_string* %3750, %nyx_string* %3751)
  %3753 = call i8* @nyx_string_to_cstr(%nyx_string* %3752)
  call void @nyx_print_string(i8* %3753)
  %3754 = getelementptr [88 x i8], [88 x i8]* @.str531, i32 0, i32 0
  %3755 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str531.c, i8* %3754)
  %3756 = call i8* @nyx_string_to_cstr(%nyx_string* %3755)
  call void @nyx_print_string(i8* %3756)
  ret i64 1
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %3757 = getelementptr [65 x i8], [65 x i8]* @.str.init.0, i32 0, i32 0
  %3758 = call %nyx_string* @nyx_string_from_cstr(i8* %3757)
  store %nyx_string* %3758, %nyx_string** @__b64_chars
  %3759 = getelementptr [65 x i8], [65 x i8]* @.str.init.1, i32 0, i32 0
  %3760 = call %nyx_string* @nyx_string_from_cstr(i8* %3759)
  store %nyx_string* %3760, %nyx_string** @__b64url_chars
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

