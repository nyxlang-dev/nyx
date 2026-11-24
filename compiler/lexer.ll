source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Token = type { %nyx_string*, %nyx_string*, i64, i64 }

@.str0 = private unnamed_addr constant [4 x i8] c"let\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [4 x i8] c"var\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [6 x i8] c"const\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [7 x i8] c"return\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [3 x i8] c"if\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [5 x i8] c"else\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [6 x i8] c"while\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [4 x i8] c"for\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [3 x i8] c"in\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [6 x i8] c"break\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"match\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [7 x i8] c"export\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [7 x i8] c"import\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [5 x i8] c"from\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [5 x i8] c"true\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [6 x i8] c"false\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [4 x i8] c"and\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [3 x i8] c"or\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [4 x i8] c"not\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [6 x i8] c"trait\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [5 x i8] c"test\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [7 x i8] c"extern\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [3 x i8] c"as\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [7 x i8] c"unsafe\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [7 x i8] c"static\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [4 x i8] c"asm\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [4 x i8] c"dyn\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [4 x i8] c"pub\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [7 x i8] c"module\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [6 x i8] c"where\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [4 x i8] c"try\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [6 x i8] c"catch\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [6 x i8] c"async\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [6 x i8] c"await\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [4 x i8] c"let\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [4 x i8] c"var\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [6 x i8] c"const\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [7 x i8] c"return\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [3 x i8] c"if\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [5 x i8] c"else\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [6 x i8] c"while\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [4 x i8] c"for\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [3 x i8] c"in\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [6 x i8] c"break\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [6 x i8] c"match\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [7 x i8] c"export\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [7 x i8] c"import\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [5 x i8] c"from\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [5 x i8] c"true\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [6 x i8] c"false\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [4 x i8] c"and\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [3 x i8] c"or\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [4 x i8] c"not\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [6 x i8] c"trait\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [5 x i8] c"test\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [7 x i8] c"extern\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [3 x i8] c"as\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [7 x i8] c"unsafe\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [7 x i8] c"static\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [4 x i8] c"asm\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [4 x i8] c"dyn\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [4 x i8] c"pub\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [7 x i8] c"module\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [6 x i8] c"where\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [4 x i8] c"try\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [6 x i8] c"catch\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [6 x i8] c"async\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [6 x i8] c"await\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [1 x i8] c"0"
@.str134 = private unnamed_addr constant [1 x i8] c"9"
@.str135 = private unnamed_addr constant [1 x i8] c"a"
@.str136 = private unnamed_addr constant [1 x i8] c"f"
@.str137 = private unnamed_addr constant [1 x i8] c"A"
@.str138 = private unnamed_addr constant [1 x i8] c"F"
@.str139 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [1 x i8] c"\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [1 x i8] c"\0a"
@.str142 = private unnamed_addr constant [1 x i8] c"\0a"
@.str143 = private unnamed_addr constant [1 x i8] c"\0a"
@.str144 = private unnamed_addr constant [1 x i8] c"0"
@.str145 = private unnamed_addr constant [1 x i8] c"1"
@.str146 = private unnamed_addr constant [1 x i8] c"2"
@.str147 = private unnamed_addr constant [1 x i8] c"3"
@.str148 = private unnamed_addr constant [1 x i8] c"4"
@.str149 = private unnamed_addr constant [1 x i8] c"5"
@.str150 = private unnamed_addr constant [1 x i8] c"6"
@.str151 = private unnamed_addr constant [1 x i8] c"7"
@.str152 = private unnamed_addr constant [1 x i8] c"8"
@.str153 = private unnamed_addr constant [1 x i8] c"9"
@.str154 = private unnamed_addr constant [1 x i8] c"a"
@.str155 = private unnamed_addr constant [1 x i8] c"b"
@.str156 = private unnamed_addr constant [1 x i8] c"c"
@.str157 = private unnamed_addr constant [1 x i8] c"d"
@.str158 = private unnamed_addr constant [1 x i8] c"e"
@.str159 = private unnamed_addr constant [1 x i8] c"f"
@.str160 = private unnamed_addr constant [1 x i8] c"g"
@.str161 = private unnamed_addr constant [1 x i8] c"h"
@.str162 = private unnamed_addr constant [1 x i8] c"i"
@.str163 = private unnamed_addr constant [1 x i8] c"j"
@.str164 = private unnamed_addr constant [1 x i8] c"k"
@.str165 = private unnamed_addr constant [1 x i8] c"l"
@.str166 = private unnamed_addr constant [1 x i8] c"m"
@.str167 = private unnamed_addr constant [1 x i8] c"n"
@.str168 = private unnamed_addr constant [1 x i8] c"o"
@.str169 = private unnamed_addr constant [1 x i8] c"p"
@.str170 = private unnamed_addr constant [1 x i8] c"q"
@.str171 = private unnamed_addr constant [1 x i8] c"r"
@.str172 = private unnamed_addr constant [1 x i8] c"s"
@.str173 = private unnamed_addr constant [1 x i8] c"t"
@.str174 = private unnamed_addr constant [1 x i8] c"u"
@.str175 = private unnamed_addr constant [1 x i8] c"v"
@.str176 = private unnamed_addr constant [1 x i8] c"w"
@.str177 = private unnamed_addr constant [1 x i8] c"x"
@.str178 = private unnamed_addr constant [1 x i8] c"y"
@.str179 = private unnamed_addr constant [1 x i8] c"z"
@.str180 = private unnamed_addr constant [1 x i8] c"A"
@.str181 = private unnamed_addr constant [1 x i8] c"B"
@.str182 = private unnamed_addr constant [1 x i8] c"C"
@.str183 = private unnamed_addr constant [1 x i8] c"D"
@.str184 = private unnamed_addr constant [1 x i8] c"E"
@.str185 = private unnamed_addr constant [1 x i8] c"F"
@.str186 = private unnamed_addr constant [1 x i8] c"G"
@.str187 = private unnamed_addr constant [1 x i8] c"H"
@.str188 = private unnamed_addr constant [1 x i8] c"I"
@.str189 = private unnamed_addr constant [1 x i8] c"J"
@.str190 = private unnamed_addr constant [1 x i8] c"K"
@.str191 = private unnamed_addr constant [1 x i8] c"L"
@.str192 = private unnamed_addr constant [1 x i8] c"M"
@.str193 = private unnamed_addr constant [1 x i8] c"N"
@.str194 = private unnamed_addr constant [1 x i8] c"O"
@.str195 = private unnamed_addr constant [1 x i8] c"P"
@.str196 = private unnamed_addr constant [1 x i8] c"Q"
@.str197 = private unnamed_addr constant [1 x i8] c"R"
@.str198 = private unnamed_addr constant [1 x i8] c"S"
@.str199 = private unnamed_addr constant [1 x i8] c"T"
@.str200 = private unnamed_addr constant [1 x i8] c"U"
@.str201 = private unnamed_addr constant [1 x i8] c"V"
@.str202 = private unnamed_addr constant [1 x i8] c"W"
@.str203 = private unnamed_addr constant [1 x i8] c"X"
@.str204 = private unnamed_addr constant [1 x i8] c"Y"
@.str205 = private unnamed_addr constant [1 x i8] c"Z"
@.str206 = private unnamed_addr constant [1 x i8] c"_"
@.str207 = private unnamed_addr constant [1 x i8] c"0"
@.str208 = private unnamed_addr constant [1 x i8] c"1"
@.str209 = private unnamed_addr constant [1 x i8] c"2"
@.str210 = private unnamed_addr constant [1 x i8] c"3"
@.str211 = private unnamed_addr constant [1 x i8] c"4"
@.str212 = private unnamed_addr constant [1 x i8] c"5"
@.str213 = private unnamed_addr constant [1 x i8] c"6"
@.str214 = private unnamed_addr constant [1 x i8] c"7"
@.str215 = private unnamed_addr constant [1 x i8] c"8"
@.str216 = private unnamed_addr constant [1 x i8] c"9"
@.str217 = private unnamed_addr constant [1 x i8] c"a"
@.str218 = private unnamed_addr constant [1 x i8] c"b"
@.str219 = private unnamed_addr constant [1 x i8] c"c"
@.str220 = private unnamed_addr constant [1 x i8] c"d"
@.str221 = private unnamed_addr constant [1 x i8] c"e"
@.str222 = private unnamed_addr constant [1 x i8] c"f"
@.str223 = private unnamed_addr constant [1 x i8] c"A"
@.str224 = private unnamed_addr constant [1 x i8] c"B"
@.str225 = private unnamed_addr constant [1 x i8] c"C"
@.str226 = private unnamed_addr constant [1 x i8] c"D"
@.str227 = private unnamed_addr constant [1 x i8] c"E"
@.str228 = private unnamed_addr constant [1 x i8] c"F"
@.str229 = private unnamed_addr constant [1 x i8] c"0"
@.str230 = private unnamed_addr constant [1 x i8] c"1"
@.str231 = private unnamed_addr constant [1 x i8] c"2"
@.str232 = private unnamed_addr constant [1 x i8] c"3"
@.str233 = private unnamed_addr constant [1 x i8] c"4"
@.str234 = private unnamed_addr constant [1 x i8] c"5"
@.str235 = private unnamed_addr constant [1 x i8] c"6"
@.str236 = private unnamed_addr constant [1 x i8] c"7"
@.str237 = private unnamed_addr constant [1 x i8] c"8"
@.str238 = private unnamed_addr constant [1 x i8] c"9"
@.str239 = private unnamed_addr constant [1 x i8] c"a"
@.str240 = private unnamed_addr constant [1 x i8] c"A"
@.str241 = private unnamed_addr constant [1 x i8] c"b"
@.str242 = private unnamed_addr constant [1 x i8] c"B"
@.str243 = private unnamed_addr constant [1 x i8] c"c"
@.str244 = private unnamed_addr constant [1 x i8] c"C"
@.str245 = private unnamed_addr constant [1 x i8] c"d"
@.str246 = private unnamed_addr constant [1 x i8] c"D"
@.str247 = private unnamed_addr constant [1 x i8] c"e"
@.str248 = private unnamed_addr constant [1 x i8] c"E"
@.str249 = private unnamed_addr constant [1 x i8] c"f"
@.str250 = private unnamed_addr constant [1 x i8] c"F"
@.str251 = private unnamed_addr constant [2 x i8] c"0\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c"1\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"2\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [2 x i8] c"3\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c"4\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"5\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [2 x i8] c"6\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [2 x i8] c"7\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"8\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [2 x i8] c"9\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [2 x i8] c"0\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [1 x i8] c"\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [1 x i8] c"1"
@.str264 = private unnamed_addr constant [1 x i8] c" "
@.str265 = private unnamed_addr constant [1 x i8] c"\09"
@.str266 = private unnamed_addr constant [1 x i8] c"\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [1 x i8] c"\0a"
@.str268 = private unnamed_addr constant [7 x i8] c"#line \00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [8 x i8] c"#module\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [14 x i8] c"MODULE_MARKER\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [34 x i8] c"Error: unterminated block comment\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [1 x i8] c"/"
@.str273 = private unnamed_addr constant [1 x i8] c"*"
@.str274 = private unnamed_addr constant [1 x i8] c"*"
@.str275 = private unnamed_addr constant [1 x i8] c"/"
@.str276 = private unnamed_addr constant [1 x i8] c"0"
@.str277 = private unnamed_addr constant [1 x i8] c"x"
@.str278 = private unnamed_addr constant [1 x i8] c"X"
@.str279 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [1 x i8] c"0"
@.str281 = private unnamed_addr constant [1 x i8] c"b"
@.str282 = private unnamed_addr constant [1 x i8] c"B"
@.str283 = private unnamed_addr constant [1 x i8] c"0"
@.str284 = private unnamed_addr constant [1 x i8] c"1"
@.str285 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [1 x i8] c"0"
@.str287 = private unnamed_addr constant [1 x i8] c"o"
@.str288 = private unnamed_addr constant [1 x i8] c"O"
@.str289 = private unnamed_addr constant [1 x i8] c"0"
@.str290 = private unnamed_addr constant [1 x i8] c"1"
@.str291 = private unnamed_addr constant [1 x i8] c"2"
@.str292 = private unnamed_addr constant [1 x i8] c"3"
@.str293 = private unnamed_addr constant [1 x i8] c"4"
@.str294 = private unnamed_addr constant [1 x i8] c"5"
@.str295 = private unnamed_addr constant [1 x i8] c"6"
@.str296 = private unnamed_addr constant [1 x i8] c"7"
@.str297 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [1 x i8] c"."
@.str299 = private unnamed_addr constant [2 x i8] c".\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [1 x i8] c"e"
@.str301 = private unnamed_addr constant [1 x i8] c"E"
@.str302 = private unnamed_addr constant [1 x i8] c"+"
@.str303 = private unnamed_addr constant [1 x i8] c"-"
@.str304 = private unnamed_addr constant [3 x i8] c".0\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [25 x i8] c"Error [NYX1045] (línea \00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [11 x i8] c", columna \00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [4 x i8] c"): \00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [1 x i8] c"n"
@.str323 = private unnamed_addr constant [1 x i8] c"\0a"
@.str324 = private unnamed_addr constant [1 x i8] c"t"
@.str325 = private unnamed_addr constant [1 x i8] c"\09"
@.str326 = private unnamed_addr constant [1 x i8] c"r"
@.str327 = private unnamed_addr constant [1 x i8] c"0"
@.str328 = private unnamed_addr constant [1 x i8] c"\5c"
@.str329 = private unnamed_addr constant [1 x i8] c"\22"
@.str330 = private unnamed_addr constant [1 x i8] c"'"
@.str331 = private unnamed_addr constant [1 x i8] c"$"
@.str332 = private unnamed_addr constant [1 x i8] c"x"
@.str333 = private unnamed_addr constant [65 x i8] c"`\5cx` necesita exactamente dos dígitos hex, como `\5cx41` o `\5cx1F`\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [1 x i8] c"u"
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [1 x i8] c"{"
@.str337 = private unnamed_addr constant [42 x i8] c"`\5cu` va con llaves: `\5cu{e9}`, `\5cu{1F600}`\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [1 x i8] c"}"
@.str339 = private unnamed_addr constant [51 x i8] c"`\5cu{…}` lleva solo dígitos hex y cierra con `}`\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [38 x i8] c"`\5cu{…}` lleva de 1 a 6 dígitos hex\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [53 x i8] c"`\5cu{…}` fuera de rango: el máximo es `\5cu{10FFFF}`\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [62 x i8] c"`\5cu{D800}`-`\5cu{DFFF}` son surrogates de UTF-16, no caracteres\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [67 x i8] c"un `char` es un byte: `\5cu{…}` mayor que `\5cu{7F}` va en un String\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [1 x i8] c"\22"
@.str346 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [1 x i8] c"$"
@.str348 = private unnamed_addr constant [1 x i8] c"{"
@.str349 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [2 x i8] c"+\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [2 x i8] c"(\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [1 x i8] c"\5c"
@.str355 = private unnamed_addr constant [99 x i8] c"Error: String sin cerrar (abierto con \5c\22 dentro de una interpolación — cerralo con \5c\22 también)\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [1 x i8] c"\5c"
@.str357 = private unnamed_addr constant [1 x i8] c"\22"
@.str358 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [1 x i8] c"\5c"
@.str360 = private unnamed_addr constant [1 x i8] c"\22"
@.str361 = private unnamed_addr constant [37 x i8] c"Error: unterminated multiline string\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [1 x i8] c"\22"
@.str363 = private unnamed_addr constant [1 x i8] c"\22"
@.str364 = private unnamed_addr constant [1 x i8] c"\22"
@.str365 = private unnamed_addr constant [1 x i8] c"\22"
@.str366 = private unnamed_addr constant [1 x i8] c"\22"
@.str367 = private unnamed_addr constant [1 x i8] c"\22"
@.str368 = private unnamed_addr constant [1 x i8] c"\22"
@.str369 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [1 x i8] c"\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [31 x i8] c"Error: unterminated raw string\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [1 x i8] c"\22"
@.str374 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [1 x i8] c"\22"
@.str377 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [2 x i8] c"+\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [1 x i8] c"$"
@.str381 = private unnamed_addr constant [1 x i8] c"{"
@.str382 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [2 x i8] c"+\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [2 x i8] c"+\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [2 x i8] c"(\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [1 x i8] c"\5c"
@.str390 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [2 x i8] c"'\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [1 x i8] c"'"
@.str393 = private unnamed_addr constant [2 x i8] c"c\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [1 x i8] c"\5c"
@.str395 = private unnamed_addr constant [1 x i8] c"'"
@.str396 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [1 x i8] c"\0a"
@.str399 = private unnamed_addr constant [1 x i8] c"+"
@.str400 = private unnamed_addr constant [1 x i8] c"="
@.str401 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [3 x i8] c"+=\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [2 x i8] c"+\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [1 x i8] c"-"
@.str406 = private unnamed_addr constant [1 x i8] c">"
@.str407 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [3 x i8] c"->\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [1 x i8] c"="
@.str410 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [3 x i8] c"-=\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [2 x i8] c"-\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [1 x i8] c"*"
@.str415 = private unnamed_addr constant [1 x i8] c"*"
@.str416 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [3 x i8] c"**\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [1 x i8] c"="
@.str419 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [3 x i8] c"*=\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [2 x i8] c"*\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [1 x i8] c"/"
@.str424 = private unnamed_addr constant [1 x i8] c"/"
@.str425 = private unnamed_addr constant [1 x i8] c"*"
@.str426 = private unnamed_addr constant [1 x i8] c"="
@.str427 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [3 x i8] c"/=\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [2 x i8] c"/\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [1 x i8] c"%"
@.str432 = private unnamed_addr constant [1 x i8] c"="
@.str433 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [3 x i8] c"%=\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [2 x i8] c"%\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [1 x i8] c","
@.str438 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [2 x i8] c",\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [1 x i8] c"("
@.str441 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [2 x i8] c"(\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [1 x i8] c")"
@.str444 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [2 x i8] c")\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [1 x i8] c"{"
@.str447 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [2 x i8] c"{\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [1 x i8] c"}"
@.str450 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [2 x i8] c")\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [2 x i8] c"}\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [1 x i8] c"["
@.str455 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [2 x i8] c"[\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [1 x i8] c"]"
@.str458 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [2 x i8] c"]\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [1 x i8] c":"
@.str461 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [2 x i8] c":\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [1 x i8] c"="
@.str464 = private unnamed_addr constant [1 x i8] c"="
@.str465 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [3 x i8] c"==\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [1 x i8] c">"
@.str468 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [3 x i8] c"=>\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [2 x i8] c"=\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [1 x i8] c"!"
@.str473 = private unnamed_addr constant [1 x i8] c"="
@.str474 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [3 x i8] c"!=\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [2 x i8] c"!\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [1 x i8] c"?"
@.str479 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [2 x i8] c"?\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [1 x i8] c"<"
@.str482 = private unnamed_addr constant [1 x i8] c"<"
@.str483 = private unnamed_addr constant [1 x i8] c"="
@.str484 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [4 x i8] c"<<=\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [3 x i8] c"<<\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [1 x i8] c"="
@.str489 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [3 x i8] c"<=\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [2 x i8] c"<\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [1 x i8] c">"
@.str494 = private unnamed_addr constant [1 x i8] c">"
@.str495 = private unnamed_addr constant [1 x i8] c"="
@.str496 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [4 x i8] c">>=\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [3 x i8] c">>\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [1 x i8] c"="
@.str501 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [3 x i8] c">=\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [2 x i8] c">\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [1 x i8] c"&"
@.str506 = private unnamed_addr constant [1 x i8] c"&"
@.str507 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [3 x i8] c"&&\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [1 x i8] c"="
@.str510 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [3 x i8] c"&=\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [2 x i8] c"&\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [1 x i8] c"|"
@.str515 = private unnamed_addr constant [1 x i8] c"|"
@.str516 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [3 x i8] c"||\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [1 x i8] c"="
@.str519 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [3 x i8] c"|=\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [2 x i8] c"|\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [1 x i8] c"^"
@.str524 = private unnamed_addr constant [1 x i8] c"="
@.str525 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [3 x i8] c"^=\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [2 x i8] c"^\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [1 x i8] c"~"
@.str530 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [2 x i8] c"~\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [1 x i8] c"#"
@.str533 = private unnamed_addr constant [1 x i8] c"!"
@.str534 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [2 x i8] c"#\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [1 x i8] c"."
@.str537 = private unnamed_addr constant [1 x i8] c"."
@.str538 = private unnamed_addr constant [1 x i8] c"."
@.str539 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [4 x i8] c"...\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [1 x i8] c"="
@.str542 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [4 x i8] c"..=\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [3 x i8] c"..\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [2 x i8] c".\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [1 x i8] c"\22"
@.str549 = private unnamed_addr constant [1 x i8] c"\22"
@.str550 = private unnamed_addr constant [1 x i8] c"'"
@.str551 = private unnamed_addr constant [1 x i8] c"'"
@.str552 = private unnamed_addr constant [1 x i8] c"r"
@.str553 = private unnamed_addr constant [1 x i8] c"\22"
@.str554 = private unnamed_addr constant [1 x i8] c"\5c"
@.str555 = private unnamed_addr constant [1 x i8] c"\22"
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
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
declare i64 @nyx_crc32_string(%nyx_string*)
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
declare i64 @nyx_task_cancelled()
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
declare i64 @nyx_slot_eq({ i64, i8* }*, i64, { i64, i8* }*, i64)
declare i64 @nyx_enum_eq(i8*, i8*)
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
declare i64 @nyx_slot_as_value_checked({ i64, i8* }*, i64, i8*)
declare i64 @nyx_row_cell({ i64, i8* }*, i64, i64, i8*, i8*, i64)
declare %nyx_string* @nyx_row_problema({ i64, i8* }*, i64, i8*, i8*, i64)
declare i64 @nyx_bool_text_ok(%nyx_string*)
declare i64 @nyx_int_text_ok(%nyx_string*)
declare double @nyx_slot_as_float_checked({ i64, i8* }*, i64)
declare double @nyx_slot_as_float_st({ i64, i8* }*, i64, i64)
declare double @nyx_slot_float_conv(i64, i64, i64, i64) nounwind readonly
declare i64 @nyx_slot_int_conv(i64, i64, i64) nounwind readonly
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
declare i64 @nyx_string_to_int_range(%nyx_string*, i64, i64, i64)
declare double @nyx_string_to_float_range(%nyx_string*, i64, i64, double)
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
declare i8* @GC_malloc_atomic(i64)
declare i8* @malloc(i64)
declare void @free(i8*)
declare i32 @strcmp(i8*, i8*)
declare double @pow(double, double)
declare void @nyx_assert_fail(i8*)
declare void @nyx_assert_eq_int(i64, i64, i8*)
declare void @nyx_assert_eq_str(%nyx_string*, %nyx_string*, i8*)
declare void @exit(i32)
declare void @nyx_panic(%nyx_string*)
declare void @nyx_panic_unwrap_err(%nyx_string*)
declare void @nyx_panic_unwrap_error(%nyx_string*, %nyx_string*, i64)
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

@g_lex_error_count = global i64 0

define i64 @get_lex_error_count(
) {
  %t1 = load i64, i64* @g_lex_error_count
  ret i64 %t1
}

define internal i1 @is_keyword(
%nyx_string* %word.param) {
  %word.ptr = alloca %nyx_string*
  %t2 = alloca i1
  %t3 = alloca i1
  %t4 = alloca i1
  %t5 = alloca i1
  %t6 = alloca i1
  %t7 = alloca i1
  %t8 = alloca i1
  %t9 = alloca i1
  %t10 = alloca i1
  %t11 = alloca i1
  %t12 = alloca i1
  %t13 = alloca i1
  %t14 = alloca i1
  %t15 = alloca i1
  %t16 = alloca i1
  %t17 = alloca i1
  %t18 = alloca i1
  %t19 = alloca i1
  %t20 = alloca i1
  %t21 = alloca i1
  %t22 = alloca i1
  %t23 = alloca i1
  %t24 = alloca i1
  %t25 = alloca i1
  %t26 = alloca i1
  %t27 = alloca i1
  %t28 = alloca i1
  %t29 = alloca i1
  %t30 = alloca i1
  %t31 = alloca i1
  %t32 = alloca i1
  %t33 = alloca i1
  %t34 = alloca i1
  %t35 = alloca i1
  %t36 = alloca i1
  %t37 = alloca i1
  %t38 = alloca i1
  %t39 = alloca i1
  %t40 = alloca i1
  %t41 = alloca i1
  %t42 = alloca i1
  %t43 = alloca i1
  %t44 = alloca i1
  store %nyx_string* %word.param, %nyx_string** %word.ptr
  store i1 true, i1* %t2
  store i1 true, i1* %t3
  store i1 true, i1* %t4
  store i1 true, i1* %t5
  store i1 true, i1* %t6
  store i1 true, i1* %t7
  store i1 true, i1* %t8
  store i1 true, i1* %t9
  store i1 true, i1* %t10
  store i1 true, i1* %t11
  store i1 true, i1* %t12
  store i1 true, i1* %t13
  store i1 true, i1* %t14
  store i1 true, i1* %t15
  store i1 true, i1* %t16
  store i1 true, i1* %t17
  store i1 true, i1* %t18
  store i1 true, i1* %t19
  store i1 true, i1* %t20
  store i1 true, i1* %t21
  store i1 true, i1* %t22
  store i1 true, i1* %t23
  store i1 true, i1* %t24
  store i1 true, i1* %t25
  store i1 true, i1* %t26
  store i1 true, i1* %t27
  store i1 true, i1* %t28
  store i1 true, i1* %t29
  store i1 true, i1* %t30
  store i1 true, i1* %t31
  store i1 true, i1* %t32
  store i1 true, i1* %t33
  store i1 true, i1* %t34
  store i1 true, i1* %t35
  store i1 true, i1* %t36
  store i1 true, i1* %t37
  store i1 true, i1* %t38
  store i1 true, i1* %t39
  store i1 true, i1* %t40
  store i1 true, i1* %t41
  store i1 true, i1* %t42
  store i1 true, i1* %t43
  store i1 true, i1* %t44
  %t45 = load %nyx_string*, %nyx_string** %word.ptr
  %t46 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t46, i64 3)
  %t48 = call i1 @nyx_string_equals(%nyx_string* %t45, %nyx_string* %t47)
  br i1 %t48, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %t49 = load %nyx_string*, %nyx_string** %word.ptr
  %t50 = getelementptr [4 x i8], [4 x i8]* @.str1, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t50, i64 3)
  %t52 = call i1 @nyx_string_equals(%nyx_string* %t49, %nyx_string* %t51)
  store i1 %t52, i1* %t44
  br label %sc_or_end1
sc_or_end1:
  %t53 = load i1, i1* %t44
  br i1 %t53, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %t54 = load %nyx_string*, %nyx_string** %word.ptr
  %t55 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t55, i64 5)
  %t57 = call i1 @nyx_string_equals(%nyx_string* %t54, %nyx_string* %t56)
  store i1 %t57, i1* %t43
  br label %sc_or_end3
sc_or_end3:
  %t58 = load i1, i1* %t43
  br i1 %t58, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %t59 = load %nyx_string*, %nyx_string** %word.ptr
  %t60 = getelementptr [3 x i8], [3 x i8]* @.str3, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t60, i64 2)
  %t62 = call i1 @nyx_string_equals(%nyx_string* %t59, %nyx_string* %t61)
  store i1 %t62, i1* %t42
  br label %sc_or_end5
sc_or_end5:
  %t63 = load i1, i1* %t42
  br i1 %t63, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t64 = load %nyx_string*, %nyx_string** %word.ptr
  %t65 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t65, i64 6)
  %t67 = call i1 @nyx_string_equals(%nyx_string* %t64, %nyx_string* %t66)
  store i1 %t67, i1* %t41
  br label %sc_or_end7
sc_or_end7:
  %t68 = load i1, i1* %t41
  br i1 %t68, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %t69 = load %nyx_string*, %nyx_string** %word.ptr
  %t70 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t70, i64 2)
  %t72 = call i1 @nyx_string_equals(%nyx_string* %t69, %nyx_string* %t71)
  store i1 %t72, i1* %t40
  br label %sc_or_end9
sc_or_end9:
  %t73 = load i1, i1* %t40
  br i1 %t73, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %t74 = load %nyx_string*, %nyx_string** %word.ptr
  %t75 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t75, i64 4)
  %t77 = call i1 @nyx_string_equals(%nyx_string* %t74, %nyx_string* %t76)
  store i1 %t77, i1* %t39
  br label %sc_or_end11
sc_or_end11:
  %t78 = load i1, i1* %t39
  br i1 %t78, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %t79 = load %nyx_string*, %nyx_string** %word.ptr
  %t80 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t80, i64 5)
  %t82 = call i1 @nyx_string_equals(%nyx_string* %t79, %nyx_string* %t81)
  store i1 %t82, i1* %t38
  br label %sc_or_end13
sc_or_end13:
  %t83 = load i1, i1* %t38
  br i1 %t83, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %t84 = load %nyx_string*, %nyx_string** %word.ptr
  %t85 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t85, i64 3)
  %t87 = call i1 @nyx_string_equals(%nyx_string* %t84, %nyx_string* %t86)
  store i1 %t87, i1* %t37
  br label %sc_or_end15
sc_or_end15:
  %t88 = load i1, i1* %t37
  br i1 %t88, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %t89 = load %nyx_string*, %nyx_string** %word.ptr
  %t90 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t90, i64 2)
  %t92 = call i1 @nyx_string_equals(%nyx_string* %t89, %nyx_string* %t91)
  store i1 %t92, i1* %t36
  br label %sc_or_end17
sc_or_end17:
  %t93 = load i1, i1* %t36
  br i1 %t93, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %t94 = load %nyx_string*, %nyx_string** %word.ptr
  %t95 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %t96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t95, i64 5)
  %t97 = call i1 @nyx_string_equals(%nyx_string* %t94, %nyx_string* %t96)
  store i1 %t97, i1* %t35
  br label %sc_or_end19
sc_or_end19:
  %t98 = load i1, i1* %t35
  br i1 %t98, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %t99 = load %nyx_string*, %nyx_string** %word.ptr
  %t100 = getelementptr [9 x i8], [9 x i8]* @.str11, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t100, i64 8)
  %t102 = call i1 @nyx_string_equals(%nyx_string* %t99, %nyx_string* %t101)
  store i1 %t102, i1* %t34
  br label %sc_or_end21
sc_or_end21:
  %t103 = load i1, i1* %t34
  br i1 %t103, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %t104 = load %nyx_string*, %nyx_string** %word.ptr
  %t105 = getelementptr [7 x i8], [7 x i8]* @.str12, i32 0, i32 0
  %t106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t105, i64 6)
  %t107 = call i1 @nyx_string_equals(%nyx_string* %t104, %nyx_string* %t106)
  store i1 %t107, i1* %t33
  br label %sc_or_end23
sc_or_end23:
  %t108 = load i1, i1* %t33
  br i1 %t108, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %t109 = load %nyx_string*, %nyx_string** %word.ptr
  %t110 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %t111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t110, i64 4)
  %t112 = call i1 @nyx_string_equals(%nyx_string* %t109, %nyx_string* %t111)
  store i1 %t112, i1* %t32
  br label %sc_or_end25
sc_or_end25:
  %t113 = load i1, i1* %t32
  br i1 %t113, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %t114 = load %nyx_string*, %nyx_string** %word.ptr
  %t115 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t115, i64 5)
  %t117 = call i1 @nyx_string_equals(%nyx_string* %t114, %nyx_string* %t116)
  store i1 %t117, i1* %t31
  br label %sc_or_end27
sc_or_end27:
  %t118 = load i1, i1* %t31
  br i1 %t118, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %t119 = load %nyx_string*, %nyx_string** %word.ptr
  %t120 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %t121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t120, i64 6)
  %t122 = call i1 @nyx_string_equals(%nyx_string* %t119, %nyx_string* %t121)
  store i1 %t122, i1* %t30
  br label %sc_or_end29
sc_or_end29:
  %t123 = load i1, i1* %t30
  br i1 %t123, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %t124 = load %nyx_string*, %nyx_string** %word.ptr
  %t125 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %t126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t125, i64 6)
  %t127 = call i1 @nyx_string_equals(%nyx_string* %t124, %nyx_string* %t126)
  store i1 %t127, i1* %t29
  br label %sc_or_end31
sc_or_end31:
  %t128 = load i1, i1* %t29
  br i1 %t128, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %t129 = load %nyx_string*, %nyx_string** %word.ptr
  %t130 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %t131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t130, i64 4)
  %t132 = call i1 @nyx_string_equals(%nyx_string* %t129, %nyx_string* %t131)
  store i1 %t132, i1* %t28
  br label %sc_or_end33
sc_or_end33:
  %t133 = load i1, i1* %t28
  br i1 %t133, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %t134 = load %nyx_string*, %nyx_string** %word.ptr
  %t135 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %t136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t135, i64 4)
  %t137 = call i1 @nyx_string_equals(%nyx_string* %t134, %nyx_string* %t136)
  store i1 %t137, i1* %t27
  br label %sc_or_end35
