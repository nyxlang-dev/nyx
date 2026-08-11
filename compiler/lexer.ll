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
@.str133 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [1 x i8] c"\0a"
@.str136 = private unnamed_addr constant [1 x i8] c"\0a"
@.str137 = private unnamed_addr constant [1 x i8] c"\0a"
@.str138 = private unnamed_addr constant [1 x i8] c"0"
@.str139 = private unnamed_addr constant [1 x i8] c"1"
@.str140 = private unnamed_addr constant [1 x i8] c"2"
@.str141 = private unnamed_addr constant [1 x i8] c"3"
@.str142 = private unnamed_addr constant [1 x i8] c"4"
@.str143 = private unnamed_addr constant [1 x i8] c"5"
@.str144 = private unnamed_addr constant [1 x i8] c"6"
@.str145 = private unnamed_addr constant [1 x i8] c"7"
@.str146 = private unnamed_addr constant [1 x i8] c"8"
@.str147 = private unnamed_addr constant [1 x i8] c"9"
@.str148 = private unnamed_addr constant [1 x i8] c"a"
@.str149 = private unnamed_addr constant [1 x i8] c"b"
@.str150 = private unnamed_addr constant [1 x i8] c"c"
@.str151 = private unnamed_addr constant [1 x i8] c"d"
@.str152 = private unnamed_addr constant [1 x i8] c"e"
@.str153 = private unnamed_addr constant [1 x i8] c"f"
@.str154 = private unnamed_addr constant [1 x i8] c"g"
@.str155 = private unnamed_addr constant [1 x i8] c"h"
@.str156 = private unnamed_addr constant [1 x i8] c"i"
@.str157 = private unnamed_addr constant [1 x i8] c"j"
@.str158 = private unnamed_addr constant [1 x i8] c"k"
@.str159 = private unnamed_addr constant [1 x i8] c"l"
@.str160 = private unnamed_addr constant [1 x i8] c"m"
@.str161 = private unnamed_addr constant [1 x i8] c"n"
@.str162 = private unnamed_addr constant [1 x i8] c"o"
@.str163 = private unnamed_addr constant [1 x i8] c"p"
@.str164 = private unnamed_addr constant [1 x i8] c"q"
@.str165 = private unnamed_addr constant [1 x i8] c"r"
@.str166 = private unnamed_addr constant [1 x i8] c"s"
@.str167 = private unnamed_addr constant [1 x i8] c"t"
@.str168 = private unnamed_addr constant [1 x i8] c"u"
@.str169 = private unnamed_addr constant [1 x i8] c"v"
@.str170 = private unnamed_addr constant [1 x i8] c"w"
@.str171 = private unnamed_addr constant [1 x i8] c"x"
@.str172 = private unnamed_addr constant [1 x i8] c"y"
@.str173 = private unnamed_addr constant [1 x i8] c"z"
@.str174 = private unnamed_addr constant [1 x i8] c"A"
@.str175 = private unnamed_addr constant [1 x i8] c"B"
@.str176 = private unnamed_addr constant [1 x i8] c"C"
@.str177 = private unnamed_addr constant [1 x i8] c"D"
@.str178 = private unnamed_addr constant [1 x i8] c"E"
@.str179 = private unnamed_addr constant [1 x i8] c"F"
@.str180 = private unnamed_addr constant [1 x i8] c"G"
@.str181 = private unnamed_addr constant [1 x i8] c"H"
@.str182 = private unnamed_addr constant [1 x i8] c"I"
@.str183 = private unnamed_addr constant [1 x i8] c"J"
@.str184 = private unnamed_addr constant [1 x i8] c"K"
@.str185 = private unnamed_addr constant [1 x i8] c"L"
@.str186 = private unnamed_addr constant [1 x i8] c"M"
@.str187 = private unnamed_addr constant [1 x i8] c"N"
@.str188 = private unnamed_addr constant [1 x i8] c"O"
@.str189 = private unnamed_addr constant [1 x i8] c"P"
@.str190 = private unnamed_addr constant [1 x i8] c"Q"
@.str191 = private unnamed_addr constant [1 x i8] c"R"
@.str192 = private unnamed_addr constant [1 x i8] c"S"
@.str193 = private unnamed_addr constant [1 x i8] c"T"
@.str194 = private unnamed_addr constant [1 x i8] c"U"
@.str195 = private unnamed_addr constant [1 x i8] c"V"
@.str196 = private unnamed_addr constant [1 x i8] c"W"
@.str197 = private unnamed_addr constant [1 x i8] c"X"
@.str198 = private unnamed_addr constant [1 x i8] c"Y"
@.str199 = private unnamed_addr constant [1 x i8] c"Z"
@.str200 = private unnamed_addr constant [1 x i8] c"_"
@.str201 = private unnamed_addr constant [1 x i8] c"0"
@.str202 = private unnamed_addr constant [1 x i8] c"1"
@.str203 = private unnamed_addr constant [1 x i8] c"2"
@.str204 = private unnamed_addr constant [1 x i8] c"3"
@.str205 = private unnamed_addr constant [1 x i8] c"4"
@.str206 = private unnamed_addr constant [1 x i8] c"5"
@.str207 = private unnamed_addr constant [1 x i8] c"6"
@.str208 = private unnamed_addr constant [1 x i8] c"7"
@.str209 = private unnamed_addr constant [1 x i8] c"8"
@.str210 = private unnamed_addr constant [1 x i8] c"9"
@.str211 = private unnamed_addr constant [1 x i8] c"a"
@.str212 = private unnamed_addr constant [1 x i8] c"b"
@.str213 = private unnamed_addr constant [1 x i8] c"c"
@.str214 = private unnamed_addr constant [1 x i8] c"d"
@.str215 = private unnamed_addr constant [1 x i8] c"e"
@.str216 = private unnamed_addr constant [1 x i8] c"f"
@.str217 = private unnamed_addr constant [1 x i8] c"A"
@.str218 = private unnamed_addr constant [1 x i8] c"B"
@.str219 = private unnamed_addr constant [1 x i8] c"C"
@.str220 = private unnamed_addr constant [1 x i8] c"D"
@.str221 = private unnamed_addr constant [1 x i8] c"E"
@.str222 = private unnamed_addr constant [1 x i8] c"F"
@.str223 = private unnamed_addr constant [1 x i8] c"0"
@.str224 = private unnamed_addr constant [1 x i8] c"1"
@.str225 = private unnamed_addr constant [1 x i8] c"2"
@.str226 = private unnamed_addr constant [1 x i8] c"3"
@.str227 = private unnamed_addr constant [1 x i8] c"4"
@.str228 = private unnamed_addr constant [1 x i8] c"5"
@.str229 = private unnamed_addr constant [1 x i8] c"6"
@.str230 = private unnamed_addr constant [1 x i8] c"7"
@.str231 = private unnamed_addr constant [1 x i8] c"8"
@.str232 = private unnamed_addr constant [1 x i8] c"9"
@.str233 = private unnamed_addr constant [1 x i8] c"a"
@.str234 = private unnamed_addr constant [1 x i8] c"A"
@.str235 = private unnamed_addr constant [1 x i8] c"b"
@.str236 = private unnamed_addr constant [1 x i8] c"B"
@.str237 = private unnamed_addr constant [1 x i8] c"c"
@.str238 = private unnamed_addr constant [1 x i8] c"C"
@.str239 = private unnamed_addr constant [1 x i8] c"d"
@.str240 = private unnamed_addr constant [1 x i8] c"D"
@.str241 = private unnamed_addr constant [1 x i8] c"e"
@.str242 = private unnamed_addr constant [1 x i8] c"E"
@.str243 = private unnamed_addr constant [1 x i8] c"f"
@.str244 = private unnamed_addr constant [1 x i8] c"F"
@.str245 = private unnamed_addr constant [2 x i8] c"0\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [2 x i8] c"1\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [2 x i8] c"2\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [2 x i8] c"3\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [2 x i8] c"4\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"5\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [2 x i8] c"6\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c"7\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"8\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [2 x i8] c"9\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c"0\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [1 x i8] c"\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [1 x i8] c"1"
@.str258 = private unnamed_addr constant [1 x i8] c" "
@.str259 = private unnamed_addr constant [1 x i8] c"\09"
@.str260 = private unnamed_addr constant [1 x i8] c"\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [1 x i8] c"\0a"
@.str262 = private unnamed_addr constant [7 x i8] c"#line \00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [8 x i8] c"#module\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [14 x i8] c"MODULE_MARKER\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [34 x i8] c"Error: unterminated block comment\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [1 x i8] c"/"
@.str267 = private unnamed_addr constant [1 x i8] c"*"
@.str268 = private unnamed_addr constant [1 x i8] c"*"
@.str269 = private unnamed_addr constant [1 x i8] c"/"
@.str270 = private unnamed_addr constant [1 x i8] c"\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [1 x i8] c"0"
@.str272 = private unnamed_addr constant [1 x i8] c"x"
@.str273 = private unnamed_addr constant [1 x i8] c"X"
@.str274 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [1 x i8] c"0"
@.str276 = private unnamed_addr constant [1 x i8] c"b"
@.str277 = private unnamed_addr constant [1 x i8] c"B"
@.str278 = private unnamed_addr constant [1 x i8] c"0"
@.str279 = private unnamed_addr constant [1 x i8] c"1"
@.str280 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [1 x i8] c"0"
@.str282 = private unnamed_addr constant [1 x i8] c"o"
@.str283 = private unnamed_addr constant [1 x i8] c"O"
@.str284 = private unnamed_addr constant [1 x i8] c"0"
@.str285 = private unnamed_addr constant [1 x i8] c"1"
@.str286 = private unnamed_addr constant [1 x i8] c"2"
@.str287 = private unnamed_addr constant [1 x i8] c"3"
@.str288 = private unnamed_addr constant [1 x i8] c"4"
@.str289 = private unnamed_addr constant [1 x i8] c"5"
@.str290 = private unnamed_addr constant [1 x i8] c"6"
@.str291 = private unnamed_addr constant [1 x i8] c"7"
@.str292 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [1 x i8] c"."
@.str294 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [1 x i8] c"\22"
@.str309 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [1 x i8] c"$"
@.str311 = private unnamed_addr constant [1 x i8] c"{"
@.str312 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [2 x i8] c"+\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [2 x i8] c"(\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [1 x i8] c"\5c"
@.str318 = private unnamed_addr constant [1 x i8] c"n"
@.str319 = private unnamed_addr constant [1 x i8] c"\0a"
@.str320 = private unnamed_addr constant [1 x i8] c"t"
@.str321 = private unnamed_addr constant [1 x i8] c"\09"
@.str322 = private unnamed_addr constant [1 x i8] c"\5c"
@.str323 = private unnamed_addr constant [1 x i8] c"\5c"
@.str324 = private unnamed_addr constant [1 x i8] c"\22"
@.str325 = private unnamed_addr constant [1 x i8] c"\22"
@.str326 = private unnamed_addr constant [1 x i8] c"r"
@.str327 = private unnamed_addr constant [1 x i8] c"0"
@.str328 = private unnamed_addr constant [99 x i8] c"Error: String sin cerrar (abierto con \5c\22 dentro de una interpolación — cerralo con \5c\22 también)\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [1 x i8] c"\5c"
@.str330 = private unnamed_addr constant [1 x i8] c"\22"
@.str331 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [1 x i8] c"\5c"
@.str333 = private unnamed_addr constant [1 x i8] c"n"
@.str334 = private unnamed_addr constant [1 x i8] c"\0a"
@.str335 = private unnamed_addr constant [1 x i8] c"t"
@.str336 = private unnamed_addr constant [1 x i8] c"\09"
@.str337 = private unnamed_addr constant [1 x i8] c"\5c"
@.str338 = private unnamed_addr constant [1 x i8] c"\5c"
@.str339 = private unnamed_addr constant [1 x i8] c"r"
@.str340 = private unnamed_addr constant [1 x i8] c"0"
@.str341 = private unnamed_addr constant [1 x i8] c"\22"
@.str342 = private unnamed_addr constant [37 x i8] c"Error: unterminated multiline string\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [1 x i8] c"\22"
@.str344 = private unnamed_addr constant [1 x i8] c"\22"
@.str345 = private unnamed_addr constant [1 x i8] c"\22"
@.str346 = private unnamed_addr constant [1 x i8] c"\22"
@.str347 = private unnamed_addr constant [1 x i8] c"\22"
@.str348 = private unnamed_addr constant [1 x i8] c"\22"
@.str349 = private unnamed_addr constant [1 x i8] c"\22"
@.str350 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [1 x i8] c"\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [31 x i8] c"Error: unterminated raw string\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [1 x i8] c"\22"
@.str355 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [1 x i8] c"\22"
@.str358 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [2 x i8] c"+\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [1 x i8] c"$"
@.str362 = private unnamed_addr constant [1 x i8] c"{"
@.str363 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [2 x i8] c"+\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [2 x i8] c"+\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [2 x i8] c"(\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [1 x i8] c"\5c"
@.str371 = private unnamed_addr constant [1 x i8] c"n"
@.str372 = private unnamed_addr constant [1 x i8] c"\0a"
@.str373 = private unnamed_addr constant [1 x i8] c"t"
@.str374 = private unnamed_addr constant [1 x i8] c"\09"
@.str375 = private unnamed_addr constant [1 x i8] c"\5c"
@.str376 = private unnamed_addr constant [1 x i8] c"\5c"
@.str377 = private unnamed_addr constant [1 x i8] c"\22"
@.str378 = private unnamed_addr constant [1 x i8] c"\22"
@.str379 = private unnamed_addr constant [1 x i8] c"r"
@.str380 = private unnamed_addr constant [1 x i8] c"0"
@.str381 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [2 x i8] c"'\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [1 x i8] c"'"
@.str384 = private unnamed_addr constant [2 x i8] c"c\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [1 x i8] c"\5c"
@.str386 = private unnamed_addr constant [1 x i8] c"n"
@.str387 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [1 x i8] c"t"
@.str389 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [1 x i8] c"\5c"
@.str391 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [1 x i8] c"'"
@.str393 = private unnamed_addr constant [2 x i8] c"'\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [1 x i8] c"r"
@.str395 = private unnamed_addr constant [1 x i8] c"\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [1 x i8] c"0"
@.str397 = private unnamed_addr constant [1 x i8] c"\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [1 x i8] c"'"
@.str399 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [1 x i8] c"\0a"
@.str402 = private unnamed_addr constant [1 x i8] c"+"
@.str403 = private unnamed_addr constant [1 x i8] c"="
@.str404 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [3 x i8] c"+=\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [2 x i8] c"+\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [1 x i8] c"-"
@.str409 = private unnamed_addr constant [1 x i8] c">"
@.str410 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [3 x i8] c"->\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [1 x i8] c"="
@.str413 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [3 x i8] c"-=\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [2 x i8] c"-\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [1 x i8] c"*"
@.str418 = private unnamed_addr constant [1 x i8] c"*"
@.str419 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [3 x i8] c"**\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [1 x i8] c"="
@.str422 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [3 x i8] c"*=\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [2 x i8] c"*\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [1 x i8] c"/"
@.str427 = private unnamed_addr constant [1 x i8] c"/"
@.str428 = private unnamed_addr constant [1 x i8] c"*"
@.str429 = private unnamed_addr constant [1 x i8] c"="
@.str430 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [3 x i8] c"/=\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [2 x i8] c"/\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [1 x i8] c"%"
@.str435 = private unnamed_addr constant [1 x i8] c"="
@.str436 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [3 x i8] c"%=\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [2 x i8] c"%\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [1 x i8] c","
@.str441 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [2 x i8] c",\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [1 x i8] c"("
@.str444 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [2 x i8] c"(\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [1 x i8] c")"
@.str447 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [2 x i8] c")\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [1 x i8] c"{"
@.str450 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [2 x i8] c"{\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [1 x i8] c"}"
@.str453 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [2 x i8] c")\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [2 x i8] c"}\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [1 x i8] c"["
@.str458 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [2 x i8] c"[\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [1 x i8] c"]"
@.str461 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [2 x i8] c"]\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [1 x i8] c":"
@.str464 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [2 x i8] c":\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [1 x i8] c"="
@.str467 = private unnamed_addr constant [1 x i8] c"="
@.str468 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [3 x i8] c"==\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [1 x i8] c">"
@.str471 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [3 x i8] c"=>\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [2 x i8] c"=\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [1 x i8] c"!"
@.str476 = private unnamed_addr constant [1 x i8] c"="
@.str477 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [3 x i8] c"!=\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [2 x i8] c"!\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [1 x i8] c"?"
@.str482 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [2 x i8] c"?\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [1 x i8] c"<"
@.str485 = private unnamed_addr constant [1 x i8] c"<"
@.str486 = private unnamed_addr constant [1 x i8] c"="
@.str487 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [4 x i8] c"<<=\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [3 x i8] c"<<\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [1 x i8] c"="
@.str492 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [3 x i8] c"<=\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [2 x i8] c"<\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [1 x i8] c">"
@.str497 = private unnamed_addr constant [1 x i8] c">"
@.str498 = private unnamed_addr constant [1 x i8] c"="
@.str499 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [4 x i8] c">>=\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [3 x i8] c">>\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [1 x i8] c"="
@.str504 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [3 x i8] c">=\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [2 x i8] c">\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [1 x i8] c"&"
@.str509 = private unnamed_addr constant [1 x i8] c"&"
@.str510 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [3 x i8] c"&&\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [1 x i8] c"="
@.str513 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [3 x i8] c"&=\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [2 x i8] c"&\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [1 x i8] c"|"
@.str518 = private unnamed_addr constant [1 x i8] c"|"
@.str519 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [3 x i8] c"||\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [1 x i8] c"="
@.str522 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [3 x i8] c"|=\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [2 x i8] c"|\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [1 x i8] c"^"
@.str527 = private unnamed_addr constant [1 x i8] c"="
@.str528 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [3 x i8] c"^=\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [2 x i8] c"^\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [1 x i8] c"~"
@.str533 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [2 x i8] c"~\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [1 x i8] c"#"
@.str536 = private unnamed_addr constant [1 x i8] c"!"
@.str537 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [2 x i8] c"#\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [1 x i8] c"."
@.str540 = private unnamed_addr constant [1 x i8] c"."
@.str541 = private unnamed_addr constant [1 x i8] c"."
@.str542 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [4 x i8] c"...\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [1 x i8] c"="
@.str545 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [4 x i8] c"..=\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [3 x i8] c"..\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [2 x i8] c".\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [1 x i8] c"\22"
@.str552 = private unnamed_addr constant [1 x i8] c"\22"
@.str553 = private unnamed_addr constant [1 x i8] c"'"
@.str554 = private unnamed_addr constant [1 x i8] c"'"
@.str555 = private unnamed_addr constant [1 x i8] c"r"
@.str556 = private unnamed_addr constant [1 x i8] c"\22"
@.str557 = private unnamed_addr constant [1 x i8] c"\5c"
@.str558 = private unnamed_addr constant [1 x i8] c"\22"
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
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
declare double @nyx_slot_as_float_checked({ i64, i8* }*, i64)
declare double @nyx_slot_as_float_st({ i64, i8* }*, i64, i64)
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
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %46)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  br i1 %48, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %49 = load %nyx_string*, %nyx_string** %word.ptr
  %50 = getelementptr [4 x i8], [4 x i8]* @.str1, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %50)
  %52 = call i1 @nyx_string_equals(%nyx_string* %49, %nyx_string* %51)
  store i1 %52, i1* %44
  br label %sc_or_end1
sc_or_end1:
  %53 = load i1, i1* %44
  br i1 %53, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %54 = load %nyx_string*, %nyx_string** %word.ptr
  %55 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %55)
  %57 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %56)
  store i1 %57, i1* %43
  br label %sc_or_end3
sc_or_end3:
  %58 = load i1, i1* %43
  br i1 %58, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %59 = load %nyx_string*, %nyx_string** %word.ptr
  %60 = getelementptr [3 x i8], [3 x i8]* @.str3, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %60)
  %62 = call i1 @nyx_string_equals(%nyx_string* %59, %nyx_string* %61)
  store i1 %62, i1* %42
  br label %sc_or_end5
sc_or_end5:
  %63 = load i1, i1* %42
  br i1 %63, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %64 = load %nyx_string*, %nyx_string** %word.ptr
  %65 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %65)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  store i1 %67, i1* %41
  br label %sc_or_end7
sc_or_end7:
  %68 = load i1, i1* %41
  br i1 %68, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %69 = load %nyx_string*, %nyx_string** %word.ptr
  %70 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %70)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  store i1 %72, i1* %40
  br label %sc_or_end9
sc_or_end9:
  %73 = load i1, i1* %40
  br i1 %73, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %74 = load %nyx_string*, %nyx_string** %word.ptr
  %75 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %75)
  %77 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %76)
  store i1 %77, i1* %39
  br label %sc_or_end11
sc_or_end11:
  %78 = load i1, i1* %39
  br i1 %78, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %79 = load %nyx_string*, %nyx_string** %word.ptr
  %80 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %80)
  %82 = call i1 @nyx_string_equals(%nyx_string* %79, %nyx_string* %81)
  store i1 %82, i1* %38
  br label %sc_or_end13
sc_or_end13:
  %83 = load i1, i1* %38
  br i1 %83, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %84 = load %nyx_string*, %nyx_string** %word.ptr
  %85 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %85)
  %87 = call i1 @nyx_string_equals(%nyx_string* %84, %nyx_string* %86)
  store i1 %87, i1* %37
  br label %sc_or_end15
sc_or_end15:
  %88 = load i1, i1* %37
  br i1 %88, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %89 = load %nyx_string*, %nyx_string** %word.ptr
  %90 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %90)
  %92 = call i1 @nyx_string_equals(%nyx_string* %89, %nyx_string* %91)
  store i1 %92, i1* %36
  br label %sc_or_end17
sc_or_end17:
  %93 = load i1, i1* %36
  br i1 %93, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %94 = load %nyx_string*, %nyx_string** %word.ptr
  %95 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %95)
  %97 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %96)
  store i1 %97, i1* %35
  br label %sc_or_end19
sc_or_end19:
  %98 = load i1, i1* %35
  br i1 %98, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %99 = load %nyx_string*, %nyx_string** %word.ptr
  %100 = getelementptr [9 x i8], [9 x i8]* @.str11, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %100)
  %102 = call i1 @nyx_string_equals(%nyx_string* %99, %nyx_string* %101)
  store i1 %102, i1* %34
  br label %sc_or_end21
sc_or_end21:
  %103 = load i1, i1* %34
  br i1 %103, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %104 = load %nyx_string*, %nyx_string** %word.ptr
  %105 = getelementptr [7 x i8], [7 x i8]* @.str12, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %105)
  %107 = call i1 @nyx_string_equals(%nyx_string* %104, %nyx_string* %106)
  store i1 %107, i1* %33
  br label %sc_or_end23
sc_or_end23:
  %108 = load i1, i1* %33
  br i1 %108, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %109 = load %nyx_string*, %nyx_string** %word.ptr
  %110 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %110)
  %112 = call i1 @nyx_string_equals(%nyx_string* %109, %nyx_string* %111)
  store i1 %112, i1* %32
  br label %sc_or_end25
sc_or_end25:
  %113 = load i1, i1* %32
  br i1 %113, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %114 = load %nyx_string*, %nyx_string** %word.ptr
  %115 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %115)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  store i1 %117, i1* %31
  br label %sc_or_end27
sc_or_end27:
  %118 = load i1, i1* %31
  br i1 %118, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %119 = load %nyx_string*, %nyx_string** %word.ptr
  %120 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %120)
  %122 = call i1 @nyx_string_equals(%nyx_string* %119, %nyx_string* %121)
  store i1 %122, i1* %30
  br label %sc_or_end29
sc_or_end29:
  %123 = load i1, i1* %30
  br i1 %123, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %124 = load %nyx_string*, %nyx_string** %word.ptr
  %125 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %125)
  %127 = call i1 @nyx_string_equals(%nyx_string* %124, %nyx_string* %126)
  store i1 %127, i1* %29
  br label %sc_or_end31
sc_or_end31:
  %128 = load i1, i1* %29
  br i1 %128, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %129 = load %nyx_string*, %nyx_string** %word.ptr
  %130 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %130)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  store i1 %132, i1* %28
  br label %sc_or_end33
sc_or_end33:
  %133 = load i1, i1* %28
  br i1 %133, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %134 = load %nyx_string*, %nyx_string** %word.ptr
  %135 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %135)
  %137 = call i1 @nyx_string_equals(%nyx_string* %134, %nyx_string* %136)
  store i1 %137, i1* %27
  br label %sc_or_end35
sc_or_end35:
  %138 = load i1, i1* %27
  br i1 %138, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %139 = load %nyx_string*, %nyx_string** %word.ptr
  %140 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %140)
  %142 = call i1 @nyx_string_equals(%nyx_string* %139, %nyx_string* %141)
  store i1 %142, i1* %26
  br label %sc_or_end37
sc_or_end37:
  %143 = load i1, i1* %26
  br i1 %143, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %144 = load %nyx_string*, %nyx_string** %word.ptr
  %145 = getelementptr [4 x i8], [4 x i8]* @.str20, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %145)
  %147 = call i1 @nyx_string_equals(%nyx_string* %144, %nyx_string* %146)
  store i1 %147, i1* %25
  br label %sc_or_end39
sc_or_end39:
  %148 = load i1, i1* %25
  br i1 %148, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %149 = load %nyx_string*, %nyx_string** %word.ptr
  %150 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %150)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  store i1 %152, i1* %24
  br label %sc_or_end41
sc_or_end41:
  %153 = load i1, i1* %24
  br i1 %153, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %154 = load %nyx_string*, %nyx_string** %word.ptr
  %155 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %155)
  %157 = call i1 @nyx_string_equals(%nyx_string* %154, %nyx_string* %156)
  store i1 %157, i1* %23
  br label %sc_or_end43
sc_or_end43:
  %158 = load i1, i1* %23
  br i1 %158, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %159 = load %nyx_string*, %nyx_string** %word.ptr
  %160 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %160)
  %162 = call i1 @nyx_string_equals(%nyx_string* %159, %nyx_string* %161)
  store i1 %162, i1* %22
  br label %sc_or_end45
sc_or_end45:
  %163 = load i1, i1* %22
  br i1 %163, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %164 = load %nyx_string*, %nyx_string** %word.ptr
  %165 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %165)
  %167 = call i1 @nyx_string_equals(%nyx_string* %164, %nyx_string* %166)
  store i1 %167, i1* %21
  br label %sc_or_end47
