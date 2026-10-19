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
@.str299 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [25 x i8] c"Error [NYX1045] (línea \00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [11 x i8] c", columna \00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [4 x i8] c"): \00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [1 x i8] c"n"
@.str316 = private unnamed_addr constant [1 x i8] c"\0a"
@.str317 = private unnamed_addr constant [1 x i8] c"t"
@.str318 = private unnamed_addr constant [1 x i8] c"\09"
@.str319 = private unnamed_addr constant [1 x i8] c"r"
@.str320 = private unnamed_addr constant [1 x i8] c"0"
@.str321 = private unnamed_addr constant [1 x i8] c"\5c"
@.str322 = private unnamed_addr constant [1 x i8] c"\22"
@.str323 = private unnamed_addr constant [1 x i8] c"'"
@.str324 = private unnamed_addr constant [1 x i8] c"$"
@.str325 = private unnamed_addr constant [1 x i8] c"x"
@.str326 = private unnamed_addr constant [65 x i8] c"`\5cx` necesita exactamente dos dígitos hex, como `\5cx41` o `\5cx1F`\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [1 x i8] c"u"
@.str328 = private unnamed_addr constant [1 x i8] c"\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [1 x i8] c"{"
@.str330 = private unnamed_addr constant [42 x i8] c"`\5cu` va con llaves: `\5cu{e9}`, `\5cu{1F600}`\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [1 x i8] c"}"
@.str332 = private unnamed_addr constant [51 x i8] c"`\5cu{…}` lleva solo dígitos hex y cierra con `}`\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [38 x i8] c"`\5cu{…}` lleva de 1 a 6 dígitos hex\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [53 x i8] c"`\5cu{…}` fuera de rango: el máximo es `\5cu{10FFFF}`\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [62 x i8] c"`\5cu{D800}`-`\5cu{DFFF}` son surrogates de UTF-16, no caracteres\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [67 x i8] c"un `char` es un byte: `\5cu{…}` mayor que `\5cu{7F}` va en un String\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [1 x i8] c"\22"
@.str339 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [1 x i8] c"$"
@.str341 = private unnamed_addr constant [1 x i8] c"{"
@.str342 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [2 x i8] c"+\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [2 x i8] c"(\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [1 x i8] c"\5c"
@.str348 = private unnamed_addr constant [99 x i8] c"Error: String sin cerrar (abierto con \5c\22 dentro de una interpolación — cerralo con \5c\22 también)\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [1 x i8] c"\5c"
@.str350 = private unnamed_addr constant [1 x i8] c"\22"
@.str351 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [1 x i8] c"\5c"
@.str353 = private unnamed_addr constant [1 x i8] c"\22"
@.str354 = private unnamed_addr constant [37 x i8] c"Error: unterminated multiline string\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [1 x i8] c"\22"
@.str356 = private unnamed_addr constant [1 x i8] c"\22"
@.str357 = private unnamed_addr constant [1 x i8] c"\22"
@.str358 = private unnamed_addr constant [1 x i8] c"\22"
@.str359 = private unnamed_addr constant [1 x i8] c"\22"
@.str360 = private unnamed_addr constant [1 x i8] c"\22"
@.str361 = private unnamed_addr constant [1 x i8] c"\22"
@.str362 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [1 x i8] c"\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [31 x i8] c"Error: unterminated raw string\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [1 x i8] c"\22"
@.str367 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [1 x i8] c"\22"
@.str370 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [2 x i8] c"+\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [1 x i8] c"$"
@.str374 = private unnamed_addr constant [1 x i8] c"{"
@.str375 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [2 x i8] c"+\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [2 x i8] c"+\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [2 x i8] c"(\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [1 x i8] c"\5c"
@.str383 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [2 x i8] c"'\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [1 x i8] c"'"
@.str386 = private unnamed_addr constant [2 x i8] c"c\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [1 x i8] c"\5c"
@.str388 = private unnamed_addr constant [1 x i8] c"'"
@.str389 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [1 x i8] c"\0a"
@.str392 = private unnamed_addr constant [1 x i8] c"+"
@.str393 = private unnamed_addr constant [1 x i8] c"="
@.str394 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [3 x i8] c"+=\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [2 x i8] c"+\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [1 x i8] c"-"
@.str399 = private unnamed_addr constant [1 x i8] c">"
@.str400 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [3 x i8] c"->\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [1 x i8] c"="
@.str403 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [3 x i8] c"-=\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [2 x i8] c"-\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [1 x i8] c"*"
@.str408 = private unnamed_addr constant [1 x i8] c"*"
@.str409 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [3 x i8] c"**\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [1 x i8] c"="
@.str412 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [3 x i8] c"*=\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [2 x i8] c"*\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [1 x i8] c"/"
@.str417 = private unnamed_addr constant [1 x i8] c"/"
@.str418 = private unnamed_addr constant [1 x i8] c"*"
@.str419 = private unnamed_addr constant [1 x i8] c"="
@.str420 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [3 x i8] c"/=\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [2 x i8] c"/\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [1 x i8] c"%"
@.str425 = private unnamed_addr constant [1 x i8] c"="
@.str426 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [3 x i8] c"%=\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [2 x i8] c"%\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [1 x i8] c","
@.str431 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [2 x i8] c",\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [1 x i8] c"("
@.str434 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [2 x i8] c"(\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [1 x i8] c")"
@.str437 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [2 x i8] c")\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [1 x i8] c"{"
@.str440 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [2 x i8] c"{\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [1 x i8] c"}"
@.str443 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [2 x i8] c")\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [2 x i8] c"}\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [1 x i8] c"["
@.str448 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [2 x i8] c"[\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [1 x i8] c"]"
@.str451 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [2 x i8] c"]\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [1 x i8] c":"
@.str454 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [2 x i8] c":\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [1 x i8] c"="
@.str457 = private unnamed_addr constant [1 x i8] c"="
@.str458 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [3 x i8] c"==\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [1 x i8] c">"
@.str461 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [3 x i8] c"=>\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [2 x i8] c"=\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [1 x i8] c"!"
@.str466 = private unnamed_addr constant [1 x i8] c"="
@.str467 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [3 x i8] c"!=\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [2 x i8] c"!\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [1 x i8] c"?"
@.str472 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [2 x i8] c"?\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [1 x i8] c"<"
@.str475 = private unnamed_addr constant [1 x i8] c"<"
@.str476 = private unnamed_addr constant [1 x i8] c"="
@.str477 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [4 x i8] c"<<=\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [3 x i8] c"<<\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [1 x i8] c"="
@.str482 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [3 x i8] c"<=\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [2 x i8] c"<\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [1 x i8] c">"
@.str487 = private unnamed_addr constant [1 x i8] c">"
@.str488 = private unnamed_addr constant [1 x i8] c"="
@.str489 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [4 x i8] c">>=\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [3 x i8] c">>\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [1 x i8] c"="
@.str494 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [3 x i8] c">=\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [2 x i8] c">\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [1 x i8] c"&"
@.str499 = private unnamed_addr constant [1 x i8] c"&"
@.str500 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [3 x i8] c"&&\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [1 x i8] c"="
@.str503 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [3 x i8] c"&=\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [2 x i8] c"&\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [1 x i8] c"|"
@.str508 = private unnamed_addr constant [1 x i8] c"|"
@.str509 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [3 x i8] c"||\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [1 x i8] c"="
@.str512 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [3 x i8] c"|=\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [2 x i8] c"|\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [1 x i8] c"^"
@.str517 = private unnamed_addr constant [1 x i8] c"="
@.str518 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [3 x i8] c"^=\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [2 x i8] c"^\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [1 x i8] c"~"
@.str523 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [2 x i8] c"~\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [1 x i8] c"#"
@.str526 = private unnamed_addr constant [1 x i8] c"!"
@.str527 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [2 x i8] c"#\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [1 x i8] c"."
@.str530 = private unnamed_addr constant [1 x i8] c"."
@.str531 = private unnamed_addr constant [1 x i8] c"."
@.str532 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [4 x i8] c"...\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [1 x i8] c"="
@.str535 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [4 x i8] c"..=\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [3 x i8] c"..\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [2 x i8] c".\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [1 x i8] c"\22"
@.str542 = private unnamed_addr constant [1 x i8] c"\22"
@.str543 = private unnamed_addr constant [1 x i8] c"'"
@.str544 = private unnamed_addr constant [1 x i8] c"'"
@.str545 = private unnamed_addr constant [1 x i8] c"r"
@.str546 = private unnamed_addr constant [1 x i8] c"\22"
@.str547 = private unnamed_addr constant [1 x i8] c"\5c"
@.str548 = private unnamed_addr constant [1 x i8] c"\22"
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

@g_lex_error_count = global i64 0

define i64 @get_lex_error_count(
) {
  %1 = load i64, i64* @g_lex_error_count
  ret i64 %1
}

define internal i1 @is_keyword(
%nyx_string* %word.param) {
  %word.ptr = alloca %nyx_string*
  store %nyx_string* %word.param, %nyx_string** %word.ptr
  %2 = alloca i1
  store i1 true, i1* %2
  %3 = alloca i1
  store i1 true, i1* %3
  %4 = alloca i1
  store i1 true, i1* %4
  %5 = alloca i1
  store i1 true, i1* %5
  %6 = alloca i1
  store i1 true, i1* %6
  %7 = alloca i1
  store i1 true, i1* %7
  %8 = alloca i1
  store i1 true, i1* %8
  %9 = alloca i1
  store i1 true, i1* %9
  %10 = alloca i1
  store i1 true, i1* %10
  %11 = alloca i1
  store i1 true, i1* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = alloca i1
  store i1 true, i1* %26
  %27 = alloca i1
  store i1 true, i1* %27
  %28 = alloca i1
  store i1 true, i1* %28
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = alloca i1
  store i1 true, i1* %33
  %34 = alloca i1
  store i1 true, i1* %34
  %35 = alloca i1
  store i1 true, i1* %35
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = alloca i1
  store i1 true, i1* %38
  %39 = alloca i1
  store i1 true, i1* %39
  %40 = alloca i1
  store i1 true, i1* %40
  %41 = alloca i1
  store i1 true, i1* %41
  %42 = alloca i1
  store i1 true, i1* %42
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = alloca i1
  store i1 true, i1* %44
  %45 = load %nyx_string*, %nyx_string** %word.ptr
  %46 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %46, i64 3)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  br i1 %48, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %49 = load %nyx_string*, %nyx_string** %word.ptr
  %50 = getelementptr [4 x i8], [4 x i8]* @.str1, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %50, i64 3)
  %52 = call i1 @nyx_string_equals(%nyx_string* %49, %nyx_string* %51)
  store i1 %52, i1* %44
  br label %sc_or_end1
sc_or_end1:
  %53 = load i1, i1* %44
  br i1 %53, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %54 = load %nyx_string*, %nyx_string** %word.ptr
  %55 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %55, i64 5)
  %57 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %56)
  store i1 %57, i1* %43
  br label %sc_or_end3
sc_or_end3:
  %58 = load i1, i1* %43
  br i1 %58, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %59 = load %nyx_string*, %nyx_string** %word.ptr
  %60 = getelementptr [3 x i8], [3 x i8]* @.str3, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %60, i64 2)
  %62 = call i1 @nyx_string_equals(%nyx_string* %59, %nyx_string* %61)
  store i1 %62, i1* %42
  br label %sc_or_end5
sc_or_end5:
  %63 = load i1, i1* %42
  br i1 %63, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %64 = load %nyx_string*, %nyx_string** %word.ptr
  %65 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %65, i64 6)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  store i1 %67, i1* %41
  br label %sc_or_end7
sc_or_end7:
  %68 = load i1, i1* %41
  br i1 %68, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %69 = load %nyx_string*, %nyx_string** %word.ptr
  %70 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %70, i64 2)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  store i1 %72, i1* %40
  br label %sc_or_end9
sc_or_end9:
  %73 = load i1, i1* %40
  br i1 %73, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %74 = load %nyx_string*, %nyx_string** %word.ptr
  %75 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %75, i64 4)
  %77 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %76)
  store i1 %77, i1* %39
  br label %sc_or_end11
sc_or_end11:
  %78 = load i1, i1* %39
  br i1 %78, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %79 = load %nyx_string*, %nyx_string** %word.ptr
  %80 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %80, i64 5)
  %82 = call i1 @nyx_string_equals(%nyx_string* %79, %nyx_string* %81)
  store i1 %82, i1* %38
  br label %sc_or_end13
sc_or_end13:
  %83 = load i1, i1* %38
  br i1 %83, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %84 = load %nyx_string*, %nyx_string** %word.ptr
  %85 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %85, i64 3)
  %87 = call i1 @nyx_string_equals(%nyx_string* %84, %nyx_string* %86)
  store i1 %87, i1* %37
  br label %sc_or_end15
sc_or_end15:
  %88 = load i1, i1* %37
  br i1 %88, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %89 = load %nyx_string*, %nyx_string** %word.ptr
  %90 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %90, i64 2)
  %92 = call i1 @nyx_string_equals(%nyx_string* %89, %nyx_string* %91)
  store i1 %92, i1* %36
  br label %sc_or_end17
sc_or_end17:
  %93 = load i1, i1* %36
  br i1 %93, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %94 = load %nyx_string*, %nyx_string** %word.ptr
  %95 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %95, i64 5)
  %97 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %96)
  store i1 %97, i1* %35
  br label %sc_or_end19
sc_or_end19:
  %98 = load i1, i1* %35
  br i1 %98, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %99 = load %nyx_string*, %nyx_string** %word.ptr
  %100 = getelementptr [9 x i8], [9 x i8]* @.str11, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %100, i64 8)
  %102 = call i1 @nyx_string_equals(%nyx_string* %99, %nyx_string* %101)
  store i1 %102, i1* %34
  br label %sc_or_end21
sc_or_end21:
  %103 = load i1, i1* %34
  br i1 %103, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %104 = load %nyx_string*, %nyx_string** %word.ptr
  %105 = getelementptr [7 x i8], [7 x i8]* @.str12, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %105, i64 6)
  %107 = call i1 @nyx_string_equals(%nyx_string* %104, %nyx_string* %106)
  store i1 %107, i1* %33
  br label %sc_or_end23
sc_or_end23:
  %108 = load i1, i1* %33
  br i1 %108, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %109 = load %nyx_string*, %nyx_string** %word.ptr
  %110 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %110, i64 4)
  %112 = call i1 @nyx_string_equals(%nyx_string* %109, %nyx_string* %111)
  store i1 %112, i1* %32
  br label %sc_or_end25
sc_or_end25:
  %113 = load i1, i1* %32
  br i1 %113, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %114 = load %nyx_string*, %nyx_string** %word.ptr
  %115 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %115, i64 5)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  store i1 %117, i1* %31
  br label %sc_or_end27
sc_or_end27:
  %118 = load i1, i1* %31
  br i1 %118, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %119 = load %nyx_string*, %nyx_string** %word.ptr
  %120 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %120, i64 6)
  %122 = call i1 @nyx_string_equals(%nyx_string* %119, %nyx_string* %121)
  store i1 %122, i1* %30
  br label %sc_or_end29
sc_or_end29:
  %123 = load i1, i1* %30
  br i1 %123, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %124 = load %nyx_string*, %nyx_string** %word.ptr
  %125 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %125, i64 6)
  %127 = call i1 @nyx_string_equals(%nyx_string* %124, %nyx_string* %126)
  store i1 %127, i1* %29
  br label %sc_or_end31
sc_or_end31:
  %128 = load i1, i1* %29
  br i1 %128, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %129 = load %nyx_string*, %nyx_string** %word.ptr
  %130 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %130, i64 4)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  store i1 %132, i1* %28
  br label %sc_or_end33
sc_or_end33:
  %133 = load i1, i1* %28
  br i1 %133, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %134 = load %nyx_string*, %nyx_string** %word.ptr
  %135 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %135, i64 4)
  %137 = call i1 @nyx_string_equals(%nyx_string* %134, %nyx_string* %136)
  store i1 %137, i1* %27
  br label %sc_or_end35
sc_or_end35:
  %138 = load i1, i1* %27
  br i1 %138, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %139 = load %nyx_string*, %nyx_string** %word.ptr
  %140 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %140, i64 5)
  %142 = call i1 @nyx_string_equals(%nyx_string* %139, %nyx_string* %141)
  store i1 %142, i1* %26
  br label %sc_or_end37
sc_or_end37:
  %143 = load i1, i1* %26
  br i1 %143, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %144 = load %nyx_string*, %nyx_string** %word.ptr
  %145 = getelementptr [4 x i8], [4 x i8]* @.str20, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %145, i64 3)
  %147 = call i1 @nyx_string_equals(%nyx_string* %144, %nyx_string* %146)
  store i1 %147, i1* %25
  br label %sc_or_end39
sc_or_end39:
  %148 = load i1, i1* %25
  br i1 %148, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %149 = load %nyx_string*, %nyx_string** %word.ptr
  %150 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %150, i64 2)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  store i1 %152, i1* %24
  br label %sc_or_end41
sc_or_end41:
  %153 = load i1, i1* %24
  br i1 %153, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %154 = load %nyx_string*, %nyx_string** %word.ptr
  %155 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %155, i64 3)
  %157 = call i1 @nyx_string_equals(%nyx_string* %154, %nyx_string* %156)
  store i1 %157, i1* %23
  br label %sc_or_end43
sc_or_end43:
  %158 = load i1, i1* %23
  br i1 %158, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %159 = load %nyx_string*, %nyx_string** %word.ptr
  %160 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %160, i64 4)
  %162 = call i1 @nyx_string_equals(%nyx_string* %159, %nyx_string* %161)
  store i1 %162, i1* %22
  br label %sc_or_end45
sc_or_end45:
  %163 = load i1, i1* %22
  br i1 %163, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %164 = load %nyx_string*, %nyx_string** %word.ptr
  %165 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %165, i64 5)
  %167 = call i1 @nyx_string_equals(%nyx_string* %164, %nyx_string* %166)
  store i1 %167, i1* %21
  br label %sc_or_end47
sc_or_end47:
  %168 = load i1, i1* %21
  br i1 %168, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %169 = load %nyx_string*, %nyx_string** %word.ptr
  %170 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %170, i64 4)
  %172 = call i1 @nyx_string_equals(%nyx_string* %169, %nyx_string* %171)
  store i1 %172, i1* %20
  br label %sc_or_end49
sc_or_end49:
  %173 = load i1, i1* %20
  br i1 %173, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %174 = load %nyx_string*, %nyx_string** %word.ptr
  %175 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %175, i64 6)
  %177 = call i1 @nyx_string_equals(%nyx_string* %174, %nyx_string* %176)
  store i1 %177, i1* %19
  br label %sc_or_end51
sc_or_end51:
  %178 = load i1, i1* %19
  br i1 %178, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %179 = load %nyx_string*, %nyx_string** %word.ptr
  %180 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %180, i64 6)
  %182 = call i1 @nyx_string_equals(%nyx_string* %179, %nyx_string* %181)
  store i1 %182, i1* %18
  br label %sc_or_end53
sc_or_end53:
  %183 = load i1, i1* %18
  br i1 %183, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %184 = load %nyx_string*, %nyx_string** %word.ptr
  %185 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %185, i64 2)
  %187 = call i1 @nyx_string_equals(%nyx_string* %184, %nyx_string* %186)
  store i1 %187, i1* %17
  br label %sc_or_end55
sc_or_end55:
  %188 = load i1, i1* %17
  br i1 %188, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %189 = load %nyx_string*, %nyx_string** %word.ptr
  %190 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %190, i64 6)
  %192 = call i1 @nyx_string_equals(%nyx_string* %189, %nyx_string* %191)
  store i1 %192, i1* %16
  br label %sc_or_end57
sc_or_end57:
  %193 = load i1, i1* %16
  br i1 %193, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %194 = load %nyx_string*, %nyx_string** %word.ptr
  %195 = getelementptr [7 x i8], [7 x i8]* @.str30, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %195, i64 6)
  %197 = call i1 @nyx_string_equals(%nyx_string* %194, %nyx_string* %196)
  store i1 %197, i1* %15
  br label %sc_or_end59
sc_or_end59:
  %198 = load i1, i1* %15
  br i1 %198, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %199 = load %nyx_string*, %nyx_string** %word.ptr
  %200 = getelementptr [7 x i8], [7 x i8]* @.str31, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %200, i64 6)
  %202 = call i1 @nyx_string_equals(%nyx_string* %199, %nyx_string* %201)
  store i1 %202, i1* %14
  br label %sc_or_end61
sc_or_end61:
  %203 = load i1, i1* %14
  br i1 %203, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %204 = load %nyx_string*, %nyx_string** %word.ptr
  %205 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %205, i64 7)
  %207 = call i1 @nyx_string_equals(%nyx_string* %204, %nyx_string* %206)
  store i1 %207, i1* %13
  br label %sc_or_end63
sc_or_end63:
  %208 = load i1, i1* %13
  br i1 %208, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %209 = load %nyx_string*, %nyx_string** %word.ptr
  %210 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %210, i64 3)
  %212 = call i1 @nyx_string_equals(%nyx_string* %209, %nyx_string* %211)
  store i1 %212, i1* %12
  br label %sc_or_end65
sc_or_end65:
  %213 = load i1, i1* %12
  br i1 %213, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %214 = load %nyx_string*, %nyx_string** %word.ptr
  %215 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %215, i64 3)
  %217 = call i1 @nyx_string_equals(%nyx_string* %214, %nyx_string* %216)
  store i1 %217, i1* %11
  br label %sc_or_end67
sc_or_end67:
  %218 = load i1, i1* %11
  br i1 %218, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %219 = load %nyx_string*, %nyx_string** %word.ptr
  %220 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %220, i64 3)
  %222 = call i1 @nyx_string_equals(%nyx_string* %219, %nyx_string* %221)
  store i1 %222, i1* %10
  br label %sc_or_end69
sc_or_end69:
  %223 = load i1, i1* %10
  br i1 %223, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %224 = load %nyx_string*, %nyx_string** %word.ptr
  %225 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %225, i64 6)
  %227 = call i1 @nyx_string_equals(%nyx_string* %224, %nyx_string* %226)
  store i1 %227, i1* %9
  br label %sc_or_end71
sc_or_end71:
  %228 = load i1, i1* %9
  br i1 %228, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %229 = load %nyx_string*, %nyx_string** %word.ptr
  %230 = getelementptr [6 x i8], [6 x i8]* @.str37, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %230, i64 5)
  %232 = call i1 @nyx_string_equals(%nyx_string* %229, %nyx_string* %231)
  store i1 %232, i1* %8
  br label %sc_or_end73
sc_or_end73:
  %233 = load i1, i1* %8
  br i1 %233, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %234 = load %nyx_string*, %nyx_string** %word.ptr
  %235 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %235, i64 5)
  %237 = call i1 @nyx_string_equals(%nyx_string* %234, %nyx_string* %236)
  store i1 %237, i1* %7
  br label %sc_or_end75
sc_or_end75:
  %238 = load i1, i1* %7
  br i1 %238, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %239 = load %nyx_string*, %nyx_string** %word.ptr
  %240 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %240, i64 3)
  %242 = call i1 @nyx_string_equals(%nyx_string* %239, %nyx_string* %241)
  store i1 %242, i1* %6
  br label %sc_or_end77
sc_or_end77:
  %243 = load i1, i1* %6
  br i1 %243, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %244 = load %nyx_string*, %nyx_string** %word.ptr
  %245 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %245, i64 5)
  %247 = call i1 @nyx_string_equals(%nyx_string* %244, %nyx_string* %246)
  store i1 %247, i1* %5
  br label %sc_or_end79
sc_or_end79:
  %248 = load i1, i1* %5
  br i1 %248, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %249 = load %nyx_string*, %nyx_string** %word.ptr
  %250 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %250, i64 5)
  %252 = call i1 @nyx_string_equals(%nyx_string* %249, %nyx_string* %251)
  store i1 %252, i1* %4
  br label %sc_or_end81
sc_or_end81:
  %253 = load i1, i1* %4
  br i1 %253, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %254 = load %nyx_string*, %nyx_string** %word.ptr
  %255 = getelementptr [6 x i8], [6 x i8]* @.str42, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %255, i64 5)
  %257 = call i1 @nyx_string_equals(%nyx_string* %254, %nyx_string* %256)
  store i1 %257, i1* %3
  br label %sc_or_end83
sc_or_end83:
  %258 = load i1, i1* %3
  br i1 %258, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %259 = load %nyx_string*, %nyx_string** %word.ptr
  %260 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %260, i64 5)
  %262 = call i1 @nyx_string_equals(%nyx_string* %259, %nyx_string* %261)
  store i1 %262, i1* %2
  br label %sc_or_end85
sc_or_end85:
  %263 = load i1, i1* %2
  ret i1 %263
}

define internal %nyx_string* @keyword_to_type(
%nyx_string* %word.param) {
  %word.ptr = alloca %nyx_string*
  store %nyx_string* %word.param, %nyx_string** %word.ptr
  %264 = load %nyx_string*, %nyx_string** %word.ptr
  %265 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %265, i64 3)
  %267 = call i1 @nyx_string_equals(%nyx_string* %264, %nyx_string* %266)
  br i1 %267, label %then86, label %else87
then86:
  %268 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %268, i64 3)
  ret %nyx_string* %269
else87:
  br label %merge88
merge88:
  %270 = load %nyx_string*, %nyx_string** %word.ptr
  %271 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %271, i64 3)
  %273 = call i1 @nyx_string_equals(%nyx_string* %270, %nyx_string* %272)
  br i1 %273, label %then89, label %else90
then89:
  %274 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %274, i64 3)
  ret %nyx_string* %275
else90:
  br label %merge91
merge91:
  %276 = load %nyx_string*, %nyx_string** %word.ptr
  %277 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %277, i64 5)
  %279 = call i1 @nyx_string_equals(%nyx_string* %276, %nyx_string* %278)
  br i1 %279, label %then92, label %else93
then92:
  %280 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %280, i64 5)
  ret %nyx_string* %281
else93:
  br label %merge94
merge94:
  %282 = load %nyx_string*, %nyx_string** %word.ptr
  %283 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %283, i64 2)
  %285 = call i1 @nyx_string_equals(%nyx_string* %282, %nyx_string* %284)
  br i1 %285, label %then95, label %else96
then95:
  %286 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %286, i64 2)
  ret %nyx_string* %287
else96:
  br label %merge97
merge97:
  %288 = load %nyx_string*, %nyx_string** %word.ptr
  %289 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %289, i64 6)
  %291 = call i1 @nyx_string_equals(%nyx_string* %288, %nyx_string* %290)
  br i1 %291, label %then98, label %else99
then98:
  %292 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %292, i64 6)
  ret %nyx_string* %293
else99:
  br label %merge100
merge100:
  %294 = load %nyx_string*, %nyx_string** %word.ptr
  %295 = getelementptr [3 x i8], [3 x i8]* @.str54, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %295, i64 2)
  %297 = call i1 @nyx_string_equals(%nyx_string* %294, %nyx_string* %296)
  br i1 %297, label %then101, label %else102