sc_or_end35:
  %t138 = load i1, i1* %t27
  br i1 %t138, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %t139 = load %nyx_string*, %nyx_string** %word.ptr
  %t140 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %t141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t140, i64 5)
  %t142 = call i1 @nyx_string_equals(%nyx_string* %t139, %nyx_string* %t141)
  store i1 %t142, i1* %t26
  br label %sc_or_end37
sc_or_end37:
  %t143 = load i1, i1* %t26
  br i1 %t143, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %t144 = load %nyx_string*, %nyx_string** %word.ptr
  %t145 = getelementptr [4 x i8], [4 x i8]* @.str20, i32 0, i32 0
  %t146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t145, i64 3)
  %t147 = call i1 @nyx_string_equals(%nyx_string* %t144, %nyx_string* %t146)
  store i1 %t147, i1* %t25
  br label %sc_or_end39
sc_or_end39:
  %t148 = load i1, i1* %t25
  br i1 %t148, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %t149 = load %nyx_string*, %nyx_string** %word.ptr
  %t150 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %t151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t150, i64 2)
  %t152 = call i1 @nyx_string_equals(%nyx_string* %t149, %nyx_string* %t151)
  store i1 %t152, i1* %t24
  br label %sc_or_end41
sc_or_end41:
  %t153 = load i1, i1* %t24
  br i1 %t153, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %t154 = load %nyx_string*, %nyx_string** %word.ptr
  %t155 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %t156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t155, i64 3)
  %t157 = call i1 @nyx_string_equals(%nyx_string* %t154, %nyx_string* %t156)
  store i1 %t157, i1* %t23
  br label %sc_or_end43
sc_or_end43:
  %t158 = load i1, i1* %t23
  br i1 %t158, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %t159 = load %nyx_string*, %nyx_string** %word.ptr
  %t160 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %t161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t160, i64 4)
  %t162 = call i1 @nyx_string_equals(%nyx_string* %t159, %nyx_string* %t161)
  store i1 %t162, i1* %t22
  br label %sc_or_end45
sc_or_end45:
  %t163 = load i1, i1* %t22
  br i1 %t163, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %t164 = load %nyx_string*, %nyx_string** %word.ptr
  %t165 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %t166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t165, i64 5)
  %t167 = call i1 @nyx_string_equals(%nyx_string* %t164, %nyx_string* %t166)
  store i1 %t167, i1* %t21
  br label %sc_or_end47
sc_or_end47:
  %t168 = load i1, i1* %t21
  br i1 %t168, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %t169 = load %nyx_string*, %nyx_string** %word.ptr
  %t170 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %t171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t170, i64 4)
  %t172 = call i1 @nyx_string_equals(%nyx_string* %t169, %nyx_string* %t171)
  store i1 %t172, i1* %t20
  br label %sc_or_end49
sc_or_end49:
  %t173 = load i1, i1* %t20
  br i1 %t173, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %t174 = load %nyx_string*, %nyx_string** %word.ptr
  %t175 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %t176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t175, i64 6)
  %t177 = call i1 @nyx_string_equals(%nyx_string* %t174, %nyx_string* %t176)
  store i1 %t177, i1* %t19
  br label %sc_or_end51
sc_or_end51:
  %t178 = load i1, i1* %t19
  br i1 %t178, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %t179 = load %nyx_string*, %nyx_string** %word.ptr
  %t180 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %t181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t180, i64 6)
  %t182 = call i1 @nyx_string_equals(%nyx_string* %t179, %nyx_string* %t181)
  store i1 %t182, i1* %t18
  br label %sc_or_end53
sc_or_end53:
  %t183 = load i1, i1* %t18
  br i1 %t183, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %t184 = load %nyx_string*, %nyx_string** %word.ptr
  %t185 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %t186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t185, i64 2)
  %t187 = call i1 @nyx_string_equals(%nyx_string* %t184, %nyx_string* %t186)
  store i1 %t187, i1* %t17
  br label %sc_or_end55
sc_or_end55:
  %t188 = load i1, i1* %t17
  br i1 %t188, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %t189 = load %nyx_string*, %nyx_string** %word.ptr
  %t190 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %t191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t190, i64 6)
  %t192 = call i1 @nyx_string_equals(%nyx_string* %t189, %nyx_string* %t191)
  store i1 %t192, i1* %t16
  br label %sc_or_end57
sc_or_end57:
  %t193 = load i1, i1* %t16
  br i1 %t193, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %t194 = load %nyx_string*, %nyx_string** %word.ptr
  %t195 = getelementptr [7 x i8], [7 x i8]* @.str30, i32 0, i32 0
  %t196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t195, i64 6)
  %t197 = call i1 @nyx_string_equals(%nyx_string* %t194, %nyx_string* %t196)
  store i1 %t197, i1* %t15
  br label %sc_or_end59
sc_or_end59:
  %t198 = load i1, i1* %t15
  br i1 %t198, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %t199 = load %nyx_string*, %nyx_string** %word.ptr
  %t200 = getelementptr [7 x i8], [7 x i8]* @.str31, i32 0, i32 0
  %t201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t200, i64 6)
  %t202 = call i1 @nyx_string_equals(%nyx_string* %t199, %nyx_string* %t201)
  store i1 %t202, i1* %t14
  br label %sc_or_end61
sc_or_end61:
  %t203 = load i1, i1* %t14
  br i1 %t203, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %t204 = load %nyx_string*, %nyx_string** %word.ptr
  %t205 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %t206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t205, i64 7)
  %t207 = call i1 @nyx_string_equals(%nyx_string* %t204, %nyx_string* %t206)
  store i1 %t207, i1* %t13
  br label %sc_or_end63
sc_or_end63:
  %t208 = load i1, i1* %t13
  br i1 %t208, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %t209 = load %nyx_string*, %nyx_string** %word.ptr
  %t210 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %t211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t210, i64 3)
  %t212 = call i1 @nyx_string_equals(%nyx_string* %t209, %nyx_string* %t211)
  store i1 %t212, i1* %t12
  br label %sc_or_end65
sc_or_end65:
  %t213 = load i1, i1* %t12
  br i1 %t213, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %t214 = load %nyx_string*, %nyx_string** %word.ptr
  %t215 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %t216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t215, i64 3)
  %t217 = call i1 @nyx_string_equals(%nyx_string* %t214, %nyx_string* %t216)
  store i1 %t217, i1* %t11
  br label %sc_or_end67
sc_or_end67:
  %t218 = load i1, i1* %t11
  br i1 %t218, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %t219 = load %nyx_string*, %nyx_string** %word.ptr
  %t220 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %t221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t220, i64 3)
  %t222 = call i1 @nyx_string_equals(%nyx_string* %t219, %nyx_string* %t221)
  store i1 %t222, i1* %t10
  br label %sc_or_end69
sc_or_end69:
  %t223 = load i1, i1* %t10
  br i1 %t223, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %t224 = load %nyx_string*, %nyx_string** %word.ptr
  %t225 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %t226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t225, i64 6)
  %t227 = call i1 @nyx_string_equals(%nyx_string* %t224, %nyx_string* %t226)
  store i1 %t227, i1* %t9
  br label %sc_or_end71
sc_or_end71:
  %t228 = load i1, i1* %t9
  br i1 %t228, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %t229 = load %nyx_string*, %nyx_string** %word.ptr
  %t230 = getelementptr [6 x i8], [6 x i8]* @.str37, i32 0, i32 0
  %t231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t230, i64 5)
  %t232 = call i1 @nyx_string_equals(%nyx_string* %t229, %nyx_string* %t231)
  store i1 %t232, i1* %t8
  br label %sc_or_end73
sc_or_end73:
  %t233 = load i1, i1* %t8
  br i1 %t233, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %t234 = load %nyx_string*, %nyx_string** %word.ptr
  %t235 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %t236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t235, i64 5)
  %t237 = call i1 @nyx_string_equals(%nyx_string* %t234, %nyx_string* %t236)
  store i1 %t237, i1* %t7
  br label %sc_or_end75
sc_or_end75:
  %t238 = load i1, i1* %t7
  br i1 %t238, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %t239 = load %nyx_string*, %nyx_string** %word.ptr
  %t240 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %t241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t240, i64 3)
  %t242 = call i1 @nyx_string_equals(%nyx_string* %t239, %nyx_string* %t241)
  store i1 %t242, i1* %t6
  br label %sc_or_end77
sc_or_end77:
  %t243 = load i1, i1* %t6
  br i1 %t243, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %t244 = load %nyx_string*, %nyx_string** %word.ptr
  %t245 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %t246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t245, i64 5)
  %t247 = call i1 @nyx_string_equals(%nyx_string* %t244, %nyx_string* %t246)
  store i1 %t247, i1* %t5
  br label %sc_or_end79
sc_or_end79:
  %t248 = load i1, i1* %t5
  br i1 %t248, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %t249 = load %nyx_string*, %nyx_string** %word.ptr
  %t250 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %t251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t250, i64 5)
  %t252 = call i1 @nyx_string_equals(%nyx_string* %t249, %nyx_string* %t251)
  store i1 %t252, i1* %t4
  br label %sc_or_end81
sc_or_end81:
  %t253 = load i1, i1* %t4
  br i1 %t253, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %t254 = load %nyx_string*, %nyx_string** %word.ptr
  %t255 = getelementptr [6 x i8], [6 x i8]* @.str42, i32 0, i32 0
  %t256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t255, i64 5)
  %t257 = call i1 @nyx_string_equals(%nyx_string* %t254, %nyx_string* %t256)
  store i1 %t257, i1* %t3
  br label %sc_or_end83
sc_or_end83:
  %t258 = load i1, i1* %t3
  br i1 %t258, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %t259 = load %nyx_string*, %nyx_string** %word.ptr
  %t260 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t260, i64 5)
  %t262 = call i1 @nyx_string_equals(%nyx_string* %t259, %nyx_string* %t261)
  store i1 %t262, i1* %t2
  br label %sc_or_end85
sc_or_end85:
  %t263 = load i1, i1* %t2
  ret i1 %t263
}

define internal %nyx_string* @keyword_to_type(
%nyx_string* %word.param) {
  %word.ptr = alloca %nyx_string*
  store %nyx_string* %word.param, %nyx_string** %word.ptr
  %t264 = load %nyx_string*, %nyx_string** %word.ptr
  %t265 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %t266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t265, i64 3)
  %t267 = call i1 @nyx_string_equals(%nyx_string* %t264, %nyx_string* %t266)
  br i1 %t267, label %then86, label %else87
then86:
  %t268 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %t269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t268, i64 3)
  ret %nyx_string* %t269
else87:
  br label %merge88
merge88:
  %t270 = load %nyx_string*, %nyx_string** %word.ptr
  %t271 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %t272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t271, i64 3)
  %t273 = call i1 @nyx_string_equals(%nyx_string* %t270, %nyx_string* %t272)
  br i1 %t273, label %then89, label %else90
then89:
  %t274 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %t275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t274, i64 3)
  ret %nyx_string* %t275
else90:
  br label %merge91
merge91:
  %t276 = load %nyx_string*, %nyx_string** %word.ptr
  %t277 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %t278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t277, i64 5)
  %t279 = call i1 @nyx_string_equals(%nyx_string* %t276, %nyx_string* %t278)
  br i1 %t279, label %then92, label %else93
then92:
  %t280 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %t281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t280, i64 5)
  ret %nyx_string* %t281
else93:
  br label %merge94
merge94:
  %t282 = load %nyx_string*, %nyx_string** %word.ptr
  %t283 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %t284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t283, i64 2)
  %t285 = call i1 @nyx_string_equals(%nyx_string* %t282, %nyx_string* %t284)
  br i1 %t285, label %then95, label %else96
then95:
  %t286 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %t287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t286, i64 2)
  ret %nyx_string* %t287
else96:
  br label %merge97
merge97:
  %t288 = load %nyx_string*, %nyx_string** %word.ptr
  %t289 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %t290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t289, i64 6)
  %t291 = call i1 @nyx_string_equals(%nyx_string* %t288, %nyx_string* %t290)
  br i1 %t291, label %then98, label %else99
then98:
  %t292 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %t293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t292, i64 6)
  ret %nyx_string* %t293
else99:
  br label %merge100
merge100:
  %t294 = load %nyx_string*, %nyx_string** %word.ptr
  %t295 = getelementptr [3 x i8], [3 x i8]* @.str54, i32 0, i32 0
  %t296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t295, i64 2)
  %t297 = call i1 @nyx_string_equals(%nyx_string* %t294, %nyx_string* %t296)
  br i1 %t297, label %then101, label %else102
then101:
  %t298 = getelementptr [3 x i8], [3 x i8]* @.str55, i32 0, i32 0
  %t299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t298, i64 2)
  ret %nyx_string* %t299
else102:
  br label %merge103
merge103:
  %t300 = load %nyx_string*, %nyx_string** %word.ptr
  %t301 = getelementptr [5 x i8], [5 x i8]* @.str56, i32 0, i32 0
  %t302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t301, i64 4)
  %t303 = call i1 @nyx_string_equals(%nyx_string* %t300, %nyx_string* %t302)
  br i1 %t303, label %then104, label %else105
then104:
  %t304 = getelementptr [5 x i8], [5 x i8]* @.str57, i32 0, i32 0
  %t305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t304, i64 4)
  ret %nyx_string* %t305
else105:
  br label %merge106
merge106:
  %t306 = load %nyx_string*, %nyx_string** %word.ptr
  %t307 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %t308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t307, i64 5)
  %t309 = call i1 @nyx_string_equals(%nyx_string* %t306, %nyx_string* %t308)
  br i1 %t309, label %then107, label %else108
then107:
  %t310 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %t311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t310, i64 5)
  ret %nyx_string* %t311
else108:
  br label %merge109
merge109:
  %t312 = load %nyx_string*, %nyx_string** %word.ptr
  %t313 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %t314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t313, i64 3)
  %t315 = call i1 @nyx_string_equals(%nyx_string* %t312, %nyx_string* %t314)
  br i1 %t315, label %then110, label %else111
then110:
  %t316 = getelementptr [4 x i8], [4 x i8]* @.str61, i32 0, i32 0
  %t317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t316, i64 3)
  ret %nyx_string* %t317
else111:
  br label %merge112
merge112:
  %t318 = load %nyx_string*, %nyx_string** %word.ptr
  %t319 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %t320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t319, i64 2)
  %t321 = call i1 @nyx_string_equals(%nyx_string* %t318, %nyx_string* %t320)
  br i1 %t321, label %then113, label %else114
then113:
  %t322 = getelementptr [3 x i8], [3 x i8]* @.str63, i32 0, i32 0
  %t323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t322, i64 2)
  ret %nyx_string* %t323
else114:
  br label %merge115
merge115:
  %t324 = load %nyx_string*, %nyx_string** %word.ptr
  %t325 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %t326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t325, i64 5)
  %t327 = call i1 @nyx_string_equals(%nyx_string* %t324, %nyx_string* %t326)
  br i1 %t327, label %then116, label %else117
then116:
  %t328 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %t329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t328, i64 5)
  ret %nyx_string* %t329
else117:
  br label %merge118
merge118:
  %t330 = load %nyx_string*, %nyx_string** %word.ptr
  %t331 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %t332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t331, i64 8)
  %t333 = call i1 @nyx_string_equals(%nyx_string* %t330, %nyx_string* %t332)
  br i1 %t333, label %then119, label %else120
then119:
  %t334 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %t335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t334, i64 8)
  ret %nyx_string* %t335
else120:
  br label %merge121
merge121:
  %t336 = load %nyx_string*, %nyx_string** %word.ptr
  %t337 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %t338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t337, i64 6)
  %t339 = call i1 @nyx_string_equals(%nyx_string* %t336, %nyx_string* %t338)
  br i1 %t339, label %then122, label %else123
then122:
  %t340 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %t341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t340, i64 6)
  ret %nyx_string* %t341
else123:
  br label %merge124
merge124:
  %t342 = load %nyx_string*, %nyx_string** %word.ptr
  %t343 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %t344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t343, i64 4)
  %t345 = call i1 @nyx_string_equals(%nyx_string* %t342, %nyx_string* %t344)
  br i1 %t345, label %then125, label %else126
then125:
  %t346 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %t347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t346, i64 4)
  ret %nyx_string* %t347
else126:
  br label %merge127
merge127:
  %t348 = load %nyx_string*, %nyx_string** %word.ptr
  %t349 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %t350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t349, i64 5)
  %t351 = call i1 @nyx_string_equals(%nyx_string* %t348, %nyx_string* %t350)
  br i1 %t351, label %then128, label %else129
then128:
  %t352 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %t353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t352, i64 5)
  ret %nyx_string* %t353
else129:
  br label %merge130
merge130:
  %t354 = load %nyx_string*, %nyx_string** %word.ptr
  %t355 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %t356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t355, i64 6)
  %t357 = call i1 @nyx_string_equals(%nyx_string* %t354, %nyx_string* %t356)
  br i1 %t357, label %then131, label %else132
then131:
  %t358 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %t359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t358, i64 6)
  ret %nyx_string* %t359
else132:
  br label %merge133
merge133:
  %t360 = load %nyx_string*, %nyx_string** %word.ptr
  %t361 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %t362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t361, i64 6)
  %t363 = call i1 @nyx_string_equals(%nyx_string* %t360, %nyx_string* %t362)
  br i1 %t363, label %then134, label %else135
then134:
  %t364 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %t365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t364, i64 6)
  ret %nyx_string* %t365
else135:
  br label %merge136
merge136:
  %t366 = load %nyx_string*, %nyx_string** %word.ptr
  %t367 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %t368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t367, i64 4)
  %t369 = call i1 @nyx_string_equals(%nyx_string* %t366, %nyx_string* %t368)
  br i1 %t369, label %then137, label %else138
then137:
  %t370 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %t371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t370, i64 4)
  ret %nyx_string* %t371
else138:
  br label %merge139
merge139:
  %t372 = load %nyx_string*, %nyx_string** %word.ptr
  %t373 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %t374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t373, i64 4)
  %t375 = call i1 @nyx_string_equals(%nyx_string* %t372, %nyx_string* %t374)
  br i1 %t375, label %then140, label %else141
then140:
  %t376 = getelementptr [5 x i8], [5 x i8]* @.str81, i32 0, i32 0
  %t377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t376, i64 4)
  ret %nyx_string* %t377
else141:
  br label %merge142
merge142:
  %t378 = load %nyx_string*, %nyx_string** %word.ptr
  %t379 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %t380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t379, i64 5)
  %t381 = call i1 @nyx_string_equals(%nyx_string* %t378, %nyx_string* %t380)
  br i1 %t381, label %then143, label %else144
then143:
  %t382 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %t383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t382, i64 5)
  ret %nyx_string* %t383
else144:
  br label %merge145
merge145:
  %t384 = load %nyx_string*, %nyx_string** %word.ptr
  %t385 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %t386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t385, i64 3)
  %t387 = call i1 @nyx_string_equals(%nyx_string* %t384, %nyx_string* %t386)
  br i1 %t387, label %then146, label %else147
then146:
  %t388 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %t389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t388, i64 3)
  ret %nyx_string* %t389
else147:
  br label %merge148
merge148:
  %t390 = load %nyx_string*, %nyx_string** %word.ptr
  %t391 = getelementptr [3 x i8], [3 x i8]* @.str86, i32 0, i32 0
  %t392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t391, i64 2)
  %t393 = call i1 @nyx_string_equals(%nyx_string* %t390, %nyx_string* %t392)
  br i1 %t393, label %then149, label %else150
then149:
  %t394 = getelementptr [3 x i8], [3 x i8]* @.str87, i32 0, i32 0
  %t395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t394, i64 2)
  ret %nyx_string* %t395
else150:
  br label %merge151
merge151:
  %t396 = load %nyx_string*, %nyx_string** %word.ptr
  %t397 = getelementptr [4 x i8], [4 x i8]* @.str88, i32 0, i32 0
  %t398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t397, i64 3)
  %t399 = call i1 @nyx_string_equals(%nyx_string* %t396, %nyx_string* %t398)
  br i1 %t399, label %then152, label %else153
then152:
  %t400 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %t401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t400, i64 3)
  ret %nyx_string* %t401
else153:
  br label %merge154
merge154:
  %t402 = load %nyx_string*, %nyx_string** %word.ptr
  %t403 = getelementptr [5 x i8], [5 x i8]* @.str90, i32 0, i32 0
  %t404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t403, i64 4)
  %t405 = call i1 @nyx_string_equals(%nyx_string* %t402, %nyx_string* %t404)
  br i1 %t405, label %then155, label %else156
then155:
  %t406 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %t407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t406, i64 4)
  ret %nyx_string* %t407
else156:
  br label %merge157
merge157:
  %t408 = load %nyx_string*, %nyx_string** %word.ptr
  %t409 = getelementptr [6 x i8], [6 x i8]* @.str92, i32 0, i32 0
  %t410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t409, i64 5)
  %t411 = call i1 @nyx_string_equals(%nyx_string* %t408, %nyx_string* %t410)
  br i1 %t411, label %then158, label %else159
then158:
  %t412 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %t413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t412, i64 5)
  ret %nyx_string* %t413
else159:
  br label %merge160
merge160:
  %t414 = load %nyx_string*, %nyx_string** %word.ptr
  %t415 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %t416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t415, i64 4)
  %t417 = call i1 @nyx_string_equals(%nyx_string* %t414, %nyx_string* %t416)
  br i1 %t417, label %then161, label %else162
then161:
  %t418 = getelementptr [5 x i8], [5 x i8]* @.str95, i32 0, i32 0
  %t419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t418, i64 4)
  ret %nyx_string* %t419
else162:
  br label %merge163
merge163:
  %t420 = load %nyx_string*, %nyx_string** %word.ptr
  %t421 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %t422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t421, i64 6)
  %t423 = call i1 @nyx_string_equals(%nyx_string* %t420, %nyx_string* %t422)
  br i1 %t423, label %then164, label %else165
then164:
  %t424 = getelementptr [7 x i8], [7 x i8]* @.str97, i32 0, i32 0
  %t425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t424, i64 6)
  ret %nyx_string* %t425
else165:
  br label %merge166
merge166:
  %t426 = load %nyx_string*, %nyx_string** %word.ptr
  %t427 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %t428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t427, i64 6)
  %t429 = call i1 @nyx_string_equals(%nyx_string* %t426, %nyx_string* %t428)
  br i1 %t429, label %then167, label %else168
then167:
  %t430 = getelementptr [7 x i8], [7 x i8]* @.str99, i32 0, i32 0
  %t431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t430, i64 6)
  ret %nyx_string* %t431
else168:
  br label %merge169
merge169:
  %t432 = load %nyx_string*, %nyx_string** %word.ptr
  %t433 = getelementptr [3 x i8], [3 x i8]* @.str100, i32 0, i32 0
  %t434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t433, i64 2)
  %t435 = call i1 @nyx_string_equals(%nyx_string* %t432, %nyx_string* %t434)
  br i1 %t435, label %then170, label %else171
then170:
  %t436 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %t437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t436, i64 2)
  ret %nyx_string* %t437
else171:
  br label %merge172
merge172:
  %t438 = load %nyx_string*, %nyx_string** %word.ptr
  %t439 = getelementptr [7 x i8], [7 x i8]* @.str102, i32 0, i32 0
  %t440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t439, i64 6)
  %t441 = call i1 @nyx_string_equals(%nyx_string* %t438, %nyx_string* %t440)
  br i1 %t441, label %then173, label %else174
then173:
  %t442 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %t443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t442, i64 6)
  ret %nyx_string* %t443
else174:
  br label %merge175
merge175:
  %t444 = load %nyx_string*, %nyx_string** %word.ptr
  %t445 = getelementptr [7 x i8], [7 x i8]* @.str104, i32 0, i32 0
  %t446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t445, i64 6)
  %t447 = call i1 @nyx_string_equals(%nyx_string* %t444, %nyx_string* %t446)
  br i1 %t447, label %then176, label %else177
then176:
  %t448 = getelementptr [7 x i8], [7 x i8]* @.str105, i32 0, i32 0
  %t449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t448, i64 6)
  ret %nyx_string* %t449
else177:
  br label %merge178
merge178:
  %t450 = load %nyx_string*, %nyx_string** %word.ptr
  %t451 = getelementptr [7 x i8], [7 x i8]* @.str106, i32 0, i32 0
  %t452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t451, i64 6)
  %t453 = call i1 @nyx_string_equals(%nyx_string* %t450, %nyx_string* %t452)
  br i1 %t453, label %then179, label %else180
then179:
  %t454 = getelementptr [7 x i8], [7 x i8]* @.str107, i32 0, i32 0
  %t455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t454, i64 6)
  ret %nyx_string* %t455
else180:
  br label %merge181
merge181:
  %t456 = load %nyx_string*, %nyx_string** %word.ptr
  %t457 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %t458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t457, i64 7)
  %t459 = call i1 @nyx_string_equals(%nyx_string* %t456, %nyx_string* %t458)
  br i1 %t459, label %then182, label %else183
then182:
  %t460 = getelementptr [8 x i8], [8 x i8]* @.str109, i32 0, i32 0
  %t461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t460, i64 7)
  ret %nyx_string* %t461
else183:
  br label %merge184
merge184:
  %t462 = load %nyx_string*, %nyx_string** %word.ptr
  %t463 = getelementptr [4 x i8], [4 x i8]* @.str110, i32 0, i32 0
  %t464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t463, i64 3)
  %t465 = call i1 @nyx_string_equals(%nyx_string* %t462, %nyx_string* %t464)
  br i1 %t465, label %then185, label %else186
then185:
  %t466 = getelementptr [4 x i8], [4 x i8]* @.str111, i32 0, i32 0
  %t467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t466, i64 3)
  ret %nyx_string* %t467
else186:
  br label %merge187
merge187:
  %t468 = load %nyx_string*, %nyx_string** %word.ptr
  %t469 = getelementptr [4 x i8], [4 x i8]* @.str112, i32 0, i32 0
  %t470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t469, i64 3)
  %t471 = call i1 @nyx_string_equals(%nyx_string* %t468, %nyx_string* %t470)
  br i1 %t471, label %then188, label %else189
then188:
  %t472 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %t473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t472, i64 3)
  ret %nyx_string* %t473
else189:
  br label %merge190
merge190:
  %t474 = load %nyx_string*, %nyx_string** %word.ptr
  %t475 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %t476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t475, i64 3)
  %t477 = call i1 @nyx_string_equals(%nyx_string* %t474, %nyx_string* %t476)
  br i1 %t477, label %then191, label %else192
then191:
  %t478 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %t479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t478, i64 3)
  ret %nyx_string* %t479
else192:
  br label %merge193
merge193:
  %t480 = load %nyx_string*, %nyx_string** %word.ptr
  %t481 = getelementptr [7 x i8], [7 x i8]* @.str116, i32 0, i32 0
  %t482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t481, i64 6)
  %t483 = call i1 @nyx_string_equals(%nyx_string* %t480, %nyx_string* %t482)
  br i1 %t483, label %then194, label %else195
then194:
  %t484 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %t485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t484, i64 6)
  ret %nyx_string* %t485
else195:
  br label %merge196
merge196:
  %t486 = load %nyx_string*, %nyx_string** %word.ptr
  %t487 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %t488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t487, i64 5)
  %t489 = call i1 @nyx_string_equals(%nyx_string* %t486, %nyx_string* %t488)
  br i1 %t489, label %then197, label %else198
then197:
  %t490 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %t491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t490, i64 5)
  ret %nyx_string* %t491
else198:
  br label %merge199
merge199:
  %t492 = load %nyx_string*, %nyx_string** %word.ptr
  %t493 = getelementptr [6 x i8], [6 x i8]* @.str120, i32 0, i32 0
  %t494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t493, i64 5)
  %t495 = call i1 @nyx_string_equals(%nyx_string* %t492, %nyx_string* %t494)
  br i1 %t495, label %then200, label %else201
then200:
  %t496 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %t497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t496, i64 5)
  ret %nyx_string* %t497
else201:
  br label %merge202
merge202:
  %t498 = load %nyx_string*, %nyx_string** %word.ptr
  %t499 = getelementptr [4 x i8], [4 x i8]* @.str122, i32 0, i32 0
  %t500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t499, i64 3)
  %t501 = call i1 @nyx_string_equals(%nyx_string* %t498, %nyx_string* %t500)
  br i1 %t501, label %then203, label %else204
then203:
  %t502 = getelementptr [4 x i8], [4 x i8]* @.str123, i32 0, i32 0
  %t503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t502, i64 3)
  ret %nyx_string* %t503
else204:
  br label %merge205
merge205:
  %t504 = load %nyx_string*, %nyx_string** %word.ptr
  %t505 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %t506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t505, i64 5)
  %t507 = call i1 @nyx_string_equals(%nyx_string* %t504, %nyx_string* %t506)
  br i1 %t507, label %then206, label %else207
then206:
  %t508 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %t509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t508, i64 5)
  ret %nyx_string* %t509
else207:
  br label %merge208
merge208:
  %t510 = load %nyx_string*, %nyx_string** %word.ptr
  %t511 = getelementptr [6 x i8], [6 x i8]* @.str126, i32 0, i32 0
  %t512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t511, i64 5)
  %t513 = call i1 @nyx_string_equals(%nyx_string* %t510, %nyx_string* %t512)
  br i1 %t513, label %then209, label %else210
then209:
  %t514 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %t515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t514, i64 5)
  ret %nyx_string* %t515
else210:
  br label %merge211
merge211:
  %t516 = load %nyx_string*, %nyx_string** %word.ptr
  %t517 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %t518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t517, i64 5)
  %t519 = call i1 @nyx_string_equals(%nyx_string* %t516, %nyx_string* %t518)
  br i1 %t519, label %then212, label %else213
then212:
  %t520 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %t521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t520, i64 5)
  ret %nyx_string* %t521
else213:
  br label %merge214
merge214:
  %t522 = load %nyx_string*, %nyx_string** %word.ptr
  %t523 = getelementptr [6 x i8], [6 x i8]* @.str130, i32 0, i32 0
  %t524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t523, i64 5)
  %t525 = call i1 @nyx_string_equals(%nyx_string* %t522, %nyx_string* %t524)
  br i1 %t525, label %then215, label %else216
then215:
  %t526 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %t527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t526, i64 5)
  ret %nyx_string* %t527
else216:
  br label %merge217
merge217:
  %t528 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %t529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t528, i64 7)
  ret %nyx_string* %t529
}

define internal i64 @lex_hex_val(
i8 %c.param) {
  %c.ptr = alloca i8
  %t530 = alloca i1
  %t547 = alloca i1
  %t564 = alloca i1
  store i8 %c.param, i8* %c.ptr
  store i1 false, i1* %t530
  %t531 = load i8, i8* %c.ptr
  %t532 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %t533 = load i8, i8* %t532
  %t534 = zext i8 %t533 to i64
  %t535 = zext i8 %t531 to i64
  %t536 = icmp sge i64 %t535, %t534
  br i1 %t536, label %sc_and_rhs218, label %sc_and_end219
sc_and_rhs218:
  %t537 = load i8, i8* %c.ptr
  %t538 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %t539 = load i8, i8* %t538
  %t540 = zext i8 %t539 to i64
  %t541 = zext i8 %t537 to i64
  %t542 = icmp sle i64 %t541, %t540
  store i1 %t542, i1* %t530
  br label %sc_and_end219
sc_and_end219:
  %t543 = load i1, i1* %t530
  br i1 %t543, label %then220, label %else221
then220:
  %t544 = load i8, i8* %c.ptr
  %t545 = zext i8 %t544 to i64
  %t546 = sub i64 %t545, 48
  ret i64 %t546
else221:
  br label %merge222
merge222:
  store i1 false, i1* %t547
  %t548 = load i8, i8* %c.ptr
  %t549 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %t550 = load i8, i8* %t549
  %t551 = zext i8 %t550 to i64
  %t552 = zext i8 %t548 to i64
  %t553 = icmp sge i64 %t552, %t551
  br i1 %t553, label %sc_and_rhs223, label %sc_and_end224
sc_and_rhs223:
  %t554 = load i8, i8* %c.ptr
  %t555 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %t556 = load i8, i8* %t555
  %t557 = zext i8 %t556 to i64
  %t558 = zext i8 %t554 to i64
  %t559 = icmp sle i64 %t558, %t557
  store i1 %t559, i1* %t547
  br label %sc_and_end224
sc_and_end224:
  %t560 = load i1, i1* %t547
  br i1 %t560, label %then225, label %else226
then225:
  %t561 = load i8, i8* %c.ptr
  %t562 = zext i8 %t561 to i64
  %t563 = sub i64 %t562, 87
  ret i64 %t563
else226:
  br label %merge227
merge227:
  store i1 false, i1* %t564
  %t565 = load i8, i8* %c.ptr
  %t566 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %t567 = load i8, i8* %t566
  %t568 = zext i8 %t567 to i64
  %t569 = zext i8 %t565 to i64
  %t570 = icmp sge i64 %t569, %t568
  br i1 %t570, label %sc_and_rhs228, label %sc_and_end229
sc_and_rhs228:
  %t571 = load i8, i8* %c.ptr
  %t572 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %t573 = load i8, i8* %t572
  %t574 = zext i8 %t573 to i64
  %t575 = zext i8 %t571 to i64
  %t576 = icmp sle i64 %t575, %t574
  store i1 %t576, i1* %t564
  br label %sc_and_end229
sc_and_end229:
  %t577 = load i1, i1* %t564
  br i1 %t577, label %then230, label %else231
then230:
  %t578 = load i8, i8* %c.ptr
  %t579 = zext i8 %t578 to i64
  %t580 = sub i64 %t579, 55
  ret i64 %t580
else231:
  br label %merge232
merge232:
  %t581 = sub i64 0, 1
  ret i64 %t581
}