sc_or_end47:
  %168 = load i1, i1* %21
  br i1 %168, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %169 = load %nyx_string*, %nyx_string** %word.ptr
  %170 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %170)
  %172 = call i1 @nyx_string_equals(%nyx_string* %169, %nyx_string* %171)
  store i1 %172, i1* %20
  br label %sc_or_end49
sc_or_end49:
  %173 = load i1, i1* %20
  br i1 %173, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %174 = load %nyx_string*, %nyx_string** %word.ptr
  %175 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %175)
  %177 = call i1 @nyx_string_equals(%nyx_string* %174, %nyx_string* %176)
  store i1 %177, i1* %19
  br label %sc_or_end51
sc_or_end51:
  %178 = load i1, i1* %19
  br i1 %178, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %179 = load %nyx_string*, %nyx_string** %word.ptr
  %180 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %180)
  %182 = call i1 @nyx_string_equals(%nyx_string* %179, %nyx_string* %181)
  store i1 %182, i1* %18
  br label %sc_or_end53
sc_or_end53:
  %183 = load i1, i1* %18
  br i1 %183, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %184 = load %nyx_string*, %nyx_string** %word.ptr
  %185 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %185)
  %187 = call i1 @nyx_string_equals(%nyx_string* %184, %nyx_string* %186)
  store i1 %187, i1* %17
  br label %sc_or_end55
sc_or_end55:
  %188 = load i1, i1* %17
  br i1 %188, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %189 = load %nyx_string*, %nyx_string** %word.ptr
  %190 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %190)
  %192 = call i1 @nyx_string_equals(%nyx_string* %189, %nyx_string* %191)
  store i1 %192, i1* %16
  br label %sc_or_end57
sc_or_end57:
  %193 = load i1, i1* %16
  br i1 %193, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %194 = load %nyx_string*, %nyx_string** %word.ptr
  %195 = getelementptr [7 x i8], [7 x i8]* @.str30, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %195)
  %197 = call i1 @nyx_string_equals(%nyx_string* %194, %nyx_string* %196)
  store i1 %197, i1* %15
  br label %sc_or_end59
sc_or_end59:
  %198 = load i1, i1* %15
  br i1 %198, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %199 = load %nyx_string*, %nyx_string** %word.ptr
  %200 = getelementptr [7 x i8], [7 x i8]* @.str31, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %200)
  %202 = call i1 @nyx_string_equals(%nyx_string* %199, %nyx_string* %201)
  store i1 %202, i1* %14
  br label %sc_or_end61
sc_or_end61:
  %203 = load i1, i1* %14
  br i1 %203, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %204 = load %nyx_string*, %nyx_string** %word.ptr
  %205 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %205)
  %207 = call i1 @nyx_string_equals(%nyx_string* %204, %nyx_string* %206)
  store i1 %207, i1* %13
  br label %sc_or_end63
sc_or_end63:
  %208 = load i1, i1* %13
  br i1 %208, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %209 = load %nyx_string*, %nyx_string** %word.ptr
  %210 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %210)
  %212 = call i1 @nyx_string_equals(%nyx_string* %209, %nyx_string* %211)
  store i1 %212, i1* %12
  br label %sc_or_end65
sc_or_end65:
  %213 = load i1, i1* %12
  br i1 %213, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %214 = load %nyx_string*, %nyx_string** %word.ptr
  %215 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %215)
  %217 = call i1 @nyx_string_equals(%nyx_string* %214, %nyx_string* %216)
  store i1 %217, i1* %11
  br label %sc_or_end67
sc_or_end67:
  %218 = load i1, i1* %11
  br i1 %218, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %219 = load %nyx_string*, %nyx_string** %word.ptr
  %220 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %220)
  %222 = call i1 @nyx_string_equals(%nyx_string* %219, %nyx_string* %221)
  store i1 %222, i1* %10
  br label %sc_or_end69
sc_or_end69:
  %223 = load i1, i1* %10
  br i1 %223, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %224 = load %nyx_string*, %nyx_string** %word.ptr
  %225 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %225)
  %227 = call i1 @nyx_string_equals(%nyx_string* %224, %nyx_string* %226)
  store i1 %227, i1* %9
  br label %sc_or_end71
sc_or_end71:
  %228 = load i1, i1* %9
  br i1 %228, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %229 = load %nyx_string*, %nyx_string** %word.ptr
  %230 = getelementptr [6 x i8], [6 x i8]* @.str37, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %230)
  %232 = call i1 @nyx_string_equals(%nyx_string* %229, %nyx_string* %231)
  store i1 %232, i1* %8
  br label %sc_or_end73
sc_or_end73:
  %233 = load i1, i1* %8
  br i1 %233, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %234 = load %nyx_string*, %nyx_string** %word.ptr
  %235 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %235)
  %237 = call i1 @nyx_string_equals(%nyx_string* %234, %nyx_string* %236)
  store i1 %237, i1* %7
  br label %sc_or_end75
sc_or_end75:
  %238 = load i1, i1* %7
  br i1 %238, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %239 = load %nyx_string*, %nyx_string** %word.ptr
  %240 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %240)
  %242 = call i1 @nyx_string_equals(%nyx_string* %239, %nyx_string* %241)
  store i1 %242, i1* %6
  br label %sc_or_end77
sc_or_end77:
  %243 = load i1, i1* %6
  br i1 %243, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %244 = load %nyx_string*, %nyx_string** %word.ptr
  %245 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %245)
  %247 = call i1 @nyx_string_equals(%nyx_string* %244, %nyx_string* %246)
  store i1 %247, i1* %5
  br label %sc_or_end79
sc_or_end79:
  %248 = load i1, i1* %5
  br i1 %248, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %249 = load %nyx_string*, %nyx_string** %word.ptr
  %250 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %250)
  %252 = call i1 @nyx_string_equals(%nyx_string* %249, %nyx_string* %251)
  store i1 %252, i1* %4
  br label %sc_or_end81
sc_or_end81:
  %253 = load i1, i1* %4
  br i1 %253, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %254 = load %nyx_string*, %nyx_string** %word.ptr
  %255 = getelementptr [6 x i8], [6 x i8]* @.str42, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %255)
  %257 = call i1 @nyx_string_equals(%nyx_string* %254, %nyx_string* %256)
  store i1 %257, i1* %3
  br label %sc_or_end83
sc_or_end83:
  %258 = load i1, i1* %3
  br i1 %258, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %259 = load %nyx_string*, %nyx_string** %word.ptr
  %260 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %260)
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
  %266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %265)
  %267 = call i1 @nyx_string_equals(%nyx_string* %264, %nyx_string* %266)
  br i1 %267, label %then86, label %else87
then86:
  %268 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %268)
  ret %nyx_string* %269
else87:
  br label %merge88
merge88:
  %270 = load %nyx_string*, %nyx_string** %word.ptr
  %271 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %271)
  %273 = call i1 @nyx_string_equals(%nyx_string* %270, %nyx_string* %272)
  br i1 %273, label %then89, label %else90
then89:
  %274 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %274)
  ret %nyx_string* %275
else90:
  br label %merge91
merge91:
  %276 = load %nyx_string*, %nyx_string** %word.ptr
  %277 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %277)
  %279 = call i1 @nyx_string_equals(%nyx_string* %276, %nyx_string* %278)
  br i1 %279, label %then92, label %else93
then92:
  %280 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %280)
  ret %nyx_string* %281
else93:
  br label %merge94
merge94:
  %282 = load %nyx_string*, %nyx_string** %word.ptr
  %283 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %284 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %283)
  %285 = call i1 @nyx_string_equals(%nyx_string* %282, %nyx_string* %284)
  br i1 %285, label %then95, label %else96
then95:
  %286 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %287 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %286)
  ret %nyx_string* %287
else96:
  br label %merge97
merge97:
  %288 = load %nyx_string*, %nyx_string** %word.ptr
  %289 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %289)
  %291 = call i1 @nyx_string_equals(%nyx_string* %288, %nyx_string* %290)
  br i1 %291, label %then98, label %else99
then98:
  %292 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %292)
  ret %nyx_string* %293
else99:
  br label %merge100
merge100:
  %294 = load %nyx_string*, %nyx_string** %word.ptr
  %295 = getelementptr [3 x i8], [3 x i8]* @.str54, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %295)
  %297 = call i1 @nyx_string_equals(%nyx_string* %294, %nyx_string* %296)
  br i1 %297, label %then101, label %else102
then101:
  %298 = getelementptr [3 x i8], [3 x i8]* @.str55, i32 0, i32 0
  %299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %298)
  ret %nyx_string* %299
else102:
  br label %merge103
merge103:
  %300 = load %nyx_string*, %nyx_string** %word.ptr
  %301 = getelementptr [5 x i8], [5 x i8]* @.str56, i32 0, i32 0
  %302 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %301)
  %303 = call i1 @nyx_string_equals(%nyx_string* %300, %nyx_string* %302)
  br i1 %303, label %then104, label %else105
then104:
  %304 = getelementptr [5 x i8], [5 x i8]* @.str57, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %304)
  ret %nyx_string* %305
else105:
  br label %merge106
merge106:
  %306 = load %nyx_string*, %nyx_string** %word.ptr
  %307 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %307)
  %309 = call i1 @nyx_string_equals(%nyx_string* %306, %nyx_string* %308)
  br i1 %309, label %then107, label %else108
then107:
  %310 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %311 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %310)
  ret %nyx_string* %311
else108:
  br label %merge109
merge109:
  %312 = load %nyx_string*, %nyx_string** %word.ptr
  %313 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %313)
  %315 = call i1 @nyx_string_equals(%nyx_string* %312, %nyx_string* %314)
  br i1 %315, label %then110, label %else111
then110:
  %316 = getelementptr [4 x i8], [4 x i8]* @.str61, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %316)
  ret %nyx_string* %317
else111:
  br label %merge112
merge112:
  %318 = load %nyx_string*, %nyx_string** %word.ptr
  %319 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %319)
  %321 = call i1 @nyx_string_equals(%nyx_string* %318, %nyx_string* %320)
  br i1 %321, label %then113, label %else114
then113:
  %322 = getelementptr [3 x i8], [3 x i8]* @.str63, i32 0, i32 0
  %323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %322)
  ret %nyx_string* %323
else114:
  br label %merge115
merge115:
  %324 = load %nyx_string*, %nyx_string** %word.ptr
  %325 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %325)
  %327 = call i1 @nyx_string_equals(%nyx_string* %324, %nyx_string* %326)
  br i1 %327, label %then116, label %else117
then116:
  %328 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %329 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %328)
  ret %nyx_string* %329
else117:
  br label %merge118
merge118:
  %330 = load %nyx_string*, %nyx_string** %word.ptr
  %331 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %332 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %331)
  %333 = call i1 @nyx_string_equals(%nyx_string* %330, %nyx_string* %332)
  br i1 %333, label %then119, label %else120
then119:
  %334 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %334)
  ret %nyx_string* %335
else120:
  br label %merge121
merge121:
  %336 = load %nyx_string*, %nyx_string** %word.ptr
  %337 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %337)
  %339 = call i1 @nyx_string_equals(%nyx_string* %336, %nyx_string* %338)
  br i1 %339, label %then122, label %else123
then122:
  %340 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %341 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %340)
  ret %nyx_string* %341
else123:
  br label %merge124
merge124:
  %342 = load %nyx_string*, %nyx_string** %word.ptr
  %343 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %343)
  %345 = call i1 @nyx_string_equals(%nyx_string* %342, %nyx_string* %344)
  br i1 %345, label %then125, label %else126
then125:
  %346 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %346)
  ret %nyx_string* %347
else126:
  br label %merge127
merge127:
  %348 = load %nyx_string*, %nyx_string** %word.ptr
  %349 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %350 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %349)
  %351 = call i1 @nyx_string_equals(%nyx_string* %348, %nyx_string* %350)
  br i1 %351, label %then128, label %else129
then128:
  %352 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %353 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %352)
  ret %nyx_string* %353
else129:
  br label %merge130
merge130:
  %354 = load %nyx_string*, %nyx_string** %word.ptr
  %355 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %355)
  %357 = call i1 @nyx_string_equals(%nyx_string* %354, %nyx_string* %356)
  br i1 %357, label %then131, label %else132
then131:
  %358 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %359 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %358)
  ret %nyx_string* %359
else132:
  br label %merge133
merge133:
  %360 = load %nyx_string*, %nyx_string** %word.ptr
  %361 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %362 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %361)
  %363 = call i1 @nyx_string_equals(%nyx_string* %360, %nyx_string* %362)
  br i1 %363, label %then134, label %else135
then134:
  %364 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %364)
  ret %nyx_string* %365
else135:
  br label %merge136
merge136:
  %366 = load %nyx_string*, %nyx_string** %word.ptr
  %367 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %368 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %367)
  %369 = call i1 @nyx_string_equals(%nyx_string* %366, %nyx_string* %368)
  br i1 %369, label %then137, label %else138
then137:
  %370 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %371 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %370)
  ret %nyx_string* %371
else138:
  br label %merge139
merge139:
  %372 = load %nyx_string*, %nyx_string** %word.ptr
  %373 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %374 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %373)
  %375 = call i1 @nyx_string_equals(%nyx_string* %372, %nyx_string* %374)
  br i1 %375, label %then140, label %else141
then140:
  %376 = getelementptr [5 x i8], [5 x i8]* @.str81, i32 0, i32 0
  %377 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %376)
  ret %nyx_string* %377
else141:
  br label %merge142
merge142:
  %378 = load %nyx_string*, %nyx_string** %word.ptr
  %379 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %380 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %379)
  %381 = call i1 @nyx_string_equals(%nyx_string* %378, %nyx_string* %380)
  br i1 %381, label %then143, label %else144
then143:
  %382 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %382)
  ret %nyx_string* %383
else144:
  br label %merge145
merge145:
  %384 = load %nyx_string*, %nyx_string** %word.ptr
  %385 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %386 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %385)
  %387 = call i1 @nyx_string_equals(%nyx_string* %384, %nyx_string* %386)
  br i1 %387, label %then146, label %else147
then146:
  %388 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %389 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %388)
  ret %nyx_string* %389
else147:
  br label %merge148
merge148:
  %390 = load %nyx_string*, %nyx_string** %word.ptr
  %391 = getelementptr [3 x i8], [3 x i8]* @.str86, i32 0, i32 0
  %392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %391)
  %393 = call i1 @nyx_string_equals(%nyx_string* %390, %nyx_string* %392)
  br i1 %393, label %then149, label %else150
then149:
  %394 = getelementptr [3 x i8], [3 x i8]* @.str87, i32 0, i32 0
  %395 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %394)
  ret %nyx_string* %395
else150:
  br label %merge151
merge151:
  %396 = load %nyx_string*, %nyx_string** %word.ptr
  %397 = getelementptr [4 x i8], [4 x i8]* @.str88, i32 0, i32 0
  %398 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %397)
  %399 = call i1 @nyx_string_equals(%nyx_string* %396, %nyx_string* %398)
  br i1 %399, label %then152, label %else153
then152:
  %400 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %401 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %400)
  ret %nyx_string* %401
else153:
  br label %merge154
merge154:
  %402 = load %nyx_string*, %nyx_string** %word.ptr
  %403 = getelementptr [5 x i8], [5 x i8]* @.str90, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %403)
  %405 = call i1 @nyx_string_equals(%nyx_string* %402, %nyx_string* %404)
  br i1 %405, label %then155, label %else156
then155:
  %406 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %407 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %406)
  ret %nyx_string* %407
else156:
  br label %merge157
merge157:
  %408 = load %nyx_string*, %nyx_string** %word.ptr
  %409 = getelementptr [6 x i8], [6 x i8]* @.str92, i32 0, i32 0
  %410 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %409)
  %411 = call i1 @nyx_string_equals(%nyx_string* %408, %nyx_string* %410)
  br i1 %411, label %then158, label %else159
then158:
  %412 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %412)
  ret %nyx_string* %413
else159:
  br label %merge160
merge160:
  %414 = load %nyx_string*, %nyx_string** %word.ptr
  %415 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %416 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %415)
  %417 = call i1 @nyx_string_equals(%nyx_string* %414, %nyx_string* %416)
  br i1 %417, label %then161, label %else162
then161:
  %418 = getelementptr [5 x i8], [5 x i8]* @.str95, i32 0, i32 0
  %419 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %418)
  ret %nyx_string* %419
else162:
  br label %merge163
merge163:
  %420 = load %nyx_string*, %nyx_string** %word.ptr
  %421 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %422 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %421)
  %423 = call i1 @nyx_string_equals(%nyx_string* %420, %nyx_string* %422)
  br i1 %423, label %then164, label %else165
then164:
  %424 = getelementptr [7 x i8], [7 x i8]* @.str97, i32 0, i32 0
  %425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %424)
  ret %nyx_string* %425
else165:
  br label %merge166
merge166:
  %426 = load %nyx_string*, %nyx_string** %word.ptr
  %427 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %427)
  %429 = call i1 @nyx_string_equals(%nyx_string* %426, %nyx_string* %428)
  br i1 %429, label %then167, label %else168
then167:
  %430 = getelementptr [7 x i8], [7 x i8]* @.str99, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %430)
  ret %nyx_string* %431
else168:
  br label %merge169
merge169:
  %432 = load %nyx_string*, %nyx_string** %word.ptr
  %433 = getelementptr [3 x i8], [3 x i8]* @.str100, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %433)
  %435 = call i1 @nyx_string_equals(%nyx_string* %432, %nyx_string* %434)
  br i1 %435, label %then170, label %else171
then170:
  %436 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %436)
  ret %nyx_string* %437
else171:
  br label %merge172
merge172:
  %438 = load %nyx_string*, %nyx_string** %word.ptr
  %439 = getelementptr [7 x i8], [7 x i8]* @.str102, i32 0, i32 0
  %440 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %439)
  %441 = call i1 @nyx_string_equals(%nyx_string* %438, %nyx_string* %440)
  br i1 %441, label %then173, label %else174
then173:
  %442 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %443 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %442)
  ret %nyx_string* %443
else174:
  br label %merge175
merge175:
  %444 = load %nyx_string*, %nyx_string** %word.ptr
  %445 = getelementptr [7 x i8], [7 x i8]* @.str104, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %445)
  %447 = call i1 @nyx_string_equals(%nyx_string* %444, %nyx_string* %446)
  br i1 %447, label %then176, label %else177
then176:
  %448 = getelementptr [7 x i8], [7 x i8]* @.str105, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %448)
  ret %nyx_string* %449
else177:
  br label %merge178
merge178:
  %450 = load %nyx_string*, %nyx_string** %word.ptr
  %451 = getelementptr [7 x i8], [7 x i8]* @.str106, i32 0, i32 0
  %452 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %451)
  %453 = call i1 @nyx_string_equals(%nyx_string* %450, %nyx_string* %452)
  br i1 %453, label %then179, label %else180
then179:
  %454 = getelementptr [7 x i8], [7 x i8]* @.str107, i32 0, i32 0
  %455 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %454)
  ret %nyx_string* %455
else180:
  br label %merge181
merge181:
  %456 = load %nyx_string*, %nyx_string** %word.ptr
  %457 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %457)
  %459 = call i1 @nyx_string_equals(%nyx_string* %456, %nyx_string* %458)
  br i1 %459, label %then182, label %else183
then182:
  %460 = getelementptr [8 x i8], [8 x i8]* @.str109, i32 0, i32 0
  %461 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %460)
  ret %nyx_string* %461
else183:
  br label %merge184
merge184:
  %462 = load %nyx_string*, %nyx_string** %word.ptr
  %463 = getelementptr [4 x i8], [4 x i8]* @.str110, i32 0, i32 0
  %464 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %463)
  %465 = call i1 @nyx_string_equals(%nyx_string* %462, %nyx_string* %464)
  br i1 %465, label %then185, label %else186
then185:
  %466 = getelementptr [4 x i8], [4 x i8]* @.str111, i32 0, i32 0
  %467 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %466)
  ret %nyx_string* %467
else186:
  br label %merge187
merge187:
  %468 = load %nyx_string*, %nyx_string** %word.ptr
  %469 = getelementptr [4 x i8], [4 x i8]* @.str112, i32 0, i32 0
  %470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %469)
  %471 = call i1 @nyx_string_equals(%nyx_string* %468, %nyx_string* %470)
  br i1 %471, label %then188, label %else189
then188:
  %472 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %472)
  ret %nyx_string* %473
else189:
  br label %merge190
merge190:
  %474 = load %nyx_string*, %nyx_string** %word.ptr
  %475 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %476 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %475)
  %477 = call i1 @nyx_string_equals(%nyx_string* %474, %nyx_string* %476)
  br i1 %477, label %then191, label %else192
then191:
  %478 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %479 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %478)
  ret %nyx_string* %479
else192:
  br label %merge193
merge193:
  %480 = load %nyx_string*, %nyx_string** %word.ptr
  %481 = getelementptr [7 x i8], [7 x i8]* @.str116, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %481)
  %483 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %482)
  br i1 %483, label %then194, label %else195
then194:
  %484 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %485 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %484)
  ret %nyx_string* %485
else195:
  br label %merge196
merge196:
  %486 = load %nyx_string*, %nyx_string** %word.ptr
  %487 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %488 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %487)
  %489 = call i1 @nyx_string_equals(%nyx_string* %486, %nyx_string* %488)
  br i1 %489, label %then197, label %else198
then197:
  %490 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %491 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %490)
  ret %nyx_string* %491
else198:
  br label %merge199
merge199:
  %492 = load %nyx_string*, %nyx_string** %word.ptr
  %493 = getelementptr [6 x i8], [6 x i8]* @.str120, i32 0, i32 0
  %494 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %493)
  %495 = call i1 @nyx_string_equals(%nyx_string* %492, %nyx_string* %494)
  br i1 %495, label %then200, label %else201
then200:
  %496 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %496)
  ret %nyx_string* %497
else201:
  br label %merge202
merge202:
  %498 = load %nyx_string*, %nyx_string** %word.ptr
  %499 = getelementptr [4 x i8], [4 x i8]* @.str122, i32 0, i32 0
  %500 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %499)
  %501 = call i1 @nyx_string_equals(%nyx_string* %498, %nyx_string* %500)
  br i1 %501, label %then203, label %else204
then203:
  %502 = getelementptr [4 x i8], [4 x i8]* @.str123, i32 0, i32 0
  %503 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %502)
  ret %nyx_string* %503
else204:
  br label %merge205
merge205:
  %504 = load %nyx_string*, %nyx_string** %word.ptr
  %505 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %505)
  %507 = call i1 @nyx_string_equals(%nyx_string* %504, %nyx_string* %506)
  br i1 %507, label %then206, label %else207
then206:
  %508 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %509 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %508)
  ret %nyx_string* %509
else207:
  br label %merge208
merge208:
  %510 = load %nyx_string*, %nyx_string** %word.ptr
  %511 = getelementptr [6 x i8], [6 x i8]* @.str126, i32 0, i32 0
  %512 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %511)
  %513 = call i1 @nyx_string_equals(%nyx_string* %510, %nyx_string* %512)
  br i1 %513, label %then209, label %else210
then209:
  %514 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %515 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %514)
  ret %nyx_string* %515
else210:
  br label %merge211
merge211:
  %516 = load %nyx_string*, %nyx_string** %word.ptr
  %517 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %517)
  %519 = call i1 @nyx_string_equals(%nyx_string* %516, %nyx_string* %518)
  br i1 %519, label %then212, label %else213
then212:
  %520 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %521 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %520)
  ret %nyx_string* %521
else213:
  br label %merge214
merge214:
  %522 = load %nyx_string*, %nyx_string** %word.ptr
  %523 = getelementptr [6 x i8], [6 x i8]* @.str130, i32 0, i32 0
  %524 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %523)
  %525 = call i1 @nyx_string_equals(%nyx_string* %522, %nyx_string* %524)
  br i1 %525, label %then215, label %else216
then215:
  %526 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %527 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %526)
  ret %nyx_string* %527
else216:
  br label %merge217
merge217:
  %528 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %528)
  ret %nyx_string* %529
}

%SharedEnv_tokenize = type { %nyx_string*, %nyx_string*, i64, i64, i64, { i64, i8* }*, i64, i1 }
define { i64, i8* }* @tokenize(
%nyx_string* %source_code.param) {
  %530 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* null, i32 1
  %531 = ptrtoint %SharedEnv_tokenize* %530 to i64
  %532 = call i8* @GC_malloc(i64 %531)
  %533 = bitcast i8* %532 to %SharedEnv_tokenize*
  %534 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 0
  store %nyx_string* %source_code.param, %nyx_string** %534
  %535 = load %nyx_string*, %nyx_string** %534
  %536 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 1
  store %nyx_string* %535, %nyx_string** %536
  %537 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 2
  store i64 0, i64* %537
  %538 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 3
  store i64 1, i64* %538
  %539 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 4
  store i64 1, i64* %539
  %540 = call { i64, i8* }* @nyx_array_new_ptr()
  %541 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 5
  store { i64, i8* }* %540, { i64, i8* }** %541
  %542 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 6
  store i64 0, i64* %542
  store i64 0, i64* @g_lex_error_count
  %543 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %533, i32 0, i32 7
  store i1 0, i1* %543
  %544 = call i8* @llvm.stacksave()
  br label %while_cond218
while_cond218:
  %545 = load i1, i1* %543
  %546 = xor i1 %545, true
  br i1 %546, label %while_body219, label %while_end220
while_body219:
  call void @llvm.stackrestore(i8* %544)
  %547 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %533)
  br i1 %547, label %then221, label %else222
then221:
  store i1 1, i1* %543
  br label %merge223
else222:
  %548 = call i64 @tokenize__scan_token(%SharedEnv_tokenize* %533)
  br label %merge223
merge223:
  br label %while_cond218
while_end220:
  %549 = getelementptr [4 x i8], [4 x i8]* @.str133, i32 0, i32 0
  %550 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %549)
  %551 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %551)
  %553 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %533, %nyx_string* %550, %nyx_string* %552)
  %554 = load { i64, i8* }*, { i64, i8* }** %541
  ret { i64, i8* }* %554
}