then101:
  %298 = getelementptr [3 x i8], [3 x i8]* @.str55, i32 0, i32 0
  %299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %298, i64 2)
  ret %nyx_string* %299
else102:
  br label %merge103
merge103:
  %300 = load %nyx_string*, %nyx_string** %word.ptr
  %301 = getelementptr [5 x i8], [5 x i8]* @.str56, i32 0, i32 0
  %302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %301, i64 4)
  %303 = call i1 @nyx_string_equals(%nyx_string* %300, %nyx_string* %302)
  br i1 %303, label %then104, label %else105
then104:
  %304 = getelementptr [5 x i8], [5 x i8]* @.str57, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %304, i64 4)
  ret %nyx_string* %305
else105:
  br label %merge106
merge106:
  %306 = load %nyx_string*, %nyx_string** %word.ptr
  %307 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %307, i64 5)
  %309 = call i1 @nyx_string_equals(%nyx_string* %306, %nyx_string* %308)
  br i1 %309, label %then107, label %else108
then107:
  %310 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %310, i64 5)
  ret %nyx_string* %311
else108:
  br label %merge109
merge109:
  %312 = load %nyx_string*, %nyx_string** %word.ptr
  %313 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %313, i64 3)
  %315 = call i1 @nyx_string_equals(%nyx_string* %312, %nyx_string* %314)
  br i1 %315, label %then110, label %else111
then110:
  %316 = getelementptr [4 x i8], [4 x i8]* @.str61, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %316, i64 3)
  ret %nyx_string* %317
else111:
  br label %merge112
merge112:
  %318 = load %nyx_string*, %nyx_string** %word.ptr
  %319 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %319, i64 2)
  %321 = call i1 @nyx_string_equals(%nyx_string* %318, %nyx_string* %320)
  br i1 %321, label %then113, label %else114
then113:
  %322 = getelementptr [3 x i8], [3 x i8]* @.str63, i32 0, i32 0
  %323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %322, i64 2)
  ret %nyx_string* %323
else114:
  br label %merge115
merge115:
  %324 = load %nyx_string*, %nyx_string** %word.ptr
  %325 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %325, i64 5)
  %327 = call i1 @nyx_string_equals(%nyx_string* %324, %nyx_string* %326)
  br i1 %327, label %then116, label %else117
then116:
  %328 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %328, i64 5)
  ret %nyx_string* %329
else117:
  br label %merge118
merge118:
  %330 = load %nyx_string*, %nyx_string** %word.ptr
  %331 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %331, i64 8)
  %333 = call i1 @nyx_string_equals(%nyx_string* %330, %nyx_string* %332)
  br i1 %333, label %then119, label %else120
then119:
  %334 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %334, i64 8)
  ret %nyx_string* %335
else120:
  br label %merge121
merge121:
  %336 = load %nyx_string*, %nyx_string** %word.ptr
  %337 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %337, i64 6)
  %339 = call i1 @nyx_string_equals(%nyx_string* %336, %nyx_string* %338)
  br i1 %339, label %then122, label %else123
then122:
  %340 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %340, i64 6)
  ret %nyx_string* %341
else123:
  br label %merge124
merge124:
  %342 = load %nyx_string*, %nyx_string** %word.ptr
  %343 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %343, i64 4)
  %345 = call i1 @nyx_string_equals(%nyx_string* %342, %nyx_string* %344)
  br i1 %345, label %then125, label %else126
then125:
  %346 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %346, i64 4)
  ret %nyx_string* %347
else126:
  br label %merge127
merge127:
  %348 = load %nyx_string*, %nyx_string** %word.ptr
  %349 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %349, i64 5)
  %351 = call i1 @nyx_string_equals(%nyx_string* %348, %nyx_string* %350)
  br i1 %351, label %then128, label %else129
then128:
  %352 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %352, i64 5)
  ret %nyx_string* %353
else129:
  br label %merge130
merge130:
  %354 = load %nyx_string*, %nyx_string** %word.ptr
  %355 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %355, i64 6)
  %357 = call i1 @nyx_string_equals(%nyx_string* %354, %nyx_string* %356)
  br i1 %357, label %then131, label %else132
then131:
  %358 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %358, i64 6)
  ret %nyx_string* %359
else132:
  br label %merge133
merge133:
  %360 = load %nyx_string*, %nyx_string** %word.ptr
  %361 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %361, i64 6)
  %363 = call i1 @nyx_string_equals(%nyx_string* %360, %nyx_string* %362)
  br i1 %363, label %then134, label %else135
then134:
  %364 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %364, i64 6)
  ret %nyx_string* %365
else135:
  br label %merge136
merge136:
  %366 = load %nyx_string*, %nyx_string** %word.ptr
  %367 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %367, i64 4)
  %369 = call i1 @nyx_string_equals(%nyx_string* %366, %nyx_string* %368)
  br i1 %369, label %then137, label %else138
then137:
  %370 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %370, i64 4)
  ret %nyx_string* %371
else138:
  br label %merge139
merge139:
  %372 = load %nyx_string*, %nyx_string** %word.ptr
  %373 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %373, i64 4)
  %375 = call i1 @nyx_string_equals(%nyx_string* %372, %nyx_string* %374)
  br i1 %375, label %then140, label %else141
then140:
  %376 = getelementptr [5 x i8], [5 x i8]* @.str81, i32 0, i32 0
  %377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %376, i64 4)
  ret %nyx_string* %377
else141:
  br label %merge142
merge142:
  %378 = load %nyx_string*, %nyx_string** %word.ptr
  %379 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %379, i64 5)
  %381 = call i1 @nyx_string_equals(%nyx_string* %378, %nyx_string* %380)
  br i1 %381, label %then143, label %else144
then143:
  %382 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %382, i64 5)
  ret %nyx_string* %383
else144:
  br label %merge145
merge145:
  %384 = load %nyx_string*, %nyx_string** %word.ptr
  %385 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %385, i64 3)
  %387 = call i1 @nyx_string_equals(%nyx_string* %384, %nyx_string* %386)
  br i1 %387, label %then146, label %else147
then146:
  %388 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %388, i64 3)
  ret %nyx_string* %389
else147:
  br label %merge148
merge148:
  %390 = load %nyx_string*, %nyx_string** %word.ptr
  %391 = getelementptr [3 x i8], [3 x i8]* @.str86, i32 0, i32 0
  %392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %391, i64 2)
  %393 = call i1 @nyx_string_equals(%nyx_string* %390, %nyx_string* %392)
  br i1 %393, label %then149, label %else150
then149:
  %394 = getelementptr [3 x i8], [3 x i8]* @.str87, i32 0, i32 0
  %395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %394, i64 2)
  ret %nyx_string* %395
else150:
  br label %merge151
merge151:
  %396 = load %nyx_string*, %nyx_string** %word.ptr
  %397 = getelementptr [4 x i8], [4 x i8]* @.str88, i32 0, i32 0
  %398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %397, i64 3)
  %399 = call i1 @nyx_string_equals(%nyx_string* %396, %nyx_string* %398)
  br i1 %399, label %then152, label %else153
then152:
  %400 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %400, i64 3)
  ret %nyx_string* %401
else153:
  br label %merge154
merge154:
  %402 = load %nyx_string*, %nyx_string** %word.ptr
  %403 = getelementptr [5 x i8], [5 x i8]* @.str90, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %403, i64 4)
  %405 = call i1 @nyx_string_equals(%nyx_string* %402, %nyx_string* %404)
  br i1 %405, label %then155, label %else156
then155:
  %406 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %406, i64 4)
  ret %nyx_string* %407
else156:
  br label %merge157
merge157:
  %408 = load %nyx_string*, %nyx_string** %word.ptr
  %409 = getelementptr [6 x i8], [6 x i8]* @.str92, i32 0, i32 0
  %410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %409, i64 5)
  %411 = call i1 @nyx_string_equals(%nyx_string* %408, %nyx_string* %410)
  br i1 %411, label %then158, label %else159
then158:
  %412 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %412, i64 5)
  ret %nyx_string* %413
else159:
  br label %merge160
merge160:
  %414 = load %nyx_string*, %nyx_string** %word.ptr
  %415 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %415, i64 4)
  %417 = call i1 @nyx_string_equals(%nyx_string* %414, %nyx_string* %416)
  br i1 %417, label %then161, label %else162
then161:
  %418 = getelementptr [5 x i8], [5 x i8]* @.str95, i32 0, i32 0
  %419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %418, i64 4)
  ret %nyx_string* %419
else162:
  br label %merge163
merge163:
  %420 = load %nyx_string*, %nyx_string** %word.ptr
  %421 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %421, i64 6)
  %423 = call i1 @nyx_string_equals(%nyx_string* %420, %nyx_string* %422)
  br i1 %423, label %then164, label %else165
then164:
  %424 = getelementptr [7 x i8], [7 x i8]* @.str97, i32 0, i32 0
  %425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %424, i64 6)
  ret %nyx_string* %425
else165:
  br label %merge166
merge166:
  %426 = load %nyx_string*, %nyx_string** %word.ptr
  %427 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %427, i64 6)
  %429 = call i1 @nyx_string_equals(%nyx_string* %426, %nyx_string* %428)
  br i1 %429, label %then167, label %else168
then167:
  %430 = getelementptr [7 x i8], [7 x i8]* @.str99, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %430, i64 6)
  ret %nyx_string* %431
else168:
  br label %merge169
merge169:
  %432 = load %nyx_string*, %nyx_string** %word.ptr
  %433 = getelementptr [3 x i8], [3 x i8]* @.str100, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %433, i64 2)
  %435 = call i1 @nyx_string_equals(%nyx_string* %432, %nyx_string* %434)
  br i1 %435, label %then170, label %else171
then170:
  %436 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %436, i64 2)
  ret %nyx_string* %437
else171:
  br label %merge172
merge172:
  %438 = load %nyx_string*, %nyx_string** %word.ptr
  %439 = getelementptr [7 x i8], [7 x i8]* @.str102, i32 0, i32 0
  %440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %439, i64 6)
  %441 = call i1 @nyx_string_equals(%nyx_string* %438, %nyx_string* %440)
  br i1 %441, label %then173, label %else174
then173:
  %442 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %442, i64 6)
  ret %nyx_string* %443
else174:
  br label %merge175
merge175:
  %444 = load %nyx_string*, %nyx_string** %word.ptr
  %445 = getelementptr [7 x i8], [7 x i8]* @.str104, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %445, i64 6)
  %447 = call i1 @nyx_string_equals(%nyx_string* %444, %nyx_string* %446)
  br i1 %447, label %then176, label %else177
then176:
  %448 = getelementptr [7 x i8], [7 x i8]* @.str105, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %448, i64 6)
  ret %nyx_string* %449
else177:
  br label %merge178
merge178:
  %450 = load %nyx_string*, %nyx_string** %word.ptr
  %451 = getelementptr [7 x i8], [7 x i8]* @.str106, i32 0, i32 0
  %452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %451, i64 6)
  %453 = call i1 @nyx_string_equals(%nyx_string* %450, %nyx_string* %452)
  br i1 %453, label %then179, label %else180
then179:
  %454 = getelementptr [7 x i8], [7 x i8]* @.str107, i32 0, i32 0
  %455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %454, i64 6)
  ret %nyx_string* %455
else180:
  br label %merge181
merge181:
  %456 = load %nyx_string*, %nyx_string** %word.ptr
  %457 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %457, i64 7)
  %459 = call i1 @nyx_string_equals(%nyx_string* %456, %nyx_string* %458)
  br i1 %459, label %then182, label %else183
then182:
  %460 = getelementptr [8 x i8], [8 x i8]* @.str109, i32 0, i32 0
  %461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %460, i64 7)
  ret %nyx_string* %461
else183:
  br label %merge184
merge184:
  %462 = load %nyx_string*, %nyx_string** %word.ptr
  %463 = getelementptr [4 x i8], [4 x i8]* @.str110, i32 0, i32 0
  %464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %463, i64 3)
  %465 = call i1 @nyx_string_equals(%nyx_string* %462, %nyx_string* %464)
  br i1 %465, label %then185, label %else186
then185:
  %466 = getelementptr [4 x i8], [4 x i8]* @.str111, i32 0, i32 0
  %467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %466, i64 3)
  ret %nyx_string* %467
else186:
  br label %merge187
merge187:
  %468 = load %nyx_string*, %nyx_string** %word.ptr
  %469 = getelementptr [4 x i8], [4 x i8]* @.str112, i32 0, i32 0
  %470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %469, i64 3)
  %471 = call i1 @nyx_string_equals(%nyx_string* %468, %nyx_string* %470)
  br i1 %471, label %then188, label %else189
then188:
  %472 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %472, i64 3)
  ret %nyx_string* %473
else189:
  br label %merge190
merge190:
  %474 = load %nyx_string*, %nyx_string** %word.ptr
  %475 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %475, i64 3)
  %477 = call i1 @nyx_string_equals(%nyx_string* %474, %nyx_string* %476)
  br i1 %477, label %then191, label %else192
then191:
  %478 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %478, i64 3)
  ret %nyx_string* %479
else192:
  br label %merge193
merge193:
  %480 = load %nyx_string*, %nyx_string** %word.ptr
  %481 = getelementptr [7 x i8], [7 x i8]* @.str116, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %481, i64 6)
  %483 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %482)
  br i1 %483, label %then194, label %else195
then194:
  %484 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %484, i64 6)
  ret %nyx_string* %485
else195:
  br label %merge196
merge196:
  %486 = load %nyx_string*, %nyx_string** %word.ptr
  %487 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %487, i64 5)
  %489 = call i1 @nyx_string_equals(%nyx_string* %486, %nyx_string* %488)
  br i1 %489, label %then197, label %else198
then197:
  %490 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %490, i64 5)
  ret %nyx_string* %491
else198:
  br label %merge199
merge199:
  %492 = load %nyx_string*, %nyx_string** %word.ptr
  %493 = getelementptr [6 x i8], [6 x i8]* @.str120, i32 0, i32 0
  %494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %493, i64 5)
  %495 = call i1 @nyx_string_equals(%nyx_string* %492, %nyx_string* %494)
  br i1 %495, label %then200, label %else201
then200:
  %496 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %496, i64 5)
  ret %nyx_string* %497
else201:
  br label %merge202
merge202:
  %498 = load %nyx_string*, %nyx_string** %word.ptr
  %499 = getelementptr [4 x i8], [4 x i8]* @.str122, i32 0, i32 0
  %500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %499, i64 3)
  %501 = call i1 @nyx_string_equals(%nyx_string* %498, %nyx_string* %500)
  br i1 %501, label %then203, label %else204
then203:
  %502 = getelementptr [4 x i8], [4 x i8]* @.str123, i32 0, i32 0
  %503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %502, i64 3)
  ret %nyx_string* %503
else204:
  br label %merge205
merge205:
  %504 = load %nyx_string*, %nyx_string** %word.ptr
  %505 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %505, i64 5)
  %507 = call i1 @nyx_string_equals(%nyx_string* %504, %nyx_string* %506)
  br i1 %507, label %then206, label %else207
then206:
  %508 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %508, i64 5)
  ret %nyx_string* %509
else207:
  br label %merge208
merge208:
  %510 = load %nyx_string*, %nyx_string** %word.ptr
  %511 = getelementptr [6 x i8], [6 x i8]* @.str126, i32 0, i32 0
  %512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %511, i64 5)
  %513 = call i1 @nyx_string_equals(%nyx_string* %510, %nyx_string* %512)
  br i1 %513, label %then209, label %else210
then209:
  %514 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %514, i64 5)
  ret %nyx_string* %515
else210:
  br label %merge211
merge211:
  %516 = load %nyx_string*, %nyx_string** %word.ptr
  %517 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %517, i64 5)
  %519 = call i1 @nyx_string_equals(%nyx_string* %516, %nyx_string* %518)
  br i1 %519, label %then212, label %else213
then212:
  %520 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %520, i64 5)
  ret %nyx_string* %521
else213:
  br label %merge214
merge214:
  %522 = load %nyx_string*, %nyx_string** %word.ptr
  %523 = getelementptr [6 x i8], [6 x i8]* @.str130, i32 0, i32 0
  %524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %523, i64 5)
  %525 = call i1 @nyx_string_equals(%nyx_string* %522, %nyx_string* %524)
  br i1 %525, label %then215, label %else216
then215:
  %526 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %526, i64 5)
  ret %nyx_string* %527
else216:
  br label %merge217
merge217:
  %528 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %528, i64 7)
  ret %nyx_string* %529
}

define internal i64 @lex_hex_val(
i8 %c.param) {
  %c.ptr = alloca i8
  store i8 %c.param, i8* %c.ptr
  %530 = alloca i1
  store i1 false, i1* %530
  %531 = load i8, i8* %c.ptr
  %532 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %533 = load i8, i8* %532
  %534 = zext i8 %533 to i64
  %535 = zext i8 %531 to i64
  %536 = icmp sge i64 %535, %534
  br i1 %536, label %sc_and_rhs218, label %sc_and_end219
sc_and_rhs218:
  %537 = load i8, i8* %c.ptr
  %538 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %539 = load i8, i8* %538
  %540 = zext i8 %539 to i64
  %541 = zext i8 %537 to i64
  %542 = icmp sle i64 %541, %540
  store i1 %542, i1* %530
  br label %sc_and_end219
sc_and_end219:
  %543 = load i1, i1* %530
  br i1 %543, label %then220, label %else221
then220:
  %544 = load i8, i8* %c.ptr
  %545 = sext i8 %544 to i64
  %546 = sub i64 %545, 48
  ret i64 %546
else221:
  br label %merge222
merge222:
  %547 = alloca i1
  store i1 false, i1* %547
  %548 = load i8, i8* %c.ptr
  %549 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %550 = load i8, i8* %549
  %551 = zext i8 %550 to i64
  %552 = zext i8 %548 to i64
  %553 = icmp sge i64 %552, %551
  br i1 %553, label %sc_and_rhs223, label %sc_and_end224
sc_and_rhs223:
  %554 = load i8, i8* %c.ptr
  %555 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %556 = load i8, i8* %555
  %557 = zext i8 %556 to i64
  %558 = zext i8 %554 to i64
  %559 = icmp sle i64 %558, %557
  store i1 %559, i1* %547
  br label %sc_and_end224
sc_and_end224:
  %560 = load i1, i1* %547
  br i1 %560, label %then225, label %else226
then225:
  %561 = load i8, i8* %c.ptr
  %562 = sext i8 %561 to i64
  %563 = sub i64 %562, 87
  ret i64 %563
else226:
  br label %merge227
merge227:
  %564 = alloca i1
  store i1 false, i1* %564
  %565 = load i8, i8* %c.ptr
  %566 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %567 = load i8, i8* %566
  %568 = zext i8 %567 to i64
  %569 = zext i8 %565 to i64
  %570 = icmp sge i64 %569, %568
  br i1 %570, label %sc_and_rhs228, label %sc_and_end229
sc_and_rhs228:
  %571 = load i8, i8* %c.ptr
  %572 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %573 = load i8, i8* %572
  %574 = zext i8 %573 to i64
  %575 = zext i8 %571 to i64
  %576 = icmp sle i64 %575, %574
  store i1 %576, i1* %564
  br label %sc_and_end229
sc_and_end229:
  %577 = load i1, i1* %564
  br i1 %577, label %then230, label %else231
then230:
  %578 = load i8, i8* %c.ptr
  %579 = sext i8 %578 to i64
  %580 = sub i64 %579, 55
  ret i64 %580
else231:
  br label %merge232
merge232:
  %581 = sub i64 0, 1
  ret i64 %581
}

define { i64, i8* }* @tokenize(
%nyx_string* %source_code.param) {
  %source_code.ptr = alloca %nyx_string*
  store %nyx_string* %source_code.param, %nyx_string** %source_code.ptr
  %582 = load %nyx_string*, %nyx_string** %source_code.ptr
  %583 = call { i64, i8* }* @nyx_array_new_ptr()
  %584 = call { i64, i8* }* @tokenize_con_avisos(%nyx_string* %582, { i64, i8* }* %583)
  ret { i64, i8* }* %584
}

%SharedEnv_tokenize_con_avisos = type { %nyx_string*, { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, i64, { i64, i8* }*, i64, i1 }
define { i64, i8* }* @tokenize_con_avisos(
%nyx_string* %source_code.param, { i64, i8* }* %avisos.param) {
  %585 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* null, i32 1
  %586 = ptrtoint %SharedEnv_tokenize_con_avisos* %585 to i64
  %587 = call i8* @GC_malloc(i64 %586)
  %588 = bitcast i8* %587 to %SharedEnv_tokenize_con_avisos*
  %589 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 0
  store %nyx_string* %source_code.param, %nyx_string** %589
  %590 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 1
  store { i64, i8* }* %avisos.param, { i64, i8* }** %590
  %591 = load %nyx_string*, %nyx_string** %589
  %592 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 2
  store %nyx_string* %591, %nyx_string** %592
  %593 = load { i64, i8* }*, { i64, i8* }** %590
  %594 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 3
  store { i64, i8* }* %593, { i64, i8* }** %594
  %595 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 4
  store i64 0, i64* %595
  %596 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 5
  store i64 1, i64* %596
  %597 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 6
  store i64 1, i64* %597
  %598 = call { i64, i8* }* @nyx_array_new_ptr()
  %599 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 7
  store { i64, i8* }* %598, { i64, i8* }** %599
  %600 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 8
  store i64 0, i64* %600
  store i64 0, i64* @g_lex_error_count
  %601 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %588, i32 0, i32 9
  store i1 0, i1* %601
  %602 = call i8* @llvm.stacksave()
  br label %while_cond233
while_cond233:
  %603 = load i1, i1* %601
  %604 = xor i1 %603, true
  br i1 %604, label %while_body234, label %while_end235
while_body234:
  call void @llvm.stackrestore(i8* %602)
  %605 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %588)
  br i1 %605, label %then236, label %else237
then236:
  store i1 1, i1* %601
  br label %merge238
else237:
  %606 = call i64 @tokenize_con_avisos__scan_token(%SharedEnv_tokenize_con_avisos* %588)
  br label %merge238
merge238:
  br label %while_cond233
while_end235:
  %607 = getelementptr [4 x i8], [4 x i8]* @.str139, i32 0, i32 0
  %608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %607, i64 3)
  %609 = getelementptr [1 x i8], [1 x i8]* @.str140, i32 0, i32 0
  %610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %609, i64 0)
  %611 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %588, %nyx_string* %608, %nyx_string* %610)
  %612 = load { i64, i8* }*, { i64, i8* }** %599
  ret { i64, i8* }* %612
}

define internal i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = load i64, i64* %5
  %12 = load %nyx_string*, %nyx_string** %3
  %13 = call i64 @nyx_string_byte_length(%nyx_string* %12)
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %then0, label %else1
then0:
  %15 = load %nyx_string*, %nyx_string** %3
  %16 = load i64, i64* %5
  %17 = call i8 @nyx_string_char_at(%nyx_string* %15, i64 %16)
  %18 = zext i8 %17 to i64
  %19 = trunc i64 %18 to i8
  ret i8 %19
else1:
  br label %merge2
merge2:
  %20 = getelementptr [1 x i8], [1 x i8]* @.str141, i32 0, i32 0
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  %23 = trunc i64 %22 to i8
  ret i8 %23
}

define internal i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = load i64, i64* %5
  %12 = add i64 %11, 1
  %13 = alloca i64
  store i64 %12, i64* %13
  %14 = load i64, i64* %13
  %15 = load %nyx_string*, %nyx_string** %3
  %16 = call i64 @nyx_string_byte_length(%nyx_string* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %then0, label %else1
then0:
  %18 = load %nyx_string*, %nyx_string** %3
  %19 = load i64, i64* %13
  %20 = call i8 @nyx_string_char_at(%nyx_string* %18, i64 %19)
  %21 = zext i8 %20 to i64
  %22 = trunc i64 %21 to i8
  ret i8 %22
else1:
  br label %merge2
merge2:
  %23 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = trunc i64 %25 to i8
  ret i8 %26
}

define internal i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %12 = alloca i8
  store i8 %11, i8* %12
  %13 = load i64, i64* %5
  %14 = add i64 %13, 1
  store i64 %14, i64* %5
  %15 = load i8, i8* %12
  %16 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  %19 = zext i8 %15 to i64
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %then0, label %else1
then0:
  %21 = load i64, i64* %6
  %22 = add i64 %21, 1
  store i64 %22, i64* %6
  store i64 1, i64* %7
  br label %merge2
else1:
  %23 = load i64, i64* %7
  %24 = add i64 %23, 1
  store i64 %24, i64* %7
  br label %merge2
merge2:
  %25 = load i8, i8* %12
  ret i8 %25
}

define internal i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = load i64, i64* %5
  %12 = load %nyx_string*, %nyx_string** %3
  %13 = call i64 @nyx_string_byte_length(%nyx_string* %12)
  %14 = icmp sge i64 %11, %13
  ret i1 %14
}

define internal i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %type.param, %nyx_string* %value.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %11
  %12 = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %12
  %13 = getelementptr %Token, %Token* null, i32 1
  %14 = ptrtoint %Token* %13 to i64
  %15 = call i8* @GC_malloc(i64 %14)
  %16 = bitcast i8* %15 to %Token*
  %17 = load %nyx_string*, %nyx_string** %11
  %18 = getelementptr %Token, %Token* %16, i32 0, i32 0
  store %nyx_string* %17, %nyx_string** %18
  %19 = load %nyx_string*, %nyx_string** %12
  %20 = getelementptr %Token, %Token* %16, i32 0, i32 1
  store %nyx_string* %19, %nyx_string** %20
  %21 = load i64, i64* %6
  %22 = getelementptr %Token, %Token* %16, i32 0, i32 2
  store i64 %21, i64* %22
  %23 = load i64, i64* %7
  %24 = getelementptr %Token, %Token* %16, i32 0, i32 3
  store i64 %23, i64* %24
  %25 = load %Token, %Token* %16
  %26 = alloca %Token
  store %Token %25, %Token* %26
  %27 = load { i64, i8* }*, { i64, i8* }** %8
  %28 = load %Token, %Token* %26
  %29 = getelementptr %Token, %Token* null, i32 1
  %30 = ptrtoint %Token* %29 to i64
  %31 = call i8* @GC_malloc(i64 %30)
  %32 = bitcast i8* %31 to %Token*
  store %Token %28, %Token* %32
  %33 = ptrtoint %Token* %32 to i64
  call void @nyx_array_push({ i64, i8* }* %27, i64 %33)
  ret i64 0
}

define internal i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i8
  store i8 %c.param, i8* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = load i8, i8* %11
  %22 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %23 = load i8, i8* %22
  %24 = zext i8 %23 to i64
  %25 = zext i8 %21 to i64
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %27 = load i8, i8* %11
  %28 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = zext i8 %27 to i64
  %32 = icmp eq i64 %31, %30
  store i1 %32, i1* %20
  br label %sc_or_end1