define { i64, i8* }* @tokenize(
%nyx_string* %source_code.param) {
  %source_code.ptr = alloca %nyx_string*
  store %nyx_string* %source_code.param, %nyx_string** %source_code.ptr
  %t582 = load %nyx_string*, %nyx_string** %source_code.ptr
  %t583 = call { i64, i8* }* @nyx_array_new_ptr()
  %t584 = call { i64, i8* }* @tokenize_con_avisos(%nyx_string* %t582, { i64, i8* }* %t583)
  ret { i64, i8* }* %t584
}

%SharedEnv_tokenize_con_avisos = type { %nyx_string*, { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, i64, { i64, i8* }*, i64, i1 }
define { i64, i8* }* @tokenize_con_avisos(
%nyx_string* %source_code.param, { i64, i8* }* %avisos.param) {
  %t585 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* null, i32 1
  %t586 = ptrtoint %SharedEnv_tokenize_con_avisos* %t585 to i64
  %t587 = call i8* @GC_malloc(i64 %t586)
  %t588 = bitcast i8* %t587 to %SharedEnv_tokenize_con_avisos*
  %t589 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 0
  store %nyx_string* %source_code.param, %nyx_string** %t589
  %t590 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 1
  store { i64, i8* }* %avisos.param, { i64, i8* }** %t590
  %t591 = load %nyx_string*, %nyx_string** %t589
  %t592 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 2
  store %nyx_string* %t591, %nyx_string** %t592
  %t593 = load { i64, i8* }*, { i64, i8* }** %t590
  %t594 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 3
  store { i64, i8* }* %t593, { i64, i8* }** %t594
  %t595 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 4
  store i64 0, i64* %t595
  %t596 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 5
  store i64 1, i64* %t596
  %t597 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 6
  store i64 1, i64* %t597
  %t598 = call { i64, i8* }* @nyx_array_new_ptr()
  %t599 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 7
  store { i64, i8* }* %t598, { i64, i8* }** %t599
  %t600 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 8
  store i64 0, i64* %t600
  store i64 0, i64* @g_lex_error_count
  %t601 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %t588, i32 0, i32 9
  store i1 0, i1* %t601
  br label %while_cond233
while_cond233:
  %t602 = load i1, i1* %t601
  %t603 = xor i1 %t602, true
  br i1 %t603, label %while_body234, label %while_end235
while_body234:
  %t604 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %t588)
  br i1 %t604, label %then236, label %else237
then236:
  store i1 1, i1* %t601
  br label %merge238
else237:
  %t605 = call i64 @tokenize_con_avisos__scan_token(%SharedEnv_tokenize_con_avisos* %t588)
  br label %merge238
merge238:
  br label %while_cond233
while_end235:
  %t606 = getelementptr [4 x i8], [4 x i8]* @.str139, i32 0, i32 0
  %t607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t606, i64 3)
  %t608 = getelementptr [1 x i8], [1 x i8]* @.str140, i32 0, i32 0
  %t609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t608, i64 0)
  %t610 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %t588, %nyx_string* %t607, %nyx_string* %t609)
  %t611 = load { i64, i8* }*, { i64, i8* }** %t599
  ret { i64, i8* }* %t611
}

define internal i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = load i64, i64* %t5
  %t12 = load %nyx_string*, %nyx_string** %t3
  %t13 = call i64 @nyx_string_byte_length(%nyx_string* %t12)
  %t14 = icmp slt i64 %t11, %t13
  br i1 %t14, label %then0, label %else1
then0:
  %t15 = load %nyx_string*, %nyx_string** %t3
  %t16 = load i64, i64* %t5
  %t17 = call i8 @nyx_string_char_at(%nyx_string* %t15, i64 %t16)
  %t18 = zext i8 %t17 to i64
  %t19 = trunc i64 %t18 to i8
  ret i8 %t19
else1:
  br label %merge2
merge2:
  %t20 = getelementptr [1 x i8], [1 x i8]* @.str141, i32 0, i32 0
  %t21 = load i8, i8* %t20
  %t22 = zext i8 %t21 to i64
  %t23 = trunc i64 %t22 to i8
  ret i8 %t23
}

define internal i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t13 = alloca i64
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = load i64, i64* %t5
  %t12 = add i64 %t11, 1
  store i64 %t12, i64* %t13
  %t14 = load i64, i64* %t13
  %t15 = load %nyx_string*, %nyx_string** %t3
  %t16 = call i64 @nyx_string_byte_length(%nyx_string* %t15)
  %t17 = icmp slt i64 %t14, %t16
  br i1 %t17, label %then0, label %else1
then0:
  %t18 = load %nyx_string*, %nyx_string** %t3
  %t19 = load i64, i64* %t13
  %t20 = call i8 @nyx_string_char_at(%nyx_string* %t18, i64 %t19)
  %t21 = zext i8 %t20 to i64
  %t22 = trunc i64 %t21 to i8
  ret i8 %t22
else1:
  br label %merge2
merge2:
  %t23 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %t24 = load i8, i8* %t23
  %t25 = zext i8 %t24 to i64
  %t26 = trunc i64 %t25 to i8
  ret i8 %t26
}

define internal i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t12 = alloca i8
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t11, i8* %t12
  %t13 = load i64, i64* %t5
  %t14 = add i64 %t13, 1
  store i64 %t14, i64* %t5
  %t15 = load i8, i8* %t12
  %t16 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %t17 = load i8, i8* %t16
  %t18 = zext i8 %t17 to i64
  %t19 = zext i8 %t15 to i64
  %t20 = icmp eq i64 %t19, %t18
  br i1 %t20, label %then0, label %else1
then0:
  %t21 = load i64, i64* %t6
  %t22 = add i64 %t21, 1
  store i64 %t22, i64* %t6
  store i64 1, i64* %t7
  br label %merge2
else1:
  %t23 = load i64, i64* %t7
  %t24 = add i64 %t23, 1
  store i64 %t24, i64* %t7
  br label %merge2
merge2:
  %t25 = load i8, i8* %t12
  ret i8 %t25
}

define internal i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = load i64, i64* %t5
  %t12 = load %nyx_string*, %nyx_string** %t3
  %t13 = call i64 @nyx_string_byte_length(%nyx_string* %t12)
  %t14 = icmp sge i64 %t11, %t13
  ret i1 %t14
}

define internal i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %type.param, %nyx_string* %value.param) {
  %t11 = alloca %nyx_string*
  %t12 = alloca %nyx_string*
  %t26 = alloca %Token
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store %nyx_string* %type.param, %nyx_string** %t11
  store %nyx_string* %value.param, %nyx_string** %t12
  %t13 = getelementptr %Token, %Token* null, i32 1
  %t14 = ptrtoint %Token* %t13 to i64
  %t15 = call i8* @GC_malloc(i64 %t14)
  %t16 = bitcast i8* %t15 to %Token*
  %t17 = load %nyx_string*, %nyx_string** %t11
  %t18 = getelementptr %Token, %Token* %t16, i32 0, i32 0
  store %nyx_string* %t17, %nyx_string** %t18
  %t19 = load %nyx_string*, %nyx_string** %t12
  %t20 = getelementptr %Token, %Token* %t16, i32 0, i32 1
  store %nyx_string* %t19, %nyx_string** %t20
  %t21 = load i64, i64* %t6
  %t22 = getelementptr %Token, %Token* %t16, i32 0, i32 2
  store i64 %t21, i64* %t22
  %t23 = load i64, i64* %t7
  %t24 = getelementptr %Token, %Token* %t16, i32 0, i32 3
  store i64 %t23, i64* %t24
  %t25 = load %Token, %Token* %t16
  store %Token %t25, %Token* %t26
  %t27 = load { i64, i8* }*, { i64, i8* }** %t8
  %t28 = load %Token, %Token* %t26
  %t29 = getelementptr %Token, %Token* null, i32 1
  %t30 = ptrtoint %Token* %t29 to i64
  %t31 = call i8* @GC_malloc(i64 %t30)
  %t32 = bitcast i8* %t31 to %Token*
  store %Token %t28, %Token* %t32
  %t33 = ptrtoint %Token* %t32 to i64
  call void @nyx_array_push({ i64, i8* }* %t27, i64 %t33)
  ret i64 0
}

define internal i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %t11 = alloca i8
  %t12 = alloca i1
  %t13 = alloca i1
  %t14 = alloca i1
  %t15 = alloca i1
  %t16 = alloca i1
  %t17 = alloca i1
  %t18 = alloca i1
  %t19 = alloca i1
  %t20 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i8 %c.param, i8* %t11
  store i1 true, i1* %t12
  store i1 true, i1* %t13
  store i1 true, i1* %t14
  store i1 true, i1* %t15
  store i1 true, i1* %t16
  store i1 true, i1* %t17
  store i1 true, i1* %t18
  store i1 true, i1* %t19
  store i1 true, i1* %t20
  %t21 = load i8, i8* %t11
  %t22 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %t23 = load i8, i8* %t22
  %t24 = zext i8 %t23 to i64
  %t25 = zext i8 %t21 to i64
  %t26 = icmp eq i64 %t25, %t24
  br i1 %t26, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %t27 = load i8, i8* %t11
  %t28 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %t29 = load i8, i8* %t28
  %t30 = zext i8 %t29 to i64
  %t31 = zext i8 %t27 to i64
  %t32 = icmp eq i64 %t31, %t30
  store i1 %t32, i1* %t20
  br label %sc_or_end1
sc_or_end1:
  %t33 = load i1, i1* %t20
  br i1 %t33, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %t34 = load i8, i8* %t11
  %t35 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %t36 = load i8, i8* %t35
  %t37 = zext i8 %t36 to i64
  %t38 = zext i8 %t34 to i64
  %t39 = icmp eq i64 %t38, %t37
  store i1 %t39, i1* %t19
  br label %sc_or_end3
sc_or_end3:
  %t40 = load i1, i1* %t19
  br i1 %t40, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %t41 = load i8, i8* %t11
  %t42 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %t43 = load i8, i8* %t42
  %t44 = zext i8 %t43 to i64
  %t45 = zext i8 %t41 to i64
  %t46 = icmp eq i64 %t45, %t44
  store i1 %t46, i1* %t18
  br label %sc_or_end5
sc_or_end5:
  %t47 = load i1, i1* %t18
  br i1 %t47, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t48 = load i8, i8* %t11
  %t49 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %t50 = load i8, i8* %t49
  %t51 = zext i8 %t50 to i64
  %t52 = zext i8 %t48 to i64
  %t53 = icmp eq i64 %t52, %t51
  store i1 %t53, i1* %t17
  br label %sc_or_end7
sc_or_end7:
  %t54 = load i1, i1* %t17
  br i1 %t54, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %t55 = load i8, i8* %t11
  %t56 = getelementptr [1 x i8], [1 x i8]* @.str149, i32 0, i32 0
  %t57 = load i8, i8* %t56
  %t58 = zext i8 %t57 to i64
  %t59 = zext i8 %t55 to i64
  %t60 = icmp eq i64 %t59, %t58
  store i1 %t60, i1* %t16
  br label %sc_or_end9
sc_or_end9:
  %t61 = load i1, i1* %t16
  br i1 %t61, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %t62 = load i8, i8* %t11
  %t63 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %t64 = load i8, i8* %t63
  %t65 = zext i8 %t64 to i64
  %t66 = zext i8 %t62 to i64
  %t67 = icmp eq i64 %t66, %t65
  store i1 %t67, i1* %t15
  br label %sc_or_end11
sc_or_end11:
  %t68 = load i1, i1* %t15
  br i1 %t68, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %t69 = load i8, i8* %t11
  %t70 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %t71 = load i8, i8* %t70
  %t72 = zext i8 %t71 to i64
  %t73 = zext i8 %t69 to i64
  %t74 = icmp eq i64 %t73, %t72
  store i1 %t74, i1* %t14
  br label %sc_or_end13
sc_or_end13:
  %t75 = load i1, i1* %t14
  br i1 %t75, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %t76 = load i8, i8* %t11
  %t77 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %t78 = load i8, i8* %t77
  %t79 = zext i8 %t78 to i64
  %t80 = zext i8 %t76 to i64
  %t81 = icmp eq i64 %t80, %t79
  store i1 %t81, i1* %t13
  br label %sc_or_end15
sc_or_end15:
  %t82 = load i1, i1* %t13
  br i1 %t82, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %t83 = load i8, i8* %t11
  %t84 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %t85 = load i8, i8* %t84
  %t86 = zext i8 %t85 to i64
  %t87 = zext i8 %t83 to i64
  %t88 = icmp eq i64 %t87, %t86
  store i1 %t88, i1* %t12
  br label %sc_or_end17
sc_or_end17:
  %t89 = load i1, i1* %t12
  ret i1 %t89
}

define internal i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %t11 = alloca i8
  %t12 = alloca i1
  %t13 = alloca i1
  %t14 = alloca i1
  %t15 = alloca i1
  %t16 = alloca i1
  %t17 = alloca i1
  %t18 = alloca i1
  %t19 = alloca i1
  %t20 = alloca i1
  %t21 = alloca i1
  %t22 = alloca i1
  %t23 = alloca i1
  %t24 = alloca i1
  %t25 = alloca i1
  %t26 = alloca i1
  %t27 = alloca i1
  %t28 = alloca i1
  %t29 = alloca i1
  %t30 = alloca i1
  %t31 = alloca i1
  %t32 = alloca i1
  %t33 = alloca i1
  %t34 = alloca i1
  %t35 = alloca i1
  %t36 = alloca i1
  %t37 = alloca i1
  %t38 = alloca i1
  %t39 = alloca i1
  %t40 = alloca i1
  %t41 = alloca i1
  %t42 = alloca i1
  %t43 = alloca i1
  %t44 = alloca i1
  %t45 = alloca i1
  %t46 = alloca i1
  %t47 = alloca i1
  %t48 = alloca i1
  %t49 = alloca i1
  %t50 = alloca i1
  %t51 = alloca i1
  %t52 = alloca i1
  %t53 = alloca i1
  %t54 = alloca i1
  %t55 = alloca i1
  %t56 = alloca i1
  %t57 = alloca i1
  %t58 = alloca i1
  %t59 = alloca i1
  %t60 = alloca i1
  %t61 = alloca i1
  %t62 = alloca i1
  %t63 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i8 %c.param, i8* %t11
  store i1 true, i1* %t12
  store i1 true, i1* %t13
  store i1 true, i1* %t14
  store i1 true, i1* %t15
  store i1 true, i1* %t16
  store i1 true, i1* %t17
  store i1 true, i1* %t18
  store i1 true, i1* %t19
  store i1 true, i1* %t20
  store i1 true, i1* %t21
  store i1 true, i1* %t22
  store i1 true, i1* %t23
  store i1 true, i1* %t24
  store i1 true, i1* %t25
  store i1 true, i1* %t26
  store i1 true, i1* %t27
  store i1 true, i1* %t28
  store i1 true, i1* %t29
  store i1 true, i1* %t30
  store i1 true, i1* %t31
  store i1 true, i1* %t32
  store i1 true, i1* %t33
  store i1 true, i1* %t34
  store i1 true, i1* %t35
  store i1 true, i1* %t36
  store i1 true, i1* %t37
  store i1 true, i1* %t38
  store i1 true, i1* %t39
  store i1 true, i1* %t40
  store i1 true, i1* %t41
  store i1 true, i1* %t42
  store i1 true, i1* %t43
  store i1 true, i1* %t44
  store i1 true, i1* %t45
  store i1 true, i1* %t46
  store i1 true, i1* %t47
  store i1 true, i1* %t48
  store i1 true, i1* %t49
  store i1 true, i1* %t50
  store i1 true, i1* %t51
  store i1 true, i1* %t52
  store i1 true, i1* %t53
  store i1 true, i1* %t54
  store i1 true, i1* %t55
  store i1 true, i1* %t56
  store i1 true, i1* %t57
  store i1 true, i1* %t58
  store i1 true, i1* %t59
  store i1 true, i1* %t60
  store i1 true, i1* %t61
  store i1 true, i1* %t62
  store i1 true, i1* %t63
  %t64 = load i8, i8* %t11
  %t65 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %t66 = load i8, i8* %t65
  %t67 = zext i8 %t66 to i64
  %t68 = zext i8 %t64 to i64
  %t69 = icmp eq i64 %t68, %t67
  br i1 %t69, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %t70 = load i8, i8* %t11
  %t71 = getelementptr [1 x i8], [1 x i8]* @.str155, i32 0, i32 0
  %t72 = load i8, i8* %t71
  %t73 = zext i8 %t72 to i64
  %t74 = zext i8 %t70 to i64
  %t75 = icmp eq i64 %t74, %t73
  store i1 %t75, i1* %t63
  br label %sc_or_end1
sc_or_end1:
  %t76 = load i1, i1* %t63
  br i1 %t76, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %t77 = load i8, i8* %t11
  %t78 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %t79 = load i8, i8* %t78
  %t80 = zext i8 %t79 to i64
  %t81 = zext i8 %t77 to i64
  %t82 = icmp eq i64 %t81, %t80
  store i1 %t82, i1* %t62
  br label %sc_or_end3
sc_or_end3:
  %t83 = load i1, i1* %t62
  br i1 %t83, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %t84 = load i8, i8* %t11
  %t85 = getelementptr [1 x i8], [1 x i8]* @.str157, i32 0, i32 0
  %t86 = load i8, i8* %t85
  %t87 = zext i8 %t86 to i64
  %t88 = zext i8 %t84 to i64
  %t89 = icmp eq i64 %t88, %t87
  store i1 %t89, i1* %t61
  br label %sc_or_end5
sc_or_end5:
  %t90 = load i1, i1* %t61
  br i1 %t90, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t91 = load i8, i8* %t11
  %t92 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %t93 = load i8, i8* %t92
  %t94 = zext i8 %t93 to i64
  %t95 = zext i8 %t91 to i64
  %t96 = icmp eq i64 %t95, %t94
  store i1 %t96, i1* %t60
  br label %sc_or_end7
sc_or_end7:
  %t97 = load i1, i1* %t60
  br i1 %t97, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %t98 = load i8, i8* %t11
  %t99 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %t100 = load i8, i8* %t99
  %t101 = zext i8 %t100 to i64
  %t102 = zext i8 %t98 to i64
  %t103 = icmp eq i64 %t102, %t101
  store i1 %t103, i1* %t59
  br label %sc_or_end9
sc_or_end9:
  %t104 = load i1, i1* %t59
  br i1 %t104, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %t105 = load i8, i8* %t11
  %t106 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %t107 = load i8, i8* %t106
  %t108 = zext i8 %t107 to i64
  %t109 = zext i8 %t105 to i64
  %t110 = icmp eq i64 %t109, %t108
  store i1 %t110, i1* %t58
  br label %sc_or_end11
sc_or_end11:
  %t111 = load i1, i1* %t58
  br i1 %t111, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %t112 = load i8, i8* %t11
  %t113 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %t114 = load i8, i8* %t113
  %t115 = zext i8 %t114 to i64
  %t116 = zext i8 %t112 to i64
  %t117 = icmp eq i64 %t116, %t115
  store i1 %t117, i1* %t57
  br label %sc_or_end13
sc_or_end13:
  %t118 = load i1, i1* %t57
  br i1 %t118, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %t119 = load i8, i8* %t11
  %t120 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %t121 = load i8, i8* %t120
  %t122 = zext i8 %t121 to i64
  %t123 = zext i8 %t119 to i64
  %t124 = icmp eq i64 %t123, %t122
  store i1 %t124, i1* %t56
  br label %sc_or_end15
sc_or_end15:
  %t125 = load i1, i1* %t56
  br i1 %t125, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %t126 = load i8, i8* %t11
  %t127 = getelementptr [1 x i8], [1 x i8]* @.str163, i32 0, i32 0
  %t128 = load i8, i8* %t127
  %t129 = zext i8 %t128 to i64
  %t130 = zext i8 %t126 to i64
  %t131 = icmp eq i64 %t130, %t129
  store i1 %t131, i1* %t55
  br label %sc_or_end17
sc_or_end17:
  %t132 = load i1, i1* %t55
  br i1 %t132, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %t133 = load i8, i8* %t11
  %t134 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %t135 = load i8, i8* %t134
  %t136 = zext i8 %t135 to i64
  %t137 = zext i8 %t133 to i64
  %t138 = icmp eq i64 %t137, %t136
  store i1 %t138, i1* %t54
  br label %sc_or_end19
sc_or_end19:
  %t139 = load i1, i1* %t54
  br i1 %t139, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %t140 = load i8, i8* %t11
  %t141 = getelementptr [1 x i8], [1 x i8]* @.str165, i32 0, i32 0
  %t142 = load i8, i8* %t141
  %t143 = zext i8 %t142 to i64
  %t144 = zext i8 %t140 to i64
  %t145 = icmp eq i64 %t144, %t143
  store i1 %t145, i1* %t53
  br label %sc_or_end21
sc_or_end21:
  %t146 = load i1, i1* %t53
  br i1 %t146, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %t147 = load i8, i8* %t11
  %t148 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %t149 = load i8, i8* %t148
  %t150 = zext i8 %t149 to i64
  %t151 = zext i8 %t147 to i64
  %t152 = icmp eq i64 %t151, %t150
  store i1 %t152, i1* %t52
  br label %sc_or_end23
sc_or_end23:
  %t153 = load i1, i1* %t52
  br i1 %t153, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %t154 = load i8, i8* %t11
  %t155 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %t156 = load i8, i8* %t155
  %t157 = zext i8 %t156 to i64
  %t158 = zext i8 %t154 to i64
  %t159 = icmp eq i64 %t158, %t157
  store i1 %t159, i1* %t51
  br label %sc_or_end25
sc_or_end25:
  %t160 = load i1, i1* %t51
  br i1 %t160, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %t161 = load i8, i8* %t11
  %t162 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %t163 = load i8, i8* %t162
  %t164 = zext i8 %t163 to i64
  %t165 = zext i8 %t161 to i64
  %t166 = icmp eq i64 %t165, %t164
  store i1 %t166, i1* %t50
  br label %sc_or_end27
sc_or_end27:
  %t167 = load i1, i1* %t50
  br i1 %t167, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %t168 = load i8, i8* %t11
  %t169 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %t170 = load i8, i8* %t169
  %t171 = zext i8 %t170 to i64
  %t172 = zext i8 %t168 to i64
  %t173 = icmp eq i64 %t172, %t171
  store i1 %t173, i1* %t49
  br label %sc_or_end29
sc_or_end29:
  %t174 = load i1, i1* %t49
  br i1 %t174, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %t175 = load i8, i8* %t11
  %t176 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %t177 = load i8, i8* %t176
  %t178 = zext i8 %t177 to i64
  %t179 = zext i8 %t175 to i64
  %t180 = icmp eq i64 %t179, %t178
  store i1 %t180, i1* %t48
  br label %sc_or_end31
sc_or_end31:
  %t181 = load i1, i1* %t48
  br i1 %t181, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %t182 = load i8, i8* %t11
  %t183 = getelementptr [1 x i8], [1 x i8]* @.str171, i32 0, i32 0
  %t184 = load i8, i8* %t183
  %t185 = zext i8 %t184 to i64
  %t186 = zext i8 %t182 to i64
  %t187 = icmp eq i64 %t186, %t185
  store i1 %t187, i1* %t47
  br label %sc_or_end33
sc_or_end33:
  %t188 = load i1, i1* %t47
  br i1 %t188, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %t189 = load i8, i8* %t11
  %t190 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %t191 = load i8, i8* %t190
  %t192 = zext i8 %t191 to i64
  %t193 = zext i8 %t189 to i64
  %t194 = icmp eq i64 %t193, %t192
  store i1 %t194, i1* %t46
  br label %sc_or_end35
sc_or_end35:
  %t195 = load i1, i1* %t46
  br i1 %t195, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %t196 = load i8, i8* %t11
  %t197 = getelementptr [1 x i8], [1 x i8]* @.str173, i32 0, i32 0
  %t198 = load i8, i8* %t197
  %t199 = zext i8 %t198 to i64
  %t200 = zext i8 %t196 to i64
  %t201 = icmp eq i64 %t200, %t199
  store i1 %t201, i1* %t45
  br label %sc_or_end37
sc_or_end37:
  %t202 = load i1, i1* %t45
  br i1 %t202, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %t203 = load i8, i8* %t11
  %t204 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %t205 = load i8, i8* %t204
  %t206 = zext i8 %t205 to i64
  %t207 = zext i8 %t203 to i64
  %t208 = icmp eq i64 %t207, %t206
  store i1 %t208, i1* %t44
  br label %sc_or_end39
sc_or_end39:
  %t209 = load i1, i1* %t44
  br i1 %t209, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %t210 = load i8, i8* %t11
  %t211 = getelementptr [1 x i8], [1 x i8]* @.str175, i32 0, i32 0
  %t212 = load i8, i8* %t211
  %t213 = zext i8 %t212 to i64
  %t214 = zext i8 %t210 to i64
  %t215 = icmp eq i64 %t214, %t213
  store i1 %t215, i1* %t43
  br label %sc_or_end41
sc_or_end41:
  %t216 = load i1, i1* %t43
  br i1 %t216, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %t217 = load i8, i8* %t11
  %t218 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %t219 = load i8, i8* %t218
  %t220 = zext i8 %t219 to i64
  %t221 = zext i8 %t217 to i64
  %t222 = icmp eq i64 %t221, %t220
  store i1 %t222, i1* %t42
  br label %sc_or_end43
sc_or_end43:
  %t223 = load i1, i1* %t42
  br i1 %t223, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %t224 = load i8, i8* %t11
  %t225 = getelementptr [1 x i8], [1 x i8]* @.str177, i32 0, i32 0
  %t226 = load i8, i8* %t225
  %t227 = zext i8 %t226 to i64
  %t228 = zext i8 %t224 to i64
  %t229 = icmp eq i64 %t228, %t227
  store i1 %t229, i1* %t41
  br label %sc_or_end45
sc_or_end45:
  %t230 = load i1, i1* %t41
  br i1 %t230, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %t231 = load i8, i8* %t11
  %t232 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %t233 = load i8, i8* %t232
  %t234 = zext i8 %t233 to i64
  %t235 = zext i8 %t231 to i64
  %t236 = icmp eq i64 %t235, %t234
  store i1 %t236, i1* %t40
  br label %sc_or_end47
sc_or_end47:
  %t237 = load i1, i1* %t40
  br i1 %t237, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %t238 = load i8, i8* %t11
  %t239 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %t240 = load i8, i8* %t239
  %t241 = zext i8 %t240 to i64
  %t242 = zext i8 %t238 to i64
  %t243 = icmp eq i64 %t242, %t241
  store i1 %t243, i1* %t39
  br label %sc_or_end49
sc_or_end49:
  %t244 = load i1, i1* %t39
  br i1 %t244, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %t245 = load i8, i8* %t11
  %t246 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %t247 = load i8, i8* %t246
  %t248 = zext i8 %t247 to i64
  %t249 = zext i8 %t245 to i64
  %t250 = icmp eq i64 %t249, %t248
  store i1 %t250, i1* %t38
  br label %sc_or_end51
sc_or_end51:
  %t251 = load i1, i1* %t38
  br i1 %t251, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %t252 = load i8, i8* %t11
  %t253 = getelementptr [1 x i8], [1 x i8]* @.str181, i32 0, i32 0
  %t254 = load i8, i8* %t253
  %t255 = zext i8 %t254 to i64
  %t256 = zext i8 %t252 to i64
  %t257 = icmp eq i64 %t256, %t255
  store i1 %t257, i1* %t37
  br label %sc_or_end53
sc_or_end53:
  %t258 = load i1, i1* %t37
  br i1 %t258, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %t259 = load i8, i8* %t11
  %t260 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %t261 = load i8, i8* %t260
  %t262 = zext i8 %t261 to i64
  %t263 = zext i8 %t259 to i64
  %t264 = icmp eq i64 %t263, %t262
  store i1 %t264, i1* %t36
  br label %sc_or_end55
sc_or_end55:
  %t265 = load i1, i1* %t36
  br i1 %t265, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %t266 = load i8, i8* %t11
  %t267 = getelementptr [1 x i8], [1 x i8]* @.str183, i32 0, i32 0
  %t268 = load i8, i8* %t267
  %t269 = zext i8 %t268 to i64
  %t270 = zext i8 %t266 to i64
  %t271 = icmp eq i64 %t270, %t269
  store i1 %t271, i1* %t35
  br label %sc_or_end57
sc_or_end57:
  %t272 = load i1, i1* %t35
  br i1 %t272, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %t273 = load i8, i8* %t11
  %t274 = getelementptr [1 x i8], [1 x i8]* @.str184, i32 0, i32 0
  %t275 = load i8, i8* %t274
  %t276 = zext i8 %t275 to i64
  %t277 = zext i8 %t273 to i64
  %t278 = icmp eq i64 %t277, %t276
  store i1 %t278, i1* %t34
  br label %sc_or_end59
sc_or_end59:
  %t279 = load i1, i1* %t34
  br i1 %t279, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %t280 = load i8, i8* %t11
  %t281 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %t282 = load i8, i8* %t281
  %t283 = zext i8 %t282 to i64
  %t284 = zext i8 %t280 to i64
  %t285 = icmp eq i64 %t284, %t283
  store i1 %t285, i1* %t33
  br label %sc_or_end61
sc_or_end61:
  %t286 = load i1, i1* %t33
  br i1 %t286, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %t287 = load i8, i8* %t11
  %t288 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %t289 = load i8, i8* %t288
  %t290 = zext i8 %t289 to i64
  %t291 = zext i8 %t287 to i64
  %t292 = icmp eq i64 %t291, %t290
  store i1 %t292, i1* %t32
  br label %sc_or_end63
sc_or_end63:
  %t293 = load i1, i1* %t32
  br i1 %t293, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %t294 = load i8, i8* %t11
  %t295 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %t296 = load i8, i8* %t295
  %t297 = zext i8 %t296 to i64
  %t298 = zext i8 %t294 to i64
  %t299 = icmp eq i64 %t298, %t297
  store i1 %t299, i1* %t31
  br label %sc_or_end65
sc_or_end65:
  %t300 = load i1, i1* %t31
  br i1 %t300, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %t301 = load i8, i8* %t11
  %t302 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %t303 = load i8, i8* %t302
  %t304 = zext i8 %t303 to i64
  %t305 = zext i8 %t301 to i64
  %t306 = icmp eq i64 %t305, %t304
  store i1 %t306, i1* %t30
  br label %sc_or_end67
sc_or_end67:
  %t307 = load i1, i1* %t30
  br i1 %t307, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %t308 = load i8, i8* %t11
  %t309 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %t310 = load i8, i8* %t309
  %t311 = zext i8 %t310 to i64
  %t312 = zext i8 %t308 to i64
  %t313 = icmp eq i64 %t312, %t311
  store i1 %t313, i1* %t29
  br label %sc_or_end69
sc_or_end69:
  %t314 = load i1, i1* %t29
  br i1 %t314, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %t315 = load i8, i8* %t11
  %t316 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %t317 = load i8, i8* %t316
  %t318 = zext i8 %t317 to i64
  %t319 = zext i8 %t315 to i64
  %t320 = icmp eq i64 %t319, %t318
  store i1 %t320, i1* %t28
  br label %sc_or_end71
sc_or_end71:
  %t321 = load i1, i1* %t28
  br i1 %t321, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %t322 = load i8, i8* %t11
  %t323 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %t324 = load i8, i8* %t323
  %t325 = zext i8 %t324 to i64
  %t326 = zext i8 %t322 to i64
  %t327 = icmp eq i64 %t326, %t325
  store i1 %t327, i1* %t27
  br label %sc_or_end73
sc_or_end73:
  %t328 = load i1, i1* %t27
  br i1 %t328, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %t329 = load i8, i8* %t11
  %t330 = getelementptr [1 x i8], [1 x i8]* @.str192, i32 0, i32 0
  %t331 = load i8, i8* %t330
  %t332 = zext i8 %t331 to i64
  %t333 = zext i8 %t329 to i64
  %t334 = icmp eq i64 %t333, %t332
  store i1 %t334, i1* %t26
  br label %sc_or_end75
sc_or_end75:
  %t335 = load i1, i1* %t26
  br i1 %t335, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %t336 = load i8, i8* %t11
  %t337 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %t338 = load i8, i8* %t337
  %t339 = zext i8 %t338 to i64
  %t340 = zext i8 %t336 to i64
  %t341 = icmp eq i64 %t340, %t339
  store i1 %t341, i1* %t25
  br label %sc_or_end77
sc_or_end77:
  %t342 = load i1, i1* %t25
  br i1 %t342, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %t343 = load i8, i8* %t11
  %t344 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %t345 = load i8, i8* %t344
  %t346 = zext i8 %t345 to i64
  %t347 = zext i8 %t343 to i64
  %t348 = icmp eq i64 %t347, %t346
  store i1 %t348, i1* %t24
  br label %sc_or_end79