define internal i8 @tokenize__peek(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = load i64, i64* %3
  %10 = load %nyx_string*, %nyx_string** %2
  %11 = call i64 @nyx_string_byte_length(%nyx_string* %10)
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %then0, label %else1
then0:
  %13 = load %nyx_string*, %nyx_string** %2
  %14 = load i64, i64* %3
  %15 = call i8 @nyx_string_char_at(%nyx_string* %13, i64 %14)
  %16 = zext i8 %15 to i64
  %17 = trunc i64 %16 to i8
  ret i8 %17
else1:
  br label %merge2
merge2:
  %18 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %19 = load i8, i8* %18
  %20 = zext i8 %19 to i64
  %21 = trunc i64 %20 to i8
  ret i8 %21
}

define internal i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = load i64, i64* %3
  %10 = add i64 %9, 1
  %11 = alloca i64
  store i64 %10, i64* %11
  %12 = load i64, i64* %11
  %13 = load %nyx_string*, %nyx_string** %2
  %14 = call i64 @nyx_string_byte_length(%nyx_string* %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %then0, label %else1
then0:
  %16 = load %nyx_string*, %nyx_string** %2
  %17 = load i64, i64* %11
  %18 = call i8 @nyx_string_char_at(%nyx_string* %16, i64 %17)
  %19 = zext i8 %18 to i64
  %20 = trunc i64 %19 to i8
  ret i8 %20
else1:
  br label %merge2
merge2:
  %21 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = trunc i64 %23 to i8
  ret i8 %24
}

define internal i8 @tokenize__advance(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %10 = alloca i8
  store i8 %9, i8* %10
  %11 = load i64, i64* %3
  %12 = add i64 %11, 1
  store i64 %12, i64* %3
  %13 = load i8, i8* %10
  %14 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %15 = load i8, i8* %14
  %16 = zext i8 %15 to i64
  %17 = zext i8 %13 to i64
  %18 = icmp eq i64 %17, %16
  br i1 %18, label %then0, label %else1
then0:
  %19 = load i64, i64* %4
  %20 = add i64 %19, 1
  store i64 %20, i64* %4
  store i64 1, i64* %5
  br label %merge2
else1:
  %21 = load i64, i64* %5
  %22 = add i64 %21, 1
  store i64 %22, i64* %5
  br label %merge2
merge2:
  %23 = load i8, i8* %10
  ret i8 %23
}

define internal i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = load i64, i64* %3
  %10 = load %nyx_string*, %nyx_string** %2
  %11 = call i64 @nyx_string_byte_length(%nyx_string* %10)
  %12 = icmp sge i64 %9, %11
  ret i1 %12
}

define internal i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %type.param, %nyx_string* %value.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %9
  %10 = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %10
  %11 = getelementptr %Token, %Token* null, i32 1
  %12 = ptrtoint %Token* %11 to i64
  %13 = call i8* @GC_malloc(i64 %12)
  %14 = bitcast i8* %13 to %Token*
  %15 = load %nyx_string*, %nyx_string** %9
  %16 = getelementptr %Token, %Token* %14, i32 0, i32 0
  store %nyx_string* %15, %nyx_string** %16
  %17 = load %nyx_string*, %nyx_string** %10
  %18 = getelementptr %Token, %Token* %14, i32 0, i32 1
  store %nyx_string* %17, %nyx_string** %18
  %19 = load i64, i64* %4
  %20 = getelementptr %Token, %Token* %14, i32 0, i32 2
  store i64 %19, i64* %20
  %21 = load i64, i64* %5
  %22 = getelementptr %Token, %Token* %14, i32 0, i32 3
  store i64 %21, i64* %22
  %23 = load %Token, %Token* %14
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load { i64, i8* }*, { i64, i8* }** %6
  %26 = load %Token, %Token* %24
  %27 = getelementptr %Token, %Token* null, i32 1
  %28 = ptrtoint %Token* %27 to i64
  %29 = call i8* @GC_malloc(i64 %28)
  %30 = bitcast i8* %29 to %Token*
  store %Token %26, %Token* %30
  %31 = ptrtoint %Token* %30 to i64
  call void @nyx_array_push({ i64, i8* }* %25, i64 %31)
  ret i64 0
}

define internal i1 @tokenize__is_digit(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i8
  store i8 %c.param, i8* %9
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
  %19 = load i8, i8* %9
  %20 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  %23 = zext i8 %19 to i64
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %25 = load i8, i8* %9
  %26 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %27 = load i8, i8* %26
  %28 = zext i8 %27 to i64
  %29 = zext i8 %25 to i64
  %30 = icmp eq i64 %29, %28
  store i1 %30, i1* %18
  br label %sc_or_end1
sc_or_end1:
  %31 = load i1, i1* %18
  br i1 %31, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %32 = load i8, i8* %9
  %33 = getelementptr [1 x i8], [1 x i8]* @.str140, i32 0, i32 0
  %34 = load i8, i8* %33
  %35 = zext i8 %34 to i64
  %36 = zext i8 %32 to i64
  %37 = icmp eq i64 %36, %35
  store i1 %37, i1* %17
  br label %sc_or_end3
sc_or_end3:
  %38 = load i1, i1* %17
  br i1 %38, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %39 = load i8, i8* %9
  %40 = getelementptr [1 x i8], [1 x i8]* @.str141, i32 0, i32 0
  %41 = load i8, i8* %40
  %42 = zext i8 %41 to i64
  %43 = zext i8 %39 to i64
  %44 = icmp eq i64 %43, %42
  store i1 %44, i1* %16
  br label %sc_or_end5
sc_or_end5:
  %45 = load i1, i1* %16
  br i1 %45, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %46 = load i8, i8* %9
  %47 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %48 = load i8, i8* %47
  %49 = zext i8 %48 to i64
  %50 = zext i8 %46 to i64
  %51 = icmp eq i64 %50, %49
  store i1 %51, i1* %15
  br label %sc_or_end7
sc_or_end7:
  %52 = load i1, i1* %15
  br i1 %52, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %53 = load i8, i8* %9
  %54 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %55 = load i8, i8* %54
  %56 = zext i8 %55 to i64
  %57 = zext i8 %53 to i64
  %58 = icmp eq i64 %57, %56
  store i1 %58, i1* %14
  br label %sc_or_end9
sc_or_end9:
  %59 = load i1, i1* %14
  br i1 %59, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %60 = load i8, i8* %9
  %61 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %62 = load i8, i8* %61
  %63 = zext i8 %62 to i64
  %64 = zext i8 %60 to i64
  %65 = icmp eq i64 %64, %63
  store i1 %65, i1* %13
  br label %sc_or_end11
sc_or_end11:
  %66 = load i1, i1* %13
  br i1 %66, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %67 = load i8, i8* %9
  %68 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %69 = load i8, i8* %68
  %70 = zext i8 %69 to i64
  %71 = zext i8 %67 to i64
  %72 = icmp eq i64 %71, %70
  store i1 %72, i1* %12
  br label %sc_or_end13
sc_or_end13:
  %73 = load i1, i1* %12
  br i1 %73, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %74 = load i8, i8* %9
  %75 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %76 = load i8, i8* %75
  %77 = zext i8 %76 to i64
  %78 = zext i8 %74 to i64
  %79 = icmp eq i64 %78, %77
  store i1 %79, i1* %11
  br label %sc_or_end15
sc_or_end15:
  %80 = load i1, i1* %11
  br i1 %80, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %81 = load i8, i8* %9
  %82 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %83 = load i8, i8* %82
  %84 = zext i8 %83 to i64
  %85 = zext i8 %81 to i64
  %86 = icmp eq i64 %85, %84
  store i1 %86, i1* %10
  br label %sc_or_end17
sc_or_end17:
  %87 = load i1, i1* %10
  ret i1 %87
}

define internal i1 @tokenize__is_alpha(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i8
  store i8 %c.param, i8* %9
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
  %62 = load i8, i8* %9
  %63 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %64 = load i8, i8* %63
  %65 = zext i8 %64 to i64
  %66 = zext i8 %62 to i64
  %67 = icmp eq i64 %66, %65
  br i1 %67, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %68 = load i8, i8* %9
  %69 = getelementptr [1 x i8], [1 x i8]* @.str149, i32 0, i32 0
  %70 = load i8, i8* %69
  %71 = zext i8 %70 to i64
  %72 = zext i8 %68 to i64
  %73 = icmp eq i64 %72, %71
  store i1 %73, i1* %61
  br label %sc_or_end1
sc_or_end1:
  %74 = load i1, i1* %61
  br i1 %74, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %75 = load i8, i8* %9
  %76 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %77 = load i8, i8* %76
  %78 = zext i8 %77 to i64
  %79 = zext i8 %75 to i64
  %80 = icmp eq i64 %79, %78
  store i1 %80, i1* %60
  br label %sc_or_end3
sc_or_end3:
  %81 = load i1, i1* %60
  br i1 %81, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %82 = load i8, i8* %9
  %83 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %84 = load i8, i8* %83
  %85 = zext i8 %84 to i64
  %86 = zext i8 %82 to i64
  %87 = icmp eq i64 %86, %85
  store i1 %87, i1* %59
  br label %sc_or_end5
sc_or_end5:
  %88 = load i1, i1* %59
  br i1 %88, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %89 = load i8, i8* %9
  %90 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %91 = load i8, i8* %90
  %92 = zext i8 %91 to i64
  %93 = zext i8 %89 to i64
  %94 = icmp eq i64 %93, %92
  store i1 %94, i1* %58
  br label %sc_or_end7
sc_or_end7:
  %95 = load i1, i1* %58
  br i1 %95, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %96 = load i8, i8* %9
  %97 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %98 = load i8, i8* %97
  %99 = zext i8 %98 to i64
  %100 = zext i8 %96 to i64
  %101 = icmp eq i64 %100, %99
  store i1 %101, i1* %57
  br label %sc_or_end9
sc_or_end9:
  %102 = load i1, i1* %57
  br i1 %102, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %103 = load i8, i8* %9
  %104 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %105 = load i8, i8* %104
  %106 = zext i8 %105 to i64
  %107 = zext i8 %103 to i64
  %108 = icmp eq i64 %107, %106
  store i1 %108, i1* %56
  br label %sc_or_end11
sc_or_end11:
  %109 = load i1, i1* %56
  br i1 %109, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %110 = load i8, i8* %9
  %111 = getelementptr [1 x i8], [1 x i8]* @.str155, i32 0, i32 0
  %112 = load i8, i8* %111
  %113 = zext i8 %112 to i64
  %114 = zext i8 %110 to i64
  %115 = icmp eq i64 %114, %113
  store i1 %115, i1* %55
  br label %sc_or_end13
sc_or_end13:
  %116 = load i1, i1* %55
  br i1 %116, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %117 = load i8, i8* %9
  %118 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %119 = load i8, i8* %118
  %120 = zext i8 %119 to i64
  %121 = zext i8 %117 to i64
  %122 = icmp eq i64 %121, %120
  store i1 %122, i1* %54
  br label %sc_or_end15
sc_or_end15:
  %123 = load i1, i1* %54
  br i1 %123, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %124 = load i8, i8* %9
  %125 = getelementptr [1 x i8], [1 x i8]* @.str157, i32 0, i32 0
  %126 = load i8, i8* %125
  %127 = zext i8 %126 to i64
  %128 = zext i8 %124 to i64
  %129 = icmp eq i64 %128, %127
  store i1 %129, i1* %53
  br label %sc_or_end17
sc_or_end17:
  %130 = load i1, i1* %53
  br i1 %130, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %131 = load i8, i8* %9
  %132 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %133 = load i8, i8* %132
  %134 = zext i8 %133 to i64
  %135 = zext i8 %131 to i64
  %136 = icmp eq i64 %135, %134
  store i1 %136, i1* %52
  br label %sc_or_end19
sc_or_end19:
  %137 = load i1, i1* %52
  br i1 %137, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %138 = load i8, i8* %9
  %139 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %140 = load i8, i8* %139
  %141 = zext i8 %140 to i64
  %142 = zext i8 %138 to i64
  %143 = icmp eq i64 %142, %141
  store i1 %143, i1* %51
  br label %sc_or_end21
sc_or_end21:
  %144 = load i1, i1* %51
  br i1 %144, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %145 = load i8, i8* %9
  %146 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %147 = load i8, i8* %146
  %148 = zext i8 %147 to i64
  %149 = zext i8 %145 to i64
  %150 = icmp eq i64 %149, %148
  store i1 %150, i1* %50
  br label %sc_or_end23
sc_or_end23:
  %151 = load i1, i1* %50
  br i1 %151, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %152 = load i8, i8* %9
  %153 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %154 = load i8, i8* %153
  %155 = zext i8 %154 to i64
  %156 = zext i8 %152 to i64
  %157 = icmp eq i64 %156, %155
  store i1 %157, i1* %49
  br label %sc_or_end25
sc_or_end25:
  %158 = load i1, i1* %49
  br i1 %158, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %159 = load i8, i8* %9
  %160 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %161 = load i8, i8* %160
  %162 = zext i8 %161 to i64
  %163 = zext i8 %159 to i64
  %164 = icmp eq i64 %163, %162
  store i1 %164, i1* %48
  br label %sc_or_end27
sc_or_end27:
  %165 = load i1, i1* %48
  br i1 %165, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %166 = load i8, i8* %9
  %167 = getelementptr [1 x i8], [1 x i8]* @.str163, i32 0, i32 0
  %168 = load i8, i8* %167
  %169 = zext i8 %168 to i64
  %170 = zext i8 %166 to i64
  %171 = icmp eq i64 %170, %169
  store i1 %171, i1* %47
  br label %sc_or_end29
sc_or_end29:
  %172 = load i1, i1* %47
  br i1 %172, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %173 = load i8, i8* %9
  %174 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %175 = load i8, i8* %174
  %176 = zext i8 %175 to i64
  %177 = zext i8 %173 to i64
  %178 = icmp eq i64 %177, %176
  store i1 %178, i1* %46
  br label %sc_or_end31
sc_or_end31:
  %179 = load i1, i1* %46
  br i1 %179, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %180 = load i8, i8* %9
  %181 = getelementptr [1 x i8], [1 x i8]* @.str165, i32 0, i32 0
  %182 = load i8, i8* %181
  %183 = zext i8 %182 to i64
  %184 = zext i8 %180 to i64
  %185 = icmp eq i64 %184, %183
  store i1 %185, i1* %45
  br label %sc_or_end33
sc_or_end33:
  %186 = load i1, i1* %45
  br i1 %186, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %187 = load i8, i8* %9
  %188 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %189 = load i8, i8* %188
  %190 = zext i8 %189 to i64
  %191 = zext i8 %187 to i64
  %192 = icmp eq i64 %191, %190
  store i1 %192, i1* %44
  br label %sc_or_end35
sc_or_end35:
  %193 = load i1, i1* %44
  br i1 %193, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %194 = load i8, i8* %9
  %195 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %196 = load i8, i8* %195
  %197 = zext i8 %196 to i64
  %198 = zext i8 %194 to i64
  %199 = icmp eq i64 %198, %197
  store i1 %199, i1* %43
  br label %sc_or_end37
sc_or_end37:
  %200 = load i1, i1* %43
  br i1 %200, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %201 = load i8, i8* %9
  %202 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %203 = load i8, i8* %202
  %204 = zext i8 %203 to i64
  %205 = zext i8 %201 to i64
  %206 = icmp eq i64 %205, %204
  store i1 %206, i1* %42
  br label %sc_or_end39
sc_or_end39:
  %207 = load i1, i1* %42
  br i1 %207, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %208 = load i8, i8* %9
  %209 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %210 = load i8, i8* %209
  %211 = zext i8 %210 to i64
  %212 = zext i8 %208 to i64
  %213 = icmp eq i64 %212, %211
  store i1 %213, i1* %41
  br label %sc_or_end41
sc_or_end41:
  %214 = load i1, i1* %41
  br i1 %214, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %215 = load i8, i8* %9
  %216 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %217 = load i8, i8* %216
  %218 = zext i8 %217 to i64
  %219 = zext i8 %215 to i64
  %220 = icmp eq i64 %219, %218
  store i1 %220, i1* %40
  br label %sc_or_end43
sc_or_end43:
  %221 = load i1, i1* %40
  br i1 %221, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %222 = load i8, i8* %9
  %223 = getelementptr [1 x i8], [1 x i8]* @.str171, i32 0, i32 0
  %224 = load i8, i8* %223
  %225 = zext i8 %224 to i64
  %226 = zext i8 %222 to i64
  %227 = icmp eq i64 %226, %225
  store i1 %227, i1* %39
  br label %sc_or_end45
sc_or_end45:
  %228 = load i1, i1* %39
  br i1 %228, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %229 = load i8, i8* %9
  %230 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %231 = load i8, i8* %230
  %232 = zext i8 %231 to i64
  %233 = zext i8 %229 to i64
  %234 = icmp eq i64 %233, %232
  store i1 %234, i1* %38
  br label %sc_or_end47
sc_or_end47:
  %235 = load i1, i1* %38
  br i1 %235, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %236 = load i8, i8* %9
  %237 = getelementptr [1 x i8], [1 x i8]* @.str173, i32 0, i32 0
  %238 = load i8, i8* %237
  %239 = zext i8 %238 to i64
  %240 = zext i8 %236 to i64
  %241 = icmp eq i64 %240, %239
  store i1 %241, i1* %37
  br label %sc_or_end49
sc_or_end49:
  %242 = load i1, i1* %37
  br i1 %242, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %243 = load i8, i8* %9
  %244 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %245 = load i8, i8* %244
  %246 = zext i8 %245 to i64
  %247 = zext i8 %243 to i64
  %248 = icmp eq i64 %247, %246
  store i1 %248, i1* %36
  br label %sc_or_end51
sc_or_end51:
  %249 = load i1, i1* %36
  br i1 %249, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %250 = load i8, i8* %9
  %251 = getelementptr [1 x i8], [1 x i8]* @.str175, i32 0, i32 0
  %252 = load i8, i8* %251
  %253 = zext i8 %252 to i64
  %254 = zext i8 %250 to i64
  %255 = icmp eq i64 %254, %253
  store i1 %255, i1* %35
  br label %sc_or_end53
sc_or_end53:
  %256 = load i1, i1* %35
  br i1 %256, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %257 = load i8, i8* %9
  %258 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %259 = load i8, i8* %258
  %260 = zext i8 %259 to i64
  %261 = zext i8 %257 to i64
  %262 = icmp eq i64 %261, %260
  store i1 %262, i1* %34
  br label %sc_or_end55
sc_or_end55:
  %263 = load i1, i1* %34
  br i1 %263, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %264 = load i8, i8* %9
  %265 = getelementptr [1 x i8], [1 x i8]* @.str177, i32 0, i32 0
  %266 = load i8, i8* %265
  %267 = zext i8 %266 to i64
  %268 = zext i8 %264 to i64
  %269 = icmp eq i64 %268, %267
  store i1 %269, i1* %33
  br label %sc_or_end57
sc_or_end57:
  %270 = load i1, i1* %33
  br i1 %270, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %271 = load i8, i8* %9
  %272 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %273 = load i8, i8* %272
  %274 = zext i8 %273 to i64
  %275 = zext i8 %271 to i64
  %276 = icmp eq i64 %275, %274
  store i1 %276, i1* %32
  br label %sc_or_end59
sc_or_end59:
  %277 = load i1, i1* %32
  br i1 %277, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %278 = load i8, i8* %9
  %279 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %280 = load i8, i8* %279
  %281 = zext i8 %280 to i64
  %282 = zext i8 %278 to i64
  %283 = icmp eq i64 %282, %281
  store i1 %283, i1* %31
  br label %sc_or_end61
sc_or_end61:
  %284 = load i1, i1* %31
  br i1 %284, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %285 = load i8, i8* %9
  %286 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %287 = load i8, i8* %286
  %288 = zext i8 %287 to i64
  %289 = zext i8 %285 to i64
  %290 = icmp eq i64 %289, %288
  store i1 %290, i1* %30
  br label %sc_or_end63
sc_or_end63:
  %291 = load i1, i1* %30
  br i1 %291, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %292 = load i8, i8* %9
  %293 = getelementptr [1 x i8], [1 x i8]* @.str181, i32 0, i32 0
  %294 = load i8, i8* %293
  %295 = zext i8 %294 to i64
  %296 = zext i8 %292 to i64
  %297 = icmp eq i64 %296, %295
  store i1 %297, i1* %29
  br label %sc_or_end65
sc_or_end65:
  %298 = load i1, i1* %29
  br i1 %298, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %299 = load i8, i8* %9
  %300 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %301 = load i8, i8* %300
  %302 = zext i8 %301 to i64
  %303 = zext i8 %299 to i64
  %304 = icmp eq i64 %303, %302
  store i1 %304, i1* %28
  br label %sc_or_end67
sc_or_end67:
  %305 = load i1, i1* %28
  br i1 %305, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %306 = load i8, i8* %9
  %307 = getelementptr [1 x i8], [1 x i8]* @.str183, i32 0, i32 0
  %308 = load i8, i8* %307
  %309 = zext i8 %308 to i64
  %310 = zext i8 %306 to i64
  %311 = icmp eq i64 %310, %309
  store i1 %311, i1* %27
  br label %sc_or_end69
sc_or_end69:
  %312 = load i1, i1* %27
  br i1 %312, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %313 = load i8, i8* %9
  %314 = getelementptr [1 x i8], [1 x i8]* @.str184, i32 0, i32 0
  %315 = load i8, i8* %314
  %316 = zext i8 %315 to i64
  %317 = zext i8 %313 to i64
  %318 = icmp eq i64 %317, %316
  store i1 %318, i1* %26
  br label %sc_or_end71
sc_or_end71:
  %319 = load i1, i1* %26
  br i1 %319, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %320 = load i8, i8* %9
  %321 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %322 = load i8, i8* %321
  %323 = zext i8 %322 to i64
  %324 = zext i8 %320 to i64
  %325 = icmp eq i64 %324, %323
  store i1 %325, i1* %25
  br label %sc_or_end73
sc_or_end73:
  %326 = load i1, i1* %25
  br i1 %326, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %327 = load i8, i8* %9
  %328 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %329 = load i8, i8* %328
  %330 = zext i8 %329 to i64
  %331 = zext i8 %327 to i64
  %332 = icmp eq i64 %331, %330
  store i1 %332, i1* %24
  br label %sc_or_end75
sc_or_end75:
  %333 = load i1, i1* %24
  br i1 %333, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %334 = load i8, i8* %9
  %335 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %336 = load i8, i8* %335
  %337 = zext i8 %336 to i64
  %338 = zext i8 %334 to i64
  %339 = icmp eq i64 %338, %337
  store i1 %339, i1* %23
  br label %sc_or_end77
sc_or_end77:
  %340 = load i1, i1* %23
  br i1 %340, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %341 = load i8, i8* %9
  %342 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %343 = load i8, i8* %342
  %344 = zext i8 %343 to i64
  %345 = zext i8 %341 to i64
  %346 = icmp eq i64 %345, %344
  store i1 %346, i1* %22
  br label %sc_or_end79
sc_or_end79:
  %347 = load i1, i1* %22
  br i1 %347, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %348 = load i8, i8* %9
  %349 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %350 = load i8, i8* %349
  %351 = zext i8 %350 to i64
  %352 = zext i8 %348 to i64
  %353 = icmp eq i64 %352, %351
  store i1 %353, i1* %21
  br label %sc_or_end81
sc_or_end81:
  %354 = load i1, i1* %21
  br i1 %354, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %355 = load i8, i8* %9
  %356 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %357 = load i8, i8* %356
  %358 = zext i8 %357 to i64
  %359 = zext i8 %355 to i64
  %360 = icmp eq i64 %359, %358
  store i1 %360, i1* %20
  br label %sc_or_end83
sc_or_end83:
  %361 = load i1, i1* %20
  br i1 %361, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %362 = load i8, i8* %9
  %363 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %364 = load i8, i8* %363
  %365 = zext i8 %364 to i64
  %366 = zext i8 %362 to i64
  %367 = icmp eq i64 %366, %365
  store i1 %367, i1* %19
  br label %sc_or_end85
sc_or_end85:
  %368 = load i1, i1* %19
  br i1 %368, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %369 = load i8, i8* %9
  %370 = getelementptr [1 x i8], [1 x i8]* @.str192, i32 0, i32 0
  %371 = load i8, i8* %370
  %372 = zext i8 %371 to i64
  %373 = zext i8 %369 to i64
  %374 = icmp eq i64 %373, %372
  store i1 %374, i1* %18
  br label %sc_or_end87
sc_or_end87:
  %375 = load i1, i1* %18
  br i1 %375, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %376 = load i8, i8* %9
  %377 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %378 = load i8, i8* %377
  %379 = zext i8 %378 to i64
  %380 = zext i8 %376 to i64
  %381 = icmp eq i64 %380, %379
  store i1 %381, i1* %17
  br label %sc_or_end89
sc_or_end89:
  %382 = load i1, i1* %17
  br i1 %382, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %383 = load i8, i8* %9
  %384 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %385 = load i8, i8* %384
  %386 = zext i8 %385 to i64
  %387 = zext i8 %383 to i64
  %388 = icmp eq i64 %387, %386
  store i1 %388, i1* %16
  br label %sc_or_end91
sc_or_end91:
  %389 = load i1, i1* %16
  br i1 %389, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %390 = load i8, i8* %9
  %391 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %392 = load i8, i8* %391
  %393 = zext i8 %392 to i64
  %394 = zext i8 %390 to i64
  %395 = icmp eq i64 %394, %393
  store i1 %395, i1* %15
  br label %sc_or_end93
sc_or_end93:
  %396 = load i1, i1* %15
  br i1 %396, label %sc_or_end95, label %sc_or_rhs94
sc_or_rhs94:
  %397 = load i8, i8* %9
  %398 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %399 = load i8, i8* %398
  %400 = zext i8 %399 to i64
  %401 = zext i8 %397 to i64
  %402 = icmp eq i64 %401, %400
  store i1 %402, i1* %14
  br label %sc_or_end95
sc_or_end95:
  %403 = load i1, i1* %14
  br i1 %403, label %sc_or_end97, label %sc_or_rhs96
sc_or_rhs96:
  %404 = load i8, i8* %9
  %405 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %406 = load i8, i8* %405
  %407 = zext i8 %406 to i64
  %408 = zext i8 %404 to i64
  %409 = icmp eq i64 %408, %407
  store i1 %409, i1* %13
  br label %sc_or_end97
sc_or_end97:
  %410 = load i1, i1* %13
  br i1 %410, label %sc_or_end99, label %sc_or_rhs98
sc_or_rhs98:
  %411 = load i8, i8* %9
  %412 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %413 = load i8, i8* %412
  %414 = zext i8 %413 to i64
  %415 = zext i8 %411 to i64
  %416 = icmp eq i64 %415, %414
  store i1 %416, i1* %12
  br label %sc_or_end99
sc_or_end99:
  %417 = load i1, i1* %12
  br i1 %417, label %sc_or_end101, label %sc_or_rhs100
sc_or_rhs100:
  %418 = load i8, i8* %9
  %419 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %420 = load i8, i8* %419
  %421 = zext i8 %420 to i64
  %422 = zext i8 %418 to i64
  %423 = icmp eq i64 %422, %421
  store i1 %423, i1* %11
  br label %sc_or_end101
sc_or_end101:
  %424 = load i1, i1* %11
  br i1 %424, label %sc_or_end103, label %sc_or_rhs102
sc_or_rhs102:
  %425 = load i8, i8* %9
  %426 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %427 = load i8, i8* %426
  %428 = zext i8 %427 to i64
  %429 = zext i8 %425 to i64
  %430 = icmp eq i64 %429, %428
  store i1 %430, i1* %10
  br label %sc_or_end103
sc_or_end103:
  %431 = load i1, i1* %10
  ret i1 %431
}