sc_or_end1:
  %33 = load i1, i1* %20
  br i1 %33, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %34 = load i8, i8* %11
  %35 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %36 = load i8, i8* %35
  %37 = zext i8 %36 to i64
  %38 = zext i8 %34 to i64
  %39 = icmp eq i64 %38, %37
  store i1 %39, i1* %19
  br label %sc_or_end3
sc_or_end3:
  %40 = load i1, i1* %19
  br i1 %40, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %41 = load i8, i8* %11
  %42 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %43 = load i8, i8* %42
  %44 = zext i8 %43 to i64
  %45 = zext i8 %41 to i64
  %46 = icmp eq i64 %45, %44
  store i1 %46, i1* %18
  br label %sc_or_end5
sc_or_end5:
  %47 = load i1, i1* %18
  br i1 %47, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %48 = load i8, i8* %11
  %49 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %50 = load i8, i8* %49
  %51 = zext i8 %50 to i64
  %52 = zext i8 %48 to i64
  %53 = icmp eq i64 %52, %51
  store i1 %53, i1* %17
  br label %sc_or_end7
sc_or_end7:
  %54 = load i1, i1* %17
  br i1 %54, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %55 = load i8, i8* %11
  %56 = getelementptr [1 x i8], [1 x i8]* @.str149, i32 0, i32 0
  %57 = load i8, i8* %56
  %58 = zext i8 %57 to i64
  %59 = zext i8 %55 to i64
  %60 = icmp eq i64 %59, %58
  store i1 %60, i1* %16
  br label %sc_or_end9
sc_or_end9:
  %61 = load i1, i1* %16
  br i1 %61, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %62 = load i8, i8* %11
  %63 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %64 = load i8, i8* %63
  %65 = zext i8 %64 to i64
  %66 = zext i8 %62 to i64
  %67 = icmp eq i64 %66, %65
  store i1 %67, i1* %15
  br label %sc_or_end11
sc_or_end11:
  %68 = load i1, i1* %15
  br i1 %68, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %69 = load i8, i8* %11
  %70 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %71 = load i8, i8* %70
  %72 = zext i8 %71 to i64
  %73 = zext i8 %69 to i64
  %74 = icmp eq i64 %73, %72
  store i1 %74, i1* %14
  br label %sc_or_end13
sc_or_end13:
  %75 = load i1, i1* %14
  br i1 %75, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %76 = load i8, i8* %11
  %77 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %78 = load i8, i8* %77
  %79 = zext i8 %78 to i64
  %80 = zext i8 %76 to i64
  %81 = icmp eq i64 %80, %79
  store i1 %81, i1* %13
  br label %sc_or_end15
sc_or_end15:
  %82 = load i1, i1* %13
  br i1 %82, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %83 = load i8, i8* %11
  %84 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %85 = load i8, i8* %84
  %86 = zext i8 %85 to i64
  %87 = zext i8 %83 to i64
  %88 = icmp eq i64 %87, %86
  store i1 %88, i1* %12
  br label %sc_or_end17
sc_or_end17:
  %89 = load i1, i1* %12
  ret i1 %89
}

define internal i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i8
  store i8 %c.param, i8* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = alloca i1
  store i1 true, i1* %26
  %27 = alloca i1
  store i1 true, i1* %27
  %28 = alloca i1
  store i1 true, i1* %28
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = alloca i1
  store i1 true, i1* %33
  %34 = alloca i1
  store i1 true, i1* %34
  %35 = alloca i1
  store i1 true, i1* %35
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = alloca i1
  store i1 true, i1* %38
  %39 = alloca i1
  store i1 true, i1* %39
  %40 = alloca i1
  store i1 true, i1* %40
  %41 = alloca i1
  store i1 true, i1* %41
  %42 = alloca i1
  store i1 true, i1* %42
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = alloca i1
  store i1 true, i1* %44
  %45 = alloca i1
  store i1 true, i1* %45
  %46 = alloca i1
  store i1 true, i1* %46
  %47 = alloca i1
  store i1 true, i1* %47
  %48 = alloca i1
  store i1 true, i1* %48
  %49 = alloca i1
  store i1 true, i1* %49
  %50 = alloca i1
  store i1 true, i1* %50
  %51 = alloca i1
  store i1 true, i1* %51
  %52 = alloca i1
  store i1 true, i1* %52
  %53 = alloca i1
  store i1 true, i1* %53
  %54 = alloca i1
  store i1 true, i1* %54
  %55 = alloca i1
  store i1 true, i1* %55
  %56 = alloca i1
  store i1 true, i1* %56
  %57 = alloca i1
  store i1 true, i1* %57
  %58 = alloca i1
  store i1 true, i1* %58
  %59 = alloca i1
  store i1 true, i1* %59
  %60 = alloca i1
  store i1 true, i1* %60
  %61 = alloca i1
  store i1 true, i1* %61
  %62 = alloca i1
  store i1 true, i1* %62
  %63 = alloca i1
  store i1 true, i1* %63
  %64 = load i8, i8* %11
  %65 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  br i1 %69, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %70 = load i8, i8* %11
  %71 = getelementptr [1 x i8], [1 x i8]* @.str155, i32 0, i32 0
  %72 = load i8, i8* %71
  %73 = zext i8 %72 to i64
  %74 = zext i8 %70 to i64
  %75 = icmp eq i64 %74, %73
  store i1 %75, i1* %63
  br label %sc_or_end1
sc_or_end1:
  %76 = load i1, i1* %63
  br i1 %76, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %77 = load i8, i8* %11
  %78 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %79 = load i8, i8* %78
  %80 = zext i8 %79 to i64
  %81 = zext i8 %77 to i64
  %82 = icmp eq i64 %81, %80
  store i1 %82, i1* %62
  br label %sc_or_end3
sc_or_end3:
  %83 = load i1, i1* %62
  br i1 %83, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %84 = load i8, i8* %11
  %85 = getelementptr [1 x i8], [1 x i8]* @.str157, i32 0, i32 0
  %86 = load i8, i8* %85
  %87 = zext i8 %86 to i64
  %88 = zext i8 %84 to i64
  %89 = icmp eq i64 %88, %87
  store i1 %89, i1* %61
  br label %sc_or_end5
sc_or_end5:
  %90 = load i1, i1* %61
  br i1 %90, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %91 = load i8, i8* %11
  %92 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %93 = load i8, i8* %92
  %94 = zext i8 %93 to i64
  %95 = zext i8 %91 to i64
  %96 = icmp eq i64 %95, %94
  store i1 %96, i1* %60
  br label %sc_or_end7
sc_or_end7:
  %97 = load i1, i1* %60
  br i1 %97, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %98 = load i8, i8* %11
  %99 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %100 = load i8, i8* %99
  %101 = zext i8 %100 to i64
  %102 = zext i8 %98 to i64
  %103 = icmp eq i64 %102, %101
  store i1 %103, i1* %59
  br label %sc_or_end9
sc_or_end9:
  %104 = load i1, i1* %59
  br i1 %104, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %105 = load i8, i8* %11
  %106 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %107 = load i8, i8* %106
  %108 = zext i8 %107 to i64
  %109 = zext i8 %105 to i64
  %110 = icmp eq i64 %109, %108
  store i1 %110, i1* %58
  br label %sc_or_end11
sc_or_end11:
  %111 = load i1, i1* %58
  br i1 %111, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %112 = load i8, i8* %11
  %113 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %114 = load i8, i8* %113
  %115 = zext i8 %114 to i64
  %116 = zext i8 %112 to i64
  %117 = icmp eq i64 %116, %115
  store i1 %117, i1* %57
  br label %sc_or_end13
sc_or_end13:
  %118 = load i1, i1* %57
  br i1 %118, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %119 = load i8, i8* %11
  %120 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %121 = load i8, i8* %120
  %122 = zext i8 %121 to i64
  %123 = zext i8 %119 to i64
  %124 = icmp eq i64 %123, %122
  store i1 %124, i1* %56
  br label %sc_or_end15
sc_or_end15:
  %125 = load i1, i1* %56
  br i1 %125, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %126 = load i8, i8* %11
  %127 = getelementptr [1 x i8], [1 x i8]* @.str163, i32 0, i32 0
  %128 = load i8, i8* %127
  %129 = zext i8 %128 to i64
  %130 = zext i8 %126 to i64
  %131 = icmp eq i64 %130, %129
  store i1 %131, i1* %55
  br label %sc_or_end17
sc_or_end17:
  %132 = load i1, i1* %55
  br i1 %132, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %133 = load i8, i8* %11
  %134 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %135 = load i8, i8* %134
  %136 = zext i8 %135 to i64
  %137 = zext i8 %133 to i64
  %138 = icmp eq i64 %137, %136
  store i1 %138, i1* %54
  br label %sc_or_end19
sc_or_end19:
  %139 = load i1, i1* %54
  br i1 %139, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %140 = load i8, i8* %11
  %141 = getelementptr [1 x i8], [1 x i8]* @.str165, i32 0, i32 0
  %142 = load i8, i8* %141
  %143 = zext i8 %142 to i64
  %144 = zext i8 %140 to i64
  %145 = icmp eq i64 %144, %143
  store i1 %145, i1* %53
  br label %sc_or_end21
sc_or_end21:
  %146 = load i1, i1* %53
  br i1 %146, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %147 = load i8, i8* %11
  %148 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %149 = load i8, i8* %148
  %150 = zext i8 %149 to i64
  %151 = zext i8 %147 to i64
  %152 = icmp eq i64 %151, %150
  store i1 %152, i1* %52
  br label %sc_or_end23
sc_or_end23:
  %153 = load i1, i1* %52
  br i1 %153, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %154 = load i8, i8* %11
  %155 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %156 = load i8, i8* %155
  %157 = zext i8 %156 to i64
  %158 = zext i8 %154 to i64
  %159 = icmp eq i64 %158, %157
  store i1 %159, i1* %51
  br label %sc_or_end25
sc_or_end25:
  %160 = load i1, i1* %51
  br i1 %160, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %161 = load i8, i8* %11
  %162 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %163 = load i8, i8* %162
  %164 = zext i8 %163 to i64
  %165 = zext i8 %161 to i64
  %166 = icmp eq i64 %165, %164
  store i1 %166, i1* %50
  br label %sc_or_end27
sc_or_end27:
  %167 = load i1, i1* %50
  br i1 %167, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %168 = load i8, i8* %11
  %169 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %170 = load i8, i8* %169
  %171 = zext i8 %170 to i64
  %172 = zext i8 %168 to i64
  %173 = icmp eq i64 %172, %171
  store i1 %173, i1* %49
  br label %sc_or_end29
sc_or_end29:
  %174 = load i1, i1* %49
  br i1 %174, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %175 = load i8, i8* %11
  %176 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %177 = load i8, i8* %176
  %178 = zext i8 %177 to i64
  %179 = zext i8 %175 to i64
  %180 = icmp eq i64 %179, %178
  store i1 %180, i1* %48
  br label %sc_or_end31
sc_or_end31:
  %181 = load i1, i1* %48
  br i1 %181, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %182 = load i8, i8* %11
  %183 = getelementptr [1 x i8], [1 x i8]* @.str171, i32 0, i32 0
  %184 = load i8, i8* %183
  %185 = zext i8 %184 to i64
  %186 = zext i8 %182 to i64
  %187 = icmp eq i64 %186, %185
  store i1 %187, i1* %47
  br label %sc_or_end33
sc_or_end33:
  %188 = load i1, i1* %47
  br i1 %188, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %189 = load i8, i8* %11
  %190 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %191 = load i8, i8* %190
  %192 = zext i8 %191 to i64
  %193 = zext i8 %189 to i64
  %194 = icmp eq i64 %193, %192
  store i1 %194, i1* %46
  br label %sc_or_end35
sc_or_end35:
  %195 = load i1, i1* %46
  br i1 %195, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %196 = load i8, i8* %11
  %197 = getelementptr [1 x i8], [1 x i8]* @.str173, i32 0, i32 0
  %198 = load i8, i8* %197
  %199 = zext i8 %198 to i64
  %200 = zext i8 %196 to i64
  %201 = icmp eq i64 %200, %199
  store i1 %201, i1* %45
  br label %sc_or_end37
sc_or_end37:
  %202 = load i1, i1* %45
  br i1 %202, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %203 = load i8, i8* %11
  %204 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %205 = load i8, i8* %204
  %206 = zext i8 %205 to i64
  %207 = zext i8 %203 to i64
  %208 = icmp eq i64 %207, %206
  store i1 %208, i1* %44
  br label %sc_or_end39
sc_or_end39:
  %209 = load i1, i1* %44
  br i1 %209, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %210 = load i8, i8* %11
  %211 = getelementptr [1 x i8], [1 x i8]* @.str175, i32 0, i32 0
  %212 = load i8, i8* %211
  %213 = zext i8 %212 to i64
  %214 = zext i8 %210 to i64
  %215 = icmp eq i64 %214, %213
  store i1 %215, i1* %43
  br label %sc_or_end41
sc_or_end41:
  %216 = load i1, i1* %43
  br i1 %216, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %217 = load i8, i8* %11
  %218 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %219 = load i8, i8* %218
  %220 = zext i8 %219 to i64
  %221 = zext i8 %217 to i64
  %222 = icmp eq i64 %221, %220
  store i1 %222, i1* %42
  br label %sc_or_end43
sc_or_end43:
  %223 = load i1, i1* %42
  br i1 %223, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %224 = load i8, i8* %11
  %225 = getelementptr [1 x i8], [1 x i8]* @.str177, i32 0, i32 0
  %226 = load i8, i8* %225
  %227 = zext i8 %226 to i64
  %228 = zext i8 %224 to i64
  %229 = icmp eq i64 %228, %227
  store i1 %229, i1* %41
  br label %sc_or_end45
sc_or_end45:
  %230 = load i1, i1* %41
  br i1 %230, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %231 = load i8, i8* %11
  %232 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %233 = load i8, i8* %232
  %234 = zext i8 %233 to i64
  %235 = zext i8 %231 to i64
  %236 = icmp eq i64 %235, %234
  store i1 %236, i1* %40
  br label %sc_or_end47
sc_or_end47:
  %237 = load i1, i1* %40
  br i1 %237, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %238 = load i8, i8* %11
  %239 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %240 = load i8, i8* %239
  %241 = zext i8 %240 to i64
  %242 = zext i8 %238 to i64
  %243 = icmp eq i64 %242, %241
  store i1 %243, i1* %39
  br label %sc_or_end49
sc_or_end49:
  %244 = load i1, i1* %39
  br i1 %244, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %245 = load i8, i8* %11
  %246 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %247 = load i8, i8* %246
  %248 = zext i8 %247 to i64
  %249 = zext i8 %245 to i64
  %250 = icmp eq i64 %249, %248
  store i1 %250, i1* %38
  br label %sc_or_end51
sc_or_end51:
  %251 = load i1, i1* %38
  br i1 %251, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %252 = load i8, i8* %11
  %253 = getelementptr [1 x i8], [1 x i8]* @.str181, i32 0, i32 0
  %254 = load i8, i8* %253
  %255 = zext i8 %254 to i64
  %256 = zext i8 %252 to i64
  %257 = icmp eq i64 %256, %255
  store i1 %257, i1* %37
  br label %sc_or_end53
sc_or_end53:
  %258 = load i1, i1* %37
  br i1 %258, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %259 = load i8, i8* %11
  %260 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %261 = load i8, i8* %260
  %262 = zext i8 %261 to i64
  %263 = zext i8 %259 to i64
  %264 = icmp eq i64 %263, %262
  store i1 %264, i1* %36
  br label %sc_or_end55
sc_or_end55:
  %265 = load i1, i1* %36
  br i1 %265, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %266 = load i8, i8* %11
  %267 = getelementptr [1 x i8], [1 x i8]* @.str183, i32 0, i32 0
  %268 = load i8, i8* %267
  %269 = zext i8 %268 to i64
  %270 = zext i8 %266 to i64
  %271 = icmp eq i64 %270, %269
  store i1 %271, i1* %35
  br label %sc_or_end57
sc_or_end57:
  %272 = load i1, i1* %35
  br i1 %272, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %273 = load i8, i8* %11
  %274 = getelementptr [1 x i8], [1 x i8]* @.str184, i32 0, i32 0
  %275 = load i8, i8* %274
  %276 = zext i8 %275 to i64
  %277 = zext i8 %273 to i64
  %278 = icmp eq i64 %277, %276
  store i1 %278, i1* %34
  br label %sc_or_end59
sc_or_end59:
  %279 = load i1, i1* %34
  br i1 %279, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %280 = load i8, i8* %11
  %281 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %282 = load i8, i8* %281
  %283 = zext i8 %282 to i64
  %284 = zext i8 %280 to i64
  %285 = icmp eq i64 %284, %283
  store i1 %285, i1* %33
  br label %sc_or_end61
sc_or_end61:
  %286 = load i1, i1* %33
  br i1 %286, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %287 = load i8, i8* %11
  %288 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %289 = load i8, i8* %288
  %290 = zext i8 %289 to i64
  %291 = zext i8 %287 to i64
  %292 = icmp eq i64 %291, %290
  store i1 %292, i1* %32
  br label %sc_or_end63
sc_or_end63:
  %293 = load i1, i1* %32
  br i1 %293, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %294 = load i8, i8* %11
  %295 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %296 = load i8, i8* %295
  %297 = zext i8 %296 to i64
  %298 = zext i8 %294 to i64
  %299 = icmp eq i64 %298, %297
  store i1 %299, i1* %31
  br label %sc_or_end65
sc_or_end65:
  %300 = load i1, i1* %31
  br i1 %300, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %301 = load i8, i8* %11
  %302 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %303 = load i8, i8* %302
  %304 = zext i8 %303 to i64
  %305 = zext i8 %301 to i64
  %306 = icmp eq i64 %305, %304
  store i1 %306, i1* %30
  br label %sc_or_end67
sc_or_end67:
  %307 = load i1, i1* %30
  br i1 %307, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %308 = load i8, i8* %11
  %309 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %310 = load i8, i8* %309
  %311 = zext i8 %310 to i64
  %312 = zext i8 %308 to i64
  %313 = icmp eq i64 %312, %311
  store i1 %313, i1* %29
  br label %sc_or_end69
sc_or_end69:
  %314 = load i1, i1* %29
  br i1 %314, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %315 = load i8, i8* %11
  %316 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %317 = load i8, i8* %316
  %318 = zext i8 %317 to i64
  %319 = zext i8 %315 to i64
  %320 = icmp eq i64 %319, %318
  store i1 %320, i1* %28
  br label %sc_or_end71
sc_or_end71:
  %321 = load i1, i1* %28
  br i1 %321, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %322 = load i8, i8* %11
  %323 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %324 = load i8, i8* %323
  %325 = zext i8 %324 to i64
  %326 = zext i8 %322 to i64
  %327 = icmp eq i64 %326, %325
  store i1 %327, i1* %27
  br label %sc_or_end73
sc_or_end73:
  %328 = load i1, i1* %27
  br i1 %328, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %329 = load i8, i8* %11
  %330 = getelementptr [1 x i8], [1 x i8]* @.str192, i32 0, i32 0
  %331 = load i8, i8* %330
  %332 = zext i8 %331 to i64
  %333 = zext i8 %329 to i64
  %334 = icmp eq i64 %333, %332
  store i1 %334, i1* %26
  br label %sc_or_end75
sc_or_end75:
  %335 = load i1, i1* %26
  br i1 %335, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %336 = load i8, i8* %11
  %337 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %338 = load i8, i8* %337
  %339 = zext i8 %338 to i64
  %340 = zext i8 %336 to i64
  %341 = icmp eq i64 %340, %339
  store i1 %341, i1* %25
  br label %sc_or_end77
sc_or_end77:
  %342 = load i1, i1* %25
  br i1 %342, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %343 = load i8, i8* %11
  %344 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %345 = load i8, i8* %344
  %346 = zext i8 %345 to i64
  %347 = zext i8 %343 to i64
  %348 = icmp eq i64 %347, %346
  store i1 %348, i1* %24
  br label %sc_or_end79
sc_or_end79:
  %349 = load i1, i1* %24
  br i1 %349, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %350 = load i8, i8* %11
  %351 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %352 = load i8, i8* %351
  %353 = zext i8 %352 to i64
  %354 = zext i8 %350 to i64
  %355 = icmp eq i64 %354, %353
  store i1 %355, i1* %23
  br label %sc_or_end81
sc_or_end81:
  %356 = load i1, i1* %23
  br i1 %356, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %357 = load i8, i8* %11
  %358 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %359 = load i8, i8* %358
  %360 = zext i8 %359 to i64
  %361 = zext i8 %357 to i64
  %362 = icmp eq i64 %361, %360
  store i1 %362, i1* %22
  br label %sc_or_end83
sc_or_end83:
  %363 = load i1, i1* %22
  br i1 %363, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %364 = load i8, i8* %11
  %365 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %366 = load i8, i8* %365
  %367 = zext i8 %366 to i64
  %368 = zext i8 %364 to i64
  %369 = icmp eq i64 %368, %367
  store i1 %369, i1* %21
  br label %sc_or_end85
sc_or_end85:
  %370 = load i1, i1* %21
  br i1 %370, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %371 = load i8, i8* %11
  %372 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %373 = load i8, i8* %372
  %374 = zext i8 %373 to i64
  %375 = zext i8 %371 to i64
  %376 = icmp eq i64 %375, %374
  store i1 %376, i1* %20
  br label %sc_or_end87
sc_or_end87:
  %377 = load i1, i1* %20
  br i1 %377, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %378 = load i8, i8* %11
  %379 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %380 = load i8, i8* %379
  %381 = zext i8 %380 to i64
  %382 = zext i8 %378 to i64
  %383 = icmp eq i64 %382, %381
  store i1 %383, i1* %19
  br label %sc_or_end89
sc_or_end89:
  %384 = load i1, i1* %19
  br i1 %384, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %385 = load i8, i8* %11
  %386 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %387 = load i8, i8* %386
  %388 = zext i8 %387 to i64
  %389 = zext i8 %385 to i64
  %390 = icmp eq i64 %389, %388
  store i1 %390, i1* %18
  br label %sc_or_end91
sc_or_end91:
  %391 = load i1, i1* %18
  br i1 %391, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %392 = load i8, i8* %11
  %393 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %394 = load i8, i8* %393
  %395 = zext i8 %394 to i64
  %396 = zext i8 %392 to i64
  %397 = icmp eq i64 %396, %395
  store i1 %397, i1* %17
  br label %sc_or_end93
sc_or_end93:
  %398 = load i1, i1* %17
  br i1 %398, label %sc_or_end95, label %sc_or_rhs94
sc_or_rhs94:
  %399 = load i8, i8* %11
  %400 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %401 = load i8, i8* %400
  %402 = zext i8 %401 to i64
  %403 = zext i8 %399 to i64
  %404 = icmp eq i64 %403, %402
  store i1 %404, i1* %16
  br label %sc_or_end95
sc_or_end95:
  %405 = load i1, i1* %16
  br i1 %405, label %sc_or_end97, label %sc_or_rhs96
sc_or_rhs96:
  %406 = load i8, i8* %11
  %407 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %408 = load i8, i8* %407
  %409 = zext i8 %408 to i64
  %410 = zext i8 %406 to i64
  %411 = icmp eq i64 %410, %409
  store i1 %411, i1* %15
  br label %sc_or_end97
sc_or_end97:
  %412 = load i1, i1* %15
  br i1 %412, label %sc_or_end99, label %sc_or_rhs98
sc_or_rhs98:
  %413 = load i8, i8* %11
  %414 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %415 = load i8, i8* %414
  %416 = zext i8 %415 to i64
  %417 = zext i8 %413 to i64
  %418 = icmp eq i64 %417, %416
  store i1 %418, i1* %14
  br label %sc_or_end99
sc_or_end99:
  %419 = load i1, i1* %14
  br i1 %419, label %sc_or_end101, label %sc_or_rhs100
sc_or_rhs100:
  %420 = load i8, i8* %11
  %421 = getelementptr [1 x i8], [1 x i8]* @.str205, i32 0, i32 0
  %422 = load i8, i8* %421
  %423 = zext i8 %422 to i64
  %424 = zext i8 %420 to i64
  %425 = icmp eq i64 %424, %423
  store i1 %425, i1* %13
  br label %sc_or_end101
sc_or_end101:
  %426 = load i1, i1* %13
  br i1 %426, label %sc_or_end103, label %sc_or_rhs102
sc_or_rhs102:
  %427 = load i8, i8* %11
  %428 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %429 = load i8, i8* %428
  %430 = zext i8 %429 to i64
  %431 = zext i8 %427 to i64
  %432 = icmp eq i64 %431, %430
  store i1 %432, i1* %12
  br label %sc_or_end103
sc_or_end103:
  %433 = load i1, i1* %12
  ret i1 %433
}

define internal i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i8
  store i8 %c.param, i8* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = load i8, i8* %11
  %14 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %13)
  br i1 %14, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %15 = load i8, i8* %11
  %16 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %15)
  store i1 %16, i1* %12
  br label %sc_or_end1
sc_or_end1:
  %17 = load i1, i1* %12
  ret i1 %17
}

define internal i1 @tokenize_con_avisos__is_hex_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i8
  store i8 %c.param, i8* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = alloca i1
  store i1 true, i1* %26
  %27 = alloca i1
  store i1 true, i1* %27
  %28 = alloca i1
  store i1 true, i1* %28
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = load i8, i8* %11
  %34 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %35 = load i8, i8* %34
  %36 = zext i8 %35 to i64
  %37 = zext i8 %33 to i64
  %38 = icmp eq i64 %37, %36
  br i1 %38, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %39 = load i8, i8* %11
  %40 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %41 = load i8, i8* %40
  %42 = zext i8 %41 to i64
  %43 = zext i8 %39 to i64
  %44 = icmp eq i64 %43, %42
  store i1 %44, i1* %32
  br label %sc_or_end1
sc_or_end1:
  %45 = load i1, i1* %32
  br i1 %45, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %46 = load i8, i8* %11
  %47 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %48 = load i8, i8* %47
  %49 = zext i8 %48 to i64
  %50 = zext i8 %46 to i64
  %51 = icmp eq i64 %50, %49
  store i1 %51, i1* %31
  br label %sc_or_end3
sc_or_end3:
  %52 = load i1, i1* %31
  br i1 %52, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %53 = load i8, i8* %11
  %54 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %55 = load i8, i8* %54
  %56 = zext i8 %55 to i64
  %57 = zext i8 %53 to i64
  %58 = icmp eq i64 %57, %56
  store i1 %58, i1* %30
  br label %sc_or_end5
sc_or_end5:
  %59 = load i1, i1* %30
  br i1 %59, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %60 = load i8, i8* %11
  %61 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %62 = load i8, i8* %61
  %63 = zext i8 %62 to i64
  %64 = zext i8 %60 to i64
  %65 = icmp eq i64 %64, %63
  store i1 %65, i1* %29
  br label %sc_or_end7