sc_or_end79:
  %t349 = load i1, i1* %t24
  br i1 %t349, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %t350 = load i8, i8* %t11
  %t351 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %t352 = load i8, i8* %t351
  %t353 = zext i8 %t352 to i64
  %t354 = zext i8 %t350 to i64
  %t355 = icmp eq i64 %t354, %t353
  store i1 %t355, i1* %t23
  br label %sc_or_end81
sc_or_end81:
  %t356 = load i1, i1* %t23
  br i1 %t356, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %t357 = load i8, i8* %t11
  %t358 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %t359 = load i8, i8* %t358
  %t360 = zext i8 %t359 to i64
  %t361 = zext i8 %t357 to i64
  %t362 = icmp eq i64 %t361, %t360
  store i1 %t362, i1* %t22
  br label %sc_or_end83
sc_or_end83:
  %t363 = load i1, i1* %t22
  br i1 %t363, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %t364 = load i8, i8* %t11
  %t365 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %t366 = load i8, i8* %t365
  %t367 = zext i8 %t366 to i64
  %t368 = zext i8 %t364 to i64
  %t369 = icmp eq i64 %t368, %t367
  store i1 %t369, i1* %t21
  br label %sc_or_end85
sc_or_end85:
  %t370 = load i1, i1* %t21
  br i1 %t370, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %t371 = load i8, i8* %t11
  %t372 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %t373 = load i8, i8* %t372
  %t374 = zext i8 %t373 to i64
  %t375 = zext i8 %t371 to i64
  %t376 = icmp eq i64 %t375, %t374
  store i1 %t376, i1* %t20
  br label %sc_or_end87
sc_or_end87:
  %t377 = load i1, i1* %t20
  br i1 %t377, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %t378 = load i8, i8* %t11
  %t379 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %t380 = load i8, i8* %t379
  %t381 = zext i8 %t380 to i64
  %t382 = zext i8 %t378 to i64
  %t383 = icmp eq i64 %t382, %t381
  store i1 %t383, i1* %t19
  br label %sc_or_end89
sc_or_end89:
  %t384 = load i1, i1* %t19
  br i1 %t384, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %t385 = load i8, i8* %t11
  %t386 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %t387 = load i8, i8* %t386
  %t388 = zext i8 %t387 to i64
  %t389 = zext i8 %t385 to i64
  %t390 = icmp eq i64 %t389, %t388
  store i1 %t390, i1* %t18
  br label %sc_or_end91
sc_or_end91:
  %t391 = load i1, i1* %t18
  br i1 %t391, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %t392 = load i8, i8* %t11
  %t393 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %t394 = load i8, i8* %t393
  %t395 = zext i8 %t394 to i64
  %t396 = zext i8 %t392 to i64
  %t397 = icmp eq i64 %t396, %t395
  store i1 %t397, i1* %t17
  br label %sc_or_end93
sc_or_end93:
  %t398 = load i1, i1* %t17
  br i1 %t398, label %sc_or_end95, label %sc_or_rhs94
sc_or_rhs94:
  %t399 = load i8, i8* %t11
  %t400 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %t401 = load i8, i8* %t400
  %t402 = zext i8 %t401 to i64
  %t403 = zext i8 %t399 to i64
  %t404 = icmp eq i64 %t403, %t402
  store i1 %t404, i1* %t16
  br label %sc_or_end95
sc_or_end95:
  %t405 = load i1, i1* %t16
  br i1 %t405, label %sc_or_end97, label %sc_or_rhs96
sc_or_rhs96:
  %t406 = load i8, i8* %t11
  %t407 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %t408 = load i8, i8* %t407
  %t409 = zext i8 %t408 to i64
  %t410 = zext i8 %t406 to i64
  %t411 = icmp eq i64 %t410, %t409
  store i1 %t411, i1* %t15
  br label %sc_or_end97
sc_or_end97:
  %t412 = load i1, i1* %t15
  br i1 %t412, label %sc_or_end99, label %sc_or_rhs98
sc_or_rhs98:
  %t413 = load i8, i8* %t11
  %t414 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %t415 = load i8, i8* %t414
  %t416 = zext i8 %t415 to i64
  %t417 = zext i8 %t413 to i64
  %t418 = icmp eq i64 %t417, %t416
  store i1 %t418, i1* %t14
  br label %sc_or_end99
sc_or_end99:
  %t419 = load i1, i1* %t14
  br i1 %t419, label %sc_or_end101, label %sc_or_rhs100
sc_or_rhs100:
  %t420 = load i8, i8* %t11
  %t421 = getelementptr [1 x i8], [1 x i8]* @.str205, i32 0, i32 0
  %t422 = load i8, i8* %t421
  %t423 = zext i8 %t422 to i64
  %t424 = zext i8 %t420 to i64
  %t425 = icmp eq i64 %t424, %t423
  store i1 %t425, i1* %t13
  br label %sc_or_end101
sc_or_end101:
  %t426 = load i1, i1* %t13
  br i1 %t426, label %sc_or_end103, label %sc_or_rhs102
sc_or_rhs102:
  %t427 = load i8, i8* %t11
  %t428 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %t429 = load i8, i8* %t428
  %t430 = zext i8 %t429 to i64
  %t431 = zext i8 %t427 to i64
  %t432 = icmp eq i64 %t431, %t430
  store i1 %t432, i1* %t12
  br label %sc_or_end103
sc_or_end103:
  %t433 = load i1, i1* %t12
  ret i1 %t433
}

define internal i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %t11 = alloca i8
  %t12 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i8 %c.param, i8* %t11
  store i1 true, i1* %t12
  %t13 = load i8, i8* %t11
  %t14 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t13)
  br i1 %t14, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %t15 = load i8, i8* %t11
  %t16 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t15)
  store i1 %t16, i1* %t12
  br label %sc_or_end1
sc_or_end1:
  %t17 = load i1, i1* %t12
  ret i1 %t17
}

define internal i1 @tokenize_con_avisos__is_hex_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %t11 = alloca i8
  %t12 = alloca i1
  %t13 = alloca i1
  %t14 = alloca i1
  %t15 = alloca i1
  %t16 = alloca i1
  %t17 = alloca i1
  %t18 = alloca i1
  %t19 = alloca i1
  %t20 = alloca i1
  %t21 = alloca i1
  %t22 = alloca i1
  %t23 = alloca i1
  %t24 = alloca i1
  %t25 = alloca i1
  %t26 = alloca i1
  %t27 = alloca i1
  %t28 = alloca i1
  %t29 = alloca i1
  %t30 = alloca i1
  %t31 = alloca i1
  %t32 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i8 %c.param, i8* %t11
  store i1 true, i1* %t12
  store i1 true, i1* %t13
  store i1 true, i1* %t14
  store i1 true, i1* %t15
  store i1 true, i1* %t16
  store i1 true, i1* %t17
  store i1 true, i1* %t18
  store i1 true, i1* %t19
  store i1 true, i1* %t20
  store i1 true, i1* %t21
  store i1 true, i1* %t22
  store i1 true, i1* %t23
  store i1 true, i1* %t24
  store i1 true, i1* %t25
  store i1 true, i1* %t26
  store i1 true, i1* %t27
  store i1 true, i1* %t28
  store i1 true, i1* %t29
  store i1 true, i1* %t30
  store i1 true, i1* %t31
  store i1 true, i1* %t32
  %t33 = load i8, i8* %t11
  %t34 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %t35 = load i8, i8* %t34
  %t36 = zext i8 %t35 to i64
  %t37 = zext i8 %t33 to i64
  %t38 = icmp eq i64 %t37, %t36
  br i1 %t38, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %t39 = load i8, i8* %t11
  %t40 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %t41 = load i8, i8* %t40
  %t42 = zext i8 %t41 to i64
  %t43 = zext i8 %t39 to i64
  %t44 = icmp eq i64 %t43, %t42
  store i1 %t44, i1* %t32
  br label %sc_or_end1
sc_or_end1:
  %t45 = load i1, i1* %t32
  br i1 %t45, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %t46 = load i8, i8* %t11
  %t47 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %t48 = load i8, i8* %t47
  %t49 = zext i8 %t48 to i64
  %t50 = zext i8 %t46 to i64
  %t51 = icmp eq i64 %t50, %t49
  store i1 %t51, i1* %t31
  br label %sc_or_end3
sc_or_end3:
  %t52 = load i1, i1* %t31
  br i1 %t52, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %t53 = load i8, i8* %t11
  %t54 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %t55 = load i8, i8* %t54
  %t56 = zext i8 %t55 to i64
  %t57 = zext i8 %t53 to i64
  %t58 = icmp eq i64 %t57, %t56
  store i1 %t58, i1* %t30
  br label %sc_or_end5
sc_or_end5:
  %t59 = load i1, i1* %t30
  br i1 %t59, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t60 = load i8, i8* %t11
  %t61 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %t62 = load i8, i8* %t61
  %t63 = zext i8 %t62 to i64
  %t64 = zext i8 %t60 to i64
  %t65 = icmp eq i64 %t64, %t63
  store i1 %t65, i1* %t29
  br label %sc_or_end7
sc_or_end7:
  %t66 = load i1, i1* %t29
  br i1 %t66, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %t67 = load i8, i8* %t11
  %t68 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %t69 = load i8, i8* %t68
  %t70 = zext i8 %t69 to i64
  %t71 = zext i8 %t67 to i64
  %t72 = icmp eq i64 %t71, %t70
  store i1 %t72, i1* %t28
  br label %sc_or_end9
sc_or_end9:
  %t73 = load i1, i1* %t28
  br i1 %t73, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %t74 = load i8, i8* %t11
  %t75 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %t76 = load i8, i8* %t75
  %t77 = zext i8 %t76 to i64
  %t78 = zext i8 %t74 to i64
  %t79 = icmp eq i64 %t78, %t77
  store i1 %t79, i1* %t27
  br label %sc_or_end11
sc_or_end11:
  %t80 = load i1, i1* %t27
  br i1 %t80, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %t81 = load i8, i8* %t11
  %t82 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %t83 = load i8, i8* %t82
  %t84 = zext i8 %t83 to i64
  %t85 = zext i8 %t81 to i64
  %t86 = icmp eq i64 %t85, %t84
  store i1 %t86, i1* %t26
  br label %sc_or_end13
sc_or_end13:
  %t87 = load i1, i1* %t26
  br i1 %t87, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %t88 = load i8, i8* %t11
  %t89 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %t90 = load i8, i8* %t89
  %t91 = zext i8 %t90 to i64
  %t92 = zext i8 %t88 to i64
  %t93 = icmp eq i64 %t92, %t91
  store i1 %t93, i1* %t25
  br label %sc_or_end15
sc_or_end15:
  %t94 = load i1, i1* %t25
  br i1 %t94, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %t95 = load i8, i8* %t11
  %t96 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %t97 = load i8, i8* %t96
  %t98 = zext i8 %t97 to i64
  %t99 = zext i8 %t95 to i64
  %t100 = icmp eq i64 %t99, %t98
  store i1 %t100, i1* %t24
  br label %sc_or_end17
sc_or_end17:
  %t101 = load i1, i1* %t24
  br i1 %t101, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %t102 = load i8, i8* %t11
  %t103 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %t104 = load i8, i8* %t103
  %t105 = zext i8 %t104 to i64
  %t106 = zext i8 %t102 to i64
  %t107 = icmp eq i64 %t106, %t105
  store i1 %t107, i1* %t23
  br label %sc_or_end19
sc_or_end19:
  %t108 = load i1, i1* %t23
  br i1 %t108, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %t109 = load i8, i8* %t11
  %t110 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %t111 = load i8, i8* %t110
  %t112 = zext i8 %t111 to i64
  %t113 = zext i8 %t109 to i64
  %t114 = icmp eq i64 %t113, %t112
  store i1 %t114, i1* %t22
  br label %sc_or_end21
sc_or_end21:
  %t115 = load i1, i1* %t22
  br i1 %t115, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %t116 = load i8, i8* %t11
  %t117 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %t118 = load i8, i8* %t117
  %t119 = zext i8 %t118 to i64
  %t120 = zext i8 %t116 to i64
  %t121 = icmp eq i64 %t120, %t119
  store i1 %t121, i1* %t21
  br label %sc_or_end23
sc_or_end23:
  %t122 = load i1, i1* %t21
  br i1 %t122, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %t123 = load i8, i8* %t11
  %t124 = getelementptr [1 x i8], [1 x i8]* @.str220, i32 0, i32 0
  %t125 = load i8, i8* %t124
  %t126 = zext i8 %t125 to i64
  %t127 = zext i8 %t123 to i64
  %t128 = icmp eq i64 %t127, %t126
  store i1 %t128, i1* %t20
  br label %sc_or_end25
sc_or_end25:
  %t129 = load i1, i1* %t20
  br i1 %t129, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %t130 = load i8, i8* %t11
  %t131 = getelementptr [1 x i8], [1 x i8]* @.str221, i32 0, i32 0
  %t132 = load i8, i8* %t131
  %t133 = zext i8 %t132 to i64
  %t134 = zext i8 %t130 to i64
  %t135 = icmp eq i64 %t134, %t133
  store i1 %t135, i1* %t19
  br label %sc_or_end27
sc_or_end27:
  %t136 = load i1, i1* %t19
  br i1 %t136, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %t137 = load i8, i8* %t11
  %t138 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %t139 = load i8, i8* %t138
  %t140 = zext i8 %t139 to i64
  %t141 = zext i8 %t137 to i64
  %t142 = icmp eq i64 %t141, %t140
  store i1 %t142, i1* %t18
  br label %sc_or_end29
sc_or_end29:
  %t143 = load i1, i1* %t18
  br i1 %t143, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %t144 = load i8, i8* %t11
  %t145 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %t146 = load i8, i8* %t145
  %t147 = zext i8 %t146 to i64
  %t148 = zext i8 %t144 to i64
  %t149 = icmp eq i64 %t148, %t147
  store i1 %t149, i1* %t17
  br label %sc_or_end31
sc_or_end31:
  %t150 = load i1, i1* %t17
  br i1 %t150, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %t151 = load i8, i8* %t11
  %t152 = getelementptr [1 x i8], [1 x i8]* @.str224, i32 0, i32 0
  %t153 = load i8, i8* %t152
  %t154 = zext i8 %t153 to i64
  %t155 = zext i8 %t151 to i64
  %t156 = icmp eq i64 %t155, %t154
  store i1 %t156, i1* %t16
  br label %sc_or_end33
sc_or_end33:
  %t157 = load i1, i1* %t16
  br i1 %t157, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %t158 = load i8, i8* %t11
  %t159 = getelementptr [1 x i8], [1 x i8]* @.str225, i32 0, i32 0
  %t160 = load i8, i8* %t159
  %t161 = zext i8 %t160 to i64
  %t162 = zext i8 %t158 to i64
  %t163 = icmp eq i64 %t162, %t161
  store i1 %t163, i1* %t15
  br label %sc_or_end35
sc_or_end35:
  %t164 = load i1, i1* %t15
  br i1 %t164, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %t165 = load i8, i8* %t11
  %t166 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %t167 = load i8, i8* %t166
  %t168 = zext i8 %t167 to i64
  %t169 = zext i8 %t165 to i64
  %t170 = icmp eq i64 %t169, %t168
  store i1 %t170, i1* %t14
  br label %sc_or_end37
sc_or_end37:
  %t171 = load i1, i1* %t14
  br i1 %t171, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %t172 = load i8, i8* %t11
  %t173 = getelementptr [1 x i8], [1 x i8]* @.str227, i32 0, i32 0
  %t174 = load i8, i8* %t173
  %t175 = zext i8 %t174 to i64
  %t176 = zext i8 %t172 to i64
  %t177 = icmp eq i64 %t176, %t175
  store i1 %t177, i1* %t13
  br label %sc_or_end39
sc_or_end39:
  %t178 = load i1, i1* %t13
  br i1 %t178, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %t179 = load i8, i8* %t11
  %t180 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %t181 = load i8, i8* %t180
  %t182 = zext i8 %t181 to i64
  %t183 = zext i8 %t179 to i64
  %t184 = icmp eq i64 %t183, %t182
  store i1 %t184, i1* %t12
  br label %sc_or_end41
sc_or_end41:
  %t185 = load i1, i1* %t12
  ret i1 %t185
}

define internal i64 @tokenize_con_avisos__hex_digit_val(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %t11 = alloca i8
  %t72 = alloca i1
  %t86 = alloca i1
  %t100 = alloca i1
  %t114 = alloca i1
  %t128 = alloca i1
  %t142 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i8 %c.param, i8* %t11
  %t12 = load i8, i8* %t11
  %t13 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %t14 = load i8, i8* %t13
  %t15 = zext i8 %t14 to i64
  %t16 = zext i8 %t12 to i64
  %t17 = icmp eq i64 %t16, %t15
  br i1 %t17, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %t18 = load i8, i8* %t11
  %t19 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %t20 = load i8, i8* %t19
  %t21 = zext i8 %t20 to i64
  %t22 = zext i8 %t18 to i64
  %t23 = icmp eq i64 %t22, %t21
  br i1 %t23, label %then3, label %else4
then3:
  ret i64 1
else4:
  br label %merge5
merge5:
  %t24 = load i8, i8* %t11
  %t25 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %t26 = load i8, i8* %t25
  %t27 = zext i8 %t26 to i64
  %t28 = zext i8 %t24 to i64
  %t29 = icmp eq i64 %t28, %t27
  br i1 %t29, label %then6, label %else7
then6:
  ret i64 2
else7:
  br label %merge8
merge8:
  %t30 = load i8, i8* %t11
  %t31 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %t32 = load i8, i8* %t31
  %t33 = zext i8 %t32 to i64
  %t34 = zext i8 %t30 to i64
  %t35 = icmp eq i64 %t34, %t33
  br i1 %t35, label %then9, label %else10
then9:
  ret i64 3
else10:
  br label %merge11
merge11:
  %t36 = load i8, i8* %t11
  %t37 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %t38 = load i8, i8* %t37
  %t39 = zext i8 %t38 to i64
  %t40 = zext i8 %t36 to i64
  %t41 = icmp eq i64 %t40, %t39
  br i1 %t41, label %then12, label %else13
then12:
  ret i64 4
else13:
  br label %merge14
merge14:
  %t42 = load i8, i8* %t11
  %t43 = getelementptr [1 x i8], [1 x i8]* @.str234, i32 0, i32 0
  %t44 = load i8, i8* %t43
  %t45 = zext i8 %t44 to i64
  %t46 = zext i8 %t42 to i64
  %t47 = icmp eq i64 %t46, %t45
  br i1 %t47, label %then15, label %else16
then15:
  ret i64 5
else16:
  br label %merge17
merge17:
  %t48 = load i8, i8* %t11
  %t49 = getelementptr [1 x i8], [1 x i8]* @.str235, i32 0, i32 0
  %t50 = load i8, i8* %t49
  %t51 = zext i8 %t50 to i64
  %t52 = zext i8 %t48 to i64
  %t53 = icmp eq i64 %t52, %t51
  br i1 %t53, label %then18, label %else19
then18:
  ret i64 6
else19:
  br label %merge20
merge20:
  %t54 = load i8, i8* %t11
  %t55 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %t56 = load i8, i8* %t55
  %t57 = zext i8 %t56 to i64
  %t58 = zext i8 %t54 to i64
  %t59 = icmp eq i64 %t58, %t57
  br i1 %t59, label %then21, label %else22
then21:
  ret i64 7
else22:
  br label %merge23
merge23:
  %t60 = load i8, i8* %t11
  %t61 = getelementptr [1 x i8], [1 x i8]* @.str237, i32 0, i32 0
  %t62 = load i8, i8* %t61
  %t63 = zext i8 %t62 to i64
  %t64 = zext i8 %t60 to i64
  %t65 = icmp eq i64 %t64, %t63
  br i1 %t65, label %then24, label %else25
then24:
  ret i64 8
else25:
  br label %merge26
merge26:
  %t66 = load i8, i8* %t11
  %t67 = getelementptr [1 x i8], [1 x i8]* @.str238, i32 0, i32 0
  %t68 = load i8, i8* %t67
  %t69 = zext i8 %t68 to i64
  %t70 = zext i8 %t66 to i64
  %t71 = icmp eq i64 %t70, %t69
  br i1 %t71, label %then27, label %else28
then27:
  ret i64 9
else28:
  br label %merge29
merge29:
  store i1 true, i1* %t72
  %t73 = load i8, i8* %t11
  %t74 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %t75 = load i8, i8* %t74
  %t76 = zext i8 %t75 to i64
  %t77 = zext i8 %t73 to i64
  %t78 = icmp eq i64 %t77, %t76
  br i1 %t78, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %t79 = load i8, i8* %t11
  %t80 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %t81 = load i8, i8* %t80
  %t82 = zext i8 %t81 to i64
  %t83 = zext i8 %t79 to i64
  %t84 = icmp eq i64 %t83, %t82
  store i1 %t84, i1* %t72
  br label %sc_or_end31
sc_or_end31:
  %t85 = load i1, i1* %t72
  br i1 %t85, label %then32, label %else33
then32:
  ret i64 10
else33:
  br label %merge34
merge34:
  store i1 true, i1* %t86
  %t87 = load i8, i8* %t11
  %t88 = getelementptr [1 x i8], [1 x i8]* @.str241, i32 0, i32 0
  %t89 = load i8, i8* %t88
  %t90 = zext i8 %t89 to i64
  %t91 = zext i8 %t87 to i64
  %t92 = icmp eq i64 %t91, %t90
  br i1 %t92, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %t93 = load i8, i8* %t11
  %t94 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %t95 = load i8, i8* %t94
  %t96 = zext i8 %t95 to i64
  %t97 = zext i8 %t93 to i64
  %t98 = icmp eq i64 %t97, %t96
  store i1 %t98, i1* %t86
  br label %sc_or_end36
sc_or_end36:
  %t99 = load i1, i1* %t86
  br i1 %t99, label %then37, label %else38
then37:
  ret i64 11
else38:
  br label %merge39
merge39:
  store i1 true, i1* %t100
  %t101 = load i8, i8* %t11
  %t102 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %t103 = load i8, i8* %t102
  %t104 = zext i8 %t103 to i64
  %t105 = zext i8 %t101 to i64
  %t106 = icmp eq i64 %t105, %t104
  br i1 %t106, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %t107 = load i8, i8* %t11
  %t108 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %t109 = load i8, i8* %t108
  %t110 = zext i8 %t109 to i64
  %t111 = zext i8 %t107 to i64
  %t112 = icmp eq i64 %t111, %t110
  store i1 %t112, i1* %t100
  br label %sc_or_end41
sc_or_end41:
  %t113 = load i1, i1* %t100
  br i1 %t113, label %then42, label %else43
then42:
  ret i64 12
else43:
  br label %merge44
merge44:
  store i1 true, i1* %t114
  %t115 = load i8, i8* %t11
  %t116 = getelementptr [1 x i8], [1 x i8]* @.str245, i32 0, i32 0
  %t117 = load i8, i8* %t116
  %t118 = zext i8 %t117 to i64
  %t119 = zext i8 %t115 to i64
  %t120 = icmp eq i64 %t119, %t118
  br i1 %t120, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %t121 = load i8, i8* %t11
  %t122 = getelementptr [1 x i8], [1 x i8]* @.str246, i32 0, i32 0
  %t123 = load i8, i8* %t122
  %t124 = zext i8 %t123 to i64
  %t125 = zext i8 %t121 to i64
  %t126 = icmp eq i64 %t125, %t124
  store i1 %t126, i1* %t114
  br label %sc_or_end46
sc_or_end46:
  %t127 = load i1, i1* %t114
  br i1 %t127, label %then47, label %else48
then47:
  ret i64 13
else48:
  br label %merge49
merge49:
  store i1 true, i1* %t128
  %t129 = load i8, i8* %t11
  %t130 = getelementptr [1 x i8], [1 x i8]* @.str247, i32 0, i32 0
  %t131 = load i8, i8* %t130
  %t132 = zext i8 %t131 to i64
  %t133 = zext i8 %t129 to i64
  %t134 = icmp eq i64 %t133, %t132
  br i1 %t134, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %t135 = load i8, i8* %t11
  %t136 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %t137 = load i8, i8* %t136
  %t138 = zext i8 %t137 to i64
  %t139 = zext i8 %t135 to i64
  %t140 = icmp eq i64 %t139, %t138
  store i1 %t140, i1* %t128
  br label %sc_or_end51
sc_or_end51:
  %t141 = load i1, i1* %t128
  br i1 %t141, label %then52, label %else53
then52:
  ret i64 14
else53:
  br label %merge54
merge54:
  store i1 true, i1* %t142
  %t143 = load i8, i8* %t11
  %t144 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %t145 = load i8, i8* %t144
  %t146 = zext i8 %t145 to i64
  %t147 = zext i8 %t143 to i64
  %t148 = icmp eq i64 %t147, %t146
  br i1 %t148, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %t149 = load i8, i8* %t11
  %t150 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %t151 = load i8, i8* %t150
  %t152 = zext i8 %t151 to i64
  %t153 = zext i8 %t149 to i64
  %t154 = icmp eq i64 %t153, %t152
  store i1 %t154, i1* %t142
  br label %sc_or_end56
sc_or_end56:
  %t155 = load i1, i1* %t142
  br i1 %t155, label %then57, label %else58
then57:
  ret i64 15
else58:
  br label %merge59
merge59:
  ret i64 0
}

define internal %nyx_string* @tokenize_con_avisos__digit_to_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %d.param) {
  %t11 = alloca i64
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i64 %d.param, i64* %t11
  %t12 = load i64, i64* %t11
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %then0, label %else1
then0:
  %t14 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %t15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t14, i64 1)
  ret %nyx_string* %t15
else1:
  br label %merge2
merge2:
  %t16 = load i64, i64* %t11
  %t17 = icmp eq i64 %t16, 1
  br i1 %t17, label %then3, label %else4
then3:
  %t18 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %t19 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t18, i64 1)
  ret %nyx_string* %t19
else4:
  br label %merge5
merge5:
  %t20 = load i64, i64* %t11
  %t21 = icmp eq i64 %t20, 2
  br i1 %t21, label %then6, label %else7
then6:
  %t22 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %t23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t22, i64 1)
  ret %nyx_string* %t23
else7:
  br label %merge8
merge8:
  %t24 = load i64, i64* %t11
  %t25 = icmp eq i64 %t24, 3
  br i1 %t25, label %then9, label %else10
then9:
  %t26 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %t27 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t26, i64 1)
  ret %nyx_string* %t27
else10:
  br label %merge11
merge11:
  %t28 = load i64, i64* %t11
  %t29 = icmp eq i64 %t28, 4
  br i1 %t29, label %then12, label %else13
then12:
  %t30 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %t31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t30, i64 1)
  ret %nyx_string* %t31
else13:
  br label %merge14
merge14:
  %t32 = load i64, i64* %t11
  %t33 = icmp eq i64 %t32, 5
  br i1 %t33, label %then15, label %else16
then15:
  %t34 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t34, i64 1)
  ret %nyx_string* %t35
else16:
  br label %merge17
merge17:
  %t36 = load i64, i64* %t11
  %t37 = icmp eq i64 %t36, 6
  br i1 %t37, label %then18, label %else19
then18:
  %t38 = getelementptr [2 x i8], [2 x i8]* @.str257, i32 0, i32 0
  %t39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t38, i64 1)
  ret %nyx_string* %t39
else19:
  br label %merge20
merge20:
  %t40 = load i64, i64* %t11
  %t41 = icmp eq i64 %t40, 7
  br i1 %t41, label %then21, label %else22
then21:
  %t42 = getelementptr [2 x i8], [2 x i8]* @.str258, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t42, i64 1)
  ret %nyx_string* %t43
else22:
  br label %merge23
merge23:
  %t44 = load i64, i64* %t11
  %t45 = icmp eq i64 %t44, 8
  br i1 %t45, label %then24, label %else25
then24:
  %t46 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t46, i64 1)
  ret %nyx_string* %t47
else25:
  br label %merge26
merge26:
  %t48 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t48, i64 1)
  ret %nyx_string* %t49
}

define internal %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %n.param) {
  %t11 = alloca i64
  %t18 = alloca %nyx_string*
  %t20 = alloca i64
  %t21 = alloca i1
  %t28 = alloca i64
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i64 %n.param, i64* %t11
  %t12 = load i64, i64* %t11
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %then0, label %else1
then0:
  %t14 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %t15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t14, i64 1)
  ret %nyx_string* %t15
else1:
  br label %merge2
merge2:
  %t16 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %t17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t16, i64 0)
  store %nyx_string* %t17, %nyx_string** %t18
  %t19 = load i64, i64* %t11
  store i64 %t19, i64* %t20
  store i1 0, i1* %t21
  br label %while_cond3
while_cond3:
  %t22 = load i1, i1* %t21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %while_body4, label %while_end5
while_body4:
  %t24 = load i64, i64* %t20
  %t25 = icmp sle i64 %t24, 0
  br i1 %t25, label %then6, label %else7
then6:
  store i1 1, i1* %t21
  br label %merge8
else7:
  %t26 = load i64, i64* %t20
  %t27 = srem i64 %t26, 10
  store i64 %t27, i64* %t28
  %t29 = load i64, i64* %t28
  %t30 = call %nyx_string* @tokenize_con_avisos__digit_to_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t29)
  %t31 = load %nyx_string*, %nyx_string** %t18
  %t32 = call %nyx_string* @nyx_string_concat(%nyx_string* %t30, %nyx_string* %t31)
  store %nyx_string* %t32, %nyx_string** %t18
  %t33 = load i64, i64* %t20
  %t34 = sdiv i64 %t33, 10
  store i64 %t34, i64* %t20
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %t35 = load %nyx_string*, %nyx_string** %t18
  ret %nyx_string* %t35
}

define internal i64 @tokenize_con_avisos__hex_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %s.param) {
  %t11 = alloca %nyx_string*
  %t12 = alloca i64
  %t13 = alloca i64
  %t14 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store %nyx_string* %s.param, %nyx_string** %t11
  store i64 0, i64* %t12
  store i64 0, i64* %t13
  store i1 0, i1* %t14
  br label %while_cond0
while_cond0:
  %t15 = load i1, i1* %t14
  %t16 = xor i1 %t15, true
  br i1 %t16, label %while_body1, label %while_end2
while_body1:
  %t17 = load i64, i64* %t13
  %t18 = load %nyx_string*, %nyx_string** %t11
  %t19 = call i64 @nyx_string_byte_length(%nyx_string* %t18)
  %t20 = icmp sge i64 %t17, %t19
  br i1 %t20, label %then3, label %else4
then3:
  store i1 1, i1* %t14
  br label %merge5
else4:
  %t21 = load i64, i64* %t12
  %t22 = mul i64 %t21, 16
  %t23 = load %nyx_string*, %nyx_string** %t11
  %t24 = load i64, i64* %t13
  %t25 = call i8 @nyx_string_char_at(%nyx_string* %t23, i64 %t24)
  %t26 = zext i8 %t25 to i64
  %t27 = call i64 @tokenize_con_avisos__hex_digit_val(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t26)
  %t28 = add i64 %t22, %t27
  store i64 %t28, i64* %t12
  %t29 = load i64, i64* %t13
  %t30 = add i64 %t29, 1
  store i64 %t30, i64* %t13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t31 = load i64, i64* %t12
  ret i64 %t31
}

define internal i64 @tokenize_con_avisos__bin_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %s.param) {
  %t11 = alloca %nyx_string*
  %t12 = alloca i64
  %t13 = alloca i64
  %t14 = alloca i1
  %t26 = alloca i8
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store %nyx_string* %s.param, %nyx_string** %t11
  store i64 0, i64* %t12
  store i64 0, i64* %t13
  store i1 0, i1* %t14
  br label %while_cond0
while_cond0:
  %t15 = load i1, i1* %t14
  %t16 = xor i1 %t15, true
  br i1 %t16, label %while_body1, label %while_end2
while_body1:
  %t17 = load i64, i64* %t13
  %t18 = load %nyx_string*, %nyx_string** %t11
  %t19 = call i64 @nyx_string_byte_length(%nyx_string* %t18)
  %t20 = icmp sge i64 %t17, %t19
  br i1 %t20, label %then3, label %else4
then3:
  store i1 1, i1* %t14
  br label %merge5
else4:
  %t21 = load %nyx_string*, %nyx_string** %t11
  %t22 = load i64, i64* %t13
  %t23 = call i8 @nyx_string_char_at(%nyx_string* %t21, i64 %t22)
  %t24 = zext i8 %t23 to i64
  %t25 = trunc i64 %t24 to i8
  store i8 %t25, i8* %t26
  %t27 = load i8, i8* %t26
  %t28 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %t29 = load i8, i8* %t28
  %t30 = zext i8 %t29 to i64
  %t31 = zext i8 %t27 to i64
  %t32 = icmp eq i64 %t31, %t30
  br i1 %t32, label %then6, label %else7
then6:
  %t33 = load i64, i64* %t12
  %t34 = mul i64 %t33, 2
  %t35 = add i64 %t34, 1
  store i64 %t35, i64* %t12
  br label %merge8
else7:
  %t36 = load i64, i64* %t12
  %t37 = mul i64 %t36, 2
  store i64 %t37, i64* %t12
  br label %merge8
merge8:
  %t38 = load i64, i64* %t13
  %t39 = add i64 %t38, 1
  store i64 %t39, i64* %t13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t40 = load i64, i64* %t12
  ret i64 %t40
}