define internal i1 @tokenize__is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i8
  store i8 %c.param, i8* %9
  %10 = alloca i1
  store i1 true, i1* %10
  %11 = load i8, i8* %9
  %12 = call i1 @tokenize__is_alpha(%SharedEnv_tokenize* %env.param, i8 %11)
  br i1 %12, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %13 = load i8, i8* %9
  %14 = call i1 @tokenize__is_digit(%SharedEnv_tokenize* %env.param, i8 %13)
  store i1 %14, i1* %10
  br label %sc_or_end1
sc_or_end1:
  %15 = load i1, i1* %10
  ret i1 %15
}

define internal i1 @tokenize__is_hex_digit(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i8
  store i8 %c.param, i8* %9
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
  %31 = load i8, i8* %9
  %32 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %33 = load i8, i8* %32
  %34 = zext i8 %33 to i64
  %35 = zext i8 %31 to i64
  %36 = icmp eq i64 %35, %34
  br i1 %36, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %37 = load i8, i8* %9
  %38 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %39 = load i8, i8* %38
  %40 = zext i8 %39 to i64
  %41 = zext i8 %37 to i64
  %42 = icmp eq i64 %41, %40
  store i1 %42, i1* %30
  br label %sc_or_end1
sc_or_end1:
  %43 = load i1, i1* %30
  br i1 %43, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %44 = load i8, i8* %9
  %45 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %46 = load i8, i8* %45
  %47 = zext i8 %46 to i64
  %48 = zext i8 %44 to i64
  %49 = icmp eq i64 %48, %47
  store i1 %49, i1* %29
  br label %sc_or_end3
sc_or_end3:
  %50 = load i1, i1* %29
  br i1 %50, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %51 = load i8, i8* %9
  %52 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %53 = load i8, i8* %52
  %54 = zext i8 %53 to i64
  %55 = zext i8 %51 to i64
  %56 = icmp eq i64 %55, %54
  store i1 %56, i1* %28
  br label %sc_or_end5
sc_or_end5:
  %57 = load i1, i1* %28
  br i1 %57, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %58 = load i8, i8* %9
  %59 = getelementptr [1 x i8], [1 x i8]* @.str205, i32 0, i32 0
  %60 = load i8, i8* %59
  %61 = zext i8 %60 to i64
  %62 = zext i8 %58 to i64
  %63 = icmp eq i64 %62, %61
  store i1 %63, i1* %27
  br label %sc_or_end7
sc_or_end7:
  %64 = load i1, i1* %27
  br i1 %64, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %65 = load i8, i8* %9
  %66 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %67 = load i8, i8* %66
  %68 = zext i8 %67 to i64
  %69 = zext i8 %65 to i64
  %70 = icmp eq i64 %69, %68
  store i1 %70, i1* %26
  br label %sc_or_end9
sc_or_end9:
  %71 = load i1, i1* %26
  br i1 %71, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %72 = load i8, i8* %9
  %73 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %74 = load i8, i8* %73
  %75 = zext i8 %74 to i64
  %76 = zext i8 %72 to i64
  %77 = icmp eq i64 %76, %75
  store i1 %77, i1* %25
  br label %sc_or_end11
sc_or_end11:
  %78 = load i1, i1* %25
  br i1 %78, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %79 = load i8, i8* %9
  %80 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %81 = load i8, i8* %80
  %82 = zext i8 %81 to i64
  %83 = zext i8 %79 to i64
  %84 = icmp eq i64 %83, %82
  store i1 %84, i1* %24
  br label %sc_or_end13
sc_or_end13:
  %85 = load i1, i1* %24
  br i1 %85, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %86 = load i8, i8* %9
  %87 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %88 = load i8, i8* %87
  %89 = zext i8 %88 to i64
  %90 = zext i8 %86 to i64
  %91 = icmp eq i64 %90, %89
  store i1 %91, i1* %23
  br label %sc_or_end15
sc_or_end15:
  %92 = load i1, i1* %23
  br i1 %92, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %93 = load i8, i8* %9
  %94 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %95 = load i8, i8* %94
  %96 = zext i8 %95 to i64
  %97 = zext i8 %93 to i64
  %98 = icmp eq i64 %97, %96
  store i1 %98, i1* %22
  br label %sc_or_end17
sc_or_end17:
  %99 = load i1, i1* %22
  br i1 %99, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %100 = load i8, i8* %9
  %101 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %102 = load i8, i8* %101
  %103 = zext i8 %102 to i64
  %104 = zext i8 %100 to i64
  %105 = icmp eq i64 %104, %103
  store i1 %105, i1* %21
  br label %sc_or_end19
sc_or_end19:
  %106 = load i1, i1* %21
  br i1 %106, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %107 = load i8, i8* %9
  %108 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %109 = load i8, i8* %108
  %110 = zext i8 %109 to i64
  %111 = zext i8 %107 to i64
  %112 = icmp eq i64 %111, %110
  store i1 %112, i1* %20
  br label %sc_or_end21
sc_or_end21:
  %113 = load i1, i1* %20
  br i1 %113, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %114 = load i8, i8* %9
  %115 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %116 = load i8, i8* %115
  %117 = zext i8 %116 to i64
  %118 = zext i8 %114 to i64
  %119 = icmp eq i64 %118, %117
  store i1 %119, i1* %19
  br label %sc_or_end23
sc_or_end23:
  %120 = load i1, i1* %19
  br i1 %120, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %121 = load i8, i8* %9
  %122 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %123 = load i8, i8* %122
  %124 = zext i8 %123 to i64
  %125 = zext i8 %121 to i64
  %126 = icmp eq i64 %125, %124
  store i1 %126, i1* %18
  br label %sc_or_end25
sc_or_end25:
  %127 = load i1, i1* %18
  br i1 %127, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %128 = load i8, i8* %9
  %129 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %130 = load i8, i8* %129
  %131 = zext i8 %130 to i64
  %132 = zext i8 %128 to i64
  %133 = icmp eq i64 %132, %131
  store i1 %133, i1* %17
  br label %sc_or_end27
sc_or_end27:
  %134 = load i1, i1* %17
  br i1 %134, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %135 = load i8, i8* %9
  %136 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %137 = load i8, i8* %136
  %138 = zext i8 %137 to i64
  %139 = zext i8 %135 to i64
  %140 = icmp eq i64 %139, %138
  store i1 %140, i1* %16
  br label %sc_or_end29
sc_or_end29:
  %141 = load i1, i1* %16
  br i1 %141, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %142 = load i8, i8* %9
  %143 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %144 = load i8, i8* %143
  %145 = zext i8 %144 to i64
  %146 = zext i8 %142 to i64
  %147 = icmp eq i64 %146, %145
  store i1 %147, i1* %15
  br label %sc_or_end31
sc_or_end31:
  %148 = load i1, i1* %15
  br i1 %148, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %149 = load i8, i8* %9
  %150 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %151 = load i8, i8* %150
  %152 = zext i8 %151 to i64
  %153 = zext i8 %149 to i64
  %154 = icmp eq i64 %153, %152
  store i1 %154, i1* %14
  br label %sc_or_end33
sc_or_end33:
  %155 = load i1, i1* %14
  br i1 %155, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %156 = load i8, i8* %9
  %157 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %158 = load i8, i8* %157
  %159 = zext i8 %158 to i64
  %160 = zext i8 %156 to i64
  %161 = icmp eq i64 %160, %159
  store i1 %161, i1* %13
  br label %sc_or_end35
sc_or_end35:
  %162 = load i1, i1* %13
  br i1 %162, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %163 = load i8, i8* %9
  %164 = getelementptr [1 x i8], [1 x i8]* @.str220, i32 0, i32 0
  %165 = load i8, i8* %164
  %166 = zext i8 %165 to i64
  %167 = zext i8 %163 to i64
  %168 = icmp eq i64 %167, %166
  store i1 %168, i1* %12
  br label %sc_or_end37
sc_or_end37:
  %169 = load i1, i1* %12
  br i1 %169, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %170 = load i8, i8* %9
  %171 = getelementptr [1 x i8], [1 x i8]* @.str221, i32 0, i32 0
  %172 = load i8, i8* %171
  %173 = zext i8 %172 to i64
  %174 = zext i8 %170 to i64
  %175 = icmp eq i64 %174, %173
  store i1 %175, i1* %11
  br label %sc_or_end39
sc_or_end39:
  %176 = load i1, i1* %11
  br i1 %176, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %177 = load i8, i8* %9
  %178 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %179 = load i8, i8* %178
  %180 = zext i8 %179 to i64
  %181 = zext i8 %177 to i64
  %182 = icmp eq i64 %181, %180
  store i1 %182, i1* %10
  br label %sc_or_end41
sc_or_end41:
  %183 = load i1, i1* %10
  ret i1 %183
}

define internal i64 @tokenize__hex_digit_val(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i8
  store i8 %c.param, i8* %9
  %10 = load i8, i8* %9
  %11 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %12 = load i8, i8* %11
  %13 = zext i8 %12 to i64
  %14 = zext i8 %10 to i64
  %15 = icmp eq i64 %14, %13
  br i1 %15, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %16 = load i8, i8* %9
  %17 = getelementptr [1 x i8], [1 x i8]* @.str224, i32 0, i32 0
  %18 = load i8, i8* %17
  %19 = zext i8 %18 to i64
  %20 = zext i8 %16 to i64
  %21 = icmp eq i64 %20, %19
  br i1 %21, label %then3, label %else4
then3:
  ret i64 1
else4:
  br label %merge5
merge5:
  %22 = load i8, i8* %9
  %23 = getelementptr [1 x i8], [1 x i8]* @.str225, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  br i1 %27, label %then6, label %else7
then6:
  ret i64 2
else7:
  br label %merge8
merge8:
  %28 = load i8, i8* %9
  %29 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %30 = load i8, i8* %29
  %31 = zext i8 %30 to i64
  %32 = zext i8 %28 to i64
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %then9, label %else10
then9:
  ret i64 3
else10:
  br label %merge11
merge11:
  %34 = load i8, i8* %9
  %35 = getelementptr [1 x i8], [1 x i8]* @.str227, i32 0, i32 0
  %36 = load i8, i8* %35
  %37 = zext i8 %36 to i64
  %38 = zext i8 %34 to i64
  %39 = icmp eq i64 %38, %37
  br i1 %39, label %then12, label %else13
then12:
  ret i64 4
else13:
  br label %merge14
merge14:
  %40 = load i8, i8* %9
  %41 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %42 = load i8, i8* %41
  %43 = zext i8 %42 to i64
  %44 = zext i8 %40 to i64
  %45 = icmp eq i64 %44, %43
  br i1 %45, label %then15, label %else16
then15:
  ret i64 5
else16:
  br label %merge17
merge17:
  %46 = load i8, i8* %9
  %47 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %48 = load i8, i8* %47
  %49 = zext i8 %48 to i64
  %50 = zext i8 %46 to i64
  %51 = icmp eq i64 %50, %49
  br i1 %51, label %then18, label %else19
then18:
  ret i64 6
else19:
  br label %merge20
merge20:
  %52 = load i8, i8* %9
  %53 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %54 = load i8, i8* %53
  %55 = zext i8 %54 to i64
  %56 = zext i8 %52 to i64
  %57 = icmp eq i64 %56, %55
  br i1 %57, label %then21, label %else22
then21:
  ret i64 7
else22:
  br label %merge23
merge23:
  %58 = load i8, i8* %9
  %59 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %60 = load i8, i8* %59
  %61 = zext i8 %60 to i64
  %62 = zext i8 %58 to i64
  %63 = icmp eq i64 %62, %61
  br i1 %63, label %then24, label %else25
then24:
  ret i64 8
else25:
  br label %merge26
merge26:
  %64 = load i8, i8* %9
  %65 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  br i1 %69, label %then27, label %else28
then27:
  ret i64 9
else28:
  br label %merge29
merge29:
  %70 = alloca i1
  store i1 true, i1* %70
  %71 = load i8, i8* %9
  %72 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = zext i8 %71 to i64
  %76 = icmp eq i64 %75, %74
  br i1 %76, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %77 = load i8, i8* %9
  %78 = getelementptr [1 x i8], [1 x i8]* @.str234, i32 0, i32 0
  %79 = load i8, i8* %78
  %80 = zext i8 %79 to i64
  %81 = zext i8 %77 to i64
  %82 = icmp eq i64 %81, %80
  store i1 %82, i1* %70
  br label %sc_or_end31
sc_or_end31:
  %83 = load i1, i1* %70
  br i1 %83, label %then32, label %else33
then32:
  ret i64 10
else33:
  br label %merge34
merge34:
  %84 = alloca i1
  store i1 true, i1* %84
  %85 = load i8, i8* %9
  %86 = getelementptr [1 x i8], [1 x i8]* @.str235, i32 0, i32 0
  %87 = load i8, i8* %86
  %88 = zext i8 %87 to i64
  %89 = zext i8 %85 to i64
  %90 = icmp eq i64 %89, %88
  br i1 %90, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %91 = load i8, i8* %9
  %92 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %93 = load i8, i8* %92
  %94 = zext i8 %93 to i64
  %95 = zext i8 %91 to i64
  %96 = icmp eq i64 %95, %94
  store i1 %96, i1* %84
  br label %sc_or_end36
sc_or_end36:
  %97 = load i1, i1* %84
  br i1 %97, label %then37, label %else38
then37:
  ret i64 11
else38:
  br label %merge39
merge39:
  %98 = alloca i1
  store i1 true, i1* %98
  %99 = load i8, i8* %9
  %100 = getelementptr [1 x i8], [1 x i8]* @.str237, i32 0, i32 0
  %101 = load i8, i8* %100
  %102 = zext i8 %101 to i64
  %103 = zext i8 %99 to i64
  %104 = icmp eq i64 %103, %102
  br i1 %104, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %105 = load i8, i8* %9
  %106 = getelementptr [1 x i8], [1 x i8]* @.str238, i32 0, i32 0
  %107 = load i8, i8* %106
  %108 = zext i8 %107 to i64
  %109 = zext i8 %105 to i64
  %110 = icmp eq i64 %109, %108
  store i1 %110, i1* %98
  br label %sc_or_end41
sc_or_end41:
  %111 = load i1, i1* %98
  br i1 %111, label %then42, label %else43
then42:
  ret i64 12
else43:
  br label %merge44
merge44:
  %112 = alloca i1
  store i1 true, i1* %112
  %113 = load i8, i8* %9
  %114 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %115 = load i8, i8* %114
  %116 = zext i8 %115 to i64
  %117 = zext i8 %113 to i64
  %118 = icmp eq i64 %117, %116
  br i1 %118, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %119 = load i8, i8* %9
  %120 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %121 = load i8, i8* %120
  %122 = zext i8 %121 to i64
  %123 = zext i8 %119 to i64
  %124 = icmp eq i64 %123, %122
  store i1 %124, i1* %112
  br label %sc_or_end46
sc_or_end46:
  %125 = load i1, i1* %112
  br i1 %125, label %then47, label %else48
then47:
  ret i64 13
else48:
  br label %merge49
merge49:
  %126 = alloca i1
  store i1 true, i1* %126
  %127 = load i8, i8* %9
  %128 = getelementptr [1 x i8], [1 x i8]* @.str241, i32 0, i32 0
  %129 = load i8, i8* %128
  %130 = zext i8 %129 to i64
  %131 = zext i8 %127 to i64
  %132 = icmp eq i64 %131, %130
  br i1 %132, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %133 = load i8, i8* %9
  %134 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %135 = load i8, i8* %134
  %136 = zext i8 %135 to i64
  %137 = zext i8 %133 to i64
  %138 = icmp eq i64 %137, %136
  store i1 %138, i1* %126
  br label %sc_or_end51
sc_or_end51:
  %139 = load i1, i1* %126
  br i1 %139, label %then52, label %else53
then52:
  ret i64 14
else53:
  br label %merge54
merge54:
  %140 = alloca i1
  store i1 true, i1* %140
  %141 = load i8, i8* %9
  %142 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %143 = load i8, i8* %142
  %144 = zext i8 %143 to i64
  %145 = zext i8 %141 to i64
  %146 = icmp eq i64 %145, %144
  br i1 %146, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %147 = load i8, i8* %9
  %148 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %149 = load i8, i8* %148
  %150 = zext i8 %149 to i64
  %151 = zext i8 %147 to i64
  %152 = icmp eq i64 %151, %150
  store i1 %152, i1* %140
  br label %sc_or_end56
sc_or_end56:
  %153 = load i1, i1* %140
  br i1 %153, label %then57, label %else58
then57:
  ret i64 15
else58:
  br label %merge59
merge59:
  ret i64 0
}

define internal %nyx_string* @tokenize__digit_to_string(%SharedEnv_tokenize* %env.param, i64 %d.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i64
  store i64 %d.param, i64* %9
  %10 = load i64, i64* %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then0, label %else1
then0:
  %12 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %12)
  ret %nyx_string* %13
else1:
  br label %merge2
merge2:
  %14 = load i64, i64* %9
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %then3, label %else4
then3:
  %16 = getelementptr [2 x i8], [2 x i8]* @.str246, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %16)
  ret %nyx_string* %17
else4:
  br label %merge5
merge5:
  %18 = load i64, i64* %9
  %19 = icmp eq i64 %18, 2
  br i1 %19, label %then6, label %else7
then6:
  %20 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %20)
  ret %nyx_string* %21
else7:
  br label %merge8
merge8:
  %22 = load i64, i64* %9
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %then9, label %else10
then9:
  %24 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %24)
  ret %nyx_string* %25
else10:
  br label %merge11
merge11:
  %26 = load i64, i64* %9
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %then12, label %else13
then12:
  %28 = getelementptr [2 x i8], [2 x i8]* @.str249, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %28)
  ret %nyx_string* %29
else13:
  br label %merge14
merge14:
  %30 = load i64, i64* %9
  %31 = icmp eq i64 %30, 5
  br i1 %31, label %then15, label %else16
then15:
  %32 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %32)
  ret %nyx_string* %33
else16:
  br label %merge17
merge17:
  %34 = load i64, i64* %9
  %35 = icmp eq i64 %34, 6
  br i1 %35, label %then18, label %else19
then18:
  %36 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %36)
  ret %nyx_string* %37
else19:
  br label %merge20
merge20:
  %38 = load i64, i64* %9
  %39 = icmp eq i64 %38, 7
  br i1 %39, label %then21, label %else22
then21:
  %40 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %40)
  ret %nyx_string* %41
else22:
  br label %merge23
merge23:
  %42 = load i64, i64* %9
  %43 = icmp eq i64 %42, 8
  br i1 %43, label %then24, label %else25
then24:
  %44 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %44)
  ret %nyx_string* %45
else25:
  br label %merge26
merge26:
  %46 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %46)
  ret %nyx_string* %47
}

define internal %nyx_string* @tokenize__int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %n.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i64
  store i64 %n.param, i64* %9
  %10 = load i64, i64* %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then0, label %else1
then0:
  %12 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %12)
  ret %nyx_string* %13
else1:
  br label %merge2
merge2:
  %14 = getelementptr [1 x i8], [1 x i8]* @.str256, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %14)
  %16 = alloca %nyx_string*
  store %nyx_string* %15, %nyx_string** %16
  %17 = load i64, i64* %9
  %18 = alloca i64
  store i64 %17, i64* %18
  %19 = alloca i1
  store i1 0, i1* %19
  %20 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %21 = load i1, i1* %19
  %22 = xor i1 %21, true
  br i1 %22, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %20)
  %23 = load i64, i64* %18
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %then6, label %else7
then6:
  store i1 1, i1* %19
  br label %merge8
else7:
  %25 = load i64, i64* %18
  %26 = srem i64 %25, 10
  %27 = alloca i64
  store i64 %26, i64* %27
  %28 = load i64, i64* %27
  %29 = call %nyx_string* @tokenize__digit_to_string(%SharedEnv_tokenize* %env.param, i64 %28)
  %30 = load %nyx_string*, %nyx_string** %16
  %31 = call %nyx_string* @nyx_string_concat(%nyx_string* %29, %nyx_string* %30)
  store %nyx_string* %31, %nyx_string** %16
  %32 = load i64, i64* %18
  %33 = sdiv i64 %32, 10
  store i64 %33, i64* %18
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %34 = load %nyx_string*, %nyx_string** %16
  ret %nyx_string* %34
}

define internal i64 @tokenize__hex_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %9
  %10 = alloca i64
  store i64 0, i64* %10
  %11 = alloca i64
  store i64 0, i64* %11
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
  %16 = load i64, i64* %11
  %17 = load %nyx_string*, %nyx_string** %9
  %18 = call i64 @nyx_string_byte_length(%nyx_string* %17)
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %then3, label %else4
then3:
  store i1 1, i1* %12
  br label %merge5
else4:
  %20 = load i64, i64* %10
  %21 = mul i64 %20, 16
  %22 = load %nyx_string*, %nyx_string** %9
  %23 = load i64, i64* %11
  %24 = call i8 @nyx_string_char_at(%nyx_string* %22, i64 %23)
  %25 = zext i8 %24 to i64
  %26 = call i64 @tokenize__hex_digit_val(%SharedEnv_tokenize* %env.param, i64 %25)
  %27 = add i64 %21, %26
  store i64 %27, i64* %10
  %28 = load i64, i64* %11
  %29 = add i64 %28, 1
  store i64 %29, i64* %11
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %30 = load i64, i64* %10
  ret i64 %30
}

define internal i64 @tokenize__bin_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %9
  %10 = alloca i64
  store i64 0, i64* %10
  %11 = alloca i64
  store i64 0, i64* %11
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
  %16 = load i64, i64* %11
  %17 = load %nyx_string*, %nyx_string** %9
  %18 = call i64 @nyx_string_byte_length(%nyx_string* %17)
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %then3, label %else4
then3:
  store i1 1, i1* %12
  br label %merge5
else4:
  %20 = load %nyx_string*, %nyx_string** %9
  %21 = load i64, i64* %11
  %22 = call i8 @nyx_string_char_at(%nyx_string* %20, i64 %21)
  %23 = zext i8 %22 to i64
  %24 = trunc i64 %23 to i8
  %25 = alloca i8
  store i8 %24, i8* %25
  %26 = load i8, i8* %25
  %27 = getelementptr [1 x i8], [1 x i8]* @.str257, i32 0, i32 0
  %28 = load i8, i8* %27
  %29 = zext i8 %28 to i64
  %30 = zext i8 %26 to i64
  %31 = icmp eq i64 %30, %29
  br i1 %31, label %then6, label %else7
then6:
  %32 = load i64, i64* %10
  %33 = mul i64 %32, 2
  %34 = add i64 %33, 1
  store i64 %34, i64* %10
  br label %merge8
else7:
  %35 = load i64, i64* %10
  %36 = mul i64 %35, 2
  store i64 %36, i64* %10
  br label %merge8
merge8:
  %37 = load i64, i64* %11
  %38 = add i64 %37, 1
  store i64 %38, i64* %11
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %39 = load i64, i64* %10
  ret i64 %39
}

define internal i64 @tokenize__oct_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %9
  %10 = alloca i64
  store i64 0, i64* %10
  %11 = alloca i64
  store i64 0, i64* %11
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
  %16 = load i64, i64* %11
  %17 = load %nyx_string*, %nyx_string** %9
  %18 = call i64 @nyx_string_byte_length(%nyx_string* %17)
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %then3, label %else4
then3:
  store i1 1, i1* %12
  br label %merge5
else4:
  %20 = load i64, i64* %10
  %21 = mul i64 %20, 8
  %22 = load %nyx_string*, %nyx_string** %9
  %23 = load i64, i64* %11
  %24 = call i8 @nyx_string_char_at(%nyx_string* %22, i64 %23)
  %25 = zext i8 %24 to i64
  %26 = call i64 @tokenize__hex_digit_val(%SharedEnv_tokenize* %env.param, i64 %25)
  %27 = add i64 %21, %26
  store i64 %27, i64* %10
  %28 = load i64, i64* %11
  %29 = add i64 %28, 1
  store i64 %29, i64* %11
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %30 = load i64, i64* %10
  ret i64 %30
}

define internal i64 @tokenize__skip_whitespace(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i1
  store i1 0, i1* %9
  %10 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %11 = load i1, i1* %9
  %12 = xor i1 %11, true
  br i1 %12, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %10)
  %13 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %14 = alloca i8
  store i8 %13, i8* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = load i8, i8* %14
  %17 = getelementptr [1 x i8], [1 x i8]* @.str258, i32 0, i32 0
  %18 = load i8, i8* %17
  %19 = zext i8 %18 to i64
  %20 = zext i8 %16 to i64
  %21 = icmp eq i64 %20, %19
  br i1 %21, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %22 = load i8, i8* %14
  %23 = getelementptr [1 x i8], [1 x i8]* @.str259, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  store i1 %27, i1* %15
  br label %sc_or_end4
sc_or_end4:
  %28 = load i1, i1* %15
  br i1 %28, label %then5, label %else6
then5:
  %29 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge7
else6:
  store i1 1, i1* %9
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @tokenize__skip_comment(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = getelementptr [1 x i8], [1 x i8]* @.str260, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %9)
  %11 = alloca %nyx_string*
  store %nyx_string* %10, %nyx_string** %11
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
  %16 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %16, label %then3, label %else4
then3:
  store i1 1, i1* %12
  br label %merge5