sc_or_end7:
  %66 = load i1, i1* %29
  br i1 %66, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %67 = load i8, i8* %11
  %68 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %69 = load i8, i8* %68
  %70 = zext i8 %69 to i64
  %71 = zext i8 %67 to i64
  %72 = icmp eq i64 %71, %70
  store i1 %72, i1* %28
  br label %sc_or_end9
sc_or_end9:
  %73 = load i1, i1* %28
  br i1 %73, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %74 = load i8, i8* %11
  %75 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %76 = load i8, i8* %75
  %77 = zext i8 %76 to i64
  %78 = zext i8 %74 to i64
  %79 = icmp eq i64 %78, %77
  store i1 %79, i1* %27
  br label %sc_or_end11
sc_or_end11:
  %80 = load i1, i1* %27
  br i1 %80, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %81 = load i8, i8* %11
  %82 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %83 = load i8, i8* %82
  %84 = zext i8 %83 to i64
  %85 = zext i8 %81 to i64
  %86 = icmp eq i64 %85, %84
  store i1 %86, i1* %26
  br label %sc_or_end13
sc_or_end13:
  %87 = load i1, i1* %26
  br i1 %87, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %88 = load i8, i8* %11
  %89 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %90 = load i8, i8* %89
  %91 = zext i8 %90 to i64
  %92 = zext i8 %88 to i64
  %93 = icmp eq i64 %92, %91
  store i1 %93, i1* %25
  br label %sc_or_end15
sc_or_end15:
  %94 = load i1, i1* %25
  br i1 %94, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %95 = load i8, i8* %11
  %96 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %97 = load i8, i8* %96
  %98 = zext i8 %97 to i64
  %99 = zext i8 %95 to i64
  %100 = icmp eq i64 %99, %98
  store i1 %100, i1* %24
  br label %sc_or_end17
sc_or_end17:
  %101 = load i1, i1* %24
  br i1 %101, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %102 = load i8, i8* %11
  %103 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %104 = load i8, i8* %103
  %105 = zext i8 %104 to i64
  %106 = zext i8 %102 to i64
  %107 = icmp eq i64 %106, %105
  store i1 %107, i1* %23
  br label %sc_or_end19
sc_or_end19:
  %108 = load i1, i1* %23
  br i1 %108, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %109 = load i8, i8* %11
  %110 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %111 = load i8, i8* %110
  %112 = zext i8 %111 to i64
  %113 = zext i8 %109 to i64
  %114 = icmp eq i64 %113, %112
  store i1 %114, i1* %22
  br label %sc_or_end21
sc_or_end21:
  %115 = load i1, i1* %22
  br i1 %115, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %116 = load i8, i8* %11
  %117 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %118 = load i8, i8* %117
  %119 = zext i8 %118 to i64
  %120 = zext i8 %116 to i64
  %121 = icmp eq i64 %120, %119
  store i1 %121, i1* %21
  br label %sc_or_end23
sc_or_end23:
  %122 = load i1, i1* %21
  br i1 %122, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %123 = load i8, i8* %11
  %124 = getelementptr [1 x i8], [1 x i8]* @.str220, i32 0, i32 0
  %125 = load i8, i8* %124
  %126 = zext i8 %125 to i64
  %127 = zext i8 %123 to i64
  %128 = icmp eq i64 %127, %126
  store i1 %128, i1* %20
  br label %sc_or_end25
sc_or_end25:
  %129 = load i1, i1* %20
  br i1 %129, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %130 = load i8, i8* %11
  %131 = getelementptr [1 x i8], [1 x i8]* @.str221, i32 0, i32 0
  %132 = load i8, i8* %131
  %133 = zext i8 %132 to i64
  %134 = zext i8 %130 to i64
  %135 = icmp eq i64 %134, %133
  store i1 %135, i1* %19
  br label %sc_or_end27
sc_or_end27:
  %136 = load i1, i1* %19
  br i1 %136, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %137 = load i8, i8* %11
  %138 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %139 = load i8, i8* %138
  %140 = zext i8 %139 to i64
  %141 = zext i8 %137 to i64
  %142 = icmp eq i64 %141, %140
  store i1 %142, i1* %18
  br label %sc_or_end29
sc_or_end29:
  %143 = load i1, i1* %18
  br i1 %143, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %144 = load i8, i8* %11
  %145 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %146 = load i8, i8* %145
  %147 = zext i8 %146 to i64
  %148 = zext i8 %144 to i64
  %149 = icmp eq i64 %148, %147
  store i1 %149, i1* %17
  br label %sc_or_end31
sc_or_end31:
  %150 = load i1, i1* %17
  br i1 %150, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %151 = load i8, i8* %11
  %152 = getelementptr [1 x i8], [1 x i8]* @.str224, i32 0, i32 0
  %153 = load i8, i8* %152
  %154 = zext i8 %153 to i64
  %155 = zext i8 %151 to i64
  %156 = icmp eq i64 %155, %154
  store i1 %156, i1* %16
  br label %sc_or_end33
sc_or_end33:
  %157 = load i1, i1* %16
  br i1 %157, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %158 = load i8, i8* %11
  %159 = getelementptr [1 x i8], [1 x i8]* @.str225, i32 0, i32 0
  %160 = load i8, i8* %159
  %161 = zext i8 %160 to i64
  %162 = zext i8 %158 to i64
  %163 = icmp eq i64 %162, %161
  store i1 %163, i1* %15
  br label %sc_or_end35
sc_or_end35:
  %164 = load i1, i1* %15
  br i1 %164, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %165 = load i8, i8* %11
  %166 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %167 = load i8, i8* %166
  %168 = zext i8 %167 to i64
  %169 = zext i8 %165 to i64
  %170 = icmp eq i64 %169, %168
  store i1 %170, i1* %14
  br label %sc_or_end37
sc_or_end37:
  %171 = load i1, i1* %14
  br i1 %171, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %172 = load i8, i8* %11
  %173 = getelementptr [1 x i8], [1 x i8]* @.str227, i32 0, i32 0
  %174 = load i8, i8* %173
  %175 = zext i8 %174 to i64
  %176 = zext i8 %172 to i64
  %177 = icmp eq i64 %176, %175
  store i1 %177, i1* %13
  br label %sc_or_end39
sc_or_end39:
  %178 = load i1, i1* %13
  br i1 %178, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %179 = load i8, i8* %11
  %180 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %181 = load i8, i8* %180
  %182 = zext i8 %181 to i64
  %183 = zext i8 %179 to i64
  %184 = icmp eq i64 %183, %182
  store i1 %184, i1* %12
  br label %sc_or_end41
sc_or_end41:
  %185 = load i1, i1* %12
  ret i1 %185
}

define internal i64 @tokenize_con_avisos__hex_digit_val(%SharedEnv_tokenize_con_avisos* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i8
  store i8 %c.param, i8* %11
  %12 = load i8, i8* %11
  %13 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %14 = load i8, i8* %13
  %15 = zext i8 %14 to i64
  %16 = zext i8 %12 to i64
  %17 = icmp eq i64 %16, %15
  br i1 %17, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %18 = load i8, i8* %11
  %19 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %20 = load i8, i8* %19
  %21 = zext i8 %20 to i64
  %22 = zext i8 %18 to i64
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %then3, label %else4
then3:
  ret i64 1
else4:
  br label %merge5
merge5:
  %24 = load i8, i8* %11
  %25 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %26 = load i8, i8* %25
  %27 = zext i8 %26 to i64
  %28 = zext i8 %24 to i64
  %29 = icmp eq i64 %28, %27
  br i1 %29, label %then6, label %else7
then6:
  ret i64 2
else7:
  br label %merge8
merge8:
  %30 = load i8, i8* %11
  %31 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %32 = load i8, i8* %31
  %33 = zext i8 %32 to i64
  %34 = zext i8 %30 to i64
  %35 = icmp eq i64 %34, %33
  br i1 %35, label %then9, label %else10
then9:
  ret i64 3
else10:
  br label %merge11
merge11:
  %36 = load i8, i8* %11
  %37 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %38 = load i8, i8* %37
  %39 = zext i8 %38 to i64
  %40 = zext i8 %36 to i64
  %41 = icmp eq i64 %40, %39
  br i1 %41, label %then12, label %else13
then12:
  ret i64 4
else13:
  br label %merge14
merge14:
  %42 = load i8, i8* %11
  %43 = getelementptr [1 x i8], [1 x i8]* @.str234, i32 0, i32 0
  %44 = load i8, i8* %43
  %45 = zext i8 %44 to i64
  %46 = zext i8 %42 to i64
  %47 = icmp eq i64 %46, %45
  br i1 %47, label %then15, label %else16
then15:
  ret i64 5
else16:
  br label %merge17
merge17:
  %48 = load i8, i8* %11
  %49 = getelementptr [1 x i8], [1 x i8]* @.str235, i32 0, i32 0
  %50 = load i8, i8* %49
  %51 = zext i8 %50 to i64
  %52 = zext i8 %48 to i64
  %53 = icmp eq i64 %52, %51
  br i1 %53, label %then18, label %else19
then18:
  ret i64 6
else19:
  br label %merge20
merge20:
  %54 = load i8, i8* %11
  %55 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %56 = load i8, i8* %55
  %57 = zext i8 %56 to i64
  %58 = zext i8 %54 to i64
  %59 = icmp eq i64 %58, %57
  br i1 %59, label %then21, label %else22
then21:
  ret i64 7
else22:
  br label %merge23
merge23:
  %60 = load i8, i8* %11
  %61 = getelementptr [1 x i8], [1 x i8]* @.str237, i32 0, i32 0
  %62 = load i8, i8* %61
  %63 = zext i8 %62 to i64
  %64 = zext i8 %60 to i64
  %65 = icmp eq i64 %64, %63
  br i1 %65, label %then24, label %else25
then24:
  ret i64 8
else25:
  br label %merge26
merge26:
  %66 = load i8, i8* %11
  %67 = getelementptr [1 x i8], [1 x i8]* @.str238, i32 0, i32 0
  %68 = load i8, i8* %67
  %69 = zext i8 %68 to i64
  %70 = zext i8 %66 to i64
  %71 = icmp eq i64 %70, %69
  br i1 %71, label %then27, label %else28
then27:
  ret i64 9
else28:
  br label %merge29
merge29:
  %72 = alloca i1
  store i1 true, i1* %72
  %73 = load i8, i8* %11
  %74 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %75 = load i8, i8* %74
  %76 = zext i8 %75 to i64
  %77 = zext i8 %73 to i64
  %78 = icmp eq i64 %77, %76
  br i1 %78, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %79 = load i8, i8* %11
  %80 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %81 = load i8, i8* %80
  %82 = zext i8 %81 to i64
  %83 = zext i8 %79 to i64
  %84 = icmp eq i64 %83, %82
  store i1 %84, i1* %72
  br label %sc_or_end31
sc_or_end31:
  %85 = load i1, i1* %72
  br i1 %85, label %then32, label %else33
then32:
  ret i64 10
else33:
  br label %merge34
merge34:
  %86 = alloca i1
  store i1 true, i1* %86
  %87 = load i8, i8* %11
  %88 = getelementptr [1 x i8], [1 x i8]* @.str241, i32 0, i32 0
  %89 = load i8, i8* %88
  %90 = zext i8 %89 to i64
  %91 = zext i8 %87 to i64
  %92 = icmp eq i64 %91, %90
  br i1 %92, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %93 = load i8, i8* %11
  %94 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %95 = load i8, i8* %94
  %96 = zext i8 %95 to i64
  %97 = zext i8 %93 to i64
  %98 = icmp eq i64 %97, %96
  store i1 %98, i1* %86
  br label %sc_or_end36
sc_or_end36:
  %99 = load i1, i1* %86
  br i1 %99, label %then37, label %else38
then37:
  ret i64 11
else38:
  br label %merge39
merge39:
  %100 = alloca i1
  store i1 true, i1* %100
  %101 = load i8, i8* %11
  %102 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %103 = load i8, i8* %102
  %104 = zext i8 %103 to i64
  %105 = zext i8 %101 to i64
  %106 = icmp eq i64 %105, %104
  br i1 %106, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %107 = load i8, i8* %11
  %108 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %109 = load i8, i8* %108
  %110 = zext i8 %109 to i64
  %111 = zext i8 %107 to i64
  %112 = icmp eq i64 %111, %110
  store i1 %112, i1* %100
  br label %sc_or_end41
sc_or_end41:
  %113 = load i1, i1* %100
  br i1 %113, label %then42, label %else43
then42:
  ret i64 12
else43:
  br label %merge44
merge44:
  %114 = alloca i1
  store i1 true, i1* %114
  %115 = load i8, i8* %11
  %116 = getelementptr [1 x i8], [1 x i8]* @.str245, i32 0, i32 0
  %117 = load i8, i8* %116
  %118 = zext i8 %117 to i64
  %119 = zext i8 %115 to i64
  %120 = icmp eq i64 %119, %118
  br i1 %120, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %121 = load i8, i8* %11
  %122 = getelementptr [1 x i8], [1 x i8]* @.str246, i32 0, i32 0
  %123 = load i8, i8* %122
  %124 = zext i8 %123 to i64
  %125 = zext i8 %121 to i64
  %126 = icmp eq i64 %125, %124
  store i1 %126, i1* %114
  br label %sc_or_end46
sc_or_end46:
  %127 = load i1, i1* %114
  br i1 %127, label %then47, label %else48
then47:
  ret i64 13
else48:
  br label %merge49
merge49:
  %128 = alloca i1
  store i1 true, i1* %128
  %129 = load i8, i8* %11
  %130 = getelementptr [1 x i8], [1 x i8]* @.str247, i32 0, i32 0
  %131 = load i8, i8* %130
  %132 = zext i8 %131 to i64
  %133 = zext i8 %129 to i64
  %134 = icmp eq i64 %133, %132
  br i1 %134, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %135 = load i8, i8* %11
  %136 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %137 = load i8, i8* %136
  %138 = zext i8 %137 to i64
  %139 = zext i8 %135 to i64
  %140 = icmp eq i64 %139, %138
  store i1 %140, i1* %128
  br label %sc_or_end51
sc_or_end51:
  %141 = load i1, i1* %128
  br i1 %141, label %then52, label %else53
then52:
  ret i64 14
else53:
  br label %merge54
merge54:
  %142 = alloca i1
  store i1 true, i1* %142
  %143 = load i8, i8* %11
  %144 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %145 = load i8, i8* %144
  %146 = zext i8 %145 to i64
  %147 = zext i8 %143 to i64
  %148 = icmp eq i64 %147, %146
  br i1 %148, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %149 = load i8, i8* %11
  %150 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %151 = load i8, i8* %150
  %152 = zext i8 %151 to i64
  %153 = zext i8 %149 to i64
  %154 = icmp eq i64 %153, %152
  store i1 %154, i1* %142
  br label %sc_or_end56
sc_or_end56:
  %155 = load i1, i1* %142
  br i1 %155, label %then57, label %else58
then57:
  ret i64 15
else58:
  br label %merge59
merge59:
  ret i64 0
}

define internal %nyx_string* @tokenize_con_avisos__digit_to_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %d.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i64
  store i64 %d.param, i64* %11
  %12 = load i64, i64* %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %then0, label %else1
then0:
  %14 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %14, i64 1)
  ret %nyx_string* %15
else1:
  br label %merge2
merge2:
  %16 = load i64, i64* %11
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %then3, label %else4
then3:
  %18 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %18, i64 1)
  ret %nyx_string* %19
else4:
  br label %merge5
merge5:
  %20 = load i64, i64* %11
  %21 = icmp eq i64 %20, 2
  br i1 %21, label %then6, label %else7
then6:
  %22 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %22, i64 1)
  ret %nyx_string* %23
else7:
  br label %merge8
merge8:
  %24 = load i64, i64* %11
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %then9, label %else10
then9:
  %26 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %26, i64 1)
  ret %nyx_string* %27
else10:
  br label %merge11
merge11:
  %28 = load i64, i64* %11
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %then12, label %else13
then12:
  %30 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %30, i64 1)
  ret %nyx_string* %31
else13:
  br label %merge14
merge14:
  %32 = load i64, i64* %11
  %33 = icmp eq i64 %32, 5
  br i1 %33, label %then15, label %else16
then15:
  %34 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %34, i64 1)
  ret %nyx_string* %35
else16:
  br label %merge17
merge17:
  %36 = load i64, i64* %11
  %37 = icmp eq i64 %36, 6
  br i1 %37, label %then18, label %else19
then18:
  %38 = getelementptr [2 x i8], [2 x i8]* @.str257, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %38, i64 1)
  ret %nyx_string* %39
else19:
  br label %merge20
merge20:
  %40 = load i64, i64* %11
  %41 = icmp eq i64 %40, 7
  br i1 %41, label %then21, label %else22
then21:
  %42 = getelementptr [2 x i8], [2 x i8]* @.str258, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %42, i64 1)
  ret %nyx_string* %43
else22:
  br label %merge23
merge23:
  %44 = load i64, i64* %11
  %45 = icmp eq i64 %44, 8
  br i1 %45, label %then24, label %else25
then24:
  %46 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %46, i64 1)
  ret %nyx_string* %47
else25:
  br label %merge26
merge26:
  %48 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %48, i64 1)
  ret %nyx_string* %49
}

define internal %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %n.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i64
  store i64 %n.param, i64* %11
  %12 = load i64, i64* %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %then0, label %else1
then0:
  %14 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %14, i64 1)
  ret %nyx_string* %15
else1:
  br label %merge2
merge2:
  %16 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %16, i64 0)
  %18 = alloca %nyx_string*
  store %nyx_string* %17, %nyx_string** %18
  %19 = load i64, i64* %11
  %20 = alloca i64
  store i64 %19, i64* %20
  %21 = alloca i1
  store i1 0, i1* %21
  %22 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %23 = load i1, i1* %21
  %24 = xor i1 %23, true
  br i1 %24, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %22)
  %25 = load i64, i64* %20
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %then6, label %else7
then6:
  store i1 1, i1* %21
  br label %merge8
else7:
  %27 = load i64, i64* %20
  %28 = srem i64 %27, 10
  %29 = alloca i64
  store i64 %28, i64* %29
  %30 = load i64, i64* %29
  %31 = call %nyx_string* @tokenize_con_avisos__digit_to_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %30)
  %32 = load %nyx_string*, %nyx_string** %18
  %33 = call %nyx_string* @nyx_string_concat(%nyx_string* %31, %nyx_string* %32)
  store %nyx_string* %33, %nyx_string** %18
  %34 = load i64, i64* %20
  %35 = sdiv i64 %34, 10
  store i64 %35, i64* %20
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %36 = load %nyx_string*, %nyx_string** %18
  ret %nyx_string* %36
}

define internal i64 @tokenize_con_avisos__hex_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %11
  %12 = alloca i64
  store i64 0, i64* %12
  %13 = alloca i64
  store i64 0, i64* %13
  %14 = alloca i1
  store i1 0, i1* %14
  %15 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %16 = load i1, i1* %14
  %17 = xor i1 %16, true
  br i1 %17, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %15)
  %18 = load i64, i64* %13
  %19 = load %nyx_string*, %nyx_string** %11
  %20 = call i64 @nyx_string_byte_length(%nyx_string* %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %then3, label %else4
then3:
  store i1 1, i1* %14
  br label %merge5
else4:
  %22 = load i64, i64* %12
  %23 = mul i64 %22, 16
  %24 = load %nyx_string*, %nyx_string** %11
  %25 = load i64, i64* %13
  %26 = call i8 @nyx_string_char_at(%nyx_string* %24, i64 %25)
  %27 = zext i8 %26 to i64
  %28 = call i64 @tokenize_con_avisos__hex_digit_val(%SharedEnv_tokenize_con_avisos* %env.param, i64 %27)
  %29 = add i64 %23, %28
  store i64 %29, i64* %12
  %30 = load i64, i64* %13
  %31 = add i64 %30, 1
  store i64 %31, i64* %13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %32 = load i64, i64* %12
  ret i64 %32
}

define internal i64 @tokenize_con_avisos__bin_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %11
  %12 = alloca i64
  store i64 0, i64* %12
  %13 = alloca i64
  store i64 0, i64* %13
  %14 = alloca i1
  store i1 0, i1* %14
  %15 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %16 = load i1, i1* %14
  %17 = xor i1 %16, true
  br i1 %17, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %15)
  %18 = load i64, i64* %13
  %19 = load %nyx_string*, %nyx_string** %11
  %20 = call i64 @nyx_string_byte_length(%nyx_string* %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %then3, label %else4
then3:
  store i1 1, i1* %14
  br label %merge5
else4:
  %22 = load %nyx_string*, %nyx_string** %11
  %23 = load i64, i64* %13
  %24 = call i8 @nyx_string_char_at(%nyx_string* %22, i64 %23)
  %25 = zext i8 %24 to i64
  %26 = trunc i64 %25 to i8
  %27 = alloca i8
  store i8 %26, i8* %27
  %28 = load i8, i8* %27
  %29 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %30 = load i8, i8* %29
  %31 = zext i8 %30 to i64
  %32 = zext i8 %28 to i64
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %then6, label %else7
then6:
  %34 = load i64, i64* %12
  %35 = mul i64 %34, 2
  %36 = add i64 %35, 1
  store i64 %36, i64* %12
  br label %merge8
else7:
  %37 = load i64, i64* %12
  %38 = mul i64 %37, 2
  store i64 %38, i64* %12
  br label %merge8
merge8:
  %39 = load i64, i64* %13
  %40 = add i64 %39, 1
  store i64 %40, i64* %13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load i64, i64* %12
  ret i64 %41
}

define internal i64 @tokenize_con_avisos__oct_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %11
  %12 = alloca i64
  store i64 0, i64* %12
  %13 = alloca i64
  store i64 0, i64* %13
  %14 = alloca i1
  store i1 0, i1* %14
  %15 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %16 = load i1, i1* %14
  %17 = xor i1 %16, true
  br i1 %17, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %15)
  %18 = load i64, i64* %13
  %19 = load %nyx_string*, %nyx_string** %11
  %20 = call i64 @nyx_string_byte_length(%nyx_string* %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %then3, label %else4
then3:
  store i1 1, i1* %14
  br label %merge5
else4:
  %22 = load i64, i64* %12
  %23 = mul i64 %22, 8
  %24 = load %nyx_string*, %nyx_string** %11
  %25 = load i64, i64* %13
  %26 = call i8 @nyx_string_char_at(%nyx_string* %24, i64 %25)
  %27 = zext i8 %26 to i64
  %28 = call i64 @tokenize_con_avisos__hex_digit_val(%SharedEnv_tokenize_con_avisos* %env.param, i64 %27)
  %29 = add i64 %23, %28
  store i64 %29, i64* %12
  %30 = load i64, i64* %13
  %31 = add i64 %30, 1
  store i64 %31, i64* %13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %32 = load i64, i64* %12
  ret i64 %32
}

define internal i64 @tokenize_con_avisos__skip_whitespace(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i1
  store i1 0, i1* %11
  %12 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %13 = load i1, i1* %11
  %14 = xor i1 %13, true
  br i1 %14, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %12)
  %15 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %16 = alloca i8
  store i8 %15, i8* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = load i8, i8* %16
  %19 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %20 = load i8, i8* %19
  %21 = zext i8 %20 to i64
  %22 = zext i8 %18 to i64
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %24 = load i8, i8* %16
  %25 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %26 = load i8, i8* %25
  %27 = zext i8 %26 to i64
  %28 = zext i8 %24 to i64
  %29 = icmp eq i64 %28, %27
  store i1 %29, i1* %17
  br label %sc_or_end4
sc_or_end4:
  %30 = load i1, i1* %17
  br i1 %30, label %then5, label %else6
then5:
  %31 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge7
else6:
  store i1 1, i1* %11
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__skip_comment(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %11, i64 0)
  %13 = alloca %nyx_string*
  store %nyx_string* %12, %nyx_string** %13
  %14 = alloca i1
  store i1 0, i1* %14
  %15 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %16 = load i1, i1* %14
  %17 = xor i1 %16, true
  br i1 %17, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %15)
  %18 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %18, label %then3, label %else4
then3:
  store i1 1, i1* %14
  br label %merge5
else4:
  %19 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %20 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  %23 = zext i8 %19 to i64
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %then6, label %else7
then6:
  store i1 1, i1* %14
  br label %merge8
else7:
  %25 = load %nyx_string*, %nyx_string** %13
  %26 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %27 = call %nyx_string* @nyx_string_from_char(i8 %26)
  %28 = call %nyx_string* @nyx_string_concat(%nyx_string* %25, %nyx_string* %27)
  store %nyx_string* %28, %nyx_string** %13
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %29 = load %nyx_string*, %nyx_string** %13
  %30 = getelementptr [7 x i8], [7 x i8]* @.str268, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %30, i64 6)
  %32 = call i1 @nyx_string_starts_with(%nyx_string* %29, %nyx_string* %31)
  br i1 %32, label %then9, label %else10
then9:
  %33 = load %nyx_string*, %nyx_string** %13
  %34 = load %nyx_string*, %nyx_string** %13
  %35 = call i64 @nyx_string_byte_length(%nyx_string* %34)
  %36 = call %nyx_string* @nyx_string_substring(%nyx_string* %33, i64 6, i64 %35)
  %37 = call %nyx_string* @nyx_string_trim(%nyx_string* %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = load %nyx_string*, %nyx_string** %38
  %40 = call i64 @nyx_string_to_int(%nyx_string* %39)
  %41 = alloca i64
  store i64 %40, i64* %41
  %42 = load i64, i64* %41
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %then12, label %else13
then12:
  %44 = load i64, i64* %41
  %45 = sub i64 %44, 1
  store i64 %45, i64* %6
  br label %merge14
else13:
  br label %merge14
merge14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %46 = load %nyx_string*, %nyx_string** %13
  %47 = getelementptr [8 x i8], [8 x i8]* @.str269, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %47, i64 7)
  %49 = call i1 @nyx_string_starts_with(%nyx_string* %46, %nyx_string* %48)
  br i1 %49, label %then15, label %else16
then15:
  %50 = load %nyx_string*, %nyx_string** %13
  %51 = load %nyx_string*, %nyx_string** %13
  %52 = call i64 @nyx_string_byte_length(%nyx_string* %51)
  %53 = call %nyx_string* @nyx_string_substring(%nyx_string* %50, i64 7, i64 %52)
  %54 = call %nyx_string* @nyx_string_trim(%nyx_string* %53)
  %55 = alloca %nyx_string*
  store %nyx_string* %54, %nyx_string** %55
  %56 = getelementptr [14 x i8], [14 x i8]* @.str270, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %56, i64 13)
  %58 = load %nyx_string*, %nyx_string** %55
  %59 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %57, %nyx_string* %58)
  br label %merge17
else16:
  br label %merge17