define internal i64 @tokenize_con_avisos__oct_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %s.param) {
  %t11 = alloca %nyx_string*
  %t12 = alloca i64
  %t13 = alloca i64
  %t14 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store %nyx_string* %s.param, %nyx_string** %t11
  store i64 0, i64* %t12
  store i64 0, i64* %t13
  store i1 0, i1* %t14
  br label %while_cond0
while_cond0:
  %t15 = load i1, i1* %t14
  %t16 = xor i1 %t15, true
  br i1 %t16, label %while_body1, label %while_end2
while_body1:
  %t17 = load i64, i64* %t13
  %t18 = load %nyx_string*, %nyx_string** %t11
  %t19 = call i64 @nyx_string_byte_length(%nyx_string* %t18)
  %t20 = icmp sge i64 %t17, %t19
  br i1 %t20, label %then3, label %else4
then3:
  store i1 1, i1* %t14
  br label %merge5
else4:
  %t21 = load i64, i64* %t12
  %t22 = mul i64 %t21, 8
  %t23 = load %nyx_string*, %nyx_string** %t11
  %t24 = load i64, i64* %t13
  %t25 = call i8 @nyx_string_char_at(%nyx_string* %t23, i64 %t24)
  %t26 = zext i8 %t25 to i64
  %t27 = call i64 @tokenize_con_avisos__hex_digit_val(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t26)
  %t28 = add i64 %t22, %t27
  store i64 %t28, i64* %t12
  %t29 = load i64, i64* %t13
  %t30 = add i64 %t29, 1
  store i64 %t30, i64* %t13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t31 = load i64, i64* %t12
  ret i64 %t31
}

define internal i64 @tokenize_con_avisos__skip_whitespace(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t11 = alloca i1
  %t15 = alloca i8
  %t16 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i1 0, i1* %t11
  br label %while_cond0
while_cond0:
  %t12 = load i1, i1* %t11
  %t13 = xor i1 %t12, true
  br i1 %t13, label %while_body1, label %while_end2
while_body1:
  %t14 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t14, i8* %t15
  store i1 true, i1* %t16
  %t17 = load i8, i8* %t15
  %t18 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %t19 = load i8, i8* %t18
  %t20 = zext i8 %t19 to i64
  %t21 = zext i8 %t17 to i64
  %t22 = icmp eq i64 %t21, %t20
  br i1 %t22, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t23 = load i8, i8* %t15
  %t24 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %t25 = load i8, i8* %t24
  %t26 = zext i8 %t25 to i64
  %t27 = zext i8 %t23 to i64
  %t28 = icmp eq i64 %t27, %t26
  store i1 %t28, i1* %t16
  br label %sc_or_end4
sc_or_end4:
  %t29 = load i1, i1* %t16
  br i1 %t29, label %then5, label %else6
then5:
  %t30 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge7
else6:
  store i1 1, i1* %t11
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__skip_comment(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t13 = alloca %nyx_string*
  %t14 = alloca i1
  %t37 = alloca %nyx_string*
  %t40 = alloca i64
  %t54 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %t12 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t11, i64 0)
  store %nyx_string* %t12, %nyx_string** %t13
  store i1 0, i1* %t14
  br label %while_cond0
while_cond0:
  %t15 = load i1, i1* %t14
  %t16 = xor i1 %t15, true
  br i1 %t16, label %while_body1, label %while_end2
while_body1:
  %t17 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t17, label %then3, label %else4
then3:
  store i1 1, i1* %t14
  br label %merge5
else4:
  %t18 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t19 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %t20 = load i8, i8* %t19
  %t21 = zext i8 %t20 to i64
  %t22 = zext i8 %t18 to i64
  %t23 = icmp eq i64 %t22, %t21
  br i1 %t23, label %then6, label %else7
then6:
  store i1 1, i1* %t14
  br label %merge8
else7:
  %t24 = load %nyx_string*, %nyx_string** %t13
  %t25 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t26 = call %nyx_string* @nyx_string_from_char(i8 %t25)
  %t27 = call %nyx_string* @nyx_string_concat(%nyx_string* %t24, %nyx_string* %t26)
  store %nyx_string* %t27, %nyx_string** %t13
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t28 = load %nyx_string*, %nyx_string** %t13
  %t29 = getelementptr [7 x i8], [7 x i8]* @.str268, i32 0, i32 0
  %t30 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t29, i64 6)
  %t31 = call i1 @nyx_string_starts_with(%nyx_string* %t28, %nyx_string* %t30)
  br i1 %t31, label %then9, label %else10
then9:
  %t32 = load %nyx_string*, %nyx_string** %t13
  %t33 = load %nyx_string*, %nyx_string** %t13
  %t34 = call i64 @nyx_string_byte_length(%nyx_string* %t33)
  %t35 = call %nyx_string* @nyx_string_substring(%nyx_string* %t32, i64 6, i64 %t34)
  %t36 = call %nyx_string* @nyx_string_trim(%nyx_string* %t35)
  store %nyx_string* %t36, %nyx_string** %t37
  %t38 = load %nyx_string*, %nyx_string** %t37
  %t39 = call i64 @nyx_string_to_int(%nyx_string* %t38)
  store i64 %t39, i64* %t40
  %t41 = load i64, i64* %t40
  %t42 = icmp sgt i64 %t41, 0
  br i1 %t42, label %then12, label %else13
then12:
  %t43 = load i64, i64* %t40
  %t44 = sub i64 %t43, 1
  store i64 %t44, i64* %t6
  br label %merge14
else13:
  br label %merge14
merge14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %t45 = load %nyx_string*, %nyx_string** %t13
  %t46 = getelementptr [8 x i8], [8 x i8]* @.str269, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t46, i64 7)
  %t48 = call i1 @nyx_string_starts_with(%nyx_string* %t45, %nyx_string* %t47)
  br i1 %t48, label %then15, label %else16
then15:
  %t49 = load %nyx_string*, %nyx_string** %t13
  %t50 = load %nyx_string*, %nyx_string** %t13
  %t51 = call i64 @nyx_string_byte_length(%nyx_string* %t50)
  %t52 = call %nyx_string* @nyx_string_substring(%nyx_string* %t49, i64 7, i64 %t51)
  %t53 = call %nyx_string* @nyx_string_trim(%nyx_string* %t52)
  store %nyx_string* %t53, %nyx_string** %t54
  %t55 = getelementptr [14 x i8], [14 x i8]* @.str270, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t55, i64 13)
  %t57 = load %nyx_string*, %nyx_string** %t54
  %t58 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t56, %nyx_string* %t57)
  br label %merge17
else16:
  br label %merge17
merge17:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__skip_block_comment(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t11 = alloca i64
  %t12 = alloca i1
  %t22 = alloca i8
  %t24 = alloca i8
  %t25 = alloca i1
  %t43 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i64 1, i64* %t11
  store i1 0, i1* %t12
  br label %while_cond0
while_cond0:
  %t13 = load i1, i1* %t12
  %t14 = xor i1 %t13, true
  br i1 %t14, label %while_body1, label %while_end2
while_body1:
  %t15 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t15, label %then3, label %else4
then3:
  %t16 = getelementptr [34 x i8], [34 x i8]* @.str271, i32 0, i32 0
  %t17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t16, i64 33)
  %t18 = call i8* @nyx_string_to_cstr(%nyx_string* %t17)
  call void @nyx_print_string(i8* %t18)
  %t19 = load i64, i64* @g_lex_error_count
  %t20 = add i64 %t19, 1
  store i64 %t20, i64* @g_lex_error_count
  store i1 1, i1* %t12
  br label %merge5
else4:
  %t21 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t21, i8* %t22
  %t23 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t23, i8* %t24
  store i1 false, i1* %t25
  %t26 = load i8, i8* %t22
  %t27 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %t28 = load i8, i8* %t27
  %t29 = zext i8 %t28 to i64
  %t30 = zext i8 %t26 to i64
  %t31 = icmp eq i64 %t30, %t29
  br i1 %t31, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %t32 = load i8, i8* %t24
  %t33 = getelementptr [1 x i8], [1 x i8]* @.str273, i32 0, i32 0
  %t34 = load i8, i8* %t33
  %t35 = zext i8 %t34 to i64
  %t36 = zext i8 %t32 to i64
  %t37 = icmp eq i64 %t36, %t35
  store i1 %t37, i1* %t25
  br label %sc_and_end7
sc_and_end7:
  %t38 = load i1, i1* %t25
  br i1 %t38, label %then8, label %else9
then8:
  %t39 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t40 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t41 = load i64, i64* %t11
  %t42 = add i64 %t41, 1
  store i64 %t42, i64* %t11
  br label %merge10
else9:
  store i1 false, i1* %t43
  %t44 = load i8, i8* %t22
  %t45 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %t46 = load i8, i8* %t45
  %t47 = zext i8 %t46 to i64
  %t48 = zext i8 %t44 to i64
  %t49 = icmp eq i64 %t48, %t47
  br i1 %t49, label %sc_and_rhs11, label %sc_and_end12
sc_and_rhs11:
  %t50 = load i8, i8* %t24
  %t51 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %t52 = load i8, i8* %t51
  %t53 = zext i8 %t52 to i64
  %t54 = zext i8 %t50 to i64
  %t55 = icmp eq i64 %t54, %t53
  store i1 %t55, i1* %t43
  br label %sc_and_end12
sc_and_end12:
  %t56 = load i1, i1* %t43
  br i1 %t56, label %then13, label %else14
then13:
  %t57 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t58 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t59 = load i64, i64* %t11
  %t60 = sub i64 %t59, 1
  store i64 %t60, i64* %t11
  %t61 = load i64, i64* %t11
  %t62 = icmp eq i64 %t61, 0
  br i1 %t62, label %then16, label %else17
then16:
  store i1 1, i1* %t12
  br label %merge18
else17:
  br label %merge18
merge18:
  br label %merge15
else14:
  %t63 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge15
merge15:
  br label %merge10
merge10:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %chars.param) {
  %t11 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store { i64, i8* }* %chars.param, { i64, i8* }** %t11
  %t12 = load { i64, i8* }*, { i64, i8* }** %t11
  %t13 = load { i64, i8* }*, { i64, i8* }** %t11
  %t14 = call i64 @nyx_array_length({ i64, i8* }* %t13)
  %t15 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %t12, i64 0, i64 %t14)
  ret %nyx_string* %t15
}

define internal i64 @tokenize_con_avisos__scan_number(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t12 = alloca i64
  %t14 = alloca i8
  %t16 = alloca i8
  %t17 = alloca i1
  %t24 = alloca i1
  %t42 = alloca i64
  %t43 = alloca i1
  %t53 = alloca %nyx_string*
  %t60 = alloca i1
  %t67 = alloca i1
  %t85 = alloca i64
  %t86 = alloca i1
  %t90 = alloca i8
  %t91 = alloca i1
  %t110 = alloca %nyx_string*
  %t117 = alloca i1
  %t124 = alloca i1
  %t142 = alloca i64
  %t143 = alloca i1
  %t147 = alloca i8
  %t148 = alloca i1
  %t149 = alloca i1
  %t150 = alloca i1
  %t151 = alloca i1
  %t152 = alloca i1
  %t153 = alloca i1
  %t154 = alloca i1
  %t215 = alloca %nyx_string*
  %t222 = alloca i1
  %t228 = alloca i1
  %t239 = alloca i1
  %t246 = alloca i64
  %t255 = alloca i1
  %t257 = alloca i8
  %t258 = alloca i1
  %t273 = alloca i8
  %t276 = alloca i1
  %t277 = alloca i1
  %t306 = alloca i1
  %t318 = alloca %nyx_string*
  %t340 = alloca i64
  %t341 = alloca i1
  %t351 = alloca %nyx_string*
  %t352 = alloca i1
  %t353 = alloca i1
  %t354 = alloca i1
  %t355 = alloca i1
  %t356 = alloca i1
  %t357 = alloca i1
  %t358 = alloca i1
  %t359 = alloca i1
  %t360 = alloca i1
  %t414 = alloca %nyx_string*
  %t424 = alloca %nyx_string*
  %t433 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = load i64, i64* %t5
  store i64 %t11, i64* %t12
  %t13 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t13, i8* %t14
  %t15 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t15, i8* %t16
  store i1 false, i1* %t17
  %t18 = load i8, i8* %t14
  %t19 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %t20 = load i8, i8* %t19
  %t21 = zext i8 %t20 to i64
  %t22 = zext i8 %t18 to i64
  %t23 = icmp eq i64 %t22, %t21
  br i1 %t23, label %sc_and_rhs0, label %sc_and_end1
sc_and_rhs0:
  store i1 true, i1* %t24
  %t25 = load i8, i8* %t16
  %t26 = getelementptr [1 x i8], [1 x i8]* @.str277, i32 0, i32 0
  %t27 = load i8, i8* %t26
  %t28 = zext i8 %t27 to i64
  %t29 = zext i8 %t25 to i64
  %t30 = icmp eq i64 %t29, %t28
  br i1 %t30, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %t31 = load i8, i8* %t16
  %t32 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %t33 = load i8, i8* %t32
  %t34 = zext i8 %t33 to i64
  %t35 = zext i8 %t31 to i64
  %t36 = icmp eq i64 %t35, %t34
  store i1 %t36, i1* %t24
  br label %sc_or_end3
sc_or_end3:
  %t37 = load i1, i1* %t24
  store i1 %t37, i1* %t17
  br label %sc_and_end1
sc_and_end1:
  %t38 = load i1, i1* %t17
  br i1 %t38, label %then4, label %else5
then4:
  %t39 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t40 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t41 = load i64, i64* %t5
  store i64 %t41, i64* %t42
  store i1 0, i1* %t43
  br label %while_cond7
while_cond7:
  %t44 = load i1, i1* %t43
  %t45 = xor i1 %t44, true
  br i1 %t45, label %while_body8, label %while_end9
while_body8:
  %t46 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t47 = call i1 @tokenize_con_avisos__is_hex_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t46)
  br i1 %t47, label %then10, label %else11
then10:
  %t48 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge12
else11:
  store i1 1, i1* %t43
  br label %merge12
merge12:
  br label %while_cond7
while_end9:
  %t49 = load %nyx_string*, %nyx_string** %t3
  %t50 = load i64, i64* %t42
  %t51 = load i64, i64* %t5
  %t52 = call %nyx_string* @nyx_string_substring(%nyx_string* %t49, i64 %t50, i64 %t51)
  store %nyx_string* %t52, %nyx_string** %t53
  %t54 = getelementptr [7 x i8], [7 x i8]* @.str279, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t54, i64 6)
  %t56 = load %nyx_string*, %nyx_string** %t53
  %t57 = call i64 @tokenize_con_avisos__hex_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t56)
  %t58 = call %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t57)
  %t59 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t55, %nyx_string* %t58)
  br label %merge6
else5:
  store i1 false, i1* %t60
  %t61 = load i8, i8* %t14
  %t62 = getelementptr [1 x i8], [1 x i8]* @.str280, i32 0, i32 0
  %t63 = load i8, i8* %t62
  %t64 = zext i8 %t63 to i64
  %t65 = zext i8 %t61 to i64
  %t66 = icmp eq i64 %t65, %t64
  br i1 %t66, label %sc_and_rhs13, label %sc_and_end14
sc_and_rhs13:
  store i1 true, i1* %t67
  %t68 = load i8, i8* %t16
  %t69 = getelementptr [1 x i8], [1 x i8]* @.str281, i32 0, i32 0
  %t70 = load i8, i8* %t69
  %t71 = zext i8 %t70 to i64
  %t72 = zext i8 %t68 to i64
  %t73 = icmp eq i64 %t72, %t71
  br i1 %t73, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %t74 = load i8, i8* %t16
  %t75 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %t76 = load i8, i8* %t75
  %t77 = zext i8 %t76 to i64
  %t78 = zext i8 %t74 to i64
  %t79 = icmp eq i64 %t78, %t77
  store i1 %t79, i1* %t67
  br label %sc_or_end16
sc_or_end16:
  %t80 = load i1, i1* %t67
  store i1 %t80, i1* %t60
  br label %sc_and_end14
sc_and_end14:
  %t81 = load i1, i1* %t60
  br i1 %t81, label %then17, label %else18
then17:
  %t82 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t83 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t84 = load i64, i64* %t5
  store i64 %t84, i64* %t85
  store i1 0, i1* %t86
  br label %while_cond20
while_cond20:
  %t87 = load i1, i1* %t86
  %t88 = xor i1 %t87, true
  br i1 %t88, label %while_body21, label %while_end22
while_body21:
  %t89 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t89, i8* %t90
  store i1 true, i1* %t91
  %t92 = load i8, i8* %t90
  %t93 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %t94 = load i8, i8* %t93
  %t95 = zext i8 %t94 to i64
  %t96 = zext i8 %t92 to i64
  %t97 = icmp eq i64 %t96, %t95
  br i1 %t97, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %t98 = load i8, i8* %t90
  %t99 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %t100 = load i8, i8* %t99
  %t101 = zext i8 %t100 to i64
  %t102 = zext i8 %t98 to i64
  %t103 = icmp eq i64 %t102, %t101
  store i1 %t103, i1* %t91
  br label %sc_or_end24
sc_or_end24:
  %t104 = load i1, i1* %t91
  br i1 %t104, label %then25, label %else26
then25:
  %t105 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge27
else26:
  store i1 1, i1* %t86
  br label %merge27
merge27:
  br label %while_cond20
while_end22:
  %t106 = load %nyx_string*, %nyx_string** %t3
  %t107 = load i64, i64* %t85
  %t108 = load i64, i64* %t5
  %t109 = call %nyx_string* @nyx_string_substring(%nyx_string* %t106, i64 %t107, i64 %t108)
  store %nyx_string* %t109, %nyx_string** %t110
  %t111 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t111, i64 6)
  %t113 = load %nyx_string*, %nyx_string** %t110
  %t114 = call i64 @tokenize_con_avisos__bin_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t113)
  %t115 = call %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t114)
  %t116 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t112, %nyx_string* %t115)
  br label %merge19
else18:
  store i1 false, i1* %t117
  %t118 = load i8, i8* %t14
  %t119 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %t120 = load i8, i8* %t119
  %t121 = zext i8 %t120 to i64
  %t122 = zext i8 %t118 to i64
  %t123 = icmp eq i64 %t122, %t121
  br i1 %t123, label %sc_and_rhs28, label %sc_and_end29
sc_and_rhs28:
  store i1 true, i1* %t124
  %t125 = load i8, i8* %t16
  %t126 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %t127 = load i8, i8* %t126
  %t128 = zext i8 %t127 to i64
  %t129 = zext i8 %t125 to i64
  %t130 = icmp eq i64 %t129, %t128
  br i1 %t130, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %t131 = load i8, i8* %t16
  %t132 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %t133 = load i8, i8* %t132
  %t134 = zext i8 %t133 to i64
  %t135 = zext i8 %t131 to i64
  %t136 = icmp eq i64 %t135, %t134
  store i1 %t136, i1* %t124
  br label %sc_or_end31
sc_or_end31:
  %t137 = load i1, i1* %t124
  store i1 %t137, i1* %t117
  br label %sc_and_end29
sc_and_end29:
  %t138 = load i1, i1* %t117
  br i1 %t138, label %then32, label %else33
then32:
  %t139 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t140 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t141 = load i64, i64* %t5
  store i64 %t141, i64* %t142
  store i1 0, i1* %t143
  br label %while_cond35
while_cond35:
  %t144 = load i1, i1* %t143
  %t145 = xor i1 %t144, true
  br i1 %t145, label %while_body36, label %while_end37
while_body36:
  %t146 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t146, i8* %t147
  store i1 true, i1* %t148
  store i1 true, i1* %t149
  store i1 true, i1* %t150
  store i1 true, i1* %t151
  store i1 true, i1* %t152
  store i1 true, i1* %t153
  store i1 true, i1* %t154
  %t155 = load i8, i8* %t147
  %t156 = getelementptr [1 x i8], [1 x i8]* @.str289, i32 0, i32 0
  %t157 = load i8, i8* %t156
  %t158 = zext i8 %t157 to i64
  %t159 = zext i8 %t155 to i64
  %t160 = icmp eq i64 %t159, %t158
  br i1 %t160, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %t161 = load i8, i8* %t147
  %t162 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %t163 = load i8, i8* %t162
  %t164 = zext i8 %t163 to i64
  %t165 = zext i8 %t161 to i64
  %t166 = icmp eq i64 %t165, %t164
  store i1 %t166, i1* %t154
  br label %sc_or_end39
sc_or_end39:
  %t167 = load i1, i1* %t154
  br i1 %t167, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %t168 = load i8, i8* %t147
  %t169 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %t170 = load i8, i8* %t169
  %t171 = zext i8 %t170 to i64
  %t172 = zext i8 %t168 to i64
  %t173 = icmp eq i64 %t172, %t171
  store i1 %t173, i1* %t153
  br label %sc_or_end41
sc_or_end41:
  %t174 = load i1, i1* %t153
  br i1 %t174, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %t175 = load i8, i8* %t147
  %t176 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %t177 = load i8, i8* %t176
  %t178 = zext i8 %t177 to i64
  %t179 = zext i8 %t175 to i64
  %t180 = icmp eq i64 %t179, %t178
  store i1 %t180, i1* %t152
  br label %sc_or_end43
sc_or_end43:
  %t181 = load i1, i1* %t152
  br i1 %t181, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %t182 = load i8, i8* %t147
  %t183 = getelementptr [1 x i8], [1 x i8]* @.str293, i32 0, i32 0
  %t184 = load i8, i8* %t183
  %t185 = zext i8 %t184 to i64
  %t186 = zext i8 %t182 to i64
  %t187 = icmp eq i64 %t186, %t185
  store i1 %t187, i1* %t151
  br label %sc_or_end45
sc_or_end45:
  %t188 = load i1, i1* %t151
  br i1 %t188, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %t189 = load i8, i8* %t147
  %t190 = getelementptr [1 x i8], [1 x i8]* @.str294, i32 0, i32 0
  %t191 = load i8, i8* %t190
  %t192 = zext i8 %t191 to i64
  %t193 = zext i8 %t189 to i64
  %t194 = icmp eq i64 %t193, %t192
  store i1 %t194, i1* %t150
  br label %sc_or_end47
sc_or_end47:
  %t195 = load i1, i1* %t150
  br i1 %t195, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %t196 = load i8, i8* %t147
  %t197 = getelementptr [1 x i8], [1 x i8]* @.str295, i32 0, i32 0
  %t198 = load i8, i8* %t197
  %t199 = zext i8 %t198 to i64
  %t200 = zext i8 %t196 to i64
  %t201 = icmp eq i64 %t200, %t199
  store i1 %t201, i1* %t149
  br label %sc_or_end49
sc_or_end49:
  %t202 = load i1, i1* %t149
  br i1 %t202, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %t203 = load i8, i8* %t147
  %t204 = getelementptr [1 x i8], [1 x i8]* @.str296, i32 0, i32 0
  %t205 = load i8, i8* %t204
  %t206 = zext i8 %t205 to i64
  %t207 = zext i8 %t203 to i64
  %t208 = icmp eq i64 %t207, %t206
  store i1 %t208, i1* %t148
  br label %sc_or_end51
sc_or_end51:
  %t209 = load i1, i1* %t148
  br i1 %t209, label %then52, label %else53
then52:
  %t210 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge54
else53:
  store i1 1, i1* %t143
  br label %merge54
merge54:
  br label %while_cond35
while_end37:
  %t211 = load %nyx_string*, %nyx_string** %t3
  %t212 = load i64, i64* %t142
  %t213 = load i64, i64* %t5
  %t214 = call %nyx_string* @nyx_string_substring(%nyx_string* %t211, i64 %t212, i64 %t213)
  store %nyx_string* %t214, %nyx_string** %t215
  %t216 = getelementptr [7 x i8], [7 x i8]* @.str297, i32 0, i32 0
  %t217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t216, i64 6)
  %t218 = load %nyx_string*, %nyx_string** %t215
  %t219 = call i64 @tokenize_con_avisos__oct_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t218)
  %t220 = call %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t219)
  %t221 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t217, %nyx_string* %t220)
  br label %merge34
else33:
  store i1 0, i1* %t222
  br label %while_cond55
while_cond55:
  %t223 = load i1, i1* %t222
  %t224 = xor i1 %t223, true
  br i1 %t224, label %while_body56, label %while_end57
while_body56:
  %t225 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t226 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t225)
  br i1 %t226, label %then58, label %else59
then58:
  %t227 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge60
else59:
  store i1 1, i1* %t222
  br label %merge60
merge60:
  br label %while_cond55
while_end57:
  store i1 false, i1* %t228
  %t229 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t230 = getelementptr [1 x i8], [1 x i8]* @.str298, i32 0, i32 0
  %t231 = load i8, i8* %t230
  %t232 = zext i8 %t231 to i64
  %t233 = zext i8 %t229 to i64
  %t234 = icmp eq i64 %t233, %t232
  br i1 %t234, label %sc_and_rhs61, label %sc_and_end62
sc_and_rhs61:
  %t235 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t236 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t235)
  store i1 %t236, i1* %t228
  br label %sc_and_end62
sc_and_end62:
  %t237 = load i1, i1* %t228
  br i1 %t237, label %then63, label %else64
then63:
  %t238 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i1 0, i1* %t239
  br label %while_cond66
while_cond66:
  %t240 = load i1, i1* %t239
  %t241 = xor i1 %t240, true
  br i1 %t241, label %while_body67, label %while_end68
while_body67:
  %t242 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t243 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t242)
  br i1 %t243, label %then69, label %else70
then69:
  %t244 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge71
else70:
  store i1 1, i1* %t239
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %t245 = sub i64 0, 1
  store i64 %t245, i64* %t246
  %t247 = load %nyx_string*, %nyx_string** %t3
  %t248 = load i64, i64* %t12
  %t249 = load i64, i64* %t5
  %t250 = call %nyx_string* @nyx_string_substring(%nyx_string* %t247, i64 %t248, i64 %t249)
  %t251 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %t252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t251, i64 1)
  %t253 = call i64 @nyx_string_index_of(%nyx_string* %t250, %nyx_string* %t252)
  %t254 = icmp sge i64 %t253, 0
  store i1 %t254, i1* %t255
  %t256 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t256, i8* %t257
  store i1 true, i1* %t258
  %t259 = load i8, i8* %t257
  %t260 = getelementptr [1 x i8], [1 x i8]* @.str300, i32 0, i32 0
  %t261 = load i8, i8* %t260
  %t262 = zext i8 %t261 to i64
  %t263 = zext i8 %t259 to i64
  %t264 = icmp eq i64 %t263, %t262
  br i1 %t264, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %t265 = load i8, i8* %t257
  %t266 = getelementptr [1 x i8], [1 x i8]* @.str301, i32 0, i32 0
  %t267 = load i8, i8* %t266
  %t268 = zext i8 %t267 to i64
  %t269 = zext i8 %t265 to i64
  %t270 = icmp eq i64 %t269, %t268
  store i1 %t270, i1* %t258
  br label %sc_or_end73
sc_or_end73:
  %t271 = load i1, i1* %t258
  br i1 %t271, label %then74, label %else75
then74:
  %t272 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t272, i8* %t273
  %t274 = load i8, i8* %t273
  %t275 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t274)
  store i1 %t275, i1* %t276
  store i1 true, i1* %t277
  %t278 = load i8, i8* %t273
  %t279 = getelementptr [1 x i8], [1 x i8]* @.str302, i32 0, i32 0
  %t280 = load i8, i8* %t279
  %t281 = zext i8 %t280 to i64
  %t282 = zext i8 %t278 to i64
  %t283 = icmp eq i64 %t282, %t281
  br i1 %t283, label %sc_or_end78, label %sc_or_rhs77
sc_or_rhs77:
  %t284 = load i8, i8* %t273
  %t285 = getelementptr [1 x i8], [1 x i8]* @.str303, i32 0, i32 0
  %t286 = load i8, i8* %t285
  %t287 = zext i8 %t286 to i64
  %t288 = zext i8 %t284 to i64
  %t289 = icmp eq i64 %t288, %t287
  store i1 %t289, i1* %t277
  br label %sc_or_end78
sc_or_end78:
  %t290 = load i1, i1* %t277
  br i1 %t290, label %then79, label %else80
then79:
  %t291 = load i64, i64* %t5
  %t292 = add i64 %t291, 2
  %t293 = load %nyx_string*, %nyx_string** %t3
  %t294 = call i64 @nyx_string_byte_length(%nyx_string* %t293)
  %t295 = icmp slt i64 %t292, %t294
  br i1 %t295, label %then82, label %else83
then82:
  %t296 = load %nyx_string*, %nyx_string** %t3
  %t297 = load i64, i64* %t5
  %t298 = add i64 %t297, 2
  %t299 = call i8 @nyx_string_char_at(%nyx_string* %t296, i64 %t298)
  %t300 = zext i8 %t299 to i64
  %t301 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t300)
  br i1 %t301, label %then85, label %else86
then85:
  store i1 1, i1* %t276
  br label %merge87
else86:
  br label %merge87
merge87:
  br label %merge84
else83:
  br label %merge84
merge84:
  br label %merge81
else80:
  br label %merge81
merge81:
  %t302 = load i1, i1* %t276
  br i1 %t302, label %then88, label %else89
then88:
  %t303 = load i64, i64* %t5
  store i64 %t303, i64* %t246
  %t304 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t305 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i1 0, i1* %t306
  br label %while_cond91
while_cond91:
  %t307 = load i1, i1* %t306
  %t308 = xor i1 %t307, true
  br i1 %t308, label %while_body92, label %while_end93
while_body92:
  %t309 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t310 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t309)
  br i1 %t310, label %then94, label %else95
then94:
  %t311 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge96
else95:
  store i1 1, i1* %t306
  br label %merge96
merge96:
  br label %while_cond91
while_end93:
  br label %merge90
else89:
  br label %merge90
merge90:
  br label %merge76
else75:
  br label %merge76
merge76:
  %t312 = load i64, i64* %t246
  %t313 = icmp sge i64 %t312, 0
  br i1 %t313, label %then97, label %else98
then97:
  %t314 = load %nyx_string*, %nyx_string** %t3
  %t315 = load i64, i64* %t12
  %t316 = load i64, i64* %t5
  %t317 = call %nyx_string* @nyx_string_substring(%nyx_string* %t314, i64 %t315, i64 %t316)
  store %nyx_string* %t317, %nyx_string** %t318
  %t319 = load i1, i1* %t255
  %t320 = xor i1 %t319, true
  br i1 %t320, label %then100, label %else101
then100:
  %t321 = load %nyx_string*, %nyx_string** %t3
  %t322 = load i64, i64* %t12
  %t323 = load i64, i64* %t246
  %t324 = call %nyx_string* @nyx_string_substring(%nyx_string* %t321, i64 %t322, i64 %t323)
  %t325 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %t326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t325, i64 2)
  %t327 = call %nyx_string* @nyx_string_concat(%nyx_string* %t324, %nyx_string* %t326)
  %t328 = load %nyx_string*, %nyx_string** %t3
  %t329 = load i64, i64* %t246
  %t330 = load i64, i64* %t5
  %t331 = call %nyx_string* @nyx_string_substring(%nyx_string* %t328, i64 %t329, i64 %t330)
  %t332 = call %nyx_string* @nyx_string_concat(%nyx_string* %t327, %nyx_string* %t331)
  store %nyx_string* %t332, %nyx_string** %t318
  br label %merge102
else101:
  br label %merge102
merge102:
  %t333 = getelementptr [7 x i8], [7 x i8]* @.str305, i32 0, i32 0
  %t334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t333, i64 6)
  %t335 = load %nyx_string*, %nyx_string** %t318
  %t336 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t334, %nyx_string* %t335)
  ret i64 0
else98:
  br label %merge99
merge99:
  %t337 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t338 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t337)
  br i1 %t338, label %then103, label %else104
then103:
  %t339 = load i64, i64* %t5
  store i64 %t339, i64* %t340
  store i1 0, i1* %t341
  br label %while_cond106
while_cond106:
  %t342 = load i1, i1* %t341
  %t343 = xor i1 %t342, true
  br i1 %t343, label %while_body107, label %while_end108
while_body107:
  %t344 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t345 = call i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t344)
  br i1 %t345, label %then109, label %else110
then109:
  %t346 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge111
else110:
  store i1 1, i1* %t341
  br label %merge111
merge111:
  br label %while_cond106