else4:
  %17 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %18 = getelementptr [1 x i8], [1 x i8]* @.str261, i32 0, i32 0
  %19 = load i8, i8* %18
  %20 = zext i8 %19 to i64
  %21 = zext i8 %17 to i64
  %22 = icmp eq i64 %21, %20
  br i1 %22, label %then6, label %else7
then6:
  store i1 1, i1* %12
  br label %merge8
else7:
  %23 = load %nyx_string*, %nyx_string** %11
  %24 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %25 = call %nyx_string* @nyx_string_from_char(i8 %24)
  %26 = call %nyx_string* @nyx_string_concat(%nyx_string* %23, %nyx_string* %25)
  store %nyx_string* %26, %nyx_string** %11
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %27 = load %nyx_string*, %nyx_string** %11
  %28 = getelementptr [7 x i8], [7 x i8]* @.str262, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %28)
  %30 = call i1 @nyx_string_starts_with(%nyx_string* %27, %nyx_string* %29)
  br i1 %30, label %then9, label %else10
then9:
  %31 = load %nyx_string*, %nyx_string** %11
  %32 = load %nyx_string*, %nyx_string** %11
  %33 = call i64 @nyx_string_byte_length(%nyx_string* %32)
  %34 = call %nyx_string* @nyx_string_substring(%nyx_string* %31, i64 6, i64 %33)
  %35 = call %nyx_string* @nyx_string_trim(%nyx_string* %34)
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = load %nyx_string*, %nyx_string** %36
  %38 = call i64 @nyx_string_to_int(%nyx_string* %37)
  %39 = alloca i64
  store i64 %38, i64* %39
  %40 = load i64, i64* %39
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %then12, label %else13
then12:
  %42 = load i64, i64* %39
  %43 = sub i64 %42, 1
  store i64 %43, i64* %4
  br label %merge14
else13:
  br label %merge14
merge14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %44 = load %nyx_string*, %nyx_string** %11
  %45 = getelementptr [8 x i8], [8 x i8]* @.str263, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %45)
  %47 = call i1 @nyx_string_starts_with(%nyx_string* %44, %nyx_string* %46)
  br i1 %47, label %then15, label %else16
then15:
  %48 = load %nyx_string*, %nyx_string** %11
  %49 = load %nyx_string*, %nyx_string** %11
  %50 = call i64 @nyx_string_byte_length(%nyx_string* %49)
  %51 = call %nyx_string* @nyx_string_substring(%nyx_string* %48, i64 7, i64 %50)
  %52 = call %nyx_string* @nyx_string_trim(%nyx_string* %51)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  %54 = getelementptr [14 x i8], [14 x i8]* @.str264, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %54)
  %56 = load %nyx_string*, %nyx_string** %53
  %57 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %55, %nyx_string* %56)
  br label %merge17
else16:
  br label %merge17
merge17:
  ret i64 0
}

define internal i64 @tokenize__skip_block_comment(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca i64
  store i64 1, i64* %9
  %10 = alloca i1
  store i1 0, i1* %10
  %11 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %12 = load i1, i1* %10
  %13 = xor i1 %12, true
  br i1 %13, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %11)
  %14 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %14, label %then3, label %else4
then3:
  %15 = getelementptr [34 x i8], [34 x i8]* @.str265, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %15)
  %17 = call i8* @nyx_string_to_cstr(%nyx_string* %16)
  call void @nyx_print_string(i8* %17)
  %18 = load i64, i64* @g_lex_error_count
  %19 = add i64 %18, 1
  store i64 %19, i64* @g_lex_error_count
  store i1 1, i1* %10
  br label %merge5
else4:
  %20 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %21 = alloca i8
  store i8 %20, i8* %21
  %22 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %23 = alloca i8
  store i8 %22, i8* %23
  %24 = alloca i1
  store i1 false, i1* %24
  %25 = load i8, i8* %21
  %26 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %27 = load i8, i8* %26
  %28 = zext i8 %27 to i64
  %29 = zext i8 %25 to i64
  %30 = icmp eq i64 %29, %28
  br i1 %30, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %31 = load i8, i8* %23
  %32 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %33 = load i8, i8* %32
  %34 = zext i8 %33 to i64
  %35 = zext i8 %31 to i64
  %36 = icmp eq i64 %35, %34
  store i1 %36, i1* %24
  br label %sc_and_end7
sc_and_end7:
  %37 = load i1, i1* %24
  br i1 %37, label %then8, label %else9
then8:
  %38 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %39 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %40 = load i64, i64* %9
  %41 = add i64 %40, 1
  store i64 %41, i64* %9
  br label %merge10
else9:
  %42 = alloca i1
  store i1 false, i1* %42
  %43 = load i8, i8* %21
  %44 = getelementptr [1 x i8], [1 x i8]* @.str268, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = zext i8 %43 to i64
  %48 = icmp eq i64 %47, %46
  br i1 %48, label %sc_and_rhs11, label %sc_and_end12
sc_and_rhs11:
  %49 = load i8, i8* %23
  %50 = getelementptr [1 x i8], [1 x i8]* @.str269, i32 0, i32 0
  %51 = load i8, i8* %50
  %52 = zext i8 %51 to i64
  %53 = zext i8 %49 to i64
  %54 = icmp eq i64 %53, %52
  store i1 %54, i1* %42
  br label %sc_and_end12
sc_and_end12:
  %55 = load i1, i1* %42
  br i1 %55, label %then13, label %else14
then13:
  %56 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %57 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %58 = load i64, i64* %9
  %59 = sub i64 %58, 1
  store i64 %59, i64* %9
  %60 = load i64, i64* %9
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %then16, label %else17
then16:
  store i1 1, i1* %10
  br label %merge18
else17:
  br label %merge18
merge18:
  br label %merge15
else14:
  %62 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
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

define internal %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %chars.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca { i64, i8* }*
  store { i64, i8* }* %chars.param, { i64, i8* }** %9
  %10 = getelementptr [1 x i8], [1 x i8]* @.str270, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %10)
  %12 = alloca %nyx_string*
  store %nyx_string* %11, %nyx_string** %12
  %13 = alloca i64
  store i64 0, i64* %13
  %14 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %15 = load i64, i64* %13
  %16 = load { i64, i8* }*, { i64, i8* }** %9
  %17 = call i64 @nyx_array_length({ i64, i8* }* %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %14)
  %19 = load { i64, i8* }*, { i64, i8* }** %9
  %20 = load i64, i64* %13
  %21 = call i64 @nyx_array_get({ i64, i8* }* %19, i64 %20)
  %22 = trunc i64 %21 to i8
  %23 = alloca i8
  store i8 %22, i8* %23
  %24 = load %nyx_string*, %nyx_string** %12
  %25 = load i8, i8* %23
  %26 = call %nyx_string* @nyx_string_from_char(i8 %25)
  %27 = call %nyx_string* @nyx_string_concat(%nyx_string* %24, %nyx_string* %26)
  store %nyx_string* %27, %nyx_string** %12
  %28 = load i64, i64* %13
  %29 = add i64 %28, 1
  store i64 %29, i64* %13
  br label %while_cond0
while_end2:
  %30 = load %nyx_string*, %nyx_string** %12
  ret %nyx_string* %30
}

define internal i64 @tokenize__scan_number(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = load i64, i64* %3
  %10 = alloca i64
  store i64 %9, i64* %10
  %11 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %12 = alloca i8
  store i8 %11, i8* %12
  %13 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %14 = alloca i8
  store i8 %13, i8* %14
  %15 = alloca i1
  store i1 false, i1* %15
  %16 = load i8, i8* %12
  %17 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %18 = load i8, i8* %17
  %19 = zext i8 %18 to i64
  %20 = zext i8 %16 to i64
  %21 = icmp eq i64 %20, %19
  br i1 %21, label %sc_and_rhs0, label %sc_and_end1
sc_and_rhs0:
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = load i8, i8* %14
  %24 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %25 = load i8, i8* %24
  %26 = zext i8 %25 to i64
  %27 = zext i8 %23 to i64
  %28 = icmp eq i64 %27, %26
  br i1 %28, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %29 = load i8, i8* %14
  %30 = getelementptr [1 x i8], [1 x i8]* @.str273, i32 0, i32 0
  %31 = load i8, i8* %30
  %32 = zext i8 %31 to i64
  %33 = zext i8 %29 to i64
  %34 = icmp eq i64 %33, %32
  store i1 %34, i1* %22
  br label %sc_or_end3
sc_or_end3:
  %35 = load i1, i1* %22
  store i1 %35, i1* %15
  br label %sc_and_end1
sc_and_end1:
  %36 = load i1, i1* %15
  br i1 %36, label %then4, label %else5
then4:
  %37 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %38 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %39 = load i64, i64* %3
  %40 = alloca i64
  store i64 %39, i64* %40
  %41 = alloca i1
  store i1 0, i1* %41
  %42 = call i8* @llvm.stacksave()
  br label %while_cond7
while_cond7:
  %43 = load i1, i1* %41
  %44 = xor i1 %43, true
  br i1 %44, label %while_body8, label %while_end9
while_body8:
  call void @llvm.stackrestore(i8* %42)
  %45 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %46 = call i1 @tokenize__is_hex_digit(%SharedEnv_tokenize* %env.param, i8 %45)
  br i1 %46, label %then10, label %else11
then10:
  %47 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge12
else11:
  store i1 1, i1* %41
  br label %merge12
merge12:
  br label %while_cond7
while_end9:
  %48 = load %nyx_string*, %nyx_string** %2
  %49 = load i64, i64* %40
  %50 = load i64, i64* %3
  %51 = call %nyx_string* @nyx_string_substring(%nyx_string* %48, i64 %49, i64 %50)
  %52 = alloca %nyx_string*
  store %nyx_string* %51, %nyx_string** %52
  %53 = getelementptr [7 x i8], [7 x i8]* @.str274, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %53)
  %55 = load %nyx_string*, %nyx_string** %52
  %56 = call i64 @tokenize__hex_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %55)
  %57 = call %nyx_string* @tokenize__int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %56)
  %58 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %54, %nyx_string* %57)
  br label %merge6
else5:
  %59 = alloca i1
  store i1 false, i1* %59
  %60 = load i8, i8* %12
  %61 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %62 = load i8, i8* %61
  %63 = zext i8 %62 to i64
  %64 = zext i8 %60 to i64
  %65 = icmp eq i64 %64, %63
  br i1 %65, label %sc_and_rhs13, label %sc_and_end14
sc_and_rhs13:
  %66 = alloca i1
  store i1 true, i1* %66
  %67 = load i8, i8* %14
  %68 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %69 = load i8, i8* %68
  %70 = zext i8 %69 to i64
  %71 = zext i8 %67 to i64
  %72 = icmp eq i64 %71, %70
  br i1 %72, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %73 = load i8, i8* %14
  %74 = getelementptr [1 x i8], [1 x i8]* @.str277, i32 0, i32 0
  %75 = load i8, i8* %74
  %76 = zext i8 %75 to i64
  %77 = zext i8 %73 to i64
  %78 = icmp eq i64 %77, %76
  store i1 %78, i1* %66
  br label %sc_or_end16
sc_or_end16:
  %79 = load i1, i1* %66
  store i1 %79, i1* %59
  br label %sc_and_end14
sc_and_end14:
  %80 = load i1, i1* %59
  br i1 %80, label %then17, label %else18
then17:
  %81 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %82 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %83 = load i64, i64* %3
  %84 = alloca i64
  store i64 %83, i64* %84
  %85 = alloca i1
  store i1 0, i1* %85
  %86 = call i8* @llvm.stacksave()
  br label %while_cond20
while_cond20:
  %87 = load i1, i1* %85
  %88 = xor i1 %87, true
  br i1 %88, label %while_body21, label %while_end22
while_body21:
  call void @llvm.stackrestore(i8* %86)
  %89 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %90 = alloca i8
  store i8 %89, i8* %90
  %91 = alloca i1
  store i1 true, i1* %91
  %92 = load i8, i8* %90
  %93 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %94 = load i8, i8* %93
  %95 = zext i8 %94 to i64
  %96 = zext i8 %92 to i64
  %97 = icmp eq i64 %96, %95
  br i1 %97, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %98 = load i8, i8* %90
  %99 = getelementptr [1 x i8], [1 x i8]* @.str279, i32 0, i32 0
  %100 = load i8, i8* %99
  %101 = zext i8 %100 to i64
  %102 = zext i8 %98 to i64
  %103 = icmp eq i64 %102, %101
  store i1 %103, i1* %91
  br label %sc_or_end24
sc_or_end24:
  %104 = load i1, i1* %91
  br i1 %104, label %then25, label %else26
then25:
  %105 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge27
else26:
  store i1 1, i1* %85
  br label %merge27
merge27:
  br label %while_cond20
while_end22:
  %106 = load %nyx_string*, %nyx_string** %2
  %107 = load i64, i64* %84
  %108 = load i64, i64* %3
  %109 = call %nyx_string* @nyx_string_substring(%nyx_string* %106, i64 %107, i64 %108)
  %110 = alloca %nyx_string*
  store %nyx_string* %109, %nyx_string** %110
  %111 = getelementptr [7 x i8], [7 x i8]* @.str280, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %111)
  %113 = load %nyx_string*, %nyx_string** %110
  %114 = call i64 @tokenize__bin_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %113)
  %115 = call %nyx_string* @tokenize__int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %114)
  %116 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %112, %nyx_string* %115)
  br label %merge19
else18:
  %117 = alloca i1
  store i1 false, i1* %117
  %118 = load i8, i8* %12
  %119 = getelementptr [1 x i8], [1 x i8]* @.str281, i32 0, i32 0
  %120 = load i8, i8* %119
  %121 = zext i8 %120 to i64
  %122 = zext i8 %118 to i64
  %123 = icmp eq i64 %122, %121
  br i1 %123, label %sc_and_rhs28, label %sc_and_end29
sc_and_rhs28:
  %124 = alloca i1
  store i1 true, i1* %124
  %125 = load i8, i8* %14
  %126 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %127 = load i8, i8* %126
  %128 = zext i8 %127 to i64
  %129 = zext i8 %125 to i64
  %130 = icmp eq i64 %129, %128
  br i1 %130, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %131 = load i8, i8* %14
  %132 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %133 = load i8, i8* %132
  %134 = zext i8 %133 to i64
  %135 = zext i8 %131 to i64
  %136 = icmp eq i64 %135, %134
  store i1 %136, i1* %124
  br label %sc_or_end31
sc_or_end31:
  %137 = load i1, i1* %124
  store i1 %137, i1* %117
  br label %sc_and_end29
sc_and_end29:
  %138 = load i1, i1* %117
  br i1 %138, label %then32, label %else33
then32:
  %139 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %140 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %141 = load i64, i64* %3
  %142 = alloca i64
  store i64 %141, i64* %142
  %143 = alloca i1
  store i1 0, i1* %143
  %144 = call i8* @llvm.stacksave()
  br label %while_cond35
while_cond35:
  %145 = load i1, i1* %143
  %146 = xor i1 %145, true
  br i1 %146, label %while_body36, label %while_end37
while_body36:
  call void @llvm.stackrestore(i8* %144)
  %147 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %148 = alloca i8
  store i8 %147, i8* %148
  %149 = alloca i1
  store i1 true, i1* %149
  %150 = alloca i1
  store i1 true, i1* %150
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
  %156 = load i8, i8* %148
  %157 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %158 = load i8, i8* %157
  %159 = zext i8 %158 to i64
  %160 = zext i8 %156 to i64
  %161 = icmp eq i64 %160, %159
  br i1 %161, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %162 = load i8, i8* %148
  %163 = getelementptr [1 x i8], [1 x i8]* @.str285, i32 0, i32 0
  %164 = load i8, i8* %163
  %165 = zext i8 %164 to i64
  %166 = zext i8 %162 to i64
  %167 = icmp eq i64 %166, %165
  store i1 %167, i1* %155
  br label %sc_or_end39
sc_or_end39:
  %168 = load i1, i1* %155
  br i1 %168, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %169 = load i8, i8* %148
  %170 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %171 = load i8, i8* %170
  %172 = zext i8 %171 to i64
  %173 = zext i8 %169 to i64
  %174 = icmp eq i64 %173, %172
  store i1 %174, i1* %154
  br label %sc_or_end41
sc_or_end41:
  %175 = load i1, i1* %154
  br i1 %175, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %176 = load i8, i8* %148
  %177 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %178 = load i8, i8* %177
  %179 = zext i8 %178 to i64
  %180 = zext i8 %176 to i64
  %181 = icmp eq i64 %180, %179
  store i1 %181, i1* %153
  br label %sc_or_end43
sc_or_end43:
  %182 = load i1, i1* %153
  br i1 %182, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %183 = load i8, i8* %148
  %184 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %185 = load i8, i8* %184
  %186 = zext i8 %185 to i64
  %187 = zext i8 %183 to i64
  %188 = icmp eq i64 %187, %186
  store i1 %188, i1* %152
  br label %sc_or_end45
sc_or_end45:
  %189 = load i1, i1* %152
  br i1 %189, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %190 = load i8, i8* %148
  %191 = getelementptr [1 x i8], [1 x i8]* @.str289, i32 0, i32 0
  %192 = load i8, i8* %191
  %193 = zext i8 %192 to i64
  %194 = zext i8 %190 to i64
  %195 = icmp eq i64 %194, %193
  store i1 %195, i1* %151
  br label %sc_or_end47
sc_or_end47:
  %196 = load i1, i1* %151
  br i1 %196, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %197 = load i8, i8* %148
  %198 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %199 = load i8, i8* %198
  %200 = zext i8 %199 to i64
  %201 = zext i8 %197 to i64
  %202 = icmp eq i64 %201, %200
  store i1 %202, i1* %150
  br label %sc_or_end49
sc_or_end49:
  %203 = load i1, i1* %150
  br i1 %203, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %204 = load i8, i8* %148
  %205 = getelementptr [1 x i8], [1 x i8]* @.str291, i32 0, i32 0
  %206 = load i8, i8* %205
  %207 = zext i8 %206 to i64
  %208 = zext i8 %204 to i64
  %209 = icmp eq i64 %208, %207
  store i1 %209, i1* %149
  br label %sc_or_end51
sc_or_end51:
  %210 = load i1, i1* %149
  br i1 %210, label %then52, label %else53
then52:
  %211 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge54
else53:
  store i1 1, i1* %143
  br label %merge54
merge54:
  br label %while_cond35
while_end37:
  %212 = load %nyx_string*, %nyx_string** %2
  %213 = load i64, i64* %142
  %214 = load i64, i64* %3
  %215 = call %nyx_string* @nyx_string_substring(%nyx_string* %212, i64 %213, i64 %214)
  %216 = alloca %nyx_string*
  store %nyx_string* %215, %nyx_string** %216
  %217 = getelementptr [7 x i8], [7 x i8]* @.str292, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %217)
  %219 = load %nyx_string*, %nyx_string** %216
  %220 = call i64 @tokenize__oct_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %219)
  %221 = call %nyx_string* @tokenize__int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %220)
  %222 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %218, %nyx_string* %221)
  br label %merge34
else33:
  %223 = alloca i1
  store i1 0, i1* %223
  %224 = call i8* @llvm.stacksave()
  br label %while_cond55
while_cond55:
  %225 = load i1, i1* %223
  %226 = xor i1 %225, true
  br i1 %226, label %while_body56, label %while_end57
while_body56:
  call void @llvm.stackrestore(i8* %224)
  %227 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %228 = call i1 @tokenize__is_digit(%SharedEnv_tokenize* %env.param, i8 %227)
  br i1 %228, label %then58, label %else59
then58:
  %229 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge60
else59:
  store i1 1, i1* %223
  br label %merge60
merge60:
  br label %while_cond55
while_end57:
  %230 = alloca i1
  store i1 false, i1* %230
  %231 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %232 = getelementptr [1 x i8], [1 x i8]* @.str293, i32 0, i32 0
  %233 = load i8, i8* %232
  %234 = zext i8 %233 to i64
  %235 = zext i8 %231 to i64
  %236 = icmp eq i64 %235, %234
  br i1 %236, label %sc_and_rhs61, label %sc_and_end62
sc_and_rhs61:
  %237 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %238 = call i1 @tokenize__is_digit(%SharedEnv_tokenize* %env.param, i8 %237)
  store i1 %238, i1* %230
  br label %sc_and_end62
sc_and_end62:
  %239 = load i1, i1* %230
  br i1 %239, label %then63, label %else64
then63:
  %240 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %241 = alloca i1
  store i1 0, i1* %241
  %242 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %243 = load i1, i1* %241
  %244 = xor i1 %243, true
  br i1 %244, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %242)
  %245 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %246 = call i1 @tokenize__is_digit(%SharedEnv_tokenize* %env.param, i8 %245)
  br i1 %246, label %then69, label %else70
then69:
  %247 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge71
else70:
  store i1 1, i1* %241
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %248 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %249 = call i1 @tokenize__is_alpha(%SharedEnv_tokenize* %env.param, i8 %248)
  br i1 %249, label %then72, label %else73
then72:
  %250 = load i64, i64* %3
  %251 = alloca i64
  store i64 %250, i64* %251
  %252 = alloca i1
  store i1 0, i1* %252
  %253 = call i8* @llvm.stacksave()
  br label %while_cond75
while_cond75:
  %254 = load i1, i1* %252
  %255 = xor i1 %254, true
  br i1 %255, label %while_body76, label %while_end77
while_body76:
  call void @llvm.stackrestore(i8* %253)
  %256 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %257 = call i1 @tokenize__is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %256)
  br i1 %257, label %then78, label %else79
then78:
  %258 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge80
else79:
  store i1 1, i1* %252
  br label %merge80
merge80:
  br label %while_cond75
while_end77:
  %259 = load %nyx_string*, %nyx_string** %2
  %260 = load i64, i64* %251
  %261 = load i64, i64* %3
  %262 = call %nyx_string* @nyx_string_substring(%nyx_string* %259, i64 %260, i64 %261)
  %263 = alloca %nyx_string*
  store %nyx_string* %262, %nyx_string** %263
  %264 = alloca i1
  store i1 true, i1* %264
  %265 = alloca i1
  store i1 true, i1* %265
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
  %273 = load %nyx_string*, %nyx_string** %263
  %274 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %274)
  %276 = call i1 @nyx_string_equals(%nyx_string* %273, %nyx_string* %275)
  br i1 %276, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %277 = load %nyx_string*, %nyx_string** %263
  %278 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %279 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %278)
  %280 = call i1 @nyx_string_equals(%nyx_string* %277, %nyx_string* %279)
  store i1 %280, i1* %272
  br label %sc_or_end82
sc_or_end82:
  %281 = load i1, i1* %272
  br i1 %281, label %sc_or_end84, label %sc_or_rhs83
sc_or_rhs83:
  %282 = load %nyx_string*, %nyx_string** %263
  %283 = getelementptr [4 x i8], [4 x i8]* @.str296, i32 0, i32 0
  %284 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %283)
  %285 = call i1 @nyx_string_equals(%nyx_string* %282, %nyx_string* %284)
  store i1 %285, i1* %271
  br label %sc_or_end84
sc_or_end84:
  %286 = load i1, i1* %271
  br i1 %286, label %sc_or_end86, label %sc_or_rhs85
sc_or_rhs85:
  %287 = load %nyx_string*, %nyx_string** %263
  %288 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %288)
  %290 = call i1 @nyx_string_equals(%nyx_string* %287, %nyx_string* %289)
  store i1 %290, i1* %270
  br label %sc_or_end86
sc_or_end86:
  %291 = load i1, i1* %270
  br i1 %291, label %sc_or_end88, label %sc_or_rhs87
sc_or_rhs87:
  %292 = load %nyx_string*, %nyx_string** %263
  %293 = getelementptr [3 x i8], [3 x i8]* @.str298, i32 0, i32 0
  %294 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %293)
  %295 = call i1 @nyx_string_equals(%nyx_string* %292, %nyx_string* %294)
  store i1 %295, i1* %269
  br label %sc_or_end88
sc_or_end88:
  %296 = load i1, i1* %269
  br i1 %296, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %297 = load %nyx_string*, %nyx_string** %263
  %298 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %298)
  %300 = call i1 @nyx_string_equals(%nyx_string* %297, %nyx_string* %299)
  store i1 %300, i1* %268
  br label %sc_or_end90
sc_or_end90:
  %301 = load i1, i1* %268
  br i1 %301, label %sc_or_end92, label %sc_or_rhs91
sc_or_rhs91:
  %302 = load %nyx_string*, %nyx_string** %263
  %303 = getelementptr [4 x i8], [4 x i8]* @.str300, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %303)
  %305 = call i1 @nyx_string_equals(%nyx_string* %302, %nyx_string* %304)
  store i1 %305, i1* %267
  br label %sc_or_end92
sc_or_end92:
  %306 = load i1, i1* %267
  br i1 %306, label %sc_or_end94, label %sc_or_rhs93
sc_or_rhs93:
  %307 = load %nyx_string*, %nyx_string** %263
  %308 = getelementptr [4 x i8], [4 x i8]* @.str301, i32 0, i32 0
  %309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %308)
  %310 = call i1 @nyx_string_equals(%nyx_string* %307, %nyx_string* %309)
  store i1 %310, i1* %266
  br label %sc_or_end94
sc_or_end94:
  %311 = load i1, i1* %266
  br i1 %311, label %sc_or_end96, label %sc_or_rhs95
sc_or_rhs95:
  %312 = load %nyx_string*, %nyx_string** %263
  %313 = getelementptr [4 x i8], [4 x i8]* @.str302, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %313)
  %315 = call i1 @nyx_string_equals(%nyx_string* %312, %nyx_string* %314)
  store i1 %315, i1* %265
  br label %sc_or_end96
sc_or_end96:
  %316 = load i1, i1* %265
  br i1 %316, label %sc_or_end98, label %sc_or_rhs97
sc_or_rhs97:
  %317 = load %nyx_string*, %nyx_string** %263
  %318 = getelementptr [6 x i8], [6 x i8]* @.str303, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %318)
  %320 = call i1 @nyx_string_equals(%nyx_string* %317, %nyx_string* %319)
  store i1 %320, i1* %264
  br label %sc_or_end98
sc_or_end98:
  %321 = load i1, i1* %264
  br i1 %321, label %then99, label %else100