merge17:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__skip_block_comment(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i64
  store i64 1, i64* %11
  %12 = alloca i1
  store i1 0, i1* %12
  %13 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %14 = load i1, i1* %12
  %15 = xor i1 %14, true
  br i1 %15, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %13)
  %16 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %16, label %then3, label %else4
then3:
  %17 = getelementptr [34 x i8], [34 x i8]* @.str271, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %17, i64 33)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  call void @nyx_print_string(i8* %19)
  %20 = load i64, i64* @g_lex_error_count
  %21 = add i64 %20, 1
  store i64 %21, i64* @g_lex_error_count
  store i1 1, i1* %12
  br label %merge5
else4:
  %22 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %23 = alloca i8
  store i8 %22, i8* %23
  %24 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %25 = alloca i8
  store i8 %24, i8* %25
  %26 = alloca i1
  store i1 false, i1* %26
  %27 = load i8, i8* %23
  %28 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = zext i8 %27 to i64
  %32 = icmp eq i64 %31, %30
  br i1 %32, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %33 = load i8, i8* %25
  %34 = getelementptr [1 x i8], [1 x i8]* @.str273, i32 0, i32 0
  %35 = load i8, i8* %34
  %36 = zext i8 %35 to i64
  %37 = zext i8 %33 to i64
  %38 = icmp eq i64 %37, %36
  store i1 %38, i1* %26
  br label %sc_and_end7
sc_and_end7:
  %39 = load i1, i1* %26
  br i1 %39, label %then8, label %else9
then8:
  %40 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %41 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %42 = load i64, i64* %11
  %43 = add i64 %42, 1
  store i64 %43, i64* %11
  br label %merge10
else9:
  %44 = alloca i1
  store i1 false, i1* %44
  %45 = load i8, i8* %23
  %46 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %47 = load i8, i8* %46
  %48 = zext i8 %47 to i64
  %49 = zext i8 %45 to i64
  %50 = icmp eq i64 %49, %48
  br i1 %50, label %sc_and_rhs11, label %sc_and_end12
sc_and_rhs11:
  %51 = load i8, i8* %25
  %52 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %53 = load i8, i8* %52
  %54 = zext i8 %53 to i64
  %55 = zext i8 %51 to i64
  %56 = icmp eq i64 %55, %54
  store i1 %56, i1* %44
  br label %sc_and_end12
sc_and_end12:
  %57 = load i1, i1* %44
  br i1 %57, label %then13, label %else14
then13:
  %58 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %59 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %60 = load i64, i64* %11
  %61 = sub i64 %60, 1
  store i64 %61, i64* %11
  %62 = load i64, i64* %11
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %then16, label %else17
then16:
  store i1 1, i1* %12
  br label %merge18
else17:
  br label %merge18
merge18:
  br label %merge15
else14:
  %64 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
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
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca { i64, i8* }*
  store { i64, i8* }* %chars.param, { i64, i8* }** %11
  %12 = load { i64, i8* }*, { i64, i8* }** %11
  %13 = load { i64, i8* }*, { i64, i8* }** %11
  %14 = call i64 @nyx_array_length({ i64, i8* }* %13)
  %15 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %12, i64 0, i64 %14)
  ret %nyx_string* %15
}

define internal i64 @tokenize_con_avisos__scan_number(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = load i64, i64* %5
  %12 = alloca i64
  store i64 %11, i64* %12
  %13 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %14 = alloca i8
  store i8 %13, i8* %14
  %15 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %16 = alloca i8
  store i8 %15, i8* %16
  %17 = alloca i1
  store i1 false, i1* %17
  %18 = load i8, i8* %14
  %19 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %20 = load i8, i8* %19
  %21 = zext i8 %20 to i64
  %22 = zext i8 %18 to i64
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %sc_and_rhs0, label %sc_and_end1
sc_and_rhs0:
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = load i8, i8* %16
  %26 = getelementptr [1 x i8], [1 x i8]* @.str277, i32 0, i32 0
  %27 = load i8, i8* %26
  %28 = zext i8 %27 to i64
  %29 = zext i8 %25 to i64
  %30 = icmp eq i64 %29, %28
  br i1 %30, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %31 = load i8, i8* %16
  %32 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %33 = load i8, i8* %32
  %34 = zext i8 %33 to i64
  %35 = zext i8 %31 to i64
  %36 = icmp eq i64 %35, %34
  store i1 %36, i1* %24
  br label %sc_or_end3
sc_or_end3:
  %37 = load i1, i1* %24
  store i1 %37, i1* %17
  br label %sc_and_end1
sc_and_end1:
  %38 = load i1, i1* %17
  br i1 %38, label %then4, label %else5
then4:
  %39 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %40 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %41 = load i64, i64* %5
  %42 = alloca i64
  store i64 %41, i64* %42
  %43 = alloca i1
  store i1 0, i1* %43
  %44 = call i8* @llvm.stacksave()
  br label %while_cond7
while_cond7:
  %45 = load i1, i1* %43
  %46 = xor i1 %45, true
  br i1 %46, label %while_body8, label %while_end9
while_body8:
  call void @llvm.stackrestore(i8* %44)
  %47 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %48 = call i1 @tokenize_con_avisos__is_hex_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %47)
  br i1 %48, label %then10, label %else11
then10:
  %49 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge12
else11:
  store i1 1, i1* %43
  br label %merge12
merge12:
  br label %while_cond7
while_end9:
  %50 = load %nyx_string*, %nyx_string** %3
  %51 = load i64, i64* %42
  %52 = load i64, i64* %5
  %53 = call %nyx_string* @nyx_string_substring(%nyx_string* %50, i64 %51, i64 %52)
  %54 = alloca %nyx_string*
  store %nyx_string* %53, %nyx_string** %54
  %55 = getelementptr [7 x i8], [7 x i8]* @.str279, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %55, i64 6)
  %57 = load %nyx_string*, %nyx_string** %54
  %58 = call i64 @tokenize_con_avisos__hex_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %57)
  %59 = call %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %58)
  %60 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %56, %nyx_string* %59)
  br label %merge6
else5:
  %61 = alloca i1
  store i1 false, i1* %61
  %62 = load i8, i8* %14
  %63 = getelementptr [1 x i8], [1 x i8]* @.str280, i32 0, i32 0
  %64 = load i8, i8* %63
  %65 = zext i8 %64 to i64
  %66 = zext i8 %62 to i64
  %67 = icmp eq i64 %66, %65
  br i1 %67, label %sc_and_rhs13, label %sc_and_end14
sc_and_rhs13:
  %68 = alloca i1
  store i1 true, i1* %68
  %69 = load i8, i8* %16
  %70 = getelementptr [1 x i8], [1 x i8]* @.str281, i32 0, i32 0
  %71 = load i8, i8* %70
  %72 = zext i8 %71 to i64
  %73 = zext i8 %69 to i64
  %74 = icmp eq i64 %73, %72
  br i1 %74, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %75 = load i8, i8* %16
  %76 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %77 = load i8, i8* %76
  %78 = zext i8 %77 to i64
  %79 = zext i8 %75 to i64
  %80 = icmp eq i64 %79, %78
  store i1 %80, i1* %68
  br label %sc_or_end16
sc_or_end16:
  %81 = load i1, i1* %68
  store i1 %81, i1* %61
  br label %sc_and_end14
sc_and_end14:
  %82 = load i1, i1* %61
  br i1 %82, label %then17, label %else18
then17:
  %83 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %84 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %85 = load i64, i64* %5
  %86 = alloca i64
  store i64 %85, i64* %86
  %87 = alloca i1
  store i1 0, i1* %87
  %88 = call i8* @llvm.stacksave()
  br label %while_cond20
while_cond20:
  %89 = load i1, i1* %87
  %90 = xor i1 %89, true
  br i1 %90, label %while_body21, label %while_end22
while_body21:
  call void @llvm.stackrestore(i8* %88)
  %91 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %92 = alloca i8
  store i8 %91, i8* %92
  %93 = alloca i1
  store i1 true, i1* %93
  %94 = load i8, i8* %92
  %95 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %96 = load i8, i8* %95
  %97 = zext i8 %96 to i64
  %98 = zext i8 %94 to i64
  %99 = icmp eq i64 %98, %97
  br i1 %99, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %100 = load i8, i8* %92
  %101 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %102 = load i8, i8* %101
  %103 = zext i8 %102 to i64
  %104 = zext i8 %100 to i64
  %105 = icmp eq i64 %104, %103
  store i1 %105, i1* %93
  br label %sc_or_end24
sc_or_end24:
  %106 = load i1, i1* %93
  br i1 %106, label %then25, label %else26
then25:
  %107 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge27
else26:
  store i1 1, i1* %87
  br label %merge27
merge27:
  br label %while_cond20
while_end22:
  %108 = load %nyx_string*, %nyx_string** %3
  %109 = load i64, i64* %86
  %110 = load i64, i64* %5
  %111 = call %nyx_string* @nyx_string_substring(%nyx_string* %108, i64 %109, i64 %110)
  %112 = alloca %nyx_string*
  store %nyx_string* %111, %nyx_string** %112
  %113 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %113, i64 6)
  %115 = load %nyx_string*, %nyx_string** %112
  %116 = call i64 @tokenize_con_avisos__bin_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %115)
  %117 = call %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %116)
  %118 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %114, %nyx_string* %117)
  br label %merge19
else18:
  %119 = alloca i1
  store i1 false, i1* %119
  %120 = load i8, i8* %14
  %121 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %122 = load i8, i8* %121
  %123 = zext i8 %122 to i64
  %124 = zext i8 %120 to i64
  %125 = icmp eq i64 %124, %123
  br i1 %125, label %sc_and_rhs28, label %sc_and_end29
sc_and_rhs28:
  %126 = alloca i1
  store i1 true, i1* %126
  %127 = load i8, i8* %16
  %128 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %129 = load i8, i8* %128
  %130 = zext i8 %129 to i64
  %131 = zext i8 %127 to i64
  %132 = icmp eq i64 %131, %130
  br i1 %132, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %133 = load i8, i8* %16
  %134 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %135 = load i8, i8* %134
  %136 = zext i8 %135 to i64
  %137 = zext i8 %133 to i64
  %138 = icmp eq i64 %137, %136
  store i1 %138, i1* %126
  br label %sc_or_end31
sc_or_end31:
  %139 = load i1, i1* %126
  store i1 %139, i1* %119
  br label %sc_and_end29
sc_and_end29:
  %140 = load i1, i1* %119
  br i1 %140, label %then32, label %else33
then32:
  %141 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %142 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %143 = load i64, i64* %5
  %144 = alloca i64
  store i64 %143, i64* %144
  %145 = alloca i1
  store i1 0, i1* %145
  %146 = call i8* @llvm.stacksave()
  br label %while_cond35
while_cond35:
  %147 = load i1, i1* %145
  %148 = xor i1 %147, true
  br i1 %148, label %while_body36, label %while_end37
while_body36:
  call void @llvm.stackrestore(i8* %146)
  %149 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %150 = alloca i8
  store i8 %149, i8* %150
  %151 = alloca i1
  store i1 true, i1* %151
  %152 = alloca i1
  store i1 true, i1* %152
  %153 = alloca i1
  store i1 true, i1* %153
  %154 = alloca i1
  store i1 true, i1* %154
  %155 = alloca i1
  store i1 true, i1* %155
  %156 = alloca i1
  store i1 true, i1* %156
  %157 = alloca i1
  store i1 true, i1* %157
  %158 = load i8, i8* %150
  %159 = getelementptr [1 x i8], [1 x i8]* @.str289, i32 0, i32 0
  %160 = load i8, i8* %159
  %161 = zext i8 %160 to i64
  %162 = zext i8 %158 to i64
  %163 = icmp eq i64 %162, %161
  br i1 %163, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %164 = load i8, i8* %150
  %165 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %166 = load i8, i8* %165
  %167 = zext i8 %166 to i64
  %168 = zext i8 %164 to i64
  %169 = icmp eq i64 %168, %167
  store i1 %169, i1* %157
  br label %sc_or_end39
sc_or_end39:
  %170 = load i1, i1* %157
  br i1 %170, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %171 = load i8, i8* %150
  %172 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %173 = load i8, i8* %172
  %174 = zext i8 %173 to i64
  %175 = zext i8 %171 to i64
  %176 = icmp eq i64 %175, %174
  store i1 %176, i1* %156
  br label %sc_or_end41
sc_or_end41:
  %177 = load i1, i1* %156
  br i1 %177, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %178 = load i8, i8* %150
  %179 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %180 = load i8, i8* %179
  %181 = zext i8 %180 to i64
  %182 = zext i8 %178 to i64
  %183 = icmp eq i64 %182, %181
  store i1 %183, i1* %155
  br label %sc_or_end43
sc_or_end43:
  %184 = load i1, i1* %155
  br i1 %184, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %185 = load i8, i8* %150
  %186 = getelementptr [1 x i8], [1 x i8]* @.str293, i32 0, i32 0
  %187 = load i8, i8* %186
  %188 = zext i8 %187 to i64
  %189 = zext i8 %185 to i64
  %190 = icmp eq i64 %189, %188
  store i1 %190, i1* %154
  br label %sc_or_end45
sc_or_end45:
  %191 = load i1, i1* %154
  br i1 %191, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %192 = load i8, i8* %150
  %193 = getelementptr [1 x i8], [1 x i8]* @.str294, i32 0, i32 0
  %194 = load i8, i8* %193
  %195 = zext i8 %194 to i64
  %196 = zext i8 %192 to i64
  %197 = icmp eq i64 %196, %195
  store i1 %197, i1* %153
  br label %sc_or_end47
sc_or_end47:
  %198 = load i1, i1* %153
  br i1 %198, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %199 = load i8, i8* %150
  %200 = getelementptr [1 x i8], [1 x i8]* @.str295, i32 0, i32 0
  %201 = load i8, i8* %200
  %202 = zext i8 %201 to i64
  %203 = zext i8 %199 to i64
  %204 = icmp eq i64 %203, %202
  store i1 %204, i1* %152
  br label %sc_or_end49
sc_or_end49:
  %205 = load i1, i1* %152
  br i1 %205, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %206 = load i8, i8* %150
  %207 = getelementptr [1 x i8], [1 x i8]* @.str296, i32 0, i32 0
  %208 = load i8, i8* %207
  %209 = zext i8 %208 to i64
  %210 = zext i8 %206 to i64
  %211 = icmp eq i64 %210, %209
  store i1 %211, i1* %151
  br label %sc_or_end51
sc_or_end51:
  %212 = load i1, i1* %151
  br i1 %212, label %then52, label %else53
then52:
  %213 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge54
else53:
  store i1 1, i1* %145
  br label %merge54
merge54:
  br label %while_cond35
while_end37:
  %214 = load %nyx_string*, %nyx_string** %3
  %215 = load i64, i64* %144
  %216 = load i64, i64* %5
  %217 = call %nyx_string* @nyx_string_substring(%nyx_string* %214, i64 %215, i64 %216)
  %218 = alloca %nyx_string*
  store %nyx_string* %217, %nyx_string** %218
  %219 = getelementptr [7 x i8], [7 x i8]* @.str297, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %219, i64 6)
  %221 = load %nyx_string*, %nyx_string** %218
  %222 = call i64 @tokenize_con_avisos__oct_to_int(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %221)
  %223 = call %nyx_string* @tokenize_con_avisos__int_to_dec_string(%SharedEnv_tokenize_con_avisos* %env.param, i64 %222)
  %224 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %220, %nyx_string* %223)
  br label %merge34
else33:
  %225 = alloca i1
  store i1 0, i1* %225
  %226 = call i8* @llvm.stacksave()
  br label %while_cond55
while_cond55:
  %227 = load i1, i1* %225
  %228 = xor i1 %227, true
  br i1 %228, label %while_body56, label %while_end57
while_body56:
  call void @llvm.stackrestore(i8* %226)
  %229 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %230 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %229)
  br i1 %230, label %then58, label %else59
then58:
  %231 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge60
else59:
  store i1 1, i1* %225
  br label %merge60
merge60:
  br label %while_cond55
while_end57:
  %232 = alloca i1
  store i1 false, i1* %232
  %233 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %234 = getelementptr [1 x i8], [1 x i8]* @.str298, i32 0, i32 0
  %235 = load i8, i8* %234
  %236 = zext i8 %235 to i64
  %237 = zext i8 %233 to i64
  %238 = icmp eq i64 %237, %236
  br i1 %238, label %sc_and_rhs61, label %sc_and_end62
sc_and_rhs61:
  %239 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %240 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %239)
  store i1 %240, i1* %232
  br label %sc_and_end62
sc_and_end62:
  %241 = load i1, i1* %232
  br i1 %241, label %then63, label %else64
then63:
  %242 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %243 = alloca i1
  store i1 0, i1* %243
  %244 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %245 = load i1, i1* %243
  %246 = xor i1 %245, true
  br i1 %246, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %244)
  %247 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %248 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %247)
  br i1 %248, label %then69, label %else70
then69:
  %249 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge71
else70:
  store i1 1, i1* %243
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %250 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %251 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %250)
  br i1 %251, label %then72, label %else73
then72:
  %252 = load i64, i64* %5
  %253 = alloca i64
  store i64 %252, i64* %253
  %254 = alloca i1
  store i1 0, i1* %254
  %255 = call i8* @llvm.stacksave()
  br label %while_cond75
while_cond75:
  %256 = load i1, i1* %254
  %257 = xor i1 %256, true
  br i1 %257, label %while_body76, label %while_end77
while_body76:
  call void @llvm.stackrestore(i8* %255)
  %258 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %259 = call i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %258)
  br i1 %259, label %then78, label %else79
then78:
  %260 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge80
else79:
  store i1 1, i1* %254
  br label %merge80
merge80:
  br label %while_cond75
while_end77:
  %261 = load %nyx_string*, %nyx_string** %3
  %262 = load i64, i64* %253
  %263 = load i64, i64* %5
  %264 = call %nyx_string* @nyx_string_substring(%nyx_string* %261, i64 %262, i64 %263)
  %265 = alloca %nyx_string*
  store %nyx_string* %264, %nyx_string** %265
  %266 = alloca i1
  store i1 true, i1* %266
  %267 = alloca i1
  store i1 true, i1* %267
  %268 = alloca i1
  store i1 true, i1* %268
  %269 = alloca i1
  store i1 true, i1* %269
  %270 = alloca i1
  store i1 true, i1* %270
  %271 = alloca i1
  store i1 true, i1* %271
  %272 = alloca i1
  store i1 true, i1* %272
  %273 = alloca i1
  store i1 true, i1* %273
  %274 = alloca i1
  store i1 true, i1* %274
  %275 = load %nyx_string*, %nyx_string** %265
  %276 = getelementptr [3 x i8], [3 x i8]* @.str299, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %276, i64 2)
  %278 = call i1 @nyx_string_equals(%nyx_string* %275, %nyx_string* %277)
  br i1 %278, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %279 = load %nyx_string*, %nyx_string** %265
  %280 = getelementptr [4 x i8], [4 x i8]* @.str300, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %280, i64 3)
  %282 = call i1 @nyx_string_equals(%nyx_string* %279, %nyx_string* %281)
  store i1 %282, i1* %274
  br label %sc_or_end82
sc_or_end82:
  %283 = load i1, i1* %274
  br i1 %283, label %sc_or_end84, label %sc_or_rhs83
sc_or_rhs83:
  %284 = load %nyx_string*, %nyx_string** %265
  %285 = getelementptr [4 x i8], [4 x i8]* @.str301, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %285, i64 3)
  %287 = call i1 @nyx_string_equals(%nyx_string* %284, %nyx_string* %286)
  store i1 %287, i1* %273
  br label %sc_or_end84
sc_or_end84:
  %288 = load i1, i1* %273
  br i1 %288, label %sc_or_end86, label %sc_or_rhs85
sc_or_rhs85:
  %289 = load %nyx_string*, %nyx_string** %265
  %290 = getelementptr [4 x i8], [4 x i8]* @.str302, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %290, i64 3)
  %292 = call i1 @nyx_string_equals(%nyx_string* %289, %nyx_string* %291)
  store i1 %292, i1* %272
  br label %sc_or_end86
sc_or_end86:
  %293 = load i1, i1* %272
  br i1 %293, label %sc_or_end88, label %sc_or_rhs87
sc_or_rhs87:
  %294 = load %nyx_string*, %nyx_string** %265
  %295 = getelementptr [3 x i8], [3 x i8]* @.str303, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %295, i64 2)
  %297 = call i1 @nyx_string_equals(%nyx_string* %294, %nyx_string* %296)
  store i1 %297, i1* %271
  br label %sc_or_end88
sc_or_end88:
  %298 = load i1, i1* %271
  br i1 %298, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %299 = load %nyx_string*, %nyx_string** %265
  %300 = getelementptr [4 x i8], [4 x i8]* @.str304, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %300, i64 3)
  %302 = call i1 @nyx_string_equals(%nyx_string* %299, %nyx_string* %301)
  store i1 %302, i1* %270
  br label %sc_or_end90
sc_or_end90:
  %303 = load i1, i1* %270
  br i1 %303, label %sc_or_end92, label %sc_or_rhs91
sc_or_rhs91:
  %304 = load %nyx_string*, %nyx_string** %265
  %305 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %305, i64 3)
  %307 = call i1 @nyx_string_equals(%nyx_string* %304, %nyx_string* %306)
  store i1 %307, i1* %269
  br label %sc_or_end92
sc_or_end92:
  %308 = load i1, i1* %269
  br i1 %308, label %sc_or_end94, label %sc_or_rhs93
sc_or_rhs93:
  %309 = load %nyx_string*, %nyx_string** %265
  %310 = getelementptr [4 x i8], [4 x i8]* @.str306, i32 0, i32 0
  %311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %310, i64 3)
  %312 = call i1 @nyx_string_equals(%nyx_string* %309, %nyx_string* %311)
  store i1 %312, i1* %268
  br label %sc_or_end94
sc_or_end94:
  %313 = load i1, i1* %268
  br i1 %313, label %sc_or_end96, label %sc_or_rhs95
sc_or_rhs95:
  %314 = load %nyx_string*, %nyx_string** %265
  %315 = getelementptr [4 x i8], [4 x i8]* @.str307, i32 0, i32 0
  %316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %315, i64 3)
  %317 = call i1 @nyx_string_equals(%nyx_string* %314, %nyx_string* %316)
  store i1 %317, i1* %267
  br label %sc_or_end96
sc_or_end96:
  %318 = load i1, i1* %267
  br i1 %318, label %sc_or_end98, label %sc_or_rhs97
sc_or_rhs97:
  %319 = load %nyx_string*, %nyx_string** %265
  %320 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %320, i64 5)
  %322 = call i1 @nyx_string_equals(%nyx_string* %319, %nyx_string* %321)
  store i1 %322, i1* %266
  br label %sc_or_end98
sc_or_end98:
  %323 = load i1, i1* %266
  br i1 %323, label %then99, label %else100
then99:
  %324 = load %nyx_string*, %nyx_string** %3
  %325 = load i64, i64* %12
  %326 = load i64, i64* %5
  %327 = call %nyx_string* @nyx_string_substring(%nyx_string* %324, i64 %325, i64 %326)
  %328 = alloca %nyx_string*
  store %nyx_string* %327, %nyx_string** %328
  %329 = getelementptr [7 x i8], [7 x i8]* @.str309, i32 0, i32 0
  %330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %329, i64 6)
  %331 = load %nyx_string*, %nyx_string** %328
  %332 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %330, %nyx_string* %331)
  br label %merge101
else100:
  %333 = load i64, i64* %253
  store i64 %333, i64* %5
  %334 = load %nyx_string*, %nyx_string** %3
  %335 = load i64, i64* %12
  %336 = load i64, i64* %5
  %337 = call %nyx_string* @nyx_string_substring(%nyx_string* %334, i64 %335, i64 %336)
  %338 = alloca %nyx_string*
  store %nyx_string* %337, %nyx_string** %338
  %339 = getelementptr [7 x i8], [7 x i8]* @.str310, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %339, i64 6)
  %341 = load %nyx_string*, %nyx_string** %338
  %342 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %340, %nyx_string* %341)
  br label %merge101
merge101:
  br label %merge74
else73:
  %343 = load %nyx_string*, %nyx_string** %3
  %344 = load i64, i64* %12
  %345 = load i64, i64* %5
  %346 = call %nyx_string* @nyx_string_substring(%nyx_string* %343, i64 %344, i64 %345)
  %347 = alloca %nyx_string*
  store %nyx_string* %346, %nyx_string** %347
  %348 = getelementptr [7 x i8], [7 x i8]* @.str311, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %348, i64 6)
  %350 = load %nyx_string*, %nyx_string** %347
  %351 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %349, %nyx_string* %350)
  br label %merge74
merge74:
  br label %merge34
merge34:
  br label %merge19
merge19:
  br label %merge6
merge6:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %l.param, i64 %c.param, %nyx_string* %texto.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca i64
  store i64 %l.param, i64* %11
  %12 = alloca i64
  store i64 %c.param, i64* %12
  %13 = alloca %nyx_string*
  store %nyx_string* %texto.param, %nyx_string** %13
  %14 = getelementptr [25 x i8], [25 x i8]* @.str312, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %14, i64 24)
  %16 = load i64, i64* %11
  %17 = call %nyx_string* @nyx_string_from_int(i64 %16)
  %18 = call %nyx_string* @nyx_string_concat(%nyx_string* %15, %nyx_string* %17)
  %19 = getelementptr [11 x i8], [11 x i8]* @.str313, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %19, i64 10)
  %21 = call %nyx_string* @nyx_string_concat(%nyx_string* %18, %nyx_string* %20)
  %22 = load i64, i64* %12
  %23 = call %nyx_string* @nyx_string_from_int(i64 %22)
  %24 = call %nyx_string* @nyx_string_concat(%nyx_string* %21, %nyx_string* %23)
  %25 = getelementptr [4 x i8], [4 x i8]* @.str314, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %25, i64 3)
  %27 = call %nyx_string* @nyx_string_concat(%nyx_string* %24, %nyx_string* %26)
  %28 = load %nyx_string*, %nyx_string** %13
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %28)
  %30 = call i8* @nyx_string_to_cstr(%nyx_string* %29)
  call void @nyx_print_string(i8* %30)
  %31 = load i64, i64* @g_lex_error_count
  %32 = add i64 %31, 1
  store i64 %32, i64* @g_lex_error_count
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %out.param, i1 %en_char.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca { i64, i8* }*
  store { i64, i8* }* %out.param, { i64, i8* }** %11
  %12 = alloca i1
  store i1 %en_char.param, i1* %12
  %13 = load i64, i64* %6
  %14 = alloca i64
  store i64 %13, i64* %14
  %15 = load i64, i64* %7
  %16 = sub i64 %15, 1
  %17 = alloca i64
  store i64 %16, i64* %17
  %18 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %19 = alloca i8
  store i8 %18, i8* %19
  %20 = load i8, i8* %19
  %21 = getelementptr [1 x i8], [1 x i8]* @.str315, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = zext i8 %20 to i64
  %25 = icmp eq i64 %24, %23
  br i1 %25, label %then0, label %else1