while_end108:
  %t347 = load %nyx_string*, %nyx_string** %t3
  %t348 = load i64, i64* %t340
  %t349 = load i64, i64* %t5
  %t350 = call %nyx_string* @nyx_string_substring(%nyx_string* %t347, i64 %t348, i64 %t349)
  store %nyx_string* %t350, %nyx_string** %t351
  store i1 true, i1* %t352
  store i1 true, i1* %t353
  store i1 true, i1* %t354
  store i1 true, i1* %t355
  store i1 true, i1* %t356
  store i1 true, i1* %t357
  store i1 true, i1* %t358
  store i1 true, i1* %t359
  store i1 true, i1* %t360
  %t361 = load %nyx_string*, %nyx_string** %t351
  %t362 = getelementptr [3 x i8], [3 x i8]* @.str306, i32 0, i32 0
  %t363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t362, i64 2)
  %t364 = call i1 @nyx_string_equals(%nyx_string* %t361, %nyx_string* %t363)
  br i1 %t364, label %sc_or_end113, label %sc_or_rhs112
sc_or_rhs112:
  %t365 = load %nyx_string*, %nyx_string** %t351
  %t366 = getelementptr [4 x i8], [4 x i8]* @.str307, i32 0, i32 0
  %t367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t366, i64 3)
  %t368 = call i1 @nyx_string_equals(%nyx_string* %t365, %nyx_string* %t367)
  store i1 %t368, i1* %t360
  br label %sc_or_end113
sc_or_end113:
  %t369 = load i1, i1* %t360
  br i1 %t369, label %sc_or_end115, label %sc_or_rhs114
sc_or_rhs114:
  %t370 = load %nyx_string*, %nyx_string** %t351
  %t371 = getelementptr [4 x i8], [4 x i8]* @.str308, i32 0, i32 0
  %t372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t371, i64 3)
  %t373 = call i1 @nyx_string_equals(%nyx_string* %t370, %nyx_string* %t372)
  store i1 %t373, i1* %t359
  br label %sc_or_end115
sc_or_end115:
  %t374 = load i1, i1* %t359
  br i1 %t374, label %sc_or_end117, label %sc_or_rhs116
sc_or_rhs116:
  %t375 = load %nyx_string*, %nyx_string** %t351
  %t376 = getelementptr [4 x i8], [4 x i8]* @.str309, i32 0, i32 0
  %t377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t376, i64 3)
  %t378 = call i1 @nyx_string_equals(%nyx_string* %t375, %nyx_string* %t377)
  store i1 %t378, i1* %t358
  br label %sc_or_end117
sc_or_end117:
  %t379 = load i1, i1* %t358
  br i1 %t379, label %sc_or_end119, label %sc_or_rhs118
sc_or_rhs118:
  %t380 = load %nyx_string*, %nyx_string** %t351
  %t381 = getelementptr [3 x i8], [3 x i8]* @.str310, i32 0, i32 0
  %t382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %t381, i64 2)
  %t383 = call i1 @nyx_string_equals(%nyx_string* %t380, %nyx_string* %t382)
  store i1 %t383, i1* %t357
  br label %sc_or_end119
sc_or_end119:
  %t384 = load i1, i1* %t357
  br i1 %t384, label %sc_or_end121, label %sc_or_rhs120
sc_or_rhs120:
  %t385 = load %nyx_string*, %nyx_string** %t351
  %t386 = getelementptr [4 x i8], [4 x i8]* @.str311, i32 0, i32 0
  %t387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %t386, i64 3)
  %t388 = call i1 @nyx_string_equals(%nyx_string* %t385, %nyx_string* %t387)
  store i1 %t388, i1* %t356
  br label %sc_or_end121
sc_or_end121:
  %t389 = load i1, i1* %t356
  br i1 %t389, label %sc_or_end123, label %sc_or_rhs122
sc_or_rhs122:
  %t390 = load %nyx_string*, %nyx_string** %t351
  %t391 = getelementptr [4 x i8], [4 x i8]* @.str312, i32 0, i32 0
  %t392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %t391, i64 3)
  %t393 = call i1 @nyx_string_equals(%nyx_string* %t390, %nyx_string* %t392)
  store i1 %t393, i1* %t355
  br label %sc_or_end123
sc_or_end123:
  %t394 = load i1, i1* %t355
  br i1 %t394, label %sc_or_end125, label %sc_or_rhs124
sc_or_rhs124:
  %t395 = load %nyx_string*, %nyx_string** %t351
  %t396 = getelementptr [4 x i8], [4 x i8]* @.str313, i32 0, i32 0
  %t397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %t396, i64 3)
  %t398 = call i1 @nyx_string_equals(%nyx_string* %t395, %nyx_string* %t397)
  store i1 %t398, i1* %t354
  br label %sc_or_end125
sc_or_end125:
  %t399 = load i1, i1* %t354
  br i1 %t399, label %sc_or_end127, label %sc_or_rhs126
sc_or_rhs126:
  %t400 = load %nyx_string*, %nyx_string** %t351
  %t401 = getelementptr [4 x i8], [4 x i8]* @.str314, i32 0, i32 0
  %t402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %t401, i64 3)
  %t403 = call i1 @nyx_string_equals(%nyx_string* %t400, %nyx_string* %t402)
  store i1 %t403, i1* %t353
  br label %sc_or_end127
sc_or_end127:
  %t404 = load i1, i1* %t353
  br i1 %t404, label %sc_or_end129, label %sc_or_rhs128
sc_or_rhs128:
  %t405 = load %nyx_string*, %nyx_string** %t351
  %t406 = getelementptr [6 x i8], [6 x i8]* @.str315, i32 0, i32 0
  %t407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %t406, i64 5)
  %t408 = call i1 @nyx_string_equals(%nyx_string* %t405, %nyx_string* %t407)
  store i1 %t408, i1* %t352
  br label %sc_or_end129
sc_or_end129:
  %t409 = load i1, i1* %t352
  br i1 %t409, label %then130, label %else131
then130:
  %t410 = load %nyx_string*, %nyx_string** %t3
  %t411 = load i64, i64* %t12
  %t412 = load i64, i64* %t5
  %t413 = call %nyx_string* @nyx_string_substring(%nyx_string* %t410, i64 %t411, i64 %t412)
  store %nyx_string* %t413, %nyx_string** %t414
  %t415 = getelementptr [7 x i8], [7 x i8]* @.str316, i32 0, i32 0
  %t416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %t415, i64 6)
  %t417 = load %nyx_string*, %nyx_string** %t414
  %t418 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t416, %nyx_string* %t417)
  br label %merge132
else131:
  %t419 = load i64, i64* %t340
  store i64 %t419, i64* %t5
  %t420 = load %nyx_string*, %nyx_string** %t3
  %t421 = load i64, i64* %t12
  %t422 = load i64, i64* %t5
  %t423 = call %nyx_string* @nyx_string_substring(%nyx_string* %t420, i64 %t421, i64 %t422)
  store %nyx_string* %t423, %nyx_string** %t424
  %t425 = getelementptr [7 x i8], [7 x i8]* @.str317, i32 0, i32 0
  %t426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %t425, i64 6)
  %t427 = load %nyx_string*, %nyx_string** %t424
  %t428 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t426, %nyx_string* %t427)
  br label %merge132
merge132:
  br label %merge105
else104:
  %t429 = load %nyx_string*, %nyx_string** %t3
  %t430 = load i64, i64* %t12
  %t431 = load i64, i64* %t5
  %t432 = call %nyx_string* @nyx_string_substring(%nyx_string* %t429, i64 %t430, i64 %t431)
  store %nyx_string* %t432, %nyx_string** %t433
  %t434 = getelementptr [7 x i8], [7 x i8]* @.str318, i32 0, i32 0
  %t435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %t434, i64 6)
  %t436 = load %nyx_string*, %nyx_string** %t433
  %t437 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t435, %nyx_string* %t436)
  br label %merge105
merge105:
  br label %merge34
merge34:
  br label %merge19
merge19:
  br label %merge6
merge6:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %l.param, i64 %c.param, %nyx_string* %texto.param) {
  %t11 = alloca i64
  %t12 = alloca i64
  %t13 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store i64 %l.param, i64* %t11
  store i64 %c.param, i64* %t12
  store %nyx_string* %texto.param, %nyx_string** %t13
  %t14 = getelementptr [25 x i8], [25 x i8]* @.str319, i32 0, i32 0
  %t15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %t14, i64 24)
  %t16 = load i64, i64* %t11
  %t17 = call %nyx_string* @nyx_string_from_int(i64 %t16)
  %t18 = call %nyx_string* @nyx_string_concat(%nyx_string* %t15, %nyx_string* %t17)
  %t19 = getelementptr [11 x i8], [11 x i8]* @.str320, i32 0, i32 0
  %t20 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %t19, i64 10)
  %t21 = call %nyx_string* @nyx_string_concat(%nyx_string* %t18, %nyx_string* %t20)
  %t22 = load i64, i64* %t12
  %t23 = call %nyx_string* @nyx_string_from_int(i64 %t22)
  %t24 = call %nyx_string* @nyx_string_concat(%nyx_string* %t21, %nyx_string* %t23)
  %t25 = getelementptr [4 x i8], [4 x i8]* @.str321, i32 0, i32 0
  %t26 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %t25, i64 3)
  %t27 = call %nyx_string* @nyx_string_concat(%nyx_string* %t24, %nyx_string* %t26)
  %t28 = load %nyx_string*, %nyx_string** %t13
  %t29 = call %nyx_string* @nyx_string_concat(%nyx_string* %t27, %nyx_string* %t28)
  %t30 = call i8* @nyx_string_to_cstr(%nyx_string* %t29)
  call void @nyx_print_string(i8* %t30)
  %t31 = load i64, i64* @g_lex_error_count
  %t32 = add i64 %t31, 1
  store i64 %t32, i64* @g_lex_error_count
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %out.param, i1 %en_char.param) {
  %t11 = alloca { i64, i8* }*
  %t12 = alloca i1
  %t14 = alloca i64
  %t17 = alloca i64
  %t19 = alloca i8
  %t47 = alloca i8
  %t58 = alloca i8
  %t62 = alloca i1
  %t63 = alloca i1
  %t64 = alloca i1
  %t103 = alloca i64
  %t106 = alloca i64
  %t107 = alloca i1
  %t125 = alloca i8
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store { i64, i8* }* %out.param, { i64, i8* }** %t11
  store i1 %en_char.param, i1* %t12
  %t13 = load i64, i64* %t6
  store i64 %t13, i64* %t14
  %t15 = load i64, i64* %t7
  %t16 = sub i64 %t15, 1
  store i64 %t16, i64* %t17
  %t18 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t18, i8* %t19
  %t20 = load i8, i8* %t19
  %t21 = getelementptr [1 x i8], [1 x i8]* @.str322, i32 0, i32 0
  %t22 = load i8, i8* %t21
  %t23 = zext i8 %t22 to i64
  %t24 = zext i8 %t20 to i64
  %t25 = icmp eq i64 %t24, %t23
  br i1 %t25, label %then0, label %else1
then0:
  %t26 = load { i64, i8* }*, { i64, i8* }** %t11
  %t27 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %t28 = load i8, i8* %t27
  %t29 = zext i8 %t28 to i64
  call void @nyx_array_push({ i64, i8* }* %t26, i64 %t29)
  br label %merge2
else1:
  %t30 = load i8, i8* %t19
  %t31 = getelementptr [1 x i8], [1 x i8]* @.str324, i32 0, i32 0
  %t32 = load i8, i8* %t31
  %t33 = zext i8 %t32 to i64
  %t34 = zext i8 %t30 to i64
  %t35 = icmp eq i64 %t34, %t33
  br i1 %t35, label %then3, label %else4
then3:
  %t36 = load { i64, i8* }*, { i64, i8* }** %t11
  %t37 = getelementptr [1 x i8], [1 x i8]* @.str325, i32 0, i32 0
  %t38 = load i8, i8* %t37
  %t39 = zext i8 %t38 to i64
  call void @nyx_array_push({ i64, i8* }* %t36, i64 %t39)
  br label %merge5
else4:
  %t40 = load i8, i8* %t19
  %t41 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %t42 = load i8, i8* %t41
  %t43 = zext i8 %t42 to i64
  %t44 = zext i8 %t40 to i64
  %t45 = icmp eq i64 %t44, %t43
  br i1 %t45, label %then6, label %else7
then6:
  %t46 = trunc i64 13 to i8
  store i8 %t46, i8* %t47
  %t48 = load { i64, i8* }*, { i64, i8* }** %t11
  %t49 = load i8, i8* %t47
  %t50 = zext i8 %t49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t48, i64 %t50, i64 1)
  br label %merge8
else7:
  %t51 = load i8, i8* %t19
  %t52 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %t53 = load i8, i8* %t52
  %t54 = zext i8 %t53 to i64
  %t55 = zext i8 %t51 to i64
  %t56 = icmp eq i64 %t55, %t54
  br i1 %t56, label %then9, label %else10
then9:
  %t57 = trunc i64 0 to i8
  store i8 %t57, i8* %t58
  %t59 = load { i64, i8* }*, { i64, i8* }** %t11
  %t60 = load i8, i8* %t58
  %t61 = zext i8 %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t61, i64 1)
  br label %merge11
else10:
  store i1 true, i1* %t62
  store i1 true, i1* %t63
  store i1 true, i1* %t64
  %t65 = load i8, i8* %t19
  %t66 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %t67 = load i8, i8* %t66
  %t68 = zext i8 %t67 to i64
  %t69 = zext i8 %t65 to i64
  %t70 = icmp eq i64 %t69, %t68
  br i1 %t70, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %t71 = load i8, i8* %t19
  %t72 = getelementptr [1 x i8], [1 x i8]* @.str329, i32 0, i32 0
  %t73 = load i8, i8* %t72
  %t74 = zext i8 %t73 to i64
  %t75 = zext i8 %t71 to i64
  %t76 = icmp eq i64 %t75, %t74
  store i1 %t76, i1* %t64
  br label %sc_or_end13
sc_or_end13:
  %t77 = load i1, i1* %t64
  br i1 %t77, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %t78 = load i8, i8* %t19
  %t79 = getelementptr [1 x i8], [1 x i8]* @.str330, i32 0, i32 0
  %t80 = load i8, i8* %t79
  %t81 = zext i8 %t80 to i64
  %t82 = zext i8 %t78 to i64
  %t83 = icmp eq i64 %t82, %t81
  store i1 %t83, i1* %t63
  br label %sc_or_end15
sc_or_end15:
  %t84 = load i1, i1* %t63
  br i1 %t84, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %t85 = load i8, i8* %t19
  %t86 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %t87 = load i8, i8* %t86
  %t88 = zext i8 %t87 to i64
  %t89 = zext i8 %t85 to i64
  %t90 = icmp eq i64 %t89, %t88
  store i1 %t90, i1* %t62
  br label %sc_or_end17
sc_or_end17:
  %t91 = load i1, i1* %t62
  br i1 %t91, label %then18, label %else19
then18:
  %t92 = load { i64, i8* }*, { i64, i8* }** %t11
  %t93 = load i8, i8* %t19
  %t94 = zext i8 %t93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t92, i64 %t94, i64 1)
  br label %merge20
else19:
  %t95 = load i8, i8* %t19
  %t96 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %t97 = load i8, i8* %t96
  %t98 = zext i8 %t97 to i64
  %t99 = zext i8 %t95 to i64
  %t100 = icmp eq i64 %t99, %t98
  br i1 %t100, label %then21, label %else22
then21:
  %t101 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t102 = call i64 @lex_hex_val(i8 %t101)
  store i64 %t102, i64* %t103
  %t104 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t105 = call i64 @lex_hex_val(i8 %t104)
  store i64 %t105, i64* %t106
  store i1 true, i1* %t107
  %t108 = load i64, i64* %t103
  %t109 = icmp slt i64 %t108, 0
  br i1 %t109, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %t110 = load i64, i64* %t106
  %t111 = icmp slt i64 %t110, 0
  store i1 %t111, i1* %t107
  br label %sc_or_end25
sc_or_end25:
  %t112 = load i1, i1* %t107
  br i1 %t112, label %then26, label %else27
then26:
  %t113 = load i64, i64* %t14
  %t114 = load i64, i64* %t17
  %t115 = getelementptr [65 x i8], [65 x i8]* @.str333, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %t115, i64 64)
  %t117 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t113, i64 %t114, %nyx_string* %t116)
  br label %merge28
else27:
  %t118 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t119 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t120 = load i64, i64* %t103
  %t121 = mul i64 %t120, 16
  %t122 = load i64, i64* %t106
  %t123 = add i64 %t121, %t122
  %t124 = trunc i64 %t123 to i8
  store i8 %t124, i8* %t125
  %t126 = load { i64, i8* }*, { i64, i8* }** %t11
  %t127 = load i8, i8* %t125
  %t128 = zext i8 %t127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t126, i64 %t128, i64 1)
  br label %merge28
merge28:
  br label %merge23
else22:
  %t129 = load i8, i8* %t19
  %t130 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %t131 = load i8, i8* %t130
  %t132 = zext i8 %t131 to i64
  %t133 = zext i8 %t129 to i64
  %t134 = icmp eq i64 %t133, %t132
  br i1 %t134, label %then29, label %else30
then29:
  %t135 = load { i64, i8* }*, { i64, i8* }** %t11
  %t136 = load i1, i1* %t12
  %t137 = load i64, i64* %t14
  %t138 = load i64, i64* %t17
  %t139 = call i64 @tokenize_con_avisos__scan_escape_unicode(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t135, i1 %t136, i64 %t137, i64 %t138)
  br label %merge31
else30:
  %t140 = load { i64, i8* }*, { i64, i8* }** %t4
  %t141 = call { i64, i8* }* @nyx_array_new_ptr()
  %t142 = load i64, i64* %t14
  call void @nyx_array_push_tagged({ i64, i8* }* %t141, i64 %t142, i64 1)
  %t143 = load i64, i64* %t17
  call void @nyx_array_push_tagged({ i64, i8* }* %t141, i64 %t143, i64 1)
  %t144 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %t145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %t144, i64 0)
  %t146 = load i8, i8* %t19
  %t147 = call %nyx_string* @nyx_string_from_char(i8 %t146)
  %t148 = call %nyx_string* @nyx_string_concat(%nyx_string* %t145, %nyx_string* %t147)
  %t149 = ptrtoint %nyx_string* %t148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t141, i64 %t149, i64 2)
  %t150 = ptrtoint { i64, i8* }* %t141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t140, i64 %t150, i64 5)
  %t151 = load { i64, i8* }*, { i64, i8* }** %t11
  %t152 = load i8, i8* %t19
  %t153 = zext i8 %t152 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t151, i64 %t153, i64 1)
  br label %merge31
merge31:
  br label %merge23
merge23:
  br label %merge20
merge20:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_escape_unicode(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %out.param, i1 %en_char.param, i64 %esc_line.param, i64 %esc_col.param) {
  %t11 = alloca { i64, i8* }*
  %t12 = alloca i1
  %t13 = alloca i64
  %t14 = alloca i64
  %t27 = alloca i64
  %t28 = alloca i64
  %t29 = alloca i1
  %t30 = alloca i1
  %t42 = alloca i64
  %t59 = alloca i1
  %t77 = alloca i1
  %t88 = alloca i1
  %t102 = alloca i8
  %t112 = alloca i8
  %t117 = alloca i8
  %t130 = alloca i8
  %t136 = alloca i8
  %t141 = alloca i8
  %t155 = alloca i8
  %t161 = alloca i8
  %t167 = alloca i8
  %t172 = alloca i8
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store { i64, i8* }* %out.param, { i64, i8* }** %t11
  store i1 %en_char.param, i1* %t12
  store i64 %esc_line.param, i64* %t13
  store i64 %esc_col.param, i64* %t14
  %t15 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t16 = getelementptr [1 x i8], [1 x i8]* @.str336, i32 0, i32 0
  %t17 = load i8, i8* %t16
  %t18 = zext i8 %t17 to i64
  %t19 = zext i8 %t15 to i64
  %t20 = icmp ne i64 %t19, %t18
  br i1 %t20, label %then0, label %else1
then0:
  %t21 = load i64, i64* %t13
  %t22 = load i64, i64* %t14
  %t23 = getelementptr [42 x i8], [42 x i8]* @.str337, i32 0, i32 0
  %t24 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %t23, i64 41)
  %t25 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t21, i64 %t22, %nyx_string* %t24)
  ret i64 0
else1:
  br label %merge2
merge2:
  %t26 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i64 0, i64* %t27
  store i64 0, i64* %t28
  store i1 0, i1* %t29
  br label %while_cond3
while_cond3:
  store i1 false, i1* %t30
  %t31 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t32 = getelementptr [1 x i8], [1 x i8]* @.str338, i32 0, i32 0
  %t33 = load i8, i8* %t32
  %t34 = zext i8 %t33 to i64
  %t35 = zext i8 %t31 to i64
  %t36 = icmp ne i64 %t35, %t34
  br i1 %t36, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %t37 = load i1, i1* %t29
  %t38 = xor i1 %t37, true
  store i1 %t38, i1* %t30
  br label %sc_and_end7
sc_and_end7:
  %t39 = load i1, i1* %t30
  br i1 %t39, label %while_body4, label %while_end5
while_body4:
  %t40 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t41 = call i64 @lex_hex_val(i8 %t40)
  store i64 %t41, i64* %t42
  %t43 = load i64, i64* %t42
  %t44 = icmp slt i64 %t43, 0
  br i1 %t44, label %then8, label %else9
then8:
  store i1 1, i1* %t29
  br label %merge10
else9:
  %t45 = load i64, i64* %t27
  %t46 = mul i64 %t45, 16
  %t47 = load i64, i64* %t42
  %t48 = add i64 %t46, %t47
  store i64 %t48, i64* %t27
  %t49 = load i64, i64* %t28
  %t50 = add i64 %t49, 1
  store i64 %t50, i64* %t28
  %t51 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge10
merge10:
  br label %while_cond3
while_end5:
  %t52 = load i1, i1* %t29
  br i1 %t52, label %then11, label %else12
then11:
  %t53 = load i64, i64* %t13
  %t54 = load i64, i64* %t14
  %t55 = getelementptr [51 x i8], [51 x i8]* @.str339, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %t55, i64 50)
  %t57 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t53, i64 %t54, %nyx_string* %t56)
  ret i64 0
else12:
  br label %merge13
merge13:
  %t58 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i1 true, i1* %t59
  %t60 = load i64, i64* %t28
  %t61 = icmp eq i64 %t60, 0
  br i1 %t61, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %t62 = load i64, i64* %t28
  %t63 = icmp sgt i64 %t62, 6
  store i1 %t63, i1* %t59
  br label %sc_or_end15
sc_or_end15:
  %t64 = load i1, i1* %t59
  br i1 %t64, label %then16, label %else17
then16:
  %t65 = load i64, i64* %t13
  %t66 = load i64, i64* %t14
  %t67 = getelementptr [38 x i8], [38 x i8]* @.str340, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %t67, i64 37)
  %t69 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t65, i64 %t66, %nyx_string* %t68)
  ret i64 0
else17:
  br label %merge18
merge18:
  %t70 = load i64, i64* %t27
  %t71 = icmp sgt i64 %t70, 1114111
  br i1 %t71, label %then19, label %else20
then19:
  %t72 = load i64, i64* %t13
  %t73 = load i64, i64* %t14
  %t74 = getelementptr [53 x i8], [53 x i8]* @.str341, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %t74, i64 52)
  %t76 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t72, i64 %t73, %nyx_string* %t75)
  ret i64 0
else20:
  br label %merge21
merge21:
  store i1 false, i1* %t77
  %t78 = load i64, i64* %t27
  %t79 = icmp sge i64 %t78, 55296
  br i1 %t79, label %sc_and_rhs22, label %sc_and_end23
sc_and_rhs22:
  %t80 = load i64, i64* %t27
  %t81 = icmp sle i64 %t80, 57343
  store i1 %t81, i1* %t77
  br label %sc_and_end23
sc_and_end23:
  %t82 = load i1, i1* %t77
  br i1 %t82, label %then24, label %else25
then24:
  %t83 = load i64, i64* %t13
  %t84 = load i64, i64* %t14
  %t85 = getelementptr [62 x i8], [62 x i8]* @.str342, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %t85, i64 61)
  %t87 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t83, i64 %t84, %nyx_string* %t86)
  ret i64 0
else25:
  br label %merge26
merge26:
  store i1 false, i1* %t88
  %t89 = load i1, i1* %t12
  br i1 %t89, label %sc_and_rhs27, label %sc_and_end28
sc_and_rhs27:
  %t90 = load i64, i64* %t27
  %t91 = icmp sgt i64 %t90, 127
  store i1 %t91, i1* %t88
  br label %sc_and_end28
sc_and_end28:
  %t92 = load i1, i1* %t88
  br i1 %t92, label %then29, label %else30
then29:
  %t93 = load i64, i64* %t13
  %t94 = load i64, i64* %t14
  %t95 = getelementptr [67 x i8], [67 x i8]* @.str343, i32 0, i32 0
  %t96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %t95, i64 66)
  %t97 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %t93, i64 %t94, %nyx_string* %t96)
  ret i64 0
else30:
  br label %merge31
merge31:
  %t98 = load i64, i64* %t27
  %t99 = icmp slt i64 %t98, 128
  br i1 %t99, label %then32, label %else33
then32:
  %t100 = load i64, i64* %t27
  %t101 = trunc i64 %t100 to i8
  store i8 %t101, i8* %t102
  %t103 = load { i64, i8* }*, { i64, i8* }** %t11
  %t104 = load i8, i8* %t102
  %t105 = zext i8 %t104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t103, i64 %t105, i64 1)
  br label %merge34
else33:
  %t106 = load i64, i64* %t27
  %t107 = icmp slt i64 %t106, 2048
  br i1 %t107, label %then35, label %else36
then35:
  %t108 = load i64, i64* %t27
  %t109 = sdiv i64 %t108, 64
  %t110 = add i64 192, %t109
  %t111 = trunc i64 %t110 to i8
  store i8 %t111, i8* %t112
  %t113 = load i64, i64* %t27
  %t114 = srem i64 %t113, 64
  %t115 = add i64 128, %t114
  %t116 = trunc i64 %t115 to i8
  store i8 %t116, i8* %t117
  %t118 = load { i64, i8* }*, { i64, i8* }** %t11
  %t119 = load i8, i8* %t112
  %t120 = zext i8 %t119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t118, i64 %t120, i64 1)
  %t121 = load { i64, i8* }*, { i64, i8* }** %t11
  %t122 = load i8, i8* %t117
  %t123 = zext i8 %t122 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t121, i64 %t123, i64 1)
  br label %merge37
else36:
  %t124 = load i64, i64* %t27
  %t125 = icmp slt i64 %t124, 65536
  br i1 %t125, label %then38, label %else39
then38:
  %t126 = load i64, i64* %t27
  %t127 = sdiv i64 %t126, 4096
  %t128 = add i64 224, %t127
  %t129 = trunc i64 %t128 to i8
  store i8 %t129, i8* %t130
  %t131 = load i64, i64* %t27
  %t132 = sdiv i64 %t131, 64
  %t133 = srem i64 %t132, 64
  %t134 = add i64 128, %t133
  %t135 = trunc i64 %t134 to i8
  store i8 %t135, i8* %t136
  %t137 = load i64, i64* %t27
  %t138 = srem i64 %t137, 64
  %t139 = add i64 128, %t138
  %t140 = trunc i64 %t139 to i8
  store i8 %t140, i8* %t141
  %t142 = load { i64, i8* }*, { i64, i8* }** %t11
  %t143 = load i8, i8* %t130
  %t144 = zext i8 %t143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t142, i64 %t144, i64 1)
  %t145 = load { i64, i8* }*, { i64, i8* }** %t11
  %t146 = load i8, i8* %t136
  %t147 = zext i8 %t146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t145, i64 %t147, i64 1)
  %t148 = load { i64, i8* }*, { i64, i8* }** %t11
  %t149 = load i8, i8* %t141
  %t150 = zext i8 %t149 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t148, i64 %t150, i64 1)
  br label %merge40
else39:
  %t151 = load i64, i64* %t27
  %t152 = sdiv i64 %t151, 262144
  %t153 = add i64 240, %t152
  %t154 = trunc i64 %t153 to i8
  store i8 %t154, i8* %t155
  %t156 = load i64, i64* %t27
  %t157 = sdiv i64 %t156, 4096
  %t158 = srem i64 %t157, 64
  %t159 = add i64 128, %t158
  %t160 = trunc i64 %t159 to i8
  store i8 %t160, i8* %t161
  %t162 = load i64, i64* %t27
  %t163 = sdiv i64 %t162, 64
  %t164 = srem i64 %t163, 64
  %t165 = add i64 128, %t164
  %t166 = trunc i64 %t165 to i8
  store i8 %t166, i8* %t167
  %t168 = load i64, i64* %t27
  %t169 = srem i64 %t168, 64
  %t170 = add i64 128, %t169
  %t171 = trunc i64 %t170 to i8
  store i8 %t171, i8* %t172
  %t173 = load { i64, i8* }*, { i64, i8* }** %t11
  %t174 = load i8, i8* %t155
  %t175 = zext i8 %t174 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t173, i64 %t175, i64 1)
  %t176 = load { i64, i8* }*, { i64, i8* }** %t11
  %t177 = load i8, i8* %t161
  %t178 = zext i8 %t177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t176, i64 %t178, i64 1)
  %t179 = load { i64, i8* }*, { i64, i8* }** %t11
  %t180 = load i8, i8* %t167
  %t181 = zext i8 %t180 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t179, i64 %t181, i64 1)
  %t182 = load { i64, i8* }*, { i64, i8* }** %t11
  %t183 = load i8, i8* %t172
  %t184 = zext i8 %t183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t182, i64 %t184, i64 1)
  br label %merge40
merge40:
  br label %merge37
merge37:
  br label %merge34
merge34:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_string_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %chars.param) {
  %t11 = alloca { i64, i8* }*
  %t12 = alloca i1
  %t22 = alloca i8
  %t35 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  store { i64, i8* }* %chars.param, { i64, i8* }** %t11
  store i1 0, i1* %t12
  br label %while_cond0
while_cond0:
  %t13 = load i1, i1* %t12
  %t14 = xor i1 %t13, true
  br i1 %t14, label %while_body1, label %while_end2
while_body1:
  %t15 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t15, label %then3, label %else4
then3:
  %t16 = getelementptr [25 x i8], [25 x i8]* @.str344, i32 0, i32 0
  %t17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %t16, i64 24)
  %t18 = call i8* @nyx_string_to_cstr(%nyx_string* %t17)
  call void @nyx_print_string(i8* %t18)
  %t19 = load i64, i64* @g_lex_error_count
  %t20 = add i64 %t19, 1
  store i64 %t20, i64* @g_lex_error_count
  store i1 1, i1* %t12
  br label %merge5
else4:
  %t21 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t21, i8* %t22
  %t23 = load i8, i8* %t22
  %t24 = getelementptr [1 x i8], [1 x i8]* @.str345, i32 0, i32 0
  %t25 = load i8, i8* %t24
  %t26 = zext i8 %t25 to i64
  %t27 = zext i8 %t23 to i64
  %t28 = icmp eq i64 %t27, %t26
  br i1 %t28, label %then6, label %else7
then6:
  %t29 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t30 = getelementptr [7 x i8], [7 x i8]* @.str346, i32 0, i32 0
  %t31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %t30, i64 6)
  %t32 = load { i64, i8* }*, { i64, i8* }** %t11
  %t33 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t32)
  %t34 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t31, %nyx_string* %t33)
  store i1 1, i1* %t12
  br label %merge8
else7:
  store i1 false, i1* %t35
  %t36 = load i8, i8* %t22
  %t37 = getelementptr [1 x i8], [1 x i8]* @.str347, i32 0, i32 0
  %t38 = load i8, i8* %t37
  %t39 = zext i8 %t38 to i64
  %t40 = zext i8 %t36 to i64
  %t41 = icmp eq i64 %t40, %t39
  br i1 %t41, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %t42 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t43 = getelementptr [1 x i8], [1 x i8]* @.str348, i32 0, i32 0
  %t44 = load i8, i8* %t43
  %t45 = zext i8 %t44 to i64
  %t46 = zext i8 %t42 to i64
  %t47 = icmp eq i64 %t46, %t45
  store i1 %t47, i1* %t35
  br label %sc_and_end10
sc_and_end10:
  %t48 = load i1, i1* %t35
  br i1 %t48, label %then11, label %else12
then11:
  %t49 = getelementptr [7 x i8], [7 x i8]* @.str349, i32 0, i32 0
  %t50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %t49, i64 6)
  %t51 = load { i64, i8* }*, { i64, i8* }** %t11
  %t52 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t51)
  %t53 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t50, %nyx_string* %t52)
  %t54 = getelementptr [5 x i8], [5 x i8]* @.str350, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %t54, i64 4)
  %t56 = getelementptr [2 x i8], [2 x i8]* @.str351, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %t56, i64 1)
  %t58 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t55, %nyx_string* %t57)
  %t59 = getelementptr [11 x i8], [11 x i8]* @.str352, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %t59, i64 10)
  %t61 = getelementptr [2 x i8], [2 x i8]* @.str353, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %t61, i64 1)
  %t63 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t60, %nyx_string* %t62)
  %t64 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t65 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t66 = load i64, i64* %t9
  %t67 = add i64 %t66, 1
  store i64 %t67, i64* %t9
  store i1 1, i1* %t12
  br label %merge13