then99:
  %322 = load %nyx_string*, %nyx_string** %2
  %323 = load i64, i64* %10
  %324 = load i64, i64* %3
  %325 = call %nyx_string* @nyx_string_substring(%nyx_string* %322, i64 %323, i64 %324)
  %326 = alloca %nyx_string*
  store %nyx_string* %325, %nyx_string** %326
  %327 = getelementptr [7 x i8], [7 x i8]* @.str304, i32 0, i32 0
  %328 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %327)
  %329 = load %nyx_string*, %nyx_string** %326
  %330 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %328, %nyx_string* %329)
  br label %merge101
else100:
  %331 = load i64, i64* %251
  store i64 %331, i64* %3
  %332 = load %nyx_string*, %nyx_string** %2
  %333 = load i64, i64* %10
  %334 = load i64, i64* %3
  %335 = call %nyx_string* @nyx_string_substring(%nyx_string* %332, i64 %333, i64 %334)
  %336 = alloca %nyx_string*
  store %nyx_string* %335, %nyx_string** %336
  %337 = getelementptr [7 x i8], [7 x i8]* @.str305, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %337)
  %339 = load %nyx_string*, %nyx_string** %336
  %340 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %338, %nyx_string* %339)
  br label %merge101
merge101:
  br label %merge74
else73:
  %341 = load %nyx_string*, %nyx_string** %2
  %342 = load i64, i64* %10
  %343 = load i64, i64* %3
  %344 = call %nyx_string* @nyx_string_substring(%nyx_string* %341, i64 %342, i64 %343)
  %345 = alloca %nyx_string*
  store %nyx_string* %344, %nyx_string** %345
  %346 = getelementptr [7 x i8], [7 x i8]* @.str306, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %346)
  %348 = load %nyx_string*, %nyx_string** %345
  %349 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %347, %nyx_string* %348)
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

define internal i64 @tokenize__scan_string_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %chars.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = alloca { i64, i8* }*
  store { i64, i8* }* %chars.param, { i64, i8* }** %9
  %10 = alloca i1
  store i1 0, i1* %10
  %11 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %12 = load i1, i1* %10
  %13 = xor i1 %12, true
  br i1 %13, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %11)
  %14 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %14, label %then3, label %else4
then3:
  %15 = getelementptr [25 x i8], [25 x i8]* @.str307, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %15)
  %17 = call i8* @nyx_string_to_cstr(%nyx_string* %16)
  call void @nyx_print_string(i8* %17)
  %18 = load i64, i64* @g_lex_error_count
  %19 = add i64 %18, 1
  store i64 %19, i64* @g_lex_error_count
  store i1 1, i1* %10
  br label %merge5
else4:
  %20 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %21 = alloca i8
  store i8 %20, i8* %21
  %22 = load i8, i8* %21
  %23 = getelementptr [1 x i8], [1 x i8]* @.str308, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  br i1 %27, label %then6, label %else7
then6:
  %28 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %29 = getelementptr [7 x i8], [7 x i8]* @.str309, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %29)
  %31 = load { i64, i8* }*, { i64, i8* }** %9
  %32 = call %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %31)
  %33 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %30, %nyx_string* %32)
  store i1 1, i1* %10
  br label %merge8
else7:
  %34 = alloca i1
  store i1 false, i1* %34
  %35 = load i8, i8* %21
  %36 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %37 = load i8, i8* %36
  %38 = zext i8 %37 to i64
  %39 = zext i8 %35 to i64
  %40 = icmp eq i64 %39, %38
  br i1 %40, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %41 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %42 = getelementptr [1 x i8], [1 x i8]* @.str311, i32 0, i32 0
  %43 = load i8, i8* %42
  %44 = zext i8 %43 to i64
  %45 = zext i8 %41 to i64
  %46 = icmp eq i64 %45, %44
  store i1 %46, i1* %34
  br label %sc_and_end10
sc_and_end10:
  %47 = load i1, i1* %34
  br i1 %47, label %then11, label %else12
then11:
  %48 = getelementptr [7 x i8], [7 x i8]* @.str312, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %48)
  %50 = load { i64, i8* }*, { i64, i8* }** %9
  %51 = call %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %50)
  %52 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %49, %nyx_string* %51)
  %53 = getelementptr [5 x i8], [5 x i8]* @.str313, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %53)
  %55 = getelementptr [2 x i8], [2 x i8]* @.str314, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %55)
  %57 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %54, %nyx_string* %56)
  %58 = getelementptr [11 x i8], [11 x i8]* @.str315, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %58)
  %60 = getelementptr [2 x i8], [2 x i8]* @.str316, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %60)
  %62 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %59, %nyx_string* %61)
  %63 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %64 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %65 = load i64, i64* %7
  %66 = add i64 %65, 1
  store i64 %66, i64* %7
  store i1 1, i1* %10
  br label %merge13
else12:
  %67 = load i8, i8* %21
  %68 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %69 = load i8, i8* %68
  %70 = zext i8 %69 to i64
  %71 = zext i8 %67 to i64
  %72 = icmp eq i64 %71, %70
  br i1 %72, label %then14, label %else15
then14:
  %73 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %74 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %75 = alloca i8
  store i8 %74, i8* %75
  %76 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %77 = load i8, i8* %75
  %78 = getelementptr [1 x i8], [1 x i8]* @.str318, i32 0, i32 0
  %79 = load i8, i8* %78
  %80 = zext i8 %79 to i64
  %81 = zext i8 %77 to i64
  %82 = icmp eq i64 %81, %80
  br i1 %82, label %then17, label %else18
then17:
  %83 = load { i64, i8* }*, { i64, i8* }** %9
  %84 = getelementptr [1 x i8], [1 x i8]* @.str319, i32 0, i32 0
  %85 = load i8, i8* %84
  %86 = zext i8 %85 to i64
  call void @nyx_array_push({ i64, i8* }* %83, i64 %86)
  br label %merge19
else18:
  %87 = load i8, i8* %75
  %88 = getelementptr [1 x i8], [1 x i8]* @.str320, i32 0, i32 0
  %89 = load i8, i8* %88
  %90 = zext i8 %89 to i64
  %91 = zext i8 %87 to i64
  %92 = icmp eq i64 %91, %90
  br i1 %92, label %then20, label %else21
then20:
  %93 = load { i64, i8* }*, { i64, i8* }** %9
  %94 = getelementptr [1 x i8], [1 x i8]* @.str321, i32 0, i32 0
  %95 = load i8, i8* %94
  %96 = zext i8 %95 to i64
  call void @nyx_array_push({ i64, i8* }* %93, i64 %96)
  br label %merge22
else21:
  %97 = load i8, i8* %75
  %98 = getelementptr [1 x i8], [1 x i8]* @.str322, i32 0, i32 0
  %99 = load i8, i8* %98
  %100 = zext i8 %99 to i64
  %101 = zext i8 %97 to i64
  %102 = icmp eq i64 %101, %100
  br i1 %102, label %then23, label %else24
then23:
  %103 = load { i64, i8* }*, { i64, i8* }** %9
  %104 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %105 = load i8, i8* %104
  %106 = zext i8 %105 to i64
  call void @nyx_array_push({ i64, i8* }* %103, i64 %106)
  br label %merge25
else24:
  %107 = load i8, i8* %75
  %108 = getelementptr [1 x i8], [1 x i8]* @.str324, i32 0, i32 0
  %109 = load i8, i8* %108
  %110 = zext i8 %109 to i64
  %111 = zext i8 %107 to i64
  %112 = icmp eq i64 %111, %110
  br i1 %112, label %then26, label %else27
then26:
  %113 = load { i64, i8* }*, { i64, i8* }** %9
  %114 = getelementptr [1 x i8], [1 x i8]* @.str325, i32 0, i32 0
  %115 = load i8, i8* %114
  %116 = zext i8 %115 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %116)
  br label %merge28
else27:
  %117 = load i8, i8* %75
  %118 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %119 = load i8, i8* %118
  %120 = zext i8 %119 to i64
  %121 = zext i8 %117 to i64
  %122 = icmp eq i64 %121, %120
  br i1 %122, label %then29, label %else30
then29:
  %123 = trunc i64 13 to i8
  %124 = alloca i8
  store i8 %123, i8* %124
  %125 = load { i64, i8* }*, { i64, i8* }** %9
  %126 = load i8, i8* %124
  %127 = zext i8 %126 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %127, i64 1)
  br label %merge31
else30:
  %128 = load i8, i8* %75
  %129 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %130 = load i8, i8* %129
  %131 = zext i8 %130 to i64
  %132 = zext i8 %128 to i64
  %133 = icmp eq i64 %132, %131
  br i1 %133, label %then32, label %else33
then32:
  %134 = trunc i64 0 to i8
  %135 = alloca i8
  store i8 %134, i8* %135
  %136 = load { i64, i8* }*, { i64, i8* }** %9
  %137 = load i8, i8* %135
  %138 = zext i8 %137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %136, i64 %138, i64 1)
  br label %merge34
else33:
  %139 = load { i64, i8* }*, { i64, i8* }** %9
  %140 = load i8, i8* %75
  %141 = zext i8 %140 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %139, i64 %141, i64 1)
  br label %merge34
merge34:
  br label %merge31
merge31:
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
merge22:
  br label %merge19
merge19:
  br label %merge16
else15:
  %142 = load { i64, i8* }*, { i64, i8* }** %9
  %143 = load i8, i8* %21
  %144 = zext i8 %143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %142, i64 %144, i64 1)
  %145 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
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

define internal i64 @tokenize__scan_string_escdelim(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = alloca { i64, i8* }*
  store { i64, i8* }* %9, { i64, i8* }** %10
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
  %15 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %15, label %then3, label %else4
then3:
  %16 = getelementptr [99 x i8], [99 x i8]* @.str328, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str328.c, i8* %16)
  %18 = call i8* @nyx_string_to_cstr(%nyx_string* %17)
  call void @nyx_print_string(i8* %18)
  %19 = load i64, i64* @g_lex_error_count
  %20 = add i64 %19, 1
  store i64 %20, i64* @g_lex_error_count
  store i1 1, i1* %11
  br label %merge5
else4:
  %21 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %22 = alloca i8
  store i8 %21, i8* %22
  %23 = alloca i1
  store i1 false, i1* %23
  %24 = load i8, i8* %22
  %25 = getelementptr [1 x i8], [1 x i8]* @.str329, i32 0, i32 0
  %26 = load i8, i8* %25
  %27 = zext i8 %26 to i64
  %28 = zext i8 %24 to i64
  %29 = icmp eq i64 %28, %27
  br i1 %29, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %30 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %31 = getelementptr [1 x i8], [1 x i8]* @.str330, i32 0, i32 0
  %32 = load i8, i8* %31
  %33 = zext i8 %32 to i64
  %34 = zext i8 %30 to i64
  %35 = icmp eq i64 %34, %33
  store i1 %35, i1* %23
  br label %sc_and_end7
sc_and_end7:
  %36 = load i1, i1* %23
  br i1 %36, label %then8, label %else9
then8:
  %37 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %38 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %39 = getelementptr [7 x i8], [7 x i8]* @.str331, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str331.c, i8* %39)
  %41 = load { i64, i8* }*, { i64, i8* }** %10
  %42 = call %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %41)
  %43 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %40, %nyx_string* %42)
  store i1 1, i1* %11
  br label %merge10
else9:
  %44 = load i8, i8* %22
  %45 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %46 = load i8, i8* %45
  %47 = zext i8 %46 to i64
  %48 = zext i8 %44 to i64
  %49 = icmp eq i64 %48, %47
  br i1 %49, label %then11, label %else12
then11:
  %50 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %51 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %52 = alloca i8
  store i8 %51, i8* %52
  %53 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %54 = load i8, i8* %52
  %55 = getelementptr [1 x i8], [1 x i8]* @.str333, i32 0, i32 0
  %56 = load i8, i8* %55
  %57 = zext i8 %56 to i64
  %58 = zext i8 %54 to i64
  %59 = icmp eq i64 %58, %57
  br i1 %59, label %then14, label %else15
then14:
  %60 = load { i64, i8* }*, { i64, i8* }** %10
  %61 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %62 = load i8, i8* %61
  %63 = zext i8 %62 to i64
  call void @nyx_array_push({ i64, i8* }* %60, i64 %63)
  br label %merge16
else15:
  %64 = load i8, i8* %52
  %65 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  br i1 %69, label %then17, label %else18
then17:
  %70 = load { i64, i8* }*, { i64, i8* }** %10
  %71 = getelementptr [1 x i8], [1 x i8]* @.str336, i32 0, i32 0
  %72 = load i8, i8* %71
  %73 = zext i8 %72 to i64
  call void @nyx_array_push({ i64, i8* }* %70, i64 %73)
  br label %merge19
else18:
  %74 = load i8, i8* %52
  %75 = getelementptr [1 x i8], [1 x i8]* @.str337, i32 0, i32 0
  %76 = load i8, i8* %75
  %77 = zext i8 %76 to i64
  %78 = zext i8 %74 to i64
  %79 = icmp eq i64 %78, %77
  br i1 %79, label %then20, label %else21
then20:
  %80 = load { i64, i8* }*, { i64, i8* }** %10
  %81 = getelementptr [1 x i8], [1 x i8]* @.str338, i32 0, i32 0
  %82 = load i8, i8* %81
  %83 = zext i8 %82 to i64
  call void @nyx_array_push({ i64, i8* }* %80, i64 %83)
  br label %merge22
else21:
  %84 = load i8, i8* %52
  %85 = getelementptr [1 x i8], [1 x i8]* @.str339, i32 0, i32 0
  %86 = load i8, i8* %85
  %87 = zext i8 %86 to i64
  %88 = zext i8 %84 to i64
  %89 = icmp eq i64 %88, %87
  br i1 %89, label %then23, label %else24
then23:
  %90 = trunc i64 13 to i8
  %91 = alloca i8
  store i8 %90, i8* %91
  %92 = load { i64, i8* }*, { i64, i8* }** %10
  %93 = load i8, i8* %91
  %94 = zext i8 %93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %92, i64 %94, i64 1)
  br label %merge25
else24:
  %95 = load i8, i8* %52
  %96 = getelementptr [1 x i8], [1 x i8]* @.str340, i32 0, i32 0
  %97 = load i8, i8* %96
  %98 = zext i8 %97 to i64
  %99 = zext i8 %95 to i64
  %100 = icmp eq i64 %99, %98
  br i1 %100, label %then26, label %else27
then26:
  %101 = trunc i64 0 to i8
  %102 = alloca i8
  store i8 %101, i8* %102
  %103 = load { i64, i8* }*, { i64, i8* }** %10
  %104 = load i8, i8* %102
  %105 = zext i8 %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %105, i64 1)
  br label %merge28
else27:
  %106 = load { i64, i8* }*, { i64, i8* }** %10
  %107 = load i8, i8* %52
  %108 = zext i8 %107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %108, i64 1)
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
merge22:
  br label %merge19
merge19:
  br label %merge16
merge16:
  br label %merge13
else12:
  %109 = load { i64, i8* }*, { i64, i8* }** %10
  %110 = load i8, i8* %22
  %111 = zext i8 %110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %109, i64 %111, i64 1)
  %112 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
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

define internal i64 @tokenize__scan_multiline_string(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %10 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %11 = getelementptr [1 x i8], [1 x i8]* @.str341, i32 0, i32 0
  %12 = load i8, i8* %11
  %13 = zext i8 %12 to i64
  %14 = zext i8 %10 to i64
  %15 = icmp eq i64 %14, %13
  br i1 %15, label %then0, label %else1
then0:
  %16 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = alloca i1
  store i1 0, i1* %19
  %20 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %21 = load i1, i1* %19
  %22 = xor i1 %21, true
  br i1 %22, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %20)
  %23 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %23, label %then6, label %else7
then6:
  %24 = getelementptr [37 x i8], [37 x i8]* @.str342, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str342.c, i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  call void @nyx_print_string(i8* %26)
  %27 = load i64, i64* @g_lex_error_count
  %28 = add i64 %27, 1
  store i64 %28, i64* @g_lex_error_count
  store i1 1, i1* %19
  br label %merge8
else7:
  %29 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %30 = alloca i8
  store i8 %29, i8* %30
  %31 = alloca i1
  store i1 false, i1* %31
  %32 = load i8, i8* %30
  %33 = getelementptr [1 x i8], [1 x i8]* @.str343, i32 0, i32 0
  %34 = load i8, i8* %33
  %35 = zext i8 %34 to i64
  %36 = zext i8 %32 to i64
  %37 = icmp eq i64 %36, %35
  br i1 %37, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %38 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %39 = getelementptr [1 x i8], [1 x i8]* @.str344, i32 0, i32 0
  %40 = load i8, i8* %39
  %41 = zext i8 %40 to i64
  %42 = zext i8 %38 to i64
  %43 = icmp eq i64 %42, %41
  store i1 %43, i1* %31
  br label %sc_and_end10
sc_and_end10:
  %44 = load i1, i1* %31
  br i1 %44, label %then11, label %else12
then11:
  %45 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %46 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %47 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %47, label %then14, label %else15
then14:
  %48 = load { i64, i8* }*, { i64, i8* }** %18
  %49 = getelementptr [1 x i8], [1 x i8]* @.str345, i32 0, i32 0
  %50 = load i8, i8* %49
  %51 = zext i8 %50 to i64
  call void @nyx_array_push({ i64, i8* }* %48, i64 %51)
  %52 = load { i64, i8* }*, { i64, i8* }** %18
  %53 = getelementptr [1 x i8], [1 x i8]* @.str346, i32 0, i32 0
  %54 = load i8, i8* %53
  %55 = zext i8 %54 to i64
  call void @nyx_array_push({ i64, i8* }* %52, i64 %55)
  br label %merge16
else15:
  %56 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %57 = getelementptr [1 x i8], [1 x i8]* @.str347, i32 0, i32 0
  %58 = load i8, i8* %57
  %59 = zext i8 %58 to i64
  %60 = zext i8 %56 to i64
  %61 = icmp eq i64 %60, %59
  br i1 %61, label %then17, label %else18
then17:
  %62 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  store i1 1, i1* %19
  br label %merge19
else18:
  %63 = load { i64, i8* }*, { i64, i8* }** %18
  %64 = getelementptr [1 x i8], [1 x i8]* @.str348, i32 0, i32 0
  %65 = load i8, i8* %64
  %66 = zext i8 %65 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %66)
  %67 = load { i64, i8* }*, { i64, i8* }** %18
  %68 = getelementptr [1 x i8], [1 x i8]* @.str349, i32 0, i32 0
  %69 = load i8, i8* %68
  %70 = zext i8 %69 to i64
  call void @nyx_array_push({ i64, i8* }* %67, i64 %70)
  br label %merge19
merge19:
  br label %merge16
merge16:
  br label %merge13
else12:
  %71 = load { i64, i8* }*, { i64, i8* }** %18
  %72 = load i8, i8* %30
  %73 = zext i8 %72 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %71, i64 %73, i64 1)
  %74 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge13
merge13:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %75 = getelementptr [7 x i8], [7 x i8]* @.str350, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str350.c, i8* %75)
  %77 = load { i64, i8* }*, { i64, i8* }** %18
  %78 = call %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %77)
  %79 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %76, %nyx_string* %78)
  br label %merge2
else1:
  %80 = getelementptr [7 x i8], [7 x i8]* @.str351, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str351.c, i8* %80)
  %82 = getelementptr [1 x i8], [1 x i8]* @.str352, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str352.c, i8* %82)
  %84 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %81, %nyx_string* %83)
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @tokenize__scan_raw_string(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %10 = call { i64, i8* }* @nyx_array_new_ptr()
  %11 = alloca { i64, i8* }*
  store { i64, i8* }* %10, { i64, i8* }** %11
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
  %16 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %16, label %then3, label %else4
then3:
  %17 = getelementptr [31 x i8], [31 x i8]* @.str353, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str353.c, i8* %17)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  call void @nyx_print_string(i8* %19)
  %20 = load i64, i64* @g_lex_error_count
  %21 = add i64 %20, 1
  store i64 %21, i64* @g_lex_error_count
  store i1 1, i1* %12
  br label %merge5
else4:
  %22 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %23 = alloca i8
  store i8 %22, i8* %23
  %24 = load i8, i8* %23
  %25 = getelementptr [1 x i8], [1 x i8]* @.str354, i32 0, i32 0
  %26 = load i8, i8* %25
  %27 = zext i8 %26 to i64
  %28 = zext i8 %24 to i64
  %29 = icmp eq i64 %28, %27
  br i1 %29, label %then6, label %else7
then6:
  %30 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  store i1 1, i1* %12
  br label %merge8
else7:
  %31 = load { i64, i8* }*, { i64, i8* }** %11
  %32 = load i8, i8* %23
  %33 = zext i8 %32 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %31, i64 %33, i64 1)
  %34 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %35 = getelementptr [7 x i8], [7 x i8]* @.str355, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str355.c, i8* %35)
  %37 = load { i64, i8* }*, { i64, i8* }** %11
  %38 = call %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %37)
  %39 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %36, %nyx_string* %38)
  ret i64 0
}

define internal i64 @tokenize__scan_string(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %10 = call { i64, i8* }* @nyx_array_new_ptr()
  %11 = alloca { i64, i8* }*
  store { i64, i8* }* %10, { i64, i8* }** %11
  %12 = load { i64, i8* }*, { i64, i8* }** %11
  %13 = call i64 @tokenize__scan_string_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %12)
  ret i64 0
}

define internal i64 @tokenize__scan_string_rest(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = alloca { i64, i8* }*
  store { i64, i8* }* %9, { i64, i8* }** %10
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
  %15 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  br i1 %15, label %then3, label %else4
then3:
  %16 = getelementptr [25 x i8], [25 x i8]* @.str356, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str356.c, i8* %16)
  %18 = call i8* @nyx_string_to_cstr(%nyx_string* %17)
  call void @nyx_print_string(i8* %18)
  %19 = load i64, i64* @g_lex_error_count
  %20 = add i64 %19, 1
  store i64 %20, i64* @g_lex_error_count
  store i1 1, i1* %11
  br label %merge5
else4:
  %21 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %22 = alloca i8
  store i8 %21, i8* %22
  %23 = load i8, i8* %22
  %24 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %25 = load i8, i8* %24
  %26 = zext i8 %25 to i64
  %27 = zext i8 %23 to i64
  %28 = icmp eq i64 %27, %26
  br i1 %28, label %then6, label %else7
then6:
  %29 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %30 = load { i64, i8* }*, { i64, i8* }** %10
  %31 = call %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = load %nyx_string*, %nyx_string** %32
  %34 = call i64 @nyx_string_byte_length(%nyx_string* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %then9, label %else10
then9:
  %36 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str358.c, i8* %36)
  %38 = getelementptr [2 x i8], [2 x i8]* @.str359, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str359.c, i8* %38)
  %40 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %37, %nyx_string* %39)
  %41 = getelementptr [7 x i8], [7 x i8]* @.str360, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str360.c, i8* %41)
  %43 = load %nyx_string*, %nyx_string** %32
  %44 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %42, %nyx_string* %43)
  br label %merge11
else10:
  br label %merge11
merge11:
  store i1 1, i1* %11
  br label %merge8
else7:
  %45 = alloca i1
  store i1 false, i1* %45
  %46 = load i8, i8* %22
  %47 = getelementptr [1 x i8], [1 x i8]* @.str361, i32 0, i32 0
  %48 = load i8, i8* %47
  %49 = zext i8 %48 to i64
  %50 = zext i8 %46 to i64
  %51 = icmp eq i64 %50, %49
  br i1 %51, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %52 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %53 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %54 = load i8, i8* %53
  %55 = zext i8 %54 to i64
  %56 = zext i8 %52 to i64
  %57 = icmp eq i64 %56, %55
  store i1 %57, i1* %45
  br label %sc_and_end13
sc_and_end13:
  %58 = load i1, i1* %45
  br i1 %58, label %then14, label %else15
then14:
  %59 = load { i64, i8* }*, { i64, i8* }** %10
  %60 = call %nyx_string* @tokenize__build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %59)
  %61 = alloca %nyx_string*
  store %nyx_string* %60, %nyx_string** %61
  %62 = load %nyx_string*, %nyx_string** %61
  %63 = call i64 @nyx_string_byte_length(%nyx_string* %62)
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %then17, label %else18
then17:
  %65 = getelementptr [5 x i8], [5 x i8]* @.str363, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str363.c, i8* %65)
  %67 = getelementptr [2 x i8], [2 x i8]* @.str364, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str364.c, i8* %67)
  %69 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %66, %nyx_string* %68)
  %70 = getelementptr [7 x i8], [7 x i8]* @.str365, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str365.c, i8* %70)
  %72 = load %nyx_string*, %nyx_string** %61
  %73 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %71, %nyx_string* %72)
  br label %merge19
else18:
  br label %merge19
merge19:
  %74 = getelementptr [5 x i8], [5 x i8]* @.str366, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str366.c, i8* %74)
  %76 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str367.c, i8* %76)
  %78 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %75, %nyx_string* %77)
  %79 = getelementptr [11 x i8], [11 x i8]* @.str368, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str368.c, i8* %79)
  %81 = getelementptr [2 x i8], [2 x i8]* @.str369, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str369.c, i8* %81)
  %83 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %80, %nyx_string* %82)
  %84 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %85 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %86 = load i64, i64* %7
  %87 = add i64 %86, 1
  store i64 %87, i64* %7
  store i1 1, i1* %11
  br label %merge16
else15:
  %88 = load i8, i8* %22
  %89 = getelementptr [1 x i8], [1 x i8]* @.str370, i32 0, i32 0
  %90 = load i8, i8* %89
  %91 = zext i8 %90 to i64
  %92 = zext i8 %88 to i64
  %93 = icmp eq i64 %92, %91
  br i1 %93, label %then20, label %else21
then20:
  %94 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %95 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %96 = alloca i8
  store i8 %95, i8* %96
  %97 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %98 = load i8, i8* %96
  %99 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %100 = load i8, i8* %99
  %101 = zext i8 %100 to i64
  %102 = zext i8 %98 to i64
  %103 = icmp eq i64 %102, %101
  br i1 %103, label %then23, label %else24
then23:
  %104 = load { i64, i8* }*, { i64, i8* }** %10
  %105 = getelementptr [1 x i8], [1 x i8]* @.str372, i32 0, i32 0
  %106 = load i8, i8* %105
  %107 = zext i8 %106 to i64
  call void @nyx_array_push({ i64, i8* }* %104, i64 %107)
  br label %merge25
else24:
  %108 = load i8, i8* %96
  %109 = getelementptr [1 x i8], [1 x i8]* @.str373, i32 0, i32 0
  %110 = load i8, i8* %109
  %111 = zext i8 %110 to i64
  %112 = zext i8 %108 to i64
  %113 = icmp eq i64 %112, %111
  br i1 %113, label %then26, label %else27