then0:
  %26 = load { i64, i8* }*, { i64, i8* }** %11
  %27 = getelementptr [1 x i8], [1 x i8]* @.str316, i32 0, i32 0
  %28 = load i8, i8* %27
  %29 = zext i8 %28 to i64
  call void @nyx_array_push({ i64, i8* }* %26, i64 %29)
  br label %merge2
else1:
  %30 = load i8, i8* %19
  %31 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %32 = load i8, i8* %31
  %33 = zext i8 %32 to i64
  %34 = zext i8 %30 to i64
  %35 = icmp eq i64 %34, %33
  br i1 %35, label %then3, label %else4
then3:
  %36 = load { i64, i8* }*, { i64, i8* }** %11
  %37 = getelementptr [1 x i8], [1 x i8]* @.str318, i32 0, i32 0
  %38 = load i8, i8* %37
  %39 = zext i8 %38 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %39)
  br label %merge5
else4:
  %40 = load i8, i8* %19
  %41 = getelementptr [1 x i8], [1 x i8]* @.str319, i32 0, i32 0
  %42 = load i8, i8* %41
  %43 = zext i8 %42 to i64
  %44 = zext i8 %40 to i64
  %45 = icmp eq i64 %44, %43
  br i1 %45, label %then6, label %else7
then6:
  %46 = trunc i64 13 to i8
  %47 = alloca i8
  store i8 %46, i8* %47
  %48 = load { i64, i8* }*, { i64, i8* }** %11
  %49 = load i8, i8* %47
  %50 = zext i8 %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %50, i64 1)
  br label %merge8
else7:
  %51 = load i8, i8* %19
  %52 = getelementptr [1 x i8], [1 x i8]* @.str320, i32 0, i32 0
  %53 = load i8, i8* %52
  %54 = zext i8 %53 to i64
  %55 = zext i8 %51 to i64
  %56 = icmp eq i64 %55, %54
  br i1 %56, label %then9, label %else10
then9:
  %57 = trunc i64 0 to i8
  %58 = alloca i8
  store i8 %57, i8* %58
  %59 = load { i64, i8* }*, { i64, i8* }** %11
  %60 = load i8, i8* %58
  %61 = zext i8 %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %61, i64 1)
  br label %merge11
else10:
  %62 = alloca i1
  store i1 true, i1* %62
  %63 = alloca i1
  store i1 true, i1* %63
  %64 = alloca i1
  store i1 true, i1* %64
  %65 = load i8, i8* %19
  %66 = getelementptr [1 x i8], [1 x i8]* @.str321, i32 0, i32 0
  %67 = load i8, i8* %66
  %68 = zext i8 %67 to i64
  %69 = zext i8 %65 to i64
  %70 = icmp eq i64 %69, %68
  br i1 %70, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %71 = load i8, i8* %19
  %72 = getelementptr [1 x i8], [1 x i8]* @.str322, i32 0, i32 0
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = zext i8 %71 to i64
  %76 = icmp eq i64 %75, %74
  store i1 %76, i1* %64
  br label %sc_or_end13
sc_or_end13:
  %77 = load i1, i1* %64
  br i1 %77, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %78 = load i8, i8* %19
  %79 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %80 = load i8, i8* %79
  %81 = zext i8 %80 to i64
  %82 = zext i8 %78 to i64
  %83 = icmp eq i64 %82, %81
  store i1 %83, i1* %63
  br label %sc_or_end15
sc_or_end15:
  %84 = load i1, i1* %63
  br i1 %84, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %85 = load i8, i8* %19
  %86 = getelementptr [1 x i8], [1 x i8]* @.str324, i32 0, i32 0
  %87 = load i8, i8* %86
  %88 = zext i8 %87 to i64
  %89 = zext i8 %85 to i64
  %90 = icmp eq i64 %89, %88
  store i1 %90, i1* %62
  br label %sc_or_end17
sc_or_end17:
  %91 = load i1, i1* %62
  br i1 %91, label %then18, label %else19
then18:
  %92 = load { i64, i8* }*, { i64, i8* }** %11
  %93 = load i8, i8* %19
  %94 = zext i8 %93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %92, i64 %94, i64 1)
  br label %merge20
else19:
  %95 = load i8, i8* %19
  %96 = getelementptr [1 x i8], [1 x i8]* @.str325, i32 0, i32 0
  %97 = load i8, i8* %96
  %98 = zext i8 %97 to i64
  %99 = zext i8 %95 to i64
  %100 = icmp eq i64 %99, %98
  br i1 %100, label %then21, label %else22
then21:
  %101 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %102 = call i64 @lex_hex_val(i8 %101)
  %103 = alloca i64
  store i64 %102, i64* %103
  %104 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %105 = call i64 @lex_hex_val(i8 %104)
  %106 = alloca i64
  store i64 %105, i64* %106
  %107 = alloca i1
  store i1 true, i1* %107
  %108 = load i64, i64* %103
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %110 = load i64, i64* %106
  %111 = icmp slt i64 %110, 0
  store i1 %111, i1* %107
  br label %sc_or_end25
sc_or_end25:
  %112 = load i1, i1* %107
  br i1 %112, label %then26, label %else27
then26:
  %113 = load i64, i64* %14
  %114 = load i64, i64* %17
  %115 = getelementptr [65 x i8], [65 x i8]* @.str326, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %115, i64 64)
  %117 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %113, i64 %114, %nyx_string* %116)
  br label %merge28
else27:
  %118 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %119 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %120 = load i64, i64* %103
  %121 = mul i64 %120, 16
  %122 = load i64, i64* %106
  %123 = add i64 %121, %122
  %124 = trunc i64 %123 to i8
  %125 = alloca i8
  store i8 %124, i8* %125
  %126 = load { i64, i8* }*, { i64, i8* }** %11
  %127 = load i8, i8* %125
  %128 = zext i8 %127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %126, i64 %128, i64 1)
  br label %merge28
merge28:
  br label %merge23
else22:
  %129 = load i8, i8* %19
  %130 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %131 = load i8, i8* %130
  %132 = zext i8 %131 to i64
  %133 = zext i8 %129 to i64
  %134 = icmp eq i64 %133, %132
  br i1 %134, label %then29, label %else30
then29:
  %135 = load { i64, i8* }*, { i64, i8* }** %11
  %136 = load i1, i1* %12
  %137 = load i64, i64* %14
  %138 = load i64, i64* %17
  %139 = call i64 @tokenize_con_avisos__scan_escape_unicode(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %135, i1 %136, i64 %137, i64 %138)
  br label %merge31
else30:
  %140 = load { i64, i8* }*, { i64, i8* }** %4
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = load i64, i64* %14
  call void @nyx_array_push_tagged({ i64, i8* }* %141, i64 %142, i64 1)
  %143 = load i64, i64* %17
  call void @nyx_array_push_tagged({ i64, i8* }* %141, i64 %143, i64 1)
  %144 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %144, i64 0)
  %146 = load i8, i8* %19
  %147 = call %nyx_string* @nyx_string_from_char(i8 %146)
  %148 = call %nyx_string* @nyx_string_concat(%nyx_string* %145, %nyx_string* %147)
  %149 = ptrtoint %nyx_string* %148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %141, i64 %149, i64 2)
  %150 = ptrtoint { i64, i8* }* %141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %140, i64 %150, i64 5)
  %151 = load { i64, i8* }*, { i64, i8* }** %11
  %152 = load i8, i8* %19
  %153 = zext i8 %152 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %151, i64 %153, i64 1)
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
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca { i64, i8* }*
  store { i64, i8* }* %out.param, { i64, i8* }** %11
  %12 = alloca i1
  store i1 %en_char.param, i1* %12
  %13 = alloca i64
  store i64 %esc_line.param, i64* %13
  %14 = alloca i64
  store i64 %esc_col.param, i64* %14
  %15 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %16 = getelementptr [1 x i8], [1 x i8]* @.str329, i32 0, i32 0
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  %19 = zext i8 %15 to i64
  %20 = icmp ne i64 %19, %18
  br i1 %20, label %then0, label %else1
then0:
  %21 = load i64, i64* %13
  %22 = load i64, i64* %14
  %23 = getelementptr [42 x i8], [42 x i8]* @.str330, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %23, i64 41)
  %25 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %21, i64 %22, %nyx_string* %24)
  ret i64 0
else1:
  br label %merge2
merge2:
  %26 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %27 = alloca i64
  store i64 0, i64* %27
  %28 = alloca i64
  store i64 0, i64* %28
  %29 = alloca i1
  store i1 0, i1* %29
  %30 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %31 = alloca i1
  store i1 false, i1* %31
  %32 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %33 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %34 = load i8, i8* %33
  %35 = zext i8 %34 to i64
  %36 = zext i8 %32 to i64
  %37 = icmp ne i64 %36, %35
  br i1 %37, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %38 = load i1, i1* %29
  %39 = xor i1 %38, true
  store i1 %39, i1* %31
  br label %sc_and_end7
sc_and_end7:
  %40 = load i1, i1* %31
  br i1 %40, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %30)
  %41 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %42 = call i64 @lex_hex_val(i8 %41)
  %43 = alloca i64
  store i64 %42, i64* %43
  %44 = load i64, i64* %43
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %then8, label %else9
then8:
  store i1 1, i1* %29
  br label %merge10
else9:
  %46 = load i64, i64* %27
  %47 = mul i64 %46, 16
  %48 = load i64, i64* %43
  %49 = add i64 %47, %48
  store i64 %49, i64* %27
  %50 = load i64, i64* %28
  %51 = add i64 %50, 1
  store i64 %51, i64* %28
  %52 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge10
merge10:
  br label %while_cond3
while_end5:
  %53 = load i1, i1* %29
  br i1 %53, label %then11, label %else12
then11:
  %54 = load i64, i64* %13
  %55 = load i64, i64* %14
  %56 = getelementptr [51 x i8], [51 x i8]* @.str332, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %56, i64 50)
  %58 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %54, i64 %55, %nyx_string* %57)
  ret i64 0
else12:
  br label %merge13
merge13:
  %59 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %60 = alloca i1
  store i1 true, i1* %60
  %61 = load i64, i64* %28
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %63 = load i64, i64* %28
  %64 = icmp sgt i64 %63, 6
  store i1 %64, i1* %60
  br label %sc_or_end15
sc_or_end15:
  %65 = load i1, i1* %60
  br i1 %65, label %then16, label %else17
then16:
  %66 = load i64, i64* %13
  %67 = load i64, i64* %14
  %68 = getelementptr [38 x i8], [38 x i8]* @.str333, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %68, i64 37)
  %70 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %66, i64 %67, %nyx_string* %69)
  ret i64 0
else17:
  br label %merge18
merge18:
  %71 = load i64, i64* %27
  %72 = icmp sgt i64 %71, 1114111
  br i1 %72, label %then19, label %else20
then19:
  %73 = load i64, i64* %13
  %74 = load i64, i64* %14
  %75 = getelementptr [53 x i8], [53 x i8]* @.str334, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %75, i64 52)
  %77 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %73, i64 %74, %nyx_string* %76)
  ret i64 0
else20:
  br label %merge21
merge21:
  %78 = alloca i1
  store i1 false, i1* %78
  %79 = load i64, i64* %27
  %80 = icmp sge i64 %79, 55296
  br i1 %80, label %sc_and_rhs22, label %sc_and_end23
sc_and_rhs22:
  %81 = load i64, i64* %27
  %82 = icmp sle i64 %81, 57343
  store i1 %82, i1* %78
  br label %sc_and_end23
sc_and_end23:
  %83 = load i1, i1* %78
  br i1 %83, label %then24, label %else25
then24:
  %84 = load i64, i64* %13
  %85 = load i64, i64* %14
  %86 = getelementptr [62 x i8], [62 x i8]* @.str335, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %86, i64 61)
  %88 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %84, i64 %85, %nyx_string* %87)
  ret i64 0
else25:
  br label %merge26
merge26:
  %89 = alloca i1
  store i1 false, i1* %89
  %90 = load i1, i1* %12
  br i1 %90, label %sc_and_rhs27, label %sc_and_end28
sc_and_rhs27:
  %91 = load i64, i64* %27
  %92 = icmp sgt i64 %91, 127
  store i1 %92, i1* %89
  br label %sc_and_end28
sc_and_end28:
  %93 = load i1, i1* %89
  br i1 %93, label %then29, label %else30
then29:
  %94 = load i64, i64* %13
  %95 = load i64, i64* %14
  %96 = getelementptr [67 x i8], [67 x i8]* @.str336, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %96, i64 66)
  %98 = call i64 @tokenize_con_avisos__lex_error_en(%SharedEnv_tokenize_con_avisos* %env.param, i64 %94, i64 %95, %nyx_string* %97)
  ret i64 0
else30:
  br label %merge31
merge31:
  %99 = load i64, i64* %27
  %100 = icmp slt i64 %99, 128
  br i1 %100, label %then32, label %else33
then32:
  %101 = load i64, i64* %27
  %102 = trunc i64 %101 to i8
  %103 = alloca i8
  store i8 %102, i8* %103
  %104 = load { i64, i8* }*, { i64, i8* }** %11
  %105 = load i8, i8* %103
  %106 = zext i8 %105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %104, i64 %106, i64 1)
  br label %merge34
else33:
  %107 = load i64, i64* %27
  %108 = icmp slt i64 %107, 2048
  br i1 %108, label %then35, label %else36
then35:
  %109 = load i64, i64* %27
  %110 = sdiv i64 %109, 64
  %111 = add i64 192, %110
  %112 = trunc i64 %111 to i8
  %113 = alloca i8
  store i8 %112, i8* %113
  %114 = load i64, i64* %27
  %115 = srem i64 %114, 64
  %116 = add i64 128, %115
  %117 = trunc i64 %116 to i8
  %118 = alloca i8
  store i8 %117, i8* %118
  %119 = load { i64, i8* }*, { i64, i8* }** %11
  %120 = load i8, i8* %113
  %121 = zext i8 %120 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %119, i64 %121, i64 1)
  %122 = load { i64, i8* }*, { i64, i8* }** %11
  %123 = load i8, i8* %118
  %124 = zext i8 %123 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %122, i64 %124, i64 1)
  br label %merge37
else36:
  %125 = load i64, i64* %27
  %126 = icmp slt i64 %125, 65536
  br i1 %126, label %then38, label %else39
then38:
  %127 = load i64, i64* %27
  %128 = sdiv i64 %127, 4096
  %129 = add i64 224, %128
  %130 = trunc i64 %129 to i8
  %131 = alloca i8
  store i8 %130, i8* %131
  %132 = load i64, i64* %27
  %133 = sdiv i64 %132, 64
  %134 = srem i64 %133, 64
  %135 = add i64 128, %134
  %136 = trunc i64 %135 to i8
  %137 = alloca i8
  store i8 %136, i8* %137
  %138 = load i64, i64* %27
  %139 = srem i64 %138, 64
  %140 = add i64 128, %139
  %141 = trunc i64 %140 to i8
  %142 = alloca i8
  store i8 %141, i8* %142
  %143 = load { i64, i8* }*, { i64, i8* }** %11
  %144 = load i8, i8* %131
  %145 = zext i8 %144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %143, i64 %145, i64 1)
  %146 = load { i64, i8* }*, { i64, i8* }** %11
  %147 = load i8, i8* %137
  %148 = zext i8 %147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %148, i64 1)
  %149 = load { i64, i8* }*, { i64, i8* }** %11
  %150 = load i8, i8* %142
  %151 = zext i8 %150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %149, i64 %151, i64 1)
  br label %merge40
else39:
  %152 = load i64, i64* %27
  %153 = sdiv i64 %152, 262144
  %154 = add i64 240, %153
  %155 = trunc i64 %154 to i8
  %156 = alloca i8
  store i8 %155, i8* %156
  %157 = load i64, i64* %27
  %158 = sdiv i64 %157, 4096
  %159 = srem i64 %158, 64
  %160 = add i64 128, %159
  %161 = trunc i64 %160 to i8
  %162 = alloca i8
  store i8 %161, i8* %162
  %163 = load i64, i64* %27
  %164 = sdiv i64 %163, 64
  %165 = srem i64 %164, 64
  %166 = add i64 128, %165
  %167 = trunc i64 %166 to i8
  %168 = alloca i8
  store i8 %167, i8* %168
  %169 = load i64, i64* %27
  %170 = srem i64 %169, 64
  %171 = add i64 128, %170
  %172 = trunc i64 %171 to i8
  %173 = alloca i8
  store i8 %172, i8* %173
  %174 = load { i64, i8* }*, { i64, i8* }** %11
  %175 = load i8, i8* %156
  %176 = zext i8 %175 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %174, i64 %176, i64 1)
  %177 = load { i64, i8* }*, { i64, i8* }** %11
  %178 = load i8, i8* %162
  %179 = zext i8 %178 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %177, i64 %179, i64 1)
  %180 = load { i64, i8* }*, { i64, i8* }** %11
  %181 = load i8, i8* %168
  %182 = zext i8 %181 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %180, i64 %182, i64 1)
  %183 = load { i64, i8* }*, { i64, i8* }** %11
  %184 = load i8, i8* %173
  %185 = zext i8 %184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %183, i64 %185, i64 1)
  br label %merge40
merge40:
  br label %merge37
merge37:
  br label %merge34
merge34:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_string_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %chars.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = alloca { i64, i8* }*
  store { i64, i8* }* %chars.param, { i64, i8* }** %11
  %12 = alloca i1
  store i1 0, i1* %12
  %13 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %14 = load i1, i1* %12
  %15 = xor i1 %14, true
  br i1 %15, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %13)
  %16 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %16, label %then3, label %else4
then3:
  %17 = getelementptr [25 x i8], [25 x i8]* @.str337, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %17, i64 24)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  call void @nyx_print_string(i8* %19)
  %20 = load i64, i64* @g_lex_error_count
  %21 = add i64 %20, 1
  store i64 %21, i64* @g_lex_error_count
  store i1 1, i1* %12
  br label %merge5
else4:
  %22 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %23 = alloca i8
  store i8 %22, i8* %23
  %24 = load i8, i8* %23
  %25 = getelementptr [1 x i8], [1 x i8]* @.str338, i32 0, i32 0
  %26 = load i8, i8* %25
  %27 = zext i8 %26 to i64
  %28 = zext i8 %24 to i64
  %29 = icmp eq i64 %28, %27
  br i1 %29, label %then6, label %else7
then6:
  %30 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %31 = getelementptr [7 x i8], [7 x i8]* @.str339, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %31, i64 6)
  %33 = load { i64, i8* }*, { i64, i8* }** %11
  %34 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %33)
  %35 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %32, %nyx_string* %34)
  store i1 1, i1* %12
  br label %merge8
else7:
  %36 = alloca i1
  store i1 false, i1* %36
  %37 = load i8, i8* %23
  %38 = getelementptr [1 x i8], [1 x i8]* @.str340, i32 0, i32 0
  %39 = load i8, i8* %38
  %40 = zext i8 %39 to i64
  %41 = zext i8 %37 to i64
  %42 = icmp eq i64 %41, %40
  br i1 %42, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %43 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %44 = getelementptr [1 x i8], [1 x i8]* @.str341, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = zext i8 %43 to i64
  %48 = icmp eq i64 %47, %46
  store i1 %48, i1* %36
  br label %sc_and_end10
sc_and_end10:
  %49 = load i1, i1* %36
  br i1 %49, label %then11, label %else12
then11:
  %50 = getelementptr [7 x i8], [7 x i8]* @.str342, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %50, i64 6)
  %52 = load { i64, i8* }*, { i64, i8* }** %11
  %53 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %52)
  %54 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %51, %nyx_string* %53)
  %55 = getelementptr [5 x i8], [5 x i8]* @.str343, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %55, i64 4)
  %57 = getelementptr [2 x i8], [2 x i8]* @.str344, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %57, i64 1)
  %59 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %56, %nyx_string* %58)
  %60 = getelementptr [11 x i8], [11 x i8]* @.str345, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %60, i64 10)
  %62 = getelementptr [2 x i8], [2 x i8]* @.str346, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %62, i64 1)
  %64 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %61, %nyx_string* %63)
  %65 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %66 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %67 = load i64, i64* %9
  %68 = add i64 %67, 1
  store i64 %68, i64* %9
  store i1 1, i1* %12
  br label %merge13
else12:
  %69 = load i8, i8* %23
  %70 = getelementptr [1 x i8], [1 x i8]* @.str347, i32 0, i32 0
  %71 = load i8, i8* %70
  %72 = zext i8 %71 to i64
  %73 = zext i8 %69 to i64
  %74 = icmp eq i64 %73, %72
  br i1 %74, label %then14, label %else15
then14:
  %75 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %76 = load { i64, i8* }*, { i64, i8* }** %11
  %77 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %76, i1 0)
  br label %merge16
else15:
  %78 = load { i64, i8* }*, { i64, i8* }** %11
  %79 = load i8, i8* %23
  %80 = zext i8 %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %80, i64 1)
  %81 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
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
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call { i64, i8* }* @nyx_array_new_ptr()
  %12 = alloca { i64, i8* }*
  store { i64, i8* }* %11, { i64, i8* }** %12
  %13 = alloca i1
  store i1 0, i1* %13
  %14 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %15 = load i1, i1* %13
  %16 = xor i1 %15, true
  br i1 %16, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %14)
  %17 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %17, label %then3, label %else4
then3:
  %18 = getelementptr [99 x i8], [99 x i8]* @.str348, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %18, i64 98)
  %20 = call i8* @nyx_string_to_cstr(%nyx_string* %19)
  call void @nyx_print_string(i8* %20)
  %21 = load i64, i64* @g_lex_error_count
  %22 = add i64 %21, 1
  store i64 %22, i64* @g_lex_error_count
  store i1 1, i1* %13
  br label %merge5
else4:
  %23 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %24 = alloca i8
  store i8 %23, i8* %24
  %25 = alloca i1
  store i1 false, i1* %25
  %26 = load i8, i8* %24
  %27 = getelementptr [1 x i8], [1 x i8]* @.str349, i32 0, i32 0
  %28 = load i8, i8* %27
  %29 = zext i8 %28 to i64
  %30 = zext i8 %26 to i64
  %31 = icmp eq i64 %30, %29
  br i1 %31, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %32 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %33 = getelementptr [1 x i8], [1 x i8]* @.str350, i32 0, i32 0
  %34 = load i8, i8* %33
  %35 = zext i8 %34 to i64
  %36 = zext i8 %32 to i64
  %37 = icmp eq i64 %36, %35
  store i1 %37, i1* %25
  br label %sc_and_end7
sc_and_end7:
  %38 = load i1, i1* %25
  br i1 %38, label %then8, label %else9
then8:
  %39 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %40 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %41 = getelementptr [7 x i8], [7 x i8]* @.str351, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %41, i64 6)
  %43 = load { i64, i8* }*, { i64, i8* }** %12
  %44 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %43)
  %45 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %42, %nyx_string* %44)
  store i1 1, i1* %13
  br label %merge10
else9:
  %46 = load i8, i8* %24
  %47 = getelementptr [1 x i8], [1 x i8]* @.str352, i32 0, i32 0
  %48 = load i8, i8* %47
  %49 = zext i8 %48 to i64
  %50 = zext i8 %46 to i64
  %51 = icmp eq i64 %50, %49
  br i1 %51, label %then11, label %else12
then11:
  %52 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %53 = load { i64, i8* }*, { i64, i8* }** %12
  %54 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %53, i1 0)
  br label %merge13
else12:
  %55 = load { i64, i8* }*, { i64, i8* }** %12
  %56 = load i8, i8* %24
  %57 = zext i8 %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %55, i64 %57, i64 1)
  %58 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
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
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %12 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %13 = getelementptr [1 x i8], [1 x i8]* @.str353, i32 0, i32 0
  %14 = load i8, i8* %13
  %15 = zext i8 %14 to i64
  %16 = zext i8 %12 to i64
  %17 = icmp eq i64 %16, %15
  br i1 %17, label %then0, label %else1
then0:
  %18 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %19 = call { i64, i8* }* @nyx_array_new_ptr()
  %20 = alloca { i64, i8* }*
  store { i64, i8* }* %19, { i64, i8* }** %20
  %21 = alloca i1
  store i1 0, i1* %21
  %22 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %23 = load i1, i1* %21
  %24 = xor i1 %23, true
  br i1 %24, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %22)
  %25 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %25, label %then6, label %else7
then6:
  %26 = getelementptr [37 x i8], [37 x i8]* @.str354, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %26, i64 36)
  %28 = call i8* @nyx_string_to_cstr(%nyx_string* %27)
  call void @nyx_print_string(i8* %28)
  %29 = load i64, i64* @g_lex_error_count
  %30 = add i64 %29, 1
  store i64 %30, i64* @g_lex_error_count
  store i1 1, i1* %21
  br label %merge8
else7:
  %31 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %32 = alloca i8
  store i8 %31, i8* %32
  %33 = alloca i1
  store i1 false, i1* %33
  %34 = load i8, i8* %32
  %35 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %36 = load i8, i8* %35
  %37 = zext i8 %36 to i64
  %38 = zext i8 %34 to i64
  %39 = icmp eq i64 %38, %37
  br i1 %39, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %40 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %41 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %42 = load i8, i8* %41
  %43 = zext i8 %42 to i64
  %44 = zext i8 %40 to i64
  %45 = icmp eq i64 %44, %43
  store i1 %45, i1* %33
  br label %sc_and_end10
sc_and_end10:
  %46 = load i1, i1* %33
  br i1 %46, label %then11, label %else12
then11:
  %47 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %48 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %49 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %49, label %then14, label %else15
then14:
  %50 = load { i64, i8* }*, { i64, i8* }** %20
  %51 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %52 = load i8, i8* %51
  %53 = zext i8 %52 to i64
  call void @nyx_array_push({ i64, i8* }* %50, i64 %53)
  %54 = load { i64, i8* }*, { i64, i8* }** %20
  %55 = getelementptr [1 x i8], [1 x i8]* @.str358, i32 0, i32 0
  %56 = load i8, i8* %55
  %57 = zext i8 %56 to i64
  call void @nyx_array_push({ i64, i8* }* %54, i64 %57)
  br label %merge16
else15:
  %58 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %59 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %60 = load i8, i8* %59
  %61 = zext i8 %60 to i64
  %62 = zext i8 %58 to i64
  %63 = icmp eq i64 %62, %61
  br i1 %63, label %then17, label %else18
then17:
  %64 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i1 1, i1* %21
  br label %merge19
else18:
  %65 = load { i64, i8* }*, { i64, i8* }** %20
  %66 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %67 = load i8, i8* %66
  %68 = zext i8 %67 to i64
  call void @nyx_array_push({ i64, i8* }* %65, i64 %68)
  %69 = load { i64, i8* }*, { i64, i8* }** %20
  %70 = getelementptr [1 x i8], [1 x i8]* @.str361, i32 0, i32 0
  %71 = load i8, i8* %70
  %72 = zext i8 %71 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %72)
  br label %merge19