else12:
  %t68 = load i8, i8* %t22
  %t69 = getelementptr [1 x i8], [1 x i8]* @.str354, i32 0, i32 0
  %t70 = load i8, i8* %t69
  %t71 = zext i8 %t70 to i64
  %t72 = zext i8 %t68 to i64
  %t73 = icmp eq i64 %t72, %t71
  br i1 %t73, label %then14, label %else15
then14:
  %t74 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t75 = load { i64, i8* }*, { i64, i8* }** %t11
  %t76 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t75, i1 0)
  br label %merge16
else15:
  %t77 = load { i64, i8* }*, { i64, i8* }** %t11
  %t78 = load i8, i8* %t22
  %t79 = zext i8 %t78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t77, i64 %t79, i64 1)
  %t80 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge16
merge16:
  br label %merge13
merge13:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_string_escdelim(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t12 = alloca { i64, i8* }*
  %t13 = alloca i1
  %t23 = alloca i8
  %t24 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t11, { i64, i8* }** %t12
  store i1 0, i1* %t13
  br label %while_cond0
while_cond0:
  %t14 = load i1, i1* %t13
  %t15 = xor i1 %t14, true
  br i1 %t15, label %while_body1, label %while_end2
while_body1:
  %t16 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t16, label %then3, label %else4
then3:
  %t17 = getelementptr [99 x i8], [99 x i8]* @.str355, i32 0, i32 0
  %t18 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %t17, i64 98)
  %t19 = call i8* @nyx_string_to_cstr(%nyx_string* %t18)
  call void @nyx_print_string(i8* %t19)
  %t20 = load i64, i64* @g_lex_error_count
  %t21 = add i64 %t20, 1
  store i64 %t21, i64* @g_lex_error_count
  store i1 1, i1* %t13
  br label %merge5
else4:
  %t22 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t22, i8* %t23
  store i1 false, i1* %t24
  %t25 = load i8, i8* %t23
  %t26 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %t27 = load i8, i8* %t26
  %t28 = zext i8 %t27 to i64
  %t29 = zext i8 %t25 to i64
  %t30 = icmp eq i64 %t29, %t28
  br i1 %t30, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %t31 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t32 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %t33 = load i8, i8* %t32
  %t34 = zext i8 %t33 to i64
  %t35 = zext i8 %t31 to i64
  %t36 = icmp eq i64 %t35, %t34
  store i1 %t36, i1* %t24
  br label %sc_and_end7
sc_and_end7:
  %t37 = load i1, i1* %t24
  br i1 %t37, label %then8, label %else9
then8:
  %t38 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t39 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t40 = getelementptr [7 x i8], [7 x i8]* @.str358, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %t40, i64 6)
  %t42 = load { i64, i8* }*, { i64, i8* }** %t12
  %t43 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t42)
  %t44 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t41, %nyx_string* %t43)
  store i1 1, i1* %t13
  br label %merge10
else9:
  %t45 = load i8, i8* %t23
  %t46 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %t47 = load i8, i8* %t46
  %t48 = zext i8 %t47 to i64
  %t49 = zext i8 %t45 to i64
  %t50 = icmp eq i64 %t49, %t48
  br i1 %t50, label %then11, label %else12
then11:
  %t51 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t52 = load { i64, i8* }*, { i64, i8* }** %t12
  %t53 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t52, i1 0)
  br label %merge13
else12:
  %t54 = load { i64, i8* }*, { i64, i8* }** %t12
  %t55 = load i8, i8* %t23
  %t56 = zext i8 %t55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t54, i64 %t56, i64 1)
  %t57 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge13
merge13:
  br label %merge10
merge10:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_multiline_string(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t20 = alloca { i64, i8* }*
  %t21 = alloca i1
  %t31 = alloca i8
  %t32 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t12 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t13 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %t14 = load i8, i8* %t13
  %t15 = zext i8 %t14 to i64
  %t16 = zext i8 %t12 to i64
  %t17 = icmp eq i64 %t16, %t15
  br i1 %t17, label %then0, label %else1
then0:
  %t18 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t19 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t19, { i64, i8* }** %t20
  store i1 0, i1* %t21
  br label %while_cond3
while_cond3:
  %t22 = load i1, i1* %t21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %while_body4, label %while_end5
while_body4:
  %t24 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t24, label %then6, label %else7
then6:
  %t25 = getelementptr [37 x i8], [37 x i8]* @.str361, i32 0, i32 0
  %t26 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %t25, i64 36)
  %t27 = call i8* @nyx_string_to_cstr(%nyx_string* %t26)
  call void @nyx_print_string(i8* %t27)
  %t28 = load i64, i64* @g_lex_error_count
  %t29 = add i64 %t28, 1
  store i64 %t29, i64* @g_lex_error_count
  store i1 1, i1* %t21
  br label %merge8
else7:
  %t30 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t30, i8* %t31
  store i1 false, i1* %t32
  %t33 = load i8, i8* %t31
  %t34 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %t35 = load i8, i8* %t34
  %t36 = zext i8 %t35 to i64
  %t37 = zext i8 %t33 to i64
  %t38 = icmp eq i64 %t37, %t36
  br i1 %t38, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %t39 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t40 = getelementptr [1 x i8], [1 x i8]* @.str363, i32 0, i32 0
  %t41 = load i8, i8* %t40
  %t42 = zext i8 %t41 to i64
  %t43 = zext i8 %t39 to i64
  %t44 = icmp eq i64 %t43, %t42
  store i1 %t44, i1* %t32
  br label %sc_and_end10
sc_and_end10:
  %t45 = load i1, i1* %t32
  br i1 %t45, label %then11, label %else12
then11:
  %t46 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t47 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t48 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t48, label %then14, label %else15
then14:
  %t49 = load { i64, i8* }*, { i64, i8* }** %t20
  %t50 = getelementptr [1 x i8], [1 x i8]* @.str364, i32 0, i32 0
  %t51 = load i8, i8* %t50
  %t52 = zext i8 %t51 to i64
  call void @nyx_array_push({ i64, i8* }* %t49, i64 %t52)
  %t53 = load { i64, i8* }*, { i64, i8* }** %t20
  %t54 = getelementptr [1 x i8], [1 x i8]* @.str365, i32 0, i32 0
  %t55 = load i8, i8* %t54
  %t56 = zext i8 %t55 to i64
  call void @nyx_array_push({ i64, i8* }* %t53, i64 %t56)
  br label %merge16
else15:
  %t57 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t58 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %t59 = load i8, i8* %t58
  %t60 = zext i8 %t59 to i64
  %t61 = zext i8 %t57 to i64
  %t62 = icmp eq i64 %t61, %t60
  br i1 %t62, label %then17, label %else18
then17:
  %t63 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i1 1, i1* %t21
  br label %merge19
else18:
  %t64 = load { i64, i8* }*, { i64, i8* }** %t20
  %t65 = getelementptr [1 x i8], [1 x i8]* @.str367, i32 0, i32 0
  %t66 = load i8, i8* %t65
  %t67 = zext i8 %t66 to i64
  call void @nyx_array_push({ i64, i8* }* %t64, i64 %t67)
  %t68 = load { i64, i8* }*, { i64, i8* }** %t20
  %t69 = getelementptr [1 x i8], [1 x i8]* @.str368, i32 0, i32 0
  %t70 = load i8, i8* %t69
  %t71 = zext i8 %t70 to i64
  call void @nyx_array_push({ i64, i8* }* %t68, i64 %t71)
  br label %merge19
merge19:
  br label %merge16
merge16:
  br label %merge13
else12:
  %t72 = load { i64, i8* }*, { i64, i8* }** %t20
  %t73 = load i8, i8* %t31
  %t74 = zext i8 %t73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t74, i64 1)
  %t75 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge13
merge13:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %t76 = getelementptr [7 x i8], [7 x i8]* @.str369, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %t76, i64 6)
  %t78 = load { i64, i8* }*, { i64, i8* }** %t20
  %t79 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t78)
  %t80 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t77, %nyx_string* %t79)
  br label %merge2
else1:
  %t81 = getelementptr [7 x i8], [7 x i8]* @.str370, i32 0, i32 0
  %t82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %t81, i64 6)
  %t83 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %t83, i64 0)
  %t85 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t82, %nyx_string* %t84)
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_raw_string(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t13 = alloca { i64, i8* }*
  %t14 = alloca i1
  %t24 = alloca i8
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t12 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t12, { i64, i8* }** %t13
  store i1 0, i1* %t14
  br label %while_cond0
while_cond0:
  %t15 = load i1, i1* %t14
  %t16 = xor i1 %t15, true
  br i1 %t16, label %while_body1, label %while_end2
while_body1:
  %t17 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t17, label %then3, label %else4
then3:
  %t18 = getelementptr [31 x i8], [31 x i8]* @.str372, i32 0, i32 0
  %t19 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %t18, i64 30)
  %t20 = call i8* @nyx_string_to_cstr(%nyx_string* %t19)
  call void @nyx_print_string(i8* %t20)
  %t21 = load i64, i64* @g_lex_error_count
  %t22 = add i64 %t21, 1
  store i64 %t22, i64* @g_lex_error_count
  store i1 1, i1* %t14
  br label %merge5
else4:
  %t23 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t23, i8* %t24
  %t25 = load i8, i8* %t24
  %t26 = getelementptr [1 x i8], [1 x i8]* @.str373, i32 0, i32 0
  %t27 = load i8, i8* %t26
  %t28 = zext i8 %t27 to i64
  %t29 = zext i8 %t25 to i64
  %t30 = icmp eq i64 %t29, %t28
  br i1 %t30, label %then6, label %else7
then6:
  %t31 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i1 1, i1* %t14
  br label %merge8
else7:
  %t32 = load { i64, i8* }*, { i64, i8* }** %t13
  %t33 = load i8, i8* %t24
  %t34 = zext i8 %t33 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t32, i64 %t34, i64 1)
  %t35 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t36 = getelementptr [7 x i8], [7 x i8]* @.str374, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %t36, i64 6)
  %t38 = load { i64, i8* }*, { i64, i8* }** %t13
  %t39 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t38)
  %t40 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t37, %nyx_string* %t39)
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_string(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t13 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t12 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t12, { i64, i8* }** %t13
  %t14 = load { i64, i8* }*, { i64, i8* }** %t13
  %t15 = call i64 @tokenize_con_avisos__scan_string_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t14)
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_string_rest(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t12 = alloca { i64, i8* }*
  %t13 = alloca i1
  %t23 = alloca i8
  %t33 = alloca %nyx_string*
  %t46 = alloca i1
  %t62 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t11, { i64, i8* }** %t12
  store i1 0, i1* %t13
  br label %while_cond0
while_cond0:
  %t14 = load i1, i1* %t13
  %t15 = xor i1 %t14, true
  br i1 %t15, label %while_body1, label %while_end2
while_body1:
  %t16 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %t16, label %then3, label %else4
then3:
  %t17 = getelementptr [25 x i8], [25 x i8]* @.str375, i32 0, i32 0
  %t18 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %t17, i64 24)
  %t19 = call i8* @nyx_string_to_cstr(%nyx_string* %t18)
  call void @nyx_print_string(i8* %t19)
  %t20 = load i64, i64* @g_lex_error_count
  %t21 = add i64 %t20, 1
  store i64 %t21, i64* @g_lex_error_count
  store i1 1, i1* %t13
  br label %merge5
else4:
  %t22 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t22, i8* %t23
  %t24 = load i8, i8* %t23
  %t25 = getelementptr [1 x i8], [1 x i8]* @.str376, i32 0, i32 0
  %t26 = load i8, i8* %t25
  %t27 = zext i8 %t26 to i64
  %t28 = zext i8 %t24 to i64
  %t29 = icmp eq i64 %t28, %t27
  br i1 %t29, label %then6, label %else7
then6:
  %t30 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t31 = load { i64, i8* }*, { i64, i8* }** %t12
  %t32 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t31)
  store %nyx_string* %t32, %nyx_string** %t33
  %t34 = load %nyx_string*, %nyx_string** %t33
  %t35 = call i64 @nyx_string_byte_length(%nyx_string* %t34)
  %t36 = icmp sgt i64 %t35, 0
  br i1 %t36, label %then9, label %else10
then9:
  %t37 = getelementptr [5 x i8], [5 x i8]* @.str377, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %t37, i64 4)
  %t39 = getelementptr [2 x i8], [2 x i8]* @.str378, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %t39, i64 1)
  %t41 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t38, %nyx_string* %t40)
  %t42 = getelementptr [7 x i8], [7 x i8]* @.str379, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %t42, i64 6)
  %t44 = load %nyx_string*, %nyx_string** %t33
  %t45 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t43, %nyx_string* %t44)
  br label %merge11
else10:
  br label %merge11
merge11:
  store i1 1, i1* %t13
  br label %merge8
else7:
  store i1 false, i1* %t46
  %t47 = load i8, i8* %t23
  %t48 = getelementptr [1 x i8], [1 x i8]* @.str380, i32 0, i32 0
  %t49 = load i8, i8* %t48
  %t50 = zext i8 %t49 to i64
  %t51 = zext i8 %t47 to i64
  %t52 = icmp eq i64 %t51, %t50
  br i1 %t52, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %t53 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t54 = getelementptr [1 x i8], [1 x i8]* @.str381, i32 0, i32 0
  %t55 = load i8, i8* %t54
  %t56 = zext i8 %t55 to i64
  %t57 = zext i8 %t53 to i64
  %t58 = icmp eq i64 %t57, %t56
  store i1 %t58, i1* %t46
  br label %sc_and_end13
sc_and_end13:
  %t59 = load i1, i1* %t46
  br i1 %t59, label %then14, label %else15
then14:
  %t60 = load { i64, i8* }*, { i64, i8* }** %t12
  %t61 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t60)
  store %nyx_string* %t61, %nyx_string** %t62
  %t63 = load %nyx_string*, %nyx_string** %t62
  %t64 = call i64 @nyx_string_byte_length(%nyx_string* %t63)
  %t65 = icmp sgt i64 %t64, 0
  br i1 %t65, label %then17, label %else18
then17:
  %t66 = getelementptr [5 x i8], [5 x i8]* @.str382, i32 0, i32 0
  %t67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %t66, i64 4)
  %t68 = getelementptr [2 x i8], [2 x i8]* @.str383, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %t68, i64 1)
  %t70 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t67, %nyx_string* %t69)
  %t71 = getelementptr [7 x i8], [7 x i8]* @.str384, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %t71, i64 6)
  %t73 = load %nyx_string*, %nyx_string** %t62
  %t74 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t72, %nyx_string* %t73)
  br label %merge19
else18:
  br label %merge19
merge19:
  %t75 = getelementptr [5 x i8], [5 x i8]* @.str385, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %t75, i64 4)
  %t77 = getelementptr [2 x i8], [2 x i8]* @.str386, i32 0, i32 0
  %t78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %t77, i64 1)
  %t79 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t76, %nyx_string* %t78)
  %t80 = getelementptr [11 x i8], [11 x i8]* @.str387, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %t80, i64 10)
  %t82 = getelementptr [2 x i8], [2 x i8]* @.str388, i32 0, i32 0
  %t83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %t82, i64 1)
  %t84 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t81, %nyx_string* %t83)
  %t85 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t86 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t87 = load i64, i64* %t9
  %t88 = add i64 %t87, 1
  store i64 %t88, i64* %t9
  store i1 1, i1* %t13
  br label %merge16
else15:
  %t89 = load i8, i8* %t23
  %t90 = getelementptr [1 x i8], [1 x i8]* @.str389, i32 0, i32 0
  %t91 = load i8, i8* %t90
  %t92 = zext i8 %t91 to i64
  %t93 = zext i8 %t89 to i64
  %t94 = icmp eq i64 %t93, %t92
  br i1 %t94, label %then20, label %else21
then20:
  %t95 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t96 = load { i64, i8* }*, { i64, i8* }** %t12
  %t97 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t96, i1 0)
  br label %merge22
else21:
  %t98 = load { i64, i8* }*, { i64, i8* }** %t12
  %t99 = load i8, i8* %t23
  %t100 = zext i8 %t99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t98, i64 %t100, i64 1)
  %t101 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge22
merge22:
  br label %merge16
merge16:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_lifetime(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t13 = alloca i64
  %t14 = alloca i1
  %t24 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t12 = load i64, i64* %t5
  store i64 %t12, i64* %t13
  store i1 0, i1* %t14
  br label %while_cond0
while_cond0:
  %t15 = load i1, i1* %t14
  %t16 = xor i1 %t15, true
  br i1 %t16, label %while_body1, label %while_end2
while_body1:
  %t17 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t18 = call i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t17)
  br i1 %t18, label %then3, label %else4
then3:
  %t19 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %t14
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t20 = load %nyx_string*, %nyx_string** %t3
  %t21 = load i64, i64* %t13
  %t22 = load i64, i64* %t5
  %t23 = call %nyx_string* @nyx_string_substring(%nyx_string* %t20, i64 %t21, i64 %t22)
  store %nyx_string* %t23, %nyx_string** %t24
  %t25 = getelementptr [9 x i8], [9 x i8]* @.str390, i32 0, i32 0
  %t26 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %t25, i64 8)
  %t27 = getelementptr [2 x i8], [2 x i8]* @.str391, i32 0, i32 0
  %t28 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %t27, i64 1)
  %t29 = load %nyx_string*, %nyx_string** %t24
  %t30 = call %nyx_string* @nyx_string_concat(%nyx_string* %t28, %nyx_string* %t29)
  %t31 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t26, %nyx_string* %t30)
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_char(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t22 = alloca %nyx_string*
  %t31 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t12 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  %t13 = xor i1 %t12, true
  br i1 %t13, label %then0, label %else1
then0:
  %t14 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t15 = getelementptr [1 x i8], [1 x i8]* @.str392, i32 0, i32 0
  %t16 = load i8, i8* %t15
  %t17 = zext i8 %t16 to i64
  %t18 = zext i8 %t14 to i64
  %t19 = icmp ne i64 %t18, %t17
  br i1 %t19, label %then3, label %else4
then3:
  %t20 = getelementptr [2 x i8], [2 x i8]* @.str393, i32 0, i32 0
  %t21 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %t20, i64 1)
  store %nyx_string* %t21, %nyx_string** %t22
  %t23 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t24 = getelementptr [1 x i8], [1 x i8]* @.str394, i32 0, i32 0
  %t25 = load i8, i8* %t24
  %t26 = zext i8 %t25 to i64
  %t27 = zext i8 %t23 to i64
  %t28 = icmp eq i64 %t27, %t26
  br i1 %t28, label %then6, label %else7
then6:
  %t29 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t30 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t30, { i64, i8* }** %t31
  %t32 = load { i64, i8* }*, { i64, i8* }** %t31
  %t33 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t32, i1 1)
  %t34 = load { i64, i8* }*, { i64, i8* }** %t31
  %t35 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %t34)
  store %nyx_string* %t35, %nyx_string** %t22
  br label %merge8
else7:
  %t36 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t37 = call %nyx_string* @nyx_string_from_char(i8 %t36)
  store %nyx_string* %t37, %nyx_string** %t22
  br label %merge8
merge8:
  %t38 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t39 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %t40 = load i8, i8* %t39
  %t41 = zext i8 %t40 to i64
  %t42 = zext i8 %t38 to i64
  %t43 = icmp eq i64 %t42, %t41
  br i1 %t43, label %then9, label %else10
then9:
  %t44 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t45 = getelementptr [5 x i8], [5 x i8]* @.str396, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %t45, i64 4)
  %t47 = load %nyx_string*, %nyx_string** %t22
  %t48 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t46, %nyx_string* %t47)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_identifier(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t12 = alloca i64
  %t13 = alloca i1
  %t23 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = load i64, i64* %t5
  store i64 %t11, i64* %t12
  store i1 0, i1* %t13
  br label %while_cond0
while_cond0:
  %t14 = load i1, i1* %t13
  %t15 = xor i1 %t14, true
  br i1 %t15, label %while_body1, label %while_end2
while_body1:
  %t16 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t17 = call i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t16)
  br i1 %t17, label %then3, label %else4
then3:
  %t18 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %t13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t19 = load %nyx_string*, %nyx_string** %t3
  %t20 = load i64, i64* %t12
  %t21 = load i64, i64* %t5
  %t22 = call %nyx_string* @nyx_string_substring(%nyx_string* %t19, i64 %t20, i64 %t21)
  store %nyx_string* %t22, %nyx_string** %t23
  %t24 = load %nyx_string*, %nyx_string** %t23
  %t25 = call i1 @is_keyword(%nyx_string* %t24)
  br i1 %t25, label %then6, label %else7
then6:
  %t26 = load %nyx_string*, %nyx_string** %t23
  %t27 = call %nyx_string* @keyword_to_type(%nyx_string* %t26)
  %t28 = load %nyx_string*, %nyx_string** %t23
  %t29 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t27, %nyx_string* %t28)
  br label %merge8
else7:
  %t30 = getelementptr [11 x i8], [11 x i8]* @.str397, i32 0, i32 0
  %t31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %t30, i64 10)
  %t32 = load %nyx_string*, %nyx_string** %t23
  %t33 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t31, %nyx_string* %t32)
  br label %merge8
merge8:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_token(%SharedEnv_tokenize_con_avisos* %env.param) {
  %t15 = alloca i8
  %t655 = alloca i8
  %t656 = alloca i1
  %t661 = alloca i64
  %t671 = alloca i8
  %t684 = alloca i1
  %t703 = alloca i1
  %t704 = alloca i1
  %t1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %t11 = call i64 @tokenize_con_avisos__skip_whitespace(%SharedEnv_tokenize_con_avisos* %env.param)
  %t12 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  %t13 = xor i1 %t12, true
  br i1 %t13, label %then0, label %else1
then0:
  %t14 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t14, i8* %t15
  %t16 = load i8, i8* %t15
  %t17 = getelementptr [1 x i8], [1 x i8]* @.str398, i32 0, i32 0
  %t18 = load i8, i8* %t17
  %t19 = zext i8 %t18 to i64
  %t20 = zext i8 %t16 to i64
  %t21 = icmp eq i64 %t20, %t19
  br i1 %t21, label %then3, label %else4
then3:
  %t22 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge5
else4:
  %t23 = load i8, i8* %t15
  %t24 = getelementptr [1 x i8], [1 x i8]* @.str399, i32 0, i32 0
  %t25 = load i8, i8* %t24
  %t26 = zext i8 %t25 to i64
  %t27 = zext i8 %t23 to i64
  %t28 = icmp eq i64 %t27, %t26
  br i1 %t28, label %then6, label %else7
then6:
  %t29 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t30 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t31 = getelementptr [1 x i8], [1 x i8]* @.str400, i32 0, i32 0
  %t32 = load i8, i8* %t31
  %t33 = zext i8 %t32 to i64
  %t34 = zext i8 %t30 to i64
  %t35 = icmp eq i64 %t34, %t33
  br i1 %t35, label %then9, label %else10
then9:
  %t36 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t37 = getelementptr [12 x i8], [12 x i8]* @.str401, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %t37, i64 11)
  %t39 = getelementptr [3 x i8], [3 x i8]* @.str402, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %t39, i64 2)
  %t41 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t38, %nyx_string* %t40)
  br label %merge11
else10:
  %t42 = getelementptr [5 x i8], [5 x i8]* @.str403, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %t42, i64 4)
  %t44 = getelementptr [2 x i8], [2 x i8]* @.str404, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %t44, i64 1)
  %t46 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t43, %nyx_string* %t45)
  br label %merge11
merge11:
  br label %merge8
else7:
  %t47 = load i8, i8* %t15
  %t48 = getelementptr [1 x i8], [1 x i8]* @.str405, i32 0, i32 0
  %t49 = load i8, i8* %t48
  %t50 = zext i8 %t49 to i64
  %t51 = zext i8 %t47 to i64
  %t52 = icmp eq i64 %t51, %t50
  br i1 %t52, label %then12, label %else13
then12:
  %t53 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t54 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t55 = getelementptr [1 x i8], [1 x i8]* @.str406, i32 0, i32 0
  %t56 = load i8, i8* %t55
  %t57 = zext i8 %t56 to i64
  %t58 = zext i8 %t54 to i64
  %t59 = icmp eq i64 %t58, %t57
  br i1 %t59, label %then15, label %else16
then15:
  %t60 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t61 = getelementptr [6 x i8], [6 x i8]* @.str407, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %t61, i64 5)
  %t63 = getelementptr [3 x i8], [3 x i8]* @.str408, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %t63, i64 2)
  %t65 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t62, %nyx_string* %t64)
  br label %merge17
else16:
  %t66 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t67 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %t68 = load i8, i8* %t67
  %t69 = zext i8 %t68 to i64
  %t70 = zext i8 %t66 to i64
  %t71 = icmp eq i64 %t70, %t69
  br i1 %t71, label %then18, label %else19
then18:
  %t72 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t73 = getelementptr [13 x i8], [13 x i8]* @.str410, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %t73, i64 12)
  %t75 = getelementptr [3 x i8], [3 x i8]* @.str411, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %t75, i64 2)
  %t77 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t74, %nyx_string* %t76)
  br label %merge20
else19:
  %t78 = getelementptr [6 x i8], [6 x i8]* @.str412, i32 0, i32 0
  %t79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %t78, i64 5)
  %t80 = getelementptr [2 x i8], [2 x i8]* @.str413, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %t80, i64 1)
  %t82 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t79, %nyx_string* %t81)
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge14
else13:
  %t83 = load i8, i8* %t15
  %t84 = getelementptr [1 x i8], [1 x i8]* @.str414, i32 0, i32 0
  %t85 = load i8, i8* %t84
  %t86 = zext i8 %t85 to i64
  %t87 = zext i8 %t83 to i64
  %t88 = icmp eq i64 %t87, %t86
  br i1 %t88, label %then21, label %else22
then21:
  %t89 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t90 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t91 = getelementptr [1 x i8], [1 x i8]* @.str415, i32 0, i32 0
  %t92 = load i8, i8* %t91
  %t93 = zext i8 %t92 to i64
  %t94 = zext i8 %t90 to i64
  %t95 = icmp eq i64 %t94, %t93
  br i1 %t95, label %then24, label %else25
then24:
  %t96 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t97 = getelementptr [6 x i8], [6 x i8]* @.str416, i32 0, i32 0
  %t98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %t97, i64 5)
  %t99 = getelementptr [3 x i8], [3 x i8]* @.str417, i32 0, i32 0
  %t100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %t99, i64 2)
  %t101 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t98, %nyx_string* %t100)
  br label %merge26
else25:
  %t102 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t103 = getelementptr [1 x i8], [1 x i8]* @.str418, i32 0, i32 0
  %t104 = load i8, i8* %t103
  %t105 = zext i8 %t104 to i64
  %t106 = zext i8 %t102 to i64
  %t107 = icmp eq i64 %t106, %t105
  br i1 %t107, label %then27, label %else28
then27:
  %t108 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t109 = getelementptr [12 x i8], [12 x i8]* @.str419, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %t109, i64 11)
  %t111 = getelementptr [3 x i8], [3 x i8]* @.str420, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %t111, i64 2)
  %t113 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t110, %nyx_string* %t112)
  br label %merge29
else28:
  %t114 = getelementptr [5 x i8], [5 x i8]* @.str421, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %t114, i64 4)
  %t116 = getelementptr [2 x i8], [2 x i8]* @.str422, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %t116, i64 1)
  %t118 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t115, %nyx_string* %t117)
  br label %merge29
merge29:
  br label %merge26
merge26:
  br label %merge23
else22:
  %t119 = load i8, i8* %t15
  %t120 = getelementptr [1 x i8], [1 x i8]* @.str423, i32 0, i32 0
  %t121 = load i8, i8* %t120
  %t122 = zext i8 %t121 to i64
  %t123 = zext i8 %t119 to i64
  %t124 = icmp eq i64 %t123, %t122
  br i1 %t124, label %then30, label %else31
then30:
  %t125 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t126 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t127 = getelementptr [1 x i8], [1 x i8]* @.str424, i32 0, i32 0
  %t128 = load i8, i8* %t127
  %t129 = zext i8 %t128 to i64
  %t130 = zext i8 %t126 to i64
  %t131 = icmp eq i64 %t130, %t129
  br i1 %t131, label %then33, label %else34
then33:
  %t132 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t133 = call i64 @tokenize_con_avisos__skip_comment(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge35
else34:
  %t134 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t135 = getelementptr [1 x i8], [1 x i8]* @.str425, i32 0, i32 0
  %t136 = load i8, i8* %t135
  %t137 = zext i8 %t136 to i64
  %t138 = zext i8 %t134 to i64
  %t139 = icmp eq i64 %t138, %t137
  br i1 %t139, label %then36, label %else37
then36:
  %t140 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t141 = call i64 @tokenize_con_avisos__skip_block_comment(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge38
else37:
  %t142 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t143 = getelementptr [1 x i8], [1 x i8]* @.str426, i32 0, i32 0
  %t144 = load i8, i8* %t143
  %t145 = zext i8 %t144 to i64
  %t146 = zext i8 %t142 to i64
  %t147 = icmp eq i64 %t146, %t145
  br i1 %t147, label %then39, label %else40
then39:
  %t148 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t149 = getelementptr [13 x i8], [13 x i8]* @.str427, i32 0, i32 0
  %t150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %t149, i64 12)
  %t151 = getelementptr [3 x i8], [3 x i8]* @.str428, i32 0, i32 0
  %t152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %t151, i64 2)
  %t153 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t150, %nyx_string* %t152)
  br label %merge41
else40:
  %t154 = getelementptr [6 x i8], [6 x i8]* @.str429, i32 0, i32 0
  %t155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %t154, i64 5)
  %t156 = getelementptr [2 x i8], [2 x i8]* @.str430, i32 0, i32 0
  %t157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %t156, i64 1)
  %t158 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t155, %nyx_string* %t157)
  br label %merge41
merge41:
  br label %merge38
merge38:
  br label %merge35
merge35:
  br label %merge32
else31:
  %t159 = load i8, i8* %t15
  %t160 = getelementptr [1 x i8], [1 x i8]* @.str431, i32 0, i32 0
  %t161 = load i8, i8* %t160
  %t162 = zext i8 %t161 to i64
  %t163 = zext i8 %t159 to i64
  %t164 = icmp eq i64 %t163, %t162
  br i1 %t164, label %then42, label %else43
then42:
  %t165 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t166 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t167 = getelementptr [1 x i8], [1 x i8]* @.str432, i32 0, i32 0
  %t168 = load i8, i8* %t167
  %t169 = zext i8 %t168 to i64
  %t170 = zext i8 %t166 to i64
  %t171 = icmp eq i64 %t170, %t169
  br i1 %t171, label %then45, label %else46
then45:
  %t172 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t173 = getelementptr [15 x i8], [15 x i8]* @.str433, i32 0, i32 0
  %t174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %t173, i64 14)
  %t175 = getelementptr [3 x i8], [3 x i8]* @.str434, i32 0, i32 0
  %t176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %t175, i64 2)
  %t177 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t174, %nyx_string* %t176)
  br label %merge47
else46:
  %t178 = getelementptr [8 x i8], [8 x i8]* @.str435, i32 0, i32 0
  %t179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %t178, i64 7)
  %t180 = getelementptr [2 x i8], [2 x i8]* @.str436, i32 0, i32 0
  %t181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %t180, i64 1)
  %t182 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t179, %nyx_string* %t181)
  br label %merge47
merge47:
  br label %merge44
else43:
  %t183 = load i8, i8* %t15
  %t184 = getelementptr [1 x i8], [1 x i8]* @.str437, i32 0, i32 0
  %t185 = load i8, i8* %t184
  %t186 = zext i8 %t185 to i64
  %t187 = zext i8 %t183 to i64
  %t188 = icmp eq i64 %t187, %t186
  br i1 %t188, label %then48, label %else49
then48:
  %t189 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t190 = getelementptr [6 x i8], [6 x i8]* @.str438, i32 0, i32 0
  %t191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %t190, i64 5)
  %t192 = getelementptr [2 x i8], [2 x i8]* @.str439, i32 0, i32 0
  %t193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %t192, i64 1)
  %t194 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t191, %nyx_string* %t193)
  br label %merge50
else49:
  %t195 = load i8, i8* %t15
  %t196 = getelementptr [1 x i8], [1 x i8]* @.str440, i32 0, i32 0
  %t197 = load i8, i8* %t196
  %t198 = zext i8 %t197 to i64
  %t199 = zext i8 %t195 to i64
  %t200 = icmp eq i64 %t199, %t198
  br i1 %t200, label %then51, label %else52
then51:
  %t201 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t202 = getelementptr [11 x i8], [11 x i8]* @.str441, i32 0, i32 0
  %t203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %t202, i64 10)
  %t204 = getelementptr [2 x i8], [2 x i8]* @.str442, i32 0, i32 0
  %t205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %t204, i64 1)
  %t206 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t203, %nyx_string* %t205)
  br label %merge53
else52:
  %t207 = load i8, i8* %t15
  %t208 = getelementptr [1 x i8], [1 x i8]* @.str443, i32 0, i32 0
  %t209 = load i8, i8* %t208
  %t210 = zext i8 %t209 to i64
  %t211 = zext i8 %t207 to i64
  %t212 = icmp eq i64 %t211, %t210
  br i1 %t212, label %then54, label %else55