then26:
  %114 = load { i64, i8* }*, { i64, i8* }** %10
  %115 = getelementptr [1 x i8], [1 x i8]* @.str374, i32 0, i32 0
  %116 = load i8, i8* %115
  %117 = zext i8 %116 to i64
  call void @nyx_array_push({ i64, i8* }* %114, i64 %117)
  br label %merge28
else27:
  %118 = load i8, i8* %96
  %119 = getelementptr [1 x i8], [1 x i8]* @.str375, i32 0, i32 0
  %120 = load i8, i8* %119
  %121 = zext i8 %120 to i64
  %122 = zext i8 %118 to i64
  %123 = icmp eq i64 %122, %121
  br i1 %123, label %then29, label %else30
then29:
  %124 = load { i64, i8* }*, { i64, i8* }** %10
  %125 = getelementptr [1 x i8], [1 x i8]* @.str376, i32 0, i32 0
  %126 = load i8, i8* %125
  %127 = zext i8 %126 to i64
  call void @nyx_array_push({ i64, i8* }* %124, i64 %127)
  br label %merge31
else30:
  %128 = load i8, i8* %96
  %129 = getelementptr [1 x i8], [1 x i8]* @.str377, i32 0, i32 0
  %130 = load i8, i8* %129
  %131 = zext i8 %130 to i64
  %132 = zext i8 %128 to i64
  %133 = icmp eq i64 %132, %131
  br i1 %133, label %then32, label %else33
then32:
  %134 = load { i64, i8* }*, { i64, i8* }** %10
  %135 = getelementptr [1 x i8], [1 x i8]* @.str378, i32 0, i32 0
  %136 = load i8, i8* %135
  %137 = zext i8 %136 to i64
  call void @nyx_array_push({ i64, i8* }* %134, i64 %137)
  br label %merge34
else33:
  %138 = load i8, i8* %96
  %139 = getelementptr [1 x i8], [1 x i8]* @.str379, i32 0, i32 0
  %140 = load i8, i8* %139
  %141 = zext i8 %140 to i64
  %142 = zext i8 %138 to i64
  %143 = icmp eq i64 %142, %141
  br i1 %143, label %then35, label %else36
then35:
  %144 = trunc i64 13 to i8
  %145 = alloca i8
  store i8 %144, i8* %145
  %146 = load { i64, i8* }*, { i64, i8* }** %10
  %147 = load i8, i8* %145
  %148 = zext i8 %147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %148, i64 1)
  br label %merge37
else36:
  %149 = load i8, i8* %96
  %150 = getelementptr [1 x i8], [1 x i8]* @.str380, i32 0, i32 0
  %151 = load i8, i8* %150
  %152 = zext i8 %151 to i64
  %153 = zext i8 %149 to i64
  %154 = icmp eq i64 %153, %152
  br i1 %154, label %then38, label %else39
then38:
  %155 = trunc i64 0 to i8
  %156 = alloca i8
  store i8 %155, i8* %156
  %157 = load { i64, i8* }*, { i64, i8* }** %10
  %158 = load i8, i8* %156
  %159 = zext i8 %158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %157, i64 %159, i64 1)
  br label %merge40
else39:
  %160 = load { i64, i8* }*, { i64, i8* }** %10
  %161 = load i8, i8* %96
  %162 = zext i8 %161 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %160, i64 %162, i64 1)
  br label %merge40
merge40:
  br label %merge37
merge37:
  br label %merge34
merge34:
  br label %merge31
merge31:
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
else21:
  %163 = load { i64, i8* }*, { i64, i8* }** %10
  %164 = load i8, i8* %22
  %165 = zext i8 %164 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %163, i64 %165, i64 1)
  %166 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
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

define internal i64 @tokenize__scan_lifetime(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %10 = load i64, i64* %3
  %11 = alloca i64
  store i64 %10, i64* %11
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
  %16 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %17 = call i1 @tokenize__is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %16)
  br i1 %17, label %then3, label %else4
then3:
  %18 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %12
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %19 = load %nyx_string*, %nyx_string** %2
  %20 = load i64, i64* %11
  %21 = load i64, i64* %3
  %22 = call %nyx_string* @nyx_string_substring(%nyx_string* %19, i64 %20, i64 %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr [9 x i8], [9 x i8]* @.str381, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str381.c, i8* %24)
  %26 = getelementptr [2 x i8], [2 x i8]* @.str382, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str382.c, i8* %26)
  %28 = load %nyx_string*, %nyx_string** %23
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %28)
  %30 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %25, %nyx_string* %29)
  ret i64 0
}

define internal i64 @tokenize__scan_char(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %10 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  %11 = xor i1 %10, true
  br i1 %11, label %then0, label %else1
then0:
  %12 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %13 = getelementptr [1 x i8], [1 x i8]* @.str383, i32 0, i32 0
  %14 = load i8, i8* %13
  %15 = zext i8 %14 to i64
  %16 = zext i8 %12 to i64
  %17 = icmp ne i64 %16, %15
  br i1 %17, label %then3, label %else4
then3:
  %18 = getelementptr [2 x i8], [2 x i8]* @.str384, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str384.c, i8* %18)
  %20 = alloca %nyx_string*
  store %nyx_string* %19, %nyx_string** %20
  %21 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %22 = getelementptr [1 x i8], [1 x i8]* @.str385, i32 0, i32 0
  %23 = load i8, i8* %22
  %24 = zext i8 %23 to i64
  %25 = zext i8 %21 to i64
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %then6, label %else7
then6:
  %27 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %28 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %29 = alloca i8
  store i8 %28, i8* %29
  %30 = load i8, i8* %29
  %31 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %32 = load i8, i8* %31
  %33 = zext i8 %32 to i64
  %34 = zext i8 %30 to i64
  %35 = icmp eq i64 %34, %33
  br i1 %35, label %then9, label %else10
then9:
  %36 = getelementptr [2 x i8], [2 x i8]* @.str387, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str387.c, i8* %36)
  store %nyx_string* %37, %nyx_string** %20
  br label %merge11
else10:
  %38 = load i8, i8* %29
  %39 = getelementptr [1 x i8], [1 x i8]* @.str388, i32 0, i32 0
  %40 = load i8, i8* %39
  %41 = zext i8 %40 to i64
  %42 = zext i8 %38 to i64
  %43 = icmp eq i64 %42, %41
  br i1 %43, label %then12, label %else13
then12:
  %44 = getelementptr [2 x i8], [2 x i8]* @.str389, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str389.c, i8* %44)
  store %nyx_string* %45, %nyx_string** %20
  br label %merge14
else13:
  %46 = load i8, i8* %29
  %47 = getelementptr [1 x i8], [1 x i8]* @.str390, i32 0, i32 0
  %48 = load i8, i8* %47
  %49 = zext i8 %48 to i64
  %50 = zext i8 %46 to i64
  %51 = icmp eq i64 %50, %49
  br i1 %51, label %then15, label %else16
then15:
  %52 = getelementptr [2 x i8], [2 x i8]* @.str391, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str391.c, i8* %52)
  store %nyx_string* %53, %nyx_string** %20
  br label %merge17
else16:
  %54 = load i8, i8* %29
  %55 = getelementptr [1 x i8], [1 x i8]* @.str392, i32 0, i32 0
  %56 = load i8, i8* %55
  %57 = zext i8 %56 to i64
  %58 = zext i8 %54 to i64
  %59 = icmp eq i64 %58, %57
  br i1 %59, label %then18, label %else19
then18:
  %60 = getelementptr [2 x i8], [2 x i8]* @.str393, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str393.c, i8* %60)
  store %nyx_string* %61, %nyx_string** %20
  br label %merge20
else19:
  %62 = load i8, i8* %29
  %63 = getelementptr [1 x i8], [1 x i8]* @.str394, i32 0, i32 0
  %64 = load i8, i8* %63
  %65 = zext i8 %64 to i64
  %66 = zext i8 %62 to i64
  %67 = icmp eq i64 %66, %65
  br i1 %67, label %then21, label %else22
then21:
  %68 = trunc i64 13 to i8
  %69 = alloca i8
  store i8 %68, i8* %69
  %70 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str395.c, i8* %70)
  %72 = load i8, i8* %69
  %73 = call %nyx_string* @nyx_string_from_char(i8 %72)
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %71, %nyx_string* %73)
  store %nyx_string* %74, %nyx_string** %20
  br label %merge23
else22:
  %75 = load i8, i8* %29
  %76 = getelementptr [1 x i8], [1 x i8]* @.str396, i32 0, i32 0
  %77 = load i8, i8* %76
  %78 = zext i8 %77 to i64
  %79 = zext i8 %75 to i64
  %80 = icmp eq i64 %79, %78
  br i1 %80, label %then24, label %else25
then24:
  %81 = trunc i64 0 to i8
  %82 = alloca i8
  store i8 %81, i8* %82
  %83 = getelementptr [1 x i8], [1 x i8]* @.str397, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str397.c, i8* %83)
  %85 = load i8, i8* %82
  %86 = call %nyx_string* @nyx_string_from_char(i8 %85)
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %86)
  store %nyx_string* %87, %nyx_string** %20
  br label %merge26
else25:
  %88 = load i8, i8* %29
  %89 = call %nyx_string* @nyx_string_from_char(i8 %88)
  store %nyx_string* %89, %nyx_string** %20
  br label %merge26
merge26:
  br label %merge23
merge23:
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge14
merge14:
  br label %merge11
merge11:
  br label %merge8
else7:
  %90 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %91 = call %nyx_string* @nyx_string_from_char(i8 %90)
  store %nyx_string* %91, %nyx_string** %20
  br label %merge8
merge8:
  %92 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %93 = getelementptr [1 x i8], [1 x i8]* @.str398, i32 0, i32 0
  %94 = load i8, i8* %93
  %95 = zext i8 %94 to i64
  %96 = zext i8 %92 to i64
  %97 = icmp eq i64 %96, %95
  br i1 %97, label %then27, label %else28
then27:
  %98 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %99 = getelementptr [5 x i8], [5 x i8]* @.str399, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str399.c, i8* %99)
  %101 = load %nyx_string*, %nyx_string** %20
  %102 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %100, %nyx_string* %101)
  br label %merge29
else28:
  br label %merge29
merge29:
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

define internal i64 @tokenize__scan_identifier(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = load i64, i64* %3
  %10 = alloca i64
  store i64 %9, i64* %10
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
  %15 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %16 = call i1 @tokenize__is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %15)
  br i1 %16, label %then3, label %else4
then3:
  %17 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %11
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %18 = load %nyx_string*, %nyx_string** %2
  %19 = load i64, i64* %10
  %20 = load i64, i64* %3
  %21 = call %nyx_string* @nyx_string_substring(%nyx_string* %18, i64 %19, i64 %20)
  %22 = alloca %nyx_string*
  store %nyx_string* %21, %nyx_string** %22
  %23 = load %nyx_string*, %nyx_string** %22
  %24 = call i1 @is_keyword(%nyx_string* %23)
  br i1 %24, label %then6, label %else7
then6:
  %25 = load %nyx_string*, %nyx_string** %22
  %26 = call %nyx_string* @keyword_to_type(%nyx_string* %25)
  %27 = load %nyx_string*, %nyx_string** %22
  %28 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %26, %nyx_string* %27)
  br label %merge8
else7:
  %29 = getelementptr [11 x i8], [11 x i8]* @.str400, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str400.c, i8* %29)
  %31 = load %nyx_string*, %nyx_string** %22
  %32 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %30, %nyx_string* %31)
  br label %merge8
merge8:
  ret i64 0
}

define internal i64 @tokenize__scan_token(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 7
  %9 = call i64 @tokenize__skip_whitespace(%SharedEnv_tokenize* %env.param)
  %10 = call i1 @tokenize__at_end(%SharedEnv_tokenize* %env.param)
  %11 = xor i1 %10, true
  br i1 %11, label %then0, label %else1
then0:
  %12 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %13 = alloca i8
  store i8 %12, i8* %13
  %14 = load i8, i8* %13
  %15 = getelementptr [1 x i8], [1 x i8]* @.str401, i32 0, i32 0
  %16 = load i8, i8* %15
  %17 = zext i8 %16 to i64
  %18 = zext i8 %14 to i64
  %19 = icmp eq i64 %18, %17
  br i1 %19, label %then3, label %else4
then3:
  %20 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  br label %merge5
else4:
  %21 = load i8, i8* %13
  %22 = getelementptr [1 x i8], [1 x i8]* @.str402, i32 0, i32 0
  %23 = load i8, i8* %22
  %24 = zext i8 %23 to i64
  %25 = zext i8 %21 to i64
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %then6, label %else7
then6:
  %27 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %28 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %29 = getelementptr [1 x i8], [1 x i8]* @.str403, i32 0, i32 0
  %30 = load i8, i8* %29
  %31 = zext i8 %30 to i64
  %32 = zext i8 %28 to i64
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %then9, label %else10
then9:
  %34 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %35 = getelementptr [12 x i8], [12 x i8]* @.str404, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str404.c, i8* %35)
  %37 = getelementptr [3 x i8], [3 x i8]* @.str405, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str405.c, i8* %37)
  %39 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %36, %nyx_string* %38)
  br label %merge11
else10:
  %40 = getelementptr [5 x i8], [5 x i8]* @.str406, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str406.c, i8* %40)
  %42 = getelementptr [2 x i8], [2 x i8]* @.str407, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str407.c, i8* %42)
  %44 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %41, %nyx_string* %43)
  br label %merge11
merge11:
  br label %merge8
else7:
  %45 = load i8, i8* %13
  %46 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %47 = load i8, i8* %46
  %48 = zext i8 %47 to i64
  %49 = zext i8 %45 to i64
  %50 = icmp eq i64 %49, %48
  br i1 %50, label %then12, label %else13
then12:
  %51 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %52 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %53 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %54 = load i8, i8* %53
  %55 = zext i8 %54 to i64
  %56 = zext i8 %52 to i64
  %57 = icmp eq i64 %56, %55
  br i1 %57, label %then15, label %else16
then15:
  %58 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %59 = getelementptr [6 x i8], [6 x i8]* @.str410, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str410.c, i8* %59)
  %61 = getelementptr [3 x i8], [3 x i8]* @.str411, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str411.c, i8* %61)
  %63 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %60, %nyx_string* %62)
  br label %merge17
else16:
  %64 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %65 = getelementptr [1 x i8], [1 x i8]* @.str412, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  br i1 %69, label %then18, label %else19
then18:
  %70 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %71 = getelementptr [13 x i8], [13 x i8]* @.str413, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str413.c, i8* %71)
  %73 = getelementptr [3 x i8], [3 x i8]* @.str414, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str414.c, i8* %73)
  %75 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %72, %nyx_string* %74)
  br label %merge20
else19:
  %76 = getelementptr [6 x i8], [6 x i8]* @.str415, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str415.c, i8* %76)
  %78 = getelementptr [2 x i8], [2 x i8]* @.str416, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str416.c, i8* %78)
  %80 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %77, %nyx_string* %79)
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge14
else13:
  %81 = load i8, i8* %13
  %82 = getelementptr [1 x i8], [1 x i8]* @.str417, i32 0, i32 0
  %83 = load i8, i8* %82
  %84 = zext i8 %83 to i64
  %85 = zext i8 %81 to i64
  %86 = icmp eq i64 %85, %84
  br i1 %86, label %then21, label %else22
then21:
  %87 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %88 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %89 = getelementptr [1 x i8], [1 x i8]* @.str418, i32 0, i32 0
  %90 = load i8, i8* %89
  %91 = zext i8 %90 to i64
  %92 = zext i8 %88 to i64
  %93 = icmp eq i64 %92, %91
  br i1 %93, label %then24, label %else25
then24:
  %94 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %95 = getelementptr [6 x i8], [6 x i8]* @.str419, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str419.c, i8* %95)
  %97 = getelementptr [3 x i8], [3 x i8]* @.str420, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str420.c, i8* %97)
  %99 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %96, %nyx_string* %98)
  br label %merge26
else25:
  %100 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %101 = getelementptr [1 x i8], [1 x i8]* @.str421, i32 0, i32 0
  %102 = load i8, i8* %101
  %103 = zext i8 %102 to i64
  %104 = zext i8 %100 to i64
  %105 = icmp eq i64 %104, %103
  br i1 %105, label %then27, label %else28
then27:
  %106 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %107 = getelementptr [12 x i8], [12 x i8]* @.str422, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str422.c, i8* %107)
  %109 = getelementptr [3 x i8], [3 x i8]* @.str423, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str423.c, i8* %109)
  %111 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %108, %nyx_string* %110)
  br label %merge29
else28:
  %112 = getelementptr [5 x i8], [5 x i8]* @.str424, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str424.c, i8* %112)
  %114 = getelementptr [2 x i8], [2 x i8]* @.str425, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str425.c, i8* %114)
  %116 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %113, %nyx_string* %115)
  br label %merge29
merge29:
  br label %merge26
merge26:
  br label %merge23
else22:
  %117 = load i8, i8* %13
  %118 = getelementptr [1 x i8], [1 x i8]* @.str426, i32 0, i32 0
  %119 = load i8, i8* %118
  %120 = zext i8 %119 to i64
  %121 = zext i8 %117 to i64
  %122 = icmp eq i64 %121, %120
  br i1 %122, label %then30, label %else31
then30:
  %123 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %124 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %125 = getelementptr [1 x i8], [1 x i8]* @.str427, i32 0, i32 0
  %126 = load i8, i8* %125
  %127 = zext i8 %126 to i64
  %128 = zext i8 %124 to i64
  %129 = icmp eq i64 %128, %127
  br i1 %129, label %then33, label %else34
then33:
  %130 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %131 = call i64 @tokenize__skip_comment(%SharedEnv_tokenize* %env.param)
  br label %merge35
else34:
  %132 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %133 = getelementptr [1 x i8], [1 x i8]* @.str428, i32 0, i32 0
  %134 = load i8, i8* %133
  %135 = zext i8 %134 to i64
  %136 = zext i8 %132 to i64
  %137 = icmp eq i64 %136, %135
  br i1 %137, label %then36, label %else37
then36:
  %138 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %139 = call i64 @tokenize__skip_block_comment(%SharedEnv_tokenize* %env.param)
  br label %merge38
else37:
  %140 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %141 = getelementptr [1 x i8], [1 x i8]* @.str429, i32 0, i32 0
  %142 = load i8, i8* %141
  %143 = zext i8 %142 to i64
  %144 = zext i8 %140 to i64
  %145 = icmp eq i64 %144, %143
  br i1 %145, label %then39, label %else40
then39:
  %146 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %147 = getelementptr [13 x i8], [13 x i8]* @.str430, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str430.c, i8* %147)
  %149 = getelementptr [3 x i8], [3 x i8]* @.str431, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str431.c, i8* %149)
  %151 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %148, %nyx_string* %150)
  br label %merge41
else40:
  %152 = getelementptr [6 x i8], [6 x i8]* @.str432, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str432.c, i8* %152)
  %154 = getelementptr [2 x i8], [2 x i8]* @.str433, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str433.c, i8* %154)
  %156 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %153, %nyx_string* %155)
  br label %merge41
merge41:
  br label %merge38
merge38:
  br label %merge35
merge35:
  br label %merge32
else31:
  %157 = load i8, i8* %13
  %158 = getelementptr [1 x i8], [1 x i8]* @.str434, i32 0, i32 0
  %159 = load i8, i8* %158
  %160 = zext i8 %159 to i64
  %161 = zext i8 %157 to i64
  %162 = icmp eq i64 %161, %160
  br i1 %162, label %then42, label %else43
then42:
  %163 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %164 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %165 = getelementptr [1 x i8], [1 x i8]* @.str435, i32 0, i32 0
  %166 = load i8, i8* %165
  %167 = zext i8 %166 to i64
  %168 = zext i8 %164 to i64
  %169 = icmp eq i64 %168, %167
  br i1 %169, label %then45, label %else46
then45:
  %170 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %171 = getelementptr [15 x i8], [15 x i8]* @.str436, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str436.c, i8* %171)
  %173 = getelementptr [3 x i8], [3 x i8]* @.str437, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str437.c, i8* %173)
  %175 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %172, %nyx_string* %174)
  br label %merge47
else46:
  %176 = getelementptr [8 x i8], [8 x i8]* @.str438, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str438.c, i8* %176)
  %178 = getelementptr [2 x i8], [2 x i8]* @.str439, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str439.c, i8* %178)
  %180 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %177, %nyx_string* %179)
  br label %merge47
merge47:
  br label %merge44
else43:
  %181 = load i8, i8* %13
  %182 = getelementptr [1 x i8], [1 x i8]* @.str440, i32 0, i32 0
  %183 = load i8, i8* %182
  %184 = zext i8 %183 to i64
  %185 = zext i8 %181 to i64
  %186 = icmp eq i64 %185, %184
  br i1 %186, label %then48, label %else49
then48:
  %187 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %188 = getelementptr [6 x i8], [6 x i8]* @.str441, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str441.c, i8* %188)
  %190 = getelementptr [2 x i8], [2 x i8]* @.str442, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str442.c, i8* %190)
  %192 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %189, %nyx_string* %191)
  br label %merge50
else49:
  %193 = load i8, i8* %13
  %194 = getelementptr [1 x i8], [1 x i8]* @.str443, i32 0, i32 0
  %195 = load i8, i8* %194
  %196 = zext i8 %195 to i64
  %197 = zext i8 %193 to i64
  %198 = icmp eq i64 %197, %196
  br i1 %198, label %then51, label %else52
then51:
  %199 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %200 = getelementptr [11 x i8], [11 x i8]* @.str444, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str444.c, i8* %200)
  %202 = getelementptr [2 x i8], [2 x i8]* @.str445, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str445.c, i8* %202)
  %204 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %201, %nyx_string* %203)
  br label %merge53
else52:
  %205 = load i8, i8* %13
  %206 = getelementptr [1 x i8], [1 x i8]* @.str446, i32 0, i32 0
  %207 = load i8, i8* %206
  %208 = zext i8 %207 to i64
  %209 = zext i8 %205 to i64
  %210 = icmp eq i64 %209, %208
  br i1 %210, label %then54, label %else55
then54:
  %211 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %212 = getelementptr [12 x i8], [12 x i8]* @.str447, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str447.c, i8* %212)
  %214 = getelementptr [2 x i8], [2 x i8]* @.str448, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str448.c, i8* %214)
  %216 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %213, %nyx_string* %215)
  br label %merge56
else55:
  %217 = load i8, i8* %13
  %218 = getelementptr [1 x i8], [1 x i8]* @.str449, i32 0, i32 0
  %219 = load i8, i8* %218
  %220 = zext i8 %219 to i64
  %221 = zext i8 %217 to i64
  %222 = icmp eq i64 %221, %220
  br i1 %222, label %then57, label %else58
then57:
  %223 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %224 = getelementptr [11 x i8], [11 x i8]* @.str450, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str450.c, i8* %224)
  %226 = getelementptr [2 x i8], [2 x i8]* @.str451, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str451.c, i8* %226)
  %228 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %225, %nyx_string* %227)
  br label %merge59
else58:
  %229 = load i8, i8* %13
  %230 = getelementptr [1 x i8], [1 x i8]* @.str452, i32 0, i32 0
  %231 = load i8, i8* %230
  %232 = zext i8 %231 to i64
  %233 = zext i8 %229 to i64
  %234 = icmp eq i64 %233, %232
  br i1 %234, label %then60, label %else61
then60:
  %235 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %236 = load i64, i64* %7
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %then63, label %else64
then63:
  %238 = load i64, i64* %7
  %239 = sub i64 %238, 1
  store i64 %239, i64* %7
  %240 = getelementptr [12 x i8], [12 x i8]* @.str453, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str453.c, i8* %240)
  %242 = getelementptr [2 x i8], [2 x i8]* @.str454, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str454.c, i8* %242)
  %244 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %241, %nyx_string* %243)
  %245 = call i64 @tokenize__scan_string_rest(%SharedEnv_tokenize* %env.param)
  br label %merge65
else64:
  %246 = getelementptr [12 x i8], [12 x i8]* @.str455, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str455.c, i8* %246)
  %248 = getelementptr [2 x i8], [2 x i8]* @.str456, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str456.c, i8* %248)
  %250 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %247, %nyx_string* %249)
  br label %merge65
merge65:
  br label %merge62
else61:
  %251 = load i8, i8* %13
  %252 = getelementptr [1 x i8], [1 x i8]* @.str457, i32 0, i32 0
  %253 = load i8, i8* %252
  %254 = zext i8 %253 to i64
  %255 = zext i8 %251 to i64
  %256 = icmp eq i64 %255, %254
  br i1 %256, label %then66, label %else67
then66:
  %257 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %258 = getelementptr [13 x i8], [13 x i8]* @.str458, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str458.c, i8* %258)
  %260 = getelementptr [2 x i8], [2 x i8]* @.str459, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str459.c, i8* %260)
  %262 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %259, %nyx_string* %261)
  br label %merge68
else67:
  %263 = load i8, i8* %13
  %264 = getelementptr [1 x i8], [1 x i8]* @.str460, i32 0, i32 0
  %265 = load i8, i8* %264
  %266 = zext i8 %265 to i64
  %267 = zext i8 %263 to i64
  %268 = icmp eq i64 %267, %266
  br i1 %268, label %then69, label %else70
then69:
  %269 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %270 = getelementptr [14 x i8], [14 x i8]* @.str461, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str461.c, i8* %270)
  %272 = getelementptr [2 x i8], [2 x i8]* @.str462, i32 0, i32 0
  %273 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str462.c, i8* %272)
  %274 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %271, %nyx_string* %273)
  br label %merge71
else70:
  %275 = load i8, i8* %13
  %276 = getelementptr [1 x i8], [1 x i8]* @.str463, i32 0, i32 0
  %277 = load i8, i8* %276
  %278 = zext i8 %277 to i64
  %279 = zext i8 %275 to i64
  %280 = icmp eq i64 %279, %278
  br i1 %280, label %then72, label %else73
then72:
  %281 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %282 = getelementptr [6 x i8], [6 x i8]* @.str464, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str464.c, i8* %282)
  %284 = getelementptr [2 x i8], [2 x i8]* @.str465, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str465.c, i8* %284)
  %286 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %283, %nyx_string* %285)
  br label %merge74