merge19:
  br label %merge16
merge16:
  br label %merge13
else12:
  %73 = load { i64, i8* }*, { i64, i8* }** %20
  %74 = load i8, i8* %32
  %75 = zext i8 %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %75, i64 1)
  %76 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge13
merge13:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %77 = getelementptr [7 x i8], [7 x i8]* @.str362, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %77, i64 6)
  %79 = load { i64, i8* }*, { i64, i8* }** %20
  %80 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %79)
  %81 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %78, %nyx_string* %80)
  br label %merge2
else1:
  %82 = getelementptr [7 x i8], [7 x i8]* @.str363, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %82, i64 6)
  %84 = getelementptr [1 x i8], [1 x i8]* @.str364, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %84, i64 0)
  %86 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %83, %nyx_string* %85)
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_raw_string(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %12 = call { i64, i8* }* @nyx_array_new_ptr()
  %13 = alloca { i64, i8* }*
  store { i64, i8* }* %12, { i64, i8* }** %13
  %14 = alloca i1
  store i1 0, i1* %14
  %15 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %16 = load i1, i1* %14
  %17 = xor i1 %16, true
  br i1 %17, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %15)
  %18 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %18, label %then3, label %else4
then3:
  %19 = getelementptr [31 x i8], [31 x i8]* @.str365, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %19, i64 30)
  %21 = call i8* @nyx_string_to_cstr(%nyx_string* %20)
  call void @nyx_print_string(i8* %21)
  %22 = load i64, i64* @g_lex_error_count
  %23 = add i64 %22, 1
  store i64 %23, i64* @g_lex_error_count
  store i1 1, i1* %14
  br label %merge5
else4:
  %24 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %25 = alloca i8
  store i8 %24, i8* %25
  %26 = load i8, i8* %25
  %27 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %28 = load i8, i8* %27
  %29 = zext i8 %28 to i64
  %30 = zext i8 %26 to i64
  %31 = icmp eq i64 %30, %29
  br i1 %31, label %then6, label %else7
then6:
  %32 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  store i1 1, i1* %14
  br label %merge8
else7:
  %33 = load { i64, i8* }*, { i64, i8* }** %13
  %34 = load i8, i8* %25
  %35 = zext i8 %34 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 %35, i64 1)
  %36 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %37 = getelementptr [7 x i8], [7 x i8]* @.str367, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %37, i64 6)
  %39 = load { i64, i8* }*, { i64, i8* }** %13
  %40 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %39)
  %41 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %38, %nyx_string* %40)
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_string(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %12 = call { i64, i8* }* @nyx_array_new_ptr()
  %13 = alloca { i64, i8* }*
  store { i64, i8* }* %12, { i64, i8* }** %13
  %14 = load { i64, i8* }*, { i64, i8* }** %13
  %15 = call i64 @tokenize_con_avisos__scan_string_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %14)
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_string_rest(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call { i64, i8* }* @nyx_array_new_ptr()
  %12 = alloca { i64, i8* }*
  store { i64, i8* }* %11, { i64, i8* }** %12
  %13 = alloca i1
  store i1 0, i1* %13
  %14 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %15 = load i1, i1* %13
  %16 = xor i1 %15, true
  br i1 %16, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %14)
  %17 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  br i1 %17, label %then3, label %else4
then3:
  %18 = getelementptr [25 x i8], [25 x i8]* @.str368, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %18, i64 24)
  %20 = call i8* @nyx_string_to_cstr(%nyx_string* %19)
  call void @nyx_print_string(i8* %20)
  %21 = load i64, i64* @g_lex_error_count
  %22 = add i64 %21, 1
  store i64 %22, i64* @g_lex_error_count
  store i1 1, i1* %13
  br label %merge5
else4:
  %23 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %24 = alloca i8
  store i8 %23, i8* %24
  %25 = load i8, i8* %24
  %26 = getelementptr [1 x i8], [1 x i8]* @.str369, i32 0, i32 0
  %27 = load i8, i8* %26
  %28 = zext i8 %27 to i64
  %29 = zext i8 %25 to i64
  %30 = icmp eq i64 %29, %28
  br i1 %30, label %then6, label %else7
then6:
  %31 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %32 = load { i64, i8* }*, { i64, i8* }** %12
  %33 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %32)
  %34 = alloca %nyx_string*
  store %nyx_string* %33, %nyx_string** %34
  %35 = load %nyx_string*, %nyx_string** %34
  %36 = call i64 @nyx_string_byte_length(%nyx_string* %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %then9, label %else10
then9:
  %38 = getelementptr [5 x i8], [5 x i8]* @.str370, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %38, i64 4)
  %40 = getelementptr [2 x i8], [2 x i8]* @.str371, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %40, i64 1)
  %42 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %39, %nyx_string* %41)
  %43 = getelementptr [7 x i8], [7 x i8]* @.str372, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %43, i64 6)
  %45 = load %nyx_string*, %nyx_string** %34
  %46 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %44, %nyx_string* %45)
  br label %merge11
else10:
  br label %merge11
merge11:
  store i1 1, i1* %13
  br label %merge8
else7:
  %47 = alloca i1
  store i1 false, i1* %47
  %48 = load i8, i8* %24
  %49 = getelementptr [1 x i8], [1 x i8]* @.str373, i32 0, i32 0
  %50 = load i8, i8* %49
  %51 = zext i8 %50 to i64
  %52 = zext i8 %48 to i64
  %53 = icmp eq i64 %52, %51
  br i1 %53, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %54 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %55 = getelementptr [1 x i8], [1 x i8]* @.str374, i32 0, i32 0
  %56 = load i8, i8* %55
  %57 = zext i8 %56 to i64
  %58 = zext i8 %54 to i64
  %59 = icmp eq i64 %58, %57
  store i1 %59, i1* %47
  br label %sc_and_end13
sc_and_end13:
  %60 = load i1, i1* %47
  br i1 %60, label %then14, label %else15
then14:
  %61 = load { i64, i8* }*, { i64, i8* }** %12
  %62 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %61)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = load %nyx_string*, %nyx_string** %63
  %65 = call i64 @nyx_string_byte_length(%nyx_string* %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %then17, label %else18
then17:
  %67 = getelementptr [5 x i8], [5 x i8]* @.str375, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %67, i64 4)
  %69 = getelementptr [2 x i8], [2 x i8]* @.str376, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %69, i64 1)
  %71 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %68, %nyx_string* %70)
  %72 = getelementptr [7 x i8], [7 x i8]* @.str377, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %72, i64 6)
  %74 = load %nyx_string*, %nyx_string** %63
  %75 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %73, %nyx_string* %74)
  br label %merge19
else18:
  br label %merge19
merge19:
  %76 = getelementptr [5 x i8], [5 x i8]* @.str378, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %76, i64 4)
  %78 = getelementptr [2 x i8], [2 x i8]* @.str379, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %78, i64 1)
  %80 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %77, %nyx_string* %79)
  %81 = getelementptr [11 x i8], [11 x i8]* @.str380, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %81, i64 10)
  %83 = getelementptr [2 x i8], [2 x i8]* @.str381, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %83, i64 1)
  %85 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %82, %nyx_string* %84)
  %86 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %87 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %88 = load i64, i64* %9
  %89 = add i64 %88, 1
  store i64 %89, i64* %9
  store i1 1, i1* %13
  br label %merge16
else15:
  %90 = load i8, i8* %24
  %91 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %92 = load i8, i8* %91
  %93 = zext i8 %92 to i64
  %94 = zext i8 %90 to i64
  %95 = icmp eq i64 %94, %93
  br i1 %95, label %then20, label %else21
then20:
  %96 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %97 = load { i64, i8* }*, { i64, i8* }** %12
  %98 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %97, i1 0)
  br label %merge22
else21:
  %99 = load { i64, i8* }*, { i64, i8* }** %12
  %100 = load i8, i8* %24
  %101 = zext i8 %100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %99, i64 %101, i64 1)
  %102 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
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
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %12 = load i64, i64* %5
  %13 = alloca i64
  store i64 %12, i64* %13
  %14 = alloca i1
  store i1 0, i1* %14
  %15 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %16 = load i1, i1* %14
  %17 = xor i1 %16, true
  br i1 %17, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %15)
  %18 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %19 = call i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %18)
  br i1 %19, label %then3, label %else4
then3:
  %20 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %14
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %21 = load %nyx_string*, %nyx_string** %3
  %22 = load i64, i64* %13
  %23 = load i64, i64* %5
  %24 = call %nyx_string* @nyx_string_substring(%nyx_string* %21, i64 %22, i64 %23)
  %25 = alloca %nyx_string*
  store %nyx_string* %24, %nyx_string** %25
  %26 = getelementptr [9 x i8], [9 x i8]* @.str383, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %26, i64 8)
  %28 = getelementptr [2 x i8], [2 x i8]* @.str384, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %28, i64 1)
  %30 = load %nyx_string*, %nyx_string** %25
  %31 = call %nyx_string* @nyx_string_concat(%nyx_string* %29, %nyx_string* %30)
  %32 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %27, %nyx_string* %31)
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_char(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %12 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  %13 = xor i1 %12, true
  br i1 %13, label %then0, label %else1
then0:
  %14 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %15 = getelementptr [1 x i8], [1 x i8]* @.str385, i32 0, i32 0
  %16 = load i8, i8* %15
  %17 = zext i8 %16 to i64
  %18 = zext i8 %14 to i64
  %19 = icmp ne i64 %18, %17
  br i1 %19, label %then3, label %else4
then3:
  %20 = getelementptr [2 x i8], [2 x i8]* @.str386, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %20, i64 1)
  %22 = alloca %nyx_string*
  store %nyx_string* %21, %nyx_string** %22
  %23 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %24 = getelementptr [1 x i8], [1 x i8]* @.str387, i32 0, i32 0
  %25 = load i8, i8* %24
  %26 = zext i8 %25 to i64
  %27 = zext i8 %23 to i64
  %28 = icmp eq i64 %27, %26
  br i1 %28, label %then6, label %else7
then6:
  %29 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = load { i64, i8* }*, { i64, i8* }** %31
  %33 = call i64 @tokenize_con_avisos__scan_escape(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %32, i1 1)
  %34 = load { i64, i8* }*, { i64, i8* }** %31
  %35 = call %nyx_string* @tokenize_con_avisos__build_string_from_chars(%SharedEnv_tokenize_con_avisos* %env.param, { i64, i8* }* %34)
  store %nyx_string* %35, %nyx_string** %22
  br label %merge8
else7:
  %36 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %37 = call %nyx_string* @nyx_string_from_char(i8 %36)
  store %nyx_string* %37, %nyx_string** %22
  br label %merge8
merge8:
  %38 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %39 = getelementptr [1 x i8], [1 x i8]* @.str388, i32 0, i32 0
  %40 = load i8, i8* %39
  %41 = zext i8 %40 to i64
  %42 = zext i8 %38 to i64
  %43 = icmp eq i64 %42, %41
  br i1 %43, label %then9, label %else10
then9:
  %44 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %45 = getelementptr [5 x i8], [5 x i8]* @.str389, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %45, i64 4)
  %47 = load %nyx_string*, %nyx_string** %22
  %48 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %46, %nyx_string* %47)
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
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = load i64, i64* %5
  %12 = alloca i64
  store i64 %11, i64* %12
  %13 = alloca i1
  store i1 0, i1* %13
  %14 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %15 = load i1, i1* %13
  %16 = xor i1 %15, true
  br i1 %16, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %14)
  %17 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %18 = call i1 @tokenize_con_avisos__is_alphanumeric(%SharedEnv_tokenize_con_avisos* %env.param, i8 %17)
  br i1 %18, label %then3, label %else4
then3:
  %19 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %13
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %20 = load %nyx_string*, %nyx_string** %3
  %21 = load i64, i64* %12
  %22 = load i64, i64* %5
  %23 = call %nyx_string* @nyx_string_substring(%nyx_string* %20, i64 %21, i64 %22)
  %24 = alloca %nyx_string*
  store %nyx_string* %23, %nyx_string** %24
  %25 = load %nyx_string*, %nyx_string** %24
  %26 = call i1 @is_keyword(%nyx_string* %25)
  br i1 %26, label %then6, label %else7
then6:
  %27 = load %nyx_string*, %nyx_string** %24
  %28 = call %nyx_string* @keyword_to_type(%nyx_string* %27)
  %29 = load %nyx_string*, %nyx_string** %24
  %30 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %28, %nyx_string* %29)
  br label %merge8
else7:
  %31 = getelementptr [11 x i8], [11 x i8]* @.str390, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %31, i64 10)
  %33 = load %nyx_string*, %nyx_string** %24
  %34 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %32, %nyx_string* %33)
  br label %merge8
merge8:
  ret i64 0
}

define internal i64 @tokenize_con_avisos__scan_token(%SharedEnv_tokenize_con_avisos* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_tokenize_con_avisos, %SharedEnv_tokenize_con_avisos* %env.param, i32 0, i32 9
  %11 = call i64 @tokenize_con_avisos__skip_whitespace(%SharedEnv_tokenize_con_avisos* %env.param)
  %12 = call i1 @tokenize_con_avisos__at_end(%SharedEnv_tokenize_con_avisos* %env.param)
  %13 = xor i1 %12, true
  br i1 %13, label %then0, label %else1
then0:
  %14 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %15 = alloca i8
  store i8 %14, i8* %15
  %16 = load i8, i8* %15
  %17 = getelementptr [1 x i8], [1 x i8]* @.str391, i32 0, i32 0
  %18 = load i8, i8* %17
  %19 = zext i8 %18 to i64
  %20 = zext i8 %16 to i64
  %21 = icmp eq i64 %20, %19
  br i1 %21, label %then3, label %else4
then3:
  %22 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge5
else4:
  %23 = load i8, i8* %15
  %24 = getelementptr [1 x i8], [1 x i8]* @.str392, i32 0, i32 0
  %25 = load i8, i8* %24
  %26 = zext i8 %25 to i64
  %27 = zext i8 %23 to i64
  %28 = icmp eq i64 %27, %26
  br i1 %28, label %then6, label %else7
then6:
  %29 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %30 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %31 = getelementptr [1 x i8], [1 x i8]* @.str393, i32 0, i32 0
  %32 = load i8, i8* %31
  %33 = zext i8 %32 to i64
  %34 = zext i8 %30 to i64
  %35 = icmp eq i64 %34, %33
  br i1 %35, label %then9, label %else10
then9:
  %36 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %37 = getelementptr [12 x i8], [12 x i8]* @.str394, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %37, i64 11)
  %39 = getelementptr [3 x i8], [3 x i8]* @.str395, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %39, i64 2)
  %41 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %38, %nyx_string* %40)
  br label %merge11
else10:
  %42 = getelementptr [5 x i8], [5 x i8]* @.str396, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %42, i64 4)
  %44 = getelementptr [2 x i8], [2 x i8]* @.str397, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %44, i64 1)
  %46 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %43, %nyx_string* %45)
  br label %merge11
merge11:
  br label %merge8
else7:
  %47 = load i8, i8* %15
  %48 = getelementptr [1 x i8], [1 x i8]* @.str398, i32 0, i32 0
  %49 = load i8, i8* %48
  %50 = zext i8 %49 to i64
  %51 = zext i8 %47 to i64
  %52 = icmp eq i64 %51, %50
  br i1 %52, label %then12, label %else13
then12:
  %53 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %54 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %55 = getelementptr [1 x i8], [1 x i8]* @.str399, i32 0, i32 0
  %56 = load i8, i8* %55
  %57 = zext i8 %56 to i64
  %58 = zext i8 %54 to i64
  %59 = icmp eq i64 %58, %57
  br i1 %59, label %then15, label %else16
then15:
  %60 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %61 = getelementptr [6 x i8], [6 x i8]* @.str400, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %61, i64 5)
  %63 = getelementptr [3 x i8], [3 x i8]* @.str401, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %63, i64 2)
  %65 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %62, %nyx_string* %64)
  br label %merge17
else16:
  %66 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %67 = getelementptr [1 x i8], [1 x i8]* @.str402, i32 0, i32 0
  %68 = load i8, i8* %67
  %69 = zext i8 %68 to i64
  %70 = zext i8 %66 to i64
  %71 = icmp eq i64 %70, %69
  br i1 %71, label %then18, label %else19
then18:
  %72 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %73 = getelementptr [13 x i8], [13 x i8]* @.str403, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %73, i64 12)
  %75 = getelementptr [3 x i8], [3 x i8]* @.str404, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %75, i64 2)
  %77 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %74, %nyx_string* %76)
  br label %merge20
else19:
  %78 = getelementptr [6 x i8], [6 x i8]* @.str405, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %78, i64 5)
  %80 = getelementptr [2 x i8], [2 x i8]* @.str406, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %80, i64 1)
  %82 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %79, %nyx_string* %81)
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge14
else13:
  %83 = load i8, i8* %15
  %84 = getelementptr [1 x i8], [1 x i8]* @.str407, i32 0, i32 0
  %85 = load i8, i8* %84
  %86 = zext i8 %85 to i64
  %87 = zext i8 %83 to i64
  %88 = icmp eq i64 %87, %86
  br i1 %88, label %then21, label %else22
then21:
  %89 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %90 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %91 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %92 = load i8, i8* %91
  %93 = zext i8 %92 to i64
  %94 = zext i8 %90 to i64
  %95 = icmp eq i64 %94, %93
  br i1 %95, label %then24, label %else25
then24:
  %96 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %97 = getelementptr [6 x i8], [6 x i8]* @.str409, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %97, i64 5)
  %99 = getelementptr [3 x i8], [3 x i8]* @.str410, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %99, i64 2)
  %101 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %98, %nyx_string* %100)
  br label %merge26
else25:
  %102 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %103 = getelementptr [1 x i8], [1 x i8]* @.str411, i32 0, i32 0
  %104 = load i8, i8* %103
  %105 = zext i8 %104 to i64
  %106 = zext i8 %102 to i64
  %107 = icmp eq i64 %106, %105
  br i1 %107, label %then27, label %else28
then27:
  %108 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %109 = getelementptr [12 x i8], [12 x i8]* @.str412, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %109, i64 11)
  %111 = getelementptr [3 x i8], [3 x i8]* @.str413, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %111, i64 2)
  %113 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %110, %nyx_string* %112)
  br label %merge29
else28:
  %114 = getelementptr [5 x i8], [5 x i8]* @.str414, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %114, i64 4)
  %116 = getelementptr [2 x i8], [2 x i8]* @.str415, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %116, i64 1)
  %118 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %115, %nyx_string* %117)
  br label %merge29
merge29:
  br label %merge26
merge26:
  br label %merge23
else22:
  %119 = load i8, i8* %15
  %120 = getelementptr [1 x i8], [1 x i8]* @.str416, i32 0, i32 0
  %121 = load i8, i8* %120
  %122 = zext i8 %121 to i64
  %123 = zext i8 %119 to i64
  %124 = icmp eq i64 %123, %122
  br i1 %124, label %then30, label %else31
then30:
  %125 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %126 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %127 = getelementptr [1 x i8], [1 x i8]* @.str417, i32 0, i32 0
  %128 = load i8, i8* %127
  %129 = zext i8 %128 to i64
  %130 = zext i8 %126 to i64
  %131 = icmp eq i64 %130, %129
  br i1 %131, label %then33, label %else34
then33:
  %132 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %133 = call i64 @tokenize_con_avisos__skip_comment(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge35
else34:
  %134 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %135 = getelementptr [1 x i8], [1 x i8]* @.str418, i32 0, i32 0
  %136 = load i8, i8* %135
  %137 = zext i8 %136 to i64
  %138 = zext i8 %134 to i64
  %139 = icmp eq i64 %138, %137
  br i1 %139, label %then36, label %else37
then36:
  %140 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %141 = call i64 @tokenize_con_avisos__skip_block_comment(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge38
else37:
  %142 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %143 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %144 = load i8, i8* %143
  %145 = zext i8 %144 to i64
  %146 = zext i8 %142 to i64
  %147 = icmp eq i64 %146, %145
  br i1 %147, label %then39, label %else40
then39:
  %148 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %149 = getelementptr [13 x i8], [13 x i8]* @.str420, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %149, i64 12)
  %151 = getelementptr [3 x i8], [3 x i8]* @.str421, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %151, i64 2)
  %153 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %150, %nyx_string* %152)
  br label %merge41
else40:
  %154 = getelementptr [6 x i8], [6 x i8]* @.str422, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %154, i64 5)
  %156 = getelementptr [2 x i8], [2 x i8]* @.str423, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %156, i64 1)
  %158 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %155, %nyx_string* %157)
  br label %merge41
merge41:
  br label %merge38
merge38:
  br label %merge35
merge35:
  br label %merge32
else31:
  %159 = load i8, i8* %15
  %160 = getelementptr [1 x i8], [1 x i8]* @.str424, i32 0, i32 0
  %161 = load i8, i8* %160
  %162 = zext i8 %161 to i64
  %163 = zext i8 %159 to i64
  %164 = icmp eq i64 %163, %162
  br i1 %164, label %then42, label %else43
then42:
  %165 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %166 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %167 = getelementptr [1 x i8], [1 x i8]* @.str425, i32 0, i32 0
  %168 = load i8, i8* %167
  %169 = zext i8 %168 to i64
  %170 = zext i8 %166 to i64
  %171 = icmp eq i64 %170, %169
  br i1 %171, label %then45, label %else46
then45:
  %172 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %173 = getelementptr [15 x i8], [15 x i8]* @.str426, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %173, i64 14)
  %175 = getelementptr [3 x i8], [3 x i8]* @.str427, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %175, i64 2)
  %177 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %174, %nyx_string* %176)
  br label %merge47
else46:
  %178 = getelementptr [8 x i8], [8 x i8]* @.str428, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %178, i64 7)
  %180 = getelementptr [2 x i8], [2 x i8]* @.str429, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %180, i64 1)
  %182 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %179, %nyx_string* %181)
  br label %merge47
merge47:
  br label %merge44
else43:
  %183 = load i8, i8* %15
  %184 = getelementptr [1 x i8], [1 x i8]* @.str430, i32 0, i32 0
  %185 = load i8, i8* %184
  %186 = zext i8 %185 to i64
  %187 = zext i8 %183 to i64
  %188 = icmp eq i64 %187, %186
  br i1 %188, label %then48, label %else49
then48:
  %189 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %190 = getelementptr [6 x i8], [6 x i8]* @.str431, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %190, i64 5)
  %192 = getelementptr [2 x i8], [2 x i8]* @.str432, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %192, i64 1)
  %194 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %191, %nyx_string* %193)
  br label %merge50
else49:
  %195 = load i8, i8* %15
  %196 = getelementptr [1 x i8], [1 x i8]* @.str433, i32 0, i32 0
  %197 = load i8, i8* %196
  %198 = zext i8 %197 to i64
  %199 = zext i8 %195 to i64
  %200 = icmp eq i64 %199, %198
  br i1 %200, label %then51, label %else52
then51:
  %201 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %202 = getelementptr [11 x i8], [11 x i8]* @.str434, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %202, i64 10)
  %204 = getelementptr [2 x i8], [2 x i8]* @.str435, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %204, i64 1)
  %206 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %203, %nyx_string* %205)
  br label %merge53
else52:
  %207 = load i8, i8* %15
  %208 = getelementptr [1 x i8], [1 x i8]* @.str436, i32 0, i32 0
  %209 = load i8, i8* %208
  %210 = zext i8 %209 to i64
  %211 = zext i8 %207 to i64
  %212 = icmp eq i64 %211, %210
  br i1 %212, label %then54, label %else55
then54:
  %213 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %214 = getelementptr [12 x i8], [12 x i8]* @.str437, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %214, i64 11)
  %216 = getelementptr [2 x i8], [2 x i8]* @.str438, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %216, i64 1)
  %218 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %215, %nyx_string* %217)
  br label %merge56
else55:
  %219 = load i8, i8* %15
  %220 = getelementptr [1 x i8], [1 x i8]* @.str439, i32 0, i32 0
  %221 = load i8, i8* %220
  %222 = zext i8 %221 to i64
  %223 = zext i8 %219 to i64
  %224 = icmp eq i64 %223, %222
  br i1 %224, label %then57, label %else58
then57:
  %225 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %226 = getelementptr [11 x i8], [11 x i8]* @.str440, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %226, i64 10)
  %228 = getelementptr [2 x i8], [2 x i8]* @.str441, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %228, i64 1)
  %230 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %227, %nyx_string* %229)
  br label %merge59
else58:
  %231 = load i8, i8* %15
  %232 = getelementptr [1 x i8], [1 x i8]* @.str442, i32 0, i32 0
  %233 = load i8, i8* %232
  %234 = zext i8 %233 to i64
  %235 = zext i8 %231 to i64
  %236 = icmp eq i64 %235, %234
  br i1 %236, label %then60, label %else61
then60:
  %237 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %238 = load i64, i64* %9
  %239 = icmp sgt i64 %238, 0
  br i1 %239, label %then63, label %else64
then63:
  %240 = load i64, i64* %9
  %241 = sub i64 %240, 1
  store i64 %241, i64* %9
  %242 = getelementptr [12 x i8], [12 x i8]* @.str443, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %242, i64 11)
  %244 = getelementptr [2 x i8], [2 x i8]* @.str444, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %244, i64 1)
  %246 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %243, %nyx_string* %245)
  %247 = call i64 @tokenize_con_avisos__scan_string_rest(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge65
else64:
  %248 = getelementptr [12 x i8], [12 x i8]* @.str445, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %248, i64 11)
  %250 = getelementptr [2 x i8], [2 x i8]* @.str446, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %250, i64 1)
  %252 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %249, %nyx_string* %251)
  br label %merge65
merge65:
  br label %merge62
else61:
  %253 = load i8, i8* %15
  %254 = getelementptr [1 x i8], [1 x i8]* @.str447, i32 0, i32 0
  %255 = load i8, i8* %254
  %256 = zext i8 %255 to i64
  %257 = zext i8 %253 to i64
  %258 = icmp eq i64 %257, %256
  br i1 %258, label %then66, label %else67
then66:
  %259 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %260 = getelementptr [13 x i8], [13 x i8]* @.str448, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %260, i64 12)
  %262 = getelementptr [2 x i8], [2 x i8]* @.str449, i32 0, i32 0
  %263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %262, i64 1)
  %264 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %261, %nyx_string* %263)
  br label %merge68
else67:
  %265 = load i8, i8* %15
  %266 = getelementptr [1 x i8], [1 x i8]* @.str450, i32 0, i32 0
  %267 = load i8, i8* %266
  %268 = zext i8 %267 to i64
  %269 = zext i8 %265 to i64
  %270 = icmp eq i64 %269, %268
  br i1 %270, label %then69, label %else70