then54:
  %t213 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t214 = getelementptr [12 x i8], [12 x i8]* @.str444, i32 0, i32 0
  %t215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %t214, i64 11)
  %t216 = getelementptr [2 x i8], [2 x i8]* @.str445, i32 0, i32 0
  %t217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %t216, i64 1)
  %t218 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t215, %nyx_string* %t217)
  br label %merge56
else55:
  %t219 = load i8, i8* %t15
  %t220 = getelementptr [1 x i8], [1 x i8]* @.str446, i32 0, i32 0
  %t221 = load i8, i8* %t220
  %t222 = zext i8 %t221 to i64
  %t223 = zext i8 %t219 to i64
  %t224 = icmp eq i64 %t223, %t222
  br i1 %t224, label %then57, label %else58
then57:
  %t225 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t226 = getelementptr [11 x i8], [11 x i8]* @.str447, i32 0, i32 0
  %t227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %t226, i64 10)
  %t228 = getelementptr [2 x i8], [2 x i8]* @.str448, i32 0, i32 0
  %t229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %t228, i64 1)
  %t230 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t227, %nyx_string* %t229)
  br label %merge59
else58:
  %t231 = load i8, i8* %t15
  %t232 = getelementptr [1 x i8], [1 x i8]* @.str449, i32 0, i32 0
  %t233 = load i8, i8* %t232
  %t234 = zext i8 %t233 to i64
  %t235 = zext i8 %t231 to i64
  %t236 = icmp eq i64 %t235, %t234
  br i1 %t236, label %then60, label %else61
then60:
  %t237 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t238 = load i64, i64* %t9
  %t239 = icmp sgt i64 %t238, 0
  br i1 %t239, label %then63, label %else64
then63:
  %t240 = load i64, i64* %t9
  %t241 = sub i64 %t240, 1
  store i64 %t241, i64* %t9
  %t242 = getelementptr [12 x i8], [12 x i8]* @.str450, i32 0, i32 0
  %t243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %t242, i64 11)
  %t244 = getelementptr [2 x i8], [2 x i8]* @.str451, i32 0, i32 0
  %t245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %t244, i64 1)
  %t246 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t243, %nyx_string* %t245)
  %t247 = call i64 @tokenize_con_avisos__scan_string_rest(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge65
else64:
  %t248 = getelementptr [12 x i8], [12 x i8]* @.str452, i32 0, i32 0
  %t249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %t248, i64 11)
  %t250 = getelementptr [2 x i8], [2 x i8]* @.str453, i32 0, i32 0
  %t251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %t250, i64 1)
  %t252 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t249, %nyx_string* %t251)
  br label %merge65
merge65:
  br label %merge62
else61:
  %t253 = load i8, i8* %t15
  %t254 = getelementptr [1 x i8], [1 x i8]* @.str454, i32 0, i32 0
  %t255 = load i8, i8* %t254
  %t256 = zext i8 %t255 to i64
  %t257 = zext i8 %t253 to i64
  %t258 = icmp eq i64 %t257, %t256
  br i1 %t258, label %then66, label %else67
then66:
  %t259 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t260 = getelementptr [13 x i8], [13 x i8]* @.str455, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %t260, i64 12)
  %t262 = getelementptr [2 x i8], [2 x i8]* @.str456, i32 0, i32 0
  %t263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %t262, i64 1)
  %t264 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t261, %nyx_string* %t263)
  br label %merge68
else67:
  %t265 = load i8, i8* %t15
  %t266 = getelementptr [1 x i8], [1 x i8]* @.str457, i32 0, i32 0
  %t267 = load i8, i8* %t266
  %t268 = zext i8 %t267 to i64
  %t269 = zext i8 %t265 to i64
  %t270 = icmp eq i64 %t269, %t268
  br i1 %t270, label %then69, label %else70
then69:
  %t271 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t272 = getelementptr [14 x i8], [14 x i8]* @.str458, i32 0, i32 0
  %t273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %t272, i64 13)
  %t274 = getelementptr [2 x i8], [2 x i8]* @.str459, i32 0, i32 0
  %t275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %t274, i64 1)
  %t276 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t273, %nyx_string* %t275)
  br label %merge71
else70:
  %t277 = load i8, i8* %t15
  %t278 = getelementptr [1 x i8], [1 x i8]* @.str460, i32 0, i32 0
  %t279 = load i8, i8* %t278
  %t280 = zext i8 %t279 to i64
  %t281 = zext i8 %t277 to i64
  %t282 = icmp eq i64 %t281, %t280
  br i1 %t282, label %then72, label %else73
then72:
  %t283 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t284 = getelementptr [6 x i8], [6 x i8]* @.str461, i32 0, i32 0
  %t285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %t284, i64 5)
  %t286 = getelementptr [2 x i8], [2 x i8]* @.str462, i32 0, i32 0
  %t287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %t286, i64 1)
  %t288 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t285, %nyx_string* %t287)
  br label %merge74
else73:
  %t289 = load i8, i8* %t15
  %t290 = getelementptr [1 x i8], [1 x i8]* @.str463, i32 0, i32 0
  %t291 = load i8, i8* %t290
  %t292 = zext i8 %t291 to i64
  %t293 = zext i8 %t289 to i64
  %t294 = icmp eq i64 %t293, %t292
  br i1 %t294, label %then75, label %else76
then75:
  %t295 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t296 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t297 = getelementptr [1 x i8], [1 x i8]* @.str464, i32 0, i32 0
  %t298 = load i8, i8* %t297
  %t299 = zext i8 %t298 to i64
  %t300 = zext i8 %t296 to i64
  %t301 = icmp eq i64 %t300, %t299
  br i1 %t301, label %then78, label %else79
then78:
  %t302 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t303 = getelementptr [12 x i8], [12 x i8]* @.str465, i32 0, i32 0
  %t304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %t303, i64 11)
  %t305 = getelementptr [3 x i8], [3 x i8]* @.str466, i32 0, i32 0
  %t306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %t305, i64 2)
  %t307 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t304, %nyx_string* %t306)
  br label %merge80
else79:
  %t308 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t309 = getelementptr [1 x i8], [1 x i8]* @.str467, i32 0, i32 0
  %t310 = load i8, i8* %t309
  %t311 = zext i8 %t310 to i64
  %t312 = zext i8 %t308 to i64
  %t313 = icmp eq i64 %t312, %t311
  br i1 %t313, label %then81, label %else82
then81:
  %t314 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t315 = getelementptr [12 x i8], [12 x i8]* @.str468, i32 0, i32 0
  %t316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %t315, i64 11)
  %t317 = getelementptr [3 x i8], [3 x i8]* @.str469, i32 0, i32 0
  %t318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %t317, i64 2)
  %t319 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t316, %nyx_string* %t318)
  br label %merge83
else82:
  %t320 = getelementptr [7 x i8], [7 x i8]* @.str470, i32 0, i32 0
  %t321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %t320, i64 6)
  %t322 = getelementptr [2 x i8], [2 x i8]* @.str471, i32 0, i32 0
  %t323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %t322, i64 1)
  %t324 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t321, %nyx_string* %t323)
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
else76:
  %t325 = load i8, i8* %t15
  %t326 = getelementptr [1 x i8], [1 x i8]* @.str472, i32 0, i32 0
  %t327 = load i8, i8* %t326
  %t328 = zext i8 %t327 to i64
  %t329 = zext i8 %t325 to i64
  %t330 = icmp eq i64 %t329, %t328
  br i1 %t330, label %then84, label %else85
then84:
  %t331 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t332 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t333 = getelementptr [1 x i8], [1 x i8]* @.str473, i32 0, i32 0
  %t334 = load i8, i8* %t333
  %t335 = zext i8 %t334 to i64
  %t336 = zext i8 %t332 to i64
  %t337 = icmp eq i64 %t336, %t335
  br i1 %t337, label %then87, label %else88
then87:
  %t338 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t339 = getelementptr [10 x i8], [10 x i8]* @.str474, i32 0, i32 0
  %t340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %t339, i64 9)
  %t341 = getelementptr [3 x i8], [3 x i8]* @.str475, i32 0, i32 0
  %t342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %t341, i64 2)
  %t343 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t340, %nyx_string* %t342)
  br label %merge89
else88:
  %t344 = getelementptr [4 x i8], [4 x i8]* @.str476, i32 0, i32 0
  %t345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %t344, i64 3)
  %t346 = getelementptr [2 x i8], [2 x i8]* @.str477, i32 0, i32 0
  %t347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %t346, i64 1)
  %t348 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t345, %nyx_string* %t347)
  br label %merge89
merge89:
  br label %merge86
else85:
  %t349 = load i8, i8* %t15
  %t350 = getelementptr [1 x i8], [1 x i8]* @.str478, i32 0, i32 0
  %t351 = load i8, i8* %t350
  %t352 = zext i8 %t351 to i64
  %t353 = zext i8 %t349 to i64
  %t354 = icmp eq i64 %t353, %t352
  br i1 %t354, label %then90, label %else91
then90:
  %t355 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t356 = getelementptr [9 x i8], [9 x i8]* @.str479, i32 0, i32 0
  %t357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %t356, i64 8)
  %t358 = getelementptr [2 x i8], [2 x i8]* @.str480, i32 0, i32 0
  %t359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %t358, i64 1)
  %t360 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t357, %nyx_string* %t359)
  br label %merge92
else91:
  %t361 = load i8, i8* %t15
  %t362 = getelementptr [1 x i8], [1 x i8]* @.str481, i32 0, i32 0
  %t363 = load i8, i8* %t362
  %t364 = zext i8 %t363 to i64
  %t365 = zext i8 %t361 to i64
  %t366 = icmp eq i64 %t365, %t364
  br i1 %t366, label %then93, label %else94
then93:
  %t367 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t368 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t369 = getelementptr [1 x i8], [1 x i8]* @.str482, i32 0, i32 0
  %t370 = load i8, i8* %t369
  %t371 = zext i8 %t370 to i64
  %t372 = zext i8 %t368 to i64
  %t373 = icmp eq i64 %t372, %t371
  br i1 %t373, label %then96, label %else97
then96:
  %t374 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t375 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t376 = getelementptr [1 x i8], [1 x i8]* @.str483, i32 0, i32 0
  %t377 = load i8, i8* %t376
  %t378 = zext i8 %t377 to i64
  %t379 = zext i8 %t375 to i64
  %t380 = icmp eq i64 %t379, %t378
  br i1 %t380, label %then99, label %else100
then99:
  %t381 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t382 = getelementptr [18 x i8], [18 x i8]* @.str484, i32 0, i32 0
  %t383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %t382, i64 17)
  %t384 = getelementptr [4 x i8], [4 x i8]* @.str485, i32 0, i32 0
  %t385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %t384, i64 3)
  %t386 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t383, %nyx_string* %t385)
  br label %merge101
else100:
  %t387 = getelementptr [11 x i8], [11 x i8]* @.str486, i32 0, i32 0
  %t388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %t387, i64 10)
  %t389 = getelementptr [3 x i8], [3 x i8]* @.str487, i32 0, i32 0
  %t390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %t389, i64 2)
  %t391 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t388, %nyx_string* %t390)
  br label %merge101
merge101:
  br label %merge98
else97:
  %t392 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t393 = getelementptr [1 x i8], [1 x i8]* @.str488, i32 0, i32 0
  %t394 = load i8, i8* %t393
  %t395 = zext i8 %t394 to i64
  %t396 = zext i8 %t392 to i64
  %t397 = icmp eq i64 %t396, %t395
  br i1 %t397, label %then102, label %else103
then102:
  %t398 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t399 = getelementptr [11 x i8], [11 x i8]* @.str489, i32 0, i32 0
  %t400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %t399, i64 10)
  %t401 = getelementptr [3 x i8], [3 x i8]* @.str490, i32 0, i32 0
  %t402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %t401, i64 2)
  %t403 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t400, %nyx_string* %t402)
  br label %merge104
else103:
  %t404 = getelementptr [5 x i8], [5 x i8]* @.str491, i32 0, i32 0
  %t405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %t404, i64 4)
  %t406 = getelementptr [2 x i8], [2 x i8]* @.str492, i32 0, i32 0
  %t407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %t406, i64 1)
  %t408 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t405, %nyx_string* %t407)
  br label %merge104
merge104:
  br label %merge98
merge98:
  br label %merge95
else94:
  %t409 = load i8, i8* %t15
  %t410 = getelementptr [1 x i8], [1 x i8]* @.str493, i32 0, i32 0
  %t411 = load i8, i8* %t410
  %t412 = zext i8 %t411 to i64
  %t413 = zext i8 %t409 to i64
  %t414 = icmp eq i64 %t413, %t412
  br i1 %t414, label %then105, label %else106
then105:
  %t415 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t416 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t417 = getelementptr [1 x i8], [1 x i8]* @.str494, i32 0, i32 0
  %t418 = load i8, i8* %t417
  %t419 = zext i8 %t418 to i64
  %t420 = zext i8 %t416 to i64
  %t421 = icmp eq i64 %t420, %t419
  br i1 %t421, label %then108, label %else109
then108:
  %t422 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t423 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t424 = getelementptr [1 x i8], [1 x i8]* @.str495, i32 0, i32 0
  %t425 = load i8, i8* %t424
  %t426 = zext i8 %t425 to i64
  %t427 = zext i8 %t423 to i64
  %t428 = icmp eq i64 %t427, %t426
  br i1 %t428, label %then111, label %else112
then111:
  %t429 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t430 = getelementptr [19 x i8], [19 x i8]* @.str496, i32 0, i32 0
  %t431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %t430, i64 18)
  %t432 = getelementptr [4 x i8], [4 x i8]* @.str497, i32 0, i32 0
  %t433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %t432, i64 3)
  %t434 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t431, %nyx_string* %t433)
  br label %merge113
else112:
  %t435 = getelementptr [12 x i8], [12 x i8]* @.str498, i32 0, i32 0
  %t436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %t435, i64 11)
  %t437 = getelementptr [3 x i8], [3 x i8]* @.str499, i32 0, i32 0
  %t438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %t437, i64 2)
  %t439 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t436, %nyx_string* %t438)
  br label %merge113
merge113:
  br label %merge110
else109:
  %t440 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t441 = getelementptr [1 x i8], [1 x i8]* @.str500, i32 0, i32 0
  %t442 = load i8, i8* %t441
  %t443 = zext i8 %t442 to i64
  %t444 = zext i8 %t440 to i64
  %t445 = icmp eq i64 %t444, %t443
  br i1 %t445, label %then114, label %else115
then114:
  %t446 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t447 = getelementptr [14 x i8], [14 x i8]* @.str501, i32 0, i32 0
  %t448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %t447, i64 13)
  %t449 = getelementptr [3 x i8], [3 x i8]* @.str502, i32 0, i32 0
  %t450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %t449, i64 2)
  %t451 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t448, %nyx_string* %t450)
  br label %merge116
else115:
  %t452 = getelementptr [8 x i8], [8 x i8]* @.str503, i32 0, i32 0
  %t453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %t452, i64 7)
  %t454 = getelementptr [2 x i8], [2 x i8]* @.str504, i32 0, i32 0
  %t455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %t454, i64 1)
  %t456 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t453, %nyx_string* %t455)
  br label %merge116
merge116:
  br label %merge110
merge110:
  br label %merge107
else106:
  %t457 = load i8, i8* %t15
  %t458 = getelementptr [1 x i8], [1 x i8]* @.str505, i32 0, i32 0
  %t459 = load i8, i8* %t458
  %t460 = zext i8 %t459 to i64
  %t461 = zext i8 %t457 to i64
  %t462 = icmp eq i64 %t461, %t460
  br i1 %t462, label %then117, label %else118
then117:
  %t463 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t464 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t465 = getelementptr [1 x i8], [1 x i8]* @.str506, i32 0, i32 0
  %t466 = load i8, i8* %t465
  %t467 = zext i8 %t466 to i64
  %t468 = zext i8 %t464 to i64
  %t469 = icmp eq i64 %t468, %t467
  br i1 %t469, label %then120, label %else121
then120:
  %t470 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t471 = getelementptr [8 x i8], [8 x i8]* @.str507, i32 0, i32 0
  %t472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %t471, i64 7)
  %t473 = getelementptr [3 x i8], [3 x i8]* @.str508, i32 0, i32 0
  %t474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %t473, i64 2)
  %t475 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t472, %nyx_string* %t474)
  br label %merge122
else121:
  %t476 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t477 = getelementptr [1 x i8], [1 x i8]* @.str509, i32 0, i32 0
  %t478 = load i8, i8* %t477
  %t479 = zext i8 %t478 to i64
  %t480 = zext i8 %t476 to i64
  %t481 = icmp eq i64 %t480, %t479
  br i1 %t481, label %then123, label %else124
then123:
  %t482 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t483 = getelementptr [11 x i8], [11 x i8]* @.str510, i32 0, i32 0
  %t484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %t483, i64 10)
  %t485 = getelementptr [3 x i8], [3 x i8]* @.str511, i32 0, i32 0
  %t486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %t485, i64 2)
  %t487 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t484, %nyx_string* %t486)
  br label %merge125
else124:
  %t488 = getelementptr [4 x i8], [4 x i8]* @.str512, i32 0, i32 0
  %t489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %t488, i64 3)
  %t490 = getelementptr [2 x i8], [2 x i8]* @.str513, i32 0, i32 0
  %t491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %t490, i64 1)
  %t492 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t489, %nyx_string* %t491)
  br label %merge125
merge125:
  br label %merge122
merge122:
  br label %merge119
else118:
  %t493 = load i8, i8* %t15
  %t494 = getelementptr [1 x i8], [1 x i8]* @.str514, i32 0, i32 0
  %t495 = load i8, i8* %t494
  %t496 = zext i8 %t495 to i64
  %t497 = zext i8 %t493 to i64
  %t498 = icmp eq i64 %t497, %t496
  br i1 %t498, label %then126, label %else127
then126:
  %t499 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t500 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t501 = getelementptr [1 x i8], [1 x i8]* @.str515, i32 0, i32 0
  %t502 = load i8, i8* %t501
  %t503 = zext i8 %t502 to i64
  %t504 = zext i8 %t500 to i64
  %t505 = icmp eq i64 %t504, %t503
  br i1 %t505, label %then129, label %else130
then129:
  %t506 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t507 = getelementptr [6 x i8], [6 x i8]* @.str516, i32 0, i32 0
  %t508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %t507, i64 5)
  %t509 = getelementptr [3 x i8], [3 x i8]* @.str517, i32 0, i32 0
  %t510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %t509, i64 2)
  %t511 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t508, %nyx_string* %t510)
  br label %merge131
else130:
  %t512 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t513 = getelementptr [1 x i8], [1 x i8]* @.str518, i32 0, i32 0
  %t514 = load i8, i8* %t513
  %t515 = zext i8 %t514 to i64
  %t516 = zext i8 %t512 to i64
  %t517 = icmp eq i64 %t516, %t515
  br i1 %t517, label %then132, label %else133
then132:
  %t518 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t519 = getelementptr [12 x i8], [12 x i8]* @.str519, i32 0, i32 0
  %t520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %t519, i64 11)
  %t521 = getelementptr [3 x i8], [3 x i8]* @.str520, i32 0, i32 0
  %t522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %t521, i64 2)
  %t523 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t520, %nyx_string* %t522)
  br label %merge134
else133:
  %t524 = getelementptr [5 x i8], [5 x i8]* @.str521, i32 0, i32 0
  %t525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %t524, i64 4)
  %t526 = getelementptr [2 x i8], [2 x i8]* @.str522, i32 0, i32 0
  %t527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %t526, i64 1)
  %t528 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t525, %nyx_string* %t527)
  br label %merge134
merge134:
  br label %merge131
merge131:
  br label %merge128
else127:
  %t529 = load i8, i8* %t15
  %t530 = getelementptr [1 x i8], [1 x i8]* @.str523, i32 0, i32 0
  %t531 = load i8, i8* %t530
  %t532 = zext i8 %t531 to i64
  %t533 = zext i8 %t529 to i64
  %t534 = icmp eq i64 %t533, %t532
  br i1 %t534, label %then135, label %else136
then135:
  %t535 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t536 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t537 = getelementptr [1 x i8], [1 x i8]* @.str524, i32 0, i32 0
  %t538 = load i8, i8* %t537
  %t539 = zext i8 %t538 to i64
  %t540 = zext i8 %t536 to i64
  %t541 = icmp eq i64 %t540, %t539
  br i1 %t541, label %then138, label %else139
then138:
  %t542 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t543 = getelementptr [13 x i8], [13 x i8]* @.str525, i32 0, i32 0
  %t544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %t543, i64 12)
  %t545 = getelementptr [3 x i8], [3 x i8]* @.str526, i32 0, i32 0
  %t546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %t545, i64 2)
  %t547 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t544, %nyx_string* %t546)
  br label %merge140
else139:
  %t548 = getelementptr [6 x i8], [6 x i8]* @.str527, i32 0, i32 0
  %t549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %t548, i64 5)
  %t550 = getelementptr [2 x i8], [2 x i8]* @.str528, i32 0, i32 0
  %t551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %t550, i64 1)
  %t552 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t549, %nyx_string* %t551)
  br label %merge140
merge140:
  br label %merge137
else136:
  %t553 = load i8, i8* %t15
  %t554 = getelementptr [1 x i8], [1 x i8]* @.str529, i32 0, i32 0
  %t555 = load i8, i8* %t554
  %t556 = zext i8 %t555 to i64
  %t557 = zext i8 %t553 to i64
  %t558 = icmp eq i64 %t557, %t556
  br i1 %t558, label %then141, label %else142
then141:
  %t559 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t560 = getelementptr [6 x i8], [6 x i8]* @.str530, i32 0, i32 0
  %t561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %t560, i64 5)
  %t562 = getelementptr [2 x i8], [2 x i8]* @.str531, i32 0, i32 0
  %t563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %t562, i64 1)
  %t564 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t561, %nyx_string* %t563)
  br label %merge143
else142:
  %t565 = load i8, i8* %t15
  %t566 = getelementptr [1 x i8], [1 x i8]* @.str532, i32 0, i32 0
  %t567 = load i8, i8* %t566
  %t568 = zext i8 %t567 to i64
  %t569 = zext i8 %t565 to i64
  %t570 = icmp eq i64 %t569, %t568
  br i1 %t570, label %then144, label %else145
then144:
  %t571 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t572 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t573 = getelementptr [1 x i8], [1 x i8]* @.str533, i32 0, i32 0
  %t574 = load i8, i8* %t573
  %t575 = zext i8 %t574 to i64
  %t576 = zext i8 %t572 to i64
  %t577 = icmp eq i64 %t576, %t575
  br i1 %t577, label %then147, label %else148
then147:
  %t578 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t579 = call i64 @tokenize_con_avisos__skip_comment(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge149
else148:
  %t580 = getelementptr [5 x i8], [5 x i8]* @.str534, i32 0, i32 0
  %t581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %t580, i64 4)
  %t582 = getelementptr [2 x i8], [2 x i8]* @.str535, i32 0, i32 0
  %t583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %t582, i64 1)
  %t584 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t581, %nyx_string* %t583)
  br label %merge149
merge149:
  br label %merge146
else145:
  %t585 = load i8, i8* %t15
  %t586 = getelementptr [1 x i8], [1 x i8]* @.str536, i32 0, i32 0
  %t587 = load i8, i8* %t586
  %t588 = zext i8 %t587 to i64
  %t589 = zext i8 %t585 to i64
  %t590 = icmp eq i64 %t589, %t588
  br i1 %t590, label %then150, label %else151
then150:
  %t591 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t592 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t593 = getelementptr [1 x i8], [1 x i8]* @.str537, i32 0, i32 0
  %t594 = load i8, i8* %t593
  %t595 = zext i8 %t594 to i64
  %t596 = zext i8 %t592 to i64
  %t597 = icmp eq i64 %t596, %t595
  br i1 %t597, label %then153, label %else154
then153:
  %t598 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t599 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t600 = getelementptr [1 x i8], [1 x i8]* @.str538, i32 0, i32 0
  %t601 = load i8, i8* %t600
  %t602 = zext i8 %t601 to i64
  %t603 = zext i8 %t599 to i64
  %t604 = icmp eq i64 %t603, %t602
  br i1 %t604, label %then156, label %else157
then156:
  %t605 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t606 = getelementptr [9 x i8], [9 x i8]* @.str539, i32 0, i32 0
  %t607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %t606, i64 8)
  %t608 = getelementptr [4 x i8], [4 x i8]* @.str540, i32 0, i32 0
  %t609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %t608, i64 3)
  %t610 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t607, %nyx_string* %t609)
  br label %merge158
else157:
  %t611 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %t612 = getelementptr [1 x i8], [1 x i8]* @.str541, i32 0, i32 0
  %t613 = load i8, i8* %t612
  %t614 = zext i8 %t613 to i64
  %t615 = zext i8 %t611 to i64
  %t616 = icmp eq i64 %t615, %t614
  br i1 %t616, label %then159, label %else160
then159:
  %t617 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t618 = getelementptr [16 x i8], [16 x i8]* @.str542, i32 0, i32 0
  %t619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %t618, i64 15)
  %t620 = getelementptr [4 x i8], [4 x i8]* @.str543, i32 0, i32 0
  %t621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %t620, i64 3)
  %t622 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t619, %nyx_string* %t621)
  br label %merge161
else160:
  %t623 = getelementptr [6 x i8], [6 x i8]* @.str544, i32 0, i32 0
  %t624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %t623, i64 5)
  %t625 = getelementptr [3 x i8], [3 x i8]* @.str545, i32 0, i32 0
  %t626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %t625, i64 2)
  %t627 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t624, %nyx_string* %t626)
  br label %merge161
merge161:
  br label %merge158
merge158:
  br label %merge155
else154:
  %t628 = getelementptr [4 x i8], [4 x i8]* @.str546, i32 0, i32 0
  %t629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %t628, i64 3)
  %t630 = getelementptr [2 x i8], [2 x i8]* @.str547, i32 0, i32 0
  %t631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %t630, i64 1)
  %t632 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %t629, %nyx_string* %t631)
  br label %merge155
merge155:
  br label %merge152
else151:
  %t633 = load i8, i8* %t15
  %t634 = getelementptr [1 x i8], [1 x i8]* @.str548, i32 0, i32 0
  %t635 = load i8, i8* %t634
  %t636 = zext i8 %t635 to i64
  %t637 = zext i8 %t633 to i64
  %t638 = icmp eq i64 %t637, %t636
  br i1 %t638, label %then162, label %else163
then162:
  %t639 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t640 = getelementptr [1 x i8], [1 x i8]* @.str549, i32 0, i32 0
  %t641 = load i8, i8* %t640
  %t642 = zext i8 %t641 to i64
  %t643 = zext i8 %t639 to i64
  %t644 = icmp eq i64 %t643, %t642
  br i1 %t644, label %then165, label %else166
then165:
  %t645 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t646 = call i64 @tokenize_con_avisos__scan_multiline_string(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge167
else166:
  %t647 = call i64 @tokenize_con_avisos__scan_string(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge167
merge167:
  br label %merge164
else163:
  %t648 = load i8, i8* %t15
  %t649 = getelementptr [1 x i8], [1 x i8]* @.str550, i32 0, i32 0
  %t650 = load i8, i8* %t649
  %t651 = zext i8 %t650 to i64
  %t652 = zext i8 %t648 to i64
  %t653 = icmp eq i64 %t652, %t651
  br i1 %t653, label %then168, label %else169
then168:
  %t654 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  store i8 %t654, i8* %t655
  store i1 0, i1* %t656
  %t657 = load i8, i8* %t655
  %t658 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t657)
  br i1 %t658, label %then171, label %else172
then171:
  %t659 = load i64, i64* %t5
  %t660 = add i64 %t659, 2
  store i64 %t660, i64* %t661
  %t662 = load i64, i64* %t661
  %t663 = load %nyx_string*, %nyx_string** %t3
  %t664 = call i64 @nyx_string_byte_length(%nyx_string* %t663)
  %t665 = icmp sge i64 %t662, %t664
  br i1 %t665, label %then174, label %else175
then174:
  store i1 1, i1* %t656
  br label %merge176
else175:
  %t666 = load %nyx_string*, %nyx_string** %t3
  %t667 = load i64, i64* %t661
  %t668 = call i8 @nyx_string_char_at(%nyx_string* %t666, i64 %t667)
  %t669 = zext i8 %t668 to i64
  %t670 = trunc i64 %t669 to i8
  store i8 %t670, i8* %t671
  %t672 = load i8, i8* %t671
  %t673 = getelementptr [1 x i8], [1 x i8]* @.str551, i32 0, i32 0
  %t674 = load i8, i8* %t673
  %t675 = zext i8 %t674 to i64
  %t676 = zext i8 %t672 to i64
  %t677 = icmp ne i64 %t676, %t675
  br i1 %t677, label %then177, label %else178
then177:
  store i1 1, i1* %t656
  br label %merge179
else178:
  br label %merge179
merge179:
  br label %merge176
merge176:
  br label %merge173
else172:
  br label %merge173
merge173:
  %t678 = load i1, i1* %t656
  br i1 %t678, label %then180, label %else181
then180:
  %t679 = call i64 @tokenize_con_avisos__scan_lifetime(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge182
else181:
  %t680 = call i64 @tokenize_con_avisos__scan_char(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge182
merge182:
  br label %merge170
else169:
  %t681 = load i8, i8* %t15
  %t682 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t681)
  br i1 %t682, label %then183, label %else184
then183:
  %t683 = call i64 @tokenize_con_avisos__scan_number(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge185
else184:
  store i1 false, i1* %t684
  %t685 = load i8, i8* %t15
  %t686 = getelementptr [1 x i8], [1 x i8]* @.str552, i32 0, i32 0
  %t687 = load i8, i8* %t686
  %t688 = zext i8 %t687 to i64
  %t689 = zext i8 %t685 to i64
  %t690 = icmp eq i64 %t689, %t688
  br i1 %t690, label %sc_and_rhs186, label %sc_and_end187
sc_and_rhs186:
  %t691 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t692 = getelementptr [1 x i8], [1 x i8]* @.str553, i32 0, i32 0
  %t693 = load i8, i8* %t692
  %t694 = zext i8 %t693 to i64
  %t695 = zext i8 %t691 to i64
  %t696 = icmp eq i64 %t695, %t694
  store i1 %t696, i1* %t684
  br label %sc_and_end187
sc_and_end187:
  %t697 = load i1, i1* %t684
  br i1 %t697, label %then188, label %else189
then188:
  %t698 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t699 = call i64 @tokenize_con_avisos__scan_raw_string(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge190
else189:
  %t700 = load i8, i8* %t15
  %t701 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %t700)
  br i1 %t701, label %then191, label %else192
then191:
  %t702 = call i64 @tokenize_con_avisos__scan_identifier(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge193
else192:
  store i1 false, i1* %t703
  store i1 false, i1* %t704
  %t705 = load i8, i8* %t15
  %t706 = getelementptr [1 x i8], [1 x i8]* @.str554, i32 0, i32 0
  %t707 = load i8, i8* %t706
  %t708 = zext i8 %t707 to i64
  %t709 = zext i8 %t705 to i64
  %t710 = icmp eq i64 %t709, %t708
  br i1 %t710, label %sc_and_rhs194, label %sc_and_end195
sc_and_rhs194:
  %t711 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %t712 = getelementptr [1 x i8], [1 x i8]* @.str555, i32 0, i32 0
  %t713 = load i8, i8* %t712
  %t714 = zext i8 %t713 to i64
  %t715 = zext i8 %t711 to i64
  %t716 = icmp eq i64 %t715, %t714
  store i1 %t716, i1* %t704
  br label %sc_and_end195
sc_and_end195:
  %t717 = load i1, i1* %t704
  br i1 %t717, label %sc_and_rhs196, label %sc_and_end197
sc_and_rhs196:
  %t718 = load i64, i64* %t9
  %t719 = icmp sgt i64 %t718, 0
  store i1 %t719, i1* %t703
  br label %sc_and_end197
sc_and_end197:
  %t720 = load i1, i1* %t703
  br i1 %t720, label %then198, label %else199
then198:
  %t721 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t722 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %t723 = call i64 @tokenize_con_avisos__scan_string_escdelim(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge200
else199:
  %t724 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge200
merge200:
  br label %merge193
merge193:
  br label %merge190
merge190:
  br label %merge185
merge185:
  br label %merge170
merge170:
  br label %merge164
merge164:
  br label %merge152
merge152:
  br label %merge146
merge146:
  br label %merge143
merge143:
  br label %merge137
merge137:
  br label %merge128
merge128:
  br label %merge119
merge119:
  br label %merge107
merge107:
  br label %merge95
merge95:
  br label %merge92
merge92:
  br label %merge86
merge86:
  br label %merge77
merge77:
  br label %merge74
merge74:
  br label %merge71
merge71:
  br label %merge68
merge68:
  br label %merge62
merge62:
  br label %merge59
merge59:
  br label %merge56
merge56:
  br label %merge53
merge53:
  br label %merge50
merge50:
  br label %merge44
merge44:
  br label %merge32
merge32:
  br label %merge23
merge23:
  br label %merge14
merge14:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  ret i64 0
}


attributes #0 = { returns_twice }