else73:
  %287 = load i8, i8* %13
  %288 = getelementptr [1 x i8], [1 x i8]* @.str466, i32 0, i32 0
  %289 = load i8, i8* %288
  %290 = zext i8 %289 to i64
  %291 = zext i8 %287 to i64
  %292 = icmp eq i64 %291, %290
  br i1 %292, label %then75, label %else76
then75:
  %293 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %294 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %295 = getelementptr [1 x i8], [1 x i8]* @.str467, i32 0, i32 0
  %296 = load i8, i8* %295
  %297 = zext i8 %296 to i64
  %298 = zext i8 %294 to i64
  %299 = icmp eq i64 %298, %297
  br i1 %299, label %then78, label %else79
then78:
  %300 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %301 = getelementptr [12 x i8], [12 x i8]* @.str468, i32 0, i32 0
  %302 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str468.c, i8* %301)
  %303 = getelementptr [3 x i8], [3 x i8]* @.str469, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str469.c, i8* %303)
  %305 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %302, %nyx_string* %304)
  br label %merge80
else79:
  %306 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %307 = getelementptr [1 x i8], [1 x i8]* @.str470, i32 0, i32 0
  %308 = load i8, i8* %307
  %309 = zext i8 %308 to i64
  %310 = zext i8 %306 to i64
  %311 = icmp eq i64 %310, %309
  br i1 %311, label %then81, label %else82
then81:
  %312 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %313 = getelementptr [12 x i8], [12 x i8]* @.str471, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str471.c, i8* %313)
  %315 = getelementptr [3 x i8], [3 x i8]* @.str472, i32 0, i32 0
  %316 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str472.c, i8* %315)
  %317 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %314, %nyx_string* %316)
  br label %merge83
else82:
  %318 = getelementptr [7 x i8], [7 x i8]* @.str473, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str473.c, i8* %318)
  %320 = getelementptr [2 x i8], [2 x i8]* @.str474, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str474.c, i8* %320)
  %322 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %319, %nyx_string* %321)
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
else76:
  %323 = load i8, i8* %13
  %324 = getelementptr [1 x i8], [1 x i8]* @.str475, i32 0, i32 0
  %325 = load i8, i8* %324
  %326 = zext i8 %325 to i64
  %327 = zext i8 %323 to i64
  %328 = icmp eq i64 %327, %326
  br i1 %328, label %then84, label %else85
then84:
  %329 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %330 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %331 = getelementptr [1 x i8], [1 x i8]* @.str476, i32 0, i32 0
  %332 = load i8, i8* %331
  %333 = zext i8 %332 to i64
  %334 = zext i8 %330 to i64
  %335 = icmp eq i64 %334, %333
  br i1 %335, label %then87, label %else88
then87:
  %336 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %337 = getelementptr [10 x i8], [10 x i8]* @.str477, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str477.c, i8* %337)
  %339 = getelementptr [3 x i8], [3 x i8]* @.str478, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str478.c, i8* %339)
  %341 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %338, %nyx_string* %340)
  br label %merge89
else88:
  %342 = getelementptr [4 x i8], [4 x i8]* @.str479, i32 0, i32 0
  %343 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str479.c, i8* %342)
  %344 = getelementptr [2 x i8], [2 x i8]* @.str480, i32 0, i32 0
  %345 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str480.c, i8* %344)
  %346 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %343, %nyx_string* %345)
  br label %merge89
merge89:
  br label %merge86
else85:
  %347 = load i8, i8* %13
  %348 = getelementptr [1 x i8], [1 x i8]* @.str481, i32 0, i32 0
  %349 = load i8, i8* %348
  %350 = zext i8 %349 to i64
  %351 = zext i8 %347 to i64
  %352 = icmp eq i64 %351, %350
  br i1 %352, label %then90, label %else91
then90:
  %353 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %354 = getelementptr [9 x i8], [9 x i8]* @.str482, i32 0, i32 0
  %355 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str482.c, i8* %354)
  %356 = getelementptr [2 x i8], [2 x i8]* @.str483, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str483.c, i8* %356)
  %358 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %355, %nyx_string* %357)
  br label %merge92
else91:
  %359 = load i8, i8* %13
  %360 = getelementptr [1 x i8], [1 x i8]* @.str484, i32 0, i32 0
  %361 = load i8, i8* %360
  %362 = zext i8 %361 to i64
  %363 = zext i8 %359 to i64
  %364 = icmp eq i64 %363, %362
  br i1 %364, label %then93, label %else94
then93:
  %365 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %366 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %367 = getelementptr [1 x i8], [1 x i8]* @.str485, i32 0, i32 0
  %368 = load i8, i8* %367
  %369 = zext i8 %368 to i64
  %370 = zext i8 %366 to i64
  %371 = icmp eq i64 %370, %369
  br i1 %371, label %then96, label %else97
then96:
  %372 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %373 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %374 = getelementptr [1 x i8], [1 x i8]* @.str486, i32 0, i32 0
  %375 = load i8, i8* %374
  %376 = zext i8 %375 to i64
  %377 = zext i8 %373 to i64
  %378 = icmp eq i64 %377, %376
  br i1 %378, label %then99, label %else100
then99:
  %379 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %380 = getelementptr [18 x i8], [18 x i8]* @.str487, i32 0, i32 0
  %381 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str487.c, i8* %380)
  %382 = getelementptr [4 x i8], [4 x i8]* @.str488, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str488.c, i8* %382)
  %384 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %381, %nyx_string* %383)
  br label %merge101
else100:
  %385 = getelementptr [11 x i8], [11 x i8]* @.str489, i32 0, i32 0
  %386 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str489.c, i8* %385)
  %387 = getelementptr [3 x i8], [3 x i8]* @.str490, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str490.c, i8* %387)
  %389 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %386, %nyx_string* %388)
  br label %merge101
merge101:
  br label %merge98
else97:
  %390 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %391 = getelementptr [1 x i8], [1 x i8]* @.str491, i32 0, i32 0
  %392 = load i8, i8* %391
  %393 = zext i8 %392 to i64
  %394 = zext i8 %390 to i64
  %395 = icmp eq i64 %394, %393
  br i1 %395, label %then102, label %else103
then102:
  %396 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %397 = getelementptr [11 x i8], [11 x i8]* @.str492, i32 0, i32 0
  %398 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str492.c, i8* %397)
  %399 = getelementptr [3 x i8], [3 x i8]* @.str493, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str493.c, i8* %399)
  %401 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %398, %nyx_string* %400)
  br label %merge104
else103:
  %402 = getelementptr [5 x i8], [5 x i8]* @.str494, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str494.c, i8* %402)
  %404 = getelementptr [2 x i8], [2 x i8]* @.str495, i32 0, i32 0
  %405 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str495.c, i8* %404)
  %406 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %403, %nyx_string* %405)
  br label %merge104
merge104:
  br label %merge98
merge98:
  br label %merge95
else94:
  %407 = load i8, i8* %13
  %408 = getelementptr [1 x i8], [1 x i8]* @.str496, i32 0, i32 0
  %409 = load i8, i8* %408
  %410 = zext i8 %409 to i64
  %411 = zext i8 %407 to i64
  %412 = icmp eq i64 %411, %410
  br i1 %412, label %then105, label %else106
then105:
  %413 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %414 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %415 = getelementptr [1 x i8], [1 x i8]* @.str497, i32 0, i32 0
  %416 = load i8, i8* %415
  %417 = zext i8 %416 to i64
  %418 = zext i8 %414 to i64
  %419 = icmp eq i64 %418, %417
  br i1 %419, label %then108, label %else109
then108:
  %420 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %421 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %422 = getelementptr [1 x i8], [1 x i8]* @.str498, i32 0, i32 0
  %423 = load i8, i8* %422
  %424 = zext i8 %423 to i64
  %425 = zext i8 %421 to i64
  %426 = icmp eq i64 %425, %424
  br i1 %426, label %then111, label %else112
then111:
  %427 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %428 = getelementptr [19 x i8], [19 x i8]* @.str499, i32 0, i32 0
  %429 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str499.c, i8* %428)
  %430 = getelementptr [4 x i8], [4 x i8]* @.str500, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str500.c, i8* %430)
  %432 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %429, %nyx_string* %431)
  br label %merge113
else112:
  %433 = getelementptr [12 x i8], [12 x i8]* @.str501, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str501.c, i8* %433)
  %435 = getelementptr [3 x i8], [3 x i8]* @.str502, i32 0, i32 0
  %436 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str502.c, i8* %435)
  %437 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %434, %nyx_string* %436)
  br label %merge113
merge113:
  br label %merge110
else109:
  %438 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %439 = getelementptr [1 x i8], [1 x i8]* @.str503, i32 0, i32 0
  %440 = load i8, i8* %439
  %441 = zext i8 %440 to i64
  %442 = zext i8 %438 to i64
  %443 = icmp eq i64 %442, %441
  br i1 %443, label %then114, label %else115
then114:
  %444 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %445 = getelementptr [14 x i8], [14 x i8]* @.str504, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str504.c, i8* %445)
  %447 = getelementptr [3 x i8], [3 x i8]* @.str505, i32 0, i32 0
  %448 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str505.c, i8* %447)
  %449 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %446, %nyx_string* %448)
  br label %merge116
else115:
  %450 = getelementptr [8 x i8], [8 x i8]* @.str506, i32 0, i32 0
  %451 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str506.c, i8* %450)
  %452 = getelementptr [2 x i8], [2 x i8]* @.str507, i32 0, i32 0
  %453 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str507.c, i8* %452)
  %454 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %451, %nyx_string* %453)
  br label %merge116
merge116:
  br label %merge110
merge110:
  br label %merge107
else106:
  %455 = load i8, i8* %13
  %456 = getelementptr [1 x i8], [1 x i8]* @.str508, i32 0, i32 0
  %457 = load i8, i8* %456
  %458 = zext i8 %457 to i64
  %459 = zext i8 %455 to i64
  %460 = icmp eq i64 %459, %458
  br i1 %460, label %then117, label %else118
then117:
  %461 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %462 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %463 = getelementptr [1 x i8], [1 x i8]* @.str509, i32 0, i32 0
  %464 = load i8, i8* %463
  %465 = zext i8 %464 to i64
  %466 = zext i8 %462 to i64
  %467 = icmp eq i64 %466, %465
  br i1 %467, label %then120, label %else121
then120:
  %468 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %469 = getelementptr [8 x i8], [8 x i8]* @.str510, i32 0, i32 0
  %470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str510.c, i8* %469)
  %471 = getelementptr [3 x i8], [3 x i8]* @.str511, i32 0, i32 0
  %472 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str511.c, i8* %471)
  %473 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %470, %nyx_string* %472)
  br label %merge122
else121:
  %474 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %475 = getelementptr [1 x i8], [1 x i8]* @.str512, i32 0, i32 0
  %476 = load i8, i8* %475
  %477 = zext i8 %476 to i64
  %478 = zext i8 %474 to i64
  %479 = icmp eq i64 %478, %477
  br i1 %479, label %then123, label %else124
then123:
  %480 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %481 = getelementptr [11 x i8], [11 x i8]* @.str513, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str513.c, i8* %481)
  %483 = getelementptr [3 x i8], [3 x i8]* @.str514, i32 0, i32 0
  %484 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str514.c, i8* %483)
  %485 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %482, %nyx_string* %484)
  br label %merge125
else124:
  %486 = getelementptr [4 x i8], [4 x i8]* @.str515, i32 0, i32 0
  %487 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str515.c, i8* %486)
  %488 = getelementptr [2 x i8], [2 x i8]* @.str516, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str516.c, i8* %488)
  %490 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %487, %nyx_string* %489)
  br label %merge125
merge125:
  br label %merge122
merge122:
  br label %merge119
else118:
  %491 = load i8, i8* %13
  %492 = getelementptr [1 x i8], [1 x i8]* @.str517, i32 0, i32 0
  %493 = load i8, i8* %492
  %494 = zext i8 %493 to i64
  %495 = zext i8 %491 to i64
  %496 = icmp eq i64 %495, %494
  br i1 %496, label %then126, label %else127
then126:
  %497 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %498 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %499 = getelementptr [1 x i8], [1 x i8]* @.str518, i32 0, i32 0
  %500 = load i8, i8* %499
  %501 = zext i8 %500 to i64
  %502 = zext i8 %498 to i64
  %503 = icmp eq i64 %502, %501
  br i1 %503, label %then129, label %else130
then129:
  %504 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %505 = getelementptr [6 x i8], [6 x i8]* @.str519, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str519.c, i8* %505)
  %507 = getelementptr [3 x i8], [3 x i8]* @.str520, i32 0, i32 0
  %508 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str520.c, i8* %507)
  %509 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %506, %nyx_string* %508)
  br label %merge131
else130:
  %510 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %511 = getelementptr [1 x i8], [1 x i8]* @.str521, i32 0, i32 0
  %512 = load i8, i8* %511
  %513 = zext i8 %512 to i64
  %514 = zext i8 %510 to i64
  %515 = icmp eq i64 %514, %513
  br i1 %515, label %then132, label %else133
then132:
  %516 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %517 = getelementptr [12 x i8], [12 x i8]* @.str522, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str522.c, i8* %517)
  %519 = getelementptr [3 x i8], [3 x i8]* @.str523, i32 0, i32 0
  %520 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str523.c, i8* %519)
  %521 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %518, %nyx_string* %520)
  br label %merge134
else133:
  %522 = getelementptr [5 x i8], [5 x i8]* @.str524, i32 0, i32 0
  %523 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str524.c, i8* %522)
  %524 = getelementptr [2 x i8], [2 x i8]* @.str525, i32 0, i32 0
  %525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str525.c, i8* %524)
  %526 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %523, %nyx_string* %525)
  br label %merge134
merge134:
  br label %merge131
merge131:
  br label %merge128
else127:
  %527 = load i8, i8* %13
  %528 = getelementptr [1 x i8], [1 x i8]* @.str526, i32 0, i32 0
  %529 = load i8, i8* %528
  %530 = zext i8 %529 to i64
  %531 = zext i8 %527 to i64
  %532 = icmp eq i64 %531, %530
  br i1 %532, label %then135, label %else136
then135:
  %533 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %534 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %535 = getelementptr [1 x i8], [1 x i8]* @.str527, i32 0, i32 0
  %536 = load i8, i8* %535
  %537 = zext i8 %536 to i64
  %538 = zext i8 %534 to i64
  %539 = icmp eq i64 %538, %537
  br i1 %539, label %then138, label %else139
then138:
  %540 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %541 = getelementptr [13 x i8], [13 x i8]* @.str528, i32 0, i32 0
  %542 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str528.c, i8* %541)
  %543 = getelementptr [3 x i8], [3 x i8]* @.str529, i32 0, i32 0
  %544 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str529.c, i8* %543)
  %545 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %542, %nyx_string* %544)
  br label %merge140
else139:
  %546 = getelementptr [6 x i8], [6 x i8]* @.str530, i32 0, i32 0
  %547 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str530.c, i8* %546)
  %548 = getelementptr [2 x i8], [2 x i8]* @.str531, i32 0, i32 0
  %549 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str531.c, i8* %548)
  %550 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %547, %nyx_string* %549)
  br label %merge140
merge140:
  br label %merge137
else136:
  %551 = load i8, i8* %13
  %552 = getelementptr [1 x i8], [1 x i8]* @.str532, i32 0, i32 0
  %553 = load i8, i8* %552
  %554 = zext i8 %553 to i64
  %555 = zext i8 %551 to i64
  %556 = icmp eq i64 %555, %554
  br i1 %556, label %then141, label %else142
then141:
  %557 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %558 = getelementptr [6 x i8], [6 x i8]* @.str533, i32 0, i32 0
  %559 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str533.c, i8* %558)
  %560 = getelementptr [2 x i8], [2 x i8]* @.str534, i32 0, i32 0
  %561 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str534.c, i8* %560)
  %562 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %559, %nyx_string* %561)
  br label %merge143
else142:
  %563 = load i8, i8* %13
  %564 = getelementptr [1 x i8], [1 x i8]* @.str535, i32 0, i32 0
  %565 = load i8, i8* %564
  %566 = zext i8 %565 to i64
  %567 = zext i8 %563 to i64
  %568 = icmp eq i64 %567, %566
  br i1 %568, label %then144, label %else145
then144:
  %569 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %570 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %571 = getelementptr [1 x i8], [1 x i8]* @.str536, i32 0, i32 0
  %572 = load i8, i8* %571
  %573 = zext i8 %572 to i64
  %574 = zext i8 %570 to i64
  %575 = icmp eq i64 %574, %573
  br i1 %575, label %then147, label %else148
then147:
  %576 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %577 = call i64 @tokenize__skip_comment(%SharedEnv_tokenize* %env.param)
  br label %merge149
else148:
  %578 = getelementptr [5 x i8], [5 x i8]* @.str537, i32 0, i32 0
  %579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str537.c, i8* %578)
  %580 = getelementptr [2 x i8], [2 x i8]* @.str538, i32 0, i32 0
  %581 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str538.c, i8* %580)
  %582 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %579, %nyx_string* %581)
  br label %merge149
merge149:
  br label %merge146
else145:
  %583 = load i8, i8* %13
  %584 = getelementptr [1 x i8], [1 x i8]* @.str539, i32 0, i32 0
  %585 = load i8, i8* %584
  %586 = zext i8 %585 to i64
  %587 = zext i8 %583 to i64
  %588 = icmp eq i64 %587, %586
  br i1 %588, label %then150, label %else151
then150:
  %589 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %590 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %591 = getelementptr [1 x i8], [1 x i8]* @.str540, i32 0, i32 0
  %592 = load i8, i8* %591
  %593 = zext i8 %592 to i64
  %594 = zext i8 %590 to i64
  %595 = icmp eq i64 %594, %593
  br i1 %595, label %then153, label %else154
then153:
  %596 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %597 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %598 = getelementptr [1 x i8], [1 x i8]* @.str541, i32 0, i32 0
  %599 = load i8, i8* %598
  %600 = zext i8 %599 to i64
  %601 = zext i8 %597 to i64
  %602 = icmp eq i64 %601, %600
  br i1 %602, label %then156, label %else157
then156:
  %603 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %604 = getelementptr [9 x i8], [9 x i8]* @.str542, i32 0, i32 0
  %605 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str542.c, i8* %604)
  %606 = getelementptr [4 x i8], [4 x i8]* @.str543, i32 0, i32 0
  %607 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str543.c, i8* %606)
  %608 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %605, %nyx_string* %607)
  br label %merge158
else157:
  %609 = call i8 @tokenize__peek(%SharedEnv_tokenize* %env.param)
  %610 = getelementptr [1 x i8], [1 x i8]* @.str544, i32 0, i32 0
  %611 = load i8, i8* %610
  %612 = zext i8 %611 to i64
  %613 = zext i8 %609 to i64
  %614 = icmp eq i64 %613, %612
  br i1 %614, label %then159, label %else160
then159:
  %615 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %616 = getelementptr [16 x i8], [16 x i8]* @.str545, i32 0, i32 0
  %617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str545.c, i8* %616)
  %618 = getelementptr [4 x i8], [4 x i8]* @.str546, i32 0, i32 0
  %619 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str546.c, i8* %618)
  %620 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %617, %nyx_string* %619)
  br label %merge161
else160:
  %621 = getelementptr [6 x i8], [6 x i8]* @.str547, i32 0, i32 0
  %622 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str547.c, i8* %621)
  %623 = getelementptr [3 x i8], [3 x i8]* @.str548, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str548.c, i8* %623)
  %625 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %622, %nyx_string* %624)
  br label %merge161
merge161:
  br label %merge158
merge158:
  br label %merge155
else154:
  %626 = getelementptr [4 x i8], [4 x i8]* @.str549, i32 0, i32 0
  %627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str549.c, i8* %626)
  %628 = getelementptr [2 x i8], [2 x i8]* @.str550, i32 0, i32 0
  %629 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str550.c, i8* %628)
  %630 = call i64 @tokenize__add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %627, %nyx_string* %629)
  br label %merge155
merge155:
  br label %merge152
else151:
  %631 = load i8, i8* %13
  %632 = getelementptr [1 x i8], [1 x i8]* @.str551, i32 0, i32 0
  %633 = load i8, i8* %632
  %634 = zext i8 %633 to i64
  %635 = zext i8 %631 to i64
  %636 = icmp eq i64 %635, %634
  br i1 %636, label %then162, label %else163
then162:
  %637 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %638 = getelementptr [1 x i8], [1 x i8]* @.str552, i32 0, i32 0
  %639 = load i8, i8* %638
  %640 = zext i8 %639 to i64
  %641 = zext i8 %637 to i64
  %642 = icmp eq i64 %641, %640
  br i1 %642, label %then165, label %else166
then165:
  %643 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %644 = call i64 @tokenize__scan_multiline_string(%SharedEnv_tokenize* %env.param)
  br label %merge167
else166:
  %645 = call i64 @tokenize__scan_string(%SharedEnv_tokenize* %env.param)
  br label %merge167
merge167:
  br label %merge164
else163:
  %646 = load i8, i8* %13
  %647 = getelementptr [1 x i8], [1 x i8]* @.str553, i32 0, i32 0
  %648 = load i8, i8* %647
  %649 = zext i8 %648 to i64
  %650 = zext i8 %646 to i64
  %651 = icmp eq i64 %650, %649
  br i1 %651, label %then168, label %else169
then168:
  %652 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %653 = alloca i8
  store i8 %652, i8* %653
  %654 = alloca i1
  store i1 0, i1* %654
  %655 = load i8, i8* %653
  %656 = call i1 @tokenize__is_alpha(%SharedEnv_tokenize* %env.param, i8 %655)
  br i1 %656, label %then171, label %else172
then171:
  %657 = load i64, i64* %3
  %658 = add i64 %657, 2
  %659 = alloca i64
  store i64 %658, i64* %659
  %660 = load i64, i64* %659
  %661 = load %nyx_string*, %nyx_string** %2
  %662 = call i64 @nyx_string_byte_length(%nyx_string* %661)
  %663 = icmp sge i64 %660, %662
  br i1 %663, label %then174, label %else175
then174:
  store i1 1, i1* %654
  br label %merge176
else175:
  %664 = load %nyx_string*, %nyx_string** %2
  %665 = load i64, i64* %659
  %666 = call i8 @nyx_string_char_at(%nyx_string* %664, i64 %665)
  %667 = zext i8 %666 to i64
  %668 = trunc i64 %667 to i8
  %669 = alloca i8
  store i8 %668, i8* %669
  %670 = load i8, i8* %669
  %671 = getelementptr [1 x i8], [1 x i8]* @.str554, i32 0, i32 0
  %672 = load i8, i8* %671
  %673 = zext i8 %672 to i64
  %674 = zext i8 %670 to i64
  %675 = icmp ne i64 %674, %673
  br i1 %675, label %then177, label %else178
then177:
  store i1 1, i1* %654
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
  %676 = load i1, i1* %654
  br i1 %676, label %then180, label %else181
then180:
  %677 = call i64 @tokenize__scan_lifetime(%SharedEnv_tokenize* %env.param)
  br label %merge182
else181:
  %678 = call i64 @tokenize__scan_char(%SharedEnv_tokenize* %env.param)
  br label %merge182
merge182:
  br label %merge170
else169:
  %679 = load i8, i8* %13
  %680 = call i1 @tokenize__is_digit(%SharedEnv_tokenize* %env.param, i8 %679)
  br i1 %680, label %then183, label %else184
then183:
  %681 = call i64 @tokenize__scan_number(%SharedEnv_tokenize* %env.param)
  br label %merge185
else184:
  %682 = alloca i1
  store i1 false, i1* %682
  %683 = load i8, i8* %13
  %684 = getelementptr [1 x i8], [1 x i8]* @.str555, i32 0, i32 0
  %685 = load i8, i8* %684
  %686 = zext i8 %685 to i64
  %687 = zext i8 %683 to i64
  %688 = icmp eq i64 %687, %686
  br i1 %688, label %sc_and_rhs186, label %sc_and_end187
sc_and_rhs186:
  %689 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %690 = getelementptr [1 x i8], [1 x i8]* @.str556, i32 0, i32 0
  %691 = load i8, i8* %690
  %692 = zext i8 %691 to i64
  %693 = zext i8 %689 to i64
  %694 = icmp eq i64 %693, %692
  store i1 %694, i1* %682
  br label %sc_and_end187
sc_and_end187:
  %695 = load i1, i1* %682
  br i1 %695, label %then188, label %else189
then188:
  %696 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %697 = call i64 @tokenize__scan_raw_string(%SharedEnv_tokenize* %env.param)
  br label %merge190
else189:
  %698 = load i8, i8* %13
  %699 = call i1 @tokenize__is_alpha(%SharedEnv_tokenize* %env.param, i8 %698)
  br i1 %699, label %then191, label %else192
then191:
  %700 = call i64 @tokenize__scan_identifier(%SharedEnv_tokenize* %env.param)
  br label %merge193
else192:
  %701 = alloca i1
  store i1 false, i1* %701
  %702 = alloca i1
  store i1 false, i1* %702
  %703 = load i8, i8* %13
  %704 = getelementptr [1 x i8], [1 x i8]* @.str557, i32 0, i32 0
  %705 = load i8, i8* %704
  %706 = zext i8 %705 to i64
  %707 = zext i8 %703 to i64
  %708 = icmp eq i64 %707, %706
  br i1 %708, label %sc_and_rhs194, label %sc_and_end195
sc_and_rhs194:
  %709 = call i8 @tokenize__peek_next(%SharedEnv_tokenize* %env.param)
  %710 = getelementptr [1 x i8], [1 x i8]* @.str558, i32 0, i32 0
  %711 = load i8, i8* %710
  %712 = zext i8 %711 to i64
  %713 = zext i8 %709 to i64
  %714 = icmp eq i64 %713, %712
  store i1 %714, i1* %702
  br label %sc_and_end195
sc_and_end195:
  %715 = load i1, i1* %702
  br i1 %715, label %sc_and_rhs196, label %sc_and_end197
sc_and_rhs196:
  %716 = load i64, i64* %7
  %717 = icmp sgt i64 %716, 0
  store i1 %717, i1* %701
  br label %sc_and_end197
sc_and_end197:
  %718 = load i1, i1* %701
  br i1 %718, label %then198, label %else199
then198:
  %719 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %720 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
  %721 = call i64 @tokenize__scan_string_escdelim(%SharedEnv_tokenize* %env.param)
  br label %merge200
else199:
  %722 = call i8 @tokenize__advance(%SharedEnv_tokenize* %env.param)
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