then69:
  %271 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %272 = getelementptr [14 x i8], [14 x i8]* @.str451, i32 0, i32 0
  %273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %272, i64 13)
  %274 = getelementptr [2 x i8], [2 x i8]* @.str452, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %274, i64 1)
  %276 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %273, %nyx_string* %275)
  br label %merge71
else70:
  %277 = load i8, i8* %15
  %278 = getelementptr [1 x i8], [1 x i8]* @.str453, i32 0, i32 0
  %279 = load i8, i8* %278
  %280 = zext i8 %279 to i64
  %281 = zext i8 %277 to i64
  %282 = icmp eq i64 %281, %280
  br i1 %282, label %then72, label %else73
then72:
  %283 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %284 = getelementptr [6 x i8], [6 x i8]* @.str454, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %284, i64 5)
  %286 = getelementptr [2 x i8], [2 x i8]* @.str455, i32 0, i32 0
  %287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %286, i64 1)
  %288 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %285, %nyx_string* %287)
  br label %merge74
else73:
  %289 = load i8, i8* %15
  %290 = getelementptr [1 x i8], [1 x i8]* @.str456, i32 0, i32 0
  %291 = load i8, i8* %290
  %292 = zext i8 %291 to i64
  %293 = zext i8 %289 to i64
  %294 = icmp eq i64 %293, %292
  br i1 %294, label %then75, label %else76
then75:
  %295 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %296 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %297 = getelementptr [1 x i8], [1 x i8]* @.str457, i32 0, i32 0
  %298 = load i8, i8* %297
  %299 = zext i8 %298 to i64
  %300 = zext i8 %296 to i64
  %301 = icmp eq i64 %300, %299
  br i1 %301, label %then78, label %else79
then78:
  %302 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %303 = getelementptr [12 x i8], [12 x i8]* @.str458, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %303, i64 11)
  %305 = getelementptr [3 x i8], [3 x i8]* @.str459, i32 0, i32 0
  %306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %305, i64 2)
  %307 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %304, %nyx_string* %306)
  br label %merge80
else79:
  %308 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %309 = getelementptr [1 x i8], [1 x i8]* @.str460, i32 0, i32 0
  %310 = load i8, i8* %309
  %311 = zext i8 %310 to i64
  %312 = zext i8 %308 to i64
  %313 = icmp eq i64 %312, %311
  br i1 %313, label %then81, label %else82
then81:
  %314 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %315 = getelementptr [12 x i8], [12 x i8]* @.str461, i32 0, i32 0
  %316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %315, i64 11)
  %317 = getelementptr [3 x i8], [3 x i8]* @.str462, i32 0, i32 0
  %318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %317, i64 2)
  %319 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %316, %nyx_string* %318)
  br label %merge83
else82:
  %320 = getelementptr [7 x i8], [7 x i8]* @.str463, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %320, i64 6)
  %322 = getelementptr [2 x i8], [2 x i8]* @.str464, i32 0, i32 0
  %323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %322, i64 1)
  %324 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %321, %nyx_string* %323)
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
else76:
  %325 = load i8, i8* %15
  %326 = getelementptr [1 x i8], [1 x i8]* @.str465, i32 0, i32 0
  %327 = load i8, i8* %326
  %328 = zext i8 %327 to i64
  %329 = zext i8 %325 to i64
  %330 = icmp eq i64 %329, %328
  br i1 %330, label %then84, label %else85
then84:
  %331 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %332 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %333 = getelementptr [1 x i8], [1 x i8]* @.str466, i32 0, i32 0
  %334 = load i8, i8* %333
  %335 = zext i8 %334 to i64
  %336 = zext i8 %332 to i64
  %337 = icmp eq i64 %336, %335
  br i1 %337, label %then87, label %else88
then87:
  %338 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %339 = getelementptr [10 x i8], [10 x i8]* @.str467, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %339, i64 9)
  %341 = getelementptr [3 x i8], [3 x i8]* @.str468, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %341, i64 2)
  %343 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %340, %nyx_string* %342)
  br label %merge89
else88:
  %344 = getelementptr [4 x i8], [4 x i8]* @.str469, i32 0, i32 0
  %345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %344, i64 3)
  %346 = getelementptr [2 x i8], [2 x i8]* @.str470, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %346, i64 1)
  %348 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %345, %nyx_string* %347)
  br label %merge89
merge89:
  br label %merge86
else85:
  %349 = load i8, i8* %15
  %350 = getelementptr [1 x i8], [1 x i8]* @.str471, i32 0, i32 0
  %351 = load i8, i8* %350
  %352 = zext i8 %351 to i64
  %353 = zext i8 %349 to i64
  %354 = icmp eq i64 %353, %352
  br i1 %354, label %then90, label %else91
then90:
  %355 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %356 = getelementptr [9 x i8], [9 x i8]* @.str472, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %356, i64 8)
  %358 = getelementptr [2 x i8], [2 x i8]* @.str473, i32 0, i32 0
  %359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %358, i64 1)
  %360 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %357, %nyx_string* %359)
  br label %merge92
else91:
  %361 = load i8, i8* %15
  %362 = getelementptr [1 x i8], [1 x i8]* @.str474, i32 0, i32 0
  %363 = load i8, i8* %362
  %364 = zext i8 %363 to i64
  %365 = zext i8 %361 to i64
  %366 = icmp eq i64 %365, %364
  br i1 %366, label %then93, label %else94
then93:
  %367 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %368 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %369 = getelementptr [1 x i8], [1 x i8]* @.str475, i32 0, i32 0
  %370 = load i8, i8* %369
  %371 = zext i8 %370 to i64
  %372 = zext i8 %368 to i64
  %373 = icmp eq i64 %372, %371
  br i1 %373, label %then96, label %else97
then96:
  %374 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %375 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %376 = getelementptr [1 x i8], [1 x i8]* @.str476, i32 0, i32 0
  %377 = load i8, i8* %376
  %378 = zext i8 %377 to i64
  %379 = zext i8 %375 to i64
  %380 = icmp eq i64 %379, %378
  br i1 %380, label %then99, label %else100
then99:
  %381 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %382 = getelementptr [18 x i8], [18 x i8]* @.str477, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %382, i64 17)
  %384 = getelementptr [4 x i8], [4 x i8]* @.str478, i32 0, i32 0
  %385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %384, i64 3)
  %386 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %383, %nyx_string* %385)
  br label %merge101
else100:
  %387 = getelementptr [11 x i8], [11 x i8]* @.str479, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %387, i64 10)
  %389 = getelementptr [3 x i8], [3 x i8]* @.str480, i32 0, i32 0
  %390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %389, i64 2)
  %391 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %388, %nyx_string* %390)
  br label %merge101
merge101:
  br label %merge98
else97:
  %392 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %393 = getelementptr [1 x i8], [1 x i8]* @.str481, i32 0, i32 0
  %394 = load i8, i8* %393
  %395 = zext i8 %394 to i64
  %396 = zext i8 %392 to i64
  %397 = icmp eq i64 %396, %395
  br i1 %397, label %then102, label %else103
then102:
  %398 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %399 = getelementptr [11 x i8], [11 x i8]* @.str482, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %399, i64 10)
  %401 = getelementptr [3 x i8], [3 x i8]* @.str483, i32 0, i32 0
  %402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %401, i64 2)
  %403 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %400, %nyx_string* %402)
  br label %merge104
else103:
  %404 = getelementptr [5 x i8], [5 x i8]* @.str484, i32 0, i32 0
  %405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %404, i64 4)
  %406 = getelementptr [2 x i8], [2 x i8]* @.str485, i32 0, i32 0
  %407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %406, i64 1)
  %408 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %405, %nyx_string* %407)
  br label %merge104
merge104:
  br label %merge98
merge98:
  br label %merge95
else94:
  %409 = load i8, i8* %15
  %410 = getelementptr [1 x i8], [1 x i8]* @.str486, i32 0, i32 0
  %411 = load i8, i8* %410
  %412 = zext i8 %411 to i64
  %413 = zext i8 %409 to i64
  %414 = icmp eq i64 %413, %412
  br i1 %414, label %then105, label %else106
then105:
  %415 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %416 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %417 = getelementptr [1 x i8], [1 x i8]* @.str487, i32 0, i32 0
  %418 = load i8, i8* %417
  %419 = zext i8 %418 to i64
  %420 = zext i8 %416 to i64
  %421 = icmp eq i64 %420, %419
  br i1 %421, label %then108, label %else109
then108:
  %422 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %423 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %424 = getelementptr [1 x i8], [1 x i8]* @.str488, i32 0, i32 0
  %425 = load i8, i8* %424
  %426 = zext i8 %425 to i64
  %427 = zext i8 %423 to i64
  %428 = icmp eq i64 %427, %426
  br i1 %428, label %then111, label %else112
then111:
  %429 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %430 = getelementptr [19 x i8], [19 x i8]* @.str489, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %430, i64 18)
  %432 = getelementptr [4 x i8], [4 x i8]* @.str490, i32 0, i32 0
  %433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %432, i64 3)
  %434 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %431, %nyx_string* %433)
  br label %merge113
else112:
  %435 = getelementptr [12 x i8], [12 x i8]* @.str491, i32 0, i32 0
  %436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %435, i64 11)
  %437 = getelementptr [3 x i8], [3 x i8]* @.str492, i32 0, i32 0
  %438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %437, i64 2)
  %439 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %436, %nyx_string* %438)
  br label %merge113
merge113:
  br label %merge110
else109:
  %440 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %441 = getelementptr [1 x i8], [1 x i8]* @.str493, i32 0, i32 0
  %442 = load i8, i8* %441
  %443 = zext i8 %442 to i64
  %444 = zext i8 %440 to i64
  %445 = icmp eq i64 %444, %443
  br i1 %445, label %then114, label %else115
then114:
  %446 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %447 = getelementptr [14 x i8], [14 x i8]* @.str494, i32 0, i32 0
  %448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %447, i64 13)
  %449 = getelementptr [3 x i8], [3 x i8]* @.str495, i32 0, i32 0
  %450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %449, i64 2)
  %451 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %448, %nyx_string* %450)
  br label %merge116
else115:
  %452 = getelementptr [8 x i8], [8 x i8]* @.str496, i32 0, i32 0
  %453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %452, i64 7)
  %454 = getelementptr [2 x i8], [2 x i8]* @.str497, i32 0, i32 0
  %455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %454, i64 1)
  %456 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %453, %nyx_string* %455)
  br label %merge116
merge116:
  br label %merge110
merge110:
  br label %merge107
else106:
  %457 = load i8, i8* %15
  %458 = getelementptr [1 x i8], [1 x i8]* @.str498, i32 0, i32 0
  %459 = load i8, i8* %458
  %460 = zext i8 %459 to i64
  %461 = zext i8 %457 to i64
  %462 = icmp eq i64 %461, %460
  br i1 %462, label %then117, label %else118
then117:
  %463 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %464 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %465 = getelementptr [1 x i8], [1 x i8]* @.str499, i32 0, i32 0
  %466 = load i8, i8* %465
  %467 = zext i8 %466 to i64
  %468 = zext i8 %464 to i64
  %469 = icmp eq i64 %468, %467
  br i1 %469, label %then120, label %else121
then120:
  %470 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %471 = getelementptr [8 x i8], [8 x i8]* @.str500, i32 0, i32 0
  %472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %471, i64 7)
  %473 = getelementptr [3 x i8], [3 x i8]* @.str501, i32 0, i32 0
  %474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %473, i64 2)
  %475 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %472, %nyx_string* %474)
  br label %merge122
else121:
  %476 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %477 = getelementptr [1 x i8], [1 x i8]* @.str502, i32 0, i32 0
  %478 = load i8, i8* %477
  %479 = zext i8 %478 to i64
  %480 = zext i8 %476 to i64
  %481 = icmp eq i64 %480, %479
  br i1 %481, label %then123, label %else124
then123:
  %482 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %483 = getelementptr [11 x i8], [11 x i8]* @.str503, i32 0, i32 0
  %484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %483, i64 10)
  %485 = getelementptr [3 x i8], [3 x i8]* @.str504, i32 0, i32 0
  %486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %485, i64 2)
  %487 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %484, %nyx_string* %486)
  br label %merge125
else124:
  %488 = getelementptr [4 x i8], [4 x i8]* @.str505, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %488, i64 3)
  %490 = getelementptr [2 x i8], [2 x i8]* @.str506, i32 0, i32 0
  %491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %490, i64 1)
  %492 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %489, %nyx_string* %491)
  br label %merge125
merge125:
  br label %merge122
merge122:
  br label %merge119
else118:
  %493 = load i8, i8* %15
  %494 = getelementptr [1 x i8], [1 x i8]* @.str507, i32 0, i32 0
  %495 = load i8, i8* %494
  %496 = zext i8 %495 to i64
  %497 = zext i8 %493 to i64
  %498 = icmp eq i64 %497, %496
  br i1 %498, label %then126, label %else127
then126:
  %499 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %500 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %501 = getelementptr [1 x i8], [1 x i8]* @.str508, i32 0, i32 0
  %502 = load i8, i8* %501
  %503 = zext i8 %502 to i64
  %504 = zext i8 %500 to i64
  %505 = icmp eq i64 %504, %503
  br i1 %505, label %then129, label %else130
then129:
  %506 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %507 = getelementptr [6 x i8], [6 x i8]* @.str509, i32 0, i32 0
  %508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %507, i64 5)
  %509 = getelementptr [3 x i8], [3 x i8]* @.str510, i32 0, i32 0
  %510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %509, i64 2)
  %511 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %508, %nyx_string* %510)
  br label %merge131
else130:
  %512 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %513 = getelementptr [1 x i8], [1 x i8]* @.str511, i32 0, i32 0
  %514 = load i8, i8* %513
  %515 = zext i8 %514 to i64
  %516 = zext i8 %512 to i64
  %517 = icmp eq i64 %516, %515
  br i1 %517, label %then132, label %else133
then132:
  %518 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %519 = getelementptr [12 x i8], [12 x i8]* @.str512, i32 0, i32 0
  %520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %519, i64 11)
  %521 = getelementptr [3 x i8], [3 x i8]* @.str513, i32 0, i32 0
  %522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %521, i64 2)
  %523 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %520, %nyx_string* %522)
  br label %merge134
else133:
  %524 = getelementptr [5 x i8], [5 x i8]* @.str514, i32 0, i32 0
  %525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %524, i64 4)
  %526 = getelementptr [2 x i8], [2 x i8]* @.str515, i32 0, i32 0
  %527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %526, i64 1)
  %528 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %525, %nyx_string* %527)
  br label %merge134
merge134:
  br label %merge131
merge131:
  br label %merge128
else127:
  %529 = load i8, i8* %15
  %530 = getelementptr [1 x i8], [1 x i8]* @.str516, i32 0, i32 0
  %531 = load i8, i8* %530
  %532 = zext i8 %531 to i64
  %533 = zext i8 %529 to i64
  %534 = icmp eq i64 %533, %532
  br i1 %534, label %then135, label %else136
then135:
  %535 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %536 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %537 = getelementptr [1 x i8], [1 x i8]* @.str517, i32 0, i32 0
  %538 = load i8, i8* %537
  %539 = zext i8 %538 to i64
  %540 = zext i8 %536 to i64
  %541 = icmp eq i64 %540, %539
  br i1 %541, label %then138, label %else139
then138:
  %542 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %543 = getelementptr [13 x i8], [13 x i8]* @.str518, i32 0, i32 0
  %544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %543, i64 12)
  %545 = getelementptr [3 x i8], [3 x i8]* @.str519, i32 0, i32 0
  %546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %545, i64 2)
  %547 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %544, %nyx_string* %546)
  br label %merge140
else139:
  %548 = getelementptr [6 x i8], [6 x i8]* @.str520, i32 0, i32 0
  %549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %548, i64 5)
  %550 = getelementptr [2 x i8], [2 x i8]* @.str521, i32 0, i32 0
  %551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %550, i64 1)
  %552 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %549, %nyx_string* %551)
  br label %merge140
merge140:
  br label %merge137
else136:
  %553 = load i8, i8* %15
  %554 = getelementptr [1 x i8], [1 x i8]* @.str522, i32 0, i32 0
  %555 = load i8, i8* %554
  %556 = zext i8 %555 to i64
  %557 = zext i8 %553 to i64
  %558 = icmp eq i64 %557, %556
  br i1 %558, label %then141, label %else142
then141:
  %559 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %560 = getelementptr [6 x i8], [6 x i8]* @.str523, i32 0, i32 0
  %561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %560, i64 5)
  %562 = getelementptr [2 x i8], [2 x i8]* @.str524, i32 0, i32 0
  %563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %562, i64 1)
  %564 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %561, %nyx_string* %563)
  br label %merge143
else142:
  %565 = load i8, i8* %15
  %566 = getelementptr [1 x i8], [1 x i8]* @.str525, i32 0, i32 0
  %567 = load i8, i8* %566
  %568 = zext i8 %567 to i64
  %569 = zext i8 %565 to i64
  %570 = icmp eq i64 %569, %568
  br i1 %570, label %then144, label %else145
then144:
  %571 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %572 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %573 = getelementptr [1 x i8], [1 x i8]* @.str526, i32 0, i32 0
  %574 = load i8, i8* %573
  %575 = zext i8 %574 to i64
  %576 = zext i8 %572 to i64
  %577 = icmp eq i64 %576, %575
  br i1 %577, label %then147, label %else148
then147:
  %578 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %579 = call i64 @tokenize_con_avisos__skip_comment(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge149
else148:
  %580 = getelementptr [5 x i8], [5 x i8]* @.str527, i32 0, i32 0
  %581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %580, i64 4)
  %582 = getelementptr [2 x i8], [2 x i8]* @.str528, i32 0, i32 0
  %583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %582, i64 1)
  %584 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %581, %nyx_string* %583)
  br label %merge149
merge149:
  br label %merge146
else145:
  %585 = load i8, i8* %15
  %586 = getelementptr [1 x i8], [1 x i8]* @.str529, i32 0, i32 0
  %587 = load i8, i8* %586
  %588 = zext i8 %587 to i64
  %589 = zext i8 %585 to i64
  %590 = icmp eq i64 %589, %588
  br i1 %590, label %then150, label %else151
then150:
  %591 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %592 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %593 = getelementptr [1 x i8], [1 x i8]* @.str530, i32 0, i32 0
  %594 = load i8, i8* %593
  %595 = zext i8 %594 to i64
  %596 = zext i8 %592 to i64
  %597 = icmp eq i64 %596, %595
  br i1 %597, label %then153, label %else154
then153:
  %598 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %599 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %600 = getelementptr [1 x i8], [1 x i8]* @.str531, i32 0, i32 0
  %601 = load i8, i8* %600
  %602 = zext i8 %601 to i64
  %603 = zext i8 %599 to i64
  %604 = icmp eq i64 %603, %602
  br i1 %604, label %then156, label %else157
then156:
  %605 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %606 = getelementptr [9 x i8], [9 x i8]* @.str532, i32 0, i32 0
  %607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %606, i64 8)
  %608 = getelementptr [4 x i8], [4 x i8]* @.str533, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %608, i64 3)
  %610 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %607, %nyx_string* %609)
  br label %merge158
else157:
  %611 = call i8 @tokenize_con_avisos__peek(%SharedEnv_tokenize_con_avisos* %env.param)
  %612 = getelementptr [1 x i8], [1 x i8]* @.str534, i32 0, i32 0
  %613 = load i8, i8* %612
  %614 = zext i8 %613 to i64
  %615 = zext i8 %611 to i64
  %616 = icmp eq i64 %615, %614
  br i1 %616, label %then159, label %else160
then159:
  %617 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %618 = getelementptr [16 x i8], [16 x i8]* @.str535, i32 0, i32 0
  %619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %618, i64 15)
  %620 = getelementptr [4 x i8], [4 x i8]* @.str536, i32 0, i32 0
  %621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %620, i64 3)
  %622 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %619, %nyx_string* %621)
  br label %merge161
else160:
  %623 = getelementptr [6 x i8], [6 x i8]* @.str537, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %623, i64 5)
  %625 = getelementptr [3 x i8], [3 x i8]* @.str538, i32 0, i32 0
  %626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %625, i64 2)
  %627 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %624, %nyx_string* %626)
  br label %merge161
merge161:
  br label %merge158
merge158:
  br label %merge155
else154:
  %628 = getelementptr [4 x i8], [4 x i8]* @.str539, i32 0, i32 0
  %629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %628, i64 3)
  %630 = getelementptr [2 x i8], [2 x i8]* @.str540, i32 0, i32 0
  %631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %630, i64 1)
  %632 = call i64 @tokenize_con_avisos__add_token(%SharedEnv_tokenize_con_avisos* %env.param, %nyx_string* %629, %nyx_string* %631)
  br label %merge155
merge155:
  br label %merge152
else151:
  %633 = load i8, i8* %15
  %634 = getelementptr [1 x i8], [1 x i8]* @.str541, i32 0, i32 0
  %635 = load i8, i8* %634
  %636 = zext i8 %635 to i64
  %637 = zext i8 %633 to i64
  %638 = icmp eq i64 %637, %636
  br i1 %638, label %then162, label %else163
then162:
  %639 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %640 = getelementptr [1 x i8], [1 x i8]* @.str542, i32 0, i32 0
  %641 = load i8, i8* %640
  %642 = zext i8 %641 to i64
  %643 = zext i8 %639 to i64
  %644 = icmp eq i64 %643, %642
  br i1 %644, label %then165, label %else166
then165:
  %645 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %646 = call i64 @tokenize_con_avisos__scan_multiline_string(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge167
else166:
  %647 = call i64 @tokenize_con_avisos__scan_string(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge167
merge167:
  br label %merge164
else163:
  %648 = load i8, i8* %15
  %649 = getelementptr [1 x i8], [1 x i8]* @.str543, i32 0, i32 0
  %650 = load i8, i8* %649
  %651 = zext i8 %650 to i64
  %652 = zext i8 %648 to i64
  %653 = icmp eq i64 %652, %651
  br i1 %653, label %then168, label %else169
then168:
  %654 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %655 = alloca i8
  store i8 %654, i8* %655
  %656 = alloca i1
  store i1 0, i1* %656
  %657 = load i8, i8* %655
  %658 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %657)
  br i1 %658, label %then171, label %else172
then171:
  %659 = load i64, i64* %5
  %660 = add i64 %659, 2
  %661 = alloca i64
  store i64 %660, i64* %661
  %662 = load i64, i64* %661
  %663 = load %nyx_string*, %nyx_string** %3
  %664 = call i64 @nyx_string_byte_length(%nyx_string* %663)
  %665 = icmp sge i64 %662, %664
  br i1 %665, label %then174, label %else175
then174:
  store i1 1, i1* %656
  br label %merge176
else175:
  %666 = load %nyx_string*, %nyx_string** %3
  %667 = load i64, i64* %661
  %668 = call i8 @nyx_string_char_at(%nyx_string* %666, i64 %667)
  %669 = zext i8 %668 to i64
  %670 = trunc i64 %669 to i8
  %671 = alloca i8
  store i8 %670, i8* %671
  %672 = load i8, i8* %671
  %673 = getelementptr [1 x i8], [1 x i8]* @.str544, i32 0, i32 0
  %674 = load i8, i8* %673
  %675 = zext i8 %674 to i64
  %676 = zext i8 %672 to i64
  %677 = icmp ne i64 %676, %675
  br i1 %677, label %then177, label %else178
then177:
  store i1 1, i1* %656
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
  %678 = load i1, i1* %656
  br i1 %678, label %then180, label %else181
then180:
  %679 = call i64 @tokenize_con_avisos__scan_lifetime(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge182
else181:
  %680 = call i64 @tokenize_con_avisos__scan_char(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge182
merge182:
  br label %merge170
else169:
  %681 = load i8, i8* %15
  %682 = call i1 @tokenize_con_avisos__is_digit(%SharedEnv_tokenize_con_avisos* %env.param, i8 %681)
  br i1 %682, label %then183, label %else184
then183:
  %683 = call i64 @tokenize_con_avisos__scan_number(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge185
else184:
  %684 = alloca i1
  store i1 false, i1* %684
  %685 = load i8, i8* %15
  %686 = getelementptr [1 x i8], [1 x i8]* @.str545, i32 0, i32 0
  %687 = load i8, i8* %686
  %688 = zext i8 %687 to i64
  %689 = zext i8 %685 to i64
  %690 = icmp eq i64 %689, %688
  br i1 %690, label %sc_and_rhs186, label %sc_and_end187
sc_and_rhs186:
  %691 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %692 = getelementptr [1 x i8], [1 x i8]* @.str546, i32 0, i32 0
  %693 = load i8, i8* %692
  %694 = zext i8 %693 to i64
  %695 = zext i8 %691 to i64
  %696 = icmp eq i64 %695, %694
  store i1 %696, i1* %684
  br label %sc_and_end187
sc_and_end187:
  %697 = load i1, i1* %684
  br i1 %697, label %then188, label %else189
then188:
  %698 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %699 = call i64 @tokenize_con_avisos__scan_raw_string(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge190
else189:
  %700 = load i8, i8* %15
  %701 = call i1 @tokenize_con_avisos__is_alpha(%SharedEnv_tokenize_con_avisos* %env.param, i8 %700)
  br i1 %701, label %then191, label %else192
then191:
  %702 = call i64 @tokenize_con_avisos__scan_identifier(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge193
else192:
  %703 = alloca i1
  store i1 false, i1* %703
  %704 = alloca i1
  store i1 false, i1* %704
  %705 = load i8, i8* %15
  %706 = getelementptr [1 x i8], [1 x i8]* @.str547, i32 0, i32 0
  %707 = load i8, i8* %706
  %708 = zext i8 %707 to i64
  %709 = zext i8 %705 to i64
  %710 = icmp eq i64 %709, %708
  br i1 %710, label %sc_and_rhs194, label %sc_and_end195
sc_and_rhs194:
  %711 = call i8 @tokenize_con_avisos__peek_next(%SharedEnv_tokenize_con_avisos* %env.param)
  %712 = getelementptr [1 x i8], [1 x i8]* @.str548, i32 0, i32 0
  %713 = load i8, i8* %712
  %714 = zext i8 %713 to i64
  %715 = zext i8 %711 to i64
  %716 = icmp eq i64 %715, %714
  store i1 %716, i1* %704
  br label %sc_and_end195
sc_and_end195:
  %717 = load i1, i1* %704
  br i1 %717, label %sc_and_rhs196, label %sc_and_end197
sc_and_rhs196:
  %718 = load i64, i64* %9
  %719 = icmp sgt i64 %718, 0
  store i1 %719, i1* %703
  br label %sc_and_end197
sc_and_end197:
  %720 = load i1, i1* %703
  br i1 %720, label %then198, label %else199
then198:
  %721 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %722 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
  %723 = call i64 @tokenize_con_avisos__scan_string_escdelim(%SharedEnv_tokenize_con_avisos* %env.param)
  br label %merge200
else199:
  %724 = call i8 @tokenize_con_avisos__advance(%SharedEnv_tokenize_con_avisos* %env.param)
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

